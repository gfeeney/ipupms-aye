variable.metadata.autocreate <- function(vname) {
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
  x <- getcodebook(vname)                # Is there a codebook?
  if (!is.na(x[1, 1])) {
    cbook <- "Yes"
  } else {
    cbook <- "No"
  }
  nvals  <- NA                           # Initialize nvals, uvcode, mvcode to NA
  uvcode <- "NA"
  mvcode <- "NA"
  if (cbook == "Yes") {                  
    nvals  <- dim(x)[1]                               # nvals - Number of values in codebook
    if (is.element("Unknown", x[, "short"])) {
      mvcode <- x["Unknown" == x[, "short"], "code"]  # mvcode if "Unknown" (note initialization to NA)
    }
    if (is.element("NIU", x[, "short"])) {
      uvcode <- x["NIU" == x[, "short"], "code"]      # uvcode if "NIU" (note initialization to NA)
    }
  }
  list(vname=vname, unit=unit, length=length, ncodes=ncodes, cbook=cbook, nvals=nvals, mvcode=mvcode, uvcode=uvcode)
}

