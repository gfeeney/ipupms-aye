vnames.vdescriptions.create <- function(x) {
  lines <- (1:length(x))[substr(x, 1, 10) == "label var "]
  line.first <- lines[1]
  line.last  <- lines[length(lines)]
  y <- x[line.first:line.last]
  z <- read.table(textConnection(y), stringsAsFactors=FALSE)
  z <- z[, 3:4]
  colnames(z) <- c("vname", "vdescription")
  z
}