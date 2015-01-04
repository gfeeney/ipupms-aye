* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  long    es01a_dwnum      22-27    ///
  byte    es01a_pern       28-29    ///
  byte    es01a_fbig       30-30    ///
  byte    es01a_auton      31-32    ///
  byte    es01a_prov       33-34    ///
  byte    es01a_collect    35-35    ///
  byte    es01a_dwtype     36-36    ///
  byte    es01a_colltyp    37-38    ///
  int     es01a_yrmoved    39-42    ///
  byte    es01a_owner      43-43    ///
  byte    es01a_noisy      44-44    ///
  byte    es01a_pollute    45-45    ///
  byte    es01a_clean      46-46    ///
  byte    es01a_commun     47-47    ///
  byte    es01a_green      48-48    ///
  byte    es01a_delinq     49-49    ///
  byte    es01a_noserv     50-50    ///
  byte    es01a_aircon     51-51    ///
  byte    es01a_heat       52-52    ///
  byte    es01a_heatfuel   53-53    ///
  byte    es01a_stories    54-55    ///
  byte    es01a_rooms      56-57    ///
  int     es01a_space      58-60    ///
  byte    es01a_secdw      61-61    ///
  byte    es01a_secdwl     62-62    ///
  byte    es01a_secdwp     63-64    ///
  int     es01a_secdwu     65-67    ///
  byte    es01a_vehic      68-68    ///
  byte    es01a_flrup      69-70    ///
  byte    es01a_flrdwn     71-71    ///
  byte    es01a_bldtype    72-72    ///
  byte    es01a_constyr1   73-74    ///
  int     es01a_constyr2   75-78    ///
  byte    es01a_bldcond    79-79    ///
  byte    es01a_ownertyp   80-80    ///
  byte    es01a_access     81-81    ///
  byte    es01a_runwat     82-82    ///
  byte    es01a_sewage     83-83    ///
  byte    es01a_doorkeep   84-84    ///
  byte    es01a_garage     85-85    ///
  byte    es01a_gas        86-86    ///
  byte    es01a_phone      87-87    ///
  byte    es01a_hotwat     88-88    ///
  byte    es01a_nfam       89-89    ///
  byte    es01a_nnuc       90-90    ///
  byte    es01a_nperfam    91-92    ///
  int     pernum           93-95    ///
  float   wtper            96-103   ///
  byte    es01a_pernum     104-105  ///
  byte    es01a_pernumo    106-107  ///
  byte    es01a_birmo      108-109  ///
  int     es01a_biryr      110-113  ///
  int     es01a_age        114-116  ///
  byte    es01a_sex        117-117  ///
  int     es01a_nation     118-120  ///
  byte    es01a_bplauton   121-122  ///
  byte    es01a_bplpr      123-124  ///
  long    es01a_bplmun     125-129  ///
  byte    es01a_marst      130-130  ///
  byte    es01a_relate     131-132  ///
  byte    es01a_edlev      133-134  ///
  byte    es01a_edtype     135-136  ///
  int     es01a_yrspain    137-140  ///
  int     es01a_yrcomm     141-144  ///
  int     es01a_yrmuni     145-148  ///
  byte    es01a_prevauton  149-150  ///
  byte    es01a_prevprov   151-152  ///
  long    es01a_prevmun    153-157  ///
  byte    es01a_res10      158-158  ///
  byte    es01a_res10prv   159-160  ///
  byte    es01a_indlang    161-161  ///
  byte    es01a_emp2       162-163  ///
  byte    es01a_emp3       164-165  ///
  byte    es01a_workpl     166-166  ///
  byte    es01a_wkprov     167-168  ///
  byte    es01a_trips      169-169  ///
  byte    es01a_trans1     170-171  ///
  byte    es01a_trans2     172-173  ///
  byte    es01a_travtime   174-174  ///
  byte    es01a_study1     175-176  ///
  byte    es01a_study2     177-178  ///
  byte    es01a_study3     179-180  ///
  byte    es01a_occ        181-182  ///
  byte    es01a_classwk    183-183  ///
  byte    es01a_ind        184-185  ///
  byte    es01a_socecon    186-187  ///
  byte    es01a_wkhrs      188-189  ///
  byte    es01a_famnum     190-190  ///
  byte    es01a_poploc     191-192  ///
  byte    es01a_momloc     193-194  ///
  byte    es01a_sploc      195-196  ///
  byte    es01a_nucfam     197-197  ///
  byte    es01a_nucnum     198-198  ///
  byte    es01a_coupty1    199-199  ///
  byte    es01a_coupty2    200-200  ///
  using `"ipumsi_00112.dat"'

replace wtper           = wtper           / 100

format serial          %10.0f
format wtper           %8.2f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var es01a_dwnum     `"Dwelling number"'
label var es01a_pern      `"Number of persons in household"'
label var es01a_fbig      `"Dwelling created by splitting apart a large dwelling or household"'
label var es01a_auton     `"Communities and autonomous cities"'
label var es01a_prov      `"Province"'
label var es01a_collect   `"Dwelling, housing, or collective"'
label var es01a_dwtype    `"Type of dwelling"'
label var es01a_colltyp   `"Type of collective"'
label var es01a_yrmoved   `"Year of arrival to the dwelling"'
label var es01a_owner     `"Form of ownership"'
label var es01a_noisy     `"Exterior noises"'
label var es01a_pollute   `"Pollution"'
label var es01a_clean     `"Lack of cleanliness in the streets"'
label var es01a_commun    `"Poor communications"'
label var es01a_green     `"Few green areas"'
label var es01a_delinq    `"Delinquency in the area"'
label var es01a_noserv    `"Lack of sanitary service"'
label var es01a_aircon    `"Air conditioning"'
label var es01a_heat      `"Heat"'
label var es01a_heatfuel  `"Heating fuel"'
label var es01a_stories   `"Number of floors of the dwelling"'
label var es01a_rooms     `"Number of rooms"'
label var es01a_space     `"Useable floor space"'
label var es01a_secdw     `"Availability of second dwelling"'
label var es01a_secdwl    `"Location of second dwelling"'
label var es01a_secdwp    `"Province of second dwelling"'
label var es01a_secdwu    `"Number of days per year that second dwelling is used"'
label var es01a_vehic     `"Availability of motor vehicles (not motorcycles)"'
label var es01a_flrup     `"Number of floors above ground level"'
label var es01a_flrdwn    `"Number of floors below ground level"'
label var es01a_bldtype   `"Type of building"'
label var es01a_constyr1  `"Year of construction, categorized"'
label var es01a_constyr2  `"Year of construction, since 1990"'
label var es01a_bldcond   `"Condition of the building"'
label var es01a_ownertyp  `"Class of owner"'
label var es01a_access    `"Accessibility of the building"'
label var es01a_runwat    `"Running water"'
label var es01a_sewage    `"Removal of waste water"'
label var es01a_doorkeep  `"Doorkeeper"'
label var es01a_garage    `"Garage"'
label var es01a_gas       `"Gas"'
label var es01a_phone     `"Telephone lines"'
label var es01a_hotwat    `"Central hot water"'
label var es01a_nfam      `"Number of families in the household"'
label var es01a_nnuc      `"Number of nuclei in the household"'
label var es01a_nperfam   `"Number of persons in the family"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var es01a_pernum    `"Person number (within household)"'
label var es01a_pernumo   `"Person number"'
label var es01a_birmo     `"Month of birth"'
label var es01a_biryr     `"Year of birth"'
label var es01a_age       `"Age"'
label var es01a_sex       `"Sex"'
label var es01a_nation    `"Country of nationality"'
label var es01a_bplauton  `"Communities and autonomous cities of birth"'
label var es01a_bplpr     `"Province of birth"'
label var es01a_bplmun    `"Municipality or country of birth"'
label var es01a_marst     `"Marital status"'
label var es01a_relate    `"Relationship to person for standardized reference"'
label var es01a_edlev     `"Level of education completed"'
label var es01a_edtype    `"Type of studies completed"'
label var es01a_yrspain   `"Year of arrival in Spain"'
label var es01a_yrcomm    `"Year of arrival in autonomous community"'
label var es01a_yrmuni    `"Year of arrival in municipality"'
label var es01a_prevauton `"Communities and autonomous cities of previous residency"'
label var es01a_prevprov  `"Province of previous residence"'
label var es01a_prevmun   `"Municipality or country of previous residence"'
label var es01a_res10     `"Residence 10 years ago"'
label var es01a_res10prv  `"Province of residence 10 years ago"'
label var es01a_indlang   `"Knowledge of native language"'
label var es01a_emp2      `"Employment situation last week (second response)"'
label var es01a_emp3      `"Employment situation last week (third response)"'
label var es01a_workpl    `"Place of work or study"'
label var es01a_wkprov    `"Province of school or employment"'
label var es01a_trips     `"Number of daily trips"'
label var es01a_trans1    `"Means of transportation 1"'
label var es01a_trans2    `"Means of transportation 2"'
label var es01a_travtime  `"Travel time"'
label var es01a_study1    `"Current studies"'
label var es01a_study2    `"Current studies 2"'
label var es01a_study3    `"Current studies 3"'
label var es01a_occ       `"Occupation"'
label var es01a_classwk   `"Class of worker"'
label var es01a_ind       `"Industry"'
label var es01a_socecon   `"Social economic condition"'
label var es01a_wkhrs     `"Hours of work per week"'
label var es01a_famnum    `"Number of family in the household"'
label var es01a_poploc    `"Person number of the father"'
label var es01a_momloc    `"Person number of the mother"'
label var es01a_sploc     `"Person number of the spouse or partner"'
label var es01a_nucfam    `"Condition of nuclear family"'
label var es01a_nucnum    `"Number of the nucleus in the household"'
label var es01a_coupty1   `"Type of couple (de facto or legal)"'
label var es01a_coupty2   `"Type of couple"'

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

label define es01a_pern_lbl 01 `"1"'
label define es01a_pern_lbl 02 `"2"', add
label define es01a_pern_lbl 03 `"3"', add
label define es01a_pern_lbl 04 `"4"', add
label define es01a_pern_lbl 05 `"5"', add
label define es01a_pern_lbl 06 `"6"', add
label define es01a_pern_lbl 07 `"7"', add
label define es01a_pern_lbl 08 `"8"', add
label define es01a_pern_lbl 09 `"9"', add
label define es01a_pern_lbl 10 `"10"', add
label define es01a_pern_lbl 11 `"11"', add
label define es01a_pern_lbl 12 `"12"', add
label define es01a_pern_lbl 13 `"13"', add
label define es01a_pern_lbl 14 `"14"', add
label define es01a_pern_lbl 15 `"15"', add
label define es01a_pern_lbl 16 `"16"', add
label define es01a_pern_lbl 17 `"17"', add
label define es01a_pern_lbl 18 `"18"', add
label define es01a_pern_lbl 19 `"19"', add
label define es01a_pern_lbl 20 `"20"', add
label define es01a_pern_lbl 21 `"21"', add
label define es01a_pern_lbl 22 `"22"', add
label define es01a_pern_lbl 23 `"23"', add
label define es01a_pern_lbl 24 `"24"', add
label define es01a_pern_lbl 25 `"25"', add
label define es01a_pern_lbl 26 `"26"', add
label define es01a_pern_lbl 27 `"27"', add
label define es01a_pern_lbl 28 `"28"', add
label define es01a_pern_lbl 29 `"29"', add
label define es01a_pern_lbl 30 `"30"', add
label values es01a_pern es01a_pern_lbl

label define es01a_fbig_lbl 0 `"No problem"'
label define es01a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define es01a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values es01a_fbig es01a_fbig_lbl

label define es01a_auton_lbl 11 `"Galicia"'
label define es01a_auton_lbl 12 `"Principado de Asturias"', add
label define es01a_auton_lbl 13 `"Cantabria"', add
label define es01a_auton_lbl 21 `"País Vasco"', add
label define es01a_auton_lbl 22 `"Comunidad Foral de Navarra"', add
label define es01a_auton_lbl 23 `"La Rioja"', add
label define es01a_auton_lbl 24 `"Aragón"', add
label define es01a_auton_lbl 30 `"Comunidad de Madrid"', add
label define es01a_auton_lbl 41 `"Castilla y León"', add
label define es01a_auton_lbl 42 `"Castilla-La Mancha"', add
label define es01a_auton_lbl 43 `"Extremadura"', add
label define es01a_auton_lbl 51 `"Cataluña"', add
label define es01a_auton_lbl 52 `"Comunidad Valenciana"', add
label define es01a_auton_lbl 53 `"Illes Balears"', add
label define es01a_auton_lbl 61 `"Andalucía"', add
label define es01a_auton_lbl 62 `"Región de Murcia"', add
label define es01a_auton_lbl 63 `"Ciudad Autónoma de Ceuta"', add
label define es01a_auton_lbl 64 `"Ciudad Autónoma de Melilla"', add
label define es01a_auton_lbl 70 `"Canarias"', add
label values es01a_auton es01a_auton_lbl

label define es01a_prov_lbl 01 `"Álava"'
label define es01a_prov_lbl 02 `"Albacete"', add
label define es01a_prov_lbl 03 `"Alicante/Alacant"', add
label define es01a_prov_lbl 04 `"Almería"', add
label define es01a_prov_lbl 05 `"Ávila"', add
label define es01a_prov_lbl 06 `"Badajoz"', add
label define es01a_prov_lbl 07 `"Balears (Illes)"', add
label define es01a_prov_lbl 08 `"Barcelona"', add
label define es01a_prov_lbl 09 `"Burgos"', add
label define es01a_prov_lbl 10 `"Cáceres"', add
label define es01a_prov_lbl 11 `"Cádiz"', add
label define es01a_prov_lbl 12 `"Castellón/Castelló"', add
label define es01a_prov_lbl 13 `"Ciudad Real"', add
label define es01a_prov_lbl 14 `"Córdoba"', add
label define es01a_prov_lbl 15 `"Coruña (A)"', add
label define es01a_prov_lbl 16 `"Cuenca"', add
label define es01a_prov_lbl 17 `"Girona"', add
label define es01a_prov_lbl 18 `"Granada"', add
label define es01a_prov_lbl 19 `"Guadalajara"', add
label define es01a_prov_lbl 20 `"Guipúzcoa"', add
label define es01a_prov_lbl 21 `"Huelva"', add
label define es01a_prov_lbl 22 `"Huesca"', add
label define es01a_prov_lbl 23 `"Jaén"', add
label define es01a_prov_lbl 24 `"León"', add
label define es01a_prov_lbl 25 `"Lleida"', add
label define es01a_prov_lbl 26 `"Rioja (La)"', add
label define es01a_prov_lbl 27 `"Lugo"', add
label define es01a_prov_lbl 28 `"Madrid"', add
label define es01a_prov_lbl 29 `"Málaga"', add
label define es01a_prov_lbl 30 `"Murcia"', add
label define es01a_prov_lbl 31 `"Navarra"', add
label define es01a_prov_lbl 32 `"Ourense"', add
label define es01a_prov_lbl 33 `"Asturias"', add
label define es01a_prov_lbl 34 `"Palencia"', add
label define es01a_prov_lbl 35 `"Palmas (Las)"', add
label define es01a_prov_lbl 36 `"Pontevedra"', add
label define es01a_prov_lbl 37 `"Salamanca"', add
label define es01a_prov_lbl 38 `"Santa Cruz de Tenerife"', add
label define es01a_prov_lbl 39 `"Cantabria"', add
label define es01a_prov_lbl 40 `"Segovia"', add
label define es01a_prov_lbl 41 `"Sevilla"', add
label define es01a_prov_lbl 42 `"Soria"', add
label define es01a_prov_lbl 43 `"Tarragona"', add
label define es01a_prov_lbl 44 `"Teruel"', add
label define es01a_prov_lbl 45 `"Toledo"', add
label define es01a_prov_lbl 46 `"Valencia/València"', add
label define es01a_prov_lbl 47 `"Valladolid"', add
label define es01a_prov_lbl 48 `"Vizcaya"', add
label define es01a_prov_lbl 49 `"Zamora"', add
label define es01a_prov_lbl 50 `"Zaragoza"', add
label define es01a_prov_lbl 51 `"Ceuta"', add
label define es01a_prov_lbl 52 `"Melilla"', add
label values es01a_prov es01a_prov_lbl

label define es01a_collect_lbl 1 `"Private dwellings"'
label define es01a_collect_lbl 2 `"Collective dwellings"', add
label define es01a_collect_lbl 3 `"Lodging"', add
label values es01a_collect es01a_collect_lbl

label define es01a_dwtype_lbl 1 `"Conventional"'
label define es01a_dwtype_lbl 2 `"Collective dwellings and lodging"', add
label values es01a_dwtype es01a_dwtype_lbl

label define es01a_colltyp_lbl 01 `"Hotels, pensions, other temporary housing (shelters)"'
label define es01a_colltyp_lbl 02 `"University housing, student housing"', add
label define es01a_colltyp_lbl 03 `"Workers' housing"', add
label define es01a_colltyp_lbl 04 `"Boarding schools, military academies and schools, religious seminaries"', add
label define es01a_colltyp_lbl 05 `"General hospitals and specialized short-term hospitals"', add
label define es01a_colltyp_lbl 06 `"Psychiatric hospitals"', add
label define es01a_colltyp_lbl 07 `"Hospitals for long-term care"', add
label define es01a_colltyp_lbl 08 `"Nursing homes and other residences for the elderly"', add
label define es01a_colltyp_lbl 09 `"Institutions for persons with disabilities"', add
label define es01a_colltyp_lbl 10 `"Shelters for socially isolated persons"', add
label define es01a_colltyp_lbl 11 `"Other social assistance institutions for children, youths."', add
label define es01a_colltyp_lbl 12 `"Religious institutions (monasteries, abbeys)"', add
label define es01a_colltyp_lbl 13 `"Military institutions (barracks, . . . .)"', add
label define es01a_colltyp_lbl 14 `"Penitentiary institutions (prisons, reformatories, . . . .)"', add
label define es01a_colltyp_lbl 15 `"Other type of collective residence"', add
label define es01a_colltyp_lbl 99 `"NIU (not in universe)"', add
label values es01a_colltyp es01a_colltyp_lbl

label define es01a_yrmoved_lbl 1899 `"1899"'
label define es01a_yrmoved_lbl 1900 `"1900"', add
label define es01a_yrmoved_lbl 1901 `"1901"', add
label define es01a_yrmoved_lbl 1902 `"1902"', add
label define es01a_yrmoved_lbl 1903 `"1903"', add
label define es01a_yrmoved_lbl 1904 `"1904"', add
label define es01a_yrmoved_lbl 1905 `"1905"', add
label define es01a_yrmoved_lbl 1906 `"1906"', add
label define es01a_yrmoved_lbl 1907 `"1907"', add
label define es01a_yrmoved_lbl 1908 `"1908"', add
label define es01a_yrmoved_lbl 1909 `"1909"', add
label define es01a_yrmoved_lbl 1910 `"1910"', add
label define es01a_yrmoved_lbl 1911 `"1911"', add
label define es01a_yrmoved_lbl 1912 `"1912"', add
label define es01a_yrmoved_lbl 1913 `"1913"', add
label define es01a_yrmoved_lbl 1914 `"1914"', add
label define es01a_yrmoved_lbl 1915 `"1915"', add
label define es01a_yrmoved_lbl 1916 `"1916"', add
label define es01a_yrmoved_lbl 1917 `"1917"', add
label define es01a_yrmoved_lbl 1918 `"1918"', add
label define es01a_yrmoved_lbl 1919 `"1919"', add
label define es01a_yrmoved_lbl 1920 `"1920"', add
label define es01a_yrmoved_lbl 1921 `"1921"', add
label define es01a_yrmoved_lbl 1922 `"1922"', add
label define es01a_yrmoved_lbl 1923 `"1923"', add
label define es01a_yrmoved_lbl 1924 `"1924"', add
label define es01a_yrmoved_lbl 1925 `"1925"', add
label define es01a_yrmoved_lbl 1926 `"1926"', add
label define es01a_yrmoved_lbl 1927 `"1927"', add
label define es01a_yrmoved_lbl 1928 `"1928"', add
label define es01a_yrmoved_lbl 1929 `"1929"', add
label define es01a_yrmoved_lbl 1930 `"1930"', add
label define es01a_yrmoved_lbl 1931 `"1931"', add
label define es01a_yrmoved_lbl 1932 `"1932"', add
label define es01a_yrmoved_lbl 1933 `"1933"', add
label define es01a_yrmoved_lbl 1934 `"1934"', add
label define es01a_yrmoved_lbl 1935 `"1935"', add
label define es01a_yrmoved_lbl 1936 `"1936"', add
label define es01a_yrmoved_lbl 1937 `"1937"', add
label define es01a_yrmoved_lbl 1938 `"1938"', add
label define es01a_yrmoved_lbl 1939 `"1939"', add
label define es01a_yrmoved_lbl 1940 `"1940"', add
label define es01a_yrmoved_lbl 1941 `"1941"', add
label define es01a_yrmoved_lbl 1942 `"1942"', add
label define es01a_yrmoved_lbl 1943 `"1943"', add
label define es01a_yrmoved_lbl 1944 `"1944"', add
label define es01a_yrmoved_lbl 1945 `"1945"', add
label define es01a_yrmoved_lbl 1946 `"1946"', add
label define es01a_yrmoved_lbl 1947 `"1947"', add
label define es01a_yrmoved_lbl 1948 `"1948"', add
label define es01a_yrmoved_lbl 1949 `"1949"', add
label define es01a_yrmoved_lbl 1950 `"1950"', add
label define es01a_yrmoved_lbl 1951 `"1951"', add
label define es01a_yrmoved_lbl 1952 `"1952"', add
label define es01a_yrmoved_lbl 1953 `"1953"', add
label define es01a_yrmoved_lbl 1954 `"1954"', add
label define es01a_yrmoved_lbl 1955 `"1955"', add
label define es01a_yrmoved_lbl 1956 `"1956"', add
label define es01a_yrmoved_lbl 1957 `"1957"', add
label define es01a_yrmoved_lbl 1958 `"1958"', add
label define es01a_yrmoved_lbl 1959 `"1959"', add
label define es01a_yrmoved_lbl 1960 `"1960"', add
label define es01a_yrmoved_lbl 1961 `"1961"', add
label define es01a_yrmoved_lbl 1962 `"1962"', add
label define es01a_yrmoved_lbl 1963 `"1963"', add
label define es01a_yrmoved_lbl 1964 `"1964"', add
label define es01a_yrmoved_lbl 1965 `"1965"', add
label define es01a_yrmoved_lbl 1966 `"1966"', add
label define es01a_yrmoved_lbl 1967 `"1967"', add
label define es01a_yrmoved_lbl 1968 `"1968"', add
label define es01a_yrmoved_lbl 1969 `"1969"', add
label define es01a_yrmoved_lbl 1970 `"1970"', add
label define es01a_yrmoved_lbl 1971 `"1971"', add
label define es01a_yrmoved_lbl 1972 `"1972"', add
label define es01a_yrmoved_lbl 1973 `"1973"', add
label define es01a_yrmoved_lbl 1974 `"1974"', add
label define es01a_yrmoved_lbl 1975 `"1975"', add
label define es01a_yrmoved_lbl 1976 `"1976"', add
label define es01a_yrmoved_lbl 1977 `"1977"', add
label define es01a_yrmoved_lbl 1978 `"1978"', add
label define es01a_yrmoved_lbl 1979 `"1979"', add
label define es01a_yrmoved_lbl 1980 `"1980"', add
label define es01a_yrmoved_lbl 1981 `"1981"', add
label define es01a_yrmoved_lbl 1982 `"1982"', add
label define es01a_yrmoved_lbl 1983 `"1983"', add
label define es01a_yrmoved_lbl 1984 `"1984"', add
label define es01a_yrmoved_lbl 1985 `"1985"', add
label define es01a_yrmoved_lbl 1986 `"1986"', add
label define es01a_yrmoved_lbl 1987 `"1987"', add
label define es01a_yrmoved_lbl 1988 `"1988"', add
label define es01a_yrmoved_lbl 1989 `"1989"', add
label define es01a_yrmoved_lbl 1990 `"1990"', add
label define es01a_yrmoved_lbl 1991 `"1991"', add
label define es01a_yrmoved_lbl 1992 `"1992"', add
label define es01a_yrmoved_lbl 1993 `"1993"', add
label define es01a_yrmoved_lbl 1994 `"1994"', add
label define es01a_yrmoved_lbl 1995 `"1995"', add
label define es01a_yrmoved_lbl 1996 `"1996"', add
label define es01a_yrmoved_lbl 1997 `"1997"', add
label define es01a_yrmoved_lbl 1998 `"1998"', add
label define es01a_yrmoved_lbl 1999 `"1999"', add
label define es01a_yrmoved_lbl 2000 `"2000"', add
label define es01a_yrmoved_lbl 2001 `"2001"', add
label define es01a_yrmoved_lbl 9999 `"NIU (not in universe)"', add
label values es01a_yrmoved es01a_yrmoved_lbl

label define es01a_owner_lbl 1 `"Owned through purchase, totally paid for"'
label define es01a_owner_lbl 2 `"Owned through purchase, with payments remaining (mortgage, . . .)"', add
label define es01a_owner_lbl 3 `"Owned through inheritance or donation"', add
label define es01a_owner_lbl 4 `"Rented"', add
label define es01a_owner_lbl 5 `"Provided free or at low cost by another household, business, etc."', add
label define es01a_owner_lbl 6 `"Other form"', add
label define es01a_owner_lbl 9 `"NIU (not in universe)"', add
label values es01a_owner es01a_owner_lbl

label define es01a_noisy_lbl 1 `"With exterior noises"'
label define es01a_noisy_lbl 2 `"Without exterior noises"', add
label define es01a_noisy_lbl 9 `"NIU (not in universe)"', add
label values es01a_noisy es01a_noisy_lbl

label define es01a_pollute_lbl 1 `"Yes"'
label define es01a_pollute_lbl 2 `"No"', add
label define es01a_pollute_lbl 9 `"NIU (not in universe)"', add
label values es01a_pollute es01a_pollute_lbl

label define es01a_clean_lbl 1 `"Yes"'
label define es01a_clean_lbl 2 `"No"', add
label define es01a_clean_lbl 9 `"NIU (not in universe)"', add
label values es01a_clean es01a_clean_lbl

label define es01a_commun_lbl 1 `"Yes"'
label define es01a_commun_lbl 2 `"No"', add
label define es01a_commun_lbl 9 `"NIU (not in universe)"', add
label values es01a_commun es01a_commun_lbl

label define es01a_green_lbl 1 `"Yes"'
label define es01a_green_lbl 2 `"No"', add
label define es01a_green_lbl 9 `"NIU (not in universe)"', add
label values es01a_green es01a_green_lbl

label define es01a_delinq_lbl 1 `"Yes"'
label define es01a_delinq_lbl 2 `"No"', add
label define es01a_delinq_lbl 9 `"NIU (not in universe)"', add
label values es01a_delinq es01a_delinq_lbl

label define es01a_noserv_lbl 1 `"Yes"'
label define es01a_noserv_lbl 2 `"No"', add
label define es01a_noserv_lbl 9 `"NIU (not in universe)"', add
label values es01a_noserv es01a_noserv_lbl

label define es01a_aircon_lbl 1 `"Has air conditioning"'
label define es01a_aircon_lbl 2 `"No"', add
label define es01a_aircon_lbl 9 `"NIU (not in universe)"', add
label values es01a_aircon es01a_aircon_lbl

label define es01a_heat_lbl 1 `"With collective heating system"'
label define es01a_heat_lbl 2 `"With individual heating system"', add
label define es01a_heat_lbl 3 `"Without heating system, but with appliances that allow the members of the dwelling to warm one or more rooms"', add
label define es01a_heat_lbl 4 `"No heating methods"', add
label define es01a_heat_lbl 9 `"NIU (not in universe)"', add
label values es01a_heat es01a_heat_lbl

label define es01a_heatfuel_lbl 1 `"Gas"'
label define es01a_heatfuel_lbl 2 `"Electricity"', add
label define es01a_heatfuel_lbl 3 `"Petroleum or derivative"', add
label define es01a_heatfuel_lbl 4 `"Wood"', add
label define es01a_heatfuel_lbl 5 `"Coal or derivative"', add
label define es01a_heatfuel_lbl 6 `"Other"', add
label define es01a_heatfuel_lbl 9 `"NIU (not in universe)"', add
label values es01a_heatfuel es01a_heatfuel_lbl

label define es01a_stories_lbl 01 `"1"'
label define es01a_stories_lbl 02 `"2"', add
label define es01a_stories_lbl 03 `"3"', add
label define es01a_stories_lbl 04 `"4"', add
label define es01a_stories_lbl 05 `"5"', add
label define es01a_stories_lbl 06 `"6"', add
label define es01a_stories_lbl 07 `"7"', add
label define es01a_stories_lbl 08 `"8"', add
label define es01a_stories_lbl 09 `"9"', add
label define es01a_stories_lbl 10 `"10+"', add
label define es01a_stories_lbl 99 `"Unknown"', add
label values es01a_stories es01a_stories_lbl

label define es01a_rooms_lbl 01 `"1"'
label define es01a_rooms_lbl 02 `"2"', add
label define es01a_rooms_lbl 03 `"3"', add
label define es01a_rooms_lbl 04 `"4"', add
label define es01a_rooms_lbl 05 `"5"', add
label define es01a_rooms_lbl 06 `"6"', add
label define es01a_rooms_lbl 07 `"7"', add
label define es01a_rooms_lbl 08 `"8"', add
label define es01a_rooms_lbl 09 `"9"', add
label define es01a_rooms_lbl 10 `"10"', add
label define es01a_rooms_lbl 11 `"11"', add
label define es01a_rooms_lbl 12 `"12"', add
label define es01a_rooms_lbl 13 `"13"', add
label define es01a_rooms_lbl 14 `"14"', add
label define es01a_rooms_lbl 15 `"15"', add
label define es01a_rooms_lbl 16 `"16"', add
label define es01a_rooms_lbl 17 `"17"', add
label define es01a_rooms_lbl 18 `"18"', add
label define es01a_rooms_lbl 19 `"19"', add
label define es01a_rooms_lbl 20 `"20+"', add
label define es01a_rooms_lbl 99 `"NIU (not in universe)"', add
label values es01a_rooms es01a_rooms_lbl

label define es01a_space_lbl 029 `"Under 30"'
label define es01a_space_lbl 030 `"30 to 45"', add
label define es01a_space_lbl 046 `"46 to 60"', add
label define es01a_space_lbl 061 `"61 to 75"', add
label define es01a_space_lbl 076 `"76 to 90"', add
label define es01a_space_lbl 091 `"91 to 105"', add
label define es01a_space_lbl 106 `"106 to 120"', add
label define es01a_space_lbl 121 `"121 to 150"', add
label define es01a_space_lbl 151 `"151 to 180"', add
label define es01a_space_lbl 181 `"181+"', add
label define es01a_space_lbl 999 `"NIU (not in universe)"', add
label values es01a_space es01a_space_lbl

label define es01a_secdw_lbl 1 `"Has second dwelling"'
label define es01a_secdw_lbl 2 `"Does not have second dwelling"', add
label define es01a_secdw_lbl 9 `"NIU (not in universe)"', add
label values es01a_secdw es01a_secdw_lbl

label define es01a_secdwl_lbl 1 `"In the same municipality"'
label define es01a_secdwl_lbl 2 `"In another municipality"', add
label define es01a_secdwl_lbl 3 `"In another country"', add
label define es01a_secdwl_lbl 9 `"NIU (not in universe)"', add
label values es01a_secdwl es01a_secdwl_lbl

