# working.script1.R - GF - 10-Jan-2015

# First work to be done after downloading unharmonized variables for sample
# Set working directory to directory for sample (this is automatic if R is
# started by double-clicking the script in the sample directory)

rm(list=ls())
# Reset wd: setwd("C:/Users/gfeeney/Desktop/ipums.aye/processing/Rfunctions1")

# Source functions
source("codebook.create.R")
source("codebook.edit.R")
source("read.and.preprocess.stata.do.R")
source("record.layout.create.R")
source("status.R")
source("vectorization.script.create.R")
source("vnames.vdescriptions.create.R")
code.year.name <- readRDS("../../metadata/code.name.year.rds")

# Setup for loop through all samples
setwd("../../samples/")
samplenames <- dir()

# Country-specific fixes
# belarus1999
#  Problem: label define by99a_unemp_lbl 9 `"NA"', add
# Solution: Replace 'NA' to 'Unknown'
# burkina_faso2006
#  Problem: label define bf06a_comm05_lbl 0899 `"""', add
# Solution: Replace middle " by [missing name GF]
# cameroon2005
#  Problem: label define cm05a_prevdept_lbl 55 `"""', add
# Solution: Replace middle " by [missing name GF]
# chile2002
#  Problem: label define cl02a_bpl_lbl 11302 `"O"higgins"', add
# Solution: Replace middle " by \"
# china1990
#  Problem: label define cn90a_prefect_lbl 2327 `"Daxing"anling city"', add
#  Problem: label define cn90a_prefect_lbl 3624 `"Ji"an prefecture"', add
# Solution: Replace middle " by \"
# colombia2005
#   Problem: label define co05a_pape05_lbl 2 `"""', add
#  Solution: Replace middle " by [missing name GF]


# haiti2003
#  Problem: label define ht03a_othdisab_lbl 0 `"Other disabilities, excluding those in "other disabilities""'
#  Problem: label define ht03a_marst_lbl 4 `"In "visiting" union (viv avek)"', add
# Solution: Replace internal "" by <>
# portugal2001
#  Problem: label define pt01a_famtype_lbl 11 `"Couple "de jure" without children"', same on subsequent lines
# Solution: Replace internal "" by <>
# uganda2002
#  Problem: label define ug02a_chdead_lbl 99 `"NA"', add
# Solution: Replay 'NA' by "Unknown"

# Loop through all samples i <- 1
for (i in 1:length(samplenames)) {
  samplename <- samplenames[i]
  cat(paste(formatC(i, width=2, flag="0"), ": ", samplename, " ...\n", sep=""))
  setwd(samplename)
  status(verbose=FALSE)

  # Get vnameprefix
  x <- code.year.name
  cnysamples <- tolower(paste(x[, "name"], x[, "year"], sep=""))
  cnysamples <- sub(" ", "_", cnysamples)
  rs <- (1:length(cnysamples))[samplename == cnysamples]
  vnameprefix <- paste(x[rs, 1], substr(x[rs, 3], 3, 4), "a_", sep="")

  # Get extract number
  x <- dir("source")                     # Get list of file names in "source" subdirectory
  y  <- x["ipumsi_" == substr(x, 1, 7)]  # Extract number is in file name beginning "ipumsi_"
  z <- substr(y, 8, 12)                  # Extract number is in positions 8-12
  if (length(unique(z)) > 1) {stop: "Error getting extract number: Check check, fix, rerun"}
  extract.number <- unique(z)
  
  # Read stata.do file, prepare 'metadata' subdirectory of sample directory
  stata.do <- read.and.preprocess.stata.do(extract.number, vnameprefix)
  if (!file.exists("metadata")) {
    dir.create("metadata")
  }
  
  # Create record.layout and save to .rds and .txt
  record.layout <- record.layout.create(stata.do, vnnameprefix)
  saveRDS(record.layout, file="metadata/record.layout.rds")
  sink("metadata/record.layout.txt")
  print(record.layout)
  sink()
  
  # Create codebook and save to .rds and .txt
  codebook <- codebook.create(stata.do)
  codebook <- codebook.edit(codebook)
  saveRDS(codebook, file="metadata/codebook.rds")
  sink("metadata/codebook.txt")
  print(codebook)
  sink()
  
  # Create vnames.vdescriptions and save to .rds and .txt
  vnames.vdescriptions <- vnames.vdescriptions.create(stata.do)
  saveRDS(vnames.vdescriptions, file="metadata/vnames.vdescriptions.rds")
  sink("metadata/vnames.vdescriptions.txt")
  print(vnames.vdescriptions)
  sink()
  
  # Create vectorization script, the run from git bash shell
  vectorization.script.create(extract.number, record.layout)
  
  setwd("../")
}
