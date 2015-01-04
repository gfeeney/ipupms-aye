* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    za01a_dwnum     22-27    ///
  byte    za01a_pern      28-29    ///
  byte    za01a_fbig      30-30    ///
  int     za01a_dist      31-33    ///
  byte    za01a_prov      34-34    ///
  byte    za01a_eatype    35-35    ///
  byte    za01a_urban     36-36    ///
  byte    za01a_density   37-37    ///
  byte    za01a_dwtype1   38-39    ///
  byte    za01a_dwtype2   40-41    ///
  byte    za01a_dwmult    42-42    ///
  int     za01a_rooms     43-45    ///
  byte    za01a_sharerm   46-46    ///
  byte    za01a_owner     47-47    ///
  byte    za01a_watpipe   48-48    ///
  byte    za01a_watsrc    49-49    ///
  byte    za01a_watacc    50-51    ///
  byte    za01a_toilet    52-52    ///
  byte    za01a_fuelck    53-53    ///
  byte    za01a_fuelht    54-54    ///
  byte    za01a_fuellt    55-55    ///
  byte    za01a_radio     56-56    ///
  byte    za01a_tv        57-57    ///
  byte    za01a_computer  58-58    ///
  byte    za01a_refrig    59-59    ///
  byte    za01a_phone     60-60    ///
  byte    za01a_cell      61-61    ///
  byte    za01a_phoneac   62-62    ///
  byte    za01a_phonety   63-63    ///
  byte    za01a_garbage   64-64    ///
  byte    za01a_raceh     65-65    ///
  byte    za01a_inch      66-67    ///
  float   za01a_wthh      68-75    ///
  byte    za01a_qdwtype1  76-76    ///
  byte    za01a_qdwtype2  77-77    ///
  byte    za01a_qdwmult   78-78    ///
  byte    za01a_qrooms    79-79    ///
  byte    za01a_qsharerm  80-80    ///
  byte    za01a_qowner    81-81    ///
  byte    za01a_qwatpipe  82-82    ///
  byte    za01a_qwatsrc   83-83    ///
  byte    za01a_qtoilet   84-84    ///
  byte    za01a_qfuelck   85-85    ///
  byte    za01a_qfuelht   86-86    ///
  byte    za01a_qfuellt   87-87    ///
  byte    za01a_qradio    88-88    ///
  byte    za01a_qtv       89-89    ///
  byte    za01a_qcompute  90-90    ///
  byte    za01a_qrefrig   91-91    ///
  byte    za01a_qphone    92-92    ///
  byte    za01a_qcell     93-93    ///
  byte    za01a_qphoneac  94-94    ///
  byte    za01a_qgarbage  95-95    ///
  byte    za01a_mortn     96-96    ///
  int     pernum          97-99    ///
  float   wtper           100-107  ///
  byte    za01a_pernum    108-109  ///
  byte    za01a_dwtype1p  110-111  ///
  int     za01a_pernumo   112-115  ///
  byte    za01a_bmo       116-117  ///
  int     za01a_byr       118-121  ///
  int     za01a_age       122-124  ///
  byte    za01a_sex       125-125  ///
  byte    za01a_relate    126-127  ///
  byte    za01a_marst     128-128  ///
  byte    za01a_sploco    129-130  ///
  byte    za01a_race      131-131  ///
  byte    za01a_lang      132-133  ///
  byte    za01a_relig1    134-135  ///
  byte    za01a_religgr   136-137  ///
  byte    za01a_bornsaf   138-138  ///
  byte    za01a_bplprov   139-139  ///
  int     za01a_bplctry   140-142  ///
  byte    za01a_bplctry2  143-143  ///
  int     za01a_citiz     144-146  ///
  byte    za01a_citizgr   147-147  ///
  byte    za01a_uslres    148-148  ///
  byte    za01a_moved     149-149  ///
  byte    za01a_yrmoved   150-150  ///
  byte    za01a_prvprov   151-152  ///
  byte    za01a_dssight   153-153  ///
  byte    za01a_dshear    154-154  ///
  byte    za01a_dscomm    155-155  ///
  byte    za01a_dsphys    156-156  ///
  byte    za01a_disment   157-157  ///
  byte    za01a_disemot   158-158  ///
  byte    za01a_disab     159-159  ///
  byte    za01a_mothliv   160-160  ///
  byte    za01a_mothloc   161-162  ///
  byte    za01a_fathliv   163-163  ///
  byte    za01a_fathloc   164-165  ///
  byte    za01a_school    166-166  ///
  byte    za01a_schtype   167-167  ///
  byte    za01a_edattan   168-169  ///
  byte    za01a_edattan2  170-170  ///
  byte    za01a_edfield   171-172  ///
  byte    za01a_wrkweek   173-173  ///
  byte    za01a_wrkreasn  174-174  ///
  byte    za01a_wrkseek   175-175  ///
  byte    za01a_wrkavail  176-176  ///
  byte    za01a_empstat   177-177  ///
  byte    za01a_empstat2  178-178  ///
  byte    za01a_empstat3  179-179  ///
  byte    za01a_classwk   180-180  ///
  byte    za01a_ind1      181-182  ///
  int     za01a_ind3      183-185  ///
  byte    za01a_occ1      186-187  ///
  byte    za01a_occ2      188-189  ///
  int     za01a_occ       190-192  ///
  byte    za01a_hrswrk    193-194  ///
  byte    za01a_wrkhere   195-195  ///
  byte    za01a_wrkprov   196-197  ///
  byte    za01a_chborn    198-199  ///
  byte    za01a_bornmal   200-201  ///
  byte    za01a_bornfem   202-203  ///
  byte    za01a_chsurv    204-205  ///
  byte    za01a_survmal   206-207  ///
  byte    za01a_survfem   208-209  ///
  byte    za01a_lstmo     210-211  ///
  int     za01a_lstyr     212-215  ///
  byte    za01a_lsttime   216-217  ///
  byte    za01a_lstage    218-219  ///
  byte    za01a_lstsex    220-220  ///
  byte    za01a_lstlive   221-221  ///
  byte    za01a_travwrk   222-222  ///
  byte    za01a_income    223-224  ///
  byte    za01a_enumplac  225-225  ///
  byte    za01a_enumprov  226-226  ///
  byte    za01a_enum96    227-227  ///
  byte    za01a_bplcitiz  228-228  ///
  byte    za01a_bplusl    229-229  ///
  byte    za01a_bplres96  230-230  ///
  byte    za01a_uslres96  231-232  ///
  byte    za01a_bpl96en   233-233  ///
  float   za01a_wtper     234-241  ///
  byte    za01a_qpernum   242-242  ///
  byte    za01a_qbrthmo   243-243  ///
  byte    za01a_qbrthyr   244-244  ///
  byte    za01a_qage      245-245  ///
  byte    za01a_qsex      246-246  ///
  byte    za01a_qrelate   247-247  ///
  byte    za01a_qmarst    248-248  ///
  byte    za01a_qsploco   249-249  ///
  byte    za01a_qrace     250-250  ///
  byte    za01a_qlang     251-251  ///
  byte    za01a_qrelig    252-252  ///
  byte    za01a_qbornsaf  253-253  ///
  byte    za01a_qbplprov  254-254  ///
  byte    za01a_qbplctry  255-255  ///
  byte    za01a_qcitiz    256-256  ///
  byte    za01a_quslres   257-257  ///
  byte    za01a_quslprov  258-258  ///
  byte    za01a_quslplac  259-259  ///
  byte    za01a_qmoved    260-260  ///
  byte    za01a_qyrmoved  261-261  ///
  byte    za01a_qprvprov  262-262  ///
  byte    za01a_qprvplac  263-263  ///
  byte    za01a_qdssight  264-264  ///
  byte    za01a_qdshear   265-265  ///
  byte    za01a_qdscomm   266-266  ///
  byte    za01a_qdsphys   267-267  ///
  byte    za01a_qdsment   268-268  ///
  byte    za01a_qmothloc  269-269  ///
  byte    za01a_qfathliv  270-270  ///
  byte    za01a_qfathloc  271-271  ///
  byte    za01a_qschool   272-272  ///
  byte    za01a_qschtype  273-273  ///
  byte    za01a_qedattan  274-274  ///
  byte    za01a_qedfield  275-275  ///
  byte    za01a_qwrkweek  276-276  ///
  byte    za01a_qwrkreas  277-277  ///
  byte    za01a_qwrkseek  278-278  ///
  byte    za01a_qwrkavai  279-279  ///
  byte    za01a_qempstat  280-280  ///
  byte    za01a_qind      281-281  ///
  byte    za01a_qocc      282-282  ///
  byte    za01a_qwrkhere  283-283  ///
  byte    za01a_qwrkprov  284-284  ///
  byte    za01a_qwrkplac  285-285  ///
  byte    za01a_qchborn   286-286  ///
  byte    za01a_qbornmal  287-287  ///
  byte    za01a_qbornfem  288-288  ///
  byte    za01a_qchsurv   289-289  ///
  byte    za01a_qsurvmal  290-290  ///
  byte    za01a_qsurvfem  291-291  ///
  byte    za01a_qlstday   292-292  ///
  byte    za01a_qlstmo    293-293  ///
  byte    za01a_qlstyr    294-294  ///
  byte    za01a_qlstsex   295-295  ///
  byte    za01a_qlstliv   296-296  ///
  byte    za01a_qtravwrk  297-297  ///
  byte    za01a_qincome   298-298  ///
  using `"ipumsi_00110.dat"'

replace za01a_wthh     = za01a_wthh     / 1000000
replace wtper          = wtper          / 100
replace za01a_wtper    = za01a_wtper    / 1000000

format serial         %10.0f
format za01a_wthh     %8.6f
format wtper          %8.2f
format za01a_wtper    %8.6f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var za01a_dwnum    `"Dwelling number"'
label var za01a_pern     `"Number of persons in household"'
label var za01a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var za01a_dist     `"District council"'
label var za01a_prov     `"Province code"'
label var za01a_eatype   `"Enumeration area (EA) type"'
label var za01a_urban    `"Urban-rural, 1996 classification"'
label var za01a_density  `"Size and density of locality"'
label var za01a_dwtype1  `"Type of living quarters (comprehensive)"'
label var za01a_dwtype2  `"Type of housing unit or institution"'
label var za01a_dwmult   `"More than one dwelling"'
label var za01a_rooms    `"Number of rooms"'
label var za01a_sharerm  `"Sharing one room"'
label var za01a_owner    `"Tenure status"'
label var za01a_watpipe  `"Access to piped water"'
label var za01a_watsrc   `"Source of water"'
label var za01a_watacc   `"Acess to water"'
label var za01a_toilet   `"Type of toilet facility"'
label var za01a_fuelck   `"Fuel for cooking"'
label var za01a_fuelht   `"Fuel for heating"'
label var za01a_fuellt   `"Source of lighting"'
label var za01a_radio    `"Radio in household"'
label var za01a_tv       `"Television"'
label var za01a_computer `"Computer"'
label var za01a_refrig   `"Refrigerator"'
label var za01a_phone    `"Telephone"'
label var za01a_cell     `"Cell phone"'
label var za01a_phoneac  `"Access to telephone"'
label var za01a_phonety  `"Type of telephone access"'
label var za01a_garbage  `"Refuse disposal"'
label var za01a_raceh    `"Majority race/ethnicity of household"'
label var za01a_inch     `"Annual household income"'
label var za01a_wthh     `"Household weight"'
label var za01a_qdwtype1 `"Flag for type of living quarters (comprehensive)"'
label var za01a_qdwtype2 `"Flag for type of housing unit or institution"'
label var za01a_qdwmult  `"Flag for more than one dwelling"'
label var za01a_qrooms   `"Flag for number of rooms"'
label var za01a_qsharerm `"Flag for sharing one room"'
label var za01a_qowner   `"Flag for tenure status"'
label var za01a_qwatpipe `"Flag for access to piped water"'
label var za01a_qwatsrc  `"Flag for source of water"'
label var za01a_qtoilet  `"Flag for type of toilet facility"'
label var za01a_qfuelck  `"Flag for fuel for cooking"'
label var za01a_qfuelht  `"Flag for fuel for heating"'
label var za01a_qfuellt  `"Flag for source of lighting"'
label var za01a_qradio   `"Flag for radio in household"'
label var za01a_qtv      `"Flag for television"'
label var za01a_qcompute `"Flag for computer"'
label var za01a_qrefrig  `"Flag for refrigerator"'
label var za01a_qphone   `"Flag for telephone"'
label var za01a_qcell    `"Flag for cell phone"'
label var za01a_qphoneac `"Flag for access to telephone"'
label var za01a_qgarbage `"Flag for refuse disposal"'
label var za01a_mortn    `"Number of mortality records in input data"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var za01a_pernum   `"Person number (within household)"'
label var za01a_dwtype1p `"Type of living quarters (comprehensive)"'
label var za01a_pernumo  `"Person number"'
label var za01a_bmo      `"Month of birth"'
label var za01a_byr      `"Year of birth"'
label var za01a_age      `"Age"'
label var za01a_sex      `"Sex"'
label var za01a_relate   `"Relationship to head of household"'
label var za01a_marst    `"Marital status"'
label var za01a_sploco   `"Person number of spouse"'
label var za01a_race     `"Race/ethnicity"'
label var za01a_lang     `"Language"'
label var za01a_relig1   `"Religion"'
label var za01a_religgr  `"Religion (grouped)"'
label var za01a_bornsaf  `"Born in South Africa"'
label var za01a_bplprov  `"Province of birth"'
label var za01a_bplctry  `"Country of birth"'
label var za01a_bplctry2 `"Country of birth (grouped)"'
label var za01a_citiz    `"Citizenship"'
label var za01a_citizgr  `"Citizenship (grouped)"'
label var za01a_uslres   `"Usually live here"'
label var za01a_moved    `"Living in same place five years ago"'
label var za01a_yrmoved  `"Year moved"'
label var za01a_prvprov  `"Province five years ago"'
label var za01a_dssight  `"Disability - sight"'
label var za01a_dshear   `"Disability - hearing"'
label var za01a_dscomm   `"Disability - communication"'
label var za01a_dsphys   `"Disability - physical"'
label var za01a_disment  `"Disability - intellectual"'
label var za01a_disemot  `"Disability - emotional"'
label var za01a_disab    `"Type of disability"'
label var za01a_mothliv  `"Mother alive"'
label var za01a_mothloc  `"Mother's person number in household"'
label var za01a_fathliv  `"Father alive"'
label var za01a_fathloc  `"Father's person number in household"'
label var za01a_school   `"Present school attendance"'
label var za01a_schtype  `"Type of educational institution"'
label var za01a_edattan  `"Level of education"'
label var za01a_edattan2 `"Level of education (grouped)"'
label var za01a_edfield  `"Field of education"'
label var za01a_wrkweek  `"Any work in the seven days before 10 October"'
label var za01a_wrkreasn `"Reason why not working"'
label var za01a_wrkseek  `"Taking active steps to find a job"'
label var za01a_wrkavail `"Availability"'
label var za01a_empstat  `"Employment status (official definition)"'
label var za01a_empstat2 `"Employment status (expanded definition)"'
label var za01a_empstat3 `"Employment status (derived)"'
label var za01a_classwk  `"Class of worker"'
label var za01a_ind1     `"Industry, 1 digit"'
label var za01a_ind3     `"Industry, 3 digit"'
label var za01a_occ1     `"Occupation, 1 digit"'
label var za01a_occ2     `"Occupation, 2 digit"'
label var za01a_occ      `"Occupation, 3 digit"'
label var za01a_hrswrk   `"Hours worked during the 7 days before October 10"'
label var za01a_wrkhere  `"Place of work same as sub-place where usually lives"'
label var za01a_wrkprov  `"Province of work"'
label var za01a_chborn   `"Total births"'
label var za01a_bornmal  `"Male births"'
label var za01a_bornfem  `"Female births"'
label var za01a_chsurv   `"Total children still living"'
label var za01a_survmal  `"Male children still living"'
label var za01a_survfem  `"Female children still living"'
label var za01a_lstmo    `"Date of last birth - month"'
label var za01a_lstyr    `"Date of last birth - year"'
label var za01a_lsttime  `"Years since last birth"'
label var za01a_lstage   `"Age of mother at last birth"'
label var za01a_lstsex   `"Sex of last child born"'
label var za01a_lstlive  `"Last child still alive"'
label var za01a_travwrk  `"Method of transportation to school or place of work"'
label var za01a_income   `"Income (annual)"'
label var za01a_enumplac `"Place of enumeration and place of usual residence"'
label var za01a_enumprov `"Place of enumeration and birth place"'
label var za01a_enum96   `"Place of enumeration and 1996 residence"'
label var za01a_bplcitiz `"Place of birth and citizenship"'
label var za01a_bplusl   `"Place of birth and place of usual residence"'
label var za01a_bplres96 `"Place of birth and place of residence in 1996"'
label var za01a_uslres96 `"Place of usual residence and place of residence in 1996"'
label var za01a_bpl96en  `"Place of birth, place of residence in 1996, and place of enumeration"'
label var za01a_wtper    `"Person weight"'
label var za01a_qpernum  `"Flag for person number"'
label var za01a_qbrthmo  `"Flag for month of birth"'
label var za01a_qbrthyr  `"Flag for year of birth"'
label var za01a_qage     `"Flag for age"'
label var za01a_qsex     `"Flag for sex"'
label var za01a_qrelate  `"Flag for relationship to head of household"'
label var za01a_qmarst   `"Flag for marital status"'
label var za01a_qsploco  `"Flag for person number of spouse"'
label var za01a_qrace    `"Flag for race/ethnicity"'
label var za01a_qlang    `"Flag for language"'
label var za01a_qrelig   `"Flag for religion"'
label var za01a_qbornsaf `"Flag for born in South Africa"'
label var za01a_qbplprov `"Flag for province of birth"'
label var za01a_qbplctry `"Flag for country of birth"'
label var za01a_qcitiz   `"Flag for citizenship"'
label var za01a_quslres  `"Flag for usually live here"'
label var za01a_quslprov `"Flag for province of usual residence"'
label var za01a_quslplac `"Flag for usual residence main place"'
label var za01a_qmoved   `"Flag for living insame place five years ago"'
label var za01a_qyrmoved `"Flag for year moved"'
label var za01a_qprvprov `"Flag for province five years ago"'
label var za01a_qprvplac `"Flag for place of residence five years ago"'
label var za01a_qdssight `"Flag for disability - sight"'
label var za01a_qdshear  `"Flag for disability - hearing"'
label var za01a_qdscomm  `"Flag for disability - communication"'
label var za01a_qdsphys  `"Flag for disability - physical"'
label var za01a_qdsment  `"Flag for disability - intellectual"'
label var za01a_qmothloc `"Flag for mother's person number in household"'
label var za01a_qfathliv `"Flag for father alive"'
label var za01a_qfathloc `"Flag for father's person number in household"'
label var za01a_qschool  `"Flag for present school attendance"'
label var za01a_qschtype `"Flag for type of educational institution"'
label var za01a_qedattan `"Flag for level of education"'
label var za01a_qedfield `"Flag for field of education"'
label var za01a_qwrkweek `"Flag for any work in the seven days before 10 October"'
label var za01a_qwrkreas `"Flag for reason why not working"'
label var za01a_qwrkseek `"Flag for taking active steps to find a job"'
label var za01a_qwrkavai `"Flag for availability"'
label var za01a_qempstat `"Flag for employment status"'
label var za01a_qind     `"Flag for industry"'
label var za01a_qocc     `"Flag for occupation"'
label var za01a_qwrkhere `"Flag for place of work same as sub-place where usually lives"'
label var za01a_qwrkprov `"Flag for province of work"'
label var za01a_qwrkplac `"Flag for main place of work"'
label var za01a_qchborn  `"Flag for total births"'
label var za01a_qbornmal `"Flag for male births"'
label var za01a_qbornfem `"Flag for female births"'
label var za01a_qchsurv  `"Flag for total children still living"'
label var za01a_qsurvmal `"Flag for male children still living"'
label var za01a_qsurvfem `"Flag for female children still living"'
label var za01a_qlstday  `"Flag for date of last birth - day"'
label var za01a_qlstmo   `"Flag for date of last birth - month"'
label var za01a_qlstyr   `"Flag for date of last birth - year"'
label var za01a_qlstsex  `"Flag for sex of last child born"'
label var za01a_qlstliv  `"Flag for last child still alive"'
label var za01a_qtravwrk `"Flag for method of transportation to school or work"'
label var za01a_qincome  `"Flag for income (annual)"'

label define cntry_lbl 032 `"Argentina"'
label define cntry_lbl 051 `"Armenia"', add
label define cntry_lbl 040 `"Austria"', add
label define cntry_lbl 050 `"Bangladesh"', add
label define cntry_lbl 112 `"Belarus"', add
label define cntry_lbl 068 `"Bolivia"', add
label define cntry_lbl 076 `"Brazil"', add
label define cntry_lbl 854 `"Burkina Faso"', add
label define cntry_lbl 116 `"Cambodia"', add
label define cntry_lbl 120 `"Cameroon"', add
label define cntry_lbl 124 `"Canada"', add
label define cntry_lbl 152 `"Chile"', add
label define cntry_lbl 156 `"China"', add
label define cntry_lbl 170 `"Colombia"', add
label define cntry_lbl 188 `"Costa Rica"', add
label define cntry_lbl 192 `"Cuba"', add
label define cntry_lbl 214 `"Dominican Republic"', add
label define cntry_lbl 218 `"Ecuador"', add
label define cntry_lbl 818 `"Egypt"', add
label define cntry_lbl 222 `"El Salvador"', add
label define cntry_lbl 242 `"Fiji"', add
label define cntry_lbl 250 `"France"', add
label define cntry_lbl 276 `"Germany"', add
label define cntry_lbl 288 `"Ghana"', add
label define cntry_lbl 300 `"Greece"', add
label define cntry_lbl 324 `"Guinea"', add
label define cntry_lbl 332 `"Haiti"', add
label define cntry_lbl 348 `"Hungary"', add
label define cntry_lbl 356 `"India"', add
label define cntry_lbl 360 `"Indonesia"', add
label define cntry_lbl 364 `"Iran"', add
label define cntry_lbl 368 `"Iraq"', add
label define cntry_lbl 372 `"Ireland"', add
label define cntry_lbl 376 `"Israel"', add
label define cntry_lbl 380 `"Italy"', add
label define cntry_lbl 388 `"Jamaica"', add
label define cntry_lbl 400 `"Jordan"', add
label define cntry_lbl 404 `"Kenya"', add
label define cntry_lbl 417 `"Kyrgyz Republic"', add
label define cntry_lbl 430 `"Liberia"', add
label define cntry_lbl 454 `"Malawi"', add
label define cntry_lbl 458 `"Malaysia"', add
label define cntry_lbl 466 `"Mali"', add
label define cntry_lbl 484 `"Mexico"', add
label define cntry_lbl 496 `"Mongolia"', add
label define cntry_lbl 504 `"Morocco"', add
label define cntry_lbl 524 `"Nepal"', add
label define cntry_lbl 528 `"Netherlands"', add
label define cntry_lbl 558 `"Nicaragua"', add
label define cntry_lbl 566 `"Nigeria"', add
label define cntry_lbl 586 `"Pakistan"', add
label define cntry_lbl 275 `"Palestine"', add
label define cntry_lbl 591 `"Panama"', add
label define cntry_lbl 604 `"Peru"', add
label define cntry_lbl 608 `"Philippines"', add
label define cntry_lbl 620 `"Portugal"', add
label define cntry_lbl 630 `"Puerto Rico"', add
label define cntry_lbl 642 `"Romania"', add
label define cntry_lbl 646 `"Rwanda"', add
label define cntry_lbl 662 `"Saint Lucia"', add
label define cntry_lbl 686 `"Senegal"', add
label define cntry_lbl 694 `"Sierra Leone"', add
label define cntry_lbl 705 `"Slovenia"', add
label define cntry_lbl 710 `"South Africa"', add
label define cntry_lbl 728 `"South Sudan"', add
label define cntry_lbl 724 `"Spain"', add
label define cntry_lbl 729 `"Sudan"', add
label define cntry_lbl 756 `"Switzerland"', add
label define cntry_lbl 834 `"Tanzania"', add
label define cntry_lbl 764 `"Thailand"', add
label define cntry_lbl 792 `"Turkey"', add
label define cntry_lbl 800 `"Uganda"', add
label define cntry_lbl 804 `"Ukraine"', add
label define cntry_lbl 826 `"United Kingdom"', add
label define cntry_lbl 840 `"United States"', add
label define cntry_lbl 858 `"Uruguay"', add
label define cntry_lbl 862 `"Venezuela"', add
label define cntry_lbl 704 `"Vietnam"', add
label define cntry_lbl 894 `"Zambia"', add
label values cntry cntry_lbl

label define year_lbl 1960 `"1960"'
label define year_lbl 1962 `"1962"', add
label define year_lbl 1963 `"1963"', add
label define year_lbl 1964 `"1964"', add
label define year_lbl 1966 `"1966"', add
label define year_lbl 1968 `"1968"', add
label define year_lbl 1969 `"1969"', add
label define year_lbl 1970 `"1970"', add
label define year_lbl 1971 `"1971"', add
label define year_lbl 1972 `"1972"', add
label define year_lbl 1973 `"1973"', add
label define year_lbl 1974 `"1974"', add
label define year_lbl 1975 `"1975"', add
label define year_lbl 1976 `"1976"', add
label define year_lbl 1977 `"1977"', add
label define year_lbl 1979 `"1979"', add
label define year_lbl 1980 `"1980"', add
label define year_lbl 1981 `"1981"', add
label define year_lbl 1982 `"1982"', add
label define year_lbl 1983 `"1983"', add
label define year_lbl 1984 `"1984"', add
label define year_lbl 1985 `"1985"', add
label define year_lbl 1986 `"1986"', add
label define year_lbl 1987 `"1987"', add
label define year_lbl 1989 `"1989"', add
label define year_lbl 1990 `"1990"', add
label define year_lbl 1991 `"1991"', add
label define year_lbl 1992 `"1992"', add
label define year_lbl 1993 `"1993"', add
label define year_lbl 1994 `"1994"', add
label define year_lbl 1995 `"1995"', add
label define year_lbl 1996 `"1996"', add
label define year_lbl 1997 `"1997"', add
label define year_lbl 1998 `"1998"', add
label define year_lbl 1999 `"1999"', add
label define year_lbl 2000 `"2000"', add
label define year_lbl 2001 `"2001"', add
label define year_lbl 2002 `"2002"', add
label define year_lbl 2003 `"2003"', add
label define year_lbl 2004 `"2004"', add
label define year_lbl 2005 `"2005"', add
label define year_lbl 2006 `"2006"', add
label define year_lbl 2007 `"2007"', add
label define year_lbl 2008 `"2008"', add
label define year_lbl 2009 `"2009"', add
label define year_lbl 2010 `"2010"', add
label define year_lbl 2011 `"2011"', add
label values year year_lbl

