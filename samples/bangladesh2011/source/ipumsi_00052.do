* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                    ///
  int     cntry           1-3    ///
  int     year            4-7    ///
  int     sample          8-11   ///
  double  serial          12-21  ///
  long    bd11a_dwnum     22-28  ///
  byte    bd11a_pern      29-30  ///
  byte    bd11a_fbig      31-31  ///
  byte    bd11a_division  32-33  ///
  int     bd11a_zila      34-37  ///
  long    bd11a_upazila   38-43  ///
  byte    bd11a_urban     44-44  ///
  byte    bd11a_floatpop  45-45  ///
  byte    bd11a_hhtype    46-46  ///
  byte    bd11a_houstyp   47-47  ///
  byte    bd11a_tenancy   48-48  ///
  byte    bd11a_watsrc    49-49  ///
  byte    bd11a_toilet    50-50  ///
  byte    bd11a_electrc   51-51  ///
  byte    bd11a_ethpophh  52-52  ///
  byte    bd11a_ethnhh    53-54  ///
  int     pernum          55-57  ///
  float   wtper           58-65  ///
  byte    bd11a_pernum    66-67  ///
  byte    bd11a_age       68-69  ///
  byte    bd11a_relate    70-70  ///
  byte    bd11a_sex       71-71  ///
  byte    bd11a_marst     72-72  ///
  byte    bd11a_religion  73-73  ///
  byte    bd11a_disab     74-74  ///
  byte    bd11a_school    75-75  ///
  byte    bd11a_edattan   76-77  ///
  byte    bd11a_edfield   78-78  ///
  byte    bd11a_lit       79-79  ///
  byte    bd11a_empstat   80-80  ///
  byte    bd11a_ind       81-81  ///
  using `"ipumsi_00052.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var bd11a_dwnum    `"Dwelling number"'
label var bd11a_pern     `"Number of persons in household"'
label var bd11a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var bd11a_division `"Division"'
label var bd11a_zila     `"Zila/ District"'
label var bd11a_upazila  `"Upazila/thana"'
label var bd11a_urban    `"Urban-rural (RMO code)"'
label var bd11a_floatpop `"Floating population"'
label var bd11a_hhtype   `"Type of household"'
label var bd11a_houstyp  `"Type of house"'
label var bd11a_tenancy  `"Ownership"'
label var bd11a_watsrc   `"Source of drinking water"'
label var bd11a_toilet   `"Toilet facilities"'
label var bd11a_electrc  `"Electricity connection"'
label var bd11a_ethpophh `"Ethnic population"'
label var bd11a_ethnhh   `"Ethnicity"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var bd11a_pernum   `"Person number (within household)"'
label var bd11a_age      `"Age"'
label var bd11a_relate   `"Relationship to household head"'
label var bd11a_sex      `"Sex"'
label var bd11a_marst    `"Marital status"'
label var bd11a_religion `"Religion"'
label var bd11a_disab    `"Type of disability"'
label var bd11a_school   `"Student"'
label var bd11a_edattan  `"Educational attainment"'
label var bd11a_edfield  `"Field of education"'
label var bd11a_lit      `"Literacy"'
label var bd11a_empstat  `"Activity status"'
label var bd11a_ind      `"Industry"'

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

label define bd11a_pern_lbl 01 `"1"'
label define bd11a_pern_lbl 02 `"2"', add
label define bd11a_pern_lbl 03 `"3"', add
label define bd11a_pern_lbl 04 `"4"', add
label define bd11a_pern_lbl 05 `"5"', add
label define bd11a_pern_lbl 06 `"6"', add
label define bd11a_pern_lbl 07 `"7"', add
label define bd11a_pern_lbl 08 `"8"', add
label define bd11a_pern_lbl 09 `"9"', add
label define bd11a_pern_lbl 10 `"10"', add
label define bd11a_pern_lbl 11 `"11"', add
label define bd11a_pern_lbl 12 `"12"', add
label define bd11a_pern_lbl 13 `"13"', add
label define bd11a_pern_lbl 14 `"14"', add
label define bd11a_pern_lbl 15 `"15"', add
label define bd11a_pern_lbl 16 `"16"', add
label define bd11a_pern_lbl 17 `"17"', add
label define bd11a_pern_lbl 18 `"18"', add
label define bd11a_pern_lbl 19 `"19"', add
label define bd11a_pern_lbl 20 `"20"', add
label define bd11a_pern_lbl 21 `"21"', add
label define bd11a_pern_lbl 22 `"22"', add
label define bd11a_pern_lbl 23 `"23"', add
label define bd11a_pern_lbl 24 `"24"', add
label define bd11a_pern_lbl 25 `"25"', add
label define bd11a_pern_lbl 26 `"26"', add
label define bd11a_pern_lbl 27 `"27"', add
label define bd11a_pern_lbl 28 `"28"', add
label define bd11a_pern_lbl 29 `"29"', add
label define bd11a_pern_lbl 30 `"30"', add
label define bd11a_pern_lbl 31 `"31"', add
label define bd11a_pern_lbl 32 `"32"', add
label define bd11a_pern_lbl 33 `"33"', add
label define bd11a_pern_lbl 34 `"34"', add
label define bd11a_pern_lbl 35 `"35"', add
label define bd11a_pern_lbl 36 `"36"', add
label define bd11a_pern_lbl 37 `"37"', add
label define bd11a_pern_lbl 38 `"38"', add
label define bd11a_pern_lbl 39 `"39"', add
label define bd11a_pern_lbl 40 `"40"', add
label values bd11a_pern bd11a_pern_lbl

label define bd11a_fbig_lbl 0 `"No problem"'
label define bd11a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define bd11a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values bd11a_fbig bd11a_fbig_lbl

