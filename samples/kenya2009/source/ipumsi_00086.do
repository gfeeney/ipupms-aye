* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    ke09a_dwnum     22-27    ///
  byte    ke09a_pern      28-29    ///
  byte    ke09a_fbig      30-30    ///
  byte    ke09a_prov      31-31    ///
  int     ke09a_dist      32-34    ///
  byte    ke09a_urban     35-35    ///
  byte    ke09a_areastat  36-36    ///
  int     ke09a_constit   37-39    ///
  byte    ke09a_hhtype    40-40    ///
  int     ke09a_county    41-43    ///
  byte    ke09a_bthyrhh   44-45    ///
  byte    ke09a_dthyrhh   46-47    ///
  byte    ke09a_excattle  48-49    ///
  int     ke09a_idcattle  50-52    ///
  int     ke09a_sheep     53-55    ///
  int     ke09a_goats     56-58    ///
  int     ke09a_camels    59-61    ///
  byte    ke09a_donkeys   62-63    ///
  byte    ke09a_pigs      64-65    ///
  int     ke09a_idchickn  66-68    ///
  int     ke09a_comchkn   69-71    ///
  int     ke09a_beehives  72-74    ///
  byte    ke09a_othanim   75-76    ///
  byte    ke09a_dwunits   77-78    ///
  byte    ke09a_rooms     79-80    ///
  byte    ke09a_tenure    81-82    ///
  byte    ke09a_roof      83-84    ///
  byte    ke09a_walls     85-86    ///
  byte    ke09a_floor     87-87    ///
  byte    ke09a_watsrc    88-89    ///
  byte    ke09a_sewer     90-91    ///
  byte    ke09a_fuelck    92-92    ///
  byte    ke09a_light     93-93    ///
  byte    ke09a_radio     94-94    ///
  byte    ke09a_tv        95-95    ///
  byte    ke09a_cellphon  96-96    ///
  byte    ke09a_phone     97-97    ///
  byte    ke09a_computr   98-98    ///
  byte    ke09a_bike      99-99    ///
  byte    ke09a_motorcyc  100-100  ///
  byte    ke09a_auto      101-101  ///
  byte    ke09a_truck     102-102  ///
  byte    ke09a_fridge    103-103  ///
  byte    ke09a_boat      104-104  ///
  byte    ke09a_cart      105-105  ///
  byte    ke09a_canoe     106-106  ///
  byte    ke09a_tuktuk    107-107  ///
  byte    ke09a_emig15yr  108-109  ///
  int     pernum          110-112  ///
  float   wtper           113-120  ///
  byte    ke09a_pernum    121-122  ///
  byte    ke09a_relate    123-124  ///
  byte    ke09a_sex       125-125  ///
  byte    ke09a_age       126-127  ///
  byte    ke09a_momloc    128-129  ///
  byte    ke09a_memberhh  130-130  ///
  byte    ke09a_marst     131-131  ///
  int     ke09a_prevres   132-134  ///
  byte    ke09a_resdurmo  135-136  ///
  int     ke09a_resduryr  137-140  ///
  byte    ke09a_mortfath  141-141  ///
  byte    ke09a_mortmoth  142-142  ///
  byte    ke09a_chbornm   143-144  ///
  byte    ke09a_chbornf   145-146  ///
  byte    ke09a_homechm   147-148  ///
  byte    ke09a_homechf   149-150  ///
  byte    ke09a_chawaym   151-152  ///
  byte    ke09a_chawayf   153-154  ///
  byte    ke09a_chdeadm   155-156  ///
  byte    ke09a_chdeadf   157-158  ///
  byte    ke09a_lbchmo    159-160  ///
  int     ke09a_lbchyr    161-164  ///
  byte    ke09a_lbnotif   165-165  ///
  byte    ke09a_lbchsex   166-166  ///
  byte    ke09a_lbchlive  167-167  ///
  byte    ke09a_disab1    168-168  ///
  byte    ke09a_disab2    169-169  ///
  byte    ke09a_disab3    170-170  ///
  byte    ke09a_wkdisab   171-171  ///
  byte    ke09a_school    172-172  ///
  byte    ke09a_edlevel   173-174  ///
  byte    ke09a_edattan   175-176  ///
  byte    ke09a_empstat   177-178  ///
  byte    ke09a_empsect   179-180  ///
  int     ke09a_hrswkwk   181-183  ///
  byte    ke09a_radiosvc  184-184  ///
  byte    ke09a_tvsvc     185-185  ///
  byte    ke09a_cellphsv  186-186  ///
  byte    ke09a_phonesvc  187-187  ///
  byte    ke09a_cptrsvc   188-188  ///
  byte    ke09a_webloc    189-190  ///
  byte    ke09a_flagp12   191-191  ///
  byte    ke09a_flagp39   192-192  ///
  byte    ke09a_flagfert  193-193  ///
  using `"ipumsi_00086.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var ke09a_dwnum    `"Dwelling number"'
label var ke09a_pern     `"Number of persons in household"'
label var ke09a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var ke09a_prov     `"Province where houshold is located"'
label var ke09a_dist     `"District where houshold is located"'
label var ke09a_urban    `"Urban"'
label var ke09a_areastat `"Enumeration area status"'
label var ke09a_constit  `"Constituency where houshold is located"'
label var ke09a_hhtype   `"Household Type"'
label var ke09a_county   `"County"'
label var ke09a_bthyrhh  `"Number of births last 12 months"'
label var ke09a_dthyrhh  `"Number of deaths last 12 months"'
label var ke09a_excattle `"Number of exotic cattle owned by the household"'
label var ke09a_idcattle `"Number of indigenous cattle owned by the household"'
label var ke09a_sheep    `"Number of sheep owned by the household"'
label var ke09a_goats    `"Number of goats owned by the household"'
label var ke09a_camels   `"Number of camels owned by the household"'
label var ke09a_donkeys  `"Number of donkeys owned by the household"'
label var ke09a_pigs     `"Number of pigs owned by the household"'
label var ke09a_idchickn `"Number of indigenous chickens owned by the household"'
label var ke09a_comchkn  `"Number of commercialchickens owned by the household"'
label var ke09a_beehives `"Number of bee hives owned by the household"'
label var ke09a_othanim  `"Number of other animals owned by the household"'
label var ke09a_dwunits  `"Number of dwelling units occupied by the household"'
label var ke09a_rooms    `"Number of habitable rooms in the dwelling"'
label var ke09a_tenure   `"Tenure status"'
label var ke09a_roof     `"Main roof materials"'
label var ke09a_walls    `"Main wall materials"'
label var ke09a_floor    `"Main floor materials"'
label var ke09a_watsrc   `"Main source of water"'
label var ke09a_sewer    `"Main type of human waste disposal"'
label var ke09a_fuelck   `"Cooking fuel"'
label var ke09a_light    `"Lighting fuel"'
label var ke09a_radio    `"Radio"'
label var ke09a_tv       `"Television"'
label var ke09a_cellphon `"Mobile phone"'
label var ke09a_phone    `"Landline telephone"'
label var ke09a_computr  `"Computer"'
label var ke09a_bike     `"Bicycle"'
label var ke09a_motorcyc `"Motorcycle"'
label var ke09a_auto     `"Car"'
label var ke09a_truck    `"Truck/Lorry/Tractor/Bus"'
label var ke09a_fridge   `"Refrigerator"'
label var ke09a_boat     `"Boat"'
label var ke09a_cart     `"Animal drawn cart"'
label var ke09a_canoe    `"Canoes"'
label var ke09a_tuktuk   `"Tuk tuk"'
label var ke09a_emig15yr `"Number of emigrants since 1995"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var ke09a_pernum   `"Person number (within household)"'
label var ke09a_relate   `"Relationship to head of household"'
label var ke09a_sex      `"Sex"'
label var ke09a_age      `"Age in years"'
label var ke09a_momloc   `"Line number of mother"'
label var ke09a_memberhh `"Usual member of household"'
label var ke09a_marst    `"Marital status"'
label var ke09a_prevres  `"Country or district of residence one year ago"'
label var ke09a_resdurmo `"Month when person moved to current district"'
label var ke09a_resduryr `"Year when person moved to current district"'
label var ke09a_mortfath `"Father alive"'
label var ke09a_mortmoth `"Mother alive"'
label var ke09a_chbornm  `"Number of boys born alive"'
label var ke09a_chbornf  `"Number of girls born alive"'
label var ke09a_homechm  `"Number of boys born alive living in household"'
label var ke09a_homechf  `"Number of girls born alive living in household"'
label var ke09a_chawaym  `"Number of boys born alive living elsewhere"'
label var ke09a_chawayf  `"Number of girls born alive livingelsewhere"'
label var ke09a_chdeadm  `"Number of boys born alive who have died"'
label var ke09a_chdeadf  `"Number of girls born alive who have died"'
label var ke09a_lbchmo   `"Month of birth of the last child born alive"'
label var ke09a_lbchyr   `"Year of birth of the last child born alive"'
label var ke09a_lbnotif  `"Last birth notified"'
label var ke09a_lbchsex  `"Sex of last child"'
label var ke09a_lbchlive `"Last child born is alive"'
label var ke09a_disab1   `"Disability 1"'
label var ke09a_disab2   `"Disability 2"'
label var ke09a_disab3   `"Disability 3"'
label var ke09a_wkdisab  `"Difficulty working due to disability"'
label var ke09a_school   `"School enrollment status"'
label var ke09a_edlevel  `"Highest education level"'
label var ke09a_edattan  `"Highest education level completed"'
label var ke09a_empstat  `"Economic activity in the last 7 days"'
label var ke09a_empsect  `"Main employer"'
label var ke09a_hrswkwk  `"Hours worked in the last 7 days"'
label var ke09a_radiosvc `"Radio service"'
label var ke09a_tvsvc    `"TV service"'
label var ke09a_cellphsv `"Mobile phone service"'
label var ke09a_phonesvc `"Landline telephone service"'
label var ke09a_cptrsvc  `"Computer service"'
label var ke09a_webloc   `"Main internet location"'
label var ke09a_flagp12  `"Imputation flag: age"'
label var ke09a_flagp39  `"Imputation flag: school"'
label var ke09a_flagfert `"Imputation flag: fertility"'

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

label define ke09a_pern_lbl 01 `"1"'
label define ke09a_pern_lbl 02 `"2"', add
label define ke09a_pern_lbl 03 `"3"', add
label define ke09a_pern_lbl 04 `"4"', add
label define ke09a_pern_lbl 05 `"5"', add
label define ke09a_pern_lbl 06 `"6"', add
label define ke09a_pern_lbl 07 `"7"', add
label define ke09a_pern_lbl 08 `"8"', add
label define ke09a_pern_lbl 09 `"9"', add
label define ke09a_pern_lbl 10 `"10"', add
label define ke09a_pern_lbl 11 `"11"', add
label define ke09a_pern_lbl 12 `"12"', add
label define ke09a_pern_lbl 13 `"13"', add
label define ke09a_pern_lbl 14 `"14"', add
label define ke09a_pern_lbl 15 `"15"', add
label define ke09a_pern_lbl 16 `"16"', add
label define ke09a_pern_lbl 17 `"17"', add
label define ke09a_pern_lbl 18 `"18"', add
label define ke09a_pern_lbl 19 `"19"', add
label define ke09a_pern_lbl 20 `"20"', add
label define ke09a_pern_lbl 21 `"21"', add
label define ke09a_pern_lbl 22 `"22"', add
label define ke09a_pern_lbl 23 `"23"', add
label define ke09a_pern_lbl 24 `"24"', add
label define ke09a_pern_lbl 25 `"25"', add
label define ke09a_pern_lbl 26 `"26"', add
label define ke09a_pern_lbl 27 `"27"', add
label define ke09a_pern_lbl 28 `"28"', add
label define ke09a_pern_lbl 29 `"29"', add
label define ke09a_pern_lbl 30 `"30"', add
label define ke09a_pern_lbl 31 `"31"', add
label define ke09a_pern_lbl 32 `"32"', add
label define ke09a_pern_lbl 33 `"33"', add
label define ke09a_pern_lbl 34 `"34"', add
label define ke09a_pern_lbl 35 `"35"', add
label define ke09a_pern_lbl 36 `"36"', add
label define ke09a_pern_lbl 37 `"37"', add
label define ke09a_pern_lbl 38 `"38"', add
label define ke09a_pern_lbl 39 `"39"', add
label define ke09a_pern_lbl 40 `"40"', add
label define ke09a_pern_lbl 41 `"41"', add
label define ke09a_pern_lbl 42 `"42"', add
label define ke09a_pern_lbl 43 `"43"', add
label define ke09a_pern_lbl 44 `"44"', add
label define ke09a_pern_lbl 45 `"45"', add
label define ke09a_pern_lbl 46 `"46"', add
label define ke09a_pern_lbl 47 `"47"', add
label define ke09a_pern_lbl 48 `"48"', add
label define ke09a_pern_lbl 49 `"49"', add
label define ke09a_pern_lbl 50 `"50"', add
label values ke09a_pern ke09a_pern_lbl

label define ke09a_fbig_lbl 0 `"No problem"'
label define ke09a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define ke09a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values ke09a_fbig ke09a_fbig_lbl

label define ke09a_prov_lbl 1 `"Nairobi"'
label define ke09a_prov_lbl 2 `"Central"', add
label define ke09a_prov_lbl 3 `"Coast"', add
label define ke09a_prov_lbl 4 `"Eastern"', add
label define ke09a_prov_lbl 5 `"Northeastern"', add
label define ke09a_prov_lbl 6 `"Nyanza"', add
label define ke09a_prov_lbl 7 `"Rift Valley"', add
label define ke09a_prov_lbl 8 `"Western"', add
label values ke09a_prov ke09a_prov_lbl

label define ke09a_dist_lbl 101 `"Nairobi West"'
label define ke09a_dist_lbl 102 `"Nairobi East"', add
label define ke09a_dist_lbl 103 `"Nairobi North"', add
label define ke09a_dist_lbl 104 `"Westlands"', add
label define ke09a_dist_lbl 201 `"Nyandarua North"', add
label define ke09a_dist_lbl 202 `"Nyandarua South                 "', add
label define ke09a_dist_lbl 203 `"Nyeri North"', add
label define ke09a_dist_lbl 204 `"Nyeri South"', add
label define ke09a_dist_lbl 205 `"Kirinyaga"', add
label define ke09a_dist_lbl 206 `"Muranga North"', add
label define ke09a_dist_lbl 207 `"Muranga South"', add
label define ke09a_dist_lbl 208 `"Kiambu (Kiambaa)"', add
label define ke09a_dist_lbl 209 `"Kikuyu"', add
label define ke09a_dist_lbl 210 `"Kiambu West"', add
label define ke09a_dist_lbl 211 `"Lari"', add
label define ke09a_dist_lbl 212 `"Githunguri"', add
label define ke09a_dist_lbl 213 `"Thika East"', add
label define ke09a_dist_lbl 214 `"Thika West"', add
label define ke09a_dist_lbl 215 `"Ruiru"', add
label define ke09a_dist_lbl 216 `"Gatanga"', add
label define ke09a_dist_lbl 217 `"Gatundu"', add
label define ke09a_dist_lbl 301 `"Mombasa"', add
label define ke09a_dist_lbl 302 `"Kilindini"', add
label define ke09a_dist_lbl 303 `"Kwale"', add
label define ke09a_dist_lbl 304 `"Kinango"', add
label define ke09a_dist_lbl 305 `"Msambweni"', add
label define ke09a_dist_lbl 306 `"Kilifi"', add
label define ke09a_dist_lbl 307 `"Kaloleni"', add
label define ke09a_dist_lbl 308 `"Malindi"', add
label define ke09a_dist_lbl 309 `"Tana River"', add
label define ke09a_dist_lbl 310 `"Tana Delta"', add
label define ke09a_dist_lbl 311 `"Lamu"', add
label define ke09a_dist_lbl 312 `"Taita"', add
label define ke09a_dist_lbl 313 `"Taveta"', add
label define ke09a_dist_lbl 401 `"Marsabit"', add
label define ke09a_dist_lbl 402 `"Chalbi"', add
label define ke09a_dist_lbl 403 `"Laisamis"', add
label define ke09a_dist_lbl 404 `"Moyale"', add
label define ke09a_dist_lbl 405 `"Isiolo"', add
label define ke09a_dist_lbl 406 `"Garba Tulla"', add
label define ke09a_dist_lbl 407 `"Imenti Central"', add
label define ke09a_dist_lbl 408 `"Imenti North"', add
label define ke09a_dist_lbl 409 `"Imenti south"', add
label define ke09a_dist_lbl 410 `"Meru south"', add
label define ke09a_dist_lbl 411 `"Maara"', add
label define ke09a_dist_lbl 412 `"Igembe"', add
label define ke09a_dist_lbl 413 `"Tigania"', add
label define ke09a_dist_lbl 414 `"Tharaka"', add
label define ke09a_dist_lbl 415 `"Embu"', add
label define ke09a_dist_lbl 416 `"Mbeere"', add
label define ke09a_dist_lbl 417 `"Kitui North"', add
label define ke09a_dist_lbl 418 `"Kitui South (Mutomo)"', add
label define ke09a_dist_lbl 419 `"Mwingi"', add
label define ke09a_dist_lbl 420 `"Kyuso"', add
label define ke09a_dist_lbl 421 `"Machakos"', add
label define ke09a_dist_lbl 422 `"Mwala"', add
label define ke09a_dist_lbl 423 `"Yatta"', add
label define ke09a_dist_lbl 424 `"Kangundo"', add
label define ke09a_dist_lbl 425 `"Makueni"', add
label define ke09a_dist_lbl 426 `"Mbooni"', add
label define ke09a_dist_lbl 427 `"Kibwezi"', add
label define ke09a_dist_lbl 428 `"Nzaui"', add
label define ke09a_dist_lbl 501 `"Garissa"', add
label define ke09a_dist_lbl 502 `"Lagdera"', add
label define ke09a_dist_lbl 503 `"Fafi"', add
label define ke09a_dist_lbl 504 `"Ijara"', add
label define ke09a_dist_lbl 505 `"Wajir South"', add
label define ke09a_dist_lbl 506 `"Wajir North"', add
label define ke09a_dist_lbl 507 `"Wajir East"', add
label define ke09a_dist_lbl 508 `"Wajir West"', add
label define ke09a_dist_lbl 509 `"Mandera Central"', add
label define ke09a_dist_lbl 510 `"Mandera East"', add
label define ke09a_dist_lbl 511 `"Mandera West"', add
label define ke09a_dist_lbl 601 `"Siaya"', add
label define ke09a_dist_lbl 602 `"Bondo"', add
label define ke09a_dist_lbl 603 `"Rarieda"', add
label define ke09a_dist_lbl 604 `"Kisumu East"', add
label define ke09a_dist_lbl 605 `"Kisumu West"', add
label define ke09a_dist_lbl 606 `"Nyando"', add
label define ke09a_dist_lbl 607 `"Homa Bay"', add
label define ke09a_dist_lbl 608 `"Suba"', add
label define ke09a_dist_lbl 609 `"Rachuonyo"', add
label define ke09a_dist_lbl 610 `"Migori"', add
label define ke09a_dist_lbl 611 `"Rongo"', add
label define ke09a_dist_lbl 612 `"Kuria West"', add
label define ke09a_dist_lbl 613 `"Kuria East"', add
label define ke09a_dist_lbl 614 `"Kisii Central"', add
label define ke09a_dist_lbl 615 `"Kisii South"', add
label define ke09a_dist_lbl 616 `"Masaba"', add
label define ke09a_dist_lbl 617 `"Gucha"', add
label define ke09a_dist_lbl 618 `"Gucha South"', add
label define ke09a_dist_lbl 619 `"Nyamira"', add
label define ke09a_dist_lbl 620 `"Manga"', add
label define ke09a_dist_lbl 621 `"Borabu"', add
label define ke09a_dist_lbl 701 `"Turkana Central"', add
label define ke09a_dist_lbl 702 `"Turkana North"', add
label define ke09a_dist_lbl 703 `"Turkana South"', add
label define ke09a_dist_lbl 704 `"West Pokot"', add
label define ke09a_dist_lbl 705 `"Pokot North"', add
label define ke09a_dist_lbl 706 `"Pokot Central"', add
label define ke09a_dist_lbl 707 `"Samburu Central"', add
label define ke09a_dist_lbl 708 `"Samburu East"', add
label define ke09a_dist_lbl 709 `"Samburu North"', add
label define ke09a_dist_lbl 710 `"Trans Nzoia West"', add
label define ke09a_dist_lbl 711 `"Trans Nzoia East"', add
label define ke09a_dist_lbl 712 `"Kwanza"', add
label define ke09a_dist_lbl 713 `"Baringo"', add
label define ke09a_dist_lbl 714 `"Baringo North"', add
label define ke09a_dist_lbl 715 `"East Pokot"', add
label define ke09a_dist_lbl 716 `"Koibatek"', add
label define ke09a_dist_lbl 717 `"Eldoret West"', add
label define ke09a_dist_lbl 718 `"Eldoret East"', add
label define ke09a_dist_lbl 719 `"Wareng"', add
label define ke09a_dist_lbl 720 `"Marakwet"', add
label define ke09a_dist_lbl 721 `"Keiyo"', add
label define ke09a_dist_lbl 722 `"Nandi North"', add
label define ke09a_dist_lbl 723 `"Nandi Central"', add
label define ke09a_dist_lbl 724 `"Nandi East"', add
label define ke09a_dist_lbl 725 `"Nandi South"', add
label define ke09a_dist_lbl 726 `"Tinderet"', add
label define ke09a_dist_lbl 727 `"Laikipia North"', add
label define ke09a_dist_lbl 728 `"Laikipia East"', add
label define ke09a_dist_lbl 729 `"Laikipia West"', add
label define ke09a_dist_lbl 730 `"Nakuru"', add
label define ke09a_dist_lbl 731 `"Nakuru North"', add
label define ke09a_dist_lbl 732 `"Naivasha"', add
label define ke09a_dist_lbl 733 `"Molo"', add
label define ke09a_dist_lbl 734 `"Narok North"', add
label define ke09a_dist_lbl 735 `"Narok Wouth"', add
label define ke09a_dist_lbl 736 `"Trans Mara"', add
label define ke09a_dist_lbl 737 `"Kajiado Central"', add
label define ke09a_dist_lbl 738 `"Loitoktok"', add
label define ke09a_dist_lbl 739 `"Kericho"', add
label define ke09a_dist_lbl 740 `"Kipkelion"', add
label define ke09a_dist_lbl 741 `"Buret"', add
label define ke09a_dist_lbl 742 `"Sotik"', add
label define ke09a_dist_lbl 743 `"Bomet"', add
label define ke09a_dist_lbl 744 `"Kajiado North"', add
label define ke09a_dist_lbl 801 `"Kakamega Central"', add
label define ke09a_dist_lbl 802 `"Kakamega South"', add
label define ke09a_dist_lbl 803 `"Kakamega North"', add
label define ke09a_dist_lbl 804 `"Kakamega East"', add
label define ke09a_dist_lbl 805 `"Lugari"', add
label define ke09a_dist_lbl 806 `"Vihiga"', add
label define ke09a_dist_lbl 807 `"Emuhaya"', add
label define ke09a_dist_lbl 808 `"Hamisi"', add
label define ke09a_dist_lbl 809 `"Mumias"', add
label define ke09a_dist_lbl 810 `"Butere"', add
label define ke09a_dist_lbl 811 `"Bungoma South"', add
label define ke09a_dist_lbl 812 `"Bungoma North"', add
label define ke09a_dist_lbl 813 `"Bungoma East"', add
label define ke09a_dist_lbl 814 `"Bungoma West"', add
label define ke09a_dist_lbl 815 `"Mt. Elgon"', add
label define ke09a_dist_lbl 816 `"Busia"', add
label define ke09a_dist_lbl 817 `"Teso North"', add
label define ke09a_dist_lbl 818 `"Samia"', add
label define ke09a_dist_lbl 819 `"Bunyala"', add
label define ke09a_dist_lbl 820 `"Teso South"', add
label values ke09a_dist ke09a_dist_lbl

label define ke09a_urban_lbl 1 `"Rural"'
label define ke09a_urban_lbl 2 `"Urban"', add
label define ke09a_urban_lbl 3 `"Peri-urban"', add
label values ke09a_urban ke09a_urban_lbl

label define ke09a_areastat_lbl 1 `"Formal"'
label define ke09a_areastat_lbl 2 `"Informal"', add
label values ke09a_areastat ke09a_areastat_lbl

