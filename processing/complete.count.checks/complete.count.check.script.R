# Complete.count.check.script.R - GF - 09-Jan-2015

rm(list=ls())  # setwd("../../processing/complete.count.check.R") getwd()
source("../Rfunctions2/getvariable.R")
source("../Rfunctions2/getcodebook.R")
source("../tablew/tablew.core.R")

samplename <- "tanzania2002"
setwd(paste("../../samples/", samplename, "/", sep=""))
x <- readRDS("metadata/vnames.vdescriptions.rds")

# Fix variable name problem, prefixes are there
vnameprefix <- "tz02a_"
vnames <- dir("data")
cs <- vnameprefix == substr(vnames, 1, 6)
vnames <- vnames[cs]
vnamesnew <- substr(vnames, 7, nchar(vnames))
setwd("data")
for (i in 1:length(vnames)) {
  file.rename(vnames[i], vnamesnew[i])
}
setwd("../")
x[cs, "vnames"] <- vnamesnew
saveRDS(x, "metadata/vnames.vdescriptions.rds")
x <- readRDS("metadata/vnames.vdescriptions.rds")
x <- x[, 1:2]
x[cs, "vname"] <- vnamesnew 

getwd()



getvariable("tz02a_urban")
ls()
urban <- tz02a_urban
table(urban)
#       1       2 
# 2250700 1482035 
getcodebook("tz02a_urban")
c(26500042, 7943561)
x <- matrix(0, nrow=2, ncol=2)
colnames(x) <- c("Rural", "Urban")
rownames(x) <- c("IPUMS-I", "Published")
x[1, ] <- table(urban)
x[2, ] <- c(26500042, 7943561)

x
#              Rural   Urban
# IPUMS-I    2250700 1482035
# Published 26500042 7943561



getvariable("wtper")
wtper[1:100]
unique(wtper)
