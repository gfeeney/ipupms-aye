codebook.create <- function(x) {
  # x is stata.do file as R character vector
  lines <- (1:length(x))[substr(x, 1, 13) == "label define "]
  line.first <- lines[1]
  line.last  <- lines[length(lines)]
  y <- x[line.first:line.last]
  z <- read.table(textConnection(y), stringsAsFactors=FALSE)[, 3:5]
  colnames(z) <- c("vname", "code", "value")
  rs <- z[, "vname"] != "cntry" & z[, "vname"] != "year" & z[, "vname"] != "sample"
  codebook  <- z[rs, ]
  colnames(codebook) <- c("vname", "code", "value")
  rownames(codebook) <- 1:dim(codebook)[1]
  codebook
}
