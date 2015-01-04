* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    ps07a_dwnum     22-27    ///
  byte    ps07a_pern      28-29    ///
  byte    ps07a_donated   30-30    ///
  byte    ps07a_d_num     31-32    ///
  byte    ps07a_govern    33-34    ///
  byte    ps07a_loctype   35-35    ///
  byte    ps07a_hhtype    36-36    ///
  byte    ps07a_htype     37-37    ///
  byte    ps07a_ownershp  38-38    ///
  byte    ps07a_rooms     39-40    ///
  byte    ps07a_watsrc    41-41    ///
  byte    ps07a_electric  42-42    ///
  byte    ps07a_sewage    43-43    ///
  byte    ps07a_kitchen   44-44    ///
  byte    ps07a_bathroom  45-45    ///
  byte    ps07a_toilet    46-46    ///
  byte    ps07a_garbage   47-47    ///
  byte    ps07a_fuelcook  48-48    ///
  byte    ps07a_fuelheat  49-49    ///
  byte    ps07a_auto      50-50    ///
  byte    ps07a_refrig    51-51    ///
  byte    ps07a_solar     52-52    ///
  byte    ps07a_centheat  53-53    ///
  byte    ps07a_vacuum    54-54    ///
  byte    ps07a_stove     55-55    ///
  byte    ps07a_micro     56-56    ///
  byte    ps07a_washer    57-57    ///
  byte    ps07a_library   58-58    ///
  byte    ps07a_radio     59-59    ///
  byte    ps07a_tv        60-60    ///
  byte    ps07a_video     61-61    ///
  byte    ps07a_satell    62-62    ///
  byte    ps07a_interp    63-63    ///
  byte    ps07a_interi    64-64    ///
  byte    ps07a_cellp     65-65    ///
  byte    ps07a_celli     66-66    ///
  byte    ps07a_pc        67-67    ///
  byte    ps07a_internet  68-68    ///
  int     pernum          69-71    ///
  float   wtper           72-79    ///
  byte    ps07a_perno     80-81    ///
  byte    ps07a_pernum    82-83    ///
  byte    ps07a_relate    84-85    ///
  byte    ps07a_sex       86-86    ///
  byte    ps07a_age       87-88    ///
  byte    ps07a_age2      89-89    ///
  byte    ps07a_nation    90-90    ///
  byte    ps07a_bpl       91-91    ///
  byte    ps07a_uresid    92-92    ///
  byte    ps07a_prevres   93-93    ///
  byte    ps07a_migreas   94-94    ///
  byte    ps07a_refugee   95-95    ///
  byte    ps07a_insur     96-96    ///
  byte    ps07a_pcuse     97-97    ///
  byte    ps07a_school    98-98    ///
  byte    ps07a_edattain  99-99    ///
  byte    ps07a_degree    100-100  ///
  byte    ps07a_techqual  101-101  ///
  byte    ps07a_empstat   102-102  ///
  byte    ps07a_occ       103-104  ///
  byte    ps07a_ind       105-106  ///
  byte    ps07a_sector    107-107  ///
  byte    ps07a_classwk   108-108  ///
  byte    ps07a_placwrk   109-109  ///
  byte    ps07a_marst     110-110  ///
  byte    ps07a_agemarr   111-112  ///
  byte    ps07a_durmarr   113-114  ///
  byte    ps07a_chbornmr  115-116  ///
  byte    ps07a_chsurv    117-118  ///
  byte    ps07a_bthlstyr  119-119  ///
  byte    ps07a_bthsurv   120-120  ///
  using `"ipumsi_00098.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var ps07a_dwnum    `"Dwelling number"'
label var ps07a_pern     `"Number of persons in household"'
label var ps07a_donated  `"Donated dwelling"'
label var ps07a_d_num    `"Donation strata: strata number"'
label var ps07a_govern   `"Governorate"'
label var ps07a_loctype  `"Locality type"'
label var ps07a_hhtype   `"Household type"'
label var ps07a_htype    `"Housing unit type"'
label var ps07a_ownershp `"Housing unit ownership"'
label var ps07a_rooms    `"Number of rooms per household"'
label var ps07a_watsrc   `"Main source of water"'
label var ps07a_electric `"Connection to electricity network"'
label var ps07a_sewage   `"Connection to sewage network"'
label var ps07a_kitchen  `"Availability of kitchen"'
label var ps07a_bathroom `"Availability of bathroom"'
label var ps07a_toilet   `"Availability of toilet"'
label var ps07a_garbage  `"Garbage disposal"'
label var ps07a_fuelcook `"Source of energy for cooking"'
label var ps07a_fuelheat `"Source of energy for heating"'
label var ps07a_auto     `"Availability of private car to the household"'
label var ps07a_refrig   `"Availability of refrigerator to the household"'
label var ps07a_solar    `"Availability of solar boiler to the household"'
label var ps07a_centheat `"Availability of central heating to the household"'
label var ps07a_vacuum   `"Availability of vacuum cleaner"'
label var ps07a_stove    `"Cooking stove"'
label var ps07a_micro    `"Microwave"'
label var ps07a_washer   `"Washing machine"'
label var ps07a_library  `"Home library"'
label var ps07a_radio    `"Radio or recorder"'
label var ps07a_tv       `"Television"'
label var ps07a_video    `"Video or DVD"'
label var ps07a_satell   `"Satellite"'
label var ps07a_interp   `"Internet service - Palestinian"'
label var ps07a_interi   `"Internet service - Israeli"'
label var ps07a_cellp    `"Mobile phone -Palestinian"'
label var ps07a_celli    `"Mobile phone - Israeli"'
label var ps07a_pc       `"Computer"'
label var ps07a_internet `"Household members using internet"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var ps07a_perno    `"Person number (within household)"'
label var ps07a_pernum   `"Person number in the household"'
label var ps07a_relate   `"Relation to head"'
label var ps07a_sex      `"Sex"'
label var ps07a_age      `"Age group"'
label var ps07a_age2     `"Age group 2"'
label var ps07a_nation   `"Nationality"'
label var ps07a_bpl      `"Place of birth"'
label var ps07a_uresid   `"Usual place of residence"'
label var ps07a_prevres  `"Previous place of residence"'
label var ps07a_migreas  `"Reason for changing previous place of residence"'
label var ps07a_refugee  `"Refugee status"'
label var ps07a_insur    `"Medical insurance"'
label var ps07a_pcuse    `"Use of computer"'
label var ps07a_school   `"Educational attendance"'
label var ps07a_edattain `"Educational attainment"'
label var ps07a_degree   `"Place of highest degree obtained"'
label var ps07a_techqual `"Technical professional qualification obtained"'
label var ps07a_empstat  `"Employment status"'
label var ps07a_occ      `"Main occupation"'
label var ps07a_ind      `"Industry"'
label var ps07a_sector   `"Sector"'
label var ps07a_classwk  `"Class of worker"'
label var ps07a_placwrk  `"Place of work"'
label var ps07a_marst    `"Marital status"'
label var ps07a_agemarr  `"Age at first marriage"'
label var ps07a_durmarr  `"Duration of marriage"'
label var ps07a_chbornmr `"Number of children ever born during duration of marriage"'
label var ps07a_chsurv   `"Number of still living children"'
label var ps07a_bthlstyr `"Number of live births during last 12 months"'
label var ps07a_bthsurv  `"Number of births during last 12 months still surviving"'

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

