#!/usr/bin/env bash
# M2.1 (sucesso de instalacao) e M2.2 (residuo pos-desinstalacao) - 10 ciclos.
# Uso: AVALIADOR="Nome" DISP=DISP-02 ./scripts/m2-instalacao.sh [n_ciclos]
set -uo pipefail
source "$(dirname "${BASH_SOURCE[0]}")/lib_coleta.sh"

N="${1:-10}"
O21="dados/fase4/M2.1"; C21="$O21/M2.1_coleta.csv"
O22="dados/fase4/M2.2"; C22="$O22/M2.2_coleta.csv"
LOCAIS=(Android/data Android/obb Android/media Download Documents)

exigir_adb; ler_dispositivo; exigir_avaliador
csv_init "$C21"; csv_init "$C22"; mkdir -p "$O21" "$O22"

listar() { # arquivo_destino
  : > "$1"
  for d in "${LOCAIS[@]}"; do
    { echo "== /sdcard/$d"; adbx shell ls -laR "/sdcard/$d" 2>&1; } >> "$1"
  done
}

echo "============================================================"
echo " M2.1 e M2.2 - $N ciclos de instalacao limpa | $DISP ($MODELO) | Android $SO"
echo " Cada ciclo: listar -> instalar pela loja -> usar -> desinstalar -> listar -> comparar."
echo "============================================================"

for i in $(seq 1 "$N"); do
  C=$(printf "CICLO%02d" "$i")
  echo; echo "------------------------------------------------------------"
  echo " $C"
  echo "------------------------------------------------------------"

  if app_instalado; then
    echo "   O app esta instalado. Desinstale antes de iniciar o ciclo."
    read -r -p "   ENTER apos desinstalar: " _
    app_instalado && { echo "   Ainda instalado. Ciclo abortado."; continue; }
  fi

  ANTES="$O22/M2.2_${C}_${DISP}_antes.txt"
  echo "   Listando o armazenamento antes da instalacao..."
  listar "$ANTES"

  echo "   Agora instale pela Play Store e observe SO a primeira tentativa."
  read -r -p "   ENTER quando a instalacao terminar (ou falhar): " _
  LOJA="$O21/M2.1_${C}_${DISP}.png"; capturar "$LOJA" || LOJA=""
  echo "   Conforme = concluiu na primeira tentativa, sem erro. Abrir o app nao e exigido."
  perguntar_estado; perguntar_obs
  csv_linha "$C21" "M2.1" "$C" "$ESTADO" "" "$(basename "${LOJA:-}")" "$OBS"
  echo "   M2.1 registrado: $ESTADO"

  if [ "$ESTADO" != "Conforme" ]; then
    csv_linha "$C22" "M2.2" "$C" "Nao observavel" "" "$(basename "$ANTES")" "Instalacao nao concluida, sem desinstalacao a inspecionar"
    echo "   M2.2 do ciclo: Nao observavel."
    continue
  fi

  echo "   Use o app: busca, horarios, mapa e favoritos (isso gera os arquivos)."
  read -r -p "   ENTER apos usar: " _
  echo "   Desinstale pelo metodo padrao do sistema (nao use adb)."
  read -r -p "   ENTER apos desinstalar: " _
  if app_instalado; then echo "   Ainda instalado. Desinstale e rode o ciclo de novo."; continue; fi

  DEPOIS="$O22/M2.2_${C}_${DISP}_depois.txt"
  echo "   Listando o armazenamento depois da desinstalacao..."
  listar "$DEPOIS"
  DIFF="$O22/M2.2_${C}_${DISP}_diff.txt"
  diff "$ANTES" "$DEPOIS" > "$DIFF"
  SUSPEITOS=$(grep -i -c "dfnoponto\|bus2\|df no ponto" "$DEPOIS" || true)
  echo "   Diferencas: $(grep -c '^[<>]' "$DIFF" || true) linhas. Mencoes ao pacote apos a remocao: $SUSPEITOS"
  [ "$SUSPEITOS" -gt 0 ] && grep -i -n "dfnoponto\|bus2\|df no ponto" "$DEPOIS" | head -5

  echo "   Defeito = sobrou arquivo ou pasta atribuivel ao app. Arquivos criados por voce nao contam."
  perguntar_estado; perguntar_obs
  csv_linha "$C22" "M2.2" "$C" "$ESTADO" "$SUSPEITOS mencoes" "$(basename "$DIFF")" "$OBS"
  echo "   M2.2 registrado: $ESTADO"
done

resumo "$C21" "M2.1"; resumo "$C22" "M2.2"
echo " Faixas (10 ciclos): 10 -> nota 4; 9 -> nota 2; 8 ou menos -> nota 1."