label define ke09a_constit_lbl 001 `"Makadara"'
label define ke09a_constit_lbl 002 `"Kamukunji"', add
label define ke09a_constit_lbl 003 `"Starehe"', add
label define ke09a_constit_lbl 004 `"Lang'ata"', add
label define ke09a_constit_lbl 005 `"Dagoretti"', add
label define ke09a_constit_lbl 006 `"Westlands"', add
label define ke09a_constit_lbl 007 `"Kasarani"', add
label define ke09a_constit_lbl 008 `"Embakasi"', add
label define ke09a_constit_lbl 009 `"Changamwe"', add
label define ke09a_constit_lbl 010 `"Kisauni"', add
label define ke09a_constit_lbl 011 `"Likoni"', add
label define ke09a_constit_lbl 012 `"Mvita"', add
label define ke09a_constit_lbl 013 `"Msambweni"', add
label define ke09a_constit_lbl 014 `"Matuga"', add
label define ke09a_constit_lbl 015 `"Kinango"', add
label define ke09a_constit_lbl 016 `"Bahari"', add
label define ke09a_constit_lbl 017 `"Kaloleni"', add
label define ke09a_constit_lbl 018 `"Ganze"', add
label define ke09a_constit_lbl 019 `"Malindi"', add
label define ke09a_constit_lbl 020 `"Magarini"', add
label define ke09a_constit_lbl 021 `"Garsen"', add
label define ke09a_constit_lbl 022 `"Galole"', add
label define ke09a_constit_lbl 023 `"Bura"', add
label define ke09a_constit_lbl 024 `"Lamu East"', add
label define ke09a_constit_lbl 025 `"Lamu West"', add
label define ke09a_constit_lbl 026 `"Taveta"', add
label define ke09a_constit_lbl 027 `"Wundanyi"', add
label define ke09a_constit_lbl 028 `"Mwatate"', add
label define ke09a_constit_lbl 029 `"Voi"', add
label define ke09a_constit_lbl 030 `"Dujis"', add
label define ke09a_constit_lbl 031 `"Lagdera"', add
label define ke09a_constit_lbl 032 `"Fafi"', add
label define ke09a_constit_lbl 033 `"Ijara"', add
label define ke09a_constit_lbl 034 `"Wajir North"', add
label define ke09a_constit_lbl 035 `"Wajir West"', add
label define ke09a_constit_lbl 036 `"Wajir East"', add
label define ke09a_constit_lbl 037 `"Wajir South"', add
label define ke09a_constit_lbl 038 `"Mandera West"', add
label define ke09a_constit_lbl 039 `"Mandera Central"', add
label define ke09a_constit_lbl 040 `"Mandera East"', add
label define ke09a_constit_lbl 041 `"Moyale"', add
label define ke09a_constit_lbl 042 `"North Horr"', add
label define ke09a_constit_lbl 043 `"Saku"', add
label define ke09a_constit_lbl 044 `"Laisamis"', add
label define ke09a_constit_lbl 045 `"Isiolo North"', add
label define ke09a_constit_lbl 046 `"Isiolo South"', add
label define ke09a_constit_lbl 047 `"Igembe"', add
label define ke09a_constit_lbl 048 `"Ntonyiri"', add
label define ke09a_constit_lbl 049 `"Tigania West"', add
label define ke09a_constit_lbl 050 `"Tigania East"', add
label define ke09a_constit_lbl 051 `"North Imenti"', add
label define ke09a_constit_lbl 052 `"Central Imenti"', add
label define ke09a_constit_lbl 053 `"South Imenti"', add
label define ke09a_constit_lbl 054 `"Nithi"', add
label define ke09a_constit_lbl 055 `"Tharaka"', add
label define ke09a_constit_lbl 056 `"Manyatta"', add
label define ke09a_constit_lbl 057 `"Runyenjes"', add
label define ke09a_constit_lbl 058 `"Gachoka"', add
label define ke09a_constit_lbl 059 `"Siakago"', add
label define ke09a_constit_lbl 060 `"Mwingi North"', add
label define ke09a_constit_lbl 061 `"Mwingi South"', add
label define ke09a_constit_lbl 062 `"Kitui West"', add
label define ke09a_constit_lbl 063 `"Kitui Central"', add
label define ke09a_constit_lbl 064 `"Mutito"', add
label define ke09a_constit_lbl 065 `"Kitui South"', add
label define ke09a_constit_lbl 066 `"Masinga"', add
label define ke09a_constit_lbl 067 `"Yatta"', add
label define ke09a_constit_lbl 068 `"Kangundo"', add
label define ke09a_constit_lbl 069 `"Kathiani"', add
label define ke09a_constit_lbl 070 `"Machakos Town"', add
label define ke09a_constit_lbl 071 `"Mwala"', add
label define ke09a_constit_lbl 072 `"Mbooni"', add
label define ke09a_constit_lbl 073 `"Kilome"', add
label define ke09a_constit_lbl 074 `"Kaiti"', add
label define ke09a_constit_lbl 075 `"Makueni"', add
label define ke09a_constit_lbl 076 `"Kibwezi"', add
label define ke09a_constit_lbl 077 `"Kinangop"', add
label define ke09a_constit_lbl 078 `"Kipipiri"', add
label define ke09a_constit_lbl 079 `"Ol kalou"', add
label define ke09a_constit_lbl 080 `"Ndaragwa"', add
label define ke09a_constit_lbl 081 `"Tetu"', add
label define ke09a_constit_lbl 082 `"Kieni"', add
label define ke09a_constit_lbl 083 `"Mathira"', add
label define ke09a_constit_lbl 084 `"Othaya"', add
label define ke09a_constit_lbl 085 `"Mukurwe-ini"', add
label define ke09a_constit_lbl 086 `"Nyeri Town"', add
label define ke09a_constit_lbl 087 `"Mwea"', add
label define ke09a_constit_lbl 088 `"Gichugu"', add
label define ke09a_constit_lbl 089 `"Ndia"', add
label define ke09a_constit_lbl 090 `"Kerugoya/kutus"', add
label define ke09a_constit_lbl 091 `"Kangema"', add
label define ke09a_constit_lbl 092 `"Mathioya"', add
label define ke09a_constit_lbl 093 `"Kiharu"', add
label define ke09a_constit_lbl 094 `"Kigumo"', add
label define ke09a_constit_lbl 095 `"Maragwa"', add
label define ke09a_constit_lbl 096 `"Kandara"', add
label define ke09a_constit_lbl 097 `"Gatanga"', add
label define ke09a_constit_lbl 098 `"Gatundu South"', add
label define ke09a_constit_lbl 099 `"Gatundu North"', add
label define ke09a_constit_lbl 100 `"Juja"', add
label define ke09a_constit_lbl 101 `"Githunguri"', add
label define ke09a_constit_lbl 102 `"Kiambaa"', add
label define ke09a_constit_lbl 103 `"Kabete"', add
label define ke09a_constit_lbl 104 `"Limuru"', add
label define ke09a_constit_lbl 105 `"Lari"', add
label define ke09a_constit_lbl 106 `"Turkana North"', add
label define ke09a_constit_lbl 107 `"Turkana Central"', add
label define ke09a_constit_lbl 108 `"Turkana South"', add
label define ke09a_constit_lbl 109 `"Kacheliba"', add
label define ke09a_constit_lbl 110 `"Kapenguria"', add
label define ke09a_constit_lbl 111 `"Sigor"', add
label define ke09a_constit_lbl 112 `"Samburu West"', add
label define ke09a_constit_lbl 113 `"Samburu East"', add
label define ke09a_constit_lbl 114 `"Kwanza"', add
label define ke09a_constit_lbl 115 `"Saboti"', add
label define ke09a_constit_lbl 116 `"Cheranganyi"', add
label define ke09a_constit_lbl 117 `"Eldoret North"', add
label define ke09a_constit_lbl 118 `"Eldoret East"', add
label define ke09a_constit_lbl 119 `"Eldoret South"', add
label define ke09a_constit_lbl 120 `"Marakwet East"', add
label define ke09a_constit_lbl 121 `"Marakwet West"', add
label define ke09a_constit_lbl 122 `"Keiyo North"', add
label define ke09a_constit_lbl 123 `"Keiyo South"', add
label define ke09a_constit_lbl 124 `"Mosop"', add
label define ke09a_constit_lbl 125 `"Aldai"', add
label define ke09a_constit_lbl 126 `"Emgwen"', add
label define ke09a_constit_lbl 127 `"Tinderet"', add
label define ke09a_constit_lbl 128 `"Baringo East"', add
label define ke09a_constit_lbl 129 `"Baringo North"', add
label define ke09a_constit_lbl 130 `"Baringo Central"', add
label define ke09a_constit_lbl 131 `"Mogotio"', add
label define ke09a_constit_lbl 132 `"Eldama Ravine"', add
label define ke09a_constit_lbl 133 `"Laikipia West"', add
label define ke09a_constit_lbl 134 `"Laikipia East"', add
label define ke09a_constit_lbl 135 `"Naivasha"', add
label define ke09a_constit_lbl 136 `"Nakuru Town"', add
label define ke09a_constit_lbl 137 `"Kuresoi"', add
label define ke09a_constit_lbl 138 `"Molo"', add
label define ke09a_constit_lbl 139 `"Rongai"', add
label define ke09a_constit_lbl 140 `"Subukia"', add
label define ke09a_constit_lbl 141 `"Kilgoris"', add
label define ke09a_constit_lbl 142 `"Narok North"', add
label define ke09a_constit_lbl 143 `"Narok South"', add
label define ke09a_constit_lbl 144 `"Kajiado North"', add
label define ke09a_constit_lbl 145 `"Kajiado Central"', add
label define ke09a_constit_lbl 146 `"Kajiado Aouth"', add
label define ke09a_constit_lbl 147 `"Bomet"', add
label define ke09a_constit_lbl 148 `"Chepalungu"', add
label define ke09a_constit_lbl 149 `"Sotik"', add
label define ke09a_constit_lbl 150 `"Konoin"', add
label define ke09a_constit_lbl 151 `"Buret"', add
label define ke09a_constit_lbl 152 `"Belgut"', add
label define ke09a_constit_lbl 153 `"Ainamoi"', add
label define ke09a_constit_lbl 154 `"Kipkelion"', add
label define ke09a_constit_lbl 155 `"Malava"', add
label define ke09a_constit_lbl 156 `"Lugari"', add
label define ke09a_constit_lbl 157 `"Mumias"', add
label define ke09a_constit_lbl 158 `"Matungu"', add
label define ke09a_constit_lbl 159 `"Lurambi"', add
label define ke09a_constit_lbl 160 `"Shinyalu"', add
label define ke09a_constit_lbl 161 `"Ikolomani"', add
label define ke09a_constit_lbl 162 `"Butere"', add
label define ke09a_constit_lbl 163 `"Khwisero"', add
label define ke09a_constit_lbl 164 `"Emuhaya"', add
label define ke09a_constit_lbl 165 `"Sabatia"', add
label define ke09a_constit_lbl 166 `"Vihiga"', add
label define ke09a_constit_lbl 167 `"Hamisi"', add
label define ke09a_constit_lbl 168 `"Mt. Elgon"', add
label define ke09a_constit_lbl 169 `"Kimilili"', add
label define ke09a_constit_lbl 170 `"Webuye"', add
label define ke09a_constit_lbl 171 `"Sirisia"', add
label define ke09a_constit_lbl 172 `"Kandunyi"', add
label define ke09a_constit_lbl 173 `"Bumula"', add
label define ke09a_constit_lbl 174 `"Amagoro"', add
label define ke09a_constit_lbl 175 `"Nambale"', add
label define ke09a_constit_lbl 176 `"Butula"', add
label define ke09a_constit_lbl 177 `"Funyula"', add
label define ke09a_constit_lbl 178 `"Budalangi"', add
label define ke09a_constit_lbl 179 `"Ugenya"', add
label define ke09a_constit_lbl 180 `"Alego"', add
label define ke09a_constit_lbl 181 `"Gem"', add
label define ke09a_constit_lbl 182 `"Bondo"', add
label define ke09a_constit_lbl 183 `"Rarieda"', add
label define ke09a_constit_lbl 184 `"Kisumu Town East"', add
label define ke09a_constit_lbl 185 `"Kisumu Town West"', add
label define ke09a_constit_lbl 186 `"Kisumu Rural"', add
label define ke09a_constit_lbl 187 `"Nyando"', add
label define ke09a_constit_lbl 188 `"Muhoroni"', add
label define ke09a_constit_lbl 189 `"Nyakachi"', add
label define ke09a_constit_lbl 190 `"Kasipul Kabondo"', add
label define ke09a_constit_lbl 191 `"Karachuonyo"', add
label define ke09a_constit_lbl 192 `"Rangwe"', add
label define ke09a_constit_lbl 193 `"Ndhiwa"', add
label define ke09a_constit_lbl 194 `"Rongo"', add
label define ke09a_constit_lbl 195 `"Migori"', add
label define ke09a_constit_lbl 196 `"Uriri"', add
label define ke09a_constit_lbl 197 `"Nyatike"', add
label define ke09a_constit_lbl 198 `"Mbita"', add
label define ke09a_constit_lbl 199 `"Gwasi"', add
label define ke09a_constit_lbl 200 `"Kuria"', add
label define ke09a_constit_lbl 201 `"Bonchari"', add
label define ke09a_constit_lbl 202 `"South Mugirango"', add
label define ke09a_constit_lbl 203 `"Bomachoge"', add
label define ke09a_constit_lbl 204 `"Bobasi"', add
label define ke09a_constit_lbl 205 `"Nyaribari Masaba"', add
label define ke09a_constit_lbl 206 `"Nyaribari Chache"', add
label define ke09a_constit_lbl 207 `"Kitutu Chache"', add
label define ke09a_constit_lbl 208 `"Kitutu Masaba"', add
label define ke09a_constit_lbl 209 `"West Mugirango"', add
label define ke09a_constit_lbl 210 `"N. Mugirango Borabu"', add
label values ke09a_constit ke09a_constit_lbl

label define ke09a_hhtype_lbl 1 `"Conventional"'
label define ke09a_hhtype_lbl 2 `"Unconventional"', add
label define ke09a_hhtype_lbl 3 `"Refugee camp"', add
label values ke09a_hhtype ke09a_hhtype_lbl

label define ke09a_county_lbl 101 `"Nairobi"'
label define ke09a_county_lbl 201 `"Nyandarua"', add
label define ke09a_county_lbl 202 `"Nyeri"', add
label define ke09a_county_lbl 203 `"Kirinyaga"', add
label define ke09a_county_lbl 204 `"Murang'a"', add
label define ke09a_county_lbl 205 `"Kiambu"', add
label define ke09a_county_lbl 301 `"Mombasa"', add
label define ke09a_county_lbl 302 `"Kwale"', add
label define ke09a_county_lbl 303 `"Kilifi"', add
label define ke09a_county_lbl 304 `"Tanariver"', add
label define ke09a_county_lbl 305 `"Lamu"', add
label define ke09a_county_lbl 306 `"Taitataveta"', add
label define ke09a_county_lbl 401 `"Marsabit"', add
label define ke09a_county_lbl 402 `"Isiolo"', add
label define ke09a_county_lbl 403 `"Meru"', add
label define ke09a_county_lbl 404 `"Tharaka"', add
label define ke09a_county_lbl 405 `"Embu"', add
label define ke09a_county_lbl 406 `"Kitui"', add
label define ke09a_county_lbl 407 `"Machakos"', add
label define ke09a_county_lbl 408 `"Makueni"', add
label define ke09a_county_lbl 501 `"Garissa"', add
label define ke09a_county_lbl 502 `"Wajir"', add
label define ke09a_county_lbl 503 `"Mandera"', add
label define ke09a_county_lbl 601 `"Siaya"', add
label define ke09a_county_lbl 602 `"Kisumu"', add
label define ke09a_county_lbl 604 `"Homabay"', add
label define ke09a_county_lbl 603 `"Migori"', add
label define ke09a_county_lbl 605 `"Kisii"', add
label define ke09a_county_lbl 606 `"Nyamira"', add
label define ke09a_county_lbl 701 `"Turkana"', add
label define ke09a_county_lbl 702 `"Westpokot"', add
label define ke09a_county_lbl 703 `"Samburu"', add
label define ke09a_county_lbl 704 `"Transnzoia"', add
label define ke09a_county_lbl 705 `"Baringo"', add
label define ke09a_county_lbl 706 `"Uasingishu"', add
label define ke09a_county_lbl 707 `"Elgeyo-marakwet"', add
label define ke09a_county_lbl 708 `"Nandi"', add
label define ke09a_county_lbl 709 `"Laikipia"', add
label define ke09a_county_lbl 710 `"Nakuru"', add
label define ke09a_county_lbl 711 `"Narok"', add
label define ke09a_county_lbl 712 `"Kajiado"', add
label define ke09a_county_lbl 713 `"Kericho"', add
label define ke09a_county_lbl 714 `"Bomet"', add
label define ke09a_county_lbl 801 `"Kakamega"', add
label define ke09a_county_lbl 802 `"Vihiga"', add
label define ke09a_county_lbl 803 `"Bungoma"', add
label define ke09a_county_lbl 804 `"Busia"', add
label values ke09a_county ke09a_county_lbl

label define ke09a_bthyrhh_lbl 00 `"0"'
label define ke09a_bthyrhh_lbl 01 `"1"', add
label define ke09a_bthyrhh_lbl 02 `"2"', add
label define ke09a_bthyrhh_lbl 03 `"3"', add
label define ke09a_bthyrhh_lbl 04 `"4"', add
label define ke09a_bthyrhh_lbl 05 `"5"', add
label define ke09a_bthyrhh_lbl 06 `"6"', add
label define ke09a_bthyrhh_lbl 07 `"7"', add
label define ke09a_bthyrhh_lbl 08 `"8"', add
label define ke09a_bthyrhh_lbl 09 `"9"', add
label define ke09a_bthyrhh_lbl 10 `"10"', add
label define ke09a_bthyrhh_lbl 99 `"NIU (not in universe)"', add
label values ke09a_bthyrhh ke09a_bthyrhh_lbl

label define ke09a_dthyrhh_lbl 00 `"No deaths in the last 12 months"'
label define ke09a_dthyrhh_lbl 01 `"1"', add
label define ke09a_dthyrhh_lbl 02 `"2"', add
label define ke09a_dthyrhh_lbl 03 `"3"', add
label define ke09a_dthyrhh_lbl 04 `"4"', add
label define ke09a_dthyrhh_lbl 05 `"5+"', add
label define ke09a_dthyrhh_lbl 99 `"NIU (not in universe)"', add
label values ke09a_dthyrhh ke09a_dthyrhh_lbl

label define ke09a_excattle_lbl 00 `"0"'
label define ke09a_excattle_lbl 01 `"1"', add
label define ke09a_excattle_lbl 02 `"2"', add
label define ke09a_excattle_lbl 03 `"3"', add
label define ke09a_excattle_lbl 04 `"4"', add
label define ke09a_excattle_lbl 05 `"5"', add
label define ke09a_excattle_lbl 06 `"6"', add
label define ke09a_excattle_lbl 07 `"7"', add
label define ke09a_excattle_lbl 08 `"8"', add
label define ke09a_excattle_lbl 09 `"9"', add
label define ke09a_excattle_lbl 10 `"10"', add
label define ke09a_excattle_lbl 11 `"11"', add
label define ke09a_excattle_lbl 12 `"12"', add
label define ke09a_excattle_lbl 13 `"13"', add
label define ke09a_excattle_lbl 14 `"14"', add
label define ke09a_excattle_lbl 15 `"15"', add
label define ke09a_excattle_lbl 16 `"16"', add
label define ke09a_excattle_lbl 17 `"17"', add
label define ke09a_excattle_lbl 18 `"18"', add
label define ke09a_excattle_lbl 19 `"19"', add
label define ke09a_excattle_lbl 20 `"20"', add
label define ke09a_excattle_lbl 21 `"21"', add
label define ke09a_excattle_lbl 22 `"22"', add
label define ke09a_excattle_lbl 23 `"23"', add
label define ke09a_excattle_lbl 24 `"24"', add
label define ke09a_excattle_lbl 25 `"25"', add
label define ke09a_excattle_lbl 26 `"26"', add
label define ke09a_excattle_lbl 27 `"27"', add
label define ke09a_excattle_lbl 28 `"28"', add
label define ke09a_excattle_lbl 29 `"29"', add
label define ke09a_excattle_lbl 30 `"30"', add
label define ke09a_excattle_lbl 31 `"31"', add
label define ke09a_excattle_lbl 32 `"32"', add
label define ke09a_excattle_lbl 33 `"33"', add
label define ke09a_excattle_lbl 34 `"34"', add
label define ke09a_excattle_lbl 35 `"35"', add
label define ke09a_excattle_lbl 36 `"36"', add
label define ke09a_excattle_lbl 37 `"37"', add
label define ke09a_excattle_lbl 38 `"38"', add
label define ke09a_excattle_lbl 39 `"39"', add
label define ke09a_excattle_lbl 40 `"40"', add
label define ke09a_excattle_lbl 41 `"41"', add
label define ke09a_excattle_lbl 42 `"42"', add
label define ke09a_excattle_lbl 43 `"43"', add
label define ke09a_excattle_lbl 44 `"44"', add
label define ke09a_excattle_lbl 45 `"45"', add
label define ke09a_excattle_lbl 46 `"46"', add
label define ke09a_excattle_lbl 47 `"47"', add
label define ke09a_excattle_lbl 48 `"48"', add
label define ke09a_excattle_lbl 49 `"49"', add
label define ke09a_excattle_lbl 50 `"50+"', add
label values ke09a_excattle ke09a_excattle_lbl

