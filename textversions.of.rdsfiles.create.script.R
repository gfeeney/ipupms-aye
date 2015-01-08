# textversions.of.rdsfiles.create.script.R - GF - 08-Jan-2015
# I want text versions of .rds metadata files so I can view contents
# without starting R.

samples <- dir("samples")
for (i in 1:length(samples)) {
  cat(paste(formatC(i, width=2, flag="0"), ": ", samples[i], " ...\n", sep=""))
  filepath <- paste("samples/", samples[i], "/metadata/", sep="")
  # codebook
  y <- readRDS(paste(filepath, "codebook.rds", sep=""))
  sink(paste(filepath, "codebook.txt", sep=""))
  y
  sink()
  # record.layout
  y <- readRDS(paste(filepath, "record.layout.rds", sep=""))
  sink(paste(filepath, "record.layout.txt", sep=""))
  y
  sink()
  
  # vnames.vdescriptions
  y <- readRDS(paste(filepath, "vnames.vdescriptions.rds", sep=""))
  sink(paste(filepath, "vnames.vdescriptions.txt", sep=""))
  y
  sink()

}

i <- 1
