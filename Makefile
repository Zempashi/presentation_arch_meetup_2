PDFLATEX=pdflatex
LATEXFLAGS=-file-line-error -halt-on-error -interaction errorstopmode --enable-write18

all : arch_meetup_2.pdf

%.pdf : %.tex
	$(PDFLATEX) $(LATEXFLAGS) $<

.PHONY:check
check:
	aspell --mode=tex --lang=en_US --encoding=UTF-8 -c arch_meetup_2.tex

.PHONY: clean
clean:
	rm -rf *.aux *.nav *.pdf *.vrb *.log *.out *.snm *.toc

# vim:set noexpandtab
