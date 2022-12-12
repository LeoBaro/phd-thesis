#!/bin/sh
# docker exec -it latex_daemon /bin/bash -c "pdflatex --version"
exec docker exec -it latex_daemon /bin/bash -c "pdflatex -synctex=1 -interaction=nonstopmode thesis.tex"
exec docker exec -it latex_daemon /bin/bash -c "bibtex thesis.aux"
exec docker exec -it latex_daemon /bin/bash -c "pdflatex -synctex=1 -interaction=nonstopmode thesis.tex"
exec docker exec -it latex_daemon /bin/bash -c "pdflatex -synctex=1 -interaction=nonstopmode thesis.tex"
