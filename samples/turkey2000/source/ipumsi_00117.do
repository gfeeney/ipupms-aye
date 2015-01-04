* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    tr00a_dwnum     22-27    ///
  byte    tr00a_pern      28-29    ///
  byte    tr00a_fbig      30-30    ///
  byte    tr00a_prov      31-32    ///
  int     tr00a_dist      33-36    ///
  byte    tr00a_urban     37-37    ///
  byte    tr00a_dwtype    38-38    ///
  byte    tr00a_headhome  39-39    ///
  byte    tr00a_hhsize    40-41    ///
  byte    tr00a_ownershp  42-42    ///
  byte    tr00a_rooms     43-44    ///
  byte    tr00a_toilet    45-45    ///
  byte    tr00a_bath      46-46    ///
  byte    tr00a_kitchen   47-47    ///
  byte    tr00a_pipewtr   48-48    ///
  int     pernum          49-51    ///
  float   wtper           52-59    ///
  byte    tr00a_pernum    60-61    ///
  byte    tr00a_relate    62-63    ///
  byte    tr00a_sex       64-64    ///
  byte    tr00a_age       65-66    ///
  byte    tr00a_bplprov   67-68    ///
  byte    tr00a_nation    69-69    ///
  byte    tr00a_disab     70-70    ///
  byte    tr00a_distype   71-71    ///
  byte    tr00a_lit       72-72    ///
  byte    tr00a_edlevel   73-73    ///
  byte    tr00a_marst     74-74    ///
  byte    tr00a_everbrth  75-75    ///
  byte    tr00a_chbornf   76-77    ///
  byte    tr00a_chbornm   78-79    ///
  byte    tr00a_chsurvf   80-81    ///
  byte    tr00a_chsurvm   82-83    ///
  byte    tr00a_mobirth   84-85    ///
  int     tr00a_yrbirth   86-89    ///
  byte    tr00a_workweek  90-90    ///
  byte    tr00a_occ1      91-91    ///
  byte    tr00a_occ2      92-93    ///
  byte    tr00a_ind1      94-95    ///
  byte    tr00a_ind2      96-97    ///
  byte    tr00a_prof1     98-99    ///
  byte    tr00a_prof2     100-101  ///
  byte    tr00a_classwk   102-102  ///
  byte    tr00a_seekwork  103-103  ///
  byte    tr00a_durseek   104-104  ///
  byte    tr00a_durseek   105-105  ///
  byte    tr00a_workreas  106-106  ///
  using `"ipumsi_00117.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var tr00a_dwnum    `"Dwelling number"'
label var tr00a_pern     `"Number of persons in household"'
label var tr00a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var tr00a_prov     `"Province"'
label var tr00a_dist     `"District"'
label var tr00a_urban    `"Urban-rural status"'
label var tr00a_dwtype   `"Type of dwelling"'
label var tr00a_headhome `"Head of household at home"'
label var tr00a_hhsize   `"Size of household"'
label var tr00a_ownershp `"Ownership status"'
label var tr00a_rooms    `"Number of rooms"'
label var tr00a_toilet   `"Toilet"'
label var tr00a_bath     `"Bathroom"'
label var tr00a_kitchen  `"Kitchen"'
label var tr00a_pipewtr  `"Piped water"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var tr00a_pernum   `"Person number (within household)"'
label var tr00a_relate   `"Relationship to the head of household"'
label var tr00a_sex      `"Sex"'
label var tr00a_age      `"Age, completed years"'
label var tr00a_bplprov  `"Province of birth"'
label var tr00a_nation   `"Nationality"'
label var tr00a_disab    `"Has disability"'
label var tr00a_distype  `"Type of disability"'
label var tr00a_lit      `"Literacy"'
label var tr00a_edlevel  `"Level of completed education"'
label var tr00a_marst    `"Marital status"'
label var tr00a_everbrth `"Ever gave birth"'
label var tr00a_chbornf  `"Female births"'
label var tr00a_chbornm  `"Male births"'
label var tr00a_chsurvf  `"Female children surviving"'
label var tr00a_chsurvm  `"Male children surviving"'
label var tr00a_mobirth  `"Month of last birth"'
label var tr00a_yrbirth  `"Year of last birth"'
label var tr00a_workweek `"Worked previous week"'
label var tr00a_occ1     `"Current occupation, 1 digit"'
label var tr00a_occ2     `"Current occupation, 2 digit"'
label var tr00a_ind1     `"Industry, 1 digit"'
label var tr00a_ind2     `"Industry, 2 digit"'
label var tr00a_prof1    `"Profession, 1 digit"'
label var tr00a_prof2    `"Profession, 2 digit"'
label var tr00a_classwk  `"Status in employment"'
label var tr00a_seekwork `"Seeking a job"'
label var tr00a_durseek  `"Last attempt in seeking a job"'
label var tr00a_durseek  `"Last attempt in seeking a job"'
label var tr00a_workreas `"Reason for not working"'

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

label define tr00a_pern_lbl 01 `"1"'
label define tr00a_pern_lbl 02 `"2"', add
label define tr00a_pern_lbl 03 `"3"', add
label define tr00a_pern_lbl 04 `"4"', add
label define tr00a_pern_lbl 05 `"5"', add
label define tr00a_pern_lbl 06 `"6"', add
label define tr00a_pern_lbl 07 `"7"', add
label define tr00a_pern_lbl 08 `"8"', add
label define tr00a_pern_lbl 09 `"9"', add
label define tr00a_pern_lbl 10 `"10"', add
label define tr00a_pern_lbl 11 `"11"', add
label define tr00a_pern_lbl 12 `"12"', add
label define tr00a_pern_lbl 13 `"13"', add
label define tr00a_pern_lbl 14 `"14"', add
label define tr00a_pern_lbl 15 `"15"', add
label define tr00a_pern_lbl 16 `"16"', add
label define tr00a_pern_lbl 17 `"17"', add
label define tr00a_pern_lbl 18 `"18"', add
label define tr00a_pern_lbl 19 `"19"', add
label define tr00a_pern_lbl 20 `"20"', add
label define tr00a_pern_lbl 21 `"21"', add
label define tr00a_pern_lbl 22 `"22"', add
label define tr00a_pern_lbl 23 `"23"', add
label define tr00a_pern_lbl 24 `"24"', add
label define tr00a_pern_lbl 25 `"25"', add
label define tr00a_pern_lbl 26 `"26"', add
label define tr00a_pern_lbl 27 `"27"', add
label define tr00a_pern_lbl 28 `"28"', add
label define tr00a_pern_lbl 29 `"29"', add
label define tr00a_pern_lbl 30 `"30"', add
label define tr00a_pern_lbl 31 `"31"', add
label define tr00a_pern_lbl 32 `"32"', add
label define tr00a_pern_lbl 33 `"33"', add
label define tr00a_pern_lbl 34 `"34"', add
label define tr00a_pern_lbl 35 `"35"', add
label define tr00a_pern_lbl 36 `"36"', add
label define tr00a_pern_lbl 37 `"37"', add
label define tr00a_pern_lbl 38 `"38"', add
label define tr00a_pern_lbl 39 `"39"', add
label define tr00a_pern_lbl 41 `"41"', add
label define tr00a_pern_lbl 42 `"42"', add
label define tr00a_pern_lbl 46 `"46"', add
label define tr00a_pern_lbl 48 `"48"', add
label define tr00a_pern_lbl 49 `"49"', add
label define tr00a_pern_lbl 51 `"51"', add
label define tr00a_pern_lbl 55 `"55"', add
label define tr00a_pern_lbl 56 `"56"', add
label values tr00a_pern tr00a_pern_lbl

label define tr00a_fbig_lbl 0 `"No problem"'
label define tr00a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define tr00a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values tr00a_fbig tr00a_fbig_lbl

label define tr00a_prov_lbl 01 `"Adana"'
label define tr00a_prov_lbl 02 `"Adiyaman"', add
label define tr00a_prov_lbl 03 `"Afyon"', add
label define tr00a_prov_lbl 04 `"Agri"', add
label define tr00a_prov_lbl 05 `"Amasya"', add
label define tr00a_prov_lbl 06 `"Ankara"', add
label define tr00a_prov_lbl 07 `"Antalya"', add
label define tr00a_prov_lbl 08 `"Artvin"', add
label define tr00a_prov_lbl 09 `"Aydin"', add
label define tr00a_prov_lbl 10 `"Balikesir"', add
label define tr00a_prov_lbl 11 `"Bilecik"', add
label define tr00a_prov_lbl 12 `"Bingöl"', add
label define tr00a_prov_lbl 13 `"Bitlis"', add
label define tr00a_prov_lbl 14 `"Bolu"', add
label define tr00a_prov_lbl 15 `"Burdur"', add
label define tr00a_prov_lbl 16 `"Bursa"', add
label define tr00a_prov_lbl 17 `"Çanakkale"', add
label define tr00a_prov_lbl 18 `"Çankiri"', add
label define tr00a_prov_lbl 19 `"Çorum"', add
label define tr00a_prov_lbl 20 `"Denizli"', add
label define tr00a_prov_lbl 21 `"Diyarbakir"', add
label define tr00a_prov_lbl 22 `"Edirne"', add
label define tr00a_prov_lbl 23 `"Elazig"', add
label define tr00a_prov_lbl 24 `"Erzincan"', add
label define tr00a_prov_lbl 25 `"Erzurum"', add
label define tr00a_prov_lbl 26 `"Eskisehir"', add
label define tr00a_prov_lbl 27 `"Gaziantep"', add
label define tr00a_prov_lbl 28 `"Giresun"', add
label define tr00a_prov_lbl 29 `"Gümüshane"', add
label define tr00a_prov_lbl 30 `"Hakkari"', add
label define tr00a_prov_lbl 31 `"Hatay"', add
label define tr00a_prov_lbl 32 `"Isparta"', add
label define tr00a_prov_lbl 33 `"Mersin (içel)"', add
label define tr00a_prov_lbl 34 `"Istanbul"', add
label define tr00a_prov_lbl 35 `"Izmir"', add
label define tr00a_prov_lbl 36 `"Kars"', add
label define tr00a_prov_lbl 37 `"Kastamonu"', add
label define tr00a_prov_lbl 38 `"Kayseri"', add
label define tr00a_prov_lbl 39 `"Kirklareli"', add
label define tr00a_prov_lbl 40 `"Kirsehir"', add
label define tr00a_prov_lbl 41 `"Kocaeli"', add
label define tr00a_prov_lbl 42 `"Konya"', add
label define tr00a_prov_lbl 43 `"Kütahya"', add
label define tr00a_prov_lbl 44 `"Malatya"', add
label define tr00a_prov_lbl 45 `"Manisa"', add
label define tr00a_prov_lbl 46 `"Kahramanmaras"', add
label define tr00a_prov_lbl 47 `"Mardin"', add
label define tr00a_prov_lbl 48 `"Mugla"', add
label define tr00a_prov_lbl 49 `"Mus"', add
label define tr00a_prov_lbl 50 `"Nevsehir"', add
label define tr00a_prov_lbl 51 `"Nigde"', add
label define tr00a_prov_lbl 52 `"Ordu"', add
label define tr00a_prov_lbl 53 `"Rize"', add
label define tr00a_prov_lbl 54 `"Sakarya"', add
label define tr00a_prov_lbl 55 `"Samsun"', add
label define tr00a_prov_lbl 56 `"Siirt"', add
label define tr00a_prov_lbl 57 `"Sinop"', add
label define tr00a_prov_lbl 58 `"Sivas"', add
label define tr00a_prov_lbl 59 `"Tekirdag"', add
label define tr00a_prov_lbl 60 `"Tokat"', add
label define tr00a_prov_lbl 61 `"Trabzon"', add
label define tr00a_prov_lbl 62 `"Tunceli"', add
label define tr00a_prov_lbl 63 `"Sanliurfa"', add
label define tr00a_prov_lbl 64 `"Usak"', add
label define tr00a_prov_lbl 65 `"Van"', add
label define tr00a_prov_lbl 66 `"Yozgat"', add
label define tr00a_prov_lbl 67 `"Zonguldak"', add
label define tr00a_prov_lbl 68 `"Aksaray"', add
label define tr00a_prov_lbl 69 `"Bayburt"', add
label define tr00a_prov_lbl 70 `"Karaman"', add
label define tr00a_prov_lbl 71 `"Kirikkale"', add
label define tr00a_prov_lbl 72 `"Batman"', add
label define tr00a_prov_lbl 73 `"Sirnak"', add
label define tr00a_prov_lbl 74 `"Bartin"', add
label define tr00a_prov_lbl 75 `"Ardahan"', add
label define tr00a_prov_lbl 76 `"Igdir"', add
label define tr00a_prov_lbl 77 `"Yalova"', add
label define tr00a_prov_lbl 78 `"Karabük"', add
label define tr00a_prov_lbl 79 `"Kilis"', add
label define tr00a_prov_lbl 80 `"Osmaniye"', add
label define tr00a_prov_lbl 81 `"Düzce"', add
label values tr00a_prov tr00a_prov_lbl

