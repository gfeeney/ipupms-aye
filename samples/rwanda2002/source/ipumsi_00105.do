* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    rw02a_dwnum     22-28    ///
  byte    rw02a_pern      29-30    ///
  byte    rw02a_fbig      31-31    ///
  byte    rw02a_prov      32-33    ///
  int     rw02a_town      34-37    ///
  byte    rw02a_urban     38-38    ///
  int     rw02a_dwtype    39-41    ///
  byte    rw02a_resabm    42-42    ///
  byte    rw02a_resabf    43-43    ///
  byte    rw02a_resab     44-44    ///
  byte    rw02a_settty    45-45    ///
  byte    rw02a_dwtype2   46-46    ///
  byte    rw02a_roof      47-47    ///
  byte    rw02a_walls     48-49    ///
  byte    rw02a_floor     50-50    ///
  byte    rw02a_rooms     51-52    ///
  byte    rw02a_watsrc    53-54    ///
  byte    rw02a_light     55-56    ///
  byte    rw02a_fuelck    57-57    ///
  byte    rw02a_toilet    58-58    ///
  byte    rw02a_garbage   59-59    ///
  byte    rw02a_tenure    60-60    ///
  byte    rw02a_radiotv   61-61    ///
  byte    rw02a_phone     62-62    ///
  byte    rw02a_computer  63-63    ///
  byte    rw02a_vehicle   64-64    ///
  byte    rw02a_motocy    65-65    ///
  byte    rw02a_bike      66-67    ///
  byte    rw02a_dead12    68-68    ///
  byte    rw02a_dead12n   69-70    ///
  byte    rw02a_gq        71-71    ///
  byte    rw02a_gqtype    72-73    ///
  byte    rw02a_dead12nr  74-74    ///
  int     pernum          75-77    ///
  float   wtper           78-85    ///
  byte    resident        86-86    ///
  byte    rw02a_pernum    87-88    ///
  byte    rw02a_relate    89-90    ///
  byte    rw02a_resid     91-91    ///
  byte    rw02a_sex       92-92    ///
  byte    rw02a_birmo     93-94    ///
  int     rw02a_biryr     95-98    ///
  int     rw02a_age       99-101   ///
  int     rw02a_nation    102-104  ///
  int     rw02a_bpl       105-108  ///
  int     rw02a_resdur    109-111  ///
  int     rw02a_resprev   112-115  ///
  byte    rw02a_lang      116-117  ///
  byte    rw02a_relig     118-119  ///
  byte    rw02a_disab     120-121  ///
  byte    rw02a_discause  122-122  ///
  byte    rw02a_parlive   123-123  ///
  byte    rw02a_school    124-124  ///
  byte    rw02a_edlev     125-126  ///
  byte    rw02a_edfield   127-128  ///
  byte    rw02a_degree    129-129  ///
  byte    rw02a_lit       130-130  ///
  byte    rw02a_empstat   131-132  ///
  int     rw02a_occ       133-135  ///
  byte    rw02a_classwk   136-136  ///
  int     rw02a_ind       137-139  ///
  byte    rw02a_econsect  140-140  ///
  byte    rw02a_marst     141-142  ///
  byte    rw02a_chbornm   143-144  ///
  byte    rw02a_chbornf   145-146  ///
  byte    rw02a_chlivem   147-148  ///
  byte    rw02a_chlivef   149-150  ///
  byte    rw02a_chb12m    151-151  ///
  byte    rw02a_chb12f    152-152  ///
  byte    rw02a_chl12m    153-153  ///
  byte    rw02a_chl12f    154-154  ///
  byte    rw02a_visitor   155-155  ///
  using `"ipumsi_00105.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var rw02a_dwnum    `"Dwelling number"'
label var rw02a_pern     `"Number of persons in household"'
label var rw02a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var rw02a_prov     `"Province"'
label var rw02a_town     `"District / Township"'
label var rw02a_urban    `"Urban/rural"'
label var rw02a_dwtype   `"Household type"'
label var rw02a_resabm   `"Number of absent male residents"'
label var rw02a_resabf   `"Number of absent female residents"'
label var rw02a_resab    `"Number of absent residents"'
label var rw02a_settty   `"Type of settlement"'
label var rw02a_dwtype2  `"Type of dwelling unit / type of building"'
label var rw02a_roof     `"Main roof material"'
label var rw02a_walls    `"Main walls material"'
label var rw02a_floor    `"Main floor material"'
label var rw02a_rooms    `"Number of rooms"'
label var rw02a_watsrc   `"Source of water"'
label var rw02a_light    `"Type of lighting"'
label var rw02a_fuelck   `"Cooking fuel"'
label var rw02a_toilet   `"Type of toilet facility"'
label var rw02a_garbage  `"Type of garbage disposal"'
label var rw02a_tenure   `"Home ownership status"'
label var rw02a_radiotv  `"Ownership of a radio and TV"'
label var rw02a_phone    `"Ownership of a fixed or mobile telephone"'
label var rw02a_computer `"Ownership of a computer or internet"'
label var rw02a_vehicle  `"Ownership of motor vehicle(s)"'
label var rw02a_motocy   `"Ownership of motorcycle"'
label var rw02a_bike     `"Ownership of bicycle"'
label var rw02a_dead12   `"Any death in past 12 months"'
label var rw02a_dead12n  `"Total number of deaths in past 12 months"'
label var rw02a_gq       `"Main type of household"'
label var rw02a_gqtype   `"Type of institutional household"'
label var rw02a_dead12nr `"Number of mortality records in input data"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var resident       `"Residence status: de facto, de jure"'
label var rw02a_pernum   `"Person number (within household)"'
label var rw02a_relate   `"Relationship to household head"'
label var rw02a_resid    `"Residence status"'
label var rw02a_sex      `"Sex"'
label var rw02a_birmo    `"Month of birth"'
label var rw02a_biryr    `"Year of birth"'
label var rw02a_age      `"Age"'
label var rw02a_nation   `"Nationality/country of citizenship"'
label var rw02a_bpl      `"Country of birth/district of birth"'
label var rw02a_resdur   `"Duration of residence"'
label var rw02a_resprev  `"Country or district of previous residence"'
label var rw02a_lang     `"Language spoken"'
label var rw02a_relig    `"Religion"'
label var rw02a_disab    `"Major handicap / disability"'
label var rw02a_discause `"Cause of the handicap or disability"'
label var rw02a_parlive  `"Survival of parents"'
label var rw02a_school   `"School attendance"'
label var rw02a_edlev    `"Level of education"'
label var rw02a_edfield  `"Field of education or training"'
label var rw02a_degree   `"Highest diploma received"'
label var rw02a_lit      `"Literacy"'
label var rw02a_empstat  `"Employment status (situation in economic activity)"'
label var rw02a_occ      `"Occupation"'
label var rw02a_classwk  `"Work status"'
label var rw02a_ind      `"Industry"'
label var rw02a_econsect `"Sector of economic activity"'
label var rw02a_marst    `"Marital status"'
label var rw02a_chbornm  `"Male children ever born alive"'
label var rw02a_chbornf  `"Female children ever born alive"'
label var rw02a_chlivem  `"Male children still alive"'
label var rw02a_chlivef  `"Female children still alive"'
label var rw02a_chb12m   `"Male children born in the past 12 months"'
label var rw02a_chb12f   `"Female children born in the past 12 months"'
label var rw02a_chl12m   `"Male children born in the past 12 months still alive"'
label var rw02a_chl12f   `"Female children born in the past 12 months still alive"'
label var rw02a_visitor  `"Residence status (large groups)"'

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

label define rw02a_pern_lbl 01 `"1"'
label define rw02a_pern_lbl 02 `"2"', add
label define rw02a_pern_lbl 03 `"3"', add
label define rw02a_pern_lbl 04 `"4"', add
label define rw02a_pern_lbl 05 `"5"', add
label define rw02a_pern_lbl 06 `"6"', add
label define rw02a_pern_lbl 07 `"7"', add
label define rw02a_pern_lbl 08 `"8"', add
label define rw02a_pern_lbl 09 `"9"', add
label define rw02a_pern_lbl 10 `"10"', add
label define rw02a_pern_lbl 11 `"11"', add
label define rw02a_pern_lbl 12 `"12"', add
label define rw02a_pern_lbl 13 `"13"', add
label define rw02a_pern_lbl 14 `"14"', add
label define rw02a_pern_lbl 15 `"15"', add
label define rw02a_pern_lbl 16 `"16"', add
label define rw02a_pern_lbl 17 `"17"', add
label define rw02a_pern_lbl 18 `"18"', add
label define rw02a_pern_lbl 19 `"19"', add
label define rw02a_pern_lbl 20 `"20"', add
label define rw02a_pern_lbl 21 `"21"', add
label define rw02a_pern_lbl 22 `"22"', add
label define rw02a_pern_lbl 23 `"23"', add
label define rw02a_pern_lbl 24 `"24"', add
label define rw02a_pern_lbl 25 `"25"', add
label define rw02a_pern_lbl 26 `"26"', add
label define rw02a_pern_lbl 27 `"27"', add
label define rw02a_pern_lbl 28 `"28"', add
label define rw02a_pern_lbl 29 `"29"', add
label define rw02a_pern_lbl 30 `"30"', add
label values rw02a_pern rw02a_pern_lbl

label define rw02a_fbig_lbl 0 `"No problem"'
label define rw02a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define rw02a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values rw02a_fbig rw02a_fbig_lbl

label define rw02a_prov_lbl 01 `"Kigali Ville"'
label define rw02a_prov_lbl 02 `"Kigali Ngali"', add
label define rw02a_prov_lbl 03 `"Gitarama"', add
label define rw02a_prov_lbl 04 `"Butare"', add
label define rw02a_prov_lbl 05 `"Gikongoro"', add
label define rw02a_prov_lbl 06 `"Cyangugu"', add
label define rw02a_prov_lbl 07 `"Kibuye"', add
label define rw02a_prov_lbl 08 `"Gisenyi"', add
label define rw02a_prov_lbl 09 `"Ruhengeri"', add
label define rw02a_prov_lbl 10 `"Byumba"', add
label define rw02a_prov_lbl 11 `"Umutara"', add
label define rw02a_prov_lbl 12 `"Kibungo"', add
label values rw02a_prov rw02a_prov_lbl

label define rw02a_town_lbl 0101 `"Nyarugenge"'
label define rw02a_town_lbl 0102 `"Nyamirambo"', add
label define rw02a_town_lbl 0103 `"Butamwa"', add
label define rw02a_town_lbl 0104 `"Gisozi"', add
label define rw02a_town_lbl 0105 `"Kacyiru"', add
label define rw02a_town_lbl 0106 `"Kanombe"', add
label define rw02a_town_lbl 0107 `"Kicukiro"', add
label define rw02a_town_lbl 0108 `"Gikondo"', add
label define rw02a_town_lbl 0201 `"Umujyi wa kabuga"', add
label define rw02a_town_lbl 0202 `"Bicumbi"', add
label define rw02a_town_lbl 0203 `"Gashora"', add
label define rw02a_town_lbl 0204 `"Ngenda"', add
label define rw02a_town_lbl 0205 `"Nyamata"', add
label define rw02a_town_lbl 0206 `"Shyorongi"', add
label define rw02a_town_lbl 0207 `"Rushashi"', add
label define rw02a_town_lbl 0208 `"Rulindo"', add
label define rw02a_town_lbl 0209 `"Buliza"', add
label define rw02a_town_lbl 0210 `"Gasabo"', add
label define rw02a_town_lbl 0301 `"Umujyi wa gitarama"', add
label define rw02a_town_lbl 0302 `"Ruyumba"', add
label define rw02a_town_lbl 0303 `"Ntongwe"', add
label define rw02a_town_lbl 0304 `"Umujyi wa ruhango"', add
label define rw02a_town_lbl 0305 `"Kabagari"', add
label define rw02a_town_lbl 0306 `"Ntenyo"', add
label define rw02a_town_lbl 0307 `"Muhanga"', add
label define rw02a_town_lbl 0308 `"Ndiza"', add
label define rw02a_town_lbl 0309 `"Kayumbu"', add
label define rw02a_town_lbl 0310 `"Kamonyi"', add
label define rw02a_town_lbl 0401 `"Umujyi wa butare"', add
label define rw02a_town_lbl 0402 `"Save"', add
label define rw02a_town_lbl 0403 `"Mugombwa"', add
label define rw02a_town_lbl 0404 `"Kibingo"', add
label define rw02a_town_lbl 0405 `"Nyakizu"', add
label define rw02a_town_lbl 0406 `"Maraba"', add
label define rw02a_town_lbl 0407 `"Kiruhura"', add
label define rw02a_town_lbl 0408 `"Umujyi wa nyanza"', add
label define rw02a_town_lbl 0409 `"Nyamure"', add
label define rw02a_town_lbl 0410 `"Gikonko"', add
label define rw02a_town_lbl 0501 `"Umujyi wa gikongoro"', add
label define rw02a_town_lbl 0502 `"Nyaruguru"', add
label define rw02a_town_lbl 0503 `"Nshili"', add
label define rw02a_town_lbl 0504 `"Mudasomwa"', add
label define rw02a_town_lbl 0505 `"Mushubi"', add
label define rw02a_town_lbl 0506 `"Kaduha"', add
label define rw02a_town_lbl 0507 `"Karaba"', add
label define rw02a_town_lbl 0601 `"Umujyi wa cyangugu"', add
label define rw02a_town_lbl 0602 `"Impala"', add
label define rw02a_town_lbl 0603 `"Nyamasheke"', add
label define rw02a_town_lbl 0604 `"Gatare"', add
label define rw02a_town_lbl 0605 `"Bukunzi"', add
label define rw02a_town_lbl 0606 `"Bugarama"', add
label define rw02a_town_lbl 0607 `"Gashonga"', add
label define rw02a_town_lbl 0701 `"Umujyi wa kibuye"', add
label define rw02a_town_lbl 0702 `"Gisunzu"', add
label define rw02a_town_lbl 0703 `"Rutsiro"', add
label define rw02a_town_lbl 0704 `"Budaha"', add
label define rw02a_town_lbl 0705 `"Itabire"', add
label define rw02a_town_lbl 0706 `"Rusenyi"', add
label define rw02a_town_lbl 0801 `"Umujyi wa gisenyi"', add
label define rw02a_town_lbl 0802 `"Cyanzarwe"', add
label define rw02a_town_lbl 0803 `"Mutura"', add
label define rw02a_town_lbl 0804 `"Gasiza"', add
label define rw02a_town_lbl 0805 `"Kageyo"', add
label define rw02a_town_lbl 0806 `"Nyagisagara"', add
label define rw02a_town_lbl 0807 `"Gaseke"', add
label define rw02a_town_lbl 0808 `"Kayove"', add
label define rw02a_town_lbl 0809 `"Kanama"', add
label define rw02a_town_lbl 0810 `"Nyamyumba"', add
label define rw02a_town_lbl 0901 `"Umujyi wa ruhengeri"', add
label define rw02a_town_lbl 0902 `"Bugarura"', add
label define rw02a_town_lbl 0903 `"Nyarutovu"', add
label define rw02a_town_lbl 0904 `"Bukonya"', add
label define rw02a_town_lbl 0905 `"Buhoma"', add
label define rw02a_town_lbl 0906 `"Mutobo"', add
label define rw02a_town_lbl 0907 `"Kinigi"', add
label define rw02a_town_lbl 0908 `"Bukamba"', add
label define rw02a_town_lbl 0909 `"Butaro"', add
label define rw02a_town_lbl 0910 `"Cyeru"', add
label define rw02a_town_lbl 0911 `"Nyamugali"', add
label define rw02a_town_lbl 1001 `"Umujyi wa byumba"', add
label define rw02a_town_lbl 1002 `"Kisaro"', add
label define rw02a_town_lbl 1003 `"Kinihira"', add
label define rw02a_town_lbl 1004 `"Bungwe"', add
label define rw02a_town_lbl 1005 `"Rushaki"', add
label define rw02a_town_lbl 1006 `"Rebero"', add
label define rw02a_town_lbl 1007 `"Ngarama"', add
label define rw02a_town_lbl 1008 `"Humure"', add
label define rw02a_town_lbl 1009 `"Rwamiko"', add
label define rw02a_town_lbl 1102 `"Bugaragara and Umujyi w'umutara"', add
label define rw02a_town_lbl 1103 `"Kabare"', add
label define rw02a_town_lbl 1104 `"Gabiro"', add
label define rw02a_town_lbl 1105 `"Rukara"', add
label define rw02a_town_lbl 1106 `"Murambi"', add
label define rw02a_town_lbl 1107 `"Kahi"', add
label define rw02a_town_lbl 1108 `"Muvumba"', add
label define rw02a_town_lbl 1201 `"Umujyi wa kibungo"', add
label define rw02a_town_lbl 1202 `"Kigarama"', add
label define rw02a_town_lbl 1203 `"Mirenge"', add
label define rw02a_town_lbl 1204 `"Umujyi wa rwamagana"', add
label define rw02a_town_lbl 1205 `"Muhazi"', add
label define rw02a_town_lbl 1206 `"Kabarondo"', add
label define rw02a_town_lbl 1207 `"Cyarubare"', add
label define rw02a_town_lbl 1208 `"Rukira"', add
label define rw02a_town_lbl 1209 `"Nyarubuye"', add
label define rw02a_town_lbl 1210 `"Rusumo"', add
label values rw02a_town rw02a_town_lbl

