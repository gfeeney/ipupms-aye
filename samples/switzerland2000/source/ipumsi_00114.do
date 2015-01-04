* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  byte    ch00a_pern       22-23    ///
  byte    ch00a_fbig       24-24    ///
  int     ch00a_fbig_nd    25-27    ///
  int     ch00a_fbig_nh    28-30    ///
  byte    ch00a_canton     31-32    ///
  int     ch00a_hhtype     33-36    ///
  byte    ch00a_categbld   37-37    ///
  byte    ch00a_typebldg   38-38    ///
  byte    ch00a_yrbuilt    39-39    ///
  byte    ch00a_floors     40-41    ///
  byte    ch00a_ownbldg    42-42    ///
  byte    ch00a_heating    43-43    ///
  byte    ch00a_hotwater   44-44    ///
  byte    ch00a_fuelheat   45-45    ///
  byte    ch00a_fuelwatr   46-46    ///
  byte    ch00a_dwellbld   47-48    ///
  byte    ch00a_permdwls   49-50    ///
  byte    ch00a_tempdwls   51-52    ///
  byte    ch00a_vacdwls    53-54    ///
  byte    ch00a_rooms      55-56    ///
  byte    ch00a_roomscon   57-58    ///
  int     ch00a_area       59-62    ///
  byte    ch00a_kitchen    63-63    ///
  byte    ch00a_occstatus  64-64    ///
  long    ch00a_rent       65-69    ///
  int     pernum           70-72    ///
  float   wtper            73-80    ///
  byte    ch00a_pernum     81-82    ///
  byte    ch00a_labforce   83-84    ///
  int     ch00a_nation     85-88    ///
  byte    ch00a_res5yr     89-89    ///
  byte    ch00a_bpl        90-90    ///
  byte    ch00a_citiz      91-91    ///
  byte    ch00a_placwork   92-92    ///
  byte    ch00a_placeduc   93-93    ///
  byte    ch00a_age        94-95    ///
  byte    ch00a_sex        96-96    ///
  byte    ch00a_marst      97-97    ///
  int     ch00a_relig      98-100   ///
  int     ch00a_mtongue    101-103  ///
  byte    ch00a_head       104-104  ///
  byte    ch00a_relate     105-105  ///
  long    ch00a_edprof     106-110  ///
  long    ch00a_occ        111-115  ///
  int     ch00a_isco3      116-118  ///
  int     ch00a_isco4      119-122  ///
  byte    ch00a_classwk    123-123  ///
  byte    ch00a_hrswork    124-124  ///
  int     ch00a_ind        125-127  ///
  byte    ch00a_bustype    128-128  ///
  int     ch00a_socecon    129-131  ///
  byte    ch00a_worktime   132-132  ///
  byte    ch00a_wrktrips   133-133  ///
  byte    ch00a_wtravmod   134-135  ///
  byte    ch00a_schltime   136-136  ///
  byte    ch00a_schtrips   137-137  ///
  byte    ch00a_stravmod   138-139  ///
  byte    ch00a_edatt1     140-140  ///
  byte    ch00a_edatt2     141-142  ///
  int     ch00a_yrmarst    143-146  ///
  int     ch00a_yrcitiz    147-150  ///
  int     ch00a_nation2    151-154  ///
  byte    ch00a_respermt   155-155  ///
  byte    ch00a_parents    156-156  ///
  byte    ch00a_nchild     157-158  ///
  int     ch00a_yrbirth1   159-162  ///
  int     ch00a_yrbirth2   163-166  ///
  int     ch00a_yrbirth3   167-170  ///
  int     ch00a_yrbirth4   171-174  ///
  int     ch00a_yrlstbth   175-178  ///
  int     ch00a_yrbthyng   179-182  ///
  int     ch00a_langhmwk   183-186  ///
  int     ch00a_langhome   187-189  ///
  int     ch00a_langwksc   190-192  ///
  byte    ch00a_edattend   193-194  ///
  int     ch00a_empstat    195-197  ///
  byte    ch00a_multactv   198-199  ///
  byte    ch00a_homecare   200-200  ///
  byte    ch00a_voluntry   201-201  ///
  int     ch00a_hrsfull    202-204  ///
  byte    ch00a_hrspart    205-206  ///
  byte    ch00a_hrseduc    207-208  ///
  int     ch00a_hrshomwk   209-211  ///
  byte    ch00a_hrsvolun   212-213  ///
  byte    ch00a_commwork   214-214  ///
  byte    ch00a_commschl   215-215  ///
  using `"ipumsi_00114.dat"'

replace wtper           = wtper           / 100

format serial          %10.0f
format wtper           %8.2f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var ch00a_pern      `"Number of persons in household"'
label var ch00a_fbig      `"Dwelling created by splitting apart a large dwelling or household"'
label var ch00a_fbig_nd   `"Number of persons in large dwelling before it was split"'
label var ch00a_fbig_nh   `"Number of persons in large household before it was split"'
label var ch00a_canton    `"Canton of usual residence"'
label var ch00a_hhtype    `"Type of household"'
label var ch00a_categbld  `"Category of building"'
label var ch00a_typebldg  `"Type of building"'
label var ch00a_yrbuilt   `"Year structure was built"'
label var ch00a_floors    `"Number of floors (including ground floor)"'
label var ch00a_ownbldg   `"Type of ownership (building)"'
label var ch00a_heating   `"Type of heating"'
label var ch00a_hotwater  `"Hot water"'
label var ch00a_fuelheat  `"Energy used for heating"'
label var ch00a_fuelwatr  `"Energy used for hot water"'
label var ch00a_dwellbld  `"Total number of dwellings in building"'
label var ch00a_permdwls  `"Number of permanently occupied dwellings in building"'
label var ch00a_tempdwls  `"Number of temporarily occupied dwellings in building"'
label var ch00a_vacdwls   `"Number of vacant or empty dwellings in building"'
label var ch00a_rooms     `"Number of rooms"'
label var ch00a_roomscon  `"Number of connected rooms"'
label var ch00a_area      `"Area (in square meters) of dwelling"'
label var ch00a_kitchen   `"Kitchen or kitchenette"'
label var ch00a_occstatus `"Occupancy status of dwelling"'
label var ch00a_rent      `"Net rent (in Swiss Francs)"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var ch00a_pernum    `"Person number (within household)"'
label var ch00a_labforce  `"Labour force status"'
label var ch00a_nation    `"Country of citizenship"'
label var ch00a_res5yr    `"Place of residence 5 years prior to the census"'
label var ch00a_bpl       `"Place of birth"'
label var ch00a_citiz     `"Citizenship"'
label var ch00a_placwork  `"Location of place of work"'
label var ch00a_placeduc  `"Location of place of education"'
label var ch00a_age       `"Age"'
label var ch00a_sex       `"Sex"'
label var ch00a_marst     `"Marital status"'
label var ch00a_relig     `"Religion"'
label var ch00a_mtongue   `"Mother tongue"'
label var ch00a_head      `"Reference personor spouse"'
label var ch00a_relate    `"Household status (relationship)"'
label var ch00a_edprof    `"Profession studied, highest qualification obtained"'
label var ch00a_occ       `"Present occupation"'
label var ch00a_isco3     `"Present occupation (ISCO-COM), 3 digits"'
label var ch00a_isco4     `"Present occupation (ISCO-COM)"'
label var ch00a_classwk   `"Position in principal employment"'
label var ch00a_hrswork   `"Time worked (hours)"'
label var ch00a_ind       `"Branch of economic activity (industry)"'
label var ch00a_bustype   `"Judicial form of the enterprise"'
label var ch00a_socecon   `"Socio-economic status in employment"'
label var ch00a_worktime  `"Time to commute (travel duration) to work"'
label var ch00a_wrktrips  `"Round trips (how often) to commute to work"'
label var ch00a_wtravmod  `"Means of transport (travel mode) to work"'
label var ch00a_schltime  `"Time to commute (travel duration) to school"'
label var ch00a_schtrips  `"Round trips (how often) to commute to school"'
label var ch00a_stravmod  `"Means of transport (travel mode) to school"'
label var ch00a_edatt1    `"Highest level of educational attainment (original values)"'
label var ch00a_edatt2    `"Highest level of educational attainment (corrected values)"'
label var ch00a_yrmarst   `"Year of the last change in marital status"'
label var ch00a_yrcitiz   `"Year of acquisition of Swiss citizenship"'
label var ch00a_nation2   `"Second nationality"'
label var ch00a_respermt  `"Type of residence permit"'
label var ch00a_parents   `"Parents"'
label var ch00a_nchild    `"Number of children"'
label var ch00a_yrbirth1  `"Year of birth of the first child"'
label var ch00a_yrbirth2  `"Year of birth of the second child"'
label var ch00a_yrbirth3  `"Year of birth of the third child"'
label var ch00a_yrbirth4  `"Year of birth of the fourth child"'
label var ch00a_yrlstbth  `"Year of birth of the last child"'
label var ch00a_yrbthyng  `"Year of birth of the youngest child"'
label var ch00a_langhmwk  `"Spoken language at home and at work"'
label var ch00a_langhome  `"Spoken language at home"'
label var ch00a_langwksc  `"Spoken language at work/at school"'
label var ch00a_edattend  `"Current educational level"'
label var ch00a_empstat   `"Employment status"'
label var ch00a_multactv  `"Multiple activity status"'
label var ch00a_homecare  `"Housework and caring for the family"'
label var ch00a_voluntry  `"Voluntary work"'
label var ch00a_hrsfull   `"Number of weekly hours: full-time work"'
label var ch00a_hrspart   `"Number of weekly hours: part-time work"'
label var ch00a_hrseduc   `"Number of weekly hours: education"'
label var ch00a_hrshomwk  `"Number of weekly hours: housework and caring for the family"'
label var ch00a_hrsvolun  `"Number of weekly hours: voluntary work"'
label var ch00a_commwork  `"Commute to work"'
label var ch00a_commschl  `"Commute to school"'

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

label define ch00a_pern_lbl 01 `"1"'
label define ch00a_pern_lbl 02 `"2"', add
label define ch00a_pern_lbl 03 `"3"', add
label define ch00a_pern_lbl 04 `"4"', add
label define ch00a_pern_lbl 05 `"5"', add
label define ch00a_pern_lbl 06 `"6"', add
label define ch00a_pern_lbl 07 `"7"', add
label define ch00a_pern_lbl 08 `"8"', add
label define ch00a_pern_lbl 09 `"9"', add
label define ch00a_pern_lbl 10 `"10"', add
label define ch00a_pern_lbl 11 `"11"', add
label define ch00a_pern_lbl 12 `"12"', add
label define ch00a_pern_lbl 13 `"13"', add
label define ch00a_pern_lbl 14 `"14"', add
label define ch00a_pern_lbl 15 `"15"', add
label values ch00a_pern ch00a_pern_lbl

label define ch00a_fbig_lbl 0 `"No problem"'
label define ch00a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define ch00a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values ch00a_fbig ch00a_fbig_lbl

label define ch00a_fbig_nd_lbl 000 `"Not split"'
label define ch00a_fbig_nd_lbl 016 `"16"', add
label define ch00a_fbig_nd_lbl 017 `"17"', add
label define ch00a_fbig_nd_lbl 018 `"18"', add
label define ch00a_fbig_nd_lbl 019 `"19"', add
label define ch00a_fbig_nd_lbl 020 `"20"', add
label define ch00a_fbig_nd_lbl 021 `"21"', add
label define ch00a_fbig_nd_lbl 022 `"22"', add
label define ch00a_fbig_nd_lbl 024 `"24"', add
label define ch00a_fbig_nd_lbl 025 `"25"', add
label define ch00a_fbig_nd_lbl 026 `"26"', add
label define ch00a_fbig_nd_lbl 029 `"29"', add
label define ch00a_fbig_nd_lbl 030 `"30"', add
label define ch00a_fbig_nd_lbl 035 `"35"', add
label define ch00a_fbig_nd_lbl 036 `"36"', add
label define ch00a_fbig_nd_lbl 037 `"37"', add
label define ch00a_fbig_nd_lbl 095 `"95"', add
label define ch00a_fbig_nd_lbl 103 `"103"', add
label define ch00a_fbig_nd_lbl 378 `"378"', add
label values ch00a_fbig_nd ch00a_fbig_nd_lbl

label define ch00a_fbig_nh_lbl 000 `"Not split"'
label define ch00a_fbig_nh_lbl 016 `"16"', add
label define ch00a_fbig_nh_lbl 017 `"17"', add
label define ch00a_fbig_nh_lbl 018 `"18"', add
label define ch00a_fbig_nh_lbl 019 `"19"', add
label define ch00a_fbig_nh_lbl 020 `"20"', add
label define ch00a_fbig_nh_lbl 021 `"21"', add
label define ch00a_fbig_nh_lbl 022 `"22"', add
label define ch00a_fbig_nh_lbl 024 `"24"', add
label define ch00a_fbig_nh_lbl 025 `"25"', add
label define ch00a_fbig_nh_lbl 026 `"26"', add
label define ch00a_fbig_nh_lbl 029 `"29"', add
label define ch00a_fbig_nh_lbl 030 `"30"', add
label define ch00a_fbig_nh_lbl 035 `"35"', add
label define ch00a_fbig_nh_lbl 036 `"36"', add
label define ch00a_fbig_nh_lbl 037 `"37"', add
label define ch00a_fbig_nh_lbl 095 `"95"', add
label define ch00a_fbig_nh_lbl 103 `"103"', add
label define ch00a_fbig_nh_lbl 378 `"378"', add
label values ch00a_fbig_nh ch00a_fbig_nh_lbl

label define ch00a_canton_lbl 01 `"Zurich"'
label define ch00a_canton_lbl 02 `"Bern"', add
label define ch00a_canton_lbl 03 `"Luzern (Lucerne)"', add
label define ch00a_canton_lbl 04 `"Uri"', add
label define ch00a_canton_lbl 05 `"Schwyz"', add
label define ch00a_canton_lbl 06 `"Obwalden (Obwald)"', add
label define ch00a_canton_lbl 07 `"Nidwalden (Nidwald)"', add
label define ch00a_canton_lbl 08 `"Glarus"', add
label define ch00a_canton_lbl 09 `"Zug"', add
label define ch00a_canton_lbl 10 `"Fribourg"', add
label define ch00a_canton_lbl 11 `"Solothurn"', add
label define ch00a_canton_lbl 12 `"Basel-Stadt (Basel-City)"', add
label define ch00a_canton_lbl 13 `"Basel-Landschaft (Basel-Country)"', add
label define ch00a_canton_lbl 14 `"Schaffhausen"', add
label define ch00a_canton_lbl 15 `"Outer and Inner Rhodes"', add
label define ch00a_canton_lbl 17 `"St. Gallen (St. Gall)"', add
label define ch00a_canton_lbl 18 `"Graubundun (Grisons)"', add
label define ch00a_canton_lbl 19 `"Aargau (Argovia)"', add
label define ch00a_canton_lbl 20 `"Thurgau (Thurgovia)"', add
label define ch00a_canton_lbl 21 `"Ticino"', add
label define ch00a_canton_lbl 22 `"Vaud"', add
label define ch00a_canton_lbl 23 `"Valais"', add
label define ch00a_canton_lbl 24 `"Neuchatel"', add
label define ch00a_canton_lbl 25 `"Geneva"', add
label define ch00a_canton_lbl 26 `"Jura"', add
label values ch00a_canton ch00a_canton_lbl

label define ch00a_hhtype_lbl 1000 `"One person household"'
label define ch00a_hhtype_lbl 2111 `"Married couple, without children or additional persons"', add
label define ch00a_hhtype_lbl 2112 `"Consensual union couple, without children or additional persons"', add
label define ch00a_hhtype_lbl 2121 `"Married couple without children but with additional persons"', add
label define ch00a_hhtype_lbl 2122 `"Consensual union couple without children but with additional persons"', add
label define ch00a_hhtype_lbl 2211 `"Married couple with one or more child(ren) without additional persons"', add
label define ch00a_hhtype_lbl 2212 `"Consensual union couple with one or more child(ren) without additional persons"', add
label define ch00a_hhtype_lbl 2221 `"Married couple with one or more child(ren) and with additional persons"', add
label define ch00a_hhtype_lbl 2222 `"Consensual union couple with one or more child(ren) and with additional persons"', add
label define ch00a_hhtype_lbl 2310 `"Parent with children but without additional persons"', add
label define ch00a_hhtype_lbl 2320 `"Parent with children and additional persons"', add
label define ch00a_hhtype_lbl 2411 `"Single person with both parents without additional persons"', add
label define ch00a_hhtype_lbl 2412 `"Single person with a parent without additional persons"', add
label define ch00a_hhtype_lbl 2421 `"Single person with one or both parents and with additional persons"', add
label define ch00a_hhtype_lbl 3110 `"Extended family household without additional persons"', add
label define ch00a_hhtype_lbl 3120 `"Extended family household with additional persons"', add
label define ch00a_hhtype_lbl 3200 `"Household of unrelated persons"', add
label define ch00a_hhtype_lbl 9100 `"Institution"', add
label define ch00a_hhtype_lbl 9200 `"Collective household"', add
label define ch00a_hhtype_lbl 9800 `"Composite household [Sammelhaushalt]"', add
label values ch00a_hhtype ch00a_hhtype_lbl

label define ch00a_categbld_lbl 0 `"Occupied building with at least 1 private household or dwelling, or emergency shelter with at least one private household"'
label define ch00a_categbld_lbl 1 `"Occupied building with only one or several collective household"', add
label define ch00a_categbld_lbl 8 `"Household not connected with a real building"', add
label values ch00a_categbld ch00a_categbld_lbl

label define ch00a_typebldg_lbl 1 `"One family house"'
label define ch00a_typebldg_lbl 2 `"Two families house"', add
label define ch00a_typebldg_lbl 3 `"Multiple families house"', add
label define ch00a_typebldg_lbl 4 `"Other building"', add
label define ch00a_typebldg_lbl 5 `"Emergency shelter"', add
label define ch00a_typebldg_lbl 9 `"NIU (not in universe)"', add
label values ch00a_typebldg ch00a_typebldg_lbl

label define ch00a_yrbuilt_lbl 1 `"Before 1946"'
label define ch00a_yrbuilt_lbl 2 `"1946-1960"', add
label define ch00a_yrbuilt_lbl 3 `"1961-1970"', add
label define ch00a_yrbuilt_lbl 4 `"1971-1980"', add
label define ch00a_yrbuilt_lbl 5 `"1981-1990"', add
label define ch00a_yrbuilt_lbl 6 `"1991-1995"', add
label define ch00a_yrbuilt_lbl 7 `"1996-2000"', add
label define ch00a_yrbuilt_lbl 9 `"NIU (not in universe)"', add
label values ch00a_yrbuilt ch00a_yrbuilt_lbl

label define ch00a_floors_lbl 01 `"1"'
label define ch00a_floors_lbl 02 `"2"', add
label define ch00a_floors_lbl 03 `"3"', add
label define ch00a_floors_lbl 04 `"4"', add
label define ch00a_floors_lbl 05 `"5"', add
label define ch00a_floors_lbl 06 `"6"', add
label define ch00a_floors_lbl 07 `"7"', add
label define ch00a_floors_lbl 08 `"8"', add
label define ch00a_floors_lbl 09 `"9"', add
label define ch00a_floors_lbl 10 `"10"', add
label define ch00a_floors_lbl 11 `"11"', add
label define ch00a_floors_lbl 12 `"12"', add
label define ch00a_floors_lbl 13 `"13"', add
label define ch00a_floors_lbl 14 `"14"', add
label define ch00a_floors_lbl 15 `"15"', add
label define ch00a_floors_lbl 16 `"16"', add
label define ch00a_floors_lbl 17 `"17"', add
label define ch00a_floors_lbl 18 `"18"', add
label define ch00a_floors_lbl 19 `"19"', add
label define ch00a_floors_lbl 20 `"20"', add
label define ch00a_floors_lbl 21 `"21"', add
label define ch00a_floors_lbl 22 `"22"', add
label define ch00a_floors_lbl 23 `"23"', add
label define ch00a_floors_lbl 24 `"24"', add
label define ch00a_floors_lbl 25 `"25+"', add
label define ch00a_floors_lbl 99 `"NIU (not in universe)"', add
label values ch00a_floors ch00a_floors_lbl

label define ch00a_ownbldg_lbl 1 `"Private person (including joint heirs)"'
label define ch00a_ownbldg_lbl 2 `"Real estate or construction company"', add
label define ch00a_ownbldg_lbl 3 `"Housing cooperative"', add
label define ch00a_ownbldg_lbl 4 `"Foundation, association"', add
label define ch00a_ownbldg_lbl 5 `"Community, canton, federal, foreign country"', add
label define ch00a_ownbldg_lbl 6 `"Other type of ownership"', add
label define ch00a_ownbldg_lbl 8 `"Unknown"', add
label define ch00a_ownbldg_lbl 9 `"NIU (not in universe)"', add
label values ch00a_ownbldg ch00a_ownbldg_lbl

label define ch00a_heating_lbl 1 `"Single stove"'
label define ch00a_heating_lbl 2 `"Central heating for one floor"', add
label define ch00a_heating_lbl 3 `"Central heating for one building"', add
label define ch00a_heating_lbl 4 `"Central heating for several buildings"', add
label define ch00a_heating_lbl 5 `"No heating"', add
label define ch00a_heating_lbl 8 `"Unknown"', add
label define ch00a_heating_lbl 9 `"NIU (not in universe)"', add
label values ch00a_heating ch00a_heating_lbl

label define ch00a_hotwater_lbl 1 `"With warm water supply"'
label define ch00a_hotwater_lbl 2 `"Without warm water supply"', add
label define ch00a_hotwater_lbl 8 `"Unknown"', add
label define ch00a_hotwater_lbl 9 `"NIU (not in universe)"', add
label values ch00a_hotwater ch00a_hotwater_lbl

label define ch00a_fuelheat_lbl 1 `"Oil"'
label define ch00a_fuelheat_lbl 2 `"Gas"', add
label define ch00a_fuelheat_lbl 3 `"Electricity"', add
label define ch00a_fuelheat_lbl 4 `"Wood, coal"', add
label define ch00a_fuelheat_lbl 5 `"Other"', add
label define ch00a_fuelheat_lbl 9 `"NIU (not in universe)"', add
label values ch00a_fuelheat ch00a_fuelheat_lbl

label define ch00a_fuelwatr_lbl 1 `"Oil"'
label define ch00a_fuelwatr_lbl 2 `"Gas"', add
label define ch00a_fuelwatr_lbl 3 `"Electricity"', add
label define ch00a_fuelwatr_lbl 4 `"Wood, coal"', add
label define ch00a_fuelwatr_lbl 5 `"Other"', add
label define ch00a_fuelwatr_lbl 9 `"NIU (not in universe)"', add
label values ch00a_fuelwatr ch00a_fuelwatr_lbl

label define ch00a_dwellbld_lbl 01 `"1"'
label define ch00a_dwellbld_lbl 02 `"2"', add
label define ch00a_dwellbld_lbl 03 `"3"', add
label define ch00a_dwellbld_lbl 04 `"4"', add
label define ch00a_dwellbld_lbl 05 `"5"', add
label define ch00a_dwellbld_lbl 06 `"6"', add
label define ch00a_dwellbld_lbl 07 `"7"', add
label define ch00a_dwellbld_lbl 08 `"8"', add
label define ch00a_dwellbld_lbl 09 `"9"', add
label define ch00a_dwellbld_lbl 10 `"10"', add
label define ch00a_dwellbld_lbl 11 `"11"', add
label define ch00a_dwellbld_lbl 12 `"12"', add
label define ch00a_dwellbld_lbl 13 `"13"', add
label define ch00a_dwellbld_lbl 14 `"14"', add
label define ch00a_dwellbld_lbl 15 `"15"', add
label define ch00a_dwellbld_lbl 16 `"16"', add
label define ch00a_dwellbld_lbl 17 `"17"', add
label define ch00a_dwellbld_lbl 18 `"18"', add
label define ch00a_dwellbld_lbl 19 `"19"', add
label define ch00a_dwellbld_lbl 20 `"20"', add
label define ch00a_dwellbld_lbl 21 `"21"', add
label define ch00a_dwellbld_lbl 22 `"22"', add
label define ch00a_dwellbld_lbl 23 `"23"', add
label define ch00a_dwellbld_lbl 24 `"24"', add
label define ch00a_dwellbld_lbl 25 `"25"', add
label define ch00a_dwellbld_lbl 26 `"26"', add
label define ch00a_dwellbld_lbl 27 `"27"', add
label define ch00a_dwellbld_lbl 28 `"28"', add
label define ch00a_dwellbld_lbl 29 `"29"', add
label define ch00a_dwellbld_lbl 30 `"30"', add
label define ch00a_dwellbld_lbl 31 `"31"', add
label define ch00a_dwellbld_lbl 32 `"32"', add
label define ch00a_dwellbld_lbl 33 `"33"', add
label define ch00a_dwellbld_lbl 34 `"34"', add
label define ch00a_dwellbld_lbl 35 `"35"', add
label define ch00a_dwellbld_lbl 36 `"36"', add
label define ch00a_dwellbld_lbl 37 `"37"', add
label define ch00a_dwellbld_lbl 38 `"38"', add
label define ch00a_dwellbld_lbl 39 `"39"', add
label define ch00a_dwellbld_lbl 40 `"40"', add
label define ch00a_dwellbld_lbl 41 `"41"', add
label define ch00a_dwellbld_lbl 42 `"42"', add
label define ch00a_dwellbld_lbl 43 `"43"', add
label define ch00a_dwellbld_lbl 44 `"44"', add
label define ch00a_dwellbld_lbl 45 `"45"', add
label define ch00a_dwellbld_lbl 46 `"46"', add
label define ch00a_dwellbld_lbl 47 `"47"', add
label define ch00a_dwellbld_lbl 48 `"48"', add
label define ch00a_dwellbld_lbl 49 `"49"', add
label define ch00a_dwellbld_lbl 50 `"50"', add
label define ch00a_dwellbld_lbl 51 `"51"', add
label define ch00a_dwellbld_lbl 52 `"52"', add
label define ch00a_dwellbld_lbl 53 `"53"', add
label define ch00a_dwellbld_lbl 54 `"54"', add
label define ch00a_dwellbld_lbl 55 `"55"', add
label define ch00a_dwellbld_lbl 56 `"56"', add
label define ch00a_dwellbld_lbl 57 `"57"', add
label define ch00a_dwellbld_lbl 58 `"58"', add
label define ch00a_dwellbld_lbl 59 `"59"', add
label define ch00a_dwellbld_lbl 60 `"60"', add
label define ch00a_dwellbld_lbl 61 `"61"', add
label define ch00a_dwellbld_lbl 62 `"62"', add
label define ch00a_dwellbld_lbl 63 `"63"', add
label define ch00a_dwellbld_lbl 64 `"64"', add
label define ch00a_dwellbld_lbl 65 `"65"', add
label define ch00a_dwellbld_lbl 66 `"66"', add
label define ch00a_dwellbld_lbl 67 `"67"', add
label define ch00a_dwellbld_lbl 68 `"68"', add
label define ch00a_dwellbld_lbl 69 `"69"', add
label define ch00a_dwellbld_lbl 70 `"70+"', add
label define ch00a_dwellbld_lbl 99 `"NIU (not in universe)"', add
label values ch00a_dwellbld ch00a_dwellbld_lbl

label define ch00a_permdwls_lbl 00 `"0"'
label define ch00a_permdwls_lbl 01 `"1"', add
label define ch00a_permdwls_lbl 02 `"2"', add
label define ch00a_permdwls_lbl 03 `"3"', add
label define ch00a_permdwls_lbl 04 `"4"', add
label define ch00a_permdwls_lbl 05 `"5"', add
label define ch00a_permdwls_lbl 06 `"6"', add
label define ch00a_permdwls_lbl 07 `"7"', add
label define ch00a_permdwls_lbl 08 `"8"', add
label define ch00a_permdwls_lbl 09 `"9"', add
label define ch00a_permdwls_lbl 10 `"10"', add
label define ch00a_permdwls_lbl 11 `"11"', add
label define ch00a_permdwls_lbl 12 `"12"', add
label define ch00a_permdwls_lbl 13 `"13"', add
label define ch00a_permdwls_lbl 14 `"14"', add
label define ch00a_permdwls_lbl 15 `"15"', add
label define ch00a_permdwls_lbl 16 `"16"', add
label define ch00a_permdwls_lbl 17 `"17"', add
label define ch00a_permdwls_lbl 18 `"18"', add
label define ch00a_permdwls_lbl 19 `"19"', add
label define ch00a_permdwls_lbl 20 `"20"', add
label define ch00a_permdwls_lbl 21 `"21"', add
label define ch00a_permdwls_lbl 22 `"22"', add
label define ch00a_permdwls_lbl 23 `"23"', add
label define ch00a_permdwls_lbl 24 `"24"', add
label define ch00a_permdwls_lbl 25 `"25"', add
label define ch00a_permdwls_lbl 26 `"26"', add
label define ch00a_permdwls_lbl 27 `"27"', add
label define ch00a_permdwls_lbl 28 `"28"', add
label define ch00a_permdwls_lbl 29 `"29"', add
label define ch00a_permdwls_lbl 30 `"30"', add
label define ch00a_permdwls_lbl 31 `"31"', add
label define ch00a_permdwls_lbl 32 `"32"', add
label define ch00a_permdwls_lbl 33 `"33"', add
label define ch00a_permdwls_lbl 34 `"34"', add
label define ch00a_permdwls_lbl 35 `"35"', add
label define ch00a_permdwls_lbl 36 `"36"', add
label define ch00a_permdwls_lbl 37 `"37"', add
label define ch00a_permdwls_lbl 38 `"38"', add
label define ch00a_permdwls_lbl 39 `"39"', add
label define ch00a_permdwls_lbl 40 `"40"', add
label define ch00a_permdwls_lbl 41 `"41"', add
label define ch00a_permdwls_lbl 42 `"42"', add
label define ch00a_permdwls_lbl 43 `"43"', add
label define ch00a_permdwls_lbl 44 `"44"', add
label define ch00a_permdwls_lbl 45 `"45"', add
label define ch00a_permdwls_lbl 46 `"46"', add
label define ch00a_permdwls_lbl 47 `"47"', add
label define ch00a_permdwls_lbl 48 `"48"', add
label define ch00a_permdwls_lbl 49 `"49"', add
label define ch00a_permdwls_lbl 50 `"50"', add
label define ch00a_permdwls_lbl 51 `"51"', add
label define ch00a_permdwls_lbl 52 `"52"', add
label define ch00a_permdwls_lbl 53 `"53"', add
label define ch00a_permdwls_lbl 54 `"54"', add
label define ch00a_permdwls_lbl 55 `"55"', add
label define ch00a_permdwls_lbl 56 `"56"', add
label define ch00a_permdwls_lbl 57 `"57"', add
label define ch00a_permdwls_lbl 58 `"58"', add
label define ch00a_permdwls_lbl 59 `"59"', add
label define ch00a_permdwls_lbl 60 `"60"', add
label define ch00a_permdwls_lbl 61 `"61"', add
label define ch00a_permdwls_lbl 62 `"62"', add
label define ch00a_permdwls_lbl 63 `"63"', add
label define ch00a_permdwls_lbl 64 `"64"', add
label define ch00a_permdwls_lbl 65 `"65"', add
label define ch00a_permdwls_lbl 66 `"66"', add
label define ch00a_permdwls_lbl 67 `"67"', add
label define ch00a_permdwls_lbl 68 `"68"', add
label define ch00a_permdwls_lbl 69 `"69"', add
label define ch00a_permdwls_lbl 70 `"70+"', add
label define ch00a_permdwls_lbl 99 `"NIU (not in universe)"', add
label values ch00a_permdwls ch00a_permdwls_lbl

label define ch00a_tempdwls_lbl 00 `"0"'
label define ch00a_tempdwls_lbl 01 `"1"', add
label define ch00a_tempdwls_lbl 02 `"2"', add
label define ch00a_tempdwls_lbl 03 `"3"', add
label define ch00a_tempdwls_lbl 04 `"4"', add
label define ch00a_tempdwls_lbl 05 `"5"', add
label define ch00a_tempdwls_lbl 06 `"6"', add
label define ch00a_tempdwls_lbl 07 `"7"', add
label define ch00a_tempdwls_lbl 08 `"8"', add
label define ch00a_tempdwls_lbl 09 `"9"', add
label define ch00a_tempdwls_lbl 10 `"10"', add
label define ch00a_tempdwls_lbl 11 `"11"', add
label define ch00a_tempdwls_lbl 12 `"12"', add
label define ch00a_tempdwls_lbl 13 `"13"', add
label define ch00a_tempdwls_lbl 14 `"14"', add
label define ch00a_tempdwls_lbl 15 `"15"', add
label define ch00a_tempdwls_lbl 16 `"16"', add
label define ch00a_tempdwls_lbl 17 `"17"', add
label define ch00a_tempdwls_lbl 18 `"18"', add
label define ch00a_tempdwls_lbl 19 `"19"', add
label define ch00a_tempdwls_lbl 20 `"20"', add
label define ch00a_tempdwls_lbl 21 `"21"', add
label define ch00a_tempdwls_lbl 22 `"22"', add
label define ch00a_tempdwls_lbl 23 `"23"', add
label define ch00a_tempdwls_lbl 24 `"24"', add
label define ch00a_tempdwls_lbl 25 `"25"', add
label define ch00a_tempdwls_lbl 26 `"26"', add
label define ch00a_tempdwls_lbl 27 `"27"', add
label define ch00a_tempdwls_lbl 28 `"28"', add
label define ch00a_tempdwls_lbl 29 `"29"', add
label define ch00a_tempdwls_lbl 30 `"30+"', add
label define ch00a_tempdwls_lbl 99 `"NIU (not in universe)"', add
label values ch00a_tempdwls ch00a_tempdwls_lbl

label define ch00a_vacdwls_lbl 00 `"0"'
label define ch00a_vacdwls_lbl 01 `"1"', add
label define ch00a_vacdwls_lbl 02 `"2"', add
label define ch00a_vacdwls_lbl 03 `"3"', add
label define ch00a_vacdwls_lbl 04 `"4"', add
label define ch00a_vacdwls_lbl 05 `"5"', add
label define ch00a_vacdwls_lbl 06 `"6"', add
label define ch00a_vacdwls_lbl 07 `"7"', add
label define ch00a_vacdwls_lbl 08 `"8"', add
label define ch00a_vacdwls_lbl 09 `"9"', add
label define ch00a_vacdwls_lbl 10 `"10"', add
label define ch00a_vacdwls_lbl 11 `"11"', add
label define ch00a_vacdwls_lbl 12 `"12"', add
label define ch00a_vacdwls_lbl 13 `"13"', add
label define ch00a_vacdwls_lbl 14 `"14"', add
label define ch00a_vacdwls_lbl 15 `"15+"', add
label define ch00a_vacdwls_lbl 99 `"NIU (not in universe)"', add
label values ch00a_vacdwls ch00a_vacdwls_lbl