label define tr00a_dist_lbl 0101 `"Seyhan"'
label define tr00a_dist_lbl 0102 `"Yüregir"', add
label define tr00a_dist_lbl 0104 `"Ceyhan"', add
label define tr00a_dist_lbl 0109 `"Kozan"', add
label define tr00a_dist_lbl 0199 `"Other districts, Adana"', add
label define tr00a_dist_lbl 0200 `"Central district, Adiyama"', add
label define tr00a_dist_lbl 0205 `"Kahta"', add
label define tr00a_dist_lbl 0299 `"Other districts, Adiyama"', add
label define tr00a_dist_lbl 0300 `"Central district, Afyon"', add
label define tr00a_dist_lbl 0303 `"Bolvadin"', add
label define tr00a_dist_lbl 0399 `"Other districts, Afyon"', add
label define tr00a_dist_lbl 0400 `"Central district, Agri"', add
label define tr00a_dist_lbl 0402 `"Dogubeyazit"', add
label define tr00a_dist_lbl 0405 `"Patnos"', add
label define tr00a_dist_lbl 0499 `"Other districts, Agri"', add
label define tr00a_dist_lbl 0500 `"Central district, Amasya"', add
label define tr00a_dist_lbl 0599 `"Other districts, Amasya"', add
label define tr00a_dist_lbl 0601 `"Altindag"', add
label define tr00a_dist_lbl 0602 `"Çankaya"', add
label define tr00a_dist_lbl 0603 `"Etimesgut"', add
label define tr00a_dist_lbl 0605 `"Keçiören"', add
label define tr00a_dist_lbl 0606 `"Mamak"', add
label define tr00a_dist_lbl 0607 `"Sincan"', add
label define tr00a_dist_lbl 0608 `"Yenimahalle"', add
label define tr00a_dist_lbl 0623 `"Polatli"', add
label define tr00a_dist_lbl 0699 `"Other districts, Ankara"', add
label define tr00a_dist_lbl 0700 `"Central district, Antalya"', add
label define tr00a_dist_lbl 0702 `"Alanya"', add
label define tr00a_dist_lbl 0713 `"Manavgat"', add
label define tr00a_dist_lbl 0799 `"Other districts, Antalya"', add
label define tr00a_dist_lbl 0899 `"Other districts, Artvin"', add
label define tr00a_dist_lbl 0900 `"Central district, Aydin"', add
label define tr00a_dist_lbl 0913 `"Nazilli"', add
label define tr00a_dist_lbl 0914 `"Söke"', add
label define tr00a_dist_lbl 0999 `"Other districts, Aydin"', add
label define tr00a_dist_lbl 1000 `"Central district, Balikesi"', add
label define tr00a_dist_lbl 1003 `"Bandirma"', add
label define tr00a_dist_lbl 1099 `"Other districts, Balikesi"', add
label define tr00a_dist_lbl 1199 `"Other districts, Bilecik"', add
label define tr00a_dist_lbl 1200 `"Central district, Bingöl"', add
label define tr00a_dist_lbl 1299 `"Other districts, Bingöl"', add
label define tr00a_dist_lbl 1306 `"Tatvan"', add
label define tr00a_dist_lbl 1399 `"Other districts, Bitlis"', add
label define tr00a_dist_lbl 1400 `"Central district, Bolu"', add
label define tr00a_dist_lbl 1499 `"Other districts, Bolu"', add
label define tr00a_dist_lbl 1500 `"Central district, Burdur"', add
label define tr00a_dist_lbl 1599 `"Other districts, Burdur"', add
label define tr00a_dist_lbl 1601 `"Nilüfer"', add
label define tr00a_dist_lbl 1602 `"Osmangazi"', add
label define tr00a_dist_lbl 1603 `"Yildirim"', add
label define tr00a_dist_lbl 1605 `"Gemlik"', add
label define tr00a_dist_lbl 1608 `"Inegöl"', add
label define tr00a_dist_lbl 1699 `"Other districts, Bursa"', add
label define tr00a_dist_lbl 1700 `"Central district, Çanakkale"', add
label define tr00a_dist_lbl 1799 `"Other districts, Çanakkale"', add
label define tr00a_dist_lbl 1800 `"Central district, Çankiri"', add
label define tr00a_dist_lbl 1899 `"Other districts, Çankiri"', add
label define tr00a_dist_lbl 1900 `"Central district, Çorum"', add
label define tr00a_dist_lbl 1999 `"Other districts, Çorum"', add
label define tr00a_dist_lbl 2000 `"Central district, Denizli"', add
label define tr00a_dist_lbl 2099 `"Other districts, Denizli"', add
label define tr00a_dist_lbl 2100 `"Central district, Diyarbakir"', add
label define tr00a_dist_lbl 2101 `"Bismil"', add
label define tr00a_dist_lbl 2113 `"Silvan"', add
label define tr00a_dist_lbl 2199 `"Other districts, Diyarbakir"', add
label define tr00a_dist_lbl 2200 `"Central district, Edirne"', add
label define tr00a_dist_lbl 2299 `"Other districts, Edirne"', add
label define tr00a_dist_lbl 2300 `"Central district, Elazig"', add
label define tr00a_dist_lbl 2399 `"Other districts, Elazig"', add
label define tr00a_dist_lbl 2400 `"Central district, Erzincan"', add
label define tr00a_dist_lbl 2499 `"Other districts, Erzincan"', add
label define tr00a_dist_lbl 2500 `"Central district, Erzurum"', add
label define tr00a_dist_lbl 2599 `"Other districts, Erzurum"', add
label define tr00a_dist_lbl 2600 `"Central district, Eskisehir"', add
label define tr00a_dist_lbl 2699 `"Other districts, Eskisehir"', add
label define tr00a_dist_lbl 2701 `"Sahinbey"', add
label define tr00a_dist_lbl 2702 `"Sehitkamil"', add
label define tr00a_dist_lbl 2706 `"Nizip"', add
label define tr00a_dist_lbl 2799 `"Other districts, Gaziantep"', add
label define tr00a_dist_lbl 2800 `"Central district, Giresun"', add
label define tr00a_dist_lbl 2899 `"Other districts, Giresun"', add
label define tr00a_dist_lbl 2999 `"Other districts, Gümüshane"', add
label define tr00a_dist_lbl 3000 `"Central district, Hakkari"', add
label define tr00a_dist_lbl 3003 `"Yüksekova"', add
label define tr00a_dist_lbl 3099 `"Other districts, Hakkari"', add
label define tr00a_dist_lbl 3100 `"Central district, Hatay"', add
label define tr00a_dist_lbl 3103 `"Dörtyol"', add
label define tr00a_dist_lbl 3106 `"Iskenderun"', add
label define tr00a_dist_lbl 3107 `"Kirikhan"', add
label define tr00a_dist_lbl 3109 `"Reyhanli"', add
label define tr00a_dist_lbl 3199 `"Other districts, Hatay"', add
label define tr00a_dist_lbl 3200 `"Central district, Isparta"', add
label define tr00a_dist_lbl 3299 `"Other districts, Isparta"', add
label define tr00a_dist_lbl 3300 `"Central district, Mersin (Içel)"', add
label define tr00a_dist_lbl 3308 `"Silifke"', add
label define tr00a_dist_lbl 3309 `"Tarsus"', add
label define tr00a_dist_lbl 3399 `"Other districts, Mersin (Içel)"', add
label define tr00a_dist_lbl 3402 `"Avcilar"', add
label define tr00a_dist_lbl 3403 `"Bagcilar"', add
label define tr00a_dist_lbl 3404 `"Bahçelievler"', add
label define tr00a_dist_lbl 3405 `"Bakirköy"', add
label define tr00a_dist_lbl 3406 `"Bayrampasa"', add
label define tr00a_dist_lbl 3407 `"Besiktas"', add
label define tr00a_dist_lbl 3408 `"Beykoz"', add
label define tr00a_dist_lbl 3409 `"Beyoglu"', add
label define tr00a_dist_lbl 3410 `"Eminönü"', add
label define tr00a_dist_lbl 3411 `"Esenler"', add
label define tr00a_dist_lbl 3412 `"Eyüp"', add
label define tr00a_dist_lbl 3413 `"Fatih"', add
label define tr00a_dist_lbl 3414 `"Gaziosmanpasa"', add
label define tr00a_dist_lbl 3415 `"Güngören"', add
label define tr00a_dist_lbl 3416 `"Kadiköy"', add
label define tr00a_dist_lbl 3417 `"Kagithane"', add
label define tr00a_dist_lbl 3418 `"Kartal"', add
label define tr00a_dist_lbl 3419 `"Küçükçekmece"', add
label define tr00a_dist_lbl 3420 `"Maltepe"', add
label define tr00a_dist_lbl 3421 `"Pendik"', add
label define tr00a_dist_lbl 3422 `"Sariyer"', add
label define tr00a_dist_lbl 3423 `"Sisli"', add
label define tr00a_dist_lbl 3424 `"Tuzla"', add
label define tr00a_dist_lbl 3425 `"Ümraniye"', add
label define tr00a_dist_lbl 3426 `"Üsküdar"', add
label define tr00a_dist_lbl 3427 `"Zeytinburnu"', add
label define tr00a_dist_lbl 3431 `"Sultanbeyli"', add
label define tr00a_dist_lbl 3499 `"Other districts, Istanbul"', add
label define tr00a_dist_lbl 3501 `"Balçova"', add
label define tr00a_dist_lbl 3502 `"Bornova"', add
label define tr00a_dist_lbl 3503 `"Buca"', add
label define tr00a_dist_lbl 3504 `"Çigli"', add
label define tr00a_dist_lbl 3505 `"Gaziemir"', add
label define tr00a_dist_lbl 3507 `"Karsiyaka"', add
label define tr00a_dist_lbl 3508 `"Konak"', add
label define tr00a_dist_lbl 3509 `"Narlidere"', add
label define tr00a_dist_lbl 3512 `"Bergama"', add
label define tr00a_dist_lbl 3523 `"Ödemis"', add
label define tr00a_dist_lbl 3599 `"Other districts, Izmir"', add
label define tr00a_dist_lbl 3600 `"Central district, Kars"', add
label define tr00a_dist_lbl 3699 `"Other districts, Kars"', add
label define tr00a_dist_lbl 3700 `"Central district, Kastamonu"', add
label define tr00a_dist_lbl 3799 `"Other districts, Kastamonu"', add
label define tr00a_dist_lbl 3801 `"Kocasinan"', add
label define tr00a_dist_lbl 3802 `"Melikgazi"', add
label define tr00a_dist_lbl 3899 `"Other districts, Kayseri"', add
label define tr00a_dist_lbl 3900 `"Central district, Kirklareli"', add
label define tr00a_dist_lbl 3904 `"Lüleburgaz"', add
label define tr00a_dist_lbl 3999 `"Other districts, Kirklareli"', add
label define tr00a_dist_lbl 4000 `"Central district, Kirsehir"', add
label define tr00a_dist_lbl 4099 `"Other districts, Kirsehir"', add
label define tr00a_dist_lbl 4100 `"Central district, Kocaeli"', add
label define tr00a_dist_lbl 4101 `"Gebze"', add
label define tr00a_dist_lbl 4102 `"Gölcük"', add
label define tr00a_dist_lbl 4105 `"Körfez"', add
label define tr00a_dist_lbl 4106 `"Derince"', add
label define tr00a_dist_lbl 4199 `"Other districts, Kocaeli"', add
label define tr00a_dist_lbl 4201 `"Karatay"', add
label define tr00a_dist_lbl 4202 `"Meram"', add
label define tr00a_dist_lbl 4203 `"Selçuklu"', add
label define tr00a_dist_lbl 4206 `"Aksehir"', add
label define tr00a_dist_lbl 4217 `"Eregli"', add
label define tr00a_dist_lbl 4299 `"Other districts, Konya"', add
label define tr00a_dist_lbl 4300 `"Central district, Kütahya"', add
label define tr00a_dist_lbl 4399 `"Other districts, Kütahya"', add
label define tr00a_dist_lbl 4400 `"Central district, Malatya"', add
label define tr00a_dist_lbl 4499 `"Other districts, Malatya"', add
label define tr00a_dist_lbl 4500 `"Central district, Manisa"', add
label define tr00a_dist_lbl 4502 `"Akhisar"', add
label define tr00a_dist_lbl 4510 `"Salihli"', add
label define tr00a_dist_lbl 4514 `"Soma"', add
label define tr00a_dist_lbl 4515 `"Turgutlu"', add
label define tr00a_dist_lbl 4599 `"Other districts, Manisa"', add
label define tr00a_dist_lbl 4600 `"Central district, Kahramanmaras"', add
label define tr00a_dist_lbl 4605 `"Elbistan"', add
label define tr00a_dist_lbl 4699 `"Other districts, Kahramanmaras"', add
label define tr00a_dist_lbl 4700 `"Central district, Mardin"', add
label define tr00a_dist_lbl 4703 `"Kiziltepe"', add
label define tr00a_dist_lbl 4705 `"Midyat"', add
label define tr00a_dist_lbl 4706 `"Nusaybin"', add
label define tr00a_dist_lbl 4799 `"Other districts, Mardin"', add
label define tr00a_dist_lbl 4804 `"Fethiye"', add
label define tr00a_dist_lbl 4899 `"Other districts"', add
label define tr00a_dist_lbl 4900 `"Central district, Mus"', add
label define tr00a_dist_lbl 4999 `"Other districts, Mus"', add
label define tr00a_dist_lbl 5000 `"Central district, Nevsehir"', add
label define tr00a_dist_lbl 5099 `"Other districts, Nevsehir"', add
label define tr00a_dist_lbl 5100 `"Central district, Nidge"', add
label define tr00a_dist_lbl 5199 `"Other districts, Nigde"', add
label define tr00a_dist_lbl 5200 `"Central district, Ordu"', add
label define tr00a_dist_lbl 5206 `"Fatsa"', add
label define tr00a_dist_lbl 5218 `"Ünye"', add
label define tr00a_dist_lbl 5299 `"Other districts, Ordu"', add
label define tr00a_dist_lbl 5300 `"Central district, Rize"', add
label define tr00a_dist_lbl 5399 `"Other districts, Rize"', add
label define tr00a_dist_lbl 5400 `"Central district, Sakarya"', add
label define tr00a_dist_lbl 5499 `"Other districts, Sakarya"', add
label define tr00a_dist_lbl 5500 `"Central district, Samsun"', add
label define tr00a_dist_lbl 5504 `"Bafra"', add
label define tr00a_dist_lbl 5599 `"Other districts, Samsun"', add
label define tr00a_dist_lbl 5600 `"Central district, Siirt"', add
label define tr00a_dist_lbl 5699 `"Other districts, Siirt"', add
label define tr00a_dist_lbl 5799 `"Other districts, Sinop"', add
label define tr00a_dist_lbl 5800 `"Central district, Sivas"', add
label define tr00a_dist_lbl 5899 `"Other districts, Sivas"', add
label define tr00a_dist_lbl 5900 `"Central district, Tekirdag"', add
label define tr00a_dist_lbl 5902 `"Çorlu"', add
label define tr00a_dist_lbl 5999 `"Other districts, Tekirdag"', add
label define tr00a_dist_lbl 6000 `"Central district, Tokat"', add
label define tr00a_dist_lbl 6009 `"Turhal"', add
label define tr00a_dist_lbl 6011 `"Zile"', add
label define tr00a_dist_lbl 6099 `"Other districts, Tokat"', add
label define tr00a_dist_lbl 6100 `"Central district, Trabzon"', add
label define tr00a_dist_lbl 6199 `"Other districts, Trabzon"', add
label define tr00a_dist_lbl 6299 `"Other districts, Tunceli"', add
label define tr00a_dist_lbl 6300 `"Central district, Sanliurfa"', add
label define tr00a_dist_lbl 6308 `"Siverek"', add
label define tr00a_dist_lbl 6310 `"Viransehir"', add
label define tr00a_dist_lbl 6399 `"Other districts, Sanliurfa"', add
label define tr00a_dist_lbl 6400 `"Central district, Usak"', add
label define tr00a_dist_lbl 6499 `"Other districts, Usak"', add
label define tr00a_dist_lbl 6500 `"Central district, Van"', add
label define tr00a_dist_lbl 6506 `"Ercis"', add
label define tr00a_dist_lbl 6599 `"Other districts, Van"', add
label define tr00a_dist_lbl 6600 `"Central district, Yozgat"', add
label define tr00a_dist_lbl 6610 `"Sorgun"', add
label define tr00a_dist_lbl 6699 `"Other districts, Yozgat"', add
label define tr00a_dist_lbl 6700 `"Central district, Zonguldak"', add
label define tr00a_dist_lbl 6704 `"Eregli"', add
label define tr00a_dist_lbl 6799 `"Other districts, Zonguldak"', add
label define tr00a_dist_lbl 6800 `"Central district, Aksaray"', add
label define tr00a_dist_lbl 6899 `"Other districts, Aksaray"', add
label define tr00a_dist_lbl 6999 `"Other districts, Bayburt"', add
label define tr00a_dist_lbl 7000 `"Central district, Karaman"', add
label define tr00a_dist_lbl 7099 `"Other districts, Karaman"', add
label define tr00a_dist_lbl 7100 `"Central district, Kirikkale"', add
label define tr00a_dist_lbl 7199 `"Other districts, Kirikkale"', add
label define tr00a_dist_lbl 7200 `"Central district, Batman"', add
label define tr00a_dist_lbl 7299 `"Other districts, Batman"', add
label define tr00a_dist_lbl 7300 `"Central district, Sirnak"', add
label define tr00a_dist_lbl 7302 `"Cizre"', add
label define tr00a_dist_lbl 7305 `"Silopi, Bartin"', add
label define tr00a_dist_lbl 7399 `"Other districts, Sirnak"', add
label define tr00a_dist_lbl 7499 `"Other districts, Bartin"', add
label define tr00a_dist_lbl 7599 `"Other districts, Ardahan"', add
label define tr00a_dist_lbl 7600 `"Central district, Igdir"', add
label define tr00a_dist_lbl 7699 `"Other districts, Igdir"', add
label define tr00a_dist_lbl 7700 `"Central district, Yalova"', add
label define tr00a_dist_lbl 7799 `"Other districts, Yalova"', add
label define tr00a_dist_lbl 7800 `"Central district, Karabük"', add
label define tr00a_dist_lbl 7899 `"Other districts, Karabük"', add
label define tr00a_dist_lbl 7900 `"Central district, Kilis"', add
label define tr00a_dist_lbl 7999 `"Other districts, Kilis"', add
label define tr00a_dist_lbl 8000 `"Central district, Osmaniye"', add
label define tr00a_dist_lbl 8004 `"Kadirli"', add
label define tr00a_dist_lbl 8099 `"Other districts, Osmaniye"', add
label define tr00a_dist_lbl 8100 `"Central district, Düzce"', add
label define tr00a_dist_lbl 8199 `"Other districts, Düzce"', add
label values tr00a_dist tr00a_dist_lbl

label define tr00a_urban_lbl 1 `"City"'
label define tr00a_urban_lbl 2 `"Village"', add
label values tr00a_urban tr00a_urban_lbl

label define tr00a_dwtype_lbl 1 `"Housing unit"'
label define tr00a_dwtype_lbl 2 `"Other"', add
label values tr00a_dwtype tr00a_dwtype_lbl

label define tr00a_headhome_lbl 1 `"Yes"'
label define tr00a_headhome_lbl 2 `"No"', add
label define tr00a_headhome_lbl 9 `"NIU (not in universe)"', add
label values tr00a_headhome tr00a_headhome_lbl