label define ps07a_pern_lbl 01 `"1"'
label define ps07a_pern_lbl 02 `"2"', add
label define ps07a_pern_lbl 03 `"3"', add
label define ps07a_pern_lbl 04 `"4"', add
label define ps07a_pern_lbl 05 `"5"', add
label define ps07a_pern_lbl 06 `"6"', add
label define ps07a_pern_lbl 07 `"7"', add
label define ps07a_pern_lbl 08 `"8"', add
label define ps07a_pern_lbl 09 `"9"', add
label define ps07a_pern_lbl 10 `"10"', add
label define ps07a_pern_lbl 11 `"11"', add
label define ps07a_pern_lbl 12 `"12"', add
label define ps07a_pern_lbl 13 `"13"', add
label define ps07a_pern_lbl 14 `"14"', add
label define ps07a_pern_lbl 15 `"15"', add
label define ps07a_pern_lbl 16 `"16"', add
label define ps07a_pern_lbl 17 `"17"', add
label define ps07a_pern_lbl 18 `"18"', add
label define ps07a_pern_lbl 19 `"19"', add
label define ps07a_pern_lbl 20 `"20"', add
label define ps07a_pern_lbl 21 `"21"', add
label define ps07a_pern_lbl 22 `"22"', add
label define ps07a_pern_lbl 23 `"23"', add
label define ps07a_pern_lbl 24 `"24"', add
label define ps07a_pern_lbl 26 `"26"', add
label define ps07a_pern_lbl 27 `"27"', add
label define ps07a_pern_lbl 29 `"29"', add
label define ps07a_pern_lbl 33 `"33"', add
label define ps07a_pern_lbl 35 `"35"', add
label values ps07a_pern ps07a_pern_lbl

label define ps07a_donated_lbl 0 `"No problem"'
label define ps07a_donated_lbl 1 `"Donated"', add
label values ps07a_donated ps07a_donated_lbl

label define ps07a_d_num_lbl 01 `"1"'
label define ps07a_d_num_lbl 02 `"2"', add
label define ps07a_d_num_lbl 03 `"3"', add
label define ps07a_d_num_lbl 04 `"4"', add
label define ps07a_d_num_lbl 05 `"5"', add
label define ps07a_d_num_lbl 06 `"6"', add
label define ps07a_d_num_lbl 07 `"7"', add
label define ps07a_d_num_lbl 08 `"8"', add
label define ps07a_d_num_lbl 09 `"9"', add
label define ps07a_d_num_lbl 10 `"10"', add
label define ps07a_d_num_lbl 11 `"11"', add
label define ps07a_d_num_lbl 12 `"12"', add
label define ps07a_d_num_lbl 13 `"13"', add
label define ps07a_d_num_lbl 14 `"14"', add
label define ps07a_d_num_lbl 15 `"15"', add
label define ps07a_d_num_lbl 16 `"16"', add
label values ps07a_d_num ps07a_d_num_lbl

label define ps07a_govern_lbl 01 `"Jenin"'
label define ps07a_govern_lbl 05 `"Tubas"', add
label define ps07a_govern_lbl 10 `"Tulkarm"', add
label define ps07a_govern_lbl 15 `"Nablus"', add
label define ps07a_govern_lbl 20 `"Qalqiliya"', add
label define ps07a_govern_lbl 25 `"Salfit"', add
label define ps07a_govern_lbl 30 `"Ramallah and Al-Bireh"', add
label define ps07a_govern_lbl 35 `"Jericho"', add
label define ps07a_govern_lbl 40 `"Jerusalem"', add
label define ps07a_govern_lbl 45 `"Bethlehem"', add
label define ps07a_govern_lbl 50 `"Hebron"', add
label values ps07a_govern ps07a_govern_lbl

label define ps07a_loctype_lbl 1 `"Urban"'
label define ps07a_loctype_lbl 2 `"Rural"', add
label define ps07a_loctype_lbl 3 `"Camps"', add
label values ps07a_loctype ps07a_loctype_lbl

label define ps07a_hhtype_lbl 1 `"Nuclear"'
label define ps07a_hhtype_lbl 2 `"Extended"', add
label define ps07a_hhtype_lbl 3 `"Compound"', add
label define ps07a_hhtype_lbl 4 `"One person"', add
label define ps07a_hhtype_lbl 9 `"Unknown"', add
label values ps07a_hhtype ps07a_hhtype_lbl

label define ps07a_htype_lbl 1 `"Villa"'
label define ps07a_htype_lbl 2 `"House"', add
label define ps07a_htype_lbl 3 `"Apartment"', add
label define ps07a_htype_lbl 4 `"Other"', add
label define ps07a_htype_lbl 9 `"Unknown"', add
label values ps07a_htype ps07a_htype_lbl

label define ps07a_ownershp_lbl 1 `"Owned"'
label define ps07a_ownershp_lbl 2 `"Rented"', add
label define ps07a_ownershp_lbl 3 `"Other"', add
label define ps07a_ownershp_lbl 8 `"Unknown"', add
label define ps07a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values ps07a_ownershp ps07a_ownershp_lbl

label define ps07a_rooms_lbl 01 `"1"'
label define ps07a_rooms_lbl 02 `"2"', add
label define ps07a_rooms_lbl 03 `"3"', add
label define ps07a_rooms_lbl 04 `"4"', add
label define ps07a_rooms_lbl 05 `"5"', add
label define ps07a_rooms_lbl 06 `"6"', add
label define ps07a_rooms_lbl 07 `"7"', add
label define ps07a_rooms_lbl 08 `"8"', add
label define ps07a_rooms_lbl 09 `"9"', add
label define ps07a_rooms_lbl 10 `"10"', add
label define ps07a_rooms_lbl 11 `"11"', add
label define ps07a_rooms_lbl 12 `"12"', add
label define ps07a_rooms_lbl 13 `"13"', add
label define ps07a_rooms_lbl 14 `"14"', add
label define ps07a_rooms_lbl 15 `"15"', add
label define ps07a_rooms_lbl 18 `"18"', add
label define ps07a_rooms_lbl 19 `"19"', add
label define ps07a_rooms_lbl 20 `"20"', add
label define ps07a_rooms_lbl 21 `"21"', add
label define ps07a_rooms_lbl 23 `"23"', add
label define ps07a_rooms_lbl 24 `"24"', add
label define ps07a_rooms_lbl 99 `"Unknown"', add
label values ps07a_rooms ps07a_rooms_lbl

label define ps07a_watsrc_lbl 1 `"Public water network"'
label define ps07a_watsrc_lbl 2 `"Wells"', add
label define ps07a_watsrc_lbl 3 `"Other"', add
label define ps07a_watsrc_lbl 8 `"Unknown"', add
label define ps07a_watsrc_lbl 9 `"NIU (not in universe)"', add
label values ps07a_watsrc ps07a_watsrc_lbl

