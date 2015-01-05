# Initial setup
rm(list=ls())
source("../../processing/Rfunctions1/initialize.R")
source("../../processing/Rfunctions1/status.R")
samplename <- "austria2001"
initialize(samplename)
status()

# Autogenerate initial version of variables.metadata spreadsheet
source("../../processing/Rfunctions1/variables.metadata.autogenerate.R")
variables.metadata.autogenerate()

x <- readRDS("metadata/codebook.rds")
vnames <- unique(x[, "vname"])
i <- 3
i <- i + 1
x[vnames[i] == x[, "vname"], ]
vnames[i]

x
getwd()