label define rw02a_urban_lbl 1 `"Urban"'
label define rw02a_urban_lbl 2 `"Rural"', add
label values rw02a_urban rw02a_urban_lbl

label define rw02a_dwtype_lbl 100 `"Private household"'
label define rw02a_dwtype_lbl 201 `"Police camp"', add
label define rw02a_dwtype_lbl 203 `"Army camp"', add
label define rw02a_dwtype_lbl 204 `"Religious institution / monastery"', add
label define rw02a_dwtype_lbl 205 `"Street children"', add
label define rw02a_dwtype_lbl 206 `"Boarding school"', add
label define rw02a_dwtype_lbl 207 `"Prison / jail / penitentiary establishment"', add
label define rw02a_dwtype_lbl 208 `"Center for homeless persons"', add
label define rw02a_dwtype_lbl 211 `"Hospital"', add
label define rw02a_dwtype_lbl 212 `"Orphanage"', add
label define rw02a_dwtype_lbl 214 `"Youth camp"', add
label define rw02a_dwtype_lbl 215 `"Other centers"', add
label define rw02a_dwtype_lbl 999 `"Response suppressed"', add
label values rw02a_dwtype rw02a_dwtype_lbl

label define rw02a_resabm_lbl 0 `"0"'
label define rw02a_resabm_lbl 1 `"1"', add
label define rw02a_resabm_lbl 2 `"2"', add
label define rw02a_resabm_lbl 3 `"3"', add
label define rw02a_resabm_lbl 4 `"4+"', add
label values rw02a_resabm rw02a_resabm_lbl

label define rw02a_resabf_lbl 0 `"0"'
label define rw02a_resabf_lbl 1 `"1"', add
label define rw02a_resabf_lbl 2 `"2"', add
label define rw02a_resabf_lbl 3 `"3"', add
label define rw02a_resabf_lbl 4 `"4"', add
label define rw02a_resabf_lbl 5 `"5+"', add
label values rw02a_resabf rw02a_resabf_lbl

label define rw02a_resab_lbl 0 `"0"'
label define rw02a_resab_lbl 1 `"1"', add
label define rw02a_resab_lbl 2 `"2"', add
label define rw02a_resab_lbl 3 `"3"', add
label define rw02a_resab_lbl 4 `"4"', add
label define rw02a_resab_lbl 5 `"5"', add
label define rw02a_resab_lbl 6 `"6"', add
label define rw02a_resab_lbl 7 `"7"', add
label define rw02a_resab_lbl 8 `"8+"', add
label values rw02a_resab rw02a_resab_lbl

label define rw02a_settty_lbl 1 `"Grouped village (Umudugudu)"'
label define rw02a_settty_lbl 2 `"Ancient grouping"', add
label define rw02a_settty_lbl 3 `"Isolated houses"', add
label define rw02a_settty_lbl 4 `"Modern formal settlement (housing development scheme)"', add
label define rw02a_settty_lbl 5 `"Informal settlement"', add
label define rw02a_settty_lbl 6 `"Other type of housing"', add
label define rw02a_settty_lbl 8 `"Unknown"', add
label define rw02a_settty_lbl 9 `"NIU (not in universe)"', add
label values rw02a_settty rw02a_settty_lbl

label define rw02a_dwtype2_lbl 1 `"Dwelling unit inhabited by a single household"'
label define rw02a_dwtype2_lbl 2 `"Dwelling unit inhabited by several households"', add
label define rw02a_dwtype2_lbl 3 `"Building with several floors, inhabited by one or several households"', add
label define rw02a_dwtype2_lbl 4 `"Compound of several dwelling units, inhabited by several households"', add
label define rw02a_dwtype2_lbl 5 `"Other type of dwelling / building"', add
label define rw02a_dwtype2_lbl 8 `"Unknown"', add
label define rw02a_dwtype2_lbl 9 `"NIU (not in universe)"', add
label values rw02a_dwtype2 rw02a_dwtype2_lbl

label define rw02a_roof_lbl 1 `"Corrugated metal sheet"'
label define rw02a_roof_lbl 2 `"Traditional tiles, locally made"', add
label define rw02a_roof_lbl 3 `"Modern tiles / slate, industrial"', add
label define rw02a_roof_lbl 4 `"Concrete"', add
label define rw02a_roof_lbl 5 `"Cardboard / shitting"', add
label define rw02a_roof_lbl 6 `"Thatch / straw"', add
label define rw02a_roof_lbl 7 `"Others"', add
label define rw02a_roof_lbl 8 `"Unknown"', add
label define rw02a_roof_lbl 9 `"NIU (not in universe)"', add
label values rw02a_roof rw02a_roof_lbl

label define rw02a_walls_lbl 01 `"Wood and earth pisé (no cement) / Wood and earth adobe"'
label define rw02a_walls_lbl 02 `"Wood and cement pisé / wood and cement adobe"', add
label define rw02a_walls_lbl 03 `"Adobe bricks"', add
label define rw02a_walls_lbl 04 `"Baked bricks"', add
label define rw02a_walls_lbl 05 `"Cement blocs / concrete"', add
label define rw02a_walls_lbl 06 `"Stone"', add
label define rw02a_walls_lbl 07 `"Wood plank"', add
label define rw02a_walls_lbl 08 `"Plastic shitting / cardboard"', add
label define rw02a_walls_lbl 09 `"Others"', add
label define rw02a_walls_lbl 98 `"Unknown"', add
label define rw02a_walls_lbl 99 `"NIU (not in universe)"', add
label values rw02a_walls rw02a_walls_lbl

label define rw02a_floor_lbl 1 `"Earth / sand"'
label define rw02a_floor_lbl 2 `"Cement"', add
label define rw02a_floor_lbl 3 `"Stones"', add
label define rw02a_floor_lbl 4 `"Ceramic tiles"', add
label define rw02a_floor_lbl 5 `"Baked bricks"', add
label define rw02a_floor_lbl 6 `"Other"', add
label define rw02a_floor_lbl 8 `"Unknown"', add
label define rw02a_floor_lbl 9 `"NIU (not in universe)"', add
label values rw02a_floor rw02a_floor_lbl

label define rw02a_rooms_lbl 01 `"1"'
label define rw02a_rooms_lbl 02 `"2"', add
label define rw02a_rooms_lbl 03 `"3"', add
label define rw02a_rooms_lbl 04 `"4"', add
label define rw02a_rooms_lbl 05 `"5"', add
label define rw02a_rooms_lbl 06 `"6"', add
label define rw02a_rooms_lbl 07 `"7"', add
label define rw02a_rooms_lbl 08 `"8"', add
label define rw02a_rooms_lbl 09 `"9"', add
label define rw02a_rooms_lbl 10 `"10"', add
label define rw02a_rooms_lbl 11 `"11+"', add
label define rw02a_rooms_lbl 98 `"Unknown"', add
label define rw02a_rooms_lbl 99 `"NIU (not in universe)"', add
label values rw02a_rooms rw02a_rooms_lbl

label define rw02a_watsrc_lbl 01 `"Tap inside house"'
label define rw02a_watsrc_lbl 02 `"Tap inside compound"', add
label define rw02a_watsrc_lbl 03 `"Street tap / tap outside compound"', add
label define rw02a_watsrc_lbl 04 `"Spring / well, built"', add
label define rw02a_watsrc_lbl 05 `"Spring / well, natural (not built)"', add
label define rw02a_watsrc_lbl 06 `"Rain water"', add
label define rw02a_watsrc_lbl 07 `"River"', add
label define rw02a_watsrc_lbl 08 `"Lake / waterhole / pond / surface water"', add
label define rw02a_watsrc_lbl 09 `"Others"', add
label define rw02a_watsrc_lbl 98 `"Unknown"', add
label define rw02a_watsrc_lbl 99 `"NIU (not in universe)"', add
label values rw02a_watsrc rw02a_watsrc_lbl

label define rw02a_light_lbl 01 `"Electricity / public source (Electrogaz)"'
label define rw02a_light_lbl 02 `"Electricity / private source: hydro-electric power station."', add
label define rw02a_light_lbl 03 `"Solar power system / fuel powered generator"', add
label define rw02a_light_lbl 04 `"Oil lamp"', add
label define rw02a_light_lbl 05 `"Paper oil lantern"', add
label define rw02a_light_lbl 06 `"Candle"', add
label define rw02a_light_lbl 07 `"Wood"', add
label define rw02a_light_lbl 08 `"Others"', add
label define rw02a_light_lbl 09 `"Unknown"', add
label define rw02a_light_lbl 99 `"NIU (not in universe)"', add
label values rw02a_light rw02a_light_lbl

label define rw02a_fuelck_lbl 1 `"Electricity"'
label define rw02a_fuelck_lbl 2 `"Gas"', add
label define rw02a_fuelck_lbl 3 `"Petrol"', add
label define rw02a_fuelck_lbl 4 `"Wood"', add
label define rw02a_fuelck_lbl 5 `"Charcoal"', add
label define rw02a_fuelck_lbl 6 `"Plant material (herbs, straw, leaves, etc.)"', add
label define rw02a_fuelck_lbl 7 `"Others"', add
label define rw02a_fuelck_lbl 8 `"Unknown"', add
label define rw02a_fuelck_lbl 9 `"NIU (not in universe)"', add
label values rw02a_fuelck rw02a_fuelck_lbl

label define rw02a_toilet_lbl 1 `"Flush toilet"'
label define rw02a_toilet_lbl 2 `"Pit latrine, individual"', add
label define rw02a_toilet_lbl 3 `"Pit latrine, shared"', add
label define rw02a_toilet_lbl 4 `"Nature / outside"', add
label define rw02a_toilet_lbl 5 `"Others"', add
label define rw02a_toilet_lbl 8 `"Unknown"', add
label define rw02a_toilet_lbl 9 `"NIU (not in universe)"', add
label values rw02a_toilet rw02a_toilet_lbl

label define rw02a_garbage_lbl 1 `"Compost box"'
label define rw02a_garbage_lbl 2 `"Garbage can (trash can), individual"', add
label define rw02a_garbage_lbl 3 `"Garbage can (trash can), common / shared"', add
label define rw02a_garbage_lbl 4 `"In nature / outside"', add
label define rw02a_garbage_lbl 5 `"In the fields"', add
label define rw02a_garbage_lbl 6 `"In the river / water pipe / road gutter"', add
label define rw02a_garbage_lbl 7 `"Others"', add
label define rw02a_garbage_lbl 8 `"Unknown"', add
label define rw02a_garbage_lbl 9 `"NIU (not in universe)"', add
label values rw02a_garbage rw02a_garbage_lbl

label define rw02a_tenure_lbl 1 `"Landlord / owner"'
label define rw02a_tenure_lbl 2 `"Paid rent"', add
label define rw02a_tenure_lbl 3 `"Mortgage / leasing"', add
label define rw02a_tenure_lbl 4 `"Free housing"', add
label define rw02a_tenure_lbl 5 `"Paid by employer"', add
label define rw02a_tenure_lbl 6 `"Refugee camp / temporary settlement"', add
label define rw02a_tenure_lbl 7 `"Others"', add
label define rw02a_tenure_lbl 8 `"Unknown"', add
label define rw02a_tenure_lbl 9 `"NIU (not in universe)"', add
label values rw02a_tenure rw02a_tenure_lbl

label define rw02a_radiotv_lbl 1 `"Radio"'
label define rw02a_radiotv_lbl 2 `"Television"', add
label define rw02a_radiotv_lbl 3 `"Radio and television"', add
label define rw02a_radiotv_lbl 4 `"None"', add
label define rw02a_radiotv_lbl 8 `"Unknown"', add
label define rw02a_radiotv_lbl 9 `"NIU (not in universe)"', add
label values rw02a_radiotv rw02a_radiotv_lbl

label define rw02a_phone_lbl 1 `"Fixed telephone"'
label define rw02a_phone_lbl 2 `"Mobile telephone"', add
label define rw02a_phone_lbl 3 `"Both fixed and mobile telephones"', add
label define rw02a_phone_lbl 4 `"None"', add
label define rw02a_phone_lbl 8 `"Unknown"', add
label define rw02a_phone_lbl 9 `"NIU (not in universe)"', add
label values rw02a_phone rw02a_phone_lbl