label define tr00a_hhsize_lbl 01 `"1"'
label define tr00a_hhsize_lbl 02 `"2"', add
label define tr00a_hhsize_lbl 03 `"3"', add
label define tr00a_hhsize_lbl 04 `"4"', add
label define tr00a_hhsize_lbl 05 `"5"', add
label define tr00a_hhsize_lbl 06 `"6"', add
label define tr00a_hhsize_lbl 07 `"7"', add
label define tr00a_hhsize_lbl 08 `"8"', add
label define tr00a_hhsize_lbl 09 `"9"', add
label define tr00a_hhsize_lbl 10 `"10+"', add
label define tr00a_hhsize_lbl 98 `"Unknown"', add
label define tr00a_hhsize_lbl 99 `"NIU (not in universe)"', add
label values tr00a_hhsize tr00a_hhsize_lbl

label define tr00a_ownershp_lbl 1 `"Owner"'
label define tr00a_ownershp_lbl 2 `"Tenant"', add
label define tr00a_ownershp_lbl 3 `"Lodgment [employer]"', add
label define tr00a_ownershp_lbl 4 `"Not owner, but not paying rent"', add
label define tr00a_ownershp_lbl 5 `"Other"', add
label define tr00a_ownershp_lbl 8 `"Unknown"', add
label define tr00a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values tr00a_ownershp tr00a_ownershp_lbl

