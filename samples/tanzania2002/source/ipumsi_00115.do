* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    tz02a_dwnum     22-28    ///
  byte    tz02a_pern      29-30    ///
  byte    tz02a_fbig      31-31    ///
  byte    tz02a_region    32-33    ///
  int     tz02a_dist      34-36    ///
  byte    tz02a_urban     37-37    ///
  byte    tz02a_roof      38-38    ///
  byte    tz02a_walls     39-39    ///
  byte    tz02a_floor     40-40    ///
  byte    tz02a_rooms     41-42    ///
  byte    tz02a_fuelcook  43-43    ///
  byte    tz02a_lighting  44-44    ///
  byte    tz02a_watsrc    45-46    ///
  byte    tz02a_toilet    47-47    ///
  byte    tz02a_radio     48-48    ///
  byte    tz02a_phone     49-49    ///
  byte    tz02a_bicycle   50-50    ///
  byte    tz02a_whbarrow  51-51    ///
  byte    tz02a_iron      52-52    ///
  byte    tz02a_hoe       53-53    ///
  byte    tz02a_electric  54-54    ///
  byte    tz02a_deathser  55-55    ///
  byte    tz02a_deathsex  56-56    ///
  byte    tz02a_deathage  57-58    ///
  float   tz02a_hhwt      59-63    ///
  byte    tz02a_collect   64-64    ///
  int     pernum          65-67    ///
  float   wtper           68-75    ///
  byte    tz02a_pernum    76-77    ///
  byte    tz02a_relate    78-78    ///
  byte    tz02a_sex       79-79    ///
  byte    tz02a_age       80-81    ///
  byte    tz02a_disab     82-82    ///
  byte    tz02a_citiz     83-84    ///
  byte    tz02a_marst     85-85    ///
  byte    tz02a_falive    86-86    ///
  byte    tz02a_malive    87-87    ///
  byte    tz02a_bpl       88-89    ///
  byte    tz02a_resid     90-91    ///
  byte    tz02a_areares   92-92    ///
  byte    tz02a_resid01   93-94    ///
  byte    tz02a_area01    95-95    ///
  byte    tz02a_lit       96-96    ///
  byte    tz02a_school    97-97    ///
  byte    tz02a_edattain  98-99    ///
  byte    tz02a_activyr   100-101  ///
  byte    tz02a_activwk   102-103  ///
  byte    tz02a_classwkr  104-104  ///
  byte    tz02a_occ       105-106  ///
  byte    tz02a_ind       107-108  ///
  byte    tz02a_mchildhh  109-110  ///
  byte    tz02a_fchildhh  111-112  ///
  byte    tz02a_mchaway   113-114  ///
  byte    tz02a_mchdead   115-116  ///
  byte    tz02a_fchdead   117-118  ///
  byte    tz02a_mbirths   119-119  ///
  byte    tz02a_fbirths   120-120  ///
  byte    tz02a_chborn    121-122  ///
  byte    tz02a_chsurv    123-124  ///
  byte    tz02a_bthlstyr  125-125  ///
  byte    tz02a_mchhhu    126-127  ///
  byte    tz02a_fchhhu    128-129  ///
  byte    tz02a_mchawayu  130-131  ///
  byte    tz02a_fchawayu  132-133  ///
  byte    tz02a_mchdeadu  134-135  ///
  byte    tz02a_fchdeadu  136-137  ///
  float   tz02a_perwt     138-142  ///
  using `"ipumsi_00115.dat"'

replace tz02a_hhwt     = tz02a_hhwt     / 1000
replace wtper          = wtper          / 100
replace tz02a_perwt    = tz02a_perwt    / 1000

format serial         %10.0f
format tz02a_hhwt     %5.3f
format wtper          %8.2f
format tz02a_perwt    %5.3f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var tz02a_dwnum    `"Dwelling number"'
label var tz02a_pern     `"Number of persons in household"'
label var tz02a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var tz02a_region   `"Region"'
label var tz02a_dist     `"District"'
label var tz02a_urban    `"Urban"'
label var tz02a_roof     `"Type of roof"'
label var tz02a_walls    `"Type of walls"'
label var tz02a_floor    `"Type of floor"'
label var tz02a_rooms    `"Number of rooms used for sleeping"'
label var tz02a_fuelcook `"Energy for cooking"'
label var tz02a_lighting `"Energy for light"'
label var tz02a_watsrc   `"Source of drinking water"'
label var tz02a_toilet   `"Type of toilet"'
label var tz02a_radio    `"Radio"'
label var tz02a_phone    `"Phone"'
label var tz02a_bicycle  `"Bicycle"'
label var tz02a_whbarrow `"Wheelbarrow"'
label var tz02a_iron     `"Iron"'
label var tz02a_hoe      `"Hoe"'
label var tz02a_electric `"Electricity"'
label var tz02a_deathser `"Death in household"'
label var tz02a_deathsex `"Gender of first death in household"'
label var tz02a_deathage `"Age of first death in household"'
label var tz02a_hhwt     `"Household weight"'
label var tz02a_collect  `"Collective"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var tz02a_pernum   `"Person number (within household)"'
label var tz02a_relate   `"Relationship to head of household"'
label var tz02a_sex      `"Sex"'
label var tz02a_age      `"Age"'
label var tz02a_disab    `"Disability"'
label var tz02a_citiz    `"Citizenship"'
label var tz02a_marst    `"Marital status"'
label var tz02a_falive   `"Father alive"'
label var tz02a_malive   `"Mother alive"'
label var tz02a_bpl      `"Region or country of birth"'
label var tz02a_resid    `"Region or country of permanent residence"'
label var tz02a_areares  `"Residence type of area"'
label var tz02a_resid01  `"Region or country of residence in 2001"'
label var tz02a_area01   `"Residence type of area in 2001"'
label var tz02a_lit      `"Literacy"'
label var tz02a_school   `"School attendance"'
label var tz02a_edattain `"Educational attainment"'
label var tz02a_activyr  `"Economic activity in the last 12 months"'
label var tz02a_activwk  `"Economic activity last week"'
label var tz02a_classwkr `"Status in employment"'
label var tz02a_occ      `"Occupation last week"'
label var tz02a_ind      `"Industry last week"'
label var tz02a_mchildhh `"Male children ever born and living in the household"'
label var tz02a_fchildhh `"Female children ever born and living in the household"'
label var tz02a_mchaway  `"Male children ever born and living elsewhere"'
label var tz02a_mchdead  `"Male children dead"'
label var tz02a_fchdead  `"Female children dead"'
label var tz02a_mbirths  `"Male children born in the last 12 months"'
label var tz02a_fbirths  `"Female children born in the last 12 months"'
label var tz02a_chborn   `"Total children ever born"'
label var tz02a_chsurv   `"Total children surviving"'
label var tz02a_bthlstyr `"Births last year"'
label var tz02a_mchhhu   `"Male children in household, unedited"'
label var tz02a_fchhhu   `"Female children in household, unedited"'
label var tz02a_mchawayu `"Male children living away, unedited"'
label var tz02a_fchawayu `"Female children living away, unedited"'
label var tz02a_mchdeadu `"Male children dead, unedited"'
label var tz02a_fchdeadu `"Female children dead, unedited"'
label var tz02a_perwt    `"Person weight"'

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

label define tz02a_pern_lbl 01 `"1"'
label define tz02a_pern_lbl 02 `"2"', add
label define tz02a_pern_lbl 03 `"3"', add
label define tz02a_pern_lbl 04 `"4"', add
label define tz02a_pern_lbl 05 `"5"', add
label define tz02a_pern_lbl 06 `"6"', add
label define tz02a_pern_lbl 07 `"7"', add
label define tz02a_pern_lbl 08 `"8"', add
label define tz02a_pern_lbl 09 `"9"', add
label define tz02a_pern_lbl 10 `"10"', add
label define tz02a_pern_lbl 11 `"11"', add
label define tz02a_pern_lbl 12 `"12"', add
label define tz02a_pern_lbl 13 `"13"', add
label define tz02a_pern_lbl 14 `"14"', add
label define tz02a_pern_lbl 15 `"15"', add
label define tz02a_pern_lbl 16 `"16"', add
label define tz02a_pern_lbl 17 `"17"', add
label define tz02a_pern_lbl 18 `"18"', add
label define tz02a_pern_lbl 19 `"19"', add
label define tz02a_pern_lbl 20 `"20"', add
label define tz02a_pern_lbl 21 `"21"', add
label define tz02a_pern_lbl 22 `"22"', add
label define tz02a_pern_lbl 23 `"23"', add
label define tz02a_pern_lbl 24 `"24"', add
label define tz02a_pern_lbl 25 `"25"', add
label define tz02a_pern_lbl 26 `"26"', add
label define tz02a_pern_lbl 27 `"27"', add
label define tz02a_pern_lbl 28 `"28"', add
label define tz02a_pern_lbl 29 `"29"', add
label define tz02a_pern_lbl 30 `"30"', add
label values tz02a_pern tz02a_pern_lbl

label define tz02a_fbig_lbl 0 `"No problem"'
label define tz02a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define tz02a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values tz02a_fbig tz02a_fbig_lbl

label define tz02a_region_lbl 01 `"Dodoma"'
label define tz02a_region_lbl 02 `"Arusha"', add
label define tz02a_region_lbl 03 `"Kilimanjaro"', add
label define tz02a_region_lbl 04 `"Tanga"', add
label define tz02a_region_lbl 05 `"Morogoro"', add
label define tz02a_region_lbl 06 `"Pwani"', add
label define tz02a_region_lbl 07 `"Dar es salaam"', add
label define tz02a_region_lbl 08 `"Lindi"', add
label define tz02a_region_lbl 09 `"Mtwara"', add
label define tz02a_region_lbl 10 `"Ruvuma"', add
label define tz02a_region_lbl 11 `"Iringa"', add
label define tz02a_region_lbl 12 `"Mbeya"', add
label define tz02a_region_lbl 13 `"Singida"', add
label define tz02a_region_lbl 14 `"Tabora"', add
label define tz02a_region_lbl 15 `"Rukwa"', add
label define tz02a_region_lbl 16 `"Kigoma"', add
label define tz02a_region_lbl 17 `"Shinyanga"', add
label define tz02a_region_lbl 18 `"Kagera"', add
label define tz02a_region_lbl 19 `"Mwanza"', add
label define tz02a_region_lbl 20 `"Mara"', add
label define tz02a_region_lbl 21 `"Manyara"', add
label define tz02a_region_lbl 51 `"Zanzibar north"', add
label define tz02a_region_lbl 52 `"Zanzibar south"', add
label define tz02a_region_lbl 53 `"Zanzibar town/west"', add
label define tz02a_region_lbl 54 `"Pemba north"', add
label define tz02a_region_lbl 55 `"Pemba south"', add
label values tz02a_region tz02a_region_lbl

