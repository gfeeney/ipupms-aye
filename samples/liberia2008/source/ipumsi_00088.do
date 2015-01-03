* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    lr08a_dwnum     22-28    ///
  byte    lr08a_pern      29-30    ///
  byte    lr08a_fbig      31-31    ///
  byte    lr08a_county    32-33    ///
  int     lr08a_district  34-37    ///
  byte    lr08a_urru      38-38    ///
  byte    lr08a_poptype   39-40    ///
  byte    lr08a_repair    41-41    ///
  byte    lr08a_own       42-42    ///
  byte    lr08a_rooms     43-44    ///
  byte    lr08a_walls     45-45    ///
  byte    lr08a_roof      46-46    ///
  byte    lr08a_floor     47-47    ///
  byte    lr08a_watsup    48-48    ///
  byte    lr08a_light     49-49    ///
  byte    lr08a_fuelck    50-50    ///
  byte    lr08a_sewer     51-51    ///
  byte    lr08a_hlthtime  52-52    ///
  byte    lr08a_schltime  53-53    ///
  byte    lr08a_wattime   54-54    ///
  byte    lr08a_furn      55-55    ///
  byte    lr08a_mattress  56-56    ///
  byte    lr08a_radio     57-57    ///
  byte    lr08a_tv        58-58    ///
  byte    lr08a_cellph    59-59    ///
  byte    lr08a_motorcyc  60-60    ///
  byte    lr08a_auto      61-61    ///
  byte    lr08a_fridge    62-62    ///
  byte    lr08a_househ    63-63    ///
  byte    lr08a_rice      64-64    ///
  byte    lr08a_cassava   65-65    ///
  byte    lr08a_plantain  66-66    ///
  byte    lr08a_rubber    67-67    ///
  byte    lr08a_palmoil   68-68    ///
  byte    lr08a_coffee    69-69    ///
  byte    lr08a_cocoa     70-70    ///
  byte    lr08a_coconut   71-71    ///
  byte    lr08a_sugarcan  72-72    ///
  byte    lr08a_livestk   73-73    ///
  byte    lr08a_poultry   74-74    ///
  byte    lr08a_fishery   75-75    ///
  byte    lr08a_otherag   76-76    ///
  byte    lr08a_deathn    77-77    ///
  byte    lr08a_maleshh   78-79    ///
  byte    lr08a_femalehh  80-81    ///
  byte    lr08a_totalhh   82-83    ///
  byte    lr08a_nmorthh   84-84    ///
  int     pernum          85-87    ///
  float   wtper           88-95    ///
  byte    lr08a_pernum    96-97    ///
  byte    lr08a_relate    98-99    ///
  byte    lr08a_sex       100-100  ///
  byte    lr08a_age       101-102  ///
  byte    lr08a_relig     103-103  ///
  byte    lr08a_marst     104-104  ///
  byte    lr08a_ethnic    105-106  ///
  byte    lr08a_bpl       107-108  ///
  byte    lr08a_nation    109-110  ///
  byte    lr08a_resleng   111-112  ///
  byte    lr08a_displace  113-113  ///
  byte    lr08a_reset     114-114  ///
  byte    lr08a_mortmom   115-115  ///
  byte    lr08a_mortpop   116-116  ///
  byte    lr08a_disab     117-117  ///
  byte    lr08a_distype   118-119  ///
  byte    lr08a_discause  120-121  ///
  byte    lr08a_lit       122-122  ///
  byte    lr08a_school    123-123  ///
  byte    lr08a_edattan   124-125  ///
  byte    lr08a_empstat   126-127  ///
  byte    lr08a_occ       128-129  ///
  byte    lr08a_ind       130-131  ///
  byte    lr08a_classwk   132-132  ///
  byte    lr08a_chbornm   133-134  ///
  byte    lr08a_chbornf   135-136  ///
  byte    lr08a_homemal   137-137  ///
  byte    lr08a_homefem   138-138  ///
  byte    lr08a_awaymal   139-139  ///
  byte    lr08a_awayfem   140-140  ///
  byte    lr08a_awayfem   141-141  ///
  byte    lr08a_chdeadm   142-142  ///
  byte    lr08a_chdeadf   143-143  ///
  byte    lr08a_chsex     144-144  ///
  byte    lr08a_chbirmo   145-146  ///
  byte    lr08a_chbiryr   147-147  ///
  byte    lr08a_chlive    148-148  ///
  byte    lr08a_chborn    149-150  ///
  byte    lr08a_chsurv    151-152  ///
  using `"ipumsi_00088.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var lr08a_dwnum    `"Dwelling number"'
label var lr08a_pern     `"Number of persons in household"'
label var lr08a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var lr08a_county   `"County"'
label var lr08a_district `"District"'
label var lr08a_urru     `"Urban status"'
label var lr08a_poptype  `"Dwelling type"'
label var lr08a_repair   `"Current repair needs of housing unit"'
label var lr08a_own      `"Method used to acquire housing unit"'
label var lr08a_rooms    `"Number of rooms"'
label var lr08a_walls    `"Outer walls"'
label var lr08a_roof     `"Roof"'
label var lr08a_floor    `"Floor"'
label var lr08a_watsup   `"Main source of drinking water"'
label var lr08a_light    `"Main source of fuel for lighting"'
label var lr08a_fuelck   `"Main source of fuel for cooking"'
label var lr08a_sewer    `"Means of human waste disposal"'
label var lr08a_hlthtime `"Travel time to health facility"'
label var lr08a_schltime `"Travel time to primary school"'
label var lr08a_wattime  `"Travel time to source of water"'
label var lr08a_furn     `"Furniture"'
label var lr08a_mattress `"Mattress"'
label var lr08a_radio    `"Radio"'
label var lr08a_tv       `"Television"'
label var lr08a_cellph   `"Cell phone"'
label var lr08a_motorcyc `"Motor cycle"'
label var lr08a_auto     `"Vehicle"'
label var lr08a_fridge   `"Refrigerator"'
label var lr08a_househ   `"Household engages in agricultural or livestock farming"'
label var lr08a_rice     `"Household farms rice"'
label var lr08a_cassava  `"Household farms cassava"'
label var lr08a_plantain `"Household farms plantain"'
label var lr08a_rubber   `"Household farms rubber"'
label var lr08a_palmoil  `"Household farms oil palm"'
label var lr08a_coffee   `"Household farms coffee"'
label var lr08a_cocoa    `"Household farms cocoa"'
label var lr08a_coconut  `"Household farms coconut"'
label var lr08a_sugarcan `"Household farms sugar cane"'
label var lr08a_livestk  `"Household raises live stock"'
label var lr08a_poultry  `"Household raises poultry"'
label var lr08a_fishery  `"Household engages in fishery farming"'
label var lr08a_otherag  `"Household farms other crops"'
label var lr08a_deathn   `"Number of deaths in the household in the past 12 months"'
label var lr08a_maleshh  `"Number of males in the household"'
label var lr08a_femalehh `"Number of females in the household"'
label var lr08a_totalhh  `"Total number of people in the household"'
label var lr08a_nmorthh  `"Number of mortality records"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var lr08a_pernum   `"Person number (within household)"'
label var lr08a_relate   `"Relationship to head of household"'
label var lr08a_sex      `"Sex"'
label var lr08a_age      `"Age (completed years)"'
label var lr08a_relig    `"Religion"'
label var lr08a_marst    `"Marital status"'
label var lr08a_ethnic   `"Ethnic affiliation"'
label var lr08a_bpl      `"County or country of birth"'
label var lr08a_nation   `"Citizenship"'
label var lr08a_resleng  `"Length of residence in Liberia in completed years"'
label var lr08a_displace `"Ever displaced by war since 1990"'
label var lr08a_reset    `"Ever resettled"'
label var lr08a_mortmom  `"Mother alive"'
label var lr08a_mortpop  `"Father alive"'
label var lr08a_disab    `"Any disability"'
label var lr08a_distype  `"Type of disability"'
label var lr08a_discause `"Cause of disability"'
label var lr08a_lit      `"Literacy"'
label var lr08a_school   `"School attendance"'
label var lr08a_edattan  `"Highest grade level attained"'
label var lr08a_empstat  `"Activity status"'
label var lr08a_occ      `"Occupation"'
label var lr08a_ind      `"Industry"'
label var lr08a_classwk  `"Work status"'
label var lr08a_chbornm  `"Number of male children ever born"'
label var lr08a_chbornf  `"Number of female children ever born"'
label var lr08a_homemal  `"Number of male children living in household"'
label var lr08a_homefem  `"Number of female children living in household"'
label var lr08a_awaymal  `"Number of male children living elsewhere"'
label var lr08a_awayfem  `"Number of female children living elsewhere"'
label var lr08a_awayfem  `"Number of female children living elsewhere"'
label var lr08a_chdeadm  `"Number of male children dead"'
label var lr08a_chdeadf  `"Number of female children dead"'
label var lr08a_chsex    `"Sex of child born in last 12 months"'
label var lr08a_chbirmo  `"Birth month of child born in last 12 months"'
label var lr08a_chbiryr  `"Birth year of child born in last 12 months"'
label var lr08a_chlive   `"Child born in last 12 months alive"'
label var lr08a_chborn   `"Children ever born"'
label var lr08a_chsurv   `"Children surviving"'

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

