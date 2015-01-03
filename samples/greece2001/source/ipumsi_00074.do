* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    gr01a_dwnum     22-27    ///
  byte    gr01a_pern      28-29    ///
  int     gr01a_dept      30-32    ///
  long    gr01a_munic     33-37    ///
  byte    gr01a_locate    38-38    ///
  byte    gr01a_dwtype1   39-39    ///
  byte    gr01a_dwtype2   40-40    ///
  byte    gr01a_bldtype   41-41    ///
  byte    gr01a_constyr   42-43    ///
  int     gr01a_space     44-46    ///
  byte    gr01a_roomspr   47-48    ///
  byte    gr01a_kitch     49-49    ///
  byte    gr01a_kitchr    50-50    ///
  byte    gr01a_elect     51-51    ///
  byte    gr01a_water     52-52    ///
  byte    gr01a_bath      53-53    ///
  byte    gr01a_sewage    54-54    ///
  byte    gr01a_toilet    55-55    ///
  byte    gr01a_heat      56-56    ///
  byte    gr01a_owner     57-57    ///
  byte    gr01a_ownershp  58-58    ///
  int     pernum          59-61    ///
  float   wtper           62-69    ///
  byte    gr01a_pernum    70-71    ///
  byte    gr01a_pernumo   72-73    ///
  byte    gr01a_sex       74-74    ///
  int     gr01a_birthyr   75-78    ///
  byte    gr01a_absent    79-79    ///
  byte    gr01a_marst     80-80    ///
  byte    gr01a_bpl       81-81    ///
  long    gr01a_bplmuni   82-86    ///
  byte    gr01a_citiz     87-87    ///
  byte    gr01a_regplace  88-88    ///
  byte    gr01a_resus     89-89    ///
  byte    gr01a_res00     90-90    ///
  long    gr01a_res00mun  91-95    ///
  byte    gr01a_res95     96-96    ///
  byte    gr01a_edattan   97-98    ///
  long    gr01a_studab    99-103   ///
  int     gr01a_eduniv    104-106  ///
  byte    gr01a_empstat   107-107  ///
  int     gr01a_ind       108-110  ///
  int     gr01a_occ       111-113  ///
  byte    gr01a_classwk   114-114  ///
  byte    gr01a_hrswk     115-116  ///
  byte    gr01a_whyemp    117-117  ///
  byte    gr01a_estsize   118-118  ///
  byte    gr01a_empstaty  119-119  ///
  byte    gr01a_hrwrk2    120-121  ///
  byte    gr01a_wrkplc    122-122  ///
  byte    gr01a_chborn    123-124  ///
  int     gr01a_frstchyr  125-128  ///
  int     gr01a_secchyr   129-132  ///
  int     gr01a_lstchyr   133-136  ///
  byte    gr01a_marrdur   137-138  ///
  int     gr01a_marryr    139-142  ///
  byte    gr01a_famnum    143-143  ///
  byte    gr01a_famtype   144-144  ///
  byte    gr01a_nucmem    145-145  ///
  byte    gr01a_grmo      146-147  ///
  int     gr01a_gryr      148-151  ///
  byte    gr01a_grwhy1    152-152  ///
  byte    gr01a_grwhy2    153-153  ///
  long    gr01a_prvcntry  154-158  ///
  byte    gr01a_grorig    159-159  ///
  byte    gr01a_relate    160-161  ///
  byte    gr01a_relatep   162-163  ///
  int     gr01a_age       164-166  ///
  using `"ipumsi_00074.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var gr01a_dwnum    `"Dwelling number"'
label var gr01a_pern     `"Number of persons in household"'
label var gr01a_dept     `"Department"'
label var gr01a_munic    `"Municipality"'
label var gr01a_locate   `"Location of the dwelling in the locality (town or village)"'
label var gr01a_dwtype1  `"Type of dwelling"'
label var gr01a_dwtype2  `"Type of dwelling"'
label var gr01a_bldtype  `"Type of building, The dwelling is situated in"'
label var gr01a_constyr  `"Period of construction"'
label var gr01a_space    `"Total area of dwelling in square meters"'
label var gr01a_roomspr  `"Number of rooms used for professional purposes (offices etc.)"'
label var gr01a_kitch    `"Kitchen"'
label var gr01a_kitchr   `"Kitchen is a regular room"'
label var gr01a_elect    `"Electricity"'
label var gr01a_water    `"Water supply"'
label var gr01a_bath     `"Bathing facilities"'
label var gr01a_sewage   `"Sewage disposal system"'
label var gr01a_toilet   `"Toilet"'
label var gr01a_heat     `"Type of heating"'
label var gr01a_owner    `"Type of owner"'
label var gr01a_ownershp `"Ownership"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var gr01a_pernum   `"Person number (within household)"'
label var gr01a_pernumo  `"Member of the household serial number"'
label var gr01a_sex      `"Sex"'
label var gr01a_birthyr  `"Year of birth"'
label var gr01a_absent   `"Present and temporarily absent members of the household"'
label var gr01a_marst    `"Marital status"'
label var gr01a_bpl      `"Place of birth"'
label var gr01a_bplmuni  `"Municipality or country of birth"'
label var gr01a_citiz    `"Citizenship status"'
label var gr01a_regplace `"Place of registration"'
label var gr01a_resus    `"Place of usual residence"'
label var gr01a_res00    `"Place of residence 1 year ago"'
label var gr01a_res00mun `"Municipality or country of residence 1 year ago"'
label var gr01a_res95    `"Place of residence in December 1995"'
label var gr01a_edattan  `"Level of Education"'
label var gr01a_studab   `"Country where studied"'
label var gr01a_eduniv   `"University or higher education school"'
label var gr01a_empstat  `"Employment status last week"'
label var gr01a_ind      `"Industry"'
label var gr01a_occ      `"Occupation"'
label var gr01a_classwk  `"Class of worker"'
label var gr01a_hrswk    `"Hours of weekly employment"'
label var gr01a_whyemp   `"Reasons for lesser employment"'
label var gr01a_estsize  `"How many persons work in the establishment, enterprise you work?"'
label var gr01a_empstaty `"Activity during the last 12 months"'
label var gr01a_hrwrk2   `"Hours of weekly occupation"'
label var gr01a_wrkplc   `"Place of work"'
label var gr01a_chborn   `"Children ever born"'
label var gr01a_frstchyr `"Year of birth of the first child"'
label var gr01a_secchyr  `"Year of birth of the second child"'
label var gr01a_lstchyr  `"Year of birth of the last child"'
label var gr01a_marrdur  `"Duration of marriage"'
label var gr01a_marryr   `"Year of first marriage"'
label var gr01a_famnum   `"Nuclear family serial number"'
label var gr01a_famtype  `"Type of family nucleus"'
label var gr01a_nucmem   `"Member of nucleus"'
label var gr01a_grmo     `"Month of settling in Greece"'
label var gr01a_gryr     `"Year of settling in Greece"'
label var gr01a_grwhy1   `"Reasons for settling in Greece, first answer"'
label var gr01a_grwhy2   `"Reasons for settling in Greece, second answer"'
label var gr01a_prvcntry `"Country of residence before settling in Greece"'
label var gr01a_grorig   `"Are you of Greek origin?"'
label var gr01a_relate   `"Kinship or relationship to the householder"'
label var gr01a_relatep  `"Kinship or relationship to the previous member of the household"'
label var gr01a_age      `"Age"'

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

label define gr01a_pern_lbl 01 `"1"'
label define gr01a_pern_lbl 02 `"2"', add
label define gr01a_pern_lbl 03 `"3"', add
label define gr01a_pern_lbl 04 `"4"', add
label define gr01a_pern_lbl 05 `"5"', add
label define gr01a_pern_lbl 06 `"6"', add
label define gr01a_pern_lbl 07 `"7"', add
label define gr01a_pern_lbl 08 `"8"', add
label define gr01a_pern_lbl 09 `"9"', add
label define gr01a_pern_lbl 10 `"10"', add
label define gr01a_pern_lbl 11 `"11"', add
label define gr01a_pern_lbl 12 `"12"', add
label define gr01a_pern_lbl 13 `"13"', add
label define gr01a_pern_lbl 14 `"14"', add
label define gr01a_pern_lbl 15 `"15"', add
label define gr01a_pern_lbl 16 `"16"', add
label define gr01a_pern_lbl 17 `"17"', add
label define gr01a_pern_lbl 18 `"18"', add
label define gr01a_pern_lbl 19 `"19"', add
label define gr01a_pern_lbl 20 `"20"', add
label define gr01a_pern_lbl 21 `"21"', add
label define gr01a_pern_lbl 25 `"25"', add
label define gr01a_pern_lbl 27 `"27"', add
label values gr01a_pern gr01a_pern_lbl

label define gr01a_dept_lbl 001 `"Etolia and Akarnania"'
label define gr01a_dept_lbl 003 `"Viotia"', add
label define gr01a_dept_lbl 004 `"Evia"', add
label define gr01a_dept_lbl 005 `"Evrytania"', add
label define gr01a_dept_lbl 006 `"Fthiotida"', add
label define gr01a_dept_lbl 007 `"Fokida"', add
label define gr01a_dept_lbl 011 `"Argolida"', add
label define gr01a_dept_lbl 012 `"Arkadia"', add
label define gr01a_dept_lbl 013 `"Achaia"', add
label define gr01a_dept_lbl 014 `"Ilia"', add
label define gr01a_dept_lbl 015 `"Korinthia"', add
label define gr01a_dept_lbl 016 `"Lakonia"', add
label define gr01a_dept_lbl 017 `"Messinia"', add
label define gr01a_dept_lbl 021 `"Zakynthos"', add
label define gr01a_dept_lbl 022 `"Kerkyra"', add
label define gr01a_dept_lbl 023 `"Kefallinia"', add
label define gr01a_dept_lbl 024 `"Lefkada"', add
label define gr01a_dept_lbl 031 `"Arta"', add
label define gr01a_dept_lbl 032 `"Thesprotia"', add
label define gr01a_dept_lbl 033 `"Ioannina"', add
label define gr01a_dept_lbl 034 `"Preveza"', add
label define gr01a_dept_lbl 041 `"Karditsa"', add
label define gr01a_dept_lbl 042 `"Larissa"', add
label define gr01a_dept_lbl 043 `"Magnissia"', add
label define gr01a_dept_lbl 044 `"Trikala"', add
label define gr01a_dept_lbl 051 `"Grevena"', add
label define gr01a_dept_lbl 052 `"Drama"', add
label define gr01a_dept_lbl 053 `"Imathia"', add
label define gr01a_dept_lbl 054 `"Thessaloniki"', add
label define gr01a_dept_lbl 055 `"Kavala"', add
label define gr01a_dept_lbl 056 `"Kastoria"', add
label define gr01a_dept_lbl 057 `"Kilkis"', add
label define gr01a_dept_lbl 058 `"Kozani"', add
label define gr01a_dept_lbl 059 `"Pella"', add
label define gr01a_dept_lbl 061 `"Pieria"', add
label define gr01a_dept_lbl 062 `"Serres"', add
label define gr01a_dept_lbl 063 `"Florina"', add
label define gr01a_dept_lbl 064 `"Chalkidiki and Aghion Oros"', add
label define gr01a_dept_lbl 071 `"Evros"', add
label define gr01a_dept_lbl 072 `"Xanthi"', add
label define gr01a_dept_lbl 073 `"Rodopi"', add
label define gr01a_dept_lbl 081 `"Dodekanissos"', add
label define gr01a_dept_lbl 082 `"Kyklades"', add
label define gr01a_dept_lbl 083 `"Lesvos"', add
label define gr01a_dept_lbl 084 `"Samos"', add
label define gr01a_dept_lbl 085 `"Chios"', add
label define gr01a_dept_lbl 091 `"Iraklio"', add
label define gr01a_dept_lbl 092 `"Lassithi"', add
label define gr01a_dept_lbl 093 `"Rethymno"', add
label define gr01a_dept_lbl 094 `"Chania"', add
label define gr01a_dept_lbl 101 `"Prefecture of Athens"', add
label define gr01a_dept_lbl 102 `"Prefecture of East Attiki"', add
label define gr01a_dept_lbl 103 `"Prefecture of West Attiki"', add
label define gr01a_dept_lbl 104 `"Prefecture of Pireas"', add
label values gr01a_dept gr01a_dept_lbl

label define gr01a_munic_lbl 00103 `"Municipality of Agrinio"'
label define gr01a_munic_lbl 00199 `"Rest of Department Etolia and Akarnania"', add
label define gr01a_munic_lbl 00301 `"Municipality of Levadia"', add
label define gr01a_munic_lbl 00310 `"Municipality of Thiva"', add
label define gr01a_munic_lbl 00399 `"Rest of Department Viotia"', add
label define gr01a_munic_lbl 00401 `"Municipality of Chalkida"', add
label define gr01a_munic_lbl 00499 `"Rest of Department Evia"', add
label define gr01a_munic_lbl 00599 `"Rest of Department Evrytania"', add
label define gr01a_munic_lbl 00601 `"Municipality of Lamia"', add
label define gr01a_munic_lbl 00699 `"Rest of Department Fthiotida"', add
label define gr01a_munic_lbl 00799 `"Rest of Department Fokida"', add
label define gr01a_munic_lbl 01102 `"Municipality of Argos"', add
label define gr01a_munic_lbl 01199 `"Rest of Department Argolida"', add
label define gr01a_munic_lbl 01201 `"Municipality of Tripoli"', add
label define gr01a_munic_lbl 01299 `"Rest of Department Arkadia"', add
label define gr01a_munic_lbl 01301 `"Municipality of Patra"', add
label define gr01a_munic_lbl 01303 `"Municipality of Aegio"', add
label define gr01a_munic_lbl 01399 `"Rest of Department Achaia"', add
label define gr01a_munic_lbl 01401 `"Municipality of Pyrgos"', add
label define gr01a_munic_lbl 01403 `"Municipality of Amaliada"', add
label define gr01a_munic_lbl 01499 `"Rest of Department Ilia"', add
label define gr01a_munic_lbl 01501 `"Municipality of Korinthos"', add
label define gr01a_munic_lbl 01599 `"Rest of Department Korinthia"', add
label define gr01a_munic_lbl 01699 `"Rest of Department Lakonia"', add
label define gr01a_munic_lbl 01701 `"Municipality of Kalamata"', add
label define gr01a_munic_lbl 01799 `"Rest of Department Messinia"', add
label define gr01a_munic_lbl 02199 `"Rest of Department Zakynthos"', add
label define gr01a_munic_lbl 02201 `"Municipality of Kerkyra"', add
label define gr01a_munic_lbl 02299 `"Rest of Department Kerkyra"', add
label define gr01a_munic_lbl 02399 `"Rest of Department Kefallinia"', add
label define gr01a_munic_lbl 02499 `"Rest of Department Lefkada"', add
label define gr01a_munic_lbl 03101 `"Municipality of Arta"', add
label define gr01a_munic_lbl 03199 `"Rest of Department Arta"', add
label define gr01a_munic_lbl 03299 `"Rest of Department Thesprotia"', add
label define gr01a_munic_lbl 03301 `"Municipality of Ioannina"', add
label define gr01a_munic_lbl 03399 `"Rest of Department Ioannina"', add
label define gr01a_munic_lbl 03499 `"Rest of Department Preveza"', add
label define gr01a_munic_lbl 04101 `"Municipality of Karditsa"', add
label define gr01a_munic_lbl 04199 `"Rest of Department Karditsa"', add
label define gr01a_munic_lbl 04201 `"Municipality of Larissa"', add
label define gr01a_munic_lbl 04299 `"Rest of Department Larissa"', add
label define gr01a_munic_lbl 04301 `"Municipality of Volos"', add
label define gr01a_munic_lbl 04315 `"Municipality of Nea Ionia"', add
label define gr01a_munic_lbl 04399 `"Rest of Department Magnissia"', add
label define gr01a_munic_lbl 04401 `"Municipality of Trikala"', add
label define gr01a_munic_lbl 04499 `"Rest of Department Trikala"', add
label define gr01a_munic_lbl 05199 `"Rest of Department Grevena"', add
label define gr01a_munic_lbl 05201 `"Municipality of Drama"', add
label define gr01a_munic_lbl 05299 `"Rest of Department Drama"', add
label define gr01a_munic_lbl 05301 `"Municipality of Veria"', add
label define gr01a_munic_lbl 05311 `"Municipality of Naoussa"', add
label define gr01a_munic_lbl 05399 `"Rest of Department Imathia"', add
label define gr01a_munic_lbl 05401 `"Municipality of Thessaloniki"', add
label define gr01a_munic_lbl 05405 `"Municipality of Abelokipi"', add
label define gr01a_munic_lbl 05413 `"Municipality of Eleftherio-Kordelio"', add
label define gr01a_munic_lbl 05415 `"Municipality of Evosmo"', add
label define gr01a_munic_lbl 05416 `"Municipality of Echedoro"', add
label define gr01a_munic_lbl 05417 `"Municipality of Thermaikos"', add
label define gr01a_munic_lbl 05419 `"Municipality of Kalamaria"', add
label define gr01a_munic_lbl 05431 `"Municipality of Neapoli"', add
label define gr01a_munic_lbl 05433 `"Municipality of Polichni"', add
label define gr01a_munic_lbl 05434 `"Municipality of Pylea"', add
label define gr01a_munic_lbl 05437 `"Municipality of Stavroupoli"', add
label define gr01a_munic_lbl 05438 `"Municipality of Sykees"', add
label define gr01a_munic_lbl 05499 `"Rest of Department Thessaloniki"', add
label define gr01a_munic_lbl 05501 `"Municipality of Kavala"', add
label define gr01a_munic_lbl 05599 `"Rest of Department Kavala"', add
label define gr01a_munic_lbl 05699 `"Rest of Department Kastoria"', add
label define gr01a_munic_lbl 05701 `"Municipality of Kilkis"', add
label define gr01a_munic_lbl 05799 `"Rest of Department Kilkis"', add
label define gr01a_munic_lbl 05801 `"Municipality of Kozani"', add
label define gr01a_munic_lbl 05813 `"Municipality of Ptolemaida"', add
label define gr01a_munic_lbl 05899 `"Rest of Department Kozani"', add
label define gr01a_munic_lbl 05901 `"Municipality of Edessa"', add
label define gr01a_munic_lbl 05902 `"Municipality of Aridea"', add
label define gr01a_munic_lbl 05904 `"Municipality of Giannitsa"', add
label define gr01a_munic_lbl 05999 `"Rest of Department Pella"', add
label define gr01a_munic_lbl 06101 `"Municipality of Katerini"', add
label define gr01a_munic_lbl 06199 `"Rest of Department Pieria"', add
label define gr01a_munic_lbl 06201 `"Municipality of Serres"', add
label define gr01a_munic_lbl 06299 `"Rest of Department Serres"', add
label define gr01a_munic_lbl 06399 `"Rest of Department Florina"', add
label define gr01a_munic_lbl 06499 `"Rest of Departments Chalkidiki and Aghion Oros"', add
label define gr01a_munic_lbl 07101 `"Municipality of Alexandroupoli"', add
label define gr01a_munic_lbl 07106 `"Municipality of Orestiada"', add
label define gr01a_munic_lbl 07199 `"Rest of Department Evros"', add
label define gr01a_munic_lbl 07201 `"Municipality of Xanthi"', add
label define gr01a_munic_lbl 07299 `"Rest of Department Xanthi"', add
label define gr01a_munic_lbl 07301 `"Municipality of Komotini"', add
label define gr01a_munic_lbl 07399 `"Rest of Department Rodopi"', add
label define gr01a_munic_lbl 08101 `"Municipality of Rodos"', add
label define gr01a_munic_lbl 08199 `"Rest of Department Dodekanissos"', add
label define gr01a_munic_lbl 08299 `"Rest of Department Kyklades"', add
label define gr01a_munic_lbl 08301 `"Municipality of Mytilini"', add
label define gr01a_munic_lbl 08399 `"Rest of Department Lesvos"', add
label define gr01a_munic_lbl 08499 `"Rest of Department Samos"', add
label define gr01a_munic_lbl 08501 `"Municipality of Chios"', add
label define gr01a_munic_lbl 08599 `"Rest of Department Chios"', add
label define gr01a_munic_lbl 09101 `"Municipality of Iraklio"', add
label define gr01a_munic_lbl 09199 `"Rest of Department Iraklio"', add
label define gr01a_munic_lbl 09202 `"Municipality of Ierapetra"', add
label define gr01a_munic_lbl 09299 `"Rest of Department Lassithi"', add
label define gr01a_munic_lbl 09301 `"Municipality of Rethymno"', add
label define gr01a_munic_lbl 09399 `"Rest of Department Rethymno"', add
label define gr01a_munic_lbl 09401 `"Municipality of Chania"', add
label define gr01a_munic_lbl 09499 `"Rest of Department Chania"', add
label define gr01a_munic_lbl 10101 `"Municipality of Athens"', add
label define gr01a_munic_lbl 10102 `"Municipality of Aghia Varvara"', add
label define gr01a_munic_lbl 10103 `"Municipality of Aghia Paraskevi"', add
label define gr01a_munic_lbl 10104 `"Municipality of Aghios Dimitrios"', add
label define gr01a_munic_lbl 10105 `"Municipality of Aghii Anargyri"', add
label define gr01a_munic_lbl 10106 `"Municipality of Aegaleo"', add
label define gr01a_munic_lbl 10107 `"Municipality of Alimos"', add
label define gr01a_munic_lbl 10108 `"Municipality of Amaroussio"', add
label define gr01a_munic_lbl 10109 `"Municipality of Argyroupoli"', add
label define gr01a_munic_lbl 10110 `"Municipality of Vrilissia"', add
label define gr01a_munic_lbl 10111 `"Municipality of Vyron"', add
label define gr01a_munic_lbl 10112 `"Municipality of Galatsi"', add
label define gr01a_munic_lbl 10113 `"Municipality of Glyfada"', add
label define gr01a_munic_lbl 10114 `"Municipality of Dafni"', add
label define gr01a_munic_lbl 10116 `"Municipality of Zografos"', add
label define gr01a_munic_lbl 10117 `"Municipality of Ilioupoli"', add
label define gr01a_munic_lbl 10118 `"Municipality of Iraklio"', add
label define gr01a_munic_lbl 10119 `"Municipality of Ilio (Nea Liossia)"', add
label define gr01a_munic_lbl 10120 `"Municipality of Kessariani"', add
label define gr01a_munic_lbl 10121 `"Municipality of Kallithea"', add
label define gr01a_munic_lbl 10122 `"Municipality of Kamatero"', add
label define gr01a_munic_lbl 10123 `"Municipality of Kifissia"', add
label define gr01a_munic_lbl 10126 `"Municipality of Metamorfossi"', add
label define gr01a_munic_lbl 10127 `"Municipality of Moschato"', add
label define gr01a_munic_lbl 10129 `"Municipality of Nea Ionia"', add
label define gr01a_munic_lbl 10130 `"Municipality of Nea Smyrni"', add
label define gr01a_munic_lbl 10131 `"Municipality of Nea Philadelfia"', add
label define gr01a_munic_lbl 10134 `"Municipality of Paleo Faliro"', add
label define gr01a_munic_lbl 10136 `"Municipality of Peristeri"', add
label define gr01a_munic_lbl 10137 `"Municipality of Petroupoli"', add
label define gr01a_munic_lbl 10142 `"Municipality of Chaidari"', add
label define gr01a_munic_lbl 10143 `"Municipality of Chalandri"', add
label define gr01a_munic_lbl 10144 `"Municipality of Cholargos"', add
label define gr01a_munic_lbl 10199 `"Rest of Prefecture Athens"', add
label define gr01a_munic_lbl 10205 `"Municipality of Acharnes"', add
label define gr01a_munic_lbl 10207 `"Municipality of Voula"', add
label define gr01a_munic_lbl 10213 `"Municipality of Koropi"', add
label define gr01a_munic_lbl 10299 `"Rest of Prefecture East Attiki"', add
label define gr01a_munic_lbl 10301 `"Municipality of Elefsina"', add
label define gr01a_munic_lbl 10302 `"Municipality of Ano Liossia"', add
label define gr01a_munic_lbl 10303 `"Municipality of Aspropyrgos"', add
label define gr01a_munic_lbl 10308 `"Municipality of Megara"', add
label define gr01a_munic_lbl 10399 `"Rest of Prefecture West Attiki"', add
label define gr01a_munic_lbl 10401 `"Municipality of Pireas"', add
label define gr01a_munic_lbl 10406 `"Municipality of Keratsini"', add
label define gr01a_munic_lbl 10407 `"Municipality of Korydallos"', add
label define gr01a_munic_lbl 10410 `"Municipality of Nikea"', add
label define gr01a_munic_lbl 10411 `"Municipality of Perama"', add
label define gr01a_munic_lbl 10413 `"Municipality of Salamina"', add
label define gr01a_munic_lbl 10499 `"Rest of Prefecture Pireas"', add
label values gr01a_munic gr01a_munic_lbl

label define gr01a_locate_lbl 1 `"Within the locality"'
label define gr01a_locate_lbl 2 `"Outside the locality"', add
label values gr01a_locate gr01a_locate_lbl

label define gr01a_dwtype1_lbl 1 `"Regular dwelling"'
label define gr01a_dwtype1_lbl 2 `"Regular dwelling within collective residence"', add
label define gr01a_dwtype1_lbl 3 `"Other building Intended for housing (hut, shed etc.)"', add
label define gr01a_dwtype1_lbl 4 `"Mobile home (tent, boat, yacht, caravan etc.)"', add
label define gr01a_dwtype1_lbl 5 `"Other building not Intended for housing (stable, mill, garage etc.)"', add
label values gr01a_dwtype1 gr01a_dwtype1_lbl

label define gr01a_dwtype2_lbl 1 `"Main residence"'
label define gr01a_dwtype2_lbl 2 `"Second or vacation residence"', add
label define gr01a_dwtype2_lbl 3 `"Main residence but household temporarily absent"', add
label define gr01a_dwtype2_lbl 4 `"Vacant: To let"', add
label define gr01a_dwtype2_lbl 5 `"Vacant: For sale"', add
label define gr01a_dwtype2_lbl 6 `"Vacant: For second of vacation residence"', add
label define gr01a_dwtype2_lbl 7 `"Vacant: Other reason"', add
label define gr01a_dwtype2_lbl 9 `"NIU (not in universe)"', add
label values gr01a_dwtype2 gr01a_dwtype2_lbl

label define gr01a_bldtype_lbl 1 `"Single-family house"'
label define gr01a_bldtype_lbl 2 `"Two-family house"', add
label define gr01a_bldtype_lbl 3 `"Block of flats"', add
label define gr01a_bldtype_lbl 4 `"Building whose main use is not housing"', add
label define gr01a_bldtype_lbl 9 `"NIU (not in universe)"', add
label values gr01a_bldtype gr01a_bldtype_lbl

label define gr01a_constyr_lbl 01 `"Before 1919"'
label define gr01a_constyr_lbl 02 `"1919-1945"', add
label define gr01a_constyr_lbl 03 `"1946-1960"', add
label define gr01a_constyr_lbl 04 `"1961-1970"', add
label define gr01a_constyr_lbl 05 `"1971-1980"', add
label define gr01a_constyr_lbl 06 `"1981-1985"', add
label define gr01a_constyr_lbl 07 `"1986-1990"', add
label define gr01a_constyr_lbl 08 `"1991-1995"', add
label define gr01a_constyr_lbl 09 `"1996+"', add
label define gr01a_constyr_lbl 99 `"NIU (not in universe)"', add
label values gr01a_constyr gr01a_constyr_lbl

