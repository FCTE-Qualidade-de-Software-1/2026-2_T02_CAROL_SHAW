#!/usr/bin/env bash
# M3.1 (sessoes sem crashes) e M3.2 (sessoes sem congelamentos) - 20 sessoes de 5 min.
# Uso: AVALIADOR="Nome" DISP=DISP-02 ./scripts/m3-sessoes.sh [n_sessoes]
set -uo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/lib_coleta.sh"

N="${1:-20}"
OUT="dados/fase4/M3"; C31="$OUT/M3.1_coleta.csv"; C32="$OUT/M3.2_coleta.csv"
ATIV=("Busca de linha e resultados" "Horarios" "Itinerario no mapa" "Parada e veiculo" "Favoritos")

exigir_adb; ler_dispositivo; exigir_avaliador
csv_init "$C31"; csv_init "$C32"; mkdir -p "$OUT"
app_instalado || { echo "ERRO: $PKG nao esta instalado."; exit 1; }

echo "============================================================"
echo " M3.1 e M3.2 - $N sessoes de 5 min | $DISP ($MODELO) | Android $SO | app $VAPP"
echo " Antes de comecar: ative 'Mostrar toques' nas opcoes do desenvolvedor."
echo " Grave a tela com o gravador nativo do aparelho em cada sessao."
echo " Nao induza queda de rede nem de localizacao."
echo "============================================================"

for i in $(seq 1 "$N"); do
  S=$(printf "SESSAO%02d" "$i")
  echo; echo "------------------------------------------------------------"
  echo " $S"
  echo "------------------------------------------------------------"
  read -r -p "   Inicie a gravacao de tela e tecle ENTER para comecar (s = pular): " p
  [ "$p" = "s" ] && { echo "   Pulada."; continue; }

  adbx logcat -c >/dev/null 2>&1
  INICIO=$(date '+%H:%M:%S')
  for k in 0 1 2 3 4; do
    echo "   [$((k+1))/5] ${ATIV[$k]}"
    contagem 60 "${ATIV[$k]}"
  done
  FIM=$(date '+%H:%M:%S')
  LOG="$OUT/M3_${S}_${DISP}_logcat.txt"
  adbx logcat -d 2>/dev/null | grep -E "FATAL EXCEPTION|AndroidRuntime|$PKG" > "$LOG" 2>/dev/null
  FATAIS=$(grep -c "FATAL EXCEPTION" "$LOG" 2>/dev/null)
  echo "   Sessao de $INICIO a $FIM. Excecoes fatais no log: $FATAIS"
  echo "   Pare a gravacao e guarde o video em $OUT/ com o nome M3_${S}_${DISP}.mp4"

  echo
  echo "   M3.1 - crash e encerramento inesperado do app."
  sim_nao "Houve crash nesta sessao?"
  if [ "$RESP" = "s" ]; then E31="Defeito"; else E31="Conforme"; fi
  echo "   M3.2 - congelamento e interface sem responder a um toque por mais de 5 s."
  echo "   Carregamento com indicador ativo e botao de voltar funcionando NAO conta."
  sim_nao "Houve congelamento maior que 5 s?"
  if [ "$RESP" = "s" ]; then E32="Defeito"; else E32="Conforme"; fi
  perguntar_obs

  csv_linha "$C31" "M3.1" "$S" "$E31" "$INICIO-$FIM" "M3_${S}_${DISP}.mp4" "$OBS"
  csv_linha "$C32" "M3.2" "$S" "$E32" "$INICIO-$FIM" "M3_${S}_${DISP}.mp4" "$OBS"
  echo "   Registrado: M3.1 $E31 | M3.2 $E32"
  [ "$E31" = "Defeito" ] && echo "   Lembre: a sessao interrompida conta como afetada e a proxima recebe novo ID."
done

resumo "$C31" "M3.1"; resumo "$C32" "M3.2"
echo " Faixas (20 sessoes): 20 -> nota 4; 19 -> nota 3; 18 -> nota 2; 17 ou menos -> nota 1."
