PREFIX = report
TEXFILE = $(PREFIX).tex
BIBFILE = $(PREFIX).aux
LATEX = pdflatex
BIBTEX = bibtex
TRASH = *.aux *.log *.dvi *.ps *.nav *.out *.snm *.backup *.bak *.toc *~ *.bbl *.blg *.toc *.pdf *.lof *.gz *.bst *.idx *.lot *.idx

fast:
	$(LATEX) -halt-on-error $(TEXFILE)

all: pdf

pdf: 
	$(LATEX) -halt-on-error $(TEXFILE)
	$(BIBTEX) $(BIBFILE)
	$(LATEX) -halt-on-error $(TEXFILE)
	$(LATEX) -halt-on-error $(TEXFILE)

clean: clear

clear:
	rm -rf $(TRASH)