label define gr01a_space_lbl 000 `"NIU (not in universe)"'
label define gr01a_space_lbl 005 `"5"', add
label define gr01a_space_lbl 006 `"6"', add
label define gr01a_space_lbl 007 `"7"', add
label define gr01a_space_lbl 008 `"8"', add
label define gr01a_space_lbl 009 `"9"', add
label define gr01a_space_lbl 010 `"10"', add
label define gr01a_space_lbl 011 `"11"', add
label define gr01a_space_lbl 012 `"12"', add
label define gr01a_space_lbl 013 `"13"', add
label define gr01a_space_lbl 014 `"14"', add
label define gr01a_space_lbl 015 `"15"', add
label define gr01a_space_lbl 016 `"16"', add
label define gr01a_space_lbl 017 `"17"', add
label define gr01a_space_lbl 018 `"18"', add
label define gr01a_space_lbl 019 `"19"', add
label define gr01a_space_lbl 020 `"20"', add
label define gr01a_space_lbl 021 `"21"', add
label define gr01a_space_lbl 022 `"22"', add
label define gr01a_space_lbl 023 `"23"', add
label define gr01a_space_lbl 024 `"24"', add
label define gr01a_space_lbl 025 `"25"', add
label define gr01a_space_lbl 026 `"26"', add
label define gr01a_space_lbl 027 `"27"', add
label define gr01a_space_lbl 028 `"28"', add
label define gr01a_space_lbl 029 `"29"', add
label define gr01a_space_lbl 030 `"30"', add
label define gr01a_space_lbl 031 `"31"', add
label define gr01a_space_lbl 032 `"32"', add
label define gr01a_space_lbl 033 `"33"', add
label define gr01a_space_lbl 034 `"34"', add
label define gr01a_space_lbl 035 `"35"', add
label define gr01a_space_lbl 036 `"36"', add
label define gr01a_space_lbl 037 `"37"', add
label define gr01a_space_lbl 038 `"38"', add
label define gr01a_space_lbl 039 `"39"', add
label define gr01a_space_lbl 040 `"40"', add
label define gr01a_space_lbl 041 `"41"', add
label define gr01a_space_lbl 042 `"42"', add
label define gr01a_space_lbl 043 `"43"', add
label define gr01a_space_lbl 044 `"44"', add
label define gr01a_space_lbl 045 `"45"', add
label define gr01a_space_lbl 046 `"46"', add
label define gr01a_space_lbl 047 `"47"', add
label define gr01a_space_lbl 048 `"48"', add
label define gr01a_space_lbl 049 `"49"', add
label define gr01a_space_lbl 050 `"50"', add
label define gr01a_space_lbl 051 `"51"', add
label define gr01a_space_lbl 052 `"52"', add
label define gr01a_space_lbl 053 `"53"', add
label define gr01a_space_lbl 054 `"54"', add
label define gr01a_space_lbl 055 `"55"', add
label define gr01a_space_lbl 056 `"56"', add
label define gr01a_space_lbl 057 `"57"', add
label define gr01a_space_lbl 058 `"58"', add
label define gr01a_space_lbl 059 `"59"', add
label define gr01a_space_lbl 060 `"60"', add
label define gr01a_space_lbl 061 `"61"', add
label define gr01a_space_lbl 062 `"62"', add
label define gr01a_space_lbl 063 `"63"', add
label define gr01a_space_lbl 064 `"64"', add
label define gr01a_space_lbl 065 `"65"', add
label define gr01a_space_lbl 066 `"66"', add
label define gr01a_space_lbl 067 `"67"', add
label define gr01a_space_lbl 068 `"68"', add
label define gr01a_space_lbl 069 `"69"', add
label define gr01a_space_lbl 070 `"70"', add
label define gr01a_space_lbl 071 `"71"', add
label define gr01a_space_lbl 072 `"72"', add
label define gr01a_space_lbl 073 `"73"', add
label define gr01a_space_lbl 074 `"74"', add
label define gr01a_space_lbl 075 `"75"', add
label define gr01a_space_lbl 076 `"76"', add
label define gr01a_space_lbl 077 `"77"', add
label define gr01a_space_lbl 078 `"78"', add
label define gr01a_space_lbl 079 `"79"', add
label define gr01a_space_lbl 080 `"80"', add
label define gr01a_space_lbl 081 `"81"', add
label define gr01a_space_lbl 082 `"82"', add
label define gr01a_space_lbl 083 `"83"', add
label define gr01a_space_lbl 084 `"84"', add
label define gr01a_space_lbl 085 `"85"', add
label define gr01a_space_lbl 086 `"86"', add
label define gr01a_space_lbl 087 `"87"', add
label define gr01a_space_lbl 088 `"88"', add
label define gr01a_space_lbl 089 `"89"', add
label define gr01a_space_lbl 090 `"90"', add
label define gr01a_space_lbl 091 `"91"', add
label define gr01a_space_lbl 092 `"92"', add
label define gr01a_space_lbl 093 `"93"', add
label define gr01a_space_lbl 094 `"94"', add
label define gr01a_space_lbl 095 `"95"', add
label define gr01a_space_lbl 096 `"96"', add
label define gr01a_space_lbl 097 `"97"', add
label define gr01a_space_lbl 098 `"98"', add
label define gr01a_space_lbl 099 `"99"', add
label define gr01a_space_lbl 100 `"100"', add
label define gr01a_space_lbl 101 `"101"', add
label define gr01a_space_lbl 102 `"102"', add
label define gr01a_space_lbl 103 `"103"', add
label define gr01a_space_lbl 104 `"104"', add
label define gr01a_space_lbl 105 `"105"', add
label define gr01a_space_lbl 106 `"106"', add
label define gr01a_space_lbl 107 `"107"', add
label define gr01a_space_lbl 108 `"108"', add
label define gr01a_space_lbl 109 `"109"', add
label define gr01a_space_lbl 110 `"110"', add
label define gr01a_space_lbl 111 `"111"', add
label define gr01a_space_lbl 112 `"112"', add
label define gr01a_space_lbl 113 `"113"', add
label define gr01a_space_lbl 114 `"114"', add
label define gr01a_space_lbl 115 `"115"', add
label define gr01a_space_lbl 116 `"116"', add
label define gr01a_space_lbl 117 `"117"', add
label define gr01a_space_lbl 118 `"118"', add
label define gr01a_space_lbl 119 `"119"', add
label define gr01a_space_lbl 120 `"120"', add
label define gr01a_space_lbl 121 `"121"', add
label define gr01a_space_lbl 122 `"122"', add
label define gr01a_space_lbl 123 `"123"', add
label define gr01a_space_lbl 124 `"124"', add
label define gr01a_space_lbl 125 `"125"', add
label define gr01a_space_lbl 126 `"126"', add
label define gr01a_space_lbl 127 `"127"', add
label define gr01a_space_lbl 128 `"128"', add
label define gr01a_space_lbl 129 `"129"', add
label define gr01a_space_lbl 130 `"130"', add
label define gr01a_space_lbl 131 `"131"', add
label define gr01a_space_lbl 132 `"132"', add
label define gr01a_space_lbl 133 `"133"', add
label define gr01a_space_lbl 134 `"134"', add
label define gr01a_space_lbl 135 `"135"', add
label define gr01a_space_lbl 136 `"136"', add
label define gr01a_space_lbl 137 `"137"', add
label define gr01a_space_lbl 138 `"138"', add
label define gr01a_space_lbl 139 `"139"', add
label define gr01a_space_lbl 140 `"140"', add
label define gr01a_space_lbl 141 `"141"', add
label define gr01a_space_lbl 142 `"142"', add
label define gr01a_space_lbl 143 `"143"', add
label define gr01a_space_lbl 144 `"144"', add
label define gr01a_space_lbl 145 `"145"', add
label define gr01a_space_lbl 146 `"146"', add
label define gr01a_space_lbl 147 `"147"', add
label define gr01a_space_lbl 148 `"148"', add
label define gr01a_space_lbl 149 `"149"', add
label define gr01a_space_lbl 150 `"150"', add
label define gr01a_space_lbl 151 `"151"', add
label define gr01a_space_lbl 152 `"152"', add
label define gr01a_space_lbl 153 `"153"', add
label define gr01a_space_lbl 154 `"154"', add
label define gr01a_space_lbl 155 `"155"', add
label define gr01a_space_lbl 156 `"156"', add
label define gr01a_space_lbl 157 `"157"', add
label define gr01a_space_lbl 158 `"158"', add
label define gr01a_space_lbl 159 `"159"', add
label define gr01a_space_lbl 160 `"160"', add
label define gr01a_space_lbl 161 `"161"', add
label define gr01a_space_lbl 162 `"162"', add
label define gr01a_space_lbl 163 `"163"', add
label define gr01a_space_lbl 164 `"164"', add
label define gr01a_space_lbl 165 `"165"', add
label define gr01a_space_lbl 166 `"166"', add
label define gr01a_space_lbl 167 `"167"', add
label define gr01a_space_lbl 168 `"168"', add
label define gr01a_space_lbl 169 `"169"', add
label define gr01a_space_lbl 170 `"170"', add
label define gr01a_space_lbl 171 `"171"', add
label define gr01a_space_lbl 172 `"172"', add
label define gr01a_space_lbl 173 `"173"', add
label define gr01a_space_lbl 174 `"174"', add
label define gr01a_space_lbl 175 `"175"', add
label define gr01a_space_lbl 176 `"176"', add
label define gr01a_space_lbl 177 `"177"', add
label define gr01a_space_lbl 178 `"178"', add
label define gr01a_space_lbl 179 `"179"', add
label define gr01a_space_lbl 180 `"180"', add
label define gr01a_space_lbl 181 `"181"', add
label define gr01a_space_lbl 182 `"182"', add
label define gr01a_space_lbl 183 `"183"', add
label define gr01a_space_lbl 184 `"184"', add
label define gr01a_space_lbl 185 `"185"', add
label define gr01a_space_lbl 186 `"186"', add
label define gr01a_space_lbl 187 `"187"', add
label define gr01a_space_lbl 188 `"188"', add
label define gr01a_space_lbl 189 `"189"', add
label define gr01a_space_lbl 190 `"190"', add
label define gr01a_space_lbl 191 `"191"', add
label define gr01a_space_lbl 192 `"192"', add
label define gr01a_space_lbl 193 `"193"', add
label define gr01a_space_lbl 194 `"194"', add
label define gr01a_space_lbl 195 `"195"', add
label define gr01a_space_lbl 196 `"196"', add
label define gr01a_space_lbl 197 `"197"', add
label define gr01a_space_lbl 198 `"198"', add
label define gr01a_space_lbl 199 `"199"', add
label define gr01a_space_lbl 200 `"200"', add
label define gr01a_space_lbl 201 `"201"', add
label define gr01a_space_lbl 202 `"202"', add
label define gr01a_space_lbl 203 `"203"', add
label define gr01a_space_lbl 204 `"204"', add
label define gr01a_space_lbl 205 `"205"', add
label define gr01a_space_lbl 206 `"206"', add
label define gr01a_space_lbl 207 `"207"', add
label define gr01a_space_lbl 208 `"208"', add
label define gr01a_space_lbl 209 `"209"', add
label define gr01a_space_lbl 210 `"210"', add
label define gr01a_space_lbl 211 `"211"', add
label define gr01a_space_lbl 212 `"212"', add
label define gr01a_space_lbl 213 `"213"', add
label define gr01a_space_lbl 214 `"214"', add
label define gr01a_space_lbl 215 `"215"', add
label define gr01a_space_lbl 216 `"216"', add
label define gr01a_space_lbl 217 `"217"', add
label define gr01a_space_lbl 218 `"218"', add
label define gr01a_space_lbl 219 `"219"', add
label define gr01a_space_lbl 220 `"220"', add
label define gr01a_space_lbl 221 `"221"', add
label define gr01a_space_lbl 222 `"222"', add
label define gr01a_space_lbl 223 `"223"', add
label define gr01a_space_lbl 224 `"224"', add
label define gr01a_space_lbl 225 `"225"', add
label define gr01a_space_lbl 226 `"226"', add
label define gr01a_space_lbl 227 `"227"', add
label define gr01a_space_lbl 228 `"228"', add
label define gr01a_space_lbl 229 `"229"', add
label define gr01a_space_lbl 230 `"230"', add
label define gr01a_space_lbl 231 `"231"', add
label define gr01a_space_lbl 232 `"232"', add
label define gr01a_space_lbl 233 `"233"', add
label define gr01a_space_lbl 234 `"234"', add
label define gr01a_space_lbl 235 `"235"', add
label define gr01a_space_lbl 236 `"236"', add
label define gr01a_space_lbl 237 `"237"', add
label define gr01a_space_lbl 238 `"238"', add
label define gr01a_space_lbl 239 `"239"', add
label define gr01a_space_lbl 240 `"240"', add
label define gr01a_space_lbl 241 `"241"', add
label define gr01a_space_lbl 242 `"242"', add
label define gr01a_space_lbl 243 `"243"', add
label define gr01a_space_lbl 244 `"244"', add
label define gr01a_space_lbl 245 `"245"', add
label define gr01a_space_lbl 246 `"246"', add
label define gr01a_space_lbl 247 `"247"', add
label define gr01a_space_lbl 248 `"248"', add
label define gr01a_space_lbl 249 `"249"', add
label define gr01a_space_lbl 250 `"250"', add
label define gr01a_space_lbl 251 `"251"', add
label define gr01a_space_lbl 252 `"252"', add
label define gr01a_space_lbl 253 `"253"', add
label define gr01a_space_lbl 254 `"254"', add
label define gr01a_space_lbl 255 `"255"', add
label define gr01a_space_lbl 256 `"256"', add
label define gr01a_space_lbl 257 `"257"', add
label define gr01a_space_lbl 258 `"258"', add
label define gr01a_space_lbl 259 `"259"', add
label define gr01a_space_lbl 260 `"260"', add
label define gr01a_space_lbl 261 `"261"', add
label define gr01a_space_lbl 262 `"262"', add
label define gr01a_space_lbl 263 `"263"', add
label define gr01a_space_lbl 264 `"264"', add
label define gr01a_space_lbl 265 `"265"', add
label define gr01a_space_lbl 266 `"266"', add
label define gr01a_space_lbl 267 `"267"', add
label define gr01a_space_lbl 268 `"268"', add
label define gr01a_space_lbl 269 `"269"', add
label define gr01a_space_lbl 270 `"270"', add
label define gr01a_space_lbl 271 `"271"', add
label define gr01a_space_lbl 272 `"272"', add
label define gr01a_space_lbl 273 `"273"', add
label define gr01a_space_lbl 274 `"274"', add
label define gr01a_space_lbl 275 `"275"', add
label define gr01a_space_lbl 276 `"276"', add
label define gr01a_space_lbl 277 `"277"', add
label define gr01a_space_lbl 278 `"278"', add
label define gr01a_space_lbl 279 `"279"', add
label define gr01a_space_lbl 280 `"280"', add
label define gr01a_space_lbl 281 `"281"', add
label define gr01a_space_lbl 282 `"282"', add
label define gr01a_space_lbl 283 `"283"', add
label define gr01a_space_lbl 284 `"284"', add
label define gr01a_space_lbl 285 `"285"', add
label define gr01a_space_lbl 286 `"286"', add
label define gr01a_space_lbl 287 `"287"', add
label define gr01a_space_lbl 288 `"288"', add
label define gr01a_space_lbl 289 `"289"', add
label define gr01a_space_lbl 290 `"290"', add
label define gr01a_space_lbl 291 `"291"', add
label define gr01a_space_lbl 292 `"292"', add
label define gr01a_space_lbl 293 `"293"', add
label define gr01a_space_lbl 294 `"294"', add
label define gr01a_space_lbl 295 `"295"', add
label define gr01a_space_lbl 296 `"296"', add
label define gr01a_space_lbl 297 `"297"', add
label define gr01a_space_lbl 298 `"298"', add
label define gr01a_space_lbl 299 `"299"', add
label define gr01a_space_lbl 300 `"300"', add
label define gr01a_space_lbl 301 `"301"', add
label define gr01a_space_lbl 302 `"302"', add
label define gr01a_space_lbl 303 `"303"', add
label define gr01a_space_lbl 304 `"304"', add
label define gr01a_space_lbl 305 `"305"', add
label define gr01a_space_lbl 306 `"306"', add
label define gr01a_space_lbl 307 `"307"', add
label define gr01a_space_lbl 308 `"308"', add
label define gr01a_space_lbl 309 `"309"', add
label define gr01a_space_lbl 310 `"310"', add
label define gr01a_space_lbl 311 `"311"', add
label define gr01a_space_lbl 312 `"312"', add
label define gr01a_space_lbl 313 `"313"', add
label define gr01a_space_lbl 314 `"314"', add
label define gr01a_space_lbl 315 `"315"', add
label define gr01a_space_lbl 316 `"316"', add
label define gr01a_space_lbl 317 `"317"', add
label define gr01a_space_lbl 318 `"318"', add
label define gr01a_space_lbl 319 `"319"', add
label define gr01a_space_lbl 320 `"320"', add
label define gr01a_space_lbl 321 `"321"', add
label define gr01a_space_lbl 322 `"322"', add
label define gr01a_space_lbl 324 `"324"', add
label define gr01a_space_lbl 325 `"325"', add
label define gr01a_space_lbl 326 `"326"', add
label define gr01a_space_lbl 327 `"327"', add
label define gr01a_space_lbl 328 `"328"', add
label define gr01a_space_lbl 329 `"329"', add
label define gr01a_space_lbl 330 `"330"', add
label define gr01a_space_lbl 332 `"332"', add
label define gr01a_space_lbl 333 `"333"', add
label define gr01a_space_lbl 334 `"334"', add
label define gr01a_space_lbl 335 `"335"', add
label define gr01a_space_lbl 336 `"336"', add
label define gr01a_space_lbl 337 `"337"', add
label define gr01a_space_lbl 338 `"338"', add
label define gr01a_space_lbl 340 `"340"', add
label define gr01a_space_lbl 341 `"341"', add
label define gr01a_space_lbl 342 `"342"', add
label define gr01a_space_lbl 345 `"345"', add
label define gr01a_space_lbl 346 `"346"', add
label define gr01a_space_lbl 348 `"348"', add
label define gr01a_space_lbl 349 `"349"', add
label define gr01a_space_lbl 350 `"350"', add
label define gr01a_space_lbl 354 `"354"', add
label define gr01a_space_lbl 356 `"356"', add
label define gr01a_space_lbl 357 `"357"', add
label define gr01a_space_lbl 358 `"358"', add
label define gr01a_space_lbl 360 `"360"', add
label define gr01a_space_lbl 362 `"362"', add
label define gr01a_space_lbl 363 `"363"', add
label define gr01a_space_lbl 364 `"364"', add
label define gr01a_space_lbl 365 `"365"', add
label define gr01a_space_lbl 367 `"367"', add
label define gr01a_space_lbl 369 `"369"', add
label define gr01a_space_lbl 370 `"370"', add
label define gr01a_space_lbl 371 `"371"', add
label define gr01a_space_lbl 372 `"372"', add
label define gr01a_space_lbl 375 `"375"', add
label define gr01a_space_lbl 378 `"378"', add
label define gr01a_space_lbl 380 `"380"', add
label define gr01a_space_lbl 383 `"383"', add
label define gr01a_space_lbl 384 `"384"', add
label define gr01a_space_lbl 385 `"385"', add
label define gr01a_space_lbl 386 `"386"', add
label define gr01a_space_lbl 390 `"390"', add
label define gr01a_space_lbl 394 `"394"', add
label define gr01a_space_lbl 395 `"395"', add
label define gr01a_space_lbl 398 `"398"', add
label define gr01a_space_lbl 399 `"399"', add
label define gr01a_space_lbl 400 `"400"', add
label define gr01a_space_lbl 402 `"402"', add
label define gr01a_space_lbl 404 `"404"', add
label define gr01a_space_lbl 405 `"405"', add
label define gr01a_space_lbl 406 `"406"', add
label define gr01a_space_lbl 407 `"407"', add
label define gr01a_space_lbl 410 `"410"', add
label define gr01a_space_lbl 412 `"412"', add
label define gr01a_space_lbl 414 `"414"', add
label define gr01a_space_lbl 416 `"416"', add
label define gr01a_space_lbl 420 `"420"', add
label define gr01a_space_lbl 424 `"424"', add
label define gr01a_space_lbl 430 `"430"', add
label define gr01a_space_lbl 440 `"440"', add
label define gr01a_space_lbl 444 `"444"', add
label define gr01a_space_lbl 445 `"445"', add
label define gr01a_space_lbl 448 `"448"', add
label define gr01a_space_lbl 450 `"450"', add
label define gr01a_space_lbl 452 `"452"', add
label define gr01a_space_lbl 460 `"460"', add
label define gr01a_space_lbl 470 `"470"', add
label define gr01a_space_lbl 477 `"477"', add
label define gr01a_space_lbl 480 `"480"', add
label define gr01a_space_lbl 489 `"489"', add
label define gr01a_space_lbl 490 `"490"', add
label define gr01a_space_lbl 498 `"498"', add
label define gr01a_space_lbl 499 `"499"', add
label define gr01a_space_lbl 500 `"500+"', add
label values gr01a_space gr01a_space_lbl

label define gr01a_roomspr_lbl 00 `"0"'
label define gr01a_roomspr_lbl 01 `"1"', add
label define gr01a_roomspr_lbl 02 `"2"', add
label define gr01a_roomspr_lbl 03 `"3+"', add
label define gr01a_roomspr_lbl 99 `"NIU (not in universe)"', add
label values gr01a_roomspr gr01a_roomspr_lbl

label define gr01a_kitch_lbl 1 `"Yes"'
label define gr01a_kitch_lbl 2 `"No"', add
label define gr01a_kitch_lbl 9 `"NIU (not in universe)"', add
label values gr01a_kitch gr01a_kitch_lbl

label define gr01a_kitchr_lbl 1 `"Yes"'
label define gr01a_kitchr_lbl 2 `"No"', add
label define gr01a_kitchr_lbl 9 `"NIU (not in universe)"', add
label values gr01a_kitchr gr01a_kitchr_lbl

label define gr01a_elect_lbl 1 `"Yes"'
label define gr01a_elect_lbl 2 `"No"', add
label define gr01a_elect_lbl 9 `"NIU (not in universe)"', add
label values gr01a_elect gr01a_elect_lbl

label define gr01a_water_lbl 1 `"In the dwelling, from network"'
label define gr01a_water_lbl 2 `"In the dwelling, without network"', add
label define gr01a_water_lbl 3 `"Outside the dwelling but in the building, from network"', add
label define gr01a_water_lbl 4 `"Outside the dwelling but in the building, without network"', add
label define gr01a_water_lbl 5 `"Outside the building, from network"', add
label define gr01a_water_lbl 6 `"Outside the building, without network"', add
label define gr01a_water_lbl 9 `"NIU (not in universe)"', add
label values gr01a_water gr01a_water_lbl

label define gr01a_bath_lbl 1 `"Inside the dwelling"'
label define gr01a_bath_lbl 2 `"Outside the dwelling, Private"', add
label define gr01a_bath_lbl 3 `"Outide the dwelling, Communal"', add
label define gr01a_bath_lbl 4 `"There is no bath or shower"', add
label define gr01a_bath_lbl 9 `"NIU (not in universe)"', add
label values gr01a_bath gr01a_bath_lbl

label define gr01a_sewage_lbl 1 `"Sewage network"'
label define gr01a_sewage_lbl 2 `"Other system (sink etc.)"', add
label define gr01a_sewage_lbl 3 `"No sewage available"', add
label define gr01a_sewage_lbl 9 `"NIU (not in universe)"', add
label values gr01a_sewage gr01a_sewage_lbl

label define gr01a_toilet_lbl 1 `"Flush toilet, inside the dwelling"'
label define gr01a_toilet_lbl 2 `"Flush toilet, outside the dwelling"', add
label define gr01a_toilet_lbl 3 `"Without flush toilet, inside the dwelling"', add
label define gr01a_toilet_lbl 4 `"Without flush toilet, outside the dwelling"', add
label define gr01a_toilet_lbl 5 `"No toilet available"', add
label define gr01a_toilet_lbl 9 `"NIU (not in universe)"', add
label values gr01a_toilet gr01a_toilet_lbl

label define gr01a_heat_lbl 1 `"Central heating"'
label define gr01a_heat_lbl 2 `"Other"', add
label define gr01a_heat_lbl 3 `"No heating available"', add
label define gr01a_heat_lbl 9 `"NIU (not in universe)"', add
label values gr01a_heat gr01a_heat_lbl

label define gr01a_owner_lbl 1 `"Individual person"'
label define gr01a_owner_lbl 2 `"Legal entity of private law (company, union etc.)"', add
label define gr01a_owner_lbl 3 `"The state or legal entity of public law (municipality, social insurance organization etc.)"', add
label define gr01a_owner_lbl 9 `"NIU (not in universe)"', add
label values gr01a_owner gr01a_owner_lbl

label define gr01a_ownershp_lbl 1 `"Owner"'
label define gr01a_ownershp_lbl 2 `"Renter"', add
label define gr01a_ownershp_lbl 3 `"Other"', add
label define gr01a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values gr01a_ownershp gr01a_ownershp_lbl

label define gr01a_pernum_lbl 00 `"Household record"'
label define gr01a_pernum_lbl 01 `"1"', add
label define gr01a_pernum_lbl 02 `"2"', add
label define gr01a_pernum_lbl 03 `"3"', add
label define gr01a_pernum_lbl 04 `"4"', add
label define gr01a_pernum_lbl 05 `"5"', add
label define gr01a_pernum_lbl 06 `"6"', add
label define gr01a_pernum_lbl 07 `"7"', add
label define gr01a_pernum_lbl 08 `"8"', add
label define gr01a_pernum_lbl 09 `"9"', add
label define gr01a_pernum_lbl 10 `"10"', add
label define gr01a_pernum_lbl 11 `"11"', add
label define gr01a_pernum_lbl 12 `"12"', add
label define gr01a_pernum_lbl 13 `"13"', add
label define gr01a_pernum_lbl 14 `"14"', add
label define gr01a_pernum_lbl 15 `"15"', add
label define gr01a_pernum_lbl 16 `"16"', add
label define gr01a_pernum_lbl 17 `"17"', add
label define gr01a_pernum_lbl 18 `"18"', add
label define gr01a_pernum_lbl 19 `"19"', add
label define gr01a_pernum_lbl 20 `"20"', add
label define gr01a_pernum_lbl 21 `"21"', add
label define gr01a_pernum_lbl 22 `"22"', add
label define gr01a_pernum_lbl 23 `"23"', add
label define gr01a_pernum_lbl 24 `"24"', add
label define gr01a_pernum_lbl 25 `"25"', add
label define gr01a_pernum_lbl 26 `"26"', add
label define gr01a_pernum_lbl 27 `"27"', add
label values gr01a_pernum gr01a_pernum_lbl

