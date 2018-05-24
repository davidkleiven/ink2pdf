# ink2pdf
Convert inkscape genereted pdf_tex+pdf and ps_tex+ps to pdf files

# Installation
This application requires that the xelatex command is available.

* Run configure
```bash
bash configure --prefix=<path/to/installation/location>
```
The *ink2pdf* will copied to the path specified.
The default path is */usr/local/bin*.

* Install
```bash
make install
```

# Usage
To convert a inkscape generated *ps_tex* or *pdf_tex* file to a standalon pdf figure run
```bash
ink2pdf /path/to/figure/inkscapefigure.ps_tex
```
or
```bash
ink2pdf /path/to/figure/inkscapefigure.pdf_tex
```

The script can also convert a svg file directly to a LaTeX compiled pdf file via
```bash
ink2pdf /path/to/figure/inkscapefigure.svg
```

The fontsize used in the figure can be specified as a second argument
```bash
ink2pdf inkfig.svg 14pt
```
Supported fonts: 8pt, 9pt, 10pt, 11pt, 12pt, 14pt, 17pt and 20pt
12pt is the default.

To change to sans font one have to use
```bash
ink2pdf inkfig.svg 12pt sans
```
(at the moment one have to specify the font size in order to change the font type)

In Python the follow *rcParams* settings can be useful to include in the beginning
of the script
```python
import matplotlib as mpl
mpl.rcParams["svg.fonttype"] = "none"
mpl.rcParams["font.size"] = 18
mpl.rcParams["axes.unicode_minus"] = False
```
This works very well when converting the figure with font size 10pt i.e.
```bash
ink2pdf figure.svg 10pt
```
