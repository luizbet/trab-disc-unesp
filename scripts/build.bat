@echo off

echo ==========================================
echo   trab-disc-unesp - Compilacao
echo ==========================================

cd src

echo 📝 Compilando main.tex (1a passagem)...
pdflatex -synctex=1 -interaction=nonstopmode main.tex

echo 📚 Compilando bibliografia...
bibtex main || goto :continue

echo 📝 Compilando main.tex (2a passagem)...
pdflatex -synctex=1 -interaction=nonstopmode main.tex

echo 📝 Compilando main.tex (3a passagem)...
pdflatex -synctex=1 -interaction=nonstopmode main.tex

:continue
cd ..
mkdir output 2>nul
move src\main.pdf output\%date:~6,4%%date:~3,2%%date:~0,2%_trabalho.pdf

echo ==========================================
echo PDF gerado em: output\%date:~6,4%%date:~3,2%%date:~0,2%_trabalho.pdf
echo ==========================================
