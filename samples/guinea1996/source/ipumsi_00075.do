* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    gn96a_dwnum     22-28    ///
  byte    gn96a_pern      29-30    ///
  byte    gn96a_fbig      31-31    ///
  byte    gn96a_regionn   32-32    ///
  byte    gn96a_region    33-33    ///
  byte    gn96a_prefect   34-35    ///
  byte    gn96a_urban     36-36    ///
  byte    gn96a_hhtype    37-37    ///
  byte    gn96a_pnmp      38-39    ///
  byte    gn96a_pnma      40-41    ///
  byte    gn96a_pnmv      42-43    ///
  byte    gn96a_pnfp      44-45    ///
  byte    gn96a_pnfa      46-47    ///
  byte    gn96a_pnfv      48-49    ///
  byte    gn96a_tenure    50-50    ///
  byte    gn96a_watsup    51-51    ///
  byte    gn96a_light     52-52    ///
  byte    gn96a_fuelck    53-53    ///
  byte    gn96a_toilet    54-54    ///
  byte    gn96a_garbage   55-55    ///
  byte    gn96a_wastewat  56-56    ///
  byte    gn96a_sewage    57-57    ///
  byte    gn96a_rooms     58-59    ///
  byte    gn96a_sexd      60-60    ///
  int     gn96a_aged      61-63    ///
  int     pernum          64-66    ///
  float   wtper           67-74    ///
  byte    resident        75-75    ///
  byte    gn96a_pernum    76-77    ///
  byte    gn96a_pernumo   78-79    ///
  byte    gn96a_relate    80-81    ///
  byte    gn96a_sex       82-82    ///
  byte    gn96a_resid     83-83    ///
  byte    gn96a_birmon    84-85    ///
  byte    gn96a_biryr     86-87    ///
  int     gn96a_ageraw    88-90    ///
  byte    gn96a_bpl       91-92    ///
  byte    gn96a_nation    93-94    ///
  byte    gn96a_relig     95-95    ///
  byte    gn96a_disab     96-97    ///
  byte    gn96a_resdur    98-98    ///
  byte    gn96a_resprev   99-100   ///
  byte    gn96a_lit       101-102  ///
  byte    gn96a_edlev2    103-103  ///
  byte    gn96a_grade     104-105  ///
  byte    gn96a_edattan   106-107  ///
  byte    gn96a_empstat   108-109  ///
  int     gn96a_occ       110-112  ///
  byte    gn96a_classwk   113-114  ///
  byte    gn96a_marst     115-116  ///
  byte    gn96a_chbornm   117-118  ///
  byte    gn96a_chbornf   119-120  ///
  byte    gn96a_chsurvm   121-122  ///
  byte    gn96a_chsurvf   123-124  ///
  byte    gn96a_chb12m    125-125  ///
  byte    gn96a_chb12f    126-126  ///
  int     gn96a_age       127-129  ///
  using `"ipumsi_00075.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var gn96a_dwnum    `"Dwelling number"'
label var gn96a_pern     `"Number of persons in household"'
label var gn96a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var gn96a_regionn  `"Natural region"'
label var gn96a_region   `"Administrative region"'
label var gn96a_prefect  `"Prefecture"'
label var gn96a_urban    `"Urban-rural"'
label var gn96a_hhtype   `"Household type"'
label var gn96a_pnmp     `"Number of male present resident"'
label var gn96a_pnma     `"Number of male absent residents"'
label var gn96a_pnmv     `"Number of male visitors"'
label var gn96a_pnfp     `"Number of female present residents"'
label var gn96a_pnfa     `"Number of female absent residents"'
label var gn96a_pnfv     `"Number of female visitors"'
label var gn96a_tenure   `"Occupancy status"'
label var gn96a_watsup   `"Water supply"'
label var gn96a_light    `"Lighting type"'
label var gn96a_fuelck   `"Cooking energy"'
label var gn96a_toilet   `"Toilet type"'
label var gn96a_garbage  `"Garbage disposal"'
label var gn96a_wastewat `"Waste water disposal"'
label var gn96a_sewage   `"Sewage disposal"'
label var gn96a_rooms    `"Number of rooms"'
label var gn96a_sexd     `"Sex of the deceased"'
label var gn96a_aged     `"Age of the deceased"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var resident       `"Residence status: de facto, de jure"'
label var gn96a_pernum   `"Person number (within household)"'
label var gn96a_pernumo  `"Person number"'
label var gn96a_relate   `"Relationship to household head"'
label var gn96a_sex      `"Sex"'
label var gn96a_resid    `"Resident status"'
label var gn96a_birmon   `"Month of birth"'
label var gn96a_biryr    `"Year of birth"'
label var gn96a_ageraw   `"Age (raw)"'
label var gn96a_bpl      `"Prefecture or country of birth"'
label var gn96a_nation   `"Nationality"'
label var gn96a_relig    `"Religion"'
label var gn96a_disab    `"Disability"'
label var gn96a_resdur   `"Duration of residence"'
label var gn96a_resprev  `"Previous prefecture or country of residence"'
label var gn96a_lit      `"Literacy and language"'
label var gn96a_edlev2   `"Education, level completed"'
label var gn96a_grade    `"Education, grade completed within level"'
label var gn96a_edattan  `"Educational attainment"'
label var gn96a_empstat  `"Economic activity status"'
label var gn96a_occ      `"Occupation"'
label var gn96a_classwk  `"Status in employment"'
label var gn96a_marst    `"Marital status"'
label var gn96a_chbornm  `"Number of male children ever born"'
label var gn96a_chbornf  `"Number of female children ever born"'
label var gn96a_chsurvm  `"Number of surviving male children ever born"'
label var gn96a_chsurvf  `"Number of surviving female children ever born"'
label var gn96a_chb12m   `"Number of male children born in last 12 months"'
label var gn96a_chb12f   `"Number of female children born in last 12 months"'
label var gn96a_age      `"Age"'

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

label define gn96a_pern_lbl 01 `"1"'
label define gn96a_pern_lbl 02 `"2"', add
label define gn96a_pern_lbl 03 `"3"', add
label define gn96a_pern_lbl 04 `"4"', add
label define gn96a_pern_lbl 05 `"5"', add
label define gn96a_pern_lbl 06 `"6"', add
label define gn96a_pern_lbl 07 `"7"', add
label define gn96a_pern_lbl 08 `"8"', add
label define gn96a_pern_lbl 09 `"9"', add
label define gn96a_pern_lbl 10 `"10"', add
label define gn96a_pern_lbl 11 `"11"', add
label define gn96a_pern_lbl 12 `"12"', add
label define gn96a_pern_lbl 13 `"13"', add
label define gn96a_pern_lbl 14 `"14"', add
label define gn96a_pern_lbl 15 `"15"', add
label define gn96a_pern_lbl 16 `"16"', add
label define gn96a_pern_lbl 17 `"17"', add
label define gn96a_pern_lbl 18 `"18"', add
label define gn96a_pern_lbl 19 `"19"', add
label define gn96a_pern_lbl 20 `"20"', add
label define gn96a_pern_lbl 21 `"21"', add
label define gn96a_pern_lbl 22 `"22"', add
label define gn96a_pern_lbl 23 `"23"', add
label define gn96a_pern_lbl 24 `"24"', add
label define gn96a_pern_lbl 25 `"25"', add
label define gn96a_pern_lbl 26 `"26"', add
label define gn96a_pern_lbl 27 `"27"', add
label define gn96a_pern_lbl 28 `"28"', add
label define gn96a_pern_lbl 29 `"29"', add
label define gn96a_pern_lbl 30 `"30"', add
label define gn96a_pern_lbl 31 `"31"', add
label define gn96a_pern_lbl 32 `"32"', add
label define gn96a_pern_lbl 33 `"33"', add
label define gn96a_pern_lbl 34 `"34"', add
label define gn96a_pern_lbl 35 `"35"', add
label define gn96a_pern_lbl 36 `"36"', add
label define gn96a_pern_lbl 37 `"37"', add
label define gn96a_pern_lbl 38 `"38"', add
label define gn96a_pern_lbl 39 `"39"', add
label define gn96a_pern_lbl 40 `"40"', add
label define gn96a_pern_lbl 41 `"41"', add
label define gn96a_pern_lbl 42 `"42"', add
label define gn96a_pern_lbl 43 `"43"', add
label define gn96a_pern_lbl 44 `"44"', add
label define gn96a_pern_lbl 45 `"45"', add
label define gn96a_pern_lbl 46 `"46"', add
label define gn96a_pern_lbl 47 `"47"', add
label define gn96a_pern_lbl 48 `"48"', add
label define gn96a_pern_lbl 49 `"49"', add
label define gn96a_pern_lbl 50 `"50"', add
label values gn96a_pern gn96a_pern_lbl

label define gn96a_fbig_lbl 0 `"No problem"'
label define gn96a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define gn96a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values gn96a_fbig gn96a_fbig_lbl

label define gn96a_regionn_lbl 1 `"Lower Guinea"'
label define gn96a_regionn_lbl 2 `"Middle Guinea"', add
label define gn96a_regionn_lbl 3 `"Upper Guinea"', add
label define gn96a_regionn_lbl 4 `"Forest Guinea"', add
label values gn96a_regionn gn96a_regionn_lbl

label define gn96a_region_lbl 1 `"Boké"'
label define gn96a_region_lbl 2 `"Faranah"', add
label define gn96a_region_lbl 3 `"Kankan"', add
label define gn96a_region_lbl 4 `"Kindia"', add
label define gn96a_region_lbl 5 `"Labé"', add
label define gn96a_region_lbl 6 `"Mamou"', add
label define gn96a_region_lbl 7 `"N'Zérékoré"', add
label define gn96a_region_lbl 8 `"Conakry"', add
label values gn96a_region gn96a_region_lbl

label define gn96a_prefect_lbl 10 `"Boffa"'
label define gn96a_prefect_lbl 11 `"Boké"', add
label define gn96a_prefect_lbl 12 `"Conakry"', add
label define gn96a_prefect_lbl 13 `"Coyah"', add
label define gn96a_prefect_lbl 14 `"Dubréka"', add
label define gn96a_prefect_lbl 15 `"Forécariah"', add
label define gn96a_prefect_lbl 16 `"Fria"', add
label define gn96a_prefect_lbl 17 `"Kindia"', add
label define gn96a_prefect_lbl 18 `"Télimélé"', add
label define gn96a_prefect_lbl 20 `"Dalaba"', add
label define gn96a_prefect_lbl 21 `"Gaoual"', add
label define gn96a_prefect_lbl 22 `"Koubia"', add
label define gn96a_prefect_lbl 23 `"Koundara"', add
label define gn96a_prefect_lbl 24 `"Labé"', add
label define gn96a_prefect_lbl 25 `"Lélouma"', add
label define gn96a_prefect_lbl 26 `"Mali"', add
label define gn96a_prefect_lbl 27 `"Mamou"', add
label define gn96a_prefect_lbl 28 `"Pita"', add
label define gn96a_prefect_lbl 29 `"Tougué"', add
label define gn96a_prefect_lbl 30 `"Dabola"', add
label define gn96a_prefect_lbl 31 `"Dinguiraye"', add
label define gn96a_prefect_lbl 32 `"Faranah"', add
label define gn96a_prefect_lbl 33 `"Kankan"', add
label define gn96a_prefect_lbl 34 `"Kérouané"', add
label define gn96a_prefect_lbl 35 `"Kouroussa"', add
label define gn96a_prefect_lbl 36 `"Mandiana"', add
label define gn96a_prefect_lbl 37 `"Siguiri"', add
label define gn96a_prefect_lbl 40 `"Beyla"', add
label define gn96a_prefect_lbl 41 `"Guéckédou"', add
label define gn96a_prefect_lbl 42 `"Kissidougou"', add
label define gn96a_prefect_lbl 43 `"Lola"', add
label define gn96a_prefect_lbl 44 `"Macenta"', add
label define gn96a_prefect_lbl 45 `"N'Zérékoré"', add
label define gn96a_prefect_lbl 46 `"Yomou"', add
label values gn96a_prefect gn96a_prefect_lbl

label define gn96a_urban_lbl 1 `"Urban"'
label define gn96a_urban_lbl 2 `"Rural"', add
label values gn96a_urban gn96a_urban_lbl

label define gn96a_hhtype_lbl 1 `"Ordinary"'
label define gn96a_hhtype_lbl 2 `"Collective"', add
label values gn96a_hhtype gn96a_hhtype_lbl

