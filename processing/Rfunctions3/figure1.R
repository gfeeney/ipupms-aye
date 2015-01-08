# figure1.R - GF - 19-Dec-2014

rm(list=ls())
table1 <- readRDS("table1.rds")

# Data to be plotted
x1 <- table1[, "time"]
y1 <- table1[, "pop1t"]/1000
y2 <- table1[, "pop2t"]/1000
y3 <- table1[, "pop3t"]/1000

# Plot specifications
xlab <- "Year"
xlim <- c(1780, 2030)
xaxt <- "n"
xatv <- 1800 + 50*0:5
xaxs <- "i"            # Eliminate padding of plot area

ylab <- "Millions of persons"
ylim <- c(0, 340)
yaxt <- "n"
yatv <- 100*0:5
yaxs <- "i"

# Create plot as .pdf file
pdf(file="figure1.pdf", width=5, height=5, pointsize=8)
  
# Draw plot frame
plot(xlim, ylim, type="n", 
     xlab=xlab, xaxt=xaxt, xaxs=xaxs,
     ylab=ylab, yaxt=yaxt, yaxs=yaxs)
source("Rfunctions/draw.verticalreferencelines.R")
source("Rfunctions/draw.horizontalreferencelines.R")
draw.verticalreferencelines(1800 + 50*0:4, ylim)
draw.horizontalreferencelines(100*1:3, xlim)
axis(1, at=xatv)  # draw bottom x axis
axis(2, at=yatv)  # draw left y axis
axis(4, at=yatv)  # draw top x axis
axis(3, at=xatv)  # draw right y axis
  
# Plot points
points(x1, y1, pch=16, cex=1)
points(x1, y2, pch=1, bg="white", cex=1.75)
points(x1, y3, pch=21, bg="gray", cex=1)

# Draw legend
legend <- c("Excluding Indians and Indian Territories",
            "Excluding Alaska and Hawaii",
            "Current population definition"
            )
legend(1800, 300, 
       bg="white",         # White background overwrites gray cross hatch
       bty="y",            # no box around legend
       legend,             # legend text
       pch=c(16, 1, 21),  # plot symbols, corresponding to pch in points
       pt.bg=c(NULL, "gray", NULL),  # background color for points, corresponding to bg
       cex=0.85)          # size of legend text relative to currend par("cex")

dev.off()
  
