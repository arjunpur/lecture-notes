DOC := main
LATEXMK := latexmk
LATEXMKRC := $(CURDIR)/latexmkrc
LATEX_CACHE := $(CURDIR)/.tex-cache
LATEXMK_FLAGS := -norc -r $(LATEXMKRC) -lualatex
ENV := TEXMFCACHE="$(LATEX_CACHE)" TEXMFVAR="$(LATEX_CACHE)" \
       TEXMFCONFIG="$(LATEX_CACHE)" LUAOTFLOAD_CACHE="$(LATEX_CACHE)" \
       LUAOTFLOADCACHE="$(LATEX_CACHE)"

.PHONY: all watch clean distclean

CHAPTERS := ch01-simple-units ch02-learning ch03-visual-receptive-fields \
            ch04-membrane-potential ch05-ion-channels-lif ch06-hodgkin-huxley \
            ch07-single-channels ch08-phase-plane-1d ch09-phase-plane-2d \
            ch10-excitability-types ch11-cable-theory ch12-cable-branching \
            ch13-compartments-myelination ch14-network-models \
            ch15-stochastic-spiking

all:
	@mkdir -p $(LATEX_CACHE) build $(addprefix build/chapters/,$(CHAPTERS))
	$(ENV) $(LATEXMK) $(LATEXMK_FLAGS) $(DOC).tex
	cp build/$(DOC).pdf $(DOC).pdf
	cp build/$(DOC).pdf models-of-neural-systems-lecture-notes.pdf

watch:
	@mkdir -p $(LATEX_CACHE) build $(addprefix build/chapters/,$(CHAPTERS))
	$(ENV) $(LATEXMK) $(LATEXMK_FLAGS) -pvc $(DOC).tex

clean:
	@mkdir -p $(LATEX_CACHE)
	$(ENV) $(LATEXMK) $(LATEXMK_FLAGS) -c $(DOC).tex

distclean:
	rm -rf build .tex-cache
