getvariable <- function(vname) {
  if (!exists(vname, mode="character")) {
    cat("getvariable: Getting \"", vname, "\" ...\n", sep="")
    x <- readLines(paste("data/", vname, ".gz", sep=""))
    assign(vname, x, pos = .GlobalEnv)
  }
}