label define ps07a_electric_lbl 1 `"Yes"'
label define ps07a_electric_lbl 2 `"No"', add
label define ps07a_electric_lbl 8 `"Unknown"', add
label define ps07a_electric_lbl 9 `"NIU (not in universe)"', add
label values ps07a_electric ps07a_electric_lbl

label define ps07a_sewage_lbl 1 `"Public sewage system"'
label define ps07a_sewage_lbl 2 `"Cesspit"', add
label define ps07a_sewage_lbl 3 `"No sewage system"', add
label define ps07a_sewage_lbl 8 `"Unknown"', add
label define ps07a_sewage_lbl 9 `"NIU (not in universe)"', add
label values ps07a_sewage ps07a_sewage_lbl

label define ps07a_kitchen_lbl 1 `"Kitchen with piped water"'
label define ps07a_kitchen_lbl 2 `"Kitchen without piped water"', add
label define ps07a_kitchen_lbl 3 `"No kitchen"', add
label define ps07a_kitchen_lbl 8 `"Unknown"', add
label define ps07a_kitchen_lbl 9 `"NIU (not in universe)"', add
label values ps07a_kitchen ps07a_kitchen_lbl

label define ps07a_bathroom_lbl 1 `"Bathroom with piped water"'
label define ps07a_bathroom_lbl 2 `"Bathroom without piped water"', add
label define ps07a_bathroom_lbl 3 `"No bathroom"', add
label define ps07a_bathroom_lbl 8 `"Unknown"', add
label define ps07a_bathroom_lbl 9 `"NIU (not in universe)"', add
label values ps07a_bathroom ps07a_bathroom_lbl

label define ps07a_toilet_lbl 1 `"Toilet with piped water"'
label define ps07a_toilet_lbl 2 `"Toilet without piped water"', add
label define ps07a_toilet_lbl 3 `"No toilet"', add
label define ps07a_toilet_lbl 8 `"Unknown"', add
label define ps07a_toilet_lbl 9 `"NIU (not in universe)"', add
label values ps07a_toilet ps07a_toilet_lbl

label define ps07a_garbage_lbl 1 `"Throwing it in the nearest container"'
label define ps07a_garbage_lbl 2 `"Burning"', add
label define ps07a_garbage_lbl 3 `"Throwing into a dumping site"', add
label define ps07a_garbage_lbl 4 `"Thrown randomly"', add
label define ps07a_garbage_lbl 5 `"Others"', add
label define ps07a_garbage_lbl 8 `"Unknown"', add
label define ps07a_garbage_lbl 9 `"NIU (not in universe)"', add
label values ps07a_garbage ps07a_garbage_lbl

label define ps07a_fuelcook_lbl 1 `"Gas"'
label define ps07a_fuelcook_lbl 2 `"Others (kerosene, electricity, wood and others)"', add
label define ps07a_fuelcook_lbl 8 `"Unknown"', add
label define ps07a_fuelcook_lbl 9 `"NIU (not in universe)"', add
label values ps07a_fuelcook ps07a_fuelcook_lbl

label define ps07a_fuelheat_lbl 0 `"No heating"'
label define ps07a_fuelheat_lbl 1 `"Gas"', add
label define ps07a_fuelheat_lbl 2 `"Kerosene"', add
label define ps07a_fuelheat_lbl 3 `"Electricity"', add
label define ps07a_fuelheat_lbl 4 `"Wood and coal"', add
label define ps07a_fuelheat_lbl 5 `"Diesel"', add
label define ps07a_fuelheat_lbl 6 `"Others"', add
label define ps07a_fuelheat_lbl 8 `"Unknown"', add
label define ps07a_fuelheat_lbl 9 `"NIU (not in universe)"', add
label values ps07a_fuelheat ps07a_fuelheat_lbl

label define ps07a_auto_lbl 1 `"Yes"'
label define ps07a_auto_lbl 2 `"No"', add
label define ps07a_auto_lbl 8 `"Unknown"', add
label define ps07a_auto_lbl 9 `"NIU (not in universe)"', add
label values ps07a_auto ps07a_auto_lbl

label define ps07a_refrig_lbl 1 `"Yes"'
label define ps07a_refrig_lbl 2 `"No"', add
label define ps07a_refrig_lbl 8 `"Unknown"', add
label define ps07a_refrig_lbl 9 `"NIU (not in universe)"', add
label values ps07a_refrig ps07a_refrig_lbl

label define ps07a_solar_lbl 1 `"Yes"'
label define ps07a_solar_lbl 2 `"No"', add
label define ps07a_solar_lbl 8 `"Unknown"', add
label define ps07a_solar_lbl 9 `"NIU (not in universe)"', add
label values ps07a_solar ps07a_solar_lbl

label define ps07a_centheat_lbl 1 `"Yes"'
label define ps07a_centheat_lbl 2 `"No"', add
label define ps07a_centheat_lbl 8 `"Unknown"', add
label define ps07a_centheat_lbl 9 `"NIU (not in universe)"', add
label values ps07a_centheat ps07a_centheat_lbl

label define ps07a_vacuum_lbl 1 `"Yes"'
label define ps07a_vacuum_lbl 2 `"No"', add
label define ps07a_vacuum_lbl 8 `"Unknown"', add
label define ps07a_vacuum_lbl 9 `"NIU (not in universe)"', add
label values ps07a_vacuum ps07a_vacuum_lbl

label define ps07a_stove_lbl 1 `"Yes"'
label define ps07a_stove_lbl 2 `"No"', add
label define ps07a_stove_lbl 8 `"Unknown"', add
label define ps07a_stove_lbl 9 `"NIU (not in universe)"', add
label values ps07a_stove ps07a_stove_lbl

label define ps07a_micro_lbl 1 `"Yes"'
label define ps07a_micro_lbl 2 `"No"', add
label define ps07a_micro_lbl 8 `"Unknown"', add
label define ps07a_micro_lbl 9 `"NIU (not in universe)"', add
label values ps07a_micro ps07a_micro_lbl

