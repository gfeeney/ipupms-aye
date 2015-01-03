* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  long    eg06a_dwnum      22-28    ///
  byte    eg06a_pern       29-30    ///
  byte    eg06a_fbig       31-31    ///
  int     eg06a_fbig_nh    32-34    ///
  byte    eg06a_gov        35-36    ///
  byte    eg06a_urban      37-37    ///
  byte    eg06a_pubhous    38-39    ///
  byte    eg06a_males      40-41    ///
  byte    eg06a_females    42-43    ///
  byte    eg06a_members    44-45    ///
  byte    eg06a_dwtype     46-47    ///
  byte    eg06a_ownershp   48-48    ///
  byte    eg06a_watsrc     49-49    ///
  byte    eg06a_watacc     50-50    ///
  byte    eg06a_lighting   51-51    ///
  byte    eg06a_sewage     52-52    ///
  byte    eg06a_sewage     53-53    ///
  byte    eg06a_sewage     54-54    ///
  byte    eg06a_rooms      55-56    ///
  int     eg06a_rent       57-60    ///
  byte    eg06a_kitchen    61-61    ///
  byte    eg06a_bathroom   62-62    ///
  byte    eg06a_bathtoil   63-63    ///
  byte    eg06a_septoil    64-64    ///
  byte    eg06a_propane    65-65    ///
  byte    eg06a_gas        66-66    ///
  byte    eg06a_kerosene   67-67    ///
  byte    eg06a_electric   68-68    ///
  byte    eg06a_othfuel    69-69    ///
  byte    eg06a_auto       70-71    ///
  byte    eg06a_motocyc    72-73    ///
  byte    eg06a_bike       74-75    ///
  byte    eg06a_othtrans   76-77    ///
  byte    eg06a_notrans    78-78    ///
  byte    eg06a_radio      79-80    ///
  byte    eg06a_tv         81-82    ///
  byte    eg06a_video      83-84    ///
  byte    eg06a_satell     85-86    ///
  byte    eg06a_fridge     87-88    ///
  byte    eg06a_freezer    89-90    ///
  byte    eg06a_washernon  91-92    ///
  byte    eg06a_washer     93-94    ///
  byte    eg06a_dishwash   95-96    ///
  byte    eg06a_stove      97-98    ///
  byte    eg06a_watheat    99-100   ///
  byte    eg06a_vacuum     101-102  ///
  byte    eg06a_aircon     103-104  ///
  byte    eg06a_pc         105-106  ///
  byte    eg06a_fan        107-108  ///
  byte    eg06a_internet   109-110  ///
  byte    eg06a_phone      111-112  ///
  byte    eg06a_cell       113-114  ///
  byte    eg06a_noappl     115-115  ///
  int     pernum           116-118  ///
  float   wtper            119-126  ///
  byte    eg06a_pernum     127-128  ///
  byte    eg06a_relate     129-130  ///
  byte    eg06a_age        131-132  ///
  byte    eg06a_sex        133-133  ///
  byte    eg06a_relig      134-134  ///
  byte    eg06a_nationg    135-135  ///
  int     eg06a_nation     136-138  ///
  byte    eg06a_marst      139-139  ///
  byte    eg06a_wives      140-140  ///
  byte    eg06a_edlevel    141-142  ///
  byte    eg06a_school     143-143  ///
  byte    eg06a_dropstag   144-144  ///
  byte    eg06a_dropgrad   145-145  ///
  byte    eg06a_empstat    146-147  ///
  byte    eg06a_estab      148-148  ///
  byte    eg06a_empsect    149-149  ///
  int     eg06a_occ        150-152  ///
  int     eg06a_ind        153-155  ///
  byte    eg06a_disab      156-156  ///
  byte    eg06a_bplgov     157-158  ///
  int     eg06a_bpldist    159-162  ///
  byte    eg06a_bplurb     163-163  ///
  int     eg06a_durres     164-166  ///
  byte    eg06a_prevgov    167-168  ///
  int     eg06a_prevdist   169-172  ///
  byte    eg06a_prevurb    173-173  ///
  byte    eg06a_reasmig    174-174  ///
  byte    eg06a_resurb     175-175  ///
  using `"ipumsi_00068.dat"'

replace wtper           = wtper           / 100

format serial          %10.0f
format wtper           %8.2f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var eg06a_dwnum     `"Dwelling number"'
label var eg06a_pern      `"Number of persons in household"'
label var eg06a_fbig      `"Dwelling created by splitting apart a large dwelling or household"'
label var eg06a_fbig_nh   `"Number of persons in large household before it was split"'
label var eg06a_gov       `"Governorate"'
label var eg06a_urban     `"Urban/rural"'
label var eg06a_pubhous   `"Public housing type"'
label var eg06a_males     `"Number of household members (males)"'
label var eg06a_females   `"Number of household members (females)"'
label var eg06a_members   `"Number of household members (total)"'
label var eg06a_dwtype    `"Dwelling type"'
label var eg06a_ownershp  `"Ownership status"'
label var eg06a_watsrc    `"Source of water"'
label var eg06a_watacc    `"Access to water"'
label var eg06a_lighting  `"Lighting"'
label var eg06a_sewage    `"Sewage"'
label var eg06a_sewage    `"Sewage"'
label var eg06a_sewage    `"Sewage"'
label var eg06a_rooms     `"Number of rooms"'
label var eg06a_rent      `"Monthly rent in Egyptian pounds"'
label var eg06a_kitchen   `"Kitchen"'
label var eg06a_bathroom  `"Separate bathroom"'
label var eg06a_bathtoil  `"Bathroom with toilet"'
label var eg06a_septoil   `"Separate toilet"'
label var eg06a_propane   `"Fuel and energy used: propane"'
label var eg06a_gas       `"Fuel and energy used: natural gas"'
label var eg06a_kerosene  `"Fuel and energy used: kerosene"'
label var eg06a_electric  `"Fuel and energy used: electricity"'
label var eg06a_othfuel   `"Fuel and energy used: other"'
label var eg06a_auto      `"Number of private cars owned"'
label var eg06a_motocyc   `"Number of motorcycles owned"'
label var eg06a_bike      `"Number of bicycles owned"'
label var eg06a_othtrans  `"Number of other means of transportation owned"'
label var eg06a_notrans   `"No means of transportation"'
label var eg06a_radio     `"Number of radios"'
label var eg06a_tv        `"Number of televisions"'
label var eg06a_video     `"Number of video players"'
label var eg06a_satell    `"Number of satellite dishes"'
label var eg06a_fridge    `"Number of refrigerators"'
label var eg06a_freezer   `"Number of deep freezers"'
label var eg06a_washernon `"Number of non-automatic washing machines"'
label var eg06a_washer    `"Number of automatic washing machines"'
label var eg06a_dishwash  `"Number of dishwashers"'
label var eg06a_stove     `"Number of stoves"'
label var eg06a_watheat   `"Number of water heaters"'
label var eg06a_vacuum    `"Number of vacuum cleaners"'
label var eg06a_aircon    `"Number of air conditioners"'
label var eg06a_pc        `"Number of computers"'
label var eg06a_fan       `"Number of fans"'
label var eg06a_internet  `"Number of internet connections"'
label var eg06a_phone     `"Number of land-line phones"'
label var eg06a_cell      `"Number of cellular phones"'
label var eg06a_noappl    `"No household appliances"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var eg06a_pernum    `"Person number (within household)"'
label var eg06a_relate    `"Relationship to household head"'
label var eg06a_age       `"Age"'
label var eg06a_sex       `"Sex"'
label var eg06a_relig     `"Religion"'
label var eg06a_nationg   `"Nationality"'
label var eg06a_nation    `"Nationality in detail"'
label var eg06a_marst     `"Marital status"'
label var eg06a_wives     `"Number of wives"'
label var eg06a_edlevel   `"Educational level (main code)"'
label var eg06a_school    `"School enrollment"'
label var eg06a_dropstag  `"School drop out (stage)"'
label var eg06a_dropgrad  `"School drop out (grade)"'
label var eg06a_empstat   `"Employment status"'
label var eg06a_estab     `"Place of work"'
label var eg06a_empsect   `"Sector"'
label var eg06a_occ       `"Primary occupation, 3-digit"'
label var eg06a_ind       `"Industry, 3-digit"'
label var eg06a_disab     `"Disability status"'
label var eg06a_bplgov    `"Governorate of birth"'
label var eg06a_bpldist   `"District of birth"'
label var eg06a_bplurb    `"Place of birth: urban/rural"'
label var eg06a_durres    `"Duration of stay at place of residence, in years"'
label var eg06a_prevgov   `"Previous governorate of residence"'
label var eg06a_prevdist  `"Previous district of residence"'
label var eg06a_prevurb   `"Previous place of residence: urban-rural"'
label var eg06a_reasmig   `"Reason of changing place of residence"'
label var eg06a_resurb    `"Urban/ rural status of residence for guests and/or visitors"'

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

label define eg06a_pern_lbl 01 `"1"'
label define eg06a_pern_lbl 02 `"2"', add
label define eg06a_pern_lbl 03 `"3"', add
label define eg06a_pern_lbl 04 `"4"', add
label define eg06a_pern_lbl 05 `"5"', add
label define eg06a_pern_lbl 06 `"6"', add
label define eg06a_pern_lbl 07 `"7"', add
label define eg06a_pern_lbl 08 `"8"', add
label define eg06a_pern_lbl 09 `"9"', add
label define eg06a_pern_lbl 10 `"10"', add
label define eg06a_pern_lbl 11 `"11"', add
label define eg06a_pern_lbl 12 `"12"', add
label define eg06a_pern_lbl 13 `"13"', add
label define eg06a_pern_lbl 14 `"14"', add
label define eg06a_pern_lbl 15 `"15"', add
label define eg06a_pern_lbl 16 `"16"', add
label define eg06a_pern_lbl 17 `"17"', add
label define eg06a_pern_lbl 18 `"18"', add
label define eg06a_pern_lbl 19 `"19"', add
label define eg06a_pern_lbl 20 `"20"', add
label define eg06a_pern_lbl 21 `"21"', add
label define eg06a_pern_lbl 22 `"22"', add
label define eg06a_pern_lbl 23 `"23"', add
label define eg06a_pern_lbl 24 `"24"', add
label define eg06a_pern_lbl 25 `"25"', add
label define eg06a_pern_lbl 26 `"26"', add
label define eg06a_pern_lbl 27 `"27"', add
label define eg06a_pern_lbl 28 `"28"', add
label define eg06a_pern_lbl 29 `"29"', add
label define eg06a_pern_lbl 30 `"30"', add
label values eg06a_pern eg06a_pern_lbl

label define eg06a_fbig_lbl 0 `"No problem"'
label define eg06a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define eg06a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values eg06a_fbig eg06a_fbig_lbl

label define eg06a_fbig_nh_lbl 000 `"Not split"'
label define eg06a_fbig_nh_lbl 031 `"31"', add
label define eg06a_fbig_nh_lbl 032 `"32"', add
label define eg06a_fbig_nh_lbl 033 `"33"', add
label define eg06a_fbig_nh_lbl 034 `"34"', add
label define eg06a_fbig_nh_lbl 035 `"35"', add
label define eg06a_fbig_nh_lbl 037 `"37"', add
label define eg06a_fbig_nh_lbl 039 `"39"', add
label define eg06a_fbig_nh_lbl 040 `"40"', add
label define eg06a_fbig_nh_lbl 041 `"41"', add
label define eg06a_fbig_nh_lbl 044 `"44"', add
label define eg06a_fbig_nh_lbl 045 `"45"', add
label define eg06a_fbig_nh_lbl 047 `"47"', add
label define eg06a_fbig_nh_lbl 049 `"49"', add
label define eg06a_fbig_nh_lbl 050 `"50"', add
label define eg06a_fbig_nh_lbl 054 `"54"', add
label define eg06a_fbig_nh_lbl 060 `"60"', add
label define eg06a_fbig_nh_lbl 061 `"61"', add
label define eg06a_fbig_nh_lbl 062 `"62"', add
label define eg06a_fbig_nh_lbl 064 `"64"', add
label define eg06a_fbig_nh_lbl 066 `"66"', add
label define eg06a_fbig_nh_lbl 069 `"69"', add
label define eg06a_fbig_nh_lbl 072 `"72"', add
label define eg06a_fbig_nh_lbl 074 `"74"', add
label define eg06a_fbig_nh_lbl 077 `"77"', add
label define eg06a_fbig_nh_lbl 078 `"78"', add
label define eg06a_fbig_nh_lbl 079 `"79"', add
label define eg06a_fbig_nh_lbl 080 `"80"', add
label define eg06a_fbig_nh_lbl 082 `"82"', add
label define eg06a_fbig_nh_lbl 086 `"86"', add
label define eg06a_fbig_nh_lbl 087 `"87"', add
label define eg06a_fbig_nh_lbl 088 `"88"', add
label define eg06a_fbig_nh_lbl 089 `"89"', add
label define eg06a_fbig_nh_lbl 090 `"90"', add
label define eg06a_fbig_nh_lbl 091 `"91"', add
label define eg06a_fbig_nh_lbl 098 `"98"', add
label define eg06a_fbig_nh_lbl 099 `"99"', add
label define eg06a_fbig_nh_lbl 100 `"100"', add
label values eg06a_fbig_nh eg06a_fbig_nh_lbl

label define eg06a_gov_lbl 01 `"Cairo"'
label define eg06a_gov_lbl 02 `"Alexandria"', add
label define eg06a_gov_lbl 03 `"Port Said"', add
label define eg06a_gov_lbl 04 `"Suez"', add
label define eg06a_gov_lbl 05 `"Helwan"', add
label define eg06a_gov_lbl 06 `"6th of October City"', add
label define eg06a_gov_lbl 11 `"Damietta"', add
label define eg06a_gov_lbl 12 `"Dakahlia"', add
label define eg06a_gov_lbl 13 `"Sharkia"', add
label define eg06a_gov_lbl 14 `"Kalyobia"', add
label define eg06a_gov_lbl 15 `"Kafr El Sheikh"', add
label define eg06a_gov_lbl 16 `"Gharbia"', add
label define eg06a_gov_lbl 17 `"Menoufia"', add
label define eg06a_gov_lbl 18 `"Behera"', add
label define eg06a_gov_lbl 19 `"Ismailia"', add
label define eg06a_gov_lbl 21 `"Giza"', add
label define eg06a_gov_lbl 22 `"Beni Suef"', add
label define eg06a_gov_lbl 23 `"Fayoum"', add
label define eg06a_gov_lbl 24 `"Menia"', add
label define eg06a_gov_lbl 25 `"Asyout"', add
label define eg06a_gov_lbl 26 `"Suhag"', add
label define eg06a_gov_lbl 27 `"Qena"', add
label define eg06a_gov_lbl 28 `"Aswan"', add
label define eg06a_gov_lbl 29 `"Luxor"', add
label define eg06a_gov_lbl 31 `"Red Sea"', add
label define eg06a_gov_lbl 32 `"New Valley"', add
label define eg06a_gov_lbl 33 `"Matroh"', add
label define eg06a_gov_lbl 34 `"North Sinai"', add
label define eg06a_gov_lbl 35 `"South Sinai"', add
label values eg06a_gov eg06a_gov_lbl

label define eg06a_urban_lbl 1 `"Urban"'
label define eg06a_urban_lbl 2 `"Rural"', add
label values eg06a_urban eg06a_urban_lbl

label define eg06a_pubhous_lbl 01 `"Hospital"'
label define eg06a_pubhous_lbl 02 `"Hotel (with touristic grade)"', add
label define eg06a_pubhous_lbl 03 `"Lodge / inn / motel"', add
label define eg06a_pubhous_lbl 04 `"Guest house"', add
label define eg06a_pubhous_lbl 05 `"Prison"', add
label define eg06a_pubhous_lbl 06 `"Dormitory / university housing / hostel"', add
label define eg06a_pubhous_lbl 07 `"Eldery house / senior citizens house"', add
label define eg06a_pubhous_lbl 08 `"Orphanage"', add
label define eg06a_pubhous_lbl 09 `"Other"', add
label define eg06a_pubhous_lbl 99 `"NIU (not in universe)"', add
label values eg06a_pubhous eg06a_pubhous_lbl

label define eg06a_males_lbl 00 `"0"'
label define eg06a_males_lbl 01 `"1"', add
label define eg06a_males_lbl 02 `"2"', add
label define eg06a_males_lbl 03 `"3"', add
label define eg06a_males_lbl 04 `"4"', add
label define eg06a_males_lbl 05 `"5"', add
label define eg06a_males_lbl 06 `"6"', add
label define eg06a_males_lbl 07 `"7"', add
label define eg06a_males_lbl 08 `"8"', add
label define eg06a_males_lbl 09 `"9"', add
label define eg06a_males_lbl 10 `"10"', add
label define eg06a_males_lbl 11 `"11"', add
label define eg06a_males_lbl 12 `"12"', add
label define eg06a_males_lbl 13 `"13"', add
label define eg06a_males_lbl 14 `"14"', add
label define eg06a_males_lbl 15 `"15+"', add
label define eg06a_males_lbl 98 `"Unknown"', add
label define eg06a_males_lbl 99 `"NIU (not in universe)"', add
label values eg06a_males eg06a_males_lbl

label define eg06a_females_lbl 00 `"0"'
label define eg06a_females_lbl 01 `"1"', add
label define eg06a_females_lbl 02 `"2"', add
label define eg06a_females_lbl 03 `"3"', add
label define eg06a_females_lbl 04 `"4"', add
label define eg06a_females_lbl 05 `"5"', add
label define eg06a_females_lbl 06 `"6"', add
label define eg06a_females_lbl 07 `"7"', add
label define eg06a_females_lbl 08 `"8"', add
label define eg06a_females_lbl 09 `"9"', add
label define eg06a_females_lbl 10 `"10"', add
label define eg06a_females_lbl 11 `"11"', add
label define eg06a_females_lbl 12 `"12"', add
label define eg06a_females_lbl 13 `"13+"', add
label define eg06a_females_lbl 98 `"Unknown"', add
label define eg06a_females_lbl 99 `"NIU (not in universe)"', add
label values eg06a_females eg06a_females_lbl

label define eg06a_members_lbl 01 `"1"'
label define eg06a_members_lbl 02 `"2"', add
label define eg06a_members_lbl 03 `"3"', add
label define eg06a_members_lbl 04 `"4"', add
label define eg06a_members_lbl 05 `"5"', add
label define eg06a_members_lbl 06 `"6"', add
label define eg06a_members_lbl 07 `"7"', add
label define eg06a_members_lbl 08 `"8"', add
label define eg06a_members_lbl 09 `"9"', add
label define eg06a_members_lbl 10 `"10"', add
label define eg06a_members_lbl 11 `"11"', add
label define eg06a_members_lbl 12 `"12"', add
label define eg06a_members_lbl 13 `"13"', add
label define eg06a_members_lbl 14 `"14"', add
label define eg06a_members_lbl 15 `"15"', add
label define eg06a_members_lbl 16 `"16"', add
label define eg06a_members_lbl 17 `"17"', add
label define eg06a_members_lbl 18 `"18"', add
label define eg06a_members_lbl 19 `"19"', add
label define eg06a_members_lbl 20 `"20+"', add
label define eg06a_members_lbl 98 `"Unknown"', add
label define eg06a_members_lbl 99 `"NIU (not in universe)"', add
label values eg06a_members eg06a_members_lbl

label define eg06a_dwtype_lbl 01 `"Apartment"'
label define eg06a_dwtype_lbl 02 `"More than one apartment"', add
label define eg06a_dwtype_lbl 03 `"Villa or whole house"', add
label define eg06a_dwtype_lbl 04 `"Whole rural house"', add
label define eg06a_dwtype_lbl 05 `"One or more rooms in residential unit"', add
label define eg06a_dwtype_lbl 06 `"Free standing room"', add
label define eg06a_dwtype_lbl 07 `"Hut or tent"', add
label define eg06a_dwtype_lbl 08 `"Cemetery"', add
label define eg06a_dwtype_lbl 09 `"Other"', add
label define eg06a_dwtype_lbl 99 `"NIU (not in universe)"', add
label values eg06a_dwtype eg06a_dwtype_lbl

