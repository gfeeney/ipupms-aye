* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  int     persons          22-24    ///
  float   wthh             25-32    ///
  byte    subsamp          33-34    ///
  byte    gq               35-36    ///
  byte    fr06a_rectype    37-37    ///
  long    fr06a_dwnum      38-44    ///
  byte    fr06a_pern       45-46    ///
  byte    fr06a_fbig       47-47    ///
  byte    fr06a_region     48-49    ///
  int     fr06a_hhmumr     50-52    ///
  byte    fr06a_buildyr    53-54    ///
  byte    fr06a_elevator   55-55    ///
  byte    fr06a_shower     56-56    ///
  byte    fr06a_buildapp   57-57    ///
  byte    fr06a_dwellcat   58-58    ///
  byte    fr06a_popcat     59-59    ///
  byte    fr06a_heating    60-60    ///
  byte    fr06a_centheat   61-61    ///
  byte    fr06a_solrheat   62-62    ///
  byte    fr06a_aircon     63-63    ///
  byte    fr06a_fuelheat   64-64    ///
  byte    fr06a_motobike   65-65    ///
  byte    fr06a_water      66-66    ///
  byte    fr06a_sewage     67-67    ///
  byte    fr06a_electric   68-68    ///
  byte    fr06a_parking    69-69    ///
  byte    fr06a_hlm        70-70    ///
  byte    fr06a_numfams    71-71    ///
  byte    fr06a_rooms      72-73    ///
  byte    fr06a_persons    74-74    ///
  byte    fr06a_bathing    75-75    ///
  byte    fr06a_bathing2   76-77    ///
  byte    fr06a_famstr     78-79    ///
  byte    fr06a_dwarea     80-80    ///
  byte    fr06a_typconst   81-81    ///
  byte    fr06a_dwelltyp   82-82    ///
  int     fr06a_hhtyped    83-85    ///
  byte    fr06a_hhtype     86-87    ///
  byte    fr06a_urban      88-88    ///
  byte    fr06a_autos      89-89    ///
  byte    fr06a_toilet     90-90    ///
  int     pernum           91-93    ///
  float   wtper            94-101   ///
  byte    fr06a_pernum     102-103  ///
  int     fr06a_yrmove     104-107  ///
  byte    fr06a_yrmove2    108-109  ///
  int     fr06a_agecal     110-112  ///
  byte    fr06a_age2       113-114  ///
  int     fr06a_age        115-117  ///
  int     fr06a_age5       118-120  ///
  int     fr06a_birthyr    121-124  ///
  byte    fr06a_yrsfr      125-126  ///
  int     fr06a_yrsdwell   127-129  ///
  byte    fr06a_yrsdwll2   130-131  ///
  byte    fr06a_fammemb    132-132  ///
  byte    fr06a_periodfr   133-134  ///
  byte    fr06a_couple     135-135  ///
  byte    fr06a_socio8     136-136  ///
  byte    fr06a_socio24    137-138  ///
  byte    fr06a_socio42    139-140  ///
  byte    fr06a_socio42    141-142  ///
  byte    fr06a_diploma    143-144  ///
  byte    fr06a_classwkr   145-146  ///
  byte    fr06a_school     147-147  ///
  byte    fr06a_studyloc   148-148  ///
  byte    fr06a_studyurb   149-149  ///
  byte    fr06a_workloc    150-150  ///
  byte    fr06a_workurb    151-151  ///
  byte    fr06a_immig      152-152  ///
  byte    fr06a_bpl        153-153  ///
  byte    fr06a_nation     154-155  ///
  byte    fr06a_fampers    156-157  ///
  byte    fr06a_prevres    158-159  ///
  byte    fr06a_prevres    160-161  ///
  byte    fr06a_prevurb    162-162  ///
  byte    fr06a_famrel     163-163  ///
  byte    fr06a_frelate    164-164  ///
  byte    fr06a_relate     165-166  ///
  byte    fr06a_marst      167-167  ///
  byte    fr06a_cohab      168-169  ///
  byte    fr06a_lifestyl   170-171  ///
  str     fr06a_ind700     172-175  ///
  int     fr06a_ind700n    176-179  ///
  byte    fr06a_ind17      180-181  ///
  byte    fr06a_bplterr    182-183  ///
  int     fr06a_nation49   184-186  ///
  byte    fr06a_nationcnd  187-187  ///
  int     fr06a_nat49c     188-190  ///
  byte    fr06a_nat12c     191-192  ///
  byte    fr06a_nationc    193-193  ///
  int     fr06a_ind114     194-197  ///
  int     fr06a_ind36      198-200  ///
  byte    fr06a_primfam    201-201  ///
  byte    fr06a_bplterrit  202-203  ///
  byte    fr06a_bplfor12   204-205  ///
  int     fr06a_prof486    206-209  ///
  byte    fr06a_prof486n   210-211  ///
  byte    fr06a_seekwork   212-212  ///
  byte    fr06a_sex        213-213  ///
  byte    fr06a_wagearn    214-215  ///
  byte    fr06a_ownship    216-217  ///
  byte    fr06a_activty    218-219  ///
  byte    fr06a_fulltime   220-220  ///
  byte    fr06a_trans      221-221  ///
  byte    fr06a_famtypec   222-222  ///
  using `"ipumsi_00071.dat"'

replace wthh            = wthh            / 100
replace wtper           = wtper           / 100

format serial          %10.0f
format wthh            %8.2f
format wtper           %8.2f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var persons         `"Number of person records in the household"'
label var wthh            `"Household weight"'
label var subsamp         `"Subsample number"'
label var gq              `"Group quarters status"'
label var fr06a_rectype   `"Record type"'
label var fr06a_dwnum     `"Dwelling number"'
label var fr06a_pern      `"Number of persons in household"'
label var fr06a_fbig      `"Dwelling created by splitting apart a large dwelling or household"'
label var fr06a_region    `"Region of place of residence"'
label var fr06a_hhmumr    `"Household number in the region (anonymized)"'
label var fr06a_buildyr   `"Aggregated period of house or building completion date"'
label var fr06a_elevator  `"Has an elevator"'
label var fr06a_shower    `"Bathtub or shower (overseas departments)"'
label var fr06a_buildapp  `"Type of building (overseas departments)"'
label var fr06a_dwellcat  `"Dwelling category"'
label var fr06a_popcat    `"Condensed population category"'
label var fr06a_heating   `"Method of heating dwelling (overseas departments)"'
label var fr06a_centheat  `"Dwelling central heat (metropolitan France)"'
label var fr06a_solrheat  `"Solar water heater (overseas departments)"'
label var fr06a_aircon    `"Has at least one air-conditioned room (overseas departments)"'
label var fr06a_fuelheat  `"Dwelling’s main fuel (metropolitan France)"'
label var fr06a_motobike  `"Number of motorized two-wheeled vehicles in the household (overseas territories)"'
label var fr06a_water     `"Potable water source inside dwelling (overseas departments)"'
label var fr06a_sewage    `"Method of sewage disposal (overseas departments)"'
label var fr06a_electric  `"Electricity in dwelling (overseas departments)"'
label var fr06a_parking   `"Reserved parking space"'
label var fr06a_hlm       `"Dwelling belongs to HLM (rent-controlled apartment) agency"'
label var fr06a_numfams   `"Number of families in the household"'
label var fr06a_rooms     `"Number of rooms"'
label var fr06a_persons   `"Number of persons in the dwelling (aggregated)"'
label var fr06a_bathing   `"Sanitary facilities (metropolitan France)"'
label var fr06a_bathing2  `"Sanitary facilities (overseas departments)"'
label var fr06a_famstr    `"Household family structure"'
label var fr06a_dwarea    `"Dwelling size"'
label var fr06a_typconst  `"Type of building/construction"'
label var fr06a_dwelltyp  `"Type of dwelling"'
label var fr06a_hhtyped   `"Detailed household type"'
label var fr06a_hhtype    `"Aggregated household type (in 9 categories)"'
label var fr06a_urban     `"Urban-rural status"'
label var fr06a_autos     `"Number of cars in the household"'
label var fr06a_toilet    `"Toilet inside dwelling (overseas departments)"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var fr06a_pernum    `"Person number (within household)"'
label var fr06a_yrmove    `"Year moved into dwelling (detailed)"'
label var fr06a_yrmove2   `"Year moved into dwelling (aggregated)"'
label var fr06a_agecal    `"Age: difference between year of census and year of birth"'
label var fr06a_age2      `"Age in completed years (categorized)"'
label var fr06a_age       `"Age in completed years"'
label var fr06a_age5      `"Five-year age in completed years"'
label var fr06a_birthyr   `"Year of birth"'
label var fr06a_yrsfr     `"Aggregated length of time in France"'
label var fr06a_yrsdwell  `"Length of time in the dwelling (detailed)"'
label var fr06a_yrsdwll2  `"Length of time in the dwelling (aggregated)"'
label var fr06a_fammemb   `"Belongs to a family"'
label var fr06a_periodfr  `"Period of arrival in France"'
label var fr06a_couple    `"Conjugality"'
label var fr06a_socio8    `"Socio-professional category (1-digit)"'
label var fr06a_socio24   `"Socio-professional category (2-digit)"'
label var fr06a_socio42   `"Socio-professional category in 42 categories"'
label var fr06a_socio42   `"Socio-professional category in 42 categories"'
label var fr06a_diploma   `"Highest diploma achieved"'
label var fr06a_classwkr  `"Employment status"'
label var fr06a_school    `"Enrollment in school"'
label var fr06a_studyloc  `"Place of study"'
label var fr06a_studyurb  `"Urban-rural place of study"'
label var fr06a_workloc   `"Place of work"'
label var fr06a_workurb   `"Urban-rural place of work"'
label var fr06a_immig     `"Immigration status"'
label var fr06a_bpl       `"Place of birth"'
label var fr06a_nation    `"Nationality"'
label var fr06a_fampers   `"Number of persons in the family"'
label var fr06a_prevres   `"Previous residence (five years)"'
label var fr06a_prevres   `"Previous residence (five years)"'
label var fr06a_prevurb   `"Urban indicator of previous residence"'
label var fr06a_famrel    `"Family relationship"'
label var fr06a_frelate   `"Relationship to family reference person"'
label var fr06a_relate    `"Relationship to household reference person"'
label var fr06a_marst     `"Legal marital status"'
label var fr06a_cohab     `"Method of cohabitation"'
label var fr06a_lifestyl  `"Lifestyle"'
label var fr06a_ind700    `"Economic activity in 700 categories (2003), original"'
label var fr06a_ind700n   `"Economic activity in 700 categories (2003 classification) numeric recode"'
label var fr06a_ind17     `"Economic activity in 17 categories (2003 classification)"'
label var fr06a_bplterr   `"Birth in overseas department or territory"'
label var fr06a_nation49  `"Current nationality in 49 categories"'
label var fr06a_nationcnd `"Condensed current nationality"'
label var fr06a_nat49c    `"Nationality at birth of French citizens, in 49 categories"'
label var fr06a_nat12c    `"Nationality at birth of French citizens in 12 categories"'
label var fr06a_nationc   `"Nationality at birth of French citizens, condensed"'
label var fr06a_ind114    `"Economic activity (4-digit)"'
label var fr06a_ind36     `"Economic activity (2-digit)"'
label var fr06a_primfam   `"Family member"'
label var fr06a_bplterrit `"Originally from an overseas department or territory"'
label var fr06a_bplfor12  `"Country of birth in 12 categories"'
label var fr06a_prof486   `"Detailed profession (4-digit)"'
label var fr06a_prof486n  `"Detailed profession (2-digit)"'
label var fr06a_seekwork  `"Length of time looking for work"'
label var fr06a_sex       `"Sex"'
label var fr06a_wagearn   `"Professional status"'
label var fr06a_ownship   `"Dwelling status"'
label var fr06a_activty   `"Type of activity"'
label var fr06a_fulltime  `"Work time/working hours"'
label var fr06a_trans     `"Means of transportation"'
label var fr06a_famtypec  `"Condensed family type"'

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

label define subsamp_lbl 00 `"1st 1% subsample"'
label define subsamp_lbl 01 `"2nd 1% subsample"', add
label define subsamp_lbl 02 `"3rd 1% subsample"', add
label define subsamp_lbl 03 `"4th 1% subsample"', add
label define subsamp_lbl 04 `"5th 1% subsample"', add
label define subsamp_lbl 05 `"6th 1% subsample"', add
label define subsamp_lbl 06 `"7th 1% subsample"', add
label define subsamp_lbl 07 `"8th 1% subsample"', add
label define subsamp_lbl 08 `"9th 1% subsample"', add
label define subsamp_lbl 09 `"10th 1% subsample"', add
label define subsamp_lbl 10 `"11th 1% subsample"', add
label define subsamp_lbl 11 `"12th 1% subsample"', add
label define subsamp_lbl 12 `"13th 1% subsample"', add
label define subsamp_lbl 13 `"14th 1% subsample"', add
label define subsamp_lbl 14 `"15th 1% subsample"', add
label define subsamp_lbl 15 `"16th 1% subsample"', add
label define subsamp_lbl 16 `"17th 1% subsample"', add
label define subsamp_lbl 17 `"18th 1% subsample"', add
label define subsamp_lbl 18 `"19th 1% subsample"', add
label define subsamp_lbl 19 `"20th 1% subsample"', add
label define subsamp_lbl 20 `"21st 1% subsample"', add
label define subsamp_lbl 21 `"22nd 1% subsample"', add
label define subsamp_lbl 22 `"23rd 1% subsample"', add
label define subsamp_lbl 23 `"24th 1% subsample"', add
label define subsamp_lbl 24 `"25th 1% subsample"', add
label define subsamp_lbl 25 `"26th 1% subsample"', add
label define subsamp_lbl 26 `"27th 1% subsample"', add
label define subsamp_lbl 27 `"28th 1% subsample"', add
label define subsamp_lbl 28 `"29th 1% subsample"', add
label define subsamp_lbl 29 `"30th 1% subsample"', add
label define subsamp_lbl 30 `"31st 1% subsample"', add
label define subsamp_lbl 31 `"32nd 1% subsample"', add
label define subsamp_lbl 32 `"33rd 1% subsample"', add
label define subsamp_lbl 33 `"34th 1% subsample"', add
label define subsamp_lbl 34 `"35th 1% subsample"', add
label define subsamp_lbl 35 `"36th 1% subsample"', add
label define subsamp_lbl 36 `"37th 1% subsample"', add
label define subsamp_lbl 37 `"38th 1% subsample"', add
label define subsamp_lbl 38 `"39th 1% subsample"', add
label define subsamp_lbl 39 `"40th 1% subsample"', add
label define subsamp_lbl 40 `"41st 1% subsample"', add
label define subsamp_lbl 41 `"42nd 1% subsample"', add
label define subsamp_lbl 42 `"43rd 1% subsample"', add
label define subsamp_lbl 43 `"44th 1% subsample"', add
label define subsamp_lbl 44 `"45th 1% subsample"', add
label define subsamp_lbl 45 `"46th 1% subsample"', add
label define subsamp_lbl 46 `"47th 1% subsample"', add
label define subsamp_lbl 47 `"48th 1% subsample"', add
label define subsamp_lbl 48 `"49th 1% subsample"', add
label define subsamp_lbl 49 `"50th 1% subsample"', add
label define subsamp_lbl 50 `"51st 1% subsample"', add
label define subsamp_lbl 51 `"52nd 1% subsample"', add
label define subsamp_lbl 52 `"53rd 1% subsample"', add
label define subsamp_lbl 53 `"54th 1% subsample"', add
label define subsamp_lbl 54 `"55th 1% subsample"', add
label define subsamp_lbl 55 `"56th 1% subsample"', add
label define subsamp_lbl 56 `"57th 1% subsample"', add
label define subsamp_lbl 57 `"58th 1% subsample"', add
label define subsamp_lbl 58 `"59th 1% subsample"', add
label define subsamp_lbl 59 `"60th 1% subsample"', add
label define subsamp_lbl 60 `"61st 1% subsample"', add
label define subsamp_lbl 61 `"62nd 1% subsample"', add
label define subsamp_lbl 62 `"63rd 1% subsample"', add
label define subsamp_lbl 63 `"64th 1% subsample"', add
label define subsamp_lbl 64 `"65th 1% subsample"', add
label define subsamp_lbl 65 `"66th 1% subsample"', add
label define subsamp_lbl 66 `"67th 1% subsample"', add
label define subsamp_lbl 67 `"68th 1% subsample"', add
label define subsamp_lbl 68 `"69th 1% subsample"', add
label define subsamp_lbl 69 `"70th 1% subsample"', add
label define subsamp_lbl 70 `"71st 1% subsample"', add
label define subsamp_lbl 71 `"72nd 1% subsample"', add
label define subsamp_lbl 72 `"73rd 1% subsample"', add
label define subsamp_lbl 73 `"74th 1% subsample"', add
label define subsamp_lbl 74 `"75th 1% subsample"', add
label define subsamp_lbl 75 `"76th 1% subsample"', add
label define subsamp_lbl 76 `"77th 1% subsample"', add
label define subsamp_lbl 77 `"78th 1% subsample"', add
label define subsamp_lbl 78 `"79th 1% subsample"', add
label define subsamp_lbl 79 `"80th 1% subsample"', add
label define subsamp_lbl 80 `"81st 1% subsample"', add
label define subsamp_lbl 81 `"82nd 1% subsample"', add
label define subsamp_lbl 82 `"83rd 1% subsample"', add
label define subsamp_lbl 83 `"84th 1% subsample"', add
label define subsamp_lbl 84 `"85th 1% subsample"', add
label define subsamp_lbl 85 `"86th 1% subsample"', add
label define subsamp_lbl 86 `"87th 1% subsample"', add
label define subsamp_lbl 87 `"88th 1% subsample"', add
label define subsamp_lbl 88 `"89th 1% subsample"', add
label define subsamp_lbl 89 `"90th 1% subsample"', add
label define subsamp_lbl 90 `"91st 1% subsample"', add
label define subsamp_lbl 91 `"92nd 1% subsample"', add
label define subsamp_lbl 92 `"93rd 1% subsample"', add
label define subsamp_lbl 93 `"94th 1% subsample"', add
label define subsamp_lbl 94 `"95th 1% subsample"', add
label define subsamp_lbl 95 `"96th 1% subsample"', add
label define subsamp_lbl 96 `"97th 1% subsample"', add
label define subsamp_lbl 97 `"98th 1% subsample"', add
label define subsamp_lbl 98 `"99th 1% subsample"', add
label define subsamp_lbl 99 `"100th 1% subsample"', add
label values subsamp subsamp_lbl

label define gq_lbl 00 `"Vacant"'
label define gq_lbl 10 `"Households"', add
label define gq_lbl 20 `"Group quarters, n.s."', add
label define gq_lbl 21 `"Institutions"', add
label define gq_lbl 22 `"Other group quarters"', add
label define gq_lbl 29 `"1-person unit created by splitting large household"', add
label define gq_lbl 99 `"Unknown/group quarters not identified"', add
label values gq gq_lbl

label define fr06a_rectype_lbl 1 `"Household"'
label define fr06a_rectype_lbl 2 `"Person"', add
label values fr06a_rectype fr06a_rectype_lbl

label define fr06a_pern_lbl 01 `"1"'
label define fr06a_pern_lbl 02 `"2"', add
label define fr06a_pern_lbl 03 `"3"', add
label define fr06a_pern_lbl 04 `"4"', add
label define fr06a_pern_lbl 05 `"5"', add
label define fr06a_pern_lbl 06 `"6"', add
label define fr06a_pern_lbl 07 `"7"', add
label define fr06a_pern_lbl 08 `"8"', add
label define fr06a_pern_lbl 09 `"9"', add
label define fr06a_pern_lbl 10 `"10"', add
label define fr06a_pern_lbl 11 `"11"', add
label define fr06a_pern_lbl 12 `"12"', add
label define fr06a_pern_lbl 13 `"13"', add
label define fr06a_pern_lbl 14 `"14"', add
label define fr06a_pern_lbl 15 `"15"', add
label define fr06a_pern_lbl 16 `"16"', add
label define fr06a_pern_lbl 17 `"17"', add
label define fr06a_pern_lbl 18 `"18"', add
label define fr06a_pern_lbl 19 `"19"', add
label define fr06a_pern_lbl 20 `"20"', add
label define fr06a_pern_lbl 21 `"21"', add
label define fr06a_pern_lbl 22 `"22"', add
label define fr06a_pern_lbl 23 `"23"', add
label define fr06a_pern_lbl 24 `"24"', add
label define fr06a_pern_lbl 25 `"25"', add
label define fr06a_pern_lbl 26 `"26"', add
label define fr06a_pern_lbl 27 `"27"', add
label define fr06a_pern_lbl 28 `"28"', add
label define fr06a_pern_lbl 29 `"29"', add
label define fr06a_pern_lbl 30 `"30"', add
label values fr06a_pern fr06a_pern_lbl

label define fr06a_fbig_lbl 0 `"No problem"'
label define fr06a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define fr06a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values fr06a_fbig fr06a_fbig_lbl

label define fr06a_region_lbl 01 `"Guadeloupe"'
label define fr06a_region_lbl 02 `"Martinique"', add
label define fr06a_region_lbl 03 `"Guyane"', add
label define fr06a_region_lbl 04 `"La Réunion"', add
label define fr06a_region_lbl 11 `"Île-de-France"', add
label define fr06a_region_lbl 21 `"Champagne-Ardenne"', add
label define fr06a_region_lbl 22 `"Picardie"', add
label define fr06a_region_lbl 23 `"Haute-Normandie"', add
label define fr06a_region_lbl 24 `"Centre"', add
label define fr06a_region_lbl 25 `"Basse-Normandie"', add
label define fr06a_region_lbl 26 `"Bourgogne"', add
label define fr06a_region_lbl 31 `"Nord-Pas-de-Calais"', add
label define fr06a_region_lbl 41 `"Lorraine"', add
label define fr06a_region_lbl 42 `"Alsace"', add
label define fr06a_region_lbl 43 `"Franche-Comté"', add
label define fr06a_region_lbl 52 `"Pays de la Loire"', add
label define fr06a_region_lbl 53 `"Bretagne"', add
label define fr06a_region_lbl 54 `"Poitou-Charentes"', add
label define fr06a_region_lbl 72 `"Aquitaine"', add
label define fr06a_region_lbl 73 `"Midi-Pyrénées"', add
label define fr06a_region_lbl 74 `"Limousin"', add
label define fr06a_region_lbl 82 `"Rhône-Alpes"', add
label define fr06a_region_lbl 83 `"Auvergne"', add
label define fr06a_region_lbl 91 `"Languedoc-Roussillon"', add
label define fr06a_region_lbl 93 `"Provence-Alpes-Côte d'Azur"', add
label define fr06a_region_lbl 94 `"Corse"', add
label values fr06a_region fr06a_region_lbl

label define fr06a_hhmumr_lbl 001 `"1"'
label define fr06a_hhmumr_lbl 002 `"2"', add
label define fr06a_hhmumr_lbl 003 `"3"', add
label define fr06a_hhmumr_lbl 004 `"4"', add
label define fr06a_hhmumr_lbl 005 `"5"', add
label define fr06a_hhmumr_lbl 006 `"6"', add
label define fr06a_hhmumr_lbl 007 `"7"', add
label define fr06a_hhmumr_lbl 008 `"8"', add
label define fr06a_hhmumr_lbl 009 `"9"', add
label define fr06a_hhmumr_lbl 010 `"10"', add
label define fr06a_hhmumr_lbl 011 `"11"', add
label define fr06a_hhmumr_lbl 012 `"12"', add
label define fr06a_hhmumr_lbl 013 `"13"', add
label define fr06a_hhmumr_lbl 014 `"14"', add
label define fr06a_hhmumr_lbl 015 `"15"', add
label define fr06a_hhmumr_lbl 016 `"16"', add
label define fr06a_hhmumr_lbl 017 `"17"', add
label define fr06a_hhmumr_lbl 018 `"18"', add
label define fr06a_hhmumr_lbl 019 `"19"', add
label define fr06a_hhmumr_lbl 020 `"20"', add
label define fr06a_hhmumr_lbl 021 `"21"', add
label define fr06a_hhmumr_lbl 022 `"22"', add
label define fr06a_hhmumr_lbl 023 `"23"', add
label define fr06a_hhmumr_lbl 024 `"24"', add
label define fr06a_hhmumr_lbl 025 `"25"', add
label define fr06a_hhmumr_lbl 026 `"26"', add
label define fr06a_hhmumr_lbl 027 `"27"', add
label define fr06a_hhmumr_lbl 028 `"28"', add
label define fr06a_hhmumr_lbl 029 `"29"', add
label define fr06a_hhmumr_lbl 030 `"30"', add
label define fr06a_hhmumr_lbl 031 `"31"', add
label define fr06a_hhmumr_lbl 032 `"32"', add
label define fr06a_hhmumr_lbl 033 `"33"', add
label define fr06a_hhmumr_lbl 034 `"34"', add
label define fr06a_hhmumr_lbl 035 `"35"', add
label define fr06a_hhmumr_lbl 036 `"36"', add
label define fr06a_hhmumr_lbl 037 `"37"', add
label define fr06a_hhmumr_lbl 038 `"38"', add
label define fr06a_hhmumr_lbl 039 `"39"', add
label define fr06a_hhmumr_lbl 040 `"40"', add
label define fr06a_hhmumr_lbl 041 `"41"', add
label define fr06a_hhmumr_lbl 042 `"42"', add
label define fr06a_hhmumr_lbl 043 `"43"', add
label define fr06a_hhmumr_lbl 044 `"44"', add
label define fr06a_hhmumr_lbl 045 `"45"', add
label define fr06a_hhmumr_lbl 046 `"46"', add
label define fr06a_hhmumr_lbl 047 `"47"', add
label define fr06a_hhmumr_lbl 048 `"48"', add
label define fr06a_hhmumr_lbl 049 `"49"', add
label define fr06a_hhmumr_lbl 050 `"50"', add
label define fr06a_hhmumr_lbl 051 `"51"', add
label define fr06a_hhmumr_lbl 052 `"52"', add
label define fr06a_hhmumr_lbl 053 `"53"', add
label define fr06a_hhmumr_lbl 054 `"54"', add
label define fr06a_hhmumr_lbl 055 `"55"', add
label define fr06a_hhmumr_lbl 056 `"56"', add
label define fr06a_hhmumr_lbl 057 `"57"', add
label define fr06a_hhmumr_lbl 058 `"58"', add
label define fr06a_hhmumr_lbl 059 `"59"', add
label define fr06a_hhmumr_lbl 060 `"60"', add
label define fr06a_hhmumr_lbl 061 `"61"', add
label define fr06a_hhmumr_lbl 062 `"62"', add
label define fr06a_hhmumr_lbl 063 `"63"', add
label define fr06a_hhmumr_lbl 064 `"64"', add
label define fr06a_hhmumr_lbl 065 `"65"', add
label define fr06a_hhmumr_lbl 066 `"66"', add
label define fr06a_hhmumr_lbl 067 `"67"', add
label define fr06a_hhmumr_lbl 068 `"68"', add
label define fr06a_hhmumr_lbl 069 `"69"', add
label define fr06a_hhmumr_lbl 070 `"70"', add
label define fr06a_hhmumr_lbl 071 `"71"', add
label define fr06a_hhmumr_lbl 072 `"72"', add
label define fr06a_hhmumr_lbl 073 `"73"', add
label define fr06a_hhmumr_lbl 074 `"74"', add
label define fr06a_hhmumr_lbl 075 `"75"', add
label define fr06a_hhmumr_lbl 076 `"76"', add
label define fr06a_hhmumr_lbl 077 `"77"', add
label define fr06a_hhmumr_lbl 078 `"78"', add
label define fr06a_hhmumr_lbl 079 `"79"', add
label define fr06a_hhmumr_lbl 080 `"80"', add
label define fr06a_hhmumr_lbl 081 `"81"', add
label define fr06a_hhmumr_lbl 082 `"82"', add
label define fr06a_hhmumr_lbl 083 `"83"', add
label define fr06a_hhmumr_lbl 084 `"84"', add
label define fr06a_hhmumr_lbl 085 `"85"', add
label define fr06a_hhmumr_lbl 086 `"86"', add
label define fr06a_hhmumr_lbl 087 `"87"', add
label define fr06a_hhmumr_lbl 088 `"88"', add
label define fr06a_hhmumr_lbl 089 `"89"', add
label define fr06a_hhmumr_lbl 090 `"90"', add
label define fr06a_hhmumr_lbl 091 `"91"', add
label define fr06a_hhmumr_lbl 092 `"92"', add
label define fr06a_hhmumr_lbl 093 `"93"', add
label define fr06a_hhmumr_lbl 094 `"94"', add
label define fr06a_hhmumr_lbl 095 `"95"', add
label define fr06a_hhmumr_lbl 096 `"96"', add
label define fr06a_hhmumr_lbl 097 `"97"', add
label define fr06a_hhmumr_lbl 098 `"98"', add
label define fr06a_hhmumr_lbl 099 `"99"', add
label define fr06a_hhmumr_lbl 998 `"Unknown"', add
label define fr06a_hhmumr_lbl 999 `"NIU (not in universe)"', add
label values fr06a_hhmumr fr06a_hhmumr_lbl

label define fr06a_buildyr_lbl 11 `"Before 1949"'
label define fr06a_buildyr_lbl 12 `"From 1949 to 1974"', add
label define fr06a_buildyr_lbl 13 `"From 1975 to 1981"', add
label define fr06a_buildyr_lbl 14 `"From 1982 to 1989"', add
label define fr06a_buildyr_lbl 15 `"From 1990 to 1998"', add
label define fr06a_buildyr_lbl 16 `"From 1999 to 2003"', add
label define fr06a_buildyr_lbl 17 `"Since 2004"', add
label define fr06a_buildyr_lbl 18 `"Building under construction and inhabited"', add
label define fr06a_buildyr_lbl 99 `"NIU (not in universe)"', add
label values fr06a_buildyr fr06a_buildyr_lbl

label define fr06a_elevator_lbl 1 `"With elevator"'
label define fr06a_elevator_lbl 2 `"No elevator"', add
label define fr06a_elevator_lbl 9 `"NIU (not in universe)"', add
label values fr06a_elevator fr06a_elevator_lbl

label define fr06a_shower_lbl 1 `"With bathtub or shower"'
label define fr06a_shower_lbl 2 `"Neither bathtub nor shower"', add
label define fr06a_shower_lbl 8 `"Ordinary dwelling, metropolitan France"', add
label define fr06a_shower_lbl 9 `"NIU (not in universe)"', add
label values fr06a_shower fr06a_shower_lbl

label define fr06a_buildapp_lbl 1 `"Make-shift housing"'
label define fr06a_buildapp_lbl 2 `"Traditional hut/shack"', add
label define fr06a_buildapp_lbl 3 `"Wood house or building"', add
label define fr06a_buildapp_lbl 4 `"Houses or buildings of durable/permanent materials"', add
label define fr06a_buildapp_lbl 8 `"Ordinary dwelling, metropolitan France"', add
label define fr06a_buildapp_lbl 9 `"NIU (not in universe)"', add
label values fr06a_buildapp fr06a_buildapp_lbl

label define fr06a_dwellcat_lbl 1 `"Principal residences"'
label define fr06a_dwellcat_lbl 9 `"NIU (not in universe)"', add
label values fr06a_dwellcat fr06a_dwellcat_lbl

label define fr06a_popcat_lbl 0 `"Household population"'
label define fr06a_popcat_lbl 1 `"Communal population"', add
label define fr06a_popcat_lbl 2 `"Population of mobile dwellings, the homeless, people living on boats"', add
label values fr06a_popcat fr06a_popcat_lbl

