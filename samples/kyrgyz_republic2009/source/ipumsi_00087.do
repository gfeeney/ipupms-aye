* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                        ///
  int     cntry             1-3      ///
  int     year              4-7      ///
  int     sample            8-11     ///
  double  serial            12-21    ///
  long    kg09a_dwnum       22-28    ///
  byte    kg09a_hhnum       29-30    ///
  byte    kg09a_hhn         31-32    ///
  byte    kg09a_pernd       33-34    ///
  byte    kg09a_pern        35-36    ///
  byte    kg09a_structnum   37-37    ///
  byte    kg09a_restype     38-38    ///
  byte    kg09a_stories     39-39    ///
  byte    kg09a_wall        40-40    ///
  byte    kg09a_construct   41-41    ///
  byte    kg09a_seismic     42-42    ///
  byte    kg09a_occrestype  43-44    ///
  byte    kg09a_occupancy   45-45    ///
  int     kg09a_area        46-48    ///
  int     kg09a_livarea     49-51    ///
  byte    kg09a_rooms       52-53    ///
  byte    kg09a_region      54-54    ///
  long    kg09a_dist        55-59    ///
  byte    kg09a_urban       60-60    ///
  int     pernum            61-63    ///
  float   wtper             64-71    ///
  byte    kg09a_pernum      72-73    ///
  byte    kg09a_geogaway    74-75    ///
  byte    kg09a_awaytime    76-76    ///
  byte    kg09a_whyaway     77-77    ///
  byte    kg09a_relate      78-79    ///
  byte    kg09a_parentloc   80-81    ///
  byte    kg09a_sex         82-82    ///
  byte    kg09a_resstatus   83-83    ///
  byte    kg09a_mob         84-85    ///
  int     kg09a_yob         86-89    ///
  byte    kg09a_age         90-91    ///
  int     kg09a_nation      92-94    ///
  int     kg09a_lang1       95-97    ///
  int     kg09a_lang2       98-100   ///
  int     kg09a_lang3       101-103  ///
  long    kg09a_bpl         104-108  ///
  int     kg09a_bplctry     109-111  ///
  byte    kg09a_citizen     112-112  ///
  int     kg09a_yrmoved     113-116  ///
  byte    kg09a_whymoved    117-117  ///
  byte    kg09a_marst       118-118  ///
  byte    kg09a_sploc       119-120  ///
  byte    kg09a_edlevel     121-122  ///
  byte    kg09a_lit         123-123  ///
  byte    kg09a_degree      124-124  ///
  byte    kg09a_edtype      125-125  ///
  byte    kg09a_preschool   126-126  ///
  byte    kg09a_incsrc      127-127  ///
  int     kg09a_ind         128-131  ///
  byte    kg09a_empstat     132-132  ///
  byte    kg09a_lookwk      133-133  ///
  byte    kg09a_nowkreas    134-134  ///
  byte    kg09a_chborn      135-136  ///
  byte    kg09a_chbornm     137-138  ///
  byte    kg09a_chbornf     139-140  ///
  byte    kg09a_chsurv      141-142  ///
  byte    kg09a_chsurvm     143-144  ///
  byte    kg09a_chsurvf     145-146  ///
  byte    kg09a_chaway      147-148  ///
  byte    kg09a_chawaym     149-150  ///
  byte    kg09a_chawayf     151-152  ///
  using `"ipumsi_00087.dat"'

replace wtper            = wtper            / 100

format serial           %10.0f
format wtper            %8.2f

label var cntry            `"Country"'
label var year             `"Year"'
label var sample           `"IPUMS sample identifier"'
label var serial           `"Household serial number"'
label var kg09a_dwnum      `"Dwelling number"'
label var kg09a_hhnum      `"Household number (within dwelling)"'
label var kg09a_hhn        `"Number of households in dwelling"'
label var kg09a_pernd      `"Number of persons in dwelling"'
label var kg09a_pern       `"Number of persons in household"'
label var kg09a_structnum  `"Number of structure"'
label var kg09a_restype    `"Residential premise type"'
label var kg09a_stories    `"Number of stories"'
label var kg09a_wall       `"Wall material of premises"'
label var kg09a_construct  `"Construction period"'
label var kg09a_seismic    `"Seismic stability"'
label var kg09a_occrestype `"Type of occupied residential premise"'
label var kg09a_occupancy  `"Occupancy"'
label var kg09a_area       `"Total area of dwelling (square meters)"'
label var kg09a_livarea    `"Residential area of dwelling (square meters)"'
label var kg09a_rooms      `"Number of rooms occupied by household"'
label var kg09a_region     `"Region"'
label var kg09a_dist       `"District"'
label var kg09a_urban      `"Urban or rural"'
label var pernum           `"Person number"'
label var wtper            `"Person weight"'
label var kg09a_pernum     `"Person number (within household)"'
label var kg09a_geogaway   `"Location of absent persons"'
label var kg09a_awaytime   `"How long have absent persons been away"'
label var kg09a_whyaway    `"Reason for absence"'
label var kg09a_relate     `"Relationship to person enumerated first"'
label var kg09a_parentloc  `"Number of the mother or father"'
label var kg09a_sex        `"Sex"'
label var kg09a_resstatus  `"Absent on census night"'
label var kg09a_mob        `"Month of birth"'
label var kg09a_yob        `"Year of birth"'
label var kg09a_age        `"Age"'
label var kg09a_nation     `"Nationality"'
label var kg09a_lang1      `"Mother tongue"'
label var kg09a_lang2      `"Second fluently spoken language"'
label var kg09a_lang3      `"Third fluently spoken language"'
label var kg09a_bpl        `"District or city of birth"'
label var kg09a_bplctry    `"Country of birth"'
label var kg09a_citizen    `"Citizenship"'
label var kg09a_yrmoved    `"Year moved to current settlement"'
label var kg09a_whymoved   `"Reason for moving"'
label var kg09a_marst      `"Marital status"'
label var kg09a_sploc      `"Person number of spouse"'
label var kg09a_edlevel    `"Education level"'
label var kg09a_lit        `"Read and write"'
label var kg09a_degree     `"Type of degree"'
label var kg09a_edtype     `"Type of educational institution attending"'
label var kg09a_preschool  `"Attending preschool"'
label var kg09a_incsrc     `"Sources of income"'
label var kg09a_ind        `"Type of industry, enterprise or organization"'
label var kg09a_empstat    `"Employment status"'
label var kg09a_lookwk     `"Looking for work"'
label var kg09a_nowkreas   `"Reason not looking for work"'
label var kg09a_chborn     `"Total number of children born"'
label var kg09a_chbornm    `"Number of male children born"'
label var kg09a_chbornf    `"Number of female children born"'
label var kg09a_chsurv     `"Number of children surviving"'
label var kg09a_chsurvm    `"Number of male children surviving"'
label var kg09a_chsurvf    `"Number of female children surviving"'
label var kg09a_chaway     `"Number of children born that are living elsewhere"'
label var kg09a_chawaym    `"Number of male children born that are living elsewhere"'
label var kg09a_chawayf    `"Number of female children born that are living elsewhere"'

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

label define kg09a_hhnum_lbl 01 `"1"'
label define kg09a_hhnum_lbl 02 `"2"', add
label define kg09a_hhnum_lbl 03 `"3"', add
label define kg09a_hhnum_lbl 04 `"4"', add
label define kg09a_hhnum_lbl 05 `"5"', add
label define kg09a_hhnum_lbl 06 `"6"', add
label define kg09a_hhnum_lbl 07 `"7"', add
label define kg09a_hhnum_lbl 08 `"8"', add
label define kg09a_hhnum_lbl 09 `"9"', add
label define kg09a_hhnum_lbl 10 `"10"', add
label define kg09a_hhnum_lbl 11 `"11"', add
label define kg09a_hhnum_lbl 12 `"12"', add
label define kg09a_hhnum_lbl 13 `"13"', add
label values kg09a_hhnum kg09a_hhnum_lbl

label define kg09a_hhn_lbl 01 `"1"'
label define kg09a_hhn_lbl 02 `"2"', add
label define kg09a_hhn_lbl 03 `"3"', add
label define kg09a_hhn_lbl 04 `"4"', add
label define kg09a_hhn_lbl 05 `"5"', add
label define kg09a_hhn_lbl 06 `"6"', add
label define kg09a_hhn_lbl 07 `"7"', add
label define kg09a_hhn_lbl 08 `"8"', add
label define kg09a_hhn_lbl 09 `"9"', add
label define kg09a_hhn_lbl 13 `"13"', add
label values kg09a_hhn kg09a_hhn_lbl

label define kg09a_pernd_lbl 01 `"1"'
label define kg09a_pernd_lbl 02 `"2"', add
label define kg09a_pernd_lbl 03 `"3"', add
label define kg09a_pernd_lbl 04 `"4"', add
label define kg09a_pernd_lbl 05 `"5"', add
label define kg09a_pernd_lbl 06 `"6"', add
label define kg09a_pernd_lbl 07 `"7"', add
label define kg09a_pernd_lbl 08 `"8"', add
label define kg09a_pernd_lbl 09 `"9"', add
label define kg09a_pernd_lbl 10 `"10"', add
label define kg09a_pernd_lbl 11 `"11"', add
label define kg09a_pernd_lbl 12 `"12"', add
label define kg09a_pernd_lbl 13 `"13"', add
label define kg09a_pernd_lbl 14 `"14"', add
label define kg09a_pernd_lbl 15 `"15"', add
label define kg09a_pernd_lbl 16 `"16"', add
label define kg09a_pernd_lbl 17 `"17"', add
label define kg09a_pernd_lbl 18 `"18"', add
label define kg09a_pernd_lbl 19 `"19"', add
label define kg09a_pernd_lbl 20 `"20"', add
label define kg09a_pernd_lbl 21 `"21"', add
label define kg09a_pernd_lbl 22 `"22"', add
label define kg09a_pernd_lbl 23 `"23"', add
label define kg09a_pernd_lbl 24 `"24"', add
label define kg09a_pernd_lbl 25 `"25"', add
label define kg09a_pernd_lbl 26 `"26"', add
label define kg09a_pernd_lbl 27 `"27"', add
label define kg09a_pernd_lbl 28 `"28"', add
label values kg09a_pernd kg09a_pernd_lbl

label define kg09a_pern_lbl 01 `"1"'
label define kg09a_pern_lbl 02 `"2"', add
label define kg09a_pern_lbl 03 `"3"', add
label define kg09a_pern_lbl 04 `"4"', add
label define kg09a_pern_lbl 05 `"5"', add
label define kg09a_pern_lbl 06 `"6"', add
label define kg09a_pern_lbl 07 `"7"', add
label define kg09a_pern_lbl 08 `"8"', add
label define kg09a_pern_lbl 09 `"9"', add
label define kg09a_pern_lbl 10 `"10"', add
label define kg09a_pern_lbl 11 `"11"', add
label define kg09a_pern_lbl 12 `"12"', add
label define kg09a_pern_lbl 13 `"13"', add
label define kg09a_pern_lbl 14 `"14"', add
label define kg09a_pern_lbl 15 `"15"', add
label define kg09a_pern_lbl 16 `"16"', add
label define kg09a_pern_lbl 17 `"17"', add
label define kg09a_pern_lbl 18 `"18"', add
label define kg09a_pern_lbl 19 `"19"', add
label define kg09a_pern_lbl 20 `"20"', add
label define kg09a_pern_lbl 21 `"21"', add
label define kg09a_pern_lbl 22 `"22"', add
label define kg09a_pern_lbl 23 `"23"', add
label define kg09a_pern_lbl 24 `"24"', add
label define kg09a_pern_lbl 25 `"25"', add
label define kg09a_pern_lbl 27 `"27"', add
label values kg09a_pern kg09a_pern_lbl

