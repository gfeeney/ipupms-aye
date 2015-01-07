# working.script3.R - JF - 07-Jan-2015

rm(list=ls())
source("../../processing/Rfunctions1/status.R")
source("../../processing/Rfunctions2/getvariable.R")
source("../../processing/Rfunctions2/getcodebook.R")
codebook             <- readRDS("metadata/codebook.rds")
vnames.vdescriptions <- readRDS("metadata/vnames.vdescriptions.rds")

samplename <- "viet_nam2009"
status()
library(XLConnect)
wb <- loadWorkbook("metadata/variables.metadata.final.xlsx", create=FALSE)
sheetname <- paste("variables.metadata.", samplename, sep="")
x <- readWorksheet(wb, sheet = sheetname)
is.character(x[, "vname"])

getvariable("dwtype")
table(dwtype)
vnames <- codebook[, "vname"]
cs <- "vn09" == substr(vnames, 1, 4)
vnames <- vnames[cs]
codebook[cs, "vname"] <- substr(vnames, 5, nchar(vnames))
