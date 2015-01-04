* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    ve01a_dwnum     22-28    ///
  byte    ve01a_hhnum     29-30    ///
  byte    ve01a_hhn       31-32    ///
  byte    ve01a_pernd     33-34    ///
  byte    ve01a_pern      35-36    ///
  byte    ve01a_fbig      37-37    ///
  byte    ve01a_state     38-39    ///
  byte    ve01a_urban     40-40    ///
  byte    ve01a_dwtype    41-42    ///
  byte    ve01a_occup     43-43    ///
  byte    ve01a_wall      44-44    ///
  byte    ve01a_roof      45-45    ///
  byte    ve01a_floor     46-46    ///
  byte    ve01a_kitch     47-47    ///
  byte    ve01a_fuelck    48-48    ///
  byte    ve01a_watsup    49-49    ///
  byte    ve01a_roomsh    50-51    ///
  byte    ve01a_sewer     52-52    ///
  byte    ve01a_phone     53-53    ///
  byte    ve01a_garbage   54-54    ///
  byte    ve01a_rooms     55-56    ///
  byte    ve01a_elect     57-57    ///
  byte    ve01a_owner     58-58    ///
  long    ve01a_rentmort  59-64    ///
  byte    ve01a_roombed   65-66    ///
  byte    ve01a_headcomp  67-67    ///
  byte    ve01a_roomshh   68-69    ///
  byte    ve01a_bike      70-70    ///
  byte    ve01a_motorcy   71-71    ///
  byte    ve01a_car       72-72    ///
  byte    ve01a_vehic     73-73    ///
  byte    ve01a_vehicn    74-75    ///
  byte    ve01a_refrig    76-76    ///
  byte    ve01a_watfilt   77-77    ///
  byte    ve01a_radio     78-78    ///
  byte    ve01a_tv        79-79    ///
  byte    ve01a_washer    80-80    ///
  byte    ve01a_dryer     81-81    ///
  byte    ve01a_watheat   82-82    ///
  byte    ve01a_aircond   83-83    ///
  byte    ve01a_microw    84-84    ///
  byte    ve01a_cell      85-85    ///
  byte    ve01a_cable     86-86    ///
  byte    ve01a_computer  87-87    ///
  byte    ve01a_internet  88-88    ///
  byte    ve01a_hhtype    89-89    ///
  byte    ve01a_crowd     90-90    ///
  byte    ve01a_dwok      91-91    ///
  byte    ve01a_servok    92-92    ///
  byte    ve01a_econdep   93-93    ///
  byte    ve01a_needs     94-94    ///
  byte    ve01a_poverty   95-95    ///
  int     pernum          96-98    ///
  float   wtper           99-106   ///
  byte    ve01a_pernum    107-108  ///
  byte    ve01a_relate    109-110  ///
  byte    ve01a_sex       111-111  ///
  byte    ve01a_agetype   112-112  ///
  int     ve01a_ageyrmo   113-115  ///
  int     ve01a_bpl       116-118  ///
  int     ve01a_arrivyr   119-122  ///
  byte    ve01a_nation    123-123  ///
  int     ve01a_indig     124-126  ///
  byte    ve01a_langind   127-127  ///
  byte    ve01a_disdeaf   128-128  ///
  byte    ve01a_disment   129-129  ///
  byte    ve01a_disarm    130-130  ///
  byte    ve01a_disleg    131-131  ///
  byte    ve01a_disoth    132-132  ///
  byte    ve01a_disnone   133-133  ///
  byte    ve01a_wheelch   134-134  ///
  int     ve01a_resprc    135-137  ///
  byte    ve01a_lit       138-138  ///
  byte    ve01a_school    139-139  ///
  byte    ve01a_schoolty  140-140  ///
  byte    ve01a_edlev     141-142  ///
  byte    ve01a_edgrade   143-144  ///
  int     ve01a_edattan   145-147  ///
  int     ve01a_degree    148-150  ///
  byte    ve01a_degreeg   151-151  ///
  byte    ve01a_marst     152-152  ///
  byte    ve01a_empstat   153-154  ///
  byte    ve01a_workpaid  155-155  ///
  int     ve01a_occ       156-158  ///
  int     ve01a_ind       159-161  ///
  byte    ve01a_empsize   162-162  ///
  byte    ve01a_empsect   163-163  ///
  byte    ve01a_mercant   164-164  ///
  byte    ve01a_classwk   165-165  ///
  byte    ve01a_occtrain  166-166  ///
  byte    ve01a_wrkhrs    167-168  ///
  long    ve01a_inc       169-174  ///
  int     ve01a_incinv    175-178  ///
  long    ve01a_incpen    179-184  ///
  long    ve01a_incret    185-190  ///
  int     ve01a_incsch    191-193  ///
  int     ve01a_incunem   194-196  ///
  int     ve01a_incfood   197-199  ///
  long    ve01a_incoth    200-205  ///
  byte    ve01a_incnone   206-206  ///
  byte    ve01a_chborn    207-208  ///
  byte    ve01a_lastbirm  209-210  ///
  int     ve01a_lastbiry  211-214  ///
  byte    ve01a_chliv     215-216  ///
  int     ve01a_age       217-219  ///
  using `"ipumsi_00123.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var ve01a_dwnum    `"Dwelling number"'
label var ve01a_hhnum    `"Household number (within dwelling)"'
label var ve01a_hhn      `"Number of households in dwelling"'
label var ve01a_pernd    `"Number of persons in dwelling"'
label var ve01a_pern     `"Number of persons in household"'
label var ve01a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var ve01a_state    `"State"'
label var ve01a_urban    `"Urban or rural area"'
label var ve01a_dwtype   `"Type of dwelling"'
label var ve01a_occup    `"Occupancy status of the dwelling"'
label var ve01a_wall     `"Predominant construction material of walls"'
label var ve01a_roof     `"Predominant construction material of roof(s)"'
label var ve01a_floor    `"Predominant construction material of floors"'
label var ve01a_kitch    `"Location of kitchen"'
label var ve01a_fuelck   `"Fuel used for cooking"'
label var ve01a_watsup   `"Water supply"'
label var ve01a_roomsh   `"Number of rooms with showers in the dwelling"'
label var ve01a_sewer    `"Removal of excretion"'
label var ve01a_phone    `"Telephone (landline)"'
label var ve01a_garbage  `"Trash collection"'
label var ve01a_rooms    `"Number of rooms in the dwelling"'
label var ve01a_elect    `"Electrical service"'
label var ve01a_owner    `"Ownership of the dwelling"'
label var ve01a_rentmort `"Monthly mortgage and rent payment"'
label var ve01a_roombed  `"Number of rooms for sleeping"'
label var ve01a_headcomp `"Household head has a companion"'
label var ve01a_roomshh  `"Number of rooms with a tub or shower in the household"'
label var ve01a_bike     `"Has a bicycle"'
label var ve01a_motorcy  `"Has a motorcycle"'
label var ve01a_car      `"Has a car"'
label var ve01a_vehic    `"Have any vehicle"'
label var ve01a_vehicn   `"Number of cars"'
label var ve01a_refrig   `"Has a refrigerator"'
label var ve01a_watfilt  `"Has a water filter"'
label var ve01a_radio    `"Has a radio"'
label var ve01a_tv       `"Has a television"'
label var ve01a_washer   `"Has a washing machine"'
label var ve01a_dryer    `"Has a dryer"'
label var ve01a_watheat  `"Has a water heater"'
label var ve01a_aircond  `"Has air conditioning"'
label var ve01a_microw   `"Has a microwave"'
label var ve01a_cell     `"Has a cell phone"'
label var ve01a_cable    `"Has cable television"'
label var ve01a_computer `"Has a computer"'
label var ve01a_internet `"Has internet access"'
label var ve01a_hhtype   `"Type of household"'
label var ve01a_crowd    `"Critical crowding"'
label var ve01a_dwok     `"Household in inadequate dwelling"'
label var ve01a_servok   `"Basic services in household"'
label var ve01a_econdep  `"Households by economic dependency"'
label var ve01a_needs    `"Number of unsatisfied basic needs"'
label var ve01a_poverty  `"Poverty according to NBI"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var ve01a_pernum   `"Person number (within household)"'
label var ve01a_relate   `"Relationship to head of household"'
label var ve01a_sex      `"Sex"'
label var ve01a_agetype  `"Type of age"'
label var ve01a_ageyrmo  `"Age (in years or months)"'
label var ve01a_bpl      `"State or country of birth"'
label var ve01a_arrivyr  `"Year of arrival in country"'
label var ve01a_nation   `"Nationality"'
label var ve01a_indig    `"Indigenous identity"'
label var ve01a_langind  `"Speaks an indigenous language"'
label var ve01a_disdeaf  `"Hearing disability"'
label var ve01a_disment  `"Mental disability"'
label var ve01a_disarm   `"Disability in an upper extremity"'
label var ve01a_disleg   `"Disability in a lower extremity"'
label var ve01a_disoth   `"Other disability"'
label var ve01a_disnone  `"No disability"'
label var ve01a_wheelch  `"Uses a wheelchair"'
label var ve01a_resprc   `"State or country of residence in October 1996"'
label var ve01a_lit      `"Knows how to read and write"'
label var ve01a_school   `"School attendance"'
label var ve01a_schoolty `"Type of school"'
label var ve01a_edlev    `"Educational level"'
label var ve01a_edgrade  `"Last grade or year passed/completed"'
label var ve01a_edattan  `"Educational level attained"'
label var ve01a_degree   `"Degree obtained"'
label var ve01a_degreeg  `"Graduate degree"'
label var ve01a_marst    `"Marital status"'
label var ve01a_empstat  `"Employment status"'
label var ve01a_workpaid `"Carries out other paid activity"'
label var ve01a_occ      `"Occupation"'
label var ve01a_ind      `"Industry"'
label var ve01a_empsize  `"Size of business where person works"'
label var ve01a_empsect  `"Employment sector"'
label var ve01a_mercant  `"Mercantile registry"'
label var ve01a_classwk  `"Class of worker"'
label var ve01a_occtrain `"Occupational training"'
label var ve01a_wrkhrs   `"Hours worked"'
label var ve01a_inc      `"Labor income"'
label var ve01a_incinv   `"Income from rent or bank interest"'
label var ve01a_incpen   `"Income from pensions"'
label var ve01a_incret   `"Income from retirement"'
label var ve01a_incsch   `"Income from public or private grants"'
label var ve01a_incunem  `"Unemployment insurance"'
label var ve01a_incfood  `"Alimony"'
label var ve01a_incoth   `"Other income"'
label var ve01a_incnone  `"Has non-labor income"'
label var ve01a_chborn   `"Number of children born alive"'
label var ve01a_lastbirm `"Month of birth of last child born alive"'
label var ve01a_lastbiry `"Year of birth of last child born alive"'
label var ve01a_chliv    `"Number of children currently alive"'
label var ve01a_age      `"Age (in completed years)"'

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

label define ve01a_hhnum_lbl 01 `"1"'
label define ve01a_hhnum_lbl 02 `"2"', add
label define ve01a_hhnum_lbl 03 `"3"', add
label define ve01a_hhnum_lbl 04 `"4"', add
label define ve01a_hhnum_lbl 05 `"5"', add
label define ve01a_hhnum_lbl 06 `"6"', add
label define ve01a_hhnum_lbl 07 `"7"', add
label define ve01a_hhnum_lbl 08 `"8"', add
label define ve01a_hhnum_lbl 09 `"9"', add
label define ve01a_hhnum_lbl 10 `"10"', add
label define ve01a_hhnum_lbl 11 `"11"', add
label define ve01a_hhnum_lbl 12 `"12"', add
label define ve01a_hhnum_lbl 13 `"13"', add
label values ve01a_hhnum ve01a_hhnum_lbl

label define ve01a_hhn_lbl 01 `"1"'
label define ve01a_hhn_lbl 02 `"2"', add
label define ve01a_hhn_lbl 03 `"3"', add
label define ve01a_hhn_lbl 04 `"4"', add
label define ve01a_hhn_lbl 05 `"5"', add
label define ve01a_hhn_lbl 06 `"6"', add
label define ve01a_hhn_lbl 07 `"7"', add
label define ve01a_hhn_lbl 08 `"8"', add
label define ve01a_hhn_lbl 09 `"9"', add
label define ve01a_hhn_lbl 10 `"10"', add
label define ve01a_hhn_lbl 14 `"14"', add
label define ve01a_hhn_lbl 11 `"11"', add
label define ve01a_hhn_lbl 12 `"12"', add
label define ve01a_hhn_lbl 13 `"13"', add
label define ve01a_hhn_lbl 15 `"15"', add
label define ve01a_hhn_lbl 16 `"16"', add
label define ve01a_hhn_lbl 26 `"26"', add
label values ve01a_hhn ve01a_hhn_lbl

label define ve01a_pernd_lbl 00 `"0"'
label define ve01a_pernd_lbl 01 `"1"', add
label define ve01a_pernd_lbl 02 `"2"', add
label define ve01a_pernd_lbl 03 `"3"', add
label define ve01a_pernd_lbl 04 `"4"', add
label define ve01a_pernd_lbl 05 `"5"', add
label define ve01a_pernd_lbl 06 `"6"', add
label define ve01a_pernd_lbl 07 `"7"', add
label define ve01a_pernd_lbl 08 `"8"', add
label define ve01a_pernd_lbl 09 `"9"', add
label define ve01a_pernd_lbl 10 `"10"', add
label define ve01a_pernd_lbl 11 `"11"', add
label define ve01a_pernd_lbl 12 `"12"', add
label define ve01a_pernd_lbl 13 `"13"', add
label define ve01a_pernd_lbl 14 `"14"', add
label define ve01a_pernd_lbl 15 `"15"', add
label define ve01a_pernd_lbl 16 `"16"', add
label define ve01a_pernd_lbl 17 `"17"', add
label define ve01a_pernd_lbl 18 `"18"', add
label define ve01a_pernd_lbl 19 `"19"', add
label define ve01a_pernd_lbl 20 `"20"', add
label define ve01a_pernd_lbl 21 `"21"', add
label define ve01a_pernd_lbl 22 `"22"', add
label define ve01a_pernd_lbl 23 `"23"', add
label define ve01a_pernd_lbl 24 `"24"', add
label define ve01a_pernd_lbl 25 `"25"', add
label define ve01a_pernd_lbl 26 `"26"', add
label define ve01a_pernd_lbl 27 `"27"', add
label define ve01a_pernd_lbl 28 `"28"', add
label define ve01a_pernd_lbl 29 `"29"', add
label define ve01a_pernd_lbl 30 `"30"', add
label values ve01a_pernd ve01a_pernd_lbl

label define ve01a_pern_lbl 00 `"0"'
label define ve01a_pern_lbl 01 `"1"', add
label define ve01a_pern_lbl 02 `"2"', add
label define ve01a_pern_lbl 03 `"3"', add
label define ve01a_pern_lbl 04 `"4"', add
label define ve01a_pern_lbl 05 `"5"', add
label define ve01a_pern_lbl 06 `"6"', add
label define ve01a_pern_lbl 07 `"7"', add
label define ve01a_pern_lbl 08 `"8"', add
label define ve01a_pern_lbl 09 `"9"', add
label define ve01a_pern_lbl 10 `"10"', add
label define ve01a_pern_lbl 11 `"11"', add
label define ve01a_pern_lbl 12 `"12"', add
label define ve01a_pern_lbl 13 `"13"', add
label define ve01a_pern_lbl 14 `"14"', add
label define ve01a_pern_lbl 15 `"15"', add
label define ve01a_pern_lbl 16 `"16"', add
label define ve01a_pern_lbl 17 `"17"', add
label define ve01a_pern_lbl 18 `"18"', add
label define ve01a_pern_lbl 19 `"19"', add
label define ve01a_pern_lbl 20 `"20"', add
label define ve01a_pern_lbl 21 `"21"', add
label define ve01a_pern_lbl 22 `"22"', add
label define ve01a_pern_lbl 23 `"23"', add
label define ve01a_pern_lbl 24 `"24"', add
label define ve01a_pern_lbl 25 `"25"', add
label define ve01a_pern_lbl 26 `"26"', add
label define ve01a_pern_lbl 27 `"27"', add
label define ve01a_pern_lbl 28 `"28"', add
label define ve01a_pern_lbl 29 `"29"', add
label define ve01a_pern_lbl 30 `"30"', add
label values ve01a_pern ve01a_pern_lbl

label define ve01a_fbig_lbl 0 `"No problem"'
label define ve01a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define ve01a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values ve01a_fbig ve01a_fbig_lbl

label define ve01a_state_lbl 01 `"Federal District"'
label define ve01a_state_lbl 03 `"Anzoátegui"', add
label define ve01a_state_lbl 04 `"Apure"', add
label define ve01a_state_lbl 05 `"Aragua"', add
label define ve01a_state_lbl 06 `"Barinas"', add
label define ve01a_state_lbl 07 `"Bolivar"', add
label define ve01a_state_lbl 08 `"Carabobo"', add
label define ve01a_state_lbl 09 `"Cojedes"', add
label define ve01a_state_lbl 10 `"Delta Amacuro"', add
label define ve01a_state_lbl 11 `"Falcón"', add
label define ve01a_state_lbl 12 `"Guárico"', add
label define ve01a_state_lbl 13 `"Lara"', add
label define ve01a_state_lbl 14 `"Mérida"', add
label define ve01a_state_lbl 15 `"Miranda"', add
label define ve01a_state_lbl 16 `"Monagas"', add
label define ve01a_state_lbl 17 `"Nueva Esparta"', add
label define ve01a_state_lbl 18 `"Portuguesa"', add
label define ve01a_state_lbl 19 `"Sucre"', add
label define ve01a_state_lbl 20 `"Táchira"', add
label define ve01a_state_lbl 21 `"Trujillo"', add
label define ve01a_state_lbl 22 `"Yaracuy"', add
label define ve01a_state_lbl 23 `"Zulia"', add
label define ve01a_state_lbl 24 `"Vargas"', add
label values ve01a_state ve01a_state_lbl

label define ve01a_urban_lbl 1 `"Urban"'
label define ve01a_urban_lbl 2 `"Rural"', add
label values ve01a_urban ve01a_urban_lbl

label define ve01a_dwtype_lbl 01 `"Mansion"'
label define ve01a_dwtype_lbl 02 `"House with yard/garden"', add
label define ve01a_dwtype_lbl 03 `"House"', add
label define ve01a_dwtype_lbl 04 `"Apartment in a building"', add
label define ve01a_dwtype_lbl 05 `"Apartment in a ranch, a primary house on a ranch, or a house"', add
label define ve01a_dwtype_lbl 06 `"Tenement"', add
label define ve01a_dwtype_lbl 07 `"Hut/shack"', add
label define ve01a_dwtype_lbl 08 `"Refuge"', add
label define ve01a_dwtype_lbl 09 `"Other type"', add
label define ve01a_dwtype_lbl 11 `"Hotels, motels, or boarding houses"', add
label define ve01a_dwtype_lbl 12 `"Student residences"', add
label define ve01a_dwtype_lbl 13 `"Educational and religious institutions"', add
label define ve01a_dwtype_lbl 14 `"Hospitals, long-term care, or psychiatric centers"', add
label define ve01a_dwtype_lbl 15 `"Homes for disabled and welfare institutions"', add
label define ve01a_dwtype_lbl 16 `"Other assistance institutions for children, youth, or adults"', add
label define ve01a_dwtype_lbl 17 `"Penitentiary institutions"', add
label define ve01a_dwtype_lbl 18 `"Military institutions"', add
label define ve01a_dwtype_lbl 19 `"Other type of collective dwelling"', add
label values ve01a_dwtype ve01a_dwtype_lbl

label define ve01a_occup_lbl 1 `"Occupied"'
label define ve01a_occup_lbl 2 `"Unoccupied"', add
label define ve01a_occup_lbl 3 `"Under construction"', add
label define ve01a_occup_lbl 4 `"Seasonal (occasional)"', add
label values ve01a_occup ve01a_occup_lbl

label define ve01a_wall_lbl 0 `"NIU (not in universe)"'
label define ve01a_wall_lbl 1 `"Finished cement block or brick"', add
label define ve01a_wall_lbl 2 `"Unfinished cement block or brick"', add
label define ve01a_wall_lbl 3 `"Concrete"', add
label define ve01a_wall_lbl 4 `"Wood, formica, fiberglass and similar"', add
label define ve01a_wall_lbl 5 `"Finished abobe, mud, or stick and mud"', add
label define ve01a_wall_lbl 6 `"Unfinished abobe, mud, or stick and mud"', add
label define ve01a_wall_lbl 7 `"Other (palms, boards, or similar)"', add
label values ve01a_wall ve01a_wall_lbl

label define ve01a_roof_lbl 0 `"NIU (not in universe)"'
label define ve01a_roof_lbl 1 `"Platabanda (a metal structure covered with roofing material or ready for creating a second/third story)"', add
label define ve01a_roof_lbl 2 `"Clay tiles"', add
label define ve01a_roof_lbl 3 `"Asphalt tiles"', add
label define ve01a_roof_lbl 4 `"Metal sheeting (zinc and similar)"', add
label define ve01a_roof_lbl 5 `"Asbestos and similar"', add
label define ve01a_roof_lbl 6 `"Other (palms, boards, or similar)"', add
label values ve01a_roof ve01a_roof_lbl

label define ve01a_floor_lbl 0 `"NIU (not in universe)"'
label define ve01a_floor_lbl 1 `"Marble, tile, granite, vinyl, ceramic, brick, clay, parquet, carpet and similar"', add
label define ve01a_floor_lbl 2 `"Cement"', add
label define ve01a_floor_lbl 3 `"Earth"', add
label define ve01a_floor_lbl 4 `"Other"', add
label values ve01a_floor ve01a_floor_lbl

label define ve01a_kitch_lbl 0 `"NIU (not in universe)"'
label define ve01a_kitch_lbl 1 `"Single room"', add
label define ve01a_kitch_lbl 2 `"Living room, dining room"', add
label define ve01a_kitch_lbl 3 `"Other location"', add
label values ve01a_kitch ve01a_kitch_lbl

label define ve01a_fuelck_lbl 0 `"NIU (not in universe)"'
label define ve01a_fuelck_lbl 1 `"Natural gas"', add
label define ve01a_fuelck_lbl 2 `"Electricity"', add
label define ve01a_fuelck_lbl 3 `"Kerosene"', add
label define ve01a_fuelck_lbl 4 `"Others (firewood, charcoal, etc.)"', add
label values ve01a_fuelck ve01a_fuelck_lbl