label define es01a_secdwp_lbl 01 `"Álava"'
label define es01a_secdwp_lbl 02 `"Albacete"', add
label define es01a_secdwp_lbl 03 `"Alicante/Alacant"', add
label define es01a_secdwp_lbl 04 `"Almería"', add
label define es01a_secdwp_lbl 05 `"Ávila"', add
label define es01a_secdwp_lbl 06 `"Badajoz"', add
label define es01a_secdwp_lbl 07 `"Balears (Illes)"', add
label define es01a_secdwp_lbl 08 `"Barcelona"', add
label define es01a_secdwp_lbl 09 `"Burgos"', add
label define es01a_secdwp_lbl 10 `"Cáceres"', add
label define es01a_secdwp_lbl 11 `"Cádiz"', add
label define es01a_secdwp_lbl 12 `"Castellón/Castelló"', add
label define es01a_secdwp_lbl 13 `"Ciudad Real"', add
label define es01a_secdwp_lbl 14 `"Córdoba"', add
label define es01a_secdwp_lbl 15 `"Coruña (A)"', add
label define es01a_secdwp_lbl 16 `"Cuenca"', add
label define es01a_secdwp_lbl 17 `"Girona"', add
label define es01a_secdwp_lbl 18 `"Granada"', add
label define es01a_secdwp_lbl 19 `"Guadalajara"', add
label define es01a_secdwp_lbl 20 `"Guipúzcoa"', add
label define es01a_secdwp_lbl 21 `"Huelva"', add
label define es01a_secdwp_lbl 22 `"Huesca"', add
label define es01a_secdwp_lbl 23 `"Jaén"', add
label define es01a_secdwp_lbl 24 `"León"', add
label define es01a_secdwp_lbl 25 `"Lleida"', add
label define es01a_secdwp_lbl 26 `"Rioja (La)"', add
label define es01a_secdwp_lbl 27 `"Lugo"', add
label define es01a_secdwp_lbl 28 `"Madrid"', add
label define es01a_secdwp_lbl 29 `"Málaga"', add
label define es01a_secdwp_lbl 30 `"Murcia"', add
label define es01a_secdwp_lbl 31 `"Navarra"', add
label define es01a_secdwp_lbl 32 `"Ourense"', add
label define es01a_secdwp_lbl 33 `"Asturias"', add
label define es01a_secdwp_lbl 34 `"Palencia"', add
label define es01a_secdwp_lbl 35 `"Palmas (Las)"', add
label define es01a_secdwp_lbl 36 `"Pontevedra"', add
label define es01a_secdwp_lbl 37 `"Salamanca"', add
label define es01a_secdwp_lbl 38 `"Santa Cruz de Tenerife"', add
label define es01a_secdwp_lbl 39 `"Cantabria"', add
label define es01a_secdwp_lbl 40 `"Segovia"', add
label define es01a_secdwp_lbl 41 `"Sevilla"', add
label define es01a_secdwp_lbl 42 `"Soria"', add
label define es01a_secdwp_lbl 43 `"Tarragona"', add
label define es01a_secdwp_lbl 44 `"Teruel"', add
label define es01a_secdwp_lbl 45 `"Toledo"', add
label define es01a_secdwp_lbl 46 `"Valencia/València"', add
label define es01a_secdwp_lbl 47 `"Valladolid"', add
label define es01a_secdwp_lbl 48 `"Vizcaya"', add
label define es01a_secdwp_lbl 49 `"Zamora"', add
label define es01a_secdwp_lbl 50 `"Zaragoza"', add
label define es01a_secdwp_lbl 51 `"Ceuta"', add
label define es01a_secdwp_lbl 52 `"Melilla"', add
label define es01a_secdwp_lbl 99 `"NIU (not in universe)"', add
label values es01a_secdwp es01a_secdwp_lbl

label define es01a_secdwu_lbl 001 `"1"'
label define es01a_secdwu_lbl 002 `"2"', add
label define es01a_secdwu_lbl 003 `"3"', add
label define es01a_secdwu_lbl 004 `"4"', add
label define es01a_secdwu_lbl 005 `"5"', add
label define es01a_secdwu_lbl 006 `"6"', add
label define es01a_secdwu_lbl 007 `"7"', add
label define es01a_secdwu_lbl 008 `"8"', add
label define es01a_secdwu_lbl 009 `"9"', add
label define es01a_secdwu_lbl 010 `"10"', add
label define es01a_secdwu_lbl 011 `"11"', add
label define es01a_secdwu_lbl 012 `"12"', add
label define es01a_secdwu_lbl 013 `"13"', add
label define es01a_secdwu_lbl 014 `"14"', add
label define es01a_secdwu_lbl 015 `"15"', add
label define es01a_secdwu_lbl 016 `"16"', add
label define es01a_secdwu_lbl 017 `"17"', add
label define es01a_secdwu_lbl 018 `"18"', add
label define es01a_secdwu_lbl 019 `"19"', add
label define es01a_secdwu_lbl 020 `"20"', add
label define es01a_secdwu_lbl 021 `"21"', add
label define es01a_secdwu_lbl 022 `"22"', add
label define es01a_secdwu_lbl 023 `"23"', add
label define es01a_secdwu_lbl 024 `"24"', add
label define es01a_secdwu_lbl 025 `"25"', add
label define es01a_secdwu_lbl 026 `"26"', add
label define es01a_secdwu_lbl 027 `"27"', add
label define es01a_secdwu_lbl 028 `"28"', add
label define es01a_secdwu_lbl 029 `"29"', add
label define es01a_secdwu_lbl 030 `"30"', add
label define es01a_secdwu_lbl 031 `"31"', add
label define es01a_secdwu_lbl 032 `"32"', add
label define es01a_secdwu_lbl 033 `"33"', add
label define es01a_secdwu_lbl 034 `"34"', add
label define es01a_secdwu_lbl 035 `"35"', add
label define es01a_secdwu_lbl 036 `"36"', add
label define es01a_secdwu_lbl 037 `"37"', add
label define es01a_secdwu_lbl 038 `"38"', add
label define es01a_secdwu_lbl 039 `"39"', add
label define es01a_secdwu_lbl 040 `"40"', add
label define es01a_secdwu_lbl 041 `"41"', add
label define es01a_secdwu_lbl 042 `"42"', add
label define es01a_secdwu_lbl 043 `"43"', add
label define es01a_secdwu_lbl 044 `"44"', add
label define es01a_secdwu_lbl 045 `"45"', add
label define es01a_secdwu_lbl 046 `"46"', add
label define es01a_secdwu_lbl 047 `"47"', add
label define es01a_secdwu_lbl 048 `"48"', add
label define es01a_secdwu_lbl 049 `"49"', add
label define es01a_secdwu_lbl 050 `"50"', add
label define es01a_secdwu_lbl 051 `"51"', add
label define es01a_secdwu_lbl 052 `"52"', add
label define es01a_secdwu_lbl 053 `"53"', add
label define es01a_secdwu_lbl 054 `"54"', add
label define es01a_secdwu_lbl 055 `"55"', add
label define es01a_secdwu_lbl 056 `"56"', add
label define es01a_secdwu_lbl 057 `"57"', add
label define es01a_secdwu_lbl 058 `"58"', add
label define es01a_secdwu_lbl 059 `"59"', add
label define es01a_secdwu_lbl 060 `"60"', add
label define es01a_secdwu_lbl 061 `"61"', add
label define es01a_secdwu_lbl 062 `"62"', add
label define es01a_secdwu_lbl 063 `"63"', add
label define es01a_secdwu_lbl 064 `"64"', add
label define es01a_secdwu_lbl 065 `"65"', add
label define es01a_secdwu_lbl 066 `"66"', add
label define es01a_secdwu_lbl 067 `"67"', add
label define es01a_secdwu_lbl 068 `"68"', add
label define es01a_secdwu_lbl 069 `"69"', add
label define es01a_secdwu_lbl 070 `"70"', add
label define es01a_secdwu_lbl 071 `"71"', add
label define es01a_secdwu_lbl 072 `"72"', add
label define es01a_secdwu_lbl 073 `"73"', add
label define es01a_secdwu_lbl 074 `"74"', add
label define es01a_secdwu_lbl 075 `"75"', add
label define es01a_secdwu_lbl 076 `"76"', add
label define es01a_secdwu_lbl 077 `"77"', add
label define es01a_secdwu_lbl 078 `"78"', add
label define es01a_secdwu_lbl 079 `"79"', add
label define es01a_secdwu_lbl 080 `"80"', add
label define es01a_secdwu_lbl 081 `"81"', add
label define es01a_secdwu_lbl 082 `"82"', add
label define es01a_secdwu_lbl 083 `"83"', add
label define es01a_secdwu_lbl 084 `"84"', add
label define es01a_secdwu_lbl 085 `"85"', add
label define es01a_secdwu_lbl 086 `"86"', add
label define es01a_secdwu_lbl 087 `"87"', add
label define es01a_secdwu_lbl 088 `"88"', add
label define es01a_secdwu_lbl 089 `"89"', add
label define es01a_secdwu_lbl 090 `"90"', add
label define es01a_secdwu_lbl 091 `"91"', add
label define es01a_secdwu_lbl 092 `"92"', add
label define es01a_secdwu_lbl 093 `"93"', add
label define es01a_secdwu_lbl 094 `"94"', add
label define es01a_secdwu_lbl 095 `"95"', add
label define es01a_secdwu_lbl 096 `"96"', add
label define es01a_secdwu_lbl 097 `"97"', add
label define es01a_secdwu_lbl 098 `"98"', add
label define es01a_secdwu_lbl 099 `"99"', add
label define es01a_secdwu_lbl 100 `"100"', add
label define es01a_secdwu_lbl 101 `"101"', add
label define es01a_secdwu_lbl 102 `"102"', add
label define es01a_secdwu_lbl 103 `"103"', add
label define es01a_secdwu_lbl 104 `"104"', add
label define es01a_secdwu_lbl 105 `"105"', add
label define es01a_secdwu_lbl 106 `"106"', add
label define es01a_secdwu_lbl 107 `"107"', add
label define es01a_secdwu_lbl 108 `"108"', add
label define es01a_secdwu_lbl 109 `"109"', add
label define es01a_secdwu_lbl 110 `"110"', add
label define es01a_secdwu_lbl 111 `"111"', add
label define es01a_secdwu_lbl 112 `"112"', add
label define es01a_secdwu_lbl 113 `"113"', add
label define es01a_secdwu_lbl 114 `"114"', add
label define es01a_secdwu_lbl 115 `"115"', add
label define es01a_secdwu_lbl 116 `"116"', add
label define es01a_secdwu_lbl 117 `"117"', add
label define es01a_secdwu_lbl 118 `"118"', add
label define es01a_secdwu_lbl 119 `"119"', add
label define es01a_secdwu_lbl 120 `"120"', add
label define es01a_secdwu_lbl 121 `"121"', add
label define es01a_secdwu_lbl 122 `"122"', add
label define es01a_secdwu_lbl 123 `"123"', add
label define es01a_secdwu_lbl 124 `"124"', add
label define es01a_secdwu_lbl 125 `"125"', add
label define es01a_secdwu_lbl 126 `"126"', add
label define es01a_secdwu_lbl 127 `"127"', add
label define es01a_secdwu_lbl 128 `"128"', add
label define es01a_secdwu_lbl 129 `"129"', add
label define es01a_secdwu_lbl 130 `"130"', add
label define es01a_secdwu_lbl 132 `"132"', add
label define es01a_secdwu_lbl 133 `"133"', add
label define es01a_secdwu_lbl 134 `"134"', add
label define es01a_secdwu_lbl 135 `"135"', add
label define es01a_secdwu_lbl 136 `"136"', add
label define es01a_secdwu_lbl 137 `"137"', add
label define es01a_secdwu_lbl 138 `"138"', add
label define es01a_secdwu_lbl 140 `"140"', add
label define es01a_secdwu_lbl 141 `"141"', add
label define es01a_secdwu_lbl 142 `"142"', add
label define es01a_secdwu_lbl 144 `"144"', add
label define es01a_secdwu_lbl 145 `"145"', add
label define es01a_secdwu_lbl 146 `"146"', add
label define es01a_secdwu_lbl 147 `"147"', add
label define es01a_secdwu_lbl 148 `"148"', add
label define es01a_secdwu_lbl 150 `"150"', add
label define es01a_secdwu_lbl 151 `"151"', add
label define es01a_secdwu_lbl 152 `"152"', add
label define es01a_secdwu_lbl 153 `"153"', add
label define es01a_secdwu_lbl 154 `"154"', add
label define es01a_secdwu_lbl 155 `"155"', add
label define es01a_secdwu_lbl 156 `"156"', add
label define es01a_secdwu_lbl 157 `"157"', add
label define es01a_secdwu_lbl 158 `"158"', add
label define es01a_secdwu_lbl 159 `"159"', add
label define es01a_secdwu_lbl 160 `"160"', add
label define es01a_secdwu_lbl 161 `"161"', add
label define es01a_secdwu_lbl 162 `"162"', add
label define es01a_secdwu_lbl 163 `"163"', add
label define es01a_secdwu_lbl 164 `"164"', add
label define es01a_secdwu_lbl 165 `"165"', add
label define es01a_secdwu_lbl 166 `"166"', add
label define es01a_secdwu_lbl 167 `"167"', add
label define es01a_secdwu_lbl 168 `"168"', add
label define es01a_secdwu_lbl 170 `"170"', add
label define es01a_secdwu_lbl 172 `"172"', add
label define es01a_secdwu_lbl 173 `"173"', add
label define es01a_secdwu_lbl 174 `"174"', add
label define es01a_secdwu_lbl 175 `"175"', add
label define es01a_secdwu_lbl 176 `"176"', add
label define es01a_secdwu_lbl 178 `"178"', add
label define es01a_secdwu_lbl 179 `"179"', add
label define es01a_secdwu_lbl 180 `"180"', add
label define es01a_secdwu_lbl 181 `"181"', add
label define es01a_secdwu_lbl 182 `"182"', add
label define es01a_secdwu_lbl 183 `"183"', add
label define es01a_secdwu_lbl 184 `"184"', add
label define es01a_secdwu_lbl 185 `"185"', add
label define es01a_secdwu_lbl 186 `"186"', add
label define es01a_secdwu_lbl 188 `"188"', add
label define es01a_secdwu_lbl 189 `"189"', add
label define es01a_secdwu_lbl 190 `"190"', add
label define es01a_secdwu_lbl 191 `"191"', add
label define es01a_secdwu_lbl 192 `"192"', add
label define es01a_secdwu_lbl 193 `"193"', add
label define es01a_secdwu_lbl 194 `"194"', add
label define es01a_secdwu_lbl 195 `"195"', add
label define es01a_secdwu_lbl 196 `"196"', add
label define es01a_secdwu_lbl 197 `"197"', add
label define es01a_secdwu_lbl 198 `"198"', add
label define es01a_secdwu_lbl 200 `"200"', add
label define es01a_secdwu_lbl 201 `"201"', add
label define es01a_secdwu_lbl 202 `"202"', add
label define es01a_secdwu_lbl 203 `"203"', add
label define es01a_secdwu_lbl 204 `"204"', add
label define es01a_secdwu_lbl 205 `"205"', add
label define es01a_secdwu_lbl 206 `"206"', add
label define es01a_secdwu_lbl 207 `"207"', add
label define es01a_secdwu_lbl 208 `"208"', add
label define es01a_secdwu_lbl 210 `"210"', add
label define es01a_secdwu_lbl 211 `"211"', add
label define es01a_secdwu_lbl 212 `"212"', add
label define es01a_secdwu_lbl 213 `"213"', add
label define es01a_secdwu_lbl 214 `"214"', add
label define es01a_secdwu_lbl 215 `"215"', add
label define es01a_secdwu_lbl 216 `"216"', add
label define es01a_secdwu_lbl 217 `"217"', add
label define es01a_secdwu_lbl 219 `"219"', add
label define es01a_secdwu_lbl 220 `"220"', add
label define es01a_secdwu_lbl 222 `"222"', add
label define es01a_secdwu_lbl 224 `"224"', add
label define es01a_secdwu_lbl 225 `"225"', add
label define es01a_secdwu_lbl 228 `"228"', add
label define es01a_secdwu_lbl 230 `"230"', add
label define es01a_secdwu_lbl 231 `"231"', add
label define es01a_secdwu_lbl 235 `"235"', add
label define es01a_secdwu_lbl 237 `"237"', add
label define es01a_secdwu_lbl 239 `"239"', add
label define es01a_secdwu_lbl 240 `"240"', add
label define es01a_secdwu_lbl 242 `"242"', add
label define es01a_secdwu_lbl 245 `"245"', add
label define es01a_secdwu_lbl 246 `"246"', add
label define es01a_secdwu_lbl 247 `"247"', add
label define es01a_secdwu_lbl 250 `"250"', add
label define es01a_secdwu_lbl 251 `"251"', add
label define es01a_secdwu_lbl 252 `"252"', add
label define es01a_secdwu_lbl 255 `"255"', add
label define es01a_secdwu_lbl 256 `"256"', add
label define es01a_secdwu_lbl 259 `"259"', add
label define es01a_secdwu_lbl 260 `"260"', add
label define es01a_secdwu_lbl 264 `"264"', add
label define es01a_secdwu_lbl 265 `"265"', add
label define es01a_secdwu_lbl 269 `"269"', add
label define es01a_secdwu_lbl 270 `"270"', add
label define es01a_secdwu_lbl 273 `"273"', add
label define es01a_secdwu_lbl 275 `"275"', add
label define es01a_secdwu_lbl 277 `"277"', add
label define es01a_secdwu_lbl 280 `"280"', add
label define es01a_secdwu_lbl 281 `"281"', add
label define es01a_secdwu_lbl 283 `"283"', add
label define es01a_secdwu_lbl 285 `"285"', add
label define es01a_secdwu_lbl 288 `"288"', add
label define es01a_secdwu_lbl 290 `"290"', add
label define es01a_secdwu_lbl 295 `"295"', add
label define es01a_secdwu_lbl 297 `"297"', add
label define es01a_secdwu_lbl 300 `"300"', add
label define es01a_secdwu_lbl 301 `"301"', add
label define es01a_secdwu_lbl 305 `"305"', add
label define es01a_secdwu_lbl 308 `"308"', add
label define es01a_secdwu_lbl 309 `"309"', add
label define es01a_secdwu_lbl 310 `"310"', add
label define es01a_secdwu_lbl 311 `"311"', add
label define es01a_secdwu_lbl 315 `"315"', add
label define es01a_secdwu_lbl 320 `"320"', add
label define es01a_secdwu_lbl 325 `"325"', add
label define es01a_secdwu_lbl 330 `"330"', add
label define es01a_secdwu_lbl 335 `"335"', add
label define es01a_secdwu_lbl 340 `"340"', add
label define es01a_secdwu_lbl 342 `"342"', add
label define es01a_secdwu_lbl 343 `"343"', add
label define es01a_secdwu_lbl 345 `"345"', add
label define es01a_secdwu_lbl 350 `"350"', add
label define es01a_secdwu_lbl 351 `"351"', add
label define es01a_secdwu_lbl 355 `"355"', add
label define es01a_secdwu_lbl 356 `"356"', add
label define es01a_secdwu_lbl 360 `"360"', add
label define es01a_secdwu_lbl 361 `"361"', add
label define es01a_secdwu_lbl 362 `"362"', add
label define es01a_secdwu_lbl 363 `"363"', add
label define es01a_secdwu_lbl 364 `"364"', add
label define es01a_secdwu_lbl 365 `"365"', add
label define es01a_secdwu_lbl 999 `"NIU (not in universe)"', add
label values es01a_secdwu es01a_secdwu_lbl

label define es01a_vehic_lbl 1 `"1"'
label define es01a_vehic_lbl 2 `"2"', add
label define es01a_vehic_lbl 3 `"3 +"', add
label define es01a_vehic_lbl 4 `"None available"', add
label define es01a_vehic_lbl 9 `"NIU (not in universe)"', add
label values es01a_vehic es01a_vehic_lbl

label define es01a_flrup_lbl 01 `"1"'
label define es01a_flrup_lbl 02 `"2"', add
label define es01a_flrup_lbl 03 `"3"', add
label define es01a_flrup_lbl 04 `"4"', add
label define es01a_flrup_lbl 05 `"5"', add
label define es01a_flrup_lbl 06 `"6"', add
label define es01a_flrup_lbl 07 `"7"', add
label define es01a_flrup_lbl 08 `"8"', add
label define es01a_flrup_lbl 09 `"9"', add
label define es01a_flrup_lbl 10 `"10+"', add
label values es01a_flrup es01a_flrup_lbl

label define es01a_flrdwn_lbl 0 `"0"'
label define es01a_flrdwn_lbl 1 `"1"', add
label define es01a_flrdwn_lbl 2 `"2"', add
label define es01a_flrdwn_lbl 3 `"3+"', add
label values es01a_flrdwn es01a_flrdwn_lbl

label define es01a_bldtype_lbl 0 `"Lodging"'
label define es01a_bldtype_lbl 1 `"Building with only one family dwelling"', add
label define es01a_bldtype_lbl 2 `"Building with only family dwelling (more than one dwelling)"', add
label define es01a_bldtype_lbl 3 `"Buildings with mainly family dwellings, also commercial space"', add
label define es01a_bldtype_lbl 4 `"Buildings primarily with collective dwelling: hotel, shelter, pension"', add
label define es01a_bldtype_lbl 5 `"Buildings primarily with collective dwelling: convent, barracks, prison"', add
label define es01a_bldtype_lbl 6 `"Buildings primarily with collective dwelling: educational centers, boarding schools, military schools"', add
label define es01a_bldtype_lbl 7 `"Buildings primarily with collective dwellings: general hospitals, institutions for handicapped persons, marginalized.."', add
label define es01a_bldtype_lbl 8 `"Buildings primarily with commercial businesses with some dwelling"', add
label values es01a_bldtype es01a_bldtype_lbl

label define es01a_constyr1_lbl 01 `"Before 1900"'
label define es01a_constyr1_lbl 02 `"1900 - 1920"', add
label define es01a_constyr1_lbl 03 `"1921 - 1940"', add
label define es01a_constyr1_lbl 04 `"1941 - 1950"', add
label define es01a_constyr1_lbl 05 `"1951 - 1960"', add
label define es01a_constyr1_lbl 06 `"1961 - 1970"', add
label define es01a_constyr1_lbl 07 `"1971 - 1980"', add
label define es01a_constyr1_lbl 08 `"1981 - 1990"', add
label define es01a_constyr1_lbl 09 `"1991 - 2001"', add
label define es01a_constyr1_lbl 98 `"NIU (not in universe)"', add
label values es01a_constyr1 es01a_constyr1_lbl

label define es01a_constyr2_lbl 1991 `"1991"'
label define es01a_constyr2_lbl 1992 `"1992"', add
label define es01a_constyr2_lbl 1993 `"1993"', add
label define es01a_constyr2_lbl 1994 `"1994"', add
label define es01a_constyr2_lbl 1995 `"1995"', add
label define es01a_constyr2_lbl 1996 `"1996"', add
label define es01a_constyr2_lbl 1997 `"1997"', add
label define es01a_constyr2_lbl 1998 `"1998"', add
label define es01a_constyr2_lbl 1999 `"1999"', add
label define es01a_constyr2_lbl 2000 `"2000"', add
label define es01a_constyr2_lbl 2001 `"2001"', add
label define es01a_constyr2_lbl 9998 `"Unknown"', add
label define es01a_constyr2_lbl 9999 `"NIU (not in universe)"', add
label values es01a_constyr2 es01a_constyr2_lbl

label define es01a_bldcond_lbl 1 `"In ruins"'
label define es01a_bldcond_lbl 2 `"Bad"', add
label define es01a_bldcond_lbl 3 `"Deficient"', add
label define es01a_bldcond_lbl 4 `"Good"', add
label define es01a_bldcond_lbl 9 `"NIU (not in universe)"', add
label values es01a_bldcond es01a_bldcond_lbl

label define es01a_ownertyp_lbl 1 `"One person"'
label define es01a_ownertyp_lbl 2 `"The community"', add
label define es01a_ownertyp_lbl 3 `"A society"', add
label define es01a_ownertyp_lbl 4 `"A public organization"', add
label define es01a_ownertyp_lbl 9 `"NIU (not in universe)"', add
label values es01a_ownertyp es01a_ownertyp_lbl

label define es01a_access_lbl 1 `"Accessible, with elevator"'
label define es01a_access_lbl 2 `"Accessible, without elevator"', add
label define es01a_access_lbl 3 `"Not accessible, with elevator"', add
label define es01a_access_lbl 4 `"Not accessible, without elevator"', add
label define es01a_access_lbl 9 `"NIU (not in universe)"', add
label values es01a_access es01a_access_lbl

label define es01a_runwat_lbl 1 `"Public water service"'
label define es01a_runwat_lbl 2 `"Private water service"', add
label define es01a_runwat_lbl 3 `"No running water available"', add
label define es01a_runwat_lbl 9 `"NIU (not in universe)"', add
label values es01a_runwat es01a_runwat_lbl

label define es01a_sewage_lbl 1 `"Sewage drains"'
label define es01a_sewage_lbl 2 `"Other type"', add
label define es01a_sewage_lbl 3 `"None available"', add
label define es01a_sewage_lbl 9 `"NIU (not in universe)"', add
label values es01a_sewage es01a_sewage_lbl

label define es01a_doorkeep_lbl 1 `"Only automatic"'
label define es01a_doorkeep_lbl 2 `"Only opened by a doorperson"', add
label define es01a_doorkeep_lbl 3 `"Both"', add
label define es01a_doorkeep_lbl 4 `"None available"', add
label define es01a_doorkeep_lbl 9 `"NIU (not in universe)"', add
label values es01a_doorkeep es01a_doorkeep_lbl

label define es01a_garage_lbl 1 `"Yes, has a garage"'
label define es01a_garage_lbl 2 `"No garage"', add
label define es01a_garage_lbl 9 `"NIU (not in universe)"', add
label values es01a_garage es01a_garage_lbl

label define es01a_gas_lbl 1 `"Yes, has gas"'
label define es01a_gas_lbl 2 `"Does not have gas"', add
label define es01a_gas_lbl 9 `"NIU (not in universe)"', add
label values es01a_gas es01a_gas_lbl

label define es01a_phone_lbl 1 `"Yes, has telephone lines"'
label define es01a_phone_lbl 2 `"None available"', add
label define es01a_phone_lbl 9 `"NIU (not in universe)"', add
label values es01a_phone es01a_phone_lbl

label define es01a_hotwat_lbl 1 `"Yes, available"'
label define es01a_hotwat_lbl 2 `"None available"', add
label define es01a_hotwat_lbl 9 `"NIU (not in universe)"', add
label values es01a_hotwat es01a_hotwat_lbl

label define es01a_nfam_lbl 0 `"0"'
label define es01a_nfam_lbl 1 `"1"', add
label define es01a_nfam_lbl 2 `"2"', add
label define es01a_nfam_lbl 3 `"3"', add
label define es01a_nfam_lbl 4 `"4"', add
label define es01a_nfam_lbl 5 `"5"', add
label define es01a_nfam_lbl 9 `"NIU (not in universe)"', add
label values es01a_nfam es01a_nfam_lbl

label define es01a_nnuc_lbl 0 `"0"'
label define es01a_nnuc_lbl 1 `"1"', add
label define es01a_nnuc_lbl 2 `"2"', add
label define es01a_nnuc_lbl 3 `"3"', add
label define es01a_nnuc_lbl 4 `"4"', add
label define es01a_nnuc_lbl 5 `"5"', add
label define es01a_nnuc_lbl 6 `"6"', add
label define es01a_nnuc_lbl 7 `"7"', add
label define es01a_nnuc_lbl 9 `"NIU (not in universe)"', add
label values es01a_nnuc es01a_nnuc_lbl

label define es01a_nperfam_lbl 00 `"0"'
label define es01a_nperfam_lbl 02 `"2"', add
label define es01a_nperfam_lbl 03 `"3"', add
label define es01a_nperfam_lbl 04 `"4"', add
label define es01a_nperfam_lbl 05 `"5"', add
label define es01a_nperfam_lbl 06 `"6"', add
label define es01a_nperfam_lbl 07 `"7"', add
label define es01a_nperfam_lbl 08 `"8"', add
label define es01a_nperfam_lbl 09 `"9"', add
label define es01a_nperfam_lbl 10 `"10"', add
label define es01a_nperfam_lbl 11 `"11"', add
label define es01a_nperfam_lbl 12 `"12"', add
label define es01a_nperfam_lbl 13 `"13"', add
label define es01a_nperfam_lbl 14 `"14"', add
label define es01a_nperfam_lbl 15 `"15"', add
label define es01a_nperfam_lbl 16 `"16"', add
label define es01a_nperfam_lbl 17 `"17"', add
label define es01a_nperfam_lbl 18 `"18"', add
label define es01a_nperfam_lbl 19 `"19"', add
label define es01a_nperfam_lbl 20 `"20"', add
label define es01a_nperfam_lbl 21 `"21"', add
label define es01a_nperfam_lbl 23 `"23"', add
label define es01a_nperfam_lbl 25 `"25"', add
label define es01a_nperfam_lbl 99 `"NIU (not in universe)"', add
label values es01a_nperfam es01a_nperfam_lbl

label define es01a_pernum_lbl 00 `"Household record"'
label define es01a_pernum_lbl 01 `"1"', add
label define es01a_pernum_lbl 02 `"2"', add
label define es01a_pernum_lbl 03 `"3"', add
label define es01a_pernum_lbl 04 `"4"', add
label define es01a_pernum_lbl 05 `"5"', add
label define es01a_pernum_lbl 06 `"6"', add
label define es01a_pernum_lbl 07 `"7"', add
label define es01a_pernum_lbl 08 `"8"', add
label define es01a_pernum_lbl 09 `"9"', add
label define es01a_pernum_lbl 10 `"10"', add
label define es01a_pernum_lbl 11 `"11"', add
label define es01a_pernum_lbl 12 `"12"', add
label define es01a_pernum_lbl 13 `"13"', add
label define es01a_pernum_lbl 14 `"14"', add
label define es01a_pernum_lbl 15 `"15"', add
label define es01a_pernum_lbl 16 `"16"', add
label define es01a_pernum_lbl 17 `"17"', add
label define es01a_pernum_lbl 18 `"18"', add
label define es01a_pernum_lbl 19 `"19"', add
label define es01a_pernum_lbl 20 `"20"', add
label define es01a_pernum_lbl 21 `"21"', add
label define es01a_pernum_lbl 22 `"22"', add
label define es01a_pernum_lbl 23 `"23"', add
label define es01a_pernum_lbl 24 `"24"', add
label define es01a_pernum_lbl 25 `"25"', add
label define es01a_pernum_lbl 26 `"26"', add
label define es01a_pernum_lbl 27 `"27"', add
label define es01a_pernum_lbl 28 `"28"', add
label define es01a_pernum_lbl 29 `"29"', add
label define es01a_pernum_lbl 30 `"30"', add
label values es01a_pernum es01a_pernum_lbl

label define es01a_pernumo_lbl 01 `"1"'
label define es01a_pernumo_lbl 02 `"2"', add
label define es01a_pernumo_lbl 03 `"3"', add
label define es01a_pernumo_lbl 04 `"4"', add
label define es01a_pernumo_lbl 05 `"5"', add
label define es01a_pernumo_lbl 06 `"6"', add
label define es01a_pernumo_lbl 07 `"7"', add
label define es01a_pernumo_lbl 08 `"8"', add
label define es01a_pernumo_lbl 09 `"9"', add
label define es01a_pernumo_lbl 10 `"10"', add
label define es01a_pernumo_lbl 11 `"11"', add
label define es01a_pernumo_lbl 12 `"12"', add
label define es01a_pernumo_lbl 13 `"13"', add
label define es01a_pernumo_lbl 14 `"14"', add
label define es01a_pernumo_lbl 15 `"15"', add
label define es01a_pernumo_lbl 16 `"16"', add
label define es01a_pernumo_lbl 17 `"17"', add
label define es01a_pernumo_lbl 18 `"18"', add
label define es01a_pernumo_lbl 19 `"19"', add
label define es01a_pernumo_lbl 20 `"20"', add
label define es01a_pernumo_lbl 21 `"21"', add
label define es01a_pernumo_lbl 22 `"22"', add
label define es01a_pernumo_lbl 23 `"23"', add
label define es01a_pernumo_lbl 24 `"24"', add
label define es01a_pernumo_lbl 25 `"25"', add
label define es01a_pernumo_lbl 26 `"26"', add
label define es01a_pernumo_lbl 27 `"27"', add
label define es01a_pernumo_lbl 28 `"28"', add
label define es01a_pernumo_lbl 29 `"29"', add
label define es01a_pernumo_lbl 30 `"30"', add
label define es01a_pernumo_lbl 31 `"31"', add
label define es01a_pernumo_lbl 32 `"32"', add
label define es01a_pernumo_lbl 33 `"33"', add
label define es01a_pernumo_lbl 34 `"34"', add
label define es01a_pernumo_lbl 35 `"35"', add
label define es01a_pernumo_lbl 36 `"36"', add
label define es01a_pernumo_lbl 37 `"37"', add
label define es01a_pernumo_lbl 38 `"38"', add
label define es01a_pernumo_lbl 39 `"39"', add
label define es01a_pernumo_lbl 40 `"40"', add
label define es01a_pernumo_lbl 41 `"41"', add
label define es01a_pernumo_lbl 42 `"42"', add
label define es01a_pernumo_lbl 43 `"43"', add
label define es01a_pernumo_lbl 44 `"44"', add
label define es01a_pernumo_lbl 45 `"45"', add
label define es01a_pernumo_lbl 46 `"46"', add
label define es01a_pernumo_lbl 47 `"47"', add
label define es01a_pernumo_lbl 48 `"48"', add
label define es01a_pernumo_lbl 49 `"49"', add
label define es01a_pernumo_lbl 50 `"50"', add
label define es01a_pernumo_lbl 51 `"51"', add
label define es01a_pernumo_lbl 52 `"52"', add
label define es01a_pernumo_lbl 53 `"53"', add
label define es01a_pernumo_lbl 54 `"54"', add
label define es01a_pernumo_lbl 55 `"55"', add
label define es01a_pernumo_lbl 56 `"56"', add
label define es01a_pernumo_lbl 57 `"57"', add
label define es01a_pernumo_lbl 58 `"58"', add
label define es01a_pernumo_lbl 59 `"59"', add
label define es01a_pernumo_lbl 60 `"60"', add
label define es01a_pernumo_lbl 61 `"61"', add
label define es01a_pernumo_lbl 62 `"62"', add
label define es01a_pernumo_lbl 63 `"63"', add
label define es01a_pernumo_lbl 64 `"64"', add
label define es01a_pernumo_lbl 65 `"65"', add
label define es01a_pernumo_lbl 66 `"66"', add
label define es01a_pernumo_lbl 67 `"67"', add
label define es01a_pernumo_lbl 68 `"68"', add
label define es01a_pernumo_lbl 69 `"69"', add
label define es01a_pernumo_lbl 70 `"70"', add
label define es01a_pernumo_lbl 71 `"71"', add
label define es01a_pernumo_lbl 72 `"72"', add
label define es01a_pernumo_lbl 73 `"73"', add
label define es01a_pernumo_lbl 74 `"74"', add
label define es01a_pernumo_lbl 75 `"75"', add
label define es01a_pernumo_lbl 76 `"76"', add
label define es01a_pernumo_lbl 77 `"77"', add
label define es01a_pernumo_lbl 78 `"78"', add
label define es01a_pernumo_lbl 79 `"79"', add
label define es01a_pernumo_lbl 80 `"80"', add
label define es01a_pernumo_lbl 81 `"81"', add
label define es01a_pernumo_lbl 82 `"82"', add
label define es01a_pernumo_lbl 83 `"83"', add
label define es01a_pernumo_lbl 84 `"84"', add
label define es01a_pernumo_lbl 85 `"85"', add
label define es01a_pernumo_lbl 86 `"86"', add
label define es01a_pernumo_lbl 87 `"87"', add
label define es01a_pernumo_lbl 88 `"88"', add
label define es01a_pernumo_lbl 89 `"89"', add
label define es01a_pernumo_lbl 90 `"90"', add
label define es01a_pernumo_lbl 91 `"91"', add
label define es01a_pernumo_lbl 92 `"92"', add
label define es01a_pernumo_lbl 93 `"93"', add
label define es01a_pernumo_lbl 94 `"94"', add
label define es01a_pernumo_lbl 95 `"95"', add
label define es01a_pernumo_lbl 96 `"96"', add
label define es01a_pernumo_lbl 97 `"97"', add
label define es01a_pernumo_lbl 98 `"98"', add
label define es01a_pernumo_lbl 99 `"99"', add
label values es01a_pernumo es01a_pernumo_lbl

