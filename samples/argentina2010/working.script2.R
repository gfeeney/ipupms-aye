# Initial setup

# NOTE 08-Jan02015 Not yet run for Argentina

rm(list=ls())

source("../../processing/Rfunctions2/getvariable.R")
source("../../processing/Rfunctions2/getcodebook.R")
source("../../processing/Rfunctions1/status.R")
source("../../processing/Rfunctions1/variables.metadata.autogenerate.R")
codebook             <- readRDS("metadata/codebook.rds")
vnames.vdescriptions <- readRDS("metadata/vnames.vdescriptions.rds")

samplename <- "argentina2010"
status()

# Autogenerate initial version of variables.metadata spreadsheet
variables.metadata.autogenerate(vnames.vdescriptions)
vnames <- variables[, "vname"]

# Complete variables metadata spreadsheet manually


getcodebook("levcomp")
vnames.vdescriptions

i <- 3
i <- i + 1
variable.metadata.autocreate(vnames[i])

# Notes
# 05-Jan-2015 Non-work activity 1 and 2 need explaining, not at all clear
# 05-Jan-2015 

