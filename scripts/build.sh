#!/bin/bash

echo "=========================================="
echo "  trab-disc-unesp - Compilação"
echo "=========================================="

cd src

echo "📝 Compilando main.tex (1ª passagem)..."
pdflatex -synctex=1 -interaction=nonstopmode main.tex

echo "📚 Compilando bibliografia..."
bibtex main || true

echo "📝 Compilando main.tex (2ª passagem)..."
pdflatex -synctex=1 -interaction=nonstopmode main.tex

echo "📝 Compilando main.tex (3ª passagem)..."
pdflatex -synctex=1 -interaction=nonstopmode main.tex

cd ..
mkdir -p output
mv src/main.pdf "output/$(date +%Y%m%d)_trabalho.pdf"

echo "=========================================="
echo "✅ PDF gerado em: output/$(date +%Y%m%d)_trabalho.pdf"
echo "=========================================="