label define rw02a_computer_lbl 1 `"Computer"'
label define rw02a_computer_lbl 2 `"Both computer and internet"', add
label define rw02a_computer_lbl 3 `"None"', add
label define rw02a_computer_lbl 8 `"Unknown"', add
label define rw02a_computer_lbl 9 `"NIU (not in universe)"', add
label values rw02a_computer rw02a_computer_lbl

label define rw02a_vehicle_lbl 0 `"No motor vehicle"'
label define rw02a_vehicle_lbl 1 `"1"', add
label define rw02a_vehicle_lbl 2 `"2"', add
label define rw02a_vehicle_lbl 3 `"3+"', add
label define rw02a_vehicle_lbl 8 `"Unknown"', add
label define rw02a_vehicle_lbl 9 `"NIU (not in universe)"', add
label values rw02a_vehicle rw02a_vehicle_lbl

label define rw02a_motocy_lbl 0 `"No motorcycle"'
label define rw02a_motocy_lbl 1 `"1"', add
label define rw02a_motocy_lbl 2 `"2+"', add
label define rw02a_motocy_lbl 8 `"Unknown"', add
label define rw02a_motocy_lbl 9 `"NIU (not in universe)"', add
label values rw02a_motocy rw02a_motocy_lbl

label define rw02a_bike_lbl 00 `"No bicycle"'
label define rw02a_bike_lbl 01 `"1"', add
label define rw02a_bike_lbl 02 `"2"', add
label define rw02a_bike_lbl 03 `"3"', add
label define rw02a_bike_lbl 04 `"4"', add
label define rw02a_bike_lbl 05 `"5"', add
label define rw02a_bike_lbl 06 `"6"', add
label define rw02a_bike_lbl 07 `"7"', add
label define rw02a_bike_lbl 08 `"8"', add
label define rw02a_bike_lbl 09 `"9"', add
label define rw02a_bike_lbl 10 `"10"', add
label define rw02a_bike_lbl 11 `"11"', add
label define rw02a_bike_lbl 98 `"Unknown"', add
label define rw02a_bike_lbl 99 `"NIU (not in universe)"', add
label values rw02a_bike rw02a_bike_lbl

label define rw02a_dead12_lbl 1 `"Yes"'
label define rw02a_dead12_lbl 2 `"No"', add
label define rw02a_dead12_lbl 9 `"NIU (not in universe)"', add
label values rw02a_dead12 rw02a_dead12_lbl

label define rw02a_dead12n_lbl 01 `"1"'
label define rw02a_dead12n_lbl 02 `"2"', add
label define rw02a_dead12n_lbl 03 `"3+"', add
label define rw02a_dead12n_lbl 98 `"Unknown"', add
label define rw02a_dead12n_lbl 99 `"NIU (not in universe)"', add
label values rw02a_dead12n rw02a_dead12n_lbl

label define rw02a_gq_lbl 1 `"Private household"'
label define rw02a_gq_lbl 2 `"Institution"', add
label values rw02a_gq rw02a_gq_lbl

label define rw02a_gqtype_lbl 01 `"Police camp"'
label define rw02a_gqtype_lbl 03 `"Army camp"', add
label define rw02a_gqtype_lbl 04 `"Religious institution / monastery"', add
label define rw02a_gqtype_lbl 05 `"Street children"', add
label define rw02a_gqtype_lbl 06 `"Boarding school"', add
label define rw02a_gqtype_lbl 07 `"Prison / jail / penitentiary establishment"', add
label define rw02a_gqtype_lbl 08 `"Center for homeless persons"', add
label define rw02a_gqtype_lbl 11 `"Hospital"', add
label define rw02a_gqtype_lbl 12 `"Orphanage"', add
label define rw02a_gqtype_lbl 14 `"Youth camp"', add
label define rw02a_gqtype_lbl 15 `"Other centers"', add
label define rw02a_gqtype_lbl 98 `"Response suppressed"', add
label define rw02a_gqtype_lbl 99 `"NIU (not in universe)"', add
label values rw02a_gqtype rw02a_gqtype_lbl

label define rw02a_dead12nr_lbl 0 `"0"'
label define rw02a_dead12nr_lbl 1 `"1"', add
label define rw02a_dead12nr_lbl 2 `"2"', add
label define rw02a_dead12nr_lbl 3 `"3"', add
label define rw02a_dead12nr_lbl 4 `"4"', add
label define rw02a_dead12nr_lbl 9 `"NIU (not in universe)"', add
label values rw02a_dead12nr rw02a_dead12nr_lbl

label define resident_lbl 1 `"Present resident"'
label define resident_lbl 2 `"Absent resident"', add
label define resident_lbl 3 `"Visitor/non-resident"', add
label define resident_lbl 4 `"De facto population (present persons)"', add
label define resident_lbl 9 `"Unknown/missing"', add
label values resident resident_lbl

label define rw02a_pernum_lbl 00 `"Household record"'
label define rw02a_pernum_lbl 01 `"1"', add
label define rw02a_pernum_lbl 02 `"2"', add
label define rw02a_pernum_lbl 03 `"3"', add
label define rw02a_pernum_lbl 04 `"4"', add
label define rw02a_pernum_lbl 05 `"5"', add
label define rw02a_pernum_lbl 06 `"6"', add
label define rw02a_pernum_lbl 07 `"7"', add
label define rw02a_pernum_lbl 08 `"8"', add
label define rw02a_pernum_lbl 09 `"9"', add
label define rw02a_pernum_lbl 10 `"10"', add
label define rw02a_pernum_lbl 11 `"11"', add
label define rw02a_pernum_lbl 12 `"12"', add
label define rw02a_pernum_lbl 13 `"13"', add
label define rw02a_pernum_lbl 14 `"14"', add
label define rw02a_pernum_lbl 15 `"15"', add
label define rw02a_pernum_lbl 16 `"16"', add
label define rw02a_pernum_lbl 17 `"17"', add
label define rw02a_pernum_lbl 18 `"18"', add
label define rw02a_pernum_lbl 19 `"19"', add
label define rw02a_pernum_lbl 20 `"20"', add
label define rw02a_pernum_lbl 21 `"21"', add
label define rw02a_pernum_lbl 22 `"22"', add
label define rw02a_pernum_lbl 23 `"23"', add
label define rw02a_pernum_lbl 24 `"24"', add
label define rw02a_pernum_lbl 25 `"25"', add
label define rw02a_pernum_lbl 26 `"26"', add
label define rw02a_pernum_lbl 27 `"27"', add
label define rw02a_pernum_lbl 28 `"28"', add
label define rw02a_pernum_lbl 29 `"29"', add
label define rw02a_pernum_lbl 30 `"30"', add
label values rw02a_pernum rw02a_pernum_lbl

label define rw02a_relate_lbl 01 `"Household head"'
label define rw02a_relate_lbl 02 `"Spouse"', add
label define rw02a_relate_lbl 03 `"Child"', add
label define rw02a_relate_lbl 04 `"Child hosted by the head of the household, without close family relationship"', add
label define rw02a_relate_lbl 05 `"Father / mother"', add
label define rw02a_relate_lbl 06 `"Brother / sister"', add
label define rw02a_relate_lbl 07 `"Grandchild"', add
label define rw02a_relate_lbl 08 `"Other family relationship (kinship relation)"', add
label define rw02a_relate_lbl 09 `"No kinship relation"', add
label define rw02a_relate_lbl 98 `"Unknown"', add
label define rw02a_relate_lbl 99 `"NIU (not in universe)"', add
label values rw02a_relate rw02a_relate_lbl

label define rw02a_resid_lbl 1 `"Resident, present"'
label define rw02a_resid_lbl 2 `"Resident, absent"', add
label define rw02a_resid_lbl 3 `"Visitor"', add
label define rw02a_resid_lbl 4 `"Institutional household"', add
label values rw02a_resid rw02a_resid_lbl

label define rw02a_sex_lbl 1 `"Male"'
label define rw02a_sex_lbl 2 `"Female"', add
label values rw02a_sex rw02a_sex_lbl

label define rw02a_birmo_lbl 01 `"January"'
label define rw02a_birmo_lbl 02 `"February"', add
label define rw02a_birmo_lbl 03 `"March"', add
label define rw02a_birmo_lbl 04 `"April"', add
label define rw02a_birmo_lbl 05 `"May"', add
label define rw02a_birmo_lbl 06 `"June"', add
label define rw02a_birmo_lbl 07 `"July"', add
label define rw02a_birmo_lbl 08 `"August"', add
label define rw02a_birmo_lbl 09 `"September"', add
label define rw02a_birmo_lbl 10 `"October"', add
label define rw02a_birmo_lbl 11 `"November"', add
label define rw02a_birmo_lbl 12 `"December"', add
label define rw02a_birmo_lbl 97 `"Respondent did not know"', add
label define rw02a_birmo_lbl 98 `"Date unknown, age approximated"', add
label define rw02a_birmo_lbl 99 `"Unknown"', add
label values rw02a_birmo rw02a_birmo_lbl

label define rw02a_biryr_lbl 1900 `"1900 or earlier"'
label define rw02a_biryr_lbl 1901 `"1901"', add
label define rw02a_biryr_lbl 1902 `"1902"', add
label define rw02a_biryr_lbl 1903 `"1903"', add
label define rw02a_biryr_lbl 1904 `"1904"', add
label define rw02a_biryr_lbl 1905 `"1905"', add
label define rw02a_biryr_lbl 1906 `"1906"', add
label define rw02a_biryr_lbl 1907 `"1907"', add
label define rw02a_biryr_lbl 1908 `"1908"', add
label define rw02a_biryr_lbl 1909 `"1909"', add
label define rw02a_biryr_lbl 1910 `"1910"', add
label define rw02a_biryr_lbl 1911 `"1911"', add
label define rw02a_biryr_lbl 1912 `"1912"', add
label define rw02a_biryr_lbl 1913 `"1913"', add
label define rw02a_biryr_lbl 1914 `"1914"', add
label define rw02a_biryr_lbl 1915 `"1915"', add
label define rw02a_biryr_lbl 1916 `"1916"', add
label define rw02a_biryr_lbl 1917 `"1917"', add
label define rw02a_biryr_lbl 1918 `"1918"', add
label define rw02a_biryr_lbl 1919 `"1919"', add
label define rw02a_biryr_lbl 1920 `"1920"', add
label define rw02a_biryr_lbl 1921 `"1921"', add
label define rw02a_biryr_lbl 1922 `"1922"', add
label define rw02a_biryr_lbl 1923 `"1923"', add
label define rw02a_biryr_lbl 1924 `"1924"', add
label define rw02a_biryr_lbl 1925 `"1925"', add
label define rw02a_biryr_lbl 1926 `"1926"', add
label define rw02a_biryr_lbl 1927 `"1927"', add
label define rw02a_biryr_lbl 1928 `"1928"', add
label define rw02a_biryr_lbl 1929 `"1929"', add
label define rw02a_biryr_lbl 1930 `"1930"', add
label define rw02a_biryr_lbl 1931 `"1931"', add
label define rw02a_biryr_lbl 1932 `"1932"', add
label define rw02a_biryr_lbl 1933 `"1933"', add
label define rw02a_biryr_lbl 1934 `"1934"', add
label define rw02a_biryr_lbl 1935 `"1935"', add
label define rw02a_biryr_lbl 1936 `"1936"', add
label define rw02a_biryr_lbl 1937 `"1937"', add
label define rw02a_biryr_lbl 1938 `"1938"', add
label define rw02a_biryr_lbl 1939 `"1939"', add
label define rw02a_biryr_lbl 1940 `"1940"', add
label define rw02a_biryr_lbl 1941 `"1941"', add
label define rw02a_biryr_lbl 1942 `"1942"', add
label define rw02a_biryr_lbl 1943 `"1943"', add
label define rw02a_biryr_lbl 1944 `"1944"', add
label define rw02a_biryr_lbl 1945 `"1945"', add
label define rw02a_biryr_lbl 1946 `"1946"', add
label define rw02a_biryr_lbl 1947 `"1947"', add
label define rw02a_biryr_lbl 1948 `"1948"', add
label define rw02a_biryr_lbl 1949 `"1949"', add
label define rw02a_biryr_lbl 1950 `"1950"', add
label define rw02a_biryr_lbl 1951 `"1951"', add
label define rw02a_biryr_lbl 1952 `"1952"', add
label define rw02a_biryr_lbl 1953 `"1953"', add
label define rw02a_biryr_lbl 1954 `"1954"', add
label define rw02a_biryr_lbl 1955 `"1955"', add
label define rw02a_biryr_lbl 1956 `"1956"', add
label define rw02a_biryr_lbl 1957 `"1957"', add
label define rw02a_biryr_lbl 1958 `"1958"', add
label define rw02a_biryr_lbl 1959 `"1959"', add
label define rw02a_biryr_lbl 1960 `"1960"', add
label define rw02a_biryr_lbl 1961 `"1961"', add
label define rw02a_biryr_lbl 1962 `"1962"', add
label define rw02a_biryr_lbl 1963 `"1963"', add
label define rw02a_biryr_lbl 1964 `"1964"', add
label define rw02a_biryr_lbl 1965 `"1965"', add
label define rw02a_biryr_lbl 1966 `"1966"', add
label define rw02a_biryr_lbl 1967 `"1967"', add
label define rw02a_biryr_lbl 1968 `"1968"', add
label define rw02a_biryr_lbl 1969 `"1969"', add
label define rw02a_biryr_lbl 1970 `"1970"', add
label define rw02a_biryr_lbl 1971 `"1971"', add
label define rw02a_biryr_lbl 1972 `"1972"', add
label define rw02a_biryr_lbl 1973 `"1973"', add
label define rw02a_biryr_lbl 1974 `"1974"', add
label define rw02a_biryr_lbl 1975 `"1975"', add
label define rw02a_biryr_lbl 1976 `"1976"', add
label define rw02a_biryr_lbl 1977 `"1977"', add
label define rw02a_biryr_lbl 1978 `"1978"', add
label define rw02a_biryr_lbl 1979 `"1979"', add
label define rw02a_biryr_lbl 1980 `"1980"', add
label define rw02a_biryr_lbl 1981 `"1981"', add
label define rw02a_biryr_lbl 1982 `"1982"', add
label define rw02a_biryr_lbl 1983 `"1983"', add
label define rw02a_biryr_lbl 1984 `"1984"', add
label define rw02a_biryr_lbl 1985 `"1985"', add
label define rw02a_biryr_lbl 1986 `"1986"', add
label define rw02a_biryr_lbl 1987 `"1987"', add
label define rw02a_biryr_lbl 1988 `"1988"', add
label define rw02a_biryr_lbl 1989 `"1989"', add
label define rw02a_biryr_lbl 1990 `"1990"', add
label define rw02a_biryr_lbl 1991 `"1991"', add
label define rw02a_biryr_lbl 1992 `"1992"', add
label define rw02a_biryr_lbl 1993 `"1993"', add
label define rw02a_biryr_lbl 1994 `"1994"', add
label define rw02a_biryr_lbl 1995 `"1995"', add
label define rw02a_biryr_lbl 1996 `"1996"', add
label define rw02a_biryr_lbl 1997 `"1997"', add
label define rw02a_biryr_lbl 1998 `"1998"', add
label define rw02a_biryr_lbl 1999 `"1999"', add
label define rw02a_biryr_lbl 2000 `"2000"', add
label define rw02a_biryr_lbl 2001 `"2001"', add
label define rw02a_biryr_lbl 2002 `"2002"', add
label define rw02a_biryr_lbl 9998 `"Does not know"', add
label define rw02a_biryr_lbl 9999 `"Date unknown, age approximated"', add
label values rw02a_biryr rw02a_biryr_lbl