label define tz02a_dist_lbl 011 `"Kondoa"'
label define tz02a_dist_lbl 012 `"Mpwapwa"', add
label define tz02a_dist_lbl 013 `"Kongwa"', add
label define tz02a_dist_lbl 014 `"Dodoma rural"', add
label define tz02a_dist_lbl 015 `"Dodoma urban"', add
label define tz02a_dist_lbl 021 `"Monduli"', add
label define tz02a_dist_lbl 022 `"Arumeru"', add
label define tz02a_dist_lbl 023 `"Arusha"', add
label define tz02a_dist_lbl 024 `"Karatu"', add
label define tz02a_dist_lbl 025 `"Ngorongoro"', add
label define tz02a_dist_lbl 031 `"Rombo"', add
label define tz02a_dist_lbl 032 `"Mwanga"', add
label define tz02a_dist_lbl 033 `"Same"', add
label define tz02a_dist_lbl 034 `"Moshi rural"', add
label define tz02a_dist_lbl 035 `"Hai"', add
label define tz02a_dist_lbl 036 `"Moshi urban"', add
label define tz02a_dist_lbl 041 `"Lushoto"', add
label define tz02a_dist_lbl 042 `"Korogwe"', add
label define tz02a_dist_lbl 043 `"Muheza"', add
label define tz02a_dist_lbl 044 `"Tanga"', add
label define tz02a_dist_lbl 045 `"Pangani"', add
label define tz02a_dist_lbl 046 `"Handeni"', add
label define tz02a_dist_lbl 047 `"Kilindi"', add
label define tz02a_dist_lbl 051 `"Kilosa"', add
label define tz02a_dist_lbl 052 `"Morogoro rural"', add
label define tz02a_dist_lbl 053 `"Kilombero"', add
label define tz02a_dist_lbl 054 `"Ulanga"', add
label define tz02a_dist_lbl 055 `"Morogoro urban"', add
label define tz02a_dist_lbl 056 `"Mvomero"', add
label define tz02a_dist_lbl 061 `"Bagamoyo"', add
label define tz02a_dist_lbl 062 `"Kibaha"', add
label define tz02a_dist_lbl 063 `"Kisarawe"', add
label define tz02a_dist_lbl 064 `"Mkuranga"', add
label define tz02a_dist_lbl 065 `"Rufiji"', add
label define tz02a_dist_lbl 066 `"Mafia"', add
label define tz02a_dist_lbl 071 `"Kinondoni"', add
label define tz02a_dist_lbl 072 `"Ilala"', add
label define tz02a_dist_lbl 073 `"Temeke"', add
label define tz02a_dist_lbl 081 `"Kilwa"', add
label define tz02a_dist_lbl 082 `"Lindi rural"', add
label define tz02a_dist_lbl 083 `"Nachingwea"', add
label define tz02a_dist_lbl 084 `"Liwale"', add
label define tz02a_dist_lbl 085 `"Ruangwa"', add
label define tz02a_dist_lbl 086 `"Lindi urban"', add
label define tz02a_dist_lbl 091 `"Mtwara rural"', add
label define tz02a_dist_lbl 092 `"Newala"', add
label define tz02a_dist_lbl 093 `"Masasi"', add
label define tz02a_dist_lbl 094 `"Tandahimba"', add
label define tz02a_dist_lbl 095 `"Mtwara urban"', add
label define tz02a_dist_lbl 101 `"Tunduru"', add
label define tz02a_dist_lbl 102 `"Songea rural"', add
label define tz02a_dist_lbl 103 `"Mbinga"', add
label define tz02a_dist_lbl 104 `"Songea urban"', add
label define tz02a_dist_lbl 105 `"Namtumbo"', add
label define tz02a_dist_lbl 111 `"Iringa rural"', add
label define tz02a_dist_lbl 112 `"Mufindi"', add
label define tz02a_dist_lbl 113 `"Makete"', add
label define tz02a_dist_lbl 114 `"Njombe"', add
label define tz02a_dist_lbl 115 `"Ludewa"', add
label define tz02a_dist_lbl 116 `"Iringa urban"', add
label define tz02a_dist_lbl 117 `"Kilolo"', add
label define tz02a_dist_lbl 121 `"Chunya"', add
label define tz02a_dist_lbl 122 `"Mbeya rural"', add
label define tz02a_dist_lbl 123 `"Kyela"', add
label define tz02a_dist_lbl 124 `"Rungwe"', add
label define tz02a_dist_lbl 125 `"Ileje"', add
label define tz02a_dist_lbl 126 `"Mbozi"', add
label define tz02a_dist_lbl 127 `"Mbarali"', add
label define tz02a_dist_lbl 128 `"Mbeya urban"', add
label define tz02a_dist_lbl 131 `"Iramba"', add
label define tz02a_dist_lbl 132 `"Singida rural"', add
label define tz02a_dist_lbl 133 `"Manyoni"', add
label define tz02a_dist_lbl 134 `"Singida urban"', add
label define tz02a_dist_lbl 141 `"Nzega"', add
label define tz02a_dist_lbl 142 `"Igunga"', add
label define tz02a_dist_lbl 143 `"Uyui"', add
label define tz02a_dist_lbl 144 `"Urambo"', add
label define tz02a_dist_lbl 145 `"Sikonge"', add
label define tz02a_dist_lbl 146 `"Tabora urban"', add
label define tz02a_dist_lbl 151 `"Mpanda"', add
label define tz02a_dist_lbl 152 `"Sumbawanga rural"', add
label define tz02a_dist_lbl 153 `"Nkasi"', add
label define tz02a_dist_lbl 154 `"Sumbawanga urban"', add
label define tz02a_dist_lbl 161 `"Kibondo"', add
label define tz02a_dist_lbl 162 `"Kasulu"', add
label define tz02a_dist_lbl 163 `"Kigoma rural"', add
label define tz02a_dist_lbl 164 `"Kigoma urban"', add
label define tz02a_dist_lbl 171 `"Bariadi"', add
label define tz02a_dist_lbl 172 `"Maswa"', add
label define tz02a_dist_lbl 173 `"Shinyanga rural"', add
label define tz02a_dist_lbl 174 `"Kahama"', add
label define tz02a_dist_lbl 175 `"Bukombe"', add
label define tz02a_dist_lbl 176 `"Meatu"', add
label define tz02a_dist_lbl 177 `"Shinyanga urban"', add
label define tz02a_dist_lbl 178 `"Kishapu"', add
label define tz02a_dist_lbl 181 `"Karagwe"', add
label define tz02a_dist_lbl 182 `"Bukoba rural"', add
label define tz02a_dist_lbl 183 `"Muleba"', add
label define tz02a_dist_lbl 184 `"Biharamulo"', add
label define tz02a_dist_lbl 185 `"Ngara"', add
label define tz02a_dist_lbl 186 `"Bukoba urban"', add
label define tz02a_dist_lbl 191 `"Ukerewe"', add
label define tz02a_dist_lbl 192 `"Magu"', add
label define tz02a_dist_lbl 193 `"Nyamagana"', add
label define tz02a_dist_lbl 194 `"Kwimba"', add
label define tz02a_dist_lbl 195 `"Sengerema"', add
label define tz02a_dist_lbl 196 `"Geita"', add
label define tz02a_dist_lbl 197 `"Misungwi"', add
label define tz02a_dist_lbl 198 `"Ilemela"', add
label define tz02a_dist_lbl 201 `"Tarime"', add
label define tz02a_dist_lbl 202 `"Serengeti"', add
label define tz02a_dist_lbl 203 `"Musoma rural"', add
label define tz02a_dist_lbl 204 `"Bunda"', add
label define tz02a_dist_lbl 205 `"Musoma urban"', add
label define tz02a_dist_lbl 211 `"Babati"', add
label define tz02a_dist_lbl 212 `"Hanang"', add
label define tz02a_dist_lbl 213 `"Mbulu"', add
label define tz02a_dist_lbl 214 `"Simanjiro"', add
label define tz02a_dist_lbl 215 `"Kiteto"', add
label define tz02a_dist_lbl 511 `"North 'A'"', add
label define tz02a_dist_lbl 512 `"North 'B'"', add
label define tz02a_dist_lbl 521 `"Central"', add
label define tz02a_dist_lbl 522 `"South"', add
label define tz02a_dist_lbl 531 `"West"', add
label define tz02a_dist_lbl 532 `"Urban"', add
label define tz02a_dist_lbl 541 `"Wete"', add
label define tz02a_dist_lbl 542 `"Micheweni"', add
label define tz02a_dist_lbl 551 `"Chake Chake"', add
label define tz02a_dist_lbl 552 `"Mkoani"', add
label values tz02a_dist tz02a_dist_lbl

label define tz02a_urban_lbl 1 `"Rural"'
label define tz02a_urban_lbl 2 `"Urban"', add
label values tz02a_urban tz02a_urban_lbl

label define tz02a_roof_lbl 1 `"Iron sheets"'
label define tz02a_roof_lbl 2 `"Tiles"', add
label define tz02a_roof_lbl 3 `"Concrete"', add
label define tz02a_roof_lbl 4 `"Asbestos"', add
label define tz02a_roof_lbl 5 `"Grass"', add
label define tz02a_roof_lbl 6 `"Grass and mud"', add
label define tz02a_roof_lbl 7 `"Other type not specified"', add
label define tz02a_roof_lbl 9 `"NIU (not in universe)"', add
label values tz02a_roof tz02a_roof_lbl

label define tz02a_walls_lbl 1 `"Stones"'
label define tz02a_walls_lbl 2 `"Cement bricks"', add
label define tz02a_walls_lbl 3 `"Sundried bricks"', add
label define tz02a_walls_lbl 4 `"Baked bricks"', add
label define tz02a_walls_lbl 5 `"Poles and mud"', add
label define tz02a_walls_lbl 6 `"Timber"', add
label define tz02a_walls_lbl 7 `"Grass"', add
label define tz02a_walls_lbl 8 `"Other type not specified"', add
label define tz02a_walls_lbl 9 `"NIU (not in universe)"', add
label values tz02a_walls tz02a_walls_lbl