label define kg09a_structnum_lbl 1 `"1"'
label define kg09a_structnum_lbl 2 `"2"', add
label define kg09a_structnum_lbl 3 `"3"', add
label define kg09a_structnum_lbl 4 `"4"', add
label define kg09a_structnum_lbl 5 `"5"', add
label define kg09a_structnum_lbl 6 `"6"', add
label define kg09a_structnum_lbl 7 `"7"', add
label values kg09a_structnum kg09a_structnum_lbl

label define kg09a_restype_lbl 1 `"Buildings with one housing unit"'
label define kg09a_restype_lbl 2 `"Buildings with more than one housing unit"', add
label define kg09a_restype_lbl 3 `"Institutional housing"', add
label define kg09a_restype_lbl 4 `"Hostel"', add
label define kg09a_restype_lbl 6 `"Unfinished residential building"', add
label define kg09a_restype_lbl 8 `"Other buildings"', add
label define kg09a_restype_lbl 9 `"Unknown"', add
label values kg09a_restype kg09a_restype_lbl

label define kg09a_stories_lbl 1 `"Single story"'
label define kg09a_stories_lbl 2 `"Two story"', add
label define kg09a_stories_lbl 3 `"3 to 5 stories"', add
label define kg09a_stories_lbl 4 `"6 to 9 stories"', add
label define kg09a_stories_lbl 5 `"10 or more stories"', add
label define kg09a_stories_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_stories kg09a_stories_lbl

label define kg09a_wall_lbl 1 `"Brick"'
label define kg09a_wall_lbl 2 `"Concrete, reinforced concrete, panel (monolith)"', add
label define kg09a_wall_lbl 3 `"Cinder block"', add
label define kg09a_wall_lbl 4 `"Wood"', add
label define kg09a_wall_lbl 5 `"Adobe or clay"', add
label define kg09a_wall_lbl 6 `"Mixed material"', add
label define kg09a_wall_lbl 7 `"Other"', add
label define kg09a_wall_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_wall kg09a_wall_lbl

label define kg09a_construct_lbl 1 `"Before 1946"'
label define kg09a_construct_lbl 2 `"1946 - 1960"', add
label define kg09a_construct_lbl 3 `"1961 - 1970"', add
label define kg09a_construct_lbl 4 `"1971 - 1980"', add
label define kg09a_construct_lbl 5 `"1981 - 1990"', add
label define kg09a_construct_lbl 6 `"1991 - 2000"', add
label define kg09a_construct_lbl 7 `"2001-2005"', add
label define kg09a_construct_lbl 8 `"2006 - 2008"', add
label define kg09a_construct_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_construct kg09a_construct_lbl

label define kg09a_seismic_lbl 1 `"Constructed for earthquake resistance"'
label define kg09a_seismic_lbl 2 `"Constructed without seismic stability"', add
label define kg09a_seismic_lbl 8 `"Unknown"', add
label define kg09a_seismic_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_seismic kg09a_seismic_lbl

label define kg09a_occrestype_lbl 01 `"Separate house"'
label define kg09a_occrestype_lbl 02 `"Part of a separate house"', add
label define kg09a_occrestype_lbl 03 `"Separate apartment"', add
label define kg09a_occrestype_lbl 04 `"Common (multifamily) apartment"', add
label define kg09a_occrestype_lbl 05 `"Room, apartment in hostel"', add
label define kg09a_occrestype_lbl 09 `"Country house (dachas)"', add
label define kg09a_occrestype_lbl 99 `"Unknown"', add
label values kg09a_occrestype kg09a_occrestype_lbl

label define kg09a_occupancy_lbl 1 `"Residence occupied"'
label define kg09a_occupancy_lbl 2 `"Unoccupied"', add
label define kg09a_occupancy_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_occupancy kg09a_occupancy_lbl

label define kg09a_area_lbl 999 `"NIU (Not in universe)"'
label values kg09a_area kg09a_area_lbl

label define kg09a_livarea_lbl 999 `"NIU (Not in universe)"'
label values kg09a_livarea kg09a_livarea_lbl

label define kg09a_rooms_lbl 01 `"1"'
label define kg09a_rooms_lbl 02 `"2"', add
label define kg09a_rooms_lbl 03 `"3"', add
label define kg09a_rooms_lbl 04 `"4"', add
label define kg09a_rooms_lbl 05 `"5"', add
label define kg09a_rooms_lbl 06 `"6"', add
label define kg09a_rooms_lbl 07 `"7"', add
label define kg09a_rooms_lbl 08 `"8"', add
label define kg09a_rooms_lbl 09 `"9"', add
label define kg09a_rooms_lbl 10 `"10+"', add
label define kg09a_rooms_lbl 99 `"NIU (Not in universe)"', add
label values kg09a_rooms kg09a_rooms_lbl

label define kg09a_region_lbl 1 `"Bishkek"'
label define kg09a_region_lbl 2 `"Issyk-Kul region"', add
label define kg09a_region_lbl 3 `"Dzhalal-Abad region"', add
label define kg09a_region_lbl 4 `"Naryn region"', add
label define kg09a_region_lbl 5 `"Batken region"', add
label define kg09a_region_lbl 6 `"Oshskaya region"', add
label define kg09a_region_lbl 7 `"Talasskaya region"', add
label define kg09a_region_lbl 8 `"Chuya region"', add
label define kg09a_region_lbl 9 `"City of Osh"', add
label values kg09a_region kg09a_region_lbl

label define kg09a_dist_lbl 02205 `"Ak-Suisk district"'
label define kg09a_dist_lbl 02210 `"Dzheti-Oguz district"', add
label define kg09a_dist_lbl 02215 `"Issyk Kul district"', add
label define kg09a_dist_lbl 02220 `"Tonsk district"', add
label define kg09a_dist_lbl 02225 `"Tyup district"', add
label define kg09a_dist_lbl 02410 `"City of Karakol"', add
label define kg09a_dist_lbl 02420 `"City of Balykchi"', add
label define kg09a_dist_lbl 03204 `"Ala-Bukin district"', add
label define kg09a_dist_lbl 03207 `"Bazar-Korgon district"', add
label define kg09a_dist_lbl 03211 `"Aksyi district"', add
label define kg09a_dist_lbl 03215 `"Nooken district"', add
label define kg09a_dist_lbl 03220 `"Suzak district"', add
label define kg09a_dist_lbl 03223 `"Toguz-Torouz district"', add
label define kg09a_dist_lbl 03225 `"Toktogul district"', add
label define kg09a_dist_lbl 03230 `"Chatkalsk district"', add
label define kg09a_dist_lbl 03410 `"City of Dzhalal Abad"', add
label define kg09a_dist_lbl 03420 `"City of Tash-Kumyr"', add
label define kg09a_dist_lbl 03430 `"City of MaiLuu-Suu"', add
label define kg09a_dist_lbl 03440 `"City of Kara-Kul"', add
label define kg09a_dist_lbl 04210 `"Ak-Talin district"', add
label define kg09a_dist_lbl 04220 `"At-Bashin district"', add
label define kg09a_dist_lbl 04230 `"Dzhumgal district"', add
label define kg09a_dist_lbl 04235 `"Kochkor district"', add
label define kg09a_dist_lbl 04245 `"Naryn oblast"', add
label define kg09a_dist_lbl 04400 `"City of Naryn"', add
label define kg09a_dist_lbl 05214 `"Batken district"', add
label define kg09a_dist_lbl 05236 `"Lailyak district"', add
label define kg09a_dist_lbl 05258 `"Kadamzhai district"', add
label define kg09a_dist_lbl 05410 `"City Kenesh Batken"', add
label define kg09a_dist_lbl 05420 `"City of Suliukta"', add
label define kg09a_dist_lbl 05430 `"City of Kyzyl-Kiya"', add
label define kg09a_dist_lbl 06207 `"Alay district"', add
label define kg09a_dist_lbl 06211 `"Aravan district"', add
label define kg09a_dist_lbl 06226 `"Kara-Suisk district"', add
label define kg09a_dist_lbl 06242 `"Nookat district"', add
label define kg09a_dist_lbl 06246 `"Kara-Kuldjin district"', add
label define kg09a_dist_lbl 06255 `"Uzghen district"', add
label define kg09a_dist_lbl 06259 `"Chon-Alay district"', add
label define kg09a_dist_lbl 07215 `"Kara-Buurin district"', add
label define kg09a_dist_lbl 07220 `"Bakai-Atinsk district"', add
label define kg09a_dist_lbl 07225 `"Manas district"', add
label define kg09a_dist_lbl 07232 `"Talas district"', add
label define kg09a_dist_lbl 07400 `"City of Talas"', add
label define kg09a_dist_lbl 08203 `"Alamudun district"', add
label define kg09a_dist_lbl 08206 `"Ysyk-Atinsk district"', add
label define kg09a_dist_lbl 08209 `"Zhaiyl district"', add
label define kg09a_dist_lbl 08213 `"Kemin district"', add
label define kg09a_dist_lbl 08217 `"Moscow district"', add
label define kg09a_dist_lbl 08219 `"Panfilov district"', add
label define kg09a_dist_lbl 08222 `"Sokuluk district"', add
label define kg09a_dist_lbl 08223 `"Chui district"', add
label define kg09a_dist_lbl 08400 `"City of Chui-Tokmok"', add
label define kg09a_dist_lbl 11201 `"Bishkek city: Lenin district"', add
label define kg09a_dist_lbl 11202 `"Bishkek city: October district"', add
label define kg09a_dist_lbl 11203 `"Bishkek city: Pervomaysky district"', add
label define kg09a_dist_lbl 11204 `"Bishkek city: Sverdlovsk district"', add
label define kg09a_dist_lbl 21000 `"Districts in Osh city"', add
label values kg09a_dist kg09a_dist_lbl

label define kg09a_urban_lbl 1 `"Urban"'
label define kg09a_urban_lbl 2 `"Rural"', add
label values kg09a_urban kg09a_urban_lbl

label define kg09a_pernum_lbl 00 `"Household record"'
label define kg09a_pernum_lbl 01 `"1"', add
label define kg09a_pernum_lbl 02 `"2"', add
label define kg09a_pernum_lbl 03 `"3"', add
label define kg09a_pernum_lbl 04 `"4"', add
label define kg09a_pernum_lbl 05 `"5"', add
label define kg09a_pernum_lbl 06 `"6"', add
label define kg09a_pernum_lbl 07 `"7"', add
label define kg09a_pernum_lbl 08 `"8"', add
label define kg09a_pernum_lbl 09 `"9"', add
label define kg09a_pernum_lbl 10 `"10"', add
label define kg09a_pernum_lbl 11 `"11"', add
label define kg09a_pernum_lbl 12 `"12"', add
label define kg09a_pernum_lbl 13 `"13"', add
label define kg09a_pernum_lbl 14 `"14"', add
label define kg09a_pernum_lbl 15 `"15"', add
label define kg09a_pernum_lbl 16 `"16"', add
label define kg09a_pernum_lbl 17 `"17"', add
label define kg09a_pernum_lbl 18 `"18"', add
label define kg09a_pernum_lbl 19 `"19"', add
label define kg09a_pernum_lbl 20 `"20"', add
label define kg09a_pernum_lbl 21 `"21"', add
label define kg09a_pernum_lbl 22 `"22"', add
label define kg09a_pernum_lbl 23 `"23"', add
label define kg09a_pernum_lbl 24 `"24"', add
label define kg09a_pernum_lbl 25 `"25"', add
label define kg09a_pernum_lbl 26 `"26"', add
label define kg09a_pernum_lbl 27 `"27"', add
label values kg09a_pernum kg09a_pernum_lbl

label define kg09a_geogaway_lbl 01 `"Issyk Kul district"'
label define kg09a_geogaway_lbl 02 `"Karakol district"', add
label define kg09a_geogaway_lbl 03 `"Jalal Abad city"', add
label define kg09a_geogaway_lbl 04 `"Tash Kumyr city"', add
label define kg09a_geogaway_lbl 05 `"Batken district"', add
label define kg09a_geogaway_lbl 06 `"Sulukta city"', add
label define kg09a_geogaway_lbl 07 `"Kyzyl-Kiya city"', add
label define kg09a_geogaway_lbl 08 `"Kara-Suisk district"', add
label define kg09a_geogaway_lbl 09 `"Uzghen district"', add
label define kg09a_geogaway_lbl 10 `"Ysyk-Atinsk district"', add
label define kg09a_geogaway_lbl 11 `"Zhaiyl district"', add
label define kg09a_geogaway_lbl 12 `"Sokuluk district"', add
label define kg09a_geogaway_lbl 13 `"Tokmok City"', add
label define kg09a_geogaway_lbl 14 `"Other areas of Kyrgyz Republic"', add
label define kg09a_geogaway_lbl 21 `"China"', add
label define kg09a_geogaway_lbl 22 `"Kazakhstan"', add
label define kg09a_geogaway_lbl 23 `"Republic of Korea"', add
label define kg09a_geogaway_lbl 24 `"Saudi Arabia"', add
label define kg09a_geogaway_lbl 25 `"Russia"', add
label define kg09a_geogaway_lbl 26 `"Uzbekistan"', add
label define kg09a_geogaway_lbl 29 `"Other Asia"', add
label define kg09a_geogaway_lbl 31 `"Germany"', add
label define kg09a_geogaway_lbl 32 `"Switzerland"', add
label define kg09a_geogaway_lbl 33 `"Turkey"', add
label define kg09a_geogaway_lbl 34 `"Ukraine"', add
label define kg09a_geogaway_lbl 39 `"Other Europe"', add
label define kg09a_geogaway_lbl 49 `"Africa"', add
label define kg09a_geogaway_lbl 51 `"Eastern Samoa (USA)"', add
label define kg09a_geogaway_lbl 59 `"Other Americas, Oceania, and Antarctic"', add
label define kg09a_geogaway_lbl 98 `"Unknown"', add
label define kg09a_geogaway_lbl 99 `"NIU (Not in universe)"', add
label values kg09a_geogaway kg09a_geogaway_lbl

