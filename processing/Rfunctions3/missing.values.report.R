# missing.values.report.R - GF - 04-Jan-2015

rm(list=ls())
setwd("C:/Users/gfeeney/Desktop/ipums.aye/")
source("processing/Rfunctions2/getvariable.R")
samplename <- "armenia2001"
setwd(paste("samples/", samplename, sep=""))
library(XLConnect)
wb <- loadWorkbook("metadata/variables.metadata.final.xlsx")
vmd <- readWorksheet(wb, sheet="metadata.final", 
                     startRow=1, startCol=1,
                     endRow=61, endCol=19,
                     header=TRUE)
rs <- vmd[, "mvcode"] != "NA"  # row select
vnames  <- vmd[rs, "vname"]
units   <- vmd[rs, "unit"]
lengths <- vmd[rs, "length"]
mvcodes <- vmd[rs, "mvcode"]
uvcodes <- vmd[rs, "uvcode"]

vname <- vnames[1]

vmstats <- function(vname, vmetadata=vmd) {
  getvariable(vname)
  rs <- vname == vmd[, "vname"]
  vdata <- vmetadata[rs, ]
  if (vdata["unit"] == "HH") {
    getvariable("serial")
    len1 <- max(nchar(serial))
    x <- unique(paste(serial, get(vname), sep=""))
    len2 <- max(nchar(x))
    x <- substr(x, len1 + 1, len2)
  } else {
    x <- get(vname)
  }
  xt <- table(x)
  dv 
}




y1 <- y[y[, "unit"] == "HH", ]
vnames <- y1[, "vname"]

vnameline <- function {
  x <- paste(vname, "unit=", )
}


mvr1 <- y1[, c("vname", "unit", "mvcode")]
getvariable("serial")
dv <- numeric(5)
mv <- numeric(5)
mvr <- numeric(5)
for (i in 1:length(vnames)) {
  vname <- vnames[i]
  getvariable(vname)
  v <- substr(unique(paste(serial, get(vname), sep="")), 11, 12)
  vt <- table(v)
  dv[i] <- sum(vt)
  mv[i] <- vt["9"]
  mvr[i] <- round(100*mv[i]/dv[i], 2)
  }
cbind(mvr1, dv, mv, mvr)
  
}


x <- readRDS("metadata/variables.metadata.final.rds")
vnames <- x[!is.na(x[, "mvcode"]), "vname"]
