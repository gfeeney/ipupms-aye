codebook.create <- function(x) {
  lines <- (1:length(x))[substr(x, 1, 13) == "label define "]
  line.first <- lines[1]
  line.last  <- lines[length(lines)]
  y <- x[line.first:line.last]
  z <- read.table(textConnection(y), stringsAsFactors=FALSE)[, 3:5]
  colnames(z) <- c("vname", "code", "value")
  vnames <- unique(z[, "vname"])
  codebook <- NULL
  for (i in 1:length(vnames)) {
    vcb <- z[vnames[i] == z[, "vname"], ]
    len <- max(nchar(vcb[, "code"]))
    vcb[, "code"] <- format(vcb[, "code"], width=len, flag="0")
    vcb[, "value"] <- gsub("\"", "'", vcb[, "value"])
    selectrow <- vcb[, "value"] == "NIU (not in universe)"  # gsub DOES NOT WORK!
    vcb[selectrow, "value"] <- "NIU"
    codebook <- rbind(codebook, vcb)
  }
  codebook <- cbind(codebook, codebook[, "value"])
  colnames(codebook) <- c("vname", "code", "short", "value")
  codebook[, "short"] <- substr(codebook[, "short"], 1, 30)
  codebook
}
