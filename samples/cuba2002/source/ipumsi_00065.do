* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    cu02a_dwnum     22-28    ///
  byte    cu02a_hhnum     29-29    ///
  byte    cu02a_hhn       30-30    ///
  byte    cu02a_pernd     31-32    ///
  byte    cu02a_pern      33-34    ///
  byte    cu02a_fbig      35-35    ///
  byte    cu02a_prov      36-37    ///
  byte    cu02a_collect   38-38    ///
  byte    cu02a_dwtype    39-39    ///
  byte    cu02a_hhstat    40-40    ///
  byte    cu02a_builtyr   41-42    ///
  byte    cu02a_rooms     43-44    ///
  byte    cu02a_roomss    45-45    ///
  byte    cu02a_roomsb    46-47    ///
  byte    cu02a_kitch     48-48    ///
  byte    cu02a_watfac    49-49    ///
  byte    cu02a_watsup    50-50    ///
  byte    cu02a_watwast   51-51    ///
  byte    cu02a_bath      52-52    ///
  byte    cu02a_toilet    53-53    ///
  byte    cu02a_toiletl   54-54    ///
  byte    cu02a_power     55-55    ///
  int     pernum          56-58    ///
  float   wtper           59-66    ///
  byte    cu02a_pernum    67-68    ///
  byte    cu02a_relate    69-69    ///
  byte    cu02a_parloco   70-71    ///
  byte    cu02a_sploco    72-73    ///
  byte    cu02a_sex       74-74    ///
  int     cu02a_age       75-77    ///
  byte    cu02a_race      78-78    ///
  byte    cu02a_bplresid  79-79    ///
  int     cu02a_bplctry   80-82    ///
  int     cu02a_bplprov   83-85    ///
  int     cu02a_bplmuni   86-89    ///
  byte    cu02a_bornhere  90-90    ///
  int     cu02a_resctry   91-93    ///
  int     cu02a_resprov   94-96    ///
  int     cu02a_resmuni   97-100   ///
  byte    cu02a_resdur    101-102  ///
  byte    cu02a_edlev     103-103  ///
  byte    cu02a_degree    104-105  ///
  byte    cu02a_marst     106-106  ///
  byte    cu02a_empstat   107-108  ///
  int     cu02a_occ       109-111  ///
  byte    cu02a_ind       112-113  ///
  using `"ipumsi_00065.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var cu02a_dwnum    `"Dwelling number"'
label var cu02a_hhnum    `"Household number (within dwelling)"'
label var cu02a_hhn      `"Number of households in dwelling"'
label var cu02a_pernd    `"Number of persons in dwelling"'
label var cu02a_pern     `"Number of persons in household"'
label var cu02a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var cu02a_prov     `"Province"'
label var cu02a_collect  `"Place of accommodation"'
label var cu02a_dwtype   `"Type of dwelling"'
label var cu02a_hhstat   `"Housing status"'
label var cu02a_builtyr  `"Date of construction"'
label var cu02a_rooms    `"Rooms"'
label var cu02a_roomss   `"Rooms used for sleeping"'
label var cu02a_roomsb   `"Bedrooms"'
label var cu02a_kitch    `"Place to cook"'
label var cu02a_watfac   `"Water facilities"'
label var cu02a_watsup   `"Water supply"'
label var cu02a_watwast  `"Waste water system"'
label var cu02a_bath     `"Presence of bathroom (for bathing)"'
label var cu02a_toilet   `"Presence of toilet"'
label var cu02a_toiletl  `"Location of toilet facilities"'
label var cu02a_power    `"Power supply for lighting"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var cu02a_pernum   `"Person number (within household)"'
label var cu02a_relate   `"Relationship"'
label var cu02a_parloco  `"Position of parent in the household"'
label var cu02a_sploco   `"Position of spouse in the household"'
label var cu02a_sex      `"Sex"'
label var cu02a_age      `"Age"'
label var cu02a_race     `"Skin color"'
label var cu02a_bplresid `"Birth place"'
label var cu02a_bplctry  `"Country of birth"'
label var cu02a_bplprov  `"Province of birth"'
label var cu02a_bplmuni  `"Municipality or country of birth"'
label var cu02a_bornhere `"Have always lived in this municipality"'
label var cu02a_resctry  `"Country of previous residence"'
label var cu02a_resprov  `"Province of previous residence"'
label var cu02a_resmuni  `"Municipality of previous residence"'
label var cu02a_resdur   `"Length of stay in this municipality"'
label var cu02a_edlev    `"Education level"'
label var cu02a_degree   `"Degree"'
label var cu02a_marst    `"Marital status"'
label var cu02a_empstat  `"Job status"'
label var cu02a_occ      `"Occupation"'
label var cu02a_ind      `"Industry"'

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

label define cu02a_hhnum_lbl 1 `"1"'
label define cu02a_hhnum_lbl 2 `"2"', add
label define cu02a_hhnum_lbl 3 `"3"', add
label define cu02a_hhnum_lbl 4 `"4"', add
label define cu02a_hhnum_lbl 5 `"5"', add
label define cu02a_hhnum_lbl 6 `"6"', add
label define cu02a_hhnum_lbl 7 `"7"', add
label define cu02a_hhnum_lbl 8 `"8"', add
label define cu02a_hhnum_lbl 9 `"9"', add
label values cu02a_hhnum cu02a_hhnum_lbl

label define cu02a_hhn_lbl 1 `"1"'
label define cu02a_hhn_lbl 2 `"2"', add
label define cu02a_hhn_lbl 3 `"3"', add
label define cu02a_hhn_lbl 4 `"4"', add
label define cu02a_hhn_lbl 5 `"5"', add
label define cu02a_hhn_lbl 6 `"6"', add
label define cu02a_hhn_lbl 7 `"7"', add
label define cu02a_hhn_lbl 8 `"8"', add
label define cu02a_hhn_lbl 9 `"9"', add
label values cu02a_hhn cu02a_hhn_lbl

label define cu02a_pernd_lbl 00 `"0"'
label define cu02a_pernd_lbl 01 `"1"', add
label define cu02a_pernd_lbl 02 `"2"', add
label define cu02a_pernd_lbl 03 `"3"', add
label define cu02a_pernd_lbl 04 `"4"', add
label define cu02a_pernd_lbl 05 `"5"', add
label define cu02a_pernd_lbl 06 `"6"', add
label define cu02a_pernd_lbl 07 `"7"', add
label define cu02a_pernd_lbl 08 `"8"', add
label define cu02a_pernd_lbl 09 `"9"', add
label define cu02a_pernd_lbl 10 `"10"', add
label define cu02a_pernd_lbl 11 `"11"', add
label define cu02a_pernd_lbl 12 `"12"', add
label define cu02a_pernd_lbl 13 `"13"', add
label define cu02a_pernd_lbl 14 `"14"', add
label define cu02a_pernd_lbl 15 `"15"', add
label define cu02a_pernd_lbl 16 `"16"', add
label define cu02a_pernd_lbl 17 `"17"', add
label define cu02a_pernd_lbl 18 `"18"', add
label define cu02a_pernd_lbl 19 `"19"', add
label define cu02a_pernd_lbl 20 `"20"', add
label define cu02a_pernd_lbl 21 `"21"', add
label define cu02a_pernd_lbl 22 `"22"', add
label define cu02a_pernd_lbl 23 `"23"', add
label define cu02a_pernd_lbl 24 `"24"', add
label define cu02a_pernd_lbl 25 `"25"', add
label define cu02a_pernd_lbl 26 `"26"', add
label define cu02a_pernd_lbl 27 `"27"', add
label values cu02a_pernd cu02a_pernd_lbl

label define cu02a_pern_lbl 00 `"0"'
label define cu02a_pern_lbl 01 `"1"', add
label define cu02a_pern_lbl 02 `"2"', add
label define cu02a_pern_lbl 03 `"3"', add
label define cu02a_pern_lbl 04 `"4"', add
label define cu02a_pern_lbl 05 `"5"', add
label define cu02a_pern_lbl 06 `"6"', add
label define cu02a_pern_lbl 07 `"7"', add
label define cu02a_pern_lbl 08 `"8"', add
label define cu02a_pern_lbl 09 `"9"', add
label define cu02a_pern_lbl 10 `"10"', add
label define cu02a_pern_lbl 11 `"11"', add
label define cu02a_pern_lbl 12 `"12"', add
label define cu02a_pern_lbl 13 `"13"', add
label define cu02a_pern_lbl 14 `"14"', add
label define cu02a_pern_lbl 15 `"15"', add
label define cu02a_pern_lbl 16 `"16"', add
label define cu02a_pern_lbl 17 `"17"', add
label define cu02a_pern_lbl 18 `"18"', add
label define cu02a_pern_lbl 19 `"19"', add
label define cu02a_pern_lbl 20 `"20"', add
label define cu02a_pern_lbl 21 `"21"', add
label define cu02a_pern_lbl 22 `"22"', add
label define cu02a_pern_lbl 23 `"23"', add
label define cu02a_pern_lbl 24 `"24"', add
label define cu02a_pern_lbl 25 `"25"', add
label define cu02a_pern_lbl 26 `"26"', add
label define cu02a_pern_lbl 27 `"27"', add
label values cu02a_pern cu02a_pern_lbl

label define cu02a_fbig_lbl 0 `"No problem"'
label define cu02a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define cu02a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values cu02a_fbig cu02a_fbig_lbl

label define cu02a_prov_lbl 01 `"Pinar del Rio"'
label define cu02a_prov_lbl 02 `"La Habana"', add
label define cu02a_prov_lbl 03 `"Ciudad de la Habana"', add
label define cu02a_prov_lbl 04 `"Matanzas"', add
label define cu02a_prov_lbl 05 `"Villa Clara"', add
label define cu02a_prov_lbl 06 `"Cienfuegos"', add
label define cu02a_prov_lbl 07 `"Sancti Spiritus"', add
label define cu02a_prov_lbl 08 `"Ciego de Avila"', add
label define cu02a_prov_lbl 09 `"Camaguey"', add
label define cu02a_prov_lbl 10 `"Las Tunas"', add
label define cu02a_prov_lbl 11 `"Holguin"', add
label define cu02a_prov_lbl 12 `"Granma"', add
label define cu02a_prov_lbl 13 `"Santiago de Cuba"', add
label define cu02a_prov_lbl 14 `"Guantanamo"', add
label define cu02a_prov_lbl 99 `"Isla de la Juventud"', add
label values cu02a_prov cu02a_prov_lbl