label define lr08a_pern_lbl 01 `"1"'
label define lr08a_pern_lbl 02 `"2"', add
label define lr08a_pern_lbl 03 `"3"', add
label define lr08a_pern_lbl 04 `"4"', add
label define lr08a_pern_lbl 05 `"5"', add
label define lr08a_pern_lbl 06 `"6"', add
label define lr08a_pern_lbl 07 `"7"', add
label define lr08a_pern_lbl 08 `"8"', add
label define lr08a_pern_lbl 09 `"9"', add
label define lr08a_pern_lbl 10 `"10"', add
label define lr08a_pern_lbl 11 `"11"', add
label define lr08a_pern_lbl 12 `"12"', add
label define lr08a_pern_lbl 13 `"13"', add
label define lr08a_pern_lbl 14 `"14"', add
label define lr08a_pern_lbl 15 `"15"', add
label define lr08a_pern_lbl 16 `"16"', add
label define lr08a_pern_lbl 17 `"17"', add
label define lr08a_pern_lbl 18 `"18"', add
label define lr08a_pern_lbl 19 `"19"', add
label define lr08a_pern_lbl 20 `"20"', add
label define lr08a_pern_lbl 21 `"21"', add
label define lr08a_pern_lbl 22 `"22"', add
label define lr08a_pern_lbl 23 `"23"', add
label define lr08a_pern_lbl 24 `"24"', add
label define lr08a_pern_lbl 25 `"25"', add
label define lr08a_pern_lbl 26 `"26"', add
label define lr08a_pern_lbl 27 `"27"', add
label define lr08a_pern_lbl 28 `"28"', add
label define lr08a_pern_lbl 29 `"29"', add
label define lr08a_pern_lbl 30 `"30"', add
label define lr08a_pern_lbl 31 `"31"', add
label define lr08a_pern_lbl 32 `"32"', add
label define lr08a_pern_lbl 33 `"33"', add
label define lr08a_pern_lbl 34 `"34"', add
label define lr08a_pern_lbl 35 `"35"', add
label define lr08a_pern_lbl 36 `"36"', add
label define lr08a_pern_lbl 37 `"37"', add
label define lr08a_pern_lbl 38 `"38"', add
label define lr08a_pern_lbl 39 `"39"', add
label define lr08a_pern_lbl 40 `"40"', add
label values lr08a_pern lr08a_pern_lbl

label define lr08a_fbig_lbl 0 `"No problem"'
label define lr08a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define lr08a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values lr08a_fbig lr08a_fbig_lbl

label define lr08a_county_lbl 03 `"Bomi"'
label define lr08a_county_lbl 06 `"Bong"', add
label define lr08a_county_lbl 09 `"Grand Bassa"', add
label define lr08a_county_lbl 12 `"Grand Cape Mount"', add
label define lr08a_county_lbl 15 `"Grand Gedeh"', add
label define lr08a_county_lbl 18 `"Grand Kru"', add
label define lr08a_county_lbl 21 `"Lofa"', add
label define lr08a_county_lbl 24 `"Margibi"', add
label define lr08a_county_lbl 27 `"Maryland"', add
label define lr08a_county_lbl 30 `"Montserrado"', add
label define lr08a_county_lbl 33 `"Nimba"', add
label define lr08a_county_lbl 36 `"Rivercess"', add
label define lr08a_county_lbl 39 `"Sinoe"', add
label define lr08a_county_lbl 42 `"River Gee"', add
label define lr08a_county_lbl 45 `"Gbarpolu"', add
label values lr08a_county lr08a_county_lbl

label define lr08a_district_lbl 0302 `"Klay and Dowein"'
label define lr08a_district_lbl 0304 `"Suehn Mecca and Senjeh"', add
label define lr08a_district_lbl 0602 `"Fuamah"', add
label define lr08a_district_lbl 0604 `"Jorquelleh"', add
label define lr08a_district_lbl 0606 `"Yeallequel"', add
label define lr08a_district_lbl 0608 `"Panta, Kokoyah, Tukpahblle, and Boinsen"', add
label define lr08a_district_lbl 0610 `"Salala"', add
label define lr08a_district_lbl 0612 `"Sanoyeah"', add
label define lr08a_district_lbl 0614 `"Suakoko"', add
label define lr08a_district_lbl 0616 `"Zota"', add
label define lr08a_district_lbl 0624 `"Kpaii"', add
label define lr08a_district_lbl 0902 `"Owensgove and St. John River City"', add
label define lr08a_district_lbl 0904 `"District #1"', add
label define lr08a_district_lbl 0906 `"District #2"', add
label define lr08a_district_lbl 0912 `"Commonwealth"', add
label define lr08a_district_lbl 0914 `"District #3"', add
label define lr08a_district_lbl 0916 `"Neekreen and District #4"', add
label define lr08a_district_lbl 1202 `"Garwula and Commonwealth"', add
label define lr08a_district_lbl 1204 `"Golakonneh"', add
label define lr08a_district_lbl 1206 `"Porkpa"', add
label define lr08a_district_lbl 1210 `"Tewor"', add
label define lr08a_district_lbl 1506 `"Konobo"', add
label define lr08a_district_lbl 1508 `"Tchien"', add
label define lr08a_district_lbl 1599 `"All other districts in Grand Gedeh"', add
label define lr08a_district_lbl 1899 `"All districts in Grand Kru"', add
label define lr08a_district_lbl 2102 `"Foya"', add
label define lr08a_district_lbl 2104 `"Kolahun and Vahun"', add
label define lr08a_district_lbl 2106 `"Salayea"', add
label define lr08a_district_lbl 2110 `"Voinjama and Quardu Bondi"', add
label define lr08a_district_lbl 2112 `"Zorzor"', add
label define lr08a_district_lbl 2402 `"Firestone"', add
label define lr08a_district_lbl 2406 `"Kakata and Gibi"', add
label define lr08a_district_lbl 2408 `"Mambah Kaba"', add
label define lr08a_district_lbl 2712 `"Pleebo and Sodoken"', add
label define lr08a_district_lbl 2714 `"Harper"', add
label define lr08a_district_lbl 2799 `"All other districts in Maryland"', add
label define lr08a_district_lbl 3002 `"Careysburg and Commonwealth"', add
label define lr08a_district_lbl 3004 `"Greater Monrovia"', add
label define lr08a_district_lbl 3006 `"St. Paul River"', add
label define lr08a_district_lbl 3008 `"Todee"', add
label define lr08a_district_lbl 3310 `"Twan River"', add
label define lr08a_district_lbl 3312 `"Garr Bain"', add
label define lr08a_district_lbl 3399 `"All other districts in Nimba"', add
label define lr08a_district_lbl 3699 `"All districts in Rivercess"', add
label define lr08a_district_lbl 3999 `"All districts in Sinoe"', add
label define lr08a_district_lbl 4299 `"All districts in River Gee"', add
label define lr08a_district_lbl 4599 `"All districts in Gbarpolu"', add
label values lr08a_district lr08a_district_lbl

label define lr08a_urru_lbl 1 `"Urban"'
label define lr08a_urru_lbl 2 `"Rural"', add
label values lr08a_urru lr08a_urru_lbl

label define lr08a_poptype_lbl 01 `"Household"'
label define lr08a_poptype_lbl 02 `"Educational"', add
label define lr08a_poptype_lbl 03 `"Home for destitute"', add
label define lr08a_poptype_lbl 04 `"Convent"', add
label define lr08a_poptype_lbl 06 `"Prison"', add
label define lr08a_poptype_lbl 07 `"Bush society"', add
label define lr08a_poptype_lbl 08 `"Barrack (military/police)"', add
label define lr08a_poptype_lbl 09 `"Hotel"', add
label define lr08a_poptype_lbl 10 `"Nurses' home"', add
label define lr08a_poptype_lbl 11 `"Health facility or mental institute"', add
label define lr08a_poptype_lbl 12 `"Leper colony"', add
label define lr08a_poptype_lbl 13 `"Orphanage"', add
label define lr08a_poptype_lbl 14 `"Floating population"', add
label values lr08a_poptype lr08a_poptype_lbl

label define lr08a_repair_lbl 1 `"No repairs"'
label define lr08a_repair_lbl 2 `"Minor repairs"', add
label define lr08a_repair_lbl 3 `"Rehabilitation"', add
label define lr08a_repair_lbl 4 `"Reconstruction"', add
label define lr08a_repair_lbl 9 `"Unknown"', add
label values lr08a_repair lr08a_repair_lbl

label define lr08a_own_lbl 1 `"Purchased"'
label define lr08a_own_lbl 2 `"Constructed"', add
label define lr08a_own_lbl 3 `"Inherited"', add
label define lr08a_own_lbl 4 `"Government"', add
label define lr08a_own_lbl 5 `"National Housing Authority (NHA)"', add
label define lr08a_own_lbl 6 `"Private company"', add
label define lr08a_own_lbl 7 `"Private individual"', add
label define lr08a_own_lbl 8 `"Squatter"', add
label define lr08a_own_lbl 9 `"Other"', add
label values lr08a_own lr08a_own_lbl