label define gr01a_pernumo_lbl 01 `"1"'
label define gr01a_pernumo_lbl 02 `"2"', add
label define gr01a_pernumo_lbl 03 `"3"', add
label define gr01a_pernumo_lbl 04 `"4"', add
label define gr01a_pernumo_lbl 05 `"5"', add
label define gr01a_pernumo_lbl 06 `"6"', add
label define gr01a_pernumo_lbl 07 `"7"', add
label define gr01a_pernumo_lbl 08 `"8"', add
label define gr01a_pernumo_lbl 09 `"9"', add
label define gr01a_pernumo_lbl 10 `"10"', add
label define gr01a_pernumo_lbl 11 `"11"', add
label define gr01a_pernumo_lbl 12 `"12"', add
label define gr01a_pernumo_lbl 13 `"13"', add
label define gr01a_pernumo_lbl 14 `"14"', add
label define gr01a_pernumo_lbl 15 `"15"', add
label define gr01a_pernumo_lbl 16 `"16"', add
label define gr01a_pernumo_lbl 17 `"17"', add
label define gr01a_pernumo_lbl 18 `"18"', add
label define gr01a_pernumo_lbl 19 `"19"', add
label define gr01a_pernumo_lbl 20 `"20"', add
label define gr01a_pernumo_lbl 21 `"21"', add
label define gr01a_pernumo_lbl 22 `"22"', add
label define gr01a_pernumo_lbl 23 `"23"', add
label define gr01a_pernumo_lbl 24 `"24"', add
label define gr01a_pernumo_lbl 25 `"25"', add
label define gr01a_pernumo_lbl 26 `"26"', add
label define gr01a_pernumo_lbl 27 `"27"', add
label values gr01a_pernumo gr01a_pernumo_lbl

label define gr01a_sex_lbl 1 `"Male"'
label define gr01a_sex_lbl 2 `"Female"', add
label values gr01a_sex gr01a_sex_lbl

label define gr01a_birthyr_lbl 1899 `"1899 or earlier"'
label define gr01a_birthyr_lbl 1900 `"1900"', add
label define gr01a_birthyr_lbl 1901 `"1901"', add
label define gr01a_birthyr_lbl 1902 `"1902"', add
label define gr01a_birthyr_lbl 1903 `"1903"', add
label define gr01a_birthyr_lbl 1904 `"1904"', add
label define gr01a_birthyr_lbl 1905 `"1905"', add
label define gr01a_birthyr_lbl 1906 `"1906"', add
label define gr01a_birthyr_lbl 1907 `"1907"', add
label define gr01a_birthyr_lbl 1908 `"1908"', add
label define gr01a_birthyr_lbl 1909 `"1909"', add
label define gr01a_birthyr_lbl 1910 `"1910"', add
label define gr01a_birthyr_lbl 1911 `"1911"', add
label define gr01a_birthyr_lbl 1912 `"1912"', add
label define gr01a_birthyr_lbl 1913 `"1913"', add
label define gr01a_birthyr_lbl 1914 `"1914"', add
label define gr01a_birthyr_lbl 1915 `"1915"', add
label define gr01a_birthyr_lbl 1916 `"1916"', add
label define gr01a_birthyr_lbl 1917 `"1917"', add
label define gr01a_birthyr_lbl 1918 `"1918"', add
label define gr01a_birthyr_lbl 1919 `"1919"', add
label define gr01a_birthyr_lbl 1920 `"1920"', add
label define gr01a_birthyr_lbl 1921 `"1921"', add
label define gr01a_birthyr_lbl 1922 `"1922"', add
label define gr01a_birthyr_lbl 1923 `"1923"', add
label define gr01a_birthyr_lbl 1924 `"1924"', add
label define gr01a_birthyr_lbl 1925 `"1925"', add
label define gr01a_birthyr_lbl 1926 `"1926"', add
label define gr01a_birthyr_lbl 1927 `"1927"', add
label define gr01a_birthyr_lbl 1928 `"1928"', add
label define gr01a_birthyr_lbl 1929 `"1929"', add
label define gr01a_birthyr_lbl 1930 `"1930"', add
label define gr01a_birthyr_lbl 1931 `"1931"', add
label define gr01a_birthyr_lbl 1932 `"1932"', add
label define gr01a_birthyr_lbl 1933 `"1933"', add
label define gr01a_birthyr_lbl 1934 `"1934"', add
label define gr01a_birthyr_lbl 1935 `"1935"', add
label define gr01a_birthyr_lbl 1936 `"1936"', add
label define gr01a_birthyr_lbl 1937 `"1937"', add
label define gr01a_birthyr_lbl 1938 `"1938"', add
label define gr01a_birthyr_lbl 1939 `"1939"', add
label define gr01a_birthyr_lbl 1940 `"1940"', add
label define gr01a_birthyr_lbl 1941 `"1941"', add
label define gr01a_birthyr_lbl 1942 `"1942"', add
label define gr01a_birthyr_lbl 1943 `"1943"', add
label define gr01a_birthyr_lbl 1944 `"1944"', add
label define gr01a_birthyr_lbl 1945 `"1945"', add
label define gr01a_birthyr_lbl 1946 `"1946"', add
label define gr01a_birthyr_lbl 1947 `"1947"', add
label define gr01a_birthyr_lbl 1948 `"1948"', add
label define gr01a_birthyr_lbl 1949 `"1949"', add
label define gr01a_birthyr_lbl 1950 `"1950"', add
label define gr01a_birthyr_lbl 1951 `"1951"', add
label define gr01a_birthyr_lbl 1952 `"1952"', add
label define gr01a_birthyr_lbl 1953 `"1953"', add
label define gr01a_birthyr_lbl 1954 `"1954"', add
label define gr01a_birthyr_lbl 1955 `"1955"', add
label define gr01a_birthyr_lbl 1956 `"1956"', add
label define gr01a_birthyr_lbl 1957 `"1957"', add
label define gr01a_birthyr_lbl 1958 `"1958"', add
label define gr01a_birthyr_lbl 1959 `"1959"', add
label define gr01a_birthyr_lbl 1960 `"1960"', add
label define gr01a_birthyr_lbl 1961 `"1961"', add
label define gr01a_birthyr_lbl 1962 `"1962"', add
label define gr01a_birthyr_lbl 1963 `"1963"', add
label define gr01a_birthyr_lbl 1964 `"1964"', add
label define gr01a_birthyr_lbl 1965 `"1965"', add
label define gr01a_birthyr_lbl 1966 `"1966"', add
label define gr01a_birthyr_lbl 1967 `"1967"', add
label define gr01a_birthyr_lbl 1968 `"1968"', add
label define gr01a_birthyr_lbl 1969 `"1969"', add
label define gr01a_birthyr_lbl 1970 `"1970"', add
label define gr01a_birthyr_lbl 1971 `"1971"', add
label define gr01a_birthyr_lbl 1972 `"1972"', add
label define gr01a_birthyr_lbl 1973 `"1973"', add
label define gr01a_birthyr_lbl 1974 `"1974"', add
label define gr01a_birthyr_lbl 1975 `"1975"', add
label define gr01a_birthyr_lbl 1976 `"1976"', add
label define gr01a_birthyr_lbl 1977 `"1977"', add
label define gr01a_birthyr_lbl 1978 `"1978"', add
label define gr01a_birthyr_lbl 1979 `"1979"', add
label define gr01a_birthyr_lbl 1980 `"1980"', add
label define gr01a_birthyr_lbl 1981 `"1981"', add
label define gr01a_birthyr_lbl 1982 `"1982"', add
label define gr01a_birthyr_lbl 1983 `"1983"', add
label define gr01a_birthyr_lbl 1984 `"1984"', add
label define gr01a_birthyr_lbl 1985 `"1985"', add
label define gr01a_birthyr_lbl 1986 `"1986"', add
label define gr01a_birthyr_lbl 1987 `"1987"', add
label define gr01a_birthyr_lbl 1988 `"1988"', add
label define gr01a_birthyr_lbl 1989 `"1989"', add
label define gr01a_birthyr_lbl 1990 `"1990"', add
label define gr01a_birthyr_lbl 1991 `"1991"', add
label define gr01a_birthyr_lbl 1992 `"1992"', add
label define gr01a_birthyr_lbl 1993 `"1993"', add
label define gr01a_birthyr_lbl 1994 `"1994"', add
label define gr01a_birthyr_lbl 1995 `"1995"', add
label define gr01a_birthyr_lbl 1996 `"1996"', add
label define gr01a_birthyr_lbl 1997 `"1997"', add
label define gr01a_birthyr_lbl 1998 `"1998"', add
label define gr01a_birthyr_lbl 1999 `"1999"', add
label define gr01a_birthyr_lbl 2000 `"2000"', add
label define gr01a_birthyr_lbl 2001 `"2001"', add
label values gr01a_birthyr gr01a_birthyr_lbl

label define gr01a_absent_lbl 1 `"Present"'
label define gr01a_absent_lbl 2 `"Temporarily absent is now: in this municipality or commune"', add
label define gr01a_absent_lbl 3 `"Temporarily absent is now: in other municipality or commune"', add
label define gr01a_absent_lbl 4 `"Temporarily absent is now: abroad"', add
label values gr01a_absent gr01a_absent_lbl

label define gr01a_marst_lbl 1 `"Single"'
label define gr01a_marst_lbl 2 `"Married"', add
label define gr01a_marst_lbl 3 `"Widowed"', add
label define gr01a_marst_lbl 4 `"Divorced"', add
label define gr01a_marst_lbl 5 `"Separated"', add
label values gr01a_marst gr01a_marst_lbl

label define gr01a_bpl_lbl 1 `"At the place of enumeration"'
label define gr01a_bpl_lbl 2 `"Other municipality, same stratum"', add
label define gr01a_bpl_lbl 3 `"Other municipality, different stratum"', add
label define gr01a_bpl_lbl 4 `"Other department"', add
label define gr01a_bpl_lbl 5 `"Abroad"', add
label values gr01a_bpl gr01a_bpl_lbl

label define gr01a_bplmuni_lbl 00103 `"Municipality of Agrinio"'
label define gr01a_bplmuni_lbl 00199 `"Rest of Department Etolia and Akarnania"', add
label define gr01a_bplmuni_lbl 00301 `"Municipality of Levadia"', add
label define gr01a_bplmuni_lbl 00310 `"Municipality of Thiva"', add
label define gr01a_bplmuni_lbl 00399 `"Rest of Department Viotia"', add
label define gr01a_bplmuni_lbl 00401 `"Municipality of Chalkida"', add
label define gr01a_bplmuni_lbl 00499 `"Rest of Department Evia"', add
label define gr01a_bplmuni_lbl 00599 `"Rest of Department Evrytania"', add
label define gr01a_bplmuni_lbl 00601 `"Municipality of Lamia"', add
label define gr01a_bplmuni_lbl 00699 `"Rest of Department Fthiotida"', add
label define gr01a_bplmuni_lbl 00799 `"Rest of Department Fokida"', add
label define gr01a_bplmuni_lbl 01102 `"Municipality of Argos"', add
label define gr01a_bplmuni_lbl 01199 `"Rest of Department Argolida"', add
label define gr01a_bplmuni_lbl 01201 `"Municipality of Tripoli"', add
label define gr01a_bplmuni_lbl 01299 `"Rest of Department Arkadia"', add
label define gr01a_bplmuni_lbl 01301 `"Municipality of Patra"', add
label define gr01a_bplmuni_lbl 01303 `"Municipality of Aegio"', add
label define gr01a_bplmuni_lbl 01399 `"Rest of Department Achaia"', add
label define gr01a_bplmuni_lbl 01401 `"Municipality of Pyrgos"', add
label define gr01a_bplmuni_lbl 01403 `"Municipality of Amaliada"', add
label define gr01a_bplmuni_lbl 01499 `"Rest of Department Ilia"', add
label define gr01a_bplmuni_lbl 01501 `"Municipality of Korinthos"', add
label define gr01a_bplmuni_lbl 01599 `"Rest of Department Korinthia"', add
label define gr01a_bplmuni_lbl 01699 `"Rest of Department Lakonia"', add
label define gr01a_bplmuni_lbl 01701 `"Municipality of Kalamata"', add
label define gr01a_bplmuni_lbl 01799 `"Rest of Department Messinia"', add
label define gr01a_bplmuni_lbl 02199 `"Rest of Department Zakynthos"', add
label define gr01a_bplmuni_lbl 02201 `"Municipality of Kerkyra"', add
label define gr01a_bplmuni_lbl 02299 `"Rest of Department Kerkyra"', add
label define gr01a_bplmuni_lbl 02399 `"Rest of Department Kefallinia"', add
label define gr01a_bplmuni_lbl 02499 `"Rest of Department Lefkada"', add
label define gr01a_bplmuni_lbl 03101 `"Municipality of Arta"', add
label define gr01a_bplmuni_lbl 03199 `"Rest of Department Arta"', add
label define gr01a_bplmuni_lbl 03299 `"Rest of Department Thesprotia"', add
label define gr01a_bplmuni_lbl 03301 `"Municipality of Ioannina"', add
label define gr01a_bplmuni_lbl 03399 `"Rest of Department Ioannina"', add
label define gr01a_bplmuni_lbl 03499 `"Rest of Department Preveza"', add
label define gr01a_bplmuni_lbl 04101 `"Municipality of Karditsa"', add
label define gr01a_bplmuni_lbl 04199 `"Rest of Department Karditsa"', add
label define gr01a_bplmuni_lbl 04201 `"Municipality of Larissa"', add
label define gr01a_bplmuni_lbl 04299 `"Rest of Department Larissa"', add
label define gr01a_bplmuni_lbl 04301 `"Municipality of Volos"', add
label define gr01a_bplmuni_lbl 04315 `"Municipality of Nea Ionia"', add
label define gr01a_bplmuni_lbl 04399 `"Rest of Department Magnissia"', add
label define gr01a_bplmuni_lbl 04401 `"Municipality of Trikala"', add
label define gr01a_bplmuni_lbl 04499 `"Rest of Department Trikala"', add
label define gr01a_bplmuni_lbl 05199 `"Rest of Department Grevena"', add
label define gr01a_bplmuni_lbl 05201 `"Municipality of Drama"', add
label define gr01a_bplmuni_lbl 05299 `"Rest of Department Drama"', add
label define gr01a_bplmuni_lbl 05301 `"Municipality of Veria"', add
label define gr01a_bplmuni_lbl 05311 `"Municipality of Naoussa"', add
label define gr01a_bplmuni_lbl 05399 `"Rest of Department Imathia"', add
label define gr01a_bplmuni_lbl 05401 `"Municipality of Thessaloniki"', add
label define gr01a_bplmuni_lbl 05405 `"Municipality of Abelokipi"', add
label define gr01a_bplmuni_lbl 05413 `"Municipality of Eleftherio-Kordelio"', add
label define gr01a_bplmuni_lbl 05415 `"Municipality of Evosmo"', add
label define gr01a_bplmuni_lbl 05416 `"Municipality of Echedoro"', add
label define gr01a_bplmuni_lbl 05417 `"Municipality of Thermaikos"', add
label define gr01a_bplmuni_lbl 05419 `"Municipality of Kalamaria"', add
label define gr01a_bplmuni_lbl 05431 `"Municipality of Neapoli"', add
label define gr01a_bplmuni_lbl 05433 `"Municipality of Polichni"', add
label define gr01a_bplmuni_lbl 05434 `"Municipality of Pylea"', add
label define gr01a_bplmuni_lbl 05437 `"Municipality of Stavroupoli"', add
label define gr01a_bplmuni_lbl 05438 `"Municipality of Sykees"', add
label define gr01a_bplmuni_lbl 05499 `"Rest of Department Thessaloniki"', add
label define gr01a_bplmuni_lbl 05501 `"Municipality of Kavala"', add
label define gr01a_bplmuni_lbl 05599 `"Rest of Department Kavala"', add
label define gr01a_bplmuni_lbl 05699 `"Rest of Department Kastoria"', add
label define gr01a_bplmuni_lbl 05701 `"Municipality of Kilkis"', add
label define gr01a_bplmuni_lbl 05799 `"Rest of Department Kilkis"', add
label define gr01a_bplmuni_lbl 05801 `"Municipality of Kozani"', add
label define gr01a_bplmuni_lbl 05813 `"Municipality of Ptolemaida"', add
label define gr01a_bplmuni_lbl 05899 `"Rest of Department Kozani"', add
label define gr01a_bplmuni_lbl 05901 `"Municipality of Edessa"', add
label define gr01a_bplmuni_lbl 05902 `"Municipality of Aridea"', add
label define gr01a_bplmuni_lbl 05904 `"Municipality of Giannitsa"', add
label define gr01a_bplmuni_lbl 05999 `"Rest of Department Pella"', add
label define gr01a_bplmuni_lbl 06101 `"Municipality of Katerini"', add
label define gr01a_bplmuni_lbl 06199 `"Rest of Department Pieria"', add
label define gr01a_bplmuni_lbl 06201 `"Municipality of Serres"', add
label define gr01a_bplmuni_lbl 06299 `"Rest of Department Serres"', add
label define gr01a_bplmuni_lbl 06399 `"Rest of Department Florina"', add
label define gr01a_bplmuni_lbl 06499 `"Rest of Department Chalkidiki"', add
label define gr01a_bplmuni_lbl 07101 `"Municipality of Alexandroupoli"', add
label define gr01a_bplmuni_lbl 07106 `"Municipality of Orestiada"', add
label define gr01a_bplmuni_lbl 07199 `"Rest of Department Evros"', add
label define gr01a_bplmuni_lbl 07201 `"Municipality of Xanthi"', add
label define gr01a_bplmuni_lbl 07299 `"Rest of Department Xanthi"', add
label define gr01a_bplmuni_lbl 07301 `"Municipality of Komotini"', add
label define gr01a_bplmuni_lbl 07399 `"Rest of Department Rodopi"', add
label define gr01a_bplmuni_lbl 08101 `"Municipality of Rodos"', add
label define gr01a_bplmuni_lbl 08199 `"Rest of Department Dodekanissos"', add
label define gr01a_bplmuni_lbl 08299 `"Rest of Department Kyklades"', add
label define gr01a_bplmuni_lbl 08301 `"Municipality of Mytilini"', add
label define gr01a_bplmuni_lbl 08399 `"Rest of Department Lesvos"', add
label define gr01a_bplmuni_lbl 08499 `"Rest of Department Samos"', add
label define gr01a_bplmuni_lbl 08501 `"Municipality of Chios"', add
label define gr01a_bplmuni_lbl 08599 `"Rest of Department Chios"', add
label define gr01a_bplmuni_lbl 09101 `"Municipality of Iraklio"', add
label define gr01a_bplmuni_lbl 09199 `"Rest of Department Iraklio"', add
label define gr01a_bplmuni_lbl 09202 `"Municipality of Ierapetra"', add
label define gr01a_bplmuni_lbl 09299 `"Rest of Department Lassithi"', add
label define gr01a_bplmuni_lbl 09301 `"Municipality of Rethymno"', add
label define gr01a_bplmuni_lbl 09399 `"Rest of Department Rethymno"', add
label define gr01a_bplmuni_lbl 09401 `"Municipality of Chania"', add
label define gr01a_bplmuni_lbl 09499 `"Rest of Department Chania"', add
label define gr01a_bplmuni_lbl 10101 `"Municipality of Athens"', add
label define gr01a_bplmuni_lbl 10102 `"Municipality of Aghia Varvara"', add
label define gr01a_bplmuni_lbl 10103 `"Municipality of Aghia Paraskevi"', add
label define gr01a_bplmuni_lbl 10104 `"Municipality of Aghios Dimitrios"', add
label define gr01a_bplmuni_lbl 10105 `"Municipality of Aghii Anargyri"', add
label define gr01a_bplmuni_lbl 10106 `"Municipality of Aegaleo"', add
label define gr01a_bplmuni_lbl 10107 `"Municipality of Alimos"', add
label define gr01a_bplmuni_lbl 10108 `"Municipality of Amaroussio"', add
label define gr01a_bplmuni_lbl 10109 `"Municipality of Argyroupoli"', add
label define gr01a_bplmuni_lbl 10110 `"Municipality of Vrilissia"', add
label define gr01a_bplmuni_lbl 10111 `"Municipality of Vyron"', add
label define gr01a_bplmuni_lbl 10112 `"Municipality of Galatsi"', add
label define gr01a_bplmuni_lbl 10113 `"Municipality of Glyfada"', add
label define gr01a_bplmuni_lbl 10114 `"Municipality of Dafni"', add
label define gr01a_bplmuni_lbl 10116 `"Municipality of Zografos"', add
label define gr01a_bplmuni_lbl 10117 `"Municipality of Ilioupoli"', add
label define gr01a_bplmuni_lbl 10118 `"Municipality of Iraklio"', add
label define gr01a_bplmuni_lbl 10119 `"Municipality of Ilio (Nea Liossia)"', add
label define gr01a_bplmuni_lbl 10120 `"Municipality of Kessariani"', add
label define gr01a_bplmuni_lbl 10121 `"Municipality of Kallithea"', add
label define gr01a_bplmuni_lbl 10122 `"Municipality of Kamatero"', add
label define gr01a_bplmuni_lbl 10123 `"Municipality of Kifissia"', add
label define gr01a_bplmuni_lbl 10126 `"Municipality of Metamorfossi"', add
label define gr01a_bplmuni_lbl 10127 `"Municipality of Moschato"', add
label define gr01a_bplmuni_lbl 10129 `"Municipality of Nea Ionia"', add
label define gr01a_bplmuni_lbl 10130 `"Municipality of Nea Smyrni"', add
label define gr01a_bplmuni_lbl 10131 `"Municipality of Nea Philadelfia"', add
label define gr01a_bplmuni_lbl 10134 `"Municipality of Paleo Faliro"', add
label define gr01a_bplmuni_lbl 10136 `"Municipality of Peristeri"', add
label define gr01a_bplmuni_lbl 10137 `"Municipality of Petroupoli"', add
label define gr01a_bplmuni_lbl 10142 `"Municipality of Chaidari"', add
label define gr01a_bplmuni_lbl 10143 `"Municipality of Chalandri"', add
label define gr01a_bplmuni_lbl 10144 `"Municipality of Cholargos"', add
label define gr01a_bplmuni_lbl 10199 `"Rest of Prefecture Athens"', add
label define gr01a_bplmuni_lbl 10205 `"Municipality of Acharnes"', add
label define gr01a_bplmuni_lbl 10207 `"Municipality of Voula"', add
label define gr01a_bplmuni_lbl 10213 `"Municipality of Koropi"', add
label define gr01a_bplmuni_lbl 10299 `"Rest of Prefecture East Attiki"', add
label define gr01a_bplmuni_lbl 10301 `"Municipality of Elefsina"', add
label define gr01a_bplmuni_lbl 10302 `"Municipality of Ano Liossia"', add
label define gr01a_bplmuni_lbl 10303 `"Municipality of Aspropyrgos"', add
label define gr01a_bplmuni_lbl 10308 `"Municipality of Megara"', add
label define gr01a_bplmuni_lbl 10399 `"Rest of Prefecture West Attiki"', add
label define gr01a_bplmuni_lbl 10401 `"Municipality of Pireas"', add
label define gr01a_bplmuni_lbl 10406 `"Municipality of Keratsini"', add
label define gr01a_bplmuni_lbl 10407 `"Municipality of Korydallos"', add
label define gr01a_bplmuni_lbl 10410 `"Municipality of Nikea"', add
label define gr01a_bplmuni_lbl 10411 `"Municipality of Perama"', add
label define gr01a_bplmuni_lbl 10413 `"Municipality of Salamina"', add
label define gr01a_bplmuni_lbl 10499 `"Rest of Prefecture Pireas"', add
label define gr01a_bplmuni_lbl 20105 `"Albania"', add
label define gr01a_bplmuni_lbl 20109 `"Argentina"', add
label define gr01a_bplmuni_lbl 20110 `"Armenia"', add
label define gr01a_bplmuni_lbl 20113 `"Australia"', add
label define gr01a_bplmuni_lbl 20114 `"Austria"', add
label define gr01a_bplmuni_lbl 20202 `"Belgium"', add
label define gr01a_bplmuni_lbl 20203 `"Bangladesh"', add
label define gr01a_bplmuni_lbl 20204 `"Bulgaria"', add
label define gr01a_bplmuni_lbl 20207 `"Bosnia and Herzegovina"', add
label define gr01a_bplmuni_lbl 20208 `"Belarus"', add
label define gr01a_bplmuni_lbl 20210 `"Brazil"', add
label define gr01a_bplmuni_lbl 20302 `"Canada"', add
label define gr01a_bplmuni_lbl 20303 `"Switzerland"', add
label define gr01a_bplmuni_lbl 20304 `"Chile"', add
label define gr01a_bplmuni_lbl 20305 `"China"', add
label define gr01a_bplmuni_lbl 20307 `"Cameroon"', add
label define gr01a_bplmuni_lbl 20309 `"Colombia"', add
label define gr01a_bplmuni_lbl 20314 `"Cyprus"', add
label define gr01a_bplmuni_lbl 20315 `"Czech Republic"', add
label define gr01a_bplmuni_lbl 20401 `"Germany"', add
label define gr01a_bplmuni_lbl 20403 `"Dominica"', add
label define gr01a_bplmuni_lbl 20404 `"Denmark"', add
label define gr01a_bplmuni_lbl 20502 `"Egypt"', add
label define gr01a_bplmuni_lbl 20505 `"Spain"', add
label define gr01a_bplmuni_lbl 20507 `"Ethiopia"', add
label define gr01a_bplmuni_lbl 20601 `"Finland"', add
label define gr01a_bplmuni_lbl 20603 `"France"', add
label define gr01a_bplmuni_lbl 20702 `"United Kindom"', add
label define gr01a_bplmuni_lbl 20703 `"Georgia"', add
label define gr01a_bplmuni_lbl 20705 `"Ghana"', add
label define gr01a_bplmuni_lbl 20709 `"Congo"', add
label define gr01a_bplmuni_lbl 20803 `"Croatia"', add
label define gr01a_bplmuni_lbl 20805 `"Hungary"', add
label define gr01a_bplmuni_lbl 20902 `"India"', add
label define gr01a_bplmuni_lbl 20903 `"Ireland"', add
label define gr01a_bplmuni_lbl 20904 `"Iran (Islamic Republic of)"', add
label define gr01a_bplmuni_lbl 20905 `"Iraq"', add
label define gr01a_bplmuni_lbl 20907 `"Israel"', add
label define gr01a_bplmuni_lbl 20908 `"Italy"', add
label define gr01a_bplmuni_lbl 21002 `"Jordan"', add
label define gr01a_bplmuni_lbl 21003 `"Japan"', add
label define gr01a_bplmuni_lbl 21101 `"Kazakstan"', add
label define gr01a_bplmuni_lbl 21102 `"Kenya"', add
label define gr01a_bplmuni_lbl 21202 `"Lebanon"', add
label define gr01a_bplmuni_lbl 21204 `"Libyan Arab Jamahiriya"', add
label define gr01a_bplmuni_lbl 21205 `"Sri Lanka"', add
label define gr01a_bplmuni_lbl 21301 `"Morocco"', add
label define gr01a_bplmuni_lbl 21303 `"Republic of Moldova"', add
label define gr01a_bplmuni_lbl 21306 `"Mexico"', add
label define gr01a_bplmuni_lbl 21308 `"The former Yugoslav Republic of Macedonia"', add
label define gr01a_bplmuni_lbl 21404 `"Nigeria"', add
label define gr01a_bplmuni_lbl 21407 `"Netherlands"', add
label define gr01a_bplmuni_lbl 21408 `"Norway"', add
label define gr01a_bplmuni_lbl 21411 `"New Zealand"', add
label define gr01a_bplmuni_lbl 21601 `"Pakistan"', add
label define gr01a_bplmuni_lbl 21604 `"Philippines"', add
label define gr01a_bplmuni_lbl 21607 `"Poland"', add
label define gr01a_bplmuni_lbl 21610 `"Portugal"', add
label define gr01a_bplmuni_lbl 21612 `"Occupied Palestinian Territory"', add
label define gr01a_bplmuni_lbl 21801 `"Romania"', add
label define gr01a_bplmuni_lbl 21802 `"Russian Federation"', add
label define gr01a_bplmuni_lbl 21901 `"Saudi Arabia"', add
label define gr01a_bplmuni_lbl 21902 `"Sudan"', add
label define gr01a_bplmuni_lbl 21911 `"Slovakia"', add
label define gr01a_bplmuni_lbl 21913 `"Sweden"', add
label define gr01a_bplmuni_lbl 21916 `"Syrian Arab Republic"', add
label define gr01a_bplmuni_lbl 22002 `"Thailand"', add
label define gr01a_bplmuni_lbl 22007 `"Turkey"', add
label define gr01a_bplmuni_lbl 22010 `"United Republic of Tanzania"', add
label define gr01a_bplmuni_lbl 22102 `"Ukraine"', add
label define gr01a_bplmuni_lbl 22104 `"United States"', add
label define gr01a_bplmuni_lbl 22105 `"Uzbekistan"', add
label define gr01a_bplmuni_lbl 22202 `"Venezuela"', add
label define gr01a_bplmuni_lbl 22502 `"Yugoslavia"', add
label define gr01a_bplmuni_lbl 22601 `"South Africa"', add
label define gr01a_bplmuni_lbl 22602 `"Zaire"', add
label define gr01a_bplmuni_lbl 22604 `"Zimbabwe"', add
label define gr01a_bplmuni_lbl 99998 `"Response suppressed"', add
label define gr01a_bplmuni_lbl 99999 `"Unknown"', add
label values gr01a_bplmuni gr01a_bplmuni_lbl

label define gr01a_citiz_lbl 1 `"Greece"'
label define gr01a_citiz_lbl 2 `"Greece and other"', add
label define gr01a_citiz_lbl 3 `"Other country"', add
label define gr01a_citiz_lbl 4 `"Without nationality"', add
label define gr01a_citiz_lbl 5 `"Unspecified nationality"', add
label values gr01a_citiz gr01a_citiz_lbl

label define gr01a_regplace_lbl 1 `"At the place of enumeration"'
label define gr01a_regplace_lbl 2 `"Other municipality, same stratum"', add
label define gr01a_regplace_lbl 3 `"Other municipality, different stratum"', add
label define gr01a_regplace_lbl 4 `"Other department"', add
label define gr01a_regplace_lbl 9 `"NIU (not in universe)"', add
label values gr01a_regplace gr01a_regplace_lbl

label define gr01a_resus_lbl 1 `"At the place of enumeration"'
label define gr01a_resus_lbl 2 `"Other municipality, same stratum"', add
label define gr01a_resus_lbl 3 `"Other municipality, different stratum"', add
label define gr01a_resus_lbl 4 `"Other department"', add
label define gr01a_resus_lbl 5 `"Abroad"', add
label values gr01a_resus gr01a_resus_lbl

