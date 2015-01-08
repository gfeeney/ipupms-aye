draw.horizontalreferencelines <- function(yvalues, xlim, grayvalue=0.75) {
  x1 <- xlim[1] - (xlim[2] - xlim[1]) * 0.04
  x2 <- xlim[2] + (xlim[2] - xlim[1]) * 0.04
  for (i in 1:length(yvalues)) {
    y <- yvalues[i]
    lines(c(x1, x2), c(y, y), col=gray(grayvalue))
  }
}