# age.ceb.create1.R - GF - 08-Jan-2015
# Tabulate age by ceb for countries that have ceb variable (excludes
# countries where we need to derive it from more detailed variables)

rm(list=ls())
basepath <- getwd()
setwd(basepath)

# Source functions
source("../Rfunctions2/getvariable.R")
source("../Rfunctions2/getcodebook.R")

# Get list of samples with ceb ("chborn")
x <- readRDS("../../metadata/variableindex.rds")
rs <- "chborn" == x[, "vname"]
y <- x[rs, ]
samples <- as.character(y[, "sample"])
samples <- setdiff(samples, c("israel1995", "malawi2008"))
# israel1996 has grouped ages, malawi2008 has month and year of birth, no age

# Make tables
i <- 3  # For testing only
cat(paste("Samples to process: ", length(samples), "\n", sep=""))
for (i in 1:length(samples)) {
  cat(paste(formatC(i, width=2, flag="0"), ": ", samples[i], " ...\n", sep=""))
  filepath <- paste("../../samples/", samples[i], "/", sep="")
  setwd(filepath)
  getvariable("age")
  getvariable("sex")
  getvariable("chborn")
  ceb <- chborn
  rm(chborn)
  agen <- as.numeric(age)
  unv <- sex == "2" & agen >= 15 & agen <= 89
  age.ceb <- table(age[unv], ceb[unv])
  if (!file.exists("tables")) {
    dir.create("tables")
  }
  saveRDS(age.ceb, "tables/age.ceb.rds")
  rm(age, sex, ceb)
  setwd(basepath)
}