label define fr06a_heating_lbl 1 `"Presence of heating method"'
label define fr06a_heating_lbl 2 `"No method of heating"', add
label define fr06a_heating_lbl 8 `"Ordinary dwelling, metropolitan France"', add
label define fr06a_heating_lbl 9 `"NIU (not in universe)"', add
label values fr06a_heating fr06a_heating_lbl

label define fr06a_centheat_lbl 1 `"Collective central heat (including urban heat)"'
label define fr06a_centheat_lbl 2 `"Individual central heat, dwelling has own boiler"', add
label define fr06a_centheat_lbl 3 `"All electric heat"', add
label define fr06a_centheat_lbl 4 `"Other method of heat"', add
label define fr06a_centheat_lbl 8 `"Ordinary dwelling, overseas departments"', add
label define fr06a_centheat_lbl 9 `"NIU (not in universe)"', add
label values fr06a_centheat fr06a_centheat_lbl

label define fr06a_solrheat_lbl 1 `"Has solar water heater"'
label define fr06a_solrheat_lbl 2 `"No solar water heater"', add
label define fr06a_solrheat_lbl 8 `"Ordinary dwelling, metropolitan France"', add
label define fr06a_solrheat_lbl 9 `"NIU (not in universe)"', add
label values fr06a_solrheat fr06a_solrheat_lbl

label define fr06a_aircon_lbl 1 `"With air-conditioned room"'
label define fr06a_aircon_lbl 2 `"No air-conditioned room"', add
label define fr06a_aircon_lbl 8 `"Ordinary dwelling, metropolitan France"', add
label define fr06a_aircon_lbl 9 `"NIU (not in universe)"', add
label values fr06a_aircon fr06a_aircon_lbl

label define fr06a_fuelheat_lbl 1 `"Urban heat"'
label define fr06a_fuelheat_lbl 2 `"Town or network heat"', add
label define fr06a_fuelheat_lbl 3 `"Fuel oil"', add
label define fr06a_fuelheat_lbl 4 `"Electricity"', add
label define fr06a_fuelheat_lbl 5 `"Gas from bottles or a tank"', add
label define fr06a_fuelheat_lbl 6 `"Other"', add
label define fr06a_fuelheat_lbl 8 `"Ordinary dwelling, overseas departments"', add
label define fr06a_fuelheat_lbl 9 `"NIU (not in universe)"', add
label values fr06a_fuelheat fr06a_fuelheat_lbl

label define fr06a_motobike_lbl 0 `"No motorized two-wheeled vehicles in the household"'
label define fr06a_motobike_lbl 1 `"Just one motorized two-wheeled vehicle"', add
label define fr06a_motobike_lbl 2 `"Two motorized two-wheeled vehicles"', add
label define fr06a_motobike_lbl 3 `"Three or more motorized two-wheeled vehicles"', add
label define fr06a_motobike_lbl 8 `"Ordinary dwelling, metropolitan France"', add
label define fr06a_motobike_lbl 9 `"NIU (not in universe)"', add
label values fr06a_motobike fr06a_motobike_lbl

label define fr06a_water_lbl 1 `"Cold water only"'
label define fr06a_water_lbl 2 `"Hot and cold water"', add
label define fr06a_water_lbl 3 `"No source inside dwelling"', add
label define fr06a_water_lbl 8 `"Ordinary dwelling, metropolitan France"', add
label define fr06a_water_lbl 9 `"NIU (not in universe)"', add
label values fr06a_water fr06a_water_lbl

label define fr06a_sewage_lbl 1 `"Connected to sewer system"'
label define fr06a_sewage_lbl 2 `"Connected to septic tank"', add
label define fr06a_sewage_lbl 3 `"Connected to cesspool"', add
label define fr06a_sewage_lbl 4 `"Wastewater evacuated directly to ground"', add
label define fr06a_sewage_lbl 8 `"Ordinary dwelling, metropolitan France"', add
label define fr06a_sewage_lbl 9 `"NIU (not in universe)"', add
label values fr06a_sewage fr06a_sewage_lbl

label define fr06a_electric_lbl 1 `"Has electricity"'
label define fr06a_electric_lbl 2 `"No electricity"', add
label define fr06a_electric_lbl 8 `"Ordinary dwelling, metropolitan France"', add
label define fr06a_electric_lbl 9 `"NIU (not in universe)"', add
label values fr06a_electric fr06a_electric_lbl

label define fr06a_parking_lbl 1 `"With parking place"'
label define fr06a_parking_lbl 2 `"Without parking place"', add
label define fr06a_parking_lbl 9 `"NIU (not in universe)"', add
label values fr06a_parking fr06a_parking_lbl

label define fr06a_hlm_lbl 1 `"Dwelling belongs to HLM agency with no isolates"'
label define fr06a_hlm_lbl 2 `"Dwelling does not belong to HLM agency"', add
label define fr06a_hlm_lbl 9 `"NIU (not in universe)"', add
label values fr06a_hlm fr06a_hlm_lbl

label define fr06a_numfams_lbl 0 `"0"'
label define fr06a_numfams_lbl 1 `"1"', add
label define fr06a_numfams_lbl 2 `"2"', add
label define fr06a_numfams_lbl 9 `"NIU (not in universe)"', add
label values fr06a_numfams fr06a_numfams_lbl

label define fr06a_rooms_lbl 01 `"1"'
label define fr06a_rooms_lbl 02 `"2"', add
label define fr06a_rooms_lbl 03 `"3"', add
label define fr06a_rooms_lbl 04 `"4"', add
label define fr06a_rooms_lbl 05 `"5"', add
label define fr06a_rooms_lbl 06 `"6"', add
label define fr06a_rooms_lbl 07 `"7"', add
label define fr06a_rooms_lbl 08 `"8"', add
label define fr06a_rooms_lbl 09 `"9"', add
label define fr06a_rooms_lbl 10 `"10"', add
label define fr06a_rooms_lbl 11 `"11"', add
label define fr06a_rooms_lbl 12 `"12"', add
label define fr06a_rooms_lbl 13 `"13"', add
label define fr06a_rooms_lbl 14 `"14"', add
label define fr06a_rooms_lbl 15 `"15"', add
label define fr06a_rooms_lbl 16 `"16"', add
label define fr06a_rooms_lbl 17 `"17"', add
label define fr06a_rooms_lbl 18 `"18"', add
label define fr06a_rooms_lbl 19 `"19"', add
label define fr06a_rooms_lbl 20 `"20+"', add
label define fr06a_rooms_lbl 99 `"NIU (not in universe)"', add
label values fr06a_rooms fr06a_rooms_lbl

label define fr06a_persons_lbl 1 `"1"'
label define fr06a_persons_lbl 2 `"2"', add
label define fr06a_persons_lbl 3 `"3"', add
label define fr06a_persons_lbl 4 `"4"', add
label define fr06a_persons_lbl 5 `"5"', add
label define fr06a_persons_lbl 6 `"6+"', add
label define fr06a_persons_lbl 9 `"NIU (not in universe)"', add
label values fr06a_persons fr06a_persons_lbl

label define fr06a_bathing_lbl 0 `"Neither bathtub or shower"'
label define fr06a_bathing_lbl 1 `"Bathtub or shower outside of room for private use"', add
label define fr06a_bathing_lbl 2 `"Bathroom(s) (with shower or bathtub)"', add
label define fr06a_bathing_lbl 8 `"Ordinary dwelling, overseas departments"', add
label define fr06a_bathing_lbl 9 `"NIU (not in universe)"', add
label values fr06a_bathing fr06a_bathing_lbl

label define fr06a_bathing2_lbl 11 `"Has bath or shower and toilet inside"'
label define fr06a_bathing2_lbl 12 `"Has bathtub or shower but no toilet inside"', add
label define fr06a_bathing2_lbl 21 `"No bathtub or shower but with toilet inside"', add
label define fr06a_bathing2_lbl 22 `"No bathtub, shower, or toilet inside"', add
label define fr06a_bathing2_lbl 98 `"Ordinary dwelling, metropolitan France"', add
label define fr06a_bathing2_lbl 99 `"NIU (not in universe)"', add
label values fr06a_bathing2 fr06a_bathing2_lbl

label define fr06a_famstr_lbl 11 `"Person living alone: male"'
label define fr06a_famstr_lbl 12 `"Person living alone: female"', add
label define fr06a_famstr_lbl 21 `"Principal family has a single parent with no unrelated persons: man with child/children"', add
label define fr06a_famstr_lbl 22 `"Principal family has a single parent with no unrelated persons: woman with child/children"', add
label define fr06a_famstr_lbl 30 `"Principal family is a couple with no unrelated persons: no children"', add
label define fr06a_famstr_lbl 31 `"Principal family is a couple with no unrelated persons: one child"', add
label define fr06a_famstr_lbl 32 `"Principal family is a couple with no unrelated persons: two children"', add
label define fr06a_famstr_lbl 33 `"Principal family is a couple with no unrelated persons: three children"', add
label define fr06a_famstr_lbl 34 `"Principal family is a couple with no unrelated persons: four or more children"', add
label define fr06a_famstr_lbl 40 `"Principal family has a single parent with unrelated person(s)"', add
label define fr06a_famstr_lbl 51 `"Principal family is a childless couple with unrelated person(s): all either ascendants or descendants"', add
label define fr06a_famstr_lbl 52 `"Principal family is a childless couple with unrelated person(s)"', add
label define fr06a_famstr_lbl 53 `"Principal family is a couple with children and unrelated person(s): all either ascendants or descendants"', add
label define fr06a_famstr_lbl 54 `"Principal family is a couple with children and unrelated person(s)"', add
label define fr06a_famstr_lbl 61 `"Two families with or without unrelated person(s); two couples with or without children"', add
label define fr06a_famstr_lbl 62 `"Two families with or without unrelated person(s); other cases"', add
label define fr06a_famstr_lbl 70 `"Other household without family"', add
label define fr06a_famstr_lbl 99 `"NIU (not in universe)"', add
label values fr06a_famstr fr06a_famstr_lbl

label define fr06a_dwarea_lbl 1 `"Fewer than 25 square meters"'
label define fr06a_dwarea_lbl 2 `"From 25 to fewer than 40 square meters"', add
label define fr06a_dwarea_lbl 3 `"From 40 to fewer than 70 square meters"', add
label define fr06a_dwarea_lbl 4 `"From 70 to fewer than 100 square meters"', add
label define fr06a_dwarea_lbl 5 `"From 100 to fewer than 150 square meters"', add
label define fr06a_dwarea_lbl 6 `"150 square meters or more"', add
label define fr06a_dwarea_lbl 9 `"NIU (not in universe)"', add
label values fr06a_dwarea fr06a_dwarea_lbl

label define fr06a_typconst_lbl 1 `"Residential dwelling with a single dwelling"'
label define fr06a_typconst_lbl 2 `"Residential dwelling with a single semi-detached dwelling or disposed in any other way"', add
label define fr06a_typconst_lbl 3 `"Residential dwelling with two dwellings or more"', add
label define fr06a_typconst_lbl 4 `"Building used for other than lodging"', add
label define fr06a_typconst_lbl 5 `"Temporary building"', add
label define fr06a_typconst_lbl 9 `"NIU (not in universe)"', add
label values fr06a_typconst fr06a_typconst_lbl

label define fr06a_dwelltyp_lbl 1 `"House"'
label define fr06a_dwelltyp_lbl 2 `"Apartment"', add
label define fr06a_dwelltyp_lbl 3 `"Retirement home run by the French public housing authority"', add
label define fr06a_dwelltyp_lbl 4 `"Hotel room"', add
label define fr06a_dwelltyp_lbl 5 `"Makeshift housing"', add
label define fr06a_dwelltyp_lbl 6 `"Independent room (with its own entrance)"', add
label define fr06a_dwelltyp_lbl 9 `"NIU (not in universe)"', add
label values fr06a_dwelltyp fr06a_dwelltyp_lbl

label define fr06a_hhtyped_lbl 011 `"Male living alone: actively employed"'
label define fr06a_hhtyped_lbl 012 `"Male living alone: other"', add
label define fr06a_hhtyped_lbl 021 `"Female living alone: actively employed"', add
label define fr06a_hhtyped_lbl 022 `"Female living alone: other"', add
label define fr06a_hhtyped_lbl 030 `"Household of several persons without family"', add
label define fr06a_hhtyped_lbl 101 `"Single-parent principal family: male actively employed + one child"', add
label define fr06a_hhtyped_lbl 102 `"Single-parent principal family: male actively employed + two children"', add
label define fr06a_hhtyped_lbl 103 `"Single-parent principal family: male actively employed + three children or more"', add
label define fr06a_hhtyped_lbl 111 `"Single-parent principal family: male, other + one child"', add
label define fr06a_hhtyped_lbl 112 `"Single-parent principal family: male, other  + two children"', add
label define fr06a_hhtyped_lbl 113 `"Single-parent principal family: male, other  + three children or more"', add
label define fr06a_hhtyped_lbl 201 `"Single-parent principal family: female actively employed + one child"', add
label define fr06a_hhtyped_lbl 202 `"Single-parent principal family: female actively employed + two children"', add
label define fr06a_hhtyped_lbl 203 `"Single-parent principal family: female actively employed + three children or more"', add
label define fr06a_hhtyped_lbl 211 `"Single-parent principal family: female, other + one child"', add
label define fr06a_hhtyped_lbl 212 `"Single-parent principal family: female, other + two children"', add
label define fr06a_hhtyped_lbl 213 `"Single-parent principal family: female, other+ three children or more"', add
label define fr06a_hhtyped_lbl 300 `"Principal family is a couple without children: man (younger than 40) and woman actively employed"', add
label define fr06a_hhtyped_lbl 301 `"Principal family is a couple with one child: man (younger than 40) and woman actively employed"', add
label define fr06a_hhtyped_lbl 302 `"Principal family is a couple with two children: man (younger than 40) and woman actively employed"', add
label define fr06a_hhtyped_lbl 303 `"Principal family is a couple with three children: man (younger than 40) and woman actively employed"', add
label define fr06a_hhtyped_lbl 310 `"Principal family is a couple without children: man (40 or older) and woman actively employed"', add
label define fr06a_hhtyped_lbl 311 `"Principal family is a couple with one child: man (40 or older) and woman actively employed"', add
label define fr06a_hhtyped_lbl 312 `"Principal family is a couple with two children: man (40 or older) and woman actively employed"', add
label define fr06a_hhtyped_lbl 313 `"Principal family is a couple with three children: man (40 or older) and woman actively employed"', add
label define fr06a_hhtyped_lbl 400 `"Principal family is a couple without children: man (younger than 40) actively employed and woman other"', add
label define fr06a_hhtyped_lbl 401 `"Principal family is a couple with one child: man (younger than 40) actively employed and woman other"', add
label define fr06a_hhtyped_lbl 402 `"Principal family is a couple with two children: man (younger than 40) actively employed and woman other"', add
label define fr06a_hhtyped_lbl 403 `"Principal family is a couple with three or more children: man (younger than 40) actively employed and woman other"', add
label define fr06a_hhtyped_lbl 410 `"Principal family is a couple without children: man (40 or older) actively employed and woman other"', add
label define fr06a_hhtyped_lbl 411 `"Principal family is a couple with one child: man (40 or older) actively employed and woman other"', add
label define fr06a_hhtyped_lbl 412 `"Principal family is a couple with two children: man (40 or older) actively employed and woman other"', add
label define fr06a_hhtyped_lbl 413 `"Principal family is a couple with three or more children: man (40 or older) actively employed and woman other"', add
label define fr06a_hhtyped_lbl 500 `"Principal family is a childless couple: woman actively employed and man other"', add
label define fr06a_hhtyped_lbl 501 `"Principal family is a couple with one child: woman actively employed and man other"', add
label define fr06a_hhtyped_lbl 502 `"Principal family is a couple with two children: woman actively employed and man other"', add
label define fr06a_hhtyped_lbl 503 `"Principal family is a couple with three or more children: woman actively employed and man other"', add
label define fr06a_hhtyped_lbl 600 `"Principal family is a childless couple: man and woman other"', add
label define fr06a_hhtyped_lbl 601 `"Principal family is a couple with one child: man and woman other"', add
label define fr06a_hhtyped_lbl 602 `"Principal family is a couple with two children: man and woman other"', add
label define fr06a_hhtyped_lbl 603 `"Principal family is a couple with three or more children: man and woman other"', add
label define fr06a_hhtyped_lbl 999 `"NIU (not in universe)"', add
label values fr06a_hhtyped fr06a_hhtyped_lbl

label define fr06a_hhtype_lbl 11 `"Man living alone"'
label define fr06a_hhtype_lbl 12 `"Woman living alone"', add
label define fr06a_hhtype_lbl 20 `"Several persons without family"', add
label define fr06a_hhtype_lbl 31 `"Single-parent principal family composed of a man with child/children"', add
label define fr06a_hhtype_lbl 32 `"Single-parent principal family composed of a woman with child/children"', add
label define fr06a_hhtype_lbl 41 `"Principal family composed of a couple where both the man and woman have <actively employed> status"', add
label define fr06a_hhtype_lbl 42 `"Principal family composed of a couple in which only the man has <actively employed> status"', add
label define fr06a_hhtype_lbl 43 `"Principal family composed of a couple in which only the woman has <actively employed> status"', add
label define fr06a_hhtype_lbl 44 `"Principal family composed of a couple where neither the man nor the woman has <actively employed> status"', add
label define fr06a_hhtype_lbl 99 `"NIU (not in universe)"', add
label values fr06a_hhtype fr06a_hhtype_lbl

label define fr06a_urban_lbl 0 `"Rural community"'
label define fr06a_urban_lbl 1 `"Urban unit"', add
label values fr06a_urban fr06a_urban_lbl

label define fr06a_autos_lbl 0 `"No cars"'
label define fr06a_autos_lbl 1 `"One car only"', add
label define fr06a_autos_lbl 2 `"Two cars"', add
label define fr06a_autos_lbl 3 `"Three or more cars"', add
label define fr06a_autos_lbl 9 `"NIU (not in universe)"', add
label values fr06a_autos fr06a_autos_lbl

label define fr06a_toilet_lbl 1 `"Has toilet inside dwelling"'
label define fr06a_toilet_lbl 2 `"No toilet inside dwelling"', add
label define fr06a_toilet_lbl 8 `"Ordinary dwelling, metropolitan France"', add
label define fr06a_toilet_lbl 9 `"NIU (not in universe)"', add
label values fr06a_toilet fr06a_toilet_lbl

label define fr06a_pernum_lbl 00 `"Household record"'
label define fr06a_pernum_lbl 01 `"1"', add
label define fr06a_pernum_lbl 02 `"2"', add
label define fr06a_pernum_lbl 03 `"3"', add
label define fr06a_pernum_lbl 04 `"4"', add
label define fr06a_pernum_lbl 05 `"5"', add
label define fr06a_pernum_lbl 06 `"6"', add
label define fr06a_pernum_lbl 07 `"7"', add
label define fr06a_pernum_lbl 08 `"8"', add
label define fr06a_pernum_lbl 09 `"9"', add
label define fr06a_pernum_lbl 10 `"10"', add
label define fr06a_pernum_lbl 11 `"11"', add
label define fr06a_pernum_lbl 12 `"12"', add
label define fr06a_pernum_lbl 13 `"13"', add
label define fr06a_pernum_lbl 14 `"14"', add
label define fr06a_pernum_lbl 15 `"15"', add
label define fr06a_pernum_lbl 16 `"16"', add
label define fr06a_pernum_lbl 17 `"17"', add
label define fr06a_pernum_lbl 18 `"18"', add
label define fr06a_pernum_lbl 19 `"19"', add
label define fr06a_pernum_lbl 20 `"20"', add
label define fr06a_pernum_lbl 21 `"21"', add
label define fr06a_pernum_lbl 22 `"22"', add
label define fr06a_pernum_lbl 23 `"23"', add
label define fr06a_pernum_lbl 24 `"24"', add
label define fr06a_pernum_lbl 25 `"25"', add
label define fr06a_pernum_lbl 26 `"26"', add
label define fr06a_pernum_lbl 27 `"27"', add
label define fr06a_pernum_lbl 28 `"28"', add
label define fr06a_pernum_lbl 29 `"29"', add
label define fr06a_pernum_lbl 30 `"30"', add
label values fr06a_pernum fr06a_pernum_lbl

label define fr06a_yrmove_lbl 1900 `"1900"'
label define fr06a_yrmove_lbl 1901 `"1901"', add
label define fr06a_yrmove_lbl 1902 `"1902"', add
label define fr06a_yrmove_lbl 1903 `"1903"', add
label define fr06a_yrmove_lbl 1904 `"1904"', add
label define fr06a_yrmove_lbl 1905 `"1905"', add
label define fr06a_yrmove_lbl 1906 `"1906"', add
label define fr06a_yrmove_lbl 1907 `"1907"', add
label define fr06a_yrmove_lbl 1908 `"1908"', add
label define fr06a_yrmove_lbl 1909 `"1909"', add
label define fr06a_yrmove_lbl 1910 `"1910"', add
label define fr06a_yrmove_lbl 1911 `"1911"', add
label define fr06a_yrmove_lbl 1912 `"1912"', add
label define fr06a_yrmove_lbl 1913 `"1913"', add
label define fr06a_yrmove_lbl 1914 `"1914"', add
label define fr06a_yrmove_lbl 1915 `"1915"', add
label define fr06a_yrmove_lbl 1916 `"1916"', add
label define fr06a_yrmove_lbl 1917 `"1917"', add
label define fr06a_yrmove_lbl 1918 `"1918"', add
label define fr06a_yrmove_lbl 1919 `"1919"', add
label define fr06a_yrmove_lbl 1920 `"1920"', add
label define fr06a_yrmove_lbl 1921 `"1921"', add
label define fr06a_yrmove_lbl 1922 `"1922"', add
label define fr06a_yrmove_lbl 1923 `"1923"', add
label define fr06a_yrmove_lbl 1924 `"1924"', add
label define fr06a_yrmove_lbl 1925 `"1925"', add
label define fr06a_yrmove_lbl 1926 `"1926"', add
label define fr06a_yrmove_lbl 1927 `"1927"', add
label define fr06a_yrmove_lbl 1928 `"1928"', add
label define fr06a_yrmove_lbl 1929 `"1929"', add
label define fr06a_yrmove_lbl 1930 `"1930"', add
label define fr06a_yrmove_lbl 1931 `"1931"', add
label define fr06a_yrmove_lbl 1932 `"1932"', add
label define fr06a_yrmove_lbl 1933 `"1933"', add
label define fr06a_yrmove_lbl 1934 `"1934"', add
label define fr06a_yrmove_lbl 1935 `"1935"', add
label define fr06a_yrmove_lbl 1936 `"1936"', add
label define fr06a_yrmove_lbl 1937 `"1937"', add
label define fr06a_yrmove_lbl 1938 `"1938"', add
label define fr06a_yrmove_lbl 1939 `"1939"', add
label define fr06a_yrmove_lbl 1940 `"1940"', add
label define fr06a_yrmove_lbl 1941 `"1941"', add
label define fr06a_yrmove_lbl 1942 `"1942"', add
label define fr06a_yrmove_lbl 1943 `"1943"', add
label define fr06a_yrmove_lbl 1944 `"1944"', add
label define fr06a_yrmove_lbl 1945 `"1945"', add
label define fr06a_yrmove_lbl 1946 `"1946"', add
label define fr06a_yrmove_lbl 1947 `"1947"', add
label define fr06a_yrmove_lbl 1948 `"1948"', add
label define fr06a_yrmove_lbl 1949 `"1949"', add
label define fr06a_yrmove_lbl 1950 `"1950"', add
label define fr06a_yrmove_lbl 1951 `"1951"', add
label define fr06a_yrmove_lbl 1952 `"1952"', add
label define fr06a_yrmove_lbl 1953 `"1953"', add
label define fr06a_yrmove_lbl 1954 `"1954"', add
label define fr06a_yrmove_lbl 1955 `"1955"', add
label define fr06a_yrmove_lbl 1956 `"1956"', add
label define fr06a_yrmove_lbl 1957 `"1957"', add
label define fr06a_yrmove_lbl 1958 `"1958"', add
label define fr06a_yrmove_lbl 1959 `"1959"', add
label define fr06a_yrmove_lbl 1960 `"1960"', add
label define fr06a_yrmove_lbl 1961 `"1961"', add
label define fr06a_yrmove_lbl 1962 `"1962"', add
label define fr06a_yrmove_lbl 1963 `"1963"', add
label define fr06a_yrmove_lbl 1964 `"1964"', add
label define fr06a_yrmove_lbl 1965 `"1965"', add
label define fr06a_yrmove_lbl 1966 `"1966"', add
label define fr06a_yrmove_lbl 1967 `"1967"', add
label define fr06a_yrmove_lbl 1968 `"1968"', add
label define fr06a_yrmove_lbl 1969 `"1969"', add
label define fr06a_yrmove_lbl 1970 `"1970"', add
label define fr06a_yrmove_lbl 1971 `"1971"', add
label define fr06a_yrmove_lbl 1972 `"1972"', add
label define fr06a_yrmove_lbl 1973 `"1973"', add
label define fr06a_yrmove_lbl 1974 `"1974"', add
label define fr06a_yrmove_lbl 1975 `"1975"', add
label define fr06a_yrmove_lbl 1976 `"1976"', add
label define fr06a_yrmove_lbl 1977 `"1977"', add
label define fr06a_yrmove_lbl 1978 `"1978"', add
label define fr06a_yrmove_lbl 1979 `"1979"', add
label define fr06a_yrmove_lbl 1980 `"1980"', add
label define fr06a_yrmove_lbl 1981 `"1981"', add
label define fr06a_yrmove_lbl 1982 `"1982"', add
label define fr06a_yrmove_lbl 1983 `"1983"', add
label define fr06a_yrmove_lbl 1984 `"1984"', add
label define fr06a_yrmove_lbl 1985 `"1985"', add
label define fr06a_yrmove_lbl 1986 `"1986"', add
label define fr06a_yrmove_lbl 1987 `"1987"', add
label define fr06a_yrmove_lbl 1988 `"1988"', add
label define fr06a_yrmove_lbl 1989 `"1989"', add
label define fr06a_yrmove_lbl 1990 `"1990"', add
label define fr06a_yrmove_lbl 1991 `"1991"', add
label define fr06a_yrmove_lbl 1992 `"1992"', add
label define fr06a_yrmove_lbl 1993 `"1993"', add
label define fr06a_yrmove_lbl 1994 `"1994"', add
label define fr06a_yrmove_lbl 1995 `"1995"', add
label define fr06a_yrmove_lbl 1996 `"1996"', add
label define fr06a_yrmove_lbl 1997 `"1997"', add
label define fr06a_yrmove_lbl 1998 `"1998"', add
label define fr06a_yrmove_lbl 1999 `"1999"', add
label define fr06a_yrmove_lbl 2000 `"2000"', add
label define fr06a_yrmove_lbl 2001 `"2001"', add
label define fr06a_yrmove_lbl 2002 `"2002"', add
label define fr06a_yrmove_lbl 2003 `"2003"', add
label define fr06a_yrmove_lbl 2004 `"2004"', add
label define fr06a_yrmove_lbl 2005 `"2005"', add
label define fr06a_yrmove_lbl 2006 `"2006"', add
label define fr06a_yrmove_lbl 2007 `"2007"', add
label define fr06a_yrmove_lbl 2008 `"2008"', add
label define fr06a_yrmove_lbl 9999 `"NIU (not in universe)"', add
label values fr06a_yrmove fr06a_yrmove_lbl

