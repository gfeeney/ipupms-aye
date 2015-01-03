vectorization.script.create <- function(extract.number, record.layout) {
  #  INPUT record.layout data frame, compressed data file name
  # RESULT bash script to vectorize variables represented by lines
  #         in record.layout
  cdatafilename <- paste("source/ipumsi_", extract.number, ".dat.gz", sep="")
  datafilename  <- substr(cdatafilename, 1, nchar(x) - 3)
  lines1 <- c("#!/bin/sh",
              "# Vectorize data file",
              'echo "Begin vectorizing: " `date`',
              paste("gunzip -c ", cdatafilename, " > data.dat", sep=""),
              paste("sha1sum data.dat > ", datafilename, ".sha1", sep=""),
              "mkdir data")
  x <- record.layout
  lines2 <-  paste("cut -c", x[, "position"], " data.dat | gzip -c - > data/", x[, "vname"], ".gz", sep="")
  lines3 <-  c("rm data.dat", 'echo "  End vectorizing: " `date`')
  writeLines(c(lines1, lines2, lines3), con="vectorize")
  cat(paste("Script \"vectorize\" written\n"))
}