label define lr08a_rooms_lbl 01 `"1 room"'
label define lr08a_rooms_lbl 02 `"2 rooms"', add
label define lr08a_rooms_lbl 03 `"3 rooms"', add
label define lr08a_rooms_lbl 04 `"4 rooms"', add
label define lr08a_rooms_lbl 05 `"5 rooms"', add
label define lr08a_rooms_lbl 06 `"6 rooms"', add
label define lr08a_rooms_lbl 07 `"7 rooms"', add
label define lr08a_rooms_lbl 08 `"8 rooms"', add
label define lr08a_rooms_lbl 09 `"9 rooms"', add
label define lr08a_rooms_lbl 10 `"10+ rooms"', add
label define lr08a_rooms_lbl 99 `"Unknown"', add
label values lr08a_rooms lr08a_rooms_lbl

label define lr08a_walls_lbl 1 `"Stone, concrete"'
label define lr08a_walls_lbl 2 `"Cement blocks"', add
label define lr08a_walls_lbl 3 `"Clay bricks"', add
label define lr08a_walls_lbl 4 `"Zinc or iron"', add
label define lr08a_walls_lbl 5 `"Wood or board"', add
label define lr08a_walls_lbl 6 `"Mud  bricks"', add
label define lr08a_walls_lbl 7 `"Mud (stick)"', add
label define lr08a_walls_lbl 8 `"Reed, bamboo, grass or mat"', add
label define lr08a_walls_lbl 9 `"Other"', add
label values lr08a_walls lr08a_walls_lbl

label define lr08a_roof_lbl 1 `"Concrete"'
label define lr08a_roof_lbl 2 `"Tiles"', add
label define lr08a_roof_lbl 3 `"Asbestos"', add
label define lr08a_roof_lbl 4 `"Zinc"', add
label define lr08a_roof_lbl 5 `"Tarpaulin"', add
label define lr08a_roof_lbl 6 `"Bamboo, leaves or thatch"', add
label define lr08a_roof_lbl 7 `"Other"', add
label values lr08a_roof lr08a_roof_lbl

label define lr08a_floor_lbl 1 `"Cement"'
label define lr08a_floor_lbl 2 `"Tiles"', add
label define lr08a_floor_lbl 3 `"Wood"', add
label define lr08a_floor_lbl 4 `"Mud"', add
label define lr08a_floor_lbl 5 `"Other"', add
label values lr08a_floor lr08a_floor_lbl

label define lr08a_watsup_lbl 1 `"Pipe or pump indoors"'
label define lr08a_watsup_lbl 2 `"Pipe or pump out doors"', add
label define lr08a_watsup_lbl 3 `"Public tap"', add
label define lr08a_watsup_lbl 4 `"Closed well or protected spring"', add
label define lr08a_watsup_lbl 5 `"Open well"', add
label define lr08a_watsup_lbl 6 `"River, lake or spring"', add
label define lr08a_watsup_lbl 7 `"Water vendors"', add
label define lr08a_watsup_lbl 8 `"Other"', add
label values lr08a_watsup lr08a_watsup_lbl

label define lr08a_light_lbl 1 `"Electricity (own generator)"'
label define lr08a_light_lbl 2 `"Electricity (power supplier)"', add
label define lr08a_light_lbl 3 `"Kerosene"', add
label define lr08a_light_lbl 4 `"Candle"', add
label define lr08a_light_lbl 5 `"Palm oil lamp"', add
label define lr08a_light_lbl 6 `"Wood"', add
label define lr08a_light_lbl 7 `"Other"', add
label values lr08a_light lr08a_light_lbl

label define lr08a_fuelck_lbl 1 `"Electricity (own generator)"'
label define lr08a_fuelck_lbl 2 `"Electricity (power supplier)"', add
label define lr08a_fuelck_lbl 3 `"Gas"', add
label define lr08a_fuelck_lbl 4 `"Kerosene"', add
label define lr08a_fuelck_lbl 5 `"Charcoal"', add
label define lr08a_fuelck_lbl 6 `"Wood"', add
label define lr08a_fuelck_lbl 7 `"Other"', add
label values lr08a_fuelck lr08a_fuelck_lbl

label define lr08a_sewer_lbl 1 `"Flush toilet for housing unit only"'
label define lr08a_sewer_lbl 2 `"Flush toilet shared with other housing units"', add
label define lr08a_sewer_lbl 3 `"Covered pit latrine outside building"', add
label define lr08a_sewer_lbl 4 `"Open pit latrine"', add
label define lr08a_sewer_lbl 5 `"Bush"', add
label define lr08a_sewer_lbl 6 `"Beach"', add
label define lr08a_sewer_lbl 7 `"Other"', add
label values lr08a_sewer lr08a_sewer_lbl

label define lr08a_hlthtime_lbl 1 `"Less than 20 minutes"'
label define lr08a_hlthtime_lbl 2 `"20 - 39 minutes"', add
label define lr08a_hlthtime_lbl 3 `"40 - 59 minutes"', add
label define lr08a_hlthtime_lbl 4 `"60 - 79 minutes"', add
label define lr08a_hlthtime_lbl 5 `"80 minutes or more"', add
label define lr08a_hlthtime_lbl 9 `"Unknown"', add
label values lr08a_hlthtime lr08a_hlthtime_lbl

label define lr08a_schltime_lbl 1 `"Less than 20 minutes"'
label define lr08a_schltime_lbl 2 `"20 - 39 minutes"', add
label define lr08a_schltime_lbl 3 `"40 - 59 minutes"', add
label define lr08a_schltime_lbl 4 `"60 - 79 minutes"', add
label define lr08a_schltime_lbl 5 `"80 minutes or more"', add
label define lr08a_schltime_lbl 9 `"Unknown"', add
label values lr08a_schltime lr08a_schltime_lbl

label define lr08a_wattime_lbl 1 `"Less than 20 minutes"'
label define lr08a_wattime_lbl 2 `"20 - 39 minutes"', add
label define lr08a_wattime_lbl 3 `"40 - 59 minutes"', add
label define lr08a_wattime_lbl 4 `"60 - 79 minutes"', add
label define lr08a_wattime_lbl 5 `"80 minutes or more"', add
label define lr08a_wattime_lbl 9 `"Unknown"', add
label values lr08a_wattime lr08a_wattime_lbl

label define lr08a_furn_lbl 1 `"Yes"'
label define lr08a_furn_lbl 2 `"No"', add
label values lr08a_furn lr08a_furn_lbl

label define lr08a_mattress_lbl 1 `"Yes"'
label define lr08a_mattress_lbl 2 `"No"', add
label values lr08a_mattress lr08a_mattress_lbl

label define lr08a_radio_lbl 1 `"Yes"'
label define lr08a_radio_lbl 2 `"No"', add
label values lr08a_radio lr08a_radio_lbl

label define lr08a_tv_lbl 1 `"Yes"'
label define lr08a_tv_lbl 2 `"No"', add
label values lr08a_tv lr08a_tv_lbl

label define lr08a_cellph_lbl 1 `"Yes"'
label define lr08a_cellph_lbl 2 `"No"', add
label values lr08a_cellph lr08a_cellph_lbl

label define lr08a_motorcyc_lbl 1 `"Yes"'
label define lr08a_motorcyc_lbl 2 `"No"', add
label values lr08a_motorcyc lr08a_motorcyc_lbl

label define lr08a_auto_lbl 1 `"Yes"'
label define lr08a_auto_lbl 2 `"No"', add
label values lr08a_auto lr08a_auto_lbl

label define lr08a_fridge_lbl 1 `"Yes"'
label define lr08a_fridge_lbl 2 `"No"', add
label values lr08a_fridge lr08a_fridge_lbl

label define lr08a_househ_lbl 1 `"Yes"'
label define lr08a_househ_lbl 2 `"No"', add
label values lr08a_househ lr08a_househ_lbl

label define lr08a_rice_lbl 1 `"Yes"'
label define lr08a_rice_lbl 2 `"No"', add
label values lr08a_rice lr08a_rice_lbl

label define lr08a_cassava_lbl 1 `"Yes"'
label define lr08a_cassava_lbl 2 `"No"', add
label values lr08a_cassava lr08a_cassava_lbl

label define lr08a_plantain_lbl 1 `"Yes"'
label define lr08a_plantain_lbl 2 `"No"', add
label values lr08a_plantain lr08a_plantain_lbl

label define lr08a_rubber_lbl 1 `"Yes"'
label define lr08a_rubber_lbl 2 `"No"', add
label values lr08a_rubber lr08a_rubber_lbl

label define lr08a_palmoil_lbl 1 `"Yes"'
label define lr08a_palmoil_lbl 2 `"No"', add
label values lr08a_palmoil lr08a_palmoil_lbl

label define lr08a_coffee_lbl 1 `"Yes"'
label define lr08a_coffee_lbl 2 `"No"', add
label values lr08a_coffee lr08a_coffee_lbl

label define lr08a_cocoa_lbl 1 `"Yes"'
label define lr08a_cocoa_lbl 2 `"No"', add
label values lr08a_cocoa lr08a_cocoa_lbl

label define lr08a_coconut_lbl 1 `"Yes"'
label define lr08a_coconut_lbl 2 `"No"', add
label values lr08a_coconut lr08a_coconut_lbl

label define lr08a_sugarcan_lbl 1 `"Yes"'
label define lr08a_sugarcan_lbl 2 `"No"', add
label values lr08a_sugarcan lr08a_sugarcan_lbl

label define lr08a_livestk_lbl 1 `"Yes"'
label define lr08a_livestk_lbl 2 `"No"', add
label values lr08a_livestk lr08a_livestk_lbl

label define lr08a_poultry_lbl 1 `"Yes"'
label define lr08a_poultry_lbl 2 `"No"', add
label values lr08a_poultry lr08a_poultry_lbl

label define lr08a_fishery_lbl 1 `"Yes"'
label define lr08a_fishery_lbl 2 `"No"', add
label values lr08a_fishery lr08a_fishery_lbl

label define lr08a_otherag_lbl 1 `"Yes"'
label define lr08a_otherag_lbl 2 `"No"', add
label values lr08a_otherag lr08a_otherag_lbl

label define lr08a_deathn_lbl 0 `"0"'
label define lr08a_deathn_lbl 1 `"1"', add
label define lr08a_deathn_lbl 2 `"2"', add
label define lr08a_deathn_lbl 3 `"3"', add
label define lr08a_deathn_lbl 4 `"4+"', add
label values lr08a_deathn lr08a_deathn_lbl