label define gn96a_pnmp_lbl 00 `"0"'
label define gn96a_pnmp_lbl 01 `"1"', add
label define gn96a_pnmp_lbl 02 `"2"', add
label define gn96a_pnmp_lbl 03 `"3"', add
label define gn96a_pnmp_lbl 04 `"4"', add
label define gn96a_pnmp_lbl 05 `"5"', add
label define gn96a_pnmp_lbl 06 `"6"', add
label define gn96a_pnmp_lbl 07 `"7"', add
label define gn96a_pnmp_lbl 08 `"8"', add
label define gn96a_pnmp_lbl 09 `"9"', add
label define gn96a_pnmp_lbl 10 `"10"', add
label define gn96a_pnmp_lbl 11 `"11"', add
label define gn96a_pnmp_lbl 12 `"12"', add
label define gn96a_pnmp_lbl 13 `"13"', add
label define gn96a_pnmp_lbl 14 `"14"', add
label define gn96a_pnmp_lbl 15 `"15"', add
label define gn96a_pnmp_lbl 16 `"16"', add
label define gn96a_pnmp_lbl 17 `"17"', add
label define gn96a_pnmp_lbl 18 `"18"', add
label define gn96a_pnmp_lbl 19 `"19"', add
label define gn96a_pnmp_lbl 20 `"20"', add
label define gn96a_pnmp_lbl 21 `"21"', add
label define gn96a_pnmp_lbl 22 `"22"', add
label define gn96a_pnmp_lbl 23 `"23"', add
label define gn96a_pnmp_lbl 24 `"24"', add
label define gn96a_pnmp_lbl 25 `"25"', add
label define gn96a_pnmp_lbl 26 `"26"', add
label define gn96a_pnmp_lbl 27 `"27"', add
label define gn96a_pnmp_lbl 28 `"28"', add
label define gn96a_pnmp_lbl 29 `"29"', add
label define gn96a_pnmp_lbl 30 `"30"', add
label define gn96a_pnmp_lbl 31 `"31"', add
label define gn96a_pnmp_lbl 32 `"32"', add
label define gn96a_pnmp_lbl 33 `"33"', add
label define gn96a_pnmp_lbl 34 `"34"', add
label define gn96a_pnmp_lbl 35 `"35"', add
label define gn96a_pnmp_lbl 36 `"36"', add
label define gn96a_pnmp_lbl 37 `"37"', add
label define gn96a_pnmp_lbl 38 `"38"', add
label define gn96a_pnmp_lbl 39 `"39"', add
label define gn96a_pnmp_lbl 40 `"40"', add
label define gn96a_pnmp_lbl 41 `"41"', add
label define gn96a_pnmp_lbl 42 `"42"', add
label define gn96a_pnmp_lbl 43 `"43"', add
label define gn96a_pnmp_lbl 44 `"44"', add
label define gn96a_pnmp_lbl 45 `"45"', add
label define gn96a_pnmp_lbl 46 `"46"', add
label define gn96a_pnmp_lbl 47 `"47"', add
label define gn96a_pnmp_lbl 48 `"48"', add
label define gn96a_pnmp_lbl 49 `"49"', add
label define gn96a_pnmp_lbl 50 `"50"', add
label define gn96a_pnmp_lbl 51 `"51"', add
label define gn96a_pnmp_lbl 52 `"52"', add
label define gn96a_pnmp_lbl 53 `"53"', add
label define gn96a_pnmp_lbl 55 `"55"', add
label define gn96a_pnmp_lbl 56 `"56"', add
label define gn96a_pnmp_lbl 58 `"58"', add
label define gn96a_pnmp_lbl 59 `"59"', add
label define gn96a_pnmp_lbl 61 `"61"', add
label define gn96a_pnmp_lbl 62 `"62"', add
label define gn96a_pnmp_lbl 69 `"69"', add
label define gn96a_pnmp_lbl 72 `"72"', add
label define gn96a_pnmp_lbl 73 `"73"', add
label define gn96a_pnmp_lbl 78 `"78"', add
label define gn96a_pnmp_lbl 82 `"82"', add
label define gn96a_pnmp_lbl 84 `"84"', add
label define gn96a_pnmp_lbl 85 `"85"', add
label define gn96a_pnmp_lbl 87 `"87"', add
label define gn96a_pnmp_lbl 88 `"88"', add
label define gn96a_pnmp_lbl 89 `"89"', add
label values gn96a_pnmp gn96a_pnmp_lbl

label define gn96a_pnma_lbl 00 `"0"'
label define gn96a_pnma_lbl 01 `"1"', add
label define gn96a_pnma_lbl 02 `"2"', add
label define gn96a_pnma_lbl 03 `"3"', add
label define gn96a_pnma_lbl 04 `"4"', add
label define gn96a_pnma_lbl 05 `"5"', add
label define gn96a_pnma_lbl 06 `"6"', add
label define gn96a_pnma_lbl 07 `"7"', add
label define gn96a_pnma_lbl 08 `"8"', add
label define gn96a_pnma_lbl 09 `"9"', add
label define gn96a_pnma_lbl 10 `"10"', add
label define gn96a_pnma_lbl 11 `"11"', add
label define gn96a_pnma_lbl 12 `"12"', add
label define gn96a_pnma_lbl 13 `"13"', add
label define gn96a_pnma_lbl 14 `"14"', add
label define gn96a_pnma_lbl 16 `"16"', add
label define gn96a_pnma_lbl 17 `"17"', add
label values gn96a_pnma gn96a_pnma_lbl

label define gn96a_pnmv_lbl 00 `"0"'
label define gn96a_pnmv_lbl 01 `"1"', add
label define gn96a_pnmv_lbl 02 `"2"', add
label define gn96a_pnmv_lbl 03 `"3"', add
label define gn96a_pnmv_lbl 04 `"4"', add
label define gn96a_pnmv_lbl 05 `"5"', add
label define gn96a_pnmv_lbl 06 `"6"', add
label define gn96a_pnmv_lbl 07 `"7"', add
label define gn96a_pnmv_lbl 08 `"8"', add
label define gn96a_pnmv_lbl 09 `"9"', add
label define gn96a_pnmv_lbl 10 `"10"', add
label define gn96a_pnmv_lbl 11 `"11"', add
label define gn96a_pnmv_lbl 12 `"12"', add
label define gn96a_pnmv_lbl 13 `"13"', add
label define gn96a_pnmv_lbl 14 `"14"', add
label define gn96a_pnmv_lbl 15 `"15"', add
label define gn96a_pnmv_lbl 16 `"16"', add
label define gn96a_pnmv_lbl 17 `"17"', add
label define gn96a_pnmv_lbl 18 `"18"', add
label define gn96a_pnmv_lbl 23 `"23"', add
label define gn96a_pnmv_lbl 26 `"26"', add
label define gn96a_pnmv_lbl 27 `"27"', add
label define gn96a_pnmv_lbl 28 `"28"', add
label define gn96a_pnmv_lbl 29 `"29"', add
label define gn96a_pnmv_lbl 31 `"31"', add
label define gn96a_pnmv_lbl 33 `"33"', add
label define gn96a_pnmv_lbl 34 `"34"', add
label define gn96a_pnmv_lbl 35 `"35"', add
label define gn96a_pnmv_lbl 36 `"36"', add
label define gn96a_pnmv_lbl 37 `"37"', add
label define gn96a_pnmv_lbl 39 `"39"', add
label define gn96a_pnmv_lbl 40 `"40"', add
label define gn96a_pnmv_lbl 42 `"42"', add
label define gn96a_pnmv_lbl 45 `"45"', add
label define gn96a_pnmv_lbl 47 `"47"', add
label define gn96a_pnmv_lbl 55 `"55"', add
label define gn96a_pnmv_lbl 57 `"57"', add
label define gn96a_pnmv_lbl 62 `"62"', add
label define gn96a_pnmv_lbl 88 `"88"', add
label values gn96a_pnmv gn96a_pnmv_lbl

label define gn96a_pnfp_lbl 00 `"0"'
label define gn96a_pnfp_lbl 01 `"1"', add
label define gn96a_pnfp_lbl 02 `"2"', add
label define gn96a_pnfp_lbl 03 `"3"', add
label define gn96a_pnfp_lbl 04 `"4"', add
label define gn96a_pnfp_lbl 05 `"5"', add
label define gn96a_pnfp_lbl 06 `"6"', add
label define gn96a_pnfp_lbl 07 `"7"', add
label define gn96a_pnfp_lbl 08 `"8"', add
label define gn96a_pnfp_lbl 09 `"9"', add
label define gn96a_pnfp_lbl 10 `"10"', add
label define gn96a_pnfp_lbl 11 `"11"', add
label define gn96a_pnfp_lbl 12 `"12"', add
label define gn96a_pnfp_lbl 13 `"13"', add
label define gn96a_pnfp_lbl 14 `"14"', add
label define gn96a_pnfp_lbl 15 `"15"', add
label define gn96a_pnfp_lbl 16 `"16"', add
label define gn96a_pnfp_lbl 17 `"17"', add
label define gn96a_pnfp_lbl 18 `"18"', add
label define gn96a_pnfp_lbl 19 `"19"', add
label define gn96a_pnfp_lbl 20 `"20"', add
label define gn96a_pnfp_lbl 21 `"21"', add
label define gn96a_pnfp_lbl 22 `"22"', add
label define gn96a_pnfp_lbl 23 `"23"', add
label define gn96a_pnfp_lbl 24 `"24"', add
label define gn96a_pnfp_lbl 25 `"25"', add
label define gn96a_pnfp_lbl 26 `"26"', add
label define gn96a_pnfp_lbl 27 `"27"', add
label define gn96a_pnfp_lbl 28 `"28"', add
label define gn96a_pnfp_lbl 29 `"29"', add
label define gn96a_pnfp_lbl 30 `"30"', add
label define gn96a_pnfp_lbl 31 `"31"', add
label define gn96a_pnfp_lbl 32 `"32"', add
label define gn96a_pnfp_lbl 33 `"33"', add
label define gn96a_pnfp_lbl 34 `"34"', add
label define gn96a_pnfp_lbl 35 `"35"', add
label define gn96a_pnfp_lbl 36 `"36"', add
label define gn96a_pnfp_lbl 37 `"37"', add
label define gn96a_pnfp_lbl 38 `"38"', add
label define gn96a_pnfp_lbl 39 `"39"', add
label define gn96a_pnfp_lbl 40 `"40"', add
label define gn96a_pnfp_lbl 41 `"41"', add
label define gn96a_pnfp_lbl 42 `"42"', add
label define gn96a_pnfp_lbl 43 `"43"', add
label define gn96a_pnfp_lbl 44 `"44"', add
label define gn96a_pnfp_lbl 45 `"45"', add
label define gn96a_pnfp_lbl 46 `"46"', add
label define gn96a_pnfp_lbl 47 `"47"', add
label define gn96a_pnfp_lbl 48 `"48"', add
label define gn96a_pnfp_lbl 49 `"49"', add
label define gn96a_pnfp_lbl 50 `"50"', add
label define gn96a_pnfp_lbl 51 `"51"', add
label define gn96a_pnfp_lbl 53 `"53"', add
label define gn96a_pnfp_lbl 54 `"54"', add
label define gn96a_pnfp_lbl 55 `"55"', add
label define gn96a_pnfp_lbl 61 `"61"', add
label values gn96a_pnfp gn96a_pnfp_lbl

label define gn96a_pnfa_lbl 00 `"0"'
label define gn96a_pnfa_lbl 01 `"1"', add
label define gn96a_pnfa_lbl 02 `"2"', add
label define gn96a_pnfa_lbl 03 `"3"', add
label define gn96a_pnfa_lbl 04 `"4"', add
label define gn96a_pnfa_lbl 05 `"5"', add
label define gn96a_pnfa_lbl 06 `"6"', add
label define gn96a_pnfa_lbl 07 `"7"', add
label define gn96a_pnfa_lbl 08 `"8"', add
label define gn96a_pnfa_lbl 09 `"9"', add
label define gn96a_pnfa_lbl 10 `"10"', add
label define gn96a_pnfa_lbl 11 `"11"', add
label define gn96a_pnfa_lbl 12 `"12"', add
label define gn96a_pnfa_lbl 13 `"13"', add
label define gn96a_pnfa_lbl 14 `"14"', add
label define gn96a_pnfa_lbl 17 `"17"', add
label define gn96a_pnfa_lbl 18 `"18"', add
label values gn96a_pnfa gn96a_pnfa_lbl

label define gn96a_pnfv_lbl 00 `"0"'
label define gn96a_pnfv_lbl 01 `"1"', add
label define gn96a_pnfv_lbl 02 `"2"', add
label define gn96a_pnfv_lbl 03 `"3"', add
label define gn96a_pnfv_lbl 04 `"4"', add
label define gn96a_pnfv_lbl 05 `"5"', add
label define gn96a_pnfv_lbl 06 `"6"', add
label define gn96a_pnfv_lbl 07 `"7"', add
label define gn96a_pnfv_lbl 08 `"8"', add
label define gn96a_pnfv_lbl 09 `"9"', add
label define gn96a_pnfv_lbl 10 `"10"', add
label define gn96a_pnfv_lbl 11 `"11"', add
label define gn96a_pnfv_lbl 12 `"12"', add
label define gn96a_pnfv_lbl 13 `"13"', add
label define gn96a_pnfv_lbl 14 `"14"', add
label define gn96a_pnfv_lbl 15 `"15"', add
label define gn96a_pnfv_lbl 16 `"16"', add
label define gn96a_pnfv_lbl 17 `"17"', add
label define gn96a_pnfv_lbl 18 `"18"', add
label define gn96a_pnfv_lbl 21 `"21"', add
label define gn96a_pnfv_lbl 22 `"22"', add
label define gn96a_pnfv_lbl 27 `"27"', add
label define gn96a_pnfv_lbl 28 `"28"', add
label define gn96a_pnfv_lbl 29 `"29"', add
label define gn96a_pnfv_lbl 38 `"38"', add
label define gn96a_pnfv_lbl 39 `"39"', add
label define gn96a_pnfv_lbl 41 `"41"', add
label define gn96a_pnfv_lbl 42 `"42"', add
label define gn96a_pnfv_lbl 43 `"43"', add
label define gn96a_pnfv_lbl 46 `"46"', add
label define gn96a_pnfv_lbl 48 `"48"', add
label define gn96a_pnfv_lbl 61 `"61"', add
label define gn96a_pnfv_lbl 72 `"72"', add
label values gn96a_pnfv gn96a_pnfv_lbl

