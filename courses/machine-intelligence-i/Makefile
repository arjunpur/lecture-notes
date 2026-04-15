DOC := main

all:
	latexmk -pdf -interaction=nonstopmode -halt-on-error $(DOC).tex
	cp $(DOC).pdf machine-intelligence-i-lecture-notes.pdf

clean:
	latexmk -c $(DOC).tex