label define tr00a_rooms_lbl 01 `"1"'
label define tr00a_rooms_lbl 02 `"2"', add
label define tr00a_rooms_lbl 03 `"3"', add
label define tr00a_rooms_lbl 04 `"4"', add
label define tr00a_rooms_lbl 05 `"5"', add
label define tr00a_rooms_lbl 06 `"6"', add
label define tr00a_rooms_lbl 07 `"7"', add
label define tr00a_rooms_lbl 08 `"8"', add
label define tr00a_rooms_lbl 09 `"9"', add
label define tr00a_rooms_lbl 10 `"10+"', add
label define tr00a_rooms_lbl 98 `"Unknown"', add
label define tr00a_rooms_lbl 99 `"NIU (not in universe)"', add
label values tr00a_rooms tr00a_rooms_lbl

label define tr00a_toilet_lbl 1 `"Inside the housing unit"'
label define tr00a_toilet_lbl 2 `"Outside the housing unit"', add
label define tr00a_toilet_lbl 3 `"Does not exist"', add
label define tr00a_toilet_lbl 8 `"Unknown"', add
label define tr00a_toilet_lbl 9 `"NIU (not in universe)"', add
label values tr00a_toilet tr00a_toilet_lbl

label define tr00a_bath_lbl 1 `"Inside the housing unit"'
label define tr00a_bath_lbl 2 `"Outside the housing unit"', add
label define tr00a_bath_lbl 3 `"Does not exist"', add
label define tr00a_bath_lbl 8 `"Unknown"', add
label define tr00a_bath_lbl 9 `"NIU (not in universe)"', add
label values tr00a_bath tr00a_bath_lbl

label define tr00a_kitchen_lbl 1 `"Inside the housing unit"'
label define tr00a_kitchen_lbl 2 `"Outside the housing unit"', add
label define tr00a_kitchen_lbl 3 `"Does not exist"', add
label define tr00a_kitchen_lbl 8 `"Unknown"', add
label define tr00a_kitchen_lbl 9 `"NIU (not in universe)"', add
label values tr00a_kitchen tr00a_kitchen_lbl

label define tr00a_pipewtr_lbl 1 `"Inside the housing unit"'
label define tr00a_pipewtr_lbl 2 `"Outside the housing unit"', add
label define tr00a_pipewtr_lbl 3 `"Does not exist"', add
label define tr00a_pipewtr_lbl 8 `"Unknown"', add
label define tr00a_pipewtr_lbl 9 `"NIU (not in universe)"', add
label values tr00a_pipewtr tr00a_pipewtr_lbl