label define ps07a_washer_lbl 1 `"Yes"'
label define ps07a_washer_lbl 2 `"No"', add
label define ps07a_washer_lbl 8 `"Unknown"', add
label define ps07a_washer_lbl 9 `"NIU (not in universe)"', add
label values ps07a_washer ps07a_washer_lbl

label define ps07a_library_lbl 1 `"Yes"'
label define ps07a_library_lbl 2 `"No"', add
label define ps07a_library_lbl 8 `"Unknown"', add
label define ps07a_library_lbl 9 `"NIU (not in universe)"', add
label values ps07a_library ps07a_library_lbl

label define ps07a_radio_lbl 1 `"Yes"'
label define ps07a_radio_lbl 2 `"No"', add
label define ps07a_radio_lbl 8 `"Unknown"', add
label define ps07a_radio_lbl 9 `"NIU (not in universe)"', add
label values ps07a_radio ps07a_radio_lbl

label define ps07a_tv_lbl 1 `"Yes"'
label define ps07a_tv_lbl 2 `"No"', add
label define ps07a_tv_lbl 8 `"Unknown"', add
label define ps07a_tv_lbl 9 `"NIU (not in universe)"', add
label values ps07a_tv ps07a_tv_lbl

label define ps07a_video_lbl 1 `"Yes"'
label define ps07a_video_lbl 2 `"No"', add
label define ps07a_video_lbl 8 `"Unknown"', add
label define ps07a_video_lbl 9 `"NIU (not in universe)"', add
label values ps07a_video ps07a_video_lbl

label define ps07a_satell_lbl 1 `"Yes"'
label define ps07a_satell_lbl 2 `"No"', add
label define ps07a_satell_lbl 8 `"Unknown"', add
label define ps07a_satell_lbl 9 `"NIU (not in universe)"', add
label values ps07a_satell ps07a_satell_lbl

label define ps07a_interp_lbl 1 `"Yes"'
label define ps07a_interp_lbl 2 `"No"', add
label define ps07a_interp_lbl 8 `"Unknown"', add
label define ps07a_interp_lbl 9 `"NIU (not in universe)"', add
label values ps07a_interp ps07a_interp_lbl

label define ps07a_interi_lbl 1 `"Yes"'
label define ps07a_interi_lbl 2 `"No"', add
label define ps07a_interi_lbl 8 `"Unknown"', add
label define ps07a_interi_lbl 9 `"NIU (not in universe)"', add
label values ps07a_interi ps07a_interi_lbl

label define ps07a_cellp_lbl 1 `"Yes"'
label define ps07a_cellp_lbl 2 `"No"', add
label define ps07a_cellp_lbl 8 `"Unknown"', add
label define ps07a_cellp_lbl 9 `"NIU (not in universe)"', add
label values ps07a_cellp ps07a_cellp_lbl

label define ps07a_celli_lbl 1 `"Yes"'
label define ps07a_celli_lbl 2 `"No"', add
label define ps07a_celli_lbl 8 `"Unknown"', add
label define ps07a_celli_lbl 9 `"NIU (not in universe)"', add
label values ps07a_celli ps07a_celli_lbl

label define ps07a_pc_lbl 1 `"Yes"'
label define ps07a_pc_lbl 2 `"No"', add
label define ps07a_pc_lbl 8 `"Unknown"', add
label define ps07a_pc_lbl 9 `"NIU (not in universe)"', add
label values ps07a_pc ps07a_pc_lbl

label define ps07a_internet_lbl 1 `"Yes"'
label define ps07a_internet_lbl 2 `"No"', add
label define ps07a_internet_lbl 8 `"Unknown"', add
label define ps07a_internet_lbl 9 `"NIU (not in universe)"', add
label values ps07a_internet ps07a_internet_lbl

label define ps07a_perno_lbl 00 `"Household record"'
label define ps07a_perno_lbl 01 `"1"', add
label define ps07a_perno_lbl 02 `"2"', add
label define ps07a_perno_lbl 03 `"3"', add
label define ps07a_perno_lbl 04 `"4"', add
label define ps07a_perno_lbl 05 `"5"', add
label define ps07a_perno_lbl 06 `"6"', add
label define ps07a_perno_lbl 07 `"7"', add
label define ps07a_perno_lbl 08 `"8"', add
label define ps07a_perno_lbl 09 `"9"', add
label define ps07a_perno_lbl 10 `"10"', add
label define ps07a_perno_lbl 11 `"11"', add
label define ps07a_perno_lbl 12 `"12"', add
label define ps07a_perno_lbl 13 `"13"', add
label define ps07a_perno_lbl 14 `"14"', add
label define ps07a_perno_lbl 15 `"15"', add
label define ps07a_perno_lbl 16 `"16"', add
label define ps07a_perno_lbl 17 `"17"', add
label define ps07a_perno_lbl 18 `"18"', add
label define ps07a_perno_lbl 19 `"19"', add
label define ps07a_perno_lbl 20 `"20"', add
label define ps07a_perno_lbl 21 `"21"', add
label define ps07a_perno_lbl 22 `"22"', add
label define ps07a_perno_lbl 23 `"23"', add
label define ps07a_perno_lbl 24 `"24"', add
label define ps07a_perno_lbl 25 `"25"', add
label define ps07a_perno_lbl 26 `"26"', add
label define ps07a_perno_lbl 27 `"27"', add
label define ps07a_perno_lbl 28 `"28"', add
label define ps07a_perno_lbl 29 `"29"', add
label define ps07a_perno_lbl 30 `"30"', add
label define ps07a_perno_lbl 31 `"31"', add
label define ps07a_perno_lbl 32 `"32"', add
label define ps07a_perno_lbl 33 `"33"', add
label define ps07a_perno_lbl 34 `"34"', add
label define ps07a_perno_lbl 35 `"35"', add
label values ps07a_perno ps07a_perno_lbl

