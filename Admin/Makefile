# Start by clearing the list of suffixes
.SUFFIXES:
# Then specify our suffixes
.SUFFIXES: .tex .dvi .bib .pdf .sgml .html .m4 .md

%.docx : %.md %.bib
	pandoc -s  --bibliography=$*.bib -o $*.docx $*.md

%.html : %.md %.bib
	pandoc -s  --bibliography=$*.bib -o $*.html $*.md

