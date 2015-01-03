# setup.script.R - GF - 29-Dec-2014

setwd("C:/Users/gfeeney/Desktop/ipums.aye/")
sample <- "argentina2010"
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
setwd("samples.metadata") 
x <- readRDS("code.name.year.rds")
cnysamples <- tolower(paste(x[, "name"], x[, "year"], sep=""))
cnysamples <- sub(" ", "_", cnysamples)
rowselect <- (1:length(cnysamples))[sample == cnysamples]
vnameprefix <- paste(x[rowselect, 1], substr(x[rowselect, 3], 3, 4), "a_", sep="")
setwd("../")

# Get extract number
setwd(paste("samples/", sample, "/", sep="")) 
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
record.layout <- record.layout.create(x, vnnameprefix)        # Create record.layout data frame
saveRDS(record.layout, file="record.layout.rds")              # Save .rds
codebook <- codebook.create(x)                                # Create codebook data frame
saveRDS(codebook, file="codebook.rds")                        # Save to .rds
variable.metadata <- variable.metadata.create(x)              # Create variable.metadata dataframe
saveRDS(variable.metadata, file="variable.descriptions.rds")  # Save to .rds
setwd("../")

# Create vectorization script
vectorization.script.create(extract.number, record.layout)    # Create vectorization script

# Run vectorization script
#system("\"C:\\Program Files (x86)\\Git\\bin\\bash -c ./vectorize\"", intern=TRUE, invisible=FALSE)

# Run script from bash shell - Record time below
# belarus1999      26-Dec-2014  16 minutes
# bangladesh2011   26-Dec-2014   7 minutes
# bolivia2001      26-Dec-2014   4 minutes
# brazil2010       26-Dec-2014 426 minutes 14:47-21:53 => 7 hours 6 minutes
# burkina_faso2006 26-Dec-2014   7 minutes PROBLEM WITH CODEBOOK SCRIPT
# cambodia2008     26-Dec-2014   4 minutes
# cameroon2005     26-Dec-2014   9 minutes
# canada2001       26-Dec-2014   9 minutes
# china1990        27-Dec-2014   
# colombia2005     27-Dec-2014   