label define kg09a_awaytime_lbl 1 `"Less than a month"'
label define kg09a_awaytime_lbl 2 `"Up to a year"', add
label define kg09a_awaytime_lbl 3 `"More than a year"', add
label define kg09a_awaytime_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_awaytime kg09a_awaytime_lbl

label define kg09a_whyaway_lbl 1 `"Work"'
label define kg09a_whyaway_lbl 2 `"Learning"', add
label define kg09a_whyaway_lbl 4 `"Sem. Obst."', add
label define kg09a_whyaway_lbl 5 `"Other"', add
label define kg09a_whyaway_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_whyaway kg09a_whyaway_lbl

label define kg09a_relate_lbl 01 `"Person enumerated first"'
label define kg09a_relate_lbl 02 `"Spouse"', add
label define kg09a_relate_lbl 03 `"Daughter or son"', add
label define kg09a_relate_lbl 04 `"Parent"', add
label define kg09a_relate_lbl 05 `"Sibling"', add
label define kg09a_relate_lbl 06 `"Parent-in-law"', add
label define kg09a_relate_lbl 07 `"Daughter- or son-in-law"', add
label define kg09a_relate_lbl 08 `"Grandparent"', add
label define kg09a_relate_lbl 09 `"Grandchild/great grandchild"', add
label define kg09a_relate_lbl 10 `"Other relative"', add
label define kg09a_relate_lbl 11 `"No relation"', add
label values kg09a_relate kg09a_relate_lbl

label define kg09a_parentloc_lbl 00 `"No mother or father in the household"'
label define kg09a_parentloc_lbl 01 `"1"', add
label define kg09a_parentloc_lbl 02 `"2"', add
label define kg09a_parentloc_lbl 03 `"3"', add
label define kg09a_parentloc_lbl 04 `"4"', add
label define kg09a_parentloc_lbl 05 `"5"', add
label define kg09a_parentloc_lbl 06 `"6"', add
label define kg09a_parentloc_lbl 07 `"7"', add
label define kg09a_parentloc_lbl 08 `"8"', add
label define kg09a_parentloc_lbl 09 `"9"', add
label define kg09a_parentloc_lbl 10 `"10"', add
label define kg09a_parentloc_lbl 11 `"11"', add
label define kg09a_parentloc_lbl 12 `"12"', add
label define kg09a_parentloc_lbl 13 `"13"', add
label define kg09a_parentloc_lbl 14 `"14"', add
label define kg09a_parentloc_lbl 15 `"15"', add
label define kg09a_parentloc_lbl 16 `"16"', add
label define kg09a_parentloc_lbl 17 `"17"', add
label define kg09a_parentloc_lbl 18 `"18"', add
label define kg09a_parentloc_lbl 19 `"19"', add
label define kg09a_parentloc_lbl 20 `"20"', add
label define kg09a_parentloc_lbl 21 `"21"', add
label define kg09a_parentloc_lbl 22 `"22"', add
label define kg09a_parentloc_lbl 23 `"23"', add
label define kg09a_parentloc_lbl 24 `"24"', add
label define kg09a_parentloc_lbl 25 `"25"', add
label define kg09a_parentloc_lbl 26 `"26"', add
label values kg09a_parentloc kg09a_parentloc_lbl

label define kg09a_sex_lbl 1 `"Male"'
label define kg09a_sex_lbl 2 `"Female"', add
label values kg09a_sex kg09a_sex_lbl

label define kg09a_resstatus_lbl 0 `"Residing"'
label define kg09a_resstatus_lbl 1 `"Absent"', add
label values kg09a_resstatus kg09a_resstatus_lbl

label define kg09a_mob_lbl 01 `"January"'
label define kg09a_mob_lbl 02 `"February"', add
label define kg09a_mob_lbl 03 `"March"', add
label define kg09a_mob_lbl 04 `"April"', add
label define kg09a_mob_lbl 05 `"May"', add
label define kg09a_mob_lbl 06 `"June"', add
label define kg09a_mob_lbl 07 `"July"', add
label define kg09a_mob_lbl 08 `"August"', add
label define kg09a_mob_lbl 09 `"September"', add
label define kg09a_mob_lbl 10 `"October"', add
label define kg09a_mob_lbl 11 `"November"', add
label define kg09a_mob_lbl 12 `"December"', add
label values kg09a_mob kg09a_mob_lbl

label define kg09a_yob_lbl 1912 `"1912 or earlier"'
label define kg09a_yob_lbl 1913 `"1913"', add
label define kg09a_yob_lbl 1914 `"1914"', add
label define kg09a_yob_lbl 1915 `"1915"', add
label define kg09a_yob_lbl 1916 `"1916"', add
label define kg09a_yob_lbl 1917 `"1917"', add
label define kg09a_yob_lbl 1918 `"1918"', add
label define kg09a_yob_lbl 1919 `"1919"', add
label define kg09a_yob_lbl 1920 `"1920"', add
label define kg09a_yob_lbl 1921 `"1921"', add
label define kg09a_yob_lbl 1922 `"1922"', add
label define kg09a_yob_lbl 1923 `"1923"', add
label define kg09a_yob_lbl 1924 `"1924"', add
label define kg09a_yob_lbl 1925 `"1925"', add
label define kg09a_yob_lbl 1926 `"1926"', add
label define kg09a_yob_lbl 1927 `"1927"', add
label define kg09a_yob_lbl 1928 `"1928"', add
label define kg09a_yob_lbl 1929 `"1929"', add
label define kg09a_yob_lbl 1930 `"1930"', add
label define kg09a_yob_lbl 1931 `"1931"', add
label define kg09a_yob_lbl 1932 `"1932"', add
label define kg09a_yob_lbl 1933 `"1933"', add
label define kg09a_yob_lbl 1934 `"1934"', add
label define kg09a_yob_lbl 1935 `"1935"', add
label define kg09a_yob_lbl 1936 `"1936"', add
label define kg09a_yob_lbl 1937 `"1937"', add
label define kg09a_yob_lbl 1938 `"1938"', add
label define kg09a_yob_lbl 1939 `"1939"', add
label define kg09a_yob_lbl 1940 `"1940"', add
label define kg09a_yob_lbl 1941 `"1941"', add
label define kg09a_yob_lbl 1942 `"1942"', add
label define kg09a_yob_lbl 1943 `"1943"', add
label define kg09a_yob_lbl 1944 `"1944"', add
label define kg09a_yob_lbl 1945 `"1945"', add
label define kg09a_yob_lbl 1946 `"1946"', add
label define kg09a_yob_lbl 1947 `"1947"', add
label define kg09a_yob_lbl 1948 `"1948"', add
label define kg09a_yob_lbl 1949 `"1949"', add
label define kg09a_yob_lbl 1950 `"1950"', add
label define kg09a_yob_lbl 1951 `"1951"', add
label define kg09a_yob_lbl 1952 `"1952"', add
label define kg09a_yob_lbl 1953 `"1953"', add
label define kg09a_yob_lbl 1954 `"1954"', add
label define kg09a_yob_lbl 1955 `"1955"', add
label define kg09a_yob_lbl 1956 `"1956"', add
label define kg09a_yob_lbl 1957 `"1957"', add
label define kg09a_yob_lbl 1958 `"1958"', add
label define kg09a_yob_lbl 1959 `"1959"', add
label define kg09a_yob_lbl 1960 `"1960"', add
label define kg09a_yob_lbl 1961 `"1961"', add
label define kg09a_yob_lbl 1962 `"1962"', add
label define kg09a_yob_lbl 1963 `"1963"', add
label define kg09a_yob_lbl 1964 `"1964"', add
label define kg09a_yob_lbl 1965 `"1965"', add
label define kg09a_yob_lbl 1966 `"1966"', add
label define kg09a_yob_lbl 1967 `"1967"', add
label define kg09a_yob_lbl 1968 `"1968"', add
label define kg09a_yob_lbl 1969 `"1969"', add
label define kg09a_yob_lbl 1970 `"1970"', add
label define kg09a_yob_lbl 1971 `"1971"', add
label define kg09a_yob_lbl 1972 `"1972"', add
label define kg09a_yob_lbl 1973 `"1973"', add
label define kg09a_yob_lbl 1974 `"1974"', add
label define kg09a_yob_lbl 1975 `"1975"', add
label define kg09a_yob_lbl 1976 `"1976"', add
label define kg09a_yob_lbl 1977 `"1977"', add
label define kg09a_yob_lbl 1978 `"1978"', add
label define kg09a_yob_lbl 1979 `"1979"', add
label define kg09a_yob_lbl 1980 `"1980"', add
label define kg09a_yob_lbl 1981 `"1981"', add
label define kg09a_yob_lbl 1982 `"1982"', add
label define kg09a_yob_lbl 1983 `"1983"', add
label define kg09a_yob_lbl 1984 `"1984"', add
label define kg09a_yob_lbl 1985 `"1985"', add
label define kg09a_yob_lbl 1986 `"1986"', add
label define kg09a_yob_lbl 1987 `"1987"', add
label define kg09a_yob_lbl 1988 `"1988"', add
label define kg09a_yob_lbl 1989 `"1989"', add
label define kg09a_yob_lbl 1990 `"1990"', add
label define kg09a_yob_lbl 1991 `"1991"', add
label define kg09a_yob_lbl 1992 `"1992"', add
label define kg09a_yob_lbl 1993 `"1993"', add
label define kg09a_yob_lbl 1994 `"1994"', add
label define kg09a_yob_lbl 1995 `"1995"', add
label define kg09a_yob_lbl 1996 `"1996"', add
label define kg09a_yob_lbl 1997 `"1997"', add
label define kg09a_yob_lbl 1998 `"1998"', add
label define kg09a_yob_lbl 1999 `"1999"', add
label define kg09a_yob_lbl 2000 `"2000"', add
label define kg09a_yob_lbl 2001 `"2001"', add
label define kg09a_yob_lbl 2002 `"2002"', add
label define kg09a_yob_lbl 2003 `"2003"', add
label define kg09a_yob_lbl 2004 `"2004"', add
label define kg09a_yob_lbl 2005 `"2005"', add
label define kg09a_yob_lbl 2006 `"2006"', add
label define kg09a_yob_lbl 2007 `"2007"', add
label define kg09a_yob_lbl 2008 `"2008"', add
label define kg09a_yob_lbl 2009 `"2009"', add
label values kg09a_yob kg09a_yob_lbl

label define kg09a_age_lbl 00 `"0"'
label define kg09a_age_lbl 01 `"1"', add
label define kg09a_age_lbl 02 `"2"', add
label define kg09a_age_lbl 03 `"3"', add
label define kg09a_age_lbl 04 `"4"', add
label define kg09a_age_lbl 05 `"5"', add
label define kg09a_age_lbl 06 `"6"', add
label define kg09a_age_lbl 07 `"7"', add
label define kg09a_age_lbl 08 `"8"', add
label define kg09a_age_lbl 09 `"9"', add
label define kg09a_age_lbl 10 `"10"', add
label define kg09a_age_lbl 11 `"11"', add
label define kg09a_age_lbl 12 `"12"', add
label define kg09a_age_lbl 13 `"13"', add
label define kg09a_age_lbl 14 `"14"', add
label define kg09a_age_lbl 15 `"15"', add
label define kg09a_age_lbl 16 `"16"', add
label define kg09a_age_lbl 17 `"17"', add
label define kg09a_age_lbl 18 `"18"', add
label define kg09a_age_lbl 19 `"19"', add
label define kg09a_age_lbl 20 `"20"', add
label define kg09a_age_lbl 21 `"21"', add
label define kg09a_age_lbl 22 `"22"', add
label define kg09a_age_lbl 23 `"23"', add
label define kg09a_age_lbl 24 `"24"', add
label define kg09a_age_lbl 25 `"25"', add
label define kg09a_age_lbl 26 `"26"', add
label define kg09a_age_lbl 27 `"27"', add
label define kg09a_age_lbl 28 `"28"', add
label define kg09a_age_lbl 29 `"29"', add
label define kg09a_age_lbl 30 `"30"', add
label define kg09a_age_lbl 31 `"31"', add
label define kg09a_age_lbl 32 `"32"', add
label define kg09a_age_lbl 33 `"33"', add
label define kg09a_age_lbl 34 `"34"', add
label define kg09a_age_lbl 35 `"35"', add
label define kg09a_age_lbl 36 `"36"', add
label define kg09a_age_lbl 37 `"37"', add
label define kg09a_age_lbl 38 `"38"', add
label define kg09a_age_lbl 39 `"39"', add
label define kg09a_age_lbl 40 `"40"', add
label define kg09a_age_lbl 41 `"41"', add
label define kg09a_age_lbl 42 `"42"', add
label define kg09a_age_lbl 43 `"43"', add
label define kg09a_age_lbl 44 `"44"', add
label define kg09a_age_lbl 45 `"45"', add
label define kg09a_age_lbl 46 `"46"', add
label define kg09a_age_lbl 47 `"47"', add
label define kg09a_age_lbl 48 `"48"', add
label define kg09a_age_lbl 49 `"49"', add
label define kg09a_age_lbl 50 `"50"', add
label define kg09a_age_lbl 51 `"51"', add
label define kg09a_age_lbl 52 `"52"', add
label define kg09a_age_lbl 53 `"53"', add
label define kg09a_age_lbl 54 `"54"', add
label define kg09a_age_lbl 55 `"55"', add
label define kg09a_age_lbl 56 `"56"', add
label define kg09a_age_lbl 57 `"57"', add
label define kg09a_age_lbl 58 `"58"', add
label define kg09a_age_lbl 59 `"59"', add
label define kg09a_age_lbl 60 `"60"', add
label define kg09a_age_lbl 61 `"61"', add
label define kg09a_age_lbl 62 `"62"', add
label define kg09a_age_lbl 63 `"63"', add
label define kg09a_age_lbl 64 `"64"', add
label define kg09a_age_lbl 65 `"65"', add
label define kg09a_age_lbl 66 `"66"', add
label define kg09a_age_lbl 67 `"67"', add
label define kg09a_age_lbl 68 `"68"', add
label define kg09a_age_lbl 69 `"69"', add
label define kg09a_age_lbl 70 `"70"', add
label define kg09a_age_lbl 71 `"71"', add
label define kg09a_age_lbl 72 `"72"', add
label define kg09a_age_lbl 73 `"73"', add
label define kg09a_age_lbl 74 `"74"', add
label define kg09a_age_lbl 75 `"75"', add
label define kg09a_age_lbl 76 `"76"', add
label define kg09a_age_lbl 77 `"77"', add
label define kg09a_age_lbl 78 `"78"', add
label define kg09a_age_lbl 79 `"79"', add
label define kg09a_age_lbl 80 `"80"', add
label define kg09a_age_lbl 81 `"81"', add
label define kg09a_age_lbl 82 `"82"', add
label define kg09a_age_lbl 83 `"83"', add
label define kg09a_age_lbl 84 `"84"', add
label define kg09a_age_lbl 85 `"85"', add
label define kg09a_age_lbl 86 `"86"', add
label define kg09a_age_lbl 87 `"87"', add
label define kg09a_age_lbl 88 `"88"', add
label define kg09a_age_lbl 89 `"89"', add
label define kg09a_age_lbl 90 `"90"', add
label define kg09a_age_lbl 91 `"91"', add
label define kg09a_age_lbl 92 `"92"', add
label define kg09a_age_lbl 93 `"93"', add
label define kg09a_age_lbl 94 `"94"', add
label define kg09a_age_lbl 95 `"95"', add
label define kg09a_age_lbl 96 `"96+"', add
label values kg09a_age kg09a_age_lbl