label define ps07a_pernum_lbl 01 `"1"'
label define ps07a_pernum_lbl 02 `"2"', add
label define ps07a_pernum_lbl 03 `"3"', add
label define ps07a_pernum_lbl 04 `"4"', add
label define ps07a_pernum_lbl 05 `"5"', add
label define ps07a_pernum_lbl 06 `"6"', add
label define ps07a_pernum_lbl 07 `"7"', add
label define ps07a_pernum_lbl 08 `"8"', add
label define ps07a_pernum_lbl 09 `"9"', add
label define ps07a_pernum_lbl 10 `"10"', add
label define ps07a_pernum_lbl 11 `"11"', add
label define ps07a_pernum_lbl 12 `"12"', add
label define ps07a_pernum_lbl 13 `"13"', add
label define ps07a_pernum_lbl 14 `"14"', add
label define ps07a_pernum_lbl 15 `"15"', add
label define ps07a_pernum_lbl 16 `"16"', add
label define ps07a_pernum_lbl 17 `"17"', add
label define ps07a_pernum_lbl 18 `"18"', add
label define ps07a_pernum_lbl 19 `"19"', add
label define ps07a_pernum_lbl 20 `"20"', add
label define ps07a_pernum_lbl 21 `"21"', add
label define ps07a_pernum_lbl 22 `"22"', add
label define ps07a_pernum_lbl 23 `"23"', add
label define ps07a_pernum_lbl 24 `"24"', add
label define ps07a_pernum_lbl 25 `"25"', add
label define ps07a_pernum_lbl 26 `"26"', add
label define ps07a_pernum_lbl 27 `"27"', add
label define ps07a_pernum_lbl 28 `"28"', add
label define ps07a_pernum_lbl 29 `"29"', add
label define ps07a_pernum_lbl 30 `"30"', add
label define ps07a_pernum_lbl 31 `"31"', add
label define ps07a_pernum_lbl 32 `"32"', add
label define ps07a_pernum_lbl 33 `"33"', add
label define ps07a_pernum_lbl 34 `"34"', add
label define ps07a_pernum_lbl 35 `"35"', add
label values ps07a_pernum ps07a_pernum_lbl

label define ps07a_relate_lbl 01 `"Head of the household"'
label define ps07a_relate_lbl 02 `"Spouse"', add
label define ps07a_relate_lbl 03 `"Son/daughter"', add
label define ps07a_relate_lbl 04 `"Father/ mother"', add
label define ps07a_relate_lbl 05 `"Brother/sister"', add
label define ps07a_relate_lbl 06 `"Grandfather/ grandmother"', add
label define ps07a_relate_lbl 07 `"Grandchild"', add
label define ps07a_relate_lbl 08 `"Son/daughter in law"', add
label define ps07a_relate_lbl 09 `"Other relatives"', add
label define ps07a_relate_lbl 10 `"Others"', add
label define ps07a_relate_lbl 99 `"Unknown"', add
label values ps07a_relate ps07a_relate_lbl

label define ps07a_sex_lbl 1 `"Male"'
label define ps07a_sex_lbl 2 `"Female"', add
label values ps07a_sex ps07a_sex_lbl

label define ps07a_age_lbl 01 `"0 - 4"'
label define ps07a_age_lbl 02 `"5 - 9"', add
label define ps07a_age_lbl 03 `"10 - 14"', add
label define ps07a_age_lbl 04 `"15 - 19"', add
label define ps07a_age_lbl 05 `"20 - 24"', add
label define ps07a_age_lbl 06 `"25 - 29"', add
label define ps07a_age_lbl 07 `"30 - 34"', add
label define ps07a_age_lbl 08 `"35 - 39"', add
label define ps07a_age_lbl 09 `"40 - 44"', add
label define ps07a_age_lbl 10 `"45 - 49"', add
label define ps07a_age_lbl 11 `"50 - 54"', add
label define ps07a_age_lbl 12 `"55 - 59"', add
label define ps07a_age_lbl 13 `"60 - 64"', add
label define ps07a_age_lbl 14 `"65 - 69"', add
label define ps07a_age_lbl 15 `"70 - 74"', add
label define ps07a_age_lbl 16 `"75 - 79"', add
label define ps07a_age_lbl 17 `"80 +"', add
label define ps07a_age_lbl 99 `"Unknown"', add
label values ps07a_age ps07a_age_lbl

label define ps07a_age2_lbl 1 `"0 - 4"'
label define ps07a_age2_lbl 2 `"5 - 14"', add
label define ps07a_age2_lbl 3 `"15 - 17"', add
label define ps07a_age2_lbl 4 `"18 +"', add
label define ps07a_age2_lbl 9 `"Unknown"', add
label values ps07a_age2 ps07a_age2_lbl

label define ps07a_nation_lbl 1 `"Palestinian"'
label define ps07a_nation_lbl 2 `"Not Palestinian"', add
label define ps07a_nation_lbl 9 `"NIU (not in universe)"', add
label values ps07a_nation ps07a_nation_lbl

label define ps07a_bpl_lbl 1 `"West Bank"'
label define ps07a_bpl_lbl 2 `"Gaza Strip governorates"', add
label define ps07a_bpl_lbl 3 `"1948 areas and Israel"', add
label define ps07a_bpl_lbl 4 `"Arab countries"', add
label define ps07a_bpl_lbl 5 `"Other countries"', add
label define ps07a_bpl_lbl 8 `"Unknown"', add
label define ps07a_bpl_lbl 9 `"NIU (not in universe)"', add
label values ps07a_bpl ps07a_bpl_lbl

label define ps07a_uresid_lbl 1 `"West Bank governorates"'
label define ps07a_uresid_lbl 2 `"Gaza Strip governorates"', add
label define ps07a_uresid_lbl 3 `"Arab countries"', add
label define ps07a_uresid_lbl 4 `"Other countries"', add
label define ps07a_uresid_lbl 8 `"Unknown"', add
label define ps07a_uresid_lbl 9 `"NIU (not in universe)"', add
label values ps07a_uresid ps07a_uresid_lbl

label define ps07a_prevres_lbl 1 `"West Bank governorates"'
label define ps07a_prevres_lbl 2 `"Gaza Strip governorates"', add
label define ps07a_prevres_lbl 3 `"1948 areas and Israel"', add
label define ps07a_prevres_lbl 4 `"Arab countries"', add
label define ps07a_prevres_lbl 5 `"Other countries"', add
label define ps07a_prevres_lbl 8 `"Unknown"', add
label define ps07a_prevres_lbl 9 `"NIU (not in universe)"', add
label values ps07a_prevres ps07a_prevres_lbl