label define sample_lbl 0321 `"Argentina 1970"'
label define sample_lbl 0322 `"Argentina 1980"', add
label define sample_lbl 0323 `"Argentina 1991"', add
label define sample_lbl 0324 `"Argentina 2001"', add
label define sample_lbl 0325 `"Argentina 2010"', add
label define sample_lbl 0511 `"Armenia 2001"', add
label define sample_lbl 0401 `"Austria 1971"', add
label define sample_lbl 0402 `"Austria 1981"', add
label define sample_lbl 0403 `"Austria 1991"', add
label define sample_lbl 0404 `"Austria 2001"', add
label define sample_lbl 0501 `"Bangladesh 1991"', add
label define sample_lbl 0502 `"Bangladesh 2001"', add
label define sample_lbl 0503 `"Bangladesh 2011"', add
label define sample_lbl 0681 `"Bolivia 1976"', add
label define sample_lbl 0682 `"Bolivia 1992"', add
label define sample_lbl 0683 `"Bolivia 2001"', add
label define sample_lbl 0761 `"Brazil 1960"', add
label define sample_lbl 0762 `"Brazil 1970"', add
label define sample_lbl 0763 `"Brazil 1980"', add
label define sample_lbl 0764 `"Brazil 1991"', add
label define sample_lbl 0765 `"Brazil 2000"', add
label define sample_lbl 0766 `"Brazil 2010"', add
label define sample_lbl 1121 `"Belarus 1999"', add
label define sample_lbl 8541 `"Burkina Faso 1985"', add
label define sample_lbl 8542 `"Burkina Faso 1996"', add
label define sample_lbl 8543 `"Burkina Faso 2006"', add
label define sample_lbl 1161 `"Cambodia 1998"', add
label define sample_lbl 1162 `"Cambodia 2008"', add
label define sample_lbl 1201 `"Cameroon 1976"', add
label define sample_lbl 1202 `"Cameroon 1987"', add
label define sample_lbl 1203 `"Cameroon 2005"', add
label define sample_lbl 1241 `"Canada 1971"', add
label define sample_lbl 1242 `"Canada 1981"', add
label define sample_lbl 1243 `"Canada 1991"', add
label define sample_lbl 1244 `"Canada 2001"', add
label define sample_lbl 1521 `"Chile 1960"', add
label define sample_lbl 1522 `"Chile 1970"', add
label define sample_lbl 1523 `"Chile 1982"', add
label define sample_lbl 1524 `"Chile 1992"', add
label define sample_lbl 1525 `"Chile 2002"', add
label define sample_lbl 1561 `"China 1982"', add
label define sample_lbl 1562 `"China 1990"', add
label define sample_lbl 1701 `"Colombia 1964"', add
label define sample_lbl 1702 `"Colombia 1973"', add
label define sample_lbl 1703 `"Colombia 1985"', add
label define sample_lbl 1704 `"Colombia 1993"', add
label define sample_lbl 1705 `"Colombia 2005"', add
label define sample_lbl 1881 `"Costa Rica 1963"', add
label define sample_lbl 1882 `"Costa Rica 1973"', add
label define sample_lbl 1883 `"Costa Rica 1984"', add
label define sample_lbl 1884 `"Costa Rica 2000"', add
label define sample_lbl 1921 `"Cuba 2002"', add
label define sample_lbl 2141 `"Dominican Republic 1960"', add
label define sample_lbl 2142 `"Dominican Republic 1970"', add
label define sample_lbl 2143 `"Dominican Republic 1981"', add
label define sample_lbl 2144 `"Dominican Republic 2002"', add
label define sample_lbl 2145 `"Dominican Republic 2010"', add
label define sample_lbl 2181 `"Ecuador 1962"', add
label define sample_lbl 2182 `"Ecuador 1974"', add
label define sample_lbl 2183 `"Ecuador 1982"', add
label define sample_lbl 2184 `"Ecuador 1990"', add
label define sample_lbl 2185 `"Ecuador 2001"', add
label define sample_lbl 2186 `"Ecuador 2010"', add
label define sample_lbl 8181 `"Egypt 1996"', add
label define sample_lbl 8182 `"Egypt 2006"', add
label define sample_lbl 2221 `"El Salvador 1992"', add
label define sample_lbl 2222 `"El Salvador 2007"', add
label define sample_lbl 2421 `"Fiji 1966"', add
label define sample_lbl 2422 `"Fiji 1976"', add
label define sample_lbl 2423 `"Fiji 1986"', add
label define sample_lbl 2424 `"Fiji 1996"', add
label define sample_lbl 2425 `"Fiji 2007"', add
label define sample_lbl 2501 `"France 1962"', add
label define sample_lbl 2502 `"France 1968"', add
label define sample_lbl 2503 `"France 1975"', add
label define sample_lbl 2504 `"France 1982"', add
label define sample_lbl 2505 `"France 1990"', add
label define sample_lbl 2506 `"France 1999"', add
label define sample_lbl 2507 `"France 2006"', add
label define sample_lbl 2761 `"Germany 1970 (West)"', add
label define sample_lbl 2762 `"Germany 1971 (East)"', add
label define sample_lbl 2763 `"Germany 1981 (East)"', add
label define sample_lbl 2764 `"Germany 1987 (West)"', add
label define sample_lbl 2881 `"Ghana 2000"', add
label define sample_lbl 2882 `"Ghana 2010"', add
label define sample_lbl 3001 `"Greece 1971"', add
label define sample_lbl 3002 `"Greece 1981"', add
label define sample_lbl 3003 `"Greece 1991"', add
label define sample_lbl 3004 `"Greece 2001"', add
label define sample_lbl 3241 `"Guinea 1983"', add
label define sample_lbl 3242 `"Guinea 1996"', add
label define sample_lbl 3321 `"Haiti 1971"', add
label define sample_lbl 3322 `"Haiti 1982"', add
label define sample_lbl 3323 `"Haiti 2003"', add
label define sample_lbl 3481 `"Hungary 1970"', add
label define sample_lbl 3482 `"Hungary 1980"', add
label define sample_lbl 3483 `"Hungary 1990"', add
label define sample_lbl 3484 `"Hungary 2001"', add
label define sample_lbl 3561 `"India 1983"', add
label define sample_lbl 3562 `"India 1987"', add
label define sample_lbl 3563 `"India 1993"', add
label define sample_lbl 3564 `"India 1999"', add
label define sample_lbl 3565 `"India 2004"', add
label define sample_lbl 3601 `"Indonesia 1971"', add
label define sample_lbl 3602 `"Indonesia 1976"', add
label define sample_lbl 3603 `"Indonesia 1980"', add
label define sample_lbl 3604 `"Indonesia 1985"', add
label define sample_lbl 3605 `"Indonesia 1990"', add
label define sample_lbl 3606 `"Indonesia 1995"', add
label define sample_lbl 3607 `"Indonesia 2000"', add
label define sample_lbl 3608 `"Indonesia 2005"', add
label define sample_lbl 3609 `"Indonesia 2010"', add
label define sample_lbl 3641 `"Iran 2006"', add
label define sample_lbl 3681 `"Iraq 1997"', add
label define sample_lbl 3721 `"Ireland 1971"', add
label define sample_lbl 3722 `"Ireland 1979"', add
label define sample_lbl 3723 `"Ireland 1981"', add
label define sample_lbl 3724 `"Ireland 1986"', add
label define sample_lbl 3725 `"Ireland 1991"', add
label define sample_lbl 3726 `"Ireland 1996"', add
label define sample_lbl 3727 `"Ireland 2002"', add
label define sample_lbl 3728 `"Ireland 2006"', add
label define sample_lbl 3729 `"Ireland 2011"', add
label define sample_lbl 3761 `"Israel 1972"', add
label define sample_lbl 3762 `"Israel 1983"', add
label define sample_lbl 3763 `"Israel 1995"', add
label define sample_lbl 3801 `"Italy 2001"', add
label define sample_lbl 3881 `"Jamaica 1982"', add
label define sample_lbl 3882 `"Jamaica 1991"', add
label define sample_lbl 3883 `"Jamaica 2001"', add
label define sample_lbl 4001 `"Jordan 2004"', add
label define sample_lbl 4041 `"Kenya 1969"', add
label define sample_lbl 4042 `"Kenya 1979"', add
label define sample_lbl 4043 `"Kenya 1989"', add
label define sample_lbl 4044 `"Kenya 1999"', add
label define sample_lbl 4045 `"Kenya 2009"', add
label define sample_lbl 4171 `"Kyrgyz Republic 1999"', add
label define sample_lbl 4172 `"Kyrgyz Republic 2009"', add
label define sample_lbl 4301 `"Liberia 1974"', add
label define sample_lbl 4302 `"Liberia 2008"', add
label define sample_lbl 4541 `"Malawi 1987"', add
label define sample_lbl 4542 `"Malawi 1998"', add
label define sample_lbl 4543 `"Malawi 2008"', add
label define sample_lbl 4581 `"Malaysia 1970"', add
label define sample_lbl 4582 `"Malaysia 1980"', add
label define sample_lbl 4583 `"Malaysia 1991"', add
label define sample_lbl 4584 `"Malaysia 2000"', add
label define sample_lbl 4661 `"Mali 1987"', add
label define sample_lbl 4662 `"Mali 1998"', add
label define sample_lbl 4663 `"Mali 2009"', add
label define sample_lbl 4841 `"Mexico 1960"', add
label define sample_lbl 4842 `"Mexico 1970"', add
label define sample_lbl 4843 `"Mexico 1990"', add
label define sample_lbl 4844 `"Mexico 1995"', add
label define sample_lbl 4845 `"Mexico 2000"', add
label define sample_lbl 4846 `"Mexico 2005"', add
label define sample_lbl 4847 `"Mexico 2010"', add
label define sample_lbl 4961 `"Mongolia 1989"', add
label define sample_lbl 4962 `"Mongolia 2000"', add
label define sample_lbl 5041 `"Morocco 1982"', add
label define sample_lbl 5042 `"Morocco 1994"', add
label define sample_lbl 5043 `"Morocco 2004"', add
label define sample_lbl 5241 `"Nepal 2001"', add
label define sample_lbl 5281 `"Netherlands 1960"', add
label define sample_lbl 5282 `"Netherlands 1971"', add
label define sample_lbl 5283 `"Netherlands 2001"', add
label define sample_lbl 5581 `"Nicaragua 1971"', add
label define sample_lbl 5582 `"Nicaragua 1995"', add
label define sample_lbl 5583 `"Nicaragua 2005"', add
label define sample_lbl 5661 `"Nigeria 2006"', add
label define sample_lbl 5662 `"Nigeria 2007"', add
label define sample_lbl 5663 `"Nigeria 2008"', add
label define sample_lbl 5664 `"Nigeria 2009"', add
label define sample_lbl 5665 `"Nigeria 2010"', add
label define sample_lbl 5861 `"Pakistan 1973"', add
label define sample_lbl 5862 `"Pakistan 1981"', add
label define sample_lbl 5863 `"Pakistan 1998"', add
label define sample_lbl 2751 `"Palestine 1997"', add
label define sample_lbl 2752 `"Palestine 2007"', add
label define sample_lbl 5911 `"Panama 1960"', add
label define sample_lbl 5912 `"Panama 1970"', add
label define sample_lbl 5913 `"Panama 1980"', add
label define sample_lbl 5914 `"Panama 1990"', add
label define sample_lbl 5915 `"Panama 2000"', add
label define sample_lbl 5916 `"Panama 2010"', add
label define sample_lbl 6041 `"Peru 1993"', add
label define sample_lbl 6042 `"Peru 2007"', add
label define sample_lbl 6081 `"Philippines 1990"', add
label define sample_lbl 6082 `"Philippines 1995"', add
label define sample_lbl 6083 `"Philippines 2000"', add
label define sample_lbl 6201 `"Portugal 1981"', add
label define sample_lbl 6202 `"Portugal 1991"', add
label define sample_lbl 6203 `"Portugal 2001"', add
label define sample_lbl 6301 `"Puerto Rico 1970"', add
label define sample_lbl 6302 `"Puerto Rico 1980"', add
label define sample_lbl 6303 `"Puerto Rico 1990"', add
label define sample_lbl 6304 `"Puerto Rico 2000"', add
label define sample_lbl 6305 `"Puerto Rico 2005"', add
label define sample_lbl 6421 `"Romania 1977"', add
label define sample_lbl 6422 `"Romania 1992"', add
label define sample_lbl 6423 `"Romania 2002"', add
label define sample_lbl 6461 `"Rwanda 1991"', add
label define sample_lbl 6462 `"Rwanda 2002"', add
label define sample_lbl 6621 `"Saint Lucia 1980"', add
label define sample_lbl 6622 `"Saint Lucia 1991"', add
label define sample_lbl 6861 `"Senegal 1988"', add
label define sample_lbl 6862 `"Senegal 2002"', add
label define sample_lbl 6941 `"Sierra Leone 2004"', add
label define sample_lbl 7051 `"Slovenia 2002"', add
label define sample_lbl 7101 `"South Africa 1996"', add
label define sample_lbl 7102 `"South Africa 2001"', add
label define sample_lbl 7103 `"South Africa 2007"', add
label define sample_lbl 7241 `"Spain 1981"', add
label define sample_lbl 7242 `"Spain 1991"', add
label define sample_lbl 7243 `"Spain 2001"', add
label define sample_lbl 7281 `"South Sudan 2008"', add
label define sample_lbl 7291 `"Sudan 2008"', add
label define sample_lbl 7561 `"Switzerland 1970"', add
label define sample_lbl 7562 `"Switzerland 1980"', add
label define sample_lbl 7563 `"Switzerland 1990"', add
label define sample_lbl 7564 `"Switzerland 2000"', add
label define sample_lbl 8341 `"Tanzania 1988"', add
label define sample_lbl 8342 `"Tanzania 2002"', add
label define sample_lbl 7641 `"Thailand 1970"', add
label define sample_lbl 7642 `"Thailand 1980"', add
label define sample_lbl 7643 `"Thailand 1990"', add
label define sample_lbl 7644 `"Thailand 2000"', add
label define sample_lbl 7921 `"Turkey 1985"', add
label define sample_lbl 7922 `"Turkey 1990"', add
label define sample_lbl 7923 `"Turkey 2000"', add
label define sample_lbl 8001 `"Uganda 1991"', add
label define sample_lbl 8002 `"Uganda 2002"', add
label define sample_lbl 8041 `"Ukraine 2001"', add
label define sample_lbl 8261 `"United Kingdom 1991"', add
label define sample_lbl 8262 `"United Kingdom 2001"', add
label define sample_lbl 8401 `"United States 1960"', add
label define sample_lbl 8402 `"United States 1970"', add
label define sample_lbl 8403 `"United States 1980"', add
label define sample_lbl 8404 `"United States 1990"', add
label define sample_lbl 8405 `"United States 2000"', add
label define sample_lbl 8406 `"United States 2005"', add
label define sample_lbl 8407 `"United States 2010"', add
label define sample_lbl 8581 `"Uruguay 1963"', add
label define sample_lbl 8582 `"Uruguay 1975"', add
label define sample_lbl 8583 `"Uruguay 1985"', add
label define sample_lbl 8584 `"Uruguay 1996"', add
label define sample_lbl 8585 `"Uruguay 2006"', add
label define sample_lbl 8586 `"Uruguay 2011"', add
label define sample_lbl 8621 `"Venezuela 1971"', add
label define sample_lbl 8622 `"Venezuela 1981"', add
label define sample_lbl 8623 `"Venezuela 1990"', add
label define sample_lbl 8624 `"Venezuela 2001"', add
label define sample_lbl 7041 `"Vietnam 1989"', add
label define sample_lbl 7042 `"Vietnam 1999"', add
label define sample_lbl 7043 `"Vietnam 2009"', add
label define sample_lbl 8941 `"Zambia 1990"', add
label define sample_lbl 8942 `"Zambia 2000"', add
label define sample_lbl 8943 `"Zambia 2010"', add
label values sample sample_lbl

label define za01a_pern_lbl 01 `"1"'
label define za01a_pern_lbl 02 `"2"', add
label define za01a_pern_lbl 03 `"3"', add
label define za01a_pern_lbl 04 `"4"', add
label define za01a_pern_lbl 05 `"5"', add
label define za01a_pern_lbl 06 `"6"', add
label define za01a_pern_lbl 07 `"7"', add
label define za01a_pern_lbl 08 `"8"', add
label define za01a_pern_lbl 09 `"9"', add
label define za01a_pern_lbl 10 `"10"', add
label define za01a_pern_lbl 11 `"11"', add
label define za01a_pern_lbl 12 `"12"', add
label define za01a_pern_lbl 13 `"13"', add
label define za01a_pern_lbl 14 `"14"', add
label define za01a_pern_lbl 15 `"15"', add
label define za01a_pern_lbl 16 `"16"', add
label define za01a_pern_lbl 17 `"17"', add
label define za01a_pern_lbl 18 `"18"', add
label define za01a_pern_lbl 19 `"19"', add
label define za01a_pern_lbl 20 `"20"', add
label define za01a_pern_lbl 21 `"21"', add
label define za01a_pern_lbl 22 `"22"', add
label define za01a_pern_lbl 23 `"23"', add
label define za01a_pern_lbl 24 `"24"', add
label define za01a_pern_lbl 25 `"25"', add
label define za01a_pern_lbl 26 `"26"', add
label define za01a_pern_lbl 27 `"27"', add
label define za01a_pern_lbl 28 `"28"', add
label define za01a_pern_lbl 29 `"29"', add
label define za01a_pern_lbl 30 `"30"', add
label values za01a_pern za01a_pern_lbl

label define za01a_fbig_lbl 0 `"No problem"'
label define za01a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define za01a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values za01a_fbig za01a_fbig_lbl

label define za01a_dist_lbl 001 `"DC1: West Coast District Municipality"'
label define za01a_dist_lbl 002 `"DC2: Boland District Municipality"', add
label define za01a_dist_lbl 003 `"DC3: Overberg District Municipality"', add
label define za01a_dist_lbl 004 `"DC4: Eden District Municipality"', add
label define za01a_dist_lbl 005 `"DC5: Central Karoo District Municipality"', add
label define za01a_dist_lbl 006 `"DC6: Namakwa District Municipality"', add
label define za01a_dist_lbl 007 `"DC7: Pixley ka Seme District Municipality"', add
label define za01a_dist_lbl 008 `"DC8: Siyanda District Municipality"', add
label define za01a_dist_lbl 009 `"DC9: Francis Baard (cross-boundary)"', add
label define za01a_dist_lbl 010 `"DC10: Cacadu District Municipality"', add
label define za01a_dist_lbl 012 `"DC12: Amatole District Municipality"', add
label define za01a_dist_lbl 013 `"DC13: Chris Hani District Municipality"', add
label define za01a_dist_lbl 014 `"DC14: Ukhahlamba District Municipality"', add
label define za01a_dist_lbl 015 `"DC15: O.R.Tambo District Municipality"', add
label define za01a_dist_lbl 016 `"DC16: Xhariep District Municipality"', add
label define za01a_dist_lbl 017 `"DC17: Motheo District Municipality"', add
label define za01a_dist_lbl 018 `"DC18: Lejweleputswa District Municipality"', add
label define za01a_dist_lbl 019 `"DC19: Thabo Mofutsanyane District Municipality"', add
label define za01a_dist_lbl 020 `"DC20: Northern Free State District Municipality"', add
label define za01a_dist_lbl 021 `"DC21: Ugu District Municipality"', add
label define za01a_dist_lbl 022 `"DC22: UMgungundlovu District Municipality"', add
label define za01a_dist_lbl 023 `"DC23: Uthukela District Municipality"', add
label define za01a_dist_lbl 024 `"DC24: Umzinyathi District Municipality"', add
label define za01a_dist_lbl 025 `"DC25: Amajuba District Municipality"', add
label define za01a_dist_lbl 026 `"DC26: Zululand District Municipality"', add
label define za01a_dist_lbl 027 `"DC27: Umkhanyakude District Municipality"', add
label define za01a_dist_lbl 028 `"DC28: Uthungulu District Municipality"', add
label define za01a_dist_lbl 029 `"DC29: iLembe District Municipality"', add
label define za01a_dist_lbl 030 `"DC30: Gert Sibande District Municipality"', add
label define za01a_dist_lbl 031 `"DC31: Nkangala District Municipality"', add
label define za01a_dist_lbl 032 `"DC32: Ehlanzeni District Municipality"', add
label define za01a_dist_lbl 033 `"DC33: Mopani District Municipality"', add
label define za01a_dist_lbl 034 `"DC34: Vhembe District Municipality"', add
label define za01a_dist_lbl 035 `"DC35: Capricorn District Municipality"', add
label define za01a_dist_lbl 036 `"DC36: Waterberg District Municipality"', add
label define za01a_dist_lbl 037 `"DC37: Bojanala District Municipality"', add
label define za01a_dist_lbl 038 `"DC38: Central District Municipality"', add
label define za01a_dist_lbl 039 `"DC39: Bophirima District Municipality"', add
label define za01a_dist_lbl 040 `"DC40: Southern District Municipality"', add
label define za01a_dist_lbl 042 `"DC42: Sedibeng District Municipality"', add
label define za01a_dist_lbl 043 `"DC43: Sisonke District Municipality"', add
label define za01a_dist_lbl 044 `"DC44: Alfred Nzo District Municipality"', add
label define za01a_dist_lbl 076 `"City of Tshwane (cross-boundary)"', add
label define za01a_dist_lbl 081 `"CBDC1: Kgalagadi (cross-boundary)"', add
label define za01a_dist_lbl 082 `"CBDC2: Metsweding (cross-boundary)"', add
label define za01a_dist_lbl 083 `"CBDC3: Sekhukhune (cross-boundary)"', add
label define za01a_dist_lbl 084 `"CBDC4: Eastern (cross-boundary)"', add
label define za01a_dist_lbl 088 `"CDBC8: West Rand (cross-boundary)"', add
label define za01a_dist_lbl 171 `"Cape Town: City of Cape Town"', add
label define za01a_dist_lbl 275 `"Port Elizabeth: Nelson Mandela"', add
label define za01a_dist_lbl 572 `"Durban: Ethekwini Municipality"', add
label define za01a_dist_lbl 773 `"East Rand: Ekurhuleni Metropolitan Municipality"', add
label define za01a_dist_lbl 774 `"Johannesburg: City of Johannesburg Metropolitan Municipality"', add
label define za01a_dist_lbl 998 `"Unknown"', add
label values za01a_dist za01a_dist_lbl

label define za01a_prov_lbl 1 `"Western Cape"'
label define za01a_prov_lbl 2 `"Eastern Cape"', add
label define za01a_prov_lbl 3 `"Northern Cape"', add
label define za01a_prov_lbl 4 `"Free State"', add
label define za01a_prov_lbl 5 `"KwaZulu-Natal"', add
label define za01a_prov_lbl 6 `"North West"', add
label define za01a_prov_lbl 7 `"Gauteng"', add
label define za01a_prov_lbl 8 `"Mpumalanga"', add
label define za01a_prov_lbl 9 `"Limpopo"', add
label define za01a_prov_lbl 0 `"Unknown"', add
label values za01a_prov za01a_prov_lbl

label define za01a_eatype_lbl 0 `"Sparse (10 or fewer households)"'
label define za01a_eatype_lbl 1 `"Tribal Settlement"', add
label define za01a_eatype_lbl 2 `"Farm"', add
label define za01a_eatype_lbl 3 `"Smallholding"', add
label define za01a_eatype_lbl 4 `"Urban Settlement"', add
label define za01a_eatype_lbl 5 `"Informal Settlement"', add
label define za01a_eatype_lbl 6 `"Recreational"', add
label define za01a_eatype_lbl 7 `"Industrial Area"', add
label define za01a_eatype_lbl 8 `"Institution"', add
label define za01a_eatype_lbl 9 `"Hostel"', add
label values za01a_eatype za01a_eatype_lbl

label define za01a_urban_lbl 1 `"Urban"'
label define za01a_urban_lbl 2 `"Rural"', add
label define za01a_urban_lbl 8 `"Unknown"', add
label values za01a_urban za01a_urban_lbl

label define za01a_density_lbl 1 `"High density or large settlement"'
label define za01a_density_lbl 2 `"Low density"', add
label define za01a_density_lbl 8 `"Unknown"', add
label values za01a_density za01a_density_lbl

label define za01a_dwtype1_lbl 01 `"Housing unit"'
label define za01a_dwtype1_lbl 02 `"Residential hotel"', add
label define za01a_dwtype1_lbl 03 `"Student residence"', add
label define za01a_dwtype1_lbl 04 `"Home for the aged"', add
label define za01a_dwtype1_lbl 05 `"Worker hostel"', add
label define za01a_dwtype1_lbl 11 `"Tourist hotel/motel"', add
label define za01a_dwtype1_lbl 12 `"Hospital/medical facility/clinic/frail-care centre"', add
label define za01a_dwtype1_lbl 13 `"Childcare institution/orphanage"', add
label define za01a_dwtype1_lbl 14 `"Home for the disabled"', add
label define za01a_dwtype1_lbl 15 `"Boarding school hostel"', add
label define za01a_dwtype1_lbl 16 `"Initiation school"', add
label define za01a_dwtype1_lbl 17 `"Convent/monastery/religious retreat"', add
label define za01a_dwtype1_lbl 18 `"Defence force barracks/camp/ship in harbour"', add
label define za01a_dwtype1_lbl 19 `"Prison/correctional institution/police cells"', add
label define za01a_dwtype1_lbl 20 `"Community or church hall"', add
label define za01a_dwtype1_lbl 21 `"Refugee camp/shelter for the homeless"', add
label define za01a_dwtype1_lbl 22 `"Homeless"', add
label values za01a_dwtype1 za01a_dwtype1_lbl

label define za01a_dwtype2_lbl 01 `"House or brick structure on a separate stand or yard"'
label define za01a_dwtype2_lbl 02 `"Traditional dwelling/hut/structure made of traditional materials"', add
label define za01a_dwtype2_lbl 03 `"Flat in a block of flats"', add
label define za01a_dwtype2_lbl 04 `"Town/cluster/semi-detached house (simplex, duplex or triplex)"', add
label define za01a_dwtype2_lbl 05 `"House/flat/room, in backyard"', add
label define za01a_dwtype2_lbl 06 `"Informal dwelling/shack, in backyard"', add
label define za01a_dwtype2_lbl 07 `"Informal dwelling/shack, not in backyard (e.g. in an informal/squatter settlement)"', add
label define za01a_dwtype2_lbl 08 `"Room/flatlet not in backyard but on a shared property"', add
label define za01a_dwtype2_lbl 09 `"Caravan or tent"', add
label define za01a_dwtype2_lbl 10 `"Private ship/boat"', add
label define za01a_dwtype2_lbl 20 `"Tourist hotel/motel"', add
label define za01a_dwtype2_lbl 21 `"Hospital/medical facility/clinic/frail-care centre"', add
label define za01a_dwtype2_lbl 22 `"Childcare institution/orphanage"', add
label define za01a_dwtype2_lbl 23 `"Home for the disabled"', add
label define za01a_dwtype2_lbl 24 `"Boarding school hostel"', add
label define za01a_dwtype2_lbl 25 `"Initiation school"', add
label define za01a_dwtype2_lbl 26 `"Convent/monastery/religious retreat"', add
label define za01a_dwtype2_lbl 27 `"Defence force barracks/camp/ship in harbour"', add
label define za01a_dwtype2_lbl 28 `"Prison/correctional institution/police cells"', add
label define za01a_dwtype2_lbl 29 `"Community or church hall"', add
label define za01a_dwtype2_lbl 30 `"Refugee camp/shelter for the homeless"', add
label define za01a_dwtype2_lbl 31 `"Homeless"', add
label define za01a_dwtype2_lbl 99 `"NIU (not in universe)"', add
label values za01a_dwtype2 za01a_dwtype2_lbl

label define za01a_dwmult_lbl 1 `"Yes"'
label define za01a_dwmult_lbl 2 `"No"', add
label define za01a_dwmult_lbl 9 `"NIU (not in universe)"', add
label values za01a_dwmult za01a_dwmult_lbl

label define za01a_rooms_lbl 001 `"1"'
label define za01a_rooms_lbl 002 `"2"', add
label define za01a_rooms_lbl 003 `"3"', add
label define za01a_rooms_lbl 004 `"4"', add
label define za01a_rooms_lbl 005 `"5"', add
label define za01a_rooms_lbl 006 `"6"', add
label define za01a_rooms_lbl 007 `"7"', add
label define za01a_rooms_lbl 008 `"8"', add
label define za01a_rooms_lbl 009 `"9"', add
label define za01a_rooms_lbl 010 `"10"', add
label define za01a_rooms_lbl 011 `"11"', add
label define za01a_rooms_lbl 012 `"12"', add
label define za01a_rooms_lbl 013 `"13"', add
label define za01a_rooms_lbl 014 `"14"', add
label define za01a_rooms_lbl 015 `"15"', add
label define za01a_rooms_lbl 016 `"16"', add
label define za01a_rooms_lbl 017 `"17"', add
label define za01a_rooms_lbl 018 `"18"', add
label define za01a_rooms_lbl 019 `"19"', add
label define za01a_rooms_lbl 020 `"20"', add
label define za01a_rooms_lbl 021 `"21"', add
label define za01a_rooms_lbl 022 `"22"', add
label define za01a_rooms_lbl 023 `"23"', add
label define za01a_rooms_lbl 024 `"24"', add
label define za01a_rooms_lbl 025 `"25"', add
label define za01a_rooms_lbl 026 `"26"', add
label define za01a_rooms_lbl 027 `"27"', add
label define za01a_rooms_lbl 028 `"28"', add
label define za01a_rooms_lbl 029 `"29"', add
label define za01a_rooms_lbl 030 `"30"', add
label define za01a_rooms_lbl 031 `"31"', add
label define za01a_rooms_lbl 032 `"32"', add
label define za01a_rooms_lbl 033 `"33"', add
label define za01a_rooms_lbl 034 `"34"', add
label define za01a_rooms_lbl 035 `"35"', add
label define za01a_rooms_lbl 036 `"36"', add
label define za01a_rooms_lbl 037 `"37"', add
label define za01a_rooms_lbl 038 `"38"', add
label define za01a_rooms_lbl 039 `"39"', add
label define za01a_rooms_lbl 040 `"40"', add
label define za01a_rooms_lbl 041 `"41"', add
label define za01a_rooms_lbl 042 `"42"', add
label define za01a_rooms_lbl 043 `"43"', add
label define za01a_rooms_lbl 044 `"44"', add
label define za01a_rooms_lbl 045 `"45"', add
label define za01a_rooms_lbl 046 `"46"', add
label define za01a_rooms_lbl 047 `"47"', add
label define za01a_rooms_lbl 048 `"48"', add
label define za01a_rooms_lbl 049 `"49"', add
label define za01a_rooms_lbl 050 `"50"', add
label define za01a_rooms_lbl 051 `"51"', add
label define za01a_rooms_lbl 052 `"52"', add
label define za01a_rooms_lbl 053 `"53"', add
label define za01a_rooms_lbl 054 `"54"', add
label define za01a_rooms_lbl 055 `"55"', add
label define za01a_rooms_lbl 057 `"57"', add
label define za01a_rooms_lbl 058 `"58"', add
label define za01a_rooms_lbl 059 `"59"', add
label define za01a_rooms_lbl 060 `"60"', add
label define za01a_rooms_lbl 062 `"62"', add
label define za01a_rooms_lbl 063 `"63"', add
label define za01a_rooms_lbl 064 `"64"', add
label define za01a_rooms_lbl 065 `"65"', add
label define za01a_rooms_lbl 066 `"66"', add
label define za01a_rooms_lbl 068 `"68"', add
label define za01a_rooms_lbl 069 `"69"', add
label define za01a_rooms_lbl 070 `"70"', add
label define za01a_rooms_lbl 071 `"71"', add
label define za01a_rooms_lbl 072 `"72"', add
label define za01a_rooms_lbl 073 `"73"', add
label define za01a_rooms_lbl 074 `"74"', add
label define za01a_rooms_lbl 075 `"75"', add
label define za01a_rooms_lbl 076 `"76"', add
label define za01a_rooms_lbl 077 `"77"', add
label define za01a_rooms_lbl 078 `"78"', add
label define za01a_rooms_lbl 079 `"79"', add
label define za01a_rooms_lbl 080 `"80"', add
label define za01a_rooms_lbl 081 `"81"', add
label define za01a_rooms_lbl 082 `"82"', add
label define za01a_rooms_lbl 084 `"84"', add
label define za01a_rooms_lbl 085 `"85"', add
label define za01a_rooms_lbl 086 `"86"', add
label define za01a_rooms_lbl 087 `"87"', add
label define za01a_rooms_lbl 089 `"89"', add
label define za01a_rooms_lbl 090 `"90"', add
label define za01a_rooms_lbl 094 `"94"', add
label define za01a_rooms_lbl 096 `"96"', add
label define za01a_rooms_lbl 097 `"97"', add
label define za01a_rooms_lbl 098 `"98"', add
label define za01a_rooms_lbl 099 `"99+"', add
label define za01a_rooms_lbl 999 `"NIU (not in universe)"', add
label values za01a_rooms za01a_rooms_lbl

label define za01a_sharerm_lbl 1 `"Yes"'
label define za01a_sharerm_lbl 2 `"No"', add
label define za01a_sharerm_lbl 9 `"NIU (not in universe)"', add
label values za01a_sharerm za01a_sharerm_lbl

label define za01a_owner_lbl 1 `"Owned and fully paid off"'
label define za01a_owner_lbl 2 `"Owned but not yet paid off"', add
label define za01a_owner_lbl 3 `"Rented"', add
label define za01a_owner_lbl 4 `"Occupied rent-free"', add
label define za01a_owner_lbl 9 `"NIU (not in universe)"', add
label values za01a_owner za01a_owner_lbl

label define za01a_watpipe_lbl 1 `"No access to piped (tap) water"'
label define za01a_watpipe_lbl 2 `"Piped (tap) water on community stand: distance greater than 200m from dwelling"', add
label define za01a_watpipe_lbl 3 `"Piped (tap) water on community stand: distance less than 200m from dwelling"', add
label define za01a_watpipe_lbl 4 `"Piped (tap) water inside yard"', add
label define za01a_watpipe_lbl 5 `"Piped (tap) water inside dwelling"', add
label define za01a_watpipe_lbl 9 `"NIU (not in universe)"', add
label values za01a_watpipe za01a_watpipe_lbl

label define za01a_watsrc_lbl 1 `"Regional/local water scheme (operated by a Water Service Authority or Provider)"'
label define za01a_watsrc_lbl 2 `"Borehole"', add
label define za01a_watsrc_lbl 3 `"Spring"', add
label define za01a_watsrc_lbl 4 `"Rainwater tank"', add
label define za01a_watsrc_lbl 5 `"Dam/pool/stagnant water"', add
label define za01a_watsrc_lbl 6 `"River/stream"', add
label define za01a_watsrc_lbl 7 `"Water vendor"', add
label define za01a_watsrc_lbl 8 `"Other"', add
label define za01a_watsrc_lbl 9 `"NIU (not in universe)"', add
label values za01a_watsrc za01a_watsrc_lbl

label define za01a_watacc_lbl 01 `"Piped water (tap) inside dwelling"'
label define za01a_watacc_lbl 02 `"Piped water (tap) inside yard"', add
label define za01a_watacc_lbl 03 `"Piped water on community stand: distance less than 200m"', add
label define za01a_watacc_lbl 04 `"Piped water on community stand: distance greater than 200m"', add
label define za01a_watacc_lbl 05 `"Borehole"', add
label define za01a_watacc_lbl 06 `"Spring"', add
label define za01a_watacc_lbl 07 `"Rainwater tank"', add
label define za01a_watacc_lbl 08 `"Dam/pool/stagnant water"', add
label define za01a_watacc_lbl 09 `"River/stream"', add
label define za01a_watacc_lbl 10 `"Water vendor"', add
label define za01a_watacc_lbl 11 `"Other"', add
label define za01a_watacc_lbl 99 `"NIU (not in universe)"', add
label values za01a_watacc za01a_watacc_lbl

label define za01a_toilet_lbl 1 `"Flush toilet (connected to sewerage system)"'
label define za01a_toilet_lbl 2 `"Flush toilet (with septic tank)"', add
label define za01a_toilet_lbl 3 `"Chemical toilet"', add
label define za01a_toilet_lbl 4 `"Pit latrine with ventilation (VIP)"', add
label define za01a_toilet_lbl 5 `"Pit latrine without ventilation"', add
label define za01a_toilet_lbl 6 `"Bucket latrine"', add
label define za01a_toilet_lbl 7 `"None"', add
label define za01a_toilet_lbl 9 `"NIU (not in universe)"', add
label values za01a_toilet za01a_toilet_lbl

label define za01a_fuelck_lbl 0 `"NIU (not in universe)"'
label define za01a_fuelck_lbl 1 `"Electricity"', add
label define za01a_fuelck_lbl 2 `"Gas"', add
label define za01a_fuelck_lbl 3 `"Paraffin"', add
label define za01a_fuelck_lbl 4 `"Wood"', add
label define za01a_fuelck_lbl 5 `"Coal"', add
label define za01a_fuelck_lbl 7 `"Animal dung"', add
label define za01a_fuelck_lbl 8 `"Solar"', add
label define za01a_fuelck_lbl 9 `"Other"', add
label values za01a_fuelck za01a_fuelck_lbl

label define za01a_fuelht_lbl 0 `"NIU (not in universe)"'
label define za01a_fuelht_lbl 1 `"Electricity"', add
label define za01a_fuelht_lbl 2 `"Gas"', add
label define za01a_fuelht_lbl 3 `"Paraffin"', add
label define za01a_fuelht_lbl 4 `"Wood"', add
label define za01a_fuelht_lbl 5 `"Coal"', add
label define za01a_fuelht_lbl 7 `"Animal dung"', add
label define za01a_fuelht_lbl 8 `"Solar"', add
label define za01a_fuelht_lbl 9 `"Other"', add
label values za01a_fuelht za01a_fuelht_lbl

label define za01a_fuellt_lbl 0 `"NIU (not in universe)"'
label define za01a_fuellt_lbl 1 `"Electricity"', add
label define za01a_fuellt_lbl 2 `"Gas"', add
label define za01a_fuellt_lbl 3 `"Paraffin"', add
label define za01a_fuellt_lbl 6 `"Candles"', add
label define za01a_fuellt_lbl 8 `"Solar"', add
label define za01a_fuellt_lbl 9 `"Other"', add
label values za01a_fuellt za01a_fuellt_lbl

label define za01a_radio_lbl 1 `"Yes"'
label define za01a_radio_lbl 2 `"No"', add
label define za01a_radio_lbl 9 `"NIU (not in universe)"', add
label values za01a_radio za01a_radio_lbl

label define za01a_tv_lbl 1 `"Yes"'
label define za01a_tv_lbl 2 `"No"', add
label define za01a_tv_lbl 9 `"NIU (not in universe)"', add
label values za01a_tv za01a_tv_lbl

label define za01a_computer_lbl 1 `"Yes"'
label define za01a_computer_lbl 2 `"No"', add
label define za01a_computer_lbl 9 `"NIU (not in universe)"', add
label values za01a_computer za01a_computer_lbl