label define cu02a_collect_lbl 1 `"Individual dwellings"'
label define cu02a_collect_lbl 2 `"Work premises"', add
label define cu02a_collect_lbl 3 `"Collectivities"', add
label values cu02a_collect cu02a_collect_lbl

label define cu02a_dwtype_lbl 1 `"House"'
label define cu02a_dwtype_lbl 2 `"Apartment"', add
label define cu02a_dwtype_lbl 3 `"Other types"', add
label define cu02a_dwtype_lbl 8 `"Unknown"', add
label define cu02a_dwtype_lbl 9 `"NIU (not in universe)"', add
label values cu02a_dwtype cu02a_dwtype_lbl

label define cu02a_hhstat_lbl 1 `"Permanent residents"'
label define cu02a_hhstat_lbl 2 `"Temporary residents"', add
label define cu02a_hhstat_lbl 3 `"Occupied seasonally"', add
label define cu02a_hhstat_lbl 4 `"Closed (occupants absent)"', add
label define cu02a_hhstat_lbl 5 `"Unoccupied"', add
label define cu02a_hhstat_lbl 8 `"Unknown"', add
label define cu02a_hhstat_lbl 9 `"NIU (not in universe)"', add
label values cu02a_hhstat cu02a_hhstat_lbl

label define cu02a_builtyr_lbl 01 `"Before 1920"'
label define cu02a_builtyr_lbl 02 `"From 1920 to 1933"', add
label define cu02a_builtyr_lbl 03 `"From 1934 to 1945"', add
label define cu02a_builtyr_lbl 04 `"From 1946 to 1958"', add
label define cu02a_builtyr_lbl 05 `"From 1959 to 1970"', add
label define cu02a_builtyr_lbl 06 `"From 1971 to 1981"', add
label define cu02a_builtyr_lbl 07 `"From 1982 to 1989"', add
label define cu02a_builtyr_lbl 08 `"From 1990 to present"', add
label define cu02a_builtyr_lbl 97 `"Does not know"', add
label define cu02a_builtyr_lbl 98 `"Unknown"', add
label define cu02a_builtyr_lbl 99 `"NIU (not in universe)"', add
label values cu02a_builtyr cu02a_builtyr_lbl

label define cu02a_rooms_lbl 01 `"1"'
label define cu02a_rooms_lbl 02 `"2"', add
label define cu02a_rooms_lbl 03 `"3"', add
label define cu02a_rooms_lbl 04 `"4"', add
label define cu02a_rooms_lbl 05 `"5"', add
label define cu02a_rooms_lbl 06 `"6"', add
label define cu02a_rooms_lbl 07 `"7"', add
label define cu02a_rooms_lbl 08 `"8"', add
label define cu02a_rooms_lbl 09 `"9"', add
label define cu02a_rooms_lbl 10 `"10"', add
label define cu02a_rooms_lbl 11 `"11"', add
label define cu02a_rooms_lbl 12 `"12"', add
label define cu02a_rooms_lbl 13 `"13"', add
label define cu02a_rooms_lbl 14 `"14+"', add
label define cu02a_rooms_lbl 98 `"Unknown"', add
label define cu02a_rooms_lbl 99 `"NIU (not in universe)"', add
label values cu02a_rooms cu02a_rooms_lbl

label define cu02a_roomss_lbl 1 `"1"'
label define cu02a_roomss_lbl 2 `"2"', add
label define cu02a_roomss_lbl 3 `"3"', add
label define cu02a_roomss_lbl 4 `"4+"', add
label define cu02a_roomss_lbl 8 `"Unknown"', add
label define cu02a_roomss_lbl 9 `"NIU (not in universe)"', add
label values cu02a_roomss cu02a_roomss_lbl

label define cu02a_roomsb_lbl 00 `"None"'
label define cu02a_roomsb_lbl 01 `"1"', add
label define cu02a_roomsb_lbl 02 `"2"', add
label define cu02a_roomsb_lbl 03 `"3"', add
label define cu02a_roomsb_lbl 04 `"4"', add
label define cu02a_roomsb_lbl 05 `"5"', add
label define cu02a_roomsb_lbl 06 `"6"', add
label define cu02a_roomsb_lbl 07 `"7"', add
label define cu02a_roomsb_lbl 08 `"8+"', add
label define cu02a_roomsb_lbl 98 `"Unknown"', add
label define cu02a_roomsb_lbl 99 `"NIU (not in universe)"', add
label values cu02a_roomsb cu02a_roomsb_lbl

label define cu02a_kitch_lbl 1 `"For this dwelling only"'
label define cu02a_kitch_lbl 2 `"Used by several household"', add
label define cu02a_kitch_lbl 3 `"Does not have"', add
label define cu02a_kitch_lbl 8 `"Unknown"', add
label define cu02a_kitch_lbl 9 `"NIU (not in universe)"', add
label values cu02a_kitch cu02a_kitch_lbl

label define cu02a_watfac_lbl 1 `"Within dwelling"'
label define cu02a_watfac_lbl 2 `"Outside of dwelling"', add
label define cu02a_watfac_lbl 3 `"Doesn't have"', add
label define cu02a_watfac_lbl 8 `"Unknown"', add
label define cu02a_watfac_lbl 9 `"NIU (not in universe)"', add
label values cu02a_watfac cu02a_watfac_lbl

label define cu02a_watsup_lbl 1 `"Pipes"'
label define cu02a_watsup_lbl 3 `"Transported by other means"', add
label define cu02a_watsup_lbl 8 `"Unknown"', add
label define cu02a_watsup_lbl 9 `"NIU (not in universe)"', add
label values cu02a_watsup cu02a_watsup_lbl

label define cu02a_watwast_lbl 1 `"Sewerage system"'
label define cu02a_watwast_lbl 2 `"Pit or septic tank"', add
label define cu02a_watwast_lbl 3 `"Other"', add
label define cu02a_watwast_lbl 8 `"Unknown"', add
label define cu02a_watwast_lbl 9 `"NIU (not in universe)"', add
label values cu02a_watwast cu02a_watwast_lbl

label define cu02a_bath_lbl 1 `"For this dwelling only"'
label define cu02a_bath_lbl 2 `"Shared among several"', add
label define cu02a_bath_lbl 3 `"Does not have"', add
label define cu02a_bath_lbl 8 `"Unknown"', add
label define cu02a_bath_lbl 9 `"NIU (not in universe)"', add
label values cu02a_bath cu02a_bath_lbl

label define cu02a_toilet_lbl 1 `"For this dwelling only"'
label define cu02a_toilet_lbl 2 `"Shared among several dwellings"', add
label define cu02a_toilet_lbl 3 `"Does not have"', add
label define cu02a_toilet_lbl 8 `"Unknown"', add
label define cu02a_toilet_lbl 9 `"NIU (not in universe)"', add
label values cu02a_toilet cu02a_toilet_lbl

label define cu02a_toiletl_lbl 1 `"Inside dwelling"'
label define cu02a_toiletl_lbl 3 `"Outside dwelling"', add
label define cu02a_toiletl_lbl 9 `"NIU (not in universe)"', add
label values cu02a_toiletl cu02a_toiletl_lbl

label define cu02a_power_lbl 0 `"NIU (not in universe)"'
label define cu02a_power_lbl 1 `"Power company"', add
label define cu02a_power_lbl 2 `"Industrial plant"', add
label define cu02a_power_lbl 3 `"Kerosene"', add
label define cu02a_power_lbl 4 `"Mini hydroelectric"', add
label define cu02a_power_lbl 5 `"Solar panels"', add
label define cu02a_power_lbl 7 `"Own electrical plant"', add
label define cu02a_power_lbl 8 `"Other"', add
label define cu02a_power_lbl 9 `"Unknown"', add
label values cu02a_power cu02a_power_lbl

label define cu02a_pernum_lbl 00 `"Household record"'
label define cu02a_pernum_lbl 01 `"1"', add
label define cu02a_pernum_lbl 02 `"2"', add
label define cu02a_pernum_lbl 03 `"3"', add
label define cu02a_pernum_lbl 04 `"4"', add
label define cu02a_pernum_lbl 05 `"5"', add
label define cu02a_pernum_lbl 06 `"6"', add
label define cu02a_pernum_lbl 07 `"7"', add
label define cu02a_pernum_lbl 08 `"8"', add
label define cu02a_pernum_lbl 09 `"9"', add
label define cu02a_pernum_lbl 10 `"10"', add
label define cu02a_pernum_lbl 11 `"11"', add
label define cu02a_pernum_lbl 12 `"12"', add
label define cu02a_pernum_lbl 13 `"13"', add
label define cu02a_pernum_lbl 14 `"14"', add
label define cu02a_pernum_lbl 15 `"15"', add
label define cu02a_pernum_lbl 16 `"16"', add
label define cu02a_pernum_lbl 17 `"17"', add
label define cu02a_pernum_lbl 18 `"18"', add
label define cu02a_pernum_lbl 19 `"19"', add
label define cu02a_pernum_lbl 20 `"20"', add
label define cu02a_pernum_lbl 21 `"21"', add
label define cu02a_pernum_lbl 22 `"22"', add
label define cu02a_pernum_lbl 23 `"23"', add
label define cu02a_pernum_lbl 24 `"24"', add
label define cu02a_pernum_lbl 25 `"25"', add
label define cu02a_pernum_lbl 26 `"26"', add
label define cu02a_pernum_lbl 27 `"27"', add
label values cu02a_pernum cu02a_pernum_lbl

label define cu02a_relate_lbl 0 `"Head of household"'
label define cu02a_relate_lbl 1 `"Spouse or companion"', add
label define cu02a_relate_lbl 2 `"Son or daughter"', add
label define cu02a_relate_lbl 3 `"Stepson or stepdaughter"', add
label define cu02a_relate_lbl 4 `"Daughter-in-law or son-in-law"', add
label define cu02a_relate_lbl 5 `"Grandchild"', add
label define cu02a_relate_lbl 6 `"Parents or parents-in-law"', add
label define cu02a_relate_lbl 7 `"Other relative"', add
label define cu02a_relate_lbl 8 `"Other non-relative"', add
label define cu02a_relate_lbl 9 `"Member of a collective"', add
label values cu02a_relate cu02a_relate_lbl

