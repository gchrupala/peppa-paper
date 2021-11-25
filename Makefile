main.pdf: main.tex intro.tex method.tex related.tex results.tex conclusion.tex notes.tex biblio.bib val_rec10.png valnarr_rec10.png val_acc3.png valnarr_acc3.png sim-glove-duration.png
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

clean:
	rm main.aux  main.bbl  main.blg  main.log  main.out  main.pdf