label define ps07a_migreas_lbl 1 `"Work"'
label define ps07a_migreas_lbl 2 `"Study"', add
label define ps07a_migreas_lbl 3 `"Marriage"', add
label define ps07a_migreas_lbl 4 `"Accompany"', add
label define ps07a_migreas_lbl 5 `"Other"', add
label define ps07a_migreas_lbl 8 `"Unknown"', add
label define ps07a_migreas_lbl 9 `"NIU (not in universe)"', add
label values ps07a_migreas ps07a_migreas_lbl

label define ps07a_refugee_lbl 1 `"Refugee"'
label define ps07a_refugee_lbl 2 `"Non refugee"', add
label define ps07a_refugee_lbl 8 `"Unknown"', add
label define ps07a_refugee_lbl 9 `"NIU (not in universe)"', add
label values ps07a_refugee ps07a_refugee_lbl

label define ps07a_insur_lbl 1 `"Available"'
label define ps07a_insur_lbl 2 `"Not available"', add
label define ps07a_insur_lbl 8 `"Unknown"', add
label define ps07a_insur_lbl 9 `"NIU (not in universe)"', add
label values ps07a_insur ps07a_insur_lbl

label define ps07a_pcuse_lbl 1 `"Yes"'
label define ps07a_pcuse_lbl 2 `"No"', add
label define ps07a_pcuse_lbl 8 `"Unknown"', add
label define ps07a_pcuse_lbl 9 `"NIU (not in universe)"', add
label values ps07a_pcuse ps07a_pcuse_lbl

label define ps07a_school_lbl 1 `"Attending"'
label define ps07a_school_lbl 2 `"Attended and left"', add
label define ps07a_school_lbl 3 `"Attended and graduated"', add
label define ps07a_school_lbl 4 `"Never attended"', add
label define ps07a_school_lbl 8 `"Unknown"', add
label define ps07a_school_lbl 9 `"NIU (not in universe)"', add
label values ps07a_school ps07a_school_lbl

label define ps07a_edattain_lbl 1 `"Illiterate"'
label define ps07a_edattain_lbl 2 `"Can read and write"', add
label define ps07a_edattain_lbl 3 `"Elementary"', add
label define ps07a_edattain_lbl 4 `"Preparatory"', add
label define ps07a_edattain_lbl 5 `"Secondary"', add
label define ps07a_edattain_lbl 6 `"Associate Diploma"', add
label define ps07a_edattain_lbl 7 `"Bachelor and above"', add
label define ps07a_edattain_lbl 8 `"Unknown"', add
label define ps07a_edattain_lbl 9 `"NIU (not in universe)"', add
label values ps07a_edattain ps07a_edattain_lbl

label define ps07a_degree_lbl 1 `"Palestine"'
label define ps07a_degree_lbl 2 `"Arab countries"', add
label define ps07a_degree_lbl 3 `"Other countries"', add
label define ps07a_degree_lbl 8 `"Unknown"', add
label define ps07a_degree_lbl 9 `"NIU (not in universe)"', add
label values ps07a_degree ps07a_degree_lbl

label define ps07a_techqual_lbl 1 `"No"'
label define ps07a_techqual_lbl 2 `"Yes"', add
label define ps07a_techqual_lbl 8 `"Unknown"', add
label define ps07a_techqual_lbl 9 `"NIU (not in universe)"', add
label values ps07a_techqual ps07a_techqual_lbl

label define ps07a_empstat_lbl 1 `"Employed"'
label define ps07a_empstat_lbl 2 `"Unemployed, wants to work"', add
label define ps07a_empstat_lbl 3 `"Unemployed and does not want to work"', add
label define ps07a_empstat_lbl 8 `"Unknown"', add
label define ps07a_empstat_lbl 9 `"NIU (not in universe)"', add
label values ps07a_empstat ps07a_empstat_lbl

label define ps07a_occ_lbl 01 `"Legislators and managers"'
label define ps07a_occ_lbl 02 `"Professionals"', add
label define ps07a_occ_lbl 03 `"Technicians and associate professionals"', add
label define ps07a_occ_lbl 04 `"Clerks"', add
label define ps07a_occ_lbl 05 `"Services and sales workers"', add
label define ps07a_occ_lbl 06 `"Skilled agricultural and fishery workers"', add
label define ps07a_occ_lbl 07 `"Crafts and related workers"', add
label define ps07a_occ_lbl 08 `"Plant, machine operators and assemblers"', add
label define ps07a_occ_lbl 09 `"Elementary occupations"', add
label define ps07a_occ_lbl 98 `"Unknown"', add
label define ps07a_occ_lbl 99 `"NIU (not in universe)"', add
label values ps07a_occ ps07a_occ_lbl

label define ps07a_ind_lbl 01 `"Agriculture, hunting and forestry"'
label define ps07a_ind_lbl 02 `"Fishing"', add
label define ps07a_ind_lbl 03 `"Mining and quarrying"', add
label define ps07a_ind_lbl 04 `"Manufacturing"', add
label define ps07a_ind_lbl 05 `"Electricity, gas and water supply"', add
label define ps07a_ind_lbl 06 `"Construction"', add
label define ps07a_ind_lbl 07 `"Whole sale and retail trade"', add
label define ps07a_ind_lbl 08 `"Hotels and restaurants"', add
label define ps07a_ind_lbl 09 `"Transport, storage and communication"', add
label define ps07a_ind_lbl 10 `"Financial intermediation"', add
label define ps07a_ind_lbl 11 `"Real-estate, renting and business activities"', add
label define ps07a_ind_lbl 12 `"Public administration and defense"', add
label define ps07a_ind_lbl 13 `"Education"', add
label define ps07a_ind_lbl 14 `"Health and social work"', add
label define ps07a_ind_lbl 15 `"Other community social and personal service activities"', add
label define ps07a_ind_lbl 16 `"Private households with employed persons"', add
label define ps07a_ind_lbl 17 `"Extraterritorial organizations and bodies"', add
label define ps07a_ind_lbl 98 `"Unknown"', add
label define ps07a_ind_lbl 99 `"NIU (not in universe)"', add
label values ps07a_ind ps07a_ind_lbl

label define ps07a_sector_lbl 1 `"Private national"'
label define ps07a_sector_lbl 2 `"Private foreign"', add
label define ps07a_sector_lbl 3 `"National government"', add
label define ps07a_sector_lbl 4 `"Other"', add
label define ps07a_sector_lbl 8 `"Unknown"', add
label define ps07a_sector_lbl 9 `"NIU (not in universe)"', add
label values ps07a_sector ps07a_sector_lbl

label define ps07a_classwk_lbl 1 `"Employer"'
label define ps07a_classwk_lbl 2 `"Self employed"', add
label define ps07a_classwk_lbl 3 `"Employee"', add
label define ps07a_classwk_lbl 4 `"Unpaid family member"', add
label define ps07a_classwk_lbl 8 `"Unknown"', add
label define ps07a_classwk_lbl 9 `"NIU (not in universe)"', add
label values ps07a_classwk ps07a_classwk_lbl

label define ps07a_placwrk_lbl 1 `"At home"'
label define ps07a_placwrk_lbl 2 `"At same locality"', add
label define ps07a_placwrk_lbl 3 `"At same governorate"', add
label define ps07a_placwrk_lbl 4 `"Other governorate"', add
label define ps07a_placwrk_lbl 5 `"In Israel and in settlements"', add
label define ps07a_placwrk_lbl 6 `"Abroad"', add
label define ps07a_placwrk_lbl 8 `"Unknown"', add
label define ps07a_placwrk_lbl 9 `"NIU (not in universe)"', add
label values ps07a_placwrk ps07a_placwrk_lbl

