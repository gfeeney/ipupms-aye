getweights <- function(wname, verbose=FALSE) {
  #   Args: Name of weight, quoted
  # Value: NULL
  # Result: 'weight' variable assigned in workspace
  if (exists(wname, mode="numeric")) {
    x <- get(wname)
  } else {
    x <- readRDS(paste("data/", wname, ".rds", sep=""))
  }
  assign(wname, x, pos = .GlobalEnv)
}