label define ke09a_idcattle_lbl 000 `"0"'
label define ke09a_idcattle_lbl 001 `"1"', add
label define ke09a_idcattle_lbl 002 `"2"', add
label define ke09a_idcattle_lbl 003 `"3"', add
label define ke09a_idcattle_lbl 004 `"4"', add
label define ke09a_idcattle_lbl 005 `"5"', add
label define ke09a_idcattle_lbl 006 `"6"', add
label define ke09a_idcattle_lbl 007 `"7"', add
label define ke09a_idcattle_lbl 008 `"8"', add
label define ke09a_idcattle_lbl 009 `"9"', add
label define ke09a_idcattle_lbl 010 `"10"', add
label define ke09a_idcattle_lbl 011 `"11"', add
label define ke09a_idcattle_lbl 012 `"12"', add
label define ke09a_idcattle_lbl 013 `"13"', add
label define ke09a_idcattle_lbl 014 `"14"', add
label define ke09a_idcattle_lbl 015 `"15"', add
label define ke09a_idcattle_lbl 016 `"16"', add
label define ke09a_idcattle_lbl 017 `"17"', add
label define ke09a_idcattle_lbl 018 `"18"', add
label define ke09a_idcattle_lbl 019 `"19"', add
label define ke09a_idcattle_lbl 020 `"20"', add
label define ke09a_idcattle_lbl 021 `"21"', add
label define ke09a_idcattle_lbl 022 `"22"', add
label define ke09a_idcattle_lbl 023 `"23"', add
label define ke09a_idcattle_lbl 024 `"24"', add
label define ke09a_idcattle_lbl 025 `"25"', add
label define ke09a_idcattle_lbl 026 `"26"', add
label define ke09a_idcattle_lbl 027 `"27"', add
label define ke09a_idcattle_lbl 028 `"28"', add
label define ke09a_idcattle_lbl 029 `"29"', add
label define ke09a_idcattle_lbl 030 `"30"', add
label define ke09a_idcattle_lbl 031 `"31"', add
label define ke09a_idcattle_lbl 032 `"32"', add
label define ke09a_idcattle_lbl 033 `"33"', add
label define ke09a_idcattle_lbl 034 `"34"', add
label define ke09a_idcattle_lbl 035 `"35"', add
label define ke09a_idcattle_lbl 036 `"36"', add
label define ke09a_idcattle_lbl 037 `"37"', add
label define ke09a_idcattle_lbl 038 `"38"', add
label define ke09a_idcattle_lbl 039 `"39"', add
label define ke09a_idcattle_lbl 040 `"40"', add
label define ke09a_idcattle_lbl 041 `"41"', add
label define ke09a_idcattle_lbl 042 `"42"', add
label define ke09a_idcattle_lbl 043 `"43"', add
label define ke09a_idcattle_lbl 044 `"44"', add
label define ke09a_idcattle_lbl 045 `"45"', add
label define ke09a_idcattle_lbl 046 `"46"', add
label define ke09a_idcattle_lbl 047 `"47"', add
label define ke09a_idcattle_lbl 048 `"48"', add
label define ke09a_idcattle_lbl 049 `"49"', add
label define ke09a_idcattle_lbl 050 `"50"', add
label define ke09a_idcattle_lbl 051 `"51"', add
label define ke09a_idcattle_lbl 052 `"52"', add
label define ke09a_idcattle_lbl 053 `"53"', add
label define ke09a_idcattle_lbl 054 `"54"', add
label define ke09a_idcattle_lbl 055 `"55"', add
label define ke09a_idcattle_lbl 056 `"56"', add
label define ke09a_idcattle_lbl 057 `"57"', add
label define ke09a_idcattle_lbl 058 `"58"', add
label define ke09a_idcattle_lbl 059 `"59"', add
label define ke09a_idcattle_lbl 060 `"60"', add
label define ke09a_idcattle_lbl 061 `"61"', add
label define ke09a_idcattle_lbl 062 `"62"', add
label define ke09a_idcattle_lbl 063 `"63"', add
label define ke09a_idcattle_lbl 064 `"64"', add
label define ke09a_idcattle_lbl 065 `"65"', add
label define ke09a_idcattle_lbl 066 `"66"', add
label define ke09a_idcattle_lbl 067 `"67"', add
label define ke09a_idcattle_lbl 068 `"68"', add
label define ke09a_idcattle_lbl 069 `"69"', add
label define ke09a_idcattle_lbl 070 `"70"', add
label define ke09a_idcattle_lbl 071 `"71"', add
label define ke09a_idcattle_lbl 072 `"72"', add
label define ke09a_idcattle_lbl 073 `"73"', add
label define ke09a_idcattle_lbl 074 `"74"', add
label define ke09a_idcattle_lbl 075 `"75"', add
label define ke09a_idcattle_lbl 076 `"76"', add
label define ke09a_idcattle_lbl 077 `"77"', add
label define ke09a_idcattle_lbl 078 `"78"', add
label define ke09a_idcattle_lbl 079 `"79"', add
label define ke09a_idcattle_lbl 080 `"80"', add
label define ke09a_idcattle_lbl 081 `"81"', add
label define ke09a_idcattle_lbl 082 `"82"', add
label define ke09a_idcattle_lbl 083 `"83"', add
label define ke09a_idcattle_lbl 084 `"84"', add
label define ke09a_idcattle_lbl 085 `"85"', add
label define ke09a_idcattle_lbl 086 `"86"', add
label define ke09a_idcattle_lbl 087 `"87"', add
label define ke09a_idcattle_lbl 088 `"88"', add
label define ke09a_idcattle_lbl 089 `"89"', add
label define ke09a_idcattle_lbl 090 `"90"', add
label define ke09a_idcattle_lbl 091 `"91"', add
label define ke09a_idcattle_lbl 092 `"92"', add
label define ke09a_idcattle_lbl 093 `"93"', add
label define ke09a_idcattle_lbl 094 `"94"', add
label define ke09a_idcattle_lbl 095 `"95"', add
label define ke09a_idcattle_lbl 096 `"96"', add
label define ke09a_idcattle_lbl 097 `"97"', add
label define ke09a_idcattle_lbl 098 `"98"', add
label define ke09a_idcattle_lbl 099 `"99"', add
label define ke09a_idcattle_lbl 100 `"100"', add
label define ke09a_idcattle_lbl 101 `"101"', add
label define ke09a_idcattle_lbl 102 `"102"', add
label define ke09a_idcattle_lbl 103 `"103"', add
label define ke09a_idcattle_lbl 104 `"104"', add
label define ke09a_idcattle_lbl 105 `"105"', add
label define ke09a_idcattle_lbl 106 `"106"', add
label define ke09a_idcattle_lbl 107 `"107"', add
label define ke09a_idcattle_lbl 108 `"108"', add
label define ke09a_idcattle_lbl 109 `"109"', add
label define ke09a_idcattle_lbl 110 `"110"', add
label define ke09a_idcattle_lbl 111 `"111"', add
label define ke09a_idcattle_lbl 112 `"112"', add
label define ke09a_idcattle_lbl 113 `"113"', add
label define ke09a_idcattle_lbl 114 `"114"', add
label define ke09a_idcattle_lbl 115 `"115"', add
label define ke09a_idcattle_lbl 116 `"116"', add
label define ke09a_idcattle_lbl 117 `"117"', add
label define ke09a_idcattle_lbl 118 `"118"', add
label define ke09a_idcattle_lbl 119 `"119"', add
label define ke09a_idcattle_lbl 120 `"120"', add
label define ke09a_idcattle_lbl 121 `"121"', add
label define ke09a_idcattle_lbl 122 `"122"', add
label define ke09a_idcattle_lbl 123 `"123"', add
label define ke09a_idcattle_lbl 124 `"124"', add
label define ke09a_idcattle_lbl 125 `"125"', add
label define ke09a_idcattle_lbl 126 `"126"', add
label define ke09a_idcattle_lbl 127 `"127"', add
label define ke09a_idcattle_lbl 128 `"128"', add
label define ke09a_idcattle_lbl 129 `"129"', add
label define ke09a_idcattle_lbl 130 `"130"', add
label define ke09a_idcattle_lbl 131 `"131"', add
label define ke09a_idcattle_lbl 133 `"133"', add
label define ke09a_idcattle_lbl 135 `"135"', add
label define ke09a_idcattle_lbl 136 `"136"', add
label define ke09a_idcattle_lbl 137 `"137"', add
label define ke09a_idcattle_lbl 138 `"138"', add
label define ke09a_idcattle_lbl 139 `"139"', add
label define ke09a_idcattle_lbl 140 `"140"', add
label define ke09a_idcattle_lbl 141 `"141"', add
label define ke09a_idcattle_lbl 142 `"142"', add
label define ke09a_idcattle_lbl 143 `"143"', add
label define ke09a_idcattle_lbl 144 `"144"', add
label define ke09a_idcattle_lbl 145 `"145"', add
label define ke09a_idcattle_lbl 146 `"146"', add
label define ke09a_idcattle_lbl 147 `"147"', add
label define ke09a_idcattle_lbl 148 `"148"', add
label define ke09a_idcattle_lbl 149 `"149"', add
label define ke09a_idcattle_lbl 150 `"150"', add
label define ke09a_idcattle_lbl 151 `"151"', add
label define ke09a_idcattle_lbl 152 `"152"', add
label define ke09a_idcattle_lbl 153 `"153"', add
label define ke09a_idcattle_lbl 155 `"155"', add
label define ke09a_idcattle_lbl 156 `"156"', add
label define ke09a_idcattle_lbl 157 `"157"', add
label define ke09a_idcattle_lbl 158 `"158"', add
label define ke09a_idcattle_lbl 159 `"159"', add
label define ke09a_idcattle_lbl 160 `"160"', add
label define ke09a_idcattle_lbl 161 `"161"', add
label define ke09a_idcattle_lbl 162 `"162"', add
label define ke09a_idcattle_lbl 163 `"163"', add
label define ke09a_idcattle_lbl 164 `"164"', add
label define ke09a_idcattle_lbl 165 `"165"', add
label define ke09a_idcattle_lbl 168 `"168"', add
label define ke09a_idcattle_lbl 169 `"169"', add
label define ke09a_idcattle_lbl 170 `"170"', add
label define ke09a_idcattle_lbl 171 `"171"', add
label define ke09a_idcattle_lbl 172 `"172"', add
label define ke09a_idcattle_lbl 173 `"173"', add
label define ke09a_idcattle_lbl 174 `"174"', add
label define ke09a_idcattle_lbl 175 `"175"', add
label define ke09a_idcattle_lbl 177 `"177"', add
label define ke09a_idcattle_lbl 178 `"178"', add
label define ke09a_idcattle_lbl 179 `"179"', add
label define ke09a_idcattle_lbl 180 `"180"', add
label define ke09a_idcattle_lbl 181 `"181"', add
label define ke09a_idcattle_lbl 182 `"182"', add
label define ke09a_idcattle_lbl 185 `"185"', add
label define ke09a_idcattle_lbl 186 `"186"', add
label define ke09a_idcattle_lbl 187 `"187"', add
label define ke09a_idcattle_lbl 188 `"188"', add
label define ke09a_idcattle_lbl 189 `"189"', add
label define ke09a_idcattle_lbl 190 `"190"', add
label define ke09a_idcattle_lbl 192 `"192"', add
label define ke09a_idcattle_lbl 194 `"194"', add
label define ke09a_idcattle_lbl 195 `"195"', add
label define ke09a_idcattle_lbl 196 `"196"', add
label define ke09a_idcattle_lbl 197 `"197"', add
label define ke09a_idcattle_lbl 198 `"198"', add
label define ke09a_idcattle_lbl 199 `"199"', add
label define ke09a_idcattle_lbl 200 `"200"', add
label define ke09a_idcattle_lbl 201 `"201"', add
label define ke09a_idcattle_lbl 202 `"202"', add
label define ke09a_idcattle_lbl 204 `"204"', add
label define ke09a_idcattle_lbl 205 `"205"', add
label define ke09a_idcattle_lbl 206 `"206"', add
label define ke09a_idcattle_lbl 207 `"207"', add
label define ke09a_idcattle_lbl 208 `"208"', add
label define ke09a_idcattle_lbl 209 `"209"', add
label define ke09a_idcattle_lbl 210 `"210"', add
label define ke09a_idcattle_lbl 211 `"211"', add
label define ke09a_idcattle_lbl 212 `"212"', add
label define ke09a_idcattle_lbl 213 `"213"', add
label define ke09a_idcattle_lbl 214 `"214"', add
label define ke09a_idcattle_lbl 215 `"215"', add
label define ke09a_idcattle_lbl 216 `"216"', add
label define ke09a_idcattle_lbl 217 `"217"', add
label define ke09a_idcattle_lbl 218 `"218"', add
label define ke09a_idcattle_lbl 219 `"219"', add
label define ke09a_idcattle_lbl 220 `"220"', add
label define ke09a_idcattle_lbl 222 `"222"', add
label define ke09a_idcattle_lbl 223 `"223"', add
label define ke09a_idcattle_lbl 227 `"227"', add
label define ke09a_idcattle_lbl 228 `"228"', add
label define ke09a_idcattle_lbl 230 `"230"', add
label define ke09a_idcattle_lbl 231 `"231"', add
label define ke09a_idcattle_lbl 233 `"233"', add
label define ke09a_idcattle_lbl 236 `"236"', add
label define ke09a_idcattle_lbl 240 `"240"', add
label define ke09a_idcattle_lbl 242 `"242"', add
label define ke09a_idcattle_lbl 246 `"246"', add
label define ke09a_idcattle_lbl 250 `"250"', add
label define ke09a_idcattle_lbl 252 `"252"', add
label define ke09a_idcattle_lbl 257 `"257"', add
label define ke09a_idcattle_lbl 258 `"258"', add
label define ke09a_idcattle_lbl 260 `"260"', add
label define ke09a_idcattle_lbl 262 `"262"', add
label define ke09a_idcattle_lbl 264 `"264"', add
label define ke09a_idcattle_lbl 269 `"269"', add
label define ke09a_idcattle_lbl 270 `"270"', add
label define ke09a_idcattle_lbl 272 `"272"', add
label define ke09a_idcattle_lbl 278 `"278"', add
label define ke09a_idcattle_lbl 280 `"280"', add
label define ke09a_idcattle_lbl 283 `"283"', add
label define ke09a_idcattle_lbl 284 `"284"', add
label define ke09a_idcattle_lbl 286 `"286"', add
label define ke09a_idcattle_lbl 290 `"290"', add
label define ke09a_idcattle_lbl 294 `"294"', add
label define ke09a_idcattle_lbl 296 `"296"', add
label define ke09a_idcattle_lbl 300 `"300"', add
label define ke09a_idcattle_lbl 301 `"301"', add
label define ke09a_idcattle_lbl 303 `"303"', add
label define ke09a_idcattle_lbl 310 `"310"', add
label define ke09a_idcattle_lbl 311 `"311"', add
label define ke09a_idcattle_lbl 312 `"312"', add
label define ke09a_idcattle_lbl 315 `"315"', add
label define ke09a_idcattle_lbl 316 `"316"', add
label define ke09a_idcattle_lbl 320 `"320"', add
label define ke09a_idcattle_lbl 321 `"321"', add
label define ke09a_idcattle_lbl 322 `"322"', add
label define ke09a_idcattle_lbl 324 `"324"', add
label define ke09a_idcattle_lbl 326 `"326"', add
label define ke09a_idcattle_lbl 328 `"328"', add
label define ke09a_idcattle_lbl 330 `"330"', add
label define ke09a_idcattle_lbl 334 `"334"', add
label define ke09a_idcattle_lbl 340 `"340"', add
label define ke09a_idcattle_lbl 341 `"341"', add
label define ke09a_idcattle_lbl 344 `"344"', add
label define ke09a_idcattle_lbl 345 `"345"', add
label define ke09a_idcattle_lbl 350 `"350"', add
label define ke09a_idcattle_lbl 351 `"351"', add
label define ke09a_idcattle_lbl 355 `"355"', add
label define ke09a_idcattle_lbl 360 `"360"', add
label define ke09a_idcattle_lbl 361 `"361"', add
label define ke09a_idcattle_lbl 362 `"362"', add
label define ke09a_idcattle_lbl 370 `"370"', add
label define ke09a_idcattle_lbl 375 `"375"', add
label define ke09a_idcattle_lbl 390 `"390"', add
label define ke09a_idcattle_lbl 400 `"400+"', add
label values ke09a_idcattle ke09a_idcattle_lbl

label define ke09a_sheep_lbl 000 `"0"'
label define ke09a_sheep_lbl 001 `"1"', add
label define ke09a_sheep_lbl 002 `"2"', add
label define ke09a_sheep_lbl 003 `"3"', add
label define ke09a_sheep_lbl 004 `"4"', add
label define ke09a_sheep_lbl 005 `"5"', add
label define ke09a_sheep_lbl 006 `"6"', add
label define ke09a_sheep_lbl 007 `"7"', add
label define ke09a_sheep_lbl 008 `"8"', add
label define ke09a_sheep_lbl 009 `"9"', add
label define ke09a_sheep_lbl 010 `"10"', add
label define ke09a_sheep_lbl 011 `"11"', add
label define ke09a_sheep_lbl 012 `"12"', add
label define ke09a_sheep_lbl 013 `"13"', add
label define ke09a_sheep_lbl 014 `"14"', add
label define ke09a_sheep_lbl 015 `"15"', add
label define ke09a_sheep_lbl 016 `"16"', add
label define ke09a_sheep_lbl 017 `"17"', add
label define ke09a_sheep_lbl 018 `"18"', add
label define ke09a_sheep_lbl 019 `"19"', add
label define ke09a_sheep_lbl 020 `"20"', add
label define ke09a_sheep_lbl 021 `"21"', add
label define ke09a_sheep_lbl 022 `"22"', add
label define ke09a_sheep_lbl 023 `"23"', add
label define ke09a_sheep_lbl 024 `"24"', add
label define ke09a_sheep_lbl 025 `"25"', add
label define ke09a_sheep_lbl 026 `"26"', add
label define ke09a_sheep_lbl 027 `"27"', add
label define ke09a_sheep_lbl 028 `"28"', add
label define ke09a_sheep_lbl 029 `"29"', add
label define ke09a_sheep_lbl 030 `"30"', add
label define ke09a_sheep_lbl 031 `"31"', add
label define ke09a_sheep_lbl 032 `"32"', add
label define ke09a_sheep_lbl 033 `"33"', add
label define ke09a_sheep_lbl 034 `"34"', add
label define ke09a_sheep_lbl 035 `"35"', add
label define ke09a_sheep_lbl 036 `"36"', add
label define ke09a_sheep_lbl 037 `"37"', add
label define ke09a_sheep_lbl 038 `"38"', add
label define ke09a_sheep_lbl 039 `"39"', add
label define ke09a_sheep_lbl 040 `"40"', add
label define ke09a_sheep_lbl 041 `"41"', add
label define ke09a_sheep_lbl 042 `"42"', add
label define ke09a_sheep_lbl 043 `"43"', add
label define ke09a_sheep_lbl 044 `"44"', add
label define ke09a_sheep_lbl 045 `"45"', add
label define ke09a_sheep_lbl 046 `"46"', add
label define ke09a_sheep_lbl 047 `"47"', add
label define ke09a_sheep_lbl 048 `"48"', add
label define ke09a_sheep_lbl 049 `"49"', add
label define ke09a_sheep_lbl 050 `"50"', add
label define ke09a_sheep_lbl 051 `"51"', add
label define ke09a_sheep_lbl 052 `"52"', add
label define ke09a_sheep_lbl 053 `"53"', add
label define ke09a_sheep_lbl 054 `"54"', add
label define ke09a_sheep_lbl 055 `"55"', add
label define ke09a_sheep_lbl 056 `"56"', add
label define ke09a_sheep_lbl 057 `"57"', add
label define ke09a_sheep_lbl 058 `"58"', add
label define ke09a_sheep_lbl 059 `"59"', add
label define ke09a_sheep_lbl 060 `"60"', add
label define ke09a_sheep_lbl 061 `"61"', add
label define ke09a_sheep_lbl 062 `"62"', add
label define ke09a_sheep_lbl 063 `"63"', add
label define ke09a_sheep_lbl 064 `"64"', add
label define ke09a_sheep_lbl 065 `"65"', add
label define ke09a_sheep_lbl 066 `"66"', add
label define ke09a_sheep_lbl 067 `"67"', add
label define ke09a_sheep_lbl 068 `"68"', add
label define ke09a_sheep_lbl 069 `"69"', add
label define ke09a_sheep_lbl 070 `"70"', add
label define ke09a_sheep_lbl 071 `"71"', add
label define ke09a_sheep_lbl 072 `"72"', add
label define ke09a_sheep_lbl 073 `"73"', add
label define ke09a_sheep_lbl 074 `"74"', add
label define ke09a_sheep_lbl 075 `"75"', add
label define ke09a_sheep_lbl 076 `"76"', add
label define ke09a_sheep_lbl 077 `"77"', add
label define ke09a_sheep_lbl 078 `"78"', add
label define ke09a_sheep_lbl 079 `"79"', add
label define ke09a_sheep_lbl 080 `"80"', add
label define ke09a_sheep_lbl 081 `"81"', add
label define ke09a_sheep_lbl 082 `"82"', add
label define ke09a_sheep_lbl 083 `"83"', add
label define ke09a_sheep_lbl 084 `"84"', add
label define ke09a_sheep_lbl 085 `"85"', add
label define ke09a_sheep_lbl 086 `"86"', add
label define ke09a_sheep_lbl 087 `"87"', add
label define ke09a_sheep_lbl 088 `"88"', add
label define ke09a_sheep_lbl 089 `"89"', add
label define ke09a_sheep_lbl 090 `"90"', add
label define ke09a_sheep_lbl 091 `"91"', add
label define ke09a_sheep_lbl 092 `"92"', add
label define ke09a_sheep_lbl 093 `"93"', add
label define ke09a_sheep_lbl 094 `"94"', add
label define ke09a_sheep_lbl 095 `"95"', add
label define ke09a_sheep_lbl 096 `"96"', add
label define ke09a_sheep_lbl 097 `"97"', add
label define ke09a_sheep_lbl 098 `"98"', add
label define ke09a_sheep_lbl 099 `"99"', add
label define ke09a_sheep_lbl 100 `"100"', add
label define ke09a_sheep_lbl 101 `"101"', add
label define ke09a_sheep_lbl 102 `"102"', add
label define ke09a_sheep_lbl 103 `"103"', add
label define ke09a_sheep_lbl 104 `"104"', add
label define ke09a_sheep_lbl 105 `"105"', add
label define ke09a_sheep_lbl 106 `"106"', add
label define ke09a_sheep_lbl 107 `"107"', add
label define ke09a_sheep_lbl 108 `"108"', add
label define ke09a_sheep_lbl 109 `"109"', add
label define ke09a_sheep_lbl 110 `"110"', add
label define ke09a_sheep_lbl 111 `"111"', add
label define ke09a_sheep_lbl 112 `"112"', add
label define ke09a_sheep_lbl 113 `"113"', add
label define ke09a_sheep_lbl 114 `"114"', add
label define ke09a_sheep_lbl 115 `"115"', add
label define ke09a_sheep_lbl 116 `"116"', add
label define ke09a_sheep_lbl 117 `"117"', add
label define ke09a_sheep_lbl 118 `"118"', add
label define ke09a_sheep_lbl 119 `"119"', add
label define ke09a_sheep_lbl 120 `"120"', add
label define ke09a_sheep_lbl 121 `"121"', add
label define ke09a_sheep_lbl 122 `"122"', add
label define ke09a_sheep_lbl 123 `"123"', add
label define ke09a_sheep_lbl 124 `"124"', add
label define ke09a_sheep_lbl 125 `"125"', add
label define ke09a_sheep_lbl 126 `"126"', add
label define ke09a_sheep_lbl 127 `"127"', add
label define ke09a_sheep_lbl 128 `"128"', add
label define ke09a_sheep_lbl 129 `"129"', add
label define ke09a_sheep_lbl 130 `"130"', add
label define ke09a_sheep_lbl 131 `"131"', add
label define ke09a_sheep_lbl 132 `"132"', add
label define ke09a_sheep_lbl 133 `"133"', add
label define ke09a_sheep_lbl 134 `"134"', add
label define ke09a_sheep_lbl 135 `"135"', add
label define ke09a_sheep_lbl 136 `"136"', add
label define ke09a_sheep_lbl 137 `"137"', add
label define ke09a_sheep_lbl 138 `"138"', add
label define ke09a_sheep_lbl 139 `"139"', add
label define ke09a_sheep_lbl 140 `"140"', add
label define ke09a_sheep_lbl 141 `"141"', add
label define ke09a_sheep_lbl 142 `"142"', add
label define ke09a_sheep_lbl 143 `"143"', add
label define ke09a_sheep_lbl 144 `"144"', add
label define ke09a_sheep_lbl 145 `"145"', add
label define ke09a_sheep_lbl 146 `"146"', add
label define ke09a_sheep_lbl 147 `"147"', add
label define ke09a_sheep_lbl 148 `"148"', add
label define ke09a_sheep_lbl 149 `"149"', add
label define ke09a_sheep_lbl 150 `"150"', add
label define ke09a_sheep_lbl 151 `"151"', add
label define ke09a_sheep_lbl 152 `"152"', add
label define ke09a_sheep_lbl 153 `"153"', add
label define ke09a_sheep_lbl 154 `"154"', add
label define ke09a_sheep_lbl 155 `"155"', add
label define ke09a_sheep_lbl 156 `"156"', add
label define ke09a_sheep_lbl 157 `"157"', add
label define ke09a_sheep_lbl 158 `"158"', add
label define ke09a_sheep_lbl 160 `"160"', add
label define ke09a_sheep_lbl 161 `"161"', add
label define ke09a_sheep_lbl 162 `"162"', add
label define ke09a_sheep_lbl 163 `"163"', add
label define ke09a_sheep_lbl 164 `"164"', add
label define ke09a_sheep_lbl 165 `"165"', add
label define ke09a_sheep_lbl 166 `"166"', add
label define ke09a_sheep_lbl 167 `"167"', add
label define ke09a_sheep_lbl 168 `"168"', add
label define ke09a_sheep_lbl 169 `"169"', add
label define ke09a_sheep_lbl 170 `"170"', add
label define ke09a_sheep_lbl 171 `"171"', add
label define ke09a_sheep_lbl 172 `"172"', add
label define ke09a_sheep_lbl 173 `"173"', add
label define ke09a_sheep_lbl 174 `"174"', add
label define ke09a_sheep_lbl 175 `"175"', add
label define ke09a_sheep_lbl 176 `"176"', add
label define ke09a_sheep_lbl 177 `"177"', add
label define ke09a_sheep_lbl 178 `"178"', add
label define ke09a_sheep_lbl 179 `"179"', add
label define ke09a_sheep_lbl 180 `"180"', add
label define ke09a_sheep_lbl 181 `"181"', add
label define ke09a_sheep_lbl 182 `"182"', add
label define ke09a_sheep_lbl 183 `"183"', add
label define ke09a_sheep_lbl 184 `"184"', add
label define ke09a_sheep_lbl 185 `"185"', add
label define ke09a_sheep_lbl 186 `"186"', add
label define ke09a_sheep_lbl 187 `"187"', add
label define ke09a_sheep_lbl 188 `"188"', add
label define ke09a_sheep_lbl 189 `"189"', add
label define ke09a_sheep_lbl 190 `"190"', add
label define ke09a_sheep_lbl 191 `"191"', add
label define ke09a_sheep_lbl 195 `"195"', add
label define ke09a_sheep_lbl 197 `"197"', add
label define ke09a_sheep_lbl 198 `"198"', add
label define ke09a_sheep_lbl 200 `"200"', add
label define ke09a_sheep_lbl 201 `"201"', add
label define ke09a_sheep_lbl 203 `"203"', add
label define ke09a_sheep_lbl 204 `"204"', add
label define ke09a_sheep_lbl 205 `"205"', add
label define ke09a_sheep_lbl 207 `"207"', add
label define ke09a_sheep_lbl 208 `"208"', add
label define ke09a_sheep_lbl 209 `"209"', add
label define ke09a_sheep_lbl 210 `"210"', add
label define ke09a_sheep_lbl 211 `"211"', add
label define ke09a_sheep_lbl 212 `"212"', add
label define ke09a_sheep_lbl 213 `"213"', add
label define ke09a_sheep_lbl 214 `"214"', add
label define ke09a_sheep_lbl 215 `"215"', add
label define ke09a_sheep_lbl 216 `"216"', add
label define ke09a_sheep_lbl 217 `"217"', add
label define ke09a_sheep_lbl 218 `"218"', add
label define ke09a_sheep_lbl 219 `"219"', add
label define ke09a_sheep_lbl 220 `"220"', add
label define ke09a_sheep_lbl 221 `"221"', add
label define ke09a_sheep_lbl 222 `"222"', add
label define ke09a_sheep_lbl 223 `"223"', add
label define ke09a_sheep_lbl 224 `"224"', add
label define ke09a_sheep_lbl 226 `"226"', add
label define ke09a_sheep_lbl 228 `"228"', add
label define ke09a_sheep_lbl 230 `"230"', add
label define ke09a_sheep_lbl 231 `"231"', add
label define ke09a_sheep_lbl 235 `"235"', add
label define ke09a_sheep_lbl 236 `"236"', add
label define ke09a_sheep_lbl 237 `"237"', add
label define ke09a_sheep_lbl 238 `"238"', add
label define ke09a_sheep_lbl 239 `"239"', add
label define ke09a_sheep_lbl 240 `"240"', add
label define ke09a_sheep_lbl 241 `"241"', add
label define ke09a_sheep_lbl 242 `"242"', add
label define ke09a_sheep_lbl 243 `"243"', add
label define ke09a_sheep_lbl 245 `"245"', add
label define ke09a_sheep_lbl 246 `"246"', add
label define ke09a_sheep_lbl 248 `"248"', add
label define ke09a_sheep_lbl 249 `"249"', add
label define ke09a_sheep_lbl 250 `"250"', add
label define ke09a_sheep_lbl 251 `"251"', add
label define ke09a_sheep_lbl 253 `"253"', add
label define ke09a_sheep_lbl 256 `"256"', add
label define ke09a_sheep_lbl 259 `"259"', add
label define ke09a_sheep_lbl 260 `"260"', add
label define ke09a_sheep_lbl 263 `"263"', add
label define ke09a_sheep_lbl 265 `"265"', add
label define ke09a_sheep_lbl 266 `"266"', add
label define ke09a_sheep_lbl 270 `"270"', add
label define ke09a_sheep_lbl 272 `"272"', add
label define ke09a_sheep_lbl 273 `"273"', add
label define ke09a_sheep_lbl 274 `"274"', add
label define ke09a_sheep_lbl 275 `"275"', add
label define ke09a_sheep_lbl 276 `"276"', add
label define ke09a_sheep_lbl 280 `"280"', add
label define ke09a_sheep_lbl 281 `"281"', add
label define ke09a_sheep_lbl 283 `"283"', add
label define ke09a_sheep_lbl 286 `"286"', add
label define ke09a_sheep_lbl 289 `"289"', add
label define ke09a_sheep_lbl 290 `"290"', add
label define ke09a_sheep_lbl 292 `"292"', add
label define ke09a_sheep_lbl 294 `"294"', add
label define ke09a_sheep_lbl 298 `"298"', add
label define ke09a_sheep_lbl 299 `"299"', add
label define ke09a_sheep_lbl 300 `"300"', add
label define ke09a_sheep_lbl 302 `"302"', add
label define ke09a_sheep_lbl 303 `"303"', add
label define ke09a_sheep_lbl 310 `"310"', add
label define ke09a_sheep_lbl 311 `"311"', add
label define ke09a_sheep_lbl 313 `"313"', add
label define ke09a_sheep_lbl 314 `"314"', add
label define ke09a_sheep_lbl 315 `"315"', add
label define ke09a_sheep_lbl 320 `"320"', add
label define ke09a_sheep_lbl 321 `"321"', add
label define ke09a_sheep_lbl 323 `"323"', add
label define ke09a_sheep_lbl 326 `"326"', add
label define ke09a_sheep_lbl 327 `"327"', add
label define ke09a_sheep_lbl 328 `"328"', add
label define ke09a_sheep_lbl 329 `"329"', add
label define ke09a_sheep_lbl 330 `"330"', add
label define ke09a_sheep_lbl 335 `"335"', add
label define ke09a_sheep_lbl 339 `"339"', add
label define ke09a_sheep_lbl 340 `"340"', add
label define ke09a_sheep_lbl 349 `"349"', add
label define ke09a_sheep_lbl 350 `"350"', add
label define ke09a_sheep_lbl 360 `"360"', add
label define ke09a_sheep_lbl 362 `"362"', add
label define ke09a_sheep_lbl 370 `"370"', add
label define ke09a_sheep_lbl 371 `"371"', add
label define ke09a_sheep_lbl 380 `"380"', add
label define ke09a_sheep_lbl 385 `"385"', add
label define ke09a_sheep_lbl 387 `"387"', add
label define ke09a_sheep_lbl 390 `"390"', add
label define ke09a_sheep_lbl 392 `"392"', add
label define ke09a_sheep_lbl 396 `"396"', add
label define ke09a_sheep_lbl 399 `"399"', add
label define ke09a_sheep_lbl 400 `"400+"', add
label values ke09a_sheep ke09a_sheep_lbl

label define ke09a_goats_lbl 000 `"0"'
label define ke09a_goats_lbl 001 `"1"', add
label define ke09a_goats_lbl 002 `"2"', add
label define ke09a_goats_lbl 003 `"3"', add
label define ke09a_goats_lbl 004 `"4"', add
label define ke09a_goats_lbl 005 `"5"', add
label define ke09a_goats_lbl 006 `"6"', add
label define ke09a_goats_lbl 007 `"7"', add
label define ke09a_goats_lbl 008 `"8"', add
label define ke09a_goats_lbl 009 `"9"', add
label define ke09a_goats_lbl 010 `"10"', add
label define ke09a_goats_lbl 011 `"11"', add
label define ke09a_goats_lbl 012 `"12"', add
label define ke09a_goats_lbl 013 `"13"', add
label define ke09a_goats_lbl 014 `"14"', add
label define ke09a_goats_lbl 015 `"15"', add
label define ke09a_goats_lbl 016 `"16"', add
label define ke09a_goats_lbl 017 `"17"', add
label define ke09a_goats_lbl 018 `"18"', add
label define ke09a_goats_lbl 019 `"19"', add
label define ke09a_goats_lbl 020 `"20"', add
label define ke09a_goats_lbl 021 `"21"', add
label define ke09a_goats_lbl 022 `"22"', add
label define ke09a_goats_lbl 023 `"23"', add
label define ke09a_goats_lbl 024 `"24"', add
label define ke09a_goats_lbl 025 `"25"', add
label define ke09a_goats_lbl 026 `"26"', add
label define ke09a_goats_lbl 027 `"27"', add
label define ke09a_goats_lbl 028 `"28"', add
label define ke09a_goats_lbl 029 `"29"', add
label define ke09a_goats_lbl 030 `"30"', add
label define ke09a_goats_lbl 031 `"31"', add
label define ke09a_goats_lbl 032 `"32"', add
label define ke09a_goats_lbl 033 `"33"', add
label define ke09a_goats_lbl 034 `"34"', add
label define ke09a_goats_lbl 035 `"35"', add
label define ke09a_goats_lbl 036 `"36"', add
label define ke09a_goats_lbl 037 `"37"', add
label define ke09a_goats_lbl 038 `"38"', add
label define ke09a_goats_lbl 039 `"39"', add
label define ke09a_goats_lbl 040 `"40"', add
label define ke09a_goats_lbl 041 `"41"', add
label define ke09a_goats_lbl 042 `"42"', add
label define ke09a_goats_lbl 043 `"43"', add
label define ke09a_goats_lbl 044 `"44"', add
label define ke09a_goats_lbl 045 `"45"', add
label define ke09a_goats_lbl 046 `"46"', add
label define ke09a_goats_lbl 047 `"47"', add
label define ke09a_goats_lbl 048 `"48"', add
label define ke09a_goats_lbl 049 `"49"', add
label define ke09a_goats_lbl 050 `"50"', add
label define ke09a_goats_lbl 051 `"51"', add
label define ke09a_goats_lbl 052 `"52"', add
label define ke09a_goats_lbl 053 `"53"', add
label define ke09a_goats_lbl 054 `"54"', add
label define ke09a_goats_lbl 055 `"55"', add
label define ke09a_goats_lbl 056 `"56"', add
label define ke09a_goats_lbl 057 `"57"', add
label define ke09a_goats_lbl 058 `"58"', add
label define ke09a_goats_lbl 059 `"59"', add
label define ke09a_goats_lbl 060 `"60"', add
label define ke09a_goats_lbl 061 `"61"', add
label define ke09a_goats_lbl 062 `"62"', add
label define ke09a_goats_lbl 063 `"63"', add
label define ke09a_goats_lbl 064 `"64"', add
label define ke09a_goats_lbl 065 `"65"', add
label define ke09a_goats_lbl 066 `"66"', add
label define ke09a_goats_lbl 067 `"67"', add
label define ke09a_goats_lbl 068 `"68"', add
label define ke09a_goats_lbl 069 `"69"', add
label define ke09a_goats_lbl 070 `"70"', add
label define ke09a_goats_lbl 071 `"71"', add
label define ke09a_goats_lbl 072 `"72"', add
label define ke09a_goats_lbl 073 `"73"', add
label define ke09a_goats_lbl 074 `"74"', add
label define ke09a_goats_lbl 075 `"75"', add
label define ke09a_goats_lbl 076 `"76"', add
label define ke09a_goats_lbl 077 `"77"', add
label define ke09a_goats_lbl 078 `"78"', add
label define ke09a_goats_lbl 079 `"79"', add
label define ke09a_goats_lbl 080 `"80"', add
label define ke09a_goats_lbl 081 `"81"', add
label define ke09a_goats_lbl 082 `"82"', add
label define ke09a_goats_lbl 083 `"83"', add
label define ke09a_goats_lbl 084 `"84"', add
label define ke09a_goats_lbl 085 `"85"', add
label define ke09a_goats_lbl 086 `"86"', add
label define ke09a_goats_lbl 087 `"87"', add
label define ke09a_goats_lbl 088 `"88"', add
label define ke09a_goats_lbl 089 `"89"', add
label define ke09a_goats_lbl 090 `"90"', add
label define ke09a_goats_lbl 091 `"91"', add
label define ke09a_goats_lbl 092 `"92"', add
label define ke09a_goats_lbl 093 `"93"', add
label define ke09a_goats_lbl 094 `"94"', add
label define ke09a_goats_lbl 095 `"95"', add
label define ke09a_goats_lbl 096 `"96"', add
label define ke09a_goats_lbl 097 `"97"', add
label define ke09a_goats_lbl 098 `"98"', add
label define ke09a_goats_lbl 099 `"99"', add
label define ke09a_goats_lbl 100 `"100"', add
label define ke09a_goats_lbl 101 `"101"', add
label define ke09a_goats_lbl 102 `"102"', add
label define ke09a_goats_lbl 103 `"103"', add
label define ke09a_goats_lbl 104 `"104"', add
label define ke09a_goats_lbl 105 `"105"', add
label define ke09a_goats_lbl 106 `"106"', add
label define ke09a_goats_lbl 107 `"107"', add
label define ke09a_goats_lbl 108 `"108"', add
label define ke09a_goats_lbl 109 `"109"', add
label define ke09a_goats_lbl 110 `"110"', add
label define ke09a_goats_lbl 111 `"111"', add
label define ke09a_goats_lbl 112 `"112"', add
label define ke09a_goats_lbl 113 `"113"', add
label define ke09a_goats_lbl 114 `"114"', add
label define ke09a_goats_lbl 115 `"115"', add
label define ke09a_goats_lbl 116 `"116"', add
label define ke09a_goats_lbl 117 `"117"', add
label define ke09a_goats_lbl 118 `"118"', add
label define ke09a_goats_lbl 119 `"119"', add
label define ke09a_goats_lbl 120 `"120"', add
label define ke09a_goats_lbl 121 `"121"', add
label define ke09a_goats_lbl 122 `"122"', add
label define ke09a_goats_lbl 123 `"123"', add
label define ke09a_goats_lbl 124 `"124"', add
label define ke09a_goats_lbl 125 `"125"', add
label define ke09a_goats_lbl 126 `"126"', add
label define ke09a_goats_lbl 127 `"127"', add
label define ke09a_goats_lbl 128 `"128"', add
label define ke09a_goats_lbl 129 `"129"', add
label define ke09a_goats_lbl 130 `"130"', add
label define ke09a_goats_lbl 131 `"131"', add
label define ke09a_goats_lbl 132 `"132"', add
label define ke09a_goats_lbl 133 `"133"', add
label define ke09a_goats_lbl 134 `"134"', add
label define ke09a_goats_lbl 135 `"135"', add
label define ke09a_goats_lbl 136 `"136"', add
label define ke09a_goats_lbl 137 `"137"', add
label define ke09a_goats_lbl 138 `"138"', add
label define ke09a_goats_lbl 139 `"139"', add
label define ke09a_goats_lbl 140 `"140"', add
label define ke09a_goats_lbl 141 `"141"', add
label define ke09a_goats_lbl 142 `"142"', add
label define ke09a_goats_lbl 143 `"143"', add
label define ke09a_goats_lbl 144 `"144"', add
label define ke09a_goats_lbl 145 `"145"', add
label define ke09a_goats_lbl 146 `"146"', add
label define ke09a_goats_lbl 147 `"147"', add
label define ke09a_goats_lbl 148 `"148"', add
label define ke09a_goats_lbl 149 `"149"', add
label define ke09a_goats_lbl 150 `"150"', add
label define ke09a_goats_lbl 151 `"151"', add
label define ke09a_goats_lbl 152 `"152"', add
label define ke09a_goats_lbl 153 `"153"', add
label define ke09a_goats_lbl 154 `"154"', add
label define ke09a_goats_lbl 155 `"155"', add
label define ke09a_goats_lbl 156 `"156"', add
label define ke09a_goats_lbl 157 `"157"', add
label define ke09a_goats_lbl 158 `"158"', add
label define ke09a_goats_lbl 159 `"159"', add
label define ke09a_goats_lbl 160 `"160"', add
label define ke09a_goats_lbl 161 `"161"', add
label define ke09a_goats_lbl 162 `"162"', add
label define ke09a_goats_lbl 163 `"163"', add
label define ke09a_goats_lbl 164 `"164"', add
label define ke09a_goats_lbl 165 `"165"', add
label define ke09a_goats_lbl 166 `"166"', add
label define ke09a_goats_lbl 167 `"167"', add
label define ke09a_goats_lbl 168 `"168"', add
label define ke09a_goats_lbl 169 `"169"', add
label define ke09a_goats_lbl 170 `"170"', add
label define ke09a_goats_lbl 171 `"171"', add
label define ke09a_goats_lbl 172 `"172"', add
label define ke09a_goats_lbl 173 `"173"', add
label define ke09a_goats_lbl 174 `"174"', add
label define ke09a_goats_lbl 175 `"175"', add
label define ke09a_goats_lbl 176 `"176"', add
label define ke09a_goats_lbl 177 `"177"', add
label define ke09a_goats_lbl 178 `"178"', add
label define ke09a_goats_lbl 179 `"179"', add
label define ke09a_goats_lbl 180 `"180"', add
label define ke09a_goats_lbl 181 `"181"', add
label define ke09a_goats_lbl 182 `"182"', add
label define ke09a_goats_lbl 183 `"183"', add
label define ke09a_goats_lbl 184 `"184"', add
label define ke09a_goats_lbl 185 `"185"', add
label define ke09a_goats_lbl 186 `"186"', add
label define ke09a_goats_lbl 187 `"187"', add
label define ke09a_goats_lbl 188 `"188"', add
label define ke09a_goats_lbl 189 `"189"', add
label define ke09a_goats_lbl 190 `"190"', add
label define ke09a_goats_lbl 191 `"191"', add
label define ke09a_goats_lbl 192 `"192"', add
label define ke09a_goats_lbl 193 `"193"', add
label define ke09a_goats_lbl 194 `"194"', add
label define ke09a_goats_lbl 195 `"195"', add
label define ke09a_goats_lbl 196 `"196"', add
label define ke09a_goats_lbl 197 `"197"', add
label define ke09a_goats_lbl 198 `"198"', add
label define ke09a_goats_lbl 199 `"199"', add
label define ke09a_goats_lbl 200 `"200"', add
label define ke09a_goats_lbl 201 `"201"', add
label define ke09a_goats_lbl 202 `"202"', add
label define ke09a_goats_lbl 203 `"203"', add
label define ke09a_goats_lbl 204 `"204"', add
label define ke09a_goats_lbl 205 `"205"', add
label define ke09a_goats_lbl 206 `"206"', add
label define ke09a_goats_lbl 207 `"207"', add
label define ke09a_goats_lbl 208 `"208"', add
label define ke09a_goats_lbl 209 `"209"', add
label define ke09a_goats_lbl 210 `"210"', add
label define ke09a_goats_lbl 211 `"211"', add
label define ke09a_goats_lbl 212 `"212"', add
label define ke09a_goats_lbl 213 `"213"', add
label define ke09a_goats_lbl 214 `"214"', add
label define ke09a_goats_lbl 215 `"215"', add
label define ke09a_goats_lbl 216 `"216"', add
label define ke09a_goats_lbl 217 `"217"', add
label define ke09a_goats_lbl 218 `"218"', add
label define ke09a_goats_lbl 219 `"219"', add
label define ke09a_goats_lbl 220 `"220"', add
label define ke09a_goats_lbl 221 `"221"', add
label define ke09a_goats_lbl 222 `"222"', add
label define ke09a_goats_lbl 225 `"225"', add
label define ke09a_goats_lbl 226 `"226"', add
label define ke09a_goats_lbl 228 `"228"', add
label define ke09a_goats_lbl 230 `"230"', add
label define ke09a_goats_lbl 231 `"231"', add
label define ke09a_goats_lbl 232 `"232"', add
label define ke09a_goats_lbl 233 `"233"', add
label define ke09a_goats_lbl 234 `"234"', add
label define ke09a_goats_lbl 235 `"235"', add
label define ke09a_goats_lbl 236 `"236"', add
label define ke09a_goats_lbl 237 `"237"', add
label define ke09a_goats_lbl 238 `"238"', add
label define ke09a_goats_lbl 240 `"240"', add
label define ke09a_goats_lbl 241 `"241"', add
label define ke09a_goats_lbl 242 `"242"', add
label define ke09a_goats_lbl 243 `"243"', add
label define ke09a_goats_lbl 245 `"245"', add
label define ke09a_goats_lbl 246 `"246"', add
label define ke09a_goats_lbl 247 `"247"', add
label define ke09a_goats_lbl 248 `"248"', add
label define ke09a_goats_lbl 250 `"250"', add
label define ke09a_goats_lbl 251 `"251"', add
label define ke09a_goats_lbl 252 `"252"', add
label define ke09a_goats_lbl 253 `"253"', add
label define ke09a_goats_lbl 254 `"254"', add
label define ke09a_goats_lbl 255 `"255"', add
label define ke09a_goats_lbl 256 `"256"', add
label define ke09a_goats_lbl 257 `"257"', add
label define ke09a_goats_lbl 258 `"258"', add
label define ke09a_goats_lbl 260 `"260"', add
label define ke09a_goats_lbl 261 `"261"', add
label define ke09a_goats_lbl 262 `"262"', add
label define ke09a_goats_lbl 264 `"264"', add
label define ke09a_goats_lbl 267 `"267"', add
label define ke09a_goats_lbl 268 `"268"', add
label define ke09a_goats_lbl 270 `"270"', add
label define ke09a_goats_lbl 271 `"271"', add
label define ke09a_goats_lbl 272 `"272"', add
label define ke09a_goats_lbl 273 `"273"', add
label define ke09a_goats_lbl 274 `"274"', add
label define ke09a_goats_lbl 275 `"275"', add
label define ke09a_goats_lbl 276 `"276"', add
label define ke09a_goats_lbl 280 `"280"', add
label define ke09a_goats_lbl 281 `"281"', add
label define ke09a_goats_lbl 282 `"282"', add
label define ke09a_goats_lbl 283 `"283"', add
label define ke09a_goats_lbl 285 `"285"', add
label define ke09a_goats_lbl 288 `"288"', add
label define ke09a_goats_lbl 289 `"289"', add
label define ke09a_goats_lbl 290 `"290"', add
label define ke09a_goats_lbl 291 `"291"', add
label define ke09a_goats_lbl 293 `"293"', add
label define ke09a_goats_lbl 294 `"294"', add
label define ke09a_goats_lbl 296 `"296"', add
label define ke09a_goats_lbl 297 `"297"', add
label define ke09a_goats_lbl 299 `"299"', add
label define ke09a_goats_lbl 300 `"300"', add
label define ke09a_goats_lbl 301 `"301"', add
label define ke09a_goats_lbl 302 `"302"', add
label define ke09a_goats_lbl 303 `"303"', add
label define ke09a_goats_lbl 304 `"304"', add
label define ke09a_goats_lbl 305 `"305"', add
label define ke09a_goats_lbl 306 `"306"', add
label define ke09a_goats_lbl 307 `"307"', add
label define ke09a_goats_lbl 308 `"308"', add
label define ke09a_goats_lbl 309 `"309"', add
label define ke09a_goats_lbl 310 `"310"', add
label define ke09a_goats_lbl 311 `"311"', add
label define ke09a_goats_lbl 312 `"312"', add
label define ke09a_goats_lbl 313 `"313"', add
label define ke09a_goats_lbl 314 `"314"', add
label define ke09a_goats_lbl 315 `"315"', add
label define ke09a_goats_lbl 316 `"316"', add
label define ke09a_goats_lbl 317 `"317"', add
label define ke09a_goats_lbl 319 `"319"', add
label define ke09a_goats_lbl 320 `"320"', add
label define ke09a_goats_lbl 321 `"321"', add
label define ke09a_goats_lbl 322 `"322"', add
label define ke09a_goats_lbl 323 `"323"', add
label define ke09a_goats_lbl 324 `"324"', add
label define ke09a_goats_lbl 325 `"325"', add
label define ke09a_goats_lbl 326 `"326"', add
label define ke09a_goats_lbl 327 `"327"', add
label define ke09a_goats_lbl 329 `"329"', add
label define ke09a_goats_lbl 330 `"330"', add
label define ke09a_goats_lbl 331 `"331"', add
label define ke09a_goats_lbl 332 `"332"', add
label define ke09a_goats_lbl 334 `"334"', add
label define ke09a_goats_lbl 335 `"335"', add
label define ke09a_goats_lbl 336 `"336"', add
label define ke09a_goats_lbl 340 `"340"', add
label define ke09a_goats_lbl 341 `"341"', add
label define ke09a_goats_lbl 342 `"342"', add
label define ke09a_goats_lbl 344 `"344"', add
label define ke09a_goats_lbl 346 `"346"', add
label define ke09a_goats_lbl 347 `"347"', add
label define ke09a_goats_lbl 348 `"348"', add
label define ke09a_goats_lbl 349 `"349"', add
label define ke09a_goats_lbl 350 `"350"', add
label define ke09a_goats_lbl 352 `"352"', add
label define ke09a_goats_lbl 355 `"355"', add
label define ke09a_goats_lbl 356 `"356"', add
label define ke09a_goats_lbl 358 `"358"', add
label define ke09a_goats_lbl 360 `"360"', add
label define ke09a_goats_lbl 362 `"362"', add
label define ke09a_goats_lbl 365 `"365"', add
label define ke09a_goats_lbl 370 `"370"', add
label define ke09a_goats_lbl 371 `"371"', add
label define ke09a_goats_lbl 379 `"379"', add
label define ke09a_goats_lbl 380 `"380"', add
label define ke09a_goats_lbl 386 `"386"', add
label define ke09a_goats_lbl 388 `"388"', add
label define ke09a_goats_lbl 389 `"389"', add
label define ke09a_goats_lbl 390 `"390"', add
label define ke09a_goats_lbl 391 `"391"', add
label define ke09a_goats_lbl 392 `"392"', add
label define ke09a_goats_lbl 397 `"397"', add
label define ke09a_goats_lbl 398 `"398"', add
label define ke09a_goats_lbl 399 `"399"', add
label define ke09a_goats_lbl 400 `"400"', add
label define ke09a_goats_lbl 401 `"401"', add
label define ke09a_goats_lbl 402 `"402"', add
label define ke09a_goats_lbl 405 `"405"', add
label define ke09a_goats_lbl 409 `"409"', add
label define ke09a_goats_lbl 410 `"410"', add
label define ke09a_goats_lbl 411 `"411"', add
label define ke09a_goats_lbl 412 `"412"', add
label define ke09a_goats_lbl 415 `"415"', add
label define ke09a_goats_lbl 416 `"416"', add
label define ke09a_goats_lbl 418 `"418"', add
label define ke09a_goats_lbl 420 `"420"', add
label define ke09a_goats_lbl 421 `"421"', add
label define ke09a_goats_lbl 422 `"422"', add
label define ke09a_goats_lbl 423 `"423"', add
label define ke09a_goats_lbl 426 `"426"', add
label define ke09a_goats_lbl 429 `"429"', add
label define ke09a_goats_lbl 430 `"430"', add
label define ke09a_goats_lbl 432 `"432"', add
label define ke09a_goats_lbl 436 `"436"', add
label define ke09a_goats_lbl 438 `"438"', add
label define ke09a_goats_lbl 440 `"440"', add
label define ke09a_goats_lbl 442 `"442"', add
label define ke09a_goats_lbl 444 `"444"', add
label define ke09a_goats_lbl 445 `"445"', add
label define ke09a_goats_lbl 448 `"448"', add
label define ke09a_goats_lbl 450 `"450"', add
label define ke09a_goats_lbl 455 `"455"', add
label define ke09a_goats_lbl 456 `"456"', add
label define ke09a_goats_lbl 460 `"460"', add
label define ke09a_goats_lbl 463 `"463"', add
label define ke09a_goats_lbl 466 `"466"', add
label define ke09a_goats_lbl 467 `"467"', add
label define ke09a_goats_lbl 470 `"470"', add
label define ke09a_goats_lbl 478 `"478"', add
label define ke09a_goats_lbl 480 `"480"', add
label define ke09a_goats_lbl 482 `"482"', add
label define ke09a_goats_lbl 486 `"486"', add
label define ke09a_goats_lbl 489 `"489"', add
label define ke09a_goats_lbl 490 `"490"', add
label define ke09a_goats_lbl 492 `"492"', add
label define ke09a_goats_lbl 496 `"496"', add
label define ke09a_goats_lbl 500 `"500+"', add
label values ke09a_goats ke09a_goats_lbl

