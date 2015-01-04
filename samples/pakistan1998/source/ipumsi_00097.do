* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                   ///
  int     cntry          1-3    ///
  int     year           4-7    ///
  int     sample         8-11   ///
  double  serial         12-21  ///
  double  pk98a_dwnum    22-29  ///
  byte    pk98a_pern     30-31  ///
  byte    pk98a_fbig     32-32  ///
  byte    pk98a_mhsp     33-33  ///
  byte    pk98a_prov     34-34  ///
  byte    pk98a_div      35-36  ///
  int     pk98a_dist     37-39  ///
  byte    pk98a_urban    40-40  ///
  byte    pk98a_rooms    41-41  ///
  byte    pk98a_tenure   42-42  ///
  byte    pk98a_conper   43-43  ///
  byte    pk98a_wall     44-44  ///
  byte    pk98a_roof     45-45  ///
  byte    pk98a_watsrci  46-46  ///
  byte    pk98a_watscro  47-47  ///
  byte    pk98a_light    48-48  ///
  byte    pk98a_fuelck   49-49  ///
  byte    pk98a_kitch    50-50  ///
  byte    pk98a_bath     51-51  ///
  byte    pk98a_toilet   52-52  ///
  byte    pk98a_tv       53-53  ///
  byte    pk98a_radio    54-54  ///
  byte    pk98a_newsp    55-55  ///
  int     pernum         56-58  ///
  float   wtper          59-66  ///
  byte    resident       67-67  ///
  byte    pk98a_pernum   68-69  ///
  byte    pk98a_relate   70-70  ///
  byte    pk98a_absent   71-71  ///
  byte    pk98a_sex      72-72  ///
  byte    pk98a_age      73-74  ///
  byte    pk98a_marst    75-75  ///
  byte    pk98a_nation   76-76  ///
  byte    pk98a_relig    77-77  ///
  byte    pk98a_lang     78-78  ///
  byte    pk98a_lit      79-79  ///
  byte    pk98a_edlev    80-81  ///
  byte    pk98a_idcard   82-82  ///
  using `"ipumsi_00097.dat"'

replace wtper         = wtper         / 100

format serial        %10.0f
format pk98a_dwnum   %8.0f
format wtper         %8.2f

label var cntry         `"Country"'
label var year          `"Year"'
label var sample        `"IPUMS sample identifier"'
label var serial        `"Household serial number"'
label var pk98a_dwnum   `"Dwelling number"'
label var pk98a_pern    `"Number of persons in household"'
label var pk98a_fbig    `"Dwelling created by splitting apart a large dwelling or household"'
label var pk98a_mhsp    `"Multi-head household was split apart"'
label var pk98a_prov    `"Province"'
label var pk98a_div     `"Division"'
label var pk98a_dist    `"District"'
label var pk98a_urban   `"Urban/rural"'
label var pk98a_rooms   `"Number of rooms"'
label var pk98a_tenure  `"Tenure"'
label var pk98a_conper  `"Initial period of construction"'
label var pk98a_wall    `"Wall material"'
label var pk98a_roof    `"Roof material"'
label var pk98a_watsrci `"Source of drinking water, inside house"'
label var pk98a_watscro `"Source of drinking water, outside house"'
label var pk98a_light   `"Source of light"'
label var pk98a_fuelck  `"Cooking fuel"'
label var pk98a_kitch   `"Kitchen"'
label var pk98a_bath    `"Bathroom"'
label var pk98a_toilet  `"Toilet"'
label var pk98a_tv      `"Source of information: TV"'
label var pk98a_radio   `"Source of information: radio"'
label var pk98a_newsp   `"Source of information: newspaper"'
label var pernum        `"Person number"'
label var wtper         `"Person weight"'
label var resident      `"Residence status: de facto, de jure"'
label var pk98a_pernum  `"Person number (within household)"'
label var pk98a_relate  `"Relationship"'
label var pk98a_absent  `"Residential status"'
label var pk98a_sex     `"Sex"'
label var pk98a_age     `"Age"'
label var pk98a_marst   `"Marital status"'
label var pk98a_nation  `"Nationality"'
label var pk98a_relig   `"Religion"'
label var pk98a_lang    `"Language"'
label var pk98a_lit     `"Literacy"'
label var pk98a_edlev   `"Level of education"'
label var pk98a_idcard  `"National ID card"'

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

label define pk98a_pern_lbl 01 `"1"'
label define pk98a_pern_lbl 02 `"2"', add
label define pk98a_pern_lbl 03 `"3"', add
label define pk98a_pern_lbl 04 `"4"', add
label define pk98a_pern_lbl 05 `"5"', add
label define pk98a_pern_lbl 06 `"6"', add
label define pk98a_pern_lbl 07 `"7"', add
label define pk98a_pern_lbl 08 `"8"', add
label define pk98a_pern_lbl 09 `"9"', add
label define pk98a_pern_lbl 10 `"10"', add
label define pk98a_pern_lbl 11 `"11"', add
label define pk98a_pern_lbl 12 `"12"', add
label define pk98a_pern_lbl 13 `"13"', add
label define pk98a_pern_lbl 14 `"14"', add
label define pk98a_pern_lbl 15 `"15"', add
label define pk98a_pern_lbl 16 `"16"', add
label define pk98a_pern_lbl 17 `"17"', add
label define pk98a_pern_lbl 18 `"18"', add
label define pk98a_pern_lbl 19 `"19"', add
label define pk98a_pern_lbl 20 `"20"', add
label define pk98a_pern_lbl 21 `"21"', add
label define pk98a_pern_lbl 22 `"22"', add
label define pk98a_pern_lbl 23 `"23"', add
label define pk98a_pern_lbl 24 `"24"', add
label define pk98a_pern_lbl 25 `"25"', add
label define pk98a_pern_lbl 26 `"26"', add
label define pk98a_pern_lbl 27 `"27"', add
label define pk98a_pern_lbl 28 `"28"', add
label define pk98a_pern_lbl 29 `"29"', add
label define pk98a_pern_lbl 30 `"30"', add
label define pk98a_pern_lbl 31 `"31"', add
label define pk98a_pern_lbl 32 `"32"', add
label define pk98a_pern_lbl 33 `"33"', add
label define pk98a_pern_lbl 34 `"34"', add
label define pk98a_pern_lbl 35 `"35"', add
label define pk98a_pern_lbl 36 `"36"', add
label define pk98a_pern_lbl 37 `"37"', add
label define pk98a_pern_lbl 38 `"38"', add
label define pk98a_pern_lbl 39 `"39"', add
label define pk98a_pern_lbl 40 `"40"', add
label define pk98a_pern_lbl 41 `"41"', add
label define pk98a_pern_lbl 42 `"42"', add
label define pk98a_pern_lbl 43 `"43"', add
label define pk98a_pern_lbl 44 `"44"', add
label define pk98a_pern_lbl 45 `"45"', add
label define pk98a_pern_lbl 46 `"46"', add
label define pk98a_pern_lbl 47 `"47"', add
label define pk98a_pern_lbl 48 `"48"', add
label define pk98a_pern_lbl 49 `"49"', add
label define pk98a_pern_lbl 50 `"50"', add
label define pk98a_pern_lbl 51 `"51"', add
label define pk98a_pern_lbl 52 `"52"', add
label define pk98a_pern_lbl 53 `"53"', add
label define pk98a_pern_lbl 54 `"54"', add
label define pk98a_pern_lbl 55 `"55"', add
label define pk98a_pern_lbl 56 `"56"', add
label define pk98a_pern_lbl 57 `"57"', add
label define pk98a_pern_lbl 58 `"58"', add
label define pk98a_pern_lbl 59 `"59"', add
label define pk98a_pern_lbl 60 `"60"', add
label values pk98a_pern pk98a_pern_lbl

label define pk98a_fbig_lbl 0 `"No problem"'
label define pk98a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define pk98a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values pk98a_fbig pk98a_fbig_lbl