label define za01a_refrig_lbl 1 `"Yes"'
label define za01a_refrig_lbl 2 `"No"', add
label define za01a_refrig_lbl 9 `"NIU (not in universe)"', add
label values za01a_refrig za01a_refrig_lbl

label define za01a_phone_lbl 1 `"Yes"'
label define za01a_phone_lbl 2 `"No"', add
label define za01a_phone_lbl 9 `"NIU (not in universe)"', add
label values za01a_phone za01a_phone_lbl

label define za01a_cell_lbl 1 `"Yes"'
label define za01a_cell_lbl 2 `"No"', add
label define za01a_cell_lbl 9 `"NIU (not in universe)"', add
label values za01a_cell za01a_cell_lbl

label define za01a_phoneac_lbl 1 `"At a neighbour nearby"'
label define za01a_phoneac_lbl 2 `"At a public telephone nearby"', add
label define za01a_phoneac_lbl 3 `"At another location nearby"', add
label define za01a_phoneac_lbl 4 `"At another location, not nearby"', add
label define za01a_phoneac_lbl 5 `"No access to a telephone"', add
label define za01a_phoneac_lbl 9 `"NIU (not in universe)"', add
label values za01a_phoneac za01a_phoneac_lbl

label define za01a_phonety_lbl 1 `"Telephone in dwelling and cell-phone"'
label define za01a_phonety_lbl 2 `"Telephone in dwelling only"', add
label define za01a_phonety_lbl 3 `"Cell-phone only"', add
label define za01a_phonety_lbl 4 `"At a neighbour nearby"', add
label define za01a_phonety_lbl 5 `"At a public telephone nearby"', add
label define za01a_phonety_lbl 6 `"At another location nearby"', add
label define za01a_phonety_lbl 7 `"At another location, not nearby"', add
label define za01a_phonety_lbl 8 `"No access to a telephone"', add
label define za01a_phonety_lbl 9 `"NIU (not in universe)"', add
label values za01a_phonety za01a_phonety_lbl

label define za01a_garbage_lbl 1 `"Removed by local authority at least once a week"'
label define za01a_garbage_lbl 2 `"Removed by local authority less often"', add
label define za01a_garbage_lbl 3 `"Communal refuse dump"', add
label define za01a_garbage_lbl 4 `"Own refuse dump"', add
label define za01a_garbage_lbl 5 `"No rubbish disposal"', add
label define za01a_garbage_lbl 9 `"NIU (not in universe)"', add
label values za01a_garbage za01a_garbage_lbl

label define za01a_raceh_lbl 1 `"Black African"'
label define za01a_raceh_lbl 2 `"Coloured"', add
label define za01a_raceh_lbl 3 `"Indian or Asian"', add
label define za01a_raceh_lbl 4 `"White"', add
label values za01a_raceh za01a_raceh_lbl

label define za01a_inch_lbl 01 `"No income"'
label define za01a_inch_lbl 02 `"R 1-R 4 800"', add
label define za01a_inch_lbl 03 `"R 4 801-R 9 600"', add
label define za01a_inch_lbl 04 `"R 9 601-R 19 200"', add
label define za01a_inch_lbl 05 `"R 19 201-R 38 400"', add
label define za01a_inch_lbl 06 `"R 38 401-R 76 800"', add
label define za01a_inch_lbl 07 `"R 76 801-R 153 600"', add
label define za01a_inch_lbl 08 `"R 153 601-R 307 200"', add
label define za01a_inch_lbl 09 `"R 307 201-R 614 400"', add
label define za01a_inch_lbl 10 `"R 614 401-R 1 228 800"', add
label define za01a_inch_lbl 11 `"R 1 228 801-R 2 457 600"', add
label define za01a_inch_lbl 12 `"R 2 457 601 or more"', add
label define za01a_inch_lbl 99 `"NIU (not in universe)"', add
label values za01a_inch za01a_inch_lbl

label define za01a_wthh_lbl 10000000 `"10000000"'
label define za01a_wthh_lbl 10568670 `"10568670"', add
label define za01a_wthh_lbl 10768460 `"10768460"', add
label define za01a_wthh_lbl 11030760 `"11030760"', add
label define za01a_wthh_lbl 11054900 `"11054900"', add
label define za01a_wthh_lbl 11063170 `"11063170"', add
label define za01a_wthh_lbl 11146380 `"11146380"', add
label define za01a_wthh_lbl 11169660 `"11169660"', add
label define za01a_wthh_lbl 11335480 `"11335480"', add
label define za01a_wthh_lbl 11370300 `"11370300"', add
label define za01a_wthh_lbl 11516940 `"11516940"', add
label define za01a_wthh_lbl 11552040 `"11552040"', add
label define za01a_wthh_lbl 11859070 `"11859070"', add
label define za01a_wthh_lbl 11898990 `"11898990"', add
label define za01a_wthh_lbl 11943040 `"11943040"', add
label define za01a_wthh_lbl 12027340 `"12027340"', add
label define za01a_wthh_lbl 12219700 `"12219700"', add
label define za01a_wthh_lbl 12272300 `"12272300"', add
label define za01a_wthh_lbl 13341280 `"13341280"', add
label define za01a_wthh_lbl 13408520 `"13408520"', add
label define za01a_wthh_lbl 13656010 `"13656010"', add
label define za01a_wthh_lbl 13667230 `"13667230"', add
label define za01a_wthh_lbl 13695700 `"13695700"', add
label define za01a_wthh_lbl 14610920 `"14610920"', add
label define za01a_wthh_lbl 15464940 `"15464940"', add
label define za01a_wthh_lbl 15948680 `"15948680"', add
label define za01a_wthh_lbl 16164970 `"16164970"', add
label define za01a_wthh_lbl 16206660 `"16206660"', add
label define za01a_wthh_lbl 16269550 `"16269550"', add
label define za01a_wthh_lbl 16774410 `"16774410"', add
label define za01a_wthh_lbl 17232520 `"17232520"', add
label define za01a_wthh_lbl 23496120 `"23496120"', add
label define za01a_wthh_lbl 25091350 `"25091350"', add
label values za01a_wthh za01a_wthh_lbl

label define za01a_qdwtype1_lbl 0 `"No imputation"'
label define za01a_qdwtype1_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qdwtype1_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qdwtype1_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qdwtype1_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qdwtype1 za01a_qdwtype1_lbl

label define za01a_qdwtype2_lbl 0 `"No imputation"'
label define za01a_qdwtype2_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qdwtype2_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qdwtype2_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qdwtype2_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qdwtype2 za01a_qdwtype2_lbl

label define za01a_qdwmult_lbl 0 `"No imputation"'
label define za01a_qdwmult_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qdwmult_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qdwmult_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qdwmult_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qdwmult za01a_qdwmult_lbl

label define za01a_qrooms_lbl 0 `"No imputation"'
label define za01a_qrooms_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qrooms_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qrooms_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qrooms_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qrooms za01a_qrooms_lbl

label define za01a_qsharerm_lbl 0 `"No imputation"'
label define za01a_qsharerm_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qsharerm_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qsharerm_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qsharerm_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qsharerm za01a_qsharerm_lbl

label define za01a_qowner_lbl 0 `"No imputation"'
label define za01a_qowner_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qowner_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qowner_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qowner_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qowner za01a_qowner_lbl

label define za01a_qwatpipe_lbl 0 `"No imputation"'
label define za01a_qwatpipe_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qwatpipe_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qwatpipe_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qwatpipe_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qwatpipe za01a_qwatpipe_lbl

label define za01a_qwatsrc_lbl 0 `"No imputation"'
label define za01a_qwatsrc_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qwatsrc_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qwatsrc_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qwatsrc_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qwatsrc za01a_qwatsrc_lbl

label define za01a_qtoilet_lbl 0 `"No imputation"'
label define za01a_qtoilet_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qtoilet_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qtoilet_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qtoilet_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qtoilet za01a_qtoilet_lbl

label define za01a_qfuelck_lbl 0 `"No imputation"'
label define za01a_qfuelck_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qfuelck_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qfuelck_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qfuelck_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qfuelck za01a_qfuelck_lbl

label define za01a_qfuelht_lbl 0 `"No imputation"'
label define za01a_qfuelht_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qfuelht_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qfuelht_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qfuelht_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qfuelht za01a_qfuelht_lbl

label define za01a_qfuellt_lbl 0 `"No imputation"'
label define za01a_qfuellt_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qfuellt_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qfuellt_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qfuellt_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qfuellt za01a_qfuellt_lbl

label define za01a_qradio_lbl 0 `"No imputation"'
label define za01a_qradio_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qradio_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qradio_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qradio_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qradio za01a_qradio_lbl

label define za01a_qtv_lbl 0 `"No imputation"'
label define za01a_qtv_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qtv_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qtv_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qtv_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qtv za01a_qtv_lbl

label define za01a_qcompute_lbl 0 `"No imputation"'
label define za01a_qcompute_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qcompute_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qcompute_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qcompute_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qcompute za01a_qcompute_lbl

label define za01a_qrefrig_lbl 0 `"No imputation"'
label define za01a_qrefrig_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qrefrig_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qrefrig_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qrefrig_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qrefrig za01a_qrefrig_lbl

label define za01a_qphone_lbl 0 `"No imputation"'
label define za01a_qphone_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qphone_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qphone_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qphone_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qphone za01a_qphone_lbl

label define za01a_qcell_lbl 0 `"No imputation"'
label define za01a_qcell_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qcell_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qcell_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qcell_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qcell za01a_qcell_lbl

label define za01a_qphoneac_lbl 0 `"No imputation"'
label define za01a_qphoneac_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qphoneac_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qphoneac_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qphoneac_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qphoneac za01a_qphoneac_lbl

label define za01a_qgarbage_lbl 0 `"No imputation"'
label define za01a_qgarbage_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qgarbage_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qgarbage_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qgarbage_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qgarbage za01a_qgarbage_lbl

label define za01a_mortn_lbl 0 `"0"'
label define za01a_mortn_lbl 1 `"1"', add
label define za01a_mortn_lbl 2 `"2"', add
label define za01a_mortn_lbl 3 `"3"', add
label define za01a_mortn_lbl 4 `"4"', add
label define za01a_mortn_lbl 5 `"5"', add
label define za01a_mortn_lbl 6 `"6"', add
label values za01a_mortn za01a_mortn_lbl

label define za01a_pernum_lbl 00 `"0"'
label define za01a_pernum_lbl 01 `"1"', add
label define za01a_pernum_lbl 02 `"2"', add
label define za01a_pernum_lbl 03 `"3"', add
label define za01a_pernum_lbl 04 `"4"', add
label define za01a_pernum_lbl 05 `"5"', add
label define za01a_pernum_lbl 06 `"6"', add
label define za01a_pernum_lbl 07 `"7"', add
label define za01a_pernum_lbl 08 `"8"', add
label define za01a_pernum_lbl 09 `"9"', add
label define za01a_pernum_lbl 10 `"10"', add
label define za01a_pernum_lbl 11 `"11"', add
label define za01a_pernum_lbl 12 `"12"', add
label define za01a_pernum_lbl 13 `"13"', add
label define za01a_pernum_lbl 14 `"14"', add
label define za01a_pernum_lbl 15 `"15"', add
label define za01a_pernum_lbl 16 `"16"', add
label define za01a_pernum_lbl 17 `"17"', add
label define za01a_pernum_lbl 18 `"18"', add
label define za01a_pernum_lbl 19 `"19"', add
label define za01a_pernum_lbl 20 `"20"', add
label define za01a_pernum_lbl 21 `"21"', add
label define za01a_pernum_lbl 22 `"22"', add
label define za01a_pernum_lbl 23 `"23"', add
label define za01a_pernum_lbl 24 `"24"', add
label define za01a_pernum_lbl 25 `"25"', add
label define za01a_pernum_lbl 26 `"26"', add
label define za01a_pernum_lbl 27 `"27"', add
label define za01a_pernum_lbl 28 `"28"', add
label define za01a_pernum_lbl 29 `"29"', add
label define za01a_pernum_lbl 30 `"30"', add
label values za01a_pernum za01a_pernum_lbl

label define za01a_dwtype1p_lbl 01 `"Housing unit"'
label define za01a_dwtype1p_lbl 02 `"Residential hotel"', add
label define za01a_dwtype1p_lbl 03 `"Student residence"', add
label define za01a_dwtype1p_lbl 04 `"Home for the aged"', add
label define za01a_dwtype1p_lbl 05 `"Worker hostel"', add
label define za01a_dwtype1p_lbl 11 `"Tourist hotel/motel"', add
label define za01a_dwtype1p_lbl 12 `"Hospital/medical facility/clinic/frail-care centre"', add
label define za01a_dwtype1p_lbl 13 `"Childcare institution/orphanage"', add
label define za01a_dwtype1p_lbl 14 `"Home for the disabled"', add
label define za01a_dwtype1p_lbl 15 `"Boarding school hostel"', add
label define za01a_dwtype1p_lbl 16 `"Initiation school"', add
label define za01a_dwtype1p_lbl 17 `"Convent/monastery/religious retreat"', add
label define za01a_dwtype1p_lbl 18 `"Defence force barracks/camp/ship in harbour"', add
label define za01a_dwtype1p_lbl 19 `"Prison/correctional institution/police cells"', add
label define za01a_dwtype1p_lbl 20 `"Community or church hall"', add
label define za01a_dwtype1p_lbl 21 `"Refugee camp/shelter for the homeless"', add
label define za01a_dwtype1p_lbl 22 `"Homeless"', add
label values za01a_dwtype1p za01a_dwtype1p_lbl

label define za01a_pernumo_lbl 0001 `"1"'
label define za01a_pernumo_lbl 0002 `"2"', add
label define za01a_pernumo_lbl 0003 `"3"', add
label define za01a_pernumo_lbl 0004 `"4"', add
label define za01a_pernumo_lbl 0005 `"5"', add
label define za01a_pernumo_lbl 0006 `"6"', add
label define za01a_pernumo_lbl 0007 `"7"', add
label define za01a_pernumo_lbl 0008 `"8"', add
label define za01a_pernumo_lbl 0009 `"9"', add
label define za01a_pernumo_lbl 0010 `"10"', add
label define za01a_pernumo_lbl 0011 `"11"', add
label define za01a_pernumo_lbl 0012 `"12"', add
label define za01a_pernumo_lbl 0013 `"13"', add
label define za01a_pernumo_lbl 0014 `"14"', add
label define za01a_pernumo_lbl 0015 `"15"', add
label define za01a_pernumo_lbl 0016 `"16"', add
label define za01a_pernumo_lbl 0017 `"17"', add
label define za01a_pernumo_lbl 0018 `"18"', add
label define za01a_pernumo_lbl 0019 `"19"', add
label define za01a_pernumo_lbl 0020 `"20"', add
label define za01a_pernumo_lbl 0021 `"21"', add
label define za01a_pernumo_lbl 0022 `"22"', add
label define za01a_pernumo_lbl 0023 `"23"', add
label define za01a_pernumo_lbl 0024 `"24"', add
label define za01a_pernumo_lbl 0025 `"25"', add
label define za01a_pernumo_lbl 0026 `"26"', add
label define za01a_pernumo_lbl 0027 `"27"', add
label define za01a_pernumo_lbl 0028 `"28"', add
label define za01a_pernumo_lbl 0029 `"29"', add
label define za01a_pernumo_lbl 0030 `"30"', add
label define za01a_pernumo_lbl 0031 `"31"', add
label define za01a_pernumo_lbl 0032 `"32"', add
label define za01a_pernumo_lbl 0033 `"33"', add
label define za01a_pernumo_lbl 0034 `"34"', add
label define za01a_pernumo_lbl 0035 `"35"', add
label define za01a_pernumo_lbl 0036 `"36"', add
label define za01a_pernumo_lbl 0037 `"37"', add
label define za01a_pernumo_lbl 0038 `"38"', add
label define za01a_pernumo_lbl 0039 `"39"', add
label define za01a_pernumo_lbl 0040 `"40"', add
label define za01a_pernumo_lbl 0041 `"41"', add
label define za01a_pernumo_lbl 0042 `"42"', add
label define za01a_pernumo_lbl 0043 `"43"', add
label define za01a_pernumo_lbl 0044 `"44"', add
label define za01a_pernumo_lbl 0045 `"45"', add
label define za01a_pernumo_lbl 0046 `"46"', add
label define za01a_pernumo_lbl 0047 `"47"', add
label define za01a_pernumo_lbl 0048 `"48"', add
label define za01a_pernumo_lbl 0049 `"49"', add
label define za01a_pernumo_lbl 0050 `"50"', add
label define za01a_pernumo_lbl 0051 `"51"', add
label define za01a_pernumo_lbl 0052 `"52"', add
label define za01a_pernumo_lbl 0053 `"53"', add
label define za01a_pernumo_lbl 0054 `"54"', add
label define za01a_pernumo_lbl 0055 `"55"', add
label define za01a_pernumo_lbl 0056 `"56"', add
label define za01a_pernumo_lbl 0057 `"57"', add
label define za01a_pernumo_lbl 0058 `"58"', add
label define za01a_pernumo_lbl 0059 `"59"', add
label define za01a_pernumo_lbl 0060 `"60"', add
label define za01a_pernumo_lbl 0061 `"61"', add
label define za01a_pernumo_lbl 0062 `"62"', add
label define za01a_pernumo_lbl 0063 `"63"', add
label define za01a_pernumo_lbl 0064 `"64"', add
label define za01a_pernumo_lbl 0065 `"65"', add
label define za01a_pernumo_lbl 0066 `"66"', add
label define za01a_pernumo_lbl 0067 `"67"', add
label define za01a_pernumo_lbl 0068 `"68"', add
label define za01a_pernumo_lbl 0069 `"69"', add
label define za01a_pernumo_lbl 0070 `"70"', add
label define za01a_pernumo_lbl 0071 `"71"', add
label define za01a_pernumo_lbl 0072 `"72"', add
label define za01a_pernumo_lbl 0073 `"73"', add
label define za01a_pernumo_lbl 0074 `"74"', add
label define za01a_pernumo_lbl 0075 `"75"', add
label define za01a_pernumo_lbl 0076 `"76"', add
label define za01a_pernumo_lbl 0077 `"77"', add
label define za01a_pernumo_lbl 0078 `"78"', add
label define za01a_pernumo_lbl 0079 `"79"', add
label define za01a_pernumo_lbl 0080 `"80"', add
label define za01a_pernumo_lbl 0081 `"81"', add
label define za01a_pernumo_lbl 0082 `"82"', add
label define za01a_pernumo_lbl 0083 `"83"', add
label define za01a_pernumo_lbl 0084 `"84"', add
label define za01a_pernumo_lbl 0085 `"85"', add
label define za01a_pernumo_lbl 0086 `"86"', add
label define za01a_pernumo_lbl 0087 `"87"', add
label define za01a_pernumo_lbl 0088 `"88"', add
label define za01a_pernumo_lbl 0089 `"89"', add
label define za01a_pernumo_lbl 0090 `"90"', add
label define za01a_pernumo_lbl 0091 `"91"', add
label define za01a_pernumo_lbl 0092 `"92"', add
label define za01a_pernumo_lbl 0093 `"93"', add
label define za01a_pernumo_lbl 0094 `"94"', add
label define za01a_pernumo_lbl 0095 `"95"', add
label define za01a_pernumo_lbl 0096 `"96"', add
label define za01a_pernumo_lbl 0097 `"97"', add
label define za01a_pernumo_lbl 0098 `"98"', add
label define za01a_pernumo_lbl 0099 `"99"', add
label define za01a_pernumo_lbl 0100 `"100"', add
label define za01a_pernumo_lbl 0101 `"101"', add
label define za01a_pernumo_lbl 0102 `"102"', add
label define za01a_pernumo_lbl 0103 `"103"', add
label define za01a_pernumo_lbl 0104 `"104"', add
label define za01a_pernumo_lbl 0105 `"105"', add
label define za01a_pernumo_lbl 0106 `"106"', add
label define za01a_pernumo_lbl 0107 `"107"', add
label define za01a_pernumo_lbl 0108 `"108"', add
label define za01a_pernumo_lbl 0109 `"109"', add
label define za01a_pernumo_lbl 0110 `"110"', add
label define za01a_pernumo_lbl 0111 `"111"', add
label define za01a_pernumo_lbl 0112 `"112"', add
label define za01a_pernumo_lbl 0113 `"113"', add
label define za01a_pernumo_lbl 0114 `"114"', add
label define za01a_pernumo_lbl 0115 `"115"', add
label define za01a_pernumo_lbl 0116 `"116"', add
label define za01a_pernumo_lbl 0117 `"117"', add
label define za01a_pernumo_lbl 0118 `"118"', add
label define za01a_pernumo_lbl 0119 `"119"', add
label define za01a_pernumo_lbl 0120 `"120"', add
label define za01a_pernumo_lbl 0121 `"121"', add
label define za01a_pernumo_lbl 0122 `"122"', add
label define za01a_pernumo_lbl 0123 `"123"', add
label define za01a_pernumo_lbl 0124 `"124"', add
label define za01a_pernumo_lbl 0125 `"125"', add
label define za01a_pernumo_lbl 0126 `"126"', add
label define za01a_pernumo_lbl 0127 `"127"', add
label define za01a_pernumo_lbl 0128 `"128"', add
label define za01a_pernumo_lbl 0129 `"129"', add
label define za01a_pernumo_lbl 0130 `"130"', add
label define za01a_pernumo_lbl 0131 `"131"', add
label define za01a_pernumo_lbl 0132 `"132"', add
label define za01a_pernumo_lbl 0133 `"133"', add
label define za01a_pernumo_lbl 0134 `"134"', add
label define za01a_pernumo_lbl 0135 `"135"', add
label define za01a_pernumo_lbl 0136 `"136"', add
label define za01a_pernumo_lbl 0137 `"137"', add
label define za01a_pernumo_lbl 0138 `"138"', add
label define za01a_pernumo_lbl 0139 `"139"', add
label define za01a_pernumo_lbl 0140 `"140"', add
label define za01a_pernumo_lbl 0141 `"141"', add
label define za01a_pernumo_lbl 0142 `"142"', add
label define za01a_pernumo_lbl 0143 `"143"', add
label define za01a_pernumo_lbl 0144 `"144"', add
label define za01a_pernumo_lbl 0145 `"145"', add
label define za01a_pernumo_lbl 0146 `"146"', add
label define za01a_pernumo_lbl 0147 `"147"', add
label define za01a_pernumo_lbl 0148 `"148"', add
label define za01a_pernumo_lbl 0149 `"149"', add
label define za01a_pernumo_lbl 0150 `"150"', add
label define za01a_pernumo_lbl 0151 `"151"', add
label define za01a_pernumo_lbl 0152 `"152"', add
label define za01a_pernumo_lbl 0153 `"153"', add
label define za01a_pernumo_lbl 0154 `"154"', add
label define za01a_pernumo_lbl 0155 `"155"', add
label define za01a_pernumo_lbl 0156 `"156"', add
label define za01a_pernumo_lbl 0157 `"157"', add
label define za01a_pernumo_lbl 0158 `"158"', add
label define za01a_pernumo_lbl 0159 `"159"', add
label define za01a_pernumo_lbl 0160 `"160"', add
label define za01a_pernumo_lbl 0161 `"161"', add
label define za01a_pernumo_lbl 0162 `"162"', add
label define za01a_pernumo_lbl 0163 `"163"', add
label define za01a_pernumo_lbl 0164 `"164"', add
label define za01a_pernumo_lbl 0165 `"165"', add
label define za01a_pernumo_lbl 0166 `"166"', add
label define za01a_pernumo_lbl 0167 `"167"', add
label define za01a_pernumo_lbl 0168 `"168"', add
label define za01a_pernumo_lbl 0169 `"169"', add
label define za01a_pernumo_lbl 0170 `"170"', add
label define za01a_pernumo_lbl 0171 `"171"', add
label define za01a_pernumo_lbl 0172 `"172"', add
label define za01a_pernumo_lbl 0173 `"173"', add
label define za01a_pernumo_lbl 0174 `"174"', add
label define za01a_pernumo_lbl 0175 `"175"', add
label define za01a_pernumo_lbl 0176 `"176"', add
label define za01a_pernumo_lbl 0177 `"177"', add
label define za01a_pernumo_lbl 0178 `"178"', add
label define za01a_pernumo_lbl 0179 `"179"', add
label define za01a_pernumo_lbl 0180 `"180"', add
label define za01a_pernumo_lbl 0181 `"181"', add
label define za01a_pernumo_lbl 0182 `"182"', add
label define za01a_pernumo_lbl 0183 `"183"', add
label define za01a_pernumo_lbl 0184 `"184"', add
label define za01a_pernumo_lbl 0185 `"185"', add
label define za01a_pernumo_lbl 0186 `"186"', add
label define za01a_pernumo_lbl 0187 `"187"', add
label define za01a_pernumo_lbl 0188 `"188"', add
label define za01a_pernumo_lbl 0189 `"189"', add
label define za01a_pernumo_lbl 0190 `"190"', add
label define za01a_pernumo_lbl 0191 `"191"', add
label define za01a_pernumo_lbl 0192 `"192"', add
label define za01a_pernumo_lbl 0193 `"193"', add
label define za01a_pernumo_lbl 0194 `"194"', add
label define za01a_pernumo_lbl 0195 `"195"', add
label define za01a_pernumo_lbl 0196 `"196"', add
label define za01a_pernumo_lbl 0197 `"197"', add
label define za01a_pernumo_lbl 0198 `"198"', add
label define za01a_pernumo_lbl 0199 `"199"', add
label define za01a_pernumo_lbl 0200 `"200"', add
label define za01a_pernumo_lbl 0201 `"201"', add
label define za01a_pernumo_lbl 0202 `"202"', add
label define za01a_pernumo_lbl 0203 `"203"', add
label define za01a_pernumo_lbl 0204 `"204"', add
label define za01a_pernumo_lbl 0205 `"205"', add
label define za01a_pernumo_lbl 0206 `"206"', add
label define za01a_pernumo_lbl 0207 `"207"', add
label define za01a_pernumo_lbl 0208 `"208"', add
label define za01a_pernumo_lbl 0209 `"209"', add
label define za01a_pernumo_lbl 0210 `"210"', add
label define za01a_pernumo_lbl 0211 `"211"', add
label define za01a_pernumo_lbl 0212 `"212"', add
label define za01a_pernumo_lbl 0213 `"213"', add
label define za01a_pernumo_lbl 0214 `"214"', add
label define za01a_pernumo_lbl 0215 `"215"', add
label define za01a_pernumo_lbl 0216 `"216"', add
label define za01a_pernumo_lbl 0217 `"217"', add
label define za01a_pernumo_lbl 0218 `"218"', add
label define za01a_pernumo_lbl 0219 `"219"', add
label define za01a_pernumo_lbl 0220 `"220"', add
label define za01a_pernumo_lbl 0221 `"221"', add
label define za01a_pernumo_lbl 0222 `"222"', add
label define za01a_pernumo_lbl 0223 `"223"', add
label define za01a_pernumo_lbl 0224 `"224"', add
label define za01a_pernumo_lbl 0225 `"225"', add
label define za01a_pernumo_lbl 0226 `"226"', add
label define za01a_pernumo_lbl 0227 `"227"', add
label define za01a_pernumo_lbl 0228 `"228"', add
label define za01a_pernumo_lbl 0229 `"229"', add
label define za01a_pernumo_lbl 0230 `"230"', add
label define za01a_pernumo_lbl 0231 `"231"', add
label define za01a_pernumo_lbl 0232 `"232"', add
label define za01a_pernumo_lbl 0233 `"233"', add
label define za01a_pernumo_lbl 0234 `"234"', add
label define za01a_pernumo_lbl 0235 `"235"', add
label define za01a_pernumo_lbl 0236 `"236"', add
label define za01a_pernumo_lbl 0237 `"237"', add
label define za01a_pernumo_lbl 0238 `"238"', add
label define za01a_pernumo_lbl 0239 `"239"', add
label define za01a_pernumo_lbl 0240 `"240"', add
label define za01a_pernumo_lbl 0241 `"241"', add
label define za01a_pernumo_lbl 0242 `"242"', add
label define za01a_pernumo_lbl 0243 `"243"', add
label define za01a_pernumo_lbl 0244 `"244"', add
label define za01a_pernumo_lbl 0245 `"245"', add
label define za01a_pernumo_lbl 0246 `"246"', add
label define za01a_pernumo_lbl 0247 `"247"', add
label define za01a_pernumo_lbl 0248 `"248"', add
label define za01a_pernumo_lbl 0249 `"249"', add
label define za01a_pernumo_lbl 0250 `"250"', add
label define za01a_pernumo_lbl 0251 `"251"', add
label define za01a_pernumo_lbl 0252 `"252"', add
label define za01a_pernumo_lbl 0253 `"253"', add
label define za01a_pernumo_lbl 0254 `"254"', add
label define za01a_pernumo_lbl 0255 `"255"', add
label define za01a_pernumo_lbl 0256 `"256"', add
label define za01a_pernumo_lbl 0257 `"257"', add
label define za01a_pernumo_lbl 0258 `"258"', add
label define za01a_pernumo_lbl 0259 `"259"', add
label define za01a_pernumo_lbl 0260 `"260"', add
label define za01a_pernumo_lbl 0261 `"261"', add
label define za01a_pernumo_lbl 0262 `"262"', add
label define za01a_pernumo_lbl 0263 `"263"', add
label define za01a_pernumo_lbl 0264 `"264"', add
label define za01a_pernumo_lbl 0265 `"265"', add
label define za01a_pernumo_lbl 0266 `"266"', add
label define za01a_pernumo_lbl 0267 `"267"', add
label define za01a_pernumo_lbl 0268 `"268"', add
label define za01a_pernumo_lbl 0269 `"269"', add
label define za01a_pernumo_lbl 0270 `"270"', add
label define za01a_pernumo_lbl 0271 `"271"', add
label define za01a_pernumo_lbl 0272 `"272"', add
label define za01a_pernumo_lbl 0273 `"273"', add
label define za01a_pernumo_lbl 0274 `"274"', add
label define za01a_pernumo_lbl 0275 `"275"', add
label define za01a_pernumo_lbl 0276 `"276"', add
label define za01a_pernumo_lbl 0277 `"277"', add
label define za01a_pernumo_lbl 0278 `"278"', add
label define za01a_pernumo_lbl 0279 `"279"', add
label define za01a_pernumo_lbl 0280 `"280"', add
label define za01a_pernumo_lbl 0281 `"281"', add
label define za01a_pernumo_lbl 0282 `"282"', add
label define za01a_pernumo_lbl 0283 `"283"', add
label define za01a_pernumo_lbl 0284 `"284"', add
label define za01a_pernumo_lbl 0285 `"285"', add
label define za01a_pernumo_lbl 0286 `"286"', add
label define za01a_pernumo_lbl 0287 `"287"', add
label define za01a_pernumo_lbl 0288 `"288"', add
label define za01a_pernumo_lbl 0289 `"289"', add
label define za01a_pernumo_lbl 0290 `"290"', add
label define za01a_pernumo_lbl 0291 `"291"', add
label define za01a_pernumo_lbl 0292 `"292"', add
label define za01a_pernumo_lbl 0293 `"293"', add
label define za01a_pernumo_lbl 0294 `"294"', add
label define za01a_pernumo_lbl 0295 `"295"', add
label define za01a_pernumo_lbl 0296 `"296"', add
label define za01a_pernumo_lbl 0297 `"297"', add
label define za01a_pernumo_lbl 0298 `"298"', add
label define za01a_pernumo_lbl 0299 `"299"', add
label define za01a_pernumo_lbl 0300 `"300"', add
label define za01a_pernumo_lbl 0301 `"301"', add
label define za01a_pernumo_lbl 0302 `"302"', add
label define za01a_pernumo_lbl 0303 `"303"', add
label define za01a_pernumo_lbl 0304 `"304"', add
label define za01a_pernumo_lbl 0305 `"305"', add
label define za01a_pernumo_lbl 0306 `"306"', add
label define za01a_pernumo_lbl 0307 `"307"', add
label define za01a_pernumo_lbl 0308 `"308"', add
label define za01a_pernumo_lbl 0309 `"309"', add
label define za01a_pernumo_lbl 0310 `"310"', add
label define za01a_pernumo_lbl 0311 `"311"', add
label define za01a_pernumo_lbl 0312 `"312"', add
label define za01a_pernumo_lbl 0313 `"313"', add
label define za01a_pernumo_lbl 0314 `"314"', add
label define za01a_pernumo_lbl 0315 `"315"', add
label define za01a_pernumo_lbl 0316 `"316"', add
label define za01a_pernumo_lbl 0317 `"317"', add
label define za01a_pernumo_lbl 0318 `"318"', add
label define za01a_pernumo_lbl 0319 `"319"', add
label define za01a_pernumo_lbl 0320 `"320"', add
label define za01a_pernumo_lbl 0321 `"321"', add
label define za01a_pernumo_lbl 0322 `"322"', add
label define za01a_pernumo_lbl 0323 `"323"', add
label define za01a_pernumo_lbl 0324 `"324"', add
label define za01a_pernumo_lbl 0325 `"325"', add
label define za01a_pernumo_lbl 0326 `"326"', add
label define za01a_pernumo_lbl 0327 `"327"', add
label define za01a_pernumo_lbl 0328 `"328"', add
label define za01a_pernumo_lbl 0329 `"329"', add
label define za01a_pernumo_lbl 0330 `"330"', add
label define za01a_pernumo_lbl 0331 `"331"', add
label define za01a_pernumo_lbl 0332 `"332"', add
label define za01a_pernumo_lbl 0333 `"333"', add
label define za01a_pernumo_lbl 0334 `"334"', add
label define za01a_pernumo_lbl 0335 `"335"', add
label define za01a_pernumo_lbl 0336 `"336"', add
label define za01a_pernumo_lbl 0337 `"337"', add
label define za01a_pernumo_lbl 0338 `"338"', add
label define za01a_pernumo_lbl 0339 `"339"', add
label define za01a_pernumo_lbl 0340 `"340"', add
label define za01a_pernumo_lbl 0341 `"341"', add
label define za01a_pernumo_lbl 0342 `"342"', add
label define za01a_pernumo_lbl 0343 `"343"', add
label define za01a_pernumo_lbl 0344 `"344"', add
label define za01a_pernumo_lbl 0345 `"345"', add
label define za01a_pernumo_lbl 0346 `"346"', add
label define za01a_pernumo_lbl 0347 `"347"', add
label define za01a_pernumo_lbl 0348 `"348"', add
label define za01a_pernumo_lbl 0349 `"349"', add
label define za01a_pernumo_lbl 0350 `"350"', add
label define za01a_pernumo_lbl 0351 `"351"', add
label define za01a_pernumo_lbl 0352 `"352"', add
label define za01a_pernumo_lbl 0353 `"353"', add
label define za01a_pernumo_lbl 0354 `"354"', add
label define za01a_pernumo_lbl 0355 `"355"', add
label define za01a_pernumo_lbl 0356 `"356"', add
label define za01a_pernumo_lbl 0357 `"357"', add
label define za01a_pernumo_lbl 0358 `"358"', add
label define za01a_pernumo_lbl 0359 `"359"', add
label define za01a_pernumo_lbl 0360 `"360"', add
label define za01a_pernumo_lbl 0361 `"361"', add
label define za01a_pernumo_lbl 0362 `"362"', add
label define za01a_pernumo_lbl 0363 `"363"', add
label define za01a_pernumo_lbl 0364 `"364"', add
label define za01a_pernumo_lbl 0365 `"365"', add
label define za01a_pernumo_lbl 0366 `"366"', add
label define za01a_pernumo_lbl 0367 `"367"', add
label define za01a_pernumo_lbl 0368 `"368"', add
label define za01a_pernumo_lbl 0369 `"369"', add
label define za01a_pernumo_lbl 0370 `"370"', add
label define za01a_pernumo_lbl 0371 `"371"', add
label define za01a_pernumo_lbl 0372 `"372"', add
label define za01a_pernumo_lbl 0373 `"373"', add
label define za01a_pernumo_lbl 0374 `"374"', add
label define za01a_pernumo_lbl 0375 `"375"', add
label define za01a_pernumo_lbl 0376 `"376"', add
label define za01a_pernumo_lbl 0377 `"377"', add
label define za01a_pernumo_lbl 0378 `"378"', add
label define za01a_pernumo_lbl 0379 `"379"', add
label define za01a_pernumo_lbl 0380 `"380"', add
label define za01a_pernumo_lbl 0381 `"381"', add
label define za01a_pernumo_lbl 0382 `"382"', add
label define za01a_pernumo_lbl 0383 `"383"', add
label define za01a_pernumo_lbl 0384 `"384"', add
label define za01a_pernumo_lbl 0385 `"385"', add
label define za01a_pernumo_lbl 0386 `"386"', add
label define za01a_pernumo_lbl 0387 `"387"', add
label define za01a_pernumo_lbl 0388 `"388"', add
label define za01a_pernumo_lbl 0389 `"389"', add
label define za01a_pernumo_lbl 0390 `"390"', add
label define za01a_pernumo_lbl 0391 `"391"', add
label define za01a_pernumo_lbl 0392 `"392"', add
label define za01a_pernumo_lbl 0393 `"393"', add
label define za01a_pernumo_lbl 0394 `"394"', add
label define za01a_pernumo_lbl 0395 `"395"', add
label define za01a_pernumo_lbl 0396 `"396"', add
label define za01a_pernumo_lbl 0397 `"397"', add
label define za01a_pernumo_lbl 0398 `"398"', add
label define za01a_pernumo_lbl 0399 `"399"', add
label define za01a_pernumo_lbl 0400 `"400"', add
label define za01a_pernumo_lbl 0401 `"401"', add
label define za01a_pernumo_lbl 0402 `"402"', add
label define za01a_pernumo_lbl 0403 `"403"', add
label define za01a_pernumo_lbl 0404 `"404"', add
label define za01a_pernumo_lbl 0405 `"405"', add
label define za01a_pernumo_lbl 0406 `"406"', add
label define za01a_pernumo_lbl 0407 `"407"', add
label define za01a_pernumo_lbl 0408 `"408"', add
label define za01a_pernumo_lbl 0409 `"409"', add
label define za01a_pernumo_lbl 0410 `"410"', add
label define za01a_pernumo_lbl 0411 `"411"', add
label define za01a_pernumo_lbl 0412 `"412"', add
label values za01a_pernumo za01a_pernumo_lbl

label define za01a_bmo_lbl 01 `"1"'
label define za01a_bmo_lbl 02 `"2"', add
label define za01a_bmo_lbl 03 `"3"', add
label define za01a_bmo_lbl 04 `"4"', add
label define za01a_bmo_lbl 05 `"5"', add
label define za01a_bmo_lbl 06 `"6"', add
label define za01a_bmo_lbl 07 `"7"', add
label define za01a_bmo_lbl 08 `"8"', add
label define za01a_bmo_lbl 09 `"9"', add
label define za01a_bmo_lbl 10 `"10"', add
label define za01a_bmo_lbl 11 `"11"', add
label define za01a_bmo_lbl 12 `"12"', add
label values za01a_bmo za01a_bmo_lbl

label define za01a_byr_lbl 1880 `"1880"'
label define za01a_byr_lbl 1881 `"1881"', add
label define za01a_byr_lbl 1882 `"1882"', add
label define za01a_byr_lbl 1883 `"1883"', add
label define za01a_byr_lbl 1884 `"1884"', add
label define za01a_byr_lbl 1885 `"1885"', add
label define za01a_byr_lbl 1886 `"1886"', add
label define za01a_byr_lbl 1887 `"1887"', add
label define za01a_byr_lbl 1888 `"1888"', add
label define za01a_byr_lbl 1889 `"1889"', add
label define za01a_byr_lbl 1890 `"1890"', add
label define za01a_byr_lbl 1891 `"1891"', add
label define za01a_byr_lbl 1892 `"1892"', add
label define za01a_byr_lbl 1893 `"1893"', add
label define za01a_byr_lbl 1894 `"1894"', add
label define za01a_byr_lbl 1895 `"1895"', add
label define za01a_byr_lbl 1896 `"1896"', add
label define za01a_byr_lbl 1897 `"1897"', add
label define za01a_byr_lbl 1898 `"1898"', add
label define za01a_byr_lbl 1899 `"1899"', add
label define za01a_byr_lbl 1900 `"1900"', add
label define za01a_byr_lbl 1901 `"1901"', add
label define za01a_byr_lbl 1902 `"1902"', add
label define za01a_byr_lbl 1903 `"1903"', add
label define za01a_byr_lbl 1904 `"1904"', add
label define za01a_byr_lbl 1905 `"1905"', add
label define za01a_byr_lbl 1906 `"1906"', add
label define za01a_byr_lbl 1907 `"1907"', add
label define za01a_byr_lbl 1908 `"1908"', add
label define za01a_byr_lbl 1909 `"1909"', add
label define za01a_byr_lbl 1910 `"1910"', add
label define za01a_byr_lbl 1911 `"1911"', add
label define za01a_byr_lbl 1912 `"1912"', add
label define za01a_byr_lbl 1913 `"1913"', add
label define za01a_byr_lbl 1914 `"1914"', add
label define za01a_byr_lbl 1915 `"1915"', add
label define za01a_byr_lbl 1916 `"1916"', add
label define za01a_byr_lbl 1917 `"1917"', add
label define za01a_byr_lbl 1918 `"1918"', add
label define za01a_byr_lbl 1919 `"1919"', add
label define za01a_byr_lbl 1920 `"1920"', add
label define za01a_byr_lbl 1921 `"1921"', add
label define za01a_byr_lbl 1922 `"1922"', add
label define za01a_byr_lbl 1923 `"1923"', add
label define za01a_byr_lbl 1924 `"1924"', add
label define za01a_byr_lbl 1925 `"1925"', add
label define za01a_byr_lbl 1926 `"1926"', add
label define za01a_byr_lbl 1927 `"1927"', add
label define za01a_byr_lbl 1928 `"1928"', add
label define za01a_byr_lbl 1929 `"1929"', add
label define za01a_byr_lbl 1930 `"1930"', add
label define za01a_byr_lbl 1931 `"1931"', add
label define za01a_byr_lbl 1932 `"1932"', add
label define za01a_byr_lbl 1933 `"1933"', add
label define za01a_byr_lbl 1934 `"1934"', add
label define za01a_byr_lbl 1935 `"1935"', add
label define za01a_byr_lbl 1936 `"1936"', add
label define za01a_byr_lbl 1937 `"1937"', add
label define za01a_byr_lbl 1938 `"1938"', add
label define za01a_byr_lbl 1939 `"1939"', add
label define za01a_byr_lbl 1940 `"1940"', add
label define za01a_byr_lbl 1941 `"1941"', add
label define za01a_byr_lbl 1942 `"1942"', add
label define za01a_byr_lbl 1943 `"1943"', add
label define za01a_byr_lbl 1944 `"1944"', add
label define za01a_byr_lbl 1945 `"1945"', add
label define za01a_byr_lbl 1946 `"1946"', add
label define za01a_byr_lbl 1947 `"1947"', add
label define za01a_byr_lbl 1948 `"1948"', add
label define za01a_byr_lbl 1949 `"1949"', add
label define za01a_byr_lbl 1950 `"1950"', add
label define za01a_byr_lbl 1951 `"1951"', add
label define za01a_byr_lbl 1952 `"1952"', add
label define za01a_byr_lbl 1953 `"1953"', add
label define za01a_byr_lbl 1954 `"1954"', add
label define za01a_byr_lbl 1955 `"1955"', add
label define za01a_byr_lbl 1956 `"1956"', add
label define za01a_byr_lbl 1957 `"1957"', add
label define za01a_byr_lbl 1958 `"1958"', add
label define za01a_byr_lbl 1959 `"1959"', add
label define za01a_byr_lbl 1960 `"1960"', add
label define za01a_byr_lbl 1961 `"1961"', add
label define za01a_byr_lbl 1962 `"1962"', add
label define za01a_byr_lbl 1963 `"1963"', add
label define za01a_byr_lbl 1964 `"1964"', add
label define za01a_byr_lbl 1965 `"1965"', add
label define za01a_byr_lbl 1966 `"1966"', add
label define za01a_byr_lbl 1967 `"1967"', add
label define za01a_byr_lbl 1968 `"1968"', add
label define za01a_byr_lbl 1969 `"1969"', add
label define za01a_byr_lbl 1970 `"1970"', add
label define za01a_byr_lbl 1971 `"1971"', add
label define za01a_byr_lbl 1972 `"1972"', add
label define za01a_byr_lbl 1973 `"1973"', add
label define za01a_byr_lbl 1974 `"1974"', add
label define za01a_byr_lbl 1975 `"1975"', add
label define za01a_byr_lbl 1976 `"1976"', add
label define za01a_byr_lbl 1977 `"1977"', add
label define za01a_byr_lbl 1978 `"1978"', add
label define za01a_byr_lbl 1979 `"1979"', add
label define za01a_byr_lbl 1980 `"1980"', add
label define za01a_byr_lbl 1981 `"1981"', add
label define za01a_byr_lbl 1982 `"1982"', add
label define za01a_byr_lbl 1983 `"1983"', add
label define za01a_byr_lbl 1984 `"1984"', add
label define za01a_byr_lbl 1985 `"1985"', add
label define za01a_byr_lbl 1986 `"1986"', add
label define za01a_byr_lbl 1987 `"1987"', add
label define za01a_byr_lbl 1988 `"1988"', add
label define za01a_byr_lbl 1989 `"1989"', add
label define za01a_byr_lbl 1990 `"1990"', add
label define za01a_byr_lbl 1991 `"1991"', add
label define za01a_byr_lbl 1992 `"1992"', add
label define za01a_byr_lbl 1993 `"1993"', add
label define za01a_byr_lbl 1994 `"1994"', add
label define za01a_byr_lbl 1995 `"1995"', add
label define za01a_byr_lbl 1996 `"1996"', add
label define za01a_byr_lbl 1997 `"1997"', add
label define za01a_byr_lbl 1998 `"1998"', add
label define za01a_byr_lbl 1999 `"1999"', add
label define za01a_byr_lbl 2000 `"2000"', add
label define za01a_byr_lbl 2001 `"2001"', add
label values za01a_byr za01a_byr_lbl

label define za01a_age_lbl 000 `"0"'
label define za01a_age_lbl 001 `"1"', add
label define za01a_age_lbl 002 `"2"', add
label define za01a_age_lbl 003 `"3"', add
label define za01a_age_lbl 004 `"4"', add
label define za01a_age_lbl 005 `"5"', add
label define za01a_age_lbl 006 `"6"', add
label define za01a_age_lbl 007 `"7"', add
label define za01a_age_lbl 008 `"8"', add
label define za01a_age_lbl 009 `"9"', add
label define za01a_age_lbl 010 `"10"', add
label define za01a_age_lbl 011 `"11"', add
label define za01a_age_lbl 012 `"12"', add
label define za01a_age_lbl 013 `"13"', add
label define za01a_age_lbl 014 `"14"', add
label define za01a_age_lbl 015 `"15"', add
label define za01a_age_lbl 016 `"16"', add
label define za01a_age_lbl 017 `"17"', add
label define za01a_age_lbl 018 `"18"', add
label define za01a_age_lbl 019 `"19"', add
label define za01a_age_lbl 020 `"20"', add
label define za01a_age_lbl 021 `"21"', add
label define za01a_age_lbl 022 `"22"', add
label define za01a_age_lbl 023 `"23"', add
label define za01a_age_lbl 024 `"24"', add
label define za01a_age_lbl 025 `"25"', add
label define za01a_age_lbl 026 `"26"', add
label define za01a_age_lbl 027 `"27"', add
label define za01a_age_lbl 028 `"28"', add
label define za01a_age_lbl 029 `"29"', add
label define za01a_age_lbl 030 `"30"', add
label define za01a_age_lbl 031 `"31"', add
label define za01a_age_lbl 032 `"32"', add
label define za01a_age_lbl 033 `"33"', add
label define za01a_age_lbl 034 `"34"', add
label define za01a_age_lbl 035 `"35"', add
label define za01a_age_lbl 036 `"36"', add
label define za01a_age_lbl 037 `"37"', add
label define za01a_age_lbl 038 `"38"', add
label define za01a_age_lbl 039 `"39"', add
label define za01a_age_lbl 040 `"40"', add
label define za01a_age_lbl 041 `"41"', add
label define za01a_age_lbl 042 `"42"', add
label define za01a_age_lbl 043 `"43"', add
label define za01a_age_lbl 044 `"44"', add
label define za01a_age_lbl 045 `"45"', add
label define za01a_age_lbl 046 `"46"', add
label define za01a_age_lbl 047 `"47"', add
label define za01a_age_lbl 048 `"48"', add
label define za01a_age_lbl 049 `"49"', add
label define za01a_age_lbl 050 `"50"', add
label define za01a_age_lbl 051 `"51"', add
label define za01a_age_lbl 052 `"52"', add
label define za01a_age_lbl 053 `"53"', add
label define za01a_age_lbl 054 `"54"', add
label define za01a_age_lbl 055 `"55"', add
label define za01a_age_lbl 056 `"56"', add
label define za01a_age_lbl 057 `"57"', add
label define za01a_age_lbl 058 `"58"', add
label define za01a_age_lbl 059 `"59"', add
label define za01a_age_lbl 060 `"60"', add
label define za01a_age_lbl 061 `"61"', add
label define za01a_age_lbl 062 `"62"', add
label define za01a_age_lbl 063 `"63"', add
label define za01a_age_lbl 064 `"64"', add
label define za01a_age_lbl 065 `"65"', add
label define za01a_age_lbl 066 `"66"', add
label define za01a_age_lbl 067 `"67"', add
label define za01a_age_lbl 068 `"68"', add
label define za01a_age_lbl 069 `"69"', add
label define za01a_age_lbl 070 `"70"', add
label define za01a_age_lbl 071 `"71"', add
label define za01a_age_lbl 072 `"72"', add
label define za01a_age_lbl 073 `"73"', add
label define za01a_age_lbl 074 `"74"', add
label define za01a_age_lbl 075 `"75"', add
label define za01a_age_lbl 076 `"76"', add
label define za01a_age_lbl 077 `"77"', add
label define za01a_age_lbl 078 `"78"', add
label define za01a_age_lbl 079 `"79"', add
label define za01a_age_lbl 080 `"80"', add
label define za01a_age_lbl 081 `"81"', add
label define za01a_age_lbl 082 `"82"', add
label define za01a_age_lbl 083 `"83"', add
label define za01a_age_lbl 084 `"84"', add
label define za01a_age_lbl 085 `"85"', add
label define za01a_age_lbl 086 `"86"', add
label define za01a_age_lbl 087 `"87"', add
label define za01a_age_lbl 088 `"88"', add
label define za01a_age_lbl 089 `"89"', add
label define za01a_age_lbl 090 `"90"', add
label define za01a_age_lbl 091 `"91"', add
label define za01a_age_lbl 092 `"92"', add
label define za01a_age_lbl 093 `"93"', add
label define za01a_age_lbl 094 `"94"', add
label define za01a_age_lbl 095 `"95"', add
label define za01a_age_lbl 096 `"96"', add
label define za01a_age_lbl 097 `"97"', add
label define za01a_age_lbl 098 `"98"', add
label define za01a_age_lbl 099 `"99"', add
label define za01a_age_lbl 100 `"100"', add
label define za01a_age_lbl 101 `"101"', add
label define za01a_age_lbl 102 `"102"', add
label define za01a_age_lbl 103 `"103"', add
label define za01a_age_lbl 104 `"104"', add
label define za01a_age_lbl 105 `"105"', add
label define za01a_age_lbl 106 `"106"', add
label define za01a_age_lbl 107 `"107"', add
label define za01a_age_lbl 108 `"108"', add
label define za01a_age_lbl 109 `"109"', add
label define za01a_age_lbl 110 `"110"', add
label define za01a_age_lbl 111 `"111"', add
label define za01a_age_lbl 112 `"112"', add
label define za01a_age_lbl 113 `"113"', add
label define za01a_age_lbl 114 `"114"', add
label define za01a_age_lbl 115 `"115"', add
label define za01a_age_lbl 116 `"116"', add
label define za01a_age_lbl 117 `"117"', add
label define za01a_age_lbl 118 `"118"', add
label define za01a_age_lbl 119 `"119"', add
label define za01a_age_lbl 120 `"120"', add
label values za01a_age za01a_age_lbl