label define es01a_birmo_lbl 01 `"January"'
label define es01a_birmo_lbl 02 `"February"', add
label define es01a_birmo_lbl 03 `"March"', add
label define es01a_birmo_lbl 04 `"April"', add
label define es01a_birmo_lbl 05 `"May"', add
label define es01a_birmo_lbl 06 `"June"', add
label define es01a_birmo_lbl 07 `"July"', add
label define es01a_birmo_lbl 08 `"August"', add
label define es01a_birmo_lbl 09 `"September"', add
label define es01a_birmo_lbl 10 `"October"', add
label define es01a_birmo_lbl 11 `"November"', add
label define es01a_birmo_lbl 12 `"December"', add
label values es01a_birmo es01a_birmo_lbl

label define es01a_biryr_lbl 1893 `"1893"'
label define es01a_biryr_lbl 1894 `"1894"', add
label define es01a_biryr_lbl 1895 `"1895"', add
label define es01a_biryr_lbl 1896 `"1896"', add
label define es01a_biryr_lbl 1897 `"1897"', add
label define es01a_biryr_lbl 1898 `"1898"', add
label define es01a_biryr_lbl 1899 `"1899"', add
label define es01a_biryr_lbl 1900 `"1900"', add
label define es01a_biryr_lbl 1901 `"1901"', add
label define es01a_biryr_lbl 1902 `"1902"', add
label define es01a_biryr_lbl 1903 `"1903"', add
label define es01a_biryr_lbl 1904 `"1904"', add
label define es01a_biryr_lbl 1905 `"1905"', add
label define es01a_biryr_lbl 1906 `"1906"', add
label define es01a_biryr_lbl 1907 `"1907"', add
label define es01a_biryr_lbl 1908 `"1908"', add
label define es01a_biryr_lbl 1909 `"1909"', add
label define es01a_biryr_lbl 1910 `"1910"', add
label define es01a_biryr_lbl 1911 `"1911"', add
label define es01a_biryr_lbl 1912 `"1912"', add
label define es01a_biryr_lbl 1913 `"1913"', add
label define es01a_biryr_lbl 1914 `"1914"', add
label define es01a_biryr_lbl 1915 `"1915"', add
label define es01a_biryr_lbl 1916 `"1916"', add
label define es01a_biryr_lbl 1917 `"1917"', add
label define es01a_biryr_lbl 1918 `"1918"', add
label define es01a_biryr_lbl 1919 `"1919"', add
label define es01a_biryr_lbl 1920 `"1920"', add
label define es01a_biryr_lbl 1921 `"1921"', add
label define es01a_biryr_lbl 1922 `"1922"', add
label define es01a_biryr_lbl 1923 `"1923"', add
label define es01a_biryr_lbl 1924 `"1924"', add
label define es01a_biryr_lbl 1925 `"1925"', add
label define es01a_biryr_lbl 1926 `"1926"', add
label define es01a_biryr_lbl 1927 `"1927"', add
label define es01a_biryr_lbl 1928 `"1928"', add
label define es01a_biryr_lbl 1929 `"1929"', add
label define es01a_biryr_lbl 1930 `"1930"', add
label define es01a_biryr_lbl 1931 `"1931"', add
label define es01a_biryr_lbl 1932 `"1932"', add
label define es01a_biryr_lbl 1933 `"1933"', add
label define es01a_biryr_lbl 1934 `"1934"', add
label define es01a_biryr_lbl 1935 `"1935"', add
label define es01a_biryr_lbl 1936 `"1936"', add
label define es01a_biryr_lbl 1937 `"1937"', add
label define es01a_biryr_lbl 1938 `"1938"', add
label define es01a_biryr_lbl 1939 `"1939"', add
label define es01a_biryr_lbl 1940 `"1940"', add
label define es01a_biryr_lbl 1941 `"1941"', add
label define es01a_biryr_lbl 1942 `"1942"', add
label define es01a_biryr_lbl 1943 `"1943"', add
label define es01a_biryr_lbl 1944 `"1944"', add
label define es01a_biryr_lbl 1945 `"1945"', add
label define es01a_biryr_lbl 1946 `"1946"', add
label define es01a_biryr_lbl 1947 `"1947"', add
label define es01a_biryr_lbl 1948 `"1948"', add
label define es01a_biryr_lbl 1949 `"1949"', add
label define es01a_biryr_lbl 1950 `"1950"', add
label define es01a_biryr_lbl 1951 `"1951"', add
label define es01a_biryr_lbl 1952 `"1952"', add
label define es01a_biryr_lbl 1953 `"1953"', add
label define es01a_biryr_lbl 1954 `"1954"', add
label define es01a_biryr_lbl 1955 `"1955"', add
label define es01a_biryr_lbl 1956 `"1956"', add
label define es01a_biryr_lbl 1957 `"1957"', add
label define es01a_biryr_lbl 1958 `"1958"', add
label define es01a_biryr_lbl 1959 `"1959"', add
label define es01a_biryr_lbl 1960 `"1960"', add
label define es01a_biryr_lbl 1961 `"1961"', add
label define es01a_biryr_lbl 1962 `"1962"', add
label define es01a_biryr_lbl 1963 `"1963"', add
label define es01a_biryr_lbl 1964 `"1964"', add
label define es01a_biryr_lbl 1965 `"1965"', add
label define es01a_biryr_lbl 1966 `"1966"', add
label define es01a_biryr_lbl 1967 `"1967"', add
label define es01a_biryr_lbl 1968 `"1968"', add
label define es01a_biryr_lbl 1969 `"1969"', add
label define es01a_biryr_lbl 1970 `"1970"', add
label define es01a_biryr_lbl 1971 `"1971"', add
label define es01a_biryr_lbl 1972 `"1972"', add
label define es01a_biryr_lbl 1973 `"1973"', add
label define es01a_biryr_lbl 1974 `"1974"', add
label define es01a_biryr_lbl 1975 `"1975"', add
label define es01a_biryr_lbl 1976 `"1976"', add
label define es01a_biryr_lbl 1977 `"1977"', add
label define es01a_biryr_lbl 1978 `"1978"', add
label define es01a_biryr_lbl 1979 `"1979"', add
label define es01a_biryr_lbl 1980 `"1980"', add
label define es01a_biryr_lbl 1981 `"1981"', add
label define es01a_biryr_lbl 1982 `"1982"', add
label define es01a_biryr_lbl 1983 `"1983"', add
label define es01a_biryr_lbl 1984 `"1984"', add
label define es01a_biryr_lbl 1985 `"1985"', add
label define es01a_biryr_lbl 1986 `"1986"', add
label define es01a_biryr_lbl 1987 `"1987"', add
label define es01a_biryr_lbl 1988 `"1988"', add
label define es01a_biryr_lbl 1989 `"1989"', add
label define es01a_biryr_lbl 1990 `"1990"', add
label define es01a_biryr_lbl 1991 `"1991"', add
label define es01a_biryr_lbl 1992 `"1992"', add
label define es01a_biryr_lbl 1993 `"1993"', add
label define es01a_biryr_lbl 1994 `"1994"', add
label define es01a_biryr_lbl 1995 `"1995"', add
label define es01a_biryr_lbl 1996 `"1996"', add
label define es01a_biryr_lbl 1997 `"1997"', add
label define es01a_biryr_lbl 1998 `"1998"', add
label define es01a_biryr_lbl 1999 `"1999"', add
label define es01a_biryr_lbl 2000 `"2000"', add
label define es01a_biryr_lbl 2001 `"2001"', add
label values es01a_biryr es01a_biryr_lbl

label define es01a_age_lbl 000 `"0"'
label define es01a_age_lbl 001 `"1"', add
label define es01a_age_lbl 002 `"2"', add
label define es01a_age_lbl 003 `"3"', add
label define es01a_age_lbl 004 `"4"', add
label define es01a_age_lbl 005 `"5"', add
label define es01a_age_lbl 006 `"6"', add
label define es01a_age_lbl 007 `"7"', add
label define es01a_age_lbl 008 `"8"', add
label define es01a_age_lbl 009 `"9"', add
label define es01a_age_lbl 010 `"10"', add
label define es01a_age_lbl 011 `"11"', add
label define es01a_age_lbl 012 `"12"', add
label define es01a_age_lbl 013 `"13"', add
label define es01a_age_lbl 014 `"14"', add
label define es01a_age_lbl 015 `"15"', add
label define es01a_age_lbl 016 `"16"', add
label define es01a_age_lbl 017 `"17"', add
label define es01a_age_lbl 018 `"18"', add
label define es01a_age_lbl 019 `"19"', add
label define es01a_age_lbl 020 `"20"', add
label define es01a_age_lbl 021 `"21"', add
label define es01a_age_lbl 022 `"22"', add
label define es01a_age_lbl 023 `"23"', add
label define es01a_age_lbl 024 `"24"', add
label define es01a_age_lbl 025 `"25"', add
label define es01a_age_lbl 026 `"26"', add
label define es01a_age_lbl 027 `"27"', add
label define es01a_age_lbl 028 `"28"', add
label define es01a_age_lbl 029 `"29"', add
label define es01a_age_lbl 030 `"30"', add
label define es01a_age_lbl 031 `"31"', add
label define es01a_age_lbl 032 `"32"', add
label define es01a_age_lbl 033 `"33"', add
label define es01a_age_lbl 034 `"34"', add
label define es01a_age_lbl 035 `"35"', add
label define es01a_age_lbl 036 `"36"', add
label define es01a_age_lbl 037 `"37"', add
label define es01a_age_lbl 038 `"38"', add
label define es01a_age_lbl 039 `"39"', add
label define es01a_age_lbl 040 `"40"', add
label define es01a_age_lbl 041 `"41"', add
label define es01a_age_lbl 042 `"42"', add
label define es01a_age_lbl 043 `"43"', add
label define es01a_age_lbl 044 `"44"', add
label define es01a_age_lbl 045 `"45"', add
label define es01a_age_lbl 046 `"46"', add
label define es01a_age_lbl 047 `"47"', add
label define es01a_age_lbl 048 `"48"', add
label define es01a_age_lbl 049 `"49"', add
label define es01a_age_lbl 050 `"50"', add
label define es01a_age_lbl 051 `"51"', add
label define es01a_age_lbl 052 `"52"', add
label define es01a_age_lbl 053 `"53"', add
label define es01a_age_lbl 054 `"54"', add
label define es01a_age_lbl 055 `"55"', add
label define es01a_age_lbl 056 `"56"', add
label define es01a_age_lbl 057 `"57"', add
label define es01a_age_lbl 058 `"58"', add
label define es01a_age_lbl 059 `"59"', add
label define es01a_age_lbl 060 `"60"', add
label define es01a_age_lbl 061 `"61"', add
label define es01a_age_lbl 062 `"62"', add
label define es01a_age_lbl 063 `"63"', add
label define es01a_age_lbl 064 `"64"', add
label define es01a_age_lbl 065 `"65"', add
label define es01a_age_lbl 066 `"66"', add
label define es01a_age_lbl 067 `"67"', add
label define es01a_age_lbl 068 `"68"', add
label define es01a_age_lbl 069 `"69"', add
label define es01a_age_lbl 070 `"70"', add
label define es01a_age_lbl 071 `"71"', add
label define es01a_age_lbl 072 `"72"', add
label define es01a_age_lbl 073 `"73"', add
label define es01a_age_lbl 074 `"74"', add
label define es01a_age_lbl 075 `"75"', add
label define es01a_age_lbl 076 `"76"', add
label define es01a_age_lbl 077 `"77"', add
label define es01a_age_lbl 078 `"78"', add
label define es01a_age_lbl 079 `"79"', add
label define es01a_age_lbl 080 `"80"', add
label define es01a_age_lbl 081 `"81"', add
label define es01a_age_lbl 082 `"82"', add
label define es01a_age_lbl 083 `"83"', add
label define es01a_age_lbl 084 `"84"', add
label define es01a_age_lbl 085 `"85"', add
label define es01a_age_lbl 086 `"86"', add
label define es01a_age_lbl 087 `"87"', add
label define es01a_age_lbl 088 `"88"', add
label define es01a_age_lbl 089 `"89"', add
label define es01a_age_lbl 090 `"90"', add
label define es01a_age_lbl 091 `"91"', add
label define es01a_age_lbl 092 `"92"', add
label define es01a_age_lbl 093 `"93"', add
label define es01a_age_lbl 094 `"94"', add
label define es01a_age_lbl 095 `"95"', add
label define es01a_age_lbl 096 `"96"', add
label define es01a_age_lbl 097 `"97"', add
label define es01a_age_lbl 098 `"98"', add
label define es01a_age_lbl 099 `"99"', add
label define es01a_age_lbl 100 `"100+"', add
label values es01a_age es01a_age_lbl

label define es01a_sex_lbl 1 `"Man"'
label define es01a_sex_lbl 2 `"Woman"', add
label values es01a_sex es01a_sex_lbl

label define es01a_nation_lbl 100 `"Europe"'
label define es01a_nation_lbl 101 `"Albania"', add
label define es01a_nation_lbl 102 `"Austria"', add
label define es01a_nation_lbl 103 `"Belgium"', add
label define es01a_nation_lbl 104 `"Bulgaria"', add
label define es01a_nation_lbl 106 `"Cyprus"', add
label define es01a_nation_lbl 107 `"Denmark"', add
label define es01a_nation_lbl 108 `"Spain"', add
label define es01a_nation_lbl 109 `"Finland"', add
label define es01a_nation_lbl 110 `"France"', add
label define es01a_nation_lbl 111 `"Greece"', add
label define es01a_nation_lbl 112 `"Hungary"', add
label define es01a_nation_lbl 113 `"Ireland"', add
label define es01a_nation_lbl 114 `"Iceland"', add
label define es01a_nation_lbl 115 `"Italy"', add
label define es01a_nation_lbl 116 `"Liechtenstein"', add
label define es01a_nation_lbl 117 `"Luxemburg"', add
label define es01a_nation_lbl 118 `"Malta"', add
label define es01a_nation_lbl 119 `"Monaco"', add
label define es01a_nation_lbl 120 `"Norway"', add
label define es01a_nation_lbl 121 `"Low Countries"', add
label define es01a_nation_lbl 122 `"Poland"', add
label define es01a_nation_lbl 123 `"Portugal"', add
label define es01a_nation_lbl 124 `"Andorra"', add
label define es01a_nation_lbl 125 `"United Kingdom"', add
label define es01a_nation_lbl 126 `"Germany"', add
label define es01a_nation_lbl 128 `"Rumania"', add
label define es01a_nation_lbl 129 `"San Marino"', add
label define es01a_nation_lbl 130 `"Vatican City"', add
label define es01a_nation_lbl 131 `"Sweden"', add
label define es01a_nation_lbl 132 `"Switzerland"', add
label define es01a_nation_lbl 135 `"Ukraine"', add
label define es01a_nation_lbl 136 `"Letonia"', add
label define es01a_nation_lbl 137 `"Moldova"', add
label define es01a_nation_lbl 138 `"Bielorrusia"', add
label define es01a_nation_lbl 139 `"Georgia"', add
label define es01a_nation_lbl 141 `"Estonia"', add
label define es01a_nation_lbl 142 `"Lithuania"', add
label define es01a_nation_lbl 143 `"Chek Republic"', add
label define es01a_nation_lbl 144 `"Slovakia"', add
label define es01a_nation_lbl 145 `"Bosnia-Herzegovina"', add
label define es01a_nation_lbl 146 `"Croacia"', add
label define es01a_nation_lbl 147 `"Slovenia"', add
label define es01a_nation_lbl 148 `"Armenia"', add
label define es01a_nation_lbl 154 `"Russia"', add
label define es01a_nation_lbl 155 `"Yugoslavia"', add
label define es01a_nation_lbl 156 `"Macedonia"', add
label define es01a_nation_lbl 200 `"Africa"', add
label define es01a_nation_lbl 201 `"Burkina Fasso"', add
label define es01a_nation_lbl 202 `"Angola"', add
label define es01a_nation_lbl 203 `"Argelia"', add
label define es01a_nation_lbl 204 `"Benin"', add
label define es01a_nation_lbl 205 `"Botswana"', add
label define es01a_nation_lbl 206 `"Burundi"', add
label define es01a_nation_lbl 207 `"Cabo Verde"', add
label define es01a_nation_lbl 208 `"Camerun"', add
label define es01a_nation_lbl 209 `"Comores"', add
label define es01a_nation_lbl 210 `"Congo"', add
label define es01a_nation_lbl 211 `"Ivory Coast"', add
label define es01a_nation_lbl 212 `"Djibouti"', add
label define es01a_nation_lbl 213 `"Egypt"', add
label define es01a_nation_lbl 214 `"Ethiopia"', add
label define es01a_nation_lbl 215 `"Gabon"', add
label define es01a_nation_lbl 216 `"Gambia"', add
label define es01a_nation_lbl 217 `"Ghana"', add
label define es01a_nation_lbl 218 `"Guinea"', add
label define es01a_nation_lbl 219 `"Guinea Bissau"', add
label define es01a_nation_lbl 220 `"Guinea Equatorial"', add
label define es01a_nation_lbl 221 `"Kenya"', add
label define es01a_nation_lbl 222 `"Lesotho"', add
label define es01a_nation_lbl 223 `"Liberia"', add
label define es01a_nation_lbl 224 `"Libya"', add
label define es01a_nation_lbl 225 `"Madagascar"', add
label define es01a_nation_lbl 226 `"Malawi"', add
label define es01a_nation_lbl 227 `"Mali"', add
label define es01a_nation_lbl 228 `"Morocco"', add
label define es01a_nation_lbl 229 `"Mauricio"', add
label define es01a_nation_lbl 230 `"Mauritania"', add
label define es01a_nation_lbl 231 `"Mozambique"', add
label define es01a_nation_lbl 232 `"Namibia"', add
label define es01a_nation_lbl 233 `"Niger"', add
label define es01a_nation_lbl 234 `"Nigeria"', add
label define es01a_nation_lbl 235 `"Republic of Central Africa"', add
label define es01a_nation_lbl 236 `"Sudafrica"', add
label define es01a_nation_lbl 237 `"Ruanda"', add
label define es01a_nation_lbl 238 `"Santo Tome Y Principe"', add
label define es01a_nation_lbl 239 `"Senegal"', add
label define es01a_nation_lbl 240 `"Seychelles"', add
label define es01a_nation_lbl 241 `"Sierra Leona"', add
label define es01a_nation_lbl 242 `"Somalia"', add
label define es01a_nation_lbl 243 `"Sudan"', add
label define es01a_nation_lbl 244 `"Swazilandia"', add
label define es01a_nation_lbl 245 `"Tanzania"', add
label define es01a_nation_lbl 246 `"Chad"', add
label define es01a_nation_lbl 247 `"Togo"', add
label define es01a_nation_lbl 248 `"Tunez"', add
label define es01a_nation_lbl 249 `"Uganda"', add
label define es01a_nation_lbl 250 `"Zaire"', add
label define es01a_nation_lbl 251 `"Zambia"', add
label define es01a_nation_lbl 252 `"Zimbabwe"', add
label define es01a_nation_lbl 253 `"Eritrea"', add
label define es01a_nation_lbl 300 `"America"', add
label define es01a_nation_lbl 301 `"Canada"', add
label define es01a_nation_lbl 302 `"United States of America"', add
label define es01a_nation_lbl 303 `"Mexico"', add
label define es01a_nation_lbl 310 `"Antigua and Barbuda"', add
label define es01a_nation_lbl 311 `"Bahamas"', add
label define es01a_nation_lbl 312 `"Barbados"', add
label define es01a_nation_lbl 313 `"Belize"', add
label define es01a_nation_lbl 314 `"Costa Rica"', add
label define es01a_nation_lbl 315 `"Cuba"', add
label define es01a_nation_lbl 316 `"Dominica"', add
label define es01a_nation_lbl 317 `"El Salvador"', add
label define es01a_nation_lbl 318 `"Granada"', add
label define es01a_nation_lbl 319 `"Guatemala"', add
label define es01a_nation_lbl 320 `"Haiti"', add
label define es01a_nation_lbl 321 `"Honduras"', add
label define es01a_nation_lbl 322 `"Jamaica"', add
label define es01a_nation_lbl 323 `"Nicaragua"', add
label define es01a_nation_lbl 324 `"Panama"', add
label define es01a_nation_lbl 325 `"San Vicente and Las Granadinas"', add
label define es01a_nation_lbl 326 `"Dominican Republic"', add
label define es01a_nation_lbl 327 `"Trinidad and Tobago"', add
label define es01a_nation_lbl 328 `"Santa Lucia"', add
label define es01a_nation_lbl 329 `"San Cristobal and Nieves"', add
label define es01a_nation_lbl 340 `"Argentina"', add
label define es01a_nation_lbl 341 `"Bolivia"', add
label define es01a_nation_lbl 342 `"Brazil"', add
label define es01a_nation_lbl 343 `"Colombia"', add
label define es01a_nation_lbl 344 `"Chile"', add
label define es01a_nation_lbl 345 `"Ecuador"', add
label define es01a_nation_lbl 346 `"Guyana"', add
label define es01a_nation_lbl 347 `"Paraguay"', add
label define es01a_nation_lbl 348 `"Peru"', add
label define es01a_nation_lbl 349 `"Surinam"', add
label define es01a_nation_lbl 350 `"Uruguay"', add
label define es01a_nation_lbl 351 `"Venezuela"', add
label define es01a_nation_lbl 400 `"Asia"', add
label define es01a_nation_lbl 401 `"Afghanistan"', add
label define es01a_nation_lbl 402 `"Saudi Arabia"', add
label define es01a_nation_lbl 403 `"Bahrein"', add
label define es01a_nation_lbl 404 `"Bangladesh"', add
label define es01a_nation_lbl 405 `"Birmania"', add
label define es01a_nation_lbl 406 `"Buthan"', add
label define es01a_nation_lbl 407 `"China"', add
label define es01a_nation_lbl 408 `"United Arabian Emirates"', add
label define es01a_nation_lbl 409 `"Philippines"', add
label define es01a_nation_lbl 410 `"India"', add
label define es01a_nation_lbl 411 `"Indonesia"', add
label define es01a_nation_lbl 412 `"Irak"', add
label define es01a_nation_lbl 413 `"Iran"', add
label define es01a_nation_lbl 414 `"Israel"', add
label define es01a_nation_lbl 415 `"Japan"', add
label define es01a_nation_lbl 416 `"Jordanian"', add
label define es01a_nation_lbl 417 `"Camboya"', add
label define es01a_nation_lbl 418 `"Kuwait"', add
label define es01a_nation_lbl 419 `"Laos"', add
label define es01a_nation_lbl 420 `"Lebanon"', add
label define es01a_nation_lbl 421 `"Malaysia"', add
label define es01a_nation_lbl 422 `"Maldivas"', add
label define es01a_nation_lbl 423 `"Mongolia"', add
label define es01a_nation_lbl 424 `"Nepal"', add
label define es01a_nation_lbl 425 `"Oman"', add
label define es01a_nation_lbl 426 `"Pakistan"', add
label define es01a_nation_lbl 427 `"Qatar"', add
label define es01a_nation_lbl 430 `"Republic of Korea"', add
label define es01a_nation_lbl 431 `"North Korea"', add
label define es01a_nation_lbl 432 `"Singapore"', add
label define es01a_nation_lbl 433 `"Syria"', add
label define es01a_nation_lbl 434 `"Sri Lanka"', add
label define es01a_nation_lbl 435 `"Thailand"', add
label define es01a_nation_lbl 436 `"Turkey"', add
label define es01a_nation_lbl 437 `"Vietnam"', add
label define es01a_nation_lbl 438 `"Taiwan"', add
label define es01a_nation_lbl 439 `"Brunei"', add
label define es01a_nation_lbl 440 `"Marshal Islands"', add
label define es01a_nation_lbl 441 `"Yemen"', add
label define es01a_nation_lbl 442 `"Azerbaiyan"', add
label define es01a_nation_lbl 443 `"Kazajstan"', add
label define es01a_nation_lbl 444 `"Kirgyistan"', add
label define es01a_nation_lbl 445 `"Tadyikistan"', add
label define es01a_nation_lbl 446 `"Turkmenistan"', add
label define es01a_nation_lbl 447 `"Uzbekistan"', add
label define es01a_nation_lbl 500 `"Oceania"', add
label define es01a_nation_lbl 501 `"Australia"', add
label define es01a_nation_lbl 502 `"Fiji"', add
label define es01a_nation_lbl 503 `"Nauru"', add
label define es01a_nation_lbl 504 `"New Zealand"', add
label define es01a_nation_lbl 505 `"Papua New Guinea"', add
label define es01a_nation_lbl 506 `"Salomon Islands"', add
label define es01a_nation_lbl 507 `"Samoa"', add
label define es01a_nation_lbl 508 `"Tonga"', add
label define es01a_nation_lbl 509 `"Vanuatu"', add
label define es01a_nation_lbl 510 `"Kiribati"', add
label define es01a_nation_lbl 511 `"Micronesia"', add
label define es01a_nation_lbl 512 `"Tuvalu"', add
label define es01a_nation_lbl 555 `"No country"', add
label define es01a_nation_lbl 600 `"Palestine"', add
label values es01a_nation es01a_nation_lbl

label define es01a_bplauton_lbl 11 `"Galicia"'
label define es01a_bplauton_lbl 12 `"Principado de Asturias"', add
label define es01a_bplauton_lbl 13 `"Cantabria"', add
label define es01a_bplauton_lbl 21 `"País Vasco"', add
label define es01a_bplauton_lbl 22 `"Comunidad Foral de Navarra"', add
label define es01a_bplauton_lbl 23 `"La Rioja"', add
label define es01a_bplauton_lbl 24 `"Aragón"', add
label define es01a_bplauton_lbl 30 `"Comunidad de Madrid"', add
label define es01a_bplauton_lbl 41 `"Castilla y León"', add
label define es01a_bplauton_lbl 42 `"Castilla-La Mancha"', add
label define es01a_bplauton_lbl 43 `"Extremadura"', add
label define es01a_bplauton_lbl 51 `"Cataluña"', add
label define es01a_bplauton_lbl 52 `"Comunidad Valenciana"', add
label define es01a_bplauton_lbl 53 `"Illes Balears"', add
label define es01a_bplauton_lbl 61 `"Andalucía"', add
label define es01a_bplauton_lbl 62 `"Región de Murcia"', add
label define es01a_bplauton_lbl 63 `"Ciudad Autónoma de Ceuta"', add
label define es01a_bplauton_lbl 64 `"Ciudad Autónoma de Melilla"', add
label define es01a_bplauton_lbl 70 `"Canarias"', add
label define es01a_bplauton_lbl 98 `"Abroad"', add
label values es01a_bplauton es01a_bplauton_lbl

