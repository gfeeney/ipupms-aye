* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    cl02a_dwnum     22-28    ///
  byte    cl02a_hhnum     29-30    ///
  byte    cl02a_hhn       31-32    ///
  byte    cl02a_pernd     33-34    ///
  byte    cl02a_pern      35-36    ///
  byte    cl02a_fbig      37-37    ///
  byte    cl02a_region    38-39    ///
  byte    cl02a_urban2    40-40    ///
  byte    cl02a_dwtype    41-42    ///
  byte    cl02a_occupan   43-43    ///
  byte    cl02a_owner     44-44    ///
  byte    cl02a_wall      45-45    ///
  byte    cl02a_roof      46-46    ///
  byte    cl02a_floor     47-47    ///
  byte    cl02a_elect     48-48    ///
  byte    cl02a_watsrc    49-49    ///
  byte    cl02a_watpip    50-50    ///
  byte    cl02a_toilet    51-51    ///
  byte    cl02a_nshowers  52-52    ///
  byte    cl02a_rooms     53-54    ///
  byte    cl02a_hhno      55-56    ///
  byte    cl02a_rmbed     57-58    ///
  byte    cl02a_rmlivdin  59-60    ///
  byte    cl02a_rmlive    61-62    ///
  byte    cl02a_rmdine    63-64    ///
  byte    cl02a_rmkitch   65-66    ///
  byte    cl02a_rmwork    67-68    ///
  byte    cl02a_rmstudy   69-70    ///
  byte    cl02a_rmother   71-72    ///
  byte    cl02a_fuelcook  73-73    ///
  byte    cl02a_rmsleep   74-75    ///
  byte    cl02a_shower    76-76    ///
  byte    cl02a_tvbw      77-77    ///
  byte    cl02a_tvcol     78-78    ///
  byte    cl02a_vcr       79-79    ///
  byte    cl02a_tvcable   80-80    ///
  byte    cl02a_stereo    81-81    ///
  byte    cl02a_washer    82-82    ///
  byte    cl02a_dryer     83-83    ///
  byte    cl02a_refrig    84-84    ///
  byte    cl02a_freez     85-85    ///
  byte    cl02a_micro     86-86    ///
  byte    cl02a_dishw     87-87    ///
  byte    cl02a_hotwat    88-88    ///
  byte    cl02a_cellph    89-89    ///
  byte    cl02a_phone     90-90    ///
  byte    cl02a_computr   91-91    ///
  byte    cl02a_internet  92-92    ///
  byte    cl02a_bike      93-93    ///
  byte    cl02a_motocy    94-94    ///
  byte    cl02a_van       95-95    ///
  byte    cl02a_auto      96-96    ///
  byte    cl02a_truck     97-97    ///
  byte    cl02a_boat      98-98    ///
  byte    cl02a_hhtype    99-99    ///
  byte    cl02a_hhstat    100-100  ///
  byte    cl02a_hhnumo    101-101  ///
  int     pernum          102-104  ///
  float   wtper           105-112  ///
  byte    cl02a_pernum    113-114  ///
  byte    cl02a_relate    115-116  ///
  byte    cl02a_sex       117-117  ///
  int     cl02a_age       118-120  ///
  byte    cl02a_blind     121-121  ///
  byte    cl02a_deaf      122-122  ///
  byte    cl02a_mute      123-123  ///
  byte    cl02a_paral     124-124  ///
  byte    cl02a_mental    125-125  ///
  byte    cl02a_indig     126-126  ///
  byte    cl02a_bplhere   127-127  ///
  long    cl02a_bpl       128-132  ///
  int     cl02a_yrarrive  133-136  ///
  byte    cl02a_reshere   137-137  ///
  byte    cl02a_res5here  138-138  ///
  long    cl02a_res5      139-143  ///
  byte    cl02a_lit       144-144  ///
  byte    cl02a_edlevel   145-146  ///
  byte    cl02a_grade     147-147  ///
  int     cl02a_edattain  148-150  ///
  byte    cl02a_marst     151-151  ///
  byte    cl02a_relig     152-152  ///
  byte    cl02a_empstat   153-154  ///
  byte    cl02a_classwk   155-155  ///
  byte    cl02a_workhere  156-156  ///
  byte    cl02a_chborn    157-158  ///
  byte    cl02a_chsurv    159-160  ///
  byte    cl02a_lstmonth  161-162  ///
  int     cl02a_lstyear   163-166  ///
  byte    cl02a_yrschool  167-168  ///
  byte    cl02a_disab     169-169  ///
  byte    cl02a_occ       170-171  ///
  byte    cl02a_ind       172-173  ///
  byte    cl02a_disabno   174-174  ///
  using `"ipumsi_00061.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var cl02a_dwnum    `"Dwelling number"'
label var cl02a_hhnum    `"Household number (within dwelling)"'
label var cl02a_hhn      `"Number of households in dwelling"'
label var cl02a_pernd    `"Number of persons in dwelling"'
label var cl02a_pern     `"Number of persons in household"'
label var cl02a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var cl02a_region   `"Region"'
label var cl02a_urban2   `"Urban-rural area"'
label var cl02a_dwtype   `"Dwelling type"'
label var cl02a_occupan  `"Occupancy"'
label var cl02a_owner    `"Ownership/tenure of the dwelling"'
label var cl02a_wall     `"Exterior walls"'
label var cl02a_roof     `"Roof"'
label var cl02a_floor    `"Floor"'
label var cl02a_elect    `"Source of electric lighting"'
label var cl02a_watsrc   `"Source of water"'
label var cl02a_watpip   `"Piped water"'
label var cl02a_toilet   `"Availability of toilet facilities"'
label var cl02a_nshowers `"Number ofshowers"'
label var cl02a_rooms    `"Total rooms (including kitchen, not including baths)"'
label var cl02a_hhno     `"Number of households"'
label var cl02a_rmbed    `"Number of bedrooms"'
label var cl02a_rmlivdin `"Number of exclusive living-dining rooms"'
label var cl02a_rmlive   `"Number of exclusive living rooms"'
label var cl02a_rmdine   `"Number of exclusive dining rooms"'
label var cl02a_rmkitch  `"Number of exclusive kitchens"'
label var cl02a_rmwork   `"Number of rooms used for paid work"'
label var cl02a_rmstudy  `"Number of studies"'
label var cl02a_rmother  `"Total other rooms"'
label var cl02a_fuelcook `"Type of fuel used for cooking"'
label var cl02a_rmsleep  `"Number of rooms used exclusively for sleeping"'
label var cl02a_shower   `"Availability of shower"'
label var cl02a_tvbw     `"Black and white television"'
label var cl02a_tvcol    `"Color television"'
label var cl02a_vcr      `"Videorecorder or player"'
label var cl02a_tvcable  `"Cable television or satellite connection"'
label var cl02a_stereo   `"Stereo system or high-fidelity sound system"'
label var cl02a_washer   `"Washing machine"'
label var cl02a_dryer    `"Dryer or centrifuge"'
label var cl02a_refrig   `"Refrigerator"'
label var cl02a_freez    `"Freezer"'
label var cl02a_micro    `"Microwave oven"'
label var cl02a_dishw    `"Dishwasher"'
label var cl02a_hotwat   `"Hot water heater"'
label var cl02a_cellph   `"Cellular telephone"'
label var cl02a_phone    `"Fixed-line telephone"'
label var cl02a_computr  `"Computer"'
label var cl02a_internet `"Internet connection"'
label var cl02a_bike     `"Bicycle"'
label var cl02a_motocy   `"Motorcycle, motorscooter, moped"'
label var cl02a_van      `"Van"'
label var cl02a_auto     `"Automobile, station wagon"'
label var cl02a_truck    `"Light truck, van, jeep"'
label var cl02a_boat     `"Motorboat, sailboat, boat"'
label var cl02a_hhtype   `"Household type"'
label var cl02a_hhstat   `"Household status (complete/incomplete)"'
label var cl02a_hhnumo   `"Household order number"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var cl02a_pernum   `"Person number (within household)"'
label var cl02a_relate   `"Relationship to head of household"'
label var cl02a_sex      `"Sex"'
label var cl02a_age      `"Age"'
label var cl02a_blind    `"Blindness"'
label var cl02a_deaf     `"Deafness"'
label var cl02a_mute     `"Muteness"'
label var cl02a_paral    `"Loss of limb/paralysis"'
label var cl02a_mental   `"Mental deficiency"'
label var cl02a_indig    `"Member of an indigenous group"'
label var cl02a_bplhere  `"Born in this municipality"'
label var cl02a_bpl      `"Municipality or country of birth"'
label var cl02a_yrarrive `"Year of arrival in the country"'
label var cl02a_reshere  `"Usually resides in this municipality"'
label var cl02a_res5here `"Resided in this municipality in 1997"'
label var cl02a_res5     `"Municipality or country of residence in 1997"'
label var cl02a_lit      `"Able to read and write"'
label var cl02a_edlevel  `"Highest level of formal schooling completed"'
label var cl02a_grade    `"Years completed at highest level of schooling"'
label var cl02a_edattain `"Educational attainment"'
label var cl02a_marst    `"Marital status"'
label var cl02a_relig    `"Religion"'
label var cl02a_empstat  `"Employment status last week"'
label var cl02a_classwk  `"Class of worker"'
label var cl02a_workhere `"Working or attending school in this comuna"'
label var cl02a_chborn   `"Children ever born"'
label var cl02a_chsurv   `"Children currently alive"'
label var cl02a_lstmonth `"Month of birth of last child born alive"'
label var cl02a_lstyear  `"Year of birth of last child born alive"'
label var cl02a_yrschool `"Years of schooling"'
label var cl02a_disab    `"Disability"'
label var cl02a_occ      `"Occupation"'
label var cl02a_ind      `"Industry"'
label var cl02a_disabno  `"Without disability"'

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

label define cl02a_hhnum_lbl 01 `"1"'
label define cl02a_hhnum_lbl 02 `"2"', add
label define cl02a_hhnum_lbl 03 `"3"', add
label define cl02a_hhnum_lbl 04 `"4"', add
label define cl02a_hhnum_lbl 05 `"5"', add
label define cl02a_hhnum_lbl 06 `"6"', add
label define cl02a_hhnum_lbl 07 `"7"', add
label define cl02a_hhnum_lbl 08 `"8"', add
label define cl02a_hhnum_lbl 09 `"9"', add
label define cl02a_hhnum_lbl 10 `"10"', add
label define cl02a_hhnum_lbl 11 `"11"', add
label define cl02a_hhnum_lbl 12 `"12"', add
label values cl02a_hhnum cl02a_hhnum_lbl

label define cl02a_hhn_lbl 01 `"1"'
label define cl02a_hhn_lbl 02 `"2"', add
label define cl02a_hhn_lbl 03 `"3"', add
label define cl02a_hhn_lbl 04 `"4"', add
label define cl02a_hhn_lbl 05 `"5"', add
label define cl02a_hhn_lbl 06 `"6"', add
label define cl02a_hhn_lbl 07 `"7"', add
label define cl02a_hhn_lbl 08 `"8"', add
label define cl02a_hhn_lbl 09 `"9"', add
label define cl02a_hhn_lbl 10 `"10"', add
label define cl02a_hhn_lbl 11 `"11"', add
label define cl02a_hhn_lbl 12 `"12"', add
label values cl02a_hhn cl02a_hhn_lbl

label define cl02a_pernd_lbl 00 `"0"'
label define cl02a_pernd_lbl 01 `"1"', add
label define cl02a_pernd_lbl 02 `"2"', add
label define cl02a_pernd_lbl 03 `"3"', add
label define cl02a_pernd_lbl 04 `"4"', add
label define cl02a_pernd_lbl 05 `"5"', add
label define cl02a_pernd_lbl 06 `"6"', add
label define cl02a_pernd_lbl 07 `"7"', add
label define cl02a_pernd_lbl 08 `"8"', add
label define cl02a_pernd_lbl 09 `"9"', add
label define cl02a_pernd_lbl 10 `"10"', add
label define cl02a_pernd_lbl 11 `"11"', add
label define cl02a_pernd_lbl 12 `"12"', add
label define cl02a_pernd_lbl 13 `"13"', add
label define cl02a_pernd_lbl 14 `"14"', add
label define cl02a_pernd_lbl 15 `"15"', add
label define cl02a_pernd_lbl 16 `"16"', add
label define cl02a_pernd_lbl 17 `"17"', add
label define cl02a_pernd_lbl 18 `"18"', add
label define cl02a_pernd_lbl 19 `"19"', add
label define cl02a_pernd_lbl 20 `"20"', add
label define cl02a_pernd_lbl 21 `"21"', add
label define cl02a_pernd_lbl 22 `"22"', add
label define cl02a_pernd_lbl 23 `"23"', add
label define cl02a_pernd_lbl 24 `"24"', add
label define cl02a_pernd_lbl 25 `"25"', add
label define cl02a_pernd_lbl 26 `"26"', add
label define cl02a_pernd_lbl 27 `"27"', add
label define cl02a_pernd_lbl 28 `"28"', add
label define cl02a_pernd_lbl 29 `"29"', add
label define cl02a_pernd_lbl 30 `"30"', add
label values cl02a_pernd cl02a_pernd_lbl

label define cl02a_pern_lbl 00 `"0"'
label define cl02a_pern_lbl 01 `"1"', add
label define cl02a_pern_lbl 02 `"2"', add
label define cl02a_pern_lbl 03 `"3"', add
label define cl02a_pern_lbl 04 `"4"', add
label define cl02a_pern_lbl 05 `"5"', add
label define cl02a_pern_lbl 06 `"6"', add
label define cl02a_pern_lbl 07 `"7"', add
label define cl02a_pern_lbl 08 `"8"', add
label define cl02a_pern_lbl 09 `"9"', add
label define cl02a_pern_lbl 10 `"10"', add
label define cl02a_pern_lbl 11 `"11"', add
label define cl02a_pern_lbl 12 `"12"', add
label define cl02a_pern_lbl 13 `"13"', add
label define cl02a_pern_lbl 14 `"14"', add
label define cl02a_pern_lbl 15 `"15"', add
label define cl02a_pern_lbl 16 `"16"', add
label define cl02a_pern_lbl 17 `"17"', add
label define cl02a_pern_lbl 18 `"18"', add
label define cl02a_pern_lbl 19 `"19"', add
label define cl02a_pern_lbl 20 `"20"', add
label define cl02a_pern_lbl 21 `"21"', add
label define cl02a_pern_lbl 22 `"22"', add
label define cl02a_pern_lbl 23 `"23"', add
label define cl02a_pern_lbl 24 `"24"', add
label define cl02a_pern_lbl 25 `"25"', add
label define cl02a_pern_lbl 26 `"26"', add
label define cl02a_pern_lbl 27 `"27"', add
label define cl02a_pern_lbl 28 `"28"', add
label define cl02a_pern_lbl 29 `"29"', add
label define cl02a_pern_lbl 30 `"30"', add
label values cl02a_pern cl02a_pern_lbl

label define cl02a_fbig_lbl 0 `"No problem"'
label define cl02a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define cl02a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values cl02a_fbig cl02a_fbig_lbl