label define tz02a_floor_lbl 1 `"Cement"'
label define tz02a_floor_lbl 2 `"Mud"', add
label define tz02a_floor_lbl 3 `"Timber"', add
label define tz02a_floor_lbl 4 `"Tiles"', add
label define tz02a_floor_lbl 5 `"Other type not specified"', add
label define tz02a_floor_lbl 9 `"NIU (not in universe)"', add
label values tz02a_floor tz02a_floor_lbl

label define tz02a_rooms_lbl 01 `"1"'
label define tz02a_rooms_lbl 02 `"2"', add
label define tz02a_rooms_lbl 03 `"3"', add
label define tz02a_rooms_lbl 04 `"4"', add
label define tz02a_rooms_lbl 05 `"5"', add
label define tz02a_rooms_lbl 06 `"6"', add
label define tz02a_rooms_lbl 07 `"7"', add
label define tz02a_rooms_lbl 08 `"8"', add
label define tz02a_rooms_lbl 09 `"9"', add
label define tz02a_rooms_lbl 10 `"10"', add
label define tz02a_rooms_lbl 11 `"11"', add
label define tz02a_rooms_lbl 12 `"12"', add
label define tz02a_rooms_lbl 13 `"13"', add
label define tz02a_rooms_lbl 14 `"14"', add
label define tz02a_rooms_lbl 15 `"15"', add
label define tz02a_rooms_lbl 16 `"16"', add
label define tz02a_rooms_lbl 17 `"17"', add
label define tz02a_rooms_lbl 18 `"18"', add
label define tz02a_rooms_lbl 19 `"19"', add
label define tz02a_rooms_lbl 20 `"20"', add
label define tz02a_rooms_lbl 21 `"21"', add
label define tz02a_rooms_lbl 22 `"22"', add
label define tz02a_rooms_lbl 23 `"23"', add
label define tz02a_rooms_lbl 24 `"24"', add
label define tz02a_rooms_lbl 25 `"25"', add
label define tz02a_rooms_lbl 27 `"27"', add
label define tz02a_rooms_lbl 28 `"28"', add
label define tz02a_rooms_lbl 29 `"29"', add
label define tz02a_rooms_lbl 30 `"30+"', add
label define tz02a_rooms_lbl 98 `"Unknown"', add
label define tz02a_rooms_lbl 99 `"NIU (not in universe)"', add
label values tz02a_rooms tz02a_rooms_lbl

label define tz02a_fuelcook_lbl 1 `"Electricity"'
label define tz02a_fuelcook_lbl 2 `"Kerosene/paraffin"', add
label define tz02a_fuelcook_lbl 3 `"Gas"', add
label define tz02a_fuelcook_lbl 4 `"Firewood"', add
label define tz02a_fuelcook_lbl 5 `"Charcoal"', add
label define tz02a_fuelcook_lbl 6 `"Not applicable"', add
label define tz02a_fuelcook_lbl 7 `"Other source not specified"', add
label define tz02a_fuelcook_lbl 9 `"NIU (not in universe)"', add
label values tz02a_fuelcook tz02a_fuelcook_lbl

label define tz02a_lighting_lbl 1 `"Electricity"'
label define tz02a_lighting_lbl 2 `"Lantern"', add
label define tz02a_lighting_lbl 3 `"Pressure lamp"', add
label define tz02a_lighting_lbl 4 `"Firewood"', add
label define tz02a_lighting_lbl 5 `"Candle"', add
label define tz02a_lighting_lbl 6 `"Oil lamp"', add
label define tz02a_lighting_lbl 7 `"Solar"', add
label define tz02a_lighting_lbl 8 `"Other source not specified"', add
label define tz02a_lighting_lbl 9 `"NIU (not in universe)"', add
label values tz02a_lighting tz02a_lighting_lbl

label define tz02a_watsrc_lbl 01 `"Piped water"'
label define tz02a_watsrc_lbl 02 `"Protected well"', add
label define tz02a_watsrc_lbl 03 `"Unprotected well"', add
label define tz02a_watsrc_lbl 04 `"Protected spring"', add
label define tz02a_watsrc_lbl 05 `"Unprotected spring"', add
label define tz02a_watsrc_lbl 06 `"River/stream"', add
label define tz02a_watsrc_lbl 07 `"Pond/dam"', add
label define tz02a_watsrc_lbl 08 `"Lake"', add
label define tz02a_watsrc_lbl 09 `"Rain water"', add
label define tz02a_watsrc_lbl 10 `"Water vendors"', add
label define tz02a_watsrc_lbl 99 `"NIU (not in universe)"', add
label values tz02a_watsrc tz02a_watsrc_lbl

label define tz02a_toilet_lbl 1 `"Flush toilet"'
label define tz02a_toilet_lbl 2 `"Traditional pit latrine"', add
label define tz02a_toilet_lbl 3 `"Ventilated improved pit latrine"', add
label define tz02a_toilet_lbl 4 `"No facility"', add
label define tz02a_toilet_lbl 6 `"Other type not specified"', add
label define tz02a_toilet_lbl 9 `"NIU (not in universe)"', add
label values tz02a_toilet tz02a_toilet_lbl

label define tz02a_radio_lbl 1 `"Yes"'
label define tz02a_radio_lbl 2 `"No"', add
label define tz02a_radio_lbl 9 `"NIU (not in universe)"', add
label values tz02a_radio tz02a_radio_lbl

label define tz02a_phone_lbl 1 `"Yes"'
label define tz02a_phone_lbl 2 `"No"', add
label define tz02a_phone_lbl 9 `"NIU (not in universe)"', add
label values tz02a_phone tz02a_phone_lbl

label define tz02a_bicycle_lbl 1 `"Yes"'
label define tz02a_bicycle_lbl 2 `"No"', add
label define tz02a_bicycle_lbl 9 `"NIU (not in universe)"', add
label values tz02a_bicycle tz02a_bicycle_lbl

label define tz02a_whbarrow_lbl 1 `"Yes"'
label define tz02a_whbarrow_lbl 2 `"No"', add
label define tz02a_whbarrow_lbl 9 `"NIU (not in universe)"', add
label values tz02a_whbarrow tz02a_whbarrow_lbl

label define tz02a_iron_lbl 1 `"Yes"'
label define tz02a_iron_lbl 2 `"No"', add
label define tz02a_iron_lbl 9 `"NIU (not in universe)"', add
label values tz02a_iron tz02a_iron_lbl

label define tz02a_hoe_lbl 1 `"Yes"'
label define tz02a_hoe_lbl 2 `"No"', add
label define tz02a_hoe_lbl 9 `"NIU (not in universe)"', add
label values tz02a_hoe tz02a_hoe_lbl

label define tz02a_electric_lbl 1 `"Yes"'
label define tz02a_electric_lbl 2 `"No"', add
label define tz02a_electric_lbl 9 `"NIU (not in universe)"', add
label values tz02a_electric tz02a_electric_lbl

label define tz02a_deathser_lbl 1 `"Have a death record"'
label define tz02a_deathser_lbl 2 `"No death record"', add
label values tz02a_deathser tz02a_deathser_lbl

label define tz02a_deathsex_lbl 1 `"Male"'
label define tz02a_deathsex_lbl 2 `"Female"', add
label define tz02a_deathsex_lbl 8 `"Unknown"', add
label define tz02a_deathsex_lbl 9 `"NIU (not in universe)"', add
label values tz02a_deathsex tz02a_deathsex_lbl

