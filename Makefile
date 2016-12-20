# Start by clearing the list of suffixes
.SUFFIXES:
# Then specify our suffixes
.SUFFIXES: .tex .dvi .bib .pdf .sgml .html .m4 .md

M4PATH := ./CaseContent
export M4PATH

%.md : %.m4 
	m4 $*.m4 > $*.md

%.docx : %.md 
	pandoc -s  -o $*.docx $*.md