label define lr08a_maleshh_lbl 00 `"0"'
label define lr08a_maleshh_lbl 01 `"1"', add
label define lr08a_maleshh_lbl 02 `"2"', add
label define lr08a_maleshh_lbl 03 `"3"', add
label define lr08a_maleshh_lbl 04 `"4"', add
label define lr08a_maleshh_lbl 05 `"5"', add
label define lr08a_maleshh_lbl 06 `"6"', add
label define lr08a_maleshh_lbl 07 `"7"', add
label define lr08a_maleshh_lbl 08 `"8"', add
label define lr08a_maleshh_lbl 09 `"9"', add
label define lr08a_maleshh_lbl 10 `"10"', add
label define lr08a_maleshh_lbl 11 `"11"', add
label define lr08a_maleshh_lbl 12 `"12"', add
label define lr08a_maleshh_lbl 13 `"13"', add
label define lr08a_maleshh_lbl 14 `"14"', add
label define lr08a_maleshh_lbl 15 `"15 or more"', add
label values lr08a_maleshh lr08a_maleshh_lbl

label define lr08a_femalehh_lbl 00 `"0"'
label define lr08a_femalehh_lbl 01 `"1"', add
label define lr08a_femalehh_lbl 02 `"2"', add
label define lr08a_femalehh_lbl 03 `"3"', add
label define lr08a_femalehh_lbl 04 `"4"', add
label define lr08a_femalehh_lbl 05 `"5"', add
label define lr08a_femalehh_lbl 06 `"6"', add
label define lr08a_femalehh_lbl 07 `"7"', add
label define lr08a_femalehh_lbl 08 `"8"', add
label define lr08a_femalehh_lbl 09 `"9"', add
label define lr08a_femalehh_lbl 10 `"10"', add
label define lr08a_femalehh_lbl 11 `"11"', add
label define lr08a_femalehh_lbl 12 `"12"', add
label define lr08a_femalehh_lbl 13 `"13"', add
label define lr08a_femalehh_lbl 14 `"14"', add
label define lr08a_femalehh_lbl 15 `"15 or more"', add
label values lr08a_femalehh lr08a_femalehh_lbl

label define lr08a_totalhh_lbl 00 `"0"'
label define lr08a_totalhh_lbl 01 `"1"', add
label define lr08a_totalhh_lbl 02 `"2"', add
label define lr08a_totalhh_lbl 03 `"3"', add
label define lr08a_totalhh_lbl 04 `"4"', add
label define lr08a_totalhh_lbl 05 `"5"', add
label define lr08a_totalhh_lbl 06 `"6"', add
label define lr08a_totalhh_lbl 07 `"7"', add
label define lr08a_totalhh_lbl 08 `"8"', add
label define lr08a_totalhh_lbl 09 `"9"', add
label define lr08a_totalhh_lbl 10 `"10"', add
label define lr08a_totalhh_lbl 11 `"11"', add
label define lr08a_totalhh_lbl 12 `"12"', add
label define lr08a_totalhh_lbl 13 `"13"', add
label define lr08a_totalhh_lbl 14 `"14"', add
label define lr08a_totalhh_lbl 15 `"15 or more"', add
label values lr08a_totalhh lr08a_totalhh_lbl

label define lr08a_nmorthh_lbl 0 `"0"'
label define lr08a_nmorthh_lbl 1 `"1"', add
label define lr08a_nmorthh_lbl 2 `"2"', add
label define lr08a_nmorthh_lbl 3 `"3"', add
label define lr08a_nmorthh_lbl 4 `"4+"', add
label values lr08a_nmorthh lr08a_nmorthh_lbl

label define lr08a_pernum_lbl 00 `"Household record"'
label define lr08a_pernum_lbl 01 `"1"', add
label define lr08a_pernum_lbl 02 `"2"', add
label define lr08a_pernum_lbl 03 `"3"', add
label define lr08a_pernum_lbl 04 `"4"', add
label define lr08a_pernum_lbl 05 `"5"', add
label define lr08a_pernum_lbl 06 `"6"', add
label define lr08a_pernum_lbl 07 `"7"', add
label define lr08a_pernum_lbl 08 `"8"', add
label define lr08a_pernum_lbl 09 `"9"', add
label define lr08a_pernum_lbl 10 `"10"', add
label define lr08a_pernum_lbl 11 `"11"', add
label define lr08a_pernum_lbl 12 `"12"', add
label define lr08a_pernum_lbl 13 `"13"', add
label define lr08a_pernum_lbl 14 `"14"', add
label define lr08a_pernum_lbl 15 `"15"', add
label define lr08a_pernum_lbl 16 `"16"', add
label define lr08a_pernum_lbl 17 `"17"', add
label define lr08a_pernum_lbl 18 `"18"', add
label define lr08a_pernum_lbl 19 `"19"', add
label define lr08a_pernum_lbl 20 `"20"', add
label define lr08a_pernum_lbl 21 `"21"', add
label define lr08a_pernum_lbl 22 `"22"', add
label define lr08a_pernum_lbl 23 `"23"', add
label define lr08a_pernum_lbl 24 `"24"', add
label define lr08a_pernum_lbl 25 `"25"', add
label define lr08a_pernum_lbl 26 `"26"', add
label define lr08a_pernum_lbl 27 `"27"', add
label define lr08a_pernum_lbl 28 `"28"', add
label define lr08a_pernum_lbl 29 `"29"', add
label define lr08a_pernum_lbl 30 `"30"', add
label define lr08a_pernum_lbl 31 `"31"', add
label define lr08a_pernum_lbl 32 `"32"', add
label define lr08a_pernum_lbl 33 `"33"', add
label define lr08a_pernum_lbl 34 `"34"', add
label define lr08a_pernum_lbl 35 `"35"', add
label define lr08a_pernum_lbl 36 `"36"', add
label define lr08a_pernum_lbl 37 `"37"', add
label define lr08a_pernum_lbl 38 `"38"', add
label define lr08a_pernum_lbl 39 `"39"', add
label define lr08a_pernum_lbl 40 `"40"', add
label values lr08a_pernum lr08a_pernum_lbl

