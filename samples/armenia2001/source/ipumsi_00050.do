* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                     ///
  int     cntry          1-3      ///
  int     year           4-7      ///
  int     sample         8-11     ///
  double  serial         12-21    ///
  long    am01a_dwnum    22-26    ///
  byte    am01a_pern     27-27    ///
  int     am01a_marz     28-30    ///
  int     am01a_hamay    31-33    ///
  byte    am01a_urban    34-34    ///
  byte    am01a_owner    35-35    ///
  byte    am01a_hhtype   36-36    ///
  byte    am01a_conyr    37-37    ///
  byte    am01a_walls    38-38    ///
  byte    am01a_heat     39-39    ///
  byte    am01a_fuelck   40-40    ///
  byte    am01a_watsrc   41-41    ///
  byte    am01a_bath     42-42    ///
  byte    am01a_toilet   43-43    ///
  byte    am01a_waste    44-44    ///
  byte    am01a_light    45-45    ///
  byte    am01a_phone    46-46    ///
  byte    am01a_ownty    47-47    ///
  byte    am01a_rooms    48-48    ///
  byte    am01a_roomssh  49-49    ///
  byte    am01a_space    50-50    ///
  byte    am01a_spacelv  51-51    ///
  int     pernum         52-54    ///
  float   wtper          55-62    ///
  byte    am01a_pernum   63-63    ///
  byte    am01a_pernumo  64-64    ///
  byte    am01a_momloco  65-65    ///
  byte    am01a_poploco  66-66    ///
  byte    am01a_sploco   67-67    ///
  byte    am01a_relate   68-69    ///
  byte    am01a_sex      70-70    ///
  byte    am01a_birmon   71-72    ///
  int     am01a_biryear  73-76    ///
  byte    am01a_age      77-78    ///
  byte    am01a_bpl      79-80    ///
  byte    am01a_citiz    81-81    ///
  byte    am01a_ethnic   82-82    ///
  byte    am01a_lang1    83-83    ///
  byte    am01a_lang2    84-84    ///
  byte    am01a_livedb   85-85    ///
  byte    am01a_forcmov  86-86    ///
  int     am01a_prevres  87-89    ///
  int     am01a_resyr    90-93    ///
  byte    am01a_incsrc1  94-95    ///
  byte    am01a_incsrc2  96-97    ///
  byte    am01a_edlev    98-98    ///
  byte    am01a_lit      99-99    ///
  byte    am01a_edtype   100-100  ///
  byte    am01a_chborn   101-101  ///
  byte    am01a_chsurv   102-102  ///
  byte    am01a_marst    103-103  ///
  byte    am01a_worked   104-104  ///
  byte    am01a_ind      105-105  ///
  byte    am01a_occag    106-106  ///
  byte    am01a_classwk  107-107  ///
  byte    am01a_lookwk   108-108  ///
  byte    am01a_readywk  109-109  ///
  byte    am01a_lookfir  110-110  ///
  byte    am01a_whynot   111-111  ///
  using `"ipumsi_00050.dat"'

replace wtper         = wtper         / 100

format serial        %10.0f
format wtper         %8.2f

label var cntry         `"Country"'
label var year          `"Year"'
label var sample        `"IPUMS sample identifier"'
label var serial        `"Household serial number"'
label var am01a_dwnum   `"Dwelling number"'
label var am01a_pern    `"Number of persons in household"'
label var am01a_marz    `"Province (marz)"'
label var am01a_hamay   `"District (Yerevan) or province"'
label var am01a_urban   `"Urban/Rural"'
label var am01a_owner   `"Owner of household"'
label var am01a_hhtype  `"Type of housing"'
label var am01a_conyr   `"Date built"'
label var am01a_walls   `"Wall construction"'
label var am01a_heat    `"Heating source"'
label var am01a_fuelck  `"Source of fuel for cooking"'
label var am01a_watsrc  `"Water source"'
label var am01a_bath    `"Bath or shower"'
label var am01a_toilet  `"Toilet"'
label var am01a_waste   `"Waste disposal"'
label var am01a_light   `"Light source"'
label var am01a_phone   `"Telephone"'
label var am01a_ownty   `"Owner of property"'
label var am01a_rooms   `"Room count, exclusive use"'
label var am01a_roomssh `"Room count, shared"'
label var am01a_space   `"Room size, total"'
label var am01a_spacelv `"Room size, living space"'
label var pernum        `"Person number"'
label var wtper         `"Person weight"'
label var am01a_pernum  `"Person number (within household)"'
label var am01a_pernumo `"Person number"'
label var am01a_momloco `"Mother number"'
label var am01a_poploco `"Father number"'
label var am01a_sploco  `"Spouse number"'
label var am01a_relate  `"Relationship"'
label var am01a_sex     `"Sex"'
label var am01a_birmon  `"Month of birth"'
label var am01a_biryear `"Year of birth"'
label var am01a_age     `"Age"'
label var am01a_bpl     `"Birthplace"'
label var am01a_citiz   `"Citizenship"'
label var am01a_ethnic  `"Ethnicity"'
label var am01a_lang1   `"Mother tongue"'
label var am01a_lang2   `"Second language"'
label var am01a_livedb  `"Lived here since birth"'
label var am01a_forcmov `"Forced to move since 1988"'
label var am01a_prevres `"Previous marz or country of residence"'
label var am01a_resyr   `"Year began living current locality"'
label var am01a_incsrc1 `"Source of livelihood: source 1"'
label var am01a_incsrc2 `"Source of livelihood: source 2"'
label var am01a_edlev   `"Level of education"'
label var am01a_lit     `"Literacy"'
label var am01a_edtype  `"Type of educational institution"'
label var am01a_chborn  `"Number of children ever born"'
label var am01a_chsurv  `"Number of children still alive"'
label var am01a_marst   `"Marital status"'
label var am01a_worked  `"Had a job the week before the census"'
label var am01a_ind     `"Principal activity at place of work"'
label var am01a_occag   `"Occupation in agriculture"'
label var am01a_classwk `"Class of worker"'
label var am01a_lookwk  `"Searched for work"'
label var am01a_readywk `"Available for work in two weeks"'
label var am01a_lookfir `"Looking for work the first time"'
label var am01a_whynot  `"Reason for not looking for work"'

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

