set shell := ["zsh", "-cu"]

PROJECT := "main"
OUTPUT_DIR := "./build"

default: dot build

alias b := build
build:
    @mkdir -vp {{OUTPUT_DIR}}
    latexmk -output-directory={{OUTPUT_DIR}} -pdf -shell-escape {{PROJECT}}

alias c := clean
clean:
    latexmk -c

alias ca := cleanall
cleanall:
    rm -fv {{OUTPUT_DIR}}/*
    rm -fv `fd . . -t f -e .aux`
    @rm -rfv ./_minted-*

dot:
    fd . ./fig -t f -e .dot --exec dot -T pdf '{}' -o '{.}'.pdf
