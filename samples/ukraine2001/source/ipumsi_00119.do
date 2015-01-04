* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    ua01a_dwnum     22-28    ///
  byte    ua01a_pern      29-30    ///
  long    ua01a_raion     31-35    ///
  byte    ua01a_region    36-37    ///
  byte    ua01a_urban     38-38    ///
  byte    ua01a_homeless  39-39    ///
  byte    ua01a_inst      40-40    ///
  byte    ua01a_typehh    41-41    ///
  byte    ua01a_flrspace  42-42    ///
  byte    ua01a_rooms     43-43    ///
  int     pernum          44-46    ///
  float   wtper           47-54    ///
  byte    resident        55-55    ///
  byte    ua01a_chborn    56-57    ///
  byte    ua01a_sex       58-58    ///
  byte    ua01a_age       59-60    ///
  int     ua01a_birthyr   61-64    ///
  byte    ua01a_marst     65-65    ///
  byte    ua01a_ethnic    66-67    ///
  byte    ua01a_mtong     68-69    ///
  byte    ua01a_langoth   70-71    ///
  byte    ua01a_langukr   72-72    ///
  byte    ua01a_edattan   73-74    ///
  byte    ua01a_vocschl   75-75    ///
  byte    ua01a_edtype    76-76    ///
  byte    ua01a_preschl   77-77    ///
  byte    ua01a_incsrc    78-79    ///
  byte    ua01a_wkent     80-80    ///
  byte    ua01a_wkpriv    81-81    ///
  byte    ua01a_wkse      82-82    ///
  byte    ua01a_wkind     83-83    ///
  byte    ua01a_wkag      84-84    ///
  byte    ua01a_wkfambus  85-85    ///
  byte    ua01a_wksubag   86-86    ///
  byte    ua01a_incprop   87-87    ///
  byte    ua01a_incpens   88-88    ///
  byte    ua01a_incschl   89-89    ///
  byte    ua01a_incasst   90-90    ///
  byte    ua01a_incue     91-91    ///
  byte    ua01a_incpub    92-92    ///
  byte    ua01a_incdep    93-93    ///
  byte    ua01a_incoth    94-94    ///
  byte    ua01a_classwk   95-95    ///
  byte    ua01a_wkhere    96-96    ///
  int     ua01a_wkaway    97-99    ///
  int     ua01a_bpl       100-102  ///
  int     ua01a_prevres   103-105  ///
  byte    ua01a_resstat   106-106  ///
  byte    ua01a_moved     107-107  ///
  byte    ua01a_rescont   108-108  ///
  byte    ua01a_chborn2   109-109  ///
  byte    ua01a_headhh    110-110  ///
  byte    ua01a_famunit   111-111  ///
  using `"ipumsi_00119.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var ua01a_dwnum    `"Dwelling number"'
label var ua01a_pern     `"Number of persons in household"'
label var ua01a_raion    `"Administrative territory (Raion)"'
label var ua01a_region   `"Region"'
label var ua01a_urban    `"Urban- rural"'
label var ua01a_homeless `"Homeless"'
label var ua01a_inst     `"Institutions"'
label var ua01a_typehh   `"Type of premises"'
label var ua01a_flrspace `"Dwelling size, floor space"'
label var ua01a_rooms    `"Number of rooms"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var resident       `"Residence status: de facto, de jure"'
label var ua01a_chborn   `"Children ever born"'
label var ua01a_sex      `"Sex"'
label var ua01a_age      `"Age"'
label var ua01a_birthyr  `"Year of birth"'
label var ua01a_marst    `"Marital status"'
label var ua01a_ethnic   `"Nationality or ethnic origin"'
label var ua01a_mtong    `"Mother tongue"'
label var ua01a_langoth  `"Other language of fluency"'
label var ua01a_langukr  `"Fluent in Ukrainian"'
label var ua01a_edattan  `"Education"'
label var ua01a_vocschl  `"Completed vocational school"'
label var ua01a_edtype   `"Type of educational institution"'
label var ua01a_preschl  `"Attending preschool"'
label var ua01a_incsrc   `"Source of livelihood"'
label var ua01a_wkent    `"Work for enterprise, organization, institution, or agriculture sector"'
label var ua01a_wkpriv   `"Work for private individual(s)"'
label var ua01a_wkse     `"Self employment"'
label var ua01a_wkind    `"Work on individual basis"'
label var ua01a_wkag     `"Work at own agricultural farm"'
label var ua01a_wkfambus `"Work in family business without pay"'
label var ua01a_wksubag  `"Work at private agriculture plot"'
label var ua01a_incprop  `"Property income"'
label var ua01a_incpens  `"Pension"'
label var ua01a_incschl  `"Scholarship"'
label var ua01a_incasst  `"Benefits (excluding unemployment benefits)"'
label var ua01a_incue    `"Unemployment benefits"'
label var ua01a_incpub   `"Other government social security"'
label var ua01a_incdep   `"Dependent on others"'
label var ua01a_incoth   `"Other source of livelihood"'
label var ua01a_classwk  `"Class of worker"'
label var ua01a_wkhere   `"Work in the territory of residence"'
label var ua01a_wkaway   `"Region or country of work"'
label var ua01a_bpl      `"Region or country of birth"'
label var ua01a_prevres  `"Region or country of previous residence"'
label var ua01a_resstat  `"Temporary absence or residence"'
label var ua01a_moved    `"Moved during the previous year"'
label var ua01a_rescont  `"Continuous residence in village"'
label var ua01a_chborn2  `"Ever given birth"'
label var ua01a_headhh   `"Household head"'
label var ua01a_famunit  `"Family unit number"'

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

label define ua01a_pern_lbl 01 `"1"'
label define ua01a_pern_lbl 02 `"2"', add
label define ua01a_pern_lbl 03 `"3"', add
label define ua01a_pern_lbl 04 `"4"', add
label define ua01a_pern_lbl 05 `"5"', add
label define ua01a_pern_lbl 06 `"6"', add
label define ua01a_pern_lbl 07 `"7"', add
label define ua01a_pern_lbl 08 `"8"', add
label define ua01a_pern_lbl 09 `"9"', add
label define ua01a_pern_lbl 10 `"10"', add
label define ua01a_pern_lbl 11 `"11"', add
label define ua01a_pern_lbl 12 `"12"', add
label define ua01a_pern_lbl 13 `"13"', add
label define ua01a_pern_lbl 14 `"14"', add
label define ua01a_pern_lbl 15 `"15"', add
label define ua01a_pern_lbl 16 `"16"', add
label define ua01a_pern_lbl 17 `"17"', add
label define ua01a_pern_lbl 18 `"18"', add
label define ua01a_pern_lbl 19 `"19"', add
label define ua01a_pern_lbl 20 `"20"', add
label define ua01a_pern_lbl 21 `"21"', add
label define ua01a_pern_lbl 22 `"22"', add
label define ua01a_pern_lbl 23 `"23"', add
label define ua01a_pern_lbl 24 `"24"', add
label define ua01a_pern_lbl 25 `"25"', add
label define ua01a_pern_lbl 26 `"26"', add
label define ua01a_pern_lbl 27 `"27"', add
label define ua01a_pern_lbl 28 `"28"', add
label define ua01a_pern_lbl 29 `"29"', add
label define ua01a_pern_lbl 30 `"30"', add
label values ua01a_pern ua01a_pern_lbl