label define bd11a_division_lbl 10 `"Barisal"'
label define bd11a_division_lbl 20 `"Chittagong"', add
label define bd11a_division_lbl 30 `"Dhaka"', add
label define bd11a_division_lbl 40 `"Khulna"', add
label define bd11a_division_lbl 50 `"Rajshahi"', add
label define bd11a_division_lbl 55 `"Rangpur"', add
label define bd11a_division_lbl 60 `"Sylhet"', add
label values bd11a_division bd11a_division_lbl

label define bd11a_zila_lbl 1004 `"Barguna"'
label define bd11a_zila_lbl 1006 `"Barisal"', add
label define bd11a_zila_lbl 1009 `"Bhola"', add
label define bd11a_zila_lbl 1042 `"Jhalokati"', add
label define bd11a_zila_lbl 1078 `"Patuakhali"', add
label define bd11a_zila_lbl 1079 `"Pirojpur"', add
label define bd11a_zila_lbl 2003 `"Bandarban"', add
label define bd11a_zila_lbl 2012 `"Brahmanbaria"', add
label define bd11a_zila_lbl 2013 `"Chandpur"', add
label define bd11a_zila_lbl 2015 `"Chittagong"', add
label define bd11a_zila_lbl 2019 `"Comilla"', add
label define bd11a_zila_lbl 2022 `"Cox's Bazar"', add
label define bd11a_zila_lbl 2030 `"Feni"', add
label define bd11a_zila_lbl 2046 `"Khagrachhari"', add
label define bd11a_zila_lbl 2051 `"Lakshmipur"', add
label define bd11a_zila_lbl 2075 `"Noakhali"', add
label define bd11a_zila_lbl 2084 `"Rangamati"', add
label define bd11a_zila_lbl 3026 `"Dhaka"', add
label define bd11a_zila_lbl 3029 `"Faridpur"', add
label define bd11a_zila_lbl 3033 `"Gazipur"', add
label define bd11a_zila_lbl 3035 `"Gopalganj"', add
label define bd11a_zila_lbl 3039 `"Jamalpur"', add
label define bd11a_zila_lbl 3048 `"Kishoreganj"', add
label define bd11a_zila_lbl 3054 `"Madaripur"', add
label define bd11a_zila_lbl 3056 `"Manikganj"', add
label define bd11a_zila_lbl 3059 `"Munshiganj"', add
label define bd11a_zila_lbl 3061 `"Mymensingh"', add
label define bd11a_zila_lbl 3067 `"Narayanganj"', add
label define bd11a_zila_lbl 3068 `"Narsingdi"', add
label define bd11a_zila_lbl 3072 `"Netrokona"', add
label define bd11a_zila_lbl 3082 `"Rajbari"', add
label define bd11a_zila_lbl 3086 `"Shariatpur"', add
label define bd11a_zila_lbl 3089 `"Sherpur"', add
label define bd11a_zila_lbl 3093 `"Tangail"', add
label define bd11a_zila_lbl 4001 `"Bagerhat"', add
label define bd11a_zila_lbl 4018 `"Chuadanga"', add
label define bd11a_zila_lbl 4041 `"Jessore"', add
label define bd11a_zila_lbl 4044 `"Jhenaidaha"', add
label define bd11a_zila_lbl 4047 `"Khulna"', add
label define bd11a_zila_lbl 4050 `"Kushtia"', add
label define bd11a_zila_lbl 4055 `"Magura"', add
label define bd11a_zila_lbl 4057 `"Meherpur"', add
label define bd11a_zila_lbl 4065 `"Narail"', add
label define bd11a_zila_lbl 4087 `"Satkhira"', add
label define bd11a_zila_lbl 5010 `"Bogra"', add
label define bd11a_zila_lbl 5038 `"Joypurhat"', add
label define bd11a_zila_lbl 5064 `"Naogaon"', add
label define bd11a_zila_lbl 5069 `"Natore"', add
label define bd11a_zila_lbl 5070 `"Chapai Nababganj"', add
label define bd11a_zila_lbl 5076 `"Pabna"', add
label define bd11a_zila_lbl 5081 `"Rajshahi"', add
label define bd11a_zila_lbl 5088 `"Sirajganj"', add
label define bd11a_zila_lbl 5527 `"Dinajpur"', add
label define bd11a_zila_lbl 5532 `"Gaibandha"', add
label define bd11a_zila_lbl 5549 `"Kurigram"', add
label define bd11a_zila_lbl 5552 `"Lalmonirhat"', add
label define bd11a_zila_lbl 5573 `"Nilphamari"', add
label define bd11a_zila_lbl 5577 `"Panchagarh"', add
label define bd11a_zila_lbl 5585 `"Rangpur"', add
label define bd11a_zila_lbl 5594 `"Thakurgaon"', add
label define bd11a_zila_lbl 6036 `"Habiganj"', add
label define bd11a_zila_lbl 6058 `"Maulvi Bazar"', add
label define bd11a_zila_lbl 6090 `"Sunamganj"', add
label define bd11a_zila_lbl 6091 `"Sylhet"', add
label values bd11a_zila bd11a_zila_lbl

label define bd11a_upazila_lbl 100409 `"Amtali"'
label define bd11a_upazila_lbl 100419 `"Bamna"', add
label define bd11a_upazila_lbl 100428 `"Barguna Sadar"', add
label define bd11a_upazila_lbl 100447 `"Betagi"', add
label define bd11a_upazila_lbl 100485 `"Patharghata"', add
label define bd11a_upazila_lbl 100602 `"Agailjhara"', add
label define bd11a_upazila_lbl 100603 `"Babuganj"', add
label define bd11a_upazila_lbl 100607 `"Bakerganj"', add
label define bd11a_upazila_lbl 100610 `"Banaripara"', add
label define bd11a_upazila_lbl 100632 `"Gaurnadi"', add
label define bd11a_upazila_lbl 100636 `"Hizla"', add
label define bd11a_upazila_lbl 100651 `"Barisal Sadar"', add
label define bd11a_upazila_lbl 100662 `"Mehendiganj"', add
label define bd11a_upazila_lbl 100669 `"Muladi"', add
label define bd11a_upazila_lbl 100694 `"Wazirpur"', add
label define bd11a_upazila_lbl 100918 `"Bhola Sadar"', add
label define bd11a_upazila_lbl 100921 `"Burhanuddin"', add
label define bd11a_upazila_lbl 100925 `"Char Fasson"', add
label define bd11a_upazila_lbl 100929 `"Daulat Khan"', add
label define bd11a_upazila_lbl 100954 `"Lalmohan"', add
label define bd11a_upazila_lbl 100965 `"Manpura"', add
label define bd11a_upazila_lbl 100991 `"Tazumuddin"', add
label define bd11a_upazila_lbl 104240 `"Jhalokati Sadar"', add
label define bd11a_upazila_lbl 104243 `"Kanthalia"', add
label define bd11a_upazila_lbl 104273 `"Nalchity"', add
label define bd11a_upazila_lbl 104284 `"Rajapur"', add
label define bd11a_upazila_lbl 107838 `"Bauphal"', add
label define bd11a_upazila_lbl 107852 `"Dashmina"', add
label define bd11a_upazila_lbl 107855 `"Dumki"', add
label define bd11a_upazila_lbl 107857 `"Galachipa"', add
label define bd11a_upazila_lbl 107866 `"Kala Para"', add
label define bd11a_upazila_lbl 107876 `"Mirzaganj"', add
label define bd11a_upazila_lbl 107895 `"Patuakhali Sadar"', add
label define bd11a_upazila_lbl 107914 `"Bhandaria"', add
label define bd11a_upazila_lbl 107947 `"Kawkhali"', add
label define bd11a_upazila_lbl 107958 `"Mathbaria"', add
label define bd11a_upazila_lbl 107976 `"Nazirpur"', add
label define bd11a_upazila_lbl 107980 `"Pirojpur Sadar"', add
label define bd11a_upazila_lbl 107987 `"Nesarabad (Swarupkati)"', add
label define bd11a_upazila_lbl 107990 `"Zianagar"', add
label define bd11a_upazila_lbl 200304 `"Alikadam"', add
label define bd11a_upazila_lbl 200314 `"Bandarban Sadar"', add
label define bd11a_upazila_lbl 200351 `"Lama"', add
label define bd11a_upazila_lbl 200373 `"Naikhongchhari"', add
label define bd11a_upazila_lbl 200389 `"Rowangchhari"', add
label define bd11a_upazila_lbl 200391 `"Ruma"', add
label define bd11a_upazila_lbl 200395 `"Thanchi"', add
label define bd11a_upazila_lbl 201202 `"Akhaura"', add
label define bd11a_upazila_lbl 201204 `"Banchharampur"', add
label define bd11a_upazila_lbl 201207 `"Bijoynagar"', add
label define bd11a_upazila_lbl 201213 `"Brahmanbaria Sadar"', add
label define bd11a_upazila_lbl 201233 `"Ashuganj"', add
label define bd11a_upazila_lbl 201263 `"Kasba"', add
label define bd11a_upazila_lbl 201285 `"Nabinagar"', add
label define bd11a_upazila_lbl 201290 `"Nasirnagar"', add
label define bd11a_upazila_lbl 201294 `"Sarail"', add
label define bd11a_upazila_lbl 201322 `"Chandpur Sadar"', add
label define bd11a_upazila_lbl 201345 `"Faridganj"', add
label define bd11a_upazila_lbl 201347 `"Haim Char"', add
label define bd11a_upazila_lbl 201349 `"Hajiganj"', add
label define bd11a_upazila_lbl 201358 `"Kachua"', add
label define bd11a_upazila_lbl 201376 `"Matlab"', add
label define bd11a_upazila_lbl 201379 `"Uttar Matlab"', add
label define bd11a_upazila_lbl 201395 `"Shahrasti"', add
label define bd11a_upazila_lbl 201504 `"Anowara"', add
label define bd11a_upazila_lbl 201506 `"Bayejid Bostami Thana"', add
label define bd11a_upazila_lbl 201508 `"Banshkhali"', add
label define bd11a_upazila_lbl 201510 `"Bakalia Thana"', add
label define bd11a_upazila_lbl 201512 `"Boalkhali"', add
label define bd11a_upazila_lbl 201518 `"Chandanaish"', add
label define bd11a_upazila_lbl 201519 `"Chandgaon Thana"', add
label define bd11a_upazila_lbl 201520 `"Chittagong Port Thana"', add
label define bd11a_upazila_lbl 201528 `"Double Mooring Thana"', add
label define bd11a_upazila_lbl 201533 `"Fatikchhari"', add
label define bd11a_upazila_lbl 201535 `"Halishahar Thana"', add
label define bd11a_upazila_lbl 201537 `"Hathazari"', add
label define bd11a_upazila_lbl 201541 `"Kotwali Thana"', add
label define bd11a_upazila_lbl 201543 `"Khulshi Thana"', add
label define bd11a_upazila_lbl 201547 `"Lohagara"', add
label define bd11a_upazila_lbl 201553 `"Mirsharai"', add
label define bd11a_upazila_lbl 201555 `"Pahartali Thana"', add
label define bd11a_upazila_lbl 201557 `"Panchlaish Thana"', add
label define bd11a_upazila_lbl 201561 `"Patiya"', add
label define bd11a_upazila_lbl 201565 `"Patenga Thana"', add
label define bd11a_upazila_lbl 201570 `"Rangunia"', add
label define bd11a_upazila_lbl 201574 `"Raozan"', add
label define bd11a_upazila_lbl 201578 `"Sandwip"', add
label define bd11a_upazila_lbl 201582 `"Satkania"', add
label define bd11a_upazila_lbl 201586 `"Sitakunda"', add
label define bd11a_upazila_lbl 201909 `"Barura"', add
label define bd11a_upazila_lbl 201915 `"Brahman Para"', add
label define bd11a_upazila_lbl 201918 `"Burichang"', add
label define bd11a_upazila_lbl 201927 `"Chandina"', add
label define bd11a_upazila_lbl 201931 `"Chauddagram"', add
label define bd11a_upazila_lbl 201933 `"Comilla Sadar Dakhin"', add
label define bd11a_upazila_lbl 201936 `"Daudkandi"', add
label define bd11a_upazila_lbl 201940 `"Debidwar"', add
label define bd11a_upazila_lbl 201954 `"Homna"', add
label define bd11a_upazila_lbl 201967 `"Comilla Adarsha Sadar"', add
label define bd11a_upazila_lbl 201972 `"Laksam"', add
label define bd11a_upazila_lbl 201974 `"Manoharganj"', add
label define bd11a_upazila_lbl 201975 `"Meghna"', add
label define bd11a_upazila_lbl 201981 `"Muradnagar"', add
label define bd11a_upazila_lbl 201987 `"Nangalkot"', add
label define bd11a_upazila_lbl 201994 `"Titas"', add
label define bd11a_upazila_lbl 202216 `"Chakaria"', add
label define bd11a_upazila_lbl 202224 `"Cox'S Bazar Sadar"', add
label define bd11a_upazila_lbl 202245 `"Kutubdia"', add
label define bd11a_upazila_lbl 202249 `"Maheshkhali"', add
label define bd11a_upazila_lbl 202256 `"Pekua"', add
label define bd11a_upazila_lbl 202266 `"Ramu"', add
label define bd11a_upazila_lbl 202290 `"Teknaf"', add
label define bd11a_upazila_lbl 202294 `"Ukhia"', add
label define bd11a_upazila_lbl 203014 `"Chhagalnaiya"', add
label define bd11a_upazila_lbl 203025 `"Daganbhuiyan"', add
label define bd11a_upazila_lbl 203029 `"Feni Sadar"', add
label define bd11a_upazila_lbl 203041 `"Fulgazi"', add
label define bd11a_upazila_lbl 203051 `"Parshuram"', add
label define bd11a_upazila_lbl 203094 `"Sonagazi"', add
label define bd11a_upazila_lbl 204643 `"Dighinala"', add
label define bd11a_upazila_lbl 204649 `"Khagrachhari Sadar"', add
label define bd11a_upazila_lbl 204661 `"Lakshmichhari"', add
label define bd11a_upazila_lbl 204665 `"Mahalchhari"', add
label define bd11a_upazila_lbl 204667 `"Manikchhari"', add
label define bd11a_upazila_lbl 204670 `"Matiranga"', add
label define bd11a_upazila_lbl 204677 `"Panchhari"', add
label define bd11a_upazila_lbl 204680 `"Ramgarh"', add
label define bd11a_upazila_lbl 205133 `"Kamalnagar"', add
label define bd11a_upazila_lbl 205143 `"Lakshmipur Sadar"', add
label define bd11a_upazila_lbl 205158 `"Roypur"', add
label define bd11a_upazila_lbl 205165 `"Ramganj"', add
label define bd11a_upazila_lbl 205173 `"Ramgati"', add
label define bd11a_upazila_lbl 207507 `"Begumganj"', add
label define bd11a_upazila_lbl 207510 `"Chatkhil"', add
label define bd11a_upazila_lbl 207521 `"Companiganj"', add
label define bd11a_upazila_lbl 207536 `"Hatiya"', add
label define bd11a_upazila_lbl 207547 `"Kabirhat"', add
label define bd11a_upazila_lbl 207580 `"Senbagh"', add
label define bd11a_upazila_lbl 207583 `"Sonaimuri"', add
label define bd11a_upazila_lbl 207585 `"Subarna Char"', add
label define bd11a_upazila_lbl 207587 `"Noakhali Sadar (Sudharam)"', add
label define bd11a_upazila_lbl 208407 `"Baghai Chhari"', add
label define bd11a_upazila_lbl 208421 `"Barkal"', add
label define bd11a_upazila_lbl 208425 `"Kawkhali (Betbunia)"', add
label define bd11a_upazila_lbl 208429 `"Belai Chhari"', add
label define bd11a_upazila_lbl 208436 `"Kaptai"', add
label define bd11a_upazila_lbl 208447 `"Jurai Chhari"', add
label define bd11a_upazila_lbl 208458 `"Langadu"', add
label define bd11a_upazila_lbl 208475 `"Maniarchar"', add
label define bd11a_upazila_lbl 208478 `"Rajasthali"', add
label define bd11a_upazila_lbl 208487 `"Rangamati Sadar"', add
label define bd11a_upazila_lbl 302602 `"Adabar Thana"', add
label define bd11a_upazila_lbl 302604 `"Badda Thana"', add
label define bd11a_upazila_lbl 302605 `"Bangshal Thana"', add
label define bd11a_upazila_lbl 302608 `"Cantonment Thana"', add
label define bd11a_upazila_lbl 302609 `"Chak Bazar Thana"', add
label define bd11a_upazila_lbl 302610 `"Dakshinkhan Thana"', add
label define bd11a_upazila_lbl 302611 `"Darus Salam Thana"', add
label define bd11a_upazila_lbl 302612 `"Demra Thana"', add
label define bd11a_upazila_lbl 302614 `"Dhamrai"', add
label define bd11a_upazila_lbl 302616 `"Dhanmondi Thana"', add
label define bd11a_upazila_lbl 302618 `"Dohar"', add
label define bd11a_upazila_lbl 302624 `"Gendaria Thana"', add
label define bd11a_upazila_lbl 302626 `"Gulshan Thana"', add
label define bd11a_upazila_lbl 302628 `"Hazaribagh Thana"', add
label define bd11a_upazila_lbl 302629 `"Jatrabari Thana"', add
label define bd11a_upazila_lbl 302630 `"Kafrul Thana"', add
label define bd11a_upazila_lbl 302632 `"Kadam Tali Thana"', add
label define bd11a_upazila_lbl 302633 `"Kalabagan Thana"', add
label define bd11a_upazila_lbl 302634 `"Kamrangir Char Thana"', add
label define bd11a_upazila_lbl 302636 `"Khilgaon Thana"', add
label define bd11a_upazila_lbl 302637 `"Khilkhet Thana"', add
label define bd11a_upazila_lbl 302638 `"Keraniganj"', add
label define bd11a_upazila_lbl 302640 `"Kotwali Thana"', add
label define bd11a_upazila_lbl 302642 `"Lalbagh Thana"', add
label define bd11a_upazila_lbl 302648 `"Mirpur Thana"', add
label define bd11a_upazila_lbl 302650 `"Mohammadpur Thana"', add
label define bd11a_upazila_lbl 302654 `"Motijheel Thana"', add
label define bd11a_upazila_lbl 302662 `"Nawabganj"', add
label define bd11a_upazila_lbl 302663 `"New Market Thana"', add
label define bd11a_upazila_lbl 302664 `"Pallabi Thana"', add
label define bd11a_upazila_lbl 302665 `"Paltan Thana"', add
label define bd11a_upazila_lbl 302666 `"Ramna Thana"', add
label define bd11a_upazila_lbl 302667 `"Rampura Thana"', add
label define bd11a_upazila_lbl 302668 `"Sabujbagh Thana"', add
label define bd11a_upazila_lbl 302672 `"Savar"', add
label define bd11a_upazila_lbl 302674 `"Shah Ali Thana"', add
label define bd11a_upazila_lbl 302675 `"Shahbag Thana"', add
label define bd11a_upazila_lbl 302676 `"Shyampur Thana"', add
label define bd11a_upazila_lbl 302680 `"Sher-E-Bangla Nagar Thana"', add
label define bd11a_upazila_lbl 302688 `"Sutrapur Thana"', add
label define bd11a_upazila_lbl 302690 `"Tejgaon Thana"', add
label define bd11a_upazila_lbl 302692 `"Tejgaon Ind.Area Thana"', add
label define bd11a_upazila_lbl 302693 `"Turag Thana"', add
label define bd11a_upazila_lbl 302695 `"Uttara and Bimanbandar Thana"', add
label define bd11a_upazila_lbl 302696 `"Uttar Khan Thana"', add
label define bd11a_upazila_lbl 302903 `"Alfadanga"', add
label define bd11a_upazila_lbl 302910 `"Bhanga"', add
label define bd11a_upazila_lbl 302918 `"Boalmari"', add
label define bd11a_upazila_lbl 302921 `"Char Bhadrasan"', add
label define bd11a_upazila_lbl 302947 `"Faridpur Sadar"', add
label define bd11a_upazila_lbl 302956 `"Madhukhali"', add
label define bd11a_upazila_lbl 302962 `"Nagarkanda"', add
label define bd11a_upazila_lbl 302984 `"Sadarpur"', add
label define bd11a_upazila_lbl 302990 `"Saltha"', add
label define bd11a_upazila_lbl 303330 `"Gazipur Sadar"', add
label define bd11a_upazila_lbl 303332 `"Kaliakair"', add
label define bd11a_upazila_lbl 303334 `"Kaliganj"', add
label define bd11a_upazila_lbl 303336 `"Kapasia"', add
label define bd11a_upazila_lbl 303386 `"Sreepur"', add
label define bd11a_upazila_lbl 303532 `"Gopalganj Sadar"', add
label define bd11a_upazila_lbl 303543 `"Kashiani"', add
label define bd11a_upazila_lbl 303551 `"Kotalipara"', add
label define bd11a_upazila_lbl 303558 `"Muksudpur"', add
label define bd11a_upazila_lbl 303591 `"Tungipara"', add
label define bd11a_upazila_lbl 303907 `"Bakshiganj"', add
label define bd11a_upazila_lbl 303915 `"Dewanganj"', add
label define bd11a_upazila_lbl 303929 `"Islampur"', add
label define bd11a_upazila_lbl 303936 `"Jamalpur Sadar"', add
label define bd11a_upazila_lbl 303958 `"Madarganj"', add
label define bd11a_upazila_lbl 303961 `"Melandaha"', add
label define bd11a_upazila_lbl 303985 `"Sarishabari"', add
label define bd11a_upazila_lbl 304802 `"Austagram"', add
label define bd11a_upazila_lbl 304806 `"Bajitpur"', add
label define bd11a_upazila_lbl 304811 `"Bhairab"', add
label define bd11a_upazila_lbl 304827 `"Hossainpur"', add
label define bd11a_upazila_lbl 304833 `"Itna"', add
label define bd11a_upazila_lbl 304842 `"Karimganj"', add
label define bd11a_upazila_lbl 304845 `"Katiadi"', add
label define bd11a_upazila_lbl 304849 `"Kishoreganj Sadar"', add
label define bd11a_upazila_lbl 304854 `"Kuliar Char"', add
label define bd11a_upazila_lbl 304859 `"Mithamain"', add
label define bd11a_upazila_lbl 304876 `"Nikli"', add
label define bd11a_upazila_lbl 304879 `"Pakundia"', add
label define bd11a_upazila_lbl 304892 `"Tarail"', add
label define bd11a_upazila_lbl 305440 `"Kalkini"', add
label define bd11a_upazila_lbl 305454 `"Madaripur Sadar"', add
label define bd11a_upazila_lbl 305480 `"Rajoir"', add
label define bd11a_upazila_lbl 305487 `"Shib Char"', add
label define bd11a_upazila_lbl 305610 `"Daulatpur"', add
label define bd11a_upazila_lbl 305622 `"Ghior"', add
label define bd11a_upazila_lbl 305628 `"Harirampur"', add
label define bd11a_upazila_lbl 305646 `"Manikganj Sadar"', add
label define bd11a_upazila_lbl 305670 `"Saturia"', add
label define bd11a_upazila_lbl 305678 `"Shibalaya"', add
label define bd11a_upazila_lbl 305682 `"Singair"', add
label define bd11a_upazila_lbl 305924 `"Gazaria"', add
label define bd11a_upazila_lbl 305944 `"Lohajang"', add
label define bd11a_upazila_lbl 305956 `"Munshiganj Sadar"', add
label define bd11a_upazila_lbl 305974 `"Serajdikhan"', add
label define bd11a_upazila_lbl 305984 `"Sreenagar"', add
label define bd11a_upazila_lbl 305994 `"Tongibari"', add
label define bd11a_upazila_lbl 306113 `"Bhaluka"', add
label define bd11a_upazila_lbl 306116 `"Dhobaura"', add
label define bd11a_upazila_lbl 306120 `"Fulbaria"', add
label define bd11a_upazila_lbl 306122 `"Gaffargaon"', add
label define bd11a_upazila_lbl 306123 `"Gauripur"', add
label define bd11a_upazila_lbl 306124 `"Haluaghat"', add
label define bd11a_upazila_lbl 306131 `"Ishwarganj"', add
label define bd11a_upazila_lbl 306152 `"Mymensingh Sadar"', add
label define bd11a_upazila_lbl 306165 `"Muktagachha"', add
label define bd11a_upazila_lbl 306172 `"Nandail"', add
label define bd11a_upazila_lbl 306181 `"Phulpur"', add
label define bd11a_upazila_lbl 306194 `"Trishal"', add
label define bd11a_upazila_lbl 306702 `"Araihazar"', add
label define bd11a_upazila_lbl 306704 `"Sonargaon"', add
label define bd11a_upazila_lbl 306706 `"Bandar"', add
label define bd11a_upazila_lbl 306758 `"Narayanganj Sadar"', add
label define bd11a_upazila_lbl 306768 `"Rupganj"', add
label define bd11a_upazila_lbl 306807 `"Belabo"', add
label define bd11a_upazila_lbl 306852 `"Manohardi"', add
label define bd11a_upazila_lbl 306860 `"Narsingdi Sadar"', add
label define bd11a_upazila_lbl 306863 `"Palash"', add
label define bd11a_upazila_lbl 306864 `"Roypura"', add
label define bd11a_upazila_lbl 306876 `"Shibpur"', add
label define bd11a_upazila_lbl 307204 `"Atpara"', add
label define bd11a_upazila_lbl 307209 `"Barhatta"', add
label define bd11a_upazila_lbl 307218 `"Durgapur"', add
label define bd11a_upazila_lbl 307238 `"Khaliajuri"', add
label define bd11a_upazila_lbl 307240 `"Kalmakanda"', add
label define bd11a_upazila_lbl 307247 `"Kendua Thana"', add
label define bd11a_upazila_lbl 307256 `"Madan"', add
label define bd11a_upazila_lbl 307263 `"Mohanganj"', add
label define bd11a_upazila_lbl 307274 `"Netrokona Sadar"', add
label define bd11a_upazila_lbl 307283 `"Purbadhala"', add
label define bd11a_upazila_lbl 308207 `"Baliakandi"', add
label define bd11a_upazila_lbl 308229 `"Goalandaghat"', add
label define bd11a_upazila_lbl 308247 `"Kalukhali"', add
label define bd11a_upazila_lbl 308273 `"Pangsha"', add
label define bd11a_upazila_lbl 308276 `"Rajbari Sadar"', add
label define bd11a_upazila_lbl 308614 `"Bhedarganj"', add
label define bd11a_upazila_lbl 308625 `"Damudya"', add
label define bd11a_upazila_lbl 308636 `"Gosairhat"', add
label define bd11a_upazila_lbl 308665 `"Naria"', add
label define bd11a_upazila_lbl 308669 `"Palong (Sadar)"', add
label define bd11a_upazila_lbl 308694 `"Zanjira"', add
label define bd11a_upazila_lbl 308937 `"Jhenaigati"', add
label define bd11a_upazila_lbl 308967 `"Nakla"', add
label define bd11a_upazila_lbl 308970 `"Nalitabari"', add
label define bd11a_upazila_lbl 308988 `"Sherpur Sadar"', add
label define bd11a_upazila_lbl 308990 `"Sreebardi"', add
label define bd11a_upazila_lbl 309309 `"Basail"', add
label define bd11a_upazila_lbl 309319 `"Bhuapur"', add
label define bd11a_upazila_lbl 309323 `"Delduar"', add
label define bd11a_upazila_lbl 309325 `"Dhanbari"', add
label define bd11a_upazila_lbl 309328 `"Ghatail"', add
label define bd11a_upazila_lbl 309338 `"Gopalpur"', add
label define bd11a_upazila_lbl 309347 `"Kalihati"', add
label define bd11a_upazila_lbl 309357 `"Madhupur"', add
label define bd11a_upazila_lbl 309366 `"Mirzapur"', add
label define bd11a_upazila_lbl 309376 `"Nagarpur"', add
label define bd11a_upazila_lbl 309385 `"Sakhipur"', add
label define bd11a_upazila_lbl 309395 `"Tangail Sadar"', add
label define bd11a_upazila_lbl 400108 `"Bagerhat Sadar"', add
label define bd11a_upazila_lbl 400114 `"Chitalmari"', add
label define bd11a_upazila_lbl 400134 `"Fakirhat"', add
label define bd11a_upazila_lbl 400138 `"Kachua"', add
label define bd11a_upazila_lbl 400156 `"Mollahat"', add
label define bd11a_upazila_lbl 400158 `"Mongla"', add
label define bd11a_upazila_lbl 400160 `"Morrelganj"', add
label define bd11a_upazila_lbl 400173 `"Rampal"', add
label define bd11a_upazila_lbl 400177 `"Sarankhola"', add
label define bd11a_upazila_lbl 401807 `"Alamdanga"', add
label define bd11a_upazila_lbl 401823 `"Chuadanga Sadar"', add
label define bd11a_upazila_lbl 401831 `"Damurhuda"', add
label define bd11a_upazila_lbl 401855 `"Jiban Nagar"', add
label define bd11a_upazila_lbl 404104 `"Abhaynagar"', add
label define bd11a_upazila_lbl 404109 `"Bagher Para"', add
label define bd11a_upazila_lbl 404111 `"Chaugachha"', add
label define bd11a_upazila_lbl 404123 `"Jhikargachha"', add
label define bd11a_upazila_lbl 404138 `"Keshabpur"', add
label define bd11a_upazila_lbl 404147 `"Kotwali"', add
label define bd11a_upazila_lbl 404161 `"Manirampur"', add
label define bd11a_upazila_lbl 404190 `"Sharsha"', add
label define bd11a_upazila_lbl 404414 `"Harinakunda"', add
label define bd11a_upazila_lbl 404419 `"Jhenaidaha Sadar"', add
label define bd11a_upazila_lbl 404433 `"Kaliganj"', add
label define bd11a_upazila_lbl 404442 `"Kotchandpur"', add
label define bd11a_upazila_lbl 404471 `"Maheshpur"', add
label define bd11a_upazila_lbl 404480 `"Shailkupa"', add
label define bd11a_upazila_lbl 404712 `"Batiaghata"', add
label define bd11a_upazila_lbl 404717 `"Dacope"', add
label define bd11a_upazila_lbl 404721 `"Daulatpur Thana"', add
label define bd11a_upazila_lbl 404730 `"Dumuria"', add
label define bd11a_upazila_lbl 404740 `"Dighalia"', add
label define bd11a_upazila_lbl 404745 `"Khalishpur Thana"', add
label define bd11a_upazila_lbl 404748 `"Khan Jahan Ali Thana"', add
label define bd11a_upazila_lbl 404751 `"Khulna Sadar Thana"', add
label define bd11a_upazila_lbl 404753 `"Koyra"', add
label define bd11a_upazila_lbl 404764 `"Paikgachha"', add
label define bd11a_upazila_lbl 404769 `"Phultala"', add
label define bd11a_upazila_lbl 404775 `"Rupsa"', add
label define bd11a_upazila_lbl 404785 `"Sonadanga Thana"', add
label define bd11a_upazila_lbl 404794 `"Terokhada"', add
label define bd11a_upazila_lbl 405015 `"Bheramara"', add
label define bd11a_upazila_lbl 405039 `"Daulatpur"', add
label define bd11a_upazila_lbl 405063 `"Khoksa"', add
label define bd11a_upazila_lbl 405071 `"Kumarkhali"', add
label define bd11a_upazila_lbl 405079 `"Kushtia Sadar"', add
label define bd11a_upazila_lbl 405094 `"Mirpur"', add
label define bd11a_upazila_lbl 405557 `"Magura Sadar"', add
label define bd11a_upazila_lbl 405566 `"Mohammadpur"', add
label define bd11a_upazila_lbl 405585 `"Shalikha"', add
label define bd11a_upazila_lbl 405595 `"Sreepur"', add
label define bd11a_upazila_lbl 405747 `"Gangni"', add
label define bd11a_upazila_lbl 405760 `"Mujib Nagar"', add
label define bd11a_upazila_lbl 405787 `"Meherpur Sadar"', add
label define bd11a_upazila_lbl 406528 `"Kalia"', add
label define bd11a_upazila_lbl 406552 `"Lohagara"', add
label define bd11a_upazila_lbl 406576 `"Narail Sadar"', add
label define bd11a_upazila_lbl 408704 `"Assasuni"', add
label define bd11a_upazila_lbl 408725 `"Debhata"', add
label define bd11a_upazila_lbl 408743 `"Kalaroa"', add
label define bd11a_upazila_lbl 408747 `"Kaliganj"', add
label define bd11a_upazila_lbl 408782 `"Satkhira Sadar"', add
label define bd11a_upazila_lbl 408786 `"Shyamnagar"', add
label define bd11a_upazila_lbl 408790 `"Tala"', add
label define bd11a_upazila_lbl 501006 `"Adamdighi"', add
label define bd11a_upazila_lbl 501020 `"Bogra Sadar"', add
label define bd11a_upazila_lbl 501027 `"Dhunat"', add
label define bd11a_upazila_lbl 501033 `"Dhupchanchia"', add
label define bd11a_upazila_lbl 501040 `"Gabtali"', add
label define bd11a_upazila_lbl 501054 `"Kahaloo"', add
label define bd11a_upazila_lbl 501067 `"Nandigram"', add
label define bd11a_upazila_lbl 501081 `"Sariakandi"', add
label define bd11a_upazila_lbl 501085 `"Shajahanpur"', add
label define bd11a_upazila_lbl 501088 `"Sherpur"', add
label define bd11a_upazila_lbl 501094 `"Shibganj"', add
label define bd11a_upazila_lbl 501095 `"Sonatola"', add
label define bd11a_upazila_lbl 503813 `"Akkelpur"', add
label define bd11a_upazila_lbl 503847 `"Joypurhat Sadar"', add
label define bd11a_upazila_lbl 503858 `"Kalai"', add
label define bd11a_upazila_lbl 503861 `"Khetlal"', add
label define bd11a_upazila_lbl 503874 `"Panchbibi"', add
label define bd11a_upazila_lbl 506403 `"Atrai"', add
label define bd11a_upazila_lbl 506406 `"Badalgachhi"', add
label define bd11a_upazila_lbl 506428 `"Dhamoirhat"', add
label define bd11a_upazila_lbl 506447 `"Manda"', add
label define bd11a_upazila_lbl 506450 `"Mahadebpur"', add
label define bd11a_upazila_lbl 506460 `"Naogaon Sadar"', add
label define bd11a_upazila_lbl 506469 `"Niamatpur"', add
label define bd11a_upazila_lbl 506475 `"Patnitala"', add
label define bd11a_upazila_lbl 506479 `"Porsha"', add
label define bd11a_upazila_lbl 506485 `"Raninagar"', add
label define bd11a_upazila_lbl 506486 `"Sapahar"', add
label define bd11a_upazila_lbl 506909 `"Bagati Para"', add
label define bd11a_upazila_lbl 506915 `"Baraigram"', add
label define bd11a_upazila_lbl 506941 `"Gurudaspur"', add
label define bd11a_upazila_lbl 506944 `"Lalpur"', add
label define bd11a_upazila_lbl 506963 `"Natore Sadar"', add
label define bd11a_upazila_lbl 506991 `"Singra"', add
label define bd11a_upazila_lbl 507018 `"Bholahat"', add
label define bd11a_upazila_lbl 507037 `"Gomastapur"', add
label define bd11a_upazila_lbl 507056 `"Nachole"', add
label define bd11a_upazila_lbl 507066 `"Nababganj Sadar"', add
label define bd11a_upazila_lbl 507088 `"Shibganj"', add
label define bd11a_upazila_lbl 507605 `"Atgharia"', add
label define bd11a_upazila_lbl 507616 `"Bera"', add
label define bd11a_upazila_lbl 507619 `"Bhangura"', add
label define bd11a_upazila_lbl 507622 `"Chatmohar"', add
label define bd11a_upazila_lbl 507633 `"Faridpur"', add
label define bd11a_upazila_lbl 507639 `"Ishwardi"', add
label define bd11a_upazila_lbl 507655 `"Pabna Sadar"', add
label define bd11a_upazila_lbl 507672 `"Santhia"', add
label define bd11a_upazila_lbl 507683 `"Sujanagar"', add
label define bd11a_upazila_lbl 508110 `"Bagha"', add
label define bd11a_upazila_lbl 508112 `"Baghmara"', add
label define bd11a_upazila_lbl 508122 `"Boalia Thana"', add
label define bd11a_upazila_lbl 508125 `"Charghat"', add
label define bd11a_upazila_lbl 508131 `"Durgapur"', add
label define bd11a_upazila_lbl 508134 `"Godagari"', add
label define bd11a_upazila_lbl 508140 `"Matihar Thana"', add
label define bd11a_upazila_lbl 508153 `"Mohanpur"', add
label define bd11a_upazila_lbl 508172 `"Paba"', add
label define bd11a_upazila_lbl 508182 `"Puthia"', add
label define bd11a_upazila_lbl 508185 `"Rajpara Thana"', add
label define bd11a_upazila_lbl 508190 `"Shah Makhdum Thana"', add
label define bd11a_upazila_lbl 508194 `"Tanore"', add
label define bd11a_upazila_lbl 508811 `"Belkuchi"', add
label define bd11a_upazila_lbl 508827 `"Chauhali"', add
label define bd11a_upazila_lbl 508844 `"Kamarkhanda"', add
label define bd11a_upazila_lbl 508850 `"Kazipur"', add
label define bd11a_upazila_lbl 508861 `"Royganj"', add
label define bd11a_upazila_lbl 508867 `"Shahjadpur"', add
label define bd11a_upazila_lbl 508878 `"Sirajganj Sadar"', add
label define bd11a_upazila_lbl 508889 `"Tarash"', add
label define bd11a_upazila_lbl 508894 `"Ullah Para"', add
label define bd11a_upazila_lbl 552710 `"Birampur"', add
label define bd11a_upazila_lbl 552712 `"Birganj"', add
label define bd11a_upazila_lbl 552717 `"Biral"', add
label define bd11a_upazila_lbl 552721 `"Bochaganj"', add
label define bd11a_upazila_lbl 552730 `"Chirirbandar"', add
label define bd11a_upazila_lbl 552738 `"Fulbari"', add
label define bd11a_upazila_lbl 552743 `"Ghoraghat"', add
label define bd11a_upazila_lbl 552747 `"Hakimpur"', add
label define bd11a_upazila_lbl 552756 `"Kaharole"', add
label define bd11a_upazila_lbl 552760 `"Khansama"', add
label define bd11a_upazila_lbl 552764 `"Dinajpur Sadar"', add
label define bd11a_upazila_lbl 552769 `"Nawabganj"', add
label define bd11a_upazila_lbl 552777 `"Parbatipur"', add
label define bd11a_upazila_lbl 553221 `"Fulchhari"', add
label define bd11a_upazila_lbl 553224 `"Gaibandha Sadar"', add
label define bd11a_upazila_lbl 553230 `"Gobindaganj"', add
label define bd11a_upazila_lbl 553267 `"Palashbari"', add
label define bd11a_upazila_lbl 553282 `"Sadullapur"', add
label define bd11a_upazila_lbl 553288 `"Saghatta"', add
label define bd11a_upazila_lbl 553291 `"Sundarganj"', add
label define bd11a_upazila_lbl 554906 `"Bhurungamari"', add
label define bd11a_upazila_lbl 554908 `"Char Rajibpur"', add
label define bd11a_upazila_lbl 554909 `"Chilmari"', add
label define bd11a_upazila_lbl 554918 `"Phulbari"', add
label define bd11a_upazila_lbl 554952 `"Kurigram Sadar"', add
label define bd11a_upazila_lbl 554961 `"Nageshwari"', add
label define bd11a_upazila_lbl 554977 `"Rajarhat"', add
label define bd11a_upazila_lbl 554979 `"Raumari"', add
label define bd11a_upazila_lbl 554994 `"Ulipur"', add
label define bd11a_upazila_lbl 555202 `"Aditmari"', add
label define bd11a_upazila_lbl 555233 `"Hatibandha"', add
label define bd11a_upazila_lbl 555239 `"Kaliganj"', add
label define bd11a_upazila_lbl 555255 `"Lalmonirhat Sadar"', add
label define bd11a_upazila_lbl 555270 `"Patgram"', add
label define bd11a_upazila_lbl 557312 `"Dimla"', add
label define bd11a_upazila_lbl 557315 `"Domar"', add
label define bd11a_upazila_lbl 557336 `"Jaldhaka"', add
label define bd11a_upazila_lbl 557345 `"Kishoreganj"', add
label define bd11a_upazila_lbl 557364 `"Nilphamari Sadar"', add
label define bd11a_upazila_lbl 557385 `"Saidpur"', add
label define bd11a_upazila_lbl 557704 `"Atwari"', add
label define bd11a_upazila_lbl 557725 `"Boda"', add
label define bd11a_upazila_lbl 557734 `"Debiganj"', add
label define bd11a_upazila_lbl 557773 `"Panchagarh Sadar"', add
label define bd11a_upazila_lbl 557790 `"Tentulia"', add
label define bd11a_upazila_lbl 558503 `"Badarganj"', add
label define bd11a_upazila_lbl 558527 `"Gangachara"', add
label define bd11a_upazila_lbl 558542 `"Kaunia"', add
label define bd11a_upazila_lbl 558549 `"Rangpur Sadar"', add
label define bd11a_upazila_lbl 558558 `"Mitha Pukur"', add
label define bd11a_upazila_lbl 558573 `"Pirgachha"', add
label define bd11a_upazila_lbl 558576 `"Pirganj"', add
label define bd11a_upazila_lbl 558592 `"Taraganj"', add
label define bd11a_upazila_lbl 559408 `"Baliadangi"', add
label define bd11a_upazila_lbl 559451 `"Haripur"', add
label define bd11a_upazila_lbl 559482 `"Pirganj"', add
label define bd11a_upazila_lbl 559486 `"Ranisankail"', add
label define bd11a_upazila_lbl 559494 `"Thakurgaon Sadar"', add
label define bd11a_upazila_lbl 603602 `"Ajmiriganj"', add
label define bd11a_upazila_lbl 603605 `"Bahubal"', add
label define bd11a_upazila_lbl 603611 `"Baniachong"', add
label define bd11a_upazila_lbl 603626 `"Chunarughat"', add
label define bd11a_upazila_lbl 603644 `"Habiganj Sadar"', add
label define bd11a_upazila_lbl 603668 `"Lakhai"', add
label define bd11a_upazila_lbl 603671 `"Madhabpur"', add
label define bd11a_upazila_lbl 603677 `"Nabiganj"', add
label define bd11a_upazila_lbl 605814 `"Barlekha"', add
label define bd11a_upazila_lbl 605835 `"Juri"', add
label define bd11a_upazila_lbl 605856 `"Kamalganj"', add
label define bd11a_upazila_lbl 605865 `"Kulaura"', add
label define bd11a_upazila_lbl 605874 `"Maulvi Bazar Sadar"', add
label define bd11a_upazila_lbl 605880 `"Rajnagar"', add
label define bd11a_upazila_lbl 605883 `"Sreemangal"', add
label define bd11a_upazila_lbl 609018 `"Bishwambarpur"', add
label define bd11a_upazila_lbl 609023 `"Chhatak"', add
label define bd11a_upazila_lbl 609027 `"Dakhin Sunamganj"', add
label define bd11a_upazila_lbl 609029 `"Derai"', add
label define bd11a_upazila_lbl 609032 `"Dharampasha"', add
label define bd11a_upazila_lbl 609033 `"Dowarabazar"', add
label define bd11a_upazila_lbl 609047 `"Jagannathpur"', add
label define bd11a_upazila_lbl 609050 `"Jamalganj"', add
label define bd11a_upazila_lbl 609086 `"Sulla"', add
label define bd11a_upazila_lbl 609089 `"Sunamganj Sadar"', add
label define bd11a_upazila_lbl 609092 `"Tahirpur"', add
label define bd11a_upazila_lbl 609108 `"Balaganj"', add
label define bd11a_upazila_lbl 609117 `"Beani Bazar"', add
label define bd11a_upazila_lbl 609120 `"Bishwanath"', add
label define bd11a_upazila_lbl 609127 `"Companiganj"', add
label define bd11a_upazila_lbl 609131 `"Dakhin Surma"', add
label define bd11a_upazila_lbl 609135 `"Fenchuganj"', add
label define bd11a_upazila_lbl 609138 `"Golabganj"', add
label define bd11a_upazila_lbl 609141 `"Gowainghat"', add
label define bd11a_upazila_lbl 609153 `"Jaintiapur"', add
label define bd11a_upazila_lbl 609159 `"Kanaighat"', add
label define bd11a_upazila_lbl 609162 `"Sylhet Sadar"', add
label define bd11a_upazila_lbl 609194 `"Zakiganj"', add
label values bd11a_upazila bd11a_upazila_lbl