label define ve01a_watsup_lbl 0 `"NIU (not in universe)"'
label define ve01a_watsup_lbl 1 `"Aqueduct or pipeline"', add
label define ve01a_watsup_lbl 2 `"Water truck"', add
label define ve01a_watsup_lbl 3 `"Public faucet or tank"', add
label define ve01a_watsup_lbl 4 `"Well with pipes or pump"', add
label define ve01a_watsup_lbl 5 `"Protected well or spring"', add
label define ve01a_watsup_lbl 6 `"Other means (creeks or streams, rivers, ditches, rain water)"', add
label values ve01a_watsup ve01a_watsup_lbl

label define ve01a_roomsh_lbl 00 `"0"'
label define ve01a_roomsh_lbl 01 `"1"', add
label define ve01a_roomsh_lbl 02 `"2"', add
label define ve01a_roomsh_lbl 03 `"3"', add
label define ve01a_roomsh_lbl 04 `"4"', add
label define ve01a_roomsh_lbl 05 `"5"', add
label define ve01a_roomsh_lbl 06 `"6"', add
label define ve01a_roomsh_lbl 07 `"7"', add
label define ve01a_roomsh_lbl 08 `"8"', add
label define ve01a_roomsh_lbl 09 `"9"', add
label define ve01a_roomsh_lbl 10 `"10+"', add
label define ve01a_roomsh_lbl 99 `"NIU (not in universe)"', add
label values ve01a_roomsh ve01a_roomsh_lbl

label define ve01a_sewer_lbl 0 `"NIU (not in universe)"'
label define ve01a_sewer_lbl 1 `"A toilet connected to sewer"', add
label define ve01a_sewer_lbl 2 `"A toilet connected to septic tank"', add
label define ve01a_sewer_lbl 3 `"A toilet without connection to sewer or septic tank"', add
label define ve01a_sewer_lbl 4 `"Pit toilet or latrine"', add
label define ve01a_sewer_lbl 5 `"No toilet"', add
label values ve01a_sewer ve01a_sewer_lbl

label define ve01a_phone_lbl 0 `"NIU (not in universe)"'
label define ve01a_phone_lbl 1 `"Yes"', add
label define ve01a_phone_lbl 2 `"No"', add
label values ve01a_phone ve01a_phone_lbl

label define ve01a_garbage_lbl 0 `"NIU (not in universe)"'
label define ve01a_garbage_lbl 1 `"Is collected by the urban sanitation service"', add
label define ve01a_garbage_lbl 2 `"Is deposited in a collective container"', add
label define ve01a_garbage_lbl 3 `"There is no urban sanitation service"', add
label values ve01a_garbage ve01a_garbage_lbl

label define ve01a_rooms_lbl 00 `"NIU (not in universe)"'
label define ve01a_rooms_lbl 01 `"1"', add
label define ve01a_rooms_lbl 02 `"2"', add
label define ve01a_rooms_lbl 03 `"3"', add
label define ve01a_rooms_lbl 04 `"4"', add
label define ve01a_rooms_lbl 05 `"5"', add
label define ve01a_rooms_lbl 06 `"6"', add
label define ve01a_rooms_lbl 07 `"7"', add
label define ve01a_rooms_lbl 08 `"8"', add
label define ve01a_rooms_lbl 09 `"9"', add
label define ve01a_rooms_lbl 10 `"10"', add
label define ve01a_rooms_lbl 11 `"11"', add
label define ve01a_rooms_lbl 12 `"12"', add
label define ve01a_rooms_lbl 13 `"13"', add
label define ve01a_rooms_lbl 14 `"14"', add
label define ve01a_rooms_lbl 15 `"15"', add
label define ve01a_rooms_lbl 16 `"16"', add
label define ve01a_rooms_lbl 17 `"17"', add
label define ve01a_rooms_lbl 18 `"18"', add
label define ve01a_rooms_lbl 19 `"19"', add
label define ve01a_rooms_lbl 20 `"20+"', add
label values ve01a_rooms ve01a_rooms_lbl

label define ve01a_elect_lbl 0 `"NIU (not in universe)"'
label define ve01a_elect_lbl 1 `"With electrical service"', add
label define ve01a_elect_lbl 2 `"No electrical service"', add
label values ve01a_elect ve01a_elect_lbl

label define ve01a_owner_lbl 1 `"Owned and paid for completely"'
label define ve01a_owner_lbl 2 `"Owned, still in payment"', add
label define ve01a_owner_lbl 3 `"Rented"', add
label define ve01a_owner_lbl 4 `"Loaned"', add
label define ve01a_owner_lbl 5 `"Other form"', add
label define ve01a_owner_lbl 9 `"NIU (not in universe)"', add
label values ve01a_owner ve01a_owner_lbl

label define ve01a_rentmort_lbl 099998 `"Unknown"'
label define ve01a_rentmort_lbl 099999 `"NIU (not in universe)"', add
label values ve01a_rentmort ve01a_rentmort_lbl

label define ve01a_roombed_lbl 01 `"1"'
label define ve01a_roombed_lbl 02 `"2"', add
label define ve01a_roombed_lbl 03 `"3"', add
label define ve01a_roombed_lbl 04 `"4"', add
label define ve01a_roombed_lbl 05 `"5"', add
label define ve01a_roombed_lbl 06 `"6"', add
label define ve01a_roombed_lbl 07 `"7+"', add
label define ve01a_roombed_lbl 99 `"NIU (not in universe)"', add
label values ve01a_roombed ve01a_roombed_lbl

label define ve01a_headcomp_lbl 1 `"Yes"'
label define ve01a_headcomp_lbl 2 `"No"', add
label define ve01a_headcomp_lbl 9 `"NIU (not in universe)"', add
label values ve01a_headcomp ve01a_headcomp_lbl

label define ve01a_roomshh_lbl 00 `"0"'
label define ve01a_roomshh_lbl 01 `"1"', add
label define ve01a_roomshh_lbl 02 `"2"', add
label define ve01a_roomshh_lbl 03 `"3"', add
label define ve01a_roomshh_lbl 04 `"4"', add
label define ve01a_roomshh_lbl 05 `"5"', add
label define ve01a_roomshh_lbl 06 `"6"', add
label define ve01a_roomshh_lbl 07 `"7"', add
label define ve01a_roomshh_lbl 08 `"8"', add
label define ve01a_roomshh_lbl 09 `"9"', add
label define ve01a_roomshh_lbl 10 `"10+"', add
label define ve01a_roomshh_lbl 98 `"Unknown"', add
label define ve01a_roomshh_lbl 99 `"NIU (not in universe)"', add
label values ve01a_roomshh ve01a_roomshh_lbl

label define ve01a_bike_lbl 1 `"Yes"'
label define ve01a_bike_lbl 2 `"No"', add
label define ve01a_bike_lbl 8 `"Unknown"', add
label define ve01a_bike_lbl 9 `"NIU (not in universe)"', add
label values ve01a_bike ve01a_bike_lbl

label define ve01a_motorcy_lbl 1 `"Yes"'
label define ve01a_motorcy_lbl 2 `"No"', add
label define ve01a_motorcy_lbl 8 `"Unknown"', add
label define ve01a_motorcy_lbl 9 `"NIU (not in universe)"', add
label values ve01a_motorcy ve01a_motorcy_lbl

label define ve01a_car_lbl 1 `"Yes"'
label define ve01a_car_lbl 2 `"No"', add
label define ve01a_car_lbl 8 `"Unknown"', add
label define ve01a_car_lbl 9 `"NIU (not in universe)"', add
label values ve01a_car ve01a_car_lbl

label define ve01a_vehic_lbl 1 `"Yes"'
label define ve01a_vehic_lbl 2 `"No"', add
label define ve01a_vehic_lbl 8 `"Unknown"', add
label define ve01a_vehic_lbl 9 `"NIU (not in universe)"', add
label values ve01a_vehic ve01a_vehic_lbl

label define ve01a_vehicn_lbl 00 `"0"'
label define ve01a_vehicn_lbl 01 `"1"', add
label define ve01a_vehicn_lbl 02 `"2"', add
label define ve01a_vehicn_lbl 03 `"3"', add
label define ve01a_vehicn_lbl 04 `"4"', add
label define ve01a_vehicn_lbl 05 `"5"', add
label define ve01a_vehicn_lbl 06 `"6"', add
label define ve01a_vehicn_lbl 07 `"7"', add
label define ve01a_vehicn_lbl 08 `"8"', add
label define ve01a_vehicn_lbl 09 `"9"', add
label define ve01a_vehicn_lbl 10 `"10+"', add
label define ve01a_vehicn_lbl 98 `"Unknown"', add
label define ve01a_vehicn_lbl 99 `"NIU (not in universe)"', add
label values ve01a_vehicn ve01a_vehicn_lbl

label define ve01a_refrig_lbl 1 `"Yes"'
label define ve01a_refrig_lbl 2 `"No"', add
label define ve01a_refrig_lbl 8 `"Not declared"', add
label define ve01a_refrig_lbl 9 `"NIU (not in universe)"', add
label values ve01a_refrig ve01a_refrig_lbl

label define ve01a_watfilt_lbl 1 `"Yes"'
label define ve01a_watfilt_lbl 2 `"No"', add
label define ve01a_watfilt_lbl 8 `"Not declared"', add
label define ve01a_watfilt_lbl 9 `"NIU (not in universe)"', add
label values ve01a_watfilt ve01a_watfilt_lbl

label define ve01a_radio_lbl 1 `"Yes"'
label define ve01a_radio_lbl 2 `"No"', add
label define ve01a_radio_lbl 8 `"Not declared"', add
label define ve01a_radio_lbl 9 `"NIU (not in universe)"', add
label values ve01a_radio ve01a_radio_lbl

label define ve01a_tv_lbl 1 `"Yes"'
label define ve01a_tv_lbl 2 `"No"', add
label define ve01a_tv_lbl 8 `"Not declared"', add
label define ve01a_tv_lbl 9 `"NIU (not in universe)"', add
label values ve01a_tv ve01a_tv_lbl

label define ve01a_washer_lbl 1 `"Yes"'
label define ve01a_washer_lbl 2 `"No"', add
label define ve01a_washer_lbl 8 `"Not declared"', add
label define ve01a_washer_lbl 9 `"NIU (not in universe)"', add
label values ve01a_washer ve01a_washer_lbl

label define ve01a_dryer_lbl 1 `"Yes"'
label define ve01a_dryer_lbl 2 `"No"', add
label define ve01a_dryer_lbl 8 `"Not declared"', add
label define ve01a_dryer_lbl 9 `"NIU (not in universe)"', add
label values ve01a_dryer ve01a_dryer_lbl

label define ve01a_watheat_lbl 1 `"Yes"'
label define ve01a_watheat_lbl 2 `"No"', add
label define ve01a_watheat_lbl 8 `"Not declared"', add
label define ve01a_watheat_lbl 9 `"NIU (not in universe)"', add
label values ve01a_watheat ve01a_watheat_lbl

label define ve01a_aircond_lbl 1 `"Yes"'
label define ve01a_aircond_lbl 2 `"No"', add
label define ve01a_aircond_lbl 8 `"Not declared"', add
label define ve01a_aircond_lbl 9 `"NIU (not in universe)"', add
label values ve01a_aircond ve01a_aircond_lbl

label define ve01a_microw_lbl 1 `"Yes"'
label define ve01a_microw_lbl 2 `"No"', add
label define ve01a_microw_lbl 8 `"Not declared"', add
label define ve01a_microw_lbl 9 `"NIU (not in universe)"', add
label values ve01a_microw ve01a_microw_lbl

label define ve01a_cell_lbl 1 `"Yes"'
label define ve01a_cell_lbl 2 `"No"', add
label define ve01a_cell_lbl 8 `"Not declared"', add
label define ve01a_cell_lbl 9 `"NIU (not in universe)"', add
label values ve01a_cell ve01a_cell_lbl

label define ve01a_cable_lbl 1 `"Yes"'
label define ve01a_cable_lbl 2 `"No"', add
label define ve01a_cable_lbl 8 `"Not declared"', add
label define ve01a_cable_lbl 9 `"NIU (not in universe)"', add
label values ve01a_cable ve01a_cable_lbl

label define ve01a_computer_lbl 1 `"Yes"'
label define ve01a_computer_lbl 2 `"No"', add
label define ve01a_computer_lbl 8 `"Not declared"', add
label define ve01a_computer_lbl 9 `"NIU (not in universe)"', add
label values ve01a_computer ve01a_computer_lbl

label define ve01a_internet_lbl 1 `"Yes"'
label define ve01a_internet_lbl 2 `"No"', add
label define ve01a_internet_lbl 8 `"Not declared"', add
label define ve01a_internet_lbl 9 `"NIU (not in universe)"', add
label values ve01a_internet ve01a_internet_lbl

label define ve01a_hhtype_lbl 1 `"Single person"'
label define ve01a_hhtype_lbl 2 `"Nuclear"', add
label define ve01a_hhtype_lbl 3 `"Extended"', add
label define ve01a_hhtype_lbl 4 `"Combined"', add
label define ve01a_hhtype_lbl 9 `"NIU (not in universe)"', add
label values ve01a_hhtype ve01a_hhtype_lbl

label define ve01a_crowd_lbl 1 `"There is crowding"'
label define ve01a_crowd_lbl 2 `"There is no crowding"', add
label define ve01a_crowd_lbl 9 `"NIU (not in universe)"', add
label values ve01a_crowd ve01a_crowd_lbl

label define ve01a_dwok_lbl 1 `"Yes, this is an inadequate dwelling"'
label define ve01a_dwok_lbl 2 `"No, this is not an inadequate dwelling"', add
label define ve01a_dwok_lbl 9 `"NIU (not in universe)"', add
label values ve01a_dwok ve01a_dwok_lbl

label define ve01a_servok_lbl 1 `"With basic services"'
label define ve01a_servok_lbl 2 `"With a deficit in basic services"', add
label define ve01a_servok_lbl 9 `"NIU (not in universe)"', add
label values ve01a_servok ve01a_servok_lbl

label define ve01a_econdep_lbl 1 `"Without economic dependency"'
label define ve01a_econdep_lbl 2 `"With high economic dependency"', add
label define ve01a_econdep_lbl 9 `"NIU (not in universe)"', add
label values ve01a_econdep ve01a_econdep_lbl

label define ve01a_needs_lbl 0 `"0"'
label define ve01a_needs_lbl 1 `"1"', add
label define ve01a_needs_lbl 2 `"2"', add
label define ve01a_needs_lbl 3 `"3"', add
label define ve01a_needs_lbl 4 `"4"', add
label define ve01a_needs_lbl 5 `"5"', add
label define ve01a_needs_lbl 9 `"NIU (not in universe)"', add
label values ve01a_needs ve01a_needs_lbl

label define ve01a_poverty_lbl 0 `"Not poor"'
label define ve01a_poverty_lbl 1 `"Poor"', add
label define ve01a_poverty_lbl 2 `"Extreme poverty"', add
label define ve01a_poverty_lbl 9 `"NIU (not in universe)"', add
label values ve01a_poverty ve01a_poverty_lbl

label define ve01a_pernum_lbl 00 `"Household record"'
label define ve01a_pernum_lbl 01 `"1"', add
label define ve01a_pernum_lbl 02 `"2"', add
label define ve01a_pernum_lbl 03 `"3"', add
label define ve01a_pernum_lbl 04 `"4"', add
label define ve01a_pernum_lbl 05 `"5"', add
label define ve01a_pernum_lbl 06 `"6"', add
label define ve01a_pernum_lbl 07 `"7"', add
label define ve01a_pernum_lbl 08 `"8"', add
label define ve01a_pernum_lbl 09 `"9"', add
label define ve01a_pernum_lbl 10 `"10"', add
label define ve01a_pernum_lbl 11 `"11"', add
label define ve01a_pernum_lbl 12 `"12"', add
label define ve01a_pernum_lbl 13 `"13"', add
label define ve01a_pernum_lbl 14 `"14"', add
label define ve01a_pernum_lbl 15 `"15"', add
label define ve01a_pernum_lbl 16 `"16"', add
label define ve01a_pernum_lbl 17 `"17"', add
label define ve01a_pernum_lbl 18 `"18"', add
label define ve01a_pernum_lbl 19 `"19"', add
label define ve01a_pernum_lbl 20 `"20"', add
label define ve01a_pernum_lbl 21 `"21"', add
label define ve01a_pernum_lbl 22 `"22"', add
label define ve01a_pernum_lbl 23 `"23"', add
label define ve01a_pernum_lbl 24 `"24"', add
label define ve01a_pernum_lbl 25 `"25"', add
label define ve01a_pernum_lbl 26 `"26"', add
label define ve01a_pernum_lbl 27 `"27"', add
label define ve01a_pernum_lbl 28 `"28"', add
label define ve01a_pernum_lbl 29 `"29"', add
label define ve01a_pernum_lbl 30 `"30"', add
label values ve01a_pernum ve01a_pernum_lbl

label define ve01a_relate_lbl 01 `"Head of household (male or female)"'
label define ve01a_relate_lbl 02 `"Spouse or companion (male or female)"', add
label define ve01a_relate_lbl 03 `"Son/daughter or stepson/stepdaughter"', add
label define ve01a_relate_lbl 04 `"Grandson or granddaughter"', add
label define ve01a_relate_lbl 05 `"Son/daughter-in-law"', add
label define ve01a_relate_lbl 06 `"Father, mother, or father/mother-in-law"', add
label define ve01a_relate_lbl 07 `"Brother/sister or brother/sister-in-law"', add
label define ve01a_relate_lbl 08 `"Nephew/niece"', add
label define ve01a_relate_lbl 09 `"Other relative"', add
label define ve01a_relate_lbl 10 `"Not related"', add
label define ve01a_relate_lbl 11 `"Domestic service"', add
label define ve01a_relate_lbl 12 `"Relative of domestic service"', add
label define ve01a_relate_lbl 13 `"Person in a collective dwelling"', add
label values ve01a_relate ve01a_relate_lbl

label define ve01a_sex_lbl 1 `"Male"'
label define ve01a_sex_lbl 2 `"Female"', add
label values ve01a_sex ve01a_sex_lbl

label define ve01a_agetype_lbl 1 `"Years"'
label define ve01a_agetype_lbl 2 `"Months"', add
label values ve01a_agetype ve01a_agetype_lbl

label define ve01a_ageyrmo_lbl 000 `"Less than a month"'
label define ve01a_ageyrmo_lbl 001 `"1 month or 1 year"', add
label define ve01a_ageyrmo_lbl 002 `"2 months or 2 years"', add
label define ve01a_ageyrmo_lbl 003 `"3 months or 3 years"', add
label define ve01a_ageyrmo_lbl 004 `"4 months or 4 years"', add
label define ve01a_ageyrmo_lbl 005 `"5 months or 5 years"', add
label define ve01a_ageyrmo_lbl 006 `"6 months or 6 years"', add
label define ve01a_ageyrmo_lbl 007 `"7 months or 7 years"', add
label define ve01a_ageyrmo_lbl 008 `"8 months or 8 years"', add
label define ve01a_ageyrmo_lbl 009 `"9 months or 9 years"', add
label define ve01a_ageyrmo_lbl 010 `"10 months or 10 years"', add
label define ve01a_ageyrmo_lbl 011 `"11 months or 11 years"', add
label define ve01a_ageyrmo_lbl 012 `"12 years"', add
label define ve01a_ageyrmo_lbl 013 `"13 years"', add
label define ve01a_ageyrmo_lbl 014 `"14"', add
label define ve01a_ageyrmo_lbl 015 `"15"', add
label define ve01a_ageyrmo_lbl 016 `"16"', add
label define ve01a_ageyrmo_lbl 017 `"17"', add
label define ve01a_ageyrmo_lbl 018 `"18"', add
label define ve01a_ageyrmo_lbl 019 `"19"', add
label define ve01a_ageyrmo_lbl 020 `"20"', add
label define ve01a_ageyrmo_lbl 021 `"21"', add
label define ve01a_ageyrmo_lbl 022 `"22"', add
label define ve01a_ageyrmo_lbl 023 `"23"', add
label define ve01a_ageyrmo_lbl 024 `"24"', add
label define ve01a_ageyrmo_lbl 025 `"25"', add
label define ve01a_ageyrmo_lbl 026 `"26"', add
label define ve01a_ageyrmo_lbl 027 `"27"', add
label define ve01a_ageyrmo_lbl 028 `"28"', add
label define ve01a_ageyrmo_lbl 029 `"29"', add
label define ve01a_ageyrmo_lbl 030 `"30"', add
label define ve01a_ageyrmo_lbl 031 `"31"', add
label define ve01a_ageyrmo_lbl 032 `"32"', add
label define ve01a_ageyrmo_lbl 033 `"33"', add
label define ve01a_ageyrmo_lbl 034 `"34"', add
label define ve01a_ageyrmo_lbl 035 `"35"', add
label define ve01a_ageyrmo_lbl 036 `"36"', add
label define ve01a_ageyrmo_lbl 037 `"37"', add
label define ve01a_ageyrmo_lbl 038 `"38"', add
label define ve01a_ageyrmo_lbl 039 `"39"', add
label define ve01a_ageyrmo_lbl 040 `"40"', add
label define ve01a_ageyrmo_lbl 041 `"41"', add
label define ve01a_ageyrmo_lbl 042 `"42"', add
label define ve01a_ageyrmo_lbl 043 `"43"', add
label define ve01a_ageyrmo_lbl 044 `"44"', add
label define ve01a_ageyrmo_lbl 045 `"45"', add
label define ve01a_ageyrmo_lbl 046 `"46"', add
label define ve01a_ageyrmo_lbl 047 `"47"', add
label define ve01a_ageyrmo_lbl 048 `"48"', add
label define ve01a_ageyrmo_lbl 049 `"49"', add
label define ve01a_ageyrmo_lbl 050 `"50"', add
label define ve01a_ageyrmo_lbl 051 `"51"', add
label define ve01a_ageyrmo_lbl 052 `"52"', add
label define ve01a_ageyrmo_lbl 053 `"53"', add
label define ve01a_ageyrmo_lbl 054 `"54"', add
label define ve01a_ageyrmo_lbl 055 `"55"', add
label define ve01a_ageyrmo_lbl 056 `"56"', add
label define ve01a_ageyrmo_lbl 057 `"57"', add
label define ve01a_ageyrmo_lbl 058 `"58"', add
label define ve01a_ageyrmo_lbl 059 `"59"', add
label define ve01a_ageyrmo_lbl 060 `"60"', add
label define ve01a_ageyrmo_lbl 061 `"61"', add
label define ve01a_ageyrmo_lbl 062 `"62"', add
label define ve01a_ageyrmo_lbl 063 `"63"', add
label define ve01a_ageyrmo_lbl 064 `"64"', add
label define ve01a_ageyrmo_lbl 065 `"65"', add
label define ve01a_ageyrmo_lbl 066 `"66"', add
label define ve01a_ageyrmo_lbl 067 `"67"', add
label define ve01a_ageyrmo_lbl 068 `"68"', add
label define ve01a_ageyrmo_lbl 069 `"69"', add
label define ve01a_ageyrmo_lbl 070 `"70"', add
label define ve01a_ageyrmo_lbl 071 `"71"', add
label define ve01a_ageyrmo_lbl 072 `"72"', add
label define ve01a_ageyrmo_lbl 073 `"73"', add
label define ve01a_ageyrmo_lbl 074 `"74"', add
label define ve01a_ageyrmo_lbl 075 `"75"', add
label define ve01a_ageyrmo_lbl 076 `"76"', add
label define ve01a_ageyrmo_lbl 077 `"77"', add
label define ve01a_ageyrmo_lbl 078 `"78"', add
label define ve01a_ageyrmo_lbl 079 `"79"', add
label define ve01a_ageyrmo_lbl 080 `"80"', add
label define ve01a_ageyrmo_lbl 081 `"81"', add
label define ve01a_ageyrmo_lbl 082 `"82"', add
label define ve01a_ageyrmo_lbl 083 `"83"', add
label define ve01a_ageyrmo_lbl 084 `"84"', add
label define ve01a_ageyrmo_lbl 085 `"85"', add
label define ve01a_ageyrmo_lbl 086 `"86"', add
label define ve01a_ageyrmo_lbl 087 `"87"', add
label define ve01a_ageyrmo_lbl 088 `"88"', add
label define ve01a_ageyrmo_lbl 089 `"89"', add
label define ve01a_ageyrmo_lbl 090 `"90"', add
label define ve01a_ageyrmo_lbl 091 `"91"', add
label define ve01a_ageyrmo_lbl 092 `"92"', add
label define ve01a_ageyrmo_lbl 093 `"93"', add
label define ve01a_ageyrmo_lbl 094 `"94"', add
label define ve01a_ageyrmo_lbl 095 `"95"', add
label define ve01a_ageyrmo_lbl 096 `"96"', add
label define ve01a_ageyrmo_lbl 097 `"97"', add
label define ve01a_ageyrmo_lbl 098 `"98"', add
label define ve01a_ageyrmo_lbl 099 `"99"', add
label define ve01a_ageyrmo_lbl 100 `"100+"', add
label values ve01a_ageyrmo ve01a_ageyrmo_lbl

