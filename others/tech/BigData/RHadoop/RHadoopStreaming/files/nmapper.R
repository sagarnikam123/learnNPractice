#! /usr/bin/env Rscript

con <- file("stdin", open = "r")
while (length(line <- readLines(con, n = 1, warn = FALSE)) > 0) {
    vals <- unlist(strsplit(line, ","))
    cat(vals[2], "\t", 1, "\n", sep="")
}
close(con)