label define bd11a_urban_lbl 1 `"Rural"'
label define bd11a_urban_lbl 2 `"Pourashava"', add
label define bd11a_urban_lbl 3 `"Upazila headquarter"', add
label define bd11a_urban_lbl 5 `"Cantonment board"', add
label define bd11a_urban_lbl 9 `"City corporation"', add
label values bd11a_urban bd11a_urban_lbl

label define bd11a_floatpop_lbl 1 `"Yes"'
label define bd11a_floatpop_lbl 2 `"No"', add
label values bd11a_floatpop bd11a_floatpop_lbl

label define bd11a_hhtype_lbl 1 `"General"'
label define bd11a_hhtype_lbl 2 `"Institutional"', add
label define bd11a_hhtype_lbl 3 `"Others"', add
label define bd11a_hhtype_lbl 9 `"NIU (not in universe)"', add
label values bd11a_hhtype bd11a_hhtype_lbl

label define bd11a_houstyp_lbl 1 `"Pucka"'
label define bd11a_houstyp_lbl 2 `"Semi-pucka"', add
label define bd11a_houstyp_lbl 3 `"Kutcha"', add
label define bd11a_houstyp_lbl 4 `"Jhupri"', add
label define bd11a_houstyp_lbl 9 `"NIU (not in universe)"', add
label values bd11a_houstyp bd11a_houstyp_lbl

