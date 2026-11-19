#!/usr/bin/env bash
# M6.1 - Cobertura de tarefas essenciais (TE01 a TE08), uma execucao cada.
# Uso: AVALIADOR="Nome" DISP=DISP-02 ./scripts/m6-1-tarefas.sh
set -uo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/lib_coleta.sh"

OUT="dados/fase4/M6.1"; CSV="$OUT/M6.1_coleta.csv"
TAREFAS=(TE01 TE02 TE03 TE04 TE05 TE06 TE07 TE08)
declare -A D=(
 [TE01]="Buscar L01 pelo codigo -> linha encontrada, identificacao e sentido corretos"
 [TE02]="Consultar horarios de L01 no dia de referencia -> grade da linha, sentido e dia corretos"
 [TE03]="Abrir o itinerario de L01 -> tracado e paradas do sentido selecionado"
 [TE04]="Consultar P01 -> identificacao da parada e linhas que a atendem"
 [TE05]="Acompanhar um veiculo de L02 em operacao -> veiculo identificavel e posicao no mapa"
 [TE06]="Salvar L01 nos favoritos e reabrir a lista -> L01 presente"
 [TE07]="Salvar P01 nos favoritos e reabrir a lista -> P01 presente"
 [TE08]="Remover L01 dos favoritos e reabrir a lista -> L01 ausente, outros mantidos"
)

exigir_adb; ler_dispositivo; exigir_avaliador; csv_init "$CSV"
app_instalado || { echo "ERRO: $PKG nao esta instalado."; exit 1; }

echo "============================================================"
echo " M6.1 - Tarefas essenciais | $DISP ($MODELO) | Android $SO | app $VAPP"
echo " Rede e localizacao devem estar ligadas."
echo "============================================================"

for T in "${TAREFAS[@]}"; do
  echo; echo ">> $T: ${D[$T]}"
  echo "   Prepare o estado inicial exigido por esta tarefa, independentemente das outras."
  read -r -p "   Execute a tarefa e tecle ENTER (s = pular): " p
  [ "$p" = "s" ] && { echo "   Pulada."; continue; }
  ARQ="$OUT/M6.1_${T}_${DISP}.png"
  capturar "$ARQ" || ARQ=""
  echo "   Em TE05, se nao der para confirmar operacao de L02, use 'n' (Nao observavel)."
  perguntar_estado; perguntar_obs
  csv_linha "$CSV" "M6.1" "$T" "$ESTADO" "" "$(basename "${ARQ:-}")" "$OBS"
  echo "   Registrado: $ESTADO"
done

resumo "$CSV" "M6.1"
echo " M6.1 = tarefas conformes / 8. Faixas: 8 -> nota 4; 7 -> nota 2; 6 ou menos -> nota 1."