label define ch00a_rooms_lbl 01 `"1"'
label define ch00a_rooms_lbl 02 `"2"', add
label define ch00a_rooms_lbl 03 `"3"', add
label define ch00a_rooms_lbl 04 `"4"', add
label define ch00a_rooms_lbl 05 `"5"', add
label define ch00a_rooms_lbl 06 `"6"', add
label define ch00a_rooms_lbl 07 `"7"', add
label define ch00a_rooms_lbl 08 `"8"', add
label define ch00a_rooms_lbl 09 `"9"', add
label define ch00a_rooms_lbl 10 `"10"', add
label define ch00a_rooms_lbl 11 `"11"', add
label define ch00a_rooms_lbl 12 `"12"', add
label define ch00a_rooms_lbl 13 `"13"', add
label define ch00a_rooms_lbl 14 `"14"', add
label define ch00a_rooms_lbl 15 `"15+"', add
label define ch00a_rooms_lbl 99 `"NIU (not in universe)"', add
label values ch00a_rooms ch00a_rooms_lbl

label define ch00a_roomscon_lbl 01 `"1"'
label define ch00a_roomscon_lbl 02 `"2"', add
label define ch00a_roomscon_lbl 03 `"3"', add
label define ch00a_roomscon_lbl 04 `"4"', add
label define ch00a_roomscon_lbl 05 `"5"', add
label define ch00a_roomscon_lbl 06 `"6"', add
label define ch00a_roomscon_lbl 07 `"7"', add
label define ch00a_roomscon_lbl 08 `"8"', add
label define ch00a_roomscon_lbl 09 `"9"', add
label define ch00a_roomscon_lbl 10 `"10"', add
label define ch00a_roomscon_lbl 11 `"11"', add
label define ch00a_roomscon_lbl 12 `"12"', add
label define ch00a_roomscon_lbl 13 `"13"', add
label define ch00a_roomscon_lbl 14 `"14"', add
label define ch00a_roomscon_lbl 15 `"15+"', add
label define ch00a_roomscon_lbl 99 `"NIU (not in universe)"', add
label values ch00a_roomscon ch00a_roomscon_lbl

label define ch00a_area_lbl 0010 `"10 or less"'
label define ch00a_area_lbl 0500 `"500 or more"', add
label define ch00a_area_lbl 9998 `"Unknown"', add
label define ch00a_area_lbl 9999 `"NIU (not in universe)"', add
label values ch00a_area ch00a_area_lbl

label define ch00a_kitchen_lbl 1 `"Kitchen"'
label define ch00a_kitchen_lbl 2 `"Kitchenette"', add
label define ch00a_kitchen_lbl 3 `"Has neither kitchen nor kitchenette"', add
label define ch00a_kitchen_lbl 9 `"NIU (not in universe)"', add
label values ch00a_kitchen ch00a_kitchen_lbl

label define ch00a_occstatus_lbl 1 `"Tenant"'
label define ch00a_occstatus_lbl 2 `"Cooperative"', add
label define ch00a_occstatus_lbl 3 `"Owner of floor or dwelling"', add
label define ch00a_occstatus_lbl 4 `"Owner of building"', add
label define ch00a_occstatus_lbl 5 `"Co-owner of building"', add
label define ch00a_occstatus_lbl 6 `"Company or official residence"', add
label define ch00a_occstatus_lbl 7 `"Free [rent] dwelling"', add
label define ch00a_occstatus_lbl 8 `"Lessee"', add
label define ch00a_occstatus_lbl 9 `"NIU (not in universe)"', add
label values ch00a_occstatus ch00a_occstatus_lbl

label define ch00a_rent_lbl 00100 `"100 or less"'
label define ch00a_rent_lbl 05000 `"5000 or more"', add
label define ch00a_rent_lbl 99998 `"Unknown"', add
label define ch00a_rent_lbl 99999 `"NIU (not in universe)"', add
label values ch00a_rent ch00a_rent_lbl

label define ch00a_pernum_lbl 00 `"Household record"'
label define ch00a_pernum_lbl 01 `"1"', add
label define ch00a_pernum_lbl 02 `"2"', add
label define ch00a_pernum_lbl 03 `"3"', add
label define ch00a_pernum_lbl 04 `"4"', add
label define ch00a_pernum_lbl 05 `"5"', add
label define ch00a_pernum_lbl 06 `"6"', add
label define ch00a_pernum_lbl 07 `"7"', add
label define ch00a_pernum_lbl 08 `"8"', add
label define ch00a_pernum_lbl 09 `"9"', add
label define ch00a_pernum_lbl 10 `"10"', add
label define ch00a_pernum_lbl 11 `"11"', add
label define ch00a_pernum_lbl 12 `"12"', add
label define ch00a_pernum_lbl 13 `"13"', add
label define ch00a_pernum_lbl 14 `"14"', add
label define ch00a_pernum_lbl 15 `"15"', add
label values ch00a_pernum ch00a_pernum_lbl

label define ch00a_labforce_lbl 11 `"Employed full time"'
label define ch00a_labforce_lbl 12 `"Employed part time with one or more jobs"', add
label define ch00a_labforce_lbl 13 `"Apprentice"', add
label define ch00a_labforce_lbl 14 `"Employed other"', add
label define ch00a_labforce_lbl 20 `"Unemployed"', add
label define ch00a_labforce_lbl 31 `"Not in labour force: in school or training"', add
label define ch00a_labforce_lbl 32 `"Not in labour force: volunteer work"', add
label define ch00a_labforce_lbl 33 `"Not in labour force: house work"', add
label define ch00a_labforce_lbl 34 `"Not in labour force: retired"', add
label define ch00a_labforce_lbl 35 `"Not in labour force: other"', add
label define ch00a_labforce_lbl 99 `"NIU (not in universe)"', add
label values ch00a_labforce ch00a_labforce_lbl

label define ch00a_nation_lbl 0000 `"Switzerland"'
label define ch00a_nation_lbl 8204 `"Belgium"', add
label define ch00a_nation_lbl 8206 `"Denmark"', add
label define ch00a_nation_lbl 8207 `"Germany"', add
label define ch00a_nation_lbl 8211 `"Finland"', add
label define ch00a_nation_lbl 8212 `"France"', add
label define ch00a_nation_lbl 8214 `"Greece"', add
label define ch00a_nation_lbl 8215 `"United Kingdom"', add
label define ch00a_nation_lbl 8218 `"Italy"', add
label define ch00a_nation_lbl 8220 `"Yugoslavia"', add
label define ch00a_nation_lbl 8222 `"Liechtenstein"', add
label define ch00a_nation_lbl 8227 `"Netherlands"', add
label define ch00a_nation_lbl 8229 `"Austria"', add
label define ch00a_nation_lbl 8230 `"Poland"', add
label define ch00a_nation_lbl 8231 `"Portugal"', add
label define ch00a_nation_lbl 8232 `"Romania"', add
label define ch00a_nation_lbl 8234 `"Sweden"', add
label define ch00a_nation_lbl 8236 `"Spain"', add
label define ch00a_nation_lbl 8238 `"Czechoslovakia"', add
label define ch00a_nation_lbl 8239 `"Turkey"', add
label define ch00a_nation_lbl 8240 `"Hungary"', add
label define ch00a_nation_lbl 8290 `"Other European nations"', add
label define ch00a_nation_lbl 8304 `"Algeria"', add
label define ch00a_nation_lbl 8357 `"Tunisia"', add
label define ch00a_nation_lbl 8390 `"Other African nations"', add
label define ch00a_nation_lbl 8407 `"Chile"', add
label define ch00a_nation_lbl 8423 `"Canada"', add
label define ch00a_nation_lbl 8439 `"United States"', add
label define ch00a_nation_lbl 8490 `"Other American nations"', add
label define ch00a_nation_lbl 8508 `"China"', add
label define ch00a_nation_lbl 8510 `"India"', add
label define ch00a_nation_lbl 8513 `"Iran"', add
label define ch00a_nation_lbl 8514 `"Israel"', add
label define ch00a_nation_lbl 8515 `"Japan"', add
label define ch00a_nation_lbl 8518 `"Cambodia"', add
label define ch00a_nation_lbl 8523 `"Lebanon"', add
label define ch00a_nation_lbl 8545 `"Vietnam"', add
label define ch00a_nation_lbl 8590 `"Other Asian nations"', add
label define ch00a_nation_lbl 8690 `"Oceania"', add
label define ch00a_nation_lbl 9998 `"Unknown"', add
label values ch00a_nation ch00a_nation_lbl

label define ch00a_res5yr_lbl 1 `"Same address, same community"'
label define ch00a_res5yr_lbl 2 `"Other address, same community"', add
label define ch00a_res5yr_lbl 3 `"Other community, same canton"', add
label define ch00a_res5yr_lbl 4 `"Other community, other canton"', add
label define ch00a_res5yr_lbl 5 `"Other country"', add
label define ch00a_res5yr_lbl 6 `"In Switzerland, no other information"', add
label define ch00a_res5yr_lbl 8 `"Unknown"', add
label define ch00a_res5yr_lbl 9 `"NIU (not in universe)"', add
label values ch00a_res5yr ch00a_res5yr_lbl

label define ch00a_bpl_lbl 1 `"Same community, same Canton"'
label define ch00a_bpl_lbl 2 `"Other community, same Canton"', add
label define ch00a_bpl_lbl 3 `"Other community, other Canton"', add
label define ch00a_bpl_lbl 4 `"Other country"', add
label define ch00a_bpl_lbl 5 `"Switzerland, no other information"', add
label define ch00a_bpl_lbl 8 `"Unknown"', add
label values ch00a_bpl ch00a_bpl_lbl

label define ch00a_citiz_lbl 1 `"Swiss"'
label define ch00a_citiz_lbl 2 `"Foreigner"', add
label values ch00a_citiz ch00a_citiz_lbl

label define ch00a_placwork_lbl 1 `"Same community"'
label define ch00a_placwork_lbl 2 `"Same Canton"', add
label define ch00a_placwork_lbl 3 `"Other Canton"', add
label define ch00a_placwork_lbl 4 `"Other country"', add
label define ch00a_placwork_lbl 8 `"Unknown"', add
label define ch00a_placwork_lbl 9 `"NIU (not in universe)"', add
label values ch00a_placwork ch00a_placwork_lbl

label define ch00a_placeduc_lbl 1 `"Same community"'
label define ch00a_placeduc_lbl 2 `"Same canton"', add
label define ch00a_placeduc_lbl 3 `"Other canton"', add
label define ch00a_placeduc_lbl 4 `"Other country"', add
label define ch00a_placeduc_lbl 8 `"Unknown"', add
label define ch00a_placeduc_lbl 9 `"NIU (not in universe)"', add
label values ch00a_placeduc ch00a_placeduc_lbl

label define ch00a_age_lbl 00 `"Less than 1 year old"'
label define ch00a_age_lbl 01 `"1"', add
label define ch00a_age_lbl 02 `"2"', add
label define ch00a_age_lbl 03 `"3"', add
label define ch00a_age_lbl 04 `"4"', add
label define ch00a_age_lbl 05 `"5"', add
label define ch00a_age_lbl 06 `"6"', add
label define ch00a_age_lbl 07 `"7"', add
label define ch00a_age_lbl 08 `"8"', add
label define ch00a_age_lbl 09 `"9"', add
label define ch00a_age_lbl 10 `"10"', add
label define ch00a_age_lbl 11 `"11"', add
label define ch00a_age_lbl 12 `"12"', add
label define ch00a_age_lbl 13 `"13"', add
label define ch00a_age_lbl 14 `"14"', add
label define ch00a_age_lbl 15 `"15"', add
label define ch00a_age_lbl 16 `"16"', add
label define ch00a_age_lbl 17 `"17"', add
label define ch00a_age_lbl 18 `"18"', add
label define ch00a_age_lbl 19 `"19"', add
label define ch00a_age_lbl 20 `"20"', add
label define ch00a_age_lbl 21 `"21"', add
label define ch00a_age_lbl 22 `"22"', add
label define ch00a_age_lbl 23 `"23"', add
label define ch00a_age_lbl 24 `"24"', add
label define ch00a_age_lbl 25 `"25"', add
label define ch00a_age_lbl 26 `"26"', add
label define ch00a_age_lbl 27 `"27"', add
label define ch00a_age_lbl 28 `"28"', add
label define ch00a_age_lbl 29 `"29"', add
label define ch00a_age_lbl 30 `"30"', add
label define ch00a_age_lbl 31 `"31"', add
label define ch00a_age_lbl 32 `"32"', add
label define ch00a_age_lbl 33 `"33"', add
label define ch00a_age_lbl 34 `"34"', add
label define ch00a_age_lbl 35 `"35"', add
label define ch00a_age_lbl 36 `"36"', add
label define ch00a_age_lbl 37 `"37"', add
label define ch00a_age_lbl 38 `"38"', add
label define ch00a_age_lbl 39 `"39"', add
label define ch00a_age_lbl 40 `"40"', add
label define ch00a_age_lbl 41 `"41"', add
label define ch00a_age_lbl 42 `"42"', add
label define ch00a_age_lbl 43 `"43"', add
label define ch00a_age_lbl 44 `"44"', add
label define ch00a_age_lbl 45 `"45"', add
label define ch00a_age_lbl 46 `"46"', add
label define ch00a_age_lbl 47 `"47"', add
label define ch00a_age_lbl 48 `"48"', add
label define ch00a_age_lbl 49 `"49"', add
label define ch00a_age_lbl 50 `"50"', add
label define ch00a_age_lbl 51 `"51"', add
label define ch00a_age_lbl 52 `"52"', add
label define ch00a_age_lbl 53 `"53"', add
label define ch00a_age_lbl 54 `"54"', add
label define ch00a_age_lbl 55 `"55"', add
label define ch00a_age_lbl 56 `"56"', add
label define ch00a_age_lbl 57 `"57"', add
label define ch00a_age_lbl 58 `"58"', add
label define ch00a_age_lbl 59 `"59"', add
label define ch00a_age_lbl 60 `"60"', add
label define ch00a_age_lbl 61 `"61"', add
label define ch00a_age_lbl 62 `"62"', add
label define ch00a_age_lbl 63 `"63"', add
label define ch00a_age_lbl 64 `"64"', add
label define ch00a_age_lbl 65 `"65"', add
label define ch00a_age_lbl 66 `"66"', add
label define ch00a_age_lbl 67 `"67"', add
label define ch00a_age_lbl 68 `"68"', add
label define ch00a_age_lbl 69 `"69"', add
label define ch00a_age_lbl 70 `"70"', add
label define ch00a_age_lbl 71 `"71"', add
label define ch00a_age_lbl 72 `"72"', add
label define ch00a_age_lbl 73 `"73"', add
label define ch00a_age_lbl 74 `"74"', add
label define ch00a_age_lbl 75 `"75"', add
label define ch00a_age_lbl 76 `"76"', add
label define ch00a_age_lbl 77 `"77"', add
label define ch00a_age_lbl 78 `"78"', add
label define ch00a_age_lbl 79 `"79"', add
label define ch00a_age_lbl 80 `"80"', add
label define ch00a_age_lbl 81 `"81"', add
label define ch00a_age_lbl 82 `"82"', add
label define ch00a_age_lbl 83 `"83"', add
label define ch00a_age_lbl 84 `"84"', add
label define ch00a_age_lbl 85 `"85"', add
label define ch00a_age_lbl 86 `"86"', add
label define ch00a_age_lbl 87 `"87"', add
label define ch00a_age_lbl 88 `"88"', add
label define ch00a_age_lbl 89 `"89"', add
label define ch00a_age_lbl 90 `"90"', add
label define ch00a_age_lbl 91 `"91"', add
label define ch00a_age_lbl 92 `"92"', add
label define ch00a_age_lbl 93 `"93"', add
label define ch00a_age_lbl 94 `"94"', add
label define ch00a_age_lbl 95 `"95+"', add
label values ch00a_age ch00a_age_lbl

label define ch00a_sex_lbl 1 `"Male"'
label define ch00a_sex_lbl 2 `"Female"', add
label values ch00a_sex ch00a_sex_lbl

label define ch00a_marst_lbl 1 `"Single"'
label define ch00a_marst_lbl 2 `"Married, including separated"', add
label define ch00a_marst_lbl 3 `"Widowed"', add
label define ch00a_marst_lbl 4 `"Divorced"', add
label values ch00a_marst ch00a_marst_lbl

label define ch00a_relig_lbl 111 `"Protestant-reformed church"'
label define ch00a_relig_lbl 112 `"Protestant-Methodist church"', add
label define ch00a_relig_lbl 113 `"New-apostolic churches"', add
label define ch00a_relig_lbl 114 `"Jehovah witness"', add
label define ch00a_relig_lbl 115 `"Other protestant churches and communities"', add
label define ch00a_relig_lbl 120 `"Roman catholic church"', add
label define ch00a_relig_lbl 130 `"Christ-catholic church"', add
label define ch00a_relig_lbl 140 `"Christian orthodox churches"', add
label define ch00a_relig_lbl 150 `"Other christian communities"', add
label define ch00a_relig_lbl 200 `"Jewish"', add
label define ch00a_relig_lbl 300 `"Islam"', add
label define ch00a_relig_lbl 400 `"Other religious communities"', add
label define ch00a_relig_lbl 500 `"No religious community"', add
label define ch00a_relig_lbl 998 `"Unknown"', add
label values ch00a_relig ch00a_relig_lbl

label define ch00a_mtongue_lbl 110 `"German"'
label define ch00a_mtongue_lbl 120 `"French"', add
label define ch00a_mtongue_lbl 130 `"Italian"', add
label define ch00a_mtongue_lbl 140 `"Rhaeto-Romanic"', add
label define ch00a_mtongue_lbl 210 `"English"', add
label define ch00a_mtongue_lbl 220 `"Dutch"', add
label define ch00a_mtongue_lbl 230 `"Scandinavian languages"', add
label define ch00a_mtongue_lbl 240 `"Greek"', add
label define ch00a_mtongue_lbl 250 `"Spanish"', add
label define ch00a_mtongue_lbl 270 `"Slavic languages (other than Czech and Slovak)"', add
label define ch00a_mtongue_lbl 284 `"Hungarian"', add
label define ch00a_mtongue_lbl 290 `"Czech or Slovak"', add
label define ch00a_mtongue_lbl 300 `"Other languages"', add
label values ch00a_mtongue ch00a_mtongue_lbl

label define ch00a_head_lbl 1 `"Reference person"'
label define ch00a_head_lbl 2 `"Partner of reference person"', add
label define ch00a_head_lbl 3 `"Other person"', add
label values ch00a_head ch00a_head_lbl

label define ch00a_relate_lbl 1 `"Head of household; spouse (partner) of head"'
label define ch00a_relate_lbl 2 `"Son, daughter, stepchild, or child-in-law"', add
label define ch00a_relate_lbl 3 `"Father, mother, father-in-law, mother-in-law"', add
label define ch00a_relate_lbl 4 `"Other relatives"', add
label define ch00a_relate_lbl 5 `"Other persons in household"', add
label define ch00a_relate_lbl 6 `"Personnel in collective dwelling"', add
label define ch00a_relate_lbl 7 `"Retirees in collective dwelling"', add
label define ch00a_relate_lbl 8 `"Other persons in collective dwelling"', add
label values ch00a_relate ch00a_relate_lbl