label define lr08a_relate_lbl 01 `"Head"'
label define lr08a_relate_lbl 02 `"Spouse"', add
label define lr08a_relate_lbl 03 `"Son/daughter"', add
label define lr08a_relate_lbl 04 `"Other spouse"', add
label define lr08a_relate_lbl 05 `"Parent"', add
label define lr08a_relate_lbl 06 `"Grand child"', add
label define lr08a_relate_lbl 07 `"Servant"', add
label define lr08a_relate_lbl 08 `"Ward"', add
label define lr08a_relate_lbl 09 `"Other relative"', add
label define lr08a_relate_lbl 10 `"Non-relative"', add
label define lr08a_relate_lbl 99 `"Unknown"', add
label values lr08a_relate lr08a_relate_lbl

label define lr08a_sex_lbl 1 `"Male"'
label define lr08a_sex_lbl 2 `"Female"', add
label values lr08a_sex lr08a_sex_lbl

label define lr08a_age_lbl 00 `"0"'
label define lr08a_age_lbl 01 `"1"', add
label define lr08a_age_lbl 02 `"2"', add
label define lr08a_age_lbl 03 `"3"', add
label define lr08a_age_lbl 04 `"4"', add
label define lr08a_age_lbl 05 `"5"', add
label define lr08a_age_lbl 06 `"6"', add
label define lr08a_age_lbl 07 `"7"', add
label define lr08a_age_lbl 08 `"8"', add
label define lr08a_age_lbl 09 `"9"', add
label define lr08a_age_lbl 10 `"10"', add
label define lr08a_age_lbl 11 `"11"', add
label define lr08a_age_lbl 12 `"12"', add
label define lr08a_age_lbl 13 `"13"', add
label define lr08a_age_lbl 14 `"14"', add
label define lr08a_age_lbl 15 `"15"', add
label define lr08a_age_lbl 16 `"16"', add
label define lr08a_age_lbl 17 `"17"', add
label define lr08a_age_lbl 18 `"18"', add
label define lr08a_age_lbl 19 `"19"', add
label define lr08a_age_lbl 20 `"20"', add
label define lr08a_age_lbl 21 `"21"', add
label define lr08a_age_lbl 22 `"22"', add
label define lr08a_age_lbl 23 `"23"', add
label define lr08a_age_lbl 24 `"24"', add
label define lr08a_age_lbl 25 `"25"', add
label define lr08a_age_lbl 26 `"26"', add
label define lr08a_age_lbl 27 `"27"', add
label define lr08a_age_lbl 28 `"28"', add
label define lr08a_age_lbl 29 `"29"', add
label define lr08a_age_lbl 30 `"30"', add
label define lr08a_age_lbl 31 `"31"', add
label define lr08a_age_lbl 32 `"32"', add
label define lr08a_age_lbl 33 `"33"', add
label define lr08a_age_lbl 34 `"34"', add
label define lr08a_age_lbl 35 `"35"', add
label define lr08a_age_lbl 36 `"36"', add
label define lr08a_age_lbl 37 `"37"', add
label define lr08a_age_lbl 38 `"38"', add
label define lr08a_age_lbl 39 `"39"', add
label define lr08a_age_lbl 40 `"40"', add
label define lr08a_age_lbl 41 `"41"', add
label define lr08a_age_lbl 42 `"42"', add
label define lr08a_age_lbl 43 `"43"', add
label define lr08a_age_lbl 44 `"44"', add
label define lr08a_age_lbl 45 `"45"', add
label define lr08a_age_lbl 46 `"46"', add
label define lr08a_age_lbl 47 `"47"', add
label define lr08a_age_lbl 48 `"48"', add
label define lr08a_age_lbl 49 `"49"', add
label define lr08a_age_lbl 50 `"50"', add
label define lr08a_age_lbl 51 `"51"', add
label define lr08a_age_lbl 52 `"52"', add
label define lr08a_age_lbl 53 `"53"', add
label define lr08a_age_lbl 54 `"54"', add
label define lr08a_age_lbl 55 `"55"', add
label define lr08a_age_lbl 56 `"56"', add
label define lr08a_age_lbl 57 `"57"', add
label define lr08a_age_lbl 58 `"58"', add
label define lr08a_age_lbl 59 `"59"', add
label define lr08a_age_lbl 60 `"60"', add
label define lr08a_age_lbl 61 `"61"', add
label define lr08a_age_lbl 62 `"62"', add
label define lr08a_age_lbl 63 `"63"', add
label define lr08a_age_lbl 64 `"64"', add
label define lr08a_age_lbl 65 `"65"', add
label define lr08a_age_lbl 66 `"66"', add
label define lr08a_age_lbl 67 `"67"', add
label define lr08a_age_lbl 68 `"68"', add
label define lr08a_age_lbl 69 `"69"', add
label define lr08a_age_lbl 70 `"70"', add
label define lr08a_age_lbl 71 `"71"', add
label define lr08a_age_lbl 72 `"72"', add
label define lr08a_age_lbl 73 `"73"', add
label define lr08a_age_lbl 74 `"74"', add
label define lr08a_age_lbl 75 `"75"', add
label define lr08a_age_lbl 76 `"76"', add
label define lr08a_age_lbl 77 `"77"', add
label define lr08a_age_lbl 78 `"78"', add
label define lr08a_age_lbl 79 `"79"', add
label define lr08a_age_lbl 80 `"80"', add
label define lr08a_age_lbl 81 `"81"', add
label define lr08a_age_lbl 82 `"82"', add
label define lr08a_age_lbl 83 `"83"', add
label define lr08a_age_lbl 84 `"84"', add
label define lr08a_age_lbl 85 `"85"', add
label define lr08a_age_lbl 86 `"86"', add
label define lr08a_age_lbl 87 `"87"', add
label define lr08a_age_lbl 88 `"88"', add
label define lr08a_age_lbl 89 `"89"', add
label define lr08a_age_lbl 90 `"90"', add
label define lr08a_age_lbl 91 `"91"', add
label define lr08a_age_lbl 92 `"92"', add
label define lr08a_age_lbl 93 `"93"', add
label define lr08a_age_lbl 94 `"94"', add
label define lr08a_age_lbl 95 `"95+"', add
label values lr08a_age lr08a_age_lbl

label define lr08a_relig_lbl 1 `"Christian"'
label define lr08a_relig_lbl 2 `"Muslim"', add
label define lr08a_relig_lbl 3 `"Traditional African religion"', add
label define lr08a_relig_lbl 4 `"Other religion"', add
label define lr08a_relig_lbl 5 `"No religion"', add
label values lr08a_relig lr08a_relig_lbl

label define lr08a_marst_lbl 1 `"Never married"'
label define lr08a_marst_lbl 2 `"Married monogamous"', add
label define lr08a_marst_lbl 3 `"Married polygamous"', add
label define lr08a_marst_lbl 4 `"Separated"', add
label define lr08a_marst_lbl 5 `"Divorced"', add
label define lr08a_marst_lbl 6 `"Widowed"', add
label define lr08a_marst_lbl 7 `"Consensual union"', add
label define lr08a_marst_lbl 9 `"NIU (not in universe)"', add
label values lr08a_marst lr08a_marst_lbl

label define lr08a_ethnic_lbl 01 `"Bassa"'
label define lr08a_ethnic_lbl 02 `"Belle"', add
label define lr08a_ethnic_lbl 03 `"Dey"', add
label define lr08a_ethnic_lbl 04 `"Gbandi"', add
label define lr08a_ethnic_lbl 05 `"Gio"', add
label define lr08a_ethnic_lbl 06 `"Gola"', add
label define lr08a_ethnic_lbl 07 `"Grebo"', add
label define lr08a_ethnic_lbl 08 `"Kpelle"', add
label define lr08a_ethnic_lbl 09 `"Kissi"', add
label define lr08a_ethnic_lbl 10 `"Krahn"', add
label define lr08a_ethnic_lbl 11 `"Kru"', add
label define lr08a_ethnic_lbl 12 `"Lorma"', add
label define lr08a_ethnic_lbl 13 `"Mandingo"', add
label define lr08a_ethnic_lbl 14 `"Mano"', add
label define lr08a_ethnic_lbl 15 `"Mende"', add
label define lr08a_ethnic_lbl 16 `"Sapo"', add
label define lr08a_ethnic_lbl 17 `"Vai"', add
label define lr08a_ethnic_lbl 18 `"Other Liberian ethnic group"', add
label define lr08a_ethnic_lbl 19 `"Other African tribe"', add
label define lr08a_ethnic_lbl 20 `"Non-African tribe"', add
label values lr08a_ethnic lr08a_ethnic_lbl

label define lr08a_bpl_lbl 03 `"Bomi"'
label define lr08a_bpl_lbl 06 `"Bong"', add
label define lr08a_bpl_lbl 09 `"Grand Bassa"', add
label define lr08a_bpl_lbl 12 `"Grand Cape Mount"', add
label define lr08a_bpl_lbl 15 `"Grand Gedeh"', add
label define lr08a_bpl_lbl 18 `"Grand Kru"', add
label define lr08a_bpl_lbl 21 `"Lofa"', add
label define lr08a_bpl_lbl 24 `"Margibi"', add
label define lr08a_bpl_lbl 27 `"Maryland"', add
label define lr08a_bpl_lbl 30 `"Montserrado"', add
label define lr08a_bpl_lbl 33 `"Nimba"', add
label define lr08a_bpl_lbl 36 `"River Cess"', add
label define lr08a_bpl_lbl 39 `"Sinoe"', add
label define lr08a_bpl_lbl 42 `"River Gee"', add
label define lr08a_bpl_lbl 45 `"Gbarpolu"', add
label define lr08a_bpl_lbl 51 `"Liberia"', add
label define lr08a_bpl_lbl 52 `"Nigeria"', add
label define lr08a_bpl_lbl 53 `"Gambia"', add
label define lr08a_bpl_lbl 54 `"Guinea"', add
label define lr08a_bpl_lbl 55 `"Ghana"', add
label define lr08a_bpl_lbl 56 `"Sierra Leone"', add
label define lr08a_bpl_lbl 57 `"Cote D'Ivoire"', add
label define lr08a_bpl_lbl 59 `"Senegal"', add
label define lr08a_bpl_lbl 60 `"Mali"', add
label define lr08a_bpl_lbl 61 `"Togo"', add
label define lr08a_bpl_lbl 62 `"Other West Africa"', add
label define lr08a_bpl_lbl 63 `"Eastern Africa"', add
label define lr08a_bpl_lbl 65 `"Central Africa"', add
label define lr08a_bpl_lbl 66 `"Other Africa"', add
label define lr08a_bpl_lbl 67 `"Lebanon"', add
label define lr08a_bpl_lbl 68 `"India"', add
label define lr08a_bpl_lbl 69 `"Europe"', add
label define lr08a_bpl_lbl 70 `"North America (USA/Canada)"', add
label define lr08a_bpl_lbl 72 `"Other Asia"', add
label define lr08a_bpl_lbl 73 `"Other"', add
label define lr08a_bpl_lbl 99 `"Unknown"', add
label values lr08a_bpl lr08a_bpl_lbl