label define bd11a_tenancy_lbl 1 `"Own"'
label define bd11a_tenancy_lbl 2 `"Rented"', add
label define bd11a_tenancy_lbl 3 `"Rent-free"', add
label define bd11a_tenancy_lbl 9 `"NIU (not in universe)"', add
label values bd11a_tenancy bd11a_tenancy_lbl

label define bd11a_watsrc_lbl 1 `"Tap"'
label define bd11a_watsrc_lbl 2 `"Tube-well"', add
label define bd11a_watsrc_lbl 3 `"Other"', add
label define bd11a_watsrc_lbl 9 `"NIU (not in universe)"', add
label values bd11a_watsrc bd11a_watsrc_lbl

label define bd11a_toilet_lbl 1 `"Sanitary (with water seal)"'
label define bd11a_toilet_lbl 2 `"Sanitary (no water seal)"', add
label define bd11a_toilet_lbl 3 `"Non-sanitary"', add
label define bd11a_toilet_lbl 4 `"None"', add
label define bd11a_toilet_lbl 9 `"NIU (not in universe)"', add
label values bd11a_toilet bd11a_toilet_lbl

label define bd11a_electrc_lbl 1 `"Yes"'
label define bd11a_electrc_lbl 2 `"No"', add
label define bd11a_electrc_lbl 9 `"NIU (not in universe)"', add
label values bd11a_electrc bd11a_electrc_lbl