label define ch00a_edprof_lbl 11101 `"Farmers"'
label define ch00a_edprof_lbl 11102 `"Farm assistants"', add
label define ch00a_edprof_lbl 11103 `"Other agricultural assistants not classified elsewhere"', add
label define ch00a_edprof_lbl 11201 `"Tree farmers"', add
label define ch00a_edprof_lbl 11202 `"Wine grower"', add
label define ch00a_edprof_lbl 11203 `"Truck farmers"', add
label define ch00a_edprof_lbl 11301 `"Breeders and herders of large livestock"', add
label define ch00a_edprof_lbl 11303 `"Bee keepers and related professions"', add
label define ch00a_edprof_lbl 11305 `"Other animal-herding professions"', add
label define ch00a_edprof_lbl 11401 `"Horticultural professions and related professions"', add
label define ch00a_edprof_lbl 11402 `"Florists"', add
label define ch00a_edprof_lbl 11501 `"Forest rangers"', add
label define ch00a_edprof_lbl 11502 `"Lumberjacks [forestiers bûcherons] and forestry workers"', add
label define ch00a_edprof_lbl 21101 `"Makers of cheese and dairy products"', add
label define ch00a_edprof_lbl 21102 `"Butchers"', add
label define ch00a_edprof_lbl 21103 `"Bread, candy and pastry makers"', add
label define ch00a_edprof_lbl 21104 `"Millers"', add
label define ch00a_edprof_lbl 21105 `"Other professions related to food production"', add
label define ch00a_edprof_lbl 21201 `"Brewers and maltsters"', add
label define ch00a_edprof_lbl 21202 `"Cellar masters and beverage technologists and related professions"', add
label define ch00a_edprof_lbl 22101 `"Spinning professions"', add
label define ch00a_edprof_lbl 22102 `"Weaving professions"', add
label define ch00a_edprof_lbl 22103 `"Professions in textile finishing and dying"', add
label define ch00a_edprof_lbl 22104 `"Other professions related to textile production"', add
label define ch00a_edprof_lbl 22201 `"Tailors"', add
label define ch00a_edprof_lbl 22202 `"Sewers"', add
label define ch00a_edprof_lbl 22203 `"Embroiderers"', add
label define ch00a_edprof_lbl 22204 `"Other professions in the field of textile product processing"', add
label define ch00a_edprof_lbl 22302 `"Shoe makers and other professions in the shoe industry"', add
label define ch00a_edprof_lbl 22303 `"Saddle/harness makers"', add
label define ch00a_edprof_lbl 22304 `"Other leather-related professions"', add
label define ch00a_edprof_lbl 22305 `"Fur dealers and furriers"', add
label define ch00a_edprof_lbl 23101 `"Glass blowers"', add
label define ch00a_edprof_lbl 23102 `"Opticians"', add
label define ch00a_edprof_lbl 24101 `"Foundry worker and related fields"', add
label define ch00a_edprof_lbl 24102 `"Core makers, foundry casters"', add
label define ch00a_edprof_lbl 24202 `"Galvanizers and professions in metal surface refining"', add
label define ch00a_edprof_lbl 24203 `"Metal polishing and grinding"', add
label define ch00a_edprof_lbl 24204 `"Machine tool operators"', add
label define ch00a_edprof_lbl 24205 `"Milling machine operators and planers"', add
label define ch00a_edprof_lbl 24207 `"Industrial metal turners"', add
label define ch00a_edprof_lbl 24208 `"[Makers of small metal pieces such as bolts, screws, medical tools, etc.]"', add
label define ch00a_edprof_lbl 24209 `"Other workers in secondary metals processing"', add
label define ch00a_edprof_lbl 24301 `"Welders and other professions in metal joining"', add
label define ch00a_edprof_lbl 24302 `"Constructors of industrial equipment"', add
label define ch00a_edprof_lbl 24303 `"[Industrial tinplating]"', add
label define ch00a_edprof_lbl 24304 `"Blacksmiths not classified elsewhere"', add
label define ch00a_edprof_lbl 24305 `"Metal constructors and locksmiths"', add
label define ch00a_edprof_lbl 24306 `"[Locksmith-constructors]"', add
label define ch00a_edprof_lbl 24307 `"Locksmiths not classified elsewhere"', add
label define ch00a_edprof_lbl 24308 `"Other metal machining professions"', add
label define ch00a_edprof_lbl 24401 `"Mechanics"', add
label define ch00a_edprof_lbl 24402 `"Precision mechanics and micromechanics"', add
label define ch00a_edprof_lbl 24403 `"Locksmiths and machine fitters and related professions"', add
label define ch00a_edprof_lbl 24404 `"[Engine and maintenance fitters] and other mechanics"', add
label define ch00a_edprof_lbl 24405 `"Other fitters"', add
label define ch00a_edprof_lbl 25101 `"Vehicle electricians and electronics fitters"', add
label define ch00a_edprof_lbl 25102 `"Electronics fitters"', add
label define ch00a_edprof_lbl 25103 `"Electronic technicians (radio/TV/video)"', add
label define ch00a_edprof_lbl 25104 `"Network electricians and cable fitters"', add
label define ch00a_edprof_lbl 25105 `"Wire operator/spooler and related professions"', add
label define ch00a_edprof_lbl 25106 `"Other electricians not classified elsewhere"', add
label define ch00a_edprof_lbl 25107 `"Electronics professions"', add
label define ch00a_edprof_lbl 25201 `"Watchmaker"', add
label define ch00a_edprof_lbl 25202 `"Other watch making"', add
label define ch00a_edprof_lbl 25301 `"Vehicle construction professions (land, water, air)"', add
label define ch00a_edprof_lbl 25302 `"Automobile mechanics"', add
label define ch00a_edprof_lbl 25303 `"Motorcycle and bicycle mechanics"', add
label define ch00a_edprof_lbl 25304 `"Agricultural-machine, worksite and small-appliance mechanics,"', add
label define ch00a_edprof_lbl 25305 `"Industrial lacquerers/varnishers and automobile painters"', add
label define ch00a_edprof_lbl 25306 `"Gas station attendants and staff not classified elsewhere"', add
label define ch00a_edprof_lbl 26101 `"Sawers, [wood carvers/jigsaw operators]"', add
label define ch00a_edprof_lbl 26102 `"Turners of wood and related materials"', add
label define ch00a_edprof_lbl 26103 `"Cabinet makers"', add
label define ch00a_edprof_lbl 26104 `"Carpenter-joiners"', add
label define ch00a_edprof_lbl 26105 `"Other carpenters"', add
label define ch00a_edprof_lbl 26106 `"Other woodworking professions and profession in the manufacture of cork, wicker and woven items."', add
label define ch00a_edprof_lbl 26202 `"Other professions in wood-surface processing"', add
label define ch00a_edprof_lbl 26301 `"Professions in paper and cardboard manufacture and related professions"', add
label define ch00a_edprof_lbl 26302 `"Other professions in the manufacture and processing of paper and cardboard"', add
label define ch00a_edprof_lbl 27101 `"Typographer and related professions"', add
label define ch00a_edprof_lbl 27102 `"Lithographer"', add
label define ch00a_edprof_lbl 27103 `"Reprographer"', add
label define ch00a_edprof_lbl 27104 `"Other profession in graphic arts and page formatting/set up"', add
label define ch00a_edprof_lbl 27201 `"Printers"', add
label define ch00a_edprof_lbl 27301 `"Bookbinders"', add
label define ch00a_edprof_lbl 28101 `"Chemical laboratory assistants and laboratory assistants not classified elsewhere"', add
label define ch00a_edprof_lbl 28102 `"[Chemical operators]"', add
label define ch00a_edprof_lbl 28103 `"Laboratory photographers"', add
label define ch00a_edprof_lbl 28104 `"Other professions in the processing and manufacture of chemical products"', add
label define ch00a_edprof_lbl 28201 `"Professions in the manufacture and processing of plastics"', add
label define ch00a_edprof_lbl 29101 `"Merchandise testers, inspectors and sorters"', add
label define ch00a_edprof_lbl 29103 `"Warehousers and handlers"', add
label define ch00a_edprof_lbl 29104 `"Other professions in processing and manufacturing"', add
label define ch00a_edprof_lbl 31101 `"Architects"', add
label define ch00a_edprof_lbl 31102 `"Building engineers"', add
label define ch00a_edprof_lbl 31103 `"Computer engineers"', add
label define ch00a_edprof_lbl 31104 `"Machine engineers"', add
label define ch00a_edprof_lbl 31105 `"Heating, venting and air conditioning engineers"', add
label define ch00a_edprof_lbl 31106 `"Electrical engineers"', add
label define ch00a_edprof_lbl 31107 `"Micro-technical and electronics engineers"', add
label define ch00a_edprof_lbl 31108 `"Forestry engineers"', add
label define ch00a_edprof_lbl 31109 `"Agronomist and agronomic engineers"', add
label define ch00a_edprof_lbl 31110 `"Agricultural/rural engineers and surveyors"', add
label define ch00a_edprof_lbl 31111 `"Municipal landscape planners"', add
label define ch00a_edprof_lbl 31112 `"Chemical and food technology engineers"', add
label define ch00a_edprof_lbl 31113 `"Other engineers"', add
label define ch00a_edprof_lbl 32101 `"Electrical engineering technician"', add
label define ch00a_edprof_lbl 32102 `"Electronics technicians"', add
label define ch00a_edprof_lbl 32103 `"Building and civil engineering technicians, construction foreman"', add
label define ch00a_edprof_lbl 32104 `"Machine technicians"', add
label define ch00a_edprof_lbl 32105 `"Textile industry technicians"', add
label define ch00a_edprof_lbl 32106 `"Telecommunication technicians"', add
label define ch00a_edprof_lbl 32107 `"Heating, venting and air conditioning (HVAC) technicians"', add
label define ch00a_edprof_lbl 32108 `"Vehicle technicians and aeronautic technicians"', add
label define ch00a_edprof_lbl 32109 `"Other technicians"', add
label define ch00a_edprof_lbl 33101 `"Building and civil engineering drafts people/designers"', add
label define ch00a_edprof_lbl 33102 `"Surveyor-drafters"', add
label define ch00a_edprof_lbl 33103 `"Technical drafts people"', add
label define ch00a_edprof_lbl 33104 `"Metal building/construction drafts people/designers"', add
label define ch00a_edprof_lbl 33105 `"Machine drafts people/designers"', add
label define ch00a_edprof_lbl 33106 `"Installation drafts people/designers"', add
label define ch00a_edprof_lbl 33107 `"Interior designers"', add
label define ch00a_edprof_lbl 33108 `"Electrical drafts people/designers"', add
label define ch00a_edprof_lbl 33109 `"Other professions in technical design"', add
label define ch00a_edprof_lbl 34101 `"[Technical operations managers [no additional information]]"', add
label define ch00a_edprof_lbl 34102 `"Production experts"', add
label define ch00a_edprof_lbl 34103 `"Foreman [no additional information]"', add
label define ch00a_edprof_lbl 34104 `"Other trained workers and [technical users]"', add
label define ch00a_edprof_lbl 35102 `"Building machinists"', add
label define ch00a_edprof_lbl 35103 `"Wood machinists"', add
label define ch00a_edprof_lbl 35104 `"Other machinists"', add
label define ch00a_edprof_lbl 35105 `"Boiler operators"', add
label define ch00a_edprof_lbl 35106 `"Machine and installation monitors, [tank verifier]"', add
label define ch00a_edprof_lbl 36101 `"Computer scientist"', add
label define ch00a_edprof_lbl 36102 `"Programmer"', add
label define ch00a_edprof_lbl 36103 `"Computer operators"', add
label define ch00a_edprof_lbl 36104 `"Webmasters and related profession"', add
label define ch00a_edprof_lbl 36105 `"Other computer-related professions"', add
label define ch00a_edprof_lbl 41101 `"Masons"', add
label define ch00a_edprof_lbl 41102 `"Concrete layers, construction cementers and related professions"', add
label define ch00a_edprof_lbl 41103 `"Carpenters"', add
label define ch00a_edprof_lbl 41104 `"Road builders"', add
label define ch00a_edprof_lbl 41106 `"Mining specialists, tunnel builders"', add
label define ch00a_edprof_lbl 41107 `"Building contractors, building and civil engineering foremen and related professions"', add
label define ch00a_edprof_lbl 41108 `"Other professions in the building industry"', add
label define ch00a_edprof_lbl 41201 `"Floor layers, parquetry workers and tile layers"', add
label define ch00a_edprof_lbl 41202 `"Roofer"', add
label define ch00a_edprof_lbl 41203 `"Plasterers, stucco plasterers and related activities"', add
label define ch00a_edprof_lbl 41204 `"Painters, upholsterers"', add
label define ch00a_edprof_lbl 41205 `"Installers and assemblers of heating and ventilation systems"', add
label define ch00a_edprof_lbl 41206 `"Building [tinsmithers]"', add
label define ch00a_edprof_lbl 41207 `"Soundproofer/insulator"', add
label define ch00a_edprof_lbl 41208 `"Professions in the construction of indoor fireplaces and glazed tile heating stoves, and chimney sweeps"', add
label define ch00a_edprof_lbl 41209 `"Glaziers"', add
label define ch00a_edprof_lbl 41210 `"Installers and electrical assemblers/fitters"', add
label define ch00a_edprof_lbl 41211 `"[Sanitary/health planners and installers]"', add
label define ch00a_edprof_lbl 41212 `"Other professions in [construction and finishing]"', add
label define ch00a_edprof_lbl 42201 `"Stone masons"', add
label define ch00a_edprof_lbl 42301 `"Profession in the manufacture of construction materials and building stone"', add
label define ch00a_edprof_lbl 51101 `"Buyers"', add
label define ch00a_edprof_lbl 51102 `"Salespeople, retail employees"', add
label define ch00a_edprof_lbl 51103 `"Cashiers"', add
label define ch00a_edprof_lbl 51104 `"Booksellers, editors"', add
label define ch00a_edprof_lbl 51105 `"[Pharmacist's assistant/hardware dealer]"', add
label define ch00a_edprof_lbl 51107 `"Other sales professions"', add
label define ch00a_edprof_lbl 51108 `"Representatives, traveling salesperson"', add
label define ch00a_edprof_lbl 51109 `"Other shopkeepers and dealers"', add
label define ch00a_edprof_lbl 52101 `"Advertising specialists"', add
label define ch00a_edprof_lbl 52102 `"Public relations specialists"', add
label define ch00a_edprof_lbl 52103 `"Marketing specialists"', add
label define ch00a_edprof_lbl 52201 `"Travel agency employees"', add
label define ch00a_edprof_lbl 52202 `"Tour guides of organized trips, guides, [hostess/stewardess]"', add
label define ch00a_edprof_lbl 52203 `"Other tourism and leisure specialists"', add
label define ch00a_edprof_lbl 52301 `"Certified public accountants and auditors"', add
label define ch00a_edprof_lbl 52302 `"[Trust officers, fiscal advisors]"', add
label define ch00a_edprof_lbl 52303 `"Other [service industry retailers]"', add
label define ch00a_edprof_lbl 52401 `"Brokers, auctioneers"', add
label define ch00a_edprof_lbl 53101 `"[Railway operations' controllers, station attendants, railway secretaries]"', add
label define ch00a_edprof_lbl 53102 `"[Track fitters], railroad track menders/repair"', add
label define ch00a_edprof_lbl 53104 `"[Yard/depot workers and unskilled laborers] (railroads)"', add
label define ch00a_edprof_lbl 53105 `"[Conductor/inspector/controller] (public transportation)"', add
label define ch00a_edprof_lbl 53106 `"Train and tram conductors and related professions"', add
label define ch00a_edprof_lbl 53108 `"Other profession in rail and cable traffic"', add
label define ch00a_edprof_lbl 53201 `"Professions in the transportation of people and related professions"', add
label define ch00a_edprof_lbl 53202 `"Truck drivers"', add
label define ch00a_edprof_lbl 53203 `"Other drivers"', add
label define ch00a_edprof_lbl 53204 `"Driving-school teachers and automobile experts"', add
label define ch00a_edprof_lbl 53301 `"Boat captains, helmsmen and related professions"', add
label define ch00a_edprof_lbl 53302 `"Sailors and other professions in sailing"', add
label define ch00a_edprof_lbl 53401 `"Pilots, flight instructors"', add
label define ch00a_edprof_lbl 53402 `"Air traffic controllers"', add
label define ch00a_edprof_lbl 53403 `"Cabin personnel and related professions"', add
label define ch00a_edprof_lbl 53404 `"Other air traffic professions"', add
label define ch00a_edprof_lbl 53501 `"Transportation and shipping personnel"', add
label define ch00a_edprof_lbl 53502 `"Errand boys, messengers"', add
label define ch00a_edprof_lbl 53503 `"Other transport and traffic professions"', add
label define ch00a_edprof_lbl 54101 `"Post, telephone and telegram office employees and [operations' secretaries]"', add
label define ch00a_edprof_lbl 54102 `"Post, telephone and telegram [operations' assistants]"', add
label define ch00a_edprof_lbl 54103 `"Post, telephone and telegraph civil servants in distribution"', add
label define ch00a_edprof_lbl 54104 `"Telephone and telegraph operators"', add
label define ch00a_edprof_lbl 54105 `"Other post, telephone and telegraph professions"', add
label define ch00a_edprof_lbl 54106 `"Other telecommunications specialists"', add
label define ch00a_edprof_lbl 61101 `"Hotel and restaurant managers"', add
label define ch00a_edprof_lbl 61102 `"Reception personnel"', add
label define ch00a_edprof_lbl 61103 `"Service personnel"', add
label define ch00a_edprof_lbl 61104 `"Chambermaids and linen service and storeroom personnel"', add
label define ch00a_edprof_lbl 61105 `"Kitchen personnel"', add
label define ch00a_edprof_lbl 61106 `"Other food service industry professions"', add
label define ch00a_edprof_lbl 61201 `"Housekeepers"', add
label define ch00a_edprof_lbl 61202 `"Household employees"', add
label define ch00a_edprof_lbl 62101 `"Textile cleaners, dry cleaners"', add
label define ch00a_edprof_lbl 62102 `"Ironers, laundry workers"', add
label define ch00a_edprof_lbl 62103 `"Building caretakers and cleaners"', add
label define ch00a_edprof_lbl 62104 `"Chimney sweeps"', add
label define ch00a_edprof_lbl 62105 `"Other cleaning professions"', add
label define ch00a_edprof_lbl 62202 `"Trash removal and recycling professions"', add
label define ch00a_edprof_lbl 62301 `"Hairdressers"', add
label define ch00a_edprof_lbl 62302 `"Beauticians"', add
label define ch00a_edprof_lbl 62303 `"Manicures and pedicures"', add
label define ch00a_edprof_lbl 71101 `"[Business people/contractors/promoters/entrepreneurs], directors"', add
label define ch00a_edprof_lbl 71102 `"Upper level managers in public administration"', add
label define ch00a_edprof_lbl 71104 `"Personnel specialists"', add
label define ch00a_edprof_lbl 71105 `"Mid-level managers/executives [no additional information]"', add
label define ch00a_edprof_lbl 72101 `"Business and office white collar employees not classified elsewhere"', add
label define ch00a_edprof_lbl 72102 `"Administrative civil servants and related professions"', add
label define ch00a_edprof_lbl 72103 `"Accountants"', add
label define ch00a_edprof_lbl 72104 `"Building specialists and managers"', add
label define ch00a_edprof_lbl 72105 `"Import and export specialists"', add
label define ch00a_edprof_lbl 72106 `"Organization and planning specialists and related professions"', add
label define ch00a_edprof_lbl 72107 `"Other administrative office employees"', add
label define ch00a_edprof_lbl 73101 `"Banking professions not classified elsewhere"', add
label define ch00a_edprof_lbl 73102 `"Insurance inspectors and agents"', add
label define ch00a_edprof_lbl 73103 `"Insurance professions not classified elsewhere"', add
label define ch00a_edprof_lbl 74101 `"Police"', add
label define ch00a_edprof_lbl 74102 `"Security guards, watchmen"', add
label define ch00a_edprof_lbl 74104 `"Career military personnel and related professions"', add
label define ch00a_edprof_lbl 74105 `"Other security professions"', add
label define ch00a_edprof_lbl 74106 `"Customs and border guards"', add
label define ch00a_edprof_lbl 75103 `"Lawyers and [legal professionals who can draw up certain contracts]"', add
label define ch00a_edprof_lbl 75104 `"Other legal representatives and legal advisers"', add
label define ch00a_edprof_lbl 81101 `"Journalists and editors"', add
label define ch00a_edprof_lbl 81102 `"Proofreaders, reviewers"', add
label define ch00a_edprof_lbl 81103 `"Translators, interpreters"', add
label define ch00a_edprof_lbl 81104 `"Other authors of texts, other media professionals: written press, audio-visual"', add
label define ch00a_edprof_lbl 81201 `"Librarian"', add
label define ch00a_edprof_lbl 81202 `"Archivist, [research assistant/librarian/file clerk]"', add
label define ch00a_edprof_lbl 81301 `"Scenery painters and prop men/women"', add
label define ch00a_edprof_lbl 81302 `"Stage managers, directors and producers"', add
label define ch00a_edprof_lbl 81303 `"Audio-visual technicians"', add
label define ch00a_edprof_lbl 81304 `"Cameramen/women and image technicians"', add
label define ch00a_edprof_lbl 81305 `"Photographers"', add
label define ch00a_edprof_lbl 81306 `"Other professions in audio-visual production"', add
label define ch00a_edprof_lbl 82101 `"Musicians, composers and conductors"', add
label define ch00a_edprof_lbl 82102 `"Singers"', add
label define ch00a_edprof_lbl 82201 `"Actors"', add
label define ch00a_edprof_lbl 82202 `"Dancers, dance teachers and choreographers"', add
label define ch00a_edprof_lbl 82203 `"Artists"', add
label define ch00a_edprof_lbl 82301 `"Stone sculptors"', add
label define ch00a_edprof_lbl 82302 `"Painters, designers/draftsmen"', add
label define ch00a_edprof_lbl 82303 `"Graphic artists and [poster designers]"', add
label define ch00a_edprof_lbl 82304 `"Fashion designers and creators"', add
label define ch00a_edprof_lbl 82305 `"Other artistic creators"', add
label define ch00a_edprof_lbl 82401 `"Goldsmiths"', add
label define ch00a_edprof_lbl 82402 `"Other jewelry makers"', add
label define ch00a_edprof_lbl 82403 `"Wood sculptors and engravers and related professions"', add
label define ch00a_edprof_lbl 82404 `"Ceramicist, potter"', add
label define ch00a_edprof_lbl 82405 `"Glass and ceramic painters"', add
label define ch00a_edprof_lbl 82406 `"Musical instrument manufacturers and tuners"', add
label define ch00a_edprof_lbl 82407 `"Decorators and window dressers"', add
label define ch00a_edprof_lbl 82408 `"Art restorers"', add
label define ch00a_edprof_lbl 82409 `"Interior designers"', add
label define ch00a_edprof_lbl 82410 `"Other [master craftsmen]"', add
label define ch00a_edprof_lbl 83101 `"Social workers"', add
label define ch00a_edprof_lbl 83102 `"Special education teachers"', add
label define ch00a_edprof_lbl 83103 `"Directors of [hostel/shelter/halfway home/retirement home], day care centers"', add
label define ch00a_edprof_lbl 83104 `"Other social work professions"', add
label define ch00a_edprof_lbl 83201 `"Ordained preachers, pastors"', add
label define ch00a_edprof_lbl 83202 `"Other professions providing spiritual assistance"', add
label define ch00a_edprof_lbl 83203 `"Members of a religious order"', add
label define ch00a_edprof_lbl 83204 `"Professional assistants in spiritual assistance"', add
label define ch00a_edprof_lbl 84101 `"University professors"', add
label define ch00a_edprof_lbl 84201 `"Secondary education teachers (high schools, vocational schools, teaching schools, business schools)"', add
label define ch00a_edprof_lbl 84301 `"Teachers of upper-level classes, [practical training classes] and [career] orientation classes"', add
label define ch00a_edprof_lbl 84401 `"Teacher (primary school)"', add
label define ch00a_edprof_lbl 84501 `"Pre-school and kindergarten teachers"', add
label define ch00a_edprof_lbl 84601 `"Teachers in professional and specialized schools"', add
label define ch00a_edprof_lbl 84602 `"[Teachers in a special education program class, therapeutic educationalists]"', add
label define ch00a_edprof_lbl 84603 `"Music and voice teachers"', add
label define ch00a_edprof_lbl 84604 `"Drawing and manual arts teachers"', add
label define ch00a_edprof_lbl 84605 `"Physical education teachers"', add
label define ch00a_edprof_lbl 84701 `"Teachers of adult education"', add
label define ch00a_edprof_lbl 84702 `"Various specialized teachers"', add
label define ch00a_edprof_lbl 84703 `"Teachers and instructors"', add
label define ch00a_edprof_lbl 84704 `"Educationalists"', add
label define ch00a_edprof_lbl 85101 `"Professions in economics"', add
label define ch00a_edprof_lbl 85102 `"Sociologists and political scientists"', add
label define ch00a_edprof_lbl 85103 `"Psychologists and employment counselors"', add
label define ch00a_edprof_lbl 85201 `"Philologists"', add
label define ch00a_edprof_lbl 85202 `"Historians and archeologists"', add
label define ch00a_edprof_lbl 85203 `"Other professions in the humanities"', add
label define ch00a_edprof_lbl 85301 `"Biologists"', add
label define ch00a_edprof_lbl 85302 `"Geographers, meteorologists"', add
label define ch00a_edprof_lbl 85303 `"Chemists"', add
label define ch00a_edprof_lbl 85304 `"Mathematicians, statisticians"', add
label define ch00a_edprof_lbl 85305 `"Physicians"', add
label define ch00a_edprof_lbl 85306 `"Experts in environmental protection"', add
label define ch00a_edprof_lbl 85307 `"Other profession in the natural and physical sciences"', add
label define ch00a_edprof_lbl 86101 `"Doctors"', add
label define ch00a_edprof_lbl 86102 `"Medical assistants"', add
label define ch00a_edprof_lbl 86103 `"Pharmacists"', add
label define ch00a_edprof_lbl 86104 `"Pharmacists assistants"', add
label define ch00a_edprof_lbl 86201 `"Physical and occupational therapists"', add
label define ch00a_edprof_lbl 86202 `"Psychotherapist (non doctors)"', add
label define ch00a_edprof_lbl 86203 `"Healers, naturopaths"', add
label define ch00a_edprof_lbl 86204 `"Opticians"', add
label define ch00a_edprof_lbl 86205 `"Massage therapists"', add
label define ch00a_edprof_lbl 86206 `"Medico-technical assistants"', add
label define ch00a_edprof_lbl 86207 `"Other therapy and medico-technical professions"', add
label define ch00a_edprof_lbl 86208 `"Medical laboratory technicians"', add
label define ch00a_edprof_lbl 86301 `"Dentists"', add
label define ch00a_edprof_lbl 86302 `"Dental mechanics/technicians"', add
label define ch00a_edprof_lbl 86303 `"Dentist's assistants"', add
label define ch00a_edprof_lbl 86304 `"Dental hygienists"', add
label define ch00a_edprof_lbl 86401 `"Veterinarians"', add
label define ch00a_edprof_lbl 86402 `"Veterinary assistants"', add
label define ch00a_edprof_lbl 86501 `"Midwives"', add
label define ch00a_edprof_lbl 86502 `"Pediatric and maternal health care nurses"', add
label define ch00a_edprof_lbl 86503 `"Psychiatric nurses"', add
label define ch00a_edprof_lbl 86504 `"[Degree-holding] nurse"', add
label define ch00a_edprof_lbl 86505 `"Hospital aids and nurses aids"', add
label define ch00a_edprof_lbl 86506 `"Family helpers, community or otherwise"', add
label define ch00a_edprof_lbl 86507 `"Other caring professions"', add
label define ch00a_edprof_lbl 87101 `"Professional athletes and sports trainers"', add
label define ch00a_edprof_lbl 91106 `"Service industry professions not classified elsewhere"', add
label define ch00a_edprof_lbl 91108 `"Other non-classified professions"', add
label define ch00a_edprof_lbl 93101 `"Secondary II diplomas"', add
label define ch00a_edprof_lbl 93102 `"[Tertiary diplomas]"', add
label define ch00a_edprof_lbl 93103 `"Unattributable diplomas"', add
label define ch00a_edprof_lbl 99000 `"Other profession, response suppressed"', add
label define ch00a_edprof_lbl 99998 `"Unknown"', add
label define ch00a_edprof_lbl 99999 `"NIU (not in universe)"', add
label values ch00a_edprof ch00a_edprof_lbl

label define ch00a_occ_lbl 11101 `"Farmers"'
label define ch00a_occ_lbl 11102 `"Farm assistants"', add
label define ch00a_occ_lbl 11103 `"Other agricultural assistants not classified elsewhere"', add
label define ch00a_occ_lbl 11201 `"Tree farmers"', add
label define ch00a_occ_lbl 11202 `"Wine grower"', add
label define ch00a_occ_lbl 11203 `"Truck farmers"', add
label define ch00a_occ_lbl 11301 `"Breeders and herders of large livestock"', add
label define ch00a_occ_lbl 11302 `"Breeder and herders of small livestock and animals"', add
label define ch00a_occ_lbl 11305 `"Other animal-herding professions"', add
label define ch00a_occ_lbl 11401 `"Horticultural professions and related professions"', add
label define ch00a_occ_lbl 11402 `"Florists"', add
label define ch00a_occ_lbl 11501 `"Forest rangers"', add
label define ch00a_occ_lbl 11502 `"Lumberjacks [forestiers bûcherons] and forestry workers"', add
label define ch00a_occ_lbl 11504 `"Professions related to fishing"', add
label define ch00a_occ_lbl 21101 `"Makers of cheese and dairy products"', add
label define ch00a_occ_lbl 21102 `"Butchers"', add
label define ch00a_occ_lbl 21103 `"Bread, candy and pastry makers"', add
label define ch00a_occ_lbl 21104 `"Millers"', add
label define ch00a_occ_lbl 21105 `"Other professions related to food production"', add
label define ch00a_occ_lbl 21201 `"Brewers and maltsters"', add
label define ch00a_occ_lbl 21202 `"Cellar masters and beverage technologists and related professions"', add
label define ch00a_occ_lbl 21302 `"Food product testers and tasters"', add
label define ch00a_occ_lbl 22101 `"Spinning professions"', add
label define ch00a_occ_lbl 22102 `"Weaving professions"', add
label define ch00a_occ_lbl 22103 `"Professions in textile finishing and dying"', add
label define ch00a_occ_lbl 22104 `"Other professions related to textile production"', add
label define ch00a_occ_lbl 22201 `"Tailors"', add
label define ch00a_occ_lbl 22202 `"Sewers"', add
label define ch00a_occ_lbl 22203 `"Embroiderers"', add
label define ch00a_occ_lbl 22204 `"Other professions in the field of textile product processing"', add
label define ch00a_occ_lbl 22302 `"Shoe makers and other professions in the shoe industry"', add
label define ch00a_occ_lbl 22303 `"Saddle/harness makers"', add
label define ch00a_occ_lbl 23101 `"Glass blowers"', add
label define ch00a_occ_lbl 23103 `"Glass bevellers and polishers and related fields"', add
label define ch00a_occ_lbl 23104 `"Ceramic industry and processing professions"', add
label define ch00a_occ_lbl 24101 `"Foundry worker and related fields"', add
label define ch00a_occ_lbl 24102 `"Core makers, foundry casters"', add
label define ch00a_occ_lbl 24103 `"Other professions in metal production"', add
label define ch00a_occ_lbl 24201 `"Professions in secondary metals processing without [removal of shavings]"', add
label define ch00a_occ_lbl 24202 `"Galvanizers and professions in metal surface refining"', add
label define ch00a_occ_lbl 24203 `"Metal polishing and grinding"', add
label define ch00a_occ_lbl 24205 `"Milling machine operators and planers"', add
label define ch00a_occ_lbl 24207 `"Industrial metal turners"', add
label define ch00a_occ_lbl 24208 `"[Makers of small metal pieces such as bolts, screws, medical tools, etc.]"', add
label define ch00a_occ_lbl 24209 `"Other workers in secondary metals processing"', add
label define ch00a_occ_lbl 24301 `"Welders and other professions in metal joining"', add
label define ch00a_occ_lbl 24302 `"Constructors of industrial equipment"', add
label define ch00a_occ_lbl 24303 `"[Industrial tinplating]"', add
label define ch00a_occ_lbl 24304 `"Blacksmiths not classified elsewhere"', add
label define ch00a_occ_lbl 24305 `"Metal constructors and locksmiths"', add
label define ch00a_occ_lbl 24306 `"[Locksmith-constructors]"', add
label define ch00a_occ_lbl 24307 `"Locksmiths not classified elsewhere"', add
label define ch00a_occ_lbl 24308 `"Other metal machining professions"', add
label define ch00a_occ_lbl 24401 `"Mechanics"', add
label define ch00a_occ_lbl 24402 `"Precision mechanics and micromechanics"', add
label define ch00a_occ_lbl 24403 `"Locksmiths and machine fitters and related professions"', add
label define ch00a_occ_lbl 24404 `"[Engine and maintenance fitters] and other mechanics"', add
label define ch00a_occ_lbl 24405 `"Other fitters"', add
label define ch00a_occ_lbl 25101 `"Vehicle electricians and electronics fitters"', add
label define ch00a_occ_lbl 25102 `"Electronics fitters"', add
label define ch00a_occ_lbl 25103 `"Electronic technicians (radio/TV/video)"', add
label define ch00a_occ_lbl 25104 `"Network electricians and cable fitters"', add
label define ch00a_occ_lbl 25105 `"Wire operator/spooler and related professions"', add
label define ch00a_occ_lbl 25106 `"Other electricians not classified elsewhere"', add
label define ch00a_occ_lbl 25107 `"Electronics professions"', add
label define ch00a_occ_lbl 25108 `"[Telephone and telegraph set up]"', add
label define ch00a_occ_lbl 25201 `"Watchmaker"', add
label define ch00a_occ_lbl 25202 `"Other watch making"', add
label define ch00a_occ_lbl 25301 `"Vehicle construction professions (land, water, air)"', add
label define ch00a_occ_lbl 25302 `"Automobile mechanics"', add
label define ch00a_occ_lbl 25303 `"Motorcycle and bicycle mechanics"', add
label define ch00a_occ_lbl 25304 `"Agricultural-machine, worksite and small-appliance mechanics,"', add
label define ch00a_occ_lbl 25305 `"Industrial lacquerers/varnishers and automobile painters"', add
label define ch00a_occ_lbl 25306 `"Gas station attendants and staff not classified elsewhere"', add
label define ch00a_occ_lbl 26101 `"Sawers, [wood carvers/jigsaw operators]"', add
label define ch00a_occ_lbl 26103 `"Cabinet makers"', add
label define ch00a_occ_lbl 26104 `"Carpenter-joiners"', add
label define ch00a_occ_lbl 26105 `"Other carpenters"', add
label define ch00a_occ_lbl 26106 `"Other woodworking professions and profession in the manufacture of cork, wicker and woven items."', add
label define ch00a_occ_lbl 26202 `"Other professions in wood-surface processing"', add
label define ch00a_occ_lbl 26301 `"Professions in paper and cardboard manufacture and related professions"', add
label define ch00a_occ_lbl 26302 `"Other professions in the manufacture and processing of paper and cardboard"', add
label define ch00a_occ_lbl 27101 `"Typographer and related professions"', add
label define ch00a_occ_lbl 27102 `"Lithographer"', add
label define ch00a_occ_lbl 27103 `"Reprographer"', add
label define ch00a_occ_lbl 27104 `"Other profession in graphic arts and page formatting/set up"', add
label define ch00a_occ_lbl 27201 `"Printers"', add
label define ch00a_occ_lbl 27301 `"Bookbinders"', add
label define ch00a_occ_lbl 27302 `"Other professions in bookbinding and forwarding/converting (of printed products)"', add
label define ch00a_occ_lbl 28101 `"Chemical laboratory assistants and laboratory assistants not classified elsewhere"', add
label define ch00a_occ_lbl 28102 `"[Chemical operators]"', add
label define ch00a_occ_lbl 28103 `"Laboratory photographers"', add
label define ch00a_occ_lbl 28104 `"Other professions in the processing and manufacture of chemical products"', add
label define ch00a_occ_lbl 28201 `"Professions in the manufacture and processing of plastics"', add
label define ch00a_occ_lbl 28202 `"Profession in rubber working"', add
label define ch00a_occ_lbl 29101 `"Merchandise testers, inspectors and sorters"', add
label define ch00a_occ_lbl 29102 `"Packagers"', add
label define ch00a_occ_lbl 29103 `"Warehousers and handlers"', add
label define ch00a_occ_lbl 29104 `"Other professions in processing and manufacturing"', add
label define ch00a_occ_lbl 31101 `"Architects"', add
label define ch00a_occ_lbl 31102 `"Building engineers"', add
label define ch00a_occ_lbl 31103 `"Computer engineers"', add
label define ch00a_occ_lbl 31104 `"Machine engineers"', add
label define ch00a_occ_lbl 31105 `"Heating, venting and air conditioning engineers"', add
label define ch00a_occ_lbl 31106 `"Electrical engineers"', add
label define ch00a_occ_lbl 31107 `"Micro-technical and electronics engineers"', add
label define ch00a_occ_lbl 31108 `"Forestry engineers"', add
label define ch00a_occ_lbl 31109 `"Agronomist and agronomic engineers"', add
label define ch00a_occ_lbl 31110 `"Agricultural/rural engineers and surveyors"', add
label define ch00a_occ_lbl 31111 `"Municipal landscape planners"', add
label define ch00a_occ_lbl 31112 `"Chemical and food technology engineers"', add
label define ch00a_occ_lbl 31113 `"Other engineers"', add
label define ch00a_occ_lbl 32101 `"Electrical engineering technician"', add
label define ch00a_occ_lbl 32102 `"Electronics technicians"', add
label define ch00a_occ_lbl 32103 `"Building and civil engineering technicians, construction foreman"', add
label define ch00a_occ_lbl 32104 `"Machine technicians"', add
label define ch00a_occ_lbl 32106 `"Telecommunication technicians"', add
label define ch00a_occ_lbl 32107 `"Heating, venting and air conditioning (HVAC) technicians"', add
label define ch00a_occ_lbl 32109 `"Other technicians"', add
label define ch00a_occ_lbl 33101 `"Building and civil engineering drafts people/designers"', add
label define ch00a_occ_lbl 33102 `"Surveyor-drafters"', add
label define ch00a_occ_lbl 33103 `"Technical drafts people"', add
label define ch00a_occ_lbl 33104 `"Metal building/construction drafts people/designers"', add
label define ch00a_occ_lbl 33105 `"Machine drafts people/designers"', add
label define ch00a_occ_lbl 33106 `"Installation drafts people/designers"', add
label define ch00a_occ_lbl 33107 `"Interior designers"', add
label define ch00a_occ_lbl 33108 `"Electrical drafts people/designers"', add
label define ch00a_occ_lbl 33109 `"Other professions in technical design"', add
label define ch00a_occ_lbl 34101 `"[Technical operations managers [no additional information]]"', add
label define ch00a_occ_lbl 34102 `"Production experts"', add
label define ch00a_occ_lbl 34103 `"Foreman [no additional information]"', add
label define ch00a_occ_lbl 34104 `"Other trained workers and [technical users]"', add
label define ch00a_occ_lbl 35101 `"Instrument machinists in energy production"', add
label define ch00a_occ_lbl 35102 `"Building machinists"', add
label define ch00a_occ_lbl 35103 `"Wood machinists"', add
label define ch00a_occ_lbl 35104 `"Other machinists"', add
label define ch00a_occ_lbl 35105 `"Boiler operators"', add
label define ch00a_occ_lbl 35106 `"Machine and installation monitors, [tank verifier]"', add
label define ch00a_occ_lbl 36101 `"Computer scientist"', add
label define ch00a_occ_lbl 36102 `"Programmer"', add
label define ch00a_occ_lbl 36103 `"Computer operators"', add
label define ch00a_occ_lbl 36104 `"Webmasters and related profession"', add
label define ch00a_occ_lbl 36105 `"Other computer-related professions"', add
label define ch00a_occ_lbl 41101 `"Masons"', add
label define ch00a_occ_lbl 41102 `"Concrete layers, construction cementers and related professions"', add
label define ch00a_occ_lbl 41103 `"Carpenters"', add
label define ch00a_occ_lbl 41104 `"Road builders"', add
label define ch00a_occ_lbl 41106 `"Mining specialists, tunnel builders"', add
label define ch00a_occ_lbl 41107 `"Building contractors, building and civil engineering foremen and related professions"', add
label define ch00a_occ_lbl 41108 `"Other professions in the building industry"', add
label define ch00a_occ_lbl 41201 `"Floor layers, parquetry workers and tile layers"', add
label define ch00a_occ_lbl 41202 `"Roofer"', add
label define ch00a_occ_lbl 41203 `"Plasterers, stucco plasterers and related activities"', add
label define ch00a_occ_lbl 41204 `"Painters, upholsterers"', add
label define ch00a_occ_lbl 41205 `"Installers and assemblers of heating and ventilation systems"', add
label define ch00a_occ_lbl 41206 `"Building [tinsmithers]"', add
label define ch00a_occ_lbl 41207 `"Soundproofer/insulator"', add
label define ch00a_occ_lbl 41208 `"Professions in the construction of indoor fireplaces and glazed tile heating stoves, and chimney sweeps"', add
label define ch00a_occ_lbl 41209 `"Glaziers"', add
label define ch00a_occ_lbl 41210 `"Installers and electrical assemblers/fitters"', add
label define ch00a_occ_lbl 41211 `"[Sanitary/health planners and installers]"', add
label define ch00a_occ_lbl 41212 `"Other professions in [construction and finishing]"', add
label define ch00a_occ_lbl 42101 `"Mining and other extractive professions"', add
label define ch00a_occ_lbl 42201 `"Stone masons"', add
label define ch00a_occ_lbl 42202 `"Other stone works and stone polishers"', add
label define ch00a_occ_lbl 42301 `"Profession in the manufacture of construction materials and building stone"', add
label define ch00a_occ_lbl 51101 `"Buyers"', add
label define ch00a_occ_lbl 51102 `"Salespeople, retail employees"', add
label define ch00a_occ_lbl 51103 `"Cashiers"', add
label define ch00a_occ_lbl 51104 `"Booksellers, editors"', add
label define ch00a_occ_lbl 51105 `"[Pharmacist's assistant/hardware dealer]"', add
label define ch00a_occ_lbl 51106 `"Animal dealer/salesperson"', add
label define ch00a_occ_lbl 51107 `"Other sales professions"', add
label define ch00a_occ_lbl 51108 `"Representatives, traveling salesperson"', add
label define ch00a_occ_lbl 51109 `"Other shopkeepers and dealers"', add
label define ch00a_occ_lbl 52101 `"Advertising specialists"', add
label define ch00a_occ_lbl 52102 `"Public relations specialists"', add
label define ch00a_occ_lbl 52103 `"Marketing specialists"', add
label define ch00a_occ_lbl 52104 `"Market research and opinion poll specialists"', add
label define ch00a_occ_lbl 52201 `"Travel agency employees"', add
label define ch00a_occ_lbl 52202 `"Tour guides of organized trips, guides, [hostess/stewardess]"', add
label define ch00a_occ_lbl 52203 `"Other tourism and leisure specialists"', add
label define ch00a_occ_lbl 52301 `"Certified public accountants and auditors"', add
label define ch00a_occ_lbl 52302 `"[Trust officers, fiscal advisors]"', add
label define ch00a_occ_lbl 52303 `"Other [service industry retailers]"', add
label define ch00a_occ_lbl 52401 `"Brokers, auctioneers"', add
label define ch00a_occ_lbl 52402 `"[Money lenders, lessors]"', add
label define ch00a_occ_lbl 53101 `"[Railway operations' controllers, station attendants, railway secretaries]"', add
label define ch00a_occ_lbl 53102 `"[Track fitters], railroad track menders/repair"', add
label define ch00a_occ_lbl 53103 `"Signalmen, [signal box officials]"', add
label define ch00a_occ_lbl 53104 `"[Yard/depot workers and unskilled laborers] (railroads)"', add
label define ch00a_occ_lbl 53105 `"[Conductor/inspector/controller] (public transportation)"', add
label define ch00a_occ_lbl 53106 `"Train and tram conductors and related professions"', add
label define ch00a_occ_lbl 53107 `"Cable rail and aerial tram personnel"', add
label define ch00a_occ_lbl 53108 `"Other profession in rail and cable traffic"', add
label define ch00a_occ_lbl 53201 `"Professions in the transportation of people and related professions"', add
label define ch00a_occ_lbl 53202 `"Truck drivers"', add
label define ch00a_occ_lbl 53203 `"Other drivers"', add
label define ch00a_occ_lbl 53204 `"Driving-school teachers and automobile experts"', add
label define ch00a_occ_lbl 53301 `"Boat captains, helmsmen and related professions"', add
label define ch00a_occ_lbl 53302 `"Sailors and other professions in sailing"', add
label define ch00a_occ_lbl 53401 `"Pilots, flight instructors"', add
label define ch00a_occ_lbl 53402 `"Air traffic controllers"', add
label define ch00a_occ_lbl 53403 `"Cabin personnel and related professions"', add
label define ch00a_occ_lbl 53404 `"Other air traffic professions"', add
label define ch00a_occ_lbl 53501 `"Transportation and shipping personnel"', add
label define ch00a_occ_lbl 53502 `"Errand boys, messengers"', add
label define ch00a_occ_lbl 53503 `"Other transport and traffic professions"', add
label define ch00a_occ_lbl 54101 `"Post, telephone and telegram office employees and [operations' secretaries]"', add
label define ch00a_occ_lbl 54102 `"Post, telephone and telegram [operations' assistants]"', add
label define ch00a_occ_lbl 54103 `"Post, telephone and telegraph civil servants in distribution"', add
label define ch00a_occ_lbl 54104 `"Telephone and telegraph operators"', add
label define ch00a_occ_lbl 54105 `"Other post, telephone and telegraph professions"', add
label define ch00a_occ_lbl 54106 `"Other telecommunications specialists"', add
label define ch00a_occ_lbl 61101 `"Hotel and restaurant managers"', add
label define ch00a_occ_lbl 61102 `"Reception personnel"', add
label define ch00a_occ_lbl 61103 `"Service personnel"', add
label define ch00a_occ_lbl 61104 `"Chambermaids and linen service and storeroom personnel"', add
label define ch00a_occ_lbl 61105 `"Kitchen personnel"', add
label define ch00a_occ_lbl 61106 `"Other food service industry professions"', add
label define ch00a_occ_lbl 61201 `"Housekeepers"', add
label define ch00a_occ_lbl 61202 `"Household employees"', add
label define ch00a_occ_lbl 62101 `"Textile cleaners, dry cleaners"', add
label define ch00a_occ_lbl 62102 `"Ironers, laundry workers"', add
label define ch00a_occ_lbl 62103 `"Building caretakers and cleaners"', add
label define ch00a_occ_lbl 62104 `"Chimney sweeps"', add
label define ch00a_occ_lbl 62105 `"Other cleaning professions"', add
label define ch00a_occ_lbl 62201 `"Funeral home [owners and employees]"', add
label define ch00a_occ_lbl 62202 `"Trash removal and recycling professions"', add
label define ch00a_occ_lbl 62203 `"Other professions in public sanitation"', add
label define ch00a_occ_lbl 62301 `"Hairdressers"', add
label define ch00a_occ_lbl 62302 `"Beauticians"', add
label define ch00a_occ_lbl 62303 `"Manicures and pedicures"', add
label define ch00a_occ_lbl 71101 `"[Business people/contractors/promoters/entrepreneurs], directors"', add
label define ch00a_occ_lbl 71102 `"Upper level managers in public administration"', add
label define ch00a_occ_lbl 71103 `"Party and association secretaries and officials"', add
label define ch00a_occ_lbl 71104 `"Personnel specialists"', add
label define ch00a_occ_lbl 71105 `"Mid-level managers/executives [no additional information]"', add
label define ch00a_occ_lbl 72101 `"Business and office white collar employees not classified elsewhere"', add
label define ch00a_occ_lbl 72102 `"Administrative civil servants and related professions"', add
label define ch00a_occ_lbl 72103 `"Accountants"', add
label define ch00a_occ_lbl 72104 `"Building specialists and managers"', add
label define ch00a_occ_lbl 72105 `"Import and export specialists"', add
label define ch00a_occ_lbl 72106 `"Organization and planning specialists and related professions"', add
label define ch00a_occ_lbl 72107 `"Other administrative office employees"', add
label define ch00a_occ_lbl 73101 `"Banking professions not classified elsewhere"', add
label define ch00a_occ_lbl 73102 `"Insurance inspectors and agents"', add
label define ch00a_occ_lbl 73103 `"Insurance professions not classified elsewhere"', add
label define ch00a_occ_lbl 74101 `"Police"', add
label define ch00a_occ_lbl 74102 `"Security guards, watchmen"', add
label define ch00a_occ_lbl 74103 `"Professional firefighters, civil protection"', add
label define ch00a_occ_lbl 74104 `"Career military personnel and related professions"', add
label define ch00a_occ_lbl 74105 `"Other security professions"', add
label define ch00a_occ_lbl 74106 `"Customs and border guards"', add
label define ch00a_occ_lbl 75101 `"Judges and prosecutors"', add
label define ch00a_occ_lbl 75102 `"Court clerks"', add
label define ch00a_occ_lbl 75103 `"Lawyers and [legal professionals who can draw up certain contracts]"', add
label define ch00a_occ_lbl 75104 `"Other legal representatives and legal advisers"', add
label define ch00a_occ_lbl 81101 `"Journalists and editors"', add
label define ch00a_occ_lbl 81102 `"Proofreaders, reviewers"', add
label define ch00a_occ_lbl 81103 `"Translators, interpreters"', add
label define ch00a_occ_lbl 81104 `"Other authors of texts, other media professionals: written press, audio-visual"', add
label define ch00a_occ_lbl 81201 `"Librarian"', add
label define ch00a_occ_lbl 81202 `"Archivist, [research assistant/librarian/file clerk]"', add
label define ch00a_occ_lbl 81203 `"Curators, museum professionals"', add
label define ch00a_occ_lbl 81301 `"Scenery painters and prop men/women"', add
label define ch00a_occ_lbl 81302 `"Stage managers, directors and producers"', add
label define ch00a_occ_lbl 81303 `"Audio-visual technicians"', add
label define ch00a_occ_lbl 81304 `"Cameramen/women and image technicians"', add
label define ch00a_occ_lbl 81305 `"Photographers"', add
label define ch00a_occ_lbl 81306 `"Other professions in audio-visual production"', add
label define ch00a_occ_lbl 82101 `"Musicians, composers and conductors"', add
label define ch00a_occ_lbl 82102 `"Singers"', add
label define ch00a_occ_lbl 82201 `"Actors"', add
label define ch00a_occ_lbl 82202 `"Dancers, dance teachers and choreographers"', add
label define ch00a_occ_lbl 82203 `"Artists"', add
label define ch00a_occ_lbl 82205 `"Other show business professions"', add
label define ch00a_occ_lbl 82301 `"Stone sculptors"', add
label define ch00a_occ_lbl 82302 `"Painters, designers/draftsmen"', add
label define ch00a_occ_lbl 82303 `"Graphic artists and [poster designers]"', add
label define ch00a_occ_lbl 82304 `"Fashion designers and creators"', add
label define ch00a_occ_lbl 82305 `"Other artistic creators"', add
label define ch00a_occ_lbl 82401 `"Goldsmiths"', add
label define ch00a_occ_lbl 82402 `"Other jewelry makers"', add
label define ch00a_occ_lbl 82404 `"Ceramicist, potter"', add
label define ch00a_occ_lbl 82406 `"Musical instrument manufacturers and tuners"', add
label define ch00a_occ_lbl 82407 `"Decorators and window dressers"', add
label define ch00a_occ_lbl 82408 `"Art restorers"', add
label define ch00a_occ_lbl 82409 `"Interior designers"', add
label define ch00a_occ_lbl 82410 `"Other [master craftsmen]"', add
label define ch00a_occ_lbl 83101 `"Social workers"', add
label define ch00a_occ_lbl 83102 `"Special education teachers"', add
label define ch00a_occ_lbl 83103 `"Directors of [hostel/shelter/halfway home/retirement home], day care centers"', add
label define ch00a_occ_lbl 83104 `"Other social work professions"', add
label define ch00a_occ_lbl 83201 `"Ordained preachers, pastors"', add
label define ch00a_occ_lbl 83202 `"Other professions providing spiritual assistance"', add
label define ch00a_occ_lbl 83204 `"Professional assistants in spiritual assistance"', add
label define ch00a_occ_lbl 84101 `"University professors"', add
label define ch00a_occ_lbl 84102 `"University assistants [no additional information]"', add
label define ch00a_occ_lbl 84201 `"Secondary education teachers (high schools, vocational schools, teaching schools, business schools)"', add
label define ch00a_occ_lbl 84301 `"Teachers of upper-level classes, [practical training classes] and [career] orientation classes"', add
label define ch00a_occ_lbl 84401 `"Teacher (primary school)"', add
label define ch00a_occ_lbl 84501 `"Pre-school and kindergarten teachers"', add
label define ch00a_occ_lbl 84601 `"Teachers in professional and specialized schools"', add
label define ch00a_occ_lbl 84602 `"[Teachers in a special education program class, therapeutic educationalists]"', add
label define ch00a_occ_lbl 84603 `"Music and voice teachers"', add
label define ch00a_occ_lbl 84604 `"Drawing and manual arts teachers"', add
label define ch00a_occ_lbl 84605 `"Physical education teachers"', add
label define ch00a_occ_lbl 84701 `"Teachers of adult education"', add
label define ch00a_occ_lbl 84702 `"Various specialized teachers"', add
label define ch00a_occ_lbl 84703 `"Teachers and instructors"', add
label define ch00a_occ_lbl 84704 `"Educationalists"', add
label define ch00a_occ_lbl 85101 `"Professions in economics"', add
label define ch00a_occ_lbl 85102 `"Sociologists and political scientists"', add
label define ch00a_occ_lbl 85103 `"Psychologists and employment counselors"', add
label define ch00a_occ_lbl 85201 `"Philologists"', add
label define ch00a_occ_lbl 85202 `"Historians and archeologists"', add
label define ch00a_occ_lbl 85301 `"Biologists"', add
label define ch00a_occ_lbl 85302 `"Geographers, meteorologists"', add
label define ch00a_occ_lbl 85303 `"Chemists"', add
label define ch00a_occ_lbl 85304 `"Mathematicians, statisticians"', add
label define ch00a_occ_lbl 85305 `"Physicians"', add
label define ch00a_occ_lbl 85306 `"Experts in environmental protection"', add
label define ch00a_occ_lbl 86101 `"Doctors"', add
label define ch00a_occ_lbl 86102 `"Medical assistants"', add
label define ch00a_occ_lbl 86103 `"Pharmacists"', add
label define ch00a_occ_lbl 86104 `"Pharmacists assistants"', add
label define ch00a_occ_lbl 86201 `"Physical and occupational therapists"', add
label define ch00a_occ_lbl 86202 `"Psychotherapist (non doctors)"', add
label define ch00a_occ_lbl 86203 `"Healers, naturopaths"', add
label define ch00a_occ_lbl 86204 `"Opticians"', add
label define ch00a_occ_lbl 86205 `"Massage therapists"', add
label define ch00a_occ_lbl 86206 `"Medico-technical assistants"', add
label define ch00a_occ_lbl 86207 `"Other therapy and medico-technical professions"', add
label define ch00a_occ_lbl 86208 `"Medical laboratory technicians"', add
label define ch00a_occ_lbl 86301 `"Dentists"', add
label define ch00a_occ_lbl 86302 `"Dental mechanics/technicians"', add
label define ch00a_occ_lbl 86303 `"Dentist's assistants"', add
label define ch00a_occ_lbl 86304 `"Dental hygienists"', add
label define ch00a_occ_lbl 86401 `"Veterinarians"', add
label define ch00a_occ_lbl 86402 `"Veterinary assistants"', add
label define ch00a_occ_lbl 86501 `"Midwives"', add
label define ch00a_occ_lbl 86502 `"Pediatric and maternal health care nurses"', add
label define ch00a_occ_lbl 86503 `"Psychiatric nurses"', add
label define ch00a_occ_lbl 86504 `"[Degree-holding] nurse"', add
label define ch00a_occ_lbl 86505 `"Hospital aids and nurses aids"', add
label define ch00a_occ_lbl 86506 `"Family helpers, community or otherwise"', add
label define ch00a_occ_lbl 86507 `"Other caring professions"', add
label define ch00a_occ_lbl 87101 `"Professional athletes and sports trainers"', add
label define ch00a_occ_lbl 91106 `"Service industry professions not classified elsewhere"', add
label define ch00a_occ_lbl 91107 `"Non classified professions in public administration"', add
label define ch00a_occ_lbl 99000 `"Other occupation, response suppressed"', add
label define ch00a_occ_lbl 99998 `"Unknown"', add
label define ch00a_occ_lbl 99999 `"NIU (not in universe)"', add
label values ch00a_occ ch00a_occ_lbl

