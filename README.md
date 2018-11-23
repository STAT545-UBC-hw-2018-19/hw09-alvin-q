# HW09 Alvin Qiu's Pipeline

For this homework assignment, I have built on this pipeline [here](https://github.com/STAT545-UBC/make-activity).

I've incorporated 2 possible streams of analyses in this pipeline.

`analysis1` was the previously made one. This pipeline allows user to find the length of all the words in the dictionary and create a histogram of their distribution.

`analysis2` is another that I created. This pipeline allows a user to find the first letter of all th words in the dictionary. It then plots a bar plot of their distribution.

You can run `make all` and `make clean` to run both pipelines and remove the outputs of both pipelines.

Alternatively, you can run `make analysis1` and `make clean_analysis1` as well as `make analysis2` and `make clean_analysis2` to run each seperately.

The final output is an html file that is rendered.

# make-activity

The commit history of this repository reflects what a student might do as she works through [this activity](http://stat545-ubc.github.io/automation04_make-activity.html) from [STAT 545](http://stat545-ubc.github.io). This fully developed example shows:

  * How to run an R script non-interactively
  * How to use `make`
    - to record which files are inputs vs. intermediates vs. outputs
    - to capture how scripts and commands convert inputs to outputs
    - to re-run parts of an analysis that are out-of-date
  * The intersection of R and `make`, i.e. how to
    - run snippets of R code
    - run an entire R script
    - render an R Markdown document (or R script)
  * The interface between RStudio and `make`
  * How to use `make` from the shell
  * How Git facilitates the process of building a pipeline