label define gr01a_res00_lbl 1 `"At the place of enumeration"'
label define gr01a_res00_lbl 2 `"Other municipality, same stratum"', add
label define gr01a_res00_lbl 3 `"Other municipality, different stratum"', add
label define gr01a_res00_lbl 4 `"Other department"', add
label define gr01a_res00_lbl 5 `"Abroad"', add
label define gr01a_res00_lbl 8 `"Unknown"', add
label define gr01a_res00_lbl 9 `"NIU (not in universe)"', add
label values gr01a_res00 gr01a_res00_lbl

label define gr01a_res00mun_lbl 00103 `"Municipality of Agrinio"'
label define gr01a_res00mun_lbl 00199 `"Rest of Department Etolia and Akarnania"', add
label define gr01a_res00mun_lbl 00301 `"Municipality of Levadia"', add
label define gr01a_res00mun_lbl 00310 `"Municipality of Thiva"', add
label define gr01a_res00mun_lbl 00399 `"Rest of Department Viotia"', add
label define gr01a_res00mun_lbl 00401 `"Municipality of Chalkida"', add
label define gr01a_res00mun_lbl 00499 `"Rest of Department Evia"', add
label define gr01a_res00mun_lbl 00599 `"Rest of Department Evrytania"', add
label define gr01a_res00mun_lbl 00601 `"Municipality of Lamia"', add
label define gr01a_res00mun_lbl 00699 `"Rest of Department Fthiotida"', add
label define gr01a_res00mun_lbl 00799 `"Rest of Department Fokida"', add
label define gr01a_res00mun_lbl 01102 `"Municipality of Argos"', add
label define gr01a_res00mun_lbl 01199 `"Rest of Department Argolida"', add
label define gr01a_res00mun_lbl 01201 `"Municipality of Tripoli"', add
label define gr01a_res00mun_lbl 01299 `"Rest of Department Arkadia"', add
label define gr01a_res00mun_lbl 01301 `"Municipality of Patra"', add
label define gr01a_res00mun_lbl 01303 `"Municipality of Aegio"', add
label define gr01a_res00mun_lbl 01399 `"Rest of Department Achaia"', add
label define gr01a_res00mun_lbl 01401 `"Municipality of Pyrgos"', add
label define gr01a_res00mun_lbl 01403 `"Municipality of Amaliada"', add
label define gr01a_res00mun_lbl 01499 `"Rest of Department Ilia"', add
label define gr01a_res00mun_lbl 01501 `"Municipality of Korinthos"', add
label define gr01a_res00mun_lbl 01599 `"Rest of Department Korinthia"', add
label define gr01a_res00mun_lbl 01699 `"Rest of Department Lakonia"', add
label define gr01a_res00mun_lbl 01701 `"Municipality of Kalamata"', add
label define gr01a_res00mun_lbl 01799 `"Rest of Department Messinia"', add
label define gr01a_res00mun_lbl 02199 `"Rest of Department Zakynthos"', add
label define gr01a_res00mun_lbl 02201 `"Municipality of Kerkyra"', add
label define gr01a_res00mun_lbl 02299 `"Rest of Department Kerkyra"', add
label define gr01a_res00mun_lbl 02399 `"Rest of Department Kefallinia"', add
label define gr01a_res00mun_lbl 02499 `"Rest of Department Lefkada"', add
label define gr01a_res00mun_lbl 03101 `"Municipality of Arta"', add
label define gr01a_res00mun_lbl 03199 `"Rest of Department Arta"', add
label define gr01a_res00mun_lbl 03299 `"Rest of Department Thesprotia"', add
label define gr01a_res00mun_lbl 03301 `"Municipality of Ioannina"', add
label define gr01a_res00mun_lbl 03399 `"Rest of Department Ioannina"', add
label define gr01a_res00mun_lbl 03499 `"Rest of Department Preveza"', add
label define gr01a_res00mun_lbl 04101 `"Municipality of Karditsa"', add
label define gr01a_res00mun_lbl 04199 `"Rest of Department Karditsa"', add
label define gr01a_res00mun_lbl 04201 `"Municipality of Larissa"', add
label define gr01a_res00mun_lbl 04299 `"Rest of Department Larissa"', add
label define gr01a_res00mun_lbl 04301 `"Municipality of Volos"', add
label define gr01a_res00mun_lbl 04315 `"Municipality of Nea Ionia"', add
label define gr01a_res00mun_lbl 04399 `"Rest of Department Magnissia"', add
label define gr01a_res00mun_lbl 04401 `"Municipality of Trikala"', add
label define gr01a_res00mun_lbl 04499 `"Rest of Department Trikala"', add
label define gr01a_res00mun_lbl 05199 `"Rest of Department Grevena"', add
label define gr01a_res00mun_lbl 05201 `"Municipality of Drama"', add
label define gr01a_res00mun_lbl 05299 `"Rest of Department Drama"', add
label define gr01a_res00mun_lbl 05301 `"Municipality of Veria"', add
label define gr01a_res00mun_lbl 05311 `"Municipality of Naoussa"', add
label define gr01a_res00mun_lbl 05399 `"Rest of Department Imathia"', add
label define gr01a_res00mun_lbl 05401 `"Municipality of Thessaloniki"', add
label define gr01a_res00mun_lbl 05405 `"Municipality of Abelokipi"', add
label define gr01a_res00mun_lbl 05413 `"Municipality of Eleftherio-Kordelio"', add
label define gr01a_res00mun_lbl 05415 `"Municipality of Evosmo"', add
label define gr01a_res00mun_lbl 05416 `"Municipality of Echedoro"', add
label define gr01a_res00mun_lbl 05417 `"Municipality of Thermaikos"', add
label define gr01a_res00mun_lbl 05419 `"Municipality of Kalamaria"', add
label define gr01a_res00mun_lbl 05431 `"Municipality of Neapoli"', add
label define gr01a_res00mun_lbl 05433 `"Municipality of Polichni"', add
label define gr01a_res00mun_lbl 05434 `"Municipality of Pylea"', add
label define gr01a_res00mun_lbl 05437 `"Municipality of Stavroupoli"', add
label define gr01a_res00mun_lbl 05438 `"Municipality of Sykees"', add
label define gr01a_res00mun_lbl 05499 `"Rest of Department Thessaloniki"', add
label define gr01a_res00mun_lbl 05501 `"Municipality of Kavala"', add
label define gr01a_res00mun_lbl 05599 `"Rest of Department Kavala"', add
label define gr01a_res00mun_lbl 05699 `"Rest of Department Kastoria"', add
label define gr01a_res00mun_lbl 05701 `"Municipality of Kilkis"', add
label define gr01a_res00mun_lbl 05799 `"Rest of Department Kilkis"', add
label define gr01a_res00mun_lbl 05801 `"Municipality of Kozani"', add
label define gr01a_res00mun_lbl 05813 `"Municipality of Ptolemaida"', add
label define gr01a_res00mun_lbl 05899 `"Rest of Department Kozani"', add
label define gr01a_res00mun_lbl 05901 `"Municipality of Edessa"', add
label define gr01a_res00mun_lbl 05902 `"Municipality of Aridea"', add
label define gr01a_res00mun_lbl 05904 `"Municipality of Giannitsa"', add
label define gr01a_res00mun_lbl 05999 `"Rest of Department Pella"', add
label define gr01a_res00mun_lbl 06101 `"Municipality of Katerini"', add
label define gr01a_res00mun_lbl 06199 `"Rest of Department Pieria"', add
label define gr01a_res00mun_lbl 06201 `"Municipality of Serres"', add
label define gr01a_res00mun_lbl 06299 `"Rest of Department Serres"', add
label define gr01a_res00mun_lbl 06399 `"Rest of Department Florina"', add
label define gr01a_res00mun_lbl 06499 `"Rest of Department Chalkidiki"', add
label define gr01a_res00mun_lbl 06599 `"Rest of Aghion Oros"', add
label define gr01a_res00mun_lbl 07101 `"Municipality of Alexandroupoli"', add
label define gr01a_res00mun_lbl 07106 `"Municipality of Orestiada"', add
label define gr01a_res00mun_lbl 07199 `"Rest of Department Evros"', add
label define gr01a_res00mun_lbl 07201 `"Municipality of Xanthi"', add
label define gr01a_res00mun_lbl 07299 `"Rest of Department Xanthi"', add
label define gr01a_res00mun_lbl 07301 `"Municipality of Komotini"', add
label define gr01a_res00mun_lbl 07399 `"Rest of Department Rodopi"', add
label define gr01a_res00mun_lbl 08101 `"Municipality of Rodos"', add
label define gr01a_res00mun_lbl 08199 `"Rest of Department Dodekanissos"', add
label define gr01a_res00mun_lbl 08299 `"Rest of Department Kyklades"', add
label define gr01a_res00mun_lbl 08301 `"Municipality of Mytilini"', add
label define gr01a_res00mun_lbl 08399 `"Rest of Department Lesvos"', add
label define gr01a_res00mun_lbl 08499 `"Rest of Department Samos"', add
label define gr01a_res00mun_lbl 08501 `"Municipality of Chios"', add
label define gr01a_res00mun_lbl 08599 `"Rest of Department Chios"', add
label define gr01a_res00mun_lbl 09101 `"Municipality of Iraklio"', add
label define gr01a_res00mun_lbl 09199 `"Rest of Department Iraklio"', add
label define gr01a_res00mun_lbl 09202 `"Municipality of Ierapetra"', add
label define gr01a_res00mun_lbl 09299 `"Rest of Department Lassithi"', add
label define gr01a_res00mun_lbl 09301 `"Municipality of Rethymno"', add
label define gr01a_res00mun_lbl 09399 `"Rest of Department Rethymno"', add
label define gr01a_res00mun_lbl 09401 `"Municipality of Chania"', add
label define gr01a_res00mun_lbl 09499 `"Rest of Department Chania"', add
label define gr01a_res00mun_lbl 10101 `"Municipality of Athens"', add
label define gr01a_res00mun_lbl 10102 `"Municipality of Aghia Varvara"', add
label define gr01a_res00mun_lbl 10103 `"Municipality of Aghia Paraskevi"', add
label define gr01a_res00mun_lbl 10104 `"Municipality of Aghios Dimitrios"', add
label define gr01a_res00mun_lbl 10105 `"Municipality of Aghii Anargyri"', add
label define gr01a_res00mun_lbl 10106 `"Municipality of Aegaleo"', add
label define gr01a_res00mun_lbl 10107 `"Municipality of Alimos"', add
label define gr01a_res00mun_lbl 10108 `"Municipality of Amaroussio"', add
label define gr01a_res00mun_lbl 10109 `"Municipality of Argyroupoli"', add
label define gr01a_res00mun_lbl 10110 `"Municipality of Vrilissia"', add
label define gr01a_res00mun_lbl 10111 `"Municipality of Vyron"', add
label define gr01a_res00mun_lbl 10112 `"Municipality of Galatsi"', add
label define gr01a_res00mun_lbl 10113 `"Municipality of Glyfada"', add
label define gr01a_res00mun_lbl 10114 `"Municipality of Dafni"', add
label define gr01a_res00mun_lbl 10116 `"Municipality of Zografos"', add
label define gr01a_res00mun_lbl 10117 `"Municipality of Ilioupoli"', add
label define gr01a_res00mun_lbl 10118 `"Municipality of Iraklio"', add
label define gr01a_res00mun_lbl 10119 `"Municipality of Ilio (Nea Liossia)"', add
label define gr01a_res00mun_lbl 10120 `"Municipality of Kessariani"', add
label define gr01a_res00mun_lbl 10121 `"Municipality of Kallithea"', add
label define gr01a_res00mun_lbl 10122 `"Municipality of Kamatero"', add
label define gr01a_res00mun_lbl 10123 `"Municipality of Kifissia"', add
label define gr01a_res00mun_lbl 10126 `"Municipality of Metamorfossi"', add
label define gr01a_res00mun_lbl 10127 `"Municipality of Moschato"', add
label define gr01a_res00mun_lbl 10129 `"Municipality of Nea Ionia"', add
label define gr01a_res00mun_lbl 10130 `"Municipality of Nea Smyrni"', add
label define gr01a_res00mun_lbl 10131 `"Municipality of Nea Philadelfia"', add
label define gr01a_res00mun_lbl 10134 `"Municipality of Paleo Faliro"', add
label define gr01a_res00mun_lbl 10136 `"Municipality of Peristeri"', add
label define gr01a_res00mun_lbl 10137 `"Municipality of Petroupoli"', add
label define gr01a_res00mun_lbl 10142 `"Municipality of Chaidari"', add
label define gr01a_res00mun_lbl 10143 `"Municipality of Chalandri"', add
label define gr01a_res00mun_lbl 10144 `"Municipality of Cholargos"', add
label define gr01a_res00mun_lbl 10199 `"Rest of Prefecture Athens"', add
label define gr01a_res00mun_lbl 10205 `"Municipality of Acharnes"', add
label define gr01a_res00mun_lbl 10207 `"Municipality of Voula"', add
label define gr01a_res00mun_lbl 10213 `"Municipality of Koropi"', add
label define gr01a_res00mun_lbl 10299 `"Rest of Prefecture East Attiki"', add
label define gr01a_res00mun_lbl 10301 `"Municipality of Elefsina"', add
label define gr01a_res00mun_lbl 10302 `"Municipality of Ano Liossia"', add
label define gr01a_res00mun_lbl 10303 `"Municipality of Aspropyrgos"', add
label define gr01a_res00mun_lbl 10308 `"Municipality of Megara"', add
label define gr01a_res00mun_lbl 10399 `"Rest of Prefecture West Attiki"', add
label define gr01a_res00mun_lbl 10401 `"Municipality of Pireas"', add
label define gr01a_res00mun_lbl 10406 `"Municipality of Keratsini"', add
label define gr01a_res00mun_lbl 10407 `"Municipality of Korydallos"', add
label define gr01a_res00mun_lbl 10410 `"Municipality of Nikea"', add
label define gr01a_res00mun_lbl 10411 `"Municipality of Perama"', add
label define gr01a_res00mun_lbl 10413 `"Municipality of Salamina"', add
label define gr01a_res00mun_lbl 10499 `"Rest of Prefecture Pireas"', add
label define gr01a_res00mun_lbl 20105 `"Albania"', add
label define gr01a_res00mun_lbl 20113 `"Australia"', add
label define gr01a_res00mun_lbl 20114 `"Austria"', add
label define gr01a_res00mun_lbl 20202 `"Belgium"', add
label define gr01a_res00mun_lbl 20204 `"Bulgaria"', add
label define gr01a_res00mun_lbl 20302 `"Canada"', add
label define gr01a_res00mun_lbl 20303 `"Switzerland"', add
label define gr01a_res00mun_lbl 20314 `"Cyprus"', add
label define gr01a_res00mun_lbl 20401 `"Germany"', add
label define gr01a_res00mun_lbl 20502 `"Egypt"', add
label define gr01a_res00mun_lbl 20505 `"Spain"', add
label define gr01a_res00mun_lbl 20603 `"France"', add
label define gr01a_res00mun_lbl 20702 `"United Kindom"', add
label define gr01a_res00mun_lbl 20703 `"Georgia"', add
label define gr01a_res00mun_lbl 20905 `"Iraq"', add
label define gr01a_res00mun_lbl 20908 `"Italy"', add
label define gr01a_res00mun_lbl 21303 `"Republic of Moldova"', add
label define gr01a_res00mun_lbl 21408 `"Netherlands"', add
label define gr01a_res00mun_lbl 21607 `"Poland"', add
label define gr01a_res00mun_lbl 21801 `"Romania"', add
label define gr01a_res00mun_lbl 21802 `"Russian Federation"', add
label define gr01a_res00mun_lbl 21913 `"Sweden"', add
label define gr01a_res00mun_lbl 22007 `"Turkey"', add
label define gr01a_res00mun_lbl 22102 `"Ukraine"', add
label define gr01a_res00mun_lbl 22104 `"United States"', add
label define gr01a_res00mun_lbl 22502 `"Yugoslavia"', add
label define gr01a_res00mun_lbl 22601 `"South Africa"', add
label define gr01a_res00mun_lbl 99998 `"Response suppressed"', add
label define gr01a_res00mun_lbl 99999 `"NIU (not in universe)"', add
label values gr01a_res00mun gr01a_res00mun_lbl

label define gr01a_res95_lbl 1 `"At the place of enumeration"'
label define gr01a_res95_lbl 2 `"Other municipality, same stratum"', add
label define gr01a_res95_lbl 3 `"Other municipality, different stratum"', add
label define gr01a_res95_lbl 4 `"Other department"', add
label define gr01a_res95_lbl 5 `"Abroad"', add
label define gr01a_res95_lbl 9 `"NIU (not in universe)"', add
label values gr01a_res95 gr01a_res95_lbl

label define gr01a_edattan_lbl 01 `"Ph.D."'
label define gr01a_edattan_lbl 02 `"Master's"', add
label define gr01a_edattan_lbl 03 `"Higher education degree"', add
label define gr01a_edattan_lbl 04 `"Technical education college, ecclesiastical education degree"', add
label define gr01a_edattan_lbl 05 `"Post secondary education degree"', add
label define gr01a_edattan_lbl 06 `"Secondary education certificate (secondary school of 6-grade gymnasium or comprehensive school)"', add
label define gr01a_edattan_lbl 07 `"Technical school certificate"', add
label define gr01a_edattan_lbl 08 `"Technical college certificate"', add
label define gr01a_edattan_lbl 09 `"Lower secondary school certificate"', add
label define gr01a_edattan_lbl 10 `"Primary school certificate"', add
label define gr01a_edattan_lbl 11 `"Attends primary school"', add
label define gr01a_edattan_lbl 12 `"Drop out of primary school, but knows how to read and write"', add
label define gr01a_edattan_lbl 13 `"Does not know how to read and write"', add
label define gr01a_edattan_lbl 99 `"NIU (not in universe)"', add
label values gr01a_edattan gr01a_edattan_lbl

label define gr01a_studab_lbl 20101 `"Albania"'
label define gr01a_studab_lbl 20110 `"Armenia"', add
label define gr01a_studab_lbl 20113 `"Australia"', add
label define gr01a_studab_lbl 20114 `"Austria"', add
label define gr01a_studab_lbl 20202 `"Belgium"', add
label define gr01a_studab_lbl 20204 `"Bulgaria"', add
label define gr01a_studab_lbl 20302 `"Canada"', add
label define gr01a_studab_lbl 20303 `"Switzerland"', add
label define gr01a_studab_lbl 20314 `"Cyprus"', add
label define gr01a_studab_lbl 20315 `"Czech Republic"', add
label define gr01a_studab_lbl 20401 `"Germany"', add
label define gr01a_studab_lbl 20502 `"Egypt"', add
label define gr01a_studab_lbl 20505 `"Spain"', add
label define gr01a_studab_lbl 20603 `"France"', add
label define gr01a_studab_lbl 20702 `"United Kindom"', add
label define gr01a_studab_lbl 20703 `"Georgia"', add
label define gr01a_studab_lbl 20714 `"Greece"', add
label define gr01a_studab_lbl 20803 `"Croatia"', add
label define gr01a_studab_lbl 20805 `"Hungary"', add
label define gr01a_studab_lbl 20908 `"Italy"', add
label define gr01a_studab_lbl 21101 `"Kazakstan"', add
label define gr01a_studab_lbl 21202 `"Lebanon"', add
label define gr01a_studab_lbl 21303 `"Republic of Moldova"', add
label define gr01a_studab_lbl 21407 `"Netherlands"', add
label define gr01a_studab_lbl 21604 `"Philippines"', add
label define gr01a_studab_lbl 21607 `"Poland"', add
label define gr01a_studab_lbl 21801 `"Romania"', add
label define gr01a_studab_lbl 21802 `"Russian Federation"', add
label define gr01a_studab_lbl 21913 `"Sweden"', add
label define gr01a_studab_lbl 21916 `"Syrian Arab Republic"', add
label define gr01a_studab_lbl 22007 `"Turkey"', add
label define gr01a_studab_lbl 22102 `"Ukraine"', add
label define gr01a_studab_lbl 22104 `"United States"', add
label define gr01a_studab_lbl 22105 `"Uzbekistan"', add
label define gr01a_studab_lbl 22502 `"Yugoslavia"', add
label define gr01a_studab_lbl 22601 `"South Africa"', add
label define gr01a_studab_lbl 99997 `"Response suppressed"', add
label define gr01a_studab_lbl 99998 `"Unknown"', add
label define gr01a_studab_lbl 99999 `"NIU (not in universe)"', add
label values gr01a_studab gr01a_studab_lbl