label define ch00a_isco3_lbl 010 `"Armed forces"'
label define ch00a_isco3_lbl 100 `"Legislators, senior officials, and managers, not specified"', add
label define ch00a_isco3_lbl 112 `"Senior government officials"', add
label define ch00a_isco3_lbl 113 `"Traditional chiefs and heads of villages"', add
label define ch00a_isco3_lbl 114 `"Senior officials of political-party organizations"', add
label define ch00a_isco3_lbl 120 `"Corporate managers, not specified"', add
label define ch00a_isco3_lbl 121 `"Directors and chief executives"', add
label define ch00a_isco3_lbl 122 `"Production and operations department managers in agriculture, hunting, forestry and fishing"', add
label define ch00a_isco3_lbl 123 `"Other department managers"', add
label define ch00a_isco3_lbl 131 `"General managers in agriculture, hunting, forestry/ and fishing"', add
label define ch00a_isco3_lbl 211 `"Physicists, chemists, and related professionals"', add
label define ch00a_isco3_lbl 212 `"Mathematicians, statisticians and related professionals"', add
label define ch00a_isco3_lbl 213 `"Computer systems designers and analysts"', add
label define ch00a_isco3_lbl 214 `"Architects, engineers, and related professionals"', add
label define ch00a_isco3_lbl 221 `"Life science professionals"', add
label define ch00a_isco3_lbl 222 `"Medical doctors"', add
label define ch00a_isco3_lbl 231 `"College, university, and higher education teaching professionals"', add
label define ch00a_isco3_lbl 232 `"Secondary education teaching professionals"', add
label define ch00a_isco3_lbl 234 `"Special education teaching professionals"', add
label define ch00a_isco3_lbl 235 `"Other teaching professionals"', add
label define ch00a_isco3_lbl 241 `"Business professionals"', add
label define ch00a_isco3_lbl 242 `"Legal professionals"', add
label define ch00a_isco3_lbl 243 `"Archivists, librarians and related information professionals"', add
label define ch00a_isco3_lbl 244 `"Social science and related professionals"', add
label define ch00a_isco3_lbl 245 `"Writers and creative or performing artists"', add
label define ch00a_isco3_lbl 246 `"Religious professionals"', add
label define ch00a_isco3_lbl 247 `"Administrative managers of public services"', add
label define ch00a_isco3_lbl 290 `"Other professionals"', add
label define ch00a_isco3_lbl 300 `"Technicians and associate professionals, not specified"', add
label define ch00a_isco3_lbl 310 `"Physical and engineering science associate professionals, not specified"', add
label define ch00a_isco3_lbl 311 `"Physical and engineering science technicians"', add
label define ch00a_isco3_lbl 312 `"Computer assistants"', add
label define ch00a_isco3_lbl 313 `"Optical and electronic equipment operators"', add
label define ch00a_isco3_lbl 314 `"Ship and aircraft controllers and technicians"', add
label define ch00a_isco3_lbl 315 `"Safety and quality inspectors"', add
label define ch00a_isco3_lbl 321 `"Life science technicians and related associate professionals"', add
label define ch00a_isco3_lbl 322 `"Modern health associate professionals (except nursing)"', add
label define ch00a_isco3_lbl 323 `"Nursing associate professionals"', add
label define ch00a_isco3_lbl 331 `"Primary education teaching associate professionals"', add
label define ch00a_isco3_lbl 332 `"Pre-primary education teaching associate professionals"', add
label define ch00a_isco3_lbl 334 `"Other teaching associate professionals"', add
label define ch00a_isco3_lbl 340 `"Other associate professionals, not specified"', add
label define ch00a_isco3_lbl 341 `"Finance and sales associate professionals"', add
label define ch00a_isco3_lbl 342 `"Business services agents and trade brokers"', add
label define ch00a_isco3_lbl 343 `"Administrative associate professionals"', add
label define ch00a_isco3_lbl 344 `"Customs, tax and related government associate professionals"', add
label define ch00a_isco3_lbl 346 `"Social work associate professionals"', add
label define ch00a_isco3_lbl 347 `"Artistic, entertainment and sports associate professionals"', add
label define ch00a_isco3_lbl 348 `"Religious associate professionals"', add
label define ch00a_isco3_lbl 390 `"Other technicians and associate professionals"', add
label define ch00a_isco3_lbl 400 `"Clerks, not specified"', add
label define ch00a_isco3_lbl 411 `"Secretaries and keyboard-operating clerks"', add
label define ch00a_isco3_lbl 412 `"Numerical clerks"', add
label define ch00a_isco3_lbl 413 `"Material-recording and transport clerks"', add
label define ch00a_isco3_lbl 414 `"Library and filing clerks"', add
label define ch00a_isco3_lbl 419 `"Other office clerks"', add
label define ch00a_isco3_lbl 421 `"Cashiers, tellers and related clerks"', add
label define ch00a_isco3_lbl 422 `"Travel agency and related clerks"', add
label define ch00a_isco3_lbl 490 `"Other clerks"', add
label define ch00a_isco3_lbl 511 `"Travel attendants and related workers"', add
label define ch00a_isco3_lbl 512 `"Housekeeping and restaurant services workers"', add
label define ch00a_isco3_lbl 513 `"Personal care and related workers"', add
label define ch00a_isco3_lbl 514 `"Other personal services workers"', add
label define ch00a_isco3_lbl 516 `"Protective services workers"', add
label define ch00a_isco3_lbl 522 `"Shop salespersons and demonstrators"', add
label define ch00a_isco3_lbl 611 `"Field crop and vegetable growers"', add
label define ch00a_isco3_lbl 612 `"Market-oriented animal producers and related workers"', add
label define ch00a_isco3_lbl 613 `"Market-oriented crop and animal producers"', add
label define ch00a_isco3_lbl 614 `"Forestry workers and loggers"', add
label define ch00a_isco3_lbl 615 `"Aquatic-life cultivation workers"', add
label define ch00a_isco3_lbl 690 `"Other skilled agricultural and fishery workers"', add
label define ch00a_isco3_lbl 700 `"Craft and related trades workers, not specified"', add
label define ch00a_isco3_lbl 711 `"Miners, shot firers, stone cutters and carvers"', add
label define ch00a_isco3_lbl 712 `"Building frame and related trades workers"', add
label define ch00a_isco3_lbl 713 `"Building finishers and related trades workers"', add
label define ch00a_isco3_lbl 714 `"Painters, building structure cleaners and related trades workers"', add
label define ch00a_isco3_lbl 720 `"Metal, machinery and related trades workers, not specified"', add
label define ch00a_isco3_lbl 721 `"Metal moulders, welders, sheet-metal workers, structural- metal preparers,"', add
label define ch00a_isco3_lbl 722 `"Blacksmiths, tool-makers and related trades workers"', add
label define ch00a_isco3_lbl 723 `"Machinery mechanics and fitters"', add
label define ch00a_isco3_lbl 724 `"Electrical and electronic equipment mechanics and fitters"', add
label define ch00a_isco3_lbl 731 `"Precision workers in metal and related materials"', add
label define ch00a_isco3_lbl 732 `"Potters, glass-makers and related trades workers"', add
label define ch00a_isco3_lbl 733 `"Handicraft workers in wood, textile, leather and related materials"', add
label define ch00a_isco3_lbl 734 `"Printing and related trades workers"', add
label define ch00a_isco3_lbl 741 `"Food processing and related trades workers"', add
label define ch00a_isco3_lbl 742 `"Wood treaters, cabinet-makers and related trades workers"', add
label define ch00a_isco3_lbl 743 `"Textile, garment and related trades workers"', add
label define ch00a_isco3_lbl 744 `"Pelt, leather and shoemaking trades workers"', add
label define ch00a_isco3_lbl 790 `"Other craft and related workers"', add
label define ch00a_isco3_lbl 800 `"Plant and machine operators and assemblers, not specified"', add
label define ch00a_isco3_lbl 810 `"Stationary-plant and related operators, not specified"', add
label define ch00a_isco3_lbl 812 `"Metal-processing-plant operators"', add
label define ch00a_isco3_lbl 813 `"Glass, ceramics and related plant operators"', add
label define ch00a_isco3_lbl 814 `"Wood-processing- and papermaking-plant operators"', add
label define ch00a_isco3_lbl 815 `"Chemical-processing-plant operators"', add
label define ch00a_isco3_lbl 816 `"Power-production and related plant operators"', add
label define ch00a_isco3_lbl 821 `"Metal- and mineral-products machine operators"', add
label define ch00a_isco3_lbl 822 `"Pharmaceutical- and toiletry-products machine operators"', add
label define ch00a_isco3_lbl 823 `"Rubber-products machine operators"', add
label define ch00a_isco3_lbl 824 `"Wood-products machine operators"', add
label define ch00a_isco3_lbl 825 `"Printing-machine operators"', add
label define ch00a_isco3_lbl 826 `"Fibre-preparing-, spinning- and winding-machine operators"', add
label define ch00a_isco3_lbl 827 `"Food and related products machine operators"', add
label define ch00a_isco3_lbl 828 `"Assemblers"', add
label define ch00a_isco3_lbl 831 `"Locomotive-engine drivers and related workers"', add
label define ch00a_isco3_lbl 832 `"Motor-vehicle drivers"', add
label define ch00a_isco3_lbl 833 `"Agricultural and other mobile-plant operators"', add
label define ch00a_isco3_lbl 834 `"Ships' deck crews and related workers"', add
label define ch00a_isco3_lbl 890 `"Other plant and machine operators"', add
label define ch00a_isco3_lbl 900 `"Elementary occupations, not specified"', add
label define ch00a_isco3_lbl 913 `"Domestic and related helpers, cleaners and launderers"', add
label define ch00a_isco3_lbl 914 `"Building caretakers, window and related cleaners"', add
label define ch00a_isco3_lbl 915 `"Messengers, package and luggage porters and deliverers"', add
label define ch00a_isco3_lbl 916 `"Garbage collectors and related labourers"', add
label define ch00a_isco3_lbl 921 `"Farm-hands and labourers"', add
label define ch00a_isco3_lbl 931 `"Mining and construction labourers"', add
label define ch00a_isco3_lbl 932 `"Manufacturing labourers"', add
label define ch00a_isco3_lbl 990 `"Other elementary occupations"', add
label define ch00a_isco3_lbl 995 `"Other occupation, response suppressed"', add
label define ch00a_isco3_lbl 998 `"Unknown"', add
label define ch00a_isco3_lbl 999 `"NIU (not in universe)"', add
label values ch00a_isco3 ch00a_isco3_lbl