label define eg06a_ownershp_lbl 1 `"Rent (old law)"'
label define eg06a_ownershp_lbl 2 `"Rent (new law)"', add
label define eg06a_ownershp_lbl 3 `"Furnished rent"', add
label define eg06a_ownershp_lbl 4 `"Owned, totally paid for"', add
label define eg06a_ownershp_lbl 5 `"Owned, paying installments"', add
label define eg06a_ownershp_lbl 6 `"Gift"', add
label define eg06a_ownershp_lbl 7 `"Fringe benefit"', add
label define eg06a_ownershp_lbl 8 `"Others"', add
label define eg06a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values eg06a_ownershp eg06a_ownershp_lbl

label define eg06a_watsrc_lbl 1 `"Public network"'
label define eg06a_watsrc_lbl 2 `"Pump"', add
label define eg06a_watsrc_lbl 3 `"Wells"', add
label define eg06a_watsrc_lbl 4 `"Other"', add
label define eg06a_watsrc_lbl 9 `"NIU (not in universe)"', add
label values eg06a_watsrc eg06a_watsrc_lbl

label define eg06a_watacc_lbl 1 `"Tap inside the residential unit"'
label define eg06a_watacc_lbl 2 `"Tap inside the building"', add
label define eg06a_watacc_lbl 3 `"No connection to the facility"', add
label define eg06a_watacc_lbl 9 `"NIU (not in universe)"', add
label values eg06a_watacc eg06a_watacc_lbl

label define eg06a_lighting_lbl 1 `"Electricty (public network)"'
label define eg06a_lighting_lbl 2 `"Kerosene"', add
label define eg06a_lighting_lbl 3 `"Gasoline"', add
label define eg06a_lighting_lbl 4 `"Other"', add
label define eg06a_lighting_lbl 9 `"NIU (not in universe)"', add
label values eg06a_lighting eg06a_lighting_lbl

label define eg06a_sewage_lbl 1 `"Connected to public network"'
label define eg06a_sewage_lbl 2 `"Private network"', add
label define eg06a_sewage_lbl 3 `"Cesspit"', add
label define eg06a_sewage_lbl 4 `"Not connected"', add
label define eg06a_sewage_lbl 9 `"NIU (not in universe)"', add
label values eg06a_sewage eg06a_sewage_lbl

label define eg06a_sewage_lbl 1 `"Connected to public network"'
label define eg06a_sewage_lbl 2 `"Private network"', add
label define eg06a_sewage_lbl 3 `"Cesspit"', add
label define eg06a_sewage_lbl 4 `"Not connected"', add
label define eg06a_sewage_lbl 9 `"NIU (not in universe)"', add
label values eg06a_sewage eg06a_sewage_lbl

label define eg06a_sewage_lbl 1 `"Connected to public network"'
label define eg06a_sewage_lbl 2 `"Private network"', add
label define eg06a_sewage_lbl 3 `"Cesspit"', add
label define eg06a_sewage_lbl 4 `"Not connected"', add
label define eg06a_sewage_lbl 9 `"NIU (not in universe)"', add
label values eg06a_sewage eg06a_sewage_lbl

label define eg06a_rooms_lbl 01 `"1"'
label define eg06a_rooms_lbl 02 `"2"', add
label define eg06a_rooms_lbl 03 `"3"', add
label define eg06a_rooms_lbl 04 `"4"', add
label define eg06a_rooms_lbl 05 `"5"', add
label define eg06a_rooms_lbl 06 `"6"', add
label define eg06a_rooms_lbl 07 `"7"', add
label define eg06a_rooms_lbl 08 `"8"', add
label define eg06a_rooms_lbl 09 `"9"', add
label define eg06a_rooms_lbl 10 `"10"', add
label define eg06a_rooms_lbl 11 `"11"', add
label define eg06a_rooms_lbl 12 `"12"', add
label define eg06a_rooms_lbl 13 `"13"', add
label define eg06a_rooms_lbl 14 `"14"', add
label define eg06a_rooms_lbl 15 `"15+"', add
label define eg06a_rooms_lbl 99 `"NIU (not in universe)"', add
label values eg06a_rooms eg06a_rooms_lbl

label define eg06a_rent_lbl 0000 `"No rent"'
label define eg06a_rent_lbl 9999 `"NIU (not in universe)"', add
label values eg06a_rent eg06a_rent_lbl

label define eg06a_kitchen_lbl 1 `"Private"'
label define eg06a_kitchen_lbl 2 `"Shared"', add
label define eg06a_kitchen_lbl 3 `"Not available"', add
label define eg06a_kitchen_lbl 9 `"NIU (not in universe)"', add
label values eg06a_kitchen eg06a_kitchen_lbl

label define eg06a_bathroom_lbl 1 `"Private"'
label define eg06a_bathroom_lbl 2 `"Shared"', add
label define eg06a_bathroom_lbl 3 `"Not available"', add
label define eg06a_bathroom_lbl 9 `"NIU (not in universe)"', add
label values eg06a_bathroom eg06a_bathroom_lbl

label define eg06a_bathtoil_lbl 1 `"Private"'
label define eg06a_bathtoil_lbl 2 `"Shared"', add
label define eg06a_bathtoil_lbl 3 `"Not available"', add
label define eg06a_bathtoil_lbl 9 `"NIU (not in universe)"', add
label values eg06a_bathtoil eg06a_bathtoil_lbl

label define eg06a_septoil_lbl 1 `"Private"'
label define eg06a_septoil_lbl 2 `"Shared"', add
label define eg06a_septoil_lbl 3 `"Not available"', add
label define eg06a_septoil_lbl 9 `"NIU (not in universe)"', add
label values eg06a_septoil eg06a_septoil_lbl

label define eg06a_propane_lbl 1 `"Yes"'
label define eg06a_propane_lbl 2 `"No"', add
label define eg06a_propane_lbl 8 `"Unknown"', add
label define eg06a_propane_lbl 9 `"NIU (not in universe)"', add
label values eg06a_propane eg06a_propane_lbl

label define eg06a_gas_lbl 1 `"Yes"'
label define eg06a_gas_lbl 2 `"No"', add
label define eg06a_gas_lbl 9 `"NIU (not in universe)"', add
label values eg06a_gas eg06a_gas_lbl

label define eg06a_kerosene_lbl 1 `"Yes"'
label define eg06a_kerosene_lbl 2 `"No"', add
label define eg06a_kerosene_lbl 8 `"Unknown"', add
label define eg06a_kerosene_lbl 9 `"NIU (not in universe)"', add
label values eg06a_kerosene eg06a_kerosene_lbl

label define eg06a_electric_lbl 1 `"Yes"'
label define eg06a_electric_lbl 2 `"No"', add
label define eg06a_electric_lbl 8 `"Unknown"', add
label define eg06a_electric_lbl 9 `"NIU (not in universe)"', add
label values eg06a_electric eg06a_electric_lbl

label define eg06a_othfuel_lbl 1 `"Yes"'
label define eg06a_othfuel_lbl 2 `"No"', add
label define eg06a_othfuel_lbl 9 `"NIU (not in universe)"', add
label values eg06a_othfuel eg06a_othfuel_lbl

label define eg06a_auto_lbl 00 `"0"'
label define eg06a_auto_lbl 01 `"1"', add
label define eg06a_auto_lbl 02 `"2"', add
label define eg06a_auto_lbl 03 `"3"', add
label define eg06a_auto_lbl 04 `"4"', add
label define eg06a_auto_lbl 05 `"5+"', add
label define eg06a_auto_lbl 98 `"Unknown"', add
label define eg06a_auto_lbl 99 `"NIU (not in universe)"', add
label values eg06a_auto eg06a_auto_lbl

label define eg06a_motocyc_lbl 00 `"0"'
label define eg06a_motocyc_lbl 01 `"1"', add
label define eg06a_motocyc_lbl 02 `"2"', add
label define eg06a_motocyc_lbl 03 `"3"', add
label define eg06a_motocyc_lbl 04 `"4"', add
label define eg06a_motocyc_lbl 05 `"5+"', add
label define eg06a_motocyc_lbl 98 `"Unknown"', add
label define eg06a_motocyc_lbl 99 `"NIU (not in universe)"', add
label values eg06a_motocyc eg06a_motocyc_lbl

label define eg06a_bike_lbl 00 `"0"'
label define eg06a_bike_lbl 01 `"1"', add
label define eg06a_bike_lbl 02 `"2"', add
label define eg06a_bike_lbl 03 `"3"', add
label define eg06a_bike_lbl 04 `"4"', add
label define eg06a_bike_lbl 05 `"5+"', add
label define eg06a_bike_lbl 98 `"Unknown"', add
label define eg06a_bike_lbl 99 `"NIU (not in universe)"', add
label values eg06a_bike eg06a_bike_lbl

label define eg06a_othtrans_lbl 00 `"0"'
label define eg06a_othtrans_lbl 01 `"1"', add
label define eg06a_othtrans_lbl 02 `"2"', add
label define eg06a_othtrans_lbl 03 `"3"', add
label define eg06a_othtrans_lbl 04 `"4"', add
label define eg06a_othtrans_lbl 05 `"5+"', add
label define eg06a_othtrans_lbl 98 `"Unknown"', add
label define eg06a_othtrans_lbl 99 `"NIU (not in universe)"', add
label values eg06a_othtrans eg06a_othtrans_lbl

label define eg06a_notrans_lbl 1 `"Yes, has no means of transportation"'
label define eg06a_notrans_lbl 2 `"No, has means of transportation"', add
label define eg06a_notrans_lbl 8 `"Unknown"', add
label define eg06a_notrans_lbl 9 `"NIU (not in universe)"', add
label values eg06a_notrans eg06a_notrans_lbl

label define eg06a_radio_lbl 00 `"0"'
label define eg06a_radio_lbl 01 `"1"', add
label define eg06a_radio_lbl 02 `"2"', add
label define eg06a_radio_lbl 03 `"3"', add
label define eg06a_radio_lbl 04 `"4"', add
label define eg06a_radio_lbl 05 `"5"', add
label define eg06a_radio_lbl 06 `"6"', add
label define eg06a_radio_lbl 07 `"7"', add
label define eg06a_radio_lbl 08 `"8"', add
label define eg06a_radio_lbl 09 `"9"', add
label define eg06a_radio_lbl 98 `"Unknown"', add
label define eg06a_radio_lbl 99 `"NIU (not in universe)"', add
label values eg06a_radio eg06a_radio_lbl

label define eg06a_tv_lbl 00 `"0"'
label define eg06a_tv_lbl 01 `"1"', add
label define eg06a_tv_lbl 02 `"2"', add
label define eg06a_tv_lbl 03 `"3"', add
label define eg06a_tv_lbl 04 `"4"', add
label define eg06a_tv_lbl 05 `"5"', add
label define eg06a_tv_lbl 06 `"6"', add
label define eg06a_tv_lbl 07 `"7"', add
label define eg06a_tv_lbl 08 `"8"', add
label define eg06a_tv_lbl 09 `"9"', add
label define eg06a_tv_lbl 98 `"Unknown"', add
label define eg06a_tv_lbl 99 `"NIU (not in universe)"', add
label values eg06a_tv eg06a_tv_lbl

label define eg06a_video_lbl 00 `"0"'
label define eg06a_video_lbl 01 `"1"', add
label define eg06a_video_lbl 02 `"2"', add
label define eg06a_video_lbl 03 `"3"', add
label define eg06a_video_lbl 04 `"4"', add
label define eg06a_video_lbl 05 `"5+"', add
label define eg06a_video_lbl 98 `"Unknown"', add
label define eg06a_video_lbl 99 `"NIU (not in universe)"', add
label values eg06a_video eg06a_video_lbl

label define eg06a_satell_lbl 00 `"0"'
label define eg06a_satell_lbl 01 `"1"', add
label define eg06a_satell_lbl 02 `"2"', add
label define eg06a_satell_lbl 03 `"3"', add
label define eg06a_satell_lbl 04 `"4"', add
label define eg06a_satell_lbl 05 `"5"', add
label define eg06a_satell_lbl 06 `"6+"', add
label define eg06a_satell_lbl 98 `"Unknown"', add
label define eg06a_satell_lbl 99 `"NIU (not in universe)"', add
label values eg06a_satell eg06a_satell_lbl

label define eg06a_fridge_lbl 00 `"0"'
label define eg06a_fridge_lbl 01 `"1"', add
label define eg06a_fridge_lbl 02 `"2"', add
label define eg06a_fridge_lbl 03 `"3"', add
label define eg06a_fridge_lbl 04 `"4"', add
label define eg06a_fridge_lbl 05 `"5"', add
label define eg06a_fridge_lbl 06 `"6"', add
label define eg06a_fridge_lbl 07 `"7"', add
label define eg06a_fridge_lbl 08 `"8"', add
label define eg06a_fridge_lbl 09 `"9"', add
label define eg06a_fridge_lbl 98 `"Unknown"', add
label define eg06a_fridge_lbl 99 `"NIU (not in universe)"', add
label values eg06a_fridge eg06a_fridge_lbl

label define eg06a_freezer_lbl 00 `"0"'
label define eg06a_freezer_lbl 01 `"1"', add
label define eg06a_freezer_lbl 02 `"2"', add
label define eg06a_freezer_lbl 03 `"3"', add
label define eg06a_freezer_lbl 04 `"4"', add
label define eg06a_freezer_lbl 05 `"5+"', add
label define eg06a_freezer_lbl 98 `"Unknown"', add
label define eg06a_freezer_lbl 99 `"NIU (not in universe)"', add
label values eg06a_freezer eg06a_freezer_lbl

label define eg06a_washernon_lbl 00 `"0"'
label define eg06a_washernon_lbl 01 `"1"', add
label define eg06a_washernon_lbl 02 `"2"', add
label define eg06a_washernon_lbl 03 `"3"', add
label define eg06a_washernon_lbl 04 `"4"', add
label define eg06a_washernon_lbl 05 `"5"', add
label define eg06a_washernon_lbl 06 `"6"', add
label define eg06a_washernon_lbl 07 `"7"', add
label define eg06a_washernon_lbl 08 `"8"', add
label define eg06a_washernon_lbl 09 `"9"', add
label define eg06a_washernon_lbl 98 `"Unknown"', add
label define eg06a_washernon_lbl 99 `"NIU (not in universe)"', add
label values eg06a_washernon eg06a_washernon_lbl

label define eg06a_washer_lbl 00 `"0"'
label define eg06a_washer_lbl 01 `"1"', add
label define eg06a_washer_lbl 02 `"2"', add
label define eg06a_washer_lbl 03 `"3"', add
label define eg06a_washer_lbl 04 `"4"', add
label define eg06a_washer_lbl 05 `"5+"', add
label define eg06a_washer_lbl 98 `"Unknown"', add
label define eg06a_washer_lbl 99 `"NIU (not in universe)"', add
label values eg06a_washer eg06a_washer_lbl

label define eg06a_dishwash_lbl 00 `"0"'
label define eg06a_dishwash_lbl 01 `"1"', add
label define eg06a_dishwash_lbl 02 `"2"', add
label define eg06a_dishwash_lbl 03 `"3"', add
label define eg06a_dishwash_lbl 04 `"4"', add
label define eg06a_dishwash_lbl 05 `"5+"', add
label define eg06a_dishwash_lbl 98 `"Unknown"', add
label define eg06a_dishwash_lbl 99 `"NIU (not in universe)"', add
label values eg06a_dishwash eg06a_dishwash_lbl

label define eg06a_stove_lbl 00 `"0"'
label define eg06a_stove_lbl 01 `"1"', add
label define eg06a_stove_lbl 02 `"2"', add
label define eg06a_stove_lbl 03 `"3"', add
label define eg06a_stove_lbl 04 `"4"', add
label define eg06a_stove_lbl 05 `"5"', add
label define eg06a_stove_lbl 06 `"6"', add
label define eg06a_stove_lbl 07 `"7"', add
label define eg06a_stove_lbl 08 `"8"', add
label define eg06a_stove_lbl 09 `"9"', add
label define eg06a_stove_lbl 98 `"Unknown"', add
label define eg06a_stove_lbl 99 `"NIU (not in universe)"', add
label values eg06a_stove eg06a_stove_lbl

label define eg06a_watheat_lbl 00 `"0"'
label define eg06a_watheat_lbl 01 `"1"', add
label define eg06a_watheat_lbl 02 `"2"', add
label define eg06a_watheat_lbl 03 `"3"', add
label define eg06a_watheat_lbl 04 `"4"', add
label define eg06a_watheat_lbl 05 `"5"', add
label define eg06a_watheat_lbl 06 `"6+"', add
label define eg06a_watheat_lbl 98 `"Unknown"', add
label define eg06a_watheat_lbl 99 `"NIU (not in universe)"', add
label values eg06a_watheat eg06a_watheat_lbl

label define eg06a_vacuum_lbl 00 `"0"'
label define eg06a_vacuum_lbl 01 `"1"', add
label define eg06a_vacuum_lbl 02 `"2"', add
label define eg06a_vacuum_lbl 03 `"3"', add
label define eg06a_vacuum_lbl 04 `"4"', add
label define eg06a_vacuum_lbl 05 `"5+"', add
label define eg06a_vacuum_lbl 98 `"Unknown"', add
label define eg06a_vacuum_lbl 99 `"NIU (not in universe)"', add
label values eg06a_vacuum eg06a_vacuum_lbl

label define eg06a_aircon_lbl 00 `"0"'
label define eg06a_aircon_lbl 01 `"1"', add
label define eg06a_aircon_lbl 02 `"2"', add
label define eg06a_aircon_lbl 03 `"3"', add
label define eg06a_aircon_lbl 04 `"4"', add
label define eg06a_aircon_lbl 05 `"5+"', add
label define eg06a_aircon_lbl 98 `"Unknown"', add
label define eg06a_aircon_lbl 99 `"NIU (not in universe)"', add
label values eg06a_aircon eg06a_aircon_lbl

label define eg06a_pc_lbl 00 `"0"'
label define eg06a_pc_lbl 01 `"1"', add
label define eg06a_pc_lbl 02 `"2"', add
label define eg06a_pc_lbl 03 `"3"', add
label define eg06a_pc_lbl 04 `"4"', add
label define eg06a_pc_lbl 05 `"5+"', add
label define eg06a_pc_lbl 98 `"Unknown"', add
label define eg06a_pc_lbl 99 `"NIU (not in universe)"', add
label values eg06a_pc eg06a_pc_lbl

label define eg06a_fan_lbl 00 `"0"'
label define eg06a_fan_lbl 01 `"1"', add
label define eg06a_fan_lbl 02 `"2"', add
label define eg06a_fan_lbl 03 `"3"', add
label define eg06a_fan_lbl 04 `"4"', add
label define eg06a_fan_lbl 05 `"5"', add
label define eg06a_fan_lbl 06 `"6"', add
label define eg06a_fan_lbl 07 `"7"', add
label define eg06a_fan_lbl 08 `"8"', add
label define eg06a_fan_lbl 09 `"9"', add
label define eg06a_fan_lbl 98 `"Unknown"', add
label define eg06a_fan_lbl 99 `"NIU (not in universe)"', add
label values eg06a_fan eg06a_fan_lbl

label define eg06a_internet_lbl 00 `"0"'
label define eg06a_internet_lbl 01 `"1"', add
label define eg06a_internet_lbl 02 `"2"', add
label define eg06a_internet_lbl 03 `"3"', add
label define eg06a_internet_lbl 04 `"4"', add
label define eg06a_internet_lbl 05 `"5+"', add
label define eg06a_internet_lbl 99 `"NIU (not in universe)"', add
label values eg06a_internet eg06a_internet_lbl

label define eg06a_phone_lbl 00 `"0"'
label define eg06a_phone_lbl 01 `"1"', add
label define eg06a_phone_lbl 02 `"2"', add
label define eg06a_phone_lbl 03 `"3"', add
label define eg06a_phone_lbl 04 `"4"', add
label define eg06a_phone_lbl 05 `"5"', add
label define eg06a_phone_lbl 06 `"6"', add
label define eg06a_phone_lbl 07 `"7"', add
label define eg06a_phone_lbl 08 `"8"', add
label define eg06a_phone_lbl 09 `"9"', add
label define eg06a_phone_lbl 98 `"Unknown"', add
label define eg06a_phone_lbl 99 `"NIU (not in universe)"', add
label values eg06a_phone eg06a_phone_lbl

