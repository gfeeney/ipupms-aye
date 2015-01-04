# tabulation.script.R - GF - 14-Dec-2014

rm(list=ls())
source("../functions/getcodebook.R")
source("../functions/getuniverse.R")
source("../functions/getvariable.R")
source("../functions/getweights.R")
source("../functions/tablew.R")
datapath <- "../data/"
record.layout <- readRDS("../extract/record.layout.rds")
codebook <- readRDS("../data/codebook.rds")
variables <- unique(codebook[, "vname"])

weightsname <- "wtper"
vname <- "sex"
getweights(weightsname)
getvariable(vname)
getcodebook(vname)
tablew("sex")

tabulate.core(c("sex", "voter"), "wtper")
getvariable("voter")

tabulate.core(c("sex", "voter"), "wtper")