label define ke09a_camels_lbl 000 `"0"'
label define ke09a_camels_lbl 001 `"1"', add
label define ke09a_camels_lbl 002 `"2"', add
label define ke09a_camels_lbl 003 `"3"', add
label define ke09a_camels_lbl 004 `"4"', add
label define ke09a_camels_lbl 005 `"5"', add
label define ke09a_camels_lbl 006 `"6"', add
label define ke09a_camels_lbl 007 `"7"', add
label define ke09a_camels_lbl 008 `"8"', add
label define ke09a_camels_lbl 009 `"9"', add
label define ke09a_camels_lbl 010 `"10"', add
label define ke09a_camels_lbl 011 `"11"', add
label define ke09a_camels_lbl 012 `"12"', add
label define ke09a_camels_lbl 013 `"13"', add
label define ke09a_camels_lbl 014 `"14"', add
label define ke09a_camels_lbl 015 `"15"', add
label define ke09a_camels_lbl 016 `"16"', add
label define ke09a_camels_lbl 017 `"17"', add
label define ke09a_camels_lbl 018 `"18"', add
label define ke09a_camels_lbl 019 `"19"', add
label define ke09a_camels_lbl 020 `"20"', add
label define ke09a_camels_lbl 021 `"21"', add
label define ke09a_camels_lbl 022 `"22"', add
label define ke09a_camels_lbl 023 `"23"', add
label define ke09a_camels_lbl 024 `"24"', add
label define ke09a_camels_lbl 025 `"25"', add
label define ke09a_camels_lbl 026 `"26"', add
label define ke09a_camels_lbl 027 `"27"', add
label define ke09a_camels_lbl 028 `"28"', add
label define ke09a_camels_lbl 029 `"29"', add
label define ke09a_camels_lbl 030 `"30"', add
label define ke09a_camels_lbl 031 `"31"', add
label define ke09a_camels_lbl 032 `"32"', add
label define ke09a_camels_lbl 033 `"33"', add
label define ke09a_camels_lbl 034 `"34"', add
label define ke09a_camels_lbl 035 `"35"', add
label define ke09a_camels_lbl 036 `"36"', add
label define ke09a_camels_lbl 037 `"37"', add
label define ke09a_camels_lbl 038 `"38"', add
label define ke09a_camels_lbl 039 `"39"', add
label define ke09a_camels_lbl 040 `"40"', add
label define ke09a_camels_lbl 041 `"41"', add
label define ke09a_camels_lbl 042 `"42"', add
label define ke09a_camels_lbl 043 `"43"', add
label define ke09a_camels_lbl 044 `"44"', add
label define ke09a_camels_lbl 045 `"45"', add
label define ke09a_camels_lbl 046 `"46"', add
label define ke09a_camels_lbl 047 `"47"', add
label define ke09a_camels_lbl 048 `"48"', add
label define ke09a_camels_lbl 049 `"49"', add
label define ke09a_camels_lbl 050 `"50"', add
label define ke09a_camels_lbl 051 `"51"', add
label define ke09a_camels_lbl 052 `"52"', add
label define ke09a_camels_lbl 053 `"53"', add
label define ke09a_camels_lbl 054 `"54"', add
label define ke09a_camels_lbl 055 `"55"', add
label define ke09a_camels_lbl 056 `"56"', add
label define ke09a_camels_lbl 057 `"57"', add
label define ke09a_camels_lbl 058 `"58"', add
label define ke09a_camels_lbl 059 `"59"', add
label define ke09a_camels_lbl 060 `"60"', add
label define ke09a_camels_lbl 061 `"61"', add
label define ke09a_camels_lbl 062 `"62"', add
label define ke09a_camels_lbl 063 `"63"', add
label define ke09a_camels_lbl 064 `"64"', add
label define ke09a_camels_lbl 065 `"65"', add
label define ke09a_camels_lbl 066 `"66"', add
label define ke09a_camels_lbl 067 `"67"', add
label define ke09a_camels_lbl 068 `"68"', add
label define ke09a_camels_lbl 069 `"69"', add
label define ke09a_camels_lbl 070 `"70"', add
label define ke09a_camels_lbl 071 `"71"', add
label define ke09a_camels_lbl 072 `"72"', add
label define ke09a_camels_lbl 073 `"73"', add
label define ke09a_camels_lbl 074 `"74"', add
label define ke09a_camels_lbl 075 `"75"', add
label define ke09a_camels_lbl 076 `"76"', add
label define ke09a_camels_lbl 077 `"77"', add
label define ke09a_camels_lbl 078 `"78"', add
label define ke09a_camels_lbl 079 `"79"', add
label define ke09a_camels_lbl 080 `"80"', add
label define ke09a_camels_lbl 081 `"81"', add
label define ke09a_camels_lbl 082 `"82"', add
label define ke09a_camels_lbl 083 `"83"', add
label define ke09a_camels_lbl 084 `"84"', add
label define ke09a_camels_lbl 085 `"85"', add
label define ke09a_camels_lbl 086 `"86"', add
label define ke09a_camels_lbl 087 `"87"', add
label define ke09a_camels_lbl 088 `"88"', add
label define ke09a_camels_lbl 089 `"89"', add
label define ke09a_camels_lbl 090 `"90"', add
label define ke09a_camels_lbl 091 `"91"', add
label define ke09a_camels_lbl 092 `"92"', add
label define ke09a_camels_lbl 093 `"93"', add
label define ke09a_camels_lbl 094 `"94"', add
label define ke09a_camels_lbl 095 `"95"', add
label define ke09a_camels_lbl 096 `"96"', add
label define ke09a_camels_lbl 097 `"97"', add
label define ke09a_camels_lbl 098 `"98"', add
label define ke09a_camels_lbl 099 `"99"', add
label define ke09a_camels_lbl 100 `"100+"', add
label values ke09a_camels ke09a_camels_lbl

label define ke09a_donkeys_lbl 00 `"0"'
label define ke09a_donkeys_lbl 01 `"1"', add
label define ke09a_donkeys_lbl 02 `"2"', add
label define ke09a_donkeys_lbl 03 `"3"', add
label define ke09a_donkeys_lbl 04 `"4"', add
label define ke09a_donkeys_lbl 05 `"5"', add
label define ke09a_donkeys_lbl 06 `"6"', add
label define ke09a_donkeys_lbl 07 `"7"', add
label define ke09a_donkeys_lbl 08 `"8"', add
label define ke09a_donkeys_lbl 09 `"9"', add
label define ke09a_donkeys_lbl 10 `"10"', add
label define ke09a_donkeys_lbl 11 `"11"', add
label define ke09a_donkeys_lbl 12 `"12"', add
label define ke09a_donkeys_lbl 13 `"13"', add
label define ke09a_donkeys_lbl 14 `"14"', add
label define ke09a_donkeys_lbl 15 `"15"', add
label define ke09a_donkeys_lbl 16 `"16"', add
label define ke09a_donkeys_lbl 17 `"17"', add
label define ke09a_donkeys_lbl 18 `"18"', add
label define ke09a_donkeys_lbl 19 `"19"', add
label define ke09a_donkeys_lbl 20 `"20"', add
label define ke09a_donkeys_lbl 21 `"21"', add
label define ke09a_donkeys_lbl 22 `"22"', add
label define ke09a_donkeys_lbl 23 `"23"', add
label define ke09a_donkeys_lbl 24 `"24"', add
label define ke09a_donkeys_lbl 25 `"25"', add
label define ke09a_donkeys_lbl 26 `"26"', add
label define ke09a_donkeys_lbl 27 `"27"', add
label define ke09a_donkeys_lbl 28 `"28"', add
label define ke09a_donkeys_lbl 29 `"29"', add
label define ke09a_donkeys_lbl 30 `"30"', add
label define ke09a_donkeys_lbl 31 `"31"', add
label define ke09a_donkeys_lbl 32 `"32"', add
label define ke09a_donkeys_lbl 33 `"33"', add
label define ke09a_donkeys_lbl 34 `"34"', add
label define ke09a_donkeys_lbl 35 `"35"', add
label define ke09a_donkeys_lbl 36 `"36"', add
label define ke09a_donkeys_lbl 37 `"37"', add
label define ke09a_donkeys_lbl 38 `"38"', add
label define ke09a_donkeys_lbl 39 `"39"', add
label define ke09a_donkeys_lbl 40 `"40"', add
label define ke09a_donkeys_lbl 41 `"41"', add
label define ke09a_donkeys_lbl 42 `"42"', add
label define ke09a_donkeys_lbl 43 `"43"', add
label define ke09a_donkeys_lbl 45 `"45"', add
label define ke09a_donkeys_lbl 46 `"46"', add
label define ke09a_donkeys_lbl 47 `"47"', add
label define ke09a_donkeys_lbl 48 `"48"', add
label define ke09a_donkeys_lbl 49 `"49"', add
label define ke09a_donkeys_lbl 50 `"50+"', add
label values ke09a_donkeys ke09a_donkeys_lbl

label define ke09a_pigs_lbl 00 `"0"'
label define ke09a_pigs_lbl 01 `"1"', add
label define ke09a_pigs_lbl 02 `"2"', add
label define ke09a_pigs_lbl 03 `"3"', add
label define ke09a_pigs_lbl 04 `"4"', add
label define ke09a_pigs_lbl 05 `"5"', add
label define ke09a_pigs_lbl 06 `"6"', add
label define ke09a_pigs_lbl 07 `"7"', add
label define ke09a_pigs_lbl 08 `"8"', add
label define ke09a_pigs_lbl 09 `"9"', add
label define ke09a_pigs_lbl 10 `"10"', add
label define ke09a_pigs_lbl 11 `"11"', add
label define ke09a_pigs_lbl 12 `"12"', add
label define ke09a_pigs_lbl 13 `"13"', add
label define ke09a_pigs_lbl 14 `"14"', add
label define ke09a_pigs_lbl 15 `"15"', add
label define ke09a_pigs_lbl 16 `"16"', add
label define ke09a_pigs_lbl 17 `"17"', add
label define ke09a_pigs_lbl 18 `"18"', add
label define ke09a_pigs_lbl 19 `"19"', add
label define ke09a_pigs_lbl 20 `"20"', add
label define ke09a_pigs_lbl 21 `"21"', add
label define ke09a_pigs_lbl 22 `"22"', add
label define ke09a_pigs_lbl 23 `"23"', add
label define ke09a_pigs_lbl 24 `"24"', add
label define ke09a_pigs_lbl 25 `"25"', add
label define ke09a_pigs_lbl 26 `"26"', add
label define ke09a_pigs_lbl 27 `"27"', add
label define ke09a_pigs_lbl 28 `"28"', add
label define ke09a_pigs_lbl 29 `"29"', add
label define ke09a_pigs_lbl 30 `"30+"', add
label values ke09a_pigs ke09a_pigs_lbl