label define za01a_sex_lbl 1 `"Male"'
label define za01a_sex_lbl 2 `"Female"', add
label values za01a_sex za01a_sex_lbl

label define za01a_relate_lbl 01 `"Head/Acting head"'
label define za01a_relate_lbl 02 `"Husband/wife/partner"', add
label define za01a_relate_lbl 03 `"Son/daughter"', add
label define za01a_relate_lbl 04 `"Adopted son/daughter"', add
label define za01a_relate_lbl 05 `"Stepson/stepdaughter"', add
label define za01a_relate_lbl 06 `"Brother/sister"', add
label define za01a_relate_lbl 07 `"Parent"', add
label define za01a_relate_lbl 08 `"Parent-in-law"', add
label define za01a_relate_lbl 09 `"Grandchild/great-grandchild"', add
label define za01a_relate_lbl 10 `"Son/daughter-in-law"', add
label define za01a_relate_lbl 11 `"Brother/sister-in-law"', add
label define za01a_relate_lbl 12 `"Other relative"', add
label define za01a_relate_lbl 13 `"Non-related person"', add
label define za01a_relate_lbl 99 `"Member of collective"', add
label values za01a_relate za01a_relate_lbl

label define za01a_marst_lbl 1 `"Married civil/religious"'
label define za01a_marst_lbl 2 `"Married traditional/customary"', add
label define za01a_marst_lbl 3 `"Polygamous marriage"', add
label define za01a_marst_lbl 4 `"Living together as unmarried partners"', add
label define za01a_marst_lbl 5 `"Never married"', add
label define za01a_marst_lbl 6 `"Widower/widow"', add
label define za01a_marst_lbl 7 `"Separated"', add
label define za01a_marst_lbl 8 `"Divorced"', add
label values za01a_marst za01a_marst_lbl