label define rw02a_age_lbl 000 `"0"'
label define rw02a_age_lbl 001 `"1"', add
label define rw02a_age_lbl 002 `"2"', add
label define rw02a_age_lbl 003 `"3"', add
label define rw02a_age_lbl 004 `"4"', add
label define rw02a_age_lbl 005 `"5"', add
label define rw02a_age_lbl 006 `"6"', add
label define rw02a_age_lbl 007 `"7"', add
label define rw02a_age_lbl 008 `"8"', add
label define rw02a_age_lbl 009 `"9"', add
label define rw02a_age_lbl 010 `"10"', add
label define rw02a_age_lbl 011 `"11"', add
label define rw02a_age_lbl 012 `"12"', add
label define rw02a_age_lbl 013 `"13"', add
label define rw02a_age_lbl 014 `"14"', add
label define rw02a_age_lbl 015 `"15"', add
label define rw02a_age_lbl 016 `"16"', add
label define rw02a_age_lbl 017 `"17"', add
label define rw02a_age_lbl 018 `"18"', add
label define rw02a_age_lbl 019 `"19"', add
label define rw02a_age_lbl 020 `"20"', add
label define rw02a_age_lbl 021 `"21"', add
label define rw02a_age_lbl 022 `"22"', add
label define rw02a_age_lbl 023 `"23"', add
label define rw02a_age_lbl 024 `"24"', add
label define rw02a_age_lbl 025 `"25"', add
label define rw02a_age_lbl 026 `"26"', add
label define rw02a_age_lbl 027 `"27"', add
label define rw02a_age_lbl 028 `"28"', add
label define rw02a_age_lbl 029 `"29"', add
label define rw02a_age_lbl 030 `"30"', add
label define rw02a_age_lbl 031 `"31"', add
label define rw02a_age_lbl 032 `"32"', add
label define rw02a_age_lbl 033 `"33"', add
label define rw02a_age_lbl 034 `"34"', add
label define rw02a_age_lbl 035 `"35"', add
label define rw02a_age_lbl 036 `"36"', add
label define rw02a_age_lbl 037 `"37"', add
label define rw02a_age_lbl 038 `"38"', add
label define rw02a_age_lbl 039 `"39"', add
label define rw02a_age_lbl 040 `"40"', add
label define rw02a_age_lbl 041 `"41"', add
label define rw02a_age_lbl 042 `"42"', add
label define rw02a_age_lbl 043 `"43"', add
label define rw02a_age_lbl 044 `"44"', add
label define rw02a_age_lbl 045 `"45"', add
label define rw02a_age_lbl 046 `"46"', add
label define rw02a_age_lbl 047 `"47"', add
label define rw02a_age_lbl 048 `"48"', add
label define rw02a_age_lbl 049 `"49"', add
label define rw02a_age_lbl 050 `"50"', add
label define rw02a_age_lbl 051 `"51"', add
label define rw02a_age_lbl 052 `"52"', add
label define rw02a_age_lbl 053 `"53"', add
label define rw02a_age_lbl 054 `"54"', add
label define rw02a_age_lbl 055 `"55"', add
label define rw02a_age_lbl 056 `"56"', add
label define rw02a_age_lbl 057 `"57"', add
label define rw02a_age_lbl 058 `"58"', add
label define rw02a_age_lbl 059 `"59"', add
label define rw02a_age_lbl 060 `"60"', add
label define rw02a_age_lbl 061 `"61"', add
label define rw02a_age_lbl 062 `"62"', add
label define rw02a_age_lbl 063 `"63"', add
label define rw02a_age_lbl 064 `"64"', add
label define rw02a_age_lbl 065 `"65"', add
label define rw02a_age_lbl 066 `"66"', add
label define rw02a_age_lbl 067 `"67"', add
label define rw02a_age_lbl 068 `"68"', add
label define rw02a_age_lbl 069 `"69"', add
label define rw02a_age_lbl 070 `"70"', add
label define rw02a_age_lbl 071 `"71"', add
label define rw02a_age_lbl 072 `"72"', add
label define rw02a_age_lbl 073 `"73"', add
label define rw02a_age_lbl 074 `"74"', add
label define rw02a_age_lbl 075 `"75"', add
label define rw02a_age_lbl 076 `"76"', add
label define rw02a_age_lbl 077 `"77"', add
label define rw02a_age_lbl 078 `"78"', add
label define rw02a_age_lbl 079 `"79"', add
label define rw02a_age_lbl 080 `"80"', add
label define rw02a_age_lbl 081 `"81"', add
label define rw02a_age_lbl 082 `"82"', add
label define rw02a_age_lbl 083 `"83"', add
label define rw02a_age_lbl 084 `"84"', add
label define rw02a_age_lbl 085 `"85"', add
label define rw02a_age_lbl 086 `"86"', add
label define rw02a_age_lbl 087 `"87"', add
label define rw02a_age_lbl 088 `"88"', add
label define rw02a_age_lbl 089 `"89"', add
label define rw02a_age_lbl 090 `"90"', add
label define rw02a_age_lbl 091 `"91"', add
label define rw02a_age_lbl 092 `"92"', add
label define rw02a_age_lbl 093 `"93"', add
label define rw02a_age_lbl 094 `"94"', add
label define rw02a_age_lbl 095 `"95"', add
label define rw02a_age_lbl 096 `"96"', add
label define rw02a_age_lbl 097 `"97"', add
label define rw02a_age_lbl 098 `"98"', add
label define rw02a_age_lbl 099 `"99"', add
label define rw02a_age_lbl 100 `"100"', add
label define rw02a_age_lbl 101 `"101"', add
label define rw02a_age_lbl 102 `"102"', add
label define rw02a_age_lbl 103 `"103"', add
label define rw02a_age_lbl 104 `"104"', add
label define rw02a_age_lbl 105 `"105"', add
label define rw02a_age_lbl 106 `"106"', add
label define rw02a_age_lbl 107 `"107"', add
label define rw02a_age_lbl 108 `"108"', add
label define rw02a_age_lbl 109 `"109"', add
label define rw02a_age_lbl 110 `"110+"', add
label values rw02a_age rw02a_age_lbl

label define rw02a_nation_lbl 100 `"Rwanda"'
label define rw02a_nation_lbl 101 `"Rwanda and others"', add
label define rw02a_nation_lbl 201 `"Burundi"', add
label define rw02a_nation_lbl 202 `"Congo-Kinshasa (RDC / Zaire)"', add
label define rw02a_nation_lbl 203 `"Uganda"', add
label define rw02a_nation_lbl 204 `"Tanzania"', add
label define rw02a_nation_lbl 205 `"Africa - other country"', add
label define rw02a_nation_lbl 207 `"Belgium"', add
label define rw02a_nation_lbl 208 `"Europe - other country"', add
label define rw02a_nation_lbl 215 `"Asia"', add
label define rw02a_nation_lbl 998 `"Response suppressed"', add
label define rw02a_nation_lbl 999 `"Unknown"', add
label values rw02a_nation rw02a_nation_lbl

label define rw02a_bpl_lbl 0101 `"Kigali city, District Nyarugenge"'
label define rw02a_bpl_lbl 0102 `"Kigali city, District Nyamirambo"', add
label define rw02a_bpl_lbl 0103 `"Kigali city, District Butamwa"', add
label define rw02a_bpl_lbl 0104 `"Kigali city, District Gisozi"', add
label define rw02a_bpl_lbl 0105 `"Kigali city, District Kacyiru"', add
label define rw02a_bpl_lbl 0106 `"Kigali city, District Kanombe"', add
label define rw02a_bpl_lbl 0107 `"Kigali city, District Kicukiro"', add
label define rw02a_bpl_lbl 0108 `"Kigali city, District Gikondo"', add
label define rw02a_bpl_lbl 0199 `"Kigali city, District undetermined"', add
label define rw02a_bpl_lbl 0201 `"Kigali Ngali, District de Umujyi wa kabuga"', add
label define rw02a_bpl_lbl 0202 `"Kigali Ngali, District de Bicumbi"', add
label define rw02a_bpl_lbl 0203 `"Kigali Ngali, District de Gashora"', add
label define rw02a_bpl_lbl 0204 `"Kigali Ngali, District de Ngenda"', add
label define rw02a_bpl_lbl 0205 `"Kigali Ngali, District de Nyamata"', add
label define rw02a_bpl_lbl 0206 `"Kigali Ngali, District de Shyorongi"', add
label define rw02a_bpl_lbl 0207 `"Kigali Ngali, District de Rushashi"', add
label define rw02a_bpl_lbl 0208 `"Kigali Ngali, District de Rulindo"', add
label define rw02a_bpl_lbl 0209 `"Kigali Ngali, District de Buliza"', add
label define rw02a_bpl_lbl 0210 `"Kigali Ngali, District de Gasabo"', add
label define rw02a_bpl_lbl 0299 `"Kigali Ngali, District undetermined"', add
label define rw02a_bpl_lbl 0301 `"Gitarama, District Umujyi wa gitarama"', add
label define rw02a_bpl_lbl 0302 `"Gitarama, District Ruyumba"', add
label define rw02a_bpl_lbl 0303 `"Gitarama, District Ntongwe"', add
label define rw02a_bpl_lbl 0304 `"Gitarama, District Umujyi wa ruhango"', add
label define rw02a_bpl_lbl 0305 `"Gitarama, District Kabagari"', add
label define rw02a_bpl_lbl 0306 `"Gitarama, District Ntenyo"', add
label define rw02a_bpl_lbl 0307 `"Gitarama, District Muhanga"', add
label define rw02a_bpl_lbl 0308 `"Gitarama, District undeterminediza"', add
label define rw02a_bpl_lbl 0309 `"Gitarama, District Kayumbu"', add
label define rw02a_bpl_lbl 0310 `"Gitarama, District Kamonyi"', add
label define rw02a_bpl_lbl 0399 `"Gitarama, District undetermined"', add
label define rw02a_bpl_lbl 0401 `"Butare, District Umujyi wa butare"', add
label define rw02a_bpl_lbl 0402 `"Butare, District Save"', add
label define rw02a_bpl_lbl 0403 `"Butare, District Mugombwa"', add
label define rw02a_bpl_lbl 0404 `"Butare, District Kibingo"', add
label define rw02a_bpl_lbl 0405 `"Butare, District Nyakizu"', add
label define rw02a_bpl_lbl 0406 `"Butare, District Maraba"', add
label define rw02a_bpl_lbl 0407 `"Butare, District Kiruhura"', add
label define rw02a_bpl_lbl 0408 `"Butare, District Umujyi wa nyanza"', add
label define rw02a_bpl_lbl 0409 `"Butare, District Nyamure"', add
label define rw02a_bpl_lbl 0410 `"Butare, District Gikonko"', add
label define rw02a_bpl_lbl 0499 `"Butare, District undetermined"', add
label define rw02a_bpl_lbl 0501 `"Gikongoro, District Umujyi wa gikongoro"', add
label define rw02a_bpl_lbl 0502 `"Gikongoro, District Nyaruguru"', add
label define rw02a_bpl_lbl 0503 `"Gikongoro, District Nshili"', add
label define rw02a_bpl_lbl 0504 `"Gikongoro, District Mudasomwa"', add
label define rw02a_bpl_lbl 0505 `"Gikongoro, District Mushubi"', add
label define rw02a_bpl_lbl 0506 `"Gikongoro, District Kaduha"', add
label define rw02a_bpl_lbl 0507 `"Gikongoro, District Karaba"', add
label define rw02a_bpl_lbl 0599 `"Gikongoro, District undetermined"', add
label define rw02a_bpl_lbl 0601 `"Cyangugu, District Umujyi wa cyangugu"', add
label define rw02a_bpl_lbl 0602 `"Cyangugu, District Impala"', add
label define rw02a_bpl_lbl 0603 `"Cyangugu, District Nyamasheke"', add
label define rw02a_bpl_lbl 0604 `"Cyangugu, District Gatare"', add
label define rw02a_bpl_lbl 0605 `"Cyangugu, District Bukunzi"', add
label define rw02a_bpl_lbl 0606 `"Cyangugu, District Bugarama"', add
label define rw02a_bpl_lbl 0607 `"Cyangugu, District Gashonga"', add
label define rw02a_bpl_lbl 0699 `"Cyangugu, District undetermined"', add
label define rw02a_bpl_lbl 0701 `"Kibuye, District Umujyi wa kibuye"', add
label define rw02a_bpl_lbl 0702 `"Kibuye, District Gisunzu"', add
label define rw02a_bpl_lbl 0703 `"Kibuye, District Rutsiro"', add
label define rw02a_bpl_lbl 0704 `"Kibuye, District Budaha"', add
label define rw02a_bpl_lbl 0705 `"Kibuye, District Itabire"', add
label define rw02a_bpl_lbl 0706 `"Kibuye, District Rusenyi"', add
label define rw02a_bpl_lbl 0799 `"Kibuye, District undetermined"', add
label define rw02a_bpl_lbl 0801 `"Gisenyi, District Umujyi wa gisenyi"', add
label define rw02a_bpl_lbl 0802 `"Gisenyi, District Cyanzarwe"', add
label define rw02a_bpl_lbl 0803 `"Gisenyi, District Mutura"', add
label define rw02a_bpl_lbl 0804 `"Gisenyi, District Gasiza"', add
label define rw02a_bpl_lbl 0805 `"Gisenyi, District Kageyo"', add
label define rw02a_bpl_lbl 0806 `"Gisenyi, District Nyagisagara"', add
label define rw02a_bpl_lbl 0807 `"Gisenyi, District Gaseke"', add
label define rw02a_bpl_lbl 0808 `"Gisenyi, District Kayove"', add
label define rw02a_bpl_lbl 0809 `"Gisenyi, District Kanama"', add
label define rw02a_bpl_lbl 0810 `"Gisenyi, District Nyamyumba"', add
label define rw02a_bpl_lbl 0899 `"Gisenyi, District undetermined"', add
label define rw02a_bpl_lbl 0901 `"Ruhengeri, District Umujyi wa ruhengeri"', add
label define rw02a_bpl_lbl 0902 `"Ruhengeri, District Bugarura"', add
label define rw02a_bpl_lbl 0903 `"Ruhengeri, District Nyarutovu"', add
label define rw02a_bpl_lbl 0904 `"Ruhengeri, District Bukonya"', add
label define rw02a_bpl_lbl 0905 `"Ruhengeri, District Buhoma"', add
label define rw02a_bpl_lbl 0906 `"Ruhengeri, District Mutobo"', add
label define rw02a_bpl_lbl 0907 `"Ruhengeri, District Kinigi"', add
label define rw02a_bpl_lbl 0908 `"Ruhengeri, District Bukamba"', add
label define rw02a_bpl_lbl 0909 `"Ruhengeri, District Butaro"', add
label define rw02a_bpl_lbl 0910 `"Ruhengeri, District Cyeru"', add
label define rw02a_bpl_lbl 0911 `"Ruhengeri, District Nyamugali"', add
label define rw02a_bpl_lbl 0999 `"Ruhengeri, District undetermined"', add
label define rw02a_bpl_lbl 1001 `"Byumba, District Umujyi wa byumba"', add
label define rw02a_bpl_lbl 1002 `"Byumba, District Kisaro"', add
label define rw02a_bpl_lbl 1003 `"Byumba, District Kinihira"', add
label define rw02a_bpl_lbl 1004 `"Byumba, District Bungwe"', add
label define rw02a_bpl_lbl 1005 `"Byumba, District Rushaki"', add
label define rw02a_bpl_lbl 1006 `"Byumba, District Rebero"', add
label define rw02a_bpl_lbl 1007 `"Byumba, District Ngarama"', add
label define rw02a_bpl_lbl 1008 `"Byumba, District Humure"', add
label define rw02a_bpl_lbl 1009 `"Byumba, District Rwamiko"', add
label define rw02a_bpl_lbl 1099 `"Byumba, District undetermined"', add
label define rw02a_bpl_lbl 1101 `"Umutara, District Umujyi w'umutara"', add
label define rw02a_bpl_lbl 1102 `"Umutara, District Bugaragara"', add
label define rw02a_bpl_lbl 1103 `"Umutara, District Kabare"', add
label define rw02a_bpl_lbl 1104 `"Umutara, District Gabiro"', add
label define rw02a_bpl_lbl 1105 `"Umutara, District Rukara"', add
label define rw02a_bpl_lbl 1106 `"Umutara, District Murambi"', add
label define rw02a_bpl_lbl 1107 `"Umutara, District Kahi"', add
label define rw02a_bpl_lbl 1108 `"Umutara, District Muvumba"', add
label define rw02a_bpl_lbl 1199 `"Umutara, District undetermined"', add
label define rw02a_bpl_lbl 1201 `"Kibungo, District Umujyi wa kibungo"', add
label define rw02a_bpl_lbl 1202 `"Kibungo, District Kigarama"', add
label define rw02a_bpl_lbl 1203 `"Kibungo, District Mirenge"', add
label define rw02a_bpl_lbl 1204 `"Kibungo, District Umujyi wa rwamagana"', add
label define rw02a_bpl_lbl 1205 `"Kibungo, District Muhazi"', add
label define rw02a_bpl_lbl 1206 `"Kibungo, District Kabarondo"', add
label define rw02a_bpl_lbl 1207 `"Kibungo, District Cyarubare"', add
label define rw02a_bpl_lbl 1208 `"Kibungo, District Rukira"', add
label define rw02a_bpl_lbl 1209 `"Kibungo, District Nyarubuye"', add
label define rw02a_bpl_lbl 1210 `"Kibungo, District Rusumo"', add
label define rw02a_bpl_lbl 1299 `"Kibungo, District undetermined"', add
label define rw02a_bpl_lbl 1999 `"Rwanda, undetermined Province / District"', add
label define rw02a_bpl_lbl 2001 `"Burundi"', add
label define rw02a_bpl_lbl 2002 `"Congo-Kinshasa"', add
label define rw02a_bpl_lbl 2003 `"Uganda"', add
label define rw02a_bpl_lbl 2004 `"Tanzania"', add
label define rw02a_bpl_lbl 2005 `"Kenya"', add
label define rw02a_bpl_lbl 2006 `"Africa - other country"', add
label define rw02a_bpl_lbl 2007 `"Belgium"', add
label define rw02a_bpl_lbl 2008 `"France"', add
label define rw02a_bpl_lbl 2011 `"Europe - other country"', add
label define rw02a_bpl_lbl 2012 `"India"', add
label define rw02a_bpl_lbl 2015 `"Asia - Other country"', add
label define rw02a_bpl_lbl 2016 `"America -- not specified"', add
label define rw02a_bpl_lbl 2020 `"Oceania - not specified"', add
label define rw02a_bpl_lbl 9997 `"Unknown"', add
label define rw02a_bpl_lbl 9999 `"NIU (not in universe)"', add
label values rw02a_bpl rw02a_bpl_lbl

label define rw02a_resdur_lbl 000 `"Less than 1 year"'
label define rw02a_resdur_lbl 001 `"1 year"', add
label define rw02a_resdur_lbl 002 `"2"', add
label define rw02a_resdur_lbl 003 `"3"', add
label define rw02a_resdur_lbl 004 `"4"', add
label define rw02a_resdur_lbl 005 `"5"', add
label define rw02a_resdur_lbl 006 `"6"', add
label define rw02a_resdur_lbl 007 `"7"', add
label define rw02a_resdur_lbl 008 `"8"', add
label define rw02a_resdur_lbl 009 `"9"', add
label define rw02a_resdur_lbl 010 `"10"', add
label define rw02a_resdur_lbl 011 `"11"', add
label define rw02a_resdur_lbl 012 `"12"', add
label define rw02a_resdur_lbl 013 `"13"', add
label define rw02a_resdur_lbl 014 `"14"', add
label define rw02a_resdur_lbl 015 `"15"', add
label define rw02a_resdur_lbl 016 `"16"', add
label define rw02a_resdur_lbl 017 `"17"', add
label define rw02a_resdur_lbl 018 `"18"', add
label define rw02a_resdur_lbl 019 `"19"', add
label define rw02a_resdur_lbl 020 `"20"', add
label define rw02a_resdur_lbl 021 `"21"', add
label define rw02a_resdur_lbl 022 `"22"', add
label define rw02a_resdur_lbl 023 `"23"', add
label define rw02a_resdur_lbl 024 `"24"', add
label define rw02a_resdur_lbl 025 `"25"', add
label define rw02a_resdur_lbl 026 `"26"', add
label define rw02a_resdur_lbl 027 `"27"', add
label define rw02a_resdur_lbl 028 `"28"', add
label define rw02a_resdur_lbl 029 `"29"', add
label define rw02a_resdur_lbl 030 `"30"', add
label define rw02a_resdur_lbl 031 `"31"', add
label define rw02a_resdur_lbl 032 `"32"', add
label define rw02a_resdur_lbl 033 `"33"', add
label define rw02a_resdur_lbl 034 `"34"', add
label define rw02a_resdur_lbl 035 `"35"', add
label define rw02a_resdur_lbl 036 `"36"', add
label define rw02a_resdur_lbl 037 `"37"', add
label define rw02a_resdur_lbl 038 `"38"', add
label define rw02a_resdur_lbl 039 `"39"', add
label define rw02a_resdur_lbl 040 `"40"', add
label define rw02a_resdur_lbl 041 `"41"', add
label define rw02a_resdur_lbl 042 `"42"', add
label define rw02a_resdur_lbl 043 `"43"', add
label define rw02a_resdur_lbl 044 `"44"', add
label define rw02a_resdur_lbl 045 `"45"', add
label define rw02a_resdur_lbl 046 `"46"', add
label define rw02a_resdur_lbl 047 `"47"', add
label define rw02a_resdur_lbl 048 `"48"', add
label define rw02a_resdur_lbl 049 `"49"', add
label define rw02a_resdur_lbl 050 `"50"', add
label define rw02a_resdur_lbl 051 `"51"', add
label define rw02a_resdur_lbl 052 `"52"', add
label define rw02a_resdur_lbl 053 `"53"', add
label define rw02a_resdur_lbl 054 `"54"', add
label define rw02a_resdur_lbl 055 `"55"', add
label define rw02a_resdur_lbl 056 `"56"', add
label define rw02a_resdur_lbl 057 `"57"', add
label define rw02a_resdur_lbl 058 `"58"', add
label define rw02a_resdur_lbl 059 `"59"', add
label define rw02a_resdur_lbl 060 `"60"', add
label define rw02a_resdur_lbl 061 `"61"', add
label define rw02a_resdur_lbl 062 `"62"', add
label define rw02a_resdur_lbl 063 `"63"', add
label define rw02a_resdur_lbl 064 `"64"', add
label define rw02a_resdur_lbl 065 `"65"', add
label define rw02a_resdur_lbl 066 `"66"', add
label define rw02a_resdur_lbl 067 `"67"', add
label define rw02a_resdur_lbl 068 `"68"', add
label define rw02a_resdur_lbl 069 `"69"', add
label define rw02a_resdur_lbl 070 `"70"', add
label define rw02a_resdur_lbl 071 `"71"', add
label define rw02a_resdur_lbl 072 `"72"', add
label define rw02a_resdur_lbl 073 `"73"', add
label define rw02a_resdur_lbl 074 `"74"', add
label define rw02a_resdur_lbl 075 `"75"', add
label define rw02a_resdur_lbl 076 `"76"', add
label define rw02a_resdur_lbl 077 `"77"', add
label define rw02a_resdur_lbl 078 `"78"', add
label define rw02a_resdur_lbl 079 `"79"', add
label define rw02a_resdur_lbl 080 `"80"', add
label define rw02a_resdur_lbl 081 `"81"', add
label define rw02a_resdur_lbl 082 `"82"', add
label define rw02a_resdur_lbl 083 `"83"', add
label define rw02a_resdur_lbl 084 `"84"', add
label define rw02a_resdur_lbl 085 `"85"', add
label define rw02a_resdur_lbl 086 `"86"', add
label define rw02a_resdur_lbl 087 `"87"', add
label define rw02a_resdur_lbl 088 `"88"', add
label define rw02a_resdur_lbl 089 `"89"', add
label define rw02a_resdur_lbl 090 `"90"', add
label define rw02a_resdur_lbl 091 `"91"', add
label define rw02a_resdur_lbl 092 `"92"', add
label define rw02a_resdur_lbl 093 `"93"', add
label define rw02a_resdur_lbl 094 `"94"', add
label define rw02a_resdur_lbl 095 `"95"', add
label define rw02a_resdur_lbl 096 `"96"', add
label define rw02a_resdur_lbl 097 `"97"', add
label define rw02a_resdur_lbl 990 `"Since birth"', add
label define rw02a_resdur_lbl 998 `"Unknown"', add
label define rw02a_resdur_lbl 999 `"NIU (not in universe)"', add
label values rw02a_resdur rw02a_resdur_lbl