label define es01a_bplpr_lbl 01 `"Álava"'
label define es01a_bplpr_lbl 02 `"Albacete"', add
label define es01a_bplpr_lbl 03 `"Alicante/Alacant"', add
label define es01a_bplpr_lbl 04 `"Almería"', add
label define es01a_bplpr_lbl 05 `"Ávila"', add
label define es01a_bplpr_lbl 06 `"Badajoz"', add
label define es01a_bplpr_lbl 07 `"Balears (Illes)"', add
label define es01a_bplpr_lbl 08 `"Barcelona"', add
label define es01a_bplpr_lbl 09 `"Burgos"', add
label define es01a_bplpr_lbl 10 `"Cáceres"', add
label define es01a_bplpr_lbl 11 `"Cádiz"', add
label define es01a_bplpr_lbl 12 `"Castellón/Castelló"', add
label define es01a_bplpr_lbl 13 `"Ciudad Real"', add
label define es01a_bplpr_lbl 14 `"Córdoba"', add
label define es01a_bplpr_lbl 15 `"Coruña (A)"', add
label define es01a_bplpr_lbl 16 `"Cuenca"', add
label define es01a_bplpr_lbl 17 `"Girona"', add
label define es01a_bplpr_lbl 18 `"Granada"', add
label define es01a_bplpr_lbl 19 `"Guadalajara"', add
label define es01a_bplpr_lbl 20 `"Guipúzcoa"', add
label define es01a_bplpr_lbl 21 `"Huelva"', add
label define es01a_bplpr_lbl 22 `"Huesca"', add
label define es01a_bplpr_lbl 23 `"Jaén"', add
label define es01a_bplpr_lbl 24 `"León"', add
label define es01a_bplpr_lbl 25 `"Lleida"', add
label define es01a_bplpr_lbl 26 `"Rioja (La)"', add
label define es01a_bplpr_lbl 27 `"Lugo"', add
label define es01a_bplpr_lbl 28 `"Madrid"', add
label define es01a_bplpr_lbl 29 `"Málaga"', add
label define es01a_bplpr_lbl 30 `"Murcia"', add
label define es01a_bplpr_lbl 31 `"Navarra"', add
label define es01a_bplpr_lbl 32 `"Ourense"', add
label define es01a_bplpr_lbl 33 `"Asturias"', add
label define es01a_bplpr_lbl 34 `"Palencia"', add
label define es01a_bplpr_lbl 35 `"Palmas (Las)"', add
label define es01a_bplpr_lbl 36 `"Pontevedra"', add
label define es01a_bplpr_lbl 37 `"Salamanca"', add
label define es01a_bplpr_lbl 38 `"Santa Cruz de Tenerife"', add
label define es01a_bplpr_lbl 39 `"Cantabria"', add
label define es01a_bplpr_lbl 40 `"Segovia"', add
label define es01a_bplpr_lbl 41 `"Sevilla"', add
label define es01a_bplpr_lbl 42 `"Soria"', add
label define es01a_bplpr_lbl 43 `"Tarragona"', add
label define es01a_bplpr_lbl 44 `"Teruel"', add
label define es01a_bplpr_lbl 45 `"Toledo"', add
label define es01a_bplpr_lbl 46 `"Valencia/València"', add
label define es01a_bplpr_lbl 47 `"Valladolid"', add
label define es01a_bplpr_lbl 48 `"Vizcaya"', add
label define es01a_bplpr_lbl 49 `"Zamora"', add
label define es01a_bplpr_lbl 50 `"Zaragoza"', add
label define es01a_bplpr_lbl 51 `"Ceuta"', add
label define es01a_bplpr_lbl 52 `"Melilla"', add
label define es01a_bplpr_lbl 66 `"Abroad"', add
label values es01a_bplpr es01a_bplpr_lbl

label define es01a_bplmun_lbl 01059 `"Vitoria-Gasteiz"'
label define es01a_bplmun_lbl 01991 `"Álava: 0 to 2000 population"', add
label define es01a_bplmun_lbl 01992 `"Álava: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 01993 `"Álava: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 01994 `"Álava: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 02003 `"Albacete"', add
label define es01a_bplmun_lbl 02009 `"Almansa"', add
label define es01a_bplmun_lbl 02037 `"Hellín"', add
label define es01a_bplmun_lbl 02081 `"Villarrobledo"', add
label define es01a_bplmun_lbl 02991 `"Albacete: 0 to 2000 population"', add
label define es01a_bplmun_lbl 02992 `"Albacete: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 02993 `"Albacete: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 02994 `"Albacete: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 03009 `"Alcoy/Alcoi"', add
label define es01a_bplmun_lbl 03014 `"Alicante/Alacant"', add
label define es01a_bplmun_lbl 03031 `"Benidorm"', add
label define es01a_bplmun_lbl 03059 `"Crevillent"', add
label define es01a_bplmun_lbl 03063 `"Dénia"', add
label define es01a_bplmun_lbl 03065 `"Elche/Elx"', add
label define es01a_bplmun_lbl 03066 `"Elda"', add
label define es01a_bplmun_lbl 03079 `"Ibi"', add
label define es01a_bplmun_lbl 03093 `"Novelda"', add
label define es01a_bplmun_lbl 03099 `"Orihuela"', add
label define es01a_bplmun_lbl 03104 `"Petrer"', add
label define es01a_bplmun_lbl 03122 `"San Vicente del Raspeig/Sant Vicent del Raspeig"', add
label define es01a_bplmun_lbl 03133 `"Torrevieja"', add
label define es01a_bplmun_lbl 03139 `"Villajoyosa/Vila Joiosa (la)"', add
label define es01a_bplmun_lbl 03140 `"Villena"', add
label define es01a_bplmun_lbl 03991 `"Alicante/Alacant: 0 to 2000 population"', add
label define es01a_bplmun_lbl 03992 `"Alicante/Alacant: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 03993 `"Alicante/Alacant: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 03994 `"Alicante/Alacant: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 04003 `"Adra"', add
label define es01a_bplmun_lbl 04013 `"Almería"', add
label define es01a_bplmun_lbl 04079 `"Roquetas de Mar"', add
label define es01a_bplmun_lbl 04902 `"Ejido (El)"', add
label define es01a_bplmun_lbl 04991 `"Almería: 0 to 2000 population"', add
label define es01a_bplmun_lbl 04992 `"Almería: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 04993 `"Almería: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 04994 `"Almería: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 05019 `"Ávila"', add
label define es01a_bplmun_lbl 05991 `"Ávila: 0 to 2000 population"', add
label define es01a_bplmun_lbl 05992 `"Ávila: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 05993 `"Ávila: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 06011 `"Almendralejo"', add
label define es01a_bplmun_lbl 06015 `"Badajoz"', add
label define es01a_bplmun_lbl 06044 `"Don Benito"', add
label define es01a_bplmun_lbl 06083 `"Mérida"', add
label define es01a_bplmun_lbl 06153 `"Villanueva de la Serena"', add
label define es01a_bplmun_lbl 06991 `"Badajoz: 0 to 2000 population"', add
label define es01a_bplmun_lbl 06992 `"Badajoz: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 06993 `"Badajoz: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 06994 `"Badajoz: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 07011 `"Calvià"', add
label define es01a_bplmun_lbl 07015 `"Ciutadella de Menorca"', add
label define es01a_bplmun_lbl 07026 `"Eivissa"', add
label define es01a_bplmun_lbl 07027 `"Inca"', add
label define es01a_bplmun_lbl 07031 `"Llucmajor"', add
label define es01a_bplmun_lbl 07032 `"Mahón"', add
label define es01a_bplmun_lbl 07033 `"Manacor"', add
label define es01a_bplmun_lbl 07036 `"Marratxí"', add
label define es01a_bplmun_lbl 07040 `"Palma de Mallorca"', add
label define es01a_bplmun_lbl 07991 `"Balears (Illes): 0 to 2000 population"', add
label define es01a_bplmun_lbl 07992 `"Balears (Illes): 2001 to 5000 population"', add
label define es01a_bplmun_lbl 07993 `"Balears (Illes): 5001 to 10000 population"', add
label define es01a_bplmun_lbl 07994 `"Balears (Illes): 10001 to 20000 population"', add
label define es01a_bplmun_lbl 08015 `"Badalona"', add
label define es01a_bplmun_lbl 08019 `"Barcelona"', add
label define es01a_bplmun_lbl 08056 `"Castelldefels"', add
label define es01a_bplmun_lbl 08073 `"Cornellà de Llobregat"', add
label define es01a_bplmun_lbl 08077 `"Esplugues de Llobregat"', add
label define es01a_bplmun_lbl 08089 `"Gavà"', add
label define es01a_bplmun_lbl 08096 `"Granollers"', add
label define es01a_bplmun_lbl 08101 `"Hospitalet de Llobregat (L´)"', add
label define es01a_bplmun_lbl 08102 `"Igualada"', add
label define es01a_bplmun_lbl 08113 `"Manresa"', add
label define es01a_bplmun_lbl 08114 `"Martorell"', add
label define es01a_bplmun_lbl 08118 `"Masnou (El)"', add
label define es01a_bplmun_lbl 08121 `"Mataró"', add
label define es01a_bplmun_lbl 08123 `"Molins de Rei"', add
label define es01a_bplmun_lbl 08124 `"Mollet del Vallès"', add
label define es01a_bplmun_lbl 08125 `"Montcada i Reixac"', add
label define es01a_bplmun_lbl 08163 `"Pineda de Mar"', add
label define es01a_bplmun_lbl 08169 `"Prat de Llobregat (El)"', add
label define es01a_bplmun_lbl 08172 `"Premià de Mar"', add
label define es01a_bplmun_lbl 08180 `"Ripollet"', add
label define es01a_bplmun_lbl 08184 `"Rubí"', add
label define es01a_bplmun_lbl 08187 `"Sabadell"', add
label define es01a_bplmun_lbl 08194 `"Sant Adrià de Besòs"', add
label define es01a_bplmun_lbl 08196 `"Sant Andreu de la Barca"', add
label define es01a_bplmun_lbl 08200 `"Sant Boi de Llobregat"', add
label define es01a_bplmun_lbl 08205 `"Sant Cugat del Vallès"', add
label define es01a_bplmun_lbl 08211 `"Sant Feliu de Llobregat"', add
label define es01a_bplmun_lbl 08217 `"Sant Joan Despí"', add
label define es01a_bplmun_lbl 08231 `"Sant Pere de Ribes"', add
label define es01a_bplmun_lbl 08245 `"Santa Coloma de Gramenet"', add
label define es01a_bplmun_lbl 08252 `"Barberà del Vallès"', add
label define es01a_bplmun_lbl 08260 `"Santa Perpètua de Mogoda"', add
label define es01a_bplmun_lbl 08263 `"Sant Vicenç dels Horts"', add
label define es01a_bplmun_lbl 08266 `"Cerdanyola del Vallès"', add
label define es01a_bplmun_lbl 08279 `"Terrassa"', add
label define es01a_bplmun_lbl 08298 `"Vic"', add
label define es01a_bplmun_lbl 08301 `"Viladecans"', add
label define es01a_bplmun_lbl 08305 `"Vilafranca del Penedès"', add
label define es01a_bplmun_lbl 08307 `"Vilanova i la Geltrú"', add
label define es01a_bplmun_lbl 08991 `"Barcelona: 0 to 2000 population"', add
label define es01a_bplmun_lbl 08992 `"Barcelona: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 08993 `"Barcelona: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 08994 `"Barcelona: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 09018 `"Aranda de Duero"', add
label define es01a_bplmun_lbl 09059 `"Burgos"', add
label define es01a_bplmun_lbl 09219 `"Miranda de Ebro"', add
label define es01a_bplmun_lbl 09991 `"Burgos: 0 to 2000 population"', add
label define es01a_bplmun_lbl 09992 `"Burgos: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 09993 `"Burgos: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 10037 `"Cáceres"', add
label define es01a_bplmun_lbl 10148 `"Plasencia"', add
label define es01a_bplmun_lbl 10991 `"Cáceres: 0 to 2000 population"', add
label define es01a_bplmun_lbl 10992 `"Cáceres: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 10993 `"Cáceres: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 10994 `"Cáceres: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 11004 `"Algeciras"', add
label define es01a_bplmun_lbl 11006 `"Arcos de la Frontera"', add
label define es01a_bplmun_lbl 11007 `"Barbate"', add
label define es01a_bplmun_lbl 11012 `"Cádiz"', add
label define es01a_bplmun_lbl 11015 `"Chiclana de la Frontera"', add
label define es01a_bplmun_lbl 11020 `"Jerez de la Frontera"', add
label define es01a_bplmun_lbl 11022 `"Línea de la Concepción (La)"', add
label define es01a_bplmun_lbl 11027 `"Puerto de Santa María (El)"', add
label define es01a_bplmun_lbl 11028 `"Puerto Real"', add
label define es01a_bplmun_lbl 11030 `"Rota"', add
label define es01a_bplmun_lbl 11031 `"San Fernando"', add
label define es01a_bplmun_lbl 11032 `"Sanlúcar de Barrameda"', add
label define es01a_bplmun_lbl 11033 `"San Roque"', add
label define es01a_bplmun_lbl 11991 `"Cádiz: 0 to 2000 population"', add
label define es01a_bplmun_lbl 11992 `"Cádiz: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 11993 `"Cádiz: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 11994 `"Cádiz: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 12027 `"Benicarló"', add
label define es01a_bplmun_lbl 12032 `"Burriana"', add
label define es01a_bplmun_lbl 12040 `"Castellón de la Plana/Castelló de la Plana"', add
label define es01a_bplmun_lbl 12084 `"Onda"', add
label define es01a_bplmun_lbl 12126 `"Vall d´Uixó (la)"', add
label define es01a_bplmun_lbl 12135 `"Villarreal/Vila-real"', add
label define es01a_bplmun_lbl 12138 `"Vinaròs"', add
label define es01a_bplmun_lbl 12991 `"Castellón/Castelló: 0 to 2000 population"', add
label define es01a_bplmun_lbl 12992 `"Castellón/Castelló: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 12993 `"Castellón/Castelló: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 12994 `"Castellón/Castelló: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 13005 `"Alcázar de San Juan"', add
label define es01a_bplmun_lbl 13034 `"Ciudad Real"', add
label define es01a_bplmun_lbl 13071 `"Puertollano"', add
label define es01a_bplmun_lbl 13082 `"Tomelloso"', add
label define es01a_bplmun_lbl 13087 `"Valdepeñas"', add
label define es01a_bplmun_lbl 13991 `"Ciudad Real: 0 to 2000 population"', add
label define es01a_bplmun_lbl 13992 `"Ciudad Real: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 13993 `"Ciudad Real: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 13994 `"Ciudad Real: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 14013 `"Cabra"', add
label define es01a_bplmun_lbl 14021 `"Córdoba"', add
label define es01a_bplmun_lbl 14038 `"Lucena"', add
label define es01a_bplmun_lbl 14042 `"Montilla"', add
label define es01a_bplmun_lbl 14055 `"Priego de Córdoba"', add
label define es01a_bplmun_lbl 14056 `"Puente Genil"', add
label define es01a_bplmun_lbl 14991 `"Córdoba: 0 to 2000 population"', add
label define es01a_bplmun_lbl 14992 `"Córdoba: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 14993 `"Córdoba: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 14994 `"Córdoba: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 15005 `"Arteixo"', add
label define es01a_bplmun_lbl 15019 `"Carballo"', add
label define es01a_bplmun_lbl 15030 `"Coruña (A)"', add
label define es01a_bplmun_lbl 15031 `"Culleredo"', add
label define es01a_bplmun_lbl 15036 `"Ferrol"', add
label define es01a_bplmun_lbl 15054 `"Narón"', add
label define es01a_bplmun_lbl 15058 `"Oleiros"', add
label define es01a_bplmun_lbl 15073 `"Ribeira"', add
label define es01a_bplmun_lbl 15078 `"Santiago de Compostela"', add
label define es01a_bplmun_lbl 15991 `"Coruña (A): 0 to 2000 population"', add
label define es01a_bplmun_lbl 15992 `"Coruña (A): 2001 to 5000 population"', add
label define es01a_bplmun_lbl 15993 `"Coruña (A): 5001 to 10000 population"', add
label define es01a_bplmun_lbl 15994 `"Coruña (A): 10001 to 20000 population"', add
label define es01a_bplmun_lbl 16078 `"Cuenca"', add
label define es01a_bplmun_lbl 16991 `"Cuenca: 0 to 2000 population"', add
label define es01a_bplmun_lbl 16992 `"Cuenca: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 16993 `"Cuenca: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 16994 `"Cuenca: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 17023 `"Blanes"', add
label define es01a_bplmun_lbl 17066 `"Figueres"', add
label define es01a_bplmun_lbl 17079 `"Girona"', add
label define es01a_bplmun_lbl 17095 `"Lloret de Mar"', add
label define es01a_bplmun_lbl 17114 `"Olot"', add
label define es01a_bplmun_lbl 17155 `"Salt"', add
label define es01a_bplmun_lbl 17991 `"Girona: 0 to 2000 population"', add
label define es01a_bplmun_lbl 17992 `"Girona: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 17993 `"Girona: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 17994 `"Girona: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 18017 `"Almuñécar"', add
label define es01a_bplmun_lbl 18023 `"Baza"', add
label define es01a_bplmun_lbl 18087 `"Granada"', add
label define es01a_bplmun_lbl 18122 `"Loja"', add
label define es01a_bplmun_lbl 18140 `"Motril"', add
label define es01a_bplmun_lbl 18991 `"Granada: 0 to 2000 population"', add
label define es01a_bplmun_lbl 18992 `"Granada: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 18993 `"Granada: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 18994 `"Granada: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 19046 `"Azuqueca de Henares"', add
label define es01a_bplmun_lbl 19130 `"Guadalajara"', add
label define es01a_bplmun_lbl 19991 `"Guadalajara: 0 to 2000 population"', add
label define es01a_bplmun_lbl 19992 `"Guadalajara: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 20030 `"Eibar"', add
label define es01a_bplmun_lbl 20045 `"Irun"', add
label define es01a_bplmun_lbl 20055 `"Arrasate o Mondragón"', add
label define es01a_bplmun_lbl 20067 `"Errenteria"', add
label define es01a_bplmun_lbl 20069 `"Donostia-San Sebastián"', add
label define es01a_bplmun_lbl 20079 `"Zarautz"', add
label define es01a_bplmun_lbl 20991 `"Guipúzcoa: 0 to 2000 population"', add
label define es01a_bplmun_lbl 20992 `"Guipúzcoa: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 20993 `"Guipúzcoa: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 20994 `"Guipúzcoa: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 21041 `"Huelva"', add
label define es01a_bplmun_lbl 21991 `"Huelva: 0 to 2000 population"', add
label define es01a_bplmun_lbl 21992 `"Huelva: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 21993 `"Huelva: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 21994 `"Huelva: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 22125 `"Huesca"', add
label define es01a_bplmun_lbl 22991 `"Huesca: 0 to 2000 population"', add
label define es01a_bplmun_lbl 22992 `"Huesca: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 22993 `"Huesca: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 22994 `"Huesca: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 23002 `"Alcalá la Real"', add
label define es01a_bplmun_lbl 23005 `"Andújar"', add
label define es01a_bplmun_lbl 23050 `"Jaén"', add
label define es01a_bplmun_lbl 23055 `"Linares"', add
label define es01a_bplmun_lbl 23060 `"Martos"', add
label define es01a_bplmun_lbl 23092 `"Úbeda"', add
label define es01a_bplmun_lbl 23991 `"Jaén: 0 to 2000 population"', add
label define es01a_bplmun_lbl 23992 `"Jaén: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 23993 `"Jaén: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 23994 `"Jaén: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 24089 `"León"', add
label define es01a_bplmun_lbl 24115 `"Ponferrada"', add
label define es01a_bplmun_lbl 24142 `"San Andrés del Rabanedo"', add
label define es01a_bplmun_lbl 24991 `"León: 0 to 2000 population"', add
label define es01a_bplmun_lbl 24992 `"León: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 24993 `"León: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 24994 `"León: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 25120 `"Lleida"', add
label define es01a_bplmun_lbl 25991 `"Lleida: 0 to 2000 population"', add
label define es01a_bplmun_lbl 25992 `"Lleida: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 25993 `"Lleida: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 25994 `"Lleida: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 26036 `"Calahorra"', add
label define es01a_bplmun_lbl 26089 `"Logroño"', add
label define es01a_bplmun_lbl 26991 `"Rioja (La): 0 to 2000 population"', add
label define es01a_bplmun_lbl 26992 `"Rioja (La): 2001 to 5000 population"', add
label define es01a_bplmun_lbl 26993 `"Rioja (La): 5001 to 10000 population"', add
label define es01a_bplmun_lbl 26994 `"Rioja (La): 10001 to 20000 population"', add
label define es01a_bplmun_lbl 27028 `"Lugo"', add
label define es01a_bplmun_lbl 27991 `"Lugo: 0 to 2000 population"', add
label define es01a_bplmun_lbl 27992 `"Lugo: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 27993 `"Lugo: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 27994 `"Lugo: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 28005 `"Alcalá de Henares"', add
label define es01a_bplmun_lbl 28006 `"Alcobendas"', add
label define es01a_bplmun_lbl 28007 `"Alcorcón"', add
label define es01a_bplmun_lbl 28013 `"Aranjuez"', add
label define es01a_bplmun_lbl 28014 `"Arganda del Rey"', add
label define es01a_bplmun_lbl 28022 `"Boadilla del Monte"', add
label define es01a_bplmun_lbl 28045 `"Colmenar Viejo"', add
label define es01a_bplmun_lbl 28047 `"Collado Villalba"', add
label define es01a_bplmun_lbl 28049 `"Coslada"', add
label define es01a_bplmun_lbl 28058 `"Fuenlabrada"', add
label define es01a_bplmun_lbl 28061 `"Galapagar"', add
label define es01a_bplmun_lbl 28065 `"Getafe"', add
label define es01a_bplmun_lbl 28074 `"Leganés"', add
label define es01a_bplmun_lbl 28079 `"Madrid"', add
label define es01a_bplmun_lbl 28080 `"Majadahonda"', add
label define es01a_bplmun_lbl 28092 `"Móstoles"', add
label define es01a_bplmun_lbl 28106 `"Parla"', add
label define es01a_bplmun_lbl 28113 `"Pinto"', add
label define es01a_bplmun_lbl 28115 `"Pozuelo de Alarcón"', add
label define es01a_bplmun_lbl 28123 `"Rivas-Vaciamadrid"', add
label define es01a_bplmun_lbl 28127 `"Rozas de Madrid (Las)"', add
label define es01a_bplmun_lbl 28130 `"San Fernando de Henares"', add
label define es01a_bplmun_lbl 28134 `"San Sebastián de los Reyes"', add
label define es01a_bplmun_lbl 28148 `"Torrejón de Ardoz"', add
label define es01a_bplmun_lbl 28161 `"Valdemoro"', add
label define es01a_bplmun_lbl 28181 `"Villaviciosa de Odón"', add
label define es01a_bplmun_lbl 28903 `"Tres Cantos"', add
label define es01a_bplmun_lbl 28991 `"Madrid: 0 to 2000 population"', add
label define es01a_bplmun_lbl 28992 `"Madrid: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 28993 `"Madrid: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 28994 `"Madrid: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 29007 `"Alhaurín de la Torre"', add
label define es01a_bplmun_lbl 29015 `"Antequera"', add
label define es01a_bplmun_lbl 29025 `"Benalmádena"', add
label define es01a_bplmun_lbl 29051 `"Estepona"', add
label define es01a_bplmun_lbl 29054 `"Fuengirola"', add
label define es01a_bplmun_lbl 29067 `"Málaga"', add
label define es01a_bplmun_lbl 29069 `"Marbella"', add
label define es01a_bplmun_lbl 29070 `"Mijas"', add
label define es01a_bplmun_lbl 29082 `"Rincón de la Victoria"', add
label define es01a_bplmun_lbl 29084 `"Ronda"', add
label define es01a_bplmun_lbl 29094 `"Vélez-Málaga"', add
label define es01a_bplmun_lbl 29901 `"Torremolinos"', add
label define es01a_bplmun_lbl 29991 `"Málaga: 0 to 2000 population"', add
label define es01a_bplmun_lbl 29992 `"Málaga: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 29993 `"Málaga: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 29994 `"Málaga: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 30003 `"Águilas"', add
label define es01a_bplmun_lbl 30005 `"Alcantarilla"', add
label define es01a_bplmun_lbl 30015 `"Caravaca de la Cruz"', add
label define es01a_bplmun_lbl 30016 `"Cartagena"', add
label define es01a_bplmun_lbl 30019 `"Cieza"', add
label define es01a_bplmun_lbl 30022 `"Jumilla"', add
label define es01a_bplmun_lbl 30024 `"Lorca"', add
label define es01a_bplmun_lbl 30026 `"Mazarrón"', add
label define es01a_bplmun_lbl 30027 `"Molina de Segura"', add
label define es01a_bplmun_lbl 30030 `"Murcia"', add
label define es01a_bplmun_lbl 30035 `"San Javier"', add
label define es01a_bplmun_lbl 30037 `"Torre-Pacheco"', add
label define es01a_bplmun_lbl 30039 `"Totana"', add
label define es01a_bplmun_lbl 30043 `"Yecla"', add
label define es01a_bplmun_lbl 30991 `"Murcia: 0 to 2000 population"', add
label define es01a_bplmun_lbl 30992 `"Murcia: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 30993 `"Murcia: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 30994 `"Murcia: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 31201 `"Pamplona/Iruña"', add
label define es01a_bplmun_lbl 31232 `"Tudela"', add
label define es01a_bplmun_lbl 31901 `"Barañain"', add
label define es01a_bplmun_lbl 31991 `"Navarra: 0 to 2000 population"', add
label define es01a_bplmun_lbl 31992 `"Navarra: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 31993 `"Navarra: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 31994 `"Navarra: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 32054 `"Ourense"', add
label define es01a_bplmun_lbl 32991 `"Ourense: 0 to 2000 population"', add
label define es01a_bplmun_lbl 32992 `"Ourense: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 32993 `"Ourense: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 32994 `"Ourense: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 33004 `"Avilés"', add
label define es01a_bplmun_lbl 33016 `"Castrillón"', add
label define es01a_bplmun_lbl 33024 `"Gijón"', add
label define es01a_bplmun_lbl 33031 `"Langreo"', add
label define es01a_bplmun_lbl 33037 `"Mieres"', add
label define es01a_bplmun_lbl 33044 `"Oviedo"', add
label define es01a_bplmun_lbl 33060 `"San Martín del Rey Aurelio"', add
label define es01a_bplmun_lbl 33066 `"Siero"', add
label define es01a_bplmun_lbl 33991 `"Asturias: 0 to 2000 population"', add
label define es01a_bplmun_lbl 33992 `"Asturias: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 33993 `"Asturias: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 33994 `"Asturias: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 34120 `"Palencia"', add
label define es01a_bplmun_lbl 34991 `"Palencia: 0 to 2000 population"', add
label define es01a_bplmun_lbl 34992 `"Palencia: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 34993 `"Palencia: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 35002 `"Agüimes"', add
label define es01a_bplmun_lbl 35004 `"Arrecife"', add
label define es01a_bplmun_lbl 35006 `"Arucas"', add
label define es01a_bplmun_lbl 35009 `"Gáldar"', add
label define es01a_bplmun_lbl 35011 `"Ingenio"', add
label define es01a_bplmun_lbl 35016 `"Palmas de Gran Canaria (Las)"', add
label define es01a_bplmun_lbl 35017 `"Puerto del Rosario"', add
label define es01a_bplmun_lbl 35019 `"San Bartolomé de Tirajana"', add
label define es01a_bplmun_lbl 35022 `"Santa Lucía de Tirajana"', add
label define es01a_bplmun_lbl 35026 `"Telde"', add
label define es01a_bplmun_lbl 35991 `"Palmas (Las): 0 to 2000 population"', add
label define es01a_bplmun_lbl 35992 `"Palmas (Las): 2001 to 5000 population"', add
label define es01a_bplmun_lbl 35993 `"Palmas (Las): 5001 to 10000 population"', add
label define es01a_bplmun_lbl 35994 `"Palmas (Las): 10001 to 20000 population"', add
label define es01a_bplmun_lbl 36008 `"Cangas"', add
label define es01a_bplmun_lbl 36017 `"Estrada (A)"', add
label define es01a_bplmun_lbl 36026 `"Marín"', add
label define es01a_bplmun_lbl 36038 `"Pontevedra"', add
label define es01a_bplmun_lbl 36045 `"Redondela"', add
label define es01a_bplmun_lbl 36057 `"Vigo"', add
label define es01a_bplmun_lbl 36060 `"Vilagarcía de Arousa"', add
label define es01a_bplmun_lbl 36991 `"Pontevedra: 0 to 2000 population"', add
label define es01a_bplmun_lbl 36992 `"Pontevedra: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 36993 `"Pontevedra: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 36994 `"Pontevedra: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 37274 `"Salamanca"', add
label define es01a_bplmun_lbl 37991 `"Salamanca: 0 to 2000 population"', add
label define es01a_bplmun_lbl 37992 `"Salamanca: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 37993 `"Salamanca: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 37994 `"Salamanca: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 38001 `"Adeje"', add
label define es01a_bplmun_lbl 38006 `"Arona"', add
label define es01a_bplmun_lbl 38017 `"Granadilla de Abona"', add
label define es01a_bplmun_lbl 38022 `"Icod de los Vinos"', add
label define es01a_bplmun_lbl 38023 `"San Cristóbal de La Laguna"', add
label define es01a_bplmun_lbl 38026 `"Orotava (La)"', add
label define es01a_bplmun_lbl 38028 `"Puerto de la Cruz"', add
label define es01a_bplmun_lbl 38031 `"Realejos (Los)"', add
label define es01a_bplmun_lbl 38038 `"Santa Cruz de Tenerife"', add
label define es01a_bplmun_lbl 38043 `"Tacoronte"', add
label define es01a_bplmun_lbl 38991 `"Santa Cruz de Tenerife: 0 to 2000 population"', add
label define es01a_bplmun_lbl 38992 `"Santa Cruz de Tenerife: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 38993 `"Santa Cruz de Tenerife: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 38994 `"Santa Cruz de Tenerife: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 39016 `"Camargo"', add
label define es01a_bplmun_lbl 39020 `"Castro-Urdiales"', add
label define es01a_bplmun_lbl 39075 `"Santander"', add
label define es01a_bplmun_lbl 39087 `"Torrelavega"', add
label define es01a_bplmun_lbl 39991 `"Cantabria: 0 to 2000 population"', add
label define es01a_bplmun_lbl 39992 `"Cantabria: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 39993 `"Cantabria: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 39994 `"Cantabria: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 40194 `"Segovia"', add
label define es01a_bplmun_lbl 40991 `"Segovia: 0 to 2000 population"', add
label define es01a_bplmun_lbl 40992 `"Segovia: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 40993 `"Segovia: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 41004 `"Alcalá de Guadaira"', add
label define es01a_bplmun_lbl 41021 `"Camas"', add
label define es01a_bplmun_lbl 41024 `"Carmona"', add
label define es01a_bplmun_lbl 41034 `"Coria del Río"', add
label define es01a_bplmun_lbl 41038 `"Dos Hermanas"', add
label define es01a_bplmun_lbl 41039 `"Écija"', add
label define es01a_bplmun_lbl 41053 `"Lebrija"', add
label define es01a_bplmun_lbl 41059 `"Mairena del Aljarafe"', add
label define es01a_bplmun_lbl 41065 `"Morón de la Frontera"', add
label define es01a_bplmun_lbl 41069 `"Palacios y Villafranca (Los)"', add
label define es01a_bplmun_lbl 41081 `"Rinconada (La)"', add
label define es01a_bplmun_lbl 41091 `"Sevilla"', add
label define es01a_bplmun_lbl 41095 `"Utrera"', add
label define es01a_bplmun_lbl 41991 `"Sevilla: 0 to 2000 population"', add
label define es01a_bplmun_lbl 41992 `"Sevilla: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 41993 `"Sevilla: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 41994 `"Sevilla: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 42173 `"Soria"', add
label define es01a_bplmun_lbl 42991 `"Soria: 0 to 2000 population"', add
label define es01a_bplmun_lbl 42992 `"Soria: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 42993 `"Soria: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 43038 `"Cambrils"', add
label define es01a_bplmun_lbl 43123 `"Reus"', add
label define es01a_bplmun_lbl 43148 `"Tarragona"', add
label define es01a_bplmun_lbl 43155 `"Tortosa"', add
label define es01a_bplmun_lbl 43161 `"Valls"', add
label define es01a_bplmun_lbl 43163 `"Vendrell (El)"', add
label define es01a_bplmun_lbl 43991 `"Tarragona: 0 to 2000 population"', add
label define es01a_bplmun_lbl 43992 `"Tarragona: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 43993 `"Tarragona: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 43994 `"Tarragona: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 44216 `"Teruel"', add
label define es01a_bplmun_lbl 44991 `"Teruel: 0 to 2000 population"', add
label define es01a_bplmun_lbl 44992 `"Teruel: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 44993 `"Teruel: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 44994 `"Teruel: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 45165 `"Talavera de la Reina"', add
label define es01a_bplmun_lbl 45168 `"Toledo"', add
label define es01a_bplmun_lbl 45991 `"Toledo: 0 to 2000 population"', add
label define es01a_bplmun_lbl 45992 `"Toledo: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 45993 `"Toledo: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 45994 `"Toledo: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 46005 `"Alaquàs"', add
label define es01a_bplmun_lbl 46017 `"Alzira"', add
label define es01a_bplmun_lbl 46021 `"Aldaia"', add
label define es01a_bplmun_lbl 46029 `"Algemesí"', add
label define es01a_bplmun_lbl 46078 `"Burjassot"', add
label define es01a_bplmun_lbl 46094 `"Catarroja"', add
label define es01a_bplmun_lbl 46102 `"Quart de Poblet"', add
label define es01a_bplmun_lbl 46105 `"Cullera"', add
label define es01a_bplmun_lbl 46110 `"Xirivella"', add
label define es01a_bplmun_lbl 46131 `"Gandia"', add
label define es01a_bplmun_lbl 46145 `"Xàtiva"', add
label define es01a_bplmun_lbl 46159 `"Manises"', add
label define es01a_bplmun_lbl 46169 `"Mislata"', add
label define es01a_bplmun_lbl 46181 `"Oliva"', add
label define es01a_bplmun_lbl 46184 `"Ontinyent"', add
label define es01a_bplmun_lbl 46190 `"Paterna"', add
label define es01a_bplmun_lbl 46220 `"Sagunto/Sagunt"', add
label define es01a_bplmun_lbl 46235 `"Sueca"', add
label define es01a_bplmun_lbl 46244 `"Torrent"', add
label define es01a_bplmun_lbl 46250 `"Valencia"', add
label define es01a_bplmun_lbl 46991 `"Valencia/València: 0 to 2000 population"', add
label define es01a_bplmun_lbl 46992 `"Valencia/València: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 46993 `"Valencia/València: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 46994 `"Valencia/València: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 47186 `"Valladolid"', add
label define es01a_bplmun_lbl 47991 `"Valladolid: 0 to 2000 population"', add
label define es01a_bplmun_lbl 47992 `"Valladolid: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 47993 `"Valladolid: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 47994 `"Valladolid: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 48013 `"Barakaldo"', add
label define es01a_bplmun_lbl 48015 `"Basauri"', add
label define es01a_bplmun_lbl 48020 `"Bilbao"', add
label define es01a_bplmun_lbl 48027 `"Durango"', add
label define es01a_bplmun_lbl 48036 `"Galdakao"', add
label define es01a_bplmun_lbl 48044 `"Getxo"', add
label define es01a_bplmun_lbl 48054 `"Leioa"', add
label define es01a_bplmun_lbl 48078 `"Portugalete"', add
label define es01a_bplmun_lbl 48082 `"Santurtzi"', add
label define es01a_bplmun_lbl 48084 `"Sestao"', add
label define es01a_bplmun_lbl 48902 `"Erandio"', add
label define es01a_bplmun_lbl 48991 `"Vizcaya: 0 to 2000 population"', add
label define es01a_bplmun_lbl 48992 `"Vizcaya: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 48993 `"Vizcaya: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 48994 `"Vizcaya: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 49275 `"Zamora"', add
label define es01a_bplmun_lbl 49991 `"Zamora: 0 to 2000 population"', add
label define es01a_bplmun_lbl 49993 `"Zamora: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 49994 `"Zamora: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 50297 `"Zaragoza"', add
label define es01a_bplmun_lbl 50991 `"Zaragoza: 0 to 2000 population"', add
label define es01a_bplmun_lbl 50992 `"Zaragoza: 2001 to 5000 population"', add
label define es01a_bplmun_lbl 50993 `"Zaragoza: 5001 to 10000 population"', add
label define es01a_bplmun_lbl 50994 `"Zaragoza: 10001 to 20000 population"', add
label define es01a_bplmun_lbl 51001 `"Ceuta"', add
label define es01a_bplmun_lbl 52001 `"Melilla"', add
label define es01a_bplmun_lbl 66101 `"Albania"', add
label define es01a_bplmun_lbl 66102 `"Austria"', add
label define es01a_bplmun_lbl 66103 `"Belgium"', add
label define es01a_bplmun_lbl 66104 `"Bulgaria"', add
label define es01a_bplmun_lbl 66106 `"Cyprus"', add
label define es01a_bplmun_lbl 66107 `"Denmark"', add
label define es01a_bplmun_lbl 66109 `"Finland"', add
label define es01a_bplmun_lbl 66110 `"France"', add
label define es01a_bplmun_lbl 66111 `"Greece"', add
label define es01a_bplmun_lbl 66112 `"Hungary"', add
label define es01a_bplmun_lbl 66113 `"Ireland"', add
label define es01a_bplmun_lbl 66114 `"Iceland"', add
label define es01a_bplmun_lbl 66115 `"Italy"', add
label define es01a_bplmun_lbl 66116 `"Liechtenstein"', add
label define es01a_bplmun_lbl 66117 `"Luxemburg"', add
label define es01a_bplmun_lbl 66118 `"Malta"', add
label define es01a_bplmun_lbl 66119 `"Monaco"', add
label define es01a_bplmun_lbl 66120 `"Norway"', add
label define es01a_bplmun_lbl 66121 `"Low Countries"', add
label define es01a_bplmun_lbl 66122 `"Poland"', add
label define es01a_bplmun_lbl 66123 `"Portugal"', add
label define es01a_bplmun_lbl 66124 `"Andorra"', add
label define es01a_bplmun_lbl 66125 `"United Kingdom"', add
label define es01a_bplmun_lbl 66126 `"Germany"', add
label define es01a_bplmun_lbl 66128 `"Rumania"', add
label define es01a_bplmun_lbl 66130 `"Vatican City"', add
label define es01a_bplmun_lbl 66131 `"Sweden"', add
label define es01a_bplmun_lbl 66132 `"Switzerland"', add
label define es01a_bplmun_lbl 66135 `"Ukraine"', add
label define es01a_bplmun_lbl 66136 `"Letonia"', add
label define es01a_bplmun_lbl 66137 `"Moldova"', add
label define es01a_bplmun_lbl 66138 `"Bielorrusia"', add
label define es01a_bplmun_lbl 66139 `"Georgia"', add
label define es01a_bplmun_lbl 66141 `"Estonia"', add
label define es01a_bplmun_lbl 66142 `"Lithuania"', add
label define es01a_bplmun_lbl 66143 `"Chek Republic"', add
label define es01a_bplmun_lbl 66144 `"Slovakia"', add
label define es01a_bplmun_lbl 66145 `"Bosnia-Herzegovina"', add
label define es01a_bplmun_lbl 66146 `"Croacia"', add
label define es01a_bplmun_lbl 66147 `"Slovenia"', add
label define es01a_bplmun_lbl 66148 `"Armenia"', add
label define es01a_bplmun_lbl 66154 `"Russia"', add
label define es01a_bplmun_lbl 66155 `"Yugoslavia"', add
label define es01a_bplmun_lbl 66201 `"Burkina Fasso"', add
label define es01a_bplmun_lbl 66202 `"Angola"', add
label define es01a_bplmun_lbl 66203 `"Argelia"', add
label define es01a_bplmun_lbl 66204 `"Benin"', add
label define es01a_bplmun_lbl 66205 `"Botswana"', add
label define es01a_bplmun_lbl 66206 `"Burundi"', add
label define es01a_bplmun_lbl 66207 `"Cabo Verde"', add
label define es01a_bplmun_lbl 66208 `"Camerun"', add
label define es01a_bplmun_lbl 66210 `"Congo"', add
label define es01a_bplmun_lbl 66211 `"Ivory Coast"', add
label define es01a_bplmun_lbl 66212 `"Djibouti"', add
label define es01a_bplmun_lbl 66213 `"Egypt"', add
label define es01a_bplmun_lbl 66214 `"Ethiopia"', add
label define es01a_bplmun_lbl 66215 `"Gabon"', add
label define es01a_bplmun_lbl 66216 `"Gambia"', add
label define es01a_bplmun_lbl 66217 `"Ghana"', add
label define es01a_bplmun_lbl 66218 `"Guinea"', add
label define es01a_bplmun_lbl 66219 `"Guinea Bissau"', add
label define es01a_bplmun_lbl 66220 `"Guinea Equatorial"', add
label define es01a_bplmun_lbl 66221 `"Kenya"', add
label define es01a_bplmun_lbl 66222 `"Lesotho"', add
label define es01a_bplmun_lbl 66223 `"Liberia"', add
label define es01a_bplmun_lbl 66224 `"Libya"', add
label define es01a_bplmun_lbl 66225 `"Madagascar"', add
label define es01a_bplmun_lbl 66226 `"Malawi"', add
label define es01a_bplmun_lbl 66227 `"Mali"', add
label define es01a_bplmun_lbl 66228 `"Morocco"', add
label define es01a_bplmun_lbl 66229 `"Mauricio"', add
label define es01a_bplmun_lbl 66230 `"Mauritania"', add
label define es01a_bplmun_lbl 66231 `"Mozambique"', add
label define es01a_bplmun_lbl 66232 `"Namibia"', add
label define es01a_bplmun_lbl 66233 `"Niger"', add
label define es01a_bplmun_lbl 66234 `"Nigeria"', add
label define es01a_bplmun_lbl 66235 `"Republic of Central Africa"', add
label define es01a_bplmun_lbl 66236 `"Sudafrica"', add
label define es01a_bplmun_lbl 66237 `"Ruanda"', add
label define es01a_bplmun_lbl 66239 `"Senegal"', add
label define es01a_bplmun_lbl 66241 `"Sierra Leona"', add
label define es01a_bplmun_lbl 66242 `"Somalia"', add
label define es01a_bplmun_lbl 66243 `"Sudan"', add
label define es01a_bplmun_lbl 66245 `"Tanzania"', add
label define es01a_bplmun_lbl 66247 `"Togo"', add
label define es01a_bplmun_lbl 66248 `"Tunez"', add
label define es01a_bplmun_lbl 66249 `"Uganda"', add
label define es01a_bplmun_lbl 66250 `"Zaire"', add
label define es01a_bplmun_lbl 66251 `"Zambia"', add
label define es01a_bplmun_lbl 66252 `"Zimbabwe"', add
label define es01a_bplmun_lbl 66253 `"Eritrea"', add
label define es01a_bplmun_lbl 66301 `"Canada"', add
label define es01a_bplmun_lbl 66302 `"United States of America"', add
label define es01a_bplmun_lbl 66303 `"Mexico"', add
label define es01a_bplmun_lbl 66311 `"Bahamas"', add
label define es01a_bplmun_lbl 66312 `"Barbados"', add
label define es01a_bplmun_lbl 66314 `"Costa Rica"', add
label define es01a_bplmun_lbl 66315 `"Cuba"', add
label define es01a_bplmun_lbl 66316 `"Dominica"', add
label define es01a_bplmun_lbl 66317 `"El Salvador"', add
label define es01a_bplmun_lbl 66319 `"Guatemala"', add
label define es01a_bplmun_lbl 66320 `"Haiti"', add
label define es01a_bplmun_lbl 66321 `"Honduras"', add
label define es01a_bplmun_lbl 66322 `"Jamaica"', add
label define es01a_bplmun_lbl 66323 `"Nicaragua"', add
label define es01a_bplmun_lbl 66324 `"Panama"', add
label define es01a_bplmun_lbl 66326 `"Dominican Republic"', add
label define es01a_bplmun_lbl 66327 `"Trinidad and Tobago"', add
label define es01a_bplmun_lbl 66328 `"Santa Lucia"', add
label define es01a_bplmun_lbl 66340 `"Argentina"', add
label define es01a_bplmun_lbl 66341 `"Bolivia"', add
label define es01a_bplmun_lbl 66342 `"Brazil"', add
label define es01a_bplmun_lbl 66343 `"Colombia"', add
label define es01a_bplmun_lbl 66344 `"Chile"', add
label define es01a_bplmun_lbl 66345 `"Ecuador"', add
label define es01a_bplmun_lbl 66346 `"Guyana"', add
label define es01a_bplmun_lbl 66347 `"Paraguay"', add
label define es01a_bplmun_lbl 66348 `"Peru"', add
label define es01a_bplmun_lbl 66349 `"Surinam"', add
label define es01a_bplmun_lbl 66350 `"Uruguay"', add
label define es01a_bplmun_lbl 66351 `"Venezuela"', add
label define es01a_bplmun_lbl 66401 `"Afghanistan"', add
label define es01a_bplmun_lbl 66402 `"Saudi Arabia"', add
label define es01a_bplmun_lbl 66403 `"Bahrein"', add
label define es01a_bplmun_lbl 66404 `"Bangladesh"', add
label define es01a_bplmun_lbl 66405 `"Birmania"', add
label define es01a_bplmun_lbl 66407 `"China"', add
label define es01a_bplmun_lbl 66408 `"United Arabian Emirates"', add
label define es01a_bplmun_lbl 66409 `"Philippines"', add
label define es01a_bplmun_lbl 66410 `"India"', add
label define es01a_bplmun_lbl 66411 `"Indonesia"', add
label define es01a_bplmun_lbl 66412 `"Irak"', add
label define es01a_bplmun_lbl 66413 `"Iran"', add
label define es01a_bplmun_lbl 66414 `"Israel"', add
label define es01a_bplmun_lbl 66415 `"Japan"', add
label define es01a_bplmun_lbl 66416 `"Jordanian"', add
label define es01a_bplmun_lbl 66418 `"Kuwait"', add
label define es01a_bplmun_lbl 66419 `"Laos"', add
label define es01a_bplmun_lbl 66420 `"Lebanon"', add
label define es01a_bplmun_lbl 66421 `"Malaysia"', add
label define es01a_bplmun_lbl 66423 `"Mongolia"', add
label define es01a_bplmun_lbl 66424 `"Nepal"', add
label define es01a_bplmun_lbl 66425 `"Oman"', add
label define es01a_bplmun_lbl 66426 `"Pakistan"', add
label define es01a_bplmun_lbl 66430 `"Republic of Korea"', add
label define es01a_bplmun_lbl 66432 `"Singapore"', add
label define es01a_bplmun_lbl 66433 `"Syria"', add
label define es01a_bplmun_lbl 66434 `"Sri Lanka"', add
label define es01a_bplmun_lbl 66435 `"Thailand"', add
label define es01a_bplmun_lbl 66436 `"Turkey"', add
label define es01a_bplmun_lbl 66437 `"Vietnam"', add
label define es01a_bplmun_lbl 66441 `"Yemen"', add
label define es01a_bplmun_lbl 66442 `"Azerbaiyan"', add
label define es01a_bplmun_lbl 66443 `"Kazajstan"', add
label define es01a_bplmun_lbl 66444 `"Kirgyistan"', add
label define es01a_bplmun_lbl 66446 `"Turkmenistan"', add
label define es01a_bplmun_lbl 66447 `"Uzbekistan"', add
label define es01a_bplmun_lbl 66501 `"Australia"', add
label define es01a_bplmun_lbl 66504 `"New Zealand"', add
label define es01a_bplmun_lbl 66509 `"Vanuatu"', add
label define es01a_bplmun_lbl 66511 `"Micronesia"', add
label define es01a_bplmun_lbl 66512 `"Tuvalu"', add
label define es01a_bplmun_lbl 66600 `"Palestine"', add
label values es01a_bplmun es01a_bplmun_lbl

label define es01a_marst_lbl 1 `"Single"'
label define es01a_marst_lbl 2 `"Married"', add
label define es01a_marst_lbl 3 `"Widowed"', add
label define es01a_marst_lbl 4 `"Separated"', add
label define es01a_marst_lbl 5 `"Divorced"', add
label define es01a_marst_lbl 9 `"NIU (not in universe)"', add
label values es01a_marst es01a_marst_lbl

label define es01a_relate_lbl 10 `"Person of reference"'
label define es01a_relate_lbl 21 `"Spouse"', add
label define es01a_relate_lbl 22 `"Partner"', add
label define es01a_relate_lbl 31 `"Son/daughter of the person of reference or spouse/partner of person of reference"', add
label define es01a_relate_lbl 32 `"Son/daughter-in-law"', add
label define es01a_relate_lbl 41 `"Brother/sister"', add
label define es01a_relate_lbl 42 `"Brother/sister of the spouse/partner"', add
label define es01a_relate_lbl 43 `"Spouse/partner of the brother/sister"', add
label define es01a_relate_lbl 51 `"Father/mother"', add
label define es01a_relate_lbl 52 `"Father/mother-in-law"', add
label define es01a_relate_lbl 61 `"Other relative with the same last name"', add
label define es01a_relate_lbl 62 `"Other relative without the same last name"', add
label define es01a_relate_lbl 70 `"Not related"', add
label define es01a_relate_lbl 99 `"Person who do not reside in the household"', add
label values es01a_relate es01a_relate_lbl

label define es01a_edlev_lbl 01 `"Illiterate"'
label define es01a_edlev_lbl 02 `"Literate but no education"', add
label define es01a_edlev_lbl 03 `"Primary education"', add
label define es01a_edlev_lbl 04 `"Secondary education, occupational secondary studies, general basic education, elementary baccalaureate studies"', add
label define es01a_edlev_lbl 05 `"Secondary education, upper-level secondary education"', add
label define es01a_edlev_lbl 06 `"Secondary education, professional formation, mid-level"', add
label define es01a_edlev_lbl 07 `"Secondary education, professional formation, upper-level"', add
label define es01a_edlev_lbl 08 `"Tertiary education, associate degree"', add
label define es01a_edlev_lbl 09 `"Tertiary education, college degree"', add
label define es01a_edlev_lbl 10 `"Tertiary education, doctoral studies"', add
label define es01a_edlev_lbl 99 `"NIU (not in universe)"', add
label values es01a_edlev es01a_edlev_lbl

