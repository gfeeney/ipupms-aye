getcodebook <- function(vname, long=FALSE) {
  #  INPUT Variable name
  #  VALUE Codebook for variable; if no codebook provided, it is constructed
  #        from the variable values
  cb <- readRDS("metadata/codebook.rds")
  vcb.exists <- is.element(vname, unique(cb[, "vname"]))
  if (vcb.exists) {
    if (long==FALSE) {
      x <- cb[vname == cb[, "vname"], ][, c("code", "short")]
    } else {
      x <- cb[vname == cb[, "vname"], ][, c("code", "short", "value")]
    }
    rownames(x) <- 1:dim(x)[1]
  }
  if (!vcb.exists) {
    x <- data.frame(vname=NA)
  }
  x
}
