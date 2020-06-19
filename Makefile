MAINFILE=Modulform
LATEXMK=latexmk

default:
	# Generating $(MAINFILE).pdf
	$(LATEXMK) -pdf -pdflatex="xelatex -synctex=1 -shell-escape -interaction=nonstopmode %O %S" $(MAINFILE)

nosync:
	# Generating $(MAINFILE).pdf
	$(LATEXMK) -pdf -pdflatex="xelatex -shell-escape -interaction=nonstopmode %O %S" $(MAINFILE)
	
	
clean:
	# Cleaning...
	@rm -f *.aux *.log *.idx *.ind *.thm *.toc *.blg *.bbl *.bcf *.out
	@rm -f *.fls *.fdb_latexmk *.run.xml *.synctex.gz *.xdv *~ *.lof *.lot
	@rm -f .metadonnees*

tarball:
	@rm -f ../Modulform.tar.gz
	@tar cvfz ../Modulform.tar.gz .

.PHONY: clean