label define ch00a_isco4_lbl 0100 `"Armed forces"'
label define ch00a_isco4_lbl 1000 `"Legislators, senior officials, and managers, not specified"', add
label define ch00a_isco4_lbl 1120 `"Senior government officials"', add
label define ch00a_isco4_lbl 1130 `"Traditional chiefs and heads of villages"', add
label define ch00a_isco4_lbl 1142 `"Senior officials of employers', workers' and other economic-interest organizations"', add
label define ch00a_isco4_lbl 1200 `"Corporate managers, not specified"', add
label define ch00a_isco4_lbl 1210 `"Directors and chief executives"', add
label define ch00a_isco4_lbl 1222 `"Production and operations department managers in manufacturing"', add
label define ch00a_isco4_lbl 1223 `"Production and operations department managers in construction"', add
label define ch00a_isco4_lbl 1224 `"Production and operations department managers in wholesale and retail trade"', add
label define ch00a_isco4_lbl 1225 `"Production and operations department managers in restaurants and hotels"', add
label define ch00a_isco4_lbl 1226 `"Production and operations department managers in transport, storage and communications"', add
label define ch00a_isco4_lbl 1227 `"Production and operations department managers in business services"', add
label define ch00a_isco4_lbl 1228 `"Production and operations department managers in personal care, cleaning and related services"', add
label define ch00a_isco4_lbl 1229 `"Production and operations department managers not elsewhere classified"', add
label define ch00a_isco4_lbl 1230 `"Other department managers, not specified"', add
label define ch00a_isco4_lbl 1231 `"Finance and administration department managers"', add
label define ch00a_isco4_lbl 1232 `"Personnel and industrial relations department managers"', add
label define ch00a_isco4_lbl 1233 `"Sales and marketing department managers"', add
label define ch00a_isco4_lbl 1234 `"Advertising and public relations department managers"', add
label define ch00a_isco4_lbl 1235 `"Supply and distribution department managers"', add
label define ch00a_isco4_lbl 1236 `"Computing services department managers"', add
label define ch00a_isco4_lbl 1237 `"Research and development department managers"', add
label define ch00a_isco4_lbl 1239 `"Other department managers not elsewhere classified"', add
label define ch00a_isco4_lbl 1311 `"General managers in agriculture, hunting, forestry/ and fishing"', add
label define ch00a_isco4_lbl 1312 `"General managers in manufacturing"', add
label define ch00a_isco4_lbl 1313 `"General managers in construction"', add
label define ch00a_isco4_lbl 1314 `"General managers in wholesale and retail trade"', add
label define ch00a_isco4_lbl 1315 `"General managers of restaurants and hotels"', add
label define ch00a_isco4_lbl 1316 `"General managers in transport, storage and communications"', add
label define ch00a_isco4_lbl 1317 `"General managers of business services"', add
label define ch00a_isco4_lbl 1318 `"General managers in personal care, cleaning and related services"', add
label define ch00a_isco4_lbl 1319 `"General managers not elsewhere classified"', add
label define ch00a_isco4_lbl 2111 `"Physicists and astronomers"', add
label define ch00a_isco4_lbl 2113 `"Chemists"', add
label define ch00a_isco4_lbl 2114 `"Geologists and geophysicists"', add
label define ch00a_isco4_lbl 2121 `"Mathematicians and related professionals"', add
label define ch00a_isco4_lbl 2122 `"Statisticians"', add
label define ch00a_isco4_lbl 2131 `"Computer systems designers and analysts"', add
label define ch00a_isco4_lbl 2139 `"Computing professionals not elsewhere classified"', add
label define ch00a_isco4_lbl 2140 `"Architects, engineers, and related professionals, not specified"', add
label define ch00a_isco4_lbl 2141 `"Architects, town, and traffic planners"', add
label define ch00a_isco4_lbl 2142 `"Civil engineers"', add
label define ch00a_isco4_lbl 2143 `"Electrical engineers"', add
label define ch00a_isco4_lbl 2144 `"Electronics and telecommunications engineers"', add
label define ch00a_isco4_lbl 2145 `"Mechanical engineers"', add
label define ch00a_isco4_lbl 2146 `"Chemical engineers"', add
label define ch00a_isco4_lbl 2148 `"Cartographers and surveyors"', add
label define ch00a_isco4_lbl 2149 `"Architects, engineers and related professionals not elsewhere classified"', add
label define ch00a_isco4_lbl 2210 `"Life science professionals, not specified"', add
label define ch00a_isco4_lbl 2211 `"Biologists, botanists, zoologists, and related professionals"', add
label define ch00a_isco4_lbl 2212 `"Pharmacologists, pathologists and related professionals"', add
label define ch00a_isco4_lbl 2213 `"Agronomists and related professionals"', add
label define ch00a_isco4_lbl 2221 `"Medical doctors"', add
label define ch00a_isco4_lbl 2222 `"Dentists"', add
label define ch00a_isco4_lbl 2223 `"Veterinarians"', add
label define ch00a_isco4_lbl 2224 `"Pharmacists"', add
label define ch00a_isco4_lbl 2310 `"College, university, and higher education teaching professionals"', add
label define ch00a_isco4_lbl 2320 `"Secondary education teaching professionals"', add
label define ch00a_isco4_lbl 2340 `"Special education teaching professionals"', add
label define ch00a_isco4_lbl 2351 `"Education methods specialists"', add
label define ch00a_isco4_lbl 2359 `"Other teaching professionals not elsewhere classified"', add
label define ch00a_isco4_lbl 2410 `"Business professionals, not specified"', add
label define ch00a_isco4_lbl 2411 `"Accountants"', add
label define ch00a_isco4_lbl 2412 `"Personnel and careers professionals"', add
label define ch00a_isco4_lbl 2419 `"Business professionals not elsewhere classified"', add
label define ch00a_isco4_lbl 2420 `"Legal professionals, not specified"', add
label define ch00a_isco4_lbl 2421 `"Lawyers"', add
label define ch00a_isco4_lbl 2422 `"Judges"', add
label define ch00a_isco4_lbl 2429 `"Legal professionals not elsewhere classified"', add
label define ch00a_isco4_lbl 2430 `"Archivists, librarians, and related information professionals, not specified"', add
label define ch00a_isco4_lbl 2431 `"Archivists and curators"', add
label define ch00a_isco4_lbl 2432 `"Librarians and related information professionals"', add
label define ch00a_isco4_lbl 2441 `"Economists"', add
label define ch00a_isco4_lbl 2442 `"Sociologists, anthropologists and related professionals"', add
label define ch00a_isco4_lbl 2443 `"Philosophers, historians and political scientists"', add
label define ch00a_isco4_lbl 2444 `"Philologists, translators, and interpreters"', add
label define ch00a_isco4_lbl 2445 `"Psychologists"', add
label define ch00a_isco4_lbl 2446 `"Social work professionals"', add
label define ch00a_isco4_lbl 2450 `"Writers and creative or performing artists, not specified"', add
label define ch00a_isco4_lbl 2451 `"Authors, journalists, and other writers"', add
label define ch00a_isco4_lbl 2452 `"Sculptors, painters, and related artists"', add
label define ch00a_isco4_lbl 2453 `"Composers, musicians, and singers"', add
label define ch00a_isco4_lbl 2454 `"Choreographers and dancers"', add
label define ch00a_isco4_lbl 2455 `"Film, stage, and related actors and directors"', add
label define ch00a_isco4_lbl 2460 `"Religious professionals"', add
label define ch00a_isco4_lbl 2470 `"Administrative managers of public services"', add
label define ch00a_isco4_lbl 2900 `"Other professionals"', add
label define ch00a_isco4_lbl 3000 `"Technicians and associate professionals, not specified"', add
label define ch00a_isco4_lbl 3100 `"Physical and engineering science associate professionals, not specified"', add
label define ch00a_isco4_lbl 3110 `"Physical and engineering science technicians, not specified"', add
label define ch00a_isco4_lbl 3111 `"Chemical and physical science technicians"', add
label define ch00a_isco4_lbl 3112 `"Civil engineering technicians"', add
label define ch00a_isco4_lbl 3113 `"Electrical engineering technicians"', add
label define ch00a_isco4_lbl 3114 `"Electronics and telecommunications engineering technicians"', add
label define ch00a_isco4_lbl 3115 `"Mechanical engineering technicians"', add
label define ch00a_isco4_lbl 3116 `"Chemical engineering technicians"', add
label define ch00a_isco4_lbl 3118 `"Draughts persons"', add
label define ch00a_isco4_lbl 3119 `"Physical and engineering science technicians not elsewhere classified"', add
label define ch00a_isco4_lbl 3121 `"Computer assistants"', add
label define ch00a_isco4_lbl 3122 `"Computer equipment operators"', add
label define ch00a_isco4_lbl 3130 `"Optical and electronic equipment operators, not specified"', add
label define ch00a_isco4_lbl 3131 `"Photographers and image and sound recording equipment operators"', add
label define ch00a_isco4_lbl 3132 `"Broadcasting and telecommunications equipment operators"', add
label define ch00a_isco4_lbl 3133 `"Medical equipment operators"', add
label define ch00a_isco4_lbl 3140 `"Ship and aircraft controllers and technicians, not specified"', add
label define ch00a_isco4_lbl 3142 `"Ships' deck officers and pilots"', add
label define ch00a_isco4_lbl 3143 `"Aircraft pilots and related associate professionals"', add
label define ch00a_isco4_lbl 3144 `"Air traffic controllers"', add
label define ch00a_isco4_lbl 3150 `"Safety and quality inspectors, not specified"', add
label define ch00a_isco4_lbl 3151 `"Building and fire inspectors"', add
label define ch00a_isco4_lbl 3152 `"Safety, health and quality inspectors"', add
label define ch00a_isco4_lbl 3211 `"Life science technicians"', add
label define ch00a_isco4_lbl 3212 `"Agronomy and forestry technicians"', add
label define ch00a_isco4_lbl 3213 `"Farming and forestry advisers"', add
label define ch00a_isco4_lbl 3220 `"Modern health associate professionals (except nursing), not specified"', add
label define ch00a_isco4_lbl 3221 `"Medical assistants"', add
label define ch00a_isco4_lbl 3222 `"Sanitarians"', add
label define ch00a_isco4_lbl 3223 `"Dieticians and nutritionists"', add
label define ch00a_isco4_lbl 3224 `"Optometrist and opticians"', add
label define ch00a_isco4_lbl 3225 `"Dental assistants"', add
label define ch00a_isco4_lbl 3226 `"Physiotherapists and related associate professionals"', add
label define ch00a_isco4_lbl 3227 `"Veterinary assistants"', add
label define ch00a_isco4_lbl 3228 `"Pharmaceutical assistants"', add
label define ch00a_isco4_lbl 3229 `"Modern health associate professionals (except nursing) not elsewhere classified"', add
label define ch00a_isco4_lbl 3231 `"Nursing associate professionals"', add
label define ch00a_isco4_lbl 3232 `"Midwifery associate professionals"', add
label define ch00a_isco4_lbl 3310 `"Primary education teaching associate professionals"', add
label define ch00a_isco4_lbl 3320 `"Pre-primary education teaching associate professionals"', add
label define ch00a_isco4_lbl 3340 `"Other teaching associate professionals"', add
label define ch00a_isco4_lbl 3400 `"Other associate professionals, not specified"', add
label define ch00a_isco4_lbl 3410 `"Finance and sales associate professionals"', add
label define ch00a_isco4_lbl 3411 `"Securities and finance dealers and brokers"', add
label define ch00a_isco4_lbl 3412 `"Insurance representatives"', add
label define ch00a_isco4_lbl 3413 `"Estate agents"', add
label define ch00a_isco4_lbl 3414 `"Travel consultants and organizers"', add
label define ch00a_isco4_lbl 3415 `"Technical and commercial sales representatives"', add
label define ch00a_isco4_lbl 3416 `"Buyers"', add
label define ch00a_isco4_lbl 3419 `"Finance and sales associate professionals not elsewhere classified"', add
label define ch00a_isco4_lbl 3420 `"Business services agents and trade brokers, not specified"', add
label define ch00a_isco4_lbl 3421 `"Trade brokers"', add
label define ch00a_isco4_lbl 3422 `"Clearing and forwarding agents"', add
label define ch00a_isco4_lbl 3423 `"Employment agents and labour contractors"', add
label define ch00a_isco4_lbl 3429 `"Business services agents and trade brokers not elsewhere classified"', add
label define ch00a_isco4_lbl 3430 `"Administrative associate professionals, not specified"', add
label define ch00a_isco4_lbl 3431 `"Administrative secretaries and related associate professionals"', add
label define ch00a_isco4_lbl 3432 `"Legal and related business associate professionals"', add
label define ch00a_isco4_lbl 3433 `"Bookkeepers"', add
label define ch00a_isco4_lbl 3440 `"Customs, tax and related government associate professionals, not specified"', add
label define ch00a_isco4_lbl 3441 `"Customs and border inspectors"', add
label define ch00a_isco4_lbl 3442 `"Government tax and excise officials"', add
label define ch00a_isco4_lbl 3449 `"Customs, tax and related government associate professionals not elsewhere classified"', add
label define ch00a_isco4_lbl 3460 `"Social work associate professionals"', add
label define ch00a_isco4_lbl 3470 `"Artistic, entertainment and sports associate professionals, not specified"', add
label define ch00a_isco4_lbl 3471 `"Decorators and commercial designers"', add
label define ch00a_isco4_lbl 3472 `"Radio, television and other announcers"', add
label define ch00a_isco4_lbl 3474 `"Clowns, magicians, acrobats and related associate professionals"', add
label define ch00a_isco4_lbl 3475 `"Athletes, sportspersons and related associate professionals"', add
label define ch00a_isco4_lbl 3480 `"Religious associate professionals"', add
label define ch00a_isco4_lbl 3900 `"Other technicians and associate professionals"', add
label define ch00a_isco4_lbl 4000 `"Clerks, not specified"', add
label define ch00a_isco4_lbl 4110 `"Secretaries and keyboard-operating clerks, not specified"', add
label define ch00a_isco4_lbl 4111 `"Stenographers and typists"', add
label define ch00a_isco4_lbl 4113 `"Data entry operators"', add
label define ch00a_isco4_lbl 4115 `"Secretaries"', add
label define ch00a_isco4_lbl 4120 `"Numerical clerks, not specified"', add
label define ch00a_isco4_lbl 4121 `"Accounting and bookkeeping clerks"', add
label define ch00a_isco4_lbl 4122 `"Statistical and finance clerks"', add
label define ch00a_isco4_lbl 4130 `"Material-recording and transport clerks, not specified"', add
label define ch00a_isco4_lbl 4131 `"Stock clerks"', add
label define ch00a_isco4_lbl 4133 `"Transport clerks"', add
label define ch00a_isco4_lbl 4141 `"Library and filing clerks"', add
label define ch00a_isco4_lbl 4142 `"Mail carriers and sorting clerks"', add
label define ch00a_isco4_lbl 4143 `"Coding, proof-reading and related clerks"', add
label define ch00a_isco4_lbl 4190 `"Other office clerks"', add
label define ch00a_isco4_lbl 4210 `"Cashiers, tellers and related clerks, not specified"', add
label define ch00a_isco4_lbl 4211 `"Cashiers and ticket clerks"', add
label define ch00a_isco4_lbl 4212 `"Tellers and other counter clerks"', add
label define ch00a_isco4_lbl 4221 `"Travel agency and related clerks"', add
label define ch00a_isco4_lbl 4222 `"Receptionists and information clerks"', add
label define ch00a_isco4_lbl 4223 `"Telephone switchboard operators"', add
label define ch00a_isco4_lbl 4900 `"Other clerks"', add
label define ch00a_isco4_lbl 5110 `"Travel attendants and related workers, not specified"', add
label define ch00a_isco4_lbl 5111 `"Travel attendants and travel stewards"', add
label define ch00a_isco4_lbl 5112 `"Transport conductors"', add
label define ch00a_isco4_lbl 5113 `"Travel guides"', add
label define ch00a_isco4_lbl 5120 `"Housekeeping and restaurant services workers, not specified"', add
label define ch00a_isco4_lbl 5121 `"Housekeepers and related workers"', add
label define ch00a_isco4_lbl 5122 `"Cooks"', add
label define ch00a_isco4_lbl 5123 `"Waiters, waitresses and bartenders"', add
label define ch00a_isco4_lbl 5130 `"Personal care and related workers, not specified"', add
label define ch00a_isco4_lbl 5131 `"Child-care workers"', add
label define ch00a_isco4_lbl 5132 `"Institution-based personal care workers"', add
label define ch00a_isco4_lbl 5133 `"Home-based personal care workers"', add
label define ch00a_isco4_lbl 5139 `"Personal care and related workers not elsewhere classified"', add
label define ch00a_isco4_lbl 5140 `"Other personal services workers, not specified"', add
label define ch00a_isco4_lbl 5141 `"Hairdressers, barbers, beauticians and related workers"', add
label define ch00a_isco4_lbl 5142 `"Companions and valets"', add
label define ch00a_isco4_lbl 5143 `"Undertakers and embalmers"', add
label define ch00a_isco4_lbl 5149 `"Other personal services workers not elsewhere classified"', add
label define ch00a_isco4_lbl 5160 `"Protective services workers, not specified"', add
label define ch00a_isco4_lbl 5161 `"Fire-fighters"', add
label define ch00a_isco4_lbl 5162 `"Police officers"', add
label define ch00a_isco4_lbl 5163 `"Prison guards"', add
label define ch00a_isco4_lbl 5169 `"Protective services workers not elsewhere classified"', add
label define ch00a_isco4_lbl 5220 `"Shop salespersons and demonstrators"', add
label define ch00a_isco4_lbl 6111 `"Field crop and vegetable growers"', add
label define ch00a_isco4_lbl 6112 `"Tree and shrub crop growers"', add
label define ch00a_isco4_lbl 6121 `"Dairy and livestock producers"', add
label define ch00a_isco4_lbl 6129 `"Market-oriented animal producers and related workers not elsewhere classified"', add
label define ch00a_isco4_lbl 6130 `"Market-oriented crop and animal producers"', add
label define ch00a_isco4_lbl 6141 `"Forestry workers and loggers"', add
label define ch00a_isco4_lbl 6152 `"Inland and coastal waters fishery workers"', add
label define ch00a_isco4_lbl 6900 `"Other skilled agricultural and fishery workers"', add
label define ch00a_isco4_lbl 7000 `"Craft and related trades workers, not specified"', add
label define ch00a_isco4_lbl 7112 `"Shot firers and blasters"', add
label define ch00a_isco4_lbl 7113 `"Stone splitters, cutters and carvers"', add
label define ch00a_isco4_lbl 7120 `"Building frame and related trades workers, not specified"', add
label define ch00a_isco4_lbl 7121 `"Builders, traditional materials"', add
label define ch00a_isco4_lbl 7122 `"Bricklayers and stonemasons"', add
label define ch00a_isco4_lbl 7123 `"Concrete placers, concrete finishers and related workers"', add
label define ch00a_isco4_lbl 7124 `"Carpenters and joiners"', add
label define ch00a_isco4_lbl 7129 `"Building frame and related trades workers not elsewhere classified"', add
label define ch00a_isco4_lbl 7130 `"Building finishers and related trades workers, not specified"', add
label define ch00a_isco4_lbl 7131 `"Roofers"', add
label define ch00a_isco4_lbl 7132 `"Floor layers and tile setters"', add
label define ch00a_isco4_lbl 7133 `"Plasterers"', add
label define ch00a_isco4_lbl 7134 `"Insulation workers"', add
label define ch00a_isco4_lbl 7135 `"Glaziers"', add
label define ch00a_isco4_lbl 7136 `"Plumbers and pipe fitters"', add
label define ch00a_isco4_lbl 7137 `"Building and related electricians"', add
label define ch00a_isco4_lbl 7139 `"Construction and related workers, not elsewhere classified"', add
label define ch00a_isco4_lbl 7141 `"Painters and related workers"', add
label define ch00a_isco4_lbl 7143 `"Building structure cleaners"', add
label define ch00a_isco4_lbl 7200 `"Metal, machinery and related trades workers, not specified"', add
label define ch00a_isco4_lbl 7211 `"Metal moulders and core makers"', add
label define ch00a_isco4_lbl 7212 `"Welders and flame cutters"', add
label define ch00a_isco4_lbl 7213 `"Sheet metal workers"', add
label define ch00a_isco4_lbl 7214 `"Structural-metal preparers and erectors"', add
label define ch00a_isco4_lbl 7220 `"Blacksmiths, tool-makers and related trades workers, not specified"', add
label define ch00a_isco4_lbl 7221 `"Blacksmiths, hammer-smiths and forging-press workers"', add
label define ch00a_isco4_lbl 7222 `"Tool-makers and related workers"', add
label define ch00a_isco4_lbl 7223 `"Machine-tool setters and setter-operators"', add
label define ch00a_isco4_lbl 7224 `"Metal wheel-grinders, polishers and tool sharpeners"', add
label define ch00a_isco4_lbl 7230 `"Machinery mechanics and fitters, not specified"', add
label define ch00a_isco4_lbl 7231 `"Motor vehicle mechanics and fitters"', add
label define ch00a_isco4_lbl 7232 `"Aircraft engine mechanics and fitters"', add
label define ch00a_isco4_lbl 7233 `"Agricultural- or industrial-machinery mechanics and fitters"', add
label define ch00a_isco4_lbl 7241 `"Electrical mechanics and fitters"', add
label define ch00a_isco4_lbl 7242 `"Electronics fitters"', add
label define ch00a_isco4_lbl 7244 `"Telegraph and telephone installers and servicers"', add
label define ch00a_isco4_lbl 7245 `"Electrical line installers, repairers and cable jointers"', add
label define ch00a_isco4_lbl 7311 `"Precision-instrument makers and repairers"', add
label define ch00a_isco4_lbl 7312 `"Musical instrument makers and tuners"', add
label define ch00a_isco4_lbl 7313 `"Jewellery and precious-metal workers"', add
label define ch00a_isco4_lbl 7321 `"Abrasive wheel formers, potters and related workers"', add
label define ch00a_isco4_lbl 7322 `"Glass makers, cutters, grinders and finishers"', add
label define ch00a_isco4_lbl 7324 `"Glass, ceramics and related decorative painters"', add
label define ch00a_isco4_lbl 7330 `"Handicraft workers in wood, textile, leather and related materials, not specified"', add
label define ch00a_isco4_lbl 7331 `"Handicraft workers in wood and related materials"', add
label define ch00a_isco4_lbl 7340 `"Printing and related trades workers, not specified"', add
label define ch00a_isco4_lbl 7341 `"Compositors, typesetters and related workers"', add
label define ch00a_isco4_lbl 7343 `"Printing engravers and etchers"', add
label define ch00a_isco4_lbl 7344 `"Photographic and related workers"', add
label define ch00a_isco4_lbl 7345 `"Bookbinders and related workers"', add
label define ch00a_isco4_lbl 7346 `"Silk-screen, block and textile printers"', add
label define ch00a_isco4_lbl 7411 `"Butchers, fishmongers and related food preparers"', add
label define ch00a_isco4_lbl 7412 `"Bakers, pastry-cooks and confectionery makers"', add
label define ch00a_isco4_lbl 7413 `"Dairy-products makers"', add
label define ch00a_isco4_lbl 7415 `"Food and beverage tasters and graders"', add
label define ch00a_isco4_lbl 7420 `"Wood treaters, cabinet-makers and related trades workers, not specified"', add
label define ch00a_isco4_lbl 7422 `"Cabinet makers and related workers"', add
label define ch00a_isco4_lbl 7423 `"Woodworking machine setters and setter-operators"', add
label define ch00a_isco4_lbl 7430 `"Textile, garment and related trades workers, not specified"', add
label define ch00a_isco4_lbl 7433 `"Tailors, dressmakers and hatters"', add
label define ch00a_isco4_lbl 7436 `"Sewers, embroiderers and related workers"', add
label define ch00a_isco4_lbl 7437 `"Upholsterers and related workers"', add
label define ch00a_isco4_lbl 7442 `"Shoe-makers and related workers"', add
label define ch00a_isco4_lbl 7900 `"Other craft and related workers"', add
label define ch00a_isco4_lbl 8000 `"Plant and machine operators and assemblers, not specified"', add
label define ch00a_isco4_lbl 8100 `"Stationary-plant and related operators, not specified"', add
label define ch00a_isco4_lbl 8122 `"Metal melters, casters and rolling-mill operators"', add
label define ch00a_isco4_lbl 8123 `"Metal-heat-treating-plant operators"', add
label define ch00a_isco4_lbl 8140 `"Wood-processing- and papermaking-plant operators, not specified"', add
label define ch00a_isco4_lbl 8150 `"Chemical-processing-plant operators, not specified"', add
label define ch00a_isco4_lbl 8159 `"Chemical-processing-plant operators not elsewhere classified"', add
label define ch00a_isco4_lbl 8160 `"Power-production and related plant operators, not specified"', add
label define ch00a_isco4_lbl 8161 `"Power-production plant operators"', add
label define ch00a_isco4_lbl 8162 `"Steam-engine and boiler operators"', add
label define ch00a_isco4_lbl 8163 `"Incinerator, water-treatment and related plant operators"', add
label define ch00a_isco4_lbl 8210 `"Metal- and mineral-products machine operators"', add
label define ch00a_isco4_lbl 8211 `"Machine-tool operators"', add
label define ch00a_isco4_lbl 8212 `"Cement and other mineral products machine operators"', add
label define ch00a_isco4_lbl 8223 `"Metal finishing-, plating- and coating-machine operators"', add
label define ch00a_isco4_lbl 8229 `"Chemical-products machine operators not elsewhere classified"', add
label define ch00a_isco4_lbl 8231 `"Rubber-products machine operators"', add
label define ch00a_isco4_lbl 8232 `"Plastic-products machine operators"', add
label define ch00a_isco4_lbl 8240 `"Wood-products machine operators"', add
label define ch00a_isco4_lbl 8251 `"Printing-machine operators"', add
label define ch00a_isco4_lbl 8253 `"Paper-products machine operators"', add
label define ch00a_isco4_lbl 8261 `"Fibre-preparing-, spinning- and winding-machine operators"', add
label define ch00a_isco4_lbl 8262 `"Weaving- and knitting-machine operators"', add
label define ch00a_isco4_lbl 8264 `"Bleaching-, dyeing- and cleaning-machine operators"', add
label define ch00a_isco4_lbl 8270 `"Food and related products machine operators, not specified"', add
label define ch00a_isco4_lbl 8273 `"Grain- and spice-milling-machine operators"', add
label define ch00a_isco4_lbl 8275 `"Fruit-, vegetable- and nut-processing-machine operators"', add
label define ch00a_isco4_lbl 8278 `"Brewers, wine and other beverage machine operators"', add
label define ch00a_isco4_lbl 8280 `"Assemblers, not specified"', add
label define ch00a_isco4_lbl 8285 `"Wood and related products assemblers"', add
label define ch00a_isco4_lbl 8311 `"Locomotive-engine drivers"', add
label define ch00a_isco4_lbl 8312 `"Railway brakers, signalers and shunters"', add
label define ch00a_isco4_lbl 8320 `"Motor-vehicle drivers, not specified"', add
label define ch00a_isco4_lbl 8322 `"Car, taxi and van drivers"', add
label define ch00a_isco4_lbl 8323 `"Bus and tram drivers"', add
label define ch00a_isco4_lbl 8324 `"Heavy-truck and lorry drivers"', add
label define ch00a_isco4_lbl 8330 `"Agricultural and other mobile-plant operators, not specified"', add
label define ch00a_isco4_lbl 8332 `"Earth-moving- and related plant operators"', add
label define ch00a_isco4_lbl 8333 `"Crane, hoist and related plant operators"', add
label define ch00a_isco4_lbl 8340 `"Ships' deck crews and related workers"', add
label define ch00a_isco4_lbl 8900 `"Other plant and machine operators"', add
label define ch00a_isco4_lbl 9000 `"Elementary occupations, not specified"', add
label define ch00a_isco4_lbl 9130 `"Domestic and related helpers, cleaners and launderers, not specified"', add
label define ch00a_isco4_lbl 9132 `"Helpers and cleaners in offices, hotels and other establishments"', add
label define ch00a_isco4_lbl 9133 `"Hand-launderers and pressers"', add
label define ch00a_isco4_lbl 9140 `"Building caretakers, window and related cleaners, not specified"', add
label define ch00a_isco4_lbl 9141 `"Building caretakers"', add
label define ch00a_isco4_lbl 9142 `"Vehicle, window and related cleaners"', add
label define ch00a_isco4_lbl 9151 `"Messengers, package and luggage porters and deliverers"', add
label define ch00a_isco4_lbl 9152 `"Doorkeepers, watchpersons and related workers"', add
label define ch00a_isco4_lbl 9153 `"Vending-machine money collectors, meter readers and related workers"', add
label define ch00a_isco4_lbl 9161 `"Garbage collectors"', add
label define ch00a_isco4_lbl 9162 `"Sweepers and related labourers"', add
label define ch00a_isco4_lbl 9211 `"Farm-hands and labourers"', add
label define ch00a_isco4_lbl 9310 `"Mining and construction labourers, not specified"', add
label define ch00a_isco4_lbl 9312 `"Construction and maintenance labourers: roads, dams and similar constructions"', add
label define ch00a_isco4_lbl 9313 `"Building construction labourers"', add
label define ch00a_isco4_lbl 9320 `"Manufacturing labourers"', add
label define ch00a_isco4_lbl 9900 `"Other elementary occupations"', add
label define ch00a_isco4_lbl 9950 `"Other occupation, response suppressed"', add
label define ch00a_isco4_lbl 9998 `"Unknown"', add
label define ch00a_isco4_lbl 9999 `"NIU (not in  universe)"', add
label values ch00a_isco4 ch00a_isco4_lbl

label define ch00a_classwk_lbl 1 `"Self employed"'
label define ch00a_classwk_lbl 2 `"Employee in own company"', add
label define ch00a_classwk_lbl 3 `"Co-working family member"', add
label define ch00a_classwk_lbl 4 `"Apprentice"', add
label define ch00a_classwk_lbl 5 `"Employed in company management"', add
label define ch00a_classwk_lbl 6 `"Employed not in company management"', add
label define ch00a_classwk_lbl 8 `"Unknown"', add
label define ch00a_classwk_lbl 9 `"NIU (not in  universe)"', add
label values ch00a_classwk ch00a_classwk_lbl

label define ch00a_hrswork_lbl 1 `"Part time with 1-5 hours per week"'
label define ch00a_hrswork_lbl 2 `"Part time with 6-24 hours per week"', add
label define ch00a_hrswork_lbl 3 `"Part time with 25+ hours per week"', add
label define ch00a_hrswork_lbl 4 `"Part time, no hours stated"', add
label define ch00a_hrswork_lbl 5 `"Full time"', add
label define ch00a_hrswork_lbl 6 `"Employed, not stated"', add
label define ch00a_hrswork_lbl 9 `"NIU (not in  universe)"', add
label values ch00a_hrswork ch00a_hrswork_lbl

label define ch00a_ind_lbl 010 `"Agriculture"'
label define ch00a_ind_lbl 020 `"Horticulture"', add
label define ch00a_ind_lbl 030 `"Forestry"', add
label define ch00a_ind_lbl 040 `"Fishing"', add
label define ch00a_ind_lbl 110 `"Energy and water supply"', add
label define ch00a_ind_lbl 211 `"Meat industry 
"', add
label define ch00a_ind_lbl 212 `"Dairy industry"', add
label define ch00a_ind_lbl 213 `"Flour/semolina/groats mills"', add
label define ch00a_ind_lbl 214 `"Canned goods, fruit and vegetable juices"', add
label define ch00a_ind_lbl 216 `"Manufacture of sugar, candy, chocolate, bread, pastry and other food products"', add
label define ch00a_ind_lbl 219 `"Animal feed"', add
label define ch00a_ind_lbl 220 `"Beverage industry"', add
label define ch00a_ind_lbl 230 `"Tobacco industry"', add
label define ch00a_ind_lbl 241 `"Spinning, weaving"', add
label define ch00a_ind_lbl 245 `"Machine embroidery"', add
label define ch00a_ind_lbl 246 `"Textile finishing"', add
label define ch00a_ind_lbl 247 `"Other textile industries"', add
label define ch00a_ind_lbl 251 `"Production of clothing and underwear"', add
label define ch00a_ind_lbl 255 `"Production of hats, fur garments and pelts"', add
label define ch00a_ind_lbl 261 `"Wood and wood furniture industry
"', add
label define ch00a_ind_lbl 262 `"Wood, cork, wicker and  rattan articles"', add
label define ch00a_ind_lbl 271 `"Manufacture of pulp, cellulose, paper and cardboard"', add
label define ch00a_ind_lbl 272 `"Paper and cardboard processing"', add
label define ch00a_ind_lbl 280 `"Printing and editing industries
"', add
label define ch00a_ind_lbl 291 `"Manufacture of leather articles"', add
label define ch00a_ind_lbl 293 `"Footwear industry"', add
label define ch00a_ind_lbl 311 `"Manufacture of primary and finished chemical products"', add
label define ch00a_ind_lbl 314 `"Oil refining"', add
label define ch00a_ind_lbl 321 `"Manufacture of plastic articles"', add
label define ch00a_ind_lbl 322 `"Manufacture of rubber articles"', add
label define ch00a_ind_lbl 331 `"Non-metal products industry (note: includes salt, petroleum, and natural gas extraction)"', add
label define ch00a_ind_lbl 333 `"Manufacture of cement, lime, [gypsum] as well as products made with cement and concrete"', add
label define ch00a_ind_lbl 335 `"Manufacture of ceramic products"', add
label define ch00a_ind_lbl 336 `"Glass industry"', add
label define ch00a_ind_lbl 341 `"Metal manufacturing and processing"', add
label define ch00a_ind_lbl 344 `"Secondary processing, [metal curing and plating]
"', add
label define ch00a_ind_lbl 345 `"Metal buildings, manufacture of metal items, mechanics' workshops 
"', add
label define ch00a_ind_lbl 350 `"Machine and vehicle construction, electrical, electronic and optical construction 
"', add
label define ch00a_ind_lbl 371 `"Clock making
"', add
label define ch00a_ind_lbl 372 `"Jewelry, engraving and minting"', add
label define ch00a_ind_lbl 381 `"Manufacture of musical instruments"', add
label define ch00a_ind_lbl 382 `"Manufacture of games, toys and sports items"', add
label define ch00a_ind_lbl 383 `"Photo and motion picture darkroom
"', add
label define ch00a_ind_lbl 384 `"Other processing of various materials/equipment
"', add
label define ch00a_ind_lbl 410 `"Civil engineering, building and general construction"', add
label define ch00a_ind_lbl 421 `"Plumbing, [tin plating], ventilation; air conditioning 
"', add
label define ch00a_ind_lbl 422 `"Other interior improvements
"', add
label define ch00a_ind_lbl 423 `"Electrical wiring"', add
label define ch00a_ind_lbl 511 `"Various wholesale and retail commercial products
"', add
label define ch00a_ind_lbl 512 `"Food, beverage and tobacco products in wholesale and retail businesses 
"', add
label define ch00a_ind_lbl 513 `"Drug and pharmaceutical products, chemical wholesale and retail industrial products 
"', add
label define ch00a_ind_lbl 514 `"Raw materials in the textile industry, textiles and leather in wholesale and retail businesses"', add
label define ch00a_ind_lbl 516 `"Furniture, bedding, rugs/carpets"', add
label define ch00a_ind_lbl 517 `"Paper, papermaking, books, magazines, office supplies"', add
label define ch00a_ind_lbl 518 `"Precision instruments, optical, radio, TV, musical instruments, clock making in wholesale and retail businesses"', add
label define ch00a_ind_lbl 519 `"Machines, vehicles and technical equipment in wholesale and retail businesses"', add
label define ch00a_ind_lbl 570 `"Restaurant and lodging"', add
label define ch00a_ind_lbl 580 `"Repair activity
"', add
label define ch00a_ind_lbl 610 `"Railroads"', add
label define ch00a_ind_lbl 630 `"Shipping"', add
label define ch00a_ind_lbl 640 `"Air transport"', add
label define ch00a_ind_lbl 651 `"Passenger and merchandise road transportation, pipeline transportation, transportation support activity
1970:
including vehicle"', add
label define ch00a_ind_lbl 652 `"Other brokers/salespeople in transportation including travel agencies"', add
label define ch00a_ind_lbl 660 `"Communication activity"', add
label define ch00a_ind_lbl 710 `"Banking and finance activity
"', add
label define ch00a_ind_lbl 720 `"Insurance"', add
label define ch00a_ind_lbl 730 `"Real estate offices"', add
label define ch00a_ind_lbl 751 `"[Consulting and planning offices], commercial, legal and computer services, rental, leasing
"', add
label define ch00a_ind_lbl 752 `"[Trust company], certified public accountant"', add
label define ch00a_ind_lbl 753 `"Law firm, notary office [not a notary public, but someone with legal jurisdiction to draft wills, contracts, etc.]"', add
label define ch00a_ind_lbl 761 `"Commercial laundry, dry cleaning"', add
label define ch00a_ind_lbl 762 `"Hair and beauty salon"', add
label define ch00a_ind_lbl 763 `"Cleaning service, funeral home, animal boarding, other personal services
"', add
label define ch00a_ind_lbl 810 `"Teaching (private and public)"', add
label define ch00a_ind_lbl 820 `"Research and development"', add
label define ch00a_ind_lbl 831 `"Doctor and veterinary offices, paramedical-medical services, other health service institutions
"', add
label define ch00a_ind_lbl 833 `"Hospitals, clinics, care facilities"', add
label define ch00a_ind_lbl 840 `"Public roads and waterway services, excluding other sanitary services"', add
label define ch00a_ind_lbl 851 `"Homes, [hostels/shelters/halfway homes/retirement homes]"', add
label define ch00a_ind_lbl 855 `"Organization of social work"', add
label define ch00a_ind_lbl 861 `"Religious and philosophical organizations"', add
label define ch00a_ind_lbl 862 `"Convent, congregation"', add
label define ch00a_ind_lbl 870 `"Service to the community, social advocacy"', add
label define ch00a_ind_lbl 881 `"Literary activity, activity related to language, plastic arts, sports, leisure and other cultural institutions
"', add
label define ch00a_ind_lbl 882 `"Cinema, theater, dance and music"', add
label define ch00a_ind_lbl 886 `"Films, radio and television  studios"', add
label define ch00a_ind_lbl 890 `"Domestic services"', add
label define ch00a_ind_lbl 911 `"Public administration
 including institutions enforcing prison sentences"', add
label define ch00a_ind_lbl 912 `"Institutions enforcing prison sentences
"', add
label define ch00a_ind_lbl 998 `"Unknown"', add
label define ch00a_ind_lbl 999 `"NIU (not in  universe)"', add
label values ch00a_ind ch00a_ind_lbl

label define ch00a_bustype_lbl 0 `"Unknown, apprentices"'
label define ch00a_bustype_lbl 1 `"Private enterprise"', add
label define ch00a_bustype_lbl 2 `"Federal government"', add
label define ch00a_bustype_lbl 3 `"Cantonal government"', add
label define ch00a_bustype_lbl 4 `"Communities"', add
label define ch00a_bustype_lbl 5 `"International bodies: embassies, consulates, foreign companies such as railroad and airlines"', add
label define ch00a_bustype_lbl 9 `"NIU (not in  universe)"', add
label values ch00a_bustype ch00a_bustype_lbl

label define ch00a_socecon_lbl 010 `"Directors/CEOs"'
label define ch00a_socecon_lbl 020 `"Liberal professions"', add
label define ch00a_socecon_lbl 031 `"Farm executives"', add
label define ch00a_socecon_lbl 032 `"Artisans"', add
label define ch00a_socecon_lbl 033 `"Self-employed in business and communication services"', add
label define ch00a_socecon_lbl 034 `"Self-employed in social and personal services"', add
label define ch00a_socecon_lbl 041 `"Engineers and technical managers in agriculture"', add
label define ch00a_socecon_lbl 042 `"Engineers and technical managers in production and construction"', add
label define ch00a_socecon_lbl 043 `"Executives in business and communication services"', add
label define ch00a_socecon_lbl 044 `"Executives in social and personal services"', add
label define ch00a_socecon_lbl 051 `"[Technical brokers/salespeople in agriculture]"', add
label define ch00a_socecon_lbl 052 `"[Technical brokers/salespeople in production and construction]"', add
label define ch00a_socecon_lbl 053 `"Brokers/salespeople in business and communication services"', add
label define ch00a_socecon_lbl 054 `"Brokers/salespeople in social and personal services"', add
label define ch00a_socecon_lbl 062 `"Technical production and construction white collar employees"', add
label define ch00a_socecon_lbl 063 `"White collar employees in business and communication services"', add
label define ch00a_socecon_lbl 064 `"White collar employees in social and personal services"', add
label define ch00a_socecon_lbl 071 `"Agricultural workers"', add
label define ch00a_socecon_lbl 072 `"Production and construction workers"', add
label define ch00a_socecon_lbl 073 `"Workers in business and communication services"', add
label define ch00a_socecon_lbl 074 `"Workers in social and personal services"', add
label define ch00a_socecon_lbl 081 `"Unskilled agricultural labor"', add
label define ch00a_socecon_lbl 082 `"Unskilled production and construction labor"', add
label define ch00a_socecon_lbl 083 `"Unskilled labor in business and communication services"', add
label define ch00a_socecon_lbl 084 `"Unskilled labor in social and personal services"', add
label define ch00a_socecon_lbl 090 `"Unattributable employed working persons"', add
label define ch00a_socecon_lbl 200 `"Unemployed, laid off"', add
label define ch00a_socecon_lbl 301 `"Non-active in training"', add
label define ch00a_socecon_lbl 303 `"Non-active doing housework"', add
label define ch00a_socecon_lbl 304 `"Non-active retired and living off investment or retirement income"', add
label define ch00a_socecon_lbl 305 `"Other non-active"', add
label define ch00a_socecon_lbl 999 `"NIU (not in  universe)"', add
label values ch00a_socecon ch00a_socecon_lbl

label define ch00a_worktime_lbl 1 `"No commuting distance"'
label define ch00a_worktime_lbl 2 `"Up to 15 minutes"', add
label define ch00a_worktime_lbl 3 `"16-30 minutes"', add
label define ch00a_worktime_lbl 4 `"31-60 minutes"', add
label define ch00a_worktime_lbl 5 `"More than 1 hour"', add
label define ch00a_worktime_lbl 8 `"Unknown"', add
label define ch00a_worktime_lbl 9 `"NIU (not in  universe)"', add
label values ch00a_worktime ch00a_worktime_lbl

label define ch00a_wrktrips_lbl 0 `"Not stated, works at home, works on the road"'
label define ch00a_wrktrips_lbl 1 `"There and back once a day"', add
label define ch00a_wrktrips_lbl 2 `"There and back twice or more per day"', add
label define ch00a_wrktrips_lbl 9 `"NIU (not in  universe)"', add
label values ch00a_wrktrips ch00a_wrktrips_lbl

label define ch00a_wtravmod_lbl 01 `"No commute"'
label define ch00a_wtravmod_lbl 02 `"Solely on foot"', add
label define ch00a_wtravmod_lbl 10 `"Train"', add
label define ch00a_wtravmod_lbl 13 `"Train+street car, bus, post bus"', add
label define ch00a_wtravmod_lbl 15 `"Train+car (driver, passenger)"', add
label define ch00a_wtravmod_lbl 18 `"Train+bicycle, moped"', add
label define ch00a_wtravmod_lbl 30 `"Street car, bus, post bus"', add
label define ch00a_wtravmod_lbl 35 `"Street car, bus, post bus+car (driver, passenger)"', add
label define ch00a_wtravmod_lbl 38 `"Street car, bus, post bus+bicycle, moped"', add
label define ch00a_wtravmod_lbl 40 `"Other public transportation"', add
label define ch00a_wtravmod_lbl 50 `"Company bus"', add
label define ch00a_wtravmod_lbl 60 `"Car (driver, passenger)"', add
label define ch00a_wtravmod_lbl 70 `"Motorcycle"', add
label define ch00a_wtravmod_lbl 90 `"Bicycle, moped"', add
label define ch00a_wtravmod_lbl 98 `"Unknown"', add
label define ch00a_wtravmod_lbl 99 `"NIU (not in  universe)"', add
label values ch00a_wtravmod ch00a_wtravmod_lbl

label define ch00a_schltime_lbl 1 `"No commuting distance"'
label define ch00a_schltime_lbl 2 `"Up to 15 minutes"', add
label define ch00a_schltime_lbl 3 `"16-30 minutes"', add
label define ch00a_schltime_lbl 4 `"31-60 minutes"', add
label define ch00a_schltime_lbl 5 `"More than 1 hour"', add
label define ch00a_schltime_lbl 8 `"Unknown"', add
label define ch00a_schltime_lbl 9 `"NIU (not in  universe)"', add
label values ch00a_schltime ch00a_schltime_lbl

