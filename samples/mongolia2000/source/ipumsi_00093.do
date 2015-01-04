* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  byte    mn00a_pern      22-23    ///
  byte    mn00a_fbig      24-24    ///
  byte    mn00a_hhtype    25-25    ///
  byte    mn00a_dwtype    26-26    ///
  byte    mn00a_rooms     27-28    ///
  int     mn00a_space     29-31    ///
  byte    mn00a_heat      32-32    ///
  byte    mn00a_watsup    33-33    ///
  byte    mn00a_sewage    34-34    ///
  byte    mn00a_toilet    35-35    ///
  byte    mn00a_kitch     36-36    ///
  byte    mn00a_bath      37-37    ///
  byte    mn00a_ger       38-38    ///
  byte    mn00a_wall      39-39    ///
  byte    mn00a_watsupg   40-41    ///
  byte    mn00a_wasteg    42-42    ///
  byte    mn00a_toiletg   43-43    ///
  byte    mn00a_burrowg   44-44    ///
  byte    mn00a_ownerty   45-45    ///
  byte    mn00a_elect     46-46    ///
  byte    mn00a_phone     47-47    ///
  byte    mn00a_hhtype2   48-48    ///
  int     pernum          49-51    ///
  float   wtper           52-59    ///
  byte    resident        60-60    ///
  byte    mn00a_pernum    61-62    ///
  byte    mn00a_pernumo   63-64    ///
  byte    mn00a_relate    65-66    ///
  byte    mn00a_sex       67-67    ///
  int     mn00a_biryr     68-71    ///
  byte    mn00a_birmo     72-73    ///
  byte    mn00a_age       74-75    ///
  byte    mn00a_citiz     76-77    ///
  byte    mn00a_ethnic    78-79    ///
  byte    mn00a_resty     80-80    ///
  byte    mn00a_uprov     81-82    ///
  byte    mn00a_migty     83-83    ///
  byte    mn00a_prevprov  84-85    ///
  int     mn00a_migyr     86-89    ///
  byte    mn00a_bpl       90-91    ///
  byte    mn00a_res5yr    92-93    ///
  byte    mn00a_educ      94-94    ///
  byte    mn00a_lit       95-95    ///
  byte    mn00a_school    96-96    ///
  byte    mn00a_marst     97-97    ///
  byte    mn00a_employed  98-98    ///
  int     mn00a_occ       99-101   ///
  int     mn00a_ind       102-104  ///
  byte    mn00a_classwk   105-105  ///
  byte    mn00a_unemp     106-106  ///
  using `"ipumsi_00093.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var mn00a_pern     `"Number of persons in household"'
label var mn00a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var mn00a_hhtype   `"Type of house"'
label var mn00a_dwtype   `"Type of living quarters"'
label var mn00a_rooms    `"Number of rooms"'
label var mn00a_space    `"Useful space (square meters)"'
label var mn00a_heat     `"Heating"'
label var mn00a_watsup   `"Water supply"'
label var mn00a_sewage   `"Waste disposal"'
label var mn00a_toilet   `"Toilet"'
label var mn00a_kitch    `"Kitchen"'
label var mn00a_bath     `"Bathroom"'
label var mn00a_ger      `"Number of gers"'
label var mn00a_wall     `"Number of walls (ger)"'
label var mn00a_watsupg  `"Water supply (ger)"'
label var mn00a_wasteg   `"Waste (ger)"'
label var mn00a_toiletg  `"Toilet (ger)"'
label var mn00a_burrowg  `"Burrow-hole (ger)"'
label var mn00a_ownerty  `"Property ownership"'
label var mn00a_elect    `"Electricity"'
label var mn00a_phone    `"Telephone"'
label var mn00a_hhtype2  `"Type of house"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var resident       `"Residence status: de facto, de jure"'
label var mn00a_pernum   `"Person number (within household)"'
label var mn00a_pernumo  `"Person number"'
label var mn00a_relate   `"Relationship to household head"'
label var mn00a_sex      `"Sex"'
label var mn00a_biryr    `"Year of birth"'
label var mn00a_birmo    `"Month of birth"'
label var mn00a_age      `"Age"'
label var mn00a_citiz    `"Citizenship"'
label var mn00a_ethnic   `"Ethnicity"'
label var mn00a_resty    `"Residence"'
label var mn00a_uprov    `"Usual province of residence for visitors andtemporary province of residence for "'
label var mn00a_migty    `"Migration"'
label var mn00a_prevprov `"Previous province or country of residence"'
label var mn00a_migyr    `"Year moved to current residence"'
label var mn00a_bpl      `"Province or country of birth"'
label var mn00a_res5yr   `"Province or country of usual residence 5 years ago"'
label var mn00a_educ     `"Education"'
label var mn00a_lit      `"Ability to read and write"'
label var mn00a_school   `"School"'
label var mn00a_marst    `"Marital status"'
label var mn00a_employed `"Current employment"'
label var mn00a_occ      `"Occupation"'
label var mn00a_ind      `"Industry"'
label var mn00a_classwk  `"Class of worker"'
label var mn00a_unemp    `"Reason for not working"'

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

label define mn00a_pern_lbl 01 `"1"'
label define mn00a_pern_lbl 02 `"2"', add
label define mn00a_pern_lbl 03 `"3"', add
label define mn00a_pern_lbl 04 `"4"', add
label define mn00a_pern_lbl 05 `"5"', add
label define mn00a_pern_lbl 06 `"6"', add
label define mn00a_pern_lbl 07 `"7"', add
label define mn00a_pern_lbl 08 `"8"', add
label define mn00a_pern_lbl 09 `"9"', add
label define mn00a_pern_lbl 10 `"10"', add
label define mn00a_pern_lbl 11 `"11"', add
label define mn00a_pern_lbl 12 `"12"', add
label define mn00a_pern_lbl 13 `"13"', add
label define mn00a_pern_lbl 14 `"14"', add
label define mn00a_pern_lbl 15 `"15"', add
label define mn00a_pern_lbl 16 `"16"', add
label define mn00a_pern_lbl 17 `"17"', add
label define mn00a_pern_lbl 18 `"18"', add
label define mn00a_pern_lbl 19 `"19"', add
label define mn00a_pern_lbl 20 `"20"', add
label define mn00a_pern_lbl 21 `"21"', add
label define mn00a_pern_lbl 22 `"22"', add
label define mn00a_pern_lbl 23 `"23"', add
label define mn00a_pern_lbl 24 `"24"', add
label define mn00a_pern_lbl 25 `"25"', add
label define mn00a_pern_lbl 26 `"26"', add
label define mn00a_pern_lbl 27 `"27"', add
label define mn00a_pern_lbl 28 `"28"', add
label define mn00a_pern_lbl 29 `"29"', add
label define mn00a_pern_lbl 30 `"30"', add
label values mn00a_pern mn00a_pern_lbl

label define mn00a_fbig_lbl 0 `"No problem"'
label define mn00a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define mn00a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values mn00a_fbig mn00a_fbig_lbl

label define mn00a_hhtype_lbl 1 `"House"'
label define mn00a_hhtype_lbl 2 `"Ger"', add
label values mn00a_hhtype mn00a_hhtype_lbl

label define mn00a_dwtype_lbl 1 `"House"'
label define mn00a_dwtype_lbl 2 `"Apartment"', add
label define mn00a_dwtype_lbl 3 `"Students dormitory"', add
label define mn00a_dwtype_lbl 4 `"Public dormitory"', add
label define mn00a_dwtype_lbl 5 `"Other public apartment"', add
label define mn00a_dwtype_lbl 6 `"Non-living quarters"', add
label define mn00a_dwtype_lbl 7 `"Other"', add
label define mn00a_dwtype_lbl 9 `"NIU (not in universe)"', add
label values mn00a_dwtype mn00a_dwtype_lbl

label define mn00a_rooms_lbl 01 `"1"'
label define mn00a_rooms_lbl 02 `"2"', add
label define mn00a_rooms_lbl 03 `"3"', add
label define mn00a_rooms_lbl 04 `"4"', add
label define mn00a_rooms_lbl 05 `"5"', add
label define mn00a_rooms_lbl 06 `"6"', add
label define mn00a_rooms_lbl 07 `"7"', add
label define mn00a_rooms_lbl 08 `"8"', add
label define mn00a_rooms_lbl 09 `"9"', add
label define mn00a_rooms_lbl 10 `"10"', add
label define mn00a_rooms_lbl 11 `"11"', add
label define mn00a_rooms_lbl 12 `"12"', add
label define mn00a_rooms_lbl 99 `"NIU (not in universe)"', add
label values mn00a_rooms mn00a_rooms_lbl