label define es01a_edtype_lbl 01 `"Law"'
label define es01a_edtype_lbl 02 `"Education, child development"', add
label define es01a_edtype_lbl 03 `"Social Sciences"', add
label define es01a_edtype_lbl 04 `"Arts and Humanities"', add
label define es01a_edtype_lbl 05 `"Informatics"', add
label define es01a_edtype_lbl 06 `"Engineering"', add
label define es01a_edtype_lbl 07 `"Technical and industrial training"', add
label define es01a_edtype_lbl 08 `"Sciences"', add
label define es01a_edtype_lbl 09 `"Architecture or construction"', add
label define es01a_edtype_lbl 10 `"Agriculture, cattle ranching, fishing, veterinary studies"', add
label define es01a_edtype_lbl 11 `"Healthcare, Social Services"', add
label define es01a_edtype_lbl 12 `"Other services"', add
label define es01a_edtype_lbl 99 `"NIU (not in universe)"', add
label values es01a_edtype es01a_edtype_lbl

label define es01a_yrspain_lbl 1900 `"1900 or before"'
label define es01a_yrspain_lbl 1901 `"1901"', add
label define es01a_yrspain_lbl 1902 `"1902"', add
label define es01a_yrspain_lbl 1903 `"1903"', add
label define es01a_yrspain_lbl 1904 `"1904"', add
label define es01a_yrspain_lbl 1905 `"1905"', add
label define es01a_yrspain_lbl 1906 `"1906"', add
label define es01a_yrspain_lbl 1907 `"1907"', add
label define es01a_yrspain_lbl 1908 `"1908"', add
label define es01a_yrspain_lbl 1909 `"1909"', add
label define es01a_yrspain_lbl 1910 `"1910"', add
label define es01a_yrspain_lbl 1911 `"1911"', add
label define es01a_yrspain_lbl 1912 `"1912"', add
label define es01a_yrspain_lbl 1913 `"1913"', add
label define es01a_yrspain_lbl 1914 `"1914"', add
label define es01a_yrspain_lbl 1915 `"1915"', add
label define es01a_yrspain_lbl 1916 `"1916"', add
label define es01a_yrspain_lbl 1917 `"1917"', add
label define es01a_yrspain_lbl 1918 `"1918"', add
label define es01a_yrspain_lbl 1919 `"1919"', add
label define es01a_yrspain_lbl 1920 `"1920"', add
label define es01a_yrspain_lbl 1921 `"1921"', add
label define es01a_yrspain_lbl 1922 `"1922"', add
label define es01a_yrspain_lbl 1923 `"1923"', add
label define es01a_yrspain_lbl 1924 `"1924"', add
label define es01a_yrspain_lbl 1925 `"1925"', add
label define es01a_yrspain_lbl 1926 `"1926"', add
label define es01a_yrspain_lbl 1927 `"1927"', add
label define es01a_yrspain_lbl 1928 `"1928"', add
label define es01a_yrspain_lbl 1929 `"1929"', add
label define es01a_yrspain_lbl 1930 `"1930"', add
label define es01a_yrspain_lbl 1931 `"1931"', add
label define es01a_yrspain_lbl 1932 `"1932"', add
label define es01a_yrspain_lbl 1933 `"1933"', add
label define es01a_yrspain_lbl 1934 `"1934"', add
label define es01a_yrspain_lbl 1935 `"1935"', add
label define es01a_yrspain_lbl 1936 `"1936"', add
label define es01a_yrspain_lbl 1937 `"1937"', add
label define es01a_yrspain_lbl 1938 `"1938"', add
label define es01a_yrspain_lbl 1939 `"1939"', add
label define es01a_yrspain_lbl 1940 `"1940"', add
label define es01a_yrspain_lbl 1941 `"1941"', add
label define es01a_yrspain_lbl 1942 `"1942"', add
label define es01a_yrspain_lbl 1943 `"1943"', add
label define es01a_yrspain_lbl 1944 `"1944"', add
label define es01a_yrspain_lbl 1945 `"1945"', add
label define es01a_yrspain_lbl 1946 `"1946"', add
label define es01a_yrspain_lbl 1947 `"1947"', add
label define es01a_yrspain_lbl 1948 `"1948"', add
label define es01a_yrspain_lbl 1949 `"1949"', add
label define es01a_yrspain_lbl 1950 `"1950"', add
label define es01a_yrspain_lbl 1951 `"1951"', add
label define es01a_yrspain_lbl 1952 `"1952"', add
label define es01a_yrspain_lbl 1953 `"1953"', add
label define es01a_yrspain_lbl 1954 `"1954"', add
label define es01a_yrspain_lbl 1955 `"1955"', add
label define es01a_yrspain_lbl 1956 `"1956"', add
label define es01a_yrspain_lbl 1957 `"1957"', add
label define es01a_yrspain_lbl 1958 `"1958"', add
label define es01a_yrspain_lbl 1959 `"1959"', add
label define es01a_yrspain_lbl 1960 `"1960"', add
label define es01a_yrspain_lbl 1961 `"1961"', add
label define es01a_yrspain_lbl 1962 `"1962"', add
label define es01a_yrspain_lbl 1963 `"1963"', add
label define es01a_yrspain_lbl 1964 `"1964"', add
label define es01a_yrspain_lbl 1965 `"1965"', add
label define es01a_yrspain_lbl 1966 `"1966"', add
label define es01a_yrspain_lbl 1967 `"1967"', add
label define es01a_yrspain_lbl 1968 `"1968"', add
label define es01a_yrspain_lbl 1969 `"1969"', add
label define es01a_yrspain_lbl 1970 `"1970"', add
label define es01a_yrspain_lbl 1971 `"1971"', add
label define es01a_yrspain_lbl 1972 `"1972"', add
label define es01a_yrspain_lbl 1973 `"1973"', add
label define es01a_yrspain_lbl 1974 `"1974"', add
label define es01a_yrspain_lbl 1975 `"1975"', add
label define es01a_yrspain_lbl 1976 `"1976"', add
label define es01a_yrspain_lbl 1977 `"1977"', add
label define es01a_yrspain_lbl 1978 `"1978"', add
label define es01a_yrspain_lbl 1979 `"1979"', add
label define es01a_yrspain_lbl 1980 `"1980"', add
label define es01a_yrspain_lbl 1981 `"1981"', add
label define es01a_yrspain_lbl 1982 `"1982"', add
label define es01a_yrspain_lbl 1983 `"1983"', add
label define es01a_yrspain_lbl 1984 `"1984"', add
label define es01a_yrspain_lbl 1985 `"1985"', add
label define es01a_yrspain_lbl 1986 `"1986"', add
label define es01a_yrspain_lbl 1987 `"1987"', add
label define es01a_yrspain_lbl 1988 `"1988"', add
label define es01a_yrspain_lbl 1989 `"1989"', add
label define es01a_yrspain_lbl 1990 `"1990"', add
label define es01a_yrspain_lbl 1991 `"1991"', add
label define es01a_yrspain_lbl 1992 `"1992"', add
label define es01a_yrspain_lbl 1993 `"1993"', add
label define es01a_yrspain_lbl 1994 `"1994"', add
label define es01a_yrspain_lbl 1995 `"1995"', add
label define es01a_yrspain_lbl 1996 `"1996"', add
label define es01a_yrspain_lbl 1997 `"1997"', add
label define es01a_yrspain_lbl 1998 `"1998"', add
label define es01a_yrspain_lbl 1999 `"1999"', add
label define es01a_yrspain_lbl 2000 `"2000"', add
label define es01a_yrspain_lbl 2001 `"2001"', add
label define es01a_yrspain_lbl 9999 `"NIU (not in universe)"', add
label values es01a_yrspain es01a_yrspain_lbl

label define es01a_yrcomm_lbl 1900 `"1900 or before"'
label define es01a_yrcomm_lbl 1901 `"1901"', add
label define es01a_yrcomm_lbl 1902 `"1902"', add
label define es01a_yrcomm_lbl 1903 `"1903"', add
label define es01a_yrcomm_lbl 1904 `"1904"', add
label define es01a_yrcomm_lbl 1905 `"1905"', add
label define es01a_yrcomm_lbl 1906 `"1906"', add
label define es01a_yrcomm_lbl 1907 `"1907"', add
label define es01a_yrcomm_lbl 1908 `"1908"', add
label define es01a_yrcomm_lbl 1909 `"1909"', add
label define es01a_yrcomm_lbl 1910 `"1910"', add
label define es01a_yrcomm_lbl 1911 `"1911"', add
label define es01a_yrcomm_lbl 1912 `"1912"', add
label define es01a_yrcomm_lbl 1913 `"1913"', add
label define es01a_yrcomm_lbl 1914 `"1914"', add
label define es01a_yrcomm_lbl 1915 `"1915"', add
label define es01a_yrcomm_lbl 1916 `"1916"', add
label define es01a_yrcomm_lbl 1917 `"1917"', add
label define es01a_yrcomm_lbl 1918 `"1918"', add
label define es01a_yrcomm_lbl 1919 `"1919"', add
label define es01a_yrcomm_lbl 1920 `"1920"', add
label define es01a_yrcomm_lbl 1921 `"1921"', add
label define es01a_yrcomm_lbl 1922 `"1922"', add
label define es01a_yrcomm_lbl 1923 `"1923"', add
label define es01a_yrcomm_lbl 1924 `"1924"', add
label define es01a_yrcomm_lbl 1925 `"1925"', add
label define es01a_yrcomm_lbl 1926 `"1926"', add
label define es01a_yrcomm_lbl 1927 `"1927"', add
label define es01a_yrcomm_lbl 1928 `"1928"', add
label define es01a_yrcomm_lbl 1929 `"1929"', add
label define es01a_yrcomm_lbl 1930 `"1930"', add
label define es01a_yrcomm_lbl 1931 `"1931"', add
label define es01a_yrcomm_lbl 1932 `"1932"', add
label define es01a_yrcomm_lbl 1933 `"1933"', add
label define es01a_yrcomm_lbl 1934 `"1934"', add
label define es01a_yrcomm_lbl 1935 `"1935"', add
label define es01a_yrcomm_lbl 1936 `"1936"', add
label define es01a_yrcomm_lbl 1937 `"1937"', add
label define es01a_yrcomm_lbl 1938 `"1938"', add
label define es01a_yrcomm_lbl 1939 `"1939"', add
label define es01a_yrcomm_lbl 1940 `"1940"', add
label define es01a_yrcomm_lbl 1941 `"1941"', add
label define es01a_yrcomm_lbl 1942 `"1942"', add
label define es01a_yrcomm_lbl 1943 `"1943"', add
label define es01a_yrcomm_lbl 1944 `"1944"', add
label define es01a_yrcomm_lbl 1945 `"1945"', add
label define es01a_yrcomm_lbl 1946 `"1946"', add
label define es01a_yrcomm_lbl 1947 `"1947"', add
label define es01a_yrcomm_lbl 1948 `"1948"', add
label define es01a_yrcomm_lbl 1949 `"1949"', add
label define es01a_yrcomm_lbl 1950 `"1950"', add
label define es01a_yrcomm_lbl 1951 `"1951"', add
label define es01a_yrcomm_lbl 1952 `"1952"', add
label define es01a_yrcomm_lbl 1953 `"1953"', add
label define es01a_yrcomm_lbl 1954 `"1954"', add
label define es01a_yrcomm_lbl 1955 `"1955"', add
label define es01a_yrcomm_lbl 1956 `"1956"', add
label define es01a_yrcomm_lbl 1957 `"1957"', add
label define es01a_yrcomm_lbl 1958 `"1958"', add
label define es01a_yrcomm_lbl 1959 `"1959"', add
label define es01a_yrcomm_lbl 1960 `"1960"', add
label define es01a_yrcomm_lbl 1961 `"1961"', add
label define es01a_yrcomm_lbl 1962 `"1962"', add
label define es01a_yrcomm_lbl 1963 `"1963"', add
label define es01a_yrcomm_lbl 1964 `"1964"', add
label define es01a_yrcomm_lbl 1965 `"1965"', add
label define es01a_yrcomm_lbl 1966 `"1966"', add
label define es01a_yrcomm_lbl 1967 `"1967"', add
label define es01a_yrcomm_lbl 1968 `"1968"', add
label define es01a_yrcomm_lbl 1969 `"1969"', add
label define es01a_yrcomm_lbl 1970 `"1970"', add
label define es01a_yrcomm_lbl 1971 `"1971"', add
label define es01a_yrcomm_lbl 1972 `"1972"', add
label define es01a_yrcomm_lbl 1973 `"1973"', add
label define es01a_yrcomm_lbl 1974 `"1974"', add
label define es01a_yrcomm_lbl 1975 `"1975"', add
label define es01a_yrcomm_lbl 1976 `"1976"', add
label define es01a_yrcomm_lbl 1977 `"1977"', add
label define es01a_yrcomm_lbl 1978 `"1978"', add
label define es01a_yrcomm_lbl 1979 `"1979"', add
label define es01a_yrcomm_lbl 1980 `"1980"', add
label define es01a_yrcomm_lbl 1981 `"1981"', add
label define es01a_yrcomm_lbl 1982 `"1982"', add
label define es01a_yrcomm_lbl 1983 `"1983"', add
label define es01a_yrcomm_lbl 1984 `"1984"', add
label define es01a_yrcomm_lbl 1985 `"1985"', add
label define es01a_yrcomm_lbl 1986 `"1986"', add
label define es01a_yrcomm_lbl 1987 `"1987"', add
label define es01a_yrcomm_lbl 1988 `"1988"', add
label define es01a_yrcomm_lbl 1989 `"1989"', add
label define es01a_yrcomm_lbl 1990 `"1990"', add
label define es01a_yrcomm_lbl 1991 `"1991"', add
label define es01a_yrcomm_lbl 1992 `"1992"', add
label define es01a_yrcomm_lbl 1993 `"1993"', add
label define es01a_yrcomm_lbl 1994 `"1994"', add
label define es01a_yrcomm_lbl 1995 `"1995"', add
label define es01a_yrcomm_lbl 1996 `"1996"', add
label define es01a_yrcomm_lbl 1997 `"1997"', add
label define es01a_yrcomm_lbl 1998 `"1998"', add
label define es01a_yrcomm_lbl 1999 `"1999"', add
label define es01a_yrcomm_lbl 2000 `"2000"', add
label define es01a_yrcomm_lbl 2001 `"2001"', add
label define es01a_yrcomm_lbl 9999 `"NIU (not in universe)"', add
label values es01a_yrcomm es01a_yrcomm_lbl

label define es01a_yrmuni_lbl 1900 `"1900 or before"'
label define es01a_yrmuni_lbl 1901 `"1901"', add
label define es01a_yrmuni_lbl 1902 `"1902"', add
label define es01a_yrmuni_lbl 1903 `"1903"', add
label define es01a_yrmuni_lbl 1904 `"1904"', add
label define es01a_yrmuni_lbl 1905 `"1905"', add
label define es01a_yrmuni_lbl 1906 `"1906"', add
label define es01a_yrmuni_lbl 1907 `"1907"', add
label define es01a_yrmuni_lbl 1908 `"1908"', add
label define es01a_yrmuni_lbl 1909 `"1909"', add
label define es01a_yrmuni_lbl 1910 `"1910"', add
label define es01a_yrmuni_lbl 1911 `"1911"', add
label define es01a_yrmuni_lbl 1912 `"1912"', add
label define es01a_yrmuni_lbl 1913 `"1913"', add
label define es01a_yrmuni_lbl 1914 `"1914"', add
label define es01a_yrmuni_lbl 1915 `"1915"', add
label define es01a_yrmuni_lbl 1916 `"1916"', add
label define es01a_yrmuni_lbl 1917 `"1917"', add
label define es01a_yrmuni_lbl 1918 `"1918"', add
label define es01a_yrmuni_lbl 1919 `"1919"', add
label define es01a_yrmuni_lbl 1920 `"1920"', add
label define es01a_yrmuni_lbl 1921 `"1921"', add
label define es01a_yrmuni_lbl 1922 `"1922"', add
label define es01a_yrmuni_lbl 1923 `"1923"', add
label define es01a_yrmuni_lbl 1924 `"1924"', add
label define es01a_yrmuni_lbl 1925 `"1925"', add
label define es01a_yrmuni_lbl 1926 `"1926"', add
label define es01a_yrmuni_lbl 1927 `"1927"', add
label define es01a_yrmuni_lbl 1928 `"1928"', add
label define es01a_yrmuni_lbl 1929 `"1929"', add
label define es01a_yrmuni_lbl 1930 `"1930"', add
label define es01a_yrmuni_lbl 1931 `"1931"', add
label define es01a_yrmuni_lbl 1932 `"1932"', add
label define es01a_yrmuni_lbl 1933 `"1933"', add
label define es01a_yrmuni_lbl 1934 `"1934"', add
label define es01a_yrmuni_lbl 1935 `"1935"', add
label define es01a_yrmuni_lbl 1936 `"1936"', add
label define es01a_yrmuni_lbl 1937 `"1937"', add
label define es01a_yrmuni_lbl 1938 `"1938"', add
label define es01a_yrmuni_lbl 1939 `"1939"', add
label define es01a_yrmuni_lbl 1940 `"1940"', add
label define es01a_yrmuni_lbl 1941 `"1941"', add
label define es01a_yrmuni_lbl 1942 `"1942"', add
label define es01a_yrmuni_lbl 1943 `"1943"', add
label define es01a_yrmuni_lbl 1944 `"1944"', add
label define es01a_yrmuni_lbl 1945 `"1945"', add
label define es01a_yrmuni_lbl 1946 `"1946"', add
label define es01a_yrmuni_lbl 1947 `"1947"', add
label define es01a_yrmuni_lbl 1948 `"1948"', add
label define es01a_yrmuni_lbl 1949 `"1949"', add
label define es01a_yrmuni_lbl 1950 `"1950"', add
label define es01a_yrmuni_lbl 1951 `"1951"', add
label define es01a_yrmuni_lbl 1952 `"1952"', add
label define es01a_yrmuni_lbl 1953 `"1953"', add
label define es01a_yrmuni_lbl 1954 `"1954"', add
label define es01a_yrmuni_lbl 1955 `"1955"', add
label define es01a_yrmuni_lbl 1956 `"1956"', add
label define es01a_yrmuni_lbl 1957 `"1957"', add
label define es01a_yrmuni_lbl 1958 `"1958"', add
label define es01a_yrmuni_lbl 1959 `"1959"', add
label define es01a_yrmuni_lbl 1960 `"1960"', add
label define es01a_yrmuni_lbl 1961 `"1961"', add
label define es01a_yrmuni_lbl 1962 `"1962"', add
label define es01a_yrmuni_lbl 1963 `"1963"', add
label define es01a_yrmuni_lbl 1964 `"1964"', add
label define es01a_yrmuni_lbl 1965 `"1965"', add
label define es01a_yrmuni_lbl 1966 `"1966"', add
label define es01a_yrmuni_lbl 1967 `"1967"', add
label define es01a_yrmuni_lbl 1968 `"1968"', add
label define es01a_yrmuni_lbl 1969 `"1969"', add
label define es01a_yrmuni_lbl 1970 `"1970"', add
label define es01a_yrmuni_lbl 1971 `"1971"', add
label define es01a_yrmuni_lbl 1972 `"1972"', add
label define es01a_yrmuni_lbl 1973 `"1973"', add
label define es01a_yrmuni_lbl 1974 `"1974"', add
label define es01a_yrmuni_lbl 1975 `"1975"', add
label define es01a_yrmuni_lbl 1976 `"1976"', add
label define es01a_yrmuni_lbl 1977 `"1977"', add
label define es01a_yrmuni_lbl 1978 `"1978"', add
label define es01a_yrmuni_lbl 1979 `"1979"', add
label define es01a_yrmuni_lbl 1980 `"1980"', add
label define es01a_yrmuni_lbl 1981 `"1981"', add
label define es01a_yrmuni_lbl 1982 `"1982"', add
label define es01a_yrmuni_lbl 1983 `"1983"', add
label define es01a_yrmuni_lbl 1984 `"1984"', add
label define es01a_yrmuni_lbl 1985 `"1985"', add
label define es01a_yrmuni_lbl 1986 `"1986"', add
label define es01a_yrmuni_lbl 1987 `"1987"', add
label define es01a_yrmuni_lbl 1988 `"1988"', add
label define es01a_yrmuni_lbl 1989 `"1989"', add
label define es01a_yrmuni_lbl 1990 `"1990"', add
label define es01a_yrmuni_lbl 1991 `"1991"', add
label define es01a_yrmuni_lbl 1992 `"1992"', add
label define es01a_yrmuni_lbl 1993 `"1993"', add
label define es01a_yrmuni_lbl 1994 `"1994"', add
label define es01a_yrmuni_lbl 1995 `"1995"', add
label define es01a_yrmuni_lbl 1996 `"1996"', add
label define es01a_yrmuni_lbl 1997 `"1997"', add
label define es01a_yrmuni_lbl 1998 `"1998"', add
label define es01a_yrmuni_lbl 1999 `"1999"', add
label define es01a_yrmuni_lbl 2000 `"2000"', add
label define es01a_yrmuni_lbl 2001 `"2001"', add
label define es01a_yrmuni_lbl 9999 `"NIU (not in universe)"', add
label values es01a_yrmuni es01a_yrmuni_lbl