label define lr08a_nation_lbl 51 `"Liberian"'
label define lr08a_nation_lbl 52 `"Nigerian"', add
label define lr08a_nation_lbl 53 `"Gambian"', add
label define lr08a_nation_lbl 54 `"Guinean"', add
label define lr08a_nation_lbl 55 `"Ghanaian"', add
label define lr08a_nation_lbl 56 `"Sierra Leonean"', add
label define lr08a_nation_lbl 57 `"Ivoirien"', add
label define lr08a_nation_lbl 58 `"Bukinabi"', add
label define lr08a_nation_lbl 59 `"Senegalese"', add
label define lr08a_nation_lbl 60 `"Malian"', add
label define lr08a_nation_lbl 61 `"Togolese"', add
label define lr08a_nation_lbl 62 `"Other West African"', add
label define lr08a_nation_lbl 63 `"Other African"', add
label define lr08a_nation_lbl 67 `"Lebanonese"', add
label define lr08a_nation_lbl 68 `"Indian"', add
label define lr08a_nation_lbl 69 `"European"', add
label define lr08a_nation_lbl 70 `"North or Central American"', add
label define lr08a_nation_lbl 72 `"Other Asian"', add
label define lr08a_nation_lbl 73 `"Other"', add
label define lr08a_nation_lbl 99 `"Unknown"', add
label values lr08a_nation lr08a_nation_lbl

label define lr08a_resleng_lbl 00 `"0"'
label define lr08a_resleng_lbl 01 `"1"', add
label define lr08a_resleng_lbl 02 `"2"', add
label define lr08a_resleng_lbl 03 `"3"', add
label define lr08a_resleng_lbl 04 `"4"', add
label define lr08a_resleng_lbl 05 `"5"', add
label define lr08a_resleng_lbl 06 `"6"', add
label define lr08a_resleng_lbl 07 `"7"', add
label define lr08a_resleng_lbl 08 `"8"', add
label define lr08a_resleng_lbl 09 `"9"', add
label define lr08a_resleng_lbl 10 `"10"', add
label define lr08a_resleng_lbl 11 `"11"', add
label define lr08a_resleng_lbl 12 `"12"', add
label define lr08a_resleng_lbl 13 `"13"', add
label define lr08a_resleng_lbl 14 `"14"', add
label define lr08a_resleng_lbl 15 `"15"', add
label define lr08a_resleng_lbl 16 `"16"', add
label define lr08a_resleng_lbl 17 `"17"', add
label define lr08a_resleng_lbl 18 `"18"', add
label define lr08a_resleng_lbl 19 `"19"', add
label define lr08a_resleng_lbl 20 `"20"', add
label define lr08a_resleng_lbl 21 `"21"', add
label define lr08a_resleng_lbl 22 `"22"', add
label define lr08a_resleng_lbl 23 `"23"', add
label define lr08a_resleng_lbl 24 `"24"', add
label define lr08a_resleng_lbl 25 `"25"', add
label define lr08a_resleng_lbl 26 `"26"', add
label define lr08a_resleng_lbl 27 `"27"', add
label define lr08a_resleng_lbl 28 `"28"', add
label define lr08a_resleng_lbl 29 `"29"', add
label define lr08a_resleng_lbl 30 `"30"', add
label define lr08a_resleng_lbl 31 `"31"', add
label define lr08a_resleng_lbl 32 `"32"', add
label define lr08a_resleng_lbl 33 `"33"', add
label define lr08a_resleng_lbl 34 `"34"', add
label define lr08a_resleng_lbl 35 `"35"', add
label define lr08a_resleng_lbl 36 `"36"', add
label define lr08a_resleng_lbl 37 `"37"', add
label define lr08a_resleng_lbl 38 `"38"', add
label define lr08a_resleng_lbl 39 `"39"', add
label define lr08a_resleng_lbl 40 `"40"', add
label define lr08a_resleng_lbl 41 `"41"', add
label define lr08a_resleng_lbl 42 `"42"', add
label define lr08a_resleng_lbl 43 `"43"', add
label define lr08a_resleng_lbl 44 `"44"', add
label define lr08a_resleng_lbl 45 `"45"', add
label define lr08a_resleng_lbl 46 `"46"', add
label define lr08a_resleng_lbl 47 `"47"', add
label define lr08a_resleng_lbl 48 `"48"', add
label define lr08a_resleng_lbl 49 `"49"', add
label define lr08a_resleng_lbl 50 `"50"', add
label define lr08a_resleng_lbl 51 `"51"', add
label define lr08a_resleng_lbl 52 `"52"', add
label define lr08a_resleng_lbl 53 `"53"', add
label define lr08a_resleng_lbl 54 `"54"', add
label define lr08a_resleng_lbl 55 `"55"', add
label define lr08a_resleng_lbl 56 `"56"', add
label define lr08a_resleng_lbl 57 `"57"', add
label define lr08a_resleng_lbl 58 `"58"', add
label define lr08a_resleng_lbl 59 `"59"', add
label define lr08a_resleng_lbl 60 `"60"', add
label define lr08a_resleng_lbl 61 `"61"', add
label define lr08a_resleng_lbl 62 `"62"', add
label define lr08a_resleng_lbl 63 `"63"', add
label define lr08a_resleng_lbl 64 `"64"', add
label define lr08a_resleng_lbl 65 `"65"', add
label define lr08a_resleng_lbl 66 `"66"', add
label define lr08a_resleng_lbl 67 `"67"', add
label define lr08a_resleng_lbl 68 `"68"', add
label define lr08a_resleng_lbl 69 `"69"', add
label define lr08a_resleng_lbl 70 `"70"', add
label define lr08a_resleng_lbl 71 `"71"', add
label define lr08a_resleng_lbl 72 `"72"', add
label define lr08a_resleng_lbl 73 `"73"', add
label define lr08a_resleng_lbl 74 `"74"', add
label define lr08a_resleng_lbl 75 `"75"', add
label define lr08a_resleng_lbl 76 `"76"', add
label define lr08a_resleng_lbl 77 `"77"', add
label define lr08a_resleng_lbl 78 `"78"', add
label define lr08a_resleng_lbl 79 `"79"', add
label define lr08a_resleng_lbl 80 `"80"', add
label define lr08a_resleng_lbl 81 `"81"', add
label define lr08a_resleng_lbl 82 `"82"', add
label define lr08a_resleng_lbl 83 `"83"', add
label define lr08a_resleng_lbl 84 `"84"', add
label define lr08a_resleng_lbl 85 `"85"', add
label define lr08a_resleng_lbl 86 `"86"', add
label define lr08a_resleng_lbl 87 `"87"', add
label define lr08a_resleng_lbl 88 `"88"', add
label define lr08a_resleng_lbl 89 `"89"', add
label define lr08a_resleng_lbl 90 `"90"', add
label define lr08a_resleng_lbl 91 `"91"', add
label define lr08a_resleng_lbl 92 `"92"', add
label define lr08a_resleng_lbl 93 `"93"', add
label define lr08a_resleng_lbl 94 `"94"', add
label define lr08a_resleng_lbl 95 `"95+"', add
label values lr08a_resleng lr08a_resleng_lbl

label define lr08a_displace_lbl 1 `"Yes"'
label define lr08a_displace_lbl 2 `"No"', add
label define lr08a_displace_lbl 8 `"Unknown"', add
label define lr08a_displace_lbl 9 `"NIU (not in universe)"', add
label values lr08a_displace lr08a_displace_lbl

label define lr08a_reset_lbl 1 `"Yes"'
label define lr08a_reset_lbl 2 `"No"', add
label define lr08a_reset_lbl 8 `"Unknown"', add
label define lr08a_reset_lbl 9 `"NIU (not in universe)"', add
label values lr08a_reset lr08a_reset_lbl

label define lr08a_mortmom_lbl 1 `"Yes"'
label define lr08a_mortmom_lbl 2 `"No"', add
label define lr08a_mortmom_lbl 9 `"Unknown"', add
label values lr08a_mortmom lr08a_mortmom_lbl

label define lr08a_mortpop_lbl 1 `"Yes"'
label define lr08a_mortpop_lbl 2 `"No"', add
label define lr08a_mortpop_lbl 9 `"Unknown"', add
label values lr08a_mortpop lr08a_mortpop_lbl

label define lr08a_disab_lbl 1 `"Yes"'
label define lr08a_disab_lbl 2 `"No"', add
label values lr08a_disab lr08a_disab_lbl