label define cu02a_parloco_lbl 00 `"No parent in the household"'
label define cu02a_parloco_lbl 01 `"1"', add
label define cu02a_parloco_lbl 02 `"2"', add
label define cu02a_parloco_lbl 03 `"3"', add
label define cu02a_parloco_lbl 04 `"4"', add
label define cu02a_parloco_lbl 05 `"5"', add
label define cu02a_parloco_lbl 06 `"6"', add
label define cu02a_parloco_lbl 07 `"7"', add
label define cu02a_parloco_lbl 08 `"8"', add
label define cu02a_parloco_lbl 09 `"9"', add
label define cu02a_parloco_lbl 10 `"10"', add
label define cu02a_parloco_lbl 11 `"11"', add
label define cu02a_parloco_lbl 12 `"12"', add
label define cu02a_parloco_lbl 13 `"13"', add
label define cu02a_parloco_lbl 14 `"14"', add
label define cu02a_parloco_lbl 15 `"15"', add
label define cu02a_parloco_lbl 17 `"17"', add
label define cu02a_parloco_lbl 99 `"Unknown (no parent identified)"', add
label values cu02a_parloco cu02a_parloco_lbl

label define cu02a_sploco_lbl 00 `"No spouse in the household"'
label define cu02a_sploco_lbl 01 `"1"', add
label define cu02a_sploco_lbl 02 `"2"', add
label define cu02a_sploco_lbl 03 `"3"', add
label define cu02a_sploco_lbl 04 `"4"', add
label define cu02a_sploco_lbl 05 `"5"', add
label define cu02a_sploco_lbl 06 `"6"', add
label define cu02a_sploco_lbl 07 `"7"', add
label define cu02a_sploco_lbl 08 `"8"', add
label define cu02a_sploco_lbl 09 `"9"', add
label define cu02a_sploco_lbl 10 `"10"', add
label define cu02a_sploco_lbl 11 `"11"', add
label define cu02a_sploco_lbl 12 `"12"', add
label define cu02a_sploco_lbl 13 `"13"', add
label define cu02a_sploco_lbl 14 `"14"', add
label define cu02a_sploco_lbl 15 `"15"', add
label define cu02a_sploco_lbl 16 `"16"', add
label define cu02a_sploco_lbl 17 `"17"', add
label define cu02a_sploco_lbl 99 `"Unknown (no spouse identified)"', add
label values cu02a_sploco cu02a_sploco_lbl

label define cu02a_sex_lbl 1 `"Male"'
label define cu02a_sex_lbl 2 `"Female"', add
label values cu02a_sex cu02a_sex_lbl

label define cu02a_age_lbl 000 `"0"'
label define cu02a_age_lbl 001 `"1"', add
label define cu02a_age_lbl 002 `"2"', add
label define cu02a_age_lbl 003 `"3"', add
label define cu02a_age_lbl 004 `"4"', add
label define cu02a_age_lbl 005 `"5"', add
label define cu02a_age_lbl 006 `"6"', add
label define cu02a_age_lbl 007 `"7"', add
label define cu02a_age_lbl 008 `"8"', add
label define cu02a_age_lbl 009 `"9"', add
label define cu02a_age_lbl 010 `"10"', add
label define cu02a_age_lbl 011 `"11"', add
label define cu02a_age_lbl 012 `"12"', add
label define cu02a_age_lbl 013 `"13"', add
label define cu02a_age_lbl 014 `"14"', add
label define cu02a_age_lbl 015 `"15"', add
label define cu02a_age_lbl 016 `"16"', add
label define cu02a_age_lbl 017 `"17"', add
label define cu02a_age_lbl 018 `"18"', add
label define cu02a_age_lbl 019 `"19"', add
label define cu02a_age_lbl 020 `"20"', add
label define cu02a_age_lbl 021 `"21"', add
label define cu02a_age_lbl 022 `"22"', add
label define cu02a_age_lbl 023 `"23"', add
label define cu02a_age_lbl 024 `"24"', add
label define cu02a_age_lbl 025 `"25"', add
label define cu02a_age_lbl 026 `"26"', add
label define cu02a_age_lbl 027 `"27"', add
label define cu02a_age_lbl 028 `"28"', add
label define cu02a_age_lbl 029 `"29"', add
label define cu02a_age_lbl 030 `"30"', add
label define cu02a_age_lbl 031 `"31"', add
label define cu02a_age_lbl 032 `"32"', add
label define cu02a_age_lbl 033 `"33"', add
label define cu02a_age_lbl 034 `"34"', add
label define cu02a_age_lbl 035 `"35"', add
label define cu02a_age_lbl 036 `"36"', add
label define cu02a_age_lbl 037 `"37"', add
label define cu02a_age_lbl 038 `"38"', add
label define cu02a_age_lbl 039 `"39"', add
label define cu02a_age_lbl 040 `"40"', add
label define cu02a_age_lbl 041 `"41"', add
label define cu02a_age_lbl 042 `"42"', add
label define cu02a_age_lbl 043 `"43"', add
label define cu02a_age_lbl 044 `"44"', add
label define cu02a_age_lbl 045 `"45"', add
label define cu02a_age_lbl 046 `"46"', add
label define cu02a_age_lbl 047 `"47"', add
label define cu02a_age_lbl 048 `"48"', add
label define cu02a_age_lbl 049 `"49"', add
label define cu02a_age_lbl 050 `"50"', add
label define cu02a_age_lbl 051 `"51"', add
label define cu02a_age_lbl 052 `"52"', add
label define cu02a_age_lbl 053 `"53"', add
label define cu02a_age_lbl 054 `"54"', add
label define cu02a_age_lbl 055 `"55"', add
label define cu02a_age_lbl 056 `"56"', add
label define cu02a_age_lbl 057 `"57"', add
label define cu02a_age_lbl 058 `"58"', add
label define cu02a_age_lbl 059 `"59"', add
label define cu02a_age_lbl 060 `"60"', add
label define cu02a_age_lbl 061 `"61"', add
label define cu02a_age_lbl 062 `"62"', add
label define cu02a_age_lbl 063 `"63"', add
label define cu02a_age_lbl 064 `"64"', add
label define cu02a_age_lbl 065 `"65"', add
label define cu02a_age_lbl 066 `"66"', add
label define cu02a_age_lbl 067 `"67"', add
label define cu02a_age_lbl 068 `"68"', add
label define cu02a_age_lbl 069 `"69"', add
label define cu02a_age_lbl 070 `"70"', add
label define cu02a_age_lbl 071 `"71"', add
label define cu02a_age_lbl 072 `"72"', add
label define cu02a_age_lbl 073 `"73"', add
label define cu02a_age_lbl 074 `"74"', add
label define cu02a_age_lbl 075 `"75"', add
label define cu02a_age_lbl 076 `"76"', add
label define cu02a_age_lbl 077 `"77"', add
label define cu02a_age_lbl 078 `"78"', add
label define cu02a_age_lbl 079 `"79"', add
label define cu02a_age_lbl 080 `"80"', add
label define cu02a_age_lbl 081 `"81"', add
label define cu02a_age_lbl 082 `"82"', add
label define cu02a_age_lbl 083 `"83"', add
label define cu02a_age_lbl 084 `"84"', add
label define cu02a_age_lbl 085 `"85"', add
label define cu02a_age_lbl 086 `"86"', add
label define cu02a_age_lbl 087 `"87"', add
label define cu02a_age_lbl 088 `"88"', add
label define cu02a_age_lbl 089 `"89"', add
label define cu02a_age_lbl 090 `"90"', add
label define cu02a_age_lbl 091 `"91"', add
label define cu02a_age_lbl 092 `"92"', add
label define cu02a_age_lbl 093 `"93"', add
label define cu02a_age_lbl 094 `"94"', add
label define cu02a_age_lbl 095 `"95"', add
label define cu02a_age_lbl 096 `"96"', add
label define cu02a_age_lbl 097 `"97"', add
label define cu02a_age_lbl 098 `"98"', add
label define cu02a_age_lbl 099 `"99"', add
label define cu02a_age_lbl 100 `"100+"', add
label values cu02a_age cu02a_age_lbl

label define cu02a_race_lbl 1 `"White"'
label define cu02a_race_lbl 2 `"Black"', add
label define cu02a_race_lbl 3 `"Mixed race"', add
label values cu02a_race cu02a_race_lbl

label define cu02a_bplresid_lbl 1 `"In this municipality"'
label define cu02a_bplresid_lbl 2 `"In other municipality"', add
label values cu02a_bplresid cu02a_bplresid_lbl

label define cu02a_bplctry_lbl 004 `"Afghanistan"'
label define cu02a_bplctry_lbl 009 `"Oceania"', add
label define cu02a_bplctry_lbl 156 `"China"', add
label define cu02a_bplctry_lbl 276 `"Germany"', add
label define cu02a_bplctry_lbl 332 `"Haiti"', add
label define cu02a_bplctry_lbl 388 `"Jamaica"', add
label define cu02a_bplctry_lbl 484 `"Mexico"', add
label define cu02a_bplctry_lbl 643 `"Russian Federation"', add
label define cu02a_bplctry_lbl 724 `"Spain"', add
label define cu02a_bplctry_lbl 804 `"Ukraine"', add
label define cu02a_bplctry_lbl 840 `"United States"', add
label define cu02a_bplctry_lbl 997 `"Other country, response suppressed"', add
label define cu02a_bplctry_lbl 999 `"NIU (not in universe)"', add
label values cu02a_bplctry cu02a_bplctry_lbl

