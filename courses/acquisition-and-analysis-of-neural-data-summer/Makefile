DOC := main

all:
	latexmk -pdf -interaction=nonstopmode -halt-on-error $(DOC).tex
	cp $(DOC).pdf acquisition-and-analysis-of-neural-data-summer-lecture-notes.pdf

clean:
	latexmk -c $(DOC).tex