label define lr08a_distype_lbl 01 `"Limited use of leg(s)"'
label define lr08a_distype_lbl 02 `"Loss of leg(s)"', add
label define lr08a_distype_lbl 03 `"Limited use of arm(s)"', add
label define lr08a_distype_lbl 04 `"Loss of arm(s)"', add
label define lr08a_distype_lbl 05 `"Hearing difficulty"', add
label define lr08a_distype_lbl 06 `"Unable to hear (deaf)"', add
label define lr08a_distype_lbl 07 `"Sight difficulty"', add
label define lr08a_distype_lbl 08 `"Loss of sight (blindness)"', add
label define lr08a_distype_lbl 09 `"Speech impairment"', add
label define lr08a_distype_lbl 10 `"Unable to speak (mute)"', add
label define lr08a_distype_lbl 11 `"Mental retardation"', add
label define lr08a_distype_lbl 12 `"Mental illness (strange behaviour)"', add
label define lr08a_distype_lbl 13 `"Deaf and dumb"', add
label define lr08a_distype_lbl 14 `"Other multiple disabilities"', add
label define lr08a_distype_lbl 15 `"Others"', add
label define lr08a_distype_lbl 99 `"NIU (not in universe)"', add
label values lr08a_distype lr08a_distype_lbl

label define lr08a_discause_lbl 01 `"Congenital (from birth)"'
label define lr08a_discause_lbl 02 `"Polio"', add
label define lr08a_discause_lbl 03 `"Stroke"', add
label define lr08a_discause_lbl 04 `"Epilepsy"', add
label define lr08a_discause_lbl 05 `"War"', add
label define lr08a_discause_lbl 06 `"Occupational injury"', add
label define lr08a_discause_lbl 07 `"Transport accident"', add
label define lr08a_discause_lbl 08 `"Other accident"', add
label define lr08a_discause_lbl 09 `"Aging process"', add
label define lr08a_discause_lbl 10 `"Other causes"', add
label define lr08a_discause_lbl 11 `"Other diseases"', add
label define lr08a_discause_lbl 99 `"NIU (not in universe)"', add
label values lr08a_discause lr08a_discause_lbl

label define lr08a_lit_lbl 1 `"Yes"'
label define lr08a_lit_lbl 2 `"No"', add
label define lr08a_lit_lbl 9 `"NIU (not in universe)"', add
label values lr08a_lit lr08a_lit_lbl

label define lr08a_school_lbl 1 `"Never attended"'
label define lr08a_school_lbl 2 `"Completed"', add
label define lr08a_school_lbl 3 `"Dropped out"', add
label define lr08a_school_lbl 4 `"Currently attending"', add
label define lr08a_school_lbl 9 `"NIU (not in universe)"', add
label values lr08a_school lr08a_school_lbl

label define lr08a_edattan_lbl 00 `"Pre-primary/no grade"'
label define lr08a_edattan_lbl 01 `"Grade 1"', add
label define lr08a_edattan_lbl 02 `"Grade 2"', add
label define lr08a_edattan_lbl 03 `"Grade 3"', add
label define lr08a_edattan_lbl 04 `"Grade 4"', add
label define lr08a_edattan_lbl 05 `"Grade 5"', add
label define lr08a_edattan_lbl 06 `"Grade 6"', add
label define lr08a_edattan_lbl 07 `"Grade 7"', add
label define lr08a_edattan_lbl 08 `"Grade 8"', add
label define lr08a_edattan_lbl 09 `"Grade 9"', add
label define lr08a_edattan_lbl 10 `"Grade 10"', add
label define lr08a_edattan_lbl 11 `"Grade 11"', add
label define lr08a_edattan_lbl 12 `"Grade 12"', add
label define lr08a_edattan_lbl 13 `"Technical/vocational"', add
label define lr08a_edattan_lbl 14 `"Year 1 of university"', add
label define lr08a_edattan_lbl 15 `"Year 2 of university"', add
label define lr08a_edattan_lbl 16 `"Year 3 of university"', add
label define lr08a_edattan_lbl 17 `"Year 4 of university"', add
label define lr08a_edattan_lbl 18 `"Completed undergraduate"', add
label define lr08a_edattan_lbl 19 `"Post graduate and above"', add
label define lr08a_edattan_lbl 99 `"NIU (not in universe)"', add
label values lr08a_edattan lr08a_edattan_lbl

label define lr08a_empstat_lbl 01 `"Paid employee"'
label define lr08a_empstat_lbl 02 `"Self employed"', add
label define lr08a_empstat_lbl 03 `"Contributing family worker"', add
label define lr08a_empstat_lbl 04 `"Looking for work"', add
label define lr08a_empstat_lbl 05 `"Not working and not looking for work"', add
label define lr08a_empstat_lbl 06 `"Household worker"', add
label define lr08a_empstat_lbl 07 `"Full time student"', add
label define lr08a_empstat_lbl 08 `"Retired/pensioner"', add
label define lr08a_empstat_lbl 09 `"Incapacitated"', add
label define lr08a_empstat_lbl 10 `"Part-time worker"', add
label define lr08a_empstat_lbl 11 `"Other"', add
label define lr08a_empstat_lbl 99 `"NIU (not in universe)"', add
label values lr08a_empstat lr08a_empstat_lbl

label define lr08a_occ_lbl 01 `"Legislator, senior official,manager"'
label define lr08a_occ_lbl 02 `"Professional"', add
label define lr08a_occ_lbl 03 `"Technician or associate professional"', add
label define lr08a_occ_lbl 04 `"Clerk"', add
label define lr08a_occ_lbl 05 `"Service worker, shop and market sales worker"', add
label define lr08a_occ_lbl 06 `"Skilled agricultural and fishery worker"', add
label define lr08a_occ_lbl 07 `"Craft and related trade worker"', add
label define lr08a_occ_lbl 08 `"Plant and machine operator and assemler"', add
label define lr08a_occ_lbl 09 `"Elementary occupation"', add
label define lr08a_occ_lbl 10 `"Armed forces"', add
label define lr08a_occ_lbl 99 `"NIU (not in universe)"', add
label values lr08a_occ lr08a_occ_lbl

label define lr08a_ind_lbl 01 `"Agriculture, forestry and fishing"'
label define lr08a_ind_lbl 02 `"Mining and quarrying"', add
label define lr08a_ind_lbl 03 `"Manufacturing"', add
label define lr08a_ind_lbl 04 `"Electricity, gas and water supply"', add
label define lr08a_ind_lbl 05 `"Water supply, sewerage, waste management"', add
label define lr08a_ind_lbl 06 `"Construction"', add
label define lr08a_ind_lbl 07 `"Wholesale and retail trade"', add
label define lr08a_ind_lbl 08 `"Accomodation and food service activities"', add
label define lr08a_ind_lbl 09 `"Transport and storage"', add
label define lr08a_ind_lbl 10 `"Information and communication"', add
label define lr08a_ind_lbl 11 `"Financial and insurance activities"', add
label define lr08a_ind_lbl 12 `"Administrative, support service activities"', add
label define lr08a_ind_lbl 13 `"Real estate activities"', add
label define lr08a_ind_lbl 14 `"Professional, scientific and technical activities"', add
label define lr08a_ind_lbl 15 `"Public administration, defense and compulsory security social security"', add
label define lr08a_ind_lbl 16 `"Education"', add
label define lr08a_ind_lbl 17 `"Health, social work and personal service activities"', add
label define lr08a_ind_lbl 18 `"Arts, entaintainment and recreation"', add
label define lr08a_ind_lbl 19 `"Private households with employed persons"', add
label define lr08a_ind_lbl 20 `"Extra-territorial organizations and bodies"', add
label define lr08a_ind_lbl 99 `"NIU (not in universe)"', add
label values lr08a_ind lr08a_ind_lbl

label define lr08a_classwk_lbl 1 `"Employee"'
label define lr08a_classwk_lbl 2 `"Employer"', add
label define lr08a_classwk_lbl 3 `"Own-account worker"', add
label define lr08a_classwk_lbl 4 `"Contributing family worker"', add
label define lr08a_classwk_lbl 5 `"Members producer's cooperatives"', add
label define lr08a_classwk_lbl 6 `"Work not classifiable by status"', add
label define lr08a_classwk_lbl 9 `"NIU (not in universe)"', add
label values lr08a_classwk lr08a_classwk_lbl

label define lr08a_chbornm_lbl 00 `"0"'
label define lr08a_chbornm_lbl 01 `"1"', add
label define lr08a_chbornm_lbl 02 `"2"', add
label define lr08a_chbornm_lbl 03 `"3"', add
label define lr08a_chbornm_lbl 04 `"4"', add
label define lr08a_chbornm_lbl 05 `"5"', add
label define lr08a_chbornm_lbl 06 `"6"', add
label define lr08a_chbornm_lbl 07 `"7"', add
label define lr08a_chbornm_lbl 08 `"8"', add
label define lr08a_chbornm_lbl 09 `"9"', add
label define lr08a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values lr08a_chbornm lr08a_chbornm_lbl

