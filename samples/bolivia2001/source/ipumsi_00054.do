* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  long    bo01a_dwnum      22-28    ///
  byte    bo01a_pern       29-30    ///
  byte    bo01a_fbig       31-31    ///
  byte    bo01a_dept       32-32    ///
  byte    bo01a_dwtype     33-34    ///
  byte    bo01a_occup      35-35    ///
  byte    bo01a_wall       36-36    ///
  byte    bo01a_wallint    37-37    ///
  byte    bo01a_roof       38-38    ///
  byte    bo01a_floor      39-39    ///
  byte    bo01a_watsrc     40-40    ///
  byte    bo01a_watpipe    41-41    ///
  byte    bo01a_toilet1    42-42    ///
  byte    bo01a_toilet2    43-43    ///
  byte    bo01a_sewage     44-44    ///
  byte    bo01a_electric   45-45    ///
  byte    bo01a_fuelcook   46-46    ///
  byte    bo01a_kitchen    47-47    ///
  byte    bo01a_rooms      48-48    ///
  byte    bo01a_bedrooms   49-49    ///
  byte    bo01a_radio      50-50    ///
  byte    bo01a_tv         51-51    ///
  byte    bo01a_bike       52-52    ///
  byte    bo01a_motbike    53-53    ///
  byte    bo01a_auto       54-54    ///
  byte    bo01a_refrig     55-55    ///
  byte    bo01a_phone      56-56    ///
  byte    bo01a_pumpwat    57-57    ///
  byte    bo01a_ownershp   58-58    ///
  byte    bo01a_blind      59-59    ///
  byte    bo01a_deaf       60-60    ///
  byte    bo01a_paralys    61-61    ///
  byte    bo01a_death      62-62    ///
  byte    bo01a_deathf     63-63    ///
  byte    bo01a_deathfres  64-64    ///
  byte    bo01a_deathfage  65-66    ///
  byte    bo01a_urban      67-67    ///
  int     pernum           68-70    ///
  float   wtper            71-78    ///
  byte    bo01a_pernum     79-80    ///
  byte    bo01a_sex        81-81    ///
  byte    bo01a_age        82-83    ///
  byte    bo01a_birthreg   84-84    ///
  byte    bo01a_relate     85-86    ///
  byte    bo01a_lang1      87-87    ///
  byte    bo01a_lang2      88-88    ///
  byte    bo01a_lang3      89-89    ///
  byte    bo01a_lang4      90-90    ///
  byte    bo01a_lang5      91-91    ///
  byte    bo01a_lang6      92-92    ///
  byte    bo01a_lang7      93-93    ///
  byte    bo01a_livehere   94-94    ///
  int     bo01a_countryh   95-97    ///
  byte    bo01a_depth      98-99    ///
  int     bo01a_provh      100-103  ///
  byte    bo01a_bornhere   104-104  ///
  int     bo01a_ctrybrth   105-107  ///
  int     bo01a_yrarriv    108-111  ///
  byte    bo01a_deptbrth   112-113  ///
  int     bo01a_provbrth   114-117  ///
  byte    bo01a_mothtong   118-118  ///
  byte    bo01a_lit        119-119  ///
  byte    bo01a_attend     120-120  ///
  byte    bo01a_levatt     121-121  ///
  byte    bo01a_levcomp    122-123  ///
  byte    bo01a_yrcomp     124-125  ///
  int     bo01a_edattan    126-128  ///
  byte    bo01a_prereq     129-130  ///
  byte    bo01a_prereqyr   131-132  ///
  byte    bo01a_here5yr    133-133  ///
  int     bo01a_cntry5yr   134-136  ///
  byte    bo01a_dept5yr    137-138  ///
  int     bo01a_prov5yr    139-142  ///
  byte    bo01a_wkrlstwk   143-143  ///
  byte    bo01a_nonwork1   144-144  ///
  byte    bo01a_nonwork2   145-145  ///
  int     bo01a_occ        146-148  ///
  byte    bo01a_classwk    149-149  ///
  int     bo01a_ind3       150-152  ///
  byte    bo01a_marst      153-153  ///
  byte    bo01a_indig      154-154  ///
  byte    bo01a_chborn     155-156  ///
  byte    bo01a_chsurv     157-158  ///
  byte    bo01a_chdead     159-160  ///
  byte    bo01a_bthmonth   161-162  ///
  int     bo01a_bthyear    163-166  ///
  byte    bo01a_bpl        167-167  ///
  byte    bo01a_birthdr    168-168  ///
  using `"ipumsi_00054.dat"'

replace wtper           = wtper           / 100

format serial          %10.0f
format wtper           %8.2f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var bo01a_dwnum     `"Dwelling number"'
label var bo01a_pern      `"Number of persons in household"'
label var bo01a_fbig      `"Dwelling created by splitting apart a large dwelling or household"'
label var bo01a_dept      `"Department"'
label var bo01a_dwtype    `"Dwelling type"'
label var bo01a_occup     `"Occupancy status"'
label var bo01a_wall      `"Wall material"'
label var bo01a_wallint   `"Finished interior walls"'
label var bo01a_roof      `"Roof material"'
label var bo01a_floor     `"Floor material"'
label var bo01a_watsrc    `"Water source"'
label var bo01a_watpipe   `"Water distribution/supply"'
label var bo01a_toilet1   `"Toilet"'
label var bo01a_toilet2   `"Toilet access"'
label var bo01a_sewage    `"Wastewater connection"'
label var bo01a_electric  `"Electricity"'
label var bo01a_fuelcook  `"Fuel used for cooking"'
label var bo01a_kitchen   `"Separate kitchen"'
label var bo01a_rooms     `"Number of rooms"'
label var bo01a_bedrooms  `"Number of bedrooms"'
label var bo01a_radio     `"Radio"'
label var bo01a_tv        `"Television"'
label var bo01a_bike      `"Bicycle"'
label var bo01a_motbike   `"Motorcycle/motor scooter"'
label var bo01a_auto      `"Automobile"'
label var bo01a_refrig    `"Refrigerator"'
label var bo01a_phone     `"Telephone/cell phone"'
label var bo01a_pumpwat   `"Electric water pump"'
label var bo01a_ownershp  `"Tenure of the dwelling/ownership"'
label var bo01a_blind     `"Number of dwellers suffering blindness"'
label var bo01a_deaf      `"Number of dwellers suffering deaf-muteness"'
label var bo01a_paralys   `"Number of dwellers suffering paralysis"'
label var bo01a_death     `"Death in 2000"'
label var bo01a_deathf    `"Death of female age 15 and older"'
label var bo01a_deathfres `"Reason for female death"'
label var bo01a_deathfage `"Age at death of female"'
label var bo01a_urban     `"Urban-rural"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var bo01a_pernum    `"Person number (within household)"'
label var bo01a_sex       `"Sex"'
label var bo01a_age       `"Age"'
label var bo01a_birthreg  `"Birth is registered"'
label var bo01a_relate    `"Relationship"'
label var bo01a_lang1     `"Speaks Quechua"'
label var bo01a_lang2     `"Speaks Aymara"'
label var bo01a_lang3     `"Speaks Spanish"'
label var bo01a_lang4     `"Speaks Guarani"'
label var bo01a_lang5     `"Speaks foreign language"'
label var bo01a_lang6     `"Does not speak"'
label var bo01a_lang7     `"Speaks other indigenous language"'
label var bo01a_livehere  `"Lives here habitually"'
label var bo01a_countryh  `"Country where live habitually"'
label var bo01a_depth     `"Department live habitually"'
label var bo01a_provh     `"Province live habitually"'
label var bo01a_bornhere  `"Born here"'
label var bo01a_ctrybrth  `"Country of birth"'
label var bo01a_yrarriv   `"Year of arrival"'
label var bo01a_deptbrth  `"Department of birth"'
label var bo01a_provbrth  `"Province of birth"'
label var bo01a_mothtong  `"Native language learned as child"'
label var bo01a_lit       `"Literacy"'
label var bo01a_attend    `"Currently attending school"'
label var bo01a_levatt    `"School level attending"'
label var bo01a_levcomp   `"Highest level of school completed"'
label var bo01a_yrcomp    `"Years of school completed at highest level"'
label var bo01a_edattan   `"Educational attainment"'
label var bo01a_prereq    `"Level of schooling prior to highest level completed"'
label var bo01a_prereqyr  `"Years of schooling in the level prior to highest level completed"'
label var bo01a_here5yr   `"Lived here five years ago"'
label var bo01a_cntry5yr  `"Country five years ago"'
label var bo01a_dept5yr   `"Department five years ago"'
label var bo01a_prov5yr   `"Province five years ago"'
label var bo01a_wkrlstwk  `"Worked last week"'
label var bo01a_nonwork1  `"Nonwork activity 1"'
label var bo01a_nonwork2  `"Nonwork activity 2"'
label var bo01a_occ       `"Occupation, 3 digits"'
label var bo01a_classwk   `"Status in employment"'
label var bo01a_ind3      `"Industry, 3 digits"'
label var bo01a_marst     `"Marital or conjugal status"'
label var bo01a_indig     `"Indigenous identity"'
label var bo01a_chborn    `"Children born alive"'
label var bo01a_chsurv    `"Children currently alive"'
label var bo01a_chdead    `"Children deceased"'
label var bo01a_bthmonth  `"Month of birth of last child born alive"'
label var bo01a_bthyear   `"Year of birth of last child born alive"'
label var bo01a_bpl       `"Place of birth of last child"'
label var bo01a_birthdr   `"Birth of last child attended by"'

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

label define bo01a_pern_lbl 00 `"0"'
label define bo01a_pern_lbl 01 `"1"', add
label define bo01a_pern_lbl 02 `"2"', add
label define bo01a_pern_lbl 03 `"3"', add
label define bo01a_pern_lbl 04 `"4"', add
label define bo01a_pern_lbl 05 `"5"', add
label define bo01a_pern_lbl 06 `"6"', add
label define bo01a_pern_lbl 07 `"7"', add
label define bo01a_pern_lbl 08 `"8"', add
label define bo01a_pern_lbl 09 `"9"', add
label define bo01a_pern_lbl 10 `"10"', add
label define bo01a_pern_lbl 11 `"11"', add
label define bo01a_pern_lbl 12 `"12"', add
label define bo01a_pern_lbl 13 `"13"', add
label define bo01a_pern_lbl 14 `"14"', add
label define bo01a_pern_lbl 15 `"15"', add
label define bo01a_pern_lbl 16 `"16"', add
label define bo01a_pern_lbl 17 `"17"', add
label define bo01a_pern_lbl 18 `"18"', add
label define bo01a_pern_lbl 19 `"19"', add
label define bo01a_pern_lbl 20 `"20"', add
label define bo01a_pern_lbl 21 `"21"', add
label define bo01a_pern_lbl 22 `"22"', add
label define bo01a_pern_lbl 23 `"23"', add
label define bo01a_pern_lbl 24 `"24"', add
label define bo01a_pern_lbl 25 `"25"', add
label define bo01a_pern_lbl 26 `"26"', add
label define bo01a_pern_lbl 27 `"27"', add
label define bo01a_pern_lbl 28 `"28"', add
label define bo01a_pern_lbl 29 `"29"', add
label define bo01a_pern_lbl 30 `"30"', add
label values bo01a_pern bo01a_pern_lbl

label define bo01a_fbig_lbl 0 `"No problem"'
label define bo01a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define bo01a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values bo01a_fbig bo01a_fbig_lbl

label define bo01a_dept_lbl 1 `"Chuquisaca"'
label define bo01a_dept_lbl 2 `"La Paz"', add
label define bo01a_dept_lbl 3 `"Cochabamba"', add
label define bo01a_dept_lbl 4 `"Oruro"', add
label define bo01a_dept_lbl 5 `"Potosí"', add
label define bo01a_dept_lbl 6 `"Tarija"', add
label define bo01a_dept_lbl 7 `"Santa Cruz"', add
label define bo01a_dept_lbl 8 `"Beni"', add
label define bo01a_dept_lbl 9 `"Pando"', add
label values bo01a_dept bo01a_dept_lbl

label define bo01a_dwtype_lbl 11 `"House, hut, shack"'
label define bo01a_dwtype_lbl 12 `"Apartment"', add
label define bo01a_dwtype_lbl 13 `"Rented rooms"', add
label define bo01a_dwtype_lbl 14 `"Improvised dwelling"', add
label define bo01a_dwtype_lbl 15 `"Place not intended for habitation"', add
label define bo01a_dwtype_lbl 16 `"Hotel, inn, boarding house"', add
label define bo01a_dwtype_lbl 17 `"Hospital,clinic"', add
label define bo01a_dwtype_lbl 18 `"Retirement home/orphanage"', add
label define bo01a_dwtype_lbl 19 `"Convent"', add
label define bo01a_dwtype_lbl 20 `"Boarding school"', add
label define bo01a_dwtype_lbl 21 `"Military establishment"', add
label define bo01a_dwtype_lbl 22 `"Prison or penal establishment"', add
label define bo01a_dwtype_lbl 23 `"Other"', add
label define bo01a_dwtype_lbl 24 `"Transients"', add
label values bo01a_dwtype bo01a_dwtype_lbl

label define bo01a_occup_lbl 1 `"Occupied, with people present"'
label define bo01a_occup_lbl 2 `"Occupied, with people absent"', add
label define bo01a_occup_lbl 3 `"For rent or sale"', add
label define bo01a_occup_lbl 4 `"Under construction or repair"', add
label define bo01a_occup_lbl 5 `"Seasonal or temporary use"', add
label define bo01a_occup_lbl 6 `"Abandoned"', add
label define bo01a_occup_lbl 9 `"NIU (not in universe)"', add
label values bo01a_occup bo01a_occup_lbl

label define bo01a_wall_lbl 1 `"Brick or cement block"'
label define bo01a_wall_lbl 2 `"Adobe wall"', add
label define bo01a_wall_lbl 3 `"Tabique or quinche"', add
label define bo01a_wall_lbl 4 `"Stone"', add
label define bo01a_wall_lbl 5 `"Wood"', add
label define bo01a_wall_lbl 6 `"Cane, palm leaves, trunks"', add
label define bo01a_wall_lbl 7 `"Other"', add
label define bo01a_wall_lbl 9 `"NIU (not in universe)"', add
label values bo01a_wall bo01a_wall_lbl

label define bo01a_wallint_lbl 1 `"Yes"'
label define bo01a_wallint_lbl 2 `"No"', add
label define bo01a_wallint_lbl 9 `"NIU (not in universe)"', add
label values bo01a_wallint bo01a_wallint_lbl

label define bo01a_roof_lbl 1 `"Corrugated metal sheets"'
label define bo01a_roof_lbl 2 `"Tiles"', add
label define bo01a_roof_lbl 3 `"Concrete and iron roof"', add
label define bo01a_roof_lbl 4 `"Straw, cane or palm"', add
label define bo01a_roof_lbl 5 `"Other"', add
label define bo01a_roof_lbl 9 `"NIU (not in universe)"', add
label values bo01a_roof bo01a_roof_lbl

label define bo01a_floor_lbl 1 `"Earth"'
label define bo01a_floor_lbl 2 `"Wood board"', add
label define bo01a_floor_lbl 3 `"Floor tile, parquet"', add
label define bo01a_floor_lbl 4 `"Carpet or rug"', add
label define bo01a_floor_lbl 5 `"Cement"', add
label define bo01a_floor_lbl 6 `"Vinyl, linoleum, etc."', add
label define bo01a_floor_lbl 7 `"Brick"', add
label define bo01a_floor_lbl 8 `"Other"', add
label define bo01a_floor_lbl 9 `"NIU (not in universe)"', add
label values bo01a_floor bo01a_floor_lbl

label define bo01a_watsrc_lbl 1 `"Piped system-inside the building"'
label define bo01a_watsrc_lbl 2 `"Public tap"', add
label define bo01a_watsrc_lbl 3 `"Delivery truck"', add
label define bo01a_watsrc_lbl 4 `"Well or water wheel with pump"', add
label define bo01a_watsrc_lbl 5 `"Well or water wheel without pump"', add
label define bo01a_watsrc_lbl 6 `"River, stream or spring"', add
label define bo01a_watsrc_lbl 7 `"Lake, lagoon"', add
label define bo01a_watsrc_lbl 8 `"Other"', add
label define bo01a_watsrc_lbl 9 `"NIU (not in universe)"', add
label values bo01a_watsrc bo01a_watsrc_lbl