label define mn00a_space_lbl 300 `"300+ square meters"'
label define mn00a_space_lbl 998 `"Unknown"', add
label define mn00a_space_lbl 999 `"NIU (not in universe)"', add
label values mn00a_space mn00a_space_lbl

label define mn00a_heat_lbl 1 `"Centralized"'
label define mn00a_heat_lbl 2 `"Non-centralized"', add
label define mn00a_heat_lbl 3 `"Other"', add
label define mn00a_heat_lbl 9 `"NIU (not in universe)"', add
label values mn00a_heat mn00a_heat_lbl

label define mn00a_watsup_lbl 1 `"Hot and cold water"'
label define mn00a_watsup_lbl 2 `"Cold water pipe"', add
label define mn00a_watsup_lbl 3 `"Well"', add
label define mn00a_watsup_lbl 4 `"Hand well"', add
label define mn00a_watsup_lbl 5 `"Other"', add
label define mn00a_watsup_lbl 9 `"NIU (not in universe)"', add
label values mn00a_watsup mn00a_watsup_lbl

label define mn00a_sewage_lbl 1 `"Through tube"'
label define mn00a_sewage_lbl 2 `"Special hollow"', add
label define mn00a_sewage_lbl 3 `"Outside of house"', add
label define mn00a_sewage_lbl 4 `"No special place"', add
label define mn00a_sewage_lbl 9 `"NIU (not in universe)"', add
label values mn00a_sewage mn00a_sewage_lbl

label define mn00a_toilet_lbl 1 `"Inside of house: separate"'
label define mn00a_toilet_lbl 2 `"Inside of house: public"', add
label define mn00a_toilet_lbl 3 `"Outside of house"', add
label define mn00a_toilet_lbl 9 `"NIU (not in universe)"', add
label values mn00a_toilet mn00a_toilet_lbl

label define mn00a_kitch_lbl 1 `"In house-sole use"'
label define mn00a_kitch_lbl 2 `"No kitchen"', add
label define mn00a_kitch_lbl 3 `"In house-shared"', add
label define mn00a_kitch_lbl 9 `"NIU (not in universe)"', add
label values mn00a_kitch mn00a_kitch_lbl

label define mn00a_bath_lbl 1 `"In house-- sole use"'
label define mn00a_bath_lbl 2 `"No bathroom/shower in house"', add
label define mn00a_bath_lbl 3 `"In house--shared"', add
label define mn00a_bath_lbl 9 `"NIU (not in universe)"', add
label values mn00a_bath mn00a_bath_lbl

label define mn00a_ger_lbl 1 `"1"'
label define mn00a_ger_lbl 2 `"2"', add
label define mn00a_ger_lbl 3 `"3+"', add
label define mn00a_ger_lbl 9 `"NIU (not in universe)"', add
label values mn00a_ger mn00a_ger_lbl

label define mn00a_wall_lbl 0 `"NIU (not in universe)"'
label define mn00a_wall_lbl 4 `"4"', add
label define mn00a_wall_lbl 5 `"5"', add
label define mn00a_wall_lbl 6 `"6"', add
label define mn00a_wall_lbl 7 `"7"', add
label define mn00a_wall_lbl 8 `"8"', add
label define mn00a_wall_lbl 9 `"Unknown"', add
label values mn00a_wall mn00a_wall_lbl

label define mn00a_watsupg_lbl 01 `"Well"'
label define mn00a_watsupg_lbl 02 `"Hand well"', add
label define mn00a_watsupg_lbl 03 `"River, spring"', add
label define mn00a_watsupg_lbl 04 `"Lake, pool"', add
label define mn00a_watsupg_lbl 05 `"Other"', add
label define mn00a_watsupg_lbl 09 `"NR"', add
label define mn00a_watsupg_lbl 10 `"Not Applicable"', add
label values mn00a_watsupg mn00a_watsupg_lbl

label define mn00a_wasteg_lbl 1 `"Yes"'
label define mn00a_wasteg_lbl 2 `"No"', add
label define mn00a_wasteg_lbl 9 `"NIU (not in universe)"', add
label values mn00a_wasteg mn00a_wasteg_lbl

label define mn00a_toiletg_lbl 1 `"Yes"'
label define mn00a_toiletg_lbl 2 `"No"', add
label define mn00a_toiletg_lbl 9 `"NIU (not in universe)"', add
label values mn00a_toiletg mn00a_toiletg_lbl

label define mn00a_burrowg_lbl 1 `"Yes"'
label define mn00a_burrowg_lbl 2 `"No"', add
label define mn00a_burrowg_lbl 9 `"NIU (not in universe)"', add
label values mn00a_burrowg mn00a_burrowg_lbl

label define mn00a_ownerty_lbl 1 `"Government"'
label define mn00a_ownerty_lbl 2 `"Private"', add
label define mn00a_ownerty_lbl 3 `"Mixed"', add
label values mn00a_ownerty mn00a_ownerty_lbl

label define mn00a_elect_lbl 1 `"Yes"'
label define mn00a_elect_lbl 2 `"No"', add
label values mn00a_elect mn00a_elect_lbl

label define mn00a_phone_lbl 1 `"Yes"'
label define mn00a_phone_lbl 2 `"No"', add
label values mn00a_phone mn00a_phone_lbl

label define mn00a_hhtype2_lbl 1 `"Household owns house"'
label define mn00a_hhtype2_lbl 2 `"Shared house"', add
label define mn00a_hhtype2_lbl 3 `"Dormitory or other house"', add
label values mn00a_hhtype2 mn00a_hhtype2_lbl

label define resident_lbl 1 `"Present resident"'
label define resident_lbl 2 `"Absent resident"', add
label define resident_lbl 3 `"Visitor/non-resident"', add
label define resident_lbl 4 `"De facto population (present persons)"', add
label define resident_lbl 9 `"Unknown/missing"', add
label values resident resident_lbl

