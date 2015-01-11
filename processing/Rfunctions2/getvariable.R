getvariable <- function(vname, verbose=FALSE) {
  if (!exists(vname, mode="character")) {
    if (verbose == TRUE) {
      cat("getvariable: Getting \"", vname, "\" ...\n", sep="")
    }
    x <- readLines(paste("data/", vname, ".gz", sep=""))
    assign(vname, x, pos = .GlobalEnv)
  }
}