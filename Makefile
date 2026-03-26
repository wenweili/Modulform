MAINFILE=Modulform
ERRATA=Errata-Modulform
LATEXMK=latexmk

default:
	# Generating $(MAINFILE).pdf
	$(LATEXMK) -pdf -pdflatex="xelatex -synctex=1 -shell-escape -interaction=nonstopmode %O %S" $(MAINFILE)

nosync:
	# Generating $(MAINFILE).pdf
	$(LATEXMK) -pdf -pdflatex="xelatex -shell-escape -interaction=nonstopmode %O %S" $(MAINFILE)

errata:
	# Generating $(ERRATA).pdf
	$(LATEXMK) -pdf -pdflatex="xelatex -shell-escape -interaction=nonstopmode %O %S" $(ERRATA)

clean:
	# Cleaning...
	@rm -f *.aux *.log *.idx *.ind *.thm *.toc *.blg *.bbl *.bcf *.out *.ilg
	@rm -f *.fls *.fdb_latexmk *.run.xml *.synctex.gz *.xdv *~ *.lof *.lot
	@rm -f .metadonnees*

tarball:
	@rm -f ../Modulform.tar.zst
	@tar --exclude .git -cf ../Modulform.tar.zst .

.PHONY: clean