label define eg06a_cell_lbl 00 `"0"'
label define eg06a_cell_lbl 01 `"1"', add
label define eg06a_cell_lbl 02 `"2"', add
label define eg06a_cell_lbl 03 `"3"', add
label define eg06a_cell_lbl 04 `"4"', add
label define eg06a_cell_lbl 05 `"5"', add
label define eg06a_cell_lbl 06 `"6"', add
label define eg06a_cell_lbl 07 `"7"', add
label define eg06a_cell_lbl 08 `"8"', add
label define eg06a_cell_lbl 09 `"9"', add
label define eg06a_cell_lbl 98 `"Unknown"', add
label define eg06a_cell_lbl 99 `"NIU (not in universe)"', add
label values eg06a_cell eg06a_cell_lbl

label define eg06a_noappl_lbl 1 `"Yes, has no household appliances"'
label define eg06a_noappl_lbl 2 `"No, has household appliances"', add
label define eg06a_noappl_lbl 9 `"NIU (not in universe)"', add
label values eg06a_noappl eg06a_noappl_lbl

label define eg06a_pernum_lbl 00 `"Household record"'
label define eg06a_pernum_lbl 01 `"1"', add
label define eg06a_pernum_lbl 02 `"2"', add
label define eg06a_pernum_lbl 03 `"3"', add
label define eg06a_pernum_lbl 04 `"4"', add
label define eg06a_pernum_lbl 05 `"5"', add
label define eg06a_pernum_lbl 06 `"6"', add
label define eg06a_pernum_lbl 07 `"7"', add
label define eg06a_pernum_lbl 08 `"8"', add
label define eg06a_pernum_lbl 09 `"9"', add
label define eg06a_pernum_lbl 10 `"10"', add
label define eg06a_pernum_lbl 11 `"11"', add
label define eg06a_pernum_lbl 12 `"12"', add
label define eg06a_pernum_lbl 13 `"13"', add
label define eg06a_pernum_lbl 14 `"14"', add
label define eg06a_pernum_lbl 15 `"15"', add
label define eg06a_pernum_lbl 16 `"16"', add
label define eg06a_pernum_lbl 17 `"17"', add
label define eg06a_pernum_lbl 18 `"18"', add
label define eg06a_pernum_lbl 19 `"19"', add
label define eg06a_pernum_lbl 20 `"20"', add
label define eg06a_pernum_lbl 21 `"21"', add
label define eg06a_pernum_lbl 22 `"22"', add
label define eg06a_pernum_lbl 23 `"23"', add
label define eg06a_pernum_lbl 24 `"24"', add
label define eg06a_pernum_lbl 25 `"25"', add
label define eg06a_pernum_lbl 26 `"26"', add
label define eg06a_pernum_lbl 27 `"27"', add
label define eg06a_pernum_lbl 28 `"28"', add
label define eg06a_pernum_lbl 29 `"29"', add
label define eg06a_pernum_lbl 30 `"30"', add
label values eg06a_pernum eg06a_pernum_lbl

label define eg06a_relate_lbl 01 `"Head of household"'
label define eg06a_relate_lbl 02 `"Husband / wife"', add
label define eg06a_relate_lbl 03 `"Son / daughter"', add
label define eg06a_relate_lbl 04 `"Son-in-law / daughter-in-law"', add
label define eg06a_relate_lbl 05 `"Grandson / granddaughter"', add
label define eg06a_relate_lbl 06 `"Mother / father"', add
label define eg06a_relate_lbl 07 `"Brother / sister"', add
label define eg06a_relate_lbl 08 `"Other relatives"', add
label define eg06a_relate_lbl 09 `"Servants"', add
label define eg06a_relate_lbl 10 `"No relation"', add
label define eg06a_relate_lbl 11 `"Visitors"', add
label values eg06a_relate eg06a_relate_lbl

label define eg06a_age_lbl 00 `"0"'
label define eg06a_age_lbl 01 `"1"', add
label define eg06a_age_lbl 02 `"2"', add
label define eg06a_age_lbl 03 `"3"', add
label define eg06a_age_lbl 04 `"4"', add
label define eg06a_age_lbl 05 `"5"', add
label define eg06a_age_lbl 06 `"6"', add
label define eg06a_age_lbl 07 `"7"', add
label define eg06a_age_lbl 08 `"8"', add
label define eg06a_age_lbl 09 `"9"', add
label define eg06a_age_lbl 10 `"10"', add
label define eg06a_age_lbl 11 `"11"', add
label define eg06a_age_lbl 12 `"12"', add
label define eg06a_age_lbl 13 `"13"', add
label define eg06a_age_lbl 14 `"14"', add
label define eg06a_age_lbl 15 `"15"', add
label define eg06a_age_lbl 16 `"16"', add
label define eg06a_age_lbl 17 `"17"', add
label define eg06a_age_lbl 18 `"18"', add
label define eg06a_age_lbl 19 `"19"', add
label define eg06a_age_lbl 20 `"20"', add
label define eg06a_age_lbl 21 `"21"', add
label define eg06a_age_lbl 22 `"22"', add
label define eg06a_age_lbl 23 `"23"', add
label define eg06a_age_lbl 24 `"24"', add
label define eg06a_age_lbl 25 `"25"', add
label define eg06a_age_lbl 26 `"26"', add
label define eg06a_age_lbl 27 `"27"', add
label define eg06a_age_lbl 28 `"28"', add
label define eg06a_age_lbl 29 `"29"', add
label define eg06a_age_lbl 30 `"30"', add
label define eg06a_age_lbl 31 `"31"', add
label define eg06a_age_lbl 32 `"32"', add
label define eg06a_age_lbl 33 `"33"', add
label define eg06a_age_lbl 34 `"34"', add
label define eg06a_age_lbl 35 `"35"', add
label define eg06a_age_lbl 36 `"36"', add
label define eg06a_age_lbl 37 `"37"', add
label define eg06a_age_lbl 38 `"38"', add
label define eg06a_age_lbl 39 `"39"', add
label define eg06a_age_lbl 40 `"40"', add
label define eg06a_age_lbl 41 `"41"', add
label define eg06a_age_lbl 42 `"42"', add
label define eg06a_age_lbl 43 `"43"', add
label define eg06a_age_lbl 44 `"44"', add
label define eg06a_age_lbl 45 `"45"', add
label define eg06a_age_lbl 46 `"46"', add
label define eg06a_age_lbl 47 `"47"', add
label define eg06a_age_lbl 48 `"48"', add
label define eg06a_age_lbl 49 `"49"', add
label define eg06a_age_lbl 50 `"50"', add
label define eg06a_age_lbl 51 `"51"', add
label define eg06a_age_lbl 52 `"52"', add
label define eg06a_age_lbl 53 `"53"', add
label define eg06a_age_lbl 54 `"54"', add
label define eg06a_age_lbl 55 `"55"', add
label define eg06a_age_lbl 56 `"56"', add
label define eg06a_age_lbl 57 `"57"', add
label define eg06a_age_lbl 58 `"58"', add
label define eg06a_age_lbl 59 `"59"', add
label define eg06a_age_lbl 60 `"60"', add
label define eg06a_age_lbl 61 `"61"', add
label define eg06a_age_lbl 62 `"62"', add
label define eg06a_age_lbl 63 `"63"', add
label define eg06a_age_lbl 64 `"64"', add
label define eg06a_age_lbl 65 `"65"', add
label define eg06a_age_lbl 66 `"66"', add
label define eg06a_age_lbl 67 `"67"', add
label define eg06a_age_lbl 68 `"68"', add
label define eg06a_age_lbl 69 `"69"', add
label define eg06a_age_lbl 70 `"70"', add
label define eg06a_age_lbl 71 `"71"', add
label define eg06a_age_lbl 72 `"72"', add
label define eg06a_age_lbl 73 `"73"', add
label define eg06a_age_lbl 74 `"74"', add
label define eg06a_age_lbl 75 `"75"', add
label define eg06a_age_lbl 76 `"76"', add
label define eg06a_age_lbl 77 `"77"', add
label define eg06a_age_lbl 78 `"78"', add
label define eg06a_age_lbl 79 `"79"', add
label define eg06a_age_lbl 80 `"80"', add
label define eg06a_age_lbl 81 `"81"', add
label define eg06a_age_lbl 82 `"82"', add
label define eg06a_age_lbl 83 `"83"', add
label define eg06a_age_lbl 84 `"84"', add
label define eg06a_age_lbl 85 `"85"', add
label define eg06a_age_lbl 86 `"86"', add
label define eg06a_age_lbl 87 `"87"', add
label define eg06a_age_lbl 88 `"88"', add
label define eg06a_age_lbl 89 `"89"', add
label define eg06a_age_lbl 90 `"90"', add
label define eg06a_age_lbl 91 `"91"', add
label define eg06a_age_lbl 92 `"92"', add
label define eg06a_age_lbl 93 `"93"', add
label define eg06a_age_lbl 94 `"94"', add
label define eg06a_age_lbl 95 `"95"', add
label define eg06a_age_lbl 96 `"96"', add
label define eg06a_age_lbl 97 `"97"', add
label define eg06a_age_lbl 98 `"98"', add
label define eg06a_age_lbl 99 `"99 and older"', add
label values eg06a_age eg06a_age_lbl

label define eg06a_sex_lbl 1 `"Male"'
label define eg06a_sex_lbl 2 `"Female"', add
label values eg06a_sex eg06a_sex_lbl

label define eg06a_relig_lbl 1 `"Muslim"'
label define eg06a_relig_lbl 2 `"Christian"', add
label define eg06a_relig_lbl 3 `"Jewish"', add
label define eg06a_relig_lbl 4 `"Other"', add
label values eg06a_relig eg06a_relig_lbl

label define eg06a_nationg_lbl 1 `"Egyptian"'
label define eg06a_nationg_lbl 2 `"Foreigner"', add
label values eg06a_nationg eg06a_nationg_lbl

label define eg06a_nation_lbl 001 `"Ethiopia"'
label define eg06a_nation_lbl 002 `"Eritrea"', add
label define eg06a_nation_lbl 005 `"Libya"', add
label define eg06a_nation_lbl 006 `"Tunisia"', add
label define eg06a_nation_lbl 007 `"Algeria"', add
label define eg06a_nation_lbl 009 `"Senegal"', add
label define eg06a_nation_lbl 012 `"Morocco"', add
label define eg06a_nation_lbl 013 `"Niger"', add
label define eg06a_nation_lbl 023 `"Sudan"', add
label define eg06a_nation_lbl 024 `"Somalia"', add
label define eg06a_nation_lbl 027 `"Egypt"', add
label define eg06a_nation_lbl 052 `"Nigeria"', add
label define eg06a_nation_lbl 053 `"The Comoros"', add
label define eg06a_nation_lbl 099 `"Other countries in Africa"', add
label define eg06a_nation_lbl 103 `"Philippines"', add
label define eg06a_nation_lbl 104 `"Indonesia"', add
label define eg06a_nation_lbl 105 `"Jordan"', add
label define eg06a_nation_lbl 106 `"Syria"', add
label define eg06a_nation_lbl 107 `"Lebanon"', add
label define eg06a_nation_lbl 108 `"Yemen"', add
label define eg06a_nation_lbl 109 `"Saudi Arabia"', add
label define eg06a_nation_lbl 110 `"India"', add
label define eg06a_nation_lbl 111 `"Japan"', add
label define eg06a_nation_lbl 112 `"Pakistan"', add
label define eg06a_nation_lbl 113 `"Bangladesh"', add
label define eg06a_nation_lbl 116 `"Thailand (Siam)"', add
label define eg06a_nation_lbl 118 `"Turkey"', add
label define eg06a_nation_lbl 119 `"China"', add
label define eg06a_nation_lbl 120 `"Iraq"', add
label define eg06a_nation_lbl 123 `"Republic of Korea"', add
label define eg06a_nation_lbl 125 `"United Arab of Emirates"', add
label define eg06a_nation_lbl 126 `"Bahrain"', add
label define eg06a_nation_lbl 127 `"Palestine"', add
label define eg06a_nation_lbl 128 `"Qatar"', add
label define eg06a_nation_lbl 129 `"Kuwait"', add
label define eg06a_nation_lbl 131 `"Oman"', add
label define eg06a_nation_lbl 136 `"Malaysia"', add
label define eg06a_nation_lbl 199 `"Other countries in Asia"', add
label define eg06a_nation_lbl 201 `"Russian Federation"', add
label define eg06a_nation_lbl 205 `"Ukraine"', add
label define eg06a_nation_lbl 210 `"Belorussia"', add
label define eg06a_nation_lbl 211 `"Other former Soviet Republics, Asia"', add
label define eg06a_nation_lbl 212 `"Other former Soviet Republics, Europe"', add
label define eg06a_nation_lbl 223 `"Republic of Czech"', add
label define eg06a_nation_lbl 227 `"Greece"', add
label define eg06a_nation_lbl 229 `"Poland"', add
label define eg06a_nation_lbl 231 `"Romania"', add
label define eg06a_nation_lbl 232 `"Spain"', add
label define eg06a_nation_lbl 233 `"Federal Republic of Germany"', add
label define eg06a_nation_lbl 236 `"Italy"', add
label define eg06a_nation_lbl 238 `"Belgium"', add
label define eg06a_nation_lbl 240 `"Denmark"', add
label define eg06a_nation_lbl 242 `"Sweden"', add
label define eg06a_nation_lbl 243 `"Switzerland"', add
label define eg06a_nation_lbl 244 `"France"', add
label define eg06a_nation_lbl 245 `"Finland"', add
label define eg06a_nation_lbl 248 `"United Kingdom"', add
label define eg06a_nation_lbl 251 `"Norway"', add
label define eg06a_nation_lbl 252 `"Austria"', add
label define eg06a_nation_lbl 253 `"Netherlands"', add
label define eg06a_nation_lbl 299 `"Other countries in Europe"', add
label define eg06a_nation_lbl 301 `"United States of America"', add
label define eg06a_nation_lbl 302 `"Canada"', add
label define eg06a_nation_lbl 601 `"Australia"', add
label define eg06a_nation_lbl 900 `"Other countries in America and Oceania"', add
label define eg06a_nation_lbl 999 `"Unknown"', add
label values eg06a_nation eg06a_nation_lbl

label define eg06a_marst_lbl 1 `"Never married"'
label define eg06a_marst_lbl 2 `"Contractually married (signed marriage contract)"', add
label define eg06a_marst_lbl 3 `"Married"', add
label define eg06a_marst_lbl 4 `"Divorced"', add
label define eg06a_marst_lbl 5 `"Widowed"', add
label define eg06a_marst_lbl 9 `"NIU (not in universe)"', add
label values eg06a_marst eg06a_marst_lbl

label define eg06a_wives_lbl 1 `"1"'
label define eg06a_wives_lbl 2 `"2"', add
label define eg06a_wives_lbl 3 `"3"', add
label define eg06a_wives_lbl 4 `"4"', add
label define eg06a_wives_lbl 8 `"Unknown"', add
label define eg06a_wives_lbl 9 `"NIU (not in universe)"', add
label values eg06a_wives eg06a_wives_lbl

label define eg06a_edlevel_lbl 01 `"Illiterate"'
label define eg06a_edlevel_lbl 02 `"Read and write without a certificate"', add
label define eg06a_edlevel_lbl 03 `"Illiteracy eradication program"', add
label define eg06a_edlevel_lbl 04 `"Primary"', add
label define eg06a_edlevel_lbl 05 `"Preparatory"', add
label define eg06a_edlevel_lbl 06 `"Intermediate"', add
label define eg06a_edlevel_lbl 07 `"Above intermediate"', add
label define eg06a_edlevel_lbl 08 `"University"', add
label define eg06a_edlevel_lbl 09 `"Higher diploma"', add
label define eg06a_edlevel_lbl 10 `"Masters"', add
label define eg06a_edlevel_lbl 11 `"Doctorate"', add
label define eg06a_edlevel_lbl 98 `"Unknown"', add
label define eg06a_edlevel_lbl 99 `"NIU (not in universe)"', add
label values eg06a_edlevel eg06a_edlevel_lbl

label define eg06a_school_lbl 1 `"Currently enrolled"'
label define eg06a_school_lbl 2 `"Never enrolled"', add
label define eg06a_school_lbl 3 `"Enrolled and dropped out from basic education"', add
label define eg06a_school_lbl 8 `"Unknown"', add
label define eg06a_school_lbl 9 `"NIU (not in universe)"', add
label values eg06a_school eg06a_school_lbl

label define eg06a_dropstag_lbl 1 `"1"'
label define eg06a_dropstag_lbl 2 `"2"', add
label define eg06a_dropstag_lbl 9 `"NIU (not in universe)"', add
label values eg06a_dropstag eg06a_dropstag_lbl

label define eg06a_dropgrad_lbl 1 `"1"'
label define eg06a_dropgrad_lbl 2 `"2"', add
label define eg06a_dropgrad_lbl 3 `"3"', add
label define eg06a_dropgrad_lbl 4 `"4"', add
label define eg06a_dropgrad_lbl 5 `"5"', add
label define eg06a_dropgrad_lbl 6 `"6"', add
label define eg06a_dropgrad_lbl 9 `"NIU (not in universe)"', add
label values eg06a_dropgrad eg06a_dropgrad_lbl

label define eg06a_empstat_lbl 01 `"Employer"'
label define eg06a_empstat_lbl 02 `"Self employed"', add
label define eg06a_empstat_lbl 03 `"Waged worker"', add
label define eg06a_empstat_lbl 04 `"Works for family without wage"', add
label define eg06a_empstat_lbl 05 `"Works for others without wage"', add
label define eg06a_empstat_lbl 06 `"Unemployed with previous work experience"', add
label define eg06a_empstat_lbl 07 `"Unemployed, new worker"', add
label define eg06a_empstat_lbl 08 `"Full-time student"', add
label define eg06a_empstat_lbl 09 `"Full-time housewife"', add
label define eg06a_empstat_lbl 10 `"Retired"', add
label define eg06a_empstat_lbl 11 `"Senior citizen who doesn't work"', add
label define eg06a_empstat_lbl 12 `"Disabled"', add
label define eg06a_empstat_lbl 13 `"Unwilling to work"', add
label define eg06a_empstat_lbl 14 `"Other"', add
label define eg06a_empstat_lbl 99 `"NIU (not in universe)"', add
label values eg06a_empstat eg06a_empstat_lbl

label define eg06a_estab_lbl 1 `"Inside an establishment"'
label define eg06a_estab_lbl 2 `"Outside the establishment, not in own home"', add
label define eg06a_estab_lbl 3 `"Outside an establishment, in own home"', add
label define eg06a_estab_lbl 9 `"NIU (not in universe)"', add
label values eg06a_estab eg06a_estab_lbl