label define pk98a_mhsp_lbl 0 `"No problem"'
label define pk98a_mhsp_lbl 1 `"Yes"', add
label values pk98a_mhsp pk98a_mhsp_lbl

label define pk98a_prov_lbl 1 `"North-West Frontier Province"'
label define pk98a_prov_lbl 2 `"Fata"', add
label define pk98a_prov_lbl 3 `"Punjab"', add
label define pk98a_prov_lbl 4 `"Sindh"', add
label define pk98a_prov_lbl 5 `"Baluchistan"', add
label define pk98a_prov_lbl 6 `"Islamabad"', add
label define pk98a_prov_lbl 7 `"Northern areas"', add
label define pk98a_prov_lbl 8 `"Kashmir"', add
label values pk98a_prov pk98a_prov_lbl

label define pk98a_div_lbl 11 `"Bannu"'
label define pk98a_div_lbl 12 `"D.I.Khan"', add
label define pk98a_div_lbl 13 `"Hazara"', add
label define pk98a_div_lbl 14 `"Kohat"', add
label define pk98a_div_lbl 15 `"Malakand"', add
label define pk98a_div_lbl 16 `"Mardan"', add
label define pk98a_div_lbl 17 `"Peshawar"', add
label define pk98a_div_lbl 31 `"Bahawalpur"', add
label define pk98a_div_lbl 32 `"D.G.Khan"', add
label define pk98a_div_lbl 33 `"Faisalabad"', add
label define pk98a_div_lbl 34 `"Gujranwala"', add
label define pk98a_div_lbl 35 `"Lahore"', add
label define pk98a_div_lbl 36 `"Multan"', add
label define pk98a_div_lbl 37 `"Rawalpindi"', add
label define pk98a_div_lbl 38 `"Sargodha"', add
label define pk98a_div_lbl 41 `"Hyderabad"', add
label define pk98a_div_lbl 42 `"Karachi"', add
label define pk98a_div_lbl 43 `"Larkana"', add
label define pk98a_div_lbl 44 `"Mirpur Khas"', add
label define pk98a_div_lbl 45 `"Sukkur"', add
label define pk98a_div_lbl 51 `"Kalat"', add
label define pk98a_div_lbl 52 `"Mekran"', add
label define pk98a_div_lbl 53 `"Nasirabad"', add
label define pk98a_div_lbl 54 `"Quetta"', add
label define pk98a_div_lbl 55 `"Sibi"', add
label define pk98a_div_lbl 56 `"Zhob"', add
label define pk98a_div_lbl 61 `"Islamabad"', add
label values pk98a_div pk98a_div_lbl

label define pk98a_dist_lbl 111 `"Bannu"'
label define pk98a_dist_lbl 112 `"Lakki Marwat"', add
label define pk98a_dist_lbl 121 `"D.I.Khan"', add
label define pk98a_dist_lbl 122 `"Tank"', add
label define pk98a_dist_lbl 131 `"Abbottabad"', add
label define pk98a_dist_lbl 132 `"Batagram"', add
label define pk98a_dist_lbl 133 `"Haripur"', add
label define pk98a_dist_lbl 134 `"Kohistan"', add
label define pk98a_dist_lbl 135 `"Mansehra"', add
label define pk98a_dist_lbl 141 `"Hangu"', add
label define pk98a_dist_lbl 142 `"Karak"', add
label define pk98a_dist_lbl 143 `"Kohat"', add
label define pk98a_dist_lbl 151 `"Buner"', add
label define pk98a_dist_lbl 152 `"Chitral"', add
label define pk98a_dist_lbl 153 `"Lower Dir"', add
label define pk98a_dist_lbl 154 `"Malakand Prote"', add
label define pk98a_dist_lbl 155 `"Shangla"', add
label define pk98a_dist_lbl 156 `"Swat"', add
label define pk98a_dist_lbl 157 `"Upper Dir"', add
label define pk98a_dist_lbl 161 `"Mardan"', add
label define pk98a_dist_lbl 162 `"Swabi"', add
label define pk98a_dist_lbl 171 `"Charsadda"', add
label define pk98a_dist_lbl 172 `"Nowshera"', add
label define pk98a_dist_lbl 173 `"Peshawar"', add
label define pk98a_dist_lbl 311 `"Bahawalnagar"', add
label define pk98a_dist_lbl 312 `"Bahawalpur"', add
label define pk98a_dist_lbl 313 `"Rahim Yar Khan"', add
label define pk98a_dist_lbl 321 `"Dera Ghazi Khan"', add
label define pk98a_dist_lbl 322 `"Layyah"', add
label define pk98a_dist_lbl 323 `"Muzaffargarh"', add
label define pk98a_dist_lbl 324 `"Rajanpur"', add
label define pk98a_dist_lbl 331 `"Faisalabad"', add
label define pk98a_dist_lbl 332 `"Jhang"', add
label define pk98a_dist_lbl 333 `"Toba Tek Singh"', add
label define pk98a_dist_lbl 341 `"Gujranwala"', add
label define pk98a_dist_lbl 342 `"Gujrat"', add
label define pk98a_dist_lbl 343 `"Hafizabad"', add
label define pk98a_dist_lbl 344 `"Mandi Bahauddin"', add
label define pk98a_dist_lbl 345 `"Narowal"', add
label define pk98a_dist_lbl 346 `"Sialkot"', add
label define pk98a_dist_lbl 351 `"Kasur"', add
label define pk98a_dist_lbl 352 `"Lahore"', add
label define pk98a_dist_lbl 353 `"Okara"', add
label define pk98a_dist_lbl 354 `"Sheikhupura"', add
label define pk98a_dist_lbl 361 `"Khanewal"', add
label define pk98a_dist_lbl 362 `"Lodhran"', add
label define pk98a_dist_lbl 363 `"Multan"', add
label define pk98a_dist_lbl 364 `"Pakpattan"', add
label define pk98a_dist_lbl 365 `"Sahiwal"', add
label define pk98a_dist_lbl 366 `"Vehari"', add
label define pk98a_dist_lbl 371 `"Attock"', add
label define pk98a_dist_lbl 372 `"Chakwal"', add
label define pk98a_dist_lbl 373 `"Jhelum"', add
label define pk98a_dist_lbl 374 `"Rawalpindi"', add
label define pk98a_dist_lbl 381 `"Bhakkar"', add
label define pk98a_dist_lbl 382 `"Khushab"', add
label define pk98a_dist_lbl 383 `"Mianwali"', add
label define pk98a_dist_lbl 384 `"Sargodha"', add
label define pk98a_dist_lbl 411 `"Badin"', add
label define pk98a_dist_lbl 412 `"Dadu"', add
label define pk98a_dist_lbl 413 `"Hyderabad"', add
label define pk98a_dist_lbl 414 `"Thatta"', add
label define pk98a_dist_lbl 421 `"Karachi Central"', add
label define pk98a_dist_lbl 422 `"Karachi East"', add
label define pk98a_dist_lbl 423 `"Karachi South"', add
label define pk98a_dist_lbl 424 `"Karachi West"', add
label define pk98a_dist_lbl 425 `"Malir"', add
label define pk98a_dist_lbl 431 `"Jacobabad"', add
label define pk98a_dist_lbl 432 `"Larkana"', add
label define pk98a_dist_lbl 433 `"Shikarpur"', add
label define pk98a_dist_lbl 441 `"Mirpur Khas"', add
label define pk98a_dist_lbl 442 `"Sanghar"', add
label define pk98a_dist_lbl 443 `"Tharparkar"', add
label define pk98a_dist_lbl 444 `"Umer Kot"', add
label define pk98a_dist_lbl 451 `"Ghotki"', add
label define pk98a_dist_lbl 452 `"Khairpur"', add
label define pk98a_dist_lbl 453 `"Naushahro Feroze"', add
label define pk98a_dist_lbl 454 `"Nawabshah"', add
label define pk98a_dist_lbl 455 `"Sukkur"', add
label define pk98a_dist_lbl 511 `"Awaran"', add
label define pk98a_dist_lbl 512 `"Kalat"', add
label define pk98a_dist_lbl 513 `"Kharan"', add
label define pk98a_dist_lbl 514 `"Khuzdar"', add
label define pk98a_dist_lbl 515 `"Lasbela"', add
label define pk98a_dist_lbl 516 `"Mastung"', add
label define pk98a_dist_lbl 521 `"Gwadar"', add
label define pk98a_dist_lbl 522 `"Kech"', add
label define pk98a_dist_lbl 523 `"Panjgur"', add
label define pk98a_dist_lbl 531 `"Bolan"', add
label define pk98a_dist_lbl 532 `"Jaffarabad"', add
label define pk98a_dist_lbl 533 `"Jhal Magsi"', add
label define pk98a_dist_lbl 534 `"Nasirabad"', add
label define pk98a_dist_lbl 541 `"Chagai"', add
label define pk98a_dist_lbl 542 `"Killa Abdullah"', add
label define pk98a_dist_lbl 543 `"Pishin"', add
label define pk98a_dist_lbl 544 `"Quetta"', add
label define pk98a_dist_lbl 551 `"Dera Bugti"', add
label define pk98a_dist_lbl 552 `"Kohlu"', add
label define pk98a_dist_lbl 553 `"Sibi"', add
label define pk98a_dist_lbl 554 `"Ziarat"', add
label define pk98a_dist_lbl 561 `"Barkhan"', add
label define pk98a_dist_lbl 562 `"Killa Saifullah"', add
label define pk98a_dist_lbl 563 `"Loralai"', add
label define pk98a_dist_lbl 564 `"Musakhel"', add
label define pk98a_dist_lbl 565 `"Zhob"', add
label define pk98a_dist_lbl 611 `"Islamabad"', add
label values pk98a_dist pk98a_dist_lbl

label define pk98a_urban_lbl 1 `"Rural"'
label define pk98a_urban_lbl 2 `"Urban"', add
label values pk98a_urban pk98a_urban_lbl

label define pk98a_rooms_lbl 1 `"1"'
label define pk98a_rooms_lbl 2 `"2"', add
label define pk98a_rooms_lbl 3 `"3"', add
label define pk98a_rooms_lbl 4 `"4"', add
label define pk98a_rooms_lbl 5 `"5"', add
label define pk98a_rooms_lbl 6 `"6 +"', add
label values pk98a_rooms pk98a_rooms_lbl

label define pk98a_tenure_lbl 1 `"Owned"'
label define pk98a_tenure_lbl 2 `"Rented"', add
label define pk98a_tenure_lbl 3 `"Rent-free"', add
label values pk98a_tenure pk98a_tenure_lbl