label define cl02a_region_lbl 01 `"Tarapacá"'
label define cl02a_region_lbl 02 `"Antofagasta"', add
label define cl02a_region_lbl 03 `"Atacama"', add
label define cl02a_region_lbl 04 `"Coquimbo"', add
label define cl02a_region_lbl 05 `"Valparaíso"', add
label define cl02a_region_lbl 06 `"O'Higgins"', add
label define cl02a_region_lbl 07 `"Maule"', add
label define cl02a_region_lbl 08 `"Bio Bío"', add
label define cl02a_region_lbl 09 `"Araucanía"', add
label define cl02a_region_lbl 10 `"Los Lagos"', add
label define cl02a_region_lbl 11 `"Aisén"', add
label define cl02a_region_lbl 12 `"Magallanes and La Antártica Chilena"', add
label define cl02a_region_lbl 13 `"Region Metropolitana"', add
label values cl02a_region cl02a_region_lbl

label define cl02a_urban2_lbl 1 `"Urban"'
label define cl02a_urban2_lbl 2 `"Rural"', add
label values cl02a_urban2 cl02a_urban2_lbl

label define cl02a_dwtype_lbl 01 `"House"'
label define cl02a_dwtype_lbl 02 `"Apartment in a building"', add
label define cl02a_dwtype_lbl 03 `"Rooms in an older house or tenement"', add
label define cl02a_dwtype_lbl 04 `"Pre-fabricated shack"', add
label define cl02a_dwtype_lbl 05 `"Hut or shack"', add
label define cl02a_dwtype_lbl 06 `"Rural hut"', add
label define cl02a_dwtype_lbl 07 `"Mobile (tent, boxcar, container, boat, motorboat, similar)"', add
label define cl02a_dwtype_lbl 08 `"Other type of private dwelling"', add
label define cl02a_dwtype_lbl 09 `"Collective dwelling (Inn, hotel, hospital, etc.)"', add
label define cl02a_dwtype_lbl 10 `"Transients (not considered dwelling)"', add
label values cl02a_dwtype cl02a_dwtype_lbl

label define cl02a_occupan_lbl 1 `"Occupied with people present"'
label define cl02a_occupan_lbl 2 `"Occupied with people absent"', add
label define cl02a_occupan_lbl 3 `"Unoccupied"', add
label define cl02a_occupan_lbl 9 `"Unknown"', add
label values cl02a_occupan cl02a_occupan_lbl

label define cl02a_owner_lbl 0 `"NIU (not in universe)"'
label define cl02a_owner_lbl 1 `"Owned (completed paid for)"', add
label define cl02a_owner_lbl 2 `"Owned (paying in installments)"', add
label define cl02a_owner_lbl 3 `"Rented"', add
label define cl02a_owner_lbl 4 `"Ceded in return for work or services"', add
label define cl02a_owner_lbl 5 `"Free"', add
label values cl02a_owner cl02a_owner_lbl

label define cl02a_wall_lbl 0 `"NIU (not in universe)"'
label define cl02a_wall_lbl 1 `"Reinforced concrete, stone"', add
label define cl02a_wall_lbl 2 `"Brick"', add
label define cl02a_wall_lbl 3 `"Structure panels, cement block (pre-fab)"', add
label define cl02a_wall_lbl 4 `"Wood or sawed planks"', add
label define cl02a_wall_lbl 5 `"Fiber-cement (drywall)"', add
label define cl02a_wall_lbl 6 `"Adobe, clay with straw"', add
label define cl02a_wall_lbl 7 `"Waste materials (aluminum, cardboard boxes, plastic, etc.)"', add
label values cl02a_wall cl02a_wall_lbl

label define cl02a_roof_lbl 0 `"NIU (not in universe)"'
label define cl02a_roof_lbl 1 `"Tiles (clay, metal, cement)"', add
label define cl02a_roof_lbl 2 `"Tiles (wood, asphalt)"', add
label define cl02a_roof_lbl 3 `"Concrete slabs"', add
label define cl02a_roof_lbl 4 `"Zinc"', add
label define cl02a_roof_lbl 5 `"Slate"', add
label define cl02a_roof_lbl 6 `"Fiberglass"', add
label define cl02a_roof_lbl 7 `"Tar corrugated paper sheets"', add
label define cl02a_roof_lbl 8 `"Clay-covered straw"', add
label define cl02a_roof_lbl 9 `"Waste materials (aluminum, cardboard boxes, plastic, etc.)"', add
label values cl02a_roof cl02a_roof_lbl

label define cl02a_floor_lbl 0 `"NIU (not in universe)"'
label define cl02a_floor_lbl 1 `"Parquet"', add
label define cl02a_floor_lbl 2 `"Ceramic floor tile"', add
label define cl02a_floor_lbl 3 `"Wood boards"', add
label define cl02a_floor_lbl 4 `"Wall-to-wall carpeting"', add
label define cl02a_floor_lbl 5 `"Cement floor tiles"', add
label define cl02a_floor_lbl 6 `"Plastics (flexit, linoleum, etc.)"', add
label define cl02a_floor_lbl 7 `"Brick"', add
label define cl02a_floor_lbl 8 `"Concrete floor slab"', add
label define cl02a_floor_lbl 9 `"Earth"', add
label values cl02a_floor cl02a_floor_lbl

label define cl02a_elect_lbl 0 `"NIU (not in universe)"'
label define cl02a_elect_lbl 1 `"Public system (electric company)"', add
label define cl02a_elect_lbl 2 `"Own or community generator"', add
label define cl02a_elect_lbl 3 `"Solar panels"', add
label define cl02a_elect_lbl 4 `"Does not have"', add
label values cl02a_elect cl02a_elect_lbl

label define cl02a_watsrc_lbl 0 `"NIU (not in universe)"'
label define cl02a_watsrc_lbl 1 `"Public system (potable water company)"', add
label define cl02a_watsrc_lbl 2 `"Well or water wheel"', add
label define cl02a_watsrc_lbl 3 `"River, spring, stream"', add
label values cl02a_watsrc cl02a_watsrc_lbl

label define cl02a_watpip_lbl 0 `"NIU (not in universe)"'
label define cl02a_watpip_lbl 1 `"Inside the dwelling"', add
label define cl02a_watpip_lbl 2 `"Outside the dwelling but within the property"', add
label define cl02a_watpip_lbl 3 `"Does not have"', add
label values cl02a_watpip cl02a_watpip_lbl

label define cl02a_toilet_lbl 0 `"NIU (not in universe)"'
label define cl02a_toilet_lbl 1 `"Connected to sewer systemn"', add
label define cl02a_toilet_lbl 2 `"Connected to a septic tank"', add
label define cl02a_toilet_lbl 3 `"Latrine over a pit"', add
label define cl02a_toilet_lbl 4 `"Latrine over a river or canal"', add
label define cl02a_toilet_lbl 5 `"Chemical"', add
label define cl02a_toilet_lbl 6 `"Does not have"', add
label values cl02a_toilet cl02a_toilet_lbl

label define cl02a_nshowers_lbl 0 `"NIU (not in universe)"'
label define cl02a_nshowers_lbl 1 `"One"', add
label define cl02a_nshowers_lbl 2 `"Two"', add
label define cl02a_nshowers_lbl 3 `"Three"', add
label define cl02a_nshowers_lbl 4 `"Four"', add
label define cl02a_nshowers_lbl 5 `"Five or more"', add
label define cl02a_nshowers_lbl 6 `"Does not have"', add
label values cl02a_nshowers cl02a_nshowers_lbl

label define cl02a_rooms_lbl 00 `"NIU (not in universe)"'
label define cl02a_rooms_lbl 01 `"1"', add
label define cl02a_rooms_lbl 02 `"2"', add
label define cl02a_rooms_lbl 03 `"3"', add
label define cl02a_rooms_lbl 04 `"4"', add
label define cl02a_rooms_lbl 05 `"5"', add
label define cl02a_rooms_lbl 06 `"6"', add
label define cl02a_rooms_lbl 07 `"7"', add
label define cl02a_rooms_lbl 08 `"8"', add
label define cl02a_rooms_lbl 09 `"9"', add
label define cl02a_rooms_lbl 10 `"10 or more"', add
label define cl02a_rooms_lbl 99 `"Unknown"', add
label values cl02a_rooms cl02a_rooms_lbl

label define cl02a_hhno_lbl 00 `"NIU (not in universe)"'
label define cl02a_hhno_lbl 01 `"1"', add
label define cl02a_hhno_lbl 02 `"2"', add
label define cl02a_hhno_lbl 03 `"3"', add
label define cl02a_hhno_lbl 04 `"4"', add
label define cl02a_hhno_lbl 05 `"5"', add
label define cl02a_hhno_lbl 06 `"6"', add
label define cl02a_hhno_lbl 07 `"7"', add
label define cl02a_hhno_lbl 08 `"8"', add
label define cl02a_hhno_lbl 09 `"9"', add
label define cl02a_hhno_lbl 10 `"10"', add
label define cl02a_hhno_lbl 11 `"11"', add
label define cl02a_hhno_lbl 12 `"12+"', add
label values cl02a_hhno cl02a_hhno_lbl

label define cl02a_rmbed_lbl 00 `"0"'
label define cl02a_rmbed_lbl 01 `"1"', add
label define cl02a_rmbed_lbl 02 `"2"', add
label define cl02a_rmbed_lbl 03 `"3"', add
label define cl02a_rmbed_lbl 04 `"4"', add
label define cl02a_rmbed_lbl 05 `"5"', add
label define cl02a_rmbed_lbl 06 `"6"', add
label define cl02a_rmbed_lbl 07 `"7"', add
label define cl02a_rmbed_lbl 08 `"8"', add
label define cl02a_rmbed_lbl 09 `"9"', add
label define cl02a_rmbed_lbl 10 `"Ten or more"', add
label define cl02a_rmbed_lbl 98 `"Respondent did not know"', add
label define cl02a_rmbed_lbl 99 `"NIU (not in universe)"', add
label values cl02a_rmbed cl02a_rmbed_lbl

label define cl02a_rmlivdin_lbl 00 `"0"'
label define cl02a_rmlivdin_lbl 01 `"1"', add
label define cl02a_rmlivdin_lbl 02 `"2"', add
label define cl02a_rmlivdin_lbl 03 `"3"', add
label define cl02a_rmlivdin_lbl 04 `"4"', add
label define cl02a_rmlivdin_lbl 05 `"5+"', add
label define cl02a_rmlivdin_lbl 98 `"Respondent did not know"', add
label define cl02a_rmlivdin_lbl 99 `"NIU (not in universe)"', add
label values cl02a_rmlivdin cl02a_rmlivdin_lbl

label define cl02a_rmlive_lbl 00 `"0"'
label define cl02a_rmlive_lbl 01 `"1"', add
label define cl02a_rmlive_lbl 02 `"2"', add
label define cl02a_rmlive_lbl 03 `"3+"', add
label define cl02a_rmlive_lbl 98 `"Respondent did not know"', add
label define cl02a_rmlive_lbl 99 `"NIU (not in universe)"', add
label values cl02a_rmlive cl02a_rmlive_lbl

label define cl02a_rmdine_lbl 00 `"0"'
label define cl02a_rmdine_lbl 01 `"1"', add
label define cl02a_rmdine_lbl 02 `"2"', add
label define cl02a_rmdine_lbl 03 `"3"', add
label define cl02a_rmdine_lbl 04 `"4+"', add
label define cl02a_rmdine_lbl 98 `"Respondent did not know"', add
label define cl02a_rmdine_lbl 99 `"NIU (not in universe)"', add
label values cl02a_rmdine cl02a_rmdine_lbl

label define cl02a_rmkitch_lbl 00 `"0"'
label define cl02a_rmkitch_lbl 01 `"1"', add
label define cl02a_rmkitch_lbl 02 `"2"', add
label define cl02a_rmkitch_lbl 03 `"3"', add
label define cl02a_rmkitch_lbl 04 `"4"', add
label define cl02a_rmkitch_lbl 05 `"5"', add
label define cl02a_rmkitch_lbl 06 `"6"', add
label define cl02a_rmkitch_lbl 07 `"7"', add
label define cl02a_rmkitch_lbl 08 `"8"', add
label define cl02a_rmkitch_lbl 09 `"9+"', add
label define cl02a_rmkitch_lbl 98 `"Respondent did not know"', add
label define cl02a_rmkitch_lbl 99 `"NIU (not in universe)"', add
label values cl02a_rmkitch cl02a_rmkitch_lbl

label define cl02a_rmwork_lbl 00 `"0 rooms"'
label define cl02a_rmwork_lbl 01 `"1 room"', add
label define cl02a_rmwork_lbl 02 `"2 rooms"', add
label define cl02a_rmwork_lbl 03 `"3 rooms"', add
label define cl02a_rmwork_lbl 04 `"4+ rooms"', add
label define cl02a_rmwork_lbl 98 `"Respondent did not know"', add
label define cl02a_rmwork_lbl 99 `"NIU (not in universe)"', add
label values cl02a_rmwork cl02a_rmwork_lbl

label define cl02a_rmstudy_lbl 00 `"0 rooms"'
label define cl02a_rmstudy_lbl 01 `"1 room"', add
label define cl02a_rmstudy_lbl 02 `"2 rooms"', add
label define cl02a_rmstudy_lbl 03 `"3 rooms"', add
label define cl02a_rmstudy_lbl 04 `"4 rooms +"', add
label define cl02a_rmstudy_lbl 98 `"Respondent did not know"', add
label define cl02a_rmstudy_lbl 99 `"NIU (not in universe)"', add
label values cl02a_rmstudy cl02a_rmstudy_lbl

label define cl02a_rmother_lbl 00 `"0 rooms"'
label define cl02a_rmother_lbl 01 `"1 room"', add
label define cl02a_rmother_lbl 02 `"2 rooms"', add
label define cl02a_rmother_lbl 03 `"3 rooms"', add
label define cl02a_rmother_lbl 04 `"4 rooms"', add
label define cl02a_rmother_lbl 05 `"5 rooms"', add
label define cl02a_rmother_lbl 06 `"6 rooms"', add
label define cl02a_rmother_lbl 07 `"7 rooms"', add
label define cl02a_rmother_lbl 08 `"8 rooms"', add
label define cl02a_rmother_lbl 09 `"9 rooms"', add
label define cl02a_rmother_lbl 10 `"10 rooms +"', add
label define cl02a_rmother_lbl 98 `"Respondent did not know"', add
label define cl02a_rmother_lbl 99 `"NIU (not in universe)"', add
label values cl02a_rmother cl02a_rmother_lbl

label define cl02a_fuelcook_lbl 0 `"NIU (not in universe)"'
label define cl02a_fuelcook_lbl 1 `"Natural gas"', add
label define cl02a_fuelcook_lbl 2 `"Liquified petroleum gas"', add
label define cl02a_fuelcook_lbl 3 `"Paraffin"', add
label define cl02a_fuelcook_lbl 4 `"Wood, sawdust"', add
label define cl02a_fuelcook_lbl 5 `"Charcoal"', add
label define cl02a_fuelcook_lbl 6 `"Electricity and solar"', add
label define cl02a_fuelcook_lbl 9 `"No cooking"', add
label values cl02a_fuelcook cl02a_fuelcook_lbl

label define cl02a_rmsleep_lbl 00 `"Does not have"'
label define cl02a_rmsleep_lbl 01 `"1"', add
label define cl02a_rmsleep_lbl 02 `"2"', add
label define cl02a_rmsleep_lbl 03 `"3"', add
label define cl02a_rmsleep_lbl 04 `"4"', add
label define cl02a_rmsleep_lbl 05 `"5"', add
label define cl02a_rmsleep_lbl 06 `"6"', add
label define cl02a_rmsleep_lbl 07 `"7"', add
label define cl02a_rmsleep_lbl 08 `"8"', add
label define cl02a_rmsleep_lbl 09 `"9"', add
label define cl02a_rmsleep_lbl 10 `"10 +"', add
label define cl02a_rmsleep_lbl 98 `"Unknown"', add
label define cl02a_rmsleep_lbl 99 `"NIU (not in universe)"', add
label values cl02a_rmsleep cl02a_rmsleep_lbl

label define cl02a_shower_lbl 0 `"NIU (not in universe)"'
label define cl02a_shower_lbl 1 `"Yes"', add
label define cl02a_shower_lbl 2 `"No"', add
label values cl02a_shower cl02a_shower_lbl

label define cl02a_tvbw_lbl 0 `"NIU (not in universe)"'
label define cl02a_tvbw_lbl 1 `"Yes"', add
label define cl02a_tvbw_lbl 2 `"No"', add
label values cl02a_tvbw cl02a_tvbw_lbl

label define cl02a_tvcol_lbl 0 `"NIU (not in universe)"'
label define cl02a_tvcol_lbl 1 `"Yes"', add
label define cl02a_tvcol_lbl 2 `"No"', add
label values cl02a_tvcol cl02a_tvcol_lbl

label define cl02a_vcr_lbl 0 `"NIU (not in universe)"'
label define cl02a_vcr_lbl 1 `"Yes"', add
label define cl02a_vcr_lbl 2 `"No"', add
label values cl02a_vcr cl02a_vcr_lbl

label define cl02a_tvcable_lbl 0 `"NIU (not in universe)"'
label define cl02a_tvcable_lbl 1 `"Yes"', add
label define cl02a_tvcable_lbl 2 `"No"', add
label values cl02a_tvcable cl02a_tvcable_lbl

label define cl02a_stereo_lbl 0 `"NIU (not in universe)"'
label define cl02a_stereo_lbl 1 `"Yes"', add
label define cl02a_stereo_lbl 2 `"No"', add
label values cl02a_stereo cl02a_stereo_lbl

label define cl02a_washer_lbl 0 `"NIU (not in universe)"'
label define cl02a_washer_lbl 1 `"Yes"', add
label define cl02a_washer_lbl 2 `"No"', add
label values cl02a_washer cl02a_washer_lbl

label define cl02a_dryer_lbl 0 `"NIU (not in universe)"'
label define cl02a_dryer_lbl 1 `"Yes"', add
label define cl02a_dryer_lbl 2 `"No"', add
label values cl02a_dryer cl02a_dryer_lbl

label define cl02a_refrig_lbl 0 `"NIU (not in universe)"'
label define cl02a_refrig_lbl 1 `"Yes"', add
label define cl02a_refrig_lbl 2 `"No"', add
label values cl02a_refrig cl02a_refrig_lbl

label define cl02a_freez_lbl 0 `"NIU (not in universe)"'
label define cl02a_freez_lbl 1 `"Yes"', add
label define cl02a_freez_lbl 2 `"No"', add
label values cl02a_freez cl02a_freez_lbl

label define cl02a_micro_lbl 0 `"NIU (not in universe)"'
label define cl02a_micro_lbl 1 `"Yes"', add
label define cl02a_micro_lbl 2 `"No"', add
label values cl02a_micro cl02a_micro_lbl

label define cl02a_dishw_lbl 0 `"NIU (not in universe)"'
label define cl02a_dishw_lbl 1 `"Yes"', add
label define cl02a_dishw_lbl 2 `"No"', add
label values cl02a_dishw cl02a_dishw_lbl

label define cl02a_hotwat_lbl 0 `"NIU (not in universe)"'
label define cl02a_hotwat_lbl 1 `"Yes"', add
label define cl02a_hotwat_lbl 2 `"No"', add
label values cl02a_hotwat cl02a_hotwat_lbl