label define gn96a_tenure_lbl 1 `"Owner"'
label define gn96a_tenure_lbl 2 `"Normal renter"', add
label define gn96a_tenure_lbl 3 `"Subsidized renter"', add
label define gn96a_tenure_lbl 4 `"Free housing"', add
label define gn96a_tenure_lbl 5 `"Paid by family/friend"', add
label define gn96a_tenure_lbl 6 `"Other"', add
label define gn96a_tenure_lbl 8 `"Unknown"', add
label define gn96a_tenure_lbl 9 `"NIU (not in universe)"', add
label values gn96a_tenure gn96a_tenure_lbl

label define gn96a_watsup_lbl 1 `"Faucet in home"'
label define gn96a_watsup_lbl 2 `"Faucet elsewhere"', add
label define gn96a_watsup_lbl 3 `"Dug well"', add
label define gn96a_watsup_lbl 4 `"Drilled well"', add
label define gn96a_watsup_lbl 5 `"Developed spring"', add
label define gn96a_watsup_lbl 6 `"Surface water"', add
label define gn96a_watsup_lbl 7 `"Other"', add
label define gn96a_watsup_lbl 8 `"Unknown"', add
label define gn96a_watsup_lbl 9 `"NIU (not in universe)"', add
label values gn96a_watsup gn96a_watsup_lbl

label define gn96a_light_lbl 1 `"Electricity"'
label define gn96a_light_lbl 2 `"Gas"', add
label define gn96a_light_lbl 3 `"Kerosene"', add
label define gn96a_light_lbl 4 `"Wood"', add
label define gn96a_light_lbl 5 `"Candles"', add
label define gn96a_light_lbl 6 `"Other"', add
label define gn96a_light_lbl 8 `"Unknown"', add
label define gn96a_light_lbl 9 `"NIU (not in universe)"', add
label values gn96a_light gn96a_light_lbl

label define gn96a_fuelck_lbl 1 `"Electricity"'
label define gn96a_fuelck_lbl 2 `"Gas"', add
label define gn96a_fuelck_lbl 3 `"Kerosene"', add
label define gn96a_fuelck_lbl 4 `"Wood"', add
label define gn96a_fuelck_lbl 5 `"Coal"', add
label define gn96a_fuelck_lbl 6 `"Other"', add
label define gn96a_fuelck_lbl 8 `"Unknown"', add
label define gn96a_fuelck_lbl 9 `"NIU (not in universe)"', add
label values gn96a_fuelck gn96a_fuelck_lbl

label define gn96a_toilet_lbl 1 `"Flush"'
label define gn96a_toilet_lbl 2 `"Outhouse"', add
label define gn96a_toilet_lbl 3 `"Ditch"', add
label define gn96a_toilet_lbl 4 `"Nature"', add
label define gn96a_toilet_lbl 5 `"Other"', add
label define gn96a_toilet_lbl 8 `"Unknown"', add
label define gn96a_toilet_lbl 9 `"NIU (not in universe)"', add
label values gn96a_toilet gn96a_toilet_lbl

label define gn96a_garbage_lbl 1 `"Public sewage service"'
label define gn96a_garbage_lbl 2 `"Private collection"', add
label define gn96a_garbage_lbl 3 `"Burial"', add
label define gn96a_garbage_lbl 4 `"Flowing water"', add
label define gn96a_garbage_lbl 5 `"Ocean"', add
label define gn96a_garbage_lbl 6 `"Dumped in nature"', add
label define gn96a_garbage_lbl 7 `"Incineration"', add
label define gn96a_garbage_lbl 8 `"Unknown"', add
label define gn96a_garbage_lbl 9 `"NIU (not in universe)"', add
label values gn96a_garbage gn96a_garbage_lbl

label define gn96a_wastewat_lbl 1 `"Backyard"'
label define gn96a_wastewat_lbl 2 `"Street"', add
label define gn96a_wastewat_lbl 3 `"Ditch/dry well"', add
label define gn96a_wastewat_lbl 4 `"Duct/drain"', add
label define gn96a_wastewat_lbl 5 `"Nature"', add
label define gn96a_wastewat_lbl 6 `"Flowing water"', add
label define gn96a_wastewat_lbl 7 `"Ocean"', add
label define gn96a_wastewat_lbl 8 `"Unknown"', add
label define gn96a_wastewat_lbl 9 `"NIU (not in universe)"', add
label values gn96a_wastewat gn96a_wastewat_lbl

label define gn96a_sewage_lbl 1 `"Backyard"'
label define gn96a_sewage_lbl 2 `"Street"', add
label define gn96a_sewage_lbl 3 `"Ditch/dry well"', add
label define gn96a_sewage_lbl 4 `"Duct/drain"', add
label define gn96a_sewage_lbl 5 `"Nature"', add
label define gn96a_sewage_lbl 6 `"Flowing water"', add
label define gn96a_sewage_lbl 7 `"Ocean"', add
label define gn96a_sewage_lbl 8 `"Unknown"', add
label define gn96a_sewage_lbl 9 `"NIU (not in universe)"', add
label values gn96a_sewage gn96a_sewage_lbl

label define gn96a_rooms_lbl 01 `"1"'
label define gn96a_rooms_lbl 02 `"2"', add
label define gn96a_rooms_lbl 03 `"3"', add
label define gn96a_rooms_lbl 04 `"4"', add
label define gn96a_rooms_lbl 05 `"5"', add
label define gn96a_rooms_lbl 06 `"6"', add
label define gn96a_rooms_lbl 07 `"7"', add
label define gn96a_rooms_lbl 08 `"8"', add
label define gn96a_rooms_lbl 09 `"9"', add
label define gn96a_rooms_lbl 10 `"10"', add
label define gn96a_rooms_lbl 11 `"11"', add
label define gn96a_rooms_lbl 12 `"12"', add
label define gn96a_rooms_lbl 13 `"13"', add
label define gn96a_rooms_lbl 14 `"14"', add
label define gn96a_rooms_lbl 15 `"15"', add
label define gn96a_rooms_lbl 16 `"16"', add
label define gn96a_rooms_lbl 17 `"17"', add
label define gn96a_rooms_lbl 18 `"18"', add
label define gn96a_rooms_lbl 19 `"19"', add
label define gn96a_rooms_lbl 20 `"20"', add
label define gn96a_rooms_lbl 21 `"21"', add
label define gn96a_rooms_lbl 22 `"22"', add
label define gn96a_rooms_lbl 23 `"23"', add
label define gn96a_rooms_lbl 24 `"24"', add
label define gn96a_rooms_lbl 25 `"25"', add
label define gn96a_rooms_lbl 26 `"26"', add
label define gn96a_rooms_lbl 27 `"27"', add
label define gn96a_rooms_lbl 28 `"28"', add
label define gn96a_rooms_lbl 29 `"29"', add
label define gn96a_rooms_lbl 30 `"30"', add
label define gn96a_rooms_lbl 31 `"31"', add
label define gn96a_rooms_lbl 32 `"32"', add
label define gn96a_rooms_lbl 33 `"33"', add
label define gn96a_rooms_lbl 34 `"34"', add
label define gn96a_rooms_lbl 35 `"35"', add
label define gn96a_rooms_lbl 36 `"36"', add
label define gn96a_rooms_lbl 37 `"37"', add
label define gn96a_rooms_lbl 38 `"38"', add
label define gn96a_rooms_lbl 39 `"39"', add
label define gn96a_rooms_lbl 40 `"40"', add
label define gn96a_rooms_lbl 41 `"41"', add
label define gn96a_rooms_lbl 42 `"42"', add
label define gn96a_rooms_lbl 43 `"43"', add
label define gn96a_rooms_lbl 44 `"44"', add
label define gn96a_rooms_lbl 45 `"45"', add
label define gn96a_rooms_lbl 46 `"46"', add
label define gn96a_rooms_lbl 47 `"47"', add
label define gn96a_rooms_lbl 48 `"48"', add
label define gn96a_rooms_lbl 49 `"49"', add
label define gn96a_rooms_lbl 50 `"50+"', add
label define gn96a_rooms_lbl 98 `"Unknown"', add
label define gn96a_rooms_lbl 99 `"NIU (not in universe)"', add
label values gn96a_rooms gn96a_rooms_lbl

label define gn96a_sexd_lbl 1 `"Male"'
label define gn96a_sexd_lbl 2 `"Female"', add
label define gn96a_sexd_lbl 9 `"NIU (not in universe)"', add
label values gn96a_sexd gn96a_sexd_lbl

label define gn96a_aged_lbl 000 `"0"'
label define gn96a_aged_lbl 001 `"1"', add
label define gn96a_aged_lbl 002 `"2"', add
label define gn96a_aged_lbl 003 `"3"', add
label define gn96a_aged_lbl 004 `"4"', add
label define gn96a_aged_lbl 005 `"5"', add
label define gn96a_aged_lbl 006 `"6"', add
label define gn96a_aged_lbl 007 `"7"', add
label define gn96a_aged_lbl 008 `"8"', add
label define gn96a_aged_lbl 009 `"9"', add
label define gn96a_aged_lbl 010 `"10"', add
label define gn96a_aged_lbl 011 `"11"', add
label define gn96a_aged_lbl 012 `"12"', add
label define gn96a_aged_lbl 013 `"13"', add
label define gn96a_aged_lbl 014 `"14"', add
label define gn96a_aged_lbl 015 `"15"', add
label define gn96a_aged_lbl 016 `"16"', add
label define gn96a_aged_lbl 017 `"17"', add
label define gn96a_aged_lbl 018 `"18"', add
label define gn96a_aged_lbl 019 `"19"', add
label define gn96a_aged_lbl 020 `"20"', add
label define gn96a_aged_lbl 021 `"21"', add
label define gn96a_aged_lbl 022 `"22"', add
label define gn96a_aged_lbl 023 `"23"', add
label define gn96a_aged_lbl 024 `"24"', add
label define gn96a_aged_lbl 025 `"25"', add
label define gn96a_aged_lbl 026 `"26"', add
label define gn96a_aged_lbl 027 `"27"', add
label define gn96a_aged_lbl 028 `"28"', add
label define gn96a_aged_lbl 029 `"29"', add
label define gn96a_aged_lbl 030 `"30"', add
label define gn96a_aged_lbl 031 `"31"', add
label define gn96a_aged_lbl 032 `"32"', add
label define gn96a_aged_lbl 033 `"33"', add
label define gn96a_aged_lbl 034 `"34"', add
label define gn96a_aged_lbl 035 `"35"', add
label define gn96a_aged_lbl 036 `"36"', add
label define gn96a_aged_lbl 037 `"37"', add
label define gn96a_aged_lbl 038 `"38"', add
label define gn96a_aged_lbl 039 `"39"', add
label define gn96a_aged_lbl 040 `"40"', add
label define gn96a_aged_lbl 041 `"41"', add
label define gn96a_aged_lbl 042 `"42"', add
label define gn96a_aged_lbl 043 `"43"', add
label define gn96a_aged_lbl 044 `"44"', add
label define gn96a_aged_lbl 045 `"45"', add
label define gn96a_aged_lbl 046 `"46"', add
label define gn96a_aged_lbl 047 `"47"', add
label define gn96a_aged_lbl 048 `"48"', add
label define gn96a_aged_lbl 049 `"49"', add
label define gn96a_aged_lbl 050 `"50"', add
label define gn96a_aged_lbl 051 `"51"', add
label define gn96a_aged_lbl 052 `"52"', add
label define gn96a_aged_lbl 053 `"53"', add
label define gn96a_aged_lbl 054 `"54"', add
label define gn96a_aged_lbl 055 `"55"', add
label define gn96a_aged_lbl 056 `"56"', add
label define gn96a_aged_lbl 057 `"57"', add
label define gn96a_aged_lbl 058 `"58"', add
label define gn96a_aged_lbl 059 `"59"', add
label define gn96a_aged_lbl 060 `"60"', add
label define gn96a_aged_lbl 061 `"61"', add
label define gn96a_aged_lbl 062 `"62"', add
label define gn96a_aged_lbl 063 `"63"', add
label define gn96a_aged_lbl 064 `"64"', add
label define gn96a_aged_lbl 065 `"65"', add
label define gn96a_aged_lbl 066 `"66"', add
label define gn96a_aged_lbl 067 `"67"', add
label define gn96a_aged_lbl 068 `"68"', add
label define gn96a_aged_lbl 069 `"69"', add
label define gn96a_aged_lbl 070 `"70"', add
label define gn96a_aged_lbl 071 `"71"', add
label define gn96a_aged_lbl 072 `"72"', add
label define gn96a_aged_lbl 073 `"73"', add
label define gn96a_aged_lbl 074 `"74"', add
label define gn96a_aged_lbl 075 `"75"', add
label define gn96a_aged_lbl 076 `"76"', add
label define gn96a_aged_lbl 077 `"77"', add
label define gn96a_aged_lbl 078 `"78"', add
label define gn96a_aged_lbl 079 `"79"', add
label define gn96a_aged_lbl 080 `"80"', add
label define gn96a_aged_lbl 081 `"81"', add
label define gn96a_aged_lbl 082 `"82"', add
label define gn96a_aged_lbl 083 `"83"', add
label define gn96a_aged_lbl 084 `"84"', add
label define gn96a_aged_lbl 085 `"85"', add
label define gn96a_aged_lbl 086 `"86"', add
label define gn96a_aged_lbl 087 `"87"', add
label define gn96a_aged_lbl 088 `"88"', add
label define gn96a_aged_lbl 089 `"89"', add
label define gn96a_aged_lbl 090 `"90"', add
label define gn96a_aged_lbl 091 `"91"', add
label define gn96a_aged_lbl 092 `"92"', add
label define gn96a_aged_lbl 093 `"93"', add
label define gn96a_aged_lbl 094 `"94"', add
label define gn96a_aged_lbl 095 `"95"', add
label define gn96a_aged_lbl 096 `"96"', add
label define gn96a_aged_lbl 097 `"97"', add
label define gn96a_aged_lbl 098 `"98"', add
label define gn96a_aged_lbl 099 `"99"', add
label define gn96a_aged_lbl 999 `"NIU (not in universe)"', add
label values gn96a_aged gn96a_aged_lbl

label define resident_lbl 1 `"Present resident"'
label define resident_lbl 2 `"Absent resident"', add
label define resident_lbl 3 `"Visitor/non-resident"', add
label define resident_lbl 4 `"De facto population (present persons)"', add
label define resident_lbl 9 `"Unknown/missing"', add
label values resident resident_lbl

