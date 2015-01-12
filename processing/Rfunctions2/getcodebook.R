getcodebook <- function(vname, long=FALSE) {
  #  INPUT Variable name
  #  VALUE Codebook for variable; if no codebook provided, it is constructed
  #        from the variable values
  cb <- readRDS("metadata/codebook.rds")
  vcb.exists <- is.element(vname, unique(cb[, "vname"]))  # vname in codebook?
  if (vcb.exists) {
    if (long==FALSE) {
      x <- cb[vname == cb[, "vname"], ][, c("code", "short")]
    } else {
      x <- cb[vname == cb[, "vname"], ][, c("code", "short", "value")]
    }
    rownames(x) <- 1:dim(x)[1]
  }
  if (!vcb.exists) {
    cat(paste("Codebook for \"", vname, '" constructed from codes\n' , sep=""))
#     x <- data.frame(vname=NA)
      codes <- unique(get(vname))
      x <- data.frame(code=codes, short=codes, value=codes)
  }
  x
}
