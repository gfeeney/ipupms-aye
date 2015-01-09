# variable.index.create.R - GF - 08-Jan-2015

# pull vnames.vdescriptions for each sample, add column for samplename, merge
# over all samples

samples <- dir("samples")
x <- NULL
for (i in 1:length(samples)) {
  cat(paste(formatC(i, width=2, flag="0"), ": ", samples[i], " ...\n", sep=""))
  y <- readRDS(paste("samples/", samples[i], "/metadata/vnames.vdescriptions.rds", sep=""))
  z <- cbind(y, samples[i])
  z <- z[c(2, 1, 3)]
  x <- rbind(x, z)
}
colnames(x)[3] <- "sample"
y <- x[order(x[, 2]), ]
saveRDS(y, "metadata/variableindex.rds")

x <- readRDS("metadata/variableindex.rds")
rs <- "chborn" == x[, "vname"]
x[rs, ]


# To many renames of variable.descriptions to vnames.vdescriptions, script it
# samples <- dir("samples")
# for (i in 1:length(samples)) {
#   cat(paste(formatC(i, width=2, flag="0"), ": ", samples[i], " ...\n"))
#   setwd(paste("samples/", samples[i], "/metadata/", sep=""))
#   if (!file.exists("vnames.vdescriptions.rds") && file.exists("variable.descriptions.rds")) {
#     file.rename("variable.descriptions.rds", "vnames.vdescriptions.rds")
#   }
#   if (!file.exists("vnames.vdescriptions.rds") & !file.exists("variable.descriptions.rds")) {
#     cat(paste("Neither file exists for ", samples[i], "\n", sep=""))
#   }
#   setwd("../../../")
# }