label define bd11a_ethpophh_lbl 1 `"Yes"'
label define bd11a_ethpophh_lbl 2 `"No"', add
label define bd11a_ethpophh_lbl 9 `"NIU (not in universe)"', add
label values bd11a_ethpophh bd11a_ethpophh_lbl

label define bd11a_ethnhh_lbl 01 `"Chakma"'
label define bd11a_ethnhh_lbl 02 `"Marma"', add
label define bd11a_ethnhh_lbl 03 `"Tripura"', add
label define bd11a_ethnhh_lbl 04 `"Mro"', add
label define bd11a_ethnhh_lbl 05 `"Tanchaynga"', add
label define bd11a_ethnhh_lbl 06 `"Bawm"', add
label define bd11a_ethnhh_lbl 08 `"Chak"', add
label define bd11a_ethnhh_lbl 09 `"Khiyang"', add
label define bd11a_ethnhh_lbl 10 `"Khumi"', add
label define bd11a_ethnhh_lbl 12 `"Coach"', add
label define bd11a_ethnhh_lbl 13 `"Sawntal"', add
label define bd11a_ethnhh_lbl 16 `"Rakhain"', add
label define bd11a_ethnhh_lbl 17 `"Monipuri"', add
label define bd11a_ethnhh_lbl 18 `"Garo"', add
label define bd11a_ethnhh_lbl 19 `"Hajong"', add
label define bd11a_ethnhh_lbl 20 `"Khasia"', add
label define bd11a_ethnhh_lbl 22 `"Orao"', add
label define bd11a_ethnhh_lbl 23 `"Barmon"', add
label define bd11a_ethnhh_lbl 24 `"Pahari"', add
label define bd11a_ethnhh_lbl 25 `"Malpahari"', add
label define bd11a_ethnhh_lbl 26 `"Monda"', add
label define bd11a_ethnhh_lbl 27 `"Cool"', add
label define bd11a_ethnhh_lbl 28 `"Other"', add
label define bd11a_ethnhh_lbl 99 `"NIU (not in universe)"', add
label values bd11a_ethnhh bd11a_ethnhh_lbl

label define bd11a_pernum_lbl 00 `"Household record"'
label define bd11a_pernum_lbl 01 `"1"', add
label define bd11a_pernum_lbl 02 `"2"', add
label define bd11a_pernum_lbl 03 `"3"', add
label define bd11a_pernum_lbl 04 `"4"', add
label define bd11a_pernum_lbl 05 `"5"', add
label define bd11a_pernum_lbl 06 `"6"', add
label define bd11a_pernum_lbl 07 `"7"', add
label define bd11a_pernum_lbl 08 `"8"', add
label define bd11a_pernum_lbl 09 `"9"', add
label define bd11a_pernum_lbl 10 `"10"', add
label define bd11a_pernum_lbl 11 `"11"', add
label define bd11a_pernum_lbl 12 `"12"', add
label define bd11a_pernum_lbl 13 `"13"', add
label define bd11a_pernum_lbl 14 `"14"', add
label define bd11a_pernum_lbl 15 `"15"', add
label define bd11a_pernum_lbl 16 `"16"', add
label define bd11a_pernum_lbl 17 `"17"', add
label define bd11a_pernum_lbl 18 `"18"', add
label define bd11a_pernum_lbl 19 `"19"', add
label define bd11a_pernum_lbl 20 `"20"', add
label define bd11a_pernum_lbl 21 `"21"', add
label define bd11a_pernum_lbl 22 `"22"', add
label define bd11a_pernum_lbl 23 `"23"', add
label define bd11a_pernum_lbl 24 `"24"', add
label define bd11a_pernum_lbl 25 `"25"', add
label define bd11a_pernum_lbl 26 `"26"', add
label define bd11a_pernum_lbl 27 `"27"', add
label define bd11a_pernum_lbl 28 `"28"', add
label define bd11a_pernum_lbl 29 `"29"', add
label define bd11a_pernum_lbl 30 `"30"', add
label define bd11a_pernum_lbl 31 `"31"', add
label define bd11a_pernum_lbl 32 `"32"', add
label define bd11a_pernum_lbl 33 `"33"', add
label define bd11a_pernum_lbl 34 `"34"', add
label define bd11a_pernum_lbl 35 `"35"', add
label define bd11a_pernum_lbl 36 `"36"', add
label define bd11a_pernum_lbl 37 `"37"', add
label define bd11a_pernum_lbl 38 `"38"', add
label define bd11a_pernum_lbl 39 `"39"', add
label define bd11a_pernum_lbl 40 `"40"', add
label values bd11a_pernum bd11a_pernum_lbl

