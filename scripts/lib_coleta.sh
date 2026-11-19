#!/usr/bin/env bash
# =============================================================================
# Funcoes comuns das coletas da Fase 4 - DF no Ponto
# Carregado pelos scripts m*.sh. Nao deve ser executado diretamente.
# =============================================================================
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT" || exit 1

SERIAL="${SERIAL:-}"
DISP="${DISP:-DISP-02}"
PKG="${PKG:-br.bus2.dfnoponto}"

adbx() { if [ -n "$SERIAL" ]; then adb -s "$SERIAL" "$@"; else adb "$@"; fi; }

exigir_adb() {
  command -v adb >/dev/null || { echo "ERRO: adb nao encontrado no PATH."; exit 1; }
  local n; n=$(adb devices | grep -cw "device$")
  if [ -z "$SERIAL" ] && [ "$n" -ne 1 ]; then
    echo "ERRO: $n dispositivos conectados. Informe SERIAL=<serial> (veja em 'adb devices')."
    adb devices; exit 1
  fi
}

ler_dispositivo() {
  MODELO=$(adbx shell getprop ro.product.model | tr -d '\r')
  SO=$(adbx shell getprop ro.build.version.release | tr -d '\r')
  API=$(adbx shell getprop ro.build.version.sdk | tr -d '\r')
  VAPP=$(adbx shell dumpsys package "$PKG" 2>/dev/null | awk -F= '/versionName/{print $2; exit}' | tr -d '\r ')
  [ -z "$VAPP" ] && VAPP="nao instalado"
}

exigir_avaliador() { [ -z "${AVALIADOR:-}" ] && read -r -p "Nome do avaliador: " AVALIADOR; }

app_instalado() { adbx shell pm list packages 2>/dev/null | grep -q "$PKG"; }

csv_init() {
  mkdir -p "$(dirname "$1")"
  [ -f "$1" ] || echo "ID;Metrica;Caso;Avaliador;DataHora;Dispositivo;Modelo;VersaoSO;VersaoApp;Estado;ValorMedido;Evidencia;Observacoes" > "$1"
}

# csv_linha <arquivo> <metrica> <caso> <estado> <valor> <evidencia> <obs>
csv_linha() {
  printf '%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s\n' \
    "EXEC-$2-$3" "$2" "$3" "$AVALIADOR" "$(date '+%Y-%m-%d %H:%M')" \
    "$DISP" "$MODELO" "$SO (API $API)" "$VAPP" "$4" "${5:-}" "${6:-}" \
    "$(echo "${7:-}" | tr ';' ',')" >> "$1"
}

capturar() {
  mkdir -p "$(dirname "$1")"
  adbx exec-out screencap -p > "$1" 2>/dev/null
  if [ ! -s "$1" ]; then rm -f "$1"; echo "   AVISO: captura falhou."; return 1; fi
  echo "   Evidencia: $1"; return 0
}

perguntar_estado() {
  local e; ESTADO=""
  while [ -z "$ESTADO" ]; do
    read -r -p "   Estado [c=Conforme, d=Defeito, n=Nao observavel]: " e
    case "$e" in
      c) ESTADO="Conforme" ;; d) ESTADO="Defeito" ;; n) ESTADO="Nao observavel" ;;
      *) echo "   Opcao invalida." ;;
    esac
  done
}

perguntar_obs() { read -r -p "   Observacoes (ENTER para nenhuma): " OBS; }

sim_nao() { # pergunta -> RESP=s|n
  local r; RESP=""
  while [ -z "$RESP" ]; do
    read -r -p "   $1 [s/n]: " r
    case "$r" in s|S) RESP=s ;; n|N) RESP=n ;; *) echo "   Responda s ou n." ;; esac
  done
}

agora_ms() { date +%s%3N; }
delta_s() { awk -v a="$1" -v b="$2" 'BEGIN{printf "%.1f", (b-a)/1000}'; }
menor_igual() { awk -v a="$1" -v b="$2" 'BEGIN{exit !(a<=b)}'; }

contagem() { # segundos rotulo
  local s="$1"
  while [ "$s" -gt 0 ]; do
    printf "\r   %-42s %3ds restantes " "$2" "$s"; sleep 1; s=$((s-1))
  done
  printf "\r   %-42s concluido        \n" "$2"
}

resumo() { # arquivo metrica
  echo
  echo "============================================================"
  printf " %s - Conforme: %s | Defeito: %s | Nao observavel: %s\n" "$2" \
    "$(grep -c ";$2;.*;Conforme;" "$1" 2>/dev/null)" \
    "$(grep -c ";$2;.*;Defeito;" "$1" 2>/dev/null)" \
    "$(grep -c ";$2;.*;Nao observavel;" "$1" 2>/dev/null)"
  echo " Planilha: $1"
  echo " Informe sempre a contagem junto da nota (ex.: 9 de 10)."
  echo "============================================================"
}
