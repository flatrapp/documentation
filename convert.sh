#! /usr/bin/env nix-shell
#! nix-shell -i bash -p pandoc texlive.combined.scheme-small

if [ ! -d "reveal.js"  ]; then
    wget https://github.com/hakimel/reveal.js/archive/master.tar.gz
    tar -xzvf master.tar.gz
    mv reveal.js-master reveal.js
    rm master.tar.gz
fi

pandoc -t revealjs -s -o presentation.html presentation.md -V revealjs-url=./reveal.js/ -V theme=solarized
pandoc report.md --pdf-engine=pdflatex -o report.pdf
