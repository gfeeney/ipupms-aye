Procedure for census sample data setup

1. Create subdirectory of 'samples' for sample, named by concatenating country name and year, underscore between multiple words of country name.

2. Create 'source' subdirectory of this directory and download *.data.gz and stata.do files to it from IPUMS-I website

3. Open R by double clicking 'setup.script.R'. Step through this script.

4. Open a git bash shell, navigate to sample directory, execute vectorization script.

Procedure for Step 2: working.script2.R

1. Navigate to sample directory ('canada2001'). Copy working.script2 from previous county into this directory.

2. Start R by double-clicking working.script2.R in the file manager (if R is running, stop it first). This ensures that the working directory is correct for the sample. R should open with working.script2.R in the upper left window (if it doesn't, if there are tabs for more scripts/functions, for example, remove them all, close R, and restart it as before.

3. Edit the "samplename <- ..." line to assign the sample name.

4. Click through the "Initial setup" section of the script line by line (Cntl-Home to go to beginning of first line of script, then Cntl-R repeatedly). Observe the response to each instruction in the command line window at lower left. Check that "status()" doesn't give an error message. If any error messages, fix the problem(s) before proceeding.

5. Execute the first line of the "Autogenerate ..." section, observe the output in the window below. This may take a few minutes. Note that the first output line tells you have many variables there are to be processing (144 for canada2001), and that variable names are printed with SN as they are processing, so you have an idea of progress. Watch for errors (in red). If any, fix them before proceeding. You may see an "XLConnect" load messasge in red (not an error). If the last line of output is "Now copy ...", you are ready to proceed.

6. Navigate to the "metadata" subdirectory in your file manager and open the spreadsheet file "variables.metadata.autogenerated.xlsx". IMMEDIATELY, before doing anything else, save it as "variables.metadata.manuallyedited.xlsx" in the same (metadata) directory. Autosize column widths, set right justification for all columns, and save again. Highlight the leftmost cell below the heading row and do Window > Freeze panes to keep the heading row visible as you scroll down the list of variables. Next steps are for editing the variables metadata to provide what can't be automatically generated.

7. If you are not familiar with the spreadsheet, take some time to study it. There is a row for each variable (all "unharmonized" variables for the sample for current work, this might change for other work), and there are columns for various metadata items for the variables. Columns are as follows.

vdescription: Description of the variable
       vname: Name of the variable
	    qref: Questionnaire reference
		unit: Households or persons (only, for now at least)
	  length: Number of characters in the codes ("001" is 3)
	     cat: Is variable categorical or not?
	  ncodes: How many codes occur in the data set?
	   cbook: Is there a codebook (usually, not always)
	   nvals: How many values does the codebook specify (NA if no codebook)
	  mvcode: What code represents a missing value (NA if no code for MV)
	  uvcode: What code represents "not in universe"? (NA if no code for NIU)
	     nfv: Number of filter variables (0 if uvcode = NA)
		disj: Does universe specification require logical disjunction?
       fvar1: Filter variable 1 (blank if none)
	  fvals1: Values fvar1 must have for record to be in universe
	   fvar2: Ditto for filter variable 2
	  fvals2: Ditto for filter variable 2
	     .
		 .
		 .

qref: is intended to point us to the item on the questionnaire from which the variable derives. Some variables don't arise in this way ("number of persons in household may be determined from the dataset, not from a questionnaire item). Others may involve calculations involving two or more variables, in which case put reference to all variables used. Identify household variables by "HHdd" where "dd" is the number of the questionnaire item, with a leading zero if needed. Identify person variables by "Pdd", same rules.

unit: households (HH) or persons (P)? There may be other units, but just these two for now.

cat: Used to decide how to plot frequencies. For categorical variables (housing type, marital status) we use by default) a dot plot and order the categories by the number of cases. For non-categorical variables (number of rooms in dwelling unit, age, number of children ever born) we use a line plot and keep the order of the variable values.

