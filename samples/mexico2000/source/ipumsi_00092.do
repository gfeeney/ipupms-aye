* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    mx10a_dwnum     22-28    ///
  byte    mx10a_pern      29-30    ///
  byte    mx10a_state     31-32    ///
  long    mx10a_munic     33-37    ///
  byte    mx10a_hhtype    38-38    ///
  byte    mx10a_walls     39-40    ///
  byte    mx10a_roof      41-42    ///
  byte    mx10a_floor     43-43    ///
  byte    mx10a_kitchen   44-44    ///
  byte    mx10a_bedrooms  45-46    ///
  byte    mx10a_rooms     47-48    ///
  byte    mx10a_electric  49-49    ///
  byte    mx10a_pipedwtr  50-50    ///
  byte    mx10a_freqwtr   51-51    ///
  byte    mx10a_toilet    52-52    ///
  byte    mx10a_extoilet  53-53    ///
  byte    mx10a_tytoilet  54-54    ///
  byte    mx10a_sewage    55-55    ///
  byte    mx10a_fuelcook  56-56    ///
  byte    mx10a_waste     57-58    ///
  byte    mx10a_ownershp  59-59    ///
  byte    mx10a_acquisit  60-60    ///
  byte    mx10a_gasstove  61-61    ///
  byte    mx10a_woodstv   62-62    ///
  byte    mx10a_watrtank  63-63    ///
  byte    mx10a_watheat   64-64    ///
  byte    mx10a_cistern   65-65    ///
  byte    mx10a_shower    66-66    ///
  byte    mx10a_elemeter  67-67    ///
  byte    mx10a_radio     68-68    ///
  byte    mx10a_tv        69-69    ///
  byte    mx10a_refridge  70-70    ///
  byte    mx10a_washer    71-71    ///
  byte    mx10a_auto      72-72    ///
  byte    mx10a_computr   73-73    ///
  byte    mx10a_phone     74-74    ///
  byte    mx10a_cell      75-75    ///
  byte    mx10a_internet  76-76    ///
  byte    mx10a_persons   77-78    ///
  byte    mx10a_famtype   79-79    ///
  byte    mx10a_intmigs   80-80    ///
  byte    mx10a_migrants  81-82    ///
  byte    mx10a_onemeal   83-83    ///
  byte    mx10a_nomeal    84-84    ///
  byte    mx10a_nofood    85-85    ///
  long    mx10a_inchome   86-91    ///
  double  mx10a_hhwt      92-99    ///
  int     mx10a_pmu       100-103  ///
  byte    mx10a_sizepl    104-104  ///
  byte    mx10a_municens  105-105  ///
  byte    mx10a_muniihd   106-106  ///
  int     pernum          107-109  ///
  float   wtper           110-117  ///
  byte    mx10a_pernum    118-119  ///
  byte    mx10a_personno  120-121  ///
  byte    mx10a_sex       122-122  ///
  int     mx10a_age       123-125  ///
  byte    mx10a_relate    126-127  ///
  int     mx10a_relate2   128-130  ///
  byte    mx10a_momhh     131-131  ///
  byte    mx10a_pophh     132-132  ///
  byte    mx10a_bplstate  133-134  ///
  int     mx10a_bplcntry  135-137  ///
  byte    mx10a_hlthserv  138-139  ///
  byte    mx10a_health1   140-140  ///
  byte    mx10a_health2   141-141  ///
  long    mx10a_relig     142-147  ///
  byte    mx10a_diswalk   148-148  ///
  byte    mx10a_dissee    149-149  ///
  byte    mx10a_disspk    150-150  ///
  byte    mx10a_dishear   151-151  ///
  byte    mx10a_discare   152-152  ///
  byte    mx10a_dislrn    153-153  ///
  byte    mx10a_disment   154-154  ///
  byte    mx10a_disab     155-155  ///
  byte    mx10a_cdiswalk  156-156  ///
  byte    mx10a_cdissee   157-157  ///
  byte    mx10a_cdisspk   158-158  ///
  byte    mx10a_cdishear  159-159  ///
  byte    mx10a_cdiscare  160-160  ///
  byte    mx10a_cdislrn   161-161  ///
  byte    mx10a_cdisment  162-162  ///
  byte    mx10a_spkindig  163-163  ///
  byte    mx10a_spkspan   164-164  ///
  byte    mx10a_compindg  165-165  ///
  int     mx10a_indlang   166-169  ///
  byte    mx10a_ethnic    170-170  ///
  byte    mx10a_school    171-171  ///
  byte    mx10a_grade     172-173  ///
  byte    mx10a_edlevel   174-175  ///
  int     mx10a_edattain  176-178  ///
  byte    mx10a_prereq    179-179  ///
  int     mx10a_studies   180-182  ///
  byte    mx10a_yrschool  183-184  ///
  byte    mx10a_lit       185-185  ///
  int     mx10a_migctry5  186-188  ///
  byte    mx10a_migstat5  189-190  ///
  long    mx10a_migmuni5  191-195  ///
  byte    mx10a_marst     196-197  ///
  byte    mx10a_sploc     198-199  ///
  byte    mx10a_spousehh  200-200  ///
  byte    mx10a_empstat   201-202  ///
  int     mx10a_occ       203-206  ///
  byte    mx10a_classwk   207-207  ///
  byte    mx10a_hlthbens  208-208  ///
  byte    mx10a_bonus     209-209  ///
  byte    mx10a_vacpay    210-210  ///
  byte    mx10a_profshar  211-211  ///
  byte    mx10a_retire    212-212  ///
  int     mx10a_hrswork   213-215  ///
  long    mx10a_income    216-221  ///
  int     mx10a_ind       222-225  ///
  int     mx10a_statewrk  226-228  ///
  long    mx10a_muniwrk   229-233  ///
  byte    mx10a_incprogs  234-234  ///
  byte    mx10a_incretir  235-235  ///
  byte    mx10a_incremit  236-236  ///
  byte    mx10a_inccntry  237-237  ///
  byte    mx10a_chborn    238-239  ///
  byte    mx10a_chdead    240-241  ///
  byte    mx10a_chsurv    242-243  ///
  byte    mx10a_lstbmnth  244-245  ///
  int     mx10a_lstbyear  246-249  ///
  byte    mx10a_lstbsurv  250-250  ///
  byte    mx10a_dthmnths  251-252  ///
  int     mx10a_dthyears  253-255  ///
  double  mx10a_perwt     256-263  ///
  int     mx10a_pmup      264-267  ///
  using `"ipumsi_00092.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format mx10a_hhwt     %8.0f
format wtper          %8.2f
format mx10a_perwt    %8.0f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var mx10a_dwnum    `"Dwelling number"'
label var mx10a_pern     `"Number of persons in household"'
label var mx10a_state    `"Federal entity"'
label var mx10a_munic    `"Municipality/town"'
label var mx10a_hhtype   `"Type of private household"'
label var mx10a_walls    `"Walls"'
label var mx10a_roof     `"Roof"'
label var mx10a_floor    `"Floor"'
label var mx10a_kitchen  `"Kitchen"'
label var mx10a_bedrooms `"Number of bedrooms"'
label var mx10a_rooms    `"Total number of rooms"'
label var mx10a_electric `"Electricity"'
label var mx10a_pipedwtr `"Piped water"'
label var mx10a_freqwtr  `"Frequency of water supply"'
label var mx10a_toilet   `"Toilet"'
label var mx10a_extoilet `"Shared use of the toilet"'
label var mx10a_tytoilet `"Type of toilet"'
label var mx10a_sewage   `"Means of sewage disposal"'
label var mx10a_fuelcook `"Fuel for cooking"'
label var mx10a_waste    `"Trash disposal"'
label var mx10a_ownershp `"Tenancy"'
label var mx10a_acquisit `"Acquisition of dwelling"'
label var mx10a_gasstove `"Gas stove"'
label var mx10a_woodstv  `"Wood or coal stove with a chimney"'
label var mx10a_watrtank `"Raised water tank [tinaco]"'
label var mx10a_watheat  `"Water heater"'
label var mx10a_cistern  `"Cistern or underground water tank [aljibe]"'
label var mx10a_shower   `"Shower"'
label var mx10a_elemeter `"Electric meter"'
label var mx10a_radio    `"Radio"'
label var mx10a_tv       `"Television"'
label var mx10a_refridge `"Refrigerator"'
label var mx10a_washer   `"Washing machine"'
label var mx10a_auto     `"Car or truck"'
label var mx10a_computr  `"Computer"'
label var mx10a_phone    `"Landline phone"'
label var mx10a_cell     `"Cell phone"'
label var mx10a_internet `"Internet"'
label var mx10a_persons  `"Number of people in the household"'
label var mx10a_famtype  `"Typology of census homes"'
label var mx10a_intmigs  `"Household has international migrants"'
label var mx10a_migrants `"Number of international migrants"'
label var mx10a_onemeal  `"Had a meal only once a day in the last 3 months"'
label var mx10a_nomeal   `"Didn't eat for one entire day in the last 3 months"'
label var mx10a_nofood   `"Ever had no food in the last 3 months"'
label var mx10a_inchome  `"Monthly income from work at home (in pesos)"'
label var mx10a_hhwt     `"Household weight"'
label var mx10a_pmu      `"Primary sampling unit"'
label var mx10a_sizepl   `"Size of the place"'
label var mx10a_municens `"Long form questionnaire applied to municipality"'
label var mx10a_muniihd  `"Municipality with lowest Index of Human Development"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var mx10a_pernum   `"Person number (within household)"'
label var mx10a_personno `"Person number"'
label var mx10a_sex      `"Sex"'
label var mx10a_age      `"Age"'
label var mx10a_relate   `"Relationship to household head"'
label var mx10a_relate2  `"Other relationship, detailed"'
label var mx10a_momhh    `"Mother lives in the household"'
label var mx10a_pophh    `"Father lives in the household"'
label var mx10a_bplstate `"State of birth"'
label var mx10a_bplcntry `"Country of birth"'
label var mx10a_hlthserv `"Use of health services"'
label var mx10a_health1  `"First institution of medical services entitlement"'
label var mx10a_health2  `"Second institution of medical services entitlement"'
label var mx10a_relig    `"Religion"'
label var mx10a_diswalk  `"Disability walking, moving, going up and down"'
label var mx10a_dissee   `"Disability seeing, even when using glasses"'
label var mx10a_disspk   `"Disability speaking, communicating or conversing"'
label var mx10a_dishear  `"Disability hearing, even when using a hearing aid"'
label var mx10a_discare  `"Disability dressing, bathing or eating"'
label var mx10a_dislrn   `"Disability paying attention or learning simple things"'
label var mx10a_disment  `"Mental limitation"'
label var mx10a_disab    `"Disability status"'
label var mx10a_cdiswalk `"Reason for disability in walking, moving, going up and down"'
label var mx10a_cdissee  `"Reason for disability in seeing"'
label var mx10a_cdisspk  `"Reason for disability in speaking, communicating or conversing"'
label var mx10a_cdishear `"Reason for disability in hearing"'
label var mx10a_cdiscare `"Reason for disability in dressing, bathing or eating"'
label var mx10a_cdislrn  `"Reason for disability in paying attention or learning simple things"'
label var mx10a_cdisment `"Reason for mental impairment"'
label var mx10a_spkindig `"Speaks an indigenous language"'
label var mx10a_spkspan  `"Speaks Spanish"'
label var mx10a_compindg `"Understanding of indigenous languages"'
label var mx10a_indlang  `"Indigenous language spoken"'
label var mx10a_ethnic   `"Self-described indigenous ethnicity"'
label var mx10a_school   `"School attendance"'
label var mx10a_grade    `"Last grade completed within level"'
label var mx10a_edlevel  `"Educational level attended"'
label var mx10a_edattain `"Highest grade and level completed"'
label var mx10a_prereq   `"Educational prerequisites"'
label var mx10a_studies  `"Name of degree/course of studies"'
label var mx10a_yrschool `"Years of schooling completed"'
label var mx10a_lit      `"Literacy"'
label var mx10a_migctry5 `"Country of residence in 2005"'
label var mx10a_migstat5 `"State of residence in 2005"'
label var mx10a_migmuni5 `"Municipality of residence in 2005"'
label var mx10a_marst    `"Marital status"'
label var mx10a_sploc    `"Partner identification number"'
label var mx10a_spousehh `"Partner lives in the household"'
label var mx10a_empstat  `"Employment status"'
label var mx10a_occ      `"Occupation or trade"'
label var mx10a_classwk  `"Position at work"'
label var mx10a_hlthbens `"Receives health care benefits"'
label var mx10a_bonus    `"Receives 13th month obligatory bonus"'
label var mx10a_vacpay   `"Receives vacation pay"'
label var mx10a_profshar `"Receives profit sharing or vacation bonus"'
label var mx10a_retire   `"Receives retirement savings"'
label var mx10a_hrswork  `"Hours worked last week"'
label var mx10a_income   `"Monthly income from working (in pesos)"'
label var mx10a_ind      `"Industry"'
label var mx10a_statewrk `"State or country of work"'
label var mx10a_muniwrk  `"Municipality of work"'
label var mx10a_incprogs `"Has income from government programs"'
label var mx10a_incretir `"Has retirement or pension income"'
label var mx10a_incremit `"Has income from people who live in another country"'
label var mx10a_inccntry `"Has income from people who live within the country"'
label var mx10a_chborn   `"Number of live-born children"'
label var mx10a_chdead   `"Number of deceased children"'
label var mx10a_chsurv   `"Number of surviving children"'
label var mx10a_lstbmnth `"Month of birth of last live-born child"'
label var mx10a_lstbyear `"Yearof birth of last live-born child"'
label var mx10a_lstbsurv `"Last live-born child alive"'
label var mx10a_dthmnths `"Age of last child at death (months)"'
label var mx10a_dthyears `"Age of last child at death (years)"'
label var mx10a_perwt    `"Person weight"'
label var mx10a_pmup     `"Primary sampling unit"'

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

label define mx10a_pern_lbl 01 `"1"'
label define mx10a_pern_lbl 02 `"2"', add
label define mx10a_pern_lbl 03 `"3"', add
label define mx10a_pern_lbl 04 `"4"', add
label define mx10a_pern_lbl 05 `"5"', add
label define mx10a_pern_lbl 06 `"6"', add
label define mx10a_pern_lbl 07 `"7"', add
label define mx10a_pern_lbl 08 `"8"', add
label define mx10a_pern_lbl 09 `"9"', add
label define mx10a_pern_lbl 10 `"10"', add
label define mx10a_pern_lbl 11 `"11"', add
label define mx10a_pern_lbl 12 `"12"', add
label define mx10a_pern_lbl 13 `"13"', add
label define mx10a_pern_lbl 14 `"14"', add
label define mx10a_pern_lbl 15 `"15"', add
label define mx10a_pern_lbl 16 `"16"', add
label define mx10a_pern_lbl 17 `"17"', add
label define mx10a_pern_lbl 18 `"18"', add
label define mx10a_pern_lbl 19 `"19"', add
label define mx10a_pern_lbl 20 `"20"', add
label define mx10a_pern_lbl 21 `"21"', add
label define mx10a_pern_lbl 22 `"22"', add
label define mx10a_pern_lbl 23 `"23"', add
label define mx10a_pern_lbl 24 `"24"', add
label define mx10a_pern_lbl 25 `"25"', add
label define mx10a_pern_lbl 26 `"26"', add
label define mx10a_pern_lbl 27 `"27"', add
label define mx10a_pern_lbl 28 `"28"', add
label define mx10a_pern_lbl 29 `"29"', add
label define mx10a_pern_lbl 30 `"30"', add
label define mx10a_pern_lbl 31 `"31"', add
label define mx10a_pern_lbl 32 `"32"', add
label define mx10a_pern_lbl 33 `"33"', add
label define mx10a_pern_lbl 34 `"34"', add
label define mx10a_pern_lbl 35 `"35"', add
label define mx10a_pern_lbl 38 `"38"', add
label values mx10a_pern mx10a_pern_lbl

label define mx10a_state_lbl 01 `"Aguascalientes"'
label define mx10a_state_lbl 02 `"Baja California"', add
label define mx10a_state_lbl 03 `"Baja California Sur"', add
label define mx10a_state_lbl 04 `"Campeche"', add
label define mx10a_state_lbl 05 `"Coahuila de Zaragoza"', add
label define mx10a_state_lbl 06 `"Colima"', add
label define mx10a_state_lbl 07 `"Chiapas"', add
label define mx10a_state_lbl 08 `"Chihuahua"', add
label define mx10a_state_lbl 09 `"Distrito Federal"', add
label define mx10a_state_lbl 10 `"Durango"', add
label define mx10a_state_lbl 11 `"Guanajuato"', add
label define mx10a_state_lbl 12 `"Guerrero"', add
label define mx10a_state_lbl 13 `"Hidalgo"', add
label define mx10a_state_lbl 14 `"Jalisco"', add
label define mx10a_state_lbl 15 `"México"', add
label define mx10a_state_lbl 16 `"Michoacán de Ocampo"', add
label define mx10a_state_lbl 17 `"Morelos"', add
label define mx10a_state_lbl 18 `"Nayarit"', add
label define mx10a_state_lbl 19 `"Nuevo León"', add
label define mx10a_state_lbl 20 `"Oaxaca"', add
label define mx10a_state_lbl 21 `"Puebla"', add
label define mx10a_state_lbl 22 `"Querétaro"', add
label define mx10a_state_lbl 23 `"Quintana Roo"', add
label define mx10a_state_lbl 24 `"San Luis Potosí"', add
label define mx10a_state_lbl 25 `"Sinaloa"', add
label define mx10a_state_lbl 26 `"Sonora"', add
label define mx10a_state_lbl 27 `"Tabasco"', add
label define mx10a_state_lbl 28 `"Tamaulipas"', add
label define mx10a_state_lbl 29 `"Tlaxcala"', add
label define mx10a_state_lbl 30 `"Veracruz de Ignacio de la Llave"', add
label define mx10a_state_lbl 31 `"Yucatán"', add
label define mx10a_state_lbl 32 `"Zacatecas"', add
label values mx10a_state mx10a_state_lbl

label define mx10a_munic_lbl 01001 `"Aguascalientes"'
label define mx10a_munic_lbl 01002 `"Asientos"', add
label define mx10a_munic_lbl 01003 `"Calvillo"', add
label define mx10a_munic_lbl 01004 `"Cosío"', add
label define mx10a_munic_lbl 01005 `"Jesús María"', add
label define mx10a_munic_lbl 01006 `"Pabellón de Arteaga"', add
label define mx10a_munic_lbl 01007 `"Rincón de Romos"', add
label define mx10a_munic_lbl 01008 `"San José de Gracia"', add
label define mx10a_munic_lbl 01009 `"Tepezalá"', add
label define mx10a_munic_lbl 01010 `"El Llano"', add
label define mx10a_munic_lbl 01011 `"San Francisco de los Romo"', add
label define mx10a_munic_lbl 02001 `"Ensenada"', add
label define mx10a_munic_lbl 02002 `"Mexicali"', add
label define mx10a_munic_lbl 02003 `"Tecate"', add
label define mx10a_munic_lbl 02004 `"Tijuana"', add
label define mx10a_munic_lbl 02005 `"Playas de Rosarito"', add
label define mx10a_munic_lbl 03001 `"Comondú"', add
label define mx10a_munic_lbl 03002 `"Mulegé"', add
label define mx10a_munic_lbl 03003 `"La Paz"', add
label define mx10a_munic_lbl 03008 `"Los Cabos"', add
label define mx10a_munic_lbl 03009 `"Loreto"', add
label define mx10a_munic_lbl 04001 `"Calkiní"', add
label define mx10a_munic_lbl 04002 `"Campeche"', add
label define mx10a_munic_lbl 04003 `"Carmen"', add
label define mx10a_munic_lbl 04004 `"Champotón"', add
label define mx10a_munic_lbl 04005 `"Hecelchakán"', add
label define mx10a_munic_lbl 04006 `"Hopelchén"', add
label define mx10a_munic_lbl 04007 `"Palizada"', add
label define mx10a_munic_lbl 04008 `"Tenabo"', add
label define mx10a_munic_lbl 04009 `"Escárcega"', add
label define mx10a_munic_lbl 04010 `"Calakmul"', add
label define mx10a_munic_lbl 04011 `"Candelaria"', add
label define mx10a_munic_lbl 05001 `"Abasolo"', add
label define mx10a_munic_lbl 05002 `"Acuña"', add
label define mx10a_munic_lbl 05003 `"Allende"', add
label define mx10a_munic_lbl 05004 `"Arteaga"', add
label define mx10a_munic_lbl 05005 `"Candela"', add
label define mx10a_munic_lbl 05006 `"Castaños"', add
label define mx10a_munic_lbl 05007 `"Cuatro Ciénegas"', add
label define mx10a_munic_lbl 05008 `"Escobedo"', add
label define mx10a_munic_lbl 05009 `"Francisco I. Madero"', add
label define mx10a_munic_lbl 05010 `"Frontera"', add
label define mx10a_munic_lbl 05011 `"General Cepeda"', add
label define mx10a_munic_lbl 05012 `"Guerrero"', add
label define mx10a_munic_lbl 05013 `"Hidalgo"', add
label define mx10a_munic_lbl 05014 `"Jiménez"', add
label define mx10a_munic_lbl 05015 `"Juárez"', add
label define mx10a_munic_lbl 05016 `"Lamadrid"', add
label define mx10a_munic_lbl 05017 `"Matamoros"', add
label define mx10a_munic_lbl 05018 `"Monclova"', add
label define mx10a_munic_lbl 05019 `"Morelos"', add
label define mx10a_munic_lbl 05020 `"Múzquiz"', add
label define mx10a_munic_lbl 05021 `"Nadadores"', add
label define mx10a_munic_lbl 05022 `"Nava"', add
label define mx10a_munic_lbl 05023 `"Ocampo"', add
label define mx10a_munic_lbl 05024 `"Parras"', add
label define mx10a_munic_lbl 05025 `"Piedras Negras"', add
label define mx10a_munic_lbl 05026 `"Progreso"', add
label define mx10a_munic_lbl 05027 `"Ramos Arizpe"', add
label define mx10a_munic_lbl 05028 `"Sabinas"', add
label define mx10a_munic_lbl 05029 `"Sacramento"', add
label define mx10a_munic_lbl 05030 `"Saltillo"', add
label define mx10a_munic_lbl 05031 `"San Buenaventura"', add
label define mx10a_munic_lbl 05032 `"San Juan de Sabinas"', add
label define mx10a_munic_lbl 05033 `"San Pedro"', add
label define mx10a_munic_lbl 05034 `"Sierra Mojada"', add
label define mx10a_munic_lbl 05035 `"Torreón"', add
label define mx10a_munic_lbl 05036 `"Viesca"', add
label define mx10a_munic_lbl 05037 `"Villa Unión"', add
label define mx10a_munic_lbl 05038 `"Zaragoza"', add
label define mx10a_munic_lbl 06001 `"Armería"', add
label define mx10a_munic_lbl 06002 `"Colima"', add
label define mx10a_munic_lbl 06003 `"Comala"', add
label define mx10a_munic_lbl 06004 `"Coquimatlán"', add
label define mx10a_munic_lbl 06005 `"Cuauhtémoc"', add
label define mx10a_munic_lbl 06006 `"Ixtlahuacán"', add
label define mx10a_munic_lbl 06007 `"Manzanillo"', add
label define mx10a_munic_lbl 06008 `"Minatitlán"', add
label define mx10a_munic_lbl 06009 `"Tecomán"', add
label define mx10a_munic_lbl 06010 `"Villa de Álvarez"', add
label define mx10a_munic_lbl 07001 `"Acacoyagua"', add
label define mx10a_munic_lbl 07002 `"Acala"', add
label define mx10a_munic_lbl 07003 `"Acapetahua"', add
label define mx10a_munic_lbl 07004 `"Altamirano"', add
label define mx10a_munic_lbl 07005 `"Amatán"', add
label define mx10a_munic_lbl 07006 `"Amatenango de la Frontera"', add
label define mx10a_munic_lbl 07007 `"Amatenango del Valle"', add
label define mx10a_munic_lbl 07008 `"Angel Albino Corzo"', add
label define mx10a_munic_lbl 07009 `"Arriaga"', add
label define mx10a_munic_lbl 07010 `"Bejucal de Ocampo"', add
label define mx10a_munic_lbl 07011 `"Bella Vista"', add
label define mx10a_munic_lbl 07012 `"Berriozábal"', add
label define mx10a_munic_lbl 07013 `"Bochil"', add
label define mx10a_munic_lbl 07014 `"El Bosque"', add
label define mx10a_munic_lbl 07015 `"Cacahoatán"', add
label define mx10a_munic_lbl 07016 `"Catazajá"', add
label define mx10a_munic_lbl 07017 `"Cintalapa"', add
label define mx10a_munic_lbl 07018 `"Coapilla"', add
label define mx10a_munic_lbl 07019 `"Comitán de Domínguez"', add
label define mx10a_munic_lbl 07020 `"La Concordia"', add
label define mx10a_munic_lbl 07021 `"Copainalá"', add
label define mx10a_munic_lbl 07022 `"Chalchihuitán"', add
label define mx10a_munic_lbl 07023 `"Chamula"', add
label define mx10a_munic_lbl 07024 `"Chanal"', add
label define mx10a_munic_lbl 07025 `"Chapultenango"', add
label define mx10a_munic_lbl 07026 `"Chenalhó"', add
label define mx10a_munic_lbl 07027 `"Chiapa de Corzo"', add
label define mx10a_munic_lbl 07028 `"Chiapilla"', add
label define mx10a_munic_lbl 07029 `"Chicoasén"', add
label define mx10a_munic_lbl 07030 `"Chicomuselo"', add
label define mx10a_munic_lbl 07031 `"Chilón"', add
label define mx10a_munic_lbl 07032 `"Escuintla"', add
label define mx10a_munic_lbl 07033 `"Francisco León"', add
label define mx10a_munic_lbl 07034 `"Frontera Comalapa"', add
label define mx10a_munic_lbl 07035 `"Frontera Hidalgo"', add
label define mx10a_munic_lbl 07036 `"La Grandeza"', add
label define mx10a_munic_lbl 07037 `"Huehuetán"', add
label define mx10a_munic_lbl 07038 `"Huixtán"', add
label define mx10a_munic_lbl 07039 `"Huitiupán"', add
label define mx10a_munic_lbl 07040 `"Huixtla"', add
label define mx10a_munic_lbl 07041 `"La Independencia"', add
label define mx10a_munic_lbl 07042 `"Ixhuatán"', add
label define mx10a_munic_lbl 07043 `"Ixtacomitán"', add
label define mx10a_munic_lbl 07044 `"Ixtapa"', add
label define mx10a_munic_lbl 07045 `"Ixtapangajoya"', add
label define mx10a_munic_lbl 07046 `"Jiquipilas"', add
label define mx10a_munic_lbl 07047 `"Jitotol"', add
label define mx10a_munic_lbl 07048 `"Juárez"', add
label define mx10a_munic_lbl 07049 `"Larráinzar"', add
label define mx10a_munic_lbl 07050 `"La Libertad"', add
label define mx10a_munic_lbl 07051 `"Mapastepec"', add
label define mx10a_munic_lbl 07052 `"Las Margaritas"', add
label define mx10a_munic_lbl 07053 `"Mazapa de Madero"', add
label define mx10a_munic_lbl 07054 `"Mazatán"', add
label define mx10a_munic_lbl 07055 `"Metapa"', add
label define mx10a_munic_lbl 07056 `"Mitontic"', add
label define mx10a_munic_lbl 07057 `"Motozintla"', add
label define mx10a_munic_lbl 07058 `"Nicolás Ruíz"', add
label define mx10a_munic_lbl 07059 `"Ocosingo"', add
label define mx10a_munic_lbl 07060 `"Ocotepec"', add
label define mx10a_munic_lbl 07061 `"Ocozocoautla de Espinosa"', add
label define mx10a_munic_lbl 07062 `"Ostuacán"', add
label define mx10a_munic_lbl 07063 `"Osumacinta"', add
label define mx10a_munic_lbl 07064 `"Oxchuc"', add
label define mx10a_munic_lbl 07065 `"Palenque"', add
label define mx10a_munic_lbl 07066 `"Pantelhó"', add
label define mx10a_munic_lbl 07067 `"Pantepec"', add
label define mx10a_munic_lbl 07068 `"Pichucalco"', add
label define mx10a_munic_lbl 07069 `"Pijijiapan"', add
label define mx10a_munic_lbl 07070 `"El Porvenir"', add
label define mx10a_munic_lbl 07071 `"Villa Comaltitlán"', add
label define mx10a_munic_lbl 07072 `"Pueblo Nuevo Solistahuacán"', add
label define mx10a_munic_lbl 07073 `"Rayón"', add
label define mx10a_munic_lbl 07074 `"Reforma"', add
label define mx10a_munic_lbl 07075 `"Las Rosas"', add
label define mx10a_munic_lbl 07076 `"Sabanilla"', add
label define mx10a_munic_lbl 07077 `"Salto de Agua"', add
label define mx10a_munic_lbl 07078 `"San Cristóbal de las Casas"', add
label define mx10a_munic_lbl 07079 `"San Fernando"', add
label define mx10a_munic_lbl 07080 `"Siltepec"', add
label define mx10a_munic_lbl 07081 `"Simojovel"', add
label define mx10a_munic_lbl 07082 `"Sitalá"', add
label define mx10a_munic_lbl 07083 `"Socoltenango"', add
label define mx10a_munic_lbl 07084 `"Solosuchiapa"', add
label define mx10a_munic_lbl 07085 `"Soyaló"', add
label define mx10a_munic_lbl 07086 `"Suchiapa"', add
label define mx10a_munic_lbl 07087 `"Suchiate"', add
label define mx10a_munic_lbl 07088 `"Sunuapa"', add
label define mx10a_munic_lbl 07089 `"Tapachula"', add
label define mx10a_munic_lbl 07090 `"Tapalapa"', add
label define mx10a_munic_lbl 07091 `"Tapilula"', add
label define mx10a_munic_lbl 07092 `"Tecpatán"', add
label define mx10a_munic_lbl 07093 `"Tenejapa"', add
label define mx10a_munic_lbl 07094 `"Teopisca"', add
label define mx10a_munic_lbl 07096 `"Tila"', add
label define mx10a_munic_lbl 07097 `"Tonalá"', add
label define mx10a_munic_lbl 07098 `"Totolapa"', add
label define mx10a_munic_lbl 07099 `"La Trinitaria"', add
label define mx10a_munic_lbl 07100 `"Tumbalá"', add
label define mx10a_munic_lbl 07101 `"Tuxtla Gutiérrez"', add
label define mx10a_munic_lbl 07102 `"Tuxtla Chico"', add
label define mx10a_munic_lbl 07103 `"Tuzantán"', add
label define mx10a_munic_lbl 07104 `"Tzimol"', add
label define mx10a_munic_lbl 07105 `"Unión Juárez"', add
label define mx10a_munic_lbl 07106 `"Venustiano Carranza"', add
label define mx10a_munic_lbl 07107 `"Villa Corzo"', add
label define mx10a_munic_lbl 07108 `"Villaflores"', add
label define mx10a_munic_lbl 07109 `"Yajalón"', add
label define mx10a_munic_lbl 07110 `"San Lucas"', add
label define mx10a_munic_lbl 07111 `"Zinacantán"', add
label define mx10a_munic_lbl 07112 `"San Juan Cancuc"', add
label define mx10a_munic_lbl 07113 `"Aldama"', add
label define mx10a_munic_lbl 07114 `"Benemérito de las Américas"', add
label define mx10a_munic_lbl 07115 `"Maravilla Tenejapa"', add
label define mx10a_munic_lbl 07116 `"Marqués de Comillas"', add
label define mx10a_munic_lbl 07117 `"Montecristo de Guerrero"', add
label define mx10a_munic_lbl 07118 `"San Andrés Duraznal"', add
label define mx10a_munic_lbl 07119 `"Santiago el Pinar"', add
label define mx10a_munic_lbl 08001 `"Ahumada"', add
label define mx10a_munic_lbl 08002 `"Aldama"', add
label define mx10a_munic_lbl 08003 `"Allende"', add
label define mx10a_munic_lbl 08004 `"Aquiles Serdán"', add
label define mx10a_munic_lbl 08005 `"Ascensión"', add
label define mx10a_munic_lbl 08006 `"Bachíniva"', add
label define mx10a_munic_lbl 08007 `"Balleza"', add
label define mx10a_munic_lbl 08008 `"Batopilas"', add
label define mx10a_munic_lbl 08009 `"Bocoyna"', add
label define mx10a_munic_lbl 08010 `"Buenaventura"', add
label define mx10a_munic_lbl 08011 `"Camargo"', add
label define mx10a_munic_lbl 08012 `"Carichí"', add
label define mx10a_munic_lbl 08013 `"Casas Grandes"', add
label define mx10a_munic_lbl 08014 `"Coronado"', add
label define mx10a_munic_lbl 08015 `"Coyame del Sotol"', add
label define mx10a_munic_lbl 08016 `"La Cruz"', add
label define mx10a_munic_lbl 08017 `"Cuauhtémoc"', add
label define mx10a_munic_lbl 08018 `"Cusihuiriachi"', add
label define mx10a_munic_lbl 08019 `"Chihuahua"', add
label define mx10a_munic_lbl 08020 `"Chínipas"', add
label define mx10a_munic_lbl 08021 `"Delicias"', add
label define mx10a_munic_lbl 08022 `"Dr. Belisario Domínguez"', add
label define mx10a_munic_lbl 08023 `"Galeana"', add
label define mx10a_munic_lbl 08024 `"Santa Isabel"', add
label define mx10a_munic_lbl 08025 `"Gómez Farías"', add
label define mx10a_munic_lbl 08026 `"Gran Morelos"', add
label define mx10a_munic_lbl 08027 `"Guachochi"', add
label define mx10a_munic_lbl 08028 `"Guadalupe"', add
label define mx10a_munic_lbl 08029 `"Guadalupe y Calvo"', add
label define mx10a_munic_lbl 08030 `"Guazapares"', add
label define mx10a_munic_lbl 08031 `"Guerrero"', add
label define mx10a_munic_lbl 08032 `"Hidalgo del Parral"', add
label define mx10a_munic_lbl 08033 `"Huejotitán"', add
label define mx10a_munic_lbl 08034 `"Ignacio Zaragoza"', add
label define mx10a_munic_lbl 08035 `"Janos"', add
label define mx10a_munic_lbl 08036 `"Jiménez"', add
label define mx10a_munic_lbl 08037 `"Juárez"', add
label define mx10a_munic_lbl 08038 `"Julimes"', add
label define mx10a_munic_lbl 08039 `"López"', add
label define mx10a_munic_lbl 08040 `"Madera"', add
label define mx10a_munic_lbl 08041 `"Maguarichi"', add
label define mx10a_munic_lbl 08042 `"Manuel Benavides"', add
label define mx10a_munic_lbl 08043 `"Matachí"', add
label define mx10a_munic_lbl 08044 `"Matamoros"', add
label define mx10a_munic_lbl 08045 `"Meoqui"', add
label define mx10a_munic_lbl 08046 `"Morelos"', add
label define mx10a_munic_lbl 08047 `"Moris"', add
label define mx10a_munic_lbl 08048 `"Namiquipa"', add
label define mx10a_munic_lbl 08049 `"Nonoava"', add
label define mx10a_munic_lbl 08050 `"Nuevo Casas Grandes"', add
label define mx10a_munic_lbl 08051 `"Ocampo"', add
label define mx10a_munic_lbl 08052 `"Ojinaga"', add
label define mx10a_munic_lbl 08053 `"Praxedis G. Guerrero"', add
label define mx10a_munic_lbl 08054 `"Riva Palacio"', add
label define mx10a_munic_lbl 08055 `"Rosales"', add
label define mx10a_munic_lbl 08056 `"Rosario"', add
label define mx10a_munic_lbl 08057 `"San Francisco de Borja"', add
label define mx10a_munic_lbl 08058 `"San Francisco de Conchos"', add
label define mx10a_munic_lbl 08059 `"San Francisco del Oro"', add
label define mx10a_munic_lbl 08060 `"Santa Bárbara"', add
label define mx10a_munic_lbl 08061 `"Satevó"', add
label define mx10a_munic_lbl 08062 `"Saucillo"', add
label define mx10a_munic_lbl 08063 `"Temósachic"', add
label define mx10a_munic_lbl 08064 `"El Tule"', add
label define mx10a_munic_lbl 08065 `"Urique"', add
label define mx10a_munic_lbl 08066 `"Uruachi"', add
label define mx10a_munic_lbl 08067 `"Valle de Zaragoza"', add
label define mx10a_munic_lbl 09002 `"Azcapotzalco"', add
label define mx10a_munic_lbl 09003 `"Coyoacán"', add
label define mx10a_munic_lbl 09004 `"Cuajimalpa de Morelos"', add
label define mx10a_munic_lbl 09005 `"Gustavo A. Madero"', add
label define mx10a_munic_lbl 09006 `"Iztacalco"', add
label define mx10a_munic_lbl 09007 `"Iztapalapa"', add
label define mx10a_munic_lbl 09008 `"La Magdalena Contreras"', add
label define mx10a_munic_lbl 09009 `"Milpa Alta"', add
label define mx10a_munic_lbl 09010 `"Álvaro Obregón"', add
label define mx10a_munic_lbl 09011 `"Tláhuac"', add
label define mx10a_munic_lbl 09012 `"Tlalpan"', add
label define mx10a_munic_lbl 09013 `"Xochimilco"', add
label define mx10a_munic_lbl 09014 `"Benito Juárez"', add
label define mx10a_munic_lbl 09015 `"Cuauhtémoc"', add
label define mx10a_munic_lbl 09016 `"Miguel Hidalgo"', add
label define mx10a_munic_lbl 09017 `"Venustiano Carranza"', add
label define mx10a_munic_lbl 10001 `"Canatlán"', add
label define mx10a_munic_lbl 10002 `"Canelas"', add
label define mx10a_munic_lbl 10003 `"Coneto de Comonfort"', add
label define mx10a_munic_lbl 10004 `"Cuencamé"', add
label define mx10a_munic_lbl 10005 `"Durango"', add
label define mx10a_munic_lbl 10006 `"General Simón Bolívar"', add
label define mx10a_munic_lbl 10007 `"Gómez Palacio"', add
label define mx10a_munic_lbl 10008 `"Guadalupe Victoria"', add
label define mx10a_munic_lbl 10009 `"Guanaceví"', add
label define mx10a_munic_lbl 10010 `"Hidalgo"', add
label define mx10a_munic_lbl 10011 `"Indé"', add
label define mx10a_munic_lbl 10012 `"Lerdo"', add
label define mx10a_munic_lbl 10013 `"Mapimí"', add
label define mx10a_munic_lbl 10014 `"Mezquital"', add
label define mx10a_munic_lbl 10015 `"Nazas"', add
label define mx10a_munic_lbl 10016 `"Nombre de Dios"', add
label define mx10a_munic_lbl 10017 `"Ocampo"', add
label define mx10a_munic_lbl 10018 `"El Oro"', add
label define mx10a_munic_lbl 10019 `"Otáez"', add
label define mx10a_munic_lbl 10020 `"Pánuco de Coronado"', add
label define mx10a_munic_lbl 10021 `"Peñón Blanco"', add
label define mx10a_munic_lbl 10022 `"Poanas"', add
label define mx10a_munic_lbl 10023 `"Pueblo Nuevo"', add
label define mx10a_munic_lbl 10024 `"Rodeo"', add
label define mx10a_munic_lbl 10025 `"San Bernardo"', add
label define mx10a_munic_lbl 10026 `"San Dimas"', add
label define mx10a_munic_lbl 10027 `"San Juan de Guadalupe"', add
label define mx10a_munic_lbl 10028 `"San Juan del Río"', add
label define mx10a_munic_lbl 10029 `"San Luis del Cordero"', add
label define mx10a_munic_lbl 10030 `"San Pedro del Gallo"', add
label define mx10a_munic_lbl 10031 `"Santa Clara"', add
label define mx10a_munic_lbl 10032 `"Santiago Papasquiaro"', add
label define mx10a_munic_lbl 10033 `"Súchil"', add
label define mx10a_munic_lbl 10034 `"Tamazula"', add
label define mx10a_munic_lbl 10035 `"Tepehuanes"', add
label define mx10a_munic_lbl 10036 `"Tlahualilo"', add
label define mx10a_munic_lbl 10037 `"Topia"', add
label define mx10a_munic_lbl 10038 `"Vicente Guerrero"', add
label define mx10a_munic_lbl 10039 `"Nuevo Ideal"', add
label define mx10a_munic_lbl 11001 `"Abasolo"', add
label define mx10a_munic_lbl 11002 `"Acámbaro"', add
label define mx10a_munic_lbl 11003 `"San Miguel de Allende"', add
label define mx10a_munic_lbl 11004 `"Apaseo el Alto"', add
label define mx10a_munic_lbl 11005 `"Apaseo el Grande"', add
label define mx10a_munic_lbl 11006 `"Atarjea"', add
label define mx10a_munic_lbl 11007 `"Celaya"', add
label define mx10a_munic_lbl 11008 `"Manuel Doblado"', add
label define mx10a_munic_lbl 11009 `"Comonfort"', add
label define mx10a_munic_lbl 11010 `"Coroneo"', add
label define mx10a_munic_lbl 11011 `"Cortazar"', add
label define mx10a_munic_lbl 11012 `"Cuerámaro"', add
label define mx10a_munic_lbl 11013 `"Doctor Mora"', add
label define mx10a_munic_lbl 11014 `"Dolores Hidalgo Cuna de la Independencia Nacional"', add
label define mx10a_munic_lbl 11015 `"Guanajuato"', add
label define mx10a_munic_lbl 11016 `"Huanímaro"', add
label define mx10a_munic_lbl 11017 `"Irapuato"', add
label define mx10a_munic_lbl 11018 `"Jaral del Progreso"', add
label define mx10a_munic_lbl 11019 `"Jerécuaro"', add
label define mx10a_munic_lbl 11020 `"León"', add
label define mx10a_munic_lbl 11021 `"Moroleón"', add
label define mx10a_munic_lbl 11022 `"Ocampo"', add
label define mx10a_munic_lbl 11023 `"Pénjamo"', add
label define mx10a_munic_lbl 11024 `"Pueblo Nuevo"', add
label define mx10a_munic_lbl 11025 `"Purísima del Rincón"', add
label define mx10a_munic_lbl 11026 `"Romita"', add
label define mx10a_munic_lbl 11027 `"Salamanca"', add
label define mx10a_munic_lbl 11028 `"Salvatierra"', add
label define mx10a_munic_lbl 11029 `"San Diego de la Unión"', add
label define mx10a_munic_lbl 11030 `"San Felipe"', add
label define mx10a_munic_lbl 11031 `"San Francisco del Rincón"', add
label define mx10a_munic_lbl 11032 `"San José Iturbide"', add
label define mx10a_munic_lbl 11033 `"San Luis de la Paz"', add
label define mx10a_munic_lbl 11034 `"Santa Catarina"', add
label define mx10a_munic_lbl 11035 `"Santa Cruz de Juventino Rosas"', add
label define mx10a_munic_lbl 11036 `"Santiago Maravatío"', add
label define mx10a_munic_lbl 11037 `"Silao"', add
label define mx10a_munic_lbl 11038 `"Tarandacuao"', add
label define mx10a_munic_lbl 11039 `"Tarimoro"', add
label define mx10a_munic_lbl 11040 `"Tierra Blanca"', add
label define mx10a_munic_lbl 11041 `"Uriangato"', add
label define mx10a_munic_lbl 11042 `"Valle de Santiago"', add
label define mx10a_munic_lbl 11043 `"Victoria"', add
label define mx10a_munic_lbl 11044 `"Villagrán"', add
label define mx10a_munic_lbl 11045 `"Xichú"', add
label define mx10a_munic_lbl 11046 `"Yuriria"', add
label define mx10a_munic_lbl 12001 `"Acapulco de Juárez"', add
label define mx10a_munic_lbl 12002 `"Ahuacuotzingo"', add
label define mx10a_munic_lbl 12003 `"Ajuchitlán del Progreso"', add
label define mx10a_munic_lbl 12004 `"Alcozauca de Guerrero"', add
label define mx10a_munic_lbl 12005 `"Alpoyeca"', add
label define mx10a_munic_lbl 12006 `"Apaxtla"', add
label define mx10a_munic_lbl 12007 `"Arcelia"', add
label define mx10a_munic_lbl 12008 `"Atenango del Río"', add
label define mx10a_munic_lbl 12009 `"Atlamajalcingo del Monte"', add
label define mx10a_munic_lbl 12010 `"Atlixtac"', add
label define mx10a_munic_lbl 12011 `"Atoyac de Álvarez"', add
label define mx10a_munic_lbl 12012 `"Ayutla de los Libres"', add
label define mx10a_munic_lbl 12013 `"Azoyú"', add
label define mx10a_munic_lbl 12014 `"Benito Juárez"', add
label define mx10a_munic_lbl 12015 `"Buenavista de Cuéllar"', add
label define mx10a_munic_lbl 12016 `"Coahuayutla de José María Izazaga"', add
label define mx10a_munic_lbl 12017 `"Cocula"', add
label define mx10a_munic_lbl 12018 `"Copala"', add
label define mx10a_munic_lbl 12019 `"Copalillo"', add
label define mx10a_munic_lbl 12020 `"Copanatoyac"', add
label define mx10a_munic_lbl 12021 `"Coyuca de Benítez"', add
label define mx10a_munic_lbl 12022 `"Coyuca de Catalán"', add
label define mx10a_munic_lbl 12023 `"Cuajinicuilapa"', add
label define mx10a_munic_lbl 12024 `"Cualác"', add
label define mx10a_munic_lbl 12025 `"Cuautepec"', add
label define mx10a_munic_lbl 12026 `"Cuetzala del Progreso"', add
label define mx10a_munic_lbl 12027 `"Cutzamala de Pinzón"', add
label define mx10a_munic_lbl 12028 `"Chilapa de Álvarez"', add
label define mx10a_munic_lbl 12029 `"Chilpancingo de los Bravo"', add
label define mx10a_munic_lbl 12030 `"Florencio Villarreal"', add
label define mx10a_munic_lbl 12031 `"General Canuto A. Neri"', add
label define mx10a_munic_lbl 12032 `"General Heliodoro Castillo"', add
label define mx10a_munic_lbl 12033 `"Huamuxtitlán"', add
label define mx10a_munic_lbl 12034 `"Huitzuco de los Figueroa"', add
label define mx10a_munic_lbl 12035 `"Iguala de la Independencia"', add
label define mx10a_munic_lbl 12036 `"Igualapa"', add
label define mx10a_munic_lbl 12037 `"Ixcateopan de Cuauhtémoc"', add
label define mx10a_munic_lbl 12038 `"Zihuatanejo de Azueta"', add
label define mx10a_munic_lbl 12039 `"Juan R. Escudero"', add
label define mx10a_munic_lbl 12040 `"Leonardo Bravo"', add
label define mx10a_munic_lbl 12041 `"Malinaltepec"', add
label define mx10a_munic_lbl 12042 `"Mártir de Cuilapan"', add
label define mx10a_munic_lbl 12043 `"Metlatónoc"', add
label define mx10a_munic_lbl 12044 `"Mochitlán"', add
label define mx10a_munic_lbl 12045 `"Olinalá"', add
label define mx10a_munic_lbl 12046 `"Ometepec"', add
label define mx10a_munic_lbl 12047 `"Pedro Ascencio Alquisiras"', add
label define mx10a_munic_lbl 12048 `"Petatlán"', add
label define mx10a_munic_lbl 12049 `"Pilcaya"', add
label define mx10a_munic_lbl 12050 `"Pungarabato"', add
label define mx10a_munic_lbl 12051 `"Quechultenango"', add
label define mx10a_munic_lbl 12052 `"San Luis Acatlán"', add
label define mx10a_munic_lbl 12053 `"San Marcos"', add
label define mx10a_munic_lbl 12054 `"San Miguel Totolapan"', add
label define mx10a_munic_lbl 12055 `"Taxco de Alarcón"', add
label define mx10a_munic_lbl 12056 `"Tecoanapa"', add
label define mx10a_munic_lbl 12057 `"Técpan de Galeana"', add
label define mx10a_munic_lbl 12058 `"Teloloapan"', add
label define mx10a_munic_lbl 12059 `"Tepecoacuilco de Trujano"', add
label define mx10a_munic_lbl 12060 `"Tetipac"', add
label define mx10a_munic_lbl 12061 `"Tixtla de Guerrero"', add
label define mx10a_munic_lbl 12062 `"Tlacoachistlahuaca"', add
label define mx10a_munic_lbl 12063 `"Tlacoapa"', add
label define mx10a_munic_lbl 12064 `"Tlalchapa"', add
label define mx10a_munic_lbl 12065 `"Tlalixtaquilla de Maldonado"', add
label define mx10a_munic_lbl 12066 `"Tlapa de Comonfort"', add
label define mx10a_munic_lbl 12067 `"Tlapehuala"', add
label define mx10a_munic_lbl 12068 `"La Unión de Isidoro Montes de Oca"', add
label define mx10a_munic_lbl 12069 `"Xalpatláhuac"', add
label define mx10a_munic_lbl 12070 `"Xochihuehuetlán"', add
label define mx10a_munic_lbl 12071 `"Xochistlahuaca"', add
label define mx10a_munic_lbl 12072 `"Zapotitlán Tablas"', add
label define mx10a_munic_lbl 12073 `"Zirándaro"', add
label define mx10a_munic_lbl 12074 `"Zitlala"', add
label define mx10a_munic_lbl 12075 `"Eduardo Neri"', add
label define mx10a_munic_lbl 12076 `"Acatepec"', add
label define mx10a_munic_lbl 12077 `"Marquelia"', add
label define mx10a_munic_lbl 12078 `"Cochoapa el Grande"', add
label define mx10a_munic_lbl 12079 `"José Joaquin de Herrera"', add
label define mx10a_munic_lbl 12080 `"Juchitán"', add
label define mx10a_munic_lbl 12081 `"Iliatenco"', add
label define mx10a_munic_lbl 13001 `"Acatlán"', add
label define mx10a_munic_lbl 13002 `"Acaxochitlán"', add
label define mx10a_munic_lbl 13003 `"Actopan"', add
label define mx10a_munic_lbl 13004 `"Agua Blanca de Iturbide"', add
label define mx10a_munic_lbl 13005 `"Ajacuba"', add
label define mx10a_munic_lbl 13006 `"Alfajayucan"', add
label define mx10a_munic_lbl 13007 `"Almoloya"', add
label define mx10a_munic_lbl 13008 `"Apan"', add
label define mx10a_munic_lbl 13009 `"El Arenal"', add
label define mx10a_munic_lbl 13010 `"Atitalaquia"', add
label define mx10a_munic_lbl 13011 `"Atlapexco"', add
label define mx10a_munic_lbl 13012 `"Atotonilco el Grande"', add
label define mx10a_munic_lbl 13013 `"Atotonilco de Tula"', add
label define mx10a_munic_lbl 13014 `"Calnali"', add
label define mx10a_munic_lbl 13015 `"Cardonal"', add
label define mx10a_munic_lbl 13016 `"Cuautepec de Hinojosa"', add
label define mx10a_munic_lbl 13017 `"Chapantongo"', add
label define mx10a_munic_lbl 13018 `"Chapulhuacán"', add
label define mx10a_munic_lbl 13019 `"Chilcuautla"', add
label define mx10a_munic_lbl 13020 `"Eloxochitlán"', add
label define mx10a_munic_lbl 13021 `"Emiliano Zapata"', add
label define mx10a_munic_lbl 13022 `"Epazoyucan"', add
label define mx10a_munic_lbl 13023 `"Francisco I. Madero"', add
label define mx10a_munic_lbl 13024 `"Huasca de Ocampo"', add
label define mx10a_munic_lbl 13025 `"Huautla"', add
label define mx10a_munic_lbl 13026 `"Huazalingo"', add
label define mx10a_munic_lbl 13027 `"Huehuetla"', add
label define mx10a_munic_lbl 13028 `"Huejutla de Reyes"', add
label define mx10a_munic_lbl 13029 `"Huichapan"', add
label define mx10a_munic_lbl 13030 `"Ixmiquilpan"', add
label define mx10a_munic_lbl 13031 `"Jacala de Ledezma"', add
label define mx10a_munic_lbl 13032 `"Jaltocán"', add
label define mx10a_munic_lbl 13033 `"Juárez Hidalgo"', add
label define mx10a_munic_lbl 13034 `"Lolotla"', add
label define mx10a_munic_lbl 13035 `"Metepec"', add
label define mx10a_munic_lbl 13036 `"San Agustín Metzquititlán"', add
label define mx10a_munic_lbl 13037 `"Metztitlán"', add
label define mx10a_munic_lbl 13038 `"Mineral del Chico"', add
label define mx10a_munic_lbl 13039 `"Mineral del Monte"', add
label define mx10a_munic_lbl 13040 `"La Misión"', add
label define mx10a_munic_lbl 13041 `"Mixquiahuala de Juárez"', add
label define mx10a_munic_lbl 13042 `"Molango de Escamilla"', add
label define mx10a_munic_lbl 13043 `"Nicolás Flores"', add
label define mx10a_munic_lbl 13044 `"Nopala de Villagrán"', add
label define mx10a_munic_lbl 13045 `"Omitlán de Juárez"', add
label define mx10a_munic_lbl 13046 `"San Felipe Orizatlán"', add
label define mx10a_munic_lbl 13047 `"Pacula"', add
label define mx10a_munic_lbl 13048 `"Pachuca de Soto"', add
label define mx10a_munic_lbl 13049 `"Pisaflores"', add
label define mx10a_munic_lbl 13050 `"Progreso de Obregón"', add
label define mx10a_munic_lbl 13051 `"Mineral de la Reforma"', add
label define mx10a_munic_lbl 13052 `"San Agustín Tlaxiaca"', add
label define mx10a_munic_lbl 13053 `"San Bartolo Tutotepec"', add
label define mx10a_munic_lbl 13054 `"San Salvador"', add
label define mx10a_munic_lbl 13055 `"Santiago de Anaya"', add
label define mx10a_munic_lbl 13056 `"Santiago Tulantepec de Lugo Guerrero"', add
label define mx10a_munic_lbl 13057 `"Singuilucan"', add
label define mx10a_munic_lbl 13058 `"Tasquillo"', add
label define mx10a_munic_lbl 13059 `"Tecozautla"', add
label define mx10a_munic_lbl 13060 `"Tenango de Doria"', add
label define mx10a_munic_lbl 13061 `"Tepeapulco"', add
label define mx10a_munic_lbl 13062 `"Tepehuacán de Guerrero"', add
label define mx10a_munic_lbl 13063 `"Tepeji del Río de Ocampo"', add
label define mx10a_munic_lbl 13064 `"Tepetitlán"', add
label define mx10a_munic_lbl 13065 `"Tetepango"', add
label define mx10a_munic_lbl 13066 `"Villa de Tezontepec"', add
label define mx10a_munic_lbl 13067 `"Tezontepec de Aldama"', add
label define mx10a_munic_lbl 13068 `"Tianguistengo"', add
label define mx10a_munic_lbl 13069 `"Tizayuca"', add
label define mx10a_munic_lbl 13070 `"Tlahuelilpan"', add
label define mx10a_munic_lbl 13071 `"Tlahuiltepa"', add
label define mx10a_munic_lbl 13072 `"Tlanalapa"', add
label define mx10a_munic_lbl 13073 `"Tlanchinol"', add
label define mx10a_munic_lbl 13074 `"Tlaxcoapan"', add
label define mx10a_munic_lbl 13075 `"Tolcayuca"', add
label define mx10a_munic_lbl 13076 `"Tula de Allende"', add
label define mx10a_munic_lbl 13077 `"Tulancingo de Bravo"', add
label define mx10a_munic_lbl 13078 `"Xochiatipan"', add
label define mx10a_munic_lbl 13079 `"Xochicoatlán"', add
label define mx10a_munic_lbl 13080 `"Yahualica"', add
label define mx10a_munic_lbl 13081 `"Zacualtipán de Ángeles"', add
label define mx10a_munic_lbl 13082 `"Zapotlán de Juárez"', add
label define mx10a_munic_lbl 13083 `"Zempoala"', add
label define mx10a_munic_lbl 13084 `"Zimapán"', add
label define mx10a_munic_lbl 14001 `"Acatic"', add
label define mx10a_munic_lbl 14002 `"Acatlán de Juárez"', add
label define mx10a_munic_lbl 14003 `"Ahualulco de Mercado"', add
label define mx10a_munic_lbl 14004 `"Amacueca"', add
label define mx10a_munic_lbl 14005 `"Amatitán"', add
label define mx10a_munic_lbl 14006 `"Ameca"', add
label define mx10a_munic_lbl 14007 `"San Juanito de Escobedo"', add
label define mx10a_munic_lbl 14008 `"Arandas"', add
label define mx10a_munic_lbl 14009 `"El Arenal"', add
label define mx10a_munic_lbl 14010 `"Atemajac de Brizuela"', add
label define mx10a_munic_lbl 14011 `"Atengo"', add
label define mx10a_munic_lbl 14012 `"Atenguillo"', add
label define mx10a_munic_lbl 14013 `"Atotonilco el Alto"', add
label define mx10a_munic_lbl 14014 `"Atoyac"', add
label define mx10a_munic_lbl 14015 `"Autlán de Navarro"', add
label define mx10a_munic_lbl 14016 `"Ayotlán"', add
label define mx10a_munic_lbl 14017 `"Ayutla"', add
label define mx10a_munic_lbl 14018 `"La Barca"', add
label define mx10a_munic_lbl 14019 `"Bolaños"', add
label define mx10a_munic_lbl 14020 `"Cabo Corrientes"', add
label define mx10a_munic_lbl 14021 `"Casimiro Castillo"', add
label define mx10a_munic_lbl 14022 `"Cihuatlán"', add
label define mx10a_munic_lbl 14023 `"Zapotlán el Grande"', add
label define mx10a_munic_lbl 14024 `"Cocula"', add
label define mx10a_munic_lbl 14025 `"Colotlán"', add
label define mx10a_munic_lbl 14026 `"Concepción de Buenos Aires"', add
label define mx10a_munic_lbl 14027 `"Cuautitlán de García Barragán"', add
label define mx10a_munic_lbl 14028 `"Cuautla"', add
label define mx10a_munic_lbl 14029 `"Cuquío"', add
label define mx10a_munic_lbl 14030 `"Chapala"', add
label define mx10a_munic_lbl 14031 `"Chimaltitán"', add
label define mx10a_munic_lbl 14032 `"Chiquilistlán"', add
label define mx10a_munic_lbl 14033 `"Degollado"', add
label define mx10a_munic_lbl 14034 `"Ejutla"', add
label define mx10a_munic_lbl 14035 `"Encarnación de Díaz"', add
label define mx10a_munic_lbl 14036 `"Etzatlán"', add
label define mx10a_munic_lbl 14037 `"El Grullo"', add
label define mx10a_munic_lbl 14038 `"Guachinango"', add
label define mx10a_munic_lbl 14039 `"Guadalajara"', add
label define mx10a_munic_lbl 14040 `"Hostotipaquillo"', add
label define mx10a_munic_lbl 14041 `"Huejúcar"', add
label define mx10a_munic_lbl 14042 `"Huejuquilla el Alto"', add
label define mx10a_munic_lbl 14043 `"La Huerta"', add
label define mx10a_munic_lbl 14044 `"Ixtlahuacán de los Membrillos"', add
label define mx10a_munic_lbl 14045 `"Ixtlahuacán del Río"', add
label define mx10a_munic_lbl 14046 `"Jalostotitlán"', add
label define mx10a_munic_lbl 14047 `"Jamay"', add
label define mx10a_munic_lbl 14048 `"Jesús María"', add
label define mx10a_munic_lbl 14049 `"Jilotlán de los Dolores"', add
label define mx10a_munic_lbl 14050 `"Jocotepec"', add
label define mx10a_munic_lbl 14051 `"Juanacatlán"', add
label define mx10a_munic_lbl 14052 `"Juchitlán"', add
label define mx10a_munic_lbl 14053 `"Lagos de Moreno"', add
label define mx10a_munic_lbl 14054 `"El Limón"', add
label define mx10a_munic_lbl 14055 `"Magdalena"', add
label define mx10a_munic_lbl 14056 `"Santa María del Oro"', add
label define mx10a_munic_lbl 14057 `"La Manzanilla de la Paz"', add
label define mx10a_munic_lbl 14058 `"Mascota"', add
label define mx10a_munic_lbl 14059 `"Mazamitla"', add
label define mx10a_munic_lbl 14060 `"Mexticacán"', add
label define mx10a_munic_lbl 14061 `"Mezquitic"', add
label define mx10a_munic_lbl 14062 `"Mixtlán"', add
label define mx10a_munic_lbl 14063 `"Ocotlán"', add
label define mx10a_munic_lbl 14064 `"Ojuelos de Jalisco"', add
label define mx10a_munic_lbl 14065 `"Pihuamo"', add
label define mx10a_munic_lbl 14066 `"Poncitlán"', add
label define mx10a_munic_lbl 14067 `"Puerto Vallarta"', add
label define mx10a_munic_lbl 14068 `"Villa Purificación"', add
label define mx10a_munic_lbl 14069 `"Quitupan"', add
label define mx10a_munic_lbl 14070 `"El Salto"', add
label define mx10a_munic_lbl 14071 `"San Cristóbal de la Barranca"', add
label define mx10a_munic_lbl 14072 `"San Diego de Alejandría"', add
label define mx10a_munic_lbl 14073 `"San Juan de los Lagos"', add
label define mx10a_munic_lbl 14074 `"San Julián"', add
label define mx10a_munic_lbl 14075 `"San Marcos"', add
label define mx10a_munic_lbl 14076 `"San Martín de Bolaños"', add
label define mx10a_munic_lbl 14077 `"San Martín Hidalgo"', add
label define mx10a_munic_lbl 14078 `"San Miguel el Alto"', add
label define mx10a_munic_lbl 14079 `"Gómez Farías"', add
label define mx10a_munic_lbl 14080 `"San Sebastián del Oeste"', add
label define mx10a_munic_lbl 14081 `"Santa María de los Ángeles"', add
label define mx10a_munic_lbl 14082 `"Sayula"', add
label define mx10a_munic_lbl 14083 `"Tala"', add
label define mx10a_munic_lbl 14084 `"Talpa de Allende"', add
label define mx10a_munic_lbl 14085 `"Tamazula de Gordiano"', add
label define mx10a_munic_lbl 14086 `"Tapalpa"', add
label define mx10a_munic_lbl 14087 `"Tecalitlán"', add
label define mx10a_munic_lbl 14088 `"Tecolotlán"', add
label define mx10a_munic_lbl 14089 `"Techaluta de Montenegro"', add
label define mx10a_munic_lbl 14090 `"Tenamaxtlán"', add
label define mx10a_munic_lbl 14091 `"Teocaltiche"', add
label define mx10a_munic_lbl 14092 `"Teocuitatlán de Corona"', add
label define mx10a_munic_lbl 14093 `"Tepatitlán de Morelos"', add
label define mx10a_munic_lbl 14094 `"Tequila"', add
label define mx10a_munic_lbl 14095 `"Teuchitlán"', add
label define mx10a_munic_lbl 14096 `"Tizapán el Alto"', add
label define mx10a_munic_lbl 14097 `"Tlajomulco de Zúñiga"', add
label define mx10a_munic_lbl 14098 `"Tlaquepaque"', add
label define mx10a_munic_lbl 14099 `"Tolimán"', add
label define mx10a_munic_lbl 14100 `"Tomatlán"', add
label define mx10a_munic_lbl 14101 `"Tonalá"', add
label define mx10a_munic_lbl 14102 `"Tonaya"', add
label define mx10a_munic_lbl 14103 `"Tonila"', add
label define mx10a_munic_lbl 14104 `"Totatiche"', add
label define mx10a_munic_lbl 14105 `"Tototlán"', add
label define mx10a_munic_lbl 14106 `"Tuxcacuesco"', add
label define mx10a_munic_lbl 14107 `"Tuxcueca"', add
label define mx10a_munic_lbl 14108 `"Tuxpan"', add
label define mx10a_munic_lbl 14109 `"Unión de San Antonio"', add
label define mx10a_munic_lbl 14110 `"Unión de Tula"', add
label define mx10a_munic_lbl 14111 `"Valle de Guadalupe"', add
label define mx10a_munic_lbl 14112 `"Valle de Juárez"', add
label define mx10a_munic_lbl 14113 `"San Gabriel"', add
label define mx10a_munic_lbl 14114 `"Villa Corona"', add
label define mx10a_munic_lbl 14115 `"Villa Guerrero"', add
label define mx10a_munic_lbl 14116 `"Villa Hidalgo"', add
label define mx10a_munic_lbl 14117 `"Cañadas de Obregón"', add
label define mx10a_munic_lbl 14118 `"Yahualica de González Gallo"', add
label define mx10a_munic_lbl 14119 `"Zacoalco de Torres"', add
label define mx10a_munic_lbl 14120 `"Zapopan"', add
label define mx10a_munic_lbl 14121 `"Zapotiltic"', add
label define mx10a_munic_lbl 14122 `"Zapotitlán de Vadillo"', add
label define mx10a_munic_lbl 14123 `"Zapotlán del Rey"', add
label define mx10a_munic_lbl 14124 `"Zapotlanejo"', add
label define mx10a_munic_lbl 14125 `"San Ignacio Cerro Gordo"', add
label define mx10a_munic_lbl 15001 `"Acambay"', add
label define mx10a_munic_lbl 15002 `"Acolman"', add
label define mx10a_munic_lbl 15003 `"Aculco"', add
label define mx10a_munic_lbl 15004 `"Almoloya de Alquisiras"', add
label define mx10a_munic_lbl 15005 `"Almoloya de Juárez"', add
label define mx10a_munic_lbl 15006 `"Almoloya del Río"', add
label define mx10a_munic_lbl 15007 `"Amanalco"', add
label define mx10a_munic_lbl 15008 `"Amatepec"', add
label define mx10a_munic_lbl 15009 `"Amecameca"', add
label define mx10a_munic_lbl 15010 `"Apaxco"', add
label define mx10a_munic_lbl 15011 `"Atenco"', add
label define mx10a_munic_lbl 15012 `"Atizapán"', add
label define mx10a_munic_lbl 15013 `"Atizapán de Zaragoza"', add
label define mx10a_munic_lbl 15014 `"Atlacomulco"', add
label define mx10a_munic_lbl 15015 `"Atlautla"', add
label define mx10a_munic_lbl 15016 `"Axapusco"', add
label define mx10a_munic_lbl 15017 `"Ayapango"', add
label define mx10a_munic_lbl 15018 `"Calimaya"', add
label define mx10a_munic_lbl 15019 `"Capulhuac"', add
label define mx10a_munic_lbl 15020 `"Coacalco de Berriozábal"', add
label define mx10a_munic_lbl 15021 `"Coatepec Harinas"', add
label define mx10a_munic_lbl 15022 `"Cocotitlán"', add
label define mx10a_munic_lbl 15023 `"Coyotepec"', add
label define mx10a_munic_lbl 15024 `"Cuautitlán"', add
label define mx10a_munic_lbl 15025 `"Chalco"', add
label define mx10a_munic_lbl 15026 `"Chapa de Mota"', add
label define mx10a_munic_lbl 15027 `"Chapultepec"', add
label define mx10a_munic_lbl 15028 `"Chiautla"', add
label define mx10a_munic_lbl 15029 `"Chicoloapan"', add
label define mx10a_munic_lbl 15030 `"Chiconcuac"', add
label define mx10a_munic_lbl 15031 `"Chimalhuacán"', add
label define mx10a_munic_lbl 15032 `"Donato Guerra"', add
label define mx10a_munic_lbl 15033 `"Ecatepec de Morelos"', add
label define mx10a_munic_lbl 15034 `"Ecatzingo"', add
label define mx10a_munic_lbl 15035 `"Huehuetoca"', add
label define mx10a_munic_lbl 15036 `"Hueypoxtla"', add
label define mx10a_munic_lbl 15037 `"Huixquilucan"', add
label define mx10a_munic_lbl 15038 `"Isidro Fabela"', add
label define mx10a_munic_lbl 15039 `"Ixtapaluca"', add
label define mx10a_munic_lbl 15040 `"Ixtapan de la Sal"', add
label define mx10a_munic_lbl 15041 `"Ixtapan del Oro"', add
label define mx10a_munic_lbl 15042 `"Ixtlahuaca"', add
label define mx10a_munic_lbl 15043 `"Xalatlaco"', add
label define mx10a_munic_lbl 15044 `"Jaltenco"', add
label define mx10a_munic_lbl 15045 `"Jilotepec"', add
label define mx10a_munic_lbl 15046 `"Jilotzingo"', add
label define mx10a_munic_lbl 15047 `"Jiquipilco"', add
label define mx10a_munic_lbl 15048 `"Jocotitlán"', add
label define mx10a_munic_lbl 15049 `"Joquicingo"', add
label define mx10a_munic_lbl 15050 `"Juchitepec"', add
label define mx10a_munic_lbl 15051 `"Lerma"', add
label define mx10a_munic_lbl 15052 `"Malinalco"', add
label define mx10a_munic_lbl 15053 `"Melchor Ocampo"', add
label define mx10a_munic_lbl 15054 `"Metepec"', add
label define mx10a_munic_lbl 15055 `"Mexicaltzingo"', add
label define mx10a_munic_lbl 15056 `"Morelos"', add
label define mx10a_munic_lbl 15057 `"Naucalpan de Juárez"', add
label define mx10a_munic_lbl 15058 `"Nezahualcóyotl"', add
label define mx10a_munic_lbl 15059 `"Nextlalpan"', add
label define mx10a_munic_lbl 15060 `"Nicolás Romero"', add
label define mx10a_munic_lbl 15061 `"Nopaltepec"', add
label define mx10a_munic_lbl 15062 `"Ocoyoacac"', add
label define mx10a_munic_lbl 15063 `"Ocuilan"', add
label define mx10a_munic_lbl 15064 `"El Oro"', add
label define mx10a_munic_lbl 15065 `"Otumba"', add
label define mx10a_munic_lbl 15066 `"Otzoloapan"', add
label define mx10a_munic_lbl 15067 `"Otzolotepec"', add
label define mx10a_munic_lbl 15068 `"Ozumba"', add
label define mx10a_munic_lbl 15069 `"Papalotla"', add
label define mx10a_munic_lbl 15070 `"La Paz"', add
label define mx10a_munic_lbl 15071 `"Polotitlán"', add
label define mx10a_munic_lbl 15072 `"Rayón"', add
label define mx10a_munic_lbl 15073 `"San Antonio la Isla"', add
label define mx10a_munic_lbl 15074 `"San Felipe del Progreso"', add
label define mx10a_munic_lbl 15075 `"San Martín de las Pirámides"', add
label define mx10a_munic_lbl 15076 `"San Mateo Atenco"', add
label define mx10a_munic_lbl 15077 `"San Simón de Guerrero"', add
label define mx10a_munic_lbl 15078 `"Santo Tomás"', add
label define mx10a_munic_lbl 15079 `"Soyaniquilpan de Juárez"', add
label define mx10a_munic_lbl 15080 `"Sultepec"', add
label define mx10a_munic_lbl 15081 `"Tecámac"', add
label define mx10a_munic_lbl 15082 `"Tejupilco"', add
label define mx10a_munic_lbl 15083 `"Temamatla"', add
label define mx10a_munic_lbl 15084 `"Temascalapa"', add
label define mx10a_munic_lbl 15085 `"Temascalcingo"', add
label define mx10a_munic_lbl 15086 `"Temascaltepec"', add
label define mx10a_munic_lbl 15087 `"Temoaya"', add
label define mx10a_munic_lbl 15088 `"Tenancingo"', add
label define mx10a_munic_lbl 15089 `"Tenango del Aire"', add
label define mx10a_munic_lbl 15090 `"Tenango del Valle"', add
label define mx10a_munic_lbl 15091 `"Teoloyucán"', add
label define mx10a_munic_lbl 15092 `"Teotihuacán"', add
label define mx10a_munic_lbl 15093 `"Tepetlaoxtoc"', add
label define mx10a_munic_lbl 15094 `"Tepetlixpa"', add
label define mx10a_munic_lbl 15095 `"Tepotzotlán"', add
label define mx10a_munic_lbl 15096 `"Tequixquiac"', add
label define mx10a_munic_lbl 15097 `"Texcaltitlán"', add
label define mx10a_munic_lbl 15098 `"Texcalyacac"', add
label define mx10a_munic_lbl 15099 `"Texcoco"', add
label define mx10a_munic_lbl 15100 `"Tezoyuca"', add
label define mx10a_munic_lbl 15101 `"Tianguistenco"', add
label define mx10a_munic_lbl 15102 `"Timilpan"', add
label define mx10a_munic_lbl 15103 `"Tlalmanalco"', add
label define mx10a_munic_lbl 15104 `"Tlalnepantla de Baz"', add
label define mx10a_munic_lbl 15105 `"Tlatlaya"', add
label define mx10a_munic_lbl 15106 `"Toluca"', add
label define mx10a_munic_lbl 15107 `"Tonatico"', add
label define mx10a_munic_lbl 15108 `"Tultepec"', add
label define mx10a_munic_lbl 15109 `"Tultitlán"', add
label define mx10a_munic_lbl 15110 `"Valle de Bravo"', add
label define mx10a_munic_lbl 15111 `"Villa de Allende"', add
label define mx10a_munic_lbl 15112 `"Villa del Carbón"', add
label define mx10a_munic_lbl 15113 `"Villa Guerrero"', add
label define mx10a_munic_lbl 15114 `"Villa Victoria"', add
label define mx10a_munic_lbl 15115 `"Xonacatlán"', add
label define mx10a_munic_lbl 15116 `"Zacazonapan"', add
label define mx10a_munic_lbl 15117 `"Zacualpan"', add
label define mx10a_munic_lbl 15118 `"Zinacantepec"', add
label define mx10a_munic_lbl 15119 `"Zumpahuacán"', add
label define mx10a_munic_lbl 15120 `"Zumpango"', add
label define mx10a_munic_lbl 15121 `"Cuautitlán Izcalli"', add
label define mx10a_munic_lbl 15122 `"Valle de Chalco Solidaridad"', add
label define mx10a_munic_lbl 15123 `"Luvianos"', add
label define mx10a_munic_lbl 15124 `"San José del Rincón"', add
label define mx10a_munic_lbl 15125 `"Tonanitla"', add
label define mx10a_munic_lbl 16001 `"Acuitzio"', add
label define mx10a_munic_lbl 16002 `"Aguililla"', add
label define mx10a_munic_lbl 16003 `"Álvaro Obregón"', add
label define mx10a_munic_lbl 16004 `"Angamacutiro"', add
label define mx10a_munic_lbl 16005 `"Angangueo"', add
label define mx10a_munic_lbl 16006 `"Apatzingán"', add
label define mx10a_munic_lbl 16007 `"Aporo"', add
label define mx10a_munic_lbl 16008 `"Aquila"', add
label define mx10a_munic_lbl 16009 `"Ario"', add
label define mx10a_munic_lbl 16010 `"Arteaga"', add
label define mx10a_munic_lbl 16011 `"Briseñas"', add
label define mx10a_munic_lbl 16012 `"Buenavista"', add
label define mx10a_munic_lbl 16013 `"Carácuaro"', add
label define mx10a_munic_lbl 16014 `"Coahuayana"', add
label define mx10a_munic_lbl 16015 `"Coalcomán de Vázquez Pallares"', add
label define mx10a_munic_lbl 16016 `"Coeneo"', add
label define mx10a_munic_lbl 16017 `"Contepec"', add
label define mx10a_munic_lbl 16018 `"Copándaro"', add
label define mx10a_munic_lbl 16019 `"Cotija"', add
label define mx10a_munic_lbl 16020 `"Cuitzeo"', add
label define mx10a_munic_lbl 16021 `"Charapan"', add
label define mx10a_munic_lbl 16022 `"Charo"', add
label define mx10a_munic_lbl 16023 `"Chavinda"', add
label define mx10a_munic_lbl 16024 `"Cherán"', add
label define mx10a_munic_lbl 16025 `"Chilchota"', add
label define mx10a_munic_lbl 16026 `"Chinicuila"', add
label define mx10a_munic_lbl 16027 `"Chucándiro"', add
label define mx10a_munic_lbl 16028 `"Churintzio"', add
label define mx10a_munic_lbl 16029 `"Churumuco"', add
label define mx10a_munic_lbl 16030 `"Ecuandureo"', add
label define mx10a_munic_lbl 16031 `"Epitacio Huerta"', add
label define mx10a_munic_lbl 16032 `"Erongarícuaro"', add
label define mx10a_munic_lbl 16033 `"Gabriel Zamora"', add
label define mx10a_munic_lbl 16034 `"Hidalgo"', add
label define mx10a_munic_lbl 16035 `"La Huacana"', add
label define mx10a_munic_lbl 16036 `"Huandacareo"', add
label define mx10a_munic_lbl 16037 `"Huaniqueo"', add
label define mx10a_munic_lbl 16038 `"Huetamo"', add
label define mx10a_munic_lbl 16039 `"Huiramba"', add
label define mx10a_munic_lbl 16040 `"Indaparapeo"', add
label define mx10a_munic_lbl 16041 `"Irimbo"', add
label define mx10a_munic_lbl 16042 `"Ixtlán"', add
label define mx10a_munic_lbl 16043 `"Jacona"', add
label define mx10a_munic_lbl 16044 `"Jiménez"', add
label define mx10a_munic_lbl 16045 `"Jiquilpan"', add
label define mx10a_munic_lbl 16046 `"Juárez"', add
label define mx10a_munic_lbl 16047 `"Jungapeo"', add
label define mx10a_munic_lbl 16048 `"Lagunillas"', add
label define mx10a_munic_lbl 16049 `"Madero"', add
label define mx10a_munic_lbl 16050 `"Maravatío"', add
label define mx10a_munic_lbl 16051 `"Marcos Castellanos"', add
label define mx10a_munic_lbl 16052 `"Lázaro Cárdenas"', add
label define mx10a_munic_lbl 16053 `"Morelia"', add
label define mx10a_munic_lbl 16054 `"Morelos"', add
label define mx10a_munic_lbl 16055 `"Múgica"', add
label define mx10a_munic_lbl 16056 `"Nahuatzen"', add
label define mx10a_munic_lbl 16057 `"Nocupétaro"', add
label define mx10a_munic_lbl 16058 `"Nuevo Parangaricutiro"', add
label define mx10a_munic_lbl 16059 `"Nuevo Urecho"', add
label define mx10a_munic_lbl 16060 `"Numarán"', add
label define mx10a_munic_lbl 16061 `"Ocampo"', add
label define mx10a_munic_lbl 16062 `"Pajacuarán"', add
label define mx10a_munic_lbl 16063 `"Panindícuaro"', add
label define mx10a_munic_lbl 16064 `"Parácuaro"', add
label define mx10a_munic_lbl 16065 `"Paracho"', add
label define mx10a_munic_lbl 16066 `"Pátzcuaro"', add
label define mx10a_munic_lbl 16067 `"Penjamillo"', add
label define mx10a_munic_lbl 16068 `"Peribán"', add
label define mx10a_munic_lbl 16069 `"La Piedad"', add
label define mx10a_munic_lbl 16070 `"Purépero"', add
label define mx10a_munic_lbl 16071 `"Puruándiro"', add
label define mx10a_munic_lbl 16072 `"Queréndaro"', add
label define mx10a_munic_lbl 16073 `"Quiroga"', add
label define mx10a_munic_lbl 16074 `"Cojumatlán de Régules"', add
label define mx10a_munic_lbl 16075 `"Los Reyes"', add
label define mx10a_munic_lbl 16076 `"Sahuayo"', add
label define mx10a_munic_lbl 16077 `"San Lucas"', add
label define mx10a_munic_lbl 16078 `"Santa Ana Maya"', add
label define mx10a_munic_lbl 16079 `"Salvador Escalante"', add
label define mx10a_munic_lbl 16080 `"Senguio"', add
label define mx10a_munic_lbl 16081 `"Susupuato"', add
label define mx10a_munic_lbl 16082 `"Tacámbaro"', add
label define mx10a_munic_lbl 16083 `"Tancítaro"', add
label define mx10a_munic_lbl 16084 `"Tangamandapio"', add
label define mx10a_munic_lbl 16085 `"Tangancícuaro"', add
label define mx10a_munic_lbl 16086 `"Tanhuato"', add
label define mx10a_munic_lbl 16087 `"Taretan"', add
label define mx10a_munic_lbl 16088 `"Tarímbaro"', add
label define mx10a_munic_lbl 16089 `"Tepalcatepec"', add
label define mx10a_munic_lbl 16090 `"Tingambato"', add
label define mx10a_munic_lbl 16091 `"Tingüindín"', add
label define mx10a_munic_lbl 16092 `"Tiquicheo de Nicolás Romero"', add
label define mx10a_munic_lbl 16093 `"Tlalpujahua"', add
label define mx10a_munic_lbl 16094 `"Tlazazalca"', add
label define mx10a_munic_lbl 16095 `"Tocumbo"', add
label define mx10a_munic_lbl 16096 `"Tumbiscatío"', add
label define mx10a_munic_lbl 16097 `"Turicato"', add
label define mx10a_munic_lbl 16098 `"Tuxpan"', add
label define mx10a_munic_lbl 16099 `"Tuzantla"', add
label define mx10a_munic_lbl 16100 `"Tzintzuntzan"', add
label define mx10a_munic_lbl 16101 `"Tzitzio"', add
label define mx10a_munic_lbl 16102 `"Uruapan"', add
label define mx10a_munic_lbl 16103 `"Venustiano Carranza"', add
label define mx10a_munic_lbl 16104 `"Villamar"', add
label define mx10a_munic_lbl 16105 `"Vista Hermosa"', add
label define mx10a_munic_lbl 16106 `"Yurécuaro"', add
label define mx10a_munic_lbl 16107 `"Zacapu"', add
label define mx10a_munic_lbl 16108 `"Zamora"', add
label define mx10a_munic_lbl 16109 `"Zináparo"', add
label define mx10a_munic_lbl 16110 `"Zinapécuaro"', add
label define mx10a_munic_lbl 16111 `"Ziracuaretiro"', add
label define mx10a_munic_lbl 16112 `"Zitácuaro"', add
label define mx10a_munic_lbl 16113 `"José Sixto Verduzco"', add
label define mx10a_munic_lbl 17001 `"Amacuzac"', add
label define mx10a_munic_lbl 17002 `"Atlatlahucan"', add
label define mx10a_munic_lbl 17003 `"Axochiapan"', add
label define mx10a_munic_lbl 17004 `"Ayala"', add
label define mx10a_munic_lbl 17005 `"Coatlán del Río"', add
label define mx10a_munic_lbl 17006 `"Cuautla"', add
label define mx10a_munic_lbl 17007 `"Cuernavaca"', add
label define mx10a_munic_lbl 17008 `"Emiliano Zapata"', add
label define mx10a_munic_lbl 17009 `"Huitzilac"', add
label define mx10a_munic_lbl 17010 `"Jantetelco"', add
label define mx10a_munic_lbl 17011 `"Jiutepec"', add
label define mx10a_munic_lbl 17012 `"Jojutla"', add
label define mx10a_munic_lbl 17013 `"Jonacatepec"', add
label define mx10a_munic_lbl 17014 `"Mazatepec"', add
label define mx10a_munic_lbl 17015 `"Miacatlán"', add
label define mx10a_munic_lbl 17016 `"Ocuituco"', add
label define mx10a_munic_lbl 17017 `"Puente de Ixtla"', add
label define mx10a_munic_lbl 17018 `"Temixco"', add
label define mx10a_munic_lbl 17019 `"Tepalcingo"', add
label define mx10a_munic_lbl 17020 `"Tepoztlán"', add
label define mx10a_munic_lbl 17021 `"Tetecala"', add
label define mx10a_munic_lbl 17022 `"Tetela del Volcán"', add
label define mx10a_munic_lbl 17023 `"Tlalnepantla"', add
label define mx10a_munic_lbl 17024 `"Tlaltizapán"', add
label define mx10a_munic_lbl 17025 `"Tlaquiltenango"', add
label define mx10a_munic_lbl 17026 `"Tlayacapan"', add
label define mx10a_munic_lbl 17027 `"Totolapan"', add
label define mx10a_munic_lbl 17028 `"Xochitepec"', add
label define mx10a_munic_lbl 17029 `"Yautepec"', add
label define mx10a_munic_lbl 17030 `"Yecapixtla"', add
label define mx10a_munic_lbl 17031 `"Zacatepec"', add
label define mx10a_munic_lbl 17032 `"Zacualpan"', add
label define mx10a_munic_lbl 17033 `"Temoac"', add
label define mx10a_munic_lbl 18001 `"Acaponeta"', add
label define mx10a_munic_lbl 18002 `"Ahuacatlán"', add
label define mx10a_munic_lbl 18003 `"Amatlán de Cañas"', add
label define mx10a_munic_lbl 18004 `"Compostela"', add
label define mx10a_munic_lbl 18005 `"Huajicori"', add
label define mx10a_munic_lbl 18006 `"Ixtlán del Río"', add
label define mx10a_munic_lbl 18007 `"Jala"', add
label define mx10a_munic_lbl 18008 `"Xalisco"', add
label define mx10a_munic_lbl 18009 `"Del Nayar"', add
label define mx10a_munic_lbl 18010 `"Rosamorada"', add
label define mx10a_munic_lbl 18011 `"Ruíz"', add
label define mx10a_munic_lbl 18012 `"San Blas"', add
label define mx10a_munic_lbl 18013 `"San Pedro Lagunillas"', add
label define mx10a_munic_lbl 18014 `"Santa María del Oro"', add
label define mx10a_munic_lbl 18015 `"Santiago Ixcuintla"', add
label define mx10a_munic_lbl 18016 `"Tecuala"', add
label define mx10a_munic_lbl 18017 `"Tepic"', add
label define mx10a_munic_lbl 18018 `"Tuxpan"', add
label define mx10a_munic_lbl 18019 `"La Yesca"', add
label define mx10a_munic_lbl 18020 `"Bahía de Banderas"', add
label define mx10a_munic_lbl 19001 `"Abasolo"', add
label define mx10a_munic_lbl 19002 `"Agualeguas"', add
label define mx10a_munic_lbl 19003 `"Los Aldamas"', add
label define mx10a_munic_lbl 19004 `"Allende"', add
label define mx10a_munic_lbl 19005 `"Anáhuac"', add
label define mx10a_munic_lbl 19006 `"Apodaca"', add
label define mx10a_munic_lbl 19007 `"Aramberri"', add
label define mx10a_munic_lbl 19008 `"Bustamante"', add
label define mx10a_munic_lbl 19009 `"Cadereyta Jiménez"', add
label define mx10a_munic_lbl 19010 `"Carmen"', add
label define mx10a_munic_lbl 19011 `"Cerralvo"', add
label define mx10a_munic_lbl 19012 `"Ciénega de Flores"', add
label define mx10a_munic_lbl 19013 `"China"', add
label define mx10a_munic_lbl 19014 `"Dr. Arroyo"', add
label define mx10a_munic_lbl 19015 `"Dr. Coss"', add
label define mx10a_munic_lbl 19016 `"Dr. González"', add
label define mx10a_munic_lbl 19017 `"Galeana"', add
label define mx10a_munic_lbl 19018 `"García"', add
label define mx10a_munic_lbl 19019 `"San Pedro Garza García"', add
label define mx10a_munic_lbl 19020 `"Gral. Bravo"', add
label define mx10a_munic_lbl 19021 `"Gral. Escobedo"', add
label define mx10a_munic_lbl 19022 `"Gral. Terán"', add
label define mx10a_munic_lbl 19023 `"Gral. Treviño"', add
label define mx10a_munic_lbl 19024 `"Gral. Zaragoza"', add
label define mx10a_munic_lbl 19025 `"Gral. Zuazua"', add
label define mx10a_munic_lbl 19026 `"Guadalupe"', add
label define mx10a_munic_lbl 19027 `"Los Herreras"', add
label define mx10a_munic_lbl 19028 `"Higueras"', add
label define mx10a_munic_lbl 19029 `"Hualahuises"', add
label define mx10a_munic_lbl 19030 `"Iturbide"', add
label define mx10a_munic_lbl 19031 `"Juárez"', add
label define mx10a_munic_lbl 19032 `"Lampazos de Naranjo"', add
label define mx10a_munic_lbl 19033 `"Linares"', add
label define mx10a_munic_lbl 19034 `"Marín"', add
label define mx10a_munic_lbl 19035 `"Melchor Ocampo"', add
label define mx10a_munic_lbl 19036 `"Mier y Noriega"', add
label define mx10a_munic_lbl 19037 `"Mina"', add
label define mx10a_munic_lbl 19038 `"Montemorelos"', add
label define mx10a_munic_lbl 19039 `"Monterrey"', add
label define mx10a_munic_lbl 19040 `"Parás"', add
label define mx10a_munic_lbl 19041 `"Pesquería"', add
label define mx10a_munic_lbl 19042 `"Los Ramones"', add
label define mx10a_munic_lbl 19043 `"Rayones"', add
label define mx10a_munic_lbl 19044 `"Sabinas Hidalgo"', add
label define mx10a_munic_lbl 19045 `"Salinas Victoria"', add
label define mx10a_munic_lbl 19046 `"San Nicolás de los Garza"', add
label define mx10a_munic_lbl 19047 `"Hidalgo"', add
label define mx10a_munic_lbl 19048 `"Santa Catarina"', add
label define mx10a_munic_lbl 19049 `"Santiago"', add
label define mx10a_munic_lbl 19050 `"Vallecillo"', add
label define mx10a_munic_lbl 19051 `"Villaldama"', add
label define mx10a_munic_lbl 20001 `"Abejones"', add
label define mx10a_munic_lbl 20002 `"Acatlán de Pérez Figueroa"', add
label define mx10a_munic_lbl 20003 `"Asunción Cacalotepec"', add
label define mx10a_munic_lbl 20004 `"Asunción Cuyotepeji"', add
label define mx10a_munic_lbl 20005 `"Asunción Ixtaltepec"', add
label define mx10a_munic_lbl 20006 `"Asunción Nochixtlán"', add
label define mx10a_munic_lbl 20007 `"Asunción Ocotlán"', add
label define mx10a_munic_lbl 20008 `"Asunción Tlacolulita"', add
label define mx10a_munic_lbl 20009 `"Ayotzintepec"', add
label define mx10a_munic_lbl 20010 `"El Barrio de la Soledad"', add
label define mx10a_munic_lbl 20011 `"Calihualá"', add
label define mx10a_munic_lbl 20012 `"Candelaria Loxicha"', add
label define mx10a_munic_lbl 20013 `"Ciénega de Zimatlán"', add
label define mx10a_munic_lbl 20014 `"Ciudad Ixtepec"', add
label define mx10a_munic_lbl 20015 `"Coatecas Altas"', add
label define mx10a_munic_lbl 20016 `"Coicoyán de las Flores"', add
label define mx10a_munic_lbl 20017 `"La Compañía"', add
label define mx10a_munic_lbl 20018 `"Concepción Buenavista"', add
label define mx10a_munic_lbl 20019 `"Concepción Pápalo"', add
label define mx10a_munic_lbl 20020 `"Constancia del Rosario"', add
label define mx10a_munic_lbl 20021 `"Cosolapa"', add
label define mx10a_munic_lbl 20022 `"Cosoltepec"', add
label define mx10a_munic_lbl 20023 `"Cuilápam de Guerrero"', add
label define mx10a_munic_lbl 20024 `"Cuyamecalco Villa de Zaragoza"', add
label define mx10a_munic_lbl 20025 `"Chahuites"', add
label define mx10a_munic_lbl 20026 `"Chalcatongo de Hidalgo"', add
label define mx10a_munic_lbl 20027 `"Chiquihuitlán de Benito Juárez"', add
label define mx10a_munic_lbl 20028 `"Heroica Ciudad de Ejutla de Crespo"', add
label define mx10a_munic_lbl 20029 `"Eloxochitlán de Flores Magón"', add
label define mx10a_munic_lbl 20030 `"El Espinal"', add
label define mx10a_munic_lbl 20031 `"Tamazulápam del Espíritu Santo"', add
label define mx10a_munic_lbl 20032 `"Fresnillo de Trujano"', add
label define mx10a_munic_lbl 20033 `"Guadalupe Etla"', add
label define mx10a_munic_lbl 20034 `"Guadalupe de Ramírez"', add
label define mx10a_munic_lbl 20035 `"Guelatao de Juárez"', add
label define mx10a_munic_lbl 20036 `"Guevea de Humboldt"', add
label define mx10a_munic_lbl 20037 `"Mesones Hidalgo"', add
label define mx10a_munic_lbl 20038 `"Villa Hidalgo"', add
label define mx10a_munic_lbl 20039 `"Heroica Ciudad de Huajuapan de León"', add
label define mx10a_munic_lbl 20040 `"Huautepec"', add
label define mx10a_munic_lbl 20041 `"Huautla de Jiménez"', add
label define mx10a_munic_lbl 20042 `"Ixtlán de Juárez"', add
label define mx10a_munic_lbl 20043 `"Heroica Ciudad de Juchitán de Zaragoza"', add
label define mx10a_munic_lbl 20044 `"Loma Bonita"', add
label define mx10a_munic_lbl 20045 `"Magdalena Apasco"', add
label define mx10a_munic_lbl 20046 `"Magdalena Jaltepec"', add
label define mx10a_munic_lbl 20047 `"Santa Magdalena Jicotlán"', add
label define mx10a_munic_lbl 20048 `"Magdalena Mixtepec"', add
label define mx10a_munic_lbl 20049 `"Magdalena Ocotlán"', add
label define mx10a_munic_lbl 20050 `"Magdalena Peñasco"', add
label define mx10a_munic_lbl 20051 `"Magdalena Teitipac"', add
label define mx10a_munic_lbl 20052 `"Magdalena Tequisistlán"', add
label define mx10a_munic_lbl 20053 `"Magdalena Tlacotepec"', add
label define mx10a_munic_lbl 20054 `"Magdalena Zahuatlán"', add
label define mx10a_munic_lbl 20055 `"Mariscala de Juárez"', add
label define mx10a_munic_lbl 20056 `"Mártires de Tacubaya"', add
label define mx10a_munic_lbl 20057 `"Matías Romero Avendaño"', add
label define mx10a_munic_lbl 20058 `"Mazatlán Villa de Flores"', add
label define mx10a_munic_lbl 20059 `"Miahuatlán de Porfirio Díaz"', add
label define mx10a_munic_lbl 20060 `"Mixistlán de la Reforma"', add
label define mx10a_munic_lbl 20061 `"Monjas"', add
label define mx10a_munic_lbl 20062 `"Natividad"', add
label define mx10a_munic_lbl 20063 `"Nazareno Etla"', add
label define mx10a_munic_lbl 20064 `"Nejapa de Madero"', add
label define mx10a_munic_lbl 20065 `"Ixpantepec Nieves"', add
label define mx10a_munic_lbl 20066 `"Santiago Niltepec"', add
label define mx10a_munic_lbl 20067 `"Oaxaca de Juárez"', add
label define mx10a_munic_lbl 20068 `"Ocotlán de Morelos"', add
label define mx10a_munic_lbl 20069 `"La Pe"', add
label define mx10a_munic_lbl 20070 `"Pinotepa de Don Luis"', add
label define mx10a_munic_lbl 20071 `"Pluma Hidalgo"', add
label define mx10a_munic_lbl 20072 `"San José del Progreso"', add
label define mx10a_munic_lbl 20073 `"Putla Villa de Guerrero"', add
label define mx10a_munic_lbl 20074 `"Santa Catarina Quioquitani"', add
label define mx10a_munic_lbl 20075 `"Reforma de Pineda"', add
label define mx10a_munic_lbl 20076 `"La Reforma"', add
label define mx10a_munic_lbl 20077 `"Reyes Etla"', add
label define mx10a_munic_lbl 20078 `"Rojas de Cuauhtémoc"', add
label define mx10a_munic_lbl 20079 `"Salina Cruz"', add
label define mx10a_munic_lbl 20080 `"San Agustín Amatengo"', add
label define mx10a_munic_lbl 20081 `"San Agustín Atenango"', add
label define mx10a_munic_lbl 20082 `"San Agustín Chayuco"', add
label define mx10a_munic_lbl 20083 `"San Agustín de las Juntas"', add
label define mx10a_munic_lbl 20084 `"San Agustín Etla"', add
label define mx10a_munic_lbl 20085 `"San Agustín Loxicha"', add
label define mx10a_munic_lbl 20086 `"San Agustín Tlacotepec"', add
label define mx10a_munic_lbl 20087 `"San Agustín Yatareni"', add
label define mx10a_munic_lbl 20088 `"San Andrés Cabecera Nueva"', add
label define mx10a_munic_lbl 20089 `"San Andrés Dinicuiti"', add
label define mx10a_munic_lbl 20090 `"San Andrés Huaxpaltepec"', add
label define mx10a_munic_lbl 20091 `"San Andrés Huayápam"', add
label define mx10a_munic_lbl 20092 `"San Andrés Ixtlahuaca"', add
label define mx10a_munic_lbl 20093 `"San Andrés Lagunas"', add
label define mx10a_munic_lbl 20094 `"San Andrés Nuxiño"', add
label define mx10a_munic_lbl 20095 `"San Andrés Paxtlán"', add
label define mx10a_munic_lbl 20096 `"San Andrés Sinaxtla"', add
label define mx10a_munic_lbl 20097 `"San Andrés Solaga"', add
label define mx10a_munic_lbl 20098 `"San Andrés Teotilálpam"', add
label define mx10a_munic_lbl 20099 `"San Andrés Tepetlapa"', add
label define mx10a_munic_lbl 20100 `"San Andrés Yaá"', add
label define mx10a_munic_lbl 20101 `"San Andrés Zabache"', add
label define mx10a_munic_lbl 20102 `"San Andrés Zautla"', add
label define mx10a_munic_lbl 20103 `"San Antonino Castillo Velasco"', add
label define mx10a_munic_lbl 20104 `"San Antonino el Alto"', add
label define mx10a_munic_lbl 20105 `"San Antonino Monte Verde"', add
label define mx10a_munic_lbl 20106 `"San Antonio Acutla"', add
label define mx10a_munic_lbl 20107 `"San Antonio de la Cal"', add
label define mx10a_munic_lbl 20108 `"San Antonio Huitepec"', add
label define mx10a_munic_lbl 20109 `"San Antonio Nanahuatípam"', add
label define mx10a_munic_lbl 20110 `"San Antonio Sinicahua"', add
label define mx10a_munic_lbl 20111 `"San Antonio Tepetlapa"', add
label define mx10a_munic_lbl 20112 `"San Baltazar Chichicápam"', add
label define mx10a_munic_lbl 20113 `"San Baltazar Loxicha"', add
label define mx10a_munic_lbl 20114 `"San Baltazar Yatzachi el Bajo"', add
label define mx10a_munic_lbl 20115 `"San Bartolo Coyotepec"', add
label define mx10a_munic_lbl 20116 `"San Bartolomé Ayautla"', add
label define mx10a_munic_lbl 20117 `"San Bartolomé Loxicha"', add
label define mx10a_munic_lbl 20118 `"San Bartolomé Quialana"', add
label define mx10a_munic_lbl 20119 `"San Bartolomé Yucuañe"', add
label define mx10a_munic_lbl 20120 `"San Bartolomé Zoogocho"', add
label define mx10a_munic_lbl 20121 `"San Bartolo Soyaltepec"', add
label define mx10a_munic_lbl 20122 `"San Bartolo Yautepec"', add
label define mx10a_munic_lbl 20123 `"San Bernardo Mixtepec"', add
label define mx10a_munic_lbl 20124 `"San Blas Atempa"', add
label define mx10a_munic_lbl 20125 `"San Carlos Yautepec"', add
label define mx10a_munic_lbl 20126 `"San Cristóbal Amatlán"', add
label define mx10a_munic_lbl 20127 `"San Cristóbal Amoltepec"', add
label define mx10a_munic_lbl 20128 `"San Cristóbal Lachirioag"', add
label define mx10a_munic_lbl 20129 `"San Cristóbal Suchixtlahuaca"', add
label define mx10a_munic_lbl 20130 `"San Dionisio del Mar"', add
label define mx10a_munic_lbl 20131 `"San Dionisio Ocotepec"', add
label define mx10a_munic_lbl 20132 `"San Dionisio Ocotlán"', add
label define mx10a_munic_lbl 20133 `"San Esteban Atatlahuca"', add
label define mx10a_munic_lbl 20134 `"San Felipe Jalapa de Díaz"', add
label define mx10a_munic_lbl 20135 `"San Felipe Tejalápam"', add
label define mx10a_munic_lbl 20136 `"San Felipe Usila"', add
label define mx10a_munic_lbl 20137 `"San Francisco Cahuacuá"', add
label define mx10a_munic_lbl 20138 `"San Francisco Cajonos"', add
label define mx10a_munic_lbl 20139 `"San Francisco Chapulapa"', add
label define mx10a_munic_lbl 20140 `"San Francisco Chindúa"', add
label define mx10a_munic_lbl 20141 `"San Francisco del Mar"', add
label define mx10a_munic_lbl 20142 `"San Francisco Huehuetlán"', add
label define mx10a_munic_lbl 20143 `"San Francisco Ixhuatán"', add
label define mx10a_munic_lbl 20144 `"San Francisco Jaltepetongo"', add
label define mx10a_munic_lbl 20145 `"San Francisco Lachigoló"', add
label define mx10a_munic_lbl 20146 `"San Francisco Logueche"', add
label define mx10a_munic_lbl 20147 `"San Francisco Nuxaño"', add
label define mx10a_munic_lbl 20148 `"San Francisco Ozolotepec"', add
label define mx10a_munic_lbl 20149 `"San Francisco Sola"', add
label define mx10a_munic_lbl 20150 `"San Francisco Telixtlahuaca"', add
label define mx10a_munic_lbl 20151 `"San Francisco Teopan"', add
label define mx10a_munic_lbl 20152 `"San Francisco Tlapancingo"', add
label define mx10a_munic_lbl 20153 `"San Gabriel Mixtepec"', add
label define mx10a_munic_lbl 20154 `"San Ildefonso Amatlán"', add
label define mx10a_munic_lbl 20155 `"San Ildefonso Sola"', add
label define mx10a_munic_lbl 20156 `"San Ildefonso Villa Alta"', add
label define mx10a_munic_lbl 20157 `"San Jacinto Amilpas"', add
label define mx10a_munic_lbl 20158 `"San Jacinto Tlacotepec"', add
label define mx10a_munic_lbl 20159 `"San Jerónimo Coatlán"', add
label define mx10a_munic_lbl 20160 `"San Jerónimo Silacayoapilla"', add
label define mx10a_munic_lbl 20161 `"San Jerónimo Sosola"', add
label define mx10a_munic_lbl 20162 `"San Jerónimo Taviche"', add
label define mx10a_munic_lbl 20163 `"San Jerónimo Tecóatl"', add
label define mx10a_munic_lbl 20164 `"San Jorge Nuchita"', add
label define mx10a_munic_lbl 20165 `"San José Ayuquila"', add
label define mx10a_munic_lbl 20166 `"San José Chiltepec"', add
label define mx10a_munic_lbl 20167 `"San José del Peñasco"', add
label define mx10a_munic_lbl 20168 `"San José Estancia Grande"', add
label define mx10a_munic_lbl 20169 `"San José Independencia"', add
label define mx10a_munic_lbl 20170 `"San José Lachiguiri"', add
label define mx10a_munic_lbl 20171 `"San José Tenango"', add
label define mx10a_munic_lbl 20172 `"San Juan Achiutla"', add
label define mx10a_munic_lbl 20173 `"San Juan Atepec"', add
label define mx10a_munic_lbl 20174 `"Ánimas Trujano"', add
label define mx10a_munic_lbl 20175 `"San Juan Bautista Atatlahuca"', add
label define mx10a_munic_lbl 20176 `"San Juan Bautista Coixtlahuaca"', add
label define mx10a_munic_lbl 20177 `"San Juan Bautista Cuicatlán"', add
label define mx10a_munic_lbl 20178 `"San Juan Bautista Guelache"', add
label define mx10a_munic_lbl 20179 `"San Juan Bautista Jayacatlán"', add
label define mx10a_munic_lbl 20180 `"San Juan Bautista Lo de Soto"', add
label define mx10a_munic_lbl 20181 `"San Juan Bautista Suchitepec"', add
label define mx10a_munic_lbl 20182 `"San Juan Bautista Tlacoatzintepec"', add
label define mx10a_munic_lbl 20183 `"San Juan Bautista Tlachichilco"', add
label define mx10a_munic_lbl 20184 `"San Juan Bautista Tuxtepec"', add
label define mx10a_munic_lbl 20185 `"San Juan Cacahuatepec"', add
label define mx10a_munic_lbl 20186 `"San Juan Cieneguilla"', add
label define mx10a_munic_lbl 20187 `"San Juan Coatzóspam"', add
label define mx10a_munic_lbl 20188 `"San Juan Colorado"', add
label define mx10a_munic_lbl 20189 `"San Juan Comaltepec"', add
label define mx10a_munic_lbl 20190 `"San Juan Cotzocón"', add
label define mx10a_munic_lbl 20191 `"San Juan Chicomezúchil"', add
label define mx10a_munic_lbl 20192 `"San Juan Chilateca"', add
label define mx10a_munic_lbl 20193 `"San Juan del Estado"', add
label define mx10a_munic_lbl 20194 `"San Juan del Río"', add
label define mx10a_munic_lbl 20195 `"San Juan Diuxi"', add
label define mx10a_munic_lbl 20196 `"San Juan Evangelista Analco"', add
label define mx10a_munic_lbl 20197 `"San Juan Guelavía"', add
label define mx10a_munic_lbl 20198 `"San Juan Guichicovi"', add
label define mx10a_munic_lbl 20199 `"San Juan Ihualtepec"', add
label define mx10a_munic_lbl 20200 `"San Juan Juquila Mixes"', add
label define mx10a_munic_lbl 20201 `"San Juan Juquila Vijanos"', add
label define mx10a_munic_lbl 20202 `"San Juan Lachao"', add
label define mx10a_munic_lbl 20203 `"San Juan Lachigalla"', add
label define mx10a_munic_lbl 20204 `"San Juan Lajarcia"', add
label define mx10a_munic_lbl 20205 `"San Juan Lalana"', add
label define mx10a_munic_lbl 20206 `"San Juan de los Cués"', add
label define mx10a_munic_lbl 20207 `"San Juan Mazatlán"', add
label define mx10a_munic_lbl 20208 `"San Juan Mixtepec - Dto. 08"', add
label define mx10a_munic_lbl 20209 `"San Juan Mixtepec - Dto. 26"', add
label define mx10a_munic_lbl 20210 `"San Juan Ñumí"', add
label define mx10a_munic_lbl 20211 `"San Juan Ozolotepec"', add
label define mx10a_munic_lbl 20212 `"San Juan Petlapa"', add
label define mx10a_munic_lbl 20213 `"San Juan Quiahije"', add
label define mx10a_munic_lbl 20214 `"San Juan Quiotepec"', add
label define mx10a_munic_lbl 20215 `"San Juan Sayultepec"', add
label define mx10a_munic_lbl 20216 `"San Juan Tabaá"', add
label define mx10a_munic_lbl 20217 `"San Juan Tamazola"', add
label define mx10a_munic_lbl 20218 `"San Juan Teita"', add
label define mx10a_munic_lbl 20219 `"San Juan Teitipac"', add
label define mx10a_munic_lbl 20220 `"San Juan Tepeuxila"', add
label define mx10a_munic_lbl 20221 `"San Juan Teposcolula"', add
label define mx10a_munic_lbl 20222 `"San Juan Yaeé"', add
label define mx10a_munic_lbl 20223 `"San Juan Yatzona"', add
label define mx10a_munic_lbl 20224 `"San Juan Yucuita"', add
label define mx10a_munic_lbl 20225 `"San Lorenzo"', add
label define mx10a_munic_lbl 20226 `"San Lorenzo Albarradas"', add
label define mx10a_munic_lbl 20227 `"San Lorenzo Cacaotepec"', add
label define mx10a_munic_lbl 20228 `"San Lorenzo Cuaunecuiltitla"', add
label define mx10a_munic_lbl 20229 `"San Lorenzo Texmelúcan"', add
label define mx10a_munic_lbl 20230 `"San Lorenzo Victoria"', add
label define mx10a_munic_lbl 20231 `"San Lucas Camotlán"', add
label define mx10a_munic_lbl 20232 `"San Lucas Ojitlán"', add
label define mx10a_munic_lbl 20233 `"San Lucas Quiaviní"', add
label define mx10a_munic_lbl 20234 `"San Lucas Zoquiápam"', add
label define mx10a_munic_lbl 20235 `"San Luis Amatlán"', add
label define mx10a_munic_lbl 20236 `"San Marcial Ozolotepec"', add
label define mx10a_munic_lbl 20237 `"San Marcos Arteaga"', add
label define mx10a_munic_lbl 20238 `"San Martín de los Cansecos"', add
label define mx10a_munic_lbl 20239 `"San Martín Huamelúlpam"', add
label define mx10a_munic_lbl 20240 `"San Martín Itunyoso"', add
label define mx10a_munic_lbl 20241 `"San Martín Lachilá"', add
label define mx10a_munic_lbl 20242 `"San Martín Peras"', add
label define mx10a_munic_lbl 20243 `"San Martín Tilcajete"', add
label define mx10a_munic_lbl 20244 `"San Martín Toxpalan"', add
label define mx10a_munic_lbl 20245 `"San Martín Zacatepec"', add
label define mx10a_munic_lbl 20246 `"San Mateo Cajonos"', add
label define mx10a_munic_lbl 20247 `"Capulálpam de Méndez"', add
label define mx10a_munic_lbl 20248 `"San Mateo del Mar"', add
label define mx10a_munic_lbl 20249 `"San Mateo Yoloxochitlán"', add
label define mx10a_munic_lbl 20250 `"San Mateo Etlatongo"', add
label define mx10a_munic_lbl 20251 `"San Mateo Nejápam"', add
label define mx10a_munic_lbl 20252 `"San Mateo Peñasco"', add
label define mx10a_munic_lbl 20253 `"San Mateo Piñas"', add
label define mx10a_munic_lbl 20254 `"San Mateo Río Hondo"', add
label define mx10a_munic_lbl 20255 `"San Mateo Sindihui"', add
label define mx10a_munic_lbl 20256 `"San Mateo Tlapiltepec"', add
label define mx10a_munic_lbl 20257 `"San Melchor Betaza"', add
label define mx10a_munic_lbl 20258 `"San Miguel Achiutla"', add
label define mx10a_munic_lbl 20259 `"San Miguel Ahuehuetitlán"', add
label define mx10a_munic_lbl 20260 `"San Miguel Aloápam"', add
label define mx10a_munic_lbl 20261 `"San Miguel Amatitlán"', add
label define mx10a_munic_lbl 20262 `"San Miguel Amatlán"', add
label define mx10a_munic_lbl 20263 `"San Miguel Coatlán"', add
label define mx10a_munic_lbl 20264 `"San Miguel Chicahua"', add
label define mx10a_munic_lbl 20265 `"San Miguel Chimalapa"', add
label define mx10a_munic_lbl 20266 `"San Miguel del Puerto"', add
label define mx10a_munic_lbl 20267 `"San Miguel del Río"', add
label define mx10a_munic_lbl 20268 `"San Miguel Ejutla"', add
label define mx10a_munic_lbl 20269 `"San Miguel el Grande"', add
label define mx10a_munic_lbl 20270 `"San Miguel Huautla"', add
label define mx10a_munic_lbl 20271 `"San Miguel Mixtepec"', add
label define mx10a_munic_lbl 20272 `"San Miguel Panixtlahuaca"', add
label define mx10a_munic_lbl 20273 `"San Miguel Peras"', add
label define mx10a_munic_lbl 20274 `"San Miguel Piedras"', add
label define mx10a_munic_lbl 20275 `"San Miguel Quetzaltepec"', add
label define mx10a_munic_lbl 20276 `"San Miguel Santa Flor"', add
label define mx10a_munic_lbl 20277 `"Villa Sola de Vega"', add
label define mx10a_munic_lbl 20278 `"San Miguel Soyaltepec"', add
label define mx10a_munic_lbl 20279 `"San Miguel Suchixtepec"', add
label define mx10a_munic_lbl 20280 `"Villa Talea de Castro"', add
label define mx10a_munic_lbl 20281 `"San Miguel Tecomatlán"', add
label define mx10a_munic_lbl 20282 `"San Miguel Tenango"', add
label define mx10a_munic_lbl 20283 `"San Miguel Tequixtepec"', add
label define mx10a_munic_lbl 20284 `"San Miguel Tilquiápam"', add
label define mx10a_munic_lbl 20285 `"San Miguel Tlacamama"', add
label define mx10a_munic_lbl 20286 `"San Miguel Tlacotepec"', add
label define mx10a_munic_lbl 20287 `"San Miguel Tulancingo"', add
label define mx10a_munic_lbl 20288 `"San Miguel Yotao"', add
label define mx10a_munic_lbl 20289 `"San Nicolás"', add
label define mx10a_munic_lbl 20290 `"San Nicolás Hidalgo"', add
label define mx10a_munic_lbl 20291 `"San Pablo Coatlán"', add
label define mx10a_munic_lbl 20292 `"San Pablo Cuatro Venados"', add
label define mx10a_munic_lbl 20293 `"San Pablo Etla"', add
label define mx10a_munic_lbl 20294 `"San Pablo Huitzo"', add
label define mx10a_munic_lbl 20295 `"San Pablo Huixtepec"', add
label define mx10a_munic_lbl 20296 `"San Pablo Macuiltianguis"', add
label define mx10a_munic_lbl 20297 `"San Pablo Tijaltepec"', add
label define mx10a_munic_lbl 20298 `"San Pablo Villa de Mitla"', add
label define mx10a_munic_lbl 20299 `"San Pablo Yaganiza"', add
label define mx10a_munic_lbl 20300 `"San Pedro Amuzgos"', add
label define mx10a_munic_lbl 20301 `"San Pedro Apóstol"', add
label define mx10a_munic_lbl 20302 `"San Pedro Atoyac"', add
label define mx10a_munic_lbl 20303 `"San Pedro Cajonos"', add
label define mx10a_munic_lbl 20304 `"San Pedro Coxcaltepec Cántaros"', add
label define mx10a_munic_lbl 20305 `"San Pedro Comitancillo"', add
label define mx10a_munic_lbl 20306 `"San Pedro el Alto"', add
label define mx10a_munic_lbl 20307 `"San Pedro Huamelula"', add
label define mx10a_munic_lbl 20308 `"San Pedro Huilotepec"', add
label define mx10a_munic_lbl 20309 `"San Pedro Ixcatlán"', add
label define mx10a_munic_lbl 20310 `"San Pedro Ixtlahuaca"', add
label define mx10a_munic_lbl 20311 `"San Pedro Jaltepetongo"', add
label define mx10a_munic_lbl 20312 `"San Pedro Jicayán"', add
label define mx10a_munic_lbl 20313 `"San Pedro Jocotipac"', add
label define mx10a_munic_lbl 20314 `"San Pedro Juchatengo"', add
label define mx10a_munic_lbl 20315 `"San Pedro Mártir"', add
label define mx10a_munic_lbl 20316 `"San Pedro Mártir Quiechapa"', add
label define mx10a_munic_lbl 20317 `"San Pedro Mártir Yucuxaco"', add
label define mx10a_munic_lbl 20318 `"San Pedro Mixtepec - Dto. 22"', add
label define mx10a_munic_lbl 20319 `"San Pedro Mixtepec - Dto. 26"', add
label define mx10a_munic_lbl 20320 `"San Pedro Molinos"', add
label define mx10a_munic_lbl 20321 `"San Pedro Nopala"', add
label define mx10a_munic_lbl 20322 `"San Pedro Ocopetatillo"', add
label define mx10a_munic_lbl 20323 `"San Pedro Ocotepec"', add
label define mx10a_munic_lbl 20324 `"San Pedro Pochutla"', add
label define mx10a_munic_lbl 20325 `"San Pedro Quiatoni"', add
label define mx10a_munic_lbl 20326 `"San Pedro Sochiápam"', add
label define mx10a_munic_lbl 20327 `"San Pedro Tapanatepec"', add
label define mx10a_munic_lbl 20328 `"San Pedro Taviche"', add
label define mx10a_munic_lbl 20329 `"San Pedro Teozacoalco"', add
label define mx10a_munic_lbl 20330 `"San Pedro Teutila"', add
label define mx10a_munic_lbl 20331 `"San Pedro Tidaá"', add
label define mx10a_munic_lbl 20332 `"San Pedro Topiltepec"', add
label define mx10a_munic_lbl 20333 `"San Pedro Totolápam"', add
label define mx10a_munic_lbl 20334 `"Villa de Tututepec de Melchor Ocampo"', add
label define mx10a_munic_lbl 20335 `"San Pedro Yaneri"', add
label define mx10a_munic_lbl 20336 `"San Pedro Yólox"', add
label define mx10a_munic_lbl 20337 `"San Pedro y San Pablo Ayutla"', add
label define mx10a_munic_lbl 20338 `"Villa de Etla"', add
label define mx10a_munic_lbl 20339 `"San Pedro y San Pablo Teposcolula"', add
label define mx10a_munic_lbl 20340 `"San Pedro y San Pablo Tequixtepec"', add
label define mx10a_munic_lbl 20341 `"San Pedro Yucunama"', add
label define mx10a_munic_lbl 20342 `"San Raymundo Jalpan"', add
label define mx10a_munic_lbl 20343 `"San Sebastián Abasolo"', add
label define mx10a_munic_lbl 20344 `"San Sebastián Coatlán"', add
label define mx10a_munic_lbl 20345 `"San Sebastián Ixcapa"', add
label define mx10a_munic_lbl 20346 `"San Sebastián Nicananduta"', add
label define mx10a_munic_lbl 20347 `"San Sebastián Río Hondo"', add
label define mx10a_munic_lbl 20348 `"San Sebastián Tecomaxtlahuaca"', add
label define mx10a_munic_lbl 20349 `"San Sebastián Teitipac"', add
label define mx10a_munic_lbl 20350 `"San Sebastián Tutla"', add
label define mx10a_munic_lbl 20351 `"San Simón Almolongas"', add
label define mx10a_munic_lbl 20352 `"San Simón Zahuatlán"', add
label define mx10a_munic_lbl 20353 `"Santa Ana"', add
label define mx10a_munic_lbl 20354 `"Santa Ana Ateixtlahuaca"', add
label define mx10a_munic_lbl 20355 `"Santa Ana Cuauhtémoc"', add
label define mx10a_munic_lbl 20356 `"Santa Ana del Valle"', add
label define mx10a_munic_lbl 20357 `"Santa Ana Tavela"', add
label define mx10a_munic_lbl 20358 `"Santa Ana Tlapacoyan"', add
label define mx10a_munic_lbl 20359 `"Santa Ana Yareni"', add
label define mx10a_munic_lbl 20360 `"Santa Ana Zegache"', add
label define mx10a_munic_lbl 20361 `"Santa Catalina Quierí"', add
label define mx10a_munic_lbl 20362 `"Santa Catarina Cuixtla"', add
label define mx10a_munic_lbl 20363 `"Santa Catarina Ixtepeji"', add
label define mx10a_munic_lbl 20364 `"Santa Catarina Juquila"', add
label define mx10a_munic_lbl 20365 `"Santa Catarina Lachatao"', add
label define mx10a_munic_lbl 20366 `"Santa Catarina Loxicha"', add
label define mx10a_munic_lbl 20367 `"Santa Catarina Mechoacán"', add
label define mx10a_munic_lbl 20368 `"Santa Catarina Minas"', add
label define mx10a_munic_lbl 20369 `"Santa Catarina Quiané"', add
label define mx10a_munic_lbl 20370 `"Santa Catarina Tayata"', add
label define mx10a_munic_lbl 20371 `"Santa Catarina Ticuá"', add
label define mx10a_munic_lbl 20372 `"Santa Catarina Yosonotú"', add
label define mx10a_munic_lbl 20373 `"Santa Catarina Zapoquila"', add
label define mx10a_munic_lbl 20374 `"Santa Cruz Acatepec"', add
label define mx10a_munic_lbl 20375 `"Santa Cruz Amilpas"', add
label define mx10a_munic_lbl 20376 `"Santa Cruz de Bravo"', add
label define mx10a_munic_lbl 20377 `"Santa Cruz Itundujia"', add
label define mx10a_munic_lbl 20378 `"Santa Cruz Mixtepec"', add
label define mx10a_munic_lbl 20379 `"Santa Cruz Nundaco"', add
label define mx10a_munic_lbl 20380 `"Santa Cruz Papalutla"', add
label define mx10a_munic_lbl 20381 `"Santa Cruz Tacache de Mina"', add
label define mx10a_munic_lbl 20382 `"Santa Cruz Tacahua"', add
label define mx10a_munic_lbl 20383 `"Santa Cruz Tayata"', add
label define mx10a_munic_lbl 20384 `"Santa Cruz Xitla"', add
label define mx10a_munic_lbl 20385 `"Santa Cruz Xoxocotlán"', add
label define mx10a_munic_lbl 20386 `"Santa Cruz Zenzontepec"', add
label define mx10a_munic_lbl 20387 `"Santa Gertrudis"', add
label define mx10a_munic_lbl 20388 `"Santa Inés del Monte"', add
label define mx10a_munic_lbl 20389 `"Santa Inés Yatzeche"', add
label define mx10a_munic_lbl 20390 `"Santa Lucía del Camino"', add
label define mx10a_munic_lbl 20391 `"Santa Lucía Miahuatlán"', add
label define mx10a_munic_lbl 20392 `"Santa Lucía Monteverde"', add
label define mx10a_munic_lbl 20393 `"Santa Lucía Ocotlán"', add
label define mx10a_munic_lbl 20394 `"Santa María Alotepec"', add
label define mx10a_munic_lbl 20395 `"Santa María Apazco"', add
label define mx10a_munic_lbl 20396 `"Santa María la Asunción"', add
label define mx10a_munic_lbl 20397 `"Heroica Ciudad de Tlaxiaco"', add
label define mx10a_munic_lbl 20398 `"Ayoquezco de Aldama"', add
label define mx10a_munic_lbl 20399 `"Santa María Atzompa"', add
label define mx10a_munic_lbl 20400 `"Santa María Camotlán"', add
label define mx10a_munic_lbl 20401 `"Santa María Colotepec"', add
label define mx10a_munic_lbl 20402 `"Santa María Cortijo"', add
label define mx10a_munic_lbl 20403 `"Santa María Coyotepec"', add
label define mx10a_munic_lbl 20404 `"Santa María Chachoápam"', add
label define mx10a_munic_lbl 20405 `"Villa de Chilapa de Díaz"', add
label define mx10a_munic_lbl 20406 `"Santa María Chilchotla"', add
label define mx10a_munic_lbl 20407 `"Santa María Chimalapa"', add
label define mx10a_munic_lbl 20408 `"Santa María del Rosario"', add
label define mx10a_munic_lbl 20409 `"Santa María del Tule"', add
label define mx10a_munic_lbl 20410 `"Santa María Ecatepec"', add
label define mx10a_munic_lbl 20411 `"Santa María Guelacé"', add
label define mx10a_munic_lbl 20412 `"Santa María Guienagati"', add
label define mx10a_munic_lbl 20413 `"Santa María Huatulco"', add
label define mx10a_munic_lbl 20414 `"Santa María Huazolotitlán"', add
label define mx10a_munic_lbl 20415 `"Santa María Ipalapa"', add
label define mx10a_munic_lbl 20416 `"Santa María Ixcatlán"', add
label define mx10a_munic_lbl 20417 `"Santa María Jacatepec"', add
label define mx10a_munic_lbl 20418 `"Santa María Jalapa del Marqués"', add
label define mx10a_munic_lbl 20419 `"Santa María Jaltianguis"', add
label define mx10a_munic_lbl 20420 `"Santa María Lachixío"', add
label define mx10a_munic_lbl 20421 `"Santa María Mixtequilla"', add
label define mx10a_munic_lbl 20422 `"Santa María Nativitas"', add
label define mx10a_munic_lbl 20423 `"Santa María Nduayaco"', add
label define mx10a_munic_lbl 20424 `"Santa María Ozolotepec"', add
label define mx10a_munic_lbl 20425 `"Santa María Pápalo"', add
label define mx10a_munic_lbl 20426 `"Santa María Peñoles"', add
label define mx10a_munic_lbl 20427 `"Santa María Petapa"', add
label define mx10a_munic_lbl 20428 `"Santa María Quiegolani"', add
label define mx10a_munic_lbl 20429 `"Santa María Sola"', add
label define mx10a_munic_lbl 20430 `"Santa María Tataltepec"', add
label define mx10a_munic_lbl 20431 `"Santa María Tecomavaca"', add
label define mx10a_munic_lbl 20432 `"Santa María Temaxcalapa"', add
label define mx10a_munic_lbl 20433 `"Santa María Temaxcaltepec"', add
label define mx10a_munic_lbl 20434 `"Santa María Teopoxco"', add
label define mx10a_munic_lbl 20435 `"Santa María Tepantlali"', add
label define mx10a_munic_lbl 20436 `"Santa María Texcatitlán"', add
label define mx10a_munic_lbl 20437 `"Santa María Tlahuitoltepec"', add
label define mx10a_munic_lbl 20438 `"Santa María Tlalixtac"', add
label define mx10a_munic_lbl 20439 `"Santa María Tonameca"', add
label define mx10a_munic_lbl 20440 `"Santa María Totolapilla"', add
label define mx10a_munic_lbl 20441 `"Santa María Xadani"', add
label define mx10a_munic_lbl 20442 `"Santa María Yalina"', add
label define mx10a_munic_lbl 20443 `"Santa María Yavesía"', add
label define mx10a_munic_lbl 20444 `"Santa María Yolotepec"', add
label define mx10a_munic_lbl 20445 `"Santa María Yosoyúa"', add
label define mx10a_munic_lbl 20446 `"Santa María Yucuhiti"', add
label define mx10a_munic_lbl 20447 `"Santa María Zacatepec"', add
label define mx10a_munic_lbl 20448 `"Santa María Zaniza"', add
label define mx10a_munic_lbl 20449 `"Santa María Zoquitlán"', add
label define mx10a_munic_lbl 20450 `"Santiago Amoltepec"', add
label define mx10a_munic_lbl 20451 `"Santiago Apoala"', add
label define mx10a_munic_lbl 20452 `"Santiago Apóstol"', add
label define mx10a_munic_lbl 20453 `"Santiago Astata"', add
label define mx10a_munic_lbl 20454 `"Santiago Atitlán"', add
label define mx10a_munic_lbl 20455 `"Santiago Ayuquililla"', add
label define mx10a_munic_lbl 20456 `"Santiago Cacaloxtepec"', add
label define mx10a_munic_lbl 20457 `"Santiago Camotlán"', add
label define mx10a_munic_lbl 20458 `"Santiago Comaltepec"', add
label define mx10a_munic_lbl 20459 `"Santiago Chazumba"', add
label define mx10a_munic_lbl 20460 `"Santiago Choápam"', add
label define mx10a_munic_lbl 20461 `"Santiago del Río"', add
label define mx10a_munic_lbl 20462 `"Santiago Huajolotitlán"', add
label define mx10a_munic_lbl 20463 `"Santiago Huauclilla"', add
label define mx10a_munic_lbl 20464 `"Santiago Ihuitlán Plumas"', add
label define mx10a_munic_lbl 20465 `"Santiago Ixcuintepec"', add
label define mx10a_munic_lbl 20466 `"Santiago Ixtayutla"', add
label define mx10a_munic_lbl 20467 `"Santiago Jamiltepec"', add
label define mx10a_munic_lbl 20468 `"Santiago Jocotepec"', add
label define mx10a_munic_lbl 20469 `"Santiago Juxtlahuaca"', add
label define mx10a_munic_lbl 20470 `"Santiago Lachiguiri"', add
label define mx10a_munic_lbl 20471 `"Santiago Lalopa"', add
label define mx10a_munic_lbl 20472 `"Santiago Laollaga"', add
label define mx10a_munic_lbl 20473 `"Santiago Laxopa"', add
label define mx10a_munic_lbl 20474 `"Santiago Llano Grande"', add
label define mx10a_munic_lbl 20475 `"Santiago Matatlán"', add
label define mx10a_munic_lbl 20476 `"Santiago Miltepec"', add
label define mx10a_munic_lbl 20477 `"Santiago Minas"', add
label define mx10a_munic_lbl 20478 `"Santiago Nacaltepec"', add
label define mx10a_munic_lbl 20479 `"Santiago Nejapilla"', add
label define mx10a_munic_lbl 20480 `"Santiago Nundiche"', add
label define mx10a_munic_lbl 20481 `"Santiago Nuyoó"', add
label define mx10a_munic_lbl 20482 `"Santiago Pinotepa Nacional"', add
label define mx10a_munic_lbl 20483 `"Santiago Suchilquitongo"', add
label define mx10a_munic_lbl 20484 `"Santiago Tamazola"', add
label define mx10a_munic_lbl 20485 `"Santiago Tapextla"', add
label define mx10a_munic_lbl 20486 `"Villa Tejúpam de la Unión"', add
label define mx10a_munic_lbl 20487 `"Santiago Tenango"', add
label define mx10a_munic_lbl 20488 `"Santiago Tepetlapa"', add
label define mx10a_munic_lbl 20489 `"Santiago Tetepec"', add
label define mx10a_munic_lbl 20490 `"Santiago Texcalcingo"', add
label define mx10a_munic_lbl 20491 `"Santiago Textitlán"', add
label define mx10a_munic_lbl 20492 `"Santiago Tilantongo"', add
label define mx10a_munic_lbl 20493 `"Santiago Tillo"', add
label define mx10a_munic_lbl 20494 `"Santiago Tlazoyaltepec"', add
label define mx10a_munic_lbl 20495 `"Santiago Xanica"', add
label define mx10a_munic_lbl 20496 `"Santiago Xiacuí"', add
label define mx10a_munic_lbl 20497 `"Santiago Yaitepec"', add
label define mx10a_munic_lbl 20498 `"Santiago Yaveo"', add
label define mx10a_munic_lbl 20499 `"Santiago Yolomécatl"', add
label define mx10a_munic_lbl 20500 `"Santiago Yosondúa"', add
label define mx10a_munic_lbl 20501 `"Santiago Yucuyachi"', add
label define mx10a_munic_lbl 20502 `"Santiago Zacatepec"', add
label define mx10a_munic_lbl 20503 `"Santiago Zoochila"', add
label define mx10a_munic_lbl 20504 `"Nuevo Zoquiápam"', add
label define mx10a_munic_lbl 20505 `"Santo Domingo Ingenio"', add
label define mx10a_munic_lbl 20506 `"Santo Domingo Albarradas"', add
label define mx10a_munic_lbl 20507 `"Santo Domingo Armenta"', add
label define mx10a_munic_lbl 20508 `"Santo Domingo Chihuitán"', add
label define mx10a_munic_lbl 20509 `"Santo Domingo de Morelos"', add
label define mx10a_munic_lbl 20510 `"Santo Domingo Ixcatlán"', add
label define mx10a_munic_lbl 20511 `"Santo Domingo Nuxaá"', add
label define mx10a_munic_lbl 20512 `"Santo Domingo Ozolotepec"', add
label define mx10a_munic_lbl 20513 `"Santo Domingo Petapa"', add
label define mx10a_munic_lbl 20514 `"Santo Domingo Roayaga"', add
label define mx10a_munic_lbl 20515 `"Santo Domingo Tehuantepec"', add
label define mx10a_munic_lbl 20516 `"Santo Domingo Teojomulco"', add
label define mx10a_munic_lbl 20517 `"Santo Domingo Tepuxtepec"', add
label define mx10a_munic_lbl 20518 `"Santo Domingo Tlatayápam"', add
label define mx10a_munic_lbl 20519 `"Santo Domingo Tomaltepec"', add
label define mx10a_munic_lbl 20520 `"Santo Domingo Tonalá"', add
label define mx10a_munic_lbl 20521 `"Santo Domingo Tonaltepec"', add
label define mx10a_munic_lbl 20522 `"Santo Domingo Xagacía"', add
label define mx10a_munic_lbl 20523 `"Santo Domingo Yanhuitlán"', add
label define mx10a_munic_lbl 20524 `"Santo Domingo Yodohino"', add
label define mx10a_munic_lbl 20525 `"Santo Domingo Zanatepec"', add
label define mx10a_munic_lbl 20526 `"Santos Reyes Nopala"', add
label define mx10a_munic_lbl 20527 `"Santos Reyes Pápalo"', add
label define mx10a_munic_lbl 20528 `"Santos Reyes Tepejillo"', add
label define mx10a_munic_lbl 20529 `"Santos Reyes Yucuná"', add
label define mx10a_munic_lbl 20530 `"Santo Tomás Jalieza"', add
label define mx10a_munic_lbl 20531 `"Santo Tomás Mazaltepec"', add
label define mx10a_munic_lbl 20532 `"Santo Tomás Ocotepec"', add
label define mx10a_munic_lbl 20533 `"Santo Tomás Tamazulapan"', add
label define mx10a_munic_lbl 20534 `"San Vicente Coatlán"', add
label define mx10a_munic_lbl 20535 `"San Vicente Lachixío"', add
label define mx10a_munic_lbl 20536 `"San Vicente Nuñú"', add
label define mx10a_munic_lbl 20537 `"Silacayoápam"', add
label define mx10a_munic_lbl 20538 `"Sitio de Xitlapehua"', add
label define mx10a_munic_lbl 20539 `"Soledad Etla"', add
label define mx10a_munic_lbl 20540 `"Villa de Tamazulápam del Progreso"', add
label define mx10a_munic_lbl 20541 `"Tanetze de Zaragoza"', add
label define mx10a_munic_lbl 20542 `"Taniche"', add
label define mx10a_munic_lbl 20543 `"Tataltepec de Valdés"', add
label define mx10a_munic_lbl 20544 `"Teococuilco de Marcos Pérez"', add
label define mx10a_munic_lbl 20545 `"Teotitlán de Flores Magón"', add
label define mx10a_munic_lbl 20546 `"Teotitlán del Valle"', add
label define mx10a_munic_lbl 20547 `"Teotongo"', add
label define mx10a_munic_lbl 20548 `"Tepelmeme Villa de Morelos"', add
label define mx10a_munic_lbl 20549 `"Tezoatlán de Segura y Luna"', add
label define mx10a_munic_lbl 20550 `"San Jerónimo Tlacochahuaya"', add
label define mx10a_munic_lbl 20551 `"Tlacolula de Matamoros"', add
label define mx10a_munic_lbl 20552 `"Tlacotepec Plumas"', add
label define mx10a_munic_lbl 20553 `"Tlalixtac de Cabrera"', add
label define mx10a_munic_lbl 20554 `"Totontepec Villa de Morelos"', add
label define mx10a_munic_lbl 20555 `"Trinidad Zaachila"', add
label define mx10a_munic_lbl 20556 `"La Trinidad Vista Hermosa"', add
label define mx10a_munic_lbl 20557 `"Unión Hidalgo"', add
label define mx10a_munic_lbl 20558 `"Valerio Trujano"', add
label define mx10a_munic_lbl 20559 `"San Juan Bautista Valle Nacional"', add
label define mx10a_munic_lbl 20560 `"Villa Díaz Ordaz"', add
label define mx10a_munic_lbl 20561 `"Yaxe"', add
label define mx10a_munic_lbl 20562 `"Magdalena Yodocono de Porfirio Díaz"', add
label define mx10a_munic_lbl 20563 `"Yogana"', add
label define mx10a_munic_lbl 20564 `"Yutanduchi de Guerrero"', add
label define mx10a_munic_lbl 20565 `"Villa de Zaachila"', add
label define mx10a_munic_lbl 20566 `"San Mateo Yucutindó"', add
label define mx10a_munic_lbl 20567 `"Zapotitlán Lagunas"', add
label define mx10a_munic_lbl 20568 `"Zapotitlán Palmas"', add
label define mx10a_munic_lbl 20569 `"Santa Inés de Zaragoza"', add
label define mx10a_munic_lbl 20570 `"Zimatlán de Álvarez"', add
label define mx10a_munic_lbl 21001 `"Acajete"', add
label define mx10a_munic_lbl 21002 `"Acateno"', add
label define mx10a_munic_lbl 21003 `"Acatlán"', add
label define mx10a_munic_lbl 21004 `"Acatzingo"', add
label define mx10a_munic_lbl 21005 `"Acteopan"', add
label define mx10a_munic_lbl 21006 `"Ahuacatlán"', add
label define mx10a_munic_lbl 21007 `"Ahuatlán"', add
label define mx10a_munic_lbl 21008 `"Ahuazotepec"', add
label define mx10a_munic_lbl 21009 `"Ahuehuetitla"', add
label define mx10a_munic_lbl 21010 `"Ajalpan"', add
label define mx10a_munic_lbl 21011 `"Albino Zertuche"', add
label define mx10a_munic_lbl 21012 `"Aljojuca"', add
label define mx10a_munic_lbl 21013 `"Altepexi"', add
label define mx10a_munic_lbl 21014 `"Amixtlán"', add
label define mx10a_munic_lbl 21015 `"Amozoc"', add
label define mx10a_munic_lbl 21016 `"Aquixtla"', add
label define mx10a_munic_lbl 21017 `"Atempan"', add
label define mx10a_munic_lbl 21018 `"Atexcal"', add
label define mx10a_munic_lbl 21019 `"Atlixco"', add
label define mx10a_munic_lbl 21020 `"Atoyatempan"', add
label define mx10a_munic_lbl 21021 `"Atzala"', add
label define mx10a_munic_lbl 21022 `"Atzitzihuacán"', add
label define mx10a_munic_lbl 21023 `"Atzitzintla"', add
label define mx10a_munic_lbl 21024 `"Axutla"', add
label define mx10a_munic_lbl 21025 `"Ayotoxco de Guerrero"', add
label define mx10a_munic_lbl 21026 `"Calpan"', add
label define mx10a_munic_lbl 21027 `"Caltepec"', add
label define mx10a_munic_lbl 21028 `"Camocuautla"', add
label define mx10a_munic_lbl 21029 `"Caxhuacan"', add
label define mx10a_munic_lbl 21030 `"Coatepec"', add
label define mx10a_munic_lbl 21031 `"Coatzingo"', add
label define mx10a_munic_lbl 21032 `"Cohetzala"', add
label define mx10a_munic_lbl 21033 `"Cohuecan"', add
label define mx10a_munic_lbl 21034 `"Coronango"', add
label define mx10a_munic_lbl 21035 `"Coxcatlán"', add
label define mx10a_munic_lbl 21036 `"Coyomeapan"', add
label define mx10a_munic_lbl 21037 `"Coyotepec"', add
label define mx10a_munic_lbl 21038 `"Cuapiaxtla de Madero"', add
label define mx10a_munic_lbl 21039 `"Cuautempan"', add
label define mx10a_munic_lbl 21040 `"Cuautinchán"', add
label define mx10a_munic_lbl 21041 `"Cuautlancingo"', add
label define mx10a_munic_lbl 21042 `"Cuayuca de Andrade"', add
label define mx10a_munic_lbl 21043 `"Cuetzalan del Progreso"', add
label define mx10a_munic_lbl 21044 `"Cuyoaco"', add
label define mx10a_munic_lbl 21045 `"Chalchicomula de Sesma"', add
label define mx10a_munic_lbl 21046 `"Chapulco"', add
label define mx10a_munic_lbl 21047 `"Chiautla"', add
label define mx10a_munic_lbl 21048 `"Chiautzingo"', add
label define mx10a_munic_lbl 21049 `"Chiconcuautla"', add
label define mx10a_munic_lbl 21050 `"Chichiquila"', add
label define mx10a_munic_lbl 21051 `"Chietla"', add
label define mx10a_munic_lbl 21052 `"Chigmecatitlán"', add
label define mx10a_munic_lbl 21053 `"Chignahuapan"', add
label define mx10a_munic_lbl 21054 `"Chignautla"', add
label define mx10a_munic_lbl 21055 `"Chila"', add
label define mx10a_munic_lbl 21056 `"Chila de la Sal"', add
label define mx10a_munic_lbl 21057 `"Honey"', add
label define mx10a_munic_lbl 21058 `"Chilchotla"', add
label define mx10a_munic_lbl 21059 `"Chinantla"', add
label define mx10a_munic_lbl 21060 `"Domingo Arenas"', add
label define mx10a_munic_lbl 21061 `"Eloxochitlán"', add
label define mx10a_munic_lbl 21062 `"Epatlán"', add
label define mx10a_munic_lbl 21063 `"Esperanza"', add
label define mx10a_munic_lbl 21064 `"Francisco Z. Mena"', add
label define mx10a_munic_lbl 21065 `"General Felipe Ángeles"', add
label define mx10a_munic_lbl 21066 `"Guadalupe"', add
label define mx10a_munic_lbl 21067 `"Guadalupe Victoria"', add
label define mx10a_munic_lbl 21068 `"Hermenegildo Galeana"', add
label define mx10a_munic_lbl 21069 `"Huaquechula"', add
label define mx10a_munic_lbl 21070 `"Huatlatlauca"', add
label define mx10a_munic_lbl 21071 `"Huauchinango"', add
label define mx10a_munic_lbl 21072 `"Huehuetla"', add
label define mx10a_munic_lbl 21073 `"Huehuetlán el Chico"', add
label define mx10a_munic_lbl 21074 `"Huejotzingo"', add
label define mx10a_munic_lbl 21075 `"Hueyapan"', add
label define mx10a_munic_lbl 21076 `"Hueytamalco"', add
label define mx10a_munic_lbl 21077 `"Hueytlalpan"', add
label define mx10a_munic_lbl 21078 `"Huitzilan de Serdán"', add
label define mx10a_munic_lbl 21079 `"Huitziltepec"', add
label define mx10a_munic_lbl 21080 `"Atlequizayan"', add
label define mx10a_munic_lbl 21081 `"Ixcamilpa de Guerrero"', add
label define mx10a_munic_lbl 21082 `"Ixcaquixtla"', add
label define mx10a_munic_lbl 21083 `"Ixtacamaxtitlán"', add
label define mx10a_munic_lbl 21084 `"Ixtepec"', add
label define mx10a_munic_lbl 21085 `"Izúcar de Matamoros"', add
label define mx10a_munic_lbl 21086 `"Jalpan"', add
label define mx10a_munic_lbl 21087 `"Jolalpan"', add
label define mx10a_munic_lbl 21088 `"Jonotla"', add
label define mx10a_munic_lbl 21089 `"Jopala"', add
label define mx10a_munic_lbl 21090 `"Juan C. Bonilla"', add
label define mx10a_munic_lbl 21091 `"Juan Galindo"', add
label define mx10a_munic_lbl 21092 `"Juan N. Méndez"', add
label define mx10a_munic_lbl 21093 `"Lafragua"', add
label define mx10a_munic_lbl 21094 `"Libres"', add
label define mx10a_munic_lbl 21095 `"La Magdalena Tlatlauquitepec"', add
label define mx10a_munic_lbl 21096 `"Mazapiltepec de Juárez"', add
label define mx10a_munic_lbl 21097 `"Mixtla"', add
label define mx10a_munic_lbl 21098 `"Molcaxac"', add
label define mx10a_munic_lbl 21099 `"Cañada Morelos"', add
label define mx10a_munic_lbl 21100 `"Naupan"', add
label define mx10a_munic_lbl 21101 `"Nauzontla"', add
label define mx10a_munic_lbl 21102 `"Nealtican"', add
label define mx10a_munic_lbl 21103 `"Nicolás Bravo"', add
label define mx10a_munic_lbl 21104 `"Nopalucan"', add
label define mx10a_munic_lbl 21105 `"Ocotepec"', add
label define mx10a_munic_lbl 21106 `"Ocoyucan"', add
label define mx10a_munic_lbl 21107 `"Olintla"', add
label define mx10a_munic_lbl 21108 `"Oriental"', add
label define mx10a_munic_lbl 21109 `"Pahuatlán"', add
label define mx10a_munic_lbl 21110 `"Palmar de Bravo"', add
label define mx10a_munic_lbl 21111 `"Pantepec"', add
label define mx10a_munic_lbl 21112 `"Petlalcingo"', add
label define mx10a_munic_lbl 21113 `"Piaxtla"', add
label define mx10a_munic_lbl 21114 `"Puebla"', add
label define mx10a_munic_lbl 21115 `"Quecholac"', add
label define mx10a_munic_lbl 21116 `"Quimixtlán"', add
label define mx10a_munic_lbl 21117 `"Rafael Lara Grajales"', add
label define mx10a_munic_lbl 21118 `"Los Reyes de Juárez"', add
label define mx10a_munic_lbl 21119 `"San Andrés Cholula"', add
label define mx10a_munic_lbl 21120 `"San Antonio Cañada"', add
label define mx10a_munic_lbl 21121 `"San Diego la Mesa Tochimiltzingo"', add
label define mx10a_munic_lbl 21122 `"San Felipe Teotlalcingo"', add
label define mx10a_munic_lbl 21123 `"San Felipe Tepatlán"', add
label define mx10a_munic_lbl 21124 `"San Gabriel Chilac"', add
label define mx10a_munic_lbl 21125 `"San Gregorio Atzompa"', add
label define mx10a_munic_lbl 21126 `"San Jerónimo Tecuanipan"', add
label define mx10a_munic_lbl 21127 `"San Jerónimo Xayacatlán"', add
label define mx10a_munic_lbl 21128 `"San José Chiapa"', add
label define mx10a_munic_lbl 21129 `"San José Miahuatlán"', add
label define mx10a_munic_lbl 21130 `"San Juan Atenco"', add
label define mx10a_munic_lbl 21131 `"San Juan Atzompa"', add
label define mx10a_munic_lbl 21132 `"San Martín Texmelucan"', add
label define mx10a_munic_lbl 21133 `"San Martín Totoltepec"', add
label define mx10a_munic_lbl 21134 `"San Matías Tlalancaleca"', add
label define mx10a_munic_lbl 21135 `"San Miguel Ixitlán"', add
label define mx10a_munic_lbl 21136 `"San Miguel Xoxtla"', add
label define mx10a_munic_lbl 21137 `"San Nicolás Buenos Aires"', add
label define mx10a_munic_lbl 21138 `"San Nicolás de los Ranchos"', add
label define mx10a_munic_lbl 21139 `"San Pablo Anicano"', add
label define mx10a_munic_lbl 21140 `"San Pedro Cholula"', add
label define mx10a_munic_lbl 21141 `"San Pedro Yeloixtlahuaca"', add
label define mx10a_munic_lbl 21142 `"San Salvador el Seco"', add
label define mx10a_munic_lbl 21143 `"San Salvador el Verde"', add
label define mx10a_munic_lbl 21144 `"San Salvador Huixcolotla"', add
label define mx10a_munic_lbl 21145 `"San Sebastián Tlacotepec"', add
label define mx10a_munic_lbl 21146 `"Santa Catarina Tlaltempan"', add
label define mx10a_munic_lbl 21147 `"Santa Inés Ahuatempan"', add
label define mx10a_munic_lbl 21148 `"Santa Isabel Cholula"', add
label define mx10a_munic_lbl 21149 `"Santiago Miahuatlán"', add
label define mx10a_munic_lbl 21150 `"Huehuetlán el Grande"', add
label define mx10a_munic_lbl 21151 `"Santo Tomás Hueyotlipan"', add
label define mx10a_munic_lbl 21152 `"Soltepec"', add
label define mx10a_munic_lbl 21153 `"Tecali de Herrera"', add
label define mx10a_munic_lbl 21154 `"Tecamachalco"', add
label define mx10a_munic_lbl 21155 `"Tecomatlán"', add
label define mx10a_munic_lbl 21156 `"Tehuacán"', add
label define mx10a_munic_lbl 21157 `"Tehuitzingo"', add
label define mx10a_munic_lbl 21158 `"Tenampulco"', add
label define mx10a_munic_lbl 21159 `"Teopantlán"', add
label define mx10a_munic_lbl 21160 `"Teotlalco"', add
label define mx10a_munic_lbl 21161 `"Tepanco de López"', add
label define mx10a_munic_lbl 21162 `"Tepango de Rodríguez"', add
label define mx10a_munic_lbl 21163 `"Tepatlaxco de Hidalgo"', add
label define mx10a_munic_lbl 21164 `"Tepeaca"', add
label define mx10a_munic_lbl 21165 `"Tepemaxalco"', add
label define mx10a_munic_lbl 21166 `"Tepeojuma"', add
label define mx10a_munic_lbl 21167 `"Tepetzintla"', add
label define mx10a_munic_lbl 21168 `"Tepexco"', add
label define mx10a_munic_lbl 21169 `"Tepexi de Rodríguez"', add
label define mx10a_munic_lbl 21170 `"Tepeyahualco"', add
label define mx10a_munic_lbl 21171 `"Tepeyahualco de Cuauhtémoc"', add
label define mx10a_munic_lbl 21172 `"Tetela de Ocampo"', add
label define mx10a_munic_lbl 21173 `"Teteles de Avila Castillo"', add
label define mx10a_munic_lbl 21174 `"Teziutlán"', add
label define mx10a_munic_lbl 21175 `"Tianguismanalco"', add
label define mx10a_munic_lbl 21176 `"Tilapa"', add
label define mx10a_munic_lbl 21177 `"Tlacotepec de Benito Juárez"', add
label define mx10a_munic_lbl 21178 `"Tlacuilotepec"', add
label define mx10a_munic_lbl 21179 `"Tlachichuca"', add
label define mx10a_munic_lbl 21180 `"Tlahuapan"', add
label define mx10a_munic_lbl 21181 `"Tlaltenango"', add
label define mx10a_munic_lbl 21182 `"Tlanepantla"', add
label define mx10a_munic_lbl 21183 `"Tlaola"', add
label define mx10a_munic_lbl 21184 `"Tlapacoya"', add
label define mx10a_munic_lbl 21185 `"Tlapanalá"', add
label define mx10a_munic_lbl 21186 `"Tlatlauquitepec"', add
label define mx10a_munic_lbl 21187 `"Tlaxco"', add
label define mx10a_munic_lbl 21188 `"Tochimilco"', add
label define mx10a_munic_lbl 21189 `"Tochtepec"', add
label define mx10a_munic_lbl 21190 `"Totoltepec de Guerrero"', add
label define mx10a_munic_lbl 21191 `"Tulcingo"', add
label define mx10a_munic_lbl 21192 `"Tuzamapan de Galeana"', add
label define mx10a_munic_lbl 21193 `"Tzicatlacoyan"', add
label define mx10a_munic_lbl 21194 `"Venustiano Carranza"', add
label define mx10a_munic_lbl 21195 `"Vicente Guerrero"', add
label define mx10a_munic_lbl 21196 `"Xayacatlán de Bravo"', add
label define mx10a_munic_lbl 21197 `"Xicotepec"', add
label define mx10a_munic_lbl 21198 `"Xicotlán"', add
label define mx10a_munic_lbl 21199 `"Xiutetelco"', add
label define mx10a_munic_lbl 21200 `"Xochiapulco"', add
label define mx10a_munic_lbl 21201 `"Xochiltepec"', add
label define mx10a_munic_lbl 21202 `"Xochitlán de Vicente Suárez"', add
label define mx10a_munic_lbl 21203 `"Xochitlán Todos Santos"', add
label define mx10a_munic_lbl 21204 `"Yaonáhuac"', add
label define mx10a_munic_lbl 21205 `"Yehualtepec"', add
label define mx10a_munic_lbl 21206 `"Zacapala"', add
label define mx10a_munic_lbl 21207 `"Zacapoaxtla"', add
label define mx10a_munic_lbl 21208 `"Zacatlán"', add
label define mx10a_munic_lbl 21209 `"Zapotitlán"', add
label define mx10a_munic_lbl 21210 `"Zapotitlán de Méndez"', add
label define mx10a_munic_lbl 21211 `"Zaragoza"', add
label define mx10a_munic_lbl 21212 `"Zautla"', add
label define mx10a_munic_lbl 21213 `"Zihuateutla"', add
label define mx10a_munic_lbl 21214 `"Zinacatepec"', add
label define mx10a_munic_lbl 21215 `"Zongozotla"', add
label define mx10a_munic_lbl 21216 `"Zoquiapan"', add
label define mx10a_munic_lbl 21217 `"Zoquitlán"', add
label define mx10a_munic_lbl 22001 `"Amealco de Bonfil"', add
label define mx10a_munic_lbl 22002 `"Pinal de Amoles"', add
label define mx10a_munic_lbl 22003 `"Arroyo Seco"', add
label define mx10a_munic_lbl 22004 `"Cadereyta de Montes"', add
label define mx10a_munic_lbl 22005 `"Colón"', add
label define mx10a_munic_lbl 22006 `"Corregidora"', add
label define mx10a_munic_lbl 22007 `"Ezequiel Montes"', add
label define mx10a_munic_lbl 22008 `"Huimilpan"', add
label define mx10a_munic_lbl 22009 `"Jalpan de Serra"', add
label define mx10a_munic_lbl 22010 `"Landa de Matamoros"', add
label define mx10a_munic_lbl 22011 `"El Marqués"', add
label define mx10a_munic_lbl 22012 `"Pedro Escobedo"', add
label define mx10a_munic_lbl 22013 `"Peñamiller"', add
label define mx10a_munic_lbl 22014 `"Querétaro"', add
label define mx10a_munic_lbl 22015 `"San Joaquín"', add
label define mx10a_munic_lbl 22016 `"San Juan del Río"', add
label define mx10a_munic_lbl 22017 `"Tequisquiapan"', add
label define mx10a_munic_lbl 22018 `"Tolimán"', add
label define mx10a_munic_lbl 23001 `"Cozumel"', add
label define mx10a_munic_lbl 23002 `"Felipe Carrillo Puerto"', add
label define mx10a_munic_lbl 23003 `"Isla Mujeres"', add
label define mx10a_munic_lbl 23004 `"Othón P. Blanco"', add
label define mx10a_munic_lbl 23005 `"Benito Juárez"', add
label define mx10a_munic_lbl 23006 `"José María Morelos"', add
label define mx10a_munic_lbl 23007 `"Lázaro Cárdenas"', add
label define mx10a_munic_lbl 23008 `"Solidaridad"', add
label define mx10a_munic_lbl 23009 `"Tulum"', add
label define mx10a_munic_lbl 24001 `"Ahualulco"', add
label define mx10a_munic_lbl 24002 `"Alaquines"', add
label define mx10a_munic_lbl 24003 `"Aquismón"', add
label define mx10a_munic_lbl 24004 `"Armadillo de los Infante"', add
label define mx10a_munic_lbl 24005 `"Cárdenas"', add
label define mx10a_munic_lbl 24006 `"Catorce"', add
label define mx10a_munic_lbl 24007 `"Cedral"', add
label define mx10a_munic_lbl 24008 `"Cerritos"', add
label define mx10a_munic_lbl 24009 `"Cerro de San Pedro"', add
label define mx10a_munic_lbl 24010 `"Ciudad del Maíz"', add
label define mx10a_munic_lbl 24011 `"Ciudad Fernández"', add
label define mx10a_munic_lbl 24012 `"Tancanhuitz"', add
label define mx10a_munic_lbl 24013 `"Ciudad Valles"', add
label define mx10a_munic_lbl 24014 `"Coxcatlán"', add
label define mx10a_munic_lbl 24015 `"Charcas"', add
label define mx10a_munic_lbl 24016 `"Ebano"', add
label define mx10a_munic_lbl 24017 `"Guadalcázar"', add
label define mx10a_munic_lbl 24018 `"Huehuetlán"', add
label define mx10a_munic_lbl 24019 `"Lagunillas"', add
label define mx10a_munic_lbl 24020 `"Matehuala"', add
label define mx10a_munic_lbl 24021 `"Mexquitic de Carmona"', add
label define mx10a_munic_lbl 24022 `"Moctezuma"', add
label define mx10a_munic_lbl 24023 `"Rayón"', add
label define mx10a_munic_lbl 24024 `"Rioverde"', add
label define mx10a_munic_lbl 24025 `"Salinas"', add
label define mx10a_munic_lbl 24026 `"San Antonio"', add
label define mx10a_munic_lbl 24027 `"San Ciro de Acosta"', add
label define mx10a_munic_lbl 24028 `"San Luis Potosí"', add
label define mx10a_munic_lbl 24029 `"San Martín Chalchicuautla"', add
label define mx10a_munic_lbl 24030 `"San Nicolás Tolentino"', add
label define mx10a_munic_lbl 24031 `"Santa Catarina"', add
label define mx10a_munic_lbl 24032 `"Santa María del Río"', add
label define mx10a_munic_lbl 24033 `"Santo Domingo"', add
label define mx10a_munic_lbl 24034 `"San Vicente Tancuayalab"', add
label define mx10a_munic_lbl 24035 `"Soledad de Graciano Sánchez"', add
label define mx10a_munic_lbl 24036 `"Tamasopo"', add
label define mx10a_munic_lbl 24037 `"Tamazunchale"', add
label define mx10a_munic_lbl 24038 `"Tampacán"', add
label define mx10a_munic_lbl 24039 `"Tampamolón Corona"', add
label define mx10a_munic_lbl 24040 `"Tamuín"', add
label define mx10a_munic_lbl 24041 `"Tanlajás"', add
label define mx10a_munic_lbl 24042 `"Tanquián de Escobedo"', add
label define mx10a_munic_lbl 24043 `"Tierra Nueva"', add
label define mx10a_munic_lbl 24044 `"Vanegas"', add
label define mx10a_munic_lbl 24045 `"Venado"', add
label define mx10a_munic_lbl 24046 `"Villa de Arriaga"', add
label define mx10a_munic_lbl 24047 `"Villa de Guadalupe"', add
label define mx10a_munic_lbl 24048 `"Villa de la Paz"', add
label define mx10a_munic_lbl 24049 `"Villa de Ramos"', add
label define mx10a_munic_lbl 24050 `"Villa de Reyes"', add
label define mx10a_munic_lbl 24051 `"Villa Hidalgo"', add
label define mx10a_munic_lbl 24052 `"Villa Juárez"', add
label define mx10a_munic_lbl 24053 `"Axtla de Terrazas"', add
label define mx10a_munic_lbl 24054 `"Xilitla"', add
label define mx10a_munic_lbl 24055 `"Zaragoza"', add
label define mx10a_munic_lbl 24056 `"Villa de Arista"', add
label define mx10a_munic_lbl 24057 `"Matlapa"', add
label define mx10a_munic_lbl 24058 `"El Naranjo"', add
label define mx10a_munic_lbl 25001 `"Ahome"', add
label define mx10a_munic_lbl 25002 `"Angostura"', add
label define mx10a_munic_lbl 25003 `"Badiraguato"', add
label define mx10a_munic_lbl 25004 `"Concordia"', add
label define mx10a_munic_lbl 25005 `"Cosalá"', add
label define mx10a_munic_lbl 25006 `"Culiacán"', add
label define mx10a_munic_lbl 25007 `"Choix"', add
label define mx10a_munic_lbl 25008 `"Elota"', add
label define mx10a_munic_lbl 25009 `"Escuinapa"', add
label define mx10a_munic_lbl 25010 `"El Fuerte"', add
label define mx10a_munic_lbl 25011 `"Guasave"', add
label define mx10a_munic_lbl 25012 `"Mazatlán"', add
label define mx10a_munic_lbl 25013 `"Mocorito"', add
label define mx10a_munic_lbl 25014 `"Rosario"', add
label define mx10a_munic_lbl 25015 `"Salvador Alvarado"', add
label define mx10a_munic_lbl 25016 `"San Ignacio"', add
label define mx10a_munic_lbl 25017 `"Sinaloa"', add
label define mx10a_munic_lbl 25018 `"Navolato"', add
label define mx10a_munic_lbl 26001 `"Aconchi"', add
label define mx10a_munic_lbl 26002 `"Agua Prieta"', add
label define mx10a_munic_lbl 26003 `"Alamos"', add
label define mx10a_munic_lbl 26004 `"Altar"', add
label define mx10a_munic_lbl 26005 `"Arivechi"', add
label define mx10a_munic_lbl 26006 `"Arizpe"', add
label define mx10a_munic_lbl 26007 `"Atil"', add
label define mx10a_munic_lbl 26008 `"Bacadéhuachi"', add
label define mx10a_munic_lbl 26009 `"Bacanora"', add
label define mx10a_munic_lbl 26010 `"Bacerac"', add
label define mx10a_munic_lbl 26011 `"Bacoachi"', add
label define mx10a_munic_lbl 26012 `"Bácum"', add
label define mx10a_munic_lbl 26013 `"Banámichi"', add
label define mx10a_munic_lbl 26014 `"Baviácora"', add
label define mx10a_munic_lbl 26015 `"Bavispe"', add
label define mx10a_munic_lbl 26016 `"Benjamín Hill"', add
label define mx10a_munic_lbl 26017 `"Caborca"', add
label define mx10a_munic_lbl 26018 `"Cajeme"', add
label define mx10a_munic_lbl 26019 `"Cananea"', add
label define mx10a_munic_lbl 26020 `"Carbó"', add
label define mx10a_munic_lbl 26021 `"La Colorada"', add
label define mx10a_munic_lbl 26022 `"Cucurpe"', add
label define mx10a_munic_lbl 26023 `"Cumpas"', add
label define mx10a_munic_lbl 26024 `"Divisaderos"', add
label define mx10a_munic_lbl 26025 `"Empalme"', add
label define mx10a_munic_lbl 26026 `"Etchojoa"', add
label define mx10a_munic_lbl 26027 `"Fronteras"', add
label define mx10a_munic_lbl 26028 `"Granados"', add
label define mx10a_munic_lbl 26029 `"Guaymas"', add
label define mx10a_munic_lbl 26030 `"Hermosillo"', add
label define mx10a_munic_lbl 26031 `"Huachinera"', add
label define mx10a_munic_lbl 26032 `"Huásabas"', add
label define mx10a_munic_lbl 26033 `"Huatabampo"', add
label define mx10a_munic_lbl 26034 `"Huépac"', add
label define mx10a_munic_lbl 26035 `"Imuris"', add
label define mx10a_munic_lbl 26036 `"Magdalena"', add
label define mx10a_munic_lbl 26037 `"Mazatán"', add
label define mx10a_munic_lbl 26038 `"Moctezuma"', add
label define mx10a_munic_lbl 26039 `"Naco"', add
label define mx10a_munic_lbl 26040 `"Nácori Chico"', add
label define mx10a_munic_lbl 26041 `"Nacozari de García"', add
label define mx10a_munic_lbl 26042 `"Navojoa"', add
label define mx10a_munic_lbl 26043 `"Nogales"', add
label define mx10a_munic_lbl 26044 `"Onavas"', add
label define mx10a_munic_lbl 26045 `"Opodepe"', add
label define mx10a_munic_lbl 26046 `"Oquitoa"', add
label define mx10a_munic_lbl 26047 `"Pitiquito"', add
label define mx10a_munic_lbl 26048 `"Puerto Peñasco"', add
label define mx10a_munic_lbl 26049 `"Quiriego"', add
label define mx10a_munic_lbl 26050 `"Rayón"', add
label define mx10a_munic_lbl 26051 `"Rosario"', add
label define mx10a_munic_lbl 26052 `"Sahuaripa"', add
label define mx10a_munic_lbl 26053 `"San Felipe de Jesús"', add
label define mx10a_munic_lbl 26054 `"San Javier"', add
label define mx10a_munic_lbl 26055 `"San Luis Río Colorado"', add
label define mx10a_munic_lbl 26056 `"San Miguel de Horcasitas"', add
label define mx10a_munic_lbl 26057 `"San Pedro de la Cueva"', add
label define mx10a_munic_lbl 26058 `"Santa Ana"', add
label define mx10a_munic_lbl 26059 `"Santa Cruz"', add
label define mx10a_munic_lbl 26060 `"Sáric"', add
label define mx10a_munic_lbl 26061 `"Soyopa"', add
label define mx10a_munic_lbl 26062 `"Suaqui Grande"', add
label define mx10a_munic_lbl 26063 `"Tepache"', add
label define mx10a_munic_lbl 26064 `"Trincheras"', add
label define mx10a_munic_lbl 26065 `"Tubutama"', add
label define mx10a_munic_lbl 26066 `"Ures"', add
label define mx10a_munic_lbl 26067 `"Villa Hidalgo"', add
label define mx10a_munic_lbl 26068 `"Villa Pesqueira"', add
label define mx10a_munic_lbl 26069 `"Yécora"', add
label define mx10a_munic_lbl 26070 `"General Plutarco Elías Calles"', add
label define mx10a_munic_lbl 26071 `"Benito Juárez"', add
label define mx10a_munic_lbl 26072 `"San Ignacio Río Muerto"', add
label define mx10a_munic_lbl 27001 `"Balancán"', add
label define mx10a_munic_lbl 27002 `"Cárdenas"', add
label define mx10a_munic_lbl 27003 `"Centla"', add
label define mx10a_munic_lbl 27004 `"Centro"', add
label define mx10a_munic_lbl 27005 `"Comalcalco"', add
label define mx10a_munic_lbl 27006 `"Cunduacán"', add
label define mx10a_munic_lbl 27007 `"Emiliano Zapata"', add
label define mx10a_munic_lbl 27008 `"Huimanguillo"', add
label define mx10a_munic_lbl 27009 `"Jalapa"', add
label define mx10a_munic_lbl 27010 `"Jalpa de Méndez"', add
label define mx10a_munic_lbl 27011 `"Jonuta"', add
label define mx10a_munic_lbl 27012 `"Macuspana"', add
label define mx10a_munic_lbl 27013 `"Nacajuca"', add
label define mx10a_munic_lbl 27014 `"Paraíso"', add
label define mx10a_munic_lbl 27015 `"Tacotalpa"', add
label define mx10a_munic_lbl 27016 `"Teapa"', add
label define mx10a_munic_lbl 27017 `"Tenosique"', add
label define mx10a_munic_lbl 28001 `"Abasolo"', add
label define mx10a_munic_lbl 28002 `"Aldama"', add
label define mx10a_munic_lbl 28003 `"Altamira"', add
label define mx10a_munic_lbl 28004 `"Antiguo Morelos"', add
label define mx10a_munic_lbl 28005 `"Burgos"', add
label define mx10a_munic_lbl 28006 `"Bustamante"', add
label define mx10a_munic_lbl 28007 `"Camargo"', add
label define mx10a_munic_lbl 28008 `"Casas"', add
label define mx10a_munic_lbl 28009 `"Ciudad Madero"', add
label define mx10a_munic_lbl 28010 `"Cruillas"', add
label define mx10a_munic_lbl 28011 `"Gómez Farías"', add
label define mx10a_munic_lbl 28012 `"González"', add
label define mx10a_munic_lbl 28013 `"Güémez"', add
label define mx10a_munic_lbl 28014 `"Guerrero"', add
label define mx10a_munic_lbl 28015 `"Gustavo Díaz Ordaz"', add
label define mx10a_munic_lbl 28016 `"Hidalgo"', add
label define mx10a_munic_lbl 28017 `"Jaumave"', add
label define mx10a_munic_lbl 28018 `"Jiménez"', add
label define mx10a_munic_lbl 28019 `"Llera"', add
label define mx10a_munic_lbl 28020 `"Mainero"', add
label define mx10a_munic_lbl 28021 `"El Mante"', add
label define mx10a_munic_lbl 28022 `"Matamoros"', add
label define mx10a_munic_lbl 28023 `"Méndez"', add
label define mx10a_munic_lbl 28024 `"Mier"', add
label define mx10a_munic_lbl 28025 `"Miguel Alemán"', add
label define mx10a_munic_lbl 28026 `"Miquihuana"', add
label define mx10a_munic_lbl 28027 `"Nuevo Laredo"', add
label define mx10a_munic_lbl 28028 `"Nuevo Morelos"', add
label define mx10a_munic_lbl 28029 `"Ocampo"', add
label define mx10a_munic_lbl 28030 `"Padilla"', add
label define mx10a_munic_lbl 28031 `"Palmillas"', add
label define mx10a_munic_lbl 28032 `"Reynosa"', add
label define mx10a_munic_lbl 28033 `"Río Bravo"', add
label define mx10a_munic_lbl 28034 `"San Carlos"', add
label define mx10a_munic_lbl 28035 `"San Fernando"', add
label define mx10a_munic_lbl 28036 `"San Nicolás"', add
label define mx10a_munic_lbl 28037 `"Soto la Marina"', add
label define mx10a_munic_lbl 28038 `"Tampico"', add
label define mx10a_munic_lbl 28039 `"Tula"', add
label define mx10a_munic_lbl 28040 `"Valle Hermoso"', add
label define mx10a_munic_lbl 28041 `"Victoria"', add
label define mx10a_munic_lbl 28042 `"Villagrán"', add
label define mx10a_munic_lbl 28043 `"Xicoténcatl"', add
label define mx10a_munic_lbl 29001 `"Amaxac de Guerrero"', add
label define mx10a_munic_lbl 29002 `"Apetatitlán de Antonio Carvajal"', add
label define mx10a_munic_lbl 29003 `"Atlangatepec"', add
label define mx10a_munic_lbl 29004 `"Atltzayanca"', add
label define mx10a_munic_lbl 29005 `"Apizaco"', add
label define mx10a_munic_lbl 29006 `"Calpulalpan"', add
label define mx10a_munic_lbl 29007 `"El Carmen Tequexquitla"', add
label define mx10a_munic_lbl 29008 `"Cuapiaxtla"', add
label define mx10a_munic_lbl 29009 `"Cuaxomulco"', add
label define mx10a_munic_lbl 29010 `"Chiautempan"', add
label define mx10a_munic_lbl 29011 `"Muñoz de Domingo Arenas"', add
label define mx10a_munic_lbl 29012 `"Españita"', add
label define mx10a_munic_lbl 29013 `"Huamantla"', add
label define mx10a_munic_lbl 29014 `"Hueyotlipan"', add
label define mx10a_munic_lbl 29015 `"Ixtacuixtla de Mariano Matamoros"', add
label define mx10a_munic_lbl 29016 `"Ixtenco"', add
label define mx10a_munic_lbl 29017 `"Mazatecochco de José María Morelos"', add
label define mx10a_munic_lbl 29018 `"Contla de Juan Cuamatzi"', add
label define mx10a_munic_lbl 29019 `"Tepetitla de Lardizábal"', add
label define mx10a_munic_lbl 29020 `"Sanctórum de Lázaro Cárdenas"', add
label define mx10a_munic_lbl 29021 `"Nanacamilpa de Mariano Arista"', add
label define mx10a_munic_lbl 29022 `"Acuamanala de Miguel Hidalgo"', add
label define mx10a_munic_lbl 29023 `"Natívitas"', add
label define mx10a_munic_lbl 29024 `"Panotla"', add
label define mx10a_munic_lbl 29025 `"San Pablo del Monte"', add
label define mx10a_munic_lbl 29026 `"Santa Cruz Tlaxcala"', add
label define mx10a_munic_lbl 29027 `"Tenancingo"', add
label define mx10a_munic_lbl 29028 `"Teolocholco"', add
label define mx10a_munic_lbl 29029 `"Tepeyanco"', add
label define mx10a_munic_lbl 29030 `"Terrenate"', add
label define mx10a_munic_lbl 29031 `"Tetla de la Solidaridad"', add
label define mx10a_munic_lbl 29032 `"Tetlatlahuca"', add
label define mx10a_munic_lbl 29033 `"Tlaxcala"', add
label define mx10a_munic_lbl 29034 `"Tlaxco"', add
label define mx10a_munic_lbl 29035 `"Tocatlán"', add
label define mx10a_munic_lbl 29036 `"Totolac"', add
label define mx10a_munic_lbl 29037 `"Ziltlaltépec de Trinidad Sánchez Santos"', add
label define mx10a_munic_lbl 29038 `"Tzompantepec"', add
label define mx10a_munic_lbl 29039 `"Xaloztoc"', add
label define mx10a_munic_lbl 29040 `"Xaltocan"', add
label define mx10a_munic_lbl 29041 `"Papalotla de Xicohténcatl"', add
label define mx10a_munic_lbl 29042 `"Xicohtzinco"', add
label define mx10a_munic_lbl 29043 `"Yauhquemehcan"', add
label define mx10a_munic_lbl 29044 `"Zacatelco"', add
label define mx10a_munic_lbl 29045 `"Benito Juárez"', add
label define mx10a_munic_lbl 29046 `"Emiliano Zapata"', add
label define mx10a_munic_lbl 29047 `"Lázaro Cárdenas"', add
label define mx10a_munic_lbl 29048 `"La Magdalena Tlaltelulco"', add
label define mx10a_munic_lbl 29049 `"San Damián Texóloc"', add
label define mx10a_munic_lbl 29050 `"San Francisco Tetlanohcan"', add
label define mx10a_munic_lbl 29051 `"San Jerónimo Zacualpan"', add
label define mx10a_munic_lbl 29052 `"San José Teacalco"', add
label define mx10a_munic_lbl 29053 `"San Juan Huactzinco"', add
label define mx10a_munic_lbl 29054 `"San Lorenzo Axocomanitla"', add
label define mx10a_munic_lbl 29055 `"San Lucas Tecopilco"', add
label define mx10a_munic_lbl 29056 `"Santa Ana Nopalucan"', add
label define mx10a_munic_lbl 29057 `"Santa Apolonia Teacalco"', add
label define mx10a_munic_lbl 29058 `"Santa Catarina Ayometla"', add
label define mx10a_munic_lbl 29059 `"Santa Cruz Quilehtla"', add
label define mx10a_munic_lbl 29060 `"Santa Isabel Xiloxoxtla"', add
label define mx10a_munic_lbl 30001 `"Acajete"', add
label define mx10a_munic_lbl 30002 `"Acatlán"', add
label define mx10a_munic_lbl 30003 `"Acayucan"', add
label define mx10a_munic_lbl 30004 `"Actopan"', add
label define mx10a_munic_lbl 30005 `"Acula"', add
label define mx10a_munic_lbl 30006 `"Acultzingo"', add
label define mx10a_munic_lbl 30007 `"Camarón de Tejeda"', add
label define mx10a_munic_lbl 30008 `"Alpatláhuac"', add
label define mx10a_munic_lbl 30009 `"Alto Lucero de Gutiérrez Barrios"', add
label define mx10a_munic_lbl 30010 `"Altotonga"', add
label define mx10a_munic_lbl 30011 `"Alvarado"', add
label define mx10a_munic_lbl 30012 `"Amatitlán"', add
label define mx10a_munic_lbl 30013 `"Naranjos Amatlán"', add
label define mx10a_munic_lbl 30014 `"Amatlán de los Reyes"', add
label define mx10a_munic_lbl 30015 `"Angel R. Cabada"', add
label define mx10a_munic_lbl 30016 `"La Antigua"', add
label define mx10a_munic_lbl 30017 `"Apazapan"', add
label define mx10a_munic_lbl 30018 `"Aquila"', add
label define mx10a_munic_lbl 30019 `"Astacinga"', add
label define mx10a_munic_lbl 30020 `"Atlahuilco"', add
label define mx10a_munic_lbl 30021 `"Atoyac"', add
label define mx10a_munic_lbl 30022 `"Atzacan"', add
label define mx10a_munic_lbl 30023 `"Atzalan"', add
label define mx10a_munic_lbl 30024 `"Tlaltetela"', add
label define mx10a_munic_lbl 30025 `"Ayahualulco"', add
label define mx10a_munic_lbl 30026 `"Banderilla"', add
label define mx10a_munic_lbl 30027 `"Benito Juárez"', add
label define mx10a_munic_lbl 30028 `"Boca del Río"', add
label define mx10a_munic_lbl 30029 `"Calcahualco"', add
label define mx10a_munic_lbl 30030 `"Camerino Z. Mendoza"', add
label define mx10a_munic_lbl 30031 `"Carrillo Puerto"', add
label define mx10a_munic_lbl 30032 `"Catemaco"', add
label define mx10a_munic_lbl 30033 `"Cazones de Herrera"', add
label define mx10a_munic_lbl 30034 `"Cerro Azul"', add
label define mx10a_munic_lbl 30035 `"Citlaltépetl"', add
label define mx10a_munic_lbl 30036 `"Coacoatzintla"', add
label define mx10a_munic_lbl 30037 `"Coahuitlán"', add
label define mx10a_munic_lbl 30038 `"Coatepec"', add
label define mx10a_munic_lbl 30039 `"Coatzacoalcos"', add
label define mx10a_munic_lbl 30040 `"Coatzintla"', add
label define mx10a_munic_lbl 30041 `"Coetzala"', add
label define mx10a_munic_lbl 30042 `"Colipa"', add
label define mx10a_munic_lbl 30043 `"Comapa"', add
label define mx10a_munic_lbl 30044 `"Córdoba"', add
label define mx10a_munic_lbl 30045 `"Cosamaloapan de Carpio"', add
label define mx10a_munic_lbl 30046 `"Cosautlán de Carvajal"', add
label define mx10a_munic_lbl 30047 `"Coscomatepec"', add
label define mx10a_munic_lbl 30048 `"Cosoleacaque"', add
label define mx10a_munic_lbl 30049 `"Cotaxtla"', add
label define mx10a_munic_lbl 30050 `"Coxquihui"', add
label define mx10a_munic_lbl 30051 `"Coyutla"', add
label define mx10a_munic_lbl 30052 `"Cuichapa"', add
label define mx10a_munic_lbl 30053 `"Cuitláhuac"', add
label define mx10a_munic_lbl 30054 `"Chacaltianguis"', add
label define mx10a_munic_lbl 30055 `"Chalma"', add
label define mx10a_munic_lbl 30056 `"Chiconamel"', add
label define mx10a_munic_lbl 30057 `"Chiconquiaco"', add
label define mx10a_munic_lbl 30058 `"Chicontepec"', add
label define mx10a_munic_lbl 30059 `"Chinameca"', add
label define mx10a_munic_lbl 30060 `"Chinampa de Gorostiza"', add
label define mx10a_munic_lbl 30061 `"Las Choapas"', add
label define mx10a_munic_lbl 30062 `"Chocamán"', add
label define mx10a_munic_lbl 30063 `"Chontla"', add
label define mx10a_munic_lbl 30064 `"Chumatlán"', add
label define mx10a_munic_lbl 30065 `"Emiliano Zapata"', add
label define mx10a_munic_lbl 30066 `"Espinal"', add
label define mx10a_munic_lbl 30067 `"Filomeno Mata"', add
label define mx10a_munic_lbl 30068 `"Fortín"', add
label define mx10a_munic_lbl 30069 `"Gutiérrez Zamora"', add
label define mx10a_munic_lbl 30070 `"Hidalgotitlán"', add
label define mx10a_munic_lbl 30071 `"Huatusco"', add
label define mx10a_munic_lbl 30072 `"Huayacocotla"', add
label define mx10a_munic_lbl 30073 `"Hueyapan de Ocampo"', add
label define mx10a_munic_lbl 30074 `"Huiloapan de Cuauhtémoc"', add
label define mx10a_munic_lbl 30075 `"Ignacio de la Llave"', add
label define mx10a_munic_lbl 30076 `"Ilamatlán"', add
label define mx10a_munic_lbl 30077 `"Isla"', add
label define mx10a_munic_lbl 30078 `"Ixcatepec"', add
label define mx10a_munic_lbl 30079 `"Ixhuacán de los Reyes"', add
label define mx10a_munic_lbl 30080 `"Ixhuatlán del Café"', add
label define mx10a_munic_lbl 30081 `"Ixhuatlancillo"', add
label define mx10a_munic_lbl 30082 `"Ixhuatlán del Sureste"', add
label define mx10a_munic_lbl 30083 `"Ixhuatlán de Madero"', add
label define mx10a_munic_lbl 30084 `"Ixmatlahuacan"', add
label define mx10a_munic_lbl 30085 `"Ixtaczoquitlán"', add
label define mx10a_munic_lbl 30086 `"Jalacingo"', add
label define mx10a_munic_lbl 30087 `"Xalapa"', add
label define mx10a_munic_lbl 30088 `"Jalcomulco"', add
label define mx10a_munic_lbl 30089 `"Jáltipan"', add
label define mx10a_munic_lbl 30090 `"Jamapa"', add
label define mx10a_munic_lbl 30091 `"Jesús Carranza"', add
label define mx10a_munic_lbl 30092 `"Xico"', add
label define mx10a_munic_lbl 30093 `"Jilotepec"', add
label define mx10a_munic_lbl 30094 `"Juan Rodríguez Clara"', add
label define mx10a_munic_lbl 30095 `"Juchique de Ferrer"', add
label define mx10a_munic_lbl 30096 `"Landero y Coss"', add
label define mx10a_munic_lbl 30097 `"Lerdo de Tejada"', add
label define mx10a_munic_lbl 30098 `"Magdalena"', add
label define mx10a_munic_lbl 30099 `"Maltrata"', add
label define mx10a_munic_lbl 30100 `"Manlio Fabio Altamirano"', add
label define mx10a_munic_lbl 30101 `"Mariano Escobedo"', add
label define mx10a_munic_lbl 30102 `"Martínez de la Torre"', add
label define mx10a_munic_lbl 30103 `"Mecatlán"', add
label define mx10a_munic_lbl 30104 `"Mecayapan"', add
label define mx10a_munic_lbl 30105 `"Medellín"', add
label define mx10a_munic_lbl 30106 `"Miahuatlán"', add
label define mx10a_munic_lbl 30107 `"Las Minas"', add
label define mx10a_munic_lbl 30108 `"Minatitlán"', add
label define mx10a_munic_lbl 30109 `"Misantla"', add
label define mx10a_munic_lbl 30110 `"Mixtla de Altamirano"', add
label define mx10a_munic_lbl 30111 `"Moloacán"', add
label define mx10a_munic_lbl 30112 `"Naolinco"', add
label define mx10a_munic_lbl 30113 `"Naranjal"', add
label define mx10a_munic_lbl 30114 `"Nautla"', add
label define mx10a_munic_lbl 30115 `"Nogales"', add
label define mx10a_munic_lbl 30116 `"Oluta"', add
label define mx10a_munic_lbl 30117 `"Omealca"', add
label define mx10a_munic_lbl 30118 `"Orizaba"', add
label define mx10a_munic_lbl 30119 `"Otatitlán"', add
label define mx10a_munic_lbl 30120 `"Oteapan"', add
label define mx10a_munic_lbl 30121 `"Ozuluama de Mascareñas"', add
label define mx10a_munic_lbl 30122 `"Pajapan"', add
label define mx10a_munic_lbl 30123 `"Pánuco"', add
label define mx10a_munic_lbl 30124 `"Papantla"', add
label define mx10a_munic_lbl 30125 `"Paso del Macho"', add
label define mx10a_munic_lbl 30126 `"Paso de Ovejas"', add
label define mx10a_munic_lbl 30127 `"La Perla"', add
label define mx10a_munic_lbl 30128 `"Perote"', add
label define mx10a_munic_lbl 30129 `"Platón Sánchez"', add
label define mx10a_munic_lbl 30130 `"Playa Vicente"', add
label define mx10a_munic_lbl 30131 `"Poza Rica de Hidalgo"', add
label define mx10a_munic_lbl 30132 `"Las Vigas de Ramírez"', add
label define mx10a_munic_lbl 30133 `"Pueblo Viejo"', add
label define mx10a_munic_lbl 30134 `"Puente Nacional"', add
label define mx10a_munic_lbl 30135 `"Rafael Delgado"', add
label define mx10a_munic_lbl 30136 `"Rafael Lucio"', add
label define mx10a_munic_lbl 30137 `"Los Reyes"', add
label define mx10a_munic_lbl 30138 `"Río Blanco"', add
label define mx10a_munic_lbl 30139 `"Saltabarranca"', add
label define mx10a_munic_lbl 30140 `"San Andrés Tenejapan"', add
label define mx10a_munic_lbl 30141 `"San Andrés Tuxtla"', add
label define mx10a_munic_lbl 30142 `"San Juan Evangelista"', add
label define mx10a_munic_lbl 30143 `"Santiago Tuxtla"', add
label define mx10a_munic_lbl 30144 `"Sayula de Alemán"', add
label define mx10a_munic_lbl 30145 `"Soconusco"', add
label define mx10a_munic_lbl 30146 `"Sochiapa"', add
label define mx10a_munic_lbl 30147 `"Soledad Atzompa"', add
label define mx10a_munic_lbl 30148 `"Soledad de Doblado"', add
label define mx10a_munic_lbl 30149 `"Soteapan"', add
label define mx10a_munic_lbl 30150 `"Tamalín"', add
label define mx10a_munic_lbl 30151 `"Tamiahua"', add
label define mx10a_munic_lbl 30152 `"Tampico Alto"', add
label define mx10a_munic_lbl 30153 `"Tancoco"', add
label define mx10a_munic_lbl 30154 `"Tantima"', add
label define mx10a_munic_lbl 30155 `"Tantoyuca"', add
label define mx10a_munic_lbl 30156 `"Tatatila"', add
label define mx10a_munic_lbl 30157 `"Castillo de Teayo"', add
label define mx10a_munic_lbl 30158 `"Tecolutla"', add
label define mx10a_munic_lbl 30159 `"Tehuipango"', add
label define mx10a_munic_lbl 30160 `"Álamo Temapache"', add
label define mx10a_munic_lbl 30161 `"Tempoal"', add
label define mx10a_munic_lbl 30162 `"Tenampa"', add
label define mx10a_munic_lbl 30163 `"Tenochtitlán"', add
label define mx10a_munic_lbl 30164 `"Teocelo"', add
label define mx10a_munic_lbl 30165 `"Tepatlaxco"', add
label define mx10a_munic_lbl 30166 `"Tepetlán"', add
label define mx10a_munic_lbl 30167 `"Tepetzintla"', add
label define mx10a_munic_lbl 30168 `"Tequila"', add
label define mx10a_munic_lbl 30169 `"José Azueta"', add
label define mx10a_munic_lbl 30170 `"Texcatepec"', add
label define mx10a_munic_lbl 30171 `"Texhuacán"', add
label define mx10a_munic_lbl 30172 `"Texistepec"', add
label define mx10a_munic_lbl 30173 `"Tezonapa"', add
label define mx10a_munic_lbl 30174 `"Tierra Blanca"', add
label define mx10a_munic_lbl 30175 `"Tihuatlán"', add
label define mx10a_munic_lbl 30176 `"Tlacojalpan"', add
label define mx10a_munic_lbl 30177 `"Tlacolulan"', add
label define mx10a_munic_lbl 30178 `"Tlacotalpan"', add
label define mx10a_munic_lbl 30179 `"Tlacotepec de Mejía"', add
label define mx10a_munic_lbl 30180 `"Tlachichilco"', add
label define mx10a_munic_lbl 30181 `"Tlalixcoyan"', add
label define mx10a_munic_lbl 30182 `"Tlalnelhuayocan"', add
label define mx10a_munic_lbl 30183 `"Tlapacoyan"', add
label define mx10a_munic_lbl 30184 `"Tlaquilpa"', add
label define mx10a_munic_lbl 30185 `"Tlilapan"', add
label define mx10a_munic_lbl 30186 `"Tomatlán"', add
label define mx10a_munic_lbl 30187 `"Tonayán"', add
label define mx10a_munic_lbl 30188 `"Totutla"', add
label define mx10a_munic_lbl 30189 `"Tuxpan"', add
label define mx10a_munic_lbl 30190 `"Tuxtilla"', add
label define mx10a_munic_lbl 30191 `"Ursulo Galván"', add
label define mx10a_munic_lbl 30192 `"Vega de Alatorre"', add
label define mx10a_munic_lbl 30193 `"Veracruz"', add
label define mx10a_munic_lbl 30194 `"Villa Aldama"', add
label define mx10a_munic_lbl 30195 `"Xoxocotla"', add
label define mx10a_munic_lbl 30196 `"Yanga"', add
label define mx10a_munic_lbl 30197 `"Yecuatla"', add
label define mx10a_munic_lbl 30198 `"Zacualpan"', add
label define mx10a_munic_lbl 30199 `"Zaragoza"', add
label define mx10a_munic_lbl 30200 `"Zentla"', add
label define mx10a_munic_lbl 30201 `"Zongolica"', add
label define mx10a_munic_lbl 30202 `"Zontecomatlán de López y Fuentes"', add
label define mx10a_munic_lbl 30203 `"Zozocolco de Hidalgo"', add
label define mx10a_munic_lbl 30204 `"Agua Dulce"', add
label define mx10a_munic_lbl 30205 `"El Higo"', add
label define mx10a_munic_lbl 30206 `"Nanchital de Lázaro Cárdenas del Río"', add
label define mx10a_munic_lbl 30207 `"Tres Valles"', add
label define mx10a_munic_lbl 30208 `"Carlos A. Carrillo"', add
label define mx10a_munic_lbl 30209 `"Tatahuicapan de Juárez"', add
label define mx10a_munic_lbl 30210 `"Uxpanapa"', add
label define mx10a_munic_lbl 30211 `"San Rafael"', add
label define mx10a_munic_lbl 30212 `"Santiago Sochiapan"', add
label define mx10a_munic_lbl 31001 `"Abalá"', add
label define mx10a_munic_lbl 31002 `"Acanceh"', add
label define mx10a_munic_lbl 31003 `"Akil"', add
label define mx10a_munic_lbl 31004 `"Baca"', add
label define mx10a_munic_lbl 31005 `"Bokobá"', add
label define mx10a_munic_lbl 31006 `"Buctzotz"', add
label define mx10a_munic_lbl 31007 `"Cacalchén"', add
label define mx10a_munic_lbl 31008 `"Calotmul"', add
label define mx10a_munic_lbl 31009 `"Cansahcab"', add
label define mx10a_munic_lbl 31010 `"Cantamayec"', add
label define mx10a_munic_lbl 31011 `"Celestún"', add
label define mx10a_munic_lbl 31012 `"Cenotillo"', add
label define mx10a_munic_lbl 31013 `"Conkal"', add
label define mx10a_munic_lbl 31014 `"Cuncunul"', add
label define mx10a_munic_lbl 31015 `"Cuzamá"', add
label define mx10a_munic_lbl 31016 `"Chacsinkín"', add
label define mx10a_munic_lbl 31017 `"Chankom"', add
label define mx10a_munic_lbl 31018 `"Chapab"', add
label define mx10a_munic_lbl 31019 `"Chemax"', add
label define mx10a_munic_lbl 31020 `"Chicxulub Pueblo"', add
label define mx10a_munic_lbl 31021 `"Chichimilá"', add
label define mx10a_munic_lbl 31022 `"Chikindzonot"', add
label define mx10a_munic_lbl 31023 `"Chocholá"', add
label define mx10a_munic_lbl 31024 `"Chumayel"', add
label define mx10a_munic_lbl 31025 `"Dzán"', add
label define mx10a_munic_lbl 31026 `"Dzemul"', add
label define mx10a_munic_lbl 31027 `"Dzidzantún"', add
label define mx10a_munic_lbl 31028 `"Dzilam de Bravo"', add
label define mx10a_munic_lbl 31029 `"Dzilam González"', add
label define mx10a_munic_lbl 31030 `"Dzitás"', add
label define mx10a_munic_lbl 31031 `"Dzoncauich"', add
label define mx10a_munic_lbl 31032 `"Espita"', add
label define mx10a_munic_lbl 31033 `"Halachó"', add
label define mx10a_munic_lbl 31034 `"Hocabá"', add
label define mx10a_munic_lbl 31035 `"Hoctún"', add
label define mx10a_munic_lbl 31036 `"Homún"', add
label define mx10a_munic_lbl 31037 `"Huhí"', add
label define mx10a_munic_lbl 31038 `"Hunucmá"', add
label define mx10a_munic_lbl 31039 `"Ixil"', add
label define mx10a_munic_lbl 31040 `"Izamal"', add
label define mx10a_munic_lbl 31041 `"Kanasín"', add
label define mx10a_munic_lbl 31042 `"Kantunil"', add
label define mx10a_munic_lbl 31043 `"Kaua"', add
label define mx10a_munic_lbl 31044 `"Kinchil"', add
label define mx10a_munic_lbl 31045 `"Kopomá"', add
label define mx10a_munic_lbl 31046 `"Mama"', add
label define mx10a_munic_lbl 31047 `"Maní"', add
label define mx10a_munic_lbl 31048 `"Maxcanú"', add
label define mx10a_munic_lbl 31049 `"Mayapán"', add
label define mx10a_munic_lbl 31050 `"Mérida"', add
label define mx10a_munic_lbl 31051 `"Mocochá"', add
label define mx10a_munic_lbl 31052 `"Motul"', add
label define mx10a_munic_lbl 31053 `"Muna"', add
label define mx10a_munic_lbl 31054 `"Muxupip"', add
label define mx10a_munic_lbl 31055 `"Opichén"', add
label define mx10a_munic_lbl 31056 `"Oxkutzcab"', add
label define mx10a_munic_lbl 31057 `"Panabá"', add
label define mx10a_munic_lbl 31058 `"Peto"', add
label define mx10a_munic_lbl 31059 `"Progreso"', add
label define mx10a_munic_lbl 31060 `"Quintana Roo"', add
label define mx10a_munic_lbl 31061 `"Río Lagartos"', add
label define mx10a_munic_lbl 31062 `"Sacalum"', add
label define mx10a_munic_lbl 31063 `"Samahil"', add
label define mx10a_munic_lbl 31064 `"Sanahcat"', add
label define mx10a_munic_lbl 31065 `"San Felipe"', add
label define mx10a_munic_lbl 31066 `"Santa Elena"', add
label define mx10a_munic_lbl 31067 `"Seyé"', add
label define mx10a_munic_lbl 31068 `"Sinanché"', add
label define mx10a_munic_lbl 31069 `"Sotuta"', add
label define mx10a_munic_lbl 31070 `"Sucilá"', add
label define mx10a_munic_lbl 31071 `"Sudzal"', add
label define mx10a_munic_lbl 31072 `"Suma"', add
label define mx10a_munic_lbl 31073 `"Tahdziú"', add
label define mx10a_munic_lbl 31074 `"Tahmek"', add
label define mx10a_munic_lbl 31075 `"Teabo"', add
label define mx10a_munic_lbl 31076 `"Tecoh"', add
label define mx10a_munic_lbl 31077 `"Tekal de Venegas"', add
label define mx10a_munic_lbl 31078 `"Tekantó"', add
label define mx10a_munic_lbl 31079 `"Tekax"', add
label define mx10a_munic_lbl 31080 `"Tekit"', add
label define mx10a_munic_lbl 31081 `"Tekom"', add
label define mx10a_munic_lbl 31082 `"Telchac Pueblo"', add
label define mx10a_munic_lbl 31083 `"Telchac Puerto"', add
label define mx10a_munic_lbl 31084 `"Temax"', add
label define mx10a_munic_lbl 31085 `"Temozón"', add
label define mx10a_munic_lbl 31086 `"Tepakán"', add
label define mx10a_munic_lbl 31087 `"Tetiz"', add
label define mx10a_munic_lbl 31088 `"Teya"', add
label define mx10a_munic_lbl 31089 `"Ticul"', add
label define mx10a_munic_lbl 31090 `"Timucuy"', add
label define mx10a_munic_lbl 31091 `"Tinum"', add
label define mx10a_munic_lbl 31092 `"Tixcacalcupul"', add
label define mx10a_munic_lbl 31093 `"Tixkokob"', add
label define mx10a_munic_lbl 31094 `"Tixmehuac"', add
label define mx10a_munic_lbl 31095 `"Tixpéhual"', add
label define mx10a_munic_lbl 31096 `"Tizimín"', add
label define mx10a_munic_lbl 31097 `"Tunkás"', add
label define mx10a_munic_lbl 31098 `"Tzucacab"', add
label define mx10a_munic_lbl 31099 `"Uayma"', add
label define mx10a_munic_lbl 31100 `"Ucú"', add
label define mx10a_munic_lbl 31101 `"Umán"', add
label define mx10a_munic_lbl 31102 `"Valladolid"', add
label define mx10a_munic_lbl 31103 `"Xocchel"', add
label define mx10a_munic_lbl 31104 `"Yaxcabá"', add
label define mx10a_munic_lbl 31105 `"Yaxkukul"', add
label define mx10a_munic_lbl 31106 `"Yobaín"', add
label define mx10a_munic_lbl 32001 `"Apozol"', add
label define mx10a_munic_lbl 32002 `"Apulco"', add
label define mx10a_munic_lbl 32003 `"Atolinga"', add
label define mx10a_munic_lbl 32004 `"Benito Juárez"', add
label define mx10a_munic_lbl 32005 `"Calera"', add
label define mx10a_munic_lbl 32006 `"Cañitas de Felipe Pescador"', add
label define mx10a_munic_lbl 32007 `"Concepción del Oro"', add
label define mx10a_munic_lbl 32008 `"Cuauhtémoc"', add
label define mx10a_munic_lbl 32009 `"Chalchihuites"', add
label define mx10a_munic_lbl 32010 `"Fresnillo"', add
label define mx10a_munic_lbl 32011 `"Trinidad García de la Cadena"', add
label define mx10a_munic_lbl 32012 `"Genaro Codina"', add
label define mx10a_munic_lbl 32013 `"General Enrique Estrada"', add
label define mx10a_munic_lbl 32014 `"General Francisco R. Murguía"', add
label define mx10a_munic_lbl 32015 `"El Plateado de Joaquín Amaro"', add
label define mx10a_munic_lbl 32016 `"General Pánfilo Natera"', add
label define mx10a_munic_lbl 32017 `"Guadalupe"', add
label define mx10a_munic_lbl 32018 `"Huanusco"', add
label define mx10a_munic_lbl 32019 `"Jalpa"', add
label define mx10a_munic_lbl 32020 `"Jerez"', add
label define mx10a_munic_lbl 32021 `"Jiménez del Teul"', add
label define mx10a_munic_lbl 32022 `"Juan Aldama"', add
label define mx10a_munic_lbl 32023 `"Juchipila"', add
label define mx10a_munic_lbl 32024 `"Loreto"', add
label define mx10a_munic_lbl 32025 `"Luis Moya"', add
label define mx10a_munic_lbl 32026 `"Mazapil"', add
label define mx10a_munic_lbl 32027 `"Melchor Ocampo"', add
label define mx10a_munic_lbl 32028 `"Mezquital del Oro"', add
label define mx10a_munic_lbl 32029 `"Miguel Auza"', add
label define mx10a_munic_lbl 32030 `"Momax"', add
label define mx10a_munic_lbl 32031 `"Monte Escobedo"', add
label define mx10a_munic_lbl 32032 `"Morelos"', add
label define mx10a_munic_lbl 32033 `"Moyahua de Estrada"', add
label define mx10a_munic_lbl 32034 `"Nochistlán de Mejía"', add
label define mx10a_munic_lbl 32035 `"Noria de Ángeles"', add
label define mx10a_munic_lbl 32036 `"Ojocaliente"', add
label define mx10a_munic_lbl 32037 `"Pánuco"', add
label define mx10a_munic_lbl 32038 `"Pinos"', add
label define mx10a_munic_lbl 32039 `"Río Grande"', add
label define mx10a_munic_lbl 32040 `"Sain Alto"', add
label define mx10a_munic_lbl 32041 `"El Salvador"', add
label define mx10a_munic_lbl 32042 `"Sombrerete"', add
label define mx10a_munic_lbl 32043 `"Susticacán"', add
label define mx10a_munic_lbl 32044 `"Tabasco"', add
label define mx10a_munic_lbl 32045 `"Tepechitlán"', add
label define mx10a_munic_lbl 32046 `"Tepetongo"', add
label define mx10a_munic_lbl 32047 `"Teúl de González Ortega"', add
label define mx10a_munic_lbl 32048 `"Tlaltenango de Sánchez Román"', add
label define mx10a_munic_lbl 32049 `"Valparaíso"', add
label define mx10a_munic_lbl 32050 `"Vetagrande"', add
label define mx10a_munic_lbl 32051 `"Villa de Cos"', add
label define mx10a_munic_lbl 32052 `"Villa García"', add
label define mx10a_munic_lbl 32053 `"Villa González Ortega"', add
label define mx10a_munic_lbl 32054 `"Villa Hidalgo"', add
label define mx10a_munic_lbl 32055 `"Villanueva"', add
label define mx10a_munic_lbl 32056 `"Zacatecas"', add
label define mx10a_munic_lbl 32057 `"Trancoso"', add
label define mx10a_munic_lbl 32058 `"Santa María de la Paz"', add
label values mx10a_munic mx10a_munic_lbl

label define mx10a_hhtype_lbl 1 `"Independent house"'
label define mx10a_hhtype_lbl 2 `"Apartment unit in a building"', add
label define mx10a_hhtype_lbl 3 `"Household in a tenement house"', add
label define mx10a_hhtype_lbl 4 `"Household in an attic room"', add
label define mx10a_hhtype_lbl 5 `"Place not built for habitation"', add
label define mx10a_hhtype_lbl 6 `"Mobile dwelling"', add
label define mx10a_hhtype_lbl 7 `"Refuge/shelter"', add
label define mx10a_hhtype_lbl 9 `"Unknown"', add
label values mx10a_hhtype mx10a_hhtype_lbl

label define mx10a_walls_lbl 01 `"Waste material"'
label define mx10a_walls_lbl 02 `"Cardboard sheet"', add
label define mx10a_walls_lbl 03 `"Asbestos or metal sheet"', add
label define mx10a_walls_lbl 04 `"Reeds, bamboo or palm"', add
label define mx10a_walls_lbl 05 `"Clay or mud"', add
label define mx10a_walls_lbl 06 `"Wood"', add
label define mx10a_walls_lbl 07 `"Adobe"', add
label define mx10a_walls_lbl 08 `"Brick, cement blocks, rock, quarry or concrete"', add
label define mx10a_walls_lbl 98 `"Unknown"', add
label define mx10a_walls_lbl 99 `"NIU (not in universe)"', add
label values mx10a_walls mx10a_walls_lbl

label define mx10a_roof_lbl 01 `"Waste material"'
label define mx10a_roof_lbl 02 `"Cardboard sheet"', add
label define mx10a_roof_lbl 03 `"Metal sheet"', add
label define mx10a_roof_lbl 04 `"Asbestos sheet"', add
label define mx10a_roof_lbl 05 `"Palm leaves or straw"', add
label define mx10a_roof_lbl 06 `"Wood or shingles"', add
label define mx10a_roof_lbl 07 `"Flat roof with wooden beams"', add
label define mx10a_roof_lbl 08 `"Slate/tile"', add
label define mx10a_roof_lbl 09 `"Concrete slabs or small beams with filler"', add
label define mx10a_roof_lbl 98 `"Unknown"', add
label define mx10a_roof_lbl 99 `"NIU (not in universe)"', add
label values mx10a_roof mx10a_roof_lbl

label define mx10a_floor_lbl 1 `"Dirt"'
label define mx10a_floor_lbl 2 `"Cement or foundation"', add
label define mx10a_floor_lbl 3 `"Wood, mosaic or other covering"', add
label define mx10a_floor_lbl 8 `"Unknown"', add
label define mx10a_floor_lbl 9 `"NIU (not in universe)"', add
label values mx10a_floor mx10a_floor_lbl

label define mx10a_kitchen_lbl 1 `"Yes"'
label define mx10a_kitchen_lbl 2 `"No"', add
label define mx10a_kitchen_lbl 8 `"Unknown"', add
label define mx10a_kitchen_lbl 9 `"NIU (not in universe)"', add
label values mx10a_kitchen mx10a_kitchen_lbl

label define mx10a_bedrooms_lbl 01 `"1"'
label define mx10a_bedrooms_lbl 02 `"2"', add
label define mx10a_bedrooms_lbl 03 `"3"', add
label define mx10a_bedrooms_lbl 04 `"4"', add
label define mx10a_bedrooms_lbl 05 `"5"', add
label define mx10a_bedrooms_lbl 06 `"6"', add
label define mx10a_bedrooms_lbl 07 `"7"', add
label define mx10a_bedrooms_lbl 08 `"8"', add
label define mx10a_bedrooms_lbl 09 `"9"', add
label define mx10a_bedrooms_lbl 10 `"10"', add
label define mx10a_bedrooms_lbl 11 `"11"', add
label define mx10a_bedrooms_lbl 12 `"12"', add
label define mx10a_bedrooms_lbl 13 `"13"', add
label define mx10a_bedrooms_lbl 14 `"14"', add
label define mx10a_bedrooms_lbl 15 `"15"', add
label define mx10a_bedrooms_lbl 16 `"16"', add
label define mx10a_bedrooms_lbl 17 `"17"', add
label define mx10a_bedrooms_lbl 18 `"18"', add
label define mx10a_bedrooms_lbl 19 `"19"', add
label define mx10a_bedrooms_lbl 20 `"20"', add
label define mx10a_bedrooms_lbl 21 `"21"', add
label define mx10a_bedrooms_lbl 22 `"22"', add
label define mx10a_bedrooms_lbl 23 `"23"', add
label define mx10a_bedrooms_lbl 24 `"24"', add
label define mx10a_bedrooms_lbl 25 `"25"', add
label define mx10a_bedrooms_lbl 98 `"Unknown"', add
label define mx10a_bedrooms_lbl 99 `"NIU (not in universe)"', add
label values mx10a_bedrooms mx10a_bedrooms_lbl

label define mx10a_rooms_lbl 01 `"1"'
label define mx10a_rooms_lbl 02 `"2"', add
label define mx10a_rooms_lbl 03 `"3"', add
label define mx10a_rooms_lbl 04 `"4"', add
label define mx10a_rooms_lbl 05 `"5"', add
label define mx10a_rooms_lbl 06 `"6"', add
label define mx10a_rooms_lbl 07 `"7"', add
label define mx10a_rooms_lbl 08 `"8"', add
label define mx10a_rooms_lbl 09 `"9"', add
label define mx10a_rooms_lbl 10 `"10"', add
label define mx10a_rooms_lbl 11 `"11"', add
label define mx10a_rooms_lbl 12 `"12"', add
label define mx10a_rooms_lbl 13 `"13"', add
label define mx10a_rooms_lbl 14 `"14"', add
label define mx10a_rooms_lbl 15 `"15"', add
label define mx10a_rooms_lbl 16 `"16"', add
label define mx10a_rooms_lbl 17 `"17"', add
label define mx10a_rooms_lbl 18 `"18"', add
label define mx10a_rooms_lbl 19 `"19"', add
label define mx10a_rooms_lbl 20 `"20"', add
label define mx10a_rooms_lbl 21 `"21"', add
label define mx10a_rooms_lbl 22 `"22"', add
label define mx10a_rooms_lbl 23 `"23"', add
label define mx10a_rooms_lbl 24 `"24"', add
label define mx10a_rooms_lbl 25 `"25"', add
label define mx10a_rooms_lbl 98 `"Unknown"', add
label define mx10a_rooms_lbl 99 `"NIU (not in universe)"', add
label values mx10a_rooms mx10a_rooms_lbl

label define mx10a_electric_lbl 1 `"Yes"'
label define mx10a_electric_lbl 2 `"No"', add
label define mx10a_electric_lbl 8 `"Unknown"', add
label define mx10a_electric_lbl 9 `"NIU (not in universe)"', add
label values mx10a_electric mx10a_electric_lbl

label define mx10a_pipedwtr_lbl 1 `"Piped water inside the dwelling"'
label define mx10a_pipedwtr_lbl 2 `"Piped water outside the dwelling, but on the property"', add
label define mx10a_pipedwtr_lbl 3 `"Piped water from a public tap or hydrant"', add
label define mx10a_pipedwtr_lbl 4 `"Piped water that is transported from other dwellings"', add
label define mx10a_pipedwtr_lbl 5 `"Water from a tanker truck"', add
label define mx10a_pipedwtr_lbl 6 `"Water from a well, river, lake, stream or another source"', add
label define mx10a_pipedwtr_lbl 8 `"Unknown"', add
label define mx10a_pipedwtr_lbl 9 `"NIU (not in universe)"', add
label values mx10a_pipedwtr mx10a_pipedwtr_lbl

label define mx10a_freqwtr_lbl 1 `"Daily"'
label define mx10a_freqwtr_lbl 2 `"Every three days"', add
label define mx10a_freqwtr_lbl 3 `"Two times per week"', add
label define mx10a_freqwtr_lbl 4 `"One time per week"', add
label define mx10a_freqwtr_lbl 5 `"Once in awhile"', add
label define mx10a_freqwtr_lbl 8 `"Unknown"', add
label define mx10a_freqwtr_lbl 9 `"NIU (not in universe)"', add
label values mx10a_freqwtr mx10a_freqwtr_lbl

label define mx10a_toilet_lbl 1 `"Yes"'
label define mx10a_toilet_lbl 2 `"No"', add
label define mx10a_toilet_lbl 8 `"Unknown"', add
label define mx10a_toilet_lbl 9 `"NIU (not in universe)"', add
label values mx10a_toilet mx10a_toilet_lbl

label define mx10a_extoilet_lbl 1 `"Yes"'
label define mx10a_extoilet_lbl 2 `"No"', add
label define mx10a_extoilet_lbl 8 `"Unknown"', add
label define mx10a_extoilet_lbl 9 `"NIU (not in universe)"', add
label values mx10a_extoilet mx10a_extoilet_lbl

label define mx10a_tytoilet_lbl 1 `"Has direct water flushing"'
label define mx10a_tytoilet_lbl 2 `"Water is poured in with a bucket"', add
label define mx10a_tytoilet_lbl 3 `"Water cannot be poured in"', add
label define mx10a_tytoilet_lbl 8 `"Unknown"', add
label define mx10a_tytoilet_lbl 9 `"NIU (not in universe)"', add
label values mx10a_tytoilet mx10a_tytoilet_lbl

label define mx10a_sewage_lbl 1 `"Public system"'
label define mx10a_sewage_lbl 2 `"Septic tank"', add
label define mx10a_sewage_lbl 3 `"Piping that goes to a ravine or gully"', add
label define mx10a_sewage_lbl 4 `"Piping that goes to a river, lake or sea"', add
label define mx10a_sewage_lbl 5 `"It doesn't have drainage"', add
label define mx10a_sewage_lbl 8 `"Unknown"', add
label define mx10a_sewage_lbl 9 `"NIU (not in universe)"', add
label values mx10a_sewage mx10a_sewage_lbl

label define mx10a_fuelcook_lbl 1 `"Gas from a cylinder or tank (stationary)"'
label define mx10a_fuelcook_lbl 2 `"Natural gas or from piping"', add
label define mx10a_fuelcook_lbl 3 `"Firewood"', add
label define mx10a_fuelcook_lbl 4 `"Charcoal"', add
label define mx10a_fuelcook_lbl 5 `"Electricity"', add
label define mx10a_fuelcook_lbl 6 `"Other fuel"', add
label define mx10a_fuelcook_lbl 8 `"Unknown"', add
label define mx10a_fuelcook_lbl 9 `"NIU (not in universe)"', add
label values mx10a_fuelcook mx10a_fuelcook_lbl

label define mx10a_waste_lbl 01 `"Picked up by a truck or cart"'
label define mx10a_waste_lbl 02 `"Thrown in a public garbage dump"', add
label define mx10a_waste_lbl 03 `"Thrown in a dumpster or tank"', add
label define mx10a_waste_lbl 04 `"Burned"', add
label define mx10a_waste_lbl 05 `"Buried"', add
label define mx10a_waste_lbl 06 `"Thrown on a vacant property or street"', add
label define mx10a_waste_lbl 07 `"Thrown in a ravine or gully"', add
label define mx10a_waste_lbl 08 `"Thrown in the river, lake or sea"', add
label define mx10a_waste_lbl 98 `"Unknown"', add
label define mx10a_waste_lbl 99 `"NIU (not in universe)"', add
label values mx10a_waste mx10a_waste_lbl

label define mx10a_ownershp_lbl 1 `"Owner or propietor"'
label define mx10a_ownershp_lbl 2 `"Pays rent"', add
label define mx10a_ownershp_lbl 3 `"Occupies it in another way"', add
label define mx10a_ownershp_lbl 8 `"Unknown"', add
label define mx10a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values mx10a_ownershp mx10a_ownershp_lbl

label define mx10a_acquisit_lbl 1 `"Purchased it when already built"'
label define mx10a_acquisit_lbl 2 `"Had it built"', add
label define mx10a_acquisit_lbl 3 `"Built it himself"', add
label define mx10a_acquisit_lbl 4 `"Obtained it in another way"', add
label define mx10a_acquisit_lbl 8 `"Unknown"', add
label define mx10a_acquisit_lbl 9 `"NIU (not in universe)"', add
label values mx10a_acquisit mx10a_acquisit_lbl

label define mx10a_gasstove_lbl 1 `"Yes"'
label define mx10a_gasstove_lbl 2 `"No"', add
label define mx10a_gasstove_lbl 8 `"Unknown"', add
label define mx10a_gasstove_lbl 9 `"NIU (not in universe)"', add
label values mx10a_gasstove mx10a_gasstove_lbl

label define mx10a_woodstv_lbl 1 `"Yes"'
label define mx10a_woodstv_lbl 2 `"No"', add
label define mx10a_woodstv_lbl 8 `"Unknown"', add
label define mx10a_woodstv_lbl 9 `"NIU (not in universe)"', add
label values mx10a_woodstv mx10a_woodstv_lbl

label define mx10a_watrtank_lbl 1 `"Yes"'
label define mx10a_watrtank_lbl 2 `"No"', add
label define mx10a_watrtank_lbl 8 `"Unknown"', add
label define mx10a_watrtank_lbl 9 `"NIU (not in universe)"', add
label values mx10a_watrtank mx10a_watrtank_lbl

label define mx10a_watheat_lbl 1 `"Yes"'
label define mx10a_watheat_lbl 2 `"No"', add
label define mx10a_watheat_lbl 8 `"Unknown"', add
label define mx10a_watheat_lbl 9 `"NIU (not in universe)"', add
label values mx10a_watheat mx10a_watheat_lbl

label define mx10a_cistern_lbl 1 `"Yes"'
label define mx10a_cistern_lbl 2 `"No"', add
label define mx10a_cistern_lbl 8 `"Unknown"', add
label define mx10a_cistern_lbl 9 `"NIU (not in universe)"', add
label values mx10a_cistern mx10a_cistern_lbl

label define mx10a_shower_lbl 1 `"Yes"'
label define mx10a_shower_lbl 2 `"No"', add
label define mx10a_shower_lbl 8 `"Unknown"', add
label define mx10a_shower_lbl 9 `"NIU (not in universe)"', add
label values mx10a_shower mx10a_shower_lbl

label define mx10a_elemeter_lbl 1 `"Yes"'
label define mx10a_elemeter_lbl 2 `"No"', add
label define mx10a_elemeter_lbl 8 `"Unknown"', add
label define mx10a_elemeter_lbl 9 `"NIU (not in universe)"', add
label values mx10a_elemeter mx10a_elemeter_lbl

label define mx10a_radio_lbl 1 `"Yes"'
label define mx10a_radio_lbl 2 `"No"', add
label define mx10a_radio_lbl 8 `"Unknown"', add
label define mx10a_radio_lbl 9 `"NIU (not in universe)"', add
label values mx10a_radio mx10a_radio_lbl

label define mx10a_tv_lbl 1 `"Yes"'
label define mx10a_tv_lbl 2 `"No"', add
label define mx10a_tv_lbl 8 `"Unknown"', add
label define mx10a_tv_lbl 9 `"NIU (not in universe)"', add
label values mx10a_tv mx10a_tv_lbl

label define mx10a_refridge_lbl 1 `"Yes"'
label define mx10a_refridge_lbl 2 `"No"', add
label define mx10a_refridge_lbl 8 `"Unknown"', add
label define mx10a_refridge_lbl 9 `"NIU (not in universe)"', add
label values mx10a_refridge mx10a_refridge_lbl

label define mx10a_washer_lbl 1 `"Yes"'
label define mx10a_washer_lbl 2 `"No"', add
label define mx10a_washer_lbl 8 `"Unknown"', add
label define mx10a_washer_lbl 9 `"NIU (not in universe)"', add
label values mx10a_washer mx10a_washer_lbl

label define mx10a_auto_lbl 1 `"Yes"'
label define mx10a_auto_lbl 2 `"No"', add
label define mx10a_auto_lbl 8 `"Unknown"', add
label define mx10a_auto_lbl 9 `"NIU (not in universe)"', add
label values mx10a_auto mx10a_auto_lbl

label define mx10a_computr_lbl 1 `"Yes"'
label define mx10a_computr_lbl 2 `"No"', add
label define mx10a_computr_lbl 8 `"Unknown"', add
label define mx10a_computr_lbl 9 `"NIU (not in universe)"', add
label values mx10a_computr mx10a_computr_lbl

label define mx10a_phone_lbl 1 `"Yes"'
label define mx10a_phone_lbl 2 `"No"', add
label define mx10a_phone_lbl 8 `"Unknown"', add
label define mx10a_phone_lbl 9 `"NIU (not in universe)"', add
label values mx10a_phone mx10a_phone_lbl

label define mx10a_cell_lbl 1 `"Yes"'
label define mx10a_cell_lbl 2 `"No"', add
label define mx10a_cell_lbl 8 `"Unknown"', add
label define mx10a_cell_lbl 9 `"NIU (not in universe)"', add
label values mx10a_cell mx10a_cell_lbl

label define mx10a_internet_lbl 1 `"Yes"'
label define mx10a_internet_lbl 2 `"No"', add
label define mx10a_internet_lbl 8 `"Unknown"', add
label define mx10a_internet_lbl 9 `"NIU (not in universe)"', add
label values mx10a_internet mx10a_internet_lbl

label define mx10a_persons_lbl 01 `"1"'
label define mx10a_persons_lbl 02 `"2"', add
label define mx10a_persons_lbl 03 `"3"', add
label define mx10a_persons_lbl 04 `"4"', add
label define mx10a_persons_lbl 05 `"5"', add
label define mx10a_persons_lbl 06 `"6"', add
label define mx10a_persons_lbl 07 `"7"', add
label define mx10a_persons_lbl 08 `"8"', add
label define mx10a_persons_lbl 09 `"9"', add
label define mx10a_persons_lbl 10 `"10"', add
label define mx10a_persons_lbl 11 `"11"', add
label define mx10a_persons_lbl 12 `"12"', add
label define mx10a_persons_lbl 13 `"13"', add
label define mx10a_persons_lbl 14 `"14"', add
label define mx10a_persons_lbl 15 `"15"', add
label define mx10a_persons_lbl 16 `"16"', add
label define mx10a_persons_lbl 17 `"17"', add
label define mx10a_persons_lbl 18 `"18"', add
label define mx10a_persons_lbl 19 `"19"', add
label define mx10a_persons_lbl 20 `"20"', add
label define mx10a_persons_lbl 21 `"21"', add
label define mx10a_persons_lbl 22 `"22"', add
label define mx10a_persons_lbl 23 `"23"', add
label define mx10a_persons_lbl 24 `"24"', add
label define mx10a_persons_lbl 25 `"25"', add
label define mx10a_persons_lbl 26 `"26"', add
label define mx10a_persons_lbl 27 `"27"', add
label define mx10a_persons_lbl 28 `"28"', add
label define mx10a_persons_lbl 29 `"29"', add
label define mx10a_persons_lbl 30 `"30"', add
label define mx10a_persons_lbl 31 `"31"', add
label define mx10a_persons_lbl 32 `"32"', add
label define mx10a_persons_lbl 33 `"33"', add
label define mx10a_persons_lbl 34 `"34"', add
label define mx10a_persons_lbl 35 `"35"', add
label define mx10a_persons_lbl 38 `"38"', add
label values mx10a_persons mx10a_persons_lbl

label define mx10a_famtype_lbl 1 `"Nuclear family"'
label define mx10a_famtype_lbl 2 `"Extended family"', add
label define mx10a_famtype_lbl 3 `"Combined family"', add
label define mx10a_famtype_lbl 4 `"Unspecified family"', add
label define mx10a_famtype_lbl 5 `"One person family"', add
label define mx10a_famtype_lbl 6 `"Co-resident family"', add
label define mx10a_famtype_lbl 9 `"Unknown"', add
label values mx10a_famtype mx10a_famtype_lbl

label define mx10a_intmigs_lbl 1 `"Yes"'
label define mx10a_intmigs_lbl 2 `"No"', add
label define mx10a_intmigs_lbl 9 `"Unknown"', add
label values mx10a_intmigs mx10a_intmigs_lbl

label define mx10a_migrants_lbl 00 `"NIU (not in universe)"'
label define mx10a_migrants_lbl 01 `"1"', add
label define mx10a_migrants_lbl 02 `"2"', add
label define mx10a_migrants_lbl 03 `"3"', add
label define mx10a_migrants_lbl 04 `"4"', add
label define mx10a_migrants_lbl 05 `"5"', add
label define mx10a_migrants_lbl 06 `"6"', add
label define mx10a_migrants_lbl 07 `"7"', add
label define mx10a_migrants_lbl 08 `"8"', add
label define mx10a_migrants_lbl 09 `"9"', add
label define mx10a_migrants_lbl 10 `"10"', add
label define mx10a_migrants_lbl 12 `"12"', add
label define mx10a_migrants_lbl 13 `"13"', add
label define mx10a_migrants_lbl 14 `"14"', add
label values mx10a_migrants mx10a_migrants_lbl

label define mx10a_onemeal_lbl 1 `"Yes"'
label define mx10a_onemeal_lbl 2 `"No"', add
label define mx10a_onemeal_lbl 9 `"Unknown"', add
label values mx10a_onemeal mx10a_onemeal_lbl

label define mx10a_nomeal_lbl 1 `"Yes"'
label define mx10a_nomeal_lbl 2 `"No"', add
label define mx10a_nomeal_lbl 9 `"Unknown"', add
label values mx10a_nomeal mx10a_nomeal_lbl

label define mx10a_nofood_lbl 1 `"Yes"'
label define mx10a_nofood_lbl 2 `"No"', add
label define mx10a_nofood_lbl 9 `"Unknown"', add
label values mx10a_nofood mx10a_nofood_lbl

label define mx10a_inchome_lbl 000000 `"They do not receive income"'
label define mx10a_inchome_lbl 999998 `"More than 999,999 in income"', add
label define mx10a_inchome_lbl 999999 `"Unknown"', add
label values mx10a_inchome mx10a_inchome_lbl

label define mx10a_sizepl_lbl 1 `"Fewer than 2,500 inhabitants"'
label define mx10a_sizepl_lbl 2 `"2,500 to 14,999 inhabitants"', add
label define mx10a_sizepl_lbl 3 `"15,000 to 99,999 inhabitants"', add
label define mx10a_sizepl_lbl 4 `"100,000 or more inhabitants"', add
label values mx10a_sizepl mx10a_sizepl_lbl

label define mx10a_municens_lbl 1 `"Yes"'
label define mx10a_municens_lbl 2 `"No"', add
label values mx10a_municens mx10a_municens_lbl

label define mx10a_muniihd_lbl 1 `"Yes"'
label define mx10a_muniihd_lbl 2 `"No"', add
label values mx10a_muniihd mx10a_muniihd_lbl

label define mx10a_pernum_lbl 00 `"Household record"'
label define mx10a_pernum_lbl 01 `"1"', add
label define mx10a_pernum_lbl 02 `"2"', add
label define mx10a_pernum_lbl 03 `"3"', add
label define mx10a_pernum_lbl 04 `"4"', add
label define mx10a_pernum_lbl 05 `"5"', add
label define mx10a_pernum_lbl 06 `"6"', add
label define mx10a_pernum_lbl 07 `"7"', add
label define mx10a_pernum_lbl 08 `"8"', add
label define mx10a_pernum_lbl 09 `"9"', add
label define mx10a_pernum_lbl 10 `"10"', add
label define mx10a_pernum_lbl 11 `"11"', add
label define mx10a_pernum_lbl 12 `"12"', add
label define mx10a_pernum_lbl 13 `"13"', add
label define mx10a_pernum_lbl 14 `"14"', add
label define mx10a_pernum_lbl 15 `"15"', add
label define mx10a_pernum_lbl 16 `"16"', add
label define mx10a_pernum_lbl 17 `"17"', add
label define mx10a_pernum_lbl 18 `"18"', add
label define mx10a_pernum_lbl 19 `"19"', add
label define mx10a_pernum_lbl 20 `"20"', add
label define mx10a_pernum_lbl 21 `"21"', add
label define mx10a_pernum_lbl 22 `"22"', add
label define mx10a_pernum_lbl 23 `"23"', add
label define mx10a_pernum_lbl 24 `"24"', add
label define mx10a_pernum_lbl 25 `"25"', add
label define mx10a_pernum_lbl 26 `"26"', add
label define mx10a_pernum_lbl 27 `"27"', add
label define mx10a_pernum_lbl 28 `"28"', add
label define mx10a_pernum_lbl 29 `"29"', add
label define mx10a_pernum_lbl 30 `"30"', add
label define mx10a_pernum_lbl 31 `"31"', add
label define mx10a_pernum_lbl 32 `"32"', add
label define mx10a_pernum_lbl 33 `"33"', add
label define mx10a_pernum_lbl 34 `"34"', add
label define mx10a_pernum_lbl 35 `"35"', add
label define mx10a_pernum_lbl 36 `"36"', add
label define mx10a_pernum_lbl 37 `"37"', add
label define mx10a_pernum_lbl 38 `"38"', add
label values mx10a_pernum mx10a_pernum_lbl

label define mx10a_personno_lbl 01 `"1"'
label define mx10a_personno_lbl 02 `"2"', add
label define mx10a_personno_lbl 03 `"3"', add
label define mx10a_personno_lbl 04 `"4"', add
label define mx10a_personno_lbl 05 `"5"', add
label define mx10a_personno_lbl 06 `"6"', add
label define mx10a_personno_lbl 07 `"7"', add
label define mx10a_personno_lbl 08 `"8"', add
label define mx10a_personno_lbl 09 `"9"', add
label define mx10a_personno_lbl 10 `"10"', add
label define mx10a_personno_lbl 11 `"11"', add
label define mx10a_personno_lbl 12 `"12"', add
label define mx10a_personno_lbl 13 `"13"', add
label define mx10a_personno_lbl 14 `"14"', add
label define mx10a_personno_lbl 15 `"15"', add
label define mx10a_personno_lbl 16 `"16"', add
label define mx10a_personno_lbl 17 `"17"', add
label define mx10a_personno_lbl 18 `"18"', add
label define mx10a_personno_lbl 19 `"19"', add
label define mx10a_personno_lbl 20 `"20"', add
label define mx10a_personno_lbl 21 `"21"', add
label define mx10a_personno_lbl 22 `"22"', add
label define mx10a_personno_lbl 23 `"23"', add
label define mx10a_personno_lbl 24 `"24"', add
label define mx10a_personno_lbl 25 `"25"', add
label define mx10a_personno_lbl 26 `"26"', add
label define mx10a_personno_lbl 27 `"27"', add
label define mx10a_personno_lbl 28 `"28"', add
label define mx10a_personno_lbl 29 `"29"', add
label define mx10a_personno_lbl 30 `"30"', add
label define mx10a_personno_lbl 31 `"31"', add
label define mx10a_personno_lbl 32 `"32"', add
label define mx10a_personno_lbl 33 `"33"', add
label define mx10a_personno_lbl 34 `"34"', add
label define mx10a_personno_lbl 35 `"35"', add
label define mx10a_personno_lbl 36 `"36"', add
label define mx10a_personno_lbl 37 `"37"', add
label define mx10a_personno_lbl 38 `"38"', add
label define mx10a_personno_lbl 39 `"39"', add
label define mx10a_personno_lbl 40 `"40"', add
label define mx10a_personno_lbl 41 `"41"', add
label define mx10a_personno_lbl 42 `"42"', add
label define mx10a_personno_lbl 43 `"43"', add
label define mx10a_personno_lbl 44 `"44"', add
label define mx10a_personno_lbl 45 `"45"', add
label define mx10a_personno_lbl 47 `"47"', add
label define mx10a_personno_lbl 48 `"48"', add
label define mx10a_personno_lbl 50 `"50"', add
label define mx10a_personno_lbl 51 `"51"', add
label define mx10a_personno_lbl 52 `"52"', add
label define mx10a_personno_lbl 53 `"53"', add
label define mx10a_personno_lbl 54 `"54"', add
label define mx10a_personno_lbl 55 `"55"', add
label define mx10a_personno_lbl 56 `"56"', add
label define mx10a_personno_lbl 58 `"58"', add
label define mx10a_personno_lbl 59 `"59"', add
label define mx10a_personno_lbl 60 `"60"', add
label define mx10a_personno_lbl 61 `"61"', add
label define mx10a_personno_lbl 62 `"62"', add
label define mx10a_personno_lbl 63 `"63"', add
label define mx10a_personno_lbl 64 `"64"', add
label define mx10a_personno_lbl 65 `"65"', add
label define mx10a_personno_lbl 66 `"66"', add
label define mx10a_personno_lbl 69 `"69"', add
label define mx10a_personno_lbl 70 `"70"', add
label define mx10a_personno_lbl 71 `"71"', add
label define mx10a_personno_lbl 72 `"72"', add
label define mx10a_personno_lbl 73 `"73"', add
label define mx10a_personno_lbl 74 `"74"', add
label define mx10a_personno_lbl 75 `"75"', add
label define mx10a_personno_lbl 76 `"76"', add
label define mx10a_personno_lbl 77 `"77"', add
label define mx10a_personno_lbl 78 `"78"', add
label define mx10a_personno_lbl 81 `"81"', add
label define mx10a_personno_lbl 82 `"82"', add
label define mx10a_personno_lbl 83 `"83"', add
label define mx10a_personno_lbl 84 `"84"', add
label define mx10a_personno_lbl 85 `"85"', add
label define mx10a_personno_lbl 87 `"87"', add
label define mx10a_personno_lbl 88 `"88"', add
label define mx10a_personno_lbl 91 `"91"', add
label define mx10a_personno_lbl 92 `"92"', add
label define mx10a_personno_lbl 93 `"93"', add
label define mx10a_personno_lbl 94 `"94"', add
label define mx10a_personno_lbl 96 `"96"', add
label define mx10a_personno_lbl 98 `"98"', add
label values mx10a_personno mx10a_personno_lbl

label define mx10a_sex_lbl 1 `"Male"'
label define mx10a_sex_lbl 2 `"Female"', add
label values mx10a_sex mx10a_sex_lbl

label define mx10a_age_lbl 000 `"Younger than 1 year"'
label define mx10a_age_lbl 001 `"1"', add
label define mx10a_age_lbl 002 `"2"', add
label define mx10a_age_lbl 003 `"3"', add
label define mx10a_age_lbl 004 `"4"', add
label define mx10a_age_lbl 005 `"5"', add
label define mx10a_age_lbl 006 `"6"', add
label define mx10a_age_lbl 007 `"7"', add
label define mx10a_age_lbl 008 `"8"', add
label define mx10a_age_lbl 009 `"9"', add
label define mx10a_age_lbl 010 `"10"', add
label define mx10a_age_lbl 011 `"11"', add
label define mx10a_age_lbl 012 `"12"', add
label define mx10a_age_lbl 013 `"13"', add
label define mx10a_age_lbl 014 `"14"', add
label define mx10a_age_lbl 015 `"15"', add
label define mx10a_age_lbl 016 `"16"', add
label define mx10a_age_lbl 017 `"17"', add
label define mx10a_age_lbl 018 `"18"', add
label define mx10a_age_lbl 019 `"19"', add
label define mx10a_age_lbl 020 `"20"', add
label define mx10a_age_lbl 021 `"21"', add
label define mx10a_age_lbl 022 `"22"', add
label define mx10a_age_lbl 023 `"23"', add
label define mx10a_age_lbl 024 `"24"', add
label define mx10a_age_lbl 025 `"25"', add
label define mx10a_age_lbl 026 `"26"', add
label define mx10a_age_lbl 027 `"27"', add
label define mx10a_age_lbl 028 `"28"', add
label define mx10a_age_lbl 029 `"29"', add
label define mx10a_age_lbl 030 `"30"', add
label define mx10a_age_lbl 031 `"31"', add
label define mx10a_age_lbl 032 `"32"', add
label define mx10a_age_lbl 033 `"33"', add
label define mx10a_age_lbl 034 `"34"', add
label define mx10a_age_lbl 035 `"35"', add
label define mx10a_age_lbl 036 `"36"', add
label define mx10a_age_lbl 037 `"37"', add
label define mx10a_age_lbl 038 `"38"', add
label define mx10a_age_lbl 039 `"39"', add
label define mx10a_age_lbl 040 `"40"', add
label define mx10a_age_lbl 041 `"41"', add
label define mx10a_age_lbl 042 `"42"', add
label define mx10a_age_lbl 043 `"43"', add
label define mx10a_age_lbl 044 `"44"', add
label define mx10a_age_lbl 045 `"45"', add
label define mx10a_age_lbl 046 `"46"', add
label define mx10a_age_lbl 047 `"47"', add
label define mx10a_age_lbl 048 `"48"', add
label define mx10a_age_lbl 049 `"49"', add
label define mx10a_age_lbl 050 `"50"', add
label define mx10a_age_lbl 051 `"51"', add
label define mx10a_age_lbl 052 `"52"', add
label define mx10a_age_lbl 053 `"53"', add
label define mx10a_age_lbl 054 `"54"', add
label define mx10a_age_lbl 055 `"55"', add
label define mx10a_age_lbl 056 `"56"', add
label define mx10a_age_lbl 057 `"57"', add
label define mx10a_age_lbl 058 `"58"', add
label define mx10a_age_lbl 059 `"59"', add
label define mx10a_age_lbl 060 `"60"', add
label define mx10a_age_lbl 061 `"61"', add
label define mx10a_age_lbl 062 `"62"', add
label define mx10a_age_lbl 063 `"63"', add
label define mx10a_age_lbl 064 `"64"', add
label define mx10a_age_lbl 065 `"65"', add
label define mx10a_age_lbl 066 `"66"', add
label define mx10a_age_lbl 067 `"67"', add
label define mx10a_age_lbl 068 `"68"', add
label define mx10a_age_lbl 069 `"69"', add
label define mx10a_age_lbl 070 `"70"', add
label define mx10a_age_lbl 071 `"71"', add
label define mx10a_age_lbl 072 `"72"', add
label define mx10a_age_lbl 073 `"73"', add
label define mx10a_age_lbl 074 `"74"', add
label define mx10a_age_lbl 075 `"75"', add
label define mx10a_age_lbl 076 `"76"', add
label define mx10a_age_lbl 077 `"77"', add
label define mx10a_age_lbl 078 `"78"', add
label define mx10a_age_lbl 079 `"79"', add
label define mx10a_age_lbl 080 `"80"', add
label define mx10a_age_lbl 081 `"81"', add
label define mx10a_age_lbl 082 `"82"', add
label define mx10a_age_lbl 083 `"83"', add
label define mx10a_age_lbl 084 `"84"', add
label define mx10a_age_lbl 085 `"85"', add
label define mx10a_age_lbl 086 `"86"', add
label define mx10a_age_lbl 087 `"87"', add
label define mx10a_age_lbl 088 `"88"', add
label define mx10a_age_lbl 089 `"89"', add
label define mx10a_age_lbl 090 `"90"', add
label define mx10a_age_lbl 091 `"91"', add
label define mx10a_age_lbl 092 `"92"', add
label define mx10a_age_lbl 093 `"93"', add
label define mx10a_age_lbl 094 `"94"', add
label define mx10a_age_lbl 095 `"95"', add
label define mx10a_age_lbl 096 `"96"', add
label define mx10a_age_lbl 097 `"97"', add
label define mx10a_age_lbl 098 `"98"', add
label define mx10a_age_lbl 099 `"99"', add
label define mx10a_age_lbl 100 `"100+"', add
label define mx10a_age_lbl 999 `"Unknown"', add
label values mx10a_age mx10a_age_lbl

label define mx10a_relate_lbl 01 `"Head of household"'
label define mx10a_relate_lbl 02 `"Spouse or companion"', add
label define mx10a_relate_lbl 03 `"Child"', add
label define mx10a_relate_lbl 04 `"Grandchild"', add
label define mx10a_relate_lbl 05 `"Child in-law"', add
label define mx10a_relate_lbl 06 `"Parent"', add
label define mx10a_relate_lbl 07 `"Parent in-law"', add
label define mx10a_relate_lbl 08 `"Other relationship"', add
label define mx10a_relate_lbl 09 `"No relationship"', add
label define mx10a_relate_lbl 99 `"Unknown"', add
label values mx10a_relate mx10a_relate_lbl

label define mx10a_relate2_lbl 101 `"Household head"'
label define mx10a_relate2_lbl 201 `"Spouse"', add
label define mx10a_relate2_lbl 202 `"Unmarried partner"', add
label define mx10a_relate2_lbl 301 `"Child"', add
label define mx10a_relate2_lbl 302 `"Adopted child"', add
label define mx10a_relate2_lbl 303 `"Step child"', add
label define mx10a_relate2_lbl 304 `"Foster child"', add
label define mx10a_relate2_lbl 401 `"Domestic worker"', add
label define mx10a_relate2_lbl 405 `"Nanny"', add
label define mx10a_relate2_lbl 413 `"Escort"', add
label define mx10a_relate2_lbl 421 `"Relative of domestic worker"', add
label define mx10a_relate2_lbl 501 `"No relationship"', add
label define mx10a_relate2_lbl 502 `"Tutor"', add
label define mx10a_relate2_lbl 601 `"Mother"', add
label define mx10a_relate2_lbl 602 `"Stepparent"', add
label define mx10a_relate2_lbl 603 `"Sibling"', add
label define mx10a_relate2_lbl 604 `"Half/step sibling"', add
label define mx10a_relate2_lbl 606 `"Grandparent"', add
label define mx10a_relate2_lbl 607 `"Great grandparent/great great grandparent"', add
label define mx10a_relate2_lbl 609 `"Granchild"', add
label define mx10a_relate2_lbl 610 `"Great grandchild/great great grandchild"', add
label define mx10a_relate2_lbl 612 `"Aunt/uncle"', add
label define mx10a_relate2_lbl 613 `"Niece/nephew"', add
label define mx10a_relate2_lbl 614 `"Cousin"', add
label define mx10a_relate2_lbl 615 `"Parent-in-law"', add
label define mx10a_relate2_lbl 616 `"Parent in-law of one's child"', add
label define mx10a_relate2_lbl 617 `"Child in law"', add
label define mx10a_relate2_lbl 618 `"Brother-/sister in-law"', add
label define mx10a_relate2_lbl 619 `"Sibling of sibling-in-law"', add
label define mx10a_relate2_lbl 620 `"Godparent"', add
label define mx10a_relate2_lbl 621 `"Godchild"', add
label define mx10a_relate2_lbl 622 `"Godfather of one's child"', add
label define mx10a_relate2_lbl 623 `"Other relative"', add
label define mx10a_relate2_lbl 701 `"Guest"', add
label define mx10a_relate2_lbl 998 `"Unknown"', add
label define mx10a_relate2_lbl 999 `"NIU (not in universe)"', add
label values mx10a_relate2 mx10a_relate2_lbl

label define mx10a_momhh_lbl 1 `"Mother lives in this household"'
label define mx10a_momhh_lbl 2 `"Mother does not live in this household"', add
label define mx10a_momhh_lbl 9 `"Unknown"', add
label values mx10a_momhh mx10a_momhh_lbl

label define mx10a_pophh_lbl 1 `"Father lives in this household"'
label define mx10a_pophh_lbl 2 `"The father does not live in this household"', add
label define mx10a_pophh_lbl 9 `"Unknown"', add
label values mx10a_pophh mx10a_pophh_lbl

label define mx10a_bplstate_lbl 01 `"Aguascalientes"'
label define mx10a_bplstate_lbl 02 `"Baja California"', add
label define mx10a_bplstate_lbl 03 `"Baja California Sur"', add
label define mx10a_bplstate_lbl 04 `"Campeche"', add
label define mx10a_bplstate_lbl 05 `"Coahuila de Zaragoza"', add
label define mx10a_bplstate_lbl 06 `"Colima"', add
label define mx10a_bplstate_lbl 07 `"Chiapas"', add
label define mx10a_bplstate_lbl 08 `"Chihuahua"', add
label define mx10a_bplstate_lbl 09 `"Distrito Federal"', add
label define mx10a_bplstate_lbl 10 `"Durango"', add
label define mx10a_bplstate_lbl 11 `"Guanajuato"', add
label define mx10a_bplstate_lbl 12 `"Guerrero"', add
label define mx10a_bplstate_lbl 13 `"Hidalgo"', add
label define mx10a_bplstate_lbl 14 `"Jalisco"', add
label define mx10a_bplstate_lbl 15 `"México"', add
label define mx10a_bplstate_lbl 16 `"Michoacán de Ocampo"', add
label define mx10a_bplstate_lbl 17 `"Morelos"', add
label define mx10a_bplstate_lbl 18 `"Nayarit"', add
label define mx10a_bplstate_lbl 19 `"Nuevo León"', add
label define mx10a_bplstate_lbl 20 `"Oaxaca"', add
label define mx10a_bplstate_lbl 21 `"Puebla"', add
label define mx10a_bplstate_lbl 22 `"Querétaro"', add
label define mx10a_bplstate_lbl 23 `"Quintana Roo"', add
label define mx10a_bplstate_lbl 24 `"San Luis Potosí"', add
label define mx10a_bplstate_lbl 25 `"Sinaloa"', add
label define mx10a_bplstate_lbl 26 `"Sonora"', add
label define mx10a_bplstate_lbl 27 `"Tabasco"', add
label define mx10a_bplstate_lbl 28 `"Tamaulipas"', add
label define mx10a_bplstate_lbl 29 `"Tlaxcala"', add
label define mx10a_bplstate_lbl 30 `"Veracruz de Ignacio de la Llave"', add
label define mx10a_bplstate_lbl 31 `"Yucatán"', add
label define mx10a_bplstate_lbl 32 `"Zacatecas"', add
label define mx10a_bplstate_lbl 98 `"Unknown"', add
label define mx10a_bplstate_lbl 99 `"Foreign-born"', add
label values mx10a_bplstate mx10a_bplstate_lbl

label define mx10a_bplcntry_lbl 100 `"Africa, no country specified"'
label define mx10a_bplcntry_lbl 101 `"Angola"', add
label define mx10a_bplcntry_lbl 102 `"Algeria"', add
label define mx10a_bplcntry_lbl 109 `"Cameroon"', add
label define mx10a_bplcntry_lbl 113 `"Republic of the Congo"', add
label define mx10a_bplcntry_lbl 114 `"Ivory Coast"', add
label define mx10a_bplcntry_lbl 117 `"Egypt"', add
label define mx10a_bplcntry_lbl 122 `"Ghana"', add
label define mx10a_bplcntry_lbl 126 `"Kenya"', add
label define mx10a_bplcntry_lbl 129 `"Libya"', add
label define mx10a_bplcntry_lbl 135 `"Morocco"', add
label define mx10a_bplcntry_lbl 142 `"Nigeria"', add
label define mx10a_bplcntry_lbl 149 `"Senegal"', add
label define mx10a_bplcntry_lbl 154 `"South Africa"', add
label define mx10a_bplcntry_lbl 161 `"Tanzania"', add
label define mx10a_bplcntry_lbl 164 `"Tunisia"', add
label define mx10a_bplcntry_lbl 167 `"Zambia"', add
label define mx10a_bplcntry_lbl 168 `"Zimbabwe"', add
label define mx10a_bplcntry_lbl 169 `"Democratic Republic of Congo"', add
label define mx10a_bplcntry_lbl 200 `"Americas, no country specified"', add
label define mx10a_bplcntry_lbl 202 `"Antigua and Barbuda"', add
label define mx10a_bplcntry_lbl 204 `"Argentina"', add
label define mx10a_bplcntry_lbl 205 `"Aruba"', add
label define mx10a_bplcntry_lbl 208 `"Belize"', add
label define mx10a_bplcntry_lbl 209 `"Bermuda Islands"', add
label define mx10a_bplcntry_lbl 210 `"Bolivia"', add
label define mx10a_bplcntry_lbl 213 `"Canada"', add
label define mx10a_bplcntry_lbl 214 `"Colombia"', add
label define mx10a_bplcntry_lbl 215 `"Costa Rica"', add
label define mx10a_bplcntry_lbl 216 `"Cuba"', add
label define mx10a_bplcntry_lbl 217 `"Chile"', add
label define mx10a_bplcntry_lbl 218 `"Dominica"', add
label define mx10a_bplcntry_lbl 219 `"Ecuador"', add
label define mx10a_bplcntry_lbl 220 `"El Salvador"', add
label define mx10a_bplcntry_lbl 221 `"USA"', add
label define mx10a_bplcntry_lbl 222 `"Grenada Island"', add
label define mx10a_bplcntry_lbl 225 `"Guatemala"', add
label define mx10a_bplcntry_lbl 226 `"British Guyana"', add
label define mx10a_bplcntry_lbl 227 `"French Guiana"', add
label define mx10a_bplcntry_lbl 228 `"Haiti"', add
label define mx10a_bplcntry_lbl 229 `"Honduras"', add
label define mx10a_bplcntry_lbl 230 `"Jamaica"', add
label define mx10a_bplcntry_lbl 234 `"Nicaragua"', add
label define mx10a_bplcntry_lbl 235 `"Panama"', add
label define mx10a_bplcntry_lbl 236 `"Paraguay"', add
label define mx10a_bplcntry_lbl 237 `"Peru"', add
label define mx10a_bplcntry_lbl 238 `"Puerto Rico"', add
label define mx10a_bplcntry_lbl 239 `"Dominican Republic"', add
label define mx10a_bplcntry_lbl 243 `"Santa Lucia"', add
label define mx10a_bplcntry_lbl 247 `"Uruguay"', add
label define mx10a_bplcntry_lbl 250 `"Venezuela"', add
label define mx10a_bplcntry_lbl 300 `"Asia, no country specified"', add
label define mx10a_bplcntry_lbl 302 `"Saudi Arabia"', add
label define mx10a_bplcntry_lbl 303 `"Armenia"', add
label define mx10a_bplcntry_lbl 306 `"Bangladesh"', add
label define mx10a_bplcntry_lbl 312 `"North Korea"', add
label define mx10a_bplcntry_lbl 313 `"South Korea"', add
label define mx10a_bplcntry_lbl 315 `"China"', add
label define mx10a_bplcntry_lbl 316 `"Taiwan"', add
label define mx10a_bplcntry_lbl 322 `"Philippines"', add
label define mx10a_bplcntry_lbl 325 `"India"', add
label define mx10a_bplcntry_lbl 326 `"Indonesia"', add
label define mx10a_bplcntry_lbl 327 `"Iran"', add
label define mx10a_bplcntry_lbl 328 `"Iraq"', add
label define mx10a_bplcntry_lbl 329 `"Israel"', add
label define mx10a_bplcntry_lbl 330 `"Japan"', add
label define mx10a_bplcntry_lbl 331 `"Jordan"', add
label define mx10a_bplcntry_lbl 332 `"Kazakhstan"', add
label define mx10a_bplcntry_lbl 333 `"Kyrgyzstan"', add
label define mx10a_bplcntry_lbl 335 `"Lebanon"', add
label define mx10a_bplcntry_lbl 336 `"Macao"', add
label define mx10a_bplcntry_lbl 337 `"Malaysia"', add
label define mx10a_bplcntry_lbl 343 `"Pakistan"', add
label define mx10a_bplcntry_lbl 346 `"Singapore"', add
label define mx10a_bplcntry_lbl 347 `"Syria"', add
label define mx10a_bplcntry_lbl 349 `"Thailand"', add
label define mx10a_bplcntry_lbl 352 `"Turkey"', add
label define mx10a_bplcntry_lbl 354 `"Vietnam"', add
label define mx10a_bplcntry_lbl 400 `"Europe, no country specified"', add
label define mx10a_bplcntry_lbl 401 `"Albania"', add
label define mx10a_bplcntry_lbl 402 `"Germany"', add
label define mx10a_bplcntry_lbl 403 `"Andorra"', add
label define mx10a_bplcntry_lbl 405 `"Austria"', add
label define mx10a_bplcntry_lbl 407 `"Belarus"', add
label define mx10a_bplcntry_lbl 408 `"Belgium"', add
label define mx10a_bplcntry_lbl 409 `"Bosnia and Herzegovina"', add
label define mx10a_bplcntry_lbl 410 `"Bulgaria"', add
label define mx10a_bplcntry_lbl 411 `"Croatia"', add
label define mx10a_bplcntry_lbl 412 `"Denmark"', add
label define mx10a_bplcntry_lbl 413 `"Slovakia"', add
label define mx10a_bplcntry_lbl 414 `"Slovenia"', add
label define mx10a_bplcntry_lbl 415 `"Spain"', add
label define mx10a_bplcntry_lbl 418 `"Finland"', add
label define mx10a_bplcntry_lbl 419 `"France"', add
label define mx10a_bplcntry_lbl 421 `"Greece"', add
label define mx10a_bplcntry_lbl 422 `"Hungary"', add
label define mx10a_bplcntry_lbl 423 `"Ireland"', add
label define mx10a_bplcntry_lbl 425 `"Italy"', add
label define mx10a_bplcntry_lbl 426 `"Latvia"', add
label define mx10a_bplcntry_lbl 427 `"Liechtenstein"', add
label define mx10a_bplcntry_lbl 428 `"Lithuania"', add
label define mx10a_bplcntry_lbl 429 `"Luxembourg"', add
label define mx10a_bplcntry_lbl 435 `"Norway"', add
label define mx10a_bplcntry_lbl 436 `"Holland"', add
label define mx10a_bplcntry_lbl 437 `"Poland"', add
label define mx10a_bplcntry_lbl 438 `"Portugal"', add
label define mx10a_bplcntry_lbl 439 `"England"', add
label define mx10a_bplcntry_lbl 440 `"Czech Republic"', add
label define mx10a_bplcntry_lbl 441 `"Romania"', add
label define mx10a_bplcntry_lbl 442 `"Russia"', add
label define mx10a_bplcntry_lbl 445 `"Sweden"', add
label define mx10a_bplcntry_lbl 446 `"Switzerland"', add
label define mx10a_bplcntry_lbl 447 `"Ukraine"', add
label define mx10a_bplcntry_lbl 448 `"Yugoslavia"', add
label define mx10a_bplcntry_lbl 452 `"Serbia"', add
label define mx10a_bplcntry_lbl 501 `"Australia"', add
label define mx10a_bplcntry_lbl 520 `"New Zealand"', add
label define mx10a_bplcntry_lbl 600 `"Another country, not specified"', add
label define mx10a_bplcntry_lbl 999 `"NIU (not in universe)"', add
label values mx10a_bplcntry mx10a_bplcntry_lbl

label define mx10a_hlthserv_lbl 01 `"Social Security (IMSS, or Mexican Institute for Social Security)"'
label define mx10a_hlthserv_lbl 02 `"Institute for Social Security and Services for State Workers"', add
label define mx10a_hlthserv_lbl 03 `"State Institute for Social Security and Services for State Workers"', add
label define mx10a_hlthserv_lbl 04 `"Mexican Petroleums, the Defense or the Navy"', add
label define mx10a_hlthserv_lbl 05 `"Health center or hospital for SSA (People's Insurance)"', add
label define mx10a_hlthserv_lbl 06 `"Mexican Institute for Social Security Opportunities"', add
label define mx10a_hlthserv_lbl 07 `"Private clinic, office or office"', add
label define mx10a_hlthserv_lbl 08 `"Other location"', add
label define mx10a_hlthserv_lbl 09 `"They do not use medical services"', add
label define mx10a_hlthserv_lbl 99 `"Unknown"', add
label values mx10a_hlthserv mx10a_hlthserv_lbl

label define mx10a_health1_lbl 1 `"Social Security (IMSS, or Mexican Institute for Social Security)"'
label define mx10a_health1_lbl 2 `"Institute for Social Security and Services for State Workers"', add
label define mx10a_health1_lbl 3 `"State Institute for Social Security and Services for State Workers"', add
label define mx10a_health1_lbl 4 `"Mexican Petroleums, the Defense or the Navy"', add
label define mx10a_health1_lbl 5 `"People's Insurance or for a New Generation"', add
label define mx10a_health1_lbl 6 `"Private insurance"', add
label define mx10a_health1_lbl 7 `"Other institution"', add
label define mx10a_health1_lbl 8 `"They are not entitled to medical services"', add
label define mx10a_health1_lbl 9 `"Unknown"', add
label values mx10a_health1 mx10a_health1_lbl

label define mx10a_health2_lbl 1 `"Social Security (IMSS, or Mexican Institute for Social Security)"'
label define mx10a_health2_lbl 2 `"Institute for Social Security and Services for State Workers"', add
label define mx10a_health2_lbl 3 `"State Institute for Social Security and Services for State Workers"', add
label define mx10a_health2_lbl 4 `"Mexican Petroleums, the Defense or the Navy"', add
label define mx10a_health2_lbl 5 `"People's Insurance or for a New Generation"', add
label define mx10a_health2_lbl 6 `"Private insurance"', add
label define mx10a_health2_lbl 7 `"Other institution"', add
label define mx10a_health2_lbl 9 `"No entitlement in second institution"', add
label values mx10a_health2 mx10a_health2_lbl

label define mx10a_relig_lbl 110100 `"Apostolic Roman Catholic"'
label define mx10a_relig_lbl 110200 `"Roman Catholic"', add
label define mx10a_relig_lbl 110300 `"Catholic"', add
label define mx10a_relig_lbl 110400 `"Augustinian"', add
label define mx10a_relig_lbl 110500 `"Merciful Love"', add
label define mx10a_relig_lbl 110600 `"Assumptionist"', add
label define mx10a_relig_lbl 110700 `"Benedictine"', add
label define mx10a_relig_lbl 110800 `"Capuchin"', add
label define mx10a_relig_lbl 110900 `"Carmelite"', add
label define mx10a_relig_lbl 111000 `"Discalced Carmelite"', add
label define mx10a_relig_lbl 111100 `"Cistercian"', add
label define mx10a_relig_lbl 111200 `"Claretian"', add
label define mx10a_relig_lbl 111300 `"St. Viator Clerics"', add
label define mx10a_relig_lbl 111400 `"Comboni"', add
label define mx10a_relig_lbl 111500 `"Salesian Community"', add
label define mx10a_relig_lbl 111600 `"Conception Franciscan"', add
label define mx10a_relig_lbl 111700 `"Heart of Jesus"', add
label define mx10a_relig_lbl 111800 `"Congregation of the Bayonenses Fathers"', add
label define mx10a_relig_lbl 111900 `"Maronite Diocese of Mexico"', add
label define mx10a_relig_lbl 112000 `"Dominican"', add
label define mx10a_relig_lbl 112100 `"Greek-Melkite Catholic Eparchy"', add
label define mx10a_relig_lbl 112200 `"Heavenly Father Eucharistic Hermit"', add
label define mx10a_relig_lbl 112300 `"Servants of Mary Immaculate"', add
label define mx10a_relig_lbl 112400 `"Piarist"', add
label define mx10a_relig_lbl 112500 `"Eudist"', add
label define mx10a_relig_lbl 112600 `"Franciscan"', add
label define mx10a_relig_lbl 112700 `"Priestly Fraternity of Saint Pius X (Lefebre)"', add
label define mx10a_relig_lbl 112800 `"Guadalupan"', add
label define mx10a_relig_lbl 112900 `"Diocesan Laborer Priests Brotherhood"', add
label define mx10a_relig_lbl 113000 `"Brother of Our Lady of Consolation in the World"', add
label define mx10a_relig_lbl 113100 `"Brother of St. John of God"', add
label define mx10a_relig_lbl 113200 `"Fossores Brothers of the Holy Mercy"', add
label define mx10a_relig_lbl 113300 `"Laborer Brothers of Mary"', add
label define mx10a_relig_lbl 113400 `"Daughters of Charity of St. Vincent de Paul"', add
label define mx10a_relig_lbl 113500 `"Daughters of the Immaculate Conception"', add
label define mx10a_relig_lbl 113600 `"Daughers of Mary Help"', add
label define mx10a_relig_lbl 113700 `"Daughters of St. Paul"', add
label define mx10a_relig_lbl 113800 `"Daughters of the Divine Savior"', add
label define mx10a_relig_lbl 113900 `"Daughters of the Holy Spirit"', add
label define mx10a_relig_lbl 114000 `"Sons of the Sacred Family"', add
label define mx10a_relig_lbl 114100 `"Sons of Mary Mother of the Church"', add
label define mx10a_relig_lbl 114200 `"Hospitable of Saint John of God"', add
label define mx10a_relig_lbl 114300 `"Latin Rite Catholic Church"', add
label define mx10a_relig_lbl 114400 `"Mother Church"', add
label define mx10a_relig_lbl 114500 `"Institute of the Incarnate Word"', add
label define mx10a_relig_lbl 114600 `"Jerome"', add
label define mx10a_relig_lbl 114700 `"Jesuit"', add
label define mx10a_relig_lbl 114800 `"Lazarite"', add
label define mx10a_relig_lbl 114900 `"Legionaries of Christ"', add
label define mx10a_relig_lbl 115000 `"Loordista"', add
label define mx10a_relig_lbl 115100 `"Mantellata Servant of Mary"', add
label define mx10a_relig_lbl 115200 `"Merciful Mother of the Blessed Sacrament"', add
label define mx10a_relig_lbl 115300 `"Marist"', add
label define mx10a_relig_lbl 115400 `"Cross Missionary"', add
label define mx10a_relig_lbl 115500 `"Divine Word Missionary"', add
label define mx10a_relig_lbl 115600 `"Missionary Daughter Heart of Mary"', add
label define mx10a_relig_lbl 115700 `"Guadalupan Missionary"', add
label define mx10a_relig_lbl 115800 `"Missionary of the Immaculate Conception"', add
label define mx10a_relig_lbl 115900 `"Missionary of the Holy Spirit"', add
label define mx10a_relig_lbl 116000 `"Redemptorist Missionary"', add
label define mx10a_relig_lbl 116100 `"Xaverian Missionary in the World"', add
label define mx10a_relig_lbl 116200 `"Monk of Worship"', add
label define mx10a_relig_lbl 116300 `"Our Lady of Consolation"', add
label define mx10a_relig_lbl 116400 `"Work of Don Orione"', add
label define mx10a_relig_lbl 116500 `"Laborer of the Kingdom of Christ"', add
label define mx10a_relig_lbl 116600 `"Order of St. Benedict"', add
label define mx10a_relig_lbl 116700 `"Passionist"', add
label define mx10a_relig_lbl 116800 `"Pauline"', add
label define mx10a_relig_lbl 116900 `"Little Work of Divine Providence"', add
label define mx10a_relig_lbl 117000 `"Nun of the Assumption"', add
label define mx10a_relig_lbl 117100 `"Nun of Our Lady of Sion"', add
label define mx10a_relig_lbl 117200 `"Nun of Saint Joseph of Gerona"', add
label define mx10a_relig_lbl 117300 `"Nun of the Sacred Heart"', add
label define mx10a_relig_lbl 117400 `"Sacred Heart"', add
label define mx10a_relig_lbl 117500 `"Salesian"', add
label define mx10a_relig_lbl 117600 `"Saint Joseph of Tarbes"', add
label define mx10a_relig_lbl 117700 `"Servant of the Lord and the Virgin"', add
label define mx10a_relig_lbl 117800 `"Servant of Jesus"', add
label define mx10a_relig_lbl 117900 `"Servant of Jesus of Charity"', add
label define mx10a_relig_lbl 118000 `"Servant of the Passion"', add
label define mx10a_relig_lbl 118100 `"Servant of Mary"', add
label define mx10a_relig_lbl 118200 `"Servants of the Holy Family"', add
label define mx10a_relig_lbl 118300 `"Society of St. Paul"', add
label define mx10a_relig_lbl 118400 `"Society of St. Pius X"', add
label define mx10a_relig_lbl 118500 `"Tertiary Capuchin Fathers of the Holy Family"', add
label define mx10a_relig_lbl 118600 `"Ursuline of the Roman Union"', add
label define mx10a_relig_lbl 118700 `"Vicentian"', add
label define mx10a_relig_lbl 120100 `"Orthodox"', add
label define mx10a_relig_lbl 120200 `"Eparchy of Our Lady of Lebanon's Martyrs"', add
label define mx10a_relig_lbl 120300 `"Orthodox Apostolic Catholic Church"', add
label define mx10a_relig_lbl 120400 `"Orthodox Catholic Church of the Patriarch of Moscow"', add
label define mx10a_relig_lbl 120500 `"Greek Catholic Church"', add
label define mx10a_relig_lbl 120600 `"Orthodox Catholic Church"', add
label define mx10a_relig_lbl 120700 `"Traditional Christian"', add
label define mx10a_relig_lbl 120701 `"Reformed Roman Catholic Church"', add
label define mx10a_relig_lbl 120702 `"International Church of Christ"', add
label define mx10a_relig_lbl 120703 `"Catholic Church of the Apostles of the later times"', add
label define mx10a_relig_lbl 120704 `"Mexican National Catholic Church"', add
label define mx10a_relig_lbl 120705 `"Tridentine Latin Rite Catholic Church"', add
label define mx10a_relig_lbl 120706 `"Priestly Society Trento"', add
label define mx10a_relig_lbl 120707 `"Mexican Catholic Union of Trento"', add
label define mx10a_relig_lbl 130100 `"Anabaptist / Memnonite"', add
label define mx10a_relig_lbl 130200 `"Anglican / Episcopal"', add
label define mx10a_relig_lbl 130300 `"Baptist"', add
label define mx10a_relig_lbl 130400 `"Calvinist"', add
label define mx10a_relig_lbl 130500 `"Congregational"', add
label define mx10a_relig_lbl 130600 `"Quakeress"', add
label define mx10a_relig_lbl 130700 `"Church of the Nazarene"', add
label define mx10a_relig_lbl 130800 `"Lutheran"', add
label define mx10a_relig_lbl 130900 `"Methodist"', add
label define mx10a_relig_lbl 131000 `"Presbyterian"', add
label define mx10a_relig_lbl 139999 `"Protestant insufficiently specified"', add
label define mx10a_relig_lbl 140100 `"Christian Frienship"', add
label define mx10a_relig_lbl 140101 `"Assemblies of God"', add
label define mx10a_relig_lbl 140102 `"House of Prayer"', add
label define mx10a_relig_lbl 140103 `"Center of Faith, Hope and Love of the Missionary Revival Crusade"', add
label define mx10a_relig_lbl 140104 `"Center of Faith, Hope and Love Agape Force"', add
label define mx10a_relig_lbl 140105 `"Disciples of Christ"', add
label define mx10a_relig_lbl 140106 `"Salvation Army"', add
label define mx10a_relig_lbl 140107 `"Independent Pentecostal Fellowship"', add
label define mx10a_relig_lbl 140108 `"Living Water Church"', add
label define mx10a_relig_lbl 140109 `"Upper Chamber Church"', add
label define mx10a_relig_lbl 140110 `"Faith Apostolic Church of Jesus Christ"', add
label define mx10a_relig_lbl 140111 `"Spiritual Christian Church"', add
label define mx10a_relig_lbl 140112 `"Pentecostal Evangelical Christian Church"', add
label define mx10a_relig_lbl 140113 `"Independent Pentecostal Christian Church"', add
label define mx10a_relig_lbl 140114 `"Interdenominational Christian Church"', add
label define mx10a_relig_lbl 140115 `"Church of God"', add
label define mx10a_relig_lbl 140116 `"Church of God of Prophecy"', add
label define mx10a_relig_lbl 140117 `"Church of God Full Gospel in Mexico"', add
label define mx10a_relig_lbl 140118 `"Church of Jesus Christ on the Rock"', add
label define mx10a_relig_lbl 140119 `"Pentecostal Evangelical Church Council"', add
label define mx10a_relig_lbl 140120 `"Christ Evangelical Pentecostal Church Rock of my Salvation"', add
label define mx10a_relig_lbl 140121 `"Mexican Church of Christ's Gospel Pentecost"', add
label define mx10a_relig_lbl 140122 `"United Pentecostal Church of Mexico"', add
label define mx10a_relig_lbl 140123 `"Universal Church of the Kingdom of God"', add
label define mx10a_relig_lbl 140124 `"Only Christ Savior Christian Church"', add
label define mx10a_relig_lbl 140125 `"Independent Evangelical Pentecostal Movement"', add
label define mx10a_relig_lbl 140126 `"Prince of Peace"', add
label define mx10a_relig_lbl 140127 `"National Union of Evangelical Christian Churches (UNICE)"', add
label define mx10a_relig_lbl 140128 `"Union of Independent Evangelical Churches"', add
label define mx10a_relig_lbl 140129 `"National Union of Evangelical Pentecostal Emmanuel"', add
label define mx10a_relig_lbl 140130 `"Other associations Pentecostal"', add
label define mx10a_relig_lbl 140200 `"Church of the Living God, Pillar and Support of Truth, the Light of the World"', add
label define mx10a_relig_lbl 140201 `"Bible Church"', add
label define mx10a_relig_lbl 140202 `"Interdenominational Christian Church in Mexico"', add
label define mx10a_relig_lbl 140203 `"Church of Christ"', add
label define mx10a_relig_lbl 140204 `"Honey Church of Christ"', add
label define mx10a_relig_lbl 140205 `"Independent Evangelical Church in Mexico"', add
label define mx10a_relig_lbl 140206 `"Renewed Church of Jesus Christ and the Apostles of Divine Love"', add
label define mx10a_relig_lbl 140207 `"Other Christian and Evangelical associations without Pentecostal support"', add
label define mx10a_relig_lbl 140301 `"Pentecostal"', add
label define mx10a_relig_lbl 140302 `"Christian"', add
label define mx10a_relig_lbl 140303 `"Evangelical"', add
label define mx10a_relig_lbl 150100 `"Seventh-day Adventists"', add
label define mx10a_relig_lbl 150200 `"Church of Jesus Christ, of Saints, and the last days"', add
label define mx10a_relig_lbl 150300 `"Jehovah's Witnesses"', add
label define mx10a_relig_lbl 210100 `"Bahaism"', add
label define mx10a_relig_lbl 210200 `"Buddhism"', add
label define mx10a_relig_lbl 210300 `"Onkaranada Center"', add
label define mx10a_relig_lbl 210400 `"Confucianism"', add
label define mx10a_relig_lbl 210500 `"Hinduism"', add
label define mx10a_relig_lbl 210501 `"Hare Krishna"', add
label define mx10a_relig_lbl 210600 `"Jainism"', add
label define mx10a_relig_lbl 210700 `"Shinto"', add
label define mx10a_relig_lbl 210800 `"Taoism"', add
label define mx10a_relig_lbl 210900 `"Zoroastrianism"', add
label define mx10a_relig_lbl 220100 `"Jewish syncretistic Neo-Israeli movements"', add
label define mx10a_relig_lbl 220200 `"Judaica"', add
label define mx10a_relig_lbl 230100 `"Islamic"', add
label define mx10a_relig_lbl 230200 `"Shia"', add
label define mx10a_relig_lbl 230300 `"Jariya"', add
label define mx10a_relig_lbl 230400 `"Sunni"', add
label define mx10a_relig_lbl 230500 `"Sufism"', add
label define mx10a_relig_lbl 240100 `"Agora"', add
label define mx10a_relig_lbl 240200 `"Anthroposophy"', add
label define mx10a_relig_lbl 240300 `"Tensegrity Centers"', add
label define mx10a_relig_lbl 240400 `"Rainbow Community"', add
label define mx10a_relig_lbl 240500 `"Fourth Way"', add
label define mx10a_relig_lbl 240600 `"Essenes"', add
label define mx10a_relig_lbl 240700 `"New Age Spirituality"', add
label define mx10a_relig_lbl 240800 `"Great White Brotherhood"', add
label define mx10a_relig_lbl 240900 `"Universal Great Brotherhood"', add
label define mx10a_relig_lbl 241000 `"Arica Institute"', add
label define mx10a_relig_lbl 241100 `"Christian Metaphysical"', add
label define mx10a_relig_lbl 241200 `"New Acropolis"', add
label define mx10a_relig_lbl 250100 `"Esoteric Science"', add
label define mx10a_relig_lbl 250200 `"Gnosticism"', add
label define mx10a_relig_lbl 250300 `"Masonry"', add
label define mx10a_relig_lbl 250400 `"Metaphysics"', add
label define mx10a_relig_lbl 250500 `"Occultism"', add
label define mx10a_relig_lbl 250600 `"Rosicrucians"', add
label define mx10a_relig_lbl 250700 `"Theosophy"', add
label define mx10a_relig_lbl 250800 `"Wicca"', add
label define mx10a_relig_lbl 260100 `"Shamanism"', add
label define mx10a_relig_lbl 260200 `"The Custom"', add
label define mx10a_relig_lbl 260300 `"God Huaxcam Xastacná"', add
label define mx10a_relig_lbl 260400 `"In Kantonal, House of the Sun"', add
label define mx10a_relig_lbl 260500 `"Mexicayotl"', add
label define mx10a_relig_lbl 260600 `"Restorative Confederate Movement of Anahuac Culture"', add
label define mx10a_relig_lbl 260700 `"African Origin"', add
label define mx10a_relig_lbl 260800 `"Rastafarians"', add
label define mx10a_relig_lbl 260900 `"Regina"', add
label define mx10a_relig_lbl 261000 `"Toltecayotl"', add
label define mx10a_relig_lbl 261100 `"Indigenous Religions"', add
label define mx10a_relig_lbl 270100 `"Elias"', add
label define mx10a_relig_lbl 270200 `"Spiritualistic"', add
label define mx10a_relig_lbl 270300 `"Spiritualist"', add
label define mx10a_relig_lbl 270400 `"Marian Trinitarian Spirituality"', add
label define mx10a_relig_lbl 270500 `"Spirituality of the Third Age"', add
label define mx10a_relig_lbl 270600 `"Christian Spiritual"', add
label define mx10a_relig_lbl 270700 `"Judiciary Society Reign of Leonardo Alcalá Leos"', add
label define mx10a_relig_lbl 270800 `"Spiritualist Faith, Hope and Charity, Jesus on the Mountain"', add
label define mx10a_relig_lbl 270900 `"Spirituality for the Divine Master and the purity of Mary"', add
label define mx10a_relig_lbl 271000 `"The Three Powers Father, Son and Holy Spirit"', add
label define mx10a_relig_lbl 271100 `"Light and Hope"', add
label define mx10a_relig_lbl 271200 `"Mexican Church Beautiful Woman Clothed with the Sun"', add
label define mx10a_relig_lbl 271300 `"Holy Spirit, Purity, Love and Light"', add
label define mx10a_relig_lbl 280100 `"Ananda Marga"', add
label define mx10a_relig_lbl 280200 `"Christian Science"', add
label define mx10a_relig_lbl 280300 `"Scientology or Dianetics"', add
label define mx10a_relig_lbl 280400 `"Angelic contact"', add
label define mx10a_relig_lbl 280500 `"Growing in Grace"', add
label define mx10a_relig_lbl 280600 `"Eckankar"', add
label define mx10a_relig_lbl 280700 `"Unification Church"', add
label define mx10a_relig_lbl 280800 `"Transcendental Meditation"', add
label define mx10a_relig_lbl 280900 `"Mission Branch"', add
label define mx10a_relig_lbl 281000 `"Movement of Spiritual Inner Path of the Soul (MSIA)"', add
label define mx10a_relig_lbl 281100 `"Raelian Movement"', add
label define mx10a_relig_lbl 281200 `"Children of God"', add
label define mx10a_relig_lbl 281300 `"Pacal Votan"', add
label define mx10a_relig_lbl 281400 `"Palm Grove of Troy"', add
label define mx10a_relig_lbl 281500 `"Spiritual Christian Spiritual Sacred Church of Tao"', add
label define mx10a_relig_lbl 281600 `"Ascent Society (Ishayas)"', add
label define mx10a_relig_lbl 281700 `"Sri Sathya Sai Baba"', add
label define mx10a_relig_lbl 289999 `"Other new religious movements"', add
label define mx10a_relig_lbl 290100 `"Faith Christian Church"', add
label define mx10a_relig_lbl 290200 `"Traditional Apostolic Catholic Holy Church Mexico-USA"', add
label define mx10a_relig_lbl 290300 `"Mexican Apostolic Catholic Church"', add
label define mx10a_relig_lbl 290400 `"Worship of Jesus Malverde"', add
label define mx10a_relig_lbl 290500 `"New Jerusalem"', add
label define mx10a_relig_lbl 290600 `"Saint Pascual"', add
label define mx10a_relig_lbl 310000 `"No religion"', add
label define mx10a_relig_lbl 310100 `"No religious affiliation"', add
label define mx10a_relig_lbl 999999 `"Unknown"', add
label values mx10a_relig mx10a_relig_lbl

label define mx10a_diswalk_lbl 1 `"Yes"'
label define mx10a_diswalk_lbl 2 `"No"', add
label values mx10a_diswalk mx10a_diswalk_lbl

label define mx10a_dissee_lbl 1 `"Yes"'
label define mx10a_dissee_lbl 2 `"No"', add
label values mx10a_dissee mx10a_dissee_lbl

label define mx10a_disspk_lbl 1 `"Yes"'
label define mx10a_disspk_lbl 2 `"No"', add
label values mx10a_disspk mx10a_disspk_lbl

label define mx10a_dishear_lbl 1 `"Yes"'
label define mx10a_dishear_lbl 2 `"No"', add
label values mx10a_dishear mx10a_dishear_lbl

label define mx10a_discare_lbl 1 `"Yes"'
label define mx10a_discare_lbl 2 `"No"', add
label values mx10a_discare mx10a_discare_lbl

label define mx10a_dislrn_lbl 1 `"Yes"'
label define mx10a_dislrn_lbl 2 `"No"', add
label values mx10a_dislrn mx10a_dislrn_lbl

label define mx10a_disment_lbl 1 `"Yes"'
label define mx10a_disment_lbl 2 `"No"', add
label values mx10a_disment mx10a_disment_lbl

label define mx10a_disab_lbl 1 `"Yes, has disability"'
label define mx10a_disab_lbl 2 `"No physical or mental disability"', add
label define mx10a_disab_lbl 9 `"Unknown"', add
label values mx10a_disab mx10a_disab_lbl

label define mx10a_cdiswalk_lbl 1 `"Because they were born like this"'
label define mx10a_cdiswalk_lbl 2 `"Illness"', add
label define mx10a_cdiswalk_lbl 3 `"Accident"', add
label define mx10a_cdiswalk_lbl 4 `"Old age"', add
label define mx10a_cdiswalk_lbl 5 `"Another cause"', add
label define mx10a_cdiswalk_lbl 8 `"Unknown"', add
label define mx10a_cdiswalk_lbl 9 `"No disability"', add
label values mx10a_cdiswalk mx10a_cdiswalk_lbl

label define mx10a_cdissee_lbl 1 `"Because they were born like this"'
label define mx10a_cdissee_lbl 2 `"Illness"', add
label define mx10a_cdissee_lbl 3 `"Accident"', add
label define mx10a_cdissee_lbl 4 `"Old age"', add
label define mx10a_cdissee_lbl 5 `"Another cause"', add
label define mx10a_cdissee_lbl 8 `"Unknown"', add
label define mx10a_cdissee_lbl 9 `"No disability"', add
label values mx10a_cdissee mx10a_cdissee_lbl

label define mx10a_cdisspk_lbl 1 `"Because they were born like this"'
label define mx10a_cdisspk_lbl 2 `"Illness"', add
label define mx10a_cdisspk_lbl 3 `"Accident"', add
label define mx10a_cdisspk_lbl 4 `"Old age"', add
label define mx10a_cdisspk_lbl 5 `"Another cause"', add
label define mx10a_cdisspk_lbl 8 `"Unknown"', add
label define mx10a_cdisspk_lbl 9 `"No disability"', add
label values mx10a_cdisspk mx10a_cdisspk_lbl

label define mx10a_cdishear_lbl 1 `"Because they were born like this"'
label define mx10a_cdishear_lbl 2 `"Illness"', add
label define mx10a_cdishear_lbl 3 `"Accident"', add
label define mx10a_cdishear_lbl 4 `"Old age"', add
label define mx10a_cdishear_lbl 5 `"Another cause"', add
label define mx10a_cdishear_lbl 8 `"Unknown"', add
label define mx10a_cdishear_lbl 9 `"No disability"', add
label values mx10a_cdishear mx10a_cdishear_lbl

label define mx10a_cdiscare_lbl 1 `"Because they were born like this"'
label define mx10a_cdiscare_lbl 2 `"Illness"', add
label define mx10a_cdiscare_lbl 3 `"Accident"', add
label define mx10a_cdiscare_lbl 4 `"Old age"', add
label define mx10a_cdiscare_lbl 5 `"Another cause"', add
label define mx10a_cdiscare_lbl 8 `"Unknown"', add
label define mx10a_cdiscare_lbl 9 `"No disability"', add
label values mx10a_cdiscare mx10a_cdiscare_lbl

label define mx10a_cdislrn_lbl 1 `"Because they were born like this"'
label define mx10a_cdislrn_lbl 2 `"Illness"', add
label define mx10a_cdislrn_lbl 3 `"Accident"', add
label define mx10a_cdislrn_lbl 4 `"Old age"', add
label define mx10a_cdislrn_lbl 5 `"Another cause"', add
label define mx10a_cdislrn_lbl 8 `"Unknown"', add
label define mx10a_cdislrn_lbl 9 `"No disability"', add
label values mx10a_cdislrn mx10a_cdislrn_lbl

label define mx10a_cdisment_lbl 1 `"Because they were born like this"'
label define mx10a_cdisment_lbl 2 `"Illness"', add
label define mx10a_cdisment_lbl 3 `"Accident"', add
label define mx10a_cdisment_lbl 4 `"Old age"', add
label define mx10a_cdisment_lbl 5 `"Another cause"', add
label define mx10a_cdisment_lbl 8 `"Unknown"', add
label define mx10a_cdisment_lbl 9 `"No disability"', add
label values mx10a_cdisment mx10a_cdisment_lbl

label define mx10a_spkindig_lbl 1 `"Yes"'
label define mx10a_spkindig_lbl 2 `"No"', add
label define mx10a_spkindig_lbl 8 `"Unknown"', add
label define mx10a_spkindig_lbl 9 `"NIU (not in universe)"', add
label values mx10a_spkindig mx10a_spkindig_lbl

label define mx10a_spkspan_lbl 1 `"Yes"'
label define mx10a_spkspan_lbl 2 `"No"', add
label define mx10a_spkspan_lbl 8 `"Unknown"', add
label define mx10a_spkspan_lbl 9 `"NIU (not in universe)"', add
label values mx10a_spkspan mx10a_spkspan_lbl

label define mx10a_compindg_lbl 1 `"Yes"'
label define mx10a_compindg_lbl 2 `"No"', add
label define mx10a_compindg_lbl 8 `"Unknown"', add
label define mx10a_compindg_lbl 9 `"NIU (not in universe)"', add
label values mx10a_compindg mx10a_compindg_lbl

label define mx10a_indlang_lbl 0101 `"Kickapoo"'
label define mx10a_indlang_lbl 0201 `"Papago"', add
label define mx10a_indlang_lbl 0202 `"Pima"', add
label define mx10a_indlang_lbl 0203 `"North Tepehuano"', add
label define mx10a_indlang_lbl 0204 `"South Tepehuano"', add
label define mx10a_indlang_lbl 0205 `"Tarahumara"', add
label define mx10a_indlang_lbl 0206 `"Guarijío"', add
label define mx10a_indlang_lbl 0207 `"Yaqui"', add
label define mx10a_indlang_lbl 0208 `"May"', add
label define mx10a_indlang_lbl 0209 `"Cora"', add
label define mx10a_indlang_lbl 0210 `"Huichol"', add
label define mx10a_indlang_lbl 0211 `"Nahuatl"', add
label define mx10a_indlang_lbl 0301 `"Paipai"', add
label define mx10a_indlang_lbl 0303 `"Cocopah"', add
label define mx10a_indlang_lbl 0304 `"Kumiai"', add
label define mx10a_indlang_lbl 0305 `"Kiliwa"', add
label define mx10a_indlang_lbl 0401 `"Seri"', add
label define mx10a_indlang_lbl 0501 `"Otomi"', add
label define mx10a_indlang_lbl 0502 `"Mazahua"', add
label define mx10a_indlang_lbl 0503 `"Matlatzinca"', add
label define mx10a_indlang_lbl 0504 `"Tlahuica / Ocuilteco"', add
label define mx10a_indlang_lbl 0505 `"Pame"', add
label define mx10a_indlang_lbl 0506 `"Jonaz Chichimeco"', add
label define mx10a_indlang_lbl 0507 `"Chinanteco"', add
label define mx10a_indlang_lbl 0508 `"Tlapaneco"', add
label define mx10a_indlang_lbl 0509 `"Mazatec"', add
label define mx10a_indlang_lbl 0510 `"Ixcateco"', add
label define mx10a_indlang_lbl 0511 `"Chocholteco / Chocho"', add
label define mx10a_indlang_lbl 0512 `"Popoloca"', add
label define mx10a_indlang_lbl 0513 `"Zapotec"', add
label define mx10a_indlang_lbl 0514 `"Chatino"', add
label define mx10a_indlang_lbl 0515 `"Amuzgo"', add
label define mx10a_indlang_lbl 0516 `"Mixteco"', add
label define mx10a_indlang_lbl 0517 `"Cuicateco"', add
label define mx10a_indlang_lbl 0518 `"Triqui"', add
label define mx10a_indlang_lbl 0601 `"Huasteco"', add
label define mx10a_indlang_lbl 0602 `"Maya"', add
label define mx10a_indlang_lbl 0603 `"Lacandon"', add
label define mx10a_indlang_lbl 0604 `"Chol"', add
label define mx10a_indlang_lbl 0605 `"Tabasco Chontal"', add
label define mx10a_indlang_lbl 0606 `"Tseltal"', add
label define mx10a_indlang_lbl 0607 `"Tsotsil"', add
label define mx10a_indlang_lbl 0608 `"Q'anjob'al"', add
label define mx10a_indlang_lbl 0609 `"Akateko"', add
label define mx10a_indlang_lbl 0610 `"Jakalteko"', add
label define mx10a_indlang_lbl 0611 `"Qato'k / Motocintleco"', add
label define mx10a_indlang_lbl 0612 `"Chuj"', add
label define mx10a_indlang_lbl 0613 `"Tojolabal"', add
label define mx10a_indlang_lbl 0614 `"Q'eqchi"', add
label define mx10a_indlang_lbl 0615 `"K'iche"', add
label define mx10a_indlang_lbl 0616 `"Kaqchikel"', add
label define mx10a_indlang_lbl 0617 `"Teko"', add
label define mx10a_indlang_lbl 0618 `"Mam"', add
label define mx10a_indlang_lbl 0619 `"Awakateko"', add
label define mx10a_indlang_lbl 0620 `"Ixil"', add
label define mx10a_indlang_lbl 0701 `"Totonac"', add
label define mx10a_indlang_lbl 0702 `"Tepehua"', add
label define mx10a_indlang_lbl 0801 `"Tarasco / Purépecha"', add
label define mx10a_indlang_lbl 0901 `"Mixe"', add
label define mx10a_indlang_lbl 0902 `"Sayulteco"', add
label define mx10a_indlang_lbl 0903 `"Oluteco"', add
label define mx10a_indlang_lbl 0904 `"Texistepequeño"', add
label define mx10a_indlang_lbl 0905 `"Ayapaneco"', add
label define mx10a_indlang_lbl 0906 `"Sierra Popoluca"', add
label define mx10a_indlang_lbl 0907 `"Zoque"', add
label define mx10a_indlang_lbl 1001 `"Oaxaca Chontal"', add
label define mx10a_indlang_lbl 1101 `"Huave"', add
label define mx10a_indlang_lbl 8000 `"Other languages ??of the Americas"', add
label define mx10a_indlang_lbl 9000 `"Language insufficiently specified"', add
label define mx10a_indlang_lbl 9010 `"Chontal, insufficiently specified"', add
label define mx10a_indlang_lbl 9020 `"Tepehuano, insufficiently specified"', add
label define mx10a_indlang_lbl 9030 `"Popoluca, insufficiently specified"', add
label define mx10a_indlang_lbl 9999 `"NIU (not in universe)"', add
label values mx10a_indlang mx10a_indlang_lbl

label define mx10a_ethnic_lbl 1 `"Yes"'
label define mx10a_ethnic_lbl 2 `"No"', add
label define mx10a_ethnic_lbl 8 `"Unknown"', add
label define mx10a_ethnic_lbl 9 `"NIU (not in universe)"', add
label values mx10a_ethnic mx10a_ethnic_lbl

label define mx10a_school_lbl 1 `"Yes"'
label define mx10a_school_lbl 2 `"No"', add
label define mx10a_school_lbl 8 `"Unknown"', add
label define mx10a_school_lbl 9 `"NIU (not in universe)"', add
label values mx10a_school mx10a_school_lbl

label define mx10a_grade_lbl 00 `"None"'
label define mx10a_grade_lbl 01 `"1"', add
label define mx10a_grade_lbl 02 `"2"', add
label define mx10a_grade_lbl 03 `"3"', add
label define mx10a_grade_lbl 04 `"4"', add
label define mx10a_grade_lbl 05 `"5"', add
label define mx10a_grade_lbl 06 `"6"', add
label define mx10a_grade_lbl 07 `"7"', add
label define mx10a_grade_lbl 08 `"8"', add
label define mx10a_grade_lbl 98 `"Unknown"', add
label define mx10a_grade_lbl 99 `"NIU (not in universe)"', add
label values mx10a_grade mx10a_grade_lbl

label define mx10a_edlevel_lbl 00 `"None"'
label define mx10a_edlevel_lbl 01 `"Preschool"', add
label define mx10a_edlevel_lbl 02 `"Primary"', add
label define mx10a_edlevel_lbl 03 `"Secondary/middle/middle school"', add
label define mx10a_edlevel_lbl 04 `"Preparatory or high school"', add
label define mx10a_edlevel_lbl 05 `"School for basic teacher education"', add
label define mx10a_edlevel_lbl 06 `"Technical or commercial studies with primary completed"', add
label define mx10a_edlevel_lbl 07 `"Technical or commercial studies with secondary/middle completed"', add
label define mx10a_edlevel_lbl 08 `"Technical or commercial studies with preparatory or high school completed"', add
label define mx10a_edlevel_lbl 09 `"Education (teaching) bachelor's degree"', add
label define mx10a_edlevel_lbl 10 `"Bachelor's or professional degree"', add
label define mx10a_edlevel_lbl 11 `"Master's degree"', add
label define mx10a_edlevel_lbl 12 `"Doctorate"', add
label define mx10a_edlevel_lbl 98 `"Unknown"', add
label define mx10a_edlevel_lbl 99 `"NIU (not in universe)"', add
label values mx10a_edlevel mx10a_edlevel_lbl

label define mx10a_edattain_lbl 000 `"None"'
label define mx10a_edattain_lbl 101 `"Preschool, grade 1"', add
label define mx10a_edattain_lbl 102 `"Preschool, grade 2"', add
label define mx10a_edattain_lbl 103 `"Preschool, grade 3"', add
label define mx10a_edattain_lbl 108 `"Preschool, grade unknown"', add
label define mx10a_edattain_lbl 201 `"Primary, grade 1"', add
label define mx10a_edattain_lbl 202 `"Primary, grade 2"', add
label define mx10a_edattain_lbl 203 `"Primary, grade 3"', add
label define mx10a_edattain_lbl 204 `"Primary, grade 4"', add
label define mx10a_edattain_lbl 205 `"Primary, grade 5"', add
label define mx10a_edattain_lbl 206 `"Primary, grade 6"', add
label define mx10a_edattain_lbl 208 `"Primary, grade unknown"', add
label define mx10a_edattain_lbl 301 `"Secondary/middle, grade 1"', add
label define mx10a_edattain_lbl 302 `"Secondary/middle, grade 2"', add
label define mx10a_edattain_lbl 303 `"Secondary/middle, grade 3"', add
label define mx10a_edattain_lbl 304 `"Secondary/middle school, grade unknown"', add
label define mx10a_edattain_lbl 321 `"High school, grade 1"', add
label define mx10a_edattain_lbl 322 `"High school, grade 2"', add
label define mx10a_edattain_lbl 323 `"High school, grade 3"', add
label define mx10a_edattain_lbl 324 `"High school, grade 4"', add
label define mx10a_edattain_lbl 328 `"High school, grade unknown"', add
label define mx10a_edattain_lbl 401 `"Basic teacher education, year 1"', add
label define mx10a_edattain_lbl 402 `"Basic teacher education, year 2"', add
label define mx10a_edattain_lbl 403 `"Basic teacher education, year 3"', add
label define mx10a_edattain_lbl 404 `"Basic teacher education, year 4"', add
label define mx10a_edattain_lbl 408 `"Basic teacher education, year unknown"', add
label define mx10a_edattain_lbl 411 `"Technical/commercial with primary completed, year 1"', add
label define mx10a_edattain_lbl 412 `"Technical/commercial with primary completed, year 2"', add
label define mx10a_edattain_lbl 413 `"Technical/commercial with primary completed, year 3"', add
label define mx10a_edattain_lbl 414 `"Technical/commercial with primary completed, year 4"', add
label define mx10a_edattain_lbl 418 `"Technical/commercial with primary completed, year unknown"', add
label define mx10a_edattain_lbl 421 `"Technical/commercial with secondary/middle completed, year 1"', add
label define mx10a_edattain_lbl 422 `"Technical/commercial with secondary/middle completed, year 2"', add
label define mx10a_edattain_lbl 423 `"Technical/commercial with secondary/middle completed, year 3"', add
label define mx10a_edattain_lbl 424 `"Technical/commercial with secondary/middle completed, year 4"', add
label define mx10a_edattain_lbl 425 `"Technical/commercial with secondary/middle completed, year 5"', add
label define mx10a_edattain_lbl 428 `"Technical/commercial with secondary/middle completed, year unknown"', add
label define mx10a_edattain_lbl 431 `"Technical/commercial with high school completed, year 1"', add
label define mx10a_edattain_lbl 432 `"Technical/commercial with high school completed, year 2"', add
label define mx10a_edattain_lbl 433 `"Technical/commercial with high school completed, year 3"', add
label define mx10a_edattain_lbl 434 `"Technical/commercial with high school completed, year 4"', add
label define mx10a_edattain_lbl 438 `"Technical/commercial with high school completed, year unknown"', add
label define mx10a_edattain_lbl 501 `"Education degree, year 1"', add
label define mx10a_edattain_lbl 502 `"Education degree, year 2"', add
label define mx10a_edattain_lbl 503 `"Education degree, year 3"', add
label define mx10a_edattain_lbl 504 `"Education degree, year 4"', add
label define mx10a_edattain_lbl 508 `"Education degree, year unknown"', add
label define mx10a_edattain_lbl 511 `"Bachelor's or professional degree, year 1"', add
label define mx10a_edattain_lbl 512 `"Bachelor's or professional degree, year 2"', add
label define mx10a_edattain_lbl 513 `"Bachelor's or professional degree, year 3"', add
label define mx10a_edattain_lbl 514 `"Bachelor's or professional degree, year 4"', add
label define mx10a_edattain_lbl 515 `"Bachelor's or professional degree, year 5"', add
label define mx10a_edattain_lbl 516 `"Bachelor's or professional degree, year 6"', add
label define mx10a_edattain_lbl 517 `"Bachelor's or professional degree, year 7"', add
label define mx10a_edattain_lbl 518 `"Bachelor's or professional degree, year 8"', add
label define mx10a_edattain_lbl 519 `"Bachelor's or professional degree, year unknown"', add
label define mx10a_edattain_lbl 521 `"Master's degree, year 1"', add
label define mx10a_edattain_lbl 522 `"Master's degree, year 2"', add
label define mx10a_edattain_lbl 523 `"Master's degree, year 3"', add
label define mx10a_edattain_lbl 528 `"Master degree, year unknown"', add
label define mx10a_edattain_lbl 601 `"Doctorate degree, year 1"', add
label define mx10a_edattain_lbl 602 `"Doctorate degree, year 2"', add
label define mx10a_edattain_lbl 603 `"Doctorate degree, year 3"', add
label define mx10a_edattain_lbl 604 `"Doctorate degree, year 4"', add
label define mx10a_edattain_lbl 605 `"Doctorate degree, year 5"', add
label define mx10a_edattain_lbl 606 `"Doctorate degree, year 6"', add
label define mx10a_edattain_lbl 608 `"Doctorate degree, year unknown"', add
label define mx10a_edattain_lbl 998 `"Unknown"', add
label define mx10a_edattain_lbl 999 `"NIU (not in universe)"', add
label values mx10a_edattain mx10a_edattain_lbl

label define mx10a_prereq_lbl 1 `"Elementary"'
label define mx10a_prereq_lbl 2 `"Secondary/middle"', add
label define mx10a_prereq_lbl 3 `"Prep school or high school"', add
label define mx10a_prereq_lbl 4 `"Degree or professional"', add
label define mx10a_prereq_lbl 5 `"Masters degree"', add
label define mx10a_prereq_lbl 9 `"NIU (not in universe)"', add
label values mx10a_prereq mx10a_prereq_lbl

label define mx10a_studies_lbl 110 `"Educational sciences, multidisciplinary or general programs"'
label define mx10a_studies_lbl 111 `"Didactics, pedagogy and curriculum"', add
label define mx10a_studies_lbl 112 `"Educational planning and assessment"', add
label define mx10a_studies_lbl 113 `"Guidance and educational counseling"', add
label define mx10a_studies_lbl 114 `"Educational technology"', add
label define mx10a_studies_lbl 120 `"Teacher training, general or multidisciplinary programs"', add
label define mx10a_studies_lbl 121 `"Teacher training for basic education, preschool"', add
label define mx10a_studies_lbl 122 `"Teacher training for basic education, primary level"', add
label define mx10a_studies_lbl 123 `"Teacher training for basic education, secondary level"', add
label define mx10a_studies_lbl 124 `"Teacher training for upper secondary education"', add
label define mx10a_studies_lbl 125 `"Teacher training for higher education"', add
label define mx10a_studies_lbl 126 `"Teacher training for physical, artistic or technological education"', add
label define mx10a_studies_lbl 127 `"Teacher training in other educational services"', add
label define mx10a_studies_lbl 199 `"Education, field insufficiently specified"', add
label define mx10a_studies_lbl 210 `"Arts, multidisciplinary or general programs"', add
label define mx10a_studies_lbl 211 `"Fine arts"', add
label define mx10a_studies_lbl 212 `"Music and performing arts"', add
label define mx10a_studies_lbl 213 `"Audio-visual techniques and media production"', add
label define mx10a_studies_lbl 214 `"Design"', add
label define mx10a_studies_lbl 215 `"Craft techniques and skills"', add
label define mx10a_studies_lbl 220 `"Humanities, general or multidisciplinary programs"', add
label define mx10a_studies_lbl 221 `"Theology"', add
label define mx10a_studies_lbl 222 `"Foreign languages"', add
label define mx10a_studies_lbl 223 `"Literature"', add
label define mx10a_studies_lbl 224 `"History and archeology"', add
label define mx10a_studies_lbl 225 `"Philosophy and ethics"', add
label define mx10a_studies_lbl 299 `"Arts and humanities, field insufficiently specified"', add
label define mx10a_studies_lbl 310 `"Social sciences and behavioral studies, multidisciplinary or general programs"', add
label define mx10a_studies_lbl 311 `"Psychology"', add
label define mx10a_studies_lbl 312 `"Sociology and anthropology"', add
label define mx10a_studies_lbl 313 `"Political sciences"', add
label define mx10a_studies_lbl 314 `"Economy"', add
label define mx10a_studies_lbl 315 `"Social work and care"', add
label define mx10a_studies_lbl 321 `"Communications and journalism"', add
label define mx10a_studies_lbl 322 `"Library"', add
label define mx10a_studies_lbl 330 `"Business and administration, general or multidisciplinary programs"', add
label define mx10a_studies_lbl 331 `"Trade"', add
label define mx10a_studies_lbl 332 `"Marketing and advertising"', add
label define mx10a_studies_lbl 333 `"Finance, banking, and insurance"', add
label define mx10a_studies_lbl 334 `"Accounting and auditing"', add
label define mx10a_studies_lbl 335 `"Business administration and management"', add
label define mx10a_studies_lbl 341 `"Law"', add
label define mx10a_studies_lbl 342 `"Criminology"', add
label define mx10a_studies_lbl 399 `"Social sciences, management, and law, field insufficiently specified"', add
label define mx10a_studies_lbl 411 `"Biology and biochemistry"', add
label define mx10a_studies_lbl 412 `"Environmental sciences"', add
label define mx10a_studies_lbl 420 `"Physics, chemistry and earth sciences, general or multidisciplinary programs"', add
label define mx10a_studies_lbl 421 `"Physics"', add
label define mx10a_studies_lbl 422 `"Chemistry"', add
label define mx10a_studies_lbl 423 `"Earth and atmospheric sciences"', add
label define mx10a_studies_lbl 431 `"Mathematics"', add
label define mx10a_studies_lbl 432 `"Statistics"', add
label define mx10a_studies_lbl 441 `"Computer science"', add
label define mx10a_studies_lbl 499 `"Natural, exact, and computing sciences, field insufficiently specified"', add
label define mx10a_studies_lbl 510 `"Mechanical engineering, electronics and technology, general or multidisciplinary programs"', add
label define mx10a_studies_lbl 511 `"Industrial, mechanical and metallurgical engineering"', add
label define mx10a_studies_lbl 512 `"Electricity and power generation"', add
label define mx10a_studies_lbl 513 `"Electronics and telecommunications technology"', add
label define mx10a_studies_lbl 514 `"Chemical engineering"', add
label define mx10a_studies_lbl 515 `"Motor vehicle, ships and aircraft engineering"', add
label define mx10a_studies_lbl 516 `"Technology and environmental protection"', add
label define mx10a_studies_lbl 520 `"Manufacturing and processes, general or multidisciplinary programs"', add
label define mx10a_studies_lbl 521 `"Food industry"', add
label define mx10a_studies_lbl 522 `"Textile, footwear and leather industries"', add
label define mx10a_studies_lbl 523 `"Industries of various materials (wood, paper, plastic and glass)"', add
label define mx10a_studies_lbl 524 `"Mining and extraction"', add
label define mx10a_studies_lbl 531 `"Architecture and urban planning"', add
label define mx10a_studies_lbl 532 `"Construction and civil engineering"', add
label define mx10a_studies_lbl 599 `"Engineering, manufacturing and construction, field insufficiently specified"', add
label define mx10a_studies_lbl 610 `"Agriculture, forestry and fishing, general or multidisciplinary programs"', add
label define mx10a_studies_lbl 611 `"Agriculture and livestock production and exploitation"', add
label define mx10a_studies_lbl 612 `"Horticulture"', add
label define mx10a_studies_lbl 613 `"Forestry"', add
label define mx10a_studies_lbl 614 `"Fishing"', add
label define mx10a_studies_lbl 621 `"Veterinary"', add
label define mx10a_studies_lbl 699 `"Agriculture and veterinary, field insufficiently specified"', add
label define mx10a_studies_lbl 710 `"Health, general or multidisciplinary programs"', add
label define mx10a_studies_lbl 711 `"Medicine"', add
label define mx10a_studies_lbl 712 `"Nursing and care"', add
label define mx10a_studies_lbl 713 `"Dentistry"', add
label define mx10a_studies_lbl 714 `"Medical diagnosis and treatment technology"', add
label define mx10a_studies_lbl 715 `"Therapy and rehabilitation"', add
label define mx10a_studies_lbl 716 `"Pharmacy"', add
label define mx10a_studies_lbl 717 `"Public health"', add
label define mx10a_studies_lbl 799 `"Health, field insufficiently specified"', add
label define mx10a_studies_lbl 800 `"Basic technical careers"', add
label define mx10a_studies_lbl 811 `"Sports"', add
label define mx10a_studies_lbl 812 `"Embalming"', add
label define mx10a_studies_lbl 813 `"Beauty services"', add
label define mx10a_studies_lbl 814 `"Secretaries and administrative assistants"', add
label define mx10a_studies_lbl 821 `"Transport services"', add
label define mx10a_studies_lbl 831 `"Public safety"', add
label define mx10a_studies_lbl 832 `"Industrial safety"', add
label define mx10a_studies_lbl 833 `"Military services"', add
label define mx10a_studies_lbl 899 `"Services, field insufficiently specified"', add
label define mx10a_studies_lbl 998 `"Academic field, not specified"', add
label define mx10a_studies_lbl 999 `"NIU (not in universe)"', add
label values mx10a_studies mx10a_studies_lbl

label define mx10a_yrschool_lbl 00 `"0"'
label define mx10a_yrschool_lbl 01 `"1"', add
label define mx10a_yrschool_lbl 02 `"2"', add
label define mx10a_yrschool_lbl 03 `"3"', add
label define mx10a_yrschool_lbl 04 `"4"', add
label define mx10a_yrschool_lbl 05 `"5"', add
label define mx10a_yrschool_lbl 06 `"6"', add
label define mx10a_yrschool_lbl 07 `"7"', add
label define mx10a_yrschool_lbl 08 `"8"', add
label define mx10a_yrschool_lbl 09 `"9"', add
label define mx10a_yrschool_lbl 10 `"10"', add
label define mx10a_yrschool_lbl 11 `"11"', add
label define mx10a_yrschool_lbl 12 `"12"', add
label define mx10a_yrschool_lbl 13 `"13"', add
label define mx10a_yrschool_lbl 14 `"14"', add
label define mx10a_yrschool_lbl 15 `"15"', add
label define mx10a_yrschool_lbl 16 `"16"', add
label define mx10a_yrschool_lbl 17 `"17"', add
label define mx10a_yrschool_lbl 18 `"18"', add
label define mx10a_yrschool_lbl 19 `"19"', add
label define mx10a_yrschool_lbl 20 `"20"', add
label define mx10a_yrschool_lbl 21 `"21"', add
label define mx10a_yrschool_lbl 22 `"22"', add
label define mx10a_yrschool_lbl 23 `"23"', add
label define mx10a_yrschool_lbl 24 `"24"', add
label define mx10a_yrschool_lbl 98 `"Unknown"', add
label define mx10a_yrschool_lbl 99 `"NIU (not in universe)"', add
label values mx10a_yrschool mx10a_yrschool_lbl

label define mx10a_lit_lbl 1 `"Yes"'
label define mx10a_lit_lbl 2 `"No"', add
label define mx10a_lit_lbl 8 `"Unknown"', add
label define mx10a_lit_lbl 9 `"NIU (not in universe)"', add
label values mx10a_lit mx10a_lit_lbl

label define mx10a_migctry5_lbl 100 `"Africa, no country specified"'
label define mx10a_migctry5_lbl 101 `"Angola"', add
label define mx10a_migctry5_lbl 102 `"Algeria"', add
label define mx10a_migctry5_lbl 109 `"Cameroon"', add
label define mx10a_migctry5_lbl 114 `"Ivory Coast"', add
label define mx10a_migctry5_lbl 117 `"Egypt"', add
label define mx10a_migctry5_lbl 119 `"Ethiopia"', add
label define mx10a_migctry5_lbl 126 `"Kenya"', add
label define mx10a_migctry5_lbl 129 `"Libya"', add
label define mx10a_migctry5_lbl 135 `"Morocco"', add
label define mx10a_migctry5_lbl 139 `"Mozambique"', add
label define mx10a_migctry5_lbl 142 `"Nigeria"', add
label define mx10a_migctry5_lbl 154 `"South Africa"', add
label define mx10a_migctry5_lbl 159 `"Sudan"', add
label define mx10a_migctry5_lbl 160 `"Swaziland"', add
label define mx10a_migctry5_lbl 161 `"Tanzania"', add
label define mx10a_migctry5_lbl 169 `"Democratic Republic of Congo"', add
label define mx10a_migctry5_lbl 200 `"Americas, no country specified"', add
label define mx10a_migctry5_lbl 204 `"Argentina"', add
label define mx10a_migctry5_lbl 205 `"Aruba"', add
label define mx10a_migctry5_lbl 206 `"Bahamas Islands"', add
label define mx10a_migctry5_lbl 208 `"Belize"', add
label define mx10a_migctry5_lbl 210 `"Bolivia"', add
label define mx10a_migctry5_lbl 213 `"Canada"', add
label define mx10a_migctry5_lbl 214 `"Colombia"', add
label define mx10a_migctry5_lbl 215 `"Costa Rica"', add
label define mx10a_migctry5_lbl 216 `"Cuba"', add
label define mx10a_migctry5_lbl 217 `"Chile"', add
label define mx10a_migctry5_lbl 219 `"Ecuador"', add
label define mx10a_migctry5_lbl 220 `"El Salvador"', add
label define mx10a_migctry5_lbl 221 `"USA"', add
label define mx10a_migctry5_lbl 222 `"Grenada Island"', add
label define mx10a_migctry5_lbl 225 `"Guatemala"', add
label define mx10a_migctry5_lbl 226 `"British Guyana"', add
label define mx10a_migctry5_lbl 228 `"Haiti"', add
label define mx10a_migctry5_lbl 229 `"Honduras"', add
label define mx10a_migctry5_lbl 230 `"Jamaica Island"', add
label define mx10a_migctry5_lbl 234 `"Nicaragua"', add
label define mx10a_migctry5_lbl 235 `"Panama"', add
label define mx10a_migctry5_lbl 236 `"Paraguay"', add
label define mx10a_migctry5_lbl 237 `"Peru"', add
label define mx10a_migctry5_lbl 238 `"Puerto Rico"', add
label define mx10a_migctry5_lbl 239 `"Dominican Republic"', add
label define mx10a_migctry5_lbl 245 `"Trinidad and Tobago"', add
label define mx10a_migctry5_lbl 246 `"Turcas and Caicos Islands"', add
label define mx10a_migctry5_lbl 247 `"Uruguay"', add
label define mx10a_migctry5_lbl 250 `"Venezuela"', add
label define mx10a_migctry5_lbl 300 `"Asia, no country specified"', add
label define mx10a_migctry5_lbl 302 `"Saudi Arabia"', add
label define mx10a_migctry5_lbl 309 `"Cambodia"', add
label define mx10a_migctry5_lbl 313 `"South Korea"', add
label define mx10a_migctry5_lbl 315 `"China"', add
label define mx10a_migctry5_lbl 316 `"Taiwan"', add
label define mx10a_migctry5_lbl 322 `"Philippines"', add
label define mx10a_migctry5_lbl 323 `"Georgia"', add
label define mx10a_migctry5_lbl 325 `"India"', add
label define mx10a_migctry5_lbl 326 `"Indonesia"', add
label define mx10a_migctry5_lbl 327 `"Iran"', add
label define mx10a_migctry5_lbl 328 `"Iraq"', add
label define mx10a_migctry5_lbl 329 `"Israel"', add
label define mx10a_migctry5_lbl 330 `"Japan"', add
label define mx10a_migctry5_lbl 331 `"Jordan"', add
label define mx10a_migctry5_lbl 335 `"Lebanon"', add
label define mx10a_migctry5_lbl 336 `"Macao"', add
label define mx10a_migctry5_lbl 337 `"Malaysia"', add
label define mx10a_migctry5_lbl 344 `"Qatar"', add
label define mx10a_migctry5_lbl 346 `"Singapore"', add
label define mx10a_migctry5_lbl 349 `"Thailand"', add
label define mx10a_migctry5_lbl 352 `"Turkey"', add
label define mx10a_migctry5_lbl 354 `"Vietnam"', add
label define mx10a_migctry5_lbl 358 `"Palestine"', add
label define mx10a_migctry5_lbl 400 `"Europe, no country specified"', add
label define mx10a_migctry5_lbl 402 `"Germany"', add
label define mx10a_migctry5_lbl 405 `"Austria"', add
label define mx10a_migctry5_lbl 407 `"Belarus"', add
label define mx10a_migctry5_lbl 408 `"Belgium"', add
label define mx10a_migctry5_lbl 410 `"Bulgaria"', add
label define mx10a_migctry5_lbl 411 `"Croatia"', add
label define mx10a_migctry5_lbl 412 `"Denmark"', add
label define mx10a_migctry5_lbl 413 `"Slovakia"', add
label define mx10a_migctry5_lbl 415 `"Spain"', add
label define mx10a_migctry5_lbl 418 `"Finland"', add
label define mx10a_migctry5_lbl 419 `"France"', add
label define mx10a_migctry5_lbl 421 `"Greece"', add
label define mx10a_migctry5_lbl 422 `"Hungary"', add
label define mx10a_migctry5_lbl 423 `"Ireland"', add
label define mx10a_migctry5_lbl 425 `"Italy"', add
label define mx10a_migctry5_lbl 435 `"Norway"', add
label define mx10a_migctry5_lbl 436 `"Holland"', add
label define mx10a_migctry5_lbl 437 `"Poland"', add
label define mx10a_migctry5_lbl 438 `"Portugal"', add
label define mx10a_migctry5_lbl 439 `"England"', add
label define mx10a_migctry5_lbl 440 `"Czech Republic"', add
label define mx10a_migctry5_lbl 441 `"Romania"', add
label define mx10a_migctry5_lbl 442 `"Russia"', add
label define mx10a_migctry5_lbl 445 `"Sweden"', add
label define mx10a_migctry5_lbl 446 `"Switzerland"', add
label define mx10a_migctry5_lbl 447 `"Ukraine"', add
label define mx10a_migctry5_lbl 448 `"Yugoslavia"', add
label define mx10a_migctry5_lbl 452 `"Serbia"', add
label define mx10a_migctry5_lbl 501 `"Australia"', add
label define mx10a_migctry5_lbl 520 `"New Zealand"', add
label define mx10a_migctry5_lbl 527 `"American Samoa"', add
label define mx10a_migctry5_lbl 600 `"Another country, not specified"', add
label define mx10a_migctry5_lbl 999 `"NIU (not in universe)"', add
label values mx10a_migctry5 mx10a_migctry5_lbl

label define mx10a_migstat5_lbl 01 `"Aguascalientes"'
label define mx10a_migstat5_lbl 02 `"Baja California"', add
label define mx10a_migstat5_lbl 03 `"Baja California Sur"', add
label define mx10a_migstat5_lbl 04 `"Campeche"', add
label define mx10a_migstat5_lbl 05 `"Coahuila de Zaragoza"', add
label define mx10a_migstat5_lbl 06 `"Colima"', add
label define mx10a_migstat5_lbl 07 `"Chiapas"', add
label define mx10a_migstat5_lbl 08 `"Chihuahua"', add
label define mx10a_migstat5_lbl 09 `"Distrito Federal"', add
label define mx10a_migstat5_lbl 10 `"Durango"', add
label define mx10a_migstat5_lbl 11 `"Guanajuato"', add
label define mx10a_migstat5_lbl 12 `"Guerrero"', add
label define mx10a_migstat5_lbl 13 `"Hidalgo"', add
label define mx10a_migstat5_lbl 14 `"Jalisco"', add
label define mx10a_migstat5_lbl 15 `"México"', add
label define mx10a_migstat5_lbl 16 `"Michoacán de Ocampo"', add
label define mx10a_migstat5_lbl 17 `"Morelos"', add
label define mx10a_migstat5_lbl 18 `"Nayarit"', add
label define mx10a_migstat5_lbl 19 `"Nuevo León"', add
label define mx10a_migstat5_lbl 20 `"Oaxaca"', add
label define mx10a_migstat5_lbl 21 `"Puebla"', add
label define mx10a_migstat5_lbl 22 `"Querétaro"', add
label define mx10a_migstat5_lbl 23 `"Quintana Roo"', add
label define mx10a_migstat5_lbl 24 `"San Luis Potosí"', add
label define mx10a_migstat5_lbl 25 `"Sinaloa"', add
label define mx10a_migstat5_lbl 26 `"Sonora"', add
label define mx10a_migstat5_lbl 27 `"Tabasco"', add
label define mx10a_migstat5_lbl 28 `"Tamaulipas"', add
label define mx10a_migstat5_lbl 29 `"Tlaxcala"', add
label define mx10a_migstat5_lbl 30 `"Veracruz de Ignacio de la Llave"', add
label define mx10a_migstat5_lbl 31 `"Yucatán"', add
label define mx10a_migstat5_lbl 32 `"Zacatecas"', add
label define mx10a_migstat5_lbl 97 `"Abroad"', add
label define mx10a_migstat5_lbl 98 `"Unknown"', add
label define mx10a_migstat5_lbl 99 `"NIU (not in universe)"', add
label values mx10a_migstat5 mx10a_migstat5_lbl

label define mx10a_migmuni5_lbl 01001 `"Aguascalientes"'
label define mx10a_migmuni5_lbl 01002 `"Asientos"', add
label define mx10a_migmuni5_lbl 01003 `"Calvillo"', add
label define mx10a_migmuni5_lbl 01004 `"Cosío"', add
label define mx10a_migmuni5_lbl 01005 `"Jesús María"', add
label define mx10a_migmuni5_lbl 01006 `"Pabellón de Arteaga"', add
label define mx10a_migmuni5_lbl 01007 `"Rincón de Romos"', add
label define mx10a_migmuni5_lbl 01008 `"San José de Gracia"', add
label define mx10a_migmuni5_lbl 01009 `"Tepezalá"', add
label define mx10a_migmuni5_lbl 01010 `"El Llano"', add
label define mx10a_migmuni5_lbl 01011 `"San Francisco de los Romo"', add
label define mx10a_migmuni5_lbl 01999 `"Aguascalientes entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 02001 `"Ensenada"', add
label define mx10a_migmuni5_lbl 02002 `"Mexicali"', add
label define mx10a_migmuni5_lbl 02003 `"Tecate"', add
label define mx10a_migmuni5_lbl 02004 `"Tijuana"', add
label define mx10a_migmuni5_lbl 02005 `"Playas de Rosarito"', add
label define mx10a_migmuni5_lbl 02999 `"Baja California entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 03001 `"Comondú"', add
label define mx10a_migmuni5_lbl 03002 `"Mulegé"', add
label define mx10a_migmuni5_lbl 03003 `"La Paz"', add
label define mx10a_migmuni5_lbl 03008 `"Los Cabos"', add
label define mx10a_migmuni5_lbl 03009 `"Loreto"', add
label define mx10a_migmuni5_lbl 03999 `"Baja California Sur entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 04001 `"Calkiní"', add
label define mx10a_migmuni5_lbl 04002 `"Campeche"', add
label define mx10a_migmuni5_lbl 04003 `"Carmen"', add
label define mx10a_migmuni5_lbl 04004 `"Champotón"', add
label define mx10a_migmuni5_lbl 04005 `"Hecelchakán"', add
label define mx10a_migmuni5_lbl 04006 `"Hopelchén"', add
label define mx10a_migmuni5_lbl 04007 `"Palizada"', add
label define mx10a_migmuni5_lbl 04008 `"Tenabo"', add
label define mx10a_migmuni5_lbl 04009 `"Escárcega"', add
label define mx10a_migmuni5_lbl 04010 `"Calakmul"', add
label define mx10a_migmuni5_lbl 04011 `"Candelaria"', add
label define mx10a_migmuni5_lbl 04999 `"Campeche entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 05001 `"Abasolo"', add
label define mx10a_migmuni5_lbl 05002 `"Acuña"', add
label define mx10a_migmuni5_lbl 05003 `"Allende"', add
label define mx10a_migmuni5_lbl 05004 `"Arteaga"', add
label define mx10a_migmuni5_lbl 05005 `"Candela"', add
label define mx10a_migmuni5_lbl 05006 `"Castaños"', add
label define mx10a_migmuni5_lbl 05007 `"Cuatro Ciénegas"', add
label define mx10a_migmuni5_lbl 05008 `"Escobedo"', add
label define mx10a_migmuni5_lbl 05009 `"Francisco I. Madero"', add
label define mx10a_migmuni5_lbl 05010 `"Frontera"', add
label define mx10a_migmuni5_lbl 05011 `"General Cepeda"', add
label define mx10a_migmuni5_lbl 05012 `"Guerrero"', add
label define mx10a_migmuni5_lbl 05013 `"Hidalgo"', add
label define mx10a_migmuni5_lbl 05014 `"Jiménez"', add
label define mx10a_migmuni5_lbl 05015 `"Juárez"', add
label define mx10a_migmuni5_lbl 05016 `"Lamadrid"', add
label define mx10a_migmuni5_lbl 05017 `"Matamoros"', add
label define mx10a_migmuni5_lbl 05018 `"Monclova"', add
label define mx10a_migmuni5_lbl 05019 `"Morelos"', add
label define mx10a_migmuni5_lbl 05020 `"Múzquiz"', add
label define mx10a_migmuni5_lbl 05021 `"Nadadores"', add
label define mx10a_migmuni5_lbl 05022 `"Nava"', add
label define mx10a_migmuni5_lbl 05023 `"Ocampo"', add
label define mx10a_migmuni5_lbl 05024 `"Parras"', add
label define mx10a_migmuni5_lbl 05025 `"Piedras Negras"', add
label define mx10a_migmuni5_lbl 05026 `"Progreso"', add
label define mx10a_migmuni5_lbl 05027 `"Ramos Arizpe"', add
label define mx10a_migmuni5_lbl 05028 `"Sabinas"', add
label define mx10a_migmuni5_lbl 05029 `"Sacramento"', add
label define mx10a_migmuni5_lbl 05030 `"Saltillo"', add
label define mx10a_migmuni5_lbl 05031 `"San Buenaventura"', add
label define mx10a_migmuni5_lbl 05032 `"San Juan de Sabinas"', add
label define mx10a_migmuni5_lbl 05033 `"San Pedro"', add
label define mx10a_migmuni5_lbl 05034 `"Sierra Mojada"', add
label define mx10a_migmuni5_lbl 05035 `"Torreón"', add
label define mx10a_migmuni5_lbl 05036 `"Viesca"', add
label define mx10a_migmuni5_lbl 05037 `"Villa Unión"', add
label define mx10a_migmuni5_lbl 05038 `"Zaragoza"', add
label define mx10a_migmuni5_lbl 05999 `"Coahuila de Zaragoza entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 06001 `"Armería"', add
label define mx10a_migmuni5_lbl 06002 `"Colima"', add
label define mx10a_migmuni5_lbl 06003 `"Comala"', add
label define mx10a_migmuni5_lbl 06004 `"Coquimatlán"', add
label define mx10a_migmuni5_lbl 06005 `"Cuauhtémoc"', add
label define mx10a_migmuni5_lbl 06006 `"Ixtlahuacán"', add
label define mx10a_migmuni5_lbl 06007 `"Manzanillo"', add
label define mx10a_migmuni5_lbl 06008 `"Minatitlán"', add
label define mx10a_migmuni5_lbl 06009 `"Tecomán"', add
label define mx10a_migmuni5_lbl 06010 `"Villa de Álvarez"', add
label define mx10a_migmuni5_lbl 06999 `"Colima entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 07001 `"Acacoyagua"', add
label define mx10a_migmuni5_lbl 07002 `"Acala"', add
label define mx10a_migmuni5_lbl 07003 `"Acapetahua"', add
label define mx10a_migmuni5_lbl 07004 `"Altamirano"', add
label define mx10a_migmuni5_lbl 07005 `"Amatán"', add
label define mx10a_migmuni5_lbl 07006 `"Amatenango de la Frontera"', add
label define mx10a_migmuni5_lbl 07007 `"Amatenango del Valle"', add
label define mx10a_migmuni5_lbl 07008 `"Angel Albino Corzo"', add
label define mx10a_migmuni5_lbl 07009 `"Arriaga"', add
label define mx10a_migmuni5_lbl 07010 `"Bejucal de Ocampo"', add
label define mx10a_migmuni5_lbl 07011 `"Bella Vista"', add
label define mx10a_migmuni5_lbl 07012 `"Berriozábal"', add
label define mx10a_migmuni5_lbl 07013 `"Bochil"', add
label define mx10a_migmuni5_lbl 07014 `"El Bosque"', add
label define mx10a_migmuni5_lbl 07015 `"Cacahoatán"', add
label define mx10a_migmuni5_lbl 07016 `"Catazajá"', add
label define mx10a_migmuni5_lbl 07017 `"Cintalapa"', add
label define mx10a_migmuni5_lbl 07018 `"Coapilla"', add
label define mx10a_migmuni5_lbl 07019 `"Comitán de Domínguez"', add
label define mx10a_migmuni5_lbl 07020 `"La Concordia"', add
label define mx10a_migmuni5_lbl 07021 `"Copainalá"', add
label define mx10a_migmuni5_lbl 07022 `"Chalchihuitán"', add
label define mx10a_migmuni5_lbl 07023 `"Chamula"', add
label define mx10a_migmuni5_lbl 07024 `"Chanal"', add
label define mx10a_migmuni5_lbl 07025 `"Chapultenango"', add
label define mx10a_migmuni5_lbl 07026 `"Chenalhó"', add
label define mx10a_migmuni5_lbl 07027 `"Chiapa de Corzo"', add
label define mx10a_migmuni5_lbl 07028 `"Chiapilla"', add
label define mx10a_migmuni5_lbl 07029 `"Chicoasén"', add
label define mx10a_migmuni5_lbl 07030 `"Chicomuselo"', add
label define mx10a_migmuni5_lbl 07031 `"Chilón"', add
label define mx10a_migmuni5_lbl 07032 `"Escuintla"', add
label define mx10a_migmuni5_lbl 07033 `"Francisco León"', add
label define mx10a_migmuni5_lbl 07034 `"Frontera Comalapa"', add
label define mx10a_migmuni5_lbl 07035 `"Frontera Hidalgo"', add
label define mx10a_migmuni5_lbl 07036 `"La Grandeza"', add
label define mx10a_migmuni5_lbl 07037 `"Huehuetán"', add
label define mx10a_migmuni5_lbl 07038 `"Huixtán"', add
label define mx10a_migmuni5_lbl 07039 `"Huitiupán"', add
label define mx10a_migmuni5_lbl 07040 `"Huixtla"', add
label define mx10a_migmuni5_lbl 07041 `"La Independencia"', add
label define mx10a_migmuni5_lbl 07042 `"Ixhuatán"', add
label define mx10a_migmuni5_lbl 07043 `"Ixtacomitán"', add
label define mx10a_migmuni5_lbl 07044 `"Ixtapa"', add
label define mx10a_migmuni5_lbl 07045 `"Ixtapangajoya"', add
label define mx10a_migmuni5_lbl 07046 `"Jiquipilas"', add
label define mx10a_migmuni5_lbl 07047 `"Jitotol"', add
label define mx10a_migmuni5_lbl 07048 `"Juárez"', add
label define mx10a_migmuni5_lbl 07049 `"Larráinzar"', add
label define mx10a_migmuni5_lbl 07050 `"La Libertad"', add
label define mx10a_migmuni5_lbl 07051 `"Mapastepec"', add
label define mx10a_migmuni5_lbl 07052 `"Las Margaritas"', add
label define mx10a_migmuni5_lbl 07053 `"Mazapa de Madero"', add
label define mx10a_migmuni5_lbl 07054 `"Mazatán"', add
label define mx10a_migmuni5_lbl 07055 `"Metapa"', add
label define mx10a_migmuni5_lbl 07056 `"Mitontic"', add
label define mx10a_migmuni5_lbl 07057 `"Motozintla"', add
label define mx10a_migmuni5_lbl 07058 `"Nicolás Ruíz"', add
label define mx10a_migmuni5_lbl 07059 `"Ocosingo"', add
label define mx10a_migmuni5_lbl 07060 `"Ocotepec"', add
label define mx10a_migmuni5_lbl 07061 `"Ocozocoautla de Espinosa"', add
label define mx10a_migmuni5_lbl 07062 `"Ostuacán"', add
label define mx10a_migmuni5_lbl 07063 `"Osumacinta"', add
label define mx10a_migmuni5_lbl 07064 `"Oxchuc"', add
label define mx10a_migmuni5_lbl 07065 `"Palenque"', add
label define mx10a_migmuni5_lbl 07066 `"Pantelhó"', add
label define mx10a_migmuni5_lbl 07067 `"Pantepec"', add
label define mx10a_migmuni5_lbl 07068 `"Pichucalco"', add
label define mx10a_migmuni5_lbl 07069 `"Pijijiapan"', add
label define mx10a_migmuni5_lbl 07070 `"El Porvenir"', add
label define mx10a_migmuni5_lbl 07071 `"Villa Comaltitlán"', add
label define mx10a_migmuni5_lbl 07072 `"Pueblo Nuevo Solistahuacán"', add
label define mx10a_migmuni5_lbl 07073 `"Rayón"', add
label define mx10a_migmuni5_lbl 07074 `"Reforma"', add
label define mx10a_migmuni5_lbl 07075 `"Las Rosas"', add
label define mx10a_migmuni5_lbl 07076 `"Sabanilla"', add
label define mx10a_migmuni5_lbl 07077 `"Salto de Agua"', add
label define mx10a_migmuni5_lbl 07078 `"San Cristóbal de las Casas"', add
label define mx10a_migmuni5_lbl 07079 `"San Fernando"', add
label define mx10a_migmuni5_lbl 07080 `"Siltepec"', add
label define mx10a_migmuni5_lbl 07081 `"Simojovel"', add
label define mx10a_migmuni5_lbl 07082 `"Sitalá"', add
label define mx10a_migmuni5_lbl 07083 `"Socoltenango"', add
label define mx10a_migmuni5_lbl 07084 `"Solosuchiapa"', add
label define mx10a_migmuni5_lbl 07085 `"Soyaló"', add
label define mx10a_migmuni5_lbl 07086 `"Suchiapa"', add
label define mx10a_migmuni5_lbl 07087 `"Suchiate"', add
label define mx10a_migmuni5_lbl 07088 `"Sunuapa"', add
label define mx10a_migmuni5_lbl 07089 `"Tapachula"', add
label define mx10a_migmuni5_lbl 07090 `"Tapalapa"', add
label define mx10a_migmuni5_lbl 07091 `"Tapilula"', add
label define mx10a_migmuni5_lbl 07092 `"Tecpatán"', add
label define mx10a_migmuni5_lbl 07093 `"Tenejapa"', add
label define mx10a_migmuni5_lbl 07094 `"Teopisca"', add
label define mx10a_migmuni5_lbl 07096 `"Tila"', add
label define mx10a_migmuni5_lbl 07097 `"Tonalá"', add
label define mx10a_migmuni5_lbl 07098 `"Totolapa"', add
label define mx10a_migmuni5_lbl 07099 `"La Trinitaria"', add
label define mx10a_migmuni5_lbl 07100 `"Tumbalá"', add
label define mx10a_migmuni5_lbl 07101 `"Tuxtla Gutiérrez"', add
label define mx10a_migmuni5_lbl 07102 `"Tuxtla Chico"', add
label define mx10a_migmuni5_lbl 07103 `"Tuzantán"', add
label define mx10a_migmuni5_lbl 07104 `"Tzimol"', add
label define mx10a_migmuni5_lbl 07105 `"Unión Juárez"', add
label define mx10a_migmuni5_lbl 07106 `"Venustiano Carranza"', add
label define mx10a_migmuni5_lbl 07107 `"Villa Corzo"', add
label define mx10a_migmuni5_lbl 07108 `"Villaflores"', add
label define mx10a_migmuni5_lbl 07109 `"Yajalón"', add
label define mx10a_migmuni5_lbl 07110 `"San Lucas"', add
label define mx10a_migmuni5_lbl 07111 `"Zinacantán"', add
label define mx10a_migmuni5_lbl 07112 `"San Juan Cancuc"', add
label define mx10a_migmuni5_lbl 07113 `"Aldama"', add
label define mx10a_migmuni5_lbl 07114 `"Benemérito de las Américas"', add
label define mx10a_migmuni5_lbl 07115 `"Maravilla Tenejapa"', add
label define mx10a_migmuni5_lbl 07116 `"Marqués de Comillas"', add
label define mx10a_migmuni5_lbl 07117 `"Montecristo de Guerrero"', add
label define mx10a_migmuni5_lbl 07118 `"San Andrés Duraznal"', add
label define mx10a_migmuni5_lbl 07119 `"Santiago el Pinar"', add
label define mx10a_migmuni5_lbl 07999 `"Chiapas entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 08001 `"Ahumada"', add
label define mx10a_migmuni5_lbl 08002 `"Aldama"', add
label define mx10a_migmuni5_lbl 08003 `"Allende"', add
label define mx10a_migmuni5_lbl 08004 `"Aquiles Serdán"', add
label define mx10a_migmuni5_lbl 08005 `"Ascensión"', add
label define mx10a_migmuni5_lbl 08006 `"Bachíniva"', add
label define mx10a_migmuni5_lbl 08007 `"Balleza"', add
label define mx10a_migmuni5_lbl 08008 `"Batopilas"', add
label define mx10a_migmuni5_lbl 08009 `"Bocoyna"', add
label define mx10a_migmuni5_lbl 08010 `"Buenaventura"', add
label define mx10a_migmuni5_lbl 08011 `"Camargo"', add
label define mx10a_migmuni5_lbl 08012 `"Carichí"', add
label define mx10a_migmuni5_lbl 08013 `"Casas Grandes"', add
label define mx10a_migmuni5_lbl 08014 `"Coronado"', add
label define mx10a_migmuni5_lbl 08015 `"Coyame del Sotol"', add
label define mx10a_migmuni5_lbl 08016 `"La Cruz"', add
label define mx10a_migmuni5_lbl 08017 `"Cuauhtémoc"', add
label define mx10a_migmuni5_lbl 08018 `"Cusihuiriachi"', add
label define mx10a_migmuni5_lbl 08019 `"Chihuahua"', add
label define mx10a_migmuni5_lbl 08020 `"Chínipas"', add
label define mx10a_migmuni5_lbl 08021 `"Delicias"', add
label define mx10a_migmuni5_lbl 08022 `"Dr. Belisario Domínguez"', add
label define mx10a_migmuni5_lbl 08023 `"Galeana"', add
label define mx10a_migmuni5_lbl 08024 `"Santa Isabel"', add
label define mx10a_migmuni5_lbl 08025 `"Gómez Farías"', add
label define mx10a_migmuni5_lbl 08026 `"Gran Morelos"', add
label define mx10a_migmuni5_lbl 08027 `"Guachochi"', add
label define mx10a_migmuni5_lbl 08028 `"Guadalupe"', add
label define mx10a_migmuni5_lbl 08029 `"Guadalupe y Calvo"', add
label define mx10a_migmuni5_lbl 08030 `"Guazapares"', add
label define mx10a_migmuni5_lbl 08031 `"Guerrero"', add
label define mx10a_migmuni5_lbl 08032 `"Hidalgo del Parral"', add
label define mx10a_migmuni5_lbl 08033 `"Huejotitán"', add
label define mx10a_migmuni5_lbl 08034 `"Ignacio Zaragoza"', add
label define mx10a_migmuni5_lbl 08035 `"Janos"', add
label define mx10a_migmuni5_lbl 08036 `"Jiménez"', add
label define mx10a_migmuni5_lbl 08037 `"Juárez"', add
label define mx10a_migmuni5_lbl 08038 `"Julimes"', add
label define mx10a_migmuni5_lbl 08039 `"López"', add
label define mx10a_migmuni5_lbl 08040 `"Madera"', add
label define mx10a_migmuni5_lbl 08041 `"Maguarichi"', add
label define mx10a_migmuni5_lbl 08042 `"Manuel Benavides"', add
label define mx10a_migmuni5_lbl 08043 `"Matachí"', add
label define mx10a_migmuni5_lbl 08044 `"Matamoros"', add
label define mx10a_migmuni5_lbl 08045 `"Meoqui"', add
label define mx10a_migmuni5_lbl 08046 `"Morelos"', add
label define mx10a_migmuni5_lbl 08047 `"Moris"', add
label define mx10a_migmuni5_lbl 08048 `"Namiquipa"', add
label define mx10a_migmuni5_lbl 08049 `"Nonoava"', add
label define mx10a_migmuni5_lbl 08050 `"Nuevo Casas Grandes"', add
label define mx10a_migmuni5_lbl 08051 `"Ocampo"', add
label define mx10a_migmuni5_lbl 08052 `"Ojinaga"', add
label define mx10a_migmuni5_lbl 08053 `"Praxedis G. Guerrero"', add
label define mx10a_migmuni5_lbl 08054 `"Riva Palacio"', add
label define mx10a_migmuni5_lbl 08055 `"Rosales"', add
label define mx10a_migmuni5_lbl 08056 `"Rosario"', add
label define mx10a_migmuni5_lbl 08057 `"San Francisco de Borja"', add
label define mx10a_migmuni5_lbl 08058 `"San Francisco de Conchos"', add
label define mx10a_migmuni5_lbl 08059 `"San Francisco del Oro"', add
label define mx10a_migmuni5_lbl 08060 `"Santa Bárbara"', add
label define mx10a_migmuni5_lbl 08061 `"Satevó"', add
label define mx10a_migmuni5_lbl 08062 `"Saucillo"', add
label define mx10a_migmuni5_lbl 08063 `"Temósachic"', add
label define mx10a_migmuni5_lbl 08064 `"El Tule"', add
label define mx10a_migmuni5_lbl 08065 `"Urique"', add
label define mx10a_migmuni5_lbl 08066 `"Uruachi"', add
label define mx10a_migmuni5_lbl 08067 `"Valle de Zaragoza"', add
label define mx10a_migmuni5_lbl 08999 `"Chihuahua entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 09002 `"Azcapotzalco"', add
label define mx10a_migmuni5_lbl 09003 `"Coyoacán"', add
label define mx10a_migmuni5_lbl 09004 `"Cuajimalpa de Morelos"', add
label define mx10a_migmuni5_lbl 09005 `"Gustavo A. Madero"', add
label define mx10a_migmuni5_lbl 09006 `"Iztacalco"', add
label define mx10a_migmuni5_lbl 09007 `"Iztapalapa"', add
label define mx10a_migmuni5_lbl 09008 `"La Magdalena Contreras"', add
label define mx10a_migmuni5_lbl 09009 `"Milpa Alta"', add
label define mx10a_migmuni5_lbl 09010 `"Álvaro Obregón"', add
label define mx10a_migmuni5_lbl 09011 `"Tláhuac"', add
label define mx10a_migmuni5_lbl 09012 `"Tlalpan"', add
label define mx10a_migmuni5_lbl 09013 `"Xochimilco"', add
label define mx10a_migmuni5_lbl 09014 `"Benito Juárez"', add
label define mx10a_migmuni5_lbl 09015 `"Cuauhtémoc"', add
label define mx10a_migmuni5_lbl 09016 `"Miguel Hidalgo"', add
label define mx10a_migmuni5_lbl 09017 `"Venustiano Carranza"', add
label define mx10a_migmuni5_lbl 09999 `"Distrito Federal entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 10001 `"Canatlán"', add
label define mx10a_migmuni5_lbl 10002 `"Canelas"', add
label define mx10a_migmuni5_lbl 10003 `"Coneto de Comonfort"', add
label define mx10a_migmuni5_lbl 10004 `"Cuencamé"', add
label define mx10a_migmuni5_lbl 10005 `"Durango"', add
label define mx10a_migmuni5_lbl 10006 `"General Simón Bolívar"', add
label define mx10a_migmuni5_lbl 10007 `"Gómez Palacio"', add
label define mx10a_migmuni5_lbl 10008 `"Guadalupe Victoria"', add
label define mx10a_migmuni5_lbl 10009 `"Guanaceví"', add
label define mx10a_migmuni5_lbl 10010 `"Hidalgo"', add
label define mx10a_migmuni5_lbl 10011 `"Indé"', add
label define mx10a_migmuni5_lbl 10012 `"Lerdo"', add
label define mx10a_migmuni5_lbl 10013 `"Mapimí"', add
label define mx10a_migmuni5_lbl 10014 `"Mezquital"', add
label define mx10a_migmuni5_lbl 10015 `"Nazas"', add
label define mx10a_migmuni5_lbl 10016 `"Nombre de Dios"', add
label define mx10a_migmuni5_lbl 10017 `"Ocampo"', add
label define mx10a_migmuni5_lbl 10018 `"El Oro"', add
label define mx10a_migmuni5_lbl 10019 `"Otáez"', add
label define mx10a_migmuni5_lbl 10020 `"Pánuco de Coronado"', add
label define mx10a_migmuni5_lbl 10021 `"Peñón Blanco"', add
label define mx10a_migmuni5_lbl 10022 `"Poanas"', add
label define mx10a_migmuni5_lbl 10023 `"Pueblo Nuevo"', add
label define mx10a_migmuni5_lbl 10024 `"Rodeo"', add
label define mx10a_migmuni5_lbl 10025 `"San Bernardo"', add
label define mx10a_migmuni5_lbl 10026 `"San Dimas"', add
label define mx10a_migmuni5_lbl 10027 `"San Juan de Guadalupe"', add
label define mx10a_migmuni5_lbl 10028 `"San Juan del Río"', add
label define mx10a_migmuni5_lbl 10029 `"San Luis del Cordero"', add
label define mx10a_migmuni5_lbl 10030 `"San Pedro del Gallo"', add
label define mx10a_migmuni5_lbl 10031 `"Santa Clara"', add
label define mx10a_migmuni5_lbl 10032 `"Santiago Papasquiaro"', add
label define mx10a_migmuni5_lbl 10033 `"Súchil"', add
label define mx10a_migmuni5_lbl 10034 `"Tamazula"', add
label define mx10a_migmuni5_lbl 10035 `"Tepehuanes"', add
label define mx10a_migmuni5_lbl 10036 `"Tlahualilo"', add
label define mx10a_migmuni5_lbl 10037 `"Topia"', add
label define mx10a_migmuni5_lbl 10038 `"Vicente Guerrero"', add
label define mx10a_migmuni5_lbl 10039 `"Nuevo Ideal"', add
label define mx10a_migmuni5_lbl 10999 `"Durango entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 11001 `"Abasolo"', add
label define mx10a_migmuni5_lbl 11002 `"Acámbaro"', add
label define mx10a_migmuni5_lbl 11003 `"San Miguel de Allende"', add
label define mx10a_migmuni5_lbl 11004 `"Apaseo el Alto"', add
label define mx10a_migmuni5_lbl 11005 `"Apaseo el Grande"', add
label define mx10a_migmuni5_lbl 11006 `"Atarjea"', add
label define mx10a_migmuni5_lbl 11007 `"Celaya"', add
label define mx10a_migmuni5_lbl 11008 `"Manuel Doblado"', add
label define mx10a_migmuni5_lbl 11009 `"Comonfort"', add
label define mx10a_migmuni5_lbl 11010 `"Coroneo"', add
label define mx10a_migmuni5_lbl 11011 `"Cortazar"', add
label define mx10a_migmuni5_lbl 11012 `"Cuerámaro"', add
label define mx10a_migmuni5_lbl 11013 `"Doctor Mora"', add
label define mx10a_migmuni5_lbl 11014 `"Dolores Hidalgo Cuna de la Independencia Nacional"', add
label define mx10a_migmuni5_lbl 11015 `"Guanajuato"', add
label define mx10a_migmuni5_lbl 11016 `"Huanímaro"', add
label define mx10a_migmuni5_lbl 11017 `"Irapuato"', add
label define mx10a_migmuni5_lbl 11018 `"Jaral del Progreso"', add
label define mx10a_migmuni5_lbl 11019 `"Jerécuaro"', add
label define mx10a_migmuni5_lbl 11020 `"León"', add
label define mx10a_migmuni5_lbl 11021 `"Moroleón"', add
label define mx10a_migmuni5_lbl 11022 `"Ocampo"', add
label define mx10a_migmuni5_lbl 11023 `"Pénjamo"', add
label define mx10a_migmuni5_lbl 11024 `"Pueblo Nuevo"', add
label define mx10a_migmuni5_lbl 11025 `"Purísima del Rincón"', add
label define mx10a_migmuni5_lbl 11026 `"Romita"', add
label define mx10a_migmuni5_lbl 11027 `"Salamanca"', add
label define mx10a_migmuni5_lbl 11028 `"Salvatierra"', add
label define mx10a_migmuni5_lbl 11029 `"San Diego de la Unión"', add
label define mx10a_migmuni5_lbl 11030 `"San Felipe"', add
label define mx10a_migmuni5_lbl 11031 `"San Francisco del Rincón"', add
label define mx10a_migmuni5_lbl 11032 `"San José Iturbide"', add
label define mx10a_migmuni5_lbl 11033 `"San Luis de la Paz"', add
label define mx10a_migmuni5_lbl 11034 `"Santa Catarina"', add
label define mx10a_migmuni5_lbl 11035 `"Santa Cruz de Juventino Rosas"', add
label define mx10a_migmuni5_lbl 11036 `"Santiago Maravatío"', add
label define mx10a_migmuni5_lbl 11037 `"Silao"', add
label define mx10a_migmuni5_lbl 11038 `"Tarandacuao"', add
label define mx10a_migmuni5_lbl 11039 `"Tarimoro"', add
label define mx10a_migmuni5_lbl 11040 `"Tierra Blanca"', add
label define mx10a_migmuni5_lbl 11041 `"Uriangato"', add
label define mx10a_migmuni5_lbl 11042 `"Valle de Santiago"', add
label define mx10a_migmuni5_lbl 11043 `"Victoria"', add
label define mx10a_migmuni5_lbl 11044 `"Villagrán"', add
label define mx10a_migmuni5_lbl 11045 `"Xichú"', add
label define mx10a_migmuni5_lbl 11046 `"Yuriria"', add
label define mx10a_migmuni5_lbl 11999 `"Guanajuato entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 12001 `"Acapulco de Juárez"', add
label define mx10a_migmuni5_lbl 12002 `"Ahuacuotzingo"', add
label define mx10a_migmuni5_lbl 12003 `"Ajuchitlán del Progreso"', add
label define mx10a_migmuni5_lbl 12004 `"Alcozauca de Guerrero"', add
label define mx10a_migmuni5_lbl 12005 `"Alpoyeca"', add
label define mx10a_migmuni5_lbl 12006 `"Apaxtla"', add
label define mx10a_migmuni5_lbl 12007 `"Arcelia"', add
label define mx10a_migmuni5_lbl 12008 `"Atenango del Río"', add
label define mx10a_migmuni5_lbl 12009 `"Atlamajalcingo del Monte"', add
label define mx10a_migmuni5_lbl 12010 `"Atlixtac"', add
label define mx10a_migmuni5_lbl 12011 `"Atoyac de Álvarez"', add
label define mx10a_migmuni5_lbl 12012 `"Ayutla de los Libres"', add
label define mx10a_migmuni5_lbl 12013 `"Azoyú"', add
label define mx10a_migmuni5_lbl 12014 `"Benito Juárez"', add
label define mx10a_migmuni5_lbl 12015 `"Buenavista de Cuéllar"', add
label define mx10a_migmuni5_lbl 12016 `"Coahuayutla de José María Izazaga"', add
label define mx10a_migmuni5_lbl 12017 `"Cocula"', add
label define mx10a_migmuni5_lbl 12018 `"Copala"', add
label define mx10a_migmuni5_lbl 12019 `"Copalillo"', add
label define mx10a_migmuni5_lbl 12020 `"Copanatoyac"', add
label define mx10a_migmuni5_lbl 12021 `"Coyuca de Benítez"', add
label define mx10a_migmuni5_lbl 12022 `"Coyuca de Catalán"', add
label define mx10a_migmuni5_lbl 12023 `"Cuajinicuilapa"', add
label define mx10a_migmuni5_lbl 12024 `"Cualác"', add
label define mx10a_migmuni5_lbl 12025 `"Cuautepec"', add
label define mx10a_migmuni5_lbl 12026 `"Cuetzala del Progreso"', add
label define mx10a_migmuni5_lbl 12027 `"Cutzamala de Pinzón"', add
label define mx10a_migmuni5_lbl 12028 `"Chilapa de Álvarez"', add
label define mx10a_migmuni5_lbl 12029 `"Chilpancingo de los Bravo"', add
label define mx10a_migmuni5_lbl 12030 `"Florencio Villarreal"', add
label define mx10a_migmuni5_lbl 12031 `"General Canuto A. Neri"', add
label define mx10a_migmuni5_lbl 12032 `"General Heliodoro Castillo"', add
label define mx10a_migmuni5_lbl 12033 `"Huamuxtitlán"', add
label define mx10a_migmuni5_lbl 12034 `"Huitzuco de los Figueroa"', add
label define mx10a_migmuni5_lbl 12035 `"Iguala de la Independencia"', add
label define mx10a_migmuni5_lbl 12036 `"Igualapa"', add
label define mx10a_migmuni5_lbl 12037 `"Ixcateopan de Cuauhtémoc"', add
label define mx10a_migmuni5_lbl 12038 `"Zihuatanejo de Azueta"', add
label define mx10a_migmuni5_lbl 12039 `"Juan R. Escudero"', add
label define mx10a_migmuni5_lbl 12040 `"Leonardo Bravo"', add
label define mx10a_migmuni5_lbl 12041 `"Malinaltepec"', add
label define mx10a_migmuni5_lbl 12042 `"Mártir de Cuilapan"', add
label define mx10a_migmuni5_lbl 12043 `"Metlatónoc"', add
label define mx10a_migmuni5_lbl 12044 `"Mochitlán"', add
label define mx10a_migmuni5_lbl 12045 `"Olinalá"', add
label define mx10a_migmuni5_lbl 12046 `"Ometepec"', add
label define mx10a_migmuni5_lbl 12047 `"Pedro Ascencio Alquisiras"', add
label define mx10a_migmuni5_lbl 12048 `"Petatlán"', add
label define mx10a_migmuni5_lbl 12049 `"Pilcaya"', add
label define mx10a_migmuni5_lbl 12050 `"Pungarabato"', add
label define mx10a_migmuni5_lbl 12051 `"Quechultenango"', add
label define mx10a_migmuni5_lbl 12052 `"San Luis Acatlán"', add
label define mx10a_migmuni5_lbl 12053 `"San Marcos"', add
label define mx10a_migmuni5_lbl 12054 `"San Miguel Totolapan"', add
label define mx10a_migmuni5_lbl 12055 `"Taxco de Alarcón"', add
label define mx10a_migmuni5_lbl 12056 `"Tecoanapa"', add
label define mx10a_migmuni5_lbl 12057 `"Técpan de Galeana"', add
label define mx10a_migmuni5_lbl 12058 `"Teloloapan"', add
label define mx10a_migmuni5_lbl 12059 `"Tepecoacuilco de Trujano"', add
label define mx10a_migmuni5_lbl 12060 `"Tetipac"', add
label define mx10a_migmuni5_lbl 12061 `"Tixtla de Guerrero"', add
label define mx10a_migmuni5_lbl 12062 `"Tlacoachistlahuaca"', add
label define mx10a_migmuni5_lbl 12063 `"Tlacoapa"', add
label define mx10a_migmuni5_lbl 12064 `"Tlalchapa"', add
label define mx10a_migmuni5_lbl 12065 `"Tlalixtaquilla de Maldonado"', add
label define mx10a_migmuni5_lbl 12066 `"Tlapa de Comonfort"', add
label define mx10a_migmuni5_lbl 12067 `"Tlapehuala"', add
label define mx10a_migmuni5_lbl 12068 `"La Unión de Isidoro Montes de Oca"', add
label define mx10a_migmuni5_lbl 12069 `"Xalpatláhuac"', add
label define mx10a_migmuni5_lbl 12070 `"Xochihuehuetlán"', add
label define mx10a_migmuni5_lbl 12071 `"Xochistlahuaca"', add
label define mx10a_migmuni5_lbl 12072 `"Zapotitlán Tablas"', add
label define mx10a_migmuni5_lbl 12073 `"Zirándaro"', add
label define mx10a_migmuni5_lbl 12074 `"Zitlala"', add
label define mx10a_migmuni5_lbl 12075 `"Eduardo Neri"', add
label define mx10a_migmuni5_lbl 12076 `"Acatepec"', add
label define mx10a_migmuni5_lbl 12077 `"Marquelia"', add
label define mx10a_migmuni5_lbl 12078 `"Cochoapa el Grande"', add
label define mx10a_migmuni5_lbl 12079 `"José Joaquin de Herrera"', add
label define mx10a_migmuni5_lbl 12080 `"Juchitán"', add
label define mx10a_migmuni5_lbl 12081 `"Iliatenco"', add
label define mx10a_migmuni5_lbl 12999 `"Guerrero entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 13001 `"Acatlán"', add
label define mx10a_migmuni5_lbl 13002 `"Acaxochitlán"', add
label define mx10a_migmuni5_lbl 13003 `"Actopan"', add
label define mx10a_migmuni5_lbl 13004 `"Agua Blanca de Iturbide"', add
label define mx10a_migmuni5_lbl 13005 `"Ajacuba"', add
label define mx10a_migmuni5_lbl 13006 `"Alfajayucan"', add
label define mx10a_migmuni5_lbl 13007 `"Almoloya"', add
label define mx10a_migmuni5_lbl 13008 `"Apan"', add
label define mx10a_migmuni5_lbl 13009 `"El Arenal"', add
label define mx10a_migmuni5_lbl 13010 `"Atitalaquia"', add
label define mx10a_migmuni5_lbl 13011 `"Atlapexco"', add
label define mx10a_migmuni5_lbl 13012 `"Atotonilco el Grande"', add
label define mx10a_migmuni5_lbl 13013 `"Atotonilco de Tula"', add
label define mx10a_migmuni5_lbl 13014 `"Calnali"', add
label define mx10a_migmuni5_lbl 13015 `"Cardonal"', add
label define mx10a_migmuni5_lbl 13016 `"Cuautepec de Hinojosa"', add
label define mx10a_migmuni5_lbl 13017 `"Chapantongo"', add
label define mx10a_migmuni5_lbl 13018 `"Chapulhuacán"', add
label define mx10a_migmuni5_lbl 13019 `"Chilcuautla"', add
label define mx10a_migmuni5_lbl 13020 `"Eloxochitlán"', add
label define mx10a_migmuni5_lbl 13021 `"Emiliano Zapata"', add
label define mx10a_migmuni5_lbl 13022 `"Epazoyucan"', add
label define mx10a_migmuni5_lbl 13023 `"Francisco I. Madero"', add
label define mx10a_migmuni5_lbl 13024 `"Huasca de Ocampo"', add
label define mx10a_migmuni5_lbl 13025 `"Huautla"', add
label define mx10a_migmuni5_lbl 13026 `"Huazalingo"', add
label define mx10a_migmuni5_lbl 13027 `"Huehuetla"', add
label define mx10a_migmuni5_lbl 13028 `"Huejutla de Reyes"', add
label define mx10a_migmuni5_lbl 13029 `"Huichapan"', add
label define mx10a_migmuni5_lbl 13030 `"Ixmiquilpan"', add
label define mx10a_migmuni5_lbl 13031 `"Jacala de Ledezma"', add
label define mx10a_migmuni5_lbl 13032 `"Jaltocán"', add
label define mx10a_migmuni5_lbl 13033 `"Juárez Hidalgo"', add
label define mx10a_migmuni5_lbl 13034 `"Lolotla"', add
label define mx10a_migmuni5_lbl 13035 `"Metepec"', add
label define mx10a_migmuni5_lbl 13036 `"San Agustín Metzquititlán"', add
label define mx10a_migmuni5_lbl 13037 `"Metztitlán"', add
label define mx10a_migmuni5_lbl 13038 `"Mineral del Chico"', add
label define mx10a_migmuni5_lbl 13039 `"Mineral del Monte"', add
label define mx10a_migmuni5_lbl 13040 `"La Misión"', add
label define mx10a_migmuni5_lbl 13041 `"Mixquiahuala de Juárez"', add
label define mx10a_migmuni5_lbl 13042 `"Molango de Escamilla"', add
label define mx10a_migmuni5_lbl 13043 `"Nicolás Flores"', add
label define mx10a_migmuni5_lbl 13044 `"Nopala de Villagrán"', add
label define mx10a_migmuni5_lbl 13045 `"Omitlán de Juárez"', add
label define mx10a_migmuni5_lbl 13046 `"San Felipe Orizatlán"', add
label define mx10a_migmuni5_lbl 13047 `"Pacula"', add
label define mx10a_migmuni5_lbl 13048 `"Pachuca de Soto"', add
label define mx10a_migmuni5_lbl 13049 `"Pisaflores"', add
label define mx10a_migmuni5_lbl 13050 `"Progreso de Obregón"', add
label define mx10a_migmuni5_lbl 13051 `"Mineral de la Reforma"', add
label define mx10a_migmuni5_lbl 13052 `"San Agustín Tlaxiaca"', add
label define mx10a_migmuni5_lbl 13053 `"San Bartolo Tutotepec"', add
label define mx10a_migmuni5_lbl 13054 `"San Salvador"', add
label define mx10a_migmuni5_lbl 13055 `"Santiago de Anaya"', add
label define mx10a_migmuni5_lbl 13056 `"Santiago Tulantepec de Lugo Guerrero"', add
label define mx10a_migmuni5_lbl 13057 `"Singuilucan"', add
label define mx10a_migmuni5_lbl 13058 `"Tasquillo"', add
label define mx10a_migmuni5_lbl 13059 `"Tecozautla"', add
label define mx10a_migmuni5_lbl 13060 `"Tenango de Doria"', add
label define mx10a_migmuni5_lbl 13061 `"Tepeapulco"', add
label define mx10a_migmuni5_lbl 13062 `"Tepehuacán de Guerrero"', add
label define mx10a_migmuni5_lbl 13063 `"Tepeji del Río de Ocampo"', add
label define mx10a_migmuni5_lbl 13064 `"Tepetitlán"', add
label define mx10a_migmuni5_lbl 13065 `"Tetepango"', add
label define mx10a_migmuni5_lbl 13066 `"Villa de Tezontepec"', add
label define mx10a_migmuni5_lbl 13067 `"Tezontepec de Aldama"', add
label define mx10a_migmuni5_lbl 13068 `"Tianguistengo"', add
label define mx10a_migmuni5_lbl 13069 `"Tizayuca"', add
label define mx10a_migmuni5_lbl 13070 `"Tlahuelilpan"', add
label define mx10a_migmuni5_lbl 13071 `"Tlahuiltepa"', add
label define mx10a_migmuni5_lbl 13072 `"Tlanalapa"', add
label define mx10a_migmuni5_lbl 13073 `"Tlanchinol"', add
label define mx10a_migmuni5_lbl 13074 `"Tlaxcoapan"', add
label define mx10a_migmuni5_lbl 13075 `"Tolcayuca"', add
label define mx10a_migmuni5_lbl 13076 `"Tula de Allende"', add
label define mx10a_migmuni5_lbl 13077 `"Tulancingo de Bravo"', add
label define mx10a_migmuni5_lbl 13078 `"Xochiatipan"', add
label define mx10a_migmuni5_lbl 13079 `"Xochicoatlán"', add
label define mx10a_migmuni5_lbl 13080 `"Yahualica"', add
label define mx10a_migmuni5_lbl 13081 `"Zacualtipán de Ángeles"', add
label define mx10a_migmuni5_lbl 13082 `"Zapotlán de Juárez"', add
label define mx10a_migmuni5_lbl 13083 `"Zempoala"', add
label define mx10a_migmuni5_lbl 13084 `"Zimapán"', add
label define mx10a_migmuni5_lbl 13999 `"Hidalgo entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 14001 `"Acatic"', add
label define mx10a_migmuni5_lbl 14002 `"Acatlán de Juárez"', add
label define mx10a_migmuni5_lbl 14003 `"Ahualulco de Mercado"', add
label define mx10a_migmuni5_lbl 14004 `"Amacueca"', add
label define mx10a_migmuni5_lbl 14005 `"Amatitán"', add
label define mx10a_migmuni5_lbl 14006 `"Ameca"', add
label define mx10a_migmuni5_lbl 14007 `"San Juanito de Escobedo"', add
label define mx10a_migmuni5_lbl 14008 `"Arandas"', add
label define mx10a_migmuni5_lbl 14009 `"El Arenal"', add
label define mx10a_migmuni5_lbl 14010 `"Atemajac de Brizuela"', add
label define mx10a_migmuni5_lbl 14011 `"Atengo"', add
label define mx10a_migmuni5_lbl 14012 `"Atenguillo"', add
label define mx10a_migmuni5_lbl 14013 `"Atotonilco el Alto"', add
label define mx10a_migmuni5_lbl 14014 `"Atoyac"', add
label define mx10a_migmuni5_lbl 14015 `"Autlán de Navarro"', add
label define mx10a_migmuni5_lbl 14016 `"Ayotlán"', add
label define mx10a_migmuni5_lbl 14017 `"Ayutla"', add
label define mx10a_migmuni5_lbl 14018 `"La Barca"', add
label define mx10a_migmuni5_lbl 14019 `"Bolaños"', add
label define mx10a_migmuni5_lbl 14020 `"Cabo Corrientes"', add
label define mx10a_migmuni5_lbl 14021 `"Casimiro Castillo"', add
label define mx10a_migmuni5_lbl 14022 `"Cihuatlán"', add
label define mx10a_migmuni5_lbl 14023 `"Zapotlán el Grande"', add
label define mx10a_migmuni5_lbl 14024 `"Cocula"', add
label define mx10a_migmuni5_lbl 14025 `"Colotlán"', add
label define mx10a_migmuni5_lbl 14026 `"Concepción de Buenos Aires"', add
label define mx10a_migmuni5_lbl 14027 `"Cuautitlán de García Barragán"', add
label define mx10a_migmuni5_lbl 14028 `"Cuautla"', add
label define mx10a_migmuni5_lbl 14029 `"Cuquío"', add
label define mx10a_migmuni5_lbl 14030 `"Chapala"', add
label define mx10a_migmuni5_lbl 14031 `"Chimaltitán"', add
label define mx10a_migmuni5_lbl 14032 `"Chiquilistlán"', add
label define mx10a_migmuni5_lbl 14033 `"Degollado"', add
label define mx10a_migmuni5_lbl 14034 `"Ejutla"', add
label define mx10a_migmuni5_lbl 14035 `"Encarnación de Díaz"', add
label define mx10a_migmuni5_lbl 14036 `"Etzatlán"', add
label define mx10a_migmuni5_lbl 14037 `"El Grullo"', add
label define mx10a_migmuni5_lbl 14038 `"Guachinango"', add
label define mx10a_migmuni5_lbl 14039 `"Guadalajara"', add
label define mx10a_migmuni5_lbl 14040 `"Hostotipaquillo"', add
label define mx10a_migmuni5_lbl 14041 `"Huejúcar"', add
label define mx10a_migmuni5_lbl 14042 `"Huejuquilla el Alto"', add
label define mx10a_migmuni5_lbl 14043 `"La Huerta"', add
label define mx10a_migmuni5_lbl 14044 `"Ixtlahuacán de los Membrillos"', add
label define mx10a_migmuni5_lbl 14045 `"Ixtlahuacán del Río"', add
label define mx10a_migmuni5_lbl 14046 `"Jalostotitlán"', add
label define mx10a_migmuni5_lbl 14047 `"Jamay"', add
label define mx10a_migmuni5_lbl 14048 `"Jesús María"', add
label define mx10a_migmuni5_lbl 14049 `"Jilotlán de los Dolores"', add
label define mx10a_migmuni5_lbl 14050 `"Jocotepec"', add
label define mx10a_migmuni5_lbl 14051 `"Juanacatlán"', add
label define mx10a_migmuni5_lbl 14052 `"Juchitlán"', add
label define mx10a_migmuni5_lbl 14053 `"Lagos de Moreno"', add
label define mx10a_migmuni5_lbl 14054 `"El Limón"', add
label define mx10a_migmuni5_lbl 14055 `"Magdalena"', add
label define mx10a_migmuni5_lbl 14056 `"Santa María del Oro"', add
label define mx10a_migmuni5_lbl 14057 `"La Manzanilla de la Paz"', add
label define mx10a_migmuni5_lbl 14058 `"Mascota"', add
label define mx10a_migmuni5_lbl 14059 `"Mazamitla"', add
label define mx10a_migmuni5_lbl 14060 `"Mexticacán"', add
label define mx10a_migmuni5_lbl 14061 `"Mezquitic"', add
label define mx10a_migmuni5_lbl 14062 `"Mixtlán"', add
label define mx10a_migmuni5_lbl 14063 `"Ocotlán"', add
label define mx10a_migmuni5_lbl 14064 `"Ojuelos de Jalisco"', add
label define mx10a_migmuni5_lbl 14065 `"Pihuamo"', add
label define mx10a_migmuni5_lbl 14066 `"Poncitlán"', add
label define mx10a_migmuni5_lbl 14067 `"Puerto Vallarta"', add
label define mx10a_migmuni5_lbl 14068 `"Villa Purificación"', add
label define mx10a_migmuni5_lbl 14069 `"Quitupan"', add
label define mx10a_migmuni5_lbl 14070 `"El Salto"', add
label define mx10a_migmuni5_lbl 14071 `"San Cristóbal de la Barranca"', add
label define mx10a_migmuni5_lbl 14072 `"San Diego de Alejandría"', add
label define mx10a_migmuni5_lbl 14073 `"San Juan de los Lagos"', add
label define mx10a_migmuni5_lbl 14074 `"San Julián"', add
label define mx10a_migmuni5_lbl 14075 `"San Marcos"', add
label define mx10a_migmuni5_lbl 14076 `"San Martín de Bolaños"', add
label define mx10a_migmuni5_lbl 14077 `"San Martín Hidalgo"', add
label define mx10a_migmuni5_lbl 14078 `"San Miguel el Alto"', add
label define mx10a_migmuni5_lbl 14079 `"Gómez Farías"', add
label define mx10a_migmuni5_lbl 14080 `"San Sebastián del Oeste"', add
label define mx10a_migmuni5_lbl 14081 `"Santa María de los Ángeles"', add
label define mx10a_migmuni5_lbl 14082 `"Sayula"', add
label define mx10a_migmuni5_lbl 14083 `"Tala"', add
label define mx10a_migmuni5_lbl 14084 `"Talpa de Allende"', add
label define mx10a_migmuni5_lbl 14085 `"Tamazula de Gordiano"', add
label define mx10a_migmuni5_lbl 14086 `"Tapalpa"', add
label define mx10a_migmuni5_lbl 14087 `"Tecalitlán"', add
label define mx10a_migmuni5_lbl 14088 `"Tecolotlán"', add
label define mx10a_migmuni5_lbl 14089 `"Techaluta de Montenegro"', add
label define mx10a_migmuni5_lbl 14090 `"Tenamaxtlán"', add
label define mx10a_migmuni5_lbl 14091 `"Teocaltiche"', add
label define mx10a_migmuni5_lbl 14092 `"Teocuitatlán de Corona"', add
label define mx10a_migmuni5_lbl 14093 `"Tepatitlán de Morelos"', add
label define mx10a_migmuni5_lbl 14094 `"Tequila"', add
label define mx10a_migmuni5_lbl 14095 `"Teuchitlán"', add
label define mx10a_migmuni5_lbl 14096 `"Tizapán el Alto"', add
label define mx10a_migmuni5_lbl 14097 `"Tlajomulco de Zúñiga"', add
label define mx10a_migmuni5_lbl 14098 `"Tlaquepaque"', add
label define mx10a_migmuni5_lbl 14099 `"Tolimán"', add
label define mx10a_migmuni5_lbl 14100 `"Tomatlán"', add
label define mx10a_migmuni5_lbl 14101 `"Tonalá"', add
label define mx10a_migmuni5_lbl 14102 `"Tonaya"', add
label define mx10a_migmuni5_lbl 14103 `"Tonila"', add
label define mx10a_migmuni5_lbl 14104 `"Totatiche"', add
label define mx10a_migmuni5_lbl 14105 `"Tototlán"', add
label define mx10a_migmuni5_lbl 14106 `"Tuxcacuesco"', add
label define mx10a_migmuni5_lbl 14107 `"Tuxcueca"', add
label define mx10a_migmuni5_lbl 14108 `"Tuxpan"', add
label define mx10a_migmuni5_lbl 14109 `"Unión de San Antonio"', add
label define mx10a_migmuni5_lbl 14110 `"Unión de Tula"', add
label define mx10a_migmuni5_lbl 14111 `"Valle de Guadalupe"', add
label define mx10a_migmuni5_lbl 14112 `"Valle de Juárez"', add
label define mx10a_migmuni5_lbl 14113 `"San Gabriel"', add
label define mx10a_migmuni5_lbl 14114 `"Villa Corona"', add
label define mx10a_migmuni5_lbl 14115 `"Villa Guerrero"', add
label define mx10a_migmuni5_lbl 14116 `"Villa Hidalgo"', add
label define mx10a_migmuni5_lbl 14117 `"Cañadas de Obregón"', add
label define mx10a_migmuni5_lbl 14118 `"Yahualica de González Gallo"', add
label define mx10a_migmuni5_lbl 14119 `"Zacoalco de Torres"', add
label define mx10a_migmuni5_lbl 14120 `"Zapopan"', add
label define mx10a_migmuni5_lbl 14121 `"Zapotiltic"', add
label define mx10a_migmuni5_lbl 14122 `"Zapotitlán de Vadillo"', add
label define mx10a_migmuni5_lbl 14123 `"Zapotlán del Rey"', add
label define mx10a_migmuni5_lbl 14124 `"Zapotlanejo"', add
label define mx10a_migmuni5_lbl 14125 `"San Ignacio Cerro Gordo"', add
label define mx10a_migmuni5_lbl 14999 `"Jalisco entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 15001 `"Acambay"', add
label define mx10a_migmuni5_lbl 15002 `"Acolman"', add
label define mx10a_migmuni5_lbl 15003 `"Aculco"', add
label define mx10a_migmuni5_lbl 15004 `"Almoloya de Alquisiras"', add
label define mx10a_migmuni5_lbl 15005 `"Almoloya de Juárez"', add
label define mx10a_migmuni5_lbl 15006 `"Almoloya del Río"', add
label define mx10a_migmuni5_lbl 15007 `"Amanalco"', add
label define mx10a_migmuni5_lbl 15008 `"Amatepec"', add
label define mx10a_migmuni5_lbl 15009 `"Amecameca"', add
label define mx10a_migmuni5_lbl 15010 `"Apaxco"', add
label define mx10a_migmuni5_lbl 15011 `"Atenco"', add
label define mx10a_migmuni5_lbl 15012 `"Atizapán"', add
label define mx10a_migmuni5_lbl 15013 `"Atizapán de Zaragoza"', add
label define mx10a_migmuni5_lbl 15014 `"Atlacomulco"', add
label define mx10a_migmuni5_lbl 15015 `"Atlautla"', add
label define mx10a_migmuni5_lbl 15016 `"Axapusco"', add
label define mx10a_migmuni5_lbl 15017 `"Ayapango"', add
label define mx10a_migmuni5_lbl 15018 `"Calimaya"', add
label define mx10a_migmuni5_lbl 15019 `"Capulhuac"', add
label define mx10a_migmuni5_lbl 15020 `"Coacalco de Berriozábal"', add
label define mx10a_migmuni5_lbl 15021 `"Coatepec Harinas"', add
label define mx10a_migmuni5_lbl 15022 `"Cocotitlán"', add
label define mx10a_migmuni5_lbl 15023 `"Coyotepec"', add
label define mx10a_migmuni5_lbl 15024 `"Cuautitlán"', add
label define mx10a_migmuni5_lbl 15025 `"Chalco"', add
label define mx10a_migmuni5_lbl 15026 `"Chapa de Mota"', add
label define mx10a_migmuni5_lbl 15027 `"Chapultepec"', add
label define mx10a_migmuni5_lbl 15028 `"Chiautla"', add
label define mx10a_migmuni5_lbl 15029 `"Chicoloapan"', add
label define mx10a_migmuni5_lbl 15030 `"Chiconcuac"', add
label define mx10a_migmuni5_lbl 15031 `"Chimalhuacán"', add
label define mx10a_migmuni5_lbl 15032 `"Donato Guerra"', add
label define mx10a_migmuni5_lbl 15033 `"Ecatepec de Morelos"', add
label define mx10a_migmuni5_lbl 15034 `"Ecatzingo"', add
label define mx10a_migmuni5_lbl 15035 `"Huehuetoca"', add
label define mx10a_migmuni5_lbl 15036 `"Hueypoxtla"', add
label define mx10a_migmuni5_lbl 15037 `"Huixquilucan"', add
label define mx10a_migmuni5_lbl 15038 `"Isidro Fabela"', add
label define mx10a_migmuni5_lbl 15039 `"Ixtapaluca"', add
label define mx10a_migmuni5_lbl 15040 `"Ixtapan de la Sal"', add
label define mx10a_migmuni5_lbl 15041 `"Ixtapan del Oro"', add
label define mx10a_migmuni5_lbl 15042 `"Ixtlahuaca"', add
label define mx10a_migmuni5_lbl 15043 `"Xalatlaco"', add
label define mx10a_migmuni5_lbl 15044 `"Jaltenco"', add
label define mx10a_migmuni5_lbl 15045 `"Jilotepec"', add
label define mx10a_migmuni5_lbl 15046 `"Jilotzingo"', add
label define mx10a_migmuni5_lbl 15047 `"Jiquipilco"', add
label define mx10a_migmuni5_lbl 15048 `"Jocotitlán"', add
label define mx10a_migmuni5_lbl 15049 `"Joquicingo"', add
label define mx10a_migmuni5_lbl 15050 `"Juchitepec"', add
label define mx10a_migmuni5_lbl 15051 `"Lerma"', add
label define mx10a_migmuni5_lbl 15052 `"Malinalco"', add
label define mx10a_migmuni5_lbl 15053 `"Melchor Ocampo"', add
label define mx10a_migmuni5_lbl 15054 `"Metepec"', add
label define mx10a_migmuni5_lbl 15055 `"Mexicaltzingo"', add
label define mx10a_migmuni5_lbl 15056 `"Morelos"', add
label define mx10a_migmuni5_lbl 15057 `"Naucalpan de Juárez"', add
label define mx10a_migmuni5_lbl 15058 `"Nezahualcóyotl"', add
label define mx10a_migmuni5_lbl 15059 `"Nextlalpan"', add
label define mx10a_migmuni5_lbl 15060 `"Nicolás Romero"', add
label define mx10a_migmuni5_lbl 15061 `"Nopaltepec"', add
label define mx10a_migmuni5_lbl 15062 `"Ocoyoacac"', add
label define mx10a_migmuni5_lbl 15063 `"Ocuilan"', add
label define mx10a_migmuni5_lbl 15064 `"El Oro"', add
label define mx10a_migmuni5_lbl 15065 `"Otumba"', add
label define mx10a_migmuni5_lbl 15066 `"Otzoloapan"', add
label define mx10a_migmuni5_lbl 15067 `"Otzolotepec"', add
label define mx10a_migmuni5_lbl 15068 `"Ozumba"', add
label define mx10a_migmuni5_lbl 15069 `"Papalotla"', add
label define mx10a_migmuni5_lbl 15070 `"La Paz"', add
label define mx10a_migmuni5_lbl 15071 `"Polotitlán"', add
label define mx10a_migmuni5_lbl 15072 `"Rayón"', add
label define mx10a_migmuni5_lbl 15073 `"San Antonio la Isla"', add
label define mx10a_migmuni5_lbl 15074 `"San Felipe del Progreso"', add
label define mx10a_migmuni5_lbl 15075 `"San Martín de las Pirámides"', add
label define mx10a_migmuni5_lbl 15076 `"San Mateo Atenco"', add
label define mx10a_migmuni5_lbl 15077 `"San Simón de Guerrero"', add
label define mx10a_migmuni5_lbl 15078 `"Santo Tomás"', add
label define mx10a_migmuni5_lbl 15079 `"Soyaniquilpan de Juárez"', add
label define mx10a_migmuni5_lbl 15080 `"Sultepec"', add
label define mx10a_migmuni5_lbl 15081 `"Tecámac"', add
label define mx10a_migmuni5_lbl 15082 `"Tejupilco"', add
label define mx10a_migmuni5_lbl 15083 `"Temamatla"', add
label define mx10a_migmuni5_lbl 15084 `"Temascalapa"', add
label define mx10a_migmuni5_lbl 15085 `"Temascalcingo"', add
label define mx10a_migmuni5_lbl 15086 `"Temascaltepec"', add
label define mx10a_migmuni5_lbl 15087 `"Temoaya"', add
label define mx10a_migmuni5_lbl 15088 `"Tenancingo"', add
label define mx10a_migmuni5_lbl 15089 `"Tenango del Aire"', add
label define mx10a_migmuni5_lbl 15090 `"Tenango del Valle"', add
label define mx10a_migmuni5_lbl 15091 `"Teoloyucán"', add
label define mx10a_migmuni5_lbl 15092 `"Teotihuacán"', add
label define mx10a_migmuni5_lbl 15093 `"Tepetlaoxtoc"', add
label define mx10a_migmuni5_lbl 15094 `"Tepetlixpa"', add
label define mx10a_migmuni5_lbl 15095 `"Tepotzotlán"', add
label define mx10a_migmuni5_lbl 15096 `"Tequixquiac"', add
label define mx10a_migmuni5_lbl 15097 `"Texcaltitlán"', add
label define mx10a_migmuni5_lbl 15098 `"Texcalyacac"', add
label define mx10a_migmuni5_lbl 15099 `"Texcoco"', add
label define mx10a_migmuni5_lbl 15100 `"Tezoyuca"', add
label define mx10a_migmuni5_lbl 15101 `"Tianguistenco"', add
label define mx10a_migmuni5_lbl 15102 `"Timilpan"', add
label define mx10a_migmuni5_lbl 15103 `"Tlalmanalco"', add
label define mx10a_migmuni5_lbl 15104 `"Tlalnepantla de Baz"', add
label define mx10a_migmuni5_lbl 15105 `"Tlatlaya"', add
label define mx10a_migmuni5_lbl 15106 `"Toluca"', add
label define mx10a_migmuni5_lbl 15107 `"Tonatico"', add
label define mx10a_migmuni5_lbl 15108 `"Tultepec"', add
label define mx10a_migmuni5_lbl 15109 `"Tultitlán"', add
label define mx10a_migmuni5_lbl 15110 `"Valle de Bravo"', add
label define mx10a_migmuni5_lbl 15111 `"Villa de Allende"', add
label define mx10a_migmuni5_lbl 15112 `"Villa del Carbón"', add
label define mx10a_migmuni5_lbl 15113 `"Villa Guerrero"', add
label define mx10a_migmuni5_lbl 15114 `"Villa Victoria"', add
label define mx10a_migmuni5_lbl 15115 `"Xonacatlán"', add
label define mx10a_migmuni5_lbl 15116 `"Zacazonapan"', add
label define mx10a_migmuni5_lbl 15117 `"Zacualpan"', add
label define mx10a_migmuni5_lbl 15118 `"Zinacantepec"', add
label define mx10a_migmuni5_lbl 15119 `"Zumpahuacán"', add
label define mx10a_migmuni5_lbl 15120 `"Zumpango"', add
label define mx10a_migmuni5_lbl 15121 `"Cuautitlán Izcalli"', add
label define mx10a_migmuni5_lbl 15122 `"Valle de Chalco Solidaridad"', add
label define mx10a_migmuni5_lbl 15123 `"Luvianos"', add
label define mx10a_migmuni5_lbl 15124 `"San José del Rincón"', add
label define mx10a_migmuni5_lbl 15125 `"Tonanitla"', add
label define mx10a_migmuni5_lbl 15999 `"México entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 16001 `"Acuitzio"', add
label define mx10a_migmuni5_lbl 16002 `"Aguililla"', add
label define mx10a_migmuni5_lbl 16003 `"Álvaro Obregón"', add
label define mx10a_migmuni5_lbl 16004 `"Angamacutiro"', add
label define mx10a_migmuni5_lbl 16005 `"Angangueo"', add
label define mx10a_migmuni5_lbl 16006 `"Apatzingán"', add
label define mx10a_migmuni5_lbl 16007 `"Aporo"', add
label define mx10a_migmuni5_lbl 16008 `"Aquila"', add
label define mx10a_migmuni5_lbl 16009 `"Ario"', add
label define mx10a_migmuni5_lbl 16010 `"Arteaga"', add
label define mx10a_migmuni5_lbl 16011 `"Briseñas"', add
label define mx10a_migmuni5_lbl 16012 `"Buenavista"', add
label define mx10a_migmuni5_lbl 16013 `"Carácuaro"', add
label define mx10a_migmuni5_lbl 16014 `"Coahuayana"', add
label define mx10a_migmuni5_lbl 16015 `"Coalcomán de Vázquez Pallares"', add
label define mx10a_migmuni5_lbl 16016 `"Coeneo"', add
label define mx10a_migmuni5_lbl 16017 `"Contepec"', add
label define mx10a_migmuni5_lbl 16018 `"Copándaro"', add
label define mx10a_migmuni5_lbl 16019 `"Cotija"', add
label define mx10a_migmuni5_lbl 16020 `"Cuitzeo"', add
label define mx10a_migmuni5_lbl 16021 `"Charapan"', add
label define mx10a_migmuni5_lbl 16022 `"Charo"', add
label define mx10a_migmuni5_lbl 16023 `"Chavinda"', add
label define mx10a_migmuni5_lbl 16024 `"Cherán"', add
label define mx10a_migmuni5_lbl 16025 `"Chilchota"', add
label define mx10a_migmuni5_lbl 16026 `"Chinicuila"', add
label define mx10a_migmuni5_lbl 16027 `"Chucándiro"', add
label define mx10a_migmuni5_lbl 16028 `"Churintzio"', add
label define mx10a_migmuni5_lbl 16029 `"Churumuco"', add
label define mx10a_migmuni5_lbl 16030 `"Ecuandureo"', add
label define mx10a_migmuni5_lbl 16031 `"Epitacio Huerta"', add
label define mx10a_migmuni5_lbl 16032 `"Erongarícuaro"', add
label define mx10a_migmuni5_lbl 16033 `"Gabriel Zamora"', add
label define mx10a_migmuni5_lbl 16034 `"Hidalgo"', add
label define mx10a_migmuni5_lbl 16035 `"La Huacana"', add
label define mx10a_migmuni5_lbl 16036 `"Huandacareo"', add
label define mx10a_migmuni5_lbl 16037 `"Huaniqueo"', add
label define mx10a_migmuni5_lbl 16038 `"Huetamo"', add
label define mx10a_migmuni5_lbl 16039 `"Huiramba"', add
label define mx10a_migmuni5_lbl 16040 `"Indaparapeo"', add
label define mx10a_migmuni5_lbl 16041 `"Irimbo"', add
label define mx10a_migmuni5_lbl 16042 `"Ixtlán"', add
label define mx10a_migmuni5_lbl 16043 `"Jacona"', add
label define mx10a_migmuni5_lbl 16044 `"Jiménez"', add
label define mx10a_migmuni5_lbl 16045 `"Jiquilpan"', add
label define mx10a_migmuni5_lbl 16046 `"Juárez"', add
label define mx10a_migmuni5_lbl 16047 `"Jungapeo"', add
label define mx10a_migmuni5_lbl 16048 `"Lagunillas"', add
label define mx10a_migmuni5_lbl 16049 `"Madero"', add
label define mx10a_migmuni5_lbl 16050 `"Maravatío"', add
label define mx10a_migmuni5_lbl 16051 `"Marcos Castellanos"', add
label define mx10a_migmuni5_lbl 16052 `"Lázaro Cárdenas"', add
label define mx10a_migmuni5_lbl 16053 `"Morelia"', add
label define mx10a_migmuni5_lbl 16054 `"Morelos"', add
label define mx10a_migmuni5_lbl 16055 `"Múgica"', add
label define mx10a_migmuni5_lbl 16056 `"Nahuatzen"', add
label define mx10a_migmuni5_lbl 16057 `"Nocupétaro"', add
label define mx10a_migmuni5_lbl 16058 `"Nuevo Parangaricutiro"', add
label define mx10a_migmuni5_lbl 16059 `"Nuevo Urecho"', add
label define mx10a_migmuni5_lbl 16060 `"Numarán"', add
label define mx10a_migmuni5_lbl 16061 `"Ocampo"', add
label define mx10a_migmuni5_lbl 16062 `"Pajacuarán"', add
label define mx10a_migmuni5_lbl 16063 `"Panindícuaro"', add
label define mx10a_migmuni5_lbl 16064 `"Parácuaro"', add
label define mx10a_migmuni5_lbl 16065 `"Paracho"', add
label define mx10a_migmuni5_lbl 16066 `"Pátzcuaro"', add
label define mx10a_migmuni5_lbl 16067 `"Penjamillo"', add
label define mx10a_migmuni5_lbl 16068 `"Peribán"', add
label define mx10a_migmuni5_lbl 16069 `"La Piedad"', add
label define mx10a_migmuni5_lbl 16070 `"Purépero"', add
label define mx10a_migmuni5_lbl 16071 `"Puruándiro"', add
label define mx10a_migmuni5_lbl 16072 `"Queréndaro"', add
label define mx10a_migmuni5_lbl 16073 `"Quiroga"', add
label define mx10a_migmuni5_lbl 16074 `"Cojumatlán de Régules"', add
label define mx10a_migmuni5_lbl 16075 `"Los Reyes"', add
label define mx10a_migmuni5_lbl 16076 `"Sahuayo"', add
label define mx10a_migmuni5_lbl 16077 `"San Lucas"', add
label define mx10a_migmuni5_lbl 16078 `"Santa Ana Maya"', add
label define mx10a_migmuni5_lbl 16079 `"Salvador Escalante"', add
label define mx10a_migmuni5_lbl 16080 `"Senguio"', add
label define mx10a_migmuni5_lbl 16081 `"Susupuato"', add
label define mx10a_migmuni5_lbl 16082 `"Tacámbaro"', add
label define mx10a_migmuni5_lbl 16083 `"Tancítaro"', add
label define mx10a_migmuni5_lbl 16084 `"Tangamandapio"', add
label define mx10a_migmuni5_lbl 16085 `"Tangancícuaro"', add
label define mx10a_migmuni5_lbl 16086 `"Tanhuato"', add
label define mx10a_migmuni5_lbl 16087 `"Taretan"', add
label define mx10a_migmuni5_lbl 16088 `"Tarímbaro"', add
label define mx10a_migmuni5_lbl 16089 `"Tepalcatepec"', add
label define mx10a_migmuni5_lbl 16090 `"Tingambato"', add
label define mx10a_migmuni5_lbl 16091 `"Tingüindín"', add
label define mx10a_migmuni5_lbl 16092 `"Tiquicheo de Nicolás Romero"', add
label define mx10a_migmuni5_lbl 16093 `"Tlalpujahua"', add
label define mx10a_migmuni5_lbl 16094 `"Tlazazalca"', add
label define mx10a_migmuni5_lbl 16095 `"Tocumbo"', add
label define mx10a_migmuni5_lbl 16096 `"Tumbiscatío"', add
label define mx10a_migmuni5_lbl 16097 `"Turicato"', add
label define mx10a_migmuni5_lbl 16098 `"Tuxpan"', add
label define mx10a_migmuni5_lbl 16099 `"Tuzantla"', add
label define mx10a_migmuni5_lbl 16100 `"Tzintzuntzan"', add
label define mx10a_migmuni5_lbl 16101 `"Tzitzio"', add
label define mx10a_migmuni5_lbl 16102 `"Uruapan"', add
label define mx10a_migmuni5_lbl 16103 `"Venustiano Carranza"', add
label define mx10a_migmuni5_lbl 16104 `"Villamar"', add
label define mx10a_migmuni5_lbl 16105 `"Vista Hermosa"', add
label define mx10a_migmuni5_lbl 16106 `"Yurécuaro"', add
label define mx10a_migmuni5_lbl 16107 `"Zacapu"', add
label define mx10a_migmuni5_lbl 16108 `"Zamora"', add
label define mx10a_migmuni5_lbl 16109 `"Zináparo"', add
label define mx10a_migmuni5_lbl 16110 `"Zinapécuaro"', add
label define mx10a_migmuni5_lbl 16111 `"Ziracuaretiro"', add
label define mx10a_migmuni5_lbl 16112 `"Zitácuaro"', add
label define mx10a_migmuni5_lbl 16113 `"José Sixto Verduzco"', add
label define mx10a_migmuni5_lbl 16999 `"Michoacán de Ocampo entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 17001 `"Amacuzac"', add
label define mx10a_migmuni5_lbl 17002 `"Atlatlahucan"', add
label define mx10a_migmuni5_lbl 17003 `"Axochiapan"', add
label define mx10a_migmuni5_lbl 17004 `"Ayala"', add
label define mx10a_migmuni5_lbl 17005 `"Coatlán del Río"', add
label define mx10a_migmuni5_lbl 17006 `"Cuautla"', add
label define mx10a_migmuni5_lbl 17007 `"Cuernavaca"', add
label define mx10a_migmuni5_lbl 17008 `"Emiliano Zapata"', add
label define mx10a_migmuni5_lbl 17009 `"Huitzilac"', add
label define mx10a_migmuni5_lbl 17010 `"Jantetelco"', add
label define mx10a_migmuni5_lbl 17011 `"Jiutepec"', add
label define mx10a_migmuni5_lbl 17012 `"Jojutla"', add
label define mx10a_migmuni5_lbl 17013 `"Jonacatepec"', add
label define mx10a_migmuni5_lbl 17014 `"Mazatepec"', add
label define mx10a_migmuni5_lbl 17015 `"Miacatlán"', add
label define mx10a_migmuni5_lbl 17016 `"Ocuituco"', add
label define mx10a_migmuni5_lbl 17017 `"Puente de Ixtla"', add
label define mx10a_migmuni5_lbl 17018 `"Temixco"', add
label define mx10a_migmuni5_lbl 17019 `"Tepalcingo"', add
label define mx10a_migmuni5_lbl 17020 `"Tepoztlán"', add
label define mx10a_migmuni5_lbl 17021 `"Tetecala"', add
label define mx10a_migmuni5_lbl 17022 `"Tetela del Volcán"', add
label define mx10a_migmuni5_lbl 17023 `"Tlalnepantla"', add
label define mx10a_migmuni5_lbl 17024 `"Tlaltizapán"', add
label define mx10a_migmuni5_lbl 17025 `"Tlaquiltenango"', add
label define mx10a_migmuni5_lbl 17026 `"Tlayacapan"', add
label define mx10a_migmuni5_lbl 17027 `"Totolapan"', add
label define mx10a_migmuni5_lbl 17028 `"Xochitepec"', add
label define mx10a_migmuni5_lbl 17029 `"Yautepec"', add
label define mx10a_migmuni5_lbl 17030 `"Yecapixtla"', add
label define mx10a_migmuni5_lbl 17031 `"Zacatepec"', add
label define mx10a_migmuni5_lbl 17032 `"Zacualpan"', add
label define mx10a_migmuni5_lbl 17033 `"Temoac"', add
label define mx10a_migmuni5_lbl 17999 `"Morelos entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 18001 `"Acaponeta"', add
label define mx10a_migmuni5_lbl 18002 `"Ahuacatlán"', add
label define mx10a_migmuni5_lbl 18003 `"Amatlán de Cañas"', add
label define mx10a_migmuni5_lbl 18004 `"Compostela"', add
label define mx10a_migmuni5_lbl 18005 `"Huajicori"', add
label define mx10a_migmuni5_lbl 18006 `"Ixtlán del Río"', add
label define mx10a_migmuni5_lbl 18007 `"Jala"', add
label define mx10a_migmuni5_lbl 18008 `"Xalisco"', add
label define mx10a_migmuni5_lbl 18009 `"Del Nayar"', add
label define mx10a_migmuni5_lbl 18010 `"Rosamorada"', add
label define mx10a_migmuni5_lbl 18011 `"Ruíz"', add
label define mx10a_migmuni5_lbl 18012 `"San Blas"', add
label define mx10a_migmuni5_lbl 18013 `"San Pedro Lagunillas"', add
label define mx10a_migmuni5_lbl 18014 `"Santa María del Oro"', add
label define mx10a_migmuni5_lbl 18015 `"Santiago Ixcuintla"', add
label define mx10a_migmuni5_lbl 18016 `"Tecuala"', add
label define mx10a_migmuni5_lbl 18017 `"Tepic"', add
label define mx10a_migmuni5_lbl 18018 `"Tuxpan"', add
label define mx10a_migmuni5_lbl 18019 `"La Yesca"', add
label define mx10a_migmuni5_lbl 18020 `"Bahía de Banderas"', add
label define mx10a_migmuni5_lbl 18999 `"Nayarit entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 19001 `"Abasolo"', add
label define mx10a_migmuni5_lbl 19002 `"Agualeguas"', add
label define mx10a_migmuni5_lbl 19003 `"Los Aldamas"', add
label define mx10a_migmuni5_lbl 19004 `"Allende"', add
label define mx10a_migmuni5_lbl 19005 `"Anáhuac"', add
label define mx10a_migmuni5_lbl 19006 `"Apodaca"', add
label define mx10a_migmuni5_lbl 19007 `"Aramberri"', add
label define mx10a_migmuni5_lbl 19008 `"Bustamante"', add
label define mx10a_migmuni5_lbl 19009 `"Cadereyta Jiménez"', add
label define mx10a_migmuni5_lbl 19010 `"Carmen"', add
label define mx10a_migmuni5_lbl 19011 `"Cerralvo"', add
label define mx10a_migmuni5_lbl 19012 `"Ciénega de Flores"', add
label define mx10a_migmuni5_lbl 19013 `"China"', add
label define mx10a_migmuni5_lbl 19014 `"Dr. Arroyo"', add
label define mx10a_migmuni5_lbl 19015 `"Dr. Coss"', add
label define mx10a_migmuni5_lbl 19016 `"Dr. González"', add
label define mx10a_migmuni5_lbl 19017 `"Galeana"', add
label define mx10a_migmuni5_lbl 19018 `"García"', add
label define mx10a_migmuni5_lbl 19019 `"San Pedro Garza García"', add
label define mx10a_migmuni5_lbl 19020 `"Gral. Bravo"', add
label define mx10a_migmuni5_lbl 19021 `"Gral. Escobedo"', add
label define mx10a_migmuni5_lbl 19022 `"Gral. Terán"', add
label define mx10a_migmuni5_lbl 19023 `"Gral. Treviño"', add
label define mx10a_migmuni5_lbl 19024 `"Gral. Zaragoza"', add
label define mx10a_migmuni5_lbl 19025 `"Gral. Zuazua"', add
label define mx10a_migmuni5_lbl 19026 `"Guadalupe"', add
label define mx10a_migmuni5_lbl 19027 `"Los Herreras"', add
label define mx10a_migmuni5_lbl 19028 `"Higueras"', add
label define mx10a_migmuni5_lbl 19029 `"Hualahuises"', add
label define mx10a_migmuni5_lbl 19030 `"Iturbide"', add
label define mx10a_migmuni5_lbl 19031 `"Juárez"', add
label define mx10a_migmuni5_lbl 19032 `"Lampazos de Naranjo"', add
label define mx10a_migmuni5_lbl 19033 `"Linares"', add
label define mx10a_migmuni5_lbl 19034 `"Marín"', add
label define mx10a_migmuni5_lbl 19035 `"Melchor Ocampo"', add
label define mx10a_migmuni5_lbl 19036 `"Mier y Noriega"', add
label define mx10a_migmuni5_lbl 19037 `"Mina"', add
label define mx10a_migmuni5_lbl 19038 `"Montemorelos"', add
label define mx10a_migmuni5_lbl 19039 `"Monterrey"', add
label define mx10a_migmuni5_lbl 19040 `"Parás"', add
label define mx10a_migmuni5_lbl 19041 `"Pesquería"', add
label define mx10a_migmuni5_lbl 19042 `"Los Ramones"', add
label define mx10a_migmuni5_lbl 19043 `"Rayones"', add
label define mx10a_migmuni5_lbl 19044 `"Sabinas Hidalgo"', add
label define mx10a_migmuni5_lbl 19045 `"Salinas Victoria"', add
label define mx10a_migmuni5_lbl 19046 `"San Nicolás de los Garza"', add
label define mx10a_migmuni5_lbl 19047 `"Hidalgo"', add
label define mx10a_migmuni5_lbl 19048 `"Santa Catarina"', add
label define mx10a_migmuni5_lbl 19049 `"Santiago"', add
label define mx10a_migmuni5_lbl 19050 `"Vallecillo"', add
label define mx10a_migmuni5_lbl 19051 `"Villaldama"', add
label define mx10a_migmuni5_lbl 19999 `"Nuevo León entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 20001 `"Abejones"', add
label define mx10a_migmuni5_lbl 20002 `"Acatlán de Pérez Figueroa"', add
label define mx10a_migmuni5_lbl 20003 `"Asunción Cacalotepec"', add
label define mx10a_migmuni5_lbl 20004 `"Asunción Cuyotepeji"', add
label define mx10a_migmuni5_lbl 20005 `"Asunción Ixtaltepec"', add
label define mx10a_migmuni5_lbl 20006 `"Asunción Nochixtlán"', add
label define mx10a_migmuni5_lbl 20007 `"Asunción Ocotlán"', add
label define mx10a_migmuni5_lbl 20008 `"Asunción Tlacolulita"', add
label define mx10a_migmuni5_lbl 20009 `"Ayotzintepec"', add
label define mx10a_migmuni5_lbl 20010 `"El Barrio de la Soledad"', add
label define mx10a_migmuni5_lbl 20011 `"Calihualá"', add
label define mx10a_migmuni5_lbl 20012 `"Candelaria Loxicha"', add
label define mx10a_migmuni5_lbl 20013 `"Ciénega de Zimatlán"', add
label define mx10a_migmuni5_lbl 20014 `"Ciudad Ixtepec"', add
label define mx10a_migmuni5_lbl 20015 `"Coatecas Altas"', add
label define mx10a_migmuni5_lbl 20016 `"Coicoyán de las Flores"', add
label define mx10a_migmuni5_lbl 20017 `"La Compañía"', add
label define mx10a_migmuni5_lbl 20018 `"Concepción Buenavista"', add
label define mx10a_migmuni5_lbl 20019 `"Concepción Pápalo"', add
label define mx10a_migmuni5_lbl 20020 `"Constancia del Rosario"', add
label define mx10a_migmuni5_lbl 20021 `"Cosolapa"', add
label define mx10a_migmuni5_lbl 20022 `"Cosoltepec"', add
label define mx10a_migmuni5_lbl 20023 `"Cuilápam de Guerrero"', add
label define mx10a_migmuni5_lbl 20024 `"Cuyamecalco Villa de Zaragoza"', add
label define mx10a_migmuni5_lbl 20025 `"Chahuites"', add
label define mx10a_migmuni5_lbl 20026 `"Chalcatongo de Hidalgo"', add
label define mx10a_migmuni5_lbl 20027 `"Chiquihuitlán de Benito Juárez"', add
label define mx10a_migmuni5_lbl 20028 `"Heroica Ciudad de Ejutla de Crespo"', add
label define mx10a_migmuni5_lbl 20029 `"Eloxochitlán de Flores Magón"', add
label define mx10a_migmuni5_lbl 20030 `"El Espinal"', add
label define mx10a_migmuni5_lbl 20031 `"Tamazulápam del Espíritu Santo"', add
label define mx10a_migmuni5_lbl 20032 `"Fresnillo de Trujano"', add
label define mx10a_migmuni5_lbl 20033 `"Guadalupe Etla"', add
label define mx10a_migmuni5_lbl 20034 `"Guadalupe de Ramírez"', add
label define mx10a_migmuni5_lbl 20035 `"Guelatao de Juárez"', add
label define mx10a_migmuni5_lbl 20036 `"Guevea de Humboldt"', add
label define mx10a_migmuni5_lbl 20037 `"Mesones Hidalgo"', add
label define mx10a_migmuni5_lbl 20038 `"Villa Hidalgo"', add
label define mx10a_migmuni5_lbl 20039 `"Heroica Ciudad de Huajuapan de León"', add
label define mx10a_migmuni5_lbl 20040 `"Huautepec"', add
label define mx10a_migmuni5_lbl 20041 `"Huautla de Jiménez"', add
label define mx10a_migmuni5_lbl 20042 `"Ixtlán de Juárez"', add
label define mx10a_migmuni5_lbl 20043 `"Heroica Ciudad de Juchitán de Zaragoza"', add
label define mx10a_migmuni5_lbl 20044 `"Loma Bonita"', add
label define mx10a_migmuni5_lbl 20045 `"Magdalena Apasco"', add
label define mx10a_migmuni5_lbl 20046 `"Magdalena Jaltepec"', add
label define mx10a_migmuni5_lbl 20047 `"Santa Magdalena Jicotlán"', add
label define mx10a_migmuni5_lbl 20048 `"Magdalena Mixtepec"', add
label define mx10a_migmuni5_lbl 20049 `"Magdalena Ocotlán"', add
label define mx10a_migmuni5_lbl 20050 `"Magdalena Peñasco"', add
label define mx10a_migmuni5_lbl 20051 `"Magdalena Teitipac"', add
label define mx10a_migmuni5_lbl 20052 `"Magdalena Tequisistlán"', add
label define mx10a_migmuni5_lbl 20053 `"Magdalena Tlacotepec"', add
label define mx10a_migmuni5_lbl 20054 `"Magdalena Zahuatlán"', add
label define mx10a_migmuni5_lbl 20055 `"Mariscala de Juárez"', add
label define mx10a_migmuni5_lbl 20056 `"Mártires de Tacubaya"', add
label define mx10a_migmuni5_lbl 20057 `"Matías Romero Avendaño"', add
label define mx10a_migmuni5_lbl 20058 `"Mazatlán Villa de Flores"', add
label define mx10a_migmuni5_lbl 20059 `"Miahuatlán de Porfirio Díaz"', add
label define mx10a_migmuni5_lbl 20060 `"Mixistlán de la Reforma"', add
label define mx10a_migmuni5_lbl 20061 `"Monjas"', add
label define mx10a_migmuni5_lbl 20062 `"Natividad"', add
label define mx10a_migmuni5_lbl 20063 `"Nazareno Etla"', add
label define mx10a_migmuni5_lbl 20064 `"Nejapa de Madero"', add
label define mx10a_migmuni5_lbl 20065 `"Ixpantepec Nieves"', add
label define mx10a_migmuni5_lbl 20066 `"Santiago Niltepec"', add
label define mx10a_migmuni5_lbl 20067 `"Oaxaca de Juárez"', add
label define mx10a_migmuni5_lbl 20068 `"Ocotlán de Morelos"', add
label define mx10a_migmuni5_lbl 20069 `"La Pe"', add
label define mx10a_migmuni5_lbl 20070 `"Pinotepa de Don Luis"', add
label define mx10a_migmuni5_lbl 20071 `"Pluma Hidalgo"', add
label define mx10a_migmuni5_lbl 20072 `"San José del Progreso"', add
label define mx10a_migmuni5_lbl 20073 `"Putla Villa de Guerrero"', add
label define mx10a_migmuni5_lbl 20074 `"Santa Catarina Quioquitani"', add
label define mx10a_migmuni5_lbl 20075 `"Reforma de Pineda"', add
label define mx10a_migmuni5_lbl 20076 `"La Reforma"', add
label define mx10a_migmuni5_lbl 20077 `"Reyes Etla"', add
label define mx10a_migmuni5_lbl 20078 `"Rojas de Cuauhtémoc"', add
label define mx10a_migmuni5_lbl 20079 `"Salina Cruz"', add
label define mx10a_migmuni5_lbl 20080 `"San Agustín Amatengo"', add
label define mx10a_migmuni5_lbl 20081 `"San Agustín Atenango"', add
label define mx10a_migmuni5_lbl 20082 `"San Agustín Chayuco"', add
label define mx10a_migmuni5_lbl 20083 `"San Agustín de las Juntas"', add
label define mx10a_migmuni5_lbl 20084 `"San Agustín Etla"', add
label define mx10a_migmuni5_lbl 20085 `"San Agustín Loxicha"', add
label define mx10a_migmuni5_lbl 20086 `"San Agustín Tlacotepec"', add
label define mx10a_migmuni5_lbl 20087 `"San Agustín Yatareni"', add
label define mx10a_migmuni5_lbl 20088 `"San Andrés Cabecera Nueva"', add
label define mx10a_migmuni5_lbl 20089 `"San Andrés Dinicuiti"', add
label define mx10a_migmuni5_lbl 20090 `"San Andrés Huaxpaltepec"', add
label define mx10a_migmuni5_lbl 20091 `"San Andrés Huayápam"', add
label define mx10a_migmuni5_lbl 20092 `"San Andrés Ixtlahuaca"', add
label define mx10a_migmuni5_lbl 20093 `"San Andrés Lagunas"', add
label define mx10a_migmuni5_lbl 20094 `"San Andrés Nuxiño"', add
label define mx10a_migmuni5_lbl 20095 `"San Andrés Paxtlán"', add
label define mx10a_migmuni5_lbl 20096 `"San Andrés Sinaxtla"', add
label define mx10a_migmuni5_lbl 20097 `"San Andrés Solaga"', add
label define mx10a_migmuni5_lbl 20098 `"San Andrés Teotilálpam"', add
label define mx10a_migmuni5_lbl 20099 `"San Andrés Tepetlapa"', add
label define mx10a_migmuni5_lbl 20100 `"San Andrés Yaá"', add
label define mx10a_migmuni5_lbl 20101 `"San Andrés Zabache"', add
label define mx10a_migmuni5_lbl 20102 `"San Andrés Zautla"', add
label define mx10a_migmuni5_lbl 20103 `"San Antonino Castillo Velasco"', add
label define mx10a_migmuni5_lbl 20104 `"San Antonino el Alto"', add
label define mx10a_migmuni5_lbl 20105 `"San Antonino Monte Verde"', add
label define mx10a_migmuni5_lbl 20106 `"San Antonio Acutla"', add
label define mx10a_migmuni5_lbl 20107 `"San Antonio de la Cal"', add
label define mx10a_migmuni5_lbl 20108 `"San Antonio Huitepec"', add
label define mx10a_migmuni5_lbl 20109 `"San Antonio Nanahuatípam"', add
label define mx10a_migmuni5_lbl 20110 `"San Antonio Sinicahua"', add
label define mx10a_migmuni5_lbl 20111 `"San Antonio Tepetlapa"', add
label define mx10a_migmuni5_lbl 20112 `"San Baltazar Chichicápam"', add
label define mx10a_migmuni5_lbl 20113 `"San Baltazar Loxicha"', add
label define mx10a_migmuni5_lbl 20114 `"San Baltazar Yatzachi el Bajo"', add
label define mx10a_migmuni5_lbl 20115 `"San Bartolo Coyotepec"', add
label define mx10a_migmuni5_lbl 20116 `"San Bartolomé Ayautla"', add
label define mx10a_migmuni5_lbl 20117 `"San Bartolomé Loxicha"', add
label define mx10a_migmuni5_lbl 20118 `"San Bartolomé Quialana"', add
label define mx10a_migmuni5_lbl 20119 `"San Bartolomé Yucuañe"', add
label define mx10a_migmuni5_lbl 20120 `"San Bartolomé Zoogocho"', add
label define mx10a_migmuni5_lbl 20121 `"San Bartolo Soyaltepec"', add
label define mx10a_migmuni5_lbl 20122 `"San Bartolo Yautepec"', add
label define mx10a_migmuni5_lbl 20123 `"San Bernardo Mixtepec"', add
label define mx10a_migmuni5_lbl 20124 `"San Blas Atempa"', add
label define mx10a_migmuni5_lbl 20125 `"San Carlos Yautepec"', add
label define mx10a_migmuni5_lbl 20126 `"San Cristóbal Amatlán"', add
label define mx10a_migmuni5_lbl 20127 `"San Cristóbal Amoltepec"', add
label define mx10a_migmuni5_lbl 20128 `"San Cristóbal Lachirioag"', add
label define mx10a_migmuni5_lbl 20129 `"San Cristóbal Suchixtlahuaca"', add
label define mx10a_migmuni5_lbl 20130 `"San Dionisio del Mar"', add
label define mx10a_migmuni5_lbl 20131 `"San Dionisio Ocotepec"', add
label define mx10a_migmuni5_lbl 20132 `"San Dionisio Ocotlán"', add
label define mx10a_migmuni5_lbl 20133 `"San Esteban Atatlahuca"', add
label define mx10a_migmuni5_lbl 20134 `"San Felipe Jalapa de Díaz"', add
label define mx10a_migmuni5_lbl 20135 `"San Felipe Tejalápam"', add
label define mx10a_migmuni5_lbl 20136 `"San Felipe Usila"', add
label define mx10a_migmuni5_lbl 20137 `"San Francisco Cahuacuá"', add
label define mx10a_migmuni5_lbl 20138 `"San Francisco Cajonos"', add
label define mx10a_migmuni5_lbl 20139 `"San Francisco Chapulapa"', add
label define mx10a_migmuni5_lbl 20140 `"San Francisco Chindúa"', add
label define mx10a_migmuni5_lbl 20141 `"San Francisco del Mar"', add
label define mx10a_migmuni5_lbl 20142 `"San Francisco Huehuetlán"', add
label define mx10a_migmuni5_lbl 20143 `"San Francisco Ixhuatán"', add
label define mx10a_migmuni5_lbl 20144 `"San Francisco Jaltepetongo"', add
label define mx10a_migmuni5_lbl 20145 `"San Francisco Lachigoló"', add
label define mx10a_migmuni5_lbl 20146 `"San Francisco Logueche"', add
label define mx10a_migmuni5_lbl 20147 `"San Francisco Nuxaño"', add
label define mx10a_migmuni5_lbl 20148 `"San Francisco Ozolotepec"', add
label define mx10a_migmuni5_lbl 20149 `"San Francisco Sola"', add
label define mx10a_migmuni5_lbl 20150 `"San Francisco Telixtlahuaca"', add
label define mx10a_migmuni5_lbl 20151 `"San Francisco Teopan"', add
label define mx10a_migmuni5_lbl 20152 `"San Francisco Tlapancingo"', add
label define mx10a_migmuni5_lbl 20153 `"San Gabriel Mixtepec"', add
label define mx10a_migmuni5_lbl 20154 `"San Ildefonso Amatlán"', add
label define mx10a_migmuni5_lbl 20155 `"San Ildefonso Sola"', add
label define mx10a_migmuni5_lbl 20156 `"San Ildefonso Villa Alta"', add
label define mx10a_migmuni5_lbl 20157 `"San Jacinto Amilpas"', add
label define mx10a_migmuni5_lbl 20158 `"San Jacinto Tlacotepec"', add
label define mx10a_migmuni5_lbl 20159 `"San Jerónimo Coatlán"', add
label define mx10a_migmuni5_lbl 20160 `"San Jerónimo Silacayoapilla"', add
label define mx10a_migmuni5_lbl 20161 `"San Jerónimo Sosola"', add
label define mx10a_migmuni5_lbl 20162 `"San Jerónimo Taviche"', add
label define mx10a_migmuni5_lbl 20163 `"San Jerónimo Tecóatl"', add
label define mx10a_migmuni5_lbl 20164 `"San Jorge Nuchita"', add
label define mx10a_migmuni5_lbl 20165 `"San José Ayuquila"', add
label define mx10a_migmuni5_lbl 20166 `"San José Chiltepec"', add
label define mx10a_migmuni5_lbl 20167 `"San José del Peñasco"', add
label define mx10a_migmuni5_lbl 20168 `"San José Estancia Grande"', add
label define mx10a_migmuni5_lbl 20169 `"San José Independencia"', add
label define mx10a_migmuni5_lbl 20170 `"San José Lachiguiri"', add
label define mx10a_migmuni5_lbl 20171 `"San José Tenango"', add
label define mx10a_migmuni5_lbl 20172 `"San Juan Achiutla"', add
label define mx10a_migmuni5_lbl 20173 `"San Juan Atepec"', add
label define mx10a_migmuni5_lbl 20174 `"Ánimas Trujano"', add
label define mx10a_migmuni5_lbl 20175 `"San Juan Bautista Atatlahuca"', add
label define mx10a_migmuni5_lbl 20176 `"San Juan Bautista Coixtlahuaca"', add
label define mx10a_migmuni5_lbl 20177 `"San Juan Bautista Cuicatlán"', add
label define mx10a_migmuni5_lbl 20178 `"San Juan Bautista Guelache"', add
label define mx10a_migmuni5_lbl 20179 `"San Juan Bautista Jayacatlán"', add
label define mx10a_migmuni5_lbl 20180 `"San Juan Bautista Lo de Soto"', add
label define mx10a_migmuni5_lbl 20181 `"San Juan Bautista Suchitepec"', add
label define mx10a_migmuni5_lbl 20182 `"San Juan Bautista Tlacoatzintepec"', add
label define mx10a_migmuni5_lbl 20183 `"San Juan Bautista Tlachichilco"', add
label define mx10a_migmuni5_lbl 20184 `"San Juan Bautista Tuxtepec"', add
label define mx10a_migmuni5_lbl 20185 `"San Juan Cacahuatepec"', add
label define mx10a_migmuni5_lbl 20186 `"San Juan Cieneguilla"', add
label define mx10a_migmuni5_lbl 20187 `"San Juan Coatzóspam"', add
label define mx10a_migmuni5_lbl 20188 `"San Juan Colorado"', add
label define mx10a_migmuni5_lbl 20189 `"San Juan Comaltepec"', add
label define mx10a_migmuni5_lbl 20190 `"San Juan Cotzocón"', add
label define mx10a_migmuni5_lbl 20191 `"San Juan Chicomezúchil"', add
label define mx10a_migmuni5_lbl 20192 `"San Juan Chilateca"', add
label define mx10a_migmuni5_lbl 20193 `"San Juan del Estado"', add
label define mx10a_migmuni5_lbl 20194 `"San Juan del Río"', add
label define mx10a_migmuni5_lbl 20195 `"San Juan Diuxi"', add
label define mx10a_migmuni5_lbl 20196 `"San Juan Evangelista Analco"', add
label define mx10a_migmuni5_lbl 20197 `"San Juan Guelavía"', add
label define mx10a_migmuni5_lbl 20198 `"San Juan Guichicovi"', add
label define mx10a_migmuni5_lbl 20199 `"San Juan Ihualtepec"', add
label define mx10a_migmuni5_lbl 20200 `"San Juan Juquila Mixes"', add
label define mx10a_migmuni5_lbl 20201 `"San Juan Juquila Vijanos"', add
label define mx10a_migmuni5_lbl 20202 `"San Juan Lachao"', add
label define mx10a_migmuni5_lbl 20203 `"San Juan Lachigalla"', add
label define mx10a_migmuni5_lbl 20204 `"San Juan Lajarcia"', add
label define mx10a_migmuni5_lbl 20205 `"San Juan Lalana"', add
label define mx10a_migmuni5_lbl 20206 `"San Juan de los Cués"', add
label define mx10a_migmuni5_lbl 20207 `"San Juan Mazatlán"', add
label define mx10a_migmuni5_lbl 20208 `"San Juan Mixtepec - Dto. 08"', add
label define mx10a_migmuni5_lbl 20209 `"San Juan Mixtepec - Dto. 26"', add
label define mx10a_migmuni5_lbl 20210 `"San Juan Ñumí"', add
label define mx10a_migmuni5_lbl 20211 `"San Juan Ozolotepec"', add
label define mx10a_migmuni5_lbl 20212 `"San Juan Petlapa"', add
label define mx10a_migmuni5_lbl 20213 `"San Juan Quiahije"', add
label define mx10a_migmuni5_lbl 20214 `"San Juan Quiotepec"', add
label define mx10a_migmuni5_lbl 20215 `"San Juan Sayultepec"', add
label define mx10a_migmuni5_lbl 20216 `"San Juan Tabaá"', add
label define mx10a_migmuni5_lbl 20217 `"San Juan Tamazola"', add
label define mx10a_migmuni5_lbl 20218 `"San Juan Teita"', add
label define mx10a_migmuni5_lbl 20219 `"San Juan Teitipac"', add
label define mx10a_migmuni5_lbl 20220 `"San Juan Tepeuxila"', add
label define mx10a_migmuni5_lbl 20221 `"San Juan Teposcolula"', add
label define mx10a_migmuni5_lbl 20222 `"San Juan Yaeé"', add
label define mx10a_migmuni5_lbl 20223 `"San Juan Yatzona"', add
label define mx10a_migmuni5_lbl 20224 `"San Juan Yucuita"', add
label define mx10a_migmuni5_lbl 20225 `"San Lorenzo"', add
label define mx10a_migmuni5_lbl 20226 `"San Lorenzo Albarradas"', add
label define mx10a_migmuni5_lbl 20227 `"San Lorenzo Cacaotepec"', add
label define mx10a_migmuni5_lbl 20228 `"San Lorenzo Cuaunecuiltitla"', add
label define mx10a_migmuni5_lbl 20229 `"San Lorenzo Texmelúcan"', add
label define mx10a_migmuni5_lbl 20230 `"San Lorenzo Victoria"', add
label define mx10a_migmuni5_lbl 20231 `"San Lucas Camotlán"', add
label define mx10a_migmuni5_lbl 20232 `"San Lucas Ojitlán"', add
label define mx10a_migmuni5_lbl 20233 `"San Lucas Quiaviní"', add
label define mx10a_migmuni5_lbl 20234 `"San Lucas Zoquiápam"', add
label define mx10a_migmuni5_lbl 20235 `"San Luis Amatlán"', add
label define mx10a_migmuni5_lbl 20236 `"San Marcial Ozolotepec"', add
label define mx10a_migmuni5_lbl 20237 `"San Marcos Arteaga"', add
label define mx10a_migmuni5_lbl 20238 `"San Martín de los Cansecos"', add
label define mx10a_migmuni5_lbl 20239 `"San Martín Huamelúlpam"', add
label define mx10a_migmuni5_lbl 20240 `"San Martín Itunyoso"', add
label define mx10a_migmuni5_lbl 20241 `"San Martín Lachilá"', add
label define mx10a_migmuni5_lbl 20242 `"San Martín Peras"', add
label define mx10a_migmuni5_lbl 20243 `"San Martín Tilcajete"', add
label define mx10a_migmuni5_lbl 20244 `"San Martín Toxpalan"', add
label define mx10a_migmuni5_lbl 20245 `"San Martín Zacatepec"', add
label define mx10a_migmuni5_lbl 20246 `"San Mateo Cajonos"', add
label define mx10a_migmuni5_lbl 20247 `"Capulálpam de Méndez"', add
label define mx10a_migmuni5_lbl 20248 `"San Mateo del Mar"', add
label define mx10a_migmuni5_lbl 20249 `"San Mateo Yoloxochitlán"', add
label define mx10a_migmuni5_lbl 20250 `"San Mateo Etlatongo"', add
label define mx10a_migmuni5_lbl 20251 `"San Mateo Nejápam"', add
label define mx10a_migmuni5_lbl 20252 `"San Mateo Peñasco"', add
label define mx10a_migmuni5_lbl 20253 `"San Mateo Piñas"', add
label define mx10a_migmuni5_lbl 20254 `"San Mateo Río Hondo"', add
label define mx10a_migmuni5_lbl 20255 `"San Mateo Sindihui"', add
label define mx10a_migmuni5_lbl 20256 `"San Mateo Tlapiltepec"', add
label define mx10a_migmuni5_lbl 20257 `"San Melchor Betaza"', add
label define mx10a_migmuni5_lbl 20258 `"San Miguel Achiutla"', add
label define mx10a_migmuni5_lbl 20259 `"San Miguel Ahuehuetitlán"', add
label define mx10a_migmuni5_lbl 20260 `"San Miguel Aloápam"', add
label define mx10a_migmuni5_lbl 20261 `"San Miguel Amatitlán"', add
label define mx10a_migmuni5_lbl 20262 `"San Miguel Amatlán"', add
label define mx10a_migmuni5_lbl 20263 `"San Miguel Coatlán"', add
label define mx10a_migmuni5_lbl 20264 `"San Miguel Chicahua"', add
label define mx10a_migmuni5_lbl 20265 `"San Miguel Chimalapa"', add
label define mx10a_migmuni5_lbl 20266 `"San Miguel del Puerto"', add
label define mx10a_migmuni5_lbl 20267 `"San Miguel del Río"', add
label define mx10a_migmuni5_lbl 20268 `"San Miguel Ejutla"', add
label define mx10a_migmuni5_lbl 20269 `"San Miguel el Grande"', add
label define mx10a_migmuni5_lbl 20270 `"San Miguel Huautla"', add
label define mx10a_migmuni5_lbl 20271 `"San Miguel Mixtepec"', add
label define mx10a_migmuni5_lbl 20272 `"San Miguel Panixtlahuaca"', add
label define mx10a_migmuni5_lbl 20273 `"San Miguel Peras"', add
label define mx10a_migmuni5_lbl 20274 `"San Miguel Piedras"', add
label define mx10a_migmuni5_lbl 20275 `"San Miguel Quetzaltepec"', add
label define mx10a_migmuni5_lbl 20276 `"San Miguel Santa Flor"', add
label define mx10a_migmuni5_lbl 20277 `"Villa Sola de Vega"', add
label define mx10a_migmuni5_lbl 20278 `"San Miguel Soyaltepec"', add
label define mx10a_migmuni5_lbl 20279 `"San Miguel Suchixtepec"', add
label define mx10a_migmuni5_lbl 20280 `"Villa Talea de Castro"', add
label define mx10a_migmuni5_lbl 20281 `"San Miguel Tecomatlán"', add
label define mx10a_migmuni5_lbl 20282 `"San Miguel Tenango"', add
label define mx10a_migmuni5_lbl 20283 `"San Miguel Tequixtepec"', add
label define mx10a_migmuni5_lbl 20284 `"San Miguel Tilquiápam"', add
label define mx10a_migmuni5_lbl 20285 `"San Miguel Tlacamama"', add
label define mx10a_migmuni5_lbl 20286 `"San Miguel Tlacotepec"', add
label define mx10a_migmuni5_lbl 20287 `"San Miguel Tulancingo"', add
label define mx10a_migmuni5_lbl 20288 `"San Miguel Yotao"', add
label define mx10a_migmuni5_lbl 20289 `"San Nicolás"', add
label define mx10a_migmuni5_lbl 20290 `"San Nicolás Hidalgo"', add
label define mx10a_migmuni5_lbl 20291 `"San Pablo Coatlán"', add
label define mx10a_migmuni5_lbl 20292 `"San Pablo Cuatro Venados"', add
label define mx10a_migmuni5_lbl 20293 `"San Pablo Etla"', add
label define mx10a_migmuni5_lbl 20294 `"San Pablo Huitzo"', add
label define mx10a_migmuni5_lbl 20295 `"San Pablo Huixtepec"', add
label define mx10a_migmuni5_lbl 20296 `"San Pablo Macuiltianguis"', add
label define mx10a_migmuni5_lbl 20297 `"San Pablo Tijaltepec"', add
label define mx10a_migmuni5_lbl 20298 `"San Pablo Villa de Mitla"', add
label define mx10a_migmuni5_lbl 20299 `"San Pablo Yaganiza"', add
label define mx10a_migmuni5_lbl 20300 `"San Pedro Amuzgos"', add
label define mx10a_migmuni5_lbl 20301 `"San Pedro Apóstol"', add
label define mx10a_migmuni5_lbl 20302 `"San Pedro Atoyac"', add
label define mx10a_migmuni5_lbl 20303 `"San Pedro Cajonos"', add
label define mx10a_migmuni5_lbl 20304 `"San Pedro Coxcaltepec Cántaros"', add
label define mx10a_migmuni5_lbl 20305 `"San Pedro Comitancillo"', add
label define mx10a_migmuni5_lbl 20306 `"San Pedro el Alto"', add
label define mx10a_migmuni5_lbl 20307 `"San Pedro Huamelula"', add
label define mx10a_migmuni5_lbl 20308 `"San Pedro Huilotepec"', add
label define mx10a_migmuni5_lbl 20309 `"San Pedro Ixcatlán"', add
label define mx10a_migmuni5_lbl 20310 `"San Pedro Ixtlahuaca"', add
label define mx10a_migmuni5_lbl 20311 `"San Pedro Jaltepetongo"', add
label define mx10a_migmuni5_lbl 20312 `"San Pedro Jicayán"', add
label define mx10a_migmuni5_lbl 20313 `"San Pedro Jocotipac"', add
label define mx10a_migmuni5_lbl 20314 `"San Pedro Juchatengo"', add
label define mx10a_migmuni5_lbl 20315 `"San Pedro Mártir"', add
label define mx10a_migmuni5_lbl 20316 `"San Pedro Mártir Quiechapa"', add
label define mx10a_migmuni5_lbl 20317 `"San Pedro Mártir Yucuxaco"', add
label define mx10a_migmuni5_lbl 20318 `"San Pedro Mixtepec - Dto. 22"', add
label define mx10a_migmuni5_lbl 20319 `"San Pedro Mixtepec - Dto. 26"', add
label define mx10a_migmuni5_lbl 20320 `"San Pedro Molinos"', add
label define mx10a_migmuni5_lbl 20321 `"San Pedro Nopala"', add
label define mx10a_migmuni5_lbl 20322 `"San Pedro Ocopetatillo"', add
label define mx10a_migmuni5_lbl 20323 `"San Pedro Ocotepec"', add
label define mx10a_migmuni5_lbl 20324 `"San Pedro Pochutla"', add
label define mx10a_migmuni5_lbl 20325 `"San Pedro Quiatoni"', add
label define mx10a_migmuni5_lbl 20326 `"San Pedro Sochiápam"', add
label define mx10a_migmuni5_lbl 20327 `"San Pedro Tapanatepec"', add
label define mx10a_migmuni5_lbl 20328 `"San Pedro Taviche"', add
label define mx10a_migmuni5_lbl 20329 `"San Pedro Teozacoalco"', add
label define mx10a_migmuni5_lbl 20330 `"San Pedro Teutila"', add
label define mx10a_migmuni5_lbl 20331 `"San Pedro Tidaá"', add
label define mx10a_migmuni5_lbl 20332 `"San Pedro Topiltepec"', add
label define mx10a_migmuni5_lbl 20333 `"San Pedro Totolápam"', add
label define mx10a_migmuni5_lbl 20334 `"Villa de Tututepec de Melchor Ocampo"', add
label define mx10a_migmuni5_lbl 20335 `"San Pedro Yaneri"', add
label define mx10a_migmuni5_lbl 20336 `"San Pedro Yólox"', add
label define mx10a_migmuni5_lbl 20337 `"San Pedro y San Pablo Ayutla"', add
label define mx10a_migmuni5_lbl 20338 `"Villa de Etla"', add
label define mx10a_migmuni5_lbl 20339 `"San Pedro y San Pablo Teposcolula"', add
label define mx10a_migmuni5_lbl 20340 `"San Pedro y San Pablo Tequixtepec"', add
label define mx10a_migmuni5_lbl 20341 `"San Pedro Yucunama"', add
label define mx10a_migmuni5_lbl 20342 `"San Raymundo Jalpan"', add
label define mx10a_migmuni5_lbl 20343 `"San Sebastián Abasolo"', add
label define mx10a_migmuni5_lbl 20344 `"San Sebastián Coatlán"', add
label define mx10a_migmuni5_lbl 20345 `"San Sebastián Ixcapa"', add
label define mx10a_migmuni5_lbl 20346 `"San Sebastián Nicananduta"', add
label define mx10a_migmuni5_lbl 20347 `"San Sebastián Río Hondo"', add
label define mx10a_migmuni5_lbl 20348 `"San Sebastián Tecomaxtlahuaca"', add
label define mx10a_migmuni5_lbl 20349 `"San Sebastián Teitipac"', add
label define mx10a_migmuni5_lbl 20350 `"San Sebastián Tutla"', add
label define mx10a_migmuni5_lbl 20351 `"San Simón Almolongas"', add
label define mx10a_migmuni5_lbl 20352 `"San Simón Zahuatlán"', add
label define mx10a_migmuni5_lbl 20353 `"Santa Ana"', add
label define mx10a_migmuni5_lbl 20354 `"Santa Ana Ateixtlahuaca"', add
label define mx10a_migmuni5_lbl 20355 `"Santa Ana Cuauhtémoc"', add
label define mx10a_migmuni5_lbl 20356 `"Santa Ana del Valle"', add
label define mx10a_migmuni5_lbl 20357 `"Santa Ana Tavela"', add
label define mx10a_migmuni5_lbl 20358 `"Santa Ana Tlapacoyan"', add
label define mx10a_migmuni5_lbl 20359 `"Santa Ana Yareni"', add
label define mx10a_migmuni5_lbl 20360 `"Santa Ana Zegache"', add
label define mx10a_migmuni5_lbl 20361 `"Santa Catalina Quierí"', add
label define mx10a_migmuni5_lbl 20362 `"Santa Catarina Cuixtla"', add
label define mx10a_migmuni5_lbl 20363 `"Santa Catarina Ixtepeji"', add
label define mx10a_migmuni5_lbl 20364 `"Santa Catarina Juquila"', add
label define mx10a_migmuni5_lbl 20365 `"Santa Catarina Lachatao"', add
label define mx10a_migmuni5_lbl 20366 `"Santa Catarina Loxicha"', add
label define mx10a_migmuni5_lbl 20367 `"Santa Catarina Mechoacán"', add
label define mx10a_migmuni5_lbl 20368 `"Santa Catarina Minas"', add
label define mx10a_migmuni5_lbl 20369 `"Santa Catarina Quiané"', add
label define mx10a_migmuni5_lbl 20370 `"Santa Catarina Tayata"', add
label define mx10a_migmuni5_lbl 20371 `"Santa Catarina Ticuá"', add
label define mx10a_migmuni5_lbl 20372 `"Santa Catarina Yosonotú"', add
label define mx10a_migmuni5_lbl 20373 `"Santa Catarina Zapoquila"', add
label define mx10a_migmuni5_lbl 20374 `"Santa Cruz Acatepec"', add
label define mx10a_migmuni5_lbl 20375 `"Santa Cruz Amilpas"', add
label define mx10a_migmuni5_lbl 20376 `"Santa Cruz de Bravo"', add
label define mx10a_migmuni5_lbl 20377 `"Santa Cruz Itundujia"', add
label define mx10a_migmuni5_lbl 20378 `"Santa Cruz Mixtepec"', add
label define mx10a_migmuni5_lbl 20379 `"Santa Cruz Nundaco"', add
label define mx10a_migmuni5_lbl 20380 `"Santa Cruz Papalutla"', add
label define mx10a_migmuni5_lbl 20381 `"Santa Cruz Tacache de Mina"', add
label define mx10a_migmuni5_lbl 20382 `"Santa Cruz Tacahua"', add
label define mx10a_migmuni5_lbl 20383 `"Santa Cruz Tayata"', add
label define mx10a_migmuni5_lbl 20384 `"Santa Cruz Xitla"', add
label define mx10a_migmuni5_lbl 20385 `"Santa Cruz Xoxocotlán"', add
label define mx10a_migmuni5_lbl 20386 `"Santa Cruz Zenzontepec"', add
label define mx10a_migmuni5_lbl 20387 `"Santa Gertrudis"', add
label define mx10a_migmuni5_lbl 20388 `"Santa Inés del Monte"', add
label define mx10a_migmuni5_lbl 20389 `"Santa Inés Yatzeche"', add
label define mx10a_migmuni5_lbl 20390 `"Santa Lucía del Camino"', add
label define mx10a_migmuni5_lbl 20391 `"Santa Lucía Miahuatlán"', add
label define mx10a_migmuni5_lbl 20392 `"Santa Lucía Monteverde"', add
label define mx10a_migmuni5_lbl 20393 `"Santa Lucía Ocotlán"', add
label define mx10a_migmuni5_lbl 20394 `"Santa María Alotepec"', add
label define mx10a_migmuni5_lbl 20395 `"Santa María Apazco"', add
label define mx10a_migmuni5_lbl 20396 `"Santa María la Asunción"', add
label define mx10a_migmuni5_lbl 20397 `"Heroica Ciudad de Tlaxiaco"', add
label define mx10a_migmuni5_lbl 20398 `"Ayoquezco de Aldama"', add
label define mx10a_migmuni5_lbl 20399 `"Santa María Atzompa"', add
label define mx10a_migmuni5_lbl 20400 `"Santa María Camotlán"', add
label define mx10a_migmuni5_lbl 20401 `"Santa María Colotepec"', add
label define mx10a_migmuni5_lbl 20402 `"Santa María Cortijo"', add
label define mx10a_migmuni5_lbl 20403 `"Santa María Coyotepec"', add
label define mx10a_migmuni5_lbl 20404 `"Santa María Chachoápam"', add
label define mx10a_migmuni5_lbl 20405 `"Villa de Chilapa de Díaz"', add
label define mx10a_migmuni5_lbl 20406 `"Santa María Chilchotla"', add
label define mx10a_migmuni5_lbl 20407 `"Santa María Chimalapa"', add
label define mx10a_migmuni5_lbl 20408 `"Santa María del Rosario"', add
label define mx10a_migmuni5_lbl 20409 `"Santa María del Tule"', add
label define mx10a_migmuni5_lbl 20410 `"Santa María Ecatepec"', add
label define mx10a_migmuni5_lbl 20411 `"Santa María Guelacé"', add
label define mx10a_migmuni5_lbl 20412 `"Santa María Guienagati"', add
label define mx10a_migmuni5_lbl 20413 `"Santa María Huatulco"', add
label define mx10a_migmuni5_lbl 20414 `"Santa María Huazolotitlán"', add
label define mx10a_migmuni5_lbl 20415 `"Santa María Ipalapa"', add
label define mx10a_migmuni5_lbl 20416 `"Santa María Ixcatlán"', add
label define mx10a_migmuni5_lbl 20417 `"Santa María Jacatepec"', add
label define mx10a_migmuni5_lbl 20418 `"Santa María Jalapa del Marqués"', add
label define mx10a_migmuni5_lbl 20419 `"Santa María Jaltianguis"', add
label define mx10a_migmuni5_lbl 20420 `"Santa María Lachixío"', add
label define mx10a_migmuni5_lbl 20421 `"Santa María Mixtequilla"', add
label define mx10a_migmuni5_lbl 20422 `"Santa María Nativitas"', add
label define mx10a_migmuni5_lbl 20423 `"Santa María Nduayaco"', add
label define mx10a_migmuni5_lbl 20424 `"Santa María Ozolotepec"', add
label define mx10a_migmuni5_lbl 20425 `"Santa María Pápalo"', add
label define mx10a_migmuni5_lbl 20426 `"Santa María Peñoles"', add
label define mx10a_migmuni5_lbl 20427 `"Santa María Petapa"', add
label define mx10a_migmuni5_lbl 20428 `"Santa María Quiegolani"', add
label define mx10a_migmuni5_lbl 20429 `"Santa María Sola"', add
label define mx10a_migmuni5_lbl 20430 `"Santa María Tataltepec"', add
label define mx10a_migmuni5_lbl 20431 `"Santa María Tecomavaca"', add
label define mx10a_migmuni5_lbl 20432 `"Santa María Temaxcalapa"', add
label define mx10a_migmuni5_lbl 20433 `"Santa María Temaxcaltepec"', add
label define mx10a_migmuni5_lbl 20434 `"Santa María Teopoxco"', add
label define mx10a_migmuni5_lbl 20435 `"Santa María Tepantlali"', add
label define mx10a_migmuni5_lbl 20436 `"Santa María Texcatitlán"', add
label define mx10a_migmuni5_lbl 20437 `"Santa María Tlahuitoltepec"', add
label define mx10a_migmuni5_lbl 20438 `"Santa María Tlalixtac"', add
label define mx10a_migmuni5_lbl 20439 `"Santa María Tonameca"', add
label define mx10a_migmuni5_lbl 20440 `"Santa María Totolapilla"', add
label define mx10a_migmuni5_lbl 20441 `"Santa María Xadani"', add
label define mx10a_migmuni5_lbl 20442 `"Santa María Yalina"', add
label define mx10a_migmuni5_lbl 20443 `"Santa María Yavesía"', add
label define mx10a_migmuni5_lbl 20444 `"Santa María Yolotepec"', add
label define mx10a_migmuni5_lbl 20445 `"Santa María Yosoyúa"', add
label define mx10a_migmuni5_lbl 20446 `"Santa María Yucuhiti"', add
label define mx10a_migmuni5_lbl 20447 `"Santa María Zacatepec"', add
label define mx10a_migmuni5_lbl 20448 `"Santa María Zaniza"', add
label define mx10a_migmuni5_lbl 20449 `"Santa María Zoquitlán"', add
label define mx10a_migmuni5_lbl 20450 `"Santiago Amoltepec"', add
label define mx10a_migmuni5_lbl 20451 `"Santiago Apoala"', add
label define mx10a_migmuni5_lbl 20452 `"Santiago Apóstol"', add
label define mx10a_migmuni5_lbl 20453 `"Santiago Astata"', add
label define mx10a_migmuni5_lbl 20454 `"Santiago Atitlán"', add
label define mx10a_migmuni5_lbl 20455 `"Santiago Ayuquililla"', add
label define mx10a_migmuni5_lbl 20456 `"Santiago Cacaloxtepec"', add
label define mx10a_migmuni5_lbl 20457 `"Santiago Camotlán"', add
label define mx10a_migmuni5_lbl 20458 `"Santiago Comaltepec"', add
label define mx10a_migmuni5_lbl 20459 `"Santiago Chazumba"', add
label define mx10a_migmuni5_lbl 20460 `"Santiago Choápam"', add
label define mx10a_migmuni5_lbl 20461 `"Santiago del Río"', add
label define mx10a_migmuni5_lbl 20462 `"Santiago Huajolotitlán"', add
label define mx10a_migmuni5_lbl 20463 `"Santiago Huauclilla"', add
label define mx10a_migmuni5_lbl 20464 `"Santiago Ihuitlán Plumas"', add
label define mx10a_migmuni5_lbl 20465 `"Santiago Ixcuintepec"', add
label define mx10a_migmuni5_lbl 20466 `"Santiago Ixtayutla"', add
label define mx10a_migmuni5_lbl 20467 `"Santiago Jamiltepec"', add
label define mx10a_migmuni5_lbl 20468 `"Santiago Jocotepec"', add
label define mx10a_migmuni5_lbl 20469 `"Santiago Juxtlahuaca"', add
label define mx10a_migmuni5_lbl 20470 `"Santiago Lachiguiri"', add
label define mx10a_migmuni5_lbl 20471 `"Santiago Lalopa"', add
label define mx10a_migmuni5_lbl 20472 `"Santiago Laollaga"', add
label define mx10a_migmuni5_lbl 20473 `"Santiago Laxopa"', add
label define mx10a_migmuni5_lbl 20474 `"Santiago Llano Grande"', add
label define mx10a_migmuni5_lbl 20475 `"Santiago Matatlán"', add
label define mx10a_migmuni5_lbl 20476 `"Santiago Miltepec"', add
label define mx10a_migmuni5_lbl 20477 `"Santiago Minas"', add
label define mx10a_migmuni5_lbl 20478 `"Santiago Nacaltepec"', add
label define mx10a_migmuni5_lbl 20479 `"Santiago Nejapilla"', add
label define mx10a_migmuni5_lbl 20480 `"Santiago Nundiche"', add
label define mx10a_migmuni5_lbl 20481 `"Santiago Nuyoó"', add
label define mx10a_migmuni5_lbl 20482 `"Santiago Pinotepa Nacional"', add
label define mx10a_migmuni5_lbl 20483 `"Santiago Suchilquitongo"', add
label define mx10a_migmuni5_lbl 20484 `"Santiago Tamazola"', add
label define mx10a_migmuni5_lbl 20485 `"Santiago Tapextla"', add
label define mx10a_migmuni5_lbl 20486 `"Villa Tejúpam de la Unión"', add
label define mx10a_migmuni5_lbl 20487 `"Santiago Tenango"', add
label define mx10a_migmuni5_lbl 20488 `"Santiago Tepetlapa"', add
label define mx10a_migmuni5_lbl 20489 `"Santiago Tetepec"', add
label define mx10a_migmuni5_lbl 20490 `"Santiago Texcalcingo"', add
label define mx10a_migmuni5_lbl 20491 `"Santiago Textitlán"', add
label define mx10a_migmuni5_lbl 20492 `"Santiago Tilantongo"', add
label define mx10a_migmuni5_lbl 20493 `"Santiago Tillo"', add
label define mx10a_migmuni5_lbl 20494 `"Santiago Tlazoyaltepec"', add
label define mx10a_migmuni5_lbl 20495 `"Santiago Xanica"', add
label define mx10a_migmuni5_lbl 20496 `"Santiago Xiacuí"', add
label define mx10a_migmuni5_lbl 20497 `"Santiago Yaitepec"', add
label define mx10a_migmuni5_lbl 20498 `"Santiago Yaveo"', add
label define mx10a_migmuni5_lbl 20499 `"Santiago Yolomécatl"', add
label define mx10a_migmuni5_lbl 20500 `"Santiago Yosondúa"', add
label define mx10a_migmuni5_lbl 20501 `"Santiago Yucuyachi"', add
label define mx10a_migmuni5_lbl 20502 `"Santiago Zacatepec"', add
label define mx10a_migmuni5_lbl 20503 `"Santiago Zoochila"', add
label define mx10a_migmuni5_lbl 20504 `"Nuevo Zoquiápam"', add
label define mx10a_migmuni5_lbl 20505 `"Santo Domingo Ingenio"', add
label define mx10a_migmuni5_lbl 20506 `"Santo Domingo Albarradas"', add
label define mx10a_migmuni5_lbl 20507 `"Santo Domingo Armenta"', add
label define mx10a_migmuni5_lbl 20508 `"Santo Domingo Chihuitán"', add
label define mx10a_migmuni5_lbl 20509 `"Santo Domingo de Morelos"', add
label define mx10a_migmuni5_lbl 20510 `"Santo Domingo Ixcatlán"', add
label define mx10a_migmuni5_lbl 20511 `"Santo Domingo Nuxaá"', add
label define mx10a_migmuni5_lbl 20512 `"Santo Domingo Ozolotepec"', add
label define mx10a_migmuni5_lbl 20513 `"Santo Domingo Petapa"', add
label define mx10a_migmuni5_lbl 20514 `"Santo Domingo Roayaga"', add
label define mx10a_migmuni5_lbl 20515 `"Santo Domingo Tehuantepec"', add
label define mx10a_migmuni5_lbl 20516 `"Santo Domingo Teojomulco"', add
label define mx10a_migmuni5_lbl 20517 `"Santo Domingo Tepuxtepec"', add
label define mx10a_migmuni5_lbl 20518 `"Santo Domingo Tlatayápam"', add
label define mx10a_migmuni5_lbl 20519 `"Santo Domingo Tomaltepec"', add
label define mx10a_migmuni5_lbl 20520 `"Santo Domingo Tonalá"', add
label define mx10a_migmuni5_lbl 20521 `"Santo Domingo Tonaltepec"', add
label define mx10a_migmuni5_lbl 20522 `"Santo Domingo Xagacía"', add
label define mx10a_migmuni5_lbl 20523 `"Santo Domingo Yanhuitlán"', add
label define mx10a_migmuni5_lbl 20524 `"Santo Domingo Yodohino"', add
label define mx10a_migmuni5_lbl 20525 `"Santo Domingo Zanatepec"', add
label define mx10a_migmuni5_lbl 20526 `"Santos Reyes Nopala"', add
label define mx10a_migmuni5_lbl 20527 `"Santos Reyes Pápalo"', add
label define mx10a_migmuni5_lbl 20528 `"Santos Reyes Tepejillo"', add
label define mx10a_migmuni5_lbl 20529 `"Santos Reyes Yucuná"', add
label define mx10a_migmuni5_lbl 20530 `"Santo Tomás Jalieza"', add
label define mx10a_migmuni5_lbl 20531 `"Santo Tomás Mazaltepec"', add
label define mx10a_migmuni5_lbl 20532 `"Santo Tomás Ocotepec"', add
label define mx10a_migmuni5_lbl 20533 `"Santo Tomás Tamazulapan"', add
label define mx10a_migmuni5_lbl 20534 `"San Vicente Coatlán"', add
label define mx10a_migmuni5_lbl 20535 `"San Vicente Lachixío"', add
label define mx10a_migmuni5_lbl 20536 `"San Vicente Nuñú"', add
label define mx10a_migmuni5_lbl 20537 `"Silacayoápam"', add
label define mx10a_migmuni5_lbl 20538 `"Sitio de Xitlapehua"', add
label define mx10a_migmuni5_lbl 20539 `"Soledad Etla"', add
label define mx10a_migmuni5_lbl 20540 `"Villa de Tamazulápam del Progreso"', add
label define mx10a_migmuni5_lbl 20541 `"Tanetze de Zaragoza"', add
label define mx10a_migmuni5_lbl 20542 `"Taniche"', add
label define mx10a_migmuni5_lbl 20543 `"Tataltepec de Valdés"', add
label define mx10a_migmuni5_lbl 20544 `"Teococuilco de Marcos Pérez"', add
label define mx10a_migmuni5_lbl 20545 `"Teotitlán de Flores Magón"', add
label define mx10a_migmuni5_lbl 20546 `"Teotitlán del Valle"', add
label define mx10a_migmuni5_lbl 20547 `"Teotongo"', add
label define mx10a_migmuni5_lbl 20548 `"Tepelmeme Villa de Morelos"', add
label define mx10a_migmuni5_lbl 20549 `"Tezoatlán de Segura y Luna"', add
label define mx10a_migmuni5_lbl 20550 `"San Jerónimo Tlacochahuaya"', add
label define mx10a_migmuni5_lbl 20551 `"Tlacolula de Matamoros"', add
label define mx10a_migmuni5_lbl 20552 `"Tlacotepec Plumas"', add
label define mx10a_migmuni5_lbl 20553 `"Tlalixtac de Cabrera"', add
label define mx10a_migmuni5_lbl 20554 `"Totontepec Villa de Morelos"', add
label define mx10a_migmuni5_lbl 20555 `"Trinidad Zaachila"', add
label define mx10a_migmuni5_lbl 20556 `"La Trinidad Vista Hermosa"', add
label define mx10a_migmuni5_lbl 20557 `"Unión Hidalgo"', add
label define mx10a_migmuni5_lbl 20558 `"Valerio Trujano"', add
label define mx10a_migmuni5_lbl 20559 `"San Juan Bautista Valle Nacional"', add
label define mx10a_migmuni5_lbl 20560 `"Villa Díaz Ordaz"', add
label define mx10a_migmuni5_lbl 20561 `"Yaxe"', add
label define mx10a_migmuni5_lbl 20562 `"Magdalena Yodocono de Porfirio Díaz"', add
label define mx10a_migmuni5_lbl 20563 `"Yogana"', add
label define mx10a_migmuni5_lbl 20564 `"Yutanduchi de Guerrero"', add
label define mx10a_migmuni5_lbl 20565 `"Villa de Zaachila"', add
label define mx10a_migmuni5_lbl 20566 `"San Mateo Yucutindó"', add
label define mx10a_migmuni5_lbl 20567 `"Zapotitlán Lagunas"', add
label define mx10a_migmuni5_lbl 20568 `"Zapotitlán Palmas"', add
label define mx10a_migmuni5_lbl 20569 `"Santa Inés de Zaragoza"', add
label define mx10a_migmuni5_lbl 20570 `"Zimatlán de Álvarez"', add
label define mx10a_migmuni5_lbl 20999 `"Oaxaca entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 21001 `"Acajete"', add
label define mx10a_migmuni5_lbl 21002 `"Acateno"', add
label define mx10a_migmuni5_lbl 21003 `"Acatlán"', add
label define mx10a_migmuni5_lbl 21004 `"Acatzingo"', add
label define mx10a_migmuni5_lbl 21005 `"Acteopan"', add
label define mx10a_migmuni5_lbl 21006 `"Ahuacatlán"', add
label define mx10a_migmuni5_lbl 21007 `"Ahuatlán"', add
label define mx10a_migmuni5_lbl 21008 `"Ahuazotepec"', add
label define mx10a_migmuni5_lbl 21009 `"Ahuehuetitla"', add
label define mx10a_migmuni5_lbl 21010 `"Ajalpan"', add
label define mx10a_migmuni5_lbl 21011 `"Albino Zertuche"', add
label define mx10a_migmuni5_lbl 21012 `"Aljojuca"', add
label define mx10a_migmuni5_lbl 21013 `"Altepexi"', add
label define mx10a_migmuni5_lbl 21014 `"Amixtlán"', add
label define mx10a_migmuni5_lbl 21015 `"Amozoc"', add
label define mx10a_migmuni5_lbl 21016 `"Aquixtla"', add
label define mx10a_migmuni5_lbl 21017 `"Atempan"', add
label define mx10a_migmuni5_lbl 21018 `"Atexcal"', add
label define mx10a_migmuni5_lbl 21019 `"Atlixco"', add
label define mx10a_migmuni5_lbl 21020 `"Atoyatempan"', add
label define mx10a_migmuni5_lbl 21021 `"Atzala"', add
label define mx10a_migmuni5_lbl 21022 `"Atzitzihuacán"', add
label define mx10a_migmuni5_lbl 21023 `"Atzitzintla"', add
label define mx10a_migmuni5_lbl 21024 `"Axutla"', add
label define mx10a_migmuni5_lbl 21025 `"Ayotoxco de Guerrero"', add
label define mx10a_migmuni5_lbl 21026 `"Calpan"', add
label define mx10a_migmuni5_lbl 21027 `"Caltepec"', add
label define mx10a_migmuni5_lbl 21028 `"Camocuautla"', add
label define mx10a_migmuni5_lbl 21029 `"Caxhuacan"', add
label define mx10a_migmuni5_lbl 21030 `"Coatepec"', add
label define mx10a_migmuni5_lbl 21031 `"Coatzingo"', add
label define mx10a_migmuni5_lbl 21032 `"Cohetzala"', add
label define mx10a_migmuni5_lbl 21033 `"Cohuecan"', add
label define mx10a_migmuni5_lbl 21034 `"Coronango"', add
label define mx10a_migmuni5_lbl 21035 `"Coxcatlán"', add
label define mx10a_migmuni5_lbl 21036 `"Coyomeapan"', add
label define mx10a_migmuni5_lbl 21037 `"Coyotepec"', add
label define mx10a_migmuni5_lbl 21038 `"Cuapiaxtla de Madero"', add
label define mx10a_migmuni5_lbl 21039 `"Cuautempan"', add
label define mx10a_migmuni5_lbl 21040 `"Cuautinchán"', add
label define mx10a_migmuni5_lbl 21041 `"Cuautlancingo"', add
label define mx10a_migmuni5_lbl 21042 `"Cuayuca de Andrade"', add
label define mx10a_migmuni5_lbl 21043 `"Cuetzalan del Progreso"', add
label define mx10a_migmuni5_lbl 21044 `"Cuyoaco"', add
label define mx10a_migmuni5_lbl 21045 `"Chalchicomula de Sesma"', add
label define mx10a_migmuni5_lbl 21046 `"Chapulco"', add
label define mx10a_migmuni5_lbl 21047 `"Chiautla"', add
label define mx10a_migmuni5_lbl 21048 `"Chiautzingo"', add
label define mx10a_migmuni5_lbl 21049 `"Chiconcuautla"', add
label define mx10a_migmuni5_lbl 21050 `"Chichiquila"', add
label define mx10a_migmuni5_lbl 21051 `"Chietla"', add
label define mx10a_migmuni5_lbl 21052 `"Chigmecatitlán"', add
label define mx10a_migmuni5_lbl 21053 `"Chignahuapan"', add
label define mx10a_migmuni5_lbl 21054 `"Chignautla"', add
label define mx10a_migmuni5_lbl 21055 `"Chila"', add
label define mx10a_migmuni5_lbl 21056 `"Chila de la Sal"', add
label define mx10a_migmuni5_lbl 21057 `"Honey"', add
label define mx10a_migmuni5_lbl 21058 `"Chilchotla"', add
label define mx10a_migmuni5_lbl 21059 `"Chinantla"', add
label define mx10a_migmuni5_lbl 21060 `"Domingo Arenas"', add
label define mx10a_migmuni5_lbl 21061 `"Eloxochitlán"', add
label define mx10a_migmuni5_lbl 21062 `"Epatlán"', add
label define mx10a_migmuni5_lbl 21063 `"Esperanza"', add
label define mx10a_migmuni5_lbl 21064 `"Francisco Z. Mena"', add
label define mx10a_migmuni5_lbl 21065 `"General Felipe Ángeles"', add
label define mx10a_migmuni5_lbl 21066 `"Guadalupe"', add
label define mx10a_migmuni5_lbl 21067 `"Guadalupe Victoria"', add
label define mx10a_migmuni5_lbl 21068 `"Hermenegildo Galeana"', add
label define mx10a_migmuni5_lbl 21069 `"Huaquechula"', add
label define mx10a_migmuni5_lbl 21070 `"Huatlatlauca"', add
label define mx10a_migmuni5_lbl 21071 `"Huauchinango"', add
label define mx10a_migmuni5_lbl 21072 `"Huehuetla"', add
label define mx10a_migmuni5_lbl 21073 `"Huehuetlán el Chico"', add
label define mx10a_migmuni5_lbl 21074 `"Huejotzingo"', add
label define mx10a_migmuni5_lbl 21075 `"Hueyapan"', add
label define mx10a_migmuni5_lbl 21076 `"Hueytamalco"', add
label define mx10a_migmuni5_lbl 21077 `"Hueytlalpan"', add
label define mx10a_migmuni5_lbl 21078 `"Huitzilan de Serdán"', add
label define mx10a_migmuni5_lbl 21079 `"Huitziltepec"', add
label define mx10a_migmuni5_lbl 21080 `"Atlequizayan"', add
label define mx10a_migmuni5_lbl 21081 `"Ixcamilpa de Guerrero"', add
label define mx10a_migmuni5_lbl 21082 `"Ixcaquixtla"', add
label define mx10a_migmuni5_lbl 21083 `"Ixtacamaxtitlán"', add
label define mx10a_migmuni5_lbl 21084 `"Ixtepec"', add
label define mx10a_migmuni5_lbl 21085 `"Izúcar de Matamoros"', add
label define mx10a_migmuni5_lbl 21086 `"Jalpan"', add
label define mx10a_migmuni5_lbl 21087 `"Jolalpan"', add
label define mx10a_migmuni5_lbl 21088 `"Jonotla"', add
label define mx10a_migmuni5_lbl 21089 `"Jopala"', add
label define mx10a_migmuni5_lbl 21090 `"Juan C. Bonilla"', add
label define mx10a_migmuni5_lbl 21091 `"Juan Galindo"', add
label define mx10a_migmuni5_lbl 21092 `"Juan N. Méndez"', add
label define mx10a_migmuni5_lbl 21093 `"Lafragua"', add
label define mx10a_migmuni5_lbl 21094 `"Libres"', add
label define mx10a_migmuni5_lbl 21095 `"La Magdalena Tlatlauquitepec"', add
label define mx10a_migmuni5_lbl 21096 `"Mazapiltepec de Juárez"', add
label define mx10a_migmuni5_lbl 21097 `"Mixtla"', add
label define mx10a_migmuni5_lbl 21098 `"Molcaxac"', add
label define mx10a_migmuni5_lbl 21099 `"Cañada Morelos"', add
label define mx10a_migmuni5_lbl 21100 `"Naupan"', add
label define mx10a_migmuni5_lbl 21101 `"Nauzontla"', add
label define mx10a_migmuni5_lbl 21102 `"Nealtican"', add
label define mx10a_migmuni5_lbl 21103 `"Nicolás Bravo"', add
label define mx10a_migmuni5_lbl 21104 `"Nopalucan"', add
label define mx10a_migmuni5_lbl 21105 `"Ocotepec"', add
label define mx10a_migmuni5_lbl 21106 `"Ocoyucan"', add
label define mx10a_migmuni5_lbl 21107 `"Olintla"', add
label define mx10a_migmuni5_lbl 21108 `"Oriental"', add
label define mx10a_migmuni5_lbl 21109 `"Pahuatlán"', add
label define mx10a_migmuni5_lbl 21110 `"Palmar de Bravo"', add
label define mx10a_migmuni5_lbl 21111 `"Pantepec"', add
label define mx10a_migmuni5_lbl 21112 `"Petlalcingo"', add
label define mx10a_migmuni5_lbl 21113 `"Piaxtla"', add
label define mx10a_migmuni5_lbl 21114 `"Puebla"', add
label define mx10a_migmuni5_lbl 21115 `"Quecholac"', add
label define mx10a_migmuni5_lbl 21116 `"Quimixtlán"', add
label define mx10a_migmuni5_lbl 21117 `"Rafael Lara Grajales"', add
label define mx10a_migmuni5_lbl 21118 `"Los Reyes de Juárez"', add
label define mx10a_migmuni5_lbl 21119 `"San Andrés Cholula"', add
label define mx10a_migmuni5_lbl 21120 `"San Antonio Cañada"', add
label define mx10a_migmuni5_lbl 21121 `"San Diego la Mesa Tochimiltzingo"', add
label define mx10a_migmuni5_lbl 21122 `"San Felipe Teotlalcingo"', add
label define mx10a_migmuni5_lbl 21123 `"San Felipe Tepatlán"', add
label define mx10a_migmuni5_lbl 21124 `"San Gabriel Chilac"', add
label define mx10a_migmuni5_lbl 21125 `"San Gregorio Atzompa"', add
label define mx10a_migmuni5_lbl 21126 `"San Jerónimo Tecuanipan"', add
label define mx10a_migmuni5_lbl 21127 `"San Jerónimo Xayacatlán"', add
label define mx10a_migmuni5_lbl 21128 `"San José Chiapa"', add
label define mx10a_migmuni5_lbl 21129 `"San José Miahuatlán"', add
label define mx10a_migmuni5_lbl 21130 `"San Juan Atenco"', add
label define mx10a_migmuni5_lbl 21131 `"San Juan Atzompa"', add
label define mx10a_migmuni5_lbl 21132 `"San Martín Texmelucan"', add
label define mx10a_migmuni5_lbl 21133 `"San Martín Totoltepec"', add
label define mx10a_migmuni5_lbl 21134 `"San Matías Tlalancaleca"', add
label define mx10a_migmuni5_lbl 21135 `"San Miguel Ixitlán"', add
label define mx10a_migmuni5_lbl 21136 `"San Miguel Xoxtla"', add
label define mx10a_migmuni5_lbl 21137 `"San Nicolás Buenos Aires"', add
label define mx10a_migmuni5_lbl 21138 `"San Nicolás de los Ranchos"', add
label define mx10a_migmuni5_lbl 21139 `"San Pablo Anicano"', add
label define mx10a_migmuni5_lbl 21140 `"San Pedro Cholula"', add
label define mx10a_migmuni5_lbl 21141 `"San Pedro Yeloixtlahuaca"', add
label define mx10a_migmuni5_lbl 21142 `"San Salvador el Seco"', add
label define mx10a_migmuni5_lbl 21143 `"San Salvador el Verde"', add
label define mx10a_migmuni5_lbl 21144 `"San Salvador Huixcolotla"', add
label define mx10a_migmuni5_lbl 21145 `"San Sebastián Tlacotepec"', add
label define mx10a_migmuni5_lbl 21146 `"Santa Catarina Tlaltempan"', add
label define mx10a_migmuni5_lbl 21147 `"Santa Inés Ahuatempan"', add
label define mx10a_migmuni5_lbl 21148 `"Santa Isabel Cholula"', add
label define mx10a_migmuni5_lbl 21149 `"Santiago Miahuatlán"', add
label define mx10a_migmuni5_lbl 21150 `"Huehuetlán el Grande"', add
label define mx10a_migmuni5_lbl 21151 `"Santo Tomás Hueyotlipan"', add
label define mx10a_migmuni5_lbl 21152 `"Soltepec"', add
label define mx10a_migmuni5_lbl 21153 `"Tecali de Herrera"', add
label define mx10a_migmuni5_lbl 21154 `"Tecamachalco"', add
label define mx10a_migmuni5_lbl 21155 `"Tecomatlán"', add
label define mx10a_migmuni5_lbl 21156 `"Tehuacán"', add
label define mx10a_migmuni5_lbl 21157 `"Tehuitzingo"', add
label define mx10a_migmuni5_lbl 21158 `"Tenampulco"', add
label define mx10a_migmuni5_lbl 21159 `"Teopantlán"', add
label define mx10a_migmuni5_lbl 21160 `"Teotlalco"', add
label define mx10a_migmuni5_lbl 21161 `"Tepanco de López"', add
label define mx10a_migmuni5_lbl 21162 `"Tepango de Rodríguez"', add
label define mx10a_migmuni5_lbl 21163 `"Tepatlaxco de Hidalgo"', add
label define mx10a_migmuni5_lbl 21164 `"Tepeaca"', add
label define mx10a_migmuni5_lbl 21165 `"Tepemaxalco"', add
label define mx10a_migmuni5_lbl 21166 `"Tepeojuma"', add
label define mx10a_migmuni5_lbl 21167 `"Tepetzintla"', add
label define mx10a_migmuni5_lbl 21168 `"Tepexco"', add
label define mx10a_migmuni5_lbl 21169 `"Tepexi de Rodríguez"', add
label define mx10a_migmuni5_lbl 21170 `"Tepeyahualco"', add
label define mx10a_migmuni5_lbl 21171 `"Tepeyahualco de Cuauhtémoc"', add
label define mx10a_migmuni5_lbl 21172 `"Tetela de Ocampo"', add
label define mx10a_migmuni5_lbl 21173 `"Teteles de Avila Castillo"', add
label define mx10a_migmuni5_lbl 21174 `"Teziutlán"', add
label define mx10a_migmuni5_lbl 21175 `"Tianguismanalco"', add
label define mx10a_migmuni5_lbl 21176 `"Tilapa"', add
label define mx10a_migmuni5_lbl 21177 `"Tlacotepec de Benito Juárez"', add
label define mx10a_migmuni5_lbl 21178 `"Tlacuilotepec"', add
label define mx10a_migmuni5_lbl 21179 `"Tlachichuca"', add
label define mx10a_migmuni5_lbl 21180 `"Tlahuapan"', add
label define mx10a_migmuni5_lbl 21181 `"Tlaltenango"', add
label define mx10a_migmuni5_lbl 21182 `"Tlanepantla"', add
label define mx10a_migmuni5_lbl 21183 `"Tlaola"', add
label define mx10a_migmuni5_lbl 21184 `"Tlapacoya"', add
label define mx10a_migmuni5_lbl 21185 `"Tlapanalá"', add
label define mx10a_migmuni5_lbl 21186 `"Tlatlauquitepec"', add
label define mx10a_migmuni5_lbl 21187 `"Tlaxco"', add
label define mx10a_migmuni5_lbl 21188 `"Tochimilco"', add
label define mx10a_migmuni5_lbl 21189 `"Tochtepec"', add
label define mx10a_migmuni5_lbl 21190 `"Totoltepec de Guerrero"', add
label define mx10a_migmuni5_lbl 21191 `"Tulcingo"', add
label define mx10a_migmuni5_lbl 21192 `"Tuzamapan de Galeana"', add
label define mx10a_migmuni5_lbl 21193 `"Tzicatlacoyan"', add
label define mx10a_migmuni5_lbl 21194 `"Venustiano Carranza"', add
label define mx10a_migmuni5_lbl 21195 `"Vicente Guerrero"', add
label define mx10a_migmuni5_lbl 21196 `"Xayacatlán de Bravo"', add
label define mx10a_migmuni5_lbl 21197 `"Xicotepec"', add
label define mx10a_migmuni5_lbl 21198 `"Xicotlán"', add
label define mx10a_migmuni5_lbl 21199 `"Xiutetelco"', add
label define mx10a_migmuni5_lbl 21200 `"Xochiapulco"', add
label define mx10a_migmuni5_lbl 21201 `"Xochiltepec"', add
label define mx10a_migmuni5_lbl 21202 `"Xochitlán de Vicente Suárez"', add
label define mx10a_migmuni5_lbl 21203 `"Xochitlán Todos Santos"', add
label define mx10a_migmuni5_lbl 21204 `"Yaonáhuac"', add
label define mx10a_migmuni5_lbl 21205 `"Yehualtepec"', add
label define mx10a_migmuni5_lbl 21206 `"Zacapala"', add
label define mx10a_migmuni5_lbl 21207 `"Zacapoaxtla"', add
label define mx10a_migmuni5_lbl 21208 `"Zacatlán"', add
label define mx10a_migmuni5_lbl 21209 `"Zapotitlán"', add
label define mx10a_migmuni5_lbl 21210 `"Zapotitlán de Méndez"', add
label define mx10a_migmuni5_lbl 21211 `"Zaragoza"', add
label define mx10a_migmuni5_lbl 21212 `"Zautla"', add
label define mx10a_migmuni5_lbl 21213 `"Zihuateutla"', add
label define mx10a_migmuni5_lbl 21214 `"Zinacatepec"', add
label define mx10a_migmuni5_lbl 21215 `"Zongozotla"', add
label define mx10a_migmuni5_lbl 21216 `"Zoquiapan"', add
label define mx10a_migmuni5_lbl 21217 `"Zoquitlán"', add
label define mx10a_migmuni5_lbl 21999 `"Puebla entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 22001 `"Amealco de Bonfil"', add
label define mx10a_migmuni5_lbl 22002 `"Pinal de Amoles"', add
label define mx10a_migmuni5_lbl 22003 `"Arroyo Seco"', add
label define mx10a_migmuni5_lbl 22004 `"Cadereyta de Montes"', add
label define mx10a_migmuni5_lbl 22005 `"Colón"', add
label define mx10a_migmuni5_lbl 22006 `"Corregidora"', add
label define mx10a_migmuni5_lbl 22007 `"Ezequiel Montes"', add
label define mx10a_migmuni5_lbl 22008 `"Huimilpan"', add
label define mx10a_migmuni5_lbl 22009 `"Jalpan de Serra"', add
label define mx10a_migmuni5_lbl 22010 `"Landa de Matamoros"', add
label define mx10a_migmuni5_lbl 22011 `"El Marqués"', add
label define mx10a_migmuni5_lbl 22012 `"Pedro Escobedo"', add
label define mx10a_migmuni5_lbl 22013 `"Peñamiller"', add
label define mx10a_migmuni5_lbl 22014 `"Querétaro"', add
label define mx10a_migmuni5_lbl 22015 `"San Joaquín"', add
label define mx10a_migmuni5_lbl 22016 `"San Juan del Río"', add
label define mx10a_migmuni5_lbl 22017 `"Tequisquiapan"', add
label define mx10a_migmuni5_lbl 22018 `"Tolimán"', add
label define mx10a_migmuni5_lbl 22999 `"Querétaro entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 23001 `"Cozumel"', add
label define mx10a_migmuni5_lbl 23002 `"Felipe Carrillo Puerto"', add
label define mx10a_migmuni5_lbl 23003 `"Isla Mujeres"', add
label define mx10a_migmuni5_lbl 23004 `"Othón P. Blanco"', add
label define mx10a_migmuni5_lbl 23005 `"Benito Juárez"', add
label define mx10a_migmuni5_lbl 23006 `"José María Morelos"', add
label define mx10a_migmuni5_lbl 23007 `"Lázaro Cárdenas"', add
label define mx10a_migmuni5_lbl 23008 `"Solidaridad"', add
label define mx10a_migmuni5_lbl 23009 `"Tulum"', add
label define mx10a_migmuni5_lbl 23999 `"Quintana Roo entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 24001 `"Ahualulco"', add
label define mx10a_migmuni5_lbl 24002 `"Alaquines"', add
label define mx10a_migmuni5_lbl 24003 `"Aquismón"', add
label define mx10a_migmuni5_lbl 24004 `"Armadillo de los Infante"', add
label define mx10a_migmuni5_lbl 24005 `"Cárdenas"', add
label define mx10a_migmuni5_lbl 24006 `"Catorce"', add
label define mx10a_migmuni5_lbl 24007 `"Cedral"', add
label define mx10a_migmuni5_lbl 24008 `"Cerritos"', add
label define mx10a_migmuni5_lbl 24009 `"Cerro de San Pedro"', add
label define mx10a_migmuni5_lbl 24010 `"Ciudad del Maíz"', add
label define mx10a_migmuni5_lbl 24011 `"Ciudad Fernández"', add
label define mx10a_migmuni5_lbl 24012 `"Tancanhuitz"', add
label define mx10a_migmuni5_lbl 24013 `"Ciudad Valles"', add
label define mx10a_migmuni5_lbl 24014 `"Coxcatlán"', add
label define mx10a_migmuni5_lbl 24015 `"Charcas"', add
label define mx10a_migmuni5_lbl 24016 `"Ebano"', add
label define mx10a_migmuni5_lbl 24017 `"Guadalcázar"', add
label define mx10a_migmuni5_lbl 24018 `"Huehuetlán"', add
label define mx10a_migmuni5_lbl 24019 `"Lagunillas"', add
label define mx10a_migmuni5_lbl 24020 `"Matehuala"', add
label define mx10a_migmuni5_lbl 24021 `"Mexquitic de Carmona"', add
label define mx10a_migmuni5_lbl 24022 `"Moctezuma"', add
label define mx10a_migmuni5_lbl 24023 `"Rayón"', add
label define mx10a_migmuni5_lbl 24024 `"Rioverde"', add
label define mx10a_migmuni5_lbl 24025 `"Salinas"', add
label define mx10a_migmuni5_lbl 24026 `"San Antonio"', add
label define mx10a_migmuni5_lbl 24027 `"San Ciro de Acosta"', add
label define mx10a_migmuni5_lbl 24028 `"San Luis Potosí"', add
label define mx10a_migmuni5_lbl 24029 `"San Martín Chalchicuautla"', add
label define mx10a_migmuni5_lbl 24030 `"San Nicolás Tolentino"', add
label define mx10a_migmuni5_lbl 24031 `"Santa Catarina"', add
label define mx10a_migmuni5_lbl 24032 `"Santa María del Río"', add
label define mx10a_migmuni5_lbl 24033 `"Santo Domingo"', add
label define mx10a_migmuni5_lbl 24034 `"San Vicente Tancuayalab"', add
label define mx10a_migmuni5_lbl 24035 `"Soledad de Graciano Sánchez"', add
label define mx10a_migmuni5_lbl 24036 `"Tamasopo"', add
label define mx10a_migmuni5_lbl 24037 `"Tamazunchale"', add
label define mx10a_migmuni5_lbl 24038 `"Tampacán"', add
label define mx10a_migmuni5_lbl 24039 `"Tampamolón Corona"', add
label define mx10a_migmuni5_lbl 24040 `"Tamuín"', add
label define mx10a_migmuni5_lbl 24041 `"Tanlajás"', add
label define mx10a_migmuni5_lbl 24042 `"Tanquián de Escobedo"', add
label define mx10a_migmuni5_lbl 24043 `"Tierra Nueva"', add
label define mx10a_migmuni5_lbl 24044 `"Vanegas"', add
label define mx10a_migmuni5_lbl 24045 `"Venado"', add
label define mx10a_migmuni5_lbl 24046 `"Villa de Arriaga"', add
label define mx10a_migmuni5_lbl 24047 `"Villa de Guadalupe"', add
label define mx10a_migmuni5_lbl 24048 `"Villa de la Paz"', add
label define mx10a_migmuni5_lbl 24049 `"Villa de Ramos"', add
label define mx10a_migmuni5_lbl 24050 `"Villa de Reyes"', add
label define mx10a_migmuni5_lbl 24051 `"Villa Hidalgo"', add
label define mx10a_migmuni5_lbl 24052 `"Villa Juárez"', add
label define mx10a_migmuni5_lbl 24053 `"Axtla de Terrazas"', add
label define mx10a_migmuni5_lbl 24054 `"Xilitla"', add
label define mx10a_migmuni5_lbl 24055 `"Zaragoza"', add
label define mx10a_migmuni5_lbl 24056 `"Villa de Arista"', add
label define mx10a_migmuni5_lbl 24057 `"Matlapa"', add
label define mx10a_migmuni5_lbl 24058 `"El Naranjo"', add
label define mx10a_migmuni5_lbl 24999 `"San Luis Potosí entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 25001 `"Ahome"', add
label define mx10a_migmuni5_lbl 25002 `"Angostura"', add
label define mx10a_migmuni5_lbl 25003 `"Badiraguato"', add
label define mx10a_migmuni5_lbl 25004 `"Concordia"', add
label define mx10a_migmuni5_lbl 25005 `"Cosalá"', add
label define mx10a_migmuni5_lbl 25006 `"Culiacán"', add
label define mx10a_migmuni5_lbl 25007 `"Choix"', add
label define mx10a_migmuni5_lbl 25008 `"Elota"', add
label define mx10a_migmuni5_lbl 25009 `"Escuinapa"', add
label define mx10a_migmuni5_lbl 25010 `"El Fuerte"', add
label define mx10a_migmuni5_lbl 25011 `"Guasave"', add
label define mx10a_migmuni5_lbl 25012 `"Mazatlán"', add
label define mx10a_migmuni5_lbl 25013 `"Mocorito"', add
label define mx10a_migmuni5_lbl 25014 `"Rosario"', add
label define mx10a_migmuni5_lbl 25015 `"Salvador Alvarado"', add
label define mx10a_migmuni5_lbl 25016 `"San Ignacio"', add
label define mx10a_migmuni5_lbl 25017 `"Sinaloa"', add
label define mx10a_migmuni5_lbl 25018 `"Navolato"', add
label define mx10a_migmuni5_lbl 25999 `"Sinaloa entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 26001 `"Aconchi"', add
label define mx10a_migmuni5_lbl 26002 `"Agua Prieta"', add
label define mx10a_migmuni5_lbl 26003 `"Alamos"', add
label define mx10a_migmuni5_lbl 26004 `"Altar"', add
label define mx10a_migmuni5_lbl 26005 `"Arivechi"', add
label define mx10a_migmuni5_lbl 26006 `"Arizpe"', add
label define mx10a_migmuni5_lbl 26007 `"Atil"', add
label define mx10a_migmuni5_lbl 26008 `"Bacadéhuachi"', add
label define mx10a_migmuni5_lbl 26009 `"Bacanora"', add
label define mx10a_migmuni5_lbl 26010 `"Bacerac"', add
label define mx10a_migmuni5_lbl 26011 `"Bacoachi"', add
label define mx10a_migmuni5_lbl 26012 `"Bácum"', add
label define mx10a_migmuni5_lbl 26013 `"Banámichi"', add
label define mx10a_migmuni5_lbl 26014 `"Baviácora"', add
label define mx10a_migmuni5_lbl 26015 `"Bavispe"', add
label define mx10a_migmuni5_lbl 26016 `"Benjamín Hill"', add
label define mx10a_migmuni5_lbl 26017 `"Caborca"', add
label define mx10a_migmuni5_lbl 26018 `"Cajeme"', add
label define mx10a_migmuni5_lbl 26019 `"Cananea"', add
label define mx10a_migmuni5_lbl 26020 `"Carbó"', add
label define mx10a_migmuni5_lbl 26021 `"La Colorada"', add
label define mx10a_migmuni5_lbl 26022 `"Cucurpe"', add
label define mx10a_migmuni5_lbl 26023 `"Cumpas"', add
label define mx10a_migmuni5_lbl 26024 `"Divisaderos"', add
label define mx10a_migmuni5_lbl 26025 `"Empalme"', add
label define mx10a_migmuni5_lbl 26026 `"Etchojoa"', add
label define mx10a_migmuni5_lbl 26027 `"Fronteras"', add
label define mx10a_migmuni5_lbl 26028 `"Granados"', add
label define mx10a_migmuni5_lbl 26029 `"Guaymas"', add
label define mx10a_migmuni5_lbl 26030 `"Hermosillo"', add
label define mx10a_migmuni5_lbl 26031 `"Huachinera"', add
label define mx10a_migmuni5_lbl 26032 `"Huásabas"', add
label define mx10a_migmuni5_lbl 26033 `"Huatabampo"', add
label define mx10a_migmuni5_lbl 26034 `"Huépac"', add
label define mx10a_migmuni5_lbl 26035 `"Imuris"', add
label define mx10a_migmuni5_lbl 26036 `"Magdalena"', add
label define mx10a_migmuni5_lbl 26037 `"Mazatán"', add
label define mx10a_migmuni5_lbl 26038 `"Moctezuma"', add
label define mx10a_migmuni5_lbl 26039 `"Naco"', add
label define mx10a_migmuni5_lbl 26040 `"Nácori Chico"', add
label define mx10a_migmuni5_lbl 26041 `"Nacozari de García"', add
label define mx10a_migmuni5_lbl 26042 `"Navojoa"', add
label define mx10a_migmuni5_lbl 26043 `"Nogales"', add
label define mx10a_migmuni5_lbl 26044 `"Onavas"', add
label define mx10a_migmuni5_lbl 26045 `"Opodepe"', add
label define mx10a_migmuni5_lbl 26046 `"Oquitoa"', add
label define mx10a_migmuni5_lbl 26047 `"Pitiquito"', add
label define mx10a_migmuni5_lbl 26048 `"Puerto Peñasco"', add
label define mx10a_migmuni5_lbl 26049 `"Quiriego"', add
label define mx10a_migmuni5_lbl 26050 `"Rayón"', add
label define mx10a_migmuni5_lbl 26051 `"Rosario"', add
label define mx10a_migmuni5_lbl 26052 `"Sahuaripa"', add
label define mx10a_migmuni5_lbl 26053 `"San Felipe de Jesús"', add
label define mx10a_migmuni5_lbl 26054 `"San Javier"', add
label define mx10a_migmuni5_lbl 26055 `"San Luis Río Colorado"', add
label define mx10a_migmuni5_lbl 26056 `"San Miguel de Horcasitas"', add
label define mx10a_migmuni5_lbl 26057 `"San Pedro de la Cueva"', add
label define mx10a_migmuni5_lbl 26058 `"Santa Ana"', add
label define mx10a_migmuni5_lbl 26059 `"Santa Cruz"', add
label define mx10a_migmuni5_lbl 26060 `"Sáric"', add
label define mx10a_migmuni5_lbl 26061 `"Soyopa"', add
label define mx10a_migmuni5_lbl 26062 `"Suaqui Grande"', add
label define mx10a_migmuni5_lbl 26063 `"Tepache"', add
label define mx10a_migmuni5_lbl 26064 `"Trincheras"', add
label define mx10a_migmuni5_lbl 26065 `"Tubutama"', add
label define mx10a_migmuni5_lbl 26066 `"Ures"', add
label define mx10a_migmuni5_lbl 26067 `"Villa Hidalgo"', add
label define mx10a_migmuni5_lbl 26068 `"Villa Pesqueira"', add
label define mx10a_migmuni5_lbl 26069 `"Yécora"', add
label define mx10a_migmuni5_lbl 26070 `"General Plutarco Elías Calles"', add
label define mx10a_migmuni5_lbl 26071 `"Benito Juárez"', add
label define mx10a_migmuni5_lbl 26072 `"San Ignacio Río Muerto"', add
label define mx10a_migmuni5_lbl 26999 `"Sonora entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 27001 `"Balancán"', add
label define mx10a_migmuni5_lbl 27002 `"Cárdenas"', add
label define mx10a_migmuni5_lbl 27003 `"Centla"', add
label define mx10a_migmuni5_lbl 27004 `"Centro"', add
label define mx10a_migmuni5_lbl 27005 `"Comalcalco"', add
label define mx10a_migmuni5_lbl 27006 `"Cunduacán"', add
label define mx10a_migmuni5_lbl 27007 `"Emiliano Zapata"', add
label define mx10a_migmuni5_lbl 27008 `"Huimanguillo"', add
label define mx10a_migmuni5_lbl 27009 `"Jalapa"', add
label define mx10a_migmuni5_lbl 27010 `"Jalpa de Méndez"', add
label define mx10a_migmuni5_lbl 27011 `"Jonuta"', add
label define mx10a_migmuni5_lbl 27012 `"Macuspana"', add
label define mx10a_migmuni5_lbl 27013 `"Nacajuca"', add
label define mx10a_migmuni5_lbl 27014 `"Paraíso"', add
label define mx10a_migmuni5_lbl 27015 `"Tacotalpa"', add
label define mx10a_migmuni5_lbl 27016 `"Teapa"', add
label define mx10a_migmuni5_lbl 27017 `"Tenosique"', add
label define mx10a_migmuni5_lbl 27999 `"Tabasco entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 28001 `"Abasolo"', add
label define mx10a_migmuni5_lbl 28002 `"Aldama"', add
label define mx10a_migmuni5_lbl 28003 `"Altamira"', add
label define mx10a_migmuni5_lbl 28004 `"Antiguo Morelos"', add
label define mx10a_migmuni5_lbl 28005 `"Burgos"', add
label define mx10a_migmuni5_lbl 28006 `"Bustamante"', add
label define mx10a_migmuni5_lbl 28007 `"Camargo"', add
label define mx10a_migmuni5_lbl 28008 `"Casas"', add
label define mx10a_migmuni5_lbl 28009 `"Ciudad Madero"', add
label define mx10a_migmuni5_lbl 28010 `"Cruillas"', add
label define mx10a_migmuni5_lbl 28011 `"Gómez Farías"', add
label define mx10a_migmuni5_lbl 28012 `"González"', add
label define mx10a_migmuni5_lbl 28013 `"Güémez"', add
label define mx10a_migmuni5_lbl 28014 `"Guerrero"', add
label define mx10a_migmuni5_lbl 28015 `"Gustavo Díaz Ordaz"', add
label define mx10a_migmuni5_lbl 28016 `"Hidalgo"', add
label define mx10a_migmuni5_lbl 28017 `"Jaumave"', add
label define mx10a_migmuni5_lbl 28018 `"Jiménez"', add
label define mx10a_migmuni5_lbl 28019 `"Llera"', add
label define mx10a_migmuni5_lbl 28020 `"Mainero"', add
label define mx10a_migmuni5_lbl 28021 `"El Mante"', add
label define mx10a_migmuni5_lbl 28022 `"Matamoros"', add
label define mx10a_migmuni5_lbl 28023 `"Méndez"', add
label define mx10a_migmuni5_lbl 28024 `"Mier"', add
label define mx10a_migmuni5_lbl 28025 `"Miguel Alemán"', add
label define mx10a_migmuni5_lbl 28026 `"Miquihuana"', add
label define mx10a_migmuni5_lbl 28027 `"Nuevo Laredo"', add
label define mx10a_migmuni5_lbl 28028 `"Nuevo Morelos"', add
label define mx10a_migmuni5_lbl 28029 `"Ocampo"', add
label define mx10a_migmuni5_lbl 28030 `"Padilla"', add
label define mx10a_migmuni5_lbl 28031 `"Palmillas"', add
label define mx10a_migmuni5_lbl 28032 `"Reynosa"', add
label define mx10a_migmuni5_lbl 28033 `"Río Bravo"', add
label define mx10a_migmuni5_lbl 28034 `"San Carlos"', add
label define mx10a_migmuni5_lbl 28035 `"San Fernando"', add
label define mx10a_migmuni5_lbl 28036 `"San Nicolás"', add
label define mx10a_migmuni5_lbl 28037 `"Soto la Marina"', add
label define mx10a_migmuni5_lbl 28038 `"Tampico"', add
label define mx10a_migmuni5_lbl 28039 `"Tula"', add
label define mx10a_migmuni5_lbl 28040 `"Valle Hermoso"', add
label define mx10a_migmuni5_lbl 28041 `"Victoria"', add
label define mx10a_migmuni5_lbl 28042 `"Villagrán"', add
label define mx10a_migmuni5_lbl 28043 `"Xicoténcatl"', add
label define mx10a_migmuni5_lbl 28999 `"Tamaulipas entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 29001 `"Amaxac de Guerrero"', add
label define mx10a_migmuni5_lbl 29002 `"Apetatitlán de Antonio Carvajal"', add
label define mx10a_migmuni5_lbl 29003 `"Atlangatepec"', add
label define mx10a_migmuni5_lbl 29004 `"Atltzayanca"', add
label define mx10a_migmuni5_lbl 29005 `"Apizaco"', add
label define mx10a_migmuni5_lbl 29006 `"Calpulalpan"', add
label define mx10a_migmuni5_lbl 29007 `"El Carmen Tequexquitla"', add
label define mx10a_migmuni5_lbl 29008 `"Cuapiaxtla"', add
label define mx10a_migmuni5_lbl 29009 `"Cuaxomulco"', add
label define mx10a_migmuni5_lbl 29010 `"Chiautempan"', add
label define mx10a_migmuni5_lbl 29011 `"Muñoz de Domingo Arenas"', add
label define mx10a_migmuni5_lbl 29012 `"Españita"', add
label define mx10a_migmuni5_lbl 29013 `"Huamantla"', add
label define mx10a_migmuni5_lbl 29014 `"Hueyotlipan"', add
label define mx10a_migmuni5_lbl 29015 `"Ixtacuixtla de Mariano Matamoros"', add
label define mx10a_migmuni5_lbl 29016 `"Ixtenco"', add
label define mx10a_migmuni5_lbl 29017 `"Mazatecochco de José María Morelos"', add
label define mx10a_migmuni5_lbl 29018 `"Contla de Juan Cuamatzi"', add
label define mx10a_migmuni5_lbl 29019 `"Tepetitla de Lardizábal"', add
label define mx10a_migmuni5_lbl 29020 `"Sanctórum de Lázaro Cárdenas"', add
label define mx10a_migmuni5_lbl 29021 `"Nanacamilpa de Mariano Arista"', add
label define mx10a_migmuni5_lbl 29022 `"Acuamanala de Miguel Hidalgo"', add
label define mx10a_migmuni5_lbl 29023 `"Natívitas"', add
label define mx10a_migmuni5_lbl 29024 `"Panotla"', add
label define mx10a_migmuni5_lbl 29025 `"San Pablo del Monte"', add
label define mx10a_migmuni5_lbl 29026 `"Santa Cruz Tlaxcala"', add
label define mx10a_migmuni5_lbl 29027 `"Tenancingo"', add
label define mx10a_migmuni5_lbl 29028 `"Teolocholco"', add
label define mx10a_migmuni5_lbl 29029 `"Tepeyanco"', add
label define mx10a_migmuni5_lbl 29030 `"Terrenate"', add
label define mx10a_migmuni5_lbl 29031 `"Tetla de la Solidaridad"', add
label define mx10a_migmuni5_lbl 29032 `"Tetlatlahuca"', add
label define mx10a_migmuni5_lbl 29033 `"Tlaxcala"', add
label define mx10a_migmuni5_lbl 29034 `"Tlaxco"', add
label define mx10a_migmuni5_lbl 29035 `"Tocatlán"', add
label define mx10a_migmuni5_lbl 29036 `"Totolac"', add
label define mx10a_migmuni5_lbl 29037 `"Ziltlaltépec de Trinidad Sánchez Santos"', add
label define mx10a_migmuni5_lbl 29038 `"Tzompantepec"', add
label define mx10a_migmuni5_lbl 29039 `"Xaloztoc"', add
label define mx10a_migmuni5_lbl 29040 `"Xaltocan"', add
label define mx10a_migmuni5_lbl 29041 `"Papalotla de Xicohténcatl"', add
label define mx10a_migmuni5_lbl 29042 `"Xicohtzinco"', add
label define mx10a_migmuni5_lbl 29043 `"Yauhquemehcan"', add
label define mx10a_migmuni5_lbl 29044 `"Zacatelco"', add
label define mx10a_migmuni5_lbl 29045 `"Benito Juárez"', add
label define mx10a_migmuni5_lbl 29046 `"Emiliano Zapata"', add
label define mx10a_migmuni5_lbl 29047 `"Lázaro Cárdenas"', add
label define mx10a_migmuni5_lbl 29048 `"La Magdalena Tlaltelulco"', add
label define mx10a_migmuni5_lbl 29049 `"San Damián Texóloc"', add
label define mx10a_migmuni5_lbl 29050 `"San Francisco Tetlanohcan"', add
label define mx10a_migmuni5_lbl 29051 `"San Jerónimo Zacualpan"', add
label define mx10a_migmuni5_lbl 29052 `"San José Teacalco"', add
label define mx10a_migmuni5_lbl 29053 `"San Juan Huactzinco"', add
label define mx10a_migmuni5_lbl 29054 `"San Lorenzo Axocomanitla"', add
label define mx10a_migmuni5_lbl 29055 `"San Lucas Tecopilco"', add
label define mx10a_migmuni5_lbl 29056 `"Santa Ana Nopalucan"', add
label define mx10a_migmuni5_lbl 29057 `"Santa Apolonia Teacalco"', add
label define mx10a_migmuni5_lbl 29058 `"Santa Catarina Ayometla"', add
label define mx10a_migmuni5_lbl 29059 `"Santa Cruz Quilehtla"', add
label define mx10a_migmuni5_lbl 29060 `"Santa Isabel Xiloxoxtla"', add
label define mx10a_migmuni5_lbl 29999 `"Tlaxcala entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 30001 `"Acajete"', add
label define mx10a_migmuni5_lbl 30002 `"Acatlán"', add
label define mx10a_migmuni5_lbl 30003 `"Acayucan"', add
label define mx10a_migmuni5_lbl 30004 `"Actopan"', add
label define mx10a_migmuni5_lbl 30005 `"Acula"', add
label define mx10a_migmuni5_lbl 30006 `"Acultzingo"', add
label define mx10a_migmuni5_lbl 30007 `"Camarón de Tejeda"', add
label define mx10a_migmuni5_lbl 30008 `"Alpatláhuac"', add
label define mx10a_migmuni5_lbl 30009 `"Alto Lucero de Gutiérrez Barrios"', add
label define mx10a_migmuni5_lbl 30010 `"Altotonga"', add
label define mx10a_migmuni5_lbl 30011 `"Alvarado"', add
label define mx10a_migmuni5_lbl 30012 `"Amatitlán"', add
label define mx10a_migmuni5_lbl 30013 `"Naranjos Amatlán"', add
label define mx10a_migmuni5_lbl 30014 `"Amatlán de los Reyes"', add
label define mx10a_migmuni5_lbl 30015 `"Angel R. Cabada"', add
label define mx10a_migmuni5_lbl 30016 `"La Antigua"', add
label define mx10a_migmuni5_lbl 30017 `"Apazapan"', add
label define mx10a_migmuni5_lbl 30018 `"Aquila"', add
label define mx10a_migmuni5_lbl 30019 `"Astacinga"', add
label define mx10a_migmuni5_lbl 30020 `"Atlahuilco"', add
label define mx10a_migmuni5_lbl 30021 `"Atoyac"', add
label define mx10a_migmuni5_lbl 30022 `"Atzacan"', add
label define mx10a_migmuni5_lbl 30023 `"Atzalan"', add
label define mx10a_migmuni5_lbl 30024 `"Tlaltetela"', add
label define mx10a_migmuni5_lbl 30025 `"Ayahualulco"', add
label define mx10a_migmuni5_lbl 30026 `"Banderilla"', add
label define mx10a_migmuni5_lbl 30027 `"Benito Juárez"', add
label define mx10a_migmuni5_lbl 30028 `"Boca del Río"', add
label define mx10a_migmuni5_lbl 30029 `"Calcahualco"', add
label define mx10a_migmuni5_lbl 30030 `"Camerino Z. Mendoza"', add
label define mx10a_migmuni5_lbl 30031 `"Carrillo Puerto"', add
label define mx10a_migmuni5_lbl 30032 `"Catemaco"', add
label define mx10a_migmuni5_lbl 30033 `"Cazones de Herrera"', add
label define mx10a_migmuni5_lbl 30034 `"Cerro Azul"', add
label define mx10a_migmuni5_lbl 30035 `"Citlaltépetl"', add
label define mx10a_migmuni5_lbl 30036 `"Coacoatzintla"', add
label define mx10a_migmuni5_lbl 30037 `"Coahuitlán"', add
label define mx10a_migmuni5_lbl 30038 `"Coatepec"', add
label define mx10a_migmuni5_lbl 30039 `"Coatzacoalcos"', add
label define mx10a_migmuni5_lbl 30040 `"Coatzintla"', add
label define mx10a_migmuni5_lbl 30041 `"Coetzala"', add
label define mx10a_migmuni5_lbl 30042 `"Colipa"', add
label define mx10a_migmuni5_lbl 30043 `"Comapa"', add
label define mx10a_migmuni5_lbl 30044 `"Córdoba"', add
label define mx10a_migmuni5_lbl 30045 `"Cosamaloapan de Carpio"', add
label define mx10a_migmuni5_lbl 30046 `"Cosautlán de Carvajal"', add
label define mx10a_migmuni5_lbl 30047 `"Coscomatepec"', add
label define mx10a_migmuni5_lbl 30048 `"Cosoleacaque"', add
label define mx10a_migmuni5_lbl 30049 `"Cotaxtla"', add
label define mx10a_migmuni5_lbl 30050 `"Coxquihui"', add
label define mx10a_migmuni5_lbl 30051 `"Coyutla"', add
label define mx10a_migmuni5_lbl 30052 `"Cuichapa"', add
label define mx10a_migmuni5_lbl 30053 `"Cuitláhuac"', add
label define mx10a_migmuni5_lbl 30054 `"Chacaltianguis"', add
label define mx10a_migmuni5_lbl 30055 `"Chalma"', add
label define mx10a_migmuni5_lbl 30056 `"Chiconamel"', add
label define mx10a_migmuni5_lbl 30057 `"Chiconquiaco"', add
label define mx10a_migmuni5_lbl 30058 `"Chicontepec"', add
label define mx10a_migmuni5_lbl 30059 `"Chinameca"', add
label define mx10a_migmuni5_lbl 30060 `"Chinampa de Gorostiza"', add
label define mx10a_migmuni5_lbl 30061 `"Las Choapas"', add
label define mx10a_migmuni5_lbl 30062 `"Chocamán"', add
label define mx10a_migmuni5_lbl 30063 `"Chontla"', add
label define mx10a_migmuni5_lbl 30064 `"Chumatlán"', add
label define mx10a_migmuni5_lbl 30065 `"Emiliano Zapata"', add
label define mx10a_migmuni5_lbl 30066 `"Espinal"', add
label define mx10a_migmuni5_lbl 30067 `"Filomeno Mata"', add
label define mx10a_migmuni5_lbl 30068 `"Fortín"', add
label define mx10a_migmuni5_lbl 30069 `"Gutiérrez Zamora"', add
label define mx10a_migmuni5_lbl 30070 `"Hidalgotitlán"', add
label define mx10a_migmuni5_lbl 30071 `"Huatusco"', add
label define mx10a_migmuni5_lbl 30072 `"Huayacocotla"', add
label define mx10a_migmuni5_lbl 30073 `"Hueyapan de Ocampo"', add
label define mx10a_migmuni5_lbl 30074 `"Huiloapan de Cuauhtémoc"', add
label define mx10a_migmuni5_lbl 30075 `"Ignacio de la Llave"', add
label define mx10a_migmuni5_lbl 30076 `"Ilamatlán"', add
label define mx10a_migmuni5_lbl 30077 `"Isla"', add
label define mx10a_migmuni5_lbl 30078 `"Ixcatepec"', add
label define mx10a_migmuni5_lbl 30079 `"Ixhuacán de los Reyes"', add
label define mx10a_migmuni5_lbl 30080 `"Ixhuatlán del Café"', add
label define mx10a_migmuni5_lbl 30081 `"Ixhuatlancillo"', add
label define mx10a_migmuni5_lbl 30082 `"Ixhuatlán del Sureste"', add
label define mx10a_migmuni5_lbl 30083 `"Ixhuatlán de Madero"', add
label define mx10a_migmuni5_lbl 30084 `"Ixmatlahuacan"', add
label define mx10a_migmuni5_lbl 30085 `"Ixtaczoquitlán"', add
label define mx10a_migmuni5_lbl 30086 `"Jalacingo"', add
label define mx10a_migmuni5_lbl 30087 `"Xalapa"', add
label define mx10a_migmuni5_lbl 30088 `"Jalcomulco"', add
label define mx10a_migmuni5_lbl 30089 `"Jáltipan"', add
label define mx10a_migmuni5_lbl 30090 `"Jamapa"', add
label define mx10a_migmuni5_lbl 30091 `"Jesús Carranza"', add
label define mx10a_migmuni5_lbl 30092 `"Xico"', add
label define mx10a_migmuni5_lbl 30093 `"Jilotepec"', add
label define mx10a_migmuni5_lbl 30094 `"Juan Rodríguez Clara"', add
label define mx10a_migmuni5_lbl 30095 `"Juchique de Ferrer"', add
label define mx10a_migmuni5_lbl 30096 `"Landero y Coss"', add
label define mx10a_migmuni5_lbl 30097 `"Lerdo de Tejada"', add
label define mx10a_migmuni5_lbl 30098 `"Magdalena"', add
label define mx10a_migmuni5_lbl 30099 `"Maltrata"', add
label define mx10a_migmuni5_lbl 30100 `"Manlio Fabio Altamirano"', add
label define mx10a_migmuni5_lbl 30101 `"Mariano Escobedo"', add
label define mx10a_migmuni5_lbl 30102 `"Martínez de la Torre"', add
label define mx10a_migmuni5_lbl 30103 `"Mecatlán"', add
label define mx10a_migmuni5_lbl 30104 `"Mecayapan"', add
label define mx10a_migmuni5_lbl 30105 `"Medellín"', add
label define mx10a_migmuni5_lbl 30106 `"Miahuatlán"', add
label define mx10a_migmuni5_lbl 30107 `"Las Minas"', add
label define mx10a_migmuni5_lbl 30108 `"Minatitlán"', add
label define mx10a_migmuni5_lbl 30109 `"Misantla"', add
label define mx10a_migmuni5_lbl 30110 `"Mixtla de Altamirano"', add
label define mx10a_migmuni5_lbl 30111 `"Moloacán"', add
label define mx10a_migmuni5_lbl 30112 `"Naolinco"', add
label define mx10a_migmuni5_lbl 30113 `"Naranjal"', add
label define mx10a_migmuni5_lbl 30114 `"Nautla"', add
label define mx10a_migmuni5_lbl 30115 `"Nogales"', add
label define mx10a_migmuni5_lbl 30116 `"Oluta"', add
label define mx10a_migmuni5_lbl 30117 `"Omealca"', add
label define mx10a_migmuni5_lbl 30118 `"Orizaba"', add
label define mx10a_migmuni5_lbl 30119 `"Otatitlán"', add
label define mx10a_migmuni5_lbl 30120 `"Oteapan"', add
label define mx10a_migmuni5_lbl 30121 `"Ozuluama de Mascareñas"', add
label define mx10a_migmuni5_lbl 30122 `"Pajapan"', add
label define mx10a_migmuni5_lbl 30123 `"Pánuco"', add
label define mx10a_migmuni5_lbl 30124 `"Papantla"', add
label define mx10a_migmuni5_lbl 30125 `"Paso del Macho"', add
label define mx10a_migmuni5_lbl 30126 `"Paso de Ovejas"', add
label define mx10a_migmuni5_lbl 30127 `"La Perla"', add
label define mx10a_migmuni5_lbl 30128 `"Perote"', add
label define mx10a_migmuni5_lbl 30129 `"Platón Sánchez"', add
label define mx10a_migmuni5_lbl 30130 `"Playa Vicente"', add
label define mx10a_migmuni5_lbl 30131 `"Poza Rica de Hidalgo"', add
label define mx10a_migmuni5_lbl 30132 `"Las Vigas de Ramírez"', add
label define mx10a_migmuni5_lbl 30133 `"Pueblo Viejo"', add
label define mx10a_migmuni5_lbl 30134 `"Puente Nacional"', add
label define mx10a_migmuni5_lbl 30135 `"Rafael Delgado"', add
label define mx10a_migmuni5_lbl 30136 `"Rafael Lucio"', add
label define mx10a_migmuni5_lbl 30137 `"Los Reyes"', add
label define mx10a_migmuni5_lbl 30138 `"Río Blanco"', add
label define mx10a_migmuni5_lbl 30139 `"Saltabarranca"', add
label define mx10a_migmuni5_lbl 30140 `"San Andrés Tenejapan"', add
label define mx10a_migmuni5_lbl 30141 `"San Andrés Tuxtla"', add
label define mx10a_migmuni5_lbl 30142 `"San Juan Evangelista"', add
label define mx10a_migmuni5_lbl 30143 `"Santiago Tuxtla"', add
label define mx10a_migmuni5_lbl 30144 `"Sayula de Alemán"', add
label define mx10a_migmuni5_lbl 30145 `"Soconusco"', add
label define mx10a_migmuni5_lbl 30146 `"Sochiapa"', add
label define mx10a_migmuni5_lbl 30147 `"Soledad Atzompa"', add
label define mx10a_migmuni5_lbl 30148 `"Soledad de Doblado"', add
label define mx10a_migmuni5_lbl 30149 `"Soteapan"', add
label define mx10a_migmuni5_lbl 30150 `"Tamalín"', add
label define mx10a_migmuni5_lbl 30151 `"Tamiahua"', add
label define mx10a_migmuni5_lbl 30152 `"Tampico Alto"', add
label define mx10a_migmuni5_lbl 30153 `"Tancoco"', add
label define mx10a_migmuni5_lbl 30154 `"Tantima"', add
label define mx10a_migmuni5_lbl 30155 `"Tantoyuca"', add
label define mx10a_migmuni5_lbl 30156 `"Tatatila"', add
label define mx10a_migmuni5_lbl 30157 `"Castillo de Teayo"', add
label define mx10a_migmuni5_lbl 30158 `"Tecolutla"', add
label define mx10a_migmuni5_lbl 30159 `"Tehuipango"', add
label define mx10a_migmuni5_lbl 30160 `"Álamo Temapache"', add
label define mx10a_migmuni5_lbl 30161 `"Tempoal"', add
label define mx10a_migmuni5_lbl 30162 `"Tenampa"', add
label define mx10a_migmuni5_lbl 30163 `"Tenochtitlán"', add
label define mx10a_migmuni5_lbl 30164 `"Teocelo"', add
label define mx10a_migmuni5_lbl 30165 `"Tepatlaxco"', add
label define mx10a_migmuni5_lbl 30166 `"Tepetlán"', add
label define mx10a_migmuni5_lbl 30167 `"Tepetzintla"', add
label define mx10a_migmuni5_lbl 30168 `"Tequila"', add
label define mx10a_migmuni5_lbl 30169 `"José Azueta"', add
label define mx10a_migmuni5_lbl 30170 `"Texcatepec"', add
label define mx10a_migmuni5_lbl 30171 `"Texhuacán"', add
label define mx10a_migmuni5_lbl 30172 `"Texistepec"', add
label define mx10a_migmuni5_lbl 30173 `"Tezonapa"', add
label define mx10a_migmuni5_lbl 30174 `"Tierra Blanca"', add
label define mx10a_migmuni5_lbl 30175 `"Tihuatlán"', add
label define mx10a_migmuni5_lbl 30176 `"Tlacojalpan"', add
label define mx10a_migmuni5_lbl 30177 `"Tlacolulan"', add
label define mx10a_migmuni5_lbl 30178 `"Tlacotalpan"', add
label define mx10a_migmuni5_lbl 30179 `"Tlacotepec de Mejía"', add
label define mx10a_migmuni5_lbl 30180 `"Tlachichilco"', add
label define mx10a_migmuni5_lbl 30181 `"Tlalixcoyan"', add
label define mx10a_migmuni5_lbl 30182 `"Tlalnelhuayocan"', add
label define mx10a_migmuni5_lbl 30183 `"Tlapacoyan"', add
label define mx10a_migmuni5_lbl 30184 `"Tlaquilpa"', add
label define mx10a_migmuni5_lbl 30185 `"Tlilapan"', add
label define mx10a_migmuni5_lbl 30186 `"Tomatlán"', add
label define mx10a_migmuni5_lbl 30187 `"Tonayán"', add
label define mx10a_migmuni5_lbl 30188 `"Totutla"', add
label define mx10a_migmuni5_lbl 30189 `"Tuxpan"', add
label define mx10a_migmuni5_lbl 30190 `"Tuxtilla"', add
label define mx10a_migmuni5_lbl 30191 `"Ursulo Galván"', add
label define mx10a_migmuni5_lbl 30192 `"Vega de Alatorre"', add
label define mx10a_migmuni5_lbl 30193 `"Veracruz"', add
label define mx10a_migmuni5_lbl 30194 `"Villa Aldama"', add
label define mx10a_migmuni5_lbl 30195 `"Xoxocotla"', add
label define mx10a_migmuni5_lbl 30196 `"Yanga"', add
label define mx10a_migmuni5_lbl 30197 `"Yecuatla"', add
label define mx10a_migmuni5_lbl 30198 `"Zacualpan"', add
label define mx10a_migmuni5_lbl 30199 `"Zaragoza"', add
label define mx10a_migmuni5_lbl 30200 `"Zentla"', add
label define mx10a_migmuni5_lbl 30201 `"Zongolica"', add
label define mx10a_migmuni5_lbl 30202 `"Zontecomatlán de López y Fuentes"', add
label define mx10a_migmuni5_lbl 30203 `"Zozocolco de Hidalgo"', add
label define mx10a_migmuni5_lbl 30204 `"Agua Dulce"', add
label define mx10a_migmuni5_lbl 30205 `"El Higo"', add
label define mx10a_migmuni5_lbl 30206 `"Nanchital de Lázaro Cárdenas del Río"', add
label define mx10a_migmuni5_lbl 30207 `"Tres Valles"', add
label define mx10a_migmuni5_lbl 30208 `"Carlos A. Carrillo"', add
label define mx10a_migmuni5_lbl 30209 `"Tatahuicapan de Juárez"', add
label define mx10a_migmuni5_lbl 30210 `"Uxpanapa"', add
label define mx10a_migmuni5_lbl 30211 `"San Rafael"', add
label define mx10a_migmuni5_lbl 30212 `"Santiago Sochiapan"', add
label define mx10a_migmuni5_lbl 30999 `"Veracruz de Ignacio de la Llave entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 31001 `"Abalá"', add
label define mx10a_migmuni5_lbl 31002 `"Acanceh"', add
label define mx10a_migmuni5_lbl 31003 `"Akil"', add
label define mx10a_migmuni5_lbl 31004 `"Baca"', add
label define mx10a_migmuni5_lbl 31005 `"Bokobá"', add
label define mx10a_migmuni5_lbl 31006 `"Buctzotz"', add
label define mx10a_migmuni5_lbl 31007 `"Cacalchén"', add
label define mx10a_migmuni5_lbl 31008 `"Calotmul"', add
label define mx10a_migmuni5_lbl 31009 `"Cansahcab"', add
label define mx10a_migmuni5_lbl 31010 `"Cantamayec"', add
label define mx10a_migmuni5_lbl 31011 `"Celestún"', add
label define mx10a_migmuni5_lbl 31012 `"Cenotillo"', add
label define mx10a_migmuni5_lbl 31013 `"Conkal"', add
label define mx10a_migmuni5_lbl 31014 `"Cuncunul"', add
label define mx10a_migmuni5_lbl 31015 `"Cuzamá"', add
label define mx10a_migmuni5_lbl 31016 `"Chacsinkín"', add
label define mx10a_migmuni5_lbl 31017 `"Chankom"', add
label define mx10a_migmuni5_lbl 31018 `"Chapab"', add
label define mx10a_migmuni5_lbl 31019 `"Chemax"', add
label define mx10a_migmuni5_lbl 31020 `"Chicxulub Pueblo"', add
label define mx10a_migmuni5_lbl 31021 `"Chichimilá"', add
label define mx10a_migmuni5_lbl 31022 `"Chikindzonot"', add
label define mx10a_migmuni5_lbl 31023 `"Chocholá"', add
label define mx10a_migmuni5_lbl 31024 `"Chumayel"', add
label define mx10a_migmuni5_lbl 31025 `"Dzán"', add
label define mx10a_migmuni5_lbl 31026 `"Dzemul"', add
label define mx10a_migmuni5_lbl 31027 `"Dzidzantún"', add
label define mx10a_migmuni5_lbl 31028 `"Dzilam de Bravo"', add
label define mx10a_migmuni5_lbl 31029 `"Dzilam González"', add
label define mx10a_migmuni5_lbl 31030 `"Dzitás"', add
label define mx10a_migmuni5_lbl 31031 `"Dzoncauich"', add
label define mx10a_migmuni5_lbl 31032 `"Espita"', add
label define mx10a_migmuni5_lbl 31033 `"Halachó"', add
label define mx10a_migmuni5_lbl 31034 `"Hocabá"', add
label define mx10a_migmuni5_lbl 31035 `"Hoctún"', add
label define mx10a_migmuni5_lbl 31036 `"Homún"', add
label define mx10a_migmuni5_lbl 31037 `"Huhí"', add
label define mx10a_migmuni5_lbl 31038 `"Hunucmá"', add
label define mx10a_migmuni5_lbl 31039 `"Ixil"', add
label define mx10a_migmuni5_lbl 31040 `"Izamal"', add
label define mx10a_migmuni5_lbl 31041 `"Kanasín"', add
label define mx10a_migmuni5_lbl 31042 `"Kantunil"', add
label define mx10a_migmuni5_lbl 31043 `"Kaua"', add
label define mx10a_migmuni5_lbl 31044 `"Kinchil"', add
label define mx10a_migmuni5_lbl 31045 `"Kopomá"', add
label define mx10a_migmuni5_lbl 31046 `"Mama"', add
label define mx10a_migmuni5_lbl 31047 `"Maní"', add
label define mx10a_migmuni5_lbl 31048 `"Maxcanú"', add
label define mx10a_migmuni5_lbl 31049 `"Mayapán"', add
label define mx10a_migmuni5_lbl 31050 `"Mérida"', add
label define mx10a_migmuni5_lbl 31051 `"Mocochá"', add
label define mx10a_migmuni5_lbl 31052 `"Motul"', add
label define mx10a_migmuni5_lbl 31053 `"Muna"', add
label define mx10a_migmuni5_lbl 31054 `"Muxupip"', add
label define mx10a_migmuni5_lbl 31055 `"Opichén"', add
label define mx10a_migmuni5_lbl 31056 `"Oxkutzcab"', add
label define mx10a_migmuni5_lbl 31057 `"Panabá"', add
label define mx10a_migmuni5_lbl 31058 `"Peto"', add
label define mx10a_migmuni5_lbl 31059 `"Progreso"', add
label define mx10a_migmuni5_lbl 31060 `"Quintana Roo"', add
label define mx10a_migmuni5_lbl 31061 `"Río Lagartos"', add
label define mx10a_migmuni5_lbl 31062 `"Sacalum"', add
label define mx10a_migmuni5_lbl 31063 `"Samahil"', add
label define mx10a_migmuni5_lbl 31064 `"Sanahcat"', add
label define mx10a_migmuni5_lbl 31065 `"San Felipe"', add
label define mx10a_migmuni5_lbl 31066 `"Santa Elena"', add
label define mx10a_migmuni5_lbl 31067 `"Seyé"', add
label define mx10a_migmuni5_lbl 31068 `"Sinanché"', add
label define mx10a_migmuni5_lbl 31069 `"Sotuta"', add
label define mx10a_migmuni5_lbl 31070 `"Sucilá"', add
label define mx10a_migmuni5_lbl 31071 `"Sudzal"', add
label define mx10a_migmuni5_lbl 31072 `"Suma"', add
label define mx10a_migmuni5_lbl 31073 `"Tahdziú"', add
label define mx10a_migmuni5_lbl 31074 `"Tahmek"', add
label define mx10a_migmuni5_lbl 31075 `"Teabo"', add
label define mx10a_migmuni5_lbl 31076 `"Tecoh"', add
label define mx10a_migmuni5_lbl 31077 `"Tekal de Venegas"', add
label define mx10a_migmuni5_lbl 31078 `"Tekantó"', add
label define mx10a_migmuni5_lbl 31079 `"Tekax"', add
label define mx10a_migmuni5_lbl 31080 `"Tekit"', add
label define mx10a_migmuni5_lbl 31081 `"Tekom"', add
label define mx10a_migmuni5_lbl 31082 `"Telchac Pueblo"', add
label define mx10a_migmuni5_lbl 31083 `"Telchac Puerto"', add
label define mx10a_migmuni5_lbl 31084 `"Temax"', add
label define mx10a_migmuni5_lbl 31085 `"Temozón"', add
label define mx10a_migmuni5_lbl 31086 `"Tepakán"', add
label define mx10a_migmuni5_lbl 31087 `"Tetiz"', add
label define mx10a_migmuni5_lbl 31088 `"Teya"', add
label define mx10a_migmuni5_lbl 31089 `"Ticul"', add
label define mx10a_migmuni5_lbl 31090 `"Timucuy"', add
label define mx10a_migmuni5_lbl 31091 `"Tinum"', add
label define mx10a_migmuni5_lbl 31092 `"Tixcacalcupul"', add
label define mx10a_migmuni5_lbl 31093 `"Tixkokob"', add
label define mx10a_migmuni5_lbl 31094 `"Tixmehuac"', add
label define mx10a_migmuni5_lbl 31095 `"Tixpéhual"', add
label define mx10a_migmuni5_lbl 31096 `"Tizimín"', add
label define mx10a_migmuni5_lbl 31097 `"Tunkás"', add
label define mx10a_migmuni5_lbl 31098 `"Tzucacab"', add
label define mx10a_migmuni5_lbl 31099 `"Uayma"', add
label define mx10a_migmuni5_lbl 31100 `"Ucú"', add
label define mx10a_migmuni5_lbl 31101 `"Umán"', add
label define mx10a_migmuni5_lbl 31102 `"Valladolid"', add
label define mx10a_migmuni5_lbl 31103 `"Xocchel"', add
label define mx10a_migmuni5_lbl 31104 `"Yaxcabá"', add
label define mx10a_migmuni5_lbl 31105 `"Yaxkukul"', add
label define mx10a_migmuni5_lbl 31106 `"Yobaín"', add
label define mx10a_migmuni5_lbl 31999 `"Yucatán entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 32001 `"Apozol"', add
label define mx10a_migmuni5_lbl 32002 `"Apulco"', add
label define mx10a_migmuni5_lbl 32003 `"Atolinga"', add
label define mx10a_migmuni5_lbl 32004 `"Benito Juárez"', add
label define mx10a_migmuni5_lbl 32005 `"Calera"', add
label define mx10a_migmuni5_lbl 32006 `"Cañitas de Felipe Pescador"', add
label define mx10a_migmuni5_lbl 32007 `"Concepción del Oro"', add
label define mx10a_migmuni5_lbl 32008 `"Cuauhtémoc"', add
label define mx10a_migmuni5_lbl 32009 `"Chalchihuites"', add
label define mx10a_migmuni5_lbl 32010 `"Fresnillo"', add
label define mx10a_migmuni5_lbl 32011 `"Trinidad García de la Cadena"', add
label define mx10a_migmuni5_lbl 32012 `"Genaro Codina"', add
label define mx10a_migmuni5_lbl 32013 `"General Enrique Estrada"', add
label define mx10a_migmuni5_lbl 32014 `"General Francisco R. Murguía"', add
label define mx10a_migmuni5_lbl 32015 `"El Plateado de Joaquín Amaro"', add
label define mx10a_migmuni5_lbl 32016 `"General Pánfilo Natera"', add
label define mx10a_migmuni5_lbl 32017 `"Guadalupe"', add
label define mx10a_migmuni5_lbl 32018 `"Huanusco"', add
label define mx10a_migmuni5_lbl 32019 `"Jalpa"', add
label define mx10a_migmuni5_lbl 32020 `"Jerez"', add
label define mx10a_migmuni5_lbl 32021 `"Jiménez del Teul"', add
label define mx10a_migmuni5_lbl 32022 `"Juan Aldama"', add
label define mx10a_migmuni5_lbl 32023 `"Juchipila"', add
label define mx10a_migmuni5_lbl 32024 `"Loreto"', add
label define mx10a_migmuni5_lbl 32025 `"Luis Moya"', add
label define mx10a_migmuni5_lbl 32026 `"Mazapil"', add
label define mx10a_migmuni5_lbl 32027 `"Melchor Ocampo"', add
label define mx10a_migmuni5_lbl 32028 `"Mezquital del Oro"', add
label define mx10a_migmuni5_lbl 32029 `"Miguel Auza"', add
label define mx10a_migmuni5_lbl 32030 `"Momax"', add
label define mx10a_migmuni5_lbl 32031 `"Monte Escobedo"', add
label define mx10a_migmuni5_lbl 32032 `"Morelos"', add
label define mx10a_migmuni5_lbl 32033 `"Moyahua de Estrada"', add
label define mx10a_migmuni5_lbl 32034 `"Nochistlán de Mejía"', add
label define mx10a_migmuni5_lbl 32035 `"Noria de Ángeles"', add
label define mx10a_migmuni5_lbl 32036 `"Ojocaliente"', add
label define mx10a_migmuni5_lbl 32037 `"Pánuco"', add
label define mx10a_migmuni5_lbl 32038 `"Pinos"', add
label define mx10a_migmuni5_lbl 32039 `"Río Grande"', add
label define mx10a_migmuni5_lbl 32040 `"Sain Alto"', add
label define mx10a_migmuni5_lbl 32041 `"El Salvador"', add
label define mx10a_migmuni5_lbl 32042 `"Sombrerete"', add
label define mx10a_migmuni5_lbl 32043 `"Susticacán"', add
label define mx10a_migmuni5_lbl 32044 `"Tabasco"', add
label define mx10a_migmuni5_lbl 32045 `"Tepechitlán"', add
label define mx10a_migmuni5_lbl 32046 `"Tepetongo"', add
label define mx10a_migmuni5_lbl 32047 `"Teúl de González Ortega"', add
label define mx10a_migmuni5_lbl 32048 `"Tlaltenango de Sánchez Román"', add
label define mx10a_migmuni5_lbl 32049 `"Valparaíso"', add
label define mx10a_migmuni5_lbl 32050 `"Vetagrande"', add
label define mx10a_migmuni5_lbl 32051 `"Villa de Cos"', add
label define mx10a_migmuni5_lbl 32052 `"Villa García"', add
label define mx10a_migmuni5_lbl 32053 `"Villa González Ortega"', add
label define mx10a_migmuni5_lbl 32054 `"Villa Hidalgo"', add
label define mx10a_migmuni5_lbl 32055 `"Villanueva"', add
label define mx10a_migmuni5_lbl 32056 `"Zacatecas"', add
label define mx10a_migmuni5_lbl 32057 `"Trancoso"', add
label define mx10a_migmuni5_lbl 32058 `"Santa María de la Paz"', add
label define mx10a_migmuni5_lbl 32999 `"Zacatecas entity, unknown municipality"', add
label define mx10a_migmuni5_lbl 99997 `"Abroad"', add
label define mx10a_migmuni5_lbl 99998 `"Unknown"', add
label define mx10a_migmuni5_lbl 99999 `"NIU (not in universe)"', add
label values mx10a_migmuni5 mx10a_migmuni5_lbl

label define mx10a_marst_lbl 01 `"Free union"'
label define mx10a_marst_lbl 02 `"Separated"', add
label define mx10a_marst_lbl 03 `"Divorced"', add
label define mx10a_marst_lbl 04 `"Widow"', add
label define mx10a_marst_lbl 05 `"Married, only according to civil law"', add
label define mx10a_marst_lbl 06 `"Married, only according to religious law"', add
label define mx10a_marst_lbl 07 `"Married, both according to religious and civil law"', add
label define mx10a_marst_lbl 08 `"Single"', add
label define mx10a_marst_lbl 98 `"Unknown"', add
label define mx10a_marst_lbl 99 `"NIU (not in universe)"', add
label values mx10a_marst mx10a_marst_lbl

label define mx10a_sploc_lbl 01 `"1"'
label define mx10a_sploc_lbl 02 `"2"', add
label define mx10a_sploc_lbl 03 `"3"', add
label define mx10a_sploc_lbl 04 `"4"', add
label define mx10a_sploc_lbl 05 `"5"', add
label define mx10a_sploc_lbl 06 `"6"', add
label define mx10a_sploc_lbl 07 `"7"', add
label define mx10a_sploc_lbl 08 `"8"', add
label define mx10a_sploc_lbl 09 `"9"', add
label define mx10a_sploc_lbl 10 `"10"', add
label define mx10a_sploc_lbl 11 `"11"', add
label define mx10a_sploc_lbl 12 `"12"', add
label define mx10a_sploc_lbl 13 `"13"', add
label define mx10a_sploc_lbl 14 `"14"', add
label define mx10a_sploc_lbl 15 `"15"', add
label define mx10a_sploc_lbl 16 `"16"', add
label define mx10a_sploc_lbl 17 `"17"', add
label define mx10a_sploc_lbl 18 `"18"', add
label define mx10a_sploc_lbl 19 `"19"', add
label define mx10a_sploc_lbl 20 `"20"', add
label define mx10a_sploc_lbl 21 `"21"', add
label define mx10a_sploc_lbl 22 `"22"', add
label define mx10a_sploc_lbl 23 `"23"', add
label define mx10a_sploc_lbl 24 `"24"', add
label define mx10a_sploc_lbl 25 `"25"', add
label define mx10a_sploc_lbl 26 `"26"', add
label define mx10a_sploc_lbl 27 `"27"', add
label define mx10a_sploc_lbl 28 `"28"', add
label define mx10a_sploc_lbl 29 `"29"', add
label define mx10a_sploc_lbl 30 `"30"', add
label define mx10a_sploc_lbl 31 `"31"', add
label define mx10a_sploc_lbl 32 `"32"', add
label define mx10a_sploc_lbl 33 `"33"', add
label define mx10a_sploc_lbl 34 `"34"', add
label define mx10a_sploc_lbl 35 `"35"', add
label define mx10a_sploc_lbl 36 `"36"', add
label define mx10a_sploc_lbl 37 `"37"', add
label define mx10a_sploc_lbl 38 `"38"', add
label define mx10a_sploc_lbl 39 `"39"', add
label define mx10a_sploc_lbl 40 `"40"', add
label define mx10a_sploc_lbl 41 `"41"', add
label define mx10a_sploc_lbl 42 `"42"', add
label define mx10a_sploc_lbl 43 `"43"', add
label define mx10a_sploc_lbl 44 `"44"', add
label define mx10a_sploc_lbl 45 `"45"', add
label define mx10a_sploc_lbl 46 `"46"', add
label define mx10a_sploc_lbl 47 `"47"', add
label define mx10a_sploc_lbl 48 `"48"', add
label define mx10a_sploc_lbl 49 `"49"', add
label define mx10a_sploc_lbl 50 `"50"', add
label define mx10a_sploc_lbl 51 `"51"', add
label define mx10a_sploc_lbl 52 `"52"', add
label define mx10a_sploc_lbl 53 `"53"', add
label define mx10a_sploc_lbl 54 `"54"', add
label define mx10a_sploc_lbl 55 `"55"', add
label define mx10a_sploc_lbl 56 `"56"', add
label define mx10a_sploc_lbl 57 `"57"', add
label define mx10a_sploc_lbl 58 `"58"', add
label define mx10a_sploc_lbl 59 `"59"', add
label define mx10a_sploc_lbl 60 `"60"', add
label define mx10a_sploc_lbl 61 `"61"', add
label define mx10a_sploc_lbl 62 `"62"', add
label define mx10a_sploc_lbl 63 `"63"', add
label define mx10a_sploc_lbl 64 `"64"', add
label define mx10a_sploc_lbl 65 `"65"', add
label define mx10a_sploc_lbl 66 `"66"', add
label define mx10a_sploc_lbl 67 `"67"', add
label define mx10a_sploc_lbl 68 `"68"', add
label define mx10a_sploc_lbl 69 `"69"', add
label define mx10a_sploc_lbl 70 `"70"', add
label define mx10a_sploc_lbl 71 `"71"', add
label define mx10a_sploc_lbl 72 `"72"', add
label define mx10a_sploc_lbl 73 `"73"', add
label define mx10a_sploc_lbl 74 `"74"', add
label define mx10a_sploc_lbl 75 `"75"', add
label define mx10a_sploc_lbl 76 `"76"', add
label define mx10a_sploc_lbl 77 `"77"', add
label define mx10a_sploc_lbl 78 `"78"', add
label define mx10a_sploc_lbl 79 `"79"', add
label define mx10a_sploc_lbl 80 `"80"', add
label define mx10a_sploc_lbl 81 `"81"', add
label define mx10a_sploc_lbl 82 `"82"', add
label define mx10a_sploc_lbl 83 `"83"', add
label define mx10a_sploc_lbl 84 `"84"', add
label define mx10a_sploc_lbl 85 `"85"', add
label define mx10a_sploc_lbl 86 `"86"', add
label define mx10a_sploc_lbl 87 `"87"', add
label define mx10a_sploc_lbl 88 `"88"', add
label define mx10a_sploc_lbl 89 `"89"', add
label define mx10a_sploc_lbl 90 `"90"', add
label define mx10a_sploc_lbl 91 `"91"', add
label define mx10a_sploc_lbl 92 `"92"', add
label define mx10a_sploc_lbl 98 `"Unknown"', add
label define mx10a_sploc_lbl 99 `"NIU (not in universe)"', add
label values mx10a_sploc mx10a_sploc_lbl

label define mx10a_spousehh_lbl 1 `"Partner lives in the household"'
label define mx10a_spousehh_lbl 2 `"Partner does not live in the household"', add
label define mx10a_spousehh_lbl 8 `"Unknown"', add
label define mx10a_spousehh_lbl 9 `"NIU (not in universe)"', add
label values mx10a_spousehh mx10a_spousehh_lbl

label define mx10a_empstat_lbl 10 `"Worked (at least one hour)"'
label define mx10a_empstat_lbl 13 `"Stated looking for work, verification indicates worked"', add
label define mx10a_empstat_lbl 14 `"Stated retiree or pensioner, verification indicates worked"', add
label define mx10a_empstat_lbl 15 `"Stated student, verification indicates worked"', add
label define mx10a_empstat_lbl 16 `"Stated household work, verification indicates worked"', add
label define mx10a_empstat_lbl 17 `"Stated mental or physical impairment, verification indicates worked"', add
label define mx10a_empstat_lbl 18 `"Stated other situation, verification indicates worked"', add
label define mx10a_empstat_lbl 19 `"Stated unspecified, verification indicates worked"', add
label define mx10a_empstat_lbl 20 `"Had a job but did not work"', add
label define mx10a_empstat_lbl 30 `"Looked for work"', add
label define mx10a_empstat_lbl 40 `"Pensioned or retired"', add
label define mx10a_empstat_lbl 50 `"Student"', add
label define mx10a_empstat_lbl 60 `"Does household work"', add
label define mx10a_empstat_lbl 70 `"Has a physical or mental impairment that prevents them from working"', add
label define mx10a_empstat_lbl 80 `"Another situation"', add
label define mx10a_empstat_lbl 98 `"Unknown"', add
label define mx10a_empstat_lbl 99 `"NIU (not in universe)"', add
label values mx10a_empstat mx10a_empstat_lbl

label define mx10a_occ_lbl 1111 `"Top government and judiciary officials"'
label define mx10a_occ_lbl 1112 `"Legislators"', add
label define mx10a_occ_lbl 1113 `"Presidents and municipal authorities"', add
label define mx10a_occ_lbl 1121 `"Presidents and directors in public institutions"', add
label define mx10a_occ_lbl 1122 `"Presidents and directors in private companies and institutions"', add
label define mx10a_occ_lbl 1129 `"Other presidents and directors not elsewhere classified"', add
label define mx10a_occ_lbl 1131 `"Executives of political organizations"', add
label define mx10a_occ_lbl 1132 `"Executives of union organizations"', add
label define mx10a_occ_lbl 1133 `"Executives of business organizations"', add
label define mx10a_occ_lbl 1134 `"Executives of agricultural organizations"', add
label define mx10a_occ_lbl 1135 `"Executives of civil and religious organizations"', add
label define mx10a_occ_lbl 1211 `"Directors and managers in human resources management and marketing"', add
label define mx10a_occ_lbl 1212 `"Directors and managers in accounting, financial, banking and insurance services"', add
label define mx10a_occ_lbl 1221 `"Directors and managers in health services, civil protection and environment"', add
label define mx10a_occ_lbl 1222 `"Directors and managers in social and economic development"', add
label define mx10a_occ_lbl 1223 `"Directors and managers in schools and training centers"', add
label define mx10a_occ_lbl 1224 `"Court judges, directors and managers in legal services and law enforcement"', add
label define mx10a_occ_lbl 1225 `"Commanders of the armed forces"', add
label define mx10a_occ_lbl 1226 `"Directors in monitoring and security services"', add
label define mx10a_occ_lbl 1311 `"Directors and managers in agricultural production, forestry and fishing"', add
label define mx10a_occ_lbl 1312 `"Directors and managers in mining, oil and gas production"', add
label define mx10a_occ_lbl 1313 `"Directors and managers in the generation and supply of electricity and water"', add
label define mx10a_occ_lbl 1314 `"Directors and managers in manufacturing"', add
label define mx10a_occ_lbl 1315 `"Directors and managers in construction, repair and maintenance services"', add
label define mx10a_occ_lbl 1321 `"Directors and managers in computer sciences"', add
label define mx10a_occ_lbl 1322 `"Directors and managers in communications and telecommunication"', add
label define mx10a_occ_lbl 1323 `"Directors and managers in transport services"', add
label define mx10a_occ_lbl 1324 `"Directors and managers in research and technological development centers"', add
label define mx10a_occ_lbl 1411 `"Directors and managers of sales, merchandising, and rental services"', add
label define mx10a_occ_lbl 1412 `"Directors and managers of restaurants and hotels"', add
label define mx10a_occ_lbl 1421 `"Artistic directors and producers of film, theater and related"', add
label define mx10a_occ_lbl 1422 `"Directors and managers of museums, cinemas and other cultural and sporting facilities"', add
label define mx10a_occ_lbl 1423 `"Directors and managers in funeral services and other services"', add
label define mx10a_occ_lbl 1511 `"Coordinators and department heads in administration, human resources and marketing"', add
label define mx10a_occ_lbl 1512 `"Coordinators and department heads in accounting, financial, banking and insurance services"', add
label define mx10a_occ_lbl 1521 `"Coordinators and department heads in health services, civil protection and environment"', add
label define mx10a_occ_lbl 1522 `"Coordinators and department heads in social and economic development"', add
label define mx10a_occ_lbl 1523 `"Coordinators and department heads in schools and training centers"', add
label define mx10a_occ_lbl 1524 `"Coordinators and department heads on legal services, judges, and prosecutors"', add
label define mx10a_occ_lbl 1525 `"Captains, lieutenants and commanders of the armed forces"', add
label define mx10a_occ_lbl 1526 `"Coordinators and leaders in security and surveillance services"', add
label define mx10a_occ_lbl 1611 `"Coordinators and department heads in agricultural production, forestry and fishing"', add
label define mx10a_occ_lbl 1612 `"Coordinators and department heads in mining, oil and gas production"', add
label define mx10a_occ_lbl 1613 `"Coordinators and department heads in the generation and supply of electricity and water"', add
label define mx10a_occ_lbl 1614 `"Coordinators and department heads in manufacturing"', add
label define mx10a_occ_lbl 1615 `"Coordinators and department heads in construction, repair and maintenance services"', add
label define mx10a_occ_lbl 1619 `"Other coordinators and department heads in agricultural production, industrial, construction and maintenance services not elsewhere classified"', add
label define mx10a_occ_lbl 1621 `"Coordinators and department heads in computer sciences"', add
label define mx10a_occ_lbl 1622 `"Coordinators and department heads in communications and telecommunications"', add
label define mx10a_occ_lbl 1623 `"Coordinators and department heads in transport services"', add
label define mx10a_occ_lbl 1624 `"Coordinators and department heads in research and technological development centers"', add
label define mx10a_occ_lbl 1629 `"Other coordinators and department heads of computers sciences, telecommunications, transport and research and technological development not elsewhere classified"', add
label define mx10a_occ_lbl 1711 `"Coordinators and department heads in sales, merchandising, and rental services"', add
label define mx10a_occ_lbl 1712 `"Coordinators and heads of area restaurants and hotels"', add
label define mx10a_occ_lbl 1721 `"Coordinators and department heads in art, film, theater and related"', add
label define mx10a_occ_lbl 1722 `"Coordinators and department heads in museums, cinemas, sports and cultural"', add
label define mx10a_occ_lbl 1723 `"Coordinators and department heads at funerals and other services"', add
label define mx10a_occ_lbl 1999 `"Other directors, officers, managers, coordinators and department heads not elsewhere classified"', add
label define mx10a_occ_lbl 2111 `"Administrators and specialists in human resources and management systems"', add
label define mx10a_occ_lbl 2112 `"Specialists and consultants in marketing, advertising, communications and trade"', add
label define mx10a_occ_lbl 2113 `"Specialists in hotels and tourism"', add
label define mx10a_occ_lbl 2121 `"Accountants and auditors"', add
label define mx10a_occ_lbl 2122 `"Financial advisors and analysts"', add
label define mx10a_occ_lbl 2123 `"Economists, consultants and researchers in economic policy"', add
label define mx10a_occ_lbl 2131 `"Anthropologists, archaeologists, and historians"', add
label define mx10a_occ_lbl 2132 `"Researchers and specialists in sociology and social development"', add
label define mx10a_occ_lbl 2133 `"Researchers and specialists in political science and public administration"', add
label define mx10a_occ_lbl 2134 `"Geographers"', add
label define mx10a_occ_lbl 2135 `"Lawyers"', add
label define mx10a_occ_lbl 2141 `"Researchers and specialists in philosophy and letters (linguists)"', add
label define mx10a_occ_lbl 2142 `"Psychologists"', add
label define mx10a_occ_lbl 2143 `"Social workers"', add
label define mx10a_occ_lbl 2144 `"Specialists in archives, library, and museums"', add
label define mx10a_occ_lbl 2145 `"Priests, pastors and other theologians"', add
label define mx10a_occ_lbl 2151 `"Writers and literary critics"', add
label define mx10a_occ_lbl 2152 `"Journalists and editors"', add
label define mx10a_occ_lbl 2153 `"Translators and interpreters"', add
label define mx10a_occ_lbl 2161 `"Painters"', add
label define mx10a_occ_lbl 2162 `"Artistic cartoonists illustrators and engravers"', add
label define mx10a_occ_lbl 2163 `"Sculptors"', add
label define mx10a_occ_lbl 2164 `"Scenographers"', add
label define mx10a_occ_lbl 2171 `"Composers and arrangers"', add
label define mx10a_occ_lbl 2172 `"Musicians"', add
label define mx10a_occ_lbl 2173 `"Singers"', add
label define mx10a_occ_lbl 2174 `"Dancers and choreographers"', add
label define mx10a_occ_lbl 2175 `"Actors"', add
label define mx10a_occ_lbl 2211 `"Researchers and specialists in physics"', add
label define mx10a_occ_lbl 2212 `"Researchers and specialists in mathematics, statistics and actuarial sciences"', add
label define mx10a_occ_lbl 2221 `"Biologists and marine scientists and oceanographers"', add
label define mx10a_occ_lbl 2222 `"Chemicals"', add
label define mx10a_occ_lbl 2223 `"Ecologists and atmospheric scientists"', add
label define mx10a_occ_lbl 2231 `"Agronomist"', add
label define mx10a_occ_lbl 2232 `"Veterinarians and animal husbandry"', add
label define mx10a_occ_lbl 2233 `"Specialists in forestry"', add
label define mx10a_occ_lbl 2234 `"Specialists in fisheries and in aquaculture"', add
label define mx10a_occ_lbl 2241 `"Electrical engineers"', add
label define mx10a_occ_lbl 2242 `"Electromechanical engineers"', add
label define mx10a_occ_lbl 2251 `"Chemical engineers"', add
label define mx10a_occ_lbl 2252 `"Mechanical engineers"', add
label define mx10a_occ_lbl 2253 `"Industrial engineers"', add
label define mx10a_occ_lbl 2254 `"Mining engineers, metallurgy, and oil"', add
label define mx10a_occ_lbl 2261 `"Civil and construction engineers"', add
label define mx10a_occ_lbl 2262 `"Engineers in topography, hydrology, geology and geodesy"', add
label define mx10a_occ_lbl 2263 `"Architects, urban and transportation planners"', add
label define mx10a_occ_lbl 2271 `"Software developers and software and media analysts"', add
label define mx10a_occ_lbl 2272 `"Database administrators and computer networks"', add
label define mx10a_occ_lbl 2281 `"Communications and telecommunications engineers"', add
label define mx10a_occ_lbl 2311 `"Educational supervisors and inspectors"', add
label define mx10a_occ_lbl 2312 `"Educators, counselors, educational and other educational scientists"', add
label define mx10a_occ_lbl 2321 `"Professors and higher education instructors"', add
label define mx10a_occ_lbl 2322 `"Upper secondary teachers and equivalents"', add
label define mx10a_occ_lbl 2331 `"Secondary/middle school teachers"', add
label define mx10a_occ_lbl 2332 `"Primary school teachers"', add
label define mx10a_occ_lbl 2333 `"Literacy specialists"', add
label define mx10a_occ_lbl 2334 `"Bilingual education teachers"', add
label define mx10a_occ_lbl 2335 `"Preschool teachers"', add
label define mx10a_occ_lbl 2339 `"Other entry-level teachers not elsewhere classified"', add
label define mx10a_occ_lbl 2341 `"Teachers of people with hearing and speech problems"', add
label define mx10a_occ_lbl 2342 `"Teachers of people with learning disabilities"', add
label define mx10a_occ_lbl 2343 `"Other special education teachers"', add
label define mx10a_occ_lbl 2411 `"General and family doctors"', add
label define mx10a_occ_lbl 2412 `"Medical specialists"', add
label define mx10a_occ_lbl 2413 `"Dentists"', add
label define mx10a_occ_lbl 2421 `"Biomedical engineers"', add
label define mx10a_occ_lbl 2422 `"Optometrists"', add
label define mx10a_occ_lbl 2423 `"Nutritionist"', add
label define mx10a_occ_lbl 2424 `"Health and safety specialists and public health"', add
label define mx10a_occ_lbl 2425 `"Specialists in traditional and alternative medicine"', add
label define mx10a_occ_lbl 2426 `"Nurses"', add
label define mx10a_occ_lbl 2427 `"Physical therapists, audiologists and, speech therapists"', add
label define mx10a_occ_lbl 2428 `"Pharmacologists"', add
label define mx10a_occ_lbl 2511 `"Aids in administration, marketing, sales and foreign trade"', add
label define mx10a_occ_lbl 2512 `"Auxiliary in accounting, economics, finance and brokers"', add
label define mx10a_occ_lbl 2513 `"Customs brokers"', add
label define mx10a_occ_lbl 2514 `"Appraisers and auctioneers"', add
label define mx10a_occ_lbl 2521 `"Official prosecutors and detectives"', add
label define mx10a_occ_lbl 2522 `"Customs and border agents"', add
label define mx10a_occ_lbl 2523 `"Tax revenue and license agents"', add
label define mx10a_occ_lbl 2524 `"Social safety inspectors, prices and other public inspectors"', add
label define mx10a_occ_lbl 2531 `"Auxiliary social scientists and humanists"', add
label define mx10a_occ_lbl 2532 `"Aids in legal services"', add
label define mx10a_occ_lbl 2533 `"Nuns and preachers"', add
label define mx10a_occ_lbl 2541 `"Fashion and apparel designers"', add
label define mx10a_occ_lbl 2542 `"Industrial designers"', add
label define mx10a_occ_lbl 2543 `"Graphic designers"', add
label define mx10a_occ_lbl 2544 `"Interior, gardens and various materials (mugs, keychains, etc.) decorators"', add
label define mx10a_occ_lbl 2551 `"Announcers on radio, television and other media"', add
label define mx10a_occ_lbl 2552 `"Entertainers and event organizers"', add
label define mx10a_occ_lbl 2553 `"Clowns, mimes, and circus artists"', add
label define mx10a_occ_lbl 2561 `"Sportsmen"', add
label define mx10a_occ_lbl 2562 `"Coaches"', add
label define mx10a_occ_lbl 2563 `"Sports referees and judges"', add
label define mx10a_occ_lbl 2611 `"Auxiliary in physics, mathematics, statistics, and actuarial sciences"', add
label define mx10a_occ_lbl 2612 `"Assistants and technicians in the biological, chemical, and environmental sciences"', add
label define mx10a_occ_lbl 2613 `"Assistants and technicians in agronomy"', add
label define mx10a_occ_lbl 2614 `"Veterinary, fisheries, and forestry assistants and technicians"', add
label define mx10a_occ_lbl 2621 `"Industrial and chemical assistants and technicians"', add
label define mx10a_occ_lbl 2622 `"Surveyors, hydrology, and geology assistants and technicians"', add
label define mx10a_occ_lbl 2623 `"Mining, metallurgy, and oil assistants and technicians"', add
label define mx10a_occ_lbl 2624 `"Construction and architecture assistants and technicians"', add
label define mx10a_occ_lbl 2625 `"Technical illustrators"', add
label define mx10a_occ_lbl 2630 `"Supervisors of mechanics and technicians in maintenance and repair of mechanical equipment, motor vehicles, industrial instruments, and refrigeration equipment"', add
label define mx10a_occ_lbl 2631 `"Technical maintenance and repair of motor vehicles"', add
label define mx10a_occ_lbl 2632 `"Mechanical maintenance and repair of motor vehicles"', add
label define mx10a_occ_lbl 2633 `"Technical maintenance and repair of machinery and industrial instruments"', add
label define mx10a_occ_lbl 2634 `"Mechanical maintenance and repair of machinery and industrial instruments"', add
label define mx10a_occ_lbl 2635 `"Technical maintenance and repair of precision and musical instruments"', add
label define mx10a_occ_lbl 2636 `"Mechanical maintenance and repair of precision and musical instruments"', add
label define mx10a_occ_lbl 2637 `"Technicians in the installation, repair, and maintenance of refrigeration, air conditioning, and climate equipment"', add
label define mx10a_occ_lbl 2638 `"Mechanical installation, maintenance and repair of refrigeration, air conditioning and climate equipment"', add
label define mx10a_occ_lbl 2639 `"Other occupations of mechanics and technicians in the maintenance and repair of mechanical equipment, motor vehicles and industrial instruments not elsewhere classified"', add
label define mx10a_occ_lbl 2640 `"Supervisors of electrical technicians, electronics and telecommunications and electromechanical equipment"', add
label define mx10a_occ_lbl 2641 `"Electrical technicians"', add
label define mx10a_occ_lbl 2642 `"Electricians and linemen"', add
label define mx10a_occ_lbl 2643 `"Technicians in installment and repair electronic, telecommunications and appliance (except computer) equipment"', add
label define mx10a_occ_lbl 2644 `"Workers in installation and repair of electronic, telecommunications and appliance (except computer) equipment"', add
label define mx10a_occ_lbl 2645 `"Technicians repairing electromechanical equipment"', add
label define mx10a_occ_lbl 2646 `"Workers repairing electromechanical equipment"', add
label define mx10a_occ_lbl 2649 `"Other electrical technicians in electronics and telecommunications, and electromechanical equipment not elsewhere classified"', add
label define mx10a_occ_lbl 2651 `"Technicians in the installation and repair of networks, computers and computer systems"', add
label define mx10a_occ_lbl 2652 `"Technical operators of radio equipment"', add
label define mx10a_occ_lbl 2653 `"Recording and playback equipment assistants and technicians"', add
label define mx10a_occ_lbl 2654 `"Audio engineering, sound and lighting assistants and technicians"', add
label define mx10a_occ_lbl 2655 `"Photographers"', add
label define mx10a_occ_lbl 2661 `"Air traffic controllers"', add
label define mx10a_occ_lbl 2662 `"Traffic controllers from other transport (road, rail and sea)"', add
label define mx10a_occ_lbl 2711 `"Assistants and technicians in pedagogy and education"', add
label define mx10a_occ_lbl 2712 `"Studies and training instructors in art"', add
label define mx10a_occ_lbl 2713 `"Studies and training instructors in business and management"', add
label define mx10a_occ_lbl 2714 `"Foreign language instructors"', add
label define mx10a_occ_lbl 2715 `"Instructors and trainers in trades and work"', add
label define mx10a_occ_lbl 2716 `"Teachers in physical education and sport"', add
label define mx10a_occ_lbl 2811 `"Nurses (technical)"', add
label define mx10a_occ_lbl 2812 `"Diagnostic equipment technicians, medical treatment, podiatrists and physiotherapists"', add
label define mx10a_occ_lbl 2813 `"Medical laboratory technicians"', add
label define mx10a_occ_lbl 2814 `"Pharmaceutical assistants and technicians"', add
label define mx10a_occ_lbl 2815 `"Medical and dental prosthetic technicians"', add
label define mx10a_occ_lbl 2816 `"Diet technicians and nutritionists"', add
label define mx10a_occ_lbl 2821 `"Nursing assistants and paramedics"', add
label define mx10a_occ_lbl 2822 `"Dental assistants and auxiliaries"', add
label define mx10a_occ_lbl 2823 `"Hospital and medical auxiliaries"', add
label define mx10a_occ_lbl 2824 `"Midwives"', add
label define mx10a_occ_lbl 2825 `"Work safety and hygiene technicians"', add
label define mx10a_occ_lbl 2826 `"Healers, herbalists and bone-setters"', add
label define mx10a_occ_lbl 2827 `"Fumigation and pest control"', add
label define mx10a_occ_lbl 2991 `"Other experts not elsewhere classified"', add
label define mx10a_occ_lbl 2992 `"Other technicians not elsewhere classified"', add
label define mx10a_occ_lbl 3101 `"Supervisors of secretaries, entry operators, cashiers, and file and transport control workers"', add
label define mx10a_occ_lbl 3111 `"Secretaries"', add
label define mx10a_occ_lbl 3112 `"Stenographers, typists and the like"', add
label define mx10a_occ_lbl 3113 `"Data capture"', add
label define mx10a_occ_lbl 3114 `"Office machine operators (copier, etc.)."', add
label define mx10a_occ_lbl 3121 `"Cashiers, tellers and recipients of gambling"', add
label define mx10a_occ_lbl 3122 `"Collectors, payers and lenders"', add
label define mx10a_occ_lbl 3131 `"Workers on files and correspondence"', add
label define mx10a_occ_lbl 3132 `"Managers and workers in control of stores and warehouses"', add
label define mx10a_occ_lbl 3141 `"Transportation dispatchers"', add
label define mx10a_occ_lbl 3142 `"Transport inspectors"', add
label define mx10a_occ_lbl 3201 `"Supervisors of workers who provide and manage information"', add
label define mx10a_occ_lbl 3211 `"Receptionists and workers who provide information (personally)"', add
label define mx10a_occ_lbl 3212 `"Workers who provide information by phone (call center) and announcers"', add
label define mx10a_occ_lbl 3213 `"Telephone and telegraph workers"', add
label define mx10a_occ_lbl 3221 `"Travel agency workers"', add
label define mx10a_occ_lbl 3222 `"Tour guides in museums, casinos, parks, cinemas and other recreational facilities"', add
label define mx10a_occ_lbl 3231 `"Pollsters"', add
label define mx10a_occ_lbl 3232 `"Information encoders"', add
label define mx10a_occ_lbl 3999 `"Other secretaries, entry operators, cashiers and workers who provide information not previously classified"', add
label define mx10a_occ_lbl 4111 `"Store merchants"', add
label define mx10a_occ_lbl 4201 `"Sales managers and supervisors in establishments"', add
label define mx10a_occ_lbl 4211 `"Sales workers, dispatchers and clerks"', add
label define mx10a_occ_lbl 4212 `"Users and workers on selection of merchandise and vending machines"', add
label define mx10a_occ_lbl 4213 `"Telemarketers"', add
label define mx10a_occ_lbl 4214 `"Drivers sellers"', add
label define mx10a_occ_lbl 4221 `"Agents and sales representatives and shippers"', add
label define mx10a_occ_lbl 4222 `"Insurance agents and financial services (account executives)"', add
label define mx10a_occ_lbl 4223 `"Real estate agent"', add
label define mx10a_occ_lbl 4224 `"Catalog sellers"', add
label define mx10a_occ_lbl 4231 `"Demonstrators and promoters"', add
label define mx10a_occ_lbl 4232 `"Hostess"', add
label define mx10a_occ_lbl 4233 `"Fashion, art and advertising models"', add
label define mx10a_occ_lbl 4311 `"Workers in the rental property (houses, land, etc.)."', add
label define mx10a_occ_lbl 4312 `"Workers in the rental goods (pottery, movies, video games, etc.)."', add
label define mx10a_occ_lbl 4999 `"Other merchants, employees in sales and sales agents not elsewhere classified establishment"', add
label define mx10a_occ_lbl 5101 `"Supervisors in the preparation and serving of food and drink"', add
label define mx10a_occ_lbl 5111 `"Cooks"', add
label define mx10a_occ_lbl 5112 `"Innkeepers"', add
label define mx10a_occ_lbl 5113 `"Home cooks"', add
label define mx10a_occ_lbl 5114 `"Fast food and taco preparers (appetizers, pizzas, hot dogs, juice, coffee, etc.)"', add
label define mx10a_occ_lbl 5115 `"Bartenders"', add
label define mx10a_occ_lbl 5116 `"Waiters"', add
label define mx10a_occ_lbl 5201 `"Supervisors and workers in personal and household care"', add
label define mx10a_occ_lbl 5211 `"Hairdressers, barbers, and stylists"', add
label define mx10a_occ_lbl 5212 `"Makeup artists, manicures and pedicures"', add
label define mx10a_occ_lbl 5213 `"Lifeguards and masseurs"', add
label define mx10a_occ_lbl 5221 `"Caregivers of children, disabled and elderly in institutions"', add
label define mx10a_occ_lbl 5222 `"Caregivers of children, disabled and elderly in private homes"', add
label define mx10a_occ_lbl 5231 `"Hostesses and attendants"', add
label define mx10a_occ_lbl 5241 `"Gardeners in establishments"', add
label define mx10a_occ_lbl 5242 `"Homestead gardeners"', add
label define mx10a_occ_lbl 5251 `"Astrologers, fortune tellers and related workers"', add
label define mx10a_occ_lbl 5252 `"Workers engaged in prostitution"', add
label define mx10a_occ_lbl 5253 `"Funeral services workers"', add
label define mx10a_occ_lbl 5254 `"Animal trainers and other occupations related to pet care"', add
label define mx10a_occ_lbl 5301 `"Supervisors in protection and surveillance services"', add
label define mx10a_occ_lbl 5311 `"Firemen"', add
label define mx10a_occ_lbl 5312 `"Traffic agents and policemen"', add
label define mx10a_occ_lbl 5313 `"Wardens and guards in establishments"', add
label define mx10a_occ_lbl 5314 `"Wardens and doormen in private homes"', add
label define mx10a_occ_lbl 5401 `"Supervisors of the armed forces"', add
label define mx10a_occ_lbl 5411 `"Workers in the air force"', add
label define mx10a_occ_lbl 5412 `"Workers in the navy"', add
label define mx10a_occ_lbl 5413 `"Workers in the army"', add
label define mx10a_occ_lbl 5999 `"Other occupations in personal and surveillance services not elsewhere classified surveillance"', add
label define mx10a_occ_lbl 6101 `"Supervisors, farm managers and foremen"', add
label define mx10a_occ_lbl 6111 `"Workers in the cultivation of maize and / or beans"', add
label define mx10a_occ_lbl 6112 `"Workers in the cultivation of vegetables"', add
label define mx10a_occ_lbl 6113 `"Workers in the cultivation of coffee, cocoa and tobacco"', add
label define mx10a_occ_lbl 6114 `"Workers in the cultivation of fruits"', add
label define mx10a_occ_lbl 6115 `"Workers in the cultivation of flowers"', add
label define mx10a_occ_lbl 6116 `"Workers in other crops"', add
label define mx10a_occ_lbl 6117 `"Workers in beneficial activities for agricultural products"', add
label define mx10a_occ_lbl 6119 `"Other workers in agricultural activities not elsewhere classified"', add
label define mx10a_occ_lbl 6121 `"Workers in cattle breeding"', add
label define mx10a_occ_lbl 6122 `"Workers in the breeding of pigs"', add
label define mx10a_occ_lbl 6123 `"Workers in poultry breeding"', add
label define mx10a_occ_lbl 6124 `"Workers in the breeding of goats and sheep"', add
label define mx10a_occ_lbl 6125 `"Workers in the breeding of horses"', add
label define mx10a_occ_lbl 6126 `"Workers in beekeeping"', add
label define mx10a_occ_lbl 6127 `"Workers in the breeding and care of other animals"', add
label define mx10a_occ_lbl 6128 `"Workers benefit activities of livestock products"', add
label define mx10a_occ_lbl 6129 `"Other workers in livestock and animal husbandry, not elsewhere classified"', add
label define mx10a_occ_lbl 6131 `"Workers who combine farming with livestock"', add
label define mx10a_occ_lbl 6201 `"Supervisors, managers and supervisors of workers in fisheries, aquaculture, forestry, hunting and the like"', add
label define mx10a_occ_lbl 6211 `"Workers in fisheries"', add
label define mx10a_occ_lbl 6212 `"Workers on aquaculture activities"', add
label define mx10a_occ_lbl 6213 `"Workers in beneficial activities for fisheries or aquaculture products"', add
label define mx10a_occ_lbl 6221 `"Loggers, fellers, tree cutters, and the like"', add
label define mx10a_occ_lbl 6222 `"Rubber, gum, and resin specialists, and the like"', add
label define mx10a_occ_lbl 6223 `"Nursery and greenhouse workers"', add
label define mx10a_occ_lbl 6224 `"Workers planting activities, reforestation and forest conservation"', add
label define mx10a_occ_lbl 6225 `"Log splitters"', add
label define mx10a_occ_lbl 6226 `"Workers collecting non-cultivated plants, herbs, and roots"', add
label define mx10a_occ_lbl 6227 `"Charcoal producers"', add
label define mx10a_occ_lbl 6231 `"Hunters, trappers, and related workers"', add
label define mx10a_occ_lbl 6311 `"Operators of agricultural and forestry machinery"', add
label define mx10a_occ_lbl 6999 `"Other workers in agriculture, livestock, forestry, hunting and fishing not elsewhere classified"', add
label define mx10a_occ_lbl 7101 `"Supervisors of workers in mining, construction, and building finishing"', add
label define mx10a_occ_lbl 7111 `"Mining and extraction workers in the mining of metal ores"', add
label define mx10a_occ_lbl 7112 `"Workers in the extraction of quarry, clay, sand, stone and gravel"', add
label define mx10a_occ_lbl 7113 `"Blasters and divers in drilling and construction"', add
label define mx10a_occ_lbl 7121 `"Bricklayers, stonemasons, and related"', add
label define mx10a_occ_lbl 7122 `"Roofers (palapas setters, etc.)."', add
label define mx10a_occ_lbl 7123 `"Wood structures carpenter"', add
label define mx10a_occ_lbl 7131 `"Plasterers and other walls and ceilings coaters"', add
label define mx10a_occ_lbl 7132 `"Installers of floors, tiles, and mosaics"', add
label define mx10a_occ_lbl 7133 `"Installers insulation, waterproofing, glass, and other materials"', add
label define mx10a_occ_lbl 7134 `"Plumbers and pipe fitters"', add
label define mx10a_occ_lbl 7135 `"Painter"', add
label define mx10a_occ_lbl 7201 `"Supervisors of artisans and workers in the treatment and processing of metal products"', add
label define mx10a_occ_lbl 7211 `"Moulders, turners and cutting workers"', add
label define mx10a_occ_lbl 7212 `"Welders and flame cutters"', add
label define mx10a_occ_lbl 7213 `"Tinsmiths, sheet metal workers, braziers, and metal painters"', add
label define mx10a_occ_lbl 7214 `"Structural-metal preparers and erectors"', add
label define mx10a_occ_lbl 7221 `"Blacksmiths, aluminum setters and forging-press workers"', add
label define mx10a_occ_lbl 7222 `"Locksmiths, grinders, and tool polishing workers"', add
label define mx10a_occ_lbl 7223 `"Jewelers, goldsmiths, silversmiths and metal polishers"', add
label define mx10a_occ_lbl 7301 `"Supervisors of artisans and workers in the manufacture of wood, paper, textiles, fur, and leather"', add
label define mx10a_occ_lbl 7311 `"Carpenters, joiners, and polishers in the manufacture of wood"', add
label define mx10a_occ_lbl 7312 `"Painters and wood varnishers"', add
label define mx10a_occ_lbl 7313 `"Artisans working on stick, palm, bamboo, and wicker, except wood"', add
label define mx10a_occ_lbl 7321 `"Artisans and workers in the manufacture of paper and cardboard"', add
label define mx10a_occ_lbl 7322 `"Printers, typesetters, etchers and binders"', add
label define mx10a_occ_lbl 7323 `"Developers and photo printers"', add
label define mx10a_occ_lbl 7331 `"Workers in the preparation of fibers and yarns"', add
label define mx10a_occ_lbl 7332 `"Fiber weavers"', add
label define mx10a_occ_lbl 7341 `"Tailors and dressmakers, seamstresses, and manufacturers of clothing"', add
label define mx10a_occ_lbl 7342 `"Artisans and manufacturers of textile products"', add
label define mx10a_occ_lbl 7343 `"Sewers and embroiderers"', add
label define mx10a_occ_lbl 7344 `"Textile patterns"', add
label define mx10a_occ_lbl 7351 `"Upholsterers"', add
label define mx10a_occ_lbl 7352 `"Furriers, cutters, tanners and dyers of leather, fur and related products"', add
label define mx10a_occ_lbl 7353 `"Artisan shoemakers"', add
label define mx10a_occ_lbl 7401 `"Supervisors of artisans and workers in developing rubber products, plastics, and chemicals"', add
label define mx10a_occ_lbl 7411 `"Workers in the development and repair of rubber products, plastic, and tire vulcanization"', add
label define mx10a_occ_lbl 7412 `"Workers in the production of chemicals and chemical compounds"', add
label define mx10a_occ_lbl 7501 `"Supervisors of workers in the processing and food processing, beverages and tobacco"', add
label define mx10a_occ_lbl 7511 `"Workers in the production of meat, fish and related products"', add
label define mx10a_occ_lbl 7512 `"Workers at the dairy processing"', add
label define mx10a_occ_lbl 7513 `"Workers making bread, tortillas, pastries and other flour and cereal products"', add
label define mx10a_occ_lbl 7514 `"Workers in the production of fruit and vegetables"', add
label define mx10a_occ_lbl 7515 `"Workers in developing sugar-based products, chocolate, candy, and tobacco"', add
label define mx10a_occ_lbl 7516 `"Workers in the manufacture of oils, fats, salt and spices"', add
label define mx10a_occ_lbl 7517 `"Workers in the production of alcoholic and non alcoholic beverages"', add
label define mx10a_occ_lbl 7601 `"Supervisors of artisans and workers in the manufacture of ceramics, glass, tile and similar"', add
label define mx10a_occ_lbl 7611 `"Potters and ceramics workers"', add
label define mx10a_occ_lbl 7612 `"Workers in the manufacture of cement, lime, plaster, tile, stone and brick"', add
label define mx10a_occ_lbl 7613 `"Glass and similar workers"', add
label define mx10a_occ_lbl 7614 `"Workers in the manufacture of bone, shell, coral and similar products"', add
label define mx10a_occ_lbl 7999 `"Other craft workers not classified above"', add
label define mx10a_occ_lbl 8101 `"Supervisors of industrial machinery operators"', add
label define mx10a_occ_lbl 8111 `"Machine and equipment operators in extraction activities, mining and quarrying"', add
label define mx10a_occ_lbl 8112 `"Machine and equipment operator for extraction in oil wells"', add
label define mx10a_occ_lbl 8113 `"Machine and equipment operator for collecting, pumping and distributing water"', add
label define mx10a_occ_lbl 8114 `"Specialized mobile equipment operators for construction"', add
label define mx10a_occ_lbl 8121 `"Operators of metallurgical furnaces, sieves, and mills and machine operators of metal drawers and extruders"', add
label define mx10a_occ_lbl 8122 `"Polishing machine operators, metal plating and coating"', add
label define mx10a_occ_lbl 8123 `"Operators of machines that cut, drill, bend, punch, weld, etc.., metal parts and products"', add
label define mx10a_occ_lbl 8131 `"Operators of machines for production of chemicals"', add
label define mx10a_occ_lbl 8132 `"Operators of machines for production of pharmaceuticals and cosmetics"', add
label define mx10a_occ_lbl 8133 `"Operators of machines for the manufacture and assembly of plastic and rubber products"', add
label define mx10a_occ_lbl 8134 `"Operators of machines for water treatment"', add
label define mx10a_occ_lbl 8135 `"Operators of machines and equipment for oil and gas refining"', add
label define mx10a_occ_lbl 8141 `"Operators of machines for wood processing and production of particleboard and plywood"', add
label define mx10a_occ_lbl 8142 `"Operators of machines for the manufacture of wood, rattan, wicker and similar"', add
label define mx10a_occ_lbl 8143 `"Machine operators in the development of pulp, paper and similar"', add
label define mx10a_occ_lbl 8144 `"Operators of machines for printing and binding"', add
label define mx10a_occ_lbl 8145 `"Operators of machines for making paper and cardboard products"', add
label define mx10a_occ_lbl 8151 `"Machine and equipment operators for spinning and winding"', add
label define mx10a_occ_lbl 8152 `"Machine operators to produce knitted fabrics and carpets"', add
label define mx10a_occ_lbl 8153 `"Sewing machine operators, embroidery, and cutting for the manufacture of textiles and clothing"', add
label define mx10a_occ_lbl 8154 `"Machine operators in leather processing, leather and footwear manufacturing"', add
label define mx10a_occ_lbl 8155 `"Machine operators in finishing, bleaching, dyeing, printing, ironing, washing, textiles, leather products, fur, and similar"', add
label define mx10a_occ_lbl 8161 `"Machine operators in food processing, oils, fats, salt and spices"', add
label define mx10a_occ_lbl 8162 `"Machine operators in the preparation of tobacco"', add
label define mx10a_occ_lbl 8163 `"Machine operators in developing alcoholic and non-alcoholic beverages"', add
label define mx10a_occ_lbl 8171 `"Machine operators in the production of cement, lime, plaster, and cement products"', add
label define mx10a_occ_lbl 8172 `"Machine operators in the production of ceramic, mosaic, tile and similar"', add
label define mx10a_occ_lbl 8173 `"Machine operators in making glass, glass products, and the like"', add
label define mx10a_occ_lbl 8181 `"Operators of machines and facilities for power generation"', add
label define mx10a_occ_lbl 8199 `"Other operators of industrial plant and machinery not elsewhere classified"', add
label define mx10a_occ_lbl 8201 `"Supervisors in assembly processes and assembly of machinery, tools and metal and electronic products"', add
label define mx10a_occ_lbl 8211 `"Assemblers and fitters of tools, machinery, equipment, and metal products"', add
label define mx10a_occ_lbl 8212 `"Assemblers and fitters of electrical and electronic parts"', add
label define mx10a_occ_lbl 8301 `"Supervisors of transport and mobile machinery drivers"', add
label define mx10a_occ_lbl 8311 `"Aircraft pilots"', add
label define mx10a_occ_lbl 8321 `"Captains and ship pilots"', add
label define mx10a_occ_lbl 8322 `"Ships' deck officers and deck crews"', add
label define mx10a_occ_lbl 8323 `"Ships' engineers"', add
label define mx10a_occ_lbl 8324 `"Drivers of small boats"', add
label define mx10a_occ_lbl 8331 `"Rail transport conductor (train, metro and light rail)"', add
label define mx10a_occ_lbl 8341 `"Drivers of trucks, cargo vans and cars"', add
label define mx10a_occ_lbl 8342 `"Drivers of buses, trucks, vans, taxis and passenger cars"', add
label define mx10a_occ_lbl 8343 `"Drivers in private homes"', add
label define mx10a_occ_lbl 8344 `"Motorcycle driver"', add
label define mx10a_occ_lbl 8349 `"Other drivers of motorized land transport not elsewhere classified"', add
label define mx10a_occ_lbl 8351 `"Drivers of mobile machinery for construction and mining"', add
label define mx10a_occ_lbl 8352 `"Mobile machine drivers for the movement of goods in factories, ports, shops, etc."', add
label define mx10a_occ_lbl 8999 `"Other industrial machine operators, assemblers, and transport drivers not elsewhere classified"', add
label define mx10a_occ_lbl 9111 `"Support workers in agriculture"', add
label define mx10a_occ_lbl 9112 `"Support workers in livestock"', add
label define mx10a_occ_lbl 9113 `"Support workers who perform agricultural and livestock activities"', add
label define mx10a_occ_lbl 9121 `"Support workers in forestry activities"', add
label define mx10a_occ_lbl 9122 `"Support workers in aquaculture and fishing"', add
label define mx10a_occ_lbl 9123 `"Support workers hunting and trapping activities"', add
label define mx10a_occ_lbl 9124 `"Collectors of firewood and water carriers"', add
label define mx10a_occ_lbl 9211 `"Support workers in mining"', add
label define mx10a_occ_lbl 9212 `"Support workers in extraction activities"', add
label define mx10a_occ_lbl 9221 `"Support workers in the construction"', add
label define mx10a_occ_lbl 9222 `"Support workers in plumbing and piping"', add
label define mx10a_occ_lbl 9231 `"Support workers in developing, repairing, and maintaining mechanical equipment, machinery and metal and precision products"', add
label define mx10a_occ_lbl 9232 `"Support workers in the electrical, electronics, and communications industries"', add
label define mx10a_occ_lbl 9233 `"Support workers in the chemical, petrochemical, and plastics industries"', add
label define mx10a_occ_lbl 9234 `"Support workers in the wood, paper, and cardboard industry"', add
label define mx10a_occ_lbl 9235 `"Support workers in the textile and shoe industries"', add
label define mx10a_occ_lbl 9236 `"Support workers in the food, beverages, and tobacco industries"', add
label define mx10a_occ_lbl 9237 `"Support workers in the ceramic, glass, and similar industries"', add
label define mx10a_occ_lbl 9239 `"Support workers in industrial activities not elsewhere classified"', add
label define mx10a_occ_lbl 9311 `"Driver helpers in motorized land transport"', add
label define mx10a_occ_lbl 9312 `"Driver helpers in railways transport"', add
label define mx10a_occ_lbl 9321 `"Drivers of cycling transportation vehicles"', add
label define mx10a_occ_lbl 9322 `"Drivers of animal-powered transport (carts, carriers)"', add
label define mx10a_occ_lbl 9331 `"Loaders"', add
label define mx10a_occ_lbl 9332 `"Loaders receiving tips"', add
label define mx10a_occ_lbl 9411 `"Helpers in food preparation"', add
label define mx10a_occ_lbl 9511 `"Newspaper and lottery vendors"', add
label define mx10a_occ_lbl 9512 `"Street vendors of diverse products (excluding food sales)"', add
label define mx10a_occ_lbl 9521 `"Preparers and street food vendors"', add
label define mx10a_occ_lbl 9601 `"Supervisors in cleaning, housekeeping, of butlers and parking lots"', add
label define mx10a_occ_lbl 9611 `"Domestic workers"', add
label define mx10a_occ_lbl 9621 `"Sweepers and janitors (except in hotels and restaurants)"', add
label define mx10a_occ_lbl 9622 `"Room maids and maids"', add
label define mx10a_occ_lbl 9623 `"Hotel and restaurant waiters"', add
label define mx10a_occ_lbl 9624 `"Shoe cleaners"', add
label define mx10a_occ_lbl 9631 `"Vehicle cleaners in establishments"', add
label define mx10a_occ_lbl 9632 `"Vehicle cleaners in the street"', add
label define mx10a_occ_lbl 9633 `"Valet parking and vehicle caretakers in parking lots"', add
label define mx10a_occ_lbl 9634 `"Vehicle caretakers receiving tips"', add
label define mx10a_occ_lbl 9641 `"Launderers in establishments"', add
label define mx10a_occ_lbl 9642 `"Pressers and dry cleaners in establishments"', add
label define mx10a_occ_lbl 9643 `"Domestic launderers and pressers"', add
label define mx10a_occ_lbl 9651 `"Assistant gardener"', add
label define mx10a_occ_lbl 9661 `"Garbage and recyclable material collectors"', add
label define mx10a_occ_lbl 9662 `"Waste sorter"', add
label define mx10a_occ_lbl 9663 `"Collectors of other materials"', add
label define mx10a_occ_lbl 9711 `"Parcel workers, hotel porters and buttons"', add
label define mx10a_occ_lbl 9712 `"Packers of objects and goods"', add
label define mx10a_occ_lbl 9713 `"Support workers in the performance of shows, sports, and in amusement parks"', add
label define mx10a_occ_lbl 9721 `"Postmen (walking and cycling)"', add
label define mx10a_occ_lbl 9722 `"Mail deliverers (walking and cycling) and messengers"', add
label define mx10a_occ_lbl 9723 `"Deliverers of goods (walking and cycling)"', add
label define mx10a_occ_lbl 9731 `"Meter readers"', add
label define mx10a_occ_lbl 9732 `"Money collectors"', add
label define mx10a_occ_lbl 9733 `"Elevator operators"', add
label define mx10a_occ_lbl 9888 `"Other workers in elementary and support activities not elsewhere classified"', add
label define mx10a_occ_lbl 9998 `"Unknown"', add
label define mx10a_occ_lbl 9999 `"NIU (not in universe)"', add
label values mx10a_occ mx10a_occ_lbl

label define mx10a_classwk_lbl 1 `"Employee or worker"'
label define mx10a_classwk_lbl 2 `"Laborer"', add
label define mx10a_classwk_lbl 3 `"Assistant/helper"', add
label define mx10a_classwk_lbl 4 `"Owner or employer"', add
label define mx10a_classwk_lbl 5 `"Self-employed"', add
label define mx10a_classwk_lbl 6 `"Unpaid family worker"', add
label define mx10a_classwk_lbl 8 `"Unknown"', add
label define mx10a_classwk_lbl 9 `"NIU (not in universe)"', add
label values mx10a_classwk mx10a_classwk_lbl

label define mx10a_hlthbens_lbl 1 `"Yes"'
label define mx10a_hlthbens_lbl 2 `"No"', add
label define mx10a_hlthbens_lbl 8 `"Unknown"', add
label define mx10a_hlthbens_lbl 9 `"NIU (not in universe)"', add
label values mx10a_hlthbens mx10a_hlthbens_lbl

label define mx10a_bonus_lbl 1 `"Yes"'
label define mx10a_bonus_lbl 2 `"No"', add
label define mx10a_bonus_lbl 8 `"Unknown"', add
label define mx10a_bonus_lbl 9 `"NIU (not in universe)"', add
label values mx10a_bonus mx10a_bonus_lbl

label define mx10a_vacpay_lbl 1 `"Yes"'
label define mx10a_vacpay_lbl 2 `"No"', add
label define mx10a_vacpay_lbl 8 `"Unknown"', add
label define mx10a_vacpay_lbl 9 `"NIU (not in universe)"', add
label values mx10a_vacpay mx10a_vacpay_lbl

label define mx10a_profshar_lbl 1 `"Yes"'
label define mx10a_profshar_lbl 2 `"No"', add
label define mx10a_profshar_lbl 8 `"Unknown"', add
label define mx10a_profshar_lbl 9 `"NIU (not in universe)"', add
label values mx10a_profshar mx10a_profshar_lbl

label define mx10a_retire_lbl 1 `"Yes"'
label define mx10a_retire_lbl 2 `"No"', add
label define mx10a_retire_lbl 8 `"Unknown"', add
label define mx10a_retire_lbl 9 `"NIU (not in universe)"', add
label values mx10a_retire mx10a_retire_lbl

label define mx10a_hrswork_lbl 000 `"0 (had a job, did not work)"'
label define mx10a_hrswork_lbl 001 `"1"', add
label define mx10a_hrswork_lbl 002 `"2"', add
label define mx10a_hrswork_lbl 003 `"3"', add
label define mx10a_hrswork_lbl 004 `"4"', add
label define mx10a_hrswork_lbl 005 `"5"', add
label define mx10a_hrswork_lbl 006 `"6"', add
label define mx10a_hrswork_lbl 007 `"7"', add
label define mx10a_hrswork_lbl 008 `"8"', add
label define mx10a_hrswork_lbl 009 `"9"', add
label define mx10a_hrswork_lbl 010 `"10"', add
label define mx10a_hrswork_lbl 011 `"11"', add
label define mx10a_hrswork_lbl 012 `"12"', add
label define mx10a_hrswork_lbl 013 `"13"', add
label define mx10a_hrswork_lbl 014 `"14"', add
label define mx10a_hrswork_lbl 015 `"15"', add
label define mx10a_hrswork_lbl 016 `"16"', add
label define mx10a_hrswork_lbl 017 `"17"', add
label define mx10a_hrswork_lbl 018 `"18"', add
label define mx10a_hrswork_lbl 019 `"19"', add
label define mx10a_hrswork_lbl 020 `"20"', add
label define mx10a_hrswork_lbl 021 `"21"', add
label define mx10a_hrswork_lbl 022 `"22"', add
label define mx10a_hrswork_lbl 023 `"23"', add
label define mx10a_hrswork_lbl 024 `"24"', add
label define mx10a_hrswork_lbl 025 `"25"', add
label define mx10a_hrswork_lbl 026 `"26"', add
label define mx10a_hrswork_lbl 027 `"27"', add
label define mx10a_hrswork_lbl 028 `"28"', add
label define mx10a_hrswork_lbl 029 `"29"', add
label define mx10a_hrswork_lbl 030 `"30"', add
label define mx10a_hrswork_lbl 031 `"31"', add
label define mx10a_hrswork_lbl 032 `"32"', add
label define mx10a_hrswork_lbl 033 `"33"', add
label define mx10a_hrswork_lbl 034 `"34"', add
label define mx10a_hrswork_lbl 035 `"35"', add
label define mx10a_hrswork_lbl 036 `"36"', add
label define mx10a_hrswork_lbl 037 `"37"', add
label define mx10a_hrswork_lbl 038 `"38"', add
label define mx10a_hrswork_lbl 039 `"39"', add
label define mx10a_hrswork_lbl 040 `"40"', add
label define mx10a_hrswork_lbl 041 `"41"', add
label define mx10a_hrswork_lbl 042 `"42"', add
label define mx10a_hrswork_lbl 043 `"43"', add
label define mx10a_hrswork_lbl 044 `"44"', add
label define mx10a_hrswork_lbl 045 `"45"', add
label define mx10a_hrswork_lbl 046 `"46"', add
label define mx10a_hrswork_lbl 047 `"47"', add
label define mx10a_hrswork_lbl 048 `"48"', add
label define mx10a_hrswork_lbl 049 `"49"', add
label define mx10a_hrswork_lbl 050 `"50"', add
label define mx10a_hrswork_lbl 051 `"51"', add
label define mx10a_hrswork_lbl 052 `"52"', add
label define mx10a_hrswork_lbl 053 `"53"', add
label define mx10a_hrswork_lbl 054 `"54"', add
label define mx10a_hrswork_lbl 055 `"55"', add
label define mx10a_hrswork_lbl 056 `"56"', add
label define mx10a_hrswork_lbl 057 `"57"', add
label define mx10a_hrswork_lbl 058 `"58"', add
label define mx10a_hrswork_lbl 059 `"59"', add
label define mx10a_hrswork_lbl 060 `"60"', add
label define mx10a_hrswork_lbl 061 `"61"', add
label define mx10a_hrswork_lbl 062 `"62"', add
label define mx10a_hrswork_lbl 063 `"63"', add
label define mx10a_hrswork_lbl 064 `"64"', add
label define mx10a_hrswork_lbl 065 `"65"', add
label define mx10a_hrswork_lbl 066 `"66"', add
label define mx10a_hrswork_lbl 067 `"67"', add
label define mx10a_hrswork_lbl 068 `"68"', add
label define mx10a_hrswork_lbl 069 `"69"', add
label define mx10a_hrswork_lbl 070 `"70"', add
label define mx10a_hrswork_lbl 071 `"71"', add
label define mx10a_hrswork_lbl 072 `"72"', add
label define mx10a_hrswork_lbl 073 `"73"', add
label define mx10a_hrswork_lbl 074 `"74"', add
label define mx10a_hrswork_lbl 075 `"75"', add
label define mx10a_hrswork_lbl 076 `"76"', add
label define mx10a_hrswork_lbl 077 `"77"', add
label define mx10a_hrswork_lbl 078 `"78"', add
label define mx10a_hrswork_lbl 079 `"79"', add
label define mx10a_hrswork_lbl 080 `"80"', add
label define mx10a_hrswork_lbl 081 `"81"', add
label define mx10a_hrswork_lbl 082 `"82"', add
label define mx10a_hrswork_lbl 083 `"83"', add
label define mx10a_hrswork_lbl 084 `"84"', add
label define mx10a_hrswork_lbl 085 `"85"', add
label define mx10a_hrswork_lbl 086 `"86"', add
label define mx10a_hrswork_lbl 087 `"87"', add
label define mx10a_hrswork_lbl 088 `"88"', add
label define mx10a_hrswork_lbl 089 `"89"', add
label define mx10a_hrswork_lbl 090 `"90"', add
label define mx10a_hrswork_lbl 091 `"91"', add
label define mx10a_hrswork_lbl 092 `"92"', add
label define mx10a_hrswork_lbl 093 `"93"', add
label define mx10a_hrswork_lbl 094 `"94"', add
label define mx10a_hrswork_lbl 095 `"95"', add
label define mx10a_hrswork_lbl 096 `"96"', add
label define mx10a_hrswork_lbl 097 `"97"', add
label define mx10a_hrswork_lbl 098 `"98"', add
label define mx10a_hrswork_lbl 099 `"99"', add
label define mx10a_hrswork_lbl 100 `"100"', add
label define mx10a_hrswork_lbl 101 `"101"', add
label define mx10a_hrswork_lbl 102 `"102"', add
label define mx10a_hrswork_lbl 103 `"103"', add
label define mx10a_hrswork_lbl 104 `"104"', add
label define mx10a_hrswork_lbl 105 `"105"', add
label define mx10a_hrswork_lbl 106 `"106"', add
label define mx10a_hrswork_lbl 107 `"107"', add
label define mx10a_hrswork_lbl 108 `"108"', add
label define mx10a_hrswork_lbl 109 `"109"', add
label define mx10a_hrswork_lbl 110 `"110"', add
label define mx10a_hrswork_lbl 111 `"111"', add
label define mx10a_hrswork_lbl 112 `"112"', add
label define mx10a_hrswork_lbl 113 `"113"', add
label define mx10a_hrswork_lbl 114 `"114"', add
label define mx10a_hrswork_lbl 115 `"115"', add
label define mx10a_hrswork_lbl 116 `"116"', add
label define mx10a_hrswork_lbl 117 `"117"', add
label define mx10a_hrswork_lbl 118 `"118"', add
label define mx10a_hrswork_lbl 119 `"119"', add
label define mx10a_hrswork_lbl 120 `"120"', add
label define mx10a_hrswork_lbl 121 `"121"', add
label define mx10a_hrswork_lbl 122 `"122"', add
label define mx10a_hrswork_lbl 123 `"123"', add
label define mx10a_hrswork_lbl 124 `"124"', add
label define mx10a_hrswork_lbl 125 `"125"', add
label define mx10a_hrswork_lbl 126 `"126"', add
label define mx10a_hrswork_lbl 127 `"127"', add
label define mx10a_hrswork_lbl 128 `"128"', add
label define mx10a_hrswork_lbl 129 `"129"', add
label define mx10a_hrswork_lbl 130 `"130"', add
label define mx10a_hrswork_lbl 131 `"131"', add
label define mx10a_hrswork_lbl 132 `"132"', add
label define mx10a_hrswork_lbl 133 `"133"', add
label define mx10a_hrswork_lbl 134 `"134"', add
label define mx10a_hrswork_lbl 135 `"135"', add
label define mx10a_hrswork_lbl 136 `"136"', add
label define mx10a_hrswork_lbl 137 `"137"', add
label define mx10a_hrswork_lbl 138 `"138"', add
label define mx10a_hrswork_lbl 139 `"139"', add
label define mx10a_hrswork_lbl 140 `"140"', add
label define mx10a_hrswork_lbl 141 `"141"', add
label define mx10a_hrswork_lbl 142 `"142"', add
label define mx10a_hrswork_lbl 143 `"143"', add
label define mx10a_hrswork_lbl 144 `"144"', add
label define mx10a_hrswork_lbl 145 `"145"', add
label define mx10a_hrswork_lbl 146 `"146"', add
label define mx10a_hrswork_lbl 147 `"147"', add
label define mx10a_hrswork_lbl 148 `"148"', add
label define mx10a_hrswork_lbl 149 `"149"', add
label define mx10a_hrswork_lbl 150 `"150"', add
label define mx10a_hrswork_lbl 151 `"151"', add
label define mx10a_hrswork_lbl 152 `"152"', add
label define mx10a_hrswork_lbl 153 `"153"', add
label define mx10a_hrswork_lbl 154 `"154"', add
label define mx10a_hrswork_lbl 155 `"155"', add
label define mx10a_hrswork_lbl 156 `"156"', add
label define mx10a_hrswork_lbl 157 `"157"', add
label define mx10a_hrswork_lbl 158 `"158"', add
label define mx10a_hrswork_lbl 159 `"159"', add
label define mx10a_hrswork_lbl 160 `"160"', add
label define mx10a_hrswork_lbl 161 `"161"', add
label define mx10a_hrswork_lbl 162 `"162"', add
label define mx10a_hrswork_lbl 163 `"163"', add
label define mx10a_hrswork_lbl 164 `"164"', add
label define mx10a_hrswork_lbl 165 `"165"', add
label define mx10a_hrswork_lbl 166 `"166"', add
label define mx10a_hrswork_lbl 167 `"167"', add
label define mx10a_hrswork_lbl 168 `"168"', add
label define mx10a_hrswork_lbl 998 `"Unknown"', add
label define mx10a_hrswork_lbl 999 `"NIU (not in universe)"', add
label values mx10a_hrswork mx10a_hrswork_lbl

label define mx10a_income_lbl 000000 `"No income received"'
label define mx10a_income_lbl 999997 `"More than 999,999 pesos"', add
label define mx10a_income_lbl 999998 `"Unknown"', add
label define mx10a_income_lbl 999999 `"NIU (not in universe)"', add
label values mx10a_income mx10a_income_lbl

label define mx10a_ind_lbl 1110 `"Agriculture"'
label define mx10a_ind_lbl 1121 `"Animal breeding and exploitation"', add
label define mx10a_ind_lbl 1122 `"Aquaculture"', add
label define mx10a_ind_lbl 1130 `"Forestry"', add
label define mx10a_ind_lbl 1141 `"Fishing"', add
label define mx10a_ind_lbl 1142 `"Hunting and trapping"', add
label define mx10a_ind_lbl 1150 `"Services related to agricultural and forestry activities"', add
label define mx10a_ind_lbl 1199 `"Insufficiently specified descriptions of sub-sector 11 activities: agriculture, animal breeding and production, forestry, fishing and hunting"', add
label define mx10a_ind_lbl 2110 `"Oil and gas extraction"', add
label define mx10a_ind_lbl 2121 `"Coal mining"', add
label define mx10a_ind_lbl 2122 `"Mining of metal ores"', add
label define mx10a_ind_lbl 2123 `"Non-metallic mineral mining"', add
label define mx10a_ind_lbl 2129 `"Insufficiently specified descriptions of metallic and non-metallic mineral extraction activities"', add
label define mx10a_ind_lbl 2131 `"Services incidental to mining"', add
label define mx10a_ind_lbl 2132 `"Drilling of oil and gas wells"', add
label define mx10a_ind_lbl 2199 `"Insufficiently specified descriptions of sub-sector 21 activities: mining"', add
label define mx10a_ind_lbl 2210 `"Generation, transmission and distribution of electricity"', add
label define mx10a_ind_lbl 2221 `"Collection, treatment and water supply"', add
label define mx10a_ind_lbl 2222 `"Pipeline gas supply to final consumers"', add
label define mx10a_ind_lbl 2361 `"Residential building construction"', add
label define mx10a_ind_lbl 2362 `"Residential building self-construction"', add
label define mx10a_ind_lbl 2363 `"Non-residential building construction"', add
label define mx10a_ind_lbl 2370 `"Construction of civil engineering works"', add
label define mx10a_ind_lbl 2381 `"Construction specialized jobs"', add
label define mx10a_ind_lbl 2382 `"Bricklaying, plumbing, and electrical installations and outdoors works"', add
label define mx10a_ind_lbl 2399 `"Insufficiently specified descriptions of sub-sector 23 activities: construction"', add
label define mx10a_ind_lbl 3110 `"Food industry"', add
label define mx10a_ind_lbl 3120 `"Beverage and tobacco industry"', add
label define mx10a_ind_lbl 3130 `"Manufacture of textile inputs and textile finishing"', add
label define mx10a_ind_lbl 3140 `"Manufacture of textiles, except apparel"', add
label define mx10a_ind_lbl 3150 `"Apparel manufacture"', add
label define mx10a_ind_lbl 3160 `"Tanning and dressing of leather and fur and manufacture of leather, fur and artificial materials products"', add
label define mx10a_ind_lbl 3210 `"Wood industry"', add
label define mx10a_ind_lbl 3220 `"Paper industry"', add
label define mx10a_ind_lbl 3230 `"Printing and related industries"', add
label define mx10a_ind_lbl 3240 `"Manufacture of petroleum and coal derivated products"', add
label define mx10a_ind_lbl 3250 `"Chemical industry"', add
label define mx10a_ind_lbl 3260 `"Plastics and rubber industry"', add
label define mx10a_ind_lbl 3270 `"Manufacture of products based on non-metallic minerals"', add
label define mx10a_ind_lbl 3310 `"Basic metal industries"', add
label define mx10a_ind_lbl 3320 `"Manufacture of metal products"', add
label define mx10a_ind_lbl 3330 `"Manufacture of machinery and equipment"', add
label define mx10a_ind_lbl 3340 `"Manufacture of computer, communication, measurement and other equipment, electronic components and accessories"', add
label define mx10a_ind_lbl 3350 `"Manufacture of accessories, electrical appliances and equipment for power generation"', add
label define mx10a_ind_lbl 3360 `"Manufacture of transport equipment and parts for motor vehicles"', add
label define mx10a_ind_lbl 3370 `"Manufacture of furniture, mattresses and blinds"', add
label define mx10a_ind_lbl 3380 `"Other manufacturing industries"', add
label define mx10a_ind_lbl 3399 `"Insufficiently specified descriptions of sub-sector 31-33 activities: manufacturing"', add
label define mx10a_ind_lbl 4310 `"Wholesale of groceries, food, drinks, ice and tobacco"', add
label define mx10a_ind_lbl 4320 `"Wholesale of textile products and footwear"', add
label define mx10a_ind_lbl 4330 `"Wholesale of pharmaceutical products, perfumery, leisure items, and home appliances"', add
label define mx10a_ind_lbl 4340 `"Wholesale of agriculture and forestry raw materials, for the industry, and waste materials"', add
label define mx10a_ind_lbl 4350 `"Wholesale of machinery, equipment, and furniture for farming, industrial and commercial services, and other machinery and equipment for general use"', add
label define mx10a_ind_lbl 4360 `"Wholesale of trucks and parts and new parts for cars, vans and trucks"', add
label define mx10a_ind_lbl 4370 `"Brokerage wholesale"', add
label define mx10a_ind_lbl 4399 `"Insufficiently specified descriptions of sub-sector 43 activities: wholesale"', add
label define mx10a_ind_lbl 4611 `"Retail sale of groceries, food, drinks, ice, and tobacco"', add
label define mx10a_ind_lbl 4612 `"Street vending of groceries, food, drinks, ice, and tobacco"', add
label define mx10a_ind_lbl 4620 `"Retail sale in self-service and department stores"', add
label define mx10a_ind_lbl 4631 `"Retail sale of textiles, jewelry, clothing accessories, and footwear"', add
label define mx10a_ind_lbl 4632 `"Street vending of textiles, jewelry, clothing accessories, and footwear"', add
label define mx10a_ind_lbl 4641 `"Retail sale of items for health care"', add
label define mx10a_ind_lbl 4642 `"Street vending of items for the health care"', add
label define mx10a_ind_lbl 4651 `"Retail sale of stationery, recreation, and other personal items"', add
label define mx10a_ind_lbl 4652 `"Street vending of stationery, recreation, and other personal items"', add
label define mx10a_ind_lbl 4661 `"Retail sale of household goods, computers, articles for interior decoration and used items"', add
label define mx10a_ind_lbl 4662 `"Street vending of furniture, household items, and used items"', add
label define mx10a_ind_lbl 4671 `"Retail sale of hardware and glass items"', add
label define mx10a_ind_lbl 4672 `"Street vending of hardware and glass items"', add
label define mx10a_ind_lbl 4681 `"Retail sale of motor vehicles, parts, fuels and lubricants"', add
label define mx10a_ind_lbl 4682 `"Street vending of parts and spare parts for cars, vans, and fuel"', add
label define mx10a_ind_lbl 4690 `"Retail sale exclusively through the internet, and printed catalogs, television and similar"', add
label define mx10a_ind_lbl 4699 `"Insufficiently specified descriptions of the sub-sector 46 activities: retail trade"', add
label define mx10a_ind_lbl 4810 `"Air transport"', add
label define mx10a_ind_lbl 4820 `"Rail transport"', add
label define mx10a_ind_lbl 4830 `"Water transport"', add
label define mx10a_ind_lbl 4840 `"Ground transport"', add
label define mx10a_ind_lbl 4850 `"Ground transport of passengers, except by rail"', add
label define mx10a_ind_lbl 4860 `"Pipeline transport"', add
label define mx10a_ind_lbl 4870 `"Tourist transport"', add
label define mx10a_ind_lbl 4881 `"Transportation-related services"', add
label define mx10a_ind_lbl 4882 `"Repair and exterior cleaning of aircraft, ships, and trains"', add
label define mx10a_ind_lbl 4899 `"Insufficiently specified descriptions of sub-sector 48 activities: transport"', add
label define mx10a_ind_lbl 4910 `"Postal services"', add
label define mx10a_ind_lbl 4920 `"Package delivery and messenger services"', add
label define mx10a_ind_lbl 4930 `"Storage services"', add
label define mx10a_ind_lbl 5110 `"Publishing of newspapers, magazines, books, software and other materials, and editing of these publications integrated with printing"', add
label define mx10a_ind_lbl 5120 `"Film and video industry, and sound industry"', add
label define mx10a_ind_lbl 5150 `"Radio and TV"', add
label define mx10a_ind_lbl 5170 `"Other telecommunications"', add
label define mx10a_ind_lbl 5180 `"Electronic data processing, hosting, and related services"', add
label define mx10a_ind_lbl 5190 `"Other information services"', add
label define mx10a_ind_lbl 5199 `"Insufficiently specified descriptions of sub-sector 51 activities: mass media information"', add
label define mx10a_ind_lbl 5210 `"Central banking (Bank of Mexico)"', add
label define mx10a_ind_lbl 5221 `"Commercial banking and trust fund and private sector fund management"', add
label define mx10a_ind_lbl 5222 `"Other credit and financial intermediation institutions, non-stock trading, in the private sector"', add
label define mx10a_ind_lbl 5223 `"Development banks, and trust fund management for the public sector"', add
label define mx10a_ind_lbl 5229 `"Insufficiently specified descriptions of financial, non-stock trading, services"', add
label define mx10a_ind_lbl 5230 `"Stock trading, currency, and financial investment activities"', add
label define mx10a_ind_lbl 5240 `"Bonding, insurance and pensions companies"', add
label define mx10a_ind_lbl 5299 `"Insufficiently specified descriptions of sub-sector 52 activities: financial and insurance services"', add
label define mx10a_ind_lbl 5310 `"Real estate"', add
label define mx10a_ind_lbl 5321 `"Renting of cars, trucks, and other land transport"', add
label define mx10a_ind_lbl 5322 `"Rental services and rental centers of goods, except land transport equipment"', add
label define mx10a_ind_lbl 5330 `"Rental services of trademarks, patents, and franchises"', add
label define mx10a_ind_lbl 5399 `"Insufficiently specified descriptions of the sub-sector 53 activities: real estate and rental of physical and intangible goods"', add
label define mx10a_ind_lbl 5411 `"Professional, scientific, and technical services"', add
label define mx10a_ind_lbl 5412 `"Scientific research and development services"', add
label define mx10a_ind_lbl 5413 `"Veterinary services"', add
label define mx10a_ind_lbl 5414 `"Photography services"', add
label define mx10a_ind_lbl 5510 `"Corporate services"', add
label define mx10a_ind_lbl 5611 `"Support services for business, employment, secretarial and other support services to business"', add
label define mx10a_ind_lbl 5612 `"Cleaning services for interiors of aircrafts, ships, and trains"', add
label define mx10a_ind_lbl 5613 `"Cleaning, installation, and maintenance of green areas"', add
label define mx10a_ind_lbl 5614 `"Research services, protection and security"', add
label define mx10a_ind_lbl 5615 `"Travel agencies and booking services"', add
label define mx10a_ind_lbl 5616 `"Combined services facilities support"', add
label define mx10a_ind_lbl 5620 `"Waste management and remediation services"', add
label define mx10a_ind_lbl 6111 `"Elementary, secondary and special school in the private sector"', add
label define mx10a_ind_lbl 6112 `"Elementary, secondary and special school in the public sector"', add
label define mx10a_ind_lbl 6119 `"Elementary, secondary and special school, unspecified private or public sector"', add
label define mx10a_ind_lbl 6121 `"Superior technical schools, non-university based, in the private sector"', add
label define mx10a_ind_lbl 6122 `"Superior technical schools, non-university based, in the public sector"', add
label define mx10a_ind_lbl 6129 `"Superior technical schools, non-university based, unspecified private or public sector"', add
label define mx10a_ind_lbl 6131 `"Universities in the private sector"', add
label define mx10a_ind_lbl 6132 `"Universities in the public sector"', add
label define mx10a_ind_lbl 6139 `"Universities, unspecified private or public sector"', add
label define mx10a_ind_lbl 6141 `"Other educational services in the private sector"', add
label define mx10a_ind_lbl 6142 `"Other educational services in the public sector"', add
label define mx10a_ind_lbl 6149 `"Other educational services, unspecified private or public sector"', add
label define mx10a_ind_lbl 6150 `"Support services to education"', add
label define mx10a_ind_lbl 6199 `"Insufficiently specified descriptions of the sub-sector 61 activities: educational services"', add
label define mx10a_ind_lbl 6211 `"Outpatient medical services and related services in the private sector"', add
label define mx10a_ind_lbl 6212 `"Outpatient medical services and related services in the public sector"', add
label define mx10a_ind_lbl 6219 `"Outpatient medical services and services, unspecified private or public sector"', add
label define mx10a_ind_lbl 6221 `"Hospitals in the private sector"', add
label define mx10a_ind_lbl 6222 `"Hospitals in the public sector"', add
label define mx10a_ind_lbl 6229 `"Hospitals, unspecified private or public sector"', add
label define mx10a_ind_lbl 6231 `"Residential welfare and health care in the private sector"', add
label define mx10a_ind_lbl 6232 `"Residential welfare and health care in the public sector"', add
label define mx10a_ind_lbl 6239 `"Residential welfare and health care, unspecified private or public sector"', add
label define mx10a_ind_lbl 6241 `"Other social care services in the private sector"', add
label define mx10a_ind_lbl 6242 `"Other social care services in the public sector"', add
label define mx10a_ind_lbl 6249 `"Other social services, unspecified private or public sector"', add
label define mx10a_ind_lbl 6251 `"Nurseries in the private sector"', add
label define mx10a_ind_lbl 6252 `"Nurseries in the public sector"', add
label define mx10a_ind_lbl 6259 `"Nurseries, unspecified private or public sector"', add
label define mx10a_ind_lbl 6299 `"Insufficiently specified descriptions of the sub-sector 62 activities: health services and social assistance"', add
label define mx10a_ind_lbl 7111 `"Performing arts companies and groups"', add
label define mx10a_ind_lbl 7112 `"Athletes and professional sports teams, professional and amateur"', add
label define mx10a_ind_lbl 7113 `"Promoters, agents and representatives of performing arts, sports, and similar activities"', add
label define mx10a_ind_lbl 7114 `"Artists, writers and independent technicians"', add
label define mx10a_ind_lbl 7115 `"Performing arts street workers"', add
label define mx10a_ind_lbl 7120 `"Museums, historical sites, zoos and similar"', add
label define mx10a_ind_lbl 7131 `"Parks with recreational facilities and houses of electronic games"', add
label define mx10a_ind_lbl 7132 `"Sale of national lottery tickets"', add
label define mx10a_ind_lbl 7133 `"Street vending of national lottery tickets"', add
label define mx10a_ind_lbl 7210 `"Temporary accommodation services"', add
label define mx10a_ind_lbl 7221 `"Food and beverage preparation services"', add
label define mx10a_ind_lbl 7222 `"Food and beverage preparation services for street vending"', add
label define mx10a_ind_lbl 7223 `"Nightclubs"', add
label define mx10a_ind_lbl 8111 `"Repair and maintenance of cars and trucks"', add
label define mx10a_ind_lbl 8112 `"Repair and maintenance of equipment, machinery, household and personal goods"', add
label define mx10a_ind_lbl 8119 `"Insufficiently specified descriptions of repair and maintenance"', add
label define mx10a_ind_lbl 8121 `"Personal services"', add
label define mx10a_ind_lbl 8122 `"Parking for motor vehicles"', add
label define mx10a_ind_lbl 8123 `"Street care and car wash services"', add
label define mx10a_ind_lbl 8124 `"Processing and printing pictures services"', add
label define mx10a_ind_lbl 8125 `"Cemeteries management services"', add
label define mx10a_ind_lbl 8130 `"Associations and organizations"', add
label define mx10a_ind_lbl 8140 `"Homes with domestic workers"', add
label define mx10a_ind_lbl 9311 `"Legislative bodies"', add
label define mx10a_ind_lbl 9312 `"Federal public administration"', add
label define mx10a_ind_lbl 9313 `"State public administration"', add
label define mx10a_ind_lbl 9314 `"Municipal public administration"', add
label define mx10a_ind_lbl 9319 `"Descriptions of public administration that do not specify the level of government"', add
label define mx10a_ind_lbl 9320 `"International and extraterritorial organizations"', add
label define mx10a_ind_lbl 9399 `"Insufficiently specified descriptions of the sub-sector 93 activities: government and international and extraterritorial organizations"', add
label define mx10a_ind_lbl 9998 `"Unknown"', add
label define mx10a_ind_lbl 9999 `"NIU (not in universe)"', add
label values mx10a_ind mx10a_ind_lbl

label define mx10a_statewrk_lbl 001 `"Aguascalientes"'
label define mx10a_statewrk_lbl 002 `"Baja California"', add
label define mx10a_statewrk_lbl 003 `"Baja California Sur"', add
label define mx10a_statewrk_lbl 004 `"Campeche"', add
label define mx10a_statewrk_lbl 005 `"Coahuila de Zaragoza"', add
label define mx10a_statewrk_lbl 006 `"Colima"', add
label define mx10a_statewrk_lbl 007 `"Chiapas"', add
label define mx10a_statewrk_lbl 008 `"Chihuahua"', add
label define mx10a_statewrk_lbl 009 `"Distrito Federal"', add
label define mx10a_statewrk_lbl 010 `"Durango"', add
label define mx10a_statewrk_lbl 011 `"Guanajuato"', add
label define mx10a_statewrk_lbl 012 `"Guerrero"', add
label define mx10a_statewrk_lbl 013 `"Hidalgo"', add
label define mx10a_statewrk_lbl 014 `"Jalisco"', add
label define mx10a_statewrk_lbl 015 `"México"', add
label define mx10a_statewrk_lbl 016 `"Michoacán de Ocampo"', add
label define mx10a_statewrk_lbl 017 `"Morelos"', add
label define mx10a_statewrk_lbl 018 `"Nayarit"', add
label define mx10a_statewrk_lbl 019 `"Nuevo León"', add
label define mx10a_statewrk_lbl 020 `"Oaxaca"', add
label define mx10a_statewrk_lbl 021 `"Puebla"', add
label define mx10a_statewrk_lbl 022 `"Querétaro"', add
label define mx10a_statewrk_lbl 023 `"Quintana Roo"', add
label define mx10a_statewrk_lbl 024 `"San Luis Potosí"', add
label define mx10a_statewrk_lbl 025 `"Sinaloa"', add
label define mx10a_statewrk_lbl 026 `"Sonora"', add
label define mx10a_statewrk_lbl 027 `"Tabasco"', add
label define mx10a_statewrk_lbl 028 `"Tamaulipas"', add
label define mx10a_statewrk_lbl 029 `"Tlaxcala"', add
label define mx10a_statewrk_lbl 030 `"Veracruz de Ignacio de la Llave"', add
label define mx10a_statewrk_lbl 031 `"Yucatán"', add
label define mx10a_statewrk_lbl 032 `"Zacatecas"', add
label define mx10a_statewrk_lbl 100 `"Africa, no country specified"', add
label define mx10a_statewrk_lbl 101 `"Angola"', add
label define mx10a_statewrk_lbl 114 `"Ivory Coast"', add
label define mx10a_statewrk_lbl 119 `"Ethiopia"', add
label define mx10a_statewrk_lbl 122 `"Ghana"', add
label define mx10a_statewrk_lbl 142 `"Nigeria"', add
label define mx10a_statewrk_lbl 154 `"South Africa"', add
label define mx10a_statewrk_lbl 200 `"Americas, no country specified"', add
label define mx10a_statewrk_lbl 204 `"Argentina"', add
label define mx10a_statewrk_lbl 206 `"Bahamas Islands"', add
label define mx10a_statewrk_lbl 208 `"Belize"', add
label define mx10a_statewrk_lbl 210 `"Bolivia"', add
label define mx10a_statewrk_lbl 211 `"Brazil"', add
label define mx10a_statewrk_lbl 213 `"Canada"', add
label define mx10a_statewrk_lbl 214 `"Colombia"', add
label define mx10a_statewrk_lbl 215 `"Costa Rica"', add
label define mx10a_statewrk_lbl 216 `"Cuba"', add
label define mx10a_statewrk_lbl 217 `"Chile"', add
label define mx10a_statewrk_lbl 219 `"Ecuador"', add
label define mx10a_statewrk_lbl 220 `"El Salvador"', add
label define mx10a_statewrk_lbl 221 `"USA"', add
label define mx10a_statewrk_lbl 222 `"Grenada Island"', add
label define mx10a_statewrk_lbl 225 `"Guatemala"', add
label define mx10a_statewrk_lbl 226 `"British Guyana"', add
label define mx10a_statewrk_lbl 229 `"Honduras"', add
label define mx10a_statewrk_lbl 230 `"Jamaica Island"', add
label define mx10a_statewrk_lbl 235 `"Panama"', add
label define mx10a_statewrk_lbl 236 `"Paraguay"', add
label define mx10a_statewrk_lbl 237 `"Peru"', add
label define mx10a_statewrk_lbl 238 `"Puerto Rico"', add
label define mx10a_statewrk_lbl 239 `"Dominican Republic"', add
label define mx10a_statewrk_lbl 250 `"Venezuela"', add
label define mx10a_statewrk_lbl 302 `"Saudi Arabia"', add
label define mx10a_statewrk_lbl 313 `"South Korea"', add
label define mx10a_statewrk_lbl 315 `"China"', add
label define mx10a_statewrk_lbl 322 `"Philippines"', add
label define mx10a_statewrk_lbl 325 `"India"', add
label define mx10a_statewrk_lbl 327 `"Iran"', add
label define mx10a_statewrk_lbl 330 `"Japan"', add
label define mx10a_statewrk_lbl 337 `"Malaysia"', add
label define mx10a_statewrk_lbl 344 `"Qatar"', add
label define mx10a_statewrk_lbl 346 `"Singapore"', add
label define mx10a_statewrk_lbl 400 `"Europe"', add
label define mx10a_statewrk_lbl 402 `"Germany"', add
label define mx10a_statewrk_lbl 408 `"Belgium"', add
label define mx10a_statewrk_lbl 412 `"Denmark"', add
label define mx10a_statewrk_lbl 415 `"Spain"', add
label define mx10a_statewrk_lbl 418 `"Finland"', add
label define mx10a_statewrk_lbl 419 `"France"', add
label define mx10a_statewrk_lbl 421 `"Greece"', add
label define mx10a_statewrk_lbl 423 `"Ireland"', add
label define mx10a_statewrk_lbl 425 `"Italy"', add
label define mx10a_statewrk_lbl 436 `"Holland"', add
label define mx10a_statewrk_lbl 438 `"Portugal"', add
label define mx10a_statewrk_lbl 439 `"England"', add
label define mx10a_statewrk_lbl 445 `"Sweden"', add
label define mx10a_statewrk_lbl 446 `"Switzerland"', add
label define mx10a_statewrk_lbl 600 `"Another country, not specified"', add
label define mx10a_statewrk_lbl 998 `"Unknown"', add
label define mx10a_statewrk_lbl 999 `"NIU (not in universe)"', add
label values mx10a_statewrk mx10a_statewrk_lbl

label define mx10a_muniwrk_lbl 01001 `"Aguascalientes"'
label define mx10a_muniwrk_lbl 01002 `"Asientos"', add
label define mx10a_muniwrk_lbl 01003 `"Calvillo"', add
label define mx10a_muniwrk_lbl 01004 `"Cosío"', add
label define mx10a_muniwrk_lbl 01005 `"Jesús María"', add
label define mx10a_muniwrk_lbl 01006 `"Pabellón de Arteaga"', add
label define mx10a_muniwrk_lbl 01007 `"Rincón de Romos"', add
label define mx10a_muniwrk_lbl 01008 `"San José de Gracia"', add
label define mx10a_muniwrk_lbl 01009 `"Tepezalá"', add
label define mx10a_muniwrk_lbl 01010 `"El Llano"', add
label define mx10a_muniwrk_lbl 01011 `"San Francisco de los Romo"', add
label define mx10a_muniwrk_lbl 01999 `"Aguascalientes entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 02001 `"Ensenada"', add
label define mx10a_muniwrk_lbl 02002 `"Mexicali"', add
label define mx10a_muniwrk_lbl 02003 `"Tecate"', add
label define mx10a_muniwrk_lbl 02004 `"Tijuana"', add
label define mx10a_muniwrk_lbl 02005 `"Playas de Rosarito"', add
label define mx10a_muniwrk_lbl 02999 `"Baja California entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 03001 `"Comondú"', add
label define mx10a_muniwrk_lbl 03002 `"Mulegé"', add
label define mx10a_muniwrk_lbl 03003 `"La Paz"', add
label define mx10a_muniwrk_lbl 03008 `"Los Cabos"', add
label define mx10a_muniwrk_lbl 03009 `"Loreto"', add
label define mx10a_muniwrk_lbl 03999 `"Baja California Sur entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 04001 `"Calkiní"', add
label define mx10a_muniwrk_lbl 04002 `"Campeche"', add
label define mx10a_muniwrk_lbl 04003 `"Carmen"', add
label define mx10a_muniwrk_lbl 04004 `"Champotón"', add
label define mx10a_muniwrk_lbl 04005 `"Hecelchakán"', add
label define mx10a_muniwrk_lbl 04006 `"Hopelchén"', add
label define mx10a_muniwrk_lbl 04007 `"Palizada"', add
label define mx10a_muniwrk_lbl 04008 `"Tenabo"', add
label define mx10a_muniwrk_lbl 04009 `"Escárcega"', add
label define mx10a_muniwrk_lbl 04010 `"Calakmul"', add
label define mx10a_muniwrk_lbl 04011 `"Candelaria"', add
label define mx10a_muniwrk_lbl 04999 `"Campeche entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 05001 `"Abasolo"', add
label define mx10a_muniwrk_lbl 05002 `"Acuña"', add
label define mx10a_muniwrk_lbl 05003 `"Allende"', add
label define mx10a_muniwrk_lbl 05004 `"Arteaga"', add
label define mx10a_muniwrk_lbl 05005 `"Candela"', add
label define mx10a_muniwrk_lbl 05006 `"Castaños"', add
label define mx10a_muniwrk_lbl 05007 `"Cuatro Ciénegas"', add
label define mx10a_muniwrk_lbl 05008 `"Escobedo"', add
label define mx10a_muniwrk_lbl 05009 `"Francisco I. Madero"', add
label define mx10a_muniwrk_lbl 05010 `"Frontera"', add
label define mx10a_muniwrk_lbl 05011 `"General Cepeda"', add
label define mx10a_muniwrk_lbl 05012 `"Guerrero"', add
label define mx10a_muniwrk_lbl 05013 `"Hidalgo"', add
label define mx10a_muniwrk_lbl 05014 `"Jiménez"', add
label define mx10a_muniwrk_lbl 05015 `"Juárez"', add
label define mx10a_muniwrk_lbl 05016 `"Lamadrid"', add
label define mx10a_muniwrk_lbl 05017 `"Matamoros"', add
label define mx10a_muniwrk_lbl 05018 `"Monclova"', add
label define mx10a_muniwrk_lbl 05019 `"Morelos"', add
label define mx10a_muniwrk_lbl 05020 `"Múzquiz"', add
label define mx10a_muniwrk_lbl 05021 `"Nadadores"', add
label define mx10a_muniwrk_lbl 05022 `"Nava"', add
label define mx10a_muniwrk_lbl 05023 `"Ocampo"', add
label define mx10a_muniwrk_lbl 05024 `"Parras"', add
label define mx10a_muniwrk_lbl 05025 `"Piedras Negras"', add
label define mx10a_muniwrk_lbl 05026 `"Progreso"', add
label define mx10a_muniwrk_lbl 05027 `"Ramos Arizpe"', add
label define mx10a_muniwrk_lbl 05028 `"Sabinas"', add
label define mx10a_muniwrk_lbl 05029 `"Sacramento"', add
label define mx10a_muniwrk_lbl 05030 `"Saltillo"', add
label define mx10a_muniwrk_lbl 05031 `"San Buenaventura"', add
label define mx10a_muniwrk_lbl 05032 `"San Juan de Sabinas"', add
label define mx10a_muniwrk_lbl 05033 `"San Pedro"', add
label define mx10a_muniwrk_lbl 05034 `"Sierra Mojada"', add
label define mx10a_muniwrk_lbl 05035 `"Torreón"', add
label define mx10a_muniwrk_lbl 05036 `"Viesca"', add
label define mx10a_muniwrk_lbl 05037 `"Villa Unión"', add
label define mx10a_muniwrk_lbl 05038 `"Zaragoza"', add
label define mx10a_muniwrk_lbl 05999 `"Coahuila de Zaragoza, municipality unknown"', add
label define mx10a_muniwrk_lbl 06001 `"Armería"', add
label define mx10a_muniwrk_lbl 06002 `"Colima"', add
label define mx10a_muniwrk_lbl 06003 `"Comala"', add
label define mx10a_muniwrk_lbl 06004 `"Coquimatlán"', add
label define mx10a_muniwrk_lbl 06005 `"Cuauhtémoc"', add
label define mx10a_muniwrk_lbl 06006 `"Ixtlahuacán"', add
label define mx10a_muniwrk_lbl 06007 `"Manzanillo"', add
label define mx10a_muniwrk_lbl 06008 `"Minatitlán"', add
label define mx10a_muniwrk_lbl 06009 `"Tecomán"', add
label define mx10a_muniwrk_lbl 06010 `"Villa de Álvarez"', add
label define mx10a_muniwrk_lbl 06999 `"Colima entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 07001 `"Acacoyagua"', add
label define mx10a_muniwrk_lbl 07002 `"Acala"', add
label define mx10a_muniwrk_lbl 07003 `"Acapetahua"', add
label define mx10a_muniwrk_lbl 07004 `"Altamirano"', add
label define mx10a_muniwrk_lbl 07005 `"Amatán"', add
label define mx10a_muniwrk_lbl 07006 `"Amatenango de la Frontera"', add
label define mx10a_muniwrk_lbl 07007 `"Amatenango del Valle"', add
label define mx10a_muniwrk_lbl 07008 `"Angel Albino Corzo"', add
label define mx10a_muniwrk_lbl 07009 `"Arriaga"', add
label define mx10a_muniwrk_lbl 07010 `"Bejucal de Ocampo"', add
label define mx10a_muniwrk_lbl 07011 `"Bella Vista"', add
label define mx10a_muniwrk_lbl 07012 `"Berriozábal"', add
label define mx10a_muniwrk_lbl 07013 `"Bochil"', add
label define mx10a_muniwrk_lbl 07014 `"El Bosque"', add
label define mx10a_muniwrk_lbl 07015 `"Cacahoatán"', add
label define mx10a_muniwrk_lbl 07016 `"Catazajá"', add
label define mx10a_muniwrk_lbl 07017 `"Cintalapa"', add
label define mx10a_muniwrk_lbl 07018 `"Coapilla"', add
label define mx10a_muniwrk_lbl 07019 `"Comitán de Domínguez"', add
label define mx10a_muniwrk_lbl 07020 `"La Concordia"', add
label define mx10a_muniwrk_lbl 07021 `"Copainalá"', add
label define mx10a_muniwrk_lbl 07022 `"Chalchihuitán"', add
label define mx10a_muniwrk_lbl 07023 `"Chamula"', add
label define mx10a_muniwrk_lbl 07024 `"Chanal"', add
label define mx10a_muniwrk_lbl 07025 `"Chapultenango"', add
label define mx10a_muniwrk_lbl 07026 `"Chenalhó"', add
label define mx10a_muniwrk_lbl 07027 `"Chiapa de Corzo"', add
label define mx10a_muniwrk_lbl 07028 `"Chiapilla"', add
label define mx10a_muniwrk_lbl 07029 `"Chicoasén"', add
label define mx10a_muniwrk_lbl 07030 `"Chicomuselo"', add
label define mx10a_muniwrk_lbl 07031 `"Chilón"', add
label define mx10a_muniwrk_lbl 07032 `"Escuintla"', add
label define mx10a_muniwrk_lbl 07033 `"Francisco León"', add
label define mx10a_muniwrk_lbl 07034 `"Frontera Comalapa"', add
label define mx10a_muniwrk_lbl 07035 `"Frontera Hidalgo"', add
label define mx10a_muniwrk_lbl 07036 `"La Grandeza"', add
label define mx10a_muniwrk_lbl 07037 `"Huehuetán"', add
label define mx10a_muniwrk_lbl 07038 `"Huixtán"', add
label define mx10a_muniwrk_lbl 07039 `"Huitiupán"', add
label define mx10a_muniwrk_lbl 07040 `"Huixtla"', add
label define mx10a_muniwrk_lbl 07041 `"La Independencia"', add
label define mx10a_muniwrk_lbl 07042 `"Ixhuatán"', add
label define mx10a_muniwrk_lbl 07043 `"Ixtacomitán"', add
label define mx10a_muniwrk_lbl 07044 `"Ixtapa"', add
label define mx10a_muniwrk_lbl 07045 `"Ixtapangajoya"', add
label define mx10a_muniwrk_lbl 07046 `"Jiquipilas"', add
label define mx10a_muniwrk_lbl 07047 `"Jitotol"', add
label define mx10a_muniwrk_lbl 07048 `"Juárez"', add
label define mx10a_muniwrk_lbl 07049 `"Larráinzar"', add
label define mx10a_muniwrk_lbl 07050 `"La Libertad"', add
label define mx10a_muniwrk_lbl 07051 `"Mapastepec"', add
label define mx10a_muniwrk_lbl 07052 `"Las Margaritas"', add
label define mx10a_muniwrk_lbl 07053 `"Mazapa de Madero"', add
label define mx10a_muniwrk_lbl 07054 `"Mazatán"', add
label define mx10a_muniwrk_lbl 07055 `"Metapa"', add
label define mx10a_muniwrk_lbl 07056 `"Mitontic"', add
label define mx10a_muniwrk_lbl 07057 `"Motozintla"', add
label define mx10a_muniwrk_lbl 07058 `"Nicolás Ruíz"', add
label define mx10a_muniwrk_lbl 07059 `"Ocosingo"', add
label define mx10a_muniwrk_lbl 07060 `"Ocotepec"', add
label define mx10a_muniwrk_lbl 07061 `"Ocozocoautla de Espinosa"', add
label define mx10a_muniwrk_lbl 07062 `"Ostuacán"', add
label define mx10a_muniwrk_lbl 07063 `"Osumacinta"', add
label define mx10a_muniwrk_lbl 07064 `"Oxchuc"', add
label define mx10a_muniwrk_lbl 07065 `"Palenque"', add
label define mx10a_muniwrk_lbl 07066 `"Pantelhó"', add
label define mx10a_muniwrk_lbl 07067 `"Pantepec"', add
label define mx10a_muniwrk_lbl 07068 `"Pichucalco"', add
label define mx10a_muniwrk_lbl 07069 `"Pijijiapan"', add
label define mx10a_muniwrk_lbl 07070 `"El Porvenir"', add
label define mx10a_muniwrk_lbl 07071 `"Villa Comaltitlán"', add
label define mx10a_muniwrk_lbl 07072 `"Pueblo Nuevo Solistahuacán"', add
label define mx10a_muniwrk_lbl 07073 `"Rayón"', add
label define mx10a_muniwrk_lbl 07074 `"Reforma"', add
label define mx10a_muniwrk_lbl 07075 `"Las Rosas"', add
label define mx10a_muniwrk_lbl 07076 `"Sabanilla"', add
label define mx10a_muniwrk_lbl 07077 `"Salto de Agua"', add
label define mx10a_muniwrk_lbl 07078 `"San Cristóbal de las Casas"', add
label define mx10a_muniwrk_lbl 07079 `"San Fernando"', add
label define mx10a_muniwrk_lbl 07080 `"Siltepec"', add
label define mx10a_muniwrk_lbl 07081 `"Simojovel"', add
label define mx10a_muniwrk_lbl 07082 `"Sitalá"', add
label define mx10a_muniwrk_lbl 07083 `"Socoltenango"', add
label define mx10a_muniwrk_lbl 07084 `"Solosuchiapa"', add
label define mx10a_muniwrk_lbl 07085 `"Soyaló"', add
label define mx10a_muniwrk_lbl 07086 `"Suchiapa"', add
label define mx10a_muniwrk_lbl 07087 `"Suchiate"', add
label define mx10a_muniwrk_lbl 07088 `"Sunuapa"', add
label define mx10a_muniwrk_lbl 07089 `"Tapachula"', add
label define mx10a_muniwrk_lbl 07090 `"Tapalapa"', add
label define mx10a_muniwrk_lbl 07091 `"Tapilula"', add
label define mx10a_muniwrk_lbl 07092 `"Tecpatán"', add
label define mx10a_muniwrk_lbl 07093 `"Tenejapa"', add
label define mx10a_muniwrk_lbl 07094 `"Teopisca"', add
label define mx10a_muniwrk_lbl 07096 `"Tila"', add
label define mx10a_muniwrk_lbl 07097 `"Tonalá"', add
label define mx10a_muniwrk_lbl 07098 `"Totolapa"', add
label define mx10a_muniwrk_lbl 07099 `"La Trinitaria"', add
label define mx10a_muniwrk_lbl 07100 `"Tumbalá"', add
label define mx10a_muniwrk_lbl 07101 `"Tuxtla Gutiérrez"', add
label define mx10a_muniwrk_lbl 07102 `"Tuxtla Chico"', add
label define mx10a_muniwrk_lbl 07103 `"Tuzantán"', add
label define mx10a_muniwrk_lbl 07104 `"Tzimol"', add
label define mx10a_muniwrk_lbl 07105 `"Unión Juárez"', add
label define mx10a_muniwrk_lbl 07106 `"Venustiano Carranza"', add
label define mx10a_muniwrk_lbl 07107 `"Villa Corzo"', add
label define mx10a_muniwrk_lbl 07108 `"Villaflores"', add
label define mx10a_muniwrk_lbl 07109 `"Yajalón"', add
label define mx10a_muniwrk_lbl 07110 `"San Lucas"', add
label define mx10a_muniwrk_lbl 07111 `"Zinacantán"', add
label define mx10a_muniwrk_lbl 07112 `"San Juan Cancuc"', add
label define mx10a_muniwrk_lbl 07113 `"Aldama"', add
label define mx10a_muniwrk_lbl 07114 `"Benemérito de las Américas"', add
label define mx10a_muniwrk_lbl 07115 `"Maravilla Tenejapa"', add
label define mx10a_muniwrk_lbl 07116 `"Marqués de Comillas"', add
label define mx10a_muniwrk_lbl 07117 `"Montecristo de Guerrero"', add
label define mx10a_muniwrk_lbl 07118 `"San Andrés Duraznal"', add
label define mx10a_muniwrk_lbl 07119 `"Santiago el Pinar"', add
label define mx10a_muniwrk_lbl 07999 `"Chiapas entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 08001 `"Ahumada"', add
label define mx10a_muniwrk_lbl 08002 `"Aldama"', add
label define mx10a_muniwrk_lbl 08003 `"Allende"', add
label define mx10a_muniwrk_lbl 08004 `"Aquiles Serdán"', add
label define mx10a_muniwrk_lbl 08005 `"Ascensión"', add
label define mx10a_muniwrk_lbl 08006 `"Bachíniva"', add
label define mx10a_muniwrk_lbl 08007 `"Balleza"', add
label define mx10a_muniwrk_lbl 08008 `"Batopilas"', add
label define mx10a_muniwrk_lbl 08009 `"Bocoyna"', add
label define mx10a_muniwrk_lbl 08010 `"Buenaventura"', add
label define mx10a_muniwrk_lbl 08011 `"Camargo"', add
label define mx10a_muniwrk_lbl 08012 `"Carichí"', add
label define mx10a_muniwrk_lbl 08013 `"Casas Grandes"', add
label define mx10a_muniwrk_lbl 08014 `"Coronado"', add
label define mx10a_muniwrk_lbl 08015 `"Coyame del Sotol"', add
label define mx10a_muniwrk_lbl 08016 `"La Cruz"', add
label define mx10a_muniwrk_lbl 08017 `"Cuauhtémoc"', add
label define mx10a_muniwrk_lbl 08018 `"Cusihuiriachi"', add
label define mx10a_muniwrk_lbl 08019 `"Chihuahua"', add
label define mx10a_muniwrk_lbl 08020 `"Chínipas"', add
label define mx10a_muniwrk_lbl 08021 `"Delicias"', add
label define mx10a_muniwrk_lbl 08022 `"Dr. Belisario Domínguez"', add
label define mx10a_muniwrk_lbl 08023 `"Galeana"', add
label define mx10a_muniwrk_lbl 08024 `"Santa Isabel"', add
label define mx10a_muniwrk_lbl 08025 `"Gómez Farías"', add
label define mx10a_muniwrk_lbl 08026 `"Gran Morelos"', add
label define mx10a_muniwrk_lbl 08027 `"Guachochi"', add
label define mx10a_muniwrk_lbl 08028 `"Guadalupe"', add
label define mx10a_muniwrk_lbl 08029 `"Guadalupe y Calvo"', add
label define mx10a_muniwrk_lbl 08030 `"Guazapares"', add
label define mx10a_muniwrk_lbl 08031 `"Guerrero"', add
label define mx10a_muniwrk_lbl 08032 `"Hidalgo del Parral"', add
label define mx10a_muniwrk_lbl 08033 `"Huejotitán"', add
label define mx10a_muniwrk_lbl 08034 `"Ignacio Zaragoza"', add
label define mx10a_muniwrk_lbl 08035 `"Janos"', add
label define mx10a_muniwrk_lbl 08036 `"Jiménez"', add
label define mx10a_muniwrk_lbl 08037 `"Juárez"', add
label define mx10a_muniwrk_lbl 08038 `"Julimes"', add
label define mx10a_muniwrk_lbl 08039 `"López"', add
label define mx10a_muniwrk_lbl 08040 `"Madera"', add
label define mx10a_muniwrk_lbl 08041 `"Maguarichi"', add
label define mx10a_muniwrk_lbl 08042 `"Manuel Benavides"', add
label define mx10a_muniwrk_lbl 08043 `"Matachí"', add
label define mx10a_muniwrk_lbl 08044 `"Matamoros"', add
label define mx10a_muniwrk_lbl 08045 `"Meoqui"', add
label define mx10a_muniwrk_lbl 08046 `"Morelos"', add
label define mx10a_muniwrk_lbl 08047 `"Moris"', add
label define mx10a_muniwrk_lbl 08048 `"Namiquipa"', add
label define mx10a_muniwrk_lbl 08049 `"Nonoava"', add
label define mx10a_muniwrk_lbl 08050 `"Nuevo Casas Grandes"', add
label define mx10a_muniwrk_lbl 08051 `"Ocampo"', add
label define mx10a_muniwrk_lbl 08052 `"Ojinaga"', add
label define mx10a_muniwrk_lbl 08053 `"Praxedis G. Guerrero"', add
label define mx10a_muniwrk_lbl 08054 `"Riva Palacio"', add
label define mx10a_muniwrk_lbl 08055 `"Rosales"', add
label define mx10a_muniwrk_lbl 08056 `"Rosario"', add
label define mx10a_muniwrk_lbl 08057 `"San Francisco de Borja"', add
label define mx10a_muniwrk_lbl 08058 `"San Francisco de Conchos"', add
label define mx10a_muniwrk_lbl 08059 `"San Francisco del Oro"', add
label define mx10a_muniwrk_lbl 08060 `"Santa Bárbara"', add
label define mx10a_muniwrk_lbl 08061 `"Satevó"', add
label define mx10a_muniwrk_lbl 08062 `"Saucillo"', add
label define mx10a_muniwrk_lbl 08063 `"Temósachic"', add
label define mx10a_muniwrk_lbl 08064 `"El Tule"', add
label define mx10a_muniwrk_lbl 08065 `"Urique"', add
label define mx10a_muniwrk_lbl 08066 `"Uruachi"', add
label define mx10a_muniwrk_lbl 08067 `"Valle de Zaragoza"', add
label define mx10a_muniwrk_lbl 08999 `"Chihuahua entity, municipality"', add
label define mx10a_muniwrk_lbl 09002 `"Azcapotzalco"', add
label define mx10a_muniwrk_lbl 09003 `"Coyoacán"', add
label define mx10a_muniwrk_lbl 09004 `"Cuajimalpa de Morelos"', add
label define mx10a_muniwrk_lbl 09005 `"Gustavo A. Madero"', add
label define mx10a_muniwrk_lbl 09006 `"Iztacalco"', add
label define mx10a_muniwrk_lbl 09007 `"Iztapalapa"', add
label define mx10a_muniwrk_lbl 09008 `"La Magdalena Contreras"', add
label define mx10a_muniwrk_lbl 09009 `"Milpa Alta"', add
label define mx10a_muniwrk_lbl 09010 `"Álvaro Obregón"', add
label define mx10a_muniwrk_lbl 09011 `"Tláhuac"', add
label define mx10a_muniwrk_lbl 09012 `"Tlalpan"', add
label define mx10a_muniwrk_lbl 09013 `"Xochimilco"', add
label define mx10a_muniwrk_lbl 09014 `"Benito Juárez"', add
label define mx10a_muniwrk_lbl 09015 `"Cuauhtémoc"', add
label define mx10a_muniwrk_lbl 09016 `"Miguel Hidalgo"', add
label define mx10a_muniwrk_lbl 09017 `"Venustiano Carranza"', add
label define mx10a_muniwrk_lbl 09999 `"Distrito Federal entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 10001 `"Canatlán"', add
label define mx10a_muniwrk_lbl 10002 `"Canelas"', add
label define mx10a_muniwrk_lbl 10003 `"Coneto de Comonfort"', add
label define mx10a_muniwrk_lbl 10004 `"Cuencamé"', add
label define mx10a_muniwrk_lbl 10005 `"Durango"', add
label define mx10a_muniwrk_lbl 10006 `"General Simón Bolívar"', add
label define mx10a_muniwrk_lbl 10007 `"Gómez Palacio"', add
label define mx10a_muniwrk_lbl 10008 `"Guadalupe Victoria"', add
label define mx10a_muniwrk_lbl 10009 `"Guanaceví"', add
label define mx10a_muniwrk_lbl 10010 `"Hidalgo"', add
label define mx10a_muniwrk_lbl 10011 `"Indé"', add
label define mx10a_muniwrk_lbl 10012 `"Lerdo"', add
label define mx10a_muniwrk_lbl 10013 `"Mapimí"', add
label define mx10a_muniwrk_lbl 10014 `"Mezquital"', add
label define mx10a_muniwrk_lbl 10015 `"Nazas"', add
label define mx10a_muniwrk_lbl 10016 `"Nombre de Dios"', add
label define mx10a_muniwrk_lbl 10017 `"Ocampo"', add
label define mx10a_muniwrk_lbl 10018 `"El Oro"', add
label define mx10a_muniwrk_lbl 10019 `"Otáez"', add
label define mx10a_muniwrk_lbl 10020 `"Pánuco de Coronado"', add
label define mx10a_muniwrk_lbl 10021 `"Peñón Blanco"', add
label define mx10a_muniwrk_lbl 10022 `"Poanas"', add
label define mx10a_muniwrk_lbl 10023 `"Pueblo Nuevo"', add
label define mx10a_muniwrk_lbl 10024 `"Rodeo"', add
label define mx10a_muniwrk_lbl 10025 `"San Bernardo"', add
label define mx10a_muniwrk_lbl 10026 `"San Dimas"', add
label define mx10a_muniwrk_lbl 10027 `"San Juan de Guadalupe"', add
label define mx10a_muniwrk_lbl 10028 `"San Juan del Río"', add
label define mx10a_muniwrk_lbl 10029 `"San Luis del Cordero"', add
label define mx10a_muniwrk_lbl 10030 `"San Pedro del Gallo"', add
label define mx10a_muniwrk_lbl 10031 `"Santa Clara"', add
label define mx10a_muniwrk_lbl 10032 `"Santiago Papasquiaro"', add
label define mx10a_muniwrk_lbl 10033 `"Súchil"', add
label define mx10a_muniwrk_lbl 10034 `"Tamazula"', add
label define mx10a_muniwrk_lbl 10035 `"Tepehuanes"', add
label define mx10a_muniwrk_lbl 10036 `"Tlahualilo"', add
label define mx10a_muniwrk_lbl 10037 `"Topia"', add
label define mx10a_muniwrk_lbl 10038 `"Vicente Guerrero"', add
label define mx10a_muniwrk_lbl 10039 `"Nuevo Ideal"', add
label define mx10a_muniwrk_lbl 10999 `"Durango entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 11001 `"Abasolo"', add
label define mx10a_muniwrk_lbl 11002 `"Acámbaro"', add
label define mx10a_muniwrk_lbl 11003 `"San Miguel de Allende"', add
label define mx10a_muniwrk_lbl 11004 `"Apaseo el Alto"', add
label define mx10a_muniwrk_lbl 11005 `"Apaseo el Grande"', add
label define mx10a_muniwrk_lbl 11006 `"Atarjea"', add
label define mx10a_muniwrk_lbl 11007 `"Celaya"', add
label define mx10a_muniwrk_lbl 11008 `"Manuel Doblado"', add
label define mx10a_muniwrk_lbl 11009 `"Comonfort"', add
label define mx10a_muniwrk_lbl 11010 `"Coroneo"', add
label define mx10a_muniwrk_lbl 11011 `"Cortazar"', add
label define mx10a_muniwrk_lbl 11012 `"Cuerámaro"', add
label define mx10a_muniwrk_lbl 11013 `"Doctor Mora"', add
label define mx10a_muniwrk_lbl 11014 `"Dolores Hidalgo Cuna de la Independencia Nacional"', add
label define mx10a_muniwrk_lbl 11015 `"Guanajuato"', add
label define mx10a_muniwrk_lbl 11016 `"Huanímaro"', add
label define mx10a_muniwrk_lbl 11017 `"Irapuato"', add
label define mx10a_muniwrk_lbl 11018 `"Jaral del Progreso"', add
label define mx10a_muniwrk_lbl 11019 `"Jerécuaro"', add
label define mx10a_muniwrk_lbl 11020 `"León"', add
label define mx10a_muniwrk_lbl 11021 `"Moroleón"', add
label define mx10a_muniwrk_lbl 11022 `"Ocampo"', add
label define mx10a_muniwrk_lbl 11023 `"Pénjamo"', add
label define mx10a_muniwrk_lbl 11024 `"Pueblo Nuevo"', add
label define mx10a_muniwrk_lbl 11025 `"Purísima del Rincón"', add
label define mx10a_muniwrk_lbl 11026 `"Romita"', add
label define mx10a_muniwrk_lbl 11027 `"Salamanca"', add
label define mx10a_muniwrk_lbl 11028 `"Salvatierra"', add
label define mx10a_muniwrk_lbl 11029 `"San Diego de la Unión"', add
label define mx10a_muniwrk_lbl 11030 `"San Felipe"', add
label define mx10a_muniwrk_lbl 11031 `"San Francisco del Rincón"', add
label define mx10a_muniwrk_lbl 11032 `"San José Iturbide"', add
label define mx10a_muniwrk_lbl 11033 `"San Luis de la Paz"', add
label define mx10a_muniwrk_lbl 11034 `"Santa Catarina"', add
label define mx10a_muniwrk_lbl 11035 `"Santa Cruz de Juventino Rosas"', add
label define mx10a_muniwrk_lbl 11036 `"Santiago Maravatío"', add
label define mx10a_muniwrk_lbl 11037 `"Silao"', add
label define mx10a_muniwrk_lbl 11038 `"Tarandacuao"', add
label define mx10a_muniwrk_lbl 11039 `"Tarimoro"', add
label define mx10a_muniwrk_lbl 11040 `"Tierra Blanca"', add
label define mx10a_muniwrk_lbl 11041 `"Uriangato"', add
label define mx10a_muniwrk_lbl 11042 `"Valle de Santiago"', add
label define mx10a_muniwrk_lbl 11043 `"Victoria"', add
label define mx10a_muniwrk_lbl 11044 `"Villagrán"', add
label define mx10a_muniwrk_lbl 11045 `"Xichú"', add
label define mx10a_muniwrk_lbl 11046 `"Yuriria"', add
label define mx10a_muniwrk_lbl 11999 `"Guanajuato entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 12001 `"Acapulco de Juárez"', add
label define mx10a_muniwrk_lbl 12002 `"Ahuacuotzingo"', add
label define mx10a_muniwrk_lbl 12003 `"Ajuchitlán del Progreso"', add
label define mx10a_muniwrk_lbl 12004 `"Alcozauca de Guerrero"', add
label define mx10a_muniwrk_lbl 12005 `"Alpoyeca"', add
label define mx10a_muniwrk_lbl 12006 `"Apaxtla"', add
label define mx10a_muniwrk_lbl 12007 `"Arcelia"', add
label define mx10a_muniwrk_lbl 12008 `"Atenango del Río"', add
label define mx10a_muniwrk_lbl 12009 `"Atlamajalcingo del Monte"', add
label define mx10a_muniwrk_lbl 12010 `"Atlixtac"', add
label define mx10a_muniwrk_lbl 12011 `"Atoyac de Álvarez"', add
label define mx10a_muniwrk_lbl 12012 `"Ayutla de los Libres"', add
label define mx10a_muniwrk_lbl 12013 `"Azoyú"', add
label define mx10a_muniwrk_lbl 12014 `"Benito Juárez"', add
label define mx10a_muniwrk_lbl 12015 `"Buenavista de Cuéllar"', add
label define mx10a_muniwrk_lbl 12016 `"Coahuayutla de José María Izazaga"', add
label define mx10a_muniwrk_lbl 12017 `"Cocula"', add
label define mx10a_muniwrk_lbl 12018 `"Copala"', add
label define mx10a_muniwrk_lbl 12019 `"Copalillo"', add
label define mx10a_muniwrk_lbl 12020 `"Copanatoyac"', add
label define mx10a_muniwrk_lbl 12021 `"Coyuca de Benítez"', add
label define mx10a_muniwrk_lbl 12022 `"Coyuca de Catalán"', add
label define mx10a_muniwrk_lbl 12023 `"Cuajinicuilapa"', add
label define mx10a_muniwrk_lbl 12024 `"Cualác"', add
label define mx10a_muniwrk_lbl 12025 `"Cuautepec"', add
label define mx10a_muniwrk_lbl 12026 `"Cuetzala del Progreso"', add
label define mx10a_muniwrk_lbl 12027 `"Cutzamala de Pinzón"', add
label define mx10a_muniwrk_lbl 12028 `"Chilapa de Álvarez"', add
label define mx10a_muniwrk_lbl 12029 `"Chilpancingo de los Bravo"', add
label define mx10a_muniwrk_lbl 12030 `"Florencio Villarreal"', add
label define mx10a_muniwrk_lbl 12031 `"General Canuto A. Neri"', add
label define mx10a_muniwrk_lbl 12032 `"General Heliodoro Castillo"', add
label define mx10a_muniwrk_lbl 12033 `"Huamuxtitlán"', add
label define mx10a_muniwrk_lbl 12034 `"Huitzuco de los Figueroa"', add
label define mx10a_muniwrk_lbl 12035 `"Iguala de la Independencia"', add
label define mx10a_muniwrk_lbl 12036 `"Igualapa"', add
label define mx10a_muniwrk_lbl 12037 `"Ixcateopan de Cuauhtémoc"', add
label define mx10a_muniwrk_lbl 12038 `"Zihuatanejo de Azueta"', add
label define mx10a_muniwrk_lbl 12039 `"Juan R. Escudero"', add
label define mx10a_muniwrk_lbl 12040 `"Leonardo Bravo"', add
label define mx10a_muniwrk_lbl 12041 `"Malinaltepec"', add
label define mx10a_muniwrk_lbl 12042 `"Mártir de Cuilapan"', add
label define mx10a_muniwrk_lbl 12043 `"Metlatónoc"', add
label define mx10a_muniwrk_lbl 12044 `"Mochitlán"', add
label define mx10a_muniwrk_lbl 12045 `"Olinalá"', add
label define mx10a_muniwrk_lbl 12046 `"Ometepec"', add
label define mx10a_muniwrk_lbl 12047 `"Pedro Ascencio Alquisiras"', add
label define mx10a_muniwrk_lbl 12048 `"Petatlán"', add
label define mx10a_muniwrk_lbl 12049 `"Pilcaya"', add
label define mx10a_muniwrk_lbl 12050 `"Pungarabato"', add
label define mx10a_muniwrk_lbl 12051 `"Quechultenango"', add
label define mx10a_muniwrk_lbl 12052 `"San Luis Acatlán"', add
label define mx10a_muniwrk_lbl 12053 `"San Marcos"', add
label define mx10a_muniwrk_lbl 12054 `"San Miguel Totolapan"', add
label define mx10a_muniwrk_lbl 12055 `"Taxco de Alarcón"', add
label define mx10a_muniwrk_lbl 12056 `"Tecoanapa"', add
label define mx10a_muniwrk_lbl 12057 `"Técpan de Galeana"', add
label define mx10a_muniwrk_lbl 12058 `"Teloloapan"', add
label define mx10a_muniwrk_lbl 12059 `"Tepecoacuilco de Trujano"', add
label define mx10a_muniwrk_lbl 12060 `"Tetipac"', add
label define mx10a_muniwrk_lbl 12061 `"Tixtla de Guerrero"', add
label define mx10a_muniwrk_lbl 12062 `"Tlacoachistlahuaca"', add
label define mx10a_muniwrk_lbl 12063 `"Tlacoapa"', add
label define mx10a_muniwrk_lbl 12064 `"Tlalchapa"', add
label define mx10a_muniwrk_lbl 12065 `"Tlalixtaquilla de Maldonado"', add
label define mx10a_muniwrk_lbl 12066 `"Tlapa de Comonfort"', add
label define mx10a_muniwrk_lbl 12067 `"Tlapehuala"', add
label define mx10a_muniwrk_lbl 12068 `"La Unión de Isidoro Montes de Oca"', add
label define mx10a_muniwrk_lbl 12069 `"Xalpatláhuac"', add
label define mx10a_muniwrk_lbl 12070 `"Xochihuehuetlán"', add
label define mx10a_muniwrk_lbl 12071 `"Xochistlahuaca"', add
label define mx10a_muniwrk_lbl 12072 `"Zapotitlán Tablas"', add
label define mx10a_muniwrk_lbl 12073 `"Zirándaro"', add
label define mx10a_muniwrk_lbl 12074 `"Zitlala"', add
label define mx10a_muniwrk_lbl 12075 `"Eduardo Neri"', add
label define mx10a_muniwrk_lbl 12076 `"Acatepec"', add
label define mx10a_muniwrk_lbl 12077 `"Marquelia"', add
label define mx10a_muniwrk_lbl 12078 `"Cochoapa el Grande"', add
label define mx10a_muniwrk_lbl 12079 `"José Joaquin de Herrera"', add
label define mx10a_muniwrk_lbl 12080 `"Juchitán"', add
label define mx10a_muniwrk_lbl 12081 `"Iliatenco"', add
label define mx10a_muniwrk_lbl 12999 `"Guerrero entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 13001 `"Acatlán"', add
label define mx10a_muniwrk_lbl 13002 `"Acaxochitlán"', add
label define mx10a_muniwrk_lbl 13003 `"Actopan"', add
label define mx10a_muniwrk_lbl 13004 `"Agua Blanca de Iturbide"', add
label define mx10a_muniwrk_lbl 13005 `"Ajacuba"', add
label define mx10a_muniwrk_lbl 13006 `"Alfajayucan"', add
label define mx10a_muniwrk_lbl 13007 `"Almoloya"', add
label define mx10a_muniwrk_lbl 13008 `"Apan"', add
label define mx10a_muniwrk_lbl 13009 `"El Arenal"', add
label define mx10a_muniwrk_lbl 13010 `"Atitalaquia"', add
label define mx10a_muniwrk_lbl 13011 `"Atlapexco"', add
label define mx10a_muniwrk_lbl 13012 `"Atotonilco el Grande"', add
label define mx10a_muniwrk_lbl 13013 `"Atotonilco de Tula"', add
label define mx10a_muniwrk_lbl 13014 `"Calnali"', add
label define mx10a_muniwrk_lbl 13015 `"Cardonal"', add
label define mx10a_muniwrk_lbl 13016 `"Cuautepec de Hinojosa"', add
label define mx10a_muniwrk_lbl 13017 `"Chapantongo"', add
label define mx10a_muniwrk_lbl 13018 `"Chapulhuacán"', add
label define mx10a_muniwrk_lbl 13019 `"Chilcuautla"', add
label define mx10a_muniwrk_lbl 13020 `"Eloxochitlán"', add
label define mx10a_muniwrk_lbl 13021 `"Emiliano Zapata"', add
label define mx10a_muniwrk_lbl 13022 `"Epazoyucan"', add
label define mx10a_muniwrk_lbl 13023 `"Francisco I. Madero"', add
label define mx10a_muniwrk_lbl 13024 `"Huasca de Ocampo"', add
label define mx10a_muniwrk_lbl 13025 `"Huautla"', add
label define mx10a_muniwrk_lbl 13026 `"Huazalingo"', add
label define mx10a_muniwrk_lbl 13027 `"Huehuetla"', add
label define mx10a_muniwrk_lbl 13028 `"Huejutla de Reyes"', add
label define mx10a_muniwrk_lbl 13029 `"Huichapan"', add
label define mx10a_muniwrk_lbl 13030 `"Ixmiquilpan"', add
label define mx10a_muniwrk_lbl 13031 `"Jacala de Ledezma"', add
label define mx10a_muniwrk_lbl 13032 `"Jaltocán"', add
label define mx10a_muniwrk_lbl 13033 `"Juárez Hidalgo"', add
label define mx10a_muniwrk_lbl 13034 `"Lolotla"', add
label define mx10a_muniwrk_lbl 13035 `"Metepec"', add
label define mx10a_muniwrk_lbl 13036 `"San Agustín Metzquititlán"', add
label define mx10a_muniwrk_lbl 13037 `"Metztitlán"', add
label define mx10a_muniwrk_lbl 13038 `"Mineral del Chico"', add
label define mx10a_muniwrk_lbl 13039 `"Mineral del Monte"', add
label define mx10a_muniwrk_lbl 13040 `"La Misión"', add
label define mx10a_muniwrk_lbl 13041 `"Mixquiahuala de Juárez"', add
label define mx10a_muniwrk_lbl 13042 `"Molango de Escamilla"', add
label define mx10a_muniwrk_lbl 13043 `"Nicolás Flores"', add
label define mx10a_muniwrk_lbl 13044 `"Nopala de Villagrán"', add
label define mx10a_muniwrk_lbl 13045 `"Omitlán de Juárez"', add
label define mx10a_muniwrk_lbl 13046 `"San Felipe Orizatlán"', add
label define mx10a_muniwrk_lbl 13047 `"Pacula"', add
label define mx10a_muniwrk_lbl 13048 `"Pachuca de Soto"', add
label define mx10a_muniwrk_lbl 13049 `"Pisaflores"', add
label define mx10a_muniwrk_lbl 13050 `"Progreso de Obregón"', add
label define mx10a_muniwrk_lbl 13051 `"Mineral de la Reforma"', add
label define mx10a_muniwrk_lbl 13052 `"San Agustín Tlaxiaca"', add
label define mx10a_muniwrk_lbl 13053 `"San Bartolo Tutotepec"', add
label define mx10a_muniwrk_lbl 13054 `"San Salvador"', add
label define mx10a_muniwrk_lbl 13055 `"Santiago de Anaya"', add
label define mx10a_muniwrk_lbl 13056 `"Santiago Tulantepec de Lugo Guerrero"', add
label define mx10a_muniwrk_lbl 13057 `"Singuilucan"', add
label define mx10a_muniwrk_lbl 13058 `"Tasquillo"', add
label define mx10a_muniwrk_lbl 13059 `"Tecozautla"', add
label define mx10a_muniwrk_lbl 13060 `"Tenango de Doria"', add
label define mx10a_muniwrk_lbl 13061 `"Tepeapulco"', add
label define mx10a_muniwrk_lbl 13062 `"Tepehuacán de Guerrero"', add
label define mx10a_muniwrk_lbl 13063 `"Tepeji del Río de Ocampo"', add
label define mx10a_muniwrk_lbl 13064 `"Tepetitlán"', add
label define mx10a_muniwrk_lbl 13065 `"Tetepango"', add
label define mx10a_muniwrk_lbl 13066 `"Villa de Tezontepec"', add
label define mx10a_muniwrk_lbl 13067 `"Tezontepec de Aldama"', add
label define mx10a_muniwrk_lbl 13068 `"Tianguistengo"', add
label define mx10a_muniwrk_lbl 13069 `"Tizayuca"', add
label define mx10a_muniwrk_lbl 13070 `"Tlahuelilpan"', add
label define mx10a_muniwrk_lbl 13071 `"Tlahuiltepa"', add
label define mx10a_muniwrk_lbl 13072 `"Tlanalapa"', add
label define mx10a_muniwrk_lbl 13073 `"Tlanchinol"', add
label define mx10a_muniwrk_lbl 13074 `"Tlaxcoapan"', add
label define mx10a_muniwrk_lbl 13075 `"Tolcayuca"', add
label define mx10a_muniwrk_lbl 13076 `"Tula de Allende"', add
label define mx10a_muniwrk_lbl 13077 `"Tulancingo de Bravo"', add
label define mx10a_muniwrk_lbl 13078 `"Xochiatipan"', add
label define mx10a_muniwrk_lbl 13079 `"Xochicoatlán"', add
label define mx10a_muniwrk_lbl 13080 `"Yahualica"', add
label define mx10a_muniwrk_lbl 13081 `"Zacualtipán de Ángeles"', add
label define mx10a_muniwrk_lbl 13082 `"Zapotlán de Juárez"', add
label define mx10a_muniwrk_lbl 13083 `"Zempoala"', add
label define mx10a_muniwrk_lbl 13084 `"Zimapán"', add
label define mx10a_muniwrk_lbl 13999 `"Hidalgo entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 14001 `"Acatic"', add
label define mx10a_muniwrk_lbl 14002 `"Acatlán de Juárez"', add
label define mx10a_muniwrk_lbl 14003 `"Ahualulco de Mercado"', add
label define mx10a_muniwrk_lbl 14004 `"Amacueca"', add
label define mx10a_muniwrk_lbl 14005 `"Amatitán"', add
label define mx10a_muniwrk_lbl 14006 `"Ameca"', add
label define mx10a_muniwrk_lbl 14007 `"San Juanito de Escobedo"', add
label define mx10a_muniwrk_lbl 14008 `"Arandas"', add
label define mx10a_muniwrk_lbl 14009 `"El Arenal"', add
label define mx10a_muniwrk_lbl 14010 `"Atemajac de Brizuela"', add
label define mx10a_muniwrk_lbl 14011 `"Atengo"', add
label define mx10a_muniwrk_lbl 14012 `"Atenguillo"', add
label define mx10a_muniwrk_lbl 14013 `"Atotonilco el Alto"', add
label define mx10a_muniwrk_lbl 14014 `"Atoyac"', add
label define mx10a_muniwrk_lbl 14015 `"Autlán de Navarro"', add
label define mx10a_muniwrk_lbl 14016 `"Ayotlán"', add
label define mx10a_muniwrk_lbl 14017 `"Ayutla"', add
label define mx10a_muniwrk_lbl 14018 `"La Barca"', add
label define mx10a_muniwrk_lbl 14019 `"Bolaños"', add
label define mx10a_muniwrk_lbl 14020 `"Cabo Corrientes"', add
label define mx10a_muniwrk_lbl 14021 `"Casimiro Castillo"', add
label define mx10a_muniwrk_lbl 14022 `"Cihuatlán"', add
label define mx10a_muniwrk_lbl 14023 `"Zapotlán el Grande"', add
label define mx10a_muniwrk_lbl 14024 `"Cocula"', add
label define mx10a_muniwrk_lbl 14025 `"Colotlán"', add
label define mx10a_muniwrk_lbl 14026 `"Concepción de Buenos Aires"', add
label define mx10a_muniwrk_lbl 14027 `"Cuautitlán de García Barragán"', add
label define mx10a_muniwrk_lbl 14028 `"Cuautla"', add
label define mx10a_muniwrk_lbl 14029 `"Cuquío"', add
label define mx10a_muniwrk_lbl 14030 `"Chapala"', add
label define mx10a_muniwrk_lbl 14031 `"Chimaltitán"', add
label define mx10a_muniwrk_lbl 14032 `"Chiquilistlán"', add
label define mx10a_muniwrk_lbl 14033 `"Degollado"', add
label define mx10a_muniwrk_lbl 14034 `"Ejutla"', add
label define mx10a_muniwrk_lbl 14035 `"Encarnación de Díaz"', add
label define mx10a_muniwrk_lbl 14036 `"Etzatlán"', add
label define mx10a_muniwrk_lbl 14037 `"El Grullo"', add
label define mx10a_muniwrk_lbl 14038 `"Guachinango"', add
label define mx10a_muniwrk_lbl 14039 `"Guadalajara"', add
label define mx10a_muniwrk_lbl 14040 `"Hostotipaquillo"', add
label define mx10a_muniwrk_lbl 14041 `"Huejúcar"', add
label define mx10a_muniwrk_lbl 14042 `"Huejuquilla el Alto"', add
label define mx10a_muniwrk_lbl 14043 `"La Huerta"', add
label define mx10a_muniwrk_lbl 14044 `"Ixtlahuacán de los Membrillos"', add
label define mx10a_muniwrk_lbl 14045 `"Ixtlahuacán del Río"', add
label define mx10a_muniwrk_lbl 14046 `"Jalostotitlán"', add
label define mx10a_muniwrk_lbl 14047 `"Jamay"', add
label define mx10a_muniwrk_lbl 14048 `"Jesús María"', add
label define mx10a_muniwrk_lbl 14049 `"Jilotlán de los Dolores"', add
label define mx10a_muniwrk_lbl 14050 `"Jocotepec"', add
label define mx10a_muniwrk_lbl 14051 `"Juanacatlán"', add
label define mx10a_muniwrk_lbl 14052 `"Juchitlán"', add
label define mx10a_muniwrk_lbl 14053 `"Lagos de Moreno"', add
label define mx10a_muniwrk_lbl 14054 `"El Limón"', add
label define mx10a_muniwrk_lbl 14055 `"Magdalena"', add
label define mx10a_muniwrk_lbl 14056 `"Santa María del Oro"', add
label define mx10a_muniwrk_lbl 14057 `"La Manzanilla de la Paz"', add
label define mx10a_muniwrk_lbl 14058 `"Mascota"', add
label define mx10a_muniwrk_lbl 14059 `"Mazamitla"', add
label define mx10a_muniwrk_lbl 14060 `"Mexticacán"', add
label define mx10a_muniwrk_lbl 14061 `"Mezquitic"', add
label define mx10a_muniwrk_lbl 14062 `"Mixtlán"', add
label define mx10a_muniwrk_lbl 14063 `"Ocotlán"', add
label define mx10a_muniwrk_lbl 14064 `"Ojuelos de Jalisco"', add
label define mx10a_muniwrk_lbl 14065 `"Pihuamo"', add
label define mx10a_muniwrk_lbl 14066 `"Poncitlán"', add
label define mx10a_muniwrk_lbl 14067 `"Puerto Vallarta"', add
label define mx10a_muniwrk_lbl 14068 `"Villa Purificación"', add
label define mx10a_muniwrk_lbl 14069 `"Quitupan"', add
label define mx10a_muniwrk_lbl 14070 `"El Salto"', add
label define mx10a_muniwrk_lbl 14071 `"San Cristóbal de la Barranca"', add
label define mx10a_muniwrk_lbl 14072 `"San Diego de Alejandría"', add
label define mx10a_muniwrk_lbl 14073 `"San Juan de los Lagos"', add
label define mx10a_muniwrk_lbl 14074 `"San Julián"', add
label define mx10a_muniwrk_lbl 14075 `"San Marcos"', add
label define mx10a_muniwrk_lbl 14076 `"San Martín de Bolaños"', add
label define mx10a_muniwrk_lbl 14077 `"San Martín Hidalgo"', add
label define mx10a_muniwrk_lbl 14078 `"San Miguel el Alto"', add
label define mx10a_muniwrk_lbl 14079 `"Gómez Farías"', add
label define mx10a_muniwrk_lbl 14080 `"San Sebastián del Oeste"', add
label define mx10a_muniwrk_lbl 14081 `"Santa María de los Ángeles"', add
label define mx10a_muniwrk_lbl 14082 `"Sayula"', add
label define mx10a_muniwrk_lbl 14083 `"Tala"', add
label define mx10a_muniwrk_lbl 14084 `"Talpa de Allende"', add
label define mx10a_muniwrk_lbl 14085 `"Tamazula de Gordiano"', add
label define mx10a_muniwrk_lbl 14086 `"Tapalpa"', add
label define mx10a_muniwrk_lbl 14087 `"Tecalitlán"', add
label define mx10a_muniwrk_lbl 14088 `"Tecolotlán"', add
label define mx10a_muniwrk_lbl 14089 `"Techaluta de Montenegro"', add
label define mx10a_muniwrk_lbl 14090 `"Tenamaxtlán"', add
label define mx10a_muniwrk_lbl 14091 `"Teocaltiche"', add
label define mx10a_muniwrk_lbl 14092 `"Teocuitatlán de Corona"', add
label define mx10a_muniwrk_lbl 14093 `"Tepatitlán de Morelos"', add
label define mx10a_muniwrk_lbl 14094 `"Tequila"', add
label define mx10a_muniwrk_lbl 14095 `"Teuchitlán"', add
label define mx10a_muniwrk_lbl 14096 `"Tizapán el Alto"', add
label define mx10a_muniwrk_lbl 14097 `"Tlajomulco de Zúñiga"', add
label define mx10a_muniwrk_lbl 14098 `"Tlaquepaque"', add
label define mx10a_muniwrk_lbl 14099 `"Tolimán"', add
label define mx10a_muniwrk_lbl 14100 `"Tomatlán"', add
label define mx10a_muniwrk_lbl 14101 `"Tonalá"', add
label define mx10a_muniwrk_lbl 14102 `"Tonaya"', add
label define mx10a_muniwrk_lbl 14103 `"Tonila"', add
label define mx10a_muniwrk_lbl 14104 `"Totatiche"', add
label define mx10a_muniwrk_lbl 14105 `"Tototlán"', add
label define mx10a_muniwrk_lbl 14106 `"Tuxcacuesco"', add
label define mx10a_muniwrk_lbl 14107 `"Tuxcueca"', add
label define mx10a_muniwrk_lbl 14108 `"Tuxpan"', add
label define mx10a_muniwrk_lbl 14109 `"Unión de San Antonio"', add
label define mx10a_muniwrk_lbl 14110 `"Unión de Tula"', add
label define mx10a_muniwrk_lbl 14111 `"Valle de Guadalupe"', add
label define mx10a_muniwrk_lbl 14112 `"Valle de Juárez"', add
label define mx10a_muniwrk_lbl 14113 `"San Gabriel"', add
label define mx10a_muniwrk_lbl 14114 `"Villa Corona"', add
label define mx10a_muniwrk_lbl 14115 `"Villa Guerrero"', add
label define mx10a_muniwrk_lbl 14116 `"Villa Hidalgo"', add
label define mx10a_muniwrk_lbl 14117 `"Cañadas de Obregón"', add
label define mx10a_muniwrk_lbl 14118 `"Yahualica de González Gallo"', add
label define mx10a_muniwrk_lbl 14119 `"Zacoalco de Torres"', add
label define mx10a_muniwrk_lbl 14120 `"Zapopan"', add
label define mx10a_muniwrk_lbl 14121 `"Zapotiltic"', add
label define mx10a_muniwrk_lbl 14122 `"Zapotitlán de Vadillo"', add
label define mx10a_muniwrk_lbl 14123 `"Zapotlán del Rey"', add
label define mx10a_muniwrk_lbl 14124 `"Zapotlanejo"', add
label define mx10a_muniwrk_lbl 14125 `"San Ignacio Cerro Gordo"', add
label define mx10a_muniwrk_lbl 14999 `"Jalisco entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 15001 `"Acambay"', add
label define mx10a_muniwrk_lbl 15002 `"Acolman"', add
label define mx10a_muniwrk_lbl 15003 `"Aculco"', add
label define mx10a_muniwrk_lbl 15004 `"Almoloya de Alquisiras"', add
label define mx10a_muniwrk_lbl 15005 `"Almoloya de Juárez"', add
label define mx10a_muniwrk_lbl 15006 `"Almoloya del Río"', add
label define mx10a_muniwrk_lbl 15007 `"Amanalco"', add
label define mx10a_muniwrk_lbl 15008 `"Amatepec"', add
label define mx10a_muniwrk_lbl 15009 `"Amecameca"', add
label define mx10a_muniwrk_lbl 15010 `"Apaxco"', add
label define mx10a_muniwrk_lbl 15011 `"Atenco"', add
label define mx10a_muniwrk_lbl 15012 `"Atizapán"', add
label define mx10a_muniwrk_lbl 15013 `"Atizapán de Zaragoza"', add
label define mx10a_muniwrk_lbl 15014 `"Atlacomulco"', add
label define mx10a_muniwrk_lbl 15015 `"Atlautla"', add
label define mx10a_muniwrk_lbl 15016 `"Axapusco"', add
label define mx10a_muniwrk_lbl 15017 `"Ayapango"', add
label define mx10a_muniwrk_lbl 15018 `"Calimaya"', add
label define mx10a_muniwrk_lbl 15019 `"Capulhuac"', add
label define mx10a_muniwrk_lbl 15020 `"Coacalco de Berriozábal"', add
label define mx10a_muniwrk_lbl 15021 `"Coatepec Harinas"', add
label define mx10a_muniwrk_lbl 15022 `"Cocotitlán"', add
label define mx10a_muniwrk_lbl 15023 `"Coyotepec"', add
label define mx10a_muniwrk_lbl 15024 `"Cuautitlán"', add
label define mx10a_muniwrk_lbl 15025 `"Chalco"', add
label define mx10a_muniwrk_lbl 15026 `"Chapa de Mota"', add
label define mx10a_muniwrk_lbl 15027 `"Chapultepec"', add
label define mx10a_muniwrk_lbl 15028 `"Chiautla"', add
label define mx10a_muniwrk_lbl 15029 `"Chicoloapan"', add
label define mx10a_muniwrk_lbl 15030 `"Chiconcuac"', add
label define mx10a_muniwrk_lbl 15031 `"Chimalhuacán"', add
label define mx10a_muniwrk_lbl 15032 `"Donato Guerra"', add
label define mx10a_muniwrk_lbl 15033 `"Ecatepec de Morelos"', add
label define mx10a_muniwrk_lbl 15034 `"Ecatzingo"', add
label define mx10a_muniwrk_lbl 15035 `"Huehuetoca"', add
label define mx10a_muniwrk_lbl 15036 `"Hueypoxtla"', add
label define mx10a_muniwrk_lbl 15037 `"Huixquilucan"', add
label define mx10a_muniwrk_lbl 15038 `"Isidro Fabela"', add
label define mx10a_muniwrk_lbl 15039 `"Ixtapaluca"', add
label define mx10a_muniwrk_lbl 15040 `"Ixtapan de la Sal"', add
label define mx10a_muniwrk_lbl 15041 `"Ixtapan del Oro"', add
label define mx10a_muniwrk_lbl 15042 `"Ixtlahuaca"', add
label define mx10a_muniwrk_lbl 15043 `"Xalatlaco"', add
label define mx10a_muniwrk_lbl 15044 `"Jaltenco"', add
label define mx10a_muniwrk_lbl 15045 `"Jilotepec"', add
label define mx10a_muniwrk_lbl 15046 `"Jilotzingo"', add
label define mx10a_muniwrk_lbl 15047 `"Jiquipilco"', add
label define mx10a_muniwrk_lbl 15048 `"Jocotitlán"', add
label define mx10a_muniwrk_lbl 15049 `"Joquicingo"', add
label define mx10a_muniwrk_lbl 15050 `"Juchitepec"', add
label define mx10a_muniwrk_lbl 15051 `"Lerma"', add
label define mx10a_muniwrk_lbl 15052 `"Malinalco"', add
label define mx10a_muniwrk_lbl 15053 `"Melchor Ocampo"', add
label define mx10a_muniwrk_lbl 15054 `"Metepec"', add
label define mx10a_muniwrk_lbl 15055 `"Mexicaltzingo"', add
label define mx10a_muniwrk_lbl 15056 `"Morelos"', add
label define mx10a_muniwrk_lbl 15057 `"Naucalpan de Juárez"', add
label define mx10a_muniwrk_lbl 15058 `"Nezahualcóyotl"', add
label define mx10a_muniwrk_lbl 15059 `"Nextlalpan"', add
label define mx10a_muniwrk_lbl 15060 `"Nicolás Romero"', add
label define mx10a_muniwrk_lbl 15061 `"Nopaltepec"', add
label define mx10a_muniwrk_lbl 15062 `"Ocoyoacac"', add
label define mx10a_muniwrk_lbl 15063 `"Ocuilan"', add
label define mx10a_muniwrk_lbl 15064 `"El Oro"', add
label define mx10a_muniwrk_lbl 15065 `"Otumba"', add
label define mx10a_muniwrk_lbl 15066 `"Otzoloapan"', add
label define mx10a_muniwrk_lbl 15067 `"Otzolotepec"', add
label define mx10a_muniwrk_lbl 15068 `"Ozumba"', add
label define mx10a_muniwrk_lbl 15069 `"Papalotla"', add
label define mx10a_muniwrk_lbl 15070 `"La Paz"', add
label define mx10a_muniwrk_lbl 15071 `"Polotitlán"', add
label define mx10a_muniwrk_lbl 15072 `"Rayón"', add
label define mx10a_muniwrk_lbl 15073 `"San Antonio la Isla"', add
label define mx10a_muniwrk_lbl 15074 `"San Felipe del Progreso"', add
label define mx10a_muniwrk_lbl 15075 `"San Martín de las Pirámides"', add
label define mx10a_muniwrk_lbl 15076 `"San Mateo Atenco"', add
label define mx10a_muniwrk_lbl 15077 `"San Simón de Guerrero"', add
label define mx10a_muniwrk_lbl 15078 `"Santo Tomás"', add
label define mx10a_muniwrk_lbl 15079 `"Soyaniquilpan de Juárez"', add
label define mx10a_muniwrk_lbl 15080 `"Sultepec"', add
label define mx10a_muniwrk_lbl 15081 `"Tecámac"', add
label define mx10a_muniwrk_lbl 15082 `"Tejupilco"', add
label define mx10a_muniwrk_lbl 15083 `"Temamatla"', add
label define mx10a_muniwrk_lbl 15084 `"Temascalapa"', add
label define mx10a_muniwrk_lbl 15085 `"Temascalcingo"', add
label define mx10a_muniwrk_lbl 15086 `"Temascaltepec"', add
label define mx10a_muniwrk_lbl 15087 `"Temoaya"', add
label define mx10a_muniwrk_lbl 15088 `"Tenancingo"', add
label define mx10a_muniwrk_lbl 15089 `"Tenango del Aire"', add
label define mx10a_muniwrk_lbl 15090 `"Tenango del Valle"', add
label define mx10a_muniwrk_lbl 15091 `"Teoloyucán"', add
label define mx10a_muniwrk_lbl 15092 `"Teotihuacán"', add
label define mx10a_muniwrk_lbl 15093 `"Tepetlaoxtoc"', add
label define mx10a_muniwrk_lbl 15094 `"Tepetlixpa"', add
label define mx10a_muniwrk_lbl 15095 `"Tepotzotlán"', add
label define mx10a_muniwrk_lbl 15096 `"Tequixquiac"', add
label define mx10a_muniwrk_lbl 15097 `"Texcaltitlán"', add
label define mx10a_muniwrk_lbl 15098 `"Texcalyacac"', add
label define mx10a_muniwrk_lbl 15099 `"Texcoco"', add
label define mx10a_muniwrk_lbl 15100 `"Tezoyuca"', add
label define mx10a_muniwrk_lbl 15101 `"Tianguistenco"', add
label define mx10a_muniwrk_lbl 15102 `"Timilpan"', add
label define mx10a_muniwrk_lbl 15103 `"Tlalmanalco"', add
label define mx10a_muniwrk_lbl 15104 `"Tlalnepantla de Baz"', add
label define mx10a_muniwrk_lbl 15105 `"Tlatlaya"', add
label define mx10a_muniwrk_lbl 15106 `"Toluca"', add
label define mx10a_muniwrk_lbl 15107 `"Tonatico"', add
label define mx10a_muniwrk_lbl 15108 `"Tultepec"', add
label define mx10a_muniwrk_lbl 15109 `"Tultitlán"', add
label define mx10a_muniwrk_lbl 15110 `"Valle de Bravo"', add
label define mx10a_muniwrk_lbl 15111 `"Villa de Allende"', add
label define mx10a_muniwrk_lbl 15112 `"Villa del Carbón"', add
label define mx10a_muniwrk_lbl 15113 `"Villa Guerrero"', add
label define mx10a_muniwrk_lbl 15114 `"Villa Victoria"', add
label define mx10a_muniwrk_lbl 15115 `"Xonacatlán"', add
label define mx10a_muniwrk_lbl 15116 `"Zacazonapan"', add
label define mx10a_muniwrk_lbl 15117 `"Zacualpan"', add
label define mx10a_muniwrk_lbl 15118 `"Zinacantepec"', add
label define mx10a_muniwrk_lbl 15119 `"Zumpahuacán"', add
label define mx10a_muniwrk_lbl 15120 `"Zumpango"', add
label define mx10a_muniwrk_lbl 15121 `"Cuautitlán Izcalli"', add
label define mx10a_muniwrk_lbl 15122 `"Valle de Chalco Solidaridad"', add
label define mx10a_muniwrk_lbl 15123 `"Luvianos"', add
label define mx10a_muniwrk_lbl 15124 `"San José del Rincón"', add
label define mx10a_muniwrk_lbl 15125 `"Tonanitla"', add
label define mx10a_muniwrk_lbl 15999 `"México, municipality unknown"', add
label define mx10a_muniwrk_lbl 16001 `"Acuitzio"', add
label define mx10a_muniwrk_lbl 16002 `"Aguililla"', add
label define mx10a_muniwrk_lbl 16003 `"Álvaro Obregón"', add
label define mx10a_muniwrk_lbl 16004 `"Angamacutiro"', add
label define mx10a_muniwrk_lbl 16005 `"Angangueo"', add
label define mx10a_muniwrk_lbl 16006 `"Apatzingán"', add
label define mx10a_muniwrk_lbl 16007 `"Aporo"', add
label define mx10a_muniwrk_lbl 16008 `"Aquila"', add
label define mx10a_muniwrk_lbl 16009 `"Ario"', add
label define mx10a_muniwrk_lbl 16010 `"Arteaga"', add
label define mx10a_muniwrk_lbl 16011 `"Briseñas"', add
label define mx10a_muniwrk_lbl 16012 `"Buenavista"', add
label define mx10a_muniwrk_lbl 16013 `"Carácuaro"', add
label define mx10a_muniwrk_lbl 16014 `"Coahuayana"', add
label define mx10a_muniwrk_lbl 16015 `"Coalcomán de Vázquez Pallares"', add
label define mx10a_muniwrk_lbl 16016 `"Coeneo"', add
label define mx10a_muniwrk_lbl 16017 `"Contepec"', add
label define mx10a_muniwrk_lbl 16018 `"Copándaro"', add
label define mx10a_muniwrk_lbl 16019 `"Cotija"', add
label define mx10a_muniwrk_lbl 16020 `"Cuitzeo"', add
label define mx10a_muniwrk_lbl 16021 `"Charapan"', add
label define mx10a_muniwrk_lbl 16022 `"Charo"', add
label define mx10a_muniwrk_lbl 16023 `"Chavinda"', add
label define mx10a_muniwrk_lbl 16024 `"Cherán"', add
label define mx10a_muniwrk_lbl 16025 `"Chilchota"', add
label define mx10a_muniwrk_lbl 16026 `"Chinicuila"', add
label define mx10a_muniwrk_lbl 16027 `"Chucándiro"', add
label define mx10a_muniwrk_lbl 16028 `"Churintzio"', add
label define mx10a_muniwrk_lbl 16029 `"Churumuco"', add
label define mx10a_muniwrk_lbl 16030 `"Ecuandureo"', add
label define mx10a_muniwrk_lbl 16031 `"Epitacio Huerta"', add
label define mx10a_muniwrk_lbl 16032 `"Erongarícuaro"', add
label define mx10a_muniwrk_lbl 16033 `"Gabriel Zamora"', add
label define mx10a_muniwrk_lbl 16034 `"Hidalgo"', add
label define mx10a_muniwrk_lbl 16035 `"La Huacana"', add
label define mx10a_muniwrk_lbl 16036 `"Huandacareo"', add
label define mx10a_muniwrk_lbl 16037 `"Huaniqueo"', add
label define mx10a_muniwrk_lbl 16038 `"Huetamo"', add
label define mx10a_muniwrk_lbl 16039 `"Huiramba"', add
label define mx10a_muniwrk_lbl 16040 `"Indaparapeo"', add
label define mx10a_muniwrk_lbl 16041 `"Irimbo"', add
label define mx10a_muniwrk_lbl 16042 `"Ixtlán"', add
label define mx10a_muniwrk_lbl 16043 `"Jacona"', add
label define mx10a_muniwrk_lbl 16044 `"Jiménez"', add
label define mx10a_muniwrk_lbl 16045 `"Jiquilpan"', add
label define mx10a_muniwrk_lbl 16046 `"Juárez"', add
label define mx10a_muniwrk_lbl 16047 `"Jungapeo"', add
label define mx10a_muniwrk_lbl 16048 `"Lagunillas"', add
label define mx10a_muniwrk_lbl 16049 `"Madero"', add
label define mx10a_muniwrk_lbl 16050 `"Maravatío"', add
label define mx10a_muniwrk_lbl 16051 `"Marcos Castellanos"', add
label define mx10a_muniwrk_lbl 16052 `"Lázaro Cárdenas"', add
label define mx10a_muniwrk_lbl 16053 `"Morelia"', add
label define mx10a_muniwrk_lbl 16054 `"Morelos"', add
label define mx10a_muniwrk_lbl 16055 `"Múgica"', add
label define mx10a_muniwrk_lbl 16056 `"Nahuatzen"', add
label define mx10a_muniwrk_lbl 16057 `"Nocupétaro"', add
label define mx10a_muniwrk_lbl 16058 `"Nuevo Parangaricutiro"', add
label define mx10a_muniwrk_lbl 16059 `"Nuevo Urecho"', add
label define mx10a_muniwrk_lbl 16060 `"Numarán"', add
label define mx10a_muniwrk_lbl 16061 `"Ocampo"', add
label define mx10a_muniwrk_lbl 16062 `"Pajacuarán"', add
label define mx10a_muniwrk_lbl 16063 `"Panindícuaro"', add
label define mx10a_muniwrk_lbl 16064 `"Parácuaro"', add
label define mx10a_muniwrk_lbl 16065 `"Paracho"', add
label define mx10a_muniwrk_lbl 16066 `"Pátzcuaro"', add
label define mx10a_muniwrk_lbl 16067 `"Penjamillo"', add
label define mx10a_muniwrk_lbl 16068 `"Peribán"', add
label define mx10a_muniwrk_lbl 16069 `"La Piedad"', add
label define mx10a_muniwrk_lbl 16070 `"Purépero"', add
label define mx10a_muniwrk_lbl 16071 `"Puruándiro"', add
label define mx10a_muniwrk_lbl 16072 `"Queréndaro"', add
label define mx10a_muniwrk_lbl 16073 `"Quiroga"', add
label define mx10a_muniwrk_lbl 16074 `"Cojumatlán de Régules"', add
label define mx10a_muniwrk_lbl 16075 `"Los Reyes"', add
label define mx10a_muniwrk_lbl 16076 `"Sahuayo"', add
label define mx10a_muniwrk_lbl 16077 `"San Lucas"', add
label define mx10a_muniwrk_lbl 16078 `"Santa Ana Maya"', add
label define mx10a_muniwrk_lbl 16079 `"Salvador Escalante"', add
label define mx10a_muniwrk_lbl 16080 `"Senguio"', add
label define mx10a_muniwrk_lbl 16081 `"Susupuato"', add
label define mx10a_muniwrk_lbl 16082 `"Tacámbaro"', add
label define mx10a_muniwrk_lbl 16083 `"Tancítaro"', add
label define mx10a_muniwrk_lbl 16084 `"Tangamandapio"', add
label define mx10a_muniwrk_lbl 16085 `"Tangancícuaro"', add
label define mx10a_muniwrk_lbl 16086 `"Tanhuato"', add
label define mx10a_muniwrk_lbl 16087 `"Taretan"', add
label define mx10a_muniwrk_lbl 16088 `"Tarímbaro"', add
label define mx10a_muniwrk_lbl 16089 `"Tepalcatepec"', add
label define mx10a_muniwrk_lbl 16090 `"Tingambato"', add
label define mx10a_muniwrk_lbl 16091 `"Tingüindín"', add
label define mx10a_muniwrk_lbl 16092 `"Tiquicheo de Nicolás Romero"', add
label define mx10a_muniwrk_lbl 16093 `"Tlalpujahua"', add
label define mx10a_muniwrk_lbl 16094 `"Tlazazalca"', add
label define mx10a_muniwrk_lbl 16095 `"Tocumbo"', add
label define mx10a_muniwrk_lbl 16096 `"Tumbiscatío"', add
label define mx10a_muniwrk_lbl 16097 `"Turicato"', add
label define mx10a_muniwrk_lbl 16098 `"Tuxpan"', add
label define mx10a_muniwrk_lbl 16099 `"Tuzantla"', add
label define mx10a_muniwrk_lbl 16100 `"Tzintzuntzan"', add
label define mx10a_muniwrk_lbl 16101 `"Tzitzio"', add
label define mx10a_muniwrk_lbl 16102 `"Uruapan"', add
label define mx10a_muniwrk_lbl 16103 `"Venustiano Carranza"', add
label define mx10a_muniwrk_lbl 16104 `"Villamar"', add
label define mx10a_muniwrk_lbl 16105 `"Vista Hermosa"', add
label define mx10a_muniwrk_lbl 16106 `"Yurécuaro"', add
label define mx10a_muniwrk_lbl 16107 `"Zacapu"', add
label define mx10a_muniwrk_lbl 16108 `"Zamora"', add
label define mx10a_muniwrk_lbl 16109 `"Zináparo"', add
label define mx10a_muniwrk_lbl 16110 `"Zinapécuaro"', add
label define mx10a_muniwrk_lbl 16111 `"Ziracuaretiro"', add
label define mx10a_muniwrk_lbl 16112 `"Zitácuaro"', add
label define mx10a_muniwrk_lbl 16113 `"José Sixto Verduzco"', add
label define mx10a_muniwrk_lbl 16999 `"Michoacán de Ocampo entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 17001 `"Amacuzac"', add
label define mx10a_muniwrk_lbl 17002 `"Atlatlahucan"', add
label define mx10a_muniwrk_lbl 17003 `"Axochiapan"', add
label define mx10a_muniwrk_lbl 17004 `"Ayala"', add
label define mx10a_muniwrk_lbl 17005 `"Coatlán del Río"', add
label define mx10a_muniwrk_lbl 17006 `"Cuautla"', add
label define mx10a_muniwrk_lbl 17007 `"Cuernavaca"', add
label define mx10a_muniwrk_lbl 17008 `"Emiliano Zapata"', add
label define mx10a_muniwrk_lbl 17009 `"Huitzilac"', add
label define mx10a_muniwrk_lbl 17010 `"Jantetelco"', add
label define mx10a_muniwrk_lbl 17011 `"Jiutepec"', add
label define mx10a_muniwrk_lbl 17012 `"Jojutla"', add
label define mx10a_muniwrk_lbl 17013 `"Jonacatepec"', add
label define mx10a_muniwrk_lbl 17014 `"Mazatepec"', add
label define mx10a_muniwrk_lbl 17015 `"Miacatlán"', add
label define mx10a_muniwrk_lbl 17016 `"Ocuituco"', add
label define mx10a_muniwrk_lbl 17017 `"Puente de Ixtla"', add
label define mx10a_muniwrk_lbl 17018 `"Temixco"', add
label define mx10a_muniwrk_lbl 17019 `"Tepalcingo"', add
label define mx10a_muniwrk_lbl 17020 `"Tepoztlán"', add
label define mx10a_muniwrk_lbl 17021 `"Tetecala"', add
label define mx10a_muniwrk_lbl 17022 `"Tetela del Volcán"', add
label define mx10a_muniwrk_lbl 17023 `"Tlalnepantla"', add
label define mx10a_muniwrk_lbl 17024 `"Tlaltizapán"', add
label define mx10a_muniwrk_lbl 17025 `"Tlaquiltenango"', add
label define mx10a_muniwrk_lbl 17026 `"Tlayacapan"', add
label define mx10a_muniwrk_lbl 17027 `"Totolapan"', add
label define mx10a_muniwrk_lbl 17028 `"Xochitepec"', add
label define mx10a_muniwrk_lbl 17029 `"Yautepec"', add
label define mx10a_muniwrk_lbl 17030 `"Yecapixtla"', add
label define mx10a_muniwrk_lbl 17031 `"Zacatepec"', add
label define mx10a_muniwrk_lbl 17032 `"Zacualpan"', add
label define mx10a_muniwrk_lbl 17033 `"Temoac"', add
label define mx10a_muniwrk_lbl 17999 `"Morelos entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 18001 `"Acaponeta"', add
label define mx10a_muniwrk_lbl 18002 `"Ahuacatlán"', add
label define mx10a_muniwrk_lbl 18003 `"Amatlán de Cañas"', add
label define mx10a_muniwrk_lbl 18004 `"Compostela"', add
label define mx10a_muniwrk_lbl 18005 `"Huajicori"', add
label define mx10a_muniwrk_lbl 18006 `"Ixtlán del Río"', add
label define mx10a_muniwrk_lbl 18007 `"Jala"', add
label define mx10a_muniwrk_lbl 18008 `"Xalisco"', add
label define mx10a_muniwrk_lbl 18009 `"Del Nayar"', add
label define mx10a_muniwrk_lbl 18010 `"Rosamorada"', add
label define mx10a_muniwrk_lbl 18011 `"Ruíz"', add
label define mx10a_muniwrk_lbl 18012 `"San Blas"', add
label define mx10a_muniwrk_lbl 18013 `"San Pedro Lagunillas"', add
label define mx10a_muniwrk_lbl 18014 `"Santa María del Oro"', add
label define mx10a_muniwrk_lbl 18015 `"Santiago Ixcuintla"', add
label define mx10a_muniwrk_lbl 18016 `"Tecuala"', add
label define mx10a_muniwrk_lbl 18017 `"Tepic"', add
label define mx10a_muniwrk_lbl 18018 `"Tuxpan"', add
label define mx10a_muniwrk_lbl 18019 `"La Yesca"', add
label define mx10a_muniwrk_lbl 18020 `"Bahía de Banderas"', add
label define mx10a_muniwrk_lbl 18999 `"Nayarit, municipality unknown"', add
label define mx10a_muniwrk_lbl 19001 `"Abasolo"', add
label define mx10a_muniwrk_lbl 19002 `"Agualeguas"', add
label define mx10a_muniwrk_lbl 19003 `"Los Aldamas"', add
label define mx10a_muniwrk_lbl 19004 `"Allende"', add
label define mx10a_muniwrk_lbl 19005 `"Anáhuac"', add
label define mx10a_muniwrk_lbl 19006 `"Apodaca"', add
label define mx10a_muniwrk_lbl 19007 `"Aramberri"', add
label define mx10a_muniwrk_lbl 19008 `"Bustamante"', add
label define mx10a_muniwrk_lbl 19009 `"Cadereyta Jiménez"', add
label define mx10a_muniwrk_lbl 19010 `"Carmen"', add
label define mx10a_muniwrk_lbl 19011 `"Cerralvo"', add
label define mx10a_muniwrk_lbl 19012 `"Ciénega de Flores"', add
label define mx10a_muniwrk_lbl 19013 `"China"', add
label define mx10a_muniwrk_lbl 19014 `"Dr. Arroyo"', add
label define mx10a_muniwrk_lbl 19015 `"Dr. Coss"', add
label define mx10a_muniwrk_lbl 19016 `"Dr. González"', add
label define mx10a_muniwrk_lbl 19017 `"Galeana"', add
label define mx10a_muniwrk_lbl 19018 `"García"', add
label define mx10a_muniwrk_lbl 19019 `"San Pedro Garza García"', add
label define mx10a_muniwrk_lbl 19020 `"Gral. Bravo"', add
label define mx10a_muniwrk_lbl 19021 `"Gral. Escobedo"', add
label define mx10a_muniwrk_lbl 19022 `"Gral. Terán"', add
label define mx10a_muniwrk_lbl 19023 `"Gral. Treviño"', add
label define mx10a_muniwrk_lbl 19024 `"Gral. Zaragoza"', add
label define mx10a_muniwrk_lbl 19025 `"Gral. Zuazua"', add
label define mx10a_muniwrk_lbl 19026 `"Guadalupe"', add
label define mx10a_muniwrk_lbl 19027 `"Los Herreras"', add
label define mx10a_muniwrk_lbl 19028 `"Higueras"', add
label define mx10a_muniwrk_lbl 19029 `"Hualahuises"', add
label define mx10a_muniwrk_lbl 19030 `"Iturbide"', add
label define mx10a_muniwrk_lbl 19031 `"Juárez"', add
label define mx10a_muniwrk_lbl 19032 `"Lampazos de Naranjo"', add
label define mx10a_muniwrk_lbl 19033 `"Linares"', add
label define mx10a_muniwrk_lbl 19034 `"Marín"', add
label define mx10a_muniwrk_lbl 19035 `"Melchor Ocampo"', add
label define mx10a_muniwrk_lbl 19036 `"Mier y Noriega"', add
label define mx10a_muniwrk_lbl 19037 `"Mina"', add
label define mx10a_muniwrk_lbl 19038 `"Montemorelos"', add
label define mx10a_muniwrk_lbl 19039 `"Monterrey"', add
label define mx10a_muniwrk_lbl 19040 `"Parás"', add
label define mx10a_muniwrk_lbl 19041 `"Pesquería"', add
label define mx10a_muniwrk_lbl 19042 `"Los Ramones"', add
label define mx10a_muniwrk_lbl 19043 `"Rayones"', add
label define mx10a_muniwrk_lbl 19044 `"Sabinas Hidalgo"', add
label define mx10a_muniwrk_lbl 19045 `"Salinas Victoria"', add
label define mx10a_muniwrk_lbl 19046 `"San Nicolás de los Garza"', add
label define mx10a_muniwrk_lbl 19047 `"Hidalgo"', add
label define mx10a_muniwrk_lbl 19048 `"Santa Catarina"', add
label define mx10a_muniwrk_lbl 19049 `"Santiago"', add
label define mx10a_muniwrk_lbl 19050 `"Vallecillo"', add
label define mx10a_muniwrk_lbl 19051 `"Villaldama"', add
label define mx10a_muniwrk_lbl 19999 `"Nuevo León, municipality"', add
label define mx10a_muniwrk_lbl 20001 `"Abejones"', add
label define mx10a_muniwrk_lbl 20002 `"Acatlán de Pérez Figueroa"', add
label define mx10a_muniwrk_lbl 20003 `"Asunción Cacalotepec"', add
label define mx10a_muniwrk_lbl 20004 `"Asunción Cuyotepeji"', add
label define mx10a_muniwrk_lbl 20005 `"Asunción Ixtaltepec"', add
label define mx10a_muniwrk_lbl 20006 `"Asunción Nochixtlán"', add
label define mx10a_muniwrk_lbl 20007 `"Asunción Ocotlán"', add
label define mx10a_muniwrk_lbl 20008 `"Asunción Tlacolulita"', add
label define mx10a_muniwrk_lbl 20009 `"Ayotzintepec"', add
label define mx10a_muniwrk_lbl 20010 `"El Barrio de la Soledad"', add
label define mx10a_muniwrk_lbl 20011 `"Calihualá"', add
label define mx10a_muniwrk_lbl 20012 `"Candelaria Loxicha"', add
label define mx10a_muniwrk_lbl 20013 `"Ciénega de Zimatlán"', add
label define mx10a_muniwrk_lbl 20014 `"Ciudad Ixtepec"', add
label define mx10a_muniwrk_lbl 20015 `"Coatecas Altas"', add
label define mx10a_muniwrk_lbl 20016 `"Coicoyán de las Flores"', add
label define mx10a_muniwrk_lbl 20017 `"La Compañía"', add
label define mx10a_muniwrk_lbl 20018 `"Concepción Buenavista"', add
label define mx10a_muniwrk_lbl 20019 `"Concepción Pápalo"', add
label define mx10a_muniwrk_lbl 20020 `"Constancia del Rosario"', add
label define mx10a_muniwrk_lbl 20021 `"Cosolapa"', add
label define mx10a_muniwrk_lbl 20022 `"Cosoltepec"', add
label define mx10a_muniwrk_lbl 20023 `"Cuilápam de Guerrero"', add
label define mx10a_muniwrk_lbl 20024 `"Cuyamecalco Villa de Zaragoza"', add
label define mx10a_muniwrk_lbl 20025 `"Chahuites"', add
label define mx10a_muniwrk_lbl 20026 `"Chalcatongo de Hidalgo"', add
label define mx10a_muniwrk_lbl 20027 `"Chiquihuitlán de Benito Juárez"', add
label define mx10a_muniwrk_lbl 20028 `"Heroica Ciudad de Ejutla de Crespo"', add
label define mx10a_muniwrk_lbl 20029 `"Eloxochitlán de Flores Magón"', add
label define mx10a_muniwrk_lbl 20030 `"El Espinal"', add
label define mx10a_muniwrk_lbl 20031 `"Tamazulápam del Espíritu Santo"', add
label define mx10a_muniwrk_lbl 20032 `"Fresnillo de Trujano"', add
label define mx10a_muniwrk_lbl 20033 `"Guadalupe Etla"', add
label define mx10a_muniwrk_lbl 20034 `"Guadalupe de Ramírez"', add
label define mx10a_muniwrk_lbl 20035 `"Guelatao de Juárez"', add
label define mx10a_muniwrk_lbl 20036 `"Guevea de Humboldt"', add
label define mx10a_muniwrk_lbl 20037 `"Mesones Hidalgo"', add
label define mx10a_muniwrk_lbl 20038 `"Villa Hidalgo"', add
label define mx10a_muniwrk_lbl 20039 `"Heroica Ciudad de Huajuapan de León"', add
label define mx10a_muniwrk_lbl 20040 `"Huautepec"', add
label define mx10a_muniwrk_lbl 20041 `"Huautla de Jiménez"', add
label define mx10a_muniwrk_lbl 20042 `"Ixtlán de Juárez"', add
label define mx10a_muniwrk_lbl 20043 `"Heroica Ciudad de Juchitán de Zaragoza"', add
label define mx10a_muniwrk_lbl 20044 `"Loma Bonita"', add
label define mx10a_muniwrk_lbl 20045 `"Magdalena Apasco"', add
label define mx10a_muniwrk_lbl 20046 `"Magdalena Jaltepec"', add
label define mx10a_muniwrk_lbl 20047 `"Santa Magdalena Jicotlán"', add
label define mx10a_muniwrk_lbl 20048 `"Magdalena Mixtepec"', add
label define mx10a_muniwrk_lbl 20049 `"Magdalena Ocotlán"', add
label define mx10a_muniwrk_lbl 20050 `"Magdalena Peñasco"', add
label define mx10a_muniwrk_lbl 20051 `"Magdalena Teitipac"', add
label define mx10a_muniwrk_lbl 20052 `"Magdalena Tequisistlán"', add
label define mx10a_muniwrk_lbl 20053 `"Magdalena Tlacotepec"', add
label define mx10a_muniwrk_lbl 20054 `"Magdalena Zahuatlán"', add
label define mx10a_muniwrk_lbl 20055 `"Mariscala de Juárez"', add
label define mx10a_muniwrk_lbl 20056 `"Mártires de Tacubaya"', add
label define mx10a_muniwrk_lbl 20057 `"Matías Romero Avendaño"', add
label define mx10a_muniwrk_lbl 20058 `"Mazatlán Villa de Flores"', add
label define mx10a_muniwrk_lbl 20059 `"Miahuatlán de Porfirio Díaz"', add
label define mx10a_muniwrk_lbl 20060 `"Mixistlán de la Reforma"', add
label define mx10a_muniwrk_lbl 20061 `"Monjas"', add
label define mx10a_muniwrk_lbl 20062 `"Natividad"', add
label define mx10a_muniwrk_lbl 20063 `"Nazareno Etla"', add
label define mx10a_muniwrk_lbl 20064 `"Nejapa de Madero"', add
label define mx10a_muniwrk_lbl 20065 `"Ixpantepec Nieves"', add
label define mx10a_muniwrk_lbl 20066 `"Santiago Niltepec"', add
label define mx10a_muniwrk_lbl 20067 `"Oaxaca de Juárez"', add
label define mx10a_muniwrk_lbl 20068 `"Ocotlán de Morelos"', add
label define mx10a_muniwrk_lbl 20069 `"La Pe"', add
label define mx10a_muniwrk_lbl 20070 `"Pinotepa de Don Luis"', add
label define mx10a_muniwrk_lbl 20071 `"Pluma Hidalgo"', add
label define mx10a_muniwrk_lbl 20072 `"San José del Progreso"', add
label define mx10a_muniwrk_lbl 20073 `"Putla Villa de Guerrero"', add
label define mx10a_muniwrk_lbl 20074 `"Santa Catarina Quioquitani"', add
label define mx10a_muniwrk_lbl 20075 `"Reforma de Pineda"', add
label define mx10a_muniwrk_lbl 20076 `"La Reforma"', add
label define mx10a_muniwrk_lbl 20077 `"Reyes Etla"', add
label define mx10a_muniwrk_lbl 20078 `"Rojas de Cuauhtémoc"', add
label define mx10a_muniwrk_lbl 20079 `"Salina Cruz"', add
label define mx10a_muniwrk_lbl 20080 `"San Agustín Amatengo"', add
label define mx10a_muniwrk_lbl 20081 `"San Agustín Atenango"', add
label define mx10a_muniwrk_lbl 20082 `"San Agustín Chayuco"', add
label define mx10a_muniwrk_lbl 20083 `"San Agustín de las Juntas"', add
label define mx10a_muniwrk_lbl 20084 `"San Agustín Etla"', add
label define mx10a_muniwrk_lbl 20085 `"San Agustín Loxicha"', add
label define mx10a_muniwrk_lbl 20086 `"San Agustín Tlacotepec"', add
label define mx10a_muniwrk_lbl 20087 `"San Agustín Yatareni"', add
label define mx10a_muniwrk_lbl 20088 `"San Andrés Cabecera Nueva"', add
label define mx10a_muniwrk_lbl 20089 `"San Andrés Dinicuiti"', add
label define mx10a_muniwrk_lbl 20090 `"San Andrés Huaxpaltepec"', add
label define mx10a_muniwrk_lbl 20091 `"San Andrés Huayápam"', add
label define mx10a_muniwrk_lbl 20092 `"San Andrés Ixtlahuaca"', add
label define mx10a_muniwrk_lbl 20093 `"San Andrés Lagunas"', add
label define mx10a_muniwrk_lbl 20094 `"San Andrés Nuxiño"', add
label define mx10a_muniwrk_lbl 20095 `"San Andrés Paxtlán"', add
label define mx10a_muniwrk_lbl 20096 `"San Andrés Sinaxtla"', add
label define mx10a_muniwrk_lbl 20097 `"San Andrés Solaga"', add
label define mx10a_muniwrk_lbl 20098 `"San Andrés Teotilálpam"', add
label define mx10a_muniwrk_lbl 20099 `"San Andrés Tepetlapa"', add
label define mx10a_muniwrk_lbl 20100 `"San Andrés Yaá"', add
label define mx10a_muniwrk_lbl 20101 `"San Andrés Zabache"', add
label define mx10a_muniwrk_lbl 20102 `"San Andrés Zautla"', add
label define mx10a_muniwrk_lbl 20103 `"San Antonino Castillo Velasco"', add
label define mx10a_muniwrk_lbl 20104 `"San Antonino el Alto"', add
label define mx10a_muniwrk_lbl 20105 `"San Antonino Monte Verde"', add
label define mx10a_muniwrk_lbl 20106 `"San Antonio Acutla"', add
label define mx10a_muniwrk_lbl 20107 `"San Antonio de la Cal"', add
label define mx10a_muniwrk_lbl 20108 `"San Antonio Huitepec"', add
label define mx10a_muniwrk_lbl 20109 `"San Antonio Nanahuatípam"', add
label define mx10a_muniwrk_lbl 20110 `"San Antonio Sinicahua"', add
label define mx10a_muniwrk_lbl 20111 `"San Antonio Tepetlapa"', add
label define mx10a_muniwrk_lbl 20112 `"San Baltazar Chichicápam"', add
label define mx10a_muniwrk_lbl 20113 `"San Baltazar Loxicha"', add
label define mx10a_muniwrk_lbl 20114 `"San Baltazar Yatzachi el Bajo"', add
label define mx10a_muniwrk_lbl 20115 `"San Bartolo Coyotepec"', add
label define mx10a_muniwrk_lbl 20116 `"San Bartolomé Ayautla"', add
label define mx10a_muniwrk_lbl 20117 `"San Bartolomé Loxicha"', add
label define mx10a_muniwrk_lbl 20118 `"San Bartolomé Quialana"', add
label define mx10a_muniwrk_lbl 20119 `"San Bartolomé Yucuañe"', add
label define mx10a_muniwrk_lbl 20120 `"San Bartolomé Zoogocho"', add
label define mx10a_muniwrk_lbl 20121 `"San Bartolo Soyaltepec"', add
label define mx10a_muniwrk_lbl 20122 `"San Bartolo Yautepec"', add
label define mx10a_muniwrk_lbl 20123 `"San Bernardo Mixtepec"', add
label define mx10a_muniwrk_lbl 20124 `"San Blas Atempa"', add
label define mx10a_muniwrk_lbl 20125 `"San Carlos Yautepec"', add
label define mx10a_muniwrk_lbl 20126 `"San Cristóbal Amatlán"', add
label define mx10a_muniwrk_lbl 20127 `"San Cristóbal Amoltepec"', add
label define mx10a_muniwrk_lbl 20128 `"San Cristóbal Lachirioag"', add
label define mx10a_muniwrk_lbl 20129 `"San Cristóbal Suchixtlahuaca"', add
label define mx10a_muniwrk_lbl 20130 `"San Dionisio del Mar"', add
label define mx10a_muniwrk_lbl 20131 `"San Dionisio Ocotepec"', add
label define mx10a_muniwrk_lbl 20132 `"San Dionisio Ocotlán"', add
label define mx10a_muniwrk_lbl 20133 `"San Esteban Atatlahuca"', add
label define mx10a_muniwrk_lbl 20134 `"San Felipe Jalapa de Díaz"', add
label define mx10a_muniwrk_lbl 20135 `"San Felipe Tejalápam"', add
label define mx10a_muniwrk_lbl 20136 `"San Felipe Usila"', add
label define mx10a_muniwrk_lbl 20137 `"San Francisco Cahuacuá"', add
label define mx10a_muniwrk_lbl 20138 `"San Francisco Cajonos"', add
label define mx10a_muniwrk_lbl 20139 `"San Francisco Chapulapa"', add
label define mx10a_muniwrk_lbl 20140 `"San Francisco Chindúa"', add
label define mx10a_muniwrk_lbl 20141 `"San Francisco del Mar"', add
label define mx10a_muniwrk_lbl 20142 `"San Francisco Huehuetlán"', add
label define mx10a_muniwrk_lbl 20143 `"San Francisco Ixhuatán"', add
label define mx10a_muniwrk_lbl 20144 `"San Francisco Jaltepetongo"', add
label define mx10a_muniwrk_lbl 20145 `"San Francisco Lachigoló"', add
label define mx10a_muniwrk_lbl 20146 `"San Francisco Logueche"', add
label define mx10a_muniwrk_lbl 20147 `"San Francisco Nuxaño"', add
label define mx10a_muniwrk_lbl 20148 `"San Francisco Ozolotepec"', add
label define mx10a_muniwrk_lbl 20149 `"San Francisco Sola"', add
label define mx10a_muniwrk_lbl 20150 `"San Francisco Telixtlahuaca"', add
label define mx10a_muniwrk_lbl 20151 `"San Francisco Teopan"', add
label define mx10a_muniwrk_lbl 20152 `"San Francisco Tlapancingo"', add
label define mx10a_muniwrk_lbl 20153 `"San Gabriel Mixtepec"', add
label define mx10a_muniwrk_lbl 20154 `"San Ildefonso Amatlán"', add
label define mx10a_muniwrk_lbl 20155 `"San Ildefonso Sola"', add
label define mx10a_muniwrk_lbl 20156 `"San Ildefonso Villa Alta"', add
label define mx10a_muniwrk_lbl 20157 `"San Jacinto Amilpas"', add
label define mx10a_muniwrk_lbl 20158 `"San Jacinto Tlacotepec"', add
label define mx10a_muniwrk_lbl 20159 `"San Jerónimo Coatlán"', add
label define mx10a_muniwrk_lbl 20160 `"San Jerónimo Silacayoapilla"', add
label define mx10a_muniwrk_lbl 20161 `"San Jerónimo Sosola"', add
label define mx10a_muniwrk_lbl 20162 `"San Jerónimo Taviche"', add
label define mx10a_muniwrk_lbl 20163 `"San Jerónimo Tecóatl"', add
label define mx10a_muniwrk_lbl 20164 `"San Jorge Nuchita"', add
label define mx10a_muniwrk_lbl 20165 `"San José Ayuquila"', add
label define mx10a_muniwrk_lbl 20166 `"San José Chiltepec"', add
label define mx10a_muniwrk_lbl 20167 `"San José del Peñasco"', add
label define mx10a_muniwrk_lbl 20168 `"San José Estancia Grande"', add
label define mx10a_muniwrk_lbl 20169 `"San José Independencia"', add
label define mx10a_muniwrk_lbl 20170 `"San José Lachiguiri"', add
label define mx10a_muniwrk_lbl 20171 `"San José Tenango"', add
label define mx10a_muniwrk_lbl 20172 `"San Juan Achiutla"', add
label define mx10a_muniwrk_lbl 20173 `"San Juan Atepec"', add
label define mx10a_muniwrk_lbl 20174 `"Ánimas Trujano"', add
label define mx10a_muniwrk_lbl 20175 `"San Juan Bautista Atatlahuca"', add
label define mx10a_muniwrk_lbl 20176 `"San Juan Bautista Coixtlahuaca"', add
label define mx10a_muniwrk_lbl 20177 `"San Juan Bautista Cuicatlán"', add
label define mx10a_muniwrk_lbl 20178 `"San Juan Bautista Guelache"', add
label define mx10a_muniwrk_lbl 20179 `"San Juan Bautista Jayacatlán"', add
label define mx10a_muniwrk_lbl 20180 `"San Juan Bautista Lo de Soto"', add
label define mx10a_muniwrk_lbl 20181 `"San Juan Bautista Suchitepec"', add
label define mx10a_muniwrk_lbl 20182 `"San Juan Bautista Tlacoatzintepec"', add
label define mx10a_muniwrk_lbl 20183 `"San Juan Bautista Tlachichilco"', add
label define mx10a_muniwrk_lbl 20184 `"San Juan Bautista Tuxtepec"', add
label define mx10a_muniwrk_lbl 20185 `"San Juan Cacahuatepec"', add
label define mx10a_muniwrk_lbl 20186 `"San Juan Cieneguilla"', add
label define mx10a_muniwrk_lbl 20187 `"San Juan Coatzóspam"', add
label define mx10a_muniwrk_lbl 20188 `"San Juan Colorado"', add
label define mx10a_muniwrk_lbl 20189 `"San Juan Comaltepec"', add
label define mx10a_muniwrk_lbl 20190 `"San Juan Cotzocón"', add
label define mx10a_muniwrk_lbl 20191 `"San Juan Chicomezúchil"', add
label define mx10a_muniwrk_lbl 20192 `"San Juan Chilateca"', add
label define mx10a_muniwrk_lbl 20193 `"San Juan del Estado"', add
label define mx10a_muniwrk_lbl 20194 `"San Juan del Río"', add
label define mx10a_muniwrk_lbl 20195 `"San Juan Diuxi"', add
label define mx10a_muniwrk_lbl 20196 `"San Juan Evangelista Analco"', add
label define mx10a_muniwrk_lbl 20197 `"San Juan Guelavía"', add
label define mx10a_muniwrk_lbl 20198 `"San Juan Guichicovi"', add
label define mx10a_muniwrk_lbl 20199 `"San Juan Ihualtepec"', add
label define mx10a_muniwrk_lbl 20200 `"San Juan Juquila Mixes"', add
label define mx10a_muniwrk_lbl 20201 `"San Juan Juquila Vijanos"', add
label define mx10a_muniwrk_lbl 20202 `"San Juan Lachao"', add
label define mx10a_muniwrk_lbl 20203 `"San Juan Lachigalla"', add
label define mx10a_muniwrk_lbl 20204 `"San Juan Lajarcia"', add
label define mx10a_muniwrk_lbl 20205 `"San Juan Lalana"', add
label define mx10a_muniwrk_lbl 20206 `"San Juan de los Cués"', add
label define mx10a_muniwrk_lbl 20207 `"San Juan Mazatlán"', add
label define mx10a_muniwrk_lbl 20208 `"San Juan Mixtepec - Dto. 08"', add
label define mx10a_muniwrk_lbl 20209 `"San Juan Mixtepec - Dto. 26"', add
label define mx10a_muniwrk_lbl 20210 `"San Juan Ñumí"', add
label define mx10a_muniwrk_lbl 20211 `"San Juan Ozolotepec"', add
label define mx10a_muniwrk_lbl 20212 `"San Juan Petlapa"', add
label define mx10a_muniwrk_lbl 20213 `"San Juan Quiahije"', add
label define mx10a_muniwrk_lbl 20214 `"San Juan Quiotepec"', add
label define mx10a_muniwrk_lbl 20215 `"San Juan Sayultepec"', add
label define mx10a_muniwrk_lbl 20216 `"San Juan Tabaá"', add
label define mx10a_muniwrk_lbl 20217 `"San Juan Tamazola"', add
label define mx10a_muniwrk_lbl 20218 `"San Juan Teita"', add
label define mx10a_muniwrk_lbl 20219 `"San Juan Teitipac"', add
label define mx10a_muniwrk_lbl 20220 `"San Juan Tepeuxila"', add
label define mx10a_muniwrk_lbl 20221 `"San Juan Teposcolula"', add
label define mx10a_muniwrk_lbl 20222 `"San Juan Yaeé"', add
label define mx10a_muniwrk_lbl 20223 `"San Juan Yatzona"', add
label define mx10a_muniwrk_lbl 20224 `"San Juan Yucuita"', add
label define mx10a_muniwrk_lbl 20225 `"San Lorenzo"', add
label define mx10a_muniwrk_lbl 20226 `"San Lorenzo Albarradas"', add
label define mx10a_muniwrk_lbl 20227 `"San Lorenzo Cacaotepec"', add
label define mx10a_muniwrk_lbl 20228 `"San Lorenzo Cuaunecuiltitla"', add
label define mx10a_muniwrk_lbl 20229 `"San Lorenzo Texmelúcan"', add
label define mx10a_muniwrk_lbl 20230 `"San Lorenzo Victoria"', add
label define mx10a_muniwrk_lbl 20231 `"San Lucas Camotlán"', add
label define mx10a_muniwrk_lbl 20232 `"San Lucas Ojitlán"', add
label define mx10a_muniwrk_lbl 20233 `"San Lucas Quiaviní"', add
label define mx10a_muniwrk_lbl 20234 `"San Lucas Zoquiápam"', add
label define mx10a_muniwrk_lbl 20235 `"San Luis Amatlán"', add
label define mx10a_muniwrk_lbl 20236 `"San Marcial Ozolotepec"', add
label define mx10a_muniwrk_lbl 20237 `"San Marcos Arteaga"', add
label define mx10a_muniwrk_lbl 20238 `"San Martín de los Cansecos"', add
label define mx10a_muniwrk_lbl 20239 `"San Martín Huamelúlpam"', add
label define mx10a_muniwrk_lbl 20240 `"San Martín Itunyoso"', add
label define mx10a_muniwrk_lbl 20241 `"San Martín Lachilá"', add
label define mx10a_muniwrk_lbl 20242 `"San Martín Peras"', add
label define mx10a_muniwrk_lbl 20243 `"San Martín Tilcajete"', add
label define mx10a_muniwrk_lbl 20244 `"San Martín Toxpalan"', add
label define mx10a_muniwrk_lbl 20245 `"San Martín Zacatepec"', add
label define mx10a_muniwrk_lbl 20246 `"San Mateo Cajonos"', add
label define mx10a_muniwrk_lbl 20247 `"Capulálpam de Méndez"', add
label define mx10a_muniwrk_lbl 20248 `"San Mateo del Mar"', add
label define mx10a_muniwrk_lbl 20249 `"San Mateo Yoloxochitlán"', add
label define mx10a_muniwrk_lbl 20250 `"San Mateo Etlatongo"', add
label define mx10a_muniwrk_lbl 20251 `"San Mateo Nejápam"', add
label define mx10a_muniwrk_lbl 20252 `"San Mateo Peñasco"', add
label define mx10a_muniwrk_lbl 20253 `"San Mateo Piñas"', add
label define mx10a_muniwrk_lbl 20254 `"San Mateo Río Hondo"', add
label define mx10a_muniwrk_lbl 20255 `"San Mateo Sindihui"', add
label define mx10a_muniwrk_lbl 20256 `"San Mateo Tlapiltepec"', add
label define mx10a_muniwrk_lbl 20257 `"San Melchor Betaza"', add
label define mx10a_muniwrk_lbl 20258 `"San Miguel Achiutla"', add
label define mx10a_muniwrk_lbl 20259 `"San Miguel Ahuehuetitlán"', add
label define mx10a_muniwrk_lbl 20260 `"San Miguel Aloápam"', add
label define mx10a_muniwrk_lbl 20261 `"San Miguel Amatitlán"', add
label define mx10a_muniwrk_lbl 20262 `"San Miguel Amatlán"', add
label define mx10a_muniwrk_lbl 20263 `"San Miguel Coatlán"', add
label define mx10a_muniwrk_lbl 20264 `"San Miguel Chicahua"', add
label define mx10a_muniwrk_lbl 20265 `"San Miguel Chimalapa"', add
label define mx10a_muniwrk_lbl 20266 `"San Miguel del Puerto"', add
label define mx10a_muniwrk_lbl 20267 `"San Miguel del Río"', add
label define mx10a_muniwrk_lbl 20268 `"San Miguel Ejutla"', add
label define mx10a_muniwrk_lbl 20269 `"San Miguel el Grande"', add
label define mx10a_muniwrk_lbl 20270 `"San Miguel Huautla"', add
label define mx10a_muniwrk_lbl 20271 `"San Miguel Mixtepec"', add
label define mx10a_muniwrk_lbl 20272 `"San Miguel Panixtlahuaca"', add
label define mx10a_muniwrk_lbl 20273 `"San Miguel Peras"', add
label define mx10a_muniwrk_lbl 20274 `"San Miguel Piedras"', add
label define mx10a_muniwrk_lbl 20275 `"San Miguel Quetzaltepec"', add
label define mx10a_muniwrk_lbl 20276 `"San Miguel Santa Flor"', add
label define mx10a_muniwrk_lbl 20277 `"Villa Sola de Vega"', add
label define mx10a_muniwrk_lbl 20278 `"San Miguel Soyaltepec"', add
label define mx10a_muniwrk_lbl 20279 `"San Miguel Suchixtepec"', add
label define mx10a_muniwrk_lbl 20280 `"Villa Talea de Castro"', add
label define mx10a_muniwrk_lbl 20281 `"San Miguel Tecomatlán"', add
label define mx10a_muniwrk_lbl 20282 `"San Miguel Tenango"', add
label define mx10a_muniwrk_lbl 20283 `"San Miguel Tequixtepec"', add
label define mx10a_muniwrk_lbl 20284 `"San Miguel Tilquiápam"', add
label define mx10a_muniwrk_lbl 20285 `"San Miguel Tlacamama"', add
label define mx10a_muniwrk_lbl 20286 `"San Miguel Tlacotepec"', add
label define mx10a_muniwrk_lbl 20287 `"San Miguel Tulancingo"', add
label define mx10a_muniwrk_lbl 20288 `"San Miguel Yotao"', add
label define mx10a_muniwrk_lbl 20289 `"San Nicolás"', add
label define mx10a_muniwrk_lbl 20290 `"San Nicolás Hidalgo"', add
label define mx10a_muniwrk_lbl 20291 `"San Pablo Coatlán"', add
label define mx10a_muniwrk_lbl 20292 `"San Pablo Cuatro Venados"', add
label define mx10a_muniwrk_lbl 20293 `"San Pablo Etla"', add
label define mx10a_muniwrk_lbl 20294 `"San Pablo Huitzo"', add
label define mx10a_muniwrk_lbl 20295 `"San Pablo Huixtepec"', add
label define mx10a_muniwrk_lbl 20296 `"San Pablo Macuiltianguis"', add
label define mx10a_muniwrk_lbl 20297 `"San Pablo Tijaltepec"', add
label define mx10a_muniwrk_lbl 20298 `"San Pablo Villa de Mitla"', add
label define mx10a_muniwrk_lbl 20299 `"San Pablo Yaganiza"', add
label define mx10a_muniwrk_lbl 20300 `"San Pedro Amuzgos"', add
label define mx10a_muniwrk_lbl 20301 `"San Pedro Apóstol"', add
label define mx10a_muniwrk_lbl 20302 `"San Pedro Atoyac"', add
label define mx10a_muniwrk_lbl 20303 `"San Pedro Cajonos"', add
label define mx10a_muniwrk_lbl 20304 `"San Pedro Coxcaltepec Cántaros"', add
label define mx10a_muniwrk_lbl 20305 `"San Pedro Comitancillo"', add
label define mx10a_muniwrk_lbl 20306 `"San Pedro el Alto"', add
label define mx10a_muniwrk_lbl 20307 `"San Pedro Huamelula"', add
label define mx10a_muniwrk_lbl 20308 `"San Pedro Huilotepec"', add
label define mx10a_muniwrk_lbl 20309 `"San Pedro Ixcatlán"', add
label define mx10a_muniwrk_lbl 20310 `"San Pedro Ixtlahuaca"', add
label define mx10a_muniwrk_lbl 20311 `"San Pedro Jaltepetongo"', add
label define mx10a_muniwrk_lbl 20312 `"San Pedro Jicayán"', add
label define mx10a_muniwrk_lbl 20313 `"San Pedro Jocotipac"', add
label define mx10a_muniwrk_lbl 20314 `"San Pedro Juchatengo"', add
label define mx10a_muniwrk_lbl 20315 `"San Pedro Mártir"', add
label define mx10a_muniwrk_lbl 20316 `"San Pedro Mártir Quiechapa"', add
label define mx10a_muniwrk_lbl 20317 `"San Pedro Mártir Yucuxaco"', add
label define mx10a_muniwrk_lbl 20318 `"San Pedro Mixtepec - Dto. 22"', add
label define mx10a_muniwrk_lbl 20319 `"San Pedro Mixtepec - Dto. 26"', add
label define mx10a_muniwrk_lbl 20320 `"San Pedro Molinos"', add
label define mx10a_muniwrk_lbl 20321 `"San Pedro Nopala"', add
label define mx10a_muniwrk_lbl 20322 `"San Pedro Ocopetatillo"', add
label define mx10a_muniwrk_lbl 20323 `"San Pedro Ocotepec"', add
label define mx10a_muniwrk_lbl 20324 `"San Pedro Pochutla"', add
label define mx10a_muniwrk_lbl 20325 `"San Pedro Quiatoni"', add
label define mx10a_muniwrk_lbl 20326 `"San Pedro Sochiápam"', add
label define mx10a_muniwrk_lbl 20327 `"San Pedro Tapanatepec"', add
label define mx10a_muniwrk_lbl 20328 `"San Pedro Taviche"', add
label define mx10a_muniwrk_lbl 20329 `"San Pedro Teozacoalco"', add
label define mx10a_muniwrk_lbl 20330 `"San Pedro Teutila"', add
label define mx10a_muniwrk_lbl 20331 `"San Pedro Tidaá"', add
label define mx10a_muniwrk_lbl 20332 `"San Pedro Topiltepec"', add
label define mx10a_muniwrk_lbl 20333 `"San Pedro Totolápam"', add
label define mx10a_muniwrk_lbl 20334 `"Villa de Tututepec de Melchor Ocampo"', add
label define mx10a_muniwrk_lbl 20335 `"San Pedro Yaneri"', add
label define mx10a_muniwrk_lbl 20336 `"San Pedro Yólox"', add
label define mx10a_muniwrk_lbl 20337 `"San Pedro y San Pablo Ayutla"', add
label define mx10a_muniwrk_lbl 20338 `"Villa de Etla"', add
label define mx10a_muniwrk_lbl 20339 `"San Pedro y San Pablo Teposcolula"', add
label define mx10a_muniwrk_lbl 20340 `"San Pedro y San Pablo Tequixtepec"', add
label define mx10a_muniwrk_lbl 20341 `"San Pedro Yucunama"', add
label define mx10a_muniwrk_lbl 20342 `"San Raymundo Jalpan"', add
label define mx10a_muniwrk_lbl 20343 `"San Sebastián Abasolo"', add
label define mx10a_muniwrk_lbl 20344 `"San Sebastián Coatlán"', add
label define mx10a_muniwrk_lbl 20345 `"San Sebastián Ixcapa"', add
label define mx10a_muniwrk_lbl 20346 `"San Sebastián Nicananduta"', add
label define mx10a_muniwrk_lbl 20347 `"San Sebastián Río Hondo"', add
label define mx10a_muniwrk_lbl 20348 `"San Sebastián Tecomaxtlahuaca"', add
label define mx10a_muniwrk_lbl 20349 `"San Sebastián Teitipac"', add
label define mx10a_muniwrk_lbl 20350 `"San Sebastián Tutla"', add
label define mx10a_muniwrk_lbl 20351 `"San Simón Almolongas"', add
label define mx10a_muniwrk_lbl 20352 `"San Simón Zahuatlán"', add
label define mx10a_muniwrk_lbl 20353 `"Santa Ana"', add
label define mx10a_muniwrk_lbl 20354 `"Santa Ana Ateixtlahuaca"', add
label define mx10a_muniwrk_lbl 20355 `"Santa Ana Cuauhtémoc"', add
label define mx10a_muniwrk_lbl 20356 `"Santa Ana del Valle"', add
label define mx10a_muniwrk_lbl 20357 `"Santa Ana Tavela"', add
label define mx10a_muniwrk_lbl 20358 `"Santa Ana Tlapacoyan"', add
label define mx10a_muniwrk_lbl 20359 `"Santa Ana Yareni"', add
label define mx10a_muniwrk_lbl 20360 `"Santa Ana Zegache"', add
label define mx10a_muniwrk_lbl 20361 `"Santa Catalina Quierí"', add
label define mx10a_muniwrk_lbl 20362 `"Santa Catarina Cuixtla"', add
label define mx10a_muniwrk_lbl 20363 `"Santa Catarina Ixtepeji"', add
label define mx10a_muniwrk_lbl 20364 `"Santa Catarina Juquila"', add
label define mx10a_muniwrk_lbl 20365 `"Santa Catarina Lachatao"', add
label define mx10a_muniwrk_lbl 20366 `"Santa Catarina Loxicha"', add
label define mx10a_muniwrk_lbl 20367 `"Santa Catarina Mechoacán"', add
label define mx10a_muniwrk_lbl 20368 `"Santa Catarina Minas"', add
label define mx10a_muniwrk_lbl 20369 `"Santa Catarina Quiané"', add
label define mx10a_muniwrk_lbl 20370 `"Santa Catarina Tayata"', add
label define mx10a_muniwrk_lbl 20371 `"Santa Catarina Ticuá"', add
label define mx10a_muniwrk_lbl 20372 `"Santa Catarina Yosonotú"', add
label define mx10a_muniwrk_lbl 20373 `"Santa Catarina Zapoquila"', add
label define mx10a_muniwrk_lbl 20374 `"Santa Cruz Acatepec"', add
label define mx10a_muniwrk_lbl 20375 `"Santa Cruz Amilpas"', add
label define mx10a_muniwrk_lbl 20376 `"Santa Cruz de Bravo"', add
label define mx10a_muniwrk_lbl 20377 `"Santa Cruz Itundujia"', add
label define mx10a_muniwrk_lbl 20378 `"Santa Cruz Mixtepec"', add
label define mx10a_muniwrk_lbl 20379 `"Santa Cruz Nundaco"', add
label define mx10a_muniwrk_lbl 20380 `"Santa Cruz Papalutla"', add
label define mx10a_muniwrk_lbl 20381 `"Santa Cruz Tacache de Mina"', add
label define mx10a_muniwrk_lbl 20382 `"Santa Cruz Tacahua"', add
label define mx10a_muniwrk_lbl 20383 `"Santa Cruz Tayata"', add
label define mx10a_muniwrk_lbl 20384 `"Santa Cruz Xitla"', add
label define mx10a_muniwrk_lbl 20385 `"Santa Cruz Xoxocotlán"', add
label define mx10a_muniwrk_lbl 20386 `"Santa Cruz Zenzontepec"', add
label define mx10a_muniwrk_lbl 20387 `"Santa Gertrudis"', add
label define mx10a_muniwrk_lbl 20388 `"Santa Inés del Monte"', add
label define mx10a_muniwrk_lbl 20389 `"Santa Inés Yatzeche"', add
label define mx10a_muniwrk_lbl 20390 `"Santa Lucía del Camino"', add
label define mx10a_muniwrk_lbl 20391 `"Santa Lucía Miahuatlán"', add
label define mx10a_muniwrk_lbl 20392 `"Santa Lucía Monteverde"', add
label define mx10a_muniwrk_lbl 20393 `"Santa Lucía Ocotlán"', add
label define mx10a_muniwrk_lbl 20394 `"Santa María Alotepec"', add
label define mx10a_muniwrk_lbl 20395 `"Santa María Apazco"', add
label define mx10a_muniwrk_lbl 20396 `"Santa María la Asunción"', add
label define mx10a_muniwrk_lbl 20397 `"Heroica Ciudad de Tlaxiaco"', add
label define mx10a_muniwrk_lbl 20398 `"Ayoquezco de Aldama"', add
label define mx10a_muniwrk_lbl 20399 `"Santa María Atzompa"', add
label define mx10a_muniwrk_lbl 20400 `"Santa María Camotlán"', add
label define mx10a_muniwrk_lbl 20401 `"Santa María Colotepec"', add
label define mx10a_muniwrk_lbl 20402 `"Santa María Cortijo"', add
label define mx10a_muniwrk_lbl 20403 `"Santa María Coyotepec"', add
label define mx10a_muniwrk_lbl 20404 `"Santa María Chachoápam"', add
label define mx10a_muniwrk_lbl 20405 `"Villa de Chilapa de Díaz"', add
label define mx10a_muniwrk_lbl 20406 `"Santa María Chilchotla"', add
label define mx10a_muniwrk_lbl 20407 `"Santa María Chimalapa"', add
label define mx10a_muniwrk_lbl 20408 `"Santa María del Rosario"', add
label define mx10a_muniwrk_lbl 20409 `"Santa María del Tule"', add
label define mx10a_muniwrk_lbl 20410 `"Santa María Ecatepec"', add
label define mx10a_muniwrk_lbl 20411 `"Santa María Guelacé"', add
label define mx10a_muniwrk_lbl 20412 `"Santa María Guienagati"', add
label define mx10a_muniwrk_lbl 20413 `"Santa María Huatulco"', add
label define mx10a_muniwrk_lbl 20414 `"Santa María Huazolotitlán"', add
label define mx10a_muniwrk_lbl 20415 `"Santa María Ipalapa"', add
label define mx10a_muniwrk_lbl 20416 `"Santa María Ixcatlán"', add
label define mx10a_muniwrk_lbl 20417 `"Santa María Jacatepec"', add
label define mx10a_muniwrk_lbl 20418 `"Santa María Jalapa del Marqués"', add
label define mx10a_muniwrk_lbl 20419 `"Santa María Jaltianguis"', add
label define mx10a_muniwrk_lbl 20420 `"Santa María Lachixío"', add
label define mx10a_muniwrk_lbl 20421 `"Santa María Mixtequilla"', add
label define mx10a_muniwrk_lbl 20422 `"Santa María Nativitas"', add
label define mx10a_muniwrk_lbl 20423 `"Santa María Nduayaco"', add
label define mx10a_muniwrk_lbl 20424 `"Santa María Ozolotepec"', add
label define mx10a_muniwrk_lbl 20425 `"Santa María Pápalo"', add
label define mx10a_muniwrk_lbl 20426 `"Santa María Peñoles"', add
label define mx10a_muniwrk_lbl 20427 `"Santa María Petapa"', add
label define mx10a_muniwrk_lbl 20428 `"Santa María Quiegolani"', add
label define mx10a_muniwrk_lbl 20429 `"Santa María Sola"', add
label define mx10a_muniwrk_lbl 20430 `"Santa María Tataltepec"', add
label define mx10a_muniwrk_lbl 20431 `"Santa María Tecomavaca"', add
label define mx10a_muniwrk_lbl 20432 `"Santa María Temaxcalapa"', add
label define mx10a_muniwrk_lbl 20433 `"Santa María Temaxcaltepec"', add
label define mx10a_muniwrk_lbl 20434 `"Santa María Teopoxco"', add
label define mx10a_muniwrk_lbl 20435 `"Santa María Tepantlali"', add
label define mx10a_muniwrk_lbl 20436 `"Santa María Texcatitlán"', add
label define mx10a_muniwrk_lbl 20437 `"Santa María Tlahuitoltepec"', add
label define mx10a_muniwrk_lbl 20438 `"Santa María Tlalixtac"', add
label define mx10a_muniwrk_lbl 20439 `"Santa María Tonameca"', add
label define mx10a_muniwrk_lbl 20440 `"Santa María Totolapilla"', add
label define mx10a_muniwrk_lbl 20441 `"Santa María Xadani"', add
label define mx10a_muniwrk_lbl 20442 `"Santa María Yalina"', add
label define mx10a_muniwrk_lbl 20443 `"Santa María Yavesía"', add
label define mx10a_muniwrk_lbl 20444 `"Santa María Yolotepec"', add
label define mx10a_muniwrk_lbl 20445 `"Santa María Yosoyúa"', add
label define mx10a_muniwrk_lbl 20446 `"Santa María Yucuhiti"', add
label define mx10a_muniwrk_lbl 20447 `"Santa María Zacatepec"', add
label define mx10a_muniwrk_lbl 20448 `"Santa María Zaniza"', add
label define mx10a_muniwrk_lbl 20449 `"Santa María Zoquitlán"', add
label define mx10a_muniwrk_lbl 20450 `"Santiago Amoltepec"', add
label define mx10a_muniwrk_lbl 20451 `"Santiago Apoala"', add
label define mx10a_muniwrk_lbl 20452 `"Santiago Apóstol"', add
label define mx10a_muniwrk_lbl 20453 `"Santiago Astata"', add
label define mx10a_muniwrk_lbl 20454 `"Santiago Atitlán"', add
label define mx10a_muniwrk_lbl 20455 `"Santiago Ayuquililla"', add
label define mx10a_muniwrk_lbl 20456 `"Santiago Cacaloxtepec"', add
label define mx10a_muniwrk_lbl 20457 `"Santiago Camotlán"', add
label define mx10a_muniwrk_lbl 20458 `"Santiago Comaltepec"', add
label define mx10a_muniwrk_lbl 20459 `"Santiago Chazumba"', add
label define mx10a_muniwrk_lbl 20460 `"Santiago Choápam"', add
label define mx10a_muniwrk_lbl 20461 `"Santiago del Río"', add
label define mx10a_muniwrk_lbl 20462 `"Santiago Huajolotitlán"', add
label define mx10a_muniwrk_lbl 20463 `"Santiago Huauclilla"', add
label define mx10a_muniwrk_lbl 20464 `"Santiago Ihuitlán Plumas"', add
label define mx10a_muniwrk_lbl 20465 `"Santiago Ixcuintepec"', add
label define mx10a_muniwrk_lbl 20466 `"Santiago Ixtayutla"', add
label define mx10a_muniwrk_lbl 20467 `"Santiago Jamiltepec"', add
label define mx10a_muniwrk_lbl 20468 `"Santiago Jocotepec"', add
label define mx10a_muniwrk_lbl 20469 `"Santiago Juxtlahuaca"', add
label define mx10a_muniwrk_lbl 20470 `"Santiago Lachiguiri"', add
label define mx10a_muniwrk_lbl 20471 `"Santiago Lalopa"', add
label define mx10a_muniwrk_lbl 20472 `"Santiago Laollaga"', add
label define mx10a_muniwrk_lbl 20473 `"Santiago Laxopa"', add
label define mx10a_muniwrk_lbl 20474 `"Santiago Llano Grande"', add
label define mx10a_muniwrk_lbl 20475 `"Santiago Matatlán"', add
label define mx10a_muniwrk_lbl 20476 `"Santiago Miltepec"', add
label define mx10a_muniwrk_lbl 20477 `"Santiago Minas"', add
label define mx10a_muniwrk_lbl 20478 `"Santiago Nacaltepec"', add
label define mx10a_muniwrk_lbl 20479 `"Santiago Nejapilla"', add
label define mx10a_muniwrk_lbl 20480 `"Santiago Nundiche"', add
label define mx10a_muniwrk_lbl 20481 `"Santiago Nuyoó"', add
label define mx10a_muniwrk_lbl 20482 `"Santiago Pinotepa Nacional"', add
label define mx10a_muniwrk_lbl 20483 `"Santiago Suchilquitongo"', add
label define mx10a_muniwrk_lbl 20484 `"Santiago Tamazola"', add
label define mx10a_muniwrk_lbl 20485 `"Santiago Tapextla"', add
label define mx10a_muniwrk_lbl 20486 `"Villa Tejúpam de la Unión"', add
label define mx10a_muniwrk_lbl 20487 `"Santiago Tenango"', add
label define mx10a_muniwrk_lbl 20488 `"Santiago Tepetlapa"', add
label define mx10a_muniwrk_lbl 20489 `"Santiago Tetepec"', add
label define mx10a_muniwrk_lbl 20490 `"Santiago Texcalcingo"', add
label define mx10a_muniwrk_lbl 20491 `"Santiago Textitlán"', add
label define mx10a_muniwrk_lbl 20492 `"Santiago Tilantongo"', add
label define mx10a_muniwrk_lbl 20493 `"Santiago Tillo"', add
label define mx10a_muniwrk_lbl 20494 `"Santiago Tlazoyaltepec"', add
label define mx10a_muniwrk_lbl 20495 `"Santiago Xanica"', add
label define mx10a_muniwrk_lbl 20496 `"Santiago Xiacuí"', add
label define mx10a_muniwrk_lbl 20497 `"Santiago Yaitepec"', add
label define mx10a_muniwrk_lbl 20498 `"Santiago Yaveo"', add
label define mx10a_muniwrk_lbl 20499 `"Santiago Yolomécatl"', add
label define mx10a_muniwrk_lbl 20500 `"Santiago Yosondúa"', add
label define mx10a_muniwrk_lbl 20501 `"Santiago Yucuyachi"', add
label define mx10a_muniwrk_lbl 20502 `"Santiago Zacatepec"', add
label define mx10a_muniwrk_lbl 20503 `"Santiago Zoochila"', add
label define mx10a_muniwrk_lbl 20504 `"Nuevo Zoquiápam"', add
label define mx10a_muniwrk_lbl 20505 `"Santo Domingo Ingenio"', add
label define mx10a_muniwrk_lbl 20506 `"Santo Domingo Albarradas"', add
label define mx10a_muniwrk_lbl 20507 `"Santo Domingo Armenta"', add
label define mx10a_muniwrk_lbl 20508 `"Santo Domingo Chihuitán"', add
label define mx10a_muniwrk_lbl 20509 `"Santo Domingo de Morelos"', add
label define mx10a_muniwrk_lbl 20510 `"Santo Domingo Ixcatlán"', add
label define mx10a_muniwrk_lbl 20511 `"Santo Domingo Nuxaá"', add
label define mx10a_muniwrk_lbl 20512 `"Santo Domingo Ozolotepec"', add
label define mx10a_muniwrk_lbl 20513 `"Santo Domingo Petapa"', add
label define mx10a_muniwrk_lbl 20514 `"Santo Domingo Roayaga"', add
label define mx10a_muniwrk_lbl 20515 `"Santo Domingo Tehuantepec"', add
label define mx10a_muniwrk_lbl 20516 `"Santo Domingo Teojomulco"', add
label define mx10a_muniwrk_lbl 20517 `"Santo Domingo Tepuxtepec"', add
label define mx10a_muniwrk_lbl 20518 `"Santo Domingo Tlatayápam"', add
label define mx10a_muniwrk_lbl 20519 `"Santo Domingo Tomaltepec"', add
label define mx10a_muniwrk_lbl 20520 `"Santo Domingo Tonalá"', add
label define mx10a_muniwrk_lbl 20521 `"Santo Domingo Tonaltepec"', add
label define mx10a_muniwrk_lbl 20522 `"Santo Domingo Xagacía"', add
label define mx10a_muniwrk_lbl 20523 `"Santo Domingo Yanhuitlán"', add
label define mx10a_muniwrk_lbl 20524 `"Santo Domingo Yodohino"', add
label define mx10a_muniwrk_lbl 20525 `"Santo Domingo Zanatepec"', add
label define mx10a_muniwrk_lbl 20526 `"Santos Reyes Nopala"', add
label define mx10a_muniwrk_lbl 20527 `"Santos Reyes Pápalo"', add
label define mx10a_muniwrk_lbl 20528 `"Santos Reyes Tepejillo"', add
label define mx10a_muniwrk_lbl 20529 `"Santos Reyes Yucuná"', add
label define mx10a_muniwrk_lbl 20530 `"Santo Tomás Jalieza"', add
label define mx10a_muniwrk_lbl 20531 `"Santo Tomás Mazaltepec"', add
label define mx10a_muniwrk_lbl 20532 `"Santo Tomás Ocotepec"', add
label define mx10a_muniwrk_lbl 20533 `"Santo Tomás Tamazulapan"', add
label define mx10a_muniwrk_lbl 20534 `"San Vicente Coatlán"', add
label define mx10a_muniwrk_lbl 20535 `"San Vicente Lachixío"', add
label define mx10a_muniwrk_lbl 20536 `"San Vicente Nuñú"', add
label define mx10a_muniwrk_lbl 20537 `"Silacayoápam"', add
label define mx10a_muniwrk_lbl 20538 `"Sitio de Xitlapehua"', add
label define mx10a_muniwrk_lbl 20539 `"Soledad Etla"', add
label define mx10a_muniwrk_lbl 20540 `"Villa de Tamazulápam del Progreso"', add
label define mx10a_muniwrk_lbl 20541 `"Tanetze de Zaragoza"', add
label define mx10a_muniwrk_lbl 20542 `"Taniche"', add
label define mx10a_muniwrk_lbl 20543 `"Tataltepec de Valdés"', add
label define mx10a_muniwrk_lbl 20544 `"Teococuilco de Marcos Pérez"', add
label define mx10a_muniwrk_lbl 20545 `"Teotitlán de Flores Magón"', add
label define mx10a_muniwrk_lbl 20546 `"Teotitlán del Valle"', add
label define mx10a_muniwrk_lbl 20547 `"Teotongo"', add
label define mx10a_muniwrk_lbl 20548 `"Tepelmeme Villa de Morelos"', add
label define mx10a_muniwrk_lbl 20549 `"Tezoatlán de Segura y Luna"', add
label define mx10a_muniwrk_lbl 20550 `"San Jerónimo Tlacochahuaya"', add
label define mx10a_muniwrk_lbl 20551 `"Tlacolula de Matamoros"', add
label define mx10a_muniwrk_lbl 20552 `"Tlacotepec Plumas"', add
label define mx10a_muniwrk_lbl 20553 `"Tlalixtac de Cabrera"', add
label define mx10a_muniwrk_lbl 20554 `"Totontepec Villa de Morelos"', add
label define mx10a_muniwrk_lbl 20555 `"Trinidad Zaachila"', add
label define mx10a_muniwrk_lbl 20556 `"La Trinidad Vista Hermosa"', add
label define mx10a_muniwrk_lbl 20557 `"Unión Hidalgo"', add
label define mx10a_muniwrk_lbl 20558 `"Valerio Trujano"', add
label define mx10a_muniwrk_lbl 20559 `"San Juan Bautista Valle Nacional"', add
label define mx10a_muniwrk_lbl 20560 `"Villa Díaz Ordaz"', add
label define mx10a_muniwrk_lbl 20561 `"Yaxe"', add
label define mx10a_muniwrk_lbl 20562 `"Magdalena Yodocono de Porfirio Díaz"', add
label define mx10a_muniwrk_lbl 20563 `"Yogana"', add
label define mx10a_muniwrk_lbl 20564 `"Yutanduchi de Guerrero"', add
label define mx10a_muniwrk_lbl 20565 `"Villa de Zaachila"', add
label define mx10a_muniwrk_lbl 20566 `"San Mateo Yucutindó"', add
label define mx10a_muniwrk_lbl 20567 `"Zapotitlán Lagunas"', add
label define mx10a_muniwrk_lbl 20568 `"Zapotitlán Palmas"', add
label define mx10a_muniwrk_lbl 20569 `"Santa Inés de Zaragoza"', add
label define mx10a_muniwrk_lbl 20570 `"Zimatlán de Álvarez"', add
label define mx10a_muniwrk_lbl 20999 `"Oaxaca entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 21001 `"Acajete"', add
label define mx10a_muniwrk_lbl 21002 `"Acateno"', add
label define mx10a_muniwrk_lbl 21003 `"Acatlán"', add
label define mx10a_muniwrk_lbl 21004 `"Acatzingo"', add
label define mx10a_muniwrk_lbl 21005 `"Acteopan"', add
label define mx10a_muniwrk_lbl 21006 `"Ahuacatlán"', add
label define mx10a_muniwrk_lbl 21007 `"Ahuatlán"', add
label define mx10a_muniwrk_lbl 21008 `"Ahuazotepec"', add
label define mx10a_muniwrk_lbl 21009 `"Ahuehuetitla"', add
label define mx10a_muniwrk_lbl 21010 `"Ajalpan"', add
label define mx10a_muniwrk_lbl 21011 `"Albino Zertuche"', add
label define mx10a_muniwrk_lbl 21012 `"Aljojuca"', add
label define mx10a_muniwrk_lbl 21013 `"Altepexi"', add
label define mx10a_muniwrk_lbl 21014 `"Amixtlán"', add
label define mx10a_muniwrk_lbl 21015 `"Amozoc"', add
label define mx10a_muniwrk_lbl 21016 `"Aquixtla"', add
label define mx10a_muniwrk_lbl 21017 `"Atempan"', add
label define mx10a_muniwrk_lbl 21018 `"Atexcal"', add
label define mx10a_muniwrk_lbl 21019 `"Atlixco"', add
label define mx10a_muniwrk_lbl 21020 `"Atoyatempan"', add
label define mx10a_muniwrk_lbl 21021 `"Atzala"', add
label define mx10a_muniwrk_lbl 21022 `"Atzitzihuacán"', add
label define mx10a_muniwrk_lbl 21023 `"Atzitzintla"', add
label define mx10a_muniwrk_lbl 21024 `"Axutla"', add
label define mx10a_muniwrk_lbl 21025 `"Ayotoxco de Guerrero"', add
label define mx10a_muniwrk_lbl 21026 `"Calpan"', add
label define mx10a_muniwrk_lbl 21027 `"Caltepec"', add
label define mx10a_muniwrk_lbl 21028 `"Camocuautla"', add
label define mx10a_muniwrk_lbl 21029 `"Caxhuacan"', add
label define mx10a_muniwrk_lbl 21030 `"Coatepec"', add
label define mx10a_muniwrk_lbl 21031 `"Coatzingo"', add
label define mx10a_muniwrk_lbl 21032 `"Cohetzala"', add
label define mx10a_muniwrk_lbl 21033 `"Cohuecan"', add
label define mx10a_muniwrk_lbl 21034 `"Coronango"', add
label define mx10a_muniwrk_lbl 21035 `"Coxcatlán"', add
label define mx10a_muniwrk_lbl 21036 `"Coyomeapan"', add
label define mx10a_muniwrk_lbl 21037 `"Coyotepec"', add
label define mx10a_muniwrk_lbl 21038 `"Cuapiaxtla de Madero"', add
label define mx10a_muniwrk_lbl 21039 `"Cuautempan"', add
label define mx10a_muniwrk_lbl 21040 `"Cuautinchán"', add
label define mx10a_muniwrk_lbl 21041 `"Cuautlancingo"', add
label define mx10a_muniwrk_lbl 21042 `"Cuayuca de Andrade"', add
label define mx10a_muniwrk_lbl 21043 `"Cuetzalan del Progreso"', add
label define mx10a_muniwrk_lbl 21044 `"Cuyoaco"', add
label define mx10a_muniwrk_lbl 21045 `"Chalchicomula de Sesma"', add
label define mx10a_muniwrk_lbl 21046 `"Chapulco"', add
label define mx10a_muniwrk_lbl 21047 `"Chiautla"', add
label define mx10a_muniwrk_lbl 21048 `"Chiautzingo"', add
label define mx10a_muniwrk_lbl 21049 `"Chiconcuautla"', add
label define mx10a_muniwrk_lbl 21050 `"Chichiquila"', add
label define mx10a_muniwrk_lbl 21051 `"Chietla"', add
label define mx10a_muniwrk_lbl 21052 `"Chigmecatitlán"', add
label define mx10a_muniwrk_lbl 21053 `"Chignahuapan"', add
label define mx10a_muniwrk_lbl 21054 `"Chignautla"', add
label define mx10a_muniwrk_lbl 21055 `"Chila"', add
label define mx10a_muniwrk_lbl 21056 `"Chila de la Sal"', add
label define mx10a_muniwrk_lbl 21057 `"Honey"', add
label define mx10a_muniwrk_lbl 21058 `"Chilchotla"', add
label define mx10a_muniwrk_lbl 21059 `"Chinantla"', add
label define mx10a_muniwrk_lbl 21060 `"Domingo Arenas"', add
label define mx10a_muniwrk_lbl 21061 `"Eloxochitlán"', add
label define mx10a_muniwrk_lbl 21062 `"Epatlán"', add
label define mx10a_muniwrk_lbl 21063 `"Esperanza"', add
label define mx10a_muniwrk_lbl 21064 `"Francisco Z. Mena"', add
label define mx10a_muniwrk_lbl 21065 `"General Felipe Ángeles"', add
label define mx10a_muniwrk_lbl 21066 `"Guadalupe"', add
label define mx10a_muniwrk_lbl 21067 `"Guadalupe Victoria"', add
label define mx10a_muniwrk_lbl 21068 `"Hermenegildo Galeana"', add
label define mx10a_muniwrk_lbl 21069 `"Huaquechula"', add
label define mx10a_muniwrk_lbl 21070 `"Huatlatlauca"', add
label define mx10a_muniwrk_lbl 21071 `"Huauchinango"', add
label define mx10a_muniwrk_lbl 21072 `"Huehuetla"', add
label define mx10a_muniwrk_lbl 21073 `"Huehuetlán el Chico"', add
label define mx10a_muniwrk_lbl 21074 `"Huejotzingo"', add
label define mx10a_muniwrk_lbl 21075 `"Hueyapan"', add
label define mx10a_muniwrk_lbl 21076 `"Hueytamalco"', add
label define mx10a_muniwrk_lbl 21077 `"Hueytlalpan"', add
label define mx10a_muniwrk_lbl 21078 `"Huitzilan de Serdán"', add
label define mx10a_muniwrk_lbl 21079 `"Huitziltepec"', add
label define mx10a_muniwrk_lbl 21080 `"Atlequizayan"', add
label define mx10a_muniwrk_lbl 21081 `"Ixcamilpa de Guerrero"', add
label define mx10a_muniwrk_lbl 21082 `"Ixcaquixtla"', add
label define mx10a_muniwrk_lbl 21083 `"Ixtacamaxtitlán"', add
label define mx10a_muniwrk_lbl 21084 `"Ixtepec"', add
label define mx10a_muniwrk_lbl 21085 `"Izúcar de Matamoros"', add
label define mx10a_muniwrk_lbl 21086 `"Jalpan"', add
label define mx10a_muniwrk_lbl 21087 `"Jolalpan"', add
label define mx10a_muniwrk_lbl 21088 `"Jonotla"', add
label define mx10a_muniwrk_lbl 21089 `"Jopala"', add
label define mx10a_muniwrk_lbl 21090 `"Juan C. Bonilla"', add
label define mx10a_muniwrk_lbl 21091 `"Juan Galindo"', add
label define mx10a_muniwrk_lbl 21092 `"Juan N. Méndez"', add
label define mx10a_muniwrk_lbl 21093 `"Lafragua"', add
label define mx10a_muniwrk_lbl 21094 `"Libres"', add
label define mx10a_muniwrk_lbl 21095 `"La Magdalena Tlatlauquitepec"', add
label define mx10a_muniwrk_lbl 21096 `"Mazapiltepec de Juárez"', add
label define mx10a_muniwrk_lbl 21097 `"Mixtla"', add
label define mx10a_muniwrk_lbl 21098 `"Molcaxac"', add
label define mx10a_muniwrk_lbl 21099 `"Cañada Morelos"', add
label define mx10a_muniwrk_lbl 21100 `"Naupan"', add
label define mx10a_muniwrk_lbl 21101 `"Nauzontla"', add
label define mx10a_muniwrk_lbl 21102 `"Nealtican"', add
label define mx10a_muniwrk_lbl 21103 `"Nicolás Bravo"', add
label define mx10a_muniwrk_lbl 21104 `"Nopalucan"', add
label define mx10a_muniwrk_lbl 21105 `"Ocotepec"', add
label define mx10a_muniwrk_lbl 21106 `"Ocoyucan"', add
label define mx10a_muniwrk_lbl 21107 `"Olintla"', add
label define mx10a_muniwrk_lbl 21108 `"Oriental"', add
label define mx10a_muniwrk_lbl 21109 `"Pahuatlán"', add
label define mx10a_muniwrk_lbl 21110 `"Palmar de Bravo"', add
label define mx10a_muniwrk_lbl 21111 `"Pantepec"', add
label define mx10a_muniwrk_lbl 21112 `"Petlalcingo"', add
label define mx10a_muniwrk_lbl 21113 `"Piaxtla"', add
label define mx10a_muniwrk_lbl 21114 `"Puebla"', add
label define mx10a_muniwrk_lbl 21115 `"Quecholac"', add
label define mx10a_muniwrk_lbl 21116 `"Quimixtlán"', add
label define mx10a_muniwrk_lbl 21117 `"Rafael Lara Grajales"', add
label define mx10a_muniwrk_lbl 21118 `"Los Reyes de Juárez"', add
label define mx10a_muniwrk_lbl 21119 `"San Andrés Cholula"', add
label define mx10a_muniwrk_lbl 21120 `"San Antonio Cañada"', add
label define mx10a_muniwrk_lbl 21121 `"San Diego la Mesa Tochimiltzingo"', add
label define mx10a_muniwrk_lbl 21122 `"San Felipe Teotlalcingo"', add
label define mx10a_muniwrk_lbl 21123 `"San Felipe Tepatlán"', add
label define mx10a_muniwrk_lbl 21124 `"San Gabriel Chilac"', add
label define mx10a_muniwrk_lbl 21125 `"San Gregorio Atzompa"', add
label define mx10a_muniwrk_lbl 21126 `"San Jerónimo Tecuanipan"', add
label define mx10a_muniwrk_lbl 21127 `"San Jerónimo Xayacatlán"', add
label define mx10a_muniwrk_lbl 21128 `"San José Chiapa"', add
label define mx10a_muniwrk_lbl 21129 `"San José Miahuatlán"', add
label define mx10a_muniwrk_lbl 21130 `"San Juan Atenco"', add
label define mx10a_muniwrk_lbl 21131 `"San Juan Atzompa"', add
label define mx10a_muniwrk_lbl 21132 `"San Martín Texmelucan"', add
label define mx10a_muniwrk_lbl 21133 `"San Martín Totoltepec"', add
label define mx10a_muniwrk_lbl 21134 `"San Matías Tlalancaleca"', add
label define mx10a_muniwrk_lbl 21135 `"San Miguel Ixitlán"', add
label define mx10a_muniwrk_lbl 21136 `"San Miguel Xoxtla"', add
label define mx10a_muniwrk_lbl 21137 `"San Nicolás Buenos Aires"', add
label define mx10a_muniwrk_lbl 21138 `"San Nicolás de los Ranchos"', add
label define mx10a_muniwrk_lbl 21139 `"San Pablo Anicano"', add
label define mx10a_muniwrk_lbl 21140 `"San Pedro Cholula"', add
label define mx10a_muniwrk_lbl 21141 `"San Pedro Yeloixtlahuaca"', add
label define mx10a_muniwrk_lbl 21142 `"San Salvador el Seco"', add
label define mx10a_muniwrk_lbl 21143 `"San Salvador el Verde"', add
label define mx10a_muniwrk_lbl 21144 `"San Salvador Huixcolotla"', add
label define mx10a_muniwrk_lbl 21145 `"San Sebastián Tlacotepec"', add
label define mx10a_muniwrk_lbl 21146 `"Santa Catarina Tlaltempan"', add
label define mx10a_muniwrk_lbl 21147 `"Santa Inés Ahuatempan"', add
label define mx10a_muniwrk_lbl 21148 `"Santa Isabel Cholula"', add
label define mx10a_muniwrk_lbl 21149 `"Santiago Miahuatlán"', add
label define mx10a_muniwrk_lbl 21150 `"Huehuetlán el Grande"', add
label define mx10a_muniwrk_lbl 21151 `"Santo Tomás Hueyotlipan"', add
label define mx10a_muniwrk_lbl 21152 `"Soltepec"', add
label define mx10a_muniwrk_lbl 21153 `"Tecali de Herrera"', add
label define mx10a_muniwrk_lbl 21154 `"Tecamachalco"', add
label define mx10a_muniwrk_lbl 21155 `"Tecomatlán"', add
label define mx10a_muniwrk_lbl 21156 `"Tehuacán"', add
label define mx10a_muniwrk_lbl 21157 `"Tehuitzingo"', add
label define mx10a_muniwrk_lbl 21158 `"Tenampulco"', add
label define mx10a_muniwrk_lbl 21159 `"Teopantlán"', add
label define mx10a_muniwrk_lbl 21160 `"Teotlalco"', add
label define mx10a_muniwrk_lbl 21161 `"Tepanco de López"', add
label define mx10a_muniwrk_lbl 21162 `"Tepango de Rodríguez"', add
label define mx10a_muniwrk_lbl 21163 `"Tepatlaxco de Hidalgo"', add
label define mx10a_muniwrk_lbl 21164 `"Tepeaca"', add
label define mx10a_muniwrk_lbl 21165 `"Tepemaxalco"', add
label define mx10a_muniwrk_lbl 21166 `"Tepeojuma"', add
label define mx10a_muniwrk_lbl 21167 `"Tepetzintla"', add
label define mx10a_muniwrk_lbl 21168 `"Tepexco"', add
label define mx10a_muniwrk_lbl 21169 `"Tepexi de Rodríguez"', add
label define mx10a_muniwrk_lbl 21170 `"Tepeyahualco"', add
label define mx10a_muniwrk_lbl 21171 `"Tepeyahualco de Cuauhtémoc"', add
label define mx10a_muniwrk_lbl 21172 `"Tetela de Ocampo"', add
label define mx10a_muniwrk_lbl 21173 `"Teteles de Avila Castillo"', add
label define mx10a_muniwrk_lbl 21174 `"Teziutlán"', add
label define mx10a_muniwrk_lbl 21175 `"Tianguismanalco"', add
label define mx10a_muniwrk_lbl 21176 `"Tilapa"', add
label define mx10a_muniwrk_lbl 21177 `"Tlacotepec de Benito Juárez"', add
label define mx10a_muniwrk_lbl 21178 `"Tlacuilotepec"', add
label define mx10a_muniwrk_lbl 21179 `"Tlachichuca"', add
label define mx10a_muniwrk_lbl 21180 `"Tlahuapan"', add
label define mx10a_muniwrk_lbl 21181 `"Tlaltenango"', add
label define mx10a_muniwrk_lbl 21182 `"Tlanepantla"', add
label define mx10a_muniwrk_lbl 21183 `"Tlaola"', add
label define mx10a_muniwrk_lbl 21184 `"Tlapacoya"', add
label define mx10a_muniwrk_lbl 21185 `"Tlapanalá"', add
label define mx10a_muniwrk_lbl 21186 `"Tlatlauquitepec"', add
label define mx10a_muniwrk_lbl 21187 `"Tlaxco"', add
label define mx10a_muniwrk_lbl 21188 `"Tochimilco"', add
label define mx10a_muniwrk_lbl 21189 `"Tochtepec"', add
label define mx10a_muniwrk_lbl 21190 `"Totoltepec de Guerrero"', add
label define mx10a_muniwrk_lbl 21191 `"Tulcingo"', add
label define mx10a_muniwrk_lbl 21192 `"Tuzamapan de Galeana"', add
label define mx10a_muniwrk_lbl 21193 `"Tzicatlacoyan"', add
label define mx10a_muniwrk_lbl 21194 `"Venustiano Carranza"', add
label define mx10a_muniwrk_lbl 21195 `"Vicente Guerrero"', add
label define mx10a_muniwrk_lbl 21196 `"Xayacatlán de Bravo"', add
label define mx10a_muniwrk_lbl 21197 `"Xicotepec"', add
label define mx10a_muniwrk_lbl 21198 `"Xicotlán"', add
label define mx10a_muniwrk_lbl 21199 `"Xiutetelco"', add
label define mx10a_muniwrk_lbl 21200 `"Xochiapulco"', add
label define mx10a_muniwrk_lbl 21201 `"Xochiltepec"', add
label define mx10a_muniwrk_lbl 21202 `"Xochitlán de Vicente Suárez"', add
label define mx10a_muniwrk_lbl 21203 `"Xochitlán Todos Santos"', add
label define mx10a_muniwrk_lbl 21204 `"Yaonáhuac"', add
label define mx10a_muniwrk_lbl 21205 `"Yehualtepec"', add
label define mx10a_muniwrk_lbl 21206 `"Zacapala"', add
label define mx10a_muniwrk_lbl 21207 `"Zacapoaxtla"', add
label define mx10a_muniwrk_lbl 21208 `"Zacatlán"', add
label define mx10a_muniwrk_lbl 21209 `"Zapotitlán"', add
label define mx10a_muniwrk_lbl 21210 `"Zapotitlán de Méndez"', add
label define mx10a_muniwrk_lbl 21211 `"Zaragoza"', add
label define mx10a_muniwrk_lbl 21212 `"Zautla"', add
label define mx10a_muniwrk_lbl 21213 `"Zihuateutla"', add
label define mx10a_muniwrk_lbl 21214 `"Zinacatepec"', add
label define mx10a_muniwrk_lbl 21215 `"Zongozotla"', add
label define mx10a_muniwrk_lbl 21216 `"Zoquiapan"', add
label define mx10a_muniwrk_lbl 21217 `"Zoquitlán"', add
label define mx10a_muniwrk_lbl 21999 `"Puebla entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 22001 `"Amealco de Bonfil"', add
label define mx10a_muniwrk_lbl 22002 `"Pinal de Amoles"', add
label define mx10a_muniwrk_lbl 22003 `"Arroyo Seco"', add
label define mx10a_muniwrk_lbl 22004 `"Cadereyta de Montes"', add
label define mx10a_muniwrk_lbl 22005 `"Colón"', add
label define mx10a_muniwrk_lbl 22006 `"Corregidora"', add
label define mx10a_muniwrk_lbl 22007 `"Ezequiel Montes"', add
label define mx10a_muniwrk_lbl 22008 `"Huimilpan"', add
label define mx10a_muniwrk_lbl 22009 `"Jalpan de Serra"', add
label define mx10a_muniwrk_lbl 22010 `"Landa de Matamoros"', add
label define mx10a_muniwrk_lbl 22011 `"El Marqués"', add
label define mx10a_muniwrk_lbl 22012 `"Pedro Escobedo"', add
label define mx10a_muniwrk_lbl 22013 `"Peñamiller"', add
label define mx10a_muniwrk_lbl 22014 `"Querétaro"', add
label define mx10a_muniwrk_lbl 22015 `"San Joaquín"', add
label define mx10a_muniwrk_lbl 22016 `"San Juan del Río"', add
label define mx10a_muniwrk_lbl 22017 `"Tequisquiapan"', add
label define mx10a_muniwrk_lbl 22018 `"Tolimán"', add
label define mx10a_muniwrk_lbl 22999 `"Querétaro entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 23001 `"Cozumel"', add
label define mx10a_muniwrk_lbl 23002 `"Felipe Carrillo Puerto"', add
label define mx10a_muniwrk_lbl 23003 `"Isla Mujeres"', add
label define mx10a_muniwrk_lbl 23004 `"Othón P. Blanco"', add
label define mx10a_muniwrk_lbl 23005 `"Benito Juárez"', add
label define mx10a_muniwrk_lbl 23006 `"José María Morelos"', add
label define mx10a_muniwrk_lbl 23007 `"Lázaro Cárdenas"', add
label define mx10a_muniwrk_lbl 23008 `"Solidaridad"', add
label define mx10a_muniwrk_lbl 23009 `"Tulum"', add
label define mx10a_muniwrk_lbl 23999 `"Quintana Roo entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 24001 `"Ahualulco"', add
label define mx10a_muniwrk_lbl 24002 `"Alaquines"', add
label define mx10a_muniwrk_lbl 24003 `"Aquismón"', add
label define mx10a_muniwrk_lbl 24004 `"Armadillo de los Infante"', add
label define mx10a_muniwrk_lbl 24005 `"Cárdenas"', add
label define mx10a_muniwrk_lbl 24006 `"Catorce"', add
label define mx10a_muniwrk_lbl 24007 `"Cedral"', add
label define mx10a_muniwrk_lbl 24008 `"Cerritos"', add
label define mx10a_muniwrk_lbl 24009 `"Cerro de San Pedro"', add
label define mx10a_muniwrk_lbl 24010 `"Ciudad del Maíz"', add
label define mx10a_muniwrk_lbl 24011 `"Ciudad Fernández"', add
label define mx10a_muniwrk_lbl 24012 `"Tancanhuitz"', add
label define mx10a_muniwrk_lbl 24013 `"Ciudad Valles"', add
label define mx10a_muniwrk_lbl 24014 `"Coxcatlán"', add
label define mx10a_muniwrk_lbl 24015 `"Charcas"', add
label define mx10a_muniwrk_lbl 24016 `"Ebano"', add
label define mx10a_muniwrk_lbl 24017 `"Guadalcázar"', add
label define mx10a_muniwrk_lbl 24018 `"Huehuetlán"', add
label define mx10a_muniwrk_lbl 24019 `"Lagunillas"', add
label define mx10a_muniwrk_lbl 24020 `"Matehuala"', add
label define mx10a_muniwrk_lbl 24021 `"Mexquitic de Carmona"', add
label define mx10a_muniwrk_lbl 24022 `"Moctezuma"', add
label define mx10a_muniwrk_lbl 24023 `"Rayón"', add
label define mx10a_muniwrk_lbl 24024 `"Rioverde"', add
label define mx10a_muniwrk_lbl 24025 `"Salinas"', add
label define mx10a_muniwrk_lbl 24026 `"San Antonio"', add
label define mx10a_muniwrk_lbl 24027 `"San Ciro de Acosta"', add
label define mx10a_muniwrk_lbl 24028 `"San Luis Potosí"', add
label define mx10a_muniwrk_lbl 24029 `"San Martín Chalchicuautla"', add
label define mx10a_muniwrk_lbl 24030 `"San Nicolás Tolentino"', add
label define mx10a_muniwrk_lbl 24031 `"Santa Catarina"', add
label define mx10a_muniwrk_lbl 24032 `"Santa María del Río"', add
label define mx10a_muniwrk_lbl 24033 `"Santo Domingo"', add
label define mx10a_muniwrk_lbl 24034 `"San Vicente Tancuayalab"', add
label define mx10a_muniwrk_lbl 24035 `"Soledad de Graciano Sánchez"', add
label define mx10a_muniwrk_lbl 24036 `"Tamasopo"', add
label define mx10a_muniwrk_lbl 24037 `"Tamazunchale"', add
label define mx10a_muniwrk_lbl 24038 `"Tampacán"', add
label define mx10a_muniwrk_lbl 24039 `"Tampamolón Corona"', add
label define mx10a_muniwrk_lbl 24040 `"Tamuín"', add
label define mx10a_muniwrk_lbl 24041 `"Tanlajás"', add
label define mx10a_muniwrk_lbl 24042 `"Tanquián de Escobedo"', add
label define mx10a_muniwrk_lbl 24043 `"Tierra Nueva"', add
label define mx10a_muniwrk_lbl 24044 `"Vanegas"', add
label define mx10a_muniwrk_lbl 24045 `"Venado"', add
label define mx10a_muniwrk_lbl 24046 `"Villa de Arriaga"', add
label define mx10a_muniwrk_lbl 24047 `"Villa de Guadalupe"', add
label define mx10a_muniwrk_lbl 24048 `"Villa de la Paz"', add
label define mx10a_muniwrk_lbl 24049 `"Villa de Ramos"', add
label define mx10a_muniwrk_lbl 24050 `"Villa de Reyes"', add
label define mx10a_muniwrk_lbl 24051 `"Villa Hidalgo"', add
label define mx10a_muniwrk_lbl 24052 `"Villa Juárez"', add
label define mx10a_muniwrk_lbl 24053 `"Axtla de Terrazas"', add
label define mx10a_muniwrk_lbl 24054 `"Xilitla"', add
label define mx10a_muniwrk_lbl 24055 `"Zaragoza"', add
label define mx10a_muniwrk_lbl 24056 `"Villa de Arista"', add
label define mx10a_muniwrk_lbl 24057 `"Matlapa"', add
label define mx10a_muniwrk_lbl 24058 `"El Naranjo"', add
label define mx10a_muniwrk_lbl 24999 `"San Luis Potosí entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 25001 `"Ahome"', add
label define mx10a_muniwrk_lbl 25002 `"Angostura"', add
label define mx10a_muniwrk_lbl 25003 `"Badiraguato"', add
label define mx10a_muniwrk_lbl 25004 `"Concordia"', add
label define mx10a_muniwrk_lbl 25005 `"Cosalá"', add
label define mx10a_muniwrk_lbl 25006 `"Culiacán"', add
label define mx10a_muniwrk_lbl 25007 `"Choix"', add
label define mx10a_muniwrk_lbl 25008 `"Elota"', add
label define mx10a_muniwrk_lbl 25009 `"Escuinapa"', add
label define mx10a_muniwrk_lbl 25010 `"El Fuerte"', add
label define mx10a_muniwrk_lbl 25011 `"Guasave"', add
label define mx10a_muniwrk_lbl 25012 `"Mazatlán"', add
label define mx10a_muniwrk_lbl 25013 `"Mocorito"', add
label define mx10a_muniwrk_lbl 25014 `"Rosario"', add
label define mx10a_muniwrk_lbl 25015 `"Salvador Alvarado"', add
label define mx10a_muniwrk_lbl 25016 `"San Ignacio"', add
label define mx10a_muniwrk_lbl 25017 `"Sinaloa"', add
label define mx10a_muniwrk_lbl 25018 `"Navolato"', add
label define mx10a_muniwrk_lbl 25999 `"Sinaloa entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 26001 `"Aconchi"', add
label define mx10a_muniwrk_lbl 26002 `"Agua Prieta"', add
label define mx10a_muniwrk_lbl 26003 `"Alamos"', add
label define mx10a_muniwrk_lbl 26004 `"Altar"', add
label define mx10a_muniwrk_lbl 26005 `"Arivechi"', add
label define mx10a_muniwrk_lbl 26006 `"Arizpe"', add
label define mx10a_muniwrk_lbl 26007 `"Atil"', add
label define mx10a_muniwrk_lbl 26008 `"Bacadéhuachi"', add
label define mx10a_muniwrk_lbl 26009 `"Bacanora"', add
label define mx10a_muniwrk_lbl 26010 `"Bacerac"', add
label define mx10a_muniwrk_lbl 26011 `"Bacoachi"', add
label define mx10a_muniwrk_lbl 26012 `"Bácum"', add
label define mx10a_muniwrk_lbl 26013 `"Banámichi"', add
label define mx10a_muniwrk_lbl 26014 `"Baviácora"', add
label define mx10a_muniwrk_lbl 26015 `"Bavispe"', add
label define mx10a_muniwrk_lbl 26016 `"Benjamín Hill"', add
label define mx10a_muniwrk_lbl 26017 `"Caborca"', add
label define mx10a_muniwrk_lbl 26018 `"Cajeme"', add
label define mx10a_muniwrk_lbl 26019 `"Cananea"', add
label define mx10a_muniwrk_lbl 26020 `"Carbó"', add
label define mx10a_muniwrk_lbl 26021 `"La Colorada"', add
label define mx10a_muniwrk_lbl 26022 `"Cucurpe"', add
label define mx10a_muniwrk_lbl 26023 `"Cumpas"', add
label define mx10a_muniwrk_lbl 26024 `"Divisaderos"', add
label define mx10a_muniwrk_lbl 26025 `"Empalme"', add
label define mx10a_muniwrk_lbl 26026 `"Etchojoa"', add
label define mx10a_muniwrk_lbl 26027 `"Fronteras"', add
label define mx10a_muniwrk_lbl 26028 `"Granados"', add
label define mx10a_muniwrk_lbl 26029 `"Guaymas"', add
label define mx10a_muniwrk_lbl 26030 `"Hermosillo"', add
label define mx10a_muniwrk_lbl 26031 `"Huachinera"', add
label define mx10a_muniwrk_lbl 26032 `"Huásabas"', add
label define mx10a_muniwrk_lbl 26033 `"Huatabampo"', add
label define mx10a_muniwrk_lbl 26034 `"Huépac"', add
label define mx10a_muniwrk_lbl 26035 `"Imuris"', add
label define mx10a_muniwrk_lbl 26036 `"Magdalena"', add
label define mx10a_muniwrk_lbl 26037 `"Mazatán"', add
label define mx10a_muniwrk_lbl 26038 `"Moctezuma"', add
label define mx10a_muniwrk_lbl 26039 `"Naco"', add
label define mx10a_muniwrk_lbl 26040 `"Nácori Chico"', add
label define mx10a_muniwrk_lbl 26041 `"Nacozari de García"', add
label define mx10a_muniwrk_lbl 26042 `"Navojoa"', add
label define mx10a_muniwrk_lbl 26043 `"Nogales"', add
label define mx10a_muniwrk_lbl 26044 `"Onavas"', add
label define mx10a_muniwrk_lbl 26045 `"Opodepe"', add
label define mx10a_muniwrk_lbl 26046 `"Oquitoa"', add
label define mx10a_muniwrk_lbl 26047 `"Pitiquito"', add
label define mx10a_muniwrk_lbl 26048 `"Puerto Peñasco"', add
label define mx10a_muniwrk_lbl 26049 `"Quiriego"', add
label define mx10a_muniwrk_lbl 26050 `"Rayón"', add
label define mx10a_muniwrk_lbl 26051 `"Rosario"', add
label define mx10a_muniwrk_lbl 26052 `"Sahuaripa"', add
label define mx10a_muniwrk_lbl 26053 `"San Felipe de Jesús"', add
label define mx10a_muniwrk_lbl 26054 `"San Javier"', add
label define mx10a_muniwrk_lbl 26055 `"San Luis Río Colorado"', add
label define mx10a_muniwrk_lbl 26056 `"San Miguel de Horcasitas"', add
label define mx10a_muniwrk_lbl 26057 `"San Pedro de la Cueva"', add
label define mx10a_muniwrk_lbl 26058 `"Santa Ana"', add
label define mx10a_muniwrk_lbl 26059 `"Santa Cruz"', add
label define mx10a_muniwrk_lbl 26060 `"Sáric"', add
label define mx10a_muniwrk_lbl 26061 `"Soyopa"', add
label define mx10a_muniwrk_lbl 26062 `"Suaqui Grande"', add
label define mx10a_muniwrk_lbl 26063 `"Tepache"', add
label define mx10a_muniwrk_lbl 26064 `"Trincheras"', add
label define mx10a_muniwrk_lbl 26065 `"Tubutama"', add
label define mx10a_muniwrk_lbl 26066 `"Ures"', add
label define mx10a_muniwrk_lbl 26067 `"Villa Hidalgo"', add
label define mx10a_muniwrk_lbl 26068 `"Villa Pesqueira"', add
label define mx10a_muniwrk_lbl 26069 `"Yécora"', add
label define mx10a_muniwrk_lbl 26070 `"General Plutarco Elías Calles"', add
label define mx10a_muniwrk_lbl 26071 `"Benito Juárez"', add
label define mx10a_muniwrk_lbl 26072 `"San Ignacio Río Muerto"', add
label define mx10a_muniwrk_lbl 26999 `"Sonora entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 27001 `"Balancán"', add
label define mx10a_muniwrk_lbl 27002 `"Cárdenas"', add
label define mx10a_muniwrk_lbl 27003 `"Centla"', add
label define mx10a_muniwrk_lbl 27004 `"Centro"', add
label define mx10a_muniwrk_lbl 27005 `"Comalcalco"', add
label define mx10a_muniwrk_lbl 27006 `"Cunduacán"', add
label define mx10a_muniwrk_lbl 27007 `"Emiliano Zapata"', add
label define mx10a_muniwrk_lbl 27008 `"Huimanguillo"', add
label define mx10a_muniwrk_lbl 27009 `"Jalapa"', add
label define mx10a_muniwrk_lbl 27010 `"Jalpa de Méndez"', add
label define mx10a_muniwrk_lbl 27011 `"Jonuta"', add
label define mx10a_muniwrk_lbl 27012 `"Macuspana"', add
label define mx10a_muniwrk_lbl 27013 `"Nacajuca"', add
label define mx10a_muniwrk_lbl 27014 `"Paraíso"', add
label define mx10a_muniwrk_lbl 27015 `"Tacotalpa"', add
label define mx10a_muniwrk_lbl 27016 `"Teapa"', add
label define mx10a_muniwrk_lbl 27017 `"Tenosique"', add
label define mx10a_muniwrk_lbl 27999 `"Tabasco entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 28001 `"Abasolo"', add
label define mx10a_muniwrk_lbl 28002 `"Aldama"', add
label define mx10a_muniwrk_lbl 28003 `"Altamira"', add
label define mx10a_muniwrk_lbl 28004 `"Antiguo Morelos"', add
label define mx10a_muniwrk_lbl 28005 `"Burgos"', add
label define mx10a_muniwrk_lbl 28006 `"Bustamante"', add
label define mx10a_muniwrk_lbl 28007 `"Camargo"', add
label define mx10a_muniwrk_lbl 28008 `"Casas"', add
label define mx10a_muniwrk_lbl 28009 `"Ciudad Madero"', add
label define mx10a_muniwrk_lbl 28010 `"Cruillas"', add
label define mx10a_muniwrk_lbl 28011 `"Gómez Farías"', add
label define mx10a_muniwrk_lbl 28012 `"González"', add
label define mx10a_muniwrk_lbl 28013 `"Güémez"', add
label define mx10a_muniwrk_lbl 28014 `"Guerrero"', add
label define mx10a_muniwrk_lbl 28015 `"Gustavo Díaz Ordaz"', add
label define mx10a_muniwrk_lbl 28016 `"Hidalgo"', add
label define mx10a_muniwrk_lbl 28017 `"Jaumave"', add
label define mx10a_muniwrk_lbl 28018 `"Jiménez"', add
label define mx10a_muniwrk_lbl 28019 `"Llera"', add
label define mx10a_muniwrk_lbl 28020 `"Mainero"', add
label define mx10a_muniwrk_lbl 28021 `"El Mante"', add
label define mx10a_muniwrk_lbl 28022 `"Matamoros"', add
label define mx10a_muniwrk_lbl 28023 `"Méndez"', add
label define mx10a_muniwrk_lbl 28024 `"Mier"', add
label define mx10a_muniwrk_lbl 28025 `"Miguel Alemán"', add
label define mx10a_muniwrk_lbl 28026 `"Miquihuana"', add
label define mx10a_muniwrk_lbl 28027 `"Nuevo Laredo"', add
label define mx10a_muniwrk_lbl 28028 `"Nuevo Morelos"', add
label define mx10a_muniwrk_lbl 28029 `"Ocampo"', add
label define mx10a_muniwrk_lbl 28030 `"Padilla"', add
label define mx10a_muniwrk_lbl 28031 `"Palmillas"', add
label define mx10a_muniwrk_lbl 28032 `"Reynosa"', add
label define mx10a_muniwrk_lbl 28033 `"Río Bravo"', add
label define mx10a_muniwrk_lbl 28034 `"San Carlos"', add
label define mx10a_muniwrk_lbl 28035 `"San Fernando"', add
label define mx10a_muniwrk_lbl 28036 `"San Nicolás"', add
label define mx10a_muniwrk_lbl 28037 `"Soto la Marina"', add
label define mx10a_muniwrk_lbl 28038 `"Tampico"', add
label define mx10a_muniwrk_lbl 28039 `"Tula"', add
label define mx10a_muniwrk_lbl 28040 `"Valle Hermoso"', add
label define mx10a_muniwrk_lbl 28041 `"Victoria"', add
label define mx10a_muniwrk_lbl 28042 `"Villagrán"', add
label define mx10a_muniwrk_lbl 28043 `"Xicoténcatl"', add
label define mx10a_muniwrk_lbl 28999 `"Tamaulipas entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 29001 `"Amaxac de Guerrero"', add
label define mx10a_muniwrk_lbl 29002 `"Apetatitlán de Antonio Carvajal"', add
label define mx10a_muniwrk_lbl 29003 `"Atlangatepec"', add
label define mx10a_muniwrk_lbl 29004 `"Atltzayanca"', add
label define mx10a_muniwrk_lbl 29005 `"Apizaco"', add
label define mx10a_muniwrk_lbl 29006 `"Calpulalpan"', add
label define mx10a_muniwrk_lbl 29007 `"El Carmen Tequexquitla"', add
label define mx10a_muniwrk_lbl 29008 `"Cuapiaxtla"', add
label define mx10a_muniwrk_lbl 29009 `"Cuaxomulco"', add
label define mx10a_muniwrk_lbl 29010 `"Chiautempan"', add
label define mx10a_muniwrk_lbl 29011 `"Muñoz de Domingo Arenas"', add
label define mx10a_muniwrk_lbl 29012 `"Españita"', add
label define mx10a_muniwrk_lbl 29013 `"Huamantla"', add
label define mx10a_muniwrk_lbl 29014 `"Hueyotlipan"', add
label define mx10a_muniwrk_lbl 29015 `"Ixtacuixtla de Mariano Matamoros"', add
label define mx10a_muniwrk_lbl 29016 `"Ixtenco"', add
label define mx10a_muniwrk_lbl 29017 `"Mazatecochco de José María Morelos"', add
label define mx10a_muniwrk_lbl 29018 `"Contla de Juan Cuamatzi"', add
label define mx10a_muniwrk_lbl 29019 `"Tepetitla de Lardizábal"', add
label define mx10a_muniwrk_lbl 29020 `"Sanctórum de Lázaro Cárdenas"', add
label define mx10a_muniwrk_lbl 29021 `"Nanacamilpa de Mariano Arista"', add
label define mx10a_muniwrk_lbl 29022 `"Acuamanala de Miguel Hidalgo"', add
label define mx10a_muniwrk_lbl 29023 `"Natívitas"', add
label define mx10a_muniwrk_lbl 29024 `"Panotla"', add
label define mx10a_muniwrk_lbl 29025 `"San Pablo del Monte"', add
label define mx10a_muniwrk_lbl 29026 `"Santa Cruz Tlaxcala"', add
label define mx10a_muniwrk_lbl 29027 `"Tenancingo"', add
label define mx10a_muniwrk_lbl 29028 `"Teolocholco"', add
label define mx10a_muniwrk_lbl 29029 `"Tepeyanco"', add
label define mx10a_muniwrk_lbl 29030 `"Terrenate"', add
label define mx10a_muniwrk_lbl 29031 `"Tetla de la Solidaridad"', add
label define mx10a_muniwrk_lbl 29032 `"Tetlatlahuca"', add
label define mx10a_muniwrk_lbl 29033 `"Tlaxcala"', add
label define mx10a_muniwrk_lbl 29034 `"Tlaxco"', add
label define mx10a_muniwrk_lbl 29035 `"Tocatlán"', add
label define mx10a_muniwrk_lbl 29036 `"Totolac"', add
label define mx10a_muniwrk_lbl 29037 `"Ziltlaltépec de Trinidad Sánchez Santos"', add
label define mx10a_muniwrk_lbl 29038 `"Tzompantepec"', add
label define mx10a_muniwrk_lbl 29039 `"Xaloztoc"', add
label define mx10a_muniwrk_lbl 29040 `"Xaltocan"', add
label define mx10a_muniwrk_lbl 29041 `"Papalotla de Xicohténcatl"', add
label define mx10a_muniwrk_lbl 29042 `"Xicohtzinco"', add
label define mx10a_muniwrk_lbl 29043 `"Yauhquemehcan"', add
label define mx10a_muniwrk_lbl 29044 `"Zacatelco"', add
label define mx10a_muniwrk_lbl 29045 `"Benito Juárez"', add
label define mx10a_muniwrk_lbl 29046 `"Emiliano Zapata"', add
label define mx10a_muniwrk_lbl 29047 `"Lázaro Cárdenas"', add
label define mx10a_muniwrk_lbl 29048 `"La Magdalena Tlaltelulco"', add
label define mx10a_muniwrk_lbl 29049 `"San Damián Texóloc"', add
label define mx10a_muniwrk_lbl 29050 `"San Francisco Tetlanohcan"', add
label define mx10a_muniwrk_lbl 29051 `"San Jerónimo Zacualpan"', add
label define mx10a_muniwrk_lbl 29052 `"San José Teacalco"', add
label define mx10a_muniwrk_lbl 29053 `"San Juan Huactzinco"', add
label define mx10a_muniwrk_lbl 29054 `"San Lorenzo Axocomanitla"', add
label define mx10a_muniwrk_lbl 29055 `"San Lucas Tecopilco"', add
label define mx10a_muniwrk_lbl 29056 `"Santa Ana Nopalucan"', add
label define mx10a_muniwrk_lbl 29057 `"Santa Apolonia Teacalco"', add
label define mx10a_muniwrk_lbl 29058 `"Santa Catarina Ayometla"', add
label define mx10a_muniwrk_lbl 29059 `"Santa Cruz Quilehtla"', add
label define mx10a_muniwrk_lbl 29060 `"Santa Isabel Xiloxoxtla"', add
label define mx10a_muniwrk_lbl 29999 `"Tlaxcala entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 30001 `"Acajete"', add
label define mx10a_muniwrk_lbl 30002 `"Acatlán"', add
label define mx10a_muniwrk_lbl 30003 `"Acayucan"', add
label define mx10a_muniwrk_lbl 30004 `"Actopan"', add
label define mx10a_muniwrk_lbl 30005 `"Acula"', add
label define mx10a_muniwrk_lbl 30006 `"Acultzingo"', add
label define mx10a_muniwrk_lbl 30007 `"Camarón de Tejeda"', add
label define mx10a_muniwrk_lbl 30008 `"Alpatláhuac"', add
label define mx10a_muniwrk_lbl 30009 `"Alto Lucero de Gutiérrez Barrios"', add
label define mx10a_muniwrk_lbl 30010 `"Altotonga"', add
label define mx10a_muniwrk_lbl 30011 `"Alvarado"', add
label define mx10a_muniwrk_lbl 30012 `"Amatitlán"', add
label define mx10a_muniwrk_lbl 30013 `"Naranjos Amatlán"', add
label define mx10a_muniwrk_lbl 30014 `"Amatlán de los Reyes"', add
label define mx10a_muniwrk_lbl 30015 `"Angel R. Cabada"', add
label define mx10a_muniwrk_lbl 30016 `"La Antigua"', add
label define mx10a_muniwrk_lbl 30017 `"Apazapan"', add
label define mx10a_muniwrk_lbl 30018 `"Aquila"', add
label define mx10a_muniwrk_lbl 30019 `"Astacinga"', add
label define mx10a_muniwrk_lbl 30020 `"Atlahuilco"', add
label define mx10a_muniwrk_lbl 30021 `"Atoyac"', add
label define mx10a_muniwrk_lbl 30022 `"Atzacan"', add
label define mx10a_muniwrk_lbl 30023 `"Atzalan"', add
label define mx10a_muniwrk_lbl 30024 `"Tlaltetela"', add
label define mx10a_muniwrk_lbl 30025 `"Ayahualulco"', add
label define mx10a_muniwrk_lbl 30026 `"Banderilla"', add
label define mx10a_muniwrk_lbl 30027 `"Benito Juárez"', add
label define mx10a_muniwrk_lbl 30028 `"Boca del Río"', add
label define mx10a_muniwrk_lbl 30029 `"Calcahualco"', add
label define mx10a_muniwrk_lbl 30030 `"Camerino Z. Mendoza"', add
label define mx10a_muniwrk_lbl 30031 `"Carrillo Puerto"', add
label define mx10a_muniwrk_lbl 30032 `"Catemaco"', add
label define mx10a_muniwrk_lbl 30033 `"Cazones de Herrera"', add
label define mx10a_muniwrk_lbl 30034 `"Cerro Azul"', add
label define mx10a_muniwrk_lbl 30035 `"Citlaltépetl"', add
label define mx10a_muniwrk_lbl 30036 `"Coacoatzintla"', add
label define mx10a_muniwrk_lbl 30037 `"Coahuitlán"', add
label define mx10a_muniwrk_lbl 30038 `"Coatepec"', add
label define mx10a_muniwrk_lbl 30039 `"Coatzacoalcos"', add
label define mx10a_muniwrk_lbl 30040 `"Coatzintla"', add
label define mx10a_muniwrk_lbl 30041 `"Coetzala"', add
label define mx10a_muniwrk_lbl 30042 `"Colipa"', add
label define mx10a_muniwrk_lbl 30043 `"Comapa"', add
label define mx10a_muniwrk_lbl 30044 `"Córdoba"', add
label define mx10a_muniwrk_lbl 30045 `"Cosamaloapan de Carpio"', add
label define mx10a_muniwrk_lbl 30046 `"Cosautlán de Carvajal"', add
label define mx10a_muniwrk_lbl 30047 `"Coscomatepec"', add
label define mx10a_muniwrk_lbl 30048 `"Cosoleacaque"', add
label define mx10a_muniwrk_lbl 30049 `"Cotaxtla"', add
label define mx10a_muniwrk_lbl 30050 `"Coxquihui"', add
label define mx10a_muniwrk_lbl 30051 `"Coyutla"', add
label define mx10a_muniwrk_lbl 30052 `"Cuichapa"', add
label define mx10a_muniwrk_lbl 30053 `"Cuitláhuac"', add
label define mx10a_muniwrk_lbl 30054 `"Chacaltianguis"', add
label define mx10a_muniwrk_lbl 30055 `"Chalma"', add
label define mx10a_muniwrk_lbl 30056 `"Chiconamel"', add
label define mx10a_muniwrk_lbl 30057 `"Chiconquiaco"', add
label define mx10a_muniwrk_lbl 30058 `"Chicontepec"', add
label define mx10a_muniwrk_lbl 30059 `"Chinameca"', add
label define mx10a_muniwrk_lbl 30060 `"Chinampa de Gorostiza"', add
label define mx10a_muniwrk_lbl 30061 `"Las Choapas"', add
label define mx10a_muniwrk_lbl 30062 `"Chocamán"', add
label define mx10a_muniwrk_lbl 30063 `"Chontla"', add
label define mx10a_muniwrk_lbl 30064 `"Chumatlán"', add
label define mx10a_muniwrk_lbl 30065 `"Emiliano Zapata"', add
label define mx10a_muniwrk_lbl 30066 `"Espinal"', add
label define mx10a_muniwrk_lbl 30067 `"Filomeno Mata"', add
label define mx10a_muniwrk_lbl 30068 `"Fortín"', add
label define mx10a_muniwrk_lbl 30069 `"Gutiérrez Zamora"', add
label define mx10a_muniwrk_lbl 30070 `"Hidalgotitlán"', add
label define mx10a_muniwrk_lbl 30071 `"Huatusco"', add
label define mx10a_muniwrk_lbl 30072 `"Huayacocotla"', add
label define mx10a_muniwrk_lbl 30073 `"Hueyapan de Ocampo"', add
label define mx10a_muniwrk_lbl 30074 `"Huiloapan de Cuauhtémoc"', add
label define mx10a_muniwrk_lbl 30075 `"Ignacio de la Llave"', add
label define mx10a_muniwrk_lbl 30076 `"Ilamatlán"', add
label define mx10a_muniwrk_lbl 30077 `"Isla"', add
label define mx10a_muniwrk_lbl 30078 `"Ixcatepec"', add
label define mx10a_muniwrk_lbl 30079 `"Ixhuacán de los Reyes"', add
label define mx10a_muniwrk_lbl 30080 `"Ixhuatlán del Café"', add
label define mx10a_muniwrk_lbl 30081 `"Ixhuatlancillo"', add
label define mx10a_muniwrk_lbl 30082 `"Ixhuatlán del Sureste"', add
label define mx10a_muniwrk_lbl 30083 `"Ixhuatlán de Madero"', add
label define mx10a_muniwrk_lbl 30084 `"Ixmatlahuacan"', add
label define mx10a_muniwrk_lbl 30085 `"Ixtaczoquitlán"', add
label define mx10a_muniwrk_lbl 30086 `"Jalacingo"', add
label define mx10a_muniwrk_lbl 30087 `"Xalapa"', add
label define mx10a_muniwrk_lbl 30088 `"Jalcomulco"', add
label define mx10a_muniwrk_lbl 30089 `"Jáltipan"', add
label define mx10a_muniwrk_lbl 30090 `"Jamapa"', add
label define mx10a_muniwrk_lbl 30091 `"Jesús Carranza"', add
label define mx10a_muniwrk_lbl 30092 `"Xico"', add
label define mx10a_muniwrk_lbl 30093 `"Jilotepec"', add
label define mx10a_muniwrk_lbl 30094 `"Juan Rodríguez Clara"', add
label define mx10a_muniwrk_lbl 30095 `"Juchique de Ferrer"', add
label define mx10a_muniwrk_lbl 30096 `"Landero y Coss"', add
label define mx10a_muniwrk_lbl 30097 `"Lerdo de Tejada"', add
label define mx10a_muniwrk_lbl 30098 `"Magdalena"', add
label define mx10a_muniwrk_lbl 30099 `"Maltrata"', add
label define mx10a_muniwrk_lbl 30100 `"Manlio Fabio Altamirano"', add
label define mx10a_muniwrk_lbl 30101 `"Mariano Escobedo"', add
label define mx10a_muniwrk_lbl 30102 `"Martínez de la Torre"', add
label define mx10a_muniwrk_lbl 30103 `"Mecatlán"', add
label define mx10a_muniwrk_lbl 30104 `"Mecayapan"', add
label define mx10a_muniwrk_lbl 30105 `"Medellín"', add
label define mx10a_muniwrk_lbl 30106 `"Miahuatlán"', add
label define mx10a_muniwrk_lbl 30107 `"Las Minas"', add
label define mx10a_muniwrk_lbl 30108 `"Minatitlán"', add
label define mx10a_muniwrk_lbl 30109 `"Misantla"', add
label define mx10a_muniwrk_lbl 30110 `"Mixtla de Altamirano"', add
label define mx10a_muniwrk_lbl 30111 `"Moloacán"', add
label define mx10a_muniwrk_lbl 30112 `"Naolinco"', add
label define mx10a_muniwrk_lbl 30113 `"Naranjal"', add
label define mx10a_muniwrk_lbl 30114 `"Nautla"', add
label define mx10a_muniwrk_lbl 30115 `"Nogales"', add
label define mx10a_muniwrk_lbl 30116 `"Oluta"', add
label define mx10a_muniwrk_lbl 30117 `"Omealca"', add
label define mx10a_muniwrk_lbl 30118 `"Orizaba"', add
label define mx10a_muniwrk_lbl 30119 `"Otatitlán"', add
label define mx10a_muniwrk_lbl 30120 `"Oteapan"', add
label define mx10a_muniwrk_lbl 30121 `"Ozuluama de Mascareñas"', add
label define mx10a_muniwrk_lbl 30122 `"Pajapan"', add
label define mx10a_muniwrk_lbl 30123 `"Pánuco"', add
label define mx10a_muniwrk_lbl 30124 `"Papantla"', add
label define mx10a_muniwrk_lbl 30125 `"Paso del Macho"', add
label define mx10a_muniwrk_lbl 30126 `"Paso de Ovejas"', add
label define mx10a_muniwrk_lbl 30127 `"La Perla"', add
label define mx10a_muniwrk_lbl 30128 `"Perote"', add
label define mx10a_muniwrk_lbl 30129 `"Platón Sánchez"', add
label define mx10a_muniwrk_lbl 30130 `"Playa Vicente"', add
label define mx10a_muniwrk_lbl 30131 `"Poza Rica de Hidalgo"', add
label define mx10a_muniwrk_lbl 30132 `"Las Vigas de Ramírez"', add
label define mx10a_muniwrk_lbl 30133 `"Pueblo Viejo"', add
label define mx10a_muniwrk_lbl 30134 `"Puente Nacional"', add
label define mx10a_muniwrk_lbl 30135 `"Rafael Delgado"', add
label define mx10a_muniwrk_lbl 30136 `"Rafael Lucio"', add
label define mx10a_muniwrk_lbl 30137 `"Los Reyes"', add
label define mx10a_muniwrk_lbl 30138 `"Río Blanco"', add
label define mx10a_muniwrk_lbl 30139 `"Saltabarranca"', add
label define mx10a_muniwrk_lbl 30140 `"San Andrés Tenejapan"', add
label define mx10a_muniwrk_lbl 30141 `"San Andrés Tuxtla"', add
label define mx10a_muniwrk_lbl 30142 `"San Juan Evangelista"', add
label define mx10a_muniwrk_lbl 30143 `"Santiago Tuxtla"', add
label define mx10a_muniwrk_lbl 30144 `"Sayula de Alemán"', add
label define mx10a_muniwrk_lbl 30145 `"Soconusco"', add
label define mx10a_muniwrk_lbl 30146 `"Sochiapa"', add
label define mx10a_muniwrk_lbl 30147 `"Soledad Atzompa"', add
label define mx10a_muniwrk_lbl 30148 `"Soledad de Doblado"', add
label define mx10a_muniwrk_lbl 30149 `"Soteapan"', add
label define mx10a_muniwrk_lbl 30150 `"Tamalín"', add
label define mx10a_muniwrk_lbl 30151 `"Tamiahua"', add
label define mx10a_muniwrk_lbl 30152 `"Tampico Alto"', add
label define mx10a_muniwrk_lbl 30153 `"Tancoco"', add
label define mx10a_muniwrk_lbl 30154 `"Tantima"', add
label define mx10a_muniwrk_lbl 30155 `"Tantoyuca"', add
label define mx10a_muniwrk_lbl 30156 `"Tatatila"', add
label define mx10a_muniwrk_lbl 30157 `"Castillo de Teayo"', add
label define mx10a_muniwrk_lbl 30158 `"Tecolutla"', add
label define mx10a_muniwrk_lbl 30159 `"Tehuipango"', add
label define mx10a_muniwrk_lbl 30160 `"Álamo Temapache"', add
label define mx10a_muniwrk_lbl 30161 `"Tempoal"', add
label define mx10a_muniwrk_lbl 30162 `"Tenampa"', add
label define mx10a_muniwrk_lbl 30163 `"Tenochtitlán"', add
label define mx10a_muniwrk_lbl 30164 `"Teocelo"', add
label define mx10a_muniwrk_lbl 30165 `"Tepatlaxco"', add
label define mx10a_muniwrk_lbl 30166 `"Tepetlán"', add
label define mx10a_muniwrk_lbl 30167 `"Tepetzintla"', add
label define mx10a_muniwrk_lbl 30168 `"Tequila"', add
label define mx10a_muniwrk_lbl 30169 `"José Azueta"', add
label define mx10a_muniwrk_lbl 30170 `"Texcatepec"', add
label define mx10a_muniwrk_lbl 30171 `"Texhuacán"', add
label define mx10a_muniwrk_lbl 30172 `"Texistepec"', add
label define mx10a_muniwrk_lbl 30173 `"Tezonapa"', add
label define mx10a_muniwrk_lbl 30174 `"Tierra Blanca"', add
label define mx10a_muniwrk_lbl 30175 `"Tihuatlán"', add
label define mx10a_muniwrk_lbl 30176 `"Tlacojalpan"', add
label define mx10a_muniwrk_lbl 30177 `"Tlacolulan"', add
label define mx10a_muniwrk_lbl 30178 `"Tlacotalpan"', add
label define mx10a_muniwrk_lbl 30179 `"Tlacotepec de Mejía"', add
label define mx10a_muniwrk_lbl 30180 `"Tlachichilco"', add
label define mx10a_muniwrk_lbl 30181 `"Tlalixcoyan"', add
label define mx10a_muniwrk_lbl 30182 `"Tlalnelhuayocan"', add
label define mx10a_muniwrk_lbl 30183 `"Tlapacoyan"', add
label define mx10a_muniwrk_lbl 30184 `"Tlaquilpa"', add
label define mx10a_muniwrk_lbl 30185 `"Tlilapan"', add
label define mx10a_muniwrk_lbl 30186 `"Tomatlán"', add
label define mx10a_muniwrk_lbl 30187 `"Tonayán"', add
label define mx10a_muniwrk_lbl 30188 `"Totutla"', add
label define mx10a_muniwrk_lbl 30189 `"Tuxpan"', add
label define mx10a_muniwrk_lbl 30190 `"Tuxtilla"', add
label define mx10a_muniwrk_lbl 30191 `"Ursulo Galván"', add
label define mx10a_muniwrk_lbl 30192 `"Vega de Alatorre"', add
label define mx10a_muniwrk_lbl 30193 `"Veracruz"', add
label define mx10a_muniwrk_lbl 30194 `"Villa Aldama"', add
label define mx10a_muniwrk_lbl 30195 `"Xoxocotla"', add
label define mx10a_muniwrk_lbl 30196 `"Yanga"', add
label define mx10a_muniwrk_lbl 30197 `"Yecuatla"', add
label define mx10a_muniwrk_lbl 30198 `"Zacualpan"', add
label define mx10a_muniwrk_lbl 30199 `"Zaragoza"', add
label define mx10a_muniwrk_lbl 30200 `"Zentla"', add
label define mx10a_muniwrk_lbl 30201 `"Zongolica"', add
label define mx10a_muniwrk_lbl 30202 `"Zontecomatlán de López y Fuentes"', add
label define mx10a_muniwrk_lbl 30203 `"Zozocolco de Hidalgo"', add
label define mx10a_muniwrk_lbl 30204 `"Agua Dulce"', add
label define mx10a_muniwrk_lbl 30205 `"El Higo"', add
label define mx10a_muniwrk_lbl 30206 `"Nanchital de Lázaro Cárdenas del Río"', add
label define mx10a_muniwrk_lbl 30207 `"Tres Valles"', add
label define mx10a_muniwrk_lbl 30208 `"Carlos A. Carrillo"', add
label define mx10a_muniwrk_lbl 30209 `"Tatahuicapan de Juárez"', add
label define mx10a_muniwrk_lbl 30210 `"Uxpanapa"', add
label define mx10a_muniwrk_lbl 30211 `"San Rafael"', add
label define mx10a_muniwrk_lbl 30212 `"Santiago Sochiapan"', add
label define mx10a_muniwrk_lbl 30999 `"Veracruz de Ignacio de la Llave entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 31001 `"Abalá"', add
label define mx10a_muniwrk_lbl 31002 `"Acanceh"', add
label define mx10a_muniwrk_lbl 31003 `"Akil"', add
label define mx10a_muniwrk_lbl 31004 `"Baca"', add
label define mx10a_muniwrk_lbl 31005 `"Bokobá"', add
label define mx10a_muniwrk_lbl 31006 `"Buctzotz"', add
label define mx10a_muniwrk_lbl 31007 `"Cacalchén"', add
label define mx10a_muniwrk_lbl 31008 `"Calotmul"', add
label define mx10a_muniwrk_lbl 31009 `"Cansahcab"', add
label define mx10a_muniwrk_lbl 31010 `"Cantamayec"', add
label define mx10a_muniwrk_lbl 31011 `"Celestún"', add
label define mx10a_muniwrk_lbl 31012 `"Cenotillo"', add
label define mx10a_muniwrk_lbl 31013 `"Conkal"', add
label define mx10a_muniwrk_lbl 31014 `"Cuncunul"', add
label define mx10a_muniwrk_lbl 31015 `"Cuzamá"', add
label define mx10a_muniwrk_lbl 31016 `"Chacsinkín"', add
label define mx10a_muniwrk_lbl 31017 `"Chankom"', add
label define mx10a_muniwrk_lbl 31018 `"Chapab"', add
label define mx10a_muniwrk_lbl 31019 `"Chemax"', add
label define mx10a_muniwrk_lbl 31020 `"Chicxulub Pueblo"', add
label define mx10a_muniwrk_lbl 31021 `"Chichimilá"', add
label define mx10a_muniwrk_lbl 31022 `"Chikindzonot"', add
label define mx10a_muniwrk_lbl 31023 `"Chocholá"', add
label define mx10a_muniwrk_lbl 31024 `"Chumayel"', add
label define mx10a_muniwrk_lbl 31025 `"Dzán"', add
label define mx10a_muniwrk_lbl 31026 `"Dzemul"', add
label define mx10a_muniwrk_lbl 31027 `"Dzidzantún"', add
label define mx10a_muniwrk_lbl 31028 `"Dzilam de Bravo"', add
label define mx10a_muniwrk_lbl 31029 `"Dzilam González"', add
label define mx10a_muniwrk_lbl 31030 `"Dzitás"', add
label define mx10a_muniwrk_lbl 31031 `"Dzoncauich"', add
label define mx10a_muniwrk_lbl 31032 `"Espita"', add
label define mx10a_muniwrk_lbl 31033 `"Halachó"', add
label define mx10a_muniwrk_lbl 31034 `"Hocabá"', add
label define mx10a_muniwrk_lbl 31035 `"Hoctún"', add
label define mx10a_muniwrk_lbl 31036 `"Homún"', add
label define mx10a_muniwrk_lbl 31037 `"Huhí"', add
label define mx10a_muniwrk_lbl 31038 `"Hunucmá"', add
label define mx10a_muniwrk_lbl 31039 `"Ixil"', add
label define mx10a_muniwrk_lbl 31040 `"Izamal"', add
label define mx10a_muniwrk_lbl 31041 `"Kanasín"', add
label define mx10a_muniwrk_lbl 31042 `"Kantunil"', add
label define mx10a_muniwrk_lbl 31043 `"Kaua"', add
label define mx10a_muniwrk_lbl 31044 `"Kinchil"', add
label define mx10a_muniwrk_lbl 31045 `"Kopomá"', add
label define mx10a_muniwrk_lbl 31046 `"Mama"', add
label define mx10a_muniwrk_lbl 31047 `"Maní"', add
label define mx10a_muniwrk_lbl 31048 `"Maxcanú"', add
label define mx10a_muniwrk_lbl 31049 `"Mayapán"', add
label define mx10a_muniwrk_lbl 31050 `"Mérida"', add
label define mx10a_muniwrk_lbl 31051 `"Mocochá"', add
label define mx10a_muniwrk_lbl 31052 `"Motul"', add
label define mx10a_muniwrk_lbl 31053 `"Muna"', add
label define mx10a_muniwrk_lbl 31054 `"Muxupip"', add
label define mx10a_muniwrk_lbl 31055 `"Opichén"', add
label define mx10a_muniwrk_lbl 31056 `"Oxkutzcab"', add
label define mx10a_muniwrk_lbl 31057 `"Panabá"', add
label define mx10a_muniwrk_lbl 31058 `"Peto"', add
label define mx10a_muniwrk_lbl 31059 `"Progreso"', add
label define mx10a_muniwrk_lbl 31060 `"Quintana Roo"', add
label define mx10a_muniwrk_lbl 31061 `"Río Lagartos"', add
label define mx10a_muniwrk_lbl 31062 `"Sacalum"', add
label define mx10a_muniwrk_lbl 31063 `"Samahil"', add
label define mx10a_muniwrk_lbl 31064 `"Sanahcat"', add
label define mx10a_muniwrk_lbl 31065 `"San Felipe"', add
label define mx10a_muniwrk_lbl 31066 `"Santa Elena"', add
label define mx10a_muniwrk_lbl 31067 `"Seyé"', add
label define mx10a_muniwrk_lbl 31068 `"Sinanché"', add
label define mx10a_muniwrk_lbl 31069 `"Sotuta"', add
label define mx10a_muniwrk_lbl 31070 `"Sucilá"', add
label define mx10a_muniwrk_lbl 31071 `"Sudzal"', add
label define mx10a_muniwrk_lbl 31072 `"Suma"', add
label define mx10a_muniwrk_lbl 31073 `"Tahdziú"', add
label define mx10a_muniwrk_lbl 31074 `"Tahmek"', add
label define mx10a_muniwrk_lbl 31075 `"Teabo"', add
label define mx10a_muniwrk_lbl 31076 `"Tecoh"', add
label define mx10a_muniwrk_lbl 31077 `"Tekal de Venegas"', add
label define mx10a_muniwrk_lbl 31078 `"Tekantó"', add
label define mx10a_muniwrk_lbl 31079 `"Tekax"', add
label define mx10a_muniwrk_lbl 31080 `"Tekit"', add
label define mx10a_muniwrk_lbl 31081 `"Tekom"', add
label define mx10a_muniwrk_lbl 31082 `"Telchac Pueblo"', add
label define mx10a_muniwrk_lbl 31083 `"Telchac Puerto"', add
label define mx10a_muniwrk_lbl 31084 `"Temax"', add
label define mx10a_muniwrk_lbl 31085 `"Temozón"', add
label define mx10a_muniwrk_lbl 31086 `"Tepakán"', add
label define mx10a_muniwrk_lbl 31087 `"Tetiz"', add
label define mx10a_muniwrk_lbl 31088 `"Teya"', add
label define mx10a_muniwrk_lbl 31089 `"Ticul"', add
label define mx10a_muniwrk_lbl 31090 `"Timucuy"', add
label define mx10a_muniwrk_lbl 31091 `"Tinum"', add
label define mx10a_muniwrk_lbl 31092 `"Tixcacalcupul"', add
label define mx10a_muniwrk_lbl 31093 `"Tixkokob"', add
label define mx10a_muniwrk_lbl 31094 `"Tixmehuac"', add
label define mx10a_muniwrk_lbl 31095 `"Tixpéhual"', add
label define mx10a_muniwrk_lbl 31096 `"Tizimín"', add
label define mx10a_muniwrk_lbl 31097 `"Tunkás"', add
label define mx10a_muniwrk_lbl 31098 `"Tzucacab"', add
label define mx10a_muniwrk_lbl 31099 `"Uayma"', add
label define mx10a_muniwrk_lbl 31100 `"Ucú"', add
label define mx10a_muniwrk_lbl 31101 `"Umán"', add
label define mx10a_muniwrk_lbl 31102 `"Valladolid"', add
label define mx10a_muniwrk_lbl 31103 `"Xocchel"', add
label define mx10a_muniwrk_lbl 31104 `"Yaxcabá"', add
label define mx10a_muniwrk_lbl 31105 `"Yaxkukul"', add
label define mx10a_muniwrk_lbl 31106 `"Yobaín"', add
label define mx10a_muniwrk_lbl 31999 `"Yucatán entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 32001 `"Apozol"', add
label define mx10a_muniwrk_lbl 32002 `"Apulco"', add
label define mx10a_muniwrk_lbl 32003 `"Atolinga"', add
label define mx10a_muniwrk_lbl 32004 `"Benito Juárez"', add
label define mx10a_muniwrk_lbl 32005 `"Calera"', add
label define mx10a_muniwrk_lbl 32006 `"Cañitas de Felipe Pescador"', add
label define mx10a_muniwrk_lbl 32007 `"Concepción del Oro"', add
label define mx10a_muniwrk_lbl 32008 `"Cuauhtémoc"', add
label define mx10a_muniwrk_lbl 32009 `"Chalchihuites"', add
label define mx10a_muniwrk_lbl 32010 `"Fresnillo"', add
label define mx10a_muniwrk_lbl 32011 `"Trinidad García de la Cadena"', add
label define mx10a_muniwrk_lbl 32012 `"Genaro Codina"', add
label define mx10a_muniwrk_lbl 32013 `"General Enrique Estrada"', add
label define mx10a_muniwrk_lbl 32014 `"General Francisco R. Murguía"', add
label define mx10a_muniwrk_lbl 32015 `"El Plateado de Joaquín Amaro"', add
label define mx10a_muniwrk_lbl 32016 `"General Pánfilo Natera"', add
label define mx10a_muniwrk_lbl 32017 `"Guadalupe"', add
label define mx10a_muniwrk_lbl 32018 `"Huanusco"', add
label define mx10a_muniwrk_lbl 32019 `"Jalpa"', add
label define mx10a_muniwrk_lbl 32020 `"Jerez"', add
label define mx10a_muniwrk_lbl 32021 `"Jiménez del Teul"', add
label define mx10a_muniwrk_lbl 32022 `"Juan Aldama"', add
label define mx10a_muniwrk_lbl 32023 `"Juchipila"', add
label define mx10a_muniwrk_lbl 32024 `"Loreto"', add
label define mx10a_muniwrk_lbl 32025 `"Luis Moya"', add
label define mx10a_muniwrk_lbl 32026 `"Mazapil"', add
label define mx10a_muniwrk_lbl 32027 `"Melchor Ocampo"', add
label define mx10a_muniwrk_lbl 32028 `"Mezquital del Oro"', add
label define mx10a_muniwrk_lbl 32029 `"Miguel Auza"', add
label define mx10a_muniwrk_lbl 32030 `"Momax"', add
label define mx10a_muniwrk_lbl 32031 `"Monte Escobedo"', add
label define mx10a_muniwrk_lbl 32032 `"Morelos"', add
label define mx10a_muniwrk_lbl 32033 `"Moyahua de Estrada"', add
label define mx10a_muniwrk_lbl 32034 `"Nochistlán de Mejía"', add
label define mx10a_muniwrk_lbl 32035 `"Noria de Ángeles"', add
label define mx10a_muniwrk_lbl 32036 `"Ojocaliente"', add
label define mx10a_muniwrk_lbl 32037 `"Pánuco"', add
label define mx10a_muniwrk_lbl 32038 `"Pinos"', add
label define mx10a_muniwrk_lbl 32039 `"Río Grande"', add
label define mx10a_muniwrk_lbl 32040 `"Sain Alto"', add
label define mx10a_muniwrk_lbl 32041 `"El Salvador"', add
label define mx10a_muniwrk_lbl 32042 `"Sombrerete"', add
label define mx10a_muniwrk_lbl 32043 `"Susticacán"', add
label define mx10a_muniwrk_lbl 32044 `"Tabasco"', add
label define mx10a_muniwrk_lbl 32045 `"Tepechitlán"', add
label define mx10a_muniwrk_lbl 32046 `"Tepetongo"', add
label define mx10a_muniwrk_lbl 32047 `"Teúl de González Ortega"', add
label define mx10a_muniwrk_lbl 32048 `"Tlaltenango de Sánchez Román"', add
label define mx10a_muniwrk_lbl 32049 `"Valparaíso"', add
label define mx10a_muniwrk_lbl 32050 `"Vetagrande"', add
label define mx10a_muniwrk_lbl 32051 `"Villa de Cos"', add
label define mx10a_muniwrk_lbl 32052 `"Villa García"', add
label define mx10a_muniwrk_lbl 32053 `"Villa González Ortega"', add
label define mx10a_muniwrk_lbl 32054 `"Villa Hidalgo"', add
label define mx10a_muniwrk_lbl 32055 `"Villanueva"', add
label define mx10a_muniwrk_lbl 32056 `"Zacatecas"', add
label define mx10a_muniwrk_lbl 32057 `"Trancoso"', add
label define mx10a_muniwrk_lbl 32058 `"Santa María de la Paz"', add
label define mx10a_muniwrk_lbl 32999 `"Zacatecas entity, municipality unknown"', add
label define mx10a_muniwrk_lbl 90000 `"Other country"', add
label define mx10a_muniwrk_lbl 99998 `"Unknown"', add
label define mx10a_muniwrk_lbl 99999 `"NIU (not in universe)"', add
label values mx10a_muniwrk mx10a_muniwrk_lbl

label define mx10a_incprogs_lbl 1 `"Yes"'
label define mx10a_incprogs_lbl 2 `"No"', add
label define mx10a_incprogs_lbl 8 `"Unknown"', add
label define mx10a_incprogs_lbl 9 `"NIU (not in universe)"', add
label values mx10a_incprogs mx10a_incprogs_lbl

label define mx10a_incretir_lbl 1 `"Yes"'
label define mx10a_incretir_lbl 2 `"No"', add
label define mx10a_incretir_lbl 8 `"Unknown"', add
label define mx10a_incretir_lbl 9 `"NIU (not in universe)"', add
label values mx10a_incretir mx10a_incretir_lbl

label define mx10a_incremit_lbl 1 `"Yes"'
label define mx10a_incremit_lbl 2 `"No"', add
label define mx10a_incremit_lbl 8 `"Unknown"', add
label define mx10a_incremit_lbl 9 `"NIU (not in universe)"', add
label values mx10a_incremit mx10a_incremit_lbl

label define mx10a_inccntry_lbl 1 `"Yes"'
label define mx10a_inccntry_lbl 2 `"No"', add
label define mx10a_inccntry_lbl 8 `"Unknown"', add
label define mx10a_inccntry_lbl 9 `"NIU (not in universe)"', add
label values mx10a_inccntry mx10a_inccntry_lbl

label define mx10a_chborn_lbl 00 `"None"'
label define mx10a_chborn_lbl 01 `"1"', add
label define mx10a_chborn_lbl 02 `"2"', add
label define mx10a_chborn_lbl 03 `"3"', add
label define mx10a_chborn_lbl 04 `"4"', add
label define mx10a_chborn_lbl 05 `"5"', add
label define mx10a_chborn_lbl 06 `"6"', add
label define mx10a_chborn_lbl 07 `"7"', add
label define mx10a_chborn_lbl 08 `"8"', add
label define mx10a_chborn_lbl 09 `"9"', add
label define mx10a_chborn_lbl 10 `"10"', add
label define mx10a_chborn_lbl 11 `"11"', add
label define mx10a_chborn_lbl 12 `"12"', add
label define mx10a_chborn_lbl 13 `"13"', add
label define mx10a_chborn_lbl 14 `"14"', add
label define mx10a_chborn_lbl 15 `"15"', add
label define mx10a_chborn_lbl 16 `"16"', add
label define mx10a_chborn_lbl 17 `"17"', add
label define mx10a_chborn_lbl 18 `"18"', add
label define mx10a_chborn_lbl 19 `"19"', add
label define mx10a_chborn_lbl 20 `"20"', add
label define mx10a_chborn_lbl 21 `"21"', add
label define mx10a_chborn_lbl 22 `"22"', add
label define mx10a_chborn_lbl 23 `"23"', add
label define mx10a_chborn_lbl 24 `"24"', add
label define mx10a_chborn_lbl 25 `"25"', add
label define mx10a_chborn_lbl 98 `"Unknown"', add
label define mx10a_chborn_lbl 99 `"NIU (not in universe)"', add
label values mx10a_chborn mx10a_chborn_lbl

label define mx10a_chdead_lbl 00 `"None"'
label define mx10a_chdead_lbl 01 `"1"', add
label define mx10a_chdead_lbl 02 `"2"', add
label define mx10a_chdead_lbl 03 `"3"', add
label define mx10a_chdead_lbl 04 `"4"', add
label define mx10a_chdead_lbl 05 `"5"', add
label define mx10a_chdead_lbl 06 `"6"', add
label define mx10a_chdead_lbl 07 `"7"', add
label define mx10a_chdead_lbl 08 `"8"', add
label define mx10a_chdead_lbl 09 `"9"', add
label define mx10a_chdead_lbl 10 `"10"', add
label define mx10a_chdead_lbl 11 `"11"', add
label define mx10a_chdead_lbl 12 `"12"', add
label define mx10a_chdead_lbl 13 `"13"', add
label define mx10a_chdead_lbl 14 `"14"', add
label define mx10a_chdead_lbl 15 `"15"', add
label define mx10a_chdead_lbl 16 `"16"', add
label define mx10a_chdead_lbl 17 `"17"', add
label define mx10a_chdead_lbl 18 `"18"', add
label define mx10a_chdead_lbl 19 `"19"', add
label define mx10a_chdead_lbl 20 `"20"', add
label define mx10a_chdead_lbl 21 `"21"', add
label define mx10a_chdead_lbl 22 `"22"', add
label define mx10a_chdead_lbl 23 `"23"', add
label define mx10a_chdead_lbl 98 `"Unknown"', add
label define mx10a_chdead_lbl 99 `"NIU (not in universe)"', add
label values mx10a_chdead mx10a_chdead_lbl

label define mx10a_chsurv_lbl 00 `"None"'
label define mx10a_chsurv_lbl 01 `"1"', add
label define mx10a_chsurv_lbl 02 `"2"', add
label define mx10a_chsurv_lbl 03 `"3"', add
label define mx10a_chsurv_lbl 04 `"4"', add
label define mx10a_chsurv_lbl 05 `"5"', add
label define mx10a_chsurv_lbl 06 `"6"', add
label define mx10a_chsurv_lbl 07 `"7"', add
label define mx10a_chsurv_lbl 08 `"8"', add
label define mx10a_chsurv_lbl 09 `"9"', add
label define mx10a_chsurv_lbl 10 `"10"', add
label define mx10a_chsurv_lbl 11 `"11"', add
label define mx10a_chsurv_lbl 12 `"12"', add
label define mx10a_chsurv_lbl 13 `"13"', add
label define mx10a_chsurv_lbl 14 `"14"', add
label define mx10a_chsurv_lbl 15 `"15"', add
label define mx10a_chsurv_lbl 16 `"16"', add
label define mx10a_chsurv_lbl 17 `"17"', add
label define mx10a_chsurv_lbl 18 `"18"', add
label define mx10a_chsurv_lbl 19 `"19"', add
label define mx10a_chsurv_lbl 20 `"20"', add
label define mx10a_chsurv_lbl 21 `"21"', add
label define mx10a_chsurv_lbl 22 `"22"', add
label define mx10a_chsurv_lbl 23 `"23"', add
label define mx10a_chsurv_lbl 24 `"24"', add
label define mx10a_chsurv_lbl 25 `"25"', add
label define mx10a_chsurv_lbl 98 `"Unknown"', add
label define mx10a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values mx10a_chsurv mx10a_chsurv_lbl

label define mx10a_lstbmnth_lbl 01 `"January"'
label define mx10a_lstbmnth_lbl 02 `"February"', add
label define mx10a_lstbmnth_lbl 03 `"March"', add
label define mx10a_lstbmnth_lbl 04 `"April"', add
label define mx10a_lstbmnth_lbl 05 `"May"', add
label define mx10a_lstbmnth_lbl 06 `"June"', add
label define mx10a_lstbmnth_lbl 07 `"July"', add
label define mx10a_lstbmnth_lbl 08 `"August"', add
label define mx10a_lstbmnth_lbl 09 `"September"', add
label define mx10a_lstbmnth_lbl 10 `"October"', add
label define mx10a_lstbmnth_lbl 11 `"November"', add
label define mx10a_lstbmnth_lbl 12 `"December"', add
label define mx10a_lstbmnth_lbl 98 `"Unknown"', add
label define mx10a_lstbmnth_lbl 99 `"NIU (not in universe)"', add
label values mx10a_lstbmnth mx10a_lstbmnth_lbl

label define mx10a_lstbyear_lbl 1910 `"1910"'
label define mx10a_lstbyear_lbl 1911 `"1911"', add
label define mx10a_lstbyear_lbl 1912 `"1912"', add
label define mx10a_lstbyear_lbl 1913 `"1913"', add
label define mx10a_lstbyear_lbl 1914 `"1914"', add
label define mx10a_lstbyear_lbl 1915 `"1915"', add
label define mx10a_lstbyear_lbl 1916 `"1916"', add
label define mx10a_lstbyear_lbl 1917 `"1917"', add
label define mx10a_lstbyear_lbl 1918 `"1918"', add
label define mx10a_lstbyear_lbl 1919 `"1919"', add
label define mx10a_lstbyear_lbl 1920 `"1920"', add
label define mx10a_lstbyear_lbl 1921 `"1921"', add
label define mx10a_lstbyear_lbl 1922 `"1922"', add
label define mx10a_lstbyear_lbl 1923 `"1923"', add
label define mx10a_lstbyear_lbl 1924 `"1924"', add
label define mx10a_lstbyear_lbl 1925 `"1925"', add
label define mx10a_lstbyear_lbl 1926 `"1926"', add
label define mx10a_lstbyear_lbl 1927 `"1927"', add
label define mx10a_lstbyear_lbl 1928 `"1928"', add
label define mx10a_lstbyear_lbl 1929 `"1929"', add
label define mx10a_lstbyear_lbl 1930 `"1930"', add
label define mx10a_lstbyear_lbl 1931 `"1931"', add
label define mx10a_lstbyear_lbl 1932 `"1932"', add
label define mx10a_lstbyear_lbl 1933 `"1933"', add
label define mx10a_lstbyear_lbl 1934 `"1934"', add
label define mx10a_lstbyear_lbl 1935 `"1935"', add
label define mx10a_lstbyear_lbl 1936 `"1936"', add
label define mx10a_lstbyear_lbl 1937 `"1937"', add
label define mx10a_lstbyear_lbl 1938 `"1938"', add
label define mx10a_lstbyear_lbl 1939 `"1939"', add
label define mx10a_lstbyear_lbl 1940 `"1940"', add
label define mx10a_lstbyear_lbl 1941 `"1941"', add
label define mx10a_lstbyear_lbl 1942 `"1942"', add
label define mx10a_lstbyear_lbl 1943 `"1943"', add
label define mx10a_lstbyear_lbl 1944 `"1944"', add
label define mx10a_lstbyear_lbl 1945 `"1945"', add
label define mx10a_lstbyear_lbl 1946 `"1946"', add
label define mx10a_lstbyear_lbl 1947 `"1947"', add
label define mx10a_lstbyear_lbl 1948 `"1948"', add
label define mx10a_lstbyear_lbl 1949 `"1949"', add
label define mx10a_lstbyear_lbl 1950 `"1950"', add
label define mx10a_lstbyear_lbl 1951 `"1951"', add
label define mx10a_lstbyear_lbl 1952 `"1952"', add
label define mx10a_lstbyear_lbl 1953 `"1953"', add
label define mx10a_lstbyear_lbl 1954 `"1954"', add
label define mx10a_lstbyear_lbl 1955 `"1955"', add
label define mx10a_lstbyear_lbl 1956 `"1956"', add
label define mx10a_lstbyear_lbl 1957 `"1957"', add
label define mx10a_lstbyear_lbl 1958 `"1958"', add
label define mx10a_lstbyear_lbl 1959 `"1959"', add
label define mx10a_lstbyear_lbl 1960 `"1960"', add
label define mx10a_lstbyear_lbl 1961 `"1961"', add
label define mx10a_lstbyear_lbl 1962 `"1962"', add
label define mx10a_lstbyear_lbl 1963 `"1963"', add
label define mx10a_lstbyear_lbl 1964 `"1964"', add
label define mx10a_lstbyear_lbl 1965 `"1965"', add
label define mx10a_lstbyear_lbl 1966 `"1966"', add
label define mx10a_lstbyear_lbl 1967 `"1967"', add
label define mx10a_lstbyear_lbl 1968 `"1968"', add
label define mx10a_lstbyear_lbl 1969 `"1969"', add
label define mx10a_lstbyear_lbl 1970 `"1970"', add
label define mx10a_lstbyear_lbl 1971 `"1971"', add
label define mx10a_lstbyear_lbl 1972 `"1972"', add
label define mx10a_lstbyear_lbl 1973 `"1973"', add
label define mx10a_lstbyear_lbl 1974 `"1974"', add
label define mx10a_lstbyear_lbl 1975 `"1975"', add
label define mx10a_lstbyear_lbl 1976 `"1976"', add
label define mx10a_lstbyear_lbl 1977 `"1977"', add
label define mx10a_lstbyear_lbl 1978 `"1978"', add
label define mx10a_lstbyear_lbl 1979 `"1979"', add
label define mx10a_lstbyear_lbl 1980 `"1980"', add
label define mx10a_lstbyear_lbl 1981 `"1981"', add
label define mx10a_lstbyear_lbl 1982 `"1982"', add
label define mx10a_lstbyear_lbl 1983 `"1983"', add
label define mx10a_lstbyear_lbl 1984 `"1984"', add
label define mx10a_lstbyear_lbl 1985 `"1985"', add
label define mx10a_lstbyear_lbl 1986 `"1986"', add
label define mx10a_lstbyear_lbl 1987 `"1987"', add
label define mx10a_lstbyear_lbl 1988 `"1988"', add
label define mx10a_lstbyear_lbl 1989 `"1989"', add
label define mx10a_lstbyear_lbl 1990 `"1990"', add
label define mx10a_lstbyear_lbl 1991 `"1991"', add
label define mx10a_lstbyear_lbl 1992 `"1992"', add
label define mx10a_lstbyear_lbl 1993 `"1993"', add
label define mx10a_lstbyear_lbl 1994 `"1994"', add
label define mx10a_lstbyear_lbl 1995 `"1995"', add
label define mx10a_lstbyear_lbl 1996 `"1996"', add
label define mx10a_lstbyear_lbl 1997 `"1997"', add
label define mx10a_lstbyear_lbl 1998 `"1998"', add
label define mx10a_lstbyear_lbl 1999 `"1999"', add
label define mx10a_lstbyear_lbl 2000 `"2000"', add
label define mx10a_lstbyear_lbl 2001 `"2001"', add
label define mx10a_lstbyear_lbl 2002 `"2002"', add
label define mx10a_lstbyear_lbl 2003 `"2003"', add
label define mx10a_lstbyear_lbl 2004 `"2004"', add
label define mx10a_lstbyear_lbl 2005 `"2005"', add
label define mx10a_lstbyear_lbl 2006 `"2006"', add
label define mx10a_lstbyear_lbl 2007 `"2007"', add
label define mx10a_lstbyear_lbl 2008 `"2008"', add
label define mx10a_lstbyear_lbl 2009 `"2009"', add
label define mx10a_lstbyear_lbl 2010 `"2010"', add
label define mx10a_lstbyear_lbl 9998 `"Unknown"', add
label define mx10a_lstbyear_lbl 9999 `"NIU (not in universe)"', add
label values mx10a_lstbyear mx10a_lstbyear_lbl

label define mx10a_lstbsurv_lbl 1 `"Yes"'
label define mx10a_lstbsurv_lbl 2 `"No"', add
label define mx10a_lstbsurv_lbl 8 `"Unknown"', add
label define mx10a_lstbsurv_lbl 9 `"NIU (not in universe)"', add
label values mx10a_lstbsurv mx10a_lstbsurv_lbl

label define mx10a_dthmnths_lbl 00 `"Less than 1 month"'
label define mx10a_dthmnths_lbl 01 `"1 month"', add
label define mx10a_dthmnths_lbl 02 `"2 months"', add
label define mx10a_dthmnths_lbl 03 `"3 months"', add
label define mx10a_dthmnths_lbl 04 `"4"', add
label define mx10a_dthmnths_lbl 05 `"5"', add
label define mx10a_dthmnths_lbl 06 `"6"', add
label define mx10a_dthmnths_lbl 07 `"7"', add
label define mx10a_dthmnths_lbl 08 `"8"', add
label define mx10a_dthmnths_lbl 09 `"9"', add
label define mx10a_dthmnths_lbl 10 `"10"', add
label define mx10a_dthmnths_lbl 11 `"11"', add
label define mx10a_dthmnths_lbl 12 `"Less than 1 year, months unknown"', add
label define mx10a_dthmnths_lbl 98 `"Unknown"', add
label define mx10a_dthmnths_lbl 99 `"NIU (not in universe)"', add
label values mx10a_dthmnths mx10a_dthmnths_lbl

label define mx10a_dthyears_lbl 000 `"Less than 1 year"'
label define mx10a_dthyears_lbl 001 `"1 year"', add
label define mx10a_dthyears_lbl 002 `"2 years"', add
label define mx10a_dthyears_lbl 003 `"3 years"', add
label define mx10a_dthyears_lbl 004 `"4"', add
label define mx10a_dthyears_lbl 005 `"5"', add
label define mx10a_dthyears_lbl 006 `"6"', add
label define mx10a_dthyears_lbl 007 `"7"', add
label define mx10a_dthyears_lbl 008 `"8"', add
label define mx10a_dthyears_lbl 009 `"9"', add
label define mx10a_dthyears_lbl 010 `"10"', add
label define mx10a_dthyears_lbl 011 `"11"', add
label define mx10a_dthyears_lbl 012 `"12"', add
label define mx10a_dthyears_lbl 013 `"13"', add
label define mx10a_dthyears_lbl 014 `"14"', add
label define mx10a_dthyears_lbl 015 `"15"', add
label define mx10a_dthyears_lbl 016 `"16"', add
label define mx10a_dthyears_lbl 017 `"17"', add
label define mx10a_dthyears_lbl 018 `"18"', add
label define mx10a_dthyears_lbl 019 `"19"', add
label define mx10a_dthyears_lbl 020 `"20"', add
label define mx10a_dthyears_lbl 021 `"21"', add
label define mx10a_dthyears_lbl 022 `"22"', add
label define mx10a_dthyears_lbl 023 `"23"', add
label define mx10a_dthyears_lbl 024 `"24"', add
label define mx10a_dthyears_lbl 025 `"25"', add
label define mx10a_dthyears_lbl 026 `"26"', add
label define mx10a_dthyears_lbl 027 `"27"', add
label define mx10a_dthyears_lbl 028 `"28"', add
label define mx10a_dthyears_lbl 029 `"29"', add
label define mx10a_dthyears_lbl 030 `"30"', add
label define mx10a_dthyears_lbl 031 `"31"', add
label define mx10a_dthyears_lbl 032 `"32"', add
label define mx10a_dthyears_lbl 033 `"33"', add
label define mx10a_dthyears_lbl 034 `"34"', add
label define mx10a_dthyears_lbl 035 `"35"', add
label define mx10a_dthyears_lbl 036 `"36"', add
label define mx10a_dthyears_lbl 037 `"37"', add
label define mx10a_dthyears_lbl 038 `"38"', add
label define mx10a_dthyears_lbl 039 `"39"', add
label define mx10a_dthyears_lbl 040 `"40"', add
label define mx10a_dthyears_lbl 041 `"41"', add
label define mx10a_dthyears_lbl 042 `"42"', add
label define mx10a_dthyears_lbl 043 `"43"', add
label define mx10a_dthyears_lbl 044 `"44"', add
label define mx10a_dthyears_lbl 045 `"45"', add
label define mx10a_dthyears_lbl 046 `"46"', add
label define mx10a_dthyears_lbl 047 `"47"', add
label define mx10a_dthyears_lbl 048 `"48"', add
label define mx10a_dthyears_lbl 049 `"49"', add
label define mx10a_dthyears_lbl 050 `"50"', add
label define mx10a_dthyears_lbl 051 `"51"', add
label define mx10a_dthyears_lbl 052 `"52"', add
label define mx10a_dthyears_lbl 053 `"53"', add
label define mx10a_dthyears_lbl 054 `"54"', add
label define mx10a_dthyears_lbl 055 `"55"', add
label define mx10a_dthyears_lbl 056 `"56"', add
label define mx10a_dthyears_lbl 057 `"57"', add
label define mx10a_dthyears_lbl 058 `"58"', add
label define mx10a_dthyears_lbl 059 `"59"', add
label define mx10a_dthyears_lbl 060 `"60"', add
label define mx10a_dthyears_lbl 061 `"61"', add
label define mx10a_dthyears_lbl 062 `"62"', add
label define mx10a_dthyears_lbl 063 `"63"', add
label define mx10a_dthyears_lbl 064 `"64"', add
label define mx10a_dthyears_lbl 065 `"65"', add
label define mx10a_dthyears_lbl 066 `"66"', add
label define mx10a_dthyears_lbl 067 `"67"', add
label define mx10a_dthyears_lbl 068 `"68"', add
label define mx10a_dthyears_lbl 069 `"69"', add
label define mx10a_dthyears_lbl 070 `"70"', add
label define mx10a_dthyears_lbl 071 `"71"', add
label define mx10a_dthyears_lbl 072 `"72"', add
label define mx10a_dthyears_lbl 073 `"73"', add
label define mx10a_dthyears_lbl 074 `"74"', add
label define mx10a_dthyears_lbl 075 `"75"', add
label define mx10a_dthyears_lbl 076 `"76"', add
label define mx10a_dthyears_lbl 077 `"77"', add
label define mx10a_dthyears_lbl 078 `"78"', add
label define mx10a_dthyears_lbl 079 `"79"', add
label define mx10a_dthyears_lbl 080 `"80"', add
label define mx10a_dthyears_lbl 081 `"81"', add
label define mx10a_dthyears_lbl 082 `"82"', add
label define mx10a_dthyears_lbl 083 `"83"', add
label define mx10a_dthyears_lbl 084 `"84"', add
label define mx10a_dthyears_lbl 085 `"85"', add
label define mx10a_dthyears_lbl 086 `"86"', add
label define mx10a_dthyears_lbl 087 `"87"', add
label define mx10a_dthyears_lbl 088 `"88"', add
label define mx10a_dthyears_lbl 089 `"89"', add
label define mx10a_dthyears_lbl 090 `"90"', add
label define mx10a_dthyears_lbl 091 `"91"', add
label define mx10a_dthyears_lbl 092 `"92"', add
label define mx10a_dthyears_lbl 093 `"93"', add
label define mx10a_dthyears_lbl 094 `"94"', add
label define mx10a_dthyears_lbl 095 `"95"', add
label define mx10a_dthyears_lbl 096 `"96"', add
label define mx10a_dthyears_lbl 097 `"97"', add
label define mx10a_dthyears_lbl 098 `"98"', add
label define mx10a_dthyears_lbl 099 `"99"', add
label define mx10a_dthyears_lbl 998 `"Unknown"', add
label define mx10a_dthyears_lbl 999 `"NIU (not in universe)"', add
label values mx10a_dthyears mx10a_dthyears_lbl


