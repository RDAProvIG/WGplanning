# Start by clearing the list of suffixes
.SUFFIXES:
# Then specify our suffixes
.SUFFIXES: .tex .dvi .bib .pdf .sgml .html .m4 .md

%.docx : %.md %.bib
	pandoc -s  --bibliography=$*.bib -o $*.docx $*.md

%.html : %.md %.bib
	pandoc -s  --bibliography=$*.bib -o $*.html $*.md

%.tex : %.md
	pandoc -s -i --filter pandoc-citeproc -t beamer -V theme:Warsaw -o $*.tex $*.md

%.pdf : %.tex
	pdflatex $*.tex
	pdflatex $*.tex

clean : 
	rm *.out
	rm *.aux
	rm *.log
	rm *.snm
	rm *.toc
	rm *.nav