label define mn00a_pernum_lbl 00 `"Household record"'
label define mn00a_pernum_lbl 01 `"1"', add
label define mn00a_pernum_lbl 02 `"2"', add
label define mn00a_pernum_lbl 03 `"3"', add
label define mn00a_pernum_lbl 04 `"4"', add
label define mn00a_pernum_lbl 05 `"5"', add
label define mn00a_pernum_lbl 06 `"6"', add
label define mn00a_pernum_lbl 07 `"7"', add
label define mn00a_pernum_lbl 08 `"8"', add
label define mn00a_pernum_lbl 09 `"9"', add
label define mn00a_pernum_lbl 10 `"10"', add
label define mn00a_pernum_lbl 11 `"11"', add
label define mn00a_pernum_lbl 12 `"12"', add
label define mn00a_pernum_lbl 13 `"13"', add
label define mn00a_pernum_lbl 14 `"14"', add
label define mn00a_pernum_lbl 15 `"15"', add
label define mn00a_pernum_lbl 16 `"16"', add
label define mn00a_pernum_lbl 17 `"17"', add
label define mn00a_pernum_lbl 18 `"18"', add
label define mn00a_pernum_lbl 19 `"19"', add
label define mn00a_pernum_lbl 20 `"20"', add
label define mn00a_pernum_lbl 21 `"21"', add
label define mn00a_pernum_lbl 22 `"22"', add
label define mn00a_pernum_lbl 23 `"23"', add
label define mn00a_pernum_lbl 24 `"24"', add
label define mn00a_pernum_lbl 25 `"25"', add
label define mn00a_pernum_lbl 26 `"26"', add
label define mn00a_pernum_lbl 27 `"27"', add
label define mn00a_pernum_lbl 28 `"28"', add
label define mn00a_pernum_lbl 29 `"29"', add
label define mn00a_pernum_lbl 30 `"30"', add
label values mn00a_pernum mn00a_pernum_lbl

label define mn00a_pernumo_lbl 01 `"1"'
label define mn00a_pernumo_lbl 02 `"2"', add
label define mn00a_pernumo_lbl 03 `"3"', add
label define mn00a_pernumo_lbl 04 `"4"', add
label define mn00a_pernumo_lbl 05 `"5"', add
label define mn00a_pernumo_lbl 06 `"6"', add
label define mn00a_pernumo_lbl 07 `"7"', add
label define mn00a_pernumo_lbl 08 `"8"', add
label define mn00a_pernumo_lbl 09 `"9"', add
label define mn00a_pernumo_lbl 10 `"10"', add
label define mn00a_pernumo_lbl 11 `"11"', add
label define mn00a_pernumo_lbl 12 `"12"', add
label define mn00a_pernumo_lbl 13 `"13"', add
label define mn00a_pernumo_lbl 14 `"14"', add
label define mn00a_pernumo_lbl 15 `"15"', add
label define mn00a_pernumo_lbl 16 `"16"', add
label define mn00a_pernumo_lbl 17 `"17"', add
label define mn00a_pernumo_lbl 18 `"18"', add
label define mn00a_pernumo_lbl 19 `"19"', add
label define mn00a_pernumo_lbl 20 `"20"', add
label define mn00a_pernumo_lbl 21 `"21"', add
label define mn00a_pernumo_lbl 22 `"22"', add
label define mn00a_pernumo_lbl 23 `"23"', add
label define mn00a_pernumo_lbl 24 `"24"', add
label define mn00a_pernumo_lbl 25 `"25"', add
label define mn00a_pernumo_lbl 26 `"26"', add
label define mn00a_pernumo_lbl 27 `"27"', add
label define mn00a_pernumo_lbl 28 `"28"', add
label define mn00a_pernumo_lbl 29 `"29"', add
label define mn00a_pernumo_lbl 30 `"30"', add
label define mn00a_pernumo_lbl 31 `"31"', add
label define mn00a_pernumo_lbl 32 `"32"', add
label define mn00a_pernumo_lbl 33 `"33"', add
label define mn00a_pernumo_lbl 34 `"34"', add
label define mn00a_pernumo_lbl 35 `"35"', add
label define mn00a_pernumo_lbl 36 `"36"', add
label define mn00a_pernumo_lbl 37 `"37"', add
label define mn00a_pernumo_lbl 38 `"38"', add
label define mn00a_pernumo_lbl 39 `"39"', add
label define mn00a_pernumo_lbl 40 `"40"', add
label define mn00a_pernumo_lbl 41 `"41"', add
label define mn00a_pernumo_lbl 42 `"42"', add
label define mn00a_pernumo_lbl 43 `"43"', add
label define mn00a_pernumo_lbl 44 `"44"', add
label define mn00a_pernumo_lbl 45 `"45"', add
label define mn00a_pernumo_lbl 46 `"46"', add
label define mn00a_pernumo_lbl 47 `"47"', add
label define mn00a_pernumo_lbl 48 `"48"', add
label define mn00a_pernumo_lbl 49 `"49"', add
label define mn00a_pernumo_lbl 50 `"50"', add
label define mn00a_pernumo_lbl 51 `"51"', add
label define mn00a_pernumo_lbl 52 `"52"', add
label define mn00a_pernumo_lbl 53 `"53"', add
label define mn00a_pernumo_lbl 54 `"54"', add
label define mn00a_pernumo_lbl 55 `"55"', add
label define mn00a_pernumo_lbl 56 `"56"', add
label define mn00a_pernumo_lbl 57 `"57"', add
label define mn00a_pernumo_lbl 58 `"58"', add
label define mn00a_pernumo_lbl 59 `"59"', add
label define mn00a_pernumo_lbl 60 `"60"', add
label define mn00a_pernumo_lbl 61 `"61"', add
label define mn00a_pernumo_lbl 62 `"62"', add
label define mn00a_pernumo_lbl 63 `"63"', add
label define mn00a_pernumo_lbl 64 `"64"', add
label define mn00a_pernumo_lbl 65 `"65"', add
label define mn00a_pernumo_lbl 66 `"66"', add
label define mn00a_pernumo_lbl 67 `"67"', add
label define mn00a_pernumo_lbl 68 `"68"', add
label define mn00a_pernumo_lbl 69 `"69"', add
label define mn00a_pernumo_lbl 70 `"70"', add
label define mn00a_pernumo_lbl 71 `"71"', add
label define mn00a_pernumo_lbl 72 `"72"', add
label define mn00a_pernumo_lbl 73 `"73"', add
label define mn00a_pernumo_lbl 74 `"74"', add
label define mn00a_pernumo_lbl 75 `"75"', add
label define mn00a_pernumo_lbl 76 `"76"', add
label define mn00a_pernumo_lbl 77 `"77"', add
label define mn00a_pernumo_lbl 78 `"78"', add
label define mn00a_pernumo_lbl 79 `"79"', add
label define mn00a_pernumo_lbl 80 `"80"', add
label define mn00a_pernumo_lbl 81 `"81"', add
label define mn00a_pernumo_lbl 82 `"82"', add
label define mn00a_pernumo_lbl 83 `"83"', add
label define mn00a_pernumo_lbl 84 `"84"', add
label define mn00a_pernumo_lbl 85 `"85"', add
label define mn00a_pernumo_lbl 86 `"86"', add
label define mn00a_pernumo_lbl 87 `"87"', add
label define mn00a_pernumo_lbl 88 `"88"', add
label define mn00a_pernumo_lbl 89 `"89"', add
label define mn00a_pernumo_lbl 90 `"90"', add
label define mn00a_pernumo_lbl 91 `"91"', add
label define mn00a_pernumo_lbl 92 `"92"', add
label define mn00a_pernumo_lbl 93 `"93"', add
label define mn00a_pernumo_lbl 94 `"94"', add
label define mn00a_pernumo_lbl 95 `"95"', add
label define mn00a_pernumo_lbl 96 `"96"', add
label define mn00a_pernumo_lbl 97 `"97"', add
label define mn00a_pernumo_lbl 98 `"98"', add
label define mn00a_pernumo_lbl 99 `"99"', add
label values mn00a_pernumo mn00a_pernumo_lbl

label define mn00a_relate_lbl 01 `"Household head"'
label define mn00a_relate_lbl 02 `"Wife/husband"', add
label define mn00a_relate_lbl 03 `"Daughter/son"', add
label define mn00a_relate_lbl 04 `"Parents"', add
label define mn00a_relate_lbl 05 `"Sister/brother"', add
label define mn00a_relate_lbl 06 `"Parents-in-law"', add
label define mn00a_relate_lbl 07 `"Daugh/son-in-law"', add
label define mn00a_relate_lbl 08 `"Grandparents"', add
label define mn00a_relate_lbl 09 `"Granchild"', add
label define mn00a_relate_lbl 10 `"Other relative"', add
label define mn00a_relate_lbl 11 `"Non-relative"', add
label values mn00a_relate mn00a_relate_lbl

label define mn00a_sex_lbl 1 `"Male"'
label define mn00a_sex_lbl 2 `"Female"', add
label values mn00a_sex mn00a_sex_lbl

label define mn00a_biryr_lbl 1910 `"1910 or earlier"'
label define mn00a_biryr_lbl 1911 `"1911"', add
label define mn00a_biryr_lbl 1912 `"1912"', add
label define mn00a_biryr_lbl 1913 `"1913"', add
label define mn00a_biryr_lbl 1914 `"1914"', add
label define mn00a_biryr_lbl 1915 `"1915"', add
label define mn00a_biryr_lbl 1916 `"1916"', add
label define mn00a_biryr_lbl 1917 `"1917"', add
label define mn00a_biryr_lbl 1918 `"1918"', add
label define mn00a_biryr_lbl 1919 `"1919"', add
label define mn00a_biryr_lbl 1920 `"1920"', add
label define mn00a_biryr_lbl 1921 `"1921"', add
label define mn00a_biryr_lbl 1922 `"1922"', add
label define mn00a_biryr_lbl 1923 `"1923"', add
label define mn00a_biryr_lbl 1924 `"1924"', add
label define mn00a_biryr_lbl 1925 `"1925"', add
label define mn00a_biryr_lbl 1926 `"1926"', add
label define mn00a_biryr_lbl 1927 `"1927"', add
label define mn00a_biryr_lbl 1928 `"1928"', add
label define mn00a_biryr_lbl 1929 `"1929"', add
label define mn00a_biryr_lbl 1930 `"1930"', add
label define mn00a_biryr_lbl 1931 `"1931"', add
label define mn00a_biryr_lbl 1932 `"1932"', add
label define mn00a_biryr_lbl 1933 `"1933"', add
label define mn00a_biryr_lbl 1934 `"1934"', add
label define mn00a_biryr_lbl 1935 `"1935"', add
label define mn00a_biryr_lbl 1936 `"1936"', add
label define mn00a_biryr_lbl 1937 `"1937"', add
label define mn00a_biryr_lbl 1938 `"1938"', add
label define mn00a_biryr_lbl 1939 `"1939"', add
label define mn00a_biryr_lbl 1940 `"1940"', add
label define mn00a_biryr_lbl 1941 `"1941"', add
label define mn00a_biryr_lbl 1942 `"1942"', add
label define mn00a_biryr_lbl 1943 `"1943"', add
label define mn00a_biryr_lbl 1944 `"1944"', add
label define mn00a_biryr_lbl 1945 `"1945"', add
label define mn00a_biryr_lbl 1946 `"1946"', add
label define mn00a_biryr_lbl 1947 `"1947"', add
label define mn00a_biryr_lbl 1948 `"1948"', add
label define mn00a_biryr_lbl 1949 `"1949"', add
label define mn00a_biryr_lbl 1950 `"1950"', add
label define mn00a_biryr_lbl 1951 `"1951"', add
label define mn00a_biryr_lbl 1952 `"1952"', add
label define mn00a_biryr_lbl 1953 `"1953"', add
label define mn00a_biryr_lbl 1954 `"1954"', add
label define mn00a_biryr_lbl 1955 `"1955"', add
label define mn00a_biryr_lbl 1956 `"1956"', add
label define mn00a_biryr_lbl 1957 `"1957"', add
label define mn00a_biryr_lbl 1958 `"1958"', add
label define mn00a_biryr_lbl 1959 `"1959"', add
label define mn00a_biryr_lbl 1960 `"1960"', add
label define mn00a_biryr_lbl 1961 `"1961"', add
label define mn00a_biryr_lbl 1962 `"1962"', add
label define mn00a_biryr_lbl 1963 `"1963"', add
label define mn00a_biryr_lbl 1964 `"1964"', add
label define mn00a_biryr_lbl 1965 `"1965"', add
label define mn00a_biryr_lbl 1966 `"1966"', add
label define mn00a_biryr_lbl 1967 `"1967"', add
label define mn00a_biryr_lbl 1968 `"1968"', add
label define mn00a_biryr_lbl 1969 `"1969"', add
label define mn00a_biryr_lbl 1970 `"1970"', add
label define mn00a_biryr_lbl 1971 `"1971"', add
label define mn00a_biryr_lbl 1972 `"1972"', add
label define mn00a_biryr_lbl 1973 `"1973"', add
label define mn00a_biryr_lbl 1974 `"1974"', add
label define mn00a_biryr_lbl 1975 `"1975"', add
label define mn00a_biryr_lbl 1976 `"1976"', add
label define mn00a_biryr_lbl 1977 `"1977"', add
label define mn00a_biryr_lbl 1978 `"1978"', add
label define mn00a_biryr_lbl 1979 `"1979"', add
label define mn00a_biryr_lbl 1980 `"1980"', add
label define mn00a_biryr_lbl 1981 `"1981"', add
label define mn00a_biryr_lbl 1982 `"1982"', add
label define mn00a_biryr_lbl 1983 `"1983"', add
label define mn00a_biryr_lbl 1984 `"1984"', add
label define mn00a_biryr_lbl 1985 `"1985"', add
label define mn00a_biryr_lbl 1986 `"1986"', add
label define mn00a_biryr_lbl 1987 `"1987"', add
label define mn00a_biryr_lbl 1988 `"1988"', add
label define mn00a_biryr_lbl 1989 `"1989"', add
label define mn00a_biryr_lbl 1990 `"1990"', add
label define mn00a_biryr_lbl 1991 `"1991"', add
label define mn00a_biryr_lbl 1992 `"1992"', add
label define mn00a_biryr_lbl 1993 `"1993"', add
label define mn00a_biryr_lbl 1994 `"1994"', add
label define mn00a_biryr_lbl 1995 `"1995"', add
label define mn00a_biryr_lbl 1996 `"1996"', add
label define mn00a_biryr_lbl 1997 `"1997"', add
label define mn00a_biryr_lbl 1998 `"1998"', add
label define mn00a_biryr_lbl 1999 `"1999"', add
label define mn00a_biryr_lbl 2000 `"2000"', add
label values mn00a_biryr mn00a_biryr_lbl