label define fr06a_yrmove2_lbl 02 `"Move-in between 1900 and 1919"'
label define fr06a_yrmove2_lbl 03 `"Move-in between 1900 and 1919"', add
label define fr06a_yrmove2_lbl 04 `"Move-in between 1940 and 1959"', add
label define fr06a_yrmove2_lbl 05 `"Move-in between 1960 and 1969"', add
label define fr06a_yrmove2_lbl 06 `"Move-in between 1970 and 1979"', add
label define fr06a_yrmove2_lbl 07 `"Move-in between 1980 and 1989"', add
label define fr06a_yrmove2_lbl 08 `"Move-in between 1990 and 1999"', add
label define fr06a_yrmove2_lbl 09 `"Move-in after 1999"', add
label define fr06a_yrmove2_lbl 99 `"NIU (not in universe)"', add
label values fr06a_yrmove2 fr06a_yrmove2_lbl

label define fr06a_agecal_lbl 000 `"0 years old (born between January 1 and the census date)"'
label define fr06a_agecal_lbl 001 `"1"', add
label define fr06a_agecal_lbl 002 `"2"', add
label define fr06a_agecal_lbl 003 `"3"', add
label define fr06a_agecal_lbl 004 `"4"', add
label define fr06a_agecal_lbl 005 `"5"', add
label define fr06a_agecal_lbl 006 `"6"', add
label define fr06a_agecal_lbl 007 `"7"', add
label define fr06a_agecal_lbl 008 `"8"', add
label define fr06a_agecal_lbl 009 `"9"', add
label define fr06a_agecal_lbl 010 `"10"', add
label define fr06a_agecal_lbl 011 `"11"', add
label define fr06a_agecal_lbl 012 `"12"', add
label define fr06a_agecal_lbl 013 `"13"', add
label define fr06a_agecal_lbl 014 `"14"', add
label define fr06a_agecal_lbl 015 `"15"', add
label define fr06a_agecal_lbl 016 `"16"', add
label define fr06a_agecal_lbl 017 `"17"', add
label define fr06a_agecal_lbl 018 `"18"', add
label define fr06a_agecal_lbl 019 `"19"', add
label define fr06a_agecal_lbl 020 `"20"', add
label define fr06a_agecal_lbl 021 `"21"', add
label define fr06a_agecal_lbl 022 `"22"', add
label define fr06a_agecal_lbl 023 `"23"', add
label define fr06a_agecal_lbl 024 `"24"', add
label define fr06a_agecal_lbl 025 `"25"', add
label define fr06a_agecal_lbl 026 `"26"', add
label define fr06a_agecal_lbl 027 `"27"', add
label define fr06a_agecal_lbl 028 `"28"', add
label define fr06a_agecal_lbl 029 `"29"', add
label define fr06a_agecal_lbl 030 `"30"', add
label define fr06a_agecal_lbl 031 `"31"', add
label define fr06a_agecal_lbl 032 `"32"', add
label define fr06a_agecal_lbl 033 `"33"', add
label define fr06a_agecal_lbl 034 `"34"', add
label define fr06a_agecal_lbl 035 `"35"', add
label define fr06a_agecal_lbl 036 `"36"', add
label define fr06a_agecal_lbl 037 `"37"', add
label define fr06a_agecal_lbl 038 `"38"', add
label define fr06a_agecal_lbl 039 `"39"', add
label define fr06a_agecal_lbl 040 `"40"', add
label define fr06a_agecal_lbl 041 `"41"', add
label define fr06a_agecal_lbl 042 `"42"', add
label define fr06a_agecal_lbl 043 `"43"', add
label define fr06a_agecal_lbl 044 `"44"', add
label define fr06a_agecal_lbl 045 `"45"', add
label define fr06a_agecal_lbl 046 `"46"', add
label define fr06a_agecal_lbl 047 `"47"', add
label define fr06a_agecal_lbl 048 `"48"', add
label define fr06a_agecal_lbl 049 `"49"', add
label define fr06a_agecal_lbl 050 `"50"', add
label define fr06a_agecal_lbl 051 `"51"', add
label define fr06a_agecal_lbl 052 `"52"', add
label define fr06a_agecal_lbl 053 `"53"', add
label define fr06a_agecal_lbl 054 `"54"', add
label define fr06a_agecal_lbl 055 `"55"', add
label define fr06a_agecal_lbl 056 `"56"', add
label define fr06a_agecal_lbl 057 `"57"', add
label define fr06a_agecal_lbl 058 `"58"', add
label define fr06a_agecal_lbl 059 `"59"', add
label define fr06a_agecal_lbl 060 `"60"', add
label define fr06a_agecal_lbl 061 `"61"', add
label define fr06a_agecal_lbl 062 `"62"', add
label define fr06a_agecal_lbl 063 `"63"', add
label define fr06a_agecal_lbl 064 `"64"', add
label define fr06a_agecal_lbl 065 `"65"', add
label define fr06a_agecal_lbl 066 `"66"', add
label define fr06a_agecal_lbl 067 `"67"', add
label define fr06a_agecal_lbl 068 `"68"', add
label define fr06a_agecal_lbl 069 `"69"', add
label define fr06a_agecal_lbl 070 `"70"', add
label define fr06a_agecal_lbl 071 `"71"', add
label define fr06a_agecal_lbl 072 `"72"', add
label define fr06a_agecal_lbl 073 `"73"', add
label define fr06a_agecal_lbl 074 `"74"', add
label define fr06a_agecal_lbl 075 `"75"', add
label define fr06a_agecal_lbl 076 `"76"', add
label define fr06a_agecal_lbl 077 `"77"', add
label define fr06a_agecal_lbl 078 `"78"', add
label define fr06a_agecal_lbl 079 `"79"', add
label define fr06a_agecal_lbl 080 `"80"', add
label define fr06a_agecal_lbl 081 `"81"', add
label define fr06a_agecal_lbl 082 `"82"', add
label define fr06a_agecal_lbl 083 `"83"', add
label define fr06a_agecal_lbl 084 `"84"', add
label define fr06a_agecal_lbl 085 `"85"', add
label define fr06a_agecal_lbl 086 `"86"', add
label define fr06a_agecal_lbl 087 `"87"', add
label define fr06a_agecal_lbl 088 `"88"', add
label define fr06a_agecal_lbl 089 `"89"', add
label define fr06a_agecal_lbl 090 `"90"', add
label define fr06a_agecal_lbl 091 `"91"', add
label define fr06a_agecal_lbl 092 `"92"', add
label define fr06a_agecal_lbl 093 `"93"', add
label define fr06a_agecal_lbl 094 `"94"', add
label define fr06a_agecal_lbl 095 `"95"', add
label define fr06a_agecal_lbl 096 `"96"', add
label define fr06a_agecal_lbl 097 `"97"', add
label define fr06a_agecal_lbl 098 `"98"', add
label define fr06a_agecal_lbl 099 `"99"', add
label define fr06a_agecal_lbl 100 `"100"', add
label define fr06a_agecal_lbl 101 `"101"', add
label define fr06a_agecal_lbl 102 `"102"', add
label define fr06a_agecal_lbl 103 `"103"', add
label define fr06a_agecal_lbl 104 `"104"', add
label define fr06a_agecal_lbl 105 `"105"', add
label define fr06a_agecal_lbl 106 `"106"', add
label define fr06a_agecal_lbl 107 `"107"', add
label define fr06a_agecal_lbl 108 `"108"', add
label define fr06a_agecal_lbl 109 `"109"', add
label define fr06a_agecal_lbl 110 `"110"', add
label define fr06a_agecal_lbl 111 `"111"', add
label define fr06a_agecal_lbl 112 `"112"', add
label define fr06a_agecal_lbl 113 `"113"', add
label define fr06a_agecal_lbl 114 `"114"', add
label define fr06a_agecal_lbl 115 `"115"', add
label define fr06a_agecal_lbl 116 `"116"', add
label define fr06a_agecal_lbl 117 `"117"', add
label define fr06a_agecal_lbl 118 `"118"', add
label define fr06a_agecal_lbl 119 `"119"', add
label define fr06a_agecal_lbl 120 `"120"', add
label values fr06a_agecal fr06a_agecal_lbl

label define fr06a_age2_lbl 02 `"Less than 3 years old"'
label define fr06a_age2_lbl 05 `"3 to 5 years old"', add
label define fr06a_age2_lbl 10 `"6 to 10 years old"', add
label define fr06a_age2_lbl 14 `"11 to 14 years old"', add
label define fr06a_age2_lbl 17 `"15 to 17 years old"', add
label define fr06a_age2_lbl 19 `"18 to 19 years old"', add
label define fr06a_age2_lbl 24 `"20 to 24 years old"', add
label define fr06a_age2_lbl 29 `"25 to 29 years old"', add
label define fr06a_age2_lbl 39 `"30 to 39 years old"', add
label define fr06a_age2_lbl 54 `"40 to 54 years old"', add
label define fr06a_age2_lbl 64 `"55 to 64 years old"', add
label define fr06a_age2_lbl 79 `"65 to 79 years old"', add
label define fr06a_age2_lbl 80 `"80 or more"', add
label values fr06a_age2 fr06a_age2_lbl

label define fr06a_age_lbl 000 `"Less than one year old"'
label define fr06a_age_lbl 001 `"1"', add
label define fr06a_age_lbl 002 `"2"', add
label define fr06a_age_lbl 003 `"3"', add
label define fr06a_age_lbl 004 `"4"', add
label define fr06a_age_lbl 005 `"5"', add
label define fr06a_age_lbl 006 `"6"', add
label define fr06a_age_lbl 007 `"7"', add
label define fr06a_age_lbl 008 `"8"', add
label define fr06a_age_lbl 009 `"9"', add
label define fr06a_age_lbl 010 `"10"', add
label define fr06a_age_lbl 011 `"11"', add
label define fr06a_age_lbl 012 `"12"', add
label define fr06a_age_lbl 013 `"13"', add
label define fr06a_age_lbl 014 `"14"', add
label define fr06a_age_lbl 015 `"15"', add
label define fr06a_age_lbl 016 `"16"', add
label define fr06a_age_lbl 017 `"17"', add
label define fr06a_age_lbl 018 `"18"', add
label define fr06a_age_lbl 019 `"19"', add
label define fr06a_age_lbl 020 `"20"', add
label define fr06a_age_lbl 021 `"21"', add
label define fr06a_age_lbl 022 `"22"', add
label define fr06a_age_lbl 023 `"23"', add
label define fr06a_age_lbl 024 `"24"', add
label define fr06a_age_lbl 025 `"25"', add
label define fr06a_age_lbl 026 `"26"', add
label define fr06a_age_lbl 027 `"27"', add
label define fr06a_age_lbl 028 `"28"', add
label define fr06a_age_lbl 029 `"29"', add
label define fr06a_age_lbl 030 `"30"', add
label define fr06a_age_lbl 031 `"31"', add
label define fr06a_age_lbl 032 `"32"', add
label define fr06a_age_lbl 033 `"33"', add
label define fr06a_age_lbl 034 `"34"', add
label define fr06a_age_lbl 035 `"35"', add
label define fr06a_age_lbl 036 `"36"', add
label define fr06a_age_lbl 037 `"37"', add
label define fr06a_age_lbl 038 `"38"', add
label define fr06a_age_lbl 039 `"39"', add
label define fr06a_age_lbl 040 `"40"', add
label define fr06a_age_lbl 041 `"41"', add
label define fr06a_age_lbl 042 `"42"', add
label define fr06a_age_lbl 043 `"43"', add
label define fr06a_age_lbl 044 `"44"', add
label define fr06a_age_lbl 045 `"45"', add
label define fr06a_age_lbl 046 `"46"', add
label define fr06a_age_lbl 047 `"47"', add
label define fr06a_age_lbl 048 `"48"', add
label define fr06a_age_lbl 049 `"49"', add
label define fr06a_age_lbl 050 `"50"', add
label define fr06a_age_lbl 051 `"51"', add
label define fr06a_age_lbl 052 `"52"', add
label define fr06a_age_lbl 053 `"53"', add
label define fr06a_age_lbl 054 `"54"', add
label define fr06a_age_lbl 055 `"55"', add
label define fr06a_age_lbl 056 `"56"', add
label define fr06a_age_lbl 057 `"57"', add
label define fr06a_age_lbl 058 `"58"', add
label define fr06a_age_lbl 059 `"59"', add
label define fr06a_age_lbl 060 `"60"', add
label define fr06a_age_lbl 061 `"61"', add
label define fr06a_age_lbl 062 `"62"', add
label define fr06a_age_lbl 063 `"63"', add
label define fr06a_age_lbl 064 `"64"', add
label define fr06a_age_lbl 065 `"65"', add
label define fr06a_age_lbl 066 `"66"', add
label define fr06a_age_lbl 067 `"67"', add
label define fr06a_age_lbl 068 `"68"', add
label define fr06a_age_lbl 069 `"69"', add
label define fr06a_age_lbl 070 `"70"', add
label define fr06a_age_lbl 071 `"71"', add
label define fr06a_age_lbl 072 `"72"', add
label define fr06a_age_lbl 073 `"73"', add
label define fr06a_age_lbl 074 `"74"', add
label define fr06a_age_lbl 075 `"75"', add
label define fr06a_age_lbl 076 `"76"', add
label define fr06a_age_lbl 077 `"77"', add
label define fr06a_age_lbl 078 `"78"', add
label define fr06a_age_lbl 079 `"79"', add
label define fr06a_age_lbl 080 `"80"', add
label define fr06a_age_lbl 081 `"81"', add
label define fr06a_age_lbl 082 `"82"', add
label define fr06a_age_lbl 083 `"83"', add
label define fr06a_age_lbl 084 `"84"', add
label define fr06a_age_lbl 085 `"85"', add
label define fr06a_age_lbl 086 `"86"', add
label define fr06a_age_lbl 087 `"87"', add
label define fr06a_age_lbl 088 `"88"', add
label define fr06a_age_lbl 089 `"89"', add
label define fr06a_age_lbl 090 `"90"', add
label define fr06a_age_lbl 091 `"91"', add
label define fr06a_age_lbl 092 `"92"', add
label define fr06a_age_lbl 093 `"93"', add
label define fr06a_age_lbl 094 `"94"', add
label define fr06a_age_lbl 095 `"95"', add
label define fr06a_age_lbl 096 `"96"', add
label define fr06a_age_lbl 097 `"97"', add
label define fr06a_age_lbl 098 `"98"', add
label define fr06a_age_lbl 099 `"99"', add
label define fr06a_age_lbl 100 `"100"', add
label define fr06a_age_lbl 101 `"101"', add
label define fr06a_age_lbl 102 `"102"', add
label define fr06a_age_lbl 103 `"103"', add
label define fr06a_age_lbl 104 `"104"', add
label define fr06a_age_lbl 105 `"105"', add
label define fr06a_age_lbl 106 `"106"', add
label define fr06a_age_lbl 107 `"107"', add
label define fr06a_age_lbl 108 `"108"', add
label define fr06a_age_lbl 109 `"109"', add
label define fr06a_age_lbl 110 `"110"', add
label define fr06a_age_lbl 111 `"111"', add
label define fr06a_age_lbl 112 `"112"', add
label define fr06a_age_lbl 113 `"113"', add
label define fr06a_age_lbl 114 `"114"', add
label define fr06a_age_lbl 115 `"115"', add
label define fr06a_age_lbl 116 `"116"', add
label define fr06a_age_lbl 117 `"117"', add
label define fr06a_age_lbl 118 `"118"', add
label define fr06a_age_lbl 119 `"119"', add
label define fr06a_age_lbl 120 `"120"', add
label values fr06a_age fr06a_age_lbl

label define fr06a_age5_lbl 000 `"0-4"'
label define fr06a_age5_lbl 005 `"5-9"', add
label define fr06a_age5_lbl 010 `"10-14"', add
label define fr06a_age5_lbl 015 `"15-19"', add
label define fr06a_age5_lbl 020 `"20-24"', add
label define fr06a_age5_lbl 025 `"25-29"', add
label define fr06a_age5_lbl 030 `"30-34"', add
label define fr06a_age5_lbl 035 `"35-39"', add
label define fr06a_age5_lbl 040 `"40-44"', add
label define fr06a_age5_lbl 045 `"45-49"', add
label define fr06a_age5_lbl 050 `"50-54"', add
label define fr06a_age5_lbl 055 `"55-59"', add
label define fr06a_age5_lbl 060 `"60-64"', add
label define fr06a_age5_lbl 065 `"65-69"', add
label define fr06a_age5_lbl 070 `"70-74"', add
label define fr06a_age5_lbl 075 `"75-79"', add
label define fr06a_age5_lbl 080 `"80-84"', add
label define fr06a_age5_lbl 085 `"85-89"', add
label define fr06a_age5_lbl 090 `"90-94"', add
label define fr06a_age5_lbl 095 `"95-99"', add
label define fr06a_age5_lbl 100 `"100-104"', add
label define fr06a_age5_lbl 105 `"105-109"', add
label define fr06a_age5_lbl 110 `"110-114"', add
label define fr06a_age5_lbl 115 `"115-119"', add
label define fr06a_age5_lbl 120 `"120 or older"', add
label values fr06a_age5 fr06a_age5_lbl

label define fr06a_birthyr_lbl 1884 `"1884"'
label define fr06a_birthyr_lbl 1885 `"1885"', add
label define fr06a_birthyr_lbl 1886 `"1886"', add
label define fr06a_birthyr_lbl 1887 `"1887"', add
label define fr06a_birthyr_lbl 1888 `"1888"', add
label define fr06a_birthyr_lbl 1889 `"1889"', add
label define fr06a_birthyr_lbl 1890 `"1890"', add
label define fr06a_birthyr_lbl 1891 `"1891"', add
label define fr06a_birthyr_lbl 1892 `"1892"', add
label define fr06a_birthyr_lbl 1893 `"1893"', add
label define fr06a_birthyr_lbl 1894 `"1894"', add
label define fr06a_birthyr_lbl 1895 `"1895"', add
label define fr06a_birthyr_lbl 1896 `"1896"', add
label define fr06a_birthyr_lbl 1897 `"1897"', add
label define fr06a_birthyr_lbl 1898 `"1898"', add
label define fr06a_birthyr_lbl 1899 `"1899"', add
label define fr06a_birthyr_lbl 1900 `"1900"', add
label define fr06a_birthyr_lbl 1901 `"1901"', add
label define fr06a_birthyr_lbl 1902 `"1902"', add
label define fr06a_birthyr_lbl 1903 `"1903"', add
label define fr06a_birthyr_lbl 1904 `"1904"', add
label define fr06a_birthyr_lbl 1905 `"1905"', add
label define fr06a_birthyr_lbl 1906 `"1906"', add
label define fr06a_birthyr_lbl 1907 `"1907"', add
label define fr06a_birthyr_lbl 1908 `"1908"', add
label define fr06a_birthyr_lbl 1909 `"1909"', add
label define fr06a_birthyr_lbl 1910 `"1910"', add
label define fr06a_birthyr_lbl 1911 `"1911"', add
label define fr06a_birthyr_lbl 1912 `"1912"', add
label define fr06a_birthyr_lbl 1913 `"1913"', add
label define fr06a_birthyr_lbl 1914 `"1914"', add
label define fr06a_birthyr_lbl 1915 `"1915"', add
label define fr06a_birthyr_lbl 1916 `"1916"', add
label define fr06a_birthyr_lbl 1917 `"1917"', add
label define fr06a_birthyr_lbl 1918 `"1918"', add
label define fr06a_birthyr_lbl 1919 `"1919"', add
label define fr06a_birthyr_lbl 1920 `"1920"', add
label define fr06a_birthyr_lbl 1921 `"1921"', add
label define fr06a_birthyr_lbl 1922 `"1922"', add
label define fr06a_birthyr_lbl 1923 `"1923"', add
label define fr06a_birthyr_lbl 1924 `"1924"', add
label define fr06a_birthyr_lbl 1925 `"1925"', add
label define fr06a_birthyr_lbl 1926 `"1926"', add
label define fr06a_birthyr_lbl 1927 `"1927"', add
label define fr06a_birthyr_lbl 1928 `"1928"', add
label define fr06a_birthyr_lbl 1929 `"1929"', add
label define fr06a_birthyr_lbl 1930 `"1930"', add
label define fr06a_birthyr_lbl 1931 `"1931"', add
label define fr06a_birthyr_lbl 1932 `"1932"', add
label define fr06a_birthyr_lbl 1933 `"1933"', add
label define fr06a_birthyr_lbl 1934 `"1934"', add
label define fr06a_birthyr_lbl 1935 `"1935"', add
label define fr06a_birthyr_lbl 1936 `"1936"', add
label define fr06a_birthyr_lbl 1937 `"1937"', add
label define fr06a_birthyr_lbl 1938 `"1938"', add
label define fr06a_birthyr_lbl 1939 `"1939"', add
label define fr06a_birthyr_lbl 1940 `"1940"', add
label define fr06a_birthyr_lbl 1941 `"1941"', add
label define fr06a_birthyr_lbl 1942 `"1942"', add
label define fr06a_birthyr_lbl 1943 `"1943"', add
label define fr06a_birthyr_lbl 1944 `"1944"', add
label define fr06a_birthyr_lbl 1945 `"1945"', add
label define fr06a_birthyr_lbl 1946 `"1946"', add
label define fr06a_birthyr_lbl 1947 `"1947"', add
label define fr06a_birthyr_lbl 1948 `"1948"', add
label define fr06a_birthyr_lbl 1949 `"1949"', add
label define fr06a_birthyr_lbl 1950 `"1950"', add
label define fr06a_birthyr_lbl 1951 `"1951"', add
label define fr06a_birthyr_lbl 1952 `"1952"', add
label define fr06a_birthyr_lbl 1953 `"1953"', add
label define fr06a_birthyr_lbl 1954 `"1954"', add
label define fr06a_birthyr_lbl 1955 `"1955"', add
label define fr06a_birthyr_lbl 1956 `"1956"', add
label define fr06a_birthyr_lbl 1957 `"1957"', add
label define fr06a_birthyr_lbl 1958 `"1958"', add
label define fr06a_birthyr_lbl 1959 `"1959"', add
label define fr06a_birthyr_lbl 1960 `"1960"', add
label define fr06a_birthyr_lbl 1961 `"1961"', add
label define fr06a_birthyr_lbl 1962 `"1962"', add
label define fr06a_birthyr_lbl 1963 `"1963"', add
label define fr06a_birthyr_lbl 1964 `"1964"', add
label define fr06a_birthyr_lbl 1965 `"1965"', add
label define fr06a_birthyr_lbl 1966 `"1966"', add
label define fr06a_birthyr_lbl 1967 `"1967"', add
label define fr06a_birthyr_lbl 1968 `"1968"', add
label define fr06a_birthyr_lbl 1969 `"1969"', add
label define fr06a_birthyr_lbl 1970 `"1970"', add
label define fr06a_birthyr_lbl 1971 `"1971"', add
label define fr06a_birthyr_lbl 1972 `"1972"', add
label define fr06a_birthyr_lbl 1973 `"1973"', add
label define fr06a_birthyr_lbl 1974 `"1974"', add
label define fr06a_birthyr_lbl 1975 `"1975"', add
label define fr06a_birthyr_lbl 1976 `"1976"', add
label define fr06a_birthyr_lbl 1977 `"1977"', add
label define fr06a_birthyr_lbl 1978 `"1978"', add
label define fr06a_birthyr_lbl 1979 `"1979"', add
label define fr06a_birthyr_lbl 1980 `"1980"', add
label define fr06a_birthyr_lbl 1981 `"1981"', add
label define fr06a_birthyr_lbl 1982 `"1982"', add
label define fr06a_birthyr_lbl 1983 `"1983"', add
label define fr06a_birthyr_lbl 1984 `"1984"', add
label define fr06a_birthyr_lbl 1985 `"1985"', add
label define fr06a_birthyr_lbl 1986 `"1986"', add
label define fr06a_birthyr_lbl 1987 `"1987"', add
label define fr06a_birthyr_lbl 1988 `"1988"', add
label define fr06a_birthyr_lbl 1989 `"1989"', add
label define fr06a_birthyr_lbl 1990 `"1990"', add
label define fr06a_birthyr_lbl 1991 `"1991"', add
label define fr06a_birthyr_lbl 1992 `"1992"', add
label define fr06a_birthyr_lbl 1993 `"1993"', add
label define fr06a_birthyr_lbl 1994 `"1994"', add
label define fr06a_birthyr_lbl 1995 `"1995"', add
label define fr06a_birthyr_lbl 1996 `"1996"', add
label define fr06a_birthyr_lbl 1997 `"1997"', add
label define fr06a_birthyr_lbl 1998 `"1998"', add
label define fr06a_birthyr_lbl 1999 `"1999"', add
label define fr06a_birthyr_lbl 2000 `"2000"', add
label define fr06a_birthyr_lbl 2001 `"2001"', add
label define fr06a_birthyr_lbl 2002 `"2002"', add
label define fr06a_birthyr_lbl 2003 `"2003"', add
label define fr06a_birthyr_lbl 2004 `"2004"', add
label define fr06a_birthyr_lbl 2005 `"2005"', add
label define fr06a_birthyr_lbl 2006 `"2006"', add
label define fr06a_birthyr_lbl 2007 `"2007"', add
label define fr06a_birthyr_lbl 2008 `"2008"', add
label values fr06a_birthyr fr06a_birthyr_lbl

label define fr06a_yrsfr_lbl 00 `"Fewer than 5 years"'
label define fr06a_yrsfr_lbl 01 `"From 5 to 9 years"', add
label define fr06a_yrsfr_lbl 02 `"From 10 to 19 years"', add
label define fr06a_yrsfr_lbl 03 `"From 20 to 29 years"', add
label define fr06a_yrsfr_lbl 04 `"From 30 to 39 years"', add
label define fr06a_yrsfr_lbl 05 `"From 40 to 49 years"', add
label define fr06a_yrsfr_lbl 06 `"From 50 to 59 years"', add
label define fr06a_yrsfr_lbl 07 `"From 60 to 69 years"', add
label define fr06a_yrsfr_lbl 08 `"From 70 years and up"', add
label define fr06a_yrsfr_lbl 09 `"Undeclared (for person born outside of France)"', add
label define fr06a_yrsfr_lbl 99 `"NIU (not in universe)"', add
label values fr06a_yrsfr fr06a_yrsfr_lbl

label define fr06a_yrsdwell_lbl 000 `"For 0 years"'
label define fr06a_yrsdwell_lbl 001 `"For 1 year"', add
label define fr06a_yrsdwell_lbl 002 `"2"', add
label define fr06a_yrsdwell_lbl 003 `"3"', add
label define fr06a_yrsdwell_lbl 004 `"4"', add
label define fr06a_yrsdwell_lbl 005 `"5"', add
label define fr06a_yrsdwell_lbl 006 `"6"', add
label define fr06a_yrsdwell_lbl 007 `"7"', add
label define fr06a_yrsdwell_lbl 008 `"8"', add
label define fr06a_yrsdwell_lbl 009 `"9"', add
label define fr06a_yrsdwell_lbl 010 `"10"', add
label define fr06a_yrsdwell_lbl 011 `"11"', add
label define fr06a_yrsdwell_lbl 012 `"12"', add
label define fr06a_yrsdwell_lbl 013 `"13"', add
label define fr06a_yrsdwell_lbl 014 `"14"', add
label define fr06a_yrsdwell_lbl 015 `"15"', add
label define fr06a_yrsdwell_lbl 016 `"16"', add
label define fr06a_yrsdwell_lbl 017 `"17"', add
label define fr06a_yrsdwell_lbl 018 `"18"', add
label define fr06a_yrsdwell_lbl 019 `"19"', add
label define fr06a_yrsdwell_lbl 020 `"20"', add
label define fr06a_yrsdwell_lbl 021 `"21"', add
label define fr06a_yrsdwell_lbl 022 `"22"', add
label define fr06a_yrsdwell_lbl 023 `"23"', add
label define fr06a_yrsdwell_lbl 024 `"24"', add
label define fr06a_yrsdwell_lbl 025 `"25"', add
label define fr06a_yrsdwell_lbl 026 `"26"', add
label define fr06a_yrsdwell_lbl 027 `"27"', add
label define fr06a_yrsdwell_lbl 028 `"28"', add
label define fr06a_yrsdwell_lbl 029 `"29"', add
label define fr06a_yrsdwell_lbl 030 `"30"', add
label define fr06a_yrsdwell_lbl 031 `"31"', add
label define fr06a_yrsdwell_lbl 032 `"32"', add
label define fr06a_yrsdwell_lbl 033 `"33"', add
label define fr06a_yrsdwell_lbl 034 `"34"', add
label define fr06a_yrsdwell_lbl 035 `"35"', add
label define fr06a_yrsdwell_lbl 036 `"36"', add
label define fr06a_yrsdwell_lbl 037 `"37"', add
label define fr06a_yrsdwell_lbl 038 `"38"', add
label define fr06a_yrsdwell_lbl 039 `"39"', add
label define fr06a_yrsdwell_lbl 040 `"40"', add
label define fr06a_yrsdwell_lbl 041 `"41"', add
label define fr06a_yrsdwell_lbl 042 `"42"', add
label define fr06a_yrsdwell_lbl 043 `"43"', add
label define fr06a_yrsdwell_lbl 044 `"44"', add
label define fr06a_yrsdwell_lbl 045 `"45"', add
label define fr06a_yrsdwell_lbl 046 `"46"', add
label define fr06a_yrsdwell_lbl 047 `"47"', add
label define fr06a_yrsdwell_lbl 048 `"48"', add
label define fr06a_yrsdwell_lbl 049 `"49"', add
label define fr06a_yrsdwell_lbl 050 `"50"', add
label define fr06a_yrsdwell_lbl 051 `"51"', add
label define fr06a_yrsdwell_lbl 052 `"52"', add
label define fr06a_yrsdwell_lbl 053 `"53"', add
label define fr06a_yrsdwell_lbl 054 `"54"', add
label define fr06a_yrsdwell_lbl 055 `"55"', add
label define fr06a_yrsdwell_lbl 056 `"56"', add
label define fr06a_yrsdwell_lbl 057 `"57"', add
label define fr06a_yrsdwell_lbl 058 `"58"', add
label define fr06a_yrsdwell_lbl 059 `"59"', add
label define fr06a_yrsdwell_lbl 060 `"60"', add
label define fr06a_yrsdwell_lbl 061 `"61"', add
label define fr06a_yrsdwell_lbl 062 `"62"', add
label define fr06a_yrsdwell_lbl 063 `"63"', add
label define fr06a_yrsdwell_lbl 064 `"64"', add
label define fr06a_yrsdwell_lbl 065 `"65"', add
label define fr06a_yrsdwell_lbl 066 `"66"', add
label define fr06a_yrsdwell_lbl 067 `"67"', add
label define fr06a_yrsdwell_lbl 068 `"68"', add
label define fr06a_yrsdwell_lbl 069 `"69"', add
label define fr06a_yrsdwell_lbl 070 `"70"', add
label define fr06a_yrsdwell_lbl 071 `"71"', add
label define fr06a_yrsdwell_lbl 072 `"72"', add
label define fr06a_yrsdwell_lbl 073 `"73"', add
label define fr06a_yrsdwell_lbl 074 `"74"', add
label define fr06a_yrsdwell_lbl 075 `"75"', add
label define fr06a_yrsdwell_lbl 076 `"76"', add
label define fr06a_yrsdwell_lbl 077 `"77"', add
label define fr06a_yrsdwell_lbl 078 `"78"', add
label define fr06a_yrsdwell_lbl 079 `"79"', add
label define fr06a_yrsdwell_lbl 080 `"80"', add
label define fr06a_yrsdwell_lbl 081 `"81"', add
label define fr06a_yrsdwell_lbl 082 `"82"', add
label define fr06a_yrsdwell_lbl 083 `"83"', add
label define fr06a_yrsdwell_lbl 084 `"84"', add
label define fr06a_yrsdwell_lbl 085 `"85"', add
label define fr06a_yrsdwell_lbl 086 `"86"', add
label define fr06a_yrsdwell_lbl 087 `"87"', add
label define fr06a_yrsdwell_lbl 088 `"88"', add
label define fr06a_yrsdwell_lbl 089 `"89"', add
label define fr06a_yrsdwell_lbl 090 `"90"', add
label define fr06a_yrsdwell_lbl 091 `"91"', add
label define fr06a_yrsdwell_lbl 092 `"92"', add
label define fr06a_yrsdwell_lbl 093 `"93"', add
label define fr06a_yrsdwell_lbl 094 `"94"', add
label define fr06a_yrsdwell_lbl 095 `"95"', add
label define fr06a_yrsdwell_lbl 096 `"96"', add
label define fr06a_yrsdwell_lbl 097 `"97"', add
label define fr06a_yrsdwell_lbl 098 `"98"', add
label define fr06a_yrsdwell_lbl 099 `"99"', add
label define fr06a_yrsdwell_lbl 100 `"100"', add
label define fr06a_yrsdwell_lbl 101 `"101"', add
label define fr06a_yrsdwell_lbl 102 `"102"', add
label define fr06a_yrsdwell_lbl 103 `"103"', add
label define fr06a_yrsdwell_lbl 104 `"104"', add
label define fr06a_yrsdwell_lbl 106 `"106"', add
label define fr06a_yrsdwell_lbl 999 `"NIU (not in universe)"', add
label values fr06a_yrsdwell fr06a_yrsdwell_lbl

