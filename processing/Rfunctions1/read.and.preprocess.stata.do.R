read.and.preprocess.stata.do <- function(filename, vnameprefix) {
  x01 <- readLines(filename)                             # Read file
  x02 <- x01[nchar(x01) != 0]                            # Remove empty lines
  x03 <- x02[!("label values " == substr(x02, 1, 13))]   # Remove lines that begin with "label values "
  x04 <- gsub("_lbl", "", x03, fixed=TRUE)               # Remove "_lbl" from codebook lines in stata.do
  x05 <- gsub(", add", '', x04, fixed=TRUE)              # Remove ", add" from codebook ines in stata.do
  x06 <- gsub(vnameprefix, "", x05, fixed=TRUE)          # Remove variable name prefixes
  x07 <- gsub(" \"", " <", x06, fixed=TRUE)              # Replace interior quote preceded by space by " <"
  x08 <- gsub("\" ", "> ", x07, fixed=TRUE)              # Replace interior quote followed by space by "> "
  x09 <- gsub("`\"\"\"", "`\"blank\"", x08, fixed=TRUE)  # Replace """ by "blank"
  x10 <- gsub("`\"", "\"", x09, fixed=TRUE)              # Replace `" by "
  x11 <- gsub("\"\'", "\"", x10, fixed=TRUE)             # Replace "' by "
  x12 <- gsub("NIU (not in universe)", "NIU", x11, fixed=TRUE)  # Shorten
  x13 <- gsub("Under one year", "0", x12, fixed=TRUE)           # Shorten
  x14 <- gsub("Less than 1 years old", "0", x13, fixed=TRUE)    # Shorten
  x15 <- gsub("Less than 1 year old", "0", x14, fixed=TRUE)     # Shorten
  x16 <- gsub("Household record", "hhrec", x15, fixed=TRUE)     # Shorten
  # What this doesn't fix is, e.g., `"O"higgins"' - How fix this?
  x16
}
