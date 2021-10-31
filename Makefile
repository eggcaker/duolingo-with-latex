# Tools
LATEXMK = latexmk
RM = rm -f

# Project-specific settings
DOCNAME = duolingo

# Targets
all: doc
doc: pdf
pdf: $(DOCNAME).pdf

# Rules
%.pdf: %.tex
	$(LATEXMK) -pdfxe -M -MP -MF $*.d $*

mostlyclean:
	$(LATEXMK) -silent -c
	$(RM) *.bbl

clean: mostlyclean
	$(LATEXMK) -silent -C
	$(RM) *.run.xml *.synctex.gz
	$(RM) *.d
	$(RM) *.out
	$(RM) *.log

open:
	start duolingo.pdf


.PHONY: all clean doc mostlyclean pdf open
# Include auto-generated dependencies
-include *.d