label define es01a_prevauton_lbl 11 `"Galicia"'
label define es01a_prevauton_lbl 12 `"Principado de Asturias"', add
label define es01a_prevauton_lbl 13 `"Cantabria"', add
label define es01a_prevauton_lbl 21 `"País Vasco"', add
label define es01a_prevauton_lbl 22 `"Comunidad Foral de Navarra"', add
label define es01a_prevauton_lbl 23 `"La Rioja"', add
label define es01a_prevauton_lbl 24 `"Aragón"', add
label define es01a_prevauton_lbl 30 `"Comunidad de Madrid"', add
label define es01a_prevauton_lbl 41 `"Castilla y León"', add
label define es01a_prevauton_lbl 42 `"Castilla-La Mancha"', add
label define es01a_prevauton_lbl 43 `"Extremadura"', add
label define es01a_prevauton_lbl 51 `"Cataluña"', add
label define es01a_prevauton_lbl 52 `"Comunidad Valenciana"', add
label define es01a_prevauton_lbl 53 `"Illes Balears"', add
label define es01a_prevauton_lbl 61 `"Andalucía"', add
label define es01a_prevauton_lbl 62 `"Región de Murcia"', add
label define es01a_prevauton_lbl 63 `"Ciudad Autónoma de Ceuta"', add
label define es01a_prevauton_lbl 64 `"Ciudad Autónoma de Melilla"', add
label define es01a_prevauton_lbl 70 `"Canarias"', add
label define es01a_prevauton_lbl 98 `"Abroad"', add
label define es01a_prevauton_lbl 99 `"NIU (not in universe)"', add
label values es01a_prevauton es01a_prevauton_lbl

label define es01a_prevprov_lbl 01 `"Álava"'
label define es01a_prevprov_lbl 02 `"Albacete"', add
label define es01a_prevprov_lbl 03 `"Alicante/Alacant"', add
label define es01a_prevprov_lbl 04 `"Almería"', add
label define es01a_prevprov_lbl 05 `"Ávila"', add
label define es01a_prevprov_lbl 06 `"Badajoz"', add
label define es01a_prevprov_lbl 07 `"Balears (Illes)"', add
label define es01a_prevprov_lbl 08 `"Barcelona"', add
label define es01a_prevprov_lbl 09 `"Burgos"', add
label define es01a_prevprov_lbl 10 `"Cáceres"', add
label define es01a_prevprov_lbl 11 `"Cádiz"', add
label define es01a_prevprov_lbl 12 `"Castellón/Castelló"', add
label define es01a_prevprov_lbl 13 `"Ciudad Real"', add
label define es01a_prevprov_lbl 14 `"Córdoba"', add
label define es01a_prevprov_lbl 15 `"Coruña (A)"', add
label define es01a_prevprov_lbl 16 `"Cuenca"', add
label define es01a_prevprov_lbl 17 `"Girona"', add
label define es01a_prevprov_lbl 18 `"Granada"', add
label define es01a_prevprov_lbl 19 `"Guadalajara"', add
label define es01a_prevprov_lbl 20 `"Guipúzcoa"', add
label define es01a_prevprov_lbl 21 `"Huelva"', add
label define es01a_prevprov_lbl 22 `"Huesca"', add
label define es01a_prevprov_lbl 23 `"Jaén"', add
label define es01a_prevprov_lbl 24 `"León"', add
label define es01a_prevprov_lbl 25 `"Lleida"', add
label define es01a_prevprov_lbl 26 `"Rioja (La)"', add
label define es01a_prevprov_lbl 27 `"Lugo"', add
label define es01a_prevprov_lbl 28 `"Madrid"', add
label define es01a_prevprov_lbl 29 `"Málaga"', add
label define es01a_prevprov_lbl 30 `"Murcia"', add
label define es01a_prevprov_lbl 31 `"Navarra"', add
label define es01a_prevprov_lbl 32 `"Ourense"', add
label define es01a_prevprov_lbl 33 `"Asturias"', add
label define es01a_prevprov_lbl 34 `"Palencia"', add
label define es01a_prevprov_lbl 35 `"Palmas (Las)"', add
label define es01a_prevprov_lbl 36 `"Pontevedra"', add
label define es01a_prevprov_lbl 37 `"Salamanca"', add
label define es01a_prevprov_lbl 38 `"Santa Cruz de Tenerife"', add
label define es01a_prevprov_lbl 39 `"Cantabria"', add
label define es01a_prevprov_lbl 40 `"Segovia"', add
label define es01a_prevprov_lbl 41 `"Sevilla"', add
label define es01a_prevprov_lbl 42 `"Soria"', add
label define es01a_prevprov_lbl 43 `"Tarragona"', add
label define es01a_prevprov_lbl 44 `"Teruel"', add
label define es01a_prevprov_lbl 45 `"Toledo"', add
label define es01a_prevprov_lbl 46 `"Valencia/València"', add
label define es01a_prevprov_lbl 47 `"Valladolid"', add
label define es01a_prevprov_lbl 48 `"Vizcaya"', add
label define es01a_prevprov_lbl 49 `"Zamora"', add
label define es01a_prevprov_lbl 50 `"Zaragoza"', add
label define es01a_prevprov_lbl 51 `"Ceuta"', add
label define es01a_prevprov_lbl 52 `"Melilla"', add
label define es01a_prevprov_lbl 66 `"Abroad"', add
label define es01a_prevprov_lbl 99 `"NIU (not in universe)"', add
label values es01a_prevprov es01a_prevprov_lbl

label define es01a_prevmun_lbl 01059 `"Vitoria-Gasteiz"'
label define es01a_prevmun_lbl 01991 `"Álava: 0 to 2000 population"', add
label define es01a_prevmun_lbl 01992 `"Álava: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 01993 `"Álava: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 01994 `"Álava: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 02003 `"Albacete"', add
label define es01a_prevmun_lbl 02009 `"Almansa"', add
label define es01a_prevmun_lbl 02037 `"Hellín"', add
label define es01a_prevmun_lbl 02081 `"Villarrobledo"', add
label define es01a_prevmun_lbl 02991 `"Albacete: 0 to 2000 population"', add
label define es01a_prevmun_lbl 02992 `"Albacete: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 02993 `"Albacete: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 02994 `"Albacete: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 03009 `"Alcoy/Alcoi"', add
label define es01a_prevmun_lbl 03014 `"Alicante/Alacant"', add
label define es01a_prevmun_lbl 03031 `"Benidorm"', add
label define es01a_prevmun_lbl 03059 `"Crevillent"', add
label define es01a_prevmun_lbl 03063 `"Dénia"', add
label define es01a_prevmun_lbl 03065 `"Elche/Elx"', add
label define es01a_prevmun_lbl 03066 `"Elda"', add
label define es01a_prevmun_lbl 03079 `"Ibi"', add
label define es01a_prevmun_lbl 03093 `"Novelda"', add
label define es01a_prevmun_lbl 03099 `"Orihuela"', add
label define es01a_prevmun_lbl 03104 `"Petrer"', add
label define es01a_prevmun_lbl 03122 `"San Vicente del Raspeig/Sant Vicent del Raspeig"', add
label define es01a_prevmun_lbl 03133 `"Torrevieja"', add
label define es01a_prevmun_lbl 03139 `"Villajoyosa/Vila Joiosa (la)"', add
label define es01a_prevmun_lbl 03140 `"Villena"', add
label define es01a_prevmun_lbl 03991 `"Alicante/Alacant: 0 to 2000 population"', add
label define es01a_prevmun_lbl 03992 `"Alicante/Alacant: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 03993 `"Alicante/Alacant: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 03994 `"Alicante/Alacant: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 04003 `"Adra"', add
label define es01a_prevmun_lbl 04013 `"Almería"', add
label define es01a_prevmun_lbl 04079 `"Roquetas de Mar"', add
label define es01a_prevmun_lbl 04902 `"Ejido (El)"', add
label define es01a_prevmun_lbl 04991 `"Almería: 0 to 2000 population"', add
label define es01a_prevmun_lbl 04992 `"Almería: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 04993 `"Almería: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 04994 `"Almería: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 05019 `"Ávila"', add
label define es01a_prevmun_lbl 05991 `"Ávila: 0 to 2000 population"', add
label define es01a_prevmun_lbl 05992 `"Ávila: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 05993 `"Ávila: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 06011 `"Almendralejo"', add
label define es01a_prevmun_lbl 06015 `"Badajoz"', add
label define es01a_prevmun_lbl 06044 `"Don Benito"', add
label define es01a_prevmun_lbl 06083 `"Mérida"', add
label define es01a_prevmun_lbl 06153 `"Villanueva de la Serena"', add
label define es01a_prevmun_lbl 06991 `"Badajoz: 0 to 2000 population"', add
label define es01a_prevmun_lbl 06992 `"Badajoz: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 06993 `"Badajoz: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 06994 `"Badajoz: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 07011 `"Calvià"', add
label define es01a_prevmun_lbl 07015 `"Ciutadella de Menorca"', add
label define es01a_prevmun_lbl 07026 `"Eivissa"', add
label define es01a_prevmun_lbl 07027 `"Inca"', add
label define es01a_prevmun_lbl 07031 `"Llucmajor"', add
label define es01a_prevmun_lbl 07032 `"Mahón"', add
label define es01a_prevmun_lbl 07033 `"Manacor"', add
label define es01a_prevmun_lbl 07036 `"Marratxí"', add
label define es01a_prevmun_lbl 07040 `"Palma de Mallorca"', add
label define es01a_prevmun_lbl 07991 `"Balears (Illes): 0 to 2000 population"', add
label define es01a_prevmun_lbl 07992 `"Balears (Illes): 2001 to 5000 population"', add
label define es01a_prevmun_lbl 07993 `"Balears (Illes): 5001 to 10000 population"', add
label define es01a_prevmun_lbl 07994 `"Balears (Illes): 10001 to 20000 population"', add
label define es01a_prevmun_lbl 08015 `"Badalona"', add
label define es01a_prevmun_lbl 08019 `"Barcelona"', add
label define es01a_prevmun_lbl 08056 `"Castelldefels"', add
label define es01a_prevmun_lbl 08073 `"Cornellà de Llobregat"', add
label define es01a_prevmun_lbl 08077 `"Esplugues de Llobregat"', add
label define es01a_prevmun_lbl 08089 `"Gavà"', add
label define es01a_prevmun_lbl 08096 `"Granollers"', add
label define es01a_prevmun_lbl 08101 `"Hospitalet de Llobregat (L´)"', add
label define es01a_prevmun_lbl 08102 `"Igualada"', add
label define es01a_prevmun_lbl 08113 `"Manresa"', add
label define es01a_prevmun_lbl 08114 `"Martorell"', add
label define es01a_prevmun_lbl 08118 `"Masnou (El)"', add
label define es01a_prevmun_lbl 08121 `"Mataró"', add
label define es01a_prevmun_lbl 08123 `"Molins de Rei"', add
label define es01a_prevmun_lbl 08124 `"Mollet del Vallès"', add
label define es01a_prevmun_lbl 08125 `"Montcada i Reixac"', add
label define es01a_prevmun_lbl 08163 `"Pineda de Mar"', add
label define es01a_prevmun_lbl 08169 `"Prat de Llobregat (El)"', add
label define es01a_prevmun_lbl 08172 `"Premià de Mar"', add
label define es01a_prevmun_lbl 08180 `"Ripollet"', add
label define es01a_prevmun_lbl 08184 `"Rubí"', add
label define es01a_prevmun_lbl 08187 `"Sabadell"', add
label define es01a_prevmun_lbl 08194 `"Sant Adrià de Besòs"', add
label define es01a_prevmun_lbl 08196 `"Sant Andreu de la Barca"', add
label define es01a_prevmun_lbl 08200 `"Sant Boi de Llobregat"', add
label define es01a_prevmun_lbl 08205 `"Sant Cugat del Vallès"', add
label define es01a_prevmun_lbl 08211 `"Sant Feliu de Llobregat"', add
label define es01a_prevmun_lbl 08217 `"Sant Joan Despí"', add
label define es01a_prevmun_lbl 08231 `"Sant Pere de Ribes"', add
label define es01a_prevmun_lbl 08245 `"Santa Coloma de Gramenet"', add
label define es01a_prevmun_lbl 08252 `"Barberà del Vallès"', add
label define es01a_prevmun_lbl 08260 `"Santa Perpètua de Mogoda"', add
label define es01a_prevmun_lbl 08263 `"Sant Vicenç dels Horts"', add
label define es01a_prevmun_lbl 08266 `"Cerdanyola del Vallès"', add
label define es01a_prevmun_lbl 08279 `"Terrassa"', add
label define es01a_prevmun_lbl 08298 `"Vic"', add
label define es01a_prevmun_lbl 08301 `"Viladecans"', add
label define es01a_prevmun_lbl 08305 `"Vilafranca del Penedès"', add
label define es01a_prevmun_lbl 08307 `"Vilanova i la Geltrú"', add
label define es01a_prevmun_lbl 08991 `"Barcelona: 0 to 2000 population"', add
label define es01a_prevmun_lbl 08992 `"Barcelona: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 08993 `"Barcelona: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 08994 `"Barcelona: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 09018 `"Aranda de Duero"', add
label define es01a_prevmun_lbl 09059 `"Burgos"', add
label define es01a_prevmun_lbl 09219 `"Miranda de Ebro"', add
label define es01a_prevmun_lbl 09991 `"Burgos: 0 to 2000 population"', add
label define es01a_prevmun_lbl 09992 `"Burgos: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 09993 `"Burgos: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 10037 `"Cáceres"', add
label define es01a_prevmun_lbl 10148 `"Plasencia"', add
label define es01a_prevmun_lbl 10991 `"Cáceres: 0 to 2000 population"', add
label define es01a_prevmun_lbl 10992 `"Cáceres: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 10993 `"Cáceres: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 10994 `"Cáceres: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 11004 `"Algeciras"', add
label define es01a_prevmun_lbl 11006 `"Arcos de la Frontera"', add
label define es01a_prevmun_lbl 11007 `"Barbate"', add
label define es01a_prevmun_lbl 11012 `"Cádiz"', add
label define es01a_prevmun_lbl 11015 `"Chiclana de la Frontera"', add
label define es01a_prevmun_lbl 11020 `"Jerez de la Frontera"', add
label define es01a_prevmun_lbl 11022 `"Línea de la Concepción (La)"', add
label define es01a_prevmun_lbl 11027 `"Puerto de Santa María (El)"', add
label define es01a_prevmun_lbl 11028 `"Puerto Real"', add
label define es01a_prevmun_lbl 11030 `"Rota"', add
label define es01a_prevmun_lbl 11031 `"San Fernando"', add
label define es01a_prevmun_lbl 11032 `"Sanlúcar de Barrameda"', add
label define es01a_prevmun_lbl 11033 `"San Roque"', add
label define es01a_prevmun_lbl 11991 `"Cádiz: 0 to 2000 population"', add
label define es01a_prevmun_lbl 11992 `"Cádiz: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 11993 `"Cádiz: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 11994 `"Cádiz: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 12027 `"Benicarló"', add
label define es01a_prevmun_lbl 12032 `"Burriana"', add
label define es01a_prevmun_lbl 12040 `"Castellón de la Plana/Castelló de la Plana"', add
label define es01a_prevmun_lbl 12084 `"Onda"', add
label define es01a_prevmun_lbl 12126 `"Vall d´Uixó (la)"', add
label define es01a_prevmun_lbl 12135 `"Villarreal/Vila-real"', add
label define es01a_prevmun_lbl 12138 `"Vinaròs"', add
label define es01a_prevmun_lbl 12991 `"Castellón/Castelló: 0 to 2000 population"', add
label define es01a_prevmun_lbl 12992 `"Castellón/Castelló: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 12993 `"Castellón/Castelló: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 12994 `"Castellón/Castelló: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 13005 `"Alcázar de San Juan"', add
label define es01a_prevmun_lbl 13034 `"Ciudad Real"', add
label define es01a_prevmun_lbl 13071 `"Puertollano"', add
label define es01a_prevmun_lbl 13082 `"Tomelloso"', add
label define es01a_prevmun_lbl 13087 `"Valdepeñas"', add
label define es01a_prevmun_lbl 13991 `"Ciudad Real: 0 to 2000 population"', add
label define es01a_prevmun_lbl 13992 `"Ciudad Real: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 13993 `"Ciudad Real: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 13994 `"Ciudad Real: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 14013 `"Cabra"', add
label define es01a_prevmun_lbl 14021 `"Córdoba"', add
label define es01a_prevmun_lbl 14038 `"Lucena"', add
label define es01a_prevmun_lbl 14042 `"Montilla"', add
label define es01a_prevmun_lbl 14055 `"Priego de Córdoba"', add
label define es01a_prevmun_lbl 14056 `"Puente Genil"', add
label define es01a_prevmun_lbl 14991 `"Córdoba: 0 to 2000 population"', add
label define es01a_prevmun_lbl 14992 `"Córdoba: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 14993 `"Córdoba: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 14994 `"Córdoba: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 15005 `"Arteixo"', add
label define es01a_prevmun_lbl 15019 `"Carballo"', add
label define es01a_prevmun_lbl 15030 `"Coruña (A)"', add
label define es01a_prevmun_lbl 15031 `"Culleredo"', add
label define es01a_prevmun_lbl 15036 `"Ferrol"', add
label define es01a_prevmun_lbl 15054 `"Narón"', add
label define es01a_prevmun_lbl 15058 `"Oleiros"', add
label define es01a_prevmun_lbl 15073 `"Ribeira"', add
label define es01a_prevmun_lbl 15078 `"Santiago de Compostela"', add
label define es01a_prevmun_lbl 15991 `"Coruña (A): 0 to 2000 population"', add
label define es01a_prevmun_lbl 15992 `"Coruña (A): 2001 to 5000 population"', add
label define es01a_prevmun_lbl 15993 `"Coruña (A): 5001 to 10000 population"', add
label define es01a_prevmun_lbl 15994 `"Coruña (A): 10001 to 20000 population"', add
label define es01a_prevmun_lbl 16078 `"Cuenca"', add
label define es01a_prevmun_lbl 16991 `"Cuenca: 0 to 2000 population"', add
label define es01a_prevmun_lbl 16992 `"Cuenca: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 16993 `"Cuenca: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 16994 `"Cuenca: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 17023 `"Blanes"', add
label define es01a_prevmun_lbl 17066 `"Figueres"', add
label define es01a_prevmun_lbl 17079 `"Girona"', add
label define es01a_prevmun_lbl 17095 `"Lloret de Mar"', add
label define es01a_prevmun_lbl 17114 `"Olot"', add
label define es01a_prevmun_lbl 17155 `"Salt"', add
label define es01a_prevmun_lbl 17991 `"Girona: 0 to 2000 population"', add
label define es01a_prevmun_lbl 17992 `"Girona: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 17993 `"Girona: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 17994 `"Girona: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 18017 `"Almuñécar"', add
label define es01a_prevmun_lbl 18023 `"Baza"', add
label define es01a_prevmun_lbl 18087 `"Granada"', add
label define es01a_prevmun_lbl 18122 `"Loja"', add
label define es01a_prevmun_lbl 18140 `"Motril"', add
label define es01a_prevmun_lbl 18991 `"Granada: 0 to 2000 population"', add
label define es01a_prevmun_lbl 18992 `"Granada: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 18993 `"Granada: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 18994 `"Granada: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 19046 `"Azuqueca de Henares"', add
label define es01a_prevmun_lbl 19130 `"Guadalajara"', add
label define es01a_prevmun_lbl 19991 `"Guadalajara: 0 to 2000 population"', add
label define es01a_prevmun_lbl 19992 `"Guadalajara: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 20030 `"Eibar"', add
label define es01a_prevmun_lbl 20045 `"Irun"', add
label define es01a_prevmun_lbl 20055 `"Arrasate o Mondragón"', add
label define es01a_prevmun_lbl 20067 `"Errenteria"', add
label define es01a_prevmun_lbl 20069 `"Donostia-San Sebastián"', add
label define es01a_prevmun_lbl 20079 `"Zarautz"', add
label define es01a_prevmun_lbl 20991 `"Guipúzcoa: 0 to 2000 population"', add
label define es01a_prevmun_lbl 20992 `"Guipúzcoa: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 20993 `"Guipúzcoa: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 20994 `"Guipúzcoa: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 21041 `"Huelva"', add
label define es01a_prevmun_lbl 21991 `"Huelva: 0 to 2000 population"', add
label define es01a_prevmun_lbl 21992 `"Huelva: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 21993 `"Huelva: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 21994 `"Huelva: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 22125 `"Huesca"', add
label define es01a_prevmun_lbl 22991 `"Huesca: 0 to 2000 population"', add
label define es01a_prevmun_lbl 22992 `"Huesca: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 22993 `"Huesca: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 22994 `"Huesca: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 23002 `"Alcalá la Real"', add
label define es01a_prevmun_lbl 23005 `"Andújar"', add
label define es01a_prevmun_lbl 23050 `"Jaén"', add
label define es01a_prevmun_lbl 23055 `"Linares"', add
label define es01a_prevmun_lbl 23060 `"Martos"', add
label define es01a_prevmun_lbl 23092 `"Úbeda"', add
label define es01a_prevmun_lbl 23991 `"Jaén: 0 to 2000 population"', add
label define es01a_prevmun_lbl 23992 `"Jaén: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 23993 `"Jaén: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 23994 `"Jaén: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 24089 `"León"', add
label define es01a_prevmun_lbl 24115 `"Ponferrada"', add
label define es01a_prevmun_lbl 24142 `"San Andrés del Rabanedo"', add
label define es01a_prevmun_lbl 24991 `"León: 0 to 2000 population"', add
label define es01a_prevmun_lbl 24992 `"León: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 24993 `"León: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 24994 `"León: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 25120 `"Lleida"', add
label define es01a_prevmun_lbl 25991 `"Lleida: 0 to 2000 population"', add
label define es01a_prevmun_lbl 25992 `"Lleida: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 25993 `"Lleida: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 25994 `"Lleida: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 26036 `"Calahorra"', add
label define es01a_prevmun_lbl 26089 `"Logroño"', add
label define es01a_prevmun_lbl 26991 `"Rioja (La): 0 to 2000 population"', add
label define es01a_prevmun_lbl 26992 `"Rioja (La): 2001 to 5000 population"', add
label define es01a_prevmun_lbl 26993 `"Rioja (La): 5001 to 10000 population"', add
label define es01a_prevmun_lbl 26994 `"Rioja (La): 10001 to 20000 population"', add
label define es01a_prevmun_lbl 27028 `"Lugo"', add
label define es01a_prevmun_lbl 27991 `"Lugo: 0 to 2000 population"', add
label define es01a_prevmun_lbl 27992 `"Lugo: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 27993 `"Lugo: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 27994 `"Lugo: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 28005 `"Alcalá de Henares"', add
label define es01a_prevmun_lbl 28006 `"Alcobendas"', add
label define es01a_prevmun_lbl 28007 `"Alcorcón"', add
label define es01a_prevmun_lbl 28013 `"Aranjuez"', add
label define es01a_prevmun_lbl 28014 `"Arganda del Rey"', add
label define es01a_prevmun_lbl 28022 `"Boadilla del Monte"', add
label define es01a_prevmun_lbl 28045 `"Colmenar Viejo"', add
label define es01a_prevmun_lbl 28047 `"Collado Villalba"', add
label define es01a_prevmun_lbl 28049 `"Coslada"', add
label define es01a_prevmun_lbl 28058 `"Fuenlabrada"', add
label define es01a_prevmun_lbl 28061 `"Galapagar"', add
label define es01a_prevmun_lbl 28065 `"Getafe"', add
label define es01a_prevmun_lbl 28074 `"Leganés"', add
label define es01a_prevmun_lbl 28079 `"Madrid"', add
label define es01a_prevmun_lbl 28080 `"Majadahonda"', add
label define es01a_prevmun_lbl 28092 `"Móstoles"', add
label define es01a_prevmun_lbl 28106 `"Parla"', add
label define es01a_prevmun_lbl 28113 `"Pinto"', add
label define es01a_prevmun_lbl 28115 `"Pozuelo de Alarcón"', add
label define es01a_prevmun_lbl 28123 `"Rivas-Vaciamadrid"', add
label define es01a_prevmun_lbl 28127 `"Rozas de Madrid (Las)"', add
label define es01a_prevmun_lbl 28130 `"San Fernando de Henares"', add
label define es01a_prevmun_lbl 28134 `"San Sebastián de los Reyes"', add
label define es01a_prevmun_lbl 28148 `"Torrejón de Ardoz"', add
label define es01a_prevmun_lbl 28161 `"Valdemoro"', add
label define es01a_prevmun_lbl 28181 `"Villaviciosa de Odón"', add
label define es01a_prevmun_lbl 28903 `"Tres Cantos"', add
label define es01a_prevmun_lbl 28991 `"Madrid: 0 to 2000 population"', add
label define es01a_prevmun_lbl 28992 `"Madrid: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 28993 `"Madrid: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 28994 `"Madrid: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 29007 `"Alhaurín de la Torre"', add
label define es01a_prevmun_lbl 29015 `"Antequera"', add
label define es01a_prevmun_lbl 29025 `"Benalmádena"', add
label define es01a_prevmun_lbl 29051 `"Estepona"', add
label define es01a_prevmun_lbl 29054 `"Fuengirola"', add
label define es01a_prevmun_lbl 29067 `"Málaga"', add
label define es01a_prevmun_lbl 29069 `"Marbella"', add
label define es01a_prevmun_lbl 29070 `"Mijas"', add
label define es01a_prevmun_lbl 29082 `"Rincón de la Victoria"', add
label define es01a_prevmun_lbl 29084 `"Ronda"', add
label define es01a_prevmun_lbl 29094 `"Vélez-Málaga"', add
label define es01a_prevmun_lbl 29901 `"Torremolinos"', add
label define es01a_prevmun_lbl 29991 `"Málaga: 0 to 2000 population"', add
label define es01a_prevmun_lbl 29992 `"Málaga: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 29993 `"Málaga: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 29994 `"Málaga: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 30003 `"Águilas"', add
label define es01a_prevmun_lbl 30005 `"Alcantarilla"', add
label define es01a_prevmun_lbl 30015 `"Caravaca de la Cruz"', add
label define es01a_prevmun_lbl 30016 `"Cartagena"', add
label define es01a_prevmun_lbl 30019 `"Cieza"', add
label define es01a_prevmun_lbl 30022 `"Jumilla"', add
label define es01a_prevmun_lbl 30024 `"Lorca"', add
label define es01a_prevmun_lbl 30026 `"Mazarrón"', add
label define es01a_prevmun_lbl 30027 `"Molina de Segura"', add
label define es01a_prevmun_lbl 30030 `"Murcia"', add
label define es01a_prevmun_lbl 30035 `"San Javier"', add
label define es01a_prevmun_lbl 30037 `"Torre-Pacheco"', add
label define es01a_prevmun_lbl 30039 `"Totana"', add
label define es01a_prevmun_lbl 30043 `"Yecla"', add
label define es01a_prevmun_lbl 30991 `"Murcia: 0 to 2000 population"', add
label define es01a_prevmun_lbl 30992 `"Murcia: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 30993 `"Murcia: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 30994 `"Murcia: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 31201 `"Pamplona/Iruña"', add
label define es01a_prevmun_lbl 31232 `"Tudela"', add
label define es01a_prevmun_lbl 31901 `"Barañain"', add
label define es01a_prevmun_lbl 31991 `"Navarra: 0 to 2000 population"', add
label define es01a_prevmun_lbl 31992 `"Navarra: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 31993 `"Navarra: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 31994 `"Navarra: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 32054 `"Ourense"', add
label define es01a_prevmun_lbl 32991 `"Ourense: 0 to 2000 population"', add
label define es01a_prevmun_lbl 32992 `"Ourense: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 32993 `"Ourense: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 32994 `"Ourense: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 33004 `"Avilés"', add
label define es01a_prevmun_lbl 33016 `"Castrillón"', add
label define es01a_prevmun_lbl 33024 `"Gijón"', add
label define es01a_prevmun_lbl 33031 `"Langreo"', add
label define es01a_prevmun_lbl 33037 `"Mieres"', add
label define es01a_prevmun_lbl 33044 `"Oviedo"', add
label define es01a_prevmun_lbl 33060 `"San Martín del Rey Aurelio"', add
label define es01a_prevmun_lbl 33066 `"Siero"', add
label define es01a_prevmun_lbl 33991 `"Asturias: 0 to 2000 population"', add
label define es01a_prevmun_lbl 33992 `"Asturias: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 33993 `"Asturias: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 33994 `"Asturias: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 34120 `"Palencia"', add
label define es01a_prevmun_lbl 34991 `"Palencia: 0 to 2000 population"', add
label define es01a_prevmun_lbl 34992 `"Palencia: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 34993 `"Palencia: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 35002 `"Agüimes"', add
label define es01a_prevmun_lbl 35004 `"Arrecife"', add
label define es01a_prevmun_lbl 35006 `"Arucas"', add
label define es01a_prevmun_lbl 35009 `"Gáldar"', add
label define es01a_prevmun_lbl 35011 `"Ingenio"', add
label define es01a_prevmun_lbl 35016 `"Palmas de Gran Canaria (Las)"', add
label define es01a_prevmun_lbl 35017 `"Puerto del Rosario"', add
label define es01a_prevmun_lbl 35019 `"San Bartolomé de Tirajana"', add
label define es01a_prevmun_lbl 35022 `"Santa Lucía de Tirajana"', add
label define es01a_prevmun_lbl 35026 `"Telde"', add
label define es01a_prevmun_lbl 35991 `"Palmas (Las): 0 to 2000 population"', add
label define es01a_prevmun_lbl 35992 `"Palmas (Las): 2001 to 5000 population"', add
label define es01a_prevmun_lbl 35993 `"Palmas (Las): 5001 to 10000 population"', add
label define es01a_prevmun_lbl 35994 `"Palmas (Las): 10001 to 20000 population"', add
label define es01a_prevmun_lbl 36008 `"Cangas"', add
label define es01a_prevmun_lbl 36017 `"Estrada (A)"', add
label define es01a_prevmun_lbl 36026 `"Marín"', add
label define es01a_prevmun_lbl 36038 `"Pontevedra"', add
label define es01a_prevmun_lbl 36045 `"Redondela"', add
label define es01a_prevmun_lbl 36057 `"Vigo"', add
label define es01a_prevmun_lbl 36060 `"Vilagarcía de Arousa"', add
label define es01a_prevmun_lbl 36991 `"Pontevedra: 0 to 2000 population"', add
label define es01a_prevmun_lbl 36992 `"Pontevedra: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 36993 `"Pontevedra: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 36994 `"Pontevedra: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 37274 `"Salamanca"', add
label define es01a_prevmun_lbl 37991 `"Salamanca: 0 to 2000 population"', add
label define es01a_prevmun_lbl 37992 `"Salamanca: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 37993 `"Salamanca: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 37994 `"Salamanca: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 38001 `"Adeje"', add
label define es01a_prevmun_lbl 38006 `"Arona"', add
label define es01a_prevmun_lbl 38017 `"Granadilla de Abona"', add
label define es01a_prevmun_lbl 38022 `"Icod de los Vinos"', add
label define es01a_prevmun_lbl 38023 `"San Cristóbal de La Laguna"', add
label define es01a_prevmun_lbl 38026 `"Orotava (La)"', add
label define es01a_prevmun_lbl 38028 `"Puerto de la Cruz"', add
label define es01a_prevmun_lbl 38031 `"Realejos (Los)"', add
label define es01a_prevmun_lbl 38038 `"Santa Cruz de Tenerife"', add
label define es01a_prevmun_lbl 38043 `"Tacoronte"', add
label define es01a_prevmun_lbl 38991 `"Santa Cruz de Tenerife: 0 to 2000 population"', add
label define es01a_prevmun_lbl 38992 `"Santa Cruz de Tenerife: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 38993 `"Santa Cruz de Tenerife: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 38994 `"Santa Cruz de Tenerife: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 39016 `"Camargo"', add
label define es01a_prevmun_lbl 39020 `"Castro-Urdiales"', add
label define es01a_prevmun_lbl 39075 `"Santander"', add
label define es01a_prevmun_lbl 39087 `"Torrelavega"', add
label define es01a_prevmun_lbl 39991 `"Cantabria: 0 to 2000 population"', add
label define es01a_prevmun_lbl 39992 `"Cantabria: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 39993 `"Cantabria: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 39994 `"Cantabria: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 40194 `"Segovia"', add
label define es01a_prevmun_lbl 40991 `"Segovia: 0 to 2000 population"', add
label define es01a_prevmun_lbl 40992 `"Segovia: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 40993 `"Segovia: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 41004 `"Alcalá de Guadaira"', add
label define es01a_prevmun_lbl 41021 `"Camas"', add
label define es01a_prevmun_lbl 41024 `"Carmona"', add
label define es01a_prevmun_lbl 41034 `"Coria del Río"', add
label define es01a_prevmun_lbl 41038 `"Dos Hermanas"', add
label define es01a_prevmun_lbl 41039 `"Écija"', add
label define es01a_prevmun_lbl 41053 `"Lebrija"', add
label define es01a_prevmun_lbl 41059 `"Mairena del Aljarafe"', add
label define es01a_prevmun_lbl 41065 `"Morón de la Frontera"', add
label define es01a_prevmun_lbl 41069 `"Palacios y Villafranca (Los)"', add
label define es01a_prevmun_lbl 41081 `"Rinconada (La)"', add
label define es01a_prevmun_lbl 41091 `"Sevilla"', add
label define es01a_prevmun_lbl 41095 `"Utrera"', add
label define es01a_prevmun_lbl 41991 `"Sevilla: 0 to 2000 population"', add
label define es01a_prevmun_lbl 41992 `"Sevilla: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 41993 `"Sevilla: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 41994 `"Sevilla: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 42173 `"Soria"', add
label define es01a_prevmun_lbl 42991 `"Soria: 0 to 2000 population"', add
label define es01a_prevmun_lbl 42992 `"Soria: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 42993 `"Soria: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 43038 `"Cambrils"', add
label define es01a_prevmun_lbl 43123 `"Reus"', add
label define es01a_prevmun_lbl 43148 `"Tarragona"', add
label define es01a_prevmun_lbl 43155 `"Tortosa"', add
label define es01a_prevmun_lbl 43161 `"Valls"', add
label define es01a_prevmun_lbl 43163 `"Vendrell (El)"', add
label define es01a_prevmun_lbl 43991 `"Tarragona: 0 to 2000 population"', add
label define es01a_prevmun_lbl 43992 `"Tarragona: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 43993 `"Tarragona: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 43994 `"Tarragona: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 44216 `"Teruel"', add
label define es01a_prevmun_lbl 44991 `"Teruel: 0 to 2000 population"', add
label define es01a_prevmun_lbl 44992 `"Teruel: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 44993 `"Teruel: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 44994 `"Teruel: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 45165 `"Talavera de la Reina"', add
label define es01a_prevmun_lbl 45168 `"Toledo"', add
label define es01a_prevmun_lbl 45991 `"Toledo: 0 to 2000 population"', add
label define es01a_prevmun_lbl 45992 `"Toledo: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 45993 `"Toledo: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 45994 `"Toledo: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 46005 `"Alaquàs"', add
label define es01a_prevmun_lbl 46017 `"Alzira"', add
label define es01a_prevmun_lbl 46021 `"Aldaia"', add
label define es01a_prevmun_lbl 46029 `"Algemesí"', add
label define es01a_prevmun_lbl 46078 `"Burjassot"', add
label define es01a_prevmun_lbl 46094 `"Catarroja"', add
label define es01a_prevmun_lbl 46102 `"Quart de Poblet"', add
label define es01a_prevmun_lbl 46105 `"Cullera"', add
label define es01a_prevmun_lbl 46110 `"Xirivella"', add
label define es01a_prevmun_lbl 46131 `"Gandia"', add
label define es01a_prevmun_lbl 46145 `"Xàtiva"', add
label define es01a_prevmun_lbl 46159 `"Manises"', add
label define es01a_prevmun_lbl 46169 `"Mislata"', add
label define es01a_prevmun_lbl 46181 `"Oliva"', add
label define es01a_prevmun_lbl 46184 `"Ontinyent"', add
label define es01a_prevmun_lbl 46190 `"Paterna"', add
label define es01a_prevmun_lbl 46220 `"Sagunto/Sagunt"', add
label define es01a_prevmun_lbl 46235 `"Sueca"', add
label define es01a_prevmun_lbl 46244 `"Torrent"', add
label define es01a_prevmun_lbl 46250 `"Valencia"', add
label define es01a_prevmun_lbl 46991 `"Valencia/València: 0 to 2000 population"', add
label define es01a_prevmun_lbl 46992 `"Valencia/València: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 46993 `"Valencia/València: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 46994 `"Valencia/València: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 47186 `"Valladolid"', add
label define es01a_prevmun_lbl 47991 `"Valladolid: 0 to 2000 population"', add
label define es01a_prevmun_lbl 47992 `"Valladolid: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 47993 `"Valladolid: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 47994 `"Valladolid: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 48013 `"Barakaldo"', add
label define es01a_prevmun_lbl 48015 `"Basauri"', add
label define es01a_prevmun_lbl 48020 `"Bilbao"', add
label define es01a_prevmun_lbl 48027 `"Durango"', add
label define es01a_prevmun_lbl 48036 `"Galdakao"', add
label define es01a_prevmun_lbl 48044 `"Getxo"', add
label define es01a_prevmun_lbl 48054 `"Leioa"', add
label define es01a_prevmun_lbl 48078 `"Portugalete"', add
label define es01a_prevmun_lbl 48082 `"Santurtzi"', add
label define es01a_prevmun_lbl 48084 `"Sestao"', add
label define es01a_prevmun_lbl 48902 `"Erandio"', add
label define es01a_prevmun_lbl 48991 `"Vizcaya: 0 to 2000 population"', add
label define es01a_prevmun_lbl 48992 `"Vizcaya: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 48993 `"Vizcaya: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 48994 `"Vizcaya: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 49275 `"Zamora"', add
label define es01a_prevmun_lbl 49991 `"Zamora: 0 to 2000 population"', add
label define es01a_prevmun_lbl 49993 `"Zamora: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 49994 `"Zamora: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 50297 `"Zaragoza"', add
label define es01a_prevmun_lbl 50991 `"Zaragoza: 0 to 2000 population"', add
label define es01a_prevmun_lbl 50992 `"Zaragoza: 2001 to 5000 population"', add
label define es01a_prevmun_lbl 50993 `"Zaragoza: 5001 to 10000 population"', add
label define es01a_prevmun_lbl 50994 `"Zaragoza: 10001 to 20000 population"', add
label define es01a_prevmun_lbl 51001 `"Ceuta"', add
label define es01a_prevmun_lbl 52001 `"Melilla"', add
label define es01a_prevmun_lbl 66101 `"Albania"', add
label define es01a_prevmun_lbl 66102 `"Austria"', add
label define es01a_prevmun_lbl 66103 `"Belgium"', add
label define es01a_prevmun_lbl 66104 `"Bulgaria"', add
label define es01a_prevmun_lbl 66106 `"Cyprus"', add
label define es01a_prevmun_lbl 66107 `"Denmark"', add
label define es01a_prevmun_lbl 66109 `"Finland"', add
label define es01a_prevmun_lbl 66110 `"France"', add
label define es01a_prevmun_lbl 66111 `"Greece"', add
label define es01a_prevmun_lbl 66112 `"Hungary"', add
label define es01a_prevmun_lbl 66113 `"Ireland"', add
label define es01a_prevmun_lbl 66114 `"Iceland"', add
label define es01a_prevmun_lbl 66115 `"Italy"', add
label define es01a_prevmun_lbl 66116 `"Liechtenstein"', add
label define es01a_prevmun_lbl 66117 `"Luxemburg"', add
label define es01a_prevmun_lbl 66118 `"Malta"', add
label define es01a_prevmun_lbl 66119 `"Monaco"', add
label define es01a_prevmun_lbl 66120 `"Norway"', add
label define es01a_prevmun_lbl 66121 `"Low Countries"', add
label define es01a_prevmun_lbl 66122 `"Poland"', add
label define es01a_prevmun_lbl 66123 `"Portugal"', add
label define es01a_prevmun_lbl 66124 `"Andorra"', add
label define es01a_prevmun_lbl 66125 `"United Kingdom"', add
label define es01a_prevmun_lbl 66126 `"Germany"', add
label define es01a_prevmun_lbl 66128 `"Rumania"', add
label define es01a_prevmun_lbl 66129 `"San Marino"', add
label define es01a_prevmun_lbl 66131 `"Sweden"', add
label define es01a_prevmun_lbl 66132 `"Switzerland"', add
label define es01a_prevmun_lbl 66135 `"Ukraine"', add
label define es01a_prevmun_lbl 66136 `"Letonia"', add
label define es01a_prevmun_lbl 66137 `"Moldova"', add
label define es01a_prevmun_lbl 66138 `"Bielorrusia"', add
label define es01a_prevmun_lbl 66139 `"Georgia"', add
label define es01a_prevmun_lbl 66141 `"Estonia"', add
label define es01a_prevmun_lbl 66142 `"Lithuania"', add
label define es01a_prevmun_lbl 66143 `"Chek Republic"', add
label define es01a_prevmun_lbl 66144 `"Slovakia"', add
label define es01a_prevmun_lbl 66145 `"Bosnia-Herzegovina"', add
label define es01a_prevmun_lbl 66146 `"Croacia"', add
label define es01a_prevmun_lbl 66147 `"Slovenia"', add
label define es01a_prevmun_lbl 66148 `"Armenia"', add
label define es01a_prevmun_lbl 66154 `"Russia"', add
label define es01a_prevmun_lbl 66155 `"Yugoslavia"', add
label define es01a_prevmun_lbl 66156 `"Macedonia"', add
label define es01a_prevmun_lbl 66201 `"Burkina Fasso"', add
label define es01a_prevmun_lbl 66202 `"Angola"', add
label define es01a_prevmun_lbl 66203 `"Argelia"', add
label define es01a_prevmun_lbl 66204 `"Benin"', add
label define es01a_prevmun_lbl 66206 `"Burundi"', add
label define es01a_prevmun_lbl 66207 `"Cabo Verde"', add
label define es01a_prevmun_lbl 66208 `"Camerun"', add
label define es01a_prevmun_lbl 66210 `"Congo"', add
label define es01a_prevmun_lbl 66211 `"Ivory Coast"', add
label define es01a_prevmun_lbl 66212 `"Djibouti"', add
label define es01a_prevmun_lbl 66213 `"Egypt"', add
label define es01a_prevmun_lbl 66214 `"Ethiopia"', add
label define es01a_prevmun_lbl 66215 `"Gabon"', add
label define es01a_prevmun_lbl 66216 `"Gambia"', add
label define es01a_prevmun_lbl 66217 `"Ghana"', add
label define es01a_prevmun_lbl 66218 `"Guinea"', add
label define es01a_prevmun_lbl 66219 `"Guinea Bissau"', add
label define es01a_prevmun_lbl 66220 `"Guinea Equatorial"', add
label define es01a_prevmun_lbl 66221 `"Kenya"', add
label define es01a_prevmun_lbl 66223 `"Liberia"', add
label define es01a_prevmun_lbl 66224 `"Libya"', add
label define es01a_prevmun_lbl 66225 `"Madagascar"', add
label define es01a_prevmun_lbl 66227 `"Mali"', add
label define es01a_prevmun_lbl 66228 `"Morocco"', add
label define es01a_prevmun_lbl 66229 `"Mauricio"', add
label define es01a_prevmun_lbl 66230 `"Mauritania"', add
label define es01a_prevmun_lbl 66231 `"Mozambique"', add
label define es01a_prevmun_lbl 66232 `"Namibia"', add
label define es01a_prevmun_lbl 66233 `"Niger"', add
label define es01a_prevmun_lbl 66234 `"Nigeria"', add
label define es01a_prevmun_lbl 66235 `"Republic of Central Africa"', add
label define es01a_prevmun_lbl 66236 `"Sudafrica"', add
label define es01a_prevmun_lbl 66237 `"Ruanda"', add
label define es01a_prevmun_lbl 66239 `"Senegal"', add
label define es01a_prevmun_lbl 66241 `"Sierra Leona"', add
label define es01a_prevmun_lbl 66242 `"Somalia"', add
label define es01a_prevmun_lbl 66243 `"Sudan"', add
label define es01a_prevmun_lbl 66245 `"Tanzania"', add
label define es01a_prevmun_lbl 66246 `"Chad"', add
label define es01a_prevmun_lbl 66247 `"Togo"', add
label define es01a_prevmun_lbl 66248 `"Tunez"', add
label define es01a_prevmun_lbl 66249 `"Uganda"', add
label define es01a_prevmun_lbl 66250 `"Zaire"', add
label define es01a_prevmun_lbl 66251 `"Zambia"', add
label define es01a_prevmun_lbl 66252 `"Zimbabwe"', add
label define es01a_prevmun_lbl 66301 `"Canada"', add
label define es01a_prevmun_lbl 66302 `"United States of America"', add
label define es01a_prevmun_lbl 66303 `"Mexico"', add
label define es01a_prevmun_lbl 66311 `"Bahamas"', add
label define es01a_prevmun_lbl 66314 `"Costa Rica"', add
label define es01a_prevmun_lbl 66315 `"Cuba"', add
label define es01a_prevmun_lbl 66316 `"Dominica"', add
label define es01a_prevmun_lbl 66317 `"El Salvador"', add
label define es01a_prevmun_lbl 66319 `"Guatemala"', add
label define es01a_prevmun_lbl 66320 `"Haiti"', add
label define es01a_prevmun_lbl 66321 `"Honduras"', add
label define es01a_prevmun_lbl 66322 `"Jamaica"', add
label define es01a_prevmun_lbl 66323 `"Nicaragua"', add
label define es01a_prevmun_lbl 66324 `"Panama"', add
label define es01a_prevmun_lbl 66326 `"Dominican Republic"', add
label define es01a_prevmun_lbl 66327 `"Trinidad and Tobago"', add
label define es01a_prevmun_lbl 66328 `"Santa Lucia"', add
label define es01a_prevmun_lbl 66340 `"Argentina"', add
label define es01a_prevmun_lbl 66341 `"Bolivia"', add
label define es01a_prevmun_lbl 66342 `"Brazil"', add
label define es01a_prevmun_lbl 66343 `"Colombia"', add
label define es01a_prevmun_lbl 66344 `"Chile"', add
label define es01a_prevmun_lbl 66345 `"Ecuador"', add
label define es01a_prevmun_lbl 66346 `"Guyana"', add
label define es01a_prevmun_lbl 66347 `"Paraguay"', add
label define es01a_prevmun_lbl 66348 `"Peru"', add
label define es01a_prevmun_lbl 66350 `"Uruguay"', add
label define es01a_prevmun_lbl 66351 `"Venezuela"', add
label define es01a_prevmun_lbl 66402 `"Saudi Arabia"', add
label define es01a_prevmun_lbl 66403 `"Bahrein"', add
label define es01a_prevmun_lbl 66404 `"Bangladesh"', add
label define es01a_prevmun_lbl 66405 `"Birmania"', add
label define es01a_prevmun_lbl 66407 `"China"', add
label define es01a_prevmun_lbl 66408 `"United Arabian Emirates"', add
label define es01a_prevmun_lbl 66409 `"Philippines"', add
label define es01a_prevmun_lbl 66410 `"India"', add
label define es01a_prevmun_lbl 66411 `"Indonesia"', add
label define es01a_prevmun_lbl 66412 `"Irak"', add
label define es01a_prevmun_lbl 66413 `"Iran"', add
label define es01a_prevmun_lbl 66414 `"Israel"', add
label define es01a_prevmun_lbl 66415 `"Japan"', add
label define es01a_prevmun_lbl 66416 `"Jordanian"', add
label define es01a_prevmun_lbl 66418 `"Kuwait"', add
label define es01a_prevmun_lbl 66419 `"Laos"', add
label define es01a_prevmun_lbl 66420 `"Lebanon"', add
label define es01a_prevmun_lbl 66421 `"Malaysia"', add
label define es01a_prevmun_lbl 66422 `"Maldivas"', add
label define es01a_prevmun_lbl 66424 `"Nepal"', add
label define es01a_prevmun_lbl 66425 `"Oman"', add
label define es01a_prevmun_lbl 66426 `"Pakistan"', add
label define es01a_prevmun_lbl 66430 `"Republic of Korea"', add
label define es01a_prevmun_lbl 66432 `"Singapore"', add
label define es01a_prevmun_lbl 66433 `"Syria"', add
label define es01a_prevmun_lbl 66434 `"Sri Lanka"', add
label define es01a_prevmun_lbl 66435 `"Thailand"', add
label define es01a_prevmun_lbl 66436 `"Turkey"', add
label define es01a_prevmun_lbl 66437 `"Vietnam"', add
label define es01a_prevmun_lbl 66438 `"Taiwan"', add
label define es01a_prevmun_lbl 66441 `"Yemen"', add
label define es01a_prevmun_lbl 66442 `"Azerbaiyan"', add
label define es01a_prevmun_lbl 66443 `"Kazajstan"', add
label define es01a_prevmun_lbl 66444 `"Kirgyistan"', add
label define es01a_prevmun_lbl 66445 `"Tadyikistan"', add
label define es01a_prevmun_lbl 66447 `"Uzbekistan"', add
label define es01a_prevmun_lbl 66501 `"Australia"', add
label define es01a_prevmun_lbl 66504 `"New Zealand"', add
label define es01a_prevmun_lbl 66505 `"Papua New Guinea"', add
label define es01a_prevmun_lbl 66509 `"Vanuatu"', add
label define es01a_prevmun_lbl 66511 `"Micronesia"', add
label define es01a_prevmun_lbl 66512 `"Tuvalu"', add
label define es01a_prevmun_lbl 66600 `"Palestine"', add
label define es01a_prevmun_lbl 99999 `"NIU (not in universe)"', add
label values es01a_prevmun es01a_prevmun_lbl

label define es01a_res10_lbl 1 `"In this municipality (or had not been born yet)"'
label define es01a_res10_lbl 2 `"In another municipality or country"', add
label define es01a_res10_lbl 9 `"NIU (not in universe)"', add
label values es01a_res10 es01a_res10_lbl