label define tz02a_deathage_lbl 00 `"0"'
label define tz02a_deathage_lbl 01 `"1"', add
label define tz02a_deathage_lbl 02 `"2"', add
label define tz02a_deathage_lbl 03 `"3"', add
label define tz02a_deathage_lbl 04 `"4"', add
label define tz02a_deathage_lbl 05 `"5"', add
label define tz02a_deathage_lbl 06 `"6"', add
label define tz02a_deathage_lbl 07 `"7"', add
label define tz02a_deathage_lbl 08 `"8"', add
label define tz02a_deathage_lbl 09 `"9"', add
label define tz02a_deathage_lbl 10 `"10"', add
label define tz02a_deathage_lbl 11 `"11"', add
label define tz02a_deathage_lbl 12 `"12"', add
label define tz02a_deathage_lbl 13 `"13"', add
label define tz02a_deathage_lbl 14 `"14"', add
label define tz02a_deathage_lbl 15 `"15"', add
label define tz02a_deathage_lbl 16 `"16"', add
label define tz02a_deathage_lbl 17 `"17"', add
label define tz02a_deathage_lbl 18 `"18"', add
label define tz02a_deathage_lbl 19 `"19"', add
label define tz02a_deathage_lbl 20 `"20"', add
label define tz02a_deathage_lbl 21 `"21"', add
label define tz02a_deathage_lbl 22 `"22"', add
label define tz02a_deathage_lbl 23 `"23"', add
label define tz02a_deathage_lbl 24 `"24"', add
label define tz02a_deathage_lbl 25 `"25"', add
label define tz02a_deathage_lbl 26 `"26"', add
label define tz02a_deathage_lbl 27 `"27"', add
label define tz02a_deathage_lbl 28 `"28"', add
label define tz02a_deathage_lbl 29 `"29"', add
label define tz02a_deathage_lbl 30 `"30"', add
label define tz02a_deathage_lbl 31 `"31"', add
label define tz02a_deathage_lbl 32 `"32"', add
label define tz02a_deathage_lbl 33 `"33"', add
label define tz02a_deathage_lbl 34 `"34"', add
label define tz02a_deathage_lbl 35 `"35"', add
label define tz02a_deathage_lbl 36 `"36"', add
label define tz02a_deathage_lbl 37 `"37"', add
label define tz02a_deathage_lbl 38 `"38"', add
label define tz02a_deathage_lbl 39 `"39"', add
label define tz02a_deathage_lbl 40 `"40"', add
label define tz02a_deathage_lbl 41 `"41"', add
label define tz02a_deathage_lbl 42 `"42"', add
label define tz02a_deathage_lbl 43 `"43"', add
label define tz02a_deathage_lbl 44 `"44"', add
label define tz02a_deathage_lbl 45 `"45"', add
label define tz02a_deathage_lbl 46 `"46"', add
label define tz02a_deathage_lbl 47 `"47"', add
label define tz02a_deathage_lbl 48 `"48"', add
label define tz02a_deathage_lbl 49 `"49"', add
label define tz02a_deathage_lbl 50 `"50"', add
label define tz02a_deathage_lbl 51 `"51"', add
label define tz02a_deathage_lbl 52 `"52"', add
label define tz02a_deathage_lbl 53 `"53"', add
label define tz02a_deathage_lbl 54 `"54"', add
label define tz02a_deathage_lbl 55 `"55"', add
label define tz02a_deathage_lbl 56 `"56"', add
label define tz02a_deathage_lbl 57 `"57"', add
label define tz02a_deathage_lbl 58 `"58"', add
label define tz02a_deathage_lbl 59 `"59"', add
label define tz02a_deathage_lbl 60 `"60"', add
label define tz02a_deathage_lbl 61 `"61"', add
label define tz02a_deathage_lbl 62 `"62"', add
label define tz02a_deathage_lbl 63 `"63"', add
label define tz02a_deathage_lbl 64 `"64"', add
label define tz02a_deathage_lbl 65 `"65"', add
label define tz02a_deathage_lbl 66 `"66"', add
label define tz02a_deathage_lbl 67 `"67"', add
label define tz02a_deathage_lbl 68 `"68"', add
label define tz02a_deathage_lbl 69 `"69"', add
label define tz02a_deathage_lbl 70 `"70"', add
label define tz02a_deathage_lbl 71 `"71"', add
label define tz02a_deathage_lbl 72 `"72"', add
label define tz02a_deathage_lbl 73 `"73"', add
label define tz02a_deathage_lbl 74 `"74"', add
label define tz02a_deathage_lbl 75 `"75"', add
label define tz02a_deathage_lbl 76 `"76"', add
label define tz02a_deathage_lbl 77 `"77"', add
label define tz02a_deathage_lbl 78 `"78"', add
label define tz02a_deathage_lbl 79 `"79"', add
label define tz02a_deathage_lbl 80 `"80"', add
label define tz02a_deathage_lbl 81 `"81"', add
label define tz02a_deathage_lbl 82 `"82"', add
label define tz02a_deathage_lbl 83 `"83"', add
label define tz02a_deathage_lbl 84 `"84"', add
label define tz02a_deathage_lbl 85 `"85"', add
label define tz02a_deathage_lbl 86 `"86"', add
label define tz02a_deathage_lbl 87 `"87"', add
label define tz02a_deathage_lbl 88 `"88"', add
label define tz02a_deathage_lbl 89 `"89"', add
label define tz02a_deathage_lbl 90 `"90"', add
label define tz02a_deathage_lbl 91 `"91"', add
label define tz02a_deathage_lbl 92 `"92"', add
label define tz02a_deathage_lbl 93 `"93"', add
label define tz02a_deathage_lbl 94 `"94"', add
label define tz02a_deathage_lbl 95 `"95"', add
label define tz02a_deathage_lbl 96 `"96"', add
label define tz02a_deathage_lbl 97 `"97"', add
label define tz02a_deathage_lbl 98 `"Unknown"', add
label define tz02a_deathage_lbl 99 `"NIU (not in universe)"', add
label values tz02a_deathage tz02a_deathage_lbl

label define tz02a_collect_lbl 1 `"Yes"'
label define tz02a_collect_lbl 2 `"No"', add
label values tz02a_collect tz02a_collect_lbl

label define tz02a_pernum_lbl 00 `"Household record"'
label define tz02a_pernum_lbl 01 `"1"', add
label define tz02a_pernum_lbl 02 `"2"', add
label define tz02a_pernum_lbl 03 `"3"', add
label define tz02a_pernum_lbl 04 `"4"', add
label define tz02a_pernum_lbl 05 `"5"', add
label define tz02a_pernum_lbl 06 `"6"', add
label define tz02a_pernum_lbl 07 `"7"', add
label define tz02a_pernum_lbl 08 `"8"', add
label define tz02a_pernum_lbl 09 `"9"', add
label define tz02a_pernum_lbl 10 `"10"', add
label define tz02a_pernum_lbl 11 `"11"', add
label define tz02a_pernum_lbl 12 `"12"', add
label define tz02a_pernum_lbl 13 `"13"', add
label define tz02a_pernum_lbl 14 `"14"', add
label define tz02a_pernum_lbl 15 `"15"', add
label define tz02a_pernum_lbl 16 `"16"', add
label define tz02a_pernum_lbl 17 `"17"', add
label define tz02a_pernum_lbl 18 `"18"', add
label define tz02a_pernum_lbl 19 `"19"', add
label define tz02a_pernum_lbl 20 `"20"', add
label define tz02a_pernum_lbl 21 `"21"', add
label define tz02a_pernum_lbl 22 `"22"', add
label define tz02a_pernum_lbl 23 `"23"', add
label define tz02a_pernum_lbl 24 `"24"', add
label define tz02a_pernum_lbl 25 `"25"', add
label define tz02a_pernum_lbl 26 `"26"', add
label define tz02a_pernum_lbl 27 `"27"', add
label define tz02a_pernum_lbl 28 `"28"', add
label define tz02a_pernum_lbl 29 `"29"', add
label define tz02a_pernum_lbl 30 `"30"', add
label values tz02a_pernum tz02a_pernum_lbl

label define tz02a_relate_lbl 1 `"Head"'
label define tz02a_relate_lbl 2 `"Spouse"', add
label define tz02a_relate_lbl 3 `"Son/daughter"', add
label define tz02a_relate_lbl 4 `"Parent"', add
label define tz02a_relate_lbl 5 `"Grandchild"', add
label define tz02a_relate_lbl 6 `"Other relative"', add
label define tz02a_relate_lbl 7 `"Nonrelative"', add
label values tz02a_relate tz02a_relate_lbl

label define tz02a_sex_lbl 1 `"Male"'
label define tz02a_sex_lbl 2 `"Female"', add
label values tz02a_sex tz02a_sex_lbl

label define tz02a_age_lbl 00 `"Under one year"'
label define tz02a_age_lbl 01 `"1"', add
label define tz02a_age_lbl 02 `"2"', add
label define tz02a_age_lbl 03 `"3"', add
label define tz02a_age_lbl 04 `"4"', add
label define tz02a_age_lbl 05 `"5"', add
label define tz02a_age_lbl 06 `"6"', add
label define tz02a_age_lbl 07 `"7"', add
label define tz02a_age_lbl 08 `"8"', add
label define tz02a_age_lbl 09 `"9"', add
label define tz02a_age_lbl 10 `"10"', add
label define tz02a_age_lbl 11 `"11"', add
label define tz02a_age_lbl 12 `"12"', add
label define tz02a_age_lbl 13 `"13"', add
label define tz02a_age_lbl 14 `"14"', add
label define tz02a_age_lbl 15 `"15"', add
label define tz02a_age_lbl 16 `"16"', add
label define tz02a_age_lbl 17 `"17"', add
label define tz02a_age_lbl 18 `"18"', add
label define tz02a_age_lbl 19 `"19"', add
label define tz02a_age_lbl 20 `"20"', add
label define tz02a_age_lbl 21 `"21"', add
label define tz02a_age_lbl 22 `"22"', add
label define tz02a_age_lbl 23 `"23"', add
label define tz02a_age_lbl 24 `"24"', add
label define tz02a_age_lbl 25 `"25"', add
label define tz02a_age_lbl 26 `"26"', add
label define tz02a_age_lbl 27 `"27"', add
label define tz02a_age_lbl 28 `"28"', add
label define tz02a_age_lbl 29 `"29"', add
label define tz02a_age_lbl 30 `"30"', add
label define tz02a_age_lbl 31 `"31"', add
label define tz02a_age_lbl 32 `"32"', add
label define tz02a_age_lbl 33 `"33"', add
label define tz02a_age_lbl 34 `"34"', add
label define tz02a_age_lbl 35 `"35"', add
label define tz02a_age_lbl 36 `"36"', add
label define tz02a_age_lbl 37 `"37"', add
label define tz02a_age_lbl 38 `"38"', add
label define tz02a_age_lbl 39 `"39"', add
label define tz02a_age_lbl 40 `"40"', add
label define tz02a_age_lbl 41 `"41"', add
label define tz02a_age_lbl 42 `"42"', add
label define tz02a_age_lbl 43 `"43"', add
label define tz02a_age_lbl 44 `"44"', add
label define tz02a_age_lbl 45 `"45"', add
label define tz02a_age_lbl 46 `"46"', add
label define tz02a_age_lbl 47 `"47"', add
label define tz02a_age_lbl 48 `"48"', add
label define tz02a_age_lbl 49 `"49"', add
label define tz02a_age_lbl 50 `"50"', add
label define tz02a_age_lbl 51 `"51"', add
label define tz02a_age_lbl 52 `"52"', add
label define tz02a_age_lbl 53 `"53"', add
label define tz02a_age_lbl 54 `"54"', add
label define tz02a_age_lbl 55 `"55"', add
label define tz02a_age_lbl 56 `"56"', add
label define tz02a_age_lbl 57 `"57"', add
label define tz02a_age_lbl 58 `"58"', add
label define tz02a_age_lbl 59 `"59"', add
label define tz02a_age_lbl 60 `"60"', add
label define tz02a_age_lbl 61 `"61"', add
label define tz02a_age_lbl 62 `"62"', add
label define tz02a_age_lbl 63 `"63"', add
label define tz02a_age_lbl 64 `"64"', add
label define tz02a_age_lbl 65 `"65"', add
label define tz02a_age_lbl 66 `"66"', add
label define tz02a_age_lbl 67 `"67"', add
label define tz02a_age_lbl 68 `"68"', add
label define tz02a_age_lbl 69 `"69"', add
label define tz02a_age_lbl 70 `"70"', add
label define tz02a_age_lbl 71 `"71"', add
label define tz02a_age_lbl 72 `"72"', add
label define tz02a_age_lbl 73 `"73"', add
label define tz02a_age_lbl 74 `"74"', add
label define tz02a_age_lbl 75 `"75"', add
label define tz02a_age_lbl 76 `"76"', add
label define tz02a_age_lbl 77 `"77"', add
label define tz02a_age_lbl 78 `"78"', add
label define tz02a_age_lbl 79 `"79"', add
label define tz02a_age_lbl 80 `"80"', add
label define tz02a_age_lbl 81 `"81"', add
label define tz02a_age_lbl 82 `"82"', add
label define tz02a_age_lbl 83 `"83"', add
label define tz02a_age_lbl 84 `"84"', add
label define tz02a_age_lbl 85 `"85"', add
label define tz02a_age_lbl 86 `"86"', add
label define tz02a_age_lbl 87 `"87"', add
label define tz02a_age_lbl 88 `"88"', add
label define tz02a_age_lbl 89 `"89"', add
label define tz02a_age_lbl 90 `"90"', add
label define tz02a_age_lbl 91 `"91"', add
label define tz02a_age_lbl 92 `"92"', add
label define tz02a_age_lbl 93 `"93"', add
label define tz02a_age_lbl 94 `"94"', add
label define tz02a_age_lbl 95 `"95"', add
label define tz02a_age_lbl 96 `"96"', add
label define tz02a_age_lbl 97 `"97+"', add
label values tz02a_age tz02a_age_lbl

