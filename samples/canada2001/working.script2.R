# Initial setup
rm(list=ls())
source("../../processing/Rfunctions2/getvariable.R")
source("../../processing/Rfunctions2/getcodebook.R")
source("../../processing/Rfunctions1/status.R")
source("../../processing/Rfunctions1/variables.metadata.autogenerate.R")
codebook             <- readRDS("metadata/codebook.rds")
vnames.vdescriptions <- readRDS("metadata/vnames.vdescriptions.rds")

samplename <- "canada2001"
status()

# Autogenerate initial version of variables.metadata spreadsheet
variables.metadata.autogenerate(vnames.vdescriptions)
vnames <- vnames.vdescriptions[, "vname"]

# Complete variables metadata spreadsheet manually

getcodebook("school")
vnames.vdescriptions


# Notes: canada2001
# 06-Jan-2015 Abandoned work on this sample, too messy, not worth the trouble


