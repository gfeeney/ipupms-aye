# parity.distribution.script.R - GF - 08-Jan-2015
# parity.distribution.plot.script.R - GF - 08-Jan-2014
# Objective: Develop routine for plotting parity distribution for for age groups of women

rm(list=ls())
source("processing/Rfunctions2/getvariable.R")
source("processing/Rfunctions2/getcodebook.R")
source("processing/Rfunctions3/agegroup.R")
source("processing/Rfunctions3/draw.horizontalreferencelines.R")
source("processing/Rfunctions3/draw.verticalreferencelines.R")
x <- readRDS("metadata/variableindex.rds")
setwd("samples/bolivia2001")
getvariable("chborn")
ceb <- chborn
rm(chborn)
getvariable("sex")
getvariable("age")
agen <- as.numeric(age)
unv <- sex == "2" & agen >= 15 & agen <= 98
age.ceb <- table(age[unv], ceb[unv])
ceb4549 <- age.group(age.ceb, 45:49)
y2 <- ceb4549[1:19]     # Exclude CEB MV
x <- as.numeric(names(y2))
y1 <- round(y2/sum(y2), 4)

plot(x, y1)  # Basic plot
plot(x, y1, xlab="Children Ever Born", ylab="Number of Women")  # Add axis labels
plot(x, y1, xlab="Children Ever Born", ylab="Number of Women", pch=16)  # Change plo mark
plot(x, y1, xlab="Children Ever Born", ylab="Number of Women", pch=16, cex=1.25)  # Make marks bigger
lines(x, y1)  # Add connecting lines
draw.horizontalreferencelines(0.02*0:4, xlim=c(-1, 20))  # Add horizontal reference lines
draw.verticalreferencelines(5*0:3, ylim=c(-100, 2500))  # Add vertical reference lines
yat <- round((500*0:3)/sum(y1), 3)
axis(4, at=yat, labels=yat)
# With this approach we can't control tick mark positions, so we do it differently

# Plot specifications
xlab <- "Children Evern Born"
xlim <- c(0, 16)       # Set limits of horizontal (x) axis
xaxt <- "n"            # Suppress plotting of x axis
xatv <- 5*0:3          # Specify tick mark values
xaxs <- "r"            # Specify padding of plot area
ylab <- "Number of Women"
ylim <- c(0, 0.16)
yaxt <- "n"
yatv <- 0.05*0:3
yaxs <- "r"

# Build plot step by step
pdf("figure1.pdf", width=5, height=5, pointsize=8)
par(mar=c(4, 4, 4, 4))
plot(xlim, ylim, type="n", 
     xlab="", xaxt=xaxt, xaxs=xaxs,
     ylab="", yaxt=yaxt, yaxs=yaxs)
draw.verticalreferencelines(5*0:3, ylim)
draw.horizontalreferencelines(0.05*0:3, xlim)
axis(1, at=xatv)  # draw bottom x axis
mtext("Number of Children Ever Born", 1, line=1)
axis(2, at=yatv)  # draw left y axis
mtext("Proportion of Women", 2, line=2.5)
axis(3, at=xatv)  # draw top x axis (no label)
axis(4, at=yatv, labels=round(xatv * sum(y2), 0))  # draw right y axis
mtext("Number of Women", 4, line=2.5)

# Plot points
points(x, y1, pch=16, cex=1.25)
lines(x, y1)
dev.off()

sum(y2 * x)/sum(y2)

getwd()
x <- readRDS("../../metadata/variableindex.rds")
rs <- "chborn" == x[, "vname"]
x[rs, ]
  