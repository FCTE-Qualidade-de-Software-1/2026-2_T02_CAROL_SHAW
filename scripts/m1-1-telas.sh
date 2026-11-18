#!/usr/bin/env bash
# =============================================================================
# M1.1 - Adaptabilidade de hardware (telas) | Fase 3 - DF no Ponto
#
# Aplica cada configuracao de tela (C01 a C04), espera o avaliador abrir cada
# tela do catalogo (T01 a T05), captura a evidencia com o nome padronizado e
# registra o resultado na planilha de coleta.
#
# Uso:
#   ./scripts/m1-1-telas.sh                 # bateria completa (20 casos)
#   ./scripts/m1-1-telas.sh --piloto        # so T01-C01, para validar o roteiro
#
# Variaveis opcionais:
#   AVALIADOR="Vitor Bessa" DISP=DISP-02 SERIAL=QCPNDMG6X4XKOV7X ./scripts/m1-1-telas.sh
#
# O aparelho e restaurado ao estado original ao sair, inclusive com Ctrl-C.
# =============================================================================
set -uo pipefail

PKG="${PKG:-br.bus2.dfnoponto}"
DISP="${DISP:-DISP-01}"
SERIAL="${SERIAL:-}"
OUT_DIR="${OUT_DIR:-dados/fase4/M1.1}"
CSV="$OUT_DIR/M1.1_coleta.csv"

TELAS=(T01 T02 T03 T04 T05)
CONFIGS=(C01 C02 C03 C04)
declare -A DESC_TELA=(
  [T01]="Resultado da busca por L01"
  [T02]="Horarios de L01"
  [T03]="Mapa do itinerario de L01"
  [T04]="Detalhes de P01"
  [T05]="Favoritos com L01 e P01"
)
declare -A DESC_CONFIG=(
  [C01]="640x1136, 320 dpi, retrato, fonte 100%"
  [C02]="640x1136, 320 dpi, PAISAGEM, fonte 100%"
  [C03]="640x1136, 320 dpi, retrato, fonte 200%"
  [C04]="1080x2400, 420 dpi, retrato, fonte 100%"
)

[ "${1:-}" = "--piloto" ] && { TELAS=(T01); CONFIGS=(C01); echo ">> Modo piloto: so T01-C01"; }

adbx() { if [ -n "$SERIAL" ]; then adb -s "$SERIAL" "$@"; else adb "$@"; fi; }

# ---------- verificacoes iniciais -------------------------------------------
command -v adb >/dev/null || { echo "ERRO: adb nao encontrado no PATH."; exit 1; }
n_dev=$(adb devices | grep -cw "device$")
if [ -z "$SERIAL" ] && [ "$n_dev" -ne 1 ]; then
  echo "ERRO: $n_dev dispositivos conectados. Informe SERIAL=<serial> (veja em 'adb devices')."
  adb devices; exit 1
fi
adbx shell pm list packages | grep -q "$PKG" || { echo "ERRO: pacote $PKG nao instalado."; exit 1; }

# O shell do adb precisa poder alterar resolucao, densidade e fonte. No MIUI isso
# exige a chave "Depuracao USB (Configuracoes de seguranca)" nas opcoes do
# desenvolvedor; sem ela o Android devolve SecurityException e a bateria inteira
# sairia com a configuracao errada.
checar_permissoes() {
  local saida falhou=0
  saida=$(adbx shell wm density 2>&1; adbx shell settings put system user_rotation 0 2>&1)
  echo "$saida" | grep -q "SecurityException" && falhou=1
  saida=$(adbx shell wm size reset 2>&1)
  echo "$saida" | grep -q "SecurityException" && falhou=1
  if [ "$falhou" -eq 1 ]; then
    cat <<'MSG'
ERRO: o adb nao tem permissao para alterar as configuracoes de tela deste aparelho.

  - MIUI/Xiaomi: ative "Depuracao USB (Configuracoes de seguranca)" nas Opcoes do
    desenvolvedor (exige conta Mi, chip e internet) e reconecte o cabo.
  - Outros aparelhos: confira se a depuracao USB esta autorizada para este computador.
  - Se nao for possivel liberar, rode M1.1 no outro aparelho ou em um emulador com
    perfil personalizado, e registre a troca em Recursos.
MSG
    exit 1
  fi
}
checar_permissoes