label define pk98a_conper_lbl 1 `"Under construction"'
label define pk98a_conper_lbl 2 `"Less than 5 years"', add
label define pk98a_conper_lbl 3 `"5 to 10 years"', add
label define pk98a_conper_lbl 4 `"More than 10 years"', add
label define pk98a_conper_lbl 9 `"NIU (not in universe)"', add
label values pk98a_conper pk98a_conper_lbl

label define pk98a_wall_lbl 1 `"Baked bricks, block, stone"'
label define pk98a_wall_lbl 2 `"Unbaked bricks, mud"', add
label define pk98a_wall_lbl 3 `"Wood, bamboo"', add
label define pk98a_wall_lbl 4 `"Other"', add
label values pk98a_wall pk98a_wall_lbl

label define pk98a_roof_lbl 1 `"RCC/RBC"'
label define pk98a_roof_lbl 2 `"Cement, iron sheet"', add
label define pk98a_roof_lbl 3 `"Wood, bamboo"', add
label define pk98a_roof_lbl 4 `"Other"', add
label values pk98a_roof pk98a_roof_lbl

label define pk98a_watsrci_lbl 1 `"Piped water"'
label define pk98a_watsrci_lbl 2 `"Hand pump"', add
label define pk98a_watsrci_lbl 3 `"Well"', add
label define pk98a_watsrci_lbl 9 `"NIU (not in universe)"', add
label values pk98a_watsrci pk98a_watsrci_lbl

label define pk98a_watscro_lbl 1 `"Piped water"'
label define pk98a_watscro_lbl 2 `"Hand pump"', add
label define pk98a_watscro_lbl 3 `"Well"', add
label define pk98a_watscro_lbl 4 `"Pond"', add
label define pk98a_watscro_lbl 5 `"Other"', add
label define pk98a_watscro_lbl 9 `"NIU (not in universe)"', add
label values pk98a_watscro pk98a_watscro_lbl

label define pk98a_light_lbl 1 `"Electricity"'
label define pk98a_light_lbl 2 `"Kerosene oil"', add
label define pk98a_light_lbl 3 `"Other"', add
label values pk98a_light pk98a_light_lbl

