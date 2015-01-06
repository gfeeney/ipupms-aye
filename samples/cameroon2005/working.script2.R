# Initial setup
rm(list=ls())
source("../../processing/Rfunctions2/getvariable.R")
source("../../processing/Rfunctions2/getcodebook.R")
source("../../processing/Rfunctions1/status.R")
source("../../processing/Rfunctions1/variables.metadata.autogenerate.R")
codebook             <- readRDS("metadata/codebook.rds")
vnames.vdescriptions <- readRDS("metadata/vnames.vdescriptions.rds")

samplename <- "cameroon2005"
status()

# Autogenerate initial version of variables.metadata spreadsheet
variables.metadata.autogenerate(vnames.vdescriptions)
vnames <- vnames.vdescriptions[, "vname"]

# Complete variables metadata spreadsheet manually

getcodebook("school")
vnames.vdescriptions


# Notes: cameroon2005
# 06-Jan-2015 Problem with numbering on Q translation? "Questions 2-27 ..." followed by "5."
# 06-Jan-2015 Detail lost for 22, English or French?
# 06-Jan-2015 No educational attainment variable?
# 06-Jan-2015 
# 06-Jan-2015 


