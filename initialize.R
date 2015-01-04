initialize <- function(samplename, basedir="C:/Users/gfeeney/Desktop/ipums.aye/") {
  setwd(paste(basedir,"samples/", samplename, "/", sep=""))
  cat(paste("Working directory is ", getwd(), "\n", sep=""))
}