label define fr06a_yrsdwll2_lbl 00 `"Fewer than 2 years"'
label define fr06a_yrsdwll2_lbl 01 `"From 2 to 4 years"', add
label define fr06a_yrsdwll2_lbl 02 `"From 5 to 9 years"', add
label define fr06a_yrsdwll2_lbl 03 `"From 10 to 19 years"', add
label define fr06a_yrsdwll2_lbl 04 `"From 20 to 29 years"', add
label define fr06a_yrsdwll2_lbl 05 `"From 30 to 39 years"', add
label define fr06a_yrsdwll2_lbl 06 `"From 40 to 49 years"', add
label define fr06a_yrsdwll2_lbl 07 `"From 50 to 59 years"', add
label define fr06a_yrsdwll2_lbl 08 `"From 60 to 69 years"', add
label define fr06a_yrsdwll2_lbl 09 `"70 years and more"', add
label define fr06a_yrsdwll2_lbl 99 `"NIU (not in universe)"', add
label values fr06a_yrsdwll2 fr06a_yrsdwll2_lbl

label define fr06a_fammemb_lbl 0 `"Outside of family (person not related to family)"'
label define fr06a_fammemb_lbl 1 `"Male adult from main family"', add
label define fr06a_fammemb_lbl 2 `"Female adult from main family"', add
label define fr06a_fammemb_lbl 3 `"Child from main family"', add
label define fr06a_fammemb_lbl 4 `"Male adult from secondary family"', add
label define fr06a_fammemb_lbl 5 `"Female adult from secondary family"', add
label define fr06a_fammemb_lbl 6 `"Child from secondary family"', add
label define fr06a_fammemb_lbl 9 `"NIU (not in universe)"', add
label values fr06a_fammemb fr06a_fammemb_lbl

label define fr06a_periodfr_lbl 00 `"Undeclared (for a person born outside of France)"'
label define fr06a_periodfr_lbl 02 `"Arrived in France between 1900 and 1917"', add
label define fr06a_periodfr_lbl 03 `"Arrived in France between 1918 and 1944"', add
label define fr06a_periodfr_lbl 04 `"Arrived in France between 1945 and 1961"', add
label define fr06a_periodfr_lbl 05 `"Arrived in France between 1962 and 1974"', add
label define fr06a_periodfr_lbl 06 `"Arrived in France between 1975 and 1981"', add
label define fr06a_periodfr_lbl 07 `"Arrived in France between 1982 and 1989"', add
label define fr06a_periodfr_lbl 08 `"Arrived in France between 1990 and 1998"', add
label define fr06a_periodfr_lbl 09 `"Arrived in France after 1998"', add
label define fr06a_periodfr_lbl 99 `"Person born in France (metropolitan France, overseas departments or overseas territories)"', add
label values fr06a_periodfr fr06a_periodfr_lbl

label define fr06a_couple_lbl 1 `"Living with a partner"'
label define fr06a_couple_lbl 2 `"Not living with a partner"', add
label values fr06a_couple fr06a_couple_lbl

label define fr06a_socio8_lbl 1 `"Farmers"'
label define fr06a_socio8_lbl 2 `"Craftsmen and women, retailers and entrepreneurs/business people"', add
label define fr06a_socio8_lbl 3 `"Executives and high-level intellectual professions"', add
label define fr06a_socio8_lbl 4 `"Intermediate professions"', add
label define fr06a_socio8_lbl 5 `"Office employees"', add
label define fr06a_socio8_lbl 6 `"Blue-collar workers"', add
label define fr06a_socio8_lbl 7 `"Retired"', add
label define fr06a_socio8_lbl 8 `"Other person no professional activity"', add
label values fr06a_socio8 fr06a_socio8_lbl

label define fr06a_socio24_lbl 10 `"Farmers"'
label define fr06a_socio24_lbl 21 `"Craftspeople"', add
label define fr06a_socio24_lbl 22 `"Retailers and related"', add
label define fr06a_socio24_lbl 23 `"Entrepreneurs/business people with 10 paid employees or more"', add
label define fr06a_socio24_lbl 31 `"Liberal professions and related"', add
label define fr06a_socio24_lbl 32 `"High-level civil servants, intellectual and artistic professions"', add
label define fr06a_socio24_lbl 36 `"Business executives"', add
label define fr06a_socio24_lbl 41 `"Intermediate teaching, health, civil service and related professions"', add
label define fr06a_socio24_lbl 46 `"Administrative and commercial intermediate professions in businesses"', add
label define fr06a_socio24_lbl 47 `"Technicians"', add
label define fr06a_socio24_lbl 48 `"Foremen and forewomen, supervisors"', add
label define fr06a_socio24_lbl 51 `"Civil service employees"', add
label define fr06a_socio24_lbl 54 `"Administrative office workers in a business"', add
label define fr06a_socio24_lbl 55 `"Salespeople, clerks"', add
label define fr06a_socio24_lbl 56 `"Service workers providing direct services to individuals"', add
label define fr06a_socio24_lbl 61 `"Skilled laborers"', add
label define fr06a_socio24_lbl 66 `"Unskilled laborers"', add
label define fr06a_socio24_lbl 69 `"Agricultural laborers"', add
label define fr06a_socio24_lbl 71 `"Retired farmers"', add
label define fr06a_socio24_lbl 72 `"Retired craftspeople, retailers, heads of business"', add
label define fr06a_socio24_lbl 73 `"Retired executives and intermediate professions"', add
label define fr06a_socio24_lbl 76 `"Retired office employees and laborers"', add
label define fr06a_socio24_lbl 81 `"Unemployed who have never worked"', add
label define fr06a_socio24_lbl 82 `"Miscellaneous inactive population (other than retired people)"', add
label values fr06a_socio24 fr06a_socio24_lbl

label define fr06a_socio42_lbl 11 `"Farmers on small farms"'
label define fr06a_socio42_lbl 12 `"Farmers on mid-sized farms"', add
label define fr06a_socio42_lbl 13 `"Farmers on large farms"', add
label define fr06a_socio42_lbl 21 `"Craftspeople"', add
label define fr06a_socio42_lbl 22 `"Retailers and related"', add
label define fr06a_socio42_lbl 23 `"Heads of business with 10 paid employees or more"', add
label define fr06a_socio42_lbl 31 `"Liberal professions and related"', add
label define fr06a_socio42_lbl 33 `"High-level civil servants"', add
label define fr06a_socio42_lbl 34 `"Teachers/professors, scientific professions"', add
label define fr06a_socio42_lbl 35 `"News, arts and entertainment professions"', add
label define fr06a_socio42_lbl 37 `"Administrative and commercial business executives/managers"', add
label define fr06a_socio42_lbl 38 `"Engineers, technical managers in business"', add
label define fr06a_socio42_lbl 42 `"School teachers and related"', add
label define fr06a_socio42_lbl 43 `"Intermediate profession in health and social work"', add
label define fr06a_socio42_lbl 44 `"Clergy, monks and nuns"', add
label define fr06a_socio42_lbl 45 `"Intermediate administrative professions in civil service"', add
label define fr06a_socio42_lbl 46 `"Intermediate administrative and commercial professions in business"', add
label define fr06a_socio42_lbl 47 `"Technicians"', add
label define fr06a_socio42_lbl 48 `"Foreman and forewomen, supervisors"', add
label define fr06a_socio42_lbl 52 `"Civil service and public office workers"', add
label define fr06a_socio42_lbl 53 `"Police officers and military personnel"', add
label define fr06a_socio42_lbl 54 `"Administrative office business employees"', add
label define fr06a_socio42_lbl 55 `"Commercial office employees"', add
label define fr06a_socio42_lbl 56 `"Service workers providing direct services to individuals"', add
label define fr06a_socio42_lbl 62 `"Skilled industrial laborers"', add
label define fr06a_socio42_lbl 63 `"Skilled craftspeople"', add
label define fr06a_socio42_lbl 64 `"Drivers"', add
label define fr06a_socio42_lbl 65 `"Skilled warehouse, storage and transportation laborers"', add
label define fr06a_socio42_lbl 67 `"Unskilled industrial laborers"', add
label define fr06a_socio42_lbl 68 `"Unskilled craftspeople"', add
label define fr06a_socio42_lbl 69 `"Agricultural laborers"', add
label define fr06a_socio42_lbl 71 `"Retired farmers"', add
label define fr06a_socio42_lbl 72 `"Retired craftspeople, retailers, entrepreneurs/business people"', add
label define fr06a_socio42_lbl 74 `"Retired executives"', add
label define fr06a_socio42_lbl 75 `"Retired intermediate professions"', add
label define fr06a_socio42_lbl 77 `"Retired office employees"', add
label define fr06a_socio42_lbl 78 `"Retired laborers"', add
label define fr06a_socio42_lbl 81 `"Unemployed who have never worked"', add
label define fr06a_socio42_lbl 84 `"High school and college/university students"', add
label define fr06a_socio42_lbl 85 `"Miscellaneous persons younger than 60 with no professional activity (excluding retired people)"', add
label define fr06a_socio42_lbl 86 `"Miscellaneous persons 60 and older with no professional activity (excluding retired people)"', add
label values fr06a_socio42 fr06a_socio42_lbl

label define fr06a_socio42_lbl 11 `"Farmers on small farms"'
label define fr06a_socio42_lbl 12 `"Farmers on mid-sized farms"', add
label define fr06a_socio42_lbl 13 `"Farmers on large farms"', add
label define fr06a_socio42_lbl 21 `"Craftspeople"', add
label define fr06a_socio42_lbl 22 `"Retailers and related"', add
label define fr06a_socio42_lbl 23 `"Heads of business with 10 paid employees or more"', add
label define fr06a_socio42_lbl 31 `"Liberal professions and related"', add
label define fr06a_socio42_lbl 33 `"High-level civil servants"', add
label define fr06a_socio42_lbl 34 `"Teachers/professors, scientific professions"', add
label define fr06a_socio42_lbl 35 `"News, arts and entertainment professions"', add
label define fr06a_socio42_lbl 37 `"Administrative and commercial business executives/managers"', add
label define fr06a_socio42_lbl 38 `"Engineers, technical managers in business"', add
label define fr06a_socio42_lbl 42 `"School teachers and related"', add
label define fr06a_socio42_lbl 43 `"Intermediate profession in health and social work"', add
label define fr06a_socio42_lbl 44 `"Clergy, monks and nuns"', add
label define fr06a_socio42_lbl 45 `"Intermediate administrative professions in civil service"', add
label define fr06a_socio42_lbl 46 `"Intermediate administrative and commercial professions in business"', add
label define fr06a_socio42_lbl 47 `"Technicians"', add
label define fr06a_socio42_lbl 48 `"Foreman and forewomen, supervisors"', add
label define fr06a_socio42_lbl 52 `"Civil service and public office workers"', add
label define fr06a_socio42_lbl 53 `"Police officers and military personnel"', add
label define fr06a_socio42_lbl 54 `"Administrative office business employees"', add
label define fr06a_socio42_lbl 55 `"Commercial office employees"', add
label define fr06a_socio42_lbl 56 `"Service workers providing direct services to individuals"', add
label define fr06a_socio42_lbl 62 `"Skilled industrial laborers"', add
label define fr06a_socio42_lbl 63 `"Skilled craftspeople"', add
label define fr06a_socio42_lbl 64 `"Drivers"', add
label define fr06a_socio42_lbl 65 `"Skilled warehouse, storage and transportation laborers"', add
label define fr06a_socio42_lbl 67 `"Unskilled industrial laborers"', add
label define fr06a_socio42_lbl 68 `"Unskilled craftspeople"', add
label define fr06a_socio42_lbl 69 `"Agricultural laborers"', add
label define fr06a_socio42_lbl 71 `"Retired farmers"', add
label define fr06a_socio42_lbl 72 `"Retired craftspeople, retailers, entrepreneurs/business people"', add
label define fr06a_socio42_lbl 74 `"Retired executives"', add
label define fr06a_socio42_lbl 75 `"Retired intermediate professions"', add
label define fr06a_socio42_lbl 77 `"Retired office employees"', add
label define fr06a_socio42_lbl 78 `"Retired laborers"', add
label define fr06a_socio42_lbl 81 `"Unemployed who have never worked"', add
label define fr06a_socio42_lbl 84 `"High school and college/university students"', add
label define fr06a_socio42_lbl 85 `"Miscellaneous persons younger than 60 with no professional activity (excluding retired people)"', add
label define fr06a_socio42_lbl 86 `"Miscellaneous persons 60 and older with no professional activity (excluding retired people)"', add
label values fr06a_socio42 fr06a_socio42_lbl

label define fr06a_diploma_lbl 01 `"No schooling"'
label define fr06a_diploma_lbl 02 `"No diploma but attended school to primary or middle school"', add
label define fr06a_diploma_lbl 03 `"No diploma but attended school beyond middle school"', add
label define fr06a_diploma_lbl 11 `"Certificate of primary studies"', add
label define fr06a_diploma_lbl 12 `"General certificate of secondary education, elementary certificate, middle-school certificate"', add
label define fr06a_diploma_lbl 13 `"Vocational training certificate; advanced [journeyman-type] vocational certificate"', add
label define fr06a_diploma_lbl 14 `"Certificate of professional studies"', add
label define fr06a_diploma_lbl 15 `"General baccalaureate, advanced certificate"', add
label define fr06a_diploma_lbl 16 `"Professional or technical baccalaureate; professional or technical certificate; certificate of commercial education; certificate of industrial education; certificate of hotelier Instruction; legal assistant"', add
label define fr06a_diploma_lbl 17 `"First-level university degree; advanced technician's diploma; technical diploma from a university technology institute; social or health sciences degree, nurse, etc."', add
label define fr06a_diploma_lbl 18 `"Advanced university degrees (including medicine, pharmacy and dentistry), engineering degree, degree from a highly-competitive university, doctorate, etc."', add
label define fr06a_diploma_lbl 99 `"NIU (not in universe)"', add
label values fr06a_diploma fr06a_diploma_lbl

label define fr06a_classwkr_lbl 11 `"Apprentice under contract"'
label define fr06a_classwkr_lbl 12 `"Persons placed by a temporary employment agency"', add
label define fr06a_classwkr_lbl 13 `"Subsidized youth contracts, part-time employment, provisional contract"', add
label define fr06a_classwkr_lbl 14 `"Paid internship in a company"', add
label define fr06a_classwkr_lbl 15 `"Other fixed-length contracts (fixed-length contracts, including short contract, seasonal, etc.)"', add
label define fr06a_classwkr_lbl 16 `"Employment with no fixed time limit, open-end contract, permanent civil service"', add
label define fr06a_classwkr_lbl 21 `"Not a paid employee: self-employed"', add
label define fr06a_classwkr_lbl 22 `"Not a paid employee: employer"', add
label define fr06a_classwkr_lbl 23 `"Not a paid employee: family helper"', add
label define fr06a_classwkr_lbl 99 `"NIU (not in universe)"', add
label values fr06a_classwkr fr06a_classwkr_lbl

label define fr06a_school_lbl 1 `"Yes"'
label define fr06a_school_lbl 2 `"No"', add
label values fr06a_school fr06a_school_lbl

label define fr06a_studyloc_lbl 1 `"In the municipality of current residence"'
label define fr06a_studyloc_lbl 2 `"school teachers and related"', add
label define fr06a_studyloc_lbl 3 `"In another department of the region of residence"', add
label define fr06a_studyloc_lbl 4 `"Outside region of current residence: metropolitan France"', add
label define fr06a_studyloc_lbl 5 `"Outside region of current residence: in an overseas department"', add
label define fr06a_studyloc_lbl 6 `"Outside region of current residence: in an overseas territory"', add
label define fr06a_studyloc_lbl 7 `"Abroad"', add
label define fr06a_studyloc_lbl 9 `"NIU (not in universe)"', add
label values fr06a_studyloc fr06a_studyloc_lbl

label define fr06a_studyurb_lbl 1 `"Lives in a rural municipality and studies in the same municipality"'
label define fr06a_studyurb_lbl 2 `"Lives in a rural municipality and studies outside the municipality"', add
label define fr06a_studyurb_lbl 3 `"Lives in an urban municipality and studies in the same municipality"', add
label define fr06a_studyurb_lbl 4 `"Lives in an urban municipality and studies in a different municipality of the same urban unit"', add
label define fr06a_studyurb_lbl 5 `"Lives in an urban municipality and studies outside the urban unit"', add
label define fr06a_studyurb_lbl 9 `"NIU (not in universe)"', add
label values fr06a_studyurb fr06a_studyurb_lbl

label define fr06a_workloc_lbl 1 `"In municipality of current residence"'
label define fr06a_workloc_lbl 2 `"In another municipality of department of residence"', add
label define fr06a_workloc_lbl 3 `"In another municipality of region of residence"', add
label define fr06a_workloc_lbl 4 `"Outside of region of current residence: in metropolitan France"', add
label define fr06a_workloc_lbl 5 `"Outside of region of current residence: in overseas department"', add
label define fr06a_workloc_lbl 6 `"Outside of region of current residence: in overseas territory"', add
label define fr06a_workloc_lbl 7 `"Abroad"', add
label define fr06a_workloc_lbl 9 `"NIU (not in universe)"', add
label values fr06a_workloc fr06a_workloc_lbl

label define fr06a_workurb_lbl 1 `"Lives in a rural municipality and works in the same municipality"'
label define fr06a_workurb_lbl 2 `"Lives in a rural municipality and works outside the municipality"', add
label define fr06a_workurb_lbl 3 `"Lives in an urban municipality and works in the same municipality"', add
label define fr06a_workurb_lbl 4 `"Lives in an urban municipality and works in another municipality of the same urban unit"', add
label define fr06a_workurb_lbl 5 `"Lives in an urban community and works outside the urban unit"', add
label define fr06a_workurb_lbl 9 `"NIU (not in universe)"', add
label values fr06a_workurb fr06a_workurb_lbl

label define fr06a_immig_lbl 1 `"Immigrants"'
label define fr06a_immig_lbl 2 `"Non-immigrants"', add
label values fr06a_immig fr06a_immig_lbl

label define fr06a_bpl_lbl 1 `"In the department of current residence"'
label define fr06a_bpl_lbl 2 `"In another department of the region of current residence"', add
label define fr06a_bpl_lbl 3 `"Outside region of current residence: in metropolitan France"', add
label define fr06a_bpl_lbl 4 `"Outside region of current residence: in overseas department"', add
label define fr06a_bpl_lbl 5 `"Outside region of current residence: in overseas territory"', add
label define fr06a_bpl_lbl 6 `"Abroad"', add
label values fr06a_bpl fr06a_bpl_lbl

label define fr06a_nation_lbl 11 `"French by birth"'
label define fr06a_nation_lbl 12 `"French through acquisition"', add
label define fr06a_nation_lbl 21 `"Foreigner"', add
label values fr06a_nation fr06a_nation_lbl

label define fr06a_fampers_lbl 01 `"1"'
label define fr06a_fampers_lbl 02 `"2"', add
label define fr06a_fampers_lbl 03 `"3"', add
label define fr06a_fampers_lbl 04 `"4"', add
label define fr06a_fampers_lbl 05 `"5"', add
label define fr06a_fampers_lbl 06 `"6"', add
label define fr06a_fampers_lbl 07 `"7"', add
label define fr06a_fampers_lbl 08 `"8"', add
label define fr06a_fampers_lbl 09 `"9"', add
label define fr06a_fampers_lbl 99 `"NIU (not in universe)"', add
label values fr06a_fampers fr06a_fampers_lbl

label define fr06a_prevres_lbl 00 `"Municipality or administrative district in which the person is officially registered"'
label define fr06a_prevres_lbl 01 `"In the same dwelling"', add
label define fr06a_prevres_lbl 02 `"In another dwelling in the same municipality"', add
label define fr06a_prevres_lbl 03 `"In another municipality in the department"', add
label define fr06a_prevres_lbl 04 `"In another department in the region"', add
label define fr06a_prevres_lbl 05 `"Outside region of current residence: in metropolitan France"', add
label define fr06a_prevres_lbl 06 `"Outside region of current residence: in an overseas department"', add
label define fr06a_prevres_lbl 07 `"In an overseas collectivity"', add
label define fr06a_prevres_lbl 08 `"Outside of France but in the European Union (27 member countries)"', add
label define fr06a_prevres_lbl 09 `"Outside France and outside the European Union"', add
label define fr06a_prevres_lbl 98 `"Unknown"', add
label define fr06a_prevres_lbl 99 `"NIU (not in universe)"', add
label values fr06a_prevres fr06a_prevres_lbl

label define fr06a_prevres_lbl 00 `"Municipality or administrative district in which the person is officially registered"'
label define fr06a_prevres_lbl 01 `"In the same dwelling"', add
label define fr06a_prevres_lbl 02 `"In another dwelling in the same municipality"', add
label define fr06a_prevres_lbl 03 `"In another municipality in the department"', add
label define fr06a_prevres_lbl 04 `"In another department in the region"', add
label define fr06a_prevres_lbl 05 `"Outside region of current residence: in metropolitan France"', add
label define fr06a_prevres_lbl 06 `"Outside region of current residence: in an overseas department"', add
label define fr06a_prevres_lbl 07 `"In an overseas collectivity"', add
label define fr06a_prevres_lbl 08 `"Outside of France but in the European Union (27 member countries)"', add
label define fr06a_prevres_lbl 09 `"Outside France and outside the European Union"', add
label define fr06a_prevres_lbl 98 `"Unknown"', add
label define fr06a_prevres_lbl 99 `"NIU (not in universe)"', add
label values fr06a_prevres fr06a_prevres_lbl

label define fr06a_prevurb_lbl 1 `"Lives in a rural municipality and lived in the same municipality"'
label define fr06a_prevurb_lbl 2 `"Lives in an urban municipality and lived outside the municipality"', add
label define fr06a_prevurb_lbl 3 `"Lives in an urban municipality and lived in the same municipality"', add
label define fr06a_prevurb_lbl 4 `"Lives in an urban municipality and lived in another municipality of the same urban unit"', add
label define fr06a_prevurb_lbl 5 `"Lives in an urban municipality and lived outside urban unit"', add
label define fr06a_prevurb_lbl 8 `"Unknown"', add
label define fr06a_prevurb_lbl 9 `"NIU (not in universe)"', add
label values fr06a_prevurb fr06a_prevurb_lbl

label define fr06a_famrel_lbl 0 `"Outside of family"'
label define fr06a_famrel_lbl 1 `"Adult male of a family"', add
label define fr06a_famrel_lbl 2 `"Adult female of a family"', add
label define fr06a_famrel_lbl 3 `"Child of a family"', add
label define fr06a_famrel_lbl 9 `"NIU (not in universe)"', add
label values fr06a_famrel fr06a_famrel_lbl