label define gr01a_eduniv_lbl 001 `"Faculty of Theology"'
label define gr01a_eduniv_lbl 002 `"Faculty of Social Theology"', add
label define gr01a_eduniv_lbl 003 `"Faculty of Law"', add
label define gr01a_eduniv_lbl 004 `"Faculty of Economics"', add
label define gr01a_eduniv_lbl 005 `"Faculty of Political Science and Public Administration"', add
label define gr01a_eduniv_lbl 006 `"Faculty of Philology"', add
label define gr01a_eduniv_lbl 007 `"Faculty of Philosophy, Pedagogy and Psychology"', add
label define gr01a_eduniv_lbl 008 `"Faculty of History and Archaeology"', add
label define gr01a_eduniv_lbl 009 `"Faculty of English Language and Literature"', add
label define gr01a_eduniv_lbl 010 `"Faculty of French Language and Literature"', add
label define gr01a_eduniv_lbl 011 `"Faculty of German Language and Literature"', add
label define gr01a_eduniv_lbl 012 `"Faculty of Philosophy, Pedagogy and Psychology"', add
label define gr01a_eduniv_lbl 013 `"Faculty of Biology"', add
label define gr01a_eduniv_lbl 014 `"Faculty of Geology"', add
label define gr01a_eduniv_lbl 015 `"Faculty of Mathematics"', add
label define gr01a_eduniv_lbl 016 `"Faculty of Physics"', add
label define gr01a_eduniv_lbl 017 `"Faculty of Chemistry"', add
label define gr01a_eduniv_lbl 018 `"Faculty of Informatics"', add
label define gr01a_eduniv_lbl 019 `"Faculty of Physical Education and Sport Science"', add
label define gr01a_eduniv_lbl 020 `"Faculty of Primary Education"', add
label define gr01a_eduniv_lbl 021 `"Faculty of Early Childhood Education"', add
label define gr01a_eduniv_lbl 022 `"Faculty of Communication and Mass Media Studies"', add
label define gr01a_eduniv_lbl 023 `"Faculty of Theatre Studies"', add
label define gr01a_eduniv_lbl 024 `"Faculty of Music Studies"', add
label define gr01a_eduniv_lbl 025 `"Faculty of Medicine"', add
label define gr01a_eduniv_lbl 026 `"Faculty of Dentistry"', add
label define gr01a_eduniv_lbl 027 `"Faculty of Pharmacy"', add
label define gr01a_eduniv_lbl 028 `"Faculty of Nursing"', add
label define gr01a_eduniv_lbl 030 `"Department of Environmental Studies"', add
label define gr01a_eduniv_lbl 032 `"Department of Geography"', add
label define gr01a_eduniv_lbl 034 `"Department of Business Administration"', add
label define gr01a_eduniv_lbl 037 `"Department of Primary Education"', add
label define gr01a_eduniv_lbl 038 `"Department of Pre-school Education Sciences"', add
label define gr01a_eduniv_lbl 039 `"Department of Primary School Education"', add
label define gr01a_eduniv_lbl 040 `"Department of Nursery School Education"', add
label define gr01a_eduniv_lbl 043 `"Department of Agriculture, Crop and Animal Production"', add
label define gr01a_eduniv_lbl 050 `"School of Theology"', add
label define gr01a_eduniv_lbl 051 `"School of Pastoral and Social Theology"', add
label define gr01a_eduniv_lbl 052 `"School of Law"', add
label define gr01a_eduniv_lbl 053 `"School of Economics"', add
label define gr01a_eduniv_lbl 054 `"School of Medicine"', add
label define gr01a_eduniv_lbl 055 `"School of Dentistry"', add
label define gr01a_eduniv_lbl 056 `"School of Pharmacy"', add
label define gr01a_eduniv_lbl 057 `"School of Philology"', add
label define gr01a_eduniv_lbl 058 `"School of Philosophy and Pedagogy"', add
label define gr01a_eduniv_lbl 059 `"School of History and Archaeology"', add
label define gr01a_eduniv_lbl 060 `"School of English Language and Literature"', add
label define gr01a_eduniv_lbl 061 `"School of French Language and Literature"', add
label define gr01a_eduniv_lbl 062 `"School of German Language and Literature"', add
label define gr01a_eduniv_lbl 063 `"School of Italian Language and Literature"', add
label define gr01a_eduniv_lbl 064 `"School of Psychology"', add
label define gr01a_eduniv_lbl 065 `"School of Biology"', add
label define gr01a_eduniv_lbl 066 `"School of Geology"', add
label define gr01a_eduniv_lbl 067 `"School of Mathematics"', add
label define gr01a_eduniv_lbl 068 `"School of Physics"', add
label define gr01a_eduniv_lbl 069 `"School of Chemistry"', add
label define gr01a_eduniv_lbl 070 `"School of Informatics"', add
label define gr01a_eduniv_lbl 071 `"School of Agriculture"', add
label define gr01a_eduniv_lbl 072 `"School of Veterinary Medicine"', add
label define gr01a_eduniv_lbl 073 `"School of Forestry and the Natural Environment"', add
label define gr01a_eduniv_lbl 074 `"School of Civil Engineering"', add
label define gr01a_eduniv_lbl 075 `"School of Architecture"', add
label define gr01a_eduniv_lbl 076 `"School of Mechanical Engineering and Aeronautics"', add
label define gr01a_eduniv_lbl 077 `"School of Electrical and Computer Engineering"', add
label define gr01a_eduniv_lbl 078 `"School of Chemical Engineering"', add
label define gr01a_eduniv_lbl 079 `"School of Rural and Surveying Engineering"', add
label define gr01a_eduniv_lbl 080 `"School of Visual and Applied Arts"', add
label define gr01a_eduniv_lbl 081 `"School of Music Studies"', add
label define gr01a_eduniv_lbl 083 `"School of Primary Education"', add
label define gr01a_eduniv_lbl 084 `"School of Pre-School Education"', add
label define gr01a_eduniv_lbl 085 `"School of Physical Education and Athletics in Thessaloniki"', add
label define gr01a_eduniv_lbl 086 `"School of Physical Education and Athletics in Serres"', add
label define gr01a_eduniv_lbl 087 `"School of Primary Education in Florina"', add
label define gr01a_eduniv_lbl 088 `"School of Pre-School Education in Florina"', add
label define gr01a_eduniv_lbl 089 `"School of Journalism and Mass Media Studies"', add
label define gr01a_eduniv_lbl 090 `"Department of Civil Engineering"', add
label define gr01a_eduniv_lbl 091 `"Department of Electrical and Computer Engineering"', add
label define gr01a_eduniv_lbl 093 `"Department of Physical Education and Sport Science"', add
label define gr01a_eduniv_lbl 094 `"Department of Primary Level Education"', add
label define gr01a_eduniv_lbl 095 `"Department of Pre-School Education"', add
label define gr01a_eduniv_lbl 096 `"Department of Law"', add
label define gr01a_eduniv_lbl 097 `"Department of Medicine"', add
label define gr01a_eduniv_lbl 098 `"Department of History and Ethnology"', add
label define gr01a_eduniv_lbl 101 `"Department of Foreign Languages, Translation and Interpreting"', add
label define gr01a_eduniv_lbl 102 `"Department of History"', add
label define gr01a_eduniv_lbl 105 `"Department of Philology"', add
label define gr01a_eduniv_lbl 106 `"Department of Philosophy, Education and Psychology"', add
label define gr01a_eduniv_lbl 107 `"Department of History and Archaeology"', add
label define gr01a_eduniv_lbl 108 `"Department of Mathematics"', add
label define gr01a_eduniv_lbl 109 `"Department of Physics"', add
label define gr01a_eduniv_lbl 110 `"Department of Chemistry"', add
label define gr01a_eduniv_lbl 114 `"Department of Medicine"', add
label define gr01a_eduniv_lbl 115 `"Department of Primary Education"', add
label define gr01a_eduniv_lbl 116 `"Department of Pre-School Education"', add
label define gr01a_eduniv_lbl 118 `"Faculty of Economics"', add
label define gr01a_eduniv_lbl 119 `"Faculty of Sociology"', add
label define gr01a_eduniv_lbl 120 `"Faculty of Psychology"', add
label define gr01a_eduniv_lbl 121 `"Faculty of Medicine"', add
label define gr01a_eduniv_lbl 122 `"Faculty of Philology"', add
label define gr01a_eduniv_lbl 123 `"Faculty of Philosophy and Social Studies"', add
label define gr01a_eduniv_lbl 124 `"Faculty of History and Archaeology"', add
label define gr01a_eduniv_lbl 126 `"Faculty of Mathematics"', add
label define gr01a_eduniv_lbl 127 `"Faculty of Physics"', add
label define gr01a_eduniv_lbl 129 `"Faculty of Computer Science"', add
label define gr01a_eduniv_lbl 130 `"Faculty of Primary Education"', add
label define gr01a_eduniv_lbl 131 `"Faculty of Pre-School Education"', add
label define gr01a_eduniv_lbl 133 `"Department of Production Engineering and Management"', add
label define gr01a_eduniv_lbl 134 `"Department of Electronic and Computer Engineering"', add
label define gr01a_eduniv_lbl 136 `"Faculty of Medicine"', add
label define gr01a_eduniv_lbl 137 `"Department of Pharmacy"', add
label define gr01a_eduniv_lbl 138 `"Department of Biology"', add
label define gr01a_eduniv_lbl 139 `"Department of Geology"', add
label define gr01a_eduniv_lbl 140 `"Department of Mathematics"', add
label define gr01a_eduniv_lbl 141 `"Department of Physics"', add
label define gr01a_eduniv_lbl 142 `"Department of Chemistry"', add
label define gr01a_eduniv_lbl 143 `"Department of Civil Engineering"', add
label define gr01a_eduniv_lbl 144 `"Department of Mechanical Engineering and Aeronautics"', add
label define gr01a_eduniv_lbl 145 `"Department of Electrical and Computer Engineering"', add
label define gr01a_eduniv_lbl 146 `"Department of Chemical Engineering"', add
label define gr01a_eduniv_lbl 147 `"Department of Computer Engineering and Informatics"', add
label define gr01a_eduniv_lbl 148 `"Department of Primary Education"', add
label define gr01a_eduniv_lbl 149 `"Department of Early Childhood Education"', add
label define gr01a_eduniv_lbl 152 `"Department of Economics"', add
label define gr01a_eduniv_lbl 153 `"Faculty of Civil Engineering"', add
label define gr01a_eduniv_lbl 154 `"Faculty of Architecture"', add
label define gr01a_eduniv_lbl 155 `"Faculty of Mechanical Engineering"', add
label define gr01a_eduniv_lbl 156 `"Faculty of Naval Architecture and Marine Engineering"', add
label define gr01a_eduniv_lbl 157 `"Faculty of Electrical and Computer Engineering"', add
label define gr01a_eduniv_lbl 158 `"Faculty of Chemical Engineering"', add
label define gr01a_eduniv_lbl 159 `"Faculty of Mining Engineering and Metallurgy"', add
label define gr01a_eduniv_lbl 160 `"Faculty of Rural and Surveying Engineering"', add
label define gr01a_eduniv_lbl 161 `"Department of Business Administration"', add
label define gr01a_eduniv_lbl 162 `"Department of Economics"', add
label define gr01a_eduniv_lbl 163 `"Department of Informatics"', add
label define gr01a_eduniv_lbl 164 `"Department of International and European Studies"', add
label define gr01a_eduniv_lbl 165 `"Department of Statistics"', add
label define gr01a_eduniv_lbl 166 `"Department of Operational Research and Marketing"', add
label define gr01a_eduniv_lbl 167 `"Department of Public Administration"', add
label define gr01a_eduniv_lbl 168 `"Department of Political Science and History"', add
label define gr01a_eduniv_lbl 169 `"Department of International and European Studies"', add
label define gr01a_eduniv_lbl 170 `"Department of Sociology"', add
label define gr01a_eduniv_lbl 171 `"Department of Communication and Mass Media Studies"', add
label define gr01a_eduniv_lbl 172 `"Department of Rural and Regional Development"', add
label define gr01a_eduniv_lbl 173 `"Department of Social Policy and Social Anthropology"', add
label define gr01a_eduniv_lbl 174 `"Department of Psychology"', add
label define gr01a_eduniv_lbl 175 `"Department of Business Administration"', add
label define gr01a_eduniv_lbl 176 `"Department of Economics"', add
label define gr01a_eduniv_lbl 177 `"Department of Statistics and Insurance Science"', add
label define gr01a_eduniv_lbl 178 `"Department of Financial Management and Banking"', add
label define gr01a_eduniv_lbl 179 `"Department of Maritime Studies"', add
label define gr01a_eduniv_lbl 180 `"Department of Technology Education and Digital Systems"', add
label define gr01a_eduniv_lbl 181 `"Department of Informatics"', add
label define gr01a_eduniv_lbl 182 `"Department of Business Administration"', add
label define gr01a_eduniv_lbl 183 `"Department of Economics"', add
label define gr01a_eduniv_lbl 184 `"Department of International and European Economic and Political Studies"', add
label define gr01a_eduniv_lbl 185 `"Department of Accounting and Finance"', add
label define gr01a_eduniv_lbl 186 `"Department of Applied Informatics"', add
label define gr01a_eduniv_lbl 190 `"Department of Crop Science"', add
label define gr01a_eduniv_lbl 191 `"Department of Animal Science"', add
label define gr01a_eduniv_lbl 192 `"Department of Agricultural Biotechnology"', add
label define gr01a_eduniv_lbl 193 `"Department of Rural Economics and Development"', add
label define gr01a_eduniv_lbl 194 `"Department of Food Science and Technology"', add
label define gr01a_eduniv_lbl 195 `"Department of Natural Resources Management and Agricultural Engineering"', add
label define gr01a_eduniv_lbl 196 `"Department of Fine Arts"', add
label define gr01a_eduniv_lbl 197 `"Department of Home Economics"', add
label define gr01a_eduniv_lbl 198 `"Department of Dietetics and Nutritional Science"', add
label define gr01a_eduniv_lbl 201 `"Department of Graphic Design"', add
label define gr01a_eduniv_lbl 202 `"Department of Interior Design"', add
label define gr01a_eduniv_lbl 203 `"Department of Graphics Technology"', add
label define gr01a_eduniv_lbl 204 `"Department of Conservation and Restoration of Archaeological Finds and Works of Art"', add
label define gr01a_eduniv_lbl 205 `"Department of Photography"', add
label define gr01a_eduniv_lbl 206 `"Department of Library Science and Information Systems"', add
label define gr01a_eduniv_lbl 207 `"Department of Business Administration"', add
label define gr01a_eduniv_lbl 208 `"Department of Health and Welfare Services"', add
label define gr01a_eduniv_lbl 209 `"Department of Marketing and Advertising"', add
label define gr01a_eduniv_lbl 210 `"Department of Tourism Business"', add
label define gr01a_eduniv_lbl 212 `"Department of Aesthetics and Cosmetology"', add
label define gr01a_eduniv_lbl 213 `"Department of Early Childhood Care and Education"', add
label define gr01a_eduniv_lbl 214 `"Department of Public Hygiene"', add
label define gr01a_eduniv_lbl 215 `"Department of Health Visitants"', add
label define gr01a_eduniv_lbl 216 `"Department of Work Therapy"', add
label define gr01a_eduniv_lbl 217 `"Department of Medical Laboratory Studies"', add
label define gr01a_eduniv_lbl 218 `"Department of Social Work"', add
label define gr01a_eduniv_lbl 219 `"Department of Midwifery"', add
label define gr01a_eduniv_lbl 220 `"Department of Nursing A"', add
label define gr01a_eduniv_lbl 221 `"Department of Nursing B"', add
label define gr01a_eduniv_lbl 222 `"Department of Dentistry Techniques"', add
label define gr01a_eduniv_lbl 223 `"Department of Optics"', add
label define gr01a_eduniv_lbl 224 `"Department of Radiology and Radiotherapy"', add
label define gr01a_eduniv_lbl 225 `"Department of Physiotherapy"', add
label define gr01a_eduniv_lbl 227 `"Department of Energy Techniques"', add
label define gr01a_eduniv_lbl 228 `"Department of Electronics"', add
label define gr01a_eduniv_lbl 229 `"Department of Naval Architecture"', add
label define gr01a_eduniv_lbl 230 `"Department of Informatics"', add
label define gr01a_eduniv_lbl 231 `"Department of Civil Infrastructure Engineering"', add
label define gr01a_eduniv_lbl 232 `"Department of Medical Instruments Technology"', add
label define gr01a_eduniv_lbl 233 `"Department of Topography"', add
label define gr01a_eduniv_lbl 236 `"Department of Wine and Drink Technology"', add
label define gr01a_eduniv_lbl 237 `"Department of Food Technology"', add
label define gr01a_eduniv_lbl 238 `"Department of Plant Production"', add
label define gr01a_eduniv_lbl 241 `"Department of Nursing"', add
label define gr01a_eduniv_lbl 242 `"Department of Early Childhood Care and Education"', add
label define gr01a_eduniv_lbl 248 `"Department of Accounting"', add
label define gr01a_eduniv_lbl 249 `"Department of Tourism Business"', add
label define gr01a_eduniv_lbl 250 `"Department of Cooperative Organizations and Holdings"', add
label define gr01a_eduniv_lbl 252 `"Department of Social Work"', add
label define gr01a_eduniv_lbl 253 `"Department of Nursing"', add
label define gr01a_eduniv_lbl 255 `"Department of Crop Science"', add
label define gr01a_eduniv_lbl 256 `"Department of Electrical Engineering"', add
label define gr01a_eduniv_lbl 257 `"Department of Mechanical Engineering"', add
label define gr01a_eduniv_lbl 258 `"Department of Civil Infrastructure Engineering"', add
label define gr01a_eduniv_lbl 260 `"Department of Electronics"', add
label define gr01a_eduniv_lbl 261 `"Department of Library Science and Information Systems"', add
label define gr01a_eduniv_lbl 262 `"Department of Marketing and Advertising"', add
label define gr01a_eduniv_lbl 263 `"Department of Accounting"', add
label define gr01a_eduniv_lbl 264 `"Department of Tourism Business"', add
label define gr01a_eduniv_lbl 266 `"Department of Aesthetics and Cosmetology"', add
label define gr01a_eduniv_lbl 267 `"Department of Early Childhood Care and Education"', add
label define gr01a_eduniv_lbl 268 `"Department of Medical Laboratory Studies"', add
label define gr01a_eduniv_lbl 269 `"Department of Midwifery"', add
label define gr01a_eduniv_lbl 270 `"Department of Nursing"', add
label define gr01a_eduniv_lbl 271 `"Department of Physiotherapy"', add
label define gr01a_eduniv_lbl 272 `"Department of Farm Management"', add
label define gr01a_eduniv_lbl 273 `"Department of Animal Production"', add
label define gr01a_eduniv_lbl 274 `"Department of Plant Production"', add
label define gr01a_eduniv_lbl 275 `"Department of Automation"', add
label define gr01a_eduniv_lbl 276 `"Department of Electronics"', add
label define gr01a_eduniv_lbl 277 `"Department of Vehicle Technology"', add
label define gr01a_eduniv_lbl 278 `"Department of Informatics"', add
label define gr01a_eduniv_lbl 279 `"Department of Civil Infrastructure Engineering"', add
label define gr01a_eduniv_lbl 281 `"Department of Dietetics"', add
label define gr01a_eduniv_lbl 282 `"Department of Food Technology"', add
label define gr01a_eduniv_lbl 283 `"Department of Business Administration"', add
label define gr01a_eduniv_lbl 284 `"Department of Accounting"', add
label define gr01a_eduniv_lbl 286 `"Department of Electrical Engineering"', add
label define gr01a_eduniv_lbl 287 `"Department of Mechanical Engineering"', add
label define gr01a_eduniv_lbl 288 `"Department of Petroleum Technology"', add
label define gr01a_eduniv_lbl 290 `"Department of Forestry"', add
label define gr01a_eduniv_lbl 293 `"Department of Plant Production"', add
label define gr01a_eduniv_lbl 295 `"Department of Business Administration"', add
label define gr01a_eduniv_lbl 296 `"Department of Accounting"', add
label define gr01a_eduniv_lbl 298 `"Department of Electrical Engineering"', add
label define gr01a_eduniv_lbl 299 `"Department of Mechanical Engineering"', add
label define gr01a_eduniv_lbl 304 `"Department of Plant Production"', add
label define gr01a_eduniv_lbl 306 `"Department of Nursing"', add
label define gr01a_eduniv_lbl 308 `"Department of Electrical Engineering"', add
label define gr01a_eduniv_lbl 309 `"Department of Electronic Engineering"', add
label define gr01a_eduniv_lbl 311 `"Department of Forestry"', add
label define gr01a_eduniv_lbl 313 `"Department of Business Administration"', add
label define gr01a_eduniv_lbl 314 `"Department of Accounting"', add
label define gr01a_eduniv_lbl 315 `"Department of Tourism Business"', add
label define gr01a_eduniv_lbl 317 `"Department of Medical Laboratory Studies"', add
label define gr01a_eduniv_lbl 318 `"Department of Nursing"', add
label define gr01a_eduniv_lbl 319 `"Department of Agricultural Machinery and Irrigation"', add
label define gr01a_eduniv_lbl 320 `"Department of Animal Production"', add
label define gr01a_eduniv_lbl 321 `"Department of Plant Production"', add
label define gr01a_eduniv_lbl 322 `"Department of Electrical Engineering"', add
label define gr01a_eduniv_lbl 323 `"Department of Mechanical Engineering"', add
label define gr01a_eduniv_lbl 324 `"Department of Civil Infrastructure Engineering"', add
label define gr01a_eduniv_lbl 326 `"Department of Forestry"', add
label define gr01a_eduniv_lbl 327 `"Department of Accounting"', add
label define gr01a_eduniv_lbl 328 `"Department of Cooperative Organizations and Holdings"', add
label define gr01a_eduniv_lbl 330 `"Department of Aquaculture and Fisheries"', add
label define gr01a_eduniv_lbl 333 `"Department of Business Administration"', add
label define gr01a_eduniv_lbl 334 `"Department of Accounting"', add
label define gr01a_eduniv_lbl 335 `"Department of Tourism Business"', add
label define gr01a_eduniv_lbl 337 `"Department of Social Work"', add
label define gr01a_eduniv_lbl 338 `"Department of Nursing"', add
label define gr01a_eduniv_lbl 339 `"Department of Speech Therapy"', add
label define gr01a_eduniv_lbl 340 `"Department of Electrical Engineering"', add
label define gr01a_eduniv_lbl 341 `"Department of Mechanical Engineering"', add
label define gr01a_eduniv_lbl 342 `"Department of Civil Infrastructure Engineering"', add
label define gr01a_eduniv_lbl 343 `"Department of Business Administration"', add
label define gr01a_eduniv_lbl 344 `"Department of Accounting"', add
label define gr01a_eduniv_lbl 346 `"Department of Automation"', add
label define gr01a_eduniv_lbl 347 `"Department of Electrical Engineering"', add
label define gr01a_eduniv_lbl 348 `"Department of Electronical Engineering"', add
label define gr01a_eduniv_lbl 349 `"Department of Electronic Computer Systems Engineering"', add
label define gr01a_eduniv_lbl 350 `"Department of Textile Engineering"', add
label define gr01a_eduniv_lbl 351 `"Department of Mechanical Engineering"', add
label define gr01a_eduniv_lbl 352 `"Department of Civil Infrastructure Engineering"', add
label define gr01a_eduniv_lbl 356 `"Department of Business Administration"', add
label define gr01a_eduniv_lbl 357 `"Department of Accounting"', add
label define gr01a_eduniv_lbl 359 `"Department of Mechanical Engineering"', add
label define gr01a_eduniv_lbl 360 `"Department of Civil Infrastructure Engineering"', add
label define gr01a_eduniv_lbl 361 `"Department of Business Administration"', add
label define gr01a_eduniv_lbl 362 `"Department of Accounting"', add
label define gr01a_eduniv_lbl 364 `"Department of Electrical Engineering"', add
label define gr01a_eduniv_lbl 365 `"Department of Mechanical Engineering"', add
label define gr01a_eduniv_lbl 381 `"Department of Civil Infrastructure Engineering Technology Teachers"', add
label define gr01a_eduniv_lbl 382 `"Department of Civil Communications and Hydraulic Engineering Technology Teachers"', add
label define gr01a_eduniv_lbl 383 `"Department of Mechanical Engineering Technology Teachers"', add
label define gr01a_eduniv_lbl 384 `"Department of Electrical Engineering Technology Teachers"', add
label define gr01a_eduniv_lbl 385 `"Department of Electronic Engineering Technology Teachers"', add
label define gr01a_eduniv_lbl 390 `"Department of Nurses"', add
label define gr01a_eduniv_lbl 402 `"Department of Medicine Officers"', add
label define gr01a_eduniv_lbl 407 `"Department of Recruiting Officers"', add
label define gr01a_eduniv_lbl 408 `"Military school of Nursing"', add
label define gr01a_eduniv_lbl 409 `"Department of the Arms Training Programme"', add
label define gr01a_eduniv_lbl 410 `"Department of the Corps Training Programme"', add
label define gr01a_eduniv_lbl 415 `"Department of Military Administrative Training"', add
label define gr01a_eduniv_lbl 416 `"Department of Technical Training"', add
label define gr01a_eduniv_lbl 455 `"Department of Combat Officers"', add
label define gr01a_eduniv_lbl 456 `"Department of Mechanical Engineering Officers"', add
label define gr01a_eduniv_lbl 521 `"Hellenic navy-non commissioned officers school"', add
label define gr01a_eduniv_lbl 522 `"Department of Flying Officers"', add
label define gr01a_eduniv_lbl 523 `"Department of Mechanical Engineering Officers"', add
label define gr01a_eduniv_lbl 525 `"Faculty of permanent petty officers of hellenic navy"', add
label define gr01a_eduniv_lbl 536 `"School of technical petty officers of hellenic air force"', add
label define gr01a_eduniv_lbl 537 `"Department of Captains"', add
label define gr01a_eduniv_lbl 538 `"Department of Mechanical Engineers"', add
label define gr01a_eduniv_lbl 539 `"Department of Captains"', add
label define gr01a_eduniv_lbl 540 `"Department of Mechanical Engineers"', add
label define gr01a_eduniv_lbl 541 `"Department of Captains"', add
label define gr01a_eduniv_lbl 542 `"Department of Mechanical Engineers"', add
label define gr01a_eduniv_lbl 543 `"Department of Captains"', add
label define gr01a_eduniv_lbl 544 `"Department of Captains"', add
label define gr01a_eduniv_lbl 545 `"Department of Captains"', add
label define gr01a_eduniv_lbl 546 `"Department of Captains"', add
label define gr01a_eduniv_lbl 548 `"Department of Captains"', add
label define gr01a_eduniv_lbl 549 `"Department of Mechanical Engineers"', add
label define gr01a_eduniv_lbl 601 `"Drama School of the National Theatre of Greece"', add
label define gr01a_eduniv_lbl 603 `"Drama School of Athens Conservatory"', add
label define gr01a_eduniv_lbl 604 `"Drama School of Athens"', add
label define gr01a_eduniv_lbl 608 `"Veaki Drama School"', add
label define gr01a_eduniv_lbl 612 `"Eugenia Chatzikou Drama School"', add
label define gr01a_eduniv_lbl 631 `"Sonia Morianova-Thalassidou 'Morinof' Dance School"', add
label define gr01a_eduniv_lbl 635 `"Roula Kafantari Dance School"', add
label define gr01a_eduniv_lbl 639 `"State School of Dance"', add
label define gr01a_eduniv_lbl 704 `"Tourist guides school of Rhodes"', add
label define gr01a_eduniv_lbl 801 `"Higher Ecclesiastical School of Athens"', add
label define gr01a_eduniv_lbl 802 `"Higher Ecclesiastical School of Heraklion"', add
label define gr01a_eduniv_lbl 803 `"Higher Ecclesiastical School of Thessaloniki"', add
label define gr01a_eduniv_lbl 900 `"Police academies"', add
label define gr01a_eduniv_lbl 991 `"No Answer for a Greek University"', add
label define gr01a_eduniv_lbl 992 `"No Answer for TEI"', add
label define gr01a_eduniv_lbl 993 `"No Answer for a University abroad"', add
label define gr01a_eduniv_lbl 996 `"Ambiguous answer for school"', add
label define gr01a_eduniv_lbl 997 `"Response suppressed"', add
label define gr01a_eduniv_lbl 998 `"No Answer for School"', add
label define gr01a_eduniv_lbl 999 `"NIU (not in universe)"', add
label values gr01a_eduniv gr01a_eduniv_lbl

label define gr01a_empstat_lbl 0 `"NIU (not in universe)"'
label define gr01a_empstat_lbl 1 `"Working"', add
label define gr01a_empstat_lbl 2 `"Job seeker"', add
label define gr01a_empstat_lbl 3 `"Job seeker for the 1st time"', add
label define gr01a_empstat_lbl 4 `"Pupil or student"', add
label define gr01a_empstat_lbl 5 `"Pensioner"', add
label define gr01a_empstat_lbl 6 `"Person of independent means"', add
label define gr01a_empstat_lbl 7 `"Household activities"', add
label define gr01a_empstat_lbl 8 `"Conscript"', add
label define gr01a_empstat_lbl 9 `"Other case"', add
label values gr01a_empstat gr01a_empstat_lbl

label define gr01a_ind_lbl 011 `"Growing of cereals and other crops not elsewhere classified"'
label define gr01a_ind_lbl 012 `"Growing of vegetables, horticultural specialties and nursery products"', add
label define gr01a_ind_lbl 013 `"Growing of fruits, vineyards, raisin vineyards, beverage and spice crops"', add
label define gr01a_ind_lbl 014 `"Farming of animals"', add
label define gr01a_ind_lbl 015 `"Growing of crops combined with farming of animals (mixed agricultural and animal farming activities)"', add
label define gr01a_ind_lbl 016 `"Agricultural and animal husbandry service activities except veterinary activities"', add
label define gr01a_ind_lbl 020 `"Forestry, logging and related activities"', add
label define gr01a_ind_lbl 050 `"Fishing, aquaculture and service activities incidental to fishing"', add
label define gr01a_ind_lbl 102 `"Mining and agglomeration of lignite"', add
label define gr01a_ind_lbl 112 `"Service activities incidental to oil and gas extraction excluding surveying"', add
label define gr01a_ind_lbl 131 `"Mining of iron ores"', add
label define gr01a_ind_lbl 132 `"Mining of non-ferrous metal ores, except uranium and thorium ores"', add
label define gr01a_ind_lbl 141 `"Quarrying of stone"', add
label define gr01a_ind_lbl 142 `"Quarrying of sand and clay"', add
label define gr01a_ind_lbl 144 `"Extraction of salt"', add
label define gr01a_ind_lbl 145 `"Other mining and quarrying not elsewhere classified"', add
label define gr01a_ind_lbl 151 `"Production, processing and preserving of meat and meat products"', add
label define gr01a_ind_lbl 152 `"Processing and preserving of fish and fish products"', add
label define gr01a_ind_lbl 153 `"Processing and preserving of fruit and vegetables"', add
label define gr01a_ind_lbl 154 `"Manufacture of vegetable and animal oils and fats"', add
label define gr01a_ind_lbl 155 `"Manufacture of dairy products"', add
label define gr01a_ind_lbl 156 `"Manufacture of grain mill products, starches and starch products"', add
label define gr01a_ind_lbl 157 `"Manufacture of prepared animal feeds"', add
label define gr01a_ind_lbl 158 `"Manufacture of other food products"', add
label define gr01a_ind_lbl 159 `"Manufacture of beverages"', add
label define gr01a_ind_lbl 160 `"Manufacture of tobacco products"', add
label define gr01a_ind_lbl 171 `"Preparation and spinning of textile fibres"', add
label define gr01a_ind_lbl 172 `"Weaving of textiles"', add
label define gr01a_ind_lbl 173 `"Finishing of textiles"', add
label define gr01a_ind_lbl 174 `"Manufacture of made-up textile articles, except apparel"', add
label define gr01a_ind_lbl 175 `"Manufacture of other textiles"', add
label define gr01a_ind_lbl 176 `"Manufacture of knitted and crocheted fabrics"', add
label define gr01a_ind_lbl 177 `"Manufacture of knitted and crocheted articles"', add
label define gr01a_ind_lbl 181 `"Manufacture of leather wearing apparel"', add
label define gr01a_ind_lbl 182 `"Manufacture of other wearing apparel and related articles"', add
label define gr01a_ind_lbl 183 `"Dressing and dyeing of fur; manufacture of fur articles"', add
label define gr01a_ind_lbl 191 `"Tanning and dressing of leather"', add
label define gr01a_ind_lbl 192 `"Manufacture of luggage, handbags, saddlery and harness"', add
label define gr01a_ind_lbl 193 `"Manufacture of footwear"', add
label define gr01a_ind_lbl 201 `"Sawmilling and planning of wood"', add
label define gr01a_ind_lbl 202 `"Manufacture of veneer sheets, plywood and other panels and boards"', add
label define gr01a_ind_lbl 203 `"Manufacture of builders' carpentry and joinery"', add
label define gr01a_ind_lbl 204 `"Manufacture of wooden containers"', add
label define gr01a_ind_lbl 205 `"Manufacture of other products of wood; manufacture of articles of cork, straw and plaiting materials"', add
label define gr01a_ind_lbl 211 `"Manufacture of pulp, paper and paper board"', add
label define gr01a_ind_lbl 212 `"Manufacture of paper and paperboard articles"', add
label define gr01a_ind_lbl 221 `"Publishing"', add
label define gr01a_ind_lbl 222 `"Printing and related activities"', add
label define gr01a_ind_lbl 223 `"Reproduction of recorded media"', add
label define gr01a_ind_lbl 232 `"Manufacture of refined petroleum products"', add
label define gr01a_ind_lbl 241 `"Manufacture of basic chemicals"', add
label define gr01a_ind_lbl 242 `"Manufacture of pesticides and other agrochemical products"', add
label define gr01a_ind_lbl 243 `"Manufacture of paints, varnishes and similar coatings, printing ink and putty"', add
label define gr01a_ind_lbl 244 `"Manufacture of pharmaceuticals, medical chemicals and botanical products"', add
label define gr01a_ind_lbl 245 `"Manufacture of soap and detergents, cleaning and polishing preparations, aroma and toilet preparations"', add
label define gr01a_ind_lbl 246 `"Manufacture of other chemical products"', add
label define gr01a_ind_lbl 251 `"Manufacture of rubber products"', add
label define gr01a_ind_lbl 252 `"Manufacture of plastics products"', add
label define gr01a_ind_lbl 261 `"Manufacture of glass and glass products"', add
label define gr01a_ind_lbl 262 `"Manufacture of non-structural non-refractory ceramic ware; manufacture of refractory ceramic products"', add
label define gr01a_ind_lbl 263 `"Manufacture of non-refractory ceramic hearth or wall tiles, mosaic cubes and ceramic flags and paving"', add
label define gr01a_ind_lbl 264 `"Manufacture of bricks, tiles and other structural non-refractory clay building materials"', add
label define gr01a_ind_lbl 265 `"Manufacture of cement, lime and plaster"', add
label define gr01a_ind_lbl 266 `"Manufacture of articles of concrete, cement and plaster"', add
label define gr01a_ind_lbl 267 `"Cutting, shaping and finishing of stone"', add
label define gr01a_ind_lbl 268 `"Manufacture of other non-metallic mineral products"', add
label define gr01a_ind_lbl 271 `"Manufacture of basic iron and steel and ferrous metals"', add
label define gr01a_ind_lbl 272 `"Manufacture of pipes"', add
label define gr01a_ind_lbl 273 `"Extruding operations to make"', add
label define gr01a_ind_lbl 274 `"Manufacture of basic precious and non-ferrous metals"', add
label define gr01a_ind_lbl 275 `"Casting of metals"', add
label define gr01a_ind_lbl 281 `"Manufacture of structural metal products"', add
label define gr01a_ind_lbl 282 `"Manufacture of tanks, reservoirs and containers of metal"', add
label define gr01a_ind_lbl 284 `"Forging, pressing, stamping and roll-forming of metal, powder metal"', add
label define gr01a_ind_lbl 285 `"Treatment and coating of metal, general mechanical engineering contract basis"', add
label define gr01a_ind_lbl 286 `"Manufacture of cutlery, hand tools and general hardware"', add
label define gr01a_ind_lbl 287 `"Manufacture of other fabricated metal products n.e.c."', add
label define gr01a_ind_lbl 291 `"Manufacture of engines and turbines, except aircraft, vehicle and bikes"', add
label define gr01a_ind_lbl 292 `"Manufacture of other general-purpose machinery"', add
label define gr01a_ind_lbl 293 `"Manufacture of agricultural and forestry machinery"', add
label define gr01a_ind_lbl 294 `"Manufacture of machine tools"', add
label define gr01a_ind_lbl 295 `"Manufacture of other special-purpose machinery"', add
label define gr01a_ind_lbl 296 `"Manufacture of weapons and ammunition"', add
label define gr01a_ind_lbl 297 `"Manufacture of domestic appliances n.e.c."', add
label define gr01a_ind_lbl 300 `"Manufacture of office and computing machinery"', add
label define gr01a_ind_lbl 311 `"Manufacture of electric motors, generators and transformers"', add
label define gr01a_ind_lbl 312 `"Manufacture of electricity distribution and control apparatus"', add
label define gr01a_ind_lbl 313 `"Manufacture of insulated wire and cable"', add
label define gr01a_ind_lbl 314 `"Manufacture of accumulators, primary cells and primary batteries"', add
label define gr01a_ind_lbl 315 `"Manufacture of electric lamps and lighting equipment"', add
label define gr01a_ind_lbl 316 `"Manufacture of other electrical equipment n.e.c."', add
label define gr01a_ind_lbl 321 `"Manufacture of electronic valves and other electronic components"', add
label define gr01a_ind_lbl 322 `"Manufacture of television and radio transmitters and apparatus for line telephony and line telegraphy"', add
label define gr01a_ind_lbl 323 `"Manufacture of television and radio receivers, sound recording or reproducing apparatus and associated goods"', add
label define gr01a_ind_lbl 331 `"Manufacture of medical and surgical equipment and orthopedic apparatus"', add
label define gr01a_ind_lbl 332 `"Manufacture of instruments and appliances for measuring, checking, navigating and other purposes except industrial process equipment"', add
label define gr01a_ind_lbl 334 `"Manufacture of optical instruments and photographic equipment"', add
label define gr01a_ind_lbl 341 `"Manufacture of motor vehicles"', add
label define gr01a_ind_lbl 342 `"Manufacture of bodies (coachwork) for motor vehicles, manufacture of trailers and semi-trailers"', add
label define gr01a_ind_lbl 343 `"Manufacture of parts and accessories for motor vehicles and their engines"', add
label define gr01a_ind_lbl 351 `"Building and repairing of ships and boats"', add
label define gr01a_ind_lbl 352 `"Manufacture of railway and tramway locomotives and rolling stock"', add
label define gr01a_ind_lbl 353 `"Manufacture of aircraft and spacecraft"', add
label define gr01a_ind_lbl 361 `"Manufacture of furniture"', add
label define gr01a_ind_lbl 362 `"Manufacture of jewellery and related articles"', add
label define gr01a_ind_lbl 364 `"Manufacture of sports goods"', add
label define gr01a_ind_lbl 365 `"Manufacture of games and toys"', add
label define gr01a_ind_lbl 366 `"Other manufacturing n.e.c."', add
label define gr01a_ind_lbl 371 `"Recycling of non-metal waste and scrap"', add
label define gr01a_ind_lbl 401 `"Production and distribution of electricity"', add
label define gr01a_ind_lbl 402 `"Manufacture of gas; distribution of gaseous fuels through mains"', add
label define gr01a_ind_lbl 403 `"Steam and hot water supply"', add
label define gr01a_ind_lbl 410 `"Collection, purification and distribution of water"', add
label define gr01a_ind_lbl 451 `"Site preparation"', add
label define gr01a_ind_lbl 452 `"Building of complete constructions or parts thereof; civil engineering"', add
label define gr01a_ind_lbl 453 `"Building installation"', add
label define gr01a_ind_lbl 454 `"Building completion"', add
label define gr01a_ind_lbl 501 `"Sale of motor vehicles"', add
label define gr01a_ind_lbl 502 `"Maintenance and repair of motor vehicles"', add
label define gr01a_ind_lbl 503 `"Sale of motor vehicles parts and accessories"', add
label define gr01a_ind_lbl 504 `"Sale, maintenance and repair of motorcycles and related parts and accessories"', add
label define gr01a_ind_lbl 505 `"Retail sale of automotive fuel"', add
label define gr01a_ind_lbl 511 `"On a fee or contract basis"', add
label define gr01a_ind_lbl 512 `"Agricultural raw materials and live animals"', add
label define gr01a_ind_lbl 513 `"Food, beverages and tobacco"', add
label define gr01a_ind_lbl 514 `"Household goods"', add
label define gr01a_ind_lbl 515 `"Non-agricultural intermediate products , waste and scrap"', add
label define gr01a_ind_lbl 516 `"Machinery, equipment and supplies"', add
label define gr01a_ind_lbl 517 `"Other wholesale"', add
label define gr01a_ind_lbl 521 `"Non-specialized retail trade in stores"', add
label define gr01a_ind_lbl 522 `"Retail sale of food, beverages and tobacco in specialized stores"', add
label define gr01a_ind_lbl 523 `"Retail sale of pharmaceutical and medical goods, cosmetic and toilet"', add
label define gr01a_ind_lbl 524 `"Retail sale of textiles"', add
label define gr01a_ind_lbl 525 `"Other retail trade of new goods in specialized stores"', add
label define gr01a_ind_lbl 526 `"Retail sale of second-hand goods in stores"', add
label define gr01a_ind_lbl 527 `"Retail trade not in stores"', add
label define gr01a_ind_lbl 528 `"Repair of personal and household goods"', add
label define gr01a_ind_lbl 551 `"Hotels"', add
label define gr01a_ind_lbl 552 `"Camping sites and other provision of short-stay accommodation"', add
label define gr01a_ind_lbl 553 `"Restaurants"', add
label define gr01a_ind_lbl 554 `"Bars"', add
label define gr01a_ind_lbl 555 `"Canteens and businesses preparing ready food intended as a meal at home"', add
label define gr01a_ind_lbl 601 `"Transport via railways"', add
label define gr01a_ind_lbl 602 `"Other land transport"', add
label define gr01a_ind_lbl 611 `"Sea and coastal water transport"', add
label define gr01a_ind_lbl 621 `"Scheduled air transport"', add
label define gr01a_ind_lbl 631 `"Cargo handling and storage"', add
label define gr01a_ind_lbl 632 `"Other supporting transport activities"', add
label define gr01a_ind_lbl 633 `"Activities of travel agencies and tour operators, tourist assistance activities n.e.c."', add
label define gr01a_ind_lbl 634 `"Activities of other transport agencies"', add
label define gr01a_ind_lbl 641 `"Post activities"', add
label define gr01a_ind_lbl 642 `"Telecommunications"', add
label define gr01a_ind_lbl 651 `"Monetary intermediation"', add
label define gr01a_ind_lbl 652 `"Other financial intermediation"', add
label define gr01a_ind_lbl 660 `"Insurance and pension funding except compulsory social security"', add
label define gr01a_ind_lbl 671 `"Activities auxiliary to financial intermediation except insurance and pension funding"', add
label define gr01a_ind_lbl 672 `"Activities auxiliary to insurance and pension funding"', add
label define gr01a_ind_lbl 701 `"Real estate managing activities with own or leased property"', add
label define gr01a_ind_lbl 703 `"Real estate activities on a fee or contract basis"', add
label define gr01a_ind_lbl 711 `"Renting of cars"', add
label define gr01a_ind_lbl 712 `"Renting of transport equipment"', add
label define gr01a_ind_lbl 714 `"Renting of personal and household goods n.e.c."', add
label define gr01a_ind_lbl 721 `"Hardware consultancy"', add
label define gr01a_ind_lbl 722 `"Software consultancy and supply"', add
label define gr01a_ind_lbl 723 `"Data processing"', add
label define gr01a_ind_lbl 725 `"Maintenance and repair of office, accounting and computer machinery"', add
label define gr01a_ind_lbl 726 `"Other computer related activities"', add
label define gr01a_ind_lbl 731 `"Research and experimental development on natural sciences and engineering"', add
label define gr01a_ind_lbl 732 `"Research and experimental development on social sciences and humanities"', add
label define gr01a_ind_lbl 741 `"Legal, accounting, bookkeeping and auditing activities, tax consultancy, market research and**"', add
label define gr01a_ind_lbl 742 `"Architectural and engineering activities and related technical consultancy"', add
label define gr01a_ind_lbl 743 `"Technical testing and analysis"', add
label define gr01a_ind_lbl 744 `"Advertising"', add
label define gr01a_ind_lbl 745 `"Labour recruitment and provision of personnel"', add
label define gr01a_ind_lbl 746 `"Investigation and security activities"', add
label define gr01a_ind_lbl 747 `"Building-cleaning activities"', add
label define gr01a_ind_lbl 748 `"Other business activities n.e.c."', add
label define gr01a_ind_lbl 751 `"Administration of the State and the economic and social policy"', add
label define gr01a_ind_lbl 752 `"Provision of services to the community as a whole"', add
label define gr01a_ind_lbl 753 `"Compulsory social security activities"', add
label define gr01a_ind_lbl 801 `"Primary education"', add
label define gr01a_ind_lbl 802 `"Secondary education"', add
label define gr01a_ind_lbl 803 `"Higher education"', add
label define gr01a_ind_lbl 804 `"Adult education and other education"', add
label define gr01a_ind_lbl 851 `"Human health activities"', add
label define gr01a_ind_lbl 852 `"Veterinary health activities"', add
label define gr01a_ind_lbl 853 `"Social care activities"', add
label define gr01a_ind_lbl 900 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define gr01a_ind_lbl 911 `"Activities of business, employers and professional organizations"', add
label define gr01a_ind_lbl 912 `"Activities of trade unions"', add
label define gr01a_ind_lbl 913 `"Activities of other organizations"', add
label define gr01a_ind_lbl 921 `"Motion picture and video activities"', add
label define gr01a_ind_lbl 922 `"Radio and television activities"', add
label define gr01a_ind_lbl 923 `"Other entertainment activities"', add
label define gr01a_ind_lbl 924 `"News agency activities"', add
label define gr01a_ind_lbl 925 `"Library, archives, museums and other cultural activities"', add
label define gr01a_ind_lbl 926 `"Sporting activities"', add
label define gr01a_ind_lbl 927 `"Other recreational activities"', add
label define gr01a_ind_lbl 930 `"Other service activities"', add
label define gr01a_ind_lbl 950 `"Activities of Private households as employers of domestic staff"', add
label define gr01a_ind_lbl 990 `"Extraterritorial organizations and bodies"', add
label define gr01a_ind_lbl 997 `"Response suppressed"', add
label define gr01a_ind_lbl 998 `"Unknown"', add
label define gr01a_ind_lbl 999 `"NIU (not in universe)"', add
label values gr01a_ind gr01a_ind_lbl