label define es01a_res10prv_lbl 01 `"Álava"'
label define es01a_res10prv_lbl 02 `"Albacete"', add
label define es01a_res10prv_lbl 03 `"Alicante/Alacant"', add
label define es01a_res10prv_lbl 04 `"Almería"', add
label define es01a_res10prv_lbl 05 `"Ávila"', add
label define es01a_res10prv_lbl 06 `"Badajoz"', add
label define es01a_res10prv_lbl 07 `"Balears (Illes)"', add
label define es01a_res10prv_lbl 08 `"Barcelona"', add
label define es01a_res10prv_lbl 09 `"Burgos"', add
label define es01a_res10prv_lbl 10 `"Cáceres"', add
label define es01a_res10prv_lbl 11 `"Cádiz"', add
label define es01a_res10prv_lbl 12 `"Castellón/Castelló"', add
label define es01a_res10prv_lbl 13 `"Ciudad Real"', add
label define es01a_res10prv_lbl 14 `"Córdoba"', add
label define es01a_res10prv_lbl 15 `"Coruña (A)"', add
label define es01a_res10prv_lbl 16 `"Cuenca"', add
label define es01a_res10prv_lbl 17 `"Girona"', add
label define es01a_res10prv_lbl 18 `"Granada"', add
label define es01a_res10prv_lbl 19 `"Guadalajara"', add
label define es01a_res10prv_lbl 20 `"Guipúzcoa"', add
label define es01a_res10prv_lbl 21 `"Huelva"', add
label define es01a_res10prv_lbl 22 `"Huesca"', add
label define es01a_res10prv_lbl 23 `"Jaén"', add
label define es01a_res10prv_lbl 24 `"León"', add
label define es01a_res10prv_lbl 25 `"Lleida"', add
label define es01a_res10prv_lbl 26 `"Rioja (La)"', add
label define es01a_res10prv_lbl 27 `"Lugo"', add
label define es01a_res10prv_lbl 28 `"Madrid"', add
label define es01a_res10prv_lbl 29 `"Málaga"', add
label define es01a_res10prv_lbl 30 `"Murcia"', add
label define es01a_res10prv_lbl 31 `"Navarra"', add
label define es01a_res10prv_lbl 32 `"Ourense"', add
label define es01a_res10prv_lbl 33 `"Asturias"', add
label define es01a_res10prv_lbl 34 `"Palencia"', add
label define es01a_res10prv_lbl 35 `"Palmas (Las)"', add
label define es01a_res10prv_lbl 36 `"Pontevedra"', add
label define es01a_res10prv_lbl 37 `"Salamanca"', add
label define es01a_res10prv_lbl 38 `"Santa Cruz de Tenerife"', add
label define es01a_res10prv_lbl 39 `"Cantabria"', add
label define es01a_res10prv_lbl 40 `"Segovia"', add
label define es01a_res10prv_lbl 41 `"Sevilla"', add
label define es01a_res10prv_lbl 42 `"Soria"', add
label define es01a_res10prv_lbl 43 `"Tarragona"', add
label define es01a_res10prv_lbl 44 `"Teruel"', add
label define es01a_res10prv_lbl 45 `"Toledo"', add
label define es01a_res10prv_lbl 46 `"Valencia/València"', add
label define es01a_res10prv_lbl 47 `"Valladolid"', add
label define es01a_res10prv_lbl 48 `"Vizcaya"', add
label define es01a_res10prv_lbl 49 `"Zamora"', add
label define es01a_res10prv_lbl 50 `"Zaragoza"', add
label define es01a_res10prv_lbl 51 `"Ceuta"', add
label define es01a_res10prv_lbl 52 `"Melilla"', add
label define es01a_res10prv_lbl 66 `"Abroad"', add
label define es01a_res10prv_lbl 98 `"Unknown"', add
label define es01a_res10prv_lbl 99 `"NIU (not in universe)"', add
label values es01a_res10prv es01a_res10prv_lbl

label define es01a_indlang_lbl 1 `"Does not understand it"'
label define es01a_indlang_lbl 2 `"Only understands it"', add
label define es01a_indlang_lbl 3 `"Only understands it and knows how to read it"', add
label define es01a_indlang_lbl 4 `"Only understands it and knows how to speak it"', add
label define es01a_indlang_lbl 5 `"Understands it, knows how to speak it and read it, but cannot write it"', add
label define es01a_indlang_lbl 6 `"Understands it, knows how to speak it, read it, and write it"', add
label define es01a_indlang_lbl 9 `"NIU (not in universe)"', add
label values es01a_indlang es01a_indlang_lbl

label define es01a_emp2_lbl 01 `"Students"'
label define es01a_emp2_lbl 02 `"Employed"', add
label define es01a_emp2_lbl 03 `"Unemployed looking for first job"', add
label define es01a_emp2_lbl 04 `"Unemployed having worked previously"', add
label define es01a_emp2_lbl 05 `"Disability pension"', add
label define es01a_emp2_lbl 06 `"Pension for widows and orphans"', add
label define es01a_emp2_lbl 07 `"Retirement pension"', add
label define es01a_emp2_lbl 08 `"Volunteer work"', add
label define es01a_emp2_lbl 09 `"Unable to do basic activities without assistance"', add
label define es01a_emp2_lbl 10 `"Doing or sharing household chores"', add
label define es01a_emp2_lbl 11 `"Other situation (minors who do not study, rent earners...)"', add
label define es01a_emp2_lbl 98 `"Unknown or only one employment situation chosen"', add
label define es01a_emp2_lbl 99 `"NIU (not in universe)"', add
label values es01a_emp2 es01a_emp2_lbl

label define es01a_emp3_lbl 01 `"Students"'
label define es01a_emp3_lbl 02 `"Employed"', add
label define es01a_emp3_lbl 03 `"Unemployed looking for first job"', add
label define es01a_emp3_lbl 04 `"Unemployed having worked previously"', add
label define es01a_emp3_lbl 05 `"Disability pension"', add
label define es01a_emp3_lbl 06 `"Pension for widows and orphans"', add
label define es01a_emp3_lbl 07 `"Retirement pension"', add
label define es01a_emp3_lbl 08 `"Volunteer work"', add
label define es01a_emp3_lbl 09 `"Unable to do basic activities without assistance"', add
label define es01a_emp3_lbl 10 `"Doing or sharing household chores"', add
label define es01a_emp3_lbl 11 `"Other situation (minors who do not study, rent earners...)"', add
label define es01a_emp3_lbl 98 `"Unknown or only one employment situation chosen"', add
label define es01a_emp3_lbl 99 `"NIU (not in universe)"', add
label values es01a_emp3 es01a_emp3_lbl

label define es01a_workpl_lbl 1 `"In my own home"'
label define es01a_workpl_lbl 2 `"Several municipalities"', add
label define es01a_workpl_lbl 3 `"Same municipality as residency"', add
label define es01a_workpl_lbl 4 `"Another municipality"', add
label define es01a_workpl_lbl 5 `"In another country"', add
label define es01a_workpl_lbl 9 `"NIU (not in universe)"', add
label values es01a_workpl es01a_workpl_lbl

label define es01a_wkprov_lbl 01 `"Álava"'
label define es01a_wkprov_lbl 02 `"Albacete"', add
label define es01a_wkprov_lbl 03 `"Alicante/Alacant"', add
label define es01a_wkprov_lbl 04 `"Almería"', add
label define es01a_wkprov_lbl 05 `"Ávila"', add
label define es01a_wkprov_lbl 06 `"Badajoz"', add
label define es01a_wkprov_lbl 07 `"Balears (Illes)"', add
label define es01a_wkprov_lbl 08 `"Barcelona"', add
label define es01a_wkprov_lbl 09 `"Burgos"', add
label define es01a_wkprov_lbl 10 `"Cáceres"', add
label define es01a_wkprov_lbl 11 `"Cádiz"', add
label define es01a_wkprov_lbl 12 `"Castellón/Castelló"', add
label define es01a_wkprov_lbl 13 `"Ciudad Real"', add
label define es01a_wkprov_lbl 14 `"Córdoba"', add
label define es01a_wkprov_lbl 15 `"Coruña (A)"', add
label define es01a_wkprov_lbl 16 `"Cuenca"', add
label define es01a_wkprov_lbl 17 `"Girona"', add
label define es01a_wkprov_lbl 18 `"Granada"', add
label define es01a_wkprov_lbl 19 `"Guadalajara"', add
label define es01a_wkprov_lbl 20 `"Guipúzcoa"', add
label define es01a_wkprov_lbl 21 `"Huelva"', add
label define es01a_wkprov_lbl 22 `"Huesca"', add
label define es01a_wkprov_lbl 23 `"Jaén"', add
label define es01a_wkprov_lbl 24 `"León"', add
label define es01a_wkprov_lbl 25 `"Lleida"', add
label define es01a_wkprov_lbl 26 `"Rioja (La)"', add
label define es01a_wkprov_lbl 27 `"Lugo"', add
label define es01a_wkprov_lbl 28 `"Madrid"', add
label define es01a_wkprov_lbl 29 `"Málaga"', add
label define es01a_wkprov_lbl 30 `"Murcia"', add
label define es01a_wkprov_lbl 31 `"Navarra"', add
label define es01a_wkprov_lbl 32 `"Ourense"', add
label define es01a_wkprov_lbl 33 `"Asturias"', add
label define es01a_wkprov_lbl 34 `"Palencia"', add
label define es01a_wkprov_lbl 35 `"Palmas (Las)"', add
label define es01a_wkprov_lbl 36 `"Pontevedra"', add
label define es01a_wkprov_lbl 37 `"Salamanca"', add
label define es01a_wkprov_lbl 38 `"Santa Cruz de Tenerife"', add
label define es01a_wkprov_lbl 39 `"Cantabria"', add
label define es01a_wkprov_lbl 40 `"Segovia"', add
label define es01a_wkprov_lbl 41 `"Sevilla"', add
label define es01a_wkprov_lbl 42 `"Soria"', add
label define es01a_wkprov_lbl 43 `"Tarragona"', add
label define es01a_wkprov_lbl 44 `"Teruel"', add
label define es01a_wkprov_lbl 45 `"Toledo"', add
label define es01a_wkprov_lbl 46 `"Valencia/València"', add
label define es01a_wkprov_lbl 47 `"Valladolid"', add
label define es01a_wkprov_lbl 48 `"Vizcaya"', add
label define es01a_wkprov_lbl 49 `"Zamora"', add
label define es01a_wkprov_lbl 50 `"Zaragoza"', add
label define es01a_wkprov_lbl 51 `"Ceuta"', add
label define es01a_wkprov_lbl 52 `"Melilla"', add
label define es01a_wkprov_lbl 66 `"Abroad"', add
label define es01a_wkprov_lbl 98 `"Several municipalities"', add
label define es01a_wkprov_lbl 99 `"NIU (not in universe)"', add
label values es01a_wkprov es01a_wkprov_lbl

label define es01a_trips_lbl 1 `"None"'
label define es01a_trips_lbl 2 `"One"', add
label define es01a_trips_lbl 3 `"Two or more daily"', add
label define es01a_trips_lbl 9 `"NIU (not in universe)"', add
label values es01a_trips es01a_trips_lbl

label define es01a_trans1_lbl 01 `"Private car or microbus, driving"'
label define es01a_trans1_lbl 02 `"Private car or microbus, passenger"', add
label define es01a_trans1_lbl 03 `"Bus"', add
label define es01a_trans1_lbl 04 `"Metro"', add
label define es01a_trans1_lbl 05 `"Motorcycle"', add
label define es01a_trans1_lbl 06 `"Walking"', add
label define es01a_trans1_lbl 07 `"RENFE (train)"', add
label define es01a_trans1_lbl 08 `"Other trains"', add
label define es01a_trans1_lbl 09 `"Bicycle"', add
label define es01a_trans1_lbl 10 `"Other means"', add
label define es01a_trans1_lbl 99 `"NIU (not in universe)"', add
label values es01a_trans1 es01a_trans1_lbl

