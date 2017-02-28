@echo off
REM get date
ECHO --- > preamble.txt
ECHO title: Working Group on Provenance Patterns >> preamble.txt
ECHO author: Research Data Provenance IG >> preamble.txt
ECHO date:  Last updated  %date% %time% >> preamble.txt
ECHO --- >> preamble.txt

REM concatenate all the .md files into one
copy preamble.txt+CaseContent\Charter.md+CaseContent\ValueProposition.md+CaseContent\Engagement.md+CaseContent\WorkPlan.md+CaseContent\InitialMembership.md ProvWGcase-all.md

REM make the Word Doc
pandoc ProvWGcase-all.md -o ProvWGcase.docx

REM remove intermediate .md file
del ProvWGcase-all.md