label define gn96a_pernum_lbl 00 `"Household record"'
label define gn96a_pernum_lbl 01 `"1"', add
label define gn96a_pernum_lbl 02 `"2"', add
label define gn96a_pernum_lbl 03 `"3"', add
label define gn96a_pernum_lbl 04 `"4"', add
label define gn96a_pernum_lbl 05 `"5"', add
label define gn96a_pernum_lbl 06 `"6"', add
label define gn96a_pernum_lbl 07 `"7"', add
label define gn96a_pernum_lbl 08 `"8"', add
label define gn96a_pernum_lbl 09 `"9"', add
label define gn96a_pernum_lbl 10 `"10"', add
label define gn96a_pernum_lbl 11 `"11"', add
label define gn96a_pernum_lbl 12 `"12"', add
label define gn96a_pernum_lbl 13 `"13"', add
label define gn96a_pernum_lbl 14 `"14"', add
label define gn96a_pernum_lbl 15 `"15"', add
label define gn96a_pernum_lbl 16 `"16"', add
label define gn96a_pernum_lbl 17 `"17"', add
label define gn96a_pernum_lbl 18 `"18"', add
label define gn96a_pernum_lbl 19 `"19"', add
label define gn96a_pernum_lbl 20 `"20"', add
label define gn96a_pernum_lbl 21 `"21"', add
label define gn96a_pernum_lbl 22 `"22"', add
label define gn96a_pernum_lbl 23 `"23"', add
label define gn96a_pernum_lbl 24 `"24"', add
label define gn96a_pernum_lbl 25 `"25"', add
label define gn96a_pernum_lbl 26 `"26"', add
label define gn96a_pernum_lbl 27 `"27"', add
label define gn96a_pernum_lbl 28 `"28"', add
label define gn96a_pernum_lbl 29 `"29"', add
label define gn96a_pernum_lbl 30 `"30"', add
label define gn96a_pernum_lbl 31 `"31"', add
label define gn96a_pernum_lbl 32 `"32"', add
label define gn96a_pernum_lbl 33 `"33"', add
label define gn96a_pernum_lbl 34 `"34"', add
label define gn96a_pernum_lbl 35 `"35"', add
label define gn96a_pernum_lbl 36 `"36"', add
label define gn96a_pernum_lbl 37 `"37"', add
label define gn96a_pernum_lbl 38 `"38"', add
label define gn96a_pernum_lbl 39 `"39"', add
label define gn96a_pernum_lbl 40 `"40"', add
label define gn96a_pernum_lbl 41 `"41"', add
label define gn96a_pernum_lbl 42 `"42"', add
label define gn96a_pernum_lbl 43 `"43"', add
label define gn96a_pernum_lbl 44 `"44"', add
label define gn96a_pernum_lbl 45 `"45"', add
label define gn96a_pernum_lbl 46 `"46"', add
label define gn96a_pernum_lbl 47 `"47"', add
label define gn96a_pernum_lbl 48 `"48"', add
label define gn96a_pernum_lbl 49 `"49"', add
label define gn96a_pernum_lbl 50 `"50"', add
label values gn96a_pernum gn96a_pernum_lbl

label define gn96a_pernumo_lbl 01 `"Head of household"'
label define gn96a_pernumo_lbl 02 `"2"', add
label define gn96a_pernumo_lbl 03 `"3"', add
label define gn96a_pernumo_lbl 04 `"4"', add
label define gn96a_pernumo_lbl 05 `"5"', add
label define gn96a_pernumo_lbl 06 `"6"', add
label define gn96a_pernumo_lbl 07 `"7"', add
label define gn96a_pernumo_lbl 08 `"8"', add
label define gn96a_pernumo_lbl 09 `"9"', add
label define gn96a_pernumo_lbl 10 `"10"', add
label define gn96a_pernumo_lbl 11 `"11"', add
label define gn96a_pernumo_lbl 12 `"12"', add
label define gn96a_pernumo_lbl 13 `"13"', add
label define gn96a_pernumo_lbl 14 `"14"', add
label define gn96a_pernumo_lbl 15 `"15"', add
label define gn96a_pernumo_lbl 16 `"16"', add
label define gn96a_pernumo_lbl 17 `"17"', add
label define gn96a_pernumo_lbl 18 `"18"', add
label define gn96a_pernumo_lbl 19 `"19"', add
label define gn96a_pernumo_lbl 20 `"20"', add
label define gn96a_pernumo_lbl 21 `"21"', add
label define gn96a_pernumo_lbl 22 `"22"', add
label define gn96a_pernumo_lbl 23 `"23"', add
label define gn96a_pernumo_lbl 24 `"24"', add
label define gn96a_pernumo_lbl 25 `"25"', add
label define gn96a_pernumo_lbl 26 `"26"', add
label define gn96a_pernumo_lbl 27 `"27"', add
label define gn96a_pernumo_lbl 28 `"28"', add
label define gn96a_pernumo_lbl 29 `"29"', add
label define gn96a_pernumo_lbl 30 `"30"', add
label define gn96a_pernumo_lbl 31 `"31"', add
label define gn96a_pernumo_lbl 32 `"32"', add
label define gn96a_pernumo_lbl 33 `"33"', add
label define gn96a_pernumo_lbl 34 `"34"', add
label define gn96a_pernumo_lbl 35 `"35"', add
label define gn96a_pernumo_lbl 36 `"36"', add
label define gn96a_pernumo_lbl 37 `"37"', add
label define gn96a_pernumo_lbl 38 `"38"', add
label define gn96a_pernumo_lbl 39 `"39"', add
label define gn96a_pernumo_lbl 40 `"40"', add
label define gn96a_pernumo_lbl 41 `"41"', add
label define gn96a_pernumo_lbl 42 `"42"', add
label define gn96a_pernumo_lbl 43 `"43"', add
label define gn96a_pernumo_lbl 44 `"44"', add
label define gn96a_pernumo_lbl 45 `"45"', add
label define gn96a_pernumo_lbl 46 `"46"', add
label define gn96a_pernumo_lbl 47 `"47"', add
label define gn96a_pernumo_lbl 48 `"48"', add
label define gn96a_pernumo_lbl 49 `"49"', add
label define gn96a_pernumo_lbl 50 `"50"', add
label define gn96a_pernumo_lbl 51 `"51"', add
label define gn96a_pernumo_lbl 52 `"52"', add
label define gn96a_pernumo_lbl 53 `"53"', add
label define gn96a_pernumo_lbl 54 `"54"', add
label define gn96a_pernumo_lbl 55 `"55"', add
label define gn96a_pernumo_lbl 56 `"56"', add
label define gn96a_pernumo_lbl 57 `"57"', add
label define gn96a_pernumo_lbl 58 `"58"', add
label define gn96a_pernumo_lbl 59 `"59"', add
label define gn96a_pernumo_lbl 60 `"60"', add
label define gn96a_pernumo_lbl 61 `"61"', add
label define gn96a_pernumo_lbl 62 `"62"', add
label define gn96a_pernumo_lbl 63 `"63"', add
label define gn96a_pernumo_lbl 64 `"64"', add
label define gn96a_pernumo_lbl 65 `"65"', add
label define gn96a_pernumo_lbl 66 `"66"', add
label define gn96a_pernumo_lbl 67 `"67"', add
label define gn96a_pernumo_lbl 68 `"68"', add
label define gn96a_pernumo_lbl 69 `"69"', add
label define gn96a_pernumo_lbl 70 `"70"', add
label define gn96a_pernumo_lbl 71 `"71"', add
label define gn96a_pernumo_lbl 72 `"72"', add
label define gn96a_pernumo_lbl 73 `"73"', add
label define gn96a_pernumo_lbl 74 `"74"', add
label define gn96a_pernumo_lbl 75 `"75"', add
label define gn96a_pernumo_lbl 76 `"76"', add
label define gn96a_pernumo_lbl 77 `"77"', add
label define gn96a_pernumo_lbl 78 `"78"', add
label define gn96a_pernumo_lbl 79 `"79"', add
label define gn96a_pernumo_lbl 80 `"80"', add
label define gn96a_pernumo_lbl 81 `"81"', add
label define gn96a_pernumo_lbl 82 `"82"', add
label define gn96a_pernumo_lbl 83 `"83"', add
label define gn96a_pernumo_lbl 84 `"84"', add
label define gn96a_pernumo_lbl 85 `"85"', add
label define gn96a_pernumo_lbl 86 `"86"', add
label define gn96a_pernumo_lbl 87 `"87"', add
label define gn96a_pernumo_lbl 88 `"88"', add
label define gn96a_pernumo_lbl 89 `"89"', add
label define gn96a_pernumo_lbl 90 `"90"', add
label define gn96a_pernumo_lbl 91 `"91"', add
label define gn96a_pernumo_lbl 92 `"92"', add
label define gn96a_pernumo_lbl 93 `"93"', add
label define gn96a_pernumo_lbl 94 `"94"', add
label define gn96a_pernumo_lbl 95 `"95"', add
label define gn96a_pernumo_lbl 96 `"96"', add
label define gn96a_pernumo_lbl 97 `"97"', add
label define gn96a_pernumo_lbl 98 `"98"', add
label define gn96a_pernumo_lbl 99 `"99"', add
label values gn96a_pernumo gn96a_pernumo_lbl

label define gn96a_relate_lbl 01 `"Head of household"'
label define gn96a_relate_lbl 02 `"Spouse"', add
label define gn96a_relate_lbl 03 `"Son/daughter"', add
label define gn96a_relate_lbl 04 `"Parent"', add
label define gn96a_relate_lbl 05 `"Sibling"', add
label define gn96a_relate_lbl 06 `"Nephew/niece"', add
label define gn96a_relate_lbl 07 `"Grandchild"', add
label define gn96a_relate_lbl 08 `"Other relative"', add
label define gn96a_relate_lbl 09 `"No relationship"', add
label define gn96a_relate_lbl 99 `"Unknown"', add
label values gn96a_relate gn96a_relate_lbl

label define gn96a_sex_lbl 1 `"Male"'
label define gn96a_sex_lbl 2 `"Female"', add
label values gn96a_sex gn96a_sex_lbl