label define bo01a_watpipe_lbl 6 `"Piped inside the dwelling"'
label define bo01a_watpipe_lbl 7 `"Piped outside the dwelling"', add
label define bo01a_watpipe_lbl 8 `"Not piped"', add
label define bo01a_watpipe_lbl 9 `"NIU (not in universe)"', add
label values bo01a_watpipe bo01a_watpipe_lbl

label define bo01a_toilet1_lbl 1 `"Has toilet facilities"'
label define bo01a_toilet1_lbl 2 `"Does not have toilet facilities"', add
label define bo01a_toilet1_lbl 9 `"NIU (not in universe)"', add
label values bo01a_toilet1 bo01a_toilet1_lbl

label define bo01a_toilet2_lbl 1 `"For this household only"'
label define bo01a_toilet2_lbl 2 `"Shared with other households"', add
label define bo01a_toilet2_lbl 9 `"NIU (not in universe)"', add
label values bo01a_toilet2 bo01a_toilet2_lbl

label define bo01a_sewage_lbl 1 `"Sewer"'
label define bo01a_sewage_lbl 2 `"Septic tank"', add
label define bo01a_sewage_lbl 3 `"Pit toilet"', add
label define bo01a_sewage_lbl 4 `"Surface"', add
label define bo01a_sewage_lbl 9 `"NIU (not in universe)"', add
label values bo01a_sewage bo01a_sewage_lbl

label define bo01a_electric_lbl 1 `"Yes"'
label define bo01a_electric_lbl 2 `"No"', add
label define bo01a_electric_lbl 9 `"NIU (not in universe)"', add
label values bo01a_electric bo01a_electric_lbl

label define bo01a_fuelcook_lbl 1 `"Wood"'
label define bo01a_fuelcook_lbl 2 `"Bird dung or manure"', add
label define bo01a_fuelcook_lbl 3 `"Kerosene"', add
label define bo01a_fuelcook_lbl 4 `"Gas"', add
label define bo01a_fuelcook_lbl 5 `"Electricity"', add
label define bo01a_fuelcook_lbl 6 `"Other"', add
label define bo01a_fuelcook_lbl 7 `"Don't use"', add
label define bo01a_fuelcook_lbl 9 `"NIU (not in universe)"', add
label values bo01a_fuelcook bo01a_fuelcook_lbl

label define bo01a_kitchen_lbl 1 `"Yes"'
label define bo01a_kitchen_lbl 2 `"No"', add
label define bo01a_kitchen_lbl 9 `"NIU (not in universe)"', add
label values bo01a_kitchen bo01a_kitchen_lbl

label define bo01a_rooms_lbl 1 `"1"'
label define bo01a_rooms_lbl 2 `"2"', add
label define bo01a_rooms_lbl 3 `"3"', add
label define bo01a_rooms_lbl 4 `"4"', add
label define bo01a_rooms_lbl 5 `"5"', add
label define bo01a_rooms_lbl 6 `"6"', add
label define bo01a_rooms_lbl 7 `"7"', add
label define bo01a_rooms_lbl 8 `"8"', add
label define bo01a_rooms_lbl 9 `"NIU (not in universe)"', add
label values bo01a_rooms bo01a_rooms_lbl

label define bo01a_bedrooms_lbl 1 `"1"'
label define bo01a_bedrooms_lbl 2 `"2"', add
label define bo01a_bedrooms_lbl 3 `"3"', add
label define bo01a_bedrooms_lbl 4 `"4"', add
label define bo01a_bedrooms_lbl 5 `"5"', add
label define bo01a_bedrooms_lbl 6 `"6"', add
label define bo01a_bedrooms_lbl 7 `"7"', add
label define bo01a_bedrooms_lbl 8 `"8 or more"', add
label define bo01a_bedrooms_lbl 9 `"NIU (not in universe)"', add
label values bo01a_bedrooms bo01a_bedrooms_lbl

label define bo01a_radio_lbl 1 `"Yes"'
label define bo01a_radio_lbl 2 `"No"', add
label define bo01a_radio_lbl 9 `"NIU (not in universe)"', add
label values bo01a_radio bo01a_radio_lbl

label define bo01a_tv_lbl 1 `"Yes"'
label define bo01a_tv_lbl 2 `"No"', add
label define bo01a_tv_lbl 9 `"NIU (not in universe)"', add
label values bo01a_tv bo01a_tv_lbl

label define bo01a_bike_lbl 1 `"Yes"'
label define bo01a_bike_lbl 2 `"No"', add
label define bo01a_bike_lbl 9 `"NIU (not in universe)"', add
label values bo01a_bike bo01a_bike_lbl

label define bo01a_motbike_lbl 1 `"Yes"'
label define bo01a_motbike_lbl 2 `"No"', add
label define bo01a_motbike_lbl 9 `"NIU (not in universe)"', add
label values bo01a_motbike bo01a_motbike_lbl

label define bo01a_auto_lbl 1 `"Yes"'
label define bo01a_auto_lbl 2 `"No"', add
label define bo01a_auto_lbl 9 `"NIU (not in universe)"', add
label values bo01a_auto bo01a_auto_lbl

label define bo01a_refrig_lbl 1 `"Yes"'
label define bo01a_refrig_lbl 2 `"No"', add
label define bo01a_refrig_lbl 9 `"NIU (not in universe)"', add
label values bo01a_refrig bo01a_refrig_lbl

label define bo01a_phone_lbl 1 `"Yes"'
label define bo01a_phone_lbl 2 `"No"', add
label define bo01a_phone_lbl 9 `"NIU (not in universe)"', add
label values bo01a_phone bo01a_phone_lbl

label define bo01a_pumpwat_lbl 1 `"Yes"'
label define bo01a_pumpwat_lbl 2 `"No"', add
label define bo01a_pumpwat_lbl 9 `"NIU (not in universe)"', add
label values bo01a_pumpwat bo01a_pumpwat_lbl

label define bo01a_ownershp_lbl 1 `"Owned"'
label define bo01a_ownershp_lbl 2 `"Rented"', add
label define bo01a_ownershp_lbl 3 `"Contract - loan-backed habitation"', add
label define bo01a_ownershp_lbl 4 `"Contract - mixed"', add
label define bo01a_ownershp_lbl 5 `"Ceded in return for services"', add
label define bo01a_ownershp_lbl 6 `"Lent, family member"', add
label define bo01a_ownershp_lbl 7 `"Other"', add
label define bo01a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values bo01a_ownershp bo01a_ownershp_lbl

label define bo01a_blind_lbl 0 `"None"'
label define bo01a_blind_lbl 1 `"1"', add
label define bo01a_blind_lbl 2 `"2"', add
label define bo01a_blind_lbl 3 `"3 or more"', add
label define bo01a_blind_lbl 9 `"NIU (not in universe)"', add
label values bo01a_blind bo01a_blind_lbl

label define bo01a_deaf_lbl 0 `"None"'
label define bo01a_deaf_lbl 1 `"1"', add
label define bo01a_deaf_lbl 2 `"2"', add
label define bo01a_deaf_lbl 3 `"3 or more"', add
label define bo01a_deaf_lbl 9 `"NIU (not in universe)"', add
label values bo01a_deaf bo01a_deaf_lbl

label define bo01a_paralys_lbl 0 `"None"'
label define bo01a_paralys_lbl 1 `"1"', add
label define bo01a_paralys_lbl 2 `"2"', add
label define bo01a_paralys_lbl 3 `"3 or more"', add
label define bo01a_paralys_lbl 9 `"NIU (not in universe)"', add
label values bo01a_paralys bo01a_paralys_lbl

label define bo01a_death_lbl 1 `"Yes"'
label define bo01a_death_lbl 2 `"No"', add
label define bo01a_death_lbl 8 `"No answer"', add
label define bo01a_death_lbl 9 `"NIU (not in universe)"', add
label values bo01a_death bo01a_death_lbl

label define bo01a_deathf_lbl 1 `"Yes"'
label define bo01a_deathf_lbl 2 `"No"', add
label define bo01a_deathf_lbl 8 `"No answer"', add
label define bo01a_deathf_lbl 9 `"NIU (not in universe)"', add
label values bo01a_deathf bo01a_deathf_lbl

label define bo01a_deathfres_lbl 3 `"While pregnant"'
label define bo01a_deathfres_lbl 4 `"While giving birth"', add
label define bo01a_deathfres_lbl 5 `"Up to two months after giving birth"', add
label define bo01a_deathfres_lbl 6 `"Others"', add
label define bo01a_deathfres_lbl 8 `"No answer"', add
label define bo01a_deathfres_lbl 9 `"NIU (not in universe)"', add
label values bo01a_deathfres bo01a_deathfres_lbl

label define bo01a_deathfage_lbl 00 `"0"'
label define bo01a_deathfage_lbl 01 `"1"', add
label define bo01a_deathfage_lbl 02 `"2"', add
label define bo01a_deathfage_lbl 03 `"3"', add
label define bo01a_deathfage_lbl 04 `"4"', add
label define bo01a_deathfage_lbl 05 `"5"', add
label define bo01a_deathfage_lbl 06 `"6"', add
label define bo01a_deathfage_lbl 07 `"7"', add
label define bo01a_deathfage_lbl 08 `"8"', add
label define bo01a_deathfage_lbl 09 `"9"', add
label define bo01a_deathfage_lbl 10 `"10"', add
label define bo01a_deathfage_lbl 11 `"11"', add
label define bo01a_deathfage_lbl 12 `"12"', add
label define bo01a_deathfage_lbl 13 `"13"', add
label define bo01a_deathfage_lbl 14 `"14"', add
label define bo01a_deathfage_lbl 15 `"15"', add
label define bo01a_deathfage_lbl 16 `"16"', add
label define bo01a_deathfage_lbl 17 `"17"', add
label define bo01a_deathfage_lbl 18 `"18"', add
label define bo01a_deathfage_lbl 19 `"19"', add
label define bo01a_deathfage_lbl 20 `"20"', add
label define bo01a_deathfage_lbl 21 `"21"', add
label define bo01a_deathfage_lbl 22 `"22"', add
label define bo01a_deathfage_lbl 23 `"23"', add
label define bo01a_deathfage_lbl 24 `"24"', add
label define bo01a_deathfage_lbl 25 `"25"', add
label define bo01a_deathfage_lbl 26 `"26"', add
label define bo01a_deathfage_lbl 27 `"27"', add
label define bo01a_deathfage_lbl 28 `"28"', add
label define bo01a_deathfage_lbl 29 `"29"', add
label define bo01a_deathfage_lbl 30 `"30"', add
label define bo01a_deathfage_lbl 31 `"31"', add
label define bo01a_deathfage_lbl 32 `"32"', add
label define bo01a_deathfage_lbl 33 `"33"', add
label define bo01a_deathfage_lbl 34 `"34"', add
label define bo01a_deathfage_lbl 35 `"35"', add
label define bo01a_deathfage_lbl 36 `"36"', add
label define bo01a_deathfage_lbl 37 `"37"', add
label define bo01a_deathfage_lbl 38 `"38"', add
label define bo01a_deathfage_lbl 39 `"39"', add
label define bo01a_deathfage_lbl 40 `"40"', add
label define bo01a_deathfage_lbl 41 `"41"', add
label define bo01a_deathfage_lbl 42 `"42"', add
label define bo01a_deathfage_lbl 43 `"43"', add
label define bo01a_deathfage_lbl 44 `"44"', add
label define bo01a_deathfage_lbl 45 `"45"', add
label define bo01a_deathfage_lbl 46 `"46"', add
label define bo01a_deathfage_lbl 47 `"47"', add
label define bo01a_deathfage_lbl 48 `"48"', add
label define bo01a_deathfage_lbl 49 `"49"', add
label define bo01a_deathfage_lbl 50 `"50"', add
label define bo01a_deathfage_lbl 51 `"51"', add
label define bo01a_deathfage_lbl 52 `"52"', add
label define bo01a_deathfage_lbl 53 `"53"', add
label define bo01a_deathfage_lbl 54 `"54"', add
label define bo01a_deathfage_lbl 55 `"55"', add
label define bo01a_deathfage_lbl 56 `"56"', add
label define bo01a_deathfage_lbl 57 `"57"', add
label define bo01a_deathfage_lbl 58 `"58"', add
label define bo01a_deathfage_lbl 59 `"59"', add
label define bo01a_deathfage_lbl 60 `"60"', add
label define bo01a_deathfage_lbl 61 `"61"', add
label define bo01a_deathfage_lbl 62 `"62"', add
label define bo01a_deathfage_lbl 63 `"63"', add
label define bo01a_deathfage_lbl 64 `"64"', add
label define bo01a_deathfage_lbl 65 `"65"', add
label define bo01a_deathfage_lbl 66 `"66"', add
label define bo01a_deathfage_lbl 67 `"67"', add
label define bo01a_deathfage_lbl 68 `"68"', add
label define bo01a_deathfage_lbl 69 `"69"', add
label define bo01a_deathfage_lbl 70 `"70"', add
label define bo01a_deathfage_lbl 71 `"71"', add
label define bo01a_deathfage_lbl 72 `"72"', add
label define bo01a_deathfage_lbl 73 `"73"', add
label define bo01a_deathfage_lbl 74 `"74"', add
label define bo01a_deathfage_lbl 75 `"75"', add
label define bo01a_deathfage_lbl 76 `"76"', add
label define bo01a_deathfage_lbl 77 `"77"', add
label define bo01a_deathfage_lbl 78 `"78"', add
label define bo01a_deathfage_lbl 79 `"79"', add
label define bo01a_deathfage_lbl 80 `"80"', add
label define bo01a_deathfage_lbl 81 `"81"', add
label define bo01a_deathfage_lbl 82 `"82"', add
label define bo01a_deathfage_lbl 83 `"83"', add
label define bo01a_deathfage_lbl 84 `"84"', add
label define bo01a_deathfage_lbl 85 `"85"', add
label define bo01a_deathfage_lbl 86 `"86"', add
label define bo01a_deathfage_lbl 87 `"87"', add
label define bo01a_deathfage_lbl 88 `"88"', add
label define bo01a_deathfage_lbl 89 `"89"', add
label define bo01a_deathfage_lbl 90 `"90"', add
label define bo01a_deathfage_lbl 91 `"91"', add
label define bo01a_deathfage_lbl 92 `"92"', add
label define bo01a_deathfage_lbl 93 `"93"', add
label define bo01a_deathfage_lbl 94 `"94"', add
label define bo01a_deathfage_lbl 95 `"95"', add
label define bo01a_deathfage_lbl 96 `"96"', add
label define bo01a_deathfage_lbl 97 `"97 +"', add
label define bo01a_deathfage_lbl 98 `"No answer"', add
label define bo01a_deathfage_lbl 99 `"NIU (not in universe)"', add
label values bo01a_deathfage bo01a_deathfage_lbl

label define bo01a_urban_lbl 1 `"Urban"'
label define bo01a_urban_lbl 2 `"Rural"', add
label values bo01a_urban bo01a_urban_lbl

label define bo01a_pernum_lbl 00 `"Household record"'
label define bo01a_pernum_lbl 01 `"1"', add
label define bo01a_pernum_lbl 02 `"2"', add
label define bo01a_pernum_lbl 03 `"3"', add
label define bo01a_pernum_lbl 04 `"4"', add
label define bo01a_pernum_lbl 05 `"5"', add
label define bo01a_pernum_lbl 06 `"6"', add
label define bo01a_pernum_lbl 07 `"7"', add
label define bo01a_pernum_lbl 08 `"8"', add
label define bo01a_pernum_lbl 09 `"9"', add
label define bo01a_pernum_lbl 10 `"10"', add
label define bo01a_pernum_lbl 11 `"11"', add
label define bo01a_pernum_lbl 12 `"12"', add
label define bo01a_pernum_lbl 13 `"13"', add
label define bo01a_pernum_lbl 14 `"14"', add
label define bo01a_pernum_lbl 15 `"15"', add
label define bo01a_pernum_lbl 16 `"16"', add
label define bo01a_pernum_lbl 17 `"17"', add
label define bo01a_pernum_lbl 18 `"18"', add
label define bo01a_pernum_lbl 19 `"19"', add
label define bo01a_pernum_lbl 20 `"20"', add
label define bo01a_pernum_lbl 21 `"21"', add
label define bo01a_pernum_lbl 22 `"22"', add
label define bo01a_pernum_lbl 23 `"23"', add
label define bo01a_pernum_lbl 24 `"24"', add
label define bo01a_pernum_lbl 25 `"25"', add
label define bo01a_pernum_lbl 26 `"26"', add
label define bo01a_pernum_lbl 27 `"27"', add
label define bo01a_pernum_lbl 28 `"28"', add
label define bo01a_pernum_lbl 29 `"29"', add
label define bo01a_pernum_lbl 30 `"30"', add
label values bo01a_pernum bo01a_pernum_lbl

