#! /usr/bin/env nix-shell
#! nix-shell -i bash -p pandoc texlive.combined.scheme-small

pandoc -t revealjs -s -o presentation.html presentation.md -V revealjs-url=./reveal.js/ -V theme=solarized
pandoc report.md --pdf-engine=pdflatex -o report.pdf