label define kg09a_nation_lbl 001 `"Kyrgyz"'
label define kg09a_nation_lbl 002 `"Azerbaijani"', add
label define kg09a_nation_lbl 003 `"Armenian"', add
label define kg09a_nation_lbl 004 `"Belarusian"', add
label define kg09a_nation_lbl 005 `"Georgian"', add
label define kg09a_nation_lbl 006 `"Kazakh"', add
label define kg09a_nation_lbl 009 `"Moldovan"', add
label define kg09a_nation_lbl 010 `"Russian"', add
label define kg09a_nation_lbl 011 `"Tajik"', add
label define kg09a_nation_lbl 012 `"Turkmen"', add
label define kg09a_nation_lbl 013 `"Uzbek"', add
label define kg09a_nation_lbl 014 `"Ukrainian"', add
label define kg09a_nation_lbl 018 `"Avar"', add
label define kg09a_nation_lbl 025 `"American"', add
label define kg09a_nation_lbl 028 `"Arab"', add
label define kg09a_nation_lbl 031 `"Afghan (Pashtun)"', add
label define kg09a_nation_lbl 033 `"Balkar"', add
label define kg09a_nation_lbl 034 `"Bashkir"', add
label define kg09a_nation_lbl 038 `"Bulgarian"', add
label define kg09a_nation_lbl 048 `"Greek"', add
label define kg09a_nation_lbl 050 `"Dargin"', add
label define kg09a_nation_lbl 052 `"Dungan"', add
label define kg09a_nation_lbl 053 `"Jewish"', add
label define kg09a_nation_lbl 062 `"Kalmyk"', add
label define kg09a_nation_lbl 066 `"Karachai"', add
label define kg09a_nation_lbl 071 `"Chinese"', add
label define kg09a_nation_lbl 074 `"Korean"', add
label define kg09a_nation_lbl 081 `"Kurd"', add
label define kg09a_nation_lbl 083 `"Lezgin"', add
label define kg09a_nation_lbl 088 `"Mordovian"', add
label define kg09a_nation_lbl 094 `"German"', add
label define kg09a_nation_lbl 101 `"Persian"', add
label define kg09a_nation_lbl 102 `"Polish"', add
label define kg09a_nation_lbl 112 `"Tatar"', add
label define kg09a_nation_lbl 120 `"Turkish"', add
label define kg09a_nation_lbl 122 `"Meskhetian Turkish"', add
label define kg09a_nation_lbl 123 `"Ottoman"', add
label define kg09a_nation_lbl 127 `"Uighur"', add
label define kg09a_nation_lbl 135 `"Hemshil"', add
label define kg09a_nation_lbl 139 `"Romany"', add
label define kg09a_nation_lbl 142 `"Chechen"', add
label define kg09a_nation_lbl 144 `"Chuvash"', add
label define kg09a_nation_lbl 161 `"Pakistani (Punjabis, Sindhis, Baluchis)"', add
label define kg09a_nation_lbl 199 `"Other"', add
label values kg09a_nation kg09a_nation_lbl