ncodes: How many distinct codes occur in the dataset? This applies to all variables, whether or not there is a codebook. It applies, for example, to "serial", "dwnum", and "wtper". For variables with a codebook, the number of codes may be less than the number of values in the codebook (some values don't occur in the data set), more than the number of values in the codebook (some codes in the data set aren't in the codebook, because the codebook is wrong or because there are "out of range" codes in the dataset, or the same as the number of values in the codebook (no errors and every codebook value occurs in the data set or errors and equality is due to cancellation).

nvals: Number of values in the codebook, if any. See notes on "ncodes".

mvcode: If there is a codebook and it specifies a missing value ("Unknown") code,, what is the code? NA if no code.

uvcode: If there is a codebook and it specifies a code for undefined values "NIU (not in universe)", what is the code? NA if no code.

nfv: Number of filter variables. A "filter variable" is a variable whose values may exclude a household/person from the universe. Education questions, for example, may be asked only for persons over some minimum age. Age is a filter variable for these education variables.

disj: Does universe specification require logical disjunction ("or")? Applicable only when nfv > 1. Most universes can be specified using logical conjunction ("and") only. Children ever born questions, for example, always have two filter variables, age and sex, and a record is in the universe only if age is (say) 12 or over AND sex is female. When universe specification requires logical conjunction only, the information provided by fvar1/fvals1 and fvar2/fvals2 (see below) is all we need to construct the universe. If the universe specification involves disjunction, we need to provide a Boolean expression that defines it directly. There is simple, "short cut" specification method as there is for universes specifiable by conjunction only.

fvar1: The name of the first (only) filter variable, as shown in the "vname" column. Questionnaire design dictates that filter variables precede the variable(s) they filter on the questionnaire.

fvals1: A set of codes for fvar1 such that a record is in the universe of the filtered variable if and only if the filter variable code for the record is in the set. Note that codes for age are specified as ranges (3:98, for example, representing the set that includes integers 3, 4, ..., 98; we needn't worry about character format and leading zeros here), not by inequalities (>= 3), which could result in the inclusion of out of range codes.

fvar2: Same as fvar1 for filter variable 2.

fvals2: Same as fvar1 for filter variable 2.

8. Download the questionnaire and enumerator instructions in .pdf and .txt format, saving in the "source") (NOT the "metadata") directory. Construct the .txt versions by opening the .xml file in the browser, then select all and copy, open your text editor, open a new document, paste into this document, edit out the irrelevant web page lines at the top of the file (NOT the "MINNESOTA POPULATION CENTER ... or "IPUMS International" lines). .txt files because I've found downloading .xml files doesn't work. Use the .pdf if you can read the language, otherwise use the .txt, which provide translation to English.

9. Fill in the "qref" column as best you can, observing the "qref" instructions above. Sometimes the IPUMS International data documentation does not make it clear what the questionnaire reference is. The primary reference is of course the questionnaire When the relation between the questionnaire and the variable name/description is unclear, displaying the codebook (getcodebook("emplstat"),, for example, the variable nmae IN QUOTES) often clears up the confusion. Use NA for variables that don't appear to have a qusetionnaire reference. Use "XXX" for variables that evidently should have a qref but for which you can't figure out what the qref is.

10. Fill in the "cat" column. This can be mostly or entirely be done from the variable names and descriptions. If in doubt, check the codebook. This should be easy and fast (filling in qref is relatively slow and difficult).

11. Put "NA" in the empty cells in the "nvals" column (this could be done automatically but hasn't been yet).

12. For variables for which uvcode is not NA, use questionnaire and codebooks to identify filter variable(s) fvar1, fvar2, ... and corresponding fvals1, fvals2, .... Often there will be a single filter variable or two filter variables, occasionally three or (not yet ...) more. This is the most demanding work of all.

13. Having identified filter variables, if any, for every variable, fill in the "nfv" column, putting "0" if no filter variables.

14. If you found any variables with a universe requiring logical disjunction, so indicate by putting "1" in the "disj" column. Put zeros in all other rows (this can be defaulted, but that hasn't been done yet).

15. Save the manually edited spreadsheet, do "git status", make additions as appropriate, then commmit and push to ipiremote.