label define tz02a_disab_lbl 1 `"Without disability"'
label define tz02a_disab_lbl 2 `"Leprosy"', add
label define tz02a_disab_lbl 3 `"Blind"', add
label define tz02a_disab_lbl 4 `"Mute"', add
label define tz02a_disab_lbl 5 `"Deaf"', add
label define tz02a_disab_lbl 6 `"Albino"', add
label define tz02a_disab_lbl 7 `"Mentally handicapped"', add
label define tz02a_disab_lbl 8 `"Multiple handicapped"', add
label values tz02a_disab tz02a_disab_lbl

label define tz02a_citiz_lbl 60 `"Tanzania"'
label define tz02a_citiz_lbl 61 `"Angola"', add
label define tz02a_citiz_lbl 62 `"Botswana"', add
label define tz02a_citiz_lbl 63 `"Burundi"', add
label define tz02a_citiz_lbl 64 `"Comoro"', add
label define tz02a_citiz_lbl 65 `"Kenya"', add
label define tz02a_citiz_lbl 66 `"Lesotho"', add
label define tz02a_citiz_lbl 67 `"Malawi"', add
label define tz02a_citiz_lbl 69 `"Mozambique"', add
label define tz02a_citiz_lbl 70 `"Namibia"', add
label define tz02a_citiz_lbl 71 `"Rwanda"', add
label define tz02a_citiz_lbl 73 `"Somalia"', add
label define tz02a_citiz_lbl 75 `"South Africa"', add
label define tz02a_citiz_lbl 76 `"Uganda"', add
label define tz02a_citiz_lbl 77 `"Republic of Congo"', add
label define tz02a_citiz_lbl 79 `"Zambia"', add
label define tz02a_citiz_lbl 80 `"Other African countries"', add
label define tz02a_citiz_lbl 81 `"India"', add
label define tz02a_citiz_lbl 82 `"Pakistan"', add
label define tz02a_citiz_lbl 83 `"Other Asian country"', add
label define tz02a_citiz_lbl 84 `"Italy"', add
label define tz02a_citiz_lbl 85 `"Nordic countries"', add
label define tz02a_citiz_lbl 86 `"Great britain"', add
label define tz02a_citiz_lbl 87 `"Germany"', add
label define tz02a_citiz_lbl 88 `"Other European country"', add
label define tz02a_citiz_lbl 89 `"Canada"', add
label define tz02a_citiz_lbl 90 `"United States"', add
label define tz02a_citiz_lbl 91 `"Other countries"', add
label values tz02a_citiz tz02a_citiz_lbl

label define tz02a_marst_lbl 1 `"Never married"'
label define tz02a_marst_lbl 2 `"Married"', add
label define tz02a_marst_lbl 3 `"Living together"', add
label define tz02a_marst_lbl 4 `"Divorced"', add
label define tz02a_marst_lbl 5 `"Separated"', add
label define tz02a_marst_lbl 6 `"Widowed"', add
label values tz02a_marst tz02a_marst_lbl

label define tz02a_falive_lbl 1 `"Yes, father alive"'
label define tz02a_falive_lbl 2 `"No, father not alive"', add
label define tz02a_falive_lbl 9 `"NIU (not in universe)"', add
label values tz02a_falive tz02a_falive_lbl

label define tz02a_malive_lbl 1 `"Yes, mother alive"'
label define tz02a_malive_lbl 2 `"No, mother not alive"', add
label define tz02a_malive_lbl 9 `"NIU (not in universe)"', add
label values tz02a_malive tz02a_malive_lbl

label define tz02a_bpl_lbl 01 `"Dodoma"'
label define tz02a_bpl_lbl 02 `"Arusha"', add
label define tz02a_bpl_lbl 03 `"Kilimanjaro"', add
label define tz02a_bpl_lbl 04 `"Tanga"', add
label define tz02a_bpl_lbl 05 `"Morogoro"', add
label define tz02a_bpl_lbl 06 `"Coast"', add
label define tz02a_bpl_lbl 07 `"Dar es Salaam"', add
label define tz02a_bpl_lbl 08 `"Lindi"', add
label define tz02a_bpl_lbl 09 `"Mtwara"', add
label define tz02a_bpl_lbl 10 `"Ruvuma"', add
label define tz02a_bpl_lbl 11 `"Iringa"', add
label define tz02a_bpl_lbl 12 `"Mbeya"', add
label define tz02a_bpl_lbl 13 `"Singida"', add
label define tz02a_bpl_lbl 14 `"Tabora"', add
label define tz02a_bpl_lbl 15 `"Rukwa"', add
label define tz02a_bpl_lbl 16 `"Kigoma"', add
label define tz02a_bpl_lbl 17 `"Shinyanga"', add
label define tz02a_bpl_lbl 18 `"Kagera"', add
label define tz02a_bpl_lbl 19 `"Mwanza"', add
label define tz02a_bpl_lbl 20 `"Mara"', add
label define tz02a_bpl_lbl 21 `"Manyara"', add
label define tz02a_bpl_lbl 51 `"Zanzibar north"', add
label define tz02a_bpl_lbl 52 `"Zanzibar south"', add
label define tz02a_bpl_lbl 53 `"Zanzibar town/west"', add
label define tz02a_bpl_lbl 54 `"Pemba north"', add
label define tz02a_bpl_lbl 55 `"Pemba south"', add
label define tz02a_bpl_lbl 61 `"Angola"', add
label define tz02a_bpl_lbl 63 `"Burundi"', add
label define tz02a_bpl_lbl 64 `"Comoro"', add
label define tz02a_bpl_lbl 65 `"Kenya"', add
label define tz02a_bpl_lbl 67 `"Malawi"', add
label define tz02a_bpl_lbl 69 `"Mozambique"', add
label define tz02a_bpl_lbl 70 `"Namibia"', add
label define tz02a_bpl_lbl 71 `"Rwanda"', add
label define tz02a_bpl_lbl 72 `"Seychelles"', add
label define tz02a_bpl_lbl 73 `"Somalia"', add
label define tz02a_bpl_lbl 75 `"South Africa"', add
label define tz02a_bpl_lbl 76 `"Uganda"', add
label define tz02a_bpl_lbl 77 `"Republic of Congo"', add
label define tz02a_bpl_lbl 78 `"Zimbabwe"', add
label define tz02a_bpl_lbl 79 `"Zambia"', add
label define tz02a_bpl_lbl 80 `"Other African countries"', add
label define tz02a_bpl_lbl 81 `"India"', add
label define tz02a_bpl_lbl 82 `"Pakistan"', add
label define tz02a_bpl_lbl 83 `"Other Asian countries"', add
label define tz02a_bpl_lbl 84 `"Italy"', add
label define tz02a_bpl_lbl 85 `"Nordic countries (Demark, Norway, Finland, Sweden)"', add
label define tz02a_bpl_lbl 86 `"Great Britain"', add
label define tz02a_bpl_lbl 87 `"Germany"', add
label define tz02a_bpl_lbl 88 `"Other European countries"', add
label define tz02a_bpl_lbl 90 `"USA"', add
label define tz02a_bpl_lbl 91 `"Other countries"', add
label define tz02a_bpl_lbl 98 `"Unknown"', add
label define tz02a_bpl_lbl 99 `"NIU (not in universe)"', add
label values tz02a_bpl tz02a_bpl_lbl