label define gr01a_occ_lbl 011 `"Armed Forces"'
label define gr01a_occ_lbl 111 `"Legislators and senior government officials"', add
label define gr01a_occ_lbl 121 `"Directors and chief executives"', add
label define gr01a_occ_lbl 122 `"Production and operations managers"', add
label define gr01a_occ_lbl 123 `"Other specialist managers"', add
label define gr01a_occ_lbl 131 `"Managers of small enterprises in agriculture, hunting, forestry and fishing"', add
label define gr01a_occ_lbl 132 `"Managers of small enterprises in manufacturing"', add
label define gr01a_occ_lbl 133 `"Managers of small enterprises in construction"', add
label define gr01a_occ_lbl 134 `"Managers of small enterprises in wholesale and retail trade"', add
label define gr01a_occ_lbl 135 `"Managers of small enterprises of restaurants and hotels"', add
label define gr01a_occ_lbl 136 `"Managers of small enterprises in transport, storage and communications"', add
label define gr01a_occ_lbl 139 `"Other managers of small enterprises"', add
label define gr01a_occ_lbl 211 `"Physicists, chemists and related professionals"', add
label define gr01a_occ_lbl 212 `"Mathematicians, statisticians and related professionals"', add
label define gr01a_occ_lbl 213 `"Computing professionals"', add
label define gr01a_occ_lbl 221 `"Architects, town and traffic planners"', add
label define gr01a_occ_lbl 222 `"Civil engineers"', add
label define gr01a_occ_lbl 223 `"Electrical engineers, electronic engineers and mechanical engineers (2143,2144,2145)"', add
label define gr01a_occ_lbl 229 `"Other engineers"', add
label define gr01a_occ_lbl 231 `"Biologists, agriculturalists and related professionals"', add
label define gr01a_occ_lbl 232 `"Medical doctors"', add
label define gr01a_occ_lbl 233 `"Dentists"', add
label define gr01a_occ_lbl 234 `"Veterinarians"', add
label define gr01a_occ_lbl 235 `"Pharmacists"', add
label define gr01a_occ_lbl 237 `"Nursing and midwifery professionals (university graduates)"', add
label define gr01a_occ_lbl 241 `"University teaching professionals"', add
label define gr01a_occ_lbl 242 `"Technological educational institutes and higher eructation teaching professionals"', add
label define gr01a_occ_lbl 243 `"Secondary education teaching professionals"', add
label define gr01a_occ_lbl 244 `"Primary education teaching professionals"', add
label define gr01a_occ_lbl 245 `"Pre-primary education teaching professionals"', add
label define gr01a_occ_lbl 246 `"Special education teaching professionals"', add
label define gr01a_occ_lbl 247 `"Preparatory (coaching), private professional and technical schools teaching professionals"', add
label define gr01a_occ_lbl 249 `"Other teaching professionals"', add
label define gr01a_occ_lbl 251 `"Accountants and other business professionals"', add
label define gr01a_occ_lbl 261 `"Lawyers and consultants"', add
label define gr01a_occ_lbl 262 `"Public prosecutors"', add
label define gr01a_occ_lbl 263 `"Judges"', add
label define gr01a_occ_lbl 264 `"Public notaries and other legal professionals"', add
label define gr01a_occ_lbl 271 `"Archivists, librarians and related information professionals"', add
label define gr01a_occ_lbl 272 `"Economists, sociologists and related professionals"', add
label define gr01a_occ_lbl 273 `"Writers, journalists and related professionals"', add
label define gr01a_occ_lbl 274 `"Sculptors, painters and related artists"', add
label define gr01a_occ_lbl 275 `"Composers, musicians, singers and related artists"', add
label define gr01a_occ_lbl 276 `"Choreographers and dancers"', add
label define gr01a_occ_lbl 277 `"Film, stage and related actors and directors"', add
label define gr01a_occ_lbl 278 `"Religious professionals"', add
label define gr01a_occ_lbl 279 `"Public service administrative professionals (university graduates)"', add
label define gr01a_occ_lbl 311 `"Physical and engineering science technicians"', add
label define gr01a_occ_lbl 312 `"Draughts persons (architectural design etc)"', add
label define gr01a_occ_lbl 313 `"Computer associate professionals"', add
label define gr01a_occ_lbl 314 `"Optical and electronic equipment operators"', add
label define gr01a_occ_lbl 315 `"Ships' engineers"', add
label define gr01a_occ_lbl 316 `"Ships' deck officers and pilots"', add
label define gr01a_occ_lbl 317 `"Aircraft pilots, air traffic controllers and related professionals (3143, 3144)"', add
label define gr01a_occ_lbl 318 `"Safety and quality inspectors"', add
label define gr01a_occ_lbl 321 `"Life science technicians and related associate professionals"', add
label define gr01a_occ_lbl 322 `"Health associate professionals (except nursing)"', add
label define gr01a_occ_lbl 323 `"Nursing professionals (technological educational institutes or other schools graduates)"', add
label define gr01a_occ_lbl 324 `"Midwifery professionals (technological educational institutes or other schools graduates)"', add
label define gr01a_occ_lbl 331 `"Pre-primary and special education teaching associate professionals (332, 333)"', add
label define gr01a_occ_lbl 332 `"Other teaching associate professionals"', add
label define gr01a_occ_lbl 341 `"Finance and sales associate professionals"', add
label define gr01a_occ_lbl 342 `"Business services agents and trade brokers"', add
label define gr01a_occ_lbl 343 `"Administrative associate professionals"', add
label define gr01a_occ_lbl 344 `"Customs, tax and related government associate professionals"', add
label define gr01a_occ_lbl 345 `"Police inspectors and detectives"', add
label define gr01a_occ_lbl 346 `"Social work associate professionals (technological educational institutes or other schools grad.)"', add
label define gr01a_occ_lbl 347 `"Decorators and commercial designers"', add
label define gr01a_occ_lbl 348 `"Radio, TV and other announcers, singers and related associate professionals (3472, 3473, 3474)"', add
label define gr01a_occ_lbl 349 `"Athletes, sport persons and related associate professionals"', add
label define gr01a_occ_lbl 411 `"Secretaries and keyboard operating clerks"', add
label define gr01a_occ_lbl 412 `"Numerical clerks"', add
label define gr01a_occ_lbl 413 `"Material  recording and transport clerks"', add
label define gr01a_occ_lbl 414 `"Mail carriers and sorting clerks"', add
label define gr01a_occ_lbl 415 `"Library and filing clerks"', add
label define gr01a_occ_lbl 419 `"Other office clerks"', add
label define gr01a_occ_lbl 421 `"Cashiers and tellers clerks and related professionals"', add
label define gr01a_occ_lbl 422 `"Bookmakers and croupiers"', add
label define gr01a_occ_lbl 423 `"Travel agency and related clerks, receptionists (4221, 4222)"', add
label define gr01a_occ_lbl 424 `"Telephone switchboard operators"', add
label define gr01a_occ_lbl 511 `"Travel attendants, travel stewards and travel guides (5111, 5113)"', add
label define gr01a_occ_lbl 512 `"Transport conductors"', add
label define gr01a_occ_lbl 513 `"Housekeepers and related workers"', add
label define gr01a_occ_lbl 514 `"Cooks"', add
label define gr01a_occ_lbl 515 `"Waiters"', add
label define gr01a_occ_lbl 516 `"Personal care and related workers"', add
label define gr01a_occ_lbl 517 `"Hairdressers, barbers, beauticians and related workers"', add
label define gr01a_occ_lbl 519 `"Other personal services workers"', add
label define gr01a_occ_lbl 521 `"Firefighters"', add
label define gr01a_occ_lbl 522 `"Police officers"', add
label define gr01a_occ_lbl 523 `"Other protective services workers"', add
label define gr01a_occ_lbl 531 `"Fashion and other models"', add
label define gr01a_occ_lbl 532 `"Shop salespersons"', add
label define gr01a_occ_lbl 533 `"Stall and market salespersons"', add
label define gr01a_occ_lbl 611 `"Field crops and rice growers"', add
label define gr01a_occ_lbl 612 `"Cotton growers"', add
label define gr01a_occ_lbl 613 `"Tobacco growers"', add
label define gr01a_occ_lbl 614 `"Vegetables, horticultural and nursery growers"', add
label define gr01a_occ_lbl 615 `"Other agricultural workers skilled mainly in an annual cultivation"', add
label define gr01a_occ_lbl 621 `"Olive cultivation"', add
label define gr01a_occ_lbl 622 `"Citrus cultivation"', add
label define gr01a_occ_lbl 623 `"Other fruiter cultivation"', add
label define gr01a_occ_lbl 624 `"Vineyard and raisin vineyard cultivation"', add
label define gr01a_occ_lbl 631 `"Multi-cultivation agricultural workers"', add
label define gr01a_occ_lbl 641 `"Cow producers (cowmen)"', add
label define gr01a_occ_lbl 642 `"Sheep and goat producers"', add
label define gr01a_occ_lbl 643 `"Pig producers"', add
label define gr01a_occ_lbl 644 `"Poultry producers"', add
label define gr01a_occ_lbl 645 `"Other skilled animal producers"', add
label define gr01a_occ_lbl 646 `"Mixed cultivation animal producers"', add
label define gr01a_occ_lbl 647 `"Mixed cultivation agricultural and animal producers"', add
label define gr01a_occ_lbl 651 `"Forestry workers, loggers and related workers (6141,6142)"', add
label define gr01a_occ_lbl 661 `"Inland and coastal waters and deep-sea fishery workers (6152, 6153)"', add
label define gr01a_occ_lbl 662 `"Aquatic life cultivation workers"', add
label define gr01a_occ_lbl 711 `"Miners and quarry workers"', add
label define gr01a_occ_lbl 712 `"Stone splitters and stone cutters"', add
label define gr01a_occ_lbl 721 `"Builders"', add
label define gr01a_occ_lbl 722 `"Concrete placers, concrete finishers and mosaic floor layers"', add
label define gr01a_occ_lbl 723 `"Carpenters and joiners"', add
label define gr01a_occ_lbl 724 `"Building frame and maintenance workers and other infrastructure workers"', add
label define gr01a_occ_lbl 725 `"Plasterers and related trades workers"', add
label define gr01a_occ_lbl 726 `"Plumbers and pipe fitters"', add
label define gr01a_occ_lbl 727 `"Building and related electricians"', add
label define gr01a_occ_lbl 728 `"Other building finishers and other infrastructure workers"', add
label define gr01a_occ_lbl 729 `"Painters, building structure cleaners and related trades workers"', add
label define gr01a_occ_lbl 731 `"Metal molders and coremakers"', add
label define gr01a_occ_lbl 732 `"Welders and flame cutters"', add
label define gr01a_occ_lbl 733 `"Sheet metal workers"', add
label define gr01a_occ_lbl 734 `"Structural metal workers and related trades workers"', add
label define gr01a_occ_lbl 735 `"Blacksmiths, toolmakers and related trades workers"', add
label define gr01a_occ_lbl 741 `"Motor vehicle mechanics and fitters"', add
label define gr01a_occ_lbl 742 `"Aircraft engine mechanics and fitters"', add
label define gr01a_occ_lbl 743 `"Agricultural or industrial machinery mechanics and fitters"', add
label define gr01a_occ_lbl 744 `"Electrical mechanics fitters and services"', add
label define gr01a_occ_lbl 745 `"Electronics mechanics, fitters and servicers"', add
label define gr01a_occ_lbl 746 `"Telegraph and telephone installers and servicers"', add
label define gr01a_occ_lbl 747 `"Electrical line installers, repairers and cable jointers"', add
label define gr01a_occ_lbl 751 `"Precision instrument makers and repairers"', add
label define gr01a_occ_lbl 752 `"Musical instrument makers and repairers"', add
label define gr01a_occ_lbl 753 `"Jewelry and precious metal workers"', add
label define gr01a_occ_lbl 754 `"Potters, glassmakers and related trades workers"', add
label define gr01a_occ_lbl 755 `"Handicraft workers in wood, textile, leather and related materials"', add
label define gr01a_occ_lbl 756 `"Craft printing and related trades workers"', add
label define gr01a_occ_lbl 761 `"Butchers, fishmongers and related food preparers"', add
label define gr01a_occ_lbl 762 `"Bakers, pastry cooks and confectionery makers"', add
label define gr01a_occ_lbl 763 `"Dairy products workers"', add
label define gr01a_occ_lbl 764 `"Other food processing, beverage and tobacco workers"', add
label define gr01a_occ_lbl 765 `"Tobacco preparers and tobacco products makers"', add
label define gr01a_occ_lbl 771 `"Cabinet makers and related trades workers"', add
label define gr01a_occ_lbl 772 `"Wood treaters, woodworking machine setters and setter operators and related trades workers"', add
label define gr01a_occ_lbl 781 `"Fiber preparers and related workers (7431, 7432)"', add
label define gr01a_occ_lbl 782 `"Tailors, dressmakers and hatters"', add
label define gr01a_occ_lbl 783 `"Furriers and related workers"', add
label define gr01a_occ_lbl 784 `"Textile, leather and related pattern makers and cutters"', add
label define gr01a_occ_lbl 785 `"Sewers, embroiderers and related workers"', add
label define gr01a_occ_lbl 786 `"Upholsters and related workers"', add
label define gr01a_occ_lbl 787 `"Pelt dressers, tanners leather and fur"', add
label define gr01a_occ_lbl 788 `"Shoe makers and leather articles except garments"', add
label define gr01a_occ_lbl 811 `"Mining and mineral processing plant operators"', add
label define gr01a_occ_lbl 812 `"Metal processing plant operators"', add
label define gr01a_occ_lbl 813 `"Glass, ceramics and related plant operators"', add
label define gr01a_occ_lbl 814 `"Wood processing plant operators"', add
label define gr01a_occ_lbl 815 `"Paper pulp and papermaking plant operators (8142, 8143)"', add
label define gr01a_occ_lbl 816 `"Chemical processing plant operators"', add
label define gr01a_occ_lbl 817 `"Power production and related plant operators"', add
label define gr01a_occ_lbl 821 `"Machine tool operators"', add
label define gr01a_occ_lbl 822 `"Cement and other (non metal) mineral products machine operators"', add
label define gr01a_occ_lbl 831 `"Pharmaceutical and toiletry products machine operators"', add
label define gr01a_occ_lbl 832 `"Ammunition and explosive products machine operators"', add
label define gr01a_occ_lbl 833 `"Metal finishing, plating and coating machine operators"', add
label define gr01a_occ_lbl 834 `"Other chemical products machine operators"', add
label define gr01a_occ_lbl 835 `"Rubber and plastic products machine operators"', add
label define gr01a_occ_lbl 841 `"Wood products machine operators"', add
label define gr01a_occ_lbl 842 `"Printing, binding and paper products machine operators"', add
label define gr01a_occ_lbl 851 `"Fiber preparing, weaving and knitting machine operators (8261, 8262)"', add
label define gr01a_occ_lbl 852 `"Bleaching, dyeing and finishing machine operators"', add
label define gr01a_occ_lbl 853 `"Washing, cleaning and press ironing garments and household linen machine operators"', add
label define gr01a_occ_lbl 854 `"Fur and leather preparing machine operators"', add
label define gr01a_occ_lbl 855 `"Shoemaking and related machine operators"', add
label define gr01a_occ_lbl 859 `"Textile, fur and leather products machine operators"', add
label define gr01a_occ_lbl 861 `"Meat and fish processing machine operators"', add
label define gr01a_occ_lbl 862 `"Dairy products machine operators"', add
label define gr01a_occ_lbl 863 `"Bread, pastry, confectionery goods, cereal and chocolate products machine operators"', add
label define gr01a_occ_lbl 864 `"Other food products machine operators"', add
label define gr01a_occ_lbl 865 `"Brewers and other beverage machine operators"', add
label define gr01a_occ_lbl 866 `"Tobacco processing and production machine operators"', add
label define gr01a_occ_lbl 871 `"Mechanical machinery assemblers"', add
label define gr01a_occ_lbl 872 `"Electrical and electronic equipment assemblers (8282, 8283)"', add
label define gr01a_occ_lbl 873 `"Other assemblers"', add
label define gr01a_occ_lbl 874 `"Other machine operators"', add
label define gr01a_occ_lbl 881 `"Locomotive engine drivers and related workers"', add
label define gr01a_occ_lbl 882 `"Motor vehicle drivers"', add
label define gr01a_occ_lbl 883 `"Motorized farm and forestry plant operators"', add
label define gr01a_occ_lbl 884 `"Earth moving and related plant operators"', add
label define gr01a_occ_lbl 885 `"Crane, hoist, lifting truck and related plant operators (8333, 8334)"', add
label define gr01a_occ_lbl 886 `"Ships' deck crews and related workers"', add
label define gr01a_occ_lbl 911 `"Street vendors and related workers"', add
label define gr01a_occ_lbl 912 `"Shoe cleaning and other street services elementary occupations"', add
label define gr01a_occ_lbl 913 `"Domestic and related helpers, cleaners and launderers"', add
label define gr01a_occ_lbl 914 `"Building caretakers, window and related cleaners"', add
label define gr01a_occ_lbl 915 `"Messengers, porters, doorkeepers and related workers"', add
label define gr01a_occ_lbl 916 `"Garbage collectors, sweepers and related laborers"', add
label define gr01a_occ_lbl 921 `"Agricultural, fishery and related laborers"', add
label define gr01a_occ_lbl 931 `"Mining and construction laborers"', add
label define gr01a_occ_lbl 932 `"Manufacturing laborers"', add
label define gr01a_occ_lbl 933 `"Transport laborers and freight handlers"', add
label define gr01a_occ_lbl 996 `"Non-identifiable occupations"', add
label define gr01a_occ_lbl 997 `"Response suppressed"', add
label define gr01a_occ_lbl 998 `"No answer"', add
label define gr01a_occ_lbl 999 `"NIU (not in universe)"', add
label values gr01a_occ gr01a_occ_lbl

label define gr01a_classwk_lbl 1 `"Employer"'
label define gr01a_classwk_lbl 2 `"Self-employed"', add
label define gr01a_classwk_lbl 3 `"Employee or wage-earner"', add
label define gr01a_classwk_lbl 4 `"Assistant in the family business"', add
label define gr01a_classwk_lbl 9 `"NIU (not in universe)"', add
label values gr01a_classwk gr01a_classwk_lbl

label define gr01a_hrswk_lbl 00 `"0"'
label define gr01a_hrswk_lbl 01 `"1"', add
label define gr01a_hrswk_lbl 02 `"2"', add
label define gr01a_hrswk_lbl 03 `"3"', add
label define gr01a_hrswk_lbl 04 `"4"', add
label define gr01a_hrswk_lbl 05 `"5"', add
label define gr01a_hrswk_lbl 06 `"6"', add
label define gr01a_hrswk_lbl 07 `"7"', add
label define gr01a_hrswk_lbl 08 `"8"', add
label define gr01a_hrswk_lbl 09 `"9"', add
label define gr01a_hrswk_lbl 10 `"10"', add
label define gr01a_hrswk_lbl 11 `"11"', add
label define gr01a_hrswk_lbl 12 `"12"', add
label define gr01a_hrswk_lbl 13 `"13"', add
label define gr01a_hrswk_lbl 14 `"14"', add
label define gr01a_hrswk_lbl 15 `"15"', add
label define gr01a_hrswk_lbl 16 `"16"', add
label define gr01a_hrswk_lbl 17 `"17"', add
label define gr01a_hrswk_lbl 18 `"18"', add
label define gr01a_hrswk_lbl 19 `"19"', add
label define gr01a_hrswk_lbl 20 `"20"', add
label define gr01a_hrswk_lbl 21 `"21"', add
label define gr01a_hrswk_lbl 22 `"22"', add
label define gr01a_hrswk_lbl 23 `"23"', add
label define gr01a_hrswk_lbl 24 `"24"', add
label define gr01a_hrswk_lbl 25 `"25"', add
label define gr01a_hrswk_lbl 26 `"26"', add
label define gr01a_hrswk_lbl 27 `"27"', add
label define gr01a_hrswk_lbl 28 `"28"', add
label define gr01a_hrswk_lbl 29 `"29"', add
label define gr01a_hrswk_lbl 30 `"30"', add
label define gr01a_hrswk_lbl 31 `"31"', add
label define gr01a_hrswk_lbl 32 `"32"', add
label define gr01a_hrswk_lbl 33 `"33"', add
label define gr01a_hrswk_lbl 34 `"34"', add
label define gr01a_hrswk_lbl 35 `"35"', add
label define gr01a_hrswk_lbl 36 `"36"', add
label define gr01a_hrswk_lbl 37 `"37"', add
label define gr01a_hrswk_lbl 38 `"38"', add
label define gr01a_hrswk_lbl 39 `"39"', add
label define gr01a_hrswk_lbl 40 `"40"', add
label define gr01a_hrswk_lbl 41 `"41"', add
label define gr01a_hrswk_lbl 42 `"42"', add
label define gr01a_hrswk_lbl 43 `"43"', add
label define gr01a_hrswk_lbl 44 `"44"', add
label define gr01a_hrswk_lbl 45 `"45"', add
label define gr01a_hrswk_lbl 46 `"46"', add
label define gr01a_hrswk_lbl 47 `"47"', add
label define gr01a_hrswk_lbl 48 `"48"', add
label define gr01a_hrswk_lbl 49 `"49"', add
label define gr01a_hrswk_lbl 50 `"50"', add
label define gr01a_hrswk_lbl 51 `"51"', add
label define gr01a_hrswk_lbl 52 `"52"', add
label define gr01a_hrswk_lbl 53 `"53"', add
label define gr01a_hrswk_lbl 54 `"54"', add
label define gr01a_hrswk_lbl 55 `"55"', add
label define gr01a_hrswk_lbl 56 `"56"', add
label define gr01a_hrswk_lbl 57 `"57"', add
label define gr01a_hrswk_lbl 58 `"58"', add
label define gr01a_hrswk_lbl 59 `"59"', add
label define gr01a_hrswk_lbl 60 `"60"', add
label define gr01a_hrswk_lbl 61 `"61"', add
label define gr01a_hrswk_lbl 62 `"62"', add
label define gr01a_hrswk_lbl 63 `"63"', add
label define gr01a_hrswk_lbl 64 `"64"', add
label define gr01a_hrswk_lbl 65 `"65"', add
label define gr01a_hrswk_lbl 66 `"66"', add
label define gr01a_hrswk_lbl 67 `"67"', add
label define gr01a_hrswk_lbl 68 `"68"', add
label define gr01a_hrswk_lbl 69 `"69"', add
label define gr01a_hrswk_lbl 70 `"70"', add
label define gr01a_hrswk_lbl 71 `"71"', add
label define gr01a_hrswk_lbl 72 `"72"', add
label define gr01a_hrswk_lbl 73 `"73"', add
label define gr01a_hrswk_lbl 74 `"74"', add
label define gr01a_hrswk_lbl 75 `"75"', add
label define gr01a_hrswk_lbl 76 `"76"', add
label define gr01a_hrswk_lbl 77 `"77"', add
label define gr01a_hrswk_lbl 78 `"78"', add
label define gr01a_hrswk_lbl 79 `"79"', add
label define gr01a_hrswk_lbl 80 `"80"', add
label define gr01a_hrswk_lbl 81 `"81"', add
label define gr01a_hrswk_lbl 82 `"82"', add
label define gr01a_hrswk_lbl 83 `"83"', add
label define gr01a_hrswk_lbl 84 `"84"', add
label define gr01a_hrswk_lbl 85 `"85"', add
label define gr01a_hrswk_lbl 86 `"86"', add
label define gr01a_hrswk_lbl 87 `"87"', add
label define gr01a_hrswk_lbl 88 `"88"', add
label define gr01a_hrswk_lbl 89 `"89"', add
label define gr01a_hrswk_lbl 90 `"90"', add
label define gr01a_hrswk_lbl 91 `"91"', add
label define gr01a_hrswk_lbl 92 `"92"', add
label define gr01a_hrswk_lbl 93 `"93"', add
label define gr01a_hrswk_lbl 94 `"94"', add
label define gr01a_hrswk_lbl 95 `"95"', add
label define gr01a_hrswk_lbl 96 `"96"', add
label define gr01a_hrswk_lbl 97 `"97"', add
label define gr01a_hrswk_lbl 98 `"98"', add
label define gr01a_hrswk_lbl 99 `"NIU (not in universe)"', add
label values gr01a_hrswk gr01a_hrswk_lbl

label define gr01a_whyemp_lbl 1 `"Seasonal work"'
label define gr01a_whyemp_lbl 2 `"Weather conditions"', add
label define gr01a_whyemp_lbl 3 `"Leave/sickness"', add
label define gr01a_whyemp_lbl 4 `"Other"', add
label define gr01a_whyemp_lbl 9 `"NIU (not in universe)"', add
label values gr01a_whyemp gr01a_whyemp_lbl

