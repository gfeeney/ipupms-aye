agegroup5 <- function(x) {
  #   Arg: single year age distribution with open-ended group
  # Value: Five year group age distribution with open-ended group
  n <- floor(length(x)/5)
  first <- 1:(5*n)
  last  <- (5*n + 1):length(x)
  y <- matrix(x[first], ncol=5, byrow=TRUE)
  rownames(y) <- paste(formatC(0 + 5*(0:(n - 1)), width=2, flag="0"),
                       formatC(4 + 5*(0:(n - 1)), width=2, flag="0"),
                       sep="-")
  rownames(y)[1:2] <- c(" 0-4 ", " 5-9 ")
  colnames(y) <- 0:4
  z <- apply(y, 1, FUN="sum")
  z <- c(z, sum(x[last]))
  names(z)[length(z)] <- paste(" ", 5*n, "+", sep="")
  z
}