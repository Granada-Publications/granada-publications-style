SOURCE=index.md

default: pdf

pdf: $(SOURCE)
	pandoc -t latex -o index.pdf --number-sections --filter pandoc-citeproc --toc --latex-engine=lualatex $(SOURCE)

latex: $(SOURCE)
	pandoc -s -t latex -o test/index.tex --number-sections --filter pandoc-citeproc --latex-engine=lualatex $(SOURCE)