label define ch00a_schtrips_lbl 0 `"Not stated, no commute to school"'
label define ch00a_schtrips_lbl 1 `"There and back once a day"', add
label define ch00a_schtrips_lbl 2 `"There and back twice or more per day"', add
label define ch00a_schtrips_lbl 9 `"NIU (not in  universe)"', add
label values ch00a_schtrips ch00a_schtrips_lbl

label define ch00a_stravmod_lbl 00 `"Not stated, only for persons in school"'
label define ch00a_stravmod_lbl 01 `"No commute"', add
label define ch00a_stravmod_lbl 02 `"Solely on foot"', add
label define ch00a_stravmod_lbl 10 `"Train"', add
label define ch00a_stravmod_lbl 13 `"Train+street car, bus, post bus"', add
label define ch00a_stravmod_lbl 15 `"Train+car (driver, passenger)"', add
label define ch00a_stravmod_lbl 18 `"Train+bicycle, moped"', add
label define ch00a_stravmod_lbl 30 `"Street car, bus, post bus"', add
label define ch00a_stravmod_lbl 35 `"Street car, bus, post bus+car (driver, passenger)"', add
label define ch00a_stravmod_lbl 38 `"Street car, bus, post bus+bicycle, moped"', add
label define ch00a_stravmod_lbl 40 `"Other public transportation"', add
label define ch00a_stravmod_lbl 50 `"School bus"', add
label define ch00a_stravmod_lbl 60 `"Car (driver, passenger)"', add
label define ch00a_stravmod_lbl 70 `"Motorcycle"', add
label define ch00a_stravmod_lbl 90 `"Bicycle, moped"', add
label define ch00a_stravmod_lbl 99 `"NIU (not in  universe)"', add
label values ch00a_stravmod ch00a_stravmod_lbl

label define ch00a_edatt1_lbl 1 `"No school, no training"'
label define ch00a_edatt1_lbl 2 `"Mandatory schooling, preparatory schools"', add
label define ch00a_edatt1_lbl 3 `"Trade school, apprenticeship"', add
label define ch00a_edatt1_lbl 4 `"Teacher training school"', add
label define ch00a_edatt1_lbl 5 `"Higher professional school"', add
label define ch00a_edatt1_lbl 6 `"University"', add
label define ch00a_edatt1_lbl 7 `"Not stated"', add
label define ch00a_edatt1_lbl 8 `"Censored, presently in school"', add
label define ch00a_edatt1_lbl 9 `"NIU (not in universe)"', add
label values ch00a_edatt1 ch00a_edatt1_lbl

label define ch00a_edatt2_lbl 01 `"No school, no training"'
label define ch00a_edatt2_lbl 02 `"Compulsory education (primary, junior, secondary/high school), preparatory senior-secondary school, special hold"', add
label define ch00a_edatt2_lbl 03 `"Apprenticeship, full-time vocational college"', add
label define ch00a_edatt2_lbl 04 `"Teacher-training college, music, gymnastics, and sports"', add
label define ch00a_edatt2_lbl 05 `"Higher college of technology, advanced technical and professional training"', add
label define ch00a_edatt2_lbl 06 `"University (including specialized university, institute of technology, post-graduate degree)"', add
label define ch00a_edatt2_lbl 08 `"Presently in school"', add
label define ch00a_edatt2_lbl 98 `"Unknown"', add
label define ch00a_edatt2_lbl 99 `"NIU (not in  universe)"', add
label values ch00a_edatt2 ch00a_edatt2_lbl

label define ch00a_yrmarst_lbl 1933 `"1933 or earlier"'
label define ch00a_yrmarst_lbl 1934 `"1934"', add
label define ch00a_yrmarst_lbl 1935 `"1935"', add
label define ch00a_yrmarst_lbl 1936 `"1936"', add
label define ch00a_yrmarst_lbl 1937 `"1937"', add
label define ch00a_yrmarst_lbl 1938 `"1938"', add
label define ch00a_yrmarst_lbl 1939 `"1939"', add
label define ch00a_yrmarst_lbl 1940 `"1940"', add
label define ch00a_yrmarst_lbl 1941 `"1941"', add
label define ch00a_yrmarst_lbl 1942 `"1942"', add
label define ch00a_yrmarst_lbl 1943 `"1943"', add
label define ch00a_yrmarst_lbl 1944 `"1944"', add
label define ch00a_yrmarst_lbl 1945 `"1945"', add
label define ch00a_yrmarst_lbl 1946 `"1946"', add
label define ch00a_yrmarst_lbl 1947 `"1947"', add
label define ch00a_yrmarst_lbl 1948 `"1948"', add
label define ch00a_yrmarst_lbl 1949 `"1949"', add
label define ch00a_yrmarst_lbl 1950 `"1950"', add
label define ch00a_yrmarst_lbl 1951 `"1951"', add
label define ch00a_yrmarst_lbl 1952 `"1952"', add
label define ch00a_yrmarst_lbl 1953 `"1953"', add
label define ch00a_yrmarst_lbl 1954 `"1954"', add
label define ch00a_yrmarst_lbl 1955 `"1955"', add
label define ch00a_yrmarst_lbl 1956 `"1956"', add
label define ch00a_yrmarst_lbl 1957 `"1957"', add
label define ch00a_yrmarst_lbl 1958 `"1958"', add
label define ch00a_yrmarst_lbl 1959 `"1959"', add
label define ch00a_yrmarst_lbl 1960 `"1960"', add
label define ch00a_yrmarst_lbl 1961 `"1961"', add
label define ch00a_yrmarst_lbl 1962 `"1962"', add
label define ch00a_yrmarst_lbl 1963 `"1963"', add
label define ch00a_yrmarst_lbl 1964 `"1964"', add
label define ch00a_yrmarst_lbl 1965 `"1965"', add
label define ch00a_yrmarst_lbl 1966 `"1966"', add
label define ch00a_yrmarst_lbl 1967 `"1967"', add
label define ch00a_yrmarst_lbl 1968 `"1968"', add
label define ch00a_yrmarst_lbl 1969 `"1969"', add
label define ch00a_yrmarst_lbl 1970 `"1970"', add
label define ch00a_yrmarst_lbl 1971 `"1971"', add
label define ch00a_yrmarst_lbl 1972 `"1972"', add
label define ch00a_yrmarst_lbl 1973 `"1973"', add
label define ch00a_yrmarst_lbl 1974 `"1974"', add
label define ch00a_yrmarst_lbl 1975 `"1975"', add
label define ch00a_yrmarst_lbl 1976 `"1976"', add
label define ch00a_yrmarst_lbl 1977 `"1977"', add
label define ch00a_yrmarst_lbl 1978 `"1978"', add
label define ch00a_yrmarst_lbl 1979 `"1979"', add
label define ch00a_yrmarst_lbl 1980 `"1980"', add
label define ch00a_yrmarst_lbl 1981 `"1981"', add
label define ch00a_yrmarst_lbl 1982 `"1982"', add
label define ch00a_yrmarst_lbl 1983 `"1983"', add
label define ch00a_yrmarst_lbl 1984 `"1984"', add
label define ch00a_yrmarst_lbl 1985 `"1985"', add
label define ch00a_yrmarst_lbl 1986 `"1986"', add
label define ch00a_yrmarst_lbl 1987 `"1987"', add
label define ch00a_yrmarst_lbl 1988 `"1988"', add
label define ch00a_yrmarst_lbl 1989 `"1989"', add
label define ch00a_yrmarst_lbl 1990 `"1990"', add
label define ch00a_yrmarst_lbl 1991 `"1991"', add
label define ch00a_yrmarst_lbl 1992 `"1992"', add
label define ch00a_yrmarst_lbl 1993 `"1993"', add
label define ch00a_yrmarst_lbl 1994 `"1994"', add
label define ch00a_yrmarst_lbl 1995 `"1995"', add
label define ch00a_yrmarst_lbl 1996 `"1996"', add
label define ch00a_yrmarst_lbl 1997 `"1997"', add
label define ch00a_yrmarst_lbl 1998 `"1998"', add
label define ch00a_yrmarst_lbl 1999 `"1999"', add
label define ch00a_yrmarst_lbl 2000 `"2000"', add
label define ch00a_yrmarst_lbl 9998 `"Unknown"', add
label define ch00a_yrmarst_lbl 9999 `"NIU (not in  universe)"', add
label values ch00a_yrmarst ch00a_yrmarst_lbl

label define ch00a_yrcitiz_lbl 1927 `"1927 or earlier"'
label define ch00a_yrcitiz_lbl 1928 `"1928"', add
label define ch00a_yrcitiz_lbl 1929 `"1929"', add
label define ch00a_yrcitiz_lbl 1930 `"1930"', add
label define ch00a_yrcitiz_lbl 1931 `"1931"', add
label define ch00a_yrcitiz_lbl 1932 `"1932"', add
label define ch00a_yrcitiz_lbl 1933 `"1933"', add
label define ch00a_yrcitiz_lbl 1934 `"1934"', add
label define ch00a_yrcitiz_lbl 1935 `"1935"', add
label define ch00a_yrcitiz_lbl 1936 `"1936"', add
label define ch00a_yrcitiz_lbl 1937 `"1937"', add
label define ch00a_yrcitiz_lbl 1938 `"1938"', add
label define ch00a_yrcitiz_lbl 1939 `"1939"', add
label define ch00a_yrcitiz_lbl 1940 `"1940"', add
label define ch00a_yrcitiz_lbl 1941 `"1941"', add
label define ch00a_yrcitiz_lbl 1942 `"1942"', add
label define ch00a_yrcitiz_lbl 1943 `"1943"', add
label define ch00a_yrcitiz_lbl 1944 `"1944"', add
label define ch00a_yrcitiz_lbl 1945 `"1945"', add
label define ch00a_yrcitiz_lbl 1946 `"1946"', add
label define ch00a_yrcitiz_lbl 1947 `"1947"', add
label define ch00a_yrcitiz_lbl 1948 `"1948"', add
label define ch00a_yrcitiz_lbl 1949 `"1949"', add
label define ch00a_yrcitiz_lbl 1950 `"1950"', add
label define ch00a_yrcitiz_lbl 1951 `"1951"', add
label define ch00a_yrcitiz_lbl 1952 `"1952"', add
label define ch00a_yrcitiz_lbl 1953 `"1953"', add
label define ch00a_yrcitiz_lbl 1954 `"1954"', add
label define ch00a_yrcitiz_lbl 1955 `"1955"', add
label define ch00a_yrcitiz_lbl 1956 `"1956"', add
label define ch00a_yrcitiz_lbl 1957 `"1957"', add
label define ch00a_yrcitiz_lbl 1958 `"1958"', add
label define ch00a_yrcitiz_lbl 1959 `"1959"', add
label define ch00a_yrcitiz_lbl 1960 `"1960"', add
label define ch00a_yrcitiz_lbl 1961 `"1961"', add
label define ch00a_yrcitiz_lbl 1962 `"1962"', add
label define ch00a_yrcitiz_lbl 1963 `"1963"', add
label define ch00a_yrcitiz_lbl 1964 `"1964"', add
label define ch00a_yrcitiz_lbl 1965 `"1965"', add
label define ch00a_yrcitiz_lbl 1966 `"1966"', add
label define ch00a_yrcitiz_lbl 1967 `"1967"', add
label define ch00a_yrcitiz_lbl 1968 `"1968"', add
label define ch00a_yrcitiz_lbl 1969 `"1969"', add
label define ch00a_yrcitiz_lbl 1970 `"1970"', add
label define ch00a_yrcitiz_lbl 1971 `"1971"', add
label define ch00a_yrcitiz_lbl 1972 `"1972"', add
label define ch00a_yrcitiz_lbl 1973 `"1973"', add
label define ch00a_yrcitiz_lbl 1974 `"1974"', add
label define ch00a_yrcitiz_lbl 1975 `"1975"', add
label define ch00a_yrcitiz_lbl 1976 `"1976"', add
label define ch00a_yrcitiz_lbl 1977 `"1977"', add
label define ch00a_yrcitiz_lbl 1978 `"1978"', add
label define ch00a_yrcitiz_lbl 1979 `"1979"', add
label define ch00a_yrcitiz_lbl 1980 `"1980"', add
label define ch00a_yrcitiz_lbl 1981 `"1981"', add
label define ch00a_yrcitiz_lbl 1982 `"1982"', add
label define ch00a_yrcitiz_lbl 1983 `"1983"', add
label define ch00a_yrcitiz_lbl 1984 `"1984"', add
label define ch00a_yrcitiz_lbl 1985 `"1985"', add
label define ch00a_yrcitiz_lbl 1986 `"1986"', add
label define ch00a_yrcitiz_lbl 1987 `"1987"', add
label define ch00a_yrcitiz_lbl 1988 `"1988"', add
label define ch00a_yrcitiz_lbl 1989 `"1989"', add
label define ch00a_yrcitiz_lbl 1990 `"1990"', add
label define ch00a_yrcitiz_lbl 1991 `"1991"', add
label define ch00a_yrcitiz_lbl 1992 `"1992"', add
label define ch00a_yrcitiz_lbl 1993 `"1993"', add
label define ch00a_yrcitiz_lbl 1994 `"1994"', add
label define ch00a_yrcitiz_lbl 1995 `"1995"', add
label define ch00a_yrcitiz_lbl 1996 `"1996"', add
label define ch00a_yrcitiz_lbl 1997 `"1997"', add
label define ch00a_yrcitiz_lbl 1998 `"1998"', add
label define ch00a_yrcitiz_lbl 1999 `"1999"', add
label define ch00a_yrcitiz_lbl 2000 `"2000"', add
label define ch00a_yrcitiz_lbl 9998 `"Unknown"', add
label define ch00a_yrcitiz_lbl 9999 `"NIU (not in  universe)"', add
label values ch00a_yrcitiz ch00a_yrcitiz_lbl

label define ch00a_nation2_lbl 8204 `"Belgium"'
label define ch00a_nation2_lbl 8205 `"Bulgaria"', add
label define ch00a_nation2_lbl 8206 `"Denmark"', add
label define ch00a_nation2_lbl 8207 `"Germany"', add
label define ch00a_nation2_lbl 8211 `"Finland"', add
label define ch00a_nation2_lbl 8212 `"France"', add
label define ch00a_nation2_lbl 8214 `"Greece"', add
label define ch00a_nation2_lbl 8215 `"United Kingdom"', add
label define ch00a_nation2_lbl 8216 `"Ireland"', add
label define ch00a_nation2_lbl 8218 `"Italy"', add
label define ch00a_nation2_lbl 8222 `"Liechtenstein"', add
label define ch00a_nation2_lbl 8223 `"Luxembourg"', add
label define ch00a_nation2_lbl 8227 `"Netherlands"', add
label define ch00a_nation2_lbl 8228 `"Norway"', add
label define ch00a_nation2_lbl 8229 `"Austria"', add
label define ch00a_nation2_lbl 8230 `"Poland"', add
label define ch00a_nation2_lbl 8231 `"Portugal"', add
label define ch00a_nation2_lbl 8232 `"Romania"', add
label define ch00a_nation2_lbl 8234 `"Sweden"', add
label define ch00a_nation2_lbl 8236 `"Spain"', add
label define ch00a_nation2_lbl 8239 `"Turkey"', add
label define ch00a_nation2_lbl 8240 `"Hungary"', add
label define ch00a_nation2_lbl 8243 `"Slovakia"', add
label define ch00a_nation2_lbl 8244 `"Czech Republic"', add
label define ch00a_nation2_lbl 8249 `"Yugoslavia"', add
label define ch00a_nation2_lbl 8250 `"Croatia"', add
label define ch00a_nation2_lbl 8251 `"Slovenia"', add
label define ch00a_nation2_lbl 8252 `"Bosnia Herzegovina"', add
label define ch00a_nation2_lbl 8255 `"Macedonia"', add
label define ch00a_nation2_lbl 8264 `"Russia"', add
label define ch00a_nation2_lbl 8299 `"Other Europe"', add
label define ch00a_nation2_lbl 8304 `"Algeria"', add
label define ch00a_nation2_lbl 8305 `"Angola"', add
label define ch00a_nation2_lbl 8313 `"Ghana"', add
label define ch00a_nation2_lbl 8327 `"Madagascar"', add
label define ch00a_nation2_lbl 8331 `"Morocco"', add
label define ch00a_nation2_lbl 8333 `"Mauritius"', add
label define ch00a_nation2_lbl 8336 `"Nigeria"', add
label define ch00a_nation2_lbl 8349 `"South Africa"', add
label define ch00a_nation2_lbl 8350 `"Sudan"', add
label define ch00a_nation2_lbl 8357 `"Tunisia"', add
label define ch00a_nation2_lbl 8359 `"Egypt"', add
label define ch00a_nation2_lbl 8399 `"Other Africa"', add
label define ch00a_nation2_lbl 8401 `"Argentina"', add
label define ch00a_nation2_lbl 8405 `"Bolivia"', add
label define ch00a_nation2_lbl 8406 `"Brazil"', add
label define ch00a_nation2_lbl 8407 `"Chile"', add
label define ch00a_nation2_lbl 8409 `"Dominican Republic"', add
label define ch00a_nation2_lbl 8410 `"Ecuador"', add
label define ch00a_nation2_lbl 8415 `"Guatemala"', add
label define ch00a_nation2_lbl 8423 `"Canada"', add
label define ch00a_nation2_lbl 8424 `"Colombia"', add
label define ch00a_nation2_lbl 8427 `"Mexico"', add
label define ch00a_nation2_lbl 8432 `"Peru"', add
label define ch00a_nation2_lbl 8437 `"Uruguay"', add
label define ch00a_nation2_lbl 8438 `"Venezuela"', add
label define ch00a_nation2_lbl 8439 `"United States"', add
label define ch00a_nation2_lbl 8499 `"Other America"', add
label define ch00a_nation2_lbl 8506 `"Sri Lanka"', add
label define ch00a_nation2_lbl 8508 `"China"', add
label define ch00a_nation2_lbl 8513 `"Iran"', add
label define ch00a_nation2_lbl 8514 `"Israel"', add
label define ch00a_nation2_lbl 8515 `"Japan"', add
label define ch00a_nation2_lbl 8517 `"Jordan"', add
label define ch00a_nation2_lbl 8523 `"Lebanon"', add
label define ch00a_nation2_lbl 8525 `"Malaysia"', add
label define ch00a_nation2_lbl 8533 `"Pakistan"', add
label define ch00a_nation2_lbl 8534 `"Philippines"', add
label define ch00a_nation2_lbl 8541 `"Syria"', add
label define ch00a_nation2_lbl 8542 `"Thailand"', add
label define ch00a_nation2_lbl 8545 `"Vietnam"', add
label define ch00a_nation2_lbl 8601 `"Australia"', add
label define ch00a_nation2_lbl 8607 `"New Zealand"', add
label define ch00a_nation2_lbl 8699 `"Other Asia and Pacific"', add
label define ch00a_nation2_lbl 9998 `"Unknown"', add
label define ch00a_nation2_lbl 9999 `"NIU (not in  universe)"', add
label values ch00a_nation2 ch00a_nation2_lbl

label define ch00a_respermt_lbl 0 `"NIU (not in  universe)"'
label define ch00a_respermt_lbl 1 `"Settlement permit (permit C)"', add
label define ch00a_respermt_lbl 2 `"Annual permit (permit B)"', add
label define ch00a_respermt_lbl 3 `"Seasonal permit (permit A)"', add
label define ch00a_respermt_lbl 4 `"Asylum seeker (permit N)"', add
label define ch00a_respermt_lbl 6 `"Temporarily admitted foreigner (permit F)"', add
label define ch00a_respermt_lbl 7 `"Short stay permit (permit L)"', add
label define ch00a_respermt_lbl 8 `"EDA permit"', add
label define ch00a_respermt_lbl 9 `"Other status"', add
label values ch00a_respermt ch00a_respermt_lbl

label define ch00a_parents_lbl 1 `"No"'
label define ch00a_parents_lbl 2 `"Yes"', add
label define ch00a_parents_lbl 8 `"Unknown"', add
label define ch00a_parents_lbl 9 `"NIU (not in  universe)"', add
label values ch00a_parents ch00a_parents_lbl

label define ch00a_nchild_lbl 00 `"No children"'
label define ch00a_nchild_lbl 01 `"1"', add
label define ch00a_nchild_lbl 02 `"2"', add
label define ch00a_nchild_lbl 03 `"3"', add
label define ch00a_nchild_lbl 04 `"4"', add
label define ch00a_nchild_lbl 05 `"5"', add
label define ch00a_nchild_lbl 06 `"6"', add
label define ch00a_nchild_lbl 07 `"7"', add
label define ch00a_nchild_lbl 08 `"8"', add
label define ch00a_nchild_lbl 09 `"9"', add
label define ch00a_nchild_lbl 10 `"10"', add
label define ch00a_nchild_lbl 11 `"11"', add
label define ch00a_nchild_lbl 12 `"12"', add
label define ch00a_nchild_lbl 13 `"13+"', add
label define ch00a_nchild_lbl 98 `"Unknown"', add
label define ch00a_nchild_lbl 99 `"NIU (not in  universe)"', add
label values ch00a_nchild ch00a_nchild_lbl

label define ch00a_yrbirth1_lbl 1927 `"1927 or earlier"'
label define ch00a_yrbirth1_lbl 1928 `"1928"', add
label define ch00a_yrbirth1_lbl 1929 `"1929"', add
label define ch00a_yrbirth1_lbl 1930 `"1930"', add
label define ch00a_yrbirth1_lbl 1931 `"1931"', add
label define ch00a_yrbirth1_lbl 1932 `"1932"', add
label define ch00a_yrbirth1_lbl 1933 `"1933"', add
label define ch00a_yrbirth1_lbl 1934 `"1934"', add
label define ch00a_yrbirth1_lbl 1935 `"1935"', add
label define ch00a_yrbirth1_lbl 1936 `"1936"', add
label define ch00a_yrbirth1_lbl 1937 `"1937"', add
label define ch00a_yrbirth1_lbl 1938 `"1938"', add
label define ch00a_yrbirth1_lbl 1939 `"1939"', add
label define ch00a_yrbirth1_lbl 1940 `"1940"', add
label define ch00a_yrbirth1_lbl 1941 `"1941"', add
label define ch00a_yrbirth1_lbl 1942 `"1942"', add
label define ch00a_yrbirth1_lbl 1943 `"1943"', add
label define ch00a_yrbirth1_lbl 1944 `"1944"', add
label define ch00a_yrbirth1_lbl 1945 `"1945"', add
label define ch00a_yrbirth1_lbl 1946 `"1946"', add
label define ch00a_yrbirth1_lbl 1947 `"1947"', add
label define ch00a_yrbirth1_lbl 1948 `"1948"', add
label define ch00a_yrbirth1_lbl 1949 `"1949"', add
label define ch00a_yrbirth1_lbl 1950 `"1950"', add
label define ch00a_yrbirth1_lbl 1951 `"1951"', add
label define ch00a_yrbirth1_lbl 1952 `"1952"', add
label define ch00a_yrbirth1_lbl 1953 `"1953"', add
label define ch00a_yrbirth1_lbl 1954 `"1954"', add
label define ch00a_yrbirth1_lbl 1955 `"1955"', add
label define ch00a_yrbirth1_lbl 1956 `"1956"', add
label define ch00a_yrbirth1_lbl 1957 `"1957"', add
label define ch00a_yrbirth1_lbl 1958 `"1958"', add
label define ch00a_yrbirth1_lbl 1959 `"1959"', add
label define ch00a_yrbirth1_lbl 1960 `"1960"', add
label define ch00a_yrbirth1_lbl 1961 `"1961"', add
label define ch00a_yrbirth1_lbl 1962 `"1962"', add
label define ch00a_yrbirth1_lbl 1963 `"1963"', add
label define ch00a_yrbirth1_lbl 1964 `"1964"', add
label define ch00a_yrbirth1_lbl 1965 `"1965"', add
label define ch00a_yrbirth1_lbl 1966 `"1966"', add
label define ch00a_yrbirth1_lbl 1967 `"1967"', add
label define ch00a_yrbirth1_lbl 1968 `"1968"', add
label define ch00a_yrbirth1_lbl 1969 `"1969"', add
label define ch00a_yrbirth1_lbl 1970 `"1970"', add
label define ch00a_yrbirth1_lbl 1971 `"1971"', add
label define ch00a_yrbirth1_lbl 1972 `"1972"', add
label define ch00a_yrbirth1_lbl 1973 `"1973"', add
label define ch00a_yrbirth1_lbl 1974 `"1974"', add
label define ch00a_yrbirth1_lbl 1975 `"1975"', add
label define ch00a_yrbirth1_lbl 1976 `"1976"', add
label define ch00a_yrbirth1_lbl 1977 `"1977"', add
label define ch00a_yrbirth1_lbl 1978 `"1978"', add
label define ch00a_yrbirth1_lbl 1979 `"1979"', add
label define ch00a_yrbirth1_lbl 1980 `"1980"', add
label define ch00a_yrbirth1_lbl 1981 `"1981"', add
label define ch00a_yrbirth1_lbl 1982 `"1982"', add
label define ch00a_yrbirth1_lbl 1983 `"1983"', add
label define ch00a_yrbirth1_lbl 1984 `"1984"', add
label define ch00a_yrbirth1_lbl 1985 `"1985"', add
label define ch00a_yrbirth1_lbl 1986 `"1986"', add
label define ch00a_yrbirth1_lbl 1987 `"1987"', add
label define ch00a_yrbirth1_lbl 1988 `"1988"', add
label define ch00a_yrbirth1_lbl 1989 `"1989"', add
label define ch00a_yrbirth1_lbl 1990 `"1990"', add
label define ch00a_yrbirth1_lbl 1991 `"1991"', add
label define ch00a_yrbirth1_lbl 1992 `"1992"', add
label define ch00a_yrbirth1_lbl 1993 `"1993"', add
label define ch00a_yrbirth1_lbl 1994 `"1994"', add
label define ch00a_yrbirth1_lbl 1995 `"1995"', add
label define ch00a_yrbirth1_lbl 1996 `"1996"', add
label define ch00a_yrbirth1_lbl 1997 `"1997"', add
label define ch00a_yrbirth1_lbl 1998 `"1998"', add
label define ch00a_yrbirth1_lbl 1999 `"1999"', add
label define ch00a_yrbirth1_lbl 2000 `"2000"', add
label define ch00a_yrbirth1_lbl 9998 `"Unknown"', add
label define ch00a_yrbirth1_lbl 9999 `"NIU (not in  universe)"', add
label values ch00a_yrbirth1 ch00a_yrbirth1_lbl

label define ch00a_yrbirth2_lbl 1930 `"1930 or earlier"'
label define ch00a_yrbirth2_lbl 1931 `"1931"', add
label define ch00a_yrbirth2_lbl 1932 `"1932"', add
label define ch00a_yrbirth2_lbl 1933 `"1933"', add
label define ch00a_yrbirth2_lbl 1934 `"1934"', add
label define ch00a_yrbirth2_lbl 1935 `"1935"', add
label define ch00a_yrbirth2_lbl 1936 `"1936"', add
label define ch00a_yrbirth2_lbl 1937 `"1937"', add
label define ch00a_yrbirth2_lbl 1938 `"1938"', add
label define ch00a_yrbirth2_lbl 1939 `"1939"', add
label define ch00a_yrbirth2_lbl 1940 `"1940"', add
label define ch00a_yrbirth2_lbl 1941 `"1941"', add
label define ch00a_yrbirth2_lbl 1942 `"1942"', add
label define ch00a_yrbirth2_lbl 1943 `"1943"', add
label define ch00a_yrbirth2_lbl 1944 `"1944"', add
label define ch00a_yrbirth2_lbl 1945 `"1945"', add
label define ch00a_yrbirth2_lbl 1946 `"1946"', add
label define ch00a_yrbirth2_lbl 1947 `"1947"', add
label define ch00a_yrbirth2_lbl 1948 `"1948"', add
label define ch00a_yrbirth2_lbl 1949 `"1949"', add
label define ch00a_yrbirth2_lbl 1950 `"1950"', add
label define ch00a_yrbirth2_lbl 1951 `"1951"', add
label define ch00a_yrbirth2_lbl 1952 `"1952"', add
label define ch00a_yrbirth2_lbl 1953 `"1953"', add
label define ch00a_yrbirth2_lbl 1954 `"1954"', add
label define ch00a_yrbirth2_lbl 1955 `"1955"', add
label define ch00a_yrbirth2_lbl 1956 `"1956"', add
label define ch00a_yrbirth2_lbl 1957 `"1957"', add
label define ch00a_yrbirth2_lbl 1958 `"1958"', add
label define ch00a_yrbirth2_lbl 1959 `"1959"', add
label define ch00a_yrbirth2_lbl 1960 `"1960"', add
label define ch00a_yrbirth2_lbl 1961 `"1961"', add
label define ch00a_yrbirth2_lbl 1962 `"1962"', add
label define ch00a_yrbirth2_lbl 1963 `"1963"', add
label define ch00a_yrbirth2_lbl 1964 `"1964"', add
label define ch00a_yrbirth2_lbl 1965 `"1965"', add
label define ch00a_yrbirth2_lbl 1966 `"1966"', add
label define ch00a_yrbirth2_lbl 1967 `"1967"', add
label define ch00a_yrbirth2_lbl 1968 `"1968"', add
label define ch00a_yrbirth2_lbl 1969 `"1969"', add
label define ch00a_yrbirth2_lbl 1970 `"1970"', add
label define ch00a_yrbirth2_lbl 1971 `"1971"', add
label define ch00a_yrbirth2_lbl 1972 `"1972"', add
label define ch00a_yrbirth2_lbl 1973 `"1973"', add
label define ch00a_yrbirth2_lbl 1974 `"1974"', add
label define ch00a_yrbirth2_lbl 1975 `"1975"', add
label define ch00a_yrbirth2_lbl 1976 `"1976"', add
label define ch00a_yrbirth2_lbl 1977 `"1977"', add
label define ch00a_yrbirth2_lbl 1978 `"1978"', add
label define ch00a_yrbirth2_lbl 1979 `"1979"', add
label define ch00a_yrbirth2_lbl 1980 `"1980"', add
label define ch00a_yrbirth2_lbl 1981 `"1981"', add
label define ch00a_yrbirth2_lbl 1982 `"1982"', add
label define ch00a_yrbirth2_lbl 1983 `"1983"', add
label define ch00a_yrbirth2_lbl 1984 `"1984"', add
label define ch00a_yrbirth2_lbl 1985 `"1985"', add
label define ch00a_yrbirth2_lbl 1986 `"1986"', add
label define ch00a_yrbirth2_lbl 1987 `"1987"', add
label define ch00a_yrbirth2_lbl 1988 `"1988"', add
label define ch00a_yrbirth2_lbl 1989 `"1989"', add
label define ch00a_yrbirth2_lbl 1990 `"1990"', add
label define ch00a_yrbirth2_lbl 1991 `"1991"', add
label define ch00a_yrbirth2_lbl 1992 `"1992"', add
label define ch00a_yrbirth2_lbl 1993 `"1993"', add
label define ch00a_yrbirth2_lbl 1994 `"1994"', add
label define ch00a_yrbirth2_lbl 1995 `"1995"', add
label define ch00a_yrbirth2_lbl 1996 `"1996"', add
label define ch00a_yrbirth2_lbl 1997 `"1997"', add
label define ch00a_yrbirth2_lbl 1998 `"1998"', add
label define ch00a_yrbirth2_lbl 1999 `"1999"', add
label define ch00a_yrbirth2_lbl 2000 `"2000"', add
label define ch00a_yrbirth2_lbl 9998 `"Unknown"', add
label define ch00a_yrbirth2_lbl 9999 `"NIU (not in  universe)"', add
label values ch00a_yrbirth2 ch00a_yrbirth2_lbl

