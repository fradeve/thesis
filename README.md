Thesis
======

B.Sc. thesis

Compile
=======

Tested on ArchLinux.

Install GNUPlot

    sudo pacman -S gnuplot

Update installed files db, search gnuplot TeX styles; copy them in project directory

    sudo updatedb
    locate gnuplot-lua-tikz

    cd thesis
    cp /usr/share/texmf/tex/latex/gnuplot/gnuplot-lua-tikz.tex .
    cp /usr/share/texmf/tex/latex/gnuplot/gnuplot-lua-tikz-common.tex .

Compile cover pages

    cd thesis/pages
    pdflatex --shell-escape tesi-front.tex
    pdflatex --shell-escape tesi-post-front.tex

Compile main document

    cd thesis
    pdflatex --shell-escape main.tex
