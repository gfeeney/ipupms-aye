# international.ipums.org.retrieve.metadata.script.R - GF - 09-Jan-2015
# Objective: Capture samples metadata on international.ipums.org/international/samples.shtml
# Trying this from within R hasn't worked, but I can open the URL in Excel,
# save it as a spreadsheet file, bring it into R using XLConnect, and then
# process in R.

rm(list=ls())

# Read spreadsheet, name columns, remove spurious header rows, take out 'de facto/de jure' column
library(XLConnect)
wb <- loadWorkbook("ipums.international.metadata.xls")
x <- readWorksheet(wb, sheet="samples", startRow=44, endRow=319,
                   startCol=1, endCol=10, header=FALSE)
colnames(x) <- c("c_y", "pcnt", "nhh", "nper", "wght", "djdf", "dstring", "geog", "cquar", "note")
rs <- "Fraction" == x[, "pcnt"] | "(%)" == x[, "pcnt"]           # Remove header rows
y  <- x[!rs, c("c_y", "dstring", "pcnt", "wght", "nhh", "nper", "geog", "cquar", "note")]

# Do some reformating
metadata      <- y[, 1:8]                           # Replace note by note flag, notes in separate vector
metadata.note <- y[, 9]                             #
nflag         <- as.numeric(!is.na(metadata.note))  #
metadata[, 9] <- nflag                              # 
colnames(metadata)[9] <- "flag"                     #
wght          <- metadata[, "wght"]                 # Replace 'yes/no' by '1/0'
metadata[, "wght"] <- as.numeric(wght != "no")      # 
cquar <- metadata[, "cquar"]                        # Replace 'yes/no' by '1/0'
metadata[, "cquar"] <- as.numeric(cquar != "no")    #

# Create columns to indicated grouped ages and non-census datasets
ageg <- cbind(ageg=0, metadata.note)                                     # Create variable to indicate grouped ages
ageg[c(113, 115:122, 124:127, 164:166, 178:179, 209, 235), "ageg"] <- 1  # 
census <- cbind(census=1, metadata.note)                                 # Create variable to indicate census (not survey)
census[c(99:103, 105, 107, 109, 111, 170:174, 247), "census"] <- 0       #
metadata <- cbind(metadata, ageg[, "ageg"])                              # Add columns for these variables
colnames(metadata)[10] <- "ageg"                                         #
metadata <- cbind(metadata, census[, "census"])                          #
colnames(metadata)[11] <- "census"                                       #

# Create columns for country, year, sample
sample  <- metadata[, "c_y"]                                     # Construct 'sample' BEGIN
country <- substr(sample, 1, nchar(sample) - 5)                  # Get country name
country[country == "Vietnam"] <- "Viet Nam"                      # Rename 'Vietnam' 'Viet Nam'
year    <- substr(sample, nchar(sample) - 3, nchar(sample))      # Get year
sample  <- paste(tolower(sub(" ", "_", country)), year, sep="")  # Construct 'sample' END
metadata <- cbind(metadata, country, year, sample)               # Add 'country' column

# Create harmonized date
source("process.date.R")
dstring <- metadata[, "dstring"]
date    <- process.date(dstring)
cbind(date, dstring)

dstring[cs]

strsplit(dstring, split="/")