label define ch00a_yrbirth3_lbl 1934 `"1934 or earlier"'
label define ch00a_yrbirth3_lbl 1935 `"1935"', add
label define ch00a_yrbirth3_lbl 1936 `"1936"', add
label define ch00a_yrbirth3_lbl 1937 `"1937"', add
label define ch00a_yrbirth3_lbl 1938 `"1938"', add
label define ch00a_yrbirth3_lbl 1939 `"1939"', add
label define ch00a_yrbirth3_lbl 1940 `"1940"', add
label define ch00a_yrbirth3_lbl 1941 `"1941"', add
label define ch00a_yrbirth3_lbl 1942 `"1942"', add
label define ch00a_yrbirth3_lbl 1943 `"1943"', add
label define ch00a_yrbirth3_lbl 1944 `"1944"', add
label define ch00a_yrbirth3_lbl 1945 `"1945"', add
label define ch00a_yrbirth3_lbl 1946 `"1946"', add
label define ch00a_yrbirth3_lbl 1947 `"1947"', add
label define ch00a_yrbirth3_lbl 1948 `"1948"', add
label define ch00a_yrbirth3_lbl 1949 `"1949"', add
label define ch00a_yrbirth3_lbl 1950 `"1950"', add
label define ch00a_yrbirth3_lbl 1951 `"1951"', add
label define ch00a_yrbirth3_lbl 1952 `"1952"', add
label define ch00a_yrbirth3_lbl 1953 `"1953"', add
label define ch00a_yrbirth3_lbl 1954 `"1954"', add
label define ch00a_yrbirth3_lbl 1955 `"1955"', add
label define ch00a_yrbirth3_lbl 1956 `"1956"', add
label define ch00a_yrbirth3_lbl 1957 `"1957"', add
label define ch00a_yrbirth3_lbl 1958 `"1958"', add
label define ch00a_yrbirth3_lbl 1959 `"1959"', add
label define ch00a_yrbirth3_lbl 1960 `"1960"', add
label define ch00a_yrbirth3_lbl 1961 `"1961"', add
label define ch00a_yrbirth3_lbl 1962 `"1962"', add
label define ch00a_yrbirth3_lbl 1963 `"1963"', add
label define ch00a_yrbirth3_lbl 1964 `"1964"', add
label define ch00a_yrbirth3_lbl 1965 `"1965"', add
label define ch00a_yrbirth3_lbl 1966 `"1966"', add
label define ch00a_yrbirth3_lbl 1967 `"1967"', add
label define ch00a_yrbirth3_lbl 1968 `"1968"', add
label define ch00a_yrbirth3_lbl 1969 `"1969"', add
label define ch00a_yrbirth3_lbl 1970 `"1970"', add
label define ch00a_yrbirth3_lbl 1971 `"1971"', add
label define ch00a_yrbirth3_lbl 1972 `"1972"', add
label define ch00a_yrbirth3_lbl 1973 `"1973"', add
label define ch00a_yrbirth3_lbl 1974 `"1974"', add
label define ch00a_yrbirth3_lbl 1975 `"1975"', add
label define ch00a_yrbirth3_lbl 1976 `"1976"', add
label define ch00a_yrbirth3_lbl 1977 `"1977"', add
label define ch00a_yrbirth3_lbl 1978 `"1978"', add
label define ch00a_yrbirth3_lbl 1979 `"1979"', add
label define ch00a_yrbirth3_lbl 1980 `"1980"', add
label define ch00a_yrbirth3_lbl 1981 `"1981"', add
label define ch00a_yrbirth3_lbl 1982 `"1982"', add
label define ch00a_yrbirth3_lbl 1983 `"1983"', add
label define ch00a_yrbirth3_lbl 1984 `"1984"', add
label define ch00a_yrbirth3_lbl 1985 `"1985"', add
label define ch00a_yrbirth3_lbl 1986 `"1986"', add
label define ch00a_yrbirth3_lbl 1987 `"1987"', add
label define ch00a_yrbirth3_lbl 1988 `"1988"', add
label define ch00a_yrbirth3_lbl 1989 `"1989"', add
label define ch00a_yrbirth3_lbl 1990 `"1990"', add
label define ch00a_yrbirth3_lbl 1991 `"1991"', add
label define ch00a_yrbirth3_lbl 1992 `"1992"', add
label define ch00a_yrbirth3_lbl 1993 `"1993"', add
label define ch00a_yrbirth3_lbl 1994 `"1994"', add
label define ch00a_yrbirth3_lbl 1995 `"1995"', add
label define ch00a_yrbirth3_lbl 1996 `"1996"', add
label define ch00a_yrbirth3_lbl 1997 `"1997"', add
label define ch00a_yrbirth3_lbl 1998 `"1998"', add
label define ch00a_yrbirth3_lbl 1999 `"1999"', add
label define ch00a_yrbirth3_lbl 2000 `"2000"', add
label define ch00a_yrbirth3_lbl 9998 `"Unknown"', add
label define ch00a_yrbirth3_lbl 9999 `"NIU (not in  universe)"', add
label values ch00a_yrbirth3 ch00a_yrbirth3_lbl

label define ch00a_yrbirth4_lbl 1937 `"1937 or earlier"'
label define ch00a_yrbirth4_lbl 1938 `"1938"', add
label define ch00a_yrbirth4_lbl 1939 `"1939"', add
label define ch00a_yrbirth4_lbl 1940 `"1940"', add
label define ch00a_yrbirth4_lbl 1941 `"1941"', add
label define ch00a_yrbirth4_lbl 1942 `"1942"', add
label define ch00a_yrbirth4_lbl 1943 `"1943"', add
label define ch00a_yrbirth4_lbl 1944 `"1944"', add
label define ch00a_yrbirth4_lbl 1945 `"1945"', add
label define ch00a_yrbirth4_lbl 1946 `"1946"', add
label define ch00a_yrbirth4_lbl 1947 `"1947"', add
label define ch00a_yrbirth4_lbl 1948 `"1948"', add
label define ch00a_yrbirth4_lbl 1949 `"1949"', add
label define ch00a_yrbirth4_lbl 1950 `"1950"', add
label define ch00a_yrbirth4_lbl 1951 `"1951"', add
label define ch00a_yrbirth4_lbl 1952 `"1952"', add
label define ch00a_yrbirth4_lbl 1953 `"1953"', add
label define ch00a_yrbirth4_lbl 1954 `"1954"', add
label define ch00a_yrbirth4_lbl 1955 `"1955"', add
label define ch00a_yrbirth4_lbl 1956 `"1956"', add
label define ch00a_yrbirth4_lbl 1957 `"1957"', add
label define ch00a_yrbirth4_lbl 1958 `"1958"', add
label define ch00a_yrbirth4_lbl 1959 `"1959"', add
label define ch00a_yrbirth4_lbl 1960 `"1960"', add
label define ch00a_yrbirth4_lbl 1961 `"1961"', add
label define ch00a_yrbirth4_lbl 1962 `"1962"', add
label define ch00a_yrbirth4_lbl 1963 `"1963"', add
label define ch00a_yrbirth4_lbl 1964 `"1964"', add
label define ch00a_yrbirth4_lbl 1965 `"1965"', add
label define ch00a_yrbirth4_lbl 1966 `"1966"', add
label define ch00a_yrbirth4_lbl 1967 `"1967"', add
label define ch00a_yrbirth4_lbl 1968 `"1968"', add
label define ch00a_yrbirth4_lbl 1969 `"1969"', add
label define ch00a_yrbirth4_lbl 1970 `"1970"', add
label define ch00a_yrbirth4_lbl 1971 `"1971"', add
label define ch00a_yrbirth4_lbl 1972 `"1972"', add
label define ch00a_yrbirth4_lbl 1973 `"1973"', add
label define ch00a_yrbirth4_lbl 1974 `"1974"', add
label define ch00a_yrbirth4_lbl 1975 `"1975"', add
label define ch00a_yrbirth4_lbl 1976 `"1976"', add
label define ch00a_yrbirth4_lbl 1977 `"1977"', add
label define ch00a_yrbirth4_lbl 1978 `"1978"', add
label define ch00a_yrbirth4_lbl 1979 `"1979"', add
label define ch00a_yrbirth4_lbl 1980 `"1980"', add
label define ch00a_yrbirth4_lbl 1981 `"1981"', add
label define ch00a_yrbirth4_lbl 1982 `"1982"', add
label define ch00a_yrbirth4_lbl 1983 `"1983"', add
label define ch00a_yrbirth4_lbl 1984 `"1984"', add
label define ch00a_yrbirth4_lbl 1985 `"1985"', add
label define ch00a_yrbirth4_lbl 1986 `"1986"', add
label define ch00a_yrbirth4_lbl 1987 `"1987"', add
label define ch00a_yrbirth4_lbl 1988 `"1988"', add
label define ch00a_yrbirth4_lbl 1989 `"1989"', add
label define ch00a_yrbirth4_lbl 1990 `"1990"', add
label define ch00a_yrbirth4_lbl 1991 `"1991"', add
label define ch00a_yrbirth4_lbl 1992 `"1992"', add
label define ch00a_yrbirth4_lbl 1993 `"1993"', add
label define ch00a_yrbirth4_lbl 1994 `"1994"', add
label define ch00a_yrbirth4_lbl 1995 `"1995"', add
label define ch00a_yrbirth4_lbl 1996 `"1996"', add
label define ch00a_yrbirth4_lbl 1997 `"1997"', add
label define ch00a_yrbirth4_lbl 1998 `"1998"', add
label define ch00a_yrbirth4_lbl 1999 `"1999"', add
label define ch00a_yrbirth4_lbl 2000 `"2000"', add
label define ch00a_yrbirth4_lbl 9998 `"Unknown"', add
label define ch00a_yrbirth4_lbl 9999 `"NIU (not in  universe)"', add
label values ch00a_yrbirth4 ch00a_yrbirth4_lbl

label define ch00a_yrlstbth_lbl 1945 `"1945 or earlier"'
label define ch00a_yrlstbth_lbl 1946 `"1946"', add
label define ch00a_yrlstbth_lbl 1947 `"1947"', add
label define ch00a_yrlstbth_lbl 1948 `"1948"', add
label define ch00a_yrlstbth_lbl 1949 `"1949"', add
label define ch00a_yrlstbth_lbl 1950 `"1950"', add
label define ch00a_yrlstbth_lbl 1951 `"1951"', add
label define ch00a_yrlstbth_lbl 1952 `"1952"', add
label define ch00a_yrlstbth_lbl 1953 `"1953"', add
label define ch00a_yrlstbth_lbl 1954 `"1954"', add
label define ch00a_yrlstbth_lbl 1955 `"1955"', add
label define ch00a_yrlstbth_lbl 1956 `"1956"', add
label define ch00a_yrlstbth_lbl 1957 `"1957"', add
label define ch00a_yrlstbth_lbl 1958 `"1958"', add
label define ch00a_yrlstbth_lbl 1959 `"1959"', add
label define ch00a_yrlstbth_lbl 1960 `"1960"', add
label define ch00a_yrlstbth_lbl 1961 `"1961"', add
label define ch00a_yrlstbth_lbl 1962 `"1962"', add
label define ch00a_yrlstbth_lbl 1963 `"1963"', add
label define ch00a_yrlstbth_lbl 1964 `"1964"', add
label define ch00a_yrlstbth_lbl 1965 `"1965"', add
label define ch00a_yrlstbth_lbl 1966 `"1966"', add
label define ch00a_yrlstbth_lbl 1967 `"1967"', add
label define ch00a_yrlstbth_lbl 1968 `"1968"', add
label define ch00a_yrlstbth_lbl 1969 `"1969"', add
label define ch00a_yrlstbth_lbl 1970 `"1970"', add
label define ch00a_yrlstbth_lbl 1971 `"1971"', add
label define ch00a_yrlstbth_lbl 1972 `"1972"', add
label define ch00a_yrlstbth_lbl 1973 `"1973"', add
label define ch00a_yrlstbth_lbl 1974 `"1974"', add
label define ch00a_yrlstbth_lbl 1975 `"1975"', add
label define ch00a_yrlstbth_lbl 1976 `"1976"', add
label define ch00a_yrlstbth_lbl 1977 `"1977"', add
label define ch00a_yrlstbth_lbl 1978 `"1978"', add
label define ch00a_yrlstbth_lbl 1979 `"1979"', add
label define ch00a_yrlstbth_lbl 1980 `"1980"', add
label define ch00a_yrlstbth_lbl 1981 `"1981"', add
label define ch00a_yrlstbth_lbl 1982 `"1982"', add
label define ch00a_yrlstbth_lbl 1983 `"1983"', add
label define ch00a_yrlstbth_lbl 1984 `"1984"', add
label define ch00a_yrlstbth_lbl 1985 `"1985"', add
label define ch00a_yrlstbth_lbl 1986 `"1986"', add
label define ch00a_yrlstbth_lbl 1987 `"1987"', add
label define ch00a_yrlstbth_lbl 1988 `"1988"', add
label define ch00a_yrlstbth_lbl 1989 `"1989"', add
label define ch00a_yrlstbth_lbl 1990 `"1990"', add
label define ch00a_yrlstbth_lbl 1991 `"1991"', add
label define ch00a_yrlstbth_lbl 1992 `"1992"', add
label define ch00a_yrlstbth_lbl 1993 `"1993"', add
label define ch00a_yrlstbth_lbl 1994 `"1994"', add
label define ch00a_yrlstbth_lbl 1995 `"1995"', add
label define ch00a_yrlstbth_lbl 1996 `"1996"', add
label define ch00a_yrlstbth_lbl 1997 `"1997"', add
label define ch00a_yrlstbth_lbl 1998 `"1998"', add
label define ch00a_yrlstbth_lbl 1999 `"1999"', add
label define ch00a_yrlstbth_lbl 2000 `"2000"', add
label define ch00a_yrlstbth_lbl 9998 `"Unknown"', add
label define ch00a_yrlstbth_lbl 9999 `"NIU (not in  universe)"', add
label values ch00a_yrlstbth ch00a_yrlstbth_lbl

label define ch00a_yrbthyng_lbl 1929 `"1929 or earlier"'
label define ch00a_yrbthyng_lbl 1930 `"1930"', add
label define ch00a_yrbthyng_lbl 1931 `"1931"', add
label define ch00a_yrbthyng_lbl 1932 `"1932"', add
label define ch00a_yrbthyng_lbl 1933 `"1933"', add
label define ch00a_yrbthyng_lbl 1934 `"1934"', add
label define ch00a_yrbthyng_lbl 1935 `"1935"', add
label define ch00a_yrbthyng_lbl 1936 `"1936"', add
label define ch00a_yrbthyng_lbl 1937 `"1937"', add
label define ch00a_yrbthyng_lbl 1938 `"1938"', add
label define ch00a_yrbthyng_lbl 1939 `"1939"', add
label define ch00a_yrbthyng_lbl 1940 `"1940"', add
label define ch00a_yrbthyng_lbl 1941 `"1941"', add
label define ch00a_yrbthyng_lbl 1942 `"1942"', add
label define ch00a_yrbthyng_lbl 1943 `"1943"', add
label define ch00a_yrbthyng_lbl 1944 `"1944"', add
label define ch00a_yrbthyng_lbl 1945 `"1945"', add
label define ch00a_yrbthyng_lbl 1946 `"1946"', add
label define ch00a_yrbthyng_lbl 1947 `"1947"', add
label define ch00a_yrbthyng_lbl 1948 `"1948"', add
label define ch00a_yrbthyng_lbl 1949 `"1949"', add
label define ch00a_yrbthyng_lbl 1950 `"1950"', add
label define ch00a_yrbthyng_lbl 1951 `"1951"', add
label define ch00a_yrbthyng_lbl 1952 `"1952"', add
label define ch00a_yrbthyng_lbl 1953 `"1953"', add
label define ch00a_yrbthyng_lbl 1954 `"1954"', add
label define ch00a_yrbthyng_lbl 1955 `"1955"', add
label define ch00a_yrbthyng_lbl 1956 `"1956"', add
label define ch00a_yrbthyng_lbl 1957 `"1957"', add
label define ch00a_yrbthyng_lbl 1958 `"1958"', add
label define ch00a_yrbthyng_lbl 1959 `"1959"', add
label define ch00a_yrbthyng_lbl 1960 `"1960"', add
label define ch00a_yrbthyng_lbl 1961 `"1961"', add
label define ch00a_yrbthyng_lbl 1962 `"1962"', add
label define ch00a_yrbthyng_lbl 1963 `"1963"', add
label define ch00a_yrbthyng_lbl 1964 `"1964"', add
label define ch00a_yrbthyng_lbl 1965 `"1965"', add
label define ch00a_yrbthyng_lbl 1966 `"1966"', add
label define ch00a_yrbthyng_lbl 1967 `"1967"', add
label define ch00a_yrbthyng_lbl 1968 `"1968"', add
label define ch00a_yrbthyng_lbl 1969 `"1969"', add
label define ch00a_yrbthyng_lbl 1970 `"1970"', add
label define ch00a_yrbthyng_lbl 1971 `"1971"', add
label define ch00a_yrbthyng_lbl 1972 `"1972"', add
label define ch00a_yrbthyng_lbl 1973 `"1973"', add
label define ch00a_yrbthyng_lbl 1974 `"1974"', add
label define ch00a_yrbthyng_lbl 1975 `"1975"', add
label define ch00a_yrbthyng_lbl 1976 `"1976"', add
label define ch00a_yrbthyng_lbl 1977 `"1977"', add
label define ch00a_yrbthyng_lbl 1978 `"1978"', add
label define ch00a_yrbthyng_lbl 1979 `"1979"', add
label define ch00a_yrbthyng_lbl 1980 `"1980"', add
label define ch00a_yrbthyng_lbl 1981 `"1981"', add
label define ch00a_yrbthyng_lbl 1982 `"1982"', add
label define ch00a_yrbthyng_lbl 1983 `"1983"', add
label define ch00a_yrbthyng_lbl 1984 `"1984"', add
label define ch00a_yrbthyng_lbl 1985 `"1985"', add
label define ch00a_yrbthyng_lbl 1986 `"1986"', add
label define ch00a_yrbthyng_lbl 1987 `"1987"', add
label define ch00a_yrbthyng_lbl 1988 `"1988"', add
label define ch00a_yrbthyng_lbl 1989 `"1989"', add
label define ch00a_yrbthyng_lbl 1990 `"1990"', add
label define ch00a_yrbthyng_lbl 1991 `"1991"', add
label define ch00a_yrbthyng_lbl 1992 `"1992"', add
label define ch00a_yrbthyng_lbl 1993 `"1993"', add
label define ch00a_yrbthyng_lbl 1994 `"1994"', add
label define ch00a_yrbthyng_lbl 1995 `"1995"', add
label define ch00a_yrbthyng_lbl 1996 `"1996"', add
label define ch00a_yrbthyng_lbl 1997 `"1997"', add
label define ch00a_yrbthyng_lbl 1998 `"1998"', add
label define ch00a_yrbthyng_lbl 1999 `"1999"', add
label define ch00a_yrbthyng_lbl 2000 `"2000"', add
label define ch00a_yrbthyng_lbl 9998 `"Unknown"', add
label define ch00a_yrbthyng_lbl 9999 `"NIU (not in  universe)"', add
label values ch00a_yrbthyng ch00a_yrbthyng_lbl

label define ch00a_langhmwk_lbl 1111 `"German and dialect"'
label define ch00a_langhmwk_lbl 1112 `"German only"', add
label define ch00a_langhmwk_lbl 1113 `"A Germanic dialect only"', add
label define ch00a_langhmwk_lbl 1121 `"French and Patois"', add
label define ch00a_langhmwk_lbl 1122 `"French only"', add
label define ch00a_langhmwk_lbl 1123 `"Patois only"', add
label define ch00a_langhmwk_lbl 1131 `"Italian and dialect"', add
label define ch00a_langhmwk_lbl 1132 `"Italian only"', add
label define ch00a_langhmwk_lbl 1133 `"An Italian dialect only"', add
label define ch00a_langhmwk_lbl 1140 `"Romansh"', add
label define ch00a_langhmwk_lbl 1211 `"German and English"', add
label define ch00a_langhmwk_lbl 1212 `"French and English"', add
label define ch00a_langhmwk_lbl 1213 `"Italian and English"', add
label define ch00a_langhmwk_lbl 1221 `"German and another language"', add
label define ch00a_langhmwk_lbl 1222 `"French and another language"', add
label define ch00a_langhmwk_lbl 1223 `"Italian and another language"', add
label define ch00a_langhmwk_lbl 1311 `"German, English and another language/other languages"', add
label define ch00a_langhmwk_lbl 1312 `"French, English and another language/other languages"', add
label define ch00a_langhmwk_lbl 1313 `"Italian, English and another language/other languages"', add
label define ch00a_langhmwk_lbl 2111 `"German and French"', add
label define ch00a_langhmwk_lbl 2112 `"German and Italian"', add
label define ch00a_langhmwk_lbl 2113 `"German and Romansh"', add
label define ch00a_langhmwk_lbl 2114 `"French and Italian"', add
label define ch00a_langhmwk_lbl 2116 `"Italian and Romansh"', add
label define ch00a_langhmwk_lbl 2121 `"German, French and English"', add
label define ch00a_langhmwk_lbl 2122 `"German, Italian and English"', add
label define ch00a_langhmwk_lbl 2123 `"German, Romansh and English"', add
label define ch00a_langhmwk_lbl 2124 `"French, Italian and English"', add
label define ch00a_langhmwk_lbl 2131 `"German, French and another language/other languages"', add
label define ch00a_langhmwk_lbl 2132 `"German, Italian and another language/other languages"', add
label define ch00a_langhmwk_lbl 2133 `"German, Romansh and another language/other languages"', add
label define ch00a_langhmwk_lbl 2134 `"French, Italian and another language/other languages"', add
label define ch00a_langhmwk_lbl 2141 `"German, French, English and another language/other languages"', add
label define ch00a_langhmwk_lbl 2142 `"German, Italian, English and another language/other languages"', add
label define ch00a_langhmwk_lbl 2144 `"French, Italian, English and another language/other languages"', add
label define ch00a_langhmwk_lbl 2211 `"German, French, Italian"', add
label define ch00a_langhmwk_lbl 2212 `"German, French, Romansh"', add
label define ch00a_langhmwk_lbl 2213 `"German, Italian, Romansh"', add
label define ch00a_langhmwk_lbl 2214 `"French, Italian, Romansh"', add
label define ch00a_langhmwk_lbl 2221 `"German, French, Italian and English"', add
label define ch00a_langhmwk_lbl 2222 `"German, French, Romansh and English"', add
label define ch00a_langhmwk_lbl 2223 `"German, Italian, Romansh and English"', add
label define ch00a_langhmwk_lbl 2231 `"German, French, Italian and another language/other languages"', add
label define ch00a_langhmwk_lbl 2241 `"German, French, Italian, English and another language/other languages"', add
label define ch00a_langhmwk_lbl 2242 `"German, French, Romansh, English and another language/other languages"', add
label define ch00a_langhmwk_lbl 2311 `"The four national languages"', add
label define ch00a_langhmwk_lbl 2321 `"The four national languages and English"', add
label define ch00a_langhmwk_lbl 2341 `"The four national languages, English and another language/one of the other languages"', add
label define ch00a_langhmwk_lbl 3111 `"English"', add
label define ch00a_langhmwk_lbl 3112 `"Another language"', add
label define ch00a_langhmwk_lbl 3200 `"English and another language/other languages"', add
label define ch00a_langhmwk_lbl 9900 `"Response suppressed"', add
label define ch00a_langhmwk_lbl 9998 `"Unknown"', add
label values ch00a_langhmwk ch00a_langhmwk_lbl

label define ch00a_langhome_lbl 101 `"English only"'
label define ch00a_langhome_lbl 102 `"Only one foreign language other than English"', add
label define ch00a_langhome_lbl 103 `"English and one other foreign language"', add
label define ch00a_langhome_lbl 110 `"One other national language (dialect)"', add
label define ch00a_langhome_lbl 111 `"One other national language (dialect) and English"', add
label define ch00a_langhome_lbl 112 `"One other national language (dialect) and one other foreign language"', add
label define ch00a_langhome_lbl 120 `"One other national language (literary language)"', add
label define ch00a_langhome_lbl 121 `"One other national language (literary language) and English"', add
label define ch00a_langhome_lbl 122 `"One other national language (literary language) and one other foreign language"', add
label define ch00a_langhome_lbl 123 `"One other national language (literary language), English and one other foreign language"', add
label define ch00a_langhome_lbl 130 `"One other national language (dialect and literary language)"', add
label define ch00a_langhome_lbl 131 `"One other national language (dialect and literary language) and English"', add
label define ch00a_langhome_lbl 132 `"One other national language (dialect and literary language) and one other foreign language"', add
label define ch00a_langhome_lbl 140 `"Two other national languages (dialect and/or literary language)"', add
label define ch00a_langhome_lbl 141 `"Two other national languages (dialect and/or literary language) and English"', add
label define ch00a_langhome_lbl 142 `"Two other national languages (dialect and/or literary language) and one other foreign language"', add
label define ch00a_langhome_lbl 200 `"Regional language (dialect)"', add
label define ch00a_langhome_lbl 201 `"Regional language (dialect) and English"', add
label define ch00a_langhome_lbl 202 `"Regional language (dialect) and one other foreign language"', add
label define ch00a_langhome_lbl 203 `"Regional language (dialect), English and one other foreign language"', add
label define ch00a_langhome_lbl 210 `"Regional language (dialect) and one other national language (dialect)"', add
label define ch00a_langhome_lbl 211 `"Regional language (dialect), one other national language (dialect) and English"', add
label define ch00a_langhome_lbl 212 `"Regional language (dialect), one other national language (dialect) and one other foreign language"', add
label define ch00a_langhome_lbl 220 `"Regional language (dialect) and one other national language (literary language)"', add
label define ch00a_langhome_lbl 221 `"Regional language (dialect), one other national language (literary language) and English"', add
label define ch00a_langhome_lbl 222 `"Regional language (dialect), one other national language (literary language) and one other foreign language"', add
label define ch00a_langhome_lbl 223 `"Regional language (dialect), one other national language (literary language), English and one other foreign language"', add
label define ch00a_langhome_lbl 230 `"Regional language (dialect) and one other national language (dialect and literary language)"', add
label define ch00a_langhome_lbl 231 `"Regional language (dialect), one other national language (dialect and literary language) and English"', add
label define ch00a_langhome_lbl 232 `"Regional language (dialect), one other national language (dialect and literary language) and one other foreign language"', add
label define ch00a_langhome_lbl 240 `"Regional language (dialect) and two other national language (dialect and/or literary language)"', add
label define ch00a_langhome_lbl 241 `"Regional Language (dialect), two other national languages (dialect and/or literary language) and English"', add
label define ch00a_langhome_lbl 242 `"Regional language (dialect), two other national languages (dialect and/or literary language) and one other foreign language"', add
label define ch00a_langhome_lbl 243 `"Regional language (dialect), two other national languages (dialect and/or literary language), English and one other foreign language"', add
label define ch00a_langhome_lbl 300 `"Regional language (literary language)"', add
label define ch00a_langhome_lbl 301 `"Regional language (literary language) and English"', add
label define ch00a_langhome_lbl 302 `"Regional language (literary language) and one other foreign language"', add
label define ch00a_langhome_lbl 303 `"Regional language (literary language), English and one other foreign language"', add
label define ch00a_langhome_lbl 310 `"Regional language (literary language) and one other national language (dialect)"', add
label define ch00a_langhome_lbl 311 `"Regional language (literary language), one other national language (dialect) and English"', add
label define ch00a_langhome_lbl 312 `"Regional language (literary language), one other national language (dialect) and one other foreign language"', add
label define ch00a_langhome_lbl 313 `"Regional language (literary language), one other national language (dialect), English and one other foreign language"', add
label define ch00a_langhome_lbl 320 `"Regional language (literary language) and one other national language (literary language)"', add
label define ch00a_langhome_lbl 321 `"Regional language (literary language), one other national language (literary language) and English"', add
label define ch00a_langhome_lbl 322 `"Regional language (literary language), one other national language (literary language) and one other foreign language"', add
label define ch00a_langhome_lbl 323 `"Regional language (literary language), one other national language (literary language), English and one other foreign language"', add
label define ch00a_langhome_lbl 330 `"Regional language (literary language), one other national language (dialect and literary language)"', add
label define ch00a_langhome_lbl 331 `"Regional language (literary language), one other national language (dialect and literary language) and English"', add
label define ch00a_langhome_lbl 332 `"Regional language (literary language), one other national language (dialect and literary language) and one other foreign language"', add
label define ch00a_langhome_lbl 333 `"Regional language (literary language), one other national language (dialect and literary language), English and one other foreign language"', add
label define ch00a_langhome_lbl 340 `"Regional language (literary language) and two other national languages (dialect and/or literary language)"', add
label define ch00a_langhome_lbl 341 `"Regional language (literary language) and two other national languages (dialect and/or literary language) and English"', add
label define ch00a_langhome_lbl 342 `"Regional language (literary language) and two other national languages (dialect and/or literary language) and one other foreign language"', add
label define ch00a_langhome_lbl 343 `"Regional language (literary language) and two other national languages (dialect and/or literary language), English and one other foreign language"', add
label define ch00a_langhome_lbl 400 `"Regional language (dialect and literary language)"', add
label define ch00a_langhome_lbl 401 `"Regional language (dialect and literary language) and English"', add
label define ch00a_langhome_lbl 402 `"Regional language (dialect and literary language) and one other foreign language"', add
label define ch00a_langhome_lbl 403 `"Regional language (dialect and literary language), English and one other foreign language"', add
label define ch00a_langhome_lbl 410 `"Regional language (dialect and literary language) and one other national language (dialect)"', add
label define ch00a_langhome_lbl 411 `"Regional language (dialect and literary language), one other national language (dialect) and English"', add
label define ch00a_langhome_lbl 420 `"Regional language (dialect and literary language) and one other national language (literary language)"', add
label define ch00a_langhome_lbl 421 `"Regional language (dialect and literary language), one other national language (literary language) and English"', add
label define ch00a_langhome_lbl 422 `"Regional language (dialect and literary language), one other national language (literary language) and one other foreign language"', add
label define ch00a_langhome_lbl 423 `"Regional language (dialect and literary language), one other national language (literary language), English and one other foreign language"', add
label define ch00a_langhome_lbl 430 `"Regional language (dialect and literary language) and one other national language (dialect and literary language)"', add
label define ch00a_langhome_lbl 431 `"Regional language (dialect and literary language), one other national language (dialect and literary language) and English"', add
label define ch00a_langhome_lbl 440 `"Regional language (dialect and literary language) and two other national languages (dialect and/or literary language)"', add
label define ch00a_langhome_lbl 441 `"Regional language (dialect and literary language), two other national languages (dialect and/or literary language) and English"', add
label define ch00a_langhome_lbl 442 `"Regional language (dialect and literary language), two other national languages (dialect and/or literary language) and one foreign language"', add
label define ch00a_langhome_lbl 443 `"Regional language (dialect and literary language), two other national languages (dialect and/or literary language), English and one other foreign language"', add
label define ch00a_langhome_lbl 990 `"Response suppressed"', add
label define ch00a_langhome_lbl 998 `"Unknown"', add
label values ch00a_langhome ch00a_langhome_lbl