label define bo01a_sex_lbl 1 `"Male"'
label define bo01a_sex_lbl 2 `"Female"', add
label values bo01a_sex bo01a_sex_lbl

label define bo01a_age_lbl 00 `"Less than 1 year old"'
label define bo01a_age_lbl 01 `"1"', add
label define bo01a_age_lbl 02 `"2"', add
label define bo01a_age_lbl 03 `"3"', add
label define bo01a_age_lbl 04 `"4"', add
label define bo01a_age_lbl 05 `"5"', add
label define bo01a_age_lbl 06 `"6"', add
label define bo01a_age_lbl 07 `"7"', add
label define bo01a_age_lbl 08 `"8"', add
label define bo01a_age_lbl 09 `"9"', add
label define bo01a_age_lbl 10 `"10"', add
label define bo01a_age_lbl 11 `"11"', add
label define bo01a_age_lbl 12 `"12"', add
label define bo01a_age_lbl 13 `"13"', add
label define bo01a_age_lbl 14 `"14"', add
label define bo01a_age_lbl 15 `"15"', add
label define bo01a_age_lbl 16 `"16"', add
label define bo01a_age_lbl 17 `"17"', add
label define bo01a_age_lbl 18 `"18"', add
label define bo01a_age_lbl 19 `"19"', add
label define bo01a_age_lbl 20 `"20"', add
label define bo01a_age_lbl 21 `"21"', add
label define bo01a_age_lbl 22 `"22"', add
label define bo01a_age_lbl 23 `"23"', add
label define bo01a_age_lbl 24 `"24"', add
label define bo01a_age_lbl 25 `"25"', add
label define bo01a_age_lbl 26 `"26"', add
label define bo01a_age_lbl 27 `"27"', add
label define bo01a_age_lbl 28 `"28"', add
label define bo01a_age_lbl 29 `"29"', add
label define bo01a_age_lbl 30 `"30"', add
label define bo01a_age_lbl 31 `"31"', add
label define bo01a_age_lbl 32 `"32"', add
label define bo01a_age_lbl 33 `"33"', add
label define bo01a_age_lbl 34 `"34"', add
label define bo01a_age_lbl 35 `"35"', add
label define bo01a_age_lbl 36 `"36"', add
label define bo01a_age_lbl 37 `"37"', add
label define bo01a_age_lbl 38 `"38"', add
label define bo01a_age_lbl 39 `"39"', add
label define bo01a_age_lbl 40 `"40"', add
label define bo01a_age_lbl 41 `"41"', add
label define bo01a_age_lbl 42 `"42"', add
label define bo01a_age_lbl 43 `"43"', add
label define bo01a_age_lbl 44 `"44"', add
label define bo01a_age_lbl 45 `"45"', add
label define bo01a_age_lbl 46 `"46"', add
label define bo01a_age_lbl 47 `"47"', add
label define bo01a_age_lbl 48 `"48"', add
label define bo01a_age_lbl 49 `"49"', add
label define bo01a_age_lbl 50 `"50"', add
label define bo01a_age_lbl 51 `"51"', add
label define bo01a_age_lbl 52 `"52"', add
label define bo01a_age_lbl 53 `"53"', add
label define bo01a_age_lbl 54 `"54"', add
label define bo01a_age_lbl 55 `"55"', add
label define bo01a_age_lbl 56 `"56"', add
label define bo01a_age_lbl 57 `"57"', add
label define bo01a_age_lbl 58 `"58"', add
label define bo01a_age_lbl 59 `"59"', add
label define bo01a_age_lbl 60 `"60"', add
label define bo01a_age_lbl 61 `"61"', add
label define bo01a_age_lbl 62 `"62"', add
label define bo01a_age_lbl 63 `"63"', add
label define bo01a_age_lbl 64 `"64"', add
label define bo01a_age_lbl 65 `"65"', add
label define bo01a_age_lbl 66 `"66"', add
label define bo01a_age_lbl 67 `"67"', add
label define bo01a_age_lbl 68 `"68"', add
label define bo01a_age_lbl 69 `"69"', add
label define bo01a_age_lbl 70 `"70"', add
label define bo01a_age_lbl 71 `"71"', add
label define bo01a_age_lbl 72 `"72"', add
label define bo01a_age_lbl 73 `"73"', add
label define bo01a_age_lbl 74 `"74"', add
label define bo01a_age_lbl 75 `"75"', add
label define bo01a_age_lbl 76 `"76"', add
label define bo01a_age_lbl 77 `"77"', add
label define bo01a_age_lbl 78 `"78"', add
label define bo01a_age_lbl 79 `"79"', add
label define bo01a_age_lbl 80 `"80"', add
label define bo01a_age_lbl 81 `"81"', add
label define bo01a_age_lbl 82 `"82"', add
label define bo01a_age_lbl 83 `"83"', add
label define bo01a_age_lbl 84 `"84"', add
label define bo01a_age_lbl 85 `"85"', add
label define bo01a_age_lbl 86 `"86"', add
label define bo01a_age_lbl 87 `"87"', add
label define bo01a_age_lbl 88 `"88"', add
label define bo01a_age_lbl 89 `"89"', add
label define bo01a_age_lbl 90 `"90"', add
label define bo01a_age_lbl 91 `"91"', add
label define bo01a_age_lbl 92 `"92"', add
label define bo01a_age_lbl 93 `"93"', add
label define bo01a_age_lbl 94 `"94"', add
label define bo01a_age_lbl 95 `"95"', add
label define bo01a_age_lbl 96 `"96"', add
label define bo01a_age_lbl 97 `"97"', add
label define bo01a_age_lbl 98 `"98 +"', add
label values bo01a_age bo01a_age_lbl

label define bo01a_birthreg_lbl 1 `"Yes"'
label define bo01a_birthreg_lbl 2 `"No"', add
label define bo01a_birthreg_lbl 9 `"Unknown"', add
label values bo01a_birthreg bo01a_birthreg_lbl

label define bo01a_relate_lbl 01 `"Head of household"'
label define bo01a_relate_lbl 02 `"Spouse or live-in partner"', add
label define bo01a_relate_lbl 03 `"Child or stepchild"', add
label define bo01a_relate_lbl 04 `"Son- or daughter-in-law"', add
label define bo01a_relate_lbl 05 `"Sibling or sibling-in-law"', add
label define bo01a_relate_lbl 06 `"Parents or parents-in-law"', add
label define bo01a_relate_lbl 07 `"Other relative"', add
label define bo01a_relate_lbl 08 `"Household employee"', add
label define bo01a_relate_lbl 09 `"Relative of a household employee"', add
label define bo01a_relate_lbl 10 `"Other non-relative"', add
label define bo01a_relate_lbl 11 `"Member of a collective household"', add
label define bo01a_relate_lbl 12 `"Transient"', add
label values bo01a_relate bo01a_relate_lbl

label define bo01a_lang1_lbl 1 `"Yes"'
label define bo01a_lang1_lbl 2 `"No"', add
label values bo01a_lang1 bo01a_lang1_lbl

label define bo01a_lang2_lbl 1 `"Yes"'
label define bo01a_lang2_lbl 2 `"No"', add
label values bo01a_lang2 bo01a_lang2_lbl

label define bo01a_lang3_lbl 1 `"Yes"'
label define bo01a_lang3_lbl 2 `"No"', add
label values bo01a_lang3 bo01a_lang3_lbl

label define bo01a_lang4_lbl 1 `"Yes"'
label define bo01a_lang4_lbl 2 `"No"', add
label values bo01a_lang4 bo01a_lang4_lbl

label define bo01a_lang5_lbl 1 `"Yes"'
label define bo01a_lang5_lbl 2 `"No"', add
label values bo01a_lang5 bo01a_lang5_lbl

label define bo01a_lang6_lbl 1 `"Doesn't speak"'
label define bo01a_lang6_lbl 2 `"Speaks"', add
label values bo01a_lang6 bo01a_lang6_lbl

label define bo01a_lang7_lbl 1 `"Yes"'
label define bo01a_lang7_lbl 2 `"No"', add
label values bo01a_lang7 bo01a_lang7_lbl

label define bo01a_livehere_lbl 1 `"Here"'
label define bo01a_livehere_lbl 2 `"In another place within Bolivia"', add
label define bo01a_livehere_lbl 3 `"In another country"', add
label values bo01a_livehere bo01a_livehere_lbl

label define bo01a_countryh_lbl 009 `"Alemania"'
label define bo01a_countryh_lbl 019 `"Antillas Holandesas"', add
label define bo01a_countryh_lbl 023 `"Argentina"', add
label define bo01a_countryh_lbl 049 `"Brazil"', add
label define bo01a_countryh_lbl 061 `"Chile"', add
label define bo01a_countryh_lbl 086 `"España"', add
label define bo01a_countryh_lbl 088 `"Estados Unidos"', add
label define bo01a_countryh_lbl 102 `"Francia"', add
label define bo01a_countryh_lbl 208 `"Peru"', add
label define bo01a_countryh_lbl 216 `"Reino Unido"', add
label define bo01a_countryh_lbl 256 `"Suiza"', add
label define bo01a_countryh_lbl 990 `"Foreign country, response suppressed"', add
label define bo01a_countryh_lbl 998 `"Not declared"', add
label define bo01a_countryh_lbl 999 `"NIU (not in universe)"', add
label values bo01a_countryh bo01a_countryh_lbl

label define bo01a_depth_lbl 01 `"Chuquisaca"'
label define bo01a_depth_lbl 02 `"La Paz"', add
label define bo01a_depth_lbl 03 `"Cochabamba"', add
label define bo01a_depth_lbl 04 `"Oruro"', add
label define bo01a_depth_lbl 05 `"Potosi"', add
label define bo01a_depth_lbl 06 `"Tarija"', add
label define bo01a_depth_lbl 07 `"Santa Cruz"', add
label define bo01a_depth_lbl 08 `"Beni"', add
label define bo01a_depth_lbl 09 `"Pando"', add
label define bo01a_depth_lbl 98 `"Unknown"', add
label define bo01a_depth_lbl 99 `"NIU (not in universe)"', add
label values bo01a_depth bo01a_depth_lbl

label define bo01a_provh_lbl 0101 `"Oropeza"'
label define bo01a_provh_lbl 0102 `"Azurduy"', add
label define bo01a_provh_lbl 0103 `"Zudañez"', add
label define bo01a_provh_lbl 0104 `"Tomina"', add
label define bo01a_provh_lbl 0105 `"Hernando Siles"', add
label define bo01a_provh_lbl 0106 `"Yamparaez"', add
label define bo01a_provh_lbl 0107 `"Nor Cinti"', add
label define bo01a_provh_lbl 0108 `"Belisario Boeto"', add
label define bo01a_provh_lbl 0109 `"Sud Cinti"', add
label define bo01a_provh_lbl 0110 `"Luis Calvo"', add
label define bo01a_provh_lbl 0199 `"Chuquisaca, province unknown"', add
label define bo01a_provh_lbl 0201 `"Murillo"', add
label define bo01a_provh_lbl 0202 `"Omasuyos"', add
label define bo01a_provh_lbl 0203 `"Pacajes"', add
label define bo01a_provh_lbl 0204 `"Camacho"', add
label define bo01a_provh_lbl 0205 `"Muñecas"', add
label define bo01a_provh_lbl 0206 `"Larecaja"', add
label define bo01a_provh_lbl 0207 `"Franz Tamayo"', add
label define bo01a_provh_lbl 0208 `"Ingavi"', add
label define bo01a_provh_lbl 0209 `"Loayza"', add
label define bo01a_provh_lbl 0210 `"Inquisivi"', add
label define bo01a_provh_lbl 0211 `"Sud Yungas"', add
label define bo01a_provh_lbl 0212 `"Los Andes"', add
label define bo01a_provh_lbl 0213 `"Aroma"', add
label define bo01a_provh_lbl 0214 `"Nor Yungas"', add
label define bo01a_provh_lbl 0216 `"Bautista Saavedra"', add
label define bo01a_provh_lbl 0217 `"Manco Kapac"', add
label define bo01a_provh_lbl 0220 `"Caranavi"', add
label define bo01a_provh_lbl 0299 `"La Paz, province unknown"', add
label define bo01a_provh_lbl 0301 `"Cercado"', add
label define bo01a_provh_lbl 0302 `"Campero"', add
label define bo01a_provh_lbl 0303 `"Ayopaya"', add
label define bo01a_provh_lbl 0304 `"Esteban Arce"', add
label define bo01a_provh_lbl 0305 `"Arani"', add
label define bo01a_provh_lbl 0306 `"Arque"', add
label define bo01a_provh_lbl 0307 `"Capinota"', add
label define bo01a_provh_lbl 0308 `"German Jordán"', add
label define bo01a_provh_lbl 0309 `"Quillacollo"', add
label define bo01a_provh_lbl 0310 `"Chapare"', add
label define bo01a_provh_lbl 0311 `"Tapacarí"', add
label define bo01a_provh_lbl 0312 `"Carrasco"', add
label define bo01a_provh_lbl 0313 `"Mizque"', add
label define bo01a_provh_lbl 0314 `"Punata"', add
label define bo01a_provh_lbl 0315 `"Bolívar"', add
label define bo01a_provh_lbl 0316 `"Tiraque"', add
label define bo01a_provh_lbl 0399 `"Cochabamba, province unknown"', add
label define bo01a_provh_lbl 0401 `"Cercado"', add
label define bo01a_provh_lbl 0402 `"Eduardo Avaroa"', add
label define bo01a_provh_lbl 0403 `"Carangas"', add
label define bo01a_provh_lbl 0404 `"Sajama"', add
label define bo01a_provh_lbl 0405 `"Litoral de Atacama"', add
label define bo01a_provh_lbl 0406 `"Poopo"', add
label define bo01a_provh_lbl 0407 `"Pantaleon Dalence"', add
label define bo01a_provh_lbl 0408 `"Ladislao Cabrera"', add
label define bo01a_provh_lbl 0409 `"Atahuallpa"', add
label define bo01a_provh_lbl 0410 `"Saucari"', add
label define bo01a_provh_lbl 0412 `"Sud Carangas"', add
label define bo01a_provh_lbl 0413 `"San Pedro de Totora"', add
label define bo01a_provh_lbl 0414 `"Sebastián Pagador"', add
label define bo01a_provh_lbl 0499 `"Oruro, province unknown"', add
label define bo01a_provh_lbl 0501 `"Tomas Frias"', add
label define bo01a_provh_lbl 0502 `"Rafael Bustillo"', add
label define bo01a_provh_lbl 0503 `"Cornelio Saavedra"', add
label define bo01a_provh_lbl 0504 `"Chayanta"', add
label define bo01a_provh_lbl 0505 `"Charcas"', add
label define bo01a_provh_lbl 0506 `"Nor Chichas"', add
label define bo01a_provh_lbl 0507 `"Alonso de Ibañez"', add
label define bo01a_provh_lbl 0508 `"Sur Chichas"', add
label define bo01a_provh_lbl 0509 `"Nor Lípez"', add
label define bo01a_provh_lbl 0511 `"José Maria Linares"', add
label define bo01a_provh_lbl 0512 `"Antonio Quijarro"', add
label define bo01a_provh_lbl 0513 `"Bernardino Bilbao Rioja"', add
label define bo01a_provh_lbl 0514 `"Daniel Campos"', add
label define bo01a_provh_lbl 0515 `"Modesto Omiste"', add
label define bo01a_provh_lbl 0599 `"Potosi, province unknown"', add
label define bo01a_provh_lbl 0601 `"Cercado"', add
label define bo01a_provh_lbl 0602 `"Aniceto Arce"', add
label define bo01a_provh_lbl 0603 `"Gran Chaco"', add
label define bo01a_provh_lbl 0604 `"Aviles"', add
label define bo01a_provh_lbl 0605 `"Méndez"', add
label define bo01a_provh_lbl 0606 `"Burnet O'Connor"', add
label define bo01a_provh_lbl 0699 `"Tarija, province unknown"', add
label define bo01a_provh_lbl 0701 `"Andrés Ibañez"', add
label define bo01a_provh_lbl 0702 `"Warnes"', add
label define bo01a_provh_lbl 0703 `"Velasco"', add
label define bo01a_provh_lbl 0704 `"Ichilo"', add
label define bo01a_provh_lbl 0705 `"Chiquitos"', add
label define bo01a_provh_lbl 0706 `"Sara"', add
label define bo01a_provh_lbl 0707 `"Cordillera"', add
label define bo01a_provh_lbl 0708 `"Vallegrande"', add
label define bo01a_provh_lbl 0709 `"Florida"', add
label define bo01a_provh_lbl 0710 `"Obispo Santiestevan"', add
label define bo01a_provh_lbl 0711 `"Ñuflo de Chávez"', add
label define bo01a_provh_lbl 0712 `"Angel Sandoval"', add
label define bo01a_provh_lbl 0713 `"Manuel Maria Caballero"', add
label define bo01a_provh_lbl 0714 `"German Busch"', add
label define bo01a_provh_lbl 0715 `"Guarayos"', add
label define bo01a_provh_lbl 0799 `"Santa Cruz, province unknown"', add
label define bo01a_provh_lbl 0801 `"Cercado"', add
label define bo01a_provh_lbl 0802 `"Vaca Diez"', add
label define bo01a_provh_lbl 0803 `"José Ballivián"', add
label define bo01a_provh_lbl 0804 `"Yacuma"', add
label define bo01a_provh_lbl 0805 `"Moxos"', add
label define bo01a_provh_lbl 0806 `"Marban"', add
label define bo01a_provh_lbl 0808 `"Itenez"', add
label define bo01a_provh_lbl 0899 `"Beni, province unknown"', add
label define bo01a_provh_lbl 0901 `"Nicolás Suárez"', add
label define bo01a_provh_lbl 0902 `"Manuripi"', add
label define bo01a_provh_lbl 0999 `"Pando, province unknown"', add
label define bo01a_provh_lbl 9998 `"Unknown"', add
label define bo01a_provh_lbl 9999 `"NIU (not in universe)"', add
label values bo01a_provh bo01a_provh_lbl

label define bo01a_bornhere_lbl 1 `"Here"'
label define bo01a_bornhere_lbl 2 `"In another place within Bolivia"', add
label define bo01a_bornhere_lbl 3 `"In another country"', add
label values bo01a_bornhere bo01a_bornhere_lbl