label define gn96a_resid_lbl 1 `"Present resident"'
label define gn96a_resid_lbl 2 `"Absent resident"', add
label define gn96a_resid_lbl 3 `"Visitor"', add
label values gn96a_resid gn96a_resid_lbl

label define gn96a_birmon_lbl 01 `"1"'
label define gn96a_birmon_lbl 02 `"2"', add
label define gn96a_birmon_lbl 03 `"3"', add
label define gn96a_birmon_lbl 04 `"4"', add
label define gn96a_birmon_lbl 05 `"5"', add
label define gn96a_birmon_lbl 06 `"6"', add
label define gn96a_birmon_lbl 07 `"7"', add
label define gn96a_birmon_lbl 08 `"8"', add
label define gn96a_birmon_lbl 09 `"9"', add
label define gn96a_birmon_lbl 10 `"10"', add
label define gn96a_birmon_lbl 11 `"11"', add
label define gn96a_birmon_lbl 12 `"12"', add
label define gn96a_birmon_lbl 99 `"Unknown"', add
label values gn96a_birmon gn96a_birmon_lbl

label define gn96a_biryr_lbl 00 `"Before 1901"'
label define gn96a_biryr_lbl 01 `"1901"', add
label define gn96a_biryr_lbl 02 `"1902"', add
label define gn96a_biryr_lbl 03 `"1903"', add
label define gn96a_biryr_lbl 04 `"1904"', add
label define gn96a_biryr_lbl 05 `"1905"', add
label define gn96a_biryr_lbl 06 `"1906"', add
label define gn96a_biryr_lbl 07 `"1907"', add
label define gn96a_biryr_lbl 08 `"1908"', add
label define gn96a_biryr_lbl 09 `"1909"', add
label define gn96a_biryr_lbl 10 `"1910"', add
label define gn96a_biryr_lbl 11 `"1911"', add
label define gn96a_biryr_lbl 12 `"1912"', add
label define gn96a_biryr_lbl 13 `"1913"', add
label define gn96a_biryr_lbl 14 `"1914"', add
label define gn96a_biryr_lbl 15 `"1915"', add
label define gn96a_biryr_lbl 16 `"1916"', add
label define gn96a_biryr_lbl 17 `"1917"', add
label define gn96a_biryr_lbl 18 `"1918"', add
label define gn96a_biryr_lbl 19 `"1919"', add
label define gn96a_biryr_lbl 20 `"1920"', add
label define gn96a_biryr_lbl 21 `"1921"', add
label define gn96a_biryr_lbl 22 `"1922"', add
label define gn96a_biryr_lbl 23 `"1923"', add
label define gn96a_biryr_lbl 24 `"1924"', add
label define gn96a_biryr_lbl 25 `"1925"', add
label define gn96a_biryr_lbl 26 `"1926"', add
label define gn96a_biryr_lbl 27 `"1927"', add
label define gn96a_biryr_lbl 28 `"1928"', add
label define gn96a_biryr_lbl 29 `"1929"', add
label define gn96a_biryr_lbl 30 `"1930"', add
label define gn96a_biryr_lbl 31 `"1931"', add
label define gn96a_biryr_lbl 32 `"1932"', add
label define gn96a_biryr_lbl 33 `"1933"', add
label define gn96a_biryr_lbl 34 `"1934"', add
label define gn96a_biryr_lbl 35 `"1935"', add
label define gn96a_biryr_lbl 36 `"1936"', add
label define gn96a_biryr_lbl 37 `"1937"', add
label define gn96a_biryr_lbl 38 `"1938"', add
label define gn96a_biryr_lbl 39 `"1939"', add
label define gn96a_biryr_lbl 40 `"1940"', add
label define gn96a_biryr_lbl 41 `"1941"', add
label define gn96a_biryr_lbl 42 `"1942"', add
label define gn96a_biryr_lbl 43 `"1943"', add
label define gn96a_biryr_lbl 44 `"1944"', add
label define gn96a_biryr_lbl 45 `"1945"', add
label define gn96a_biryr_lbl 46 `"1946"', add
label define gn96a_biryr_lbl 47 `"1947"', add
label define gn96a_biryr_lbl 48 `"1948"', add
label define gn96a_biryr_lbl 49 `"1949"', add
label define gn96a_biryr_lbl 50 `"1950"', add
label define gn96a_biryr_lbl 51 `"1951"', add
label define gn96a_biryr_lbl 52 `"1952"', add
label define gn96a_biryr_lbl 53 `"1953"', add
label define gn96a_biryr_lbl 54 `"1954"', add
label define gn96a_biryr_lbl 55 `"1955"', add
label define gn96a_biryr_lbl 56 `"1956"', add
label define gn96a_biryr_lbl 57 `"1957"', add
label define gn96a_biryr_lbl 58 `"1958"', add
label define gn96a_biryr_lbl 59 `"1959"', add
label define gn96a_biryr_lbl 60 `"1960"', add
label define gn96a_biryr_lbl 61 `"1961"', add
label define gn96a_biryr_lbl 62 `"1962"', add
label define gn96a_biryr_lbl 63 `"1963"', add
label define gn96a_biryr_lbl 64 `"1964"', add
label define gn96a_biryr_lbl 65 `"1965"', add
label define gn96a_biryr_lbl 66 `"1966"', add
label define gn96a_biryr_lbl 67 `"1967"', add
label define gn96a_biryr_lbl 68 `"1968"', add
label define gn96a_biryr_lbl 69 `"1969"', add
label define gn96a_biryr_lbl 70 `"1970"', add
label define gn96a_biryr_lbl 71 `"1971"', add
label define gn96a_biryr_lbl 72 `"1972"', add
label define gn96a_biryr_lbl 73 `"1973"', add
label define gn96a_biryr_lbl 74 `"1974"', add
label define gn96a_biryr_lbl 75 `"1975"', add
label define gn96a_biryr_lbl 76 `"1976"', add
label define gn96a_biryr_lbl 77 `"1977"', add
label define gn96a_biryr_lbl 78 `"1978"', add
label define gn96a_biryr_lbl 79 `"1979"', add
label define gn96a_biryr_lbl 80 `"1980"', add
label define gn96a_biryr_lbl 81 `"1981"', add
label define gn96a_biryr_lbl 82 `"1982"', add
label define gn96a_biryr_lbl 83 `"1983"', add
label define gn96a_biryr_lbl 84 `"1984"', add
label define gn96a_biryr_lbl 85 `"1985"', add
label define gn96a_biryr_lbl 86 `"1986"', add
label define gn96a_biryr_lbl 87 `"1987"', add
label define gn96a_biryr_lbl 88 `"1988"', add
label define gn96a_biryr_lbl 89 `"1989"', add
label define gn96a_biryr_lbl 90 `"1990"', add
label define gn96a_biryr_lbl 91 `"1991"', add
label define gn96a_biryr_lbl 92 `"1992"', add
label define gn96a_biryr_lbl 93 `"1993"', add
label define gn96a_biryr_lbl 94 `"1994"', add
label define gn96a_biryr_lbl 95 `"1995"', add
label define gn96a_biryr_lbl 96 `"1996"', add
label define gn96a_biryr_lbl 99 `"Unknown"', add
label values gn96a_biryr gn96a_biryr_lbl

