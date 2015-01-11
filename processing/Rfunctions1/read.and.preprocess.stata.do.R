read.and.preprocess.stata.do <- function(filename, vnameprefix) {
  x1 <- readLines(filename)                           # Read file
  x2 <- x1[nchar(x1) != 0]                            # Remove empty lines
  x3 <- x2[!("label values " == substr(x2, 1, 13))]   # Remove lines that begin with "label values "
  x4 <- gsub("_lbl", "", x3, fixed=TRUE)              # Remove "_lbl" from codebook lines in stata.do
  x5 <- gsub(", add", '', x4, fixed=TRUE)             # Remove ", add" from codebook ines in stata.do
  x6 <- gsub(vnameprefix, "", x5, fixed=TRUE)         # Remove variable name prefixes
  x7 <- gsub("NIU (not in universe)", "NIU", x6, fixed=TRUE) # Shorten
  x8 <- gsub("Under one year", "0", x7, fixed=TRUE)          # Shorten
  
#   x6 <- gsub(" \"", " <", x5, fixed=TRUE)             # Replace interior quote preceded by space by " <"
#   x7 <- gsub("\" ", "> ", x6, fixed=TRUE)             # Replace interior quote followed by space by "> "
#   x8 <- gsub("`\"\"\"", "`\"blank\"", x7, fixed=TRUE) # Replace """ by "blank"
  # What this doesn't fix is, e.g., `"O"higgins"' - How fix this?
  
  x8
}