label define pk98a_fuelck_lbl 1 `"Wood"'
label define pk98a_fuelck_lbl 2 `"Kerosene oil"', add
label define pk98a_fuelck_lbl 3 `"Gas"', add
label define pk98a_fuelck_lbl 4 `"Other"', add
label values pk98a_fuelck pk98a_fuelck_lbl

label define pk98a_kitch_lbl 1 `"Separate"'
label define pk98a_kitch_lbl 2 `"Shared"', add
label define pk98a_kitch_lbl 3 `"None"', add
label values pk98a_kitch pk98a_kitch_lbl

label define pk98a_bath_lbl 1 `"Separate"'
label define pk98a_bath_lbl 2 `"Shared"', add
label define pk98a_bath_lbl 3 `"None"', add
label values pk98a_bath pk98a_bath_lbl

label define pk98a_toilet_lbl 1 `"Separate"'
label define pk98a_toilet_lbl 2 `"Shared"', add
label define pk98a_toilet_lbl 3 `"None"', add
label values pk98a_toilet pk98a_toilet_lbl

label define pk98a_tv_lbl 1 `"Yes"'
label define pk98a_tv_lbl 2 `"No"', add
label values pk98a_tv pk98a_tv_lbl

label define pk98a_radio_lbl 1 `"Yes"'
label define pk98a_radio_lbl 2 `"No"', add
label values pk98a_radio pk98a_radio_lbl

label define pk98a_newsp_lbl 1 `"Yes"'
label define pk98a_newsp_lbl 2 `"No"', add
label values pk98a_newsp pk98a_newsp_lbl

label define resident_lbl 1 `"Present resident"'
label define resident_lbl 2 `"Absent resident"', add
label define resident_lbl 3 `"Visitor/non-resident"', add
label define resident_lbl 4 `"De facto population (present persons)"', add
label define resident_lbl 9 `"Unknown/missing"', add
label values resident resident_lbl