label define mn00a_birmo_lbl 01 `"January"'
label define mn00a_birmo_lbl 02 `"February"', add
label define mn00a_birmo_lbl 03 `"March"', add
label define mn00a_birmo_lbl 04 `"April"', add
label define mn00a_birmo_lbl 05 `"May"', add
label define mn00a_birmo_lbl 06 `"June"', add
label define mn00a_birmo_lbl 07 `"July"', add
label define mn00a_birmo_lbl 08 `"August"', add
label define mn00a_birmo_lbl 09 `"September"', add
label define mn00a_birmo_lbl 10 `"October"', add
label define mn00a_birmo_lbl 11 `"November"', add
label define mn00a_birmo_lbl 12 `"December"', add
label values mn00a_birmo mn00a_birmo_lbl

label define mn00a_age_lbl 00 `"Less than 1 year"'
label define mn00a_age_lbl 01 `"1"', add
label define mn00a_age_lbl 02 `"2"', add
label define mn00a_age_lbl 03 `"3"', add
label define mn00a_age_lbl 04 `"4"', add
label define mn00a_age_lbl 05 `"5"', add
label define mn00a_age_lbl 06 `"6"', add
label define mn00a_age_lbl 07 `"7"', add
label define mn00a_age_lbl 08 `"8"', add
label define mn00a_age_lbl 09 `"9"', add
label define mn00a_age_lbl 10 `"10"', add
label define mn00a_age_lbl 11 `"11"', add
label define mn00a_age_lbl 12 `"12"', add
label define mn00a_age_lbl 13 `"13"', add
label define mn00a_age_lbl 14 `"14"', add
label define mn00a_age_lbl 15 `"15"', add
label define mn00a_age_lbl 16 `"16"', add
label define mn00a_age_lbl 17 `"17"', add
label define mn00a_age_lbl 18 `"18"', add
label define mn00a_age_lbl 19 `"19"', add
label define mn00a_age_lbl 20 `"20"', add
label define mn00a_age_lbl 21 `"21"', add
label define mn00a_age_lbl 22 `"22"', add
label define mn00a_age_lbl 23 `"23"', add
label define mn00a_age_lbl 24 `"24"', add
label define mn00a_age_lbl 25 `"25"', add
label define mn00a_age_lbl 26 `"26"', add
label define mn00a_age_lbl 27 `"27"', add
label define mn00a_age_lbl 28 `"28"', add
label define mn00a_age_lbl 29 `"29"', add
label define mn00a_age_lbl 30 `"30"', add
label define mn00a_age_lbl 31 `"31"', add
label define mn00a_age_lbl 32 `"32"', add
label define mn00a_age_lbl 33 `"33"', add
label define mn00a_age_lbl 34 `"34"', add
label define mn00a_age_lbl 35 `"35"', add
label define mn00a_age_lbl 36 `"36"', add
label define mn00a_age_lbl 37 `"37"', add
label define mn00a_age_lbl 38 `"38"', add
label define mn00a_age_lbl 39 `"39"', add
label define mn00a_age_lbl 40 `"40"', add
label define mn00a_age_lbl 41 `"41"', add
label define mn00a_age_lbl 42 `"42"', add
label define mn00a_age_lbl 43 `"43"', add
label define mn00a_age_lbl 44 `"44"', add
label define mn00a_age_lbl 45 `"45"', add
label define mn00a_age_lbl 46 `"46"', add
label define mn00a_age_lbl 47 `"47"', add
label define mn00a_age_lbl 48 `"48"', add
label define mn00a_age_lbl 49 `"49"', add
label define mn00a_age_lbl 50 `"50"', add
label define mn00a_age_lbl 51 `"51"', add
label define mn00a_age_lbl 52 `"52"', add
label define mn00a_age_lbl 53 `"53"', add
label define mn00a_age_lbl 54 `"54"', add
label define mn00a_age_lbl 55 `"55"', add
label define mn00a_age_lbl 56 `"56"', add
label define mn00a_age_lbl 57 `"57"', add
label define mn00a_age_lbl 58 `"58"', add
label define mn00a_age_lbl 59 `"59"', add
label define mn00a_age_lbl 60 `"60"', add
label define mn00a_age_lbl 61 `"61"', add
label define mn00a_age_lbl 62 `"62"', add
label define mn00a_age_lbl 63 `"63"', add
label define mn00a_age_lbl 64 `"64"', add
label define mn00a_age_lbl 65 `"65"', add
label define mn00a_age_lbl 66 `"66"', add
label define mn00a_age_lbl 67 `"67"', add
label define mn00a_age_lbl 68 `"68"', add
label define mn00a_age_lbl 69 `"69"', add
label define mn00a_age_lbl 70 `"70"', add
label define mn00a_age_lbl 71 `"71"', add
label define mn00a_age_lbl 72 `"72"', add
label define mn00a_age_lbl 73 `"73"', add
label define mn00a_age_lbl 74 `"74"', add
label define mn00a_age_lbl 75 `"75"', add
label define mn00a_age_lbl 76 `"76"', add
label define mn00a_age_lbl 77 `"77"', add
label define mn00a_age_lbl 78 `"78"', add
label define mn00a_age_lbl 79 `"79"', add
label define mn00a_age_lbl 80 `"80"', add
label define mn00a_age_lbl 81 `"81"', add
label define mn00a_age_lbl 82 `"82"', add
label define mn00a_age_lbl 83 `"83"', add
label define mn00a_age_lbl 84 `"84"', add
label define mn00a_age_lbl 85 `"85"', add
label define mn00a_age_lbl 86 `"86"', add
label define mn00a_age_lbl 87 `"87"', add
label define mn00a_age_lbl 88 `"88"', add
label define mn00a_age_lbl 89 `"89"', add
label define mn00a_age_lbl 90 `"90+"', add
label values mn00a_age mn00a_age_lbl

label define mn00a_citiz_lbl 01 `"Mongolian"'
label define mn00a_citiz_lbl 23 `"Russia"', add
label define mn00a_citiz_lbl 24 `"China"', add
label define mn00a_citiz_lbl 25 `"Korea"', add
label define mn00a_citiz_lbl 29 `"USA"', add
label define mn00a_citiz_lbl 50 `"Kazakhstan"', add
label define mn00a_citiz_lbl 51 `"Other"', add
label define mn00a_citiz_lbl 88 `"Non-citizen"', add
label values mn00a_citiz mn00a_citiz_lbl

label define mn00a_ethnic_lbl 01 `"Khalkh"'
label define mn00a_ethnic_lbl 02 `"Kazak"', add
label define mn00a_ethnic_lbl 03 `"Dorvod"', add
label define mn00a_ethnic_lbl 04 `"Buriad"', add
label define mn00a_ethnic_lbl 05 `"Bayad"', add
label define mn00a_ethnic_lbl 06 `"Dariganga"', add
label define mn00a_ethnic_lbl 07 `"Uriankhai"', add
label define mn00a_ethnic_lbl 08 `"Zakhchin"', add
label define mn00a_ethnic_lbl 09 `"Darkhad"', add
label define mn00a_ethnic_lbl 10 `"Torguud"', add
label define mn00a_ethnic_lbl 11 `"Oold"', add
label define mn00a_ethnic_lbl 12 `"Khoton"', add
label define mn00a_ethnic_lbl 13 `"Myangad"', add
label define mn00a_ethnic_lbl 14 `"Barga"', add
label define mn00a_ethnic_lbl 15 `"Uzemchin"', add
label define mn00a_ethnic_lbl 16 `"Kharchin"', add
label define mn00a_ethnic_lbl 18 `"Khotgoid"', add
label define mn00a_ethnic_lbl 21 `"Khamnigan"', add
label define mn00a_ethnic_lbl 23 `"Sartuul"', add
label define mn00a_ethnic_lbl 24 `"Tuva"', add
label define mn00a_ethnic_lbl 26 `"Uzbek"', add
label define mn00a_ethnic_lbl 30 `"Other ethnic group in Mongolia"', add
label define mn00a_ethnic_lbl 99 `"NIU (not in universe)"', add
label values mn00a_ethnic mn00a_ethnic_lbl

