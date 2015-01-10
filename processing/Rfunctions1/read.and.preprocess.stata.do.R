read.and.preprocess.stata.do <- function(extract.number, vnameprefix) {
  filename <- paste("source/ipumsi_", extract.number, ".do", sep="")
  x <- readLines(filename)
  y <- x[nchar(x) != 0]                                # Remove empty lines
  z <- y[!("label values " == substr(y, 1, 13))]       # Remove lines that begin with "label values "
  
  x1 <- gsub(vnameprefix, "", z, fixed=TRUE)           # Remove vnameprefix
  x2 <- gsub("_lbl", "", x1, fixed=TRUE)               # Remove "_lbl" from codebook lines in stata.do
  x3 <- gsub(", add", '', x2, fixed=TRUE)              # Remove ", add" from codebook ines in stata.do
  x4 <- gsub("`\"", "\"", x3, fixed=TRUE)              # remove backtick "`" from codebook lines in stata.do
  x5 <- gsub("\"'", "\"", x4, fixed=TRUE)              # Remove ending single quote from codebook lines in stata.do
  x6 <- gsub("\"\"\"", "\"MISSING\"", x5, fixed=TRUE)  # Replace null values with MISSING
  x6
}