label define ua01a_raion_lbl 01101 `"Simferopol municipality"'
label define ua01a_raion_lbl 01103 `"Alushta municipality"', add
label define ua01a_raion_lbl 01106 `"Dzhankoy city"', add
label define ua01a_raion_lbl 01109 `"Yevpatoria municipality"', add
label define ua01a_raion_lbl 01112 `"Kerch city"', add
label define ua01a_raion_lbl 01113 `"Krasnoperekopsk city"', add
label define ua01a_raion_lbl 01114 `"Saky city"', add
label define ua01a_raion_lbl 01115 `"Armyansk municipality"', add
label define ua01a_raion_lbl 01116 `"Feodosiya municipality"', add
label define ua01a_raion_lbl 01117 `"Sudak municipality"', add
label define ua01a_raion_lbl 01119 `"Yalta municipality"', add
label define ua01a_raion_lbl 01204 `"Bakhchysaray raion"', add
label define ua01a_raion_lbl 01207 `"Bilohirsk raion"', add
label define ua01a_raion_lbl 01211 `"Dzhankoy raion"', add
label define ua01a_raion_lbl 01216 `"Kirovske raion"', add
label define ua01a_raion_lbl 01220 `"Krasnohvardiiske raion"', add
label define ua01a_raion_lbl 01223 `"Krasnoperekopsk raion"', add
label define ua01a_raion_lbl 01227 `"Lenine raion"', add
label define ua01a_raion_lbl 01231 `"Nyzhnohirskyi raion"', add
label define ua01a_raion_lbl 01235 `"Pervomaiske raion"', add
label define ua01a_raion_lbl 01239 `"Rozdolne raion"', add
label define ua01a_raion_lbl 01243 `"Saky raion"', add
label define ua01a_raion_lbl 01247 `"Simferopol raion"', add
label define ua01a_raion_lbl 01252 `"Sovietskyi raion"', add
label define ua01a_raion_lbl 01256 `"Chornomorske raion"', add
label define ua01a_raion_lbl 05101 `"Vinnitsia city"', add
label define ua01a_raion_lbl 05103 `"Zhmerynka city"', add
label define ua01a_raion_lbl 05104 `"Mohyliv-Pokilskyi municipality"', add
label define ua01a_raion_lbl 05105 `"Koziatyn municipality"', add
label define ua01a_raion_lbl 05106 `"Ladyzhyn municipality"', add
label define ua01a_raion_lbl 05109 `"Khmilnyk city"', add
label define ua01a_raion_lbl 05202 `"Bar raion"', add
label define ua01a_raion_lbl 05204 `"Bershad raion"', add
label define ua01a_raion_lbl 05206 `"Vinnitsia raion"', add
label define ua01a_raion_lbl 05208 `"Haisyn raion"', add
label define ua01a_raion_lbl 05210 `"Zhmerynka raion"', add
label define ua01a_raion_lbl 05212 `"Illintsi raion"', add
label define ua01a_raion_lbl 05214 `"Koziatyn raion"', add
label define ua01a_raion_lbl 05216 `"Kalynivka raion"', add
label define ua01a_raion_lbl 05219 `"Kryzhopil raion"', add
label define ua01a_raion_lbl 05222 `"Lypovets raion"', add
label define ua01a_raion_lbl 05224 `"Lityn raion"', add
label define ua01a_raion_lbl 05226 `"Mohyliv-Pokilskyi raion"', add
label define ua01a_raion_lbl 05228 `"Murovani Kurylivtsi raion"', add
label define ua01a_raion_lbl 05230 `"Nemyriv raion"', add
label define ua01a_raion_lbl 05231 `"Orativ raion"', add
label define ua01a_raion_lbl 05232 `"Pischanka raion"', add
label define ua01a_raion_lbl 05234 `"Pohrebysche raion"', add
label define ua01a_raion_lbl 05237 `"Teplyk raion"', add
label define ua01a_raion_lbl 05239 `"Tomashpil raion"', add
label define ua01a_raion_lbl 05241 `"Trostianets raion"', add
label define ua01a_raion_lbl 05243 `"Tulchyn raion"', add
label define ua01a_raion_lbl 05245 `"Tyvriv raion"', add
label define ua01a_raion_lbl 05248 `"Khmilnyk raion"', add
label define ua01a_raion_lbl 05249 `"Chernivtsi raion"', add
label define ua01a_raion_lbl 05250 `"Chechelnyk raion"', add
label define ua01a_raion_lbl 05253 `"Sharhorod raion"', add
label define ua01a_raion_lbl 05256 `"Yampil raion"', add
label define ua01a_raion_lbl 07101 `"Lutsk city"', add
label define ua01a_raion_lbl 07102 `"Volodymyr-Volynskyi city"', add
label define ua01a_raion_lbl 07104 `"Kovel city"', add
label define ua01a_raion_lbl 07107 `"Novovolynsk municipality"', add
label define ua01a_raion_lbl 07205 `"Volodymyr-Volynskyi raion"', add
label define ua01a_raion_lbl 07208 `"Horokhiv raion"', add
label define ua01a_raion_lbl 07211 `"Ivanychi raion"', add
label define ua01a_raion_lbl 07214 `"Kamin-Kashyrskyi raion"', add
label define ua01a_raion_lbl 07218 `"Kivertsi raion"', add
label define ua01a_raion_lbl 07221 `"Kovel raion"', add
label define ua01a_raion_lbl 07224 `"Lokachi raion"', add
label define ua01a_raion_lbl 07228 `"Lutsk raion"', add
label define ua01a_raion_lbl 07231 `"Lyubeshiv raion"', add
label define ua01a_raion_lbl 07233 `"Liuboml raion"', add
label define ua01a_raion_lbl 07236 `"Manevychi raion"', add
label define ua01a_raion_lbl 07242 `"Ratne and Shatsk raion"', add
label define ua01a_raion_lbl 07245 `"Rozhyshche raion"', add
label define ua01a_raion_lbl 07250 `"Stara Vyzhivka raion"', add
label define ua01a_raion_lbl 07255 `"Turiisk raion"', add
label define ua01a_raion_lbl 12101 `"Dnipropetrovsk municipality"', add
label define ua01a_raion_lbl 12102 `"Vilnohirsk city"', add
label define ua01a_raion_lbl 12104 `"Dneprodzerzynsk municipality"', add
label define ua01a_raion_lbl 12107 `"Zhovti Vody municipality"', add
label define ua01a_raion_lbl 12110 `"Kryvyi Rih municipality"', add
label define ua01a_raion_lbl 12113 `"Marhanets municipality"', add
label define ua01a_raion_lbl 12116 `"Nikopol raion"', add
label define ua01a_raion_lbl 12119 `"Novomoskovsk city"', add
label define ua01a_raion_lbl 12121 `"Ordzhonikidzevsk municipality"', add
label define ua01a_raion_lbl 12124 `"Pavlohrad city"', add
label define ua01a_raion_lbl 12126 `"Pershotravensk city"', add
label define ua01a_raion_lbl 12130 `"Synelnykove city"', add
label define ua01a_raion_lbl 12135 `"Ternovka municipality"', add
label define ua01a_raion_lbl 12203 `"Apostolove raion"', add
label define ua01a_raion_lbl 12207 `"Vasylkivka raion"', add
label define ua01a_raion_lbl 12210 `"Verkhnodniprovsk raion"', add
label define ua01a_raion_lbl 12214 `"Dnipropetrovsk raion"', add
label define ua01a_raion_lbl 12218 `"Kryvyi Rih raion"', add
label define ua01a_raion_lbl 12220 `"Krynychky raion"', add
label define ua01a_raion_lbl 12223 `"Mahdalynivka raion"', add
label define ua01a_raion_lbl 12226 `"Mezhova raion"', add
label define ua01a_raion_lbl 12229 `"Nikopol raion"', add
label define ua01a_raion_lbl 12232 `"Novomoskovsk raion"', add
label define ua01a_raion_lbl 12235 `"Pavlohrad and Yurivka raion"', add
label define ua01a_raion_lbl 12237 `"Petrykivka raion"', add
label define ua01a_raion_lbl 12238 `"Petropavlivka raion"', add
label define ua01a_raion_lbl 12242 `"Pokrovske raion"', add
label define ua01a_raion_lbl 12245 `"Piatykhatky raion"', add
label define ua01a_raion_lbl 12248 `"Synelnykove raion"', add
label define ua01a_raion_lbl 12250 `"Solone raion"', add
label define ua01a_raion_lbl 12252 `"Sofiivka raion"', add
label define ua01a_raion_lbl 12254 `"Tomakivka raion"', add
label define ua01a_raion_lbl 12256 `"Tsarychanka raion"', add
label define ua01a_raion_lbl 12258 `"Shyroke raion"', add
label define ua01a_raion_lbl 14101 `"Donetsk municipality"', add
label define ua01a_raion_lbl 14102 `"Avdiivka city"', add
label define ua01a_raion_lbl 14103 `"Artemivsk municipality"', add
label define ua01a_raion_lbl 14106 `"Horlivka municipality"', add
label define ua01a_raion_lbl 14109 `"Debaltseve municipality"', add
label define ua01a_raion_lbl 14112 `"Dzerzhynsk municipality"', add
label define ua01a_raion_lbl 14113 `"Dymytrov municipality"', add
label define ua01a_raion_lbl 14115 `"Dobropillia municipality"', add
label define ua01a_raion_lbl 14116 `"Dokuchaevsk municipality"', add
label define ua01a_raion_lbl 14117 `"Druzhkivka municipality"', add
label define ua01a_raion_lbl 14120 `"Yenakiieve municipality"', add
label define ua01a_raion_lbl 14123 `"Mariupol municipality"', add
label define ua01a_raion_lbl 14125 `"Kirovske city"', add
label define ua01a_raion_lbl 14126 `"Kostiantynivka city"', add
label define ua01a_raion_lbl 14129 `"Kramatorsk municipality"', add
label define ua01a_raion_lbl 14132 `"Krasnoarmiisk municipality"', add
label define ua01a_raion_lbl 14133 `"Krasnyi Lyman municipality"', add
label define ua01a_raion_lbl 14135 `"Makiivka municipality"', add
label define ua01a_raion_lbl 14138 `"Selydove municipality"', add
label define ua01a_raion_lbl 14141 `"Sloviansk municipality"', add
label define ua01a_raion_lbl 14144 `"Snizhne municipality"', add
label define ua01a_raion_lbl 14147 `"Torez municipality"', add
label define ua01a_raion_lbl 14150 `"Khartsyzk municipality"', add
label define ua01a_raion_lbl 14153 `"Shaktarsk municipality"', add
label define ua01a_raion_lbl 14155 `"Yasynuvata city"', add
label define ua01a_raion_lbl 14203 `"Oleksandrivka raion"', add
label define ua01a_raion_lbl 14206 `"Amrosiivka raion"', add
label define ua01a_raion_lbl 14209 `"Artemivsk raion"', add
label define ua01a_raion_lbl 14212 `"Velyka Novosilka raion"', add
label define ua01a_raion_lbl 14215 `"Volnovakha raion"', add
label define ua01a_raion_lbl 14217 `"Volodarske raion"', add
label define ua01a_raion_lbl 14220 `"Dobropillia raion"', add
label define ua01a_raion_lbl 14224 `"Kostiantynivka raion"', add
label define ua01a_raion_lbl 14227 `"Krasnoarmiisk raion and Novohrodivka city"', add
label define ua01a_raion_lbl 14230 `"Krasnyi Lyman raion"', add
label define ua01a_raion_lbl 14233 `"Marinka raion and Vuhledar city"', add
label define ua01a_raion_lbl 14236 `"Novoazovsk raion"', add
label define ua01a_raion_lbl 14239 `"Pershotravnevyi raion"', add
label define ua01a_raion_lbl 14242 `"Sloviansk raion"', add
label define ua01a_raion_lbl 14245 `"Starobesheve raion"', add
label define ua01a_raion_lbl 14248 `"Telmanove raion"', add
label define ua01a_raion_lbl 14252 `"Shakhtarsk raion and Zhdanivka municipality"', add
label define ua01a_raion_lbl 14255 `"Yasynuvata raion"', add
label define ua01a_raion_lbl 18101 `"Zhytomyr city"', add
label define ua01a_raion_lbl 18104 `"Berdychiv city"', add
label define ua01a_raion_lbl 18107 `"Korosten city"', add
label define ua01a_raion_lbl 18110 `"Novohrad-Volynskyi city"', add
label define ua01a_raion_lbl 18203 `"Andrushivka raion"', add
label define ua01a_raion_lbl 18206 `"Baranivka raion"', add
label define ua01a_raion_lbl 18208 `"Berdychiv raion"', add
label define ua01a_raion_lbl 18211 `"Volodarsk-Volynskyi raion"', add
label define ua01a_raion_lbl 18214 `"Dzerzhinsky raion"', add
label define ua01a_raion_lbl 18217 `"Yemilchyne raion"', add
label define ua01a_raion_lbl 18220 `"Zhytomyr raion"', add
label define ua01a_raion_lbl 18223 `"Korosten raion"', add
label define ua01a_raion_lbl 18225 `"Korostyshiv and Brusyliv raion"', add
label define ua01a_raion_lbl 18228 `"Luhyny raion"', add
label define ua01a_raion_lbl 18231 `"Liubar raion"', add
label define ua01a_raion_lbl 18234 `"Malyn raion"', add
label define ua01a_raion_lbl 18240 `"Novohrad-Volynskyi raion"', add
label define ua01a_raion_lbl 18242 `"Ovruch and Narodychi raion"', add
label define ua01a_raion_lbl 18244 `"Olevsk raion"', add
label define ua01a_raion_lbl 18247 `"Popilnia raion"', add
label define ua01a_raion_lbl 18250 `"Radomylshl raion"', add
label define ua01a_raion_lbl 18252 `"Ruzhyn raion"', add
label define ua01a_raion_lbl 18254 `"Chervonoarmiisk raion"', add
label define ua01a_raion_lbl 18256 `"Cherniakhiv raion"', add
label define ua01a_raion_lbl 18258 `"Chudniv raion"', add
label define ua01a_raion_lbl 21101 `"Uzhhorodskyi city"', add
label define ua01a_raion_lbl 21102 `"Berehove municipality"', add
label define ua01a_raion_lbl 21104 `"Mukachevo city"', add
label define ua01a_raion_lbl 21108 `"Khust municipality"', add
label define ua01a_raion_lbl 21204 `"Berehove raion"', add
label define ua01a_raion_lbl 21208 `"Velykyy Bereznyi raion"', add
label define ua01a_raion_lbl 21212 `"Vynohradiv raion"', add
label define ua01a_raion_lbl 21215 `"Volovets raion"', add
label define ua01a_raion_lbl 21219 `"Irshava raion"', add
label define ua01a_raion_lbl 21224 `"Mizhhirya raion"', add
label define ua01a_raion_lbl 21227 `"Mukachevo raion"', add
label define ua01a_raion_lbl 21232 `"Perechyn raion"', add
label define ua01a_raion_lbl 21236 `"Rakhiv raion"', add
label define ua01a_raion_lbl 21240 `"Svaliava raion"', add
label define ua01a_raion_lbl 21244 `"Tiachiv raion"', add
label define ua01a_raion_lbl 21248 `"Uzhhorodskyi raion"', add
label define ua01a_raion_lbl 21253 `"Khust raion"', add
label define ua01a_raion_lbl 23101 `"Zaporizhzhia  municipality"', add
label define ua01a_raion_lbl 23104 `"Berdyansk municipality"', add
label define ua01a_raion_lbl 23107 `"Melitopol city"', add
label define ua01a_raion_lbl 23110 `"Tokmak city"', add
label define ua01a_raion_lbl 23125 `"Enerhodar city"', add
label define ua01a_raion_lbl 23203 `"Yakymivka raion"', add
label define ua01a_raion_lbl 23206 `"Berdyansk raion"', add
label define ua01a_raion_lbl 23209 `"Vasylivka raion"', add
label define ua01a_raion_lbl 23212 `"Vesele and Verlyka Bilozerka raion"', add
label define ua01a_raion_lbl 23215 `"Vilniansk raion"', add
label define ua01a_raion_lbl 23218 `"Huliaipole raion"', add
label define ua01a_raion_lbl 23221 `"Zaproizhzhia raion"', add
label define ua01a_raion_lbl 23224 `"Kamianka-Dniprovska raion"', add
label define ua01a_raion_lbl 23227 `"Kuibysheve and Rozivka raion"', add
label define ua01a_raion_lbl 23230 `"Melitopol raion"', add
label define ua01a_raion_lbl 23233 `"Mykhailivka raion"', add
label define ua01a_raion_lbl 23236 `"Novomykolaivka raion"', add
label define ua01a_raion_lbl 23239 `"Orikhiv raion"', add
label define ua01a_raion_lbl 23242 `"Polohy raion"', add
label define ua01a_raion_lbl 23245 `"Pryazovske raion"', add
label define ua01a_raion_lbl 23248 `"Prymorsk raion"', add
label define ua01a_raion_lbl 23252 `"Tokmak raion"', add
label define ua01a_raion_lbl 23255 `"Chernihivka raion"', add
label define ua01a_raion_lbl 26101 `"Ivano-Frankivsk municipality"', add
label define ua01a_raion_lbl 26102 `"Bolekhiv municipality"', add
label define ua01a_raion_lbl 26104 `"Kalush city"', add
label define ua01a_raion_lbl 26106 `"Kolomyia city"', add
label define ua01a_raion_lbl 26110 `"Yaremche municipality"', add
label define ua01a_raion_lbl 26204 `"Bohorodchany raion"', add
label define ua01a_raion_lbl 26208 `"Verkhovyna raion"', add
label define ua01a_raion_lbl 26212 `"Halych raion"', add
label define ua01a_raion_lbl 26216 `"Horodenka raion"', add
label define ua01a_raion_lbl 26220 `"Dolyna raion"', add
label define ua01a_raion_lbl 26228 `"Kalush raion"', add
label define ua01a_raion_lbl 26232 `"Kolomyia raion"', add
label define ua01a_raion_lbl 26236 `"Kosiv raion"', add
label define ua01a_raion_lbl 26240 `"Nadvirna raion"', add
label define ua01a_raion_lbl 26244 `"Rohatyn raion"', add
label define ua01a_raion_lbl 26248 `"Rozhniativ raion"', add
label define ua01a_raion_lbl 26252 `"Sniatyn raion"', add
label define ua01a_raion_lbl 26256 `"Tlumach raion"', add
label define ua01a_raion_lbl 26258 `"Tysmenytsia raion"', add
label define ua01a_raion_lbl 32103 `"Bila Tserkva city"', add
label define ua01a_raion_lbl 32105 `"Boryspil municipality"', add
label define ua01a_raion_lbl 32106 `"Brovary city"', add
label define ua01a_raion_lbl 32107 `"Vasylkiv city"', add
label define ua01a_raion_lbl 32109 `"Irpin municipality"', add
label define ua01a_raion_lbl 32110 `"Pereiaslav-Khmelnytskyi city"', add
label define ua01a_raion_lbl 32112 `"Fastiv city"', add
label define ua01a_raion_lbl 32115 `"Slavutych city"', add
label define ua01a_raion_lbl 32202 `"Baryshivka raion and Berezan city"', add
label define ua01a_raion_lbl 32204 `"Bila Tserkva raion"', add
label define ua01a_raion_lbl 32206 `"Bohuslav raion"', add
label define ua01a_raion_lbl 32208 `"Boryspil raion"', add
label define ua01a_raion_lbl 32210 `"Borodianka raion"', add
label define ua01a_raion_lbl 32212 `"Brovary raion"', add
label define ua01a_raion_lbl 32214 `"Vasylkiv raion"', add
label define ua01a_raion_lbl 32216 `"Volodarka raion"', add
label define ua01a_raion_lbl 32218 `"Vyshhorod raion"', add
label define ua01a_raion_lbl 32219 `"Zgurivka raion"', add
label define ua01a_raion_lbl 32220 `"Ivankiv and Poliske raion"', add
label define ua01a_raion_lbl 32222 `"Kaharlyk raion and Rzhyshchiv city"', add
label define ua01a_raion_lbl 32224 `"Kyievo-Sviatoshyn raion"', add
label define ua01a_raion_lbl 32227 `"Makariv raion"', add
label define ua01a_raion_lbl 32229 `"Myronivka raion"', add
label define ua01a_raion_lbl 32231 `"Obukhiv raion"', add
label define ua01a_raion_lbl 32233 `"Pereiaslav-Khmelnytskyi raion"', add
label define ua01a_raion_lbl 32237 `"Rokytne raion"', add
label define ua01a_raion_lbl 32240 `"Skvyra raion"', add
label define ua01a_raion_lbl 32242 `"Stavysche raion"', add
label define ua01a_raion_lbl 32244 `"Tarascha raion"', add
label define ua01a_raion_lbl 32246 `"Tetiiv raion"', add
label define ua01a_raion_lbl 32249 `"Fastiv raion"', add
label define ua01a_raion_lbl 32255 `"Yahotyn raion"', add
label define ua01a_raion_lbl 35101 `"Kirovohrad municipality"', add
label define ua01a_raion_lbl 35103 `"Oleskandriia municipality"', add
label define ua01a_raion_lbl 35106 `"Znamianka municipality"', add
label define ua01a_raion_lbl 35109 `"Svitlovodsk municipality"', add
label define ua01a_raion_lbl 35203 `"Oleksandriia raion"', add
label define ua01a_raion_lbl 35205 `"Oleksandrivka raion"', add
label define ua01a_raion_lbl 35208 `"Bobrynets raion"', add
label define ua01a_raion_lbl 35211 `"Haivoron raion"', add
label define ua01a_raion_lbl 35214 `"Holovanivsk and Vilshanka raion"', add
label define ua01a_raion_lbl 35217 `"Dobrovelychkivka raion"', add
label define ua01a_raion_lbl 35219 `"Dolynska and Ustynivka raion"', add
label define ua01a_raion_lbl 35222 `"Znamianka raion"', add
label define ua01a_raion_lbl 35225 `"Kirovohrad raion"', add
label define ua01a_raion_lbl 35231 `"Mala Vyska raion"', add
label define ua01a_raion_lbl 35234 `"Novhorodka and Kompaniivka raion"', add
label define ua01a_raion_lbl 35236 `"Novoarkhanhelsk raion"', add
label define ua01a_raion_lbl 35238 `"Novomyrhorod raion"', add
label define ua01a_raion_lbl 35240 `"Novoukrainka raion"', add
label define ua01a_raion_lbl 35246 `"Onufriivka and Svitlovodsk raion"', add
label define ua01a_raion_lbl 35249 `"Petrove raion"', add
label define ua01a_raion_lbl 35255 `"Ulianovka raion"', add
label define ua01a_raion_lbl 44101 `"Luhansk municipality"', add
label define ua01a_raion_lbl 44103 `"Antratsyt municipality and Sverdlovsk raion"', add
label define ua01a_raion_lbl 44105 `"Brianka municipality"', add
label define ua01a_raion_lbl 44110 `"Kirovsk municipality"', add
label define ua01a_raion_lbl 44112 `"Alchevsk city"', add
label define ua01a_raion_lbl 44114 `"Krasnodon municipality"', add
label define ua01a_raion_lbl 44116 `"Krasnyi Luch municipality"', add
label define ua01a_raion_lbl 44118 `"Lysychansk municipality"', add
label define ua01a_raion_lbl 44121 `"Pervomaisk municipality"', add
label define ua01a_raion_lbl 44123 `"Rovenky municipality"', add
label define ua01a_raion_lbl 44125 `"Rubizhne city"', add
label define ua01a_raion_lbl 44127 `"Sverdlovsk municipality"', add
label define ua01a_raion_lbl 44129 `"Sieverodonetsk municipality"', add
label define ua01a_raion_lbl 44131 `"Stakhanov municipality"', add
label define ua01a_raion_lbl 44203 `"Antratsyt raion"', add
label define ua01a_raion_lbl 44206 `"Bilovodsk raion"', add
label define ua01a_raion_lbl 44209 `"Bilokurakyne raion"', add
label define ua01a_raion_lbl 44214 `"Krasnodon raion"', add
label define ua01a_raion_lbl 44216 `"Kreminna raion"', add
label define ua01a_raion_lbl 44222 `"Lutuhyne raion"', add
label define ua01a_raion_lbl 44225 `"Markivka and Milove raion"', add
label define ua01a_raion_lbl 44231 `"Novoaidar raion"', add
label define ua01a_raion_lbl 44233 `"Novopskov raion"', add
label define ua01a_raion_lbl 44236 `"Perevalsk raion"', add
label define ua01a_raion_lbl 44238 `"Popasna raion"', add
label define ua01a_raion_lbl 44240 `"Svatove raion"', add
label define ua01a_raion_lbl 44245 `"Slovianoserbsk raion"', add
label define ua01a_raion_lbl 44248 `"Stanytsya Luhanska raion"', add
label define ua01a_raion_lbl 44251 `"Starobilsk raion"', add
label define ua01a_raion_lbl 44254 `"Troitske raion"', add
label define ua01a_raion_lbl 46101 `"Lviv municipality"', add
label define ua01a_raion_lbl 46103 `"Boryslav municipality"', add
label define ua01a_raion_lbl 46106 `"Drohobych municipality"', add
label define ua01a_raion_lbl 46109 `"Sambir city"', add
label define ua01a_raion_lbl 46112 `"Stryi city"', add
label define ua01a_raion_lbl 46115 `"Truskavets city"', add
label define ua01a_raion_lbl 46118 `"Chervonohrad municipality"', add
label define ua01a_raion_lbl 46203 `"Brody raion"', add
label define ua01a_raion_lbl 46206 `"Busk raion"', add
label define ua01a_raion_lbl 46209 `"Horodok raion"', add
label define ua01a_raion_lbl 46212 `"Drohobych raion"', add
label define ua01a_raion_lbl 46215 `"Zhydachiv raion"', add
label define ua01a_raion_lbl 46218 `"Zolochiv raion"', add
label define ua01a_raion_lbl 46221 `"Kamianka-Buzka raion"', add
label define ua01a_raion_lbl 46224 `"Mostyska raion"', add
label define ua01a_raion_lbl 46227 `"Zhovka raion"', add
label define ua01a_raion_lbl 46230 `"Mykolaiv raion"', add
label define ua01a_raion_lbl 46233 `"Peremyshliany raion"', add
label define ua01a_raion_lbl 46236 `"Pustomyty raion"', add
label define ua01a_raion_lbl 46239 `"Radekhiv raion"', add
label define ua01a_raion_lbl 46242 `"Sambir raion"', add
label define ua01a_raion_lbl 46245 `"Skole raion"', add
label define ua01a_raion_lbl 46248 `"Sokal raion"', add
label define ua01a_raion_lbl 46251 `"Staryi Sambir raion"', add
label define ua01a_raion_lbl 46253 `"Stryi raion"', add
label define ua01a_raion_lbl 46255 `"Turka raion"', add
label define ua01a_raion_lbl 46258 `"Yavoriv raion"', add
label define ua01a_raion_lbl 48101 `"Mykolaiv city"', add
label define ua01a_raion_lbl 48102 `"Voznesensk city"', add
label define ua01a_raion_lbl 48104 `"Pervomaisk city"', add
label define ua01a_raion_lbl 48108 `"Yuzhnoukrainsk city"', add
label define ua01a_raion_lbl 48203 `"Arbuzynka raion"', add
label define ua01a_raion_lbl 48206 `"Bashtanka raion"', add
label define ua01a_raion_lbl 48209 `"Berezanka raion"', add
label define ua01a_raion_lbl 48211 `"Bereznehuvate raion"', add
label define ua01a_raion_lbl 48214 `"Bratske and Yelanets raion"', add
label define ua01a_raion_lbl 48217 `"Veselynove raion"', add
label define ua01a_raion_lbl 48220 `"Voznesensk raion"', add
label define ua01a_raion_lbl 48223 `"Vradiyivka raion"', add
label define ua01a_raion_lbl 48227 `"Domanivka raion"', add
label define ua01a_raion_lbl 48233 `"Zhovtnevyi raion"', add
label define ua01a_raion_lbl 48236 `"Kazanka raion"', add
label define ua01a_raion_lbl 48239 `"Kryve Ozero raion"', add
label define ua01a_raion_lbl 48242 `"Mykolaiv raion"', add
label define ua01a_raion_lbl 48245 `"Novyi Buh raion"', add
label define ua01a_raion_lbl 48248 `"Nova Odesa raion"', add
label define ua01a_raion_lbl 48251 `"Ochakiv raion and Ochakiv city"', add
label define ua01a_raion_lbl 48254 `"Pervomaisk raion"', add
label define ua01a_raion_lbl 48257 `"Snihurivka raion"', add
label define ua01a_raion_lbl 51101 `"Odessa city"', add
label define ua01a_raion_lbl 51103 `"Bilhorod-Dnistrovskyi municipality"', add
label define ua01a_raion_lbl 51106 `"Izmail city"', add
label define ua01a_raion_lbl 51108 `"Illichivsk municipality"', add
label define ua01a_raion_lbl 51112 `"Kotovsk city"', add
label define ua01a_raion_lbl 51117 `"Yuzhne city"', add
label define ua01a_raion_lbl 51202 `"Ananyiv raion"', add
label define ua01a_raion_lbl 51204 `"Artsyi raion"', add
label define ua01a_raion_lbl 51206 `"Balta raion"', add
label define ua01a_raion_lbl 51208 `"Bilhorod-Dnistrovskyi raion"', add
label define ua01a_raion_lbl 51210 `"Biliaivka raion and Teplodar city"', add
label define ua01a_raion_lbl 51212 `"Berezivka raion"', add
label define ua01a_raion_lbl 51214 `"Bolhrad raion"', add
label define ua01a_raion_lbl 51216 `"Velyka Mykhailivka raion"', add
label define ua01a_raion_lbl 51218 `"Ivanivka raion"', add
label define ua01a_raion_lbl 51220 `"Izmail raion"', add
label define ua01a_raion_lbl 51223 `"Kiliya raion"', add
label define ua01a_raion_lbl 51225 `"Kodmya raion"', add
label define ua01a_raion_lbl 51227 `"Kominternivske raion"', add
label define ua01a_raion_lbl 51229 `"Kotovsk raion"', add
label define ua01a_raion_lbl 51231 `"Krasni Okny raion"', add
label define ua01a_raion_lbl 51233 `"Liubashivka raion"', add
label define ua01a_raion_lbl 51235 `"Mykolaivka raion"', add
label define ua01a_raion_lbl 51237 `"Ovidiopol raion"', add
label define ua01a_raion_lbl 51239 `"Rozdilna raion"', add
label define ua01a_raion_lbl 51241 `"Reni raion"', add
label define ua01a_raion_lbl 51243 `"Savran raion"', add
label define ua01a_raion_lbl 51245 `"Sarata raion"', add
label define ua01a_raion_lbl 51247 `"Tarutyne raion"', add
label define ua01a_raion_lbl 51250 `"Tatarbunary raion"', add
label define ua01a_raion_lbl 51252 `"Frunzivka raion"', add
label define ua01a_raion_lbl 51254 `"Shyriaieve raion"', add
label define ua01a_raion_lbl 53101 `"Poltava city"', add
label define ua01a_raion_lbl 53102 `"Komsomolsk municipality"', add
label define ua01a_raion_lbl 53104 `"Kremenchuk city"', add
label define ua01a_raion_lbl 53107 `"Lubny city"', add
label define ua01a_raion_lbl 53109 `"Myrhorod city"', add
label define ua01a_raion_lbl 53202 `"Velykobahachanskyi raion"', add
label define ua01a_raion_lbl 53204 `"Hadiach raion"', add
label define ua01a_raion_lbl 53206 `"Hlobyn raion"', add
label define ua01a_raion_lbl 53208 `"Hrebinka raion"', add
label define ua01a_raion_lbl 53210 `"Dykanka raion"', add
label define ua01a_raion_lbl 53213 `"Zinkivskyi raion"', add
label define ua01a_raion_lbl 53216 `"Karlivka raion"', add
label define ua01a_raion_lbl 53218 `"Kobeliaky raion"', add
label define ua01a_raion_lbl 53220 `"Kozelshchyna raion"', add
label define ua01a_raion_lbl 53222 `"Koteleva raion"', add
label define ua01a_raion_lbl 53224 `"Kremenchuk raion"', add
label define ua01a_raion_lbl 53226 `"Lokhvytsia raion"', add
label define ua01a_raion_lbl 53228 `"Lubny raion"', add
label define ua01a_raion_lbl 53230 `"Mashivka raion"', add
label define ua01a_raion_lbl 53232 `"Myrhorod raion"', add
label define ua01a_raion_lbl 53234 `"Novo Sanzhary raion"', add
label define ua01a_raion_lbl 53236 `"Orzhytsia raion"', add
label define ua01a_raion_lbl 53238 `"Pyriatyn and Chornukhy raion"', add
label define ua01a_raion_lbl 53240 `"Poltava raion"', add
label define ua01a_raion_lbl 53242 `"Reshetylivka raion"', add
label define ua01a_raion_lbl 53245 `"Semenivka raion"', add
label define ua01a_raion_lbl 53248 `"Khorol raion"', add
label define ua01a_raion_lbl 53254 `"Chutove raion"', add
label define ua01a_raion_lbl 53257 `"Shyshaky raion"', add
label define ua01a_raion_lbl 56101 `"Rivne  city"', add
label define ua01a_raion_lbl 56103 `"Dubno city"', add
label define ua01a_raion_lbl 56107 `"Kuznetsovsk city"', add
label define ua01a_raion_lbl 56204 `"Berezne raion"', add
label define ua01a_raion_lbl 56208 `"Volodymyrets raion"', add
label define ua01a_raion_lbl 56212 `"Hoscha raion"', add
label define ua01a_raion_lbl 56216 `"Dubno raion"', add
label define ua01a_raion_lbl 56218 `"Dubrovytsia raion"', add
label define ua01a_raion_lbl 56222 `"Zarichne raion"', add
label define ua01a_raion_lbl 56226 `"Zdolbuniv raion"', add
label define ua01a_raion_lbl 56230 `"Korets raion"', add
label define ua01a_raion_lbl 56234 `"Kostopil raion"', add
label define ua01a_raion_lbl 56238 `"Mlyniv raion"', add
label define ua01a_raion_lbl 56242 `"Ostroh raion and Ostroh city"', add
label define ua01a_raion_lbl 56246 `"Rivne raion"', add
label define ua01a_raion_lbl 56250 `"Rokytne raion"', add
label define ua01a_raion_lbl 56254 `"Sarny raion"', add
label define ua01a_raion_lbl 56258 `"Radyvyliv and Demydivka raion"', add
label define ua01a_raion_lbl 59101 `"Sumy municipality"', add
label define ua01a_raion_lbl 59102 `"Okhtyrka municipality"', add
label define ua01a_raion_lbl 59103 `"Hlukhiv municipality"', add
label define ua01a_raion_lbl 59104 `"Konotop municipality"', add
label define ua01a_raion_lbl 59105 `"Lebedyn municipality"', add
label define ua01a_raion_lbl 59107 `"Romny municipality"', add
label define ua01a_raion_lbl 59110 `"Shostka city"', add
label define ua01a_raion_lbl 59203 `"Okhtyrka raion"', add
label define ua01a_raion_lbl 59206 `"Bilopillia raion"', add
label define ua01a_raion_lbl 59209 `"Buryn raion"', add
label define ua01a_raion_lbl 59212 `"Velyka Pysarivka raion"', add
label define ua01a_raion_lbl 59215 `"Hlukhiv raion"', add
label define ua01a_raion_lbl 59220 `"Konotop raion"', add
label define ua01a_raion_lbl 59223 `"Krasnopillia raion"', add
label define ua01a_raion_lbl 59226 `"Krolovets raion"', add
label define ua01a_raion_lbl 59229 `"Lebedyn raion"', add
label define ua01a_raion_lbl 59232 `"Lypova Dolyna raion"', add
label define ua01a_raion_lbl 59235 `"Nedryhailiv raion"', add
label define ua01a_raion_lbl 59238 `"Putyvl raion"', add
label define ua01a_raion_lbl 59241 `"Romny raion"', add
label define ua01a_raion_lbl 59244 `"Seredyna-Buda raion"', add
label define ua01a_raion_lbl 59247 `"Sumy raion"', add
label define ua01a_raion_lbl 59250 `"Trostianets raion"', add
label define ua01a_raion_lbl 59253 `"Shostka raion"', add
label define ua01a_raion_lbl 59256 `"Yampil raion"', add
label define ua01a_raion_lbl 61101 `"Ternopil  city"', add
label define ua01a_raion_lbl 61204 `"Berezhany raion"', add
label define ua01a_raion_lbl 61208 `"Borshchiv raion"', add
label define ua01a_raion_lbl 61212 `"Buchach raion"', add
label define ua01a_raion_lbl 61216 `"Husiatyn raion"', add
label define ua01a_raion_lbl 61220 `"Zalischyky raion"', add
label define ua01a_raion_lbl 61224 `"Zbarazh raion"', add
label define ua01a_raion_lbl 61226 `"Zboriv raion"', add
label define ua01a_raion_lbl 61230 `"Kozova raion"', add
label define ua01a_raion_lbl 61234 `"Kremenets raion"', add
label define ua01a_raion_lbl 61238 `"Lanivtsi raion"', add
label define ua01a_raion_lbl 61242 `"Monastyryska raion"', add
label define ua01a_raion_lbl 61246 `"Pidvolochysk raion"', add
label define ua01a_raion_lbl 61248 `"Pidhaitsi raion"', add
label define ua01a_raion_lbl 61250 `"Terebovlia raion"', add
label define ua01a_raion_lbl 61252 `"Ternopil raion"', add
label define ua01a_raion_lbl 61255 `"Chrotkiv raion"', add
label define ua01a_raion_lbl 61258 `"Shumsk raion"', add
label define ua01a_raion_lbl 63101 `"Kharkiv municipality"', add
label define ua01a_raion_lbl 63104 `"Izium city"', add
label define ua01a_raion_lbl 63107 `"Kupiansk municipality"', add
label define ua01a_raion_lbl 63110 `"Lozova municipality"', add
label define ua01a_raion_lbl 63112 `"Liubotin municipality"', add
label define ua01a_raion_lbl 63115 `"Pervomaiskyi municipality"', add
label define ua01a_raion_lbl 63120 `"Chuhuiv municipality"', add
label define ua01a_raion_lbl 63202 `"Balakliia raion"', add
label define ua01a_raion_lbl 63204 `"Barvinkove raion"', add
label define ua01a_raion_lbl 63206 `"Blyzniuky raion"', add
label define ua01a_raion_lbl 63208 `"Bohodukhiv raion"', add
label define ua01a_raion_lbl 63210 `"Borova raion"', add
label define ua01a_raion_lbl 63212 `"Valky raion"', add
label define ua01a_raion_lbl 63214 `"Velykyi Burluk raion"', add
label define ua01a_raion_lbl 63216 `"Vovchansk and Pechenihy raion"', add
label define ua01a_raion_lbl 63217 `"Zmiiv raion"', add
label define ua01a_raion_lbl 63218 `"Dvorichna raion"', add
label define ua01a_raion_lbl 63220 `"Derhachi raion"', add
label define ua01a_raion_lbl 63226 `"Zolochiv raion"', add
label define ua01a_raion_lbl 63228 `"Izium raion"', add
label define ua01a_raion_lbl 63231 `"Kehychivka raion"', add
label define ua01a_raion_lbl 63233 `"Krasnohrad raion"', add
label define ua01a_raion_lbl 63235 `"Krasnokutsk and Kolomak raion"', add
label define ua01a_raion_lbl 63237 `"Kupiansk raion"', add
label define ua01a_raion_lbl 63239 `"Lozova and Pervomaiskyi raion"', add
label define ua01a_raion_lbl 63242 `"Novo Vodolaha raion"', add
label define ua01a_raion_lbl 63248 `"Sakhnovschyna and Zachepylivka raion"', add
label define ua01a_raion_lbl 63251 `"Kharkiv region raion"', add
label define ua01a_raion_lbl 63254 `"Chuhuiv raion"', add
label define ua01a_raion_lbl 63257 `"Shevchenkove raion"', add
label define ua01a_raion_lbl 65101 `"Kherson municipality"', add
label define ua01a_raion_lbl 65104 `"Kakhovka city"', add
label define ua01a_raion_lbl 65107 `"Nova Kakhovka municipality"', add
label define ua01a_raion_lbl 65203 `"Bilozerka raion"', add
label define ua01a_raion_lbl 65206 `"Beryslavskyi raion"', add
label define ua01a_raion_lbl 65209 `"Velyka Oleksandrivka raion"', add
label define ua01a_raion_lbl 65212 `"Velyka Lepetyka raion"', add
label define ua01a_raion_lbl 65221 `"Henichesk raion"', add
label define ua01a_raion_lbl 65223 `"Holo Prystan raion"', add
label define ua01a_raion_lbl 65226 `"Hornostaivka raion"', add
label define ua01a_raion_lbl 65232 `"Kalanchak raion"', add
label define ua01a_raion_lbl 65235 `"Kakhovka and Verkhnii Rohachyk raion"', add
label define ua01a_raion_lbl 65238 `"Nyzhni Sirohozy raion"', add
label define ua01a_raion_lbl 65241 `"Novovorontsovka and Vysokopillia raion"', add
label define ua01a_raion_lbl 65244 `"Novotroitske and Ivanivka raion"', add
label define ua01a_raion_lbl 65247 `"Skadovsk raion"', add
label define ua01a_raion_lbl 65250 `"Tsiurupynsk raion"', add
label define ua01a_raion_lbl 65254 `"Chaplynka raion"', add
label define ua01a_raion_lbl 68101 `"Khmelnytsky city"', add
label define ua01a_raion_lbl 68104 `"Kamianets-Podilskyi city"', add
label define ua01a_raion_lbl 68105 `"Netishyn city"', add
label define ua01a_raion_lbl 68106 `"Slavuta city"', add
label define ua01a_raion_lbl 68107 `"Shepetika city"', add
label define ua01a_raion_lbl 68108 `"Starokostiantyniv city"', add
label define ua01a_raion_lbl 68203 `"Bilohiria raion"', add
label define ua01a_raion_lbl 68206 `"Vinkivtsi raion"', add
label define ua01a_raion_lbl 68209 `"Volochysk raion"', add
label define ua01a_raion_lbl 68212 `"Horokok raion"', add
label define ua01a_raion_lbl 68215 `"Derazhnia raion"', add
label define ua01a_raion_lbl 68218 `"Dunaivti raion"', add
label define ua01a_raion_lbl 68221 `"Iziaslav raion"', add
label define ua01a_raion_lbl 68224 `"Kamianets-Podilskyi raion"', add
label define ua01a_raion_lbl 68227 `"Krasyliv raion"', add
label define ua01a_raion_lbl 68230 `"Letychiv raion"', add
label define ua01a_raion_lbl 68233 `"Nova Ushytsia raion"', add
label define ua01a_raion_lbl 68236 `"Polonne raion"', add
label define ua01a_raion_lbl 68239 `"Slavuta raion"', add
label define ua01a_raion_lbl 68242 `"Stara Syniava raion"', add
label define ua01a_raion_lbl 68244 `"Starokostiantyniv raion"', add
label define ua01a_raion_lbl 68247 `"Teofipol raion"', add
label define ua01a_raion_lbl 68250 `"Khmelnytskyi raion"', add
label define ua01a_raion_lbl 68252 `"Chemerivtsi raion"', add
label define ua01a_raion_lbl 68255 `"Shepetika raion"', add
label define ua01a_raion_lbl 68258 `"Yarmolyntsi raion"', add
label define ua01a_raion_lbl 71101 `"Cherkasy  municipality"', add
label define ua01a_raion_lbl 71102 `"Vatutine municipality"', add
label define ua01a_raion_lbl 71103 `"Kanivs city"', add
label define ua01a_raion_lbl 71104 `"Zolotonosha municipality"', add
label define ua01a_raion_lbl 71105 `"Smila municipality"', add
label define ua01a_raion_lbl 71108 `"Uman city"', add
label define ua01a_raion_lbl 71203 `"Horodysche raion"', add
label define ua01a_raion_lbl 71206 `"Drabiv raion"', add
label define ua01a_raion_lbl 71209 `"Zhashkivi raion"', add
label define ua01a_raion_lbl 71212 `"Zvenyhorodka raion"', add
label define ua01a_raion_lbl 71215 `"Zolotonosha raion"', add
label define ua01a_raion_lbl 71218 `"Kamianka-Buzka raion"', add
label define ua01a_raion_lbl 71220 `"Kanivs raion"', add
label define ua01a_raion_lbl 71222 `"Katerynopil raion"', add
label define ua01a_raion_lbl 71225 `"Korsun-Shevchenkivskyi raion"', add
label define ua01a_raion_lbl 71228 `"Lysianka raion"', add
label define ua01a_raion_lbl 71231 `"Mankivka raion"', add
label define ua01a_raion_lbl 71234 `"Monastyrysche raion"', add
label define ua01a_raion_lbl 71237 `"Smila raion"', add
label define ua01a_raion_lbl 71240 `"Talne raion"', add
label define ua01a_raion_lbl 71243 `"Uman raion"', add
label define ua01a_raion_lbl 71246 `"Khrystynivka raion"', add
label define ua01a_raion_lbl 71249 `"Cherkasy raion"', add
label define ua01a_raion_lbl 71251 `"Chornobai raion"', add
label define ua01a_raion_lbl 71254 `"Chyhyryn raion"', add
label define ua01a_raion_lbl 71257 `"Shpola raion"', add
label define ua01a_raion_lbl 73101 `"Chernivtsi city"', add
label define ua01a_raion_lbl 73205 `"Vyzhnytsia raion"', add
label define ua01a_raion_lbl 73207 `"Hertsa raion"', add
label define ua01a_raion_lbl 73210 `"Hlyboka raion"', add
label define ua01a_raion_lbl 73215 `"Zastavna raion"', add
label define ua01a_raion_lbl 73220 `"Kelmentsi raion"', add
label define ua01a_raion_lbl 73225 `"Kitsman raion"', add
label define ua01a_raion_lbl 73230 `"Novoselytsia raion"', add
label define ua01a_raion_lbl 73235 `"Putyla raion"', add
label define ua01a_raion_lbl 73240 `"Sokyriany raion and Novodnistrovsk city"', add
label define ua01a_raion_lbl 73245 `"Storozhynets raion"', add
label define ua01a_raion_lbl 73250 `"Khotyn raion"', add
label define ua01a_raion_lbl 74101 `"Chernihiv city"', add
label define ua01a_raion_lbl 74104 `"Nizhyn city"', add
label define ua01a_raion_lbl 74107 `"Pryluky city"', add
label define ua01a_raion_lbl 74203 `"Bakhmach raion"', add
label define ua01a_raion_lbl 74206 `"Bobrovytsia raion"', add
label define ua01a_raion_lbl 74208 `"Borzna raion"', add
label define ua01a_raion_lbl 74211 `"Varva raion"', add
label define ua01a_raion_lbl 74214 `"Horodnia raion"', add
label define ua01a_raion_lbl 74217 `"Ichnia raion"', add
label define ua01a_raion_lbl 74220 `"Kozelets raion"', add
label define ua01a_raion_lbl 74222 `"Korop raion"', add
label define ua01a_raion_lbl 74224 `"Koriukivka raion"', add
label define ua01a_raion_lbl 74227 `"Kulykivka raion"', add
label define ua01a_raion_lbl 74230 `"Mena raion"', add
label define ua01a_raion_lbl 74233 `"Nizhyn raion"', add
label define ua01a_raion_lbl 74236 `"Novhorod-Siverskyi raion"', add
label define ua01a_raion_lbl 74238 `"Nosivka raion"', add
label define ua01a_raion_lbl 74241 `"Pryluky raion"', add
label define ua01a_raion_lbl 74244 `"Ripky raion"', add
label define ua01a_raion_lbl 74247 `"Semenivka raion"', add
label define ua01a_raion_lbl 74249 `"Sosnytsia raion"', add
label define ua01a_raion_lbl 74253 `"Talalaivka and Sribne raion"', add
label define ua01a_raion_lbl 74255 `"Chernihiv raion"', add
label define ua01a_raion_lbl 74258 `"Shchors raion"', add
label define ua01a_raion_lbl 80000 `"Kiev city"', add
label define ua01a_raion_lbl 85000 `"Sevastopol (independent city)"', add
label values ua01a_raion ua01a_raion_lbl