label define mn00a_resty_lbl 1 `"Resident"'
label define mn00a_resty_lbl 2 `"Temporarily absent"', add
label define mn00a_resty_lbl 3 `"Visitor"', add
label values mn00a_resty mn00a_resty_lbl

label define mn00a_uprov_lbl 01 `"Arkhangai"'
label define mn00a_uprov_lbl 02 `"Bayan-Olgii"', add
label define mn00a_uprov_lbl 03 `"Bayankhongor"', add
label define mn00a_uprov_lbl 04 `"Bulgan"', add
label define mn00a_uprov_lbl 05 `"Govi-Altai"', add
label define mn00a_uprov_lbl 06 `"Dornogovi"', add
label define mn00a_uprov_lbl 07 `"Dornod"', add
label define mn00a_uprov_lbl 08 `"Dundgovi"', add
label define mn00a_uprov_lbl 09 `"Zavkhan"', add
label define mn00a_uprov_lbl 10 `"Ovorkhangai"', add
label define mn00a_uprov_lbl 11 `"Omnogovi"', add
label define mn00a_uprov_lbl 12 `"Sukhbaatar"', add
label define mn00a_uprov_lbl 13 `"Selenge"', add
label define mn00a_uprov_lbl 14 `"Tov"', add
label define mn00a_uprov_lbl 15 `"Uvs"', add
label define mn00a_uprov_lbl 16 `"Khovd"', add
label define mn00a_uprov_lbl 17 `"Khovsgol"', add
label define mn00a_uprov_lbl 18 `"Khentii"', add
label define mn00a_uprov_lbl 19 `"Darkhan-Uul"', add
label define mn00a_uprov_lbl 20 `"Ulaanbaatar"', add
label define mn00a_uprov_lbl 21 `"Orkhon"', add
label define mn00a_uprov_lbl 22 `"Govisumber"', add
label define mn00a_uprov_lbl 23 `"Russia"', add
label define mn00a_uprov_lbl 24 `"China"', add
label define mn00a_uprov_lbl 25 `"Korea"', add
label define mn00a_uprov_lbl 27 `"Germany"', add
label define mn00a_uprov_lbl 28 `"Japan"', add
label define mn00a_uprov_lbl 29 `"United States"', add
label define mn00a_uprov_lbl 30 `"Turkey"', add
label define mn00a_uprov_lbl 31 `"UK"', add
label define mn00a_uprov_lbl 42 `"Hungary"', add
label define mn00a_uprov_lbl 43 `"Czech"', add
label define mn00a_uprov_lbl 49 `"Poland"', add
label define mn00a_uprov_lbl 50 `"Kazakhstan"', add
label define mn00a_uprov_lbl 51 `"Other foreign country"', add
label define mn00a_uprov_lbl 98 `"Unknown"', add
label define mn00a_uprov_lbl 99 `"NIU (not in universe)"', add
label values mn00a_uprov mn00a_uprov_lbl

label define mn00a_migty_lbl 1 `"Since birth"'
label define mn00a_migty_lbl 2 `"Moved in"', add
label values mn00a_migty mn00a_migty_lbl

label define mn00a_prevprov_lbl 01 `"Arkhangai"'
label define mn00a_prevprov_lbl 02 `"Bayan-Olgii"', add
label define mn00a_prevprov_lbl 03 `"Bayankhongor"', add
label define mn00a_prevprov_lbl 04 `"Bulgan"', add
label define mn00a_prevprov_lbl 05 `"Govi-Altai"', add
label define mn00a_prevprov_lbl 06 `"Dornogovi"', add
label define mn00a_prevprov_lbl 07 `"Dornod"', add
label define mn00a_prevprov_lbl 08 `"Dundgovi"', add
label define mn00a_prevprov_lbl 09 `"Zavkhan"', add
label define mn00a_prevprov_lbl 10 `"Ovorkhangai"', add
label define mn00a_prevprov_lbl 11 `"Omnogovi"', add
label define mn00a_prevprov_lbl 12 `"Sukhbaatar"', add
label define mn00a_prevprov_lbl 13 `"Selenge"', add
label define mn00a_prevprov_lbl 14 `"Tov"', add
label define mn00a_prevprov_lbl 15 `"Uvs"', add
label define mn00a_prevprov_lbl 16 `"Khovd"', add
label define mn00a_prevprov_lbl 17 `"Khovsgol"', add
label define mn00a_prevprov_lbl 18 `"Khentii"', add
label define mn00a_prevprov_lbl 19 `"Darkhan-Uul"', add
label define mn00a_prevprov_lbl 20 `"Ulaanbaatar"', add
label define mn00a_prevprov_lbl 21 `"Orkhon"', add
label define mn00a_prevprov_lbl 22 `"Govisumber"', add
label define mn00a_prevprov_lbl 23 `"Russia"', add
label define mn00a_prevprov_lbl 24 `"China"', add
label define mn00a_prevprov_lbl 25 `"Korea"', add
label define mn00a_prevprov_lbl 27 `"Germany"', add
label define mn00a_prevprov_lbl 29 `"United States"', add
label define mn00a_prevprov_lbl 50 `"Kazakhstan"', add
label define mn00a_prevprov_lbl 51 `"Other foreign country"', add
label define mn00a_prevprov_lbl 99 `"NIU (not in universe)"', add
label values mn00a_prevprov mn00a_prevprov_lbl

