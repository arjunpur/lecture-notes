DOC := main
COURSE_SLUG := models-of-higher-brain-function
LATEXMK := latexmk
LATEXMKRC := $(CURDIR)/latexmkrc
LATEX_CACHE := $(CURDIR)/.tex-cache
LATEXMK_FLAGS := -norc -r $(LATEXMKRC) -lualatex
ENV := TEXMFCACHE="$(LATEX_CACHE)" TEXMFVAR="$(LATEX_CACHE)" \
       TEXMFCONFIG="$(LATEX_CACHE)" LUAOTFLOAD_CACHE="$(LATEX_CACHE)" \
       LUAOTFLOADCACHE="$(LATEX_CACHE)"
PYTHON ?= python3
PYTHONPATH_EXPORT := PYTHONPATH=$(CURDIR)/src

.PHONY: all pdf watch clean distclean test demo

all: pdf

pdf:
	@mkdir -p $(LATEX_CACHE) build build/chapters/ch01-course-overview
	$(ENV) $(LATEXMK) $(LATEXMK_FLAGS) $(DOC).tex
	cp build/$(DOC).pdf $(DOC).pdf
	cp build/$(DOC).pdf $(COURSE_SLUG)-lecture-notes.pdf

watch:
	@mkdir -p $(LATEX_CACHE) build
	$(ENV) $(LATEXMK) $(LATEXMK_FLAGS) -pvc $(DOC).tex

test:
	$(PYTHONPATH_EXPORT) $(PYTHON) -m unittest discover -s tests -p 'test_*.py'

demo:
	$(PYTHONPATH_EXPORT) $(PYTHON) scripts/run_demo.py

clean:
	@mkdir -p $(LATEX_CACHE)
	$(ENV) $(LATEXMK) $(LATEXMK_FLAGS) -c $(DOC).tex

distclean:
	rm -rf build .tex-cache main.pdf $(COURSE_SLUG)-lecture-notes.pdf