label define ua01a_region_lbl 01 `"The Autonomous Republic of Crimea"'
label define ua01a_region_lbl 05 `"Vinnytska oblast"', add
label define ua01a_region_lbl 07 `"Volynska oblast"', add
label define ua01a_region_lbl 12 `"Dnipropetrovska oblast"', add
label define ua01a_region_lbl 14 `"Donetska oblast"', add
label define ua01a_region_lbl 18 `"Zhytomyrska oblast"', add
label define ua01a_region_lbl 21 `"Zakarpatska oblast"', add
label define ua01a_region_lbl 23 `"Zaporizka oblast"', add
label define ua01a_region_lbl 26 `"Ivano-Frankivska oblast"', add
label define ua01a_region_lbl 32 `"Kyivska oblast"', add
label define ua01a_region_lbl 35 `"Kirovohradska oblast"', add
label define ua01a_region_lbl 44 `"Luhanska oblast"', add
label define ua01a_region_lbl 46 `"Lvivska oblast"', add
label define ua01a_region_lbl 48 `"Mykolaivska oblast"', add
label define ua01a_region_lbl 51 `"Odeska oblast"', add
label define ua01a_region_lbl 53 `"Poltavska oblast"', add
label define ua01a_region_lbl 56 `"Rivnenska oblast"', add
label define ua01a_region_lbl 59 `"Sumska oblast"', add
label define ua01a_region_lbl 61 `"Ternopilska oblast"', add
label define ua01a_region_lbl 63 `"Kharkivska oblast"', add
label define ua01a_region_lbl 65 `"Khersonska oblast"', add
label define ua01a_region_lbl 68 `"Khmelnytska oblast"', add
label define ua01a_region_lbl 71 `"Cherkaska oblast"', add
label define ua01a_region_lbl 73 `"Chernivetska oblast"', add
label define ua01a_region_lbl 74 `"Chernihivska oblast"', add
label define ua01a_region_lbl 80 `"Kyiv (independent city)"', add
label define ua01a_region_lbl 85 `"Sevastopol (independent city)"', add
label values ua01a_region ua01a_region_lbl

label define ua01a_urban_lbl 1 `"Urban"'
label define ua01a_urban_lbl 2 `"Rural"', add
label define ua01a_urban_lbl 9 `"Unknown"', add
label values ua01a_urban ua01a_urban_lbl

