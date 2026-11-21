#!/usr/bin/env bash
# Renomeia as gravacoes de M3.1/M3.2 e coloca em dados/fase4/M3/.
#
#   ./scripts/organizar-videos-m3.sh              # puxa do celular por adb
#   ./scripts/organizar-videos-m3.sh ~/Videos     # usa arquivos ja copiados
#
# A associacao e por ordem cronologica: o enesimo video vira SESSAOnn.
# O script mostra o mapeamento e pede confirmacao antes de copiar.
set -uo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/lib_coleta.sh"

OUT="dados/fase4/M3"; CSV="$OUT/M3.1_coleta.csv"
ORIGEM="${1:-}"
DIRS_DEVICE=(/sdcard/DCIM/Screenrecorder /sdcard/DCIM/ScreenRecorder /sdcard/Movies /sdcard/Movies/ScreenRecorder /sdcard/DCIM/Camera)

[ -f "$CSV" ] || { echo "ERRO: $CSV nao encontrado. Rode a coleta antes."; exit 1; }
mapfile -t SESSOES < <(tail -n +2 "$CSV" | cut -d';' -f3)
mapfile -t HORAS   < <(tail -n +2 "$CSV" | cut -d';' -f11)
N=${#SESSOES[@]}
echo "Sessoes registradas na planilha: $N"

TMP=$(mktemp -d); trap 'rm -rf "$TMP"' EXIT

if [ -n "$ORIGEM" ]; then
  [ -d "$ORIGEM" ] || { echo "ERRO: $ORIGEM nao e um diretorio."; exit 1; }
  mapfile -t ARQ < <(find "$ORIGEM" -maxdepth 1 -type f -iname '*.mp4' | sort)
  MODO="local"
else
  exigir_adb
  echo "Procurando gravacoes no aparelho..."
  : > "$TMP/lista"
  for d in "${DIRS_DEVICE[@]}"; do
    adbx shell "ls -1 $d/*.mp4 2>/dev/null" | tr -d '\r' >> "$TMP/lista"
  done
  mapfile -t ARQ < <(grep -v '^$' "$TMP/lista" | sort -u)
  MODO="adb"
fi

M=${#ARQ[@]}
echo "Videos encontrados ($MODO): $M"
if [ "$M" -eq 0 ]; then
  echo
  echo "Nenhum video encontrado. Procure a pasta do gravador no aparelho com:"
  echo "   adb shell 'find /sdcard -iname \"*.mp4\" -newermt \"-2 days\" 2>/dev/null' | head -30"
  echo "E rode de novo passando a pasta local, se ja tiver copiado os arquivos."
  exit 1
fi

echo
echo "Mapeamento proposto (ordem cronologica):"
printf "%-28s -> %-12s %s\n" "ARQUIVO DE ORIGEM" "SESSAO" "HORARIO NA PLANILHA"
LIM=$(( M < N ? M : N ))
for i in $(seq 0 $((LIM-1))); do
  printf "%-28s -> %-12s %s\n" "$(basename "${ARQ[$i]}")" "${SESSOES[$i]}" "${HORAS[$i]}"
done
if [ "$M" -ne "$N" ]; then
  echo
  echo "ATENCAO: $M videos para $N sessoes. Confira antes de confirmar."
  [ "$M" -gt "$N" ] && echo "Videos sem sessao correspondente ficarao de fora:" && \
    for i in $(seq "$N" $((M-1))); do echo "   $(basename "${ARQ[$i]}")"; done
  [ "$M" -lt "$N" ] && echo "Sessoes sem video: ${SESSOES[*]:$M}"
fi

echo
read -r -p "Confirma o mapeamento? [s/N]: " ok
[ "$ok" = "s" ] || { echo "Cancelado. Nada foi copiado."; exit 0; }

mkdir -p "$OUT"
for i in $(seq 0 $((LIM-1))); do
  DEST="$OUT/M3_${SESSOES[$i]}_${DISP}.mp4"
  if [ "$MODO" = "adb" ]; then adbx pull -a "${ARQ[$i]}" "$DEST" >/dev/null 2>&1
  else cp -p "${ARQ[$i]}" "$DEST"; fi
  if [ -s "$DEST" ]; then printf "   OK  %s (%s)\n" "$(basename "$DEST")" "$(du -h "$DEST" | cut -f1)"
  else echo "   FALHOU: ${ARQ[$i]}"; fi
done

echo
TOT=$(du -sh "$OUT" | cut -f1)
echo "============================================================"
echo " Videos em $OUT - total: $TOT"
du -sm "$OUT" | awk '$1>150{print " ATENCAO: mais de 150 MB no repositorio. Avalie manter os videos\n          em pasta compartilhada e anotar o link na planilha."}'
echo " A planilha ja referencia M3_SESSAOxx_${DISP}.mp4 na coluna Evidencia."
echo "============================================================"