label define tr00a_pernum_lbl 00 `"Household record"'
label define tr00a_pernum_lbl 01 `"1"', add
label define tr00a_pernum_lbl 02 `"2"', add
label define tr00a_pernum_lbl 03 `"3"', add
label define tr00a_pernum_lbl 04 `"4"', add
label define tr00a_pernum_lbl 05 `"5"', add
label define tr00a_pernum_lbl 06 `"6"', add
label define tr00a_pernum_lbl 07 `"7"', add
label define tr00a_pernum_lbl 08 `"8"', add
label define tr00a_pernum_lbl 09 `"9"', add
label define tr00a_pernum_lbl 10 `"10"', add
label define tr00a_pernum_lbl 11 `"11"', add
label define tr00a_pernum_lbl 12 `"12"', add
label define tr00a_pernum_lbl 13 `"13"', add
label define tr00a_pernum_lbl 14 `"14"', add
label define tr00a_pernum_lbl 15 `"15"', add
label define tr00a_pernum_lbl 16 `"16"', add
label define tr00a_pernum_lbl 17 `"17"', add
label define tr00a_pernum_lbl 18 `"18"', add
label define tr00a_pernum_lbl 19 `"19"', add
label define tr00a_pernum_lbl 20 `"20"', add
label define tr00a_pernum_lbl 21 `"21"', add
label define tr00a_pernum_lbl 22 `"22"', add
label define tr00a_pernum_lbl 23 `"23"', add
label define tr00a_pernum_lbl 24 `"24"', add
label define tr00a_pernum_lbl 25 `"25"', add
label define tr00a_pernum_lbl 26 `"26"', add
label define tr00a_pernum_lbl 27 `"27"', add
label define tr00a_pernum_lbl 28 `"28"', add
label define tr00a_pernum_lbl 29 `"29"', add
label define tr00a_pernum_lbl 30 `"30"', add
label define tr00a_pernum_lbl 31 `"31"', add
label define tr00a_pernum_lbl 32 `"32"', add
label define tr00a_pernum_lbl 33 `"33"', add
label define tr00a_pernum_lbl 34 `"34"', add
label define tr00a_pernum_lbl 35 `"35"', add
label define tr00a_pernum_lbl 36 `"36"', add
label define tr00a_pernum_lbl 37 `"37"', add
label define tr00a_pernum_lbl 38 `"38"', add
label define tr00a_pernum_lbl 39 `"39"', add
label define tr00a_pernum_lbl 40 `"40"', add
label define tr00a_pernum_lbl 41 `"41"', add
label define tr00a_pernum_lbl 42 `"42"', add
label define tr00a_pernum_lbl 43 `"43"', add
label define tr00a_pernum_lbl 44 `"44"', add
label define tr00a_pernum_lbl 45 `"45"', add
label define tr00a_pernum_lbl 46 `"46"', add
label define tr00a_pernum_lbl 47 `"47"', add
label define tr00a_pernum_lbl 48 `"48"', add
label define tr00a_pernum_lbl 49 `"49"', add
label define tr00a_pernum_lbl 50 `"50"', add
label define tr00a_pernum_lbl 51 `"51"', add
label define tr00a_pernum_lbl 52 `"52"', add
label define tr00a_pernum_lbl 53 `"53"', add
label define tr00a_pernum_lbl 54 `"54"', add
label define tr00a_pernum_lbl 55 `"55"', add
label define tr00a_pernum_lbl 56 `"56"', add
label values tr00a_pernum tr00a_pernum_lbl

label define tr00a_relate_lbl 01 `"Head of household"'
label define tr00a_relate_lbl 02 `"Wife/husband"', add
label define tr00a_relate_lbl 03 `"Son"', add
label define tr00a_relate_lbl 04 `"Daughter"', add
label define tr00a_relate_lbl 05 `"Father"', add
label define tr00a_relate_lbl 06 `"Mother"', add
label define tr00a_relate_lbl 07 `"Brother/sister"', add
label define tr00a_relate_lbl 08 `"Father in-law"', add
label define tr00a_relate_lbl 09 `"Mother in-law"', add
label define tr00a_relate_lbl 10 `"Daughter in-law"', add
label define tr00a_relate_lbl 11 `"Son in-law"', add
label define tr00a_relate_lbl 12 `"Grandchild"', add
label define tr00a_relate_lbl 13 `"Other"', add
label define tr00a_relate_lbl 14 `"Visitor"', add
label define tr00a_relate_lbl 98 `"Unknown"', add
label define tr00a_relate_lbl 99 `"NIU (not in universe)"', add
label values tr00a_relate tr00a_relate_lbl

label define tr00a_sex_lbl 1 `"Male"'
label define tr00a_sex_lbl 2 `"Female"', add
label values tr00a_sex tr00a_sex_lbl

label define tr00a_age_lbl 00 `"0"'
label define tr00a_age_lbl 01 `"1"', add
label define tr00a_age_lbl 02 `"2"', add
label define tr00a_age_lbl 03 `"3"', add
label define tr00a_age_lbl 04 `"4"', add
label define tr00a_age_lbl 05 `"5"', add
label define tr00a_age_lbl 06 `"6"', add
label define tr00a_age_lbl 07 `"7"', add
label define tr00a_age_lbl 08 `"8"', add
label define tr00a_age_lbl 09 `"9"', add
label define tr00a_age_lbl 10 `"10"', add
label define tr00a_age_lbl 11 `"11"', add
label define tr00a_age_lbl 12 `"12"', add
label define tr00a_age_lbl 13 `"13"', add
label define tr00a_age_lbl 14 `"14"', add
label define tr00a_age_lbl 15 `"15"', add
label define tr00a_age_lbl 16 `"16"', add
label define tr00a_age_lbl 17 `"17"', add
label define tr00a_age_lbl 18 `"18"', add
label define tr00a_age_lbl 19 `"19"', add
label define tr00a_age_lbl 20 `"20"', add
label define tr00a_age_lbl 21 `"21"', add
label define tr00a_age_lbl 22 `"22"', add
label define tr00a_age_lbl 23 `"23"', add
label define tr00a_age_lbl 24 `"24"', add
label define tr00a_age_lbl 25 `"25"', add
label define tr00a_age_lbl 26 `"26"', add
label define tr00a_age_lbl 27 `"27"', add
label define tr00a_age_lbl 28 `"28"', add
label define tr00a_age_lbl 29 `"29"', add
label define tr00a_age_lbl 30 `"30"', add
label define tr00a_age_lbl 31 `"31"', add
label define tr00a_age_lbl 32 `"32"', add
label define tr00a_age_lbl 33 `"33"', add
label define tr00a_age_lbl 34 `"34"', add
label define tr00a_age_lbl 35 `"35"', add
label define tr00a_age_lbl 36 `"36"', add
label define tr00a_age_lbl 37 `"37"', add
label define tr00a_age_lbl 38 `"38"', add
label define tr00a_age_lbl 39 `"39"', add
label define tr00a_age_lbl 40 `"40"', add
label define tr00a_age_lbl 41 `"41"', add
label define tr00a_age_lbl 42 `"42"', add
label define tr00a_age_lbl 43 `"43"', add
label define tr00a_age_lbl 44 `"44"', add
label define tr00a_age_lbl 45 `"45"', add
label define tr00a_age_lbl 46 `"46"', add
label define tr00a_age_lbl 47 `"47"', add
label define tr00a_age_lbl 48 `"48"', add
label define tr00a_age_lbl 49 `"49"', add
label define tr00a_age_lbl 50 `"50"', add
label define tr00a_age_lbl 51 `"51"', add
label define tr00a_age_lbl 52 `"52"', add
label define tr00a_age_lbl 53 `"53"', add
label define tr00a_age_lbl 54 `"54"', add
label define tr00a_age_lbl 55 `"55"', add
label define tr00a_age_lbl 56 `"56"', add
label define tr00a_age_lbl 57 `"57"', add
label define tr00a_age_lbl 58 `"58"', add
label define tr00a_age_lbl 59 `"59"', add
label define tr00a_age_lbl 60 `"60"', add
label define tr00a_age_lbl 61 `"61"', add
label define tr00a_age_lbl 62 `"62"', add
label define tr00a_age_lbl 63 `"63"', add
label define tr00a_age_lbl 64 `"64"', add
label define tr00a_age_lbl 65 `"65"', add
label define tr00a_age_lbl 66 `"66"', add
label define tr00a_age_lbl 67 `"67"', add
label define tr00a_age_lbl 68 `"68"', add
label define tr00a_age_lbl 69 `"69"', add
label define tr00a_age_lbl 70 `"70"', add
label define tr00a_age_lbl 71 `"71"', add
label define tr00a_age_lbl 72 `"72"', add
label define tr00a_age_lbl 73 `"73"', add
label define tr00a_age_lbl 74 `"74"', add
label define tr00a_age_lbl 75 `"75"', add
label define tr00a_age_lbl 76 `"76"', add
label define tr00a_age_lbl 77 `"77"', add
label define tr00a_age_lbl 78 `"78"', add
label define tr00a_age_lbl 79 `"79"', add
label define tr00a_age_lbl 80 `"80"', add
label define tr00a_age_lbl 81 `"81"', add
label define tr00a_age_lbl 82 `"82"', add
label define tr00a_age_lbl 83 `"83"', add
label define tr00a_age_lbl 84 `"84"', add
label define tr00a_age_lbl 85 `"85"', add
label define tr00a_age_lbl 86 `"86"', add
label define tr00a_age_lbl 87 `"87"', add
label define tr00a_age_lbl 88 `"88"', add
label define tr00a_age_lbl 89 `"89"', add
label define tr00a_age_lbl 90 `"90+"', add
label define tr00a_age_lbl 99 `"Unknown"', add
label values tr00a_age tr00a_age_lbl

label define tr00a_bplprov_lbl 01 `"Adana"'
label define tr00a_bplprov_lbl 02 `"Adiyaman"', add
label define tr00a_bplprov_lbl 03 `"Afyon"', add
label define tr00a_bplprov_lbl 04 `"Agri"', add
label define tr00a_bplprov_lbl 05 `"Amasya"', add
label define tr00a_bplprov_lbl 06 `"Ankara"', add
label define tr00a_bplprov_lbl 07 `"Antalya"', add
label define tr00a_bplprov_lbl 08 `"Artvin"', add
label define tr00a_bplprov_lbl 09 `"Aydin"', add
label define tr00a_bplprov_lbl 10 `"Balikesir"', add
label define tr00a_bplprov_lbl 11 `"Bilecik"', add
label define tr00a_bplprov_lbl 12 `"Bingöl"', add
label define tr00a_bplprov_lbl 13 `"Bitlis"', add
label define tr00a_bplprov_lbl 14 `"Bolu"', add
label define tr00a_bplprov_lbl 15 `"Burdur"', add
label define tr00a_bplprov_lbl 16 `"Bursa"', add
label define tr00a_bplprov_lbl 17 `"Çanakkale"', add
label define tr00a_bplprov_lbl 18 `"Çankiri"', add
label define tr00a_bplprov_lbl 19 `"Çorum"', add
label define tr00a_bplprov_lbl 20 `"Denizli"', add
label define tr00a_bplprov_lbl 21 `"Diyarbakir"', add
label define tr00a_bplprov_lbl 22 `"Edirne"', add
label define tr00a_bplprov_lbl 23 `"Elazig"', add
label define tr00a_bplprov_lbl 24 `"Erzincan"', add
label define tr00a_bplprov_lbl 25 `"Erzurum"', add
label define tr00a_bplprov_lbl 26 `"Eskisehir"', add
label define tr00a_bplprov_lbl 27 `"Gaziantep"', add
label define tr00a_bplprov_lbl 28 `"Giresun"', add
label define tr00a_bplprov_lbl 29 `"Gümüshane"', add
label define tr00a_bplprov_lbl 30 `"Hakkari"', add
label define tr00a_bplprov_lbl 31 `"Hatay"', add
label define tr00a_bplprov_lbl 32 `"Isparta"', add
label define tr00a_bplprov_lbl 33 `"Mersin (içel)"', add
label define tr00a_bplprov_lbl 34 `"Istanbul"', add
label define tr00a_bplprov_lbl 35 `"Izmir"', add
label define tr00a_bplprov_lbl 36 `"Kars"', add
label define tr00a_bplprov_lbl 37 `"Kastamonu"', add
label define tr00a_bplprov_lbl 38 `"Kayseri"', add
label define tr00a_bplprov_lbl 39 `"Kirklareli"', add
label define tr00a_bplprov_lbl 40 `"Kirsehir"', add
label define tr00a_bplprov_lbl 41 `"Kocaeli"', add
label define tr00a_bplprov_lbl 42 `"Konya"', add
label define tr00a_bplprov_lbl 43 `"Kütahya"', add
label define tr00a_bplprov_lbl 44 `"Malatya"', add
label define tr00a_bplprov_lbl 45 `"Manisa"', add
label define tr00a_bplprov_lbl 46 `"Kahramanmaras"', add
label define tr00a_bplprov_lbl 47 `"Mardin"', add
label define tr00a_bplprov_lbl 48 `"Mugla"', add
label define tr00a_bplprov_lbl 49 `"Mus"', add
label define tr00a_bplprov_lbl 50 `"Nevsehir"', add
label define tr00a_bplprov_lbl 51 `"Nigde"', add
label define tr00a_bplprov_lbl 52 `"Ordu"', add
label define tr00a_bplprov_lbl 53 `"Rize"', add
label define tr00a_bplprov_lbl 54 `"Sakarya"', add
label define tr00a_bplprov_lbl 55 `"Samsun"', add
label define tr00a_bplprov_lbl 56 `"Siirt"', add
label define tr00a_bplprov_lbl 57 `"Sinop"', add
label define tr00a_bplprov_lbl 58 `"Sivas"', add
label define tr00a_bplprov_lbl 59 `"Tekirdag"', add
label define tr00a_bplprov_lbl 60 `"Tokat"', add
label define tr00a_bplprov_lbl 61 `"Trabzon"', add
label define tr00a_bplprov_lbl 62 `"Tunceli"', add
label define tr00a_bplprov_lbl 63 `"Sanliurfa"', add
label define tr00a_bplprov_lbl 64 `"Usak"', add
label define tr00a_bplprov_lbl 65 `"Van"', add
label define tr00a_bplprov_lbl 66 `"Yozgat"', add
label define tr00a_bplprov_lbl 67 `"Zonguldak"', add
label define tr00a_bplprov_lbl 68 `"Aksaray"', add
label define tr00a_bplprov_lbl 69 `"Bayburt"', add
label define tr00a_bplprov_lbl 70 `"Karaman"', add
label define tr00a_bplprov_lbl 71 `"Kirikkale"', add
label define tr00a_bplprov_lbl 72 `"Batman"', add
label define tr00a_bplprov_lbl 73 `"Sirnak"', add
label define tr00a_bplprov_lbl 74 `"Bartin"', add
label define tr00a_bplprov_lbl 75 `"Ardahan"', add
label define tr00a_bplprov_lbl 76 `"Igdir"', add
label define tr00a_bplprov_lbl 77 `"Yalova"', add
label define tr00a_bplprov_lbl 78 `"Karabük"', add
label define tr00a_bplprov_lbl 79 `"Kilis"', add
label define tr00a_bplprov_lbl 80 `"Osmaniye"', add
label define tr00a_bplprov_lbl 81 `"Düzce"', add
label define tr00a_bplprov_lbl 90 `"Persons born abroad"', add
label define tr00a_bplprov_lbl 99 `"Unknown"', add
label values tr00a_bplprov tr00a_bplprov_lbl