label define ke09a_idchickn_lbl 000 `"0"'
label define ke09a_idchickn_lbl 001 `"1"', add
label define ke09a_idchickn_lbl 002 `"2"', add
label define ke09a_idchickn_lbl 003 `"3"', add
label define ke09a_idchickn_lbl 004 `"4"', add
label define ke09a_idchickn_lbl 005 `"5"', add
label define ke09a_idchickn_lbl 006 `"6"', add
label define ke09a_idchickn_lbl 007 `"7"', add
label define ke09a_idchickn_lbl 008 `"8"', add
label define ke09a_idchickn_lbl 009 `"9"', add
label define ke09a_idchickn_lbl 010 `"10"', add
label define ke09a_idchickn_lbl 011 `"11"', add
label define ke09a_idchickn_lbl 012 `"12"', add
label define ke09a_idchickn_lbl 013 `"13"', add
label define ke09a_idchickn_lbl 014 `"14"', add
label define ke09a_idchickn_lbl 015 `"15"', add
label define ke09a_idchickn_lbl 016 `"16"', add
label define ke09a_idchickn_lbl 017 `"17"', add
label define ke09a_idchickn_lbl 018 `"18"', add
label define ke09a_idchickn_lbl 019 `"19"', add
label define ke09a_idchickn_lbl 020 `"20"', add
label define ke09a_idchickn_lbl 021 `"21"', add
label define ke09a_idchickn_lbl 022 `"22"', add
label define ke09a_idchickn_lbl 023 `"23"', add
label define ke09a_idchickn_lbl 024 `"24"', add
label define ke09a_idchickn_lbl 025 `"25"', add
label define ke09a_idchickn_lbl 026 `"26"', add
label define ke09a_idchickn_lbl 027 `"27"', add
label define ke09a_idchickn_lbl 028 `"28"', add
label define ke09a_idchickn_lbl 029 `"29"', add
label define ke09a_idchickn_lbl 030 `"30"', add
label define ke09a_idchickn_lbl 031 `"31"', add
label define ke09a_idchickn_lbl 032 `"32"', add
label define ke09a_idchickn_lbl 033 `"33"', add
label define ke09a_idchickn_lbl 034 `"34"', add
label define ke09a_idchickn_lbl 035 `"35"', add
label define ke09a_idchickn_lbl 036 `"36"', add
label define ke09a_idchickn_lbl 037 `"37"', add
label define ke09a_idchickn_lbl 038 `"38"', add
label define ke09a_idchickn_lbl 039 `"39"', add
label define ke09a_idchickn_lbl 040 `"40"', add
label define ke09a_idchickn_lbl 041 `"41"', add
label define ke09a_idchickn_lbl 042 `"42"', add
label define ke09a_idchickn_lbl 043 `"43"', add
label define ke09a_idchickn_lbl 044 `"44"', add
label define ke09a_idchickn_lbl 045 `"45"', add
label define ke09a_idchickn_lbl 046 `"46"', add
label define ke09a_idchickn_lbl 047 `"47"', add
label define ke09a_idchickn_lbl 048 `"48"', add
label define ke09a_idchickn_lbl 049 `"49"', add
label define ke09a_idchickn_lbl 050 `"50"', add
label define ke09a_idchickn_lbl 051 `"51"', add
label define ke09a_idchickn_lbl 052 `"52"', add
label define ke09a_idchickn_lbl 053 `"53"', add
label define ke09a_idchickn_lbl 054 `"54"', add
label define ke09a_idchickn_lbl 055 `"55"', add
label define ke09a_idchickn_lbl 056 `"56"', add
label define ke09a_idchickn_lbl 057 `"57"', add
label define ke09a_idchickn_lbl 058 `"58"', add
label define ke09a_idchickn_lbl 059 `"59"', add
label define ke09a_idchickn_lbl 060 `"60"', add
label define ke09a_idchickn_lbl 061 `"61"', add
label define ke09a_idchickn_lbl 062 `"62"', add
label define ke09a_idchickn_lbl 063 `"63"', add
label define ke09a_idchickn_lbl 064 `"64"', add
label define ke09a_idchickn_lbl 065 `"65"', add
label define ke09a_idchickn_lbl 066 `"66"', add
label define ke09a_idchickn_lbl 067 `"67"', add
label define ke09a_idchickn_lbl 068 `"68"', add
label define ke09a_idchickn_lbl 069 `"69"', add
label define ke09a_idchickn_lbl 070 `"70"', add
label define ke09a_idchickn_lbl 071 `"71"', add
label define ke09a_idchickn_lbl 072 `"72"', add
label define ke09a_idchickn_lbl 073 `"73"', add
label define ke09a_idchickn_lbl 074 `"74"', add
label define ke09a_idchickn_lbl 075 `"75"', add
label define ke09a_idchickn_lbl 076 `"76"', add
label define ke09a_idchickn_lbl 078 `"78"', add
label define ke09a_idchickn_lbl 079 `"79"', add
label define ke09a_idchickn_lbl 080 `"80"', add
label define ke09a_idchickn_lbl 081 `"81"', add
label define ke09a_idchickn_lbl 082 `"82"', add
label define ke09a_idchickn_lbl 083 `"83"', add
label define ke09a_idchickn_lbl 084 `"84"', add
label define ke09a_idchickn_lbl 085 `"85"', add
label define ke09a_idchickn_lbl 086 `"86"', add
label define ke09a_idchickn_lbl 087 `"87"', add
label define ke09a_idchickn_lbl 088 `"88"', add
label define ke09a_idchickn_lbl 089 `"89"', add
label define ke09a_idchickn_lbl 090 `"90"', add
label define ke09a_idchickn_lbl 091 `"91"', add
label define ke09a_idchickn_lbl 092 `"92"', add
label define ke09a_idchickn_lbl 093 `"93"', add
label define ke09a_idchickn_lbl 094 `"94"', add
label define ke09a_idchickn_lbl 095 `"95"', add
label define ke09a_idchickn_lbl 096 `"96"', add
label define ke09a_idchickn_lbl 097 `"97"', add
label define ke09a_idchickn_lbl 099 `"99"', add
label define ke09a_idchickn_lbl 100 `"100+"', add
label values ke09a_idchickn ke09a_idchickn_lbl

label define ke09a_comchkn_lbl 000 `"0"'
label define ke09a_comchkn_lbl 001 `"1"', add
label define ke09a_comchkn_lbl 002 `"2"', add
label define ke09a_comchkn_lbl 003 `"3"', add
label define ke09a_comchkn_lbl 004 `"4"', add
label define ke09a_comchkn_lbl 005 `"5"', add
label define ke09a_comchkn_lbl 006 `"6"', add
label define ke09a_comchkn_lbl 007 `"7"', add
label define ke09a_comchkn_lbl 008 `"8"', add
label define ke09a_comchkn_lbl 009 `"9"', add
label define ke09a_comchkn_lbl 010 `"10"', add
label define ke09a_comchkn_lbl 011 `"11"', add
label define ke09a_comchkn_lbl 012 `"12"', add
label define ke09a_comchkn_lbl 013 `"13"', add
label define ke09a_comchkn_lbl 014 `"14"', add
label define ke09a_comchkn_lbl 015 `"15"', add
label define ke09a_comchkn_lbl 016 `"16"', add
label define ke09a_comchkn_lbl 017 `"17"', add
label define ke09a_comchkn_lbl 018 `"18"', add
label define ke09a_comchkn_lbl 019 `"19"', add
label define ke09a_comchkn_lbl 020 `"20"', add
label define ke09a_comchkn_lbl 021 `"21"', add
label define ke09a_comchkn_lbl 022 `"22"', add
label define ke09a_comchkn_lbl 023 `"23"', add
label define ke09a_comchkn_lbl 024 `"24"', add
label define ke09a_comchkn_lbl 025 `"25"', add
label define ke09a_comchkn_lbl 026 `"26"', add
label define ke09a_comchkn_lbl 027 `"27"', add
label define ke09a_comchkn_lbl 028 `"28"', add
label define ke09a_comchkn_lbl 029 `"29"', add
label define ke09a_comchkn_lbl 030 `"30"', add
label define ke09a_comchkn_lbl 031 `"31"', add
label define ke09a_comchkn_lbl 032 `"32"', add
label define ke09a_comchkn_lbl 033 `"33"', add
label define ke09a_comchkn_lbl 034 `"34"', add
label define ke09a_comchkn_lbl 035 `"35"', add
label define ke09a_comchkn_lbl 036 `"36"', add
label define ke09a_comchkn_lbl 037 `"37"', add
label define ke09a_comchkn_lbl 038 `"38"', add
label define ke09a_comchkn_lbl 039 `"39"', add
label define ke09a_comchkn_lbl 040 `"40"', add
label define ke09a_comchkn_lbl 041 `"41"', add
label define ke09a_comchkn_lbl 042 `"42"', add
label define ke09a_comchkn_lbl 043 `"43"', add
label define ke09a_comchkn_lbl 044 `"44"', add
label define ke09a_comchkn_lbl 045 `"45"', add
label define ke09a_comchkn_lbl 046 `"46"', add
label define ke09a_comchkn_lbl 047 `"47"', add
label define ke09a_comchkn_lbl 048 `"48"', add
label define ke09a_comchkn_lbl 049 `"49"', add
label define ke09a_comchkn_lbl 050 `"50"', add
label define ke09a_comchkn_lbl 051 `"51"', add
label define ke09a_comchkn_lbl 052 `"52"', add
label define ke09a_comchkn_lbl 053 `"53"', add
label define ke09a_comchkn_lbl 054 `"54"', add
label define ke09a_comchkn_lbl 055 `"55"', add
label define ke09a_comchkn_lbl 056 `"56"', add
label define ke09a_comchkn_lbl 057 `"57"', add
label define ke09a_comchkn_lbl 058 `"58"', add
label define ke09a_comchkn_lbl 059 `"59"', add
label define ke09a_comchkn_lbl 060 `"60"', add
label define ke09a_comchkn_lbl 061 `"61"', add
label define ke09a_comchkn_lbl 062 `"62"', add
label define ke09a_comchkn_lbl 065 `"65"', add
label define ke09a_comchkn_lbl 066 `"66"', add
label define ke09a_comchkn_lbl 067 `"67"', add
label define ke09a_comchkn_lbl 068 `"68"', add
label define ke09a_comchkn_lbl 070 `"70"', add
label define ke09a_comchkn_lbl 071 `"71"', add
label define ke09a_comchkn_lbl 072 `"72"', add
label define ke09a_comchkn_lbl 073 `"73"', add
label define ke09a_comchkn_lbl 074 `"74"', add
label define ke09a_comchkn_lbl 075 `"75"', add
label define ke09a_comchkn_lbl 076 `"76"', add
label define ke09a_comchkn_lbl 078 `"78"', add
label define ke09a_comchkn_lbl 080 `"80"', add
label define ke09a_comchkn_lbl 081 `"81"', add
label define ke09a_comchkn_lbl 082 `"82"', add
label define ke09a_comchkn_lbl 084 `"84"', add
label define ke09a_comchkn_lbl 085 `"85"', add
label define ke09a_comchkn_lbl 086 `"86"', add
label define ke09a_comchkn_lbl 090 `"90"', add
label define ke09a_comchkn_lbl 092 `"92"', add
label define ke09a_comchkn_lbl 093 `"93"', add
label define ke09a_comchkn_lbl 094 `"94"', add
label define ke09a_comchkn_lbl 095 `"95"', add
label define ke09a_comchkn_lbl 096 `"96"', add
label define ke09a_comchkn_lbl 097 `"97"', add
label define ke09a_comchkn_lbl 098 `"98"', add
label define ke09a_comchkn_lbl 099 `"99"', add
label define ke09a_comchkn_lbl 100 `"100"', add
label define ke09a_comchkn_lbl 101 `"101"', add
label define ke09a_comchkn_lbl 102 `"102"', add
label define ke09a_comchkn_lbl 103 `"103"', add
label define ke09a_comchkn_lbl 104 `"104"', add
label define ke09a_comchkn_lbl 105 `"105"', add
label define ke09a_comchkn_lbl 106 `"106"', add
label define ke09a_comchkn_lbl 107 `"107"', add
label define ke09a_comchkn_lbl 108 `"108"', add
label define ke09a_comchkn_lbl 109 `"109"', add
label define ke09a_comchkn_lbl 110 `"110"', add
label define ke09a_comchkn_lbl 111 `"111"', add
label define ke09a_comchkn_lbl 115 `"115"', add
label define ke09a_comchkn_lbl 120 `"120"', add
label define ke09a_comchkn_lbl 121 `"121"', add
label define ke09a_comchkn_lbl 124 `"124"', add
label define ke09a_comchkn_lbl 125 `"125"', add
label define ke09a_comchkn_lbl 126 `"126"', add
label define ke09a_comchkn_lbl 128 `"128"', add
label define ke09a_comchkn_lbl 129 `"129"', add
label define ke09a_comchkn_lbl 130 `"130"', add
label define ke09a_comchkn_lbl 132 `"132"', add
label define ke09a_comchkn_lbl 137 `"137"', add
label define ke09a_comchkn_lbl 140 `"140"', add
label define ke09a_comchkn_lbl 142 `"142"', add
label define ke09a_comchkn_lbl 143 `"143"', add
label define ke09a_comchkn_lbl 146 `"146"', add
label define ke09a_comchkn_lbl 150 `"150"', add
label define ke09a_comchkn_lbl 155 `"155"', add
label define ke09a_comchkn_lbl 156 `"156"', add
label define ke09a_comchkn_lbl 160 `"160"', add
label define ke09a_comchkn_lbl 166 `"166"', add
label define ke09a_comchkn_lbl 170 `"170"', add
label define ke09a_comchkn_lbl 175 `"175"', add
label define ke09a_comchkn_lbl 178 `"178"', add
label define ke09a_comchkn_lbl 179 `"179"', add
label define ke09a_comchkn_lbl 180 `"180"', add
label define ke09a_comchkn_lbl 185 `"185"', add
label define ke09a_comchkn_lbl 188 `"188"', add
label define ke09a_comchkn_lbl 189 `"189"', add
label define ke09a_comchkn_lbl 190 `"190"', add
label define ke09a_comchkn_lbl 194 `"194"', add
label define ke09a_comchkn_lbl 197 `"197"', add
label define ke09a_comchkn_lbl 198 `"198"', add
label define ke09a_comchkn_lbl 199 `"199"', add
label define ke09a_comchkn_lbl 200 `"200"', add
label define ke09a_comchkn_lbl 204 `"204"', add
label define ke09a_comchkn_lbl 205 `"205"', add
label define ke09a_comchkn_lbl 210 `"210"', add
label define ke09a_comchkn_lbl 216 `"216"', add
label define ke09a_comchkn_lbl 220 `"220"', add
label define ke09a_comchkn_lbl 221 `"221"', add
label define ke09a_comchkn_lbl 224 `"224"', add
label define ke09a_comchkn_lbl 229 `"229"', add
label define ke09a_comchkn_lbl 230 `"230"', add
label define ke09a_comchkn_lbl 240 `"240"', add
label define ke09a_comchkn_lbl 245 `"245"', add
label define ke09a_comchkn_lbl 249 `"249"', add
label define ke09a_comchkn_lbl 250 `"250"', add
label define ke09a_comchkn_lbl 253 `"253"', add
label define ke09a_comchkn_lbl 256 `"256"', add
label define ke09a_comchkn_lbl 260 `"260"', add
label define ke09a_comchkn_lbl 265 `"265"', add
label define ke09a_comchkn_lbl 269 `"269"', add
label define ke09a_comchkn_lbl 270 `"270"', add
label define ke09a_comchkn_lbl 275 `"275"', add
label define ke09a_comchkn_lbl 280 `"280"', add
label define ke09a_comchkn_lbl 284 `"284"', add
label define ke09a_comchkn_lbl 285 `"285"', add
label define ke09a_comchkn_lbl 286 `"286"', add
label define ke09a_comchkn_lbl 290 `"290"', add
label define ke09a_comchkn_lbl 294 `"294"', add
label define ke09a_comchkn_lbl 299 `"299"', add
label define ke09a_comchkn_lbl 300 `"300"', add
label define ke09a_comchkn_lbl 304 `"304"', add
label define ke09a_comchkn_lbl 310 `"310"', add
label define ke09a_comchkn_lbl 320 `"320"', add
label define ke09a_comchkn_lbl 330 `"330"', add
label define ke09a_comchkn_lbl 340 `"340"', add
label define ke09a_comchkn_lbl 350 `"350"', add
label define ke09a_comchkn_lbl 360 `"360"', add
label define ke09a_comchkn_lbl 367 `"367"', add
label define ke09a_comchkn_lbl 370 `"370"', add
label define ke09a_comchkn_lbl 380 `"380"', add
label define ke09a_comchkn_lbl 390 `"390"', add
label define ke09a_comchkn_lbl 399 `"399"', add
label define ke09a_comchkn_lbl 400 `"400"', add
label define ke09a_comchkn_lbl 404 `"404"', add
label define ke09a_comchkn_lbl 410 `"410"', add
label define ke09a_comchkn_lbl 420 `"420"', add
label define ke09a_comchkn_lbl 450 `"450"', add
label define ke09a_comchkn_lbl 455 `"455"', add
label define ke09a_comchkn_lbl 476 `"476"', add
label define ke09a_comchkn_lbl 480 `"480"', add
label define ke09a_comchkn_lbl 490 `"490"', add
label define ke09a_comchkn_lbl 500 `"500"', add
label define ke09a_comchkn_lbl 504 `"504"', add
label define ke09a_comchkn_lbl 511 `"511"', add
label define ke09a_comchkn_lbl 550 `"550"', add
label define ke09a_comchkn_lbl 600 `"600+"', add
label values ke09a_comchkn ke09a_comchkn_lbl

label define ke09a_beehives_lbl 000 `"0"'
label define ke09a_beehives_lbl 001 `"1"', add
label define ke09a_beehives_lbl 002 `"2"', add
label define ke09a_beehives_lbl 003 `"3"', add
label define ke09a_beehives_lbl 004 `"4"', add
label define ke09a_beehives_lbl 005 `"5"', add
label define ke09a_beehives_lbl 006 `"6"', add
label define ke09a_beehives_lbl 007 `"7"', add
label define ke09a_beehives_lbl 008 `"8"', add
label define ke09a_beehives_lbl 009 `"9"', add
label define ke09a_beehives_lbl 010 `"10"', add
label define ke09a_beehives_lbl 011 `"11"', add
label define ke09a_beehives_lbl 012 `"12"', add
label define ke09a_beehives_lbl 013 `"13"', add
label define ke09a_beehives_lbl 014 `"14"', add
label define ke09a_beehives_lbl 015 `"15"', add
label define ke09a_beehives_lbl 016 `"16"', add
label define ke09a_beehives_lbl 017 `"17"', add
label define ke09a_beehives_lbl 018 `"18"', add
label define ke09a_beehives_lbl 019 `"19"', add
label define ke09a_beehives_lbl 020 `"20"', add
label define ke09a_beehives_lbl 021 `"21"', add
label define ke09a_beehives_lbl 022 `"22"', add
label define ke09a_beehives_lbl 023 `"23"', add
label define ke09a_beehives_lbl 024 `"24"', add
label define ke09a_beehives_lbl 025 `"25"', add
label define ke09a_beehives_lbl 026 `"26"', add
label define ke09a_beehives_lbl 027 `"27"', add
label define ke09a_beehives_lbl 028 `"28"', add
label define ke09a_beehives_lbl 029 `"29"', add
label define ke09a_beehives_lbl 030 `"30"', add
label define ke09a_beehives_lbl 031 `"31"', add
label define ke09a_beehives_lbl 032 `"32"', add
label define ke09a_beehives_lbl 033 `"33"', add
label define ke09a_beehives_lbl 034 `"34"', add
label define ke09a_beehives_lbl 035 `"35"', add
label define ke09a_beehives_lbl 036 `"36"', add
label define ke09a_beehives_lbl 037 `"37"', add
label define ke09a_beehives_lbl 038 `"38"', add
label define ke09a_beehives_lbl 039 `"39"', add
label define ke09a_beehives_lbl 040 `"40"', add
label define ke09a_beehives_lbl 041 `"41"', add
label define ke09a_beehives_lbl 042 `"42"', add
label define ke09a_beehives_lbl 043 `"43"', add
label define ke09a_beehives_lbl 044 `"44"', add
label define ke09a_beehives_lbl 045 `"45"', add
label define ke09a_beehives_lbl 046 `"46"', add
label define ke09a_beehives_lbl 047 `"47"', add
label define ke09a_beehives_lbl 048 `"48"', add
label define ke09a_beehives_lbl 049 `"49"', add
label define ke09a_beehives_lbl 050 `"50"', add
label define ke09a_beehives_lbl 052 `"52"', add
label define ke09a_beehives_lbl 054 `"54"', add
label define ke09a_beehives_lbl 055 `"55"', add
label define ke09a_beehives_lbl 056 `"56"', add
label define ke09a_beehives_lbl 057 `"57"', add
label define ke09a_beehives_lbl 058 `"58"', add
label define ke09a_beehives_lbl 060 `"60"', add
label define ke09a_beehives_lbl 062 `"62"', add
label define ke09a_beehives_lbl 063 `"63"', add
label define ke09a_beehives_lbl 065 `"65"', add
label define ke09a_beehives_lbl 067 `"67"', add
label define ke09a_beehives_lbl 068 `"68"', add
label define ke09a_beehives_lbl 070 `"70"', add
label define ke09a_beehives_lbl 072 `"72"', add
label define ke09a_beehives_lbl 074 `"74"', add
label define ke09a_beehives_lbl 076 `"76"', add
label define ke09a_beehives_lbl 077 `"77"', add
label define ke09a_beehives_lbl 079 `"79"', add
label define ke09a_beehives_lbl 080 `"80"', add
label define ke09a_beehives_lbl 085 `"85"', add
label define ke09a_beehives_lbl 086 `"86"', add
label define ke09a_beehives_lbl 090 `"90"', add
label define ke09a_beehives_lbl 095 `"95"', add
label define ke09a_beehives_lbl 097 `"97"', add
label define ke09a_beehives_lbl 100 `"100+"', add
label values ke09a_beehives ke09a_beehives_lbl

label define ke09a_othanim_lbl 00 `"0"'
label define ke09a_othanim_lbl 01 `"1"', add
label define ke09a_othanim_lbl 02 `"2"', add
label define ke09a_othanim_lbl 03 `"3"', add
label define ke09a_othanim_lbl 04 `"4"', add
label define ke09a_othanim_lbl 05 `"5"', add
label define ke09a_othanim_lbl 06 `"6"', add
label define ke09a_othanim_lbl 07 `"7"', add
label define ke09a_othanim_lbl 08 `"8"', add
label define ke09a_othanim_lbl 09 `"9"', add
label define ke09a_othanim_lbl 10 `"10"', add
label define ke09a_othanim_lbl 11 `"11"', add
label define ke09a_othanim_lbl 12 `"12"', add
label define ke09a_othanim_lbl 13 `"13"', add
label define ke09a_othanim_lbl 14 `"14"', add
label define ke09a_othanim_lbl 15 `"15"', add
label define ke09a_othanim_lbl 16 `"16"', add
label define ke09a_othanim_lbl 17 `"17"', add
label define ke09a_othanim_lbl 18 `"18"', add
label define ke09a_othanim_lbl 19 `"19"', add
label define ke09a_othanim_lbl 20 `"20+"', add
label values ke09a_othanim ke09a_othanim_lbl