label define za01a_sploco_lbl 01 `"1"'
label define za01a_sploco_lbl 02 `"2"', add
label define za01a_sploco_lbl 03 `"3"', add
label define za01a_sploco_lbl 04 `"4"', add
label define za01a_sploco_lbl 05 `"5"', add
label define za01a_sploco_lbl 06 `"6"', add
label define za01a_sploco_lbl 07 `"7"', add
label define za01a_sploco_lbl 08 `"8"', add
label define za01a_sploco_lbl 09 `"9"', add
label define za01a_sploco_lbl 10 `"10"', add
label define za01a_sploco_lbl 11 `"11"', add
label define za01a_sploco_lbl 12 `"12"', add
label define za01a_sploco_lbl 13 `"13"', add
label define za01a_sploco_lbl 14 `"14"', add
label define za01a_sploco_lbl 15 `"15"', add
label define za01a_sploco_lbl 16 `"16"', add
label define za01a_sploco_lbl 17 `"17"', add
label define za01a_sploco_lbl 18 `"18"', add
label define za01a_sploco_lbl 19 `"19"', add
label define za01a_sploco_lbl 20 `"20"', add
label define za01a_sploco_lbl 21 `"21"', add
label define za01a_sploco_lbl 22 `"22"', add
label define za01a_sploco_lbl 36 `"36"', add
label define za01a_sploco_lbl 98 `"The spouse is not in the household"', add
label define za01a_sploco_lbl 99 `"NIU (not in universe)"', add
label values za01a_sploco za01a_sploco_lbl

label define za01a_race_lbl 1 `"Black African"'
label define za01a_race_lbl 2 `"Coloured"', add
label define za01a_race_lbl 3 `"Indian or Asian"', add
label define za01a_race_lbl 4 `"White"', add
label values za01a_race za01a_race_lbl

label define za01a_lang_lbl 01 `"Afrikaans"'
label define za01a_lang_lbl 02 `"English"', add
label define za01a_lang_lbl 03 `"IsiNdebele"', add
label define za01a_lang_lbl 04 `"IsiXhosa"', add
label define za01a_lang_lbl 05 `"IsiZulu"', add
label define za01a_lang_lbl 06 `"Sepedi"', add
label define za01a_lang_lbl 07 `"Sesotho"', add
label define za01a_lang_lbl 08 `"Setswana"', add
label define za01a_lang_lbl 09 `"Siswati"', add
label define za01a_lang_lbl 10 `"Tshivenda"', add
label define za01a_lang_lbl 11 `"Xitsonga"', add
label define za01a_lang_lbl 12 `"Other"', add
label values za01a_lang za01a_lang_lbl

label define za01a_relig1_lbl 01 `"Dutch Reformed Churches"'
label define za01a_relig1_lbl 02 `"Reformed Churches"', add
label define za01a_relig1_lbl 03 `"Nederduits Hervormde Kerk"', add
label define za01a_relig1_lbl 04 `"Anglican Church"', add
label define za01a_relig1_lbl 05 `"Church of England in Sa"', add
label define za01a_relig1_lbl 06 `"International Fellowship of Christian Churches"', add
label define za01a_relig1_lbl 07 `"Methodist Church of Sa"', add
label define za01a_relig1_lbl 08 `"Presbyterian Churches"', add
label define za01a_relig1_lbl 09 `"United Congregational Church of Sa"', add
label define za01a_relig1_lbl 10 `"Lutheran Church of Southern Africa"', add
label define za01a_relig1_lbl 11 `"Roman Catholic Church"', add
label define za01a_relig1_lbl 12 `"Apostolic Faith Mission of Sa"', add
label define za01a_relig1_lbl 13 `"Other Apostolic Churches"', add
label define za01a_relig1_lbl 14 `"Baptist Churches of Southern Africa"', add
label define za01a_relig1_lbl 15 `"Pinkster Protestante Kerk"', add
label define za01a_relig1_lbl 16 `"Afrikaanse Protestante Kerk"', add
label define za01a_relig1_lbl 17 `"Full Gospel Church of God in Southern Africa"', add
label define za01a_relig1_lbl 18 `"Orthodox Churches"', add
label define za01a_relig1_lbl 19 `"Church of Christ of Latter Day Saints"', add
label define za01a_relig1_lbl 20 `"Pentecostal Churches"', add
label define za01a_relig1_lbl 21 `"Salvation Army United Church"', add
label define za01a_relig1_lbl 22 `"Seventh-Day Adventist Church"', add
label define za01a_relig1_lbl 23 `"New Apostolic Church"', add
label define za01a_relig1_lbl 24 `"Assemblies of God of Sa"', add
label define za01a_relig1_lbl 25 `"St Engenas Zion Christian Church"', add
label define za01a_relig1_lbl 26 `"Zion Christian Church"', add
label define za01a_relig1_lbl 27 `"Bandla Lama Nazaretha"', add
label define za01a_relig1_lbl 28 `"African Methodist Episcopal Church"', add
label define za01a_relig1_lbl 29 `"St John's Apostolic Church"', add
label define za01a_relig1_lbl 30 `"International Pentecost Church"', add
label define za01a_relig1_lbl 31 `"Other African Independent Churches"', add
label define za01a_relig1_lbl 32 `"Other Christian Churches"', add
label define za01a_relig1_lbl 33 `"African Traditional Belief"', add
label define za01a_relig1_lbl 34 `"Judaism"', add
label define za01a_relig1_lbl 35 `"Buddhism"', add
label define za01a_relig1_lbl 36 `"Taoist"', add
label define za01a_relig1_lbl 37 `"Confucian"', add
label define za01a_relig1_lbl 38 `"Hinduism"', add
label define za01a_relig1_lbl 39 `"Islam"', add
label define za01a_relig1_lbl 40 `"Bahais"', add
label define za01a_relig1_lbl 41 `"Other Non-Christian Churched"', add
label define za01a_relig1_lbl 42 `"Jehovah's Witnesses"', add
label define za01a_relig1_lbl 43 `"Other Non-Christian Religions"', add
label define za01a_relig1_lbl 44 `"Other Methodist Churches"', add
label define za01a_relig1_lbl 45 `"Other Presbyterian Churches"', add
label define za01a_relig1_lbl 46 `"Other Congregational Churches"', add
label define za01a_relig1_lbl 47 `"Other Lutheran Churches"', add
label define za01a_relig1_lbl 48 `"Other Catholic Churches"', add
label define za01a_relig1_lbl 49 `"Other Baptist Churches"', add
label define za01a_relig1_lbl 50 `"Other Pentecostal Churches"', add
label define za01a_relig1_lbl 51 `"Other Orthodox Churches"', add
label define za01a_relig1_lbl 52 `"Other (Seventh-Day) Adventist Churches"', add
label define za01a_relig1_lbl 53 `"Other African Apostolic Churches"', add
label define za01a_relig1_lbl 54 `"Other Assemblies"', add
label define za01a_relig1_lbl 55 `"Other Zionist Churches"', add
label define za01a_relig1_lbl 56 `"Church of the Nazarene"', add
label define za01a_relig1_lbl 57 `"Christian Scientist"', add
label define za01a_relig1_lbl 58 `"Christian Centres"', add
label define za01a_relig1_lbl 59 `"Ethiopian type Churches"', add
label define za01a_relig1_lbl 60 `"Ethnic Churches"', add
label define za01a_relig1_lbl 61 `"Other Evangelical Churches"', add
label define za01a_relig1_lbl 62 `"Other Charismatic Churches"', add
label define za01a_relig1_lbl 63 `"No Religion"', add
label define za01a_relig1_lbl 64 `"Refused"', add
label define za01a_relig1_lbl 65 `"Other"', add
label define za01a_relig1_lbl 98 `"Unknown"', add
label values za01a_relig1 za01a_relig1_lbl

label define za01a_religgr_lbl 01 `"Dutch reformed churches"'
label define za01a_religgr_lbl 02 `"Zion Christian churches"', add
label define za01a_religgr_lbl 03 `"Catholic churches"', add
label define za01a_religgr_lbl 04 `"Methodist churches"', add
label define za01a_religgr_lbl 05 `"Pentecostal/Charismatic churches"', add
label define za01a_religgr_lbl 06 `"Anglican churches"', add
label define za01a_religgr_lbl 07 `"Apostolic Faith Mission"', add
label define za01a_religgr_lbl 08 `"Lutheran churches"', add
label define za01a_religgr_lbl 09 `"Presbyterian churches"', add
label define za01a_religgr_lbl 10 `"Bandla Lama Nazaretha"', add
label define za01a_religgr_lbl 11 `"Baptist churches"', add
label define za01a_religgr_lbl 12 `"Congregational churches"', add
label define za01a_religgr_lbl 13 `"Orthodox churches"', add
label define za01a_religgr_lbl 14 `"Other Apostolic churches"', add
label define za01a_religgr_lbl 15 `"Other Zionist churches"', add
label define za01a_religgr_lbl 16 `"Ethiopian-type churches"', add
label define za01a_religgr_lbl 17 `"Other Reformed churches"', add
label define za01a_religgr_lbl 18 `"Other African independent churches"', add
label define za01a_religgr_lbl 19 `"Otehr Christian churches"', add
label define za01a_religgr_lbl 20 `"African traditional belief"', add
label define za01a_religgr_lbl 21 `"Judaism"', add
label define za01a_religgr_lbl 22 `"Hinduism"', add
label define za01a_religgr_lbl 23 `"Islam"', add
label define za01a_religgr_lbl 24 `"Other non-Christian churches"', add
label define za01a_religgr_lbl 25 `"No religion"', add
label define za01a_religgr_lbl 98 `"Unknown"', add
label values za01a_religgr za01a_religgr_lbl

label define za01a_bornsaf_lbl 1 `"Yes"'
label define za01a_bornsaf_lbl 2 `"No"', add
label values za01a_bornsaf za01a_bornsaf_lbl

label define za01a_bplprov_lbl 0 `"NIU (not in universe)"'
label define za01a_bplprov_lbl 1 `"Western Cape"', add
label define za01a_bplprov_lbl 2 `"Eastern Cape"', add
label define za01a_bplprov_lbl 3 `"Northern Cape"', add
label define za01a_bplprov_lbl 4 `"Free State"', add
label define za01a_bplprov_lbl 5 `"KwaZulu-Natal"', add
label define za01a_bplprov_lbl 6 `"North West"', add
label define za01a_bplprov_lbl 7 `"Gauteng"', add
label define za01a_bplprov_lbl 8 `"Mpumalanga"', add
label define za01a_bplprov_lbl 9 `"Limpopo"', add
label values za01a_bplprov za01a_bplprov_lbl

label define za01a_bplctry_lbl 111 `"Lesotho"'
label define za01a_bplctry_lbl 112 `"Namibia"', add
label define za01a_bplctry_lbl 113 `"Botswana"', add
label define za01a_bplctry_lbl 114 `"Zimbabwe"', add
label define za01a_bplctry_lbl 115 `"Mozambique"', add
label define za01a_bplctry_lbl 116 `"Swaziland"', add
label define za01a_bplctry_lbl 121 `"Angola"', add
label define za01a_bplctry_lbl 122 `"Democratic Republic Of The Congo (Zaire)"', add
label define za01a_bplctry_lbl 123 `"Malawi"', add
label define za01a_bplctry_lbl 124 `"Mauritius"', add
label define za01a_bplctry_lbl 125 `"Seychelles"', add
label define za01a_bplctry_lbl 126 `"Tanzania"', add
label define za01a_bplctry_lbl 127 `"Zambia"', add
label define za01a_bplctry_lbl 130 `"Algeria"', add
label define za01a_bplctry_lbl 131 `"Benin"', add
label define za01a_bplctry_lbl 132 `"Burkina Faso"', add
label define za01a_bplctry_lbl 133 `"Burundi"', add
label define za01a_bplctry_lbl 134 `"Cameroon"', add
label define za01a_bplctry_lbl 135 `"Cape Verde"', add
label define za01a_bplctry_lbl 136 `"Central African Republic"', add
label define za01a_bplctry_lbl 137 `"Chad"', add
label define za01a_bplctry_lbl 138 `"Comoros"', add
label define za01a_bplctry_lbl 139 `"Congo"', add
label define za01a_bplctry_lbl 140 `"Cote D'ivoire"', add
label define za01a_bplctry_lbl 141 `"Djibouti"', add
label define za01a_bplctry_lbl 142 `"Egypt"', add
label define za01a_bplctry_lbl 143 `"Equatorial Guinea"', add
label define za01a_bplctry_lbl 144 `"Eritrea"', add
label define za01a_bplctry_lbl 145 `"Ethiopia"', add
label define za01a_bplctry_lbl 146 `"Gabon"', add
label define za01a_bplctry_lbl 147 `"Gambia"', add
label define za01a_bplctry_lbl 148 `"Ghana"', add
label define za01a_bplctry_lbl 149 `"Guinea"', add
label define za01a_bplctry_lbl 150 `"Guinea-Bissau"', add
label define za01a_bplctry_lbl 151 `"Kenya"', add
label define za01a_bplctry_lbl 152 `"Liberia"', add
label define za01a_bplctry_lbl 153 `"Libyan Arab Jamahiriya"', add
label define za01a_bplctry_lbl 154 `"Madagascar"', add
label define za01a_bplctry_lbl 155 `"Mali"', add
label define za01a_bplctry_lbl 156 `"Mauritania"', add
label define za01a_bplctry_lbl 157 `"Morocco"', add
label define za01a_bplctry_lbl 158 `"Niger"', add
label define za01a_bplctry_lbl 159 `"Nigeria"', add
label define za01a_bplctry_lbl 160 `"Reunion"', add
label define za01a_bplctry_lbl 161 `"Rwanda"', add
label define za01a_bplctry_lbl 162 `"Saint Helena"', add
label define za01a_bplctry_lbl 163 `"Sao Tome And Principe"', add
label define za01a_bplctry_lbl 164 `"Senegal"', add
label define za01a_bplctry_lbl 165 `"Sierra Leone"', add
label define za01a_bplctry_lbl 166 `"Somalia"', add
label define za01a_bplctry_lbl 167 `"Sudan"', add
label define za01a_bplctry_lbl 168 `"Togo"', add
label define za01a_bplctry_lbl 169 `"Tunisia"', add
label define za01a_bplctry_lbl 170 `"Uganda"', add
label define za01a_bplctry_lbl 171 `"Western Sahara"', add
label define za01a_bplctry_lbl 199 `"Other Africa"', add
label define za01a_bplctry_lbl 201 `"United States"', add
label define za01a_bplctry_lbl 202 `"Anguilla"', add
label define za01a_bplctry_lbl 203 `"Antigua And Barbuda"', add
label define za01a_bplctry_lbl 204 `"Argentina"', add
label define za01a_bplctry_lbl 205 `"Aruba"', add
label define za01a_bplctry_lbl 206 `"Bahamas"', add
label define za01a_bplctry_lbl 207 `"Barbados"', add
label define za01a_bplctry_lbl 208 `"Belize"', add
label define za01a_bplctry_lbl 209 `"Bermuda"', add
label define za01a_bplctry_lbl 210 `"Bolivia"', add
label define za01a_bplctry_lbl 211 `"Brazil"', add
label define za01a_bplctry_lbl 212 `"British Virgin Islands"', add
label define za01a_bplctry_lbl 213 `"Canada"', add
label define za01a_bplctry_lbl 214 `"Caribbean"', add
label define za01a_bplctry_lbl 215 `"Cayman Islands"', add
label define za01a_bplctry_lbl 216 `"Chile"', add
label define za01a_bplctry_lbl 217 `"Colombia"', add
label define za01a_bplctry_lbl 218 `"Costa Rica"', add
label define za01a_bplctry_lbl 219 `"Cuba"', add
label define za01a_bplctry_lbl 220 `"Dominica"', add
label define za01a_bplctry_lbl 221 `"Dominican Republic"', add
label define za01a_bplctry_lbl 222 `"Ecuador"', add
label define za01a_bplctry_lbl 223 `"El Salvador"', add
label define za01a_bplctry_lbl 224 `"Falkland Islands (Malvinas)"', add
label define za01a_bplctry_lbl 225 `"French Guiana"', add
label define za01a_bplctry_lbl 226 `"Greenland"', add
label define za01a_bplctry_lbl 227 `"Grenada"', add
label define za01a_bplctry_lbl 228 `"Guadeloupe"', add
label define za01a_bplctry_lbl 229 `"Guatemala"', add
label define za01a_bplctry_lbl 230 `"Guyana"', add
label define za01a_bplctry_lbl 231 `"Haiti"', add
label define za01a_bplctry_lbl 232 `"Honduras"', add
label define za01a_bplctry_lbl 233 `"Jamaica"', add
label define za01a_bplctry_lbl 234 `"Latin America And The Caribbean"', add
label define za01a_bplctry_lbl 235 `"Martinique"', add
label define za01a_bplctry_lbl 236 `"Mexico"', add
label define za01a_bplctry_lbl 237 `"Montserrat"', add
label define za01a_bplctry_lbl 238 `"Netherlands Antilles"', add
label define za01a_bplctry_lbl 239 `"Nicaragua"', add
label define za01a_bplctry_lbl 240 `"Panama"', add
label define za01a_bplctry_lbl 241 `"Paraguay"', add
label define za01a_bplctry_lbl 242 `"Peru"', add
label define za01a_bplctry_lbl 243 `"Puerto Rico"', add
label define za01a_bplctry_lbl 244 `"Saint Kitts And Nevis"', add
label define za01a_bplctry_lbl 245 `"Saint Lucia"', add
label define za01a_bplctry_lbl 246 `"Saint Pierre And Miquelon"', add
label define za01a_bplctry_lbl 247 `"Saint Vincent And The Grenadines"', add
label define za01a_bplctry_lbl 248 `"Suriname"', add
label define za01a_bplctry_lbl 249 `"Trinidad And Tobago"', add
label define za01a_bplctry_lbl 250 `"Turks And Caicos Islands"', add
label define za01a_bplctry_lbl 251 `"United States Virgin Islands"', add
label define za01a_bplctry_lbl 252 `"Uruguay"', add
label define za01a_bplctry_lbl 253 `"Venezuela"', add
label define za01a_bplctry_lbl 299 `"Other North And South America"', add
label define za01a_bplctry_lbl 301 `"China"', add
label define za01a_bplctry_lbl 302 `"Afghanistan"', add
label define za01a_bplctry_lbl 303 `"Armenia"', add
label define za01a_bplctry_lbl 304 `"Azerbaijan"', add
label define za01a_bplctry_lbl 305 `"Bahrain"', add
label define za01a_bplctry_lbl 306 `"Bangladesh"', add
label define za01a_bplctry_lbl 307 `"Bhutan"', add
label define za01a_bplctry_lbl 308 `"Brunei Darussalam"', add
label define za01a_bplctry_lbl 309 `"Cambodia"', add
label define za01a_bplctry_lbl 310 `"Cyprus"', add
label define za01a_bplctry_lbl 311 `"Democratic People's Republic Of Korea"', add
label define za01a_bplctry_lbl 312 `"East Timor"', add
label define za01a_bplctry_lbl 313 `"Georgia"', add
label define za01a_bplctry_lbl 314 `"Hong Kong Special Administrative Region Of China"', add
label define za01a_bplctry_lbl 315 `"India"', add
label define za01a_bplctry_lbl 316 `"Indonesia"', add
label define za01a_bplctry_lbl 317 `"Iran (Islamic Republic Of)"', add
label define za01a_bplctry_lbl 318 `"Iraq"', add
label define za01a_bplctry_lbl 319 `"Israel"', add
label define za01a_bplctry_lbl 320 `"Japan"', add
label define za01a_bplctry_lbl 321 `"Jordan"', add
label define za01a_bplctry_lbl 322 `"Kazakhstan"', add
label define za01a_bplctry_lbl 323 `"Kuwait"', add
label define za01a_bplctry_lbl 324 `"Kyrgyzstan"', add
label define za01a_bplctry_lbl 325 `"Lao People's Democratic Republic"', add
label define za01a_bplctry_lbl 326 `"Lebanon"', add
label define za01a_bplctry_lbl 327 `"Macao Special Administrative Region Of China"', add
label define za01a_bplctry_lbl 328 `"Malaysia"', add
label define za01a_bplctry_lbl 329 `"Maldives"', add
label define za01a_bplctry_lbl 330 `"Mongolia"', add
label define za01a_bplctry_lbl 331 `"Myanmar"', add
label define za01a_bplctry_lbl 332 `"Nepal"', add
label define za01a_bplctry_lbl 333 `"Occupied Palestinian Territory"', add
label define za01a_bplctry_lbl 334 `"Oman"', add
label define za01a_bplctry_lbl 335 `"Pakistan"', add
label define za01a_bplctry_lbl 336 `"Philippines"', add
label define za01a_bplctry_lbl 337 `"Qatar"', add
label define za01a_bplctry_lbl 338 `"Republic Of Korea"', add
label define za01a_bplctry_lbl 339 `"Saudi Arabia"', add
label define za01a_bplctry_lbl 340 `"Singapore"', add
label define za01a_bplctry_lbl 341 `"Sri Lanka"', add
label define za01a_bplctry_lbl 342 `"Syrian Arab Republic"', add
label define za01a_bplctry_lbl 343 `"Taiwan Province Of China"', add
label define za01a_bplctry_lbl 344 `"Tajikistan"', add
label define za01a_bplctry_lbl 345 `"Thailand"', add
label define za01a_bplctry_lbl 346 `"Turkey"', add
label define za01a_bplctry_lbl 347 `"Turkmenistan"', add
label define za01a_bplctry_lbl 348 `"United Arab Emirates"', add
label define za01a_bplctry_lbl 349 `"Uzbekistan"', add
label define za01a_bplctry_lbl 350 `"Viet Nam"', add
label define za01a_bplctry_lbl 351 `"Yemen"', add
label define za01a_bplctry_lbl 399 `"Other Asia"', add
label define za01a_bplctry_lbl 401 `"United Kingdom/Great Britain"', add
label define za01a_bplctry_lbl 402 `"Albania"', add
label define za01a_bplctry_lbl 403 `"Andorra"', add
label define za01a_bplctry_lbl 404 `"Austria"', add
label define za01a_bplctry_lbl 405 `"Belarus"', add
label define za01a_bplctry_lbl 406 `"Belgium"', add
label define za01a_bplctry_lbl 407 `"Bosnia And Herzegovina"', add
label define za01a_bplctry_lbl 408 `"Bulgaria"', add
label define za01a_bplctry_lbl 409 `"Channel Islands"', add
label define za01a_bplctry_lbl 410 `"Croatia"', add
label define za01a_bplctry_lbl 411 `"Czech Republic"', add
label define za01a_bplctry_lbl 412 `"Denmark"', add
label define za01a_bplctry_lbl 413 `"Estonia"', add
label define za01a_bplctry_lbl 414 `"Faeroe Islands"', add
label define za01a_bplctry_lbl 415 `"Finland"', add
label define za01a_bplctry_lbl 416 `"France"', add
label define za01a_bplctry_lbl 417 `"Germany"', add
label define za01a_bplctry_lbl 418 `"Gibraltar"', add
label define za01a_bplctry_lbl 419 `"Greece"', add
label define za01a_bplctry_lbl 420 `"Holy See"', add
label define za01a_bplctry_lbl 421 `"Hungary"', add
label define za01a_bplctry_lbl 422 `"Iceland"', add
label define za01a_bplctry_lbl 423 `"Ireland"', add
label define za01a_bplctry_lbl 424 `"Isle Of Man"', add
label define za01a_bplctry_lbl 425 `"Italy"', add
label define za01a_bplctry_lbl 426 `"Latvia"', add
label define za01a_bplctry_lbl 427 `"Liechtenstein"', add
label define za01a_bplctry_lbl 428 `"Lithuania"', add
label define za01a_bplctry_lbl 429 `"Luxembourg"', add
label define za01a_bplctry_lbl 430 `"Malta"', add
label define za01a_bplctry_lbl 431 `"Monaco"', add
label define za01a_bplctry_lbl 432 `"Netherlands"', add
label define za01a_bplctry_lbl 433 `"Norway"', add
label define za01a_bplctry_lbl 434 `"Poland"', add
label define za01a_bplctry_lbl 435 `"Portugal"', add
label define za01a_bplctry_lbl 436 `"Republic Of Moldova"', add
label define za01a_bplctry_lbl 437 `"Romania"', add
label define za01a_bplctry_lbl 438 `"Russian Federation"', add
label define za01a_bplctry_lbl 439 `"San Marino"', add
label define za01a_bplctry_lbl 440 `"Slovakia"', add
label define za01a_bplctry_lbl 441 `"Slovenia"', add
label define za01a_bplctry_lbl 442 `"Southern Europe"', add
label define za01a_bplctry_lbl 443 `"Spain"', add
label define za01a_bplctry_lbl 444 `"Svalbard And Jan Mayen Islands"', add
label define za01a_bplctry_lbl 445 `"Sweden"', add
label define za01a_bplctry_lbl 446 `"Switzerland"', add
label define za01a_bplctry_lbl 447 `"The Former Yugoslav Republic Of Macedonia"', add
label define za01a_bplctry_lbl 448 `"Ukraine"', add
label define za01a_bplctry_lbl 449 `"Federal Republic Of Yugoslavia"', add
label define za01a_bplctry_lbl 499 `"Other Europe"', add
label define za01a_bplctry_lbl 501 `"Australia"', add
label define za01a_bplctry_lbl 502 `"American Samoa"', add
label define za01a_bplctry_lbl 503 `"Cook Islands"', add
label define za01a_bplctry_lbl 504 `"Fiji"', add
label define za01a_bplctry_lbl 505 `"French Polynesia"', add
label define za01a_bplctry_lbl 506 `"Guam"', add
label define za01a_bplctry_lbl 507 `"Kiribati"', add
label define za01a_bplctry_lbl 508 `"Marshall Islands"', add
label define za01a_bplctry_lbl 509 `"Melanesia"', add
label define za01a_bplctry_lbl 510 `"Micronesia"', add
label define za01a_bplctry_lbl 511 `"Micronesia (Federated States Of)"', add
label define za01a_bplctry_lbl 512 `"Nauru"', add
label define za01a_bplctry_lbl 513 `"New Caledonia"', add
label define za01a_bplctry_lbl 514 `"New Zealand"', add
label define za01a_bplctry_lbl 515 `"Niue"', add
label define za01a_bplctry_lbl 516 `"Norfolk Island"', add
label define za01a_bplctry_lbl 517 `"Northern Mariana Islands"', add
label define za01a_bplctry_lbl 518 `"Palau"', add
label define za01a_bplctry_lbl 519 `"Papua New Guinea"', add
label define za01a_bplctry_lbl 520 `"Pitcairn"', add
label define za01a_bplctry_lbl 521 `"Polynesia"', add
label define za01a_bplctry_lbl 522 `"Samoa"', add
label define za01a_bplctry_lbl 523 `"Solomon Islands"', add
label define za01a_bplctry_lbl 524 `"Tokelau"', add
label define za01a_bplctry_lbl 525 `"Tonga"', add
label define za01a_bplctry_lbl 526 `"Tuvalu"', add
label define za01a_bplctry_lbl 527 `"Vanuatu"', add
label define za01a_bplctry_lbl 528 `"Wallis and Futuna Islands"', add
label define za01a_bplctry_lbl 599 `"Other Oceania"', add
label define za01a_bplctry_lbl 999 `"NIU (not in universe)"', add
label values za01a_bplctry za01a_bplctry_lbl

label define za01a_bplctry2_lbl 1 `"South Africa"'
label define za01a_bplctry2_lbl 2 `"SADC countries"', add
label define za01a_bplctry2_lbl 3 `"Rest of Africa"', add
label define za01a_bplctry2_lbl 4 `"Europe"', add
label define za01a_bplctry2_lbl 5 `"Asia"', add
label define za01a_bplctry2_lbl 6 `"North America"', add
label define za01a_bplctry2_lbl 7 `"Central and South America"', add
label define za01a_bplctry2_lbl 8 `"Australia and New Zealand"', add
label values za01a_bplctry2 za01a_bplctry2_lbl

label define za01a_citiz_lbl 111 `"Lesotho"'
label define za01a_citiz_lbl 112 `"Namibia"', add
label define za01a_citiz_lbl 113 `"Botswana"', add
label define za01a_citiz_lbl 114 `"Zimbabwe"', add
label define za01a_citiz_lbl 115 `"Mozambique"', add
label define za01a_citiz_lbl 116 `"Swaziland"', add
label define za01a_citiz_lbl 121 `"Angola"', add
label define za01a_citiz_lbl 122 `"Democratic Republic Of The Congo (Zaire)"', add
label define za01a_citiz_lbl 123 `"Malawi"', add
label define za01a_citiz_lbl 124 `"Mauritius"', add
label define za01a_citiz_lbl 125 `"Seychelles"', add
label define za01a_citiz_lbl 126 `"Tanzania"', add
label define za01a_citiz_lbl 127 `"Zambia"', add
label define za01a_citiz_lbl 130 `"Algeria"', add
label define za01a_citiz_lbl 131 `"Benin"', add
label define za01a_citiz_lbl 132 `"Burkina Faso"', add
label define za01a_citiz_lbl 133 `"Burundi"', add
label define za01a_citiz_lbl 134 `"Cameroon"', add
label define za01a_citiz_lbl 135 `"Cape Verde"', add
label define za01a_citiz_lbl 136 `"Central African Republic"', add
label define za01a_citiz_lbl 137 `"Chad"', add
label define za01a_citiz_lbl 138 `"Comoros"', add
label define za01a_citiz_lbl 139 `"Congo"', add
label define za01a_citiz_lbl 140 `"Cote D'ivoire"', add
label define za01a_citiz_lbl 141 `"Djibouti"', add
label define za01a_citiz_lbl 142 `"Egypt"', add
label define za01a_citiz_lbl 143 `"Equatorial Guinea"', add
label define za01a_citiz_lbl 144 `"Eritrea"', add
label define za01a_citiz_lbl 145 `"Ethiopia"', add
label define za01a_citiz_lbl 146 `"Gabon"', add
label define za01a_citiz_lbl 147 `"Gambia"', add
label define za01a_citiz_lbl 148 `"Ghana"', add
label define za01a_citiz_lbl 149 `"Guinea"', add
label define za01a_citiz_lbl 150 `"Guinea-Bissau"', add
label define za01a_citiz_lbl 151 `"Kenya"', add
label define za01a_citiz_lbl 152 `"Liberia"', add
label define za01a_citiz_lbl 153 `"Libyan Arab Jamahiriya"', add
label define za01a_citiz_lbl 154 `"Madagascar"', add
label define za01a_citiz_lbl 155 `"Mali"', add
label define za01a_citiz_lbl 156 `"Mauritania"', add
label define za01a_citiz_lbl 157 `"Morocco"', add
label define za01a_citiz_lbl 158 `"Niger"', add
label define za01a_citiz_lbl 159 `"Nigeria"', add
label define za01a_citiz_lbl 160 `"Reunion"', add
label define za01a_citiz_lbl 161 `"Rwanda"', add
label define za01a_citiz_lbl 162 `"Saint Helena"', add
label define za01a_citiz_lbl 163 `"Sao Tome And Principe"', add
label define za01a_citiz_lbl 164 `"Senegal"', add
label define za01a_citiz_lbl 165 `"Sierra Leone"', add
label define za01a_citiz_lbl 166 `"Somalia"', add
label define za01a_citiz_lbl 167 `"Sudan"', add
label define za01a_citiz_lbl 168 `"Togo"', add
label define za01a_citiz_lbl 169 `"Tunisia"', add
label define za01a_citiz_lbl 170 `"Uganda"', add
label define za01a_citiz_lbl 171 `"Western Sahara"', add
label define za01a_citiz_lbl 199 `"Other Africa"', add
label define za01a_citiz_lbl 201 `"United States"', add
label define za01a_citiz_lbl 202 `"Anguilla"', add
label define za01a_citiz_lbl 203 `"Antigua And Barbuda"', add
label define za01a_citiz_lbl 204 `"Argentina"', add
label define za01a_citiz_lbl 205 `"Aruba"', add
label define za01a_citiz_lbl 206 `"Bahamas"', add
label define za01a_citiz_lbl 207 `"Barbados"', add
label define za01a_citiz_lbl 208 `"Belize"', add
label define za01a_citiz_lbl 209 `"Bermuda"', add
label define za01a_citiz_lbl 210 `"Bolivia"', add
label define za01a_citiz_lbl 211 `"Brazil"', add
label define za01a_citiz_lbl 212 `"British Virgin Islands"', add
label define za01a_citiz_lbl 213 `"Canada"', add
label define za01a_citiz_lbl 214 `"Caribbean"', add
label define za01a_citiz_lbl 215 `"Cayman Islands"', add
label define za01a_citiz_lbl 216 `"Chile"', add
label define za01a_citiz_lbl 217 `"Colombia"', add
label define za01a_citiz_lbl 218 `"Costa Rica"', add
label define za01a_citiz_lbl 219 `"Cuba"', add
label define za01a_citiz_lbl 220 `"Dominica"', add
label define za01a_citiz_lbl 221 `"Dominican Republic"', add
label define za01a_citiz_lbl 222 `"Ecuador"', add
label define za01a_citiz_lbl 223 `"El Salvador"', add
label define za01a_citiz_lbl 224 `"Falkland Islands (Malvinas)"', add
label define za01a_citiz_lbl 225 `"French Guiana"', add
label define za01a_citiz_lbl 226 `"Greenland"', add
label define za01a_citiz_lbl 227 `"Grenada"', add
label define za01a_citiz_lbl 228 `"Guadeloupe"', add
label define za01a_citiz_lbl 229 `"Guatemala"', add
label define za01a_citiz_lbl 230 `"Guyana"', add
label define za01a_citiz_lbl 231 `"Haiti"', add
label define za01a_citiz_lbl 232 `"Honduras"', add
label define za01a_citiz_lbl 233 `"Jamaica"', add
label define za01a_citiz_lbl 234 `"Latin America And The Caribbean"', add
label define za01a_citiz_lbl 235 `"Martinique"', add
label define za01a_citiz_lbl 236 `"Mexico"', add
label define za01a_citiz_lbl 237 `"Montserrat"', add
label define za01a_citiz_lbl 238 `"Netherlands Antilles"', add
label define za01a_citiz_lbl 239 `"Nicaragua"', add
label define za01a_citiz_lbl 240 `"Panama"', add
label define za01a_citiz_lbl 241 `"Paraguay"', add
label define za01a_citiz_lbl 242 `"Peru"', add
label define za01a_citiz_lbl 243 `"Puerto Rico"', add
label define za01a_citiz_lbl 244 `"Saint Kitts And Nevis"', add
label define za01a_citiz_lbl 245 `"Saint Lucia"', add
label define za01a_citiz_lbl 246 `"Saint Pierre And Miquelon"', add
label define za01a_citiz_lbl 247 `"Saint Vincent And The Grenadines"', add
label define za01a_citiz_lbl 248 `"Suriname"', add
label define za01a_citiz_lbl 249 `"Trinidad And Tobago"', add
label define za01a_citiz_lbl 250 `"Turks And Caicos Islands"', add
label define za01a_citiz_lbl 251 `"United States Virgin Islands"', add
label define za01a_citiz_lbl 252 `"Uruguay"', add
label define za01a_citiz_lbl 253 `"Venezuela"', add
label define za01a_citiz_lbl 299 `"Other North And South America"', add
label define za01a_citiz_lbl 301 `"China"', add
label define za01a_citiz_lbl 302 `"Afghanistan"', add
label define za01a_citiz_lbl 303 `"Armenia"', add
label define za01a_citiz_lbl 304 `"Azerbaijan"', add
label define za01a_citiz_lbl 305 `"Bahrain"', add
label define za01a_citiz_lbl 306 `"Bangladesh"', add
label define za01a_citiz_lbl 307 `"Bhutan"', add
label define za01a_citiz_lbl 308 `"Brunei Darussalam"', add
label define za01a_citiz_lbl 309 `"Cambodia"', add
label define za01a_citiz_lbl 310 `"Cyprus"', add
label define za01a_citiz_lbl 311 `"Democratic People's Republic Of Korea"', add
label define za01a_citiz_lbl 312 `"East Timor"', add
label define za01a_citiz_lbl 313 `"Georgia"', add
label define za01a_citiz_lbl 314 `"Hong Kong Special Administrative Region Of China"', add
label define za01a_citiz_lbl 315 `"India"', add
label define za01a_citiz_lbl 316 `"Indonesia"', add
label define za01a_citiz_lbl 317 `"Iran (Islamic Republic Of)"', add
label define za01a_citiz_lbl 318 `"Iraq"', add
label define za01a_citiz_lbl 319 `"Israel"', add
label define za01a_citiz_lbl 320 `"Japan"', add
label define za01a_citiz_lbl 321 `"Jordan"', add
label define za01a_citiz_lbl 322 `"Kazakhstan"', add
label define za01a_citiz_lbl 323 `"Kuwait"', add
label define za01a_citiz_lbl 324 `"Kyrgyzstan"', add
label define za01a_citiz_lbl 325 `"Lao People's Democratic Republic"', add
label define za01a_citiz_lbl 326 `"Lebanon"', add
label define za01a_citiz_lbl 327 `"Macao Special Administrative Region Of China"', add
label define za01a_citiz_lbl 328 `"Malaysia"', add
label define za01a_citiz_lbl 329 `"Maldives"', add
label define za01a_citiz_lbl 330 `"Mongolia"', add
label define za01a_citiz_lbl 331 `"Myanmar"', add
label define za01a_citiz_lbl 332 `"Nepal"', add
label define za01a_citiz_lbl 333 `"Occupied Palestinian Territory"', add
label define za01a_citiz_lbl 334 `"Oman"', add
label define za01a_citiz_lbl 335 `"Pakistan"', add
label define za01a_citiz_lbl 336 `"Philippines"', add
label define za01a_citiz_lbl 337 `"Qatar"', add
label define za01a_citiz_lbl 338 `"Republic Of Korea"', add
label define za01a_citiz_lbl 339 `"Saudi Arabia"', add
label define za01a_citiz_lbl 340 `"Singapore"', add
label define za01a_citiz_lbl 341 `"Sri Lanka"', add
label define za01a_citiz_lbl 342 `"Syrian Arab Republic"', add
label define za01a_citiz_lbl 343 `"Taiwan Province Of China"', add
label define za01a_citiz_lbl 344 `"Tajikistan"', add
label define za01a_citiz_lbl 345 `"Thailand"', add
label define za01a_citiz_lbl 346 `"Turkey"', add
label define za01a_citiz_lbl 347 `"Turkmenistan"', add
label define za01a_citiz_lbl 348 `"United Arab Emirates"', add
label define za01a_citiz_lbl 349 `"Uzbekistan"', add
label define za01a_citiz_lbl 350 `"Viet Nam"', add
label define za01a_citiz_lbl 351 `"Yemen"', add
label define za01a_citiz_lbl 399 `"Other Asia"', add
label define za01a_citiz_lbl 401 `"United Kingdom/Great Britain"', add
label define za01a_citiz_lbl 402 `"Albania"', add
label define za01a_citiz_lbl 403 `"Andorra"', add
label define za01a_citiz_lbl 404 `"Austria"', add
label define za01a_citiz_lbl 405 `"Belarus"', add
label define za01a_citiz_lbl 406 `"Belgium"', add
label define za01a_citiz_lbl 407 `"Bosnia And Herzegovina"', add
label define za01a_citiz_lbl 408 `"Bulgaria"', add
label define za01a_citiz_lbl 409 `"Channel Islands"', add
label define za01a_citiz_lbl 410 `"Croatia"', add
label define za01a_citiz_lbl 411 `"Czech Republic"', add
label define za01a_citiz_lbl 412 `"Denmark"', add
label define za01a_citiz_lbl 413 `"Estonia"', add
label define za01a_citiz_lbl 414 `"Faeroe Islands"', add
label define za01a_citiz_lbl 415 `"Finland"', add
label define za01a_citiz_lbl 416 `"France"', add
label define za01a_citiz_lbl 417 `"Germany"', add
label define za01a_citiz_lbl 418 `"Gibraltar"', add
label define za01a_citiz_lbl 419 `"Greece"', add
label define za01a_citiz_lbl 420 `"Holy See"', add
label define za01a_citiz_lbl 421 `"Hungary"', add
label define za01a_citiz_lbl 422 `"Iceland"', add
label define za01a_citiz_lbl 423 `"Ireland"', add
label define za01a_citiz_lbl 424 `"Isle Of Man"', add
label define za01a_citiz_lbl 425 `"Italy"', add
label define za01a_citiz_lbl 426 `"Latvia"', add
label define za01a_citiz_lbl 427 `"Liechtenstein"', add
label define za01a_citiz_lbl 428 `"Lithuania"', add
label define za01a_citiz_lbl 429 `"Luxembourg"', add
label define za01a_citiz_lbl 430 `"Malta"', add
label define za01a_citiz_lbl 431 `"Monaco"', add
label define za01a_citiz_lbl 432 `"Netherlands"', add
label define za01a_citiz_lbl 433 `"Norway"', add
label define za01a_citiz_lbl 434 `"Poland"', add
label define za01a_citiz_lbl 435 `"Portugal"', add
label define za01a_citiz_lbl 436 `"Republic Of Moldova"', add
label define za01a_citiz_lbl 437 `"Romania"', add
label define za01a_citiz_lbl 438 `"Russian Federation"', add
label define za01a_citiz_lbl 439 `"San Marino"', add
label define za01a_citiz_lbl 440 `"Slovakia"', add
label define za01a_citiz_lbl 441 `"Slovenia"', add
label define za01a_citiz_lbl 442 `"Southern Europe"', add
label define za01a_citiz_lbl 443 `"Spain"', add
label define za01a_citiz_lbl 444 `"Svalbard And Jan Mayen Islands"', add
label define za01a_citiz_lbl 445 `"Sweden"', add
label define za01a_citiz_lbl 446 `"Switzerland"', add
label define za01a_citiz_lbl 447 `"The Former Yugoslav Republic Of Macedonia"', add
label define za01a_citiz_lbl 448 `"Ukraine"', add
label define za01a_citiz_lbl 449 `"Federal Republic Of Yugoslavia"', add
label define za01a_citiz_lbl 499 `"Other Europe"', add
label define za01a_citiz_lbl 501 `"Australia"', add
label define za01a_citiz_lbl 502 `"American Samoa"', add
label define za01a_citiz_lbl 503 `"Cook Islands"', add
label define za01a_citiz_lbl 504 `"Fiji"', add
label define za01a_citiz_lbl 505 `"French Polynesia"', add
label define za01a_citiz_lbl 506 `"Guam"', add
label define za01a_citiz_lbl 507 `"Kiribati"', add
label define za01a_citiz_lbl 508 `"Marshall Islands"', add
label define za01a_citiz_lbl 509 `"Melanesia"', add
label define za01a_citiz_lbl 510 `"Micronesia"', add
label define za01a_citiz_lbl 511 `"Micronesia (Federated States Of)"', add
label define za01a_citiz_lbl 512 `"Nauru"', add
label define za01a_citiz_lbl 513 `"New Caledonia"', add
label define za01a_citiz_lbl 514 `"New Zealand"', add
label define za01a_citiz_lbl 515 `"Niue"', add
label define za01a_citiz_lbl 516 `"Norfolk Island"', add
label define za01a_citiz_lbl 517 `"Northern Mariana Islands"', add
label define za01a_citiz_lbl 518 `"Palau"', add
label define za01a_citiz_lbl 519 `"Papua New Guinea"', add
label define za01a_citiz_lbl 520 `"Pitcairn"', add
label define za01a_citiz_lbl 521 `"Polynesia"', add
label define za01a_citiz_lbl 522 `"Samoa"', add
label define za01a_citiz_lbl 523 `"Solomon Islands"', add
label define za01a_citiz_lbl 524 `"Tokelau"', add
label define za01a_citiz_lbl 525 `"Tonga"', add
label define za01a_citiz_lbl 526 `"Tuvalu"', add
label define za01a_citiz_lbl 527 `"Vanuatu"', add
label define za01a_citiz_lbl 528 `"Wallis and Futuna Islands"', add
label define za01a_citiz_lbl 599 `"Other Oceania"', add
label define za01a_citiz_lbl 600 `"South Africa"', add
label values za01a_citiz za01a_citiz_lbl

label define za01a_citizgr_lbl 1 `"South Africa"'
label define za01a_citizgr_lbl 2 `"SADC countries"', add
label define za01a_citizgr_lbl 3 `"Rest of Africa"', add
label define za01a_citizgr_lbl 4 `"Europe"', add
label define za01a_citizgr_lbl 5 `"Asia"', add
label define za01a_citizgr_lbl 6 `"North America"', add
label define za01a_citizgr_lbl 7 `"Central and South America"', add
label define za01a_citizgr_lbl 8 `"Australia and New Zealand"', add
label values za01a_citizgr za01a_citizgr_lbl

label define za01a_uslres_lbl 1 `"Yes"'
label define za01a_uslres_lbl 2 `"No"', add
label values za01a_uslres za01a_uslres_lbl

label define za01a_moved_lbl 1 `"Yes"'
label define za01a_moved_lbl 2 `"No"', add
label define za01a_moved_lbl 3 `"Born after October 1996"', add
label values za01a_moved za01a_moved_lbl