label define ve01a_bpl_lbl 001 `"Federal District"'
label define ve01a_bpl_lbl 002 `"Amazons"', add
label define ve01a_bpl_lbl 003 `"Anzoátegui"', add
label define ve01a_bpl_lbl 004 `"Apure"', add
label define ve01a_bpl_lbl 005 `"Aragua"', add
label define ve01a_bpl_lbl 006 `"Barinas"', add
label define ve01a_bpl_lbl 007 `"Bolivar"', add
label define ve01a_bpl_lbl 008 `"Carabobo"', add
label define ve01a_bpl_lbl 009 `"Cojedes"', add
label define ve01a_bpl_lbl 010 `"Delta Amacuro"', add
label define ve01a_bpl_lbl 011 `"Falcón"', add
label define ve01a_bpl_lbl 012 `"Guárico"', add
label define ve01a_bpl_lbl 013 `"Lara"', add
label define ve01a_bpl_lbl 014 `"Mérida"', add
label define ve01a_bpl_lbl 015 `"Miranda"', add
label define ve01a_bpl_lbl 016 `"Monagas"', add
label define ve01a_bpl_lbl 017 `"Nueva Esparta"', add
label define ve01a_bpl_lbl 018 `"Portuguesa"', add
label define ve01a_bpl_lbl 019 `"Sucre"', add
label define ve01a_bpl_lbl 020 `"Táchira"', add
label define ve01a_bpl_lbl 021 `"Trujillo"', add
label define ve01a_bpl_lbl 022 `"Yaracuy"', add
label define ve01a_bpl_lbl 023 `"Zulia"', add
label define ve01a_bpl_lbl 024 `"Vargas"', add
label define ve01a_bpl_lbl 025 `"Federal Dependencies"', add
label define ve01a_bpl_lbl 099 `"Venezuela, place not specified"', add
label define ve01a_bpl_lbl 100 `"Other countries in America"', add
label define ve01a_bpl_lbl 106 `"Barbados"', add
label define ve01a_bpl_lbl 108 `"Dominica"', add
label define ve01a_bpl_lbl 109 `"Granada"', add
label define ve01a_bpl_lbl 116 `"Jamaica"', add
label define ve01a_bpl_lbl 117 `"Martinica"', add
label define ve01a_bpl_lbl 122 `"San Vicente, Las Granadinas"', add
label define ve01a_bpl_lbl 123 `"Santa Lucia"', add
label define ve01a_bpl_lbl 125 `"Belize"', add
label define ve01a_bpl_lbl 129 `"Honduras"', add
label define ve01a_bpl_lbl 139 `"French Guayana"', add
label define ve01a_bpl_lbl 142 `"Paraguay"', add
label define ve01a_bpl_lbl 144 `"Suriname"', add
label define ve01a_bpl_lbl 103 `"Antillas, Neerlande, Curacao, Bonaire"', add
label define ve01a_bpl_lbl 104 `"Aruba"', add
label define ve01a_bpl_lbl 107 `"Cuba"', add
label define ve01a_bpl_lbl 111 `"Haiti"', add
label define ve01a_bpl_lbl 119 `"Puerto rico"', add
label define ve01a_bpl_lbl 120 `"Dominican Republica, Santo Domingo"', add
label define ve01a_bpl_lbl 124 `"Trinidad and Tobago"', add
label define ve01a_bpl_lbl 126 `"Costa rica"', add
label define ve01a_bpl_lbl 127 `"El salvador"', add
label define ve01a_bpl_lbl 128 `"Guatemala"', add
label define ve01a_bpl_lbl 130 `"Mexico"', add
label define ve01a_bpl_lbl 131 `"Nicaragua"', add
label define ve01a_bpl_lbl 132 `"Panama"', add
label define ve01a_bpl_lbl 133 `"Argentina"', add
label define ve01a_bpl_lbl 134 `"Bolivia"', add
label define ve01a_bpl_lbl 135 `"Brasil"', add
label define ve01a_bpl_lbl 136 `"Chile"', add
label define ve01a_bpl_lbl 137 `"Colombia"', add
label define ve01a_bpl_lbl 138 `"Ecuador"', add
label define ve01a_bpl_lbl 140 `"Guyana"', add
label define ve01a_bpl_lbl 143 `"Peru"', add
label define ve01a_bpl_lbl 145 `"Uruguay"', add
label define ve01a_bpl_lbl 148 `"Canada"', add
label define ve01a_bpl_lbl 149 `"United States"', add
label define ve01a_bpl_lbl 200 `"Other countries in Europe"', add
label define ve01a_bpl_lbl 204 `"Hungary"', add
label define ve01a_bpl_lbl 205 `"Poland"', add
label define ve01a_bpl_lbl 208 `"Rumania"', add
label define ve01a_bpl_lbl 209 `"Russia, Russian Federation"', add
label define ve01a_bpl_lbl 223 `"United Kingdom"', add
label define ve01a_bpl_lbl 228 `"Croatia"', add
label define ve01a_bpl_lbl 230 `"Spain"', add
label define ve01a_bpl_lbl 233 `"Greece"', add
label define ve01a_bpl_lbl 234 `"Italy"', add
label define ve01a_bpl_lbl 236 `"Portugal"', add
label define ve01a_bpl_lbl 239 `"Yugoslavia"', add
label define ve01a_bpl_lbl 240 `"Germany"', add
label define ve01a_bpl_lbl 241 `"Austria"', add
label define ve01a_bpl_lbl 242 `"Belgium"', add
label define ve01a_bpl_lbl 243 `"France"', add
label define ve01a_bpl_lbl 247 `"Low Countries [Holland]"', add
label define ve01a_bpl_lbl 248 `"Switzerland"', add
label define ve01a_bpl_lbl 300 `"Other countries of Asia"', add
label define ve01a_bpl_lbl 301 `"China"', add
label define ve01a_bpl_lbl 302 `"Hong kong"', add
label define ve01a_bpl_lbl 303 `"Japon"', add
label define ve01a_bpl_lbl 306 `"Provincial Taiwan, Taiwan"', add
label define ve01a_bpl_lbl 307 `"South Korea, Republic of Korea"', add
label define ve01a_bpl_lbl 334 `"Saudi Arabia"', add
label define ve01a_bpl_lbl 342 `"Israel"', add
label define ve01a_bpl_lbl 345 `"Lebanon"', add
label define ve01a_bpl_lbl 348 `"Siria"', add
label define ve01a_bpl_lbl 349 `"Palestine"', add
label define ve01a_bpl_lbl 400 `"Other countries in Africa"', add
label define ve01a_bpl_lbl 431 `"Morocco"', add
label define ve01a_bpl_lbl 599 `"Country not declared or not elsewhere classified"', add
label values ve01a_bpl ve01a_bpl_lbl

label define ve01a_arrivyr_lbl 0000 `"NIU"'
label define ve01a_arrivyr_lbl 1930 `"1930 or earlier"', add
label define ve01a_arrivyr_lbl 1931 `"1931"', add
label define ve01a_arrivyr_lbl 1932 `"1932"', add
label define ve01a_arrivyr_lbl 1933 `"1933"', add
label define ve01a_arrivyr_lbl 1934 `"1934"', add
label define ve01a_arrivyr_lbl 1935 `"1935"', add
label define ve01a_arrivyr_lbl 1936 `"1936"', add
label define ve01a_arrivyr_lbl 1937 `"1937"', add
label define ve01a_arrivyr_lbl 1938 `"1938"', add
label define ve01a_arrivyr_lbl 1939 `"1939"', add
label define ve01a_arrivyr_lbl 1940 `"1940"', add
label define ve01a_arrivyr_lbl 1941 `"1941"', add
label define ve01a_arrivyr_lbl 1942 `"1942"', add
label define ve01a_arrivyr_lbl 1943 `"1943"', add
label define ve01a_arrivyr_lbl 1944 `"1944"', add
label define ve01a_arrivyr_lbl 1945 `"1945"', add
label define ve01a_arrivyr_lbl 1946 `"1946"', add
label define ve01a_arrivyr_lbl 1947 `"1947"', add
label define ve01a_arrivyr_lbl 1948 `"1948"', add
label define ve01a_arrivyr_lbl 1949 `"1949"', add
label define ve01a_arrivyr_lbl 1950 `"1950"', add
label define ve01a_arrivyr_lbl 1951 `"1951"', add
label define ve01a_arrivyr_lbl 1952 `"1952"', add
label define ve01a_arrivyr_lbl 1953 `"1953"', add
label define ve01a_arrivyr_lbl 1954 `"1954"', add
label define ve01a_arrivyr_lbl 1955 `"1955"', add
label define ve01a_arrivyr_lbl 1956 `"1956"', add
label define ve01a_arrivyr_lbl 1957 `"1957"', add
label define ve01a_arrivyr_lbl 1958 `"1958"', add
label define ve01a_arrivyr_lbl 1959 `"1959"', add
label define ve01a_arrivyr_lbl 1960 `"1960"', add
label define ve01a_arrivyr_lbl 1961 `"1961"', add
label define ve01a_arrivyr_lbl 1962 `"1962"', add
label define ve01a_arrivyr_lbl 1963 `"1963"', add
label define ve01a_arrivyr_lbl 1964 `"1964"', add
label define ve01a_arrivyr_lbl 1965 `"1965"', add
label define ve01a_arrivyr_lbl 1966 `"1966"', add
label define ve01a_arrivyr_lbl 1967 `"1967"', add
label define ve01a_arrivyr_lbl 1968 `"1968"', add
label define ve01a_arrivyr_lbl 1969 `"1969"', add
label define ve01a_arrivyr_lbl 1970 `"1970"', add
label define ve01a_arrivyr_lbl 1971 `"1971"', add
label define ve01a_arrivyr_lbl 1972 `"1972"', add
label define ve01a_arrivyr_lbl 1973 `"1973"', add
label define ve01a_arrivyr_lbl 1974 `"1974"', add
label define ve01a_arrivyr_lbl 1975 `"1975"', add
label define ve01a_arrivyr_lbl 1976 `"1976"', add
label define ve01a_arrivyr_lbl 1977 `"1977"', add
label define ve01a_arrivyr_lbl 1978 `"1978"', add
label define ve01a_arrivyr_lbl 1979 `"1979"', add
label define ve01a_arrivyr_lbl 1980 `"1980"', add
label define ve01a_arrivyr_lbl 1981 `"1981"', add
label define ve01a_arrivyr_lbl 1982 `"1982"', add
label define ve01a_arrivyr_lbl 1983 `"1983"', add
label define ve01a_arrivyr_lbl 1984 `"1984"', add
label define ve01a_arrivyr_lbl 1985 `"1985"', add
label define ve01a_arrivyr_lbl 1986 `"1986"', add
label define ve01a_arrivyr_lbl 1987 `"1987"', add
label define ve01a_arrivyr_lbl 1988 `"1988"', add
label define ve01a_arrivyr_lbl 1989 `"1989"', add
label define ve01a_arrivyr_lbl 1990 `"1990"', add
label define ve01a_arrivyr_lbl 1991 `"1991"', add
label define ve01a_arrivyr_lbl 1992 `"1992"', add
label define ve01a_arrivyr_lbl 1993 `"1993"', add
label define ve01a_arrivyr_lbl 1994 `"1994"', add
label define ve01a_arrivyr_lbl 1995 `"1995"', add
label define ve01a_arrivyr_lbl 1996 `"1996"', add
label define ve01a_arrivyr_lbl 1997 `"1997"', add
label define ve01a_arrivyr_lbl 1998 `"1998"', add
label define ve01a_arrivyr_lbl 1999 `"1999"', add
label define ve01a_arrivyr_lbl 2000 `"2000"', add
label define ve01a_arrivyr_lbl 2001 `"2001"', add
label define ve01a_arrivyr_lbl 9999 `"Unknown"', add
label values ve01a_arrivyr ve01a_arrivyr_lbl

label define ve01a_nation_lbl 1 `"Naturalized Venezuelan"'
label define ve01a_nation_lbl 2 `"Venezuelan born abroad to Venezuelan parents"', add
label define ve01a_nation_lbl 3 `"Foreigner"', add
label define ve01a_nation_lbl 8 `"Unknown"', add
label define ve01a_nation_lbl 9 `"NIU (not in universe)"', add
label values ve01a_nation ve01a_nation_lbl

label define ve01a_indig_lbl 000 `"Not indigenous"'
label define ve01a_indig_lbl 010 `"Añu"', add
label define ve01a_indig_lbl 040 `"Baniva"', add
label define ve01a_indig_lbl 050 `"Baré"', add
label define ve01a_indig_lbl 070 `"Chaima"', add
label define ve01a_indig_lbl 090 `"Guajibo"', add
label define ve01a_indig_lbl 110 `"Kariña"', add
label define ve01a_indig_lbl 120 `"Mapoyo"', add
label define ve01a_indig_lbl 130 `"Yeral"', add
label define ve01a_indig_lbl 140 `"Pemón"', add
label define ve01a_indig_lbl 150 `"Piapoko"', add
label define ve01a_indig_lbl 160 `"Piaroa"', add
label define ve01a_indig_lbl 170 `"Puinave"', add
label define ve01a_indig_lbl 180 `"Pumé"', add
label define ve01a_indig_lbl 202 `"Warao"', add
label define ve01a_indig_lbl 230 `"Warekena"', add
label define ve01a_indig_lbl 240 `"Wayuu"', add
label define ve01a_indig_lbl 270 `"Yekuana"', add
label define ve01a_indig_lbl 280 `"Yukpa"', add
label define ve01a_indig_lbl 370 `"Kurripako"', add
label define ve01a_indig_lbl 399 `"Other indigenous groups"', add
label define ve01a_indig_lbl 500 `"Waikerí"', add
label define ve01a_indig_lbl 560 `"Inga"', add
label define ve01a_indig_lbl 717 `"Kumanagoto"', add
label define ve01a_indig_lbl 900 `"Response suppressed"', add
label define ve01a_indig_lbl 998 `"Unknown"', add
label define ve01a_indig_lbl 999 `"NIU (not in universe)"', add
label values ve01a_indig ve01a_indig_lbl

label define ve01a_langind_lbl 0 `"NIU (not in universe)"'
label define ve01a_langind_lbl 1 `"Yes"', add
label define ve01a_langind_lbl 2 `"No"', add
label define ve01a_langind_lbl 9 `"Not declared"', add
label values ve01a_langind ve01a_langind_lbl

label define ve01a_disdeaf_lbl 1 `"Total deafness"'
label define ve01a_disdeaf_lbl 2 `"No hearing disability"', add
label define ve01a_disdeaf_lbl 9 `"Not declared"', add
label values ve01a_disdeaf ve01a_disdeaf_lbl

label define ve01a_disment_lbl 1 `"Mental retardation"'
label define ve01a_disment_lbl 2 `"No mental disability"', add
label define ve01a_disment_lbl 9 `"Not declared"', add
label values ve01a_disment ve01a_disment_lbl

label define ve01a_disarm_lbl 1 `"Loss or disability in upper extremities"'
label define ve01a_disarm_lbl 2 `"No disability in an upper extremity"', add
label define ve01a_disarm_lbl 9 `"Not declared"', add
label values ve01a_disarm ve01a_disarm_lbl

label define ve01a_disleg_lbl 1 `"Loss or disability in lower extremities"'
label define ve01a_disleg_lbl 2 `"No disability in a lower extremity"', add
label define ve01a_disleg_lbl 9 `"Not declared"', add
label values ve01a_disleg ve01a_disleg_lbl

label define ve01a_disoth_lbl 1 `"Other disability"'
label define ve01a_disoth_lbl 2 `"No other disability"', add
label define ve01a_disoth_lbl 9 `"Not declared"', add
label values ve01a_disoth ve01a_disoth_lbl

label define ve01a_disnone_lbl 1 `"No disability"'
label define ve01a_disnone_lbl 2 `"Have disability"', add
label define ve01a_disnone_lbl 9 `"Not declared"', add
label values ve01a_disnone ve01a_disnone_lbl

label define ve01a_wheelch_lbl 1 `"Yes"'
label define ve01a_wheelch_lbl 2 `"No"', add
label define ve01a_wheelch_lbl 9 `"Not declared"', add
label values ve01a_wheelch ve01a_wheelch_lbl

label define ve01a_resprc_lbl 000 `"NIU (not in universe)"'
label define ve01a_resprc_lbl 001 `"Federal District"', add
label define ve01a_resprc_lbl 002 `"Amazons"', add
label define ve01a_resprc_lbl 003 `"Anzoátegui"', add
label define ve01a_resprc_lbl 004 `"Apure"', add
label define ve01a_resprc_lbl 005 `"Aragua"', add
label define ve01a_resprc_lbl 006 `"Barinas"', add
label define ve01a_resprc_lbl 007 `"Bolivar"', add
label define ve01a_resprc_lbl 008 `"Carabobo"', add
label define ve01a_resprc_lbl 009 `"Cojedes"', add
label define ve01a_resprc_lbl 010 `"Delta Amacuro"', add
label define ve01a_resprc_lbl 011 `"Falcón"', add
label define ve01a_resprc_lbl 012 `"Guárico"', add
label define ve01a_resprc_lbl 013 `"Lara"', add
label define ve01a_resprc_lbl 014 `"Mérida"', add
label define ve01a_resprc_lbl 015 `"Miranda"', add
label define ve01a_resprc_lbl 016 `"Monagas"', add
label define ve01a_resprc_lbl 017 `"Nueva Esparta"', add
label define ve01a_resprc_lbl 018 `"Portuguesa"', add
label define ve01a_resprc_lbl 019 `"Sucre"', add
label define ve01a_resprc_lbl 020 `"Táchira"', add
label define ve01a_resprc_lbl 021 `"Trujillo"', add
label define ve01a_resprc_lbl 022 `"Yaracuy"', add
label define ve01a_resprc_lbl 023 `"Zulia"', add
label define ve01a_resprc_lbl 024 `"Vargas"', add
label define ve01a_resprc_lbl 025 `"Federal Dependencies"', add
label define ve01a_resprc_lbl 099 `"Venezuela, place not specified"', add
label define ve01a_resprc_lbl 103 `"Antillas, Neerlande, Curacao, Bonaire"', add
label define ve01a_resprc_lbl 104 `"Aruba"', add
label define ve01a_resprc_lbl 107 `"Cuba"', add
label define ve01a_resprc_lbl 111 `"Haiti"', add
label define ve01a_resprc_lbl 120 `"Dominican Republica, Santo Domingo"', add
label define ve01a_resprc_lbl 130 `"Mexico"', add
label define ve01a_resprc_lbl 133 `"Argentina"', add
label define ve01a_resprc_lbl 135 `"Brasil"', add
label define ve01a_resprc_lbl 136 `"Chile"', add
label define ve01a_resprc_lbl 137 `"Colombia"', add
label define ve01a_resprc_lbl 138 `"Ecuador"', add
label define ve01a_resprc_lbl 140 `"Guyana"', add
label define ve01a_resprc_lbl 143 `"Peru"', add
label define ve01a_resprc_lbl 148 `"Canada"', add
label define ve01a_resprc_lbl 149 `"United States"', add
label define ve01a_resprc_lbl 230 `"Spain"', add
label define ve01a_resprc_lbl 234 `"Italy"', add
label define ve01a_resprc_lbl 236 `"Portugal"', add
label define ve01a_resprc_lbl 240 `"Germany"', add
label define ve01a_resprc_lbl 243 `"France"', add
label define ve01a_resprc_lbl 301 `"China"', add
label define ve01a_resprc_lbl 306 `"Taiwan"', add
label define ve01a_resprc_lbl 334 `"Saudi Arabia"', add
label define ve01a_resprc_lbl 345 `"Lebanon"', add
label define ve01a_resprc_lbl 348 `"Syria"', add
label define ve01a_resprc_lbl 599 `"Undocumented"', add
label define ve01a_resprc_lbl 900 `"Response suppressed"', add
label define ve01a_resprc_lbl 998 `"Unknown"', add
label define ve01a_resprc_lbl 999 `"Not declared"', add
label values ve01a_resprc ve01a_resprc_lbl

label define ve01a_lit_lbl 0 `"NIU (not in universe)"'
label define ve01a_lit_lbl 1 `"Yes"', add
label define ve01a_lit_lbl 2 `"No"', add
label values ve01a_lit ve01a_lit_lbl

label define ve01a_school_lbl 0 `"NIU (not in universe)"'
label define ve01a_school_lbl 1 `"Yes"', add
label define ve01a_school_lbl 2 `"No"', add
label define ve01a_school_lbl 9 `"Unknown"', add
label values ve01a_school ve01a_school_lbl

label define ve01a_schoolty_lbl 0 `"NIU (not in universe)"'
label define ve01a_schoolty_lbl 1 `"Public"', add
label define ve01a_schoolty_lbl 2 `"Private"', add
label define ve01a_schoolty_lbl 9 `"Unknown"', add
label values ve01a_schoolty ve01a_schoolty_lbl

label define ve01a_edlev_lbl 01 `"None"'
label define ve01a_edlev_lbl 02 `"Pre-school"', add
label define ve01a_edlev_lbl 03 `"Basic/elementary"', add
label define ve01a_edlev_lbl 04 `"Special education"', add
label define ve01a_edlev_lbl 05 `"Middle school"', add
label define ve01a_edlev_lbl 06 `"Technical middle school"', add
label define ve01a_edlev_lbl 07 `"Superior technical education"', add
label define ve01a_edlev_lbl 08 `"University"', add
label define ve01a_edlev_lbl 98 `"Unknown"', add
label define ve01a_edlev_lbl 99 `"NIU (not in universe)"', add
label values ve01a_edlev ve01a_edlev_lbl

label define ve01a_edgrade_lbl 01 `"1"'
label define ve01a_edgrade_lbl 02 `"2"', add
label define ve01a_edgrade_lbl 03 `"3"', add
label define ve01a_edgrade_lbl 04 `"4"', add
label define ve01a_edgrade_lbl 05 `"5"', add
label define ve01a_edgrade_lbl 06 `"6"', add
label define ve01a_edgrade_lbl 07 `"7"', add
label define ve01a_edgrade_lbl 08 `"8"', add
label define ve01a_edgrade_lbl 09 `"9"', add
label define ve01a_edgrade_lbl 98 `"Unknown"', add
label define ve01a_edgrade_lbl 99 `"NIU (not in universe)"', add
label values ve01a_edgrade ve01a_edgrade_lbl

