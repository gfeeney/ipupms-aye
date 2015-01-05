codebook.edit <- function(cbin) {
  cbout <- cbin
  rs <- cbout[, "value"] == "NIU (not in universe)"  # "NIU" suffices
  cbout[rs, "value"]     <- "NIU"
  rs <- cbout[, "value"] == "Less than 1 years old"  # "0" suffices
  cbout[rs, "value"]     <- "0"
  rs <- cbout[, "value"] == "Less than 1 year old"   # "0" suffices
  cbout[rs, "value"]     <- "0"
  rs <- cbout[, "value"] == "Household record"       # Shorten
  cbout[rs, "value"]     <- "HHrec"
  cbout <- cbind(cbout, cbout[, "value"])
  colnames(cbout) <- c("vname", "code", "short", "value")
  cbout
}