label define gn96a_ageraw_lbl 000 `"Less than one year"'
label define gn96a_ageraw_lbl 001 `"1"', add
label define gn96a_ageraw_lbl 002 `"2"', add
label define gn96a_ageraw_lbl 003 `"3"', add
label define gn96a_ageraw_lbl 004 `"4"', add
label define gn96a_ageraw_lbl 005 `"5"', add
label define gn96a_ageraw_lbl 006 `"6"', add
label define gn96a_ageraw_lbl 007 `"7"', add
label define gn96a_ageraw_lbl 008 `"8"', add
label define gn96a_ageraw_lbl 009 `"9"', add
label define gn96a_ageraw_lbl 010 `"10"', add
label define gn96a_ageraw_lbl 011 `"11"', add
label define gn96a_ageraw_lbl 012 `"12"', add
label define gn96a_ageraw_lbl 013 `"13"', add
label define gn96a_ageraw_lbl 014 `"14"', add
label define gn96a_ageraw_lbl 015 `"15"', add
label define gn96a_ageraw_lbl 016 `"16"', add
label define gn96a_ageraw_lbl 017 `"17"', add
label define gn96a_ageraw_lbl 018 `"18"', add
label define gn96a_ageraw_lbl 019 `"19"', add
label define gn96a_ageraw_lbl 020 `"20"', add
label define gn96a_ageraw_lbl 021 `"21"', add
label define gn96a_ageraw_lbl 022 `"22"', add
label define gn96a_ageraw_lbl 023 `"23"', add
label define gn96a_ageraw_lbl 024 `"24"', add
label define gn96a_ageraw_lbl 025 `"25"', add
label define gn96a_ageraw_lbl 026 `"26"', add
label define gn96a_ageraw_lbl 027 `"27"', add
label define gn96a_ageraw_lbl 028 `"28"', add
label define gn96a_ageraw_lbl 029 `"29"', add
label define gn96a_ageraw_lbl 030 `"30"', add
label define gn96a_ageraw_lbl 031 `"31"', add
label define gn96a_ageraw_lbl 032 `"32"', add
label define gn96a_ageraw_lbl 033 `"33"', add
label define gn96a_ageraw_lbl 034 `"34"', add
label define gn96a_ageraw_lbl 035 `"35"', add
label define gn96a_ageraw_lbl 036 `"36"', add
label define gn96a_ageraw_lbl 037 `"37"', add
label define gn96a_ageraw_lbl 038 `"38"', add
label define gn96a_ageraw_lbl 039 `"39"', add
label define gn96a_ageraw_lbl 040 `"40"', add
label define gn96a_ageraw_lbl 041 `"41"', add
label define gn96a_ageraw_lbl 042 `"42"', add
label define gn96a_ageraw_lbl 043 `"43"', add
label define gn96a_ageraw_lbl 044 `"44"', add
label define gn96a_ageraw_lbl 045 `"45"', add
label define gn96a_ageraw_lbl 046 `"46"', add
label define gn96a_ageraw_lbl 047 `"47"', add
label define gn96a_ageraw_lbl 048 `"48"', add
label define gn96a_ageraw_lbl 049 `"49"', add
label define gn96a_ageraw_lbl 050 `"50"', add
label define gn96a_ageraw_lbl 051 `"51"', add
label define gn96a_ageraw_lbl 052 `"52"', add
label define gn96a_ageraw_lbl 053 `"53"', add
label define gn96a_ageraw_lbl 054 `"54"', add
label define gn96a_ageraw_lbl 055 `"55"', add
label define gn96a_ageraw_lbl 056 `"56"', add
label define gn96a_ageraw_lbl 057 `"57"', add
label define gn96a_ageraw_lbl 058 `"58"', add
label define gn96a_ageraw_lbl 059 `"59"', add
label define gn96a_ageraw_lbl 060 `"60"', add
label define gn96a_ageraw_lbl 061 `"61"', add
label define gn96a_ageraw_lbl 062 `"62"', add
label define gn96a_ageraw_lbl 063 `"63"', add
label define gn96a_ageraw_lbl 064 `"64"', add
label define gn96a_ageraw_lbl 065 `"65"', add
label define gn96a_ageraw_lbl 066 `"66"', add
label define gn96a_ageraw_lbl 067 `"67"', add
label define gn96a_ageraw_lbl 068 `"68"', add
label define gn96a_ageraw_lbl 069 `"69"', add
label define gn96a_ageraw_lbl 070 `"70"', add
label define gn96a_ageraw_lbl 071 `"71"', add
label define gn96a_ageraw_lbl 072 `"72"', add
label define gn96a_ageraw_lbl 073 `"73"', add
label define gn96a_ageraw_lbl 074 `"74"', add
label define gn96a_ageraw_lbl 075 `"75"', add
label define gn96a_ageraw_lbl 076 `"76"', add
label define gn96a_ageraw_lbl 077 `"77"', add
label define gn96a_ageraw_lbl 078 `"78"', add
label define gn96a_ageraw_lbl 079 `"79"', add
label define gn96a_ageraw_lbl 080 `"80"', add
label define gn96a_ageraw_lbl 081 `"81"', add
label define gn96a_ageraw_lbl 082 `"82"', add
label define gn96a_ageraw_lbl 083 `"83"', add
label define gn96a_ageraw_lbl 084 `"84"', add
label define gn96a_ageraw_lbl 085 `"85"', add
label define gn96a_ageraw_lbl 086 `"86"', add
label define gn96a_ageraw_lbl 087 `"87"', add
label define gn96a_ageraw_lbl 088 `"88"', add
label define gn96a_ageraw_lbl 089 `"89"', add
label define gn96a_ageraw_lbl 090 `"90"', add
label define gn96a_ageraw_lbl 091 `"91"', add
label define gn96a_ageraw_lbl 092 `"92"', add
label define gn96a_ageraw_lbl 093 `"93"', add
label define gn96a_ageraw_lbl 094 `"94"', add
label define gn96a_ageraw_lbl 095 `"95"', add
label define gn96a_ageraw_lbl 096 `"96"', add
label define gn96a_ageraw_lbl 097 `"97"', add
label define gn96a_ageraw_lbl 098 `"98"', add
label define gn96a_ageraw_lbl 099 `"99"', add
label define gn96a_ageraw_lbl 999 `"Unknown"', add
label values gn96a_ageraw gn96a_ageraw_lbl

label define gn96a_bpl_lbl 00 `"In Guinea, place unknown"'
label define gn96a_bpl_lbl 10 `"Boffa"', add
label define gn96a_bpl_lbl 11 `"Boké"', add
label define gn96a_bpl_lbl 12 `"Conakry"', add
label define gn96a_bpl_lbl 13 `"Coyah"', add
label define gn96a_bpl_lbl 14 `"Dubréka"', add
label define gn96a_bpl_lbl 15 `"Forécariah"', add
label define gn96a_bpl_lbl 16 `"Fria"', add
label define gn96a_bpl_lbl 17 `"Kindia"', add
label define gn96a_bpl_lbl 18 `"Télimélé"', add
label define gn96a_bpl_lbl 20 `"Dalaba"', add
label define gn96a_bpl_lbl 21 `"Gaoual"', add
label define gn96a_bpl_lbl 22 `"Koubia"', add
label define gn96a_bpl_lbl 23 `"Koundara"', add
label define gn96a_bpl_lbl 24 `"Labé"', add
label define gn96a_bpl_lbl 25 `"Lélouma"', add
label define gn96a_bpl_lbl 26 `"Mali"', add
label define gn96a_bpl_lbl 27 `"Mamou"', add
label define gn96a_bpl_lbl 28 `"Pita"', add
label define gn96a_bpl_lbl 29 `"Tougué"', add
label define gn96a_bpl_lbl 30 `"Dabola"', add
label define gn96a_bpl_lbl 31 `"Dinguiraye"', add
label define gn96a_bpl_lbl 32 `"Faranah"', add
label define gn96a_bpl_lbl 33 `"Kankan"', add
label define gn96a_bpl_lbl 34 `"Kérouané"', add
label define gn96a_bpl_lbl 35 `"Kouroussa"', add
label define gn96a_bpl_lbl 36 `"Mandiana"', add
label define gn96a_bpl_lbl 37 `"Siguiri"', add
label define gn96a_bpl_lbl 40 `"Beyla"', add
label define gn96a_bpl_lbl 41 `"Guéckédou"', add
label define gn96a_bpl_lbl 42 `"Kissidougou"', add
label define gn96a_bpl_lbl 43 `"Lola"', add
label define gn96a_bpl_lbl 44 `"Macenta"', add
label define gn96a_bpl_lbl 45 `"N'Zérékoré"', add
label define gn96a_bpl_lbl 46 `"Yomou"', add
label define gn96a_bpl_lbl 50 `"Benin"', add
label define gn96a_bpl_lbl 51 `"Burkina Faso"', add
label define gn96a_bpl_lbl 52 `"Cap-Vert"', add
label define gn96a_bpl_lbl 53 `"Ivory Coast"', add
label define gn96a_bpl_lbl 54 `"Gambia"', add
label define gn96a_bpl_lbl 55 `"Ghana"', add
label define gn96a_bpl_lbl 56 `"Guinea-Bissau"', add
label define gn96a_bpl_lbl 57 `"Liberia"', add
label define gn96a_bpl_lbl 58 `"Rep. of Mali"', add
label define gn96a_bpl_lbl 59 `"Mauritania"', add
label define gn96a_bpl_lbl 60 `"Niger"', add
label define gn96a_bpl_lbl 61 `"Nigeria"', add
label define gn96a_bpl_lbl 62 `"Senegal"', add
label define gn96a_bpl_lbl 63 `"Sierra Leone"', add
label define gn96a_bpl_lbl 64 `"Togo"', add
label define gn96a_bpl_lbl 65 `"Central Africa"', add
label define gn96a_bpl_lbl 66 `"North Africa"', add
label define gn96a_bpl_lbl 67 `"East Africa"', add
label define gn96a_bpl_lbl 70 `"Germany"', add
label define gn96a_bpl_lbl 73 `"France"', add
label define gn96a_bpl_lbl 76 `"Russia"', add
label define gn96a_bpl_lbl 78 `"Other European countries"', add
label define gn96a_bpl_lbl 80 `"Saudi Arabia"', add
label define gn96a_bpl_lbl 85 `"Lebanon"', add
label define gn96a_bpl_lbl 86 `"Pakistan"', add
label define gn96a_bpl_lbl 87 `"Syria"', add
label define gn96a_bpl_lbl 89 `"Other Asian countries"', add
label define gn96a_bpl_lbl 90 `"Brazil"', add
label define gn96a_bpl_lbl 93 `"USA"', add
label define gn96a_bpl_lbl 94 `"Other American countries"', add
label define gn96a_bpl_lbl 99 `"Unknown"', add
label values gn96a_bpl gn96a_bpl_lbl

label define gn96a_nation_lbl 00 `"Guinea"'
label define gn96a_nation_lbl 50 `"Benin"', add
label define gn96a_nation_lbl 51 `"Burkina Faso"', add
label define gn96a_nation_lbl 53 `"Ivory Coast"', add
label define gn96a_nation_lbl 54 `"Gambia"', add
label define gn96a_nation_lbl 55 `"Ghana"', add
label define gn96a_nation_lbl 56 `"Guinea-Bissau"', add
label define gn96a_nation_lbl 57 `"Liberia"', add
label define gn96a_nation_lbl 58 `"Mali"', add
label define gn96a_nation_lbl 59 `"Mauritania"', add
label define gn96a_nation_lbl 60 `"Niger"', add
label define gn96a_nation_lbl 61 `"Nigeria"', add
label define gn96a_nation_lbl 62 `"Senegal"', add
label define gn96a_nation_lbl 63 `"Sierra Leone"', add
label define gn96a_nation_lbl 64 `"Togo"', add
label define gn96a_nation_lbl 66 `"North Africa"', add
label define gn96a_nation_lbl 69 `"Other Africa"', add
label define gn96a_nation_lbl 70 `"Germany"', add
label define gn96a_nation_lbl 73 `"France"', add
label define gn96a_nation_lbl 76 `"Russia"', add
label define gn96a_nation_lbl 78 `"Other European countries"', add
label define gn96a_nation_lbl 80 `"Saudi Arabia"', add
label define gn96a_nation_lbl 83 `"Iran"', add
label define gn96a_nation_lbl 85 `"Lebanon"', add
label define gn96a_nation_lbl 86 `"Pakistan"', add
label define gn96a_nation_lbl 89 `"Other Asian countries"', add
label define gn96a_nation_lbl 90 `"Brazil"', add
label define gn96a_nation_lbl 93 `"USA"', add
label define gn96a_nation_lbl 94 `"Other American countries"', add
label define gn96a_nation_lbl 99 `"Unknown"', add
label values gn96a_nation gn96a_nation_lbl

label define gn96a_relig_lbl 1 `"No religion"'
label define gn96a_relig_lbl 2 `"Muslim"', add
label define gn96a_relig_lbl 3 `"Christian"', add
label define gn96a_relig_lbl 4 `"Animist"', add
label define gn96a_relig_lbl 5 `"Other"', add
label define gn96a_relig_lbl 8 `"Unknown"', add
label define gn96a_relig_lbl 9 `"NIU (not in universe)"', add
label values gn96a_relig gn96a_relig_lbl

label define gn96a_disab_lbl 00 `"No disability"'
label define gn96a_disab_lbl 01 `"Blind"', add
label define gn96a_disab_lbl 02 `"Deaf"', add
label define gn96a_disab_lbl 03 `"Blind and deaf"', add
label define gn96a_disab_lbl 04 `"Mute"', add
label define gn96a_disab_lbl 06 `"Deaf and mute"', add
label define gn96a_disab_lbl 08 `"Infirmity of lower extremity"', add
label define gn96a_disab_lbl 16 `"Infirmity of upper extremity"', add
label define gn96a_disab_lbl 32 `"Multiple disability"', add
label define gn96a_disab_lbl 64 `"Other single disability"', add
label define gn96a_disab_lbl 65 `"Other multiple disability"', add
label define gn96a_disab_lbl 66 `"Other disability, type unknown"', add
label define gn96a_disab_lbl 98 `"Unknown"', add
label define gn96a_disab_lbl 99 `"NIU"', add
label values gn96a_disab gn96a_disab_lbl

label define gn96a_resdur_lbl 1 `"Since birth"'
label define gn96a_resdur_lbl 2 `"Less than 1 year"', add
label define gn96a_resdur_lbl 3 `"Between 1 and 4 years"', add
label define gn96a_resdur_lbl 4 `"Between 5 and 9 years"', add
label define gn96a_resdur_lbl 5 `"10 years and more"', add
label define gn96a_resdur_lbl 8 `"Unknown"', add
label define gn96a_resdur_lbl 9 `"NIU (not in universe)"', add
label values gn96a_resdur gn96a_resdur_lbl

label define gn96a_resprev_lbl 00 `"Anywhere in Guinea"'
label define gn96a_resprev_lbl 10 `"Boffa"', add
label define gn96a_resprev_lbl 11 `"Boké"', add
label define gn96a_resprev_lbl 12 `"Conakry"', add
label define gn96a_resprev_lbl 13 `"Coyah"', add
label define gn96a_resprev_lbl 14 `"Dubréka"', add
label define gn96a_resprev_lbl 15 `"Forécariah"', add
label define gn96a_resprev_lbl 16 `"Fria"', add
label define gn96a_resprev_lbl 17 `"Kindia"', add
label define gn96a_resprev_lbl 18 `"Télimélé"', add
label define gn96a_resprev_lbl 20 `"Dalaba"', add
label define gn96a_resprev_lbl 21 `"Gaoual"', add
label define gn96a_resprev_lbl 22 `"Koubia"', add
label define gn96a_resprev_lbl 23 `"Koundara"', add
label define gn96a_resprev_lbl 24 `"Labé"', add
label define gn96a_resprev_lbl 25 `"Lélouma"', add
label define gn96a_resprev_lbl 26 `"Mali"', add
label define gn96a_resprev_lbl 27 `"Mamou"', add
label define gn96a_resprev_lbl 28 `"Pita"', add
label define gn96a_resprev_lbl 29 `"Tougué"', add
label define gn96a_resprev_lbl 30 `"Dabola"', add
label define gn96a_resprev_lbl 31 `"Dinguiraye"', add
label define gn96a_resprev_lbl 32 `"Faranah"', add
label define gn96a_resprev_lbl 33 `"Kankan"', add
label define gn96a_resprev_lbl 34 `"Kérouané"', add
label define gn96a_resprev_lbl 35 `"Kouroussa"', add
label define gn96a_resprev_lbl 36 `"Mandiana"', add
label define gn96a_resprev_lbl 37 `"Siguiri"', add
label define gn96a_resprev_lbl 40 `"Beyla"', add
label define gn96a_resprev_lbl 41 `"Guéckédou"', add
label define gn96a_resprev_lbl 42 `"Kissidougou"', add
label define gn96a_resprev_lbl 43 `"Lola"', add
label define gn96a_resprev_lbl 44 `"Macenta"', add
label define gn96a_resprev_lbl 45 `"N'Zérékoré"', add
label define gn96a_resprev_lbl 46 `"Yomou"', add
label define gn96a_resprev_lbl 50 `"Benin"', add
label define gn96a_resprev_lbl 51 `"Burkina Faso"', add
label define gn96a_resprev_lbl 53 `"Ivory Coast"', add
label define gn96a_resprev_lbl 54 `"Gambia"', add
label define gn96a_resprev_lbl 55 `"Ghana"', add
label define gn96a_resprev_lbl 56 `"Guinea-Bissau"', add
label define gn96a_resprev_lbl 57 `"Liberia"', add
label define gn96a_resprev_lbl 58 `"Rep. of Mali"', add
label define gn96a_resprev_lbl 59 `"Mauritania"', add
label define gn96a_resprev_lbl 60 `"Niger"', add
label define gn96a_resprev_lbl 61 `"Nigeria"', add
label define gn96a_resprev_lbl 62 `"Senegal"', add
label define gn96a_resprev_lbl 63 `"Sierra Leone"', add
label define gn96a_resprev_lbl 64 `"Togo"', add
label define gn96a_resprev_lbl 65 `"Central Africa"', add
label define gn96a_resprev_lbl 66 `"North Africa"', add
label define gn96a_resprev_lbl 69 `"Other Africa"', add
label define gn96a_resprev_lbl 70 `"Germany"', add
label define gn96a_resprev_lbl 73 `"France"', add
label define gn96a_resprev_lbl 76 `"Russia"', add
label define gn96a_resprev_lbl 78 `"Other European countries"', add
label define gn96a_resprev_lbl 80 `"Saudi Arabia"', add
label define gn96a_resprev_lbl 85 `"Lebanon"', add
label define gn96a_resprev_lbl 89 `"Other Asian countries"', add
label define gn96a_resprev_lbl 90 `"Brazil"', add
label define gn96a_resprev_lbl 93 `"USA"', add
label define gn96a_resprev_lbl 94 `"Other American countries"', add
label define gn96a_resprev_lbl 98 `"Unknown"', add
label define gn96a_resprev_lbl 99 `"NIU (not in universe)"', add
label values gn96a_resprev gn96a_resprev_lbl

label define gn96a_lit_lbl 01 `"Illiterate"'
label define gn96a_lit_lbl 02 `"National language"', add
label define gn96a_lit_lbl 03 `"French"', add
label define gn96a_lit_lbl 04 `"National language and French"', add
label define gn96a_lit_lbl 05 `"English"', add
label define gn96a_lit_lbl 06 `"National language and English"', add
label define gn96a_lit_lbl 07 `"French and English"', add
label define gn96a_lit_lbl 08 `"National language, French, and English"', add
label define gn96a_lit_lbl 09 `"Arabic"', add
label define gn96a_lit_lbl 10 `"Other combinations"', add
label define gn96a_lit_lbl 98 `"Unknown"', add
label define gn96a_lit_lbl 99 `"NIU (not in universe)"', add
label values gn96a_lit gn96a_lit_lbl

label define gn96a_edlev2_lbl 1 `"No education"'
label define gn96a_edlev2_lbl 2 `"Primary"', add
label define gn96a_edlev2_lbl 3 `"Secondary 1"', add
label define gn96a_edlev2_lbl 4 `"Secondary 2"', add
label define gn96a_edlev2_lbl 5 `"Professional A"', add
label define gn96a_edlev2_lbl 6 `"Professional B"', add
label define gn96a_edlev2_lbl 7 `"Higher"', add
label define gn96a_edlev2_lbl 8 `"Unknown"', add
label define gn96a_edlev2_lbl 9 `"NIU (not in universe)"', add
label values gn96a_edlev2 gn96a_edlev2_lbl