label define fr06a_frelate_lbl 0 `"Outside of family"'
label define fr06a_frelate_lbl 1 `"Family reference person"', add
label define fr06a_frelate_lbl 2 `"Partner of family reference person"', add
label define fr06a_frelate_lbl 3 `"Child of the family"', add
label define fr06a_frelate_lbl 9 `"NIU (not in universe)"', add
label values fr06a_frelate fr06a_frelate_lbl

label define fr06a_relate_lbl 01 `"Household reference person"'
label define fr06a_relate_lbl 02 `"Partner of household reference person"', add
label define fr06a_relate_lbl 03 `"Child or household reference person or his/her partner"', add
label define fr06a_relate_lbl 04 `"Grandchild"', add
label define fr06a_relate_lbl 05 `"Forbearer"', add
label define fr06a_relate_lbl 06 `"Other relative"', add
label define fr06a_relate_lbl 07 `"Friend"', add
label define fr06a_relate_lbl 08 `"Border or subletter"', add
label define fr06a_relate_lbl 09 `"Domestic employee or housed employee"', add
label define fr06a_relate_lbl 99 `"NIU (not in universe)"', add
label values fr06a_relate fr06a_relate_lbl

label define fr06a_marst_lbl 1 `"Single people"'
label define fr06a_marst_lbl 2 `"Married people"', add
label define fr06a_marst_lbl 3 `"Widowed people"', add
label define fr06a_marst_lbl 4 `"Divorced people"', add
label values fr06a_marst fr06a_marst_lbl

label define fr06a_cohab_lbl 11 `"Children of a couple"'
label define fr06a_cohab_lbl 12 `"Children of a single-parent family"', add
label define fr06a_cohab_lbl 21 `"Adults in a childless couple"', add
label define fr06a_cohab_lbl 22 `"Adults in a couple with child/children"', add
label define fr06a_cohab_lbl 23 `"Adults in a single-parent family"', add
label define fr06a_cohab_lbl 31 `"Outside of family in a household composed of several people"', add
label define fr06a_cohab_lbl 32 `"Persons living alone"', add
label define fr06a_cohab_lbl 40 `"Persons living outside of household"', add
label values fr06a_cohab fr06a_cohab_lbl

label define fr06a_lifestyl_lbl 11 `"Child of a couple"'
label define fr06a_lifestyl_lbl 12 `"Child of a single-parent family"', add
label define fr06a_lifestyl_lbl 20 `"Single person aged less than 40"', add
label define fr06a_lifestyl_lbl 31 `"Member of couple without children and aged less than 40"', add
label define fr06a_lifestyl_lbl 32 `"Member of a couple with children"', add
label define fr06a_lifestyl_lbl 33 `"Relative of a single-parent family"', add
label define fr06a_lifestyl_lbl 40 `"Member of a couple with out children and aged 40 or more"', add
label define fr06a_lifestyl_lbl 50 `"Single person aged 40 or more"', add
label define fr06a_lifestyl_lbl 60 `"Person living outside of family in a household composed of several people"', add
label define fr06a_lifestyl_lbl 70 `"Person living outside household"', add
label values fr06a_lifestyl fr06a_lifestyl_lbl

label define fr06a_ind700n_lbl 0111 `"Cereal growing, economic crops"'
label define fr06a_ind700n_lbl 0113 `"Vegetable growing, truck farming"', add
label define fr06a_ind700n_lbl 0114 `"Horticulture, nurseries"', add
label define fr06a_ind700n_lbl 0116 `"Growing of fruit crops"', add
label define fr06a_ind700n_lbl 0117 `"Wine growing"', add
label define fr06a_ind700n_lbl 0121 `"Cattle farming"', add
label define fr06a_ind700n_lbl 0123 `"Sheep, goat and horse farming"', add
label define fr06a_ind700n_lbl 0125 `"Pig farming"', add
label define fr06a_ind700n_lbl 0127 `"Poultry farming"', add
label define fr06a_ind700n_lbl 0128 `"Farming of other animals"', add
label define fr06a_ind700n_lbl 0139 `"Related farming and livestock farming/breeding"', add
label define fr06a_ind700n_lbl 0141 `"Services to crop production"', add
label define fr06a_ind700n_lbl 0142 `"Implementation and maintenance of ornamental plantings"', add
label define fr06a_ind700n_lbl 0144 `"Services related to livestock farming/breeding"', add
label define fr06a_ind700n_lbl 0159 `"Hunting"', add
label define fr06a_ind700n_lbl 0201 `"Forestry"', add
label define fr06a_ind700n_lbl 0202 `"Forest development"', add
label define fr06a_ind700n_lbl 0204 `"Forestry services"', add
label define fr06a_ind700n_lbl 0501 `"Fishing"', add
label define fr06a_ind700n_lbl 0503 `"Fish farming, aquaculture"', add
label define fr06a_ind700n_lbl 1019 `"Coal mining and agglomeration"', add
label define fr06a_ind700n_lbl 1029 `"Lignite mining and agglomeration"', add
label define fr06a_ind700n_lbl 1039 `"Peat mining and agglomeration"', add
label define fr06a_ind700n_lbl 1119 `"Hydrocarbon extraction"', add
label define fr06a_ind700n_lbl 1129 `"Services related to hydrocarbon extraction"', add
label define fr06a_ind700n_lbl 1209 `"Uranium ore mining"', add
label define fr06a_ind700n_lbl 1319 `"Iron ore mining"', add
label define fr06a_ind700n_lbl 1329 `"Non-ferrous metal ore mining"', add
label define fr06a_ind700n_lbl 1411 `"Ornamental stone mining and construction"', add
label define fr06a_ind700n_lbl 1413 `"Industrial limestone, gypsum and chalk mining"', add
label define fr06a_ind700n_lbl 1415 `"Slate mining"', add
label define fr06a_ind700n_lbl 1421 `"Sand and aggregate production"', add
label define fr06a_ind700n_lbl 1423 `"Clay and China clay mining"', add
label define fr06a_ind700n_lbl 1439 `"Mineral mining for the chemical industry and for natural fertilizers"', add
label define fr06a_ind700n_lbl 1449 `"Salt production"', add
label define fr06a_ind700n_lbl 1459 `"Mining activity not classified elsewhere"', add
label define fr06a_ind700n_lbl 1511 `"Production of meat for human consumption"', add
label define fr06a_ind700n_lbl 1513 `"Production of poultry"', add
label define fr06a_ind700n_lbl 1515 `"Industrial preparation of meat-based products"', add
label define fr06a_ind700n_lbl 1516 `"Pork meat industry"', add
label define fr06a_ind700n_lbl 1529 `"Fish industry"', add
label define fr06a_ind700n_lbl 1531 `"Processing and preservation of potatoes"', add
label define fr06a_ind700n_lbl 1533 `"Preparation of fruit and vegetable juice"', add
label define fr06a_ind700n_lbl 1535 `"Processing and preservation of vegetables"', add
label define fr06a_ind700n_lbl 1536 `"Processing and preservation of fruits"', add
label define fr06a_ind700n_lbl 1541 `"Production of raw oils and fats"', add
label define fr06a_ind700n_lbl 1543 `"Production of refined oils and fats"', add
label define fr06a_ind700n_lbl 1545 `"Margarine production"', add
label define fr06a_ind700n_lbl 1551 `"Production of liquid milk and fresh [milk] products"', add
label define fr06a_ind700n_lbl 1552 `"Butter production"', add
label define fr06a_ind700n_lbl 1553 `"Cheese production"', add
label define fr06a_ind700n_lbl 1554 `"Production of other dairy products"', add
label define fr06a_ind700n_lbl 1555 `"Production of ice cream and sorbets"', add
label define fr06a_ind700n_lbl 1561 `"Milling industry"', add
label define fr06a_ind700n_lbl 1562 `"Other activities related to grain milling"', add
label define fr06a_ind700n_lbl 1564 `"Production of cereal binders"', add
label define fr06a_ind700n_lbl 1571 `"Production of food for farm animals"', add
label define fr06a_ind700n_lbl 1573 `"Production of pet food"', add
label define fr06a_ind700n_lbl 1574 `"Industrial bread and fresh bakery goods production"', add
label define fr06a_ind700n_lbl 1575 `"Baking of bakery products"', add
label define fr06a_ind700n_lbl 1579 `"Bakery and pastry makers"', add
label define fr06a_ind700n_lbl 1580 `"Pastry makers"', add
label define fr06a_ind700n_lbl 1581 `"Biscuit and cracker industry, [conserved pastry goods]"', add
label define fr06a_ind700n_lbl 1582 `"Sugar production"', add
label define fr06a_ind700n_lbl 1583 `"Chocolate industry, confectionery industry"', add
label define fr06a_ind700n_lbl 1584 `"Production of pasta"', add
label define fr06a_ind700n_lbl 1585 `"Tea and coffee processing"', add
label define fr06a_ind700n_lbl 1586 `"Production of condiments and seasonings"', add
label define fr06a_ind700n_lbl 1587 `"Production of food adapted for children, and dietetics"', add
label define fr06a_ind700n_lbl 1588 `"Food industries not classified elsewhere"', add
label define fr06a_ind700n_lbl 1589 `"Production of natural distilled fruit alcohol"', add
label define fr06a_ind700n_lbl 1590 `"Production of spirits"', add
label define fr06a_ind700n_lbl 1591 `"Production of fermented ethyl alcohol"', add
label define fr06a_ind700n_lbl 1592 `"Sparkling wine made using the champagne process"', add
label define fr06a_ind700n_lbl 1593 `"Wine-making"', add
label define fr06a_ind700n_lbl 1594 `"Cider-making"', add
label define fr06a_ind700n_lbl 1595 `"Production of other fermented drinks"', add
label define fr06a_ind700n_lbl 1596 `"Brewery"', add
label define fr06a_ind700n_lbl 1597 `"Malt house"', add
label define fr06a_ind700n_lbl 1598 `"Production of table waters"', add
label define fr06a_ind700n_lbl 1599 `"Production of soft drinks"', add
label define fr06a_ind700n_lbl 1609 `"Tobacco industry"', add
label define fr06a_ind700n_lbl 1711 `"Cotton industry spinning"', add
label define fr06a_ind700n_lbl 1712 `"Wool industry spinning-carding process"', add
label define fr06a_ind700n_lbl 1713 `"Wool preparation"', add
label define fr06a_ind700n_lbl 1714 `"Wool industry spinning-combing process"', add
label define fr06a_ind700n_lbl 1715 `"Linen preparation and spinning"', add
label define fr06a_ind700n_lbl 1716 `"Milling and texturing of silk and artificial or synthetic textiles"', add
label define fr06a_ind700n_lbl 1717 `"Production of sewing thread"', add
label define fr06a_ind700n_lbl 1718 `"Preparation and spinning of other fibers"', add
label define fr06a_ind700n_lbl 1721 `"Cotton industry weaving"', add
label define fr06a_ind700n_lbl 1723 `"Wool industry weaving-carding process"', add
label define fr06a_ind700n_lbl 1725 `"Wool industry weaving-weaving process"', add
label define fr06a_ind700n_lbl 1727 `"Silk weaving"', add
label define fr06a_ind700n_lbl 1728 `"Weaving other textiles"', add
label define fr06a_ind700n_lbl 1739 `"Textile finishing"', add
label define fr06a_ind700n_lbl 1741 `"Production of household linens and furniture"', add
label define fr06a_ind700n_lbl 1742 `"Production of small textile bedding items"', add
label define fr06a_ind700n_lbl 1743 `"Production of other articles made from textiles"', add
label define fr06a_ind700n_lbl 1751 `"Production of rugs and carpets"', add
label define fr06a_ind700n_lbl 1753 `"Twine and cordage industry, production of nets"', add
label define fr06a_ind700n_lbl 1755 `"Production of non-woven items"', add
label define fr06a_ind700n_lbl 1757 `"Textile industries not classified elsewhere"', add
label define fr06a_ind700n_lbl 1769 `"Production of knitwear/knit fabrics"', add
label define fr06a_ind700n_lbl 1771 `"Production of hosiery"', add
label define fr06a_ind700n_lbl 1773 `"Production of sweaters and similar clothing"', add
label define fr06a_ind700n_lbl 1819 `"Production of leather clothing"', add
label define fr06a_ind700n_lbl 1821 `"Production of work clothing"', add
label define fr06a_ind700n_lbl 1823 `"Production of custom-made clothing"', add
label define fr06a_ind700n_lbl 1824 `"Production of mens' and boys' outer garments"', add
label define fr06a_ind700n_lbl 1825 `"Production of womens' and girls' outer garments"', add
label define fr06a_ind700n_lbl 1827 `"Production of under garments"', add
label define fr06a_ind700n_lbl 1828 `"Production of other clothing and accessories"', add
label define fr06a_ind700n_lbl 1839 `"Fur industry"', add
label define fr06a_ind700n_lbl 1919 `"Leather finishing and tanning"', add
label define fr06a_ind700n_lbl 1929 `"Production of travel and leather goods"', add
label define fr06a_ind700n_lbl 1939 `"Shoe production"', add
label define fr06a_ind700n_lbl 2011 `"Wood sawing and planing"', add
label define fr06a_ind700n_lbl 2012 `"Wood saturation"', add
label define fr06a_ind700n_lbl 2029 `"Production of wood panels"', add
label define fr06a_ind700n_lbl 2039 `"Production of [wooden] framing and joinery"', add
label define fr06a_ind700n_lbl 2049 `"Production of wood packaging"', add
label define fr06a_ind700n_lbl 2051 `"Production of various wood items"', add
label define fr06a_ind700n_lbl 2053 `"Production of items in cork, wicker or esparto"', add
label define fr06a_ind700n_lbl 2111 `"Production of paper pulp"', add
label define fr06a_ind700n_lbl 2003 `"Production of paper and cardboard"', add
label define fr06a_ind700n_lbl 2121 `"Production of corrugated cardboard"', add
label define fr06a_ind700n_lbl 2122 `"Production of cardboard items/packing boxes"', add
label define fr06a_ind700n_lbl 2123 `"Production of paper packaging"', add
label define fr06a_ind700n_lbl 2125 `"Production of paper items for sanitary or domestic use"', add
label define fr06a_ind700n_lbl 2127 `"Production of paper items"', add
label define fr06a_ind700n_lbl 2128 `"Production of wallpaper"', add
label define fr06a_ind700n_lbl 2129 `"Production of other items in paper or cardboard"', add
label define fr06a_ind700n_lbl 2211 `"Book editing"', add
label define fr06a_ind700n_lbl 2213 `"Newspaper editing"', add
label define fr06a_ind700n_lbl 2215 `"Magazine and periodical editing"', add
label define fr06a_ind700n_lbl 2217 `"Editing of audio recording"', add
label define fr06a_ind700n_lbl 2218 `"Other editing activity"', add
label define fr06a_ind700n_lbl 2221 `"Newspaper printing"', add
label define fr06a_ind700n_lbl 2223 `"Other printing (labor)"', add
label define fr06a_ind700n_lbl 2225 `"Binding"', add
label define fr06a_ind700n_lbl 2227 `"Pre-press activities"', add
label define fr06a_ind700n_lbl 2228 `"Ancillary graphic activity"', add
label define fr06a_ind700n_lbl 2231 `"Audio recording reproduction"', add
label define fr06a_ind700n_lbl 2233 `"Video recording reproduction"', add
label define fr06a_ind700n_lbl 2235 `"Computer recording reproduction"', add
label define fr06a_ind700n_lbl 2319 `"Coking"', add
label define fr06a_ind700n_lbl 2329 `"Petroleum refining"', add
label define fr06a_ind700n_lbl 2339 `"Nuclear materials processing"', add
label define fr06a_ind700n_lbl 2411 `"Production of industrial gases"', add
label define fr06a_ind700n_lbl 2413 `"Production of coloring and pigment"', add
label define fr06a_ind700n_lbl 2415 `"Production of other basic inorganic chemical products"', add
label define fr06a_ind700n_lbl 2416 `"Production of other basic organic chemical products"', add
label define fr06a_ind700n_lbl 2417 `"Production of nitrogen products and fertilizers"', add
label define fr06a_ind700n_lbl 2418 `"Production of basic plastic materials"', add
label define fr06a_ind700n_lbl 2419 `"Production of synthetic rubber"', add
label define fr06a_ind700n_lbl 2429 `"Production of agrochemical products"', add
label define fr06a_ind700n_lbl 2439 `"Production of paints and varnishes"', add
label define fr06a_ind700n_lbl 2441 `"Production of basic pharmaceutical products"', add
label define fr06a_ind700n_lbl 2443 `"Production of medications"', add
label define fr06a_ind700n_lbl 2444 `"Production of other pharmaceutical products"', add
label define fr06a_ind700n_lbl 2451 `"Production of soaps, detergents and cleaning products"', add
label define fr06a_ind700n_lbl 2453 `"Production of perfumes and toiletries"', add
label define fr06a_ind700n_lbl 2461 `"Production of explosives"', add
label define fr06a_ind700n_lbl 2463 `"Production of glue and gelatin"', add
label define fr06a_ind700n_lbl 2465 `"Production of essential oils"', add
label define fr06a_ind700n_lbl 2467 `"Production of photographic chemicals"', add
label define fr06a_ind700n_lbl 2468 `"Production of data medium"', add
label define fr06a_ind700n_lbl 2469 `"Production of chemical products for industrial use"', add
label define fr06a_ind700n_lbl 2479 `"Production of artificial or synthetic fibers"', add
label define fr06a_ind700n_lbl 2511 `"Production of tires"', add
label define fr06a_ind700n_lbl 2513 `"Tire re-treading"', add
label define fr06a_ind700n_lbl 2515 `"Production of other rubber items"', add
label define fr06a_ind700n_lbl 2521 `"Production of plastic slabs, sheets, tubes and profiles"', add
label define fr06a_ind700n_lbl 2523 `"Production of plastic packaging materials"', add
label define fr06a_ind700n_lbl 2525 `"Production of plastic building components"', add
label define fr06a_ind700n_lbl 2527 `"Production of various plastic items"', add
label define fr06a_ind700n_lbl 2528 `"Production of plastic [technical pieces/stops/fasteners]"', add
label define fr06a_ind700n_lbl 2611 `"Production of flat glass"', add
label define fr06a_ind700n_lbl 2613 `"Shaping and processing of flat glass"', add
label define fr06a_ind700n_lbl 2615 `"Production of hollow glass"', add
label define fr06a_ind700n_lbl 2517 `"Production of fiberglass"', add
label define fr06a_ind700n_lbl 2518 `"Production and shaping of glass [industrial] articles"', add
label define fr06a_ind700n_lbl 2519 `"Production of glass insulators"', add
label define fr06a_ind700n_lbl 2621 `"Production of ceramic goods for household use"', add
label define fr06a_ind700n_lbl 2623 `"Production of ceramic sanitary apparatuses"', add
label define fr06a_ind700n_lbl 2625 `"Production of ceramic insulators and [ceramic items]"', add
label define fr06a_ind700n_lbl 2626 `"Production of other ceramic products for technical use"', add
label define fr06a_ind700n_lbl 2627 `"Production of other ceramic products"', add
label define fr06a_ind700n_lbl 2628 `"Production of refractive ceramic products"', add
label define fr06a_ind700n_lbl 2629 `"Production of ceramic tile"', add
label define fr06a_ind700n_lbl 2641 `"Production of bricks"', add
label define fr06a_ind700n_lbl 2642 `"Production of tiles"', add
label define fr06a_ind700n_lbl 2643 `"Production of miscellaneous terra cotta/earthenware items"', add
label define fr06a_ind700n_lbl 2651 `"Cement production"', add
label define fr06a_ind700n_lbl 2653 `"Lime production"', add
label define fr06a_ind700n_lbl 2655 `"Plaster production"', add
label define fr06a_ind700n_lbl 2661 `"Production of concrete construction components"', add
label define fr06a_ind700n_lbl 2663 `"Production of plaster construction components"', add
label define fr06a_ind700n_lbl 2665 `"Production of ready-to-use concrete"', add
label define fr06a_ind700n_lbl 2667 `"Production of mortars and dry/no-slump cement"', add
label define fr06a_ind700n_lbl 2668 `"Production of fiber-cement structures"', add
label define fr06a_ind700n_lbl 2669 `"Production of other structures in concrete or plaster"', add
label define fr06a_ind700n_lbl 2679 `"Cutting, shaping and finishing of ornamental and construction stone"', add
label define fr06a_ind700n_lbl 2681 `"Production of abrasive products"', add
label define fr06a_ind700n_lbl 2683 `"Production of non-metallic mineral products not classified elsewhere"', add
label define fr06a_ind700n_lbl 2719 `"Iron and steel industry"', add
label define fr06a_ind700n_lbl 2721 `"Production of cast-iron tubes"', add
label define fr06a_ind700n_lbl 2723 `"Production of steel tubes"', add
label define fr06a_ind700n_lbl 2731 `"Cold rolling/drawing"', add
label define fr06a_ind700n_lbl 2733 `"Cold rolling steel strip"', add
label define fr06a_ind700n_lbl 2735 `"Cold shaping and folding"', add
label define fr06a_ind700n_lbl 2737 `"Cold drawing"', add
label define fr06a_ind700n_lbl 2741 `"Production of precious metals"', add
label define fr06a_ind700n_lbl 2743 `"Aluminum production"', add
label define fr06a_ind700n_lbl 2744 `"Primary aluminum processing"', add
label define fr06a_ind700n_lbl 2745 `"Production of lead, zinc or tin"', add
label define fr06a_ind700n_lbl 2746 `"Primary processing of lead, zinc or tin"', add
label define fr06a_ind700n_lbl 2747 `"Copper production"', add
label define fr06a_ind700n_lbl 2748 `"Primary copper processing"', add
label define fr06a_ind700n_lbl 2749 `"Other non-ferrous metal processing"', add
label define fr06a_ind700n_lbl 2751 `"Cast-iron foundry"', add
label define fr06a_ind700n_lbl 2753 `"Steel foundry"', add
label define fr06a_ind700n_lbl 2755 `"Light-metal foundry"', add
label define fr06a_ind700n_lbl 2757 `"Other non-ferrous metal foundry"', add
label define fr06a_ind700n_lbl 2811 `"Production of metal buildings/structures"', add
label define fr06a_ind700n_lbl 2813 `"Production of metal joinery and fasteners"', add
label define fr06a_ind700n_lbl 2821 `"Production of metal reservoirs, cisterns and freight containers"', add
label define fr06a_ind700n_lbl 2823 `"Production of radiators and boilers for central heat"', add
label define fr06a_ind700n_lbl 2831 `"Production of steam generators"', add
label define fr06a_ind700n_lbl 2832 `"Nuclear boilermaking industry"', add
label define fr06a_ind700n_lbl 2833 `"Coppersmithing/sheet metal work-piping"', add
label define fr06a_ind700n_lbl 2841 `"Forge, stamping, coining"', add
label define fr06a_ind700n_lbl 2842 `"Cutting, embossing"', add
label define fr06a_ind700n_lbl 2843 `"Powder metallurgy"', add
label define fr06a_ind700n_lbl 2851 `"Metal processing and plating"', add
label define fr06a_ind700n_lbl 2853 `"Screw machining"', add
label define fr06a_ind700n_lbl 2854 `"General mechanics"', add
label define fr06a_ind700n_lbl 2861 `"Production of cutlery"', add
label define fr06a_ind700n_lbl 2863 `"Production of hand tools"', add
label define fr06a_ind700n_lbl 2864 `"Production of mechanical tools"', add
label define fr06a_ind700n_lbl 2866 `"Production of locks and hardware/fittings"', add
label define fr06a_ind700n_lbl 2871 `"Production of casks and similar metal packaging"', add
label define fr06a_ind700n_lbl 2872 `"Production of light metal packaging"', add
label define fr06a_ind700n_lbl 2873 `"Production of metal wire items"', add
label define fr06a_ind700n_lbl 2874 `"Precision fasteners and items for bolting"', add
label define fr06a_ind700n_lbl 2875 `"Production of springs"', add
label define fr06a_ind700n_lbl 2876 `"Production of chains"', add
label define fr06a_ind700n_lbl 2877 `"Production of metal household items"', add
label define fr06a_ind700n_lbl 2878 `"Production of small metal items"', add
label define fr06a_ind700n_lbl 2879 `"Production of miscellaneous metal items"', add
label define fr06a_ind700n_lbl 2911 `"Production of motors and turbines"', add
label define fr06a_ind700n_lbl 2912 `"Production of pumps"', add
label define fr06a_ind700n_lbl 2914 `"Production of hydraulic and pneumatic transmissions"', add
label define fr06a_ind700n_lbl 2915 `"Production of compressors"', add
label define fr06a_ind700n_lbl 2916 `"Production of plumbing fixtures"', add
label define fr06a_ind700n_lbl 2918 `"Production of bearings"', add
label define fr06a_ind700n_lbl 2919 `"Production of [transmission mechanisms]"', add
label define fr06a_ind700n_lbl 2921 `"Production of ovens and burners"', add
label define fr06a_ind700n_lbl 2923 `"Production of mechanical elevators, freight elevators and escalators"', add
label define fr06a_ind700n_lbl 2924 `"Production of lifting and handling equipment"', add
label define fr06a_ind700n_lbl 2925 `"Production of industrial aeraulic and refrigeration equipment"', add
label define fr06a_ind700n_lbl 2926 `"Production of packaging equipment"', add
label define fr06a_ind700n_lbl 2927 `"Production of weighing apparatuses"', add
label define fr06a_ind700n_lbl 2928 `"Production of equipment/machinery for chemical industries"', add
label define fr06a_ind700n_lbl 2929 `"Production of other machines for general use"', add
label define fr06a_ind700n_lbl 2931 `"Production of agricultural tractors"', add
label define fr06a_ind700n_lbl 2933 `"Repair of agricultural equipment"', add
label define fr06a_ind700n_lbl 2934 `"Production of agricultural equipment"', add
label define fr06a_ind700n_lbl 2941 `"Production of metal machine tools"', add
label define fr06a_ind700n_lbl 2942 `"Production of wood machine tools"', add
label define fr06a_ind700n_lbl 2943 `"Production of portable machine tools with integrated motor"', add
label define fr06a_ind700n_lbl 2944 `"Production of welding equipment"', add
label define fr06a_ind700n_lbl 2945 `"Production of other machine tools"', add
label define fr06a_ind700n_lbl 2950 `"Production of metallurgy machines"', add
label define fr06a_ind700n_lbl 2951 `"Production of mine equipment for mining"', add
label define fr06a_ind700n_lbl 2952 `"Production of equipment for public works"', add
label define fr06a_ind700n_lbl 2953 `"Production of machines for the agribusiness/food processing industry"', add
label define fr06a_ind700n_lbl 2954 `"Production of machines for the textile industry"', add
label define fr06a_ind700n_lbl 2955 `"Production of machines for paper and cardboard industries"', add
label define fr06a_ind700n_lbl 2956 `"Production of printing machines"', add
label define fr06a_ind700n_lbl 2957 `"Production of machines for working rubber and plastics"', add
label define fr06a_ind700n_lbl 2958 `"Production of molds and models"', add
label define fr06a_ind700n_lbl 2959 `"Production of automatic assembly machines"', add
label define fr06a_ind700n_lbl 2960 `"Production of miscellaneous specialized machines"', add
label define fr06a_ind700n_lbl 2961 `"Production of weapons"', add
label define fr06a_ind700n_lbl 2962 `"Production of hunting, sport shooting and defensive weapons"', add
label define fr06a_ind700n_lbl 2971 `"Production of home electrical appliances"', add
label define fr06a_ind700n_lbl 2973 `"Production of non-electrical home appliances"', add
label define fr06a_ind700n_lbl 3001 `"Production of office machines"', add
label define fr06a_ind700n_lbl 3003 `"Production of computers and other computer equipment"', add
label define fr06a_ind700n_lbl 3111 `"Production of small and medium-powered motors, generators and transformers"', add
label define fr06a_ind700n_lbl 3112 `"Production of high powered motors, generators and transformers"', add
label define fr06a_ind700n_lbl 3113 `"Repair of electrical equipment"', add
label define fr06a_ind700n_lbl 3121 `"Production of low-tension distribution and control equipment"', add
label define fr06a_ind700n_lbl 3122 `"Production of high-ension distribution and control equipment"', add
label define fr06a_ind700n_lbl 3139 `"Production of insulated wire and cables"', add
label define fr06a_ind700n_lbl 3149 `"Production of accumulators and electric batteries"', add
label define fr06a_ind700n_lbl 3151 `"Production of lamps"', add
label define fr06a_ind700n_lbl 3152 `"Production of automated electrical security equipment"', add
label define fr06a_ind700n_lbl 3153 `"Production of lighting devices"', add
label define fr06a_ind700n_lbl 3161 `"Production of electrical equipment for motors and vehicles"', add
label define fr06a_ind700n_lbl 3163 `"Production of industrial electromagnetic equipment"', add
label define fr06a_ind700n_lbl 3164 `"Production of electrical equipment not classified elsewhere"', add
label define fr06a_ind700n_lbl 3211 `"Production of passive components and capacitors"', add
label define fr06a_ind700n_lbl 3213 `"Production of active electronic components"', add
label define fr06a_ind700n_lbl 3214 `"Electronic board assembly for third parties"', add
label define fr06a_ind700n_lbl 3221 `"Production of [wireless electromagnetic] emission and transmission equipment"', add
label define fr06a_ind700n_lbl 3223 `"Production of telephony devices"', add
label define fr06a_ind700n_lbl 3239 `"Production of devices to receive, record or reproduce sound and image"', add
label define fr06a_ind700n_lbl 3311 `"Production of medical imaging and radiology equipment"', add
label define fr06a_ind700n_lbl 3312 `"Production of medico-surgical equipment"', add
label define fr06a_ind700n_lbl 3321 `"Production of navigational aids"', add
label define fr06a_ind700n_lbl 3322 `"Production of scientific and technical instrumentation"', add
label define fr06a_ind700n_lbl 3339 `"Production of industrial process control equipment"', add
label define fr06a_ind700n_lbl 3341 `"Manufacture of glasses"', add
label define fr06a_ind700n_lbl 3342 `"Manufacture of optical instruments and photographic equipment"', add
label define fr06a_ind700n_lbl 3359 `"Clock making"', add
label define fr06a_ind700n_lbl 3419 `"Motor vehicle manufacture"', add
label define fr06a_ind700n_lbl 3421 `"Production of automobile bodies"', add
label define fr06a_ind700n_lbl 3422 `"Production of trailers/motor homes and recreational vehicles"', add
label define fr06a_ind700n_lbl 3439 `"Production of automobile equipment"', add
label define fr06a_ind700n_lbl 3511 `"Production of warships"', add
label define fr06a_ind700n_lbl 3512 `"Production of civilian ships"', add
label define fr06a_ind700n_lbl 3513 `"Naval repair"', add
label define fr06a_ind700n_lbl 3515 `"Construction of recreational craft"', add
label define fr06a_ind700n_lbl 3529 `"Construction of rolling rail stock"', add
label define fr06a_ind700n_lbl 3531 `"Construction of aircraft motors"', add
label define fr06a_ind700n_lbl 3532 `"[Construction of aircraft cells/structures]"', add
label define fr06a_ind700n_lbl 3533 `"Construction of launchers and spacecraft"', add
label define fr06a_ind700n_lbl 3541 `"Construction of  motorcycles"', add
label define fr06a_ind700n_lbl 3543 `"Construction of bicycles"', add
label define fr06a_ind700n_lbl 3545 `"Construction of vehicles for the disabled"', add
label define fr06a_ind700n_lbl 3559 `"Construction of transportation equipment not classified elsewhere"', add
label define fr06a_ind700n_lbl 3611 `"Production of chairs"', add
label define fr06a_ind700n_lbl 3613 `"Production of office and store furniture"', add
label define fr06a_ind700n_lbl 3614 `"Production of kitchen furniture"', add
label define fr06a_ind700n_lbl 3615 `"Production of [household furnishings]"', add
label define fr06a_ind700n_lbl 3616 `"Production of garden and exterior furniture"', add
label define fr06a_ind700n_lbl 3617 `"Production of furniture not classified elsewhere"', add
label define fr06a_ind700n_lbl 3618 `"Industries related to furnishings"', add
label define fr06a_ind700n_lbl 3619 `"Production of mattresses"', add
label define fr06a_ind700n_lbl 3621 `"Production of money"', add
label define fr06a_ind700n_lbl 3623 `"Jewelry, gold and silversmith"', add
label define fr06a_ind700n_lbl 3639 `"Production of musical instruments"', add
label define fr06a_ind700n_lbl 3649 `"Production of sports articles"', add
label define fr06a_ind700n_lbl 3659 `"Production of games and toys"', add
label define fr06a_ind700n_lbl 3661 `"Costume jewelry"', add
label define fr06a_ind700n_lbl 3663 `"Brush industry"', add
label define fr06a_ind700n_lbl 3665 `"Other manufacturing industries not classified elsewhere"', add
label define fr06a_ind700n_lbl 3719 `"Collection/recycling of recyclable metal items"', add
label define fr06a_ind700n_lbl 3729 `"Collection/recycling of non-metal recyclable items"', add
label define fr06a_ind700n_lbl 4011 `"Generation of electricity"', add
label define fr06a_ind700n_lbl 4013 `"Transportation of electricity"', add
label define fr06a_ind700n_lbl 4015 `"Distribution of electricity and electricity trade"', add
label define fr06a_ind700n_lbl 4021 `"Production of gaseous fuel"', add
label define fr06a_ind700n_lbl 4023 `"Distribution of gaseous fuel"', add
label define fr06a_ind700n_lbl 4039 `"Production and distribution of heat"', add
label define fr06a_ind700n_lbl 4109 `"Catchment, treatment and distribution of water"', add
label define fr06a_ind700n_lbl 4511 `"Miscellaneous earthworks/excavation, demolition"', add
label define fr06a_ind700n_lbl 4512 `"Large earth excavation"', add
label define fr06a_ind700n_lbl 4514 `"Drilling"', add
label define fr06a_ind700n_lbl 4515 `"Construction of private houses"', add
label define fr06a_ind700n_lbl 4516 `"Construction of miscellaneous buildings"', add
label define fr06a_ind700n_lbl 4517 `"Construction of works of art"', add
label define fr06a_ind700n_lbl 4518 `"Underground work"', add
label define fr06a_ind700n_lbl 4519 `"Network implementation/set-up"', add
label define fr06a_ind700n_lbl 4520 `"Construction of electric and telecommunication networks"', add
label define fr06a_ind700n_lbl 4521 `"Roofing, guttering work"', add
label define fr06a_ind700n_lbl 4522 `"Waterproofing"', add
label define fr06a_ind700n_lbl 4523 `"Roofing, framing"', add
label define fr06a_ind700n_lbl 4524 `"Railroad construction"', add
label define fr06a_ind700n_lbl 4525 `"Construction of roadways and  ground  surfaces in sporting facilities"', add
label define fr06a_ind700n_lbl 4526 `"Maritime and river works"', add
label define fr06a_ind700n_lbl 4527 `"Lifting, assembling"', add
label define fr06a_ind700n_lbl 4528 `"Other specialized construction"', add
label define fr06a_ind700n_lbl 4529 `"General masonry"', add
label define fr06a_ind700n_lbl 4531 `"Electric installation"', add
label define fr06a_ind700n_lbl 4533 `"Insulation"', add
label define fr06a_ind700n_lbl 4535 `"Water and gas installation"', add
label define fr06a_ind700n_lbl 4536 `"Installation of heating and cooling equipment"', add
label define fr06a_ind700n_lbl 4538 `"Other installation"', add
label define fr06a_ind700n_lbl 4541 `"Plaster works"', add
label define fr06a_ind700n_lbl 4543 `"Woodworking and PVC joinery"', add
label define fr06a_ind700n_lbl 4544 `"Metal joinery; lock making"', add
label define fr06a_ind700n_lbl 4545 `"Covering walls and floors"', add
label define fr06a_ind700n_lbl 4546 `"Building mirroring, glazing"', add
label define fr06a_ind700n_lbl 4547 `"Painting"', add
label define fr06a_ind700n_lbl 4548 `"Design and layout of sales outlets"', add
label define fr06a_ind700n_lbl 4549 `"Finishing work not classified elsewhere"', add
label define fr06a_ind700n_lbl 4559 `"Construction-equipment rental with operator"', add
label define fr06a_ind700n_lbl 5019 `"Motor vehicle sales"', add
label define fr06a_ind700n_lbl 5029 `"Maintenance and repair of motor vehicles"', add
label define fr06a_ind700n_lbl 5031 `"Wholesale auto equipment sales"', add
label define fr06a_ind700n_lbl 5032 `"Retail auto equipment sales"', add
label define fr06a_ind700n_lbl 5049 `"Motorcycle repair and sales"', add
label define fr06a_ind700n_lbl 5059 `"Retail fuel sales"', add
label define fr06a_ind700n_lbl 5110 `"Commercial intermediaries in agricultural raw materials, live animals, textile raw materials and semi-finished goods"', add
label define fr06a_ind700n_lbl 5111 `"Commercial intermediaries in fuel, metals, minerals and chemical products"', add
label define fr06a_ind700n_lbl 5112 `"Commercial intermediaries in wood and construction materials"', add
label define fr06a_ind700n_lbl 5113 `"Commercial intermediaries in machines, industrial equipment, ships and airplanes"', add
label define fr06a_ind700n_lbl 5114 `"Commercial intermediaries in furniture, household goods and hardware"', add
label define fr06a_ind700n_lbl 5115 `"Commercial intermediaries in textiles, clothing, footwear and leather items"', add
label define fr06a_ind700n_lbl 5116 `"Commercial intermediaries in food products"', add
label define fr06a_ind700n_lbl 5117 `"Food purchasing centers"', add
label define fr06a_ind700n_lbl 5118 `"Other specialized commercial intermediaries"', add
label define fr06a_ind700n_lbl 5119 `"Non-specialized commercial intermediaries"', add
label define fr06a_ind700n_lbl 5120 `"Non-food purchasing center"', add
label define fr06a_ind700n_lbl 5121 `"Wholesale animal grain and feed trade"', add
label define fr06a_ind700n_lbl 5123 `"Wholesale flower and plant trade"', add
label define fr06a_ind700n_lbl 5124 `"Wholesale trade in live animals"', add
label define fr06a_ind700n_lbl 5125 `"Wholesale trade in leather and furs"', add
label define fr06a_ind700n_lbl 5126 `"Wholesale trade in non-manufactured tobacco"', add
label define fr06a_ind700n_lbl 5127 `"Wholesale trade in fruits and vegetables"', add
label define fr06a_ind700n_lbl 5128 `"Wholesale trade in meat for human consumption"', add
label define fr06a_ind700n_lbl 5129 `"Wholesale trade in meat-based products"', add
label define fr06a_ind700n_lbl 5130 `"Wholesale trade poultry and game"', add
label define fr06a_ind700n_lbl 5131 `"Wholesale trade in dairy products, eggs, oils"', add
label define fr06a_ind700n_lbl 5132 `"Wholesale beverage trade"', add
label define fr06a_ind700n_lbl 5133 `"Wholesale tobacco trade"', add
label define fr06a_ind700n_lbl 5134 `"Wholesale trade in sugar, chocolate and confectionery"', add
label define fr06a_ind700n_lbl 5135 `"Wholesale trade in coffee, tee, sugar and spices"', add
label define fr06a_ind700n_lbl 5136 `"Wholesale trade in fish, seafood and mollusks"', add
label define fr06a_ind700n_lbl 5137 `"Wholesale trade in miscellaneous specialized food products"', add
label define fr06a_ind700n_lbl 5138 `"Wholesale trade in frozen food products"', add
label define fr06a_ind700n_lbl 5139 `"Wholesale trade in miscellaneous non-specialized food products/industry"', add
label define fr06a_ind700n_lbl 5140 `"Wholesale textile trade"', add
label define fr06a_ind700n_lbl 5141 `"Wholesale clothing trade"', add
label define fr06a_ind700n_lbl 5142 `"Wholesale footwear trade"', add
label define fr06a_ind700n_lbl 5143 `"Wholesale trade in home electrical appliances, and radios and television sets"', add
label define fr06a_ind700n_lbl 5144 `"Wholesale trade in dishes and household glassware"', add
label define fr06a_ind700n_lbl 5145 `"Wholesale trade in products for [housing maintenance and management]"', add
label define fr06a_ind700n_lbl 5146 `"Wholesale trade in perfume and beauty products"', add
label define fr06a_ind700n_lbl 5147 `"Wholesale trade in pharmaceutical products"', add
label define fr06a_ind700n_lbl 5148 `"Wholesale paper trade"', add
label define fr06a_ind700n_lbl 5149 `"Wholesale toy trade"', add
label define fr06a_ind700n_lbl 5150 `"Other wholesale trade in consumer goods"', add
label define fr06a_ind700n_lbl 5151 `"Wholesale fuel trade"', add
label define fr06a_ind700n_lbl 5152 `"Wholesale ore and metals trade"', add
label define fr06a_ind700n_lbl 5153 `"Wholesale trade in wood and wood-derived products"', add
label define fr06a_ind700n_lbl 5154 `"Wholesale trade in construction materials and sanitary appliances"', add
label define fr06a_ind700n_lbl 5155 `"Wholesale hardware trade"', add
label define fr06a_ind700n_lbl 5156 `"Wholesale trade in plumbing and heating supplies"', add
label define fr06a_ind700n_lbl 5157 `"Wholesale trade in chemical products"', add
label define fr06a_ind700n_lbl 5158 `"Wholesale trade in other intermediate products"', add
label define fr06a_ind700n_lbl 5159 `"Wholesale waste and scrap business"', add
label define fr06a_ind700n_lbl 5181 `"Wholesale trade in machine tools"', add
label define fr06a_ind700n_lbl 5182 `"Wholesale trade in extraction, construction and civil engineering tools"', add
label define fr06a_ind700n_lbl 5183 `"Wholesale trade in machines for the textile and clothing industry"', add
label define fr06a_ind700n_lbl 5184 `"Wholesale trade in computers, computer peripherals and software"', add
label define fr06a_ind700n_lbl 5185 `"Wholesale trade in other machines and office equipment"', add
label define fr06a_ind700n_lbl 5186 `"Wholesale trade in components and other electronic equipment"', add
label define fr06a_ind700n_lbl 5187 `"Wholesale trade in electrical equipment"', add
label define fr06a_ind700n_lbl 5188 `"Wholesale trade in miscellaneous industrial supplies and equipment"', add
label define fr06a_ind700n_lbl 5189 `"Wholesale trade in miscellaneous supplies and equipment for business and services"', add
label define fr06a_ind700n_lbl 5190 `"Wholesale trade in agricultural equipment"', add
label define fr06a_ind700n_lbl 5191 `"Other specialized wholesale trade"', add
label define fr06a_ind700n_lbl 5192 `"Non-specialized wholesale trade"', add
label define fr06a_ind700n_lbl 5211 `"Retail frozen products trade"', add
label define fr06a_ind700n_lbl 5212 `"General food trade"', add
label define fr06a_ind700n_lbl 5213 `"Mini-markets"', add
label define fr06a_ind700n_lbl 5214 `"Supermarkets"', add
label define fr06a_ind700n_lbl 5215 `"Dime store/variety store"', add
label define fr06a_ind700n_lbl 5216 `"Very large supermarkets"', add
label define fr06a_ind700n_lbl 5217 `"Department stores"', add
label define fr06a_ind700n_lbl 5218 `"Other retail trade in non-specialized stores"', add
label define fr06a_ind700n_lbl 5221 `"Retail fruit and vegetable trade"', add
label define fr06a_ind700n_lbl 5223 `"Retail trade in meat and meat-based products"', add
label define fr06a_ind700n_lbl 5224 `"Retail trade in fish, crustaceans and mollusks"', add
label define fr06a_ind700n_lbl 5225 `"Retail trade in bread, pastries and confectionery"', add
label define fr06a_ind700n_lbl 5226 `"Retail beverage trade"', add
label define fr06a_ind700n_lbl 5227 `"Retail tobacco trade"', add
label define fr06a_ind700n_lbl 5228 `"Retail dairy products trade"', add
label define fr06a_ind700n_lbl 5229 `"Miscellaneous retail specialized food trade"', add
label define fr06a_ind700n_lbl 5230 `"Retail pharmaceutical products trade"', add
label define fr06a_ind700n_lbl 5231 `"Retail trade in medical and orthopedic items"', add
label define fr06a_ind700n_lbl 5232 `"Retail trade in perfumes and beauty products"', add
label define fr06a_ind700n_lbl 5233 `"Retail textile trade"', add
label define fr06a_ind700n_lbl 5234 `"Retail clothing trade"', add
label define fr06a_ind700n_lbl 5235 `"Retail footwear trade"', add
label define fr06a_ind700n_lbl 5236 `"Retail trade in leather and travel goods"', add
label define fr06a_ind700n_lbl 5237 `"Retail furniture trade"', add
label define fr06a_ind700n_lbl 5238 `"Retail household equipment trade"', add
label define fr06a_ind700n_lbl 5239 `"Retail trade in home electrical appliances, and radios and television sets"', add
label define fr06a_ind700n_lbl 5240 `"Retail hardware trade"', add
label define fr06a_ind700n_lbl 5241 `"Retail do-it-yourself trade"', add
label define fr06a_ind700n_lbl 5242 `"Retail trade in  books, magazines and stationery"', add
label define fr06a_ind700n_lbl 5243 `"Retail optical and photography trade"', add
label define fr06a_ind700n_lbl 5244 `"Retail trade in floor and wall covering/sheathing"', add
label define fr06a_ind700n_lbl 5245 `"Retail trade in clock making and jewelry making"', add
label define fr06a_ind700n_lbl 5246 `"Retail trade in sports and leisure articles"', add
label define fr06a_ind700n_lbl 5247 `"Retail flower trade"', add
label define fr06a_ind700n_lbl 5248 `"Retail coal and fuel trade"', add
label define fr06a_ind700n_lbl 5249 `"Retail trade in specialized stores"', add
label define fr06a_ind700n_lbl 5259 `"Retail trade in second-hand goods"', add
label define fr06a_ind700n_lbl 5261 `"General mail-order sales"', add
label define fr06a_ind700n_lbl 5262 `"Specialized mail-order sales"', add
label define fr06a_ind700n_lbl 5264 `"Retail trade in food from street stands and market stalls"', add
label define fr06a_ind700n_lbl 5265 `"Retail trade in non-food items from street stands and market stalls"', add
label define fr06a_ind700n_lbl 5267 `"Door-to-door sales"', add
label define fr06a_ind700n_lbl 5268 `"Vending machine sales"', add
label define fr06a_ind700n_lbl 5271 `"Repair of footwear and leather articles"', add
label define fr06a_ind700n_lbl 5273 `"Repair of consumer electronics"', add
label define fr06a_ind700n_lbl 5274 `"Repair of electrical household appliances"', add
label define fr06a_ind700n_lbl 5276 `"Repair of watches, clocks and jewelry"', add
label define fr06a_ind700n_lbl 5278 `"Repair of personal and domestic items not classified elsewhere"', add
label define fr06a_ind700n_lbl 5511 `"Tourist hotels with restaurant"', add
label define fr06a_ind700n_lbl 5513 `"Tourist hotels without restaurant"', add
label define fr06a_ind700n_lbl 5515 `"Other hotels"', add
label define fr06a_ind700n_lbl 5521 `"Youth hostels and refuges"', add
label define fr06a_ind700n_lbl 5523 `"Campgrounds"', add
label define fr06a_ind700n_lbl 5525 `"Other tourist lodging"', add
label define fr06a_ind700n_lbl 5526 `"Collective non-tourist lodging"', add
label define fr06a_ind700n_lbl 5531 `"Traditional restaurant/food services"', add
label define fr06a_ind700n_lbl 5532 `"Fast food/ fast-food restaurant"', add
label define fr06a_ind700n_lbl 5541 `"Café-tobacco shops"', add
label define fr06a_ind700n_lbl 5542 `"Bars"', add
label define fr06a_ind700n_lbl 5543 `"Discotheques"', add
label define fr06a_ind700n_lbl 5551 `"Canteens and company restaurants"', add
label define fr06a_ind700n_lbl 5553 `"Contract collective food-service industry"', add
label define fr06a_ind700n_lbl 5554 `"Caterers, organization of receptions"', add
label define fr06a_ind700n_lbl 6019 `"Rail transportation"', add
label define fr06a_ind700n_lbl 6021 `"Urban transport of passengers"', add
label define fr06a_ind700n_lbl 6022 `"Regular road transport of passengers"', add
label define fr06a_ind700n_lbl 6023 `"Cable cars and ski lifts"', add
label define fr06a_ind700n_lbl 6024 `"Taxi passenger transport"', add
label define fr06a_ind700n_lbl 6025 `"Other road transport of passengers"', add
label define fr06a_ind700n_lbl 6026 `"Road transport of merchandise - local"', add
label define fr06a_ind700n_lbl 6027 `"Road transport of merchandise - interurban"', add
label define fr06a_ind700n_lbl 6028 `"Moving"', add
label define fr06a_ind700n_lbl 6029 `"Truck rental with driver"', add
label define fr06a_ind700n_lbl 6039 `"Pipeline transport"', add
label define fr06a_ind700n_lbl 6111 `"Sea transport"', add
label define fr06a_ind700n_lbl 6112 `"Coastal transport"', add
label define fr06a_ind700n_lbl 6129 `"River transport"', add
label define fr06a_ind700n_lbl 6219 `"Regular air transport"', add
label define fr06a_ind700n_lbl 6229 `"Non-regular air transport"', add
label define fr06a_ind700n_lbl 6239 `"Space transport"', add
label define fr06a_ind700n_lbl 6311 `"Port handling"', add
label define fr06a_ind700n_lbl 6312 `"Non-port handling"', add
label define fr06a_ind700n_lbl 6314 `"Refrigerated storage"', add
label define fr06a_ind700n_lbl 6315 `"Non-refrigerated storage"', add
label define fr06a_ind700n_lbl 6321 `"Land transport infrastructure management"', add
label define fr06a_ind700n_lbl 6323 `"Port, maritime and river services"', add
label define fr06a_ind700n_lbl 6325 `"Airport services"', add
label define fr06a_ind700n_lbl 6339 `"Travel agencies"', add
label define fr06a_ind700n_lbl 6341 `"Freight forwarding, express freight"', add
label define fr06a_ind700n_lbl 6342 `"Chartering"', add
label define fr06a_ind700n_lbl 6343 `"Organizing international transport"', add
label define fr06a_ind700n_lbl 6411 `"National post offices"', add
label define fr06a_ind700n_lbl 6413 `"Other mail activities"', add
label define fr06a_ind700n_lbl 6423 `"Telecommunications (excluding audiovisual transmissions/broadcasting)"', add
label define fr06a_ind700n_lbl 6424 `"Radio and TV broadcasting"', add
label define fr06a_ind700n_lbl 6511 `"Central bank"', add
label define fr06a_ind700n_lbl 6513 `"Banks"', add
label define fr06a_ind700n_lbl 6514 `"Mutual banks"', add
label define fr06a_ind700n_lbl 6515 `"Savings banks"', add
label define fr06a_ind700n_lbl 6516 `"Other monetary brokerage/intermediation not classified elsewhere"', add
label define fr06a_ind700n_lbl 6521 `"Leasing"', add
label define fr06a_ind700n_lbl 6523 `"Credit distribution"', add
label define fr06a_ind700n_lbl 6525 `"Mutual funds"', add
label define fr06a_ind700n_lbl 6526 `"Miscellaneous financial brokerage/intermediation"', add
label define fr06a_ind700n_lbl 6601 `"Life insurance and capitalization"', add
label define fr06a_ind700n_lbl 6603 `"Pension funds"', add
label define fr06a_ind700n_lbl 6605 `"General insurance"', add
label define fr06a_ind700n_lbl 6606 `"Reinsurance"', add
label define fr06a_ind700n_lbl 6607 `"[Insurance which falls under the mutual insurance code]"', add
label define fr06a_ind700n_lbl 6711 `"Administration of financial markets"', add
label define fr06a_ind700n_lbl 6713 `"Portfolio management"', add
label define fr06a_ind700n_lbl 6715 `"Other financial ancillaries"', add
label define fr06a_ind700n_lbl 6729 `"Insurance ancillaries"', add
label define fr06a_ind700n_lbl 7011 `"Real estate development - dwellings"', add
label define fr06a_ind700n_lbl 7012 `"Real estate development - offices"', add
label define fr06a_ind700n_lbl 7013 `"Real estate infrastructure development"', add
label define fr06a_ind700n_lbl 7014 `"Judicial program support"', add
label define fr06a_ind700n_lbl 7016 `"Real estate agents"', add
label define fr06a_ind700n_lbl 7021 `"Housing rental"', add
label define fr06a_ind700n_lbl 7022 `"Land rental"', add
label define fr06a_ind700n_lbl 7023 `"Rental of other real estate"', add
label define fr06a_ind700n_lbl 7031 `"Realties"', add
label define fr06a_ind700n_lbl 7033 `"Administration of other residential buildings"', add
label define fr06a_ind700n_lbl 7034 `"Administration of other real estate"', add
label define fr06a_ind700n_lbl 7035 `"Legal support and wealth management"', add
label define fr06a_ind700n_lbl 7111 `"Short-term automobile rental"', add
label define fr06a_ind700n_lbl 7112 `"Long-term automobile rental"', add
label define fr06a_ind700n_lbl 7121 `"Rental of other land transport equipment"', add
label define fr06a_ind700n_lbl 7123 `"Water transport equipment rental"', add
label define fr06a_ind700n_lbl 7125 `"Air transport rental"', add
label define fr06a_ind700n_lbl 7131 `"Agricultural equipment rental"', add
label define fr06a_ind700n_lbl 7133 `"Rental of construction machines and equipment"', add
label define fr06a_ind700n_lbl 7135 `"Rental of office machines and computer equipment"', add
label define fr06a_ind700n_lbl 7137 `"Rental of miscellaneous machines and equipment"', add
label define fr06a_ind700n_lbl 7141 `"Rental of linens"', add
label define fr06a_ind700n_lbl 7142 `"Rental of other personal and household goods"', add
label define fr06a_ind700n_lbl 7219 `"Computer systems consulting"', add
label define fr06a_ind700n_lbl 7221 `"Software editing (non-customized)"', add
label define fr06a_ind700n_lbl 7223 `"Other software development activities"', add
label define fr06a_ind700n_lbl 7239 `"Data processing"', add
label define fr06a_ind700n_lbl 7249 `"Database activities"', add
label define fr06a_ind700n_lbl 7259 `"Office machinery and computer equipment maintenance and repair"', add
label define fr06a_ind700n_lbl 7269 `"Other activities related to computing"', add
label define fr06a_ind700n_lbl 7319 `"Research and development in physical and natural sciences"', add
label define fr06a_ind700n_lbl 7329 `"Research and development in humanities and social sciences"', add
label define fr06a_ind700n_lbl 7411 `"Legal activities"', add
label define fr06a_ind700n_lbl 7413 `"Accounting activities"', add
label define fr06a_ind700n_lbl 7415 `"Market studies and polls"', add
label define fr06a_ind700n_lbl 7417 `"Business and management consulting"', add
label define fr06a_ind700n_lbl 7418 `"Business management"', add
label define fr06a_ind700n_lbl 7421 `"Architecture activities"', add
label define fr06a_ind700n_lbl 7422 `"Quantity surveyors, surveyors"', add
label define fr06a_ind700n_lbl 7423 `"Engineering, technical studies"', add
label define fr06a_ind700n_lbl 7431 `"[Technical automobile inspection]"', add
label define fr06a_ind700n_lbl 7432 `"Analysis, testing and technical inspections"', add
label define fr06a_ind700n_lbl 7441 `"Advertising support management"', add
label define fr06a_ind700n_lbl 7442 `"Advertising agencies, consulting"', add
label define fr06a_ind700n_lbl 7451 `"Personnel selection and supply"', add
label define fr06a_ind700n_lbl 7452 `"Temporary work"', add
label define fr06a_ind700n_lbl 7469 `"Investigations and security"', add
label define fr06a_ind700n_lbl 7479 `"Cleaning activities"', add
label define fr06a_ind700n_lbl 7481 `"Studios and other photographic activities"', add
label define fr06a_ind700n_lbl 7482 `"Laboratory development and printing techniques"', add
label define fr06a_ind700n_lbl 7483 `"Custom packaging"', add
label define fr06a_ind700n_lbl 7484 `"Secretarial and translation"', add
label define fr06a_ind700n_lbl 7485 `"Routing"', add
label define fr06a_ind700n_lbl 7486 `"Call centers"', add
label define fr06a_ind700n_lbl 7487 `"Organizations of fairs and trade shows"', add
label define fr06a_ind700n_lbl 7488 `"Services related to production"', add
label define fr06a_ind700n_lbl 7511 `"General public administration"', add
label define fr06a_ind700n_lbl 7513 `"Administration of social activities"', add
label define fr06a_ind700n_lbl 7515 `"Administration of economic activities"', add
label define fr06a_ind700n_lbl 7517 `"Management support activities"', add
label define fr06a_ind700n_lbl 7521 `"Foreign affairs"', add
label define fr06a_ind700n_lbl 7523 `"Defense"', add
label define fr06a_ind700n_lbl 7525 `"Justice"', add
label define fr06a_ind700n_lbl 7527 `"Police"', add
label define fr06a_ind700n_lbl 7528 `"Civil defense"', add
label define fr06a_ind700n_lbl 7531 `"General social security activities"', add
label define fr06a_ind700n_lbl 7532 `"Supplementary retirement management"', add
label define fr06a_ind700n_lbl 7533 `"Social distribution of revenue"', add
label define fr06a_ind700n_lbl 8019 `"Primary education"', add
label define fr06a_ind700n_lbl 8021 `"General secondary education"', add
label define fr06a_ind700n_lbl 8023 `"Technical or professional secondary education"', add
label define fr06a_ind700n_lbl 8039 `"Higher education"', add
label define fr06a_ind700n_lbl 8041 `"Driving schools"', add
label define fr06a_ind700n_lbl 8043 `"Adult and continuing education"', add
label define fr06a_ind700n_lbl 8044 `"Other teaching"', add
label define fr06a_ind700n_lbl 8511 `"Hospitality activity"', add
label define fr06a_ind700n_lbl 8512 `"Medical practice"', add
label define fr06a_ind700n_lbl 8513 `"Dental practice"', add
label define fr06a_ind700n_lbl 8514 `"Medical aid activities"', add
label define fr06a_ind700n_lbl 8515 `"Care outside of regulated sector"', add
label define fr06a_ind700n_lbl 8516 `"Ambulances"', add
label define fr06a_ind700n_lbl 8517 `"Medical analysis laboratories"', add
label define fr06a_ind700n_lbl 8518 `"Collection centers and organ banks"', add
label define fr06a_ind700n_lbl 8529 `"Veterinary activities"', add
label define fr06a_ind700n_lbl 8531 `"Homes for disabled children"', add
label define fr06a_ind700n_lbl 8532 `"Home for children (in difficulty/at-risk)"', add
label define fr06a_ind700n_lbl 8533 `"Homes for disabled adults"', add
label define fr06a_ind700n_lbl 8534 `"Homes for the elderly"', add
label define fr06a_ind700n_lbl 8535 `"Other residential accommodations"', add
label define fr06a_ind700n_lbl 8536 `"Nurseries and child-care centers"', add
label define fr06a_ind700n_lbl 8537 `"Aid work and sheltered workshops"', add
label define fr06a_ind700n_lbl 8538 `"Home help"', add
label define fr06a_ind700n_lbl 8539 `"Other forms of social welfare"', add
label define fr06a_ind700n_lbl 9001 `"Waste water collection and processing"', add
label define fr06a_ind700n_lbl 9002 `"Collection and processing of household garbage"', add
label define fr06a_ind700n_lbl 9005 `"Processing of other solid waste"', add
label define fr06a_ind700n_lbl 9007 `"Other waste decontamination and collection"', add
label define fr06a_ind700n_lbl 9111 `"Business and employers organizations"', add
label define fr06a_ind700n_lbl 9113 `"Professional organizations"', add
label define fr06a_ind700n_lbl 9129 `"Labor unions"', add
label define fr06a_ind700n_lbl 9131 `"Religious organizations"', add
label define fr06a_ind700n_lbl 9133 `"Political organizations"', add
label define fr06a_ind700n_lbl 9135 `"Community organizations not elsewhere classified"', add
label define fr06a_ind700n_lbl 9211 `"Production of films for television"', add
label define fr06a_ind700n_lbl 9212 `"Production of corporate and advertising films"', add
label define fr06a_ind700n_lbl 9213 `"Production of films for cinema"', add
label define fr06a_ind700n_lbl 9214 `"Movie and television technical services"', add
label define fr06a_ind700n_lbl 9216 `"Motion picture distribution"', add
label define fr06a_ind700n_lbl 9217 `"Video editing and distribution"', add
label define fr06a_ind700n_lbl 9218 `"Motion picture projection"', add
label define fr06a_ind700n_lbl 9221 `"Radio programs"', add
label define fr06a_ind700n_lbl 9222 `"Television program production"', add
label define fr06a_ind700n_lbl 9224 `"General-interest channel editing"', add
label define fr06a_ind700n_lbl 9225 `"Specialty channel editing"', add
label define fr06a_ind700n_lbl 9226 `"Distribution of radio and TV program packages"', add
label define fr06a_ind700n_lbl 9231 `"Artistic activities"', add
label define fr06a_ind700n_lbl 9232 `"Services related to show business/entertainment"', add
label define fr06a_ind700n_lbl 9234 `"Auditorium/concert hall management"', add
label define fr06a_ind700n_lbl 9236 `"Fair rides and amusement parks"', add
label define fr06a_ind700n_lbl 9239 `"Miscellaneous show business/entertainment activities"', add
label define fr06a_ind700n_lbl 9249 `"Press agencies"', add
label define fr06a_ind700n_lbl 9251 `"Library management"', add
label define fr06a_ind700n_lbl 9253 `"Cultural heritage management"', add
label define fr06a_ind700n_lbl 9255 `"Natural heritage management"', add
label define fr06a_ind700n_lbl 9261 `"Management of sports facilities"', add
label define fr06a_ind700n_lbl 9263 `"Other sports activities"', add
label define fr06a_ind700n_lbl 9271 `"Gambling"', add
label define fr06a_ind700n_lbl 9273 `"Other recreational activities"', add
label define fr06a_ind700n_lbl 9301 `"Laundry - wholesale dry cleaning"', add
label define fr06a_ind700n_lbl 9302 `"Laundry - retail dry cleaning"', add
label define fr06a_ind700n_lbl 9303 `"Hairstyling"', add
label define fr06a_ind700n_lbl 9304 `"Beauty care"', add
label define fr06a_ind700n_lbl 9305 `"Preparation of the deceased"', add
label define fr06a_ind700n_lbl 9306 `"Undertakers"', add
label define fr06a_ind700n_lbl 9307 `"Thermal activities and mineral springs"', add
label define fr06a_ind700n_lbl 9308 `"Other body care"', add
label define fr06a_ind700n_lbl 9309 `"Other personal services"', add
label define fr06a_ind700n_lbl 9650 `"Household activities as an employer of domestic personnel"', add
label define fr06a_ind700n_lbl 9660 `"Undifferentiated household activities as producers of personal goods"', add
label define fr06a_ind700n_lbl 9670 `"Undifferentiated household activities as producers of personal services"', add
label define fr06a_ind700n_lbl 9700 `"Extra-territorial activities"', add
label define fr06a_ind700n_lbl 9999 `"NIU (not in universe)"', add
label values fr06a_ind700n fr06a_ind700n_lbl

