tablew.core <- function(vnames, weightsname) {
  # Input: Character vector of variables names, same of weightsname
  # Value: Tabualtion
  # Requires: variables and weights in workspace
  
  # Get variable codes, short values and dims from codebook [CORE]
  codes   <- list()
  values  <- list()
  dims    <- numeric(0)
  for (i in 1:length(vnames)) {
    codebook    <- get(paste(vnames[i],".cb", sep=""))
    codes[[i]]  <- codebook[, "code"]
    values[[i]] <- codebook[, "short"]
    dims        <- c(dims, length(codes[[i]]))
  }
  names(codes)  <- vnames
  names(values) <- vnames
  
  # Construct zero-initialized tabulation-as-vector [CORE]
  groups <- codes[[1]]
  if (length(codes) >= 2) {
    for (i in 2:length(codes)) {
      groups <- as.vector(outer(groups, codes[[i]], FUN="paste", sep=""))    
    }
  }
  tav <- rep(0, times=length(groups))
  names(tav) <- groups
  
  # Create compound variable for tabulation [CORE]
  cat("tablew: Creating compound variable for tabulation ...\n")
  cvft <- get(vnames[1])
  if (length(vnames) >= 2) {
    for (i in 2:length(vnames)) {
      cvft <- paste(cvft, get(vnames[i]), sep="")
    }
  }
  
  # Produce and return cross-tabulation [CORE]
  cat("tablew: Tabulating ...\n")
  weights <- get(weightsname)
  tav.nz <- rowsum(get(weightsname), cvft)[, 1]
  tav[names(tav.nz)] <- tav.nz
  x <- array(tav, dim=dims, dimnames=values)
  x
  
}