label define eg06a_empsect_lbl 1 `"Government"'
label define eg06a_empsect_lbl 2 `"Public sector"', add
label define eg06a_empsect_lbl 3 `"Private (investment sector)"', add
label define eg06a_empsect_lbl 4 `"Private (regular)"', add
label define eg06a_empsect_lbl 5 `"Joint venture"', add
label define eg06a_empsect_lbl 6 `"Cooperative"', add
label define eg06a_empsect_lbl 7 `"Non-governmental organizations"', add
label define eg06a_empsect_lbl 8 `"Other"', add
label define eg06a_empsect_lbl 9 `"NIU (not in universe)"', add
label values eg06a_empsect eg06a_empsect_lbl

label define eg06a_occ_lbl 111 `"Legislators"'
label define eg06a_occ_lbl 112 `"Senior government officials"', add
label define eg06a_occ_lbl 113 `"Traditional chiefs and heads of villages"', add
label define eg06a_occ_lbl 114 `"Senior officials of special-interest organizations"', add
label define eg06a_occ_lbl 121 `"Directors and chief executives"', add
label define eg06a_occ_lbl 122 `"Production and operations department managers"', add
label define eg06a_occ_lbl 123 `"Other department managers"', add
label define eg06a_occ_lbl 131 `"General managers"', add
label define eg06a_occ_lbl 211 `"Physicists, chemists and related professionals"', add
label define eg06a_occ_lbl 212 `"Mathematicians, statisticians and related professionals"', add
label define eg06a_occ_lbl 213 `"Computing professionals"', add
label define eg06a_occ_lbl 214 `"Architects, engineers and related professionals"', add
label define eg06a_occ_lbl 221 `"Life science professionals"', add
label define eg06a_occ_lbl 222 `"Health professionals (except nursing)"', add
label define eg06a_occ_lbl 223 `"Nursing and midwifery professionals"', add
label define eg06a_occ_lbl 231 `"College, university and higher education teaching professionals"', add
label define eg06a_occ_lbl 232 `"Secondary education teaching professionals"', add
label define eg06a_occ_lbl 233 `"Primary and pre-primary education teaching professionals"', add
label define eg06a_occ_lbl 234 `"Special education teaching professionals"', add
label define eg06a_occ_lbl 235 `"Other teaching professionals"', add
label define eg06a_occ_lbl 241 `"Business professionals"', add
label define eg06a_occ_lbl 242 `"Legal professionals"', add
label define eg06a_occ_lbl 243 `"Archivists, librarians and related information professionals"', add
label define eg06a_occ_lbl 244 `"Social science and related professionals"', add
label define eg06a_occ_lbl 245 `"Writers and creative or performing artists"', add
label define eg06a_occ_lbl 246 `"Religious professionals"', add
label define eg06a_occ_lbl 311 `"Physical and engineering science technicians"', add
label define eg06a_occ_lbl 312 `"Computer associate professionals"', add
label define eg06a_occ_lbl 313 `"Optical and electronic equipment operators"', add
label define eg06a_occ_lbl 314 `"Ship and aircraft controllers and technicians"', add
label define eg06a_occ_lbl 315 `"Safety and quality inspectors"', add
label define eg06a_occ_lbl 321 `"Life science technicians and related associate professionals"', add
label define eg06a_occ_lbl 322 `"Modern health associate professionals (except nursing)"', add
label define eg06a_occ_lbl 323 `"Nursing and midwifery associate professionals"', add
label define eg06a_occ_lbl 331 `"Primary education teaching associate professionals"', add
label define eg06a_occ_lbl 332 `"Pre-primary education teaching associate professionals"', add
label define eg06a_occ_lbl 334 `"Other teaching associate professionals"', add
label define eg06a_occ_lbl 341 `"Finance and sales associate professionals"', add
label define eg06a_occ_lbl 342 `"Business services agents and trade brokers"', add
label define eg06a_occ_lbl 343 `"Administrative associate professionals"', add
label define eg06a_occ_lbl 344 `"Customs, tax and related government associate professionals"', add
label define eg06a_occ_lbl 345 `"Police inspectors and detectives"', add
label define eg06a_occ_lbl 346 `"Social work associate professionals"', add
label define eg06a_occ_lbl 347 `"Artistic, entertainment and sports associate professionals"', add
label define eg06a_occ_lbl 348 `"Religious associate professionals"', add
label define eg06a_occ_lbl 411 `"Secretaries and keyboard-operating clerks"', add
label define eg06a_occ_lbl 412 `"Numerical clerks"', add
label define eg06a_occ_lbl 413 `"Material-recording and transport clerks"', add
label define eg06a_occ_lbl 414 `"Library, mail and related clerks"', add
label define eg06a_occ_lbl 419 `"Other office clerks"', add
label define eg06a_occ_lbl 421 `"Cashiers, tellers and related clerks"', add
label define eg06a_occ_lbl 422 `"Client information clerks"', add
label define eg06a_occ_lbl 511 `"Travel attendants and related workers"', add
label define eg06a_occ_lbl 512 `"Housekeeping and restaurant services workers"', add
label define eg06a_occ_lbl 513 `"Personal care and related workers"', add
label define eg06a_occ_lbl 514 `"Other personal services workers"', add
label define eg06a_occ_lbl 515 `"Astrologers, fortune-tellers and related workers"', add
label define eg06a_occ_lbl 516 `"Protective services workers"', add
label define eg06a_occ_lbl 522 `"Shop salespersons and demonstrators"', add
label define eg06a_occ_lbl 523 `"Stall and market salespersons"', add
label define eg06a_occ_lbl 611 `"Market gardeners and crop growers"', add
label define eg06a_occ_lbl 612 `"Market-oriented animal producers and related workers"', add
label define eg06a_occ_lbl 613 `"Market-oriented crop and animal producers"', add
label define eg06a_occ_lbl 614 `"Forestry and related workers"', add
label define eg06a_occ_lbl 615 `"Fishery workers, hunters and trappers"', add
label define eg06a_occ_lbl 621 `"Subsistence agricultural and fishery workers"', add
label define eg06a_occ_lbl 711 `"Miners, shotfirers, stone cutters and carvers"', add
label define eg06a_occ_lbl 712 `"Building frame and related trades workers"', add
label define eg06a_occ_lbl 713 `"Building finishers and related trades workers"', add
label define eg06a_occ_lbl 714 `"Painters, building structure cleaners and related trades workers"', add
label define eg06a_occ_lbl 721 `"Metal moulders, welders, sheet-metal workers, structural- metal preparers, and related trades workers"', add
label define eg06a_occ_lbl 722 `"Blacksmiths, tool-makers and related trades workers"', add
label define eg06a_occ_lbl 723 `"Machinery mechanics and fitters"', add
label define eg06a_occ_lbl 724 `"Electrical and electronic equipment mechanics and fitters"', add
label define eg06a_occ_lbl 731 `"Precision workers in metal and related materials"', add
label define eg06a_occ_lbl 732 `"Potters, glass-makers and related trades workers"', add
label define eg06a_occ_lbl 733 `"Handicraft workers in wood, textile, leather and related materials"', add
label define eg06a_occ_lbl 734 `"Printing and related trades workers"', add
label define eg06a_occ_lbl 741 `"Food processing and related trades workers"', add
label define eg06a_occ_lbl 742 `"Wood treaters, cabinet-makers and related trades workers"', add
label define eg06a_occ_lbl 743 `"Textile, garment and related trades workers"', add
label define eg06a_occ_lbl 744 `"Pelt, leather and shoemaking trades workers"', add
label define eg06a_occ_lbl 811 `"Mining- and mineral-processing-plant operators"', add
label define eg06a_occ_lbl 812 `"Metal-processing-plant operators"', add
label define eg06a_occ_lbl 813 `"Glass, ceramics and related plant operators"', add
label define eg06a_occ_lbl 814 `"Wood-processing- and papermaking-plant operators"', add
label define eg06a_occ_lbl 815 `"Chemical-processing-plant operators"', add
label define eg06a_occ_lbl 816 `"Power-production and related plant operators"', add
label define eg06a_occ_lbl 817 `"Automated-assembly-line and industrial-robot operators"', add
label define eg06a_occ_lbl 821 `"Metal- and mineral-products machine operators"', add
label define eg06a_occ_lbl 822 `"Chemical-products machine operators"', add
label define eg06a_occ_lbl 823 `"Rubber- and plastic-products machine operators"', add
label define eg06a_occ_lbl 824 `"Wood-products machine operators"', add
label define eg06a_occ_lbl 825 `"Printing-, binding- and paper-products machine operators"', add
label define eg06a_occ_lbl 826 `"Textile-, fur- and leather-products machine operators"', add
label define eg06a_occ_lbl 827 `"Food and related products machine operators"', add
label define eg06a_occ_lbl 828 `"Assemblers"', add
label define eg06a_occ_lbl 829 `"Other machine operators and assemblers"', add
label define eg06a_occ_lbl 831 `"Locomotive-engine drivers and related workers"', add
label define eg06a_occ_lbl 832 `"Motor-vehicle drivers"', add
label define eg06a_occ_lbl 833 `"Agricultural and other mobile-plant operators"', add
label define eg06a_occ_lbl 834 `"Ships' deck crews and related workers"', add
label define eg06a_occ_lbl 911 `"Street vendors and related workers"', add
label define eg06a_occ_lbl 912 `"Shoe cleaning and other street services elementary occupations"', add
label define eg06a_occ_lbl 913 `"Domestic and related helpers, cleaners and launderers"', add
label define eg06a_occ_lbl 914 `"Building caretakers, window and related cleaners"', add
label define eg06a_occ_lbl 915 `"Messengers, porters, doorkeepers and related workers"', add
label define eg06a_occ_lbl 916 `"Garbage collectors and related labourers"', add
label define eg06a_occ_lbl 921 `"Agricultural, fishery and related labourers"', add
label define eg06a_occ_lbl 931 `"Mining and construction labourers"', add
label define eg06a_occ_lbl 932 `"Manufacturing labourers"', add
label define eg06a_occ_lbl 933 `"Transport labourers and freight handlers"', add
label define eg06a_occ_lbl 990 `"Other occupation, response suppressed"', add
label define eg06a_occ_lbl 998 `"Unknown"', add
label define eg06a_occ_lbl 999 `"NIU (not in universe)"', add
label values eg06a_occ eg06a_occ_lbl

label define eg06a_ind_lbl 011 `"Growing of non-perennial crops"'
label define eg06a_ind_lbl 012 `"Growing of perennial crops"', add
label define eg06a_ind_lbl 013 `"Plant propagation"', add
label define eg06a_ind_lbl 014 `"Animal production"', add
label define eg06a_ind_lbl 015 `"Mixed farming"', add
label define eg06a_ind_lbl 016 `"Support activities to agriculture and post-harvest crop activities"', add
label define eg06a_ind_lbl 021 `"Silviculture and other forestry activities"', add
label define eg06a_ind_lbl 022 `"Logging"', add
label define eg06a_ind_lbl 031 `"Fishing"', add
label define eg06a_ind_lbl 032 `"Aquaculture"', add
label define eg06a_ind_lbl 051 `"Mining of hard coal"', add
label define eg06a_ind_lbl 061 `"Extraction of crude petroleum"', add
label define eg06a_ind_lbl 062 `"Extraction of natural gas"', add
label define eg06a_ind_lbl 071 `"Mining of iron ores"', add
label define eg06a_ind_lbl 072 `"Mining of non-ferrous metal ores"', add
label define eg06a_ind_lbl 081 `"Quarrying of stone, sand and clay"', add
label define eg06a_ind_lbl 089 `"Mining and quarrying n.e.c."', add
label define eg06a_ind_lbl 091 `"Support activities for petroleum and natural gas extraction"', add
label define eg06a_ind_lbl 099 `"Support activities for other mining and quarrying"', add
label define eg06a_ind_lbl 101 `"Processing and preserving of meat"', add
label define eg06a_ind_lbl 102 `"Processing and preserving of fish, crustaceans and molluscs"', add
label define eg06a_ind_lbl 103 `"Processing and preserving of fruit and vegetables"', add
label define eg06a_ind_lbl 104 `"Manufacture of vegetable and animal oils and fats"', add
label define eg06a_ind_lbl 105 `"Manufacture of dairy products"', add
label define eg06a_ind_lbl 106 `"Manufacture of grain mill products, starches and starch products"', add
label define eg06a_ind_lbl 107 `"Manufacture of other food products"', add
label define eg06a_ind_lbl 108 `"Manufacture of prepared animal feeds"', add
label define eg06a_ind_lbl 110 `"Manufacture of beverages"', add
label define eg06a_ind_lbl 120 `"Manufacture of tobacco products"', add
label define eg06a_ind_lbl 131 `"Spinning, weaving and finishing of textiles"', add
label define eg06a_ind_lbl 132 `"Manufacture of other textiles"', add
label define eg06a_ind_lbl 141 `"Manufacture of wearing apparel, except fur apparel"', add
label define eg06a_ind_lbl 143 `"Manufacture of knitted and crocheted apparel"', add
label define eg06a_ind_lbl 151 `"Tanning and dressing of leather; manufacture of luggage, handbags, saddlery and harness; dressing and dyeing of fur"', add
label define eg06a_ind_lbl 152 `"Manufacture of footwear"', add
label define eg06a_ind_lbl 161 `"Sawmilling and planing of wood"', add
label define eg06a_ind_lbl 162 `"Manufacture of products of wood, cork, straw and plaiting materials"', add
label define eg06a_ind_lbl 170 `"Manufacture of paper and paper products"', add
label define eg06a_ind_lbl 181 `"Printing and service activities related to printing"', add
label define eg06a_ind_lbl 182 `"Reproduction of recorded media"', add
label define eg06a_ind_lbl 191 `"Manufacture of coke oven products"', add
label define eg06a_ind_lbl 192 `"Manufacture of refined petroleum products"', add
label define eg06a_ind_lbl 201 `"Manufacture of basic chemicals, fertilizers and nitrogen compounds, plastics and synthetic rubber in primary forms"', add
label define eg06a_ind_lbl 202 `"Manufacture of other chemical products"', add
label define eg06a_ind_lbl 203 `"Manufacture of man-made fibres"', add
label define eg06a_ind_lbl 210 `"Manufacture of pharmaceuticals, medicinal chemical and botanical products"', add
label define eg06a_ind_lbl 221 `"Manufacture of rubber products"', add
label define eg06a_ind_lbl 222 `"Manufacture of plastics products"', add
label define eg06a_ind_lbl 231 `"Manufacture of glass and glass products"', add
label define eg06a_ind_lbl 239 `"Manufacture of non-metallic mineral products n.e.c."', add
label define eg06a_ind_lbl 241 `"Manufacture of basic iron and steel"', add
label define eg06a_ind_lbl 242 `"Manufacture of basic precious and other non-ferrous metals"', add
label define eg06a_ind_lbl 243 `"Casting of metals"', add
label define eg06a_ind_lbl 251 `"Manufacture of structural metal products, tanks, reservoirs and steam generators"', add
label define eg06a_ind_lbl 252 `"Manufacture of weapons and ammunition"', add
label define eg06a_ind_lbl 259 `"Manufacture of other fabricated metal products; metalworking service activities"', add
label define eg06a_ind_lbl 261 `"Manufacture of electronic components and boards"', add
label define eg06a_ind_lbl 262 `"Manufacture of computers and peripheral equipment"', add
label define eg06a_ind_lbl 263 `"Manufacture of communication equipment"', add
label define eg06a_ind_lbl 264 `"Manufacture of consumer electronics"', add
label define eg06a_ind_lbl 265 `"Manufacture of measuring, testing, navigating and control equipment; watches and clocks"', add
label define eg06a_ind_lbl 266 `"Manufacture of irradiation, electromedical and electrotherapeutic equipment"', add
label define eg06a_ind_lbl 267 `"Manufacture of optical instruments and photographic equipment"', add
label define eg06a_ind_lbl 271 `"Manufacture of electric motors, generators, transformers and electricity distribution and control apparatus"', add
label define eg06a_ind_lbl 272 `"Manufacture of batteries and accumulators"', add
label define eg06a_ind_lbl 273 `"Manufacture of wiring and wiring devices"', add
label define eg06a_ind_lbl 274 `"Manufacture of electric lighting equipment"', add
label define eg06a_ind_lbl 275 `"Manufacture of domestic appliances"', add
label define eg06a_ind_lbl 279 `"Manufacture of other electrical equipment"', add
label define eg06a_ind_lbl 281 `"Manufacture of general-purpose machinery"', add
label define eg06a_ind_lbl 282 `"Manufacture of special-purpose machinery"', add
label define eg06a_ind_lbl 291 `"Manufacture of motor vehicles"', add
label define eg06a_ind_lbl 301 `"Building of ships and boats"', add
label define eg06a_ind_lbl 302 `"Manufacture of railway locomotives and rolling stock"', add
label define eg06a_ind_lbl 303 `"Manufacture of air and spacecraft and related machinery"', add
label define eg06a_ind_lbl 309 `"Manufacture of transport equipment n.e.c."', add
label define eg06a_ind_lbl 310 `"Manufacture of furniture"', add
label define eg06a_ind_lbl 321 `"Manufacture of jewellery, bijouterie and related articles"', add
label define eg06a_ind_lbl 324 `"Manufacture of games and toys"', add
label define eg06a_ind_lbl 325 `"Manufacture of medical and dental instruments and supplies"', add
label define eg06a_ind_lbl 329 `"Other manufacturing n.e.c."', add
label define eg06a_ind_lbl 331 `"Repair of fabricated metal products, machinery and equipment"', add
label define eg06a_ind_lbl 332 `"Installation of industrial machinery and equipment"', add
label define eg06a_ind_lbl 351 `"Electric power generation, transmission and distribution"', add
label define eg06a_ind_lbl 352 `"Manufacture of gas; distribution of gaseous fuels through mains"', add
label define eg06a_ind_lbl 360 `"Water collection, treatment and supply"', add
label define eg06a_ind_lbl 370 `"Sewerage"', add
label define eg06a_ind_lbl 381 `"Waste collection"', add
label define eg06a_ind_lbl 382 `"Waste treatment and disposal"', add
label define eg06a_ind_lbl 383 `"Materials recovery"', add
label define eg06a_ind_lbl 410 `"Construction of buildings"', add
label define eg06a_ind_lbl 421 `"Construction of roads and railways"', add
label define eg06a_ind_lbl 422 `"Construction of utility projects"', add
label define eg06a_ind_lbl 429 `"Construction of other civil engineering projects"', add
label define eg06a_ind_lbl 431 `"Demolition and site preparation"', add
label define eg06a_ind_lbl 432 `"Electrical, plumbing and other construction installation activities"', add
label define eg06a_ind_lbl 433 `"Building completion and finishing"', add
label define eg06a_ind_lbl 439 `"Other specialized construction activities"', add
label define eg06a_ind_lbl 451 `"Sale of motor vehicles"', add
label define eg06a_ind_lbl 452 `"Maintenance and repair of motor vehicles"', add
label define eg06a_ind_lbl 453 `"Sale of motor vehicle parts and accessories"', add
label define eg06a_ind_lbl 454 `"Sale, maintenance and repair of motorcycles and related parts and accessories"', add
label define eg06a_ind_lbl 461 `"Wholesale on a fee or contract basis"', add
label define eg06a_ind_lbl 462 `"Wholesale of agricultural raw materials and live animals"', add
label define eg06a_ind_lbl 463 `"Wholesale of food, beverages and tobacco"', add
label define eg06a_ind_lbl 464 `"Wholesale of household goods"', add
label define eg06a_ind_lbl 465 `"Wholesale of machinery, equipment and supplies"', add
label define eg06a_ind_lbl 466 `"Other specialized wholesale"', add
label define eg06a_ind_lbl 469 `"Non-specialized wholesale trade"', add
label define eg06a_ind_lbl 471 `"Retail sale in non-specialized stores"', add
label define eg06a_ind_lbl 472 `"Retail sale of food, beverages and tobacco in specialized stores"', add
label define eg06a_ind_lbl 473 `"Retail sale of automotive fuel in specialized stores"', add
label define eg06a_ind_lbl 474 `"Retail sale of information and communications equipment in specialized stores"', add
label define eg06a_ind_lbl 475 `"Retail sale of other household equipment in specialized stores"', add
label define eg06a_ind_lbl 476 `"Retail sale of cultural and recreation goods in specialized stores"', add
label define eg06a_ind_lbl 477 `"Retail sale of other goods in specialized stores"', add
label define eg06a_ind_lbl 478 `"Retail sale via stalls and markets"', add
label define eg06a_ind_lbl 479 `"Retail trade not in stores, stalls or markets"', add
label define eg06a_ind_lbl 491 `"Transport via railways"', add
label define eg06a_ind_lbl 492 `"Other land transport"', add
label define eg06a_ind_lbl 493 `"Transport via pipeline"', add
label define eg06a_ind_lbl 501 `"Sea and coastal water transport"', add
label define eg06a_ind_lbl 502 `"Inland water transport"', add
label define eg06a_ind_lbl 511 `"Passenger air transport"', add
label define eg06a_ind_lbl 521 `"Warehousing and storage"', add
label define eg06a_ind_lbl 522 `"Support activities for transportation"', add
label define eg06a_ind_lbl 531 `"Postal activities"', add
label define eg06a_ind_lbl 532 `"Courier activities"', add
label define eg06a_ind_lbl 551 `"Short term accommodation activities"', add
label define eg06a_ind_lbl 559 `"Other accommodation"', add
label define eg06a_ind_lbl 561 `"Restaurants and mobile food service activities"', add
label define eg06a_ind_lbl 562 `"Event catering and other food service activities"', add
label define eg06a_ind_lbl 563 `"Beverage serving activities"', add
label define eg06a_ind_lbl 581 `"Publishing of books, periodicals and other publishing activities"', add
label define eg06a_ind_lbl 591 `"Motion picture, video and television programme activities"', add
label define eg06a_ind_lbl 592 `"Sound recording and music publishing activities"', add
label define eg06a_ind_lbl 601 `"Radio broadcasting"', add
label define eg06a_ind_lbl 602 `"Television programming and broadcasting activities"', add
label define eg06a_ind_lbl 611 `"Wired telecommunications activities"', add
label define eg06a_ind_lbl 612 `"Wireless telecommunications activities"', add
label define eg06a_ind_lbl 619 `"Other telecommunications activities"', add
label define eg06a_ind_lbl 620 `"Computer programming, consultancy and related activities"', add
label define eg06a_ind_lbl 631 `"Data processing, hosting and related activities; web portals"', add
label define eg06a_ind_lbl 632 `"Other information service activities"', add
label define eg06a_ind_lbl 641 `"Monetary intermediation"', add
label define eg06a_ind_lbl 642 `"Activities of holding companies"', add
label define eg06a_ind_lbl 649 `"Other financial service activities, except insurance and pension funding activities"', add
label define eg06a_ind_lbl 651 `"Insurance"', add
label define eg06a_ind_lbl 653 `"Pension funding"', add
label define eg06a_ind_lbl 661 `"Activities auxiliary to financial service activities, except insurance and pension funding"', add
label define eg06a_ind_lbl 662 `"Activities auxiliary to insurance and pension funding"', add
label define eg06a_ind_lbl 663 `"Fund management activities"', add
label define eg06a_ind_lbl 681 `"Real estate activities with own or leased property"', add
label define eg06a_ind_lbl 682 `"Real estate activities on a fee or contract basis"', add
label define eg06a_ind_lbl 691 `"Legal activities"', add
label define eg06a_ind_lbl 692 `"Accounting, bookkeeping and auditing activities; tax consultancy"', add
label define eg06a_ind_lbl 701 `"Activities of head offices"', add
label define eg06a_ind_lbl 702 `"Management consultancy activities"', add
label define eg06a_ind_lbl 711 `"Architectural and engineering activities and related technical consultancy"', add
label define eg06a_ind_lbl 712 `"Technical testing and analysis"', add
label define eg06a_ind_lbl 721 `"Research and experimental development on natural sciences and engineering"', add
label define eg06a_ind_lbl 722 `"Research and experimental development on social sciences and humanities"', add
label define eg06a_ind_lbl 731 `"Advertising"', add
label define eg06a_ind_lbl 741 `"Specialized design activities"', add
label define eg06a_ind_lbl 742 `"Photographic activities"', add
label define eg06a_ind_lbl 749 `"Other professional, scientific and technical activities n.e.c."', add
label define eg06a_ind_lbl 750 `"Veterinary activities"', add
label define eg06a_ind_lbl 771 `"Renting and leasing of motor vehicles"', add
label define eg06a_ind_lbl 772 `"Renting and leasing of personal and household goods"', add
label define eg06a_ind_lbl 773 `"Renting and leasing of other machinery, equipment and tangible goods"', add
label define eg06a_ind_lbl 781 `"Activities of employment placement agencies"', add
label define eg06a_ind_lbl 791 `"Travel agency and tour operator activities"', add
label define eg06a_ind_lbl 792 `"Other reservation service activities"', add
label define eg06a_ind_lbl 801 `"Private security activities"', add
label define eg06a_ind_lbl 802 `"Security systems service activities"', add
label define eg06a_ind_lbl 811 `"Combined facilities support activities"', add
label define eg06a_ind_lbl 812 `"Cleaning activities"', add
label define eg06a_ind_lbl 813 `"Landscape care and maintenance service activities"', add
label define eg06a_ind_lbl 821 `"Office administrative and support activities"', add
label define eg06a_ind_lbl 823 `"Organization of conventions and trade shows"', add
label define eg06a_ind_lbl 829 `"Business support service activities n.e.c."', add
label define eg06a_ind_lbl 841 `"Administration of the State and the economic and social policy of the community"', add
label define eg06a_ind_lbl 842 `"Provision of services to the community as a whole"', add
label define eg06a_ind_lbl 843 `"Compulsory social security activities"', add
label define eg06a_ind_lbl 851 `"Pre-primary and primary education"', add
label define eg06a_ind_lbl 852 `"Secondary education"', add
label define eg06a_ind_lbl 853 `"Higher education"', add
label define eg06a_ind_lbl 854 `"Other education"', add
label define eg06a_ind_lbl 855 `"Educational support activities"', add
label define eg06a_ind_lbl 861 `"Hospital activities"', add
label define eg06a_ind_lbl 862 `"Medical and dental practice activities"', add
label define eg06a_ind_lbl 869 `"Other human health activities"', add
label define eg06a_ind_lbl 873 `"Residential care activities for the elderly and disabled"', add
label define eg06a_ind_lbl 879 `"Other residential care activities"', add
label define eg06a_ind_lbl 881 `"Social work activities without accommodation for the elderly and disabled"', add
label define eg06a_ind_lbl 889 `"Other social work activities without accommodation"', add
label define eg06a_ind_lbl 900 `"Creative, arts and entertainment activities"', add
label define eg06a_ind_lbl 910 `"Libraries, archives, museums and other cultural activities"', add
label define eg06a_ind_lbl 931 `"Sports activities"', add
label define eg06a_ind_lbl 932 `"Other amusement and recreation activities"', add
label define eg06a_ind_lbl 941 `"Activities of business, employers and professional membership organizations"', add
label define eg06a_ind_lbl 942 `"Activities of trade unions"', add
label define eg06a_ind_lbl 949 `"Activities of other membership organizations"', add
label define eg06a_ind_lbl 951 `"Repair of computers and communication equipment"', add
label define eg06a_ind_lbl 952 `"Repair of personal and household goods"', add
label define eg06a_ind_lbl 960 `"Other personal service activities"', add
label define eg06a_ind_lbl 970 `"Activities of households as employers of domestic personnel"', add
label define eg06a_ind_lbl 981 `"Undifferentiated goods-producing activities of private households for own use"', add
label define eg06a_ind_lbl 990 `"Activities of extraterritorial organizations and bodies"', add
label define eg06a_ind_lbl 995 `"Other occupation, response suppressed"', add
label define eg06a_ind_lbl 998 `"Unknown"', add
label define eg06a_ind_lbl 999 `"NIU (not in universe)"', add
label values eg06a_ind eg06a_ind_lbl