label define fr06a_ind17_lbl 01 `"Agriculture, hunting, forestry"'
label define fr06a_ind17_lbl 02 `"Fishing, aquaculture and related services"', add
label define fr06a_ind17_lbl 03 `"Extractive industries"', add
label define fr06a_ind17_lbl 04 `"Manufacturing industries"', add
label define fr06a_ind17_lbl 05 `"Production and distribution of electricity, gas and water"', add
label define fr06a_ind17_lbl 06 `"Construction"', add
label define fr06a_ind17_lbl 07 `"Trade; repair of automobiles and domestic items"', add
label define fr06a_ind17_lbl 08 `"Hotels and restaurants"', add
label define fr06a_ind17_lbl 09 `"Transport and communications"', add
label define fr06a_ind17_lbl 10 `"Financial activities"', add
label define fr06a_ind17_lbl 11 `"Buildings, rental and service to businesses"', add
label define fr06a_ind17_lbl 12 `"Public administration"', add
label define fr06a_ind17_lbl 13 `"Education"', add
label define fr06a_ind17_lbl 14 `"Health and social welfare"', add
label define fr06a_ind17_lbl 15 `"Collective, social and personnel services"', add
label define fr06a_ind17_lbl 16 `"Household activities"', add
label define fr06a_ind17_lbl 17 `"Extraterritorial activities"', add
label define fr06a_ind17_lbl 99 `"NIU (not in universe)"', add
label values fr06a_ind17 fr06a_ind17_lbl

label define fr06a_bplterr_lbl 00 `"Born in metropolitan France"'
label define fr06a_bplterr_lbl 11 `"Born in Guadeloupe"', add
label define fr06a_bplterr_lbl 12 `"Born in Martinique"', add
label define fr06a_bplterr_lbl 13 `"Born in French Guiana"', add
label define fr06a_bplterr_lbl 14 `"Born in Reunion"', add
label define fr06a_bplterr_lbl 15 `"Born in Saint Pierre"', add
label define fr06a_bplterr_lbl 16 `"Born in Mayotte"', add
label define fr06a_bplterr_lbl 17 `"Born in French Polynesia"', add
label define fr06a_bplterr_lbl 18 `"Born in New Caledonia"', add
label define fr06a_bplterr_lbl 19 `"Born in Wallis and Futuna"', add
label define fr06a_bplterr_lbl 20 `"Born in Saint Barthelemy"', add
label define fr06a_bplterr_lbl 21 `"Born in Saint Martin"', add
label define fr06a_bplterr_lbl 30 `"Outside of metropolitan France, overseas departments and overseas states"', add
label values fr06a_bplterr fr06a_bplterr_lbl

label define fr06a_nation49_lbl 012 `"Algerians"'
label define fr06a_nation49_lbl 024 `"Angolans"', add
label define fr06a_nation49_lbl 056 `"Belgians"', add
label define fr06a_nation49_lbl 076 `"Brazilians"', add
label define fr06a_nation49_lbl 116 `"Cambodians"', add
label define fr06a_nation49_lbl 120 `"Cameroonians"', add
label define fr06a_nation49_lbl 124 `"Canadians"', add
label define fr06a_nation49_lbl 144 `"Sri Lankans"', add
label define fr06a_nation49_lbl 156 `"Chinese"', add
label define fr06a_nation49_lbl 170 `"Colombians"', add
label define fr06a_nation49_lbl 174 `"Comorian"', add
label define fr06a_nation49_lbl 178 `"Congolese"', add
label define fr06a_nation49_lbl 180 `"Zairians"', add
label define fr06a_nation49_lbl 276 `"Germans"', add
label define fr06a_nation49_lbl 324 `"Guinean"', add
label define fr06a_nation49_lbl 332 `"Haitian"', add
label define fr06a_nation49_lbl 356 `"Indians"', add
label define fr06a_nation49_lbl 380 `"Italians"', add
label define fr06a_nation49_lbl 384 `"Ivorians"', add
label define fr06a_nation49_lbl 392 `"Japanese"', add
label define fr06a_nation49_lbl 422 `"Lebanese"', add
label define fr06a_nation49_lbl 450 `"Madagascarian"', add
label define fr06a_nation49_lbl 466 `"Malians"', add
label define fr06a_nation49_lbl 478 `"Mauritanians"', add
label define fr06a_nation49_lbl 480 `"Mauritian"', add
label define fr06a_nation49_lbl 504 `"Moroccans"', add
label define fr06a_nation49_lbl 528 `"Dutch"', add
label define fr06a_nation49_lbl 586 `"Pakistanis"', add
label define fr06a_nation49_lbl 616 `"Poles"', add
label define fr06a_nation49_lbl 620 `"Portuguese"', add
label define fr06a_nation49_lbl 642 `"Romanians"', add
label define fr06a_nation49_lbl 643 `"Russians"', add
label define fr06a_nation49_lbl 686 `"Senegalese"', add
label define fr06a_nation49_lbl 688 `"Serbians"', add
label define fr06a_nation49_lbl 704 `"Vietnamese"', add
label define fr06a_nation49_lbl 724 `"Spaniards"', add
label define fr06a_nation49_lbl 756 `"Swiss"', add
label define fr06a_nation49_lbl 788 `"Tunisians"', add
label define fr06a_nation49_lbl 792 `"Turks"', add
label define fr06a_nation49_lbl 826 `"British"', add
label define fr06a_nation49_lbl 840 `"Americans (USA)"', add
label define fr06a_nation49_lbl 890 `"Other African nationalities"', add
label define fr06a_nation49_lbl 891 `"Other American nationalities (excluding Caribbean)"', add
label define fr06a_nation49_lbl 892 `"Other nationalities from Asia Oceania"', add
label define fr06a_nation49_lbl 893 `"Other nationalities from the Caribbean islands"', add
label define fr06a_nation49_lbl 895 `"Other nationalities from Europe (excluding European Union)"', add
label define fr06a_nation49_lbl 997 `"French by birth"', add
label define fr06a_nation49_lbl 998 `"French through acquisition"', add
label values fr06a_nation49 fr06a_nation49_lbl

label define fr06a_nationcnd_lbl 0 `"French by birth"'
label define fr06a_nationcnd_lbl 1 `"French through acquisition"', add
label define fr06a_nationcnd_lbl 2 `"Other nationalities in the European Union (27 countries)"', add
label define fr06a_nationcnd_lbl 3 `"Other European nationalities"', add
label define fr06a_nationcnd_lbl 4 `"African nationalities"', add
label define fr06a_nationcnd_lbl 5 `"Asian nationalities"', add
label define fr06a_nationcnd_lbl 6 `"American nationalities"', add
label define fr06a_nationcnd_lbl 7 `"Nationalities from Australia or Oceania"', add
label values fr06a_nationcnd fr06a_nationcnd_lbl

label define fr06a_nat49c_lbl 012 `"Algerians"'
label define fr06a_nat49c_lbl 024 `"Angolans"', add
label define fr06a_nat49c_lbl 056 `"Belgians"', add
label define fr06a_nat49c_lbl 076 `"Brazilians"', add
label define fr06a_nat49c_lbl 116 `"Cambodians"', add
label define fr06a_nat49c_lbl 120 `"Cameroonians"', add
label define fr06a_nat49c_lbl 124 `"Canadians"', add
label define fr06a_nat49c_lbl 144 `"Sri Lankans"', add
label define fr06a_nat49c_lbl 156 `"Chinese"', add
label define fr06a_nat49c_lbl 170 `"Colombians"', add
label define fr06a_nat49c_lbl 174 `"Comorian"', add
label define fr06a_nat49c_lbl 178 `"Congolese"', add
label define fr06a_nat49c_lbl 180 `"Zairians"', add
label define fr06a_nat49c_lbl 276 `"Germans"', add
label define fr06a_nat49c_lbl 324 `"Guineans"', add
label define fr06a_nat49c_lbl 332 `"Haitians"', add
label define fr06a_nat49c_lbl 356 `"Indians (West)"', add
label define fr06a_nat49c_lbl 380 `"Italians"', add
label define fr06a_nat49c_lbl 384 `"Ivorians"', add
label define fr06a_nat49c_lbl 392 `"Japanese"', add
label define fr06a_nat49c_lbl 422 `"Lebanese"', add
label define fr06a_nat49c_lbl 450 `"People from Madagascar"', add
label define fr06a_nat49c_lbl 466 `"Malians"', add
label define fr06a_nat49c_lbl 478 `"Mauritanians"', add
label define fr06a_nat49c_lbl 480 `"Mauritian"', add
label define fr06a_nat49c_lbl 504 `"Moroccans"', add
label define fr06a_nat49c_lbl 528 `"Dutch"', add
label define fr06a_nat49c_lbl 586 `"Pakistanis"', add
label define fr06a_nat49c_lbl 616 `"Polish"', add
label define fr06a_nat49c_lbl 620 `"Portuguese"', add
label define fr06a_nat49c_lbl 642 `"Romanians"', add
label define fr06a_nat49c_lbl 643 `"Russians"', add
label define fr06a_nat49c_lbl 686 `"Senegalese"', add
label define fr06a_nat49c_lbl 688 `"Serbians"', add
label define fr06a_nat49c_lbl 704 `"Vietnamese"', add
label define fr06a_nat49c_lbl 724 `"Spaniards"', add
label define fr06a_nat49c_lbl 756 `"Swiss"', add
label define fr06a_nat49c_lbl 788 `"Tunisians"', add
label define fr06a_nat49c_lbl 792 `"Turks"', add
label define fr06a_nat49c_lbl 826 `"British"', add
label define fr06a_nat49c_lbl 840 `"Americans (USA)"', add
label define fr06a_nat49c_lbl 890 `"Other African nationalities"', add
label define fr06a_nat49c_lbl 891 `"Other American nationalities (excluding Caribbean islands)"', add
label define fr06a_nat49c_lbl 892 `"Nationalities from Asia or Oceania"', add
label define fr06a_nat49c_lbl 893 `"Other nationalities from the Caribbean islands"', add
label define fr06a_nat49c_lbl 895 `"Other European nationalities (excluding European Union)"', add
label define fr06a_nat49c_lbl 997 `"French by birth"', add
label define fr06a_nat49c_lbl 999 `"Foreigners"', add
label values fr06a_nat49c fr06a_nat49c_lbl

label define fr06a_nat12c_lbl 01 `"French nationality"'
label define fr06a_nat12c_lbl 02 `"Portuguese"', add
label define fr06a_nat12c_lbl 03 `"Italians"', add
label define fr06a_nat12c_lbl 04 `"Spaniards"', add
label define fr06a_nat12c_lbl 05 `"Other nationalities from the European Union (27 countries)"', add
label define fr06a_nat12c_lbl 06 `"Other nationalities from Europe"', add
label define fr06a_nat12c_lbl 07 `"Algerians"', add
label define fr06a_nat12c_lbl 08 `"Moroccans"', add
label define fr06a_nat12c_lbl 09 `"Tunisians"', add
label define fr06a_nat12c_lbl 10 `"Other African nationalities"', add
label define fr06a_nat12c_lbl 11 `"Turks"', add
label define fr06a_nat12c_lbl 12 `"Other nationalities"', add
label define fr06a_nat12c_lbl 99 `"Foreigners"', add
label values fr06a_nat12c fr06a_nat12c_lbl