label define mn00a_migyr_lbl 1940 `"1940 or earlier"'
label define mn00a_migyr_lbl 1941 `"1941"', add
label define mn00a_migyr_lbl 1942 `"1942"', add
label define mn00a_migyr_lbl 1943 `"1943"', add
label define mn00a_migyr_lbl 1944 `"1944"', add
label define mn00a_migyr_lbl 1945 `"1945"', add
label define mn00a_migyr_lbl 1946 `"1946"', add
label define mn00a_migyr_lbl 1947 `"1947"', add
label define mn00a_migyr_lbl 1948 `"1948"', add
label define mn00a_migyr_lbl 1949 `"1949"', add
label define mn00a_migyr_lbl 1950 `"1950"', add
label define mn00a_migyr_lbl 1951 `"1951"', add
label define mn00a_migyr_lbl 1952 `"1952"', add
label define mn00a_migyr_lbl 1953 `"1953"', add
label define mn00a_migyr_lbl 1954 `"1954"', add
label define mn00a_migyr_lbl 1955 `"1955"', add
label define mn00a_migyr_lbl 1956 `"1956"', add
label define mn00a_migyr_lbl 1957 `"1957"', add
label define mn00a_migyr_lbl 1958 `"1958"', add
label define mn00a_migyr_lbl 1959 `"1959"', add
label define mn00a_migyr_lbl 1960 `"1960"', add
label define mn00a_migyr_lbl 1961 `"1961"', add
label define mn00a_migyr_lbl 1962 `"1962"', add
label define mn00a_migyr_lbl 1963 `"1963"', add
label define mn00a_migyr_lbl 1964 `"1964"', add
label define mn00a_migyr_lbl 1965 `"1965"', add
label define mn00a_migyr_lbl 1966 `"1966"', add
label define mn00a_migyr_lbl 1967 `"1967"', add
label define mn00a_migyr_lbl 1968 `"1968"', add
label define mn00a_migyr_lbl 1969 `"1969"', add
label define mn00a_migyr_lbl 1970 `"1970"', add
label define mn00a_migyr_lbl 1971 `"1971"', add
label define mn00a_migyr_lbl 1972 `"1972"', add
label define mn00a_migyr_lbl 1973 `"1973"', add
label define mn00a_migyr_lbl 1974 `"1974"', add
label define mn00a_migyr_lbl 1975 `"1975"', add
label define mn00a_migyr_lbl 1976 `"1976"', add
label define mn00a_migyr_lbl 1977 `"1977"', add
label define mn00a_migyr_lbl 1978 `"1978"', add
label define mn00a_migyr_lbl 1979 `"1979"', add
label define mn00a_migyr_lbl 1980 `"1980"', add
label define mn00a_migyr_lbl 1981 `"1981"', add
label define mn00a_migyr_lbl 1982 `"1982"', add
label define mn00a_migyr_lbl 1983 `"1983"', add
label define mn00a_migyr_lbl 1984 `"1984"', add
label define mn00a_migyr_lbl 1985 `"1985"', add
label define mn00a_migyr_lbl 1986 `"1986"', add
label define mn00a_migyr_lbl 1987 `"1987"', add
label define mn00a_migyr_lbl 1988 `"1988"', add
label define mn00a_migyr_lbl 1989 `"1989"', add
label define mn00a_migyr_lbl 1990 `"1990"', add
label define mn00a_migyr_lbl 1991 `"1991"', add
label define mn00a_migyr_lbl 1992 `"1992"', add
label define mn00a_migyr_lbl 1993 `"1993"', add
label define mn00a_migyr_lbl 1994 `"1994"', add
label define mn00a_migyr_lbl 1995 `"1995"', add
label define mn00a_migyr_lbl 1996 `"1996"', add
label define mn00a_migyr_lbl 1997 `"1997"', add
label define mn00a_migyr_lbl 1998 `"1998"', add
label define mn00a_migyr_lbl 1999 `"1999"', add
label define mn00a_migyr_lbl 9999 `"NIU (not in universe)"', add
label values mn00a_migyr mn00a_migyr_lbl

label define mn00a_bpl_lbl 01 `"Arkhangai"'
label define mn00a_bpl_lbl 02 `"Bayan-Olgii"', add
label define mn00a_bpl_lbl 03 `"Bayankhongor"', add
label define mn00a_bpl_lbl 04 `"Bulgan"', add
label define mn00a_bpl_lbl 05 `"Govi-Altai"', add
label define mn00a_bpl_lbl 06 `"Dornogovi"', add
label define mn00a_bpl_lbl 07 `"Dornod"', add
label define mn00a_bpl_lbl 08 `"Dundgovi"', add
label define mn00a_bpl_lbl 09 `"Zavkhan"', add
label define mn00a_bpl_lbl 10 `"Ovorkhangai"', add
label define mn00a_bpl_lbl 11 `"Omnogovi"', add
label define mn00a_bpl_lbl 12 `"Sukhbaatar"', add
label define mn00a_bpl_lbl 13 `"Selenge"', add
label define mn00a_bpl_lbl 14 `"Tov"', add
label define mn00a_bpl_lbl 15 `"Uvs"', add
label define mn00a_bpl_lbl 16 `"Khovd"', add
label define mn00a_bpl_lbl 17 `"Khovsgol"', add
label define mn00a_bpl_lbl 18 `"Khentii"', add
label define mn00a_bpl_lbl 19 `"Darkhan-Uul"', add
label define mn00a_bpl_lbl 20 `"Ulaanbaatar"', add
label define mn00a_bpl_lbl 21 `"Orkhon"', add
label define mn00a_bpl_lbl 22 `"Govisumber"', add
label define mn00a_bpl_lbl 23 `"Russia"', add
label define mn00a_bpl_lbl 24 `"China"', add
label define mn00a_bpl_lbl 25 `"Korea"', add
label define mn00a_bpl_lbl 29 `"United States"', add
label define mn00a_bpl_lbl 50 `"Kazakhstan"', add
label define mn00a_bpl_lbl 51 `"Other foreign country"', add
label values mn00a_bpl mn00a_bpl_lbl

label define mn00a_res5yr_lbl 01 `"Arkhangai"'
label define mn00a_res5yr_lbl 02 `"Bayan-Olgii"', add
label define mn00a_res5yr_lbl 03 `"Bayankhongor"', add
label define mn00a_res5yr_lbl 04 `"Bulgan"', add
label define mn00a_res5yr_lbl 05 `"Govi-Altai"', add
label define mn00a_res5yr_lbl 06 `"Dornogovi"', add
label define mn00a_res5yr_lbl 07 `"Dornod"', add
label define mn00a_res5yr_lbl 08 `"Dundgovi"', add
label define mn00a_res5yr_lbl 09 `"Zavkhan"', add
label define mn00a_res5yr_lbl 10 `"Ovorkhangai"', add
label define mn00a_res5yr_lbl 11 `"Omnogovi"', add
label define mn00a_res5yr_lbl 12 `"Sukhbaatar"', add
label define mn00a_res5yr_lbl 13 `"Selenge"', add
label define mn00a_res5yr_lbl 14 `"Tov"', add
label define mn00a_res5yr_lbl 15 `"Uvs"', add
label define mn00a_res5yr_lbl 16 `"Khovd"', add
label define mn00a_res5yr_lbl 17 `"Khovsgol"', add
label define mn00a_res5yr_lbl 18 `"Khentii"', add
label define mn00a_res5yr_lbl 19 `"Darkhan-Uul"', add
label define mn00a_res5yr_lbl 20 `"Ulaanbaatar"', add
label define mn00a_res5yr_lbl 21 `"Orkhon"', add
label define mn00a_res5yr_lbl 22 `"Govisumber"', add
label define mn00a_res5yr_lbl 23 `"Russia"', add
label define mn00a_res5yr_lbl 24 `"China"', add
label define mn00a_res5yr_lbl 25 `"Korea"', add
label define mn00a_res5yr_lbl 27 `"Germany"', add
label define mn00a_res5yr_lbl 29 `"United States"', add
label define mn00a_res5yr_lbl 50 `"Kazakhstan"', add
label define mn00a_res5yr_lbl 51 `"Other foreign country"', add
label define mn00a_res5yr_lbl 98 `"Unknown"', add
label define mn00a_res5yr_lbl 99 `"NIU (not in universe)"', add
label values mn00a_res5yr mn00a_res5yr_lbl

label define mn00a_educ_lbl 1 `"Less than primary"'
label define mn00a_educ_lbl 2 `"Primary"', add
label define mn00a_educ_lbl 3 `"Grade 4-8"', add
label define mn00a_educ_lbl 4 `"Grade 9-10"', add
label define mn00a_educ_lbl 5 `"Technical vocational"', add
label define mn00a_educ_lbl 6 `"Diploma"', add
label define mn00a_educ_lbl 7 `"High"', add
label define mn00a_educ_lbl 9 `"NIU (not in universe)"', add
label values mn00a_educ mn00a_educ_lbl

label define mn00a_lit_lbl 1 `"Literate"'
label define mn00a_lit_lbl 2 `"Illiterate"', add
label define mn00a_lit_lbl 9 `"NIU (not in universe)"', add
label values mn00a_lit mn00a_lit_lbl

label define mn00a_school_lbl 1 `"Yes"'
label define mn00a_school_lbl 2 `"No"', add
label define mn00a_school_lbl 9 `"NIU (not in universe)"', add
label values mn00a_school mn00a_school_lbl

label define mn00a_marst_lbl 1 `"Never married"'
label define mn00a_marst_lbl 2 `"Married"', add
label define mn00a_marst_lbl 3 `"Living together"', add
label define mn00a_marst_lbl 4 `"Separated"', add
label define mn00a_marst_lbl 5 `"Divorced"', add
label define mn00a_marst_lbl 6 `"Widowed"', add
label define mn00a_marst_lbl 9 `"NIU (not in universe)"', add
label values mn00a_marst mn00a_marst_lbl

label define mn00a_employed_lbl 1 `"Yes"'
label define mn00a_employed_lbl 2 `"No"', add
label define mn00a_employed_lbl 9 `"NIU (not in universe)"', add
label values mn00a_employed mn00a_employed_lbl