label define tr00a_nation_lbl 1 `"Turkey"'
label define tr00a_nation_lbl 2 `"Foreign country"', add
label define tr00a_nation_lbl 3 `"Does not have any nationality"', add
label values tr00a_nation tr00a_nation_lbl

label define tr00a_disab_lbl 1 `"Yes"'
label define tr00a_disab_lbl 2 `"No"', add
label values tr00a_disab tr00a_disab_lbl

label define tr00a_distype_lbl 1 `"Disability of seeing"'
label define tr00a_distype_lbl 2 `"Disability of hearing"', add
label define tr00a_distype_lbl 3 `"Disability of speaking"', add
label define tr00a_distype_lbl 4 `"Physical/orthopedical disability"', add
label define tr00a_distype_lbl 5 `"Mental disability"', add
label define tr00a_distype_lbl 6 `"Other"', add
label define tr00a_distype_lbl 7 `"Has more than one disability"', add
label define tr00a_distype_lbl 8 `"Unknown"', add
label define tr00a_distype_lbl 9 `"NIU (not in universe)"', add
label values tr00a_distype tr00a_distype_lbl

label define tr00a_lit_lbl 1 `"Yes, literate"'
label define tr00a_lit_lbl 2 `"No, illiterate"', add
label define tr00a_lit_lbl 8 `"Unknown"', add
label define tr00a_lit_lbl 9 `"NIU (not in universe)"', add
label values tr00a_lit tr00a_lit_lbl

label define tr00a_edlevel_lbl 0 `"NIU (not in universe)"'
label define tr00a_edlevel_lbl 1 `"No school completed"', add
label define tr00a_edlevel_lbl 2 `"Primary school [Ilkokul]"', add
label define tr00a_edlevel_lbl 3 `"Primary education [Ilkögretim]"', add
label define tr00a_edlevel_lbl 4 `"Junior high school"', add
label define tr00a_edlevel_lbl 5 `"Vocational school at junior high school level"', add
label define tr00a_edlevel_lbl 6 `"High school"', add
label define tr00a_edlevel_lbl 7 `"Vocational school at high school level"', add
label define tr00a_edlevel_lbl 8 `"Higher education, university, master or doctorate degree"', add
label define tr00a_edlevel_lbl 9 `"Unknown"', add
label values tr00a_edlevel tr00a_edlevel_lbl

label define tr00a_marst_lbl 1 `"Never married"'
label define tr00a_marst_lbl 2 `"Married"', add
label define tr00a_marst_lbl 3 `"Divorced"', add
label define tr00a_marst_lbl 4 `"Widowed"', add
label define tr00a_marst_lbl 8 `"Unknown"', add
label define tr00a_marst_lbl 9 `"NIU (not in universe)"', add
label values tr00a_marst tr00a_marst_lbl

label define tr00a_everbrth_lbl 0 `"No"'
label define tr00a_everbrth_lbl 1 `"Yes"', add
label define tr00a_everbrth_lbl 9 `"NIU (not in universe)"', add
label values tr00a_everbrth tr00a_everbrth_lbl

label define tr00a_chbornf_lbl 00 `"0"'
label define tr00a_chbornf_lbl 01 `"1"', add
label define tr00a_chbornf_lbl 02 `"2"', add
label define tr00a_chbornf_lbl 03 `"3"', add
label define tr00a_chbornf_lbl 04 `"4"', add
label define tr00a_chbornf_lbl 05 `"5"', add
label define tr00a_chbornf_lbl 06 `"6"', add
label define tr00a_chbornf_lbl 07 `"7"', add
label define tr00a_chbornf_lbl 08 `"8"', add
label define tr00a_chbornf_lbl 09 `"9"', add
label define tr00a_chbornf_lbl 10 `"10+"', add
label define tr00a_chbornf_lbl 98 `"Unknown"', add
label define tr00a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values tr00a_chbornf tr00a_chbornf_lbl

label define tr00a_chbornm_lbl 00 `"0"'
label define tr00a_chbornm_lbl 01 `"1"', add
label define tr00a_chbornm_lbl 02 `"2"', add
label define tr00a_chbornm_lbl 03 `"3"', add
label define tr00a_chbornm_lbl 04 `"4"', add
label define tr00a_chbornm_lbl 05 `"5"', add
label define tr00a_chbornm_lbl 06 `"6"', add
label define tr00a_chbornm_lbl 07 `"7"', add
label define tr00a_chbornm_lbl 08 `"8"', add
label define tr00a_chbornm_lbl 09 `"9"', add
label define tr00a_chbornm_lbl 10 `"10+"', add
label define tr00a_chbornm_lbl 98 `"Unknown"', add
label define tr00a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values tr00a_chbornm tr00a_chbornm_lbl

label define tr00a_chsurvf_lbl 00 `"0"'
label define tr00a_chsurvf_lbl 01 `"1"', add
label define tr00a_chsurvf_lbl 02 `"2"', add
label define tr00a_chsurvf_lbl 03 `"3"', add
label define tr00a_chsurvf_lbl 04 `"4"', add
label define tr00a_chsurvf_lbl 05 `"5"', add
label define tr00a_chsurvf_lbl 06 `"6"', add
label define tr00a_chsurvf_lbl 07 `"7"', add
label define tr00a_chsurvf_lbl 08 `"8"', add
label define tr00a_chsurvf_lbl 09 `"9"', add
label define tr00a_chsurvf_lbl 10 `"10+"', add
label define tr00a_chsurvf_lbl 98 `"Unknown"', add
label define tr00a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values tr00a_chsurvf tr00a_chsurvf_lbl

label define tr00a_chsurvm_lbl 00 `"0"'
label define tr00a_chsurvm_lbl 01 `"1"', add
label define tr00a_chsurvm_lbl 02 `"2"', add
label define tr00a_chsurvm_lbl 03 `"3"', add
label define tr00a_chsurvm_lbl 04 `"4"', add
label define tr00a_chsurvm_lbl 05 `"5"', add
label define tr00a_chsurvm_lbl 06 `"6"', add
label define tr00a_chsurvm_lbl 07 `"7"', add
label define tr00a_chsurvm_lbl 08 `"8"', add
label define tr00a_chsurvm_lbl 09 `"9"', add
label define tr00a_chsurvm_lbl 10 `"10+"', add
label define tr00a_chsurvm_lbl 98 `"Unknown"', add
label define tr00a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values tr00a_chsurvm tr00a_chsurvm_lbl

label define tr00a_mobirth_lbl 01 `"January"'
label define tr00a_mobirth_lbl 02 `"February"', add
label define tr00a_mobirth_lbl 03 `"March"', add
label define tr00a_mobirth_lbl 04 `"April"', add
label define tr00a_mobirth_lbl 05 `"May"', add
label define tr00a_mobirth_lbl 06 `"June"', add
label define tr00a_mobirth_lbl 07 `"July"', add
label define tr00a_mobirth_lbl 08 `"August"', add
label define tr00a_mobirth_lbl 09 `"September"', add
label define tr00a_mobirth_lbl 10 `"October"', add
label define tr00a_mobirth_lbl 11 `"November"', add
label define tr00a_mobirth_lbl 12 `"December"', add
label define tr00a_mobirth_lbl 97 `"Last gave birth more than 2 years ago"', add
label define tr00a_mobirth_lbl 98 `"Unknown"', add
label define tr00a_mobirth_lbl 99 `"NIU (not in universe)"', add
label values tr00a_mobirth tr00a_mobirth_lbl

label define tr00a_yrbirth_lbl 1998 `"1998"'
label define tr00a_yrbirth_lbl 1999 `"1999"', add
label define tr00a_yrbirth_lbl 2000 `"2000"', add
label define tr00a_yrbirth_lbl 8888 `"Last gave birth more than 2 years ago"', add
label define tr00a_yrbirth_lbl 9999 `"NIU (not in universe)"', add
label values tr00a_yrbirth tr00a_yrbirth_lbl

label define tr00a_workweek_lbl 1 `"Worked"'
label define tr00a_workweek_lbl 2 `"Did not work but has a job position"', add
label define tr00a_workweek_lbl 3 `"Did not work"', add
label define tr00a_workweek_lbl 8 `"Unknown"', add
label define tr00a_workweek_lbl 9 `"NIU (not in universe)"', add
label values tr00a_workweek tr00a_workweek_lbl

