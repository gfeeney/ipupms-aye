* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    kh08a_dwnum     22-27    ///
  byte    kh08a_pern      28-29    ///
  byte    kh08a_fbig      30-30    ///
  byte    kh08a_prov      31-32    ///
  byte    kh08a_urban     33-33    ///
  byte    kh08a_hhtype    34-34    ///
  int     kh08a_usualhh   35-37    ///
  byte    kh08a_visitors  38-39    ///
  int     kh08a_persons   40-42    ///
  byte    kh08a_ownershp  43-43    ///
  byte    kh08a_lighting  44-44    ///
  byte    kh08a_fuel      45-45    ///
  byte    kh08a_toilet    46-46    ///
  byte    kh08a_watsrc    47-47    ///
  byte    kh08a_watloc    48-48    ///
  byte    kh08a_rooms     49-49    ///
  byte    kh08a_radio     50-51    ///
  byte    kh08a_tv        52-53    ///
  byte    kh08a_phone     54-55    ///
  byte    kh08a_cell      56-57    ///
  byte    kh08a_pc        58-59    ///
  byte    kh08a_bike      60-61    ///
  byte    kh08a_motobike  62-63    ///
  byte    kh08a_auto      64-65    ///
  byte    kh08a_boat      66-67    ///
  byte    kh08a_tractor   68-69    ///
  byte    kh08a_handtrac  70-71    ///
  byte    kh08a_nethome   72-72    ///
  byte    kh08a_netaway   73-73    ///
  byte    kh08a_deaths    74-74    ///
  int     pernum          75-77    ///
  float   wtper           78-85    ///
  byte    kh08a_pernum    86-87    ///
  byte    kh08a_relate    88-88    ///
  byte    kh08a_sex       89-89    ///
  byte    kh08a_age       90-91    ///
  byte    kh08a_marst     92-92    ///
  byte    kh08a_mtongue   93-94    ///
  byte    kh08a_relig     95-95    ///
  byte    kh08a_bplprov   96-97    ///
  int     kh08a_bpldist   98-101   ///
  byte    kh08a_prevprov  102-103  ///
  int     kh08a_prevdist  104-107  ///
  byte    kh08a_durres    108-109  ///
  byte    kh08a_migreas   110-111  ///
  byte    kh08a_litkh     112-112  ///
  byte    kh08a_litoth    113-113  ///
  byte    kh08a_school    114-114  ///
  byte    kh08a_educ      115-116  ///
  byte    kh08a_disbrth   117-117  ///
  byte    kh08a_disafter  118-118  ///
  byte    kh08a_empstat   119-119  ///
  byte    kh08a_empmo     120-121  ///
  int     kh08a_occ       122-124  ///
  byte    kh08a_classwk   125-125  ///
  int     kh08a_ind       126-128  ///
  byte    kh08a_empsect   129-129  ///
  byte    kh08a_sececon   130-131  ///
  byte    kh08a_workloc   132-132  ///
  byte    kh08a_workprov  133-134  ///
  int     kh08a_workdist  135-138  ///
  byte    kh08a_chbornm   139-140  ///
  byte    kh08a_chbornf   141-142  ///
  byte    kh08a_chsurvm   143-144  ///
  byte    kh08a_chsurvf   145-146  ///
  byte    kh08a_chdeadm   147-148  ///
  byte    kh08a_chdeadf   149-150  ///
  byte    kh08a_maleborn  151-151  ///
  byte    kh08a_femborn   152-152  ///
  byte    kh08a_assistb   153-153  ///
  using `"ipumsi_00057.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var kh08a_dwnum    `"Dwelling number"'
label var kh08a_pern     `"Number of persons in household"'
label var kh08a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var kh08a_prov     `"Province"'
label var kh08a_urban    `"Urban-rural status"'
label var kh08a_hhtype   `"Household type"'
label var kh08a_usualhh  `"Number of usual members in household"'
label var kh08a_visitors `"Number of visitors in household"'
label var kh08a_persons  `"Total persons in household"'
label var kh08a_ownershp `"Ownership of dwelling"'
label var kh08a_lighting `"Main source of light"'
label var kh08a_fuel     `"Main cooking fuel"'
label var kh08a_toilet   `"Toilet on premises"'
label var kh08a_watsrc   `"Main source of drinking water"'
label var kh08a_watloc   `"Location of drinking water"'
label var kh08a_rooms    `"Number of rooms"'
label var kh08a_radio    `"Number of radios"'
label var kh08a_tv       `"Number of televisions"'
label var kh08a_phone    `"Number of fixed phones"'
label var kh08a_cell     `"Number of cell phones"'
label var kh08a_pc       `"Number of personal computers"'
label var kh08a_bike     `"Number of bicycles"'
label var kh08a_motobike `"Number of motorcycles"'
label var kh08a_auto     `"Number of cars/vans"'
label var kh08a_boat     `"Number of boats"'
label var kh08a_tractor  `"Number of big tractors"'
label var kh08a_handtrac `"Number of hand tractors"'
label var kh08a_nethome  `"Internet access at home"'
label var kh08a_netaway  `"Internet access outside home"'
label var kh08a_deaths   `"Deaths in last year in household"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var kh08a_pernum   `"Person number (within household)"'
label var kh08a_relate   `"Relation to household head"'
label var kh08a_sex      `"Sex"'
label var kh08a_age      `"Age"'
label var kh08a_marst    `"Marital status"'
label var kh08a_mtongue  `"Mother tongue"'
label var kh08a_relig    `"Religion"'
label var kh08a_bplprov  `"Province of birth"'
label var kh08a_bpldist  `"District or country of birth"'
label var kh08a_prevprov `"Province of previous residence"'
label var kh08a_prevdist `"District or country of previous residence"'
label var kh08a_durres   `"Duration of stay in village"'
label var kh08a_migreas  `"Reason for migration"'
label var kh08a_litkh    `"Literate in Khmer"'
label var kh08a_litoth   `"Literate in other language"'
label var kh08a_school   `"School attendance"'
label var kh08a_educ     `"Grade or level of education completed"'
label var kh08a_disbrth  `"Disabled since birth"'
label var kh08a_disafter `"Disabled after birth"'
label var kh08a_empstat  `"Activity status"'
label var kh08a_empmo    `"Months employed last year"'
label var kh08a_occ      `"Occupation"'
label var kh08a_classwk  `"Status in employment"'
label var kh08a_ind      `"Industry"'
label var kh08a_empsect  `"Employment sector"'
label var kh08a_sececon  `"Second economic activity"'
label var kh08a_workloc  `"Workplace location"'
label var kh08a_workprov `"Province of workplace"'
label var kh08a_workdist `"District of workplace"'
label var kh08a_chbornm  `"Children ever born, male"'
label var kh08a_chbornf  `"Children ever born, female"'
label var kh08a_chsurvm  `"Children surviving, male"'
label var kh08a_chsurvf  `"Children surviving, female"'
label var kh08a_chdeadm  `"Children dead, male"'
label var kh08a_chdeadf  `"Children dead, female"'
label var kh08a_maleborn `"Males born last year"'
label var kh08a_femborn  `"Females born last year"'
label var kh08a_assistb  `"Assistance with birth"'

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

label define kh08a_pern_lbl 01 `"1"'
label define kh08a_pern_lbl 02 `"2"', add
label define kh08a_pern_lbl 03 `"3"', add
label define kh08a_pern_lbl 04 `"4"', add
label define kh08a_pern_lbl 05 `"5"', add
label define kh08a_pern_lbl 06 `"6"', add
label define kh08a_pern_lbl 07 `"7"', add
label define kh08a_pern_lbl 08 `"8"', add
label define kh08a_pern_lbl 09 `"9"', add
label define kh08a_pern_lbl 10 `"10"', add
label define kh08a_pern_lbl 11 `"11"', add
label define kh08a_pern_lbl 12 `"12"', add
label define kh08a_pern_lbl 13 `"13"', add
label define kh08a_pern_lbl 14 `"14"', add
label define kh08a_pern_lbl 15 `"15"', add
label define kh08a_pern_lbl 16 `"16"', add
label define kh08a_pern_lbl 17 `"17"', add
label define kh08a_pern_lbl 18 `"18"', add
label define kh08a_pern_lbl 19 `"19"', add
label define kh08a_pern_lbl 20 `"20"', add
label define kh08a_pern_lbl 21 `"21"', add
label define kh08a_pern_lbl 22 `"22"', add
label define kh08a_pern_lbl 23 `"23"', add
label define kh08a_pern_lbl 24 `"24"', add
label define kh08a_pern_lbl 25 `"25"', add
label define kh08a_pern_lbl 26 `"26"', add
label define kh08a_pern_lbl 27 `"27"', add
label define kh08a_pern_lbl 28 `"28"', add
label define kh08a_pern_lbl 29 `"29"', add
label define kh08a_pern_lbl 30 `"30"', add
label values kh08a_pern kh08a_pern_lbl

label define kh08a_fbig_lbl 0 `"No problem"'
label define kh08a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define kh08a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values kh08a_fbig kh08a_fbig_lbl

label define kh08a_prov_lbl 01 `"Banteay Meanchey"'
label define kh08a_prov_lbl 02 `"Battambang"', add
label define kh08a_prov_lbl 03 `"Kampong Cham"', add
label define kh08a_prov_lbl 04 `"Kampong Chhnang"', add
label define kh08a_prov_lbl 05 `"Kampong Speu"', add
label define kh08a_prov_lbl 06 `"Kampong Thom"', add
label define kh08a_prov_lbl 07 `"Kampot"', add
label define kh08a_prov_lbl 08 `"Kandal"', add
label define kh08a_prov_lbl 09 `"Koh Kong"', add
label define kh08a_prov_lbl 10 `"Kratie"', add
label define kh08a_prov_lbl 11 `"Mondul Kiri"', add
label define kh08a_prov_lbl 12 `"Phnom Penh"', add
label define kh08a_prov_lbl 13 `"Preah Vihear"', add
label define kh08a_prov_lbl 14 `"Prey Veng"', add
label define kh08a_prov_lbl 15 `"Pursat"', add
label define kh08a_prov_lbl 16 `"Rotanak Kiri"', add
label define kh08a_prov_lbl 17 `"Siem Reap"', add
label define kh08a_prov_lbl 18 `"Preah Sihanouk"', add
label define kh08a_prov_lbl 19 `"Stung Treng"', add
label define kh08a_prov_lbl 20 `"Svay Rieng"', add
label define kh08a_prov_lbl 21 `"Takeo"', add
label define kh08a_prov_lbl 22 `"Otdar Meanchey"', add
label define kh08a_prov_lbl 23 `"Kep"', add
label define kh08a_prov_lbl 24 `"Pailin"', add
label values kh08a_prov kh08a_prov_lbl

label define kh08a_urban_lbl 1 `"Urban"'
label define kh08a_urban_lbl 2 `"Rural"', add
label values kh08a_urban kh08a_urban_lbl

label define kh08a_hhtype_lbl 1 `"Normal or regular household"'
label define kh08a_hhtype_lbl 2 `"Institutional household"', add
label define kh08a_hhtype_lbl 3 `"Homeless household"', add
label define kh08a_hhtype_lbl 4 `"Boat population"', add
label define kh08a_hhtype_lbl 5 `"Transient population"', add
label values kh08a_hhtype kh08a_hhtype_lbl

label define kh08a_usualhh_lbl 000 `"0"'
label define kh08a_usualhh_lbl 001 `"1"', add
label define kh08a_usualhh_lbl 002 `"2"', add
label define kh08a_usualhh_lbl 003 `"3"', add
label define kh08a_usualhh_lbl 004 `"4"', add
label define kh08a_usualhh_lbl 005 `"5"', add
label define kh08a_usualhh_lbl 006 `"6"', add
label define kh08a_usualhh_lbl 007 `"7"', add
label define kh08a_usualhh_lbl 008 `"8"', add
label define kh08a_usualhh_lbl 009 `"9"', add
label define kh08a_usualhh_lbl 010 `"10"', add
label define kh08a_usualhh_lbl 011 `"11"', add
label define kh08a_usualhh_lbl 012 `"12"', add
label define kh08a_usualhh_lbl 013 `"13"', add
label define kh08a_usualhh_lbl 014 `"14"', add
label define kh08a_usualhh_lbl 015 `"15"', add
label define kh08a_usualhh_lbl 016 `"16"', add
label define kh08a_usualhh_lbl 017 `"17"', add
label define kh08a_usualhh_lbl 018 `"18"', add
label define kh08a_usualhh_lbl 019 `"19"', add
label define kh08a_usualhh_lbl 020 `"20"', add
label define kh08a_usualhh_lbl 021 `"21"', add
label define kh08a_usualhh_lbl 022 `"22"', add
label define kh08a_usualhh_lbl 023 `"23"', add
label define kh08a_usualhh_lbl 024 `"24"', add
label define kh08a_usualhh_lbl 025 `"25"', add
label define kh08a_usualhh_lbl 027 `"27"', add
label define kh08a_usualhh_lbl 028 `"28"', add
label define kh08a_usualhh_lbl 030 `"30"', add
label define kh08a_usualhh_lbl 032 `"32"', add
label define kh08a_usualhh_lbl 033 `"33"', add
label define kh08a_usualhh_lbl 035 `"35"', add
label define kh08a_usualhh_lbl 036 `"36"', add
label define kh08a_usualhh_lbl 047 `"47"', add
label define kh08a_usualhh_lbl 187 `"187"', add
label define kh08a_usualhh_lbl 190 `"190"', add
label define kh08a_usualhh_lbl 999 `"NIU (Not in universe)"', add
label values kh08a_usualhh kh08a_usualhh_lbl

label define kh08a_visitors_lbl 00 `"0"'
label define kh08a_visitors_lbl 01 `"1"', add
label define kh08a_visitors_lbl 02 `"2"', add
label define kh08a_visitors_lbl 03 `"3"', add
label define kh08a_visitors_lbl 04 `"4"', add
label define kh08a_visitors_lbl 05 `"5"', add
label define kh08a_visitors_lbl 06 `"6"', add
label define kh08a_visitors_lbl 07 `"7"', add
label define kh08a_visitors_lbl 08 `"8"', add
label define kh08a_visitors_lbl 09 `"9"', add
label define kh08a_visitors_lbl 10 `"10"', add
label define kh08a_visitors_lbl 11 `"11"', add
label define kh08a_visitors_lbl 12 `"12"', add
label define kh08a_visitors_lbl 13 `"13"', add
label define kh08a_visitors_lbl 15 `"15"', add
label define kh08a_visitors_lbl 16 `"16"', add
label define kh08a_visitors_lbl 17 `"17"', add
label define kh08a_visitors_lbl 99 `"NIU (Not in universe)"', add
label values kh08a_visitors kh08a_visitors_lbl

label define kh08a_persons_lbl 001 `"1"'
label define kh08a_persons_lbl 002 `"2"', add
label define kh08a_persons_lbl 003 `"3"', add
label define kh08a_persons_lbl 004 `"4"', add
label define kh08a_persons_lbl 005 `"5"', add
label define kh08a_persons_lbl 006 `"6"', add
label define kh08a_persons_lbl 007 `"7"', add
label define kh08a_persons_lbl 008 `"8"', add
label define kh08a_persons_lbl 009 `"9"', add
label define kh08a_persons_lbl 010 `"10"', add
label define kh08a_persons_lbl 011 `"11"', add
label define kh08a_persons_lbl 012 `"12"', add
label define kh08a_persons_lbl 013 `"13"', add
label define kh08a_persons_lbl 014 `"14"', add
label define kh08a_persons_lbl 015 `"15"', add
label define kh08a_persons_lbl 016 `"16"', add
label define kh08a_persons_lbl 017 `"17"', add
label define kh08a_persons_lbl 018 `"18"', add
label define kh08a_persons_lbl 019 `"19"', add
label define kh08a_persons_lbl 020 `"20"', add
label define kh08a_persons_lbl 021 `"21"', add
label define kh08a_persons_lbl 022 `"22"', add
label define kh08a_persons_lbl 023 `"23"', add
label define kh08a_persons_lbl 024 `"24"', add
label define kh08a_persons_lbl 025 `"25"', add
label define kh08a_persons_lbl 026 `"26"', add
label define kh08a_persons_lbl 027 `"27"', add
label define kh08a_persons_lbl 028 `"28"', add
label define kh08a_persons_lbl 029 `"29"', add
label define kh08a_persons_lbl 030 `"30"', add
label define kh08a_persons_lbl 031 `"31"', add
label define kh08a_persons_lbl 032 `"32"', add
label define kh08a_persons_lbl 033 `"33"', add
label define kh08a_persons_lbl 034 `"34"', add
label define kh08a_persons_lbl 035 `"35"', add
label define kh08a_persons_lbl 036 `"36"', add
label define kh08a_persons_lbl 037 `"37"', add
label define kh08a_persons_lbl 038 `"38"', add
label define kh08a_persons_lbl 039 `"39"', add
label define kh08a_persons_lbl 040 `"40"', add
label define kh08a_persons_lbl 042 `"42"', add
label define kh08a_persons_lbl 043 `"43"', add
label define kh08a_persons_lbl 044 `"44"', add
label define kh08a_persons_lbl 045 `"45"', add
label define kh08a_persons_lbl 046 `"46"', add
label define kh08a_persons_lbl 047 `"47"', add
label define kh08a_persons_lbl 049 `"49"', add
label define kh08a_persons_lbl 050 `"50"', add
label define kh08a_persons_lbl 052 `"52"', add
label define kh08a_persons_lbl 053 `"53"', add
label define kh08a_persons_lbl 058 `"58"', add
label define kh08a_persons_lbl 060 `"60"', add
label define kh08a_persons_lbl 063 `"63"', add
label define kh08a_persons_lbl 064 `"64"', add
label define kh08a_persons_lbl 070 `"70"', add
label define kh08a_persons_lbl 071 `"71"', add
label define kh08a_persons_lbl 074 `"74"', add
label define kh08a_persons_lbl 077 `"77"', add
label define kh08a_persons_lbl 079 `"79"', add
label define kh08a_persons_lbl 087 `"87"', add
label define kh08a_persons_lbl 088 `"88"', add
label define kh08a_persons_lbl 089 `"89"', add
label define kh08a_persons_lbl 100 `"100"', add
label define kh08a_persons_lbl 104 `"104"', add
label define kh08a_persons_lbl 112 `"112"', add
label define kh08a_persons_lbl 144 `"144"', add
label define kh08a_persons_lbl 159 `"159"', add
label define kh08a_persons_lbl 161 `"161"', add
label define kh08a_persons_lbl 187 `"187"', add
label define kh08a_persons_lbl 190 `"190"', add
label define kh08a_persons_lbl 200 `"200"', add
label define kh08a_persons_lbl 259 `"259"', add
label define kh08a_persons_lbl 675 `"675"', add
label values kh08a_persons kh08a_persons_lbl