label define tz02a_resid_lbl 01 `"Dodoma"'
label define tz02a_resid_lbl 02 `"Arusha"', add
label define tz02a_resid_lbl 03 `"Kilimanjaro"', add
label define tz02a_resid_lbl 04 `"Tanga"', add
label define tz02a_resid_lbl 05 `"Morogoro"', add
label define tz02a_resid_lbl 06 `"Coast"', add
label define tz02a_resid_lbl 07 `"Dar es Salaam"', add
label define tz02a_resid_lbl 08 `"Lindi"', add
label define tz02a_resid_lbl 09 `"Mtwara"', add
label define tz02a_resid_lbl 10 `"Ruvuma"', add
label define tz02a_resid_lbl 11 `"Iringa"', add
label define tz02a_resid_lbl 12 `"Mbeya"', add
label define tz02a_resid_lbl 13 `"Singida"', add
label define tz02a_resid_lbl 14 `"Tabora"', add
label define tz02a_resid_lbl 15 `"Rukwa"', add
label define tz02a_resid_lbl 16 `"Kigoma"', add
label define tz02a_resid_lbl 17 `"Shinyanga"', add
label define tz02a_resid_lbl 18 `"Kagera"', add
label define tz02a_resid_lbl 19 `"Mwanza"', add
label define tz02a_resid_lbl 20 `"Mara"', add
label define tz02a_resid_lbl 21 `"Manyara"', add
label define tz02a_resid_lbl 51 `"Zanzibar north"', add
label define tz02a_resid_lbl 52 `"Zanzibar south"', add
label define tz02a_resid_lbl 53 `"Zanzibar town/west"', add
label define tz02a_resid_lbl 54 `"Pemba north"', add
label define tz02a_resid_lbl 55 `"Pemba south"', add
label define tz02a_resid_lbl 63 `"Burundi"', add
label define tz02a_resid_lbl 65 `"Kenya"', add
label define tz02a_resid_lbl 67 `"Malawi"', add
label define tz02a_resid_lbl 69 `"Mozambique"', add
label define tz02a_resid_lbl 71 `"Rwanda"', add
label define tz02a_resid_lbl 76 `"Uganda"', add
label define tz02a_resid_lbl 77 `"Republic of Congo"', add
label define tz02a_resid_lbl 78 `"Zimbabwe"', add
label define tz02a_resid_lbl 79 `"Zambia"', add
label define tz02a_resid_lbl 80 `"Other African countries"', add
label define tz02a_resid_lbl 81 `"India"', add
label define tz02a_resid_lbl 83 `"Other Asian countries"', add
label define tz02a_resid_lbl 88 `"European countries"', add
label define tz02a_resid_lbl 90 `"USA"', add
label define tz02a_resid_lbl 91 `"Other countries"', add
label define tz02a_resid_lbl 98 `"Unknown"', add
label define tz02a_resid_lbl 99 `"NIU (not in universe)"', add
label values tz02a_resid tz02a_resid_lbl

label define tz02a_areares_lbl 1 `"Living in rural"'
label define tz02a_areares_lbl 2 `"Regional headquarters"', add
label define tz02a_areares_lbl 3 `"District headquarters and other urban"', add
label define tz02a_areares_lbl 4 `"Outside Tanzania"', add
label define tz02a_areares_lbl 8 `"Unknown"', add
label define tz02a_areares_lbl 9 `"NIU (not in universe)"', add
label values tz02a_areares tz02a_areares_lbl

label define tz02a_resid01_lbl 01 `"Dodoma"'
label define tz02a_resid01_lbl 02 `"Arusha"', add
label define tz02a_resid01_lbl 03 `"Kilimanjaro"', add
label define tz02a_resid01_lbl 04 `"Tanga"', add
label define tz02a_resid01_lbl 05 `"Morogoro"', add
label define tz02a_resid01_lbl 06 `"Coast"', add
label define tz02a_resid01_lbl 07 `"Dar es Salaam"', add
label define tz02a_resid01_lbl 08 `"Lindi"', add
label define tz02a_resid01_lbl 09 `"Mtwara"', add
label define tz02a_resid01_lbl 10 `"Ruvuma"', add
label define tz02a_resid01_lbl 11 `"Iringa"', add
label define tz02a_resid01_lbl 12 `"Mbeya"', add
label define tz02a_resid01_lbl 13 `"Singida"', add
label define tz02a_resid01_lbl 14 `"Tabora"', add
label define tz02a_resid01_lbl 15 `"Rukwa"', add
label define tz02a_resid01_lbl 16 `"Kigoma"', add
label define tz02a_resid01_lbl 17 `"Shinyanga"', add
label define tz02a_resid01_lbl 18 `"Kagera"', add
label define tz02a_resid01_lbl 19 `"Mwanza"', add
label define tz02a_resid01_lbl 20 `"Mara"', add
label define tz02a_resid01_lbl 21 `"Manyara"', add
label define tz02a_resid01_lbl 51 `"Zanzibar north"', add
label define tz02a_resid01_lbl 52 `"Zanzibar south"', add
label define tz02a_resid01_lbl 53 `"Zanzibar town and west"', add
label define tz02a_resid01_lbl 54 `"Pemba north"', add
label define tz02a_resid01_lbl 55 `"Pemba south"', add
label define tz02a_resid01_lbl 63 `"Burundi"', add
label define tz02a_resid01_lbl 65 `"Kenya"', add
label define tz02a_resid01_lbl 67 `"Malawi"', add
label define tz02a_resid01_lbl 69 `"Mozambique"', add
label define tz02a_resid01_lbl 71 `"Rwanda"', add
label define tz02a_resid01_lbl 76 `"Uganda"', add
label define tz02a_resid01_lbl 77 `"Republic of Congo"', add
label define tz02a_resid01_lbl 78 `"Zimbabwe"', add
label define tz02a_resid01_lbl 79 `"Zambia"', add
label define tz02a_resid01_lbl 80 `"Other African countries"', add
label define tz02a_resid01_lbl 81 `"India"', add
label define tz02a_resid01_lbl 83 `"Other Asian countries"', add
label define tz02a_resid01_lbl 86 `"Great Britain"', add
label define tz02a_resid01_lbl 88 `"Other European countries"', add
label define tz02a_resid01_lbl 90 `"USA"', add
label define tz02a_resid01_lbl 91 `"Other countries"', add
label define tz02a_resid01_lbl 98 `"Unknown"', add
label define tz02a_resid01_lbl 99 `"NIU (not in universe)"', add
label values tz02a_resid01 tz02a_resid01_lbl

label define tz02a_area01_lbl 1 `"Living in rural"'
label define tz02a_area01_lbl 2 `"Regional headquarters"', add
label define tz02a_area01_lbl 3 `"District headquarters and other urban"', add
label define tz02a_area01_lbl 4 `"Outside Tanzania"', add
label define tz02a_area01_lbl 8 `"Unknown"', add
label define tz02a_area01_lbl 9 `"NIU (not in universe)"', add
label values tz02a_area01 tz02a_area01_lbl

label define tz02a_lit_lbl 1 `"Can read/write in Kiswahili"'
label define tz02a_lit_lbl 2 `"Can read/write in English"', add
label define tz02a_lit_lbl 3 `"Can read/write in both English and Kiswahili"', add
label define tz02a_lit_lbl 4 `"Can read/write in another language"', add
label define tz02a_lit_lbl 5 `"Can't read or write"', add
label define tz02a_lit_lbl 8 `"Unknown"', add
label define tz02a_lit_lbl 9 `"NIU (not in universe)"', add
label values tz02a_lit tz02a_lit_lbl

label define tz02a_school_lbl 1 `"Is now attending"'
label define tz02a_school_lbl 2 `"Dropped out"', add
label define tz02a_school_lbl 3 `"Has completed school"', add
label define tz02a_school_lbl 4 `"Has never attended"', add
label define tz02a_school_lbl 8 `"Unknown"', add
label define tz02a_school_lbl 9 `"NIU (not in universe)"', add
label values tz02a_school tz02a_school_lbl

label define tz02a_edattain_lbl 00 `"Pre-primary education"'
label define tz02a_edattain_lbl 01 `"Primary standard 1"', add
label define tz02a_edattain_lbl 02 `"Primary standard 2"', add
label define tz02a_edattain_lbl 03 `"Primary standard 3"', add
label define tz02a_edattain_lbl 04 `"Primary standard 4"', add
label define tz02a_edattain_lbl 05 `"Primary standard 5"', add
label define tz02a_edattain_lbl 06 `"Primary standard 6"', add
label define tz02a_edattain_lbl 07 `"Primary standard 7"', add
label define tz02a_edattain_lbl 08 `"Primary standard 8"', add
label define tz02a_edattain_lbl 09 `"Secondary form 1"', add
label define tz02a_edattain_lbl 10 `"Secondary form 2"', add
label define tz02a_edattain_lbl 11 `"Secondary form 3"', add
label define tz02a_edattain_lbl 12 `"Secondary form 4"', add
label define tz02a_edattain_lbl 13 `"Secondary form 5"', add
label define tz02a_edattain_lbl 14 `"Secondary form 6"', add
label define tz02a_edattain_lbl 15 `"University and other related"', add
label define tz02a_edattain_lbl 16 `"Training after primary education"', add
label define tz02a_edattain_lbl 17 `"Training after secondary education"', add
label define tz02a_edattain_lbl 18 `"Pre-form one"', add
label define tz02a_edattain_lbl 98 `"Unknown"', add
label define tz02a_edattain_lbl 99 `"NIU (not in universe)"', add
label values tz02a_edattain tz02a_edattain_lbl

label define tz02a_activyr_lbl 01 `"Worked paid non seasonal"'
label define tz02a_activyr_lbl 02 `"Worked paid seasonal"', add
label define tz02a_activyr_lbl 03 `"Worked unpaid non seasonal"', add
label define tz02a_activyr_lbl 04 `"Worked unpaid seasonal"', add
label define tz02a_activyr_lbl 05 `"Worked for own benefit full time"', add
label define tz02a_activyr_lbl 06 `"Worked for own benefit seasonal"', add
label define tz02a_activyr_lbl 07 `"Not worked (available for work and actively seeking for work)"', add
label define tz02a_activyr_lbl 08 `"Not worked (available for work but not actively seeking for work)"', add
label define tz02a_activyr_lbl 09 `"Full time student"', add
label define tz02a_activyr_lbl 10 `"Home maintenance (e.g. cooking, cleaning, caring for children and elderly)"', add
label define tz02a_activyr_lbl 11 `"Unable to work, sick, too old, disabled"', add
label define tz02a_activyr_lbl 96 `"Other work not specified"', add
label define tz02a_activyr_lbl 98 `"Unknown"', add
label define tz02a_activyr_lbl 99 `"NIU (not in universe)"', add
label values tz02a_activyr tz02a_activyr_lbl

label define tz02a_activwk_lbl 01 `"Worked paid non seasonal"'
label define tz02a_activwk_lbl 02 `"Worked paid seasonal"', add
label define tz02a_activwk_lbl 03 `"Worked unpaid non seasonal"', add
label define tz02a_activwk_lbl 04 `"Worked unpaid seasonal"', add
label define tz02a_activwk_lbl 05 `"Worked for own benefit full time"', add
label define tz02a_activwk_lbl 06 `"Worked for own benefit seasonal"', add
label define tz02a_activwk_lbl 07 `"Not worked (available for work and actively seeking for work)"', add
label define tz02a_activwk_lbl 08 `"Not worked (available for work but not actively seeking for work)"', add
label define tz02a_activwk_lbl 09 `"Full time student"', add
label define tz02a_activwk_lbl 10 `"Home maintenance (e.g. cooking, cleaning, caring for children and elderly)"', add
label define tz02a_activwk_lbl 11 `"Unable to work, sick, too old, disabled"', add
label define tz02a_activwk_lbl 96 `"Other work not specified"', add
label define tz02a_activwk_lbl 98 `"Unknown"', add
label define tz02a_activwk_lbl 99 `"NIU (not in universe)"', add
label values tz02a_activwk tz02a_activwk_lbl

label define tz02a_classwkr_lbl 1 `"Employer"'
label define tz02a_classwkr_lbl 2 `"Employee"', add
label define tz02a_classwkr_lbl 3 `"Own account worker (non agriculture)"', add
label define tz02a_classwkr_lbl 4 `"Own account worker (agriculture)"', add
label define tz02a_classwkr_lbl 5 `"Contributing family worker"', add
label define tz02a_classwkr_lbl 6 `"Apprentices"', add
label define tz02a_classwkr_lbl 7 `"Other status not specified"', add
label define tz02a_classwkr_lbl 8 `"Unknown"', add
label define tz02a_classwkr_lbl 9 `"NIU (not in universe)"', add
label values tz02a_classwkr tz02a_classwkr_lbl