label define pk98a_pernum_lbl 00 `"Household record"'
label define pk98a_pernum_lbl 01 `"1"', add
label define pk98a_pernum_lbl 02 `"2"', add
label define pk98a_pernum_lbl 03 `"3"', add
label define pk98a_pernum_lbl 04 `"4"', add
label define pk98a_pernum_lbl 05 `"5"', add
label define pk98a_pernum_lbl 06 `"6"', add
label define pk98a_pernum_lbl 07 `"7"', add
label define pk98a_pernum_lbl 08 `"8"', add
label define pk98a_pernum_lbl 09 `"9"', add
label define pk98a_pernum_lbl 10 `"10"', add
label define pk98a_pernum_lbl 11 `"11"', add
label define pk98a_pernum_lbl 12 `"12"', add
label define pk98a_pernum_lbl 13 `"13"', add
label define pk98a_pernum_lbl 14 `"14"', add
label define pk98a_pernum_lbl 15 `"15"', add
label define pk98a_pernum_lbl 16 `"16"', add
label define pk98a_pernum_lbl 17 `"17"', add
label define pk98a_pernum_lbl 18 `"18"', add
label define pk98a_pernum_lbl 19 `"19"', add
label define pk98a_pernum_lbl 20 `"20"', add
label define pk98a_pernum_lbl 21 `"21"', add
label define pk98a_pernum_lbl 22 `"22"', add
label define pk98a_pernum_lbl 23 `"23"', add
label define pk98a_pernum_lbl 24 `"24"', add
label define pk98a_pernum_lbl 25 `"25"', add
label define pk98a_pernum_lbl 26 `"26"', add
label define pk98a_pernum_lbl 27 `"27"', add
label define pk98a_pernum_lbl 28 `"28"', add
label define pk98a_pernum_lbl 29 `"29"', add
label define pk98a_pernum_lbl 30 `"30"', add
label define pk98a_pernum_lbl 31 `"31"', add
label define pk98a_pernum_lbl 32 `"32"', add
label define pk98a_pernum_lbl 33 `"33"', add
label define pk98a_pernum_lbl 34 `"34"', add
label define pk98a_pernum_lbl 35 `"35"', add
label define pk98a_pernum_lbl 36 `"36"', add
label define pk98a_pernum_lbl 37 `"37"', add
label define pk98a_pernum_lbl 38 `"38"', add
label define pk98a_pernum_lbl 39 `"39"', add
label define pk98a_pernum_lbl 40 `"40"', add
label define pk98a_pernum_lbl 41 `"41"', add
label define pk98a_pernum_lbl 42 `"42"', add
label define pk98a_pernum_lbl 43 `"43"', add
label define pk98a_pernum_lbl 44 `"44"', add
label define pk98a_pernum_lbl 45 `"45"', add
label define pk98a_pernum_lbl 46 `"46"', add
label define pk98a_pernum_lbl 47 `"47"', add
label define pk98a_pernum_lbl 48 `"48"', add
label define pk98a_pernum_lbl 49 `"49"', add
label define pk98a_pernum_lbl 50 `"50"', add
label define pk98a_pernum_lbl 51 `"51"', add
label define pk98a_pernum_lbl 52 `"52"', add
label define pk98a_pernum_lbl 53 `"53"', add
label define pk98a_pernum_lbl 54 `"54"', add
label define pk98a_pernum_lbl 55 `"55"', add
label define pk98a_pernum_lbl 56 `"56"', add
label define pk98a_pernum_lbl 57 `"57"', add
label define pk98a_pernum_lbl 58 `"58"', add
label define pk98a_pernum_lbl 59 `"59"', add
label define pk98a_pernum_lbl 60 `"60"', add
label values pk98a_pernum pk98a_pernum_lbl

label define pk98a_relate_lbl 1 `"Head"'
label define pk98a_relate_lbl 2 `"Spouse"', add
label define pk98a_relate_lbl 3 `"Son, daughter"', add
label define pk98a_relate_lbl 4 `"Other relatives"', add
label define pk98a_relate_lbl 5 `"Not related"', add
label values pk98a_relate pk98a_relate_lbl