label define fr06a_nationc_lbl 1 `"French by birth"'
label define fr06a_nationc_lbl 2 `"Other nationalities from the European Union (27 countries)"', add
label define fr06a_nationc_lbl 3 `"Other European nationalities"', add
label define fr06a_nationc_lbl 4 `"African nationalities"', add
label define fr06a_nationc_lbl 5 `"Asian nationalities"', add
label define fr06a_nationc_lbl 6 `"American nationalities"', add
label define fr06a_nationc_lbl 7 `"Nationalities from Australia or Oceania"', add
label define fr06a_nationc_lbl 9 `"Foreigners"', add
label values fr06a_nationc fr06a_nationc_lbl

label define fr06a_ind114_lbl 0101 `"Agriculture, hunting and related services"'
label define fr06a_ind114_lbl 0102 `"Forestry, forest farming and related services"', add
label define fr06a_ind114_lbl 0103 `"Fishing, aquaculture"', add
label define fr06a_ind114_lbl 0201 `"Meat industry"', add
label define fr06a_ind114_lbl 0202 `"Dairy industry"', add
label define fr06a_ind114_lbl 0203 `"Beverage industry"', add
label define fr06a_ind114_lbl 0204 `"Working with grains, production of animal food"', add
label define fr06a_ind114_lbl 0205 `"Various food industries"', add
label define fr06a_ind114_lbl 0206 `"Tobacco industries"', add
label define fr06a_ind114_lbl 0311 `"Clothing and fur industry"', add
label define fr06a_ind114_lbl 0312 `"Leather and footwear industries"', add
label define fr06a_ind114_lbl 0320 `"Editing, printing, copying"', add
label define fr06a_ind114_lbl 0331 `"Pharmaceutical industry"', add
label define fr06a_ind114_lbl 0332 `"Manufacture of soaps, perfumes, and cleaning products"', add
label define fr06a_ind114_lbl 0341 `"Furniture manufacture"', add
label define fr06a_ind114_lbl 0342 `"Jewelry industry and production of [text cut off ] instruments"', add
label define fr06a_ind114_lbl 0343 `"Production of sports articles, games and miscellaneous industries"', add
label define fr06a_ind114_lbl 0344 `"Production of domestic appliances"', add
label define fr06a_ind114_lbl 0345 `"Production of reception, recording and reproduction devices (sound, image)"', add
label define fr06a_ind114_lbl 0346 `"Production of optic and photographic equipment"', add
label define fr06a_ind114_lbl 0401 `"Automobile construction"', add
label define fr06a_ind114_lbl 0402 `"Production of automobile parts and accessories"', add
label define fr06a_ind114_lbl 0511 `"Naval construction"', add
label define fr06a_ind114_lbl 0512 `"Construction of rolling railroad stock"', add
label define fr06a_ind114_lbl 0513 `"Aeronautic and aerospace construction"', add
label define fr06a_ind114_lbl 0514 `"Production of bicycles, motorcycles and transportation equipment not classified elsewhere"', add
label define fr06a_ind114_lbl 0521 `"Production of metal parts for construction industry"', add
label define fr06a_ind114_lbl 0522 `"Boilermaking industry, production of metal reservoirs and boilers"', add
label define fr06a_ind114_lbl 0523 `"Production of mechanical equipment"', add
label define fr06a_ind114_lbl 0524 `"Production of machines for general use"', add
label define fr06a_ind114_lbl 0525 `"Production of agricultural machines"', add
label define fr06a_ind114_lbl 0526 `"Fabrication of machine tools"', add
label define fr06a_ind114_lbl 0527 `"Production of other special-purpose machines"', add
label define fr06a_ind114_lbl 0528 `"Production of arms and munitions"', add
label define fr06a_ind114_lbl 0531 `"Production of office machines and equipment"', add
label define fr06a_ind114_lbl 0532 `"Production of motors, generators and electric transformers"', add
label define fr06a_ind114_lbl 0533 `"Production of receiving and broadcasting apparatuses"', add
label define fr06a_ind114_lbl 0534 `"Production of medico-surgical and orthodontic equipment"', add
label define fr06a_ind114_lbl 0535 `"Production of measuring and testing equipment"', add
label define fr06a_ind114_lbl 0611 `"Metal minerals extraction"', add
label define fr06a_ind114_lbl 0612 `"Other extractive industries"', add
label define fr06a_ind114_lbl 0613 `"Production of glass and glass articles"', add
label define fr06a_ind114_lbl 0614 `"Production of ceramic products and construction materials"', add
label define fr06a_ind114_lbl 0621 `"Spinning and weaving"', add
label define fr06a_ind114_lbl 0622 `"Production of textile products"', add
label define fr06a_ind114_lbl 0623 `"Production of knit fabrics and knitwear"', add
label define fr06a_ind114_lbl 0631 `"Woodworking and production of wooden items"', add
label define fr06a_ind114_lbl 0632 `"Production of paper paste, paper and cardboard"', add
label define fr06a_ind114_lbl 0633 `"Production of articles in paper or cardboard"', add
label define fr06a_ind114_lbl 0641 `"Mineral chemical industry"', add
label define fr06a_ind114_lbl 0642 `"Organic chemical industry"', add
label define fr06a_ind114_lbl 0643 `"Parachemistry"', add
label define fr06a_ind114_lbl 0644 `"Production of artificial or synthetic fibers"', add
label define fr06a_ind114_lbl 0645 `"Rubber industry"', add
label define fr06a_ind114_lbl 0646 `"Plastics processing"', add
label define fr06a_ind114_lbl 0651 `"Steel industry, primary steel processing"', add
label define fr06a_ind114_lbl 0652 `"Production of non-ferrous metals"', add
label define fr06a_ind114_lbl 0653 `"Foundry"', add
label define fr06a_ind114_lbl 0654 `"Industrial metalworking services"', add
label define fr06a_ind114_lbl 0655 `"Production of metal products"', add
label define fr06a_ind114_lbl 0656 `"Reclamation"', add
label define fr06a_ind114_lbl 0661 `"Production of electric equipment/equipment"', add
label define fr06a_ind114_lbl 0662 `"Production of electronic components"', add
label define fr06a_ind114_lbl 0711 `"Coal, lignite and peat extraction"', add
label define fr06a_ind114_lbl 0712 `"Hydrocarbon extraction; related services"', add
label define fr06a_ind114_lbl 0713 `"Uranium ore extraction"', add
label define fr06a_ind114_lbl 0714 `"Coking and nuclear industry"', add
label define fr06a_ind114_lbl 0715 `"Petroleum refining"', add
label define fr06a_ind114_lbl 0721 `"Production and distribution of electricity, gas and heat"', add
label define fr06a_ind114_lbl 0722 `"Catchment, treatment and distribution of water"', add
label define fr06a_ind114_lbl 0801 `"Building"', add
label define fr06a_ind114_lbl 0802 `"Public works"', add
label define fr06a_ind114_lbl 0910 `"Automobile sales and repair"', add
label define fr06a_ind114_lbl 0920 `"Wholesale, intermediate trade"', add
label define fr06a_ind114_lbl 0931 `"Very large stores selling predominantly food"', add
label define fr06a_ind114_lbl 0932 `"Grocery stores, specialized and non-specialized"', add
label define fr06a_ind114_lbl 0933 `"Other retail sales, in store or out, repairs"', add
label define fr06a_ind114_lbl 1001 `"Rail transport"', add
label define fr06a_ind114_lbl 1002 `"Road transport of passengers"', add
label define fr06a_ind114_lbl 1003 `"Road (or pipeline) merchandise transport"', add
label define fr06a_ind114_lbl 1004 `"Water transport"', add
label define fr06a_ind114_lbl 1005 `"Air transport"', add
label define fr06a_ind114_lbl 1006 `"Space transport"', add
label define fr06a_ind114_lbl 1007 `"Handling, storage and infrastructure management"', add
label define fr06a_ind114_lbl 1008 `"Travel agencies"', add
label define fr06a_ind114_lbl 1009 `"Organizing freight transport"', add
label define fr06a_ind114_lbl 1101 `"Financial intermediation"', add
label define fr06a_ind114_lbl 1102 `"Insurance"', add
label define fr06a_ind114_lbl 1103 `"Finance and insurance ancillaries"', add
label define fr06a_ind114_lbl 1201 `"Real estate development, management"', add
label define fr06a_ind114_lbl 1202 `"Real estate rental"', add
label define fr06a_ind114_lbl 1311 `"Post office activities"', add
label define fr06a_ind114_lbl 1312 `"Telecommunication"', add
label define fr06a_ind114_lbl 1321 `"Computing activities"', add
label define fr06a_ind114_lbl 1322 `"Professional services"', add
label define fr06a_ind114_lbl 1323 `"Business administration"', add
label define fr06a_ind114_lbl 1324 `"Advertising and market studies"', add
label define fr06a_ind114_lbl 1325 `"Architecture, engineering, [monitoring/testing]"', add
label define fr06a_ind114_lbl 1331 `"Rental without operator"', add
label define fr06a_ind114_lbl 1332 `"Personnel selection and supply"', add
label define fr06a_ind114_lbl 1333 `"Business security, cleaning and miscellaneous services"', add
label define fr06a_ind114_lbl 1334 `"Waste decontamination, collection and management"', add
label define fr06a_ind114_lbl 1340 `"Research and development"', add
label define fr06a_ind114_lbl 1510 `"Hotels and restaurants"', add
label define fr06a_ind114_lbl 1521 `"Audiovisual activities"', add
label define fr06a_ind114_lbl 1522 `"Other recreational, cultural and sporting activities"', add
label define fr06a_ind114_lbl 1531 `"Personnel services"', add
label define fr06a_ind114_lbl 1532 `"Domestic services"', add
label define fr06a_ind114_lbl 1610 `"Education"', add
label define fr06a_ind114_lbl 1621 `"Activities related to health"', add
label define fr06a_ind114_lbl 1622 `"Social welfare"', add
label define fr06a_ind114_lbl 1710 `"Public administration"', add
label define fr06a_ind114_lbl 1721 `"Community activities"', add
label define fr06a_ind114_lbl 1722 `"Extra-territorial activities"', add
label define fr06a_ind114_lbl 9999 `"NIU (not in universe)"', add
label values fr06a_ind114 fr06a_ind114_lbl

label define fr06a_ind36_lbl 001 `"Agriculture, forestry, fishing"'
label define fr06a_ind36_lbl 002 `"Agricultural and food industries"', add
label define fr06a_ind36_lbl 031 `"Clothing, leather"', add
label define fr06a_ind36_lbl 032 `"Editing, printing, copying"', add
label define fr06a_ind36_lbl 033 `"Pharmacy, perfumery and cleaning [products]"', add
label define fr06a_ind36_lbl 034 `"Household equipment industries"', add
label define fr06a_ind36_lbl 040 `"Automobile industry"', add
label define fr06a_ind36_lbl 051 `"Naval, aeronautical and railway construction"', add
label define fr06a_ind36_lbl 052 `"Mechanical equipment industries"', add
label define fr06a_ind36_lbl 053 `"Electric and electronic equipment industries"', add
label define fr06a_ind36_lbl 061 `"Mineral products industries"', add
label define fr06a_ind36_lbl 062 `"Textile industry"', add
label define fr06a_ind36_lbl 063 `"Wood and paper industries"', add
label define fr06a_ind36_lbl 064 `"Chemistry, rubber, plastics"', add
label define fr06a_ind36_lbl 065 `"Metallurgy and metal processing"', add
label define fr06a_ind36_lbl 066 `"Electric and electronic component industries"', add
label define fr06a_ind36_lbl 071 `"Fuel production"', add
label define fr06a_ind36_lbl 072 `"Water, gas, electricity"', add
label define fr06a_ind36_lbl 080 `"Construction"', add
label define fr06a_ind36_lbl 091 `"Automobile sales and repair"', add
label define fr06a_ind36_lbl 092 `"Wholesale, intermediate sales"', add
label define fr06a_ind36_lbl 093 `"Retail sales, repairs"', add
label define fr06a_ind36_lbl 100 `"Transport"', add
label define fr06a_ind36_lbl 110 `"Financial activities"', add
label define fr06a_ind36_lbl 120 `"Real estate activities"', add
label define fr06a_ind36_lbl 131 `"Post office and telecommunications"', add
label define fr06a_ind36_lbl 132 `"Advice and assistance"', add
label define fr06a_ind36_lbl 133 `"Operations' services"', add
label define fr06a_ind36_lbl 134 `"Research and development"', add
label define fr06a_ind36_lbl 151 `"Hotels and restaurants"', add
label define fr06a_ind36_lbl 152 `"Recreational, cultural and sporting activities"', add
label define fr06a_ind36_lbl 153 `"Personnel and domestic services"', add
label define fr06a_ind36_lbl 161 `"Education"', add
label define fr06a_ind36_lbl 162 `"Health, social welfare"', add
label define fr06a_ind36_lbl 171 `"Public administration"', add
label define fr06a_ind36_lbl 172 `"Community and extra-territorial activities"', add
label define fr06a_ind36_lbl 999 `"NIU (not in universe)"', add
label values fr06a_ind36 fr06a_ind36_lbl