label define kh08a_ownershp_lbl 1 `"Owner occupied"'
label define kh08a_ownershp_lbl 2 `"Rented"', add
label define kh08a_ownershp_lbl 3 `"Rent free"', add
label define kh08a_ownershp_lbl 4 `"Other"', add
label define kh08a_ownershp_lbl 9 `"NIU (Not in universe)"', add
label values kh08a_ownershp kh08a_ownershp_lbl

label define kh08a_lighting_lbl 1 `"City power"'
label define kh08a_lighting_lbl 2 `"Generator"', add
label define kh08a_lighting_lbl 3 `"City power and generator"', add
label define kh08a_lighting_lbl 4 `"Kerosene"', add
label define kh08a_lighting_lbl 5 `"Candle"', add
label define kh08a_lighting_lbl 6 `"Battery"', add
label define kh08a_lighting_lbl 7 `"Other"', add
label define kh08a_lighting_lbl 9 `"NIU (Not in universe)"', add
label values kh08a_lighting kh08a_lighting_lbl

label define kh08a_fuel_lbl 1 `"Firewood"'
label define kh08a_fuel_lbl 2 `"Charcoal"', add
label define kh08a_fuel_lbl 3 `"Kerosene"', add
label define kh08a_fuel_lbl 4 `"Liquified petroleum gas (LPG)"', add
label define kh08a_fuel_lbl 5 `"Electricity"', add
label define kh08a_fuel_lbl 6 `"None"', add
label define kh08a_fuel_lbl 7 `"Other"', add
label define kh08a_fuel_lbl 9 `"NIU (Not in universe)"', add
label values kh08a_fuel kh08a_fuel_lbl

label define kh08a_toilet_lbl 1 `"Not available"'
label define kh08a_toilet_lbl 2 `"Connected to sewerage"', add
label define kh08a_toilet_lbl 3 `"Septic tank"', add
label define kh08a_toilet_lbl 4 `"Pit latrine"', add
label define kh08a_toilet_lbl 5 `"Other"', add
label define kh08a_toilet_lbl 9 `"NIU (Not in universe)"', add
label values kh08a_toilet kh08a_toilet_lbl

label define kh08a_watsrc_lbl 1 `"Piped water"'
label define kh08a_watsrc_lbl 2 `"Tubed/pipe well"', add
label define kh08a_watsrc_lbl 3 `"Protected dug well"', add
label define kh08a_watsrc_lbl 4 `"Unprotected dug well"', add
label define kh08a_watsrc_lbl 5 `"Rain water"', add
label define kh08a_watsrc_lbl 6 `"Spring, river"', add
label define kh08a_watsrc_lbl 7 `"Bought"', add
label define kh08a_watsrc_lbl 8 `"Other"', add
label define kh08a_watsrc_lbl 9 `"NIU (Not in universe)"', add
label values kh08a_watsrc kh08a_watsrc_lbl

label define kh08a_watloc_lbl 1 `"Within premises"'
label define kh08a_watloc_lbl 2 `"Near premises"', add
label define kh08a_watloc_lbl 3 `"Away"', add
label define kh08a_watloc_lbl 9 `"NIU (Not in universe)"', add
label values kh08a_watloc kh08a_watloc_lbl

label define kh08a_rooms_lbl 1 `"1"'
label define kh08a_rooms_lbl 2 `"2"', add
label define kh08a_rooms_lbl 3 `"3"', add
label define kh08a_rooms_lbl 4 `"4"', add
label define kh08a_rooms_lbl 5 `"5"', add
label define kh08a_rooms_lbl 6 `"6"', add
label define kh08a_rooms_lbl 7 `"7"', add
label define kh08a_rooms_lbl 8 `"8+"', add
label define kh08a_rooms_lbl 9 `"NIU (Not in universe)"', add
label values kh08a_rooms kh08a_rooms_lbl

label define kh08a_radio_lbl 00 `"0"'
label define kh08a_radio_lbl 01 `"1"', add
label define kh08a_radio_lbl 02 `"2"', add
label define kh08a_radio_lbl 03 `"3"', add
label define kh08a_radio_lbl 04 `"4"', add
label define kh08a_radio_lbl 05 `"5"', add
label define kh08a_radio_lbl 06 `"6"', add
label define kh08a_radio_lbl 07 `"7"', add
label define kh08a_radio_lbl 08 `"8"', add
label define kh08a_radio_lbl 09 `"9"', add
label define kh08a_radio_lbl 10 `"10+"', add
label define kh08a_radio_lbl 99 `"NIU (Not in universe)"', add
label values kh08a_radio kh08a_radio_lbl

label define kh08a_tv_lbl 00 `"0"'
label define kh08a_tv_lbl 01 `"1"', add
label define kh08a_tv_lbl 02 `"2"', add
label define kh08a_tv_lbl 03 `"3"', add
label define kh08a_tv_lbl 04 `"4"', add
label define kh08a_tv_lbl 05 `"5"', add
label define kh08a_tv_lbl 06 `"6"', add
label define kh08a_tv_lbl 07 `"7"', add
label define kh08a_tv_lbl 08 `"8"', add
label define kh08a_tv_lbl 09 `"9"', add
label define kh08a_tv_lbl 10 `"10+"', add
label define kh08a_tv_lbl 99 `"NIU (Not in universe)"', add
label values kh08a_tv kh08a_tv_lbl

label define kh08a_phone_lbl 00 `"0"'
label define kh08a_phone_lbl 01 `"1"', add
label define kh08a_phone_lbl 02 `"2"', add
label define kh08a_phone_lbl 03 `"3"', add
label define kh08a_phone_lbl 04 `"4"', add
label define kh08a_phone_lbl 05 `"5"', add
label define kh08a_phone_lbl 06 `"6"', add
label define kh08a_phone_lbl 07 `"7"', add
label define kh08a_phone_lbl 08 `"8"', add
label define kh08a_phone_lbl 09 `"9"', add
label define kh08a_phone_lbl 10 `"10+"', add
label define kh08a_phone_lbl 99 `"NIU (Not in universe)"', add
label values kh08a_phone kh08a_phone_lbl

label define kh08a_cell_lbl 00 `"0"'
label define kh08a_cell_lbl 01 `"1"', add
label define kh08a_cell_lbl 02 `"2"', add
label define kh08a_cell_lbl 03 `"3"', add
label define kh08a_cell_lbl 04 `"4"', add
label define kh08a_cell_lbl 05 `"5"', add
label define kh08a_cell_lbl 06 `"6"', add
label define kh08a_cell_lbl 07 `"7"', add
label define kh08a_cell_lbl 08 `"8"', add
label define kh08a_cell_lbl 09 `"9"', add
label define kh08a_cell_lbl 10 `"10+"', add
label define kh08a_cell_lbl 99 `"NIU (Not in universe)"', add
label values kh08a_cell kh08a_cell_lbl

label define kh08a_pc_lbl 00 `"0"'
label define kh08a_pc_lbl 01 `"1"', add
label define kh08a_pc_lbl 02 `"2"', add
label define kh08a_pc_lbl 03 `"3"', add
label define kh08a_pc_lbl 04 `"4"', add
label define kh08a_pc_lbl 05 `"5"', add
label define kh08a_pc_lbl 06 `"6"', add
label define kh08a_pc_lbl 07 `"7"', add
label define kh08a_pc_lbl 08 `"8"', add
label define kh08a_pc_lbl 09 `"9"', add
label define kh08a_pc_lbl 10 `"10+"', add
label define kh08a_pc_lbl 99 `"NIU (Not in universe)"', add
label values kh08a_pc kh08a_pc_lbl

label define kh08a_bike_lbl 00 `"0"'
label define kh08a_bike_lbl 01 `"1"', add
label define kh08a_bike_lbl 02 `"2"', add
label define kh08a_bike_lbl 03 `"3"', add
label define kh08a_bike_lbl 04 `"4"', add
label define kh08a_bike_lbl 05 `"5"', add
label define kh08a_bike_lbl 06 `"6"', add
label define kh08a_bike_lbl 07 `"7"', add
label define kh08a_bike_lbl 08 `"8"', add
label define kh08a_bike_lbl 09 `"9"', add
label define kh08a_bike_lbl 10 `"10+"', add
label define kh08a_bike_lbl 99 `"NIU (Not in universe)"', add
label values kh08a_bike kh08a_bike_lbl

label define kh08a_motobike_lbl 00 `"0"'
label define kh08a_motobike_lbl 01 `"1"', add
label define kh08a_motobike_lbl 02 `"2"', add
label define kh08a_motobike_lbl 03 `"3"', add
label define kh08a_motobike_lbl 04 `"4"', add
label define kh08a_motobike_lbl 05 `"5"', add
label define kh08a_motobike_lbl 06 `"6"', add
label define kh08a_motobike_lbl 07 `"7"', add
label define kh08a_motobike_lbl 08 `"8"', add
label define kh08a_motobike_lbl 09 `"9"', add
label define kh08a_motobike_lbl 10 `"10+"', add
label define kh08a_motobike_lbl 99 `"NIU (Not in universe)"', add
label values kh08a_motobike kh08a_motobike_lbl

label define kh08a_auto_lbl 00 `"0"'
label define kh08a_auto_lbl 01 `"1"', add
label define kh08a_auto_lbl 02 `"2"', add
label define kh08a_auto_lbl 03 `"3"', add
label define kh08a_auto_lbl 04 `"4"', add
label define kh08a_auto_lbl 05 `"5"', add
label define kh08a_auto_lbl 06 `"6"', add
label define kh08a_auto_lbl 07 `"7"', add
label define kh08a_auto_lbl 08 `"8"', add
label define kh08a_auto_lbl 09 `"9"', add
label define kh08a_auto_lbl 10 `"10+"', add
label define kh08a_auto_lbl 99 `"NIU (Not in universe)"', add
label values kh08a_auto kh08a_auto_lbl

label define kh08a_boat_lbl 00 `"0"'
label define kh08a_boat_lbl 01 `"1"', add
label define kh08a_boat_lbl 02 `"2"', add
label define kh08a_boat_lbl 03 `"3"', add
label define kh08a_boat_lbl 04 `"4"', add
label define kh08a_boat_lbl 05 `"5"', add
label define kh08a_boat_lbl 06 `"6"', add
label define kh08a_boat_lbl 07 `"7"', add
label define kh08a_boat_lbl 08 `"8"', add
label define kh08a_boat_lbl 09 `"9"', add
label define kh08a_boat_lbl 10 `"10+"', add
label define kh08a_boat_lbl 99 `"NIU (Not in universe)"', add
label values kh08a_boat kh08a_boat_lbl

label define kh08a_tractor_lbl 00 `"0"'
label define kh08a_tractor_lbl 01 `"1"', add
label define kh08a_tractor_lbl 02 `"2"', add
label define kh08a_tractor_lbl 03 `"3"', add
label define kh08a_tractor_lbl 04 `"4"', add
label define kh08a_tractor_lbl 05 `"5"', add
label define kh08a_tractor_lbl 06 `"6"', add
label define kh08a_tractor_lbl 10 `"10+"', add
label define kh08a_tractor_lbl 99 `"NIU (Not in universe)"', add
label values kh08a_tractor kh08a_tractor_lbl

label define kh08a_handtrac_lbl 00 `"0"'
label define kh08a_handtrac_lbl 01 `"1"', add
label define kh08a_handtrac_lbl 02 `"2"', add
label define kh08a_handtrac_lbl 03 `"3"', add
label define kh08a_handtrac_lbl 04 `"4"', add
label define kh08a_handtrac_lbl 06 `"6"', add
label define kh08a_handtrac_lbl 08 `"8"', add
label define kh08a_handtrac_lbl 10 `"10+"', add
label define kh08a_handtrac_lbl 99 `"NIU (Not in universe)"', add
label values kh08a_handtrac kh08a_handtrac_lbl

label define kh08a_nethome_lbl 1 `"Yes"'
label define kh08a_nethome_lbl 2 `"No"', add
label define kh08a_nethome_lbl 9 `"NIU (Not in universe)"', add
label values kh08a_nethome kh08a_nethome_lbl

label define kh08a_netaway_lbl 1 `"Yes"'
label define kh08a_netaway_lbl 2 `"No"', add
label define kh08a_netaway_lbl 9 `"NIU (Not in universe)"', add
label values kh08a_netaway kh08a_netaway_lbl

label define kh08a_deaths_lbl 0 `"0"'
label define kh08a_deaths_lbl 1 `"1"', add
label define kh08a_deaths_lbl 2 `"2"', add
label define kh08a_deaths_lbl 3 `"3"', add
label define kh08a_deaths_lbl 4 `"4"', add
label define kh08a_deaths_lbl 5 `"5"', add
label define kh08a_deaths_lbl 6 `"6"', add
label define kh08a_deaths_lbl 7 `"7"', add
label define kh08a_deaths_lbl 9 `"NIU (Not in universe)"', add
label values kh08a_deaths kh08a_deaths_lbl

label define kh08a_pernum_lbl 00 `"Household record"'
label define kh08a_pernum_lbl 01 `"1"', add
label define kh08a_pernum_lbl 02 `"2"', add
label define kh08a_pernum_lbl 03 `"3"', add
label define kh08a_pernum_lbl 04 `"4"', add
label define kh08a_pernum_lbl 05 `"5"', add
label define kh08a_pernum_lbl 06 `"6"', add
label define kh08a_pernum_lbl 07 `"7"', add
label define kh08a_pernum_lbl 08 `"8"', add
label define kh08a_pernum_lbl 09 `"9"', add
label define kh08a_pernum_lbl 10 `"10"', add
label define kh08a_pernum_lbl 11 `"11"', add
label define kh08a_pernum_lbl 12 `"12"', add
label define kh08a_pernum_lbl 13 `"13"', add
label define kh08a_pernum_lbl 14 `"14"', add
label define kh08a_pernum_lbl 15 `"15"', add
label define kh08a_pernum_lbl 16 `"16"', add
label define kh08a_pernum_lbl 17 `"17"', add
label define kh08a_pernum_lbl 18 `"18"', add
label define kh08a_pernum_lbl 19 `"19"', add
label define kh08a_pernum_lbl 20 `"20"', add
label define kh08a_pernum_lbl 21 `"21"', add
label define kh08a_pernum_lbl 22 `"22"', add
label define kh08a_pernum_lbl 23 `"23"', add
label define kh08a_pernum_lbl 24 `"24"', add
label define kh08a_pernum_lbl 25 `"25"', add
label define kh08a_pernum_lbl 26 `"26"', add
label define kh08a_pernum_lbl 27 `"27"', add
label define kh08a_pernum_lbl 28 `"28"', add
label define kh08a_pernum_lbl 29 `"29"', add
label define kh08a_pernum_lbl 30 `"30"', add
label values kh08a_pernum kh08a_pernum_lbl

label define kh08a_relate_lbl 1 `"Head"'
label define kh08a_relate_lbl 2 `"Wife/husband"', add
label define kh08a_relate_lbl 3 `"Son/daughter"', add
label define kh08a_relate_lbl 4 `"Father/mother"', add
label define kh08a_relate_lbl 5 `"Grand child"', add
label define kh08a_relate_lbl 6 `"Other relative"', add
label define kh08a_relate_lbl 7 `"Non relative"', add
label values kh08a_relate kh08a_relate_lbl

label define kh08a_sex_lbl 1 `"Male"'
label define kh08a_sex_lbl 2 `"Female"', add
label values kh08a_sex kh08a_sex_lbl

label define kh08a_age_lbl 00 `"0"'
label define kh08a_age_lbl 01 `"1"', add
label define kh08a_age_lbl 02 `"2"', add
label define kh08a_age_lbl 03 `"3"', add
label define kh08a_age_lbl 04 `"4"', add
label define kh08a_age_lbl 05 `"5"', add
label define kh08a_age_lbl 06 `"6"', add
label define kh08a_age_lbl 07 `"7"', add
label define kh08a_age_lbl 08 `"8"', add
label define kh08a_age_lbl 09 `"9"', add
label define kh08a_age_lbl 10 `"10"', add
label define kh08a_age_lbl 11 `"11"', add
label define kh08a_age_lbl 12 `"12"', add
label define kh08a_age_lbl 13 `"13"', add
label define kh08a_age_lbl 14 `"14"', add
label define kh08a_age_lbl 15 `"15"', add
label define kh08a_age_lbl 16 `"16"', add
label define kh08a_age_lbl 17 `"17"', add
label define kh08a_age_lbl 18 `"18"', add
label define kh08a_age_lbl 19 `"19"', add
label define kh08a_age_lbl 20 `"20"', add
label define kh08a_age_lbl 21 `"21"', add
label define kh08a_age_lbl 22 `"22"', add
label define kh08a_age_lbl 23 `"23"', add
label define kh08a_age_lbl 24 `"24"', add
label define kh08a_age_lbl 25 `"25"', add
label define kh08a_age_lbl 26 `"26"', add
label define kh08a_age_lbl 27 `"27"', add
label define kh08a_age_lbl 28 `"28"', add
label define kh08a_age_lbl 29 `"29"', add
label define kh08a_age_lbl 30 `"30"', add
label define kh08a_age_lbl 31 `"31"', add
label define kh08a_age_lbl 32 `"32"', add
label define kh08a_age_lbl 33 `"33"', add
label define kh08a_age_lbl 34 `"34"', add
label define kh08a_age_lbl 35 `"35"', add
label define kh08a_age_lbl 36 `"36"', add
label define kh08a_age_lbl 37 `"37"', add
label define kh08a_age_lbl 38 `"38"', add
label define kh08a_age_lbl 39 `"39"', add
label define kh08a_age_lbl 40 `"40"', add
label define kh08a_age_lbl 41 `"41"', add
label define kh08a_age_lbl 42 `"42"', add
label define kh08a_age_lbl 43 `"43"', add
label define kh08a_age_lbl 44 `"44"', add
label define kh08a_age_lbl 45 `"45"', add
label define kh08a_age_lbl 46 `"46"', add
label define kh08a_age_lbl 47 `"47"', add
label define kh08a_age_lbl 48 `"48"', add
label define kh08a_age_lbl 49 `"49"', add
label define kh08a_age_lbl 50 `"50"', add
label define kh08a_age_lbl 51 `"51"', add
label define kh08a_age_lbl 52 `"52"', add
label define kh08a_age_lbl 53 `"53"', add
label define kh08a_age_lbl 54 `"54"', add
label define kh08a_age_lbl 55 `"55"', add
label define kh08a_age_lbl 56 `"56"', add
label define kh08a_age_lbl 57 `"57"', add
label define kh08a_age_lbl 58 `"58"', add
label define kh08a_age_lbl 59 `"59"', add
label define kh08a_age_lbl 60 `"60"', add
label define kh08a_age_lbl 61 `"61"', add
label define kh08a_age_lbl 62 `"62"', add
label define kh08a_age_lbl 63 `"63"', add
label define kh08a_age_lbl 64 `"64"', add
label define kh08a_age_lbl 65 `"65"', add
label define kh08a_age_lbl 66 `"66"', add
label define kh08a_age_lbl 67 `"67"', add
label define kh08a_age_lbl 68 `"68"', add
label define kh08a_age_lbl 69 `"69"', add
label define kh08a_age_lbl 70 `"70"', add
label define kh08a_age_lbl 71 `"71"', add
label define kh08a_age_lbl 72 `"72"', add
label define kh08a_age_lbl 73 `"73"', add
label define kh08a_age_lbl 74 `"74"', add
label define kh08a_age_lbl 75 `"75"', add
label define kh08a_age_lbl 76 `"76"', add
label define kh08a_age_lbl 77 `"77"', add
label define kh08a_age_lbl 78 `"78"', add
label define kh08a_age_lbl 79 `"79"', add
label define kh08a_age_lbl 80 `"80"', add
label define kh08a_age_lbl 81 `"81"', add
label define kh08a_age_lbl 82 `"82"', add
label define kh08a_age_lbl 83 `"83"', add
label define kh08a_age_lbl 84 `"84"', add
label define kh08a_age_lbl 85 `"85"', add
label define kh08a_age_lbl 86 `"86"', add
label define kh08a_age_lbl 87 `"87"', add
label define kh08a_age_lbl 88 `"88"', add
label define kh08a_age_lbl 89 `"89"', add
label define kh08a_age_lbl 90 `"90"', add
label define kh08a_age_lbl 91 `"91"', add
label define kh08a_age_lbl 92 `"92"', add
label define kh08a_age_lbl 93 `"93"', add
label define kh08a_age_lbl 94 `"94"', add
label define kh08a_age_lbl 95 `"95"', add
label define kh08a_age_lbl 96 `"96"', add
label define kh08a_age_lbl 97 `"97"', add
label define kh08a_age_lbl 98 `"98 years and over"', add
label values kh08a_age kh08a_age_lbl

label define kh08a_marst_lbl 1 `"Never married"'
label define kh08a_marst_lbl 2 `"Married"', add
label define kh08a_marst_lbl 3 `"Widowed"', add
label define kh08a_marst_lbl 4 `"Divorced"', add
label define kh08a_marst_lbl 5 `"Separated"', add
label values kh08a_marst kh08a_marst_lbl