label define cl02a_cellph_lbl 0 `"NIU (not in universe)"'
label define cl02a_cellph_lbl 1 `"Yes"', add
label define cl02a_cellph_lbl 2 `"No"', add
label values cl02a_cellph cl02a_cellph_lbl

label define cl02a_phone_lbl 0 `"NIU (not in universe)"'
label define cl02a_phone_lbl 1 `"Yes"', add
label define cl02a_phone_lbl 2 `"No"', add
label values cl02a_phone cl02a_phone_lbl

label define cl02a_computr_lbl 0 `"NIU (not in universe)"'
label define cl02a_computr_lbl 1 `"Yes"', add
label define cl02a_computr_lbl 2 `"No"', add
label values cl02a_computr cl02a_computr_lbl

label define cl02a_internet_lbl 0 `"NIU (not in universe)"'
label define cl02a_internet_lbl 1 `"Yes"', add
label define cl02a_internet_lbl 2 `"No"', add
label values cl02a_internet cl02a_internet_lbl

label define cl02a_bike_lbl 0 `"NIU (not in universe)"'
label define cl02a_bike_lbl 1 `"Yes"', add
label define cl02a_bike_lbl 2 `"No"', add
label values cl02a_bike cl02a_bike_lbl

label define cl02a_motocy_lbl 0 `"NIU (not in universe)"'
label define cl02a_motocy_lbl 1 `"Yes"', add
label define cl02a_motocy_lbl 2 `"No"', add
label values cl02a_motocy cl02a_motocy_lbl

label define cl02a_van_lbl 0 `"NIU (not in universe)"'
label define cl02a_van_lbl 1 `"Yes"', add
label define cl02a_van_lbl 2 `"No"', add
label values cl02a_van cl02a_van_lbl

label define cl02a_auto_lbl 0 `"NIU (not in universe)"'
label define cl02a_auto_lbl 1 `"Yes"', add
label define cl02a_auto_lbl 2 `"No"', add
label values cl02a_auto cl02a_auto_lbl

label define cl02a_truck_lbl 0 `"NIU (not in universe)"'
label define cl02a_truck_lbl 1 `"Yes"', add
label define cl02a_truck_lbl 2 `"No"', add
label values cl02a_truck cl02a_truck_lbl

label define cl02a_boat_lbl 0 `"NIU (not in universe)"'
label define cl02a_boat_lbl 1 `"Yes"', add
label define cl02a_boat_lbl 2 `"No"', add
label values cl02a_boat cl02a_boat_lbl

label define cl02a_hhtype_lbl 0 `"NIU (not in universe)"'
label define cl02a_hhtype_lbl 1 `"Single person"', add
label define cl02a_hhtype_lbl 2 `"Nuclear"', add
label define cl02a_hhtype_lbl 3 `"Extended"', add
label define cl02a_hhtype_lbl 4 `"Complete"', add
label define cl02a_hhtype_lbl 5 `"Without nucleus"', add
label values cl02a_hhtype cl02a_hhtype_lbl

label define cl02a_hhstat_lbl 0 `"NIU (not in universe)"'
label define cl02a_hhstat_lbl 1 `"Complete"', add
label define cl02a_hhstat_lbl 2 `"Incomplete"', add
label define cl02a_hhstat_lbl 3 `"Unknown"', add
label values cl02a_hhstat cl02a_hhstat_lbl

label define cl02a_hhnumo_lbl 0 `"NIU (not in universe)"'
label define cl02a_hhnumo_lbl 1 `"1"', add
label define cl02a_hhnumo_lbl 2 `"2"', add
label define cl02a_hhnumo_lbl 3 `"3"', add
label define cl02a_hhnumo_lbl 4 `"4"', add
label define cl02a_hhnumo_lbl 5 `"5"', add
label define cl02a_hhnumo_lbl 6 `"6"', add
label define cl02a_hhnumo_lbl 7 `"7"', add
label define cl02a_hhnumo_lbl 8 `"8+"', add
label values cl02a_hhnumo cl02a_hhnumo_lbl

label define cl02a_pernum_lbl 00 `"0"'
label define cl02a_pernum_lbl 01 `"1"', add
label define cl02a_pernum_lbl 02 `"2"', add
label define cl02a_pernum_lbl 03 `"3"', add
label define cl02a_pernum_lbl 04 `"4"', add
label define cl02a_pernum_lbl 05 `"5"', add
label define cl02a_pernum_lbl 06 `"6"', add
label define cl02a_pernum_lbl 07 `"7"', add
label define cl02a_pernum_lbl 08 `"8"', add
label define cl02a_pernum_lbl 09 `"9"', add
label define cl02a_pernum_lbl 10 `"10"', add
label define cl02a_pernum_lbl 11 `"11"', add
label define cl02a_pernum_lbl 12 `"12"', add
label define cl02a_pernum_lbl 13 `"13"', add
label define cl02a_pernum_lbl 14 `"14"', add
label define cl02a_pernum_lbl 15 `"15"', add
label define cl02a_pernum_lbl 16 `"16"', add
label define cl02a_pernum_lbl 17 `"17"', add
label define cl02a_pernum_lbl 18 `"18"', add
label define cl02a_pernum_lbl 19 `"19"', add
label define cl02a_pernum_lbl 20 `"20"', add
label define cl02a_pernum_lbl 21 `"21"', add
label define cl02a_pernum_lbl 22 `"22"', add
label define cl02a_pernum_lbl 23 `"23"', add
label define cl02a_pernum_lbl 24 `"24"', add
label define cl02a_pernum_lbl 25 `"25"', add
label define cl02a_pernum_lbl 26 `"26"', add
label define cl02a_pernum_lbl 27 `"27"', add
label define cl02a_pernum_lbl 28 `"28"', add
label define cl02a_pernum_lbl 29 `"29"', add
label define cl02a_pernum_lbl 30 `"30"', add
label values cl02a_pernum cl02a_pernum_lbl

label define cl02a_relate_lbl 01 `"Head of household"'
label define cl02a_relate_lbl 02 `"Spouse or partner in consensual union"', add
label define cl02a_relate_lbl 03 `"Live-in-partner"', add
label define cl02a_relate_lbl 04 `"Child"', add
label define cl02a_relate_lbl 05 `"Stepchild"', add
label define cl02a_relate_lbl 06 `"Son- or daughter-in-law"', add
label define cl02a_relate_lbl 07 `"Grandchild"', add
label define cl02a_relate_lbl 08 `"Sibling"', add
label define cl02a_relate_lbl 09 `"Brother- or sister-in-law"', add
label define cl02a_relate_lbl 10 `"Parent"', add
label define cl02a_relate_lbl 11 `"Parent-in-law"', add
label define cl02a_relate_lbl 12 `"Other relative"', add
label define cl02a_relate_lbl 13 `"Not related"', add
label define cl02a_relate_lbl 14 `"Live-in domestic servant"', add
label define cl02a_relate_lbl 15 `"Member of a collective household"', add
label define cl02a_relate_lbl 16 `"Transient"', add
label values cl02a_relate cl02a_relate_lbl

label define cl02a_sex_lbl 1 `"Male"'
label define cl02a_sex_lbl 2 `"Female"', add
label values cl02a_sex cl02a_sex_lbl

label define cl02a_age_lbl 000 `"0"'
label define cl02a_age_lbl 001 `"1"', add
label define cl02a_age_lbl 002 `"2"', add
label define cl02a_age_lbl 003 `"3"', add
label define cl02a_age_lbl 004 `"4"', add
label define cl02a_age_lbl 005 `"5"', add
label define cl02a_age_lbl 006 `"6"', add
label define cl02a_age_lbl 007 `"7"', add
label define cl02a_age_lbl 008 `"8"', add
label define cl02a_age_lbl 009 `"9"', add
label define cl02a_age_lbl 010 `"10"', add
label define cl02a_age_lbl 011 `"11"', add
label define cl02a_age_lbl 012 `"12"', add
label define cl02a_age_lbl 013 `"13"', add
label define cl02a_age_lbl 014 `"14"', add
label define cl02a_age_lbl 015 `"15"', add
label define cl02a_age_lbl 016 `"16"', add
label define cl02a_age_lbl 017 `"17"', add
label define cl02a_age_lbl 018 `"18"', add
label define cl02a_age_lbl 019 `"19"', add
label define cl02a_age_lbl 020 `"20"', add
label define cl02a_age_lbl 021 `"21"', add
label define cl02a_age_lbl 022 `"22"', add
label define cl02a_age_lbl 023 `"23"', add
label define cl02a_age_lbl 024 `"24"', add
label define cl02a_age_lbl 025 `"25"', add
label define cl02a_age_lbl 026 `"26"', add
label define cl02a_age_lbl 027 `"27"', add
label define cl02a_age_lbl 028 `"28"', add
label define cl02a_age_lbl 029 `"29"', add
label define cl02a_age_lbl 030 `"30"', add
label define cl02a_age_lbl 031 `"31"', add
label define cl02a_age_lbl 032 `"32"', add
label define cl02a_age_lbl 033 `"33"', add
label define cl02a_age_lbl 034 `"34"', add
label define cl02a_age_lbl 035 `"35"', add
label define cl02a_age_lbl 036 `"36"', add
label define cl02a_age_lbl 037 `"37"', add
label define cl02a_age_lbl 038 `"38"', add
label define cl02a_age_lbl 039 `"39"', add
label define cl02a_age_lbl 040 `"40"', add
label define cl02a_age_lbl 041 `"41"', add
label define cl02a_age_lbl 042 `"42"', add
label define cl02a_age_lbl 043 `"43"', add
label define cl02a_age_lbl 044 `"44"', add
label define cl02a_age_lbl 045 `"45"', add
label define cl02a_age_lbl 046 `"46"', add
label define cl02a_age_lbl 047 `"47"', add
label define cl02a_age_lbl 048 `"48"', add
label define cl02a_age_lbl 049 `"49"', add
label define cl02a_age_lbl 050 `"50"', add
label define cl02a_age_lbl 051 `"51"', add
label define cl02a_age_lbl 052 `"52"', add
label define cl02a_age_lbl 053 `"53"', add
label define cl02a_age_lbl 054 `"54"', add
label define cl02a_age_lbl 055 `"55"', add
label define cl02a_age_lbl 056 `"56"', add
label define cl02a_age_lbl 057 `"57"', add
label define cl02a_age_lbl 058 `"58"', add
label define cl02a_age_lbl 059 `"59"', add
label define cl02a_age_lbl 060 `"60"', add
label define cl02a_age_lbl 061 `"61"', add
label define cl02a_age_lbl 062 `"62"', add
label define cl02a_age_lbl 063 `"63"', add
label define cl02a_age_lbl 064 `"64"', add
label define cl02a_age_lbl 065 `"65"', add
label define cl02a_age_lbl 066 `"66"', add
label define cl02a_age_lbl 067 `"67"', add
label define cl02a_age_lbl 068 `"68"', add
label define cl02a_age_lbl 069 `"69"', add
label define cl02a_age_lbl 070 `"70"', add
label define cl02a_age_lbl 071 `"71"', add
label define cl02a_age_lbl 072 `"72"', add
label define cl02a_age_lbl 073 `"73"', add
label define cl02a_age_lbl 074 `"74"', add
label define cl02a_age_lbl 075 `"75"', add
label define cl02a_age_lbl 076 `"76"', add
label define cl02a_age_lbl 077 `"77"', add
label define cl02a_age_lbl 078 `"78"', add
label define cl02a_age_lbl 079 `"79"', add
label define cl02a_age_lbl 080 `"80"', add
label define cl02a_age_lbl 081 `"81"', add
label define cl02a_age_lbl 082 `"82"', add
label define cl02a_age_lbl 083 `"83"', add
label define cl02a_age_lbl 084 `"84"', add
label define cl02a_age_lbl 085 `"85"', add
label define cl02a_age_lbl 086 `"86"', add
label define cl02a_age_lbl 087 `"87"', add
label define cl02a_age_lbl 088 `"88"', add
label define cl02a_age_lbl 089 `"89"', add
label define cl02a_age_lbl 090 `"90"', add
label define cl02a_age_lbl 091 `"91"', add
label define cl02a_age_lbl 092 `"92"', add
label define cl02a_age_lbl 093 `"93"', add
label define cl02a_age_lbl 094 `"94"', add
label define cl02a_age_lbl 095 `"95"', add
label define cl02a_age_lbl 096 `"96"', add
label define cl02a_age_lbl 097 `"97"', add
label define cl02a_age_lbl 098 `"98"', add
label define cl02a_age_lbl 099 `"99"', add
label define cl02a_age_lbl 100 `"100+"', add
label values cl02a_age cl02a_age_lbl

label define cl02a_blind_lbl 0 `"No"'
label define cl02a_blind_lbl 1 `"Yes"', add
label values cl02a_blind cl02a_blind_lbl

label define cl02a_deaf_lbl 0 `"No"'
label define cl02a_deaf_lbl 1 `"Yes"', add
label values cl02a_deaf cl02a_deaf_lbl

label define cl02a_mute_lbl 0 `"No"'
label define cl02a_mute_lbl 1 `"Yes"', add
label values cl02a_mute cl02a_mute_lbl

label define cl02a_paral_lbl 0 `"No"'
label define cl02a_paral_lbl 1 `"Yes"', add
label values cl02a_paral cl02a_paral_lbl

label define cl02a_mental_lbl 0 `"No"'
label define cl02a_mental_lbl 1 `"Yes"', add
label values cl02a_mental cl02a_mental_lbl

label define cl02a_indig_lbl 1 `"Alacalufe (Kawashkar)"'
label define cl02a_indig_lbl 2 `"Atacameño"', add
label define cl02a_indig_lbl 3 `"Aimara"', add
label define cl02a_indig_lbl 4 `"Colla"', add
label define cl02a_indig_lbl 5 `"Mapuche"', add
label define cl02a_indig_lbl 6 `"Quechua"', add
label define cl02a_indig_lbl 7 `"Rapa Nui"', add
label define cl02a_indig_lbl 8 `"Yámana (Yagán)"', add
label define cl02a_indig_lbl 9 `"None of the above"', add
label values cl02a_indig cl02a_indig_lbl

label define cl02a_bplhere_lbl 1 `"In this municipality"'
label define cl02a_bplhere_lbl 2 `"In another municipality"', add
label define cl02a_bplhere_lbl 3 `"In another country"', add
label define cl02a_bplhere_lbl 9 `"Unknown"', add
label values cl02a_bplhere cl02a_bplhere_lbl