label define bo01a_ctrybrth_lbl 009 `"Germany"'
label define bo01a_ctrybrth_lbl 019 `"Netherlands Antilles"', add
label define bo01a_ctrybrth_lbl 023 `"Argentina"', add
label define bo01a_ctrybrth_lbl 031 `"Australia"', add
label define bo01a_ctrybrth_lbl 040 `"Belgium"', add
label define bo01a_ctrybrth_lbl 041 `"Belize"', add
label define bo01a_ctrybrth_lbl 049 `"Brazil"', add
label define bo01a_ctrybrth_lbl 057 `"Canada"', add
label define bo01a_ctrybrth_lbl 061 `"Chile"', add
label define bo01a_ctrybrth_lbl 062 `"China"', add
label define bo01a_ctrybrth_lbl 065 `"Colombia"', add
label define bo01a_ctrybrth_lbl 071 `"Costa Rica"', add
label define bo01a_ctrybrth_lbl 074 `"Cuba"', add
label define bo01a_ctrybrth_lbl 078 `"Ecuador"', add
label define bo01a_ctrybrth_lbl 086 `"Spain"', add
label define bo01a_ctrybrth_lbl 088 `"United States"', add
label define bo01a_ctrybrth_lbl 102 `"France"', add
label define bo01a_ctrybrth_lbl 120 `"Honduras"', add
label define bo01a_ctrybrth_lbl 146 `"Italy"', add
label define bo01a_ctrybrth_lbl 149 `"Japan"', add
label define bo01a_ctrybrth_lbl 180 `"Mexico"', add
label define bo01a_ctrybrth_lbl 207 `"Paraguay"', add
label define bo01a_ctrybrth_lbl 208 `"Peru"', add
label define bo01a_ctrybrth_lbl 216 `"United Kingdom"', add
label define bo01a_ctrybrth_lbl 221 `"Republic of Korea"', add
label define bo01a_ctrybrth_lbl 231 `"Russia"', add
label define bo01a_ctrybrth_lbl 256 `"Switzerland"', add
label define bo01a_ctrybrth_lbl 262 `"Taiwan"', add
label define bo01a_ctrybrth_lbl 283 `"Uruguay"', add
label define bo01a_ctrybrth_lbl 286 `"Venezuela"', add
label define bo01a_ctrybrth_lbl 990 `"Foreign country, response suppressed"', add
label define bo01a_ctrybrth_lbl 998 `"Unknown"', add
label define bo01a_ctrybrth_lbl 999 `"NIU (not in universe)"', add
label values bo01a_ctrybrth bo01a_ctrybrth_lbl

label define bo01a_yrarriv_lbl 1957 `"1957 and earlier"'
label define bo01a_yrarriv_lbl 1958 `"1958"', add
label define bo01a_yrarriv_lbl 1959 `"1959"', add
label define bo01a_yrarriv_lbl 1960 `"1960"', add
label define bo01a_yrarriv_lbl 1961 `"1961"', add
label define bo01a_yrarriv_lbl 1962 `"1962"', add
label define bo01a_yrarriv_lbl 1963 `"1963"', add
label define bo01a_yrarriv_lbl 1964 `"1964"', add
label define bo01a_yrarriv_lbl 1965 `"1965"', add
label define bo01a_yrarriv_lbl 1966 `"1966"', add
label define bo01a_yrarriv_lbl 1967 `"1967"', add
label define bo01a_yrarriv_lbl 1968 `"1968"', add
label define bo01a_yrarriv_lbl 1969 `"1969"', add
label define bo01a_yrarriv_lbl 1970 `"1970"', add
label define bo01a_yrarriv_lbl 1971 `"1971"', add
label define bo01a_yrarriv_lbl 1972 `"1972"', add
label define bo01a_yrarriv_lbl 1973 `"1973"', add
label define bo01a_yrarriv_lbl 1974 `"1974"', add
label define bo01a_yrarriv_lbl 1975 `"1975"', add
label define bo01a_yrarriv_lbl 1976 `"1976"', add
label define bo01a_yrarriv_lbl 1977 `"1977"', add
label define bo01a_yrarriv_lbl 1978 `"1978"', add
label define bo01a_yrarriv_lbl 1979 `"1979"', add
label define bo01a_yrarriv_lbl 1980 `"1980"', add
label define bo01a_yrarriv_lbl 1981 `"1981"', add
label define bo01a_yrarriv_lbl 1982 `"1982"', add
label define bo01a_yrarriv_lbl 1983 `"1983"', add
label define bo01a_yrarriv_lbl 1984 `"1984"', add
label define bo01a_yrarriv_lbl 1985 `"1985"', add
label define bo01a_yrarriv_lbl 1986 `"1986"', add
label define bo01a_yrarriv_lbl 1987 `"1987"', add
label define bo01a_yrarriv_lbl 1988 `"1988"', add
label define bo01a_yrarriv_lbl 1989 `"1989"', add
label define bo01a_yrarriv_lbl 1990 `"1990"', add
label define bo01a_yrarriv_lbl 1991 `"1991"', add
label define bo01a_yrarriv_lbl 1992 `"1992"', add
label define bo01a_yrarriv_lbl 1993 `"1993"', add
label define bo01a_yrarriv_lbl 1994 `"1994"', add
label define bo01a_yrarriv_lbl 1995 `"1995"', add
label define bo01a_yrarriv_lbl 1996 `"1996"', add
label define bo01a_yrarriv_lbl 1997 `"1997"', add
label define bo01a_yrarriv_lbl 1998 `"1998"', add
label define bo01a_yrarriv_lbl 1999 `"1999"', add
label define bo01a_yrarriv_lbl 2000 `"2000"', add
label define bo01a_yrarriv_lbl 2001 `"2001"', add
label define bo01a_yrarriv_lbl 9998 `"Unknown"', add
label define bo01a_yrarriv_lbl 9999 `"NIU (not in universe)"', add
label values bo01a_yrarriv bo01a_yrarriv_lbl

label define bo01a_deptbrth_lbl 01 `"Chuquisaca"'
label define bo01a_deptbrth_lbl 02 `"La Paz"', add
label define bo01a_deptbrth_lbl 03 `"Cochabamba"', add
label define bo01a_deptbrth_lbl 04 `"Oruro"', add
label define bo01a_deptbrth_lbl 05 `"Potosi"', add
label define bo01a_deptbrth_lbl 06 `"Tarija"', add
label define bo01a_deptbrth_lbl 07 `"Santa Cruz"', add
label define bo01a_deptbrth_lbl 08 `"Beni"', add
label define bo01a_deptbrth_lbl 09 `"Pando"', add
label define bo01a_deptbrth_lbl 98 `"Unknown"', add
label define bo01a_deptbrth_lbl 99 `"NIU (not in universe)"', add
label values bo01a_deptbrth bo01a_deptbrth_lbl

label define bo01a_provbrth_lbl 0101 `"Oropeza"'
label define bo01a_provbrth_lbl 0102 `"Azurduy"', add
label define bo01a_provbrth_lbl 0103 `"Zudañez"', add
label define bo01a_provbrth_lbl 0104 `"Tomina"', add
label define bo01a_provbrth_lbl 0105 `"Hernando Siles"', add
label define bo01a_provbrth_lbl 0106 `"Yamparaez"', add
label define bo01a_provbrth_lbl 0107 `"Nor Cinti"', add
label define bo01a_provbrth_lbl 0108 `"Belisario Boeto"', add
label define bo01a_provbrth_lbl 0109 `"Sud Cinti"', add
label define bo01a_provbrth_lbl 0110 `"Luis Calvo"', add
label define bo01a_provbrth_lbl 0199 `"Chuquisaca, province unknown"', add
label define bo01a_provbrth_lbl 0201 `"Murillo"', add
label define bo01a_provbrth_lbl 0202 `"Omasuyos"', add
label define bo01a_provbrth_lbl 0203 `"Pacajes"', add
label define bo01a_provbrth_lbl 0204 `"Camacho"', add
label define bo01a_provbrth_lbl 0205 `"Muñecas"', add
label define bo01a_provbrth_lbl 0206 `"Larecaja"', add
label define bo01a_provbrth_lbl 0207 `"Franz Tamayo"', add
label define bo01a_provbrth_lbl 0208 `"Ingavi"', add
label define bo01a_provbrth_lbl 0209 `"Loayza"', add
label define bo01a_provbrth_lbl 0210 `"Inquisivi"', add
label define bo01a_provbrth_lbl 0211 `"Sud Yungas"', add
label define bo01a_provbrth_lbl 0212 `"Los Andes"', add
label define bo01a_provbrth_lbl 0213 `"Aroma"', add
label define bo01a_provbrth_lbl 0214 `"Nor Yungas"', add
label define bo01a_provbrth_lbl 0215 `"Abel Iturralde"', add
label define bo01a_provbrth_lbl 0216 `"Bautista Saavedra"', add
label define bo01a_provbrth_lbl 0217 `"Manco Kapac"', add
label define bo01a_provbrth_lbl 0218 `"Gualberto Villarroel"', add
label define bo01a_provbrth_lbl 0219 `"José Manuel Pando"', add
label define bo01a_provbrth_lbl 0220 `"Caranavi"', add
label define bo01a_provbrth_lbl 0299 `"La Paz, province unknown"', add
label define bo01a_provbrth_lbl 0301 `"Cercado"', add
label define bo01a_provbrth_lbl 0302 `"Campero"', add
label define bo01a_provbrth_lbl 0303 `"Ayopaya"', add
label define bo01a_provbrth_lbl 0304 `"Esteban Arce"', add
label define bo01a_provbrth_lbl 0305 `"Arani"', add
label define bo01a_provbrth_lbl 0306 `"Arque"', add
label define bo01a_provbrth_lbl 0307 `"Capinota"', add
label define bo01a_provbrth_lbl 0308 `"German Jordán"', add
label define bo01a_provbrth_lbl 0309 `"Quillacollo"', add
label define bo01a_provbrth_lbl 0310 `"Chapare"', add
label define bo01a_provbrth_lbl 0311 `"Tapacarí"', add
label define bo01a_provbrth_lbl 0312 `"Carrasco"', add
label define bo01a_provbrth_lbl 0313 `"Mizque"', add
label define bo01a_provbrth_lbl 0314 `"Punata"', add
label define bo01a_provbrth_lbl 0315 `"Bolívar"', add
label define bo01a_provbrth_lbl 0316 `"Tiraque"', add
label define bo01a_provbrth_lbl 0399 `"Cochabamba, province unknown"', add
label define bo01a_provbrth_lbl 0401 `"Cercado"', add
label define bo01a_provbrth_lbl 0402 `"Eduardo Avaroa"', add
label define bo01a_provbrth_lbl 0403 `"Carangas"', add
label define bo01a_provbrth_lbl 0404 `"Sajama"', add
label define bo01a_provbrth_lbl 0405 `"Litoral de Atacama"', add
label define bo01a_provbrth_lbl 0406 `"Poopo"', add
label define bo01a_provbrth_lbl 0407 `"Pantaleon Dalence"', add
label define bo01a_provbrth_lbl 0408 `"Ladislao Cabrera"', add
label define bo01a_provbrth_lbl 0409 `"Atahuallpa"', add
label define bo01a_provbrth_lbl 0410 `"Saucari"', add
label define bo01a_provbrth_lbl 0411 `"Tomas Barron"', add
label define bo01a_provbrth_lbl 0412 `"Sud Carangas"', add
label define bo01a_provbrth_lbl 0413 `"San Pedro de Totora"', add
label define bo01a_provbrth_lbl 0414 `"Sebastián Pagador"', add
label define bo01a_provbrth_lbl 0415 `"Puerto de Mejillones"', add
label define bo01a_provbrth_lbl 0416 `"Nor Carangas"', add
label define bo01a_provbrth_lbl 0499 `"Oruro, province unknown"', add
label define bo01a_provbrth_lbl 0501 `"Tomas Frias"', add
label define bo01a_provbrth_lbl 0502 `"Rafael Bustillo"', add
label define bo01a_provbrth_lbl 0503 `"Cornelio Saavedra"', add
label define bo01a_provbrth_lbl 0504 `"Chayanta"', add
label define bo01a_provbrth_lbl 0505 `"Charcas"', add
label define bo01a_provbrth_lbl 0506 `"Nor Chichas"', add
label define bo01a_provbrth_lbl 0507 `"Alonso de Ibañez"', add
label define bo01a_provbrth_lbl 0508 `"Sur Chichas"', add
label define bo01a_provbrth_lbl 0509 `"Nor Lípez"', add
label define bo01a_provbrth_lbl 0510 `"Sur Lípez"', add
label define bo01a_provbrth_lbl 0511 `"José Maria Linares"', add
label define bo01a_provbrth_lbl 0512 `"Antonio Quijarro"', add
label define bo01a_provbrth_lbl 0513 `"Bernardino Bilbao Rioja"', add
label define bo01a_provbrth_lbl 0514 `"Daniel Campos"', add
label define bo01a_provbrth_lbl 0515 `"Modesto Omiste"', add
label define bo01a_provbrth_lbl 0516 `"Enrique Baldivieso"', add
label define bo01a_provbrth_lbl 0599 `"Potosi, province unknown"', add
label define bo01a_provbrth_lbl 0601 `"Cercado"', add
label define bo01a_provbrth_lbl 0602 `"Aniceto Arce"', add
label define bo01a_provbrth_lbl 0603 `"Gran Chaco"', add
label define bo01a_provbrth_lbl 0604 `"Aviles"', add
label define bo01a_provbrth_lbl 0605 `"Méndez"', add
label define bo01a_provbrth_lbl 0606 `"Burnet O'Connor"', add
label define bo01a_provbrth_lbl 0699 `"Tarija, province unknown"', add
label define bo01a_provbrth_lbl 0701 `"Andrés Ibañez"', add
label define bo01a_provbrth_lbl 0702 `"Warnes"', add
label define bo01a_provbrth_lbl 0703 `"Velasco"', add
label define bo01a_provbrth_lbl 0704 `"Ichilo"', add
label define bo01a_provbrth_lbl 0705 `"Chiquitos"', add
label define bo01a_provbrth_lbl 0706 `"Sara"', add
label define bo01a_provbrth_lbl 0707 `"Cordillera"', add
label define bo01a_provbrth_lbl 0708 `"Vallegrande"', add
label define bo01a_provbrth_lbl 0709 `"Florida"', add
label define bo01a_provbrth_lbl 0710 `"Obispo Santiestevan"', add
label define bo01a_provbrth_lbl 0711 `"Ñuflo de Chávez"', add
label define bo01a_provbrth_lbl 0712 `"Angel Sandoval"', add
label define bo01a_provbrth_lbl 0713 `"Manuel Maria Caballero"', add
label define bo01a_provbrth_lbl 0714 `"German Busch"', add
label define bo01a_provbrth_lbl 0715 `"Guarayos"', add
label define bo01a_provbrth_lbl 0799 `"Santa Cruz, province unknown"', add
label define bo01a_provbrth_lbl 0801 `"Cercado"', add
label define bo01a_provbrth_lbl 0802 `"Vaca Diez"', add
label define bo01a_provbrth_lbl 0803 `"José Ballivián"', add
label define bo01a_provbrth_lbl 0804 `"Yacuma"', add
label define bo01a_provbrth_lbl 0805 `"Moxos"', add
label define bo01a_provbrth_lbl 0806 `"Marban"', add
label define bo01a_provbrth_lbl 0807 `"Mamore"', add
label define bo01a_provbrth_lbl 0808 `"Itenez"', add
label define bo01a_provbrth_lbl 0899 `"Beni, province unknown"', add
label define bo01a_provbrth_lbl 0901 `"Nicolás Suárez"', add
label define bo01a_provbrth_lbl 0902 `"Manuripi"', add
label define bo01a_provbrth_lbl 0903 `"Madre de Dios"', add
label define bo01a_provbrth_lbl 0904 `"Abuna"', add
label define bo01a_provbrth_lbl 0905 `"Federico Roman"', add
label define bo01a_provbrth_lbl 0999 `"Pando, province unknown"', add
label define bo01a_provbrth_lbl 9998 `"Unknown"', add
label define bo01a_provbrth_lbl 9999 `"NIU (not in universe)"', add
label values bo01a_provbrth bo01a_provbrth_lbl