label define kh08a_mtongue_lbl 01 `"Khmer"'
label define kh08a_mtongue_lbl 02 `"Vietnamese"', add
label define kh08a_mtongue_lbl 03 `"Chinese"', add
label define kh08a_mtongue_lbl 04 `"Lao"', add
label define kh08a_mtongue_lbl 05 `"Thai"', add
label define kh08a_mtongue_lbl 06 `"French"', add
label define kh08a_mtongue_lbl 07 `"English"', add
label define kh08a_mtongue_lbl 08 `"Korean"', add
label define kh08a_mtongue_lbl 09 `"Japanese"', add
label define kh08a_mtongue_lbl 10 `"Chaaraay"', add
label define kh08a_mtongue_lbl 11 `"Chaam"', add
label define kh08a_mtongue_lbl 12 `"Kaaveat"', add
label define kh08a_mtongue_lbl 13 `"Klueng"', add
label define kh08a_mtongue_lbl 14 `"Kuoy"', add
label define kh08a_mtongue_lbl 15 `"Krueng"', add
label define kh08a_mtongue_lbl 16 `"Lon"', add
label define kh08a_mtongue_lbl 17 `"Phnong"', add
label define kh08a_mtongue_lbl 18 `"Proav"', add
label define kh08a_mtongue_lbl 19 `"Tumpoon"', add
label define kh08a_mtongue_lbl 20 `"Stieng"', add
label define kh08a_mtongue_lbl 21 `"Ro ong"', add
label define kh08a_mtongue_lbl 22 `"Kraol"', add
label define kh08a_mtongue_lbl 23 `"Raadear"', add
label define kh08a_mtongue_lbl 24 `"Thmoon"', add
label define kh08a_mtongue_lbl 25 `"Mel"', add
label define kh08a_mtongue_lbl 26 `"Khogn"', add
label define kh08a_mtongue_lbl 27 `"Por"', add
label define kh08a_mtongue_lbl 28 `"Suoy"', add
label define kh08a_mtongue_lbl 30 `"S'ouch"', add
label define kh08a_mtongue_lbl 31 `"Kchruk"', add
label define kh08a_mtongue_lbl 32 `"Mon"', add
label define kh08a_mtongue_lbl 33 `"Kchak"', add
label define kh08a_mtongue_lbl 29 `"Others"', add
label values kh08a_mtongue kh08a_mtongue_lbl

label define kh08a_relig_lbl 1 `"Buddhism"'
label define kh08a_relig_lbl 2 `"Islam"', add
label define kh08a_relig_lbl 3 `"Christianity"', add
label define kh08a_relig_lbl 4 `"Other"', add
label values kh08a_relig kh08a_relig_lbl

label define kh08a_bplprov_lbl 00 `"Same province as current residence"'
label define kh08a_bplprov_lbl 01 `"Banteay Meanchey"', add
label define kh08a_bplprov_lbl 02 `"Battambang"', add
label define kh08a_bplprov_lbl 03 `"Kampong Cham"', add
label define kh08a_bplprov_lbl 04 `"Kampong Chhnang"', add
label define kh08a_bplprov_lbl 05 `"Kampong Speu"', add
label define kh08a_bplprov_lbl 06 `"Kampong Thom"', add
label define kh08a_bplprov_lbl 07 `"Kampot"', add
label define kh08a_bplprov_lbl 08 `"Kandal"', add
label define kh08a_bplprov_lbl 09 `"Koh Kong"', add
label define kh08a_bplprov_lbl 10 `"Kratie"', add
label define kh08a_bplprov_lbl 11 `"Mondul Kiri"', add
label define kh08a_bplprov_lbl 12 `"Phnom Penh"', add
label define kh08a_bplprov_lbl 13 `"Preah Vihear"', add
label define kh08a_bplprov_lbl 14 `"Prey Veng"', add
label define kh08a_bplprov_lbl 15 `"Pursat"', add
label define kh08a_bplprov_lbl 16 `"Rotanak Kiri"', add
label define kh08a_bplprov_lbl 17 `"Siem Reap"', add
label define kh08a_bplprov_lbl 18 `"Preah Sihanouk"', add
label define kh08a_bplprov_lbl 19 `"Stung Treng"', add
label define kh08a_bplprov_lbl 20 `"Svay Rieng"', add
label define kh08a_bplprov_lbl 21 `"Takeo"', add
label define kh08a_bplprov_lbl 22 `"Otdar Meanchey"', add
label define kh08a_bplprov_lbl 23 `"Kep"', add
label define kh08a_bplprov_lbl 24 `"Pailin"', add
label define kh08a_bplprov_lbl 93 `"Countries in Asia"', add
label define kh08a_bplprov_lbl 94 `"Countries in Australia and Oceania"', add
label define kh08a_bplprov_lbl 95 `"Countries in Europe"', add
label define kh08a_bplprov_lbl 96 `"Countries in America"', add
label define kh08a_bplprov_lbl 97 `"Countries in Africa"', add
label define kh08a_bplprov_lbl 98 `"Countries not classified or not stated"', add
label define kh08a_bplprov_lbl 99 `"Unknown"', add
label values kh08a_bplprov kh08a_bplprov_lbl

label define kh08a_bpldist_lbl 0000 `"Same village as current residence"'
label define kh08a_bpldist_lbl 0102 `"Mongkol Borei"', add
label define kh08a_bpldist_lbl 0103 `"Phnum Srok"', add
label define kh08a_bpldist_lbl 0104 `"Preah Netr Preah"', add
label define kh08a_bpldist_lbl 0105 `"Ou Chrov"', add
label define kh08a_bpldist_lbl 0106 `"Serei Saophoan"', add
label define kh08a_bpldist_lbl 0107 `"Thma Puok"', add
label define kh08a_bpldist_lbl 0108 `"Svay Chek"', add
label define kh08a_bpldist_lbl 0109 `"Malai"', add
label define kh08a_bpldist_lbl 0201 `"Banan"', add
label define kh08a_bpldist_lbl 0202 `"Bat Dambang"', add
label define kh08a_bpldist_lbl 0203 `"Svay Pao"', add
label define kh08a_bpldist_lbl 0204 `"Bavel"', add
label define kh08a_bpldist_lbl 0205 `"Aek Phnum"', add
label define kh08a_bpldist_lbl 0206 `"Moung Ruessei"', add
label define kh08a_bpldist_lbl 0207 `"Rotonak Mondol"', add
label define kh08a_bpldist_lbl 0208 `"Sangkae"', add
label define kh08a_bpldist_lbl 0209 `"Samlout"', add
label define kh08a_bpldist_lbl 0210 `"Sampov Lun"', add
label define kh08a_bpldist_lbl 0211 `"Phnom Proek"', add
label define kh08a_bpldist_lbl 0212 `"Kamrieng"', add
label define kh08a_bpldist_lbl 0213 `"Koah Krala"', add
label define kh08a_bpldist_lbl 0301 `"Batheay"', add
label define kh08a_bpldist_lbl 0302 `"Chamkar Leu"', add
label define kh08a_bpldist_lbl 0303 `"Cheung Prey"', add
label define kh08a_bpldist_lbl 0304 `"Dambae"', add
label define kh08a_bpldist_lbl 0305 `"Kampong Cham"', add
label define kh08a_bpldist_lbl 0306 `"Kampong Siem"', add
label define kh08a_bpldist_lbl 0307 `"Kang Meas"', add
label define kh08a_bpldist_lbl 0308 `"Kaoh Soutin"', add
label define kh08a_bpldist_lbl 0309 `"Krouch Chhmar"', add
label define kh08a_bpldist_lbl 0310 `"Memot"', add
label define kh08a_bpldist_lbl 0311 `"Ou Reang Ov"', add
label define kh08a_bpldist_lbl 0312 `"Ponhea Kraek"', add
label define kh08a_bpldist_lbl 0313 `"Prey Chhor"', add
label define kh08a_bpldist_lbl 0314 `"Srei Santhor"', add
label define kh08a_bpldist_lbl 0315 `"Stueng Trang"', add
label define kh08a_bpldist_lbl 0316 `"Tboung Khmum"', add
label define kh08a_bpldist_lbl 0401 `"Baribour"', add
label define kh08a_bpldist_lbl 0402 `"Chol Kiri"', add
label define kh08a_bpldist_lbl 0403 `"Kampong Chhnang"', add
label define kh08a_bpldist_lbl 0404 `"Kampong Leaeng"', add
label define kh08a_bpldist_lbl 0405 `"Kampong Tralach"', add
label define kh08a_bpldist_lbl 0406 `"Rolea B'ier"', add
label define kh08a_bpldist_lbl 0407 `"Sameakki Mean Chey"', add
label define kh08a_bpldist_lbl 0408 `"Tuek Phos"', add
label define kh08a_bpldist_lbl 0501 `"Basedth"', add
label define kh08a_bpldist_lbl 0502 `"Chbar Mon"', add
label define kh08a_bpldist_lbl 0503 `"Kong Pisei"', add
label define kh08a_bpldist_lbl 0504 `"Aoral"', add
label define kh08a_bpldist_lbl 0505 `"Odongk"', add
label define kh08a_bpldist_lbl 0506 `"Phnum Sruoch"', add
label define kh08a_bpldist_lbl 0507 `"Samraong Tong"', add
label define kh08a_bpldist_lbl 0508 `"Thpong"', add
label define kh08a_bpldist_lbl 0601 `"Baray"', add
label define kh08a_bpldist_lbl 0602 `"Kampong Svay"', add
label define kh08a_bpldist_lbl 0603 `"Stueng Saen"', add
label define kh08a_bpldist_lbl 0604 `"Prasat Balangk"', add
label define kh08a_bpldist_lbl 0605 `"Prasat Sambour"', add
label define kh08a_bpldist_lbl 0606 `"Sandan"', add
label define kh08a_bpldist_lbl 0607 `"Santuk"', add
label define kh08a_bpldist_lbl 0608 `"Stoung"', add
label define kh08a_bpldist_lbl 0701 `"Angkor Chey"', add
label define kh08a_bpldist_lbl 0702 `"Banteay Meas"', add
label define kh08a_bpldist_lbl 0703 `"Chhuk"', add
label define kh08a_bpldist_lbl 0704 `"Chum Kiri"', add
label define kh08a_bpldist_lbl 0705 `"Dang Tong"', add
label define kh08a_bpldist_lbl 0706 `"Kampong Trach"', add
label define kh08a_bpldist_lbl 0707 `"Kampot"', add
label define kh08a_bpldist_lbl 0708 `"Kampong Bay"', add
label define kh08a_bpldist_lbl 0801 `"Kandal Stueng"', add
label define kh08a_bpldist_lbl 0802 `"Kien Svay"', add
label define kh08a_bpldist_lbl 0803 `"Khsach Kandal"', add
label define kh08a_bpldist_lbl 0804 `"Kaoh Thum"', add
label define kh08a_bpldist_lbl 0805 `"Leuk Daek"', add
label define kh08a_bpldist_lbl 0806 `"Lvea Aem"', add
label define kh08a_bpldist_lbl 0807 `"Mukh Kampul"', add
label define kh08a_bpldist_lbl 0808 `"Angk Snuol"', add
label define kh08a_bpldist_lbl 0809 `"Ponhea Lueu"', add
label define kh08a_bpldist_lbl 0810 `"S'ang"', add
label define kh08a_bpldist_lbl 0811 `"Ta Khmau"', add
label define kh08a_bpldist_lbl 0901 `"Botum Sakor"', add
label define kh08a_bpldist_lbl 0902 `"Kiri Sakor"', add
label define kh08a_bpldist_lbl 0903 `"Kaoh Kong"', add
label define kh08a_bpldist_lbl 0904 `"Smach Mean Chey"', add
label define kh08a_bpldist_lbl 0905 `"Mondol Seima"', add
label define kh08a_bpldist_lbl 0906 `"Srae Ambel"', add
label define kh08a_bpldist_lbl 0907 `"Thma Bang"', add
label define kh08a_bpldist_lbl 0908 `"Kampong Seila"', add
label define kh08a_bpldist_lbl 1001 `"Chhloung"', add
label define kh08a_bpldist_lbl 1002 `"Kracheh"', add
label define kh08a_bpldist_lbl 1003 `"Preaek Prasab"', add
label define kh08a_bpldist_lbl 1004 `"Sambour"', add
label define kh08a_bpldist_lbl 1005 `"Snuol"', add
label define kh08a_bpldist_lbl 1101 `"Kaev Seima"', add
label define kh08a_bpldist_lbl 1102 `"Kaoh Nheaek"', add
label define kh08a_bpldist_lbl 1103 `"Ou Reang"', add
label define kh08a_bpldist_lbl 1104 `"Pech Chenda"', add
label define kh08a_bpldist_lbl 1105 `"Saen Monourom"', add
label define kh08a_bpldist_lbl 1201 `"Chamkar Mon"', add
label define kh08a_bpldist_lbl 1202 `"Doun Penh"', add
label define kh08a_bpldist_lbl 1203 `"Prampir Meakkakra"', add
label define kh08a_bpldist_lbl 1204 `"Tuol Kouk"', add
label define kh08a_bpldist_lbl 1205 `"Dangkao"', add
label define kh08a_bpldist_lbl 1206 `"Mean Chey"', add
label define kh08a_bpldist_lbl 1207 `"Russei Kaev"', add
label define kh08a_bpldist_lbl 1301 `"Chey Saen"', add
label define kh08a_bpldist_lbl 1302 `"Chhaeb"', add
label define kh08a_bpldist_lbl 1303 `"Choam Khsant"', add
label define kh08a_bpldist_lbl 1304 `"Kuleaen"', add
label define kh08a_bpldist_lbl 1305 `"Rovieng"', add
label define kh08a_bpldist_lbl 1306 `"Sangkom Thmei"', add
label define kh08a_bpldist_lbl 1307 `"Tbaeng Mean Chey"', add
label define kh08a_bpldist_lbl 1401 `"Ba Phnum"', add
label define kh08a_bpldist_lbl 1402 `"Kamchay Mear"', add
label define kh08a_bpldist_lbl 1403 `"Kampong Trabaek"', add
label define kh08a_bpldist_lbl 1404 `"Kanhchriech"', add
label define kh08a_bpldist_lbl 1405 `"Me Sang"', add
label define kh08a_bpldist_lbl 1406 `"Peam Chor"', add
label define kh08a_bpldist_lbl 1407 `"Peam Ro"', add
label define kh08a_bpldist_lbl 1408 `"Pea Reang"', add
label define kh08a_bpldist_lbl 1409 `"Preah Sdach"', add
label define kh08a_bpldist_lbl 1410 `"Prey Veaeng"', add
label define kh08a_bpldist_lbl 1411 `"Kampong Leav"', add
label define kh08a_bpldist_lbl 1412 `"Sithor Kandal"', add
label define kh08a_bpldist_lbl 1501 `"Bakan"', add
label define kh08a_bpldist_lbl 1502 `"Kandieng"', add
label define kh08a_bpldist_lbl 1503 `"Krakor"', add
label define kh08a_bpldist_lbl 1504 `"Phnum Kravanh"', add
label define kh08a_bpldist_lbl 1505 `"Sampov Meas"', add
label define kh08a_bpldist_lbl 1506 `"Veal Veaeng"', add
label define kh08a_bpldist_lbl 1601 `"Andoung Meas"', add
label define kh08a_bpldist_lbl 1602 `"Ban Lung"', add
label define kh08a_bpldist_lbl 1603 `"Bar Kaev"', add
label define kh08a_bpldist_lbl 1604 `"Koun Mom"', add
label define kh08a_bpldist_lbl 1605 `"Lumphat"', add
label define kh08a_bpldist_lbl 1606 `"Ou Chum"', add
label define kh08a_bpldist_lbl 1607 `"Ou Ya Dav"', add
label define kh08a_bpldist_lbl 1608 `"Ta Veaeng"', add
label define kh08a_bpldist_lbl 1609 `"Veun Sai"', add
label define kh08a_bpldist_lbl 1701 `"Angkor Chum"', add
label define kh08a_bpldist_lbl 1702 `"Angkor Thum"', add
label define kh08a_bpldist_lbl 1703 `"Banteay Srei"', add
label define kh08a_bpldist_lbl 1704 `"Chi Kraeng"', add
label define kh08a_bpldist_lbl 1706 `"Siemreap"', add
label define kh08a_bpldist_lbl 1707 `"Puok"', add
label define kh08a_bpldist_lbl 1709 `"Siemreap"', add
label define kh08a_bpldist_lbl 1710 `"Siem Reab"', add
label define kh08a_bpldist_lbl 1711 `"Soutr Nikom"', add
label define kh08a_bpldist_lbl 1712 `"Srei Snam"', add
label define kh08a_bpldist_lbl 1713 `"Svay Leu"', add
label define kh08a_bpldist_lbl 1714 `"Varin"', add
label define kh08a_bpldist_lbl 1801 `"Mittakpheap"', add
label define kh08a_bpldist_lbl 1802 `"Prey Nob"', add
label define kh08a_bpldist_lbl 1803 `"Stueng Hav"', add
label define kh08a_bpldist_lbl 1901 `"Sesan"', add
label define kh08a_bpldist_lbl 1902 `"Siem Bouk"', add
label define kh08a_bpldist_lbl 1903 `"Siem Pang"', add
label define kh08a_bpldist_lbl 1904 `"Stueng Traeng"', add
label define kh08a_bpldist_lbl 1905 `"Thala Barivat"', add
label define kh08a_bpldist_lbl 2001 `"Chantrea"', add
label define kh08a_bpldist_lbl 2002 `"Kampong Rou"', add
label define kh08a_bpldist_lbl 2003 `"Rumduol"', add
label define kh08a_bpldist_lbl 2004 `"Romeas Haek"', add
label define kh08a_bpldist_lbl 2005 `"Svay Chrum"', add
label define kh08a_bpldist_lbl 2006 `"Svay Rieng"', add
label define kh08a_bpldist_lbl 2007 `"Svay Teab"', add
label define kh08a_bpldist_lbl 2101 `"Angkor Borei"', add
label define kh08a_bpldist_lbl 2102 `"Bati"', add
label define kh08a_bpldist_lbl 2103 `"Borei Cholsar"', add
label define kh08a_bpldist_lbl 2104 `"Kiri Vong"', add
label define kh08a_bpldist_lbl 2105 `"Kaoh Andaet"', add
label define kh08a_bpldist_lbl 2106 `"Prey Kabbas"', add
label define kh08a_bpldist_lbl 2107 `"Samraong"', add
label define kh08a_bpldist_lbl 2108 `"Doun Kaev"', add
label define kh08a_bpldist_lbl 2109 `"Tram Kak"', add
label define kh08a_bpldist_lbl 2110 `"Treang"', add
label define kh08a_bpldist_lbl 2201 `"Anlong Veaeng"', add
label define kh08a_bpldist_lbl 2202 `"Banteay Ampil"', add
label define kh08a_bpldist_lbl 2203 `"Chong Kal"', add
label define kh08a_bpldist_lbl 2204 `"Samraong"', add
label define kh08a_bpldist_lbl 2205 `"Trapeang Prasat"', add
label define kh08a_bpldist_lbl 2301 `"Damnak Chang'aeur"', add
label define kh08a_bpldist_lbl 2302 `"Kaeb"', add
label define kh08a_bpldist_lbl 2401 `"Pailin"', add
label define kh08a_bpldist_lbl 2402 `"Sala Krau"', add
label define kh08a_bpldist_lbl 9301 `"China"', add
label define kh08a_bpldist_lbl 9302 `"Hong Kong"', add
label define kh08a_bpldist_lbl 9303 `"India"', add
label define kh08a_bpldist_lbl 9304 `"Indonesia"', add
label define kh08a_bpldist_lbl 9305 `"Japan"', add
label define kh08a_bpldist_lbl 9306 `"Korea North"', add
label define kh08a_bpldist_lbl 9307 `"Korea South"', add
label define kh08a_bpldist_lbl 9308 `"Laos"', add
label define kh08a_bpldist_lbl 9309 `"Malaysia"', add
label define kh08a_bpldist_lbl 9310 `"Myanmar"', add
label define kh08a_bpldist_lbl 9311 `"Nepal"', add
label define kh08a_bpldist_lbl 9312 `"Pakistan"', add
label define kh08a_bpldist_lbl 9313 `"Phiippines"', add
label define kh08a_bpldist_lbl 9314 `"Singapore"', add
label define kh08a_bpldist_lbl 9315 `"Sri Lanka"', add
label define kh08a_bpldist_lbl 9316 `"Thailand"', add
label define kh08a_bpldist_lbl 9317 `"Vietnam"', add
label define kh08a_bpldist_lbl 9399 `"Other Asia"', add
label define kh08a_bpldist_lbl 9401 `"Australia"', add
label define kh08a_bpldist_lbl 9402 `"New Zealand"', add
label define kh08a_bpldist_lbl 9499 `"Other Oceania"', add
label define kh08a_bpldist_lbl 9501 `"Belgium"', add
label define kh08a_bpldist_lbl 9502 `"France"', add
label define kh08a_bpldist_lbl 9503 `"Germany"', add
label define kh08a_bpldist_lbl 9504 `"Italy"', add
label define kh08a_bpldist_lbl 9505 `"Netherlands"', add
label define kh08a_bpldist_lbl 9506 `"Former USSR"', add
label define kh08a_bpldist_lbl 9507 `"Sweden"', add
label define kh08a_bpldist_lbl 9508 `"United Kingdom"', add
label define kh08a_bpldist_lbl 9599 `"Other Europe"', add
label define kh08a_bpldist_lbl 9601 `"USA"', add
label define kh08a_bpldist_lbl 9602 `"Canada"', add
label define kh08a_bpldist_lbl 9699 `"Other America"', add
label define kh08a_bpldist_lbl 9701 `"South Africa"', add
label define kh08a_bpldist_lbl 9799 `"Other Africa"', add
label define kh08a_bpldist_lbl 9998 `"Not classified"', add
label define kh08a_bpldist_lbl 9999 `"Unknown"', add
label values kh08a_bpldist kh08a_bpldist_lbl