label define za01a_yrmoved_lbl 1 `"1996"'
label define za01a_yrmoved_lbl 2 `"1997"', add
label define za01a_yrmoved_lbl 3 `"1998"', add
label define za01a_yrmoved_lbl 4 `"1999"', add
label define za01a_yrmoved_lbl 5 `"2000"', add
label define za01a_yrmoved_lbl 6 `"2001"', add
label define za01a_yrmoved_lbl 9 `"NIU (not in universe)"', add
label values za01a_yrmoved za01a_yrmoved_lbl

label define za01a_prvprov_lbl 01 `"Western Cape"'
label define za01a_prvprov_lbl 02 `"Eastern Cape"', add
label define za01a_prvprov_lbl 03 `"Northern Cape"', add
label define za01a_prvprov_lbl 04 `"Free State"', add
label define za01a_prvprov_lbl 05 `"KwaZulu-Natal"', add
label define za01a_prvprov_lbl 06 `"North West"', add
label define za01a_prvprov_lbl 07 `"Gauteng"', add
label define za01a_prvprov_lbl 08 `"Mpumalanga"', add
label define za01a_prvprov_lbl 09 `"Limpopo"', add
label define za01a_prvprov_lbl 10 `"Foreign country"', add
label define za01a_prvprov_lbl 98 `"Unknown"', add
label define za01a_prvprov_lbl 99 `"NIU (not in universe)"', add
label values za01a_prvprov za01a_prvprov_lbl

label define za01a_dssight_lbl 1 `"Yes"'
label define za01a_dssight_lbl 2 `"No"', add
label values za01a_dssight za01a_dssight_lbl

label define za01a_dshear_lbl 1 `"Yes"'
label define za01a_dshear_lbl 2 `"No"', add
label values za01a_dshear za01a_dshear_lbl

label define za01a_dscomm_lbl 1 `"Yes"'
label define za01a_dscomm_lbl 2 `"No"', add
label values za01a_dscomm za01a_dscomm_lbl

label define za01a_dsphys_lbl 1 `"Yes"'
label define za01a_dsphys_lbl 2 `"No"', add
label values za01a_dsphys za01a_dsphys_lbl

label define za01a_disment_lbl 1 `"Yes"'
label define za01a_disment_lbl 2 `"No"', add
label values za01a_disment za01a_disment_lbl

label define za01a_disemot_lbl 1 `"Yes"'
label define za01a_disemot_lbl 2 `"No"', add
label values za01a_disemot za01a_disemot_lbl

label define za01a_disab_lbl 0 `"None"'
label define za01a_disab_lbl 1 `"Sight (blind/severe visual limitation)"', add
label define za01a_disab_lbl 2 `"Hearing (deaf, profoundly hard of hearing)"', add
label define za01a_disab_lbl 3 `"Communication (speech impairment)"', add
label define za01a_disab_lbl 4 `"Physical (e.g. needs wheelchair, crutches or prostheses; limb or hand usage limitations)"', add
label define za01a_disab_lbl 5 `"Intellectual (serious difficulties in learning)"', add
label define za01a_disab_lbl 6 `"Emotional (behavioural, psychological)"', add
label define za01a_disab_lbl 7 `"Multiple (combination of two or more of the above)"', add
label values za01a_disab za01a_disab_lbl

label define za01a_mothliv_lbl 1 `"Yes"'
label define za01a_mothliv_lbl 2 `"No"', add
label values za01a_mothliv za01a_mothliv_lbl

label define za01a_mothloc_lbl 01 `"1"'
label define za01a_mothloc_lbl 02 `"2"', add
label define za01a_mothloc_lbl 03 `"3"', add
label define za01a_mothloc_lbl 04 `"4"', add
label define za01a_mothloc_lbl 05 `"5"', add
label define za01a_mothloc_lbl 06 `"6"', add
label define za01a_mothloc_lbl 07 `"7"', add
label define za01a_mothloc_lbl 08 `"8"', add
label define za01a_mothloc_lbl 09 `"9"', add
label define za01a_mothloc_lbl 10 `"10"', add
label define za01a_mothloc_lbl 11 `"11"', add
label define za01a_mothloc_lbl 12 `"12"', add
label define za01a_mothloc_lbl 13 `"13"', add
label define za01a_mothloc_lbl 14 `"14"', add
label define za01a_mothloc_lbl 15 `"15"', add
label define za01a_mothloc_lbl 16 `"16"', add
label define za01a_mothloc_lbl 17 `"17"', add
label define za01a_mothloc_lbl 18 `"18"', add
label define za01a_mothloc_lbl 19 `"19"', add
label define za01a_mothloc_lbl 20 `"20"', add
label define za01a_mothloc_lbl 21 `"21"', add
label define za01a_mothloc_lbl 22 `"22"', add
label define za01a_mothloc_lbl 23 `"23"', add
label define za01a_mothloc_lbl 24 `"24"', add
label define za01a_mothloc_lbl 26 `"26"', add
label define za01a_mothloc_lbl 32 `"32"', add
label define za01a_mothloc_lbl 36 `"36"', add
label define za01a_mothloc_lbl 39 `"39"', add
label define za01a_mothloc_lbl 40 `"40"', add
label define za01a_mothloc_lbl 58 `"58"', add
label define za01a_mothloc_lbl 97 `"Mother does not live in household"', add
label define za01a_mothloc_lbl 98 `"Unknown"', add
label define za01a_mothloc_lbl 99 `"NIU (not in universe)"', add
label values za01a_mothloc za01a_mothloc_lbl

label define za01a_fathliv_lbl 1 `"Yes"'
label define za01a_fathliv_lbl 2 `"No"', add
label values za01a_fathliv za01a_fathliv_lbl

label define za01a_fathloc_lbl 01 `"1"'
label define za01a_fathloc_lbl 02 `"2"', add
label define za01a_fathloc_lbl 03 `"3"', add
label define za01a_fathloc_lbl 04 `"4"', add
label define za01a_fathloc_lbl 05 `"5"', add
label define za01a_fathloc_lbl 06 `"6"', add
label define za01a_fathloc_lbl 07 `"7"', add
label define za01a_fathloc_lbl 08 `"8"', add
label define za01a_fathloc_lbl 09 `"9"', add
label define za01a_fathloc_lbl 10 `"10"', add
label define za01a_fathloc_lbl 11 `"11"', add
label define za01a_fathloc_lbl 12 `"12"', add
label define za01a_fathloc_lbl 13 `"13"', add
label define za01a_fathloc_lbl 14 `"14"', add
label define za01a_fathloc_lbl 15 `"15"', add
label define za01a_fathloc_lbl 16 `"16"', add
label define za01a_fathloc_lbl 17 `"17"', add
label define za01a_fathloc_lbl 18 `"18"', add
label define za01a_fathloc_lbl 19 `"19"', add
label define za01a_fathloc_lbl 20 `"20"', add
label define za01a_fathloc_lbl 21 `"21"', add
label define za01a_fathloc_lbl 22 `"22"', add
label define za01a_fathloc_lbl 23 `"23"', add
label define za01a_fathloc_lbl 24 `"24"', add
label define za01a_fathloc_lbl 30 `"30"', add
label define za01a_fathloc_lbl 34 `"34"', add
label define za01a_fathloc_lbl 97 `"Father does not live in household"', add
label define za01a_fathloc_lbl 98 `"Unknown"', add
label define za01a_fathloc_lbl 99 `"NIU (not in universe)"', add
label values za01a_fathloc za01a_fathloc_lbl

label define za01a_school_lbl 1 `"No"'
label define za01a_school_lbl 2 `"Pre-school"', add
label define za01a_school_lbl 3 `"School"', add
label define za01a_school_lbl 4 `"College"', add
label define za01a_school_lbl 5 `"Technikon"', add
label define za01a_school_lbl 6 `"University"', add
label define za01a_school_lbl 7 `"Adult education centre"', add
label define za01a_school_lbl 8 `"Other"', add
label values za01a_school za01a_school_lbl

label define za01a_schtype_lbl 1 `"Public (government)"'
label define za01a_schtype_lbl 2 `"Private"', add
label define za01a_schtype_lbl 9 `"NIU (not in universe)"', add
label values za01a_schtype za01a_schtype_lbl

label define za01a_edattan_lbl 00 `"No schooling"'
label define za01a_edattan_lbl 01 `"Grade 1 / Sub A"', add
label define za01a_edattan_lbl 02 `"Grade 2 / Sub B"', add
label define za01a_edattan_lbl 03 `"Grade 3 / Standard 1"', add
label define za01a_edattan_lbl 04 `"Grade 4 / Standard 2"', add
label define za01a_edattan_lbl 05 `"Grade 5 / Standard 3"', add
label define za01a_edattan_lbl 06 `"Grade 6 / Standard 4"', add
label define za01a_edattan_lbl 07 `"Grade 7 / Standard 5"', add
label define za01a_edattan_lbl 08 `"Grade 8 / Standard 6 / Form 1"', add
label define za01a_edattan_lbl 09 `"Grade 9 / Standard 7 / Form 2"', add
label define za01a_edattan_lbl 10 `"Grade 10 / Standard 8 / Form 3 / NTC1"', add
label define za01a_edattan_lbl 11 `"Grade 11 / Standard 9 / Form 4 / NTC11"', add
label define za01a_edattan_lbl 12 `"Grade 12 / Standard 10 / Form 5 / Matric / NTC111"', add
label define za01a_edattan_lbl 13 `"Certificate with less than Grade 12"', add
label define za01a_edattan_lbl 14 `"Diploma with less than Grade 12"', add
label define za01a_edattan_lbl 15 `"Certificate with Grade 12"', add
label define za01a_edattan_lbl 16 `"Diploma with Grade 12"', add
label define za01a_edattan_lbl 17 `"Bachelor's Degree"', add
label define za01a_edattan_lbl 18 `"Bachelor's Degree and Diploma"', add
label define za01a_edattan_lbl 19 `"Honours degree"', add
label define za01a_edattan_lbl 20 `"Higher Degree (Master's, Doctorate)"', add
label define za01a_edattan_lbl 99 `"NIU (not in universe)"', add
label values za01a_edattan za01a_edattan_lbl

label define za01a_edattan2_lbl 1 `"No schooling"'
label define za01a_edattan2_lbl 2 `"Some primary"', add
label define za01a_edattan2_lbl 3 `"Complete primary"', add
label define za01a_edattan2_lbl 4 `"Some secondary"', add
label define za01a_edattan2_lbl 5 `"Grade 12 / Std 10"', add
label define za01a_edattan2_lbl 6 `"Higher"', add
label define za01a_edattan2_lbl 9 `"NIU (not in universe)"', add
label values za01a_edattan2 za01a_edattan2_lbl

label define za01a_edfield_lbl 01 `"Agriculture or renewable energy resources"'
label define za01a_edfield_lbl 02 `"Architecture or environment design"', add
label define za01a_edfield_lbl 03 `"Arts (visual or performing)"', add
label define za01a_edfield_lbl 04 `"Business, commerce or management sciences"', add
label define za01a_edfield_lbl 05 `"Communication"', add
label define za01a_edfield_lbl 06 `"Computer science or data processing"', add
label define za01a_edfield_lbl 07 `"Education, training or development"', add
label define za01a_edfield_lbl 08 `"Engineering or engineering technology"', add
label define za01a_edfield_lbl 09 `"Health care or health sciences"', add
label define za01a_edfield_lbl 10 `"Home economics"', add
label define za01a_edfield_lbl 11 `"Industrial arts, trades or technology"', add
label define za01a_edfield_lbl 12 `"Languages, linguistics or literature"', add
label define za01a_edfield_lbl 13 `"Law"', add
label define za01a_edfield_lbl 14 `"Libraries or museums"', add
label define za01a_edfield_lbl 15 `"Life sciences or physical sciences"', add
label define za01a_edfield_lbl 16 `"Mathematical sciences"', add
label define za01a_edfield_lbl 17 `"Military sciences"', add
label define za01a_edfield_lbl 18 `"Philosophy, religion or theology"', add
label define za01a_edfield_lbl 19 `"Physical education or leisure"', add
label define za01a_edfield_lbl 20 `"Psychology"', add
label define za01a_edfield_lbl 21 `"Public administration or social services"', add
label define za01a_edfield_lbl 22 `"Social sciences or social studies"', add
label define za01a_edfield_lbl 23 `"Other"', add
label define za01a_edfield_lbl 99 `"NIU (not in universe)"', add
label values za01a_edfield za01a_edfield_lbl

label define za01a_wrkweek_lbl 1 `"Yes: formal registered (non-farming)"'
label define za01a_wrkweek_lbl 2 `"Yes: informal unregistered (non-farming)"', add
label define za01a_wrkweek_lbl 3 `"Yes: farming"', add
label define za01a_wrkweek_lbl 4 `"Yes: has work but was temporarily absent"', add
label define za01a_wrkweek_lbl 5 `"No: did not have work"', add
label define za01a_wrkweek_lbl 9 `"NIU (not in universe)"', add
label values za01a_wrkweek za01a_wrkweek_lbl

label define za01a_wrkreasn_lbl 1 `"Scholar or student"'
label define za01a_wrkreasn_lbl 2 `"Homemaker or housewife"', add
label define za01a_wrkreasn_lbl 3 `"Pensioner or retired person/too old to work"', add
label define za01a_wrkreasn_lbl 4 `"Unable to work due to illness or disability"', add
label define za01a_wrkreasn_lbl 5 `"Seasonal worker not working presently"', add
label define za01a_wrkreasn_lbl 6 `"Does not choose to work"', add
label define za01a_wrkreasn_lbl 7 `"Could not find work"', add
label define za01a_wrkreasn_lbl 9 `"NIU (not in universe)"', add
label values za01a_wrkreasn za01a_wrkreasn_lbl

label define za01a_wrkseek_lbl 1 `"Yes"'
label define za01a_wrkseek_lbl 2 `"No"', add
label define za01a_wrkseek_lbl 9 `"NIU (not in universe)"', add
label values za01a_wrkseek za01a_wrkseek_lbl

label define za01a_wrkavail_lbl 1 `"Within one week"'
label define za01a_wrkavail_lbl 2 `"More than 1 week, up to 4 weeks"', add
label define za01a_wrkavail_lbl 3 `"More than 2 weeks, up to 4 weeks"', add
label define za01a_wrkavail_lbl 4 `"Some time after 4 weeks"', add
label define za01a_wrkavail_lbl 5 `"Does not choose to work"', add
label define za01a_wrkavail_lbl 9 `"NIU (not in universe)"', add
label values za01a_wrkavail za01a_wrkavail_lbl

label define za01a_empstat_lbl 1 `"Employed"'
label define za01a_empstat_lbl 2 `"Unemployed"', add
label define za01a_empstat_lbl 3 `"Not economically active"', add
label define za01a_empstat_lbl 9 `"NIU (not in universe)"', add
label values za01a_empstat za01a_empstat_lbl

label define za01a_empstat2_lbl 1 `"Employed"'
label define za01a_empstat2_lbl 2 `"Unemployed"', add
label define za01a_empstat2_lbl 3 `"Not economically active"', add
label define za01a_empstat2_lbl 9 `"NIU (not in universe)"', add
label values za01a_empstat2 za01a_empstat2_lbl

label define za01a_empstat3_lbl 0 `"NIU (not in universe)"'
label define za01a_empstat3_lbl 1 `"Employed"', add
label define za01a_empstat3_lbl 2 `"Unemployed"', add
label define za01a_empstat3_lbl 3 `"Scholar or student"', add
label define za01a_empstat3_lbl 4 `"Home-maker or housewife"', add
label define za01a_empstat3_lbl 5 `"Pensioner or retired person/too old to work"', add
label define za01a_empstat3_lbl 6 `"Unable to work due to illness or disability"', add
label define za01a_empstat3_lbl 7 `"Seasonal worker not working presently"', add
label define za01a_empstat3_lbl 8 `"Does not choose to work"', add
label define za01a_empstat3_lbl 9 `"Could not find work"', add
label values za01a_empstat3 za01a_empstat3_lbl

label define za01a_classwk_lbl 1 `"Paid employee"'
label define za01a_classwk_lbl 2 `"Paid family worker"', add
label define za01a_classwk_lbl 3 `"Self-employed"', add
label define za01a_classwk_lbl 4 `"Employer"', add
label define za01a_classwk_lbl 5 `"Unpaid family worker"', add
label define za01a_classwk_lbl 9 `"NIU (not in universe)"', add
label values za01a_classwk za01a_classwk_lbl

label define za01a_ind1_lbl 00 `"Private households with employed persons, exterritorial organisations, and representatives of foreign governments"'
label define za01a_ind1_lbl 01 `"Agriculture; hunting; forestry and fishing"', add
label define za01a_ind1_lbl 02 `"Mining and quarrying"', add
label define za01a_ind1_lbl 03 `"Manufacturing"', add
label define za01a_ind1_lbl 04 `"Electricity; gas and water supply"', add
label define za01a_ind1_lbl 05 `"Construction"', add
label define za01a_ind1_lbl 06 `"Wholesale and retail trade"', add
label define za01a_ind1_lbl 07 `"Transport; storage and communication"', add
label define za01a_ind1_lbl 08 `"Financial; insurance; real estate and business services"', add
label define za01a_ind1_lbl 09 `"Community; social and personal services"', add
label define za01a_ind1_lbl 98 `"Unknown"', add
label define za01a_ind1_lbl 99 `"NIU (not in universe)"', add
label values za01a_ind1 za01a_ind1_lbl

label define za01a_ind3_lbl 010 `"Private households with employed persons"'
label define za01a_ind3_lbl 020 `"Exterritorial organizations"', add
label define za01a_ind3_lbl 030 `"Representatives of foreign governments"', add
label define za01a_ind3_lbl 100 `"Agriculture, hunting and related services"', add
label define za01a_ind3_lbl 111 `"Growing of crops, market gardening, horticulture"', add
label define za01a_ind3_lbl 112 `"Farming of animals"', add
label define za01a_ind3_lbl 113 `"Growing of crops combined with farming of animals"', add
label define za01a_ind3_lbl 114 `"Agricultural and animal husbandry services"', add
label define za01a_ind3_lbl 115 `"Hunting, trapping and game propagation"', add
label define za01a_ind3_lbl 116 `"Production of organic fertilizer"', add
label define za01a_ind3_lbl 120 `"Forestry, logging and related services"', add
label define za01a_ind3_lbl 121 `"Forestry and related services"', add
label define za01a_ind3_lbl 122 `"Logging and related services"', add
label define za01a_ind3_lbl 130 `"Fishing, operational of fish hatcheries and fish farms"', add
label define za01a_ind3_lbl 131 `"Ocean and coastal fishing"', add
label define za01a_ind3_lbl 132 `"Fish hatcheries and fish farms"', add
label define za01a_ind3_lbl 210 `"Mining of coal and lignite"', add
label define za01a_ind3_lbl 221 `"Extraction of crude petroleum and natural gas"', add
label define za01a_ind3_lbl 230 `"Mining of gold and uranium ore"', add
label define za01a_ind3_lbl 240 `"Mining of metal ores"', add
label define za01a_ind3_lbl 241 `"Mining of iron ore"', add
label define za01a_ind3_lbl 242 `"Mining of non-ferrous metal ores"', add
label define za01a_ind3_lbl 250 `"Other mining and quarrying"', add
label define za01a_ind3_lbl 251 `"Stone quarrying, clay and sandpits"', add
label define za01a_ind3_lbl 252 `"Mining of diamonds (including-ding alluvial diamonds)"', add
label define za01a_ind3_lbl 253 `"Mining and quarrying n.e.c."', add
label define za01a_ind3_lbl 290 `"Service activities incidental to mining of minerals"', add
label define za01a_ind3_lbl 300 `"Manufacture of food products and beverages"', add
label define za01a_ind3_lbl 301 `"Production, processing and preservation of meat"', add
label define za01a_ind3_lbl 302 `"Manufacture of dairy products"', add
label define za01a_ind3_lbl 303 `"Manufacture of grain mill products and starches"', add
label define za01a_ind3_lbl 304 `"Manufacture of other food products"', add
label define za01a_ind3_lbl 305 `"Manufacture of beverages"', add
label define za01a_ind3_lbl 306 `"Manufacture of tobacco products"', add
label define za01a_ind3_lbl 310 `"Manufacture of textiles, clothing and leather goods"', add
label define za01a_ind3_lbl 311 `"Spinning, weaving and finishing of textiles"', add
label define za01a_ind3_lbl 312 `"Manufacture of other textiles"', add
label define za01a_ind3_lbl 313 `"Manufacture of knitted and crocheted fabrics"', add
label define za01a_ind3_lbl 314 `"Manufacture of wearing apparel, except fur apparel"', add
label define za01a_ind3_lbl 315 `"Dressing and dyeing of fur; manufacture of articles"', add
label define za01a_ind3_lbl 316 `"Tanning and dressing of leather"', add
label define za01a_ind3_lbl 317 `"Manufacture of footwear"', add
label define za01a_ind3_lbl 320 `"Manufacture of wood and products of wood"', add
label define za01a_ind3_lbl 321 `"Saw milling and plaining of wood"', add
label define za01a_ind3_lbl 322 `"Manufacture of products of wood, cork, straw"', add
label define za01a_ind3_lbl 323 `"Manufacture of paper and paper products"', add
label define za01a_ind3_lbl 324 `"Publishing"', add
label define za01a_ind3_lbl 325 `"Printing and service activities related to printing"', add
label define za01a_ind3_lbl 326 `"Reproduction of recorded media"', add
label define za01a_ind3_lbl 330 `"Manufacture of coke, refined petroleum products"', add
label define za01a_ind3_lbl 331 `"Manufacture of coke oven products"', add
label define za01a_ind3_lbl 332 `"Petroleum refineries / synthesizers"', add
label define za01a_ind3_lbl 333 `"Processing of nuclear fuel"', add
label define za01a_ind3_lbl 334 `"Manufacture of basic chemicals"', add
label define za01a_ind3_lbl 335 `"Manufacture of other chemical products"', add
label define za01a_ind3_lbl 336 `"Manufacture of man-made fibres"', add
label define za01a_ind3_lbl 337 `"Manufacture of rubber products"', add
label define za01a_ind3_lbl 338 `"Manufacture of plastic products"', add
label define za01a_ind3_lbl 340 `"Manufacture of other non-metallic mineral products"', add
label define za01a_ind3_lbl 341 `"Manufacture of glass and glass products"', add
label define za01a_ind3_lbl 342 `"Manufacture of non-metallic mineral products n.e.c"', add
label define za01a_ind3_lbl 350 `"Manufacture of basic metals, fabricated metal products"', add
label define za01a_ind3_lbl 351 `"Manufacture of basic iron and steel"', add
label define za01a_ind3_lbl 352 `"Manufacture of basic precious and non-ferrous metals"', add
label define za01a_ind3_lbl 353 `"Casting of metals"', add
label define za01a_ind3_lbl 354 `"Manufacture of structural metal products, tanks"', add
label define za01a_ind3_lbl 355 `"Manufacture of other fabricated metal products"', add
label define za01a_ind3_lbl 356 `"Manufacture of general purpose machinery"', add
label define za01a_ind3_lbl 357 `"Manufacture of special purpose machinery"', add
label define za01a_ind3_lbl 358 `"Manufacture of household appliances n.e.c."', add
label define za01a_ind3_lbl 359 `"Manufacture of office, accounting and computing"', add
label define za01a_ind3_lbl 360 `"Manufacture of electrical machinery and apparatus"', add
label define za01a_ind3_lbl 361 `"Manufacture of electric motors, generators"', add
label define za01a_ind3_lbl 362 `"Manufacture of electricity distribution and control"', add
label define za01a_ind3_lbl 363 `"Manufacture of insulated wire and cable"', add
label define za01a_ind3_lbl 364 `"Manufacture of accumulators, primary cells"', add
label define za01a_ind3_lbl 365 `"Manufacture of electric lamps and lighting equipment"', add
label define za01a_ind3_lbl 366 `"Manufacture of other electrical equipment n.e.c."', add
label define za01a_ind3_lbl 370 `"Manufacture of radio, television and communication"', add
label define za01a_ind3_lbl 371 `"Manufacture of electronic valves and tubes and other"', add
label define za01a_ind3_lbl 372 `"Manufacture of television and radio transmitters"', add
label define za01a_ind3_lbl 373 `"Manufacture of television and radio receivers"', add
label define za01a_ind3_lbl 374 `"Manufacture of medical appliances and instruments"', add
label define za01a_ind3_lbl 375 `"Manufacture of optical instruments and photographic instruments"', add
label define za01a_ind3_lbl 376 `"Manufacture of watches and clocks"', add
label define za01a_ind3_lbl 380 `"Manufacture of transport equipment"', add
label define za01a_ind3_lbl 381 `"Manufacture of motor vehicles"', add
label define za01a_ind3_lbl 382 `"Manufacture of bodies (coachwork) for motor vehicles"', add
label define za01a_ind3_lbl 383 `"Manufacture of parts and accessories for motor"', add
label define za01a_ind3_lbl 384 `"Building and repairing of ships and boats"', add
label define za01a_ind3_lbl 385 `"Manufacture of railway and tramway locomotives"', add
label define za01a_ind3_lbl 386 `"Manufacture of aircraft and spacecraft"', add
label define za01a_ind3_lbl 387 `"Manufacture of transport equipment n.e.c."', add
label define za01a_ind3_lbl 390 `"Manufacture of furniture; manufacturing n.e.c."', add
label define za01a_ind3_lbl 391 `"Manufacture of furniture"', add
label define za01a_ind3_lbl 392 `"Manufacturing n.e.c."', add
label define za01a_ind3_lbl 395 `"Recycling n.e.c."', add
label define za01a_ind3_lbl 410 `"Electricity, gas, steam and hot water supply"', add
label define za01a_ind3_lbl 411 `"Production, collection and distribution of electricity"', add
label define za01a_ind3_lbl 412 `"Manufacture of gas; distribution of gaseous fuels"', add
label define za01a_ind3_lbl 413 `"Steam and hot water supply"', add
label define za01a_ind3_lbl 420 `"Collection, purification and distribution of water"', add
label define za01a_ind3_lbl 500 `"Construction"', add
label define za01a_ind3_lbl 501 `"Site preparation"', add
label define za01a_ind3_lbl 502 `"Building of complete constructions or parts thereof"', add
label define za01a_ind3_lbl 503 `"Building installation"', add
label define za01a_ind3_lbl 504 `"Building completion"', add
label define za01a_ind3_lbl 505 `"Renting of construction of demolition equipment"', add
label define za01a_ind3_lbl 610 `"Wholesale and commission trade, except of motor"', add
label define za01a_ind3_lbl 611 `"Wholesale trade on a fee or contract basis"', add
label define za01a_ind3_lbl 612 `"Wholesale trade in agricultural raw materials"', add
label define za01a_ind3_lbl 613 `"Wholesale trade in house-hold goods"', add
label define za01a_ind3_lbl 614 `"Wholesale trade in non-agricultural intermediate"', add
label define za01a_ind3_lbl 615 `"Wholesale trade in machinery, equipment and supplies"', add
label define za01a_ind3_lbl 619 `"Other wholesale trade"', add
label define za01a_ind3_lbl 620 `"Retail trade, except of motor vehicles and motor cycles"', add
label define za01a_ind3_lbl 621 `"Non-specialized retail trade in stores"', add
label define za01a_ind3_lbl 622 `"Retail trade in food, beverages and tobacco"', add
label define za01a_ind3_lbl 623 `"Other retail trade in new goods in specialized stores"', add
label define za01a_ind3_lbl 624 `"Retail trade in second-hand goods in stores"', add
label define za01a_ind3_lbl 625 `"Retail trade not in stores"', add
label define za01a_ind3_lbl 626 `"Repair of personal and house-hold goods"', add
label define za01a_ind3_lbl 630 `"Sale, maintenance and repair of motor vehicles"', add
label define za01a_ind3_lbl 631 `"Sale of motor vehicles"', add
label define za01a_ind3_lbl 632 `"Maintenance and re-pair of motor vehicles"', add
label define za01a_ind3_lbl 633 `"Sale of motor vehicle parts and accessories"', add
label define za01a_ind3_lbl 634 `"Sale, maintenance and repair of motor cycles"', add
label define za01a_ind3_lbl 635 `"Retail sale of automotive fuel"', add
label define za01a_ind3_lbl 640 `"Hotels and restaurants"', add
label define za01a_ind3_lbl 641 `"Hotels, camping sites and other provision of short stay"', add
label define za01a_ind3_lbl 642 `"Restaurants, bars and can-teens"', add
label define za01a_ind3_lbl 710 `"Land transport; transport via pipe-lines"', add
label define za01a_ind3_lbl 711 `"Railway transport"', add
label define za01a_ind3_lbl 712 `"Other land transport"', add
label define za01a_ind3_lbl 713 `"Transport via pipelines"', add
label define za01a_ind3_lbl 720 `"Water transport"', add
label define za01a_ind3_lbl 721 `"Sea and coastal water transport"', add
label define za01a_ind3_lbl 722 `"Inland water transport"', add
label define za01a_ind3_lbl 730 `"Air transport"', add
label define za01a_ind3_lbl 741 `"Supporting and auxiliary transport activities"', add
label define za01a_ind3_lbl 750 `"Post and telecommunication"', add
label define za01a_ind3_lbl 751 `"Postal and related courier activities"', add
label define za01a_ind3_lbl 752 `"Telecommunication"', add
label define za01a_ind3_lbl 810 `"Financial intermediation, except insurance and pension"', add
label define za01a_ind3_lbl 811 `"Monetary intermediation"', add
label define za01a_ind3_lbl 819 `"Other financial intermediation n.e.c."', add
label define za01a_ind3_lbl 820 `"Insurance and pension funding, except compulsory"', add
label define za01a_ind3_lbl 821 `"Insurance and pension funding, except compulsory"', add
label define za01a_ind3_lbl 830 `"Activities auxiliary to financial intermediation"', add
label define za01a_ind3_lbl 831 `"Activities auxiliary to financial intermediation, except"', add
label define za01a_ind3_lbl 832 `"Activities auxiliary to insurance and pension funding"', add
label define za01a_ind3_lbl 840 `"Real estate activities"', add
label define za01a_ind3_lbl 841 `"Real estate activities with own or leased property"', add
label define za01a_ind3_lbl 842 `"Real estate activities on a fee or contract basis"', add
label define za01a_ind3_lbl 850 `"Renting of machinery and equipment, without operator"', add
label define za01a_ind3_lbl 851 `"Renting of transport equipment"', add
label define za01a_ind3_lbl 852 `"Renting of other machinery and equipment"', add
label define za01a_ind3_lbl 853 `"Renting of personal and household goods n.e.c."', add
label define za01a_ind3_lbl 860 `"Computer and related activities"', add
label define za01a_ind3_lbl 861 `"Hardware consultancy"', add
label define za01a_ind3_lbl 862 `"Software consultancy and supply"', add
label define za01a_ind3_lbl 863 `"Data processing"', add
label define za01a_ind3_lbl 864 `"Data base activities"', add
label define za01a_ind3_lbl 865 `"Maintenance and repair of office, accounting"', add
label define za01a_ind3_lbl 869 `"Other computer related activities"', add
label define za01a_ind3_lbl 870 `"Research and development"', add
label define za01a_ind3_lbl 871 `"Research and experimental development on natural activities"', add
label define za01a_ind3_lbl 872 `"Research and experimental development on social activities"', add
label define za01a_ind3_lbl 880 `"Other business activities"', add
label define za01a_ind3_lbl 881 `"Legal, accounting, bookkeeping and auditing activities;"', add
label define za01a_ind3_lbl 882 `"Architectural, engineering and other technical activities"', add
label define za01a_ind3_lbl 883 `"Advertising"', add
label define za01a_ind3_lbl 889 `"Business activities n.e.c."', add
label define za01a_ind3_lbl 910 `"Public administration and defense activities"', add
label define za01a_ind3_lbl 911 `"Central government activities"', add
label define za01a_ind3_lbl 912 `"Regional services council activities"', add
label define za01a_ind3_lbl 913 `"Local authority activities"', add
label define za01a_ind3_lbl 914 `"Provincial administrations"', add
label define za01a_ind3_lbl 915 `"S A defense force"', add
label define za01a_ind3_lbl 916 `"S A police service"', add
label define za01a_ind3_lbl 917 `"Correctional service"', add
label define za01a_ind3_lbl 920 `"Education"', add
label define za01a_ind3_lbl 930 `"Health and social work"', add
label define za01a_ind3_lbl 931 `"Human health activities"', add
label define za01a_ind3_lbl 932 `"Veterinary activities"', add
label define za01a_ind3_lbl 933 `"Social work activities"', add
label define za01a_ind3_lbl 940 `"Other community, social and personal service activities"', add
label define za01a_ind3_lbl 950 `"Activities of membership organizations n.e.c."', add
label define za01a_ind3_lbl 951 `"Activities of business, employers and professional"', add
label define za01a_ind3_lbl 952 `"Activities of trade unions"', add
label define za01a_ind3_lbl 959 `"Activities of other membership organizations"', add
label define za01a_ind3_lbl 960 `"Recreational, cultural and sporting activities"', add
label define za01a_ind3_lbl 961 `"Motion picture, radio, television and other entertainment"', add
label define za01a_ind3_lbl 962 `"News agency activities"', add
label define za01a_ind3_lbl 963 `"Library, archives, museums and other cultural activities"', add
label define za01a_ind3_lbl 964 `"Sporting and other recreational activities"', add
label define za01a_ind3_lbl 990 `"Other service activities"', add
label define za01a_ind3_lbl 998 `"Unknown"', add
label define za01a_ind3_lbl 999 `"NIU (not in universe)"', add
label values za01a_ind3 za01a_ind3_lbl

label define za01a_occ1_lbl 00 `"NIU (not in universe)"'
label define za01a_occ1_lbl 01 `"Legislators; senior officials and managers"', add
label define za01a_occ1_lbl 02 `"Professionals"', add
label define za01a_occ1_lbl 03 `"Technicians and associate professionals"', add
label define za01a_occ1_lbl 04 `"Clerks"', add
label define za01a_occ1_lbl 05 `"Service workers; shop and market sales workers"', add
label define za01a_occ1_lbl 06 `"Skilled agricultural and fishery workers"', add
label define za01a_occ1_lbl 07 `"Craft and related trades workers"', add
label define za01a_occ1_lbl 08 `"Plant and machine operators and assemblers"', add
label define za01a_occ1_lbl 09 `"Elementary occupations and unknown"', add
label define za01a_occ1_lbl 98 `"Unknown"', add
label values za01a_occ1 za01a_occ1_lbl

