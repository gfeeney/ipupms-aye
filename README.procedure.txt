Procedure for census sample data setup

1. Create subdirectory of 'samples' for sample, named by concatenating country name and year, underscore between multiple words of country name.

2. Create 'source' subdirectory of this directory and download *.data.gz and stata.do files to it from IPUMS-I website

3. Open R by double clicking 'setup.script.R'. Step through this script.

4. Open a git bash shell, navigate to sample directory, execute vectorization script.

FOR CREATING VARIABLES METADATA

1. Navigate to ipums.aye directory, start R by double clicking .Rdata. Working directory will be ipums.aye

2. In R, open an existing working script, e.g., the one you used for the last country. I'm going to do bolivia2001. I last did belarus1999. So I open

ipums.aye/samples/belarus1999/working.script.R

and (immediately!) save it as

ipums.aye/samples/bolivia2001/working.script.R

(immediately so I don't bash the belarus1999 script)

3. Edit the script by changing the samplename to "bolivia2001'. First part of script now looks like this.

# Initial setup
rm(list=ls())
source("processing/Rfunctions1/codebook.edit.R")
source("processing/Rfunctions1/initialize.R")
source("processing/Rfunctions1/status.R")
source("processing/Rfunctions2/getvariable.R")
source("processing/Rfunctions2/getcodebook.R")
samplename <- "bolivia2001"
initialize(samplename)
status()

Step through this code (Cntrl-R). Note what the last two lines return. And look at the code for 'status' in Rfunctions1.

4. Go to the next block of code, which auto generates an initial variables.metadata spreadsheet. Looks like ethis.

# Autogenerate initial version of variables.metadata spreadsheet
source("../../processing/Rfunctions1/variables.metadata.autogenerate.R")
variables.metadata.autogenerate()
variables <- readRDS("metadata/vnames.vdescriptions.rds")
vnames <- variables[, "vname"]
codebook <- readRDS("metadata/codebook.rds")
dim(codebook)  # 1304    4
codebook <- codebook.edit(codebook)

Step through this code.

5. Open the spreadsheet created ...

