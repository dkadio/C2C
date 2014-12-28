all: pdf clean 

pdf: ausarbeitung.tex
	@echo building ausarbeitung.pdf...
	./sortAcronyms.sh
	# OR with true to prevent make from exiting in case of no error found
	-pdflatex -file-line-error -halt-on-error ausarbeitung.tex #| grep '.*:[0-9]*:.*' || true
	bibtex ausarbeitung.aux #> /dev/null 2>&1
	#makeindex ausarbeitung > /dev/null 2>&1
	makeindex ausarbeitung.nlo -s nomencl.ist -o ausarbeitung.nls #> /dev/null 2>&1
	pdflatex ausarbeitung.tex #> /dev/null 2>&1
	pdflatex ausarbeitung.tex #> /dev/null 2>&1
	open ausarbeitung.pdf
	
keeptemp: pdf

clean:
	@echo deleting temporary files...
	rm -f  *.aux *.log *.out *.bbl *.blg *~ *.dvi *.toc *.lot *.lol *.lof *.idx *.ind *.ilg *.snm *.nav *.vrb *.run.xml *.bcf *.nlo *.nls

cleanall: clean
	@echo deleting ausarbeitung.pdf...
	rm -f  *.pdf

.PHONY: all clean cleanall keeptemp pdf
.SILENT: all clean cleanall keeptemp pdf
