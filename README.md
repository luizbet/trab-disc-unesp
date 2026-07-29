# trab-disc-unesp

Template LaTeX para trabalhos acadêmicos simples de disciplinas da UNESP.

## 📋 Descrição

Este template foi desenvolvido para facilitar a elaboração de trabalhos acadêmicos (relatórios, resenhas, artigos, etc.) para disciplinas da graduação na UNESP. Ele é leve, rápido de compilar e mantém a identidade visual institucional.

## 🏛️ Institutos suportados

- **IB** - Instituto de Biociências
- **IGCE** - Instituto de Geociências e Ciências Exatas

## 📁 Estrutura do Projeto

trab-disc-unesp/
├── .vscode/ # Configurações do VS Code
├── src/ # Código fonte (NÃO EDITÁVEL)
│ ├── main.tex # Documento principal
│ ├── capa.tex # Capa personalizada
│ └── config.tex # Configurações gerais
├── user/ # Arquivos editáveis pelo usuário
│ └── infos.tex # Dados do usuário
├── logos/ # Logos institucionais
├── scripts/ # Scripts de compilação
└── output/ # PDFs gerados

## 🚀 Como usar

### 1. Configure seus dados

**Edite APENAS o arquivo `user/infos.tex`** com suas informações pessoais:

```latex
\def\meuNome{Seu Nome Completo}
\def\meuRA{XXXXXXXX}
\def\meuCurso{Licenciatura em Geografia}
\def\minhaDisciplina{Nome da Disciplina}
\def\meuProfessor{Prof(a). Nome Completo}
\def\meuInstituto{IGCE}  # Escolha entre IB ou IGCE
\def\tituloTrabalho{Título do Trabalho}

⚠️ NÃO edite os arquivos dentro da pasta src/ - eles são a estrutura do template.

2. Escreva seu conteúdo
Edite o arquivo src/main.tex para adicionar seu conteúdo (introdução, desenvolvimento, conclusão, etc.).

3. Compile o documento
VS Code (recomendado):

Instale a extensão LaTeX Workshop

Abra src/main.tex

Pressione Ctrl+Shift+B

Terminal:

bash
# Linux/Mac
cd src
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex

# Ou use o script
./scripts/build.sh
Windows:

cmd
cd src
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex

# Ou use o script
scripts\build.bat
📝 Personalização
Alterando apenas os dados pessoais
Edite o arquivo user/infos.tex - todas as mudanças serão refletidas automaticamente.

Adicionando um novo instituto
Adicione o logo em logos/logo_novo.png

No arquivo user/infos.tex, adicione a opção:

latex
\def\meuInstituto{NOVO}
No arquivo src/capa.tex, adicione um novo bloco \ifthenelse com o nome e logo correspondentes

🤝 Contribuição
Contribuições são bem-vindas! Para contribuir:

Faça um fork do projeto

Crie uma branch para sua feature (git checkout -b feature/nova-feature)

Commit suas mudanças (git commit -m 'Adiciona nova feature')

Push para a branch (git push origin feature/nova-feature)

Abra um Pull Request

📄 Licença
Este projeto está sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.