label define tz02a_occ_lbl 01 `"Legislators, administrators"'
label define tz02a_occ_lbl 02 `"Professional"', add
label define tz02a_occ_lbl 03 `"Technicians and associate professionals"', add
label define tz02a_occ_lbl 04 `"Clerks"', add
label define tz02a_occ_lbl 05 `"Small business managers"', add
label define tz02a_occ_lbl 06 `"Service workers, shop and stall sales workers"', add
label define tz02a_occ_lbl 07 `"Street vendors and related workers"', add
label define tz02a_occ_lbl 08 `"Crafts and related workers"', add
label define tz02a_occ_lbl 09 `"Farmers"', add
label define tz02a_occ_lbl 10 `"Livestock keepers"', add
label define tz02a_occ_lbl 11 `"Fishermen"', add
label define tz02a_occ_lbl 12 `"Plant, machine operators and assemblers including drivers"', add
label define tz02a_occ_lbl 13 `"Elementary occupations"', add
label define tz02a_occ_lbl 96 `"Other occupation not specified"', add
label define tz02a_occ_lbl 98 `"Unknown"', add
label define tz02a_occ_lbl 99 `"NIU (not in universe)"', add
label values tz02a_occ tz02a_occ_lbl

label define tz02a_ind_lbl 01 `"Agriculture, commercial and food crops"'
label define tz02a_ind_lbl 02 `"Forestry, fishing, hunting, livestock and other related"', add
label define tz02a_ind_lbl 03 `"Mining and quarrying"', add
label define tz02a_ind_lbl 04 `"Manufacturing"', add
label define tz02a_ind_lbl 05 `"Electricity, gas and water"', add
label define tz02a_ind_lbl 06 `"Construction"', add
label define tz02a_ind_lbl 07 `"Raw food sales"', add
label define tz02a_ind_lbl 08 `"Trade and commerce"', add
label define tz02a_ind_lbl 09 `"Communication and transport"', add
label define tz02a_ind_lbl 10 `"Finance and insurance services"', add
label define tz02a_ind_lbl 11 `"Public administration and education"', add
label define tz02a_ind_lbl 96 `"Other services not specified"', add
label define tz02a_ind_lbl 98 `"Unknown"', add
label define tz02a_ind_lbl 99 `"NIU (not in universe)"', add
label values tz02a_ind tz02a_ind_lbl

label define tz02a_mchildhh_lbl 00 `"0"'
label define tz02a_mchildhh_lbl 01 `"1"', add
label define tz02a_mchildhh_lbl 02 `"2"', add
label define tz02a_mchildhh_lbl 03 `"3"', add
label define tz02a_mchildhh_lbl 04 `"4"', add
label define tz02a_mchildhh_lbl 05 `"5"', add
label define tz02a_mchildhh_lbl 06 `"6"', add
label define tz02a_mchildhh_lbl 07 `"7"', add
label define tz02a_mchildhh_lbl 08 `"8"', add
label define tz02a_mchildhh_lbl 09 `"9"', add
label define tz02a_mchildhh_lbl 10 `"10"', add
label define tz02a_mchildhh_lbl 11 `"11+"', add
label define tz02a_mchildhh_lbl 98 `"Unknown"', add
label define tz02a_mchildhh_lbl 99 `"NIU (not in universe)"', add
label values tz02a_mchildhh tz02a_mchildhh_lbl

label define tz02a_fchildhh_lbl 00 `"0"'
label define tz02a_fchildhh_lbl 01 `"1"', add
label define tz02a_fchildhh_lbl 02 `"2"', add
label define tz02a_fchildhh_lbl 03 `"3"', add
label define tz02a_fchildhh_lbl 04 `"4"', add
label define tz02a_fchildhh_lbl 05 `"5"', add
label define tz02a_fchildhh_lbl 06 `"6"', add
label define tz02a_fchildhh_lbl 07 `"7"', add
label define tz02a_fchildhh_lbl 08 `"8"', add
label define tz02a_fchildhh_lbl 09 `"9"', add
label define tz02a_fchildhh_lbl 10 `"10"', add
label define tz02a_fchildhh_lbl 11 `"11+"', add
label define tz02a_fchildhh_lbl 98 `"Unknown"', add
label define tz02a_fchildhh_lbl 99 `"NIU (not in universe)"', add
label values tz02a_fchildhh tz02a_fchildhh_lbl

label define tz02a_mchaway_lbl 00 `"0"'
label define tz02a_mchaway_lbl 01 `"1"', add
label define tz02a_mchaway_lbl 02 `"2"', add
label define tz02a_mchaway_lbl 03 `"3"', add
label define tz02a_mchaway_lbl 04 `"4"', add
label define tz02a_mchaway_lbl 05 `"5"', add
label define tz02a_mchaway_lbl 06 `"6"', add
label define tz02a_mchaway_lbl 07 `"7"', add
label define tz02a_mchaway_lbl 08 `"8"', add
label define tz02a_mchaway_lbl 09 `"9"', add
label define tz02a_mchaway_lbl 10 `"10"', add
label define tz02a_mchaway_lbl 11 `"11"', add
label define tz02a_mchaway_lbl 12 `"12+"', add
label define tz02a_mchaway_lbl 98 `"Unknown"', add
label define tz02a_mchaway_lbl 99 `"NIU (not in universe)"', add
label values tz02a_mchaway tz02a_mchaway_lbl

label define tz02a_mchdead_lbl 00 `"0"'
label define tz02a_mchdead_lbl 01 `"1"', add
label define tz02a_mchdead_lbl 02 `"2"', add
label define tz02a_mchdead_lbl 03 `"3"', add
label define tz02a_mchdead_lbl 04 `"4"', add
label define tz02a_mchdead_lbl 05 `"5"', add
label define tz02a_mchdead_lbl 06 `"6"', add
label define tz02a_mchdead_lbl 07 `"7"', add
label define tz02a_mchdead_lbl 08 `"8"', add
label define tz02a_mchdead_lbl 09 `"9"', add
label define tz02a_mchdead_lbl 10 `"10"', add
label define tz02a_mchdead_lbl 11 `"11"', add
label define tz02a_mchdead_lbl 12 `"12+"', add
label define tz02a_mchdead_lbl 98 `"Unknown"', add
label define tz02a_mchdead_lbl 99 `"NIU (not in universe)"', add
label values tz02a_mchdead tz02a_mchdead_lbl

label define tz02a_fchdead_lbl 00 `"0"'
label define tz02a_fchdead_lbl 01 `"1"', add
label define tz02a_fchdead_lbl 02 `"2"', add
label define tz02a_fchdead_lbl 03 `"3"', add
label define tz02a_fchdead_lbl 04 `"4"', add
label define tz02a_fchdead_lbl 05 `"5"', add
label define tz02a_fchdead_lbl 06 `"6"', add
label define tz02a_fchdead_lbl 07 `"7"', add
label define tz02a_fchdead_lbl 08 `"8"', add
label define tz02a_fchdead_lbl 09 `"9"', add
label define tz02a_fchdead_lbl 10 `"10"', add
label define tz02a_fchdead_lbl 11 `"11"', add
label define tz02a_fchdead_lbl 12 `"12+"', add
label define tz02a_fchdead_lbl 98 `"Unknown"', add
label define tz02a_fchdead_lbl 99 `"NIU (not in universe)"', add
label values tz02a_fchdead tz02a_fchdead_lbl

label define tz02a_mbirths_lbl 0 `"0"'
label define tz02a_mbirths_lbl 1 `"1"', add
label define tz02a_mbirths_lbl 2 `"2+"', add
label define tz02a_mbirths_lbl 8 `"Unknown"', add
label define tz02a_mbirths_lbl 9 `"NIU (not in universe)"', add
label values tz02a_mbirths tz02a_mbirths_lbl