label define ps07a_marst_lbl 1 `"Never married"'
label define ps07a_marst_lbl 2 `"Married"', add
label define ps07a_marst_lbl 3 `"Divorced, Widowed, Separated"', add
label define ps07a_marst_lbl 8 `"Unknown"', add
label define ps07a_marst_lbl 9 `"NIU (not in universe)"', add
label values ps07a_marst ps07a_marst_lbl

label define ps07a_agemarr_lbl 10 `"10"'
label define ps07a_agemarr_lbl 12 `"12"', add
label define ps07a_agemarr_lbl 13 `"13"', add
label define ps07a_agemarr_lbl 14 `"14"', add
label define ps07a_agemarr_lbl 15 `"15"', add
label define ps07a_agemarr_lbl 16 `"16"', add
label define ps07a_agemarr_lbl 17 `"17"', add
label define ps07a_agemarr_lbl 18 `"18"', add
label define ps07a_agemarr_lbl 19 `"19"', add
label define ps07a_agemarr_lbl 20 `"20"', add
label define ps07a_agemarr_lbl 21 `"21"', add
label define ps07a_agemarr_lbl 22 `"22"', add
label define ps07a_agemarr_lbl 23 `"23"', add
label define ps07a_agemarr_lbl 24 `"24"', add
label define ps07a_agemarr_lbl 25 `"25"', add
label define ps07a_agemarr_lbl 26 `"26"', add
label define ps07a_agemarr_lbl 27 `"27"', add
label define ps07a_agemarr_lbl 28 `"28"', add
label define ps07a_agemarr_lbl 29 `"29"', add
label define ps07a_agemarr_lbl 30 `"30"', add
label define ps07a_agemarr_lbl 31 `"31"', add
label define ps07a_agemarr_lbl 32 `"32"', add
label define ps07a_agemarr_lbl 33 `"33"', add
label define ps07a_agemarr_lbl 34 `"34"', add
label define ps07a_agemarr_lbl 35 `"35"', add
label define ps07a_agemarr_lbl 36 `"36"', add
label define ps07a_agemarr_lbl 37 `"37"', add
label define ps07a_agemarr_lbl 38 `"38"', add
label define ps07a_agemarr_lbl 39 `"39"', add
label define ps07a_agemarr_lbl 40 `"40"', add
label define ps07a_agemarr_lbl 41 `"41"', add
label define ps07a_agemarr_lbl 42 `"42"', add
label define ps07a_agemarr_lbl 43 `"43"', add
label define ps07a_agemarr_lbl 44 `"44"', add
label define ps07a_agemarr_lbl 45 `"45"', add
label define ps07a_agemarr_lbl 46 `"46"', add
label define ps07a_agemarr_lbl 47 `"47"', add
label define ps07a_agemarr_lbl 48 `"48"', add
label define ps07a_agemarr_lbl 49 `"49"', add
label define ps07a_agemarr_lbl 50 `"50"', add
label define ps07a_agemarr_lbl 51 `"51"', add
label define ps07a_agemarr_lbl 52 `"52"', add
label define ps07a_agemarr_lbl 53 `"53"', add
label define ps07a_agemarr_lbl 54 `"54"', add
label define ps07a_agemarr_lbl 55 `"55"', add
label define ps07a_agemarr_lbl 56 `"56"', add
label define ps07a_agemarr_lbl 57 `"57"', add
label define ps07a_agemarr_lbl 58 `"58"', add
label define ps07a_agemarr_lbl 59 `"59"', add
label define ps07a_agemarr_lbl 60 `"60"', add
label define ps07a_agemarr_lbl 61 `"61"', add
label define ps07a_agemarr_lbl 62 `"62"', add
label define ps07a_agemarr_lbl 63 `"63"', add
label define ps07a_agemarr_lbl 64 `"64"', add
label define ps07a_agemarr_lbl 65 `"65"', add
label define ps07a_agemarr_lbl 66 `"66"', add
label define ps07a_agemarr_lbl 67 `"67"', add
label define ps07a_agemarr_lbl 68 `"68"', add
label define ps07a_agemarr_lbl 70 `"70"', add
label define ps07a_agemarr_lbl 98 `"Unknown"', add
label define ps07a_agemarr_lbl 99 `"NIU (not in universe)"', add
label values ps07a_agemarr ps07a_agemarr_lbl