label define am01a_pern_lbl 1 `"1"'
label define am01a_pern_lbl 2 `"2"', add
label define am01a_pern_lbl 3 `"3"', add
label define am01a_pern_lbl 4 `"4"', add
label define am01a_pern_lbl 5 `"5"', add
label define am01a_pern_lbl 6 `"6"', add
label define am01a_pern_lbl 7 `"7"', add
label define am01a_pern_lbl 8 `"8"', add
label values am01a_pern am01a_pern_lbl

label define am01a_marz_lbl 901 `"Yerevan"'
label define am01a_marz_lbl 902 `"Aragatsotn"', add
label define am01a_marz_lbl 903 `"Ararat"', add
label define am01a_marz_lbl 904 `"Armavir"', add
label define am01a_marz_lbl 905 `"Gegharkunik"', add
label define am01a_marz_lbl 906 `"Lori"', add
label define am01a_marz_lbl 907 `"Kotayk"', add
label define am01a_marz_lbl 908 `"Shirak"', add
label define am01a_marz_lbl 909 `"Syunik"', add
label define am01a_marz_lbl 910 `"Vayots Dzor"', add
label define am01a_marz_lbl 911 `"Tavush"', add
label values am01a_marz am01a_marz_lbl

label define am01a_hamay_lbl 001 `"Yerevan: Adjapnyak district"'
label define am01a_hamay_lbl 002 `"Yerevan: Avan, Davidashen, Nork-Marash, and Nubarashen districts"', add
label define am01a_hamay_lbl 003 `"Yerevan: Arabkir district"', add
label define am01a_hamay_lbl 005 `"Yerevan: Erebuni district"', add
label define am01a_hamay_lbl 006 `"Yerevan: Kentron district"', add
label define am01a_hamay_lbl 007 `"Yerevan: Malatia-Sebastia district"', add
label define am01a_hamay_lbl 008 `"Yerevan: Nor Nork district"', add
label define am01a_hamay_lbl 011 `"Yerevan: Shengavit district"', add
label define am01a_hamay_lbl 012 `"Yerevan: Kanaker-Zeytun district"', add
label define am01a_hamay_lbl 902 `"Aragatsotn province"', add
label define am01a_hamay_lbl 903 `"Ararat province"', add
label define am01a_hamay_lbl 904 `"Armavir province"', add
label define am01a_hamay_lbl 905 `"Gegharkunik province"', add
label define am01a_hamay_lbl 906 `"Lori province"', add
label define am01a_hamay_lbl 907 `"Kotayk province"', add
label define am01a_hamay_lbl 908 `"Shirak province"', add
label define am01a_hamay_lbl 909 `"Syunik province"', add
label define am01a_hamay_lbl 910 `"Vayots Dzor province"', add
label define am01a_hamay_lbl 911 `"Tavush province"', add
label values am01a_hamay am01a_hamay_lbl

label define am01a_urban_lbl 1 `"Urban"'
label define am01a_urban_lbl 2 `"Rural"', add
label values am01a_urban am01a_urban_lbl

label define am01a_owner_lbl 1 `"Yes"'
label define am01a_owner_lbl 2 `"No"', add
label values am01a_owner am01a_owner_lbl

label define am01a_hhtype_lbl 1 `"Individual house"'
label define am01a_hhtype_lbl 2 `"Part of individual house"', add
label define am01a_hhtype_lbl 3 `"Separate apartment"', add
label define am01a_hhtype_lbl 4 `"Communal apartment"', add
label define am01a_hhtype_lbl 5 `"Cottage or temporary shelter"', add
label values am01a_hhtype am01a_hhtype_lbl

label define am01a_conyr_lbl 1 `"Before 1941"'
label define am01a_conyr_lbl 2 `"1941-1960"', add
label define am01a_conyr_lbl 3 `"1961-1980"', add
label define am01a_conyr_lbl 4 `"1981-1990"', add
label define am01a_conyr_lbl 5 `"1991-2001"', add
label values am01a_conyr am01a_conyr_lbl

label define am01a_walls_lbl 1 `"Stone or brick"'
label define am01a_walls_lbl 2 `"Reinforced concrete"', add
label define am01a_walls_lbl 3 `"Wood"', add
label define am01a_walls_lbl 4 `"Mixed material"', add
label define am01a_walls_lbl 5 `"Other"', add
label values am01a_walls am01a_walls_lbl

label define am01a_heat_lbl 1 `"Central heating"'
label define am01a_heat_lbl 2 `"Gas"', add
label define am01a_heat_lbl 3 `"Electricity"', add
label define am01a_heat_lbl 4 `"Coal"', add
label define am01a_heat_lbl 5 `"Wood"', add
label define am01a_heat_lbl 6 `"Animal dung"', add
label define am01a_heat_lbl 7 `"Oil or petroleum"', add
label define am01a_heat_lbl 8 `"Other"', add
label values am01a_heat am01a_heat_lbl

label define am01a_fuelck_lbl 1 `"Electricity"'
label define am01a_fuelck_lbl 2 `"Gas"', add
label define am01a_fuelck_lbl 3 `"Oil"', add
label define am01a_fuelck_lbl 4 `"Wood"', add
label define am01a_fuelck_lbl 5 `"Other"', add
label values am01a_fuelck am01a_fuelck_lbl

label define am01a_watsrc_lbl 1 `"Within the dwelling unit"'
label define am01a_watsrc_lbl 2 `"In the building, but outside the dwelling unit"', add
label define am01a_watsrc_lbl 3 `"Public water supply (outside the building)"', add
label define am01a_watsrc_lbl 4 `"Individual tank for water collection"', add
label define am01a_watsrc_lbl 5 `"River or spring"', add
label define am01a_watsrc_lbl 6 `"Well"', add
label define am01a_watsrc_lbl 7 `"Other"', add
label values am01a_watsrc am01a_watsrc_lbl

label define am01a_bath_lbl 1 `"Yes, in the dwelling unit"'
label define am01a_bath_lbl 2 `"Yes, in the building, but outside the dwelling unit"', add
label define am01a_bath_lbl 3 `"Yes, outside the building"', add
label define am01a_bath_lbl 4 `"Other"', add
label values am01a_bath am01a_bath_lbl

label define am01a_toilet_lbl 1 `"Flushing, in the dwelling unit"'
label define am01a_toilet_lbl 2 `"Flushing, outside the dwelling unit, for exclusive use by the household"', add
label define am01a_toilet_lbl 3 `"Flushing, outside the dwelling unit, for common use"', add
label define am01a_toilet_lbl 4 `"Non-flushing, outside the dwelling unit, for exclusive use by the household"', add
label define am01a_toilet_lbl 5 `"Non-flushing, outside the dwelling unit, for common use"', add
label define am01a_toilet_lbl 6 `"Other"', add
label values am01a_toilet am01a_toilet_lbl

label define am01a_waste_lbl 1 `"Trash chute, regularly removed"'
label define am01a_waste_lbl 2 `"Trash chute, Irregularly removed"', add
label define am01a_waste_lbl 3 `"Placed in trash bin, regularly removed"', add
label define am01a_waste_lbl 4 `"Placed in trash bin, irregularly removed"', add
label define am01a_waste_lbl 5 `"Other"', add
label values am01a_waste am01a_waste_lbl

