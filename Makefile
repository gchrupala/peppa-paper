main.pdf: main.tex intro.tex method.tex related.tex results.tex conclusion.tex appendix.tex notes.tex biblio.bib results/scores_dialog.tex results/scores_narration.tex results/data_statistics.tex results/ablations/jitter.pdf results/ablations/pretraining.pdf results/ablations/static.pdf results/recall_at_1_to_n_test.pdf
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

copyresults:
	scp -r aurometalsaurus:/home/gchrupal/peppa/results .

clean:
	rm main.aux  main.bbl  main.blg  main.log  main.out  main.pdf