label define eg06a_disab_lbl 1 `"Normal"'
label define eg06a_disab_lbl 2 `"Disabled"', add
label values eg06a_disab eg06a_disab_lbl

label define eg06a_bplgov_lbl 01 `"Cairo"'
label define eg06a_bplgov_lbl 02 `"Alexandria"', add
label define eg06a_bplgov_lbl 03 `"Port Said"', add
label define eg06a_bplgov_lbl 04 `"Suez"', add
label define eg06a_bplgov_lbl 11 `"Damietta"', add
label define eg06a_bplgov_lbl 12 `"Dakahlia"', add
label define eg06a_bplgov_lbl 13 `"Sharkia"', add
label define eg06a_bplgov_lbl 14 `"Kalyobia"', add
label define eg06a_bplgov_lbl 15 `"Kafr El Sheikh"', add
label define eg06a_bplgov_lbl 16 `"Gharbia"', add
label define eg06a_bplgov_lbl 17 `"Menoufia"', add
label define eg06a_bplgov_lbl 18 `"Behera"', add
label define eg06a_bplgov_lbl 19 `"Ismailia"', add
label define eg06a_bplgov_lbl 21 `"Giza"', add
label define eg06a_bplgov_lbl 22 `"Beni Suef"', add
label define eg06a_bplgov_lbl 23 `"Fayoum"', add
label define eg06a_bplgov_lbl 24 `"Menia"', add
label define eg06a_bplgov_lbl 25 `"Asyout"', add
label define eg06a_bplgov_lbl 26 `"Suhag"', add
label define eg06a_bplgov_lbl 27 `"Qena"', add
label define eg06a_bplgov_lbl 28 `"Aswan"', add
label define eg06a_bplgov_lbl 29 `"Luxor"', add
label define eg06a_bplgov_lbl 31 `"Red Sea"', add
label define eg06a_bplgov_lbl 32 `"New Valley"', add
label define eg06a_bplgov_lbl 33 `"Matroh"', add
label define eg06a_bplgov_lbl 34 `"North Sinai"', add
label define eg06a_bplgov_lbl 35 `"South Sinai"', add
label define eg06a_bplgov_lbl 80 `"Abroad"', add
label define eg06a_bplgov_lbl 98 `"Unknown"', add
label define eg06a_bplgov_lbl 99 `"NIU (not in universe)"', add
label values eg06a_bplgov eg06a_bplgov_lbl