[ -z "${AVALIADOR:-}" ] && read -r -p "Nome do avaliador: " AVALIADOR

MODELO=$(adbx shell getprop ro.product.model | tr -d '\r')
SO=$(adbx shell getprop ro.build.version.release | tr -d '\r')
API=$(adbx shell getprop ro.build.version.sdk | tr -d '\r')
VAPP=$(adbx shell dumpsys package "$PKG" | awk -F= '/versionName/{print $2; exit}' | tr -d '\r ')

# ---------- estado original, restaurado na saida ----------------------------
ORIG_FONT=$(adbx shell settings get system font_scale | tr -d '\r')
ORIG_AUTOROT=$(adbx shell settings get system accelerometer_rotation | tr -d '\r')
[ "$ORIG_FONT" = "null" ] && ORIG_FONT=1.0
[ "$ORIG_AUTOROT" = "null" ] && ORIG_AUTOROT=1

restaurar() {
  echo
  echo ">> Restaurando o aparelho (fonte $ORIG_FONT, rotacao automatica $ORIG_AUTOROT)..."
  adbx shell wm size reset                                     >/dev/null 2>&1
  adbx shell wm density reset                                  >/dev/null 2>&1
  adbx shell settings put system font_scale "$ORIG_FONT"       >/dev/null 2>&1
  adbx shell settings put system user_rotation 0               >/dev/null 2>&1
  adbx shell settings put system accelerometer_rotation "$ORIG_AUTOROT" >/dev/null 2>&1
  adbx shell am force-stop "$PKG"                              >/dev/null 2>&1
  echo ">> Aparelho restaurado. Planilha: $CSV"
}
trap restaurar EXIT

# ---------- planilha ---------------------------------------------------------
mkdir -p "$OUT_DIR"
if [ ! -f "$CSV" ]; then
  echo "ID;Metrica;Caso;Avaliador;DataHora;Dispositivo;Modelo;VersaoSO;VersaoApp;Estado;Evidencia;Observacoes" > "$CSV"
fi

# Confere se a configuracao realmente foi aplicada. Sem isso, uma falha silenciosa
# produziria 20 capturas da tela nativa, invalidando a metrica inteira.
verificar_config() {
  local C="$1" esp_size esp_dens esp_font esp_rot size dens font rot erros=""
  case "$C" in
    C01|C02|C03) esp_size="640x1136"; esp_dens="320" ;;
    C04)         esp_size="1080x2400"; esp_dens="420" ;;
  esac
  if [ "$C" = "C03" ]; then esp_font="2.0"; else esp_font="1.0"; fi
  if [ "$C" = "C02" ]; then esp_rot="1";   else esp_rot="0";   fi
  size=$(adbx shell wm size      | tr -d '\r' | awk -F': ' 'END{print $2}')
  dens=$(adbx shell wm density   | tr -d '\r' | awk -F': ' 'END{print $2}')
  font=$(adbx shell settings get system font_scale    | tr -d '\r')
  rot=$(adbx shell settings get system user_rotation  | tr -d '\r')
  [ "$size" = "$esp_size" ] || erros="$erros\n   resolucao: esperado $esp_size, obtido $size"
  [ "$dens" = "$esp_dens" ] || erros="$erros\n   densidade: esperado $esp_dens, obtido $dens"
  awk -v a="$font" -v b="$esp_font" 'BEGIN{exit !(a==b)}' \
    || erros="$erros\n   fonte: esperado $esp_font, obtido $font"
  [ "$rot" = "$esp_rot" ] || erros="$erros\n   rotacao: esperado $esp_rot, obtido $rot"
  if [ -n "$erros" ]; then
    echo "ERRO: a configuracao $C nao foi aplicada:"
    printf '%b\n' "$erros"
    echo "   Nenhuma captura seria valida nessa condicao. Corrija e rode de novo."
    exit 1
  fi
  echo "   Configuracao $C confirmada no aparelho ($size, $dens dpi, fonte $font)."
}