label define bd11a_age_lbl 00 `"Less than 1 years old"'
label define bd11a_age_lbl 01 `"1"', add
label define bd11a_age_lbl 02 `"2"', add
label define bd11a_age_lbl 03 `"3"', add
label define bd11a_age_lbl 04 `"4"', add
label define bd11a_age_lbl 05 `"5"', add
label define bd11a_age_lbl 06 `"6"', add
label define bd11a_age_lbl 07 `"7"', add
label define bd11a_age_lbl 08 `"8"', add
label define bd11a_age_lbl 09 `"9"', add
label define bd11a_age_lbl 10 `"10"', add
label define bd11a_age_lbl 11 `"11"', add
label define bd11a_age_lbl 12 `"12"', add
label define bd11a_age_lbl 13 `"13"', add
label define bd11a_age_lbl 14 `"14"', add
label define bd11a_age_lbl 15 `"15"', add
label define bd11a_age_lbl 16 `"16"', add
label define bd11a_age_lbl 17 `"17"', add
label define bd11a_age_lbl 18 `"18"', add
label define bd11a_age_lbl 19 `"19"', add
label define bd11a_age_lbl 20 `"20"', add
label define bd11a_age_lbl 21 `"21"', add
label define bd11a_age_lbl 22 `"22"', add
label define bd11a_age_lbl 23 `"23"', add
label define bd11a_age_lbl 24 `"24"', add
label define bd11a_age_lbl 25 `"25"', add
label define bd11a_age_lbl 26 `"26"', add
label define bd11a_age_lbl 27 `"27"', add
label define bd11a_age_lbl 28 `"28"', add
label define bd11a_age_lbl 29 `"29"', add
label define bd11a_age_lbl 30 `"30"', add
label define bd11a_age_lbl 31 `"31"', add
label define bd11a_age_lbl 32 `"32"', add
label define bd11a_age_lbl 33 `"33"', add
label define bd11a_age_lbl 34 `"34"', add
label define bd11a_age_lbl 35 `"35"', add
label define bd11a_age_lbl 36 `"36"', add
label define bd11a_age_lbl 37 `"37"', add
label define bd11a_age_lbl 38 `"38"', add
label define bd11a_age_lbl 39 `"39"', add
label define bd11a_age_lbl 40 `"40"', add
label define bd11a_age_lbl 41 `"41"', add
label define bd11a_age_lbl 42 `"42"', add
label define bd11a_age_lbl 43 `"43"', add
label define bd11a_age_lbl 44 `"44"', add
label define bd11a_age_lbl 45 `"45"', add
label define bd11a_age_lbl 46 `"46"', add
label define bd11a_age_lbl 47 `"47"', add
label define bd11a_age_lbl 48 `"48"', add
label define bd11a_age_lbl 49 `"49"', add
label define bd11a_age_lbl 50 `"50"', add
label define bd11a_age_lbl 51 `"51"', add
label define bd11a_age_lbl 52 `"52"', add
label define bd11a_age_lbl 53 `"53"', add
label define bd11a_age_lbl 54 `"54"', add
label define bd11a_age_lbl 55 `"55"', add
label define bd11a_age_lbl 56 `"56"', add
label define bd11a_age_lbl 57 `"57"', add
label define bd11a_age_lbl 58 `"58"', add
label define bd11a_age_lbl 59 `"59"', add
label define bd11a_age_lbl 60 `"60"', add
label define bd11a_age_lbl 61 `"61"', add
label define bd11a_age_lbl 62 `"62"', add
label define bd11a_age_lbl 63 `"63"', add
label define bd11a_age_lbl 64 `"64"', add
label define bd11a_age_lbl 65 `"65"', add
label define bd11a_age_lbl 66 `"66"', add
label define bd11a_age_lbl 67 `"67"', add
label define bd11a_age_lbl 68 `"68"', add
label define bd11a_age_lbl 69 `"69"', add
label define bd11a_age_lbl 70 `"70"', add
label define bd11a_age_lbl 71 `"71"', add
label define bd11a_age_lbl 72 `"72"', add
label define bd11a_age_lbl 73 `"73"', add
label define bd11a_age_lbl 74 `"74"', add
label define bd11a_age_lbl 75 `"75"', add
label define bd11a_age_lbl 76 `"76"', add
label define bd11a_age_lbl 77 `"77"', add
label define bd11a_age_lbl 78 `"78"', add
label define bd11a_age_lbl 79 `"79"', add
label define bd11a_age_lbl 80 `"80"', add
label define bd11a_age_lbl 81 `"81"', add
label define bd11a_age_lbl 82 `"82"', add
label define bd11a_age_lbl 83 `"83"', add
label define bd11a_age_lbl 84 `"84"', add
label define bd11a_age_lbl 85 `"85"', add
label define bd11a_age_lbl 86 `"86"', add
label define bd11a_age_lbl 87 `"87"', add
label define bd11a_age_lbl 88 `"88"', add
label define bd11a_age_lbl 89 `"89"', add
label define bd11a_age_lbl 90 `"90"', add
label define bd11a_age_lbl 91 `"91"', add
label define bd11a_age_lbl 92 `"92"', add
label define bd11a_age_lbl 93 `"93"', add
label define bd11a_age_lbl 94 `"94"', add
label define bd11a_age_lbl 95 `"95"', add
label define bd11a_age_lbl 96 `"96"', add
label define bd11a_age_lbl 97 `"97"', add
label define bd11a_age_lbl 98 `"98"', add
label define bd11a_age_lbl 99 `"99+"', add
label values bd11a_age bd11a_age_lbl