label define pk98a_absent_lbl 1 `"Present"'
label define pk98a_absent_lbl 2 `"Absent"', add
label define pk98a_absent_lbl 3 `"Guest"', add
label values pk98a_absent pk98a_absent_lbl

label define pk98a_sex_lbl 1 `"Male"'
label define pk98a_sex_lbl 2 `"Female"', add
label values pk98a_sex pk98a_sex_lbl

label define pk98a_age_lbl 00 `"0"'
label define pk98a_age_lbl 01 `"1"', add
label define pk98a_age_lbl 02 `"2"', add
label define pk98a_age_lbl 03 `"3"', add
label define pk98a_age_lbl 04 `"4"', add
label define pk98a_age_lbl 05 `"5"', add
label define pk98a_age_lbl 06 `"6"', add
label define pk98a_age_lbl 07 `"7"', add
label define pk98a_age_lbl 08 `"8"', add
label define pk98a_age_lbl 09 `"9"', add
label define pk98a_age_lbl 10 `"10"', add
label define pk98a_age_lbl 11 `"11"', add
label define pk98a_age_lbl 12 `"12"', add
label define pk98a_age_lbl 13 `"13"', add
label define pk98a_age_lbl 14 `"14"', add
label define pk98a_age_lbl 15 `"15"', add
label define pk98a_age_lbl 16 `"16"', add
label define pk98a_age_lbl 17 `"17"', add
label define pk98a_age_lbl 18 `"18"', add
label define pk98a_age_lbl 19 `"19"', add
label define pk98a_age_lbl 20 `"20"', add
label define pk98a_age_lbl 21 `"21"', add
label define pk98a_age_lbl 22 `"22"', add
label define pk98a_age_lbl 23 `"23"', add
label define pk98a_age_lbl 24 `"24"', add
label define pk98a_age_lbl 25 `"25"', add
label define pk98a_age_lbl 26 `"26"', add
label define pk98a_age_lbl 27 `"27"', add
label define pk98a_age_lbl 28 `"28"', add
label define pk98a_age_lbl 29 `"29"', add
label define pk98a_age_lbl 30 `"30"', add
label define pk98a_age_lbl 31 `"31"', add
label define pk98a_age_lbl 32 `"32"', add
label define pk98a_age_lbl 33 `"33"', add
label define pk98a_age_lbl 34 `"34"', add
label define pk98a_age_lbl 35 `"35"', add
label define pk98a_age_lbl 36 `"36"', add
label define pk98a_age_lbl 37 `"37"', add
label define pk98a_age_lbl 38 `"38"', add
label define pk98a_age_lbl 39 `"39"', add
label define pk98a_age_lbl 40 `"40"', add
label define pk98a_age_lbl 41 `"41"', add
label define pk98a_age_lbl 42 `"42"', add
label define pk98a_age_lbl 43 `"43"', add
label define pk98a_age_lbl 44 `"44"', add
label define pk98a_age_lbl 45 `"45"', add
label define pk98a_age_lbl 46 `"46"', add
label define pk98a_age_lbl 47 `"47"', add
label define pk98a_age_lbl 48 `"48"', add
label define pk98a_age_lbl 49 `"49"', add
label define pk98a_age_lbl 50 `"50"', add
label define pk98a_age_lbl 51 `"51"', add
label define pk98a_age_lbl 52 `"52"', add
label define pk98a_age_lbl 53 `"53"', add
label define pk98a_age_lbl 54 `"54"', add
label define pk98a_age_lbl 55 `"55"', add
label define pk98a_age_lbl 56 `"56"', add
label define pk98a_age_lbl 57 `"57"', add
label define pk98a_age_lbl 58 `"58"', add
label define pk98a_age_lbl 59 `"59"', add
label define pk98a_age_lbl 60 `"60"', add
label define pk98a_age_lbl 61 `"61"', add
label define pk98a_age_lbl 62 `"62"', add
label define pk98a_age_lbl 63 `"63"', add
label define pk98a_age_lbl 64 `"64"', add
label define pk98a_age_lbl 65 `"65"', add
label define pk98a_age_lbl 66 `"66"', add
label define pk98a_age_lbl 67 `"67"', add
label define pk98a_age_lbl 68 `"68"', add
label define pk98a_age_lbl 69 `"69"', add
label define pk98a_age_lbl 70 `"70"', add
label define pk98a_age_lbl 71 `"71"', add
label define pk98a_age_lbl 72 `"72"', add
label define pk98a_age_lbl 73 `"73"', add
label define pk98a_age_lbl 74 `"74"', add
label define pk98a_age_lbl 75 `"75"', add
label define pk98a_age_lbl 76 `"76"', add
label define pk98a_age_lbl 77 `"77"', add
label define pk98a_age_lbl 78 `"78"', add
label define pk98a_age_lbl 79 `"79"', add
label define pk98a_age_lbl 80 `"80"', add
label define pk98a_age_lbl 81 `"81"', add
label define pk98a_age_lbl 82 `"82"', add
label define pk98a_age_lbl 83 `"83"', add
label define pk98a_age_lbl 84 `"84"', add
label define pk98a_age_lbl 85 `"85"', add
label define pk98a_age_lbl 86 `"86"', add
label define pk98a_age_lbl 87 `"87"', add
label define pk98a_age_lbl 88 `"88"', add
label define pk98a_age_lbl 89 `"89"', add
label define pk98a_age_lbl 90 `"90"', add
label define pk98a_age_lbl 91 `"91"', add
label define pk98a_age_lbl 92 `"92"', add
label define pk98a_age_lbl 93 `"93"', add
label define pk98a_age_lbl 94 `"94"', add
label define pk98a_age_lbl 95 `"95"', add
label define pk98a_age_lbl 96 `"96"', add
label define pk98a_age_lbl 97 `"97"', add
label define pk98a_age_lbl 98 `"98"', add
label define pk98a_age_lbl 99 `"99+"', add
label values pk98a_age pk98a_age_lbl

label define pk98a_marst_lbl 1 `"Single"'
label define pk98a_marst_lbl 2 `"Married"', add
label define pk98a_marst_lbl 3 `"Widowed"', add
label define pk98a_marst_lbl 4 `"Divorced"', add
label values pk98a_marst pk98a_marst_lbl

label define pk98a_nation_lbl 1 `"Pakistani"'
label define pk98a_nation_lbl 2 `"Other"', add
label values pk98a_nation pk98a_nation_lbl

label define pk98a_relig_lbl 1 `"Muslim"'
label define pk98a_relig_lbl 2 `"Christian"', add
label define pk98a_relig_lbl 3 `"Hindu"', add
label define pk98a_relig_lbl 4 `"Ahmadi"', add
label define pk98a_relig_lbl 5 `"Scheduled caste"', add
label define pk98a_relig_lbl 6 `"Other"', add
label values pk98a_relig pk98a_relig_lbl

label define pk98a_lang_lbl 1 `"Urdu"'
label define pk98a_lang_lbl 2 `"Punjabi"', add
label define pk98a_lang_lbl 3 `"Sindhi"', add
label define pk98a_lang_lbl 4 `"Pushto"', add
label define pk98a_lang_lbl 5 `"Baluchi/Balochi"', add
label define pk98a_lang_lbl 6 `"Other"', add
label define pk98a_lang_lbl 9 `"Unknown"', add
label values pk98a_lang pk98a_lang_lbl

