words <- readLines("words.txt")
words <- toupper(words)

first_letter <- substr(words, 1, 1)

bar_dat <- as.data.frame(table(first_letter))

write.table(bar_dat, "bar_firstletter.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)