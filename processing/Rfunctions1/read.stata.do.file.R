read.stata.do.file <- function(filename) {
  x1 <- readLines(filename)                           # Read file
  x2 <- x1[nchar(x1) != 0]                            # Remove empty lines
  x3 <- x2[!("label values " == substr(x2, 1, 13))]   # Remove lines that begin with "label values "
  x4 <- gsub("_lbl", "", x3, fixed=TRUE)              # Remove "_lbl" from codebook lines in stata.do
  x5 <- gsub(", add", '', x4, fixed=TRUE)             # Remove ", add" from codebook ines in stata.do
  x6 <- gsub(" \"", " <", x5, fixed=TRUE)             # Replace interior quote preceded by space by " <"
  x7 <- gsub("\" ", "> ", x6, fixed=TRUE)             # Replace interior quote followed by space by "> "
  x8 <- gsub("`\"\"\"", "`\"blank\"", x7, fixed=TRUE) # Replace """ by "blank"
  x8
  # What this doesn't fix is, e.g., `"O"higgins"' - How fix this?
}
