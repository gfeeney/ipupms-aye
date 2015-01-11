# Complete.count.check.script.R - GF - 09-Jan-2015

rm(list=ls())
basedir <- "C:/Users/gfeeney/Desktop/ipums.aye/"
setwd(paste(basedir, "processing/complete.count.checks/", sep=""))
cd <- function(samplename) {
  setwd(paste(basedir, "samples/", samplename, "/", sep=""))
  cat(paste("Working directory is ", getwd(), sep=""))
}
source("../../processing/Rfunctions2/getvariable.R")
source("../../processing/Rfunctions2/getcodebook.R")
source("../../processing/tablew/tablew.core.R")
source("../../processing/tablew/getweights.R")
cd("south_africa2001")
vnames.vdescriptions <- readRDS("metadata/vnames.vdescriptions.rds")

getvariable("wtper")
length(wtper)
weights <- unique(wtper)
length(weights)  # 88
mean(as.numeric(weights))  # 1277.841
weight <- as.numeric(wtper)/100
saveRDS(weight, "data/weight.rds")
weight <- readRDS("data/weight.rds")
wname <- "weight"
tablew.core("sex")


tablew.core(c("age", "sex"))
age.sex
apply(age.sex, 2, FUN="agegroup5")

table(urban)
tablew.core("urban")


x <- matrix(0, nrow=2, ncol=2)
colnames(x) <- c("Rural", "Urban")
rownames(x) <- c("IPUMS-I", "Published")
x[1, ] <- tablew.core("urban")
x[2, ] <- c(26500042, 7943561)
y <- cbind(x, apply(x, 1, FUN="sum"))
colnames(y)[3] <- "Total"
y[1, ]/y[2, ]



rm(list=ls())
getwd()
wname <- "wtper"
vnames <- "urban"
getvariable("age")
getvariable("sex")
getvariable("urban")
table(age)
table(sex)
table(urban)
table(sex, urban)
table(age, sex)
