# parity.distribution.script.R - GF - 08-Jan-2015
# parity.distribution.plot.script.R - GF - 08-Jan-2014
# Objective: Develop routine for plotting parity distribution for for age groups of women

rm(list=ls())
source("../../processing/Rfunctions2/getvariable.R")
source("../../processing/Rfunctions2/getcodebook.R")
source("../../processing/Rfunctions3/agegroup.R")
source("../../processing/Rfunctions3/draw.horizontalreferencelines.R")
source("../../processing/Rfunctions3/draw.verticalreferencelines.R")
x <- readRDS("metadata/vnames.vdescriptions.rds")
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
y1 <- y2/sum(y2)


plot(x, y1)  # Basic plot
plot(x, y1, xlab="Children Ever Born", ylab="Number of Women")  # Add axis labels
plot(x, y1, xlab="Children Ever Born", ylab="Number of Women", pch=16)  # Change plo mark
plot(x, y1, xlab="Children Ever Born", ylab="Number of Women", pch=16, cex=1.25)  # Make marks bigger
lines(x, y1)  # Add connecting lines

# With this approach we can't control tick mark positions, so we do it differently

# Plot specifications
xlab <- "Numer of Children Ever Born"
  xlim <- c(0, 15)       # Set limits of horizontal (x) axis
xaxt <- "n"            # Suppress plotting of x axis
xatv <- 5*0:3          # Specify tick mark values
xaxs <- "r"            # Specify padding of plot area
ylab1 <- "Proportion of Women"
ylab2 <- "Number of Women"
ylim <- c(0, 0.15)
yaxt <- "n"
yatv <- 0.05*1:3
yaxs <- "r"

# Build plot step by step
samplename <- "bolivia2001"
filename <- paste("cebplot.", samplename, ".pdf", sep="")
pdf(file=filename, width=5, height=5, pointsize=8)
par(mar=c(4, 4, 4, 4))  # bottom, left, top, right 
plot(xlim, ylim, type="n", 
     xlab="", xaxt=xaxt, xaxs=xaxs,
     ylab="", yaxt=yaxt, yaxs=yaxs)
draw.verticalreferencelines(5*0:3, ylim)
draw.horizontalreferencelines(0.05*0:3, xlim)
axis(1, at=xatv)     # Draw bottom x scale
mtext(xlab, 1, 2.5)  # Label bottom axis
axis(2, at=yatv)     # Draw left y scale
mtext(ylab1, 2, 2.5) # Label left axis
axis(3, at=xatv)     # Draw top x scale (no label)
axis(4, at=yatv, labels=round(yatv * sum(y2), 0))  # Draw right y scale
mtext(ylab2, side=4, 2.5)                          # Label right axis
points(x, y1, pch=16, cex=1.25)                    # Plot ceb distribution points
lines(x, y1)                                       # Draw lines
year <- substr(samplename, nchar(samplename)-3, nchar(samplename))  # Country Year label
country <- substr(samplename, 1, nchar(samplename) - 4)
substr(country, 1, 1) <- toupper(substr(country, 1, 1))
text(0.25, 0.005, paste(country, year), adj=0, cex=1.5)
dev.off()

# Plot points
points(x, y1, pch=16, cex=1.25)
lines(x, y1)

# But to do this efficiently for all countries for which CEB is available we
# need to make the tables for all countries. For this we need to know what countries
# have CEB, and for which ones we need to calculate it. This is a good bit of work.
# First step is to cfreate an index of variables available in all samples.