label define am01a_light_lbl 1 `"Electricity"'
label define am01a_light_lbl 2 `"Other"', add
label values am01a_light am01a_light_lbl

label define am01a_phone_lbl 1 `"Yes"'
label define am01a_phone_lbl 2 `"No"', add
label define am01a_phone_lbl 9 `"Unknown"', add
label values am01a_phone am01a_phone_lbl

label define am01a_ownty_lbl 1 `"Household member"'
label define am01a_ownty_lbl 2 `"State"', add
label define am01a_ownty_lbl 3 `"Community"', add
label define am01a_ownty_lbl 4 `"Juridical entity"', add
label define am01a_ownty_lbl 5 `"Other"', add
label define am01a_ownty_lbl 9 `"Unknown"', add
label values am01a_ownty am01a_ownty_lbl

label define am01a_rooms_lbl 0 `"0"'
label define am01a_rooms_lbl 1 `"1"', add
label define am01a_rooms_lbl 2 `"2"', add
label define am01a_rooms_lbl 3 `"3"', add
label define am01a_rooms_lbl 4 `"4"', add
label define am01a_rooms_lbl 5 `"5+"', add
label define am01a_rooms_lbl 9 `"Unknown"', add
label values am01a_rooms am01a_rooms_lbl

label define am01a_roomssh_lbl 1 `"Don't share any rooms with another household"'
label define am01a_roomssh_lbl 2 `"Share one or more rooms with another household"', add
label define am01a_roomssh_lbl 9 `"Unknown"', add
label values am01a_roomssh am01a_roomssh_lbl

label define am01a_space_lbl 1 `"3-24 sq. m."'
label define am01a_space_lbl 2 `"25-49 sq. m."', add
label define am01a_space_lbl 3 `"50-74 sq. m"', add
label define am01a_space_lbl 4 `"75-99 sq. m."', add
label define am01a_space_lbl 5 `"100-124 sq. m."', add
label define am01a_space_lbl 6 `"125-149 sq. m."', add
label define am01a_space_lbl 7 `"150-2000 sq. m."', add
label define am01a_space_lbl 9 `"Unknown"', add
label values am01a_space am01a_space_lbl

label define am01a_spacelv_lbl 1 `"1-14 sq. m."'
label define am01a_spacelv_lbl 2 `"15-29 sq. m."', add
label define am01a_spacelv_lbl 3 `"30-44 sq. m."', add
label define am01a_spacelv_lbl 4 `"45-59 sq. m."', add
label define am01a_spacelv_lbl 5 `"60-74 sq. m."', add
label define am01a_spacelv_lbl 6 `"75-89 sq. m."', add
label define am01a_spacelv_lbl 7 `"90-104 sq. m."', add
label define am01a_spacelv_lbl 8 `"105-2000 sq. m."', add
label values am01a_spacelv am01a_spacelv_lbl

label define am01a_pernum_lbl 0 `"Household record"'
label define am01a_pernum_lbl 1 `"1"', add
label define am01a_pernum_lbl 2 `"2"', add
label define am01a_pernum_lbl 3 `"3"', add
label define am01a_pernum_lbl 4 `"4"', add
label define am01a_pernum_lbl 5 `"5"', add
label define am01a_pernum_lbl 6 `"6"', add
label define am01a_pernum_lbl 7 `"7"', add
label define am01a_pernum_lbl 8 `"8"', add
label values am01a_pernum am01a_pernum_lbl

label define am01a_pernumo_lbl 1 `"1"'
label define am01a_pernumo_lbl 2 `"2"', add
label define am01a_pernumo_lbl 3 `"3"', add
label define am01a_pernumo_lbl 4 `"4"', add
label define am01a_pernumo_lbl 5 `"5"', add
label define am01a_pernumo_lbl 6 `"6"', add
label define am01a_pernumo_lbl 7 `"7"', add
label define am01a_pernumo_lbl 8 `"8"', add
label values am01a_pernumo am01a_pernumo_lbl

label define am01a_momloco_lbl 0 `"No mother"'
label define am01a_momloco_lbl 1 `"1"', add
label define am01a_momloco_lbl 2 `"2"', add
label define am01a_momloco_lbl 3 `"3"', add
label define am01a_momloco_lbl 4 `"4"', add
label define am01a_momloco_lbl 5 `"5"', add
label define am01a_momloco_lbl 6 `"6"', add
label define am01a_momloco_lbl 7 `"7"', add
label define am01a_momloco_lbl 8 `"8"', add
label values am01a_momloco am01a_momloco_lbl

label define am01a_poploco_lbl 0 `"No father"'
label define am01a_poploco_lbl 1 `"1"', add
label define am01a_poploco_lbl 2 `"2"', add
label define am01a_poploco_lbl 3 `"3"', add
label define am01a_poploco_lbl 4 `"4"', add
label define am01a_poploco_lbl 5 `"5"', add
label define am01a_poploco_lbl 6 `"6"', add
label define am01a_poploco_lbl 7 `"7"', add
label define am01a_poploco_lbl 8 `"8"', add
label values am01a_poploco am01a_poploco_lbl