label define kh08a_prevprov_lbl 00 `"Same village as current residence"'
label define kh08a_prevprov_lbl 01 `"Banteay Meanchey"', add
label define kh08a_prevprov_lbl 02 `"Battambang"', add
label define kh08a_prevprov_lbl 03 `"Kampong Cham"', add
label define kh08a_prevprov_lbl 04 `"Kampong Chhnang"', add
label define kh08a_prevprov_lbl 05 `"Kampong Speu"', add
label define kh08a_prevprov_lbl 06 `"Kampong Thom"', add
label define kh08a_prevprov_lbl 07 `"Kampot"', add
label define kh08a_prevprov_lbl 08 `"Kandal"', add
label define kh08a_prevprov_lbl 09 `"Koh Kong"', add
label define kh08a_prevprov_lbl 10 `"Kratie"', add
label define kh08a_prevprov_lbl 11 `"Mondul Kiri"', add
label define kh08a_prevprov_lbl 12 `"Phnom Penh"', add
label define kh08a_prevprov_lbl 13 `"Preah Vihear"', add
label define kh08a_prevprov_lbl 14 `"Prey Veng"', add
label define kh08a_prevprov_lbl 15 `"Pursat"', add
label define kh08a_prevprov_lbl 16 `"Rotanak Kiri"', add
label define kh08a_prevprov_lbl 17 `"Siem Reap"', add
label define kh08a_prevprov_lbl 18 `"Preah Sihanouk"', add
label define kh08a_prevprov_lbl 19 `"Stung Treng"', add
label define kh08a_prevprov_lbl 20 `"Svay Rieng"', add
label define kh08a_prevprov_lbl 21 `"Takeo"', add
label define kh08a_prevprov_lbl 22 `"Otdar Meanchey"', add
label define kh08a_prevprov_lbl 23 `"Kep"', add
label define kh08a_prevprov_lbl 24 `"Pailin"', add
label define kh08a_prevprov_lbl 93 `"Countries in Asia"', add
label define kh08a_prevprov_lbl 94 `"Countries in Australia and Oceania"', add
label define kh08a_prevprov_lbl 95 `"Countries in Europe"', add
label define kh08a_prevprov_lbl 96 `"Countries in America"', add
label define kh08a_prevprov_lbl 97 `"Countries in Africa"', add
label define kh08a_prevprov_lbl 99 `"Countries not classified or stated"', add
label values kh08a_prevprov kh08a_prevprov_lbl

label define kh08a_prevdist_lbl 0001 `"Same village as current residence"'
label define kh08a_prevdist_lbl 0102 `"Mongkol Borei"', add
label define kh08a_prevdist_lbl 0103 `"Phnum Srok"', add
label define kh08a_prevdist_lbl 0104 `"Preah Netr Preah"', add
label define kh08a_prevdist_lbl 0105 `"Ou Chrov"', add
label define kh08a_prevdist_lbl 0106 `"Serei Saophoan"', add
label define kh08a_prevdist_lbl 0107 `"Thma Puok"', add
label define kh08a_prevdist_lbl 0108 `"Svay Chek"', add
label define kh08a_prevdist_lbl 0109 `"Malai"', add
label define kh08a_prevdist_lbl 0201 `"Banan"', add
label define kh08a_prevdist_lbl 0202 `"Bat Dambang"', add
label define kh08a_prevdist_lbl 0203 `"Svay Pao"', add
label define kh08a_prevdist_lbl 0204 `"Bavel"', add
label define kh08a_prevdist_lbl 0205 `"Aek Phnum"', add
label define kh08a_prevdist_lbl 0206 `"Moung Ruessei"', add
label define kh08a_prevdist_lbl 0207 `"Rotonak Mondol"', add
label define kh08a_prevdist_lbl 0208 `"Sangkae"', add
label define kh08a_prevdist_lbl 0209 `"Samlout"', add
label define kh08a_prevdist_lbl 0210 `"Sampov Lun"', add
label define kh08a_prevdist_lbl 0211 `"Phnom Proek"', add
label define kh08a_prevdist_lbl 0212 `"Kamrieng"', add
label define kh08a_prevdist_lbl 0213 `"Koah Krala"', add
label define kh08a_prevdist_lbl 0301 `"Batheay"', add
label define kh08a_prevdist_lbl 0302 `"Chamkar Leu"', add
label define kh08a_prevdist_lbl 0303 `"Cheung Prey"', add
label define kh08a_prevdist_lbl 0304 `"Dambae"', add
label define kh08a_prevdist_lbl 0305 `"Kampong Cham"', add
label define kh08a_prevdist_lbl 0306 `"Kampong Siem"', add
label define kh08a_prevdist_lbl 0307 `"Kang Meas"', add
label define kh08a_prevdist_lbl 0308 `"Kaoh Soutin"', add
label define kh08a_prevdist_lbl 0309 `"Krouch Chhmar"', add
label define kh08a_prevdist_lbl 0310 `"Memot"', add
label define kh08a_prevdist_lbl 0311 `"Ou Reang Ov"', add
label define kh08a_prevdist_lbl 0312 `"Ponhea Kraek"', add
label define kh08a_prevdist_lbl 0313 `"Prey Chhor"', add
label define kh08a_prevdist_lbl 0314 `"Srei Santhor"', add
label define kh08a_prevdist_lbl 0315 `"Stueng Trang"', add
label define kh08a_prevdist_lbl 0316 `"Tboung Khmum"', add
label define kh08a_prevdist_lbl 0401 `"Baribour"', add
label define kh08a_prevdist_lbl 0402 `"Chol Kiri"', add
label define kh08a_prevdist_lbl 0403 `"Kampong Chhnang"', add
label define kh08a_prevdist_lbl 0404 `"Kampong Leaeng"', add
label define kh08a_prevdist_lbl 0405 `"Kampong Tralach"', add
label define kh08a_prevdist_lbl 0406 `"Rolea B'ier"', add
label define kh08a_prevdist_lbl 0407 `"Sameakki Mean Chey"', add
label define kh08a_prevdist_lbl 0408 `"Tuek Phos"', add
label define kh08a_prevdist_lbl 0501 `"Basedth"', add
label define kh08a_prevdist_lbl 0502 `"Chbar Mon"', add
label define kh08a_prevdist_lbl 0503 `"Kong Pisei"', add
label define kh08a_prevdist_lbl 0504 `"Aoral"', add
label define kh08a_prevdist_lbl 0505 `"Odongk"', add
label define kh08a_prevdist_lbl 0506 `"Phnum Sruoch"', add
label define kh08a_prevdist_lbl 0507 `"Samraong Tong"', add
label define kh08a_prevdist_lbl 0508 `"Thpong"', add
label define kh08a_prevdist_lbl 0601 `"Baray"', add
label define kh08a_prevdist_lbl 0602 `"Kampong Svay"', add
label define kh08a_prevdist_lbl 0603 `"Stueng Saen"', add
label define kh08a_prevdist_lbl 0604 `"Prasat Balangk"', add
label define kh08a_prevdist_lbl 0605 `"Prasat Sambour"', add
label define kh08a_prevdist_lbl 0606 `"Sandan"', add
label define kh08a_prevdist_lbl 0607 `"Santuk"', add
label define kh08a_prevdist_lbl 0608 `"Stoung"', add
label define kh08a_prevdist_lbl 0701 `"Angkor Chey"', add
label define kh08a_prevdist_lbl 0702 `"Banteay Meas"', add
label define kh08a_prevdist_lbl 0703 `"Chhuk"', add
label define kh08a_prevdist_lbl 0704 `"Chum Kiri"', add
label define kh08a_prevdist_lbl 0705 `"Dang Tong"', add
label define kh08a_prevdist_lbl 0706 `"Kampong Trach"', add
label define kh08a_prevdist_lbl 0707 `"Kampot"', add
label define kh08a_prevdist_lbl 0708 `"Kampong Bay"', add
label define kh08a_prevdist_lbl 0801 `"Kandal Stueng"', add
label define kh08a_prevdist_lbl 0802 `"Kien Svay"', add
label define kh08a_prevdist_lbl 0803 `"Khsach Kandal"', add
label define kh08a_prevdist_lbl 0804 `"Kaoh Thum"', add
label define kh08a_prevdist_lbl 0805 `"Leuk Daek"', add
label define kh08a_prevdist_lbl 0806 `"Lvea Aem"', add
label define kh08a_prevdist_lbl 0807 `"Mukh Kampul"', add
label define kh08a_prevdist_lbl 0808 `"Angk Snuol"', add
label define kh08a_prevdist_lbl 0809 `"Ponhea Lueu"', add
label define kh08a_prevdist_lbl 0810 `"S'ang"', add
label define kh08a_prevdist_lbl 0811 `"Ta Khmau"', add
label define kh08a_prevdist_lbl 0901 `"Botum Sakor"', add
label define kh08a_prevdist_lbl 0902 `"Kiri Sakor"', add
label define kh08a_prevdist_lbl 0903 `"Kaoh Kong"', add
label define kh08a_prevdist_lbl 0904 `"Smach Mean Chey"', add
label define kh08a_prevdist_lbl 0905 `"Mondol Seima"', add
label define kh08a_prevdist_lbl 0906 `"Srae Ambel"', add
label define kh08a_prevdist_lbl 0907 `"Thma Bang"', add
label define kh08a_prevdist_lbl 0908 `"Kampong Seila"', add
label define kh08a_prevdist_lbl 1001 `"Chhloung"', add
label define kh08a_prevdist_lbl 1002 `"Kracheh"', add
label define kh08a_prevdist_lbl 1003 `"Preaek Prasab"', add
label define kh08a_prevdist_lbl 1004 `"Sambour"', add
label define kh08a_prevdist_lbl 1005 `"Snuol"', add
label define kh08a_prevdist_lbl 1101 `"Kaev Seima"', add
label define kh08a_prevdist_lbl 1102 `"Kaoh Nheaek"', add
label define kh08a_prevdist_lbl 1103 `"Ou Reang"', add
label define kh08a_prevdist_lbl 1104 `"Pech Chenda"', add
label define kh08a_prevdist_lbl 1105 `"Saen Monourom"', add
label define kh08a_prevdist_lbl 1201 `"Chamkar Mon"', add
label define kh08a_prevdist_lbl 1202 `"Doun Penh"', add
label define kh08a_prevdist_lbl 1203 `"Prampir Meakkakra"', add
label define kh08a_prevdist_lbl 1204 `"Tuol Kouk"', add
label define kh08a_prevdist_lbl 1205 `"Dangkao"', add
label define kh08a_prevdist_lbl 1206 `"Mean Chey"', add
label define kh08a_prevdist_lbl 1207 `"Russei Kaev"', add
label define kh08a_prevdist_lbl 1301 `"Chey Saen"', add
label define kh08a_prevdist_lbl 1302 `"Chhaeb"', add
label define kh08a_prevdist_lbl 1303 `"Choam Khsant"', add
label define kh08a_prevdist_lbl 1304 `"Kuleaen"', add
label define kh08a_prevdist_lbl 1305 `"Rovieng"', add
label define kh08a_prevdist_lbl 1306 `"Sangkom Thmei"', add
label define kh08a_prevdist_lbl 1307 `"Tbaeng Mean Chey"', add
label define kh08a_prevdist_lbl 1401 `"Ba Phnum"', add
label define kh08a_prevdist_lbl 1402 `"Kamchay Mear"', add
label define kh08a_prevdist_lbl 1403 `"Kampong Trabaek"', add
label define kh08a_prevdist_lbl 1404 `"Kanhchriech"', add
label define kh08a_prevdist_lbl 1405 `"Me Sang"', add
label define kh08a_prevdist_lbl 1406 `"Peam Chor"', add
label define kh08a_prevdist_lbl 1407 `"Peam Ro"', add
label define kh08a_prevdist_lbl 1408 `"Pea Reang"', add
label define kh08a_prevdist_lbl 1409 `"Preah Sdach"', add
label define kh08a_prevdist_lbl 1410 `"Prey Veaeng"', add
label define kh08a_prevdist_lbl 1411 `"Kampong Leav"', add
label define kh08a_prevdist_lbl 1412 `"Sithor Kandal"', add
label define kh08a_prevdist_lbl 1501 `"Bakan"', add
label define kh08a_prevdist_lbl 1502 `"Kandieng"', add
label define kh08a_prevdist_lbl 1503 `"Krakor"', add
label define kh08a_prevdist_lbl 1504 `"Phnum Kravanh"', add
label define kh08a_prevdist_lbl 1505 `"Sampov Meas"', add
label define kh08a_prevdist_lbl 1506 `"Veal Veaeng"', add
label define kh08a_prevdist_lbl 1601 `"Andoung Meas"', add
label define kh08a_prevdist_lbl 1602 `"Ban Lung"', add
label define kh08a_prevdist_lbl 1603 `"Bar Kaev"', add
label define kh08a_prevdist_lbl 1604 `"Koun Mom"', add
label define kh08a_prevdist_lbl 1605 `"Lumphat"', add
label define kh08a_prevdist_lbl 1606 `"Ou Chum"', add
label define kh08a_prevdist_lbl 1607 `"Ou Ya Dav"', add
label define kh08a_prevdist_lbl 1608 `"Ta Veaeng"', add
label define kh08a_prevdist_lbl 1609 `"Veun Sai"', add
label define kh08a_prevdist_lbl 1701 `"Angkor Chum"', add
label define kh08a_prevdist_lbl 1702 `"Angkor Thum"', add
label define kh08a_prevdist_lbl 1703 `"Banteay Srei"', add
label define kh08a_prevdist_lbl 1704 `"Chi Kraeng"', add
label define kh08a_prevdist_lbl 1706 `"Siemreap"', add
label define kh08a_prevdist_lbl 1707 `"Puok"', add
label define kh08a_prevdist_lbl 1709 `"Siemreap"', add
label define kh08a_prevdist_lbl 1710 `"Siem Reab"', add
label define kh08a_prevdist_lbl 1711 `"Soutr Nikom"', add
label define kh08a_prevdist_lbl 1712 `"Srei Snam"', add
label define kh08a_prevdist_lbl 1713 `"Svay Leu"', add
label define kh08a_prevdist_lbl 1714 `"Varin"', add
label define kh08a_prevdist_lbl 1801 `"Mittakpheap"', add
label define kh08a_prevdist_lbl 1802 `"Prey Nob"', add
label define kh08a_prevdist_lbl 1803 `"Stueng Hav"', add
label define kh08a_prevdist_lbl 1901 `"Sesan"', add
label define kh08a_prevdist_lbl 1902 `"Siem Bouk"', add
label define kh08a_prevdist_lbl 1903 `"Siem Pang"', add
label define kh08a_prevdist_lbl 1904 `"Stueng Traeng"', add
label define kh08a_prevdist_lbl 1905 `"Thala Barivat"', add
label define kh08a_prevdist_lbl 2001 `"Chantrea"', add
label define kh08a_prevdist_lbl 2002 `"Kampong Rou"', add
label define kh08a_prevdist_lbl 2003 `"Rumduol"', add
label define kh08a_prevdist_lbl 2004 `"Romeas Haek"', add
label define kh08a_prevdist_lbl 2005 `"Svay Chrum"', add
label define kh08a_prevdist_lbl 2006 `"Svay Rieng"', add
label define kh08a_prevdist_lbl 2007 `"Svay Teab"', add
label define kh08a_prevdist_lbl 2101 `"Angkor Borei"', add
label define kh08a_prevdist_lbl 2102 `"Bati"', add
label define kh08a_prevdist_lbl 2103 `"Borei Cholsar"', add
label define kh08a_prevdist_lbl 2104 `"Kiri Vong"', add
label define kh08a_prevdist_lbl 2105 `"Kaoh Andaet"', add
label define kh08a_prevdist_lbl 2106 `"Prey Kabbas"', add
label define kh08a_prevdist_lbl 2107 `"Samraong"', add
label define kh08a_prevdist_lbl 2108 `"Doun Kaev"', add
label define kh08a_prevdist_lbl 2109 `"Tram Kak"', add
label define kh08a_prevdist_lbl 2110 `"Treang"', add
label define kh08a_prevdist_lbl 2201 `"Anlong Veaeng"', add
label define kh08a_prevdist_lbl 2202 `"Banteay Ampil"', add
label define kh08a_prevdist_lbl 2203 `"Chong Kal"', add
label define kh08a_prevdist_lbl 2204 `"Samraong"', add
label define kh08a_prevdist_lbl 2205 `"Trapeang Prasat"', add
label define kh08a_prevdist_lbl 2301 `"Damnak Chang'aeur"', add
label define kh08a_prevdist_lbl 2302 `"Kaeb"', add
label define kh08a_prevdist_lbl 2401 `"Pailin"', add
label define kh08a_prevdist_lbl 2402 `"Sala Krau"', add
label define kh08a_prevdist_lbl 9301 `"China"', add
label define kh08a_prevdist_lbl 9302 `"Hong Kong"', add
label define kh08a_prevdist_lbl 9303 `"India"', add
label define kh08a_prevdist_lbl 9304 `"Indonesia"', add
label define kh08a_prevdist_lbl 9305 `"Japan"', add
label define kh08a_prevdist_lbl 9306 `"Korea North"', add
label define kh08a_prevdist_lbl 9307 `"Korea South"', add
label define kh08a_prevdist_lbl 9308 `"Laos"', add
label define kh08a_prevdist_lbl 9309 `"Malaysia"', add
label define kh08a_prevdist_lbl 9310 `"Myanmar"', add
label define kh08a_prevdist_lbl 9311 `"Nepal"', add
label define kh08a_prevdist_lbl 9312 `"Pakistan"', add
label define kh08a_prevdist_lbl 9313 `"Phiippines"', add
label define kh08a_prevdist_lbl 9314 `"Singapore"', add
label define kh08a_prevdist_lbl 9315 `"Sri Lanka"', add
label define kh08a_prevdist_lbl 9316 `"Thailand"', add
label define kh08a_prevdist_lbl 9317 `"Vietnam"', add
label define kh08a_prevdist_lbl 9399 `"Other Asia"', add
label define kh08a_prevdist_lbl 9401 `"Australia"', add
label define kh08a_prevdist_lbl 9402 `"New Zealand"', add
label define kh08a_prevdist_lbl 9499 `"Other Oceania"', add
label define kh08a_prevdist_lbl 9501 `"Belgium"', add
label define kh08a_prevdist_lbl 9502 `"France"', add
label define kh08a_prevdist_lbl 9503 `"Germany"', add
label define kh08a_prevdist_lbl 9504 `"Italy"', add
label define kh08a_prevdist_lbl 9505 `"Netherlands"', add
label define kh08a_prevdist_lbl 9506 `"Former USSR"', add
label define kh08a_prevdist_lbl 9507 `"Sweden"', add
label define kh08a_prevdist_lbl 9508 `"United Kingdom"', add
label define kh08a_prevdist_lbl 9599 `"Other Europe"', add
label define kh08a_prevdist_lbl 9601 `"USA"', add
label define kh08a_prevdist_lbl 9602 `"Canada"', add
label define kh08a_prevdist_lbl 9699 `"Other America"', add
label define kh08a_prevdist_lbl 9701 `"South Africa"', add
label define kh08a_prevdist_lbl 9799 `"Other Africa"', add
label define kh08a_prevdist_lbl 9998 `"Unknown"', add
label values kh08a_prevdist kh08a_prevdist_lbl

label define kh08a_durres_lbl 00 `"Less than 1 year"'
label define kh08a_durres_lbl 01 `"1 year"', add
label define kh08a_durres_lbl 02 `"2 years"', add
label define kh08a_durres_lbl 03 `"3 years"', add
label define kh08a_durres_lbl 04 `"4 years"', add
label define kh08a_durres_lbl 05 `"5 years"', add
label define kh08a_durres_lbl 06 `"6 years"', add
label define kh08a_durres_lbl 07 `"7 years"', add
label define kh08a_durres_lbl 08 `"8 years"', add
label define kh08a_durres_lbl 09 `"9 years"', add
label define kh08a_durres_lbl 10 `"10 years"', add
label define kh08a_durres_lbl 11 `"11 years"', add
label define kh08a_durres_lbl 12 `"12 years"', add
label define kh08a_durres_lbl 13 `"13 years"', add
label define kh08a_durres_lbl 14 `"14 years"', add
label define kh08a_durres_lbl 15 `"15 years"', add
label define kh08a_durres_lbl 16 `"16 years"', add
label define kh08a_durres_lbl 17 `"17 years"', add
label define kh08a_durres_lbl 18 `"18 years"', add
label define kh08a_durres_lbl 19 `"19 years"', add
label define kh08a_durres_lbl 20 `"20 years"', add
label define kh08a_durres_lbl 21 `"21 years"', add
label define kh08a_durres_lbl 22 `"22 years"', add
label define kh08a_durres_lbl 23 `"23 years"', add
label define kh08a_durres_lbl 24 `"24 years"', add
label define kh08a_durres_lbl 25 `"25 years"', add
label define kh08a_durres_lbl 26 `"26 years"', add
label define kh08a_durres_lbl 27 `"27 years"', add
label define kh08a_durres_lbl 28 `"28 years"', add
label define kh08a_durres_lbl 29 `"29 years"', add
label define kh08a_durres_lbl 30 `"30 years"', add
label define kh08a_durres_lbl 31 `"31 years"', add
label define kh08a_durres_lbl 32 `"32 years"', add
label define kh08a_durres_lbl 33 `"33 years"', add
label define kh08a_durres_lbl 34 `"34 years"', add
label define kh08a_durres_lbl 35 `"35 years"', add
label define kh08a_durres_lbl 36 `"36 years"', add
label define kh08a_durres_lbl 37 `"37 years"', add
label define kh08a_durres_lbl 38 `"38 years"', add
label define kh08a_durres_lbl 39 `"39 years"', add
label define kh08a_durres_lbl 40 `"40 years"', add
label define kh08a_durres_lbl 41 `"41 years"', add
label define kh08a_durres_lbl 42 `"42 years"', add
label define kh08a_durres_lbl 43 `"43 years"', add
label define kh08a_durres_lbl 44 `"44 years"', add
label define kh08a_durres_lbl 45 `"45 years"', add
label define kh08a_durres_lbl 46 `"46 years"', add
label define kh08a_durres_lbl 47 `"47 years"', add
label define kh08a_durres_lbl 48 `"48 years"', add
label define kh08a_durres_lbl 49 `"49 years"', add
label define kh08a_durres_lbl 50 `"50 years"', add
label define kh08a_durres_lbl 51 `"51 years"', add
label define kh08a_durres_lbl 52 `"52 years"', add
label define kh08a_durres_lbl 53 `"53 years"', add
label define kh08a_durres_lbl 54 `"54 years"', add
label define kh08a_durres_lbl 55 `"55 years"', add
label define kh08a_durres_lbl 56 `"56 years"', add
label define kh08a_durres_lbl 57 `"57 years"', add
label define kh08a_durres_lbl 58 `"58 years"', add
label define kh08a_durres_lbl 59 `"59 years"', add
label define kh08a_durres_lbl 60 `"60 years"', add
label define kh08a_durres_lbl 61 `"61 years"', add
label define kh08a_durres_lbl 62 `"62 years"', add
label define kh08a_durres_lbl 63 `"63 years"', add
label define kh08a_durres_lbl 64 `"64 years"', add
label define kh08a_durres_lbl 65 `"65 years"', add
label define kh08a_durres_lbl 66 `"66 years"', add
label define kh08a_durres_lbl 67 `"67 years"', add
label define kh08a_durres_lbl 68 `"68 years"', add
label define kh08a_durres_lbl 69 `"69 years"', add
label define kh08a_durres_lbl 70 `"70 years"', add
label define kh08a_durres_lbl 71 `"71 years"', add
label define kh08a_durres_lbl 72 `"72 years"', add
label define kh08a_durres_lbl 73 `"73 years"', add
label define kh08a_durres_lbl 74 `"74 years"', add
label define kh08a_durres_lbl 75 `"75 years"', add
label define kh08a_durres_lbl 76 `"76 years"', add
label define kh08a_durres_lbl 77 `"77 years"', add
label define kh08a_durres_lbl 78 `"78 years"', add
label define kh08a_durres_lbl 80 `"80 years"', add
label define kh08a_durres_lbl 81 `"81 years"', add
label define kh08a_durres_lbl 82 `"82 years"', add
label define kh08a_durres_lbl 85 `"85 years"', add
label define kh08a_durres_lbl 90 `"98 years and over"', add
label define kh08a_durres_lbl 98 `"Unknown"', add
label define kh08a_durres_lbl 99 `"NIU (not in universe)"', add
label values kh08a_durres kh08a_durres_lbl

label define kh08a_migreas_lbl 01 `"Transfer of work place"'
label define kh08a_migreas_lbl 02 `"Search employment"', add
label define kh08a_migreas_lbl 03 `"Education"', add
label define kh08a_migreas_lbl 04 `"Marriage"', add
label define kh08a_migreas_lbl 05 `"Family moved"', add
label define kh08a_migreas_lbl 06 `"Lost land or house"', add
label define kh08a_migreas_lbl 07 `"Natural calamities"', add
label define kh08a_migreas_lbl 08 `"Insecurity"', add
label define kh08a_migreas_lbl 09 `"Repatriation"', add
label define kh08a_migreas_lbl 10 `"Orphaned"', add
label define kh08a_migreas_lbl 11 `"Visiting"', add
label define kh08a_migreas_lbl 12 `"Other"', add
label define kh08a_migreas_lbl 98 `"Unknown"', add
label define kh08a_migreas_lbl 99 `"NIU (not in universe)"', add
label values kh08a_migreas kh08a_migreas_lbl

label define kh08a_litkh_lbl 1 `"Yes"'
label define kh08a_litkh_lbl 2 `"No"', add
label define kh08a_litkh_lbl 9 `"Unknown"', add
label values kh08a_litkh kh08a_litkh_lbl

