getvariable <- function(vname) {
  need2read <- !(exists(vname, mode="character") | 
                 exists(vname, mode="logical")   |
                 exists(vname, mode="numeric")   )
  if (need2read) {
    x <- readLines(paste("data/", vname, ".gz", sep=""))
    assign(vname, x, pos = .GlobalEnv)
  }
}