label define cl02a_bpl_lbl 01101 `"Iquique"'
label define cl02a_bpl_lbl 01102 `"Camiña"', add
label define cl02a_bpl_lbl 01103 `"Colchane"', add
label define cl02a_bpl_lbl 01104 `"Huara"', add
label define cl02a_bpl_lbl 01105 `"Pica"', add
label define cl02a_bpl_lbl 01106 `"Pozo almonte"', add
label define cl02a_bpl_lbl 01201 `"Arica"', add
label define cl02a_bpl_lbl 01202 `"Camarones"', add
label define cl02a_bpl_lbl 01301 `"Putre"', add
label define cl02a_bpl_lbl 01302 `"General lagos"', add
label define cl02a_bpl_lbl 02101 `"Antofagasta"', add
label define cl02a_bpl_lbl 02102 `"Mejillones"', add
label define cl02a_bpl_lbl 02103 `"Sierra gorda"', add
label define cl02a_bpl_lbl 02104 `"Taltal"', add
label define cl02a_bpl_lbl 02201 `"Calama"', add
label define cl02a_bpl_lbl 02202 `"Ollagüe"', add
label define cl02a_bpl_lbl 02203 `"San pedro de atacama"', add
label define cl02a_bpl_lbl 02301 `"Tocopilla"', add
label define cl02a_bpl_lbl 02302 `"María elena"', add
label define cl02a_bpl_lbl 03101 `"Copiapó"', add
label define cl02a_bpl_lbl 03102 `"Caldera"', add
label define cl02a_bpl_lbl 03103 `"Tierra amarilla"', add
label define cl02a_bpl_lbl 03201 `"Chañaral"', add
label define cl02a_bpl_lbl 03202 `"Diego de almagro"', add
label define cl02a_bpl_lbl 03301 `"Vallenar"', add
label define cl02a_bpl_lbl 03302 `"Alto del carmen"', add
label define cl02a_bpl_lbl 03303 `"Freirina"', add
label define cl02a_bpl_lbl 03304 `"Huasco"', add
label define cl02a_bpl_lbl 04101 `"La serena"', add
label define cl02a_bpl_lbl 04102 `"Coquimbo"', add
label define cl02a_bpl_lbl 04103 `"Andacollo"', add
label define cl02a_bpl_lbl 04104 `"La higuera"', add
label define cl02a_bpl_lbl 04105 `"Paiguano"', add
label define cl02a_bpl_lbl 04106 `"Vicuña"', add
label define cl02a_bpl_lbl 04201 `"Illapel"', add
label define cl02a_bpl_lbl 04202 `"Canela"', add
label define cl02a_bpl_lbl 04203 `"Los vilos"', add
label define cl02a_bpl_lbl 04204 `"Salamanca"', add
label define cl02a_bpl_lbl 04301 `"Ovalle"', add
label define cl02a_bpl_lbl 04302 `"Combarbalá"', add
label define cl02a_bpl_lbl 04303 `"Monte patria"', add
label define cl02a_bpl_lbl 04304 `"Punitaqui"', add
label define cl02a_bpl_lbl 04305 `"Río hurtado"', add
label define cl02a_bpl_lbl 05101 `"Valparaíso"', add
label define cl02a_bpl_lbl 05102 `"Casablanca"', add
label define cl02a_bpl_lbl 05103 `"Concón"', add
label define cl02a_bpl_lbl 05104 `"Juan fernández"', add
label define cl02a_bpl_lbl 05105 `"Puchuncaví"', add
label define cl02a_bpl_lbl 05106 `"Quilpué"', add
label define cl02a_bpl_lbl 05107 `"Quintero"', add
label define cl02a_bpl_lbl 05108 `"Villa alemana"', add
label define cl02a_bpl_lbl 05109 `"Viña del mar"', add
label define cl02a_bpl_lbl 05201 `"Isla de pascua"', add
label define cl02a_bpl_lbl 05301 `"Los andes"', add
label define cl02a_bpl_lbl 05302 `"Calle larga"', add
label define cl02a_bpl_lbl 05303 `"Rinconada"', add
label define cl02a_bpl_lbl 05304 `"San esteban"', add
label define cl02a_bpl_lbl 05401 `"La ligua"', add
label define cl02a_bpl_lbl 05402 `"Cabildo"', add
label define cl02a_bpl_lbl 05403 `"Papudo"', add
label define cl02a_bpl_lbl 05404 `"Petorca"', add
label define cl02a_bpl_lbl 05405 `"Zapallar"', add
label define cl02a_bpl_lbl 05501 `"Quillota"', add
label define cl02a_bpl_lbl 05502 `"Calera"', add
label define cl02a_bpl_lbl 05503 `"Hijuelas"', add
label define cl02a_bpl_lbl 05504 `"La cruz"', add
label define cl02a_bpl_lbl 05505 `"Limache"', add
label define cl02a_bpl_lbl 05506 `"Nogales"', add
label define cl02a_bpl_lbl 05507 `"Olmué"', add
label define cl02a_bpl_lbl 05601 `"San antonio"', add
label define cl02a_bpl_lbl 05602 `"Algarrobo"', add
label define cl02a_bpl_lbl 05603 `"Cartagena"', add
label define cl02a_bpl_lbl 05604 `"El quisco"', add
label define cl02a_bpl_lbl 05605 `"El tabo"', add
label define cl02a_bpl_lbl 05606 `"Santo domingo"', add
label define cl02a_bpl_lbl 05701 `"San felipe"', add
label define cl02a_bpl_lbl 05702 `"Catemu"', add
label define cl02a_bpl_lbl 05703 `"Llaillay"', add
label define cl02a_bpl_lbl 05704 `"Panquehue"', add
label define cl02a_bpl_lbl 05705 `"Putaendo"', add
label define cl02a_bpl_lbl 05706 `"Santa maría"', add
label define cl02a_bpl_lbl 06101 `"Rancagua"', add
label define cl02a_bpl_lbl 06102 `"Codegua"', add
label define cl02a_bpl_lbl 06103 `"Coinco"', add
label define cl02a_bpl_lbl 06104 `"Coltauco"', add
label define cl02a_bpl_lbl 06105 `"Doñigue"', add
label define cl02a_bpl_lbl 06106 `"Graneros"', add
label define cl02a_bpl_lbl 06107 `"Las cabras"', add
label define cl02a_bpl_lbl 06108 `"Machalí"', add
label define cl02a_bpl_lbl 06109 `"Malloa"', add
label define cl02a_bpl_lbl 06110 `"Mostazal"', add
label define cl02a_bpl_lbl 06111 `"Olivar"', add
label define cl02a_bpl_lbl 06112 `"Peumo"', add
label define cl02a_bpl_lbl 06113 `"Pichidegua"', add
label define cl02a_bpl_lbl 06114 `"Quinta de tilcoco"', add
label define cl02a_bpl_lbl 06115 `"Rengo"', add
label define cl02a_bpl_lbl 06116 `"Requínoa"', add
label define cl02a_bpl_lbl 06117 `"San vicente"', add
label define cl02a_bpl_lbl 06201 `"Pichilemu"', add
label define cl02a_bpl_lbl 06202 `"La estrella"', add
label define cl02a_bpl_lbl 06203 `"Litueche"', add
label define cl02a_bpl_lbl 06204 `"Marchihue"', add
label define cl02a_bpl_lbl 06205 `"Navidad"', add
label define cl02a_bpl_lbl 06206 `"Paredones"', add
label define cl02a_bpl_lbl 06301 `"San fernando"', add
label define cl02a_bpl_lbl 06302 `"Chépica"', add
label define cl02a_bpl_lbl 06303 `"Chimbarongo"', add
label define cl02a_bpl_lbl 06304 `"Lolol"', add
label define cl02a_bpl_lbl 06305 `"Nancagua"', add
label define cl02a_bpl_lbl 06306 `"Palmilla"', add
label define cl02a_bpl_lbl 06307 `"Peralillo"', add
label define cl02a_bpl_lbl 06308 `"Placilla"', add
label define cl02a_bpl_lbl 06309 `"Pumanque"', add
label define cl02a_bpl_lbl 06310 `"Santa cruz"', add
label define cl02a_bpl_lbl 07101 `"Talca"', add
label define cl02a_bpl_lbl 07102 `"Constitución"', add
label define cl02a_bpl_lbl 07103 `"Curepto"', add
label define cl02a_bpl_lbl 07104 `"Empedrado"', add
label define cl02a_bpl_lbl 07105 `"Maule"', add
label define cl02a_bpl_lbl 07106 `"Pelarco"', add
label define cl02a_bpl_lbl 07107 `"Pencahue"', add
label define cl02a_bpl_lbl 07108 `"Río claro"', add
label define cl02a_bpl_lbl 07109 `"San clemente"', add
label define cl02a_bpl_lbl 07110 `"San rafael"', add
label define cl02a_bpl_lbl 07201 `"Cauquenes"', add
label define cl02a_bpl_lbl 07202 `"Chanco"', add
label define cl02a_bpl_lbl 07203 `"Pelluhue"', add
label define cl02a_bpl_lbl 07301 `"Curicó"', add
label define cl02a_bpl_lbl 07302 `"Hualañé"', add
label define cl02a_bpl_lbl 07303 `"Licantén"', add
label define cl02a_bpl_lbl 07304 `"Molina"', add
label define cl02a_bpl_lbl 07305 `"Rauco"', add
label define cl02a_bpl_lbl 07306 `"Romeral"', add
label define cl02a_bpl_lbl 07307 `"Sagrada familia"', add
label define cl02a_bpl_lbl 07308 `"Teno"', add
label define cl02a_bpl_lbl 07309 `"Vichuquén"', add
label define cl02a_bpl_lbl 07401 `"Linares"', add
label define cl02a_bpl_lbl 07402 `"Colbún"', add
label define cl02a_bpl_lbl 07403 `"Longaví"', add
label define cl02a_bpl_lbl 07404 `"Parral"', add
label define cl02a_bpl_lbl 07405 `"Retiro"', add
label define cl02a_bpl_lbl 07406 `"San javier"', add
label define cl02a_bpl_lbl 07407 `"Villa alegre"', add
label define cl02a_bpl_lbl 07408 `"Yerbas buenas"', add
label define cl02a_bpl_lbl 08101 `"Concepción"', add
label define cl02a_bpl_lbl 08102 `"Coronel"', add
label define cl02a_bpl_lbl 08103 `"Chiguayante"', add
label define cl02a_bpl_lbl 08104 `"Florida"', add
label define cl02a_bpl_lbl 08105 `"Hualqui"', add
label define cl02a_bpl_lbl 08106 `"Lota"', add
label define cl02a_bpl_lbl 08107 `"Penco"', add
label define cl02a_bpl_lbl 08108 `"San pedro de la paz"', add
label define cl02a_bpl_lbl 08109 `"Santa juana"', add
label define cl02a_bpl_lbl 08110 `"Talcahuano"', add
label define cl02a_bpl_lbl 08111 `"Tomé"', add
label define cl02a_bpl_lbl 08201 `"Lebu"', add
label define cl02a_bpl_lbl 08202 `"Arauco"', add
label define cl02a_bpl_lbl 08203 `"Cañete"', add
label define cl02a_bpl_lbl 08204 `"Contulmo"', add
label define cl02a_bpl_lbl 08205 `"Curanilahue"', add
label define cl02a_bpl_lbl 08206 `"Los alamos"', add
label define cl02a_bpl_lbl 08207 `"Tirúa"', add
label define cl02a_bpl_lbl 08301 `"Los angeles"', add
label define cl02a_bpl_lbl 08302 `"Antuco"', add
label define cl02a_bpl_lbl 08303 `"Cabrero"', add
label define cl02a_bpl_lbl 08304 `"Laja"', add
label define cl02a_bpl_lbl 08305 `"Mulchén"', add
label define cl02a_bpl_lbl 08306 `"Nacimiento"', add
label define cl02a_bpl_lbl 08307 `"Negrete"', add
label define cl02a_bpl_lbl 08308 `"Quilaco"', add
label define cl02a_bpl_lbl 08309 `"Quilleco"', add
label define cl02a_bpl_lbl 08310 `"San rosendo"', add
label define cl02a_bpl_lbl 08311 `"Santa bárbara"', add
label define cl02a_bpl_lbl 08312 `"Tucapel"', add
label define cl02a_bpl_lbl 08313 `"Yumbel"', add
label define cl02a_bpl_lbl 08401 `"Chillán"', add
label define cl02a_bpl_lbl 08402 `"Bulnes"', add
label define cl02a_bpl_lbl 08403 `"Cobquecura"', add
label define cl02a_bpl_lbl 08404 `"Coelemu"', add
label define cl02a_bpl_lbl 08405 `"Coihueco"', add
label define cl02a_bpl_lbl 08406 `"Chillán viejo"', add
label define cl02a_bpl_lbl 08407 `"El carmen"', add
label define cl02a_bpl_lbl 08408 `"Ninhue"', add
label define cl02a_bpl_lbl 08409 `"Ñiquén"', add
label define cl02a_bpl_lbl 08410 `"Pemuco"', add
label define cl02a_bpl_lbl 08411 `"Pinto"', add
label define cl02a_bpl_lbl 08412 `"Portezuelo"', add
label define cl02a_bpl_lbl 08413 `"Quillón"', add
label define cl02a_bpl_lbl 08414 `"Quirihue"', add
label define cl02a_bpl_lbl 08415 `"Ránquil"', add
label define cl02a_bpl_lbl 08416 `"San carlos"', add
label define cl02a_bpl_lbl 08417 `"San fabián"', add
label define cl02a_bpl_lbl 08418 `"San ignacio"', add
label define cl02a_bpl_lbl 08419 `"San nicolás"', add
label define cl02a_bpl_lbl 08420 `"Treguaco"', add
label define cl02a_bpl_lbl 08421 `"Yungay"', add
label define cl02a_bpl_lbl 09101 `"Temuco"', add
label define cl02a_bpl_lbl 09102 `"Carahue"', add
label define cl02a_bpl_lbl 09103 `"Cunco"', add
label define cl02a_bpl_lbl 09104 `"Curarrehue"', add
label define cl02a_bpl_lbl 09105 `"Freire"', add
label define cl02a_bpl_lbl 09106 `"Galvarino"', add
label define cl02a_bpl_lbl 09107 `"Gorbea"', add
label define cl02a_bpl_lbl 09108 `"Lautaro"', add
label define cl02a_bpl_lbl 09109 `"Loncoche"', add
label define cl02a_bpl_lbl 09110 `"Melipeuco"', add
label define cl02a_bpl_lbl 09111 `"Nueva imperial"', add
label define cl02a_bpl_lbl 09112 `"Padre las casas"', add
label define cl02a_bpl_lbl 09113 `"Perquenco"', add
label define cl02a_bpl_lbl 09114 `"Pitrufquén"', add
label define cl02a_bpl_lbl 09115 `"Pucón"', add
label define cl02a_bpl_lbl 09116 `"Saavedra"', add
label define cl02a_bpl_lbl 09117 `"Teodoro schmidt"', add
label define cl02a_bpl_lbl 09118 `"Toltén"', add
label define cl02a_bpl_lbl 09119 `"Vilcín"', add
label define cl02a_bpl_lbl 09120 `"Villarrica"', add
label define cl02a_bpl_lbl 09201 `"Angol"', add
label define cl02a_bpl_lbl 09202 `"Collipulli"', add
label define cl02a_bpl_lbl 09203 `"Curacautín"', add
label define cl02a_bpl_lbl 09204 `"Ercilla"', add
label define cl02a_bpl_lbl 09205 `"Lonquimay"', add
label define cl02a_bpl_lbl 09206 `"Los sauces"', add
label define cl02a_bpl_lbl 09207 `"Lumaco"', add
label define cl02a_bpl_lbl 09208 `"Purén"', add
label define cl02a_bpl_lbl 09209 `"Renaico"', add
label define cl02a_bpl_lbl 09210 `"Traiguén"', add
label define cl02a_bpl_lbl 09211 `"Victoria"', add
label define cl02a_bpl_lbl 10044 `"Saint Helen"', add
label define cl02a_bpl_lbl 10101 `"Puerto montt"', add
label define cl02a_bpl_lbl 10102 `"Calbuco"', add
label define cl02a_bpl_lbl 10103 `"Cochamó"', add
label define cl02a_bpl_lbl 10104 `"Fresia"', add
label define cl02a_bpl_lbl 10105 `"Frutillar"', add
label define cl02a_bpl_lbl 10106 `"Los muermos"', add
label define cl02a_bpl_lbl 10107 `"Llanquihue"', add
label define cl02a_bpl_lbl 10108 `"Maullín"', add
label define cl02a_bpl_lbl 10109 `"Puerto varas"', add
label define cl02a_bpl_lbl 10201 `"Castro"', add
label define cl02a_bpl_lbl 10202 `"Ancud"', add
label define cl02a_bpl_lbl 10203 `"Chonchi"', add
label define cl02a_bpl_lbl 10204 `"Curaco de vélez"', add
label define cl02a_bpl_lbl 10205 `"Dalcahue"', add
label define cl02a_bpl_lbl 10206 `"Puqueldón"', add
label define cl02a_bpl_lbl 10207 `"Queilén"', add
label define cl02a_bpl_lbl 10208 `"Quellón"', add
label define cl02a_bpl_lbl 10209 `"Quemchi"', add
label define cl02a_bpl_lbl 10210 `"Quinchao"', add
label define cl02a_bpl_lbl 10301 `"Osorno"', add
label define cl02a_bpl_lbl 10302 `"Puerto octay"', add
label define cl02a_bpl_lbl 10303 `"Purranque"', add
label define cl02a_bpl_lbl 10304 `"Puyehue"', add
label define cl02a_bpl_lbl 10305 `"Río negro"', add
label define cl02a_bpl_lbl 10306 `"San juan de la costa"', add
label define cl02a_bpl_lbl 10307 `"San pablo"', add
label define cl02a_bpl_lbl 10401 `"Chaitén"', add
label define cl02a_bpl_lbl 10402 `"Futaleufú"', add
label define cl02a_bpl_lbl 10403 `"Hualaihué"', add
label define cl02a_bpl_lbl 10404 `"Palena"', add
label define cl02a_bpl_lbl 10501 `"Valdivia"', add
label define cl02a_bpl_lbl 10502 `"Corral"', add
label define cl02a_bpl_lbl 10503 `"Futrono"', add
label define cl02a_bpl_lbl 10504 `"La unión"', add
label define cl02a_bpl_lbl 10505 `"Lago ranco"', add
label define cl02a_bpl_lbl 10506 `"Lanco"', add
label define cl02a_bpl_lbl 10507 `"Los lagos"', add
label define cl02a_bpl_lbl 10508 `"Máfil"', add
label define cl02a_bpl_lbl 10509 `"Mariquina"', add
label define cl02a_bpl_lbl 10510 `"Paillaco"', add
label define cl02a_bpl_lbl 10511 `"Panguipulli"', add
label define cl02a_bpl_lbl 10512 `"Río bueno"', add
label define cl02a_bpl_lbl 11101 `"Coihaique"', add
label define cl02a_bpl_lbl 11102 `"Lago verde"', add
label define cl02a_bpl_lbl 11201 `"Aisén"', add
label define cl02a_bpl_lbl 11202 `"Cisnes"', add
label define cl02a_bpl_lbl 11203 `"Guaitecas"', add
label define cl02a_bpl_lbl 11301 `"Cochrane"', add
label define cl02a_bpl_lbl 11302 `"O"higgins"', add
label define cl02a_bpl_lbl 11401 `"Chile chico"', add
label define cl02a_bpl_lbl 11402 `"Río ibáñez"', add
label define cl02a_bpl_lbl 12101 `"Punta arenas"', add
label define cl02a_bpl_lbl 12104 `"San gregorio"', add
label define cl02a_bpl_lbl 12201 `"Cabo de horno"', add
label define cl02a_bpl_lbl 12301 `"Porvenir"', add
label define cl02a_bpl_lbl 12302 `"Primavera"', add
label define cl02a_bpl_lbl 12401 `"Natales"', add
label define cl02a_bpl_lbl 13101 `"Santiago"', add
label define cl02a_bpl_lbl 13102 `"Cerrillos"', add
label define cl02a_bpl_lbl 13103 `"Cerro navia"', add
label define cl02a_bpl_lbl 13104 `"Conchalí"', add
label define cl02a_bpl_lbl 13105 `"El bosque"', add
label define cl02a_bpl_lbl 13106 `"Estacion central"', add
label define cl02a_bpl_lbl 13107 `"Huechuraba"', add
label define cl02a_bpl_lbl 13108 `"Independencia"', add
label define cl02a_bpl_lbl 13109 `"La cisterna"', add
label define cl02a_bpl_lbl 13110 `"La florida"', add
label define cl02a_bpl_lbl 13111 `"La granja"', add
label define cl02a_bpl_lbl 13112 `"La pintana"', add
label define cl02a_bpl_lbl 13113 `"La reina"', add
label define cl02a_bpl_lbl 13114 `"Las condes"', add
label define cl02a_bpl_lbl 13115 `"Lo barnechea"', add
label define cl02a_bpl_lbl 13116 `"Lo espejo"', add
label define cl02a_bpl_lbl 13117 `"Lo prado"', add
label define cl02a_bpl_lbl 13118 `"Macul"', add
label define cl02a_bpl_lbl 13119 `"Maipú"', add
label define cl02a_bpl_lbl 13120 `"Ñuñoa"', add
label define cl02a_bpl_lbl 13121 `"Pedro aguirre cerda"', add
label define cl02a_bpl_lbl 13122 `"Peñalolén"', add
label define cl02a_bpl_lbl 13123 `"Providencia"', add
label define cl02a_bpl_lbl 13124 `"Pudahuel"', add
label define cl02a_bpl_lbl 13125 `"Quilicura"', add
label define cl02a_bpl_lbl 13126 `"Quinta normal"', add
label define cl02a_bpl_lbl 13127 `"Recoleta"', add
label define cl02a_bpl_lbl 13128 `"Renca"', add
label define cl02a_bpl_lbl 13129 `"San joaquín"', add
label define cl02a_bpl_lbl 13130 `"San miguel"', add
label define cl02a_bpl_lbl 13131 `"San ramón"', add
label define cl02a_bpl_lbl 13132 `"Vitacura"', add
label define cl02a_bpl_lbl 13201 `"Puente alto"', add
label define cl02a_bpl_lbl 13202 `"Pirque"', add
label define cl02a_bpl_lbl 13203 `"San josé de maipo"', add
label define cl02a_bpl_lbl 13301 `"Colina"', add
label define cl02a_bpl_lbl 13302 `"Lampa"', add
label define cl02a_bpl_lbl 13303 `"Tiltil"', add
label define cl02a_bpl_lbl 13401 `"San bernardo"', add
label define cl02a_bpl_lbl 13402 `"Buin"', add
label define cl02a_bpl_lbl 13403 `"Calera de tango"', add
label define cl02a_bpl_lbl 13404 `"Paine"', add
label define cl02a_bpl_lbl 13501 `"Melipilla"', add
label define cl02a_bpl_lbl 13502 `"Alhué"', add
label define cl02a_bpl_lbl 13503 `"Curacaví"', add
label define cl02a_bpl_lbl 13504 `"María pinto"', add
label define cl02a_bpl_lbl 13505 `"San pedro"', add
label define cl02a_bpl_lbl 13601 `"Talagante"', add
label define cl02a_bpl_lbl 13602 `"El monte"', add
label define cl02a_bpl_lbl 13603 `"Isla de maipo"', add
label define cl02a_bpl_lbl 13604 `"Padre hurtado"', add
label define cl02a_bpl_lbl 13605 `"Peñaflor"', add
label define cl02a_bpl_lbl 20004 `"Argentina"', add
label define cl02a_bpl_lbl 20010 `"Bolivia"', add
label define cl02a_bpl_lbl 20011 `"Brazil"', add
label define cl02a_bpl_lbl 20012 `"Canada"', add
label define cl02a_bpl_lbl 20014 `"Colombia"', add
label define cl02a_bpl_lbl 20015 `"Costa Rica"', add
label define cl02a_bpl_lbl 20016 `"Cuba"', add
label define cl02a_bpl_lbl 20018 `"Ecuador"', add
label define cl02a_bpl_lbl 20019 `"El Salvador"', add
label define cl02a_bpl_lbl 20020 `"United States of America"', add
label define cl02a_bpl_lbl 20024 `"Guatemala"', add
label define cl02a_bpl_lbl 20028 `"Honduras"', add
label define cl02a_bpl_lbl 20037 `"Mexico"', add
label define cl02a_bpl_lbl 20039 `"Nicaragua"', add
label define cl02a_bpl_lbl 20040 `"Panama"', add
label define cl02a_bpl_lbl 20041 `"Paraguay"', add
label define cl02a_bpl_lbl 20042 `"Peru"', add
label define cl02a_bpl_lbl 20043 `"Puerto Rico"', add
label define cl02a_bpl_lbl 20044 `"Dominican Republic"', add
label define cl02a_bpl_lbl 20051 `"Uruguay"', add
label define cl02a_bpl_lbl 20052 `"Venezuela"', add
label define cl02a_bpl_lbl 30011 `"China"', add
label define cl02a_bpl_lbl 30013 `"Philippines"', add
label define cl02a_bpl_lbl 30016 `"India"', add
label define cl02a_bpl_lbl 30020 `"Israel"', add
label define cl02a_bpl_lbl 30021 `"Japan"', add
label define cl02a_bpl_lbl 30035 `"Palestine"', add
label define cl02a_bpl_lbl 30037 `"Republic of Korea"', add
label define cl02a_bpl_lbl 30039 `"Russia"', add
label define cl02a_bpl_lbl 30044 `"Taiwan"', add
label define cl02a_bpl_lbl 40002 `"Germany"', add
label define cl02a_bpl_lbl 40004 `"Austria"', add
label define cl02a_bpl_lbl 40005 `"Belgium"', add
label define cl02a_bpl_lbl 40010 `"Croatia"', add
label define cl02a_bpl_lbl 40014 `"Spain"', add
label define cl02a_bpl_lbl 40017 `"France"', add
label define cl02a_bpl_lbl 40020 `"Netherlands"', add
label define cl02a_bpl_lbl 40021 `"Hungary"', add
label define cl02a_bpl_lbl 40025 `"Italy"', add
label define cl02a_bpl_lbl 40033 `"Norway"', add
label define cl02a_bpl_lbl 40034 `"Poland"', add
label define cl02a_bpl_lbl 40035 `"Portugal"', add
label define cl02a_bpl_lbl 40036 `"United Kingdon"', add
label define cl02a_bpl_lbl 40039 `"Romania"', add
label define cl02a_bpl_lbl 40041 `"Sweden"', add
label define cl02a_bpl_lbl 40042 `"Switzerland"', add
label define cl02a_bpl_lbl 40045 `"Yugoslavia"', add
label define cl02a_bpl_lbl 50002 `"Australia"', add
label define cl02a_bpl_lbl 50034 `"Tonga"', add
label define cl02a_bpl_lbl 99998 `"Response suppressed"', add
label define cl02a_bpl_lbl 99999 `"Unknown"', add
label values cl02a_bpl cl02a_bpl_lbl