label define kh08a_litoth_lbl 1 `"No other language"'
label define kh08a_litoth_lbl 2 `"Vietnamese"', add
label define kh08a_litoth_lbl 3 `"Chinese"', add
label define kh08a_litoth_lbl 4 `"Lao"', add
label define kh08a_litoth_lbl 5 `"Thai"', add
label define kh08a_litoth_lbl 6 `"French"', add
label define kh08a_litoth_lbl 7 `"English"', add
label define kh08a_litoth_lbl 8 `"Other"', add
label define kh08a_litoth_lbl 9 `"Unknown"', add
label values kh08a_litoth kh08a_litoth_lbl

label define kh08a_school_lbl 1 `"Never"'
label define kh08a_school_lbl 2 `"Now"', add
label define kh08a_school_lbl 3 `"In the past"', add
label values kh08a_school kh08a_school_lbl

label define kh08a_educ_lbl 00 `"No class completed"'
label define kh08a_educ_lbl 01 `"Class 1"', add
label define kh08a_educ_lbl 02 `"Class 2"', add
label define kh08a_educ_lbl 03 `"Class 3"', add
label define kh08a_educ_lbl 04 `"Class 4"', add
label define kh08a_educ_lbl 05 `"Class 5"', add
label define kh08a_educ_lbl 06 `"Class 6"', add
label define kh08a_educ_lbl 07 `"Class 7"', add
label define kh08a_educ_lbl 08 `"Class 8"', add
label define kh08a_educ_lbl 09 `"Class 9"', add
label define kh08a_educ_lbl 10 `"Class 10"', add
label define kh08a_educ_lbl 11 `"Class 11"', add
label define kh08a_educ_lbl 12 `"Class 12"', add
label define kh08a_educ_lbl 13 `"Lower secondary"', add
label define kh08a_educ_lbl 14 `"Secondary school/baccalaureate holder"', add
label define kh08a_educ_lbl 15 `"Technical/vocational pre-secondary"', add
label define kh08a_educ_lbl 16 `"Technical/vocational post-secondary"', add
label define kh08a_educ_lbl 17 `"Undergraduate"', add
label define kh08a_educ_lbl 18 `"Graduate"', add
label define kh08a_educ_lbl 19 `"Post graduate and above"', add
label define kh08a_educ_lbl 20 `"Other"', add
label define kh08a_educ_lbl 98 `"Unknown"', add
label define kh08a_educ_lbl 99 `"NIU (not in universe)"', add
label values kh08a_educ kh08a_educ_lbl

label define kh08a_disbrth_lbl 0 `"None"'
label define kh08a_disbrth_lbl 1 `"In seeing"', add
label define kh08a_disbrth_lbl 2 `"In speech"', add
label define kh08a_disbrth_lbl 3 `"In hearing"', add
label define kh08a_disbrth_lbl 4 `"In movement"', add
label define kh08a_disbrth_lbl 5 `"Mental"', add
label values kh08a_disbrth kh08a_disbrth_lbl

label define kh08a_disafter_lbl 0 `"None"'
label define kh08a_disafter_lbl 1 `"Sight"', add
label define kh08a_disafter_lbl 2 `"Speech"', add
label define kh08a_disafter_lbl 3 `"Hearing"', add
label define kh08a_disafter_lbl 4 `"Movement"', add
label define kh08a_disafter_lbl 5 `"Mental"', add
label values kh08a_disafter kh08a_disafter_lbl

label define kh08a_empstat_lbl 1 `"Employed"'
label define kh08a_empstat_lbl 2 `"Unemployed"', add
label define kh08a_empstat_lbl 3 `"Never employed"', add
label define kh08a_empstat_lbl 4 `"Home maker"', add
label define kh08a_empstat_lbl 5 `"Student"', add
label define kh08a_empstat_lbl 6 `"Dependent"', add
label define kh08a_empstat_lbl 7 `"Income recipient"', add
label define kh08a_empstat_lbl 8 `"Other"', add
label values kh08a_empstat kh08a_empstat_lbl

label define kh08a_empmo_lbl 00 `"0"'
label define kh08a_empmo_lbl 01 `"1"', add
label define kh08a_empmo_lbl 02 `"2"', add
label define kh08a_empmo_lbl 03 `"3"', add
label define kh08a_empmo_lbl 04 `"4"', add
label define kh08a_empmo_lbl 05 `"5"', add
label define kh08a_empmo_lbl 06 `"6"', add
label define kh08a_empmo_lbl 07 `"7"', add
label define kh08a_empmo_lbl 08 `"8"', add
label define kh08a_empmo_lbl 09 `"9"', add
label define kh08a_empmo_lbl 10 `"10"', add
label define kh08a_empmo_lbl 11 `"11"', add
label define kh08a_empmo_lbl 12 `"12"', add
label define kh08a_empmo_lbl 98 `"Unknown"', add
label define kh08a_empmo_lbl 99 `"NIU (not in universe)"', add
label values kh08a_empmo kh08a_empmo_lbl