label define ve01a_edattan_lbl 110 `"None"'
label define ve01a_edattan_lbl 200 `"Pre-school, unknown grade"', add
label define ve01a_edattan_lbl 201 `"Pre-school grade 1"', add
label define ve01a_edattan_lbl 202 `"Pre-school grade 2"', add
label define ve01a_edattan_lbl 203 `"Pre-school grade 3"', add
label define ve01a_edattan_lbl 300 `"Basic/elementary, uknown grade"', add
label define ve01a_edattan_lbl 301 `"Basic/elementary grade 1"', add
label define ve01a_edattan_lbl 302 `"Basic/elementary grade 2"', add
label define ve01a_edattan_lbl 303 `"Basic/elementary grade 3"', add
label define ve01a_edattan_lbl 304 `"Basic/elementary grade 4"', add
label define ve01a_edattan_lbl 305 `"Basic/elementary grade 5"', add
label define ve01a_edattan_lbl 306 `"Basic/elementary grade 6"', add
label define ve01a_edattan_lbl 307 `"Basic/elementary grade 7"', add
label define ve01a_edattan_lbl 308 `"Basic/elementary grade 8"', add
label define ve01a_edattan_lbl 309 `"Basic/elementary grade 9"', add
label define ve01a_edattan_lbl 410 `"Special education"', add
label define ve01a_edattan_lbl 500 `"Middle school, unknown grade"', add
label define ve01a_edattan_lbl 501 `"Middle school grade 1"', add
label define ve01a_edattan_lbl 502 `"Middle school grade 2"', add
label define ve01a_edattan_lbl 600 `"Technical middle school, unknown grade"', add
label define ve01a_edattan_lbl 601 `"Technical middle school grade 1"', add
label define ve01a_edattan_lbl 602 `"Technical middle school grade 2"', add
label define ve01a_edattan_lbl 603 `"Technical middle school grade 3"', add
label define ve01a_edattan_lbl 800 `"Superior technical education level 0"', add
label define ve01a_edattan_lbl 801 `"Superior technical education level 1"', add
label define ve01a_edattan_lbl 802 `"Superior technical education level 2"', add
label define ve01a_edattan_lbl 803 `"Superior technical education level 3"', add
label define ve01a_edattan_lbl 804 `"Superior technical education, unknown level"', add
label define ve01a_edattan_lbl 900 `"University level 0"', add
label define ve01a_edattan_lbl 901 `"University level 1"', add
label define ve01a_edattan_lbl 902 `"University level 2"', add
label define ve01a_edattan_lbl 903 `"University level 3"', add
label define ve01a_edattan_lbl 904 `"University level 4"', add
label define ve01a_edattan_lbl 905 `"University level 5"', add
label define ve01a_edattan_lbl 906 `"University level 6"', add
label define ve01a_edattan_lbl 907 `"University level 7"', add
label define ve01a_edattan_lbl 908 `"University, unknown level"', add
label define ve01a_edattan_lbl 998 `"Unknown"', add
label define ve01a_edattan_lbl 999 `"NIU (not in universe)"', add
label values ve01a_edattan ve01a_edattan_lbl

label define ve01a_degree_lbl 000 `"Does not have a degree"'
label define ve01a_degree_lbl 001 `"Area of sciences not well specified [N.B.E.= No bien especificado=not well specified]"', add
label define ve01a_degree_lbl 009 `"Degree not well specified"', add
label define ve01a_degree_lbl 010 `"Biology"', add
label define ve01a_degree_lbl 020 `"Physics"', add
label define ve01a_degree_lbl 030 `"Mathematics"', add
label define ve01a_degree_lbl 040 `"Chemistry"', add
label define ve01a_degree_lbl 100 `"Engineers, not well specified"', add
label define ve01a_degree_lbl 110 `"Architecture and urbanism"', add
label define ve01a_degree_lbl 120 `"Aeronautical engineering and nautical sciences"', add
label define ve01a_degree_lbl 130 `"Civil engineering and similar"', add
label define ve01a_degree_lbl 140 `"Chemical and industrial engineering"', add
label define ve01a_degree_lbl 150 `"Mechanical, electrical, and electronic engineering"', add
label define ve01a_degree_lbl 160 `"Petroleum, mining, and hydrocarbon engineering"', add
label define ve01a_degree_lbl 170 `"Systems, computer, and informatics engineering"', add
label define ve01a_degree_lbl 180 `"Geological, geophysical, and hydrometeorological engineering"', add
label define ve01a_degree_lbl 190 `"Engineers, architects, and technicians, not well specified"', add
label define ve01a_degree_lbl 200 `"Agro- and sea-sciences, not well specified"', add
label define ve01a_degree_lbl 210 `"Marine biology and applied sea sciences"', add
label define ve01a_degree_lbl 220 `"Engineering in natural, renewable, and forestry resources"', add
label define ve01a_degree_lbl 230 `"Agronomical, agricultural, agro industrial, and agro-production engineering"', add
label define ve01a_degree_lbl 240 `"Food engineering"', add
label define ve01a_degree_lbl 250 `"Veterinary medicine"', add
label define ve01a_degree_lbl 260 `"Zoo technology"', add
label define ve01a_degree_lbl 290 `"Professionals in agriculture and sea, not well specified"', add
label define ve01a_degree_lbl 300 `"Licentiate in education, not well specified"', add
label define ve01a_degree_lbl 310 `"Pedagogy and pre-school education"', add
label define ve01a_degree_lbl 320 `"Basic science education"', add
label define ve01a_degree_lbl 330 `"Social science education"', add
label define ve01a_degree_lbl 340 `"Language and foreign language education"', add
label define ve01a_degree_lbl 350 `"Special education"', add
label define ve01a_degree_lbl 360 `"Technical, industrial, and commercial education"', add
label define ve01a_degree_lbl 370 `"Agricultural/ animal farming education"', add
label define ve01a_degree_lbl 380 `"Physical education"', add
label define ve01a_degree_lbl 390 `"Professionals in education and teaching, not well specified"', add
label define ve01a_degree_lbl 400 `"Licentiate in social sciences, not well specified"', add
label define ve01a_degree_lbl 410 `"Anthropology, sociology, and social work"', add
label define ve01a_degree_lbl 420 `"Statistics and statistical sciences"', add
label define ve01a_degree_lbl 430 `"International studies"', add
label define ve01a_degree_lbl 440 `"Social communication"', add
label define ve01a_degree_lbl 450 `"Geography"', add
label define ve01a_degree_lbl 460 `"Psychology"', add
label define ve01a_degree_lbl 470 `"Industrial relationships"', add
label define ve01a_degree_lbl 480 `"Tourism"', add
label define ve01a_degree_lbl 490 `"Professionals in social sciences, not well specified"', add
label define ve01a_degree_lbl 510 `"Economy"', add
label define ve01a_degree_lbl 520 `"Law"', add
label define ve01a_degree_lbl 530 `"Political studies"', add
label define ve01a_degree_lbl 540 `"Administrative management sciences"', add
label define ve01a_degree_lbl 550 `"Accounting"', add
label define ve01a_degree_lbl 560 `"Fiscal and financial sciences"', add
label define ve01a_degree_lbl 590 `"Professionals in economic, political, and administrative sciences, not well specified"', add
label define ve01a_degree_lbl 600 `"Professionals in humanities, not well specified"', add
label define ve01a_degree_lbl 610 `"Archive and library sciences"', add
label define ve01a_degree_lbl 620 `"Arts and music"', add
label define ve01a_degree_lbl 630 `"History"', add
label define ve01a_degree_lbl 640 `"Modern languages"', add
label define ve01a_degree_lbl 650 `"Letters"', add
label define ve01a_degree_lbl 660 `"Philosophy and theology"', add
label define ve01a_degree_lbl 690 `"Professionals in humanities, not well specified"', add
label define ve01a_degree_lbl 700 `"Medical sciences, not well specified"', add
label define ve01a_degree_lbl 710 `"Bioanalysis"', add
label define ve01a_degree_lbl 720 `"Nursing"', add
label define ve01a_degree_lbl 730 `"Pharmacy"', add
label define ve01a_degree_lbl 740 `"Medicine and psychiatry"', add
label define ve01a_degree_lbl 750 `"Dentistry"', add
label define ve01a_degree_lbl 760 `"Nutrition and diet"', add
label define ve01a_degree_lbl 800 `"Upper level technician, not well specified"', add
label define ve01a_degree_lbl 810 `"Basic sciences"', add
label define ve01a_degree_lbl 820 `"Construction and design of civil works"', add
label define ve01a_degree_lbl 830 `"Mechanical, electrical, and electronic sciences"', add
label define ve01a_degree_lbl 840 `"Exploration and extraction from mines, petroleum, and hydrocarbons"', add
label define ve01a_degree_lbl 850 `"Informatics, systems, and computers"', add
label define ve01a_degree_lbl 860 `"Sciences of agriculture, de sea, and natural resources"', add
label define ve01a_degree_lbl 870 `"Education and pedagogy"', add
label define ve01a_degree_lbl 880 `"Arts, letters, and similar"', add
label define ve01a_degree_lbl 890 `"Social sciences and similar"', add
label define ve01a_degree_lbl 901 `"Administrative, financial, fiscal, and rent sciences"', add
label define ve01a_degree_lbl 910 `"Marketing, publicity, and tourism"', add
label define ve01a_degree_lbl 920 `"Political sciences"', add
label define ve01a_degree_lbl 930 `"Health sciences"', add
label define ve01a_degree_lbl 940 `"Naval sciences"', add
label define ve01a_degree_lbl 950 `"Other technicians, not well specified"', add
label define ve01a_degree_lbl 970 `"Military sciences and arts"', add
label define ve01a_degree_lbl 998 `"Unknown"', add
label define ve01a_degree_lbl 999 `"NIU (not in universe)"', add
label values ve01a_degree ve01a_degree_lbl

label define ve01a_degreeg_lbl 0 `"NIU (not in universe)"'
label define ve01a_degreeg_lbl 1 `"Yes"', add
label define ve01a_degreeg_lbl 2 `"No"', add
label define ve01a_degreeg_lbl 9 `"Unknown"', add
label values ve01a_degreeg ve01a_degreeg_lbl

label define ve01a_marst_lbl 0 `"NIU (not in universe)"'
label define ve01a_marst_lbl 1 `"Consensual union"', add
label define ve01a_marst_lbl 2 `"Married"', add
label define ve01a_marst_lbl 3 `"Single"', add
label define ve01a_marst_lbl 4 `"Separated from a consensual union or marriage"', add
label define ve01a_marst_lbl 5 `"Divorced"', add
label define ve01a_marst_lbl 6 `"Widowed"', add
label define ve01a_marst_lbl 9 `"Unknown"', add
label values ve01a_marst ve01a_marst_lbl

label define ve01a_empstat_lbl 01 `"Working"'
label define ve01a_empstat_lbl 02 `"Not working, but has a job"', add
label define ve01a_empstat_lbl 03 `"Looking for work, having worked previously"', add
label define ve01a_empstat_lbl 04 `"Looking for work for the first time"', add
label define ve01a_empstat_lbl 05 `"Doing housework"', add
label define ve01a_empstat_lbl 06 `"Studying and not working"', add
label define ve01a_empstat_lbl 07 `"As a pensioner or retiree"', add
label define ve01a_empstat_lbl 08 `"Permanently disabled"', add
label define ve01a_empstat_lbl 09 `"Other situation"', add
label define ve01a_empstat_lbl 98 `"Unknown"', add
label define ve01a_empstat_lbl 99 `"NIU (not in universe)"', add
label values ve01a_empstat ve01a_empstat_lbl

label define ve01a_workpaid_lbl 0 `"NIU (not in universe)"'
label define ve01a_workpaid_lbl 1 `"Yes"', add
label define ve01a_workpaid_lbl 2 `"No"', add
label define ve01a_workpaid_lbl 9 `"Unknown"', add
label values ve01a_workpaid ve01a_workpaid_lbl

label define ve01a_occ_lbl 000 `"NIU (not in universe)"'
label define ve01a_occ_lbl 011 `"Armed forces"', add
label define ve01a_occ_lbl 100 `"Managers, directors, and bosses not well specified"', add
label define ve01a_occ_lbl 111 `"Member s of the executive power and legislative bodies"', add
label define ve01a_occ_lbl 112 `"Directive personnel of the public administration"', add
label define ve01a_occ_lbl 113 `"Leaders of small populations"', add
label define ve01a_occ_lbl 114 `"Managers and administrators of specialized organizations"', add
label define ve01a_occ_lbl 121 `"General directors and general managers of businesses"', add
label define ve01a_occ_lbl 122 `"Directors of production and operations departments"', add
label define ve01a_occ_lbl 123 `"Other department directors"', add
label define ve01a_occ_lbl 131 `"Managers of businesses"', add
label define ve01a_occ_lbl 200 `"University students with degrees, and/or actors, painters, sculptors, and similar, not well specified"', add
label define ve01a_occ_lbl 211 `"Physicists, chemists, and similar"', add
label define ve01a_occ_lbl 213 `"Professionals of informatics"', add
label define ve01a_occ_lbl 214 `"Architects, engineers, and similar"', add
label define ve01a_occ_lbl 221 `"Professionals in biological sciences"', add
label define ve01a_occ_lbl 222 `"Doctors and similar professionals (except nursing and midwife personnel)"', add
label define ve01a_occ_lbl 223 `"Upper level nursing and midwife personnel"', add
label define ve01a_occ_lbl 230 `"Professionals in education and teaching"', add
label define ve01a_occ_lbl 231 `"Professors in universities and other institutions of higher education"', add
label define ve01a_occ_lbl 232 `"Professors in secondary education"', add
label define ve01a_occ_lbl 233 `"Upper level teachers in elementary and pre-school education"', add
label define ve01a_occ_lbl 235 `"Other professionals in education"', add
label define ve01a_occ_lbl 241 `"Specialists in organization and administration of businesses and similar"', add
label define ve01a_occ_lbl 242 `"Professionals in law (legal professionals)"', add
label define ve01a_occ_lbl 243 `"Archivists, librarians, document archivists, and similar"', add
label define ve01a_occ_lbl 244 `"Specialists in social and human sciences"', add
label define ve01a_occ_lbl 245 `"Writers, creative and performing artists"', add
label define ve01a_occ_lbl 246 `"Catholic priests"', add
label define ve01a_occ_lbl 300 `"Technicians and mid-level professionals, not well specified"', add
label define ve01a_occ_lbl 311 `"Technicians in physical and chemical sciences and engineering"', add
label define ve01a_occ_lbl 312 `"Technicians in informatics programming and control"', add
label define ve01a_occ_lbl 313 `"Operators of optical and electronical equipment"', add
label define ve01a_occ_lbl 314 `"Technicians in maritime and aeronautical navigation"', add
label define ve01a_occ_lbl 315 `"Inspectors of construction jobs, security, health, and quality control"', add
label define ve01a_occ_lbl 321 `"Mid-level technicians in biological sciences, agronomy, zoo technology, and similar"', add
label define ve01a_occ_lbl 322 `"Mid-level technicians in modern medicine and healthcare (except nursing personnel)"', add
label define ve01a_occ_lbl 323 `"Mid-level nursing and midwife personnel"', add
label define ve01a_occ_lbl 324 `"Practitioners of traditional medicine and folk-healers"', add
label define ve01a_occ_lbl 331 `"Mid-level teachers in elementary education"', add
label define ve01a_occ_lbl 332 `"Mid-level teachers in pre-school education"', add
label define ve01a_occ_lbl 333 `"Mid-level teachers in special education"', add
label define ve01a_occ_lbl 334 `"Other mid-level teachers and instructors"', add
label define ve01a_occ_lbl 341 `"Mid-level professionals in financial and commercial operations"', add
label define ve01a_occ_lbl 342 `"Commercial agents and brokers"', add
label define ve01a_occ_lbl 343 `"Mid-level professionals in administration services"', add
label define ve01a_occ_lbl 344 `"Agents of public administrations in customs, taxes, and similar"', add
label define ve01a_occ_lbl 345 `"Police inspectors and detectives"', add
label define ve01a_occ_lbl 346 `"Mid-level social workers and assistants"', add
label define ve01a_occ_lbl 347 `"Mid-level professionals in artistic activities, entertainment, and sports"', add
label define ve01a_occ_lbl 400 `"All of the occupations related to administration, not clearly specified"', add
label define ve01a_occ_lbl 411 `"Secretaries and operators of office equipment"', add
label define ve01a_occ_lbl 412 `"Accounting and financial assistants"', add
label define ve01a_occ_lbl 413 `"Employees in charge of registry of materials and transportation"', add
label define ve01a_occ_lbl 414 `"Employees of libraries and mail services and similar"', add
label define ve01a_occ_lbl 421 `"Cashiers, ticket vendors, and similar"', add
label define ve01a_occ_lbl 422 `"Employees of services of information to clients"', add
label define ve01a_occ_lbl 500 `"Wholesale and retail sales, businesses, and services, not well specified"', add
label define ve01a_occ_lbl 511 `"Personnel in direct services to passengers"', add
label define ve01a_occ_lbl 512 `"Personnel in intendancy and restaurant services (fast food)"', add
label define ve01a_occ_lbl 513 `"Workers in personal care and similar"', add
label define ve01a_occ_lbl 514 `"Other workers in personal services to individuals"', add
label define ve01a_occ_lbl 515 `"Astrologists, fortunetellers, and similar"', add
label define ve01a_occ_lbl 516 `"Personnel in services of protection and security"', add
label define ve01a_occ_lbl 521 `"Models in fashion, art, and publicity"', add
label define ve01a_occ_lbl 522 `"Salesmen and demonstrators in stores and shops"', add
label define ve01a_occ_lbl 523 `"Vendors in kiosks and market stalls"', add
label define ve01a_occ_lbl 600 `"Agriculture, animal breeding, fishing, not well specified"', add
label define ve01a_occ_lbl 611 `"Farmers and specialized workers in market crops"', add
label define ve01a_occ_lbl 612 `"Specialized breeders and workers in raising animals for the market and similar"', add
label define ve01a_occ_lbl 613 `"Specialized agricultural producers and workers whose production is sent to market"', add
label define ve01a_occ_lbl 614 `"Specialized forestry workers and similar"', add
label define ve01a_occ_lbl 615 `"Fishermen, hunters, and trappers"', add
label define ve01a_occ_lbl 621 `"Subsistence agricultural workers and fishermen"', add
label define ve01a_occ_lbl 700 `"Artisan, small and mid-sized businesses, shops (mechanics, electricians, blacksmiths), plumbers and similar, not well specified"', add
label define ve01a_occ_lbl 711 `"Miners, quarry workers, stone masons and workers"', add
label define ve01a_occ_lbl 712 `"Officials and operators in construction (large works) and similar"', add
label define ve01a_occ_lbl 713 `"Officials and operators in construction (finishing jobs) and similar"', add
label define ve01a_occ_lbl 714 `"Painters, building-front cleaners, and similar"', add
label define ve01a_occ_lbl 721 `"Mold-press workers, welders, laminators, boilermakers, assemblers of metal structures, and similar"', add
label define ve01a_occ_lbl 722 `"Blacksmiths, toolmakers, and similar"', add
label define ve01a_occ_lbl 723 `"Machine mechanics and adjusters"', add
label define ve01a_occ_lbl 724 `"Mechanics and adjusters of electrical and electronic equipment"', add
label define ve01a_occ_lbl 731 `"Precision mechanics in metals and similar materials"', add
label define ve01a_occ_lbl 732 `"Potters, operators in glass factories, and similar"', add
label define ve01a_occ_lbl 733 `"Artisans in wood, textiles, leather and similar materials"', add
label define ve01a_occ_lbl 734 `"Officials and operators in graphic arts and similar"', add
label define ve01a_occ_lbl 741 `"Officials and operators in food processing and similar"', add
label define ve01a_occ_lbl 742 `"Officials and operators in wood treatment, cabinetmakers, and similar"', add
label define ve01a_occ_lbl 743 `"Officials and operators in textiles, clothing production, and similar"', add
label define ve01a_occ_lbl 744 `"Officials and operators in hides, leather, and footwear"', add
label define ve01a_occ_lbl 800 `"All workers, operators, drivers of transportation and other specialized workers not well specified"', add
label define ve01a_occ_lbl 811 `"Operators of mining installations, and mineral extraction and processing"', add
label define ve01a_occ_lbl 812 `"Operators of metal processing installations"', add
label define ve01a_occ_lbl 813 `"Operators of glass, ceramic, and similar installations"', add
label define ve01a_occ_lbl 815 `"Operator of chemical treatment installations"', add
label define ve01a_occ_lbl 816 `"Operators of installations for producing energy and similar"', add
label define ve01a_occ_lbl 821 `"Operators of machines for working metals and mineral products"', add
label define ve01a_occ_lbl 823 `"Operators of machines for manufacturing rubber products and plastic materials"', add
label define ve01a_occ_lbl 825 `"Operators of printing and binding machinery and the manufacture of paper products"', add
label define ve01a_occ_lbl 826 `"Operators of machinery for manufacturing textile products and articles made of hides and leather"', add
label define ve01a_occ_lbl 827 `"Operators of machinery for preparation of foods and similar products"', add
label define ve01a_occ_lbl 829 `"Other operators of machinery and assemblers"', add
label define ve01a_occ_lbl 831 `"Locomotive machinists and similar"', add
label define ve01a_occ_lbl 832 `"Drivers of motor vehicles"', add
label define ve01a_occ_lbl 833 `"Operators of mobile agricultural machinery and other mobile machinery"', add
label define ve01a_occ_lbl 834 `"Deck sailors and similar"', add
label define ve01a_occ_lbl 900 `"All workers, operators, drivers of transportation and other specialized workers not well specified"', add
label define ve01a_occ_lbl 911 `"Traveling salesmen and similar"', add
label define ve01a_occ_lbl 913 `"Domestic personnel and similar, cleaners, clothes washers and pressers"', add
label define ve01a_occ_lbl 914 `"Concierges, window washers and similar"', add
label define ve01a_occ_lbl 915 `"Messengers, delivery persons, doormen, and similar"', add
label define ve01a_occ_lbl 916 `"Trash collectors and similar"', add
label define ve01a_occ_lbl 921 `"Day laborers in agriculture, forestry, fishing, and similar"', add
label define ve01a_occ_lbl 931 `"Day laborers in mining and construction"', add
label define ve01a_occ_lbl 932 `"Day laborers in the manufacturing industry"', add
label define ve01a_occ_lbl 933 `"Day laborers in transportation"', add
label define ve01a_occ_lbl 999 `"Not well specified"', add
label values ve01a_occ ve01a_occ_lbl