label define gn96a_grade_lbl 01 `"1"'
label define gn96a_grade_lbl 02 `"2"', add
label define gn96a_grade_lbl 03 `"3"', add
label define gn96a_grade_lbl 04 `"4"', add
label define gn96a_grade_lbl 05 `"5"', add
label define gn96a_grade_lbl 06 `"6"', add
label define gn96a_grade_lbl 07 `"7"', add
label define gn96a_grade_lbl 08 `"8"', add
label define gn96a_grade_lbl 09 `"9"', add
label define gn96a_grade_lbl 98 `"Unknown"', add
label define gn96a_grade_lbl 99 `"NIU (not in universe)"', add
label values gn96a_grade gn96a_grade_lbl

label define gn96a_edattan_lbl 00 `"No education"'
label define gn96a_edattan_lbl 10 `"Primary, grade unknown"', add
label define gn96a_edattan_lbl 11 `"Primary, grade 1"', add
label define gn96a_edattan_lbl 12 `"Primary, grade 2"', add
label define gn96a_edattan_lbl 13 `"Primary, grade 3"', add
label define gn96a_edattan_lbl 14 `"Primary, grade 4"', add
label define gn96a_edattan_lbl 15 `"Primary, grade 5"', add
label define gn96a_edattan_lbl 16 `"Primary, grade 6"', add
label define gn96a_edattan_lbl 20 `"Secondary 1, grade unknown"', add
label define gn96a_edattan_lbl 21 `"Secondary 1, grade 1"', add
label define gn96a_edattan_lbl 22 `"Secondary 1, grade 2"', add
label define gn96a_edattan_lbl 23 `"Secondary 1, grade 3"', add
label define gn96a_edattan_lbl 24 `"Secondary 1, grade 4"', add
label define gn96a_edattan_lbl 30 `"Secondary 2, grade unknown"', add
label define gn96a_edattan_lbl 31 `"Secondary 2, grade 1"', add
label define gn96a_edattan_lbl 32 `"Secondary 2, grade 2"', add
label define gn96a_edattan_lbl 33 `"Secondary 2, grade 3"', add
label define gn96a_edattan_lbl 40 `"Professional A, grade unknown"', add
label define gn96a_edattan_lbl 41 `"Professional A, grade 1"', add
label define gn96a_edattan_lbl 42 `"Professional A, grade 2"', add
label define gn96a_edattan_lbl 43 `"Professional A, grade 3"', add
label define gn96a_edattan_lbl 50 `"Professional B grade unknown"', add
label define gn96a_edattan_lbl 51 `"Professional B, grade 1"', add
label define gn96a_edattan_lbl 52 `"Professional B, grade 2"', add
label define gn96a_edattan_lbl 53 `"Professional B, grade 3"', add
label define gn96a_edattan_lbl 60 `"Higher, grade unknown"', add
label define gn96a_edattan_lbl 61 `"Higher, grade 1"', add
label define gn96a_edattan_lbl 62 `"Higher, grade 2"', add
label define gn96a_edattan_lbl 63 `"Higher, grade 3"', add
label define gn96a_edattan_lbl 64 `"Higher, grade 4"', add
label define gn96a_edattan_lbl 65 `"Higher, grade 5"', add
label define gn96a_edattan_lbl 66 `"Higher, grade 6"', add
label define gn96a_edattan_lbl 67 `"Higher, grade 7"', add
label define gn96a_edattan_lbl 68 `"Higher, grade 8"', add
label define gn96a_edattan_lbl 69 `"Higher, grade 9"', add
label define gn96a_edattan_lbl 98 `"Unknown"', add
label define gn96a_edattan_lbl 99 `"NIU (not in universe)"', add
label values gn96a_edattan gn96a_edattan_lbl

label define gn96a_empstat_lbl 01 `"Employed"'
label define gn96a_empstat_lbl 02 `"Unemployed"', add
label define gn96a_empstat_lbl 03 `"Seeking for first job"', add
label define gn96a_empstat_lbl 04 `"Housewife"', add
label define gn96a_empstat_lbl 05 `"Retired"', add
label define gn96a_empstat_lbl 06 `"Pensioner"', add
label define gn96a_empstat_lbl 07 `"Student"', add
label define gn96a_empstat_lbl 08 `"Other undetermined"', add
label define gn96a_empstat_lbl 98 `"Unknown"', add
label define gn96a_empstat_lbl 99 `"NIU (not in universe)"', add
label values gn96a_empstat gn96a_empstat_lbl

label define gn96a_occ_lbl 112 `"Senior government officials"'
label define gn96a_occ_lbl 121 `"Directors and chief executives"', add
label define gn96a_occ_lbl 122 `"Production and operations managers"', add
label define gn96a_occ_lbl 123 `"Other specialist managers"', add
label define gn96a_occ_lbl 131 `"Managers of small enterprises"', add
label define gn96a_occ_lbl 199 `"Legislators, officials and managers, not elsewhere classified"', add
label define gn96a_occ_lbl 213 `"Computing professionals"', add
label define gn96a_occ_lbl 214 `"Architects, engineers and related professionals"', add
label define gn96a_occ_lbl 221 `"Life science professionals"', add
label define gn96a_occ_lbl 222 `"Health professionals (except nursing)"', add
label define gn96a_occ_lbl 223 `"Nursing and midwifery professionals"', add
label define gn96a_occ_lbl 231 `"College, university and higher education teaching professionals"', add
label define gn96a_occ_lbl 232 `"Secondary education teaching professionals"', add
label define gn96a_occ_lbl 233 `"Primary and pre-primary education teaching professionals"', add
label define gn96a_occ_lbl 241 `"Business professionals"', add
label define gn96a_occ_lbl 242 `"Legal professionals"', add
label define gn96a_occ_lbl 244 `"Social science and related professionals"', add
label define gn96a_occ_lbl 245 `"Writers and creative or performing artists"', add
label define gn96a_occ_lbl 246 `"Religious professionals"', add
label define gn96a_occ_lbl 299 `"Professionals not elsewhere classified"', add
label define gn96a_occ_lbl 311 `"Physical and engineering science technicians"', add
label define gn96a_occ_lbl 313 `"Optical and electronic equipment operators"', add
label define gn96a_occ_lbl 314 `"Ship and aircraft controllers and technicians"', add
label define gn96a_occ_lbl 315 `"Safety and quality inspectors"', add
label define gn96a_occ_lbl 321 `"Life science technicians and related associate professional"', add
label define gn96a_occ_lbl 322 `"Health associate professionals (except nursing)"', add
label define gn96a_occ_lbl 323 `"Nursing and midwifery associate professionals"', add
label define gn96a_occ_lbl 324 `"Nursing and midwifery associate professionals"', add
label define gn96a_occ_lbl 341 `"Finance and sales associate professionals"', add
label define gn96a_occ_lbl 342 `"Business services agents and trade brokers"', add
label define gn96a_occ_lbl 343 `"Administrative associate professionals"', add
label define gn96a_occ_lbl 344 `"Customs, tax and related government associate professionals"', add
label define gn96a_occ_lbl 345 `"Police inspectors and detectives"', add
label define gn96a_occ_lbl 346 `"Social work associate professionals"', add
label define gn96a_occ_lbl 347 `"Artistic, entertainment and sports associate professionals"', add
label define gn96a_occ_lbl 399 `"Technicians and associate professionals, n.e.c."', add
label define gn96a_occ_lbl 411 `"Secretaries and keyboard-operating clerks"', add
label define gn96a_occ_lbl 412 `"Numerical clerks"', add
label define gn96a_occ_lbl 413 `"Material-recording and transport clerks"', add
label define gn96a_occ_lbl 421 `"Cashiers, tellers and related clerks"', add
label define gn96a_occ_lbl 422 `"Client information clerks"', add
label define gn96a_occ_lbl 499 `"Clerks, not elsewhere classified"', add
label define gn96a_occ_lbl 511 `"Travel attendants and related workers"', add
label define gn96a_occ_lbl 512 `"Housekeeping and restaurant services workers"', add
label define gn96a_occ_lbl 513 `"Personal care and related workers"', add
label define gn96a_occ_lbl 514 `"Other personal services workers"', add
label define gn96a_occ_lbl 515 `"Astrologists, fortune tellers and similar"', add
label define gn96a_occ_lbl 516 `"Protective services workers"', add
label define gn96a_occ_lbl 521 `"Fashion and other models"', add
label define gn96a_occ_lbl 522 `"Shop, stall and market salespersons and demonstrators"', add
label define gn96a_occ_lbl 523 `"Stall and market salespersons"', add
label define gn96a_occ_lbl 611 `"Market gardeners and crop growers"', add
label define gn96a_occ_lbl 612 `"Animal producers and related workers"', add
label define gn96a_occ_lbl 614 `"Forestry and related workers"', add
label define gn96a_occ_lbl 615 `"Fishery workers, hunters and trappers"', add
label define gn96a_occ_lbl 621 `"Subsistence agricultural and fishery workers"', add
label define gn96a_occ_lbl 711 `"Miners, shotfirers, stone cutters and carvers"', add
label define gn96a_occ_lbl 712 `"Building frame and related trades workers"', add
label define gn96a_occ_lbl 713 `"Building finishers and related trades workers"', add
label define gn96a_occ_lbl 714 `"Painters, building structure cleaners and related trades workers"', add
label define gn96a_occ_lbl 721 `"Metal moulders, welders, sheet-metal workers, structural-metal preparers, and related trades workers"', add
label define gn96a_occ_lbl 722 `"Blacksmiths, tool-makers and related trades workers"', add
label define gn96a_occ_lbl 723 `"Machinery mechanics and fitters"', add
label define gn96a_occ_lbl 724 `"Electrical and electronic equipment mechanics and fitters"', add
label define gn96a_occ_lbl 731 `"Precision workers in metal and related materials"', add
label define gn96a_occ_lbl 732 `"Potters, glass-makers and related trades workers"', add
label define gn96a_occ_lbl 733 `"Handicraft workers in wood, textile, leather and related materials"', add
label define gn96a_occ_lbl 734 `"Craft printing and related trades workers"', add
label define gn96a_occ_lbl 741 `"Food processing and related trades workers"', add
label define gn96a_occ_lbl 742 `"Wood treaters, cabinet-makers and related trades workers"', add
label define gn96a_occ_lbl 743 `"Textile, garment and related trades workers"', add
label define gn96a_occ_lbl 744 `"Pelt, leather and shoemaking trades workers"', add
label define gn96a_occ_lbl 823 `"Rubber- and plastic-products machine operators"', add
label define gn96a_occ_lbl 831 `"Locomotive engine drivers and related workers"', add
label define gn96a_occ_lbl 832 `"Motor vehicle drivers"', add
label define gn96a_occ_lbl 833 `"Agricultural and other mobile plant operators"', add
label define gn96a_occ_lbl 834 `"Ships' deck crews and related workers"', add
label define gn96a_occ_lbl 899 `"Plant and machine operators and assemblers, n.e.c."', add
label define gn96a_occ_lbl 911 `"Street vendors and related workers"', add
label define gn96a_occ_lbl 912 `"Shoe cleaning and other street services elementary occupations"', add
label define gn96a_occ_lbl 913 `"Domestic and related helpers, cleaners and launderers"', add
label define gn96a_occ_lbl 915 `"Messengers, porters, doorkeepers and related workers"', add
label define gn96a_occ_lbl 916 `"Garbage collectors and related labourers"', add
label define gn96a_occ_lbl 921 `"Agricultural, fishery and related labourers"', add
label define gn96a_occ_lbl 931 `"Mining and construction labourers"', add
label define gn96a_occ_lbl 932 `"Manufacturing labourers"', add
label define gn96a_occ_lbl 933 `"Transport labourers and freight handlers"', add
label define gn96a_occ_lbl 939 `"Other elementary workers"', add
label define gn96a_occ_lbl 998 `"Unknown"', add
label define gn96a_occ_lbl 999 `"NIU (not in universe)"', add
label values gn96a_occ gn96a_occ_lbl