label define ke09a_dwunits_lbl 01 `"1"'
label define ke09a_dwunits_lbl 02 `"2"', add
label define ke09a_dwunits_lbl 03 `"3"', add
label define ke09a_dwunits_lbl 04 `"4"', add
label define ke09a_dwunits_lbl 05 `"5"', add
label define ke09a_dwunits_lbl 06 `"6"', add
label define ke09a_dwunits_lbl 07 `"7"', add
label define ke09a_dwunits_lbl 08 `"8"', add
label define ke09a_dwunits_lbl 09 `"9"', add
label define ke09a_dwunits_lbl 10 `"10"', add
label define ke09a_dwunits_lbl 11 `"11"', add
label define ke09a_dwunits_lbl 12 `"12"', add
label define ke09a_dwunits_lbl 13 `"13"', add
label define ke09a_dwunits_lbl 14 `"14"', add
label define ke09a_dwunits_lbl 15 `"15"', add
label define ke09a_dwunits_lbl 16 `"16"', add
label define ke09a_dwunits_lbl 17 `"17"', add
label define ke09a_dwunits_lbl 18 `"18"', add
label define ke09a_dwunits_lbl 19 `"19"', add
label define ke09a_dwunits_lbl 20 `"20+"', add
label define ke09a_dwunits_lbl 99 `"NIU (not in universe)"', add
label values ke09a_dwunits ke09a_dwunits_lbl

label define ke09a_rooms_lbl 01 `"1"'
label define ke09a_rooms_lbl 02 `"2"', add
label define ke09a_rooms_lbl 03 `"3"', add
label define ke09a_rooms_lbl 04 `"4"', add
label define ke09a_rooms_lbl 05 `"5"', add
label define ke09a_rooms_lbl 06 `"6"', add
label define ke09a_rooms_lbl 07 `"7"', add
label define ke09a_rooms_lbl 08 `"8"', add
label define ke09a_rooms_lbl 09 `"9"', add
label define ke09a_rooms_lbl 10 `"10"', add
label define ke09a_rooms_lbl 11 `"11"', add
label define ke09a_rooms_lbl 12 `"12"', add
label define ke09a_rooms_lbl 13 `"13"', add
label define ke09a_rooms_lbl 14 `"14"', add
label define ke09a_rooms_lbl 15 `"15"', add
label define ke09a_rooms_lbl 16 `"16"', add
label define ke09a_rooms_lbl 17 `"17"', add
label define ke09a_rooms_lbl 18 `"18"', add
label define ke09a_rooms_lbl 19 `"19"', add
label define ke09a_rooms_lbl 20 `"20+"', add
label define ke09a_rooms_lbl 99 `"NIU (not in universe)"', add
label values ke09a_rooms ke09a_rooms_lbl

label define ke09a_tenure_lbl 01 `"Purchased"'
label define ke09a_tenure_lbl 02 `"Constructed"', add
label define ke09a_tenure_lbl 03 `"Inherited"', add
label define ke09a_tenure_lbl 04 `"Provided by the government"', add
label define ke09a_tenure_lbl 05 `"Provided by the local authority"', add
label define ke09a_tenure_lbl 06 `"Parastatal"', add
label define ke09a_tenure_lbl 07 `"Provided by a private company"', add
label define ke09a_tenure_lbl 08 `"Individual"', add
label define ke09a_tenure_lbl 09 `"Provided by a faith-based organization/NGO"', add
label define ke09a_tenure_lbl 10 `"Other form of tenure"', add
label define ke09a_tenure_lbl 99 `"NIU (not in universe)"', add
label values ke09a_tenure ke09a_tenure_lbl

label define ke09a_roof_lbl 01 `"Corrugated iron sheets"'
label define ke09a_roof_lbl 02 `"Tiles"', add
label define ke09a_roof_lbl 03 `"Concrete"', add
label define ke09a_roof_lbl 04 `"Asbestos sheets"', add
label define ke09a_roof_lbl 05 `"Grass"', add
label define ke09a_roof_lbl 06 `"Makuti"', add
label define ke09a_roof_lbl 07 `"Tin"', add
label define ke09a_roof_lbl 08 `"Mud/dung"', add
label define ke09a_roof_lbl 09 `"Other"', add
label define ke09a_roof_lbl 98 `"Unknown"', add
label define ke09a_roof_lbl 99 `"NIU (not in universe)"', add
label values ke09a_roof ke09a_roof_lbl

label define ke09a_walls_lbl 01 `"Stone"'
label define ke09a_walls_lbl 02 `"Brick/block"', add
label define ke09a_walls_lbl 03 `"Mud/wood"', add
label define ke09a_walls_lbl 04 `"Mud/cement"', add
label define ke09a_walls_lbl 05 `"Wood only"', add
label define ke09a_walls_lbl 06 `"Corrugated iron sheets"', add
label define ke09a_walls_lbl 07 `"Grass/reeds"', add
label define ke09a_walls_lbl 08 `"Tin"', add
label define ke09a_walls_lbl 09 `"Other"', add
label define ke09a_walls_lbl 98 `"Unknown"', add
label define ke09a_walls_lbl 99 `"NIU (not in universe)"', add
label values ke09a_walls ke09a_walls_lbl

label define ke09a_floor_lbl 1 `"Cement"'
label define ke09a_floor_lbl 2 `"Tiles"', add
label define ke09a_floor_lbl 3 `"Wood"', add
label define ke09a_floor_lbl 4 `"Earth"', add
label define ke09a_floor_lbl 5 `"Other"', add
label define ke09a_floor_lbl 8 `"Unknown"', add
label define ke09a_floor_lbl 9 `"NIU (not in universe)"', add
label values ke09a_floor ke09a_floor_lbl

label define ke09a_watsrc_lbl 01 `"Pond"'
label define ke09a_watsrc_lbl 02 `"Dam"', add
label define ke09a_watsrc_lbl 03 `"Lake"', add
label define ke09a_watsrc_lbl 04 `"Stream/river"', add
label define ke09a_watsrc_lbl 05 `"Protected spring"', add
label define ke09a_watsrc_lbl 06 `"Unprotected spring"', add
label define ke09a_watsrc_lbl 07 `"Protected well"', add
label define ke09a_watsrc_lbl 08 `"Unprotected well"', add
label define ke09a_watsrc_lbl 09 `"Borehole"', add
label define ke09a_watsrc_lbl 10 `"Piped into dwelling"', add
label define ke09a_watsrc_lbl 11 `"Piped"', add
label define ke09a_watsrc_lbl 12 `"Jabia"', add
label define ke09a_watsrc_lbl 13 `"Rain/harvested"', add
label define ke09a_watsrc_lbl 14 `"Water vendor"', add
label define ke09a_watsrc_lbl 15 `"Other"', add
label define ke09a_watsrc_lbl 99 `"NIU (not in universe)"', add
label values ke09a_watsrc ke09a_watsrc_lbl

label define ke09a_sewer_lbl 01 `"Main sewer"'
label define ke09a_sewer_lbl 02 `"Septic tank"', add
label define ke09a_sewer_lbl 03 `"Cesspool"', add
label define ke09a_sewer_lbl 04 `"VIP pit latrine"', add
label define ke09a_sewer_lbl 05 `"Pit latrine covered"', add
label define ke09a_sewer_lbl 06 `"Pit latrine uncovered"', add
label define ke09a_sewer_lbl 07 `"Bucket latrine"', add
label define ke09a_sewer_lbl 08 `"Bush"', add
label define ke09a_sewer_lbl 09 `"Other"', add
label define ke09a_sewer_lbl 99 `"NIU (not in universe)"', add
label values ke09a_sewer ke09a_sewer_lbl

label define ke09a_fuelck_lbl 1 `"Electricity"'
label define ke09a_fuelck_lbl 2 `"Paraffin"', add
label define ke09a_fuelck_lbl 3 `"LPG"', add
label define ke09a_fuelck_lbl 4 `"Biogas"', add
label define ke09a_fuelck_lbl 5 `"Firewood"', add
label define ke09a_fuelck_lbl 6 `"Charcoal"', add
label define ke09a_fuelck_lbl 7 `"Solar"', add
label define ke09a_fuelck_lbl 8 `"Other"', add
label define ke09a_fuelck_lbl 9 `"NIU (not in universe)"', add
label values ke09a_fuelck ke09a_fuelck_lbl

label define ke09a_light_lbl 1 `"Electricity"'
label define ke09a_light_lbl 2 `"Pressure lamp"', add
label define ke09a_light_lbl 3 `"Lantern"', add
label define ke09a_light_lbl 4 `"Tin lamp"', add
label define ke09a_light_lbl 5 `"Gas lamp"', add
label define ke09a_light_lbl 6 `"Fuel wood"', add
label define ke09a_light_lbl 7 `"Solar"', add
label define ke09a_light_lbl 8 `"Other"', add
label define ke09a_light_lbl 9 `"NIU (not in universe)"', add
label values ke09a_light ke09a_light_lbl

label define ke09a_radio_lbl 1 `"Yes"'
label define ke09a_radio_lbl 2 `"No"', add
label define ke09a_radio_lbl 9 `"NIU (not in universe)"', add
label values ke09a_radio ke09a_radio_lbl

label define ke09a_tv_lbl 1 `"Yes"'
label define ke09a_tv_lbl 2 `"No"', add
label define ke09a_tv_lbl 9 `"NIU (not in universe)"', add
label values ke09a_tv ke09a_tv_lbl

label define ke09a_cellphon_lbl 1 `"Yes"'
label define ke09a_cellphon_lbl 2 `"No"', add
label define ke09a_cellphon_lbl 9 `"NIU (not in universe)"', add
label values ke09a_cellphon ke09a_cellphon_lbl

label define ke09a_phone_lbl 1 `"Yes"'
label define ke09a_phone_lbl 2 `"No"', add
label define ke09a_phone_lbl 9 `"NIU (not in universe)"', add
label values ke09a_phone ke09a_phone_lbl

label define ke09a_computr_lbl 1 `"Yes"'
label define ke09a_computr_lbl 2 `"No"', add
label define ke09a_computr_lbl 9 `"NIU (not in universe)"', add
label values ke09a_computr ke09a_computr_lbl

label define ke09a_bike_lbl 1 `"Yes"'
label define ke09a_bike_lbl 2 `"No"', add
label define ke09a_bike_lbl 9 `"NIU (not in universe)"', add
label values ke09a_bike ke09a_bike_lbl

label define ke09a_motorcyc_lbl 1 `"Yes"'
label define ke09a_motorcyc_lbl 2 `"No"', add
label define ke09a_motorcyc_lbl 9 `"NIU (not in universe)"', add
label values ke09a_motorcyc ke09a_motorcyc_lbl

label define ke09a_auto_lbl 1 `"Yes"'
label define ke09a_auto_lbl 2 `"No"', add
label define ke09a_auto_lbl 9 `"NIU (not in universe)"', add
label values ke09a_auto ke09a_auto_lbl

label define ke09a_truck_lbl 1 `"Yes"'
label define ke09a_truck_lbl 2 `"No"', add
label define ke09a_truck_lbl 9 `"NIU (not in universe)"', add
label values ke09a_truck ke09a_truck_lbl

label define ke09a_fridge_lbl 1 `"Yes"'
label define ke09a_fridge_lbl 2 `"No"', add
label define ke09a_fridge_lbl 9 `"NIU (not in universe)"', add
label values ke09a_fridge ke09a_fridge_lbl

label define ke09a_boat_lbl 1 `"Yes"'
label define ke09a_boat_lbl 2 `"No"', add
label define ke09a_boat_lbl 9 `"NIU (not in universe)"', add
label values ke09a_boat ke09a_boat_lbl

label define ke09a_cart_lbl 1 `"Yes"'
label define ke09a_cart_lbl 2 `"No"', add
label define ke09a_cart_lbl 9 `"NIU (not in universe)"', add
label values ke09a_cart ke09a_cart_lbl

label define ke09a_canoe_lbl 1 `"Yes"'
label define ke09a_canoe_lbl 2 `"No"', add
label define ke09a_canoe_lbl 9 `"NIU (not in universe)"', add
label values ke09a_canoe ke09a_canoe_lbl

label define ke09a_tuktuk_lbl 1 `"Yes"'
label define ke09a_tuktuk_lbl 2 `"No"', add
label define ke09a_tuktuk_lbl 9 `"NIU (not in universe)"', add
label values ke09a_tuktuk ke09a_tuktuk_lbl

label define ke09a_emig15yr_lbl 00 `"0"'
label define ke09a_emig15yr_lbl 01 `"1"', add
label define ke09a_emig15yr_lbl 02 `"2"', add
label define ke09a_emig15yr_lbl 03 `"3"', add
label define ke09a_emig15yr_lbl 04 `"4"', add
label define ke09a_emig15yr_lbl 05 `"5"', add
label define ke09a_emig15yr_lbl 06 `"6"', add
label define ke09a_emig15yr_lbl 07 `"7"', add
label define ke09a_emig15yr_lbl 08 `"8"', add
label define ke09a_emig15yr_lbl 09 `"9"', add
label define ke09a_emig15yr_lbl 10 `"10+"', add
label define ke09a_emig15yr_lbl 99 `"NIU (not in universe)"', add
label values ke09a_emig15yr ke09a_emig15yr_lbl

label define ke09a_pernum_lbl 00 `"Household record"'
label define ke09a_pernum_lbl 01 `"1"', add
label define ke09a_pernum_lbl 02 `"2"', add
label define ke09a_pernum_lbl 03 `"3"', add
label define ke09a_pernum_lbl 04 `"4"', add
label define ke09a_pernum_lbl 05 `"5"', add
label define ke09a_pernum_lbl 06 `"6"', add
label define ke09a_pernum_lbl 07 `"7"', add
label define ke09a_pernum_lbl 08 `"8"', add
label define ke09a_pernum_lbl 09 `"9"', add
label define ke09a_pernum_lbl 10 `"10"', add
label define ke09a_pernum_lbl 11 `"11"', add
label define ke09a_pernum_lbl 12 `"12"', add
label define ke09a_pernum_lbl 13 `"13"', add
label define ke09a_pernum_lbl 14 `"14"', add
label define ke09a_pernum_lbl 15 `"15"', add
label define ke09a_pernum_lbl 16 `"16"', add
label define ke09a_pernum_lbl 17 `"17"', add
label define ke09a_pernum_lbl 18 `"18"', add
label define ke09a_pernum_lbl 19 `"19"', add
label define ke09a_pernum_lbl 20 `"20"', add
label define ke09a_pernum_lbl 21 `"21"', add
label define ke09a_pernum_lbl 22 `"22"', add
label define ke09a_pernum_lbl 23 `"23"', add
label define ke09a_pernum_lbl 24 `"24"', add
label define ke09a_pernum_lbl 25 `"25"', add
label define ke09a_pernum_lbl 26 `"26"', add
label define ke09a_pernum_lbl 27 `"27"', add
label define ke09a_pernum_lbl 28 `"28"', add
label define ke09a_pernum_lbl 29 `"29"', add
label define ke09a_pernum_lbl 30 `"30"', add
label define ke09a_pernum_lbl 31 `"31"', add
label define ke09a_pernum_lbl 32 `"32"', add
label define ke09a_pernum_lbl 33 `"33"', add
label define ke09a_pernum_lbl 34 `"34"', add
label define ke09a_pernum_lbl 35 `"35"', add
label define ke09a_pernum_lbl 36 `"36"', add
label define ke09a_pernum_lbl 37 `"37"', add
label define ke09a_pernum_lbl 38 `"38"', add
label define ke09a_pernum_lbl 39 `"39"', add
label define ke09a_pernum_lbl 40 `"40"', add
label define ke09a_pernum_lbl 41 `"41"', add
label define ke09a_pernum_lbl 42 `"42"', add
label define ke09a_pernum_lbl 43 `"43"', add
label define ke09a_pernum_lbl 44 `"44"', add
label define ke09a_pernum_lbl 45 `"45"', add
label define ke09a_pernum_lbl 46 `"46"', add
label define ke09a_pernum_lbl 47 `"47"', add
label define ke09a_pernum_lbl 48 `"48"', add
label define ke09a_pernum_lbl 49 `"49"', add
label define ke09a_pernum_lbl 50 `"50"', add
label values ke09a_pernum ke09a_pernum_lbl

label define ke09a_relate_lbl 01 `"Head"'
label define ke09a_relate_lbl 02 `"Spouse"', add
label define ke09a_relate_lbl 03 `"Son/daughter"', add
label define ke09a_relate_lbl 04 `"Grandchild"', add
label define ke09a_relate_lbl 05 `"Brother/sister"', add
label define ke09a_relate_lbl 06 `"Father/mother"', add
label define ke09a_relate_lbl 07 `"Nephew/niece"', add
label define ke09a_relate_lbl 08 `"In-law"', add
label define ke09a_relate_lbl 09 `"Grandparent"', add
label define ke09a_relate_lbl 10 `"Other relative"', add
label define ke09a_relate_lbl 11 `"Unrelated"', add
label define ke09a_relate_lbl 99 `"NIU (not in universe)"', add
label values ke09a_relate ke09a_relate_lbl

label define ke09a_sex_lbl 1 `"Male"'
label define ke09a_sex_lbl 2 `"Female"', add
label values ke09a_sex ke09a_sex_lbl

label define ke09a_age_lbl 00 `"Less than 1 year"'
label define ke09a_age_lbl 01 `"1"', add
label define ke09a_age_lbl 02 `"2"', add
label define ke09a_age_lbl 03 `"3"', add
label define ke09a_age_lbl 04 `"4"', add
label define ke09a_age_lbl 05 `"5"', add
label define ke09a_age_lbl 06 `"6"', add
label define ke09a_age_lbl 07 `"7"', add
label define ke09a_age_lbl 08 `"8"', add
label define ke09a_age_lbl 09 `"9"', add
label define ke09a_age_lbl 10 `"10"', add
label define ke09a_age_lbl 11 `"11"', add
label define ke09a_age_lbl 12 `"12"', add
label define ke09a_age_lbl 13 `"13"', add
label define ke09a_age_lbl 14 `"14"', add
label define ke09a_age_lbl 15 `"15"', add
label define ke09a_age_lbl 16 `"16"', add
label define ke09a_age_lbl 17 `"17"', add
label define ke09a_age_lbl 18 `"18"', add
label define ke09a_age_lbl 19 `"19"', add
label define ke09a_age_lbl 20 `"20"', add
label define ke09a_age_lbl 21 `"21"', add
label define ke09a_age_lbl 22 `"22"', add
label define ke09a_age_lbl 23 `"23"', add
label define ke09a_age_lbl 24 `"24"', add
label define ke09a_age_lbl 25 `"25"', add
label define ke09a_age_lbl 26 `"26"', add
label define ke09a_age_lbl 27 `"27"', add
label define ke09a_age_lbl 28 `"28"', add
label define ke09a_age_lbl 29 `"29"', add
label define ke09a_age_lbl 30 `"30"', add
label define ke09a_age_lbl 31 `"31"', add
label define ke09a_age_lbl 32 `"32"', add
label define ke09a_age_lbl 33 `"33"', add
label define ke09a_age_lbl 34 `"34"', add
label define ke09a_age_lbl 35 `"35"', add
label define ke09a_age_lbl 36 `"36"', add
label define ke09a_age_lbl 37 `"37"', add
label define ke09a_age_lbl 38 `"38"', add
label define ke09a_age_lbl 39 `"39"', add
label define ke09a_age_lbl 40 `"40"', add
label define ke09a_age_lbl 41 `"41"', add
label define ke09a_age_lbl 42 `"42"', add
label define ke09a_age_lbl 43 `"43"', add
label define ke09a_age_lbl 44 `"44"', add
label define ke09a_age_lbl 45 `"45"', add
label define ke09a_age_lbl 46 `"46"', add
label define ke09a_age_lbl 47 `"47"', add
label define ke09a_age_lbl 48 `"48"', add
label define ke09a_age_lbl 49 `"49"', add
label define ke09a_age_lbl 50 `"50"', add
label define ke09a_age_lbl 51 `"51"', add
label define ke09a_age_lbl 52 `"52"', add
label define ke09a_age_lbl 53 `"53"', add
label define ke09a_age_lbl 54 `"54"', add
label define ke09a_age_lbl 55 `"55"', add
label define ke09a_age_lbl 56 `"56"', add
label define ke09a_age_lbl 57 `"57"', add
label define ke09a_age_lbl 58 `"58"', add
label define ke09a_age_lbl 59 `"59"', add
label define ke09a_age_lbl 60 `"60"', add
label define ke09a_age_lbl 61 `"61"', add
label define ke09a_age_lbl 62 `"62"', add
label define ke09a_age_lbl 63 `"63"', add
label define ke09a_age_lbl 64 `"64"', add
label define ke09a_age_lbl 65 `"65"', add
label define ke09a_age_lbl 66 `"66"', add
label define ke09a_age_lbl 67 `"67"', add
label define ke09a_age_lbl 68 `"68"', add
label define ke09a_age_lbl 69 `"69"', add
label define ke09a_age_lbl 70 `"70"', add
label define ke09a_age_lbl 71 `"71"', add
label define ke09a_age_lbl 72 `"72"', add
label define ke09a_age_lbl 73 `"73"', add
label define ke09a_age_lbl 74 `"74"', add
label define ke09a_age_lbl 75 `"75"', add
label define ke09a_age_lbl 76 `"76"', add
label define ke09a_age_lbl 77 `"77"', add
label define ke09a_age_lbl 78 `"78"', add
label define ke09a_age_lbl 79 `"79"', add
label define ke09a_age_lbl 80 `"80"', add
label define ke09a_age_lbl 81 `"81"', add
label define ke09a_age_lbl 82 `"82"', add
label define ke09a_age_lbl 83 `"83"', add
label define ke09a_age_lbl 84 `"84"', add
label define ke09a_age_lbl 85 `"85"', add
label define ke09a_age_lbl 86 `"86"', add
label define ke09a_age_lbl 87 `"87"', add
label define ke09a_age_lbl 88 `"88"', add
label define ke09a_age_lbl 89 `"89"', add
label define ke09a_age_lbl 90 `"90"', add
label define ke09a_age_lbl 91 `"91"', add
label define ke09a_age_lbl 92 `"92"', add
label define ke09a_age_lbl 93 `"93"', add
label define ke09a_age_lbl 94 `"94"', add
label define ke09a_age_lbl 95 `"95 years old and over"', add
label values ke09a_age ke09a_age_lbl

label define ke09a_momloc_lbl 00 `"0"'
label define ke09a_momloc_lbl 01 `"1"', add
label define ke09a_momloc_lbl 02 `"2"', add
label define ke09a_momloc_lbl 03 `"3"', add
label define ke09a_momloc_lbl 04 `"4"', add
label define ke09a_momloc_lbl 05 `"5"', add
label define ke09a_momloc_lbl 06 `"6"', add
label define ke09a_momloc_lbl 07 `"7"', add
label define ke09a_momloc_lbl 08 `"8"', add
label define ke09a_momloc_lbl 09 `"9"', add
label define ke09a_momloc_lbl 10 `"10"', add
label define ke09a_momloc_lbl 11 `"11"', add
label define ke09a_momloc_lbl 12 `"12"', add
label define ke09a_momloc_lbl 13 `"13"', add
label define ke09a_momloc_lbl 14 `"14"', add
label define ke09a_momloc_lbl 15 `"15"', add
label define ke09a_momloc_lbl 16 `"16"', add
label define ke09a_momloc_lbl 17 `"17"', add
label define ke09a_momloc_lbl 18 `"18"', add
label define ke09a_momloc_lbl 19 `"19"', add
label define ke09a_momloc_lbl 20 `"20"', add
label define ke09a_momloc_lbl 21 `"21"', add
label define ke09a_momloc_lbl 22 `"22"', add
label define ke09a_momloc_lbl 23 `"23"', add
label define ke09a_momloc_lbl 24 `"24"', add
label define ke09a_momloc_lbl 25 `"25"', add
label define ke09a_momloc_lbl 26 `"26"', add
label define ke09a_momloc_lbl 27 `"27"', add
label define ke09a_momloc_lbl 28 `"28"', add
label define ke09a_momloc_lbl 29 `"29"', add
label define ke09a_momloc_lbl 30 `"30"', add
label define ke09a_momloc_lbl 31 `"31"', add
label define ke09a_momloc_lbl 33 `"33"', add
label define ke09a_momloc_lbl 34 `"34"', add
label define ke09a_momloc_lbl 35 `"35"', add
label define ke09a_momloc_lbl 38 `"38"', add
label define ke09a_momloc_lbl 47 `"47"', add
label define ke09a_momloc_lbl 49 `"49"', add
label define ke09a_momloc_lbl 99 `"NIU (not in universe)"', add
label values ke09a_momloc ke09a_momloc_lbl

