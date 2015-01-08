# parity.distribution.script.R - GF - 08-Jan-2015

# Objective: Develop routine for plotting parity distribution for for age groups of women

# First Issues: What variables are available? If CEB direct, great. If not, must construct it

source("../../processing/Rfunctions2/getvariable.R")
source("../../processing/Rfunctions2/getcodebook.R")
x <- readRDS("metadata/vnames.vdescriptions.rds")
x[53, ]
vname                 vdescription
53 chborn Number of children ever born
getvariable("chborn")
ceb.frq <- table(chborn)
chborn
#     0      1      2      3      4      5      6      7      9 
# 36074  13222  33212  27358  11778   5732   2752   2825 193607 
# Truncation is MUCH to early, severe information loss. This will
# be apparent from plot. MV?
getcodebook("chborn")
# No. Now code for plot
x <- as.numeric(names(ceb.frq))
y <- as.vector(ceb.frq)/1000  # Number of women in thousands (000)
plot(x, y)
plot(x, y, xlab="Children Ever Born", ylab="Number of Women (000)")             # Add axis labels
plot(x, y, xlab="Children Ever Born", xaxp=c(0, 9, 9), ylab="Number of Women")  # Change x tick marks
plot(x, y, xlab="Children Ever Born", xaxp=c(0, 9, 9), ylab="Number of Women",  # Change plot mark'
     pch=16)
plot(x, y, xlab="Children Ever Born", xaxp=c(0, 9, 9), ylab="Number of Women",  # Make marks bigger
     pch=16, cex=1.25)
lines(x, y)  #                                                                  # Add connecting lines
# Would be nice to have second axis at right showing proportion
# And second plot to show detail for 0-8, obscured by large 9+
plot(x, y, xlab="Children Ever Born", xaxp=c(0, 9, 9), 
     ylab="Number of Women", ylim=c(0, 50), pch=16, cex=1.25)
lines(x, y)  #                                                                  # Add connecting lines
# Ah, but we have a problem, frequency shows 0 women with 8 CEB; makes
# no sense, seems problem in data, but odd, what could explain? Continue
# this example with another country where we don't have this problem,
# which is surprisingly difficult to deal with.