label define cl02a_yrarrive_lbl 0000 `"Native-born"'
label define cl02a_yrarrive_lbl 1926 `"1926 or before"', add
label define cl02a_yrarrive_lbl 1927 `"1927"', add
label define cl02a_yrarrive_lbl 1928 `"1928"', add
label define cl02a_yrarrive_lbl 1929 `"1929"', add
label define cl02a_yrarrive_lbl 1930 `"1930"', add
label define cl02a_yrarrive_lbl 1931 `"1931"', add
label define cl02a_yrarrive_lbl 1932 `"1932"', add
label define cl02a_yrarrive_lbl 1933 `"1933"', add
label define cl02a_yrarrive_lbl 1934 `"1934"', add
label define cl02a_yrarrive_lbl 1935 `"1935"', add
label define cl02a_yrarrive_lbl 1936 `"1936"', add
label define cl02a_yrarrive_lbl 1937 `"1937"', add
label define cl02a_yrarrive_lbl 1938 `"1938"', add
label define cl02a_yrarrive_lbl 1939 `"1939"', add
label define cl02a_yrarrive_lbl 1940 `"1940"', add
label define cl02a_yrarrive_lbl 1941 `"1941"', add
label define cl02a_yrarrive_lbl 1942 `"1942"', add
label define cl02a_yrarrive_lbl 1943 `"1943"', add
label define cl02a_yrarrive_lbl 1944 `"1944"', add
label define cl02a_yrarrive_lbl 1945 `"1945"', add
label define cl02a_yrarrive_lbl 1946 `"1946"', add
label define cl02a_yrarrive_lbl 1947 `"1947"', add
label define cl02a_yrarrive_lbl 1948 `"1948"', add
label define cl02a_yrarrive_lbl 1949 `"1949"', add
label define cl02a_yrarrive_lbl 1950 `"1950"', add
label define cl02a_yrarrive_lbl 1951 `"1951"', add
label define cl02a_yrarrive_lbl 1952 `"1952"', add
label define cl02a_yrarrive_lbl 1953 `"1953"', add
label define cl02a_yrarrive_lbl 1954 `"1954"', add
label define cl02a_yrarrive_lbl 1955 `"1955"', add
label define cl02a_yrarrive_lbl 1956 `"1956"', add
label define cl02a_yrarrive_lbl 1957 `"1957"', add
label define cl02a_yrarrive_lbl 1958 `"1958"', add
label define cl02a_yrarrive_lbl 1959 `"1959"', add
label define cl02a_yrarrive_lbl 1960 `"1960"', add
label define cl02a_yrarrive_lbl 1961 `"1961"', add
label define cl02a_yrarrive_lbl 1962 `"1962"', add
label define cl02a_yrarrive_lbl 1963 `"1963"', add
label define cl02a_yrarrive_lbl 1964 `"1964"', add
label define cl02a_yrarrive_lbl 1965 `"1965"', add
label define cl02a_yrarrive_lbl 1966 `"1966"', add
label define cl02a_yrarrive_lbl 1967 `"1967"', add
label define cl02a_yrarrive_lbl 1968 `"1968"', add
label define cl02a_yrarrive_lbl 1969 `"1969"', add
label define cl02a_yrarrive_lbl 1970 `"1970"', add
label define cl02a_yrarrive_lbl 1971 `"1971"', add
label define cl02a_yrarrive_lbl 1972 `"1972"', add
label define cl02a_yrarrive_lbl 1973 `"1973"', add
label define cl02a_yrarrive_lbl 1974 `"1974"', add
label define cl02a_yrarrive_lbl 1975 `"1975"', add
label define cl02a_yrarrive_lbl 1976 `"1976"', add
label define cl02a_yrarrive_lbl 1977 `"1977"', add
label define cl02a_yrarrive_lbl 1978 `"1978"', add
label define cl02a_yrarrive_lbl 1979 `"1979"', add
label define cl02a_yrarrive_lbl 1980 `"1980"', add
label define cl02a_yrarrive_lbl 1981 `"1981"', add
label define cl02a_yrarrive_lbl 1982 `"1982"', add
label define cl02a_yrarrive_lbl 1983 `"1983"', add
label define cl02a_yrarrive_lbl 1984 `"1984"', add
label define cl02a_yrarrive_lbl 1985 `"1985"', add
label define cl02a_yrarrive_lbl 1986 `"1986"', add
label define cl02a_yrarrive_lbl 1987 `"1987"', add
label define cl02a_yrarrive_lbl 1988 `"1988"', add
label define cl02a_yrarrive_lbl 1989 `"1989"', add
label define cl02a_yrarrive_lbl 1990 `"1990"', add
label define cl02a_yrarrive_lbl 1991 `"1991"', add
label define cl02a_yrarrive_lbl 1992 `"1992"', add
label define cl02a_yrarrive_lbl 1993 `"1993"', add
label define cl02a_yrarrive_lbl 1994 `"1994"', add
label define cl02a_yrarrive_lbl 1995 `"1995"', add
label define cl02a_yrarrive_lbl 1996 `"1996"', add
label define cl02a_yrarrive_lbl 1997 `"1997"', add
label define cl02a_yrarrive_lbl 1998 `"1998"', add
label define cl02a_yrarrive_lbl 1999 `"1999"', add
label define cl02a_yrarrive_lbl 2000 `"2000"', add
label define cl02a_yrarrive_lbl 2001 `"2001"', add
label define cl02a_yrarrive_lbl 2002 `"2002"', add
label define cl02a_yrarrive_lbl 9999 `"Unknown"', add
label values cl02a_yrarrive cl02a_yrarrive_lbl

label define cl02a_reshere_lbl 1 `"In this comuna"'
label define cl02a_reshere_lbl 2 `"In another comuna"', add
label define cl02a_reshere_lbl 3 `"In another country"', add
label define cl02a_reshere_lbl 9 `"Unknown"', add
label values cl02a_reshere cl02a_reshere_lbl

label define cl02a_res5here_lbl 0 `"NIU (not in universe)"'
label define cl02a_res5here_lbl 1 `"In this comuna"', add
label define cl02a_res5here_lbl 2 `"In another comuna"', add
label define cl02a_res5here_lbl 3 `"In another country"', add
label define cl02a_res5here_lbl 9 `"Unknown"', add
label values cl02a_res5here cl02a_res5here_lbl