label define es01a_trans2_lbl 01 `"Private car or microbus, driving"'
label define es01a_trans2_lbl 02 `"Private car or microbus, passenger"', add
label define es01a_trans2_lbl 03 `"Bus"', add
label define es01a_trans2_lbl 04 `"Metro"', add
label define es01a_trans2_lbl 05 `"Motorcycle"', add
label define es01a_trans2_lbl 06 `"Walking"', add
label define es01a_trans2_lbl 07 `"RENFE (train)"', add
label define es01a_trans2_lbl 08 `"Other trains"', add
label define es01a_trans2_lbl 09 `"Bicycle"', add
label define es01a_trans2_lbl 10 `"Other means"', add
label define es01a_trans2_lbl 99 `"NIU (not in universe)"', add
label values es01a_trans2 es01a_trans2_lbl

label define es01a_travtime_lbl 1 `"Less than 10 minutes"'
label define es01a_travtime_lbl 2 `"10 to 20 minutes"', add
label define es01a_travtime_lbl 3 `"20 to 30 minutes"', add
label define es01a_travtime_lbl 4 `"30 to 45 minutes"', add
label define es01a_travtime_lbl 5 `"45 minutes to an hour"', add
label define es01a_travtime_lbl 6 `"1 hour to 1.5 hours"', add
label define es01a_travtime_lbl 7 `"1.5 hours +"', add
label define es01a_travtime_lbl 9 `"NIU (not in universe)"', add
label values es01a_travtime es01a_travtime_lbl

label define es01a_study1_lbl 01 `"Basic adult education"'
label define es01a_study1_lbl 02 `"Social Assistance Programs"', add
label define es01a_study1_lbl 03 `"Obligatory Secondary Education and Secondary education for adults"', add
label define es01a_study1_lbl 04 `"Baccalaureate studies, Integrated Upper Secondary Education and University Orientation Course"', add
label define es01a_study1_lbl 05 `"Official Language Schools"', add
label define es01a_study1_lbl 06 `"Artistic Studies, elementary- or mid-level"', add
label define es01a_study1_lbl 07 `"Professional Formation, mid-level or equivalent"', add
label define es01a_study1_lbl 08 `"Professional Formation, upper-level, Professional Formation II, or equivalent"', add
label define es01a_study1_lbl 09 `"University diploma studies, Architecture or Technical engineering or equivalent"', add
label define es01a_study1_lbl 10 `"University Licentiate studies, Architecture, Engineering. Or equivalent"', add
label define es01a_study1_lbl 11 `"Post-graduate studies, master, resident medical intern or equivalent"', add
label define es01a_study1_lbl 12 `"Doctoral studies"', add
label define es01a_study1_lbl 13 `"Public Service Employment courses, workshop school"', add
label define es01a_study1_lbl 14 `"Training course provided by the company"', add
label define es01a_study1_lbl 15 `"Other courses (Informatics, job training)"', add
label define es01a_study1_lbl 98 `"Unknown"', add
label define es01a_study1_lbl 99 `"NIU (not in universe)"', add
label values es01a_study1 es01a_study1_lbl

label define es01a_study2_lbl 01 `"Basic adult education"'
label define es01a_study2_lbl 02 `"Social Assistance Programs"', add
label define es01a_study2_lbl 03 `"Obligatory Secondary Education and Secondary education for adults"', add
label define es01a_study2_lbl 04 `"Baccalaureate studies, Integrated Upper Secondary Education and University Orientation Course"', add
label define es01a_study2_lbl 05 `"Official Language Schools"', add
label define es01a_study2_lbl 06 `"Artistic Studies, elementary- or mid-level"', add
label define es01a_study2_lbl 07 `"Professional Formation, mid-level or equivalent"', add
label define es01a_study2_lbl 08 `"Professional Formation, upper-level, Professional Formation II, or equivalent"', add
label define es01a_study2_lbl 09 `"University diploma studies, Architecture or Technical engineering or equivalent"', add
label define es01a_study2_lbl 10 `"University Licentiate studies, Architecture, Engineering. Or equivalent"', add
label define es01a_study2_lbl 11 `"Post-graduate studies, master, resident medical intern or equivalent"', add
label define es01a_study2_lbl 12 `"Doctoral studies"', add
label define es01a_study2_lbl 13 `"Public Service Employment courses, workshop school"', add
label define es01a_study2_lbl 14 `"Training course provided by the company"', add
label define es01a_study2_lbl 15 `"Other courses (Informatics, job training)"', add
label define es01a_study2_lbl 98 `"Unknown"', add
label define es01a_study2_lbl 99 `"NIU (not in universe)"', add
label values es01a_study2 es01a_study2_lbl

label define es01a_study3_lbl 01 `"Basic adult education"'
label define es01a_study3_lbl 02 `"Social Assistance Programs"', add
label define es01a_study3_lbl 03 `"Obligatory Secondary Education and Secondary education for adults"', add
label define es01a_study3_lbl 04 `"Baccalaureate studies, Integrated Upper Secondary Education and University Orientation Course"', add
label define es01a_study3_lbl 05 `"Official Language Schools"', add
label define es01a_study3_lbl 06 `"Artistic Studies, elementary- or mid-level"', add
label define es01a_study3_lbl 07 `"Professional Formation, mid-level or equivalent"', add
label define es01a_study3_lbl 08 `"Professional Formation, upper-level, Professional Formation II, or equivalent"', add
label define es01a_study3_lbl 09 `"University diploma studies, Architecture or Technical engineering or equivalent"', add
label define es01a_study3_lbl 10 `"University Licentiate studies, Architecture, Engineering. Or equivalent"', add
label define es01a_study3_lbl 11 `"Post-graduate studies, master, resident medical intern or equivalent"', add
label define es01a_study3_lbl 12 `"Doctoral studies"', add
label define es01a_study3_lbl 13 `"Public Service Employment courses, workshop school"', add
label define es01a_study3_lbl 14 `"Training course provided by the company"', add
label define es01a_study3_lbl 15 `"Other courses (Informatics, job training)"', add
label define es01a_study3_lbl 98 `"Unknown"', add
label define es01a_study3_lbl 99 `"NIU (not in universe)"', add
label values es01a_study3 es01a_study3_lbl

label define es01a_occ_lbl 00 `"Armed forces"'
label define es01a_occ_lbl 10 `"Executive and legislative powers and direction of public administrations; direction of organizations of interest"', add
label define es01a_occ_lbl 11 `"Direction of companies with 10 employees or more"', add
label define es01a_occ_lbl 12 `"Management of commercial businesses with 10 salaried employees or more"', add
label define es01a_occ_lbl 13 `"Management of hotel and restaurant businesses with fewer than 10 salaried employees"', add
label define es01a_occ_lbl 14 `"Management of other businesses with fewer than 10 salaried employees"', add
label define es01a_occ_lbl 15 `"Management of commercial businesses without salaried employees"', add
label define es01a_occ_lbl 16 `"Management of hotel businesses without salaried employees"', add
label define es01a_occ_lbl 17 `"Management of other businesses without salaried employees"', add
label define es01a_occ_lbl 20 `"Associate Professions with degrees from 2nd and 3rd year university studies in physical sciences, chemistry, mathematics, and engineering"', add
label define es01a_occ_lbl 21 `"Associate Professions with degrees from 2nd and 3rd year university studies in natural sciences and healthcare"', add
label define es01a_occ_lbl 22 `"Associate Professions with degrees from 2nd and 3rd year university studies in education"', add
label define es01a_occ_lbl 23 `"Legal professionals"', add
label define es01a_occ_lbl 24 `"Business organizational professionals, social science and human science professionals,  associated with degrees from 2nd and 3rd year university studies"', add
label define es01a_occ_lbl 25 `"Writers, artists, and other related professions"', add
label define es01a_occ_lbl 26 `"Associate Professions with degrees from 1st year university studies in physical sciences, chemistry, mathematics, and engineering"', add
label define es01a_occ_lbl 27 `"Associate Professions with degrees from 1st year university studies in natural sciences and healthcare, except opticians, physical therapists, and similar"', add
label define es01a_occ_lbl 28 `"Associate Professions with degrees from 1st year university studies in education"', add
label define es01a_occ_lbl 29 `"Other associate professions with degrees from 1st year university studies"', add
label define es01a_occ_lbl 30 `"Technicians in physical sciences, chemistry, and engineering"', add
label define es01a_occ_lbl 31 `"Technicians in natural sciences and healthcare"', add
label define es01a_occ_lbl 32 `"Technicians in nursery school, flight instructors, navigation and driving education"', add
label define es01a_occ_lbl 33 `"Support professionals in financial and commercial operations"', add
label define es01a_occ_lbl 34 `"Support professionals in administrative process"', add
label define es01a_occ_lbl 35 `"Other technicians and support professionals"', add
label define es01a_occ_lbl 40 `"Employees in accounting and financial services; and production and transportation support services"', add
label define es01a_occ_lbl 41 `"Employees in libraries, mail services, and similar"', add
label define es01a_occ_lbl 42 `"Operators of office machinery"', add
label define es01a_occ_lbl 43 `"Administrative assistants without public attention tasks, not classified above"', add
label define es01a_occ_lbl 44 `"Administrative assistants with public attention tasks, not classified above"', add
label define es01a_occ_lbl 45 `"Direct public service employees in travel agencies, receptionists and telephone operators"', add
label define es01a_occ_lbl 46 `"Cashiers, ticket vendors and other similar employees with direct public contact"', add
label define es01a_occ_lbl 50 `"Workers in restaurant services"', add
label define es01a_occ_lbl 51 `"Workers in personal services"', add
label define es01a_occ_lbl 52 `"Workers in protection and security services"', add
label define es01a_occ_lbl 53 `"Commercial store clerks and similar"', add
label define es01a_occ_lbl 60 `"Specialized agricultural workers"', add
label define es01a_occ_lbl 61 `"Specialized ranching workers"', add
label define es01a_occ_lbl 62 `"Specialized workers in other agricultural activities"', add
label define es01a_occ_lbl 63 `"Fishermen and specialized workers in the fishing industry"', add
label define es01a_occ_lbl 70 `"Job-site supervisors and other construction supervisors"', add
label define es01a_occ_lbl 71 `"Workers in structural construction work and similar"', add
label define es01a_occ_lbl 72 `"Workers in construction finishing work and similar; painters and similar workers"', add
label define es01a_occ_lbl 73 `"Supervisors in metal works and bosses of mechanic shops"', add
label define es01a_occ_lbl 74 `"Workers in extractive industries"', add
label define es01a_occ_lbl 75 `"Welders, laminators, metal structure assemblers, blacksmiths, toolmakers, and similar"', add
label define es01a_occ_lbl 76 `"Mechanics and adjusters of machinery and electrical and electronic machinery and equipment"', add
label define es01a_occ_lbl 77 `"Precision mechanics in metals, graphic arts workers, potters, glass workers, artisans in wood, textiles, and leather"', add
label define es01a_occ_lbl 78 `"Workers in food, beverage, and tobacco industries"', add
label define es01a_occ_lbl 79 `"Workers in wood treatments, cabinetmakers, workers in the textile industry, clothing manufacture, fur, leather, footwear and similar industries"', add
label define es01a_occ_lbl 80 `"Team leaders, and supervisors of non-mobile industrial installations"', add
label define es01a_occ_lbl 81 `"Operators of non-mobile industrial installations and similar"', add
label define es01a_occ_lbl 82 `"Supervisors of operators of non-mobile machinery"', add
label define es01a_occ_lbl 83 `"Operators of non-mobile machinery"', add
label define es01a_occ_lbl 84 `"Assemblers"', add
label define es01a_occ_lbl 85 `"Locomotive machinists, operator of agricultural machinery and heavy mobile equipment and sailors"', add
label define es01a_occ_lbl 86 `"Vehicle conductors for urban transportation and highway transportation"', add
label define es01a_occ_lbl 90 `"Non-specialized commercial workers"', add
label define es01a_occ_lbl 91 `"Domestic employees and other cleaning personnel inside buildings"', add
label define es01a_occ_lbl 92 `"Building concierges, window washers and guards"', add
label define es01a_occ_lbl 93 `"Other non-specialized service workers"', add
label define es01a_occ_lbl 94 `"Agriculture and fishing day laborers"', add
label define es01a_occ_lbl 95 `"Mining day laborers"', add
label define es01a_occ_lbl 96 `"Construction workers"', add
label define es01a_occ_lbl 97 `"Day laborers in manufacturing industries"', add
label define es01a_occ_lbl 98 `"Day laborers in transportation and unloading"', add
label define es01a_occ_lbl 99 `"NIU (not in universe)"', add
label values es01a_occ es01a_occ_lbl

label define es01a_classwk_lbl 1 `"Owner, businessman or professional who employs personnel"'
label define es01a_classwk_lbl 2 `"Businessman or professional who does not employ personnel"', add
label define es01a_classwk_lbl 3 `"Person who has a permanent job"', add
label define es01a_classwk_lbl 4 `"Person who has an occasional or temporary job"', add
label define es01a_classwk_lbl 5 `"Other situation (family help)"', add
label define es01a_classwk_lbl 6 `"Other situation (member of cooperative)"', add
label define es01a_classwk_lbl 9 `"NIU (not in universe)"', add
label values es01a_classwk es01a_classwk_lbl

label define es01a_ind_lbl 00 `"NIU (not in universe)"'
label define es01a_ind_lbl 01 `"Agriculture, ranching, hunting and related service activities"', add
label define es01a_ind_lbl 02 `"Forestry, forest extraction and related service activities"', add
label define es01a_ind_lbl 05 `"Fishing, fishing industry and related service activities"', add
label define es01a_ind_lbl 10 `"Extraction and agglomeration of anthracite, coke, lignite, and peat"', add
label define es01a_ind_lbl 11 `"Extraction of crude petroleum and natural gas, service activities related to petroleum and gas, except prospecting activities"', add
label define es01a_ind_lbl 12 `"Extraction of uranium and thorium minerals"', add
label define es01a_ind_lbl 13 `"Extraction of metal minerals"', add
label define es01a_ind_lbl 14 `"Extraction of non-metal minerals and non-energy minerals"', add
label define es01a_ind_lbl 15 `"Food and beverage industries"', add
label define es01a_ind_lbl 16 `"Tobacco industry"', add
label define es01a_ind_lbl 17 `"Textile industry"', add
label define es01a_ind_lbl 18 `"Clothing and leather industries"', add
label define es01a_ind_lbl 19 `"Leather preparation, tanning, and finishing; manufacture of bags and luggage, tack, leatherworks, and footwear"', add
label define es01a_ind_lbl 20 `"Wood and cork industries, except furniture; basket and palm weaving"', add
label define es01a_ind_lbl 21 `"Paper industry"', add
label define es01a_ind_lbl 22 `"Editing, graphic arts, and reproduction of recording materials"', add
label define es01a_ind_lbl 23 `"Coke works, petroleum refining, nuclear fuel treatment"', add
label define es01a_ind_lbl 24 `"Chemical industry"', add
label define es01a_ind_lbl 25 `"Manufacture of rubber products and plastic materials"', add
label define es01a_ind_lbl 26 `"Manufacture of other non-metal mineral products"', add
label define es01a_ind_lbl 27 `"Metallurgy"', add
label define es01a_ind_lbl 28 `"Manufacture of metal products, except machinery and equipment"', add
label define es01a_ind_lbl 29 `"Machinery and mechanical equipment manufacturing industry"', add
label define es01a_ind_lbl 30 `"Manufacture of office machinery and informatics equipment"', add
label define es01a_ind_lbl 31 `"Manufacture of electrical machinery and materials"', add
label define es01a_ind_lbl 32 `"Manufacture of electronic material; manufacture of radio, television, and communications equipment and appliances"', add
label define es01a_ind_lbl 33 `"Manufacture of medical-surgical equipment and instruments, precision and optical instruments, watch making"', add
label define es01a_ind_lbl 34 `"Manufacture of motor vehicles, tow trucks and semi-trailer trucks"', add
label define es01a_ind_lbl 35 `"Manufacture or other transportation material"', add
label define es01a_ind_lbl 36 `"Manufacture of furniture; other manufacturing industries"', add
label define es01a_ind_lbl 37 `"Recycling"', add
label define es01a_ind_lbl 40 `"Production and distribution of electrical energy, gas, vapor and hot water"', add
label define es01a_ind_lbl 41 `"Water collection, purification, and distribution"', add
label define es01a_ind_lbl 45 `"Construction"', add
label define es01a_ind_lbl 50 `"Sale, maintenance, and repair of motor vehicles, motorcycles, cycle motors; retail sale of motor vehicle fuels"', add
label define es01a_ind_lbl 51 `"Wholesale commerce and commercial middle-men, except motor vehicles and motorcycles"', add
label define es01a_ind_lbl 52 `"Retail commerce, except motor vehicles, motor cycles and cycle motors; repair of personal items and household goods"', add
label define es01a_ind_lbl 55 `"Hotel industry"', add
label define es01a_ind_lbl 60 `"Land transportation, pipeline transportation"', add
label define es01a_ind_lbl 61 `"Maritime, coastal and fluvial transportation"', add
label define es01a_ind_lbl 62 `"Air and space transportation"', add
label define es01a_ind_lbl 63 `"Activities related to transportation; travel agency activities"', add
label define es01a_ind_lbl 64 `"Mail and telecommunications"', add
label define es01a_ind_lbl 65 `"Financial services, except insurance and pension plans"', add
label define es01a_ind_lbl 66 `"Insurance and pension plans, except obligatory social security"', add
label define es01a_ind_lbl 67 `"Activities related to financial services"', add
label define es01a_ind_lbl 70 `"Real estate activities"', add
label define es01a_ind_lbl 71 `"Rental of machinery and equipment without operators, personal items and household goods"', add
label define es01a_ind_lbl 72 `"Informatics activities"', add
label define es01a_ind_lbl 73 `"Research and development"', add
label define es01a_ind_lbl 74 `"Other business activities"', add
label define es01a_ind_lbl 75 `"Public administration, defense and obligatory social security"', add
label define es01a_ind_lbl 80 `"Education"', add
label define es01a_ind_lbl 85 `"Healthcare and veterinary activities, social services"', add
label define es01a_ind_lbl 90 `"Public sanitation activities"', add
label define es01a_ind_lbl 91 `"Associated activities"', add
label define es01a_ind_lbl 92 `"Recreational, cultural, sports activities"', add
label define es01a_ind_lbl 93 `"Diverse personal service activities"', add
label define es01a_ind_lbl 95 `"Households that employ domestic personnel"', add
label define es01a_ind_lbl 99 `"Extraterritorial organizations"', add
label values es01a_ind es01a_ind_lbl

label define es01a_socecon_lbl 01 `"Salaried agricultural businessmen"'
label define es01a_socecon_lbl 02 `"Non-salaried agricultural businessmen"', add
label define es01a_socecon_lbl 03 `"Members of agricultural cooperatives"', add
label define es01a_socecon_lbl 04 `"Directors and bosses of agricultural businesses and enterprises"', add
label define es01a_socecon_lbl 05 `"Remaining agricultural workers"', add
label define es01a_socecon_lbl 06 `"Professionals, technicians, and similar who are self-employed in their activity, with or without salary"', add
label define es01a_socecon_lbl 07 `"Non-agricultural businessmen with salaries"', add
label define es01a_socecon_lbl 08 `"Non-agricultural businessmen without salary"', add
label define es01a_socecon_lbl 09 `"Members of non-agricultural cooperatives"', add
label define es01a_socecon_lbl 10 `"Directors and bosses of non-agricultural businesses and associations, directive personnel of public administration and members of state organizations, autonomous communities and local corporations"', add
label define es01a_socecon_lbl 11 `"Professionals, technicians and similar who practice their profession as employees of someone else"', add
label define es01a_socecon_lbl 12 `"Personnel in occupations specific to public administration"', add
label define es01a_socecon_lbl 13 `"Remaining administrative and commercial personnel"', add
label define es01a_socecon_lbl 14 `"Remaining service personnel"', add
label define es01a_socecon_lbl 15 `"Non-agricultural supervisors and overseers"', add
label define es01a_socecon_lbl 16 `"Non-agricultural qualified and specialized operators"', add
label define es01a_socecon_lbl 17 `"Non-agricultural non-specialized operators"', add
label define es01a_socecon_lbl 18 `"Professionals in the armed forces"', add
label define es01a_socecon_lbl 19 `"Not classifiable by socioeconomic condition"', add
label define es01a_socecon_lbl 99 `"NIU (not in universe)"', add
label values es01a_socecon es01a_socecon_lbl

label define es01a_wkhrs_lbl 00 `"NIU (not in universe)"'
label define es01a_wkhrs_lbl 01 `"1"', add
label define es01a_wkhrs_lbl 02 `"2"', add
label define es01a_wkhrs_lbl 03 `"3"', add
label define es01a_wkhrs_lbl 04 `"4"', add
label define es01a_wkhrs_lbl 05 `"5"', add
label define es01a_wkhrs_lbl 06 `"6"', add
label define es01a_wkhrs_lbl 07 `"7"', add
label define es01a_wkhrs_lbl 08 `"8"', add
label define es01a_wkhrs_lbl 09 `"9"', add
label define es01a_wkhrs_lbl 10 `"10"', add
label define es01a_wkhrs_lbl 11 `"11"', add
label define es01a_wkhrs_lbl 12 `"12"', add
label define es01a_wkhrs_lbl 13 `"13"', add
label define es01a_wkhrs_lbl 14 `"14"', add
label define es01a_wkhrs_lbl 15 `"15"', add
label define es01a_wkhrs_lbl 16 `"16"', add
label define es01a_wkhrs_lbl 17 `"17"', add
label define es01a_wkhrs_lbl 18 `"18"', add
label define es01a_wkhrs_lbl 19 `"19"', add
label define es01a_wkhrs_lbl 20 `"20"', add
label define es01a_wkhrs_lbl 21 `"21"', add
label define es01a_wkhrs_lbl 22 `"22"', add
label define es01a_wkhrs_lbl 23 `"23"', add
label define es01a_wkhrs_lbl 24 `"24"', add
label define es01a_wkhrs_lbl 25 `"25"', add
label define es01a_wkhrs_lbl 26 `"26"', add
label define es01a_wkhrs_lbl 27 `"27"', add
label define es01a_wkhrs_lbl 28 `"28"', add
label define es01a_wkhrs_lbl 29 `"29"', add
label define es01a_wkhrs_lbl 30 `"30"', add
label define es01a_wkhrs_lbl 31 `"31"', add
label define es01a_wkhrs_lbl 32 `"32"', add
label define es01a_wkhrs_lbl 33 `"33"', add
label define es01a_wkhrs_lbl 34 `"34"', add
label define es01a_wkhrs_lbl 35 `"35"', add
label define es01a_wkhrs_lbl 36 `"36"', add
label define es01a_wkhrs_lbl 37 `"37"', add
label define es01a_wkhrs_lbl 38 `"38"', add
label define es01a_wkhrs_lbl 39 `"39"', add
label define es01a_wkhrs_lbl 40 `"40"', add
label define es01a_wkhrs_lbl 41 `"41"', add
label define es01a_wkhrs_lbl 42 `"42"', add
label define es01a_wkhrs_lbl 43 `"43"', add
label define es01a_wkhrs_lbl 44 `"44"', add
label define es01a_wkhrs_lbl 45 `"45"', add
label define es01a_wkhrs_lbl 46 `"46"', add
label define es01a_wkhrs_lbl 47 `"47"', add
label define es01a_wkhrs_lbl 48 `"48"', add
label define es01a_wkhrs_lbl 49 `"49"', add
label define es01a_wkhrs_lbl 50 `"50"', add
label define es01a_wkhrs_lbl 51 `"51"', add
label define es01a_wkhrs_lbl 52 `"52"', add
label define es01a_wkhrs_lbl 53 `"53"', add
label define es01a_wkhrs_lbl 54 `"54"', add
label define es01a_wkhrs_lbl 55 `"55"', add
label define es01a_wkhrs_lbl 56 `"56"', add
label define es01a_wkhrs_lbl 57 `"57"', add
label define es01a_wkhrs_lbl 58 `"58"', add
label define es01a_wkhrs_lbl 59 `"59"', add
label define es01a_wkhrs_lbl 60 `"60"', add
label define es01a_wkhrs_lbl 61 `"61"', add
label define es01a_wkhrs_lbl 62 `"62"', add
label define es01a_wkhrs_lbl 63 `"63"', add
label define es01a_wkhrs_lbl 64 `"64"', add
label define es01a_wkhrs_lbl 65 `"65"', add
label define es01a_wkhrs_lbl 66 `"66"', add
label define es01a_wkhrs_lbl 67 `"67"', add
label define es01a_wkhrs_lbl 68 `"68"', add
label define es01a_wkhrs_lbl 69 `"69"', add
label define es01a_wkhrs_lbl 70 `"70"', add
label define es01a_wkhrs_lbl 71 `"71"', add
label define es01a_wkhrs_lbl 72 `"72"', add
label define es01a_wkhrs_lbl 73 `"73"', add
label define es01a_wkhrs_lbl 74 `"74"', add
label define es01a_wkhrs_lbl 75 `"75"', add
label define es01a_wkhrs_lbl 76 `"76"', add
label define es01a_wkhrs_lbl 77 `"77"', add
label define es01a_wkhrs_lbl 78 `"78"', add
label define es01a_wkhrs_lbl 79 `"79"', add
label define es01a_wkhrs_lbl 80 `"80"', add
label define es01a_wkhrs_lbl 81 `"81"', add
label define es01a_wkhrs_lbl 82 `"82"', add
label define es01a_wkhrs_lbl 83 `"83"', add
label define es01a_wkhrs_lbl 84 `"84"', add
label define es01a_wkhrs_lbl 85 `"85"', add
label define es01a_wkhrs_lbl 86 `"86"', add
label define es01a_wkhrs_lbl 87 `"87"', add
label define es01a_wkhrs_lbl 88 `"88"', add
label define es01a_wkhrs_lbl 89 `"89"', add
label define es01a_wkhrs_lbl 90 `"90"', add
label define es01a_wkhrs_lbl 91 `"91"', add
label define es01a_wkhrs_lbl 92 `"92"', add
label define es01a_wkhrs_lbl 93 `"93"', add
label define es01a_wkhrs_lbl 94 `"94"', add
label define es01a_wkhrs_lbl 95 `"95"', add
label define es01a_wkhrs_lbl 96 `"96"', add
label define es01a_wkhrs_lbl 97 `"97"', add
label define es01a_wkhrs_lbl 98 `"98"', add
label define es01a_wkhrs_lbl 99 `"99"', add
label values es01a_wkhrs es01a_wkhrs_lbl

label define es01a_famnum_lbl 0 `"0"'
label define es01a_famnum_lbl 1 `"1"', add
label define es01a_famnum_lbl 2 `"2"', add
label define es01a_famnum_lbl 3 `"3"', add
label define es01a_famnum_lbl 4 `"4"', add
label define es01a_famnum_lbl 5 `"5"', add
label define es01a_famnum_lbl 9 `"NIU (not in universe)"', add
label values es01a_famnum es01a_famnum_lbl

label define es01a_poploc_lbl 01 `"1"'
label define es01a_poploc_lbl 02 `"2"', add
label define es01a_poploc_lbl 03 `"3"', add
label define es01a_poploc_lbl 04 `"4"', add
label define es01a_poploc_lbl 05 `"5"', add
label define es01a_poploc_lbl 06 `"6"', add
label define es01a_poploc_lbl 07 `"7"', add
label define es01a_poploc_lbl 08 `"8"', add
label define es01a_poploc_lbl 09 `"9"', add
label define es01a_poploc_lbl 10 `"10"', add
label define es01a_poploc_lbl 11 `"11"', add
label define es01a_poploc_lbl 12 `"12"', add
label define es01a_poploc_lbl 13 `"13"', add
label define es01a_poploc_lbl 14 `"14"', add
label define es01a_poploc_lbl 15 `"15"', add
label define es01a_poploc_lbl 16 `"16"', add
label define es01a_poploc_lbl 17 `"17"', add
label define es01a_poploc_lbl 18 `"18"', add
label define es01a_poploc_lbl 19 `"19"', add
label define es01a_poploc_lbl 20 `"20"', add
label define es01a_poploc_lbl 99 `"Unknown"', add
label values es01a_poploc es01a_poploc_lbl

label define es01a_momloc_lbl 01 `"1"'
label define es01a_momloc_lbl 02 `"2"', add
label define es01a_momloc_lbl 03 `"3"', add
label define es01a_momloc_lbl 04 `"4"', add
label define es01a_momloc_lbl 05 `"5"', add
label define es01a_momloc_lbl 06 `"6"', add
label define es01a_momloc_lbl 07 `"7"', add
label define es01a_momloc_lbl 08 `"8"', add
label define es01a_momloc_lbl 09 `"9"', add
label define es01a_momloc_lbl 10 `"10"', add
label define es01a_momloc_lbl 11 `"11"', add
label define es01a_momloc_lbl 12 `"12"', add
label define es01a_momloc_lbl 13 `"13"', add
label define es01a_momloc_lbl 14 `"14"', add
label define es01a_momloc_lbl 15 `"15"', add
label define es01a_momloc_lbl 16 `"16"', add
label define es01a_momloc_lbl 17 `"17"', add
label define es01a_momloc_lbl 18 `"18"', add
label define es01a_momloc_lbl 19 `"19"', add
label define es01a_momloc_lbl 20 `"20"', add
label define es01a_momloc_lbl 21 `"21"', add
label define es01a_momloc_lbl 99 `"Unknown"', add
label values es01a_momloc es01a_momloc_lbl

label define es01a_sploc_lbl 01 `"1"'
label define es01a_sploc_lbl 02 `"2"', add
label define es01a_sploc_lbl 03 `"3"', add
label define es01a_sploc_lbl 04 `"4"', add
label define es01a_sploc_lbl 05 `"5"', add
label define es01a_sploc_lbl 06 `"6"', add
label define es01a_sploc_lbl 07 `"7"', add
label define es01a_sploc_lbl 08 `"8"', add
label define es01a_sploc_lbl 09 `"9"', add
label define es01a_sploc_lbl 10 `"10"', add
label define es01a_sploc_lbl 11 `"11"', add
label define es01a_sploc_lbl 12 `"12"', add
label define es01a_sploc_lbl 13 `"13"', add
label define es01a_sploc_lbl 14 `"14"', add
label define es01a_sploc_lbl 15 `"15"', add
label define es01a_sploc_lbl 16 `"16"', add
label define es01a_sploc_lbl 17 `"17"', add
label define es01a_sploc_lbl 18 `"18"', add
label define es01a_sploc_lbl 19 `"19"', add
label define es01a_sploc_lbl 20 `"20"', add
label define es01a_sploc_lbl 21 `"21"', add
label define es01a_sploc_lbl 22 `"22"', add
label define es01a_sploc_lbl 99 `"Unknown"', add
label values es01a_sploc es01a_sploc_lbl

label define es01a_nucfam_lbl 0 `"Does not belong to a nuclear family"'
label define es01a_nucfam_lbl 1 `"Belongs to a nuclear family as father/mother or partner"', add
label define es01a_nucfam_lbl 2 `"Belongs to a nuclear family as son/daughter"', add
label define es01a_nucfam_lbl 9 `"NIU (not in universe)"', add
label values es01a_nucfam es01a_nucfam_lbl

label define es01a_nucnum_lbl 0 `"0"'
label define es01a_nucnum_lbl 1 `"1"', add
label define es01a_nucnum_lbl 2 `"2"', add
label define es01a_nucnum_lbl 3 `"3"', add
label define es01a_nucnum_lbl 4 `"4"', add
label define es01a_nucnum_lbl 5 `"5"', add
label define es01a_nucnum_lbl 6 `"6"', add
label define es01a_nucnum_lbl 7 `"7"', add
label define es01a_nucnum_lbl 9 `"NIU (not in universe)"', add
label values es01a_nucnum es01a_nucnum_lbl

label define es01a_coupty1_lbl 1 `"Legal couple"'
label define es01a_coupty1_lbl 2 `"De facto couple (both unmarried)"', add
label define es01a_coupty1_lbl 3 `"Other type of de facto couple"', add
label define es01a_coupty1_lbl 9 `"NIU (not in universe)"', add
label values es01a_coupty1 es01a_coupty1_lbl

label define es01a_coupty2_lbl 1 `"Couple of two sexes"'
label define es01a_coupty2_lbl 2 `"Same sex couple, feminine"', add
label define es01a_coupty2_lbl 3 `"Same sex couple, masculine"', add
label define es01a_coupty2_lbl 9 `"NIU (not in universe)"', add
label values es01a_coupty2 es01a_coupty2_lbl


