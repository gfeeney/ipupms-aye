tablew <- function(..., 
                   cname=countryname, 
                   weights=weight, 
                   universe=rep(TRUE,times=length(weights))) {
  
  #    Args: vnames, name(s) of variables of tabulation as character vector;
  #          named variables must be present in workspace
  #          weights, numeric vector of weights
  #          dataset name
  # Result: n-dimensional array with dimnames assigned in workspace
  # Requires: getweights(), getvariable()
  
  # Get names of variables of tabulation [ADD 4]
  variable.list <- as.list(substitute(list(...)))[-1L]
  vnames  <- character(0)
  for (i in 1:length(variable.list)) {
    vnames <- c(vnames, as.character(variable.list[[i]]))
  }
  
  # Get weight and variables [ADD 1]
  getweights("weight")
  for (i in 1:length(vnames)) {
    getvariable(vnames[i])
    getcodebook(vnames[i])
  }

  # Get variable codes, short values and dims from codebook [CORE]
  codes   <- list()
  values  <- list()
  dims    <- numeric(0)
  for (i in 1:length(vnames)) {
    codebook    <- get(paste(vnames[i],".cb", sep=""))
    codes[[i]]  <- codebook[, 1]
    values[[i]] <- codebook[, 2]
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
  
  # Restrict variables of tabulation and weights to universe [ADD 3]
  if (!all(universe)) {
    cat("tablew: Restricting variables to universe ...\n")
    for (i in 1:length(vnames)) {
      x <- get(vnames[i])[universe]
      assign(vnames[i], x)  # NO global enviroment here!
    }
    weights <- weight[universe]  # tricky!
  }

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
   tav.nz <- rowsum(weights, cvft)[, 1]
   tav[names(tav.nz)] <- tav.nz
   x <- array(tav, dim=dims, dimnames=values)
  
  # Create table name, assign result to name in global environment [ADD 2]
  table.name <- paste(vnames, collapse=".")
  if (length(vnames) == 1) {
    table.name <- paste(table.name, ".frq", sep="")
  }
  if (!all(universe)) {
    table.name <- paste(table.name, ".unv.", deparse(substitute(universe)), sep="")
  }
  assign(table.name, x, envir=globalenv())
  cat(paste("tablew: \"", table.name, "\" created ...\n", sep=""))

}