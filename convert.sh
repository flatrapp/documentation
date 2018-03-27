#! /usr/bin/env nix-shell
#! nix-shell -i bash -p pandoc

pandoc -t revealjs -s -o presentation.html presentation.md -V revealjs-url=http://lab.hakim.se/reveal-js -V theme=solarized