label define za01a_occ2_lbl 11 `"Legislators and Senior Officials"'
label define za01a_occ2_lbl 12 `"Corporate Managers"', add
label define za01a_occ2_lbl 13 `"General Managers"', add
label define za01a_occ2_lbl 21 `"Physical; Mathematical and Engineering Science Professionals"', add
label define za01a_occ2_lbl 22 `"Life Science and Health Professionals"', add
label define za01a_occ2_lbl 23 `"Teaching Professionals"', add
label define za01a_occ2_lbl 24 `"Other Professionals"', add
label define za01a_occ2_lbl 31 `"Natural and Engineering Science Associate Professionals"', add
label define za01a_occ2_lbl 32 `"Life science and Health Associate Professionals"', add
label define za01a_occ2_lbl 33 `"Teaching Associate Professionals"', add
label define za01a_occ2_lbl 34 `"Other Associate Professionals"', add
label define za01a_occ2_lbl 41 `"Office Clerks"', add
label define za01a_occ2_lbl 42 `"Customer Service Clerks"', add
label define za01a_occ2_lbl 51 `"Personal and Protective Services Workers"', add
label define za01a_occ2_lbl 52 `"Models; Salespersons and Demonstrators"', add
label define za01a_occ2_lbl 61 `"Market-oriented skilled Agricultural and Fishery Workers"', add
label define za01a_occ2_lbl 62 `"Subsistence Agricultural and Fishery Workers"', add
label define za01a_occ2_lbl 71 `"Extraction and Building Trade Workers"', add
label define za01a_occ2_lbl 72 `"Metal; Machinery and related Trade Workers"', add
label define za01a_occ2_lbl 73 `"Handicraft; Printing and related Trade Workers"', add
label define za01a_occ2_lbl 74 `"Other Craft and related Trade Workers"', add
label define za01a_occ2_lbl 81 `"Stationary-Plant and related Operators"', add
label define za01a_occ2_lbl 82 `"Machine Operators and Assemblers"', add
label define za01a_occ2_lbl 83 `"Drivers and Mobile-Plant Operators"', add
label define za01a_occ2_lbl 91 `"Sales and Services Elementary Occupations"', add
label define za01a_occ2_lbl 92 `"Agricultural; Fishery and related Labourers"', add
label define za01a_occ2_lbl 93 `"Mining; Construction; Manufacturing and Transport Labourers"', add
label define za01a_occ2_lbl 98 `"Unknown"', add
label define za01a_occ2_lbl 99 `"NIU (not in universe)"', add
label values za01a_occ2 za01a_occ2_lbl

label define za01a_occ_lbl 111 `"Legislators"'
label define za01a_occ_lbl 112 `"Senior government officers"', add
label define za01a_occ_lbl 113 `"Traditional chiefs and heads of villages"', add
label define za01a_occ_lbl 114 `"Senior officers of special-interest organizations"', add
label define za01a_occ_lbl 119 `"Legislators and senior officers not elsewhere classified"', add
label define za01a_occ_lbl 121 `"Directors and chief executives"', add
label define za01a_occ_lbl 122 `"Production and operations managers/department managers"', add
label define za01a_occ_lbl 123 `"Other managers/department managers"', add
label define za01a_occ_lbl 129 `"Corporate managers not elsewhere classified"', add
label define za01a_occ_lbl 131 `"General managers"', add
label define za01a_occ_lbl 139 `"General managers not elsewhere classified"', add
label define za01a_occ_lbl 211 `"Physicists; chemists and related professionals"', add
label define za01a_occ_lbl 212 `"Mathematicians; statisticians and related professionals"', add
label define za01a_occ_lbl 213 `"Computing professionals"', add
label define za01a_occ_lbl 214 `"Architects; engineers and related professionals"', add
label define za01a_occ_lbl 215 `"Physical sciences technologists"', add
label define za01a_occ_lbl 219 `"Physical; mathematical and engineering science professionals not elsewhere classified"', add
label define za01a_occ_lbl 221 `"Life science professionals"', add
label define za01a_occ_lbl 222 `"Health professionals (except nursing)"', add
label define za01a_occ_lbl 223 `"Nursing and midwifery professionals"', add
label define za01a_occ_lbl 229 `"Life science and health professionals not elsewhere classified"', add
label define za01a_occ_lbl 231 `"College; university and higher education institutions teaching professionals"', add
label define za01a_occ_lbl 232 `"Secondary education institutions teaching professionals"', add
label define za01a_occ_lbl 233 `"Primary and pre-primary education institutions teaching professionals"', add
label define za01a_occ_lbl 234 `"Special education institutions teaching professionals"', add
label define za01a_occ_lbl 235 `"Other teaching institutions professionals"', add
label define za01a_occ_lbl 239 `"Other education professionals not elsewhere classified"', add
label define za01a_occ_lbl 241 `"Business professionals"', add
label define za01a_occ_lbl 242 `"Legal professionals"', add
label define za01a_occ_lbl 243 `"Archivists; librarians and related information professionals"', add
label define za01a_occ_lbl 244 `"Social science and related professionals"', add
label define za01a_occ_lbl 245 `"Writers and creative or performing artists"', add
label define za01a_occ_lbl 246 `"Religious professionals"', add
label define za01a_occ_lbl 249 `"Other professionals not elsewhere classified"', add
label define za01a_occ_lbl 311 `"Natural and engineering science technicians"', add
label define za01a_occ_lbl 312 `"Computer associate professionals"', add
label define za01a_occ_lbl 313 `"Optical and electronic equipment operators"', add
label define za01a_occ_lbl 314 `"Ship and aircraft controllers and technicians"', add
label define za01a_occ_lbl 315 `"Safety and quality inspectors"', add
label define za01a_occ_lbl 321 `"Life science technicians and related associate professionals"', add
label define za01a_occ_lbl 322 `"Modern health associate professionals (except nursing)"', add
label define za01a_occ_lbl 323 `"Nursing and midwifery associate professionals"', add
label define za01a_occ_lbl 324 `"Traditional medicine practitioners and faith healers"', add
label define za01a_occ_lbl 329 `"Life science and health associate professionals not elsewhere classified"', add
label define za01a_occ_lbl 331 `"Primary education teaching associate professionals"', add
label define za01a_occ_lbl 332 `"Pre-primary education teaching associate professionals"', add
label define za01a_occ_lbl 333 `"Special education teaching associate professionals"', add
label define za01a_occ_lbl 334 `"Other teaching associate professionals"', add
label define za01a_occ_lbl 339 `"Teaching associate professionals not elsewhere classified"', add
label define za01a_occ_lbl 341 `"Finance and sales associate professionals"', add
label define za01a_occ_lbl 342 `"Business services agents and trade brokers"', add
label define za01a_occ_lbl 343 `"Administrative associate professionals"', add
label define za01a_occ_lbl 344 `"Customs; tax and related government associate professionals"', add
label define za01a_occ_lbl 345 `"Police inspectors and detectives"', add
label define za01a_occ_lbl 346 `"Social work associate professionals"', add
label define za01a_occ_lbl 347 `"Artistic; entertainment and sports associate professionals"', add
label define za01a_occ_lbl 348 `"Religious associate professionals"', add
label define za01a_occ_lbl 349 `"Other associate professionals not elsewhere classified"', add
label define za01a_occ_lbl 411 `"Secretaries and keyboard-operating clerks"', add
label define za01a_occ_lbl 412 `"Numerical clerks"', add
label define za01a_occ_lbl 413 `"Material-recording and transport clerks"', add
label define za01a_occ_lbl 414 `"Library; mail and related clerks"', add
label define za01a_occ_lbl 419 `"Other office clerks and clerks not elsewhere classified (except customer services clerks)"', add
label define za01a_occ_lbl 421 `"Cashiers; tellers and related clerks"', add
label define za01a_occ_lbl 422 `"Client information clerks"', add
label define za01a_occ_lbl 429 `"Customer services clerks not elsewhere classified"', add
label define za01a_occ_lbl 511 `"Travel attendants and related workers"', add
label define za01a_occ_lbl 512 `"Housekeeping and restaurant services workers"', add
label define za01a_occ_lbl 513 `"Personal care and related workers"', add
label define za01a_occ_lbl 514 `"Other personal services workers"', add
label define za01a_occ_lbl 515 `"Astrologers; fortune-tellers and related workers"', add
label define za01a_occ_lbl 516 `"Protective services workers"', add
label define za01a_occ_lbl 519 `"Personal and protective services workers not elsewhere classified"', add
label define za01a_occ_lbl 521 `"Fashion and other models"', add
label define za01a_occ_lbl 522 `"Shop salespersons and demonstrators"', add
label define za01a_occ_lbl 523 `"Stall and market salespersons"', add
label define za01a_occ_lbl 611 `"Market gardeners and crop growers"', add
label define za01a_occ_lbl 612 `"Market-oriented animal producers and related workers"', add
label define za01a_occ_lbl 613 `"Market-oriented crop and animal producers"', add
label define za01a_occ_lbl 614 `"Forestry and related workers"', add
label define za01a_occ_lbl 615 `"Fishery workers; hunters and trappers"', add
label define za01a_occ_lbl 619 `"Market-oriented skilled agricultural and fishery workers not elsewhere classified"', add
label define za01a_occ_lbl 621 `"Subsistence agricultural and fishery workers"', add
label define za01a_occ_lbl 711 `"Miners; shot-firers; stone cutters and carvers"', add
label define za01a_occ_lbl 712 `"Building frame and related trades workers"', add
label define za01a_occ_lbl 713 `"Building finishers and related trades workers"', add
label define za01a_occ_lbl 714 `"Painters; building structure cleaners and related trades workers"', add
label define za01a_occ_lbl 719 `"Extraction and building trades workers not elsewhere classified"', add
label define za01a_occ_lbl 721 `"Metal molders; welders; sheet-metal workers; structural metal preparers and related trades work"', add
label define za01a_occ_lbl 722 `"Blacksmiths; tool-makers and related trades workers (excluding apprentices/trainees)"', add
label define za01a_occ_lbl 723 `"Machinery mechanics and fitters"', add
label define za01a_occ_lbl 724 `"Electrical and electronic equipment mechanics and fitters"', add
label define za01a_occ_lbl 729 `"Metal; machinery and related trades workers not elsewhere classified"', add
label define za01a_occ_lbl 731 `"Precision workers in metal and related materials"', add
label define za01a_occ_lbl 732 `"Potters; glass-makers and related trades workers"', add
label define za01a_occ_lbl 733 `"Handicraft workers in wood; textile; leather and related materials"', add
label define za01a_occ_lbl 734 `"Printing and related trades workers"', add
label define za01a_occ_lbl 739 `"Precision; handicraft; printing and related trades workers not elsewhere classified"', add
label define za01a_occ_lbl 741 `"Food processing and related trades workers"', add
label define za01a_occ_lbl 742 `"Wood treaters; cabinetmakers and related trades workers"', add
label define za01a_occ_lbl 743 `"Textile; garment and related trades workers"', add
label define za01a_occ_lbl 744 `"Pelt; leather and shoemaking trades workers"', add
label define za01a_occ_lbl 749 `"Other craft and related trades workers not elsewhere classified"', add
label define za01a_occ_lbl 811 `"Mining and mineral processing plant operators"', add
label define za01a_occ_lbl 812 `"Metal-processing plant operators"', add
label define za01a_occ_lbl 813 `"Glass; ceramics and related plant operators"', add
label define za01a_occ_lbl 814 `"Wood-processing and papermaking plant operators"', add
label define za01a_occ_lbl 815 `"Chemical-processing plant operators"', add
label define za01a_occ_lbl 816 `"Power-production and related plant operators"', add
label define za01a_occ_lbl 817 `"Automated assembly-line and industrial-robot operators"', add
label define za01a_occ_lbl 819 `"Stationary-plant and related operators not elsewhere classified"', add
label define za01a_occ_lbl 821 `"Metal and mineral-products machine operators"', add
label define za01a_occ_lbl 822 `"Chemical-products machine operators"', add
label define za01a_occ_lbl 823 `"Rubber and plastic products machine operators"', add
label define za01a_occ_lbl 824 `"Wood products machine operators"', add
label define za01a_occ_lbl 825 `"Printing; binding and paper products machine operators"', add
label define za01a_occ_lbl 826 `"Textile; fur and leather products machine operators"', add
label define za01a_occ_lbl 827 `"Food and related products machine operators"', add
label define za01a_occ_lbl 828 `"Assemblers"', add
label define za01a_occ_lbl 829 `"Other machine operators and assemblers not elsewhere classified"', add
label define za01a_occ_lbl 831 `"Locomotive-engine drivers and related workers"', add
label define za01a_occ_lbl 832 `"Motor vehicle drivers and related workers"', add
label define za01a_occ_lbl 833 `"Agricultural and other mobile plant operators"', add
label define za01a_occ_lbl 834 `"Ships' deck crews and related workers"', add
label define za01a_occ_lbl 839 `"Drivers and mobile plant operators not elsewhere classified"', add
label define za01a_occ_lbl 911 `"Street vendors and related workers"', add
label define za01a_occ_lbl 912 `"Shoe-cleaning and other elementary street services occupations"', add
label define za01a_occ_lbl 913 `"Domestic and related helpers; cleaners and launderers"', add
label define za01a_occ_lbl 914 `"Building caretakers and window and related cleaners"', add
label define za01a_occ_lbl 915 `"Messengers; porters; doorkeepers and related workers"', add
label define za01a_occ_lbl 916 `"Garbage collectors and related labourers"', add
label define za01a_occ_lbl 919 `"Elementary sales and services occupations not elsewhere classified"', add
label define za01a_occ_lbl 921 `"Agricultural; fishery and related labourers"', add
label define za01a_occ_lbl 929 `"Agricultural; fishery and related labourers not elsewhere classified"', add
label define za01a_occ_lbl 931 `"Mining and construction labourers"', add
label define za01a_occ_lbl 932 `"Manufacturing labourers"', add
label define za01a_occ_lbl 933 `"Transport labourers and freight handlers"', add
label define za01a_occ_lbl 939 `"Labourers in mining; construction; manufacturing and transport not elsewhere classified"', add
label define za01a_occ_lbl 997 `"Non-identifiable occupations"', add
label define za01a_occ_lbl 998 `"Unknown"', add
label define za01a_occ_lbl 999 `"NIU (under 10 years, not employed or economically inactive)"', add
label values za01a_occ za01a_occ_lbl

label define za01a_hrswrk_lbl 01 `"1"'
label define za01a_hrswrk_lbl 02 `"2"', add
label define za01a_hrswrk_lbl 03 `"3"', add
label define za01a_hrswrk_lbl 04 `"4"', add
label define za01a_hrswrk_lbl 05 `"5"', add
label define za01a_hrswrk_lbl 06 `"6"', add
label define za01a_hrswrk_lbl 07 `"7"', add
label define za01a_hrswrk_lbl 08 `"8"', add
label define za01a_hrswrk_lbl 09 `"9"', add
label define za01a_hrswrk_lbl 10 `"10"', add
label define za01a_hrswrk_lbl 11 `"11"', add
label define za01a_hrswrk_lbl 12 `"12"', add
label define za01a_hrswrk_lbl 13 `"13"', add
label define za01a_hrswrk_lbl 14 `"14"', add
label define za01a_hrswrk_lbl 15 `"15"', add
label define za01a_hrswrk_lbl 16 `"16"', add
label define za01a_hrswrk_lbl 17 `"17"', add
label define za01a_hrswrk_lbl 18 `"18"', add
label define za01a_hrswrk_lbl 19 `"19"', add
label define za01a_hrswrk_lbl 20 `"20"', add
label define za01a_hrswrk_lbl 21 `"21"', add
label define za01a_hrswrk_lbl 22 `"22"', add
label define za01a_hrswrk_lbl 23 `"23"', add
label define za01a_hrswrk_lbl 24 `"24"', add
label define za01a_hrswrk_lbl 25 `"25"', add
label define za01a_hrswrk_lbl 26 `"26"', add
label define za01a_hrswrk_lbl 27 `"27"', add
label define za01a_hrswrk_lbl 28 `"28"', add
label define za01a_hrswrk_lbl 29 `"29"', add
label define za01a_hrswrk_lbl 30 `"30"', add
label define za01a_hrswrk_lbl 31 `"31"', add
label define za01a_hrswrk_lbl 32 `"32"', add
label define za01a_hrswrk_lbl 33 `"33"', add
label define za01a_hrswrk_lbl 34 `"34"', add
label define za01a_hrswrk_lbl 35 `"35"', add
label define za01a_hrswrk_lbl 36 `"36"', add
label define za01a_hrswrk_lbl 37 `"37"', add
label define za01a_hrswrk_lbl 38 `"38"', add
label define za01a_hrswrk_lbl 39 `"39"', add
label define za01a_hrswrk_lbl 40 `"40"', add
label define za01a_hrswrk_lbl 41 `"41"', add
label define za01a_hrswrk_lbl 42 `"42"', add
label define za01a_hrswrk_lbl 43 `"43"', add
label define za01a_hrswrk_lbl 44 `"44"', add
label define za01a_hrswrk_lbl 45 `"45"', add
label define za01a_hrswrk_lbl 46 `"46"', add
label define za01a_hrswrk_lbl 47 `"47"', add
label define za01a_hrswrk_lbl 48 `"48"', add
label define za01a_hrswrk_lbl 49 `"49"', add
label define za01a_hrswrk_lbl 50 `"50"', add
label define za01a_hrswrk_lbl 51 `"51"', add
label define za01a_hrswrk_lbl 52 `"52"', add
label define za01a_hrswrk_lbl 53 `"53"', add
label define za01a_hrswrk_lbl 54 `"54"', add
label define za01a_hrswrk_lbl 55 `"55"', add
label define za01a_hrswrk_lbl 56 `"56"', add
label define za01a_hrswrk_lbl 57 `"57"', add
label define za01a_hrswrk_lbl 58 `"58"', add
label define za01a_hrswrk_lbl 59 `"59"', add
label define za01a_hrswrk_lbl 60 `"60"', add
label define za01a_hrswrk_lbl 61 `"61"', add
label define za01a_hrswrk_lbl 62 `"62"', add
label define za01a_hrswrk_lbl 63 `"63"', add
label define za01a_hrswrk_lbl 64 `"64"', add
label define za01a_hrswrk_lbl 65 `"65"', add
label define za01a_hrswrk_lbl 66 `"66"', add
label define za01a_hrswrk_lbl 67 `"67"', add
label define za01a_hrswrk_lbl 68 `"68"', add
label define za01a_hrswrk_lbl 69 `"69"', add
label define za01a_hrswrk_lbl 70 `"70"', add
label define za01a_hrswrk_lbl 71 `"71"', add
label define za01a_hrswrk_lbl 72 `"72"', add
label define za01a_hrswrk_lbl 73 `"73"', add
label define za01a_hrswrk_lbl 74 `"74"', add
label define za01a_hrswrk_lbl 75 `"75"', add
label define za01a_hrswrk_lbl 76 `"76"', add
label define za01a_hrswrk_lbl 77 `"77"', add
label define za01a_hrswrk_lbl 78 `"78"', add
label define za01a_hrswrk_lbl 79 `"79"', add
label define za01a_hrswrk_lbl 80 `"80"', add
label define za01a_hrswrk_lbl 81 `"81"', add
label define za01a_hrswrk_lbl 82 `"82"', add
label define za01a_hrswrk_lbl 83 `"83"', add
label define za01a_hrswrk_lbl 84 `"84"', add
label define za01a_hrswrk_lbl 85 `"85"', add
label define za01a_hrswrk_lbl 86 `"86"', add
label define za01a_hrswrk_lbl 87 `"87"', add
label define za01a_hrswrk_lbl 88 `"88"', add
label define za01a_hrswrk_lbl 89 `"89"', add
label define za01a_hrswrk_lbl 90 `"90"', add
label define za01a_hrswrk_lbl 91 `"91"', add
label define za01a_hrswrk_lbl 92 `"92"', add
label define za01a_hrswrk_lbl 93 `"93"', add
label define za01a_hrswrk_lbl 94 `"94"', add
label define za01a_hrswrk_lbl 95 `"95"', add
label define za01a_hrswrk_lbl 99 `"NIU (not in universe)"', add
label values za01a_hrswrk za01a_hrswrk_lbl

label define za01a_wrkhere_lbl 1 `"Yes"'
label define za01a_wrkhere_lbl 2 `"No"', add
label define za01a_wrkhere_lbl 9 `"NIU (not in universe)"', add
label values za01a_wrkhere za01a_wrkhere_lbl

label define za01a_wrkprov_lbl 01 `"Western Cape"'
label define za01a_wrkprov_lbl 02 `"Eastern Cape"', add
label define za01a_wrkprov_lbl 03 `"Northern Cape"', add
label define za01a_wrkprov_lbl 04 `"Free State"', add
label define za01a_wrkprov_lbl 05 `"KwaZulu-Natal"', add
label define za01a_wrkprov_lbl 06 `"North West"', add
label define za01a_wrkprov_lbl 07 `"Gauteng"', add
label define za01a_wrkprov_lbl 08 `"Mpumalanga"', add
label define za01a_wrkprov_lbl 09 `"Limpopo"', add
label define za01a_wrkprov_lbl 97 `"Foreign place of work"', add
label define za01a_wrkprov_lbl 98 `"Unknown"', add
label define za01a_wrkprov_lbl 99 `"NIU (not in universe)"', add
label values za01a_wrkprov za01a_wrkprov_lbl

label define za01a_chborn_lbl 00 `"0"'
label define za01a_chborn_lbl 01 `"1"', add
label define za01a_chborn_lbl 02 `"2"', add
label define za01a_chborn_lbl 03 `"3"', add
label define za01a_chborn_lbl 04 `"4"', add
label define za01a_chborn_lbl 05 `"5"', add
label define za01a_chborn_lbl 06 `"6"', add
label define za01a_chborn_lbl 07 `"7"', add
label define za01a_chborn_lbl 08 `"8"', add
label define za01a_chborn_lbl 09 `"9"', add
label define za01a_chborn_lbl 10 `"10"', add
label define za01a_chborn_lbl 11 `"11"', add
label define za01a_chborn_lbl 12 `"12"', add
label define za01a_chborn_lbl 13 `"13"', add
label define za01a_chborn_lbl 14 `"14"', add
label define za01a_chborn_lbl 15 `"15"', add
label define za01a_chborn_lbl 16 `"16"', add
label define za01a_chborn_lbl 17 `"17"', add
label define za01a_chborn_lbl 18 `"18"', add
label define za01a_chborn_lbl 19 `"19"', add
label define za01a_chborn_lbl 20 `"20"', add
label define za01a_chborn_lbl 21 `"21"', add
label define za01a_chborn_lbl 22 `"22"', add
label define za01a_chborn_lbl 23 `"23"', add
label define za01a_chborn_lbl 24 `"24"', add
label define za01a_chborn_lbl 99 `"NIU (not in universe)"', add
label values za01a_chborn za01a_chborn_lbl

label define za01a_bornmal_lbl 00 `"0"'
label define za01a_bornmal_lbl 01 `"1"', add
label define za01a_bornmal_lbl 02 `"2"', add
label define za01a_bornmal_lbl 03 `"3"', add
label define za01a_bornmal_lbl 04 `"4"', add
label define za01a_bornmal_lbl 05 `"5"', add
label define za01a_bornmal_lbl 06 `"6"', add
label define za01a_bornmal_lbl 07 `"7"', add
label define za01a_bornmal_lbl 08 `"8"', add
label define za01a_bornmal_lbl 09 `"9"', add
label define za01a_bornmal_lbl 10 `"10"', add
label define za01a_bornmal_lbl 11 `"11"', add
label define za01a_bornmal_lbl 12 `"12"', add
label define za01a_bornmal_lbl 13 `"13"', add
label define za01a_bornmal_lbl 14 `"14"', add
label define za01a_bornmal_lbl 15 `"15"', add
label define za01a_bornmal_lbl 16 `"16"', add
label define za01a_bornmal_lbl 17 `"17"', add
label define za01a_bornmal_lbl 18 `"18"', add
label define za01a_bornmal_lbl 19 `"19"', add
label define za01a_bornmal_lbl 20 `"20"', add
label define za01a_bornmal_lbl 21 `"21"', add
label define za01a_bornmal_lbl 22 `"22"', add
label define za01a_bornmal_lbl 23 `"23"', add
label define za01a_bornmal_lbl 24 `"24"', add
label define za01a_bornmal_lbl 99 `"NIU (not in universe)"', add
label values za01a_bornmal za01a_bornmal_lbl

label define za01a_bornfem_lbl 00 `"0"'
label define za01a_bornfem_lbl 01 `"1"', add
label define za01a_bornfem_lbl 02 `"2"', add
label define za01a_bornfem_lbl 03 `"3"', add
label define za01a_bornfem_lbl 04 `"4"', add
label define za01a_bornfem_lbl 05 `"5"', add
label define za01a_bornfem_lbl 06 `"6"', add
label define za01a_bornfem_lbl 07 `"7"', add
label define za01a_bornfem_lbl 08 `"8"', add
label define za01a_bornfem_lbl 09 `"9"', add
label define za01a_bornfem_lbl 10 `"10"', add
label define za01a_bornfem_lbl 11 `"11"', add
label define za01a_bornfem_lbl 12 `"12"', add
label define za01a_bornfem_lbl 13 `"13"', add
label define za01a_bornfem_lbl 14 `"14"', add
label define za01a_bornfem_lbl 15 `"15"', add
label define za01a_bornfem_lbl 16 `"16"', add
label define za01a_bornfem_lbl 17 `"17"', add
label define za01a_bornfem_lbl 18 `"18"', add
label define za01a_bornfem_lbl 19 `"19"', add
label define za01a_bornfem_lbl 20 `"20"', add
label define za01a_bornfem_lbl 21 `"21"', add
label define za01a_bornfem_lbl 22 `"22"', add
label define za01a_bornfem_lbl 23 `"23"', add
label define za01a_bornfem_lbl 24 `"24"', add
label define za01a_bornfem_lbl 99 `"NIU (not in universe)"', add
label values za01a_bornfem za01a_bornfem_lbl

label define za01a_chsurv_lbl 00 `"0"'
label define za01a_chsurv_lbl 01 `"1"', add
label define za01a_chsurv_lbl 02 `"2"', add
label define za01a_chsurv_lbl 03 `"3"', add
label define za01a_chsurv_lbl 04 `"4"', add
label define za01a_chsurv_lbl 05 `"5"', add
label define za01a_chsurv_lbl 06 `"6"', add
label define za01a_chsurv_lbl 07 `"7"', add
label define za01a_chsurv_lbl 08 `"8"', add
label define za01a_chsurv_lbl 09 `"9"', add
label define za01a_chsurv_lbl 10 `"10"', add
label define za01a_chsurv_lbl 11 `"11"', add
label define za01a_chsurv_lbl 12 `"12"', add
label define za01a_chsurv_lbl 13 `"13"', add
label define za01a_chsurv_lbl 14 `"14"', add
label define za01a_chsurv_lbl 15 `"15"', add
label define za01a_chsurv_lbl 16 `"16"', add
label define za01a_chsurv_lbl 17 `"17"', add
label define za01a_chsurv_lbl 18 `"18"', add
label define za01a_chsurv_lbl 19 `"19"', add
label define za01a_chsurv_lbl 20 `"20"', add
label define za01a_chsurv_lbl 21 `"21"', add
label define za01a_chsurv_lbl 22 `"22"', add
label define za01a_chsurv_lbl 23 `"23"', add
label define za01a_chsurv_lbl 24 `"24"', add
label define za01a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values za01a_chsurv za01a_chsurv_lbl

label define za01a_survmal_lbl 00 `"0"'
label define za01a_survmal_lbl 01 `"1"', add
label define za01a_survmal_lbl 02 `"2"', add
label define za01a_survmal_lbl 03 `"3"', add
label define za01a_survmal_lbl 04 `"4"', add
label define za01a_survmal_lbl 05 `"5"', add
label define za01a_survmal_lbl 06 `"6"', add
label define za01a_survmal_lbl 07 `"7"', add
label define za01a_survmal_lbl 08 `"8"', add
label define za01a_survmal_lbl 09 `"9"', add
label define za01a_survmal_lbl 10 `"10"', add
label define za01a_survmal_lbl 11 `"11"', add
label define za01a_survmal_lbl 12 `"12"', add
label define za01a_survmal_lbl 13 `"13"', add
label define za01a_survmal_lbl 14 `"14"', add
label define za01a_survmal_lbl 15 `"15"', add
label define za01a_survmal_lbl 16 `"16"', add
label define za01a_survmal_lbl 17 `"17"', add
label define za01a_survmal_lbl 18 `"18"', add
label define za01a_survmal_lbl 19 `"19"', add
label define za01a_survmal_lbl 20 `"20"', add
label define za01a_survmal_lbl 21 `"21"', add
label define za01a_survmal_lbl 22 `"22"', add
label define za01a_survmal_lbl 23 `"23"', add
label define za01a_survmal_lbl 24 `"24"', add
label define za01a_survmal_lbl 99 `"NIU (not in universe)"', add
label values za01a_survmal za01a_survmal_lbl

label define za01a_survfem_lbl 00 `"0"'
label define za01a_survfem_lbl 01 `"1"', add
label define za01a_survfem_lbl 02 `"2"', add
label define za01a_survfem_lbl 03 `"3"', add
label define za01a_survfem_lbl 04 `"4"', add
label define za01a_survfem_lbl 05 `"5"', add
label define za01a_survfem_lbl 06 `"6"', add
label define za01a_survfem_lbl 07 `"7"', add
label define za01a_survfem_lbl 08 `"8"', add
label define za01a_survfem_lbl 09 `"9"', add
label define za01a_survfem_lbl 10 `"10"', add
label define za01a_survfem_lbl 11 `"11"', add
label define za01a_survfem_lbl 12 `"12"', add
label define za01a_survfem_lbl 13 `"13"', add
label define za01a_survfem_lbl 14 `"14"', add
label define za01a_survfem_lbl 15 `"15"', add
label define za01a_survfem_lbl 16 `"16"', add
label define za01a_survfem_lbl 17 `"17"', add
label define za01a_survfem_lbl 18 `"18"', add
label define za01a_survfem_lbl 19 `"19"', add
label define za01a_survfem_lbl 20 `"20"', add
label define za01a_survfem_lbl 21 `"21"', add
label define za01a_survfem_lbl 22 `"22"', add
label define za01a_survfem_lbl 23 `"23"', add
label define za01a_survfem_lbl 24 `"24"', add
label define za01a_survfem_lbl 99 `"NIU (not in universe)"', add
label values za01a_survfem za01a_survfem_lbl

