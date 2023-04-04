PROJECT=main
OUTPUT_DIR=./build/


# -shell-escape: required by minted
$(PROJECT).pdf: $(PROJECT).tex
	@mkdir -vp $(OUTPUT_DIR)
	latexmk -output-directory=$(OUTPUT_DIR) -pdf -shell-escape $(PROJECT)

.PHONY: clean
clean:
	latexmk -c

.PHONY: cleanall
cleanall:
	rm -vf $(OUTPUT_DIR)/*
	rm -vf **/*.aux
	@rm -vrf ./_minted-*
