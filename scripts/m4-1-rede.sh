#!/usr/bin/env bash
# M4.1 - Falha de rede: 10 ensaios, uma interrupcao por ensaio.
# O script cronometra o aviso (limite 5 s) e a retomada (limite 30 s).
# Uso: AVALIADOR="Nome" DISP=DISP-02 ./scripts/m4-1-rede.sh [n_ensaios]
set -uo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/lib_coleta.sh"

N="${1:-10}"; LIM_AVISO=5; LIM_RETOMADA=30
OUT="dados/fase4/M4.1"; CSV="$OUT/M4.1_coleta.csv"

exigir_adb; ler_dispositivo; exigir_avaliador; csv_init "$CSV"
app_instalado || { echo "ERRO: $PKG nao esta instalado."; exit 1; }

echo "============================================================"
echo " M4.1 - Falha de rede | $N ensaios | $DISP ($MODELO)"
echo " Grave a tela de cada ensaio com o gravador nativo."
echo " Aviso em ate ${LIM_AVISO}s, retomada em ate ${LIM_RETOMADA}s, 30s sem rede."
echo "============================================================"

for i in $(seq 1 "$N"); do
  E=$(printf "ENSAIO%02d" "$i")
  echo; echo "------------------------------------------------------------"
  echo " $E"
  echo "------------------------------------------------------------"
  read -r -p "   App aberto e funcionando, com rede, gravacao iniciada. ENTER (s = pular): " p
  [ "$p" = "s" ] && continue

  read -r -p "   Desligue DADOS MOVEIS e WI-FI. ENTER quando os dois estiverem desligados: " _
  T0=$(agora_ms)
  read -r -p "   Faca a consulta no app e tecle ENTER NO MOMENTO DO TOQUE: " _
  TC=$(agora_ms)
  read -r -p "   ENTER quando o aviso de indisponibilidade aparecer (x = nao apareceu): " r
  TA=$(agora_ms)
  if [ "$r" = "x" ]; then AVISO="nao exibido"; AVISO_OK=0
  else AVISO=$(delta_s "$TC" "$TA"); menor_igual "$AVISO" "$LIM_AVISO" && AVISO_OK=1 || AVISO_OK=0; fi
  echo "   Aviso: $AVISO s (limite ${LIM_AVISO}s)"

  DECOR=$(delta_s "$T0" "$(agora_ms)")
  REST=$(awk -v d="$DECOR" 'BEGIN{r=30-d; printf "%d", (r>0?r+0.999:0)}')
  [ "$REST" -gt 0 ] && contagem "$REST" "Mantendo 30 s sem rede"

  read -r -p "   Religue a rede. ENTER na confirmacao da reconexao: " _
  TR=$(agora_ms)
  read -r -p "   Repita a consulta. ENTER quando os dados aparecerem (x = nao retomou): " r2
  TF=$(agora_ms)
  if [ "$r2" = "x" ]; then RET="nao retomou"; RET_OK=0
  else RET=$(delta_s "$TR" "$TF"); menor_igual "$RET" "$LIM_RETOMADA" && RET_OK=1 || RET_OK=0; fi
  echo "   Retomada: $RET s (limite ${LIM_RETOMADA}s)"

  sim_nao "O app continuou aberto e responsivo durante toda a falha?"
  [ "$RESP" = "s" ] && VIVO=1 || VIVO=0

  if [ "$AVISO_OK" = 1 ] && [ "$RET_OK" = 1 ] && [ "$VIVO" = 1 ]; then
    ESTADO="Conforme"; else ESTADO="Defeito"; fi
  echo "   Sugestao do script: $ESTADO"
  read -r -p "   ENTER para aceitar ou digite c/d/n para corrigir: " c
  case "$c" in c) ESTADO="Conforme";; d) ESTADO="Defeito";; n) ESTADO="Nao observavel";; esac
  perguntar_obs
  csv_linha "$CSV" "M4.1" "$E" "$ESTADO" "aviso=${AVISO}s retomada=${RET}s" "M4.1_${E}_${DISP}.mp4" "$OBS"
  echo "   Registrado: $ESTADO"
done

resumo "$CSV" "M4.1"
echo " Faixas (10 ensaios): 10 -> nota 4; 9 -> nota 3; 7-8 -> nota 2; 6 ou menos -> nota 1."