label define za01a_lstmo_lbl 01 `"January"'
label define za01a_lstmo_lbl 02 `"February"', add
label define za01a_lstmo_lbl 03 `"March"', add
label define za01a_lstmo_lbl 04 `"April"', add
label define za01a_lstmo_lbl 05 `"May"', add
label define za01a_lstmo_lbl 06 `"June"', add
label define za01a_lstmo_lbl 07 `"July"', add
label define za01a_lstmo_lbl 08 `"August"', add
label define za01a_lstmo_lbl 09 `"September"', add
label define za01a_lstmo_lbl 10 `"October"', add
label define za01a_lstmo_lbl 11 `"November"', add
label define za01a_lstmo_lbl 12 `"December"', add
label define za01a_lstmo_lbl 99 `"NIU (not in universe)"', add
label values za01a_lstmo za01a_lstmo_lbl

label define za01a_lstyr_lbl 1962 `"1962"'
label define za01a_lstyr_lbl 1963 `"1963"', add
label define za01a_lstyr_lbl 1964 `"1964"', add
label define za01a_lstyr_lbl 1965 `"1965"', add
label define za01a_lstyr_lbl 1966 `"1966"', add
label define za01a_lstyr_lbl 1967 `"1967"', add
label define za01a_lstyr_lbl 1968 `"1968"', add
label define za01a_lstyr_lbl 1969 `"1969"', add
label define za01a_lstyr_lbl 1970 `"1970"', add
label define za01a_lstyr_lbl 1971 `"1971"', add
label define za01a_lstyr_lbl 1972 `"1972"', add
label define za01a_lstyr_lbl 1973 `"1973"', add
label define za01a_lstyr_lbl 1974 `"1974"', add
label define za01a_lstyr_lbl 1975 `"1975"', add
label define za01a_lstyr_lbl 1976 `"1976"', add
label define za01a_lstyr_lbl 1977 `"1977"', add
label define za01a_lstyr_lbl 1978 `"1978"', add
label define za01a_lstyr_lbl 1979 `"1979"', add
label define za01a_lstyr_lbl 1980 `"1980"', add
label define za01a_lstyr_lbl 1981 `"1981"', add
label define za01a_lstyr_lbl 1982 `"1982"', add
label define za01a_lstyr_lbl 1983 `"1983"', add
label define za01a_lstyr_lbl 1984 `"1984"', add
label define za01a_lstyr_lbl 1985 `"1985"', add
label define za01a_lstyr_lbl 1986 `"1986"', add
label define za01a_lstyr_lbl 1987 `"1987"', add
label define za01a_lstyr_lbl 1988 `"1988"', add
label define za01a_lstyr_lbl 1989 `"1989"', add
label define za01a_lstyr_lbl 1990 `"1990"', add
label define za01a_lstyr_lbl 1991 `"1991"', add
label define za01a_lstyr_lbl 1992 `"1992"', add
label define za01a_lstyr_lbl 1993 `"1993"', add
label define za01a_lstyr_lbl 1994 `"1994"', add
label define za01a_lstyr_lbl 1995 `"1995"', add
label define za01a_lstyr_lbl 1996 `"1996"', add
label define za01a_lstyr_lbl 1997 `"1997"', add
label define za01a_lstyr_lbl 1998 `"1998"', add
label define za01a_lstyr_lbl 1999 `"1999"', add
label define za01a_lstyr_lbl 2000 `"2000"', add
label define za01a_lstyr_lbl 2001 `"2001"', add
label define za01a_lstyr_lbl 9999 `"NIU (not in universe)"', add
label values za01a_lstyr za01a_lstyr_lbl

label define za01a_lsttime_lbl 00 `"0"'
label define za01a_lsttime_lbl 01 `"1"', add
label define za01a_lsttime_lbl 02 `"2"', add
label define za01a_lsttime_lbl 03 `"3"', add
label define za01a_lsttime_lbl 04 `"4"', add
label define za01a_lsttime_lbl 05 `"5"', add
label define za01a_lsttime_lbl 06 `"6"', add
label define za01a_lsttime_lbl 07 `"7"', add
label define za01a_lsttime_lbl 08 `"8"', add
label define za01a_lsttime_lbl 09 `"9"', add
label define za01a_lsttime_lbl 10 `"10"', add
label define za01a_lsttime_lbl 11 `"11"', add
label define za01a_lsttime_lbl 12 `"12"', add
label define za01a_lsttime_lbl 13 `"13"', add
label define za01a_lsttime_lbl 14 `"14"', add
label define za01a_lsttime_lbl 15 `"15"', add
label define za01a_lsttime_lbl 16 `"16"', add
label define za01a_lsttime_lbl 17 `"17"', add
label define za01a_lsttime_lbl 18 `"18"', add
label define za01a_lsttime_lbl 19 `"19"', add
label define za01a_lsttime_lbl 20 `"20"', add
label define za01a_lsttime_lbl 21 `"21"', add
label define za01a_lsttime_lbl 22 `"22"', add
label define za01a_lsttime_lbl 23 `"23"', add
label define za01a_lsttime_lbl 24 `"24"', add
label define za01a_lsttime_lbl 25 `"25"', add
label define za01a_lsttime_lbl 26 `"26"', add
label define za01a_lsttime_lbl 27 `"27"', add
label define za01a_lsttime_lbl 28 `"28"', add
label define za01a_lsttime_lbl 29 `"29"', add
label define za01a_lsttime_lbl 30 `"30"', add
label define za01a_lsttime_lbl 31 `"31"', add
label define za01a_lsttime_lbl 32 `"32"', add
label define za01a_lsttime_lbl 33 `"33"', add
label define za01a_lsttime_lbl 34 `"34"', add
label define za01a_lsttime_lbl 35 `"35"', add
label define za01a_lsttime_lbl 36 `"36"', add
label define za01a_lsttime_lbl 37 `"37"', add
label define za01a_lsttime_lbl 38 `"38"', add
label define za01a_lsttime_lbl 99 `"NIU (not in universe)"', add
label values za01a_lsttime za01a_lsttime_lbl

label define za01a_lstage_lbl 12 `"12"'
label define za01a_lstage_lbl 13 `"13"', add
label define za01a_lstage_lbl 14 `"14"', add
label define za01a_lstage_lbl 15 `"15"', add
label define za01a_lstage_lbl 16 `"16"', add
label define za01a_lstage_lbl 17 `"17"', add
label define za01a_lstage_lbl 18 `"18"', add
label define za01a_lstage_lbl 19 `"19"', add
label define za01a_lstage_lbl 20 `"20"', add
label define za01a_lstage_lbl 21 `"21"', add
label define za01a_lstage_lbl 22 `"22"', add
label define za01a_lstage_lbl 23 `"23"', add
label define za01a_lstage_lbl 24 `"24"', add
label define za01a_lstage_lbl 25 `"25"', add
label define za01a_lstage_lbl 26 `"26"', add
label define za01a_lstage_lbl 27 `"27"', add
label define za01a_lstage_lbl 28 `"28"', add
label define za01a_lstage_lbl 29 `"29"', add
label define za01a_lstage_lbl 30 `"30"', add
label define za01a_lstage_lbl 31 `"31"', add
label define za01a_lstage_lbl 32 `"32"', add
label define za01a_lstage_lbl 33 `"33"', add
label define za01a_lstage_lbl 34 `"34"', add
label define za01a_lstage_lbl 35 `"35"', add
label define za01a_lstage_lbl 36 `"36"', add
label define za01a_lstage_lbl 37 `"37"', add
label define za01a_lstage_lbl 38 `"38"', add
label define za01a_lstage_lbl 39 `"39"', add
label define za01a_lstage_lbl 40 `"40"', add
label define za01a_lstage_lbl 41 `"41"', add
label define za01a_lstage_lbl 42 `"42"', add
label define za01a_lstage_lbl 43 `"43"', add
label define za01a_lstage_lbl 44 `"44"', add
label define za01a_lstage_lbl 45 `"45"', add
label define za01a_lstage_lbl 46 `"46"', add
label define za01a_lstage_lbl 47 `"47"', add
label define za01a_lstage_lbl 48 `"48"', add
label define za01a_lstage_lbl 49 `"49"', add
label define za01a_lstage_lbl 50 `"50"', add
label define za01a_lstage_lbl 99 `"NIU (not in universe)"', add
label values za01a_lstage za01a_lstage_lbl

label define za01a_lstsex_lbl 1 `"Male"'
label define za01a_lstsex_lbl 2 `"Female"', add
label define za01a_lstsex_lbl 9 `"NIU (not in universe)"', add
label values za01a_lstsex za01a_lstsex_lbl

label define za01a_lstlive_lbl 1 `"Alive"'
label define za01a_lstlive_lbl 2 `"Dead"', add
label define za01a_lstlive_lbl 9 `"NIU (not in universe)"', add
label values za01a_lstlive za01a_lstlive_lbl

label define za01a_travwrk_lbl 0 `"Not applicable - not working and not attending school"'
label define za01a_travwrk_lbl 1 `"On foot"', add
label define za01a_travwrk_lbl 2 `"By bicycle"', add
label define za01a_travwrk_lbl 3 `"By motorcycle"', add
label define za01a_travwrk_lbl 4 `"By car as a driver"', add
label define za01a_travwrk_lbl 5 `"By car as a passenger"', add
label define za01a_travwrk_lbl 6 `"By minibus/taxi"', add
label define za01a_travwrk_lbl 7 `"By bus"', add
label define za01a_travwrk_lbl 8 `"By train"', add
label define za01a_travwrk_lbl 9 `"Other"', add
label values za01a_travwrk za01a_travwrk_lbl

label define za01a_income_lbl 01 `"no income"'
label define za01a_income_lbl 02 `"R 1 - R 4 800"', add
label define za01a_income_lbl 03 `"R 4 801 - R 9 600"', add
label define za01a_income_lbl 04 `"R 9 601- R 19 200"', add
label define za01a_income_lbl 05 `"R 19 201- R 38 400"', add
label define za01a_income_lbl 06 `"R 38 401 - R 76 800"', add
label define za01a_income_lbl 07 `"R 76 801 - R 153 600"', add
label define za01a_income_lbl 08 `"R 153 601 - R 307 200"', add
label define za01a_income_lbl 09 `"R 307 201- R 614 400"', add
label define za01a_income_lbl 10 `"R 614 401 - R 1 228 800"', add
label define za01a_income_lbl 11 `"R 1 228 801 - R 2 457 600"', add
label define za01a_income_lbl 12 `"R 2 457 601 or more"', add
label values za01a_income za01a_income_lbl

label define za01a_enumplac_lbl 1 `"Same place"'
label define za01a_enumplac_lbl 2 `"Different places, same province"', add
label define za01a_enumplac_lbl 3 `"Different provinces"', add
label define za01a_enumplac_lbl 4 `"Foreign usual residence"', add
label define za01a_enumplac_lbl 8 `"Unknown"', add
label values za01a_enumplac za01a_enumplac_lbl

label define za01a_enumprov_lbl 1 `"Same province"'
label define za01a_enumprov_lbl 2 `"Different provinces"', add
label define za01a_enumprov_lbl 3 `"Foreign birth place"', add
label values za01a_enumprov za01a_enumprov_lbl

label define za01a_enum96_lbl 1 `"Same place"'
label define za01a_enum96_lbl 2 `"Different places, same province"', add
label define za01a_enum96_lbl 3 `"Different provinces"', add
label define za01a_enum96_lbl 4 `"Foreign 1996 residence"', add
label define za01a_enum96_lbl 8 `"Unknown"', add
label define za01a_enum96_lbl 9 `"NIU (not in universe)"', add
label values za01a_enum96 za01a_enum96_lbl

label define za01a_bplcitiz_lbl 1 `"Foreign place of birth, not SA citizen"'
label define za01a_bplcitiz_lbl 2 `"Foreign place of birth, SA citizen"', add
label define za01a_bplcitiz_lbl 3 `"Born in SA, not SA citizen"', add
label define za01a_bplcitiz_lbl 4 `"Born in SA, SA citizen"', add
label values za01a_bplcitiz za01a_bplcitiz_lbl

label define za01a_bplusl_lbl 0 `"NIU (not in universe)"'
label define za01a_bplusl_lbl 1 `"Birth province same as enumeration province, usual residence same as enumeration place and province"', add
label define za01a_bplusl_lbl 2 `"Birth province same as enumeration province, usual residence different place within enumeration province"', add
label define za01a_bplusl_lbl 3 `"Birth province same as enumeration province, usual residence different province"', add
label define za01a_bplusl_lbl 4 `"Birth province same as enumeration province, foreign usual residence"', add
label define za01a_bplusl_lbl 5 `"Birth province different from enumeration province, usual residence same as enumeration place and province"', add
label define za01a_bplusl_lbl 6 `"Birth province different from enumeration province, usual residence different place within enumeration province"', add
label define za01a_bplusl_lbl 7 `"Birth province different from enumeration province, usual residence different province"', add
label define za01a_bplusl_lbl 8 `"Birth province different from enumeration province, foreign usual residence"', add
label define za01a_bplusl_lbl 9 `"Unknown"', add
label values za01a_bplusl za01a_bplusl_lbl

label define za01a_bplres96_lbl 0 `"NIU (not in universe)"'
label define za01a_bplres96_lbl 1 `"Birth province same as enumeration province, 1996 residence same as enumeration place and province"', add
label define za01a_bplres96_lbl 2 `"Birth province same as enumeration province, 1996 residence different place within enumeration province"', add
label define za01a_bplres96_lbl 3 `"Birth province same as enumeration province, 1996 residence different province"', add
label define za01a_bplres96_lbl 4 `"Birth province same as enumeration province, foreign 1996 residence"', add
label define za01a_bplres96_lbl 5 `"Birth province different from enumeration province, 1996 residence same as enumeration place and province"', add
label define za01a_bplres96_lbl 6 `"Birth province different from enumeration province, 1996 residence different place within enumeration province"', add
label define za01a_bplres96_lbl 7 `"Birth province different from enumeration province, 1996 residence different province"', add
label define za01a_bplres96_lbl 8 `"Birth province different from enumeration province, foreign 1996 residence"', add
label define za01a_bplres96_lbl 9 `"Unknown"', add
label values za01a_bplres96 za01a_bplres96_lbl

label define za01a_uslres96_lbl 01 `"Usual residence within enumeration province, 1996 residence within enumeration province"'
label define za01a_uslres96_lbl 02 `"Usual residence within enumeration province, 1996 residence not in enumeration province but within SA"', add
label define za01a_uslres96_lbl 03 `"Usual residence within enumeration province, foreign 1996 residence"', add
label define za01a_uslres96_lbl 04 `"Usual residence not in enumeration province but in SA, 1996 residence within enumeration province"', add
label define za01a_uslres96_lbl 05 `"Usual residence not in enumeration province but in SA, 1996 residence not in enumeration province but within SA"', add
label define za01a_uslres96_lbl 06 `"Usual residence not in enumeration province but in SA, foreign 1996 residence"', add
label define za01a_uslres96_lbl 07 `"Foreign usual residence, 1996 residence within enumeration province"', add
label define za01a_uslres96_lbl 08 `"Foreign usual residence, 1996 residence not in enumeration province but within SA"', add
label define za01a_uslres96_lbl 09 `"Foreign usual residence, foreign 1996 residence"', add
label define za01a_uslres96_lbl 98 `"Unknown"', add
label define za01a_uslres96_lbl 99 `"NIU (not in universe)"', add
label values za01a_uslres96 za01a_uslres96_lbl

label define za01a_bpl96en_lbl 0 `"NIU (not in universe)"'
label define za01a_bpl96en_lbl 1 `"Birth province same as 1996 residence province, birth province same as enumeration province, 1996 residence province same as enumeration province"', add
label define za01a_bpl96en_lbl 2 `"Birth province same as 1996 residence province, birth province same as enumeration province, 1996 residence province not same as enumeration province"', add
label define za01a_bpl96en_lbl 3 `"Birth province same as 1996 residence province, birth province not same as enumeration province, 1996 residence province same as enumeration province"', add
label define za01a_bpl96en_lbl 4 `"Birth province same as 1996 residence province, birth province not same as enumeration province, 1996 residence province not same as enumeration province"', add
label define za01a_bpl96en_lbl 5 `"Birth province not same as 1996 residence province, birth province same as enumeration province, 1996 residence province same as enumeration province"', add
label define za01a_bpl96en_lbl 6 `"Birth province not same as 1996 residence province, birth province same as enumeration province, 1996 residence province not same as enumeration province"', add
label define za01a_bpl96en_lbl 7 `"Birth province not same as 1996 residence province, birth province not same as enumeration province, 1996 residence province same as enumeration province"', add
label define za01a_bpl96en_lbl 8 `"Birth province not same as 1996 residence province, birth province not same as enumeration province, 1996 residence province not same as enumeration province"', add
label define za01a_bpl96en_lbl 9 `"Unknown"', add
label values za01a_bpl96en za01a_bpl96en_lbl

label define za01a_wtper_lbl 09470240 `"9470240"'
label define za01a_wtper_lbl 09868070 `"9868070"', add
label define za01a_wtper_lbl 10000000 `"10000000"', add
label define za01a_wtper_lbl 10310300 `"10310300"', add
label define za01a_wtper_lbl 10320330 `"10320330"', add
label define za01a_wtper_lbl 10446220 `"10446220"', add
label define za01a_wtper_lbl 10524020 `"10524020"', add
label define za01a_wtper_lbl 10616450 `"10616450"', add
label define za01a_wtper_lbl 10665590 `"10665590"', add
label define za01a_wtper_lbl 10711530 `"10711530"', add
label define za01a_wtper_lbl 10784760 `"10784760"', add
label define za01a_wtper_lbl 10795700 `"10795700"', add
label define za01a_wtper_lbl 10866190 `"10866190"', add
label define za01a_wtper_lbl 10888880 `"10888880"', add
label define za01a_wtper_lbl 10903010 `"10903010"', add
label define za01a_wtper_lbl 10933160 `"10933160"', add
label define za01a_wtper_lbl 10944300 `"10944300"', add
label define za01a_wtper_lbl 10978400 `"10978400"', add
label define za01a_wtper_lbl 10988430 `"10988430"', add
label define za01a_wtper_lbl 10991570 `"10991570"', add
label define za01a_wtper_lbl 11018160 `"11018160"', add
label define za01a_wtper_lbl 11029560 `"11029560"', add
label define za01a_wtper_lbl 11029860 `"11029860"', add
label define za01a_wtper_lbl 11068050 `"11068050"', add
label define za01a_wtper_lbl 11079990 `"11079990"', add
label define za01a_wtper_lbl 11111490 `"11111490"', add
label define za01a_wtper_lbl 11118720 `"11118720"', add
label define za01a_wtper_lbl 11137190 `"11137190"', add
label define za01a_wtper_lbl 11141890 `"11141890"', add
label define za01a_wtper_lbl 11194610 `"11194610"', add
label define za01a_wtper_lbl 11235980 `"11235980"', add
label define za01a_wtper_lbl 11282180 `"11282180"', add
label define za01a_wtper_lbl 11283790 `"11283790"', add
label define za01a_wtper_lbl 11369330 `"11369330"', add
label define za01a_wtper_lbl 11373540 `"11373540"', add
label define za01a_wtper_lbl 11374760 `"11374760"', add
label define za01a_wtper_lbl 11377120 `"11377120"', add
label define za01a_wtper_lbl 11388750 `"11388750"', add
label define za01a_wtper_lbl 11449440 `"11449440"', add
label define za01a_wtper_lbl 11449520 `"11449520"', add
label define za01a_wtper_lbl 11458060 `"11458060"', add
label define za01a_wtper_lbl 11458650 `"11458650"', add
label define za01a_wtper_lbl 11522630 `"11522630"', add
label define za01a_wtper_lbl 11541880 `"11541880"', add
label define za01a_wtper_lbl 11573560 `"11573560"', add
label define za01a_wtper_lbl 11603610 `"11603610"', add
label define za01a_wtper_lbl 11646980 `"11646980"', add
label define za01a_wtper_lbl 11700420 `"11700420"', add
label define za01a_wtper_lbl 11771970 `"11771970"', add
label define za01a_wtper_lbl 11787910 `"11787910"', add
label define za01a_wtper_lbl 11806590 `"11806590"', add
label define za01a_wtper_lbl 11824240 `"11824240"', add
label define za01a_wtper_lbl 11860620 `"11860620"', add
label define za01a_wtper_lbl 11901380 `"11901380"', add
label define za01a_wtper_lbl 12066780 `"12066780"', add
label define za01a_wtper_lbl 12190640 `"12190640"', add
label define za01a_wtper_lbl 12200720 `"12200720"', add
label define za01a_wtper_lbl 12271600 `"12271600"', add
label define za01a_wtper_lbl 12275170 `"12275170"', add
label define za01a_wtper_lbl 12355290 `"12355290"', add
label define za01a_wtper_lbl 12448720 `"12448720"', add
label define za01a_wtper_lbl 12543980 `"12543980"', add
label define za01a_wtper_lbl 12632920 `"12632920"', add
label define za01a_wtper_lbl 12658620 `"12658620"', add
label define za01a_wtper_lbl 12705520 `"12705520"', add
label define za01a_wtper_lbl 12857810 `"12857810"', add
label define za01a_wtper_lbl 13025050 `"13025050"', add
label define za01a_wtper_lbl 13133130 `"13133130"', add
label define za01a_wtper_lbl 13212030 `"13212030"', add
label define za01a_wtper_lbl 13238280 `"13238280"', add
label define za01a_wtper_lbl 13252240 `"13252240"', add
label define za01a_wtper_lbl 13328860 `"13328860"', add
label define za01a_wtper_lbl 13384070 `"13384070"', add
label define za01a_wtper_lbl 13529020 `"13529020"', add
label define za01a_wtper_lbl 13566740 `"13566740"', add
label define za01a_wtper_lbl 13570410 `"13570410"', add
label define za01a_wtper_lbl 13775170 `"13775170"', add
label define za01a_wtper_lbl 13813680 `"13813680"', add
label define za01a_wtper_lbl 13845810 `"13845810"', add
label define za01a_wtper_lbl 14128290 `"14128290"', add
label define za01a_wtper_lbl 14139560 `"14139560"', add
label define za01a_wtper_lbl 14185780 `"14185780"', add
label define za01a_wtper_lbl 14292190 `"14292190"', add
label define za01a_wtper_lbl 14363100 `"14363100"', add
label define za01a_wtper_lbl 14571520 `"14571520"', add
label define za01a_wtper_lbl 14987940 `"14987940"', add
label define za01a_wtper_lbl 15001400 `"15001400"', add
label define za01a_wtper_lbl 15151100 `"15151100"', add
label define za01a_wtper_lbl 15536060 `"15536060"', add
label define za01a_wtper_lbl 15765380 `"15765380"', add
label define za01a_wtper_lbl 18072280 `"18072280"', add
label define za01a_wtper_lbl 18606640 `"18606640"', add
label define za01a_wtper_lbl 19144800 `"19144800"', add
label define za01a_wtper_lbl 19483180 `"19483180"', add
label define za01a_wtper_lbl 21100550 `"21100550"', add
label define za01a_wtper_lbl 21619440 `"21619440"', add
label define za01a_wtper_lbl 24114080 `"24114080"', add
label values za01a_wtper za01a_wtper_lbl

label define za01a_qpernum_lbl 0 `"No imputation"'
label define za01a_qpernum_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qpernum_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qpernum_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qpernum_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qpernum za01a_qpernum_lbl

label define za01a_qbrthmo_lbl 0 `"No imputation"'
label define za01a_qbrthmo_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qbrthmo_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qbrthmo_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qbrthmo_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qbrthmo za01a_qbrthmo_lbl

label define za01a_qbrthyr_lbl 0 `"No imputation"'
label define za01a_qbrthyr_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qbrthyr_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qbrthyr_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qbrthyr_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qbrthyr za01a_qbrthyr_lbl

label define za01a_qage_lbl 0 `"No imputation"'
label define za01a_qage_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qage_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qage_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qage_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qage za01a_qage_lbl

label define za01a_qsex_lbl 0 `"No imputation"'
label define za01a_qsex_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qsex_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qsex_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qsex_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qsex za01a_qsex_lbl

label define za01a_qrelate_lbl 0 `"No imputation"'
label define za01a_qrelate_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qrelate_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qrelate_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qrelate_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qrelate za01a_qrelate_lbl

label define za01a_qmarst_lbl 0 `"No imputation"'
label define za01a_qmarst_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qmarst_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qmarst_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qmarst_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qmarst za01a_qmarst_lbl

label define za01a_qsploco_lbl 0 `"No imputation"'
label define za01a_qsploco_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qsploco_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qsploco_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qsploco_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qsploco za01a_qsploco_lbl

label define za01a_qrace_lbl 0 `"No imputation"'
label define za01a_qrace_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qrace_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qrace_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qrace_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qrace za01a_qrace_lbl

label define za01a_qlang_lbl 0 `"No imputation"'
label define za01a_qlang_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qlang_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qlang_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qlang_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qlang za01a_qlang_lbl

label define za01a_qrelig_lbl 0 `"No imputation"'
label define za01a_qrelig_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qrelig_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qrelig_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qrelig_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qrelig za01a_qrelig_lbl

label define za01a_qbornsaf_lbl 0 `"No imputation"'
label define za01a_qbornsaf_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qbornsaf_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qbornsaf_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qbornsaf_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qbornsaf za01a_qbornsaf_lbl

label define za01a_qbplprov_lbl 0 `"No imputation"'
label define za01a_qbplprov_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qbplprov_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qbplprov_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qbplprov_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qbplprov za01a_qbplprov_lbl

label define za01a_qbplctry_lbl 0 `"No imputation"'
label define za01a_qbplctry_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qbplctry_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qbplctry_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qbplctry_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qbplctry za01a_qbplctry_lbl

label define za01a_qcitiz_lbl 0 `"No imputation"'
label define za01a_qcitiz_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qcitiz_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qcitiz_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qcitiz_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qcitiz za01a_qcitiz_lbl

label define za01a_quslres_lbl 0 `"No imputation"'
label define za01a_quslres_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_quslres_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_quslres_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_quslres_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_quslres za01a_quslres_lbl

label define za01a_quslprov_lbl 0 `"No imputation"'
label define za01a_quslprov_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_quslprov_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_quslprov_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_quslprov_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_quslprov za01a_quslprov_lbl

label define za01a_quslplac_lbl 0 `"No imputation"'
label define za01a_quslplac_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_quslplac_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_quslplac_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_quslplac_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_quslplac za01a_quslplac_lbl

label define za01a_qmoved_lbl 0 `"No imputation"'
label define za01a_qmoved_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qmoved_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qmoved_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qmoved_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qmoved za01a_qmoved_lbl

label define za01a_qyrmoved_lbl 0 `"No imputation"'
label define za01a_qyrmoved_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qyrmoved_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qyrmoved_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qyrmoved_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qyrmoved za01a_qyrmoved_lbl

label define za01a_qprvprov_lbl 0 `"No imputation"'
label define za01a_qprvprov_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qprvprov_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qprvprov_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qprvprov_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qprvprov za01a_qprvprov_lbl

label define za01a_qprvplac_lbl 0 `"No imputation"'
label define za01a_qprvplac_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qprvplac_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qprvplac_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qprvplac_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qprvplac za01a_qprvplac_lbl

label define za01a_qdssight_lbl 0 `"No imputation"'
label define za01a_qdssight_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qdssight_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qdssight_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qdssight_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qdssight za01a_qdssight_lbl

label define za01a_qdshear_lbl 0 `"No imputation"'
label define za01a_qdshear_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qdshear_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qdshear_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qdshear_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qdshear za01a_qdshear_lbl

label define za01a_qdscomm_lbl 0 `"No imputation"'
label define za01a_qdscomm_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qdscomm_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qdscomm_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qdscomm_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qdscomm za01a_qdscomm_lbl

label define za01a_qdsphys_lbl 0 `"No imputation"'
label define za01a_qdsphys_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qdsphys_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qdsphys_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qdsphys_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qdsphys za01a_qdsphys_lbl

label define za01a_qdsment_lbl 0 `"No imputation"'
label define za01a_qdsment_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qdsment_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qdsment_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qdsment_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qdsment za01a_qdsment_lbl

label define za01a_qmothloc_lbl 0 `"No imputation"'
label define za01a_qmothloc_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qmothloc_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qmothloc_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qmothloc_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qmothloc za01a_qmothloc_lbl

label define za01a_qfathliv_lbl 0 `"No imputation"'
label define za01a_qfathliv_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qfathliv_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qfathliv_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qfathliv_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qfathliv za01a_qfathliv_lbl

label define za01a_qfathloc_lbl 0 `"No imputation"'
label define za01a_qfathloc_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qfathloc_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qfathloc_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qfathloc_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qfathloc za01a_qfathloc_lbl

label define za01a_qschool_lbl 0 `"No imputation"'
label define za01a_qschool_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qschool_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qschool_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qschool_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qschool za01a_qschool_lbl

label define za01a_qschtype_lbl 0 `"No imputation"'
label define za01a_qschtype_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qschtype_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qschtype_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qschtype_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qschtype za01a_qschtype_lbl

label define za01a_qedattan_lbl 0 `"No imputation"'
label define za01a_qedattan_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qedattan_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qedattan_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qedattan_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qedattan za01a_qedattan_lbl

label define za01a_qedfield_lbl 0 `"No imputation"'
label define za01a_qedfield_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qedfield_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qedfield_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qedfield_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qedfield za01a_qedfield_lbl

label define za01a_qwrkweek_lbl 0 `"No imputation"'
label define za01a_qwrkweek_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qwrkweek_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qwrkweek_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qwrkweek_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qwrkweek za01a_qwrkweek_lbl

label define za01a_qwrkreas_lbl 0 `"No imputation"'
label define za01a_qwrkreas_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qwrkreas_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qwrkreas_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qwrkreas_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qwrkreas za01a_qwrkreas_lbl

label define za01a_qwrkseek_lbl 0 `"No imputation"'
label define za01a_qwrkseek_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qwrkseek_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qwrkseek_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qwrkseek_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qwrkseek za01a_qwrkseek_lbl

label define za01a_qwrkavai_lbl 0 `"No imputation"'
label define za01a_qwrkavai_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qwrkavai_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qwrkavai_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qwrkavai_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qwrkavai za01a_qwrkavai_lbl

label define za01a_qempstat_lbl 0 `"No imputation"'
label define za01a_qempstat_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qempstat_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qempstat_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qempstat_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qempstat za01a_qempstat_lbl

label define za01a_qind_lbl 0 `"No imputation"'
label define za01a_qind_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qind_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qind_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qind_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qind za01a_qind_lbl

label define za01a_qocc_lbl 0 `"No imputation"'
label define za01a_qocc_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qocc_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qocc_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qocc_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qocc za01a_qocc_lbl

label define za01a_qwrkhere_lbl 0 `"No imputation"'
label define za01a_qwrkhere_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qwrkhere_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qwrkhere_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qwrkhere_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qwrkhere za01a_qwrkhere_lbl

label define za01a_qwrkprov_lbl 0 `"No imputation"'
label define za01a_qwrkprov_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qwrkprov_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qwrkprov_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qwrkprov_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qwrkprov za01a_qwrkprov_lbl

label define za01a_qwrkplac_lbl 0 `"No imputation"'
label define za01a_qwrkplac_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qwrkplac_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qwrkplac_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qwrkplac_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qwrkplac za01a_qwrkplac_lbl

label define za01a_qchborn_lbl 0 `"No imputation"'
label define za01a_qchborn_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qchborn_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qchborn_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qchborn_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qchborn za01a_qchborn_lbl

label define za01a_qbornmal_lbl 0 `"No imputation"'
label define za01a_qbornmal_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qbornmal_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qbornmal_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qbornmal_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qbornmal za01a_qbornmal_lbl

label define za01a_qbornfem_lbl 0 `"No imputation"'
label define za01a_qbornfem_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qbornfem_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qbornfem_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qbornfem_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qbornfem za01a_qbornfem_lbl

label define za01a_qchsurv_lbl 0 `"No imputation"'
label define za01a_qchsurv_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qchsurv_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qchsurv_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qchsurv_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qchsurv za01a_qchsurv_lbl

label define za01a_qsurvmal_lbl 0 `"No imputation"'
label define za01a_qsurvmal_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qsurvmal_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qsurvmal_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qsurvmal_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qsurvmal za01a_qsurvmal_lbl

label define za01a_qsurvfem_lbl 0 `"No imputation"'
label define za01a_qsurvfem_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qsurvfem_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qsurvfem_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qsurvfem_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qsurvfem za01a_qsurvfem_lbl

label define za01a_qlstday_lbl 0 `"No imputation"'
label define za01a_qlstday_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qlstday_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qlstday_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qlstday_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qlstday za01a_qlstday_lbl

label define za01a_qlstmo_lbl 0 `"No imputation"'
label define za01a_qlstmo_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qlstmo_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qlstmo_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qlstmo_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qlstmo za01a_qlstmo_lbl

label define za01a_qlstyr_lbl 0 `"No imputation"'
label define za01a_qlstyr_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qlstyr_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qlstyr_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qlstyr_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qlstyr za01a_qlstyr_lbl

label define za01a_qlstsex_lbl 0 `"No imputation"'
label define za01a_qlstsex_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qlstsex_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qlstsex_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qlstsex_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qlstsex za01a_qlstsex_lbl

label define za01a_qlstliv_lbl 0 `"No imputation"'
label define za01a_qlstliv_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qlstliv_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qlstliv_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qlstliv_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qlstliv za01a_qlstliv_lbl

label define za01a_qtravwrk_lbl 0 `"No imputation"'
label define za01a_qtravwrk_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qtravwrk_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qtravwrk_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qtravwrk_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qtravwrk za01a_qtravwrk_lbl

label define za01a_qincome_lbl 0 `"No imputation"'
label define za01a_qincome_lbl 1 `"Logical imputation (from blank)"', add
label define za01a_qincome_lbl 2 `"Logical imputation (non-blank)"', add
label define za01a_qincome_lbl 3 `"Hot deck imputation (from blank)"', add
label define za01a_qincome_lbl 4 `"Hot deck imputation (non-blank)"', add
label values za01a_qincome za01a_qincome_lbl