label define rw02a_resprev_lbl 0101 `"Kigali city, District Nyarugenge"'
label define rw02a_resprev_lbl 0102 `"Kigali city, District Nyamirambo"', add
label define rw02a_resprev_lbl 0103 `"Kigali city, District Butamwa"', add
label define rw02a_resprev_lbl 0104 `"Kigali city, District Gisozi"', add
label define rw02a_resprev_lbl 0105 `"Kigali city, District Kacyiru"', add
label define rw02a_resprev_lbl 0106 `"Kigali city, District Kanombe"', add
label define rw02a_resprev_lbl 0107 `"Kigali city, District Kicukiro"', add
label define rw02a_resprev_lbl 0108 `"Kigali city, District Gikondo"', add
label define rw02a_resprev_lbl 0199 `"Kigali city, District undetermined"', add
label define rw02a_resprev_lbl 0201 `"Kigali Ngali, District de Umujyi wa kabuga"', add
label define rw02a_resprev_lbl 0202 `"Kigali Ngali, District de Bicumbi"', add
label define rw02a_resprev_lbl 0203 `"Kigali Ngali, District de Gashora"', add
label define rw02a_resprev_lbl 0204 `"Kigali Ngali, District de Ngenda"', add
label define rw02a_resprev_lbl 0205 `"Kigali Ngali, District de Nyamata"', add
label define rw02a_resprev_lbl 0206 `"Kigali Ngali, District de Shyorongi"', add
label define rw02a_resprev_lbl 0207 `"Kigali Ngali, District de Rushashi"', add
label define rw02a_resprev_lbl 0208 `"Kigali Ngali, District de Rulindo"', add
label define rw02a_resprev_lbl 0209 `"Kigali Ngali, District de Buliza"', add
label define rw02a_resprev_lbl 0210 `"Kigali Ngali, District de Gasabo"', add
label define rw02a_resprev_lbl 0299 `"Kigali Ngali, District undetermined"', add
label define rw02a_resprev_lbl 0301 `"Gitarama, District Umujyi wa gitarama"', add
label define rw02a_resprev_lbl 0302 `"Gitarama, District Ruyumba"', add
label define rw02a_resprev_lbl 0303 `"Gitarama, District Ntongwe"', add
label define rw02a_resprev_lbl 0304 `"Gitarama, District Umujyi wa ruhango"', add
label define rw02a_resprev_lbl 0305 `"Gitarama, District Kabagari"', add
label define rw02a_resprev_lbl 0306 `"Gitarama, District Ntenyo"', add
label define rw02a_resprev_lbl 0307 `"Gitarama, District Muhanga"', add
label define rw02a_resprev_lbl 0308 `"Gitarama, District undeterminediza"', add
label define rw02a_resprev_lbl 0309 `"Gitarama, District Kayumbu"', add
label define rw02a_resprev_lbl 0310 `"Gitarama, District Kamonyi"', add
label define rw02a_resprev_lbl 0399 `"Gitarama, District undetermined"', add
label define rw02a_resprev_lbl 0401 `"Butare, District Umujyi wa butare"', add
label define rw02a_resprev_lbl 0402 `"Butare, District Save"', add
label define rw02a_resprev_lbl 0403 `"Butare, District Mugombwa"', add
label define rw02a_resprev_lbl 0404 `"Butare, District Kibingo"', add
label define rw02a_resprev_lbl 0405 `"Butare, District Nyakizu"', add
label define rw02a_resprev_lbl 0406 `"Butare, District Maraba"', add
label define rw02a_resprev_lbl 0407 `"Butare, District Kiruhura"', add
label define rw02a_resprev_lbl 0408 `"Butare, District Umujyi wa nyanza"', add
label define rw02a_resprev_lbl 0409 `"Butare, District Nyamure"', add
label define rw02a_resprev_lbl 0410 `"Butare, District Gikonko"', add
label define rw02a_resprev_lbl 0499 `"Butare, District undetermined"', add
label define rw02a_resprev_lbl 0501 `"Gikongoro, District Umujyi wa gikongoro"', add
label define rw02a_resprev_lbl 0502 `"Gikongoro, District Nyaruguru"', add
label define rw02a_resprev_lbl 0503 `"Gikongoro, District Nshili"', add
label define rw02a_resprev_lbl 0504 `"Gikongoro, District Mudasomwa"', add
label define rw02a_resprev_lbl 0505 `"Gikongoro, District Mushubi"', add
label define rw02a_resprev_lbl 0506 `"Gikongoro, District Kaduha"', add
label define rw02a_resprev_lbl 0507 `"Gikongoro, District Karaba"', add
label define rw02a_resprev_lbl 0599 `"Gikongoro, District undetermined"', add
label define rw02a_resprev_lbl 0601 `"Cyangugu, District Umujyi wa cyangugu"', add
label define rw02a_resprev_lbl 0602 `"Cyangugu, District Impala"', add
label define rw02a_resprev_lbl 0603 `"Cyangugu, District Nyamasheke"', add
label define rw02a_resprev_lbl 0604 `"Cyangugu, District Gatare"', add
label define rw02a_resprev_lbl 0605 `"Cyangugu, District Bukunzi"', add
label define rw02a_resprev_lbl 0606 `"Cyangugu, District Bugarama"', add
label define rw02a_resprev_lbl 0607 `"Cyangugu, District Gashonga"', add
label define rw02a_resprev_lbl 0699 `"Cyangugu, District undetermined"', add
label define rw02a_resprev_lbl 0701 `"Kibuye, District Umujyi wa kibuye"', add
label define rw02a_resprev_lbl 0702 `"Kibuye, District Gisunzu"', add
label define rw02a_resprev_lbl 0703 `"Kibuye, District Rutsiro"', add
label define rw02a_resprev_lbl 0704 `"Kibuye, District Budaha"', add
label define rw02a_resprev_lbl 0705 `"Kibuye, District Itabire"', add
label define rw02a_resprev_lbl 0706 `"Kibuye, District Rusenyi"', add
label define rw02a_resprev_lbl 0799 `"Kibuye, District undetermined"', add
label define rw02a_resprev_lbl 0801 `"Gisenyi, District Umujyi wa gisenyi"', add
label define rw02a_resprev_lbl 0802 `"Gisenyi, District Cyanzarwe"', add
label define rw02a_resprev_lbl 0803 `"Gisenyi, District Mutura"', add
label define rw02a_resprev_lbl 0804 `"Gisenyi, District Gasiza"', add
label define rw02a_resprev_lbl 0805 `"Gisenyi, District Kageyo"', add
label define rw02a_resprev_lbl 0806 `"Gisenyi, District Nyagisagara"', add
label define rw02a_resprev_lbl 0807 `"Gisenyi, District Gaseke"', add
label define rw02a_resprev_lbl 0808 `"Gisenyi, District Kayove"', add
label define rw02a_resprev_lbl 0809 `"Gisenyi, District Kanama"', add
label define rw02a_resprev_lbl 0810 `"Gisenyi, District Nyamyumba"', add
label define rw02a_resprev_lbl 0899 `"Gisenyi, District undetermined"', add
label define rw02a_resprev_lbl 0901 `"Ruhengeri, District Umujyi wa ruhengeri"', add
label define rw02a_resprev_lbl 0902 `"Ruhengeri, District Bugarura"', add
label define rw02a_resprev_lbl 0903 `"Ruhengeri, District Nyarutovu"', add
label define rw02a_resprev_lbl 0904 `"Ruhengeri, District Bukonya"', add
label define rw02a_resprev_lbl 0905 `"Ruhengeri, District Buhoma"', add
label define rw02a_resprev_lbl 0906 `"Ruhengeri, District Mutobo"', add
label define rw02a_resprev_lbl 0907 `"Ruhengeri, District Kinigi"', add
label define rw02a_resprev_lbl 0908 `"Ruhengeri, District Bukamba"', add
label define rw02a_resprev_lbl 0909 `"Ruhengeri, District Butaro"', add
label define rw02a_resprev_lbl 0910 `"Ruhengeri, District Cyeru"', add
label define rw02a_resprev_lbl 0911 `"Ruhengeri, District Nyamugali"', add
label define rw02a_resprev_lbl 0999 `"Ruhengeri, District undetermined"', add
label define rw02a_resprev_lbl 1001 `"Byumba, District Umujyi wa byumba"', add
label define rw02a_resprev_lbl 1002 `"Byumba, District Kisaro"', add
label define rw02a_resprev_lbl 1003 `"Byumba, District Kinihira"', add
label define rw02a_resprev_lbl 1004 `"Byumba, District Bungwe"', add
label define rw02a_resprev_lbl 1005 `"Byumba, District Rushaki"', add
label define rw02a_resprev_lbl 1006 `"Byumba, District Rebero"', add
label define rw02a_resprev_lbl 1007 `"Byumba, District Ngarama"', add
label define rw02a_resprev_lbl 1008 `"Byumba, District Humure"', add
label define rw02a_resprev_lbl 1009 `"Byumba, District Rwamiko"', add
label define rw02a_resprev_lbl 1099 `"Byumba, District undetermined"', add
label define rw02a_resprev_lbl 1101 `"Umutara, District Umujyi w'umutara"', add
label define rw02a_resprev_lbl 1102 `"Umutara, District Bugaragara"', add
label define rw02a_resprev_lbl 1103 `"Umutara, District Kabare"', add
label define rw02a_resprev_lbl 1104 `"Umutara, District Gabiro"', add
label define rw02a_resprev_lbl 1105 `"Umutara, District Rukara"', add
label define rw02a_resprev_lbl 1106 `"Umutara, District Murambi"', add
label define rw02a_resprev_lbl 1107 `"Umutara, District Kahi"', add
label define rw02a_resprev_lbl 1108 `"Umutara, District Muvumba"', add
label define rw02a_resprev_lbl 1199 `"Umutara, District undetermined"', add
label define rw02a_resprev_lbl 1201 `"Kibungo, District Umujyi wa kibungo"', add
label define rw02a_resprev_lbl 1202 `"Kibungo, District Kigarama"', add
label define rw02a_resprev_lbl 1203 `"Kibungo, District Mirenge"', add
label define rw02a_resprev_lbl 1204 `"Kibungo, District Umujyi wa rwamagana"', add
label define rw02a_resprev_lbl 1205 `"Kibungo, District Muhazi"', add
label define rw02a_resprev_lbl 1206 `"Kibungo, District Kabarondo"', add
label define rw02a_resprev_lbl 1207 `"Kibungo, District Cyarubare"', add
label define rw02a_resprev_lbl 1208 `"Kibungo, District Rukira"', add
label define rw02a_resprev_lbl 1209 `"Kibungo, District Nyarubuye"', add
label define rw02a_resprev_lbl 1210 `"Kibungo, District Rusumo"', add
label define rw02a_resprev_lbl 1299 `"Kibungo, District undetermined"', add
label define rw02a_resprev_lbl 1999 `"Rwanda, undetermined Province / District"', add
label define rw02a_resprev_lbl 2001 `"Burundi"', add
label define rw02a_resprev_lbl 2002 `"Congo-Kinshasa"', add
label define rw02a_resprev_lbl 2003 `"Uganda"', add
label define rw02a_resprev_lbl 2004 `"Tanzania"', add
label define rw02a_resprev_lbl 2005 `"Kenya"', add
label define rw02a_resprev_lbl 2006 `"Africa - other country"', add
label define rw02a_resprev_lbl 2007 `"Belgium"', add
label define rw02a_resprev_lbl 2010 `"Germany"', add
label define rw02a_resprev_lbl 2011 `"Europe - other country"', add
label define rw02a_resprev_lbl 2012 `"India"', add
label define rw02a_resprev_lbl 2015 `"Asia - Other country"', add
label define rw02a_resprev_lbl 2018 `"America -- not specified"', add
label define rw02a_resprev_lbl 2020 `"Oceania - not specified"', add
label define rw02a_resprev_lbl 9997 `"Unknown"', add
label define rw02a_resprev_lbl 9999 `"NIU (not in universe)"', add
label values rw02a_resprev rw02a_resprev_lbl