label define kh08a_occ_lbl 000 `"NIU (not in universe)"'
label define kh08a_occ_lbl 011 `"Armed forces occupations"', add
label define kh08a_occ_lbl 111 `"Legislators and senior officials"', add
label define kh08a_occ_lbl 112 `"Managing directors and chief executives"', add
label define kh08a_occ_lbl 121 `"Business services and administration managers"', add
label define kh08a_occ_lbl 122 `"Sales, marketing and development managers"', add
label define kh08a_occ_lbl 131 `"Production managers in agriculture, forestry and fisheries"', add
label define kh08a_occ_lbl 132 `"Manufacturing, mining, construction, and distribution managers"', add
label define kh08a_occ_lbl 133 `"Information and communications technology service managers"', add
label define kh08a_occ_lbl 134 `"Professional services managers"', add
label define kh08a_occ_lbl 141 `"Hotel and restaurant managers"', add
label define kh08a_occ_lbl 142 `"Retail and wholesale trade managers"', add
label define kh08a_occ_lbl 143 `"Other services managers"', add
label define kh08a_occ_lbl 211 `"Physical and earth science professionals"', add
label define kh08a_occ_lbl 212 `"Mathematicians, actuaries and statisticians"', add
label define kh08a_occ_lbl 213 `"Life science professionals"', add
label define kh08a_occ_lbl 214 `"Engineering professionals (excluding electrotechnology)"', add
label define kh08a_occ_lbl 215 `"Electrotechnology engineers"', add
label define kh08a_occ_lbl 216 `"Architects, planners, surveyors and designers"', add
label define kh08a_occ_lbl 221 `"Medical doctors"', add
label define kh08a_occ_lbl 222 `"Nursing and midwifery professionals"', add
label define kh08a_occ_lbl 223 `"Traditional and complementary medicine professionals"', add
label define kh08a_occ_lbl 224 `"Paramedical practitioners"', add
label define kh08a_occ_lbl 225 `"Veterinarians"', add
label define kh08a_occ_lbl 226 `"Other health professionals"', add
label define kh08a_occ_lbl 231 `"University and higher education teachers"', add
label define kh08a_occ_lbl 232 `"Vocational education teachers"', add
label define kh08a_occ_lbl 233 `"Secondary education teachers"', add
label define kh08a_occ_lbl 234 `"Primary school and early childhood teachers"', add
label define kh08a_occ_lbl 235 `"Other teaching professionals"', add
label define kh08a_occ_lbl 241 `"Finance professionals"', add
label define kh08a_occ_lbl 242 `"Administration professionals"', add
label define kh08a_occ_lbl 243 `"Sales, marketing and public relations professionals"', add
label define kh08a_occ_lbl 251 `"Software and applications developers and analysts"', add
label define kh08a_occ_lbl 252 `"Database and network professionals"', add
label define kh08a_occ_lbl 261 `"Legal professionals"', add
label define kh08a_occ_lbl 262 `"Librarians, archivists and curators"', add
label define kh08a_occ_lbl 263 `"Social and religious professionals"', add
label define kh08a_occ_lbl 264 `"Authors, journalists and linguists"', add
label define kh08a_occ_lbl 265 `"Creative and performing artists"', add
label define kh08a_occ_lbl 311 `"Physical and engineering science technicians"', add
label define kh08a_occ_lbl 312 `"Mining, manufacturing and construction supervisors"', add
label define kh08a_occ_lbl 313 `"Process control technicians"', add
label define kh08a_occ_lbl 314 `"Life science technicians and related associate professionals"', add
label define kh08a_occ_lbl 315 `"Ship and aircraft controllers and technicians"', add
label define kh08a_occ_lbl 321 `"Medical and pharmaceutical technicians"', add
label define kh08a_occ_lbl 322 `"Nursing and midwifery associate professionals"', add
label define kh08a_occ_lbl 323 `"Traditional and complementary medicine associate professionals"', add
label define kh08a_occ_lbl 324 `"Veterinary technicians and assistants"', add
label define kh08a_occ_lbl 325 `"Other health associate professionals"', add
label define kh08a_occ_lbl 331 `"Financial and mathematical associate professionals"', add
label define kh08a_occ_lbl 332 `"Sales and purchasing agents and brokers"', add
label define kh08a_occ_lbl 333 `"Business services agents"', add
label define kh08a_occ_lbl 334 `"Administrative and specialized secretaries"', add
label define kh08a_occ_lbl 335 `"Regulatory government associate professionals"', add
label define kh08a_occ_lbl 341 `"Legal, social and religious associate professionals"', add
label define kh08a_occ_lbl 342 `"Sports and fitness workers"', add
label define kh08a_occ_lbl 343 `"Artistic, cultural and culinary associate professionals"', add
label define kh08a_occ_lbl 351 `"Information and communications technology operations and user support technicians"', add
label define kh08a_occ_lbl 352 `"Telecommunications and broadcasting technicians"', add
label define kh08a_occ_lbl 411 `"General office clerks"', add
label define kh08a_occ_lbl 412 `"Secretaries (general)"', add
label define kh08a_occ_lbl 413 `"Keyboard operators"', add
label define kh08a_occ_lbl 421 `"Tellers, money collectors and related clerks"', add
label define kh08a_occ_lbl 422 `"Client information workers"', add
label define kh08a_occ_lbl 431 `"Numerical clerks"', add
label define kh08a_occ_lbl 432 `"Material-recording and transport clerks"', add
label define kh08a_occ_lbl 441 `"Other clerical support workers"', add
label define kh08a_occ_lbl 511 `"Travel attendants, conductors and guides"', add
label define kh08a_occ_lbl 512 `"Cooks"', add
label define kh08a_occ_lbl 513 `"Waiters and bartenders"', add
label define kh08a_occ_lbl 514 `"Hairdressers, beauticians and related workers"', add
label define kh08a_occ_lbl 515 `"Building and housekeeping supervisors"', add
label define kh08a_occ_lbl 516 `"Other personal services workers"', add
label define kh08a_occ_lbl 521 `"Child care workers and teachers' aides"', add
label define kh08a_occ_lbl 522 `"Personal care workers in health services"', add
label define kh08a_occ_lbl 531 `"Protective services workers"', add
label define kh08a_occ_lbl 532 `"Policemen / women"', add
label define kh08a_occ_lbl 541 `"Street market salespersons"', add
label define kh08a_occ_lbl 542 `"Street vegetable and fruit sellers"', add
label define kh08a_occ_lbl 543 `"Street meat sellers"', add
label define kh08a_occ_lbl 544 `"Street fish sellers"', add
label define kh08a_occ_lbl 545 `"Street food snack sellers"', add
label define kh08a_occ_lbl 546 `"Street cool drink and water sellers"', add
label define kh08a_occ_lbl 547 `"Street cigarette sellers and other street food salespersons"', add
label define kh08a_occ_lbl 548 `"Shop salespersons"', add
label define kh08a_occ_lbl 549 `"Cashiers and ticket clerks"', add
label define kh08a_occ_lbl 550 `"Other sales workers"', add
label define kh08a_occ_lbl 611 `"Market gardeners and crop growers"', add
label define kh08a_occ_lbl 612 `"Animal producers"', add
label define kh08a_occ_lbl 613 `"Mixed crop and animal producers"', add
label define kh08a_occ_lbl 621 `"Forestry and related workers"', add
label define kh08a_occ_lbl 622 `"Fishery workers, hunters and trappers"', add
label define kh08a_occ_lbl 631 `"Subsistence crop farmers"', add
label define kh08a_occ_lbl 632 `"Subsistence livestock farmers"', add
label define kh08a_occ_lbl 633 `"Subsistence mixed crop and livestock farmers"', add
label define kh08a_occ_lbl 634 `"Subsistence fishers, hunters, trappers and gatherers"', add
label define kh08a_occ_lbl 711 `"Building frame and related trades workers"', add
label define kh08a_occ_lbl 712 `"Building finishers and related trades workers"', add
label define kh08a_occ_lbl 713 `"Painters, building structure cleaners and related trades workers"', add
label define kh08a_occ_lbl 721 `"Sheet and structural metal workers, moulders and welders, and related workers"', add
label define kh08a_occ_lbl 722 `"Blacksmiths, toolmakers and related trades workers"', add
label define kh08a_occ_lbl 723 `"Machinery mechanics and repairers"', add
label define kh08a_occ_lbl 724 `"Automobile mechanics and fitters"', add
label define kh08a_occ_lbl 725 `"Motocycle mechanics and fitters"', add
label define kh08a_occ_lbl 731 `"Handicraft workers"', add
label define kh08a_occ_lbl 732 `"Potters and related workers"', add
label define kh08a_occ_lbl 733 `"Glass makers"', add
label define kh08a_occ_lbl 734 `"Palm leaf products makers, basketry weavers and related workers"', add
label define kh08a_occ_lbl 735 `"Bamboo products makers"', add
label define kh08a_occ_lbl 736 `"Other wood-related handicraft workers"', add
label define kh08a_occ_lbl 737 `"Rope Makers"', add
label define kh08a_occ_lbl 738 `"Handloom weavers, handicraft workers in textile, leather and related materials"', add
label define kh08a_occ_lbl 739 `"Printing trades workers"', add
label define kh08a_occ_lbl 741 `"Electrical equipment installers and repairers"', add
label define kh08a_occ_lbl 742 `"Electronics and telecommunications installers and repairers"', add
label define kh08a_occ_lbl 751 `"Food processing and related trades workers"', add
label define kh08a_occ_lbl 752 `"Cigarette rollers and tobacco product makers"', add
label define kh08a_occ_lbl 753 `"Wood treaters, cabinet-makers and related trades workers"', add
label define kh08a_occ_lbl 754 `"Tailors, dress makers, furriers and hatters"', add
label define kh08a_occ_lbl 755 `"Garment and related trades workers"', add
label define kh08a_occ_lbl 756 `"Pelt, leather and related trades workers"', add
label define kh08a_occ_lbl 757 `"Other craft and related workers"', add
label define kh08a_occ_lbl 811 `"Mining and mineral processing plant operators"', add
label define kh08a_occ_lbl 812 `"Metal processing and finishing plant operators"', add
label define kh08a_occ_lbl 813 `"Chemical and photographic products plant and machine operators"', add
label define kh08a_occ_lbl 814 `"Rubber, plastic and paper products machine operators"', add
label define kh08a_occ_lbl 815 `"Textile, fur and leather products machine operators"', add
label define kh08a_occ_lbl 816 `"Food and related products machine operators"', add
label define kh08a_occ_lbl 817 `"Wood processing and papermaking plant operators"', add
label define kh08a_occ_lbl 818 `"Other stationary plant and machine operators"', add
label define kh08a_occ_lbl 821 `"Assemblers"', add
label define kh08a_occ_lbl 831 `"Locomotive engine drivers and related workers"', add
label define kh08a_occ_lbl 832 `"Motodup and tuktuk drivers"', add
label define kh08a_occ_lbl 833 `"Taxi drivers"', add
label define kh08a_occ_lbl 834 `"Other motor-related drivers"', add
label define kh08a_occ_lbl 835 `"Heavy truck and bus drivers"', add
label define kh08a_occ_lbl 836 `"Mobile plant operators"', add
label define kh08a_occ_lbl 837 `"Ships' deck crews and related workers"', add
label define kh08a_occ_lbl 911 `"Domestic cleaners and helpers"', add
label define kh08a_occ_lbl 912 `"Hotel and office cleaners and helpers; Building caretaker"', add
label define kh08a_occ_lbl 913 `"Vehicle cleaners"', add
label define kh08a_occ_lbl 914 `"Laundry workers and pressers"', add
label define kh08a_occ_lbl 915 `"Street cleaners"', add
label define kh08a_occ_lbl 916 `"Window cleaners and other hand cleaning workers"', add
label define kh08a_occ_lbl 921 `"Agricultural, forestry and fishery labourers"', add
label define kh08a_occ_lbl 931 `"Mining and construction labourers"', add
label define kh08a_occ_lbl 932 `"Manufacturing labourers"', add
label define kh08a_occ_lbl 933 `"Transport and storage labourers"', add
label define kh08a_occ_lbl 934 `"Cyclo drivers"', add
label define kh08a_occ_lbl 941 `"Food preparation assistants"', add
label define kh08a_occ_lbl 951 `"Airpump operators and bicycle repairers"', add
label define kh08a_occ_lbl 952 `"Shoe cleaning and other street service elementary occupations"', add
label define kh08a_occ_lbl 953 `"Commercial sex workers"', add
label define kh08a_occ_lbl 954 `"Street petrol sellers"', add
label define kh08a_occ_lbl 955 `"Petty firewood sellers"', add
label define kh08a_occ_lbl 956 `"Other street vendors and related workers"', add
label define kh08a_occ_lbl 961 `"Refuse workers"', add
label define kh08a_occ_lbl 962 `"Rag Picker"', add
label define kh08a_occ_lbl 963 `"Firewood and water collectors"', add
label define kh08a_occ_lbl 964 `"Other elementary workers"', add
label define kh08a_occ_lbl 997 `"Occupation not adequately described"', add
label define kh08a_occ_lbl 998 `"Occupation not stated"', add
label define kh08a_occ_lbl 999 `"Unknown"', add
label values kh08a_occ kh08a_occ_lbl

label define kh08a_classwk_lbl 1 `"Employer"'
label define kh08a_classwk_lbl 2 `"Paid employee"', add
label define kh08a_classwk_lbl 3 `"Own account"', add
label define kh08a_classwk_lbl 4 `"Unpaid family worker"', add
label define kh08a_classwk_lbl 5 `"Other"', add
label define kh08a_classwk_lbl 8 `"Unknown"', add
label define kh08a_classwk_lbl 9 `"NIU (not in universe)"', add
label values kh08a_classwk kh08a_classwk_lbl

label define kh08a_ind_lbl 000 `"NIU (not in universe)"'
label define kh08a_ind_lbl 011 `"Growing of non-perennial crops"', add
label define kh08a_ind_lbl 012 `"Growing of perennial crops"', add
label define kh08a_ind_lbl 013 `"Plant propagation"', add
label define kh08a_ind_lbl 014 `"Animal production"', add
label define kh08a_ind_lbl 015 `"Mixed farming"', add
label define kh08a_ind_lbl 016 `"Support activities to agriculture and post-harvest crop activities"', add
label define kh08a_ind_lbl 017 `"Hunting, trapping and related service activities"', add
label define kh08a_ind_lbl 021 `"Silviculture and other forestry activities"', add
label define kh08a_ind_lbl 022 `"Logging"', add
label define kh08a_ind_lbl 023 `"Gathering of non-wood forest products"', add
label define kh08a_ind_lbl 024 `"Support services to forestry"', add
label define kh08a_ind_lbl 031 `"Fishing"', add
label define kh08a_ind_lbl 032 `"Aquaculture"', add
label define kh08a_ind_lbl 051 `"Mining of hard coal"', add
label define kh08a_ind_lbl 052 `"Mining of lignite"', add
label define kh08a_ind_lbl 061 `"Extraction of crude petroleum"', add
label define kh08a_ind_lbl 062 `"Extraction of natural gas"', add
label define kh08a_ind_lbl 071 `"Mining of iron ores"', add
label define kh08a_ind_lbl 072 `"Mining of non-ferrous metal ores"', add
label define kh08a_ind_lbl 081 `"Quarrying of stone, sand and clay"', add
label define kh08a_ind_lbl 089 `"Mining and quarrying n.e.c.(not elsewhere classified)"', add
label define kh08a_ind_lbl 091 `"Support activities for petroleum and natural gas mining"', add
label define kh08a_ind_lbl 099 `"Support activities for other mining and quarrying"', add
label define kh08a_ind_lbl 101 `"Processing and preserving of meat"', add
label define kh08a_ind_lbl 102 `"Processing and preserving of fish, crustaceans and molluscs"', add
label define kh08a_ind_lbl 103 `"Processing and preserving of fruit and vegetables"', add
label define kh08a_ind_lbl 104 `"Manufacture of vegetable and animal oils and fats"', add
label define kh08a_ind_lbl 105 `"Manufacture of dairy products"', add
label define kh08a_ind_lbl 106 `"Manufacture of grain mill products, starches and starch products"', add
label define kh08a_ind_lbl 107 `"Manufacture of other food products"', add
label define kh08a_ind_lbl 108 `"Manufacture of prepared animal feeds"', add
label define kh08a_ind_lbl 110 `"Manufacture of beverages"', add
label define kh08a_ind_lbl 120 `"Manufacture of tobacco products"', add
label define kh08a_ind_lbl 131 `"Spinning, weaving and finishing of textiles"', add
label define kh08a_ind_lbl 139 `"Manufacture of other textiles"', add
label define kh08a_ind_lbl 141 `"Manufacture of wearing apparel, except fur apparel"', add
label define kh08a_ind_lbl 142 `"Manufacture of articles of fur"', add
label define kh08a_ind_lbl 143 `"Manufacture of knitted and crocheted apparel"', add
label define kh08a_ind_lbl 151 `"Dyeing of fur tanning and dressing of leather; manufacture of luggage, handbags, saddlery and harness; dressing and dyeing of fur"', add
label define kh08a_ind_lbl 152 `"Manufacture of footwear"', add
label define kh08a_ind_lbl 161 `"Sawmilling and planning of wood"', add
label define kh08a_ind_lbl 162 `"Manufacture of products of wood, cork, straw and plaiting materials"', add
label define kh08a_ind_lbl 170 `"Manufacture of paper and paper products"', add
label define kh08a_ind_lbl 181 `"Printing and service activities related to printing"', add
label define kh08a_ind_lbl 182 `"Reproduction of recorded media"', add
label define kh08a_ind_lbl 191 `"Manufacture of coke oven products"', add
label define kh08a_ind_lbl 192 `"Manufacture of refined petroleum products"', add
label define kh08a_ind_lbl 201 `"Forms manufacture of basic chemicals, fertilizer and nitrogen compounds, plastics and synthetic rubber in primary forms"', add
label define kh08a_ind_lbl 202 `"Manufacture of other chemical products"', add
label define kh08a_ind_lbl 203 `"Manufacture of man-made fibres"', add
label define kh08a_ind_lbl 210 `"Manufacture of pharmaceuticals, medicinal chemical and botanical products"', add
label define kh08a_ind_lbl 221 `"Manufacture of rubber products"', add
label define kh08a_ind_lbl 222 `"Manufacture of plastics products"', add
label define kh08a_ind_lbl 231 `"Manufacture of glass and glass products"', add
label define kh08a_ind_lbl 239 `"Manufacture of non-metallic mineral products n.e.c."', add
label define kh08a_ind_lbl 241 `"Manufacture of basic iron and steel"', add
label define kh08a_ind_lbl 242 `"Manufacture of basic precious and other non-ferrous metals"', add
label define kh08a_ind_lbl 243 `"Casting of metals"', add
label define kh08a_ind_lbl 251 `"Manufacture of structural metal products, tanks, reservoirs and steam generators"', add
label define kh08a_ind_lbl 252 `"Manufacture of weapons and ammunition"', add
label define kh08a_ind_lbl 259 `"Manufacture of other fabricated metal products; metalworking service activities"', add
label define kh08a_ind_lbl 261 `"Manufacture of electronic components"', add
label define kh08a_ind_lbl 262 `"Manufacture of computers and peripheral equipment"', add
label define kh08a_ind_lbl 263 `"Manufacture of communication equipment"', add
label define kh08a_ind_lbl 264 `"Manufacture of consumer electronics"', add
label define kh08a_ind_lbl 265 `"Manufacture of measuring, testing, navigating and control equipment; watches and clocks."', add
label define kh08a_ind_lbl 266 `"Manufacture of irradiation, electro medical and electrotherapeutic equipment"', add
label define kh08a_ind_lbl 267 `"Manufacture of optical instruments and equipment"', add
label define kh08a_ind_lbl 268 `"Manufacture of magnetic and optical media"', add
label define kh08a_ind_lbl 271 `"Manufacture of electric motors, generators, transformers and electricity"', add
label define kh08a_ind_lbl 272 `"Manufacture of batteries and accumulators"', add
label define kh08a_ind_lbl 273 `"Manufacture of wiring and wiring devices"', add
label define kh08a_ind_lbl 274 `"Manufacture of electric lighting equipment"', add
label define kh08a_ind_lbl 275 `"Manufacture of domestic appliances"', add
label define kh08a_ind_lbl 279 `"Manufacture of other electrical equipment"', add
label define kh08a_ind_lbl 281 `"Manufacture of general purpose machinery"', add
label define kh08a_ind_lbl 282 `"Manufacture of special-purpose machinery"', add
label define kh08a_ind_lbl 291 `"Manufacture of motor vehicles"', add
label define kh08a_ind_lbl 292 `"Manufacture of bodies (coachwork) for motor vehicles; manufacture of trailers and semi-trailers."', add
label define kh08a_ind_lbl 293 `"Manufacture of parts and accessories for motor vehicles"', add
label define kh08a_ind_lbl 301 `"Building of ships and boats"', add
label define kh08a_ind_lbl 302 `"Manufacture of railway locomotives and rolling stock"', add
label define kh08a_ind_lbl 303 `"Manufacture of air and spacecraft and related machinery"', add
label define kh08a_ind_lbl 304 `"Manufacture of military fighting vehicles"', add
label define kh08a_ind_lbl 309 `"Manufacture of transport equipment n.e.c."', add
label define kh08a_ind_lbl 310 `"Manufacture of furniture"', add
label define kh08a_ind_lbl 321 `"Manufacture of jewellery, bijouterie and related articles"', add
label define kh08a_ind_lbl 322 `"Manufacture of musical instruments"', add
label define kh08a_ind_lbl 323 `"Manufacture of sports goods"', add
label define kh08a_ind_lbl 324 `"Manufacture of games and toys"', add
label define kh08a_ind_lbl 325 `"Manufacture of medical and dental instruments and supplies"', add
label define kh08a_ind_lbl 329 `"Other manufacturing n.e.c."', add
label define kh08a_ind_lbl 331 `"Repair of fabricated metal products, machinery and equipment"', add
label define kh08a_ind_lbl 332 `"Installation of industrial machinery and equipment"', add
label define kh08a_ind_lbl 351 `"Electric power generation, transmission and distribution"', add
label define kh08a_ind_lbl 352 `"Manufacture of gas; distribution of gaseous fuels through mains"', add
label define kh08a_ind_lbl 353 `"Steam and air conditioning supply"', add
label define kh08a_ind_lbl 360 `"Water collection, treatment and supply"', add
label define kh08a_ind_lbl 370 `"Sewerage"', add
label define kh08a_ind_lbl 381 `"Waste collection"', add
label define kh08a_ind_lbl 382 `"Waste treatment and disposal"', add
label define kh08a_ind_lbl 383 `"Materials recovery"', add
label define kh08a_ind_lbl 390 `"Remediation activities and other waste management services"', add
label define kh08a_ind_lbl 410 `"Construction of buildings"', add
label define kh08a_ind_lbl 421 `"Construction of roads and railways"', add
label define kh08a_ind_lbl 422 `"Construction of utility projects"', add
label define kh08a_ind_lbl 429 `"Construction of other civil engineering projects"', add
label define kh08a_ind_lbl 431 `"Demolition and site preparation"', add
label define kh08a_ind_lbl 432 `"Electrical, plumbing and other construction installation activities"', add
label define kh08a_ind_lbl 433 `"Building completion and finishing"', add
label define kh08a_ind_lbl 439 `"Other specialized construction activities"', add
label define kh08a_ind_lbl 451 `"Sale of motor vehicles"', add
label define kh08a_ind_lbl 452 `"Maintenance and repair of motor vehicles"', add
label define kh08a_ind_lbl 453 `"Sale of motor vehicle parts and accessories"', add
label define kh08a_ind_lbl 454 `"Sale, maintenance and repair of motorcycles and related parts and accessories"', add
label define kh08a_ind_lbl 461 `"Wholesale on a fee or contract basis"', add
label define kh08a_ind_lbl 462 `"Wholesale of agricultural raw materials and live animals"', add
label define kh08a_ind_lbl 463 `"Wholesale of food, beverages and tobacco"', add
label define kh08a_ind_lbl 464 `"Wholesale of household goods"', add
label define kh08a_ind_lbl 465 `"Wholesale of machinery, equipment and supplies"', add
label define kh08a_ind_lbl 466 `"Other specialized wholesale"', add
label define kh08a_ind_lbl 469 `"Non-specialized wholesale trade"', add
label define kh08a_ind_lbl 471 `"Retail sale in non-specialized stores"', add
label define kh08a_ind_lbl 472 `"Retail sale of food, beverages and tobacco in specialized stores"', add
label define kh08a_ind_lbl 473 `"Retail sale of automotive fuel in specialized stores"', add
label define kh08a_ind_lbl 474 `"Retail sale of information and communications equipment in specialized stores"', add
label define kh08a_ind_lbl 475 `"Retail sale of other household equipment in specialized stores"', add
label define kh08a_ind_lbl 476 `"Retail sale of cultural and recreation goods in specialized stores"', add
label define kh08a_ind_lbl 477 `"Retail sale of other goods in specialized stores"', add
label define kh08a_ind_lbl 478 `"Retail sale via stalls and markets"', add
label define kh08a_ind_lbl 479 `"Retail trade not in stores, stalls or markets"', add
label define kh08a_ind_lbl 491 `"Transport via railways"', add
label define kh08a_ind_lbl 492 `"Other land transport"', add
label define kh08a_ind_lbl 493 `"Transport via pipeline"', add
label define kh08a_ind_lbl 501 `"Sea and coastal water transport"', add
label define kh08a_ind_lbl 502 `"Inland water transport"', add
label define kh08a_ind_lbl 511 `"Passenger air transport"', add
label define kh08a_ind_lbl 512 `"Freight air transport"', add
label define kh08a_ind_lbl 521 `"Warehousing and storage"', add
label define kh08a_ind_lbl 522 `"Support activities for transportation"', add
label define kh08a_ind_lbl 531 `"Postal activities"', add
label define kh08a_ind_lbl 532 `"Courier activities"', add
label define kh08a_ind_lbl 551 `"Short term accommodation activities"', add
label define kh08a_ind_lbl 552 `"Camping grounds, recreational vehicle parks and trailer parks"', add
label define kh08a_ind_lbl 559 `"Other accommodation"', add
label define kh08a_ind_lbl 561 `"Restaurants and mobile food service activities"', add
label define kh08a_ind_lbl 562 `"Event catering and other food service activities"', add
label define kh08a_ind_lbl 563 `"Beverage serving activities"', add
label define kh08a_ind_lbl 581 `"Publishing of books, periodicals and other publishing activities"', add
label define kh08a_ind_lbl 582 `"Software publishing"', add
label define kh08a_ind_lbl 591 `"Motion picture, video and television programme activities"', add
label define kh08a_ind_lbl 592 `"Sound recording and music publishing activities"', add
label define kh08a_ind_lbl 601 `"Radio broadcasting"', add
label define kh08a_ind_lbl 602 `"Television broadcasting and subscription programming"', add
label define kh08a_ind_lbl 611 `"Wired telecommunications activities"', add
label define kh08a_ind_lbl 612 `"Wireless telecommunications activities"', add
label define kh08a_ind_lbl 613 `"Satellite telecommunications activities"', add
label define kh08a_ind_lbl 619 `"Other telecommunications activities"', add
label define kh08a_ind_lbl 620 `"Computer programming, consultancy and related activities"', add
label define kh08a_ind_lbl 631 `"Data processing, hosting and related activities; web portals"', add
label define kh08a_ind_lbl 632 `"Other information service activities"', add
label define kh08a_ind_lbl 641 `"Monetary intermediation"', add
label define kh08a_ind_lbl 642 `"Activities of holding companies"', add
label define kh08a_ind_lbl 643 `"Trusts, funds and other financial vehicles"', add
label define kh08a_ind_lbl 649 `"Other financial service activities, except insurance and pension funding   activities"', add
label define kh08a_ind_lbl 651 `"Insurance"', add
label define kh08a_ind_lbl 652 `"Reinsurance"', add
label define kh08a_ind_lbl 653 `"Pension funding"', add
label define kh08a_ind_lbl 661 `"Activities auxiliary to financial service activities, except insurance and pension funding"', add
label define kh08a_ind_lbl 662 `"Activities auxiliary to insurance and pension funding"', add
label define kh08a_ind_lbl 663 `"Fund management activities"', add
label define kh08a_ind_lbl 681 `"Real estate activities with own or leased property"', add
label define kh08a_ind_lbl 682 `"Real estate activities on a fee or contract basis"', add
label define kh08a_ind_lbl 691 `"Legal activities"', add
label define kh08a_ind_lbl 692 `"Accounting, bookkeeping and auditing activities; tax consultancy"', add
label define kh08a_ind_lbl 701 `"Activities of head offices"', add
label define kh08a_ind_lbl 702 `"Management consultancy activities"', add
label define kh08a_ind_lbl 711 `"Architectural and engineering activities and related technical consultancy"', add
label define kh08a_ind_lbl 712 `"Technical testing and analysis"', add
label define kh08a_ind_lbl 721 `"Research and experimental development on natural sciences and engineering"', add
label define kh08a_ind_lbl 722 `"Research and experimental development on social sciences and humanities"', add
label define kh08a_ind_lbl 731 `"Advertising"', add
label define kh08a_ind_lbl 732 `"Market research and public opinion polling"', add
label define kh08a_ind_lbl 741 `"Specialized design activities"', add
label define kh08a_ind_lbl 742 `"Photographic activities"', add
label define kh08a_ind_lbl 749 `"Other professional, scientific and technical activities n.e.c."', add
label define kh08a_ind_lbl 750 `"Veterinary activities"', add
label define kh08a_ind_lbl 771 `"Renting and leasing of motor vehicles"', add
label define kh08a_ind_lbl 772 `"Renting and leasing of personal and household goods"', add
label define kh08a_ind_lbl 773 `"Renting and leasing of other machinery, equipment and tangible goods n.e.c."', add
label define kh08a_ind_lbl 774 `"Leasing of non financial intangible assets"', add
label define kh08a_ind_lbl 781 `"Activities of employment placement agencies"', add
label define kh08a_ind_lbl 782 `"Temporary employment agency activities"', add
label define kh08a_ind_lbl 783 `"Human resources provision and management of human resources functions"', add
label define kh08a_ind_lbl 791 `"Travel agency and tour operator activities"', add
label define kh08a_ind_lbl 792 `"Other reservation service activities"', add
label define kh08a_ind_lbl 801 `"Private security activities"', add
label define kh08a_ind_lbl 802 `"Security systems service activities"', add
label define kh08a_ind_lbl 803 `"Investigation activities"', add
label define kh08a_ind_lbl 811 `"Combined facilities support activities"', add
label define kh08a_ind_lbl 812 `"Cleaning activities"', add
label define kh08a_ind_lbl 813 `"Landscape care and maintenance service activities"', add
label define kh08a_ind_lbl 821 `"Office administrative and support activities"', add
label define kh08a_ind_lbl 822 `"Activities of call centre"', add
label define kh08a_ind_lbl 823 `"Organization of conventions and trade shows"', add
label define kh08a_ind_lbl 829 `"Business support service activities n.e.c."', add
label define kh08a_ind_lbl 841 `"Administration of the state and the economic and social policy of the community"', add
label define kh08a_ind_lbl 842 `"Provision of services to the community as a whole"', add
label define kh08a_ind_lbl 843 `"Compulsory social security activities"', add
label define kh08a_ind_lbl 851 `"Primary education"', add
label define kh08a_ind_lbl 852 `"Secondary education"', add
label define kh08a_ind_lbl 853 `"Higher education"', add
label define kh08a_ind_lbl 854 `"Other education"', add
label define kh08a_ind_lbl 855 `"Educational support services"', add
label define kh08a_ind_lbl 861 `"Hospital activities"', add
label define kh08a_ind_lbl 862 `"Medical and dental practice activities"', add
label define kh08a_ind_lbl 869 `"Other human health activities"', add
label define kh08a_ind_lbl 871 `"Nursing care facilities"', add
label define kh08a_ind_lbl 872 `"Residential care activities for mental retardation, mental health and substance abuse"', add
label define kh08a_ind_lbl 873 `"Residential care activities for the elderly and disabled"', add
label define kh08a_ind_lbl 879 `"Other residential care activities n.e.c."', add
label define kh08a_ind_lbl 881 `"Social work activities without accommodation for the elderly and disabled"', add
label define kh08a_ind_lbl 889 `"Other social work activities without accommodation n.e.c."', add
label define kh08a_ind_lbl 900 `"Creative, arts and entertainment activities"', add
label define kh08a_ind_lbl 910 `"Libraries, archives, museums and other cultural activities"', add
label define kh08a_ind_lbl 920 `"Gambling and betting activities"', add
label define kh08a_ind_lbl 931 `"Sports activities"', add
label define kh08a_ind_lbl 932 `"Other amusement and recreation activities"', add
label define kh08a_ind_lbl 941 `"Activities of business, employers and professional membership organizations"', add
label define kh08a_ind_lbl 942 `"Activities of trade unions"', add
label define kh08a_ind_lbl 949 `"Activities of other membership organizations"', add
label define kh08a_ind_lbl 951 `"Repair of computers and communication equipment"', add
label define kh08a_ind_lbl 952 `"Repair of personal and household goods"', add
label define kh08a_ind_lbl 960 `"Other personal service activities"', add
label define kh08a_ind_lbl 970 `"Activities of households as employers of domestic personnel"', add
label define kh08a_ind_lbl 981 `"Undifferentiated goods-producing activities of private households for own use"', add
label define kh08a_ind_lbl 982 `"Undifferentiated service-producing activities of private households for own use"', add
label define kh08a_ind_lbl 990 `"Activities of extraterritorial organizations and bodies"', add
label define kh08a_ind_lbl 997 `"Industry not  adequately described"', add
label define kh08a_ind_lbl 999 `"Unknown"', add
label values kh08a_ind kh08a_ind_lbl

