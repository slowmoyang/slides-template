set shell := ["fish", "-c"]

# help
default: help

alias h := help
help:
    just -l -f {{justfile()}}

root_dir := justfile_directory()

alias b := build
build:
    tectonic -X build
