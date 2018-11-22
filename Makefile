all: analysis1 analysis2

clean:
	rm -f words.txt histogram_length.tsv histogram_length.png report_length.md report_length.html bar_firstletter.tsv bar_firstletter.png report_firstletter.md report_firstletter.html

words.txt:
	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'

# Pipeline related to analysis1 (Length)

clean_analysis1:
	rm -f words.txt histogram_length.tsv histogram_length.png report_length.md report_length.html

analysis1: report_length.html

report_length.html: report_length.rmd histogram_length.tsv histogram_length.png
	Rscript -e 'rmarkdown::render("$<")'

histogram_length.png: histogram_length.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

histogram_length.tsv: histogram_length.r words.txt
	Rscript $<

# Pipeline related to analysis2 (First Letter)

clean_analysis2:
	rm -f words.txt bar_firstletter.tsv bar_firstletter.png report_firstletter.md report_firstletter.html

analysis2: report_firstletter.html

report_firstletter.html: report_firstletter.rmd bar_firstletter.tsv bar_firstletter.png
	Rscript -e 'rmarkdown::render("$<")'

bar_firstletter.png: bar_firstletter_plot.r bar_firstletter.tsv
	Rscript $<
	rm Rplots.pdf
	
bar_firstletter.tsv: bar_firstletter.r words.txt
	Rscript $<