label define mn00a_occ_lbl 011 `"Armed forces"'
label define mn00a_occ_lbl 112 `"Senior government officials"', add
label define mn00a_occ_lbl 113 `"Governors"', add
label define mn00a_occ_lbl 114 `"Senior officials of special-interest organisations"', add
label define mn00a_occ_lbl 121 `"Directors and chief executives"', add
label define mn00a_occ_lbl 122 `"Production and operations department managers"', add
label define mn00a_occ_lbl 123 `"Other department managers"', add
label define mn00a_occ_lbl 131 `"General managers"', add
label define mn00a_occ_lbl 141 `"Master of enterprises"', add
label define mn00a_occ_lbl 211 `"Physicists, chemists and related professionals"', add
label define mn00a_occ_lbl 213 `"Computing professionals"', add
label define mn00a_occ_lbl 214 `"Architects, engineers and related professionals"', add
label define mn00a_occ_lbl 221 `"Life science professionals"', add
label define mn00a_occ_lbl 222 `"Health professional (except nursing)"', add
label define mn00a_occ_lbl 231 `"College, university and higher education teaching professionals"', add
label define mn00a_occ_lbl 232 `"Secondary education teaching professionals"', add
label define mn00a_occ_lbl 233 `"Primary and pre-primary education teaching professionals"', add
label define mn00a_occ_lbl 234 `"Special education teaching professionals"', add
label define mn00a_occ_lbl 235 `"Other teaching professionals"', add
label define mn00a_occ_lbl 241 `"Business professionals"', add
label define mn00a_occ_lbl 242 `"Legal professionals"', add
label define mn00a_occ_lbl 243 `"Archivists, librarians and related information professionals"', add
label define mn00a_occ_lbl 244 `"Social science and related professionals"', add
label define mn00a_occ_lbl 245 `"Writers and creative or performing artists"', add
label define mn00a_occ_lbl 246 `"Religious professionals"', add
label define mn00a_occ_lbl 299 `"Professionals, n.e.c."', add
label define mn00a_occ_lbl 311 `"Physical and engineering science technicians"', add
label define mn00a_occ_lbl 312 `"Computer associate professionals"', add
label define mn00a_occ_lbl 313 `"Optical electronic equipment operators"', add
label define mn00a_occ_lbl 314 `"Ship and aircraft controllers and technicians"', add
label define mn00a_occ_lbl 315 `"Safety and quality inspectors"', add
label define mn00a_occ_lbl 321 `"Life science technicians and related associate professionals"', add
label define mn00a_occ_lbl 322 `"Modern health associate professionals (except nursing)"', add
label define mn00a_occ_lbl 323 `"Nursing and midwifery associate professionals"', add
label define mn00a_occ_lbl 331 `"Primary education teaching associate professionals"', add
label define mn00a_occ_lbl 332 `"Pre-primary education teaching associate professionals"', add
label define mn00a_occ_lbl 334 `"Other teaching associate professionals"', add
label define mn00a_occ_lbl 341 `"Finance and sales associate professionals"', add
label define mn00a_occ_lbl 342 `"Business services agents and trade brokers"', add
label define mn00a_occ_lbl 343 `"Administrative associate professionals"', add
label define mn00a_occ_lbl 344 `"Customs, tax and related government associate professionals"', add
label define mn00a_occ_lbl 345 `"Police inspectors and detectives"', add
label define mn00a_occ_lbl 346 `"Social work associate professionals"', add
label define mn00a_occ_lbl 347 `"Artistic, entertainment and sports associate professionals"', add
label define mn00a_occ_lbl 399 `"Technicians and associate professionals, n.e.c."', add
label define mn00a_occ_lbl 411 `"Secretaries and keyboard-operating clerks"', add
label define mn00a_occ_lbl 413 `"Material-recording and transport clerks"', add
label define mn00a_occ_lbl 414 `"Library, mail and related clerks"', add
label define mn00a_occ_lbl 419 `"Other office clerks"', add
label define mn00a_occ_lbl 421 `"Cashiers, tellers and related clerks"', add
label define mn00a_occ_lbl 422 `"Client information clerks"', add
label define mn00a_occ_lbl 511 `"Travel attendants and related workers"', add
label define mn00a_occ_lbl 512 `"Housekeeping and restaurant services workers"', add
label define mn00a_occ_lbl 513 `"Personal care and related workers"', add
label define mn00a_occ_lbl 514 `"Other personal services workers"', add
label define mn00a_occ_lbl 516 `"Protective services workers"', add
label define mn00a_occ_lbl 522 `"Shop salespersons and demonstrators"', add
label define mn00a_occ_lbl 523 `"Stall and market salespersons"', add
label define mn00a_occ_lbl 611 `"Market gardeners and crop growers"', add
label define mn00a_occ_lbl 612 `"Market-oriented animal producers and related workers"', add
label define mn00a_occ_lbl 614 `"Forestry and related workers"', add
label define mn00a_occ_lbl 615 `"Fishery workers, hunters and trappers"', add
label define mn00a_occ_lbl 621 `"Subsistence agricultural and fishery workers"', add
label define mn00a_occ_lbl 711 `"Miners, shortfirers, stone cutters and carvers"', add
label define mn00a_occ_lbl 712 `"Building frame and related trades workers"', add
label define mn00a_occ_lbl 713 `"Building finishers and related trades workers"', add
label define mn00a_occ_lbl 714 `"Painters, building structure cleaners and related trades workers"', add
label define mn00a_occ_lbl 721 `"Metal moulders, welders, sheet-metal workers, structural-metal preparers, and related trades workers"', add
label define mn00a_occ_lbl 722 `"Blacksmiths, tool-makers and related trades workers"', add
label define mn00a_occ_lbl 723 `"Machinery mechanics and fitters"', add
label define mn00a_occ_lbl 724 `"Electrical and electronic equipment mechanics and fitters"', add
label define mn00a_occ_lbl 731 `"Precision workers in metal and related materials"', add
label define mn00a_occ_lbl 732 `"Potters, glass-makers and related trades workers"', add
label define mn00a_occ_lbl 741 `"Food processing and related trades workers"', add
label define mn00a_occ_lbl 742 `"Wood treaters, cabinet-makers and related trades workers"', add
label define mn00a_occ_lbl 743 `"Textile, garment and related trades workers"', add
label define mn00a_occ_lbl 744 `"Pelt, leather and shoemaking trades workers"', add
label define mn00a_occ_lbl 799 `"Craft and related workers, n.e.c."', add
label define mn00a_occ_lbl 811 `"Mining- and mineral-processing plant operators"', add
label define mn00a_occ_lbl 812 `"Metal-processing-plant operators"', add
label define mn00a_occ_lbl 813 `"Glass, ceramics and related plant operators"', add
label define mn00a_occ_lbl 814 `"Wood-processing- and papermaking-plant operators"', add
label define mn00a_occ_lbl 815 `"Chemical-processing-plant operators"', add
label define mn00a_occ_lbl 816 `"Power-production and related plant operators"', add
label define mn00a_occ_lbl 821 `"Metal- and mineral-products machine operators"', add
label define mn00a_occ_lbl 822 `"Chemical-products machine operators"', add
label define mn00a_occ_lbl 825 `"Printing-, binding- and paper-products machine operators"', add
label define mn00a_occ_lbl 826 `"Textile-, fur- and leather-products machine operators"', add
label define mn00a_occ_lbl 827 `"Food and related products machine operators"', add
label define mn00a_occ_lbl 831 `"Locomotive-engine drivers and related workers"', add
label define mn00a_occ_lbl 832 `"Motor-vehicle drivers"', add
label define mn00a_occ_lbl 833 `"Agricultural and other mobile-plant operators"', add
label define mn00a_occ_lbl 899 `"Plant and machine operators and assemblers, n.e.c."', add
label define mn00a_occ_lbl 911 `"Street vendors and related workers"', add
label define mn00a_occ_lbl 913 `"Domestic and related helpers, cleaners and launderers"', add
label define mn00a_occ_lbl 914 `"Building caretakers, window and related cleaners"', add
label define mn00a_occ_lbl 915 `"Messengers, porters, doorkeepers and related workers"', add
label define mn00a_occ_lbl 916 `"Garbage collectors and related labourers"', add
label define mn00a_occ_lbl 921 `"Farm-hands and labourers"', add
label define mn00a_occ_lbl 931 `"Mining and quarrying labourers"', add
label define mn00a_occ_lbl 932 `"Manufacturing labourers"', add
label define mn00a_occ_lbl 933 `"Transport labourers and freight handlers"', add
label define mn00a_occ_lbl 990 `"Occupation response suppressed"', add
label define mn00a_occ_lbl 998 `"Unknown"', add
label define mn00a_occ_lbl 999 `"NIU (not in universe)"', add
label values mn00a_occ mn00a_occ_lbl

label define mn00a_ind_lbl 011 `"Growing of crops; market gardening; horticulture"'
label define mn00a_ind_lbl 012 `"Farming of animals"', add
label define mn00a_ind_lbl 020 `"Forestry, logging and related service activities"', add
label define mn00a_ind_lbl 099 `"Agriculture, forestry and fishing, n.e.c."', add
label define mn00a_ind_lbl 101 `"Mining and agglomeration of hard coal"', add
label define mn00a_ind_lbl 102 `"Mining and agglomeration of lignite"', add
label define mn00a_ind_lbl 132 `"Mining of non-ferrous metal ores, except uranium and thorium ores"', add
label define mn00a_ind_lbl 141 `"Quarrying of stone, sand and clay"', add
label define mn00a_ind_lbl 142 `"Mining and quarrying n.e.c."', add
label define mn00a_ind_lbl 151 `"Production, processing and preservation of meat, fish, fruit, vegetables, oils and fats"', add
label define mn00a_ind_lbl 152 `"Manufacture of dairy products"', add
label define mn00a_ind_lbl 153 `"Manufacture of grain mill products, starches and starch products, and prepared animal feeds"', add
label define mn00a_ind_lbl 154 `"Manufacture of other food products"', add
label define mn00a_ind_lbl 155 `"Manufacture of beverages"', add
label define mn00a_ind_lbl 171 `"Spinning, weaving and finishing of textiles"', add
label define mn00a_ind_lbl 172 `"Manufacture of other textiles"', add
label define mn00a_ind_lbl 173 `"Manufacture of knitted and crocheted fabrics and articles"', add
label define mn00a_ind_lbl 181 `"Manufacture of wearing apparel, except fur apparel"', add
label define mn00a_ind_lbl 182 `"Dressing and dyeing of fur; manufacture of articles of fur"', add
label define mn00a_ind_lbl 191 `"Tanning and dressing of leather; manufacture of luggage, handbags, saddlery and harness"', add
label define mn00a_ind_lbl 192 `"Manufacture of footwear"', add
label define mn00a_ind_lbl 201 `"Sawmilling and planing of wood"', add
label define mn00a_ind_lbl 202 `"Manufacture of products of wood, cork, straw and plaiting materials"', add
label define mn00a_ind_lbl 221 `"Publishing"', add
label define mn00a_ind_lbl 222 `"Printing and service activities related to printing"', add
label define mn00a_ind_lbl 242 `"Manufacture of other chemical products"', add
label define mn00a_ind_lbl 269 `"Manufacture of non-metallic mineral products n.e.c."', add
label define mn00a_ind_lbl 273 `"Casting of metals"', add
label define mn00a_ind_lbl 289 `"Manufacture of other fabricated metal products; metal working service activities"', add
label define mn00a_ind_lbl 361 `"Manufacture of furniture"', add
label define mn00a_ind_lbl 369 `"Manufacturing n.e.c."', add
label define mn00a_ind_lbl 401 `"Production, transmission and distribution of electricity"', add
label define mn00a_ind_lbl 403 `"Steam and hot water supply"', add
label define mn00a_ind_lbl 410 `"Collection, purification and distribution of water"', add
label define mn00a_ind_lbl 452 `"Building of complete constructions or parts thereof; civil engineering"', add
label define mn00a_ind_lbl 453 `"Building installation"', add
label define mn00a_ind_lbl 454 `"Building completion"', add
label define mn00a_ind_lbl 502 `"Maintenance and repair of motor vehicles"', add
label define mn00a_ind_lbl 503 `"Sale of motor vehicle parts and accessories"', add
label define mn00a_ind_lbl 505 `"Retail sale of automotive fuel"', add
label define mn00a_ind_lbl 511 `"Wholesale on a fee or contract basis"', add
label define mn00a_ind_lbl 512 `"Wholesale of agricultural raw materials, live animals, food, beverages and tobacco"', add
label define mn00a_ind_lbl 513 `"Wholesale of household goods"', add
label define mn00a_ind_lbl 514 `"Wholesale of non-agricultural intermediate products, waste and scrap"', add
label define mn00a_ind_lbl 516 `"Wholesale trade and commission trade, except of motor vehicles and motorcycles"', add
label define mn00a_ind_lbl 521 `"Non-specialized retail trade in stores"', add
label define mn00a_ind_lbl 522 `"Retail sale of food, beverages and tobacco in specialized stores"', add
label define mn00a_ind_lbl 523 `"Other retail trade of new goods in specialized stores"', add
label define mn00a_ind_lbl 524 `"Retail sale of second-hand goods in stores"', add
label define mn00a_ind_lbl 525 `"Retail trade not in stores"', add
label define mn00a_ind_lbl 526 `"Repair of personal and household goods"', add
label define mn00a_ind_lbl 551 `"Hotels; camping sites and other provision of short-stay accommodation"', add
label define mn00a_ind_lbl 552 `"Restaurants, bars and canteens"', add
label define mn00a_ind_lbl 599 `"Retail or wholesale trade, n.e.c."', add
label define mn00a_ind_lbl 601 `"Transport via railways"', add
label define mn00a_ind_lbl 602 `"Other land transport"', add
label define mn00a_ind_lbl 621 `"Scheduled air transport"', add
label define mn00a_ind_lbl 630 `"Supporting and auxiliary transport activities; activities of travel agencies"', add
label define mn00a_ind_lbl 641 `"Post and courier activities"', add
label define mn00a_ind_lbl 642 `"Telecommunications"', add
label define mn00a_ind_lbl 651 `"Monetary intermediation"', add
label define mn00a_ind_lbl 659 `"Other financial intermediation"', add
label define mn00a_ind_lbl 671 `"Activities auxiliary to financial intermediation, except insurance and pension funding"', add
label define mn00a_ind_lbl 701 `"Real estate activities with own or leased property"', add
label define mn00a_ind_lbl 702 `"Real estate activities on a fee or contract basis"', add
label define mn00a_ind_lbl 729 `"Other computer related activities"', add
label define mn00a_ind_lbl 731 `"Research and experimental development on natural sciences and engineering (NSE)"', add
label define mn00a_ind_lbl 741 `"Legal, accounting, book-keeping and auditing activities; tax consultancy; market research and public opinion polling; business and management consultancy"', add
label define mn00a_ind_lbl 742 `"Architectural, engineering and other technical activities"', add
label define mn00a_ind_lbl 749 `"Business activities n.e.c."', add
label define mn00a_ind_lbl 751 `"Administration of the State and the economic and social policy of the community"', add
label define mn00a_ind_lbl 752 `"Provision of services to the community as a whole"', add
label define mn00a_ind_lbl 753 `"Compulsory social security activities"', add
label define mn00a_ind_lbl 801 `"Primary education"', add
label define mn00a_ind_lbl 802 `"Secondary education"', add
label define mn00a_ind_lbl 803 `"Higher education"', add
label define mn00a_ind_lbl 809 `"Other education"', add
label define mn00a_ind_lbl 851 `"Human health activities"', add
label define mn00a_ind_lbl 852 `"Veterinary activities"', add
label define mn00a_ind_lbl 853 `"Social work activities"', add
label define mn00a_ind_lbl 900 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define mn00a_ind_lbl 911 `"Activities of business, employers and professional organizations"', add
label define mn00a_ind_lbl 919 `"Activities of other membership organizations"', add
label define mn00a_ind_lbl 921 `"Motion picture, radio, television and other entertainment activities"', add
label define mn00a_ind_lbl 922 `"News agency activities"', add
label define mn00a_ind_lbl 923 `"Library, archives, museums and other cultural activities"', add
label define mn00a_ind_lbl 924 `"Sporting and other recreational activities"', add
label define mn00a_ind_lbl 930 `"Other service activities"', add
label define mn00a_ind_lbl 990 `"Extra-territorial organizations and bodies"', add
label define mn00a_ind_lbl 992 `"Labourers in foreign countries"', add
label define mn00a_ind_lbl 995 `"Industry response suppressed"', add
label define mn00a_ind_lbl 998 `"Unknown"', add
label define mn00a_ind_lbl 999 `"NIU (not in universe)"', add
label values mn00a_ind mn00a_ind_lbl

label define mn00a_classwk_lbl 1 `"Employee"'
label define mn00a_classwk_lbl 2 `"Employer"', add
label define mn00a_classwk_lbl 3 `"Self employed"', add
label define mn00a_classwk_lbl 4 `"Member of cooperative"', add
label define mn00a_classwk_lbl 5 `"Household member working"', add
label define mn00a_classwk_lbl 6 `"Other"', add
label define mn00a_classwk_lbl 9 `"NIU (not in universe)"', add
label values mn00a_classwk mn00a_classwk_lbl

label define mn00a_unemp_lbl 1 `"Studying"'
label define mn00a_unemp_lbl 2 `"On pension/retiree"', add
label define mn00a_unemp_lbl 3 `"Disabled"', add
label define mn00a_unemp_lbl 4 `"Home duties"', add
label define mn00a_unemp_lbl 5 `"No work available"', add
label define mn00a_unemp_lbl 6 `"Looking for job"', add
label define mn00a_unemp_lbl 7 `"Other"', add
label define mn00a_unemp_lbl 9 `"NIU (not in universe)"', add
label values mn00a_unemp mn00a_unemp_lbl


