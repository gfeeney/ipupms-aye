# plot.scripts.R - JF - 08-Jan-2015
# Objective: Make some plots

rm(list=ls())
source("../../processing/Rfunctions2/getvariable.R")
source("../../processing/Rfunctions2/getcodebook.R")
source("../../processing/Rfunctions3/agegroup.R")
source("../../processing/Rfunctions3/draw.horizontalreferencelines.R")
source("../../processing/Rfunctions3/draw.verticalreferencelines.R")
x <- readRDS("metadata/vnames.vdescriptions.rds") #stores RDS file data into x variable