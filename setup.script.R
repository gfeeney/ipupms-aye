# setup.script.R - GF - 29-Dec-2014 Rev 03-Jan-2015

setwd("C:/Users/gfeeney/Desktop/ipums.aye/")
samplename <- "argentina2010"
if (!is.element(sample, dir("samples"))) {stop("sample directory not found")}

# Source functions
setwd("processing/Rfunctions1")
source("codebook.create.R")
source("read.and.preprocess.stata.do.R")
source("record.layout.create.R")
source("vectorization.script.create.R")
source("vnames.vdescriptions.create.R")
setwd(paste("../Rfunctions2", sep="")) 
source("getcodebook.R")
setwd("../../")

# Get vnameprefix
setwd("metadata") 
x <- readRDS("code.name.year.rds")
cnysamples <- tolower(paste(x[, "name"], x[, "year"], sep=""))
cnysamples <- sub(" ", "_", cnysamples)
rowselect <- (1:length(cnysamples))[sample == cnysamples]
vnameprefix <- paste(x[rowselect, 1], substr(x[rowselect, 3], 3, 4), "a_", sep="")
setwd("../")

# Get extract number
setwd(paste("samples/", samplename, "/", sep="")) 
x <- dir("source")                     # Get list of file names in "source" subdirectory
y  <- x["ipumsi_" == substr(x, 1, 7)]  # Extract number is in file name beginning "ipumsi_"
z <- substr(y, 8, 12)                  # Extract number is in positions 8-12
if (unique(z) > 1) {stop: "Error: Check input"}
extract.number <- unique(z)

# Create metadata
setwd("source")
x <- read.and.preprocess.stata.do(extract.number, vnameprefix)
setwd("../")
if (!file.exists("metadata")) {
  dir.create("metadata")
}
setwd("metadata")  
record.layout <- record.layout.create(x, vnnameprefix)           # Create record.layout data frame
saveRDS(record.layout, file="record.layout.rds")                 # Save .rds
codebook <- codebook.create(x)                                   # Create codebook data frame
saveRDS(codebook, file="codebook.rds")                           # Save to .rds
vnames.vdescriptions <- vnames.vdescriptions.create(x)           # Create vnames.vdescriptions dataframe
saveRDS(vnames.vdescriptions, file="variable.descriptions.rds")  # Save to .rds
setwd("../")

# Create vectorization script
vectorization.script.create(extract.number, record.layout)       # Create vectorization script

# Run vectorization script from git bash shell
# brazil2010 run on 26-Dec-2014, took 426 minutes <= 7 hours 6 minutes <= 14:47-21:53