label define ua01a_homeless_lbl 1 `"Not homeless"'
label define ua01a_homeless_lbl 2 `"Homeless"', add
label values ua01a_homeless ua01a_homeless_lbl

label define ua01a_inst_lbl 1 `"Not an institutional establishment"'
label define ua01a_inst_lbl 2 `"Institutional establishment (nursing homes for elderly, disabled, orphanage, convent, etc.)"', add
label values ua01a_inst ua01a_inst_lbl

label define ua01a_typehh_lbl 1 `"Private house"'
label define ua01a_typehh_lbl 2 `"Part of a private house"', add
label define ua01a_typehh_lbl 3 `"Individual apartment"', add
label define ua01a_typehh_lbl 4 `"Communal apartment"', add
label define ua01a_typehh_lbl 5 `"Hostel"', add
label define ua01a_typehh_lbl 6 `"Hotel"', add
label define ua01a_typehh_lbl 7 `"Other"', add
label define ua01a_typehh_lbl 8 `"Rented housing"', add
label define ua01a_typehh_lbl 9 `"NIU (not in universe)"', add
label values ua01a_typehh ua01a_typehh_lbl

label define ua01a_flrspace_lbl 1 `"Up to 10 square meters"'
label define ua01a_flrspace_lbl 2 `"11 or more square meters"', add
label define ua01a_flrspace_lbl 3 `"More than 120 square meters"', add
label define ua01a_flrspace_lbl 8 `"Unknown"', add
label define ua01a_flrspace_lbl 9 `"NIU (not in universe)"', add
label values ua01a_flrspace ua01a_flrspace_lbl