label define kg09a_lang1_lbl 001 `"Kyrgyz"'
label define kg09a_lang1_lbl 002 `"Azerbaijani"', add
label define kg09a_lang1_lbl 003 `"Armenian"', add
label define kg09a_lang1_lbl 004 `"Belarusian"', add
label define kg09a_lang1_lbl 005 `"Georgian"', add
label define kg09a_lang1_lbl 006 `"Kazakh"', add
label define kg09a_lang1_lbl 008 `"Russian"', add
label define kg09a_lang1_lbl 009 `"Tajik"', add
label define kg09a_lang1_lbl 010 `"Turkmen"', add
label define kg09a_lang1_lbl 011 `"Uzbek"', add
label define kg09a_lang1_lbl 012 `"Ukrainian"', add
label define kg09a_lang1_lbl 015 `"Avar"', add
label define kg09a_lang1_lbl 021 `"English"', add
label define kg09a_lang1_lbl 023 `"Arabic"', add
label define kg09a_lang1_lbl 026 `"Afghan"', add
label define kg09a_lang1_lbl 028 `"Bashkir"', add
label define kg09a_lang1_lbl 032 `"Bulgarian"', add
label define kg09a_lang1_lbl 041 `"Dargin"', add
label define kg09a_lang1_lbl 042 `"Dungan"', add
label define kg09a_lang1_lbl 049 `"Yazdi"', add
label define kg09a_lang1_lbl 051 `"Kalmykia"', add
label define kg09a_lang1_lbl 054 `"Karachay-Balkar"', add
label define kg09a_lang1_lbl 059 `"Chinese"', add
label define kg09a_lang1_lbl 062 `"Korean"', add
label define kg09a_lang1_lbl 068 `"Kurdish"', add
label define kg09a_lang1_lbl 072 `"Lezgin"', add
label define kg09a_lang1_lbl 083 `"German"', add
label define kg09a_lang1_lbl 089 `"Persian"', add
label define kg09a_lang1_lbl 100 `"Tatar"', add
label define kg09a_lang1_lbl 107 `"Turkish"', add
label define kg09a_lang1_lbl 108 `"Turkic"', add
label define kg09a_lang1_lbl 112 `"Uigur"', add
label define kg09a_lang1_lbl 119 `"Chemshil"', add
label define kg09a_lang1_lbl 122 `"Gypsy"', add
label define kg09a_lang1_lbl 125 `"Chechen"', add
label define kg09a_lang1_lbl 146 `"Pakistan (Urdu)"', add
label define kg09a_lang1_lbl 199 `"Other"', add
label values kg09a_lang1 kg09a_lang1_lbl

label define kg09a_lang2_lbl 001 `"Kyrgyz"'
label define kg09a_lang2_lbl 005 `"Georgian"', add
label define kg09a_lang2_lbl 006 `"Kazakh"', add
label define kg09a_lang2_lbl 008 `"Russian"', add
label define kg09a_lang2_lbl 009 `"Tajik"', add
label define kg09a_lang2_lbl 011 `"Uzbek"', add
label define kg09a_lang2_lbl 012 `"Ukrainian"', add
label define kg09a_lang2_lbl 021 `"English"', add
label define kg09a_lang2_lbl 023 `"Andean"', add
label define kg09a_lang2_lbl 042 `"Dungan"', add
label define kg09a_lang2_lbl 049 `"Yezidsky"', add
label define kg09a_lang2_lbl 059 `"Chinese"', add
label define kg09a_lang2_lbl 062 `"Korean"', add
label define kg09a_lang2_lbl 083 `"German"', add
label define kg09a_lang2_lbl 100 `"Tatar"', add
label define kg09a_lang2_lbl 107 `"Turkish"', add
label define kg09a_lang2_lbl 112 `"Uigur"', add
label define kg09a_lang2_lbl 115 `"French"', add
label define kg09a_lang2_lbl 199 `"Other"', add
label define kg09a_lang2_lbl 999 `"No second language spoken"', add
label values kg09a_lang2 kg09a_lang2_lbl

label define kg09a_lang3_lbl 001 `"Kyrgyz"'
label define kg09a_lang3_lbl 006 `"Kazakh"', add
label define kg09a_lang3_lbl 008 `"Russian"', add
label define kg09a_lang3_lbl 009 `"Tajik"', add
label define kg09a_lang3_lbl 011 `"Uzbek"', add
label define kg09a_lang3_lbl 021 `"English"', add
label define kg09a_lang3_lbl 023 `"Arabic"', add
label define kg09a_lang3_lbl 042 `"Dungan"', add
label define kg09a_lang3_lbl 049 `"Yezidsky"', add
label define kg09a_lang3_lbl 059 `"Chinese"', add
label define kg09a_lang3_lbl 062 `"Korean"', add
label define kg09a_lang3_lbl 083 `"German"', add
label define kg09a_lang3_lbl 100 `"Tatar"', add
label define kg09a_lang3_lbl 107 `"Turkish"', add
label define kg09a_lang3_lbl 112 `"Uigur"', add
label define kg09a_lang3_lbl 115 `"French"', add
label define kg09a_lang3_lbl 199 `"Other"', add
label define kg09a_lang3_lbl 999 `"No third language spoken"', add
label values kg09a_lang3 kg09a_lang3_lbl

label define kg09a_bpl_lbl 00100 `"Abroad"'
label define kg09a_bpl_lbl 11000 `"Bishkek"', add
label define kg09a_bpl_lbl 21000 `"Osh"', add
label define kg09a_bpl_lbl 22050 `"Ak-Suisk district"', add
label define kg09a_bpl_lbl 22100 `"Dzheti-Oguz district"', add
label define kg09a_bpl_lbl 22150 `"Issyk Kul district"', add
label define kg09a_bpl_lbl 22200 `"Tonsk district"', add
label define kg09a_bpl_lbl 22250 `"Tyup district"', add
label define kg09a_bpl_lbl 24100 `"Karakol district"', add
label define kg09a_bpl_lbl 24200 `"Balykchy district"', add
label define kg09a_bpl_lbl 22999 `"Unknown district, Issyk-Kul region"', add
label define kg09a_bpl_lbl 24999 `"Unknown city, Issyk-Kul region"', add
label define kg09a_bpl_lbl 32040 `"Ala-Bukin district"', add
label define kg09a_bpl_lbl 32070 `"Bazar-Korgon district"', add
label define kg09a_bpl_lbl 32110 `"Aksyi district"', add
label define kg09a_bpl_lbl 32150 `"Nooken district"', add
label define kg09a_bpl_lbl 32200 `"Suzak district"', add
label define kg09a_bpl_lbl 32230 `"Toguz-Torouz district"', add
label define kg09a_bpl_lbl 32250 `"Toktogul district"', add
label define kg09a_bpl_lbl 32300 `"Chatkalsk district"', add
label define kg09a_bpl_lbl 34100 `"Jalal Abad city"', add
label define kg09a_bpl_lbl 34200 `"Tash Kumyr city"', add
label define kg09a_bpl_lbl 34300 `"Mailuu-Suu city"', add
label define kg09a_bpl_lbl 34400 `"Kara-Kul city"', add
label define kg09a_bpl_lbl 32999 `"Unknown district, Jalal-Abad region"', add
label define kg09a_bpl_lbl 34999 `"Unknown city, Jalal-Abad region"', add
label define kg09a_bpl_lbl 42100 `"Ak-Talin district"', add
label define kg09a_bpl_lbl 42200 `"At-Bashin district"', add
label define kg09a_bpl_lbl 42300 `"Dzhumgal district"', add
label define kg09a_bpl_lbl 42350 `"Kochkor district"', add
label define kg09a_bpl_lbl 42450 `"Tien Shan district"', add
label define kg09a_bpl_lbl 42999 `"Unknown district, Naryn region"', add
label define kg09a_bpl_lbl 44999 `"Unknown city, Naryn region"', add
label define kg09a_bpl_lbl 52140 `"Batken district"', add
label define kg09a_bpl_lbl 52360 `"Lailyak district"', add
label define kg09a_bpl_lbl 52580 `"Kadamzhai district"', add
label define kg09a_bpl_lbl 54000 `"Kara-Suu region"', add
label define kg09a_bpl_lbl 54100 `"G. Batken city"', add
label define kg09a_bpl_lbl 54200 `"Sulukta city"', add
label define kg09a_bpl_lbl 54300 `"Kyzyl-Kiya city"', add
label define kg09a_bpl_lbl 62070 `"Alay district"', add
label define kg09a_bpl_lbl 62110 `"Aravan district"', add
label define kg09a_bpl_lbl 62260 `"Kara-Suisk district"', add
label define kg09a_bpl_lbl 62420 `"Nookat district"', add
label define kg09a_bpl_lbl 62460 `"Kara-Kuldjin district"', add
label define kg09a_bpl_lbl 62550 `"Uzghen district"', add
label define kg09a_bpl_lbl 62590 `"Chon-Alay district"', add
label define kg09a_bpl_lbl 72150 `"Kara-Buurin district"', add
label define kg09a_bpl_lbl 72200 `"Bakai-Atinsk district"', add
label define kg09a_bpl_lbl 72250 `"Manas district"', add
label define kg09a_bpl_lbl 72320 `"Talas district"', add
label define kg09a_bpl_lbl 72999 `"Unkonwn district, Talas region"', add
label define kg09a_bpl_lbl 74999 `"Unknown city, Talas region"', add
label define kg09a_bpl_lbl 82030 `"Alamudun district"', add
label define kg09a_bpl_lbl 82060 `"Ysyk-Atinsk district"', add
label define kg09a_bpl_lbl 82090 `"Zhaiyl district"', add
label define kg09a_bpl_lbl 82130 `"Kemin district"', add
label define kg09a_bpl_lbl 82170 `"Moscow district"', add
label define kg09a_bpl_lbl 82190 `"Panfilov district"', add
label define kg09a_bpl_lbl 82220 `"Sokuluk district"', add
label define kg09a_bpl_lbl 84000 `"Tokmok City"', add
label define kg09a_bpl_lbl 89999 `"Unknown district, Chui region"', add
label values kg09a_bpl kg09a_bpl_lbl

label define kg09a_bplctry_lbl 001 `"Kyrgyz Republic"'
label define kg09a_bplctry_lbl 004 `"Afghanistan"', add
label define kg09a_bplctry_lbl 031 `"Azerbaijan"', add
label define kg09a_bplctry_lbl 051 `"Armenia"', add
label define kg09a_bplctry_lbl 112 `"Belarus"', add
label define kg09a_bplctry_lbl 156 `"China"', add
label define kg09a_bplctry_lbl 268 `"Georgia"', add
label define kg09a_bplctry_lbl 276 `"Germany"', add
label define kg09a_bplctry_lbl 356 `"India"', add
label define kg09a_bplctry_lbl 364 `"Iran"', add
label define kg09a_bplctry_lbl 398 `"Kazakhstan"', add
label define kg09a_bplctry_lbl 410 `"Republic of Korea"', add
label define kg09a_bplctry_lbl 498 `"Moldova"', add
label define kg09a_bplctry_lbl 586 `"Pakistan"', add
label define kg09a_bplctry_lbl 643 `"Russia"', add
label define kg09a_bplctry_lbl 762 `"Tajikistan"', add
label define kg09a_bplctry_lbl 792 `"Turkey"', add
label define kg09a_bplctry_lbl 795 `"Turkmenistan"', add
label define kg09a_bplctry_lbl 804 `"Ukraine"', add
label define kg09a_bplctry_lbl 840 `"United States of America (USA)"', add
label define kg09a_bplctry_lbl 860 `"Uzbekistan"', add
label define kg09a_bplctry_lbl 910 `"Other Asia"', add
label define kg09a_bplctry_lbl 920 `"Africa"', add
label define kg09a_bplctry_lbl 930 `"Other Europe"', add
label define kg09a_bplctry_lbl 940 `"Other Americas"', add
label define kg09a_bplctry_lbl 998 `"Undocumented"', add
label values kg09a_bplctry kg09a_bplctry_lbl

label define kg09a_citizen_lbl 1 `"Kyrgyz Republic"'
label define kg09a_citizen_lbl 2 `"Stateless"', add
label define kg09a_citizen_lbl 3 `"Other country"', add
label values kg09a_citizen kg09a_citizen_lbl