label define ve01a_ind_lbl 011 `"General crops and horticulture"'
label define ve01a_ind_lbl 012 `"Animal breeding"', add
label define ve01a_ind_lbl 013 `"Mixed production (crops and animal breeding)"', add
label define ve01a_ind_lbl 014 `"Agricultural services, except veterinary services"', add
label define ve01a_ind_lbl 015 `"Ordinary animal hunting"', add
label define ve01a_ind_lbl 020 `"Forestry and lumber extraction"', add
label define ve01a_ind_lbl 050 `"Fishing, fish breeding, and related activities"', add
label define ve01a_ind_lbl 101 `"Extraction and agglomeration of rock coal"', add
label define ve01a_ind_lbl 102 `"Extraction and agglomeration of lignite"', add
label define ve01a_ind_lbl 103 `"Extraction and agglomeration of peat"', add
label define ve01a_ind_lbl 111 `"Extraction of crude petroleum and natural gas"', add
label define ve01a_ind_lbl 112 `"Service activities related to petroleum and natural gas"', add
label define ve01a_ind_lbl 120 `"Extraction of minerals uranium and thorium"', add
label define ve01a_ind_lbl 131 `"Extraction of iron minerals"', add
label define ve01a_ind_lbl 132 `"Extraction of non-ferrous metallic minerals"', add
label define ve01a_ind_lbl 141 `"Extraction of stone, sand, and clay"', add
label define ve01a_ind_lbl 142 `"Extraction of minerals for the manufacture of fertilizers and chemicals"', add
label define ve01a_ind_lbl 151 `"Processing and conservation of meats, fruits, vegetables, and horticulture"', add
label define ve01a_ind_lbl 152 `"Elaboration of dairy products"', add
label define ve01a_ind_lbl 153 `"Elaboration of milled products and animal feeds"', add
label define ve01a_ind_lbl 154 `"Elaboration of other food products"', add
label define ve01a_ind_lbl 155 `"Distilling and mixing alcoholic beverages"', add
label define ve01a_ind_lbl 160 `"Elaboration of  tobacco products"', add
label define ve01a_ind_lbl 171 `"Thread production, weaving, and finishing textile products"', add
label define ve01a_ind_lbl 172 `"Manufacture of other textile products"', add
label define ve01a_ind_lbl 173 `"Manufacture of woven fabrics and knit articles"', add
label define ve01a_ind_lbl 181 `"Manufacture of clothing, except clothing made out of hides"', add
label define ve01a_ind_lbl 182 `"Curing and dying hides; manufacture of leather articles"', add
label define ve01a_ind_lbl 191 `"Tanning and curing leathers; manufacture of leather articles"', add
label define ve01a_ind_lbl 192 `"Manufacture of footwear"', add
label define ve01a_ind_lbl 201 `"Lumber sawing and finishing"', add
label define ve01a_ind_lbl 202 `"Manufacture of products made of wood, cork, straw and weavable materials"', add
label define ve01a_ind_lbl 210 `"Manufacture of paper and paper products"', add
label define ve01a_ind_lbl 221 `"Editing activities"', add
label define ve01a_ind_lbl 222 `"Printing activities"', add
label define ve01a_ind_lbl 223 `"Reproduction of recordings"', add
label define ve01a_ind_lbl 231 `"Manufacture of products of coke ovens"', add
label define ve01a_ind_lbl 232 `"Manufacture of products of petroleum refining"', add
label define ve01a_ind_lbl 241 `"Manufacture of basic chemical substances"', add
label define ve01a_ind_lbl 242 `"Manufacture of other chemical products"', add
label define ve01a_ind_lbl 251 `"Manufacture of cork products"', add
label define ve01a_ind_lbl 252 `"Manufacture of plastic products"', add
label define ve01a_ind_lbl 261 `"Manufacture of glass and glass products"', add
label define ve01a_ind_lbl 269 `"Manufacture of products from non-metallic minerals"', add
label define ve01a_ind_lbl 271 `"Basic iron and steel industries"', add
label define ve01a_ind_lbl 272 `"Manufacture of raw metal products"', add
label define ve01a_ind_lbl 273 `"Metal foundry"', add
label define ve01a_ind_lbl 281 `"Manufacture of metallic products for structural use"', add
label define ve01a_ind_lbl 289 `"Manufacture and services of other products made of metal"', add
label define ve01a_ind_lbl 291 `"Manufacture of machinery for general use"', add
label define ve01a_ind_lbl 292 `"Manufacture of machinery for specialized use"', add
label define ve01a_ind_lbl 293 `"Manufacture of appliances for domestic [household] use"', add
label define ve01a_ind_lbl 300 `"Manufacture of machinery for offices, accounting, and informatics"', add
label define ve01a_ind_lbl 311 `"Manufacture of electrical motors, generators, and transformers"', add
label define ve01a_ind_lbl 313 `"Manufacture of insulated wires and cables"', add
label define ve01a_ind_lbl 314 `"Manufacture of multi-celled batteries, batteries, and primary batteries"', add
label define ve01a_ind_lbl 315 `"Manufacture of electrical lamps and lighting equipment"', add
label define ve01a_ind_lbl 319 `"Manufacture of other types of electrical equipment"', add
label define ve01a_ind_lbl 321 `"Manufacture of tubes, valves, and other electronic articles"', add
label define ve01a_ind_lbl 331 `"Manufacture of medical appliances and instruments"', add
label define ve01a_ind_lbl 332 `"Manufacture of optical instruments and photographic equipment"', add
label define ve01a_ind_lbl 333 `"Manufacture of watches [clocks]"', add
label define ve01a_ind_lbl 341 `"Manufacture of automobile vehicles"', add
label define ve01a_ind_lbl 342 `"Manufacture of chassis for vehicles, tractors and tractor-trailers"', add
label define ve01a_ind_lbl 343 `"Manufacture of accessories for vehicles and their motors"', add
label define ve01a_ind_lbl 351 `"Ship construction and repair"', add
label define ve01a_ind_lbl 352 `"Manufacture of locomotives and materials for railroads and trolleys"', add
label define ve01a_ind_lbl 353 `"Manufacture of airplanes and specialized ships [planes]"', add
label define ve01a_ind_lbl 359 `"Manufacture of other types of transportation equipment"', add
label define ve01a_ind_lbl 361 `"Furniture manufacture"', add
label define ve01a_ind_lbl 369 `"Other manufacturing industries"', add
label define ve01a_ind_lbl 371 `"Recycling of metallic waste and discarded materials"', add
label define ve01a_ind_lbl 372 `"Recycling of non-metallic waste and discarded materials"', add
label define ve01a_ind_lbl 401 `"Generation, collection, and distribution of electrical energy"', add
label define ve01a_ind_lbl 402 `"Manufacture of gas and distribution via pipeline"', add
label define ve01a_ind_lbl 403 `"Provisioning of steam and hot water"', add
label define ve01a_ind_lbl 410 `"Water collection, purification, and distribution"', add
label define ve01a_ind_lbl 451 `"Land preparation"', add
label define ve01a_ind_lbl 452 `"Construction of buildings and civil engineering projects"', add
label define ve01a_ind_lbl 453 `"Building fitting"', add
label define ve01a_ind_lbl 454 `"Building finishing"', add
label define ve01a_ind_lbl 500 `"Sales, not well specified"', add
label define ve01a_ind_lbl 501 `"Sale of automobile vehicles"', add
label define ve01a_ind_lbl 502 `"Maintenance and repair of automobile vehicles"', add
label define ve01a_ind_lbl 503 `"Sale of parts, pieces, and accessories of automobile vehicles"', add
label define ve01a_ind_lbl 504 `"Sale, maintenance, and repair of bicycles"', add
label define ve01a_ind_lbl 505 `"Retail sale of fuel for automobiles"', add
label define ve01a_ind_lbl 512 `"Wholesale commerce of raw materials"', add
label define ve01a_ind_lbl 513 `"Wholesale commerce of household goods"', add
label define ve01a_ind_lbl 514 `"Wholesale commerce of intermediate products, waste products, and discarded goods"', add
label define ve01a_ind_lbl 515 `"Wholesale commerce of machinery, equipment, and materials"', add
label define ve01a_ind_lbl 519 `"Wholesale commerce of other products"', add
label define ve01a_ind_lbl 521 `"Non-specialized retail commerce in stores"', add
label define ve01a_ind_lbl 522 `"Retail sale of foods, beverages, and tobacco"', add
label define ve01a_ind_lbl 523 `"Retail sale of other products"', add
label define ve01a_ind_lbl 524 `"Retail sales in used-goods stores"', add
label define ve01a_ind_lbl 525 `"Retail sales not carried out in stores"', add
label define ve01a_ind_lbl 526 `"Repair of personal items and household equipment"', add
label define ve01a_ind_lbl 551 `"Hotels, camps, and other types of temporary housing"', add
label define ve01a_ind_lbl 552 `"Restaurants, bars, and cantinas"', add
label define ve01a_ind_lbl 601 `"Railroad transportation"', add
label define ve01a_ind_lbl 602 `"Other types of land transportation"', add
label define ve01a_ind_lbl 603 `"Transportation via pipelines"', add
label define ve01a_ind_lbl 611 `"Maritime, coastal, and interior navigation"', add
label define ve01a_ind_lbl 621 `"Regular air transportation"', add
label define ve01a_ind_lbl 622 `"Non-regular air transportation"', add
label define ve01a_ind_lbl 630 `"Cargo movement"', add
label define ve01a_ind_lbl 641 `"Postal and mail activities"', add
label define ve01a_ind_lbl 642 `"Telecommunications"', add
label define ve01a_ind_lbl 651 `"Monetary intermediation"', add
label define ve01a_ind_lbl 659 `"Other types of monetary intermediation"', add
label define ve01a_ind_lbl 660 `"Financing of insurance plans and pensions"', add
label define ve01a_ind_lbl 671 `"Auxiliary activities of financial intermediation"', add
label define ve01a_ind_lbl 672 `"Auxiliary activities of insurance and pension plans"', add
label define ve01a_ind_lbl 701 `"Real estate activities, details not specified"', add
label define ve01a_ind_lbl 702 `"Real estate activities carried out in exchange for payment"', add
label define ve01a_ind_lbl 711 `"Rental of transportation equipment"', add
label define ve01a_ind_lbl 712 `"Rental of other types of machinery and equipment"', add
label define ve01a_ind_lbl 713 `"Rental of personal and household goods"', add
label define ve01a_ind_lbl 721 `"Consultants in informatics equipment"', add
label define ve01a_ind_lbl 722 `"Consultants in informatics programs and administration of informatics programs"', add
label define ve01a_ind_lbl 723 `"Data processing"', add
label define ve01a_ind_lbl 724 `"Activities related to databases"', add
label define ve01a_ind_lbl 725 `"Maintenance and repair of office, accounting, and informatics machinery"', add
label define ve01a_ind_lbl 729 `"Other informatics activities"', add
label define ve01a_ind_lbl 731 `"Research and experimental development in the field of natural sciences and engineering"', add
label define ve01a_ind_lbl 732 `"Research and experimental development in the field of social sciences and humanities"', add
label define ve01a_ind_lbl 741 `"Research and experimental development in the field of social sciences and humanities"', add
label define ve01a_ind_lbl 742 `"Activities of architecture and engineering and other technical activities"', add
label define ve01a_ind_lbl 743 `"Publicity"', add
label define ve01a_ind_lbl 749 `"Business activities"', add
label define ve01a_ind_lbl 751 `"Administration of the state and application of economic and social policies of the community"', add
label define ve01a_ind_lbl 752 `"Provision of services to the general community"', add
label define ve01a_ind_lbl 753 `"Activities of obligatory-affiliation social security plans"', add
label define ve01a_ind_lbl 800 `"Teaching and education"', add
label define ve01a_ind_lbl 801 `"Elementary education"', add
label define ve01a_ind_lbl 802 `"Secondary education in general preparation"', add
label define ve01a_ind_lbl 803 `"Higher education"', add
label define ve01a_ind_lbl 809 `"Adult education and other types of education"', add
label define ve01a_ind_lbl 851 `"Activities related to human health"', add
label define ve01a_ind_lbl 852 `"Veterinary activities"', add
label define ve01a_ind_lbl 853 `"Activities of social services"', add
label define ve01a_ind_lbl 900 `"Removal of waste and residual water, sanitation, and similar activities"', add
label define ve01a_ind_lbl 911 `"Activities of business organizations and employers"', add
label define ve01a_ind_lbl 912 `"Activities of labor unions"', add
label define ve01a_ind_lbl 919 `"Activities of other associations"', add
label define ve01a_ind_lbl 921 `"Activities of cinema, radio and television, and other entertainment activities"', add
label define ve01a_ind_lbl 922 `"Activities of news agencies"', add
label define ve01a_ind_lbl 923 `"Activities of libraries, archives and museums, and other cultural activities"', add
label define ve01a_ind_lbl 924 `"Sports activities and other recreational activities"', add
label define ve01a_ind_lbl 930 `"Other service activities"', add
label define ve01a_ind_lbl 950 `"Private homes with domestic service"', add
label define ve01a_ind_lbl 990 `"Extraterritorial organizations and organisms"', add
label define ve01a_ind_lbl 998 `"Unknown"', add
label define ve01a_ind_lbl 999 `"NIU (not in universe)"', add
label values ve01a_ind ve01a_ind_lbl

label define ve01a_empsize_lbl 0 `"NIU (not in universe)"'
label define ve01a_empsize_lbl 1 `"1"', add
label define ve01a_empsize_lbl 2 `"2 to 4"', add
label define ve01a_empsize_lbl 3 `"5"', add
label define ve01a_empsize_lbl 4 `"6 to 10"', add
label define ve01a_empsize_lbl 5 `"11 to 20"', add
label define ve01a_empsize_lbl 6 `"21 to 100"', add
label define ve01a_empsize_lbl 7 `"More than 100"', add
label define ve01a_empsize_lbl 9 `"Unknown"', add
label values ve01a_empsize ve01a_empsize_lbl

label define ve01a_empsect_lbl 0 `"NIU (not in universe)"'
label define ve01a_empsect_lbl 1 `"Private"', add
label define ve01a_empsect_lbl 2 `"Public administration"', add
label define ve01a_empsect_lbl 9 `"Unknown"', add
label values ve01a_empsect ve01a_empsect_lbl

