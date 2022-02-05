main.pdf: main.tex intro.tex method.tex related.tex results.tex conclusion.tex appendix.tex notes.tex biblio.bib results/scores_dialog.tex results/scores_narration.tex
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

copyresults:
	scp -r verdigris:/roaming/gchrupal/verdigris/peppa/results .

clean:
	rm main.aux  main.bbl  main.blg  main.log  main.out  main.pdf