label define eg06a_bpldist_lbl 0101 `"Qism al-Tibbin"'
label define eg06a_bpldist_lbl 0102 `"Qism Hilwan"', add
label define eg06a_bpldist_lbl 0103 `"Qism 15 May"', add
label define eg06a_bpldist_lbl 0104 `"Qism al-Ma'adi"', add
label define eg06a_bpldist_lbl 0105 `"Qism Turah"', add
label define eg06a_bpldist_lbl 0106 `"Qism Misr al-Qadima"', add
label define eg06a_bpldist_lbl 0107 `"Qism Sayyida Zaynab, al-"', add
label define eg06a_bpldist_lbl 0108 `"Qism al-Khalifa"', add
label define eg06a_bpldist_lbl 0109 `"Qism 'Abdin"', add
label define eg06a_bpldist_lbl 0110 `"Qism al-Muski"', add
label define eg06a_bpldist_lbl 0111 `"Qism Qasr al-Nil"', add
label define eg06a_bpldist_lbl 0112 `"Qism Bulaq"', add
label define eg06a_bpldist_lbl 0113 `"Qism al-Azbakiyya"', add
label define eg06a_bpldist_lbl 0114 `"Qism al-Darb al-Ahmar-"', add
label define eg06a_bpldist_lbl 0115 `"Qism al-Gamaliyya"', add
label define eg06a_bpldist_lbl 0116 `"Qism Bab al-Sha'riyya"', add
label define eg06a_bpldist_lbl 0117 `"Qism al-Zahir"', add
label define eg06a_bpldist_lbl 0118 `"Qism al-Sharabiyya"', add
label define eg06a_bpldist_lbl 0119 `"Qism Shubra"', add
label define eg06a_bpldist_lbl 0120 `"Qism Rawd al-Farag"', add
label define eg06a_bpldist_lbl 0121 `"Qism al-Sahil"', add
label define eg06a_bpldist_lbl 0122 `"Qism al-Wayli"', add
label define eg06a_bpldist_lbl 0123 `"Qism Hada'iq al-Qubba"', add
label define eg06a_bpldist_lbl 0124 `"Qism al-Zaytun"', add
label define eg06a_bpldist_lbl 0125 `"Qism al-Matariyya"', add
label define eg06a_bpldist_lbl 0126 `"Qism awal Madinat Nasr"', add
label define eg06a_bpldist_lbl 0127 `"Qism thani Madinat Nasr"', add
label define eg06a_bpldist_lbl 0128 `"Qism Misr al-Gadida"', add
label define eg06a_bpldist_lbl 0129 `"Qism al-Nuzha"', add
label define eg06a_bpldist_lbl 0130 `"Qism 'Ayn Shams"', add
label define eg06a_bpldist_lbl 0131 `"Qism al-Zawiyya al-Hamra"', add
label define eg06a_bpldist_lbl 0132 `"Qism al-Salam"', add
label define eg06a_bpldist_lbl 0133 `"Qism al-Zamalik"', add
label define eg06a_bpldist_lbl 0134 `"Qism Minsha'at Nasir"', add
label define eg06a_bpldist_lbl 0135 `"Qism al-Basatin"', add
label define eg06a_bpldist_lbl 0136 `"Qism al-Marg"', add
label define eg06a_bpldist_lbl 0137 `"Qism awal al-Qahira al-Gadida"', add
label define eg06a_bpldist_lbl 0138 `"Qism thani al-Qahira al-Gadida"', add
label define eg06a_bpldist_lbl 0139 `"Qism thalith al-Qahira al-Gadida"', add
label define eg06a_bpldist_lbl 0140 `"Qism al-Shourouq"', add
label define eg06a_bpldist_lbl 0141 `"Qism Madinet Badr"', add
label define eg06a_bpldist_lbl 0199 `"Unidentified district in Cairo"', add
label define eg06a_bpldist_lbl 0201 `"Qism al-Muntaza"', add
label define eg06a_bpldist_lbl 0202 `"Qism awal al-Raml"', add
label define eg06a_bpldist_lbl 0203 `"Qism Sidi Gabir"', add
label define eg06a_bpldist_lbl 0204 `"Qism Bab sharqi"', add
label define eg06a_bpldist_lbl 0205 `"Qism Muharram bey"', add
label define eg06a_bpldist_lbl 0206 `"Qism al-'Attarin"', add
label define eg06a_bpldist_lbl 0207 `"Qism al-Manshiyya"', add
label define eg06a_bpldist_lbl 0208 `"Qism Karmuz"', add
label define eg06a_bpldist_lbl 0209 `"Qism al-Labban"', add
label define eg06a_bpldist_lbl 0210 `"Qism al-Gumruk"', add
label define eg06a_bpldist_lbl 0211 `"Qism Mina al-Basal"', add
label define eg06a_bpldist_lbl 0212 `"Qism al-Dikhila"', add
label define eg06a_bpldist_lbl 0213 `"Qism al-'Amriyya"', add
label define eg06a_bpldist_lbl 0214 `"Qism Burg al-'Arab"', add
label define eg06a_bpldist_lbl 0215 `"Mina' al-Iskandariyya (Alexandria Port police)"', add
label define eg06a_bpldist_lbl 0216 `"Qism Burg al-'Arab al-gadida"', add
label define eg06a_bpldist_lbl 0217 `"Qism thani al-Raml"', add
label define eg06a_bpldist_lbl 0218 `"Sahel Shamali-part"', add
label define eg06a_bpldist_lbl 0299 `"Unidentified district in Alexandria"', add
label define eg06a_bpldist_lbl 0301 `"Qism al-Sharq"', add
label define eg06a_bpldist_lbl 0302 `"Qism al-'Arab"', add
label define eg06a_bpldist_lbl 0303 `"Qism al-Munakh"', add
label define eg06a_bpldist_lbl 0304 `"Qism awal Port Fu'ad"', add
label define eg06a_bpldist_lbl 0305 `"Qism al-Dawahi"', add
label define eg06a_bpldist_lbl 0306 `"Qism awal al-Ganub"', add
label define eg06a_bpldist_lbl 0307 `"Qism al-Zohour"', add
label define eg06a_bpldist_lbl 0308 `"Qism thani Port Fu'ad"', add
label define eg06a_bpldist_lbl 0310 `"Qism Manasra, gharb Port Sa'id"', add
label define eg06a_bpldist_lbl 0311 `"Qism  thani al-Ganub"', add
label define eg06a_bpldist_lbl 0312 `"Port Sa'id port police"', add
label define eg06a_bpldist_lbl 0399 `"Unidentified district in Port Said"', add
label define eg06a_bpldist_lbl 0401 `"Qism al-Suways"', add
label define eg06a_bpldist_lbl 0402 `"Qism al-Arba'in"', add
label define eg06a_bpldist_lbl 0403 `"Qism 'Ataqa"', add
label define eg06a_bpldist_lbl 0404 `"Qism Faysal"', add
label define eg06a_bpldist_lbl 0405 `"Qism al-Ganayin"', add
label define eg06a_bpldist_lbl 0406 `"Suways port police"', add
label define eg06a_bpldist_lbl 0499 `"Unidentified district in Suez"', add
label define eg06a_bpldist_lbl 1101 `"Qism awal Dumyat"', add
label define eg06a_bpldist_lbl 1102 `"Markaz Dumyat"', add
label define eg06a_bpldist_lbl 1103 `"Markaz Fariskur"', add
label define eg06a_bpldist_lbl 1104 `"Markaz Kafr Sa'd"', add
label define eg06a_bpldist_lbl 1105 `"Qism madinet Dumyat al-Gadida"', add
label define eg06a_bpldist_lbl 1106 `"Qism Ra's al-Barr"', add
label define eg06a_bpldist_lbl 1107 `"Markaz al-Zarqa"', add
label define eg06a_bpldist_lbl 1109 `"Qism thani Dumyat"', add
label define eg06a_bpldist_lbl 1199 `"Unidentified district in Damietta"', add
label define eg06a_bpldist_lbl 1201 `"Qism awal al-Mansura"', add
label define eg06a_bpldist_lbl 1202 `"qism thani al-Mansura"', add
label define eg06a_bpldist_lbl 1203 `"Markaz al-Mansura"', add
label define eg06a_bpldist_lbl 1204 `"Markaz Aga"', add
label define eg06a_bpldist_lbl 1205 `"Markaz al-Sinballawayn"', add
label define eg06a_bpldist_lbl 1206 `"Markaz al-Matariyya"', add
label define eg06a_bpldist_lbl 1207 `"Markaz al-Manzala"', add
label define eg06a_bpldist_lbl 1208 `"Markaz Bilqas"', add
label define eg06a_bpldist_lbl 1209 `"Markaz Dikirnis"', add
label define eg06a_bpldist_lbl 1210 `"Markaz Shirbin"', add
label define eg06a_bpldist_lbl 1211 `"Markaz Talkha"', add
label define eg06a_bpldist_lbl 1212 `"Qism Mit Ghamr"', add
label define eg06a_bpldist_lbl 1213 `"Markaz Mit Ghamr"', add
label define eg06a_bpldist_lbl 1214 `"Markaz Minyat al-Nasr"', add
label define eg06a_bpldist_lbl 1215 `"Markaz al-Gamaliyya"', add
label define eg06a_bpldist_lbl 1216 `"Markaz Tami al-Amdid"', add
label define eg06a_bpldist_lbl 1217 `"Markaz Mit Salsil"', add
label define eg06a_bpldist_lbl 1218 `"Markaz Bani Ebeid"', add
label define eg06a_bpldist_lbl 1219 `"Markaz Mahalet Demna"', add
label define eg06a_bpldist_lbl 1220 `"Qism Gamasa"', add
label define eg06a_bpldist_lbl 1221 `"Markaz Nabrowa"', add
label define eg06a_bpldist_lbl 1299 `"Unidentified district in Dakahlia"', add
label define eg06a_bpldist_lbl 1301 `"Qism awal al-Zaqaziq"', add
label define eg06a_bpldist_lbl 1302 `"Qism thani al-Zaqaziq"', add
label define eg06a_bpldist_lbl 1303 `"Markaz al-Zaqaziq"', add
label define eg06a_bpldist_lbl 1304 `"Markaz Abu Hammad"', add
label define eg06a_bpldist_lbl 1305 `"Markaz Abu Kabir"', add
label define eg06a_bpldist_lbl 1306 `"Markaz al-Husayniyya"', add
label define eg06a_bpldist_lbl 1307 `"Qism al-Salihiyya al-Gadida"', add
label define eg06a_bpldist_lbl 1308 `"Markaz Bilbays"', add
label define eg06a_bpldist_lbl 1309 `"Qism awal Madinet 10th of Ramadan"', add
label define eg06a_bpldist_lbl 1310 `"Markaz Dyarb Nigm"', add
label define eg06a_bpldist_lbl 1311 `"Qism Faqus"', add
label define eg06a_bpldist_lbl 1312 `"Qism Faqus"', add
label define eg06a_bpldist_lbl 1313 `"Markaz Kafr Saqr"', add
label define eg06a_bpldist_lbl 1314 `"Markaz Minya al-Qamh"', add
label define eg06a_bpldist_lbl 1315 `"Markaz Hihya"', add
label define eg06a_bpldist_lbl 1316 `"Markaz Mashtul al-Suq"', add
label define eg06a_bpldist_lbl 1317 `"Markaz al-Ibrahimiyya"', add
label define eg06a_bpldist_lbl 1318 `"Markaz Qanayat, al-"', add
label define eg06a_bpldist_lbl 1319 `"Markaz Awlad Saqr"', add
label define eg06a_bpldist_lbl 1320 `"Markaz al-Qurin"', add
label define eg06a_bpldist_lbl 1321 `"Qism thani Madinet 10th of Ramadan"', add
label define eg06a_bpldist_lbl 1399 `"Unidentified district in Sharkia"', add
label define eg06a_bpldist_lbl 1401 `"Qism Banha"', add
label define eg06a_bpldist_lbl 1402 `"Markaz Banha"', add
label define eg06a_bpldist_lbl 1403 `"Markaz al-Khanka"', add
label define eg06a_bpldist_lbl 1404 `"Markaz al-Qanatir al-Khayriyya"', add
label define eg06a_bpldist_lbl 1405 `"Markaz Shibin al-Qanatir"', add
label define eg06a_bpldist_lbl 1406 `"Qism awal Shubra al-Khayma"', add
label define eg06a_bpldist_lbl 1407 `"Qism thani Shubra al-Khayma"', add
label define eg06a_bpldist_lbl 1408 `"Markaz Tukh"', add
label define eg06a_bpldist_lbl 1409 `"Qism Qalyub"', add
label define eg06a_bpldist_lbl 1410 `"Qism Qalyub"', add
label define eg06a_bpldist_lbl 1411 `"Markaz Kafr Shukr"', add
label define eg06a_bpldist_lbl 1412 `"Qism al-Khosous"', add
label define eg06a_bpldist_lbl 1413 `"Qism al-Obour"', add
label define eg06a_bpldist_lbl 1414 `"Qism Qaha"', add
label define eg06a_bpldist_lbl 1499 `"Unidentified district in Kalyobia"', add
label define eg06a_bpldist_lbl 1501 `"Qism Kafr al-Shaykh"', add
label define eg06a_bpldist_lbl 1502 `"Markaz Kafr al-Shaykh"', add
label define eg06a_bpldist_lbl 1503 `"Markaz al-Burullus"', add
label define eg06a_bpldist_lbl 1504 `"Markaz Biyala"', add
label define eg06a_bpldist_lbl 1505 `"Qism Disuq"', add
label define eg06a_bpldist_lbl 1506 `"Markaz Disuq"', add
label define eg06a_bpldist_lbl 1507 `"Markaz Sidi Salim"', add
label define eg06a_bpldist_lbl 1508 `"Markaz Fuwwa"', add
label define eg06a_bpldist_lbl 1509 `"Markaz Qallin"', add
label define eg06a_bpldist_lbl 1510 `"Markaz Mitubas"', add
label define eg06a_bpldist_lbl 1511 `"Markaz al-Hamul"', add
label define eg06a_bpldist_lbl 1512 `"Markaz al-Riyad"', add
label define eg06a_bpldist_lbl 1599 `"Unidentified district in Kafr El Sheikh"', add
label define eg06a_bpldist_lbl 1601 `"Qism awal Tanta"', add
label define eg06a_bpldist_lbl 1602 `"Qism thani Tanta"', add
label define eg06a_bpldist_lbl 1603 `"Markaz Tanta"', add
label define eg06a_bpldist_lbl 1604 `"Markaz al-Santa"', add
label define eg06a_bpldist_lbl 1605 `"Qism awal al-Mahalla al-Kubra"', add
label define eg06a_bpldist_lbl 1606 `"Qism thani al-Mahalla al-Kubra"', add
label define eg06a_bpldist_lbl 1607 `"Markaz al-Mahalla al-Kubra"', add
label define eg06a_bpldist_lbl 1608 `"Markaz Basyun"', add
label define eg06a_bpldist_lbl 1609 `"Markaz Zifta"', add
label define eg06a_bpldist_lbl 1610 `"Markaz Samannud"', add
label define eg06a_bpldist_lbl 1611 `"Markaz Qutur"', add
label define eg06a_bpldist_lbl 1612 `"Markaz Kafr al-Zayyat"', add
label define eg06a_bpldist_lbl 1699 `"Unidentified district in Gharbia"', add
label define eg06a_bpldist_lbl 1701 `"Qism Shibin al-Kum"', add
label define eg06a_bpldist_lbl 1702 `"Markaz Shibin al-Kum"', add
label define eg06a_bpldist_lbl 1703 `"Markaz Ashmun"', add
label define eg06a_bpldist_lbl 1704 `"Markaz al-Bagur"', add
label define eg06a_bpldist_lbl 1705 `"Markaz al-Shuhada'"', add
label define eg06a_bpldist_lbl 1706 `"Markaz Birkat al-Sab'"', add
label define eg06a_bpldist_lbl 1707 `"Markaz Tala"', add
label define eg06a_bpldist_lbl 1708 `"Markaz Quwisna"', add
label define eg06a_bpldist_lbl 1709 `"Markaz Minuf"', add
label define eg06a_bpldist_lbl 1710 `"Qism Sirs al-Layyana"', add
label define eg06a_bpldist_lbl 1711 `"Markaz wa Madinat al-Sadat"', add
label define eg06a_bpldist_lbl 1712 `"Qism Madinat Minuf"', add
label define eg06a_bpldist_lbl 1799 `"Unidentified district in Menoufia"', add
label define eg06a_bpldist_lbl 1801 `"Qism Damanhur"', add
label define eg06a_bpldist_lbl 1802 `"Markaz Damanhur"', add
label define eg06a_bpldist_lbl 1803 `"Markaz Abu al-Matamir"', add
label define eg06a_bpldist_lbl 1804 `"Markaz Abu Hummus"', add
label define eg06a_bpldist_lbl 1805 `"Markaz al-Dilingat"', add
label define eg06a_bpldist_lbl 1806 `"Markaz al-Mahmudiyya"', add
label define eg06a_bpldist_lbl 1807 `"Markaz Ityay al-Barud"', add
label define eg06a_bpldist_lbl 1808 `"Markaz Hush 'Isa"', add
label define eg06a_bpldist_lbl 1809 `"Markaz Rashid"', add
label define eg06a_bpldist_lbl 1810 `"Markaz Shubrakhit"', add
label define eg06a_bpldist_lbl 1811 `"Qism Kafr al-Dawwar"', add
label define eg06a_bpldist_lbl 1812 `"Markaz Kafr al-Dawwar"', add
label define eg06a_bpldist_lbl 1813 `"Markaz Kum Hamada"', add
label define eg06a_bpldist_lbl 1814 `"Markaz Wadi al-Natrun"', add
label define eg06a_bpldist_lbl 1815 `"Markaz al-Rahmaniyya"', add
label define eg06a_bpldist_lbl 1816 `"Markaz Idku"', add
label define eg06a_bpldist_lbl 1817 `"Qism Gharb al Nubaria"', add
label define eg06a_bpldist_lbl 1818 `"Markaz Badr"', add
label define eg06a_bpldist_lbl 1899 `"Unidentified district in Behera"', add
label define eg06a_bpldist_lbl 1901 `"Qism awal al-Isma'iliyya"', add
label define eg06a_bpldist_lbl 1902 `"Qism thani al-Isma'iliyya"', add
label define eg06a_bpldist_lbl 1903 `"Qism thalith al-Isma'iliyya"', add
label define eg06a_bpldist_lbl 1904 `"Markaz al-Isma'iliyya"', add
label define eg06a_bpldist_lbl 1905 `"Markaz al-Tall al-Kabir"', add
label define eg06a_bpldist_lbl 1906 `"Markaz al-Qantara"', add
label define eg06a_bpldist_lbl 1907 `"Markaz Fayid"', add
label define eg06a_bpldist_lbl 1908 `"Qism al-Qantara Sharq"', add
label define eg06a_bpldist_lbl 1999 `"Unidentified district in Ismailia"', add
label define eg06a_bpldist_lbl 2101 `"Qism Imbaba"', add
label define eg06a_bpldist_lbl 2102 `"Qism al-'Aguza"', add
label define eg06a_bpldist_lbl 2103 `"Qism al-Duqqi"', add
label define eg06a_bpldist_lbl 2104 `"Qism al-Giza"', add
label define eg06a_bpldist_lbl 2105 `"Qism Bulaq al-Dakrur"', add
label define eg06a_bpldist_lbl 2106 `"Qism al-Ahram"', add
label define eg06a_bpldist_lbl 2107 `"Qism awal 6th of October"', add
label define eg06a_bpldist_lbl 2108 `"Qism al-Hawamdiyah"', add
label define eg06a_bpldist_lbl 2109 `"Markaz al-Gizah"', add
label define eg06a_bpldist_lbl 2110 `"Markaz al-Badrashayn"', add
label define eg06a_bpldist_lbl 2111 `"Markaz al-Saf"', add
label define eg06a_bpldist_lbl 2112 `"Markaz al-'Ayyatt"', add
label define eg06a_bpldist_lbl 2113 `"Markaz Imbabah"', add
label define eg06a_bpldist_lbl 2114 `"Qism al-Wahat al-Bahariyyah"', add
label define eg06a_bpldist_lbl 2115 `"Markaz Attfih"', add
label define eg06a_bpldist_lbl 2116 `"Markaz Awsim"', add
label define eg06a_bpldist_lbl 2117 `"Qism al-Warraq"', add
label define eg06a_bpldist_lbl 2118 `"Qism al-'Umraniyya"', add
label define eg06a_bpldist_lbl 2119 `"Qism al-Sheikh Zayid"', add
label define eg06a_bpldist_lbl 2120 `"Markaz Kerdasa"', add
label define eg06a_bpldist_lbl 2121 `"Qism thani 6th of October"', add
label define eg06a_bpldist_lbl 2199 `"Unidentified district in Giza"', add
label define eg06a_bpldist_lbl 2201 `"Qism Bani Suwayf"', add
label define eg06a_bpldist_lbl 2202 `"Markaz Bani Suwayf"', add
label define eg06a_bpldist_lbl 2203 `"Qism Bani Suwayf  al gadida"', add
label define eg06a_bpldist_lbl 2204 `"Markaz al-Fashn"', add
label define eg06a_bpldist_lbl 2205 `"Markaz al-Wasta"', add
label define eg06a_bpldist_lbl 2206 `"Markaz Ihnasya"', add
label define eg06a_bpldist_lbl 2207 `"Markaz Biba"', add
label define eg06a_bpldist_lbl 2208 `"Markaz Sumusta"', add
label define eg06a_bpldist_lbl 2209 `"Markaz Nasir"', add
label define eg06a_bpldist_lbl 2299 `"Unidentified district in Beni Suef"', add
label define eg06a_bpldist_lbl 2301 `"Qism al-Fayyum"', add
label define eg06a_bpldist_lbl 2302 `"Markaz al-Fayyum"', add
label define eg06a_bpldist_lbl 2303 `"Markaz Ibshaway"', add
label define eg06a_bpldist_lbl 2304 `"Markaz Itsa"', add
label define eg06a_bpldist_lbl 2305 `"Markaz Sinuris"', add
label define eg06a_bpldist_lbl 2306 `"Markaz Tamiyya"', add
label define eg06a_bpldist_lbl 2307 `"Markaz Youssef El seddik"', add
label define eg06a_bpldist_lbl 2308 `"Fayyum, al- al gadida (qism)"', add
label define eg06a_bpldist_lbl 2399 `"Unidentified district in Fayoum"', add
label define eg06a_bpldist_lbl 2401 `"Qism al-Minya"', add
label define eg06a_bpldist_lbl 2402 `"Qism al-Minya"', add
label define eg06a_bpldist_lbl 2403 `"Qism al-Minya al- al gadida"', add
label define eg06a_bpldist_lbl 2404 `"Markaz Abu Qurqas"', add
label define eg06a_bpldist_lbl 2405 `"Markaz al-'Idwa"', add
label define eg06a_bpldist_lbl 2406 `"Markaz Bani Mazar"', add
label define eg06a_bpldist_lbl 2407 `"Markaz Dayr Mawas"', add
label define eg06a_bpldist_lbl 2408 `"Markaz Samallut"', add
label define eg06a_bpldist_lbl 2409 `"Markaz Matay"', add
label define eg06a_bpldist_lbl 2410 `"Markaz Maghagha"', add
label define eg06a_bpldist_lbl 2411 `"Qism Mallawi"', add
label define eg06a_bpldist_lbl 2412 `"Markaz Mallawi"', add
label define eg06a_bpldist_lbl 2499 `"Unidentified district in Menia"', add
label define eg06a_bpldist_lbl 2501 `"Qism awal Asyut"', add
label define eg06a_bpldist_lbl 2502 `"Qism thani Asyut"', add
label define eg06a_bpldist_lbl 2503 `"Markaz Asyut"', add
label define eg06a_bpldist_lbl 2504 `"Markaz Abnub"', add
label define eg06a_bpldist_lbl 2505 `"Markaz Abu Tig"', add
label define eg06a_bpldist_lbl 2506 `"Markaz al-Badari"', add
label define eg06a_bpldist_lbl 2507 `"Markaz Sahil Salim"', add
label define eg06a_bpldist_lbl 2508 `"Markaz al-Ghanayim"', add
label define eg06a_bpldist_lbl 2509 `"Markaz al-Qusiyya"', add
label define eg06a_bpldist_lbl 2510 `"Markaz Dayrut"', add
label define eg06a_bpldist_lbl 2511 `"Markaz Sidfa"', add
label define eg06a_bpldist_lbl 2512 `"Markaz Manfalut"', add
label define eg06a_bpldist_lbl 2513 `"Markaz al-Fath"', add
label define eg06a_bpldist_lbl 2514 `"Qism Asyut al gadida"', add
label define eg06a_bpldist_lbl 2599 `"Unidentified district in Asyout"', add
label define eg06a_bpldist_lbl 2601 `"Qism awal Suhag"', add
label define eg06a_bpldist_lbl 2602 `"Qism thani Suhag"', add
label define eg06a_bpldist_lbl 2603 `"Markaz Suhag"', add
label define eg06a_bpldist_lbl 2604 `"Markaz Akhmim"', add
label define eg06a_bpldist_lbl 2605 `"Markaz al-Balyana"', add
label define eg06a_bpldist_lbl 2606 `"Markaz al-Maragha"', add
label define eg06a_bpldist_lbl 2607 `"Markaz al-Minsha'a"', add
label define eg06a_bpldist_lbl 2608 `"Markaz Dar al-Salam (Awlad Tuq Sharq)"', add
label define eg06a_bpldist_lbl 2609 `"Qism Girga"', add
label define eg06a_bpldist_lbl 2610 `"Markaz Girga"', add
label define eg06a_bpldist_lbl 2611 `"Markaz Guhayna al-gharbiyya"', add
label define eg06a_bpldist_lbl 2612 `"Markaz Saqulta"', add
label define eg06a_bpldist_lbl 2613 `"Markaz Tima"', add
label define eg06a_bpldist_lbl 2614 `"Markaz Tahta"', add
label define eg06a_bpldist_lbl 2615 `"Qism Tahta"', add
label define eg06a_bpldist_lbl 2616 `"Qism Kawthar"', add
label define eg06a_bpldist_lbl 2617 `"Markaz Osayrat"', add
label define eg06a_bpldist_lbl 2699 `"Unidentified district in Suhag"', add
label define eg06a_bpldist_lbl 2701 `"Qism Qina"', add
label define eg06a_bpldist_lbl 2702 `"Markaz Qina"', add
label define eg06a_bpldist_lbl 2703 `"Markaz Abu Tisht"', add
label define eg06a_bpldist_lbl 2704 `"Markaz Armant"', add
label define eg06a_bpldist_lbl 2705 `"Markaz Isna"', add
label define eg06a_bpldist_lbl 2706 `"Markaz Dishna"', add
label define eg06a_bpldist_lbl 2707 `"Markaz Qus"', add
label define eg06a_bpldist_lbl 2708 `"Markaz Nag' Hammadi"', add
label define eg06a_bpldist_lbl 2709 `"Markaz Naqada"', add
label define eg06a_bpldist_lbl 2710 `"Markaz Farshut"', add
label define eg06a_bpldist_lbl 2711 `"Markaz Qift"', add
label define eg06a_bpldist_lbl 2712 `"Markaz al-Waqf"', add
label define eg06a_bpldist_lbl 2799 `"Unidentified district in Qena"', add
label define eg06a_bpldist_lbl 2801 `"Qism Aswan"', add
label define eg06a_bpldist_lbl 2802 `"Markaz Aswan"', add
label define eg06a_bpldist_lbl 2803 `"Markaz Idfu"', add
label define eg06a_bpldist_lbl 2804 `"Markaz Kum Umbu"', add
label define eg06a_bpldist_lbl 2805 `"Markaz Nasr"', add
label define eg06a_bpldist_lbl 2806 `"Markaz Daraw"', add
label define eg06a_bpldist_lbl 2807 `"Markaz Abu Simbel"', add
label define eg06a_bpldist_lbl 2808 `"Aswan al gadida (qism)"', add
label define eg06a_bpldist_lbl 2899 `"Unidentified district in Aswan"', add
label define eg06a_bpldist_lbl 2901 `"Qism al-Uqsur"', add
label define eg06a_bpldist_lbl 2902 `"Markaz al-Uqsur"', add
label define eg06a_bpldist_lbl 2903 `"Markaz Shortet Tiba"', add
label define eg06a_bpldist_lbl 2999 `"Unidentified district in Luxor"', add
label define eg06a_bpldist_lbl 3101 `"Qism awal al-Ghardaqa"', add
label define eg06a_bpldist_lbl 3102 `"Qism al-Qusayr"', add
label define eg06a_bpldist_lbl 3103 `"Qism Safaga"', add
label define eg06a_bpldist_lbl 3104 `"Qism Marsa 'Alam"', add
label define eg06a_bpldist_lbl 3105 `"Qism Ra's Gharib"', add
label define eg06a_bpldist_lbl 3106 `"Qism al-Shallatin"', add
label define eg06a_bpldist_lbl 3107 `"Qism Halayib"', add
label define eg06a_bpldist_lbl 3108 `"Qism thani al-Ghardaqa"', add
label define eg06a_bpldist_lbl 3199 `"Unidentified district in Red Sea"', add
label define eg06a_bpldist_lbl 3201 `"Qism Wahat al-kharga"', add
label define eg06a_bpldist_lbl 3202 `"Markaz Wahat al-dakhla"', add
label define eg06a_bpldist_lbl 3203 `"Markaz al-Farafra"', add
label define eg06a_bpldist_lbl 3204 `"Markaz Barees"', add
label define eg06a_bpldist_lbl 3299 `"Unidentified district in New Valley"', add
label define eg06a_bpldist_lbl 3301 `"Qism Marsa Matruh"', add
label define eg06a_bpldist_lbl 3302 `"Qism al-Hammam"', add
label define eg06a_bpldist_lbl 3303 `"qism al-Sallum"', add
label define eg06a_bpldist_lbl 3304 `"Qism al-Dab'a"', add
label define eg06a_bpldist_lbl 3305 `"Qism Sidi Barrani"', add
label define eg06a_bpldist_lbl 3306 `"Qism Siwa"', add
label define eg06a_bpldist_lbl 3399 `"Unidentified district in Matroh"', add
label define eg06a_bpldist_lbl 3401 `"Qism awal al-'Arish"', add
label define eg06a_bpldist_lbl 3402 `"Qism thani al-'Arish"', add
label define eg06a_bpldist_lbl 3403 `"Qism thalithal-'Arish"', add
label define eg06a_bpldist_lbl 3404 `"Qism rabi' al-'Arish"', add
label define eg06a_bpldist_lbl 3405 `"Qism Bi'r al-'Abd"', add
label define eg06a_bpldist_lbl 3406 `"Qism al-Hasana"', add
label define eg06a_bpldist_lbl 3407 `"Qism Nakhl"', add
label define eg06a_bpldist_lbl 3408 `"Qism al-Shaykh Zuwayd"', add
label define eg06a_bpldist_lbl 3409 `"Qism Rafah"', add
label define eg06a_bpldist_lbl 3410 `"Qism Rummana"', add
label define eg06a_bpldist_lbl 3411 `"Qism al-Qasima"', add
label define eg06a_bpldist_lbl 3499 `"Unidentified district in North Sinai"', add
label define eg06a_bpldist_lbl 3501 `"Qism al-Tur"', add
label define eg06a_bpldist_lbl 3502 `"Qism Ra's Sudr"', add
label define eg06a_bpldist_lbl 3503 `"Qism Abu Rudays"', add
label define eg06a_bpldist_lbl 3504 `"Qism Sant Caterin"', add
label define eg06a_bpldist_lbl 3505 `"Qism Sharm al-Shaykh"', add
label define eg06a_bpldist_lbl 3506 `"Qism Dahab"', add
label define eg06a_bpldist_lbl 3507 `"Qism Nuwayba'"', add
label define eg06a_bpldist_lbl 3599 `"Unidentified district in South Sinai"', add
label define eg06a_bpldist_lbl 8000 `"Abroad"', add
label define eg06a_bpldist_lbl 9998 `"Unknown"', add
label define eg06a_bpldist_lbl 9999 `"NIU (not in universe)"', add
label values eg06a_bpldist eg06a_bpldist_lbl