label define ve01a_mercant_lbl 0 `"NIU (not in universe)"'
label define ve01a_mercant_lbl 1 `"Yes"', add
label define ve01a_mercant_lbl 2 `"No"', add
label define ve01a_mercant_lbl 3 `"Does not know"', add
label define ve01a_mercant_lbl 9 `"Unknown"', add
label values ve01a_mercant ve01a_mercant_lbl

label define ve01a_classwk_lbl 0 `"NIU (not in universe)"'
label define ve01a_classwk_lbl 1 `"Permanent employee or worker"', add
label define ve01a_classwk_lbl 2 `"Contract employee or worker"', add
label define ve01a_classwk_lbl 3 `"Occasional employee or worker"', add
label define ve01a_classwk_lbl 4 `"Self-employed worker"', add
label define ve01a_classwk_lbl 5 `"Employer or business owner"', add
label define ve01a_classwk_lbl 6 `"Member of a cooperative"', add
label define ve01a_classwk_lbl 7 `"Unpaid family worker"', add
label define ve01a_classwk_lbl 8 `"Domestic employee"', add
label define ve01a_classwk_lbl 9 `"Unknown"', add
label values ve01a_classwk ve01a_classwk_lbl

label define ve01a_occtrain_lbl 0 `"NIU (not in universe)"'
label define ve01a_occtrain_lbl 1 `"Yes"', add
label define ve01a_occtrain_lbl 2 `"No"', add
label define ve01a_occtrain_lbl 9 `"Unknown"', add
label values ve01a_occtrain ve01a_occtrain_lbl

label define ve01a_wrkhrs_lbl 00 `"NIU (not in universe)"'
label define ve01a_wrkhrs_lbl 01 `"1"', add
label define ve01a_wrkhrs_lbl 02 `"2"', add
label define ve01a_wrkhrs_lbl 03 `"3"', add
label define ve01a_wrkhrs_lbl 04 `"4"', add
label define ve01a_wrkhrs_lbl 05 `"5"', add
label define ve01a_wrkhrs_lbl 06 `"6"', add
label define ve01a_wrkhrs_lbl 07 `"7"', add
label define ve01a_wrkhrs_lbl 08 `"8"', add
label define ve01a_wrkhrs_lbl 09 `"9"', add
label define ve01a_wrkhrs_lbl 10 `"10"', add
label define ve01a_wrkhrs_lbl 11 `"11"', add
label define ve01a_wrkhrs_lbl 12 `"12"', add
label define ve01a_wrkhrs_lbl 13 `"13"', add
label define ve01a_wrkhrs_lbl 14 `"14"', add
label define ve01a_wrkhrs_lbl 15 `"15"', add
label define ve01a_wrkhrs_lbl 16 `"16"', add
label define ve01a_wrkhrs_lbl 17 `"17"', add
label define ve01a_wrkhrs_lbl 18 `"18"', add
label define ve01a_wrkhrs_lbl 19 `"19"', add
label define ve01a_wrkhrs_lbl 20 `"20"', add
label define ve01a_wrkhrs_lbl 21 `"21"', add
label define ve01a_wrkhrs_lbl 22 `"22"', add
label define ve01a_wrkhrs_lbl 23 `"23"', add
label define ve01a_wrkhrs_lbl 24 `"24"', add
label define ve01a_wrkhrs_lbl 25 `"25"', add
label define ve01a_wrkhrs_lbl 26 `"26"', add
label define ve01a_wrkhrs_lbl 27 `"27"', add
label define ve01a_wrkhrs_lbl 28 `"28"', add
label define ve01a_wrkhrs_lbl 29 `"29"', add
label define ve01a_wrkhrs_lbl 30 `"30"', add
label define ve01a_wrkhrs_lbl 31 `"31"', add
label define ve01a_wrkhrs_lbl 32 `"32"', add
label define ve01a_wrkhrs_lbl 33 `"33"', add
label define ve01a_wrkhrs_lbl 34 `"34"', add
label define ve01a_wrkhrs_lbl 35 `"35"', add
label define ve01a_wrkhrs_lbl 36 `"36"', add
label define ve01a_wrkhrs_lbl 37 `"37"', add
label define ve01a_wrkhrs_lbl 38 `"38"', add
label define ve01a_wrkhrs_lbl 39 `"39"', add
label define ve01a_wrkhrs_lbl 40 `"40"', add
label define ve01a_wrkhrs_lbl 41 `"41"', add
label define ve01a_wrkhrs_lbl 42 `"42"', add
label define ve01a_wrkhrs_lbl 43 `"43"', add
label define ve01a_wrkhrs_lbl 44 `"44"', add
label define ve01a_wrkhrs_lbl 45 `"45"', add
label define ve01a_wrkhrs_lbl 46 `"46"', add
label define ve01a_wrkhrs_lbl 47 `"47"', add
label define ve01a_wrkhrs_lbl 48 `"48"', add
label define ve01a_wrkhrs_lbl 49 `"49"', add
label define ve01a_wrkhrs_lbl 50 `"50"', add
label define ve01a_wrkhrs_lbl 51 `"51"', add
label define ve01a_wrkhrs_lbl 52 `"52"', add
label define ve01a_wrkhrs_lbl 53 `"53"', add
label define ve01a_wrkhrs_lbl 54 `"54"', add
label define ve01a_wrkhrs_lbl 55 `"55"', add
label define ve01a_wrkhrs_lbl 56 `"56"', add
label define ve01a_wrkhrs_lbl 57 `"57"', add
label define ve01a_wrkhrs_lbl 58 `"58"', add
label define ve01a_wrkhrs_lbl 59 `"59"', add
label define ve01a_wrkhrs_lbl 60 `"60"', add
label define ve01a_wrkhrs_lbl 61 `"61"', add
label define ve01a_wrkhrs_lbl 62 `"62"', add
label define ve01a_wrkhrs_lbl 63 `"63"', add
label define ve01a_wrkhrs_lbl 64 `"64"', add
label define ve01a_wrkhrs_lbl 65 `"65"', add
label define ve01a_wrkhrs_lbl 66 `"66"', add
label define ve01a_wrkhrs_lbl 67 `"67"', add
label define ve01a_wrkhrs_lbl 68 `"68"', add
label define ve01a_wrkhrs_lbl 69 `"69"', add
label define ve01a_wrkhrs_lbl 70 `"70"', add
label define ve01a_wrkhrs_lbl 71 `"71"', add
label define ve01a_wrkhrs_lbl 72 `"72"', add
label define ve01a_wrkhrs_lbl 73 `"73"', add
label define ve01a_wrkhrs_lbl 74 `"74"', add
label define ve01a_wrkhrs_lbl 75 `"75"', add
label define ve01a_wrkhrs_lbl 76 `"76"', add
label define ve01a_wrkhrs_lbl 77 `"77"', add
label define ve01a_wrkhrs_lbl 78 `"78"', add
label define ve01a_wrkhrs_lbl 79 `"79"', add
label define ve01a_wrkhrs_lbl 80 `"80"', add
label define ve01a_wrkhrs_lbl 81 `"81"', add
label define ve01a_wrkhrs_lbl 82 `"82"', add
label define ve01a_wrkhrs_lbl 83 `"83"', add
label define ve01a_wrkhrs_lbl 84 `"84"', add
label define ve01a_wrkhrs_lbl 85 `"85"', add
label define ve01a_wrkhrs_lbl 86 `"86"', add
label define ve01a_wrkhrs_lbl 87 `"87"', add
label define ve01a_wrkhrs_lbl 88 `"88"', add
label define ve01a_wrkhrs_lbl 89 `"89"', add
label define ve01a_wrkhrs_lbl 90 `"90"', add
label define ve01a_wrkhrs_lbl 91 `"91"', add
label define ve01a_wrkhrs_lbl 92 `"92"', add
label define ve01a_wrkhrs_lbl 93 `"93"', add
label define ve01a_wrkhrs_lbl 94 `"94"', add
label define ve01a_wrkhrs_lbl 95 `"95"', add
label define ve01a_wrkhrs_lbl 96 `"96"', add
label define ve01a_wrkhrs_lbl 97 `"97"', add
label define ve01a_wrkhrs_lbl 98 `"98"', add
label define ve01a_wrkhrs_lbl 99 `"Unknown"', add
label values ve01a_wrkhrs ve01a_wrkhrs_lbl

label define ve01a_inc_lbl 099999 `"Unknown"'
label define ve01a_inc_lbl 999999 `"NIU (not in universe)"', add
label values ve01a_inc ve01a_inc_lbl

label define ve01a_incinv_lbl 0000 `"0"'
label define ve01a_incinv_lbl 0001 `"Less than 10"', add
label define ve01a_incinv_lbl 0010 `"10"', add
label define ve01a_incinv_lbl 0011 `"11"', add
label define ve01a_incinv_lbl 0012 `"12"', add
label define ve01a_incinv_lbl 0013 `"13"', add
label define ve01a_incinv_lbl 0014 `"14"', add
label define ve01a_incinv_lbl 0015 `"15"', add
label define ve01a_incinv_lbl 0016 `"16"', add
label define ve01a_incinv_lbl 0017 `"17"', add
label define ve01a_incinv_lbl 0018 `"18"', add
label define ve01a_incinv_lbl 0020 `"20"', add
label define ve01a_incinv_lbl 0021 `"21"', add
label define ve01a_incinv_lbl 0022 `"22"', add
label define ve01a_incinv_lbl 0023 `"23"', add
label define ve01a_incinv_lbl 0024 `"24"', add
label define ve01a_incinv_lbl 0025 `"25"', add
label define ve01a_incinv_lbl 0026 `"26"', add
label define ve01a_incinv_lbl 0027 `"27"', add
label define ve01a_incinv_lbl 0028 `"28"', add
label define ve01a_incinv_lbl 0030 `"30"', add
label define ve01a_incinv_lbl 0032 `"32"', add
label define ve01a_incinv_lbl 0033 `"33"', add
label define ve01a_incinv_lbl 0034 `"34"', add
label define ve01a_incinv_lbl 0035 `"35"', add
label define ve01a_incinv_lbl 0036 `"36"', add
label define ve01a_incinv_lbl 0037 `"37"', add
label define ve01a_incinv_lbl 0038 `"38"', add
label define ve01a_incinv_lbl 0040 `"40"', add
label define ve01a_incinv_lbl 0042 `"42"', add
label define ve01a_incinv_lbl 0043 `"43"', add
label define ve01a_incinv_lbl 0045 `"45"', add
label define ve01a_incinv_lbl 0046 `"46"', add
label define ve01a_incinv_lbl 0047 `"47"', add
label define ve01a_incinv_lbl 0048 `"48"', add
label define ve01a_incinv_lbl 0050 `"50"', add
label define ve01a_incinv_lbl 0052 `"52"', add
label define ve01a_incinv_lbl 0053 `"53"', add
label define ve01a_incinv_lbl 0055 `"55"', add
label define ve01a_incinv_lbl 0057 `"57"', add
label define ve01a_incinv_lbl 0060 `"60"', add
label define ve01a_incinv_lbl 0061 `"61"', add
label define ve01a_incinv_lbl 0062 `"62"', add
label define ve01a_incinv_lbl 0063 `"63"', add
label define ve01a_incinv_lbl 0065 `"65"', add
label define ve01a_incinv_lbl 0067 `"67"', add
label define ve01a_incinv_lbl 0068 `"68"', add
label define ve01a_incinv_lbl 0069 `"69"', add
label define ve01a_incinv_lbl 0070 `"70"', add
label define ve01a_incinv_lbl 0072 `"72"', add
label define ve01a_incinv_lbl 0073 `"73"', add
label define ve01a_incinv_lbl 0074 `"74"', add
label define ve01a_incinv_lbl 0075 `"75"', add
label define ve01a_incinv_lbl 0076 `"76"', add
label define ve01a_incinv_lbl 0077 `"77"', add
label define ve01a_incinv_lbl 0078 `"78"', add
label define ve01a_incinv_lbl 0080 `"80"', add
label define ve01a_incinv_lbl 0082 `"82"', add
label define ve01a_incinv_lbl 0084 `"84"', add
label define ve01a_incinv_lbl 0085 `"85"', add
label define ve01a_incinv_lbl 0086 `"86"', add
label define ve01a_incinv_lbl 0090 `"90"', add
label define ve01a_incinv_lbl 0091 `"91"', add
label define ve01a_incinv_lbl 0092 `"92"', add
label define ve01a_incinv_lbl 0094 `"94"', add
label define ve01a_incinv_lbl 0095 `"95"', add
label define ve01a_incinv_lbl 0096 `"96"', add
label define ve01a_incinv_lbl 0097 `"97"', add
label define ve01a_incinv_lbl 0100 `"100"', add
label define ve01a_incinv_lbl 0102 `"102"', add
label define ve01a_incinv_lbl 0105 `"105"', add
label define ve01a_incinv_lbl 0108 `"108"', add
label define ve01a_incinv_lbl 0110 `"110"', add
label define ve01a_incinv_lbl 0111 `"111"', add
label define ve01a_incinv_lbl 0114 `"114"', add
label define ve01a_incinv_lbl 0115 `"115"', add
label define ve01a_incinv_lbl 0116 `"116"', add
label define ve01a_incinv_lbl 0120 `"120"', add
label define ve01a_incinv_lbl 0122 `"122"', add
label define ve01a_incinv_lbl 0124 `"124"', add
label define ve01a_incinv_lbl 0125 `"125"', add
label define ve01a_incinv_lbl 0126 `"126"', add
label define ve01a_incinv_lbl 0128 `"128"', add
label define ve01a_incinv_lbl 0130 `"130"', add
label define ve01a_incinv_lbl 0135 `"135"', add
label define ve01a_incinv_lbl 0137 `"137"', add
label define ve01a_incinv_lbl 0138 `"138"', add
label define ve01a_incinv_lbl 0139 `"139"', add
label define ve01a_incinv_lbl 0140 `"140"', add
label define ve01a_incinv_lbl 0143 `"143"', add
label define ve01a_incinv_lbl 0144 `"144"', add
label define ve01a_incinv_lbl 0145 `"145"', add
label define ve01a_incinv_lbl 0148 `"148"', add
label define ve01a_incinv_lbl 0150 `"150"', add
label define ve01a_incinv_lbl 0151 `"151"', add
label define ve01a_incinv_lbl 0154 `"154"', add
label define ve01a_incinv_lbl 0155 `"155"', add
label define ve01a_incinv_lbl 0158 `"158"', add
label define ve01a_incinv_lbl 0159 `"159"', add
label define ve01a_incinv_lbl 0160 `"160"', add
label define ve01a_incinv_lbl 0165 `"165"', add
label define ve01a_incinv_lbl 0168 `"168"', add
label define ve01a_incinv_lbl 0170 `"170"', add
label define ve01a_incinv_lbl 0171 `"171"', add
label define ve01a_incinv_lbl 0175 `"175"', add
label define ve01a_incinv_lbl 0176 `"176"', add
label define ve01a_incinv_lbl 0177 `"177"', add
label define ve01a_incinv_lbl 0180 `"180"', add
label define ve01a_incinv_lbl 0185 `"185"', add
label define ve01a_incinv_lbl 0187 `"187"', add
label define ve01a_incinv_lbl 0190 `"190"', add
label define ve01a_incinv_lbl 0193 `"193"', add
label define ve01a_incinv_lbl 0195 `"195"', add
label define ve01a_incinv_lbl 0198 `"198"', add
label define ve01a_incinv_lbl 0200 `"200"', add
label define ve01a_incinv_lbl 0205 `"205"', add
label define ve01a_incinv_lbl 0208 `"208"', add
label define ve01a_incinv_lbl 0210 `"210"', add
label define ve01a_incinv_lbl 0215 `"215"', add
label define ve01a_incinv_lbl 0217 `"217"', add
label define ve01a_incinv_lbl 0220 `"220"', add
label define ve01a_incinv_lbl 0225 `"225"', add
label define ve01a_incinv_lbl 0230 `"230"', add
label define ve01a_incinv_lbl 0240 `"240"', add
label define ve01a_incinv_lbl 0244 `"244"', add
label define ve01a_incinv_lbl 0245 `"245"', add
label define ve01a_incinv_lbl 0246 `"246"', add
label define ve01a_incinv_lbl 0250 `"250"', add
label define ve01a_incinv_lbl 0253 `"253"', add
label define ve01a_incinv_lbl 0255 `"255"', add
label define ve01a_incinv_lbl 0258 `"258"', add
label define ve01a_incinv_lbl 0260 `"260"', add
label define ve01a_incinv_lbl 0263 `"263"', add
label define ve01a_incinv_lbl 0264 `"264"', add
label define ve01a_incinv_lbl 0265 `"265"', add
label define ve01a_incinv_lbl 0266 `"266"', add
label define ve01a_incinv_lbl 0267 `"267"', add
label define ve01a_incinv_lbl 0270 `"270"', add
label define ve01a_incinv_lbl 0272 `"272"', add
label define ve01a_incinv_lbl 0275 `"275"', add
label define ve01a_incinv_lbl 0278 `"278"', add
label define ve01a_incinv_lbl 0280 `"280"', add
label define ve01a_incinv_lbl 0285 `"285"', add
label define ve01a_incinv_lbl 0290 `"290"', add
label define ve01a_incinv_lbl 0295 `"295"', add
label define ve01a_incinv_lbl 0300 `"300"', add
label define ve01a_incinv_lbl 0303 `"303"', add
label define ve01a_incinv_lbl 0307 `"307"', add
label define ve01a_incinv_lbl 0310 `"310"', add
label define ve01a_incinv_lbl 0315 `"315"', add
label define ve01a_incinv_lbl 0320 `"320"', add
label define ve01a_incinv_lbl 0325 `"325"', add
label define ve01a_incinv_lbl 0330 `"330"', add
label define ve01a_incinv_lbl 0335 `"335"', add
label define ve01a_incinv_lbl 0336 `"336"', add
label define ve01a_incinv_lbl 0340 `"340"', add
label define ve01a_incinv_lbl 0345 `"345"', add
label define ve01a_incinv_lbl 0350 `"350"', add
label define ve01a_incinv_lbl 0355 `"355"', add
label define ve01a_incinv_lbl 0360 `"360"', add
label define ve01a_incinv_lbl 0364 `"364"', add
label define ve01a_incinv_lbl 0365 `"365"', add
label define ve01a_incinv_lbl 0370 `"370"', add
label define ve01a_incinv_lbl 0375 `"375"', add
label define ve01a_incinv_lbl 0380 `"380"', add
label define ve01a_incinv_lbl 0390 `"390"', add
label define ve01a_incinv_lbl 0400 `"400"', add
label define ve01a_incinv_lbl 0401 `"401"', add
label define ve01a_incinv_lbl 0405 `"405"', add
label define ve01a_incinv_lbl 0410 `"410"', add
label define ve01a_incinv_lbl 0420 `"420"', add
label define ve01a_incinv_lbl 0430 `"430"', add
label define ve01a_incinv_lbl 0432 `"432"', add
label define ve01a_incinv_lbl 0433 `"433"', add
label define ve01a_incinv_lbl 0440 `"440"', add
label define ve01a_incinv_lbl 0450 `"450"', add
label define ve01a_incinv_lbl 0458 `"458"', add
label define ve01a_incinv_lbl 0460 `"460"', add
label define ve01a_incinv_lbl 0470 `"470"', add
label define ve01a_incinv_lbl 0480 `"480"', add
label define ve01a_incinv_lbl 0485 `"485"', add
label define ve01a_incinv_lbl 0490 `"490"', add
label define ve01a_incinv_lbl 0500 `"500"', add
label define ve01a_incinv_lbl 0501 `"501"', add
label define ve01a_incinv_lbl 0505 `"505"', add
label define ve01a_incinv_lbl 0510 `"510"', add
label define ve01a_incinv_lbl 0520 `"520"', add
label define ve01a_incinv_lbl 0525 `"525"', add
label define ve01a_incinv_lbl 0526 `"526"', add
label define ve01a_incinv_lbl 0530 `"530"', add
label define ve01a_incinv_lbl 0540 `"540"', add
label define ve01a_incinv_lbl 0550 `"550"', add
label define ve01a_incinv_lbl 0555 `"555"', add
label define ve01a_incinv_lbl 0560 `"560"', add
label define ve01a_incinv_lbl 0570 `"570"', add
label define ve01a_incinv_lbl 0575 `"575"', add
label define ve01a_incinv_lbl 0580 `"580"', add
label define ve01a_incinv_lbl 0590 `"590"', add
label define ve01a_incinv_lbl 0600 `"600"', add
label define ve01a_incinv_lbl 0606 `"606"', add
label define ve01a_incinv_lbl 0610 `"610"', add
label define ve01a_incinv_lbl 0620 `"620"', add
label define ve01a_incinv_lbl 0625 `"625"', add
label define ve01a_incinv_lbl 0630 `"630"', add
label define ve01a_incinv_lbl 0640 `"640"', add
label define ve01a_incinv_lbl 0650 `"650"', add
label define ve01a_incinv_lbl 0660 `"660"', add
label define ve01a_incinv_lbl 0665 `"665"', add
label define ve01a_incinv_lbl 0670 `"670"', add
label define ve01a_incinv_lbl 0680 `"680"', add
label define ve01a_incinv_lbl 0699 `"699"', add
label define ve01a_incinv_lbl 0700 `"700"', add
label define ve01a_incinv_lbl 0720 `"720"', add
label define ve01a_incinv_lbl 0740 `"740"', add
label define ve01a_incinv_lbl 0750 `"750"', add
label define ve01a_incinv_lbl 0760 `"760"', add
label define ve01a_incinv_lbl 0770 `"770"', add
label define ve01a_incinv_lbl 0780 `"780"', add
label define ve01a_incinv_lbl 0784 `"784"', add
label define ve01a_incinv_lbl 0790 `"790"', add
label define ve01a_incinv_lbl 0800 `"800"', add
label define ve01a_incinv_lbl 0810 `"810"', add
label define ve01a_incinv_lbl 0820 `"820"', add
label define ve01a_incinv_lbl 0840 `"840"', add
label define ve01a_incinv_lbl 0850 `"850"', add
label define ve01a_incinv_lbl 0860 `"860"', add
label define ve01a_incinv_lbl 0880 `"880"', add
label define ve01a_incinv_lbl 0900 `"900"', add
label define ve01a_incinv_lbl 0930 `"930"', add
label define ve01a_incinv_lbl 0935 `"935"', add
label define ve01a_incinv_lbl 0950 `"950"', add
label define ve01a_incinv_lbl 0980 `"980"', add
label define ve01a_incinv_lbl 1000 `"1000"', add
label define ve01a_incinv_lbl 1050 `"1050"', add
label define ve01a_incinv_lbl 1080 `"1080"', add
label define ve01a_incinv_lbl 1100 `"1100"', add
label define ve01a_incinv_lbl 1125 `"1125"', add
label define ve01a_incinv_lbl 1130 `"1130"', add
label define ve01a_incinv_lbl 1150 `"1150"', add
label define ve01a_incinv_lbl 1180 `"1180"', add
label define ve01a_incinv_lbl 1185 `"1185"', add
label define ve01a_incinv_lbl 1190 `"1190"', add
label define ve01a_incinv_lbl 1200 `"1200"', add
label define ve01a_incinv_lbl 1235 `"1235"', add
label define ve01a_incinv_lbl 1250 `"1250"', add
label define ve01a_incinv_lbl 1300 `"1300"', add
label define ve01a_incinv_lbl 1340 `"1340"', add
label define ve01a_incinv_lbl 1350 `"1350"', add
label define ve01a_incinv_lbl 1400 `"1400"', add
label define ve01a_incinv_lbl 1450 `"1450"', add
label define ve01a_incinv_lbl 1480 `"1480"', add
label define ve01a_incinv_lbl 1500 `"1500"', add
label define ve01a_incinv_lbl 1570 `"1570"', add
label define ve01a_incinv_lbl 1600 `"1600"', add
label define ve01a_incinv_lbl 1700 `"1700"', add
label define ve01a_incinv_lbl 1800 `"1800"', add
label define ve01a_incinv_lbl 1801 `"1801"', add
label define ve01a_incinv_lbl 1850 `"1850"', add
label define ve01a_incinv_lbl 1890 `"1890"', add
label define ve01a_incinv_lbl 1900 `"1900"', add
label define ve01a_incinv_lbl 1980 `"1980"', add
label define ve01a_incinv_lbl 2000 `"2000"', add
label define ve01a_incinv_lbl 2010 `"2010"', add
label define ve01a_incinv_lbl 2100 `"2100"', add
label define ve01a_incinv_lbl 2110 `"2110"', add
label define ve01a_incinv_lbl 2200 `"2200"', add
label define ve01a_incinv_lbl 2300 `"2300"', add
label define ve01a_incinv_lbl 2310 `"2310"', add
label define ve01a_incinv_lbl 2400 `"2400"', add
label define ve01a_incinv_lbl 2500 `"2500"', add
label define ve01a_incinv_lbl 2710 `"2710"', add
label define ve01a_incinv_lbl 2800 `"2800"', add
label define ve01a_incinv_lbl 2900 `"2900"', add
label define ve01a_incinv_lbl 3000 `"3000+"', add
label define ve01a_incinv_lbl 9998 `"Unknown"', add
label define ve01a_incinv_lbl 9999 `"NIU (not in universe)"', add
label values ve01a_incinv ve01a_incinv_lbl

label define ve01a_incpen_lbl 000000 `"0"'
label define ve01a_incpen_lbl 099998 `"Unknown"', add
label define ve01a_incpen_lbl 099999 `"NIU (not in universe)"', add
label values ve01a_incpen ve01a_incpen_lbl