aplicar_config() {
  case "$1" in
    C01|C02|C03) adbx shell wm size 640x1136 >/dev/null; adbx shell wm density 320 >/dev/null ;;
    C04)         adbx shell wm size 1080x2400 >/dev/null; adbx shell wm density 420 >/dev/null ;;
  esac
  case "$1" in
    C03) adbx shell settings put system font_scale 2.0 >/dev/null ;;
    *)   adbx shell settings put system font_scale 1.0 >/dev/null ;;
  esac
  adbx shell settings put system accelerometer_rotation 0 >/dev/null
  case "$1" in
    C02) adbx shell settings put system user_rotation 1 >/dev/null ;;
    *)   adbx shell settings put system user_rotation 0 >/dev/null ;;
  esac
  verificar_config "$1"
  adbx shell am force-stop "$PKG" >/dev/null 2>&1
  adbx shell monkey -p "$PKG" -c android.intent.category.LAUNCHER 1 >/dev/null 2>&1 \
    || echo "   (abra o app manualmente: o lancamento automatico falhou)"
  sleep 2
}

capturar() {
  local arq="$1"
  adbx exec-out screencap -p > "$arq" 2>/dev/null
  if [ ! -s "$arq" ]; then rm -f "$arq"; echo "   AVISO: captura falhou."; return 1; fi
  return 0
}

echo "============================================================"
echo " M1.1 - Adaptabilidade de telas"
echo " Aparelho: $DISP ($MODELO) | Android $SO (API $API) | app $VAPP"
echo " Avaliador: $AVALIADOR | Saida: $OUT_DIR"
echo "============================================================"

for C in "${CONFIGS[@]}"; do
  echo
  echo "------------------------------------------------------------"
  echo " Configuracao $C - ${DESC_CONFIG[$C]}"
  echo "------------------------------------------------------------"
  aplicar_config "$C"
  for T in "${TELAS[@]}"; do
    CASO="$T-$C"
    ARQ="$OUT_DIR/M1.1_${CASO}_${DISP}.png"
    echo
    echo ">> Caso $CASO - ${DESC_TELA[$T]}"
    read -r -p "   Abra essa tela no app e tecle ENTER (s = pular o caso): " pular
    [ "$pular" = "s" ] && { echo "   Caso pulado."; continue; }
    until capturar "$ARQ"; do
      read -r -p "   Tentar capturar de novo? [ENTER = sim, s = pular]: " r
      [ "$r" = "s" ] && break
    done
    [ -s "$ARQ" ] && echo "   Evidencia: $ARQ"
    estado=""
    while [ -z "$estado" ]; do
      read -r -p "   Estado [c = Conforme, d = Defeito, n = Nao observavel, r = recapturar]: " e
      case "$e" in
        c) estado="Conforme" ;;
        d) estado="Defeito" ;;
        n) estado="Nao observavel" ;;
        r) capturar "$ARQ" && echo "   Recapturado." ;;
        *) echo "   Opcao invalida." ;;
      esac
    done
    read -r -p "   Observacoes (ENTER para nenhuma): " obs
    obs=$(echo "$obs" | tr ';' ',')
    printf '%s;M1.1;%s;%s;%s;%s;%s;%s;%s;%s;%s;%s\n' \
      "EXEC-M1.1-$CASO" "$CASO" "$AVALIADOR" "$(date '+%Y-%m-%d %H:%M')" \
      "$DISP" "$MODELO" "$SO (API $API)" "$VAPP" "$estado" "$(basename "$ARQ")" "$obs" >> "$CSV"
    echo "   Registrado como $estado."
  done
done

echo
echo "============================================================"
echo " Bateria concluida."
printf " Conformes: %s | Defeitos: %s | Nao observaveis: %s\n" \
  "$(grep -c ';Conforme;' "$CSV")" "$(grep -c ';Defeito;' "$CSV")" "$(grep -c ';Nao observavel;' "$CSV")"
echo " Lembre de conferir M1.1 = Ts / Tt com os casos validos."
echo "============================================================"