label define cl02a_res5_lbl 00000 `"NIU (not in universe)"'
label define cl02a_res5_lbl 01101 `"Iquique"', add
label define cl02a_res5_lbl 01102 `"Camiña"', add
label define cl02a_res5_lbl 01103 `"Colchane"', add
label define cl02a_res5_lbl 01104 `"Huara"', add
label define cl02a_res5_lbl 01105 `"Pica"', add
label define cl02a_res5_lbl 01106 `"Pozo almonte"', add
label define cl02a_res5_lbl 01201 `"Arica"', add
label define cl02a_res5_lbl 01202 `"Camarones"', add
label define cl02a_res5_lbl 01301 `"Putre"', add
label define cl02a_res5_lbl 01302 `"General lagos"', add
label define cl02a_res5_lbl 02101 `"Antofagasta"', add
label define cl02a_res5_lbl 02102 `"Mejillones"', add
label define cl02a_res5_lbl 02103 `"Sierra gorda"', add
label define cl02a_res5_lbl 02104 `"Taltal"', add
label define cl02a_res5_lbl 02201 `"Calama"', add
label define cl02a_res5_lbl 02202 `"Ollagüe"', add
label define cl02a_res5_lbl 02203 `"San pedro de atacama"', add
label define cl02a_res5_lbl 02301 `"Tocopilla"', add
label define cl02a_res5_lbl 02302 `"María elena"', add
label define cl02a_res5_lbl 03101 `"Copiapó"', add
label define cl02a_res5_lbl 03102 `"Caldera"', add
label define cl02a_res5_lbl 03103 `"Tierra amarilla"', add
label define cl02a_res5_lbl 03201 `"Chañaral"', add
label define cl02a_res5_lbl 03202 `"Diego de almagro"', add
label define cl02a_res5_lbl 03301 `"Vallenar"', add
label define cl02a_res5_lbl 03302 `"Alto del carmen"', add
label define cl02a_res5_lbl 03303 `"Freirina"', add
label define cl02a_res5_lbl 03304 `"Huasco"', add
label define cl02a_res5_lbl 04101 `"La serena"', add
label define cl02a_res5_lbl 04102 `"Coquimbo"', add
label define cl02a_res5_lbl 04103 `"Andacollo"', add
label define cl02a_res5_lbl 04104 `"La higuera"', add
label define cl02a_res5_lbl 04105 `"Paiguano"', add
label define cl02a_res5_lbl 04106 `"Vicuña"', add
label define cl02a_res5_lbl 04201 `"Illapel"', add
label define cl02a_res5_lbl 04202 `"Canela"', add
label define cl02a_res5_lbl 04203 `"Los vilos"', add
label define cl02a_res5_lbl 04204 `"Salamanca"', add
label define cl02a_res5_lbl 04301 `"Ovalle"', add
label define cl02a_res5_lbl 04302 `"Combarbalá"', add
label define cl02a_res5_lbl 04303 `"Monte patria"', add
label define cl02a_res5_lbl 04304 `"Punitaqui"', add
label define cl02a_res5_lbl 04305 `"Río hurtado"', add
label define cl02a_res5_lbl 05101 `"Valparaíso"', add
label define cl02a_res5_lbl 05102 `"Casablanca"', add
label define cl02a_res5_lbl 05103 `"Concón"', add
label define cl02a_res5_lbl 05104 `"Juan fernández"', add
label define cl02a_res5_lbl 05105 `"Puchuncaví"', add
label define cl02a_res5_lbl 05106 `"Quilpué"', add
label define cl02a_res5_lbl 05107 `"Quintero"', add
label define cl02a_res5_lbl 05108 `"Villa alemana"', add
label define cl02a_res5_lbl 05109 `"Viña del mar"', add
label define cl02a_res5_lbl 05201 `"Isla de pascua"', add
label define cl02a_res5_lbl 05301 `"Los andes"', add
label define cl02a_res5_lbl 05302 `"Calle larga"', add
label define cl02a_res5_lbl 05303 `"Rinconada"', add
label define cl02a_res5_lbl 05304 `"San esteban"', add
label define cl02a_res5_lbl 05401 `"La ligua"', add
label define cl02a_res5_lbl 05402 `"Cabildo"', add
label define cl02a_res5_lbl 05403 `"Papudo"', add
label define cl02a_res5_lbl 05404 `"Petorca"', add
label define cl02a_res5_lbl 05405 `"Zapallar"', add
label define cl02a_res5_lbl 05501 `"Quillota"', add
label define cl02a_res5_lbl 05502 `"Calera"', add
label define cl02a_res5_lbl 05503 `"Hijuelas"', add
label define cl02a_res5_lbl 05504 `"La cruz"', add
label define cl02a_res5_lbl 05505 `"Limache"', add
label define cl02a_res5_lbl 05506 `"Nogales"', add
label define cl02a_res5_lbl 05507 `"Olmué"', add
label define cl02a_res5_lbl 05601 `"San antonio"', add
label define cl02a_res5_lbl 05602 `"Algarrobo"', add
label define cl02a_res5_lbl 05603 `"Cartagena"', add
label define cl02a_res5_lbl 05604 `"El quisco"', add
label define cl02a_res5_lbl 05605 `"El tabo"', add
label define cl02a_res5_lbl 05606 `"Santo domingo"', add
label define cl02a_res5_lbl 05701 `"San felipe"', add
label define cl02a_res5_lbl 05702 `"Catemu"', add
label define cl02a_res5_lbl 05703 `"Llaillay"', add
label define cl02a_res5_lbl 05704 `"Panquehue"', add
label define cl02a_res5_lbl 05705 `"Putaendo"', add
label define cl02a_res5_lbl 05706 `"Santa maría"', add
label define cl02a_res5_lbl 06101 `"Rancagua"', add
label define cl02a_res5_lbl 06102 `"Codegua"', add
label define cl02a_res5_lbl 06103 `"Coinco"', add
label define cl02a_res5_lbl 06104 `"Coltauco"', add
label define cl02a_res5_lbl 06105 `"Doñigue"', add
label define cl02a_res5_lbl 06106 `"Graneros"', add
label define cl02a_res5_lbl 06107 `"Las cabras"', add
label define cl02a_res5_lbl 06108 `"Machalí"', add
label define cl02a_res5_lbl 06109 `"Malloa"', add
label define cl02a_res5_lbl 06110 `"Mostazal"', add
label define cl02a_res5_lbl 06111 `"Olivar"', add
label define cl02a_res5_lbl 06112 `"Peumo"', add
label define cl02a_res5_lbl 06113 `"Pichidegua"', add
label define cl02a_res5_lbl 06114 `"Quinta de tilcoco"', add
label define cl02a_res5_lbl 06115 `"Rengo"', add
label define cl02a_res5_lbl 06116 `"Requínoa"', add
label define cl02a_res5_lbl 06117 `"San vicente"', add
label define cl02a_res5_lbl 06201 `"Pichilemu"', add
label define cl02a_res5_lbl 06202 `"La estrella"', add
label define cl02a_res5_lbl 06203 `"Litueche"', add
label define cl02a_res5_lbl 06204 `"Marchihue"', add
label define cl02a_res5_lbl 06205 `"Navidad"', add
label define cl02a_res5_lbl 06206 `"Paredones"', add
label define cl02a_res5_lbl 06301 `"San fernando"', add
label define cl02a_res5_lbl 06302 `"Chépica"', add
label define cl02a_res5_lbl 06303 `"Chimbarongo"', add
label define cl02a_res5_lbl 06304 `"Lolol"', add
label define cl02a_res5_lbl 06305 `"Nancagua"', add
label define cl02a_res5_lbl 06306 `"Palmilla"', add
label define cl02a_res5_lbl 06307 `"Peralillo"', add
label define cl02a_res5_lbl 06308 `"Placilla"', add
label define cl02a_res5_lbl 06309 `"Pumanque"', add
label define cl02a_res5_lbl 06310 `"Santa cruz"', add
label define cl02a_res5_lbl 07101 `"Talca"', add
label define cl02a_res5_lbl 07102 `"Constitución"', add
label define cl02a_res5_lbl 07103 `"Curepto"', add
label define cl02a_res5_lbl 07104 `"Empedrado"', add
label define cl02a_res5_lbl 07105 `"Maule"', add
label define cl02a_res5_lbl 07106 `"Pelarco"', add
label define cl02a_res5_lbl 07107 `"Pencahue"', add
label define cl02a_res5_lbl 07108 `"Río claro"', add
label define cl02a_res5_lbl 07109 `"San clemente"', add
label define cl02a_res5_lbl 07110 `"San rafael"', add
label define cl02a_res5_lbl 07201 `"Cauquenes"', add
label define cl02a_res5_lbl 07202 `"Chanco"', add
label define cl02a_res5_lbl 07203 `"Pelluhue"', add
label define cl02a_res5_lbl 07301 `"Curicó"', add
label define cl02a_res5_lbl 07302 `"Hualañé"', add
label define cl02a_res5_lbl 07303 `"Licantén"', add
label define cl02a_res5_lbl 07304 `"Molina"', add
label define cl02a_res5_lbl 07305 `"Rauco"', add
label define cl02a_res5_lbl 07306 `"Romeral"', add
label define cl02a_res5_lbl 07307 `"Sagrada familia"', add
label define cl02a_res5_lbl 07308 `"Teno"', add
label define cl02a_res5_lbl 07309 `"Vichuquén"', add
label define cl02a_res5_lbl 07401 `"Linares"', add
label define cl02a_res5_lbl 07402 `"Colbún"', add
label define cl02a_res5_lbl 07403 `"Longaví"', add
label define cl02a_res5_lbl 07404 `"Parral"', add
label define cl02a_res5_lbl 07405 `"Retiro"', add
label define cl02a_res5_lbl 07406 `"San javier"', add
label define cl02a_res5_lbl 07407 `"Villa alegre"', add
label define cl02a_res5_lbl 07408 `"Yerbas buenas"', add
label define cl02a_res5_lbl 08101 `"Concepción"', add
label define cl02a_res5_lbl 08102 `"Coronel"', add
label define cl02a_res5_lbl 08103 `"Chiguayante"', add
label define cl02a_res5_lbl 08104 `"Florida"', add
label define cl02a_res5_lbl 08105 `"Hualqui"', add
label define cl02a_res5_lbl 08106 `"Lota"', add
label define cl02a_res5_lbl 08107 `"Penco"', add
label define cl02a_res5_lbl 08108 `"San pedro de la paz"', add
label define cl02a_res5_lbl 08109 `"Santa juana"', add
label define cl02a_res5_lbl 08110 `"Talcahuano"', add
label define cl02a_res5_lbl 08111 `"Tomé"', add
label define cl02a_res5_lbl 08201 `"Lebu"', add
label define cl02a_res5_lbl 08202 `"Arauco"', add
label define cl02a_res5_lbl 08203 `"Cañete"', add
label define cl02a_res5_lbl 08204 `"Contulmo"', add
label define cl02a_res5_lbl 08205 `"Curanilahue"', add
label define cl02a_res5_lbl 08206 `"Los alamos"', add
label define cl02a_res5_lbl 08207 `"Tirúa"', add
label define cl02a_res5_lbl 08301 `"Los angeles"', add
label define cl02a_res5_lbl 08302 `"Antuco"', add
label define cl02a_res5_lbl 08303 `"Cabrero"', add
label define cl02a_res5_lbl 08304 `"Laja"', add
label define cl02a_res5_lbl 08305 `"Mulchén"', add
label define cl02a_res5_lbl 08306 `"Nacimiento"', add
label define cl02a_res5_lbl 08307 `"Negrete"', add
label define cl02a_res5_lbl 08308 `"Quilaco"', add
label define cl02a_res5_lbl 08309 `"Quilleco"', add
label define cl02a_res5_lbl 08310 `"San rosendo"', add
label define cl02a_res5_lbl 08311 `"Santa bárbara"', add
label define cl02a_res5_lbl 08312 `"Tucapel"', add
label define cl02a_res5_lbl 08313 `"Yumbel"', add
label define cl02a_res5_lbl 08401 `"Chillán"', add
label define cl02a_res5_lbl 08402 `"Bulnes"', add
label define cl02a_res5_lbl 08403 `"Cobquecura"', add
label define cl02a_res5_lbl 08404 `"Coelemu"', add
label define cl02a_res5_lbl 08405 `"Coihueco"', add
label define cl02a_res5_lbl 08406 `"Chillán viejo"', add
label define cl02a_res5_lbl 08407 `"El carmen"', add
label define cl02a_res5_lbl 08408 `"Ninhue"', add
label define cl02a_res5_lbl 08409 `"Ñiquén"', add
label define cl02a_res5_lbl 08410 `"Pemuco"', add
label define cl02a_res5_lbl 08411 `"Pinto"', add
label define cl02a_res5_lbl 08412 `"Portezuelo"', add
label define cl02a_res5_lbl 08413 `"Quillón"', add
label define cl02a_res5_lbl 08414 `"Quirihue"', add
label define cl02a_res5_lbl 08415 `"Ránquil"', add
label define cl02a_res5_lbl 08416 `"San carlos"', add
label define cl02a_res5_lbl 08417 `"San fabián"', add
label define cl02a_res5_lbl 08418 `"San ignacio"', add
label define cl02a_res5_lbl 08419 `"San nicolás"', add
label define cl02a_res5_lbl 08420 `"Treguaco"', add
label define cl02a_res5_lbl 08421 `"Yungay"', add
label define cl02a_res5_lbl 09101 `"Temuco"', add
label define cl02a_res5_lbl 09102 `"Carahue"', add
label define cl02a_res5_lbl 09103 `"Cunco"', add
label define cl02a_res5_lbl 09104 `"Curarrehue"', add
label define cl02a_res5_lbl 09105 `"Freire"', add
label define cl02a_res5_lbl 09106 `"Galvarino"', add
label define cl02a_res5_lbl 09107 `"Gorbea"', add
label define cl02a_res5_lbl 09108 `"Lautaro"', add
label define cl02a_res5_lbl 09109 `"Loncoche"', add
label define cl02a_res5_lbl 09110 `"Melipeuco"', add
label define cl02a_res5_lbl 09111 `"Nueva imperial"', add
label define cl02a_res5_lbl 09112 `"Padre las casas"', add
label define cl02a_res5_lbl 09113 `"Perquenco"', add
label define cl02a_res5_lbl 09114 `"Pitrufquén"', add
label define cl02a_res5_lbl 09115 `"Pucón"', add
label define cl02a_res5_lbl 09116 `"Saavedra"', add
label define cl02a_res5_lbl 09117 `"Teodoro schmidt"', add
label define cl02a_res5_lbl 09118 `"Toltén"', add
label define cl02a_res5_lbl 09119 `"Vilcín"', add
label define cl02a_res5_lbl 09120 `"Villarrica"', add
label define cl02a_res5_lbl 09201 `"Angol"', add
label define cl02a_res5_lbl 09202 `"Collipulli"', add
label define cl02a_res5_lbl 09203 `"Curacautín"', add
label define cl02a_res5_lbl 09204 `"Ercilla"', add
label define cl02a_res5_lbl 09205 `"Lonquimay"', add
label define cl02a_res5_lbl 09206 `"Los sauces"', add
label define cl02a_res5_lbl 09207 `"Lumaco"', add
label define cl02a_res5_lbl 09208 `"Purén"', add
label define cl02a_res5_lbl 09209 `"Renaico"', add
label define cl02a_res5_lbl 09210 `"Traiguén"', add
label define cl02a_res5_lbl 09211 `"Victoria"', add
label define cl02a_res5_lbl 10050 `"South Africa"', add
label define cl02a_res5_lbl 10101 `"Puerto montt"', add
label define cl02a_res5_lbl 10102 `"Calbuco"', add
label define cl02a_res5_lbl 10103 `"Cochamó"', add
label define cl02a_res5_lbl 10104 `"Fresia"', add
label define cl02a_res5_lbl 10105 `"Frutillar"', add
label define cl02a_res5_lbl 10106 `"Los muermos"', add
label define cl02a_res5_lbl 10107 `"Llanquihue"', add
label define cl02a_res5_lbl 10108 `"Maullín"', add
label define cl02a_res5_lbl 10109 `"Puerto varas"', add
label define cl02a_res5_lbl 10201 `"Castro"', add
label define cl02a_res5_lbl 10202 `"Ancud"', add
label define cl02a_res5_lbl 10203 `"Chonchi"', add
label define cl02a_res5_lbl 10204 `"Curaco de vélez"', add
label define cl02a_res5_lbl 10205 `"Dalcahue"', add
label define cl02a_res5_lbl 10206 `"Puqueldón"', add
label define cl02a_res5_lbl 10207 `"Queilén"', add
label define cl02a_res5_lbl 10208 `"Quellón"', add
label define cl02a_res5_lbl 10209 `"Quemchi"', add
label define cl02a_res5_lbl 10210 `"Quinchao"', add
label define cl02a_res5_lbl 10301 `"Osorno"', add
label define cl02a_res5_lbl 10302 `"Puerto octay"', add
label define cl02a_res5_lbl 10303 `"Purranque"', add
label define cl02a_res5_lbl 10304 `"Puyehue"', add
label define cl02a_res5_lbl 10305 `"Río negro"', add
label define cl02a_res5_lbl 10306 `"San juan de la costa"', add
label define cl02a_res5_lbl 10307 `"San pablo"', add
label define cl02a_res5_lbl 10401 `"Chaitén"', add
label define cl02a_res5_lbl 10402 `"Futaleufú"', add
label define cl02a_res5_lbl 10403 `"Hualaihué"', add
label define cl02a_res5_lbl 10404 `"Palena"', add
label define cl02a_res5_lbl 10501 `"Valdivia"', add
label define cl02a_res5_lbl 10502 `"Corral"', add
label define cl02a_res5_lbl 10503 `"Futrono"', add
label define cl02a_res5_lbl 10504 `"La unión"', add
label define cl02a_res5_lbl 10505 `"Lago ranco"', add
label define cl02a_res5_lbl 10506 `"Lanco"', add
label define cl02a_res5_lbl 10507 `"Los lagos"', add
label define cl02a_res5_lbl 10508 `"Máfil"', add
label define cl02a_res5_lbl 10509 `"Mariquina"', add
label define cl02a_res5_lbl 10510 `"Paillaco"', add
label define cl02a_res5_lbl 10511 `"Panguipulli"', add
label define cl02a_res5_lbl 10512 `"Río bueno"', add
label define cl02a_res5_lbl 11101 `"Coihaique"', add
label define cl02a_res5_lbl 11102 `"Lago verde"', add
label define cl02a_res5_lbl 11201 `"Aisén"', add
label define cl02a_res5_lbl 11202 `"Cisnes"', add
label define cl02a_res5_lbl 11203 `"Guaitecas"', add
label define cl02a_res5_lbl 11301 `"Cochrane"', add
label define cl02a_res5_lbl 11401 `"Chile chico"', add
label define cl02a_res5_lbl 11402 `"Río ibáñez"', add
label define cl02a_res5_lbl 12101 `"Punta arenas"', add
label define cl02a_res5_lbl 12104 `"San gregorio"', add
label define cl02a_res5_lbl 12201 `"Cabo de horno"', add
label define cl02a_res5_lbl 12301 `"Porvenir"', add
label define cl02a_res5_lbl 12302 `"Primavera"', add
label define cl02a_res5_lbl 12303 `"Timaukel"', add
label define cl02a_res5_lbl 12401 `"Natales"', add
label define cl02a_res5_lbl 12402 `"Torres del paine"', add
label define cl02a_res5_lbl 13101 `"Santiago"', add
label define cl02a_res5_lbl 13102 `"Cerrillos"', add
label define cl02a_res5_lbl 13103 `"Cerro navia"', add
label define cl02a_res5_lbl 13104 `"Conchalí"', add
label define cl02a_res5_lbl 13105 `"El bosque"', add
label define cl02a_res5_lbl 13106 `"Estacion central"', add
label define cl02a_res5_lbl 13107 `"Huechuraba"', add
label define cl02a_res5_lbl 13108 `"Independencia"', add
label define cl02a_res5_lbl 13109 `"La cisterna"', add
label define cl02a_res5_lbl 13110 `"La florida"', add
label define cl02a_res5_lbl 13111 `"La granja"', add
label define cl02a_res5_lbl 13112 `"La pintana"', add
label define cl02a_res5_lbl 13113 `"La reina"', add
label define cl02a_res5_lbl 13114 `"Las condes"', add
label define cl02a_res5_lbl 13115 `"Lo barnechea"', add
label define cl02a_res5_lbl 13116 `"Lo espejo"', add
label define cl02a_res5_lbl 13117 `"Lo prado"', add
label define cl02a_res5_lbl 13118 `"Macul"', add
label define cl02a_res5_lbl 13119 `"Maipú"', add
label define cl02a_res5_lbl 13120 `"Ñuñoa"', add
label define cl02a_res5_lbl 13121 `"Pedro aguirre cerda"', add
label define cl02a_res5_lbl 13122 `"Peñalolén"', add
label define cl02a_res5_lbl 13123 `"Providencia"', add
label define cl02a_res5_lbl 13124 `"Pudahuel"', add
label define cl02a_res5_lbl 13125 `"Quilicura"', add
label define cl02a_res5_lbl 13126 `"Quinta normal"', add
label define cl02a_res5_lbl 13127 `"Recoleta"', add
label define cl02a_res5_lbl 13128 `"Renca"', add
label define cl02a_res5_lbl 13129 `"San joaquín"', add
label define cl02a_res5_lbl 13130 `"San miguel"', add
label define cl02a_res5_lbl 13131 `"San ramón"', add
label define cl02a_res5_lbl 13132 `"Vitacura"', add
label define cl02a_res5_lbl 13201 `"Puente alto"', add
label define cl02a_res5_lbl 13202 `"Pirque"', add
label define cl02a_res5_lbl 13203 `"San josé de maipo"', add
label define cl02a_res5_lbl 13301 `"Colina"', add
label define cl02a_res5_lbl 13302 `"Lampa"', add
label define cl02a_res5_lbl 13303 `"Tiltil"', add
label define cl02a_res5_lbl 13401 `"San bernardo"', add
label define cl02a_res5_lbl 13402 `"Buin"', add
label define cl02a_res5_lbl 13403 `"Calera de tango"', add
label define cl02a_res5_lbl 13404 `"Paine"', add
label define cl02a_res5_lbl 13501 `"Melipilla"', add
label define cl02a_res5_lbl 13502 `"Alhué"', add
label define cl02a_res5_lbl 13503 `"Curacaví"', add
label define cl02a_res5_lbl 13504 `"María pinto"', add
label define cl02a_res5_lbl 13505 `"San pedro"', add
label define cl02a_res5_lbl 13601 `"Talagante"', add
label define cl02a_res5_lbl 13602 `"El monte"', add
label define cl02a_res5_lbl 13603 `"Isla de maipo"', add
label define cl02a_res5_lbl 13604 `"Padre hurtado"', add
label define cl02a_res5_lbl 13605 `"Peñaflor"', add
label define cl02a_res5_lbl 20004 `"Argentina"', add
label define cl02a_res5_lbl 20010 `"Bolivia"', add
label define cl02a_res5_lbl 20011 `"Brazil"', add
label define cl02a_res5_lbl 20012 `"Canada"', add
label define cl02a_res5_lbl 20014 `"Colombia"', add
label define cl02a_res5_lbl 20015 `"Costa Rica"', add
label define cl02a_res5_lbl 20016 `"Cuba"', add
label define cl02a_res5_lbl 20018 `"Ecuador"', add
label define cl02a_res5_lbl 20020 `"United States of America"', add
label define cl02a_res5_lbl 20037 `"Mexico"', add
label define cl02a_res5_lbl 20040 `"Panama"', add
label define cl02a_res5_lbl 20041 `"Paraguay"', add
label define cl02a_res5_lbl 20042 `"Peru"', add
label define cl02a_res5_lbl 20051 `"Uruguay"', add
label define cl02a_res5_lbl 20052 `"Venezuela"', add
label define cl02a_res5_lbl 30011 `"China"', add
label define cl02a_res5_lbl 30013 `"Philippines"', add
label define cl02a_res5_lbl 30020 `"Israel"', add
label define cl02a_res5_lbl 30021 `"Japan"', add
label define cl02a_res5_lbl 40002 `"Germany"', add
label define cl02a_res5_lbl 40004 `"Austria"', add
label define cl02a_res5_lbl 40005 `"Belgium"', add
label define cl02a_res5_lbl 40014 `"Spain"', add
label define cl02a_res5_lbl 40017 `"France"', add
label define cl02a_res5_lbl 40020 `"Netherlands"', add
label define cl02a_res5_lbl 40025 `"Italy"', add
label define cl02a_res5_lbl 40033 `"Norway"', add
label define cl02a_res5_lbl 40036 `"United Kingdon"', add
label define cl02a_res5_lbl 40041 `"Sweden"', add
label define cl02a_res5_lbl 40042 `"Switzerland"', add
label define cl02a_res5_lbl 50002 `"Australia"', add
label define cl02a_res5_lbl 99998 `"Response suppressed"', add
label define cl02a_res5_lbl 99999 `"Unknown"', add
label values cl02a_res5 cl02a_res5_lbl