label define bd11a_relate_lbl 1 `"Head"'
label define bd11a_relate_lbl 2 `"Spouse"', add
label define bd11a_relate_lbl 3 `"Child"', add
label define bd11a_relate_lbl 4 `"Other relative"', add
label define bd11a_relate_lbl 5 `"Non-relative"', add
label define bd11a_relate_lbl 8 `"Unknown"', add
label values bd11a_relate bd11a_relate_lbl

label define bd11a_sex_lbl 1 `"Male"'
label define bd11a_sex_lbl 2 `"Female"', add
label values bd11a_sex bd11a_sex_lbl

label define bd11a_marst_lbl 1 `"Unmarried"'
label define bd11a_marst_lbl 2 `"Married"', add
label define bd11a_marst_lbl 3 `"Widowed"', add
label define bd11a_marst_lbl 4 `"Divorced or separated"', add
label values bd11a_marst bd11a_marst_lbl

label define bd11a_religion_lbl 1 `"Muslim"'
label define bd11a_religion_lbl 2 `"Hindu"', add
label define bd11a_religion_lbl 3 `"Christian"', add
label define bd11a_religion_lbl 4 `"Buddhist"', add
label define bd11a_religion_lbl 5 `"Other"', add
label values bd11a_religion bd11a_religion_lbl

label define bd11a_disab_lbl 0 `"No disability"'
label define bd11a_disab_lbl 1 `"Speech"', add
label define bd11a_disab_lbl 2 `"Vision"', add
label define bd11a_disab_lbl 3 `"Hearing"', add
label define bd11a_disab_lbl 4 `"Physical"', add
label define bd11a_disab_lbl 5 `"Mental"', add
label define bd11a_disab_lbl 6 `"Autistic"', add
label values bd11a_disab bd11a_disab_lbl

