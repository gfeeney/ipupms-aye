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
cd("tanzania2002")
wname <- "weight"
getweights(wname)
ls()

tablew.core(c("age", "sex"))
age.sex

x <- age.sex[, 1]

getvariable("age")
table(age)
tablew.core("age")
age.frq

agegroup5 <- function(x) {
  n <- ceiling(length(x)/5)
  y <- rep(0, times=n)
  for (i in 1 + 5*0:(n - 2)) {
    print(i)
    y[i] <- sum(x[i + 0:4])
  }
  y
}

agegroup5(x)




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