label define ua01a_rooms_lbl 0 `"Part of a room"'
label define ua01a_rooms_lbl 1 `"1"', add
label define ua01a_rooms_lbl 2 `"2"', add
label define ua01a_rooms_lbl 3 `"3"', add
label define ua01a_rooms_lbl 4 `"4"', add
label define ua01a_rooms_lbl 5 `"5"', add
label define ua01a_rooms_lbl 6 `"6+"', add
label define ua01a_rooms_lbl 8 `"Unknown"', add
label define ua01a_rooms_lbl 9 `"NIU (not in universe)"', add
label values ua01a_rooms ua01a_rooms_lbl

label define resident_lbl 1 `"Present resident"'
label define resident_lbl 2 `"Absent resident"', add
label define resident_lbl 3 `"Visitor/non-resident"', add
label define resident_lbl 4 `"De facto population (present persons)"', add
label define resident_lbl 9 `"Unknown/missing"', add
label values resident resident_lbl

label define ua01a_chborn_lbl 00 `"Never gave birth"'
label define ua01a_chborn_lbl 01 `"1"', add
label define ua01a_chborn_lbl 02 `"2"', add
label define ua01a_chborn_lbl 03 `"3"', add
label define ua01a_chborn_lbl 04 `"4"', add
label define ua01a_chborn_lbl 05 `"5"', add
label define ua01a_chborn_lbl 06 `"6"', add
label define ua01a_chborn_lbl 07 `"7+"', add
label define ua01a_chborn_lbl 97 `"Unknown (but gave birth)"', add
label define ua01a_chborn_lbl 98 `"Unknown"', add
label define ua01a_chborn_lbl 99 `"NIU (not in universe)"', add
label values ua01a_chborn ua01a_chborn_lbl

label define ua01a_sex_lbl 1 `"Male"'
label define ua01a_sex_lbl 2 `"Female"', add
label values ua01a_sex ua01a_sex_lbl

label define ua01a_age_lbl 00 `"0"'
label define ua01a_age_lbl 01 `"1"', add
label define ua01a_age_lbl 02 `"2"', add
label define ua01a_age_lbl 03 `"3"', add
label define ua01a_age_lbl 04 `"4"', add
label define ua01a_age_lbl 05 `"5"', add
label define ua01a_age_lbl 06 `"6"', add
label define ua01a_age_lbl 07 `"7"', add
label define ua01a_age_lbl 08 `"8"', add
label define ua01a_age_lbl 09 `"9"', add
label define ua01a_age_lbl 10 `"10"', add
label define ua01a_age_lbl 11 `"11"', add
label define ua01a_age_lbl 12 `"12"', add
label define ua01a_age_lbl 13 `"13"', add
label define ua01a_age_lbl 14 `"14"', add
label define ua01a_age_lbl 15 `"15"', add
label define ua01a_age_lbl 16 `"16"', add
label define ua01a_age_lbl 17 `"17"', add
label define ua01a_age_lbl 18 `"18"', add
label define ua01a_age_lbl 19 `"19"', add
label define ua01a_age_lbl 20 `"20"', add
label define ua01a_age_lbl 21 `"21"', add
label define ua01a_age_lbl 22 `"22"', add
label define ua01a_age_lbl 23 `"23"', add
label define ua01a_age_lbl 24 `"24"', add
label define ua01a_age_lbl 25 `"25"', add
label define ua01a_age_lbl 26 `"26"', add
label define ua01a_age_lbl 27 `"27"', add
label define ua01a_age_lbl 28 `"28"', add
label define ua01a_age_lbl 29 `"29"', add
label define ua01a_age_lbl 30 `"30"', add
label define ua01a_age_lbl 31 `"31"', add
label define ua01a_age_lbl 32 `"32"', add
label define ua01a_age_lbl 33 `"33"', add
label define ua01a_age_lbl 34 `"34"', add
label define ua01a_age_lbl 35 `"35"', add
label define ua01a_age_lbl 36 `"36"', add
label define ua01a_age_lbl 37 `"37"', add
label define ua01a_age_lbl 38 `"38"', add
label define ua01a_age_lbl 39 `"39"', add
label define ua01a_age_lbl 40 `"40"', add
label define ua01a_age_lbl 41 `"41"', add
label define ua01a_age_lbl 42 `"42"', add
label define ua01a_age_lbl 43 `"43"', add
label define ua01a_age_lbl 44 `"44"', add
label define ua01a_age_lbl 45 `"45"', add
label define ua01a_age_lbl 46 `"46"', add
label define ua01a_age_lbl 47 `"47"', add
label define ua01a_age_lbl 48 `"48"', add
label define ua01a_age_lbl 49 `"49"', add
label define ua01a_age_lbl 50 `"50"', add
label define ua01a_age_lbl 51 `"51"', add
label define ua01a_age_lbl 52 `"52"', add
label define ua01a_age_lbl 53 `"53"', add
label define ua01a_age_lbl 54 `"54"', add
label define ua01a_age_lbl 55 `"55"', add
label define ua01a_age_lbl 56 `"56"', add
label define ua01a_age_lbl 57 `"57"', add
label define ua01a_age_lbl 58 `"58"', add
label define ua01a_age_lbl 59 `"59"', add
label define ua01a_age_lbl 60 `"60"', add
label define ua01a_age_lbl 61 `"61"', add
label define ua01a_age_lbl 62 `"62"', add
label define ua01a_age_lbl 63 `"63"', add
label define ua01a_age_lbl 64 `"64"', add
label define ua01a_age_lbl 65 `"65"', add
label define ua01a_age_lbl 66 `"66"', add
label define ua01a_age_lbl 67 `"67"', add
label define ua01a_age_lbl 68 `"68"', add
label define ua01a_age_lbl 69 `"69"', add
label define ua01a_age_lbl 70 `"70"', add
label define ua01a_age_lbl 71 `"71"', add
label define ua01a_age_lbl 72 `"72"', add
label define ua01a_age_lbl 73 `"73"', add
label define ua01a_age_lbl 74 `"74"', add
label define ua01a_age_lbl 75 `"75"', add
label define ua01a_age_lbl 76 `"76"', add
label define ua01a_age_lbl 77 `"77"', add
label define ua01a_age_lbl 78 `"78"', add
label define ua01a_age_lbl 79 `"79"', add
label define ua01a_age_lbl 80 `"80"', add
label define ua01a_age_lbl 81 `"81"', add
label define ua01a_age_lbl 82 `"82"', add
label define ua01a_age_lbl 83 `"83"', add
label define ua01a_age_lbl 84 `"84"', add
label define ua01a_age_lbl 85 `"85"', add
label define ua01a_age_lbl 86 `"86"', add
label define ua01a_age_lbl 87 `"87"', add
label define ua01a_age_lbl 88 `"88"', add
label define ua01a_age_lbl 89 `"89"', add
label define ua01a_age_lbl 90 `"90"', add
label define ua01a_age_lbl 91 `"91+"', add
label define ua01a_age_lbl 99 `"Unknown"', add
label values ua01a_age ua01a_age_lbl

