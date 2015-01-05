# Initial setup
rm(list=ls())
source("processing/Rfunctions1/codebook.edit.R")
source("processing/Rfunctions1/initialize.R")
source("processing/Rfunctions1/status.R")
source("processing/Rfunctions2/getvariable.R")
source("processing/Rfunctions2/getcodebook.R")
samplename <- "bolivia2001"
initialize(samplename)
status()

# Autogenerate initial version of variables.metadata spreadsheet
source("../../processing/Rfunctions1/variables.metadata.autogenerate.R")
variables.metadata.autogenerate()
variables <- readRDS("metadata/vnames.vdescriptions.rds")
vnames <- variables[, "vname"]
codebook <- readRDS("metadata/codebook.rds")
dim(codebook)  # 1304    4
codebook <- codebook.edit(codebook)

# Complete variables metadata spreadsheet manually
vnames
getvariable("edattan")
getcodebook("age")
getcodebook("edattan")
getcodebook("edfield")
getcodebook("lit")
getcodebook("empstat")
getcodebook("ind")


i <- 3
i <- i + 1
variable.metadata.autocreate(vnames[i])

# Notes
# 05-Jan-2015 'electricity' variable misnamed, it is electricity for lighting
# 05-Jan-2015 Two variables named 'pernum'!