label define tz02a_fbirths_lbl 0 `"0"'
label define tz02a_fbirths_lbl 1 `"1"', add
label define tz02a_fbirths_lbl 2 `"2+"', add
label define tz02a_fbirths_lbl 8 `"Unknown"', add
label define tz02a_fbirths_lbl 9 `"NIU (not in universe)"', add
label values tz02a_fbirths tz02a_fbirths_lbl

label define tz02a_chborn_lbl 00 `"0"'
label define tz02a_chborn_lbl 01 `"1"', add
label define tz02a_chborn_lbl 02 `"2"', add
label define tz02a_chborn_lbl 03 `"3"', add
label define tz02a_chborn_lbl 04 `"4"', add
label define tz02a_chborn_lbl 05 `"5"', add
label define tz02a_chborn_lbl 06 `"6"', add
label define tz02a_chborn_lbl 07 `"7"', add
label define tz02a_chborn_lbl 08 `"8"', add
label define tz02a_chborn_lbl 09 `"9"', add
label define tz02a_chborn_lbl 10 `"10"', add
label define tz02a_chborn_lbl 11 `"11"', add
label define tz02a_chborn_lbl 12 `"12"', add
label define tz02a_chborn_lbl 13 `"13"', add
label define tz02a_chborn_lbl 14 `"14"', add
label define tz02a_chborn_lbl 15 `"15"', add
label define tz02a_chborn_lbl 16 `"16"', add
label define tz02a_chborn_lbl 17 `"17"', add
label define tz02a_chborn_lbl 18 `"18"', add
label define tz02a_chborn_lbl 19 `"19"', add
label define tz02a_chborn_lbl 20 `"20"', add
label define tz02a_chborn_lbl 98 `"Unknown"', add
label define tz02a_chborn_lbl 99 `"NIU (not in universe)"', add
label values tz02a_chborn tz02a_chborn_lbl

label define tz02a_chsurv_lbl 00 `"0"'
label define tz02a_chsurv_lbl 01 `"1"', add
label define tz02a_chsurv_lbl 02 `"2"', add
label define tz02a_chsurv_lbl 03 `"3"', add
label define tz02a_chsurv_lbl 04 `"4"', add
label define tz02a_chsurv_lbl 05 `"5"', add
label define tz02a_chsurv_lbl 06 `"6"', add
label define tz02a_chsurv_lbl 07 `"7"', add
label define tz02a_chsurv_lbl 08 `"8"', add
label define tz02a_chsurv_lbl 09 `"9"', add
label define tz02a_chsurv_lbl 10 `"10"', add
label define tz02a_chsurv_lbl 11 `"11"', add
label define tz02a_chsurv_lbl 12 `"12"', add
label define tz02a_chsurv_lbl 13 `"13"', add
label define tz02a_chsurv_lbl 14 `"14"', add
label define tz02a_chsurv_lbl 15 `"15"', add
label define tz02a_chsurv_lbl 16 `"16"', add
label define tz02a_chsurv_lbl 17 `"17"', add
label define tz02a_chsurv_lbl 18 `"18"', add
label define tz02a_chsurv_lbl 19 `"19"', add
label define tz02a_chsurv_lbl 20 `"20"', add
label define tz02a_chsurv_lbl 98 `"Unknown"', add
label define tz02a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values tz02a_chsurv tz02a_chsurv_lbl

label define tz02a_bthlstyr_lbl 0 `"0"'
label define tz02a_bthlstyr_lbl 1 `"1"', add
label define tz02a_bthlstyr_lbl 2 `"2"', add
label define tz02a_bthlstyr_lbl 3 `"3"', add
label define tz02a_bthlstyr_lbl 4 `"4"', add
label define tz02a_bthlstyr_lbl 5 `"5+"', add
label define tz02a_bthlstyr_lbl 8 `"Unknown"', add
label define tz02a_bthlstyr_lbl 9 `"NIU (not in universe)"', add
label values tz02a_bthlstyr tz02a_bthlstyr_lbl

label define tz02a_mchhhu_lbl 00 `"0"'
label define tz02a_mchhhu_lbl 01 `"1"', add
label define tz02a_mchhhu_lbl 02 `"2"', add
label define tz02a_mchhhu_lbl 03 `"3"', add
label define tz02a_mchhhu_lbl 04 `"4"', add
label define tz02a_mchhhu_lbl 05 `"5"', add
label define tz02a_mchhhu_lbl 06 `"6"', add
label define tz02a_mchhhu_lbl 07 `"7"', add
label define tz02a_mchhhu_lbl 08 `"8"', add
label define tz02a_mchhhu_lbl 09 `"9"', add
label define tz02a_mchhhu_lbl 10 `"10"', add
label define tz02a_mchhhu_lbl 11 `"11"', add
label define tz02a_mchhhu_lbl 12 `"12+"', add
label define tz02a_mchhhu_lbl 98 `"Unknown"', add
label define tz02a_mchhhu_lbl 99 `"NIU (not in universe)"', add
label values tz02a_mchhhu tz02a_mchhhu_lbl

label define tz02a_fchhhu_lbl 00 `"0"'
label define tz02a_fchhhu_lbl 01 `"1"', add
label define tz02a_fchhhu_lbl 02 `"2"', add
label define tz02a_fchhhu_lbl 03 `"3"', add
label define tz02a_fchhhu_lbl 04 `"4"', add
label define tz02a_fchhhu_lbl 05 `"5"', add
label define tz02a_fchhhu_lbl 06 `"6"', add
label define tz02a_fchhhu_lbl 07 `"7"', add
label define tz02a_fchhhu_lbl 08 `"8"', add
label define tz02a_fchhhu_lbl 09 `"9"', add
label define tz02a_fchhhu_lbl 10 `"10"', add
label define tz02a_fchhhu_lbl 11 `"11"', add
label define tz02a_fchhhu_lbl 12 `"12+"', add
label define tz02a_fchhhu_lbl 98 `"Unknown"', add
label define tz02a_fchhhu_lbl 99 `"NIU (not in universe)"', add
label values tz02a_fchhhu tz02a_fchhhu_lbl

label define tz02a_mchawayu_lbl 00 `"0"'
label define tz02a_mchawayu_lbl 01 `"1"', add
label define tz02a_mchawayu_lbl 02 `"2"', add
label define tz02a_mchawayu_lbl 03 `"3"', add
label define tz02a_mchawayu_lbl 04 `"4"', add
label define tz02a_mchawayu_lbl 05 `"5"', add
label define tz02a_mchawayu_lbl 06 `"6"', add
label define tz02a_mchawayu_lbl 07 `"7"', add
label define tz02a_mchawayu_lbl 08 `"8"', add
label define tz02a_mchawayu_lbl 09 `"9"', add
label define tz02a_mchawayu_lbl 10 `"10"', add
label define tz02a_mchawayu_lbl 11 `"11"', add
label define tz02a_mchawayu_lbl 12 `"12"', add
label define tz02a_mchawayu_lbl 13 `"13"', add
label define tz02a_mchawayu_lbl 14 `"14+"', add
label define tz02a_mchawayu_lbl 98 `"Unknown"', add
label define tz02a_mchawayu_lbl 99 `"NIU (not in universe)"', add
label values tz02a_mchawayu tz02a_mchawayu_lbl

label define tz02a_fchawayu_lbl 00 `"0"'
label define tz02a_fchawayu_lbl 01 `"1"', add
label define tz02a_fchawayu_lbl 02 `"2"', add
label define tz02a_fchawayu_lbl 03 `"3"', add
label define tz02a_fchawayu_lbl 04 `"4"', add
label define tz02a_fchawayu_lbl 05 `"5"', add
label define tz02a_fchawayu_lbl 06 `"6"', add
label define tz02a_fchawayu_lbl 07 `"7"', add
label define tz02a_fchawayu_lbl 08 `"8"', add
label define tz02a_fchawayu_lbl 09 `"9"', add
label define tz02a_fchawayu_lbl 10 `"10"', add
label define tz02a_fchawayu_lbl 11 `"11"', add
label define tz02a_fchawayu_lbl 12 `"12"', add
label define tz02a_fchawayu_lbl 13 `"13"', add
label define tz02a_fchawayu_lbl 14 `"14+"', add
label define tz02a_fchawayu_lbl 98 `"Unknown"', add
label define tz02a_fchawayu_lbl 99 `"NIU (not in universe)"', add
label values tz02a_fchawayu tz02a_fchawayu_lbl

label define tz02a_mchdeadu_lbl 00 `"0"'
label define tz02a_mchdeadu_lbl 01 `"1"', add
label define tz02a_mchdeadu_lbl 02 `"2"', add
label define tz02a_mchdeadu_lbl 03 `"3"', add
label define tz02a_mchdeadu_lbl 04 `"4"', add
label define tz02a_mchdeadu_lbl 05 `"5"', add
label define tz02a_mchdeadu_lbl 06 `"6"', add
label define tz02a_mchdeadu_lbl 07 `"7"', add
label define tz02a_mchdeadu_lbl 08 `"8"', add
label define tz02a_mchdeadu_lbl 09 `"9"', add
label define tz02a_mchdeadu_lbl 10 `"10"', add
label define tz02a_mchdeadu_lbl 11 `"11"', add
label define tz02a_mchdeadu_lbl 12 `"12+"', add
label define tz02a_mchdeadu_lbl 98 `"Unknown"', add
label define tz02a_mchdeadu_lbl 99 `"NIU (not in universe)"', add
label values tz02a_mchdeadu tz02a_mchdeadu_lbl

label define tz02a_fchdeadu_lbl 00 `"0"'
label define tz02a_fchdeadu_lbl 01 `"1"', add
label define tz02a_fchdeadu_lbl 02 `"2"', add
label define tz02a_fchdeadu_lbl 03 `"3"', add
label define tz02a_fchdeadu_lbl 04 `"4"', add
label define tz02a_fchdeadu_lbl 05 `"5"', add
label define tz02a_fchdeadu_lbl 06 `"6"', add
label define tz02a_fchdeadu_lbl 07 `"7"', add
label define tz02a_fchdeadu_lbl 08 `"8"', add
label define tz02a_fchdeadu_lbl 09 `"9"', add
label define tz02a_fchdeadu_lbl 10 `"10"', add
label define tz02a_fchdeadu_lbl 11 `"11"', add
label define tz02a_fchdeadu_lbl 12 `"12+"', add
label define tz02a_fchdeadu_lbl 98 `"Unknown"', add
label define tz02a_fchdeadu_lbl 99 `"NIU (not in universe)"', add
label values tz02a_fchdeadu tz02a_fchdeadu_lbl