label define bo01a_mothtong_lbl 1 `"Quechua"'
label define bo01a_mothtong_lbl 2 `"Aymara"', add
label define bo01a_mothtong_lbl 3 `"Spanish"', add
label define bo01a_mothtong_lbl 4 `"Guarani"', add
label define bo01a_mothtong_lbl 5 `"Other native language"', add
label define bo01a_mothtong_lbl 6 `"Foreign language"', add
label define bo01a_mothtong_lbl 7 `"Doesn't speak"', add
label define bo01a_mothtong_lbl 9 `"NIU (not in universe)"', add
label values bo01a_mothtong bo01a_mothtong_lbl

label define bo01a_lit_lbl 1 `"Yes"'
label define bo01a_lit_lbl 2 `"No"', add
label define bo01a_lit_lbl 8 `"Unknown"', add
label define bo01a_lit_lbl 9 `"NIU (not in universe)"', add
label values bo01a_lit bo01a_lit_lbl

label define bo01a_attend_lbl 1 `"Does not attend"'
label define bo01a_attend_lbl 2 `"Yes, attends a public school"', add
label define bo01a_attend_lbl 3 `"Yes, attends a private school"', add
label define bo01a_attend_lbl 8 `"Unknown"', add
label define bo01a_attend_lbl 9 `"NIU (not in universe)"', add
label values bo01a_attend bo01a_attend_lbl

label define bo01a_levatt_lbl 0 `"NIU (not in universe)"'
label define bo01a_levatt_lbl 1 `"Preschool"', add
label define bo01a_levatt_lbl 2 `"Primary"', add
label define bo01a_levatt_lbl 3 `"Secondary"', add
label define bo01a_levatt_lbl 9 `"Unknown"', add
label values bo01a_levatt bo01a_levatt_lbl

label define bo01a_levcomp_lbl 11 `"None"'
label define bo01a_levcomp_lbl 12 `"Preschool"', add
label define bo01a_levcomp_lbl 13 `"Basic"', add
label define bo01a_levcomp_lbl 14 `"Intermediate"', add
label define bo01a_levcomp_lbl 15 `"Middle (secondary)"', add
label define bo01a_levcomp_lbl 16 `"Primary-current"', add
label define bo01a_levcomp_lbl 17 `"Secondary-current"', add
label define bo01a_levcomp_lbl 18 `"Licensure (B.A.)"', add
label define bo01a_levcomp_lbl 19 `"Technical degree"', add
label define bo01a_levcomp_lbl 20 `"Normal school"', add
label define bo01a_levcomp_lbl 21 `"Military-police training"', add
label define bo01a_levcomp_lbl 22 `"Technical institute"', add
label define bo01a_levcomp_lbl 23 `"Other"', add
label define bo01a_levcomp_lbl 98 `"Unknown"', add
label define bo01a_levcomp_lbl 99 `"NIU (not in universe)"', add
label values bo01a_levcomp bo01a_levcomp_lbl

label define bo01a_yrcomp_lbl 01 `"1"'
label define bo01a_yrcomp_lbl 02 `"2"', add
label define bo01a_yrcomp_lbl 03 `"3"', add
label define bo01a_yrcomp_lbl 04 `"4"', add
label define bo01a_yrcomp_lbl 05 `"5"', add
label define bo01a_yrcomp_lbl 06 `"6"', add
label define bo01a_yrcomp_lbl 07 `"7"', add
label define bo01a_yrcomp_lbl 08 `"8"', add
label define bo01a_yrcomp_lbl 09 `"Unknown"', add
label define bo01a_yrcomp_lbl 99 `"NIU (not in universe)"', add
label values bo01a_yrcomp bo01a_yrcomp_lbl

label define bo01a_edattan_lbl 000 `"None"'
label define bo01a_edattan_lbl 121 `"Preschool, grade 1"', add
label define bo01a_edattan_lbl 122 `"Preschool, grade 2"', add
label define bo01a_edattan_lbl 131 `"Basic, grade 1"', add
label define bo01a_edattan_lbl 132 `"Basic, grade 2"', add
label define bo01a_edattan_lbl 133 `"Basic, grade 3"', add
label define bo01a_edattan_lbl 134 `"Basic, grade 4"', add
label define bo01a_edattan_lbl 135 `"Basic, grade 5"', add
label define bo01a_edattan_lbl 141 `"Intermediate, grade 1"', add
label define bo01a_edattan_lbl 142 `"Intermediate, grade 2"', add
label define bo01a_edattan_lbl 143 `"Intermediate, grade 3"', add
label define bo01a_edattan_lbl 151 `"Middle (secondary), grade 1"', add
label define bo01a_edattan_lbl 152 `"Middle (secondary), grade 2"', add
label define bo01a_edattan_lbl 153 `"Middle (secondary), grade 3"', add
label define bo01a_edattan_lbl 154 `"Middle (secondary), grade 4"', add
label define bo01a_edattan_lbl 161 `"Primary-current, grade 1"', add
label define bo01a_edattan_lbl 162 `"Primary-current, grade 2"', add
label define bo01a_edattan_lbl 163 `"Primary-current, grade 3"', add
label define bo01a_edattan_lbl 164 `"Primary-current, grade 4"', add
label define bo01a_edattan_lbl 165 `"Primary-current, grade 5"', add
label define bo01a_edattan_lbl 166 `"Primary-current, grade 6"', add
label define bo01a_edattan_lbl 167 `"Primary-current, grade 7"', add
label define bo01a_edattan_lbl 168 `"Primary-current, grade 8"', add
label define bo01a_edattan_lbl 171 `"Secondary-current, grade 1"', add
label define bo01a_edattan_lbl 172 `"Secondary-current, grade 2"', add
label define bo01a_edattan_lbl 173 `"Secondary-current, grade 3"', add
label define bo01a_edattan_lbl 174 `"Secondary-current, grade 4"', add
label define bo01a_edattan_lbl 181 `"Licensure (B.A.), grade 1"', add
label define bo01a_edattan_lbl 182 `"Licensure (B.A.), grade 2"', add
label define bo01a_edattan_lbl 183 `"Licensure (B.A.), grade 3"', add
label define bo01a_edattan_lbl 184 `"Licensure (B.A.), grade 4"', add
label define bo01a_edattan_lbl 185 `"Licensure (B.A.), grade 5"', add
label define bo01a_edattan_lbl 191 `"Technical degree, grade 1"', add
label define bo01a_edattan_lbl 192 `"Technical degree, grade 2"', add
label define bo01a_edattan_lbl 193 `"Technical degree, grade 3"', add
label define bo01a_edattan_lbl 194 `"Technical degree, grade 4"', add
label define bo01a_edattan_lbl 201 `"Normal school, grade 1"', add
label define bo01a_edattan_lbl 202 `"Normal school, grade 2"', add
label define bo01a_edattan_lbl 203 `"Normal school, grade 3"', add
label define bo01a_edattan_lbl 204 `"Normal school, grade 4"', add
label define bo01a_edattan_lbl 211 `"Military-police training, grade 1"', add
label define bo01a_edattan_lbl 212 `"Military-police training, grade 2"', add
label define bo01a_edattan_lbl 213 `"Military-police training, grade 3"', add
label define bo01a_edattan_lbl 214 `"Military-police training, grade 4"', add
label define bo01a_edattan_lbl 215 `"Military-police training, grade 5"', add
label define bo01a_edattan_lbl 221 `"Technical institute, grade 1"', add
label define bo01a_edattan_lbl 222 `"Technical institute, grade 2"', add
label define bo01a_edattan_lbl 223 `"Technical institute, grade 3"', add
label define bo01a_edattan_lbl 224 `"Technical institute, grade 4"', add
label define bo01a_edattan_lbl 231 `"Other, grade 1"', add
label define bo01a_edattan_lbl 232 `"Other, grade 2"', add
label define bo01a_edattan_lbl 233 `"Other, grade 3"', add
label define bo01a_edattan_lbl 234 `"Other, grade 4"', add
label define bo01a_edattan_lbl 998 `"Unknown"', add
label define bo01a_edattan_lbl 999 `"NIU (not in universe)"', add
label values bo01a_edattan bo01a_edattan_lbl

label define bo01a_prereq_lbl 11 `"None"'
label define bo01a_prereq_lbl 13 `"Basic"', add
label define bo01a_prereq_lbl 14 `"Intermediate"', add
label define bo01a_prereq_lbl 15 `"Middle (secondary)"', add
label define bo01a_prereq_lbl 16 `"Primary-current"', add
label define bo01a_prereq_lbl 17 `"Secondary-current"', add
label define bo01a_prereq_lbl 98 `"Unknown"', add
label define bo01a_prereq_lbl 99 `"NIU (not in universe)"', add
label values bo01a_prereq bo01a_prereq_lbl

label define bo01a_prereqyr_lbl 01 `"1"'
label define bo01a_prereqyr_lbl 02 `"2"', add
label define bo01a_prereqyr_lbl 03 `"3"', add
label define bo01a_prereqyr_lbl 04 `"4"', add
label define bo01a_prereqyr_lbl 05 `"5"', add
label define bo01a_prereqyr_lbl 06 `"6"', add
label define bo01a_prereqyr_lbl 07 `"7"', add
label define bo01a_prereqyr_lbl 08 `"8"', add
label define bo01a_prereqyr_lbl 09 `"Unknown"', add
label define bo01a_prereqyr_lbl 99 `"NIU (not in universe)"', add
label values bo01a_prereqyr bo01a_prereqyr_lbl

label define bo01a_here5yr_lbl 1 `"Here"'
label define bo01a_here5yr_lbl 2 `"In another place"', add
label define bo01a_here5yr_lbl 3 `"In another country"', add
label define bo01a_here5yr_lbl 9 `"NIU (not in universe)"', add
label values bo01a_here5yr bo01a_here5yr_lbl

label define bo01a_cntry5yr_lbl 009 `"Alemania"'
label define bo01a_cntry5yr_lbl 019 `"Antillas Holandesas"', add
label define bo01a_cntry5yr_lbl 023 `"Argentina"', add
label define bo01a_cntry5yr_lbl 049 `"Brasil"', add
label define bo01a_cntry5yr_lbl 057 `"Canada"', add
label define bo01a_cntry5yr_lbl 061 `"Chile"', add
label define bo01a_cntry5yr_lbl 062 `"China"', add
label define bo01a_cntry5yr_lbl 065 `"Colombia"', add
label define bo01a_cntry5yr_lbl 074 `"Cuba"', add
label define bo01a_cntry5yr_lbl 078 `"Ecuador"', add
label define bo01a_cntry5yr_lbl 086 `"España"', add
label define bo01a_cntry5yr_lbl 088 `"Estados Unidos"', add
label define bo01a_cntry5yr_lbl 102 `"Francia"', add
label define bo01a_cntry5yr_lbl 146 `"Italia"', add
label define bo01a_cntry5yr_lbl 149 `"Japon"', add
label define bo01a_cntry5yr_lbl 180 `"Mexico"', add
label define bo01a_cntry5yr_lbl 207 `"Paraguay"', add
label define bo01a_cntry5yr_lbl 208 `"Peru"', add
label define bo01a_cntry5yr_lbl 216 `"Reino Unido"', add
label define bo01a_cntry5yr_lbl 256 `"Suiza"', add
label define bo01a_cntry5yr_lbl 286 `"Venezuela"', add
label define bo01a_cntry5yr_lbl 990 `"Foreign country, response suppressed"', add
label define bo01a_cntry5yr_lbl 998 `"Unknown"', add
label define bo01a_cntry5yr_lbl 999 `"NIU (not in universe)"', add
label values bo01a_cntry5yr bo01a_cntry5yr_lbl