label define am01a_sploco_lbl 0 `"No spouse"'
label define am01a_sploco_lbl 1 `"1"', add
label define am01a_sploco_lbl 2 `"2"', add
label define am01a_sploco_lbl 3 `"3"', add
label define am01a_sploco_lbl 4 `"4"', add
label define am01a_sploco_lbl 5 `"5"', add
label define am01a_sploco_lbl 6 `"6"', add
label define am01a_sploco_lbl 7 `"7"', add
label define am01a_sploco_lbl 8 `"8"', add
label values am01a_sploco am01a_sploco_lbl

label define am01a_relate_lbl 01 `"Head"'
label define am01a_relate_lbl 02 `"Spouse"', add
label define am01a_relate_lbl 03 `"Daughter or son"', add
label define am01a_relate_lbl 04 `"Mother or father"', add
label define am01a_relate_lbl 05 `"Sister or brother"', add
label define am01a_relate_lbl 06 `"Parent-in-law"', add
label define am01a_relate_lbl 07 `"Daughter-in-law or son-in-law"', add
label define am01a_relate_lbl 08 `"Grandparent"', add
label define am01a_relate_lbl 09 `"Grandchild"', add
label define am01a_relate_lbl 10 `"Other relative"', add
label define am01a_relate_lbl 11 `"Non-relative"', add
label values am01a_relate am01a_relate_lbl

label define am01a_sex_lbl 1 `"Male"'
label define am01a_sex_lbl 2 `"Female"', add
label values am01a_sex am01a_sex_lbl