label define rw02a_lang_lbl 00 `"Mute"'
label define rw02a_lang_lbl 01 `"Kinyarwanda"', add
label define rw02a_lang_lbl 02 `"French"', add
label define rw02a_lang_lbl 03 `"Kinyarwanda and French"', add
label define rw02a_lang_lbl 04 `"Swahili"', add
label define rw02a_lang_lbl 05 `"Kinyarwanda and Swahili"', add
label define rw02a_lang_lbl 06 `"French and Swahili"', add
label define rw02a_lang_lbl 07 `"Kinyarwanda, French, and Swahili"', add
label define rw02a_lang_lbl 08 `"English"', add
label define rw02a_lang_lbl 09 `"Kinyarwanda and English"', add
label define rw02a_lang_lbl 10 `"French and English"', add
label define rw02a_lang_lbl 11 `"Kinyarwanda, French, and English"', add
label define rw02a_lang_lbl 12 `"Swahili and English"', add
label define rw02a_lang_lbl 13 `"Kinyarwanda, Swahili, and English"', add
label define rw02a_lang_lbl 14 `"French, Swahili, and English"', add
label define rw02a_lang_lbl 15 `"Kinyarwanda, French, Swahili, and English"', add
label define rw02a_lang_lbl 16 `"Other languages"', add
label define rw02a_lang_lbl 17 `"Kinyarwanda and others"', add
label define rw02a_lang_lbl 19 `"Kinyarwanda, French, and others"', add
label define rw02a_lang_lbl 20 `"Swahili + others"', add
label define rw02a_lang_lbl 21 `"Kinyarwanda, Swahili, and others"', add
label define rw02a_lang_lbl 22 `"Kinyarwanda, Swahili, and others"', add
label define rw02a_lang_lbl 23 `"Kinyarwanda, French, Swahili, and others"', add
label define rw02a_lang_lbl 24 `"English and others"', add
label define rw02a_lang_lbl 25 `"Kinyarwanda, English, and others"', add
label define rw02a_lang_lbl 26 `"French, English, and others"', add
label define rw02a_lang_lbl 27 `"Kinyarwanda, French, English, and others"', add
label define rw02a_lang_lbl 28 `"Swahili, English, and others"', add
label define rw02a_lang_lbl 29 `"Kinyarwanda, Swahili, English, and others"', add
label define rw02a_lang_lbl 30 `"French, Swahili, English, others"', add
label define rw02a_lang_lbl 31 `"Kinyarwanda, French, Swahili, English, and others"', add
label define rw02a_lang_lbl 98 `"Unknown"', add
label define rw02a_lang_lbl 99 `"NIU (not in universe)"', add
label values rw02a_lang rw02a_lang_lbl

label define rw02a_relig_lbl 01 `"Catholic"'
label define rw02a_relig_lbl 02 `"Protestant"', add
label define rw02a_relig_lbl 03 `"Adventist"', add
label define rw02a_relig_lbl 04 `"Jehovah witness"', add
label define rw02a_relig_lbl 05 `"Other Christian religion"', add
label define rw02a_relig_lbl 06 `"Muslim"', add
label define rw02a_relig_lbl 07 `"Traditional religion / animist"', add
label define rw02a_relig_lbl 08 `"Other religion"', add
label define rw02a_relig_lbl 09 `"No religion"', add
label define rw02a_relig_lbl 98 `"Unknown"', add
label define rw02a_relig_lbl 99 `"NIU (not in universe)"', add
label values rw02a_relig rw02a_relig_lbl

label define rw02a_disab_lbl 01 `"No handicap or disability"'
label define rw02a_disab_lbl 02 `"Blind"', add
label define rw02a_disab_lbl 03 `"Mute / deaf"', add
label define rw02a_disab_lbl 04 `"Disability or handicap in lower limbs"', add
label define rw02a_disab_lbl 05 `"Disability or handicap in upper limbs"', add
label define rw02a_disab_lbl 06 `"Mental deficiency"', add
label define rw02a_disab_lbl 07 `"Trauma"', add
label define rw02a_disab_lbl 08 `"Other handicap or disability"', add
label define rw02a_disab_lbl 98 `"Unknown"', add
label define rw02a_disab_lbl 99 `"NIU (not in universe)"', add
label values rw02a_disab rw02a_disab_lbl

label define rw02a_discause_lbl 1 `"Congenital"'
label define rw02a_discause_lbl 2 `"Disease"', add
label define rw02a_discause_lbl 3 `"Accident"', add
label define rw02a_discause_lbl 4 `"War"', add
label define rw02a_discause_lbl 5 `"Genocide"', add
label define rw02a_discause_lbl 6 `"Anti-personal mine"', add
label define rw02a_discause_lbl 7 `"Other"', add
label define rw02a_discause_lbl 8 `"Unknown"', add
label define rw02a_discause_lbl 9 `"NIU (not in universe)"', add
label values rw02a_discause rw02a_discause_lbl

label define rw02a_parlive_lbl 1 `"Both parents alive"'
label define rw02a_parlive_lbl 2 `"Only mother alive"', add
label define rw02a_parlive_lbl 3 `"Only father alive"', add
label define rw02a_parlive_lbl 4 `"None alive"', add
label define rw02a_parlive_lbl 5 `"Respondent does not know"', add
label define rw02a_parlive_lbl 8 `"Unknown"', add
label define rw02a_parlive_lbl 9 `"NIU (not in universe)"', add
label values rw02a_parlive rw02a_parlive_lbl

label define rw02a_school_lbl 1 `"Ever attended school"'
label define rw02a_school_lbl 2 `"Never attended school"', add
label define rw02a_school_lbl 8 `"Unknown"', add
label define rw02a_school_lbl 9 `"NIU (not in universe)"', add
label values rw02a_school rw02a_school_lbl