label define eg06a_bplurb_lbl 1 `"Urban"'
label define eg06a_bplurb_lbl 2 `"Rural"', add
label define eg06a_bplurb_lbl 8 `"Unknown"', add
label define eg06a_bplurb_lbl 9 `"NIU (not in universe)"', add
label values eg06a_bplurb eg06a_bplurb_lbl

label define eg06a_durres_lbl 000 `"0"'
label define eg06a_durres_lbl 001 `"1"', add
label define eg06a_durres_lbl 002 `"2"', add
label define eg06a_durres_lbl 003 `"3"', add
label define eg06a_durres_lbl 004 `"4"', add
label define eg06a_durres_lbl 005 `"5"', add
label define eg06a_durres_lbl 006 `"6"', add
label define eg06a_durres_lbl 007 `"7"', add
label define eg06a_durres_lbl 008 `"8"', add
label define eg06a_durres_lbl 009 `"9"', add
label define eg06a_durres_lbl 010 `"10"', add
label define eg06a_durres_lbl 011 `"11"', add
label define eg06a_durres_lbl 012 `"12"', add
label define eg06a_durres_lbl 013 `"13"', add
label define eg06a_durres_lbl 014 `"14"', add
label define eg06a_durres_lbl 015 `"15"', add
label define eg06a_durres_lbl 016 `"16"', add
label define eg06a_durres_lbl 017 `"17"', add
label define eg06a_durres_lbl 018 `"18"', add
label define eg06a_durres_lbl 019 `"19"', add
label define eg06a_durres_lbl 020 `"20"', add
label define eg06a_durres_lbl 021 `"21"', add
label define eg06a_durres_lbl 022 `"22"', add
label define eg06a_durres_lbl 023 `"23"', add
label define eg06a_durres_lbl 024 `"24"', add
label define eg06a_durres_lbl 025 `"25"', add
label define eg06a_durres_lbl 026 `"26"', add
label define eg06a_durres_lbl 027 `"27"', add
label define eg06a_durres_lbl 028 `"28"', add
label define eg06a_durres_lbl 029 `"29"', add
label define eg06a_durres_lbl 030 `"30"', add
label define eg06a_durres_lbl 031 `"31"', add
label define eg06a_durres_lbl 032 `"32"', add
label define eg06a_durres_lbl 033 `"33"', add
label define eg06a_durres_lbl 034 `"34"', add
label define eg06a_durres_lbl 035 `"35"', add
label define eg06a_durres_lbl 036 `"36"', add
label define eg06a_durres_lbl 037 `"37"', add
label define eg06a_durres_lbl 038 `"38"', add
label define eg06a_durres_lbl 039 `"39"', add
label define eg06a_durres_lbl 040 `"40"', add
label define eg06a_durres_lbl 041 `"41"', add
label define eg06a_durres_lbl 042 `"42"', add
label define eg06a_durres_lbl 043 `"43"', add
label define eg06a_durres_lbl 044 `"44"', add
label define eg06a_durres_lbl 045 `"45"', add
label define eg06a_durres_lbl 046 `"46"', add
label define eg06a_durres_lbl 047 `"47"', add
label define eg06a_durres_lbl 048 `"48"', add
label define eg06a_durres_lbl 049 `"49"', add
label define eg06a_durres_lbl 050 `"50"', add
label define eg06a_durres_lbl 051 `"51"', add
label define eg06a_durres_lbl 052 `"52"', add
label define eg06a_durres_lbl 053 `"53"', add
label define eg06a_durres_lbl 054 `"54"', add
label define eg06a_durres_lbl 055 `"55"', add
label define eg06a_durres_lbl 056 `"56"', add
label define eg06a_durres_lbl 057 `"57"', add
label define eg06a_durres_lbl 058 `"58"', add
label define eg06a_durres_lbl 059 `"59"', add
label define eg06a_durres_lbl 060 `"60"', add
label define eg06a_durres_lbl 061 `"61"', add
label define eg06a_durres_lbl 062 `"62"', add
label define eg06a_durres_lbl 063 `"63"', add
label define eg06a_durres_lbl 064 `"64"', add
label define eg06a_durres_lbl 065 `"65"', add
label define eg06a_durres_lbl 066 `"66"', add
label define eg06a_durres_lbl 067 `"67"', add
label define eg06a_durres_lbl 068 `"68"', add
label define eg06a_durres_lbl 069 `"69"', add
label define eg06a_durres_lbl 070 `"70"', add
label define eg06a_durres_lbl 071 `"71"', add
label define eg06a_durres_lbl 072 `"72"', add
label define eg06a_durres_lbl 073 `"73"', add
label define eg06a_durres_lbl 074 `"74"', add
label define eg06a_durres_lbl 075 `"75"', add
label define eg06a_durres_lbl 076 `"76"', add
label define eg06a_durres_lbl 077 `"77"', add
label define eg06a_durres_lbl 078 `"78"', add
label define eg06a_durres_lbl 079 `"79"', add
label define eg06a_durres_lbl 080 `"80"', add
label define eg06a_durres_lbl 081 `"81"', add
label define eg06a_durres_lbl 082 `"82"', add
label define eg06a_durres_lbl 083 `"83"', add
label define eg06a_durres_lbl 084 `"84"', add
label define eg06a_durres_lbl 085 `"85"', add
label define eg06a_durres_lbl 086 `"86"', add
label define eg06a_durres_lbl 087 `"87"', add
label define eg06a_durres_lbl 088 `"88"', add
label define eg06a_durres_lbl 089 `"89"', add
label define eg06a_durres_lbl 090 `"90"', add
label define eg06a_durres_lbl 091 `"91"', add
label define eg06a_durres_lbl 092 `"92"', add
label define eg06a_durres_lbl 093 `"93"', add
label define eg06a_durres_lbl 094 `"94"', add
label define eg06a_durres_lbl 095 `"95"', add
label define eg06a_durres_lbl 096 `"96"', add
label define eg06a_durres_lbl 097 `"97"', add
label define eg06a_durres_lbl 098 `"98"', add
label define eg06a_durres_lbl 099 `"99+"', add
label define eg06a_durres_lbl 998 `"Unknown"', add
label define eg06a_durres_lbl 999 `"NIU (not in universe)"', add
label values eg06a_durres eg06a_durres_lbl

