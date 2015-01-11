tablew.core <- function(vnames, wname="weight", verbose=FALSE) {
  # Input: Character vector of variables names, same of weightsname
  # Value: Tabualtion
  # Requires: variables and weights in workspace
  
  # CORE1: Weight vector, variable vectors, variable codes, short values, and dims
  getweights(wname)
  codes   <- list()
  values  <- list()
  dims    <- numeric(0)
  for (i in 1:length(vnames)) {
    getvariable(vnames[i])
    codebook    <- getcodebook(vnames[i])
    codes[[i]]  <- codebook[, "code"]
    values[[i]] <- codebook[, "short"]
    dims        <- c(dims, length(codes[[i]]))
  }
  names(codes)  <- vnames
  names(values) <- vnames
  
  # CORE2: Tabulation engine
  cvft <- get(vnames[1])
  if (length(vnames) >= 2) {
    for (i in 2:length(vnames)) {
      cvft <- paste(cvft, get(vnames[i]), sep="")
    }
  }
  tav.nz <- rowsum(getweights(wname), cvft)[, 1]
  
  # CORE3: Dropped dimension values fix
  groups <- codes[[1]]
  if (length(codes) >= 2) {
    for (i in 2:length(codes)) {
      groups <- as.vector(outer(groups, codes[[i]], FUN="paste", sep=""))    
    }
  }
  tav <- rep(0, times=length(groups))
  names(tav) <- groups
  
  # Table as n-dimensional array
  tav[names(tav.nz)] <- tav.nz
  x <- array(tav, dim=dims, dimnames=values)
  
  # Name and assign
  tablename <- paste(vnames, collapse=".")
  if (length(vnames) == 1) {
    tablename <- paste(tablename, ".frq", sep="")
  }
  assign(tablename, x, envir=globalenv())
  cat(paste("tablew: \"", tablename, "\" created ...\n", sep=""))
}