label define bo01a_dept5yr_lbl 01 `"Chuquisaca"'
label define bo01a_dept5yr_lbl 02 `"La Paz"', add
label define bo01a_dept5yr_lbl 03 `"Cochabamba"', add
label define bo01a_dept5yr_lbl 04 `"Oruro"', add
label define bo01a_dept5yr_lbl 05 `"Potosi"', add
label define bo01a_dept5yr_lbl 06 `"Tarija"', add
label define bo01a_dept5yr_lbl 07 `"Santa Cruz"', add
label define bo01a_dept5yr_lbl 08 `"Beni"', add
label define bo01a_dept5yr_lbl 09 `"Pando"', add
label define bo01a_dept5yr_lbl 98 `"Unknown"', add
label define bo01a_dept5yr_lbl 99 `"NIU (not in universe)"', add
label values bo01a_dept5yr bo01a_dept5yr_lbl

label define bo01a_prov5yr_lbl 0101 `"Oropeza"'
label define bo01a_prov5yr_lbl 0102 `"Azurduy"', add
label define bo01a_prov5yr_lbl 0103 `"Zudañez"', add
label define bo01a_prov5yr_lbl 0104 `"Tomina"', add
label define bo01a_prov5yr_lbl 0105 `"Hernando Siles"', add
label define bo01a_prov5yr_lbl 0106 `"Yamparaez"', add
label define bo01a_prov5yr_lbl 0107 `"Nor Cinti"', add
label define bo01a_prov5yr_lbl 0108 `"Belisario Boeto"', add
label define bo01a_prov5yr_lbl 0109 `"Sud Cinti"', add
label define bo01a_prov5yr_lbl 0110 `"Luis Calvo"', add
label define bo01a_prov5yr_lbl 0199 `"Chuquisaca, province unknown"', add
label define bo01a_prov5yr_lbl 0201 `"Murillo"', add
label define bo01a_prov5yr_lbl 0202 `"Omasuyos"', add
label define bo01a_prov5yr_lbl 0203 `"Pacajes"', add
label define bo01a_prov5yr_lbl 0204 `"Camacho"', add
label define bo01a_prov5yr_lbl 0205 `"Muñecas"', add
label define bo01a_prov5yr_lbl 0206 `"Larecaja"', add
label define bo01a_prov5yr_lbl 0207 `"Franz Tamayo"', add
label define bo01a_prov5yr_lbl 0208 `"Ingavi"', add
label define bo01a_prov5yr_lbl 0209 `"Loayza"', add
label define bo01a_prov5yr_lbl 0210 `"Inquisivi"', add
label define bo01a_prov5yr_lbl 0211 `"Sud Yungas"', add
label define bo01a_prov5yr_lbl 0212 `"Los Andes"', add
label define bo01a_prov5yr_lbl 0213 `"Aroma"', add
label define bo01a_prov5yr_lbl 0214 `"Nor Yungas"', add
label define bo01a_prov5yr_lbl 0215 `"Abel Iturralde"', add
label define bo01a_prov5yr_lbl 0216 `"Bautista Saavedra"', add
label define bo01a_prov5yr_lbl 0217 `"Manco Kapac"', add
label define bo01a_prov5yr_lbl 0218 `"Gualberto Villarroel"', add
label define bo01a_prov5yr_lbl 0219 `"José Manuel Pando"', add
label define bo01a_prov5yr_lbl 0220 `"Caranavi"', add
label define bo01a_prov5yr_lbl 0299 `"La Paz, province unknown"', add
label define bo01a_prov5yr_lbl 0301 `"Cercado"', add
label define bo01a_prov5yr_lbl 0302 `"Campero"', add
label define bo01a_prov5yr_lbl 0303 `"Ayopaya"', add
label define bo01a_prov5yr_lbl 0304 `"Esteban Arce"', add
label define bo01a_prov5yr_lbl 0305 `"Arani"', add
label define bo01a_prov5yr_lbl 0306 `"Arque"', add
label define bo01a_prov5yr_lbl 0307 `"Capinota"', add
label define bo01a_prov5yr_lbl 0308 `"German Jordán"', add
label define bo01a_prov5yr_lbl 0309 `"Quillacollo"', add
label define bo01a_prov5yr_lbl 0310 `"Chapare"', add
label define bo01a_prov5yr_lbl 0311 `"Tapacarí"', add
label define bo01a_prov5yr_lbl 0312 `"Carrasco"', add
label define bo01a_prov5yr_lbl 0313 `"Mizque"', add
label define bo01a_prov5yr_lbl 0314 `"Punata"', add
label define bo01a_prov5yr_lbl 0315 `"Bolívar"', add
label define bo01a_prov5yr_lbl 0316 `"Tiraque"', add
label define bo01a_prov5yr_lbl 0399 `"Cochabamba, province unknown"', add
label define bo01a_prov5yr_lbl 0401 `"Cercado"', add
label define bo01a_prov5yr_lbl 0402 `"Eduardo Avaroa"', add
label define bo01a_prov5yr_lbl 0403 `"Carangas"', add
label define bo01a_prov5yr_lbl 0404 `"Sajama"', add
label define bo01a_prov5yr_lbl 0405 `"Litoral de Atacama"', add
label define bo01a_prov5yr_lbl 0406 `"Poopo"', add
label define bo01a_prov5yr_lbl 0407 `"Pantaleon Dalence"', add
label define bo01a_prov5yr_lbl 0408 `"Ladislao Cabrera"', add
label define bo01a_prov5yr_lbl 0409 `"Atahuallpa"', add
label define bo01a_prov5yr_lbl 0410 `"Saucari"', add
label define bo01a_prov5yr_lbl 0411 `"Tomas Barron"', add
label define bo01a_prov5yr_lbl 0412 `"Sud Carangas"', add
label define bo01a_prov5yr_lbl 0413 `"San Pedro de Totora"', add
label define bo01a_prov5yr_lbl 0414 `"Sebastián Pagador"', add
label define bo01a_prov5yr_lbl 0415 `"Puerto de Mejillones"', add
label define bo01a_prov5yr_lbl 0416 `"Nor Carangas"', add
label define bo01a_prov5yr_lbl 0499 `"Oruro, province unknown"', add
label define bo01a_prov5yr_lbl 0501 `"Tomas Frias"', add
label define bo01a_prov5yr_lbl 0502 `"Rafael Bustillo"', add
label define bo01a_prov5yr_lbl 0503 `"Cornelio Saavedra"', add
label define bo01a_prov5yr_lbl 0504 `"Chayanta"', add
label define bo01a_prov5yr_lbl 0505 `"Charcas"', add
label define bo01a_prov5yr_lbl 0506 `"Nor Chichas"', add
label define bo01a_prov5yr_lbl 0507 `"Alonso de Ibañez"', add
label define bo01a_prov5yr_lbl 0508 `"Sur Chichas"', add
label define bo01a_prov5yr_lbl 0509 `"Nor Lípez"', add
label define bo01a_prov5yr_lbl 0510 `"Sur Lípez"', add
label define bo01a_prov5yr_lbl 0511 `"José Maria Linares"', add
label define bo01a_prov5yr_lbl 0512 `"Antonio Quijarro"', add
label define bo01a_prov5yr_lbl 0513 `"Bernardino Bilbao Rioja"', add
label define bo01a_prov5yr_lbl 0514 `"Daniel Campos"', add
label define bo01a_prov5yr_lbl 0515 `"Modesto Omiste"', add
label define bo01a_prov5yr_lbl 0516 `"Enrique Baldivieso"', add
label define bo01a_prov5yr_lbl 0599 `"Potosi, province unknown"', add
label define bo01a_prov5yr_lbl 0601 `"Cercado"', add
label define bo01a_prov5yr_lbl 0602 `"Aniceto Arce"', add
label define bo01a_prov5yr_lbl 0603 `"Gran Chaco"', add
label define bo01a_prov5yr_lbl 0604 `"Aviles"', add
label define bo01a_prov5yr_lbl 0605 `"Méndez"', add
label define bo01a_prov5yr_lbl 0606 `"Burnet O'Connor"', add
label define bo01a_prov5yr_lbl 0699 `"Tarija, province unknown"', add
label define bo01a_prov5yr_lbl 0701 `"Andrés Ibañez"', add
label define bo01a_prov5yr_lbl 0702 `"Warnes"', add
label define bo01a_prov5yr_lbl 0703 `"Velasco"', add
label define bo01a_prov5yr_lbl 0704 `"Ichilo"', add
label define bo01a_prov5yr_lbl 0705 `"Chiquitos"', add
label define bo01a_prov5yr_lbl 0706 `"Sara"', add
label define bo01a_prov5yr_lbl 0707 `"Cordillera"', add
label define bo01a_prov5yr_lbl 0708 `"Vallegrande"', add
label define bo01a_prov5yr_lbl 0709 `"Florida"', add
label define bo01a_prov5yr_lbl 0710 `"Obispo Santiestevan"', add
label define bo01a_prov5yr_lbl 0711 `"Ñuflo de Chávez"', add
label define bo01a_prov5yr_lbl 0712 `"Angel Sandoval"', add
label define bo01a_prov5yr_lbl 0713 `"Manuel Maria Caballero"', add
label define bo01a_prov5yr_lbl 0714 `"German Busch"', add
label define bo01a_prov5yr_lbl 0715 `"Guarayos"', add
label define bo01a_prov5yr_lbl 0799 `"Santa Cruz, province unknown"', add
label define bo01a_prov5yr_lbl 0801 `"Cercado"', add
label define bo01a_prov5yr_lbl 0802 `"Vaca Diez"', add
label define bo01a_prov5yr_lbl 0803 `"José Ballivián"', add
label define bo01a_prov5yr_lbl 0804 `"Yacuma"', add
label define bo01a_prov5yr_lbl 0805 `"Moxos"', add
label define bo01a_prov5yr_lbl 0806 `"Marban"', add
label define bo01a_prov5yr_lbl 0807 `"Mamore"', add
label define bo01a_prov5yr_lbl 0808 `"Itenez"', add
label define bo01a_prov5yr_lbl 0899 `"Beni, province unknown"', add
label define bo01a_prov5yr_lbl 0901 `"Nicolás Suárez"', add
label define bo01a_prov5yr_lbl 0902 `"Manuripi"', add
label define bo01a_prov5yr_lbl 0903 `"Madre de Dios"', add
label define bo01a_prov5yr_lbl 0904 `"Abuna"', add
label define bo01a_prov5yr_lbl 0905 `"Federico Román"', add
label define bo01a_prov5yr_lbl 0999 `"Pando, province unknown"', add
label define bo01a_prov5yr_lbl 9998 `"Unknown"', add
label define bo01a_prov5yr_lbl 9999 `"NIU (not in universe)"', add
label values bo01a_prov5yr bo01a_prov5yr_lbl

label define bo01a_wkrlstwk_lbl 1 `"Yes"'
label define bo01a_wkrlstwk_lbl 2 `"No"', add
label define bo01a_wkrlstwk_lbl 8 `"Unknown"', add
label define bo01a_wkrlstwk_lbl 9 `"NIU (not in universe)"', add
label values bo01a_wkrlstwk bo01a_wkrlstwk_lbl

