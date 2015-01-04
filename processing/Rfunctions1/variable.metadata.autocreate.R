variable.metadata.create <- function(vname) {
  getvariable(vname)             # Get variable
  getvariable("serial")          # Get household serial number
  nhh <- length(unique(serial))  # Get number of households in dataset
  #                              # Get unit, household or person
  if (nhh == length(unique(paste(serial, get(vname), sep="")))) {
    unit <- "HH"
  } else{
    unit <- "P"
  }
  length <- max(nchar(get(vname)))       # Get length of codes
  ncodes  <- length(unique(get(vname)))  # Get number of unique codes in data set                           
  x <- getcodebook(vname)                              # Is there a codebook?
  if (!is.na(x[1, 1])) {
    cbook <- "Yes"
  } else {
    cbook <- "No"
  }
  if (cbook == "Yes") {                                # nvals - Number of values in codebook
    nvals <- dim(x)[1]
  } else {
    nvals <- NA
  }
  list(vname=vname, unit=unit, length=length, ncodes=ncodes, cbook=cbook, nvals=nvals)
}


#   cat <- "tocome"  # Categorical variable    - Manual spreadsheet edit: Overwrite "Yes" or "No"
#   mvcode <- NA     # Missing value code      - Manual spreadsheet edit: Overwrite code if any
#   uvcode <- NA     # Undefined value code    - Manual spreadsheet edit: Overwrite code if any
#   fvar1  <- NA     # Filter variable name1   - Manual spreadsheet edit: Overwrite variable name if any
#   fvals1 <- NA     # Filter variable values1 - Manual spreadsheet edit: Overwrite filter variable values
#   fvar2  <- NA     # Filter variable name2   - Manual spreadsheet edit: Overwrite variable name if any
#   fvals2 <- NA     # Filter variable values2 - Manual spreadsheet edit: Overwrite filter variable values
#   fvar3  <- NA     # Filter variable name3   - Manual spreadsheet edit: Overwrite variable name if any
#   fvals3 <- NA     # Filter variable values3 - Manual spreadsheet edit: Overwrite filter variable values
#   fvar4  <- NA     # Filter variable name4   - Manual spreadsheet edit: Overwrite variable name if any
#   fvals4 <- NA     # Filter variable values4 - Manual spreadsheet edit: Overwrite filter variable values