label define cu02a_bplprov_lbl 001 `"Pinar del Rio"'
label define cu02a_bplprov_lbl 002 `"La Habana"', add
label define cu02a_bplprov_lbl 003 `"Ciudad Habana"', add
label define cu02a_bplprov_lbl 004 `"Matanzas"', add
label define cu02a_bplprov_lbl 005 `"Villa Clara"', add
label define cu02a_bplprov_lbl 006 `"Cienfuegos"', add
label define cu02a_bplprov_lbl 007 `"Sancti Spiritus"', add
label define cu02a_bplprov_lbl 008 `"Ciego Avila"', add
label define cu02a_bplprov_lbl 009 `"Camaguey"', add
label define cu02a_bplprov_lbl 010 `"Las Tunas"', add
label define cu02a_bplprov_lbl 011 `"Holguin"', add
label define cu02a_bplprov_lbl 012 `"Granma"', add
label define cu02a_bplprov_lbl 013 `"Santiago de Cuba"', add
label define cu02a_bplprov_lbl 014 `"Guantanamo"', add
label define cu02a_bplprov_lbl 099 `"Isla de la Juventud"', add
label define cu02a_bplprov_lbl 998 `"Unknown"', add
label define cu02a_bplprov_lbl 999 `"NIU (not in universe)"', add
label values cu02a_bplprov cu02a_bplprov_lbl

label define cu02a_bplmuni_lbl 0101 `"Sandino"'
label define cu02a_bplmuni_lbl 0102 `"Mantua"', add
label define cu02a_bplmuni_lbl 0103 `"Minas de Matahambre"', add
label define cu02a_bplmuni_lbl 0104 `"Vinales"', add
label define cu02a_bplmuni_lbl 0105 `"La Palma"', add
label define cu02a_bplmuni_lbl 0106 `"Bahia Honda"', add
label define cu02a_bplmuni_lbl 0107 `"Candelaria"', add
label define cu02a_bplmuni_lbl 0108 `"San Cristobal"', add
label define cu02a_bplmuni_lbl 0109 `"Los Palacios"', add
label define cu02a_bplmuni_lbl 0110 `"Consolacion del Sur"', add
label define cu02a_bplmuni_lbl 0111 `"Pinar del Rio"', add
label define cu02a_bplmuni_lbl 0112 `"San Luis"', add
label define cu02a_bplmuni_lbl 0113 `"San Juan y Martinez"', add
label define cu02a_bplmuni_lbl 0114 `"Guane"', add
label define cu02a_bplmuni_lbl 0199 `"Pinar del Rio, municipality unknown"', add
label define cu02a_bplmuni_lbl 0201 `"Mariel"', add
label define cu02a_bplmuni_lbl 0202 `"Guanajay"', add
label define cu02a_bplmuni_lbl 0203 `"Caimito"', add
label define cu02a_bplmuni_lbl 0204 `"Bauta"', add
label define cu02a_bplmuni_lbl 0205 `"San Antonio de los banos"', add
label define cu02a_bplmuni_lbl 0206 `"Bejucal"', add
label define cu02a_bplmuni_lbl 0207 `"San Jose de las Lajas"', add
label define cu02a_bplmuni_lbl 0208 `"Jaruco"', add
label define cu02a_bplmuni_lbl 0209 `"Santa Cruz del Norte"', add
label define cu02a_bplmuni_lbl 0210 `"Madruga"', add
label define cu02a_bplmuni_lbl 0211 `"Nueva Paz"', add
label define cu02a_bplmuni_lbl 0212 `"San Nicolas"', add
label define cu02a_bplmuni_lbl 0213 `"Guines"', add
label define cu02a_bplmuni_lbl 0214 `"Melena del Sur"', add
label define cu02a_bplmuni_lbl 0215 `"Batabano"', add
label define cu02a_bplmuni_lbl 0216 `"Quivican"', add
label define cu02a_bplmuni_lbl 0217 `"Guira de Melena"', add
label define cu02a_bplmuni_lbl 0218 `"Alquizar"', add
label define cu02a_bplmuni_lbl 0219 `"Artemisia"', add
label define cu02a_bplmuni_lbl 0299 `"La Habana, municipality unknown"', add
label define cu02a_bplmuni_lbl 0301 `"Playa"', add
label define cu02a_bplmuni_lbl 0302 `"Plaza de la Revolucion"', add
label define cu02a_bplmuni_lbl 0303 `"Centro Habana"', add
label define cu02a_bplmuni_lbl 0304 `"La Habana Vieja"', add
label define cu02a_bplmuni_lbl 0305 `"Regla"', add
label define cu02a_bplmuni_lbl 0306 `"La Habana del Este"', add
label define cu02a_bplmuni_lbl 0307 `"Guanabacoa"', add
label define cu02a_bplmuni_lbl 0308 `"San Miguel del Padron"', add
label define cu02a_bplmuni_lbl 0309 `"Diez de Octubre"', add
label define cu02a_bplmuni_lbl 0310 `"Cerro"', add
label define cu02a_bplmuni_lbl 0311 `"Marianao"', add
label define cu02a_bplmuni_lbl 0312 `"La Lisa"', add
label define cu02a_bplmuni_lbl 0313 `"Boyeros"', add
label define cu02a_bplmuni_lbl 0314 `"Arroyo Naranjo"', add
label define cu02a_bplmuni_lbl 0315 `"Cotorro"', add
label define cu02a_bplmuni_lbl 0399 `"Ciudad Habana, municipality unknown"', add
label define cu02a_bplmuni_lbl 0401 `"Matanzas"', add
label define cu02a_bplmuni_lbl 0402 `"Cardenas"', add
label define cu02a_bplmuni_lbl 0403 `"Varadero"', add
label define cu02a_bplmuni_lbl 0404 `"Marti"', add
label define cu02a_bplmuni_lbl 0405 `"Colon"', add
label define cu02a_bplmuni_lbl 0406 `"Perico"', add
label define cu02a_bplmuni_lbl 0407 `"Jovellanos"', add
label define cu02a_bplmuni_lbl 0408 `"Pedro Betancourt"', add
label define cu02a_bplmuni_lbl 0409 `"Limonar"', add
label define cu02a_bplmuni_lbl 0410 `"Union de Reyes"', add
label define cu02a_bplmuni_lbl 0411 `"Cienaga de Zapata"', add
label define cu02a_bplmuni_lbl 0412 `"Jaguey Grande"', add
label define cu02a_bplmuni_lbl 0413 `"Calimete"', add
label define cu02a_bplmuni_lbl 0414 `"Los Arabos"', add
label define cu02a_bplmuni_lbl 0499 `"Matanzas, municipality unknown"', add
label define cu02a_bplmuni_lbl 0501 `"Corralillo"', add
label define cu02a_bplmuni_lbl 0502 `"Quemado de Guines"', add
label define cu02a_bplmuni_lbl 0503 `"Sagua la Grande"', add
label define cu02a_bplmuni_lbl 0504 `"Encrucijada"', add
label define cu02a_bplmuni_lbl 0505 `"Camajuani"', add
label define cu02a_bplmuni_lbl 0506 `"Caibarien"', add
label define cu02a_bplmuni_lbl 0507 `"Remedios"', add
label define cu02a_bplmuni_lbl 0508 `"Placetas"', add
label define cu02a_bplmuni_lbl 0509 `"Santa Clara"', add
label define cu02a_bplmuni_lbl 0510 `"Cifuentes"', add
label define cu02a_bplmuni_lbl 0511 `"Santo Domingo"', add
label define cu02a_bplmuni_lbl 0512 `"Ranchuelo"', add
label define cu02a_bplmuni_lbl 0513 `"Manicaragua"', add
label define cu02a_bplmuni_lbl 0599 `"Villa Clara, municipality unknown"', add
label define cu02a_bplmuni_lbl 0601 `"Aguada de Pasajeros"', add
label define cu02a_bplmuni_lbl 0602 `"Rodas"', add
label define cu02a_bplmuni_lbl 0603 `"Palmira"', add
label define cu02a_bplmuni_lbl 0604 `"Lajas"', add
label define cu02a_bplmuni_lbl 0605 `"Cruces"', add
label define cu02a_bplmuni_lbl 0606 `"Cumanayagua"', add
label define cu02a_bplmuni_lbl 0607 `"Cienfuegos"', add
label define cu02a_bplmuni_lbl 0608 `"Abreus"', add
label define cu02a_bplmuni_lbl 0699 `"Cienfuegos, municipality unknown"', add
label define cu02a_bplmuni_lbl 0701 `"Yaguajay"', add
label define cu02a_bplmuni_lbl 0702 `"Jatibonico"', add
label define cu02a_bplmuni_lbl 0703 `"Taguasco"', add
label define cu02a_bplmuni_lbl 0704 `"Cabaiguan"', add
label define cu02a_bplmuni_lbl 0705 `"Fomento"', add
label define cu02a_bplmuni_lbl 0706 `"Trinidad"', add
label define cu02a_bplmuni_lbl 0707 `"Sancti Spiritus"', add
label define cu02a_bplmuni_lbl 0708 `"La Sierpe"', add
label define cu02a_bplmuni_lbl 0799 `"Sancti Spiritus, municipality unknown"', add
label define cu02a_bplmuni_lbl 0801 `"Chambas"', add
label define cu02a_bplmuni_lbl 0802 `"Moron"', add
label define cu02a_bplmuni_lbl 0803 `"Bolivia"', add
label define cu02a_bplmuni_lbl 0804 `"Primero de Enero"', add
label define cu02a_bplmuni_lbl 0805 `"Ciro Redondo"', add
label define cu02a_bplmuni_lbl 0806 `"Florencia"', add
label define cu02a_bplmuni_lbl 0807 `"Majagua"', add
label define cu02a_bplmuni_lbl 0808 `"Ciego de Avila"', add
label define cu02a_bplmuni_lbl 0809 `"Venezuela"', add
label define cu02a_bplmuni_lbl 0810 `"Baragua"', add
label define cu02a_bplmuni_lbl 0812 `"Ciego de Avila"', add
label define cu02a_bplmuni_lbl 0899 `"Ciego Avila, municipality unknown"', add
label define cu02a_bplmuni_lbl 0901 `"Carlo Manuel de Cespedes"', add
label define cu02a_bplmuni_lbl 0902 `"Esmeralda"', add
label define cu02a_bplmuni_lbl 0903 `"Sierra de Cubitas"', add
label define cu02a_bplmuni_lbl 0904 `"Minas"', add
label define cu02a_bplmuni_lbl 0905 `"Nuevitas"', add
label define cu02a_bplmuni_lbl 0906 `"Guaimaro"', add
label define cu02a_bplmuni_lbl 0907 `"Sibanicu"', add
label define cu02a_bplmuni_lbl 0908 `"Camaguey"', add
label define cu02a_bplmuni_lbl 0909 `"Florida"', add
label define cu02a_bplmuni_lbl 0910 `"Vertientes"', add
label define cu02a_bplmuni_lbl 0911 `"Jimaguayu"', add
label define cu02a_bplmuni_lbl 0912 `"Najasa"', add
label define cu02a_bplmuni_lbl 0913 `"Santa Cruz del Sur"', add
label define cu02a_bplmuni_lbl 0999 `"Camaguey, municipality unknown"', add
label define cu02a_bplmuni_lbl 1001 `"Manati"', add
label define cu02a_bplmuni_lbl 1002 `"Puerto Padre"', add
label define cu02a_bplmuni_lbl 1003 `"Jesus Menendez"', add
label define cu02a_bplmuni_lbl 1004 `"Majibacoa"', add
label define cu02a_bplmuni_lbl 1005 `"Las Tunas"', add
label define cu02a_bplmuni_lbl 1006 `"Jobabo"', add
label define cu02a_bplmuni_lbl 1007 `"Colombia"', add
label define cu02a_bplmuni_lbl 1008 `"Amancio"', add
label define cu02a_bplmuni_lbl 1099 `"Las Tunas, municipality unknown"', add
label define cu02a_bplmuni_lbl 1101 `"Gibara"', add
label define cu02a_bplmuni_lbl 1102 `"Rafael Freire"', add
label define cu02a_bplmuni_lbl 1103 `"Banes"', add
label define cu02a_bplmuni_lbl 1104 `"Antilla"', add
label define cu02a_bplmuni_lbl 1105 `"Baguanos"', add
label define cu02a_bplmuni_lbl 1106 `"Holguin"', add
label define cu02a_bplmuni_lbl 1107 `"Calixto Garcia"', add
label define cu02a_bplmuni_lbl 1108 `"Cacocum"', add
label define cu02a_bplmuni_lbl 1109 `"Urbano Noris"', add
label define cu02a_bplmuni_lbl 1110 `"Cueto"', add
label define cu02a_bplmuni_lbl 1111 `"Mayari"', add
label define cu02a_bplmuni_lbl 1112 `"Frank Pais"', add
label define cu02a_bplmuni_lbl 1113 `"Sagua de Tanamo"', add
label define cu02a_bplmuni_lbl 1114 `"Moa"', add
label define cu02a_bplmuni_lbl 1199 `"Holguin, municipality unknown"', add
label define cu02a_bplmuni_lbl 1201 `"Rio Cauto"', add
label define cu02a_bplmuni_lbl 1202 `"Cauto Cristo"', add
label define cu02a_bplmuni_lbl 1203 `"Jiguani"', add
label define cu02a_bplmuni_lbl 1204 `"Bayamo"', add
label define cu02a_bplmuni_lbl 1205 `"Yara"', add
label define cu02a_bplmuni_lbl 1206 `"Manzanillo"', add
label define cu02a_bplmuni_lbl 1207 `"Campechuela"', add
label define cu02a_bplmuni_lbl 1208 `"Media Luna"', add
label define cu02a_bplmuni_lbl 1209 `"Niquero"', add
label define cu02a_bplmuni_lbl 1210 `"Pilon"', add
label define cu02a_bplmuni_lbl 1211 `"Bartolome Maso"', add
label define cu02a_bplmuni_lbl 1212 `"Buey Arriba"', add
label define cu02a_bplmuni_lbl 1213 `"Guisa"', add
label define cu02a_bplmuni_lbl 1299 `"Granma, municipality unknown"', add
label define cu02a_bplmuni_lbl 1301 `"Contramaestre"', add
label define cu02a_bplmuni_lbl 1302 `"Mella"', add
label define cu02a_bplmuni_lbl 1303 `"San Luis"', add
label define cu02a_bplmuni_lbl 1304 `"Segundo Frente"', add
label define cu02a_bplmuni_lbl 1305 `"Songo - La Maya"', add
label define cu02a_bplmuni_lbl 1306 `"Santiago de Cuba"', add
label define cu02a_bplmuni_lbl 1307 `"Palma Soriano"', add
label define cu02a_bplmuni_lbl 1308 `"Tercer Frente"', add
label define cu02a_bplmuni_lbl 1309 `"Guama"', add
label define cu02a_bplmuni_lbl 1399 `"Santiago de Cuba, municipality unknown"', add
label define cu02a_bplmuni_lbl 1401 `"El Salvador"', add
label define cu02a_bplmuni_lbl 1402 `"Guantanamo"', add
label define cu02a_bplmuni_lbl 1403 `"Yateras"', add
label define cu02a_bplmuni_lbl 1404 `"Baracoa"', add
label define cu02a_bplmuni_lbl 1405 `"Maisi"', add
label define cu02a_bplmuni_lbl 1406 `"Imias"', add
label define cu02a_bplmuni_lbl 1407 `"San Antonio del Sur"', add
label define cu02a_bplmuni_lbl 1408 `"Manuel Tames"', add
label define cu02a_bplmuni_lbl 1409 `"Caimanera"', add
label define cu02a_bplmuni_lbl 1410 `"Niceto Perez"', add
label define cu02a_bplmuni_lbl 1499 `"Guantanamo, municipality unknown"', add
label define cu02a_bplmuni_lbl 9901 `"Isla de la Juventud"', add
label define cu02a_bplmuni_lbl 9998 `"Unknown"', add
label define cu02a_bplmuni_lbl 9999 `"NIU (not in universe)"', add
label values cu02a_bplmuni cu02a_bplmuni_lbl

label define cu02a_bornhere_lbl 1 `"Yes"'
label define cu02a_bornhere_lbl 3 `"No"', add
label values cu02a_bornhere cu02a_bornhere_lbl

label define cu02a_resctry_lbl 002 `"Africa"'
label define cu02a_resctry_lbl 004 `"Afghanistan"', add
label define cu02a_resctry_lbl 009 `"Oceania"', add
label define cu02a_resctry_lbl 276 `"Germany"', add
label define cu02a_resctry_lbl 332 `"Haiti"', add
label define cu02a_resctry_lbl 388 `"Jamaica"', add
label define cu02a_resctry_lbl 484 `"Mexico"', add
label define cu02a_resctry_lbl 643 `"Russian Federation"', add
label define cu02a_resctry_lbl 724 `"Spain"', add
label define cu02a_resctry_lbl 804 `"Ukraine"', add
label define cu02a_resctry_lbl 840 `"United States"', add
label define cu02a_resctry_lbl 990 `"Other country, response suppressed"', add
label define cu02a_resctry_lbl 998 `"Unknown"', add
label define cu02a_resctry_lbl 999 `"NIU (not in universe)"', add
label values cu02a_resctry cu02a_resctry_lbl

label define cu02a_resprov_lbl 001 `"Pinar del Rio"'
label define cu02a_resprov_lbl 002 `"La Habana"', add
label define cu02a_resprov_lbl 003 `"Ciudad Habana"', add
label define cu02a_resprov_lbl 004 `"Matanzas"', add
label define cu02a_resprov_lbl 005 `"Villa Clara"', add
label define cu02a_resprov_lbl 006 `"Cienfuegos"', add
label define cu02a_resprov_lbl 007 `"Sancti Spiritus"', add
label define cu02a_resprov_lbl 008 `"Ciego Avila"', add
label define cu02a_resprov_lbl 009 `"Camaguey"', add
label define cu02a_resprov_lbl 010 `"Las Tunas"', add
label define cu02a_resprov_lbl 011 `"Holguin"', add
label define cu02a_resprov_lbl 012 `"Granma"', add
label define cu02a_resprov_lbl 013 `"Santiago de Cuba"', add
label define cu02a_resprov_lbl 014 `"Guantanamo"', add
label define cu02a_resprov_lbl 099 `"Isla de la Juventud"', add
label define cu02a_resprov_lbl 998 `"Unknown"', add
label define cu02a_resprov_lbl 999 `"NIU (not in universe)"', add
label values cu02a_resprov cu02a_resprov_lbl

