rm(list=ls())
samplename <- "zambia2010"
source("../../processing/Rfunctions1/variables.metadata.spreadsheet.initialize.R")

variables.metadata.spreadsheet.initialize()

x <- readRDS("metadata/codebook.rds")
vnames <- unique(x[, "vname"])
i <- 3
i <- i + 1
x[vnames[i] == x[, "vname"], ]
vnames[i]

x