label define cl02a_lit_lbl 0 `"NIU (not in universe)"'
label define cl02a_lit_lbl 1 `"Yes"', add
label define cl02a_lit_lbl 2 `"No"', add
label values cl02a_lit cl02a_lit_lbl

label define cl02a_edlevel_lbl 00 `"NIU (not in universe)"'
label define cl02a_edlevel_lbl 01 `"Never attended"', add
label define cl02a_edlevel_lbl 02 `"Pre-primary"', add
label define cl02a_edlevel_lbl 03 `"Special/differential education"', add
label define cl02a_edlevel_lbl 04 `"Basic/primary"', add
label define cl02a_edlevel_lbl 05 `"Common highschool"', add
label define cl02a_edlevel_lbl 06 `"Humanities"', add
label define cl02a_edlevel_lbl 07 `"Commercial highschool"', add
label define cl02a_edlevel_lbl 08 `"Industrial highschool"', add
label define cl02a_edlevel_lbl 09 `"Agricultural highschool"', add
label define cl02a_edlevel_lbl 10 `"Maritime highschool"', add
label define cl02a_edlevel_lbl 11 `"Teaching training"', add
label define cl02a_edlevel_lbl 12 `"Feminine technical school"', add
label define cl02a_edlevel_lbl 13 `"Technical training school"', add
label define cl02a_edlevel_lbl 14 `"Professional institute"', add
label define cl02a_edlevel_lbl 15 `"University"', add
label values cl02a_edlevel cl02a_edlevel_lbl

label define cl02a_grade_lbl 0 `"None"'
label define cl02a_grade_lbl 1 `"1"', add
label define cl02a_grade_lbl 2 `"2"', add
label define cl02a_grade_lbl 3 `"3"', add
label define cl02a_grade_lbl 4 `"4"', add
label define cl02a_grade_lbl 5 `"5"', add
label define cl02a_grade_lbl 6 `"6"', add
label define cl02a_grade_lbl 7 `"7"', add
label define cl02a_grade_lbl 8 `"8"', add
label define cl02a_grade_lbl 9 `"NIU (not in universe)"', add
label values cl02a_grade cl02a_grade_lbl

label define cl02a_edattain_lbl 000 `"NIU (not in universe)"'
label define cl02a_edattain_lbl 010 `"Never attended, 0 years"', add
label define cl02a_edattain_lbl 020 `"Pre-basic, 0 years"', add
label define cl02a_edattain_lbl 031 `"Special/Differential education, 1 year"', add
label define cl02a_edattain_lbl 032 `"Special/Differential education, 2 years"', add
label define cl02a_edattain_lbl 033 `"Special/Differential education, 3 years"', add
label define cl02a_edattain_lbl 034 `"Special/Differential education, 4 years"', add
label define cl02a_edattain_lbl 035 `"Special/Differential education, 5 years"', add
label define cl02a_edattain_lbl 036 `"Special/Differential education, 6 years"', add
label define cl02a_edattain_lbl 037 `"Special/Differential education, 7 years"', add
label define cl02a_edattain_lbl 038 `"Special/Differential education, 8 years"', add
label define cl02a_edattain_lbl 041 `"Basic/Primary, 1 year"', add
label define cl02a_edattain_lbl 042 `"Basic/Primary, 2 years"', add
label define cl02a_edattain_lbl 043 `"Basic/Primary, 3 years"', add
label define cl02a_edattain_lbl 044 `"Basic/Primary, 4 years"', add
label define cl02a_edattain_lbl 045 `"Basic/Primary, 5 years"', add
label define cl02a_edattain_lbl 046 `"Basic/Primary, 6 years"', add
label define cl02a_edattain_lbl 047 `"Basic/Primary, 7 years"', add
label define cl02a_edattain_lbl 048 `"Basic/Primary, 8 years"', add
label define cl02a_edattain_lbl 051 `"Common highschool, 1 year"', add
label define cl02a_edattain_lbl 052 `"Common highschool, 2 years"', add
label define cl02a_edattain_lbl 053 `"Common highschool, 3 years"', add
label define cl02a_edattain_lbl 054 `"Common highschool, 4 years"', add
label define cl02a_edattain_lbl 061 `"Humanities (highschool), 1 year"', add
label define cl02a_edattain_lbl 062 `"Humanities (highschool), 2 years"', add
label define cl02a_edattain_lbl 063 `"Humanities (highschool), 3 years"', add
label define cl02a_edattain_lbl 064 `"Humanities (highschool), 4 years"', add
label define cl02a_edattain_lbl 065 `"Humanities (highschool), 5 years"', add
label define cl02a_edattain_lbl 066 `"Humanities (highschool), 6 years"', add
label define cl02a_edattain_lbl 071 `"Commercial highschool , 1 year"', add
label define cl02a_edattain_lbl 072 `"Commercial highschool , 2 years"', add
label define cl02a_edattain_lbl 073 `"Commercial highschool , 3 years"', add
label define cl02a_edattain_lbl 074 `"Commercial highschool , 4 years"', add
label define cl02a_edattain_lbl 075 `"Commercial highschool , 5 years"', add
label define cl02a_edattain_lbl 081 `"Industrial highschool , 1 year"', add
label define cl02a_edattain_lbl 082 `"Industrial highschool , 2 years"', add
label define cl02a_edattain_lbl 083 `"Industrial highschool , 3 years"', add
label define cl02a_edattain_lbl 084 `"Industrial highschool , 4 years"', add
label define cl02a_edattain_lbl 085 `"Industrial highschool , 5 years"', add
label define cl02a_edattain_lbl 091 `"Agricultural highschool , 1 year"', add
label define cl02a_edattain_lbl 092 `"Agricultural highschool , 2 years"', add
label define cl02a_edattain_lbl 093 `"Agricultural highschool , 3 years"', add
label define cl02a_edattain_lbl 094 `"Agricultural highschool , 4 years"', add
label define cl02a_edattain_lbl 095 `"Agricultural highschool , 5 years"', add
label define cl02a_edattain_lbl 101 `"Maritime highschool , 1 year"', add
label define cl02a_edattain_lbl 102 `"Maritime highschool , 2 years"', add
label define cl02a_edattain_lbl 103 `"Maritime highschool , 3 years"', add
label define cl02a_edattain_lbl 104 `"Maritime highschool , 4 years"', add
label define cl02a_edattain_lbl 105 `"Maritime highschool , 5 years"', add
label define cl02a_edattain_lbl 111 `"Normal (teacher-training), 1 year"', add
label define cl02a_edattain_lbl 112 `"Normal (teacher-training), 2 years"', add
label define cl02a_edattain_lbl 113 `"Normal (teacher-training), 3 years"', add
label define cl02a_edattain_lbl 114 `"Normal (teacher-training), 4 years"', add
label define cl02a_edattain_lbl 115 `"Normal (teacher-training), 5 years"', add
label define cl02a_edattain_lbl 116 `"Normal (teacher-training), 6 years"', add
label define cl02a_edattain_lbl 117 `"Normal (teacher-training), 7 years"', add
label define cl02a_edattain_lbl 121 `"Feminine technical school, 1 year"', add
label define cl02a_edattain_lbl 122 `"Feminine technical school, 2 years"', add
label define cl02a_edattain_lbl 123 `"Feminine technical school, 3 years"', add
label define cl02a_edattain_lbl 124 `"Feminine technical school, 4 years"', add
label define cl02a_edattain_lbl 125 `"Feminine technical school, 5 years"', add
label define cl02a_edattain_lbl 131 `"Technical training school, 1 year"', add
label define cl02a_edattain_lbl 132 `"Technical training school, 2 years"', add
label define cl02a_edattain_lbl 133 `"Technical training school, 3 years"', add
label define cl02a_edattain_lbl 134 `"Technical training school, 4 years"', add
label define cl02a_edattain_lbl 141 `"Professional institute, 1 year"', add
label define cl02a_edattain_lbl 142 `"Professional institute, 2 years"', add
label define cl02a_edattain_lbl 143 `"Professional institute, 3 years"', add
label define cl02a_edattain_lbl 144 `"Professional institute, 4 years"', add
label define cl02a_edattain_lbl 145 `"Professional institute, 5 years"', add
label define cl02a_edattain_lbl 151 `"University, 1 year"', add
label define cl02a_edattain_lbl 152 `"University, 2 years"', add
label define cl02a_edattain_lbl 153 `"University, 3 years"', add
label define cl02a_edattain_lbl 154 `"University, 4 years"', add
label define cl02a_edattain_lbl 155 `"University, 5 years"', add
label define cl02a_edattain_lbl 156 `"University, 6 years"', add
label define cl02a_edattain_lbl 157 `"University, 7 years"', add
label define cl02a_edattain_lbl 158 `"University, 8 years"', add
label values cl02a_edattain cl02a_edattain_lbl

label define cl02a_marst_lbl 0 `"NIU (not in universe)"'
label define cl02a_marst_lbl 1 `"Married"', add
label define cl02a_marst_lbl 2 `"Living together/consensual union"', add
label define cl02a_marst_lbl 3 `"Single"', add
label define cl02a_marst_lbl 4 `"Annulled"', add
label define cl02a_marst_lbl 5 `"Separated"', add
label define cl02a_marst_lbl 6 `"Widowed"', add
label values cl02a_marst cl02a_marst_lbl

label define cl02a_relig_lbl 0 `"NIU (not in universe)"'
label define cl02a_relig_lbl 1 `"Catholic"', add
label define cl02a_relig_lbl 2 `"Evangelical protestant"', add
label define cl02a_relig_lbl 3 `"Jehovah's witness"', add
label define cl02a_relig_lbl 4 `"Jewish"', add
label define cl02a_relig_lbl 5 `"Mormon"', add
label define cl02a_relig_lbl 6 `"Muslim"', add
label define cl02a_relig_lbl 7 `"Orthodox"', add
label define cl02a_relig_lbl 8 `"Other religion or creed"', add
label define cl02a_relig_lbl 9 `"None, atheist, agnostic"', add
label values cl02a_relig cl02a_relig_lbl

label define cl02a_empstat_lbl 00 `"NIU (not in universe)"'
label define cl02a_empstat_lbl 01 `"Worked for income"', add
label define cl02a_empstat_lbl 02 `"Did not work, but had a job"', add
label define cl02a_empstat_lbl 03 `"Looking for work, having worked before"', add
label define cl02a_empstat_lbl 04 `"Working for a family member without payment in money"', add
label define cl02a_empstat_lbl 05 `"Looking for work for the first time"', add
label define cl02a_empstat_lbl 06 `"Domestic duties in own home"', add
label define cl02a_empstat_lbl 07 `"Student"', add
label define cl02a_empstat_lbl 08 `"Retired or rentier"', add
label define cl02a_empstat_lbl 09 `"Permanently disabled for purposes of work"', add
label define cl02a_empstat_lbl 10 `"Other situation"', add
label values cl02a_empstat cl02a_empstat_lbl

label define cl02a_classwk_lbl 0 `"NIU (not in universe)"'
label define cl02a_classwk_lbl 1 `"Salaried worker"', add
label define cl02a_classwk_lbl 2 `"Domestic service worker"', add
label define cl02a_classwk_lbl 3 `"Own-account worker"', add
label define cl02a_classwk_lbl 4 `"Employer, entrepreneur or owner"', add
label define cl02a_classwk_lbl 5 `"Unpaid family worker"', add
label values cl02a_classwk cl02a_classwk_lbl

label define cl02a_workhere_lbl 0 `"NIU (not in universe)"'
label define cl02a_workhere_lbl 1 `"In this comuna"', add
label define cl02a_workhere_lbl 2 `"In another comuna"', add
label define cl02a_workhere_lbl 3 `"In another country"', add
label define cl02a_workhere_lbl 9 `"Unknown"', add
label values cl02a_workhere cl02a_workhere_lbl

label define cl02a_chborn_lbl 00 `"0"'
label define cl02a_chborn_lbl 01 `"1"', add
label define cl02a_chborn_lbl 02 `"2"', add
label define cl02a_chborn_lbl 03 `"3"', add
label define cl02a_chborn_lbl 04 `"4"', add
label define cl02a_chborn_lbl 05 `"5"', add
label define cl02a_chborn_lbl 06 `"6"', add
label define cl02a_chborn_lbl 07 `"7"', add
label define cl02a_chborn_lbl 08 `"8"', add
label define cl02a_chborn_lbl 09 `"9"', add
label define cl02a_chborn_lbl 10 `"10"', add
label define cl02a_chborn_lbl 11 `"11"', add
label define cl02a_chborn_lbl 12 `"12"', add
label define cl02a_chborn_lbl 13 `"13"', add
label define cl02a_chborn_lbl 14 `"14"', add
label define cl02a_chborn_lbl 15 `"15"', add
label define cl02a_chborn_lbl 16 `"16"', add
label define cl02a_chborn_lbl 17 `"17"', add
label define cl02a_chborn_lbl 18 `"18"', add
label define cl02a_chborn_lbl 19 `"19"', add
label define cl02a_chborn_lbl 20 `"20+"', add
label define cl02a_chborn_lbl 98 `"Unknown"', add
label define cl02a_chborn_lbl 99 `"NIU (not in universe)"', add
label values cl02a_chborn cl02a_chborn_lbl

label define cl02a_chsurv_lbl 00 `"0"'
label define cl02a_chsurv_lbl 01 `"1"', add
label define cl02a_chsurv_lbl 02 `"2"', add
label define cl02a_chsurv_lbl 03 `"3"', add
label define cl02a_chsurv_lbl 04 `"4"', add
label define cl02a_chsurv_lbl 05 `"5"', add
label define cl02a_chsurv_lbl 06 `"6"', add
label define cl02a_chsurv_lbl 07 `"7"', add
label define cl02a_chsurv_lbl 08 `"8"', add
label define cl02a_chsurv_lbl 09 `"9"', add
label define cl02a_chsurv_lbl 10 `"10"', add
label define cl02a_chsurv_lbl 11 `"11"', add
label define cl02a_chsurv_lbl 12 `"12"', add
label define cl02a_chsurv_lbl 13 `"13"', add
label define cl02a_chsurv_lbl 14 `"14"', add
label define cl02a_chsurv_lbl 15 `"15+"', add
label define cl02a_chsurv_lbl 98 `"Unknown"', add
label define cl02a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values cl02a_chsurv cl02a_chsurv_lbl