label define tr00a_occ1_lbl 1 `"Scientific, technical, professional and related workers"'
label define tr00a_occ1_lbl 2 `"Administrative and managerial workers"', add
label define tr00a_occ1_lbl 3 `"Clerical and related workers"', add
label define tr00a_occ1_lbl 4 `"Commercial and sales workers"', add
label define tr00a_occ1_lbl 5 `"Services workers"', add
label define tr00a_occ1_lbl 6 `"Agricultural, animal husbandry, forestry workers, fishermen and hunters"', add
label define tr00a_occ1_lbl 7 `"Nonagricultural production and related workers, transport equipment operators and laborers"', add
label define tr00a_occ1_lbl 8 `"Unknown"', add
label define tr00a_occ1_lbl 9 `"NIU (not in universe)"', add
label values tr00a_occ1 tr00a_occ1_lbl

label define tr00a_occ2_lbl 01 `"Physicists, chemists, and related workers"'
label define tr00a_occ2_lbl 02 `"Architects, engineers and related technicians"', add
label define tr00a_occ2_lbl 03 `"Aircraft and ship officers"', add
label define tr00a_occ2_lbl 04 `"Life scientists and related technicians"', add
label define tr00a_occ2_lbl 05 `"Medical, dental, veterinary and related workers"', add
label define tr00a_occ2_lbl 06 `"Statisticians, mathematicians, systems analysts and related technicians"', add
label define tr00a_occ2_lbl 07 `"Economists"', add
label define tr00a_occ2_lbl 08 `"Financial counselors and accountants"', add
label define tr00a_occ2_lbl 09 `"Jurists"', add
label define tr00a_occ2_lbl 10 `"Teachers"', add
label define tr00a_occ2_lbl 11 `"Religious workers"', add
label define tr00a_occ2_lbl 12 `"Authors, journalists and related writers"', add
label define tr00a_occ2_lbl 13 `"Sculptors, painters, photographers and related creative artists"', add
label define tr00a_occ2_lbl 14 `"Composers and performing artists"', add
label define tr00a_occ2_lbl 15 `"Athletes, sportsmen and related workers"', add
label define tr00a_occ2_lbl 16 `"Professional, technical and related workers etc."', add
label define tr00a_occ2_lbl 17 `"Legislative officials and government administrators"', add
label define tr00a_occ2_lbl 18 `"Managers"', add
label define tr00a_occ2_lbl 19 `"Clerical supervisors"', add
label define tr00a_occ2_lbl 20 `"Government executive officials"', add
label define tr00a_occ2_lbl 21 `"Stenographers, typists and card and tape punching machine operators"', add
label define tr00a_occ2_lbl 22 `"Bookkeepers, cashiers and related workers"', add
label define tr00a_occ2_lbl 23 `"Computing machine operators"', add
label define tr00a_occ2_lbl 24 `"Transport and communication supervisors"', add
label define tr00a_occ2_lbl 25 `"Transport conductors"', add
label define tr00a_occ2_lbl 26 `"Mail distribution clerks"', add
label define tr00a_occ2_lbl 27 `"Telephone and telegraph operators"', add
label define tr00a_occ2_lbl 28 `"Clerical and related workers etc."', add
label define tr00a_occ2_lbl 29 `"Managers (wholesale and retail trade)"', add
label define tr00a_occ2_lbl 30 `"Working proprietors"', add
label define tr00a_occ2_lbl 31 `"Sales supervisors and buyers"', add
label define tr00a_occ2_lbl 32 `"Technical salesman, commercial travelers and manufacturers agents"', add
label define tr00a_occ2_lbl 33 `"Insurance, real estate, securities and business services, salesmen and auctioneers"', add
label define tr00a_occ2_lbl 34 `"Salesmen, shop assistants and demonstrators"', add
label define tr00a_occ2_lbl 35 `"Workers etc."', add
label define tr00a_occ2_lbl 36 `"Administrators of hotel, cafe, place for gambling, restaurant, casino, pastry-shop, cinema, theatre and related situations"', add
label define tr00a_occ2_lbl 37 `"Administrative and managerial owners of hotel, cafe, place for gambling, restaurant, casino, pastry-shop, cinema, theatre and related situations"', add
label define tr00a_occ2_lbl 38 `"Housekeeping and related service supervisors"', add
label define tr00a_occ2_lbl 39 `"Cooks, waiters, bartenders and related workers"', add
label define tr00a_occ2_lbl 40 `"Maids and related workers"', add
label define tr00a_occ2_lbl 41 `"Building caretakers, char workers"', add
label define tr00a_occ2_lbl 42 `"Launderers, dry cleaners and pressers"', add
label define tr00a_occ2_lbl 43 `"Hairdressers, barbers, beauticians and related workers"', add
label define tr00a_occ2_lbl 44 `"Protective service workers"', add
label define tr00a_occ2_lbl 45 `"Workers etc."', add
label define tr00a_occ2_lbl 46 `"Farm managers and supervisors"', add
label define tr00a_occ2_lbl 47 `"Farmers"', add
label define tr00a_occ2_lbl 48 `"Agricultural and animal husbandry workers"', add
label define tr00a_occ2_lbl 49 `"Forestry workers"', add
label define tr00a_occ2_lbl 50 `"Fishermen, hunters and related workers"', add
label define tr00a_occ2_lbl 51 `"Production supervisors and general foremen"', add
label define tr00a_occ2_lbl 52 `"Miners, quarrymen, well drillers and related workers"', add
label define tr00a_occ2_lbl 53 `"Metal processers"', add
label define tr00a_occ2_lbl 54 `"Wood preparation workers and paper makers"', add
label define tr00a_occ2_lbl 55 `"Chemical processers and related workers"', add
label define tr00a_occ2_lbl 56 `"Spinners, weavers, knitters, dyers and related workers"', add
label define tr00a_occ2_lbl 57 `"Tanners, fellmongers and pelt dressers"', add
label define tr00a_occ2_lbl 58 `"Food and beverage processers"', add
label define tr00a_occ2_lbl 59 `"Tobacco preparers and tobacco product makers"', add
label define tr00a_occ2_lbl 60 `"Tailors, dressmakers, upholsterers and related workers"', add
label define tr00a_occ2_lbl 61 `"Shoemakers and leather goods makers"', add
label define tr00a_occ2_lbl 62 `"Cabinetmakers and related wood workers"', add
label define tr00a_occ2_lbl 63 `"Stone cutters and carvers"', add
label define tr00a_occ2_lbl 64 `"Blacksmiths toolmakers and machine-tool operators"', add
label define tr00a_occ2_lbl 65 `"Machinery fitters, machine assemblers and precision instrument makers (except electrical)."', add
label define tr00a_occ2_lbl 66 `"Electrical fitters and related electrical and electronics workers"', add
label define tr00a_occ2_lbl 67 `"Broadcasting station and sound equipment operators and cinema projectionists"', add
label define tr00a_occ2_lbl 68 `"Plumbers, sanitary installation, tin and copper workers, metallic pipe fitters"', add
label define tr00a_occ2_lbl 69 `"Goldsmiths and jewelers"', add
label define tr00a_occ2_lbl 70 `"Glass and glass products, ceramic and earthenware workers"', add
label define tr00a_occ2_lbl 71 `"Plastic and rubber material workers"', add
label define tr00a_occ2_lbl 72 `"Paper, paper-board and binding material workers"', add
label define tr00a_occ2_lbl 73 `"Compositors, printers, binders and related workers"', add
label define tr00a_occ2_lbl 74 `"House painters and whitewashers"', add
label define tr00a_occ2_lbl 75 `"nec production and related workers"', add
label define tr00a_occ2_lbl 76 `"Master builder, carpenter and other construction workers"', add
label define tr00a_occ2_lbl 77 `"Fixed installment machinery operators"', add
label define tr00a_occ2_lbl 78 `"Loading and unloading workers and construction equipment operators"', add
label define tr00a_occ2_lbl 79 `"Transport equipment operators"', add
label define tr00a_occ2_lbl 80 `"Unskilled workers, etc.; workers not classifiable by occupation or not reporting any occupation"', add
label define tr00a_occ2_lbl 98 `"Unknown"', add
label define tr00a_occ2_lbl 99 `"NIU (not in universe)"', add
label values tr00a_occ2 tr00a_occ2_lbl

label define tr00a_ind1_lbl 01 `"Agriculture, hunting, forestry and fishing"'
label define tr00a_ind1_lbl 02 `"Mining and quarrying"', add
label define tr00a_ind1_lbl 03 `"Manufacturing industry"', add
label define tr00a_ind1_lbl 04 `"Electricity, gas and water"', add
label define tr00a_ind1_lbl 05 `"Construction"', add
label define tr00a_ind1_lbl 06 `"Wholesale and retail trade, restaurants, hotels"', add
label define tr00a_ind1_lbl 07 `"Transport, communication and storage"', add
label define tr00a_ind1_lbl 08 `"Finance, insurance, real estate and business services"', add
label define tr00a_ind1_lbl 09 `"Community, social and personal services"', add
label define tr00a_ind1_lbl 98 `"Unknown"', add
label define tr00a_ind1_lbl 99 `"NIU (not in universe)"', add
label values tr00a_ind1 tr00a_ind1_lbl

label define tr00a_ind2_lbl 01 `"Agriculture and hunting"'
label define tr00a_ind2_lbl 02 `"Forestry and logging"', add
label define tr00a_ind2_lbl 03 `"Fishing"', add
label define tr00a_ind2_lbl 04 `"Coal mining"', add
label define tr00a_ind2_lbl 05 `"Crude petroleum and natural gas production"', add
label define tr00a_ind2_lbl 06 `"Metal, ore, mining"', add
label define tr00a_ind2_lbl 07 `"Other mining"', add
label define tr00a_ind2_lbl 08 `"Manufacturing of food, beverages and tobacco"', add
label define tr00a_ind2_lbl 09 `"Textile wearing apparel and leather industries"', add
label define tr00a_ind2_lbl 10 `"Manufacture of wood and wood products including furniture"', add
label define tr00a_ind2_lbl 11 `"Manufacture of paper and paper products, printing and publishing"', add
label define tr00a_ind2_lbl 12 `"Manufacture of chemicals and chemical petroleum coal rubber and plastic products"', add
label define tr00a_ind2_lbl 13 `"Manufacture of nonmetallic mineral products"', add
label define tr00a_ind2_lbl 14 `"Basic metal industries"', add
label define tr00a_ind2_lbl 15 `"Manufacture of fabricated metal products, machinery and equipment"', add
label define tr00a_ind2_lbl 16 `"Other manufacturing industries"', add
label define tr00a_ind2_lbl 17 `"Electricity, gas and steam"', add
label define tr00a_ind2_lbl 18 `"Water works and supply"', add
label define tr00a_ind2_lbl 19 `"Construction"', add
label define tr00a_ind2_lbl 20 `"Wholesale trade"', add
label define tr00a_ind2_lbl 21 `"Retail trade"', add
label define tr00a_ind2_lbl 22 `"Restaurants and hotels"', add
label define tr00a_ind2_lbl 23 `"Transport"', add
label define tr00a_ind2_lbl 24 `"Communication"', add
label define tr00a_ind2_lbl 25 `"Financial institutions"', add
label define tr00a_ind2_lbl 26 `"Insurance"', add
label define tr00a_ind2_lbl 27 `"Real estate and business services"', add
label define tr00a_ind2_lbl 28 `"Public administration and defense"', add
label define tr00a_ind2_lbl 29 `"Environmental health and similar services"', add
label define tr00a_ind2_lbl 30 `"Social and similar public services"', add
label define tr00a_ind2_lbl 31 `"Creative and cultural services"', add
label define tr00a_ind2_lbl 32 `"Personal services"', add
label define tr00a_ind2_lbl 33 `"International and other foreign organizations"', add
label define tr00a_ind2_lbl 34 `"Activities not adequately defined"', add
label define tr00a_ind2_lbl 98 `"Unknown"', add
label define tr00a_ind2_lbl 99 `"NIU (not in universe)"', add
label values tr00a_ind2 tr00a_ind2_lbl

