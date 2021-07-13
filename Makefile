main.pdf: main.tex intro.tex related.tex results.tex conclusion.tex notes.tex biblio.bib
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

clean:
	rm main.aux  main.bbl  main.blg  main.log  main.out  main.pdf