label define cl02a_lstmonth_lbl 00 `"NIU (not in universe)"'
label define cl02a_lstmonth_lbl 01 `"January"', add
label define cl02a_lstmonth_lbl 02 `"February"', add
label define cl02a_lstmonth_lbl 03 `"March"', add
label define cl02a_lstmonth_lbl 04 `"April"', add
label define cl02a_lstmonth_lbl 05 `"May"', add
label define cl02a_lstmonth_lbl 06 `"June"', add
label define cl02a_lstmonth_lbl 07 `"July"', add
label define cl02a_lstmonth_lbl 08 `"August"', add
label define cl02a_lstmonth_lbl 09 `"September"', add
label define cl02a_lstmonth_lbl 10 `"October"', add
label define cl02a_lstmonth_lbl 11 `"November"', add
label define cl02a_lstmonth_lbl 12 `"December"', add
label values cl02a_lstmonth cl02a_lstmonth_lbl

label define cl02a_lstyear_lbl 0000 `"NIU (not in universe)"'
label define cl02a_lstyear_lbl 1929 `"1929 or before"', add
label define cl02a_lstyear_lbl 1930 `"1930"', add
label define cl02a_lstyear_lbl 1931 `"1931"', add
label define cl02a_lstyear_lbl 1932 `"1932"', add
label define cl02a_lstyear_lbl 1933 `"1933"', add
label define cl02a_lstyear_lbl 1934 `"1934"', add
label define cl02a_lstyear_lbl 1935 `"1935"', add
label define cl02a_lstyear_lbl 1936 `"1936"', add
label define cl02a_lstyear_lbl 1937 `"1937"', add
label define cl02a_lstyear_lbl 1938 `"1938"', add
label define cl02a_lstyear_lbl 1939 `"1939"', add
label define cl02a_lstyear_lbl 1940 `"1940"', add
label define cl02a_lstyear_lbl 1941 `"1941"', add
label define cl02a_lstyear_lbl 1942 `"1942"', add
label define cl02a_lstyear_lbl 1943 `"1943"', add
label define cl02a_lstyear_lbl 1944 `"1944"', add
label define cl02a_lstyear_lbl 1945 `"1945"', add
label define cl02a_lstyear_lbl 1946 `"1946"', add
label define cl02a_lstyear_lbl 1947 `"1947"', add
label define cl02a_lstyear_lbl 1948 `"1948"', add
label define cl02a_lstyear_lbl 1949 `"1949"', add
label define cl02a_lstyear_lbl 1950 `"1950"', add
label define cl02a_lstyear_lbl 1951 `"1951"', add
label define cl02a_lstyear_lbl 1952 `"1952"', add
label define cl02a_lstyear_lbl 1953 `"1953"', add
label define cl02a_lstyear_lbl 1954 `"1954"', add
label define cl02a_lstyear_lbl 1955 `"1955"', add
label define cl02a_lstyear_lbl 1956 `"1956"', add
label define cl02a_lstyear_lbl 1957 `"1957"', add
label define cl02a_lstyear_lbl 1958 `"1958"', add
label define cl02a_lstyear_lbl 1959 `"1959"', add
label define cl02a_lstyear_lbl 1960 `"1960"', add
label define cl02a_lstyear_lbl 1961 `"1961"', add
label define cl02a_lstyear_lbl 1962 `"1962"', add
label define cl02a_lstyear_lbl 1963 `"1963"', add
label define cl02a_lstyear_lbl 1964 `"1964"', add
label define cl02a_lstyear_lbl 1965 `"1965"', add
label define cl02a_lstyear_lbl 1966 `"1966"', add
label define cl02a_lstyear_lbl 1967 `"1967"', add
label define cl02a_lstyear_lbl 1968 `"1968"', add
label define cl02a_lstyear_lbl 1969 `"1969"', add
label define cl02a_lstyear_lbl 1970 `"1970"', add
label define cl02a_lstyear_lbl 1971 `"1971"', add
label define cl02a_lstyear_lbl 1972 `"1972"', add
label define cl02a_lstyear_lbl 1973 `"1973"', add
label define cl02a_lstyear_lbl 1974 `"1974"', add
label define cl02a_lstyear_lbl 1975 `"1975"', add
label define cl02a_lstyear_lbl 1976 `"1976"', add
label define cl02a_lstyear_lbl 1977 `"1977"', add
label define cl02a_lstyear_lbl 1978 `"1978"', add
label define cl02a_lstyear_lbl 1979 `"1979"', add
label define cl02a_lstyear_lbl 1980 `"1980"', add
label define cl02a_lstyear_lbl 1981 `"1981"', add
label define cl02a_lstyear_lbl 1982 `"1982"', add
label define cl02a_lstyear_lbl 1983 `"1983"', add
label define cl02a_lstyear_lbl 1984 `"1984"', add
label define cl02a_lstyear_lbl 1985 `"1985"', add
label define cl02a_lstyear_lbl 1986 `"1986"', add
label define cl02a_lstyear_lbl 1987 `"1987"', add
label define cl02a_lstyear_lbl 1988 `"1988"', add
label define cl02a_lstyear_lbl 1989 `"1989"', add
label define cl02a_lstyear_lbl 1990 `"1990"', add
label define cl02a_lstyear_lbl 1991 `"1991"', add
label define cl02a_lstyear_lbl 1992 `"1992"', add
label define cl02a_lstyear_lbl 1993 `"1993"', add
label define cl02a_lstyear_lbl 1994 `"1994"', add
label define cl02a_lstyear_lbl 1995 `"1995"', add
label define cl02a_lstyear_lbl 1996 `"1996"', add
label define cl02a_lstyear_lbl 1997 `"1997"', add
label define cl02a_lstyear_lbl 1998 `"1998"', add
label define cl02a_lstyear_lbl 1999 `"1999"', add
label define cl02a_lstyear_lbl 2000 `"2000"', add
label define cl02a_lstyear_lbl 2001 `"2001"', add
label define cl02a_lstyear_lbl 2002 `"2002"', add
label define cl02a_lstyear_lbl 9999 `"Unknown"', add
label values cl02a_lstyear cl02a_lstyear_lbl

label define cl02a_yrschool_lbl 00 `"Never attended or none"'
label define cl02a_yrschool_lbl 01 `"1"', add
label define cl02a_yrschool_lbl 02 `"2"', add
label define cl02a_yrschool_lbl 03 `"3"', add
label define cl02a_yrschool_lbl 04 `"4"', add
label define cl02a_yrschool_lbl 05 `"5"', add
label define cl02a_yrschool_lbl 06 `"6"', add
label define cl02a_yrschool_lbl 07 `"7"', add
label define cl02a_yrschool_lbl 08 `"8"', add
label define cl02a_yrschool_lbl 09 `"9"', add
label define cl02a_yrschool_lbl 10 `"10"', add
label define cl02a_yrschool_lbl 11 `"11"', add
label define cl02a_yrschool_lbl 12 `"12"', add
label define cl02a_yrschool_lbl 13 `"13"', add
label define cl02a_yrschool_lbl 14 `"14"', add
label define cl02a_yrschool_lbl 15 `"15"', add
label define cl02a_yrschool_lbl 16 `"16"', add
label define cl02a_yrschool_lbl 17 `"17"', add
label define cl02a_yrschool_lbl 18 `"18"', add
label define cl02a_yrschool_lbl 19 `"19"', add
label define cl02a_yrschool_lbl 20 `"20"', add
label define cl02a_yrschool_lbl 99 `"NIU (not in universe)"', add
label values cl02a_yrschool cl02a_yrschool_lbl

label define cl02a_disab_lbl 0 `"Without disability"'
label define cl02a_disab_lbl 1 `"Blindness only"', add
label define cl02a_disab_lbl 2 `"Deafness only"', add
label define cl02a_disab_lbl 3 `"Muteness only"', add
label define cl02a_disab_lbl 4 `"Loss of limb/paralysis only"', add
label define cl02a_disab_lbl 5 `"Mental defficiency only"', add
label define cl02a_disab_lbl 6 `"Two disabilities"', add
label define cl02a_disab_lbl 7 `"Three disabilities"', add
label define cl02a_disab_lbl 8 `"Four disabilities"', add
label define cl02a_disab_lbl 9 `"Five disabilities"', add
label values cl02a_disab cl02a_disab_lbl

label define cl02a_occ_lbl 00 `"NIU (not in universe)"'
label define cl02a_occ_lbl 01 `"Armed forces, police, and investigators"', add
label define cl02a_occ_lbl 11 `"Members of the executive and legislative branches of gove..."', add
label define cl02a_occ_lbl 12 `"Company directors (having 3 or more directors)"', add
label define cl02a_occ_lbl 13 `"Managers of small businesses (having 1 or 2 directors)"', add
label define cl02a_occ_lbl 21 `"Professionals in the physical sciences, chemistry, mathem..."', add
label define cl02a_occ_lbl 22 `"Professionals in the biological sciences, medicine and he..."', add
label define cl02a_occ_lbl 23 `"Educational professionals"', add
label define cl02a_occ_lbl 24 `"Other scientific and intellectual professionals"', add
label define cl02a_occ_lbl 31 `"Technicians and mid-level professionals in the physical s..."', add
label define cl02a_occ_lbl 32 `"Technicians and mid-level professionals in the biological..."', add
label define cl02a_occ_lbl 33 `"Teachers and technical instructors"', add
label define cl02a_occ_lbl 34 `"Other technicians"', add
label define cl02a_occ_lbl 41 `"Office staff"', add
label define cl02a_occ_lbl 42 `"Employees in direct contact with the public"', add
label define cl02a_occ_lbl 51 `"Workers in personal services, protection and security"', add
label define cl02a_occ_lbl 52 `"Models, salespeople and demonstrators"', add
label define cl02a_occ_lbl 61 `"Farmers and workers in agricultural enterprises"', add
label define cl02a_occ_lbl 62 `"Subsistence farmers and fishers"', add
label define cl02a_occ_lbl 71 `"Officials and operators or extraction industries and cons..."', add
label define cl02a_occ_lbl 72 `"Officials and operators of metallurgy, mechanical construc..."', add
label define cl02a_occ_lbl 73 `"Precision mechanics, artisans, graphic arts operators and..."', add
label define cl02a_occ_lbl 74 `"Other officials, operators and artisans of mechanical art..."', add
label define cl02a_occ_lbl 81 `"Fixed installation operators/machinists and related"', add
label define cl02a_occ_lbl 82 `"Machine operators and installers"', add
label define cl02a_occ_lbl 83 `"Vehicle drivers and operators of heavy and mobile equipment"', add
label define cl02a_occ_lbl 91 `"Workers not classified as sales and services"', add
label define cl02a_occ_lbl 92 `"Laborers in agriculture, livestock operations, forestry, ..."', add
label define cl02a_occ_lbl 93 `"Laborers in mining, construction, manufacturing industry ..."', add
label define cl02a_occ_lbl 99 `"Unknown"', add
label values cl02a_occ cl02a_occ_lbl

label define cl02a_ind_lbl 00 `"NIU (not in universe)"'
label define cl02a_ind_lbl 01 `"Agriculture, livestock, hunting and related service activities"', add
label define cl02a_ind_lbl 02 `"Forestry, wood extraction and related service activities"', add
label define cl02a_ind_lbl 05 `"Fisheries, fish farming and services related to fishing"', add
label define cl02a_ind_lbl 10 `"Coal, lignite and peat extraction"', add
label define cl02a_ind_lbl 11 `"Crude oil and natural gas extraction, and related service activities"', add
label define cl02a_ind_lbl 13 `"Mining of metallic minerals"', add
label define cl02a_ind_lbl 14 `"Mining of other minerals and quarries"', add
label define cl02a_ind_lbl 15 `"Food and drink product manufacture"', add
label define cl02a_ind_lbl 16 `"Tobacco product manufacture"', add
label define cl02a_ind_lbl 17 `"Textile product manufacture"', add
label define cl02a_ind_lbl 18 `"Clothing and furs processing and manufacture"', add
label define cl02a_ind_lbl 19 `"Leather processing, manufacture of luggage, handbags, leatherwear and storage, and footwear"', add
label define cl02a_ind_lbl 20 `"Production of wood and manufacture of wood and cork products with the exception of furniture, manufacture of straw articles and braidable materials"', add
label define cl02a_ind_lbl 21 `"Paper and paper products manufacture"', add
label define cl02a_ind_lbl 22 `"Editorial, printing and recording reproduction activities"', add
label define cl02a_ind_lbl 23 `"Coke production, products from oil refining and nuclear fuel"', add
label define cl02a_ind_lbl 24 `"Chemical and chemical products manufacture"', add
label define cl02a_ind_lbl 25 `"Rubber and plastic products manufacture"', add
label define cl02a_ind_lbl 26 `"Manufacture of other non-metallic mineral products"', add
label define cl02a_ind_lbl 27 `"Common metals manufacture"', add
label define cl02a_ind_lbl 28 `"Metal products manufacture, with the exception of machinery and equipment"', add
label define cl02a_ind_lbl 29 `"Machinery and equipment products manufacture N.E.C."', add
label define cl02a_ind_lbl 30 `"Manufacture of office, accounting, and information technology equipment"', add
label define cl02a_ind_lbl 31 `"Electrical equipment and appliance manufacture"', add
label define cl02a_ind_lbl 32 `"Radio, television and communications equipment manufacture"', add
label define cl02a_ind_lbl 33 `"Manufacture of medical instruments, precision optics and watch making"', add
label define cl02a_ind_lbl 34 `"Manufacture of automobiles, trailers and semitrailers"', add
label define cl02a_ind_lbl 35 `"Manufacture of other types of transportation equipment"', add
label define cl02a_ind_lbl 36 `"Furniture manufacture, manufacturing industries N.E.C."', add
label define cl02a_ind_lbl 37 `"Recycling"', add
label define cl02a_ind_lbl 40 `"Electrical, gas, steam and hot water supply and distribution"', add
label define cl02a_ind_lbl 41 `"Water collection, purification and distribution"', add
label define cl02a_ind_lbl 45 `"Construction"', add
label define cl02a_ind_lbl 50 `"Sales, maintenance and repair of automobiles and motorcycles, retail sale of automobile fuel"', add
label define cl02a_ind_lbl 51 `"Wholesale sales and sales by commission, excluding automobile and motorcycle sales"', add
label define cl02a_ind_lbl 52 `"Retail sales, excluding sales of automobiles and motorcycles; repair of personal and household items"', add
label define cl02a_ind_lbl 55 `"Hotels and restaurants"', add
label define cl02a_ind_lbl 60 `"Ground transportation, pipeline transportation"', add
label define cl02a_ind_lbl 61 `"Water transportation"', add
label define cl02a_ind_lbl 62 `"Air transportation"', add
label define cl02a_ind_lbl 63 `"Complementary and auxiliary transportation activities, travel agency activities"', add
label define cl02a_ind_lbl 64 `"Postal service and telecommunications"', add
label define cl02a_ind_lbl 65 `"Financial intermediary services, excluding financing of insurance and pension plans"', add
label define cl02a_ind_lbl 66 `"Financing of insurance and pension plans, excluding those of mandatory participation"', add
label define cl02a_ind_lbl 67 `"Activities auxiliary to financial mediation"', add
label define cl02a_ind_lbl 70 `"Real estate activities"', add
label define cl02a_ind_lbl 71 `"Rental of machinery and equipment without operators and of personal and household items"', add
label define cl02a_ind_lbl 72 `"Information services and related activities"', add
label define cl02a_ind_lbl 73 `"Research and development"', add
label define cl02a_ind_lbl 74 `"Other entrepreneurial activities"', add
label define cl02a_ind_lbl 75 `"Public administration and defense, social security/insurance plans with mandatory participation"', add
label define cl02a_ind_lbl 80 `"Education"', add
label define cl02a_ind_lbl 85 `"Social services and health sector activities"', add
label define cl02a_ind_lbl 90 `"Household waste and wastewater removal and treatment, and similar activities"', add
label define cl02a_ind_lbl 91 `"Activities of associations not previously covered"', add
label define cl02a_ind_lbl 92 `"Entertainment, cultural and sports activities"', add
label define cl02a_ind_lbl 93 `"Other service-type activities"', add
label define cl02a_ind_lbl 95 `"Private households with domestic servants"', add
label define cl02a_ind_lbl 98 `"Extraterritorial organizations and organisms"', add
label define cl02a_ind_lbl 99 `"Unknown or response suppressed"', add
label values cl02a_ind cl02a_ind_lbl

label define cl02a_disabno_lbl 1 `"Yes"'
label define cl02a_disabno_lbl 2 `"No"', add
label values cl02a_disabno cl02a_disabno_lbl


