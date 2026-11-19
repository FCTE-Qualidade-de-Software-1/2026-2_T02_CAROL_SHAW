#!/usr/bin/env bash
# M1.2 - Adaptabilidade de SO. Executa TE01 a TE08 em UMA versao do Android.
# Rode uma vez por versao, trocando de aparelho/emulador entre as execucoes.
# Uso: AVALIADOR="Nome" DISP=DISP-02 VERSAO="Android 13 - Redmi Note 11S" ./scripts/m1-2-versoes.sh
set -uo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/lib_coleta.sh"

OUT="dados/fase4/M1.2"; CSV="$OUT/M1.2_coleta.csv"; DET="$OUT/M1.2_tarefas.csv"
TAREFAS=(TE01 TE02 TE03 TE04 TE05 TE06 TE07 TE08)

exigir_adb; ler_dispositivo; exigir_avaliador
csv_init "$CSV"; csv_init "$DET"
[ -z "${VERSAO:-}" ] && VERSAO="Android $SO (API $API) - $MODELO"
ID=$(echo "$VERSAO" | tr ' /' '__')

echo "============================================================"
echo " M1.2 - Versao avaliada: $VERSAO"
echo " Unidade da metrica e a VERSAO: ela so e aprovada se as 8 tarefas passarem."
echo "============================================================"

if ! app_instalado; then
  echo
  echo ">> O app nao esta instalado neste ambiente."
  echo "   Instale pela distribuicao oficial (Play Store) e tecle ENTER."
  echo "   Se a loja recusar por incompatibilidade comprovada, responda 'n' abaixo."
  read -r -p "   ENTER apos tentar instalar: " _
  if ! app_instalado; then
    sim_nao "A loja recusou por incompatibilidade do app com esta versao do Android?"
    if [ "$RESP" = "s" ]; then
      csv_linha "$CSV" "M1.2" "$ID" "Defeito" "0/8" "" "Instalacao recusada por incompatibilidade comprovada"
      echo "   Registrado como Defeito."; exit 0
    fi
    csv_linha "$CSV" "M1.2" "$ID" "Nao observavel" "" "" "Ambiente nao preparado ou distribuicao indisponivel por motivo externo"
    echo "   Registrado como Nao observavel."; exit 0
  fi
  ler_dispositivo
fi

OK=0; FALHAS=""
for T in "${TAREFAS[@]}"; do
  echo; echo ">> $T (catalogo da secao 3.2 dos procedimentos)"
  read -r -p "   Execute e tecle ENTER: " _
  ARQ="$OUT/M1.2_${ID}_${T}.png"; capturar "$ARQ" || ARQ=""
  perguntar_estado; perguntar_obs
  csv_linha "$DET" "M1.2" "$ID-$T" "$ESTADO" "" "$(basename "${ARQ:-}")" "$OBS"
  [ "$ESTADO" = "Conforme" ] && OK=$((OK+1)) || FALHAS="$FALHAS $T"
done

if [ "$OK" -eq 8 ]; then EST="Conforme"; else EST="Defeito"; fi
csv_linha "$CSV" "M1.2" "$ID" "$EST" "$OK/8" "" "Falhas:${FALHAS:- nenhuma}"
echo
echo "============================================================"
echo " Versao $VERSAO: $OK de 8 tarefas conformes -> $EST"
echo " Detalhe por tarefa: $DET"
resumo "$CSV" "M1.2"