label define pk98a_lit_lbl 1 `"Yes"'
label define pk98a_lit_lbl 2 `"No"', add
label define pk98a_lit_lbl 9 `"NIU (not in universe)"', add
label values pk98a_lit pk98a_lit_lbl

label define pk98a_edlev_lbl 00 `"Never attended"'
label define pk98a_edlev_lbl 01 `"Less than primary"', add
label define pk98a_edlev_lbl 02 `"Primary"', add
label define pk98a_edlev_lbl 03 `"Middle"', add
label define pk98a_edlev_lbl 04 `"Matric"', add
label define pk98a_edlev_lbl 05 `"Intermediate"', add
label define pk98a_edlev_lbl 06 `"B.A./B.Sc. or equivalent"', add
label define pk98a_edlev_lbl 07 `"M.A./M.Sc. equivalent or above"', add
label define pk98a_edlev_lbl 08 `"Diploma, certificate"', add
label define pk98a_edlev_lbl 09 `"Other"', add
label define pk98a_edlev_lbl 99 `"NIU (not in universe)"', add
label values pk98a_edlev pk98a_edlev_lbl

label define pk98a_idcard_lbl 1 `"Yes"'
label define pk98a_idcard_lbl 2 `"No"', add
label define pk98a_idcard_lbl 8 `"Unknown"', add
label define pk98a_idcard_lbl 9 `"NIU (not in universe)"', add
label values pk98a_idcard pk98a_idcard_lbl