label define rw02a_edlev_lbl 11 `"Primary, year 1"'
label define rw02a_edlev_lbl 12 `"Primary, year 2"', add
label define rw02a_edlev_lbl 13 `"Primary, year 3"', add
label define rw02a_edlev_lbl 14 `"Primary, year 4"', add
label define rw02a_edlev_lbl 15 `"Primary, year 5"', add
label define rw02a_edlev_lbl 16 `"Primary, year 6"', add
label define rw02a_edlev_lbl 17 `"Primary, year 7"', add
label define rw02a_edlev_lbl 18 `"Primary, year unknown"', add
label define rw02a_edlev_lbl 21 `"Post primary, year 1"', add
label define rw02a_edlev_lbl 22 `"Post primary, year 2"', add
label define rw02a_edlev_lbl 23 `"Post primary, year 3"', add
label define rw02a_edlev_lbl 31 `"Vocational training, year 1"', add
label define rw02a_edlev_lbl 32 `"Vocational training, year 2"', add
label define rw02a_edlev_lbl 33 `"Vocational training, year 3"', add
label define rw02a_edlev_lbl 34 `"Vocational training, year 4"', add
label define rw02a_edlev_lbl 35 `"Vocational training, year 5"', add
label define rw02a_edlev_lbl 36 `"Vocational training, year 6"', add
label define rw02a_edlev_lbl 37 `"Vocational training, year unknown"', add
label define rw02a_edlev_lbl 41 `"Technical training, year 1"', add
label define rw02a_edlev_lbl 42 `"Technical training, year 2"', add
label define rw02a_edlev_lbl 43 `"Technical training, year 3"', add
label define rw02a_edlev_lbl 44 `"Technical training, year 4"', add
label define rw02a_edlev_lbl 45 `"Technical training, year 5"', add
label define rw02a_edlev_lbl 46 `"Technical training, year 6"', add
label define rw02a_edlev_lbl 47 `"Technical training, year unknown"', add
label define rw02a_edlev_lbl 51 `"General training (secondary school), year 1"', add
label define rw02a_edlev_lbl 52 `"General training (secondary school), year 2"', add
label define rw02a_edlev_lbl 53 `"General training (secondary school), year 3"', add
label define rw02a_edlev_lbl 54 `"General training (secondary school), year 4"', add
label define rw02a_edlev_lbl 55 `"General training (secondary school), year 5"', add
label define rw02a_edlev_lbl 56 `"General training (secondary school), year 6"', add
label define rw02a_edlev_lbl 57 `"General training (secondary school), year unknown"', add
label define rw02a_edlev_lbl 61 `"University, post graduate training, year 1"', add
label define rw02a_edlev_lbl 62 `"University, post graduate training, year 2"', add
label define rw02a_edlev_lbl 63 `"University, post graduate training, year 3"', add
label define rw02a_edlev_lbl 64 `"University, post graduate training, year 4"', add
label define rw02a_edlev_lbl 65 `"University, post graduate training, year 5"', add
label define rw02a_edlev_lbl 66 `"University, post graduate training, year 6"', add
label define rw02a_edlev_lbl 67 `"University, post graduate training, years 7 and 8"', add
label define rw02a_edlev_lbl 69 `"University, post graduate training, year unknown"', add
label define rw02a_edlev_lbl 98 `"Unknown"', add
label define rw02a_edlev_lbl 99 `"NIU (not in universe)"', add
label values rw02a_edlev rw02a_edlev_lbl

label define rw02a_edfield_lbl 01 `"Mathematics"'
label define rw02a_edfield_lbl 04 `"Chemistry"', add
label define rw02a_edfield_lbl 09 `"Informatics / computer sciences"', add
label define rw02a_edfield_lbl 11 `"Civil engineering"', add
label define rw02a_edfield_lbl 12 `"Architecture"', add
label define rw02a_edfield_lbl 13 `"Electricity"', add
label define rw02a_edfield_lbl 14 `"Plumbing"', add
label define rw02a_edfield_lbl 17 `"Mechanics general / car industry"', add
label define rw02a_edfield_lbl 18 `"Carpentry"', add
label define rw02a_edfield_lbl 21 `"Biology"', add
label define rw02a_edfield_lbl 22 `"Medicine"', add
label define rw02a_edfield_lbl 23 `"Nursing sciences"', add
label define rw02a_edfield_lbl 24 `"Public health"', add
label define rw02a_edfield_lbl 26 `"Veterinary sciences"', add
label define rw02a_edfield_lbl 31 `"Rural engineering"', add
label define rw02a_edfield_lbl 34 `"Agronomy / general"', add
label define rw02a_edfield_lbl 35 `"Zootechnics / zoological sciences"', add
label define rw02a_edfield_lbl 36 `"Agriculture / crop production / animal production"', add
label define rw02a_edfield_lbl 41 `"Sociology"', add
label define rw02a_edfield_lbl 42 `"History and anthropology"', add
label define rw02a_edfield_lbl 43 `"Theology"', add
label define rw02a_edfield_lbl 44 `"Journalism and Information technology"', add
label define rw02a_edfield_lbl 45 `"Economics, public finances"', add
label define rw02a_edfield_lbl 46 `"Business management and secretarial work"', add
label define rw02a_edfield_lbl 47 `"Trade and accounting"', add
label define rw02a_edfield_lbl 49 `"Law, administration"', add
label define rw02a_edfield_lbl 51 `"Humanities, languages and latin"', add
label define rw02a_edfield_lbl 54 `"African literature"', add
label define rw02a_edfield_lbl 61 `"Hotel and tourism business"', add
label define rw02a_edfield_lbl 66 `"Other activity branch / sector of economic activity"', add
label define rw02a_edfield_lbl 97 `"Response suppressed"', add
label define rw02a_edfield_lbl 98 `"Unknown"', add
label define rw02a_edfield_lbl 99 `"NIU (not in universe)"', add
label values rw02a_edfield rw02a_edfield_lbl

label define rw02a_degree_lbl 1 `"None"'
label define rw02a_degree_lbl 2 `"School of auxiliary teachers"', add
label define rw02a_degree_lbl 3 `"Final diploma of teacher's school"', add
label define rw02a_degree_lbl 4 `"Diploma of humanities, or equivalent"', add
label define rw02a_degree_lbl 5 `"Baccalaureate or equivalent"', add
label define rw02a_degree_lbl 6 `"Master's, Engineer, Bachelor's of Art, or equivalent."', add
label define rw02a_degree_lbl 7 `"Doctorate"', add
label define rw02a_degree_lbl 8 `"Unknown"', add
label define rw02a_degree_lbl 9 `"NIU (not in universe)"', add
label values rw02a_degree rw02a_degree_lbl

label define rw02a_lit_lbl 1 `"Reading and writing"'
label define rw02a_lit_lbl 2 `"Reading only"', add
label define rw02a_lit_lbl 3 `"None"', add
label define rw02a_lit_lbl 8 `"Unknown"', add
label define rw02a_lit_lbl 9 `"NIU (not in universe)"', add
label values rw02a_lit rw02a_lit_lbl

label define rw02a_empstat_lbl 01 `"Employed"'
label define rw02a_empstat_lbl 02 `"Unemployed"', add
label define rw02a_empstat_lbl 03 `"Looking for first job"', add
label define rw02a_empstat_lbl 04 `"Housewife, person living at home"', add
label define rw02a_empstat_lbl 05 `"Student / pupil"', add
label define rw02a_empstat_lbl 06 `"Retired"', add
label define rw02a_empstat_lbl 07 `"Pensioned / living on one's private income"', add
label define rw02a_empstat_lbl 08 `"No work"', add
label define rw02a_empstat_lbl 98 `"Unknown"', add
label define rw02a_empstat_lbl 99 `"NIU (not in universe)"', add
label values rw02a_empstat rw02a_empstat_lbl

label define rw02a_occ_lbl 101 `"Army forces"'
label define rw02a_occ_lbl 111 `"Member of government and parliament"', add
label define rw02a_occ_lbl 112 `"Public sector, administration / professional"', add
label define rw02a_occ_lbl 113 `"Traditional chief / village head"', add
label define rw02a_occ_lbl 114 `"Directors and higher professionals in specialized institutions"', add
label define rw02a_occ_lbl 121 `"Directors"', add
label define rw02a_occ_lbl 122 `"Professionals, medium level, for production and operations"', add
label define rw02a_occ_lbl 123 `"Other professionals"', add
label define rw02a_occ_lbl 131 `"Business owner and manager"', add
label define rw02a_occ_lbl 211 `"Physicists, chemists and assimilated"', add
label define rw02a_occ_lbl 213 `"Computer specialists"', add
label define rw02a_occ_lbl 221 `"Life sciences specialist"', add
label define rw02a_occ_lbl 222 `"Physicians and assimilated (except nurses and other health professionals)"', add
label define rw02a_occ_lbl 223 `"Nurses and midwives"', add
label define rw02a_occ_lbl 231 `"University professor, and higher education teacher"', add
label define rw02a_occ_lbl 232 `"Secondary education teachers"', add
label define rw02a_occ_lbl 233 `"Primary education and kindergarten teachers"', add
label define rw02a_occ_lbl 235 `"Other teaching specialists"', add
label define rw02a_occ_lbl 241 `"Specialists of administrative tasks and trade in private enterprises"', add
label define rw02a_occ_lbl 242 `"Lawyers"', add
label define rw02a_occ_lbl 244 `"Specialists in social and human sciences"', add
label define rw02a_occ_lbl 245 `"Writers, creative artists and other artists"', add
label define rw02a_occ_lbl 246 `"Religious person, clergyman"', add
label define rw02a_occ_lbl 299 `"Professionals, not specified"', add
label define rw02a_occ_lbl 311 `"Technician of physical and technical sciences"', add
label define rw02a_occ_lbl 313 `"Technicians for optical and electronic devices"', add
label define rw02a_occ_lbl 321 `"Technicians and assimilated workers for health and life sciences"', add
label define rw02a_occ_lbl 322 `"Intermediary occupations for modern medicine (excluding nursing personnel)"', add
label define rw02a_occ_lbl 323 `"Intermediary occupations for nurses and midwives (nursing aid)"', add
label define rw02a_occ_lbl 324 `"Traditional medicine practitioner and traditional healer"', add
label define rw02a_occ_lbl 331 `"Intermediary occupations of primary education"', add
label define rw02a_occ_lbl 334 `"Intermediary occupations of education, other cases"', add
label define rw02a_occ_lbl 341 `"Intermediary occupations of finances and trade"', add
label define rw02a_occ_lbl 344 `"Intermediary occupations of public administration in customs and tax revenue services"', add
label define rw02a_occ_lbl 346 `"Intermediary occupations of social work"', add
label define rw02a_occ_lbl 347 `"Intermediary occupations of creative arts, show business, and sports"', add
label define rw02a_occ_lbl 348 `"Non religious (secular) assistant for cults"', add
label define rw02a_occ_lbl 399 `"Technicians and associated, not specified"', add
label define rw02a_occ_lbl 411 `"Secretary and computer keyboard operator (data entry typist)"', add
label define rw02a_occ_lbl 412 `"Clerks for accounting and financial services"', add
label define rw02a_occ_lbl 413 `"Clerks for procurement and organization of transportation services"', add
label define rw02a_occ_lbl 414 `"Clerks for library, mailing services and assimilated"', add
label define rw02a_occ_lbl 419 `"Other clerks (office work)"', add
label define rw02a_occ_lbl 421 `"Casher, counter clerk and assimilated"', add
label define rw02a_occ_lbl 422 `"Clerks for hotel reception desk and customer information"', add
label define rw02a_occ_lbl 512 `"Intendant (Stewart, registrar) and personnel for restaurant services"', add
label define rw02a_occ_lbl 513 `"Health personnel (nursing aid) and assimilated"', add
label define rw02a_occ_lbl 514 `"Other personnel for direct services to private persons"', add
label define rw02a_occ_lbl 516 `"Personnel for security and protection services"', add
label define rw02a_occ_lbl 521 `"Mannequin and other models"', add
label define rw02a_occ_lbl 522 `"Salespersons and shop demonstrators (commercial products)"', add
label define rw02a_occ_lbl 523 `"Salespersons on stalls and markets"', add
label define rw02a_occ_lbl 611 `"Farmers, and qualified workers for producing cash crops"', add
label define rw02a_occ_lbl 612 `"Cattle rearer, and qualified workers for stockbreeding for markets, and assimilated"', add
label define rw02a_occ_lbl 613 `"Farmers, and qualified workers for polyculture and stockbreeding"', add
label define rw02a_occ_lbl 615 `"Fishers, hunters, and trappers (fur traders)"', add
label define rw02a_occ_lbl 621 `"Subsistence agriculture farmers and specialized workers of subsistence agriculture and fishing"', add
label define rw02a_occ_lbl 711 `"Miners, quarriers, and stone cutters"', add
label define rw02a_occ_lbl 712 `"Workers for construction main work (shell of a building) and assimilated"', add
label define rw02a_occ_lbl 713 `"Workers for finishing touches construction (finishing off) and assimilated"', add
label define rw02a_occ_lbl 714 `"Workers for house painting, house front cleaning, restoration and assimilated"', add
label define rw02a_occ_lbl 721 `"Workers for metal smelting, foundry, welding, metal sheet work, boiler making, metal frame for houses and buildings, and assimilated"', add
label define rw02a_occ_lbl 722 `"Blacksmith, Toolmaker and assimilated"', add
label define rw02a_occ_lbl 723 `"Workers in mechanics, and machine tuning"', add
label define rw02a_occ_lbl 724 `"Workers in mechanics, and electrical and electronic devices tuning"', add
label define rw02a_occ_lbl 731 `"High precision mechanics on metals and similar material"', add
label define rw02a_occ_lbl 732 `"Potters, glass-blower, and assimilated"', add
label define rw02a_occ_lbl 733 `"Undocumented"', add
label define rw02a_occ_lbl 734 `"Artisans and workers in printing industry and assimilated"', add
label define rw02a_occ_lbl 741 `"Artisans and workers in food industry and assimilated"', add
label define rw02a_occ_lbl 742 `"Artisans and workers in wood industry, woodcarving, cabinetmaker and assimilated"', add
label define rw02a_occ_lbl 743 `"Artisans and workers in textile and clothing industry and assimilated"', add
label define rw02a_occ_lbl 744 `"Artisans and workers in leather ware, skin trade and shoes industry and assimilated"', add
label define rw02a_occ_lbl 816 `"Drivers of vehicles / operators of machines of energy product industry and assimilated"', add
label define rw02a_occ_lbl 832 `"Drivers of motor vehicle"', add
label define rw02a_occ_lbl 899 `"Plant and machine operators, not specified"', add
label define rw02a_occ_lbl 911 `"Peddler (stallholder) and assimilated"', add
label define rw02a_occ_lbl 912 `"Shoe shiner and other street casual workers"', add
label define rw02a_occ_lbl 913 `"House worker, and other maids, cleaners, and laundry workers"', add
label define rw02a_occ_lbl 914 `"Service workers for buildings, window cleaners and assimilated"', add
label define rw02a_occ_lbl 915 `"Messengers, porters, house caretakers (apartment buildings), gatekeepers, and assimilated"', add
label define rw02a_occ_lbl 916 `"Garbage collectors (dustbin man), refuse collectors and assimilated"', add
label define rw02a_occ_lbl 921 `"Unskilled laborer of agriculture, fishing, and assimilated"', add
label define rw02a_occ_lbl 931 `"Unskilled laborer of mines, housing construction work, and public work"', add
label define rw02a_occ_lbl 932 `"Unskilled laborer of industry and factories"', add
label define rw02a_occ_lbl 933 `"Unskilled laborer of transport and handling industry"', add
label define rw02a_occ_lbl 997 `"Response suppressed"', add
label define rw02a_occ_lbl 998 `"Unknown"', add
label define rw02a_occ_lbl 999 `"NIU (not in universe)"', add
label values rw02a_occ rw02a_occ_lbl

