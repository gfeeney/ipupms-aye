draw.verticalreferencelines <- function(xvalues, ylim, grayvalue=0.75) {
  y1 <- ylim[1] - (ylim[2] - ylim[1]) * 0.04
  y2 <- ylim[2] + (ylim[2] - ylim[1]) * 0.04
  for (i in 1:length(xvalues)) {
    x <- xvalues[i]
    lines(c(x, x), c(y1, y2), col=gray(grayvalue))
  }
}