label define kg09a_yrmoved_lbl 1934 `"1934 or earlier"'
label define kg09a_yrmoved_lbl 1935 `"1935"', add
label define kg09a_yrmoved_lbl 1936 `"1936"', add
label define kg09a_yrmoved_lbl 1937 `"1937"', add
label define kg09a_yrmoved_lbl 1938 `"1938"', add
label define kg09a_yrmoved_lbl 1939 `"1939"', add
label define kg09a_yrmoved_lbl 1940 `"1940"', add
label define kg09a_yrmoved_lbl 1941 `"1941"', add
label define kg09a_yrmoved_lbl 1942 `"1942"', add
label define kg09a_yrmoved_lbl 1943 `"1943"', add
label define kg09a_yrmoved_lbl 1944 `"1944"', add
label define kg09a_yrmoved_lbl 1945 `"1945"', add
label define kg09a_yrmoved_lbl 1946 `"1946"', add
label define kg09a_yrmoved_lbl 1947 `"1947"', add
label define kg09a_yrmoved_lbl 1948 `"1948"', add
label define kg09a_yrmoved_lbl 1949 `"1949"', add
label define kg09a_yrmoved_lbl 1950 `"1950"', add
label define kg09a_yrmoved_lbl 1951 `"1951"', add
label define kg09a_yrmoved_lbl 1952 `"1952"', add
label define kg09a_yrmoved_lbl 1953 `"1953"', add
label define kg09a_yrmoved_lbl 1954 `"1954"', add
label define kg09a_yrmoved_lbl 1955 `"1955"', add
label define kg09a_yrmoved_lbl 1956 `"1956"', add
label define kg09a_yrmoved_lbl 1957 `"1957"', add
label define kg09a_yrmoved_lbl 1958 `"1958"', add
label define kg09a_yrmoved_lbl 1959 `"1959"', add
label define kg09a_yrmoved_lbl 1960 `"1960"', add
label define kg09a_yrmoved_lbl 1961 `"1961"', add
label define kg09a_yrmoved_lbl 1962 `"1962"', add
label define kg09a_yrmoved_lbl 1963 `"1963"', add
label define kg09a_yrmoved_lbl 1964 `"1964"', add
label define kg09a_yrmoved_lbl 1965 `"1965"', add
label define kg09a_yrmoved_lbl 1966 `"1966"', add
label define kg09a_yrmoved_lbl 1967 `"1967"', add
label define kg09a_yrmoved_lbl 1968 `"1968"', add
label define kg09a_yrmoved_lbl 1969 `"1969"', add
label define kg09a_yrmoved_lbl 1970 `"1970"', add
label define kg09a_yrmoved_lbl 1971 `"1971"', add
label define kg09a_yrmoved_lbl 1972 `"1972"', add
label define kg09a_yrmoved_lbl 1973 `"1973"', add
label define kg09a_yrmoved_lbl 1974 `"1974"', add
label define kg09a_yrmoved_lbl 1975 `"1975"', add
label define kg09a_yrmoved_lbl 1976 `"1976"', add
label define kg09a_yrmoved_lbl 1977 `"1977"', add
label define kg09a_yrmoved_lbl 1978 `"1978"', add
label define kg09a_yrmoved_lbl 1979 `"1979"', add
label define kg09a_yrmoved_lbl 1980 `"1980"', add
label define kg09a_yrmoved_lbl 1981 `"1981"', add
label define kg09a_yrmoved_lbl 1982 `"1982"', add
label define kg09a_yrmoved_lbl 1983 `"1983"', add
label define kg09a_yrmoved_lbl 1984 `"1984"', add
label define kg09a_yrmoved_lbl 1985 `"1985"', add
label define kg09a_yrmoved_lbl 1986 `"1986"', add
label define kg09a_yrmoved_lbl 1987 `"1987"', add
label define kg09a_yrmoved_lbl 1988 `"1988"', add
label define kg09a_yrmoved_lbl 1989 `"1989"', add
label define kg09a_yrmoved_lbl 1990 `"1990"', add
label define kg09a_yrmoved_lbl 1991 `"1991"', add
label define kg09a_yrmoved_lbl 1992 `"1992"', add
label define kg09a_yrmoved_lbl 1993 `"1993"', add
label define kg09a_yrmoved_lbl 1994 `"1994"', add
label define kg09a_yrmoved_lbl 1995 `"1995"', add
label define kg09a_yrmoved_lbl 1996 `"1996"', add
label define kg09a_yrmoved_lbl 1997 `"1997"', add
label define kg09a_yrmoved_lbl 1998 `"1998"', add
label define kg09a_yrmoved_lbl 1999 `"1999"', add
label define kg09a_yrmoved_lbl 2000 `"2000"', add
label define kg09a_yrmoved_lbl 2001 `"2001"', add
label define kg09a_yrmoved_lbl 2002 `"2002"', add
label define kg09a_yrmoved_lbl 2003 `"2003"', add
label define kg09a_yrmoved_lbl 2004 `"2004"', add
label define kg09a_yrmoved_lbl 2005 `"2005"', add
label define kg09a_yrmoved_lbl 2006 `"2006"', add
label define kg09a_yrmoved_lbl 2007 `"2007"', add
label define kg09a_yrmoved_lbl 2008 `"2008"', add
label define kg09a_yrmoved_lbl 2009 `"2009"', add
label define kg09a_yrmoved_lbl 9999 `"NIU (Not in universe)"', add
label values kg09a_yrmoved kg09a_yrmoved_lbl

label define kg09a_whymoved_lbl 1 `"Economic"'
label define kg09a_whymoved_lbl 2 `"Social"', add
label define kg09a_whymoved_lbl 3 `"Environmental (climatic)"', add
label define kg09a_whymoved_lbl 4 `"Other reasons"', add
label define kg09a_whymoved_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_whymoved kg09a_whymoved_lbl

label define kg09a_marst_lbl 1 `"Single (never married)"'
label define kg09a_marst_lbl 2 `"Registered married"', add
label define kg09a_marst_lbl 3 `"Not registered married (in union)"', add
label define kg09a_marst_lbl 4 `"Widowed"', add
label define kg09a_marst_lbl 5 `"Divorced"', add
label define kg09a_marst_lbl 6 `"Separated"', add
label define kg09a_marst_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_marst kg09a_marst_lbl

label define kg09a_sploc_lbl 00 `"No spouse identified"'
label define kg09a_sploc_lbl 01 `"1"', add
label define kg09a_sploc_lbl 02 `"2"', add
label define kg09a_sploc_lbl 03 `"3"', add
label define kg09a_sploc_lbl 04 `"4"', add
label define kg09a_sploc_lbl 05 `"5"', add
label define kg09a_sploc_lbl 06 `"6"', add
label define kg09a_sploc_lbl 07 `"7"', add
label define kg09a_sploc_lbl 08 `"8"', add
label define kg09a_sploc_lbl 09 `"9"', add
label define kg09a_sploc_lbl 10 `"10"', add
label define kg09a_sploc_lbl 11 `"11"', add
label define kg09a_sploc_lbl 12 `"12"', add
label define kg09a_sploc_lbl 13 `"13"', add
label define kg09a_sploc_lbl 14 `"14"', add
label define kg09a_sploc_lbl 15 `"15"', add
label define kg09a_sploc_lbl 16 `"16"', add
label define kg09a_sploc_lbl 17 `"17"', add
label define kg09a_sploc_lbl 18 `"18"', add
label define kg09a_sploc_lbl 19 `"19"', add
label define kg09a_sploc_lbl 20 `"20"', add
label define kg09a_sploc_lbl 21 `"21"', add
label define kg09a_sploc_lbl 22 `"22"', add
label define kg09a_sploc_lbl 23 `"23"', add
label define kg09a_sploc_lbl 24 `"24"', add
label define kg09a_sploc_lbl 25 `"25"', add
label define kg09a_sploc_lbl 26 `"26"', add
label define kg09a_sploc_lbl 27 `"27"', add
label values kg09a_sploc kg09a_sploc_lbl

label define kg09a_edlevel_lbl 01 `"Higher - bachelor"'
label define kg09a_edlevel_lbl 02 `"Higher - specialist"', add
label define kg09a_edlevel_lbl 03 `"Higher - master"', add
label define kg09a_edlevel_lbl 04 `"Incomplete higher"', add
label define kg09a_edlevel_lbl 05 `"Secondary vocational"', add
label define kg09a_edlevel_lbl 06 `"Initial vocational"', add
label define kg09a_edlevel_lbl 07 `"Secondary general"', add
label define kg09a_edlevel_lbl 08 `"Basic general education"', add
label define kg09a_edlevel_lbl 09 `"Completed primary"', add
label define kg09a_edlevel_lbl 10 `"Less than primary education"', add
label define kg09a_edlevel_lbl 98 `"Unknown"', add
label define kg09a_edlevel_lbl 99 `"NIU (Not in universe)"', add
label values kg09a_edlevel kg09a_edlevel_lbl

label define kg09a_lit_lbl 1 `"Yes"'
label define kg09a_lit_lbl 2 `"No"', add
label define kg09a_lit_lbl 8 `"Unknown"', add
label define kg09a_lit_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_lit kg09a_lit_lbl

label define kg09a_degree_lbl 1 `"Candidate of sciences"'
label define kg09a_degree_lbl 2 `"Doctor of sciences"', add
label define kg09a_degree_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_degree kg09a_degree_lbl

label define kg09a_edtype_lbl 1 `"Graduate and doctorate"'
label define kg09a_edtype_lbl 2 `"Higher educational establishment"', add
label define kg09a_edtype_lbl 3 `"Secondary specialized educational establishment"', add
label define kg09a_edtype_lbl 4 `"Vocational school"', add
label define kg09a_edtype_lbl 5 `"General educational establishment of all types"', add
label define kg09a_edtype_lbl 6 `"Other school"', add
label define kg09a_edtype_lbl 7 `"Not attending"', add
label define kg09a_edtype_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_edtype kg09a_edtype_lbl

label define kg09a_preschool_lbl 1 `"Yes"'
label define kg09a_preschool_lbl 2 `"No"', add
label define kg09a_preschool_lbl 8 `"Unknown"', add
label define kg09a_preschool_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_preschool kg09a_preschool_lbl

