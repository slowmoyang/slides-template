NAME=main

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	@mkdir -vp build
	@mkdir -vp tex
	latexmk -bibtex -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make $< -jobname=./build/$(NAME)

.PHONY: clean
clean:
	latexmk -c -jobname=./build/$(NAME)

.PHONY: cleanall
cleanall:
	rm -vf ./build/*
	@rm -vrf ./_minted-.
