# missing.values.report.R - GF - 04-Jan-2015

rm(list=ls())
getwd()
samplename <- "armenia2001"
setwd(paste("samples/", samplename, sep=""))
getwd()
library(XLConnect)
wb <- loadWorkbook("metadata/variables.metadata.final.xlsx")
x <- readWorksheet(wb, sheet="metadata.final", 
                   startRow=1, startCol=1,
                   endRow=61, endCol=19,
                   header=TRUE)








x <- readRDS("metadata/variables.metadata.final.rds")
vnames <- x[!is.na(x[, "mvcode"]), "vname"]
