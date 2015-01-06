# Initial setup
rm(list=ls())
source("../../processing/Rfunctions2/getvariable.R")
source("../../processing/Rfunctions2/getcodebook.R")
source("../../processing/Rfunctions1/status.R")
source("../../processing/Rfunctions1/variables.metadata.autogenerate.R")
codebook             <- readRDS("metadata/codebook.rds")
vnames.vdescriptions <- readRDS("metadata/vnames.vdescriptions.rds")

samplename <- "burkina_faso2006"
status()

# Autogenerate initial version of variables.metadata spreadsheet
variables.metadata.autogenerate(vnames.vdescriptions)
vnames <- variables[, "vname"]

# Complete variables metadata spreadsheet manually


getcodebook("empstat")
vnames.vdescriptions

i <- 3
i <- i + 1
variable.metadata.autocreate(vnames[i])

# Notes
# 05-Jan-2015 'age' codebook is wrong, open-ended group not indicated
# 05-Jan-2015 HH Deaths data is supplementary
# 05-Jan-2015 Emigration data is supplementary
# 05-Jan-2015 Agricultural data?
# 05-Jan-2015 Principal occupation P22 and P24 are missing?


