# Fork of La Trobe PhD Thesis LaTeX Template
## Tex Studio
tlmgr init-usertree
tlmgr option repository ftp://tug.org/historic/systems/texlive/2021/tlnet-final
tlmgr update --all
tlmgr install csquotes biblatex logreq lipsum xpatch mparhack acronym suffix
## Docker image
https://hub.docker.com/r/blang/latex
## Organization
`thesis.tex` is the root document and includes the individual chapters. The content of the chapters can be found under `text/`. It is pretty self-explaining. Figures should be placed under `figures/`. Bibliography should be put into `library.bib`.

## Configuration
You should replace the configuration at the top of `thesis.tex` with your actual information. That's it!

    % Thesis and submission:
    \newcommand{\myTitle}{Using Thinking Machines to Alleviate our Dependency on Guild Navigators}
    \newcommand{\mySubmissionYear}{2018}
    \newcommand{\mySubmissionMonth}{October}
    \newcommand{\mySubmissionDay}{31}

    % Regarding yourself:
    \newcommand{\myFirstName}{Feyd-Rautha}
    \newcommand{\myLastName}{Harkonnen}
    \newcommand{\myWebsite}{https://en.wikipedia.org/wiki/Feyd-Rautha}
    \newcommand{\myBirthYear}{1965}
    \newcommand{\myBirthMonth}{January}
    \newcommand{\myBirthDay}{31}
    \newcommand{\myBirthPlace}{Lankiveil}

    % Primary supervisor:
    \newcommand{\myProfTitle}{Prof.}
    \newcommand{\myProfFirstName}{Piter}
    \newcommand{\myProfLastName}{De Vries}
    \newcommand{\myProfWebsite}{http://homepage.cs.latrobe.edu.au/pdevries}

    % Co-supervisor:
    \newcommand{\myOtherProfTitle}{Dr}
    \newcommand{\myOtherProfFirstName}{Thufir}
    \newcommand{\myOtherProfLastName}{Hawat}
    \newcommand{\myOtherProfWebsite}{http://homepage.cs.latrobe.edu.au/hthufir}

    % University related:
    \newcommand{\myDepartment}{Department of Computer Science and Information Technology}
    \newcommand{\myFaculty}{College of Science, Health and Engineering}
    \newcommand{\mySchool}{School of Engineering and Mathematical Sciences}
    \newcommand{\myUni}{La Trobe University}

## Build commands:

    pdflatex -synctex=1 -interaction=nonstopmode thesis.tex
    bibtex thesis.aux
    pdflatex -synctex=1 -interaction=nonstopmode thesis.tex
    pdflatex -synctex=1 -interaction=nonstopmode thesis.tex

(I am not kidding. You have to call the same command 3 times.)