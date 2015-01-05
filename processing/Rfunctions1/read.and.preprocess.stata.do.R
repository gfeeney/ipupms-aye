read.and.preprocess.stata.do <- function(extract.number, vnameprefix) {
  filename <- paste("source/ipumsi_", extract.number, ".do", sep="")
  x <- readLines(filename)
  y <- x[nchar(x) != 0]                           # Remove empty lines
  z <- y[!("label values " == substr(y, 1, 13))]  # Remove lines that begin with "label values "
  
  x1 <- gsub(vnameprefix, "", z)                  # Remove vnameprefix
  x2 <- gsub("_lbl", "", x1)                      # Remove "_lbl" from codebook lines in stata.do
  x3 <- gsub(", add", '', x2)                     # Remove ", add" from codebook ines in stata.do
  x4 <- gsub("`\"", "\"", x3)                     # remove backtick "`" from codebook lines in stata.do
  x5 <- gsub("\"'", "\"", x4)                     # Remove ending single quote from codebook lines in stata.do
  
  x6 <- gsub("\"\"\"", "\"MISSING\"", x5)         # Replace null values with MISSING
  #x7 <- gsub("\"", "\'", x6)                      # Replace double quotes " in value with single quotes '
  x6
}


#gsub("\"", "'", "label define doctype 1 \"C1 (Households in \"regular\" enumeration areas)\"")