label define bo01a_nonwork1_lbl 1 `"Had a job, did not work"'
label define bo01a_nonwork1_lbl 2 `"Tended agricultural activity"', add
label define bo01a_nonwork1_lbl 3 `"Tended to some own or family business"', add
label define bo01a_nonwork1_lbl 4 `"Worked for income"', add
label define bo01a_nonwork1_lbl 5 `"Did not work"', add
label define bo01a_nonwork1_lbl 8 `"Unknown"', add
label define bo01a_nonwork1_lbl 9 `"NIU (not in universe)"', add
label values bo01a_nonwork1 bo01a_nonwork1_lbl

label define bo01a_nonwork2_lbl 1 `"Looked for work"'
label define bo01a_nonwork2_lbl 2 `"Looked for work for the first time"', add
label define bo01a_nonwork2_lbl 3 `"Is a student"', add
label define bo01a_nonwork2_lbl 4 `"Household duties"', add
label define bo01a_nonwork2_lbl 5 `"Retired, pensioner, rentier"', add
label define bo01a_nonwork2_lbl 6 `"Other"', add
label define bo01a_nonwork2_lbl 8 `"Unknown"', add
label define bo01a_nonwork2_lbl 9 `"NIU (not in universe)"', add
label values bo01a_nonwork2 bo01a_nonwork2_lbl

label define bo01a_occ_lbl 000 `"NIU (not in universe)"'
label define bo01a_occ_lbl 011 `"Armed forces"', add
label define bo01a_occ_lbl 111 `"Members directive personnel of the executive and legislative powers and judicial powers"', add
label define bo01a_occ_lbl 112 `"Members directive personnel of public administration"', add
label define bo01a_occ_lbl 113 `"Heads of small populations"', add
label define bo01a_occ_lbl 114 `"Officials of political, social, community, business and religious institutions"', add
label define bo01a_occ_lbl 121 `"General directors / general managers of businesses with employees"', add
label define bo01a_occ_lbl 122 `"Directors/ managers of businesses with employees"', add
label define bo01a_occ_lbl 123 `"Other directors / leaders"', add
label define bo01a_occ_lbl 131 `"Owner-managers of small businesses without employees or single person business"', add
label define bo01a_occ_lbl 211 `"Professionals of natural, physical, chemical, biological and similar sciences"', add
label define bo01a_occ_lbl 213 `"Professionals of informatics sciences"', add
label define bo01a_occ_lbl 214 `"Architects, engineers and similar professionals"', add
label define bo01a_occ_lbl 221 `"Professionals in biological and biochemical sciences and others related to organic beings"', add
label define bo01a_occ_lbl 222 `"Professionals in medicine, dentistry, and pharmacy"', add
label define bo01a_occ_lbl 223 `"Nursing professionals"', add
label define bo01a_occ_lbl 231 `"Educators in higher education"', add
label define bo01a_occ_lbl 232 `"Professors of secondary education"', add
label define bo01a_occ_lbl 233 `"Professors of elementary and preschool education"', add
label define bo01a_occ_lbl 234 `"Professors and instructors in special education"', add
label define bo01a_occ_lbl 235 `"Other professionals in education"', add
label define bo01a_occ_lbl 241 `"Professionals in economic and financial sciences"', add
label define bo01a_occ_lbl 242 `"Professionals in law and political sciences"', add
label define bo01a_occ_lbl 243 `"Professionals in human sciences"', add
label define bo01a_occ_lbl 244 `"Professionals in social sciences"', add
label define bo01a_occ_lbl 245 `"Writers, creative and performing artists"', add
label define bo01a_occ_lbl 246 `"Professionals in religion"', add
label define bo01a_occ_lbl 299 `"Professionals, not specified"', add
label define bo01a_occ_lbl 311 `"Support technicians in physical, chemical, geological, engineering and similar sciences"', add
label define bo01a_occ_lbl 312 `"Support technicians in informatics support"', add
label define bo01a_occ_lbl 313 `"Technicians operators of optical and electronic equipment"', add
label define bo01a_occ_lbl 314 `"Technicians in navigation and aeronautics"', add
label define bo01a_occ_lbl 315 `"Inspectors of construction jobs, security and healthcare and quality control"', add
label define bo01a_occ_lbl 321 `"Support technicians in biology, agronomy, zoology, and biochemistry"', add
label define bo01a_occ_lbl 322 `"Support technicians in medicine and healthcare"', add
label define bo01a_occ_lbl 323 `"Mid-level nurses and midwives"', add
label define bo01a_occ_lbl 324 `"Naturalists and healers"', add
label define bo01a_occ_lbl 331 `"Mid-level professors in secondary and elementary education"', add
label define bo01a_occ_lbl 332 `"Mid-level professors in pre-school education"', add
label define bo01a_occ_lbl 334 `"Other mid-level professors and instructors"', add
label define bo01a_occ_lbl 339 `"Teaching associate professionals, not specified"', add
label define bo01a_occ_lbl 341 `"Technicians in financial and technical services"', add
label define bo01a_occ_lbl 342 `"Support technicians in commercial services and agents"', add
label define bo01a_occ_lbl 343 `"Technicians in administration services"', add
label define bo01a_occ_lbl 344 `"Agents of customs, taxes, and similar"', add
label define bo01a_occ_lbl 345 `"Police inspectors and detectives"', add
label define bo01a_occ_lbl 346 `"Technicians in social assistance"', add
label define bo01a_occ_lbl 347 `"Occupations in artistic occupations, entertainment and sports"', add
label define bo01a_occ_lbl 348 `"Lay support in religious groups"', add
label define bo01a_occ_lbl 399 `"Technicians and associate professionals, not specified"', add
label define bo01a_occ_lbl 411 `"Secretaries and operators of office machinery"', add
label define bo01a_occ_lbl 412 `"Accounting support, financial support and similar"', add
label define bo01a_occ_lbl 413 `"Employees in charge of material registries and transportation registries"', add
label define bo01a_occ_lbl 414 `"Employees of libraries and mail services and similar"', add
label define bo01a_occ_lbl 419 `"Other office workers not in another category"', add
label define bo01a_occ_lbl 421 `"Cashiers, bet takers, loan agents and similar"', add
label define bo01a_occ_lbl 422 `"Employees of information and receptionists"', add
label define bo01a_occ_lbl 511 `"Workers in direct public service"', add
label define bo01a_occ_lbl 512 `"Service personnel in hotels, restaurants, and similar"', add
label define bo01a_occ_lbl 513 `"Workers in personal care services and similar"', add
label define bo01a_occ_lbl 514 `"Other workers in personal services to individuals"', add
label define bo01a_occ_lbl 516 `"Personnel in protection and security services"', add
label define bo01a_occ_lbl 522 `"Vendors in shops and stores"', add
label define bo01a_occ_lbl 523 `"Vendors in kiosks and market stalls"', add
label define bo01a_occ_lbl 529 `"Models, salespersons, demonstrators, not specified"', add
label define bo01a_occ_lbl 611 `"Industrial crop farmers"', add
label define bo01a_occ_lbl 612 `"Industrial animal breeders"', add
label define bo01a_occ_lbl 613 `"Industrial farmers"', add
label define bo01a_occ_lbl 614 `"Industrial forestry producers and similar"', add
label define bo01a_occ_lbl 615 `"Industrial producers in fishing, hunting, and trap hunters"', add
label define bo01a_occ_lbl 619 `"Market-oriented skilled agricultural workers, not specified"', add
label define bo01a_occ_lbl 621 `"Small producers in agriculture, ranching, farming, forestry and similar"', add
label define bo01a_occ_lbl 711 `"Miners, quarry workers, stone hammerers and workers"', add
label define bo01a_occ_lbl 712 `"Workers in building constructions and civil engineering jobs"', add
label define bo01a_occ_lbl 713 `"Workers in finishing buildings and civil engineering jobs"', add
label define bo01a_occ_lbl 714 `"Painters, wall paper installers, and similar"', add
label define bo01a_occ_lbl 721 `"Molder, welders, laminators, boilermakers, assemblers of metal structures, and similar"', add
label define bo01a_occ_lbl 722 `"Blacksmiths, locksmiths, lathe operators, toolmakers and similar"', add
label define bo01a_occ_lbl 723 `"Mechanics and machinery adjusters"', add
label define bo01a_occ_lbl 724 `"Mechanics and adjusters of electrical and electronic equipments"', add
label define bo01a_occ_lbl 729 `"Metal, machinery and related workers, not specified"', add
label define bo01a_occ_lbl 731 `"Precision mechanics in metals and similar materials"', add
label define bo01a_occ_lbl 732 `"Potters, glass operators and similar"', add
label define bo01a_occ_lbl 733 `"Artisans of wood, woven goods, leather and other materials"', add
label define bo01a_occ_lbl 734 `"Workers of graphic arts and similar"', add
label define bo01a_occ_lbl 735 `"Other workers in manufacturing industries not included in another category"', add
label define bo01a_occ_lbl 741 `"Workers in the food, beverage, and tobacco industries"', add
label define bo01a_occ_lbl 742 `"Workers in wood treatments, carpenters, cabinetmakers, and similar"', add
label define bo01a_occ_lbl 743 `"Workers in the manufacture of textile products, clothing, and similar"', add
label define bo01a_occ_lbl 744 `"Workers in the manufacture of hide and leather products, and footwear"', add
label define bo01a_occ_lbl 745 `"Other workers in the manufacturing industry"', add
label define bo01a_occ_lbl 811 `"Operators of mineral mining and extracting and processing installations"', add
label define bo01a_occ_lbl 812 `"Operators of metal processing installations"', add
label define bo01a_occ_lbl 813 `"Operators of glass, ceramic, and similar installations"', add
label define bo01a_occ_lbl 814 `"Operator of installations for processing wood and manufacturing paper"', add
label define bo01a_occ_lbl 815 `"Operators of installations for chemical treatments"', add
label define bo01a_occ_lbl 816 `"Operators of installations for energy production, hydroelectric, solar, geothermic, and similar"', add
label define bo01a_occ_lbl 821 `"Operators of machinery for working metal and mineral products"', add
label define bo01a_occ_lbl 822 `"Operators of machinery for manufacturing chemical products"', add
label define bo01a_occ_lbl 823 `"Operators of machinery for manufacturing rubber products and plastic materials"', add
label define bo01a_occ_lbl 824 `"Operators of machinery for manufacturing wood products"', add
label define bo01a_occ_lbl 825 `"Operators of machinery for printing, binding, and manufacture of paper products"', add
label define bo01a_occ_lbl 826 `"Operators of machinery for the manufacture of textile products and hide and leather articles"', add
label define bo01a_occ_lbl 827 `"Operators of machinery for the manufacture of foods and similar products"', add
label define bo01a_occ_lbl 828 `"Assemblers"', add
label define bo01a_occ_lbl 829 `"Other operators of machinery and assemblers"', add
label define bo01a_occ_lbl 831 `"Machinists of locomotives and similar"', add
label define bo01a_occ_lbl 832 `"Motor vehicle drivers"', add
label define bo01a_occ_lbl 833 `"Operators of mobile agricultural machinery and other mobile machinery"', add
label define bo01a_occ_lbl 834 `"Ship conductor"', add
label define bo01a_occ_lbl 899 `"Plant and machine operators, not specified"', add
label define bo01a_occ_lbl 911 `"Traveling salesmen and similar"', add
label define bo01a_occ_lbl 912 `"Shoe shines and other street workers"', add
label define bo01a_occ_lbl 913 `"Domestic personnel and similar, cleaners, washers, and pressers"', add
label define bo01a_occ_lbl 914 `"Concierges, car washers and window washers and similar"', add
label define bo01a_occ_lbl 915 `"Messengers, porters, doormen, and similar"', add
label define bo01a_occ_lbl 916 `"Trash collectors and similar"', add
label define bo01a_occ_lbl 921 `"Agricultural, forestry, fishing and similar laborers"', add
label define bo01a_occ_lbl 931 `"Laborers in mining and construction"', add
label define bo01a_occ_lbl 932 `"Laborers in the manufacturing industry"', add
label define bo01a_occ_lbl 933 `"Laborers in transportation"', add
label define bo01a_occ_lbl 989 `"Elementary workers, not specfied"', add
label define bo01a_occ_lbl 990 `"Occupation response suppressed"', add
label define bo01a_occ_lbl 998 `"Unknown"', add
label values bo01a_occ bo01a_occ_lbl

label define bo01a_classwk_lbl 3 `"Employee (manual laborer or professional)"'
label define bo01a_classwk_lbl 4 `"Own-account worker"', add
label define bo01a_classwk_lbl 5 `"Owner-employer"', add
label define bo01a_classwk_lbl 6 `"Member of a cooperative"', add
label define bo01a_classwk_lbl 7 `"Unpaid family worker"', add
label define bo01a_classwk_lbl 8 `"Unknown"', add
label define bo01a_classwk_lbl 9 `"NIU (not in universe)"', add
label values bo01a_classwk bo01a_classwk_lbl

label define bo01a_ind3_lbl 011 `"General agricultural crops and production"'
label define bo01a_ind3_lbl 012 `"Animal breeding"', add
label define bo01a_ind3_lbl 013 `"Agricultural crop production in combination with animal breeding (mixed production)"', add
label define bo01a_ind3_lbl 014 `"Activities of agricultural and cattle services, except veterinary services"', add
label define bo01a_ind3_lbl 015 `"Hunting and capturing live animals, repopulation of hunting animals, and related services"', add
label define bo01a_ind3_lbl 019 `"Agriculture and hunting, not specified"', add
label define bo01a_ind3_lbl 020 `"Forestry, extraction of lumber and related service activities"', add
label define bo01a_ind3_lbl 050 `"Fishing, fish production and fish breeding, and fish farms and related service activities"', add
label define bo01a_ind3_lbl 111 `"Extraction of crude petroleum and natural gas"', add
label define bo01a_ind3_lbl 112 `"Service activities related to extraction of petroleum and gas except prospecting activities"', add
label define bo01a_ind3_lbl 132 `"Extraction of non-ferrous metalloid minerals, except the minerals uranium and thorium"', add
label define bo01a_ind3_lbl 141 `"Extraction of stones, sand, and clay"', add
label define bo01a_ind3_lbl 142 `"Extraction from mines and quarries, not in another category"', add
label define bo01a_ind3_lbl 151 `"Production, processing, and conservation of meats, fish, fruits, beans, vegetables, oils and fats"', add
label define bo01a_ind3_lbl 152 `"Manufacture of dairy products"', add
label define bo01a_ind3_lbl 153 `"Manufacture of milled products, starches and products derived from starches, and prepared animal feeds"', add
label define bo01a_ind3_lbl 154 `"Manufacture of other food products"', add
label define bo01a_ind3_lbl 155 `"Manufacture of beverages"', add
label define bo01a_ind3_lbl 159 `"Manufacture of food and beverages, not specified"', add
label define bo01a_ind3_lbl 160 `"Manufacture of tobacco products"', add
label define bo01a_ind3_lbl 171 `"Manufacture of thread, knits, and finishing textile products"', add
label define bo01a_ind3_lbl 172 `"Manufacture of textile products"', add
label define bo01a_ind3_lbl 173 `"Manufacture of knits and knit and crocheted articles"', add
label define bo01a_ind3_lbl 179 `"Manufacture of textiles, not specified"', add
label define bo01a_ind3_lbl 181 `"Manufacture of clothing made for men, women, and children, except leather clothing"', add
label define bo01a_ind3_lbl 191 `"Curing of leather, manufacture of leather bags, leather harnesses"', add
label define bo01a_ind3_lbl 192 `"Manufacture of footwear"', add
label define bo01a_ind3_lbl 201 `"Lumber cutting and finishing"', add
label define bo01a_ind3_lbl 202 `"Manufacture of products made of wood, cork, straw, and woven fibers"', add
label define bo01a_ind3_lbl 210 `"Manufacture of paper and paper products"', add
label define bo01a_ind3_lbl 221 `"Editing activities"', add
label define bo01a_ind3_lbl 222 `"Printing activities"', add
label define bo01a_ind3_lbl 232 `"Manufacture of products from refining petroleum"', add
label define bo01a_ind3_lbl 241 `"Manufacture of basic chemical substances"', add
label define bo01a_ind3_lbl 242 `"Manufacture of other chemical products"', add
label define bo01a_ind3_lbl 251 `"Manufacture of rubber products"', add
label define bo01a_ind3_lbl 252 `"Manufacture of plastic products"', add
label define bo01a_ind3_lbl 261 `"Manufacture of glass and glass products"', add
label define bo01a_ind3_lbl 269 `"Manufacture of non-metal mineral products, not included in another category"', add
label define bo01a_ind3_lbl 272 `"Manufacture of raw materials of precious metals and non-ferrous metals"', add
label define bo01a_ind3_lbl 273 `"Metal foundry"', add
label define bo01a_ind3_lbl 281 `"Manufacture of metallic products for structural use, tanks, deposits, and vapor generators"', add
label define bo01a_ind3_lbl 289 `"Manufacture of other products made of metal, service activities related to metal works"', add
label define bo01a_ind3_lbl 291 `"Manufacture of machinery for general use"', add
label define bo01a_ind3_lbl 292 `"Manufacture of machinery for special uses"', add
label define bo01a_ind3_lbl 315 `"Manufacture of electrical lamps and illumination equipment"', add
label define bo01a_ind3_lbl 331 `"Manufacture of medical appliances and instruments and instruments for measuring, verifying, training, navigating, and other uses, except optical instruments"', add
label define bo01a_ind3_lbl 342 `"Manufacture of chassis for automobile, towing, and tractor trailer vehicles"', add
label define bo01a_ind3_lbl 343 `"Manufacture of parts, pieces, and accessories for automobile vehicles and their motors"', add
label define bo01a_ind3_lbl 361 `"Manufacture of furniture and mattresses"', add
label define bo01a_ind3_lbl 369 `"Manufacturing industries, not in another category"', add
label define bo01a_ind3_lbl 401 `"Production, transportation and distribution of electrical energy"', add
label define bo01a_ind3_lbl 402 `"Production of gas, distribution of gaseous fuels in urban pipelines"', add
label define bo01a_ind3_lbl 410 `"Collection, purification and distribution of water"', add
label define bo01a_ind3_lbl 451 `"Preparation of land for construction"', add
label define bo01a_ind3_lbl 452 `"Construction of entire buildings or parts of buildings, civil engineering jobs"', add
label define bo01a_ind3_lbl 453 `"Insulation and finishing buildings and civil engineering works"', add
label define bo01a_ind3_lbl 454 `"Finishing buildings and civil engineering works"', add
label define bo01a_ind3_lbl 455 `"Rental of construction or demolition equipment with operators"', add
label define bo01a_ind3_lbl 501 `"Sale of automobile vehicles"', add
label define bo01a_ind3_lbl 502 `"Maintenance and repair of automobile vehicles"', add
label define bo01a_ind3_lbl 503 `"Sale of parts, pieces, and accessories for automobile vehicles"', add
label define bo01a_ind3_lbl 504 `"Sales, maintenance and repair of motorcycles, and sale of their parts, pieces and accessories"', add
label define bo01a_ind3_lbl 505 `"Wholesale commerce of automobile fuel"', add
label define bo01a_ind3_lbl 512 `"Wholesale commerce of raw agricultural materials, live animals, foods, beverages, and tobacco"', add
label define bo01a_ind3_lbl 513 `"Wholesale commerce of household goods"', add
label define bo01a_ind3_lbl 514 `"Wholesale commerce of intermediate products, non-agricultural waste and discarded materials"', add
label define bo01a_ind3_lbl 515 `"Wholesale commerce of machinery, equipment and materials"', add
label define bo01a_ind3_lbl 519 `"Wholesale commerce of other products"', add
label define bo01a_ind3_lbl 521 `"Non-specialized retail commerce in stores"', add
label define bo01a_ind3_lbl 522 `"Retail sales of food, beverages, and tobacco in specialized stores"', add
label define bo01a_ind3_lbl 523 `"Retail commerce of other new products in specialized stores"', add
label define bo01a_ind3_lbl 524 `"Retail sales in stores that sell used goods"', add
label define bo01a_ind3_lbl 525 `"Retail commerce not carried out in stores"', add
label define bo01a_ind3_lbl 526 `"Repair of personal items and household goods"', add
label define bo01a_ind3_lbl 529 `"Retail trade, except vehicles, not specified"', add
label define bo01a_ind3_lbl 551 `"Hotel services"', add
label define bo01a_ind3_lbl 552 `"Services of selling foods and beverages"', add
label define bo01a_ind3_lbl 601 `"Railroad transportation services"', add
label define bo01a_ind3_lbl 602 `"Other land transportation services"', add
label define bo01a_ind3_lbl 603 `"Services of pipeline transportation"', add
label define bo01a_ind3_lbl 609 `"Land transportation, not specified"', add
label define bo01a_ind3_lbl 612 `"Transportation on internal navigation routes"', add
label define bo01a_ind3_lbl 621 `"Regular air transportation"', add
label define bo01a_ind3_lbl 622 `"Non-regular air transportation"', add
label define bo01a_ind3_lbl 630 `"Complementary and auxiliary transportation activities, activities of travel agencies"', add
label define bo01a_ind3_lbl 641 `"Postal and mail services"', add
label define bo01a_ind3_lbl 642 `"Telecommunications services"', add
label define bo01a_ind3_lbl 651 `"Monetary intermediation"', add
label define bo01a_ind3_lbl 659 `"Other types of financial intermediation"', add
label define bo01a_ind3_lbl 660 `"Insurance services and administration of retirement and pension funds except obligatory social security plans"', add
label define bo01a_ind3_lbl 671 `"Auxiliary services of financial intermediation except services of insurance plans and administration of retirement and pension funds"', add
label define bo01a_ind3_lbl 701 `"Real estate services carried out for oneself with owned or rented properties"', add
label define bo01a_ind3_lbl 702 `"Real estate services carried out for payment or under contract"', add
label define bo01a_ind3_lbl 711 `"Rental of transportation equipment"', add
label define bo01a_ind3_lbl 713 `"Rental of personal items and household goods not included in another category"', add
label define bo01a_ind3_lbl 721 `"Services of consultants in informatics equipment"', add
label define bo01a_ind3_lbl 722 `"Services of consultants in informatics and supplying informatics programs"', add
label define bo01a_ind3_lbl 725 `"Services of maintenance and repair of office, accounting, and informatics machinery"', add
label define bo01a_ind3_lbl 729 `"Other informatics activities"', add
label define bo01a_ind3_lbl 731 `"Experimental research and development in the field of natural sciences and engineering"', add
label define bo01a_ind3_lbl 732 `"Experimental research and development in the field of social sciences and humanities"', add
label define bo01a_ind3_lbl 741 `"Legal and accounting activities, bookkeeping and auditing; tax advising; marketing establishments and carrying out public opinion polls; business advising and advising in topics of administrative processing of documents"', add
label define bo01a_ind3_lbl 742 `"Service of architecture and engineering and other technical activities"', add
label define bo01a_ind3_lbl 743 `"Publicity services"', add
label define bo01a_ind3_lbl 749 `"Business services, not included in another category"', add
label define bo01a_ind3_lbl 751 `"State administration and application of economic and community social politics"', add
label define bo01a_ind3_lbl 752 `"Services provided to the community in general"', add
label define bo01a_ind3_lbl 753 `"Activities of social security plans with obligatory affiliation"', add
label define bo01a_ind3_lbl 759 `"Public administration and defense, not specified"', add
label define bo01a_ind3_lbl 801 `"Elementary education"', add
label define bo01a_ind3_lbl 802 `"Secondary education"', add
label define bo01a_ind3_lbl 803 `"Higher education"', add
label define bo01a_ind3_lbl 809 `"Education for adults and other types of education"', add
label define bo01a_ind3_lbl 851 `"Services related to human health"', add
label define bo01a_ind3_lbl 852 `"Veterinary services"', add
label define bo01a_ind3_lbl 853 `"Activities of social services"', add
label define bo01a_ind3_lbl 859 `"Health and social work, not specified"', add
label define bo01a_ind3_lbl 900 `"Elimination of waste products and sewage water, sanitation and similar services"', add
label define bo01a_ind3_lbl 911 `"Services of business, professional, and employers organizations"', add
label define bo01a_ind3_lbl 912 `"Union services"', add
label define bo01a_ind3_lbl 919 `"Services of other associations"', add
label define bo01a_ind3_lbl 921 `"Services of cinema, radio, television, and other entertainment services"', add
label define bo01a_ind3_lbl 923 `"Services of libraries, archives and museums and other cultural activities"', add
label define bo01a_ind3_lbl 924 `"Services for practicing sports and recreational activities"', add
label define bo01a_ind3_lbl 929 `"Recreational, cultural, sporting activities, not specified"', add
label define bo01a_ind3_lbl 930 `"Other services provided by non-specialized labor"', add
label define bo01a_ind3_lbl 950 `"Services in private homes that hire domestic servants"', add
label define bo01a_ind3_lbl 990 `"Services of extraterritorial organizations and organisms"', add
label define bo01a_ind3_lbl 995 `"Industry response suppressed"', add
label define bo01a_ind3_lbl 998 `"Unknown"', add
label define bo01a_ind3_lbl 999 `"NIU (not in universe)"', add
label values bo01a_ind3 bo01a_ind3_lbl