label define ps07a_durmarr_lbl 00 `"0"'
label define ps07a_durmarr_lbl 01 `"1"', add
label define ps07a_durmarr_lbl 02 `"2"', add
label define ps07a_durmarr_lbl 03 `"3"', add
label define ps07a_durmarr_lbl 04 `"4"', add
label define ps07a_durmarr_lbl 05 `"5"', add
label define ps07a_durmarr_lbl 06 `"6"', add
label define ps07a_durmarr_lbl 07 `"7"', add
label define ps07a_durmarr_lbl 08 `"8"', add
label define ps07a_durmarr_lbl 09 `"9"', add
label define ps07a_durmarr_lbl 10 `"10"', add
label define ps07a_durmarr_lbl 11 `"11"', add
label define ps07a_durmarr_lbl 12 `"12"', add
label define ps07a_durmarr_lbl 13 `"13"', add
label define ps07a_durmarr_lbl 14 `"14"', add
label define ps07a_durmarr_lbl 15 `"15"', add
label define ps07a_durmarr_lbl 16 `"16"', add
label define ps07a_durmarr_lbl 17 `"17"', add
label define ps07a_durmarr_lbl 18 `"18"', add
label define ps07a_durmarr_lbl 19 `"19"', add
label define ps07a_durmarr_lbl 20 `"20"', add
label define ps07a_durmarr_lbl 21 `"21"', add
label define ps07a_durmarr_lbl 22 `"22"', add
label define ps07a_durmarr_lbl 23 `"23"', add
label define ps07a_durmarr_lbl 24 `"24"', add
label define ps07a_durmarr_lbl 25 `"25"', add
label define ps07a_durmarr_lbl 26 `"26"', add
label define ps07a_durmarr_lbl 27 `"27"', add
label define ps07a_durmarr_lbl 28 `"28"', add
label define ps07a_durmarr_lbl 29 `"29"', add
label define ps07a_durmarr_lbl 30 `"30"', add
label define ps07a_durmarr_lbl 31 `"31"', add
label define ps07a_durmarr_lbl 32 `"32"', add
label define ps07a_durmarr_lbl 33 `"33"', add
label define ps07a_durmarr_lbl 34 `"34"', add
label define ps07a_durmarr_lbl 35 `"35"', add
label define ps07a_durmarr_lbl 36 `"36"', add
label define ps07a_durmarr_lbl 37 `"37"', add
label define ps07a_durmarr_lbl 38 `"38"', add
label define ps07a_durmarr_lbl 39 `"39"', add
label define ps07a_durmarr_lbl 40 `"40"', add
label define ps07a_durmarr_lbl 41 `"41"', add
label define ps07a_durmarr_lbl 42 `"42"', add
label define ps07a_durmarr_lbl 43 `"43"', add
label define ps07a_durmarr_lbl 44 `"44"', add
label define ps07a_durmarr_lbl 45 `"45"', add
label define ps07a_durmarr_lbl 46 `"46"', add
label define ps07a_durmarr_lbl 47 `"47"', add
label define ps07a_durmarr_lbl 48 `"48"', add
label define ps07a_durmarr_lbl 49 `"49"', add
label define ps07a_durmarr_lbl 50 `"50"', add
label define ps07a_durmarr_lbl 51 `"51"', add
label define ps07a_durmarr_lbl 52 `"52"', add
label define ps07a_durmarr_lbl 53 `"53"', add
label define ps07a_durmarr_lbl 54 `"54"', add
label define ps07a_durmarr_lbl 55 `"55"', add
label define ps07a_durmarr_lbl 56 `"56"', add
label define ps07a_durmarr_lbl 57 `"57"', add
label define ps07a_durmarr_lbl 58 `"58"', add
label define ps07a_durmarr_lbl 59 `"59"', add
label define ps07a_durmarr_lbl 60 `"60"', add
label define ps07a_durmarr_lbl 61 `"61"', add
label define ps07a_durmarr_lbl 62 `"62"', add
label define ps07a_durmarr_lbl 63 `"63"', add
label define ps07a_durmarr_lbl 64 `"64"', add
label define ps07a_durmarr_lbl 65 `"65"', add
label define ps07a_durmarr_lbl 66 `"66"', add
label define ps07a_durmarr_lbl 67 `"67"', add
label define ps07a_durmarr_lbl 68 `"68"', add
label define ps07a_durmarr_lbl 69 `"69"', add
label define ps07a_durmarr_lbl 70 `"70"', add
label define ps07a_durmarr_lbl 71 `"71"', add
label define ps07a_durmarr_lbl 72 `"72"', add
label define ps07a_durmarr_lbl 73 `"73"', add
label define ps07a_durmarr_lbl 74 `"74"', add
label define ps07a_durmarr_lbl 75 `"75"', add
label define ps07a_durmarr_lbl 76 `"76"', add
label define ps07a_durmarr_lbl 77 `"77"', add
label define ps07a_durmarr_lbl 78 `"78"', add
label define ps07a_durmarr_lbl 80 `"80"', add
label define ps07a_durmarr_lbl 81 `"81"', add
label define ps07a_durmarr_lbl 85 `"85"', add
label define ps07a_durmarr_lbl 98 `"Unknown"', add
label define ps07a_durmarr_lbl 99 `"NIU (not in universe)"', add
label values ps07a_durmarr ps07a_durmarr_lbl

label define ps07a_chbornmr_lbl 00 `"0"'
label define ps07a_chbornmr_lbl 01 `"1"', add
label define ps07a_chbornmr_lbl 02 `"2"', add
label define ps07a_chbornmr_lbl 03 `"3"', add
label define ps07a_chbornmr_lbl 04 `"4"', add
label define ps07a_chbornmr_lbl 05 `"5"', add
label define ps07a_chbornmr_lbl 06 `"6"', add
label define ps07a_chbornmr_lbl 07 `"7"', add
label define ps07a_chbornmr_lbl 08 `"8"', add
label define ps07a_chbornmr_lbl 09 `"9"', add
label define ps07a_chbornmr_lbl 10 `"10"', add
label define ps07a_chbornmr_lbl 11 `"11"', add
label define ps07a_chbornmr_lbl 12 `"12"', add
label define ps07a_chbornmr_lbl 13 `"13"', add
label define ps07a_chbornmr_lbl 14 `"14"', add
label define ps07a_chbornmr_lbl 15 `"15"', add
label define ps07a_chbornmr_lbl 16 `"16"', add
label define ps07a_chbornmr_lbl 17 `"17"', add
label define ps07a_chbornmr_lbl 18 `"18"', add
label define ps07a_chbornmr_lbl 19 `"19"', add
label define ps07a_chbornmr_lbl 20 `"20"', add
label define ps07a_chbornmr_lbl 21 `"21"', add
label define ps07a_chbornmr_lbl 22 `"22"', add
label define ps07a_chbornmr_lbl 98 `"Unknown"', add
label define ps07a_chbornmr_lbl 99 `"NIU (not in universe)"', add
label values ps07a_chbornmr ps07a_chbornmr_lbl

label define ps07a_chsurv_lbl 00 `"0"'
label define ps07a_chsurv_lbl 01 `"1"', add
label define ps07a_chsurv_lbl 02 `"2"', add
label define ps07a_chsurv_lbl 03 `"3"', add
label define ps07a_chsurv_lbl 04 `"4"', add
label define ps07a_chsurv_lbl 05 `"5"', add
label define ps07a_chsurv_lbl 06 `"6"', add
label define ps07a_chsurv_lbl 07 `"7"', add
label define ps07a_chsurv_lbl 08 `"8"', add
label define ps07a_chsurv_lbl 09 `"9"', add
label define ps07a_chsurv_lbl 10 `"10"', add
label define ps07a_chsurv_lbl 11 `"11"', add
label define ps07a_chsurv_lbl 12 `"12"', add
label define ps07a_chsurv_lbl 13 `"13"', add
label define ps07a_chsurv_lbl 14 `"14"', add
label define ps07a_chsurv_lbl 15 `"15"', add
label define ps07a_chsurv_lbl 16 `"16"', add
label define ps07a_chsurv_lbl 17 `"17"', add
label define ps07a_chsurv_lbl 18 `"18"', add
label define ps07a_chsurv_lbl 20 `"20"', add
label define ps07a_chsurv_lbl 98 `"Unknown"', add
label define ps07a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values ps07a_chsurv ps07a_chsurv_lbl

label define ps07a_bthlstyr_lbl 0 `"0"'
label define ps07a_bthlstyr_lbl 1 `"1"', add
label define ps07a_bthlstyr_lbl 2 `"2"', add
label define ps07a_bthlstyr_lbl 3 `"3"', add
label define ps07a_bthlstyr_lbl 8 `"Unknown"', add
label define ps07a_bthlstyr_lbl 9 `"NIU (not in universe)"', add
label values ps07a_bthlstyr ps07a_bthlstyr_lbl

label define ps07a_bthsurv_lbl 0 `"0"'
label define ps07a_bthsurv_lbl 1 `"1"', add
label define ps07a_bthsurv_lbl 2 `"2"', add
label define ps07a_bthsurv_lbl 3 `"3"', add
label define ps07a_bthsurv_lbl 8 `"Unknown"', add
label define ps07a_bthsurv_lbl 9 `"NIU (not in universe)"', add
label values ps07a_bthsurv ps07a_bthsurv_lbl


