setup.generic <- function(extract.number, vnameprefix, samplename) {
  #  INPUT Extract number, 5 digits with leading zeros
  #        Variable name prefix (e.g. 'zm10a_', to remove it)
  #        sample directory name (e.g. 'argentina2010')
  # RESULT Creates record.layout, variable description, and codebook data 
  # frames, creates 'metadata' subdirectory for sample directory, writes
  # .rds files for data frames to this subdirectory, creates vectorization
  # script, runs script to create 'data' subdirectory containing compressed
  # vector files for each variable
  source("read.and.preprocess.stata.do.R")
  source("record.layout.create.R")
  source("vname.vdescription.create.R")
  source("codebook.create.R")
  source("blocks.create.R")
  source("vectorization.script.create.R")
  setwd(paste("../", samplename, sep=""))
  
  # Metadata
  stata.do.filename  <- paste("source/ipumsi_", extract.number, ".do", sep="")
  x <- read.and.preprocess.stata.do(stata.do.filename, vnameprefix)
  record.layout <- record.layout.create(x)
  variable.descriptions <- variable.descriptions.create(x)
  codebook <- codebook.create(x)
  if (!file.exists("metadata")) {
    system("mkdir metadata")  
  }
  saveRDS(record.layout, file="metadata/record.layout.rds")
  saveRDS(variable.descriptions, file="metadata/variable.descriptions.rds")
  saveRDS(codebook, file="metadata/codebook.rds")
  
  # Data
  cdatafilename <- paste("source/ipumsi_", extract.number, ".dat.gz", sep="")
  vectorization.script.create(extract.number, record.layout, cdatafilename)
  
  # Now open bash window to samplename directory and run the 'data.vectorize'
  # So far at least I haven't figured out how to do this from within R
}