label define bo01a_marst_lbl 1 `"Single"'
label define bo01a_marst_lbl 2 `"Married"', add
label define bo01a_marst_lbl 3 `"Consensual union"', add
label define bo01a_marst_lbl 4 `"Separated"', add
label define bo01a_marst_lbl 5 `"Divorced"', add
label define bo01a_marst_lbl 6 `"Widowed"', add
label define bo01a_marst_lbl 9 `"NIU (not in universe)"', add
label values bo01a_marst bo01a_marst_lbl

label define bo01a_indig_lbl 1 `"Quechua"'
label define bo01a_indig_lbl 2 `"Aymara"', add
label define bo01a_indig_lbl 3 `"Guarani"', add
label define bo01a_indig_lbl 4 `"Chiquitano"', add
label define bo01a_indig_lbl 5 `"Mojeño"', add
label define bo01a_indig_lbl 6 `"Other native"', add
label define bo01a_indig_lbl 7 `"None"', add
label define bo01a_indig_lbl 9 `"NIU (not in universe)"', add
label values bo01a_indig bo01a_indig_lbl

label define bo01a_chborn_lbl 00 `"0"'
label define bo01a_chborn_lbl 01 `"1"', add
label define bo01a_chborn_lbl 02 `"2"', add
label define bo01a_chborn_lbl 03 `"3"', add
label define bo01a_chborn_lbl 04 `"4"', add
label define bo01a_chborn_lbl 05 `"5"', add
label define bo01a_chborn_lbl 06 `"6"', add
label define bo01a_chborn_lbl 07 `"7"', add
label define bo01a_chborn_lbl 08 `"8"', add
label define bo01a_chborn_lbl 09 `"9"', add
label define bo01a_chborn_lbl 10 `"10"', add
label define bo01a_chborn_lbl 11 `"11"', add
label define bo01a_chborn_lbl 12 `"12"', add
label define bo01a_chborn_lbl 13 `"13"', add
label define bo01a_chborn_lbl 14 `"14"', add
label define bo01a_chborn_lbl 15 `"15"', add
label define bo01a_chborn_lbl 16 `"16"', add
label define bo01a_chborn_lbl 17 `"17"', add
label define bo01a_chborn_lbl 18 `"18+"', add
label define bo01a_chborn_lbl 98 `"Unknown"', add
label define bo01a_chborn_lbl 99 `"NIU (not in universe)"', add
label values bo01a_chborn bo01a_chborn_lbl

label define bo01a_chsurv_lbl 00 `"0"'
label define bo01a_chsurv_lbl 01 `"1"', add
label define bo01a_chsurv_lbl 02 `"2"', add
label define bo01a_chsurv_lbl 03 `"3"', add
label define bo01a_chsurv_lbl 04 `"4"', add
label define bo01a_chsurv_lbl 05 `"5"', add
label define bo01a_chsurv_lbl 06 `"6"', add
label define bo01a_chsurv_lbl 07 `"7"', add
label define bo01a_chsurv_lbl 08 `"8"', add
label define bo01a_chsurv_lbl 09 `"9"', add
label define bo01a_chsurv_lbl 10 `"10"', add
label define bo01a_chsurv_lbl 11 `"11"', add
label define bo01a_chsurv_lbl 12 `"12"', add
label define bo01a_chsurv_lbl 13 `"13"', add
label define bo01a_chsurv_lbl 14 `"14+"', add
label define bo01a_chsurv_lbl 98 `"Unknown"', add
label define bo01a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values bo01a_chsurv bo01a_chsurv_lbl

label define bo01a_chdead_lbl 00 `"0"'
label define bo01a_chdead_lbl 01 `"1"', add
label define bo01a_chdead_lbl 02 `"2"', add
label define bo01a_chdead_lbl 03 `"3"', add
label define bo01a_chdead_lbl 04 `"4"', add
label define bo01a_chdead_lbl 05 `"5"', add
label define bo01a_chdead_lbl 06 `"6"', add
label define bo01a_chdead_lbl 07 `"7"', add
label define bo01a_chdead_lbl 08 `"8"', add
label define bo01a_chdead_lbl 09 `"9"', add
label define bo01a_chdead_lbl 10 `"10"', add
label define bo01a_chdead_lbl 11 `"11"', add
label define bo01a_chdead_lbl 12 `"12+"', add
label define bo01a_chdead_lbl 98 `"Unknown"', add
label define bo01a_chdead_lbl 99 `"NIU (not in universe)"', add
label values bo01a_chdead bo01a_chdead_lbl

label define bo01a_bthmonth_lbl 01 `"January"'
label define bo01a_bthmonth_lbl 02 `"February"', add
label define bo01a_bthmonth_lbl 03 `"March"', add
label define bo01a_bthmonth_lbl 04 `"April"', add
label define bo01a_bthmonth_lbl 05 `"May"', add
label define bo01a_bthmonth_lbl 06 `"June"', add
label define bo01a_bthmonth_lbl 07 `"July"', add
label define bo01a_bthmonth_lbl 08 `"August"', add
label define bo01a_bthmonth_lbl 09 `"September"', add
label define bo01a_bthmonth_lbl 10 `"October"', add
label define bo01a_bthmonth_lbl 11 `"November"', add
label define bo01a_bthmonth_lbl 12 `"December"', add
label define bo01a_bthmonth_lbl 98 `"Unknown"', add
label define bo01a_bthmonth_lbl 99 `"NIU (not in universe)"', add
label values bo01a_bthmonth bo01a_bthmonth_lbl

label define bo01a_bthyear_lbl 1940 `"1940 or earlier"'
label define bo01a_bthyear_lbl 1941 `"1941"', add
label define bo01a_bthyear_lbl 1942 `"1942"', add
label define bo01a_bthyear_lbl 1943 `"1943"', add
label define bo01a_bthyear_lbl 1944 `"1944"', add
label define bo01a_bthyear_lbl 1945 `"1945"', add
label define bo01a_bthyear_lbl 1946 `"1946"', add
label define bo01a_bthyear_lbl 1947 `"1947"', add
label define bo01a_bthyear_lbl 1948 `"1948"', add
label define bo01a_bthyear_lbl 1949 `"1949"', add
label define bo01a_bthyear_lbl 1950 `"1950"', add
label define bo01a_bthyear_lbl 1951 `"1951"', add
label define bo01a_bthyear_lbl 1952 `"1952"', add
label define bo01a_bthyear_lbl 1953 `"1953"', add
label define bo01a_bthyear_lbl 1954 `"1954"', add
label define bo01a_bthyear_lbl 1955 `"1955"', add
label define bo01a_bthyear_lbl 1956 `"1956"', add
label define bo01a_bthyear_lbl 1957 `"1957"', add
label define bo01a_bthyear_lbl 1958 `"1958"', add
label define bo01a_bthyear_lbl 1959 `"1959"', add
label define bo01a_bthyear_lbl 1960 `"1960"', add
label define bo01a_bthyear_lbl 1961 `"1961"', add
label define bo01a_bthyear_lbl 1962 `"1962"', add
label define bo01a_bthyear_lbl 1963 `"1963"', add
label define bo01a_bthyear_lbl 1964 `"1964"', add
label define bo01a_bthyear_lbl 1965 `"1965"', add
label define bo01a_bthyear_lbl 1966 `"1966"', add
label define bo01a_bthyear_lbl 1967 `"1967"', add
label define bo01a_bthyear_lbl 1968 `"1968"', add
label define bo01a_bthyear_lbl 1969 `"1969"', add
label define bo01a_bthyear_lbl 1970 `"1970"', add
label define bo01a_bthyear_lbl 1971 `"1971"', add
label define bo01a_bthyear_lbl 1972 `"1972"', add
label define bo01a_bthyear_lbl 1973 `"1973"', add
label define bo01a_bthyear_lbl 1974 `"1974"', add
label define bo01a_bthyear_lbl 1975 `"1975"', add
label define bo01a_bthyear_lbl 1976 `"1976"', add
label define bo01a_bthyear_lbl 1977 `"1977"', add
label define bo01a_bthyear_lbl 1978 `"1978"', add
label define bo01a_bthyear_lbl 1979 `"1979"', add
label define bo01a_bthyear_lbl 1980 `"1980"', add
label define bo01a_bthyear_lbl 1981 `"1981"', add
label define bo01a_bthyear_lbl 1982 `"1982"', add
label define bo01a_bthyear_lbl 1983 `"1983"', add
label define bo01a_bthyear_lbl 1984 `"1984"', add
label define bo01a_bthyear_lbl 1985 `"1985"', add
label define bo01a_bthyear_lbl 1986 `"1986"', add
label define bo01a_bthyear_lbl 1987 `"1987"', add
label define bo01a_bthyear_lbl 1988 `"1988"', add
label define bo01a_bthyear_lbl 1989 `"1989"', add
label define bo01a_bthyear_lbl 1990 `"1990"', add
label define bo01a_bthyear_lbl 1991 `"1991"', add
label define bo01a_bthyear_lbl 1992 `"1992"', add
label define bo01a_bthyear_lbl 1993 `"1993"', add
label define bo01a_bthyear_lbl 1994 `"1994"', add
label define bo01a_bthyear_lbl 1995 `"1995"', add
label define bo01a_bthyear_lbl 1996 `"1996"', add
label define bo01a_bthyear_lbl 1997 `"1997"', add
label define bo01a_bthyear_lbl 1998 `"1998"', add
label define bo01a_bthyear_lbl 1999 `"1999"', add
label define bo01a_bthyear_lbl 2000 `"2000"', add
label define bo01a_bthyear_lbl 2001 `"2001"', add
label define bo01a_bthyear_lbl 9998 `"Unknown"', add
label define bo01a_bthyear_lbl 9999 `"NIU (not in universe)"', add
label values bo01a_bthyear bo01a_bthyear_lbl

label define bo01a_bpl_lbl 1 `"In a health institution"'
label define bo01a_bpl_lbl 2 `"In a home"', add
label define bo01a_bpl_lbl 3 `"Other place"', add
label define bo01a_bpl_lbl 8 `"Unknown"', add
label define bo01a_bpl_lbl 9 `"NIU (not in universe)"', add
label values bo01a_bpl bo01a_bpl_lbl

label define bo01a_birthdr_lbl 1 `"Doctor"'
label define bo01a_birthdr_lbl 2 `"Nurse"', add
label define bo01a_birthdr_lbl 3 `"Midwife"', add
label define bo01a_birthdr_lbl 4 `"You yourself"', add
label define bo01a_birthdr_lbl 5 `"Another person"', add
label define bo01a_birthdr_lbl 8 `"Unknown"', add
label define bo01a_birthdr_lbl 9 `"NIU (not in universe)"', add
label values bo01a_birthdr bo01a_birthdr_lbl


