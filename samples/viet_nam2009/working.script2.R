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

getcodebook("rmbed")
vnames.vdescriptions

x <- table(rmbed, dwtype)

vvnames <- dir("data")
cs <- "vn09" == substr(vvnames, 1, 4)
oldnames <- vvnames[cs]
newnames <- substr(x, 5, nchar(oldnames))
for (i in 1:length(newnames))


# Notes: chile2002
# 06-Jan-2015 Why the NIU cde for items 3-10? table(owner) shows 31456 coded NIU (2%)
# 06-Jan-2015 Same for items 14-16 and several subsequent variables in variables.metadata spreadsheet?
# 06-Jan-2015 Line 54 includes "skip to Section D", but the file contains no Section D
# 06-Jan-2015 Looks like the 31456 NIU is common, but what are these cases? People in institutional households?
# 06-Jan-2015 Yes, filter variable is dwtype, codes "09" and "10" are collective quarters, many questions not asked
# 06-Jan-2015 Would be convenient for qusetionnaire translation to have variable name ...




