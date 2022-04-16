This is the LaTeX source for the textbook **Introduction to modular forms** (in Chinese: 模形式初步), revised version (April 2022).

The book has been published by Science Publishing (Beijing), June 2020. ISBN: 978-7-03-064531-9; the revised version will be published soon. The PDF version and the errata are also available on the author's web page.

# How to compile

## System requirements
The files are to be compiled using XeLaTeX with the xeCJK package. The reader is assumed to work under the UN*X + bash environment.

The recipes below can be tweaked to work under Windows, but this is not recommended. The simplest solution is to go open-source.

We only need the standard packages and fonts, such as
- [TeX Live](https://tug.org/texlive), including the programs latexmk, xindy and biber.
- Standard fonts included in TeX Live, in particular the Fandol fonts. For some strange reason I used and installed the TeX Gyre Termes fonts in the system. In case of error messages related to these fonts, please look for the OTF files (inside the directories in your computer which store TeX-related fonts) whose names start with **texgyretermes**, and install them manually in your system.
- The **Noto Sans CJK SC** fonts from [Noto CJK](https://github.com/googlei18n/noto-cjk), which should also be installed system-wide.

The author apologizes for these strange configurations of fonts. One may also try to modify these settings in the file font-setup-open.tex.

Please make sure that all the relevant packages/programs are installed. For reference, the author made the compilation using Arch-based Linux distributions with TeX Live 2020; the packages **biber** and **texlive-science** are required.

## Clone the files
Assume that [Git](https://git-scm.com/) has been installed on your computer. As a preparation for the compilation process, we will clone the files into `~/Modulform` in our home directory. In command line, type
```
cd ~
git clone https://github.com/wenweili/Modulform
```

All the source files are encoded in UTF-8, the de facto standard for storing multilingual texts. If you encounter problems in opening the source files under Windows, try to re-configure your editor or convert the encoding manually.

## Compile the TeX source

Make sure that the necessary pacakges and fonts are installed and move to the directory we just cloned
```
cd ~/Modulform
```
Then, either type
```
latexmk -pdf -pdflatex="xelatex -shell-escape -interaction=nonstopmode %O %S" Modulform
```
under bash, or more simply
```
make
```

Have a cup of coffee since this will take several minutes. The resulting PDF file should appear as **Modulform.pdf** in the same directory. Note that the main file is **Modulform.tex**.

To clean up everything in our directory except the PDF file, type
```
make clean
```

# The document class AJbook
The book is written in the **AJbook** class (AJbook.cls). The document class is originally designed for the book [Methods of Algebra, Volume 1](https://github.com/wenweili/AlJabr-1). Please refer to that page for further illustrations. 

# The errata
The errata is produced from **Errata-Modulform.tex**, which is based on the really simple document class file **AJerrata.cls** bundled with the **AJbook** class. Apart from the standard fonts bundled with TeX, it also depends on **Noto Serif CJK SC** and **Noto Sans CJK SC**; you can install them from [Noto CJK fonts](https://github.com/googlei18n/noto-cjk).

To compile the errata, type
```
xelatex Errata-Modulform
```
or
```
make errata
```
in the same directory.

# Feedback
In case of problems of compilation, please kindly report to the author. Make sure that all the system requirements above are met, and provide detailed error messages. Other suggestions are also welcome.

# License
The entire codebase is under [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/).
