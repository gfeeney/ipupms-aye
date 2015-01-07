# Initial setup
rm(list=ls())
source("../../processing/Rfunctions2/getvariable.R")
source("../../processing/Rfunctions2/getcodebook.R")
source("../../processing/Rfunctions1/status.R")
source("../../processing/Rfunctions1/variables.metadata.autogenerate.R")
codebook             <- readRDS("metadata/codebook.rds")
vnames.vdescriptions <- readRDS("metadata/vnames.vdescriptions.rds")

samplename <- "viet_nam2009"
status()

# Autogenerate initial version of variables.metadata spreadsheet
variables.metadata.autogenerate(vnames.vdescriptions)
vnames <- vnames.vdescriptions[, "vname"]

# Complete variables metadata spreadsheet manually

getcodebook("beginyr")
vnames.vdescriptions

x <- table(rmbed, dwtype)

# vvnames <- dir("data")
# cs <- "vn09" == substr(vvnames, 1, 4)
# oldnames <- vvnames[cs]
# newnames <- substr(x, 5, nchar(oldnames))
# setwd("data")
# for (i in 3:length(oldnames)) {
#   file.rename(oldnames[i], newnames[i])
# }
# setwd("../")


# Notes: viet_nam2009 (jff)
# 06-Jan-2015 emp1 misnamed