label define am01a_birmon_lbl 01 `"1"'
label define am01a_birmon_lbl 02 `"2"', add
label define am01a_birmon_lbl 03 `"3"', add
label define am01a_birmon_lbl 04 `"4"', add
label define am01a_birmon_lbl 05 `"5"', add
label define am01a_birmon_lbl 06 `"6"', add
label define am01a_birmon_lbl 07 `"7"', add
label define am01a_birmon_lbl 08 `"8"', add
label define am01a_birmon_lbl 09 `"9"', add
label define am01a_birmon_lbl 10 `"10"', add
label define am01a_birmon_lbl 11 `"11"', add
label define am01a_birmon_lbl 12 `"12"', add
label define am01a_birmon_lbl 99 `"Unknown"', add
label values am01a_birmon am01a_birmon_lbl

label define am01a_biryear_lbl 1920 `"1920 or earlier"'
label define am01a_biryear_lbl 1921 `"1921"', add
label define am01a_biryear_lbl 1922 `"1922"', add
label define am01a_biryear_lbl 1923 `"1923"', add
label define am01a_biryear_lbl 1924 `"1924"', add
label define am01a_biryear_lbl 1925 `"1925"', add
label define am01a_biryear_lbl 1926 `"1926"', add
label define am01a_biryear_lbl 1927 `"1927"', add
label define am01a_biryear_lbl 1928 `"1928"', add
label define am01a_biryear_lbl 1929 `"1929"', add
label define am01a_biryear_lbl 1930 `"1930"', add
label define am01a_biryear_lbl 1931 `"1931"', add
label define am01a_biryear_lbl 1932 `"1932"', add
label define am01a_biryear_lbl 1933 `"1933"', add
label define am01a_biryear_lbl 1934 `"1934"', add
label define am01a_biryear_lbl 1935 `"1935"', add
label define am01a_biryear_lbl 1936 `"1936"', add
label define am01a_biryear_lbl 1937 `"1937"', add
label define am01a_biryear_lbl 1938 `"1938"', add
label define am01a_biryear_lbl 1939 `"1939"', add
label define am01a_biryear_lbl 1940 `"1940"', add
label define am01a_biryear_lbl 1941 `"1941"', add
label define am01a_biryear_lbl 1942 `"1942"', add
label define am01a_biryear_lbl 1943 `"1943"', add
label define am01a_biryear_lbl 1944 `"1944"', add
label define am01a_biryear_lbl 1945 `"1945"', add
label define am01a_biryear_lbl 1946 `"1946"', add
label define am01a_biryear_lbl 1947 `"1947"', add
label define am01a_biryear_lbl 1948 `"1948"', add
label define am01a_biryear_lbl 1949 `"1949"', add
label define am01a_biryear_lbl 1950 `"1950"', add
label define am01a_biryear_lbl 1951 `"1951"', add
label define am01a_biryear_lbl 1952 `"1952"', add
label define am01a_biryear_lbl 1953 `"1953"', add
label define am01a_biryear_lbl 1954 `"1954"', add
label define am01a_biryear_lbl 1955 `"1955"', add
label define am01a_biryear_lbl 1956 `"1956"', add
label define am01a_biryear_lbl 1957 `"1957"', add
label define am01a_biryear_lbl 1958 `"1958"', add
label define am01a_biryear_lbl 1959 `"1959"', add
label define am01a_biryear_lbl 1960 `"1960"', add
label define am01a_biryear_lbl 1961 `"1961"', add
label define am01a_biryear_lbl 1962 `"1962"', add
label define am01a_biryear_lbl 1963 `"1963"', add
label define am01a_biryear_lbl 1964 `"1964"', add
label define am01a_biryear_lbl 1965 `"1965"', add
label define am01a_biryear_lbl 1966 `"1966"', add
label define am01a_biryear_lbl 1967 `"1967"', add
label define am01a_biryear_lbl 1968 `"1968"', add
label define am01a_biryear_lbl 1969 `"1969"', add
label define am01a_biryear_lbl 1970 `"1970"', add
label define am01a_biryear_lbl 1971 `"1971"', add
label define am01a_biryear_lbl 1972 `"1972"', add
label define am01a_biryear_lbl 1973 `"1973"', add
label define am01a_biryear_lbl 1974 `"1974"', add
label define am01a_biryear_lbl 1975 `"1975"', add
label define am01a_biryear_lbl 1976 `"1976"', add
label define am01a_biryear_lbl 1977 `"1977"', add
label define am01a_biryear_lbl 1978 `"1978"', add
label define am01a_biryear_lbl 1979 `"1979"', add
label define am01a_biryear_lbl 1980 `"1980"', add
label define am01a_biryear_lbl 1981 `"1981"', add
label define am01a_biryear_lbl 1982 `"1982"', add
label define am01a_biryear_lbl 1983 `"1983"', add
label define am01a_biryear_lbl 1984 `"1984"', add
label define am01a_biryear_lbl 1985 `"1985"', add
label define am01a_biryear_lbl 1986 `"1986"', add
label define am01a_biryear_lbl 1987 `"1987"', add
label define am01a_biryear_lbl 1988 `"1988"', add
label define am01a_biryear_lbl 1989 `"1989"', add
label define am01a_biryear_lbl 1990 `"1990"', add
label define am01a_biryear_lbl 1991 `"1991"', add
label define am01a_biryear_lbl 1992 `"1992"', add
label define am01a_biryear_lbl 1993 `"1993"', add
label define am01a_biryear_lbl 1994 `"1994"', add
label define am01a_biryear_lbl 1995 `"1995"', add
label define am01a_biryear_lbl 1996 `"1996"', add
label define am01a_biryear_lbl 1997 `"1997"', add
label define am01a_biryear_lbl 1998 `"1998"', add
label define am01a_biryear_lbl 1999 `"1999"', add
label define am01a_biryear_lbl 2000 `"2000"', add
label define am01a_biryear_lbl 2001 `"2001"', add
label values am01a_biryear am01a_biryear_lbl

label define am01a_age_lbl 00 `"Under 1 year"'
label define am01a_age_lbl 01 `"1"', add
label define am01a_age_lbl 02 `"2"', add
label define am01a_age_lbl 03 `"3"', add
label define am01a_age_lbl 04 `"4"', add
label define am01a_age_lbl 05 `"5"', add
label define am01a_age_lbl 06 `"6"', add
label define am01a_age_lbl 07 `"7"', add
label define am01a_age_lbl 08 `"8"', add
label define am01a_age_lbl 09 `"9"', add
label define am01a_age_lbl 10 `"10"', add
label define am01a_age_lbl 11 `"11"', add
label define am01a_age_lbl 12 `"12"', add
label define am01a_age_lbl 13 `"13"', add
label define am01a_age_lbl 14 `"14"', add
label define am01a_age_lbl 15 `"15"', add
label define am01a_age_lbl 16 `"16"', add
label define am01a_age_lbl 17 `"17"', add
label define am01a_age_lbl 18 `"18"', add
label define am01a_age_lbl 19 `"19"', add
label define am01a_age_lbl 20 `"20"', add
label define am01a_age_lbl 21 `"21"', add
label define am01a_age_lbl 22 `"22"', add
label define am01a_age_lbl 23 `"23"', add
label define am01a_age_lbl 24 `"24"', add
label define am01a_age_lbl 25 `"25"', add
label define am01a_age_lbl 26 `"26"', add
label define am01a_age_lbl 27 `"27"', add
label define am01a_age_lbl 28 `"28"', add
label define am01a_age_lbl 29 `"29"', add
label define am01a_age_lbl 30 `"30"', add
label define am01a_age_lbl 31 `"31"', add
label define am01a_age_lbl 32 `"32"', add
label define am01a_age_lbl 33 `"33"', add
label define am01a_age_lbl 34 `"34"', add
label define am01a_age_lbl 35 `"35"', add
label define am01a_age_lbl 36 `"36"', add
label define am01a_age_lbl 37 `"37"', add
label define am01a_age_lbl 38 `"38"', add
label define am01a_age_lbl 39 `"39"', add
label define am01a_age_lbl 40 `"40"', add
label define am01a_age_lbl 41 `"41"', add
label define am01a_age_lbl 42 `"42"', add
label define am01a_age_lbl 43 `"43"', add
label define am01a_age_lbl 44 `"44"', add
label define am01a_age_lbl 45 `"45"', add
label define am01a_age_lbl 46 `"46"', add
label define am01a_age_lbl 47 `"47"', add
label define am01a_age_lbl 48 `"48"', add
label define am01a_age_lbl 49 `"49"', add
label define am01a_age_lbl 50 `"50"', add
label define am01a_age_lbl 51 `"51"', add
label define am01a_age_lbl 52 `"52"', add
label define am01a_age_lbl 53 `"53"', add
label define am01a_age_lbl 54 `"54"', add
label define am01a_age_lbl 55 `"55"', add
label define am01a_age_lbl 56 `"56"', add
label define am01a_age_lbl 57 `"57"', add
label define am01a_age_lbl 58 `"58"', add
label define am01a_age_lbl 59 `"59"', add
label define am01a_age_lbl 60 `"60"', add
label define am01a_age_lbl 61 `"61"', add
label define am01a_age_lbl 62 `"62"', add
label define am01a_age_lbl 63 `"63"', add
label define am01a_age_lbl 64 `"64"', add
label define am01a_age_lbl 65 `"65"', add
label define am01a_age_lbl 66 `"66"', add
label define am01a_age_lbl 67 `"67"', add
label define am01a_age_lbl 68 `"68"', add
label define am01a_age_lbl 69 `"69"', add
label define am01a_age_lbl 70 `"70"', add
label define am01a_age_lbl 71 `"71"', add
label define am01a_age_lbl 72 `"72"', add
label define am01a_age_lbl 73 `"73"', add
label define am01a_age_lbl 74 `"74"', add
label define am01a_age_lbl 75 `"75"', add
label define am01a_age_lbl 76 `"76"', add
label define am01a_age_lbl 77 `"77"', add
label define am01a_age_lbl 78 `"78"', add
label define am01a_age_lbl 79 `"79"', add
label define am01a_age_lbl 80 `"80+"', add
label values am01a_age am01a_age_lbl

label define am01a_bpl_lbl 01 `"Yerevan"'
label define am01a_bpl_lbl 02 `"Aragatsotn"', add
label define am01a_bpl_lbl 03 `"Ararat"', add
label define am01a_bpl_lbl 04 `"Armavir"', add
label define am01a_bpl_lbl 05 `"Gegharkunik"', add
label define am01a_bpl_lbl 06 `"Lori"', add
label define am01a_bpl_lbl 07 `"Kotayk"', add
label define am01a_bpl_lbl 08 `"Shirak"', add
label define am01a_bpl_lbl 09 `"Syunik"', add
label define am01a_bpl_lbl 10 `"Vayots Dzor"', add
label define am01a_bpl_lbl 11 `"Tavush"', add
label define am01a_bpl_lbl 12 `"Nagorno-Karabagh"', add
label define am01a_bpl_lbl 13 `"Former Soviet Union"', add
label define am01a_bpl_lbl 14 `"Other"', add
label values am01a_bpl am01a_bpl_lbl

label define am01a_citiz_lbl 1 `"Armenian"'
label define am01a_citiz_lbl 2 `"Russian"', add
label define am01a_citiz_lbl 3 `"Other"', add
label define am01a_citiz_lbl 4 `"No citizenship"', add
label values am01a_citiz am01a_citiz_lbl