label define bd11a_school_lbl 1 `"Yes"'
label define bd11a_school_lbl 2 `"No"', add
label values bd11a_school bd11a_school_lbl

label define bd11a_edattan_lbl 00 `"No class passed"'
label define bd11a_edattan_lbl 01 `"Class 1"', add
label define bd11a_edattan_lbl 02 `"Class 2"', add
label define bd11a_edattan_lbl 03 `"Class 3"', add
label define bd11a_edattan_lbl 04 `"Class 4"', add
label define bd11a_edattan_lbl 05 `"Class 5"', add
label define bd11a_edattan_lbl 06 `"Class 6"', add
label define bd11a_edattan_lbl 07 `"Class 7"', add
label define bd11a_edattan_lbl 08 `"Class 8"', add
label define bd11a_edattan_lbl 09 `"Class 9"', add
label define bd11a_edattan_lbl 10 `"Class SSC (secondary school certificate)"', add
label define bd11a_edattan_lbl 12 `"Class HSC (higher secondary certificate)"', add
label define bd11a_edattan_lbl 15 `"Graduation (general)"', add
label define bd11a_edattan_lbl 16 `"Graduation (honors)"', add
label define bd11a_edattan_lbl 18 `"Masters and higher"', add
label define bd11a_edattan_lbl 99 `"NIU (not in universe)"', add
label values bd11a_edattan bd11a_edattan_lbl

label define bd11a_edfield_lbl 1 `"General"'
label define bd11a_edfield_lbl 2 `"Vocational/technical"', add
label define bd11a_edfield_lbl 3 `"Religious"', add
label define bd11a_edfield_lbl 4 `"Not applicable"', add
label define bd11a_edfield_lbl 8 `"Unknown"', add
label define bd11a_edfield_lbl 9 `"NIU (not in universe)"', add
label values bd11a_edfield bd11a_edfield_lbl

label define bd11a_lit_lbl 1 `"Yes"'
label define bd11a_lit_lbl 2 `"No"', add
label define bd11a_lit_lbl 8 `"Unknown"', add
label define bd11a_lit_lbl 9 `"NIU (not in universe)"', add
label values bd11a_lit bd11a_lit_lbl

label define bd11a_empstat_lbl 1 `"Employed"'
label define bd11a_empstat_lbl 2 `"Looking for job"', add
label define bd11a_empstat_lbl 3 `"Household work"', add
label define bd11a_empstat_lbl 4 `"Do not work"', add
label define bd11a_empstat_lbl 8 `"Unknown"', add
label define bd11a_empstat_lbl 9 `"NIU (not in universe)"', add
label values bd11a_empstat bd11a_empstat_lbl

label define bd11a_ind_lbl 1 `"Agriculture"'
label define bd11a_ind_lbl 2 `"Industry"', add
label define bd11a_ind_lbl 3 `"Services"', add
label define bd11a_ind_lbl 8 `"Unknown"', add
label define bd11a_ind_lbl 9 `"NIU (not in universe)"', add
label values bd11a_ind bd11a_ind_lbl