label define kh08a_empsect_lbl 0 `"NIU (not in universe)"'
label define kh08a_empsect_lbl 1 `"Government"', add
label define kh08a_empsect_lbl 2 `"State owned"', add
label define kh08a_empsect_lbl 3 `"Cambodian owned - private"', add
label define kh08a_empsect_lbl 4 `"Foreign owned"', add
label define kh08a_empsect_lbl 5 `"Non profit institution"', add
label define kh08a_empsect_lbl 6 `"Household sector"', add
label define kh08a_empsect_lbl 7 `"Embassies, agencies, etc."', add
label define kh08a_empsect_lbl 8 `"Other"', add
label define kh08a_empsect_lbl 9 `"Unknown"', add
label values kh08a_empsect kh08a_empsect_lbl

label define kh08a_sececon_lbl 01 `"None"'
label define kh08a_sececon_lbl 02 `"Unpaid farming"', add
label define kh08a_sececon_lbl 03 `"Paid farming"', add
label define kh08a_sececon_lbl 04 `"Unpaid livestock"', add
label define kh08a_sececon_lbl 05 `"Paid livestock"', add
label define kh08a_sececon_lbl 06 `"Fishing"', add
label define kh08a_sececon_lbl 07 `"Other household production"', add
label define kh08a_sececon_lbl 08 `"Construction"', add
label define kh08a_sececon_lbl 09 `"Wholesale or retail"', add
label define kh08a_sececon_lbl 10 `"Transport"', add
label define kh08a_sececon_lbl 11 `"Other paid employment"', add
label define kh08a_sececon_lbl 99 `"Unknown"', add
label values kh08a_sececon kh08a_sececon_lbl

