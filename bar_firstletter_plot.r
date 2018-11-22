library(tidyverse)

first_let_data <- read.delim("bar_firstletter.tsv")

ggplot(first_let_data, aes(first_letter, Freq)) +
	geom_bar(stat = "identity") +
	theme_bw() +
	xlab("First Letter")

ggsave("bar_firstletter.png")