label define ch00a_langwksc_lbl 101 `"English only"'
label define ch00a_langwksc_lbl 102 `"Only one foreign language other than English"', add
label define ch00a_langwksc_lbl 103 `"English and one other foreign language"', add
label define ch00a_langwksc_lbl 110 `"One other national language (dialect)"', add
label define ch00a_langwksc_lbl 111 `"One other national language (dialect) and English"', add
label define ch00a_langwksc_lbl 120 `"One other national language (literary language)"', add
label define ch00a_langwksc_lbl 121 `"One other national language (literary language) and English"', add
label define ch00a_langwksc_lbl 122 `"One other national language (literary language) and one other foreign language"', add
label define ch00a_langwksc_lbl 123 `"One other national language (literary language), English and one other foreign language"', add
label define ch00a_langwksc_lbl 130 `"One other national language (dialect and literary language)"', add
label define ch00a_langwksc_lbl 131 `"One other national language (dialect and literary language) and English"', add
label define ch00a_langwksc_lbl 140 `"Two other national languages (dialect and/or literary language)"', add
label define ch00a_langwksc_lbl 141 `"Two other national languages (dialect and/or literary language) and English"', add
label define ch00a_langwksc_lbl 142 `"Two other national languages (dialect and/or literary language) and one other foreign language"', add
label define ch00a_langwksc_lbl 143 `"Two other national languages (dialect and/or literary language), English and one other foreign language"', add
label define ch00a_langwksc_lbl 200 `"Regional language (dialect)"', add
label define ch00a_langwksc_lbl 201 `"Regional language (dialect) and English"', add
label define ch00a_langwksc_lbl 202 `"Regional language (dialect) and one other foreign language"', add
label define ch00a_langwksc_lbl 203 `"Regional language (dialect), English and one other foreign language"', add
label define ch00a_langwksc_lbl 210 `"Regional language (dialect) and one other national language (dialect)"', add
label define ch00a_langwksc_lbl 211 `"Regional language (dialect), one other national language (dialect) and English"', add
label define ch00a_langwksc_lbl 220 `"Regional language (dialect) and one other national language (literary language)"', add
label define ch00a_langwksc_lbl 221 `"Regional language (dialect), one other national language (literary language) and English"', add
label define ch00a_langwksc_lbl 222 `"Regional language (dialect), one other national language (literary language) and one other foreign language"', add
label define ch00a_langwksc_lbl 223 `"Regional language (dialect), one other national language (literary language), English and one other foreign language"', add
label define ch00a_langwksc_lbl 230 `"Regional language (dialect) and one other national language (dialect and literary language)"', add
label define ch00a_langwksc_lbl 231 `"Regional language (dialect), one other national language (dialect and literary language) and English"', add
label define ch00a_langwksc_lbl 240 `"Regional language (dialect) and two other national language (dialect and/or literary language)"', add
label define ch00a_langwksc_lbl 241 `"Regional Language (dialect), two other national languages (dialect and/or literary language) and English"', add
label define ch00a_langwksc_lbl 242 `"Regional language (dialect), two other national languages (dialect and/or literary language) and one other foreign language"', add
label define ch00a_langwksc_lbl 243 `"Regional language (dialect), two other national languages (dialect and/or literary language), English and one other foreign language"', add
label define ch00a_langwksc_lbl 250 `"Regional language (dialect) and three other national languages (dialect and/or literary language)"', add
label define ch00a_langwksc_lbl 251 `"Regional language (dialect), three other national languages (dialect and/or literary language) and English"', add
label define ch00a_langwksc_lbl 300 `"Regional language (literary language)"', add
label define ch00a_langwksc_lbl 301 `"Regional language (literary language) and English"', add
label define ch00a_langwksc_lbl 302 `"Regional language (literary language) and one other foreign language"', add
label define ch00a_langwksc_lbl 303 `"Regional language (literary language), English and one other foreign language"', add
label define ch00a_langwksc_lbl 310 `"Regional language (literary language) and one other national language (dialect)"', add
label define ch00a_langwksc_lbl 311 `"Regional language (literary language), one other national language (dialect) and English"', add
label define ch00a_langwksc_lbl 312 `"Regional language (literary language), one other national language (dialect) and one other foreign language"', add
label define ch00a_langwksc_lbl 320 `"Regional language (literary language) and one other national language (literary language)"', add
label define ch00a_langwksc_lbl 321 `"Regional language (literary language), one other national language (literary language) and English"', add
label define ch00a_langwksc_lbl 322 `"Regional language (literary language), one other national language (literary language) and one other foreign language"', add
label define ch00a_langwksc_lbl 323 `"Regional language (literary language), one other national language (literary language), English and one other foreign language"', add
label define ch00a_langwksc_lbl 330 `"Regional language (literary language), one other national language (dialect and literary language)"', add
label define ch00a_langwksc_lbl 331 `"Regional language (literary language), one other national language (dialect and literary language) and English"', add
label define ch00a_langwksc_lbl 332 `"Regional language (literary language), one other national language (dialect and literary language) and one other foreign language"', add
label define ch00a_langwksc_lbl 333 `"Regional language (literary language), one other national language (dialect and literary language), English and one other foreign language"', add
label define ch00a_langwksc_lbl 340 `"Regional language (literary language) and two other national languages (dialect and/or literary language)"', add
label define ch00a_langwksc_lbl 341 `"Regional language (literary language) and two other national languages (dialect and/or literary language) and English"', add
label define ch00a_langwksc_lbl 342 `"Regional language (literary language) and two other national languages (dialect and/or literary language) and one other foreign language"', add
label define ch00a_langwksc_lbl 343 `"Regional language (literary language) and two other national languages (dialect and/or literary language), English and one other foreign language"', add
label define ch00a_langwksc_lbl 400 `"Regional language (dialect and literary language)"', add
label define ch00a_langwksc_lbl 401 `"Regional language (dialect and literary language) and English"', add
label define ch00a_langwksc_lbl 402 `"Regional language (dialect and literary language) and one other foreign language"', add
label define ch00a_langwksc_lbl 403 `"Regional language (dialect and literary language), English and one other foreign language"', add
label define ch00a_langwksc_lbl 410 `"Regional language (dialect and literary language) and one other national language (dialect)"', add
label define ch00a_langwksc_lbl 411 `"Regional language (dialect and literary language), one other national language (dialect) and English"', add
label define ch00a_langwksc_lbl 420 `"Regional language (dialect and literary language) and one other national language (literary language)"', add
label define ch00a_langwksc_lbl 421 `"Regional language (dialect and literary language), one other national language (literary language) and English"', add
label define ch00a_langwksc_lbl 422 `"Regional language (dialect and literary language), one other national language (literary language) and one other foreign language"', add
label define ch00a_langwksc_lbl 423 `"Regional language (dialect and literary language), one other national language (literary language), English and one other foreign language"', add
label define ch00a_langwksc_lbl 430 `"Regional language (dialect and literary language) and one other national language (dialect and literary language)"', add
label define ch00a_langwksc_lbl 431 `"Regional language (dialect and literary language), one other national language (dialect and literary language) and English"', add
label define ch00a_langwksc_lbl 433 `"Regional language (dialect and literary language), one other national language (dialect and literary language) English and one other foreign language"', add
label define ch00a_langwksc_lbl 440 `"Regional language (dialect and literary language) and two other national languages (dialect and/or literary language)"', add
label define ch00a_langwksc_lbl 441 `"Regional language (dialect and literary language), two other national languages (dialect and/or literary language) and English"', add
label define ch00a_langwksc_lbl 442 `"Regional language (dialect and literary language), two other national languages (dialect and/or literary language) and one foreign language"', add
label define ch00a_langwksc_lbl 443 `"Regional language (dialect and literary language), two other national languages (dialect and/or literary language), English and one other foreign language"', add
label define ch00a_langwksc_lbl 450 `"Regional language (dialect and literary language) and three other national languages (dialect and/or literary language)"', add
label define ch00a_langwksc_lbl 451 `"Regional language (dialect and literary language), three other national languages (dialect and/or literary language) and English"', add
label define ch00a_langwksc_lbl 453 `"Regional language (dialect and literary language), three other national languages (dialect and/or literary language), English and one other foreign language"', add
label define ch00a_langwksc_lbl 990 `"Response suppressed"', add
label define ch00a_langwksc_lbl 998 `"Unknown"', add
label define ch00a_langwksc_lbl 999 `"NIU (not in  universe)"', add
label values ch00a_langwksc ch00a_langwksc_lbl

label define ch00a_edattend_lbl 11 `"Mandatory school"'
label define ch00a_edattend_lbl 12 `"Middle school, preparatory trade school, or profession school"', add
label define ch00a_edattend_lbl 21 `"Apprentice, full time trade school"', add
label define ch00a_edattend_lbl 22 `"High school"', add
label define ch00a_edattend_lbl 23 `"Teacher training school"', add
label define ch00a_edattend_lbl 31 `"Advanced technical and professional training"', add
label define ch00a_edattend_lbl 32 `"Trade or professional school (3 year degree)"', add
label define ch00a_edattend_lbl 33 `"College"', add
label define ch00a_edattend_lbl 34 `"University"', add
label define ch00a_edattend_lbl 98 `"Unknown"', add
label define ch00a_edattend_lbl 99 `"NIU (not in  universe)"', add
label values ch00a_edattend ch00a_edattend_lbl

label define ch00a_empstat_lbl 111 `"Self-employed with employee(s)"'
label define ch00a_empstat_lbl 112 `"Self-employed with no employee(s)"', add
label define ch00a_empstat_lbl 113 `"Co-working family member"', add
label define ch00a_empstat_lbl 121 `"Employed in company management"', add
label define ch00a_empstat_lbl 122 `"Employee in own company"', add
label define ch00a_empstat_lbl 123 `"Employed who are mid- or lower-level executives"', add
label define ch00a_empstat_lbl 124 `"Employed in non-management"', add
label define ch00a_empstat_lbl 125 `"Apprentice"', add
label define ch00a_empstat_lbl 126 `"Employed not otherwise specified"', add
label define ch00a_empstat_lbl 130 `"Working population not otherwise specified"', add
label define ch00a_empstat_lbl 200 `"Unemployed"', add
label define ch00a_empstat_lbl 301 `"Not in labour force: in school or training"', add
label define ch00a_empstat_lbl 302 `"Not in labour force: volunteer work"', add
label define ch00a_empstat_lbl 303 `"Not in labour force: house work"', add
label define ch00a_empstat_lbl 304 `"Not in labour force: retired"', add
label define ch00a_empstat_lbl 305 `"Not in labour force: other"', add
label define ch00a_empstat_lbl 999 `"NIU (not in  universe)"', add
label values ch00a_empstat ch00a_empstat_lbl

label define ch00a_multactv_lbl 10 `"Full-time working population"'
label define ch00a_multactv_lbl 11 `"Part-time working population"', add
label define ch00a_multactv_lbl 12 `"Working population with several part-time jobs"', add
label define ch00a_multactv_lbl 13 `"Apprentices"', add
label define ch00a_multactv_lbl 14 `"Working population not otherwise specified"', add
label define ch00a_multactv_lbl 15 `"Unemployed"', add
label define ch00a_multactv_lbl 16 `"Non-working population in training"', add
label define ch00a_multactv_lbl 17 `"Non-working population performing non-profit work and/or household work"', add
label define ch00a_multactv_lbl 18 `"Non-working population living off of retirement or investment income"', add
label define ch00a_multactv_lbl 19 `"Other non-working"', add
label define ch00a_multactv_lbl 21 `"Full time working population and one or several part-time jobs"', add
label define ch00a_multactv_lbl 22 `"Full-time working population and unemployed"', add
label define ch00a_multactv_lbl 23 `"Part-time working population and unemployed"', add
label define ch00a_multactv_lbl 24 `"Working population with several part-time jobs and unemployed"', add
label define ch00a_multactv_lbl 25 `"Full-time working population and in training"', add
label define ch00a_multactv_lbl 26 `"Part-time working population and in training"', add
label define ch00a_multactv_lbl 27 `"Working population with several part-time jobs and in training"', add
label define ch00a_multactv_lbl 28 `"Unemployed and in training"', add
label define ch00a_multactv_lbl 32 `"Part-time working population, unemployed and in training"', add
label define ch00a_multactv_lbl 34 `"Full-time working population, one or several part-time jobs or in training"', add
label define ch00a_multactv_lbl 35 `"Other persons with three or more occupation statuses"', add
label define ch00a_multactv_lbl 99 `"NIU (not in  universe)"', add
label values ch00a_multactv ch00a_multactv_lbl

label define ch00a_homecare_lbl 1 `"No"'
label define ch00a_homecare_lbl 2 `"Yes"', add
label define ch00a_homecare_lbl 8 `"Unknown"', add
label define ch00a_homecare_lbl 9 `"NIU (not in  universe)"', add
label values ch00a_homecare ch00a_homecare_lbl

label define ch00a_voluntry_lbl 1 `"No"'
label define ch00a_voluntry_lbl 2 `"Yes"', add
label define ch00a_voluntry_lbl 8 `"Unknown"', add
label define ch00a_voluntry_lbl 9 `"NIU (not in  universe)"', add
label values ch00a_voluntry ch00a_voluntry_lbl

label define ch00a_hrsfull_lbl 000 `"No activity of this nature"'
label define ch00a_hrsfull_lbl 032 `"32"', add
label define ch00a_hrsfull_lbl 033 `"33"', add
label define ch00a_hrsfull_lbl 034 `"34"', add
label define ch00a_hrsfull_lbl 035 `"35"', add
label define ch00a_hrsfull_lbl 036 `"36"', add
label define ch00a_hrsfull_lbl 037 `"37"', add
label define ch00a_hrsfull_lbl 038 `"38"', add
label define ch00a_hrsfull_lbl 039 `"39"', add
label define ch00a_hrsfull_lbl 040 `"40"', add
label define ch00a_hrsfull_lbl 041 `"41"', add
label define ch00a_hrsfull_lbl 042 `"42"', add
label define ch00a_hrsfull_lbl 043 `"43"', add
label define ch00a_hrsfull_lbl 044 `"44"', add
label define ch00a_hrsfull_lbl 045 `"45"', add
label define ch00a_hrsfull_lbl 046 `"46"', add
label define ch00a_hrsfull_lbl 047 `"47"', add
label define ch00a_hrsfull_lbl 048 `"48"', add
label define ch00a_hrsfull_lbl 049 `"49"', add
label define ch00a_hrsfull_lbl 050 `"50"', add
label define ch00a_hrsfull_lbl 051 `"51"', add
label define ch00a_hrsfull_lbl 052 `"52"', add
label define ch00a_hrsfull_lbl 053 `"53"', add
label define ch00a_hrsfull_lbl 054 `"54"', add
label define ch00a_hrsfull_lbl 055 `"55"', add
label define ch00a_hrsfull_lbl 056 `"56"', add
label define ch00a_hrsfull_lbl 057 `"57"', add
label define ch00a_hrsfull_lbl 058 `"58"', add
label define ch00a_hrsfull_lbl 059 `"59"', add
label define ch00a_hrsfull_lbl 060 `"60"', add
label define ch00a_hrsfull_lbl 061 `"61"', add
label define ch00a_hrsfull_lbl 062 `"62"', add
label define ch00a_hrsfull_lbl 063 `"63"', add
label define ch00a_hrsfull_lbl 064 `"64"', add
label define ch00a_hrsfull_lbl 065 `"65"', add
label define ch00a_hrsfull_lbl 066 `"66"', add
label define ch00a_hrsfull_lbl 067 `"67"', add
label define ch00a_hrsfull_lbl 068 `"68"', add
label define ch00a_hrsfull_lbl 069 `"69"', add
label define ch00a_hrsfull_lbl 070 `"70"', add
label define ch00a_hrsfull_lbl 071 `"71"', add
label define ch00a_hrsfull_lbl 072 `"72"', add
label define ch00a_hrsfull_lbl 073 `"73"', add
label define ch00a_hrsfull_lbl 074 `"74"', add
label define ch00a_hrsfull_lbl 075 `"75"', add
label define ch00a_hrsfull_lbl 076 `"76"', add
label define ch00a_hrsfull_lbl 077 `"77"', add
label define ch00a_hrsfull_lbl 078 `"78"', add
label define ch00a_hrsfull_lbl 079 `"79"', add
label define ch00a_hrsfull_lbl 080 `"80"', add
label define ch00a_hrsfull_lbl 081 `"81"', add
label define ch00a_hrsfull_lbl 082 `"82"', add
label define ch00a_hrsfull_lbl 083 `"83"', add
label define ch00a_hrsfull_lbl 084 `"84"', add
label define ch00a_hrsfull_lbl 085 `"85"', add
label define ch00a_hrsfull_lbl 086 `"86"', add
label define ch00a_hrsfull_lbl 087 `"87"', add
label define ch00a_hrsfull_lbl 088 `"88"', add
label define ch00a_hrsfull_lbl 089 `"89"', add
label define ch00a_hrsfull_lbl 090 `"90"', add
label define ch00a_hrsfull_lbl 091 `"91"', add
label define ch00a_hrsfull_lbl 092 `"92"', add
label define ch00a_hrsfull_lbl 093 `"93"', add
label define ch00a_hrsfull_lbl 094 `"94"', add
label define ch00a_hrsfull_lbl 095 `"95"', add
label define ch00a_hrsfull_lbl 096 `"96"', add
label define ch00a_hrsfull_lbl 097 `"97"', add
label define ch00a_hrsfull_lbl 098 `"98"', add
label define ch00a_hrsfull_lbl 998 `"Unknown"', add
label define ch00a_hrsfull_lbl 999 `"NIU (not in  universe)"', add
label values ch00a_hrsfull ch00a_hrsfull_lbl

label define ch00a_hrspart_lbl 00 `"No activity of this nature"'
label define ch00a_hrspart_lbl 01 `"1"', add
label define ch00a_hrspart_lbl 02 `"2"', add
label define ch00a_hrspart_lbl 03 `"3"', add
label define ch00a_hrspart_lbl 04 `"4"', add
label define ch00a_hrspart_lbl 05 `"5"', add
label define ch00a_hrspart_lbl 06 `"6"', add
label define ch00a_hrspart_lbl 07 `"7"', add
label define ch00a_hrspart_lbl 08 `"8"', add
label define ch00a_hrspart_lbl 09 `"9"', add
label define ch00a_hrspart_lbl 10 `"10"', add
label define ch00a_hrspart_lbl 11 `"11"', add
label define ch00a_hrspart_lbl 12 `"12"', add
label define ch00a_hrspart_lbl 13 `"13"', add
label define ch00a_hrspart_lbl 14 `"14"', add
label define ch00a_hrspart_lbl 15 `"15"', add
label define ch00a_hrspart_lbl 16 `"16"', add
label define ch00a_hrspart_lbl 17 `"17"', add
label define ch00a_hrspart_lbl 18 `"18"', add
label define ch00a_hrspart_lbl 19 `"19"', add
label define ch00a_hrspart_lbl 20 `"20"', add
label define ch00a_hrspart_lbl 21 `"21"', add
label define ch00a_hrspart_lbl 22 `"22"', add
label define ch00a_hrspart_lbl 23 `"23"', add
label define ch00a_hrspart_lbl 24 `"24"', add
label define ch00a_hrspart_lbl 25 `"25"', add
label define ch00a_hrspart_lbl 26 `"26"', add
label define ch00a_hrspart_lbl 27 `"27"', add
label define ch00a_hrspart_lbl 28 `"28"', add
label define ch00a_hrspart_lbl 29 `"29"', add
label define ch00a_hrspart_lbl 30 `"30"', add
label define ch00a_hrspart_lbl 31 `"31"', add
label define ch00a_hrspart_lbl 32 `"32"', add
label define ch00a_hrspart_lbl 33 `"33"', add
label define ch00a_hrspart_lbl 34 `"34"', add
label define ch00a_hrspart_lbl 35 `"35"', add
label define ch00a_hrspart_lbl 36 `"36"', add
label define ch00a_hrspart_lbl 37 `"37"', add
label define ch00a_hrspart_lbl 38 `"38"', add
label define ch00a_hrspart_lbl 39 `"39"', add
label define ch00a_hrspart_lbl 40 `"40"', add
label define ch00a_hrspart_lbl 41 `"41"', add
label define ch00a_hrspart_lbl 42 `"42"', add
label define ch00a_hrspart_lbl 43 `"43"', add
label define ch00a_hrspart_lbl 44 `"44"', add
label define ch00a_hrspart_lbl 45 `"45"', add
label define ch00a_hrspart_lbl 46 `"46"', add
label define ch00a_hrspart_lbl 47 `"47"', add
label define ch00a_hrspart_lbl 48 `"48"', add
label define ch00a_hrspart_lbl 49 `"49"', add
label define ch00a_hrspart_lbl 50 `"50"', add
label define ch00a_hrspart_lbl 51 `"51"', add
label define ch00a_hrspart_lbl 52 `"52"', add
label define ch00a_hrspart_lbl 53 `"53"', add
label define ch00a_hrspart_lbl 54 `"54"', add
label define ch00a_hrspart_lbl 55 `"55"', add
label define ch00a_hrspart_lbl 56 `"56"', add
label define ch00a_hrspart_lbl 57 `"57"', add
label define ch00a_hrspart_lbl 58 `"58"', add
label define ch00a_hrspart_lbl 59 `"59"', add
label define ch00a_hrspart_lbl 60 `"60+"', add
label define ch00a_hrspart_lbl 98 `"Unknown"', add
label define ch00a_hrspart_lbl 99 `"NIU (not in  universe)"', add
label values ch00a_hrspart ch00a_hrspart_lbl

label define ch00a_hrseduc_lbl 00 `"No activity of this nature"'
label define ch00a_hrseduc_lbl 01 `"1"', add
label define ch00a_hrseduc_lbl 02 `"2"', add
label define ch00a_hrseduc_lbl 03 `"3"', add
label define ch00a_hrseduc_lbl 04 `"4"', add
label define ch00a_hrseduc_lbl 05 `"5"', add
label define ch00a_hrseduc_lbl 06 `"6"', add
label define ch00a_hrseduc_lbl 07 `"7"', add
label define ch00a_hrseduc_lbl 08 `"8"', add
label define ch00a_hrseduc_lbl 09 `"9"', add
label define ch00a_hrseduc_lbl 10 `"10"', add
label define ch00a_hrseduc_lbl 11 `"11"', add
label define ch00a_hrseduc_lbl 12 `"12"', add
label define ch00a_hrseduc_lbl 13 `"13"', add
label define ch00a_hrseduc_lbl 14 `"14"', add
label define ch00a_hrseduc_lbl 15 `"15"', add
label define ch00a_hrseduc_lbl 16 `"16"', add
label define ch00a_hrseduc_lbl 17 `"17"', add
label define ch00a_hrseduc_lbl 18 `"18"', add
label define ch00a_hrseduc_lbl 19 `"19"', add
label define ch00a_hrseduc_lbl 20 `"20"', add
label define ch00a_hrseduc_lbl 21 `"21"', add
label define ch00a_hrseduc_lbl 22 `"22"', add
label define ch00a_hrseduc_lbl 23 `"23"', add
label define ch00a_hrseduc_lbl 24 `"24"', add
label define ch00a_hrseduc_lbl 25 `"25"', add
label define ch00a_hrseduc_lbl 26 `"26"', add
label define ch00a_hrseduc_lbl 27 `"27"', add
label define ch00a_hrseduc_lbl 28 `"28"', add
label define ch00a_hrseduc_lbl 29 `"29"', add
label define ch00a_hrseduc_lbl 30 `"30"', add
label define ch00a_hrseduc_lbl 31 `"31"', add
label define ch00a_hrseduc_lbl 32 `"32"', add
label define ch00a_hrseduc_lbl 33 `"33"', add
label define ch00a_hrseduc_lbl 34 `"34"', add
label define ch00a_hrseduc_lbl 35 `"35"', add
label define ch00a_hrseduc_lbl 36 `"36"', add
label define ch00a_hrseduc_lbl 37 `"37"', add
label define ch00a_hrseduc_lbl 38 `"38"', add
label define ch00a_hrseduc_lbl 39 `"39"', add
label define ch00a_hrseduc_lbl 40 `"40"', add
label define ch00a_hrseduc_lbl 41 `"41"', add
label define ch00a_hrseduc_lbl 42 `"42"', add
label define ch00a_hrseduc_lbl 43 `"43"', add
label define ch00a_hrseduc_lbl 44 `"44"', add
label define ch00a_hrseduc_lbl 45 `"45"', add
label define ch00a_hrseduc_lbl 46 `"46"', add
label define ch00a_hrseduc_lbl 47 `"47"', add
label define ch00a_hrseduc_lbl 48 `"48"', add
label define ch00a_hrseduc_lbl 49 `"49"', add
label define ch00a_hrseduc_lbl 50 `"50"', add
label define ch00a_hrseduc_lbl 51 `"51"', add
label define ch00a_hrseduc_lbl 52 `"52"', add
label define ch00a_hrseduc_lbl 53 `"53"', add
label define ch00a_hrseduc_lbl 54 `"54"', add
label define ch00a_hrseduc_lbl 55 `"55"', add
label define ch00a_hrseduc_lbl 56 `"56"', add
label define ch00a_hrseduc_lbl 57 `"57"', add
label define ch00a_hrseduc_lbl 58 `"58"', add
label define ch00a_hrseduc_lbl 59 `"59"', add
label define ch00a_hrseduc_lbl 60 `"60+"', add
label define ch00a_hrseduc_lbl 98 `"Unknown"', add
label define ch00a_hrseduc_lbl 99 `"NIU (not in  universe)"', add
label values ch00a_hrseduc ch00a_hrseduc_lbl

label define ch00a_hrshomwk_lbl 000 `"No activity of this nature"'
label define ch00a_hrshomwk_lbl 001 `"1"', add
label define ch00a_hrshomwk_lbl 002 `"2"', add
label define ch00a_hrshomwk_lbl 003 `"3"', add
label define ch00a_hrshomwk_lbl 004 `"4"', add
label define ch00a_hrshomwk_lbl 005 `"5"', add
label define ch00a_hrshomwk_lbl 006 `"6"', add
label define ch00a_hrshomwk_lbl 007 `"7"', add
label define ch00a_hrshomwk_lbl 008 `"8"', add
label define ch00a_hrshomwk_lbl 009 `"9"', add
label define ch00a_hrshomwk_lbl 010 `"10"', add
label define ch00a_hrshomwk_lbl 011 `"11"', add
label define ch00a_hrshomwk_lbl 012 `"12"', add
label define ch00a_hrshomwk_lbl 013 `"13"', add
label define ch00a_hrshomwk_lbl 014 `"14"', add
label define ch00a_hrshomwk_lbl 015 `"15"', add
label define ch00a_hrshomwk_lbl 016 `"16"', add
label define ch00a_hrshomwk_lbl 017 `"17"', add
label define ch00a_hrshomwk_lbl 018 `"18"', add
label define ch00a_hrshomwk_lbl 019 `"19"', add
label define ch00a_hrshomwk_lbl 020 `"20"', add
label define ch00a_hrshomwk_lbl 021 `"21"', add
label define ch00a_hrshomwk_lbl 022 `"22"', add
label define ch00a_hrshomwk_lbl 023 `"23"', add
label define ch00a_hrshomwk_lbl 024 `"24"', add
label define ch00a_hrshomwk_lbl 025 `"25"', add
label define ch00a_hrshomwk_lbl 026 `"26"', add
label define ch00a_hrshomwk_lbl 027 `"27"', add
label define ch00a_hrshomwk_lbl 028 `"28"', add
label define ch00a_hrshomwk_lbl 029 `"29"', add
label define ch00a_hrshomwk_lbl 030 `"30"', add
label define ch00a_hrshomwk_lbl 031 `"31"', add
label define ch00a_hrshomwk_lbl 032 `"32"', add
label define ch00a_hrshomwk_lbl 033 `"33"', add
label define ch00a_hrshomwk_lbl 034 `"34"', add
label define ch00a_hrshomwk_lbl 035 `"35"', add
label define ch00a_hrshomwk_lbl 036 `"36"', add
label define ch00a_hrshomwk_lbl 037 `"37"', add
label define ch00a_hrshomwk_lbl 038 `"38"', add
label define ch00a_hrshomwk_lbl 039 `"39"', add
label define ch00a_hrshomwk_lbl 040 `"40"', add
label define ch00a_hrshomwk_lbl 041 `"41"', add
label define ch00a_hrshomwk_lbl 042 `"42"', add
label define ch00a_hrshomwk_lbl 043 `"43"', add
label define ch00a_hrshomwk_lbl 044 `"44"', add
label define ch00a_hrshomwk_lbl 045 `"45"', add
label define ch00a_hrshomwk_lbl 046 `"46"', add
label define ch00a_hrshomwk_lbl 047 `"47"', add
label define ch00a_hrshomwk_lbl 048 `"48"', add
label define ch00a_hrshomwk_lbl 049 `"49"', add
label define ch00a_hrshomwk_lbl 050 `"50"', add
label define ch00a_hrshomwk_lbl 051 `"51"', add
label define ch00a_hrshomwk_lbl 052 `"52"', add
label define ch00a_hrshomwk_lbl 053 `"53"', add
label define ch00a_hrshomwk_lbl 054 `"54"', add
label define ch00a_hrshomwk_lbl 055 `"55"', add
label define ch00a_hrshomwk_lbl 056 `"56"', add
label define ch00a_hrshomwk_lbl 057 `"57"', add
label define ch00a_hrshomwk_lbl 058 `"58"', add
label define ch00a_hrshomwk_lbl 059 `"59"', add
label define ch00a_hrshomwk_lbl 060 `"60"', add
label define ch00a_hrshomwk_lbl 061 `"61"', add
label define ch00a_hrshomwk_lbl 062 `"62"', add
label define ch00a_hrshomwk_lbl 063 `"63"', add
label define ch00a_hrshomwk_lbl 064 `"64"', add
label define ch00a_hrshomwk_lbl 065 `"65"', add
label define ch00a_hrshomwk_lbl 066 `"66"', add
label define ch00a_hrshomwk_lbl 067 `"67"', add
label define ch00a_hrshomwk_lbl 068 `"68"', add
label define ch00a_hrshomwk_lbl 069 `"69"', add
label define ch00a_hrshomwk_lbl 070 `"70"', add
label define ch00a_hrshomwk_lbl 071 `"71"', add
label define ch00a_hrshomwk_lbl 072 `"72"', add
label define ch00a_hrshomwk_lbl 073 `"73"', add
label define ch00a_hrshomwk_lbl 074 `"74"', add
label define ch00a_hrshomwk_lbl 075 `"75"', add
label define ch00a_hrshomwk_lbl 076 `"76"', add
label define ch00a_hrshomwk_lbl 077 `"77"', add
label define ch00a_hrshomwk_lbl 078 `"78"', add
label define ch00a_hrshomwk_lbl 079 `"79"', add
label define ch00a_hrshomwk_lbl 080 `"80"', add
label define ch00a_hrshomwk_lbl 081 `"81"', add
label define ch00a_hrshomwk_lbl 082 `"82"', add
label define ch00a_hrshomwk_lbl 083 `"83"', add
label define ch00a_hrshomwk_lbl 084 `"84"', add
label define ch00a_hrshomwk_lbl 085 `"85"', add
label define ch00a_hrshomwk_lbl 086 `"86"', add
label define ch00a_hrshomwk_lbl 087 `"87"', add
label define ch00a_hrshomwk_lbl 088 `"88"', add
label define ch00a_hrshomwk_lbl 089 `"89"', add
label define ch00a_hrshomwk_lbl 090 `"90"', add
label define ch00a_hrshomwk_lbl 091 `"91"', add
label define ch00a_hrshomwk_lbl 092 `"92"', add
label define ch00a_hrshomwk_lbl 093 `"93"', add
label define ch00a_hrshomwk_lbl 094 `"94"', add
label define ch00a_hrshomwk_lbl 095 `"95"', add
label define ch00a_hrshomwk_lbl 096 `"96"', add
label define ch00a_hrshomwk_lbl 097 `"97"', add
label define ch00a_hrshomwk_lbl 098 `"98+"', add
label define ch00a_hrshomwk_lbl 998 `"Unknown"', add
label define ch00a_hrshomwk_lbl 999 `"Person under age 15"', add
label values ch00a_hrshomwk ch00a_hrshomwk_lbl

label define ch00a_hrsvolun_lbl 00 `"No activity of this nature"'
label define ch00a_hrsvolun_lbl 01 `"1"', add
label define ch00a_hrsvolun_lbl 02 `"2"', add
label define ch00a_hrsvolun_lbl 03 `"3"', add
label define ch00a_hrsvolun_lbl 04 `"4"', add
label define ch00a_hrsvolun_lbl 05 `"5"', add
label define ch00a_hrsvolun_lbl 06 `"6"', add
label define ch00a_hrsvolun_lbl 07 `"7"', add
label define ch00a_hrsvolun_lbl 08 `"8"', add
label define ch00a_hrsvolun_lbl 09 `"9"', add
label define ch00a_hrsvolun_lbl 10 `"10"', add
label define ch00a_hrsvolun_lbl 11 `"11"', add
label define ch00a_hrsvolun_lbl 12 `"12"', add
label define ch00a_hrsvolun_lbl 13 `"13"', add
label define ch00a_hrsvolun_lbl 14 `"14"', add
label define ch00a_hrsvolun_lbl 15 `"15"', add
label define ch00a_hrsvolun_lbl 16 `"16"', add
label define ch00a_hrsvolun_lbl 17 `"17"', add
label define ch00a_hrsvolun_lbl 18 `"18"', add
label define ch00a_hrsvolun_lbl 19 `"19"', add
label define ch00a_hrsvolun_lbl 20 `"20"', add
label define ch00a_hrsvolun_lbl 21 `"21"', add
label define ch00a_hrsvolun_lbl 22 `"22"', add
label define ch00a_hrsvolun_lbl 23 `"23"', add
label define ch00a_hrsvolun_lbl 24 `"24"', add
label define ch00a_hrsvolun_lbl 25 `"25"', add
label define ch00a_hrsvolun_lbl 26 `"26"', add
label define ch00a_hrsvolun_lbl 27 `"27"', add
label define ch00a_hrsvolun_lbl 28 `"28"', add
label define ch00a_hrsvolun_lbl 29 `"29"', add
label define ch00a_hrsvolun_lbl 30 `"30"', add
label define ch00a_hrsvolun_lbl 31 `"31"', add
label define ch00a_hrsvolun_lbl 32 `"32"', add
label define ch00a_hrsvolun_lbl 33 `"33"', add
label define ch00a_hrsvolun_lbl 34 `"34"', add
label define ch00a_hrsvolun_lbl 35 `"35"', add
label define ch00a_hrsvolun_lbl 36 `"36"', add
label define ch00a_hrsvolun_lbl 37 `"37"', add
label define ch00a_hrsvolun_lbl 38 `"38"', add
label define ch00a_hrsvolun_lbl 39 `"39"', add
label define ch00a_hrsvolun_lbl 40 `"40+"', add
label define ch00a_hrsvolun_lbl 98 `"Unknown"', add
label define ch00a_hrsvolun_lbl 99 `"NIU (not in  universe)"', add
label values ch00a_hrsvolun ch00a_hrsvolun_lbl

label define ch00a_commwork_lbl 1 `"Commutes"'
label define ch00a_commwork_lbl 2 `"Works in home community"', add
label define ch00a_commwork_lbl 3 `"No fixed place of work"', add
label define ch00a_commwork_lbl 8 `"Unknown"', add
label define ch00a_commwork_lbl 9 `"NIU (not in  universe)"', add
label values ch00a_commwork ch00a_commwork_lbl

label define ch00a_commschl_lbl 1 `"Commutes"'
label define ch00a_commschl_lbl 2 `"Education or training in home community"', add
label define ch00a_commschl_lbl 8 `"Unknown"', add
label define ch00a_commschl_lbl 9 `"NIU (not in  universe)"', add
label values ch00a_commschl ch00a_commschl_lbl


