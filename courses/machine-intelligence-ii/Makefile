DOC := main

clean:
	latexmk -norc -c $(DOC).tex

all:
	latexmk -norc -pdf -interaction=nonstopmode -halt-on-error $(DOC).tex
	cp $(DOC).pdf machine-intelligence-ii-lecture-notes.pdf