label define ua01a_birthyr_lbl 1910 `"1910 or earlier"'
label define ua01a_birthyr_lbl 1911 `"1911"', add
label define ua01a_birthyr_lbl 1912 `"1912"', add
label define ua01a_birthyr_lbl 1913 `"1913"', add
label define ua01a_birthyr_lbl 1914 `"1914"', add
label define ua01a_birthyr_lbl 1915 `"1915"', add
label define ua01a_birthyr_lbl 1916 `"1916"', add
label define ua01a_birthyr_lbl 1917 `"1917"', add
label define ua01a_birthyr_lbl 1918 `"1918"', add
label define ua01a_birthyr_lbl 1919 `"1919"', add
label define ua01a_birthyr_lbl 1920 `"1920"', add
label define ua01a_birthyr_lbl 1921 `"1921"', add
label define ua01a_birthyr_lbl 1922 `"1922"', add
label define ua01a_birthyr_lbl 1923 `"1923"', add
label define ua01a_birthyr_lbl 1924 `"1924"', add
label define ua01a_birthyr_lbl 1925 `"1925"', add
label define ua01a_birthyr_lbl 1926 `"1926"', add
label define ua01a_birthyr_lbl 1927 `"1927"', add
label define ua01a_birthyr_lbl 1928 `"1928"', add
label define ua01a_birthyr_lbl 1929 `"1929"', add
label define ua01a_birthyr_lbl 1930 `"1930"', add
label define ua01a_birthyr_lbl 1931 `"1931"', add
label define ua01a_birthyr_lbl 1932 `"1932"', add
label define ua01a_birthyr_lbl 1933 `"1933"', add
label define ua01a_birthyr_lbl 1934 `"1934"', add
label define ua01a_birthyr_lbl 1935 `"1935"', add
label define ua01a_birthyr_lbl 1936 `"1936"', add
label define ua01a_birthyr_lbl 1937 `"1937"', add
label define ua01a_birthyr_lbl 1938 `"1938"', add
label define ua01a_birthyr_lbl 1939 `"1939"', add
label define ua01a_birthyr_lbl 1940 `"1940"', add
label define ua01a_birthyr_lbl 1941 `"1941"', add
label define ua01a_birthyr_lbl 1942 `"1942"', add
label define ua01a_birthyr_lbl 1943 `"1943"', add
label define ua01a_birthyr_lbl 1944 `"1944"', add
label define ua01a_birthyr_lbl 1945 `"1945"', add
label define ua01a_birthyr_lbl 1946 `"1946"', add
label define ua01a_birthyr_lbl 1947 `"1947"', add
label define ua01a_birthyr_lbl 1948 `"1948"', add
label define ua01a_birthyr_lbl 1949 `"1949"', add
label define ua01a_birthyr_lbl 1950 `"1950"', add
label define ua01a_birthyr_lbl 1951 `"1951"', add
label define ua01a_birthyr_lbl 1952 `"1952"', add
label define ua01a_birthyr_lbl 1953 `"1953"', add
label define ua01a_birthyr_lbl 1954 `"1954"', add
label define ua01a_birthyr_lbl 1955 `"1955"', add
label define ua01a_birthyr_lbl 1956 `"1956"', add
label define ua01a_birthyr_lbl 1957 `"1957"', add
label define ua01a_birthyr_lbl 1958 `"1958"', add
label define ua01a_birthyr_lbl 1959 `"1959"', add
label define ua01a_birthyr_lbl 1960 `"1960"', add
label define ua01a_birthyr_lbl 1961 `"1961"', add
label define ua01a_birthyr_lbl 1962 `"1962"', add
label define ua01a_birthyr_lbl 1963 `"1963"', add
label define ua01a_birthyr_lbl 1964 `"1964"', add
label define ua01a_birthyr_lbl 1965 `"1965"', add
label define ua01a_birthyr_lbl 1966 `"1966"', add
label define ua01a_birthyr_lbl 1967 `"1967"', add
label define ua01a_birthyr_lbl 1968 `"1968"', add
label define ua01a_birthyr_lbl 1969 `"1969"', add
label define ua01a_birthyr_lbl 1970 `"1970"', add
label define ua01a_birthyr_lbl 1971 `"1971"', add
label define ua01a_birthyr_lbl 1972 `"1972"', add
label define ua01a_birthyr_lbl 1973 `"1973"', add
label define ua01a_birthyr_lbl 1974 `"1974"', add
label define ua01a_birthyr_lbl 1975 `"1975"', add
label define ua01a_birthyr_lbl 1976 `"1976"', add
label define ua01a_birthyr_lbl 1977 `"1977"', add
label define ua01a_birthyr_lbl 1978 `"1978"', add
label define ua01a_birthyr_lbl 1979 `"1979"', add
label define ua01a_birthyr_lbl 1980 `"1980"', add
label define ua01a_birthyr_lbl 1981 `"1981"', add
label define ua01a_birthyr_lbl 1982 `"1982"', add
label define ua01a_birthyr_lbl 1983 `"1983"', add
label define ua01a_birthyr_lbl 1984 `"1984"', add
label define ua01a_birthyr_lbl 1985 `"1985"', add
label define ua01a_birthyr_lbl 1986 `"1986"', add
label define ua01a_birthyr_lbl 1987 `"1987"', add
label define ua01a_birthyr_lbl 1988 `"1988"', add
label define ua01a_birthyr_lbl 1989 `"1989"', add
label define ua01a_birthyr_lbl 1990 `"1990"', add
label define ua01a_birthyr_lbl 1991 `"1991"', add
label define ua01a_birthyr_lbl 1992 `"1992"', add
label define ua01a_birthyr_lbl 1993 `"1993"', add
label define ua01a_birthyr_lbl 1994 `"1994"', add
label define ua01a_birthyr_lbl 1995 `"1995"', add
label define ua01a_birthyr_lbl 1996 `"1996"', add
label define ua01a_birthyr_lbl 1997 `"1997"', add
label define ua01a_birthyr_lbl 1998 `"1998"', add
label define ua01a_birthyr_lbl 1999 `"1999"', add
label define ua01a_birthyr_lbl 2000 `"2000"', add
label define ua01a_birthyr_lbl 2001 `"2001"', add
label define ua01a_birthyr_lbl 9999 `"Unknown"', add
label values ua01a_birthyr ua01a_birthyr_lbl

label define ua01a_marst_lbl 1 `"Single (never married)"'
label define ua01a_marst_lbl 2 `"In a registered marriage"', add
label define ua01a_marst_lbl 3 `"In an unregistered marriage (living together)"', add
label define ua01a_marst_lbl 4 `"Widow or widower"', add
label define ua01a_marst_lbl 5 `"Divorced"', add
label define ua01a_marst_lbl 6 `"Separated"', add
label define ua01a_marst_lbl 8 `"Unknown"', add
label define ua01a_marst_lbl 9 `"NIU (not in universe)"', add
label values ua01a_marst ua01a_marst_lbl

label define ua01a_ethnic_lbl 01 `"Ukrainians"'
label define ua01a_ethnic_lbl 02 `"Russian"', add
label define ua01a_ethnic_lbl 03 `"Belorussians"', add
label define ua01a_ethnic_lbl 04 `"Moldavians"', add
label define ua01a_ethnic_lbl 05 `"Azerbaijani"', add
label define ua01a_ethnic_lbl 06 `"Armenians"', add
label define ua01a_ethnic_lbl 07 `"Georgians"', add
label define ua01a_ethnic_lbl 21 `"Bulgarians"', add
label define ua01a_ethnic_lbl 22 `"Gagauz"', add
label define ua01a_ethnic_lbl 23 `"Greeks"', add
label define ua01a_ethnic_lbl 25 `"Jewish"', add
label define ua01a_ethnic_lbl 36 `"Germans"', add
label define ua01a_ethnic_lbl 38 `"Poles"', add
label define ua01a_ethnic_lbl 39 `"Roumanians"', add
label define ua01a_ethnic_lbl 41 `"Tartars "', add
label define ua01a_ethnic_lbl 42 `"Crimean Tatars"', add
label define ua01a_ethnic_lbl 43 `"Hungarians"', add
label define ua01a_ethnic_lbl 46 `"Romani"', add
label define ua01a_ethnic_lbl 98 `"Other nationalities or ethnic origins"', add
label define ua01a_ethnic_lbl 99 `"Unknown"', add
label values ua01a_ethnic ua01a_ethnic_lbl

label define ua01a_mtong_lbl 01 `"Ukrainian"'
label define ua01a_mtong_lbl 02 `"Russian"', add
label define ua01a_mtong_lbl 03 `"Belorussian"', add
label define ua01a_mtong_lbl 04 `"Moldovan"', add
label define ua01a_mtong_lbl 05 `"Azerbaijani"', add
label define ua01a_mtong_lbl 06 `"Armenian"', add
label define ua01a_mtong_lbl 07 `"Georgian"', add
label define ua01a_mtong_lbl 21 `"Bulgarian"', add
label define ua01a_mtong_lbl 22 `"Gagauz"', add
label define ua01a_mtong_lbl 31 `"Crimean Tatar"', add
label define ua01a_mtong_lbl 39 `"Romanian"', add
label define ua01a_mtong_lbl 41 `"Tartarian"', add
label define ua01a_mtong_lbl 43 `"Hungarian"', add
label define ua01a_mtong_lbl 46 `"Romani"', add
label define ua01a_mtong_lbl 98 `"Other"', add
label define ua01a_mtong_lbl 99 `"Unknown"', add
label values ua01a_mtong ua01a_mtong_lbl

label define ua01a_langoth_lbl 00 `"No other language"'
label define ua01a_langoth_lbl 02 `"Russian"', add
label define ua01a_langoth_lbl 03 `"Belorussian"', add
label define ua01a_langoth_lbl 04 `"Moldovan"', add
label define ua01a_langoth_lbl 21 `"Bulgarian"', add
label define ua01a_langoth_lbl 36 `"German"', add
label define ua01a_langoth_lbl 38 `"Polish"', add
label define ua01a_langoth_lbl 43 `"Hungarian"', add
label define ua01a_langoth_lbl 56 `"English"', add
label define ua01a_langoth_lbl 95 `"French"', add
label define ua01a_langoth_lbl 98 `"Other"', add
label define ua01a_langoth_lbl 99 `"Unknown"', add
label values ua01a_langoth ua01a_langoth_lbl

label define ua01a_langukr_lbl 1 `"Yes"'
label define ua01a_langukr_lbl 2 `"No"', add
label define ua01a_langukr_lbl 8 `"Unknown"', add
label define ua01a_langukr_lbl 9 `"NIU (not in universe)"', add
label values ua01a_langukr ua01a_langukr_lbl

label define ua01a_edattan_lbl 01 `"Completed higher education"'
label define ua01a_edattan_lbl 02 `"Basic higher education"', add
label define ua01a_edattan_lbl 03 `"Higher initial education"', add
label define ua01a_edattan_lbl 04 `"Incomplete higher education (for those who graduated before 1996)"', add
label define ua01a_edattan_lbl 05 `"Completed secondary"', add
label define ua01a_edattan_lbl 06 `"Basic secondary"', add
label define ua01a_edattan_lbl 07 `"Primary general education"', add
label define ua01a_edattan_lbl 08 `"Do not have primary general"', add
label define ua01a_edattan_lbl 09 `"Not literate"', add
label define ua01a_edattan_lbl 98 `"Unknown"', add
label define ua01a_edattan_lbl 99 `"NIU (not in universe)"', add
label values ua01a_edattan ua01a_edattan_lbl