label define am01a_ethnic_lbl 1 `"Armenian"'
label define am01a_ethnic_lbl 2 `"Russian"', add
label define am01a_ethnic_lbl 3 `"Other"', add
label values am01a_ethnic am01a_ethnic_lbl

label define am01a_lang1_lbl 1 `"Armenian"'
label define am01a_lang1_lbl 2 `"Russian"', add
label define am01a_lang1_lbl 3 `"Other"', add
label values am01a_lang1 am01a_lang1_lbl

label define am01a_lang2_lbl 1 `"Armenian"'
label define am01a_lang2_lbl 2 `"Russian"', add
label define am01a_lang2_lbl 3 `"Other"', add
label define am01a_lang2_lbl 4 `"Not stated"', add
label values am01a_lang2 am01a_lang2_lbl

label define am01a_livedb_lbl 1 `"Yes"'
label define am01a_livedb_lbl 2 `"No"', add
label values am01a_livedb am01a_livedb_lbl

label define am01a_forcmov_lbl 1 `"Yes, due to war in territories bordering Armenia"'
label define am01a_forcmov_lbl 2 `"Yes, due to earthquake within Armenia"', add
label define am01a_forcmov_lbl 3 `"Yes, forcibly removed from Azerbaijhan"', add
label define am01a_forcmov_lbl 4 `"Yes, forcilby removed from Nagorno-Karabagh"', add
label define am01a_forcmov_lbl 5 `"Yes, forcibly removed from other countries"', add
label define am01a_forcmov_lbl 6 `"No, not forced to move"', add
label define am01a_forcmov_lbl 8 `"Unknown"', add
label define am01a_forcmov_lbl 9 `"NIU (not in universe)"', add
label values am01a_forcmov am01a_forcmov_lbl

label define am01a_prevres_lbl 031 `"Azerbaijan"'
label define am01a_prevres_lbl 100 `"Bulgaria"', add
label define am01a_prevres_lbl 112 `"Belarus"', add
label define am01a_prevres_lbl 250 `"France"', add
label define am01a_prevres_lbl 268 `"Georgia"', add
label define am01a_prevres_lbl 276 `"Germany"', add
label define am01a_prevres_lbl 300 `"Greece"', add
label define am01a_prevres_lbl 364 `"Iran"', add
label define am01a_prevres_lbl 368 `"Iraq"', add
label define am01a_prevres_lbl 398 `"Kazakhstan"', add
label define am01a_prevres_lbl 422 `"Lebanon"', add
label define am01a_prevres_lbl 498 `"Moldova"', add
label define am01a_prevres_lbl 616 `"Poland"', add
label define am01a_prevres_lbl 642 `"Romania"', add
label define am01a_prevres_lbl 643 `"Russian Federation"', add
label define am01a_prevres_lbl 760 `"Syrian"', add
label define am01a_prevres_lbl 792 `"Turkey"', add
label define am01a_prevres_lbl 795 `"Turkmenistan"', add
label define am01a_prevres_lbl 804 `"Ukraine"', add
label define am01a_prevres_lbl 818 `"Egypt"', add
label define am01a_prevres_lbl 860 `"Uzbekistan"', add
label define am01a_prevres_lbl 900 `"Other country -- response suppressed"', add
label define am01a_prevres_lbl 901 `"Yerevan (province)"', add
label define am01a_prevres_lbl 902 `"Aragatsotn (province)"', add
label define am01a_prevres_lbl 903 `"Ararat (province)"', add
label define am01a_prevres_lbl 904 `"Armavir (province)"', add
label define am01a_prevres_lbl 905 `"Gegharkunik (province)"', add
label define am01a_prevres_lbl 906 `"Lori (province)"', add
label define am01a_prevres_lbl 907 `"Kotayk (province)"', add
label define am01a_prevres_lbl 908 `"Shirak (province)"', add
label define am01a_prevres_lbl 909 `"Syunik (province)"', add
label define am01a_prevres_lbl 910 `"Vayots Dzor (province)"', add
label define am01a_prevres_lbl 911 `"Tavush (province)"', add
label define am01a_prevres_lbl 912 `"Nagorno-Karabagh (province)"', add
label define am01a_prevres_lbl 998 `"Unknown"', add
label define am01a_prevres_lbl 999 `"NIU (not in universe)"', add
label values am01a_prevres am01a_prevres_lbl

