codebook.edit <- function(codebook.in=codebook) {
  vnames <- unique(codebook.in[, "vname"])
  rs     <- !(vnames == "cntry" | vnames == "year" | vnames == "sample")
  vnames <- vnames[rs]
  codebook.out <- NULL
  cat(paste(length(vnames), " variables", sep=""))
  for (i in 1:length(vnames)) {
    cat(paste(formatC(i, width=3, flag="0"), ": ", vnames[i], " ...\n", sep=""))
    vcb <- codebook.in[vnames[i] == codebook.in[, "vname"], ]
    rs <- vcb[, "value"] == "NIU (not in universe)"  # "NIU" suffices
    vcb[rs, "value"]     <- "NIU"
    rs <- vcb[, "value"] == "Less than 1 years old"  # "0" suffices
    vcb[rs, "value"]     <- "0"
    rs <- vcb[, "value"] == "Less than 1 year old"   # "0" suffices
    vcb[rs, "value"]     <- "0"
    rs <- vcb[, "value"] == "Household record"       # Shorten
    vcb[rs, "value"]     <- "HHrec"
    codebook.out <- rbind(codebook.out, vcb)
  }
  codebook.out
}