label define gn96a_classwk_lbl 01 `"Self-employed"'
label define gn96a_classwk_lbl 02 `"Employer"', add
label define gn96a_classwk_lbl 03 `"Public administration employee"', add
label define gn96a_classwk_lbl 04 `"Mixed enterprise employee"', add
label define gn96a_classwk_lbl 05 `"Private sector employee"', add
label define gn96a_classwk_lbl 06 `"Cooperative"', add
label define gn96a_classwk_lbl 07 `"Apprentice"', add
label define gn96a_classwk_lbl 08 `"Family assistant"', add
label define gn96a_classwk_lbl 98 `"Unknown"', add
label define gn96a_classwk_lbl 99 `"NIU (not in universe)"', add
label values gn96a_classwk gn96a_classwk_lbl

label define gn96a_marst_lbl 01 `"Never married"'
label define gn96a_marst_lbl 02 `"Married, with 1 wife"', add
label define gn96a_marst_lbl 03 `"Married, with 2 wives"', add
label define gn96a_marst_lbl 04 `"Married, with 3 wives"', add
label define gn96a_marst_lbl 05 `"Married, with 4 wives"', add
label define gn96a_marst_lbl 06 `"Married, with 5 wives"', add
label define gn96a_marst_lbl 07 `"Common law union/free union"', add
label define gn96a_marst_lbl 08 `"Divorced"', add
label define gn96a_marst_lbl 09 `"Separated"', add
label define gn96a_marst_lbl 10 `"Widowed"', add
label define gn96a_marst_lbl 98 `"Unknown"', add
label define gn96a_marst_lbl 99 `"NIU (not in universe)"', add
label values gn96a_marst gn96a_marst_lbl

label define gn96a_chbornm_lbl 00 `"0"'
label define gn96a_chbornm_lbl 01 `"1"', add
label define gn96a_chbornm_lbl 02 `"2"', add
label define gn96a_chbornm_lbl 03 `"3"', add
label define gn96a_chbornm_lbl 04 `"4"', add
label define gn96a_chbornm_lbl 05 `"5"', add
label define gn96a_chbornm_lbl 06 `"6"', add
label define gn96a_chbornm_lbl 07 `"7"', add
label define gn96a_chbornm_lbl 08 `"8"', add
label define gn96a_chbornm_lbl 09 `"9"', add
label define gn96a_chbornm_lbl 10 `"10"', add
label define gn96a_chbornm_lbl 11 `"11"', add
label define gn96a_chbornm_lbl 12 `"12"', add
label define gn96a_chbornm_lbl 13 `"13+"', add
label define gn96a_chbornm_lbl 98 `"Unknown"', add
label define gn96a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values gn96a_chbornm gn96a_chbornm_lbl

label define gn96a_chbornf_lbl 00 `"0"'
label define gn96a_chbornf_lbl 01 `"1"', add
label define gn96a_chbornf_lbl 02 `"2"', add
label define gn96a_chbornf_lbl 03 `"3"', add
label define gn96a_chbornf_lbl 04 `"4"', add
label define gn96a_chbornf_lbl 05 `"5"', add
label define gn96a_chbornf_lbl 06 `"6"', add
label define gn96a_chbornf_lbl 07 `"7"', add
label define gn96a_chbornf_lbl 08 `"8"', add
label define gn96a_chbornf_lbl 09 `"9"', add
label define gn96a_chbornf_lbl 10 `"10"', add
label define gn96a_chbornf_lbl 11 `"11"', add
label define gn96a_chbornf_lbl 12 `"12"', add
label define gn96a_chbornf_lbl 13 `"13+"', add
label define gn96a_chbornf_lbl 98 `"Unknown"', add
label define gn96a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values gn96a_chbornf gn96a_chbornf_lbl

label define gn96a_chsurvm_lbl 00 `"0"'
label define gn96a_chsurvm_lbl 01 `"1"', add
label define gn96a_chsurvm_lbl 02 `"2"', add
label define gn96a_chsurvm_lbl 03 `"3"', add
label define gn96a_chsurvm_lbl 04 `"4"', add
label define gn96a_chsurvm_lbl 05 `"5"', add
label define gn96a_chsurvm_lbl 06 `"6"', add
label define gn96a_chsurvm_lbl 07 `"7"', add
label define gn96a_chsurvm_lbl 08 `"8"', add
label define gn96a_chsurvm_lbl 09 `"9"', add
label define gn96a_chsurvm_lbl 10 `"10+"', add
label define gn96a_chsurvm_lbl 98 `"Unknown"', add
label define gn96a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values gn96a_chsurvm gn96a_chsurvm_lbl

label define gn96a_chsurvf_lbl 00 `"0"'
label define gn96a_chsurvf_lbl 01 `"1"', add
label define gn96a_chsurvf_lbl 02 `"2"', add
label define gn96a_chsurvf_lbl 03 `"3"', add
label define gn96a_chsurvf_lbl 04 `"4"', add
label define gn96a_chsurvf_lbl 05 `"5"', add
label define gn96a_chsurvf_lbl 06 `"6"', add
label define gn96a_chsurvf_lbl 07 `"7"', add
label define gn96a_chsurvf_lbl 08 `"8"', add
label define gn96a_chsurvf_lbl 09 `"9"', add
label define gn96a_chsurvf_lbl 10 `"10+"', add
label define gn96a_chsurvf_lbl 98 `"Unknown"', add
label define gn96a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values gn96a_chsurvf gn96a_chsurvf_lbl

label define gn96a_chb12m_lbl 0 `"0"'
label define gn96a_chb12m_lbl 1 `"1"', add
label define gn96a_chb12m_lbl 2 `"2"', add
label define gn96a_chb12m_lbl 3 `"3"', add
label define gn96a_chb12m_lbl 8 `"Unknown"', add
label define gn96a_chb12m_lbl 9 `"NIU (not in universe)"', add
label values gn96a_chb12m gn96a_chb12m_lbl

label define gn96a_chb12f_lbl 0 `"0"'
label define gn96a_chb12f_lbl 1 `"1"', add
label define gn96a_chb12f_lbl 2 `"2"', add
label define gn96a_chb12f_lbl 3 `"3"', add
label define gn96a_chb12f_lbl 8 `"Unknown"', add
label define gn96a_chb12f_lbl 9 `"NIU (not in universe)"', add
label values gn96a_chb12f gn96a_chb12f_lbl

label define gn96a_age_lbl 000 `"Less than one year"'
label define gn96a_age_lbl 001 `"1"', add
label define gn96a_age_lbl 002 `"2"', add
label define gn96a_age_lbl 003 `"3"', add
label define gn96a_age_lbl 004 `"4"', add
label define gn96a_age_lbl 005 `"5"', add
label define gn96a_age_lbl 006 `"6"', add
label define gn96a_age_lbl 007 `"7"', add
label define gn96a_age_lbl 008 `"8"', add
label define gn96a_age_lbl 009 `"9"', add
label define gn96a_age_lbl 010 `"10"', add
label define gn96a_age_lbl 011 `"11"', add
label define gn96a_age_lbl 012 `"12"', add
label define gn96a_age_lbl 013 `"13"', add
label define gn96a_age_lbl 014 `"14"', add
label define gn96a_age_lbl 015 `"15"', add
label define gn96a_age_lbl 016 `"16"', add
label define gn96a_age_lbl 017 `"17"', add
label define gn96a_age_lbl 018 `"18"', add
label define gn96a_age_lbl 019 `"19"', add
label define gn96a_age_lbl 020 `"20"', add
label define gn96a_age_lbl 021 `"21"', add
label define gn96a_age_lbl 022 `"22"', add
label define gn96a_age_lbl 023 `"23"', add
label define gn96a_age_lbl 024 `"24"', add
label define gn96a_age_lbl 025 `"25"', add
label define gn96a_age_lbl 026 `"26"', add
label define gn96a_age_lbl 027 `"27"', add
label define gn96a_age_lbl 028 `"28"', add
label define gn96a_age_lbl 029 `"29"', add
label define gn96a_age_lbl 030 `"30"', add
label define gn96a_age_lbl 031 `"31"', add
label define gn96a_age_lbl 032 `"32"', add
label define gn96a_age_lbl 033 `"33"', add
label define gn96a_age_lbl 034 `"34"', add
label define gn96a_age_lbl 035 `"35"', add
label define gn96a_age_lbl 036 `"36"', add
label define gn96a_age_lbl 037 `"37"', add
label define gn96a_age_lbl 038 `"38"', add
label define gn96a_age_lbl 039 `"39"', add
label define gn96a_age_lbl 040 `"40"', add
label define gn96a_age_lbl 041 `"41"', add
label define gn96a_age_lbl 042 `"42"', add
label define gn96a_age_lbl 043 `"43"', add
label define gn96a_age_lbl 044 `"44"', add
label define gn96a_age_lbl 045 `"45"', add
label define gn96a_age_lbl 046 `"46"', add
label define gn96a_age_lbl 047 `"47"', add
label define gn96a_age_lbl 048 `"48"', add
label define gn96a_age_lbl 049 `"49"', add
label define gn96a_age_lbl 050 `"50"', add
label define gn96a_age_lbl 051 `"51"', add
label define gn96a_age_lbl 052 `"52"', add
label define gn96a_age_lbl 053 `"53"', add
label define gn96a_age_lbl 054 `"54"', add
label define gn96a_age_lbl 055 `"55"', add
label define gn96a_age_lbl 056 `"56"', add
label define gn96a_age_lbl 057 `"57"', add
label define gn96a_age_lbl 058 `"58"', add
label define gn96a_age_lbl 059 `"59"', add
label define gn96a_age_lbl 060 `"60"', add
label define gn96a_age_lbl 061 `"61"', add
label define gn96a_age_lbl 062 `"62"', add
label define gn96a_age_lbl 063 `"63"', add
label define gn96a_age_lbl 064 `"64"', add
label define gn96a_age_lbl 065 `"65"', add
label define gn96a_age_lbl 066 `"66"', add
label define gn96a_age_lbl 067 `"67"', add
label define gn96a_age_lbl 068 `"68"', add
label define gn96a_age_lbl 069 `"69"', add
label define gn96a_age_lbl 070 `"70"', add
label define gn96a_age_lbl 071 `"71"', add
label define gn96a_age_lbl 072 `"72"', add
label define gn96a_age_lbl 073 `"73"', add
label define gn96a_age_lbl 074 `"74"', add
label define gn96a_age_lbl 075 `"75"', add
label define gn96a_age_lbl 076 `"76"', add
label define gn96a_age_lbl 077 `"77"', add
label define gn96a_age_lbl 078 `"78"', add
label define gn96a_age_lbl 079 `"79"', add
label define gn96a_age_lbl 080 `"80"', add
label define gn96a_age_lbl 081 `"81"', add
label define gn96a_age_lbl 082 `"82"', add
label define gn96a_age_lbl 083 `"83"', add
label define gn96a_age_lbl 084 `"84"', add
label define gn96a_age_lbl 085 `"85"', add
label define gn96a_age_lbl 086 `"86"', add
label define gn96a_age_lbl 087 `"87"', add
label define gn96a_age_lbl 088 `"88"', add
label define gn96a_age_lbl 089 `"89"', add
label define gn96a_age_lbl 090 `"90"', add
label define gn96a_age_lbl 091 `"91"', add
label define gn96a_age_lbl 092 `"92"', add
label define gn96a_age_lbl 093 `"93"', add
label define gn96a_age_lbl 094 `"94"', add
label define gn96a_age_lbl 095 `"95"', add
label define gn96a_age_lbl 096 `"96"', add
label define gn96a_age_lbl 097 `"97"', add
label define gn96a_age_lbl 098 `"98"', add
label define gn96a_age_lbl 099 `"99"', add
label define gn96a_age_lbl 999 `"Unknown"', add
label values gn96a_age gn96a_age_lbl