label define ve01a_incret_lbl 000000 `"0"'
label define ve01a_incret_lbl 099998 `"Unknown"', add
label define ve01a_incret_lbl 099999 `"NIU (not in universe)"', add
label values ve01a_incret ve01a_incret_lbl

label define ve01a_incsch_lbl 000 `"0"'
label define ve01a_incsch_lbl 001 `"1"', add
label define ve01a_incsch_lbl 002 `"2"', add
label define ve01a_incsch_lbl 003 `"3"', add
label define ve01a_incsch_lbl 004 `"4"', add
label define ve01a_incsch_lbl 005 `"5"', add
label define ve01a_incsch_lbl 006 `"6"', add
label define ve01a_incsch_lbl 007 `"7"', add
label define ve01a_incsch_lbl 008 `"8"', add
label define ve01a_incsch_lbl 009 `"9"', add
label define ve01a_incsch_lbl 010 `"10"', add
label define ve01a_incsch_lbl 011 `"11"', add
label define ve01a_incsch_lbl 012 `"12"', add
label define ve01a_incsch_lbl 013 `"13"', add
label define ve01a_incsch_lbl 014 `"14"', add
label define ve01a_incsch_lbl 015 `"15"', add
label define ve01a_incsch_lbl 016 `"16"', add
label define ve01a_incsch_lbl 017 `"17"', add
label define ve01a_incsch_lbl 018 `"18"', add
label define ve01a_incsch_lbl 019 `"19"', add
label define ve01a_incsch_lbl 020 `"20"', add
label define ve01a_incsch_lbl 021 `"21"', add
label define ve01a_incsch_lbl 022 `"22"', add
label define ve01a_incsch_lbl 023 `"23"', add
label define ve01a_incsch_lbl 024 `"24"', add
label define ve01a_incsch_lbl 025 `"25"', add
label define ve01a_incsch_lbl 026 `"26"', add
label define ve01a_incsch_lbl 027 `"27"', add
label define ve01a_incsch_lbl 028 `"28"', add
label define ve01a_incsch_lbl 029 `"29"', add
label define ve01a_incsch_lbl 030 `"30"', add
label define ve01a_incsch_lbl 031 `"31"', add
label define ve01a_incsch_lbl 032 `"32"', add
label define ve01a_incsch_lbl 033 `"33"', add
label define ve01a_incsch_lbl 034 `"34"', add
label define ve01a_incsch_lbl 035 `"35"', add
label define ve01a_incsch_lbl 036 `"36"', add
label define ve01a_incsch_lbl 037 `"37"', add
label define ve01a_incsch_lbl 038 `"38"', add
label define ve01a_incsch_lbl 039 `"39"', add
label define ve01a_incsch_lbl 040 `"40"', add
label define ve01a_incsch_lbl 041 `"41"', add
label define ve01a_incsch_lbl 042 `"42"', add
label define ve01a_incsch_lbl 043 `"43"', add
label define ve01a_incsch_lbl 044 `"44"', add
label define ve01a_incsch_lbl 045 `"45"', add
label define ve01a_incsch_lbl 046 `"46"', add
label define ve01a_incsch_lbl 047 `"47"', add
label define ve01a_incsch_lbl 048 `"48"', add
label define ve01a_incsch_lbl 049 `"49"', add
label define ve01a_incsch_lbl 050 `"50"', add
label define ve01a_incsch_lbl 052 `"52"', add
label define ve01a_incsch_lbl 053 `"53"', add
label define ve01a_incsch_lbl 054 `"54"', add
label define ve01a_incsch_lbl 055 `"55"', add
label define ve01a_incsch_lbl 056 `"56"', add
label define ve01a_incsch_lbl 057 `"57"', add
label define ve01a_incsch_lbl 058 `"58"', add
label define ve01a_incsch_lbl 059 `"59"', add
label define ve01a_incsch_lbl 060 `"60"', add
label define ve01a_incsch_lbl 061 `"61"', add
label define ve01a_incsch_lbl 062 `"62"', add
label define ve01a_incsch_lbl 063 `"63"', add
label define ve01a_incsch_lbl 064 `"64"', add
label define ve01a_incsch_lbl 065 `"65"', add
label define ve01a_incsch_lbl 066 `"66"', add
label define ve01a_incsch_lbl 067 `"67"', add
label define ve01a_incsch_lbl 068 `"68"', add
label define ve01a_incsch_lbl 069 `"69"', add
label define ve01a_incsch_lbl 070 `"70"', add
label define ve01a_incsch_lbl 071 `"71"', add
label define ve01a_incsch_lbl 072 `"72"', add
label define ve01a_incsch_lbl 074 `"74"', add
label define ve01a_incsch_lbl 075 `"75"', add
label define ve01a_incsch_lbl 076 `"76"', add
label define ve01a_incsch_lbl 077 `"77"', add
label define ve01a_incsch_lbl 078 `"78"', add
label define ve01a_incsch_lbl 079 `"79"', add
label define ve01a_incsch_lbl 080 `"80"', add
label define ve01a_incsch_lbl 081 `"81"', add
label define ve01a_incsch_lbl 082 `"82"', add
label define ve01a_incsch_lbl 083 `"83"', add
label define ve01a_incsch_lbl 084 `"84"', add
label define ve01a_incsch_lbl 085 `"85"', add
label define ve01a_incsch_lbl 086 `"86"', add
label define ve01a_incsch_lbl 087 `"87"', add
label define ve01a_incsch_lbl 088 `"88"', add
label define ve01a_incsch_lbl 089 `"89"', add
label define ve01a_incsch_lbl 090 `"90"', add
label define ve01a_incsch_lbl 091 `"91"', add
label define ve01a_incsch_lbl 092 `"92"', add
label define ve01a_incsch_lbl 093 `"93"', add
label define ve01a_incsch_lbl 094 `"94"', add
label define ve01a_incsch_lbl 095 `"95"', add
label define ve01a_incsch_lbl 096 `"96"', add
label define ve01a_incsch_lbl 097 `"97"', add
label define ve01a_incsch_lbl 098 `"98"', add
label define ve01a_incsch_lbl 099 `"99"', add
label define ve01a_incsch_lbl 100 `"100"', add
label define ve01a_incsch_lbl 101 `"101"', add
label define ve01a_incsch_lbl 102 `"102"', add
label define ve01a_incsch_lbl 103 `"103"', add
label define ve01a_incsch_lbl 104 `"104"', add
label define ve01a_incsch_lbl 105 `"105"', add
label define ve01a_incsch_lbl 106 `"106"', add
label define ve01a_incsch_lbl 107 `"107"', add
label define ve01a_incsch_lbl 108 `"108"', add
label define ve01a_incsch_lbl 109 `"109"', add
label define ve01a_incsch_lbl 110 `"110"', add
label define ve01a_incsch_lbl 111 `"111"', add
label define ve01a_incsch_lbl 112 `"112"', add
label define ve01a_incsch_lbl 113 `"113"', add
label define ve01a_incsch_lbl 114 `"114"', add
label define ve01a_incsch_lbl 115 `"115"', add
label define ve01a_incsch_lbl 116 `"116"', add
label define ve01a_incsch_lbl 117 `"117"', add
label define ve01a_incsch_lbl 118 `"118"', add
label define ve01a_incsch_lbl 119 `"119"', add
label define ve01a_incsch_lbl 120 `"120"', add
label define ve01a_incsch_lbl 121 `"121"', add
label define ve01a_incsch_lbl 122 `"122"', add
label define ve01a_incsch_lbl 123 `"123"', add
label define ve01a_incsch_lbl 124 `"124"', add
label define ve01a_incsch_lbl 125 `"125"', add
label define ve01a_incsch_lbl 127 `"127"', add
label define ve01a_incsch_lbl 128 `"128"', add
label define ve01a_incsch_lbl 129 `"129"', add
label define ve01a_incsch_lbl 130 `"130"', add
label define ve01a_incsch_lbl 132 `"132"', add
label define ve01a_incsch_lbl 133 `"133"', add
label define ve01a_incsch_lbl 134 `"134"', add
label define ve01a_incsch_lbl 135 `"135"', add
label define ve01a_incsch_lbl 136 `"136"', add
label define ve01a_incsch_lbl 137 `"137"', add
label define ve01a_incsch_lbl 138 `"138"', add
label define ve01a_incsch_lbl 139 `"139"', add
label define ve01a_incsch_lbl 140 `"140"', add
label define ve01a_incsch_lbl 141 `"141"', add
label define ve01a_incsch_lbl 142 `"142"', add
label define ve01a_incsch_lbl 144 `"144"', add
label define ve01a_incsch_lbl 145 `"145"', add
label define ve01a_incsch_lbl 148 `"148"', add
label define ve01a_incsch_lbl 150 `"150"', add
label define ve01a_incsch_lbl 152 `"152"', add
label define ve01a_incsch_lbl 153 `"153"', add
label define ve01a_incsch_lbl 154 `"154"', add
label define ve01a_incsch_lbl 156 `"156"', add
label define ve01a_incsch_lbl 157 `"157"', add
label define ve01a_incsch_lbl 158 `"158"', add
label define ve01a_incsch_lbl 159 `"159"', add
label define ve01a_incsch_lbl 160 `"160"', add
label define ve01a_incsch_lbl 164 `"164"', add
label define ve01a_incsch_lbl 165 `"165"', add
label define ve01a_incsch_lbl 166 `"166"', add
label define ve01a_incsch_lbl 167 `"167"', add
label define ve01a_incsch_lbl 170 `"170"', add
label define ve01a_incsch_lbl 172 `"172"', add
label define ve01a_incsch_lbl 174 `"174"', add
label define ve01a_incsch_lbl 175 `"175"', add
label define ve01a_incsch_lbl 178 `"178"', add
label define ve01a_incsch_lbl 180 `"180"', add
label define ve01a_incsch_lbl 181 `"181"', add
label define ve01a_incsch_lbl 186 `"186"', add
label define ve01a_incsch_lbl 187 `"187"', add
label define ve01a_incsch_lbl 189 `"189"', add
label define ve01a_incsch_lbl 190 `"190"', add
label define ve01a_incsch_lbl 191 `"191"', add
label define ve01a_incsch_lbl 192 `"192"', add
label define ve01a_incsch_lbl 193 `"193"', add
label define ve01a_incsch_lbl 194 `"194"', add
label define ve01a_incsch_lbl 198 `"198"', add
label define ve01a_incsch_lbl 200 `"200"', add
label define ve01a_incsch_lbl 204 `"204"', add
label define ve01a_incsch_lbl 205 `"205"', add
label define ve01a_incsch_lbl 208 `"208"', add
label define ve01a_incsch_lbl 210 `"210"', add
label define ve01a_incsch_lbl 215 `"215"', add
label define ve01a_incsch_lbl 216 `"216"', add
label define ve01a_incsch_lbl 217 `"217"', add
label define ve01a_incsch_lbl 220 `"220"', add
label define ve01a_incsch_lbl 221 `"221"', add
label define ve01a_incsch_lbl 223 `"223"', add
label define ve01a_incsch_lbl 225 `"225"', add
label define ve01a_incsch_lbl 230 `"230"', add
label define ve01a_incsch_lbl 232 `"232"', add
label define ve01a_incsch_lbl 235 `"235"', add
label define ve01a_incsch_lbl 238 `"238"', add
label define ve01a_incsch_lbl 240 `"240"', add
label define ve01a_incsch_lbl 249 `"249"', add
label define ve01a_incsch_lbl 250 `"250"', add
label define ve01a_incsch_lbl 255 `"255"', add
label define ve01a_incsch_lbl 260 `"260"', add
label define ve01a_incsch_lbl 270 `"270"', add
label define ve01a_incsch_lbl 275 `"275"', add
label define ve01a_incsch_lbl 280 `"280"', add
label define ve01a_incsch_lbl 286 `"286"', add
label define ve01a_incsch_lbl 287 `"287"', add
label define ve01a_incsch_lbl 290 `"290"', add
label define ve01a_incsch_lbl 295 `"295"', add
label define ve01a_incsch_lbl 300 `"300"', add
label define ve01a_incsch_lbl 310 `"310"', add
label define ve01a_incsch_lbl 313 `"313"', add
label define ve01a_incsch_lbl 316 `"316"', add
label define ve01a_incsch_lbl 320 `"320"', add
label define ve01a_incsch_lbl 324 `"324"', add
label define ve01a_incsch_lbl 325 `"325"', add
label define ve01a_incsch_lbl 330 `"330"', add
label define ve01a_incsch_lbl 332 `"332"', add
label define ve01a_incsch_lbl 340 `"340"', add
label define ve01a_incsch_lbl 341 `"341"', add
label define ve01a_incsch_lbl 350 `"350"', add
label define ve01a_incsch_lbl 360 `"360"', add
label define ve01a_incsch_lbl 366 `"366"', add
label define ve01a_incsch_lbl 370 `"370"', add
label define ve01a_incsch_lbl 380 `"380"', add
label define ve01a_incsch_lbl 390 `"390"', add
label define ve01a_incsch_lbl 395 `"395"', add
label define ve01a_incsch_lbl 400 `"400"', add
label define ve01a_incsch_lbl 414 `"414"', add
label define ve01a_incsch_lbl 420 `"420"', add
label define ve01a_incsch_lbl 430 `"430"', add
label define ve01a_incsch_lbl 447 `"447"', add
label define ve01a_incsch_lbl 448 `"448"', add
label define ve01a_incsch_lbl 450 `"450"', add
label define ve01a_incsch_lbl 460 `"460"', add
label define ve01a_incsch_lbl 464 `"464"', add
label define ve01a_incsch_lbl 470 `"470"', add
label define ve01a_incsch_lbl 475 `"475"', add
label define ve01a_incsch_lbl 479 `"479"', add
label define ve01a_incsch_lbl 480 `"480"', add
label define ve01a_incsch_lbl 490 `"490"', add
label define ve01a_incsch_lbl 500 `"500"', add
label define ve01a_incsch_lbl 506 `"506"', add
label define ve01a_incsch_lbl 517 `"517"', add
label define ve01a_incsch_lbl 519 `"519"', add
label define ve01a_incsch_lbl 525 `"525"', add
label define ve01a_incsch_lbl 527 `"527"', add
label define ve01a_incsch_lbl 528 `"528"', add
label define ve01a_incsch_lbl 530 `"530"', add
label define ve01a_incsch_lbl 550 `"550"', add
label define ve01a_incsch_lbl 580 `"580"', add
label define ve01a_incsch_lbl 600 `"600"', add
label define ve01a_incsch_lbl 611 `"611"', add
label define ve01a_incsch_lbl 635 `"635"', add
label define ve01a_incsch_lbl 640 `"640"', add
label define ve01a_incsch_lbl 670 `"670"', add
label define ve01a_incsch_lbl 690 `"690"', add
label define ve01a_incsch_lbl 700 `"700+"', add
label define ve01a_incsch_lbl 998 `"Unknown"', add
label define ve01a_incsch_lbl 999 `"NIU (not in universe)"', add
label values ve01a_incsch ve01a_incsch_lbl

label define ve01a_incunem_lbl 000 `"0"'
label define ve01a_incunem_lbl 001 `"1"', add
label define ve01a_incunem_lbl 002 `"2"', add
label define ve01a_incunem_lbl 003 `"3"', add
label define ve01a_incunem_lbl 004 `"4"', add
label define ve01a_incunem_lbl 005 `"5"', add
label define ve01a_incunem_lbl 006 `"6"', add
label define ve01a_incunem_lbl 007 `"7"', add
label define ve01a_incunem_lbl 008 `"8"', add
label define ve01a_incunem_lbl 009 `"9"', add
label define ve01a_incunem_lbl 010 `"10"', add
label define ve01a_incunem_lbl 011 `"11"', add
label define ve01a_incunem_lbl 012 `"12"', add
label define ve01a_incunem_lbl 014 `"14"', add
label define ve01a_incunem_lbl 015 `"15"', add
label define ve01a_incunem_lbl 017 `"17"', add
label define ve01a_incunem_lbl 018 `"18"', add
label define ve01a_incunem_lbl 019 `"19"', add
label define ve01a_incunem_lbl 020 `"20"', add
label define ve01a_incunem_lbl 021 `"21"', add
label define ve01a_incunem_lbl 022 `"22"', add
label define ve01a_incunem_lbl 023 `"23"', add
label define ve01a_incunem_lbl 024 `"24"', add
label define ve01a_incunem_lbl 025 `"25"', add
label define ve01a_incunem_lbl 028 `"28"', add
label define ve01a_incunem_lbl 029 `"29"', add
label define ve01a_incunem_lbl 030 `"30"', add
label define ve01a_incunem_lbl 031 `"31"', add
label define ve01a_incunem_lbl 032 `"32"', add
label define ve01a_incunem_lbl 033 `"33"', add
label define ve01a_incunem_lbl 034 `"34"', add
label define ve01a_incunem_lbl 035 `"35"', add
label define ve01a_incunem_lbl 039 `"39"', add
label define ve01a_incunem_lbl 040 `"40"', add
label define ve01a_incunem_lbl 044 `"44"', add
label define ve01a_incunem_lbl 045 `"45"', add
label define ve01a_incunem_lbl 048 `"48"', add
label define ve01a_incunem_lbl 050 `"50"', add
label define ve01a_incunem_lbl 052 `"52"', add
label define ve01a_incunem_lbl 054 `"54"', add
label define ve01a_incunem_lbl 055 `"55"', add
label define ve01a_incunem_lbl 056 `"56"', add
label define ve01a_incunem_lbl 057 `"57"', add
label define ve01a_incunem_lbl 058 `"58"', add
label define ve01a_incunem_lbl 060 `"60"', add
label define ve01a_incunem_lbl 061 `"61"', add
label define ve01a_incunem_lbl 063 `"63"', add
label define ve01a_incunem_lbl 064 `"64"', add
label define ve01a_incunem_lbl 066 `"66"', add
label define ve01a_incunem_lbl 070 `"70"', add
label define ve01a_incunem_lbl 071 `"71"', add
label define ve01a_incunem_lbl 074 `"74"', add
label define ve01a_incunem_lbl 075 `"75"', add
label define ve01a_incunem_lbl 076 `"76"', add
label define ve01a_incunem_lbl 078 `"78"', add
label define ve01a_incunem_lbl 080 `"80"', add
label define ve01a_incunem_lbl 081 `"81"', add
label define ve01a_incunem_lbl 083 `"83"', add
label define ve01a_incunem_lbl 084 `"84"', add
label define ve01a_incunem_lbl 085 `"85"', add
label define ve01a_incunem_lbl 086 `"86"', add
label define ve01a_incunem_lbl 087 `"87"', add
label define ve01a_incunem_lbl 088 `"88"', add
label define ve01a_incunem_lbl 090 `"90"', add
label define ve01a_incunem_lbl 091 `"91"', add
label define ve01a_incunem_lbl 092 `"92"', add
label define ve01a_incunem_lbl 094 `"94"', add
label define ve01a_incunem_lbl 095 `"95"', add
label define ve01a_incunem_lbl 096 `"96"', add
label define ve01a_incunem_lbl 099 `"99"', add
label define ve01a_incunem_lbl 100 `"100"', add
label define ve01a_incunem_lbl 101 `"101"', add
label define ve01a_incunem_lbl 103 `"103"', add
label define ve01a_incunem_lbl 104 `"104"', add
label define ve01a_incunem_lbl 105 `"105"', add
label define ve01a_incunem_lbl 110 `"110"', add
label define ve01a_incunem_lbl 111 `"111"', add
label define ve01a_incunem_lbl 115 `"115"', add
label define ve01a_incunem_lbl 116 `"116"', add
label define ve01a_incunem_lbl 119 `"119"', add
label define ve01a_incunem_lbl 120 `"120"', add
label define ve01a_incunem_lbl 121 `"121"', add
label define ve01a_incunem_lbl 122 `"122"', add
label define ve01a_incunem_lbl 124 `"124"', add
label define ve01a_incunem_lbl 125 `"125"', add
label define ve01a_incunem_lbl 130 `"130"', add
label define ve01a_incunem_lbl 133 `"133"', add
label define ve01a_incunem_lbl 134 `"134"', add
label define ve01a_incunem_lbl 135 `"135"', add
label define ve01a_incunem_lbl 138 `"138"', add
label define ve01a_incunem_lbl 140 `"140"', add
label define ve01a_incunem_lbl 142 `"142"', add
label define ve01a_incunem_lbl 143 `"143"', add
label define ve01a_incunem_lbl 144 `"144"', add
label define ve01a_incunem_lbl 145 `"145"', add
label define ve01a_incunem_lbl 146 `"146"', add
label define ve01a_incunem_lbl 147 `"147"', add
label define ve01a_incunem_lbl 148 `"148"', add
label define ve01a_incunem_lbl 149 `"149"', add
label define ve01a_incunem_lbl 150 `"150"', add
label define ve01a_incunem_lbl 152 `"152"', add
label define ve01a_incunem_lbl 153 `"153"', add
label define ve01a_incunem_lbl 154 `"154"', add
label define ve01a_incunem_lbl 155 `"155"', add
label define ve01a_incunem_lbl 156 `"156"', add
label define ve01a_incunem_lbl 157 `"157"', add
label define ve01a_incunem_lbl 158 `"158"', add
label define ve01a_incunem_lbl 159 `"159"', add
label define ve01a_incunem_lbl 160 `"160"', add
label define ve01a_incunem_lbl 164 `"164"', add
label define ve01a_incunem_lbl 166 `"166"', add
label define ve01a_incunem_lbl 168 `"168"', add
label define ve01a_incunem_lbl 170 `"170"', add
label define ve01a_incunem_lbl 172 `"172"', add
label define ve01a_incunem_lbl 178 `"178"', add
label define ve01a_incunem_lbl 180 `"180"', add
label define ve01a_incunem_lbl 182 `"182"', add
label define ve01a_incunem_lbl 183 `"183"', add
label define ve01a_incunem_lbl 184 `"184"', add
label define ve01a_incunem_lbl 187 `"187"', add
label define ve01a_incunem_lbl 188 `"188"', add
label define ve01a_incunem_lbl 190 `"190"', add
label define ve01a_incunem_lbl 194 `"194"', add
label define ve01a_incunem_lbl 199 `"199"', add
label define ve01a_incunem_lbl 200 `"200"', add
label define ve01a_incunem_lbl 216 `"216"', add
label define ve01a_incunem_lbl 220 `"220"', add
label define ve01a_incunem_lbl 224 `"224"', add
label define ve01a_incunem_lbl 228 `"228"', add
label define ve01a_incunem_lbl 230 `"230"', add
label define ve01a_incunem_lbl 240 `"240"', add
label define ve01a_incunem_lbl 244 `"244"', add
label define ve01a_incunem_lbl 245 `"245"', add
label define ve01a_incunem_lbl 247 `"247"', add
label define ve01a_incunem_lbl 250 `"250"', add
label define ve01a_incunem_lbl 252 `"252"', add
label define ve01a_incunem_lbl 258 `"258"', add
label define ve01a_incunem_lbl 259 `"259"', add
label define ve01a_incunem_lbl 260 `"260"', add
label define ve01a_incunem_lbl 263 `"263"', add
label define ve01a_incunem_lbl 270 `"270"', add
label define ve01a_incunem_lbl 271 `"271"', add
label define ve01a_incunem_lbl 276 `"276"', add
label define ve01a_incunem_lbl 280 `"280"', add
label define ve01a_incunem_lbl 289 `"289"', add
label define ve01a_incunem_lbl 296 `"296"', add
label define ve01a_incunem_lbl 298 `"298"', add
label define ve01a_incunem_lbl 300 `"300+"', add
label define ve01a_incunem_lbl 998 `"Unknown"', add
label define ve01a_incunem_lbl 999 `"NIU (not in universe)"', add
label values ve01a_incunem ve01a_incunem_lbl

label define ve01a_incfood_lbl 000 `"0"'
label define ve01a_incfood_lbl 001 `"Less than 5"', add
label define ve01a_incfood_lbl 005 `"5"', add
label define ve01a_incfood_lbl 006 `"6"', add
label define ve01a_incfood_lbl 007 `"7"', add
label define ve01a_incfood_lbl 008 `"8"', add
label define ve01a_incfood_lbl 009 `"9"', add
label define ve01a_incfood_lbl 010 `"10"', add
label define ve01a_incfood_lbl 011 `"11"', add
label define ve01a_incfood_lbl 012 `"12"', add
label define ve01a_incfood_lbl 013 `"13"', add
label define ve01a_incfood_lbl 014 `"14"', add
label define ve01a_incfood_lbl 015 `"15"', add
label define ve01a_incfood_lbl 016 `"16"', add
label define ve01a_incfood_lbl 017 `"17"', add
label define ve01a_incfood_lbl 018 `"18"', add
label define ve01a_incfood_lbl 019 `"19"', add
label define ve01a_incfood_lbl 020 `"20"', add
label define ve01a_incfood_lbl 021 `"21"', add
label define ve01a_incfood_lbl 022 `"22"', add
label define ve01a_incfood_lbl 023 `"23"', add
label define ve01a_incfood_lbl 024 `"24"', add
label define ve01a_incfood_lbl 025 `"25"', add
label define ve01a_incfood_lbl 026 `"26"', add
label define ve01a_incfood_lbl 027 `"27"', add
label define ve01a_incfood_lbl 028 `"28"', add
label define ve01a_incfood_lbl 029 `"29"', add
label define ve01a_incfood_lbl 030 `"30"', add
label define ve01a_incfood_lbl 031 `"31"', add
label define ve01a_incfood_lbl 032 `"32"', add
label define ve01a_incfood_lbl 033 `"33"', add
label define ve01a_incfood_lbl 034 `"34"', add
label define ve01a_incfood_lbl 035 `"35"', add
label define ve01a_incfood_lbl 036 `"36"', add
label define ve01a_incfood_lbl 037 `"37"', add
label define ve01a_incfood_lbl 038 `"38"', add
label define ve01a_incfood_lbl 039 `"39"', add
label define ve01a_incfood_lbl 040 `"40"', add
label define ve01a_incfood_lbl 041 `"41"', add
label define ve01a_incfood_lbl 042 `"42"', add
label define ve01a_incfood_lbl 043 `"43"', add
label define ve01a_incfood_lbl 044 `"44"', add
label define ve01a_incfood_lbl 045 `"45"', add
label define ve01a_incfood_lbl 046 `"46"', add
label define ve01a_incfood_lbl 047 `"47"', add
label define ve01a_incfood_lbl 048 `"48"', add
label define ve01a_incfood_lbl 049 `"49"', add
label define ve01a_incfood_lbl 050 `"50"', add
label define ve01a_incfood_lbl 051 `"51"', add
label define ve01a_incfood_lbl 052 `"52"', add
label define ve01a_incfood_lbl 053 `"53"', add
label define ve01a_incfood_lbl 054 `"54"', add
label define ve01a_incfood_lbl 055 `"55"', add
label define ve01a_incfood_lbl 056 `"56"', add
label define ve01a_incfood_lbl 057 `"57"', add
label define ve01a_incfood_lbl 058 `"58"', add
label define ve01a_incfood_lbl 059 `"59"', add
label define ve01a_incfood_lbl 060 `"60"', add
label define ve01a_incfood_lbl 061 `"61"', add
label define ve01a_incfood_lbl 062 `"62"', add
label define ve01a_incfood_lbl 063 `"63"', add
label define ve01a_incfood_lbl 064 `"64"', add
label define ve01a_incfood_lbl 065 `"65"', add
label define ve01a_incfood_lbl 066 `"66"', add
label define ve01a_incfood_lbl 067 `"67"', add
label define ve01a_incfood_lbl 068 `"68"', add
label define ve01a_incfood_lbl 069 `"69"', add
label define ve01a_incfood_lbl 070 `"70"', add
label define ve01a_incfood_lbl 071 `"71"', add
label define ve01a_incfood_lbl 072 `"72"', add
label define ve01a_incfood_lbl 073 `"73"', add
label define ve01a_incfood_lbl 074 `"74"', add
label define ve01a_incfood_lbl 075 `"75"', add
label define ve01a_incfood_lbl 076 `"76"', add
label define ve01a_incfood_lbl 077 `"77"', add
label define ve01a_incfood_lbl 078 `"78"', add
label define ve01a_incfood_lbl 079 `"79"', add
label define ve01a_incfood_lbl 080 `"80"', add
label define ve01a_incfood_lbl 081 `"81"', add
label define ve01a_incfood_lbl 082 `"82"', add
label define ve01a_incfood_lbl 083 `"83"', add
label define ve01a_incfood_lbl 084 `"84"', add
label define ve01a_incfood_lbl 085 `"85"', add
label define ve01a_incfood_lbl 086 `"86"', add
label define ve01a_incfood_lbl 087 `"87"', add
label define ve01a_incfood_lbl 088 `"88"', add
label define ve01a_incfood_lbl 089 `"89"', add
label define ve01a_incfood_lbl 090 `"90"', add
label define ve01a_incfood_lbl 091 `"91"', add
label define ve01a_incfood_lbl 092 `"92"', add
label define ve01a_incfood_lbl 093 `"93"', add
label define ve01a_incfood_lbl 094 `"94"', add
label define ve01a_incfood_lbl 095 `"95"', add
label define ve01a_incfood_lbl 096 `"96"', add
label define ve01a_incfood_lbl 097 `"97"', add
label define ve01a_incfood_lbl 098 `"98"', add
label define ve01a_incfood_lbl 099 `"99"', add
label define ve01a_incfood_lbl 100 `"100"', add
label define ve01a_incfood_lbl 101 `"101"', add
label define ve01a_incfood_lbl 102 `"102"', add
label define ve01a_incfood_lbl 103 `"103"', add
label define ve01a_incfood_lbl 104 `"104"', add
label define ve01a_incfood_lbl 105 `"105"', add
label define ve01a_incfood_lbl 106 `"106"', add
label define ve01a_incfood_lbl 107 `"107"', add
label define ve01a_incfood_lbl 108 `"108"', add
label define ve01a_incfood_lbl 109 `"109"', add
label define ve01a_incfood_lbl 110 `"110"', add
label define ve01a_incfood_lbl 112 `"112"', add
label define ve01a_incfood_lbl 114 `"114"', add
label define ve01a_incfood_lbl 115 `"115"', add
label define ve01a_incfood_lbl 116 `"116"', add
label define ve01a_incfood_lbl 117 `"117"', add
label define ve01a_incfood_lbl 118 `"118"', add
label define ve01a_incfood_lbl 119 `"119"', add
label define ve01a_incfood_lbl 120 `"120"', add
label define ve01a_incfood_lbl 121 `"121"', add
label define ve01a_incfood_lbl 122 `"122"', add
label define ve01a_incfood_lbl 123 `"123"', add
label define ve01a_incfood_lbl 124 `"124"', add
label define ve01a_incfood_lbl 125 `"125"', add
label define ve01a_incfood_lbl 126 `"126"', add
label define ve01a_incfood_lbl 127 `"127"', add
label define ve01a_incfood_lbl 128 `"128"', add
label define ve01a_incfood_lbl 130 `"130"', add
label define ve01a_incfood_lbl 131 `"131"', add
label define ve01a_incfood_lbl 132 `"132"', add
label define ve01a_incfood_lbl 133 `"133"', add
label define ve01a_incfood_lbl 134 `"134"', add
label define ve01a_incfood_lbl 135 `"135"', add
label define ve01a_incfood_lbl 136 `"136"', add
label define ve01a_incfood_lbl 137 `"137"', add
label define ve01a_incfood_lbl 138 `"138"', add
label define ve01a_incfood_lbl 140 `"140"', add
label define ve01a_incfood_lbl 142 `"142"', add
label define ve01a_incfood_lbl 144 `"144"', add
label define ve01a_incfood_lbl 145 `"145"', add
label define ve01a_incfood_lbl 147 `"147"', add
label define ve01a_incfood_lbl 148 `"148"', add
label define ve01a_incfood_lbl 149 `"149"', add
label define ve01a_incfood_lbl 150 `"150"', add
label define ve01a_incfood_lbl 152 `"152"', add
label define ve01a_incfood_lbl 153 `"153"', add
label define ve01a_incfood_lbl 154 `"154"', add
label define ve01a_incfood_lbl 155 `"155"', add
label define ve01a_incfood_lbl 156 `"156"', add
label define ve01a_incfood_lbl 158 `"158"', add
label define ve01a_incfood_lbl 159 `"159"', add
label define ve01a_incfood_lbl 160 `"160"', add
label define ve01a_incfood_lbl 161 `"161"', add
label define ve01a_incfood_lbl 162 `"162"', add
label define ve01a_incfood_lbl 163 `"163"', add
label define ve01a_incfood_lbl 164 `"164"', add
label define ve01a_incfood_lbl 165 `"165"', add
label define ve01a_incfood_lbl 168 `"168"', add
label define ve01a_incfood_lbl 170 `"170"', add
label define ve01a_incfood_lbl 172 `"172"', add
label define ve01a_incfood_lbl 175 `"175"', add
label define ve01a_incfood_lbl 176 `"176"', add
label define ve01a_incfood_lbl 178 `"178"', add
label define ve01a_incfood_lbl 180 `"180"', add
label define ve01a_incfood_lbl 185 `"185"', add
label define ve01a_incfood_lbl 190 `"190"', add
label define ve01a_incfood_lbl 192 `"192"', add
label define ve01a_incfood_lbl 194 `"194"', add
label define ve01a_incfood_lbl 196 `"196"', add
label define ve01a_incfood_lbl 198 `"198"', add
label define ve01a_incfood_lbl 200 `"200"', add
label define ve01a_incfood_lbl 201 `"201"', add
label define ve01a_incfood_lbl 205 `"205"', add
label define ve01a_incfood_lbl 210 `"210"', add
label define ve01a_incfood_lbl 213 `"213"', add
label define ve01a_incfood_lbl 216 `"216"', add
label define ve01a_incfood_lbl 217 `"217"', add
label define ve01a_incfood_lbl 220 `"220"', add
label define ve01a_incfood_lbl 223 `"223"', add
label define ve01a_incfood_lbl 224 `"224"', add
label define ve01a_incfood_lbl 225 `"225"', add
label define ve01a_incfood_lbl 230 `"230"', add
label define ve01a_incfood_lbl 234 `"234"', add
label define ve01a_incfood_lbl 235 `"235"', add
label define ve01a_incfood_lbl 240 `"240"', add
label define ve01a_incfood_lbl 242 `"242"', add
label define ve01a_incfood_lbl 244 `"244"', add
label define ve01a_incfood_lbl 245 `"245"', add
label define ve01a_incfood_lbl 248 `"248"', add
label define ve01a_incfood_lbl 250 `"250"', add
label define ve01a_incfood_lbl 252 `"252"', add
label define ve01a_incfood_lbl 253 `"253"', add
label define ve01a_incfood_lbl 254 `"254"', add
label define ve01a_incfood_lbl 255 `"255"', add
label define ve01a_incfood_lbl 256 `"256"', add
label define ve01a_incfood_lbl 260 `"260"', add
label define ve01a_incfood_lbl 265 `"265"', add
label define ve01a_incfood_lbl 267 `"267"', add
label define ve01a_incfood_lbl 270 `"270"', add
label define ve01a_incfood_lbl 280 `"280"', add
label define ve01a_incfood_lbl 288 `"288"', add
label define ve01a_incfood_lbl 290 `"290"', add
label define ve01a_incfood_lbl 292 `"292"', add
label define ve01a_incfood_lbl 296 `"296"', add
label define ve01a_incfood_lbl 300 `"300"', add
label define ve01a_incfood_lbl 313 `"313"', add
label define ve01a_incfood_lbl 319 `"319"', add
label define ve01a_incfood_lbl 320 `"320"', add
label define ve01a_incfood_lbl 322 `"322"', add
label define ve01a_incfood_lbl 323 `"323"', add
label define ve01a_incfood_lbl 327 `"327"', add
label define ve01a_incfood_lbl 330 `"330"', add
label define ve01a_incfood_lbl 347 `"347"', add
label define ve01a_incfood_lbl 350 `"350"', add
label define ve01a_incfood_lbl 356 `"356"', add
label define ve01a_incfood_lbl 357 `"357"', add
label define ve01a_incfood_lbl 360 `"360"', add
label define ve01a_incfood_lbl 370 `"370"', add
label define ve01a_incfood_lbl 380 `"380"', add
label define ve01a_incfood_lbl 400 `"400"', add
label define ve01a_incfood_lbl 401 `"401"', add
label define ve01a_incfood_lbl 410 `"410"', add
label define ve01a_incfood_lbl 420 `"420"', add
label define ve01a_incfood_lbl 435 `"435"', add
label define ve01a_incfood_lbl 440 `"440"', add
label define ve01a_incfood_lbl 450 `"450"', add
label define ve01a_incfood_lbl 460 `"460"', add
label define ve01a_incfood_lbl 480 `"480"', add
label define ve01a_incfood_lbl 500 `"500"', add
label define ve01a_incfood_lbl 501 `"501"', add
label define ve01a_incfood_lbl 550 `"550"', add
label define ve01a_incfood_lbl 560 `"560"', add
label define ve01a_incfood_lbl 567 `"567"', add
label define ve01a_incfood_lbl 600 `"600+"', add
label define ve01a_incfood_lbl 998 `"Unknown"', add
label define ve01a_incfood_lbl 999 `"NIU (not in universe)"', add
label values ve01a_incfood ve01a_incfood_lbl