label define am01a_resyr_lbl 1915 `"1915 or earlier"'
label define am01a_resyr_lbl 1916 `"1916"', add
label define am01a_resyr_lbl 1917 `"1917"', add
label define am01a_resyr_lbl 1918 `"1918"', add
label define am01a_resyr_lbl 1919 `"1919"', add
label define am01a_resyr_lbl 1920 `"1920"', add
label define am01a_resyr_lbl 1921 `"1921"', add
label define am01a_resyr_lbl 1922 `"1922"', add
label define am01a_resyr_lbl 1923 `"1923"', add
label define am01a_resyr_lbl 1924 `"1924"', add
label define am01a_resyr_lbl 1925 `"1925"', add
label define am01a_resyr_lbl 1926 `"1926"', add
label define am01a_resyr_lbl 1927 `"1927"', add
label define am01a_resyr_lbl 1928 `"1928"', add
label define am01a_resyr_lbl 1929 `"1929"', add
label define am01a_resyr_lbl 1930 `"1930"', add
label define am01a_resyr_lbl 1931 `"1931"', add
label define am01a_resyr_lbl 1932 `"1932"', add
label define am01a_resyr_lbl 1933 `"1933"', add
label define am01a_resyr_lbl 1934 `"1934"', add
label define am01a_resyr_lbl 1935 `"1935"', add
label define am01a_resyr_lbl 1936 `"1936"', add
label define am01a_resyr_lbl 1937 `"1937"', add
label define am01a_resyr_lbl 1938 `"1938"', add
label define am01a_resyr_lbl 1939 `"1939"', add
label define am01a_resyr_lbl 1940 `"1940"', add
label define am01a_resyr_lbl 1941 `"1941"', add
label define am01a_resyr_lbl 1942 `"1942"', add
label define am01a_resyr_lbl 1943 `"1943"', add
label define am01a_resyr_lbl 1944 `"1944"', add
label define am01a_resyr_lbl 1945 `"1945"', add
label define am01a_resyr_lbl 1946 `"1946"', add
label define am01a_resyr_lbl 1947 `"1947"', add
label define am01a_resyr_lbl 1948 `"1948"', add
label define am01a_resyr_lbl 1949 `"1949"', add
label define am01a_resyr_lbl 1950 `"1950"', add
label define am01a_resyr_lbl 1951 `"1951"', add
label define am01a_resyr_lbl 1952 `"1952"', add
label define am01a_resyr_lbl 1953 `"1953"', add
label define am01a_resyr_lbl 1954 `"1954"', add
label define am01a_resyr_lbl 1955 `"1955"', add
label define am01a_resyr_lbl 1956 `"1956"', add
label define am01a_resyr_lbl 1957 `"1957"', add
label define am01a_resyr_lbl 1958 `"1958"', add
label define am01a_resyr_lbl 1959 `"1959"', add
label define am01a_resyr_lbl 1960 `"1960"', add
label define am01a_resyr_lbl 1961 `"1961"', add
label define am01a_resyr_lbl 1962 `"1962"', add
label define am01a_resyr_lbl 1963 `"1963"', add
label define am01a_resyr_lbl 1964 `"1964"', add
label define am01a_resyr_lbl 1965 `"1965"', add
label define am01a_resyr_lbl 1966 `"1966"', add
label define am01a_resyr_lbl 1967 `"1967"', add
label define am01a_resyr_lbl 1968 `"1968"', add
label define am01a_resyr_lbl 1969 `"1969"', add
label define am01a_resyr_lbl 1970 `"1970"', add
label define am01a_resyr_lbl 1971 `"1971"', add
label define am01a_resyr_lbl 1972 `"1972"', add
label define am01a_resyr_lbl 1973 `"1973"', add
label define am01a_resyr_lbl 1974 `"1974"', add
label define am01a_resyr_lbl 1975 `"1975"', add
label define am01a_resyr_lbl 1976 `"1976"', add
label define am01a_resyr_lbl 1977 `"1977"', add
label define am01a_resyr_lbl 1978 `"1978"', add
label define am01a_resyr_lbl 1979 `"1979"', add
label define am01a_resyr_lbl 1980 `"1980"', add
label define am01a_resyr_lbl 1981 `"1981"', add
label define am01a_resyr_lbl 1982 `"1982"', add
label define am01a_resyr_lbl 1983 `"1983"', add
label define am01a_resyr_lbl 1984 `"1984"', add
label define am01a_resyr_lbl 1985 `"1985"', add
label define am01a_resyr_lbl 1986 `"1986"', add
label define am01a_resyr_lbl 1987 `"1987"', add
label define am01a_resyr_lbl 1988 `"1988"', add
label define am01a_resyr_lbl 1989 `"1989"', add
label define am01a_resyr_lbl 1990 `"1990"', add
label define am01a_resyr_lbl 1991 `"1991"', add
label define am01a_resyr_lbl 1992 `"1992"', add
label define am01a_resyr_lbl 1993 `"1993"', add
label define am01a_resyr_lbl 1994 `"1994"', add
label define am01a_resyr_lbl 1995 `"1995"', add
label define am01a_resyr_lbl 1996 `"1996"', add
label define am01a_resyr_lbl 1997 `"1997"', add
label define am01a_resyr_lbl 1998 `"1998"', add
label define am01a_resyr_lbl 1999 `"1999"', add
label define am01a_resyr_lbl 2000 `"2000"', add
label define am01a_resyr_lbl 2001 `"2001"', add
label define am01a_resyr_lbl 9998 `"Unknown"', add
label define am01a_resyr_lbl 9999 `"NIU (not in universe)"', add
label values am01a_resyr am01a_resyr_lbl

label define am01a_incsrc1_lbl 01 `"Job (except at own residence)"'
label define am01a_incsrc1_lbl 02 `"Job at your own residence"', add
label define am01a_incsrc1_lbl 03 `"Income from ownership"', add
label define am01a_incsrc1_lbl 04 `"Scholarship"', add
label define am01a_incsrc1_lbl 05 `"Pension"', add
label define am01a_incsrc1_lbl 06 `"Allowance (except unemployment)"', add
label define am01a_incsrc1_lbl 07 `"Unemployment allowance"', add
label define am01a_incsrc1_lbl 08 `"Under state security or care"', add
label define am01a_incsrc1_lbl 09 `"Other monetary assistance, state sources"', add
label define am01a_incsrc1_lbl 10 `"Other monetary assistance, non-state sources"', add
label define am01a_incsrc1_lbl 11 `"Under care"', add
label define am01a_incsrc1_lbl 12 `"Other sources"', add
label values am01a_incsrc1 am01a_incsrc1_lbl

label define am01a_incsrc2_lbl 01 `"Job (except at own residence)"'
label define am01a_incsrc2_lbl 02 `"Job at your own residence"', add
label define am01a_incsrc2_lbl 03 `"Income from ownership"', add
label define am01a_incsrc2_lbl 04 `"Scholarship"', add
label define am01a_incsrc2_lbl 05 `"Pension"', add
label define am01a_incsrc2_lbl 06 `"Allowance (except unemployment)"', add
label define am01a_incsrc2_lbl 07 `"Unemployment allowance"', add
label define am01a_incsrc2_lbl 08 `"Under state security/care"', add
label define am01a_incsrc2_lbl 09 `"Other monetary assistance, state sources"', add
label define am01a_incsrc2_lbl 10 `"Other monetary assistance, non-state sources"', add
label define am01a_incsrc2_lbl 11 `"Under care"', add
label define am01a_incsrc2_lbl 98 `"Undocumented"', add
label define am01a_incsrc2_lbl 99 `"NIU (not in universe)"', add
label values am01a_incsrc2 am01a_incsrc2_lbl

label define am01a_edlev_lbl 0 `"NIU (not in universe)"'
label define am01a_edlev_lbl 1 `"No elementary"', add
label define am01a_edlev_lbl 2 `"General elementary"', add
label define am01a_edlev_lbl 3 `"General basic"', add
label define am01a_edlev_lbl 4 `"General secondary"', add
label define am01a_edlev_lbl 5 `"Preliminary professional"', add
label define am01a_edlev_lbl 6 `"Middle professional"', add
label define am01a_edlev_lbl 7 `"Incomplete professional"', add
label define am01a_edlev_lbl 8 `"Higher professional"', add
label define am01a_edlev_lbl 9 `"Doctor of Science, PhD, or post-graduate professional"', add
label values am01a_edlev am01a_edlev_lbl