label define cu02a_resmuni_lbl 0101 `"Sandino"'
label define cu02a_resmuni_lbl 0102 `"Mantua"', add
label define cu02a_resmuni_lbl 0103 `"Minas de Matahambre"', add
label define cu02a_resmuni_lbl 0104 `"Vinales"', add
label define cu02a_resmuni_lbl 0105 `"La Palma"', add
label define cu02a_resmuni_lbl 0106 `"Bahia Honda"', add
label define cu02a_resmuni_lbl 0107 `"Candelaria"', add
label define cu02a_resmuni_lbl 0108 `"San Cristobal"', add
label define cu02a_resmuni_lbl 0109 `"Los Palacios"', add
label define cu02a_resmuni_lbl 0110 `"Consolacion del Sur"', add
label define cu02a_resmuni_lbl 0111 `"Pinar del Rio"', add
label define cu02a_resmuni_lbl 0112 `"San Luis"', add
label define cu02a_resmuni_lbl 0113 `"San Juan y Martinez"', add
label define cu02a_resmuni_lbl 0114 `"Guane"', add
label define cu02a_resmuni_lbl 0199 `"Pinar del Rio, municipality unknown"', add
label define cu02a_resmuni_lbl 0201 `"Mariel"', add
label define cu02a_resmuni_lbl 0202 `"Guanajay"', add
label define cu02a_resmuni_lbl 0203 `"Caimito"', add
label define cu02a_resmuni_lbl 0204 `"Bauta"', add
label define cu02a_resmuni_lbl 0205 `"San Antonio de los banos"', add
label define cu02a_resmuni_lbl 0206 `"Bejucal"', add
label define cu02a_resmuni_lbl 0207 `"San Jose de las Lajas"', add
label define cu02a_resmuni_lbl 0208 `"Jaruco"', add
label define cu02a_resmuni_lbl 0209 `"Santa Cruz del Norte"', add
label define cu02a_resmuni_lbl 0210 `"Madruga"', add
label define cu02a_resmuni_lbl 0211 `"Nueva Paz"', add
label define cu02a_resmuni_lbl 0212 `"San Nicolas"', add
label define cu02a_resmuni_lbl 0213 `"Guines"', add
label define cu02a_resmuni_lbl 0214 `"Melena del Sur"', add
label define cu02a_resmuni_lbl 0215 `"Batabano"', add
label define cu02a_resmuni_lbl 0216 `"Quivican"', add
label define cu02a_resmuni_lbl 0217 `"Guira de Melena"', add
label define cu02a_resmuni_lbl 0218 `"Alquizar"', add
label define cu02a_resmuni_lbl 0219 `"Artemisia"', add
label define cu02a_resmuni_lbl 0299 `"La Habana, municipality unknown"', add
label define cu02a_resmuni_lbl 0301 `"Playa"', add
label define cu02a_resmuni_lbl 0302 `"Plaza de la Revolucion"', add
label define cu02a_resmuni_lbl 0303 `"Centro Habana"', add
label define cu02a_resmuni_lbl 0304 `"La Habana Vieja"', add
label define cu02a_resmuni_lbl 0305 `"Regla"', add
label define cu02a_resmuni_lbl 0306 `"La Habana del Este"', add
label define cu02a_resmuni_lbl 0307 `"Guanabacoa"', add
label define cu02a_resmuni_lbl 0308 `"San Miguel del Padron"', add
label define cu02a_resmuni_lbl 0309 `"Diez de Octubre"', add
label define cu02a_resmuni_lbl 0310 `"Cerro"', add
label define cu02a_resmuni_lbl 0311 `"Marianao"', add
label define cu02a_resmuni_lbl 0312 `"La Lisa"', add
label define cu02a_resmuni_lbl 0313 `"Boyeros"', add
label define cu02a_resmuni_lbl 0314 `"Arroyo Naranjo"', add
label define cu02a_resmuni_lbl 0315 `"Cotorro"', add
label define cu02a_resmuni_lbl 0399 `"Ciudad Habana, municipality unknown"', add
label define cu02a_resmuni_lbl 0401 `"Matanzas"', add
label define cu02a_resmuni_lbl 0402 `"Cardenas"', add
label define cu02a_resmuni_lbl 0403 `"Varadero"', add
label define cu02a_resmuni_lbl 0404 `"Marti"', add
label define cu02a_resmuni_lbl 0405 `"Colon"', add
label define cu02a_resmuni_lbl 0406 `"Perico"', add
label define cu02a_resmuni_lbl 0407 `"Jovellanos"', add
label define cu02a_resmuni_lbl 0408 `"Pedro Betancourt"', add
label define cu02a_resmuni_lbl 0409 `"Limonar"', add
label define cu02a_resmuni_lbl 0410 `"Union de Reyes"', add
label define cu02a_resmuni_lbl 0411 `"Cienaga de Zapata"', add
label define cu02a_resmuni_lbl 0412 `"Jaguey Grande"', add
label define cu02a_resmuni_lbl 0413 `"Calimete"', add
label define cu02a_resmuni_lbl 0414 `"Los Arabos"', add
label define cu02a_resmuni_lbl 0499 `"Matanzas, municipality unknown"', add
label define cu02a_resmuni_lbl 0501 `"Corralillo"', add
label define cu02a_resmuni_lbl 0502 `"Quemado de Guines"', add
label define cu02a_resmuni_lbl 0503 `"Sagua la Grande"', add
label define cu02a_resmuni_lbl 0504 `"Encrucijada"', add
label define cu02a_resmuni_lbl 0505 `"Camajuani"', add
label define cu02a_resmuni_lbl 0506 `"Caibarien"', add
label define cu02a_resmuni_lbl 0507 `"Remedios"', add
label define cu02a_resmuni_lbl 0508 `"Placetas"', add
label define cu02a_resmuni_lbl 0509 `"Santa Clara"', add
label define cu02a_resmuni_lbl 0510 `"Cifuentes"', add
label define cu02a_resmuni_lbl 0511 `"Santo Domingo"', add
label define cu02a_resmuni_lbl 0512 `"Ranchuelo"', add
label define cu02a_resmuni_lbl 0513 `"Manicaragua"', add
label define cu02a_resmuni_lbl 0599 `"Villa Clara, municipality unknown"', add
label define cu02a_resmuni_lbl 0601 `"Aguada de Pasajeros"', add
label define cu02a_resmuni_lbl 0602 `"Rodas"', add
label define cu02a_resmuni_lbl 0603 `"Palmira"', add
label define cu02a_resmuni_lbl 0604 `"Lajas"', add
label define cu02a_resmuni_lbl 0605 `"Cruces"', add
label define cu02a_resmuni_lbl 0606 `"Cumanayagua"', add
label define cu02a_resmuni_lbl 0607 `"Cienfuegos"', add
label define cu02a_resmuni_lbl 0608 `"Abreus"', add
label define cu02a_resmuni_lbl 0699 `"Cienfuegos, municipality unknown"', add
label define cu02a_resmuni_lbl 0701 `"Yaguajay"', add
label define cu02a_resmuni_lbl 0702 `"Jatibonico"', add
label define cu02a_resmuni_lbl 0703 `"Taguasco"', add
label define cu02a_resmuni_lbl 0704 `"Cabaiguan"', add
label define cu02a_resmuni_lbl 0705 `"Fomento"', add
label define cu02a_resmuni_lbl 0706 `"Trinidad"', add
label define cu02a_resmuni_lbl 0707 `"Sancti Spiritus"', add
label define cu02a_resmuni_lbl 0708 `"La Sierpe"', add
label define cu02a_resmuni_lbl 0799 `"Sancti Spiritus, municipality unknown"', add
label define cu02a_resmuni_lbl 0801 `"Chambas"', add
label define cu02a_resmuni_lbl 0802 `"Moron"', add
label define cu02a_resmuni_lbl 0803 `"Bolivia"', add
label define cu02a_resmuni_lbl 0804 `"Primero de Enero"', add
label define cu02a_resmuni_lbl 0805 `"Ciro Redondo"', add
label define cu02a_resmuni_lbl 0806 `"Florencia"', add
label define cu02a_resmuni_lbl 0807 `"Majagua"', add
label define cu02a_resmuni_lbl 0808 `"Ciego de Avila"', add
label define cu02a_resmuni_lbl 0809 `"Venezuela"', add
label define cu02a_resmuni_lbl 0810 `"Baragua"', add
label define cu02a_resmuni_lbl 0899 `"Ciego Avila, municipality unknown"', add
label define cu02a_resmuni_lbl 0901 `"Carlo Manuel de Cespedes"', add
label define cu02a_resmuni_lbl 0902 `"Esmeralda"', add
label define cu02a_resmuni_lbl 0903 `"Sierra de Cubitas"', add
label define cu02a_resmuni_lbl 0904 `"Minas"', add
label define cu02a_resmuni_lbl 0905 `"Nuevitas"', add
label define cu02a_resmuni_lbl 0906 `"Guaimaro"', add
label define cu02a_resmuni_lbl 0907 `"Sibanicu"', add
label define cu02a_resmuni_lbl 0908 `"Camaguey"', add
label define cu02a_resmuni_lbl 0909 `"Florida"', add
label define cu02a_resmuni_lbl 0910 `"Vertientes"', add
label define cu02a_resmuni_lbl 0911 `"Jimaguayu"', add
label define cu02a_resmuni_lbl 0912 `"Najasa"', add
label define cu02a_resmuni_lbl 0913 `"Santa Cruz del Sur"', add
label define cu02a_resmuni_lbl 0999 `"Camaguey, municipality unknown"', add
label define cu02a_resmuni_lbl 1001 `"Manati"', add
label define cu02a_resmuni_lbl 1002 `"Puerto Padre"', add
label define cu02a_resmuni_lbl 1003 `"Jesus Menendez"', add
label define cu02a_resmuni_lbl 1004 `"Majibacoa"', add
label define cu02a_resmuni_lbl 1005 `"Las Tunas"', add
label define cu02a_resmuni_lbl 1006 `"Jobabo"', add
label define cu02a_resmuni_lbl 1007 `"Colombia"', add
label define cu02a_resmuni_lbl 1008 `"Amancio"', add
label define cu02a_resmuni_lbl 1099 `"Las Tunas, municipality unknown"', add
label define cu02a_resmuni_lbl 1101 `"Gibara"', add
label define cu02a_resmuni_lbl 1102 `"Rafael Freire"', add
label define cu02a_resmuni_lbl 1103 `"Banes"', add
label define cu02a_resmuni_lbl 1104 `"Antilla"', add
label define cu02a_resmuni_lbl 1105 `"Baguanos"', add
label define cu02a_resmuni_lbl 1106 `"Holguin"', add
label define cu02a_resmuni_lbl 1107 `"Calixto Garcia"', add
label define cu02a_resmuni_lbl 1108 `"Cacocum"', add
label define cu02a_resmuni_lbl 1109 `"Urbano Noris"', add
label define cu02a_resmuni_lbl 1110 `"Cueto"', add
label define cu02a_resmuni_lbl 1111 `"Mayari"', add
label define cu02a_resmuni_lbl 1112 `"Frank Pais"', add
label define cu02a_resmuni_lbl 1113 `"Sagua de Tanamo"', add
label define cu02a_resmuni_lbl 1114 `"Moa"', add
label define cu02a_resmuni_lbl 1199 `"Holguin, municipality unknown"', add
label define cu02a_resmuni_lbl 1201 `"Rio Cauto"', add
label define cu02a_resmuni_lbl 1202 `"Cauto Cristo"', add
label define cu02a_resmuni_lbl 1203 `"Jiguani"', add
label define cu02a_resmuni_lbl 1204 `"Bayamo"', add
label define cu02a_resmuni_lbl 1205 `"Yara"', add
label define cu02a_resmuni_lbl 1206 `"Manzanillo"', add
label define cu02a_resmuni_lbl 1207 `"Campechuela"', add
label define cu02a_resmuni_lbl 1208 `"Media Luna"', add
label define cu02a_resmuni_lbl 1209 `"Niquero"', add
label define cu02a_resmuni_lbl 1210 `"Pilon"', add
label define cu02a_resmuni_lbl 1211 `"Bartolome Maso"', add
label define cu02a_resmuni_lbl 1212 `"Buey Arriba"', add
label define cu02a_resmuni_lbl 1213 `"Guisa"', add
label define cu02a_resmuni_lbl 1299 `"Granma, municipality unknown"', add
label define cu02a_resmuni_lbl 1301 `"Contramaestre"', add
label define cu02a_resmuni_lbl 1302 `"Mella"', add
label define cu02a_resmuni_lbl 1303 `"San Luis"', add
label define cu02a_resmuni_lbl 1304 `"Segundo Frente"', add
label define cu02a_resmuni_lbl 1305 `"Songo - La Maya"', add
label define cu02a_resmuni_lbl 1306 `"Santiago de Cuba"', add
label define cu02a_resmuni_lbl 1307 `"Palma Soriano"', add
label define cu02a_resmuni_lbl 1308 `"Tercer Frente"', add
label define cu02a_resmuni_lbl 1309 `"Guama"', add
label define cu02a_resmuni_lbl 1399 `"Santiago de Cuba, municipality unknown"', add
label define cu02a_resmuni_lbl 1401 `"El Salvador"', add
label define cu02a_resmuni_lbl 1402 `"Guantanamo"', add
label define cu02a_resmuni_lbl 1403 `"Yateras"', add
label define cu02a_resmuni_lbl 1404 `"Baracoa"', add
label define cu02a_resmuni_lbl 1405 `"Maisi"', add
label define cu02a_resmuni_lbl 1406 `"Imias"', add
label define cu02a_resmuni_lbl 1407 `"San Antonio del Sur"', add
label define cu02a_resmuni_lbl 1408 `"Manuel Tames"', add
label define cu02a_resmuni_lbl 1409 `"Caimanera"', add
label define cu02a_resmuni_lbl 1410 `"Niceto Perez"', add
label define cu02a_resmuni_lbl 1499 `"Guantanamo, municipality unknown"', add
label define cu02a_resmuni_lbl 9901 `"Isla de la Juventud"', add
label define cu02a_resmuni_lbl 9998 `"Unknown"', add
label define cu02a_resmuni_lbl 9999 `"NIU (not in universe)"', add
label values cu02a_resmuni cu02a_resmuni_lbl

label define cu02a_resdur_lbl 00 `"Less than one year"'
label define cu02a_resdur_lbl 01 `"1"', add
label define cu02a_resdur_lbl 02 `"2"', add
label define cu02a_resdur_lbl 03 `"3"', add
label define cu02a_resdur_lbl 04 `"4"', add
label define cu02a_resdur_lbl 05 `"5"', add
label define cu02a_resdur_lbl 06 `"6"', add
label define cu02a_resdur_lbl 07 `"7"', add
label define cu02a_resdur_lbl 08 `"8"', add
label define cu02a_resdur_lbl 09 `"9"', add
label define cu02a_resdur_lbl 10 `"10"', add
label define cu02a_resdur_lbl 11 `"11"', add
label define cu02a_resdur_lbl 12 `"12"', add
label define cu02a_resdur_lbl 13 `"13"', add
label define cu02a_resdur_lbl 14 `"14"', add
label define cu02a_resdur_lbl 15 `"15"', add
label define cu02a_resdur_lbl 16 `"16"', add
label define cu02a_resdur_lbl 17 `"17"', add
label define cu02a_resdur_lbl 18 `"18"', add
label define cu02a_resdur_lbl 19 `"19"', add
label define cu02a_resdur_lbl 20 `"20"', add
label define cu02a_resdur_lbl 21 `"21"', add
label define cu02a_resdur_lbl 22 `"22"', add
label define cu02a_resdur_lbl 23 `"23"', add
label define cu02a_resdur_lbl 24 `"24"', add
label define cu02a_resdur_lbl 25 `"25"', add
label define cu02a_resdur_lbl 26 `"26"', add
label define cu02a_resdur_lbl 27 `"27"', add
label define cu02a_resdur_lbl 28 `"28"', add
label define cu02a_resdur_lbl 29 `"29"', add
label define cu02a_resdur_lbl 30 `"30"', add
label define cu02a_resdur_lbl 31 `"31"', add
label define cu02a_resdur_lbl 32 `"32"', add
label define cu02a_resdur_lbl 33 `"33"', add
label define cu02a_resdur_lbl 34 `"34"', add
label define cu02a_resdur_lbl 35 `"35"', add
label define cu02a_resdur_lbl 36 `"36"', add
label define cu02a_resdur_lbl 37 `"37"', add
label define cu02a_resdur_lbl 38 `"38"', add
label define cu02a_resdur_lbl 39 `"39"', add
label define cu02a_resdur_lbl 40 `"40"', add
label define cu02a_resdur_lbl 41 `"41"', add
label define cu02a_resdur_lbl 42 `"42"', add
label define cu02a_resdur_lbl 43 `"43"', add
label define cu02a_resdur_lbl 44 `"44"', add
label define cu02a_resdur_lbl 45 `"45"', add
label define cu02a_resdur_lbl 46 `"46"', add
label define cu02a_resdur_lbl 47 `"47"', add
label define cu02a_resdur_lbl 48 `"48"', add
label define cu02a_resdur_lbl 49 `"49"', add
label define cu02a_resdur_lbl 50 `"50"', add
label define cu02a_resdur_lbl 51 `"51"', add
label define cu02a_resdur_lbl 52 `"52"', add
label define cu02a_resdur_lbl 53 `"53"', add
label define cu02a_resdur_lbl 54 `"54"', add
label define cu02a_resdur_lbl 55 `"55"', add
label define cu02a_resdur_lbl 56 `"56"', add
label define cu02a_resdur_lbl 57 `"57"', add
label define cu02a_resdur_lbl 58 `"58"', add
label define cu02a_resdur_lbl 59 `"59"', add
label define cu02a_resdur_lbl 60 `"60"', add
label define cu02a_resdur_lbl 61 `"61"', add
label define cu02a_resdur_lbl 62 `"62"', add
label define cu02a_resdur_lbl 63 `"63"', add
label define cu02a_resdur_lbl 64 `"64"', add
label define cu02a_resdur_lbl 65 `"65"', add
label define cu02a_resdur_lbl 66 `"66"', add
label define cu02a_resdur_lbl 67 `"67"', add
label define cu02a_resdur_lbl 68 `"68"', add
label define cu02a_resdur_lbl 69 `"69"', add
label define cu02a_resdur_lbl 70 `"70"', add
label define cu02a_resdur_lbl 71 `"71"', add
label define cu02a_resdur_lbl 72 `"72"', add
label define cu02a_resdur_lbl 73 `"73"', add
label define cu02a_resdur_lbl 74 `"74"', add
label define cu02a_resdur_lbl 75 `"75"', add
label define cu02a_resdur_lbl 76 `"76"', add
label define cu02a_resdur_lbl 77 `"77"', add
label define cu02a_resdur_lbl 78 `"78"', add
label define cu02a_resdur_lbl 79 `"79"', add
label define cu02a_resdur_lbl 80 `"80+"', add
label define cu02a_resdur_lbl 98 `"Unknown"', add
label define cu02a_resdur_lbl 99 `"NIU (not in universe)"', add
label values cu02a_resdur cu02a_resdur_lbl

