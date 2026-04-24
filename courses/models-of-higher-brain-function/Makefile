DOC := main

all:
	latexmk -norc -pdf -interaction=nonstopmode -halt-on-error $(DOC).tex
	cp $(DOC).pdf models-of-higher-brain-function-lecture-notes.pdf

clean:
	latexmk -norc -c $(DOC).tex