label define ke09a_memberhh_lbl 1 `"Yes"'
label define ke09a_memberhh_lbl 2 `"No"', add
label define ke09a_memberhh_lbl 9 `"NIU (not in universe)"', add
label values ke09a_memberhh ke09a_memberhh_lbl

label define ke09a_marst_lbl 1 `"Never married"'
label define ke09a_marst_lbl 2 `"Married monogamous"', add
label define ke09a_marst_lbl 3 `"Married polygamous"', add
label define ke09a_marst_lbl 4 `"Widowed"', add
label define ke09a_marst_lbl 5 `"Divorced"', add
label define ke09a_marst_lbl 6 `"Separated"', add
label values ke09a_marst ke09a_marst_lbl

label define ke09a_prevres_lbl 031 `"Congo"'
label define ke09a_prevres_lbl 033 `"Democratic Republic of the Congo"', add
label define ke09a_prevres_lbl 036 `"Egypt"', add
label define ke09a_prevres_lbl 039 `"Ethiopia"', add
label define ke09a_prevres_lbl 056 `"Nigeria"', add
label define ke09a_prevres_lbl 057 `"Rwanda"', add
label define ke09a_prevres_lbl 062 `"Somalia"', add
label define ke09a_prevres_lbl 063 `"South Africa"', add
label define ke09a_prevres_lbl 064 `"Sudan"', add
label define ke09a_prevres_lbl 068 `"Uganda"', add
label define ke09a_prevres_lbl 069 `"United Republic of Tanzania"', add
label define ke09a_prevres_lbl 071 `"Zimbabwe"', add
label define ke09a_prevres_lbl 090 `"Other African country"', add
label define ke09a_prevres_lbl 101 `"Nairobi West"', add
label define ke09a_prevres_lbl 102 `"Nairobi East"', add
label define ke09a_prevres_lbl 103 `"Nairobi North"', add
label define ke09a_prevres_lbl 104 `"Westlands"', add
label define ke09a_prevres_lbl 201 `"Nyandarua North"', add
label define ke09a_prevres_lbl 202 `"Nyandarua South"', add
label define ke09a_prevres_lbl 203 `"Nyeri North"', add
label define ke09a_prevres_lbl 204 `"Nyeri South"', add
label define ke09a_prevres_lbl 205 `"Kirinyaga"', add
label define ke09a_prevres_lbl 206 `"Murang'a North"', add
label define ke09a_prevres_lbl 207 `"Murang'a South"', add
label define ke09a_prevres_lbl 208 `"Kiambu"', add
label define ke09a_prevres_lbl 209 `"Kikuyu"', add
label define ke09a_prevres_lbl 210 `"Limuru"', add
label define ke09a_prevres_lbl 211 `"Lari"', add
label define ke09a_prevres_lbl 212 `"Githunguri"', add
label define ke09a_prevres_lbl 213 `"Thika East"', add
label define ke09a_prevres_lbl 214 `"Thika West"', add
label define ke09a_prevres_lbl 215 `"Ruiru"', add
label define ke09a_prevres_lbl 216 `"Gatanga"', add
label define ke09a_prevres_lbl 217 `"Gatundu"', add
label define ke09a_prevres_lbl 301 `"Mombasa"', add
label define ke09a_prevres_lbl 302 `"Kilindini"', add
label define ke09a_prevres_lbl 303 `"Kwale"', add
label define ke09a_prevres_lbl 304 `"Kinango"', add
label define ke09a_prevres_lbl 305 `"Msambweni"', add
label define ke09a_prevres_lbl 306 `"Kilifi"', add
label define ke09a_prevres_lbl 307 `"Kaloleni"', add
label define ke09a_prevres_lbl 308 `"Malindi"', add
label define ke09a_prevres_lbl 309 `"Tana river"', add
label define ke09a_prevres_lbl 310 `"Tana delta"', add
label define ke09a_prevres_lbl 311 `"Lamu"', add
label define ke09a_prevres_lbl 312 `"Taita"', add
label define ke09a_prevres_lbl 313 `"Taveta"', add
label define ke09a_prevres_lbl 401 `"Marsabit"', add
label define ke09a_prevres_lbl 402 `"Chalbi"', add
label define ke09a_prevres_lbl 403 `"Laisamis"', add
label define ke09a_prevres_lbl 404 `"Moyale"', add
label define ke09a_prevres_lbl 405 `"Isiolo"', add
label define ke09a_prevres_lbl 406 `"Garba Tulla"', add
label define ke09a_prevres_lbl 407 `"Imenti Central"', add
label define ke09a_prevres_lbl 408 `"Imenti North"', add
label define ke09a_prevres_lbl 409 `"Imenti South"', add
label define ke09a_prevres_lbl 410 `"Meru South"', add
label define ke09a_prevres_lbl 411 `"Maara"', add
label define ke09a_prevres_lbl 412 `"Igembe"', add
label define ke09a_prevres_lbl 413 `"Tigania"', add
label define ke09a_prevres_lbl 414 `"Tharaka"', add
label define ke09a_prevres_lbl 415 `"Embu"', add
label define ke09a_prevres_lbl 416 `"Mbeere"', add
label define ke09a_prevres_lbl 417 `"Kitui North"', add
label define ke09a_prevres_lbl 418 `"Kitui South"', add
label define ke09a_prevres_lbl 419 `"Mwingi"', add
label define ke09a_prevres_lbl 420 `"Kyuso"', add
label define ke09a_prevres_lbl 421 `"Machakos"', add
label define ke09a_prevres_lbl 422 `"Mwala"', add
label define ke09a_prevres_lbl 423 `"Yatta"', add
label define ke09a_prevres_lbl 424 `"Kangundo"', add
label define ke09a_prevres_lbl 425 `"Makueni"', add
label define ke09a_prevres_lbl 426 `"Mbooni"', add
label define ke09a_prevres_lbl 427 `"Kibwezi"', add
label define ke09a_prevres_lbl 428 `"Nzaui"', add
label define ke09a_prevres_lbl 501 `"Garisa"', add
label define ke09a_prevres_lbl 502 `"Lagdera"', add
label define ke09a_prevres_lbl 503 `"Fafi"', add
label define ke09a_prevres_lbl 504 `"Ijara"', add
label define ke09a_prevres_lbl 505 `"Wajir South"', add
label define ke09a_prevres_lbl 506 `"Wajir North"', add
label define ke09a_prevres_lbl 507 `"Wajir East"', add
label define ke09a_prevres_lbl 508 `"Wajir West"', add
label define ke09a_prevres_lbl 509 `"Mandera Central"', add
label define ke09a_prevres_lbl 510 `"Mandera East"', add
label define ke09a_prevres_lbl 511 `"Mandera West"', add
label define ke09a_prevres_lbl 601 `"Siaya"', add
label define ke09a_prevres_lbl 602 `"Bondo"', add
label define ke09a_prevres_lbl 603 `"Rarieda"', add
label define ke09a_prevres_lbl 604 `"Kisumu East"', add
label define ke09a_prevres_lbl 605 `"Kisumu West"', add
label define ke09a_prevres_lbl 606 `"Nyando"', add
label define ke09a_prevres_lbl 607 `"Homa Bay"', add
label define ke09a_prevres_lbl 608 `"Suba"', add
label define ke09a_prevres_lbl 609 `"Rachuonyo"', add
label define ke09a_prevres_lbl 610 `"Migori"', add
label define ke09a_prevres_lbl 611 `"Rongo"', add
label define ke09a_prevres_lbl 612 `"Kuria West"', add
label define ke09a_prevres_lbl 613 `"Kuria East"', add
label define ke09a_prevres_lbl 614 `"Kisii Central"', add
label define ke09a_prevres_lbl 615 `"Kisii South"', add
label define ke09a_prevres_lbl 616 `"Masaba"', add
label define ke09a_prevres_lbl 617 `"Gucha"', add
label define ke09a_prevres_lbl 618 `"Gucha South"', add
label define ke09a_prevres_lbl 619 `"Nyamira"', add
label define ke09a_prevres_lbl 620 `"Manga"', add
label define ke09a_prevres_lbl 621 `"Borabu"', add
label define ke09a_prevres_lbl 701 `"Turkana Central"', add
label define ke09a_prevres_lbl 702 `"Turkana North"', add
label define ke09a_prevres_lbl 703 `"Turkana South"', add
label define ke09a_prevres_lbl 704 `"West Pokot"', add
label define ke09a_prevres_lbl 705 `"Pokot North"', add
label define ke09a_prevres_lbl 706 `"Pokot Central"', add
label define ke09a_prevres_lbl 707 `"Samburu Central"', add
label define ke09a_prevres_lbl 708 `"Samburu East"', add
label define ke09a_prevres_lbl 709 `"Samburu North"', add
label define ke09a_prevres_lbl 710 `"Trans Nzoia West"', add
label define ke09a_prevres_lbl 711 `"Trans Nzoia East"', add
label define ke09a_prevres_lbl 712 `"Kwanza"', add
label define ke09a_prevres_lbl 713 `"Baringo"', add
label define ke09a_prevres_lbl 714 `"Baringo North"', add
label define ke09a_prevres_lbl 715 `"East Pokot"', add
label define ke09a_prevres_lbl 716 `"Koibatek"', add
label define ke09a_prevres_lbl 717 `"Eldoret West"', add
label define ke09a_prevres_lbl 718 `"Eldoret East"', add
label define ke09a_prevres_lbl 719 `"Wareng"', add
label define ke09a_prevres_lbl 720 `"Marakwet"', add
label define ke09a_prevres_lbl 721 `"Keiyo"', add
label define ke09a_prevres_lbl 722 `"Nandi North"', add
label define ke09a_prevres_lbl 723 `"Nandi Central"', add
label define ke09a_prevres_lbl 724 `"Nandi East"', add
label define ke09a_prevres_lbl 725 `"Nandi South"', add
label define ke09a_prevres_lbl 726 `"Tinderet"', add
label define ke09a_prevres_lbl 727 `"Laikipia North"', add
label define ke09a_prevres_lbl 728 `"Laikipia East"', add
label define ke09a_prevres_lbl 729 `"Laikipia West"', add
label define ke09a_prevres_lbl 730 `"Nakuru"', add
label define ke09a_prevres_lbl 731 `"Nakuru North"', add
label define ke09a_prevres_lbl 732 `"Naivasha"', add
label define ke09a_prevres_lbl 733 `"Molo"', add
label define ke09a_prevres_lbl 734 `"Narok North"', add
label define ke09a_prevres_lbl 735 `"Narok South"', add
label define ke09a_prevres_lbl 736 `"Trans Mara"', add
label define ke09a_prevres_lbl 737 `"Kajiado Central"', add
label define ke09a_prevres_lbl 738 `"Loitoktok"', add
label define ke09a_prevres_lbl 739 `"Kericho"', add
label define ke09a_prevres_lbl 740 `"Kipkelion"', add
label define ke09a_prevres_lbl 741 `"Buret"', add
label define ke09a_prevres_lbl 742 `"Sotik"', add
label define ke09a_prevres_lbl 743 `"Bomet"', add
label define ke09a_prevres_lbl 744 `"Kajiado North"', add
label define ke09a_prevres_lbl 801 `"Kakamega Central"', add
label define ke09a_prevres_lbl 802 `"Kakamega South"', add
label define ke09a_prevres_lbl 803 `"Kakamega North"', add
label define ke09a_prevres_lbl 804 `"Kakamega East"', add
label define ke09a_prevres_lbl 805 `"Lugari"', add
label define ke09a_prevres_lbl 806 `"Vihiga"', add
label define ke09a_prevres_lbl 807 `"Emuhaya"', add
label define ke09a_prevres_lbl 808 `"Hamisi"', add
label define ke09a_prevres_lbl 809 `"Mumias"', add
label define ke09a_prevres_lbl 810 `"Butere"', add
label define ke09a_prevres_lbl 811 `"Bungoma South"', add
label define ke09a_prevres_lbl 812 `"Bungoma North"', add
label define ke09a_prevres_lbl 813 `"Bungoma East"', add
label define ke09a_prevres_lbl 814 `"Bungoma West"', add
label define ke09a_prevres_lbl 815 `"Mt Elgon"', add
label define ke09a_prevres_lbl 816 `"Busia"', add
label define ke09a_prevres_lbl 817 `"Teso North"', add
label define ke09a_prevres_lbl 818 `"Samia"', add
label define ke09a_prevres_lbl 819 `"Bunyala"', add
label define ke09a_prevres_lbl 820 `"Teso South"', add
label define ke09a_prevres_lbl 858 `"China"', add
label define ke09a_prevres_lbl 860 `"India"', add
label define ke09a_prevres_lbl 891 `"United Arab Emirates"', add
label define ke09a_prevres_lbl 911 `"Germany"', add
label define ke09a_prevres_lbl 916 `"Italy"', add
label define ke09a_prevres_lbl 948 `"United Kingdom of Great Britain and Northern Ireland"', add
label define ke09a_prevres_lbl 954 `"Canada"', add
label define ke09a_prevres_lbl 970 `"United States of America"', add
label define ke09a_prevres_lbl 995 `"Other non-African country"', add
label define ke09a_prevres_lbl 999 `"NIU (not in universe)"', add
label values ke09a_prevres ke09a_prevres_lbl

label define ke09a_resdurmo_lbl 01 `"January"'
label define ke09a_resdurmo_lbl 02 `"February"', add
label define ke09a_resdurmo_lbl 03 `"March"', add
label define ke09a_resdurmo_lbl 04 `"April"', add
label define ke09a_resdurmo_lbl 05 `"May"', add
label define ke09a_resdurmo_lbl 06 `"June"', add
label define ke09a_resdurmo_lbl 07 `"July"', add
label define ke09a_resdurmo_lbl 08 `"August"', add
label define ke09a_resdurmo_lbl 09 `"September"', add
label define ke09a_resdurmo_lbl 10 `"October"', add
label define ke09a_resdurmo_lbl 11 `"November"', add
label define ke09a_resdurmo_lbl 12 `"December"', add
label values ke09a_resdurmo ke09a_resdurmo_lbl

label define ke09a_resduryr_lbl 1913 `"1913"'
label define ke09a_resduryr_lbl 1914 `"1914"', add
label define ke09a_resduryr_lbl 1915 `"1915"', add
label define ke09a_resduryr_lbl 1916 `"1916"', add
label define ke09a_resduryr_lbl 1917 `"1917"', add
label define ke09a_resduryr_lbl 1918 `"1918"', add
label define ke09a_resduryr_lbl 1919 `"1919"', add
label define ke09a_resduryr_lbl 1920 `"1920"', add
label define ke09a_resduryr_lbl 1921 `"1921"', add
label define ke09a_resduryr_lbl 1922 `"1922"', add
label define ke09a_resduryr_lbl 1923 `"1923"', add
label define ke09a_resduryr_lbl 1924 `"1924"', add
label define ke09a_resduryr_lbl 1925 `"1925"', add
label define ke09a_resduryr_lbl 1926 `"1926"', add
label define ke09a_resduryr_lbl 1927 `"1927"', add
label define ke09a_resduryr_lbl 1928 `"1928"', add
label define ke09a_resduryr_lbl 1929 `"1929"', add
label define ke09a_resduryr_lbl 1930 `"1930"', add
label define ke09a_resduryr_lbl 1931 `"1931"', add
label define ke09a_resduryr_lbl 1932 `"1932"', add
label define ke09a_resduryr_lbl 1933 `"1933"', add
label define ke09a_resduryr_lbl 1934 `"1934"', add
label define ke09a_resduryr_lbl 1935 `"1935"', add
label define ke09a_resduryr_lbl 1936 `"1936"', add
label define ke09a_resduryr_lbl 1937 `"1937"', add
label define ke09a_resduryr_lbl 1938 `"1938"', add
label define ke09a_resduryr_lbl 1939 `"1939"', add
label define ke09a_resduryr_lbl 1940 `"1940"', add
label define ke09a_resduryr_lbl 1941 `"1941"', add
label define ke09a_resduryr_lbl 1942 `"1942"', add
label define ke09a_resduryr_lbl 1943 `"1943"', add
label define ke09a_resduryr_lbl 1944 `"1944"', add
label define ke09a_resduryr_lbl 1945 `"1945"', add
label define ke09a_resduryr_lbl 1946 `"1946"', add
label define ke09a_resduryr_lbl 1947 `"1947"', add
label define ke09a_resduryr_lbl 1948 `"1948"', add
label define ke09a_resduryr_lbl 1949 `"1949"', add
label define ke09a_resduryr_lbl 1950 `"1950"', add
label define ke09a_resduryr_lbl 1951 `"1951"', add
label define ke09a_resduryr_lbl 1952 `"1952"', add
label define ke09a_resduryr_lbl 1953 `"1953"', add
label define ke09a_resduryr_lbl 1954 `"1954"', add
label define ke09a_resduryr_lbl 1955 `"1955"', add
label define ke09a_resduryr_lbl 1956 `"1956"', add
label define ke09a_resduryr_lbl 1957 `"1957"', add
label define ke09a_resduryr_lbl 1958 `"1958"', add
label define ke09a_resduryr_lbl 1959 `"1959"', add
label define ke09a_resduryr_lbl 1960 `"1960"', add
label define ke09a_resduryr_lbl 1961 `"1961"', add
label define ke09a_resduryr_lbl 1962 `"1962"', add
label define ke09a_resduryr_lbl 1963 `"1963"', add
label define ke09a_resduryr_lbl 1964 `"1964"', add
label define ke09a_resduryr_lbl 1965 `"1965"', add
label define ke09a_resduryr_lbl 1966 `"1966"', add
label define ke09a_resduryr_lbl 1967 `"1967"', add
label define ke09a_resduryr_lbl 1968 `"1968"', add
label define ke09a_resduryr_lbl 1969 `"1969"', add
label define ke09a_resduryr_lbl 1970 `"1970"', add
label define ke09a_resduryr_lbl 1971 `"1971"', add
label define ke09a_resduryr_lbl 1972 `"1972"', add
label define ke09a_resduryr_lbl 1973 `"1973"', add
label define ke09a_resduryr_lbl 1974 `"1974"', add
label define ke09a_resduryr_lbl 1975 `"1975"', add
label define ke09a_resduryr_lbl 1976 `"1976"', add
label define ke09a_resduryr_lbl 1977 `"1977"', add
label define ke09a_resduryr_lbl 1978 `"1978"', add
label define ke09a_resduryr_lbl 1979 `"1979"', add
label define ke09a_resduryr_lbl 1980 `"1980"', add
label define ke09a_resduryr_lbl 1981 `"1981"', add
label define ke09a_resduryr_lbl 1982 `"1982"', add
label define ke09a_resduryr_lbl 1983 `"1983"', add
label define ke09a_resduryr_lbl 1984 `"1984"', add
label define ke09a_resduryr_lbl 1985 `"1985"', add
label define ke09a_resduryr_lbl 1986 `"1986"', add
label define ke09a_resduryr_lbl 1987 `"1987"', add
label define ke09a_resduryr_lbl 1988 `"1988"', add
label define ke09a_resduryr_lbl 1989 `"1989"', add
label define ke09a_resduryr_lbl 1990 `"1990"', add
label define ke09a_resduryr_lbl 1991 `"1991"', add
label define ke09a_resduryr_lbl 1992 `"1992"', add
label define ke09a_resduryr_lbl 1993 `"1993"', add
label define ke09a_resduryr_lbl 1994 `"1994"', add
label define ke09a_resduryr_lbl 1995 `"1995"', add
label define ke09a_resduryr_lbl 1996 `"1996"', add
label define ke09a_resduryr_lbl 1997 `"1997"', add
label define ke09a_resduryr_lbl 1998 `"1998"', add
label define ke09a_resduryr_lbl 1999 `"1999"', add
label define ke09a_resduryr_lbl 2000 `"2000"', add
label define ke09a_resduryr_lbl 2001 `"2001"', add
label define ke09a_resduryr_lbl 2002 `"2002"', add
label define ke09a_resduryr_lbl 2003 `"2003"', add
label define ke09a_resduryr_lbl 2004 `"2004"', add
label define ke09a_resduryr_lbl 2005 `"2005"', add
label define ke09a_resduryr_lbl 2006 `"2006"', add
label define ke09a_resduryr_lbl 2007 `"2007"', add
label define ke09a_resduryr_lbl 2008 `"2008"', add
label define ke09a_resduryr_lbl 2009 `"2009"', add
label values ke09a_resduryr ke09a_resduryr_lbl

label define ke09a_mortfath_lbl 1 `"Yes"'
label define ke09a_mortfath_lbl 2 `"No"', add
label define ke09a_mortfath_lbl 8 `"Unknown"', add
label values ke09a_mortfath ke09a_mortfath_lbl

label define ke09a_mortmoth_lbl 1 `"Yes"'
label define ke09a_mortmoth_lbl 2 `"No"', add
label define ke09a_mortmoth_lbl 8 `"Unknown"', add
label values ke09a_mortmoth ke09a_mortmoth_lbl

label define ke09a_chbornm_lbl 00 `"0"'
label define ke09a_chbornm_lbl 01 `"1"', add
label define ke09a_chbornm_lbl 02 `"2"', add
label define ke09a_chbornm_lbl 03 `"3"', add
label define ke09a_chbornm_lbl 04 `"4"', add
label define ke09a_chbornm_lbl 05 `"5"', add
label define ke09a_chbornm_lbl 06 `"6"', add
label define ke09a_chbornm_lbl 07 `"7"', add
label define ke09a_chbornm_lbl 08 `"8"', add
label define ke09a_chbornm_lbl 09 `"9"', add
label define ke09a_chbornm_lbl 10 `"10"', add
label define ke09a_chbornm_lbl 11 `"11"', add
label define ke09a_chbornm_lbl 12 `"12"', add
label define ke09a_chbornm_lbl 13 `"13"', add
label define ke09a_chbornm_lbl 14 `"14"', add
label define ke09a_chbornm_lbl 15 `"15+"', add
label define ke09a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values ke09a_chbornm ke09a_chbornm_lbl

label define ke09a_chbornf_lbl 00 `"0"'
label define ke09a_chbornf_lbl 01 `"1"', add
label define ke09a_chbornf_lbl 02 `"2"', add
label define ke09a_chbornf_lbl 03 `"3"', add
label define ke09a_chbornf_lbl 04 `"4"', add
label define ke09a_chbornf_lbl 05 `"5"', add
label define ke09a_chbornf_lbl 06 `"6"', add
label define ke09a_chbornf_lbl 07 `"7"', add
label define ke09a_chbornf_lbl 08 `"8"', add
label define ke09a_chbornf_lbl 09 `"9"', add
label define ke09a_chbornf_lbl 10 `"10"', add
label define ke09a_chbornf_lbl 11 `"11"', add
label define ke09a_chbornf_lbl 12 `"12"', add
label define ke09a_chbornf_lbl 13 `"13"', add
label define ke09a_chbornf_lbl 14 `"14"', add
label define ke09a_chbornf_lbl 15 `"15+"', add
label define ke09a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values ke09a_chbornf ke09a_chbornf_lbl

label define ke09a_homechm_lbl 00 `"0"'
label define ke09a_homechm_lbl 01 `"1"', add
label define ke09a_homechm_lbl 02 `"2"', add
label define ke09a_homechm_lbl 03 `"3"', add
label define ke09a_homechm_lbl 04 `"4"', add
label define ke09a_homechm_lbl 05 `"5"', add
label define ke09a_homechm_lbl 06 `"6"', add
label define ke09a_homechm_lbl 07 `"7"', add
label define ke09a_homechm_lbl 08 `"8"', add
label define ke09a_homechm_lbl 09 `"9"', add
label define ke09a_homechm_lbl 10 `"10+"', add
label define ke09a_homechm_lbl 99 `"NIU (not in universe)"', add
label values ke09a_homechm ke09a_homechm_lbl

label define ke09a_homechf_lbl 00 `"0"'
label define ke09a_homechf_lbl 01 `"1"', add
label define ke09a_homechf_lbl 02 `"2"', add
label define ke09a_homechf_lbl 03 `"3"', add
label define ke09a_homechf_lbl 04 `"4"', add
label define ke09a_homechf_lbl 05 `"5"', add
label define ke09a_homechf_lbl 06 `"6"', add
label define ke09a_homechf_lbl 07 `"7"', add
label define ke09a_homechf_lbl 08 `"8"', add
label define ke09a_homechf_lbl 09 `"9"', add
label define ke09a_homechf_lbl 10 `"10+"', add
label define ke09a_homechf_lbl 99 `"NIU (not in universe)"', add
label values ke09a_homechf ke09a_homechf_lbl

label define ke09a_chawaym_lbl 00 `"0"'
label define ke09a_chawaym_lbl 01 `"1"', add
label define ke09a_chawaym_lbl 02 `"2"', add
label define ke09a_chawaym_lbl 03 `"3"', add
label define ke09a_chawaym_lbl 04 `"4"', add
label define ke09a_chawaym_lbl 05 `"5"', add
label define ke09a_chawaym_lbl 06 `"6"', add
label define ke09a_chawaym_lbl 07 `"7"', add
label define ke09a_chawaym_lbl 08 `"8"', add
label define ke09a_chawaym_lbl 09 `"9"', add
label define ke09a_chawaym_lbl 10 `"10"', add
label define ke09a_chawaym_lbl 11 `"11+"', add
label define ke09a_chawaym_lbl 99 `"NIU (not in universe)"', add
label values ke09a_chawaym ke09a_chawaym_lbl

label define ke09a_chawayf_lbl 00 `"0"'
label define ke09a_chawayf_lbl 01 `"1"', add
label define ke09a_chawayf_lbl 02 `"2"', add
label define ke09a_chawayf_lbl 03 `"3"', add
label define ke09a_chawayf_lbl 04 `"4"', add
label define ke09a_chawayf_lbl 05 `"5"', add
label define ke09a_chawayf_lbl 06 `"6"', add
label define ke09a_chawayf_lbl 07 `"7"', add
label define ke09a_chawayf_lbl 08 `"8"', add
label define ke09a_chawayf_lbl 09 `"9"', add
label define ke09a_chawayf_lbl 10 `"10"', add
label define ke09a_chawayf_lbl 11 `"11+"', add
label define ke09a_chawayf_lbl 99 `"NIU (not in universe)"', add
label values ke09a_chawayf ke09a_chawayf_lbl

label define ke09a_chdeadm_lbl 00 `"0"'
label define ke09a_chdeadm_lbl 01 `"1"', add
label define ke09a_chdeadm_lbl 02 `"2"', add
label define ke09a_chdeadm_lbl 03 `"3"', add
label define ke09a_chdeadm_lbl 04 `"4"', add
label define ke09a_chdeadm_lbl 05 `"5"', add
label define ke09a_chdeadm_lbl 06 `"6"', add
label define ke09a_chdeadm_lbl 07 `"7"', add
label define ke09a_chdeadm_lbl 08 `"8"', add
label define ke09a_chdeadm_lbl 09 `"9"', add
label define ke09a_chdeadm_lbl 10 `"10"', add
label define ke09a_chdeadm_lbl 11 `"11+"', add
label define ke09a_chdeadm_lbl 99 `"NIU (not in universe)"', add
label values ke09a_chdeadm ke09a_chdeadm_lbl