label define ua01a_vocschl_lbl 1 `"Yes"'
label define ua01a_vocschl_lbl 2 `"No"', add
label define ua01a_vocschl_lbl 9 `"NIU (not in universe)"', add
label values ua01a_vocschl ua01a_vocschl_lbl

label define ua01a_edtype_lbl 1 `"Higher education"'
label define ua01a_edtype_lbl 2 `"Vocational or technical school"', add
label define ua01a_edtype_lbl 3 `"Secondary school"', add
label define ua01a_edtype_lbl 4 `"Other"', add
label define ua01a_edtype_lbl 5 `"Does not study"', add
label define ua01a_edtype_lbl 9 `"NIU (not in universe)"', add
label values ua01a_edtype ua01a_edtype_lbl

label define ua01a_preschl_lbl 1 `"Yes"'
label define ua01a_preschl_lbl 2 `"No"', add
label define ua01a_preschl_lbl 8 `"Unknown"', add
label define ua01a_preschl_lbl 9 `"NIU (not in universe)"', add
label values ua01a_preschl ua01a_preschl_lbl

label define ua01a_incsrc_lbl 01 `"Work for enterprise, organization, institution, or agriculture sector"'
label define ua01a_incsrc_lbl 02 `"Work for private individual(s)"', add
label define ua01a_incsrc_lbl 03 `"Self employment"', add
label define ua01a_incsrc_lbl 04 `"Work on individual basis"', add
label define ua01a_incsrc_lbl 05 `"Work at own agricultural farm"', add
label define ua01a_incsrc_lbl 06 `"Work without pay at family business"', add
label define ua01a_incsrc_lbl 07 `"Work at private agriculture plot"', add
label define ua01a_incsrc_lbl 08 `"Property income"', add
label define ua01a_incsrc_lbl 09 `"Pension"', add
label define ua01a_incsrc_lbl 10 `"Scholarship"', add
label define ua01a_incsrc_lbl 11 `"Benefits (excluding unemployment benefits)"', add
label define ua01a_incsrc_lbl 12 `"Unemployment benefits"', add
label define ua01a_incsrc_lbl 13 `"Other government social security"', add
label define ua01a_incsrc_lbl 14 `"Dependent on others"', add
label define ua01a_incsrc_lbl 15 `"Other"', add
label define ua01a_incsrc_lbl 99 `"Unknown"', add
label values ua01a_incsrc ua01a_incsrc_lbl

label define ua01a_wkent_lbl 1 `"Not a source of livelihood"'
label define ua01a_wkent_lbl 2 `"Yes, a source of livelihood"', add
label values ua01a_wkent ua01a_wkent_lbl

label define ua01a_wkpriv_lbl 1 `"Not a source of livelihood"'
label define ua01a_wkpriv_lbl 2 `"Yes, a source of livelihood"', add
label values ua01a_wkpriv ua01a_wkpriv_lbl

label define ua01a_wkse_lbl 1 `"Not a source of livelihood"'
label define ua01a_wkse_lbl 2 `"Yes, a source of livelihood"', add
label values ua01a_wkse ua01a_wkse_lbl

label define ua01a_wkind_lbl 1 `"Not a source of livelihood"'
label define ua01a_wkind_lbl 2 `"Yes, a source of livelihood"', add
label values ua01a_wkind ua01a_wkind_lbl

label define ua01a_wkag_lbl 1 `"Not a source of livelihood"'
label define ua01a_wkag_lbl 2 `"Yes, a source of livelihood"', add
label values ua01a_wkag ua01a_wkag_lbl

label define ua01a_wkfambus_lbl 1 `"Not a source of livelihood"'
label define ua01a_wkfambus_lbl 2 `"Yes, a source of livelihood"', add
label values ua01a_wkfambus ua01a_wkfambus_lbl

label define ua01a_wksubag_lbl 1 `"Not a source of livelihood"'
label define ua01a_wksubag_lbl 2 `"Yes, a source of livelihood"', add
label values ua01a_wksubag ua01a_wksubag_lbl

label define ua01a_incprop_lbl 1 `"Not a source of livelihood"'
label define ua01a_incprop_lbl 2 `"Yes, a source of livelihood"', add
label values ua01a_incprop ua01a_incprop_lbl

label define ua01a_incpens_lbl 1 `"Not a source of livelihood"'
label define ua01a_incpens_lbl 2 `"Yes, a source of livelihood"', add
label values ua01a_incpens ua01a_incpens_lbl

label define ua01a_incschl_lbl 1 `"Not a source of livelihood"'
label define ua01a_incschl_lbl 2 `"Yes, a source of livelihood"', add
label values ua01a_incschl ua01a_incschl_lbl

label define ua01a_incasst_lbl 1 `"Not a source of livelihood"'
label define ua01a_incasst_lbl 2 `"Yes, a source of livelihood"', add
label values ua01a_incasst ua01a_incasst_lbl

label define ua01a_incue_lbl 1 `"Not a source of livelihood"'
label define ua01a_incue_lbl 2 `"Yes, a source of livelihood"', add
label values ua01a_incue ua01a_incue_lbl

label define ua01a_incpub_lbl 1 `"Not a source of livelihood"'
label define ua01a_incpub_lbl 2 `"Yes, a source of livelihood"', add
label values ua01a_incpub ua01a_incpub_lbl

label define ua01a_incdep_lbl 1 `"Not a source of livelihood"'
label define ua01a_incdep_lbl 2 `"Yes, a source of livelihood"', add
label values ua01a_incdep ua01a_incdep_lbl

label define ua01a_incoth_lbl 1 `"Not a source of livelihood"'
label define ua01a_incoth_lbl 2 `"Yes, a source of livelihood"', add
label values ua01a_incoth ua01a_incoth_lbl

label define ua01a_classwk_lbl 1 `"Employee"'
label define ua01a_classwk_lbl 2 `"Member of a collective enterprise or cooperative"', add
label define ua01a_classwk_lbl 3 `"Employer"', add
label define ua01a_classwk_lbl 4 `"Self-employed"', add
label define ua01a_classwk_lbl 5 `"Unpaid family worker"', add
label define ua01a_classwk_lbl 8 `"Unknown"', add
label define ua01a_classwk_lbl 9 `"NIU (not in universe)"', add
label values ua01a_classwk ua01a_classwk_lbl

label define ua01a_wkhere_lbl 1 `"No"'
label define ua01a_wkhere_lbl 2 `"Yes"', add
label define ua01a_wkhere_lbl 9 `"NIU (not in universe)"', add
label values ua01a_wkhere ua01a_wkhere_lbl

label define ua01a_wkaway_lbl 001 `"The Autonomous Republic of Crimea"'
label define ua01a_wkaway_lbl 005 `"Vinnytska oblast"', add
label define ua01a_wkaway_lbl 007 `"Volynska oblast"', add
label define ua01a_wkaway_lbl 012 `"Dnipropetrovska oblast"', add
label define ua01a_wkaway_lbl 014 `"Donetska oblast"', add
label define ua01a_wkaway_lbl 018 `"Zhytomyrska oblast"', add
label define ua01a_wkaway_lbl 021 `"Zakarpatska oblast"', add
label define ua01a_wkaway_lbl 023 `"Zaporizka oblast"', add
label define ua01a_wkaway_lbl 026 `"Ivano-Frankivska oblast"', add
label define ua01a_wkaway_lbl 032 `"Kyivska oblast"', add
label define ua01a_wkaway_lbl 035 `"Kirovohradska oblast"', add
label define ua01a_wkaway_lbl 044 `"Luhanska oblast"', add
label define ua01a_wkaway_lbl 046 `"Lvivska oblast"', add
label define ua01a_wkaway_lbl 048 `"Mykolaivska oblast"', add
label define ua01a_wkaway_lbl 051 `"Odeska oblast"', add
label define ua01a_wkaway_lbl 053 `"Poltavska oblast"', add
label define ua01a_wkaway_lbl 056 `"Rivnenska oblast"', add
label define ua01a_wkaway_lbl 059 `"Sumska oblast"', add
label define ua01a_wkaway_lbl 061 `"Ternopilska oblast"', add
label define ua01a_wkaway_lbl 063 `"Kharkivska oblast"', add
label define ua01a_wkaway_lbl 065 `"Khersonska oblast"', add
label define ua01a_wkaway_lbl 068 `"Khmelnytska oblast"', add
label define ua01a_wkaway_lbl 071 `"Cherkaska oblast"', add
label define ua01a_wkaway_lbl 073 `"Chernivetska oblast"', add
label define ua01a_wkaway_lbl 074 `"Chernihivska oblast"', add
label define ua01a_wkaway_lbl 080 `"Kyiv"', add
label define ua01a_wkaway_lbl 085 `"Sevastopol"', add
label define ua01a_wkaway_lbl 122 `"Belarus"', add
label define ua01a_wkaway_lbl 140 `"Republic of Moldova"', add
label define ua01a_wkaway_lbl 141 `"Russian Federation"', add
label define ua01a_wkaway_lbl 149 `"Other former Soviet Republics"', add
label define ua01a_wkaway_lbl 152 `"Belgium"', add
label define ua01a_wkaway_lbl 156 `"Greece"', add
label define ua01a_wkaway_lbl 160 `"Spain"', add
label define ua01a_wkaway_lbl 161 `"Italy"', add
label define ua01a_wkaway_lbl 166 `"Germany"', add
label define ua01a_wkaway_lbl 168 `"Poland"', add
label define ua01a_wkaway_lbl 169 `"Portugal"', add
label define ua01a_wkaway_lbl 172 `"Slovakia"', add
label define ua01a_wkaway_lbl 174 `"United Kingdom"', add
label define ua01a_wkaway_lbl 175 `"Hungary"', add
label define ua01a_wkaway_lbl 177 `"France"', add
label define ua01a_wkaway_lbl 179 `"Czech Republic"', add
label define ua01a_wkaway_lbl 199 `"Other Europe"', add
label define ua01a_wkaway_lbl 214 `"Canada"', add
label define ua01a_wkaway_lbl 225 `"United States of America"', add
label define ua01a_wkaway_lbl 299 `"Other Americas"', add
label define ua01a_wkaway_lbl 406 `"Israel"', add
label define ua01a_wkaway_lbl 429 `"Turkey"', add
label define ua01a_wkaway_lbl 499 `"Other Asia"', add
label define ua01a_wkaway_lbl 500 `"Other"', add
label define ua01a_wkaway_lbl 997 `"Do not work elsewhere"', add
label define ua01a_wkaway_lbl 998 `"Unknown"', add
label define ua01a_wkaway_lbl 999 `"NIU (not in universe)"', add
label values ua01a_wkaway ua01a_wkaway_lbl

label define ua01a_bpl_lbl 001 `"The Autonomous Republic of Crimea"'
label define ua01a_bpl_lbl 005 `"Vinnytska oblast"', add
label define ua01a_bpl_lbl 007 `"Volynska oblast"', add
label define ua01a_bpl_lbl 012 `"Dnipropetrovska oblast"', add
label define ua01a_bpl_lbl 014 `"Donetska oblast"', add
label define ua01a_bpl_lbl 018 `"Zhytomyrska oblast"', add
label define ua01a_bpl_lbl 021 `"Zakarpatska oblast"', add
label define ua01a_bpl_lbl 023 `"Zaporizka oblast"', add
label define ua01a_bpl_lbl 026 `"Ivano-Frankivska oblast"', add
label define ua01a_bpl_lbl 032 `"Kyivska oblast"', add
label define ua01a_bpl_lbl 035 `"Kirovohradska oblast"', add
label define ua01a_bpl_lbl 044 `"Luhanska oblast"', add
label define ua01a_bpl_lbl 046 `"Lvivska oblast"', add
label define ua01a_bpl_lbl 048 `"Mykolaivska oblast"', add
label define ua01a_bpl_lbl 051 `"Odeska oblast"', add
label define ua01a_bpl_lbl 053 `"Poltavska oblast"', add
label define ua01a_bpl_lbl 056 `"Rivnenska oblast"', add
label define ua01a_bpl_lbl 059 `"Sumska oblast"', add
label define ua01a_bpl_lbl 061 `"Ternopilska oblast"', add
label define ua01a_bpl_lbl 063 `"Kharkivska oblast"', add
label define ua01a_bpl_lbl 065 `"Khersonska oblast"', add
label define ua01a_bpl_lbl 068 `"Khmelnytska oblast"', add
label define ua01a_bpl_lbl 071 `"Cherkaska oblast"', add
label define ua01a_bpl_lbl 073 `"Chernivetska oblast"', add
label define ua01a_bpl_lbl 074 `"Chernihivska oblast"', add
label define ua01a_bpl_lbl 080 `"Kyiv (independent city)"', add
label define ua01a_bpl_lbl 085 `"Sevastopol (independent city)"', add
label define ua01a_bpl_lbl 121 `"Azerbaijan"', add
label define ua01a_bpl_lbl 122 `"Belarus"', add
label define ua01a_bpl_lbl 123 `"Armenia"', add
label define ua01a_bpl_lbl 124 `"Georgia"', add
label define ua01a_bpl_lbl 125 `"Estonia"', add
label define ua01a_bpl_lbl 126 `"Kazakhstan"', add
label define ua01a_bpl_lbl 127 `"Kyrgyzstan"', add
label define ua01a_bpl_lbl 128 `"Latvia"', add
label define ua01a_bpl_lbl 129 `"Lithuania"', add
label define ua01a_bpl_lbl 140 `"Republic of Moldova"', add
label define ua01a_bpl_lbl 141 `"Russian Federation"', add
label define ua01a_bpl_lbl 142 `"Tajikistan"', add
label define ua01a_bpl_lbl 143 `"Turkmenistan"', add
label define ua01a_bpl_lbl 144 `"Uzbekistan"', add
label define ua01a_bpl_lbl 150 `"Austria"', add
label define ua01a_bpl_lbl 153 `"Bulgaria"', add
label define ua01a_bpl_lbl 156 `"Greece"', add
label define ua01a_bpl_lbl 161 `"Italy"', add
label define ua01a_bpl_lbl 166 `"Germany"', add
label define ua01a_bpl_lbl 168 `"Poland"', add
label define ua01a_bpl_lbl 170 `"Romania"', add
label define ua01a_bpl_lbl 172 `"Slovakia"', add
label define ua01a_bpl_lbl 175 `"Hungary"', add
label define ua01a_bpl_lbl 177 `"France"', add
label define ua01a_bpl_lbl 179 `"Czech Republic"', add
label define ua01a_bpl_lbl 182 `"Yugoslavia"', add
label define ua01a_bpl_lbl 199 `"Other Europe"', add
label define ua01a_bpl_lbl 200 `"Argentina"', add
label define ua01a_bpl_lbl 214 `"Canada"', add
label define ua01a_bpl_lbl 217 `"Cuba"', add
label define ua01a_bpl_lbl 225 `"United States of America"', add
label define ua01a_bpl_lbl 299 `"Other Americas"', add
label define ua01a_bpl_lbl 325 `"Morocco"', add
label define ua01a_bpl_lbl 329 `"Nigeria"', add
label define ua01a_bpl_lbl 335 `"Sudan"', add
label define ua01a_bpl_lbl 338 `"Tunisia"', add
label define ua01a_bpl_lbl 399 `"Other Africa"', add
label define ua01a_bpl_lbl 400 `"Afghanistan"', add
label define ua01a_bpl_lbl 402 `"Bangladesh"', add
label define ua01a_bpl_lbl 404 `"Viet nam"', add
label define ua01a_bpl_lbl 406 `"Israel"', add
label define ua01a_bpl_lbl 407 `"India"', add
label define ua01a_bpl_lbl 410 `"Islamic Republic of Iran"', add
label define ua01a_bpl_lbl 411 `"Yemen"', add
label define ua01a_bpl_lbl 412 `"Jordan"', add
label define ua01a_bpl_lbl 413 `"China"', add
label define ua01a_bpl_lbl 414 `"Democratic People's Republic Korea"', add
label define ua01a_bpl_lbl 415 `"Republic of Korea"', add
label define ua01a_bpl_lbl 416 `"Kuwait"', add
label define ua01a_bpl_lbl 418 `"Lebanon"', add
label define ua01a_bpl_lbl 420 `"Mongolia"', add
label define ua01a_bpl_lbl 424 `"Palestine"', add
label define ua01a_bpl_lbl 425 `"Pakistan"', add
label define ua01a_bpl_lbl 428 `"Syrian Arab Republic"', add
label define ua01a_bpl_lbl 429 `"Turkey"', add
label define ua01a_bpl_lbl 499 `"Other Asia"', add
label define ua01a_bpl_lbl 500 `"Oceania"', add
label define ua01a_bpl_lbl 999 `"Unknown"', add
label values ua01a_bpl ua01a_bpl_lbl