label define eg06a_prevgov_lbl 01 `"Cairo"'
label define eg06a_prevgov_lbl 02 `"Alexandria"', add
label define eg06a_prevgov_lbl 03 `"Port Said"', add
label define eg06a_prevgov_lbl 04 `"Suez"', add
label define eg06a_prevgov_lbl 11 `"Damietta"', add
label define eg06a_prevgov_lbl 12 `"Dakahlia"', add
label define eg06a_prevgov_lbl 13 `"Sharkia"', add
label define eg06a_prevgov_lbl 14 `"Kalyobia"', add
label define eg06a_prevgov_lbl 15 `"Kafr El Sheikh"', add
label define eg06a_prevgov_lbl 16 `"Gharbia"', add
label define eg06a_prevgov_lbl 17 `"Menoufia"', add
label define eg06a_prevgov_lbl 18 `"Behera"', add
label define eg06a_prevgov_lbl 19 `"Ismailia"', add
label define eg06a_prevgov_lbl 21 `"Giza"', add
label define eg06a_prevgov_lbl 22 `"Beni Suef"', add
label define eg06a_prevgov_lbl 23 `"Fayoum"', add
label define eg06a_prevgov_lbl 24 `"Menia"', add
label define eg06a_prevgov_lbl 25 `"Asyout"', add
label define eg06a_prevgov_lbl 26 `"Suhag"', add
label define eg06a_prevgov_lbl 27 `"Qena"', add
label define eg06a_prevgov_lbl 28 `"Aswan"', add
label define eg06a_prevgov_lbl 29 `"Luxor"', add
label define eg06a_prevgov_lbl 31 `"Red Sea"', add
label define eg06a_prevgov_lbl 32 `"New Valley"', add
label define eg06a_prevgov_lbl 33 `"Matroh"', add
label define eg06a_prevgov_lbl 34 `"North Sinai"', add
label define eg06a_prevgov_lbl 35 `"South Sinai"', add
label define eg06a_prevgov_lbl 80 `"Abroad"', add
label define eg06a_prevgov_lbl 99 `"NIU (not in universe)"', add
label values eg06a_prevgov eg06a_prevgov_lbl

label define eg06a_prevdist_lbl 0101 `"Qism al-Tibbin"'
label define eg06a_prevdist_lbl 0102 `"Qism Hilwan"', add
label define eg06a_prevdist_lbl 0103 `"Qism 15 May"', add
label define eg06a_prevdist_lbl 0104 `"Qism al-Ma'adi"', add
label define eg06a_prevdist_lbl 0105 `"Qism Turah"', add
label define eg06a_prevdist_lbl 0106 `"Qism Misr al-Qadima"', add
label define eg06a_prevdist_lbl 0107 `"Qism Sayyida Zaynab, al-"', add
label define eg06a_prevdist_lbl 0108 `"Qism al-Khalifa"', add
label define eg06a_prevdist_lbl 0109 `"Qism 'Abdin"', add
label define eg06a_prevdist_lbl 0110 `"Qism al-Muski"', add
label define eg06a_prevdist_lbl 0111 `"Qism Qasr al-Nil"', add
label define eg06a_prevdist_lbl 0112 `"Qism Bulaq"', add
label define eg06a_prevdist_lbl 0113 `"Qism al-Azbakiyya"', add
label define eg06a_prevdist_lbl 0114 `"Qism al-Darb al-Ahmar-"', add
label define eg06a_prevdist_lbl 0115 `"Qism al-Gamaliyya"', add
label define eg06a_prevdist_lbl 0116 `"Qism Bab al-Sha'riyya"', add
label define eg06a_prevdist_lbl 0117 `"Qism al-Zahir"', add
label define eg06a_prevdist_lbl 0118 `"Qism al-Sharabiyya"', add
label define eg06a_prevdist_lbl 0119 `"Qism Shubra"', add
label define eg06a_prevdist_lbl 0120 `"Qism Rawd al-Farag"', add
label define eg06a_prevdist_lbl 0121 `"Qism al-Sahil"', add
label define eg06a_prevdist_lbl 0122 `"Qism al-Wayli"', add
label define eg06a_prevdist_lbl 0123 `"Qism Hada'iq al-Qubba"', add
label define eg06a_prevdist_lbl 0124 `"Qism al-Zaytun"', add
label define eg06a_prevdist_lbl 0125 `"Qism al-Matariyya"', add
label define eg06a_prevdist_lbl 0126 `"Qism awal Madinat Nasr"', add
label define eg06a_prevdist_lbl 0127 `"Qism thani Madinat Nasr"', add
label define eg06a_prevdist_lbl 0128 `"Qism Misr al-Gadida"', add
label define eg06a_prevdist_lbl 0129 `"Qism al-Nuzha"', add
label define eg06a_prevdist_lbl 0130 `"Qism 'Ayn Shams"', add
label define eg06a_prevdist_lbl 0131 `"Qism al-Zawiyya al-Hamra"', add
label define eg06a_prevdist_lbl 0132 `"Qism al-Salam"', add
label define eg06a_prevdist_lbl 0133 `"Qism al-Zamalik"', add
label define eg06a_prevdist_lbl 0134 `"Qism Minsha'at Nasir"', add
label define eg06a_prevdist_lbl 0135 `"Qism al-Basatin"', add
label define eg06a_prevdist_lbl 0136 `"Qism al-Marg"', add
label define eg06a_prevdist_lbl 0137 `"Qism awal al-Qahira al-Gadida"', add
label define eg06a_prevdist_lbl 0138 `"Qism thani al-Qahira al-Gadida"', add
label define eg06a_prevdist_lbl 0139 `"Qism thalith al-Qahira al-Gadida"', add
label define eg06a_prevdist_lbl 0140 `"Qism al-Shourouq"', add
label define eg06a_prevdist_lbl 0141 `"Qism Madinet Badr"', add
label define eg06a_prevdist_lbl 0199 `"Unidentified district in Cairo"', add
label define eg06a_prevdist_lbl 0201 `"Qism al-Muntaza"', add
label define eg06a_prevdist_lbl 0202 `"Qism awal al-Raml"', add
label define eg06a_prevdist_lbl 0203 `"Qism Sidi Gabir"', add
label define eg06a_prevdist_lbl 0204 `"Qism Bab sharqi"', add
label define eg06a_prevdist_lbl 0205 `"Qism Muharram bey"', add
label define eg06a_prevdist_lbl 0206 `"Qism al-'Attarin"', add
label define eg06a_prevdist_lbl 0207 `"Qism al-Manshiyya"', add
label define eg06a_prevdist_lbl 0208 `"Qism Karmuz"', add
label define eg06a_prevdist_lbl 0209 `"Qism al-Labban"', add
label define eg06a_prevdist_lbl 0210 `"Qism al-Gumruk"', add
label define eg06a_prevdist_lbl 0211 `"Qism Mina al-Basal"', add
label define eg06a_prevdist_lbl 0212 `"Qism al-Dikhila"', add
label define eg06a_prevdist_lbl 0213 `"Qism al-'Amriyya"', add
label define eg06a_prevdist_lbl 0214 `"Qism Burg al-'Arab"', add
label define eg06a_prevdist_lbl 0215 `"Mina' al-Iskandariyya (Alexandria Port police)"', add
label define eg06a_prevdist_lbl 0217 `"Qism thani al-Raml"', add
label define eg06a_prevdist_lbl 0299 `"Unidentified district in Alexandria"', add
label define eg06a_prevdist_lbl 0301 `"Qism al-Sharq"', add
label define eg06a_prevdist_lbl 0302 `"Qism al-'Arab"', add
label define eg06a_prevdist_lbl 0303 `"Qism al-Munakh"', add
label define eg06a_prevdist_lbl 0304 `"Qism awal Port Fu'ad"', add
label define eg06a_prevdist_lbl 0305 `"Qism al-Dawahi"', add
label define eg06a_prevdist_lbl 0307 `"Qism al-Zohour"', add
label define eg06a_prevdist_lbl 0308 `"Qism thani Port Fu'ad"', add
label define eg06a_prevdist_lbl 0310 `"Qism Manasra, gharb Port Sa'id"', add
label define eg06a_prevdist_lbl 0312 `"Port Sa'id port police"', add
label define eg06a_prevdist_lbl 0399 `"Unidentified district in Port Said"', add
label define eg06a_prevdist_lbl 0401 `"Qism al-Suways"', add
label define eg06a_prevdist_lbl 0402 `"Qism al-Arba'in"', add
label define eg06a_prevdist_lbl 0404 `"Qism Faysal"', add
label define eg06a_prevdist_lbl 0405 `"Qism al-Ganayin"', add
label define eg06a_prevdist_lbl 0499 `"Unidentified district in Suez"', add
label define eg06a_prevdist_lbl 1101 `"Qism awal Dumyat"', add
label define eg06a_prevdist_lbl 1102 `"Markaz Dumyat"', add
label define eg06a_prevdist_lbl 1103 `"Markaz Fariskur"', add
label define eg06a_prevdist_lbl 1104 `"Markaz Kafr Sa'd"', add
label define eg06a_prevdist_lbl 1106 `"Qism Ra's al-Barr"', add
label define eg06a_prevdist_lbl 1107 `"Markaz al-Zarqa"', add
label define eg06a_prevdist_lbl 1109 `"Qism thani Dumyat"', add
label define eg06a_prevdist_lbl 1199 `"Unidentified district in Damietta"', add
label define eg06a_prevdist_lbl 1201 `"Qism awal al-Mansura"', add
label define eg06a_prevdist_lbl 1202 `"qism thani al-Mansura"', add
label define eg06a_prevdist_lbl 1203 `"Markaz al-Mansura"', add
label define eg06a_prevdist_lbl 1204 `"Markaz Aga"', add
label define eg06a_prevdist_lbl 1205 `"Markaz al-Sinballawayn"', add
label define eg06a_prevdist_lbl 1206 `"Markaz al-Matariyya"', add
label define eg06a_prevdist_lbl 1207 `"Markaz al-Manzala"', add
label define eg06a_prevdist_lbl 1208 `"Markaz Bilqas"', add
label define eg06a_prevdist_lbl 1209 `"Markaz Dikirnis"', add
label define eg06a_prevdist_lbl 1210 `"Markaz Shirbin"', add
label define eg06a_prevdist_lbl 1211 `"Markaz Talkha"', add
label define eg06a_prevdist_lbl 1212 `"Qism Mit Ghamr"', add
label define eg06a_prevdist_lbl 1213 `"Markaz Mit Ghamr"', add
label define eg06a_prevdist_lbl 1214 `"Markaz Minyat al-Nasr"', add
label define eg06a_prevdist_lbl 1215 `"Markaz al-Gamaliyya"', add
label define eg06a_prevdist_lbl 1216 `"Markaz Tami al-Amdid"', add
label define eg06a_prevdist_lbl 1217 `"Markaz Mit Salsil"', add
label define eg06a_prevdist_lbl 1218 `"Markaz Bani Ebeid"', add
label define eg06a_prevdist_lbl 1221 `"Markaz Nabrowa"', add
label define eg06a_prevdist_lbl 1299 `"Unidentified district in Dakahlia"', add
label define eg06a_prevdist_lbl 1301 `"Qism awal al-Zaqaziq"', add
label define eg06a_prevdist_lbl 1302 `"Qism thani al-Zaqaziq"', add
label define eg06a_prevdist_lbl 1303 `"Markaz al-Zaqaziq"', add
label define eg06a_prevdist_lbl 1304 `"Markaz Abu Hammad"', add
label define eg06a_prevdist_lbl 1305 `"Markaz Abu Kabir"', add
label define eg06a_prevdist_lbl 1306 `"Markaz al-Husayniyya"', add
label define eg06a_prevdist_lbl 1307 `"Qism al-Salihiyya al-Gadida"', add
label define eg06a_prevdist_lbl 1308 `"Markaz Bilbays"', add
label define eg06a_prevdist_lbl 1310 `"Markaz Dyarb Nigm"', add
label define eg06a_prevdist_lbl 1311 `"Qism Faqus"', add
label define eg06a_prevdist_lbl 1312 `"Qism Faqus"', add
label define eg06a_prevdist_lbl 1313 `"Markaz Kafr Saqr"', add
label define eg06a_prevdist_lbl 1314 `"Markaz Minya al-Qamh"', add
label define eg06a_prevdist_lbl 1315 `"Markaz Hihya"', add
label define eg06a_prevdist_lbl 1316 `"Markaz Mashtul al-Suq"', add
label define eg06a_prevdist_lbl 1317 `"Markaz al-Ibrahimiyya"', add
label define eg06a_prevdist_lbl 1318 `"Markaz Qanayat, al-"', add
label define eg06a_prevdist_lbl 1319 `"Markaz Awlad Saqr"', add
label define eg06a_prevdist_lbl 1320 `"Markaz al-Qurin"', add
label define eg06a_prevdist_lbl 1399 `"Unidentified district in Sharkia"', add
label define eg06a_prevdist_lbl 1401 `"Qism Banha"', add
label define eg06a_prevdist_lbl 1402 `"Markaz Banha"', add
label define eg06a_prevdist_lbl 1403 `"Markaz al-Khanka"', add
label define eg06a_prevdist_lbl 1404 `"Markaz al-Qanatir al-Khayriyya"', add
label define eg06a_prevdist_lbl 1405 `"Markaz Shibin al-Qanatir"', add
label define eg06a_prevdist_lbl 1406 `"Qism awal Shubra al-Khayma"', add
label define eg06a_prevdist_lbl 1407 `"Qism thani Shubra al-Khayma"', add
label define eg06a_prevdist_lbl 1408 `"Markaz Tukh"', add
label define eg06a_prevdist_lbl 1409 `"Qism Qalyub"', add
label define eg06a_prevdist_lbl 1410 `"Qism Qalyub"', add
label define eg06a_prevdist_lbl 1411 `"Markaz Kafr Shukr"', add
label define eg06a_prevdist_lbl 1412 `"Qism al-Khosous"', add
label define eg06a_prevdist_lbl 1414 `"Qism Qaha"', add
label define eg06a_prevdist_lbl 1499 `"Unidentified district in Kalyobia"', add
label define eg06a_prevdist_lbl 1501 `"Qism Kafr al-Shaykh"', add
label define eg06a_prevdist_lbl 1502 `"Markaz Kafr al-Shaykh"', add
label define eg06a_prevdist_lbl 1503 `"Markaz al-Burullus"', add
label define eg06a_prevdist_lbl 1504 `"Markaz Biyala"', add
label define eg06a_prevdist_lbl 1505 `"Qism Disuq"', add
label define eg06a_prevdist_lbl 1506 `"Markaz Disuq"', add
label define eg06a_prevdist_lbl 1507 `"Markaz Sidi Salim"', add
label define eg06a_prevdist_lbl 1508 `"Markaz Fuwwa"', add
label define eg06a_prevdist_lbl 1509 `"Markaz Qallin"', add
label define eg06a_prevdist_lbl 1510 `"Markaz Mitubas"', add
label define eg06a_prevdist_lbl 1511 `"Markaz al-Hamul"', add
label define eg06a_prevdist_lbl 1512 `"Markaz al-Riyad"', add
label define eg06a_prevdist_lbl 1599 `"Unidentified district in Kafr El Sheikh"', add
label define eg06a_prevdist_lbl 1601 `"Qism awal Tanta"', add
label define eg06a_prevdist_lbl 1602 `"Qism thani Tanta"', add
label define eg06a_prevdist_lbl 1603 `"Markaz Tanta"', add
label define eg06a_prevdist_lbl 1604 `"Markaz al-Santa"', add
label define eg06a_prevdist_lbl 1605 `"Qism awal al-Mahalla al-Kubra"', add
label define eg06a_prevdist_lbl 1606 `"Qism thani al-Mahalla al-Kubra"', add
label define eg06a_prevdist_lbl 1607 `"Markaz al-Mahalla al-Kubra"', add
label define eg06a_prevdist_lbl 1608 `"Markaz Basyun"', add
label define eg06a_prevdist_lbl 1609 `"Markaz Zifta"', add
label define eg06a_prevdist_lbl 1610 `"Markaz Samannud"', add
label define eg06a_prevdist_lbl 1611 `"Markaz Qutur"', add
label define eg06a_prevdist_lbl 1612 `"Markaz Kafr al-Zayyat"', add
label define eg06a_prevdist_lbl 1699 `"Unidentified district in Gharbia"', add
label define eg06a_prevdist_lbl 1701 `"Qism Shibin al-Kum"', add
label define eg06a_prevdist_lbl 1702 `"Markaz Shibin al-Kum"', add
label define eg06a_prevdist_lbl 1703 `"Markaz Ashmun"', add
label define eg06a_prevdist_lbl 1704 `"Markaz al-Bagur"', add
label define eg06a_prevdist_lbl 1705 `"Markaz al-Shuhada'"', add
label define eg06a_prevdist_lbl 1706 `"Markaz Birkat al-Sab'"', add
label define eg06a_prevdist_lbl 1707 `"Markaz Tala"', add
label define eg06a_prevdist_lbl 1708 `"Markaz Quwisna"', add
label define eg06a_prevdist_lbl 1709 `"Markaz Minuf"', add
label define eg06a_prevdist_lbl 1710 `"Qism Sirs al-Layyana"', add
label define eg06a_prevdist_lbl 1711 `"Markaz wa Madinat al-Sadat"', add
label define eg06a_prevdist_lbl 1712 `"Qism Madinat Minuf"', add
label define eg06a_prevdist_lbl 1799 `"Unidentified district in Menoufia"', add
label define eg06a_prevdist_lbl 1801 `"Qism Damanhur"', add
label define eg06a_prevdist_lbl 1802 `"Markaz Damanhur"', add
label define eg06a_prevdist_lbl 1803 `"Markaz Abu al-Matamir"', add
label define eg06a_prevdist_lbl 1804 `"Markaz Abu Hummus"', add
label define eg06a_prevdist_lbl 1805 `"Markaz al-Dilingat"', add
label define eg06a_prevdist_lbl 1806 `"Markaz al-Mahmudiyya"', add
label define eg06a_prevdist_lbl 1807 `"Markaz Ityay al-Barud"', add
label define eg06a_prevdist_lbl 1808 `"Markaz Hush 'Isa"', add
label define eg06a_prevdist_lbl 1809 `"Markaz Rashid"', add
label define eg06a_prevdist_lbl 1810 `"Markaz Shubrakhit"', add
label define eg06a_prevdist_lbl 1811 `"Qism Kafr al-Dawwar"', add
label define eg06a_prevdist_lbl 1812 `"Markaz Kafr al-Dawwar"', add
label define eg06a_prevdist_lbl 1813 `"Markaz Kum Hamada"', add
label define eg06a_prevdist_lbl 1814 `"Markaz Wadi al-Natrun"', add
label define eg06a_prevdist_lbl 1815 `"Markaz al-Rahmaniyya"', add
label define eg06a_prevdist_lbl 1816 `"Markaz Idku"', add
label define eg06a_prevdist_lbl 1818 `"Markaz Badr"', add
label define eg06a_prevdist_lbl 1899 `"Unidentified district in Behera"', add
label define eg06a_prevdist_lbl 1901 `"Qism awal al-Isma'iliyya"', add
label define eg06a_prevdist_lbl 1902 `"Qism thani al-Isma'iliyya"', add
label define eg06a_prevdist_lbl 1903 `"Qism thalith al-Isma'iliyya"', add
label define eg06a_prevdist_lbl 1904 `"Markaz al-Isma'iliyya"', add
label define eg06a_prevdist_lbl 1905 `"Markaz al-Tall al-Kabir"', add
label define eg06a_prevdist_lbl 1906 `"Markaz al-Qantara"', add
label define eg06a_prevdist_lbl 1907 `"Markaz Fayid"', add
label define eg06a_prevdist_lbl 1908 `"Qism al-Qantara Sharq"', add
label define eg06a_prevdist_lbl 1999 `"Unidentified district in Ismailia"', add
label define eg06a_prevdist_lbl 2101 `"Qism Imbaba"', add
label define eg06a_prevdist_lbl 2102 `"Qism al-'Aguza"', add
label define eg06a_prevdist_lbl 2103 `"Qism al-Duqqi"', add
label define eg06a_prevdist_lbl 2104 `"Qism al-Giza"', add
label define eg06a_prevdist_lbl 2105 `"Qism Bulaq al-Dakrur"', add
label define eg06a_prevdist_lbl 2106 `"Qism al-Ahram"', add
label define eg06a_prevdist_lbl 2107 `"Qism awal 6th of October"', add
label define eg06a_prevdist_lbl 2108 `"Qism al-Hawamdiyah"', add
label define eg06a_prevdist_lbl 2109 `"Markaz al-Gizah"', add
label define eg06a_prevdist_lbl 2110 `"Markaz al-Badrashayn"', add
label define eg06a_prevdist_lbl 2111 `"Markaz al-Saf"', add
label define eg06a_prevdist_lbl 2112 `"Markaz al-'Ayyatt"', add
label define eg06a_prevdist_lbl 2113 `"Markaz Imbabah"', add
label define eg06a_prevdist_lbl 2114 `"Qism al-Wahat al-Bahariyyah"', add
label define eg06a_prevdist_lbl 2115 `"Markaz Attfih"', add
label define eg06a_prevdist_lbl 2116 `"Markaz Awsim"', add
label define eg06a_prevdist_lbl 2117 `"Qism al-Warraq"', add
label define eg06a_prevdist_lbl 2118 `"Qism al-'Umraniyya"', add
label define eg06a_prevdist_lbl 2120 `"Markaz Kerdasa"', add
label define eg06a_prevdist_lbl 2121 `"Qism thani 6th of October"', add
label define eg06a_prevdist_lbl 2199 `"Unidentified district in Giza"', add
label define eg06a_prevdist_lbl 2201 `"Qism Bani Suwayf"', add
label define eg06a_prevdist_lbl 2202 `"Markaz Bani Suwayf"', add
label define eg06a_prevdist_lbl 2203 `"Qism Bani Suwayf  al gadida"', add
label define eg06a_prevdist_lbl 2204 `"Markaz al-Fashn"', add
label define eg06a_prevdist_lbl 2205 `"Markaz al-Wasta"', add
label define eg06a_prevdist_lbl 2206 `"Markaz Ihnasya"', add
label define eg06a_prevdist_lbl 2207 `"Markaz Biba"', add
label define eg06a_prevdist_lbl 2208 `"Markaz Sumusta"', add
label define eg06a_prevdist_lbl 2209 `"Markaz Nasir"', add
label define eg06a_prevdist_lbl 2299 `"Unidentified district in Beni Suef"', add
label define eg06a_prevdist_lbl 2301 `"Qism al-Fayyum"', add
label define eg06a_prevdist_lbl 2302 `"Markaz al-Fayyum"', add
label define eg06a_prevdist_lbl 2303 `"Markaz Ibshaway"', add
label define eg06a_prevdist_lbl 2304 `"Markaz Itsa"', add
label define eg06a_prevdist_lbl 2305 `"Markaz Sinuris"', add
label define eg06a_prevdist_lbl 2306 `"Markaz Tamiyya"', add
label define eg06a_prevdist_lbl 2307 `"Markaz Youssef El seddik"', add
label define eg06a_prevdist_lbl 2399 `"Unidentified district in Fayoum"', add
label define eg06a_prevdist_lbl 2401 `"Qism al-Minya"', add
label define eg06a_prevdist_lbl 2402 `"Qism al-Minya"', add
label define eg06a_prevdist_lbl 2404 `"Markaz Abu Qurqas"', add
label define eg06a_prevdist_lbl 2405 `"Markaz al-'Idwa"', add
label define eg06a_prevdist_lbl 2406 `"Markaz Bani Mazar"', add
label define eg06a_prevdist_lbl 2407 `"Markaz Dayr Mawas"', add
label define eg06a_prevdist_lbl 2408 `"Markaz Samallut"', add
label define eg06a_prevdist_lbl 2409 `"Markaz Matay"', add
label define eg06a_prevdist_lbl 2410 `"Markaz Maghagha"', add
label define eg06a_prevdist_lbl 2411 `"Qism Mallawi"', add
label define eg06a_prevdist_lbl 2412 `"Markaz Mallawi"', add
label define eg06a_prevdist_lbl 2499 `"Unidentified district in Menia"', add
label define eg06a_prevdist_lbl 2501 `"Qism awal Asyut"', add
label define eg06a_prevdist_lbl 2502 `"Qism thani Asyut"', add
label define eg06a_prevdist_lbl 2503 `"Markaz Asyut"', add
label define eg06a_prevdist_lbl 2504 `"Markaz Abnub"', add
label define eg06a_prevdist_lbl 2505 `"Markaz Abu Tig"', add
label define eg06a_prevdist_lbl 2506 `"Markaz al-Badari"', add
label define eg06a_prevdist_lbl 2507 `"Markaz Sahil Salim"', add
label define eg06a_prevdist_lbl 2508 `"Markaz al-Ghanayim"', add
label define eg06a_prevdist_lbl 2509 `"Markaz al-Qusiyya"', add
label define eg06a_prevdist_lbl 2510 `"Markaz Dayrut"', add
label define eg06a_prevdist_lbl 2511 `"Markaz Sidfa"', add
label define eg06a_prevdist_lbl 2512 `"Markaz Manfalut"', add
label define eg06a_prevdist_lbl 2513 `"Markaz al-Fath"', add
label define eg06a_prevdist_lbl 2599 `"Unidentified district in Asyout"', add
label define eg06a_prevdist_lbl 2601 `"Qism awal Suhag"', add
label define eg06a_prevdist_lbl 2602 `"Qism thani Suhag"', add
label define eg06a_prevdist_lbl 2603 `"Markaz Suhag"', add
label define eg06a_prevdist_lbl 2604 `"Markaz Akhmim"', add
label define eg06a_prevdist_lbl 2605 `"Markaz al-Balyana"', add
label define eg06a_prevdist_lbl 2606 `"Markaz al-Maragha"', add
label define eg06a_prevdist_lbl 2607 `"Markaz al-Minsha'a"', add
label define eg06a_prevdist_lbl 2608 `"Markaz Dar al-Salam (Awlad Tuq Sharq)"', add
label define eg06a_prevdist_lbl 2609 `"Qism Girga"', add
label define eg06a_prevdist_lbl 2610 `"Markaz Girga"', add
label define eg06a_prevdist_lbl 2611 `"Markaz Guhayna al-gharbiyya"', add
label define eg06a_prevdist_lbl 2612 `"Markaz Saqulta"', add
label define eg06a_prevdist_lbl 2613 `"Markaz Tima"', add
label define eg06a_prevdist_lbl 2614 `"Markaz Tahta"', add
label define eg06a_prevdist_lbl 2615 `"Qism Tahta"', add
label define eg06a_prevdist_lbl 2617 `"Markaz Osayrat"', add
label define eg06a_prevdist_lbl 2699 `"Unidentified district in Suhag"', add
label define eg06a_prevdist_lbl 2701 `"Qism Qina"', add
label define eg06a_prevdist_lbl 2702 `"Markaz Qina"', add
label define eg06a_prevdist_lbl 2703 `"Markaz Abu Tisht"', add
label define eg06a_prevdist_lbl 2704 `"Markaz Armant"', add
label define eg06a_prevdist_lbl 2705 `"Markaz Isna"', add
label define eg06a_prevdist_lbl 2706 `"Markaz Dishna"', add
label define eg06a_prevdist_lbl 2707 `"Markaz Qus"', add
label define eg06a_prevdist_lbl 2708 `"Markaz Nag' Hammadi"', add
label define eg06a_prevdist_lbl 2709 `"Markaz Naqada"', add
label define eg06a_prevdist_lbl 2710 `"Markaz Farshut"', add
label define eg06a_prevdist_lbl 2711 `"Markaz Qift"', add
label define eg06a_prevdist_lbl 2712 `"Markaz al-Waqf"', add
label define eg06a_prevdist_lbl 2799 `"Unidentified district in Qena"', add
label define eg06a_prevdist_lbl 2801 `"Qism Aswan"', add
label define eg06a_prevdist_lbl 2802 `"Markaz Aswan"', add
label define eg06a_prevdist_lbl 2803 `"Markaz Idfu"', add
label define eg06a_prevdist_lbl 2804 `"Markaz Kum Umbu"', add
label define eg06a_prevdist_lbl 2805 `"Markaz Nasr"', add
label define eg06a_prevdist_lbl 2806 `"Markaz Daraw"', add
label define eg06a_prevdist_lbl 2807 `"Markaz Abu Simbel"', add
label define eg06a_prevdist_lbl 2899 `"Unidentified district in Aswan"', add
label define eg06a_prevdist_lbl 2901 `"Qism al-Uqsur"', add
label define eg06a_prevdist_lbl 2902 `"Markaz al-Uqsur"', add
label define eg06a_prevdist_lbl 2999 `"Unidentified district in Luxor"', add
label define eg06a_prevdist_lbl 3101 `"Qism awal al-Ghardaqa"', add
label define eg06a_prevdist_lbl 3102 `"Qism al-Qusayr"', add
label define eg06a_prevdist_lbl 3103 `"Qism Safaga"', add
label define eg06a_prevdist_lbl 3105 `"Qism Ra's Gharib"', add
label define eg06a_prevdist_lbl 3108 `"Qism thani al-Ghardaqa"', add
label define eg06a_prevdist_lbl 3199 `"Unidentified district in Red Sea"', add
label define eg06a_prevdist_lbl 3201 `"Qism Wahat al-kharga"', add
label define eg06a_prevdist_lbl 3202 `"Markaz Wahat al-dakhla"', add
label define eg06a_prevdist_lbl 3299 `"Unidentified district in New Valley"', add
label define eg06a_prevdist_lbl 3301 `"Qism Marsa Matruh"', add
label define eg06a_prevdist_lbl 3302 `"Qism al-Hammam"', add
label define eg06a_prevdist_lbl 3303 `"qism al-Sallum"', add
label define eg06a_prevdist_lbl 3304 `"Qism al-Dab'a"', add
label define eg06a_prevdist_lbl 3399 `"Unidentified district in Matroh"', add
label define eg06a_prevdist_lbl 3401 `"Qism awal al-'Arish"', add
label define eg06a_prevdist_lbl 3405 `"Qism Bi'r al-'Abd"', add
label define eg06a_prevdist_lbl 3407 `"Qism Nakhl"', add
label define eg06a_prevdist_lbl 3408 `"Qism al-Shaykh Zuwayd"', add
label define eg06a_prevdist_lbl 3409 `"Qism Rafah"', add
label define eg06a_prevdist_lbl 3410 `"Qism Rummana"', add
label define eg06a_prevdist_lbl 3499 `"Unidentified district in North Sinai"', add
label define eg06a_prevdist_lbl 3501 `"Qism al-Tur"', add
label define eg06a_prevdist_lbl 3502 `"Qism Ra's Sudr"', add
label define eg06a_prevdist_lbl 3505 `"Qism Sharm al-Shaykh"', add
label define eg06a_prevdist_lbl 3599 `"Unidentified district in South Sinai"', add
label define eg06a_prevdist_lbl 8000 `"Abroad"', add
label define eg06a_prevdist_lbl 9998 `"Unknown"', add
label define eg06a_prevdist_lbl 9999 `"NIU (not in universe)"', add
label values eg06a_prevdist eg06a_prevdist_lbl

label define eg06a_prevurb_lbl 1 `"Urban"'
label define eg06a_prevurb_lbl 2 `"Rural"', add
label define eg06a_prevurb_lbl 8 `"Unknown"', add
label define eg06a_prevurb_lbl 9 `"NIU (not in universe)"', add
label values eg06a_prevurb eg06a_prevurb_lbl

label define eg06a_reasmig_lbl 1 `"Work"'
label define eg06a_reasmig_lbl 2 `"Study"', add
label define eg06a_reasmig_lbl 3 `"Marriage"', add
label define eg06a_reasmig_lbl 4 `"Divorce / widowhood"', add
label define eg06a_reasmig_lbl 5 `"Accompanying someone"', add
label define eg06a_reasmig_lbl 6 `"Other"', add
label define eg06a_reasmig_lbl 8 `"Unknown"', add
label define eg06a_reasmig_lbl 9 `"NIU (not in universe)"', add
label values eg06a_reasmig eg06a_reasmig_lbl

label define eg06a_resurb_lbl 1 `"Urban"'
label define eg06a_resurb_lbl 2 `"Rural"', add
label define eg06a_resurb_lbl 8 `"Unknown"', add
label define eg06a_resurb_lbl 9 `"NIU (not in universe)"', add
label values eg06a_resurb eg06a_resurb_lbl