label define cu02a_edlev_lbl 0 `"None"'
label define cu02a_edlev_lbl 1 `"Primary"', add
label define cu02a_edlev_lbl 2 `"Basic secondary"', add
label define cu02a_edlev_lbl 3 `"Skilled manual labor"', add
label define cu02a_edlev_lbl 4 `"Pre-university"', add
label define cu02a_edlev_lbl 5 `"Mid-level technical"', add
label define cu02a_edlev_lbl 6 `"Mid-level teaching"', add
label define cu02a_edlev_lbl 7 `"Higher education"', add
label define cu02a_edlev_lbl 8 `"Unknown"', add
label define cu02a_edlev_lbl 9 `"NIU (not in universe)"', add
label values cu02a_edlev cu02a_edlev_lbl

label define cu02a_degree_lbl 01 `"Basic education (primary)"'
label define cu02a_degree_lbl 14 `"Teaching"', add
label define cu02a_degree_lbl 21 `"Art"', add
label define cu02a_degree_lbl 22 `"Humanities"', add
label define cu02a_degree_lbl 31 `"Other social and behavioral science"', add
label define cu02a_degree_lbl 32 `"Journalism and news"', add
label define cu02a_degree_lbl 34 `"Commercial and business teaching"', add
label define cu02a_degree_lbl 38 `"Law"', add
label define cu02a_degree_lbl 42 `"Life sciences"', add
label define cu02a_degree_lbl 44 `"Physical sciences"', add
label define cu02a_degree_lbl 46 `"Mathematics and statistics"', add
label define cu02a_degree_lbl 48 `"Computer science"', add
label define cu02a_degree_lbl 52 `"Engineering and related professions"', add
label define cu02a_degree_lbl 54 `"Industry and production"', add
label define cu02a_degree_lbl 58 `"Architecture and construction"', add
label define cu02a_degree_lbl 62 `"Agriculture, forestry and fishing"', add
label define cu02a_degree_lbl 64 `"Veterinary science"', add
label define cu02a_degree_lbl 71 `"Medicine"', add
label define cu02a_degree_lbl 72 `"Stomatology"', add
label define cu02a_degree_lbl 73 `"Nursing"', add
label define cu02a_degree_lbl 74 `"Other health technicians"', add
label define cu02a_degree_lbl 75 `"Sports and physical education"', add
label define cu02a_degree_lbl 76 `"Social services"', add
label define cu02a_degree_lbl 87 `"Other services"', add
label define cu02a_degree_lbl 90 `"Military careers"', add
label define cu02a_degree_lbl 98 `"Unknown"', add
label define cu02a_degree_lbl 99 `"NIU (not in universe)"', add
label values cu02a_degree cu02a_degree_lbl

label define cu02a_marst_lbl 1 `"Married"'
label define cu02a_marst_lbl 2 `"Partnered"', add
label define cu02a_marst_lbl 3 `"Divorced"', add
label define cu02a_marst_lbl 4 `"Separated"', add
label define cu02a_marst_lbl 5 `"Widowed"', add
label define cu02a_marst_lbl 6 `"Single"', add
label define cu02a_marst_lbl 9 `"NIU (not in universe)"', add
label values cu02a_marst cu02a_marst_lbl

