.PHONY: all clean lint

LATEX ?= pdflatex

all: main.pdf

clean:
	latexmk -C

lint:
	npx eclint check *.cls *.sty *.tex lib/

%.pdf: %.tex
	latexmk --interaction=nonstopmode --pdf --pdflatex=$(LATEX) $<