label define lr08a_chbornf_lbl 00 `"0"'
label define lr08a_chbornf_lbl 01 `"1"', add
label define lr08a_chbornf_lbl 02 `"2"', add
label define lr08a_chbornf_lbl 03 `"3"', add
label define lr08a_chbornf_lbl 04 `"4"', add
label define lr08a_chbornf_lbl 05 `"5"', add
label define lr08a_chbornf_lbl 06 `"6"', add
label define lr08a_chbornf_lbl 07 `"7"', add
label define lr08a_chbornf_lbl 08 `"8"', add
label define lr08a_chbornf_lbl 09 `"9"', add
label define lr08a_chbornf_lbl 10 `"10 or more"', add
label define lr08a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values lr08a_chbornf lr08a_chbornf_lbl

label define lr08a_homemal_lbl 0 `"0"'
label define lr08a_homemal_lbl 1 `"1"', add
label define lr08a_homemal_lbl 2 `"2"', add
label define lr08a_homemal_lbl 3 `"3"', add
label define lr08a_homemal_lbl 4 `"4"', add
label define lr08a_homemal_lbl 5 `"5"', add
label define lr08a_homemal_lbl 6 `"6"', add
label define lr08a_homemal_lbl 7 `"7 or more"', add
label define lr08a_homemal_lbl 9 `"NIU (not in universe)"', add
label values lr08a_homemal lr08a_homemal_lbl

label define lr08a_homefem_lbl 0 `"0"'
label define lr08a_homefem_lbl 1 `"1"', add
label define lr08a_homefem_lbl 2 `"2"', add
label define lr08a_homefem_lbl 3 `"3"', add
label define lr08a_homefem_lbl 4 `"4"', add
label define lr08a_homefem_lbl 5 `"5"', add
label define lr08a_homefem_lbl 6 `"6"', add
label define lr08a_homefem_lbl 7 `"7 or more"', add
label define lr08a_homefem_lbl 9 `"NIU (not in universe)"', add
label values lr08a_homefem lr08a_homefem_lbl

label define lr08a_awaymal_lbl 0 `"0"'
label define lr08a_awaymal_lbl 1 `"1"', add
label define lr08a_awaymal_lbl 2 `"2"', add
label define lr08a_awaymal_lbl 3 `"3"', add
label define lr08a_awaymal_lbl 4 `"4"', add
label define lr08a_awaymal_lbl 5 `"5"', add
label define lr08a_awaymal_lbl 6 `"6"', add
label define lr08a_awaymal_lbl 7 `"7 or more"', add
label define lr08a_awaymal_lbl 9 `"NIU (not in universe)"', add
label values lr08a_awaymal lr08a_awaymal_lbl

label define lr08a_awayfem_lbl 0 `"0"'
label define lr08a_awayfem_lbl 1 `"1"', add
label define lr08a_awayfem_lbl 2 `"2"', add
label define lr08a_awayfem_lbl 3 `"3"', add
label define lr08a_awayfem_lbl 4 `"4"', add
label define lr08a_awayfem_lbl 5 `"5"', add
label define lr08a_awayfem_lbl 6 `"6"', add
label define lr08a_awayfem_lbl 7 `"7 or more"', add
label define lr08a_awayfem_lbl 9 `"NIU (not in universe)"', add
label values lr08a_awayfem lr08a_awayfem_lbl

label define lr08a_awayfem_lbl 0 `"0"'
label define lr08a_awayfem_lbl 1 `"1"', add
label define lr08a_awayfem_lbl 2 `"2"', add
label define lr08a_awayfem_lbl 3 `"3"', add
label define lr08a_awayfem_lbl 4 `"4"', add
label define lr08a_awayfem_lbl 5 `"5"', add
label define lr08a_awayfem_lbl 6 `"6"', add
label define lr08a_awayfem_lbl 7 `"7 or more"', add
label define lr08a_awayfem_lbl 9 `"NIU (not in universe)"', add
label values lr08a_awayfem lr08a_awayfem_lbl

label define lr08a_chdeadm_lbl 0 `"0"'
label define lr08a_chdeadm_lbl 1 `"1"', add
label define lr08a_chdeadm_lbl 2 `"2"', add
label define lr08a_chdeadm_lbl 3 `"3"', add
label define lr08a_chdeadm_lbl 4 `"4"', add
label define lr08a_chdeadm_lbl 5 `"5"', add
label define lr08a_chdeadm_lbl 6 `"6 or more"', add
label define lr08a_chdeadm_lbl 9 `"NIU (not in universe)"', add
label values lr08a_chdeadm lr08a_chdeadm_lbl

label define lr08a_chdeadf_lbl 0 `"0"'
label define lr08a_chdeadf_lbl 1 `"1"', add
label define lr08a_chdeadf_lbl 2 `"2"', add
label define lr08a_chdeadf_lbl 3 `"3"', add
label define lr08a_chdeadf_lbl 4 `"4"', add
label define lr08a_chdeadf_lbl 5 `"5"', add
label define lr08a_chdeadf_lbl 6 `"6 or more"', add
label define lr08a_chdeadf_lbl 9 `"NIU (not in universe)"', add
label values lr08a_chdeadf lr08a_chdeadf_lbl

label define lr08a_chsex_lbl 0 `"No birth"'
label define lr08a_chsex_lbl 1 `"Male"', add
label define lr08a_chsex_lbl 2 `"Female"', add
label define lr08a_chsex_lbl 9 `"NIU (not in universe)"', add
label values lr08a_chsex lr08a_chsex_lbl

label define lr08a_chbirmo_lbl 00 `"No birth"'
label define lr08a_chbirmo_lbl 01 `"January"', add
label define lr08a_chbirmo_lbl 02 `"February"', add
label define lr08a_chbirmo_lbl 03 `"March"', add
label define lr08a_chbirmo_lbl 04 `"April"', add
label define lr08a_chbirmo_lbl 05 `"May"', add
label define lr08a_chbirmo_lbl 06 `"June"', add
label define lr08a_chbirmo_lbl 07 `"July"', add
label define lr08a_chbirmo_lbl 08 `"August"', add
label define lr08a_chbirmo_lbl 09 `"September"', add
label define lr08a_chbirmo_lbl 10 `"October"', add
label define lr08a_chbirmo_lbl 11 `"November"', add
label define lr08a_chbirmo_lbl 12 `"December"', add
label define lr08a_chbirmo_lbl 98 `"Unknown"', add
label define lr08a_chbirmo_lbl 99 `"NIU (not in universe)"', add
label values lr08a_chbirmo lr08a_chbirmo_lbl

label define lr08a_chbiryr_lbl 0 `"No birth"'
label define lr08a_chbiryr_lbl 1 `"2007"', add
label define lr08a_chbiryr_lbl 2 `"2008"', add
label define lr08a_chbiryr_lbl 8 `"Unknown"', add
label define lr08a_chbiryr_lbl 9 `"NIU (not in universe)"', add
label values lr08a_chbiryr lr08a_chbiryr_lbl

label define lr08a_chlive_lbl 0 `"No birth"'
label define lr08a_chlive_lbl 1 `"Yes"', add
label define lr08a_chlive_lbl 2 `"No"', add
label define lr08a_chlive_lbl 8 `"Unknown"', add
label define lr08a_chlive_lbl 9 `"NIU (not in universe)"', add
label values lr08a_chlive lr08a_chlive_lbl

label define lr08a_chborn_lbl 00 `"0"'
label define lr08a_chborn_lbl 01 `"1"', add
label define lr08a_chborn_lbl 02 `"2"', add
label define lr08a_chborn_lbl 03 `"3"', add
label define lr08a_chborn_lbl 04 `"4"', add
label define lr08a_chborn_lbl 05 `"5"', add
label define lr08a_chborn_lbl 06 `"6"', add
label define lr08a_chborn_lbl 07 `"7"', add
label define lr08a_chborn_lbl 08 `"8"', add
label define lr08a_chborn_lbl 09 `"9"', add
label define lr08a_chborn_lbl 10 `"10"', add
label define lr08a_chborn_lbl 11 `"11"', add
label define lr08a_chborn_lbl 12 `"12"', add
label define lr08a_chborn_lbl 13 `"13"', add
label define lr08a_chborn_lbl 14 `"14"', add
label define lr08a_chborn_lbl 15 `"15"', add
label define lr08a_chborn_lbl 99 `"NIU (not in universe)"', add
label values lr08a_chborn lr08a_chborn_lbl

label define lr08a_chsurv_lbl 00 `"0"'
label define lr08a_chsurv_lbl 01 `"1"', add
label define lr08a_chsurv_lbl 02 `"2"', add
label define lr08a_chsurv_lbl 03 `"3"', add
label define lr08a_chsurv_lbl 04 `"4"', add
label define lr08a_chsurv_lbl 05 `"5"', add
label define lr08a_chsurv_lbl 06 `"6"', add
label define lr08a_chsurv_lbl 07 `"7"', add
label define lr08a_chsurv_lbl 08 `"8"', add
label define lr08a_chsurv_lbl 09 `"9"', add
label define lr08a_chsurv_lbl 10 `"10"', add
label define lr08a_chsurv_lbl 11 `"11"', add
label define lr08a_chsurv_lbl 12 `"12"', add
label define lr08a_chsurv_lbl 13 `"13 or more"', add
label define lr08a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values lr08a_chsurv lr08a_chsurv_lbl