label define cu02a_empstat_lbl 01 `"Worked"'
label define cu02a_empstat_lbl 02 `"Had a job, but was not working"', add
label define cu02a_empstat_lbl 03 `"Lost work and was looking for work"', add
label define cu02a_empstat_lbl 04 `"Was looking for work for the first time"', add
label define cu02a_empstat_lbl 05 `"Retired or receiving a pension"', add
label define cu02a_empstat_lbl 06 `"Collects rents or receives economic support"', add
label define cu02a_empstat_lbl 07 `"Housework"', add
label define cu02a_empstat_lbl 08 `"Student"', add
label define cu02a_empstat_lbl 09 `"Incapacitated for work"', add
label define cu02a_empstat_lbl 10 `"Does not work"', add
label define cu02a_empstat_lbl 11 `"In hospital, asylum or prison, does not work"', add
label define cu02a_empstat_lbl 12 `"Other"', add
label define cu02a_empstat_lbl 99 `"NIU (not in universe)"', add
label values cu02a_empstat cu02a_empstat_lbl

label define cu02a_occ_lbl 111 `"Members of the executive branch"'
label define cu02a_occ_lbl 112 `"Public administration"', add
label define cu02a_occ_lbl 115 `"Directors - political and labor organizations"', add
label define cu02a_occ_lbl 116 `"Directors - social, religious organizations"', add
label define cu02a_occ_lbl 141 `"Business directors and managers"', add
label define cu02a_occ_lbl 142 `"Production and operation department heads"', add
label define cu02a_occ_lbl 143 `"Other heads"', add
label define cu02a_occ_lbl 211 `"Physics, chemists"', add
label define cu02a_occ_lbl 212 `"Mathematicians"', add
label define cu02a_occ_lbl 213 `"Informatics specialists"', add
label define cu02a_occ_lbl 214 `"Architects, engineers"', add
label define cu02a_occ_lbl 215 `"Marine and aeronautics navigation professionals"', add
label define cu02a_occ_lbl 216 `"Quality control, security and inspection professionals"', add
label define cu02a_occ_lbl 221 `"Biological sciences professionals"', add
label define cu02a_occ_lbl 222 `"Physicians"', add
label define cu02a_occ_lbl 223 `"Nursing professionals"', add
label define cu02a_occ_lbl 224 `"Public health inspectors"', add
label define cu02a_occ_lbl 231 `"University professors"', add
label define cu02a_occ_lbl 232 `"Secondary education professors"', add
label define cu02a_occ_lbl 233 `"Primary and preschool teachers"', add
label define cu02a_occ_lbl 234 `"Special education teachers"', add
label define cu02a_occ_lbl 235 `"Other education professionals"', add
label define cu02a_occ_lbl 241 `"Business organization and administration specialists"', add
label define cu02a_occ_lbl 242 `"Law professionals"', add
label define cu02a_occ_lbl 243 `"Archivist, librarians, documentarists"', add
label define cu02a_occ_lbl 244 `"Social scientists"', add
label define cu02a_occ_lbl 245 `"Writers"', add
label define cu02a_occ_lbl 246 `"Priests from a religious denomination"', add
label define cu02a_occ_lbl 247 `"Customs and taxes professionals"', add
label define cu02a_occ_lbl 249 `"Other university professionals"', add
label define cu02a_occ_lbl 311 `"Physic and chemistry technicians"', add
label define cu02a_occ_lbl 312 `"Programming and informatics technicians"', add
label define cu02a_occ_lbl 313 `"Optic and electronic equipment technicians"', add
label define cu02a_occ_lbl 314 `"Marine and aeronautics navigation technicians"', add
label define cu02a_occ_lbl 315 `"Quality control, security and inspection technicians"', add
label define cu02a_occ_lbl 321 `"Biological, agronomal, zootechnic sciences technicians"', add
label define cu02a_occ_lbl 322 `"Medical and health professionals"', add
label define cu02a_occ_lbl 323 `"Nursing personnel"', add
label define cu02a_occ_lbl 331 `"Mid-level primary education teachers"', add
label define cu02a_occ_lbl 332 `"Mid-level preschool education teachers"', add
label define cu02a_occ_lbl 333 `"Mid-level special education teachers"', add
label define cu02a_occ_lbl 334 `"Mid-level other teachers"', add
label define cu02a_occ_lbl 341 `"Mid-level financial and commercial professionals"', add
label define cu02a_occ_lbl 342 `"Commercial agents"', add
label define cu02a_occ_lbl 343 `"Mid-level administrative services professionals"', add
label define cu02a_occ_lbl 344 `"Customs and taxes public administrators"', add
label define cu02a_occ_lbl 345 `"Mid-level protection and security technicians"', add
label define cu02a_occ_lbl 346 `"Mid-level social services professionals"', add
label define cu02a_occ_lbl 347 `"Mid-level arts, theater and sport professionals"', add
label define cu02a_occ_lbl 348 `"Lay auxiliaries to religious services"', add
label define cu02a_occ_lbl 349 `"Other mid-level professionals"', add
label define cu02a_occ_lbl 411 `"Assistants, office workers, equipment operators"', add
label define cu02a_occ_lbl 412 `"Auxiliary accountant and finance professionals"', add
label define cu02a_occ_lbl 413 `"Equipment registration and transportation employees"', add
label define cu02a_occ_lbl 414 `"Library, newspaper library, video library employees"', add
label define cu02a_occ_lbl 419 `"Other office workers"', add
label define cu02a_occ_lbl 421 `"Cashiers and ticket clerks"', add
label define cu02a_occ_lbl 422 `"Travel agency, information desk, reception employees"', add
label define cu02a_occ_lbl 511 `"Passenger service professionals, public transportation drivers"', add
label define cu02a_occ_lbl 512 `"Waiters and barmen"', add
label define cu02a_occ_lbl 513 `"Personal care professionals"', add
label define cu02a_occ_lbl 514 `"Other personal services professionals"', add
label define cu02a_occ_lbl 516 `"Protection and security personnel"', add
label define cu02a_occ_lbl 521 `"Models for fashion, art and advertising"', add
label define cu02a_occ_lbl 522 `"Store or franchise owners"', add
label define cu02a_occ_lbl 523 `"Kiosk and market vendors"', add
label define cu02a_occ_lbl 611 `"Farmers and skilled workers in market produce"', add
label define cu02a_occ_lbl 612 `"Qualified cattle growers and workers"', add
label define cu02a_occ_lbl 614 `"Qualified forestry workers"', add
label define cu02a_occ_lbl 615 `"Fishermen, hunters and trappers"', add
label define cu02a_occ_lbl 711 `"Miners, quarrymen"', add
label define cu02a_occ_lbl 712 `"Construction workers (building)"', add
label define cu02a_occ_lbl 713 `"Construction workers (finishing)"', add
label define cu02a_occ_lbl 714 `"Painters, window cleaners"', add
label define cu02a_occ_lbl 721 `"Molders, welders, panel beaters, assemblers"', add
label define cu02a_occ_lbl 722 `"Blacksmith, armoire"', add
label define cu02a_occ_lbl 723 `"Mechanics for cars, planes or farming machinery"', add
label define cu02a_occ_lbl 724 `"Mechanics for electric and electronic equipment"', add
label define cu02a_occ_lbl 731 `"Jewelers and tuners of musical instruments"', add
label define cu02a_occ_lbl 732 `"Potters, crystal craftsmen, engravers and painters of crafts"', add
label define cu02a_occ_lbl 733 `"Wood, fabric or leather craftsmen"', add
label define cu02a_occ_lbl 734 `"Graphic arts craftsmen"', add
label define cu02a_occ_lbl 741 `"Food processing workers"', add
label define cu02a_occ_lbl 742 `"Wood processing and cabinet makers"', add
label define cu02a_occ_lbl 743 `"Textile makers and preparers"', add
label define cu02a_occ_lbl 744 `"Hide, leather and shoes craftsmen"', add
label define cu02a_occ_lbl 811 `"Mine installation and extraction process specialists"', add
label define cu02a_occ_lbl 812 `"Metal processing installation specialists"', add
label define cu02a_occ_lbl 813 `"Glass and ceramic installation specialists"', add
label define cu02a_occ_lbl 814 `"Wood processers and paper makers"', add
label define cu02a_occ_lbl 815 `"Chemical production installation specialists"', add
label define cu02a_occ_lbl 816 `"Energy production installation specialists"', add
label define cu02a_occ_lbl 817 `"Production chain workers"', add
label define cu02a_occ_lbl 821 `"Operators of mechanical equipment for the treatment of metals or production of cement"', add
label define cu02a_occ_lbl 822 `"Operators for the production and processing of chemical materials"', add
label define cu02a_occ_lbl 823 `"Operators for the production of plastic materials"', add
label define cu02a_occ_lbl 824 `"Operators for the production of wood products"', add
label define cu02a_occ_lbl 825 `"Operators for the production of paper products"', add
label define cu02a_occ_lbl 826 `"Operators for the production of textiles and leather"', add
label define cu02a_occ_lbl 827 `"Operators for the food processing production"', add
label define cu02a_occ_lbl 828 `"Machinery assemblers"', add
label define cu02a_occ_lbl 829 `"Other machinery operators"', add
label define cu02a_occ_lbl 831 `"Railway workers"', add
label define cu02a_occ_lbl 832 `"Public and private transportation drivers"', add
label define cu02a_occ_lbl 833 `"Farming and forestry machinery operators"', add
label define cu02a_occ_lbl 834 `"Sailors"', add
label define cu02a_occ_lbl 911 `"Peddlers"', add
label define cu02a_occ_lbl 912 `"Shoe shiners"', add
label define cu02a_occ_lbl 913 `"Domestics"', add
label define cu02a_occ_lbl 914 `"Car and window washers"', add
label define cu02a_occ_lbl 915 `"Messengers, delivery services workers, porters"', add
label define cu02a_occ_lbl 916 `"Trash collectors"', add
label define cu02a_occ_lbl 921 `"Farming/herding, forestry, fishing assistants"', add
label define cu02a_occ_lbl 931 `"Mine and metallurgy assistants and auxiliaries"', add
label define cu02a_occ_lbl 932 `"Manufacturing industry assistants and auxiliaries"', add
label define cu02a_occ_lbl 933 `"Transportation and motorization non-qualified assistants"', add
label define cu02a_occ_lbl 998 `"Unknown"', add
label define cu02a_occ_lbl 999 `"NIU (not in universe)"', add
label values cu02a_occ cu02a_occ_lbl

label define cu02a_ind_lbl 01 `"Agriculture, livestock, hunting and forestry"'
label define cu02a_ind_lbl 02 `"Fishing, including fish farming"', add
label define cu02a_ind_lbl 03 `"Mining and quarrying"', add
label define cu02a_ind_lbl 04 `"Sugar industry"', add
label define cu02a_ind_lbl 05 `"Manufacturing (except sugar industry)"', add
label define cu02a_ind_lbl 06 `"Electric, gas and water supply"', add
label define cu02a_ind_lbl 07 `"Construction"', add
label define cu02a_ind_lbl 08 `"Commerce; repair of personal items"', add
label define cu02a_ind_lbl 09 `"Hotels and restaurants"', add
label define cu02a_ind_lbl 10 `"Transportation, storage and communications"', add
label define cu02a_ind_lbl 11 `"Financial intermediation"', add
label define cu02a_ind_lbl 12 `"Services to businesses, real estate and rental services"', add
label define cu02a_ind_lbl 13 `"Public administration; social security"', add
label define cu02a_ind_lbl 14 `"Science and technological innovation"', add
label define cu02a_ind_lbl 15 `"Education"', add
label define cu02a_ind_lbl 16 `"Public health and social services"', add
label define cu02a_ind_lbl 17 `"Culture; sports"', add
label define cu02a_ind_lbl 18 `"Other jobs related to community service, services to organizations and individuals"', add
label define cu02a_ind_lbl 98 `"Unknown"', add
label define cu02a_ind_lbl 99 `"NIU (not in universe)"', add
label values cu02a_ind cu02a_ind_lbl


