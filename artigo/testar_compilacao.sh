#!/bin/bash
# Script de teste e validação de compilação do artigo (SBC Template)

set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
cd "$DIR"

echo "=== Verificando arquivos essenciais para compilação ==="
for file in main.tex sbc-template.sty referencias.bib; do
    if [ ! -f "$file" ]; then
        echo "ERRO: Arquivo $file não encontrado!"
        exit 1
    fi
    echo "  [OK] $file presente"
done

echo ""
echo "=== Testando compilação do LaTeX ==="
if command -v tectonic >/dev/null 2>&1; then
    echo "Compilando com Tectonic..."
    tectonic main.tex
    echo "Compilação concluída com sucesso! PDF gerado em artigo/main.pdf"
elif [ -x "$HOME/.local/bin/tectonic" ]; then
    echo "Compilando com ~/.local/bin/tectonic..."
    "$HOME/.local/bin/tectonic" main.tex
    echo "Compilação concluída com sucesso! PDF gerado em artigo/main.pdf"
elif command -v pdflatex >/dev/null 2>&1; then
    echo "Compilando com pdflatex..."
    pdflatex -interaction=nonstopmode main.tex
    pdflatex -interaction=nonstopmode main.tex
    echo "Compilação concluída com sucesso! PDF gerado em artigo/main.pdf"
else
    echo "AVISO: Nem tectonic nem pdflatex encontrados no PATH."
    echo "Os arquivos estão validados e prontos para compilar diretamente no Overleaf."
fi