label define am01a_lit_lbl 1 `"Literate"'
label define am01a_lit_lbl 2 `"Illiterate"', add
label define am01a_lit_lbl 8 `"Unknown"', add
label define am01a_lit_lbl 9 `"NIU (not in universe)"', add
label values am01a_lit am01a_lit_lbl

label define am01a_edtype_lbl 1 `"Yes, postgraduate"'
label define am01a_edtype_lbl 2 `"Yes, higher professional"', add
label define am01a_edtype_lbl 3 `"Yes, secondary professional"', add
label define am01a_edtype_lbl 4 `"Yes, secondary basic"', add
label define am01a_edtype_lbl 5 `"Yes, additional education"', add
label define am01a_edtype_lbl 6 `"No, not currently studying"', add
label define am01a_edtype_lbl 9 `"NIU (not in universe)"', add
label values am01a_edtype am01a_edtype_lbl

label define am01a_chborn_lbl 0 `"0"'
label define am01a_chborn_lbl 1 `"1"', add
label define am01a_chborn_lbl 2 `"2"', add
label define am01a_chborn_lbl 3 `"3"', add
label define am01a_chborn_lbl 4 `"4"', add
label define am01a_chborn_lbl 5 `"5"', add
label define am01a_chborn_lbl 6 `"6"', add
label define am01a_chborn_lbl 7 `"7+"', add
label define am01a_chborn_lbl 9 `"NIU (not in universe)"', add
label values am01a_chborn am01a_chborn_lbl

label define am01a_chsurv_lbl 0 `"0"'
label define am01a_chsurv_lbl 1 `"1"', add
label define am01a_chsurv_lbl 2 `"2"', add
label define am01a_chsurv_lbl 3 `"3"', add
label define am01a_chsurv_lbl 4 `"4"', add
label define am01a_chsurv_lbl 5 `"5"', add
label define am01a_chsurv_lbl 6 `"6"', add
label define am01a_chsurv_lbl 7 `"7+"', add
label define am01a_chsurv_lbl 9 `"NIU (not in universe)"', add
label values am01a_chsurv am01a_chsurv_lbl

label define am01a_marst_lbl 1 `"Never married"'
label define am01a_marst_lbl 2 `"Married, legally registered"', add
label define am01a_marst_lbl 3 `"Married, unregistered"', add
label define am01a_marst_lbl 4 `"Married, living separately"', add
label define am01a_marst_lbl 5 `"Widowed"', add
label define am01a_marst_lbl 6 `"Divorced, legally registered"', add
label define am01a_marst_lbl 7 `"Divorced, unregistered"', add
label define am01a_marst_lbl 9 `"NIU (not in universe)"', add
label values am01a_marst am01a_marst_lbl

label define am01a_worked_lbl 1 `"Yes"'
label define am01a_worked_lbl 2 `"No"', add
label define am01a_worked_lbl 9 `"NIU (not in universe)"', add
label values am01a_worked am01a_worked_lbl

label define am01a_ind_lbl 1 `"Agriculture"'
label define am01a_ind_lbl 2 `"Manufacturing"', add
label define am01a_ind_lbl 3 `"Trade"', add
label define am01a_ind_lbl 4 `"Public administration"', add
label define am01a_ind_lbl 5 `"Education"', add
label define am01a_ind_lbl 6 `"Other"', add
label define am01a_ind_lbl 8 `"Unknown"', add
label define am01a_ind_lbl 9 `"NIU (not in universe)"', add
label values am01a_ind am01a_ind_lbl

label define am01a_occag_lbl 1 `"Agriculture"'
label define am01a_occag_lbl 2 `"Non-agriculture"', add
label define am01a_occag_lbl 8 `"Unknown"', add
label define am01a_occag_lbl 9 `"NIU (not in universe)"', add
label values am01a_occag am01a_occag_lbl

label define am01a_classwk_lbl 0 `"NIU (not in universe)"'
label define am01a_classwk_lbl 1 `"Employee"', add
label define am01a_classwk_lbl 2 `"Employer"', add
label define am01a_classwk_lbl 3 `"Cooperative (industrial) member"', add
label define am01a_classwk_lbl 4 `"Entrepreneur"', add
label define am01a_classwk_lbl 5 `"Self-employed"', add
label define am01a_classwk_lbl 6 `"Family member assisting family business"', add
label define am01a_classwk_lbl 7 `"Member of farming household"', add
label define am01a_classwk_lbl 8 `"Other"', add
label define am01a_classwk_lbl 9 `"Unknown"', add
label values am01a_classwk am01a_classwk_lbl

label define am01a_lookwk_lbl 1 `"Yes"'
label define am01a_lookwk_lbl 2 `"No"', add
label define am01a_lookwk_lbl 9 `"NIU (not in universe)"', add
label values am01a_lookwk am01a_lookwk_lbl

label define am01a_readywk_lbl 1 `"Yes"'
label define am01a_readywk_lbl 2 `"No"', add
label define am01a_readywk_lbl 9 `"NIU (not in universe)"', add
label values am01a_readywk am01a_readywk_lbl

label define am01a_lookfir_lbl 1 `"Yes"'
label define am01a_lookfir_lbl 2 `"No"', add
label define am01a_lookfir_lbl 9 `"NIU (not in universe)"', add
label values am01a_lookfir am01a_lookfir_lbl

label define am01a_whynot_lbl 1 `"Applied for work and will start working soon"'
label define am01a_whynot_lbl 2 `"Applied for a job and waiting for an answer"', add
label define am01a_whynot_lbl 3 `"Homemaker"', add
label define am01a_whynot_lbl 4 `"No hope of finding a job"', add
label define am01a_whynot_lbl 5 `"No need to work"', add
label define am01a_whynot_lbl 6 `"Student"', add
label define am01a_whynot_lbl 7 `"Age, health"', add
label define am01a_whynot_lbl 8 `"Other"', add
label define am01a_whynot_lbl 9 `"NIU (not in universe)"', add
label values am01a_whynot am01a_whynot_lbl