label define rw02a_classwk_lbl 1 `"Self-employed"'
label define rw02a_classwk_lbl 2 `"Employer"', add
label define rw02a_classwk_lbl 3 `"Full time employee / permanent salary"', add
label define rw02a_classwk_lbl 4 `"Part time employee / part time salary"', add
label define rw02a_classwk_lbl 5 `"Apprentice"', add
label define rw02a_classwk_lbl 6 `"Family worker"', add
label define rw02a_classwk_lbl 7 `"Others"', add
label define rw02a_classwk_lbl 8 `"Unknown"', add
label define rw02a_classwk_lbl 9 `"NIU (not in universe)"', add
label values rw02a_classwk rw02a_classwk_lbl

label define rw02a_ind_lbl 011 `"Agriculture, market gardening, horticulture"'
label define rw02a_ind_lbl 012 `"Cattle breeding / animal farming"', add
label define rw02a_ind_lbl 013 `"Agriculture and animal farming combined"', add
label define rw02a_ind_lbl 014 `"Activities linked to agriculture and animal farming, except veterinary activities"', add
label define rw02a_ind_lbl 015 `"Hunting, trapping, game farming, and related activities"', add
label define rw02a_ind_lbl 020 `"Forestry, silviculture, forest development and related activities"', add
label define rw02a_ind_lbl 050 `"Fishing, fish breeding, fish farming, and related activities"', add
label define rw02a_ind_lbl 101 `"Coal mining, and coal briquette industry"', add
label define rw02a_ind_lbl 132 `"Other non ferrous metal ore mining (other than uranium and thorium)"', add
label define rw02a_ind_lbl 141 `"Quarries of stones, sand, and clay"', add
label define rw02a_ind_lbl 143 `"Mining and quarrying, not specified"', add
label define rw02a_ind_lbl 151 `"Production, transformation and preservation of meat, fish, fruits, vegetables, oils and fats"', add
label define rw02a_ind_lbl 153 `"Transformation of grains, production of starchy products and foods for animals"', add
label define rw02a_ind_lbl 154 `"Production of other food products"', add
label define rw02a_ind_lbl 155 `"Production of beverages"', add
label define rw02a_ind_lbl 172 `"Production of textile products"', add
label define rw02a_ind_lbl 181 `"Production of garment products other than in fur"', add
label define rw02a_ind_lbl 191 `"Dressing and tanning of leather; production of leather ware and travel products"', add
label define rw02a_ind_lbl 192 `"Production of shoes"', add
label define rw02a_ind_lbl 201 `"Wood sawing and planning"', add
label define rw02a_ind_lbl 202 `"Production of artifacts in wood, cork, basketry, and plant fibers"', add
label define rw02a_ind_lbl 222 `"Printing industry, and related activities"', add
label define rw02a_ind_lbl 241 `"Production of chemicals products"', add
label define rw02a_ind_lbl 243 `"Production of synthetic, rubber, or plastic goods"', add
label define rw02a_ind_lbl 269 `"Production of mineral non-ferrous products (not elsewhere classified)"', add
label define rw02a_ind_lbl 271 `"Production of metal and metal products"', add
label define rw02a_ind_lbl 341 `"Production of motor vehicles (cars and trucks)"', add
label define rw02a_ind_lbl 361 `"Production of furniture"', add
label define rw02a_ind_lbl 369 `"Other activity of production of goods, not elsewhere classified"', add
label define rw02a_ind_lbl 401 `"Production, collection, and distribution of electricity"', add
label define rw02a_ind_lbl 410 `"Harnessing, purification and distribution of water"', add
label define rw02a_ind_lbl 451 `"Preparation of construction sites / earth moving or excavating"', add
label define rw02a_ind_lbl 452 `"Construction of buildings, in parts or complete"', add
label define rw02a_ind_lbl 454 `"Finishing work for buildings"', add
label define rw02a_ind_lbl 502 `"Maintenance and repairs for motor vehicles"', add
label define rw02a_ind_lbl 503 `"Shop for spare parts and accessories for motor vehicles"', add
label define rw02a_ind_lbl 504 `"Shop, maintenance and repairs for motorcycles and accessories"', add
label define rw02a_ind_lbl 505 `"Retail business of fuels for motor vehicles"', add
label define rw02a_ind_lbl 512 `"Wholesale business for raw agricultural products, live animals, food products, beverages and tobacco"', add
label define rw02a_ind_lbl 513 `"Wholesale business of consumer goods other than food products"', add
label define rw02a_ind_lbl 515 `"Wholesale business of machines, equipment, and supplies"', add
label define rw02a_ind_lbl 519 `"Wholesale business, other types"', add
label define rw02a_ind_lbl 521 `"Retail business, not specialized"', add
label define rw02a_ind_lbl 522 `"Retail business of food products, beverages and tobacco in specialized shops"', add
label define rw02a_ind_lbl 523 `"Other retail business for beauty products (cosmetics) and dressing products"', add
label define rw02a_ind_lbl 524 `"Retail business, not specialized"', add
label define rw02a_ind_lbl 526 `"Repairs business for personal and household goods and devices"', add
label define rw02a_ind_lbl 551 `"Hotel, camping lodge, and other equipment for tourism (short duration stay)"', add
label define rw02a_ind_lbl 552 `"Restaurants, cafés and canteens (dining halls)"', add
label define rw02a_ind_lbl 601 `"Railways transportation"', add
label define rw02a_ind_lbl 602 `"Other surface transportation"', add
label define rw02a_ind_lbl 621 `"Air transportation"', add
label define rw02a_ind_lbl 623 `"Other transportation"', add
label define rw02a_ind_lbl 630 `"Activities linked and auxiliary to transportation; travel agency activities"', add
label define rw02a_ind_lbl 642 `"Telecommunications"', add
label define rw02a_ind_lbl 651 `"Financial broker"', add
label define rw02a_ind_lbl 659 `"Other financial business (middlemen)"', add
label define rw02a_ind_lbl 660 `"Activities for insurance, retirement funds / pension funds (other than compulsory social security)"', add
label define rw02a_ind_lbl 671 `"Auxiliary activity of financial business (other than insurance and pension funds)"', add
label define rw02a_ind_lbl 701 `"Activities in real estate for private property and renting"', add
label define rw02a_ind_lbl 741 `"Activities as a lawyer, accountant, audit specialist, financial adviser, market studies, sample surveys; consultant for business and management"', add
label define rw02a_ind_lbl 742 `"Activities in architectures, engineering, and other technical activities"', add
label define rw02a_ind_lbl 749 `"Activities in services for private companies, not elsewhere classified"', add
label define rw02a_ind_lbl 751 `"General public administration; administration of public economic and social policies"', add
label define rw02a_ind_lbl 752 `"Public services for the whole community"', add
label define rw02a_ind_lbl 753 `"Activities in compulsory social security"', add
label define rw02a_ind_lbl 801 `"Activities in primary education"', add
label define rw02a_ind_lbl 802 `"Activities in secondary education"', add
label define rw02a_ind_lbl 803 `"Activities in tertiary education (university level)"', add
label define rw02a_ind_lbl 809 `"Activities in continuing education and other type of education"', add
label define rw02a_ind_lbl 851 `"Activities in human health"', add
label define rw02a_ind_lbl 852 `"Activities in animal health / veterinary"', add
label define rw02a_ind_lbl 853 `"Activities in social work"', add
label define rw02a_ind_lbl 900 `"Activities in sewage and garbage disposal; street cleaning and related activities"', add
label define rw02a_ind_lbl 911 `"Activities in economic organizations, business leaders and professional organizations"', add
label define rw02a_ind_lbl 919 `"Other activities in associations"', add
label define rw02a_ind_lbl 921 `"Activities in the movies industry, radio, television, and other show business"', add
label define rw02a_ind_lbl 924 `"Activities in sports and other recreational activities"', add
label define rw02a_ind_lbl 930 `"Other service activities"', add
label define rw02a_ind_lbl 950 `"Households employing servants"', add
label define rw02a_ind_lbl 990 `"International organizations / extraterritorial agency"', add
label define rw02a_ind_lbl 997 `"Response suppressed"', add
label define rw02a_ind_lbl 998 `"Unknown"', add
label define rw02a_ind_lbl 999 `"NIU (not in universe)"', add
label values rw02a_ind rw02a_ind_lbl

label define rw02a_econsect_lbl 1 `"Public"'
label define rw02a_econsect_lbl 2 `"Parastatal"', add
label define rw02a_econsect_lbl 3 `"Non-governmental organization"', add
label define rw02a_econsect_lbl 4 `"Cooperative"', add
label define rw02a_econsect_lbl 5 `"Other private"', add
label define rw02a_econsect_lbl 8 `"Unknown"', add
label define rw02a_econsect_lbl 9 `"NIU (not in universe)"', add
label values rw02a_econsect rw02a_econsect_lbl

label define rw02a_marst_lbl 01 `"Single"'
label define rw02a_marst_lbl 02 `"Free union"', add
label define rw02a_marst_lbl 03 `"Married, monogamy"', add
label define rw02a_marst_lbl 04 `"Married man, polygamy"', add
label define rw02a_marst_lbl 05 `"Married woman, first wife in a polygamous marriage"', add
label define rw02a_marst_lbl 06 `"Married woman, second wife in a polygamous marriage"', add
label define rw02a_marst_lbl 07 `"Married woman, wife in a polygamous marriage of rank 3 or more"', add
label define rw02a_marst_lbl 08 `"Divorced or Separated"', add
label define rw02a_marst_lbl 09 `"Widowed"', add
label define rw02a_marst_lbl 98 `"Unknown"', add
label define rw02a_marst_lbl 99 `"NIU (not in universe)"', add
label values rw02a_marst rw02a_marst_lbl

label define rw02a_chbornm_lbl 00 `"0"'
label define rw02a_chbornm_lbl 01 `"1"', add
label define rw02a_chbornm_lbl 02 `"2"', add
label define rw02a_chbornm_lbl 03 `"3"', add
label define rw02a_chbornm_lbl 04 `"4"', add
label define rw02a_chbornm_lbl 05 `"5"', add
label define rw02a_chbornm_lbl 06 `"6"', add
label define rw02a_chbornm_lbl 07 `"7"', add
label define rw02a_chbornm_lbl 08 `"8"', add
label define rw02a_chbornm_lbl 09 `"9"', add
label define rw02a_chbornm_lbl 10 `"10"', add
label define rw02a_chbornm_lbl 11 `"11"', add
label define rw02a_chbornm_lbl 12 `"12+"', add
label define rw02a_chbornm_lbl 98 `"Unknown"', add
label define rw02a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values rw02a_chbornm rw02a_chbornm_lbl

label define rw02a_chbornf_lbl 00 `"0"'
label define rw02a_chbornf_lbl 01 `"1"', add
label define rw02a_chbornf_lbl 02 `"2"', add
label define rw02a_chbornf_lbl 03 `"3"', add
label define rw02a_chbornf_lbl 04 `"4"', add
label define rw02a_chbornf_lbl 05 `"5"', add
label define rw02a_chbornf_lbl 06 `"6"', add
label define rw02a_chbornf_lbl 07 `"7"', add
label define rw02a_chbornf_lbl 08 `"8"', add
label define rw02a_chbornf_lbl 09 `"9"', add
label define rw02a_chbornf_lbl 10 `"10"', add
label define rw02a_chbornf_lbl 11 `"11"', add
label define rw02a_chbornf_lbl 12 `"12+"', add
label define rw02a_chbornf_lbl 98 `"Unknown"', add
label define rw02a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values rw02a_chbornf rw02a_chbornf_lbl

label define rw02a_chlivem_lbl 00 `"0"'
label define rw02a_chlivem_lbl 01 `"1"', add
label define rw02a_chlivem_lbl 02 `"2"', add
label define rw02a_chlivem_lbl 03 `"3"', add
label define rw02a_chlivem_lbl 04 `"4"', add
label define rw02a_chlivem_lbl 05 `"5"', add
label define rw02a_chlivem_lbl 06 `"6"', add
label define rw02a_chlivem_lbl 07 `"7"', add
label define rw02a_chlivem_lbl 08 `"8"', add
label define rw02a_chlivem_lbl 09 `"9+"', add
label define rw02a_chlivem_lbl 98 `"Unknown"', add
label define rw02a_chlivem_lbl 99 `"NIU (not in universe)"', add
label values rw02a_chlivem rw02a_chlivem_lbl

label define rw02a_chlivef_lbl 00 `"0"'
label define rw02a_chlivef_lbl 01 `"1"', add
label define rw02a_chlivef_lbl 02 `"2"', add
label define rw02a_chlivef_lbl 03 `"3"', add
label define rw02a_chlivef_lbl 04 `"4"', add
label define rw02a_chlivef_lbl 05 `"5"', add
label define rw02a_chlivef_lbl 06 `"6"', add
label define rw02a_chlivef_lbl 07 `"7"', add
label define rw02a_chlivef_lbl 08 `"8"', add
label define rw02a_chlivef_lbl 09 `"9+"', add
label define rw02a_chlivef_lbl 98 `"Unknown"', add
label define rw02a_chlivef_lbl 99 `"NIU (not in universe)"', add
label values rw02a_chlivef rw02a_chlivef_lbl

label define rw02a_chb12m_lbl 0 `"0"'
label define rw02a_chb12m_lbl 1 `"1"', add
label define rw02a_chb12m_lbl 2 `"2"', add
label define rw02a_chb12m_lbl 3 `"3+"', add
label define rw02a_chb12m_lbl 8 `"Unknown"', add
label define rw02a_chb12m_lbl 9 `"NIU (not in universe)"', add
label values rw02a_chb12m rw02a_chb12m_lbl

label define rw02a_chb12f_lbl 0 `"0"'
label define rw02a_chb12f_lbl 1 `"1"', add
label define rw02a_chb12f_lbl 2 `"2"', add
label define rw02a_chb12f_lbl 3 `"3+"', add
label define rw02a_chb12f_lbl 8 `"Unknown"', add
label define rw02a_chb12f_lbl 9 `"NIU (not in universe)"', add
label values rw02a_chb12f rw02a_chb12f_lbl

label define rw02a_chl12m_lbl 0 `"0"'
label define rw02a_chl12m_lbl 1 `"1"', add
label define rw02a_chl12m_lbl 2 `"2"', add
label define rw02a_chl12m_lbl 3 `"3+"', add
label define rw02a_chl12m_lbl 8 `"Unknown"', add
label define rw02a_chl12m_lbl 9 `"NIU (not in universe)"', add
label values rw02a_chl12m rw02a_chl12m_lbl

label define rw02a_chl12f_lbl 0 `"0"'
label define rw02a_chl12f_lbl 1 `"1"', add
label define rw02a_chl12f_lbl 2 `"2"', add
label define rw02a_chl12f_lbl 3 `"3+"', add
label define rw02a_chl12f_lbl 8 `"Unknown"', add
label define rw02a_chl12f_lbl 9 `"NIU (not in universe)"', add
label values rw02a_chl12f rw02a_chl12f_lbl

label define rw02a_visitor_lbl 1 `"Resident"'
label define rw02a_visitor_lbl 2 `"Visitor"', add
label values rw02a_visitor rw02a_visitor_lbl