label define kg09a_incsrc_lbl 1 `"Income from employment"'
label define kg09a_incsrc_lbl 2 `"Scholarship"', add
label define kg09a_incsrc_lbl 3 `"Pension"', add
label define kg09a_incsrc_lbl 4 `"Allowance"', add
label define kg09a_incsrc_lbl 5 `"Other type of state support"', add
label define kg09a_incsrc_lbl 6 `"Savings"', add
label define kg09a_incsrc_lbl 7 `"Income from property"', add
label define kg09a_incsrc_lbl 8 `"Dependent"', add
label define kg09a_incsrc_lbl 9 `"Other source"', add
label values kg09a_incsrc kg09a_incsrc_lbl

label define kg09a_ind_lbl 0004 `"Agriculture"'
label define kg09a_ind_lbl 0013 `"Vegetable, ornamental plants and nursery products"', add
label define kg09a_ind_lbl 0017 `"Growing of fruit, nuts, beverage crops and spices"', add
label define kg09a_ind_lbl 0021 `"Breeding cattle"', add
label define kg09a_ind_lbl 0023 `"Sheep, goats, horses, asses, mules and hinnies"', add
label define kg09a_ind_lbl 0029 `"Farming of poultry"', add
label define kg09a_ind_lbl 0034 `"Animal husbandry, n.e.c."', add
label define kg09a_ind_lbl 0037 `"Growing of crops combined with farming of animals (mixed farming)"', add
label define kg09a_ind_lbl 0040 `"Providing services in crop"', add
label define kg09a_ind_lbl 0043 `"Provision of livestock, except veterinary activities"', add
label define kg09a_ind_lbl 0050 `"Forestry and logging"', add
label define kg09a_ind_lbl 0054 `"Providing services to forestry and logging"', add
label define kg09a_ind_lbl 0059 `"Hunting, fishing and pisiculture"', add
label define kg09a_ind_lbl 0067 `"Mining and agglomeration of hard coal and lignite"', add
label define kg09a_ind_lbl 0084 `"Crude oil and natural gas"', add
label define kg09a_ind_lbl 0088 `"Providing services for oil and gas"', add
label define kg09a_ind_lbl 0092 `"Mining of uranium and thorium ores"', add
label define kg09a_ind_lbl 0097 `"Mining of iron ores"', add
label define kg09a_ind_lbl 0101 `"Mining of non-ferrous ores, except uranium and thorium ores"', add
label define kg09a_ind_lbl 0120 `"Gravel and sand extraction"', add
label define kg09a_ind_lbl 0131 `"Quarrying and extraction, n.e.c."', add
label define kg09a_ind_lbl 0142 `"Meat and fish production"', add
label define kg09a_ind_lbl 0152 `"Fruit and vegetable preserving and processing"', add
label define kg09a_ind_lbl 0159 `"Manufacture of oils and fats"', add
label define kg09a_ind_lbl 0166 `"Milk and cheese"', add
label define kg09a_ind_lbl 0169 `"Manufacture of ice cream"', add
label define kg09a_ind_lbl 0172 `"Manufacture of grain mill products and starches"', add
label define kg09a_ind_lbl 0184 `"Manufacture of bread; manufacture of confectionery non-durable storage"', add
label define kg09a_ind_lbl 0186 `"Manufacture of rusks and biscuits, confectionery manufacture long-term storage"', add
label define kg09a_ind_lbl 0188 `"Sugar production"', add
label define kg09a_ind_lbl 0190 `"Manufacture of cocoa, chocolate and sugar confectionery"', add
label define kg09a_ind_lbl 0192 `"Production of pasta"', add
label define kg09a_ind_lbl 0194 `"Processing of tea and coffee"', add
label define kg09a_ind_lbl 0200 `"Manufacture of other food products not elsewhere classified"', add
label define kg09a_ind_lbl 0205 `"Distilled and fermented alcoholic beverages"', add
label define kg09a_ind_lbl 0209 `"Wine and cider production"', add
label define kg09a_ind_lbl 0213 `"Manufacture of other non-distilled fermented beverages from material"', add
label define kg09a_ind_lbl 0217 `"Manufacture of malt"', add
label define kg09a_ind_lbl 0219 `"Production of mineral waters and soft drinks"', add
label define kg09a_ind_lbl 0223 `"Manufacture of tobacco products"', add
label define kg09a_ind_lbl 0228 `"Spinning of cotton fibers"', add
label define kg09a_ind_lbl 0231 `"Carded wool fiber spinning"', add
label define kg09a_ind_lbl 0260 `"Manufacture of textiles and related products"', add
label define kg09a_ind_lbl 0270 `"Manufacture of carpets and rugs"', add
label define kg09a_ind_lbl 0287 `"Manufacture of knitted and crocheted fabrics and clothing"', add
label define kg09a_ind_lbl 0291 `"Leather related production"', add
label define kg09a_ind_lbl 0294 `"Manufacture of workwear"', add
label define kg09a_ind_lbl 0296 `"Manufacture of clothing"', add
label define kg09a_ind_lbl 0300 `"Manufacture of other wearing apparel and accessories"', add
label define kg09a_ind_lbl 0320 `"Manufacture of wood, wood pulp and related products"', add
label define kg09a_ind_lbl 0350 `"Manufacture of paper and paper products"', add
label define kg09a_ind_lbl 0370 `"Publishing"', add
label define kg09a_ind_lbl 0377 `"Printing of newspapers"', add
label define kg09a_ind_lbl 0379 `"Printing, n.e.c."', add
label define kg09a_ind_lbl 0400 `"Production of petroleum"', add
label define kg09a_ind_lbl 0434 `"Manufacture of pharmaceuticals"', add
label define kg09a_ind_lbl 0439 `"Manufacture of soap and detergents, cleaning and polishing preparations"', add
label define kg09a_ind_lbl 0476 `"""', add
label define kg09a_ind_lbl 0479 `"Manufacture of chemical products, including plastics, paints, fertilizers, etc."', add
label define kg09a_ind_lbl 0483 `"Glass and ceramic manufacture"', add
label define kg09a_ind_lbl 0514 `"Manufacture of bricks, tiles and construction products, in baked clay"', add
label define kg09a_ind_lbl 0517 `"Production of cement"', add
label define kg09a_ind_lbl 0525 `"Manufacture of concrete, plaster, cement and stone work"', add
label define kg09a_ind_lbl 0556 `"Metal and metal products"', add
label define kg09a_ind_lbl 0598 `"Manufacture of metal structures"', add
label define kg09a_ind_lbl 0603 `"Manufacture of structural metal products"', add
label define kg09a_ind_lbl 0620 `"Main engineering processes"', add
label define kg09a_ind_lbl 0623 `"Manufacture of metal cutlery, tools, locks, wire and related fabricated metal products"', add
label define kg09a_ind_lbl 0646 `"Manufacture of engines, machines, and related equipment"', add
label define kg09a_ind_lbl 0734 `"Manufacture of electric domestic appliances, office machinery, and computers"', add
label define kg09a_ind_lbl 0748 `"Manufacture of electric motors, generators and transformers"', add
label define kg09a_ind_lbl 0752 `"Manufacture of electricity distribution and control apparatus"', add
label define kg09a_ind_lbl 0762 `"Manufacture of electric lamps and lighting equipment"', add
label define kg09a_ind_lbl 0769 `"Manufacture of electrical equipment, except electrical equipment for engines and vehicles sreds"', add
label define kg09a_ind_lbl 0777 `"Manufacture of electrical and radioactive"', add
label define kg09a_ind_lbl 0780 `"Manufacture of transmission equipment"', add
label define kg09a_ind_lbl 0785 `"Production of equipment for the reception, recording and reproduction of sound and pictures"', add
label define kg09a_ind_lbl 0790 `"Manufacture of medical and surgical equipment and orthopedic adapted"', add
label define kg09a_ind_lbl 0822 `"Car production"', add
label define kg09a_ind_lbl 0863 `"Manufacture of chairs and seating"', add
label define kg09a_ind_lbl 0869 `"Manufacture of other furniture"', add
label define kg09a_ind_lbl 0871 `"Manufacture of mattresses"', add
label define kg09a_ind_lbl 0893 `"Other manufacturing and production"', add
label define kg09a_ind_lbl 0914 `"Steam and hot water"', add
label define kg09a_ind_lbl 0920 `"Collection, purification and distribution of water"', add
label define kg09a_ind_lbl 0925 `"Demolition, excavation, and exploratory drilling"', add
label define kg09a_ind_lbl 0933 `"Civil works"', add
label define kg09a_ind_lbl 0938 `"Construction of roads, airfields and sport facilities"', add
label define kg09a_ind_lbl 0940 `"Construction of water projects"', add
label define kg09a_ind_lbl 0947 `"Electric installation work"', add
label define kg09a_ind_lbl 0951 `"Plumbing"', add
label define kg09a_ind_lbl 0956 `"Stuccoing"', add
label define kg09a_ind_lbl 0958 `"Joinery and carpentry installation work"', add
label define kg09a_ind_lbl 0962 `"Painting and glazing"', add
label define kg09a_ind_lbl 0964 `"Other finishing work"', add
label define kg09a_ind_lbl 0972 `"Motor trade"', add
label define kg09a_ind_lbl 0976 `"Maintenance and repair of motor vehicles"', add
label define kg09a_ind_lbl 0979 `"Sale of motor vehicle parts and accessories"', add
label define kg09a_ind_lbl 0988 `"Retail sale of automotive fuel"', add
label define kg09a_ind_lbl 0992 `"Sales agents"', add
label define kg09a_ind_lbl 1011 `"Wholesale trade"', add
label define kg09a_ind_lbl 1100 `"Retail sale in non-specialized stores with food, beverages"', add
label define kg09a_ind_lbl 1102 `"Other retail sale in non-specialized stores"', add
label define kg09a_ind_lbl 1105 `"Retail sale of fruit and vegetables"', add
label define kg09a_ind_lbl 1107 `"Retail sale of meat and meat products"', add
label define kg09a_ind_lbl 1112 `"Retail trade in bakery products, cakes, flour confectionery and sugar confectionery"', add
label define kg09a_ind_lbl 1118 `"Other retail sale of food in specialized stores"', add
label define kg09a_ind_lbl 1121 `"Retail sale of pharmaceutical products"', add
label define kg09a_ind_lbl 1125 `"Retail sale of perfume and cosmetics"', add
label define kg09a_ind_lbl 1128 `"Retail sale of textiles"', add
label define kg09a_ind_lbl 1130 `"Retail sale of clothing"', add
label define kg09a_ind_lbl 1133 `"Retail sale of footwear and leather goods"', add
label define kg09a_ind_lbl 1136 `"Retail sale of furniture and home furnishings"', add
label define kg09a_ind_lbl 1139 `"Retail sale of electrical household appliances and radio and television goods"', add
label define kg09a_ind_lbl 1143 `"Retail sale of hardware, paints and glass"', add
label define kg09a_ind_lbl 1145 `"Retail sale of books, newspapers and stationery"', add
label define kg09a_ind_lbl 1147 `"Other retail sale in specialized stores"', add
label define kg09a_ind_lbl 1159 `"Other retail sales"', add
label define kg09a_ind_lbl 1162 `"Retail sale via stalls and markets"', add
label define kg09a_ind_lbl 1169 `"Repair of footwear and other leather products"', add
label define kg09a_ind_lbl 1172 `"Repair of electrical household goods"', add
label define kg09a_ind_lbl 1177 `"Repair of household goods personal effects, not elsewhere classified"', add
label define kg09a_ind_lbl 1187 `"Provision of services of hotels with restaurants"', add
label define kg09a_ind_lbl 1189 `"Providing services hotels without restaurants"', add
label define kg09a_ind_lbl 1192 `"Providing services youth tourist camps and mountain tourist bases"', add
label define kg09a_ind_lbl 1196 `"The provision of services other places to live"', add
label define kg09a_ind_lbl 1199 `"Service delivery restaurants"', add
label define kg09a_ind_lbl 1201 `"Service provision bars"', add
label define kg09a_ind_lbl 1204 `"Providing services canteens and institutions"', add
label define kg09a_ind_lbl 1206 `"Delivery of prepared food"', add
label define kg09a_ind_lbl 1211 `"Railway transport"', add
label define kg09a_ind_lbl 1214 `"Other land passenger transport, following a schedule"', add
label define kg09a_ind_lbl 1218 `"Taxi operation"', add
label define kg09a_ind_lbl 1220 `"Other land passenger transport"', add
label define kg09a_ind_lbl 1222 `"Freight transport"', add
label define kg09a_ind_lbl 1229 `"Activities of river transport"', add
label define kg09a_ind_lbl 1234 `"Air transport, following time-table"', add
label define kg09a_ind_lbl 1237 `"Air transport, not-scheduled"', add
label define kg09a_ind_lbl 1246 `"Other transport and related auxiliary activities"', add
label define kg09a_ind_lbl 1257 `"Activities of travel agencies"', add
label define kg09a_ind_lbl 1260 `"Organization of cargo transportation"', add
label define kg09a_ind_lbl 1265 `"Postal and courier activities"', add
label define kg09a_ind_lbl 1266 `"National post activities"', add
label define kg09a_ind_lbl 1271 `"Telecommunications"', add
label define kg09a_ind_lbl 1276 `"Central banking"', add
label define kg09a_ind_lbl 1278 `"Other monetary intermediation"', add
label define kg09a_ind_lbl 1285 `"Providing a credit"', add
label define kg09a_ind_lbl 1294 `"Pension benefits"', add
label define kg09a_ind_lbl 1299 `"Other financial intermediation and insurance, n.e.c."', add
label define kg09a_ind_lbl 1314 `"Development, buying, and selling of real estate"', add
label define kg09a_ind_lbl 1322 `"Agencies Real estate"', add
label define kg09a_ind_lbl 1325 `"Real Estate Management"', add
label define kg09a_ind_lbl 1329 `"Transportation and machine rental"', add
label define kg09a_ind_lbl 1365 `"Computing and database consulting, maintenance and repair"', add
label define kg09a_ind_lbl 1369 `"Research and development on natural sciences, engineering, social science, and humanities"', add
label define kg09a_ind_lbl 1376 `"Legal activities"', add
label define kg09a_ind_lbl 1379 `"Activities in the field of accounting and auditing"', add
label define kg09a_ind_lbl 1383 `"Market research, business management consulting, and holding company management"', add
label define kg09a_ind_lbl 1388 `"Activities in the field of architecture, engineering research and technical advice in these"', add
label define kg09a_ind_lbl 1395 `"Technical testing and research"', add
label define kg09a_ind_lbl 1400 `"Advertising activity"', add
label define kg09a_ind_lbl 1403 `"Labour recruitment and selection of staff"', add
label define kg09a_ind_lbl 1406 `"Investigation and security"', add
label define kg09a_ind_lbl 1409 `"Maintenance and cleaning of industrial and residential buildings, equipment and vehicles"', add
label define kg09a_ind_lbl 1412 `"Photographic activities"', add
label define kg09a_ind_lbl 1419 `"State management"', add
label define kg09a_ind_lbl 1427 `"Management of social programs"', add
label define kg09a_ind_lbl 1429 `"Regulate and promote the efficient conduct of economic activity"', add
label define kg09a_ind_lbl 1431 `"Support services by government"', add
label define kg09a_ind_lbl 1434 `"International activities"', add
label define kg09a_ind_lbl 1436 `"Defence activities"', add
label define kg09a_ind_lbl 1438 `"Activities in the field of justice and justice"', add
label define kg09a_ind_lbl 1440 `"Activities to ensure public order and safety"', add
label define kg09a_ind_lbl 1442 `"Security activities in emergencies"', add
label define kg09a_ind_lbl 1445 `"Activities in the area of ??compulsory social insurance"', add
label define kg09a_ind_lbl 1450 `"Primary education (first stage)"', add
label define kg09a_ind_lbl 1455 `"General secondary education (second stage)"', add
label define kg09a_ind_lbl 1457 `"Technical and vocational secondary education"', add
label define kg09a_ind_lbl 1461 `"Higher education"', add
label define kg09a_ind_lbl 1466 `"Adult and other education not included in other categories"', add
label define kg09a_ind_lbl 1473 `"Hospital activities"', add
label define kg09a_ind_lbl 1479 `"Medical practice"', add
label define kg09a_ind_lbl 1481 `"Dental Practice"', add
label define kg09a_ind_lbl 1483 `"Other human health activities"', add
label define kg09a_ind_lbl 1486 `"Veterinary activities"', add
label define kg09a_ind_lbl 1489 `"Social services with and without accommodation"', add
label define kg09a_ind_lbl 1497 `"Activities of business and employers organizations"', add
label define kg09a_ind_lbl 1499 `"Activities of professional organizations"', add
label define kg09a_ind_lbl 1502 `"Activities of political organizations and trade unions"', add
label define kg09a_ind_lbl 1505 `"Activities of religious organizations"', add
label define kg09a_ind_lbl 1509 `"Activities of other membership organizations nec"', add
label define kg09a_ind_lbl 1513 `"Production and dissemination of films and videos"', add
label define kg09a_ind_lbl 1520 `"Activities in the field of radio and television"', add
label define kg09a_ind_lbl 1523 `"For art"', add
label define kg09a_ind_lbl 1527 `"Operation of arts facilities"', add
label define kg09a_ind_lbl 1529 `"Activity fairs and amusement parks"', add
label define kg09a_ind_lbl 1531 `"Other spectacular and entertaining activity"', add
label define kg09a_ind_lbl 1536 `"News agency activities"', add
label define kg09a_ind_lbl 1539 `"Library and archives activities"', add
label define kg09a_ind_lbl 1545 `"Museums activities and preservation of historical sites and buildings"', add
label define kg09a_ind_lbl 1548 `"The activity of botanical and zoological gardens and nature reserves"', add
label define kg09a_ind_lbl 1552 `"Operation of sports facilities"', add
label define kg09a_ind_lbl 1554 `"Other activities in the field of sport"', add
label define kg09a_ind_lbl 1557 `"Activities Gambling"', add
label define kg09a_ind_lbl 1559 `"Other activities and recreation, not nec"', add
label define kg09a_ind_lbl 1563 `"Laundry, dry cleaning and dyeing of textile and fur products"', add
label define kg09a_ind_lbl 1566 `"Hairdressing and other beauty treatment"', add
label define kg09a_ind_lbl 1568 `"Funeral and related services"', add
label define kg09a_ind_lbl 1570 `"Physical well-being activities"', add
label define kg09a_ind_lbl 1577 `"Activities of households as employers of domestic staff"', add
label define kg09a_ind_lbl 1582 `"Activities of extraterritorial organizations"', add
label define kg09a_ind_lbl 1597 `"Production of electricity"', add
label define kg09a_ind_lbl 1602 `"Power transmission"', add
label define kg09a_ind_lbl 1604 `"Distribution and sale of electricity"', add
label define kg09a_ind_lbl 1605 `"Electrical Distribution"', add
label define kg09a_ind_lbl 1609 `"Production of gaseous fuel"', add
label define kg09a_ind_lbl 1611 `"Distribution of gaseous fuels through pipelines and selling it"', add
label define kg09a_ind_lbl 1651 `"Software development and consulting in this field"', add
label define kg09a_ind_lbl 1653 `"Providing secretarial services and translation services"', add
label define kg09a_ind_lbl 1657 `"Provision of other services to consumers"', add
label define kg09a_ind_lbl 1660 `"Removal and treatment of waste water"', add
label define kg09a_ind_lbl 1662 `"Removal and treatment of solid waste"', add
label define kg09a_ind_lbl 1664 `"Sanitation, decontamination and similar services"', add
label define kg09a_ind_lbl 1665 `"Sanitation, decontamination and similar services"', add
label define kg09a_ind_lbl 1668 `"Activities of households producing goods for own use"', add
label define kg09a_ind_lbl 1672 `"Activities of households for production services for own consumption"', add
label define kg09a_ind_lbl 1679 `"Other industries, n.e.c."', add
label define kg09a_ind_lbl 9998 `"Unknown"', add
label define kg09a_ind_lbl 9999 `"NIU (Not in universe)"', add
label values kg09a_ind kg09a_ind_lbl

