SOURCE=index.md

default: pdf

pdf: $(SOURCE)
	pandoc -t latex -o index.pdf --number-sections --filter pandoc-citeproc --latex-engine=xelatex $(SOURCE)

latex: $(SOURCE)
	pandoc -s -t latex -o test/index.tex --number-sections --filter pandoc-citeproc --latex-engine=xelatex $(SOURCE)