label define ke09a_chdeadf_lbl 00 `"0"'
label define ke09a_chdeadf_lbl 01 `"1"', add
label define ke09a_chdeadf_lbl 02 `"2"', add
label define ke09a_chdeadf_lbl 03 `"3"', add
label define ke09a_chdeadf_lbl 04 `"4"', add
label define ke09a_chdeadf_lbl 05 `"5"', add
label define ke09a_chdeadf_lbl 06 `"6"', add
label define ke09a_chdeadf_lbl 07 `"7"', add
label define ke09a_chdeadf_lbl 08 `"8"', add
label define ke09a_chdeadf_lbl 09 `"9"', add
label define ke09a_chdeadf_lbl 10 `"10"', add
label define ke09a_chdeadf_lbl 11 `"11+"', add
label define ke09a_chdeadf_lbl 99 `"NIU (not in universe)"', add
label values ke09a_chdeadf ke09a_chdeadf_lbl

label define ke09a_lbchmo_lbl 01 `"January"'
label define ke09a_lbchmo_lbl 02 `"February"', add
label define ke09a_lbchmo_lbl 03 `"March"', add
label define ke09a_lbchmo_lbl 04 `"April"', add
label define ke09a_lbchmo_lbl 05 `"May"', add
label define ke09a_lbchmo_lbl 06 `"June"', add
label define ke09a_lbchmo_lbl 07 `"July"', add
label define ke09a_lbchmo_lbl 08 `"August"', add
label define ke09a_lbchmo_lbl 09 `"September"', add
label define ke09a_lbchmo_lbl 10 `"October"', add
label define ke09a_lbchmo_lbl 11 `"November"', add
label define ke09a_lbchmo_lbl 12 `"December"', add
label define ke09a_lbchmo_lbl 98 `"Unknown"', add
label define ke09a_lbchmo_lbl 99 `"NIU (not in universe)"', add
label values ke09a_lbchmo ke09a_lbchmo_lbl

label define ke09a_lbchyr_lbl 1934 `"1934 or earlier"'
label define ke09a_lbchyr_lbl 1935 `"1935"', add
label define ke09a_lbchyr_lbl 1936 `"1936"', add
label define ke09a_lbchyr_lbl 1937 `"1937"', add
label define ke09a_lbchyr_lbl 1938 `"1938"', add
label define ke09a_lbchyr_lbl 1939 `"1939"', add
label define ke09a_lbchyr_lbl 1940 `"1940"', add
label define ke09a_lbchyr_lbl 1941 `"1941"', add
label define ke09a_lbchyr_lbl 1942 `"1942"', add
label define ke09a_lbchyr_lbl 1943 `"1943"', add
label define ke09a_lbchyr_lbl 1944 `"1944"', add
label define ke09a_lbchyr_lbl 1945 `"1945"', add
label define ke09a_lbchyr_lbl 1946 `"1946"', add
label define ke09a_lbchyr_lbl 1947 `"1947"', add
label define ke09a_lbchyr_lbl 1948 `"1948"', add
label define ke09a_lbchyr_lbl 1949 `"1949"', add
label define ke09a_lbchyr_lbl 1950 `"1950"', add
label define ke09a_lbchyr_lbl 1951 `"1951"', add
label define ke09a_lbchyr_lbl 1952 `"1952"', add
label define ke09a_lbchyr_lbl 1953 `"1953"', add
label define ke09a_lbchyr_lbl 1954 `"1954"', add
label define ke09a_lbchyr_lbl 1955 `"1955"', add
label define ke09a_lbchyr_lbl 1956 `"1956"', add
label define ke09a_lbchyr_lbl 1957 `"1957"', add
label define ke09a_lbchyr_lbl 1958 `"1958"', add
label define ke09a_lbchyr_lbl 1959 `"1959"', add
label define ke09a_lbchyr_lbl 1960 `"1960"', add
label define ke09a_lbchyr_lbl 1961 `"1961"', add
label define ke09a_lbchyr_lbl 1962 `"1962"', add
label define ke09a_lbchyr_lbl 1963 `"1963"', add
label define ke09a_lbchyr_lbl 1964 `"1964"', add
label define ke09a_lbchyr_lbl 1965 `"1965"', add
label define ke09a_lbchyr_lbl 1966 `"1966"', add
label define ke09a_lbchyr_lbl 1967 `"1967"', add
label define ke09a_lbchyr_lbl 1968 `"1968"', add
label define ke09a_lbchyr_lbl 1969 `"1969"', add
label define ke09a_lbchyr_lbl 1970 `"1970"', add
label define ke09a_lbchyr_lbl 1971 `"1971"', add
label define ke09a_lbchyr_lbl 1972 `"1972"', add
label define ke09a_lbchyr_lbl 1973 `"1973"', add
label define ke09a_lbchyr_lbl 1974 `"1974"', add
label define ke09a_lbchyr_lbl 1975 `"1975"', add
label define ke09a_lbchyr_lbl 1976 `"1976"', add
label define ke09a_lbchyr_lbl 1977 `"1977"', add
label define ke09a_lbchyr_lbl 1978 `"1978"', add
label define ke09a_lbchyr_lbl 1979 `"1979"', add
label define ke09a_lbchyr_lbl 1980 `"1980"', add
label define ke09a_lbchyr_lbl 1981 `"1981"', add
label define ke09a_lbchyr_lbl 1982 `"1982"', add
label define ke09a_lbchyr_lbl 1983 `"1983"', add
label define ke09a_lbchyr_lbl 1984 `"1984"', add
label define ke09a_lbchyr_lbl 1985 `"1985"', add
label define ke09a_lbchyr_lbl 1986 `"1986"', add
label define ke09a_lbchyr_lbl 1987 `"1987"', add
label define ke09a_lbchyr_lbl 1988 `"1988"', add
label define ke09a_lbchyr_lbl 1989 `"1989"', add
label define ke09a_lbchyr_lbl 1990 `"1990"', add
label define ke09a_lbchyr_lbl 1991 `"1991"', add
label define ke09a_lbchyr_lbl 1992 `"1992"', add
label define ke09a_lbchyr_lbl 1993 `"1993"', add
label define ke09a_lbchyr_lbl 1994 `"1994"', add
label define ke09a_lbchyr_lbl 1995 `"1995"', add
label define ke09a_lbchyr_lbl 1996 `"1996"', add
label define ke09a_lbchyr_lbl 1997 `"1997"', add
label define ke09a_lbchyr_lbl 1998 `"1998"', add
label define ke09a_lbchyr_lbl 1999 `"1999"', add
label define ke09a_lbchyr_lbl 2000 `"2000"', add
label define ke09a_lbchyr_lbl 2001 `"2001"', add
label define ke09a_lbchyr_lbl 2002 `"2002"', add
label define ke09a_lbchyr_lbl 2003 `"2003"', add
label define ke09a_lbchyr_lbl 2004 `"2004"', add
label define ke09a_lbchyr_lbl 2005 `"2005"', add
label define ke09a_lbchyr_lbl 2006 `"2006"', add
label define ke09a_lbchyr_lbl 2007 `"2007"', add
label define ke09a_lbchyr_lbl 2008 `"2008"', add
label define ke09a_lbchyr_lbl 2009 `"2009"', add
label define ke09a_lbchyr_lbl 9998 `"Unknown"', add
label define ke09a_lbchyr_lbl 9999 `"NIU (not in universe)"', add
label values ke09a_lbchyr ke09a_lbchyr_lbl

label define ke09a_lbnotif_lbl 1 `"Yes"'
label define ke09a_lbnotif_lbl 2 `"No"', add
label define ke09a_lbnotif_lbl 8 `"Unknown"', add
label define ke09a_lbnotif_lbl 9 `"NIU (not in universe)"', add
label values ke09a_lbnotif ke09a_lbnotif_lbl

label define ke09a_lbchsex_lbl 1 `"Male"'
label define ke09a_lbchsex_lbl 2 `"Female"', add
label define ke09a_lbchsex_lbl 3 `"Male twins"', add
label define ke09a_lbchsex_lbl 4 `"Female twins"', add
label define ke09a_lbchsex_lbl 5 `"Male-female twins"', add
label define ke09a_lbchsex_lbl 6 `"Multiple births"', add
label define ke09a_lbchsex_lbl 9 `"NIU (not in universe)"', add
label values ke09a_lbchsex ke09a_lbchsex_lbl

label define ke09a_lbchlive_lbl 1 `"Yes"'
label define ke09a_lbchlive_lbl 2 `"No"', add
label define ke09a_lbchlive_lbl 3 `"Both twins"', add
label define ke09a_lbchlive_lbl 4 `"All of the multiples"', add
label define ke09a_lbchlive_lbl 5 `"One or more twin or multiple died"', add
label define ke09a_lbchlive_lbl 9 `"NIU (not in universe)"', add
label values ke09a_lbchlive ke09a_lbchlive_lbl

label define ke09a_disab1_lbl 1 `"Visual"'
label define ke09a_disab1_lbl 2 `"Hearing"', add
label define ke09a_disab1_lbl 3 `"Speech"', add
label define ke09a_disab1_lbl 4 `"Physical"', add
label define ke09a_disab1_lbl 5 `"Mental"', add
label define ke09a_disab1_lbl 6 `"Selfcare"', add
label define ke09a_disab1_lbl 7 `"Others"', add
label define ke09a_disab1_lbl 8 `"None"', add
label values ke09a_disab1 ke09a_disab1_lbl

label define ke09a_disab2_lbl 1 `"Visual"'
label define ke09a_disab2_lbl 2 `"Hearing"', add
label define ke09a_disab2_lbl 3 `"Speech"', add
label define ke09a_disab2_lbl 4 `"Physical"', add
label define ke09a_disab2_lbl 5 `"Mental"', add
label define ke09a_disab2_lbl 6 `"Selfcare"', add
label define ke09a_disab2_lbl 7 `"Others"', add
label define ke09a_disab2_lbl 8 `"None"', add
label values ke09a_disab2 ke09a_disab2_lbl

label define ke09a_disab3_lbl 1 `"Visual"'
label define ke09a_disab3_lbl 2 `"Hearing"', add
label define ke09a_disab3_lbl 3 `"Speech"', add
label define ke09a_disab3_lbl 4 `"Physical"', add
label define ke09a_disab3_lbl 5 `"Mental"', add
label define ke09a_disab3_lbl 6 `"Selfcare"', add
label define ke09a_disab3_lbl 7 `"Others"', add
label define ke09a_disab3_lbl 8 `"None"', add
label values ke09a_disab3 ke09a_disab3_lbl

label define ke09a_wkdisab_lbl 1 `"Yes"'
label define ke09a_wkdisab_lbl 2 `"No"', add
label define ke09a_wkdisab_lbl 8 `"Unknown"', add
label define ke09a_wkdisab_lbl 9 `"NIU (not in universe)"', add
label values ke09a_wkdisab ke09a_wkdisab_lbl

label define ke09a_school_lbl 1 `"At school"'
label define ke09a_school_lbl 2 `"Left school"', add
label define ke09a_school_lbl 3 `"Never went to school"', add
label define ke09a_school_lbl 8 `"Unknown"', add
label define ke09a_school_lbl 9 `"NIU (not in universe)"', add
label values ke09a_school ke09a_school_lbl

label define ke09a_edlevel_lbl 01 `"Standard 1"'
label define ke09a_edlevel_lbl 02 `"Standard 2"', add
label define ke09a_edlevel_lbl 03 `"Standard 3"', add
label define ke09a_edlevel_lbl 04 `"Standard 4"', add
label define ke09a_edlevel_lbl 05 `"Standard 5"', add
label define ke09a_edlevel_lbl 06 `"Standard 6"', add
label define ke09a_edlevel_lbl 07 `"Standard 7"', add
label define ke09a_edlevel_lbl 08 `"Standard 8"', add
label define ke09a_edlevel_lbl 09 `"Form 1"', add
label define ke09a_edlevel_lbl 10 `"Form 2"', add
label define ke09a_edlevel_lbl 11 `"Form 3"', add
label define ke09a_edlevel_lbl 12 `"Form 4"', add
label define ke09a_edlevel_lbl 13 `"Form 5"', add
label define ke09a_edlevel_lbl 14 `"Form 6"', add
label define ke09a_edlevel_lbl 15 `"Incomplete tertiary college"', add
label define ke09a_edlevel_lbl 16 `"Completed college"', add
label define ke09a_edlevel_lbl 17 `"Incomplete undergraduate"', add
label define ke09a_edlevel_lbl 18 `"Completed undergraduate"', add
label define ke09a_edlevel_lbl 19 `"Incomplete Masters/PhD"', add
label define ke09a_edlevel_lbl 20 `"Completed Masters/PhD"', add
label define ke09a_edlevel_lbl 21 `"Incomplete basic literacy"', add
label define ke09a_edlevel_lbl 22 `"Completed basic literacy"', add
label define ke09a_edlevel_lbl 23 `"Incomplete polytechnic"', add
label define ke09a_edlevel_lbl 24 `"Completed polytechnic"', add
label define ke09a_edlevel_lbl 25 `"Incomplete Madrassa"', add
label define ke09a_edlevel_lbl 26 `"Completed Madrassa"', add
label define ke09a_edlevel_lbl 96 `"Pre-primary"', add
label define ke09a_edlevel_lbl 97 `"Never attended"', add
label define ke09a_edlevel_lbl 98 `"Unknown"', add
label define ke09a_edlevel_lbl 99 `"NIU (not in universe)"', add
label values ke09a_edlevel ke09a_edlevel_lbl

label define ke09a_edattan_lbl 01 `"Standard 1"'
label define ke09a_edattan_lbl 02 `"Standard 2"', add
label define ke09a_edattan_lbl 03 `"Standard 3"', add
label define ke09a_edattan_lbl 04 `"Standard 4"', add
label define ke09a_edattan_lbl 05 `"Standard 5"', add
label define ke09a_edattan_lbl 06 `"Standard 6"', add
label define ke09a_edattan_lbl 07 `"Standard 7"', add
label define ke09a_edattan_lbl 08 `"Standard 8"', add
label define ke09a_edattan_lbl 09 `"Form 1"', add
label define ke09a_edattan_lbl 10 `"Form 2"', add
label define ke09a_edattan_lbl 11 `"Form 3"', add
label define ke09a_edattan_lbl 12 `"Form 4"', add
label define ke09a_edattan_lbl 13 `"Form 5"', add
label define ke09a_edattan_lbl 14 `"Form 6"', add
label define ke09a_edattan_lbl 16 `"Completed college"', add
label define ke09a_edattan_lbl 18 `"Completed undergraduate"', add
label define ke09a_edattan_lbl 20 `"Completed Masters/PhD"', add
label define ke09a_edattan_lbl 22 `"Completed basic literacy"', add
label define ke09a_edattan_lbl 24 `"Completed polytechnic"', add
label define ke09a_edattan_lbl 26 `"Completed Madrassa"', add
label define ke09a_edattan_lbl 96 `"Pre-primary"', add
label define ke09a_edattan_lbl 97 `"Never attended"', add
label define ke09a_edattan_lbl 98 `"Unknown"', add
label define ke09a_edattan_lbl 99 `"NIU (not in universe)"', add
label values ke09a_edattan ke09a_edattan_lbl

label define ke09a_empstat_lbl 01 `"Worked for pay"'
label define ke09a_empstat_lbl 02 `"On leave"', add
label define ke09a_empstat_lbl 03 `"Sick leave"', add
label define ke09a_empstat_lbl 04 `"Own - family business"', add
label define ke09a_empstat_lbl 05 `"Own - family agriculture holding"', add
label define ke09a_empstat_lbl 06 `"Intern/Apprentice"', add
label define ke09a_empstat_lbl 07 `"Volunteer"', add
label define ke09a_empstat_lbl 08 `"Seeking work (action taken)"', add
label define ke09a_empstat_lbl 09 `"Seeking work (no action taken)"', add
label define ke09a_empstat_lbl 10 `"No work available"', add
label define ke09a_empstat_lbl 11 `"Retired"', add
label define ke09a_empstat_lbl 12 `"Homemaker"', add
label define ke09a_empstat_lbl 13 `"Full time student"', add
label define ke09a_empstat_lbl 14 `"Incapacitated"', add
label define ke09a_empstat_lbl 15 `"Other"', add
label define ke09a_empstat_lbl 99 `"NIU (not in universe)"', add
label values ke09a_empstat ke09a_empstat_lbl

label define ke09a_empsect_lbl 01 `"Private sector"'
label define ke09a_empsect_lbl 02 `"Local authorities"', add
label define ke09a_empsect_lbl 03 `"Central government"', add
label define ke09a_empsect_lbl 04 `"TSC"', add
label define ke09a_empsect_lbl 05 `"State-owned enterprise"', add
label define ke09a_empsect_lbl 06 `"International NGO"', add
label define ke09a_empsect_lbl 07 `"Local NGO"', add
label define ke09a_empsect_lbl 08 `"Faith-based organisation"', add
label define ke09a_empsect_lbl 09 `"Self modern"', add
label define ke09a_empsect_lbl 10 `"Informal Sector ('Jua Kali')"', add
label define ke09a_empsect_lbl 11 `"Self employed - informal"', add
label define ke09a_empsect_lbl 12 `"Small scale agriculture"', add
label define ke09a_empsect_lbl 13 `"Self small scale agriculture"', add
label define ke09a_empsect_lbl 14 `"Pastoralist employed"', add
label define ke09a_empsect_lbl 15 `"Self pastoralist"', add
label define ke09a_empsect_lbl 16 `"Private household"', add
label define ke09a_empsect_lbl 17 `"Other"', add
label define ke09a_empsect_lbl 99 `"NIU (not in universe)"', add
label values ke09a_empsect ke09a_empsect_lbl

label define ke09a_hrswkwk_lbl 000 `"0"'
label define ke09a_hrswkwk_lbl 001 `"1"', add
label define ke09a_hrswkwk_lbl 002 `"2"', add
label define ke09a_hrswkwk_lbl 003 `"3"', add
label define ke09a_hrswkwk_lbl 004 `"4"', add
label define ke09a_hrswkwk_lbl 005 `"5"', add
label define ke09a_hrswkwk_lbl 006 `"6"', add
label define ke09a_hrswkwk_lbl 007 `"7"', add
label define ke09a_hrswkwk_lbl 008 `"8"', add
label define ke09a_hrswkwk_lbl 009 `"9"', add
label define ke09a_hrswkwk_lbl 010 `"10"', add
label define ke09a_hrswkwk_lbl 011 `"11"', add
label define ke09a_hrswkwk_lbl 012 `"12"', add
label define ke09a_hrswkwk_lbl 013 `"13"', add
label define ke09a_hrswkwk_lbl 014 `"14"', add
label define ke09a_hrswkwk_lbl 015 `"15"', add
label define ke09a_hrswkwk_lbl 016 `"16"', add
label define ke09a_hrswkwk_lbl 017 `"17"', add
label define ke09a_hrswkwk_lbl 018 `"18"', add
label define ke09a_hrswkwk_lbl 019 `"19"', add
label define ke09a_hrswkwk_lbl 020 `"20"', add
label define ke09a_hrswkwk_lbl 021 `"21"', add
label define ke09a_hrswkwk_lbl 022 `"22"', add
label define ke09a_hrswkwk_lbl 023 `"23"', add
label define ke09a_hrswkwk_lbl 024 `"24"', add
label define ke09a_hrswkwk_lbl 025 `"25"', add
label define ke09a_hrswkwk_lbl 026 `"26"', add
label define ke09a_hrswkwk_lbl 027 `"27"', add
label define ke09a_hrswkwk_lbl 028 `"28"', add
label define ke09a_hrswkwk_lbl 029 `"29"', add
label define ke09a_hrswkwk_lbl 030 `"30"', add
label define ke09a_hrswkwk_lbl 031 `"31"', add
label define ke09a_hrswkwk_lbl 032 `"32"', add
label define ke09a_hrswkwk_lbl 033 `"33"', add
label define ke09a_hrswkwk_lbl 034 `"34"', add
label define ke09a_hrswkwk_lbl 035 `"35"', add
label define ke09a_hrswkwk_lbl 036 `"36"', add
label define ke09a_hrswkwk_lbl 037 `"37"', add
label define ke09a_hrswkwk_lbl 038 `"38"', add
label define ke09a_hrswkwk_lbl 039 `"39"', add
label define ke09a_hrswkwk_lbl 040 `"40"', add
label define ke09a_hrswkwk_lbl 041 `"41"', add
label define ke09a_hrswkwk_lbl 042 `"42"', add
label define ke09a_hrswkwk_lbl 043 `"43"', add
label define ke09a_hrswkwk_lbl 044 `"44"', add
label define ke09a_hrswkwk_lbl 045 `"45"', add
label define ke09a_hrswkwk_lbl 046 `"46"', add
label define ke09a_hrswkwk_lbl 047 `"47"', add
label define ke09a_hrswkwk_lbl 048 `"48"', add
label define ke09a_hrswkwk_lbl 049 `"49"', add
label define ke09a_hrswkwk_lbl 050 `"50"', add
label define ke09a_hrswkwk_lbl 051 `"51"', add
label define ke09a_hrswkwk_lbl 052 `"52"', add
label define ke09a_hrswkwk_lbl 053 `"53"', add
label define ke09a_hrswkwk_lbl 054 `"54"', add
label define ke09a_hrswkwk_lbl 055 `"55"', add
label define ke09a_hrswkwk_lbl 056 `"56"', add
label define ke09a_hrswkwk_lbl 057 `"57"', add
label define ke09a_hrswkwk_lbl 058 `"58"', add
label define ke09a_hrswkwk_lbl 059 `"59"', add
label define ke09a_hrswkwk_lbl 060 `"60"', add
label define ke09a_hrswkwk_lbl 061 `"61"', add
label define ke09a_hrswkwk_lbl 062 `"62"', add
label define ke09a_hrswkwk_lbl 063 `"63"', add
label define ke09a_hrswkwk_lbl 064 `"64"', add
label define ke09a_hrswkwk_lbl 065 `"65"', add
label define ke09a_hrswkwk_lbl 066 `"66"', add
label define ke09a_hrswkwk_lbl 067 `"67"', add
label define ke09a_hrswkwk_lbl 068 `"68"', add
label define ke09a_hrswkwk_lbl 069 `"69"', add
label define ke09a_hrswkwk_lbl 070 `"70"', add
label define ke09a_hrswkwk_lbl 071 `"71"', add
label define ke09a_hrswkwk_lbl 072 `"72"', add
label define ke09a_hrswkwk_lbl 073 `"73"', add
label define ke09a_hrswkwk_lbl 074 `"74"', add
label define ke09a_hrswkwk_lbl 075 `"75"', add
label define ke09a_hrswkwk_lbl 076 `"76"', add
label define ke09a_hrswkwk_lbl 077 `"77"', add
label define ke09a_hrswkwk_lbl 078 `"78"', add
label define ke09a_hrswkwk_lbl 079 `"79"', add
label define ke09a_hrswkwk_lbl 080 `"80"', add
label define ke09a_hrswkwk_lbl 081 `"81"', add
label define ke09a_hrswkwk_lbl 082 `"82"', add
label define ke09a_hrswkwk_lbl 083 `"83"', add
label define ke09a_hrswkwk_lbl 084 `"84"', add
label define ke09a_hrswkwk_lbl 085 `"85"', add
label define ke09a_hrswkwk_lbl 086 `"86"', add
label define ke09a_hrswkwk_lbl 087 `"87"', add
label define ke09a_hrswkwk_lbl 088 `"88"', add
label define ke09a_hrswkwk_lbl 089 `"89"', add
label define ke09a_hrswkwk_lbl 090 `"90"', add
label define ke09a_hrswkwk_lbl 091 `"91"', add
label define ke09a_hrswkwk_lbl 092 `"92"', add
label define ke09a_hrswkwk_lbl 093 `"93"', add
label define ke09a_hrswkwk_lbl 094 `"94"', add
label define ke09a_hrswkwk_lbl 095 `"95"', add
label define ke09a_hrswkwk_lbl 096 `"96"', add
label define ke09a_hrswkwk_lbl 097 `"97"', add
label define ke09a_hrswkwk_lbl 098 `"98"', add
label define ke09a_hrswkwk_lbl 998 `"Unknown"', add
label define ke09a_hrswkwk_lbl 999 `"NIU (not in universe)"', add
label values ke09a_hrswkwk ke09a_hrswkwk_lbl

label define ke09a_radiosvc_lbl 1 `"Yes"'
label define ke09a_radiosvc_lbl 2 `"No"', add
label define ke09a_radiosvc_lbl 8 `"Unknown"', add
label define ke09a_radiosvc_lbl 9 `"NIU (not in universe)"', add
label values ke09a_radiosvc ke09a_radiosvc_lbl

label define ke09a_tvsvc_lbl 1 `"Yes"'
label define ke09a_tvsvc_lbl 2 `"No"', add
label define ke09a_tvsvc_lbl 8 `"Unknown"', add
label define ke09a_tvsvc_lbl 9 `"NIU (not in universe)"', add
label values ke09a_tvsvc ke09a_tvsvc_lbl

label define ke09a_cellphsv_lbl 1 `"Yes"'
label define ke09a_cellphsv_lbl 2 `"No"', add
label define ke09a_cellphsv_lbl 8 `"Unknown"', add
label define ke09a_cellphsv_lbl 9 `"NIU (not in universe)"', add
label values ke09a_cellphsv ke09a_cellphsv_lbl

label define ke09a_phonesvc_lbl 1 `"Yes"'
label define ke09a_phonesvc_lbl 2 `"No"', add
label define ke09a_phonesvc_lbl 8 `"Unknown"', add
label define ke09a_phonesvc_lbl 9 `"NIU (not in universe)"', add
label values ke09a_phonesvc ke09a_phonesvc_lbl

label define ke09a_cptrsvc_lbl 1 `"Yes"'
label define ke09a_cptrsvc_lbl 2 `"No"', add
label define ke09a_cptrsvc_lbl 8 `"Unknown"', add
label define ke09a_cptrsvc_lbl 9 `"NIU (not in universe)"', add
label values ke09a_cptrsvc ke09a_cptrsvc_lbl

label define ke09a_webloc_lbl 01 `"Own house"'
label define ke09a_webloc_lbl 02 `"Friends house"', add
label define ke09a_webloc_lbl 03 `"Office/workplace"', add
label define ke09a_webloc_lbl 04 `"Cyber cafe"', add
label define ke09a_webloc_lbl 05 `"Community centre"', add
label define ke09a_webloc_lbl 06 `"Educational centre"', add
label define ke09a_webloc_lbl 07 `"Other"', add
label define ke09a_webloc_lbl 08 `"Mobile phones"', add
label define ke09a_webloc_lbl 98 `"Unknown"', add
label define ke09a_webloc_lbl 99 `"NIU (not in universe)"', add
label values ke09a_webloc ke09a_webloc_lbl

label define ke09a_flagp12_lbl 1 `"Imputed"'
label define ke09a_flagp12_lbl 2 `"Not imputed"', add
label values ke09a_flagp12 ke09a_flagp12_lbl

label define ke09a_flagp39_lbl 1 `"Imputed"'
label define ke09a_flagp39_lbl 2 `"Not imputed"', add
label values ke09a_flagp39 ke09a_flagp39_lbl

label define ke09a_flagfert_lbl 1 `"Imputed"'
label define ke09a_flagfert_lbl 2 `"Not imputed"', add
label values ke09a_flagfert ke09a_flagfert_lbl


