# parity.distribution.script.R - GF - 08-Jan-2015

# Objective: Develop routine for plotting parity distribution for for age groups of women

# First Issues: What variables are available? If CEB direct, great. If not, must construct it

source("../../processing/Rfunctions2/getvariable.R")
source("../../processing/Rfunctions2/getcodebook.R")
x <- readRDS("metadata/vnames.vdescriptions.rds")
# No data for argentina2010, try next sample