label define ve01a_incoth_lbl 000000 `"0"'
label define ve01a_incoth_lbl 099998 `"Unknown"', add
label define ve01a_incoth_lbl 099999 `"NIU (not in universe)"', add
label values ve01a_incoth ve01a_incoth_lbl

label define ve01a_incnone_lbl 0 `"NIU (not in universe)"'
label define ve01a_incnone_lbl 1 `"Yes"', add
label define ve01a_incnone_lbl 2 `"No"', add
label define ve01a_incnone_lbl 9 `"Unknown"', add
label values ve01a_incnone ve01a_incnone_lbl

label define ve01a_chborn_lbl 00 `"0"'
label define ve01a_chborn_lbl 01 `"1"', add
label define ve01a_chborn_lbl 02 `"2"', add
label define ve01a_chborn_lbl 03 `"3"', add
label define ve01a_chborn_lbl 04 `"4"', add
label define ve01a_chborn_lbl 05 `"5"', add
label define ve01a_chborn_lbl 06 `"6"', add
label define ve01a_chborn_lbl 07 `"7"', add
label define ve01a_chborn_lbl 08 `"8"', add
label define ve01a_chborn_lbl 09 `"9"', add
label define ve01a_chborn_lbl 10 `"10"', add
label define ve01a_chborn_lbl 11 `"11"', add
label define ve01a_chborn_lbl 12 `"12"', add
label define ve01a_chborn_lbl 13 `"13"', add
label define ve01a_chborn_lbl 14 `"14"', add
label define ve01a_chborn_lbl 15 `"15"', add
label define ve01a_chborn_lbl 16 `"16"', add
label define ve01a_chborn_lbl 17 `"17"', add
label define ve01a_chborn_lbl 18 `"18"', add
label define ve01a_chborn_lbl 19 `"19"', add
label define ve01a_chborn_lbl 20 `"20"', add
label define ve01a_chborn_lbl 21 `"21"', add
label define ve01a_chborn_lbl 22 `"22+"', add
label define ve01a_chborn_lbl 98 `"Unknown"', add
label define ve01a_chborn_lbl 99 `"NIU (not in universe)"', add
label values ve01a_chborn ve01a_chborn_lbl

label define ve01a_lastbirm_lbl 00 `"NIU (not in universe)"'
label define ve01a_lastbirm_lbl 01 `"January"', add
label define ve01a_lastbirm_lbl 02 `"February"', add
label define ve01a_lastbirm_lbl 03 `"March"', add
label define ve01a_lastbirm_lbl 04 `"April"', add
label define ve01a_lastbirm_lbl 05 `"May"', add
label define ve01a_lastbirm_lbl 06 `"June"', add
label define ve01a_lastbirm_lbl 07 `"July"', add
label define ve01a_lastbirm_lbl 08 `"August"', add
label define ve01a_lastbirm_lbl 09 `"September"', add
label define ve01a_lastbirm_lbl 10 `"October"', add
label define ve01a_lastbirm_lbl 11 `"November"', add
label define ve01a_lastbirm_lbl 12 `"December"', add
label define ve01a_lastbirm_lbl 99 `"Unknown"', add
label values ve01a_lastbirm ve01a_lastbirm_lbl

label define ve01a_lastbiry_lbl 0000 `"NIU (not in universe)"'
label define ve01a_lastbiry_lbl 1918 `"1918"', add
label define ve01a_lastbiry_lbl 1919 `"1919"', add
label define ve01a_lastbiry_lbl 1921 `"1921"', add
label define ve01a_lastbiry_lbl 1924 `"1924"', add
label define ve01a_lastbiry_lbl 1925 `"1925"', add
label define ve01a_lastbiry_lbl 1926 `"1926"', add
label define ve01a_lastbiry_lbl 1927 `"1927"', add
label define ve01a_lastbiry_lbl 1928 `"1928"', add
label define ve01a_lastbiry_lbl 1929 `"1929"', add
label define ve01a_lastbiry_lbl 1930 `"1930"', add
label define ve01a_lastbiry_lbl 1931 `"1931"', add
label define ve01a_lastbiry_lbl 1932 `"1932"', add
label define ve01a_lastbiry_lbl 1933 `"1933"', add
label define ve01a_lastbiry_lbl 1934 `"1934"', add
label define ve01a_lastbiry_lbl 1935 `"1935"', add
label define ve01a_lastbiry_lbl 1936 `"1936"', add
label define ve01a_lastbiry_lbl 1937 `"1937"', add
label define ve01a_lastbiry_lbl 1938 `"1938"', add
label define ve01a_lastbiry_lbl 1939 `"1939"', add
label define ve01a_lastbiry_lbl 1940 `"1940"', add
label define ve01a_lastbiry_lbl 1941 `"1941"', add
label define ve01a_lastbiry_lbl 1942 `"1942"', add
label define ve01a_lastbiry_lbl 1943 `"1943"', add
label define ve01a_lastbiry_lbl 1944 `"1944"', add
label define ve01a_lastbiry_lbl 1945 `"1945"', add
label define ve01a_lastbiry_lbl 1946 `"1946"', add
label define ve01a_lastbiry_lbl 1947 `"1947"', add
label define ve01a_lastbiry_lbl 1948 `"1948"', add
label define ve01a_lastbiry_lbl 1949 `"1949"', add
label define ve01a_lastbiry_lbl 1950 `"1950"', add
label define ve01a_lastbiry_lbl 1951 `"1951"', add
label define ve01a_lastbiry_lbl 1952 `"1952"', add
label define ve01a_lastbiry_lbl 1953 `"1953"', add
label define ve01a_lastbiry_lbl 1954 `"1954"', add
label define ve01a_lastbiry_lbl 1955 `"1955"', add
label define ve01a_lastbiry_lbl 1956 `"1956"', add
label define ve01a_lastbiry_lbl 1957 `"1957"', add
label define ve01a_lastbiry_lbl 1958 `"1958"', add
label define ve01a_lastbiry_lbl 1959 `"1959"', add
label define ve01a_lastbiry_lbl 1960 `"1960"', add
label define ve01a_lastbiry_lbl 1961 `"1961"', add
label define ve01a_lastbiry_lbl 1962 `"1962"', add
label define ve01a_lastbiry_lbl 1963 `"1963"', add
label define ve01a_lastbiry_lbl 1964 `"1964"', add
label define ve01a_lastbiry_lbl 1965 `"1965"', add
label define ve01a_lastbiry_lbl 1966 `"1966"', add
label define ve01a_lastbiry_lbl 1967 `"1967"', add
label define ve01a_lastbiry_lbl 1968 `"1968"', add
label define ve01a_lastbiry_lbl 1969 `"1969"', add
label define ve01a_lastbiry_lbl 1970 `"1970"', add
label define ve01a_lastbiry_lbl 1971 `"1971"', add
label define ve01a_lastbiry_lbl 1972 `"1972"', add
label define ve01a_lastbiry_lbl 1973 `"1973"', add
label define ve01a_lastbiry_lbl 1974 `"1974"', add
label define ve01a_lastbiry_lbl 1975 `"1975"', add
label define ve01a_lastbiry_lbl 1976 `"1976"', add
label define ve01a_lastbiry_lbl 1977 `"1977"', add
label define ve01a_lastbiry_lbl 1978 `"1978"', add
label define ve01a_lastbiry_lbl 1979 `"1979"', add
label define ve01a_lastbiry_lbl 1980 `"1980"', add
label define ve01a_lastbiry_lbl 1981 `"1981"', add
label define ve01a_lastbiry_lbl 1982 `"1982"', add
label define ve01a_lastbiry_lbl 1983 `"1983"', add
label define ve01a_lastbiry_lbl 1984 `"1984"', add
label define ve01a_lastbiry_lbl 1985 `"1985"', add
label define ve01a_lastbiry_lbl 1986 `"1986"', add
label define ve01a_lastbiry_lbl 1987 `"1987"', add
label define ve01a_lastbiry_lbl 1988 `"1988"', add
label define ve01a_lastbiry_lbl 1989 `"1989"', add
label define ve01a_lastbiry_lbl 1990 `"1990"', add
label define ve01a_lastbiry_lbl 1991 `"1991"', add
label define ve01a_lastbiry_lbl 1992 `"1992"', add
label define ve01a_lastbiry_lbl 1993 `"1993"', add
label define ve01a_lastbiry_lbl 1994 `"1994"', add
label define ve01a_lastbiry_lbl 1995 `"1995"', add
label define ve01a_lastbiry_lbl 1996 `"1996"', add
label define ve01a_lastbiry_lbl 1997 `"1997"', add
label define ve01a_lastbiry_lbl 1998 `"1998"', add
label define ve01a_lastbiry_lbl 1999 `"1999"', add
label define ve01a_lastbiry_lbl 2000 `"2000"', add
label define ve01a_lastbiry_lbl 2001 `"2001"', add
label define ve01a_lastbiry_lbl 9999 `"Unknown"', add
label values ve01a_lastbiry ve01a_lastbiry_lbl

label define ve01a_chliv_lbl 00 `"0"'
label define ve01a_chliv_lbl 01 `"1"', add
label define ve01a_chliv_lbl 02 `"2"', add
label define ve01a_chliv_lbl 03 `"3"', add
label define ve01a_chliv_lbl 04 `"4"', add
label define ve01a_chliv_lbl 05 `"5"', add
label define ve01a_chliv_lbl 06 `"6"', add
label define ve01a_chliv_lbl 07 `"7"', add
label define ve01a_chliv_lbl 08 `"8"', add
label define ve01a_chliv_lbl 09 `"9"', add
label define ve01a_chliv_lbl 10 `"10"', add
label define ve01a_chliv_lbl 11 `"11"', add
label define ve01a_chliv_lbl 12 `"12"', add
label define ve01a_chliv_lbl 13 `"13"', add
label define ve01a_chliv_lbl 14 `"14"', add
label define ve01a_chliv_lbl 15 `"15"', add
label define ve01a_chliv_lbl 16 `"16"', add
label define ve01a_chliv_lbl 17 `"17"', add
label define ve01a_chliv_lbl 18 `"18+"', add
label define ve01a_chliv_lbl 98 `"Unknown"', add
label define ve01a_chliv_lbl 99 `"NIU (not in universe)"', add
label values ve01a_chliv ve01a_chliv_lbl

label define ve01a_age_lbl 000 `"Less than 1"'
label define ve01a_age_lbl 001 `"1"', add
label define ve01a_age_lbl 002 `"2"', add
label define ve01a_age_lbl 003 `"3"', add
label define ve01a_age_lbl 004 `"4"', add
label define ve01a_age_lbl 005 `"5"', add
label define ve01a_age_lbl 006 `"6"', add
label define ve01a_age_lbl 007 `"7"', add
label define ve01a_age_lbl 008 `"8"', add
label define ve01a_age_lbl 009 `"9"', add
label define ve01a_age_lbl 010 `"10"', add
label define ve01a_age_lbl 011 `"11"', add
label define ve01a_age_lbl 012 `"12"', add
label define ve01a_age_lbl 013 `"13"', add
label define ve01a_age_lbl 014 `"14"', add
label define ve01a_age_lbl 015 `"15"', add
label define ve01a_age_lbl 016 `"16"', add
label define ve01a_age_lbl 017 `"17"', add
label define ve01a_age_lbl 018 `"18"', add
label define ve01a_age_lbl 019 `"19"', add
label define ve01a_age_lbl 020 `"20"', add
label define ve01a_age_lbl 021 `"21"', add
label define ve01a_age_lbl 022 `"22"', add
label define ve01a_age_lbl 023 `"23"', add
label define ve01a_age_lbl 024 `"24"', add
label define ve01a_age_lbl 025 `"25"', add
label define ve01a_age_lbl 026 `"26"', add
label define ve01a_age_lbl 027 `"27"', add
label define ve01a_age_lbl 028 `"28"', add
label define ve01a_age_lbl 029 `"29"', add
label define ve01a_age_lbl 030 `"30"', add
label define ve01a_age_lbl 031 `"31"', add
label define ve01a_age_lbl 032 `"32"', add
label define ve01a_age_lbl 033 `"33"', add
label define ve01a_age_lbl 034 `"34"', add
label define ve01a_age_lbl 035 `"35"', add
label define ve01a_age_lbl 036 `"36"', add
label define ve01a_age_lbl 037 `"37"', add
label define ve01a_age_lbl 038 `"38"', add
label define ve01a_age_lbl 039 `"39"', add
label define ve01a_age_lbl 040 `"40"', add
label define ve01a_age_lbl 041 `"41"', add
label define ve01a_age_lbl 042 `"42"', add
label define ve01a_age_lbl 043 `"43"', add
label define ve01a_age_lbl 044 `"44"', add
label define ve01a_age_lbl 045 `"45"', add
label define ve01a_age_lbl 046 `"46"', add
label define ve01a_age_lbl 047 `"47"', add
label define ve01a_age_lbl 048 `"48"', add
label define ve01a_age_lbl 049 `"49"', add
label define ve01a_age_lbl 050 `"50"', add
label define ve01a_age_lbl 051 `"51"', add
label define ve01a_age_lbl 052 `"52"', add
label define ve01a_age_lbl 053 `"53"', add
label define ve01a_age_lbl 054 `"54"', add
label define ve01a_age_lbl 055 `"55"', add
label define ve01a_age_lbl 056 `"56"', add
label define ve01a_age_lbl 057 `"57"', add
label define ve01a_age_lbl 058 `"58"', add
label define ve01a_age_lbl 059 `"59"', add
label define ve01a_age_lbl 060 `"60"', add
label define ve01a_age_lbl 061 `"61"', add
label define ve01a_age_lbl 062 `"62"', add
label define ve01a_age_lbl 063 `"63"', add
label define ve01a_age_lbl 064 `"64"', add
label define ve01a_age_lbl 065 `"65"', add
label define ve01a_age_lbl 066 `"66"', add
label define ve01a_age_lbl 067 `"67"', add
label define ve01a_age_lbl 068 `"68"', add
label define ve01a_age_lbl 069 `"69"', add
label define ve01a_age_lbl 070 `"70"', add
label define ve01a_age_lbl 071 `"71"', add
label define ve01a_age_lbl 072 `"72"', add
label define ve01a_age_lbl 073 `"73"', add
label define ve01a_age_lbl 074 `"74"', add
label define ve01a_age_lbl 075 `"75"', add
label define ve01a_age_lbl 076 `"76"', add
label define ve01a_age_lbl 077 `"77"', add
label define ve01a_age_lbl 078 `"78"', add
label define ve01a_age_lbl 079 `"79"', add
label define ve01a_age_lbl 080 `"80"', add
label define ve01a_age_lbl 081 `"81"', add
label define ve01a_age_lbl 082 `"82"', add
label define ve01a_age_lbl 083 `"83"', add
label define ve01a_age_lbl 084 `"84"', add
label define ve01a_age_lbl 085 `"85"', add
label define ve01a_age_lbl 086 `"86"', add
label define ve01a_age_lbl 087 `"87"', add
label define ve01a_age_lbl 088 `"88"', add
label define ve01a_age_lbl 089 `"89"', add
label define ve01a_age_lbl 090 `"90"', add
label define ve01a_age_lbl 091 `"91"', add
label define ve01a_age_lbl 092 `"92"', add
label define ve01a_age_lbl 093 `"93"', add
label define ve01a_age_lbl 094 `"94"', add
label define ve01a_age_lbl 095 `"95"', add
label define ve01a_age_lbl 096 `"96"', add
label define ve01a_age_lbl 097 `"97"', add
label define ve01a_age_lbl 098 `"98"', add
label define ve01a_age_lbl 099 `"99"', add
label define ve01a_age_lbl 100 `"100+"', add
label values ve01a_age ve01a_age_lbl