label define ua01a_prevres_lbl 001 `"The Autonomous Republic of Crimea"'
label define ua01a_prevres_lbl 005 `"Vinnytska oblast"', add
label define ua01a_prevres_lbl 007 `"Volynska oblast"', add
label define ua01a_prevres_lbl 012 `"Dnipropetrovska oblast"', add
label define ua01a_prevres_lbl 014 `"Donetska oblast"', add
label define ua01a_prevres_lbl 018 `"Zhytomyrska oblast"', add
label define ua01a_prevres_lbl 021 `"Zakarpatska oblast"', add
label define ua01a_prevres_lbl 023 `"Zaporizka oblast"', add
label define ua01a_prevres_lbl 026 `"Ivano-Frankivska oblast"', add
label define ua01a_prevres_lbl 032 `"Kyivska oblast"', add
label define ua01a_prevres_lbl 035 `"Kirovohradska oblast"', add
label define ua01a_prevres_lbl 044 `"Luhanska oblast"', add
label define ua01a_prevres_lbl 046 `"Lvivska oblast"', add
label define ua01a_prevres_lbl 048 `"Mykolaivska oblast"', add
label define ua01a_prevres_lbl 051 `"Odeska oblast"', add
label define ua01a_prevres_lbl 053 `"Poltavska oblast"', add
label define ua01a_prevres_lbl 056 `"Rivnenska oblast"', add
label define ua01a_prevres_lbl 059 `"Sumska oblast"', add
label define ua01a_prevres_lbl 061 `"Ternopilska oblast"', add
label define ua01a_prevres_lbl 063 `"Kharkivska oblast"', add
label define ua01a_prevres_lbl 065 `"Khersonska oblast"', add
label define ua01a_prevres_lbl 068 `"Khmelnytska oblast"', add
label define ua01a_prevres_lbl 071 `"Cherkaska oblast"', add
label define ua01a_prevres_lbl 073 `"Chernivetska oblast"', add
label define ua01a_prevres_lbl 074 `"Chernihivska oblast"', add
label define ua01a_prevres_lbl 080 `"Kyiv (independent city)"', add
label define ua01a_prevres_lbl 085 `"Sevastopol (independent city)"', add
label define ua01a_prevres_lbl 121 `"Azerbaijan"', add
label define ua01a_prevres_lbl 122 `"Belarus"', add
label define ua01a_prevres_lbl 123 `"Armenia"', add
label define ua01a_prevres_lbl 124 `"Georgia"', add
label define ua01a_prevres_lbl 125 `"Estonia"', add
label define ua01a_prevres_lbl 126 `"Kazakhstan"', add
label define ua01a_prevres_lbl 127 `"Kyrgyzstan"', add
label define ua01a_prevres_lbl 128 `"Latvia"', add
label define ua01a_prevres_lbl 129 `"Lithuania"', add
label define ua01a_prevres_lbl 140 `"Moldova, republic of"', add
label define ua01a_prevres_lbl 141 `"Russian Federation"', add
label define ua01a_prevres_lbl 142 `"Tajikistan"', add
label define ua01a_prevres_lbl 143 `"Turkmenistan"', add
label define ua01a_prevres_lbl 144 `"Uzbekistan"', add
label define ua01a_prevres_lbl 150 `"Austria"', add
label define ua01a_prevres_lbl 153 `"Bulgaria"', add
label define ua01a_prevres_lbl 156 `"Greece"', add
label define ua01a_prevres_lbl 160 `"Spain"', add
label define ua01a_prevres_lbl 161 `"Italy"', add
label define ua01a_prevres_lbl 166 `"Germany"', add
label define ua01a_prevres_lbl 167 `"Norway"', add
label define ua01a_prevres_lbl 168 `"Poland"', add
label define ua01a_prevres_lbl 170 `"Romania"', add
label define ua01a_prevres_lbl 171 `"San Marino"', add
label define ua01a_prevres_lbl 172 `"Slovakia"', add
label define ua01a_prevres_lbl 174 `"United Kingdom"', add
label define ua01a_prevres_lbl 175 `"Hungary"', add
label define ua01a_prevres_lbl 176 `"Finland"', add
label define ua01a_prevres_lbl 177 `"France"', add
label define ua01a_prevres_lbl 179 `"Czech Republic"', add
label define ua01a_prevres_lbl 182 `"Yugoslavia"', add
label define ua01a_prevres_lbl 199 `"Other Europe"', add
label define ua01a_prevres_lbl 200 `"Argentina"', add
label define ua01a_prevres_lbl 214 `"Canada"', add
label define ua01a_prevres_lbl 217 `"Cuba"', add
label define ua01a_prevres_lbl 225 `"United States of America"', add
label define ua01a_prevres_lbl 299 `"Other Americas"', add
label define ua01a_prevres_lbl 300 `"Algeria"', add
label define ua01a_prevres_lbl 316 `"Egypt"', add
label define ua01a_prevres_lbl 321 `"Libyan Arab Jamahiriya"', add
label define ua01a_prevres_lbl 325 `"Morocco"', add
label define ua01a_prevres_lbl 329 `"Nigeria"', add
label define ua01a_prevres_lbl 338 `"Tunisia"', add
label define ua01a_prevres_lbl 399 `"Other Africa"', add
label define ua01a_prevres_lbl 400 `"Afghanistan"', add
label define ua01a_prevres_lbl 404 `"Vietnam"', add
label define ua01a_prevres_lbl 406 `"Israel"', add
label define ua01a_prevres_lbl 407 `"India"', add
label define ua01a_prevres_lbl 410 `"Islamic Republic of Iran"', add
label define ua01a_prevres_lbl 411 `"Yemen"', add
label define ua01a_prevres_lbl 412 `"Jordan"', add
label define ua01a_prevres_lbl 413 `"China"', add
label define ua01a_prevres_lbl 414 `"Democratic People's Republic Korea"', add
label define ua01a_prevres_lbl 415 `"Republic of Korea"', add
label define ua01a_prevres_lbl 416 `"Kuwait"', add
label define ua01a_prevres_lbl 418 `"Lebanon"', add
label define ua01a_prevres_lbl 420 `"Mongolia"', add
label define ua01a_prevres_lbl 424 `"Palestine"', add
label define ua01a_prevres_lbl 425 `"Pakistan"', add
label define ua01a_prevres_lbl 428 `"Syrian Arab Republic"', add
label define ua01a_prevres_lbl 429 `"Turkey"', add
label define ua01a_prevres_lbl 499 `"Other Asia"', add
label define ua01a_prevres_lbl 998 `"Unknown"', add
label define ua01a_prevres_lbl 999 `"NIU (not in universe)"', add
label values ua01a_prevres ua01a_prevres_lbl

label define ua01a_resstat_lbl 0 `"Regular resident"'
label define ua01a_resstat_lbl 1 `"Temporarily absent"', add
label define ua01a_resstat_lbl 2 `"Temporarily resident"', add
label values ua01a_resstat ua01a_resstat_lbl

label define ua01a_moved_lbl 1 `"No"'
label define ua01a_moved_lbl 2 `"Yes"', add
label define ua01a_moved_lbl 9 `"NIU (not in universe)"', add
label values ua01a_moved ua01a_moved_lbl

label define ua01a_rescont_lbl 1 `"Yes"'
label define ua01a_rescont_lbl 2 `"No"', add
label define ua01a_rescont_lbl 8 `"Unknown"', add
label define ua01a_rescont_lbl 9 `"NIU (not in universe)"', add
label values ua01a_rescont ua01a_rescont_lbl

label define ua01a_chborn2_lbl 1 `"Yes"'
label define ua01a_chborn2_lbl 2 `"No"', add
label define ua01a_chborn2_lbl 8 `"Unknown"', add
label define ua01a_chborn2_lbl 9 `"NIU (not in universe)"', add
label values ua01a_chborn2 ua01a_chborn2_lbl

label define ua01a_headhh_lbl 1 `"No"'
label define ua01a_headhh_lbl 2 `"Yes"', add
label values ua01a_headhh ua01a_headhh_lbl

label define ua01a_famunit_lbl 0 `"Not a family unit"'
label define ua01a_famunit_lbl 1 `"1"', add
label define ua01a_famunit_lbl 2 `"2"', add
label define ua01a_famunit_lbl 3 `"3"', add
label define ua01a_famunit_lbl 4 `"4"', add
label define ua01a_famunit_lbl 5 `"5"', add
label define ua01a_famunit_lbl 6 `"6+"', add
label values ua01a_famunit ua01a_famunit_lbl