label define kg09a_empstat_lbl 1 `"Employed"'
label define kg09a_empstat_lbl 2 `"Self-employed"', add
label define kg09a_empstat_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_empstat kg09a_empstat_lbl

label define kg09a_lookwk_lbl 1 `"Yes"'
label define kg09a_lookwk_lbl 2 `"No"', add
label define kg09a_lookwk_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_lookwk kg09a_lookwk_lbl

label define kg09a_nowkreas_lbl 1 `"Lack of work"'
label define kg09a_nowkreas_lbl 2 `"Illness, disability"', add
label define kg09a_nowkreas_lbl 3 `"Family reasons"', add
label define kg09a_nowkreas_lbl 4 `"No need to work"', add
label define kg09a_nowkreas_lbl 5 `"Another reason"', add
label define kg09a_nowkreas_lbl 8 `"Unknown"', add
label define kg09a_nowkreas_lbl 9 `"NIU (Not in universe)"', add
label values kg09a_nowkreas kg09a_nowkreas_lbl

label define kg09a_chborn_lbl 00 `"0"'
label define kg09a_chborn_lbl 01 `"1"', add
label define kg09a_chborn_lbl 02 `"2"', add
label define kg09a_chborn_lbl 03 `"3"', add
label define kg09a_chborn_lbl 04 `"4"', add
label define kg09a_chborn_lbl 05 `"5"', add
label define kg09a_chborn_lbl 06 `"6"', add
label define kg09a_chborn_lbl 07 `"7"', add
label define kg09a_chborn_lbl 08 `"8"', add
label define kg09a_chborn_lbl 09 `"9"', add
label define kg09a_chborn_lbl 10 `"10"', add
label define kg09a_chborn_lbl 11 `"11"', add
label define kg09a_chborn_lbl 12 `"12"', add
label define kg09a_chborn_lbl 13 `"13"', add
label define kg09a_chborn_lbl 14 `"14"', add
label define kg09a_chborn_lbl 15 `"15+"', add
label define kg09a_chborn_lbl 99 `"NIU (Not in universe)"', add
label values kg09a_chborn kg09a_chborn_lbl

label define kg09a_chbornm_lbl 00 `"0"'
label define kg09a_chbornm_lbl 01 `"1"', add
label define kg09a_chbornm_lbl 02 `"2"', add
label define kg09a_chbornm_lbl 03 `"3"', add
label define kg09a_chbornm_lbl 04 `"4"', add
label define kg09a_chbornm_lbl 05 `"5"', add
label define kg09a_chbornm_lbl 06 `"6"', add
label define kg09a_chbornm_lbl 07 `"7"', add
label define kg09a_chbornm_lbl 08 `"8"', add
label define kg09a_chbornm_lbl 09 `"9"', add
label define kg09a_chbornm_lbl 10 `"10+"', add
label define kg09a_chbornm_lbl 99 `"NIU (Not in universe)"', add
label values kg09a_chbornm kg09a_chbornm_lbl

label define kg09a_chbornf_lbl 00 `"0"'
label define kg09a_chbornf_lbl 01 `"1"', add
label define kg09a_chbornf_lbl 02 `"2"', add
label define kg09a_chbornf_lbl 03 `"3"', add
label define kg09a_chbornf_lbl 04 `"4"', add
label define kg09a_chbornf_lbl 05 `"5"', add
label define kg09a_chbornf_lbl 06 `"6"', add
label define kg09a_chbornf_lbl 07 `"7"', add
label define kg09a_chbornf_lbl 08 `"8"', add
label define kg09a_chbornf_lbl 09 `"9"', add
label define kg09a_chbornf_lbl 10 `"10+"', add
label define kg09a_chbornf_lbl 99 `"NIU (Not in universe)"', add
label values kg09a_chbornf kg09a_chbornf_lbl

label define kg09a_chsurv_lbl 00 `"0"'
label define kg09a_chsurv_lbl 01 `"1"', add
label define kg09a_chsurv_lbl 02 `"2"', add
label define kg09a_chsurv_lbl 03 `"3"', add
label define kg09a_chsurv_lbl 04 `"4"', add
label define kg09a_chsurv_lbl 05 `"5"', add
label define kg09a_chsurv_lbl 06 `"6"', add
label define kg09a_chsurv_lbl 07 `"7"', add
label define kg09a_chsurv_lbl 08 `"8"', add
label define kg09a_chsurv_lbl 09 `"9"', add
label define kg09a_chsurv_lbl 10 `"10"', add
label define kg09a_chsurv_lbl 11 `"11"', add
label define kg09a_chsurv_lbl 12 `"12"', add
label define kg09a_chsurv_lbl 13 `"13"', add
label define kg09a_chsurv_lbl 14 `"14+"', add
label define kg09a_chsurv_lbl 99 `"NIU (Not in universe)"', add
label values kg09a_chsurv kg09a_chsurv_lbl

label define kg09a_chsurvm_lbl 00 `"0"'
label define kg09a_chsurvm_lbl 01 `"1"', add
label define kg09a_chsurvm_lbl 02 `"2"', add
label define kg09a_chsurvm_lbl 03 `"3"', add
label define kg09a_chsurvm_lbl 04 `"4"', add
label define kg09a_chsurvm_lbl 05 `"5"', add
label define kg09a_chsurvm_lbl 06 `"6"', add
label define kg09a_chsurvm_lbl 07 `"7"', add
label define kg09a_chsurvm_lbl 08 `"8"', add
label define kg09a_chsurvm_lbl 09 `"9+"', add
label define kg09a_chsurvm_lbl 99 `"NIU (Not in universe)"', add
label values kg09a_chsurvm kg09a_chsurvm_lbl

label define kg09a_chsurvf_lbl 00 `"0"'
label define kg09a_chsurvf_lbl 01 `"1"', add
label define kg09a_chsurvf_lbl 02 `"2"', add
label define kg09a_chsurvf_lbl 03 `"3"', add
label define kg09a_chsurvf_lbl 04 `"4"', add
label define kg09a_chsurvf_lbl 05 `"5"', add
label define kg09a_chsurvf_lbl 06 `"6"', add
label define kg09a_chsurvf_lbl 07 `"7"', add
label define kg09a_chsurvf_lbl 08 `"8"', add
label define kg09a_chsurvf_lbl 09 `"9+"', add
label define kg09a_chsurvf_lbl 99 `"NIU (Not in universe)"', add
label values kg09a_chsurvf kg09a_chsurvf_lbl

label define kg09a_chaway_lbl 00 `"0"'
label define kg09a_chaway_lbl 01 `"1"', add
label define kg09a_chaway_lbl 02 `"2"', add
label define kg09a_chaway_lbl 03 `"3"', add
label define kg09a_chaway_lbl 04 `"4"', add
label define kg09a_chaway_lbl 05 `"5"', add
label define kg09a_chaway_lbl 06 `"6"', add
label define kg09a_chaway_lbl 07 `"7"', add
label define kg09a_chaway_lbl 08 `"8"', add
label define kg09a_chaway_lbl 09 `"9"', add
label define kg09a_chaway_lbl 10 `"10"', add
label define kg09a_chaway_lbl 11 `"11"', add
label define kg09a_chaway_lbl 12 `"12+"', add
label define kg09a_chaway_lbl 98 `"Unknown"', add
label define kg09a_chaway_lbl 99 `"NIU (Not in universe)"', add
label values kg09a_chaway kg09a_chaway_lbl

label define kg09a_chawaym_lbl 00 `"0"'
label define kg09a_chawaym_lbl 01 `"1"', add
label define kg09a_chawaym_lbl 02 `"2"', add
label define kg09a_chawaym_lbl 03 `"3"', add
label define kg09a_chawaym_lbl 04 `"4"', add
label define kg09a_chawaym_lbl 05 `"5"', add
label define kg09a_chawaym_lbl 06 `"6"', add
label define kg09a_chawaym_lbl 07 `"7"', add
label define kg09a_chawaym_lbl 08 `"8+"', add
label define kg09a_chawaym_lbl 99 `"NIU (Not in universe)"', add
label values kg09a_chawaym kg09a_chawaym_lbl

label define kg09a_chawayf_lbl 00 `"0"'
label define kg09a_chawayf_lbl 01 `"1"', add
label define kg09a_chawayf_lbl 02 `"2"', add
label define kg09a_chawayf_lbl 03 `"3"', add
label define kg09a_chawayf_lbl 04 `"4"', add
label define kg09a_chawayf_lbl 05 `"5"', add
label define kg09a_chawayf_lbl 06 `"6"', add
label define kg09a_chawayf_lbl 07 `"7"', add
label define kg09a_chawayf_lbl 08 `"8+"', add
label define kg09a_chawayf_lbl 99 `"NIU (Not in universe)"', add
label values kg09a_chawayf kg09a_chawayf_lbl


