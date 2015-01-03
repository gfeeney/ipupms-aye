record.layout.create <- function(x, vnnameprefix, rmprefix=TRUE) {
  line.first <- (1:length(x))[substr(x, 1, 8) == "quietly "] + 1
  if (length(line.first) > 1) {line.first <- line.first[1]}
  line.last  <- (1:length(x))[substr(x, 1, 8) == "  using "] - 1
  if (length(line.last) > 1) {line1 <- line.last[1]}
  y <- x[line.first:line.last]
  z <- read.table(textConnection(y), stringsAsFactors=FALSE)
  z <- z[, 1:3]
  colnames(z) <- c("type", "vname", "position")
  z
}