label define gr01a_estsize_lbl 1 `"Up to 9 persons"'
label define gr01a_estsize_lbl 2 `"10 or more"', add
label define gr01a_estsize_lbl 8 `"Unknown"', add
label define gr01a_estsize_lbl 9 `"NIU (not in universe)"', add
label values gr01a_estsize gr01a_estsize_lbl

label define gr01a_empstaty_lbl 0 `"NIU (not in universe)"'
label define gr01a_empstaty_lbl 1 `"Working"', add
label define gr01a_empstaty_lbl 2 `"Job seeker"', add
label define gr01a_empstaty_lbl 3 `"Job seeker for the 1st time"', add
label define gr01a_empstaty_lbl 4 `"Pupil or student"', add
label define gr01a_empstaty_lbl 5 `"Pensioner"', add
label define gr01a_empstaty_lbl 6 `"Person of independent means"', add
label define gr01a_empstaty_lbl 7 `"Household activities"', add
label define gr01a_empstaty_lbl 8 `"Conscript"', add
label define gr01a_empstaty_lbl 9 `"Other case"', add
label values gr01a_empstaty gr01a_empstaty_lbl

label define gr01a_hrwrk2_lbl 01 `"1"'
label define gr01a_hrwrk2_lbl 02 `"2"', add
label define gr01a_hrwrk2_lbl 03 `"3"', add
label define gr01a_hrwrk2_lbl 04 `"4"', add
label define gr01a_hrwrk2_lbl 05 `"5"', add
label define gr01a_hrwrk2_lbl 06 `"6"', add
label define gr01a_hrwrk2_lbl 07 `"7"', add
label define gr01a_hrwrk2_lbl 08 `"8"', add
label define gr01a_hrwrk2_lbl 09 `"9"', add
label define gr01a_hrwrk2_lbl 10 `"10"', add
label define gr01a_hrwrk2_lbl 11 `"11"', add
label define gr01a_hrwrk2_lbl 12 `"12"', add
label define gr01a_hrwrk2_lbl 13 `"13"', add
label define gr01a_hrwrk2_lbl 14 `"14"', add
label define gr01a_hrwrk2_lbl 15 `"15"', add
label define gr01a_hrwrk2_lbl 16 `"16"', add
label define gr01a_hrwrk2_lbl 17 `"17"', add
label define gr01a_hrwrk2_lbl 18 `"18"', add
label define gr01a_hrwrk2_lbl 19 `"19"', add
label define gr01a_hrwrk2_lbl 20 `"20"', add
label define gr01a_hrwrk2_lbl 21 `"21"', add
label define gr01a_hrwrk2_lbl 22 `"22"', add
label define gr01a_hrwrk2_lbl 23 `"23"', add
label define gr01a_hrwrk2_lbl 24 `"24"', add
label define gr01a_hrwrk2_lbl 25 `"25"', add
label define gr01a_hrwrk2_lbl 26 `"26"', add
label define gr01a_hrwrk2_lbl 27 `"27"', add
label define gr01a_hrwrk2_lbl 28 `"28"', add
label define gr01a_hrwrk2_lbl 29 `"29"', add
label define gr01a_hrwrk2_lbl 30 `"30"', add
label define gr01a_hrwrk2_lbl 31 `"31"', add
label define gr01a_hrwrk2_lbl 32 `"32"', add
label define gr01a_hrwrk2_lbl 33 `"33"', add
label define gr01a_hrwrk2_lbl 34 `"34"', add
label define gr01a_hrwrk2_lbl 35 `"35"', add
label define gr01a_hrwrk2_lbl 36 `"36"', add
label define gr01a_hrwrk2_lbl 37 `"37"', add
label define gr01a_hrwrk2_lbl 38 `"38"', add
label define gr01a_hrwrk2_lbl 39 `"39"', add
label define gr01a_hrwrk2_lbl 40 `"40"', add
label define gr01a_hrwrk2_lbl 41 `"41"', add
label define gr01a_hrwrk2_lbl 42 `"42"', add
label define gr01a_hrwrk2_lbl 43 `"43"', add
label define gr01a_hrwrk2_lbl 44 `"44"', add
label define gr01a_hrwrk2_lbl 45 `"45"', add
label define gr01a_hrwrk2_lbl 46 `"46"', add
label define gr01a_hrwrk2_lbl 47 `"47"', add
label define gr01a_hrwrk2_lbl 48 `"48"', add
label define gr01a_hrwrk2_lbl 49 `"49"', add
label define gr01a_hrwrk2_lbl 50 `"50"', add
label define gr01a_hrwrk2_lbl 51 `"51"', add
label define gr01a_hrwrk2_lbl 52 `"52"', add
label define gr01a_hrwrk2_lbl 53 `"53"', add
label define gr01a_hrwrk2_lbl 54 `"54"', add
label define gr01a_hrwrk2_lbl 55 `"55"', add
label define gr01a_hrwrk2_lbl 56 `"56"', add
label define gr01a_hrwrk2_lbl 57 `"57"', add
label define gr01a_hrwrk2_lbl 58 `"58"', add
label define gr01a_hrwrk2_lbl 59 `"59"', add
label define gr01a_hrwrk2_lbl 60 `"60"', add
label define gr01a_hrwrk2_lbl 61 `"61"', add
label define gr01a_hrwrk2_lbl 62 `"62"', add
label define gr01a_hrwrk2_lbl 63 `"63"', add
label define gr01a_hrwrk2_lbl 64 `"64"', add
label define gr01a_hrwrk2_lbl 65 `"65"', add
label define gr01a_hrwrk2_lbl 66 `"66"', add
label define gr01a_hrwrk2_lbl 67 `"67"', add
label define gr01a_hrwrk2_lbl 68 `"68"', add
label define gr01a_hrwrk2_lbl 69 `"69"', add
label define gr01a_hrwrk2_lbl 70 `"70"', add
label define gr01a_hrwrk2_lbl 71 `"71"', add
label define gr01a_hrwrk2_lbl 72 `"72"', add
label define gr01a_hrwrk2_lbl 73 `"73"', add
label define gr01a_hrwrk2_lbl 74 `"74"', add
label define gr01a_hrwrk2_lbl 75 `"75"', add
label define gr01a_hrwrk2_lbl 76 `"76"', add
label define gr01a_hrwrk2_lbl 77 `"77"', add
label define gr01a_hrwrk2_lbl 78 `"78"', add
label define gr01a_hrwrk2_lbl 79 `"79"', add
label define gr01a_hrwrk2_lbl 80 `"80"', add
label define gr01a_hrwrk2_lbl 81 `"81"', add
label define gr01a_hrwrk2_lbl 82 `"82"', add
label define gr01a_hrwrk2_lbl 83 `"83"', add
label define gr01a_hrwrk2_lbl 84 `"84"', add
label define gr01a_hrwrk2_lbl 85 `"85"', add
label define gr01a_hrwrk2_lbl 86 `"86"', add
label define gr01a_hrwrk2_lbl 87 `"87"', add
label define gr01a_hrwrk2_lbl 88 `"88"', add
label define gr01a_hrwrk2_lbl 89 `"89"', add
label define gr01a_hrwrk2_lbl 90 `"90"', add
label define gr01a_hrwrk2_lbl 91 `"91"', add
label define gr01a_hrwrk2_lbl 92 `"92"', add
label define gr01a_hrwrk2_lbl 93 `"93"', add
label define gr01a_hrwrk2_lbl 94 `"94"', add
label define gr01a_hrwrk2_lbl 95 `"95"', add
label define gr01a_hrwrk2_lbl 96 `"96"', add
label define gr01a_hrwrk2_lbl 97 `"97"', add
label define gr01a_hrwrk2_lbl 98 `"98"', add
label define gr01a_hrwrk2_lbl 99 `"NIU (not in universe)"', add
label values gr01a_hrwrk2 gr01a_hrwrk2_lbl

label define gr01a_wrkplc_lbl 1 `"No fixed place of work"'
label define gr01a_wrkplc_lbl 2 `"Permanent, within usual residence"', add
label define gr01a_wrkplc_lbl 3 `"Permanent, in municipality of usual residence"', add
label define gr01a_wrkplc_lbl 4 `"Permanent, in other municipality, same stratum"', add
label define gr01a_wrkplc_lbl 5 `"Permanent, in other municipality, other stratum"', add
label define gr01a_wrkplc_lbl 6 `"Permanent, in other department"', add
label define gr01a_wrkplc_lbl 7 `"Permanent, abroad"', add
label define gr01a_wrkplc_lbl 9 `"NIU (not in universe)"', add
label values gr01a_wrkplc gr01a_wrkplc_lbl

label define gr01a_chborn_lbl 00 `"0"'
label define gr01a_chborn_lbl 01 `"1"', add
label define gr01a_chborn_lbl 02 `"2"', add
label define gr01a_chborn_lbl 03 `"3"', add
label define gr01a_chborn_lbl 04 `"4"', add
label define gr01a_chborn_lbl 05 `"5"', add
label define gr01a_chborn_lbl 06 `"6"', add
label define gr01a_chborn_lbl 07 `"7"', add
label define gr01a_chborn_lbl 08 `"8"', add
label define gr01a_chborn_lbl 09 `"9"', add
label define gr01a_chborn_lbl 10 `"10"', add
label define gr01a_chborn_lbl 11 `"11+"', add
label define gr01a_chborn_lbl 99 `"NIU (not in universe)"', add
label values gr01a_chborn gr01a_chborn_lbl

label define gr01a_frstchyr_lbl 1925 `"1925 or earlier"'
label define gr01a_frstchyr_lbl 1926 `"1926"', add
label define gr01a_frstchyr_lbl 1927 `"1927"', add
label define gr01a_frstchyr_lbl 1928 `"1928"', add
label define gr01a_frstchyr_lbl 1929 `"1929"', add
label define gr01a_frstchyr_lbl 1930 `"1930"', add
label define gr01a_frstchyr_lbl 1931 `"1931"', add
label define gr01a_frstchyr_lbl 1932 `"1932"', add
label define gr01a_frstchyr_lbl 1933 `"1933"', add
label define gr01a_frstchyr_lbl 1934 `"1934"', add
label define gr01a_frstchyr_lbl 1935 `"1935"', add
label define gr01a_frstchyr_lbl 1936 `"1936"', add
label define gr01a_frstchyr_lbl 1937 `"1937"', add
label define gr01a_frstchyr_lbl 1938 `"1938"', add
label define gr01a_frstchyr_lbl 1939 `"1939"', add
label define gr01a_frstchyr_lbl 1940 `"1940"', add
label define gr01a_frstchyr_lbl 1941 `"1941"', add
label define gr01a_frstchyr_lbl 1942 `"1942"', add
label define gr01a_frstchyr_lbl 1943 `"1943"', add
label define gr01a_frstchyr_lbl 1944 `"1944"', add
label define gr01a_frstchyr_lbl 1945 `"1945"', add
label define gr01a_frstchyr_lbl 1946 `"1946"', add
label define gr01a_frstchyr_lbl 1947 `"1947"', add
label define gr01a_frstchyr_lbl 1948 `"1948"', add
label define gr01a_frstchyr_lbl 1949 `"1949"', add
label define gr01a_frstchyr_lbl 1950 `"1950"', add
label define gr01a_frstchyr_lbl 1951 `"1951"', add
label define gr01a_frstchyr_lbl 1952 `"1952"', add
label define gr01a_frstchyr_lbl 1953 `"1953"', add
label define gr01a_frstchyr_lbl 1954 `"1954"', add
label define gr01a_frstchyr_lbl 1955 `"1955"', add
label define gr01a_frstchyr_lbl 1956 `"1956"', add
label define gr01a_frstchyr_lbl 1957 `"1957"', add
label define gr01a_frstchyr_lbl 1958 `"1958"', add
label define gr01a_frstchyr_lbl 1959 `"1959"', add
label define gr01a_frstchyr_lbl 1960 `"1960"', add
label define gr01a_frstchyr_lbl 1961 `"1961"', add
label define gr01a_frstchyr_lbl 1962 `"1962"', add
label define gr01a_frstchyr_lbl 1963 `"1963"', add
label define gr01a_frstchyr_lbl 1964 `"1964"', add
label define gr01a_frstchyr_lbl 1965 `"1965"', add
label define gr01a_frstchyr_lbl 1966 `"1966"', add
label define gr01a_frstchyr_lbl 1967 `"1967"', add
label define gr01a_frstchyr_lbl 1968 `"1968"', add
label define gr01a_frstchyr_lbl 1969 `"1969"', add
label define gr01a_frstchyr_lbl 1970 `"1970"', add
label define gr01a_frstchyr_lbl 1971 `"1971"', add
label define gr01a_frstchyr_lbl 1972 `"1972"', add
label define gr01a_frstchyr_lbl 1973 `"1973"', add
label define gr01a_frstchyr_lbl 1974 `"1974"', add
label define gr01a_frstchyr_lbl 1975 `"1975"', add
label define gr01a_frstchyr_lbl 1976 `"1976"', add
label define gr01a_frstchyr_lbl 1977 `"1977"', add
label define gr01a_frstchyr_lbl 1978 `"1978"', add
label define gr01a_frstchyr_lbl 1979 `"1979"', add
label define gr01a_frstchyr_lbl 1980 `"1980"', add
label define gr01a_frstchyr_lbl 1981 `"1981"', add
label define gr01a_frstchyr_lbl 1982 `"1982"', add
label define gr01a_frstchyr_lbl 1983 `"1983"', add
label define gr01a_frstchyr_lbl 1984 `"1984"', add
label define gr01a_frstchyr_lbl 1985 `"1985"', add
label define gr01a_frstchyr_lbl 1986 `"1986"', add
label define gr01a_frstchyr_lbl 1987 `"1987"', add
label define gr01a_frstchyr_lbl 1988 `"1988"', add
label define gr01a_frstchyr_lbl 1989 `"1989"', add
label define gr01a_frstchyr_lbl 1990 `"1990"', add
label define gr01a_frstchyr_lbl 1991 `"1991"', add
label define gr01a_frstchyr_lbl 1992 `"1992"', add
label define gr01a_frstchyr_lbl 1993 `"1993"', add
label define gr01a_frstchyr_lbl 1994 `"1994"', add
label define gr01a_frstchyr_lbl 1995 `"1995"', add
label define gr01a_frstchyr_lbl 1996 `"1996"', add
label define gr01a_frstchyr_lbl 1997 `"1997"', add
label define gr01a_frstchyr_lbl 1998 `"1998"', add
label define gr01a_frstchyr_lbl 1999 `"1999"', add
label define gr01a_frstchyr_lbl 2000 `"2000"', add
label define gr01a_frstchyr_lbl 2001 `"2001"', add
label define gr01a_frstchyr_lbl 9999 `"NIU (not in universe)"', add
label values gr01a_frstchyr gr01a_frstchyr_lbl

label define gr01a_secchyr_lbl 1927 `"1927 or earlier"'
label define gr01a_secchyr_lbl 1928 `"1928"', add
label define gr01a_secchyr_lbl 1929 `"1929"', add
label define gr01a_secchyr_lbl 1930 `"1930"', add
label define gr01a_secchyr_lbl 1931 `"1931"', add
label define gr01a_secchyr_lbl 1932 `"1932"', add
label define gr01a_secchyr_lbl 1933 `"1933"', add
label define gr01a_secchyr_lbl 1934 `"1934"', add
label define gr01a_secchyr_lbl 1935 `"1935"', add
label define gr01a_secchyr_lbl 1936 `"1936"', add
label define gr01a_secchyr_lbl 1937 `"1937"', add
label define gr01a_secchyr_lbl 1938 `"1938"', add
label define gr01a_secchyr_lbl 1939 `"1939"', add
label define gr01a_secchyr_lbl 1940 `"1940"', add
label define gr01a_secchyr_lbl 1941 `"1941"', add
label define gr01a_secchyr_lbl 1942 `"1942"', add
label define gr01a_secchyr_lbl 1943 `"1943"', add
label define gr01a_secchyr_lbl 1944 `"1944"', add
label define gr01a_secchyr_lbl 1945 `"1945"', add
label define gr01a_secchyr_lbl 1946 `"1946"', add
label define gr01a_secchyr_lbl 1947 `"1947"', add
label define gr01a_secchyr_lbl 1948 `"1948"', add
label define gr01a_secchyr_lbl 1949 `"1949"', add
label define gr01a_secchyr_lbl 1950 `"1950"', add
label define gr01a_secchyr_lbl 1951 `"1951"', add
label define gr01a_secchyr_lbl 1952 `"1952"', add
label define gr01a_secchyr_lbl 1953 `"1953"', add
label define gr01a_secchyr_lbl 1954 `"1954"', add
label define gr01a_secchyr_lbl 1955 `"1955"', add
label define gr01a_secchyr_lbl 1956 `"1956"', add
label define gr01a_secchyr_lbl 1957 `"1957"', add
label define gr01a_secchyr_lbl 1958 `"1958"', add
label define gr01a_secchyr_lbl 1959 `"1959"', add
label define gr01a_secchyr_lbl 1960 `"1960"', add
label define gr01a_secchyr_lbl 1961 `"1961"', add
label define gr01a_secchyr_lbl 1962 `"1962"', add
label define gr01a_secchyr_lbl 1963 `"1963"', add
label define gr01a_secchyr_lbl 1964 `"1964"', add
label define gr01a_secchyr_lbl 1965 `"1965"', add
label define gr01a_secchyr_lbl 1966 `"1966"', add
label define gr01a_secchyr_lbl 1967 `"1967"', add
label define gr01a_secchyr_lbl 1968 `"1968"', add
label define gr01a_secchyr_lbl 1969 `"1969"', add
label define gr01a_secchyr_lbl 1970 `"1970"', add
label define gr01a_secchyr_lbl 1971 `"1971"', add
label define gr01a_secchyr_lbl 1972 `"1972"', add
label define gr01a_secchyr_lbl 1973 `"1973"', add
label define gr01a_secchyr_lbl 1974 `"1974"', add
label define gr01a_secchyr_lbl 1975 `"1975"', add
label define gr01a_secchyr_lbl 1976 `"1976"', add
label define gr01a_secchyr_lbl 1977 `"1977"', add
label define gr01a_secchyr_lbl 1978 `"1978"', add
label define gr01a_secchyr_lbl 1979 `"1979"', add
label define gr01a_secchyr_lbl 1980 `"1980"', add
label define gr01a_secchyr_lbl 1981 `"1981"', add
label define gr01a_secchyr_lbl 1982 `"1982"', add
label define gr01a_secchyr_lbl 1983 `"1983"', add
label define gr01a_secchyr_lbl 1984 `"1984"', add
label define gr01a_secchyr_lbl 1985 `"1985"', add
label define gr01a_secchyr_lbl 1986 `"1986"', add
label define gr01a_secchyr_lbl 1987 `"1987"', add
label define gr01a_secchyr_lbl 1988 `"1988"', add
label define gr01a_secchyr_lbl 1989 `"1989"', add
label define gr01a_secchyr_lbl 1990 `"1990"', add
label define gr01a_secchyr_lbl 1991 `"1991"', add
label define gr01a_secchyr_lbl 1992 `"1992"', add
label define gr01a_secchyr_lbl 1993 `"1993"', add
label define gr01a_secchyr_lbl 1994 `"1994"', add
label define gr01a_secchyr_lbl 1995 `"1995"', add
label define gr01a_secchyr_lbl 1996 `"1996"', add
label define gr01a_secchyr_lbl 1997 `"1997"', add
label define gr01a_secchyr_lbl 1998 `"1998"', add
label define gr01a_secchyr_lbl 1999 `"1999"', add
label define gr01a_secchyr_lbl 2000 `"2000"', add
label define gr01a_secchyr_lbl 2001 `"2001"', add
label define gr01a_secchyr_lbl 9999 `"NIU (not in universe)"', add
label values gr01a_secchyr gr01a_secchyr_lbl

