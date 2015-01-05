# Initial setup
rm(list=ls())
source("../../processing/Rfunctions2/getvariable.R")
source("../../processing/Rfunctions2/getcodebook.R")
source("../../processing/Rfunctions1/status.R")
source("../../processing/Rfunctions1/variables.metadata.autogenerate.R")
codebook             <- readRDS("metadata/codebook.rds")
vnames.vdescriptions <- readRDS("metadata/vnames.vdescriptions.rds")

samplename <- "bolivia2001"
status()

# Autogenerate initial version of variables.metadata spreadsheet
variables.metadata.autogenerate(vnames.vdescriptions)
vnames <- variables[, "vname"]

# Complete variables metadata spreadsheet manually



i <- 3
i <- i + 1
variable.metadata.autocreate(vnames[i])

# Notes
# 05-Jan-2015 'electricity' variable misnamed, it is electricity for lighting
# 05-Jan-2015 Two variables named 'pernum'!