label define kh08a_workloc_lbl 1 `"At home"'
label define kh08a_workloc_lbl 2 `"In same district"', add
label define kh08a_workloc_lbl 3 `"In another district"', add
label define kh08a_workloc_lbl 4 `"Across the border"', add
label define kh08a_workloc_lbl 9 `"NIU (not in universe)"', add
label values kh08a_workloc kh08a_workloc_lbl

label define kh08a_workprov_lbl 01 `"Banteay Meanchey"'
label define kh08a_workprov_lbl 02 `"Battambang"', add
label define kh08a_workprov_lbl 03 `"Kampong Cham"', add
label define kh08a_workprov_lbl 04 `"Kampong Chhnang"', add
label define kh08a_workprov_lbl 05 `"Kampong Speu"', add
label define kh08a_workprov_lbl 06 `"Kampong Thom"', add
label define kh08a_workprov_lbl 07 `"Kampot"', add
label define kh08a_workprov_lbl 08 `"Kandal"', add
label define kh08a_workprov_lbl 09 `"Koh Kong"', add
label define kh08a_workprov_lbl 10 `"Kratie"', add
label define kh08a_workprov_lbl 11 `"Mondul Kiri"', add
label define kh08a_workprov_lbl 12 `"Phnom Penh"', add
label define kh08a_workprov_lbl 13 `"Preah Vihear"', add
label define kh08a_workprov_lbl 14 `"Prey Veng"', add
label define kh08a_workprov_lbl 15 `"Pursat"', add
label define kh08a_workprov_lbl 16 `"Rotanak Kiri"', add
label define kh08a_workprov_lbl 17 `"Siem Reap"', add
label define kh08a_workprov_lbl 18 `"Preah Sihanouk"', add
label define kh08a_workprov_lbl 19 `"Stung Treng"', add
label define kh08a_workprov_lbl 20 `"Svay Rieng"', add
label define kh08a_workprov_lbl 21 `"Takeo"', add
label define kh08a_workprov_lbl 22 `"Otdar Meanchey"', add
label define kh08a_workprov_lbl 23 `"Kep"', add
label define kh08a_workprov_lbl 24 `"Pailin"', add
label define kh08a_workprov_lbl 93 `"Countries in Asia"', add
label define kh08a_workprov_lbl 94 `"Countries in Australia and Oceania"', add
label define kh08a_workprov_lbl 95 `"Countries in Europe"', add
label define kh08a_workprov_lbl 96 `"Countries in America"', add
label define kh08a_workprov_lbl 98 `"Unknown"', add
label define kh08a_workprov_lbl 99 `"NIU (not in universe)"', add
label values kh08a_workprov kh08a_workprov_lbl

label define kh08a_workdist_lbl 0102 `"Banteay Meanchey"'
label define kh08a_workdist_lbl 0103 `"Phnum Srok"', add
label define kh08a_workdist_lbl 0104 `"Preah Netr Preah"', add
label define kh08a_workdist_lbl 0105 `"Ou Chrov"', add
label define kh08a_workdist_lbl 0106 `"Serei Saophoan"', add
label define kh08a_workdist_lbl 0107 `"Thma Puok"', add
label define kh08a_workdist_lbl 0108 `"Svay Chek"', add
label define kh08a_workdist_lbl 0109 `"Malai"', add
label define kh08a_workdist_lbl 0201 `"Battambang"', add
label define kh08a_workdist_lbl 0202 `"Bat Dambang"', add
label define kh08a_workdist_lbl 0203 `"Svay Pao"', add
label define kh08a_workdist_lbl 0204 `"Bavel"', add
label define kh08a_workdist_lbl 0205 `"Aek Phnum"', add
label define kh08a_workdist_lbl 0206 `"Moung Ruessei"', add
label define kh08a_workdist_lbl 0207 `"Rotonak Mondol"', add
label define kh08a_workdist_lbl 0208 `"Sangkae"', add
label define kh08a_workdist_lbl 0209 `"Samlout"', add
label define kh08a_workdist_lbl 0210 `"Sampov Lun"', add
label define kh08a_workdist_lbl 0211 `"Phnom Proek"', add
label define kh08a_workdist_lbl 0212 `"Kamrieng"', add
label define kh08a_workdist_lbl 0213 `"Koah Krala"', add
label define kh08a_workdist_lbl 0301 `"Kampong Cham"', add
label define kh08a_workdist_lbl 0302 `"Chamkar Leu"', add
label define kh08a_workdist_lbl 0303 `"Cheung Prey"', add
label define kh08a_workdist_lbl 0304 `"Dambae"', add
label define kh08a_workdist_lbl 0305 `"Kampong Cham"', add
label define kh08a_workdist_lbl 0306 `"Kampong Siem"', add
label define kh08a_workdist_lbl 0307 `"Kang Meas"', add
label define kh08a_workdist_lbl 0308 `"Kaoh Soutin"', add
label define kh08a_workdist_lbl 0309 `"Krouch Chhmar"', add
label define kh08a_workdist_lbl 0310 `"Memot"', add
label define kh08a_workdist_lbl 0311 `"Ou Reang Ov"', add
label define kh08a_workdist_lbl 0312 `"Ponhea Kraek"', add
label define kh08a_workdist_lbl 0313 `"Prey Chhor"', add
label define kh08a_workdist_lbl 0314 `"Srei Santhor"', add
label define kh08a_workdist_lbl 0315 `"Stueng Trang"', add
label define kh08a_workdist_lbl 0316 `"Tboung Khmum"', add
label define kh08a_workdist_lbl 0401 `"Kampong Chhnang"', add
label define kh08a_workdist_lbl 0402 `"Chol Kiri"', add
label define kh08a_workdist_lbl 0403 `"Kampong Chhnang"', add
label define kh08a_workdist_lbl 0404 `"Kampong Leaeng"', add
label define kh08a_workdist_lbl 0405 `"Kampong Tralach"', add
label define kh08a_workdist_lbl 0406 `"Rolea B'ier"', add
label define kh08a_workdist_lbl 0407 `"Sameakki Mean Chey"', add
label define kh08a_workdist_lbl 0408 `"Tuek Phos"', add
label define kh08a_workdist_lbl 0501 `"Kampong Speu"', add
label define kh08a_workdist_lbl 0502 `"Chbar Mon"', add
label define kh08a_workdist_lbl 0503 `"Kong Pisei"', add
label define kh08a_workdist_lbl 0504 `"Aoral"', add
label define kh08a_workdist_lbl 0505 `"Odongk"', add
label define kh08a_workdist_lbl 0506 `"Phnum Sruoch"', add
label define kh08a_workdist_lbl 0507 `"Samraong Tong"', add
label define kh08a_workdist_lbl 0508 `"Thpong"', add
label define kh08a_workdist_lbl 0601 `"Kampong Thom"', add
label define kh08a_workdist_lbl 0602 `"Kampong Svay"', add
label define kh08a_workdist_lbl 0603 `"Stueng Saen"', add
label define kh08a_workdist_lbl 0604 `"Prasat Balangk"', add
label define kh08a_workdist_lbl 0605 `"Prasat Sambour"', add
label define kh08a_workdist_lbl 0606 `"Sandan"', add
label define kh08a_workdist_lbl 0607 `"Santuk"', add
label define kh08a_workdist_lbl 0608 `"Stoung"', add
label define kh08a_workdist_lbl 0701 `"Kampot"', add
label define kh08a_workdist_lbl 0702 `"Banteay Meas"', add
label define kh08a_workdist_lbl 0703 `"Chhuk"', add
label define kh08a_workdist_lbl 0704 `"Chum Kiri"', add
label define kh08a_workdist_lbl 0705 `"Dang Tong"', add
label define kh08a_workdist_lbl 0706 `"Kampong Trach"', add
label define kh08a_workdist_lbl 0707 `"Kampot"', add
label define kh08a_workdist_lbl 0708 `"Kampong Bay"', add
label define kh08a_workdist_lbl 0801 `"Kandal"', add
label define kh08a_workdist_lbl 0802 `"Kien Svay"', add
label define kh08a_workdist_lbl 0803 `"Khsach Kandal"', add
label define kh08a_workdist_lbl 0804 `"Kaoh Thum"', add
label define kh08a_workdist_lbl 0805 `"Leuk Daek"', add
label define kh08a_workdist_lbl 0806 `"Lvea Aem"', add
label define kh08a_workdist_lbl 0807 `"Mukh Kampul"', add
label define kh08a_workdist_lbl 0808 `"Angk Snuol"', add
label define kh08a_workdist_lbl 0809 `"Ponhea Lueu"', add
label define kh08a_workdist_lbl 0810 `"S'ang"', add
label define kh08a_workdist_lbl 0811 `"Ta Khmau"', add
label define kh08a_workdist_lbl 0901 `"Koh Kong"', add
label define kh08a_workdist_lbl 0902 `"Kiri Sakor"', add
label define kh08a_workdist_lbl 0903 `"Kaoh Kong"', add
label define kh08a_workdist_lbl 0904 `"Smach Mean Chey"', add
label define kh08a_workdist_lbl 0905 `"Mondol Seima"', add
label define kh08a_workdist_lbl 0906 `"Srae Ambel"', add
label define kh08a_workdist_lbl 0907 `"Thma Bang"', add
label define kh08a_workdist_lbl 0908 `"Kampong Seila"', add
label define kh08a_workdist_lbl 1001 `"Kratie"', add
label define kh08a_workdist_lbl 1002 `"Kracheh"', add
label define kh08a_workdist_lbl 1003 `"Preaek Prasab"', add
label define kh08a_workdist_lbl 1004 `"Sambour"', add
label define kh08a_workdist_lbl 1005 `"Snuol"', add
label define kh08a_workdist_lbl 1101 `"Mondul Kiri"', add
label define kh08a_workdist_lbl 1102 `"Kaoh Nheaek"', add
label define kh08a_workdist_lbl 1103 `"Ou Reang"', add
label define kh08a_workdist_lbl 1104 `"Pech Chenda"', add
label define kh08a_workdist_lbl 1105 `"Saen Monourom"', add
label define kh08a_workdist_lbl 1201 `"Phnom Penh"', add
label define kh08a_workdist_lbl 1202 `"Doun Penh"', add
label define kh08a_workdist_lbl 1203 `"Prampir Meakkakra"', add
label define kh08a_workdist_lbl 1204 `"Tuol Kouk"', add
label define kh08a_workdist_lbl 1205 `"Dangkao"', add
label define kh08a_workdist_lbl 1206 `"Mean Chey"', add
label define kh08a_workdist_lbl 1207 `"Russei Kaev"', add
label define kh08a_workdist_lbl 1301 `"Preah Vihear"', add
label define kh08a_workdist_lbl 1302 `"Chhaeb"', add
label define kh08a_workdist_lbl 1303 `"Choam Khsant"', add
label define kh08a_workdist_lbl 1304 `"Kuleaen"', add
label define kh08a_workdist_lbl 1305 `"Rovieng"', add
label define kh08a_workdist_lbl 1306 `"Sangkom Thmei"', add
label define kh08a_workdist_lbl 1307 `"Tbaeng Mean Chey"', add
label define kh08a_workdist_lbl 1401 `"Prey Veng"', add
label define kh08a_workdist_lbl 1402 `"Kamchay Mear"', add
label define kh08a_workdist_lbl 1403 `"Kampong Trabaek"', add
label define kh08a_workdist_lbl 1404 `"Kanhchriech"', add
label define kh08a_workdist_lbl 1405 `"Me Sang"', add
label define kh08a_workdist_lbl 1406 `"Peam Chor"', add
label define kh08a_workdist_lbl 1407 `"Peam Ro"', add
label define kh08a_workdist_lbl 1408 `"Pea Reang"', add
label define kh08a_workdist_lbl 1409 `"Preah Sdach"', add
label define kh08a_workdist_lbl 1410 `"Prey Veaeng"', add
label define kh08a_workdist_lbl 1411 `"Kampong Leav"', add
label define kh08a_workdist_lbl 1412 `"Sithor Kandal"', add
label define kh08a_workdist_lbl 1501 `"Pursat"', add
label define kh08a_workdist_lbl 1502 `"Kandieng"', add
label define kh08a_workdist_lbl 1503 `"Krakor"', add
label define kh08a_workdist_lbl 1504 `"Phnum Kravanh"', add
label define kh08a_workdist_lbl 1505 `"Sampov Meas"', add
label define kh08a_workdist_lbl 1506 `"Veal Veaeng"', add
label define kh08a_workdist_lbl 1601 `"Ratanak Kiri"', add
label define kh08a_workdist_lbl 1602 `"Ban Lung"', add
label define kh08a_workdist_lbl 1603 `"Bar Kaev"', add
label define kh08a_workdist_lbl 1604 `"Koun Mom"', add
label define kh08a_workdist_lbl 1606 `"Ou Chum"', add
label define kh08a_workdist_lbl 1607 `"Ou Ya Dav"', add
label define kh08a_workdist_lbl 1608 `"Ta Veaeng"', add
label define kh08a_workdist_lbl 1609 `"Veun Sai"', add
label define kh08a_workdist_lbl 1701 `"Siemreap"', add
label define kh08a_workdist_lbl 1702 `"Angkor Thum"', add
label define kh08a_workdist_lbl 1703 `"Banteay Srei"', add
label define kh08a_workdist_lbl 1704 `"Chi Kraeng"', add
label define kh08a_workdist_lbl 1706 `"Siemreap"', add
label define kh08a_workdist_lbl 1707 `"Puok"', add
label define kh08a_workdist_lbl 1709 `"Siemreap"', add
label define kh08a_workdist_lbl 1710 `"Siem Reab"', add
label define kh08a_workdist_lbl 1711 `"Soutr Nikom"', add
label define kh08a_workdist_lbl 1712 `"Srei Snam"', add
label define kh08a_workdist_lbl 1714 `"Varin"', add
label define kh08a_workdist_lbl 1801 `"SihanoukVille"', add
label define kh08a_workdist_lbl 1802 `"Prey Nob"', add
label define kh08a_workdist_lbl 1803 `"Stueng Hav"', add
label define kh08a_workdist_lbl 1901 `"Stung Treng"', add
label define kh08a_workdist_lbl 1902 `"Siem Bouk"', add
label define kh08a_workdist_lbl 1903 `"Siem Pang"', add
label define kh08a_workdist_lbl 1904 `"Stueng Traeng"', add
label define kh08a_workdist_lbl 1905 `"Thala Barivat"', add
label define kh08a_workdist_lbl 2001 `"Svay Rieng"', add
label define kh08a_workdist_lbl 2002 `"Kampong Rou"', add
label define kh08a_workdist_lbl 2003 `"Rumduol"', add
label define kh08a_workdist_lbl 2004 `"Romeas Haek"', add
label define kh08a_workdist_lbl 2005 `"Svay Chrum"', add
label define kh08a_workdist_lbl 2006 `"Svay Rieng"', add
label define kh08a_workdist_lbl 2007 `"Svay Teab"', add
label define kh08a_workdist_lbl 2101 `"Takeo"', add
label define kh08a_workdist_lbl 2102 `"Bati"', add
label define kh08a_workdist_lbl 2103 `"Borei Cholsar"', add
label define kh08a_workdist_lbl 2104 `"Kiri Vong"', add
label define kh08a_workdist_lbl 2105 `"Kaoh Andaet"', add
label define kh08a_workdist_lbl 2106 `"Prey Kabbas"', add
label define kh08a_workdist_lbl 2107 `"Samraong"', add
label define kh08a_workdist_lbl 2108 `"Doun Kaev"', add
label define kh08a_workdist_lbl 2109 `"Tram Kak"', add
label define kh08a_workdist_lbl 2110 `"Treang"', add
label define kh08a_workdist_lbl 2201 `"Oddar Meanchey"', add
label define kh08a_workdist_lbl 2202 `"Banteay Ampil"', add
label define kh08a_workdist_lbl 2203 `"Chong Kal"', add
label define kh08a_workdist_lbl 2204 `"Samraong"', add
label define kh08a_workdist_lbl 2205 `"Trapeang Prasat"', add
label define kh08a_workdist_lbl 2301 `"Kep"', add
label define kh08a_workdist_lbl 2302 `"Kaeb"', add
label define kh08a_workdist_lbl 2401 `"Pailin"', add
label define kh08a_workdist_lbl 2402 `"Sala Krau"', add
label define kh08a_workdist_lbl 9301 `"China"', add
label define kh08a_workdist_lbl 9302 `"Hong Kong"', add
label define kh08a_workdist_lbl 9303 `"India"', add
label define kh08a_workdist_lbl 9304 `"Indonesia"', add
label define kh08a_workdist_lbl 9305 `"Japan"', add
label define kh08a_workdist_lbl 9306 `"Korea North"', add
label define kh08a_workdist_lbl 9307 `"Korea South"', add
label define kh08a_workdist_lbl 9308 `"Laos"', add
label define kh08a_workdist_lbl 9309 `"Malaysia"', add
label define kh08a_workdist_lbl 9310 `"Myanmar"', add
label define kh08a_workdist_lbl 9311 `"Nepal"', add
label define kh08a_workdist_lbl 9312 `"Pakistan"', add
label define kh08a_workdist_lbl 9313 `"Phiippines"', add
label define kh08a_workdist_lbl 9314 `"Singapore"', add
label define kh08a_workdist_lbl 9315 `"Sri Lanka"', add
label define kh08a_workdist_lbl 9316 `"Thailand"', add
label define kh08a_workdist_lbl 9317 `"Vietnam"', add
label define kh08a_workdist_lbl 9399 `"Other Asia"', add
label define kh08a_workdist_lbl 9401 `"Australia"', add
label define kh08a_workdist_lbl 9402 `"New Zealand"', add
label define kh08a_workdist_lbl 9499 `"Other Oceania"', add
label define kh08a_workdist_lbl 9501 `"Belgium"', add
label define kh08a_workdist_lbl 9502 `"France"', add
label define kh08a_workdist_lbl 9503 `"Germany"', add
label define kh08a_workdist_lbl 9504 `"Italy"', add
label define kh08a_workdist_lbl 9505 `"Netherlands"', add
label define kh08a_workdist_lbl 9506 `"Former USSR"', add
label define kh08a_workdist_lbl 9507 `"Sweden"', add
label define kh08a_workdist_lbl 9508 `"United Kingdom"', add
label define kh08a_workdist_lbl 9599 `"Other Europe"', add
label define kh08a_workdist_lbl 9601 `"USA"', add
label define kh08a_workdist_lbl 9602 `"Canada"', add
label define kh08a_workdist_lbl 9699 `"Other America"', add
label define kh08a_workdist_lbl 9701 `"South Africa"', add
label define kh08a_workdist_lbl 9799 `"Other Africa"', add
label define kh08a_workdist_lbl 9998 `"Not classified"', add
label define kh08a_workdist_lbl 9999 `"NIU (not in universe)"', add
label values kh08a_workdist kh08a_workdist_lbl

label define kh08a_chbornm_lbl 00 `"0"'
label define kh08a_chbornm_lbl 01 `"1"', add
label define kh08a_chbornm_lbl 02 `"2"', add
label define kh08a_chbornm_lbl 03 `"3"', add
label define kh08a_chbornm_lbl 04 `"4"', add
label define kh08a_chbornm_lbl 05 `"5"', add
label define kh08a_chbornm_lbl 06 `"6"', add
label define kh08a_chbornm_lbl 07 `"7"', add
label define kh08a_chbornm_lbl 08 `"8"', add
label define kh08a_chbornm_lbl 09 `"9"', add
label define kh08a_chbornm_lbl 10 `"10"', add
label define kh08a_chbornm_lbl 11 `"11"', add
label define kh08a_chbornm_lbl 12 `"12"', add
label define kh08a_chbornm_lbl 13 `"13"', add
label define kh08a_chbornm_lbl 14 `"14"', add
label define kh08a_chbornm_lbl 15 `"15"', add
label define kh08a_chbornm_lbl 16 `"16"', add
label define kh08a_chbornm_lbl 20 `"20"', add
label define kh08a_chbornm_lbl 98 `"Unknown"', add
label define kh08a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values kh08a_chbornm kh08a_chbornm_lbl

label define kh08a_chbornf_lbl 00 `"0"'
label define kh08a_chbornf_lbl 01 `"1"', add
label define kh08a_chbornf_lbl 02 `"2"', add
label define kh08a_chbornf_lbl 03 `"3"', add
label define kh08a_chbornf_lbl 04 `"4"', add
label define kh08a_chbornf_lbl 05 `"5"', add
label define kh08a_chbornf_lbl 06 `"6"', add
label define kh08a_chbornf_lbl 07 `"7"', add
label define kh08a_chbornf_lbl 08 `"8"', add
label define kh08a_chbornf_lbl 09 `"9"', add
label define kh08a_chbornf_lbl 10 `"10"', add
label define kh08a_chbornf_lbl 11 `"11"', add
label define kh08a_chbornf_lbl 12 `"12"', add
label define kh08a_chbornf_lbl 13 `"13"', add
label define kh08a_chbornf_lbl 14 `"14"', add
label define kh08a_chbornf_lbl 15 `"15"', add
label define kh08a_chbornf_lbl 20 `"20"', add
label define kh08a_chbornf_lbl 98 `"Unknown"', add
label define kh08a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values kh08a_chbornf kh08a_chbornf_lbl

label define kh08a_chsurvm_lbl 00 `"0"'
label define kh08a_chsurvm_lbl 01 `"1"', add
label define kh08a_chsurvm_lbl 02 `"2"', add
label define kh08a_chsurvm_lbl 03 `"3"', add
label define kh08a_chsurvm_lbl 04 `"4"', add
label define kh08a_chsurvm_lbl 05 `"5"', add
label define kh08a_chsurvm_lbl 06 `"6"', add
label define kh08a_chsurvm_lbl 07 `"7"', add
label define kh08a_chsurvm_lbl 08 `"8"', add
label define kh08a_chsurvm_lbl 09 `"9"', add
label define kh08a_chsurvm_lbl 10 `"10"', add
label define kh08a_chsurvm_lbl 11 `"11"', add
label define kh08a_chsurvm_lbl 13 `"13"', add
label define kh08a_chsurvm_lbl 16 `"16"', add
label define kh08a_chsurvm_lbl 98 `"Unknown"', add
label define kh08a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values kh08a_chsurvm kh08a_chsurvm_lbl

label define kh08a_chsurvf_lbl 00 `"0"'
label define kh08a_chsurvf_lbl 01 `"1"', add
label define kh08a_chsurvf_lbl 02 `"2"', add
label define kh08a_chsurvf_lbl 03 `"3"', add
label define kh08a_chsurvf_lbl 04 `"4"', add
label define kh08a_chsurvf_lbl 05 `"5"', add
label define kh08a_chsurvf_lbl 06 `"6"', add
label define kh08a_chsurvf_lbl 07 `"7"', add
label define kh08a_chsurvf_lbl 08 `"8"', add
label define kh08a_chsurvf_lbl 09 `"9"', add
label define kh08a_chsurvf_lbl 10 `"10"', add
label define kh08a_chsurvf_lbl 11 `"11"', add
label define kh08a_chsurvf_lbl 14 `"14"', add
label define kh08a_chsurvf_lbl 20 `"20"', add
label define kh08a_chsurvf_lbl 98 `"Unknown"', add
label define kh08a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values kh08a_chsurvf kh08a_chsurvf_lbl

label define kh08a_chdeadm_lbl 00 `"0"'
label define kh08a_chdeadm_lbl 01 `"1"', add
label define kh08a_chdeadm_lbl 02 `"2"', add
label define kh08a_chdeadm_lbl 03 `"3"', add
label define kh08a_chdeadm_lbl 04 `"4"', add
label define kh08a_chdeadm_lbl 05 `"5"', add
label define kh08a_chdeadm_lbl 06 `"6"', add
label define kh08a_chdeadm_lbl 07 `"7"', add
label define kh08a_chdeadm_lbl 08 `"8"', add
label define kh08a_chdeadm_lbl 09 `"9"', add
label define kh08a_chdeadm_lbl 10 `"10"', add
label define kh08a_chdeadm_lbl 11 `"11"', add
label define kh08a_chdeadm_lbl 12 `"12"', add
label define kh08a_chdeadm_lbl 14 `"14"', add
label define kh08a_chdeadm_lbl 98 `"Unknown"', add
label define kh08a_chdeadm_lbl 99 `"NIU (not in universe)"', add
label values kh08a_chdeadm kh08a_chdeadm_lbl

label define kh08a_chdeadf_lbl 00 `"0"'
label define kh08a_chdeadf_lbl 01 `"1"', add
label define kh08a_chdeadf_lbl 02 `"2"', add
label define kh08a_chdeadf_lbl 03 `"3"', add
label define kh08a_chdeadf_lbl 04 `"4"', add
label define kh08a_chdeadf_lbl 05 `"5"', add
label define kh08a_chdeadf_lbl 06 `"6"', add
label define kh08a_chdeadf_lbl 07 `"7"', add
label define kh08a_chdeadf_lbl 08 `"8"', add
label define kh08a_chdeadf_lbl 09 `"9"', add
label define kh08a_chdeadf_lbl 10 `"10"', add
label define kh08a_chdeadf_lbl 11 `"11"', add
label define kh08a_chdeadf_lbl 98 `"Unknown"', add
label define kh08a_chdeadf_lbl 99 `"NIU (not in universe)"', add
label values kh08a_chdeadf kh08a_chdeadf_lbl

label define kh08a_maleborn_lbl 0 `"0"'
label define kh08a_maleborn_lbl 1 `"1"', add
label define kh08a_maleborn_lbl 2 `"2"', add
label define kh08a_maleborn_lbl 3 `"3"', add
label define kh08a_maleborn_lbl 8 `"Unknown"', add
label define kh08a_maleborn_lbl 9 `"NIU (not in universe)"', add
label values kh08a_maleborn kh08a_maleborn_lbl

label define kh08a_femborn_lbl 0 `"0"'
label define kh08a_femborn_lbl 1 `"1"', add
label define kh08a_femborn_lbl 2 `"2"', add
label define kh08a_femborn_lbl 3 `"3"', add
label define kh08a_femborn_lbl 8 `"Unknown"', add
label define kh08a_femborn_lbl 9 `"NIU (not in universe)"', add
label values kh08a_femborn kh08a_femborn_lbl

label define kh08a_assistb_lbl 1 `"Doctor"'
label define kh08a_assistb_lbl 2 `"Nurse"', add
label define kh08a_assistb_lbl 3 `"Midwife"', add
label define kh08a_assistb_lbl 4 `"Traditional birth attendant"', add
label define kh08a_assistb_lbl 5 `"Other"', add
label define kh08a_assistb_lbl 6 `"None"', add
label define kh08a_assistb_lbl 8 `"Unknown"', add
label define kh08a_assistb_lbl 9 `"NIU (not in universe)"', add
label values kh08a_assistb kh08a_assistb_lbl


