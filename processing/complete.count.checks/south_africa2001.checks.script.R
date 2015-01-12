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
mean(as.numeric(weights))
weight <- as.numeric(wtper)/1000000
saveRDS(weight, "data/weight.rds")
weight <- readRDS("data/weight.rds")
unique(weight)

wname <- "weight"
tablew.core("sex")
sex.frq
sum(sex.frq)  # 44,768,684
# Cf. http://www.statssa.gov.za/census01/html/default.asp
# 44,819,778
44768684/44819778  # 0.99886 Sample includes collective dwellings.
# Why the discrepancy? Shouldn't the numbers match morre closely? weights show
# 7 digits. Experiment: Inflate weight by 44819778/44768684 and redo
weight <- weight * 44819778/44768684
unique(weight)

tablew.core("sex")
sex.frq
sum(sex.frq)  # 44,819,778 Now we have an exact match

# For this initial comparison, I'll use the weights that give a total that agrees
# with the published total
mean(weight)  # 12.03004

# Prevalence of disability in South Africa (Census 2001), Report No. 03-02-44 (2001), 2005
getcodebook("raceh")
getvariable("disab")
getvariable("sex")
getvariable("raceh")
tablew.core(c("disab", "raceh"))
disab.raceh

getvariable("dssight")
getvariable("dshear")
getvariable("dscomm")
getvariable("dsphys")
getvariable("disment")  # Inconsistent variable names
getvariable("disemot")  # Inconsistent variable names
disabled <- dssight == "1" | dshear == "1" | dscomm == "1" | dsphys == "1" | disment == "1" | disemot == "1"
disabled <- as.character(as.numeric(disabled))
tablew.core(c("raceh", "sex", "disabled"))
x <- as.data.frame(raceh.sex.disabled[, , 1])
library(XLConnect)
wb <- loadWorkbook("../../processing/complete.count.checks/south_africa2001.disability.xls")
#writeWorksheet(wb, x, sheet="south_africa2001", startRow=3, startCol=5, header=TRUE, rownames=0)
saveWorkbook(wb)

tablew.core(c("raceh", "sex"))
raceh.sex
x <- as.data.frame(raceh.sex)
wb <- loadWorkbook("../../processing/complete.count.checks/south_africa2001.disability.xls")
#writeWorksheet(wb, x, sheet="south_africa2001", startRow=20, startCol=5, header=TRUE, rownames=0)
saveWorkbook(wb)


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

ls()
getvariable("disabled")

