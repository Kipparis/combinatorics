filename=consp

pdf: ${filename}.tex
	pdflatex ${filename}.tex
	biber ${filename}
	makeindex ${filename}.idx
	pdflatex ${filename}.tex # second time is necessary to create links in document
	pdflatex ${filename}.tex # second time is necessary to create links in document
	cp ${filename}.pdf combinatorics_handbook.pdf