label define gr01a_lstchyr_lbl 1930 `"1930 or earlier"'
label define gr01a_lstchyr_lbl 1931 `"1931"', add
label define gr01a_lstchyr_lbl 1932 `"1932"', add
label define gr01a_lstchyr_lbl 1933 `"1933"', add
label define gr01a_lstchyr_lbl 1934 `"1934"', add
label define gr01a_lstchyr_lbl 1935 `"1935"', add
label define gr01a_lstchyr_lbl 1936 `"1936"', add
label define gr01a_lstchyr_lbl 1937 `"1937"', add
label define gr01a_lstchyr_lbl 1938 `"1938"', add
label define gr01a_lstchyr_lbl 1939 `"1939"', add
label define gr01a_lstchyr_lbl 1940 `"1940"', add
label define gr01a_lstchyr_lbl 1941 `"1941"', add
label define gr01a_lstchyr_lbl 1942 `"1942"', add
label define gr01a_lstchyr_lbl 1943 `"1943"', add
label define gr01a_lstchyr_lbl 1944 `"1944"', add
label define gr01a_lstchyr_lbl 1945 `"1945"', add
label define gr01a_lstchyr_lbl 1946 `"1946"', add
label define gr01a_lstchyr_lbl 1947 `"1947"', add
label define gr01a_lstchyr_lbl 1948 `"1948"', add
label define gr01a_lstchyr_lbl 1949 `"1949"', add
label define gr01a_lstchyr_lbl 1950 `"1950"', add
label define gr01a_lstchyr_lbl 1951 `"1951"', add
label define gr01a_lstchyr_lbl 1952 `"1952"', add
label define gr01a_lstchyr_lbl 1953 `"1953"', add
label define gr01a_lstchyr_lbl 1954 `"1954"', add
label define gr01a_lstchyr_lbl 1955 `"1955"', add
label define gr01a_lstchyr_lbl 1956 `"1956"', add
label define gr01a_lstchyr_lbl 1957 `"1957"', add
label define gr01a_lstchyr_lbl 1958 `"1958"', add
label define gr01a_lstchyr_lbl 1959 `"1959"', add
label define gr01a_lstchyr_lbl 1960 `"1960"', add
label define gr01a_lstchyr_lbl 1961 `"1961"', add
label define gr01a_lstchyr_lbl 1962 `"1962"', add
label define gr01a_lstchyr_lbl 1963 `"1963"', add
label define gr01a_lstchyr_lbl 1964 `"1964"', add
label define gr01a_lstchyr_lbl 1965 `"1965"', add
label define gr01a_lstchyr_lbl 1966 `"1966"', add
label define gr01a_lstchyr_lbl 1967 `"1967"', add
label define gr01a_lstchyr_lbl 1968 `"1968"', add
label define gr01a_lstchyr_lbl 1969 `"1969"', add
label define gr01a_lstchyr_lbl 1970 `"1970"', add
label define gr01a_lstchyr_lbl 1971 `"1971"', add
label define gr01a_lstchyr_lbl 1972 `"1972"', add
label define gr01a_lstchyr_lbl 1973 `"1973"', add
label define gr01a_lstchyr_lbl 1974 `"1974"', add
label define gr01a_lstchyr_lbl 1975 `"1975"', add
label define gr01a_lstchyr_lbl 1976 `"1976"', add
label define gr01a_lstchyr_lbl 1977 `"1977"', add
label define gr01a_lstchyr_lbl 1978 `"1978"', add
label define gr01a_lstchyr_lbl 1979 `"1979"', add
label define gr01a_lstchyr_lbl 1980 `"1980"', add
label define gr01a_lstchyr_lbl 1981 `"1981"', add
label define gr01a_lstchyr_lbl 1982 `"1982"', add
label define gr01a_lstchyr_lbl 1983 `"1983"', add
label define gr01a_lstchyr_lbl 1984 `"1984"', add
label define gr01a_lstchyr_lbl 1985 `"1985"', add
label define gr01a_lstchyr_lbl 1986 `"1986"', add
label define gr01a_lstchyr_lbl 1987 `"1987"', add
label define gr01a_lstchyr_lbl 1988 `"1988"', add
label define gr01a_lstchyr_lbl 1989 `"1989"', add
label define gr01a_lstchyr_lbl 1990 `"1990"', add
label define gr01a_lstchyr_lbl 1991 `"1991"', add
label define gr01a_lstchyr_lbl 1992 `"1992"', add
label define gr01a_lstchyr_lbl 1993 `"1993"', add
label define gr01a_lstchyr_lbl 1994 `"1994"', add
label define gr01a_lstchyr_lbl 1995 `"1995"', add
label define gr01a_lstchyr_lbl 1996 `"1996"', add
label define gr01a_lstchyr_lbl 1997 `"1997"', add
label define gr01a_lstchyr_lbl 1998 `"1998"', add
label define gr01a_lstchyr_lbl 1999 `"1999"', add
label define gr01a_lstchyr_lbl 2000 `"2000"', add
label define gr01a_lstchyr_lbl 2001 `"2001"', add
label define gr01a_lstchyr_lbl 9999 `"NIU (not in universe)"', add
label values gr01a_lstchyr gr01a_lstchyr_lbl

label define gr01a_marrdur_lbl 00 `"Less than 1 year"'
label define gr01a_marrdur_lbl 01 `"1 year"', add
label define gr01a_marrdur_lbl 02 `"2 years"', add
label define gr01a_marrdur_lbl 03 `"3"', add
label define gr01a_marrdur_lbl 04 `"4"', add
label define gr01a_marrdur_lbl 05 `"5"', add
label define gr01a_marrdur_lbl 06 `"6"', add
label define gr01a_marrdur_lbl 07 `"7"', add
label define gr01a_marrdur_lbl 08 `"8"', add
label define gr01a_marrdur_lbl 09 `"9"', add
label define gr01a_marrdur_lbl 10 `"10"', add
label define gr01a_marrdur_lbl 11 `"11"', add
label define gr01a_marrdur_lbl 12 `"12"', add
label define gr01a_marrdur_lbl 13 `"13"', add
label define gr01a_marrdur_lbl 14 `"14"', add
label define gr01a_marrdur_lbl 15 `"15"', add
label define gr01a_marrdur_lbl 16 `"16"', add
label define gr01a_marrdur_lbl 17 `"17"', add
label define gr01a_marrdur_lbl 18 `"18"', add
label define gr01a_marrdur_lbl 19 `"19"', add
label define gr01a_marrdur_lbl 20 `"20"', add
label define gr01a_marrdur_lbl 21 `"21"', add
label define gr01a_marrdur_lbl 22 `"22"', add
label define gr01a_marrdur_lbl 23 `"23"', add
label define gr01a_marrdur_lbl 24 `"24"', add
label define gr01a_marrdur_lbl 25 `"25"', add
label define gr01a_marrdur_lbl 26 `"26"', add
label define gr01a_marrdur_lbl 27 `"27"', add
label define gr01a_marrdur_lbl 28 `"28"', add
label define gr01a_marrdur_lbl 29 `"29"', add
label define gr01a_marrdur_lbl 30 `"30"', add
label define gr01a_marrdur_lbl 31 `"31"', add
label define gr01a_marrdur_lbl 32 `"32"', add
label define gr01a_marrdur_lbl 33 `"33"', add
label define gr01a_marrdur_lbl 34 `"34"', add
label define gr01a_marrdur_lbl 35 `"35"', add
label define gr01a_marrdur_lbl 36 `"36"', add
label define gr01a_marrdur_lbl 37 `"37"', add
label define gr01a_marrdur_lbl 38 `"38"', add
label define gr01a_marrdur_lbl 39 `"39"', add
label define gr01a_marrdur_lbl 40 `"40"', add
label define gr01a_marrdur_lbl 41 `"41"', add
label define gr01a_marrdur_lbl 42 `"42"', add
label define gr01a_marrdur_lbl 43 `"43"', add
label define gr01a_marrdur_lbl 44 `"44"', add
label define gr01a_marrdur_lbl 45 `"45"', add
label define gr01a_marrdur_lbl 46 `"46"', add
label define gr01a_marrdur_lbl 47 `"47"', add
label define gr01a_marrdur_lbl 48 `"48"', add
label define gr01a_marrdur_lbl 49 `"49"', add
label define gr01a_marrdur_lbl 50 `"50"', add
label define gr01a_marrdur_lbl 51 `"51"', add
label define gr01a_marrdur_lbl 52 `"52"', add
label define gr01a_marrdur_lbl 53 `"53"', add
label define gr01a_marrdur_lbl 54 `"54"', add
label define gr01a_marrdur_lbl 55 `"55"', add
label define gr01a_marrdur_lbl 56 `"56"', add
label define gr01a_marrdur_lbl 57 `"57"', add
label define gr01a_marrdur_lbl 58 `"58"', add
label define gr01a_marrdur_lbl 59 `"59"', add
label define gr01a_marrdur_lbl 60 `"60"', add
label define gr01a_marrdur_lbl 61 `"61"', add
label define gr01a_marrdur_lbl 62 `"62"', add
label define gr01a_marrdur_lbl 63 `"63"', add
label define gr01a_marrdur_lbl 64 `"64"', add
label define gr01a_marrdur_lbl 65 `"65"', add
label define gr01a_marrdur_lbl 66 `"66"', add
label define gr01a_marrdur_lbl 67 `"67"', add
label define gr01a_marrdur_lbl 68 `"68"', add
label define gr01a_marrdur_lbl 69 `"69"', add
label define gr01a_marrdur_lbl 70 `"70"', add
label define gr01a_marrdur_lbl 71 `"71"', add
label define gr01a_marrdur_lbl 72 `"72"', add
label define gr01a_marrdur_lbl 73 `"73"', add
label define gr01a_marrdur_lbl 74 `"74+"', add
label define gr01a_marrdur_lbl 99 `"NIU (not in universe)"', add
label values gr01a_marrdur gr01a_marrdur_lbl

label define gr01a_marryr_lbl 1921 `"1921 or earlier"'
label define gr01a_marryr_lbl 1922 `"1922"', add
label define gr01a_marryr_lbl 1923 `"1923"', add
label define gr01a_marryr_lbl 1924 `"1924"', add
label define gr01a_marryr_lbl 1925 `"1925"', add
label define gr01a_marryr_lbl 1926 `"1926"', add
label define gr01a_marryr_lbl 1927 `"1927"', add
label define gr01a_marryr_lbl 1928 `"1928"', add
label define gr01a_marryr_lbl 1929 `"1929"', add
label define gr01a_marryr_lbl 1930 `"1930"', add
label define gr01a_marryr_lbl 1931 `"1931"', add
label define gr01a_marryr_lbl 1932 `"1932"', add
label define gr01a_marryr_lbl 1933 `"1933"', add
label define gr01a_marryr_lbl 1934 `"1934"', add
label define gr01a_marryr_lbl 1935 `"1935"', add
label define gr01a_marryr_lbl 1936 `"1936"', add
label define gr01a_marryr_lbl 1937 `"1937"', add
label define gr01a_marryr_lbl 1938 `"1938"', add
label define gr01a_marryr_lbl 1939 `"1939"', add
label define gr01a_marryr_lbl 1940 `"1940"', add
label define gr01a_marryr_lbl 1941 `"1941"', add
label define gr01a_marryr_lbl 1942 `"1942"', add
label define gr01a_marryr_lbl 1943 `"1943"', add
label define gr01a_marryr_lbl 1944 `"1944"', add
label define gr01a_marryr_lbl 1945 `"1945"', add
label define gr01a_marryr_lbl 1946 `"1946"', add
label define gr01a_marryr_lbl 1947 `"1947"', add
label define gr01a_marryr_lbl 1948 `"1948"', add
label define gr01a_marryr_lbl 1949 `"1949"', add
label define gr01a_marryr_lbl 1950 `"1950"', add
label define gr01a_marryr_lbl 1951 `"1951"', add
label define gr01a_marryr_lbl 1952 `"1952"', add
label define gr01a_marryr_lbl 1953 `"1953"', add
label define gr01a_marryr_lbl 1954 `"1954"', add
label define gr01a_marryr_lbl 1955 `"1955"', add
label define gr01a_marryr_lbl 1956 `"1956"', add
label define gr01a_marryr_lbl 1957 `"1957"', add
label define gr01a_marryr_lbl 1958 `"1958"', add
label define gr01a_marryr_lbl 1959 `"1959"', add
label define gr01a_marryr_lbl 1960 `"1960"', add
label define gr01a_marryr_lbl 1961 `"1961"', add
label define gr01a_marryr_lbl 1962 `"1962"', add
label define gr01a_marryr_lbl 1963 `"1963"', add
label define gr01a_marryr_lbl 1964 `"1964"', add
label define gr01a_marryr_lbl 1965 `"1965"', add
label define gr01a_marryr_lbl 1966 `"1966"', add
label define gr01a_marryr_lbl 1967 `"1967"', add
label define gr01a_marryr_lbl 1968 `"1968"', add
label define gr01a_marryr_lbl 1969 `"1969"', add
label define gr01a_marryr_lbl 1970 `"1970"', add
label define gr01a_marryr_lbl 1971 `"1971"', add
label define gr01a_marryr_lbl 1972 `"1972"', add
label define gr01a_marryr_lbl 1973 `"1973"', add
label define gr01a_marryr_lbl 1974 `"1974"', add
label define gr01a_marryr_lbl 1975 `"1975"', add
label define gr01a_marryr_lbl 1976 `"1976"', add
label define gr01a_marryr_lbl 1977 `"1977"', add
label define gr01a_marryr_lbl 1978 `"1978"', add
label define gr01a_marryr_lbl 1979 `"1979"', add
label define gr01a_marryr_lbl 1980 `"1980"', add
label define gr01a_marryr_lbl 1981 `"1981"', add
label define gr01a_marryr_lbl 1982 `"1982"', add
label define gr01a_marryr_lbl 1983 `"1983"', add
label define gr01a_marryr_lbl 1984 `"1984"', add
label define gr01a_marryr_lbl 1985 `"1985"', add
label define gr01a_marryr_lbl 1986 `"1986"', add
label define gr01a_marryr_lbl 1987 `"1987"', add
label define gr01a_marryr_lbl 1988 `"1988"', add
label define gr01a_marryr_lbl 1989 `"1989"', add
label define gr01a_marryr_lbl 1990 `"1990"', add
label define gr01a_marryr_lbl 1991 `"1991"', add
label define gr01a_marryr_lbl 1992 `"1992"', add
label define gr01a_marryr_lbl 1993 `"1993"', add
label define gr01a_marryr_lbl 1994 `"1994"', add
label define gr01a_marryr_lbl 1995 `"1995"', add
label define gr01a_marryr_lbl 1996 `"1996"', add
label define gr01a_marryr_lbl 1997 `"1997"', add
label define gr01a_marryr_lbl 1998 `"1998"', add
label define gr01a_marryr_lbl 1999 `"1999"', add
label define gr01a_marryr_lbl 2000 `"2000"', add
label define gr01a_marryr_lbl 2001 `"2001"', add
label define gr01a_marryr_lbl 9999 `"NIU (not in universe)"', add
label values gr01a_marryr gr01a_marryr_lbl

label define gr01a_famnum_lbl 0 `"Members of the household not belonging to the nuclear family"'
label define gr01a_famnum_lbl 1 `"1st"', add
label define gr01a_famnum_lbl 2 `"2nd"', add
label define gr01a_famnum_lbl 3 `"3rd"', add
label define gr01a_famnum_lbl 4 `"4th"', add
label define gr01a_famnum_lbl 5 `"5th"', add
label define gr01a_famnum_lbl 6 `"6th"', add
label define gr01a_famnum_lbl 7 `"7th"', add
label define gr01a_famnum_lbl 8 `"8th"', add
label define gr01a_famnum_lbl 9 `"9th"', add
label values gr01a_famnum gr01a_famnum_lbl

label define gr01a_famtype_lbl 1 `"Couple without children"'
label define gr01a_famtype_lbl 2 `"Couple with children"', add
label define gr01a_famtype_lbl 3 `"Single father"', add
label define gr01a_famtype_lbl 4 `"Single mother"', add
label define gr01a_famtype_lbl 5 `"Partners without children"', add
label define gr01a_famtype_lbl 6 `"Partners with children"', add
label define gr01a_famtype_lbl 7 `"Single member household"', add
label define gr01a_famtype_lbl 8 `"Members of the household not belonging to the nuclear family"', add
label define gr01a_famtype_lbl 9 `"Household of many members not having nuclear relationship"', add
label values gr01a_famtype gr01a_famtype_lbl

label define gr01a_nucmem_lbl 1 `"Man"'
label define gr01a_nucmem_lbl 2 `"Woman"', add
label define gr01a_nucmem_lbl 3 `"Child"', add
label define gr01a_nucmem_lbl 0 `"Members of the household not belonging to the nuclear family"', add
label values gr01a_nucmem gr01a_nucmem_lbl

label define gr01a_grmo_lbl 01 `"January"'
label define gr01a_grmo_lbl 02 `"February"', add
label define gr01a_grmo_lbl 03 `"March"', add
label define gr01a_grmo_lbl 04 `"April"', add
label define gr01a_grmo_lbl 05 `"May"', add
label define gr01a_grmo_lbl 06 `"June"', add
label define gr01a_grmo_lbl 07 `"July"', add
label define gr01a_grmo_lbl 08 `"August"', add
label define gr01a_grmo_lbl 09 `"September"', add
label define gr01a_grmo_lbl 10 `"October"', add
label define gr01a_grmo_lbl 11 `"November"', add
label define gr01a_grmo_lbl 12 `"December"', add
label define gr01a_grmo_lbl 98 `"Unknown"', add
label define gr01a_grmo_lbl 99 `"NIU (not in universe)"', add
label values gr01a_grmo gr01a_grmo_lbl

label define gr01a_gryr_lbl 1950 `"1950 or earlier"'
label define gr01a_gryr_lbl 1951 `"1951"', add
label define gr01a_gryr_lbl 1952 `"1952"', add
label define gr01a_gryr_lbl 1953 `"1953"', add
label define gr01a_gryr_lbl 1954 `"1954"', add
label define gr01a_gryr_lbl 1955 `"1955"', add
label define gr01a_gryr_lbl 1956 `"1956"', add
label define gr01a_gryr_lbl 1957 `"1957"', add
label define gr01a_gryr_lbl 1958 `"1958"', add
label define gr01a_gryr_lbl 1959 `"1959"', add
label define gr01a_gryr_lbl 1960 `"1960"', add
label define gr01a_gryr_lbl 1961 `"1961"', add
label define gr01a_gryr_lbl 1962 `"1962"', add
label define gr01a_gryr_lbl 1963 `"1963"', add
label define gr01a_gryr_lbl 1964 `"1964"', add
label define gr01a_gryr_lbl 1965 `"1965"', add
label define gr01a_gryr_lbl 1966 `"1966"', add
label define gr01a_gryr_lbl 1967 `"1967"', add
label define gr01a_gryr_lbl 1968 `"1968"', add
label define gr01a_gryr_lbl 1969 `"1969"', add
label define gr01a_gryr_lbl 1970 `"1970"', add
label define gr01a_gryr_lbl 1971 `"1971"', add
label define gr01a_gryr_lbl 1972 `"1972"', add
label define gr01a_gryr_lbl 1973 `"1973"', add
label define gr01a_gryr_lbl 1974 `"1974"', add
label define gr01a_gryr_lbl 1975 `"1975"', add
label define gr01a_gryr_lbl 1976 `"1976"', add
label define gr01a_gryr_lbl 1977 `"1977"', add
label define gr01a_gryr_lbl 1978 `"1978"', add
label define gr01a_gryr_lbl 1979 `"1979"', add
label define gr01a_gryr_lbl 1980 `"1980"', add
label define gr01a_gryr_lbl 1981 `"1981"', add
label define gr01a_gryr_lbl 1982 `"1982"', add
label define gr01a_gryr_lbl 1983 `"1983"', add
label define gr01a_gryr_lbl 1984 `"1984"', add
label define gr01a_gryr_lbl 1985 `"1985"', add
label define gr01a_gryr_lbl 1986 `"1986"', add
label define gr01a_gryr_lbl 1987 `"1987"', add
label define gr01a_gryr_lbl 1988 `"1988"', add
label define gr01a_gryr_lbl 1989 `"1989"', add
label define gr01a_gryr_lbl 1990 `"1990"', add
label define gr01a_gryr_lbl 1991 `"1991"', add
label define gr01a_gryr_lbl 1992 `"1992"', add
label define gr01a_gryr_lbl 1993 `"1993"', add
label define gr01a_gryr_lbl 1994 `"1994"', add
label define gr01a_gryr_lbl 1995 `"1995"', add
label define gr01a_gryr_lbl 1996 `"1996"', add
label define gr01a_gryr_lbl 1997 `"1997"', add
label define gr01a_gryr_lbl 1998 `"1998"', add
label define gr01a_gryr_lbl 1999 `"1999"', add
label define gr01a_gryr_lbl 2000 `"2000"', add
label define gr01a_gryr_lbl 2001 `"2001"', add
label define gr01a_gryr_lbl 9998 `"Unknown"', add
label define gr01a_gryr_lbl 9999 `"NIU (not in universe)"', add
label values gr01a_gryr gr01a_gryr_lbl

label define gr01a_grwhy1_lbl 1 `"Work"'
label define gr01a_grwhy1_lbl 2 `"Repatriation or return"', add
label define gr01a_grwhy1_lbl 3 `"Family reunification"', add
label define gr01a_grwhy1_lbl 4 `"Studies"', add
label define gr01a_grwhy1_lbl 5 `"Asylum seeking"', add
label define gr01a_grwhy1_lbl 6 `"Refugee"', add
label define gr01a_grwhy1_lbl 7 `"Other reason"', add
label define gr01a_grwhy1_lbl 8 `"Unknown"', add
label define gr01a_grwhy1_lbl 9 `"NIU (not in universe)"', add
label values gr01a_grwhy1 gr01a_grwhy1_lbl

label define gr01a_grwhy2_lbl 2 `"Repatriation or return"'
label define gr01a_grwhy2_lbl 3 `"Family reunification"', add
label define gr01a_grwhy2_lbl 4 `"Studies"', add
label define gr01a_grwhy2_lbl 5 `"Asylum seeking"', add
label define gr01a_grwhy2_lbl 6 `"Refugee"', add
label define gr01a_grwhy2_lbl 7 `"Work or other reason"', add
label define gr01a_grwhy2_lbl 8 `"Unknown (includes the persons who said no second reason)"', add
label define gr01a_grwhy2_lbl 9 `"NIU (not in universe)"', add
label values gr01a_grwhy2 gr01a_grwhy2_lbl

label define gr01a_prvcntry_lbl 20105 `"Albania"'
label define gr01a_prvcntry_lbl 20109 `"Argentina"', add
label define gr01a_prvcntry_lbl 20110 `"Armenia"', add
label define gr01a_prvcntry_lbl 20113 `"Australia"', add
label define gr01a_prvcntry_lbl 20114 `"Austria"', add
label define gr01a_prvcntry_lbl 20203 `"Bangladesh"', add
label define gr01a_prvcntry_lbl 20208 `"Belarus"', add
label define gr01a_prvcntry_lbl 20202 `"Belgium"', add
label define gr01a_prvcntry_lbl 20210 `"Brazil"', add
label define gr01a_prvcntry_lbl 20204 `"Bulgaria"', add
label define gr01a_prvcntry_lbl 20302 `"Canada"', add
label define gr01a_prvcntry_lbl 20305 `"China"', add
label define gr01a_prvcntry_lbl 20309 `"Colomdia"', add
label define gr01a_prvcntry_lbl 20314 `"Cyprus"', add
label define gr01a_prvcntry_lbl 20315 `"Czech Republic"', add
label define gr01a_prvcntry_lbl 20404 `"Denmark"', add
label define gr01a_prvcntry_lbl 20403 `"Dominica"', add
label define gr01a_prvcntry_lbl 20502 `"Egypt"', add
label define gr01a_prvcntry_lbl 20507 `"Ethiopia"', add
label define gr01a_prvcntry_lbl 20601 `"Finland"', add
label define gr01a_prvcntry_lbl 20603 `"France"', add
label define gr01a_prvcntry_lbl 20703 `"Georgia"', add
label define gr01a_prvcntry_lbl 20401 `"Germany"', add
label define gr01a_prvcntry_lbl 20705 `"Ghana"', add
label define gr01a_prvcntry_lbl 20805 `"Hungary"', add
label define gr01a_prvcntry_lbl 20902 `"India"', add
label define gr01a_prvcntry_lbl 20904 `"Iran (Islamic Republic of)"', add
label define gr01a_prvcntry_lbl 20905 `"Iraq"', add
label define gr01a_prvcntry_lbl 20903 `"Ireland"', add
label define gr01a_prvcntry_lbl 20908 `"Italy"', add
label define gr01a_prvcntry_lbl 21003 `"Japan"', add
label define gr01a_prvcntry_lbl 21002 `"Jordan"', add
label define gr01a_prvcntry_lbl 21101 `"Kazakstan"', add
label define gr01a_prvcntry_lbl 21102 `"Kenya"', add
label define gr01a_prvcntry_lbl 21202 `"Lebanon"', add
label define gr01a_prvcntry_lbl 21301 `"Morocco"', add
label define gr01a_prvcntry_lbl 21407 `"Netherlands"', add
label define gr01a_prvcntry_lbl 21411 `"New Zealand"', add
label define gr01a_prvcntry_lbl 21404 `"Nigeria"', add
label define gr01a_prvcntry_lbl 21408 `"Norway"', add
label define gr01a_prvcntry_lbl 21601 `"Pakistan"', add
label define gr01a_prvcntry_lbl 21604 `"Philippines"', add
label define gr01a_prvcntry_lbl 21607 `"Poland"', add
label define gr01a_prvcntry_lbl 21610 `"Portugal"', add
label define gr01a_prvcntry_lbl 21303 `"Republic of Moldova"', add
label define gr01a_prvcntry_lbl 21801 `"Romania"', add
label define gr01a_prvcntry_lbl 21802 `"Russian Federation"', add
label define gr01a_prvcntry_lbl 21911 `"Slovakia"', add
label define gr01a_prvcntry_lbl 22601 `"South Africa"', add
label define gr01a_prvcntry_lbl 20505 `"Spain"', add
label define gr01a_prvcntry_lbl 21205 `"Sri Lanka"', add
label define gr01a_prvcntry_lbl 21902 `"Sudan"', add
label define gr01a_prvcntry_lbl 21913 `"Sweden"', add
label define gr01a_prvcntry_lbl 20303 `"Switzerland"', add
label define gr01a_prvcntry_lbl 21916 `"Syrian Arab Republic"', add
label define gr01a_prvcntry_lbl 21308 `"The former Yugoslav Republic of Macedonia"', add
label define gr01a_prvcntry_lbl 22007 `"Turkey"', add
label define gr01a_prvcntry_lbl 22102 `"Ukraine"', add
label define gr01a_prvcntry_lbl 20702 `"United Kindom"', add
label define gr01a_prvcntry_lbl 22104 `"United States"', add
label define gr01a_prvcntry_lbl 22105 `"Uzbekistan"', add
label define gr01a_prvcntry_lbl 22202 `"Venezuela"', add
label define gr01a_prvcntry_lbl 22502 `"Yugoslavia"', add
label define gr01a_prvcntry_lbl 99997 `"Response suppressed"', add
label define gr01a_prvcntry_lbl 99998 `"Unknown"', add
label define gr01a_prvcntry_lbl 99999 `"NIU (not in universe)"', add
label values gr01a_prvcntry gr01a_prvcntry_lbl

label define gr01a_grorig_lbl 1 `"Yes"'
label define gr01a_grorig_lbl 2 `"No"', add
label define gr01a_grorig_lbl 8 `"Unknown"', add
label define gr01a_grorig_lbl 9 `"NIU (not in universe)"', add
label values gr01a_grorig gr01a_grorig_lbl

label define gr01a_relate_lbl 00 `"The householder"'
label define gr01a_relate_lbl 01 `"Spouse"', add
label define gr01a_relate_lbl 02 `"Partner"', add
label define gr01a_relate_lbl 03 `"Child"', add
label define gr01a_relate_lbl 04 `"Grandchild"', add
label define gr01a_relate_lbl 05 `"Father/mother"', add
label define gr01a_relate_lbl 06 `"Father-/mother -in law"', add
label define gr01a_relate_lbl 07 `"Grandfather/grandmother"', add
label define gr01a_relate_lbl 08 `"Brother/sister"', add
label define gr01a_relate_lbl 09 `"Brother-/sister-in-law"', add
label define gr01a_relate_lbl 10 `"Nephew/niece"', add
label define gr01a_relate_lbl 11 `"Other relatives"', add
label define gr01a_relate_lbl 12 `"Other case"', add
label values gr01a_relate gr01a_relate_lbl

label define gr01a_relatep_lbl 00 `"The householder or the 2nd member of the household"'
label define gr01a_relatep_lbl 01 `"Spouse of the householder"', add
label define gr01a_relatep_lbl 02 `"Partner of the householder"', add
label define gr01a_relatep_lbl 03 `"Child"', add
label define gr01a_relatep_lbl 04 `"Grandchild"', add
label define gr01a_relatep_lbl 05 `"Father/mother of the householder"', add
label define gr01a_relatep_lbl 06 `"Father-/mother-in-law"', add
label define gr01a_relatep_lbl 07 `"Grandfather/grandmother"', add
label define gr01a_relatep_lbl 08 `"Brother/sister"', add
label define gr01a_relatep_lbl 09 `"Brother-/sister-in-law"', add
label define gr01a_relatep_lbl 10 `"Nephew/niece"', add
label define gr01a_relatep_lbl 11 `"Other relatives"', add
label define gr01a_relatep_lbl 12 `"Other case"', add
label values gr01a_relatep gr01a_relatep_lbl

label define gr01a_age_lbl 000 `"0"'
label define gr01a_age_lbl 001 `"1"', add
label define gr01a_age_lbl 002 `"2"', add
label define gr01a_age_lbl 003 `"3"', add
label define gr01a_age_lbl 004 `"4"', add
label define gr01a_age_lbl 005 `"5"', add
label define gr01a_age_lbl 006 `"6"', add
label define gr01a_age_lbl 007 `"7"', add
label define gr01a_age_lbl 008 `"8"', add
label define gr01a_age_lbl 009 `"9"', add
label define gr01a_age_lbl 010 `"10"', add
label define gr01a_age_lbl 011 `"11"', add
label define gr01a_age_lbl 012 `"12"', add
label define gr01a_age_lbl 013 `"13"', add
label define gr01a_age_lbl 014 `"14"', add
label define gr01a_age_lbl 015 `"15"', add
label define gr01a_age_lbl 016 `"16"', add
label define gr01a_age_lbl 017 `"17"', add
label define gr01a_age_lbl 018 `"18"', add
label define gr01a_age_lbl 019 `"19"', add
label define gr01a_age_lbl 020 `"20"', add
label define gr01a_age_lbl 021 `"21"', add
label define gr01a_age_lbl 022 `"22"', add
label define gr01a_age_lbl 023 `"23"', add
label define gr01a_age_lbl 024 `"24"', add
label define gr01a_age_lbl 025 `"25"', add
label define gr01a_age_lbl 026 `"26"', add
label define gr01a_age_lbl 027 `"27"', add
label define gr01a_age_lbl 028 `"28"', add
label define gr01a_age_lbl 029 `"29"', add
label define gr01a_age_lbl 030 `"30"', add
label define gr01a_age_lbl 031 `"31"', add
label define gr01a_age_lbl 032 `"32"', add
label define gr01a_age_lbl 033 `"33"', add
label define gr01a_age_lbl 034 `"34"', add
label define gr01a_age_lbl 035 `"35"', add
label define gr01a_age_lbl 036 `"36"', add
label define gr01a_age_lbl 037 `"37"', add
label define gr01a_age_lbl 038 `"38"', add
label define gr01a_age_lbl 039 `"39"', add
label define gr01a_age_lbl 040 `"40"', add
label define gr01a_age_lbl 041 `"41"', add
label define gr01a_age_lbl 042 `"42"', add
label define gr01a_age_lbl 043 `"43"', add
label define gr01a_age_lbl 044 `"44"', add
label define gr01a_age_lbl 045 `"45"', add
label define gr01a_age_lbl 046 `"46"', add
label define gr01a_age_lbl 047 `"47"', add
label define gr01a_age_lbl 048 `"48"', add
label define gr01a_age_lbl 049 `"49"', add
label define gr01a_age_lbl 050 `"50"', add
label define gr01a_age_lbl 051 `"51"', add
label define gr01a_age_lbl 052 `"52"', add
label define gr01a_age_lbl 053 `"53"', add
label define gr01a_age_lbl 054 `"54"', add
label define gr01a_age_lbl 055 `"55"', add
label define gr01a_age_lbl 056 `"56"', add
label define gr01a_age_lbl 057 `"57"', add
label define gr01a_age_lbl 058 `"58"', add
label define gr01a_age_lbl 059 `"59"', add
label define gr01a_age_lbl 060 `"60"', add
label define gr01a_age_lbl 061 `"61"', add
label define gr01a_age_lbl 062 `"62"', add
label define gr01a_age_lbl 063 `"63"', add
label define gr01a_age_lbl 064 `"64"', add
label define gr01a_age_lbl 065 `"65"', add
label define gr01a_age_lbl 066 `"66"', add
label define gr01a_age_lbl 067 `"67"', add
label define gr01a_age_lbl 068 `"68"', add
label define gr01a_age_lbl 069 `"69"', add
label define gr01a_age_lbl 070 `"70"', add
label define gr01a_age_lbl 071 `"71"', add
label define gr01a_age_lbl 072 `"72"', add
label define gr01a_age_lbl 073 `"73"', add
label define gr01a_age_lbl 074 `"74"', add
label define gr01a_age_lbl 075 `"75"', add
label define gr01a_age_lbl 076 `"76"', add
label define gr01a_age_lbl 077 `"77"', add
label define gr01a_age_lbl 078 `"78"', add
label define gr01a_age_lbl 079 `"79"', add
label define gr01a_age_lbl 080 `"80"', add
label define gr01a_age_lbl 081 `"81"', add
label define gr01a_age_lbl 082 `"82"', add
label define gr01a_age_lbl 083 `"83"', add
label define gr01a_age_lbl 084 `"84"', add
label define gr01a_age_lbl 085 `"85"', add
label define gr01a_age_lbl 086 `"86"', add
label define gr01a_age_lbl 087 `"87"', add
label define gr01a_age_lbl 088 `"88"', add
label define gr01a_age_lbl 089 `"89"', add
label define gr01a_age_lbl 090 `"90"', add
label define gr01a_age_lbl 091 `"91"', add
label define gr01a_age_lbl 092 `"92"', add
label define gr01a_age_lbl 093 `"93"', add
label define gr01a_age_lbl 094 `"94"', add
label define gr01a_age_lbl 095 `"95"', add
label define gr01a_age_lbl 096 `"96"', add
label define gr01a_age_lbl 097 `"97"', add
label define gr01a_age_lbl 098 `"98"', add
label define gr01a_age_lbl 099 `"99"', add
label define gr01a_age_lbl 100 `"100+"', add
label values gr01a_age gr01a_age_lbl


