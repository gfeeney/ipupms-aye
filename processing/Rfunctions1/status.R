status <- function(basedir="C:/Users/gfeeney/Desktop/ipums.aye") {
  if (!exists("samplename")) {
    cat("Please assign samplename\n")
  } else {
    cat(paste(" samplename: ", samplename, "\n", sep=""))
    cat(paste("Working dir: ", getwd(), "\n", sep=""))
  }
  x <- strsplit(getwd(), split="/")[[1]]
  if (x[length(x)] != samplename) {
    stop(">>>>>> STOP! samplename must match working directory")
  }
}