label define tr00a_prof1_lbl 01 `"Scientific, technical, professional and related workers"'
label define tr00a_prof1_lbl 02 `"Administrative and managerial workers"', add
label define tr00a_prof1_lbl 03 `"Clerical and related workers"', add
label define tr00a_prof1_lbl 04 `"Commercial and sales workers"', add
label define tr00a_prof1_lbl 05 `"Services workers"', add
label define tr00a_prof1_lbl 06 `"Agricultural, animal husbandry, forestry workers, fishermen and hunters"', add
label define tr00a_prof1_lbl 07 `"Nonagricultural production and related workers, transport equipment operators and laborers"', add
label define tr00a_prof1_lbl 97 `"Without a profession"', add
label define tr00a_prof1_lbl 98 `"Unknown"', add
label define tr00a_prof1_lbl 99 `"NIU (not in universe)"', add
label values tr00a_prof1 tr00a_prof1_lbl

label define tr00a_prof2_lbl 01 `"Physicists, chemists, and related workers"'
label define tr00a_prof2_lbl 02 `"Architects, engineers and related technicians"', add
label define tr00a_prof2_lbl 03 `"Aircraft and ship officers"', add
label define tr00a_prof2_lbl 04 `"Life scientists and related technicians"', add
label define tr00a_prof2_lbl 05 `"Medical, dental, veterinary and related workers"', add
label define tr00a_prof2_lbl 06 `"Statisticians, mathematicians, systems analysts and related technicians"', add
label define tr00a_prof2_lbl 07 `"Economists"', add
label define tr00a_prof2_lbl 08 `"Financial counselors and accountants"', add
label define tr00a_prof2_lbl 09 `"Jurists"', add
label define tr00a_prof2_lbl 10 `"Teachers"', add
label define tr00a_prof2_lbl 11 `"Religious workers"', add
label define tr00a_prof2_lbl 12 `"Authors, journalists and related writers"', add
label define tr00a_prof2_lbl 13 `"Sculptors, painters, photographers and related creative artists"', add
label define tr00a_prof2_lbl 14 `"Composers and performing artists"', add
label define tr00a_prof2_lbl 15 `"Athletes, sportsmen and related workers"', add
label define tr00a_prof2_lbl 16 `"Professional, technical and related workers etc."', add
label define tr00a_prof2_lbl 17 `"Legislative officials and government administrators"', add
label define tr00a_prof2_lbl 18 `"Managers"', add
label define tr00a_prof2_lbl 19 `"Clerical supervisors"', add
label define tr00a_prof2_lbl 20 `"Government executive officials"', add
label define tr00a_prof2_lbl 21 `"Stenographers, typists and card and tape punching machine operators"', add
label define tr00a_prof2_lbl 22 `"Bookkeepers, cashiers and related workers"', add
label define tr00a_prof2_lbl 23 `"Computing machine operators"', add
label define tr00a_prof2_lbl 24 `"Transport and communication supervisors"', add
label define tr00a_prof2_lbl 25 `"Transport conductors"', add
label define tr00a_prof2_lbl 26 `"Mail distribution clerks"', add
label define tr00a_prof2_lbl 27 `"Telephone and telegraph operators"', add
label define tr00a_prof2_lbl 28 `"Clerical and related workers etc."', add
label define tr00a_prof2_lbl 29 `"Managers (wholesale and retail trade)"', add
label define tr00a_prof2_lbl 30 `"Working proprietors"', add
label define tr00a_prof2_lbl 31 `"Sales supervisors and buyers"', add
label define tr00a_prof2_lbl 32 `"Technical salesman, commercial travelers and manufacturers agents"', add
label define tr00a_prof2_lbl 33 `"Insurance, real estate, securities and business services, salesmen and auctioneers"', add
label define tr00a_prof2_lbl 34 `"Salesmen, shop assistants and demonstrators"', add
label define tr00a_prof2_lbl 35 `"Workers etc."', add
label define tr00a_prof2_lbl 36 `"Administrators of hotel, cafe, place for gambling, restaurant, casino, pastry-shop, cinema, theatre and related situations"', add
label define tr00a_prof2_lbl 37 `"Administrative and managerial owners of hotel, cafe, place for gambling, restaurant, casino, pastry-shop, cinema, theatre and related situations"', add
label define tr00a_prof2_lbl 38 `"Housekeeping and related service supervisors"', add
label define tr00a_prof2_lbl 39 `"Cooks, waiters, bartenders and related workers"', add
label define tr00a_prof2_lbl 40 `"Maids and related workers"', add
label define tr00a_prof2_lbl 41 `"Building caretakers, char workers"', add
label define tr00a_prof2_lbl 42 `"Launderers, dry cleaners and pressers"', add
label define tr00a_prof2_lbl 43 `"Hairdressers, barbers, beauticians and related workers"', add
label define tr00a_prof2_lbl 44 `"Protective service workers"', add
label define tr00a_prof2_lbl 45 `"Workers etc."', add
label define tr00a_prof2_lbl 47 `"Farmers, including farm managers and supervisors"', add
label define tr00a_prof2_lbl 48 `"Agricultural and animal husbandry workers"', add
label define tr00a_prof2_lbl 49 `"Forestry workers"', add
label define tr00a_prof2_lbl 50 `"Fishermen, hunters and related workers"', add
label define tr00a_prof2_lbl 51 `"Production supervisors and general foremen"', add
label define tr00a_prof2_lbl 52 `"Miners, quarrymen, well drillers and related workers"', add
label define tr00a_prof2_lbl 53 `"Metal processers"', add
label define tr00a_prof2_lbl 54 `"Wood preparation workers and paper makers"', add
label define tr00a_prof2_lbl 55 `"Chemical processers and related workers"', add
label define tr00a_prof2_lbl 56 `"Spinners, weavers, knitters, dyers and related workers"', add
label define tr00a_prof2_lbl 57 `"Tanners, fellmongers and pelt dressers"', add
label define tr00a_prof2_lbl 58 `"Food and beverage processers"', add
label define tr00a_prof2_lbl 59 `"Tobacco preparers and tobacco product makers"', add
label define tr00a_prof2_lbl 60 `"Tailors, dressmakers, upholsterers and related workers"', add
label define tr00a_prof2_lbl 61 `"Shoemakers and leather goods makers"', add
label define tr00a_prof2_lbl 62 `"Cabinetmakers and related wood workers"', add
label define tr00a_prof2_lbl 63 `"Stone cutters and carvers"', add
label define tr00a_prof2_lbl 64 `"Blacksmiths toolmakers and machine-tool operators"', add
label define tr00a_prof2_lbl 65 `"Machinery fitters, machine assemblers and precision instrument makers (except electrical)."', add
label define tr00a_prof2_lbl 66 `"Electrical fitters and related electrical and electronics workers"', add
label define tr00a_prof2_lbl 67 `"Broadcasting station and sound equipment operators and cinema projectionists"', add
label define tr00a_prof2_lbl 68 `"Plumbers, sanitary installation, tin and copper workers, metallic pipe fitters"', add
label define tr00a_prof2_lbl 69 `"Goldsmiths and jewelers"', add
label define tr00a_prof2_lbl 70 `"Glass and glass products, ceramic and earthenware workers"', add
label define tr00a_prof2_lbl 71 `"Plastic and rubber material workers"', add
label define tr00a_prof2_lbl 72 `"Paper, paper-board and binding material workers"', add
label define tr00a_prof2_lbl 73 `"Compositors, printers, binders and related workers"', add
label define tr00a_prof2_lbl 74 `"House painters and whitewashers"', add
label define tr00a_prof2_lbl 75 `"nec production and related workers"', add
label define tr00a_prof2_lbl 76 `"Master builder, carpenter and other construction workers"', add
label define tr00a_prof2_lbl 77 `"Fixed installment machinery operators"', add
label define tr00a_prof2_lbl 78 `"Loading and unloading workers and construction equipment operators"', add
label define tr00a_prof2_lbl 79 `"Transport equipment operators"', add
label define tr00a_prof2_lbl 80 `"Unskilled workers, etc.; workers not classifiable by occupation or not reporting any occupation"', add
label define tr00a_prof2_lbl 97 `"Without a profession"', add
label define tr00a_prof2_lbl 98 `"Unknown"', add
label define tr00a_prof2_lbl 99 `"NIU (not in universe)"', add
label values tr00a_prof2 tr00a_prof2_lbl

label define tr00a_classwk_lbl 1 `"Regular or casual employee"'
label define tr00a_classwk_lbl 2 `"Employer"', add
label define tr00a_classwk_lbl 3 `"Self-employed"', add
label define tr00a_classwk_lbl 4 `"Unpaid family worker"', add
label define tr00a_classwk_lbl 8 `"Unknown"', add
label define tr00a_classwk_lbl 9 `"NIU (not in universe)"', add
label values tr00a_classwk tr00a_classwk_lbl

label define tr00a_seekwork_lbl 1 `"Yes"'
label define tr00a_seekwork_lbl 2 `"No"', add
label define tr00a_seekwork_lbl 8 `"Unknown"', add
label define tr00a_seekwork_lbl 9 `"NIU (not in universe)"', add
label values tr00a_seekwork tr00a_seekwork_lbl

label define tr00a_durseek_lbl 1 `"1 month before"'
label define tr00a_durseek_lbl 2 `"2-3 months before"', add
label define tr00a_durseek_lbl 3 `"4-6 months before"', add
label define tr00a_durseek_lbl 4 `"7+ months before"', add
label define tr00a_durseek_lbl 5 `"Have done nothing"', add
label define tr00a_durseek_lbl 8 `"Unknown"', add
label define tr00a_durseek_lbl 9 `"NIU (not in universe)"', add
label values tr00a_durseek tr00a_durseek_lbl

label define tr00a_durseek_lbl 1 `"1 month before"'
label define tr00a_durseek_lbl 2 `"2-3 months before"', add
label define tr00a_durseek_lbl 3 `"4-6 months before"', add
label define tr00a_durseek_lbl 4 `"7+ months before"', add
label define tr00a_durseek_lbl 5 `"Have done nothing"', add
label define tr00a_durseek_lbl 8 `"Unknown"', add
label define tr00a_durseek_lbl 9 `"NIU (not in universe)"', add
label values tr00a_durseek tr00a_durseek_lbl

label define tr00a_workreas_lbl 1 `"Found a job but waiting to start"'
label define tr00a_workreas_lbl 2 `"Student"', add
label define tr00a_workreas_lbl 3 `"Housewife"', add
label define tr00a_workreas_lbl 4 `"Retired"', add
label define tr00a_workreas_lbl 5 `"Income recipients"', add
label define tr00a_workreas_lbl 6 `"Other"', add
label define tr00a_workreas_lbl 8 `"Unknown"', add
label define tr00a_workreas_lbl 9 `"NIU (not in universe)"', add
label values tr00a_workreas tr00a_workreas_lbl


