# working.script1.R - GF - 05-Jan-2015

# NOTE 08-Jan02015 Not yet run for Argentina

# First work to be done after downloading unharmonized variables for sample
# Set working directory to directory for sample (this is automatic if R is
# started by double-clicking the script in the sample directory)

rm(list=ls())

# Source functions
source("../../processing/Rfunctions1/codebook.create.R")
source("../../processing/Rfunctions1/codebook.edit.R")
source("../../processing/Rfunctions1/read.and.preprocess.stata.do.R")
source("../../processing/Rfunctions1/record.layout.create.R")
source("../../processing/Rfunctions1/status.R")
source("../../processing/Rfunctions1/vectorization.script.create.R")
source("../../processing/Rfunctions1/vnames.vdescriptions.create.R")
source("../../processing/Rfunctions2/getvariable.R")
source("../../processing/Rfunctions2/getcodebook.R")
code.year.name <- readRDS("../../metadata/code.name.year.rds")

# Set sample
samplename <- "Argentina2010"
status()

# Get vnameprefix
x <- code.year.name
cnysamples <- tolower(paste(x[, "name"], x[, "year"], sep=""))
cnysamples <- sub(" ", "_", cnysamples)
rs <- (1:length(cnysamples))[samplename == cnysamples]
vnameprefix <- paste(x[rs, 1], substr(x[rs, 3], 3, 4), "a_", sep="")
vnameprefix  # "br10a_"

# Get extract number
x <- dir("source")                     # Get list of file names in "source" subdirectory
y  <- x["ipumsi_" == substr(x, 1, 7)]  # Extract number is in file name beginning "ipumsi_"
z <- substr(y, 8, 12)                  # Extract number is in positions 8-12
if (unique(z) > 1) {stop: "Error getting extract number: Check check, fix, rerun"}
extract.number <- unique(z)
extract.number  # "00055"

# Read stata.do file, prepare 'metadata' subdirectory of sample directory
stata.do <- read.and.preprocess.stata.do(extract.number, vnameprefix)
if (!file.exists("metadata")) {
  dir.create("metadata")
}

# Create record.layout and save to .rds
record.layout <- record.layout.create(stata.do, vnnameprefix)
saveRDS(record.layout, file="metadata/record.layout.rds")

# Create codebook and save to .rds
codebook <- codebook.create(stata.do)
codebook <- codebook.edit(codebook)
saveRDS(codebook, file="metadata/codebook.rds")

# Create vnames.vdescriptions and save to .rds
vnames.vdescriptions <- vnames.vdescriptions.create(stata.do)
saveRDS(vnames.vdescriptions, file="metadata/vnames.vdescriptions.rds")

# Create vectorization script, the run from git bash shell
vectorization.script.create(extract.number, record.layout)       # Create vectorization script