label define fr06a_primfam_lbl 1 `"Member of principal family"'
label define fr06a_primfam_lbl 2 `"Member of secondary family"', add
label define fr06a_primfam_lbl 9 `"NIU (not in universe)"', add
label values fr06a_primfam fr06a_primfam_lbl

label define fr06a_bplterrit_lbl 11 `"Native of Guadeloupe"'
label define fr06a_bplterrit_lbl 12 `"Native of Martinique"', add
label define fr06a_bplterrit_lbl 13 `"Native of French Guiana"', add
label define fr06a_bplterrit_lbl 14 `"Native of Reunion"', add
label define fr06a_bplterrit_lbl 15 `"Native of Saint Pierre and Miquelon"', add
label define fr06a_bplterrit_lbl 16 `"Native of Mayotte"', add
label define fr06a_bplterrit_lbl 17 `"Native of French Polynesia"', add
label define fr06a_bplterrit_lbl 18 `"Native of New Caledonia"', add
label define fr06a_bplterrit_lbl 19 `"Native of Wallis and Futuna"', add
label define fr06a_bplterrit_lbl 20 `"Saint Barthelemy"', add
label define fr06a_bplterrit_lbl 21 `"Saint Martin"', add
label define fr06a_bplterrit_lbl 99 `"Not native of overseas department or territory"', add
label values fr06a_bplterrit fr06a_bplterrit_lbl

label define fr06a_bplfor12_lbl 01 `"Metropolitan France and overseas departments and territories"'
label define fr06a_bplfor12_lbl 02 `"Portugal"', add
label define fr06a_bplfor12_lbl 03 `"Italy"', add
label define fr06a_bplfor12_lbl 04 `"Spain"', add
label define fr06a_bplfor12_lbl 05 `"Other countries from the European Union (27 countries)"', add
label define fr06a_bplfor12_lbl 06 `"Other European countries"', add
label define fr06a_bplfor12_lbl 07 `"Algeria"', add
label define fr06a_bplfor12_lbl 08 `"Morocco"', add
label define fr06a_bplfor12_lbl 09 `"Tunisia"', add
label define fr06a_bplfor12_lbl 10 `"Other African countries"', add
label define fr06a_bplfor12_lbl 11 `"Turkey"', add
label define fr06a_bplfor12_lbl 12 `"Other countries"', add
label values fr06a_bplfor12 fr06a_bplfor12_lbl

label define fr06a_prof486_lbl 1110 `"Small cereal farmers"'
label define fr06a_prof486_lbl 1111 `"Truck farmers,  horticulturalists small farms"', add
label define fr06a_prof486_lbl 1112 `"Vintners, tree farmers small farms"', add
label define fr06a_prof486_lbl 1113 `"Small farmers of herbivores"', add
label define fr06a_prof486_lbl 1114 `"Small farmer of granivorous animals"', add
label define fr06a_prof486_lbl 1115 `"Farmers on small farms"', add
label define fr06a_prof486_lbl 1210 `"Medium sized cereal farmers"', add
label define fr06a_prof486_lbl 1211 `"Truck farmers, horticulturalists medium-size farm"', add
label define fr06a_prof486_lbl 1212 `"Vintner medium-size farms"', add
label define fr06a_prof486_lbl 1213 `"Herbivorous animal farmers - small farms"', add
label define fr06a_prof486_lbl 1214 `"Granivorous animal farmers - medium-size farms"', add
label define fr06a_prof486_lbl 1215 `"Farmers on medium-size farm"', add
label define fr06a_prof486_lbl 1220 `"Agricultural entrepreneurs 0-9 paid employees"', add
label define fr06a_prof486_lbl 1221 `"Loggers 0-9 paid employees"', add
label define fr06a_prof486_lbl 1222 `"Fishing boat skippers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 1310 `"Cereal farmers on large farms"', add
label define fr06a_prof486_lbl 1311 `"Truck farmers,  horticulturalists large farms"', add
label define fr06a_prof486_lbl 1312 `"Vintners, tree farmers large farm"', add
label define fr06a_prof486_lbl 1313 `"Herbivorous-animal farmers large farms"', add
label define fr06a_prof486_lbl 1314 `"Granivorous animal farmers large farms"', add
label define fr06a_prof486_lbl 1315 `"Farmers on large farms"', add
label define fr06a_prof486_lbl 2110 `"Skilled masons"', add
label define fr06a_prof486_lbl 2111 `"Skilled building joiners and carpenters"', add
label define fr06a_prof486_lbl 2112 `"Skilled roofers"', add
label define fr06a_prof486_lbl 2113 `"Skilled plumbers, heating engineers"', add
label define fr06a_prof486_lbl 2114 `"Skilled building electricians"', add
label define fr06a_prof486_lbl 2115 `"Skilled painters and building finishers"', add
label define fr06a_prof486_lbl 2116 `"Skilled locksmiths and metal-finishing workers in buildings"', add
label define fr06a_prof486_lbl 2117 `"Skilled excavators, public works"', add
label define fr06a_prof486_lbl 2119 `"Skilled park and garden workers, landscapers"', add
label define fr06a_prof486_lbl 2120 `"Skilled mechanics on agricultural machines"', add
label define fr06a_prof486_lbl 2121 `"Skilled boiler makers"', add
label define fr06a_prof486_lbl 2122 `"Skilled metal workers in clock making"', add
label define fr06a_prof486_lbl 2123 `"Miscellaneous skilled workers machine making"', add
label define fr06a_prof486_lbl 2130 `"Skilled workers in clothing, textiles and leather"', add
label define fr06a_prof486_lbl 2140 `"Skilled furniture makers"', add
label define fr06a_prof486_lbl 2141 `"Skilled mechanical wood workers"', add
label define fr06a_prof486_lbl 2142 `"Skilled workers in paper, printing and copying"', add
label define fr06a_prof486_lbl 2143 `"Skilled workers in construction materials"', add
label define fr06a_prof486_lbl 2144 `"Master craftspeople"', add
label define fr06a_prof486_lbl 2145 `"Other craftspeople (including watch/clock makers)"', add
label define fr06a_prof486_lbl 2150 `"Bread and pastry makers 0-9 paid employees"', add
label define fr06a_prof486_lbl 2151 `"Skilled butchers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2152 `"Skilled pork butchers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2153 `"Other skilled food workers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2160 `"Skilled radio repair mechanics"', add
label define fr06a_prof486_lbl 2161 `"Skilled auto body workers"', add
label define fr06a_prof486_lbl 2162 `"Skilled miscellaneous repair people"', add
label define fr06a_prof486_lbl 2170 `"Skilled transport workers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2171 `"Skilled movers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2172 `"Skilled hairdressers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2173 `"Skilled dry cleaners/dyers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2174 `"Service craftspeople, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2180 `"River transport drivers 0-9 paid employees"', add
label define fr06a_prof486_lbl 2190 `"Family helpers of skilled workers"', add
label define fr06a_prof486_lbl 2210 `"Food wholesaler/dealer, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2211 `"Non-food wholesaler/dealer, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2220 `"Food retailers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2221 `"Food retailers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2230 `"Furniture retailers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2231 `"Hardware retailers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2232 `"Florists, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2233 `"Clothing retailers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2234 `"Luxury products retailers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2235 `"Cultural goods retailers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2236 `"Tobacco and press retailers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2237 `"Service station operators, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2240 `"Cafe/diner operators, 0-2 paid employees"', add
label define fr06a_prof486_lbl 2241 `"Operators of small cafés, from 0-2 paid employees"', add
label define fr06a_prof486_lbl 2242 `"Operators of hotel restaurants, from 0-2 paid employees"', add
label define fr06a_prof486_lbl 2243 `"Operators of hotel restaurants, from 3-9 paid employees"', add
label define fr06a_prof486_lbl 2250 `"Business intermediaries from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2260 `"Insurance agents, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2261 `"Travel agents, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2262 `"Real estate agents from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2270 `"Self-employed in show business/entertainment, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2271 `"Self-employed teaching, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2272 `"Astrologers, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2273 `"Self employed in service industries, from 0-9 paid employees"', add
label define fr06a_prof486_lbl 2310 `"Heads of companies with 500 paid employees or more"', add
label define fr06a_prof486_lbl 2320 `"Heads of companies with 50-499 paid employees"', add
label define fr06a_prof486_lbl 2330 `"Heads of building and public works companies with 10-49 paid employees"', add
label define fr06a_prof486_lbl 2331 `"Heads of companies with 10-49 paid employees"', add
label define fr06a_prof486_lbl 2332 `"Heads of sales, from 10-49 paid employees"', add
label define fr06a_prof486_lbl 2333 `"Heads of service companies 10-49 paid employees"', add
label define fr06a_prof486_lbl 3110 `"Specialty self-employed physicians"', add
label define fr06a_prof486_lbl 3111 `"General practice self-employed physicians"', add
label define fr06a_prof486_lbl 3112 `"Oral surgeons"', add
label define fr06a_prof486_lbl 3113 `"Psychologists and psychoanalysts who are not medical doctors"', add
label define fr06a_prof486_lbl 3114 `"Veterinarians (self-employed or paid employee)"', add
label define fr06a_prof486_lbl 3115 `"Self-employed pharmacists"', add
label define fr06a_prof486_lbl 3120 `"Lawyers"', add
label define fr06a_prof486_lbl 3121 `"Legal personnel with jurisdiction to draft wills, contracts, etc."', add
label define fr06a_prof486_lbl 3122 `"Self-employed CPAs"', add
label define fr06a_prof486_lbl 3123 `"Self-employed economic advisors"', add
label define fr06a_prof486_lbl 3124 `"Self-employed technical advisors in engineering"', add
label define fr06a_prof486_lbl 3125 `"Self-employed architects"', add
label define fr06a_prof486_lbl 3126 `"Land surveyors, bailiffs"', add
label define fr06a_prof486_lbl 3130 `"Self-employed family helpers (administrative)"', add
label define fr06a_prof486_lbl 3310 `"Civil service management personnel"', add
label define fr06a_prof486_lbl 3320 `"Engineers with a nationally recognized certification"', add
label define fr06a_prof486_lbl 3321 `"Local government, hospital engineers"', add
label define fr06a_prof486_lbl 3330 `"Magistrates/judicial officers"', add
label define fr06a_prof486_lbl 3331 `"Category A tax personnel"', add
label define fr06a_prof486_lbl 3332 `"Post office executives"', add
label define fr06a_prof486_lbl 3333 `"France Telecom (public company) executives"', add
label define fr06a_prof486_lbl 3334 `"Category A state civil service executives excluding teaching, taxes"', add
label define fr06a_prof486_lbl 3335 `"Category A local government civil service executives"', add
label define fr06a_prof486_lbl 3340 `"Military and police officers"', add
label define fr06a_prof486_lbl 3350 `"Authorized agents/proxies/brokers in politics, unions"', add
label define fr06a_prof486_lbl 3410 `"Certified secondary instructors who have passed a highly competitive civil service exam"', add
label define fr06a_prof486_lbl 3411 `"Secondary school director"', add
label define fr06a_prof486_lbl 3420 `"Higher education instructors"', add
label define fr06a_prof486_lbl 3424 `"Public research researchers"', add
label define fr06a_prof486_lbl 3430 `"School [guidance] psychologists"', add
label define fr06a_prof486_lbl 3440 `"Non self-employed hospital physicians"', add
label define fr06a_prof486_lbl 3441 `"Non-hospital doctors who are paid employees"', add
label define fr06a_prof486_lbl 3442 `"Medical, odontology and pharmacy interns"', add
label define fr06a_prof486_lbl 3443 `"Pharmacists who are paid employees"', add
label define fr06a_prof486_lbl 3510 `"Civil service librarians"', add
label define fr06a_prof486_lbl 3520 `"Journalists (including editors)"', add
label define fr06a_prof486_lbl 3521 `"Other literary fields, script writers"', add
label define fr06a_prof486_lbl 3530 `"Newspaper, publishing directors"', add
label define fr06a_prof486_lbl 3531 `"Audiovisual and show business/entertainment directors"', add
label define fr06a_prof486_lbl 3532 `"Executives in the arts, audiovisual fields, show business/entertainment"', add
label define fr06a_prof486_lbl 3540 `"Artists in the plastic arts"', add
label define fr06a_prof486_lbl 3541 `"Musicians and singers"', add
label define fr06a_prof486_lbl 3542 `"Artists in the dramatic arts"', add
label define fr06a_prof486_lbl 3543 `"Performers in dance and circuses"', add
label define fr06a_prof486_lbl 3546 `"Art teachers (outside academia)"', add
label define fr06a_prof486_lbl 3710 `"[Staff executives] large companies"', add
label define fr06a_prof486_lbl 3720 `"Executives in finance and economic studies"', add
label define fr06a_prof486_lbl 3721 `"Organizational executives administrative services"', add
label define fr06a_prof486_lbl 3722 `"Human resources recruiting executives"', add
label define fr06a_prof486_lbl 3723 `"Executives who are education specialists"', add
label define fr06a_prof486_lbl 3724 `"Lawyers/jurists"', add
label define fr06a_prof486_lbl 3725 `"Archival documentation executives excluding [FP]"', add
label define fr06a_prof486_lbl 3730 `"Financial executives large companies"', add
label define fr06a_prof486_lbl 3731 `"Administrative executives large companies"', add
label define fr06a_prof486_lbl 3732 `"Financial or accounting executives small and medium-sized companies"', add
label define fr06a_prof486_lbl 3733 `"Administrative services executives small and medium-sized companies"', add
label define fr06a_prof486_lbl 3740 `"Retail [operations] executive"', add
label define fr06a_prof486_lbl 3741 `"Product heads other marketing executives"', add
label define fr06a_prof486_lbl 3742 `"Sales executives large companies"', add
label define fr06a_prof486_lbl 3743 `"Sales executives small and medium-sized companies (excluding retail)"', add
label define fr06a_prof486_lbl 3750 `"Advertising executives"', add
label define fr06a_prof486_lbl 3751 `"Public relations and communications executives"', add
label define fr06a_prof486_lbl 3760 `"Financial markets executives"', add
label define fr06a_prof486_lbl 3761 `"Bank operations executives"', add
label define fr06a_prof486_lbl 3762 `"Commercial banking executives"', add
label define fr06a_prof486_lbl 3763 `"Company heads banking supervisors"', add
label define fr06a_prof486_lbl 3764 `"Insurance industry technical services executives"', add
label define fr06a_prof486_lbl 3765 `"Social security technical executives"', add
label define fr06a_prof486_lbl 3766 `"Real estate executives"', add
label define fr06a_prof486_lbl 3770 `"Hotel and food service industry executives"', add
label define fr06a_prof486_lbl 3800 `"Business technical directors"', add
label define fr06a_prof486_lbl 3810 `"Agriculture, fishing, waterways, forestry engineers"', add
label define fr06a_prof486_lbl 3820 `"Engineering executives public works' building study"', add
label define fr06a_prof486_lbl 3821 `"Architects who are paid employees"', add
label define fr06a_prof486_lbl 3822 `"Construction site managers - buildings and public works"', add
label define fr06a_prof486_lbl 3823 `"Technical sales engineering executives - buildings and public works"', add
label define fr06a_prof486_lbl 3830 `"Engineers in electricity, electronics"', add
label define fr06a_prof486_lbl 3831 `"Electric production engineering executives"', add
label define fr06a_prof486_lbl 3832 `"Technical sales engineering executives professional electric or electronic equipment"', add
label define fr06a_prof486_lbl 3840 `"Mechanical work metals engineers"', add
label define fr06a_prof486_lbl 3841 `"Mechanical work metals engineering executives"', add
label define fr06a_prof486_lbl 3842 `"Technical sales engineers professional mechanical equipment"', add
label define fr06a_prof486_lbl 3850 `"Processing industry engineers"', add
label define fr06a_prof486_lbl 3851 `"Agro-industry processing engineers"', add
label define fr06a_prof486_lbl 3852 `"Intermediate goods technical sales executives"', add
label define fr06a_prof486_lbl 3860 `"Engineers other industries"', add
label define fr06a_prof486_lbl 3863 `"Energy and water engineers and executives"', add
label define fr06a_prof486_lbl 3864 `"Production executives other industries"', add
label define fr06a_prof486_lbl 3870 `"Engineering executives industrial purchasing"', add
label define fr06a_prof486_lbl 3871 `"Engineering executives logistics, planning"', add
label define fr06a_prof486_lbl 3872 `"Engineering executives production methods"', add
label define fr06a_prof486_lbl 3873 `"Engineers and executives quality control"', add
label define fr06a_prof486_lbl 3874 `"Maintenance engineers"', add
label define fr06a_prof486_lbl 3875 `"Environmental engineers and technical executives"', add
label define fr06a_prof486_lbl 3880 `"Computer development executives"', add
label define fr06a_prof486_lbl 3881 `"Executives computer user services"', add
label define fr06a_prof486_lbl 3882 `"Computer project heads"', add
label define fr06a_prof486_lbl 3883 `"Technical sales executives computing"', add
label define fr06a_prof486_lbl 3884 `"Engineering executives telecommunications specialists"', add
label define fr06a_prof486_lbl 3890 `"Engineering technical executives transport"', add
label define fr06a_prof486_lbl 3891 `"Civil aviation navigation officers"', add
label define fr06a_prof486_lbl 3892 `"Technical officers merchant marine"', add
label define fr06a_prof486_lbl 4210 `"Primary school teachers"', add
label define fr06a_prof486_lbl 4211 `"School teachers"', add
label define fr06a_prof486_lbl 4220 `"High school/technical school general studies teachers"', add
label define fr06a_prof486_lbl 4221 `"Teachers at professional high schools"', add
label define fr06a_prof486_lbl 4222 `"Assistant secondary school teacher"', add
label define fr06a_prof486_lbl 4223 `"School counselors also responsible for discipline, attendance and certain educational and administrative tasks"', add
label define fr06a_prof486_lbl 4224 `"Classroom assistants and monitors"', add
label define fr06a_prof486_lbl 4230 `"Driving school teachers"', add
label define fr06a_prof486_lbl 4231 `"Trainers, leaders continuing education"', add
label define fr06a_prof486_lbl 4240 `"Sport teachers trainers [prof]"', add
label define fr06a_prof486_lbl 4250 `"Assistant librarian"', add
label define fr06a_prof486_lbl 4310 `"Nursing executive and related"', add
label define fr06a_prof486_lbl 4311 `"Psychiatric nurses"', add
label define fr06a_prof486_lbl 4312 `"Pediatric nurses"', add
label define fr06a_prof486_lbl 4313 `"Specialized nursing excluding psychiatry"', add
label define fr06a_prof486_lbl 4314 `"Midwives (self-employed or paid employees)"', add
label define fr06a_prof486_lbl 4315 `"General care nurses who are paid employees"', add
label define fr06a_prof486_lbl 4316 `"Self-employed nurses"', add
label define fr06a_prof486_lbl 4320 `"Massage therapists [physical therapists] - self employed"', add
label define fr06a_prof486_lbl 4321 `"Massage therapists [physical therapists] - paid employees"', add
label define fr06a_prof486_lbl 4322 `"Other rehabilitation therapists - self employed"', add
label define fr06a_prof486_lbl 4323 `"Other rehabilitation therapists who are paid employees"', add
label define fr06a_prof486_lbl 4330 `"Medical technicians"', add
label define fr06a_prof486_lbl 4331 `"Opticians and hearing-aid specialists"', add
label define fr06a_prof486_lbl 4332 `"Other specialty medical equipment"', add
label define fr06a_prof486_lbl 4333 `"Pharmacist assistants"', add
label define fr06a_prof486_lbl 4340 `"Socio-education intervention executives"', add
label define fr06a_prof486_lbl 4341 `"Social service assistants"', add
label define fr06a_prof486_lbl 4342 `"Social and consumer economics counselors"', add
label define fr06a_prof486_lbl 4343 `"Specialized educators workshop/studio instructors"', add
label define fr06a_prof486_lbl 4344 `"Caretaker/support person for people with disabilities"', add
label define fr06a_prof486_lbl 4345 `"Specialized educators workshop/studio instructors"', add
label define fr06a_prof486_lbl 4346 `"Early childhood educator"', add
label define fr06a_prof486_lbl 4350 `"Sociocultural and leisure center directors"', add
label define fr06a_prof486_lbl 4351 `"Sociocultural and leisure events coordinators"', add
label define fr06a_prof486_lbl 4410 `"Secular clergy"', add
label define fr06a_prof486_lbl 4411 `"Regular clergy"', add
label define fr06a_prof486_lbl 4510 `"Intermediate post office professions"', add
label define fr06a_prof486_lbl 4511 `"Administrative intermediaries/intermediate administrative professions France Telecom"', add
label define fr06a_prof486_lbl 4512 `"Tax controller"', add
label define fr06a_prof486_lbl 4513 `"Air traffic controllers"', add
label define fr06a_prof486_lbl 4514 `"Category B state civil service executives excluding teaching, taxes"', add
label define fr06a_prof486_lbl 4515 `"Category B local government civil service executives"', add
label define fr06a_prof486_lbl 4520 `"Police officers and inspectors"', add
label define fr06a_prof486_lbl 4521 `"Master sergeants army and police"', add
label define fr06a_prof486_lbl 4610 `"Executive secretaries (non executives)"', add
label define fr06a_prof486_lbl 4613 `"Financial services technician supervisors"', add
label define fr06a_prof486_lbl 4614 `"Administrative technicians judicial services"', add
label define fr06a_prof486_lbl 4615 `"Administrative technicians other services"', add
label define fr06a_prof486_lbl 4620 `"Heads of sales small store (paid employees)"', add
label define fr06a_prof486_lbl 4621 `"Operations supervisors - stores"', add
label define fr06a_prof486_lbl 4622 `"Non-executive buyers, assistant buyers"', add
label define fr06a_prof486_lbl 4623 `"[Sales and merchandise promoters] (non executive)"', add
label define fr06a_prof486_lbl 4624 `"Other commercial (except sales technician)"', add
label define fr06a_prof486_lbl 4630 `"Technical sales [representatives] intermediate goods"', add
label define fr06a_prof486_lbl 4631 `"Technical sales [representatives] companies"', add
label define fr06a_prof486_lbl 4632 `"Technical sales [representatives] with companies"', add
label define fr06a_prof486_lbl 4633 `"Commercial technicians with enterprises"', add
label define fr06a_prof486_lbl 4634 `"Commercial technicians and technical sales representatives"', add
label define fr06a_prof486_lbl 4640 `"Advertising public relations assistants"', add
label define fr06a_prof486_lbl 4641 `"Interpreters, translators"', add
label define fr06a_prof486_lbl 4650 `"Graphic arts designers"', add
label define fr06a_prof486_lbl 4651 `"Show business/entertainment production assistants"', add
label define fr06a_prof486_lbl 4652 `"Photographers (self-employed and paid employees)"', add
label define fr06a_prof486_lbl 4660 `"Non-executive managers of passenger transportation"', add
label define fr06a_prof486_lbl 4661 `"Non-executive managers of transportation"', add
label define fr06a_prof486_lbl 4662 `"Non-executive managers of transportation"', add
label define fr06a_prof486_lbl 4670 `"Bank client representatives"', add
label define fr06a_prof486_lbl 4671 `"Bank operations' technicians"', add
label define fr06a_prof486_lbl 4672 `"Intermediate insurance professions"', add
label define fr06a_prof486_lbl 4673 `"Intermediate social security professions"', add
label define fr06a_prof486_lbl 4680 `"Food and beverage supervisory staff - hotels and restaurants"', add
label define fr06a_prof486_lbl 4681 `"Hotel facilities supervisory staff"', add
label define fr06a_prof486_lbl 4710 `"Agriculture, waterways and forest technicians"', add
label define fr06a_prof486_lbl 4711 `"Agricultural [production/products], waterways and forestry technicians"', add
label define fr06a_prof486_lbl 4720 `"Building, public works designers"', add
label define fr06a_prof486_lbl 4721 `"Surveyors"', add
label define fr06a_prof486_lbl 4722 `"Buildings and public works surveyors and technicians"', add
label define fr06a_prof486_lbl 4723 `"State and local government public works technicians"', add
label define fr06a_prof486_lbl 4730 `"Electricity, electromechanical designers"', add
label define fr06a_prof486_lbl 4731 `"Electronics, electricity technicians"', add
label define fr06a_prof486_lbl 4732 `"Electronics, electricity technicians"', add
label define fr06a_prof486_lbl 4740 `"Mechanical construction designers"', add
label define fr06a_prof486_lbl 4741 `"Mechanical construction technicians"', add
label define fr06a_prof486_lbl 4742 `"Mechanical construction metal work technicians"', add
label define fr06a_prof486_lbl 4750 `"Technicians in research and development and production methods in processing industries"', add
label define fr06a_prof486_lbl 4751 `"Processing industry production methods technicians"', add
label define fr06a_prof486_lbl 4760 `"Printing editing assistant technicians"', add
label define fr06a_prof486_lbl 4761 `"Furnishing and wood technicians"', add
label define fr06a_prof486_lbl 4770 `"Planning and logistics technicians"', add
label define fr06a_prof486_lbl 4771 `"Electrical industrial equipment technicians"', add
label define fr06a_prof486_lbl 4772 `"Installation and maintenance technicians"', add
label define fr06a_prof486_lbl 4773 `"Environmental pollution technicians"', add
label define fr06a_prof486_lbl 4780 `"Computer technicians"', add
label define fr06a_prof486_lbl 4781 `"Computer operations technicians"', add
label define fr06a_prof486_lbl 4782 `"User information services technicians"', add
label define fr06a_prof486_lbl 4783 `"Telecom computer network technicians"', add
label define fr06a_prof486_lbl 4790 `"Public research lab technicians"', add
label define fr06a_prof486_lbl 4791 `"Technical-level experts"', add
label define fr06a_prof486_lbl 4800 `"Agricultural and forestry supervisors"', add
label define fr06a_prof486_lbl 4801 `"Merchant marine fishing bosun"', add
label define fr06a_prof486_lbl 4810 `"Foremen/forewomen (non executives)"', add
label define fr06a_prof486_lbl 4811 `"Construction foremen/women (non executives)"', add
label define fr06a_prof486_lbl 4820 `"Electrical equipment supervisors"', add
label define fr06a_prof486_lbl 4830 `"Mechanical construction supervisors"', add
label define fr06a_prof486_lbl 4840 `"Agro-food production supervisors"', add
label define fr06a_prof486_lbl 4841 `"Metal production supervisors"', add
label define fr06a_prof486_lbl 4850 `"Energy, water, heating supervisors"', add
label define fr06a_prof486_lbl 4851 `"Other production industries supervisors"', add
label define fr06a_prof486_lbl 4860 `"Electrical maintenance supervisors"', add
label define fr06a_prof486_lbl 4863 `"Maintenance, mechanical supervisors"', add
label define fr06a_prof486_lbl 4864 `"General maintenance supervisors"', add
label define fr06a_prof486_lbl 4870 `"Warehouse, storage managers"', add
label define fr06a_prof486_lbl 4871 `"Materials handling managers"', add
label define fr06a_prof486_lbl 4880 `"Food industry cooking/production supervisory personnel"', add
label define fr06a_prof486_lbl 4881 `"Food industry management supervisory personnel"', add
label define fr06a_prof486_lbl 5210 `"Post office employee"', add
label define fr06a_prof486_lbl 5211 `"France Telecom  employees (public company)"', add
label define fr06a_prof486_lbl 5220 `"Tax audit agents"', add
label define fr06a_prof486_lbl 5230 `"Civil service administrative assistants"', add
label define fr06a_prof486_lbl 5240 `"Civil service employee including teaching"', add
label define fr06a_prof486_lbl 5250 `"Primary school janitors"', add
label define fr06a_prof486_lbl 5251 `"Janitors in other schools"', add
label define fr06a_prof486_lbl 5252 `"Civil service administrative employees except schools and hospitals"', add
label define fr06a_prof486_lbl 5253 `"Hospital janitors"', add
label define fr06a_prof486_lbl 5260 `"Caregivers"', add
label define fr06a_prof486_lbl 5261 `"Dental medical veterinarian assistants"', add
label define fr06a_prof486_lbl 5262 `"Childcare assistants"', add
label define fr06a_prof486_lbl 5263 `"Psycho-medical assistants"', add
label define fr06a_prof486_lbl 5264 `"Ambulance drivers - paid employees"', add
label define fr06a_prof486_lbl 5310 `"State police officers"', add
label define fr06a_prof486_lbl 5311 `"Municipal police officers"', add
label define fr06a_prof486_lbl 5312 `"Penitentiary administrative guards"', add
label define fr06a_prof486_lbl 5320 `"Police officer (rank below adjutant)"', add
label define fr06a_prof486_lbl 5321 `"Sergeants, non-commissioned officers (excluding firefighters)"', add
label define fr06a_prof486_lbl 5322 `"Enlisted men except military firefighters"', add
label define fr06a_prof486_lbl 5330 `"Fire fighters (including military firefighters)"', add
label define fr06a_prof486_lbl 5331 `"Forestry technical agents/officers"', add
label define fr06a_prof486_lbl 5332 `"Cultural heritage / artifacts guard"', add
label define fr06a_prof486_lbl 5340 `"Plain clothes security and surveillance agents"', add
label define fr06a_prof486_lbl 5341 `"Escorts, body guards (paid employees)"', add
label define fr06a_prof486_lbl 5410 `"Receptionists excluding hotel"', add
label define fr06a_prof486_lbl 5413 `"Telephone operators"', add
label define fr06a_prof486_lbl 5420 `"Secretaries"', add
label define fr06a_prof486_lbl 5421 `"Typist, stenographers"', add
label define fr06a_prof486_lbl 5430 `"Accounting or financial employees"', add
label define fr06a_prof486_lbl 5433 `"Business administrative employees"', add
label define fr06a_prof486_lbl 5440 `"[Computer operations operators]"', add
label define fr06a_prof486_lbl 5450 `"Technical bank administration employees"', add
label define fr06a_prof486_lbl 5451 `"Commercial bank employees"', add
label define fr06a_prof486_lbl 5452 `"Technical services employees - insurance"', add
label define fr06a_prof486_lbl 5453 `"Social security technical employees"', add
label define fr06a_prof486_lbl 5460 `"[Train transportation field staff inspectors]"', add
label define fr06a_prof486_lbl 5461 `"Passenger transport agents"', add
label define fr06a_prof486_lbl 5462 `"Merchandise transport employees"', add
label define fr06a_prof486_lbl 5463 `"Flight attendants"', add
label define fr06a_prof486_lbl 5464 `"Attendants (transport, tourism)"', add
label define fr06a_prof486_lbl 5510 `"Employees in stores and self-service shops"', add
label define fr06a_prof486_lbl 5520 `"Store clerks"', add
label define fr06a_prof486_lbl 5530 `"Non-specialized salespeople"', add
label define fr06a_prof486_lbl 5540 `"Food salespeople"', add
label define fr06a_prof486_lbl 5541 `"Salespeople of furniture and household equipment"', add
label define fr06a_prof486_lbl 5542 `"Salespeople in hardware stores and dime stores/variety stores"', add
label define fr06a_prof486_lbl 5543 `"Flower business salespeople"', add
label define fr06a_prof486_lbl 5544 `"Salespeople of clothing and sports items"', add
label define fr06a_prof486_lbl 5545 `"Salespeople of deluxe beauty products and optical items"', add
label define fr06a_prof486_lbl 5546 `"Salespeople of cultural goods"', add
label define fr06a_prof486_lbl 5547 `"Miscellaneous tobacco and magazine shop salespeople"', add
label define fr06a_prof486_lbl 5549 `"Service station managers - paid employees, company representatives"', add
label define fr06a_prof486_lbl 5550 `"Mail order and television salespeople"', add
label define fr06a_prof486_lbl 5560 `"Wholesale capital goods salespeople"', add
label define fr06a_prof486_lbl 5610 `"Wait staff in cafes and restaurants"', add
label define fr06a_prof486_lbl 5613 `"Kitchen helpers and apprentices"', add
label define fr06a_prof486_lbl 5614 `"Hotel industry and events employees"', add
label define fr06a_prof486_lbl 5615 `"Floor manager/valet employees, hotel industry employees"', add
label define fr06a_prof486_lbl 5620 `"Manicurists and beauticians (paid employees)"', add
label define fr06a_prof486_lbl 5621 `"Hairdressers who are paid employees"', add
label define fr06a_prof486_lbl 5630 `"Teaching assistants in primary schools and child care"', add
label define fr06a_prof486_lbl 5631 `"Household and housekeeping helpers"', add
label define fr06a_prof486_lbl 5632 `"Household workers in private houses"', add
label define fr06a_prof486_lbl 5640 `"Building superintendents/janitors, caretakers"', add
label define fr06a_prof486_lbl 5641 `"Miscellaneous service employees"', add
label define fr06a_prof486_lbl 6210 `"Supervisors heavy construction and public buildings"', add
label define fr06a_prof486_lbl 6211 `"Skilled cement workers"', add
label define fr06a_prof486_lbl 6212 `"Skilled operators of heavy machinery for buildings and public works"', add
label define fr06a_prof486_lbl 6213 `"Public works electrical installers"', add
label define fr06a_prof486_lbl 6214 `"Other skilled public works laborers"', add
label define fr06a_prof486_lbl 6215 `"Skilled state laborers on state public works projects"', add
label define fr06a_prof486_lbl 6216 `"Skilled underground miners"', add
label define fr06a_prof486_lbl 6220 `"Operators of automatic machines"', add
label define fr06a_prof486_lbl 6221 `"Skilled cable riggers and winders"', add
label define fr06a_prof486_lbl 6226 `"Skilled testers/inspectors of electric and electronic equipment"', add
label define fr06a_prof486_lbl 6230 `"Industrial boilermaker-sheet metal workers"', add
label define fr06a_prof486_lbl 6231 `"Skilled pipe fitter"', add
label define fr06a_prof486_lbl 6232 `"Skilled metal welding laborers"', add
label define fr06a_prof486_lbl 6235 `"Skilled metal machinists"', add
label define fr06a_prof486_lbl 6236 `"Skilled metal machinists"', add
label define fr06a_prof486_lbl 6240 `"Skilled mechanical component assembler"', add
label define fr06a_prof486_lbl 6243 `"Skilled metal structure assemblers"', add
label define fr06a_prof486_lbl 6244 `"Skilled mechanical testers/inspectors"', add
label define fr06a_prof486_lbl 6245 `"Skilled laborers at heat treatment/curing on metal surfaces"', add
label define fr06a_prof486_lbl 6246 `"Other mechanics, skilled fitters"', add
label define fr06a_prof486_lbl 6250 `"[Automated site installers for processing in heavy industries]"', add
label define fr06a_prof486_lbl 6251 `"Skilled agro-food industry laborers"', add
label define fr06a_prof486_lbl 6252 `"Skilled chemical workers"', add
label define fr06a_prof486_lbl 6253 `"Meat processing laborers"', add
label define fr06a_prof486_lbl 6254 `"Other skilled laborers in the agricultural industry"', add
label define fr06a_prof486_lbl 6257 `"Skilled laborers other industries"', add
label define fr06a_prof486_lbl 6260 `"Processing industry [installation pilots]"', add
label define fr06a_prof486_lbl 6261 `"Other skilled metallurgy laborers"', add
label define fr06a_prof486_lbl 6262 `"Skilled wood industry laborers"', add
label define fr06a_prof486_lbl 6270 `"Skilled workers textiles, tanning"', add
label define fr06a_prof486_lbl 6271 `"Skilled clothing laborers"', add
label define fr06a_prof486_lbl 6272 `"Skilled leather industry laborers"', add
label define fr06a_prof486_lbl 6273 `"Skilled sawmill laborers, woodworkers"', add
label define fr06a_prof486_lbl 6274 `"Photo lab laborers"', add
label define fr06a_prof486_lbl 6275 `"Skilled printing laborers"', add
label define fr06a_prof486_lbl 6280 `"Skilled industrial maintenance mechanics"', add
label define fr06a_prof486_lbl 6281 `"Skilled industrial maintenance electricians"', add
label define fr06a_prof486_lbl 6282 `"Skilled adjusters production equipment"', add
label define fr06a_prof486_lbl 6283 `"Skilled adjusters production equipment excluding metal"', add
label define fr06a_prof486_lbl 6284 `"Skilled workers in waste decontamination and treatment"', add
label define fr06a_prof486_lbl 6285 `"Laboratory laborers (excluding chemical, health)"', add
label define fr06a_prof486_lbl 6286 `"Skilled industrial laborers"', add
label define fr06a_prof486_lbl 6310 `"Gardeners"', add
label define fr06a_prof486_lbl 6320 `"Skilled masons"', add
label define fr06a_prof486_lbl 6321 `"Skilled stone workers"', add
label define fr06a_prof486_lbl 6322 `"Skilled wood carpenters"', add
label define fr06a_prof486_lbl 6323 `"Skilled building woodworkers"', add
label define fr06a_prof486_lbl 6324 `"Skilled roofers"', add
label define fr06a_prof486_lbl 6325 `"Skilled plumbers and heating engineers"', add
label define fr06a_prof486_lbl 6326 `"Vertical support painters"', add
label define fr06a_prof486_lbl 6327 `"Building finishers on horizontal surfaces"', add
label define fr06a_prof486_lbl 6329 `"Skilled insulation and layout assemblers"', add
label define fr06a_prof486_lbl 6328 `"Skilled building maintenance laborers"', add
label define fr06a_prof486_lbl 6330 `"Skilled electricians (including building)"', add
label define fr06a_prof486_lbl 6331 `"Skilled household electrical appliance repair people"', add
label define fr06a_prof486_lbl 6332 `"Skilled auto electricians"', add
label define fr06a_prof486_lbl 6333 `"Skilled non-industrial electricians"', add
label define fr06a_prof486_lbl 6340 `"Qualified auto body workers"', add
label define fr06a_prof486_lbl 6341 `"Skilled lock makers and metal workers"', add
label define fr06a_prof486_lbl 6342 `"Skilled mechanics"', add
label define fr06a_prof486_lbl 6343 `"Skilled maintenance and upkeep mechanics"', add
label define fr06a_prof486_lbl 6350 `"Skilled tailors and seamstresses excluding clothes-making"', add
label define fr06a_prof486_lbl 6360 `"Butchers (excluding meat industry)"', add
label define fr06a_prof486_lbl 6361 `"Pork butchers excluding meat industry"', add
label define fr06a_prof486_lbl 6362 `"Non-industrial bakers, pastry cooks"', add
label define fr06a_prof486_lbl 6363 `"Cooks and assistant cooks/kitchen stewards"', add
label define fr06a_prof486_lbl 6370 `"Model makers (except in metal)"', add
label define fr06a_prof486_lbl 6371 `"Craftsmen/women"', add
label define fr06a_prof486_lbl 6372 `"Show business/entertainment audio-visual technicians"', add
label define fr06a_prof486_lbl 6373 `"Miscellaneous skilled handicraft-type laborers"', add
label define fr06a_prof486_lbl 6410 `"Truck drivers who are paid employees"', add
label define fr06a_prof486_lbl 6411 `"Mass transit drivers who are paid employees"', add
label define fr06a_prof486_lbl 6420 `"Taxi drivers who are paid employees"', add
label define fr06a_prof486_lbl 6421 `"Private automobile chauffeurs who are paid employees"', add
label define fr06a_prof486_lbl 6430 `"Messengers and couriers"', add
label define fr06a_prof486_lbl 6440 `"Operators/drivers of household waste collectors"', add
label define fr06a_prof486_lbl 6510 `"Operators of heavy lifting machines"', add
label define fr06a_prof486_lbl 6511 `"[Operators of heavy rigging/switching machine]"', add
label define fr06a_prof486_lbl 6520 `"Skilled forklift operators"', add
label define fr06a_prof486_lbl 6521 `"Dockers"', add
label define fr06a_prof486_lbl 6530 `"Skilled warehouse workers/store clerks/stock keepers"', add
label define fr06a_prof486_lbl 6540 `"[Skilled guided missile operators]"', add
label define fr06a_prof486_lbl 6550 `"Skilled sedentary laborers in transportation"', add
label define fr06a_prof486_lbl 6560 `"Merchant marine sailors who are paid employees"', add
label define fr06a_prof486_lbl 6710 `"Unskilled laborers state public works"', add
label define fr06a_prof486_lbl 6711 `"Unskilled laborers public works excluding state"', add
label define fr06a_prof486_lbl 6720 `"Unskilled electrical laborers"', add
label define fr06a_prof486_lbl 6730 `"Unskilled metal removal laborers"', add
label define fr06a_prof486_lbl 6731 `"Metal shapers"', add
label define fr06a_prof486_lbl 6732 `"Unskilled metal mechanics workers"', add
label define fr06a_prof486_lbl 6740 `"Laborers in chemistry, pharmacy, plastics science"', add
label define fr06a_prof486_lbl 6741 `"Meat processing laborers"', add
label define fr06a_prof486_lbl 6742 `"Unskilled agro-food industry laborers"', add
label define fr06a_prof486_lbl 6743 `"Unskilled construction materials laborers"', add
label define fr06a_prof486_lbl 6744 `"Unskilled wood industry laborers"', add
label define fr06a_prof486_lbl 6750 `"Unskilled textile laborers"', add
label define fr06a_prof486_lbl 6751 `"Wood furnishings laborers"', add
label define fr06a_prof486_lbl 6752 `"Printing, press and editing laborers"', add
label define fr06a_prof486_lbl 6760 `"Unskilled dock workers/warehouse workers"', add
label define fr06a_prof486_lbl 6761 `"Unskilled movers"', add
label define fr06a_prof486_lbl 6762 `"Unskilled packaging and shipping laborers"', add
label define fr06a_prof486_lbl 6763 `"Unskilled transport agents"', add
label define fr06a_prof486_lbl 6764 `"Unskilled industrial laborers"', add
label define fr06a_prof486_lbl 6810 `"Unskilled laborers in constructing building shells"', add
label define fr06a_prof486_lbl 6811 `"Unskilled laborers in construction finishing"', add
label define fr06a_prof486_lbl 6820 `"Unskilled locksmiths and repairers"', add
label define fr06a_prof486_lbl 6830 `"Apprentice bakers, butchers and pork butchers"', add
label define fr06a_prof486_lbl 6840 `"Cleaners"', add
label define fr06a_prof486_lbl 6841 `"Unskilled waste treatment laborers"', add
label define fr06a_prof486_lbl 6850 `"Unskilled handicraft laborers"', add
label define fr06a_prof486_lbl 6910 `"Agricultural or forest machine operators"', add
label define fr06a_prof486_lbl 6911 `"Animal breeding laborers"', add
label define fr06a_prof486_lbl 6912 `"Truck farm and horticultural laborers"', add
label define fr06a_prof486_lbl 6913 `"Wine growing, tree farming and fruit farming laborers"', add
label define fr06a_prof486_lbl 6914 `"Non-specialized agricultural laborers"', add
label define fr06a_prof486_lbl 6915 `"Forestry laborers"', add
label define fr06a_prof486_lbl 6920 `"Fisherman/woman"', add
label define fr06a_prof486_lbl 9999 `"NIU (not in universe)"', add
label values fr06a_prof486 fr06a_prof486_lbl

label define fr06a_prof486n_lbl 11 `"Small-size farm worker"'
label define fr06a_prof486n_lbl 12 `"Medius-size farm worker"', add
label define fr06a_prof486n_lbl 13 `"Large-size farm woerker"', add
label define fr06a_prof486n_lbl 21 `"Artisan"', add
label define fr06a_prof486n_lbl 22 `"Wholesalers and similar occupations"', add
label define fr06a_prof486n_lbl 23 `"Heads of companies"', add
label define fr06a_prof486n_lbl 31 `"Liberal professions"', add
label define fr06a_prof486n_lbl 33 `"Public service professionals"', add
label define fr06a_prof486n_lbl 34 `"Professors, scientific professions"', add
label define fr06a_prof486n_lbl 35 `"Information, arts, and teather professionals"', add
label define fr06a_prof486n_lbl 37 `"Business administration and commerce personnel"', add
label define fr06a_prof486n_lbl 38 `"Business engineers and technicians"', add
label define fr06a_prof486n_lbl 42 `"Professors in schools, institutes, similar organizations"', add
label define fr06a_prof486n_lbl 43 `"Intermediate health and social work personnel"', add
label define fr06a_prof486n_lbl 44 `"Clergy"', add
label define fr06a_prof486n_lbl 45 `"Intermediate public service administrative personnel"', add
label define fr06a_prof486n_lbl 46 `"Intermediate business administration and commerce personnel"', add
label define fr06a_prof486n_lbl 47 `"Technicians"', add
label define fr06a_prof486n_lbl 48 `"Foremen"', add
label define fr06a_prof486n_lbl 52 `"Public service civil servants"', add
label define fr06a_prof486n_lbl 53 `"Police officers and military personnel"', add
label define fr06a_prof486n_lbl 54 `"Business administrative personnel"', add
label define fr06a_prof486n_lbl 55 `"Salespeople"', add
label define fr06a_prof486n_lbl 56 `"Small- business service employees"', add
label define fr06a_prof486n_lbl 62 `"Skilled industry laborers"', add
label define fr06a_prof486n_lbl 63 `"Skilled artisan laborers"', add
label define fr06a_prof486n_lbl 64 `"Drivers"', add
label define fr06a_prof486n_lbl 65 `"Maintenance, storage, and transportation skilled workers"', add
label define fr06a_prof486n_lbl 67 `"Unskilled industry laborers"', add
label define fr06a_prof486n_lbl 68 `"Unskilled laborers in construction finishing"', add
label define fr06a_prof486n_lbl 69 `"Agricultural laborers"', add
label define fr06a_prof486n_lbl 99 `"NIU (not in universe)"', add
label values fr06a_prof486n fr06a_prof486n_lbl

label define fr06a_seekwork_lbl 0 `"Is not looking for work"'
label define fr06a_seekwork_lbl 1 `"Has been looking for work for less than one year"', add
label define fr06a_seekwork_lbl 2 `"Has been looking for work for more than one year"', add
label define fr06a_seekwork_lbl 8 `"Undeclared (not part of labor force)"', add
label define fr06a_seekwork_lbl 9 `"NIU (not in universe)"', add
label values fr06a_seekwork fr06a_seekwork_lbl

label define fr06a_sex_lbl 1 `"Male"'
label define fr06a_sex_lbl 2 `"Female"', add
label values fr06a_sex fr06a_sex_lbl

label define fr06a_wagearn_lbl 10 `"Wage earner"'
label define fr06a_wagearn_lbl 21 `"Non wage-earner: self-employed"', add
label define fr06a_wagearn_lbl 22 `"Non wage-earner: employers"', add
label define fr06a_wagearn_lbl 23 `"Non wage-earner: family helper"', add
label define fr06a_wagearn_lbl 99 `"NIU (not in universe)"', add
label values fr06a_wagearn fr06a_wagearn_lbl

label define fr06a_ownship_lbl 10 `"Owner"'
label define fr06a_ownship_lbl 21 `"Renter or subletter of a non-HLM dwelling rented empty [HLM stands for "habitation à loyer modéré", rent-controlled]"', add
label define fr06a_ownship_lbl 22 `"Renter or subletter of an HLM dwelling rented empty [HLM stands for "habitation à loyer modéré", rent-controlled]"', add
label define fr06a_ownship_lbl 23 `"Renter or sublet or of a furnished rented dwelling or hotel room"', add
label define fr06a_ownship_lbl 30 `"Housed for free"', add
label define fr06a_ownship_lbl 99 `"NIU (not in universe)"', add
label values fr06a_ownship fr06a_ownship_lbl

label define fr06a_activty_lbl 11 `"Active employed, including apprenticeship and paid internship"'
label define fr06a_activty_lbl 12 `"Unemployed"', add
label define fr06a_activty_lbl 21 `"Retired or in early retirement"', add
label define fr06a_activty_lbl 22 `"High school students, college/university students, unpaid interns age 14 or older"', add
label define fr06a_activty_lbl 23 `"Younger than 14"', add
label define fr06a_activty_lbl 24 `"Housewives or house husbands"', add
label define fr06a_activty_lbl 25 `"Other inactive"', add
label values fr06a_activty fr06a_activty_lbl

label define fr06a_fulltime_lbl 1 `"Full-time"'
label define fr06a_fulltime_lbl 2 `"Part-time"', add
label define fr06a_fulltime_lbl 9 `"NIU (not in universe)"', add
label values fr06a_fulltime fr06a_fulltime_lbl

label define fr06a_trans_lbl 1 `"No transportation"'
label define fr06a_trans_lbl 2 `"Walking"', add
label define fr06a_trans_lbl 3 `"Two wheeled-vehicle"', add
label define fr06a_trans_lbl 4 `"Car, truck, van"', add
label define fr06a_trans_lbl 5 `"Mass transit"', add
label define fr06a_trans_lbl 9 `"NIU (not in universe)"', add
label values fr06a_trans fr06a_trans_lbl

label define fr06a_famtypec_lbl 1 `"Single parent family"'
label define fr06a_famtypec_lbl 2 `"Family comprised of a couple"', add
label define fr06a_famtypec_lbl 9 `"NIU (not in universe)"', add
label values fr06a_famtypec fr06a_famtypec_lbl


