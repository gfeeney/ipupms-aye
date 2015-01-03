* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    bf06a_dwnum     22-28    ///
  byte    bf06a_pern      29-30    ///
  byte    bf06a_fbig      31-31    ///
  byte    bf06a_region    32-33    ///
  byte    bf06a_prov      34-35    ///
  byte    bf06a_urban     36-36    ///
  byte    bf06a_numhhqs   37-38    ///
  byte    bf06a_hhzone    39-39    ///
  byte    bf06a_hhtype    40-40    ///
  byte    bf06a_occup     41-41    ///
  byte    bf06a_rooms     42-43    ///
  byte    bf06a_walls     44-44    ///
  byte    bf06a_roof      45-45    ///
  byte    bf06a_floor     46-46    ///
  byte    bf06a_light     47-47    ///
  byte    bf06a_fuelck    48-48    ///
  byte    bf06a_watsup    49-49    ///
  byte    bf06a_toilet    50-50    ///
  byte    bf06a_trash     51-51    ///
  byte    bf06a_sewer     52-52    ///
  byte    bf06a_radio     53-54    ///
  byte    bf06a_tv        55-56    ///
  byte    bf06a_phone     57-58    ///
  byte    bf06a_cellphon  59-60    ///
  byte    bf06a_refrig    61-62    ///
  byte    bf06a_computer  63-64    ///
  byte    bf06a_internet  65-66    ///
  byte    bf06a_bike      67-68    ///
  byte    bf06a_motorbik  69-70    ///
  byte    bf06a_auto      71-72    ///
  byte    bf06a_boat      73-74    ///
  byte    bf06a_cart      75-76    ///
  byte    bf06a_camel     77-78    ///
  byte    bf06a_horse     79-80    ///
  byte    bf06a_donkey    81-82    ///
  int     bf06a_respresm  83-85    ///
  int     bf06a_resabsm   86-88    ///
  int     bf06a_pamales   89-91    ///
  int     bf06a_visitmal  92-94    ///
  int     bf06a_totmale   95-97    ///
  int     bf06a_emigmal   98-100   ///
  int     bf06a_respresf  101-103  ///
  int     bf06a_resabsf   104-106  ///
  int     bf06a_pafem     107-109  ///
  int     bf06a_visfem    110-112  ///
  int     bf06a_totfem    113-115  ///
  int     bf06a_emigfem   116-118  ///
  int     bf06a_respres   119-121  ///
  int     bf06a_resabs    122-124  ///
  int     bf06a_presabs   125-127  ///
  int     bf06a_visitors  128-130  ///
  int     bf06a_emigtot   131-133  ///
  byte    bf06a_lsquint   134-134  ///
  int     pernum          135-137  ///
  float   wtper           138-145  ///
  byte    resident        146-146  ///
  byte    bf06a_pernum    147-148  ///
  byte    bf06a_sex       149-149  ///
  byte    bf06a_relate    150-151  ///
  byte    bf06a_status    152-152  ///
  byte    bf06a_birthmo   153-154  ///
  int     bf06a_birthyr   155-158  ///
  int     bf06a_age       159-161  ///
  byte    bf06a_bircert   162-162  ///
  byte    bf06a_bpl       163-164  ///
  byte    bf06a_bplprov   165-166  ///
  int     bf06a_bplcomm   167-170  ///
  byte    bf06a_cntry05   171-172  ///
  byte    bf06a_prov05    173-174  ///
  int     bf06a_comm05    175-178  ///
  byte    bf06a_abroad    179-179  ///
  byte    bf06a_resdur    180-181  ///
  byte    bf06a_whyret    182-182  ///
  byte    bf06a_disab     183-183  ///
  byte    bf06a_religion  184-184  ///
  byte    bf06a_nation    185-186  ///
  byte    bf06a_school    187-187  ///
  byte    bf06a_edlevel   188-189  ///
  byte    bf06a_litflang  190-191  ///
  byte    bf06a_litnat    192-193  ///
  byte    bf06a_lang      194-195  ///
  byte    bf06a_empstat   196-196  ///
  byte    bf06a_classwk   197-197  ///
  byte    bf06a_marst     198-198  ///
  byte    bf06a_chbornm   199-200  ///
  byte    bf06a_chbornf   201-202  ///
  byte    bf06a_chsurvm   203-204  ///
  byte    bf06a_chsurvf   205-206  ///
  byte    bf06a_bthlyrm   207-207  ///
  byte    bf06a_bthlyrf   208-208  ///
  byte    bf06a_mortfath  209-209  ///
  byte    bf06a_mortmoth  210-210  ///
  using `"ipumsi_00056.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var bf06a_dwnum    `"Dwelling number"'
label var bf06a_pern     `"Number of persons in household"'
label var bf06a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var bf06a_region   `"Region"'
label var bf06a_prov     `"Province"'
label var bf06a_urban    `"Type of locality"'
label var bf06a_numhhqs  `"Number of questionaires in the household"'
label var bf06a_hhzone   `"Housing zone"'
label var bf06a_hhtype   `"Housing type"'
label var bf06a_occup    `"Occupation status"'
label var bf06a_rooms    `"Number of rooms"'
label var bf06a_walls    `"Type of walls"'
label var bf06a_roof     `"Type of roof"'
label var bf06a_floor    `"Type of floor"'
label var bf06a_light    `"Main light source"'
label var bf06a_fuelck   `"Principal source of cooking energy"'
label var bf06a_watsup   `"Principal source of drinking water"'
label var bf06a_toilet   `"Sanitary equipment"'
label var bf06a_trash    `"Trash disposal method"'
label var bf06a_sewer    `"Used water disposal method"'
label var bf06a_radio    `"Number of functional radios in household"'
label var bf06a_tv       `"Number of functional televisions in household"'
label var bf06a_phone    `"Number of functional landline telephones in household"'
label var bf06a_cellphon `"Number of functional cellular phones in household"'
label var bf06a_refrig   `"Number of functional refrigerators in household"'
label var bf06a_computer `"Number of functional computers in household"'
label var bf06a_internet `"Number of functional internet connections in household"'
label var bf06a_bike     `"Number of functional bicycles"'
label var bf06a_motorbik `"Number of functional motorbikes"'
label var bf06a_auto     `"Number of functional cars"'
label var bf06a_boat     `"Number of functional boats"'
label var bf06a_cart     `"Number of functional carts"'
label var bf06a_camel    `"Number of camels"'
label var bf06a_horse    `"Number of horses"'
label var bf06a_donkey   `"Number of donkeys"'
label var bf06a_respresm `"Male present residents"'
label var bf06a_resabsm  `"Male absent residents"'
label var bf06a_pamales  `"Male present and absent residents"'
label var bf06a_visitmal `"Male visitors"'
label var bf06a_totmale  `"Total males"'
label var bf06a_emigmal  `"Male emigrants"'
label var bf06a_respresf `"Female present residents"'
label var bf06a_resabsf  `"Female absent residents"'
label var bf06a_pafem    `"Female present and absent residents"'
label var bf06a_visfem   `"Female visitors"'
label var bf06a_totfem   `"Total females"'
label var bf06a_emigfem  `"Female emigrants"'
label var bf06a_respres  `"Present residents"'
label var bf06a_resabs   `"Absent residents"'
label var bf06a_presabs  `"Present and absent residents"'
label var bf06a_visitors `"Visitors"'
label var bf06a_emigtot  `"Emigrants"'
label var bf06a_lsquint  `"Standard of living quintile"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var resident       `"Residence status: de facto, de jure"'
label var bf06a_pernum   `"Person number (within household)"'
label var bf06a_sex      `"Sex"'
label var bf06a_relate   `"Relationship to head"'
label var bf06a_status   `"Residential status"'
label var bf06a_birthmo  `"Month of birth"'
label var bf06a_birthyr  `"Year of birth"'
label var bf06a_age      `"Age"'
label var bf06a_bircert  `"Has birth certificate"'
label var bf06a_bpl      `"Country of birth"'
label var bf06a_bplprov  `"Province of birth"'
label var bf06a_bplcomm  `"Commune of birth"'
label var bf06a_cntry05  `"Country of residence 2005"'
label var bf06a_prov05   `"Province of residence 2005"'
label var bf06a_comm05   `"Commune of residence 2005"'
label var bf06a_abroad   `"Residence abroad"'
label var bf06a_resdur   `"Time since return (years)"'
label var bf06a_whyret   `"Reason for return"'
label var bf06a_disab    `"Handicap"'
label var bf06a_religion `"Religion"'
label var bf06a_nation   `"Nationality"'
label var bf06a_school   `"School attendance"'
label var bf06a_edlevel  `"Level of instruction"'
label var bf06a_litflang `"Literacy in foreign language"'
label var bf06a_litnat   `"Literacy in national language"'
label var bf06a_lang     `"Spoken language"'
label var bf06a_empstat  `"Occupational status"'
label var bf06a_classwk  `"Situation in principal occupation"'
label var bf06a_marst    `"Marital status"'
label var bf06a_chbornm  `"Male live births"'
label var bf06a_chbornf  `"Female live births"'
label var bf06a_chsurvm  `"Surviving male children"'
label var bf06a_chsurvf  `"Surviving female children"'
label var bf06a_bthlyrm  `"Male births last 12 months"'
label var bf06a_bthlyrf  `"Female births last 12 months"'
label var bf06a_mortfath `"Survival of father"'
label var bf06a_mortmoth `"Survival of mother"'

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

label define bf06a_pern_lbl 01 `"1"'
label define bf06a_pern_lbl 02 `"2"', add
label define bf06a_pern_lbl 03 `"3"', add
label define bf06a_pern_lbl 04 `"4"', add
label define bf06a_pern_lbl 05 `"5"', add
label define bf06a_pern_lbl 06 `"6"', add
label define bf06a_pern_lbl 07 `"7"', add
label define bf06a_pern_lbl 08 `"8"', add
label define bf06a_pern_lbl 09 `"9"', add
label define bf06a_pern_lbl 10 `"10"', add
label define bf06a_pern_lbl 11 `"11"', add
label define bf06a_pern_lbl 12 `"12"', add
label define bf06a_pern_lbl 13 `"13"', add
label define bf06a_pern_lbl 14 `"14"', add
label define bf06a_pern_lbl 15 `"15"', add
label define bf06a_pern_lbl 16 `"16"', add
label define bf06a_pern_lbl 17 `"17"', add
label define bf06a_pern_lbl 18 `"18"', add
label define bf06a_pern_lbl 19 `"19"', add
label define bf06a_pern_lbl 20 `"20"', add
label define bf06a_pern_lbl 21 `"21"', add
label define bf06a_pern_lbl 22 `"22"', add
label define bf06a_pern_lbl 23 `"23"', add
label define bf06a_pern_lbl 24 `"24"', add
label define bf06a_pern_lbl 25 `"25"', add
label define bf06a_pern_lbl 26 `"26"', add
label define bf06a_pern_lbl 27 `"27"', add
label define bf06a_pern_lbl 28 `"28"', add
label define bf06a_pern_lbl 29 `"29"', add
label define bf06a_pern_lbl 30 `"30"', add
label define bf06a_pern_lbl 31 `"31"', add
label define bf06a_pern_lbl 32 `"32"', add
label define bf06a_pern_lbl 33 `"33"', add
label define bf06a_pern_lbl 34 `"34"', add
label define bf06a_pern_lbl 35 `"35"', add
label define bf06a_pern_lbl 36 `"36"', add
label define bf06a_pern_lbl 37 `"37"', add
label define bf06a_pern_lbl 38 `"38"', add
label define bf06a_pern_lbl 39 `"39"', add
label define bf06a_pern_lbl 40 `"40"', add
label define bf06a_pern_lbl 41 `"41"', add
label define bf06a_pern_lbl 42 `"42"', add
label define bf06a_pern_lbl 43 `"43"', add
label define bf06a_pern_lbl 44 `"44"', add
label define bf06a_pern_lbl 45 `"45"', add
label define bf06a_pern_lbl 46 `"46"', add
label define bf06a_pern_lbl 47 `"47"', add
label define bf06a_pern_lbl 48 `"48"', add
label define bf06a_pern_lbl 49 `"49"', add
label define bf06a_pern_lbl 50 `"50"', add
label define bf06a_pern_lbl 51 `"51"', add
label define bf06a_pern_lbl 52 `"52"', add
label define bf06a_pern_lbl 53 `"53"', add
label define bf06a_pern_lbl 54 `"54"', add
label define bf06a_pern_lbl 55 `"55"', add
label define bf06a_pern_lbl 57 `"57"', add
label define bf06a_pern_lbl 58 `"58"', add
label define bf06a_pern_lbl 59 `"59"', add
label define bf06a_pern_lbl 60 `"60"', add
label define bf06a_pern_lbl 61 `"61"', add
label define bf06a_pern_lbl 65 `"65"', add
label define bf06a_pern_lbl 66 `"66"', add
label define bf06a_pern_lbl 68 `"68"', add
label define bf06a_pern_lbl 71 `"71"', add
label define bf06a_pern_lbl 76 `"76"', add
label define bf06a_pern_lbl 81 `"81"', add
label define bf06a_pern_lbl 82 `"82"', add
label define bf06a_pern_lbl 90 `"90"', add
label values bf06a_pern bf06a_pern_lbl

label define bf06a_fbig_lbl 0 `"No problem"'
label define bf06a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define bf06a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values bf06a_fbig bf06a_fbig_lbl

label define bf06a_region_lbl 01 `"Boucle du Mouhoun"'
label define bf06a_region_lbl 02 `"Cascades"', add
label define bf06a_region_lbl 03 `"Centre"', add
label define bf06a_region_lbl 04 `"Centre-Est"', add
label define bf06a_region_lbl 05 `"Centre-Nord"', add
label define bf06a_region_lbl 06 `"Centre-Ouest"', add
label define bf06a_region_lbl 07 `"Centre-Sud"', add
label define bf06a_region_lbl 08 `"Est"', add
label define bf06a_region_lbl 09 `"Hauts-Bassins"', add
label define bf06a_region_lbl 10 `"Nord"', add
label define bf06a_region_lbl 11 `"Plateau Central"', add
label define bf06a_region_lbl 12 `"Sahel"', add
label define bf06a_region_lbl 13 `"Sud-Ouest"', add
label values bf06a_region bf06a_region_lbl

label define bf06a_prov_lbl 01 `"Bam"'
label define bf06a_prov_lbl 02 `"Bazega"', add
label define bf06a_prov_lbl 03 `"Bougouriba"', add
label define bf06a_prov_lbl 04 `"Boulgou"', add
label define bf06a_prov_lbl 05 `"Boulkiemde"', add
label define bf06a_prov_lbl 06 `"Comoe"', add
label define bf06a_prov_lbl 07 `"Ganzourgou"', add
label define bf06a_prov_lbl 08 `"Gnagna"', add
label define bf06a_prov_lbl 09 `"Gourma"', add
label define bf06a_prov_lbl 10 `"Houet"', add
label define bf06a_prov_lbl 11 `"Kadiogo"', add
label define bf06a_prov_lbl 12 `"Kenedougou"', add
label define bf06a_prov_lbl 13 `"Kossi"', add
label define bf06a_prov_lbl 14 `"Kouritenga"', add
label define bf06a_prov_lbl 15 `"Mouhoun"', add
label define bf06a_prov_lbl 16 `"Nahouri"', add
label define bf06a_prov_lbl 17 `"Namentenga"', add
label define bf06a_prov_lbl 18 `"Oubritenga"', add
label define bf06a_prov_lbl 19 `"Oudalan"', add
label define bf06a_prov_lbl 20 `"Passore"', add
label define bf06a_prov_lbl 21 `"Poni"', add
label define bf06a_prov_lbl 22 `"Sanguie"', add
label define bf06a_prov_lbl 23 `"Sanmatenga"', add
label define bf06a_prov_lbl 24 `"Seno"', add
label define bf06a_prov_lbl 25 `"Sissili"', add
label define bf06a_prov_lbl 26 `"Soum"', add
label define bf06a_prov_lbl 27 `"Sourou"', add
label define bf06a_prov_lbl 28 `"Tapoa"', add
label define bf06a_prov_lbl 29 `"Yatenga"', add
label define bf06a_prov_lbl 30 `"Zoundweogo"', add
label define bf06a_prov_lbl 31 `"Bale"', add
label define bf06a_prov_lbl 32 `"Banwa"', add
label define bf06a_prov_lbl 33 `"Ioba"', add
label define bf06a_prov_lbl 34 `"Komandjoari"', add
label define bf06a_prov_lbl 35 `"Kompienga"', add
label define bf06a_prov_lbl 36 `"Koulpelogo"', add
label define bf06a_prov_lbl 37 `"Kourweogo"', add
label define bf06a_prov_lbl 38 `"Leraba"', add
label define bf06a_prov_lbl 39 `"Loroum"', add
label define bf06a_prov_lbl 40 `"Nayala"', add
label define bf06a_prov_lbl 41 `"Noumbiel"', add
label define bf06a_prov_lbl 42 `"Tuy"', add
label define bf06a_prov_lbl 43 `"Yagha"', add
label define bf06a_prov_lbl 44 `"Ziro"', add
label define bf06a_prov_lbl 45 `"Zondoma"', add
label values bf06a_prov bf06a_prov_lbl

label define bf06a_urban_lbl 1 `"Urban"'
label define bf06a_urban_lbl 2 `"Rural"', add
label values bf06a_urban bf06a_urban_lbl

label define bf06a_numhhqs_lbl 01 `"1"'
label define bf06a_numhhqs_lbl 02 `"2"', add
label define bf06a_numhhqs_lbl 03 `"3"', add
label define bf06a_numhhqs_lbl 04 `"4"', add
label define bf06a_numhhqs_lbl 05 `"5+"', add
label define bf06a_numhhqs_lbl 99 `"Unknown"', add
label values bf06a_numhhqs bf06a_numhhqs_lbl

label define bf06a_hhzone_lbl 1 `"Plotted zone"'
label define bf06a_hhzone_lbl 2 `"Non-plotted zone"', add
label values bf06a_hhzone bf06a_hhzone_lbl

label define bf06a_hhtype_lbl 0 `"Other"'
label define bf06a_hhtype_lbl 1 `"Apartment building"', add
label define bf06a_hhtype_lbl 2 `"Villa"', add
label define bf06a_hhtype_lbl 3 `"Single family home"', add
label define bf06a_hhtype_lbl 4 `"Multiple family dwelling (not apartments)"', add
label define bf06a_hhtype_lbl 5 `"Hut"', add
label define bf06a_hhtype_lbl 9 `"Unknown"', add
label values bf06a_hhtype bf06a_hhtype_lbl

label define bf06a_occup_lbl 0 `"Other"'
label define bf06a_occup_lbl 1 `"Owner"', add
label define bf06a_occup_lbl 2 `"Rent-to-own"', add
label define bf06a_occup_lbl 3 `"Rent"', add
label define bf06a_occup_lbl 4 `"Lodged for free"', add
label define bf06a_occup_lbl 9 `"Unknown"', add
label values bf06a_occup bf06a_occup_lbl

label define bf06a_rooms_lbl 01 `"1"'
label define bf06a_rooms_lbl 02 `"2"', add
label define bf06a_rooms_lbl 03 `"3"', add
label define bf06a_rooms_lbl 04 `"4"', add
label define bf06a_rooms_lbl 05 `"5"', add
label define bf06a_rooms_lbl 06 `"6"', add
label define bf06a_rooms_lbl 07 `"7"', add
label define bf06a_rooms_lbl 08 `"8"', add
label define bf06a_rooms_lbl 09 `"9"', add
label define bf06a_rooms_lbl 10 `"10"', add
label define bf06a_rooms_lbl 99 `"Unknown"', add
label values bf06a_rooms bf06a_rooms_lbl

label define bf06a_walls_lbl 0 `"Other"'
label define bf06a_walls_lbl 1 `"Hard material (i.e. cement, brick)"', add
label define bf06a_walls_lbl 2 `"Partly hard material (i.e. cement and plaster or wood)"', add
label define bf06a_walls_lbl 3 `"Dried red earth"', add
label define bf06a_walls_lbl 4 `"Straw"', add
label define bf06a_walls_lbl 9 `"Unknown"', add
label values bf06a_walls bf06a_walls_lbl

label define bf06a_roof_lbl 0 `"Other"'
label define bf06a_roof_lbl 1 `"Concrete"', add
label define bf06a_roof_lbl 2 `"Sheet metal"', add
label define bf06a_roof_lbl 3 `"Tiles"', add
label define bf06a_roof_lbl 4 `"Clay"', add
label define bf06a_roof_lbl 5 `"Thatch"', add
label define bf06a_roof_lbl 9 `"Unknown"', add
label values bf06a_roof bf06a_roof_lbl

label define bf06a_floor_lbl 0 `"Other"'
label define bf06a_floor_lbl 1 `"Tiles"', add
label define bf06a_floor_lbl 2 `"Cement"', add
label define bf06a_floor_lbl 3 `"Earth"', add
label define bf06a_floor_lbl 4 `"Sand"', add
label define bf06a_floor_lbl 9 `"Unknown"', add
label values bf06a_floor bf06a_floor_lbl

label define bf06a_light_lbl 0 `"Other"'
label define bf06a_light_lbl 1 `"Gridded electricity"', add
label define bf06a_light_lbl 2 `"Personal electricity (group, solar panel, battery)"', add
label define bf06a_light_lbl 3 `"Gas lamp"', add
label define bf06a_light_lbl 4 `"Kerosene lamp"', add
label define bf06a_light_lbl 5 `"Oil lamp"', add
label define bf06a_light_lbl 6 `"Flashlight"', add
label define bf06a_light_lbl 7 `"Candles"', add
label define bf06a_light_lbl 8 `"Wood/straw"', add
label define bf06a_light_lbl 9 `"Unknown"', add
label values bf06a_light bf06a_light_lbl

label define bf06a_fuelck_lbl 0 `"Other"'
label define bf06a_fuelck_lbl 1 `"Electricity"', add
label define bf06a_fuelck_lbl 2 `"Natural gas"', add
label define bf06a_fuelck_lbl 3 `"Petrol"', add
label define bf06a_fuelck_lbl 4 `"Coal"', add
label define bf06a_fuelck_lbl 5 `"Wood (reinforced hearth)"', add
label define bf06a_fuelck_lbl 6 `"Wood (simple hearth)"', add
label define bf06a_fuelck_lbl 7 `"No energy for cooking"', add
label define bf06a_fuelck_lbl 9 `"Unknown"', add
label values bf06a_fuelck bf06a_fuelck_lbl

label define bf06a_watsup_lbl 0 `"Other"'
label define bf06a_watsup_lbl 1 `"Running water"', add
label define bf06a_watsup_lbl 2 `"Public tap"', add
label define bf06a_watsup_lbl 3 `"Drilled pump"', add
label define bf06a_watsup_lbl 4 `"Cased well"', add
label define bf06a_watsup_lbl 5 `"Ordinary well"', add
label define bf06a_watsup_lbl 6 `"River, marshland, dam"', add
label define bf06a_watsup_lbl 9 `"Unknown"', add
label values bf06a_watsup bf06a_watsup_lbl

label define bf06a_toilet_lbl 0 `"Other"'
label define bf06a_toilet_lbl 1 `"Private flush toilet"', add
label define bf06a_toilet_lbl 2 `"Shared flush toilet"', add
label define bf06a_toilet_lbl 3 `"Ordinary latrine"', add
label define bf06a_toilet_lbl 4 `"Ventilated pit latrine"', add
label define bf06a_toilet_lbl 5 `"Outdoors"', add
label define bf06a_toilet_lbl 9 `"Unknown"', add
label values bf06a_toilet bf06a_toilet_lbl

label define bf06a_trash_lbl 0 `"Other"'
label define bf06a_trash_lbl 1 `"Private trash removal service"', add
label define bf06a_trash_lbl 2 `"Trash heap"', add
label define bf06a_trash_lbl 3 `"Ditches"', add
label define bf06a_trash_lbl 4 `"Dumpster"', add
label define bf06a_trash_lbl 5 `"Street"', add
label define bf06a_trash_lbl 9 `"Unknown"', add
label values bf06a_trash bf06a_trash_lbl

label define bf06a_sewer_lbl 0 `"Other"'
label define bf06a_sewer_lbl 1 `"Courtyard"', add
label define bf06a_sewer_lbl 2 `"Street"', add
label define bf06a_sewer_lbl 3 `"Ditches"', add
label define bf06a_sewer_lbl 4 `"Gutters"', add
label define bf06a_sewer_lbl 5 `"Septic tank"', add
label define bf06a_sewer_lbl 9 `"Unknown"', add
label values bf06a_sewer bf06a_sewer_lbl

label define bf06a_radio_lbl 00 `"0"'
label define bf06a_radio_lbl 01 `"1"', add
label define bf06a_radio_lbl 02 `"2"', add
label define bf06a_radio_lbl 03 `"3"', add
label define bf06a_radio_lbl 04 `"4"', add
label define bf06a_radio_lbl 05 `"5"', add
label define bf06a_radio_lbl 06 `"6"', add
label define bf06a_radio_lbl 07 `"7"', add
label define bf06a_radio_lbl 08 `"8+"', add
label define bf06a_radio_lbl 99 `"Unknown"', add
label values bf06a_radio bf06a_radio_lbl

label define bf06a_tv_lbl 00 `"0"'
label define bf06a_tv_lbl 01 `"1"', add
label define bf06a_tv_lbl 02 `"2"', add
label define bf06a_tv_lbl 03 `"3"', add
label define bf06a_tv_lbl 04 `"4"', add
label define bf06a_tv_lbl 05 `"5+"', add
label define bf06a_tv_lbl 99 `"Unknown"', add
label values bf06a_tv bf06a_tv_lbl

label define bf06a_phone_lbl 00 `"0"'
label define bf06a_phone_lbl 01 `"1"', add
label define bf06a_phone_lbl 02 `"2"', add
label define bf06a_phone_lbl 03 `"3+"', add
label define bf06a_phone_lbl 99 `"Unknown"', add
label values bf06a_phone bf06a_phone_lbl

label define bf06a_cellphon_lbl 00 `"0"'
label define bf06a_cellphon_lbl 01 `"1"', add
label define bf06a_cellphon_lbl 02 `"2"', add
label define bf06a_cellphon_lbl 03 `"3"', add
label define bf06a_cellphon_lbl 04 `"4"', add
label define bf06a_cellphon_lbl 05 `"5"', add
label define bf06a_cellphon_lbl 06 `"6"', add
label define bf06a_cellphon_lbl 07 `"7"', add
label define bf06a_cellphon_lbl 08 `"8+"', add
label define bf06a_cellphon_lbl 99 `"Unknown"', add
label values bf06a_cellphon bf06a_cellphon_lbl

label define bf06a_refrig_lbl 00 `"0"'
label define bf06a_refrig_lbl 01 `"1"', add
label define bf06a_refrig_lbl 02 `"2"', add
label define bf06a_refrig_lbl 03 `"3"', add
label define bf06a_refrig_lbl 04 `"4"', add
label define bf06a_refrig_lbl 05 `"5"', add
label define bf06a_refrig_lbl 99 `"Unknown"', add
label values bf06a_refrig bf06a_refrig_lbl

label define bf06a_computer_lbl 00 `"0"'
label define bf06a_computer_lbl 01 `"1"', add
label define bf06a_computer_lbl 02 `"2"', add
label define bf06a_computer_lbl 03 `"3"', add
label define bf06a_computer_lbl 04 `"4+"', add
label define bf06a_computer_lbl 99 `"Unknown"', add
label values bf06a_computer bf06a_computer_lbl

label define bf06a_internet_lbl 00 `"0"'
label define bf06a_internet_lbl 01 `"1 or more"', add
label define bf06a_internet_lbl 99 `"Unknown"', add
label values bf06a_internet bf06a_internet_lbl

label define bf06a_bike_lbl 00 `"0"'
label define bf06a_bike_lbl 01 `"1"', add
label define bf06a_bike_lbl 02 `"2"', add
label define bf06a_bike_lbl 03 `"3"', add
label define bf06a_bike_lbl 04 `"4"', add
label define bf06a_bike_lbl 05 `"5"', add
label define bf06a_bike_lbl 06 `"6"', add
label define bf06a_bike_lbl 07 `"7"', add
label define bf06a_bike_lbl 08 `"8"', add
label define bf06a_bike_lbl 09 `"9"', add
label define bf06a_bike_lbl 10 `"10+"', add
label define bf06a_bike_lbl 99 `"Unknown"', add
label values bf06a_bike bf06a_bike_lbl

label define bf06a_motorbik_lbl 00 `"0"'
label define bf06a_motorbik_lbl 01 `"1"', add
label define bf06a_motorbik_lbl 02 `"2"', add
label define bf06a_motorbik_lbl 03 `"3"', add
label define bf06a_motorbik_lbl 04 `"4"', add
label define bf06a_motorbik_lbl 05 `"5"', add
label define bf06a_motorbik_lbl 06 `"6"', add
label define bf06a_motorbik_lbl 07 `"7+"', add
label define bf06a_motorbik_lbl 99 `"Unknown"', add
label values bf06a_motorbik bf06a_motorbik_lbl

label define bf06a_auto_lbl 00 `"0"'
label define bf06a_auto_lbl 01 `"1"', add
label define bf06a_auto_lbl 02 `"2"', add
label define bf06a_auto_lbl 03 `"3"', add
label define bf06a_auto_lbl 04 `"4"', add
label define bf06a_auto_lbl 05 `"5+"', add
label define bf06a_auto_lbl 99 `"Unknown"', add
label values bf06a_auto bf06a_auto_lbl

label define bf06a_boat_lbl 00 `"0"'
label define bf06a_boat_lbl 01 `"1"', add
label define bf06a_boat_lbl 02 `"2+"', add
label define bf06a_boat_lbl 99 `"Unknown"', add
label values bf06a_boat bf06a_boat_lbl

label define bf06a_cart_lbl 00 `"0"'
label define bf06a_cart_lbl 01 `"1"', add
label define bf06a_cart_lbl 02 `"2"', add
label define bf06a_cart_lbl 03 `"3"', add
label define bf06a_cart_lbl 04 `"4"', add
label define bf06a_cart_lbl 05 `"5+"', add
label define bf06a_cart_lbl 99 `"Unknown"', add
label values bf06a_cart bf06a_cart_lbl

label define bf06a_camel_lbl 00 `"0"'
label define bf06a_camel_lbl 01 `"1"', add
label define bf06a_camel_lbl 02 `"2"', add
label define bf06a_camel_lbl 03 `"3"', add
label define bf06a_camel_lbl 04 `"4+"', add
label define bf06a_camel_lbl 99 `"Unknown"', add
label values bf06a_camel bf06a_camel_lbl

label define bf06a_horse_lbl 00 `"0"'
label define bf06a_horse_lbl 01 `"1"', add
label define bf06a_horse_lbl 02 `"2"', add
label define bf06a_horse_lbl 03 `"3+"', add
label define bf06a_horse_lbl 99 `"Unknown"', add
label values bf06a_horse bf06a_horse_lbl

label define bf06a_donkey_lbl 00 `"0"'
label define bf06a_donkey_lbl 01 `"1"', add
label define bf06a_donkey_lbl 02 `"2"', add
label define bf06a_donkey_lbl 03 `"3"', add
label define bf06a_donkey_lbl 04 `"4"', add
label define bf06a_donkey_lbl 05 `"5"', add
label define bf06a_donkey_lbl 06 `"6"', add
label define bf06a_donkey_lbl 07 `"7"', add
label define bf06a_donkey_lbl 08 `"8"', add
label define bf06a_donkey_lbl 09 `"9+"', add
label define bf06a_donkey_lbl 99 `"Unknown"', add
label values bf06a_donkey bf06a_donkey_lbl

label define bf06a_respresm_lbl 000 `"0"'
label define bf06a_respresm_lbl 001 `"1"', add
label define bf06a_respresm_lbl 002 `"2"', add
label define bf06a_respresm_lbl 003 `"3"', add
label define bf06a_respresm_lbl 004 `"4"', add
label define bf06a_respresm_lbl 005 `"5"', add
label define bf06a_respresm_lbl 006 `"6"', add
label define bf06a_respresm_lbl 007 `"7"', add
label define bf06a_respresm_lbl 008 `"8"', add
label define bf06a_respresm_lbl 009 `"9"', add
label define bf06a_respresm_lbl 010 `"10"', add
label define bf06a_respresm_lbl 011 `"11"', add
label define bf06a_respresm_lbl 012 `"12"', add
label define bf06a_respresm_lbl 013 `"13"', add
label define bf06a_respresm_lbl 014 `"14"', add
label define bf06a_respresm_lbl 015 `"15"', add
label define bf06a_respresm_lbl 016 `"16"', add
label define bf06a_respresm_lbl 017 `"17+"', add
label define bf06a_respresm_lbl 999 `"Unknown"', add
label values bf06a_respresm bf06a_respresm_lbl

label define bf06a_resabsm_lbl 000 `"0"'
label define bf06a_resabsm_lbl 001 `"1"', add
label define bf06a_resabsm_lbl 002 `"2"', add
label define bf06a_resabsm_lbl 003 `"3"', add
label define bf06a_resabsm_lbl 004 `"4"', add
label define bf06a_resabsm_lbl 005 `"5"', add
label define bf06a_resabsm_lbl 006 `"6"', add
label define bf06a_resabsm_lbl 007 `"7+"', add
label define bf06a_resabsm_lbl 999 `"Unknown"', add
label values bf06a_resabsm bf06a_resabsm_lbl

label define bf06a_pamales_lbl 000 `"0"'
label define bf06a_pamales_lbl 001 `"1"', add
label define bf06a_pamales_lbl 002 `"2"', add
label define bf06a_pamales_lbl 003 `"3"', add
label define bf06a_pamales_lbl 004 `"4"', add
label define bf06a_pamales_lbl 005 `"5"', add
label define bf06a_pamales_lbl 006 `"6"', add
label define bf06a_pamales_lbl 007 `"7"', add
label define bf06a_pamales_lbl 008 `"8"', add
label define bf06a_pamales_lbl 009 `"9"', add
label define bf06a_pamales_lbl 010 `"10"', add
label define bf06a_pamales_lbl 011 `"11"', add
label define bf06a_pamales_lbl 012 `"12"', add
label define bf06a_pamales_lbl 013 `"13"', add
label define bf06a_pamales_lbl 014 `"14"', add
label define bf06a_pamales_lbl 015 `"15"', add
label define bf06a_pamales_lbl 016 `"16"', add
label define bf06a_pamales_lbl 017 `"17+"', add
label define bf06a_pamales_lbl 999 `"Unknown"', add
label values bf06a_pamales bf06a_pamales_lbl

label define bf06a_visitmal_lbl 000 `"0"'
label define bf06a_visitmal_lbl 001 `"1"', add
label define bf06a_visitmal_lbl 002 `"2"', add
label define bf06a_visitmal_lbl 003 `"3"', add
label define bf06a_visitmal_lbl 004 `"4"', add
label define bf06a_visitmal_lbl 005 `"5+"', add
label define bf06a_visitmal_lbl 999 `"Unknown"', add
label values bf06a_visitmal bf06a_visitmal_lbl

label define bf06a_totmale_lbl 000 `"0"'
label define bf06a_totmale_lbl 001 `"1"', add
label define bf06a_totmale_lbl 002 `"2"', add
label define bf06a_totmale_lbl 003 `"3"', add
label define bf06a_totmale_lbl 004 `"4"', add
label define bf06a_totmale_lbl 005 `"5"', add
label define bf06a_totmale_lbl 006 `"6"', add
label define bf06a_totmale_lbl 007 `"7"', add
label define bf06a_totmale_lbl 008 `"8"', add
label define bf06a_totmale_lbl 009 `"9"', add
label define bf06a_totmale_lbl 010 `"10"', add
label define bf06a_totmale_lbl 011 `"11"', add
label define bf06a_totmale_lbl 012 `"12"', add
label define bf06a_totmale_lbl 013 `"13"', add
label define bf06a_totmale_lbl 014 `"14"', add
label define bf06a_totmale_lbl 015 `"15"', add
label define bf06a_totmale_lbl 016 `"16"', add
label define bf06a_totmale_lbl 017 `"17+"', add
label define bf06a_totmale_lbl 999 `"Unknown"', add
label values bf06a_totmale bf06a_totmale_lbl

label define bf06a_emigmal_lbl 000 `"0"'
label define bf06a_emigmal_lbl 001 `"1"', add
label define bf06a_emigmal_lbl 002 `"2"', add
label define bf06a_emigmal_lbl 003 `"3"', add
label define bf06a_emigmal_lbl 004 `"4"', add
label define bf06a_emigmal_lbl 005 `"5"', add
label define bf06a_emigmal_lbl 006 `"6"', add
label define bf06a_emigmal_lbl 007 `"7+"', add
label define bf06a_emigmal_lbl 999 `"Unknown"', add
label values bf06a_emigmal bf06a_emigmal_lbl

label define bf06a_respresf_lbl 000 `"0"'
label define bf06a_respresf_lbl 001 `"1"', add
label define bf06a_respresf_lbl 002 `"2"', add
label define bf06a_respresf_lbl 003 `"3"', add
label define bf06a_respresf_lbl 004 `"4"', add
label define bf06a_respresf_lbl 005 `"5"', add
label define bf06a_respresf_lbl 006 `"6"', add
label define bf06a_respresf_lbl 007 `"7"', add
label define bf06a_respresf_lbl 008 `"8"', add
label define bf06a_respresf_lbl 009 `"9"', add
label define bf06a_respresf_lbl 010 `"10"', add
label define bf06a_respresf_lbl 011 `"11"', add
label define bf06a_respresf_lbl 012 `"12"', add
label define bf06a_respresf_lbl 013 `"13"', add
label define bf06a_respresf_lbl 014 `"14"', add
label define bf06a_respresf_lbl 015 `"15"', add
label define bf06a_respresf_lbl 016 `"16"', add
label define bf06a_respresf_lbl 017 `"17"', add
label define bf06a_respresf_lbl 018 `"18"', add
label define bf06a_respresf_lbl 019 `"19"', add
label define bf06a_respresf_lbl 020 `"20+"', add
label define bf06a_respresf_lbl 999 `"Unknown"', add
label values bf06a_respresf bf06a_respresf_lbl

label define bf06a_resabsf_lbl 000 `"0"'
label define bf06a_resabsf_lbl 001 `"1"', add
label define bf06a_resabsf_lbl 002 `"2"', add
label define bf06a_resabsf_lbl 003 `"3"', add
label define bf06a_resabsf_lbl 004 `"4"', add
label define bf06a_resabsf_lbl 005 `"5"', add
label define bf06a_resabsf_lbl 006 `"6"', add
label define bf06a_resabsf_lbl 007 `"7"', add
label define bf06a_resabsf_lbl 008 `"8"', add
label define bf06a_resabsf_lbl 009 `"9+"', add
label define bf06a_resabsf_lbl 999 `"Unknown"', add
label values bf06a_resabsf bf06a_resabsf_lbl

label define bf06a_pafem_lbl 000 `"0"'
label define bf06a_pafem_lbl 001 `"1"', add
label define bf06a_pafem_lbl 002 `"2"', add
label define bf06a_pafem_lbl 003 `"3"', add
label define bf06a_pafem_lbl 004 `"4"', add
label define bf06a_pafem_lbl 005 `"5"', add
label define bf06a_pafem_lbl 006 `"6"', add
label define bf06a_pafem_lbl 007 `"7"', add
label define bf06a_pafem_lbl 008 `"8"', add
label define bf06a_pafem_lbl 009 `"9"', add
label define bf06a_pafem_lbl 010 `"10"', add
label define bf06a_pafem_lbl 011 `"11"', add
label define bf06a_pafem_lbl 012 `"12"', add
label define bf06a_pafem_lbl 013 `"13"', add
label define bf06a_pafem_lbl 014 `"14"', add
label define bf06a_pafem_lbl 015 `"15"', add
label define bf06a_pafem_lbl 016 `"16"', add
label define bf06a_pafem_lbl 017 `"17"', add
label define bf06a_pafem_lbl 018 `"18"', add
label define bf06a_pafem_lbl 019 `"19"', add
label define bf06a_pafem_lbl 020 `"20+"', add
label define bf06a_pafem_lbl 999 `"Unknown"', add
label values bf06a_pafem bf06a_pafem_lbl

label define bf06a_visfem_lbl 000 `"0"'
label define bf06a_visfem_lbl 001 `"1"', add
label define bf06a_visfem_lbl 002 `"2"', add
label define bf06a_visfem_lbl 003 `"3"', add
label define bf06a_visfem_lbl 004 `"4"', add
label define bf06a_visfem_lbl 005 `"5"', add
label define bf06a_visfem_lbl 006 `"6+"', add
label define bf06a_visfem_lbl 999 `"Unknown"', add
label values bf06a_visfem bf06a_visfem_lbl

label define bf06a_totfem_lbl 000 `"0"'
label define bf06a_totfem_lbl 001 `"1"', add
label define bf06a_totfem_lbl 002 `"2"', add
label define bf06a_totfem_lbl 003 `"3"', add
label define bf06a_totfem_lbl 004 `"4"', add
label define bf06a_totfem_lbl 005 `"5"', add
label define bf06a_totfem_lbl 006 `"6"', add
label define bf06a_totfem_lbl 007 `"7"', add
label define bf06a_totfem_lbl 008 `"8"', add
label define bf06a_totfem_lbl 009 `"9"', add
label define bf06a_totfem_lbl 010 `"10"', add
label define bf06a_totfem_lbl 011 `"11"', add
label define bf06a_totfem_lbl 012 `"12"', add
label define bf06a_totfem_lbl 013 `"13"', add
label define bf06a_totfem_lbl 014 `"14"', add
label define bf06a_totfem_lbl 015 `"15"', add
label define bf06a_totfem_lbl 016 `"16"', add
label define bf06a_totfem_lbl 017 `"17"', add
label define bf06a_totfem_lbl 018 `"18"', add
label define bf06a_totfem_lbl 019 `"19"', add
label define bf06a_totfem_lbl 020 `"20"', add
label define bf06a_totfem_lbl 021 `"21+"', add
label define bf06a_totfem_lbl 999 `"Unknown"', add
label values bf06a_totfem bf06a_totfem_lbl

label define bf06a_emigfem_lbl 000 `"0"'
label define bf06a_emigfem_lbl 001 `"1"', add
label define bf06a_emigfem_lbl 002 `"2"', add
label define bf06a_emigfem_lbl 003 `"3"', add
label define bf06a_emigfem_lbl 004 `"4"', add
label define bf06a_emigfem_lbl 005 `"5+"', add
label define bf06a_emigfem_lbl 999 `"Unknown"', add
label values bf06a_emigfem bf06a_emigfem_lbl

label define bf06a_respres_lbl 000 `"0"'
label define bf06a_respres_lbl 001 `"1"', add
label define bf06a_respres_lbl 002 `"2"', add
label define bf06a_respres_lbl 003 `"3"', add
label define bf06a_respres_lbl 004 `"4"', add
label define bf06a_respres_lbl 005 `"5"', add
label define bf06a_respres_lbl 006 `"6"', add
label define bf06a_respres_lbl 007 `"7"', add
label define bf06a_respres_lbl 008 `"8"', add
label define bf06a_respres_lbl 009 `"9"', add
label define bf06a_respres_lbl 010 `"10"', add
label define bf06a_respres_lbl 011 `"11"', add
label define bf06a_respres_lbl 012 `"12"', add
label define bf06a_respres_lbl 013 `"13"', add
label define bf06a_respres_lbl 014 `"14"', add
label define bf06a_respres_lbl 015 `"15"', add
label define bf06a_respres_lbl 016 `"16"', add
label define bf06a_respres_lbl 017 `"17"', add
label define bf06a_respres_lbl 018 `"18"', add
label define bf06a_respres_lbl 019 `"19"', add
label define bf06a_respres_lbl 020 `"20"', add
label define bf06a_respres_lbl 021 `"21"', add
label define bf06a_respres_lbl 022 `"22"', add
label define bf06a_respres_lbl 023 `"23"', add
label define bf06a_respres_lbl 024 `"24"', add
label define bf06a_respres_lbl 025 `"25"', add
label define bf06a_respres_lbl 026 `"26"', add
label define bf06a_respres_lbl 027 `"27"', add
label define bf06a_respres_lbl 028 `"28"', add
label define bf06a_respres_lbl 029 `"29"', add
label define bf06a_respres_lbl 030 `"30"', add
label define bf06a_respres_lbl 031 `"31+"', add
label define bf06a_respres_lbl 999 `"Unknown"', add
label values bf06a_respres bf06a_respres_lbl

label define bf06a_resabs_lbl 000 `"0"'
label define bf06a_resabs_lbl 001 `"1"', add
label define bf06a_resabs_lbl 002 `"2"', add
label define bf06a_resabs_lbl 003 `"3"', add
label define bf06a_resabs_lbl 004 `"4"', add
label define bf06a_resabs_lbl 005 `"5"', add
label define bf06a_resabs_lbl 006 `"6"', add
label define bf06a_resabs_lbl 007 `"7"', add
label define bf06a_resabs_lbl 008 `"8"', add
label define bf06a_resabs_lbl 009 `"9"', add
label define bf06a_resabs_lbl 010 `"10"', add
label define bf06a_resabs_lbl 011 `"11"', add
label define bf06a_resabs_lbl 012 `"12"', add
label define bf06a_resabs_lbl 999 `"Unknown"', add
label values bf06a_resabs bf06a_resabs_lbl

label define bf06a_presabs_lbl 000 `"0"'
label define bf06a_presabs_lbl 001 `"1"', add
label define bf06a_presabs_lbl 002 `"2"', add
label define bf06a_presabs_lbl 003 `"3"', add
label define bf06a_presabs_lbl 004 `"4"', add
label define bf06a_presabs_lbl 005 `"5"', add
label define bf06a_presabs_lbl 006 `"6"', add
label define bf06a_presabs_lbl 007 `"7"', add
label define bf06a_presabs_lbl 008 `"8"', add
label define bf06a_presabs_lbl 009 `"9"', add
label define bf06a_presabs_lbl 010 `"10"', add
label define bf06a_presabs_lbl 011 `"11"', add
label define bf06a_presabs_lbl 012 `"12"', add
label define bf06a_presabs_lbl 013 `"13"', add
label define bf06a_presabs_lbl 014 `"14"', add
label define bf06a_presabs_lbl 015 `"15"', add
label define bf06a_presabs_lbl 016 `"16"', add
label define bf06a_presabs_lbl 017 `"17"', add
label define bf06a_presabs_lbl 018 `"18"', add
label define bf06a_presabs_lbl 019 `"19"', add
label define bf06a_presabs_lbl 020 `"20"', add
label define bf06a_presabs_lbl 021 `"21"', add
label define bf06a_presabs_lbl 022 `"22"', add
label define bf06a_presabs_lbl 023 `"23"', add
label define bf06a_presabs_lbl 024 `"24"', add
label define bf06a_presabs_lbl 025 `"25"', add
label define bf06a_presabs_lbl 026 `"26"', add
label define bf06a_presabs_lbl 027 `"27"', add
label define bf06a_presabs_lbl 028 `"28"', add
label define bf06a_presabs_lbl 029 `"29"', add
label define bf06a_presabs_lbl 030 `"30"', add
label define bf06a_presabs_lbl 031 `"31+"', add
label define bf06a_presabs_lbl 999 `"Unknown"', add
label values bf06a_presabs bf06a_presabs_lbl

label define bf06a_visitors_lbl 000 `"0"'
label define bf06a_visitors_lbl 001 `"1"', add
label define bf06a_visitors_lbl 002 `"2"', add
label define bf06a_visitors_lbl 003 `"3"', add
label define bf06a_visitors_lbl 004 `"4"', add
label define bf06a_visitors_lbl 005 `"5"', add
label define bf06a_visitors_lbl 006 `"6"', add
label define bf06a_visitors_lbl 007 `"7"', add
label define bf06a_visitors_lbl 008 `"8+"', add
label define bf06a_visitors_lbl 999 `"Unknown"', add
label values bf06a_visitors bf06a_visitors_lbl

label define bf06a_emigtot_lbl 000 `"0"'
label define bf06a_emigtot_lbl 001 `"1"', add
label define bf06a_emigtot_lbl 002 `"2"', add
label define bf06a_emigtot_lbl 003 `"3"', add
label define bf06a_emigtot_lbl 004 `"4"', add
label define bf06a_emigtot_lbl 005 `"5"', add
label define bf06a_emigtot_lbl 006 `"6"', add
label define bf06a_emigtot_lbl 007 `"7+"', add
label define bf06a_emigtot_lbl 999 `"Unknown"', add
label values bf06a_emigtot bf06a_emigtot_lbl

label define bf06a_lsquint_lbl 1 `"Poorest"'
label define bf06a_lsquint_lbl 2 `"Poor"', add
label define bf06a_lsquint_lbl 3 `"Middle"', add
label define bf06a_lsquint_lbl 4 `"Rich"', add
label define bf06a_lsquint_lbl 5 `"Richer"', add
label define bf06a_lsquint_lbl 9 `"Unknown"', add
label values bf06a_lsquint bf06a_lsquint_lbl

label define resident_lbl 1 `"Present resident"'
label define resident_lbl 2 `"Absent resident"', add
label define resident_lbl 3 `"Visitor/non-resident"', add
label define resident_lbl 4 `"De facto population (present persons)"', add
label define resident_lbl 9 `"Unknown/missing"', add
label values resident resident_lbl

label define bf06a_pernum_lbl 00 `"Household record"'
label define bf06a_pernum_lbl 01 `"1"', add
label define bf06a_pernum_lbl 02 `"2"', add
label define bf06a_pernum_lbl 03 `"3"', add
label define bf06a_pernum_lbl 04 `"4"', add
label define bf06a_pernum_lbl 05 `"5"', add
label define bf06a_pernum_lbl 06 `"6"', add
label define bf06a_pernum_lbl 07 `"7"', add
label define bf06a_pernum_lbl 08 `"8"', add
label define bf06a_pernum_lbl 09 `"9"', add
label define bf06a_pernum_lbl 10 `"10"', add
label define bf06a_pernum_lbl 11 `"11"', add
label define bf06a_pernum_lbl 12 `"12"', add
label define bf06a_pernum_lbl 13 `"13"', add
label define bf06a_pernum_lbl 14 `"14"', add
label define bf06a_pernum_lbl 15 `"15"', add
label define bf06a_pernum_lbl 16 `"16"', add
label define bf06a_pernum_lbl 17 `"17"', add
label define bf06a_pernum_lbl 18 `"18"', add
label define bf06a_pernum_lbl 19 `"19"', add
label define bf06a_pernum_lbl 20 `"20"', add
label define bf06a_pernum_lbl 21 `"21"', add
label define bf06a_pernum_lbl 22 `"22"', add
label define bf06a_pernum_lbl 23 `"23"', add
label define bf06a_pernum_lbl 24 `"24"', add
label define bf06a_pernum_lbl 25 `"25"', add
label define bf06a_pernum_lbl 26 `"26"', add
label define bf06a_pernum_lbl 27 `"27"', add
label define bf06a_pernum_lbl 28 `"28"', add
label define bf06a_pernum_lbl 29 `"29"', add
label define bf06a_pernum_lbl 30 `"30"', add
label define bf06a_pernum_lbl 31 `"31"', add
label define bf06a_pernum_lbl 32 `"32"', add
label define bf06a_pernum_lbl 33 `"33"', add
label define bf06a_pernum_lbl 34 `"34"', add
label define bf06a_pernum_lbl 35 `"35"', add
label define bf06a_pernum_lbl 36 `"36"', add
label define bf06a_pernum_lbl 37 `"37"', add
label define bf06a_pernum_lbl 38 `"38"', add
label define bf06a_pernum_lbl 39 `"39"', add
label define bf06a_pernum_lbl 40 `"40"', add
label define bf06a_pernum_lbl 41 `"41"', add
label define bf06a_pernum_lbl 42 `"42"', add
label define bf06a_pernum_lbl 43 `"43"', add
label define bf06a_pernum_lbl 44 `"44"', add
label define bf06a_pernum_lbl 45 `"45"', add
label define bf06a_pernum_lbl 46 `"46"', add
label define bf06a_pernum_lbl 47 `"47"', add
label define bf06a_pernum_lbl 48 `"48"', add
label define bf06a_pernum_lbl 49 `"49"', add
label define bf06a_pernum_lbl 50 `"50"', add
label define bf06a_pernum_lbl 51 `"51"', add
label define bf06a_pernum_lbl 52 `"52"', add
label values bf06a_pernum bf06a_pernum_lbl

label define bf06a_sex_lbl 1 `"Male"'
label define bf06a_sex_lbl 2 `"Female"', add
label values bf06a_sex bf06a_sex_lbl

label define bf06a_relate_lbl 01 `"Head of household"'
label define bf06a_relate_lbl 02 `"Spouse"', add
label define bf06a_relate_lbl 03 `"Child"', add
label define bf06a_relate_lbl 04 `"Sibling"', add
label define bf06a_relate_lbl 06 `"Grandchild"', add
label define bf06a_relate_lbl 07 `"Nephew or niece"', add
label define bf06a_relate_lbl 08 `"Uncle or aunt"', add
label define bf06a_relate_lbl 09 `"Other relative"', add
label define bf06a_relate_lbl 10 `"No relation"', add
label define bf06a_relate_lbl 99 `"Unknown"', add
label values bf06a_relate bf06a_relate_lbl

label define bf06a_status_lbl 1 `"Resident, present"'
label define bf06a_status_lbl 2 `"Resident, absent"', add
label define bf06a_status_lbl 3 `"Visitor"', add
label values bf06a_status bf06a_status_lbl

label define bf06a_birthmo_lbl 01 `"January"'
label define bf06a_birthmo_lbl 02 `"February"', add
label define bf06a_birthmo_lbl 03 `"March"', add
label define bf06a_birthmo_lbl 04 `"April"', add
label define bf06a_birthmo_lbl 05 `"May"', add
label define bf06a_birthmo_lbl 06 `"June"', add
label define bf06a_birthmo_lbl 07 `"July"', add
label define bf06a_birthmo_lbl 08 `"August"', add
label define bf06a_birthmo_lbl 09 `"September"', add
label define bf06a_birthmo_lbl 10 `"October"', add
label define bf06a_birthmo_lbl 11 `"November"', add
label define bf06a_birthmo_lbl 12 `"December"', add
label define bf06a_birthmo_lbl 99 `"Unknown"', add
label values bf06a_birthmo bf06a_birthmo_lbl

label define bf06a_birthyr_lbl 1910 `"1910 or earlier"'
label define bf06a_birthyr_lbl 1911 `"1911"', add
label define bf06a_birthyr_lbl 1912 `"1912"', add
label define bf06a_birthyr_lbl 1913 `"1913"', add
label define bf06a_birthyr_lbl 1914 `"1914"', add
label define bf06a_birthyr_lbl 1915 `"1915"', add
label define bf06a_birthyr_lbl 1916 `"1916"', add
label define bf06a_birthyr_lbl 1917 `"1917"', add
label define bf06a_birthyr_lbl 1918 `"1918"', add
label define bf06a_birthyr_lbl 1919 `"1919"', add
label define bf06a_birthyr_lbl 1920 `"1920"', add
label define bf06a_birthyr_lbl 1921 `"1921"', add
label define bf06a_birthyr_lbl 1922 `"1922"', add
label define bf06a_birthyr_lbl 1923 `"1923"', add
label define bf06a_birthyr_lbl 1924 `"1924"', add
label define bf06a_birthyr_lbl 1925 `"1925"', add
label define bf06a_birthyr_lbl 1926 `"1926"', add
label define bf06a_birthyr_lbl 1927 `"1927"', add
label define bf06a_birthyr_lbl 1928 `"1928"', add
label define bf06a_birthyr_lbl 1929 `"1929"', add
label define bf06a_birthyr_lbl 1930 `"1930"', add
label define bf06a_birthyr_lbl 1931 `"1931"', add
label define bf06a_birthyr_lbl 1932 `"1932"', add
label define bf06a_birthyr_lbl 1933 `"1933"', add
label define bf06a_birthyr_lbl 1934 `"1934"', add
label define bf06a_birthyr_lbl 1935 `"1935"', add
label define bf06a_birthyr_lbl 1936 `"1936"', add
label define bf06a_birthyr_lbl 1937 `"1937"', add
label define bf06a_birthyr_lbl 1938 `"1938"', add
label define bf06a_birthyr_lbl 1939 `"1939"', add
label define bf06a_birthyr_lbl 1940 `"1940"', add
label define bf06a_birthyr_lbl 1941 `"1941"', add
label define bf06a_birthyr_lbl 1942 `"1942"', add
label define bf06a_birthyr_lbl 1943 `"1943"', add
label define bf06a_birthyr_lbl 1944 `"1944"', add
label define bf06a_birthyr_lbl 1945 `"1945"', add
label define bf06a_birthyr_lbl 1946 `"1946"', add
label define bf06a_birthyr_lbl 1947 `"1947"', add
label define bf06a_birthyr_lbl 1948 `"1948"', add
label define bf06a_birthyr_lbl 1949 `"1949"', add
label define bf06a_birthyr_lbl 1950 `"1950"', add
label define bf06a_birthyr_lbl 1951 `"1951"', add
label define bf06a_birthyr_lbl 1952 `"1952"', add
label define bf06a_birthyr_lbl 1953 `"1953"', add
label define bf06a_birthyr_lbl 1954 `"1954"', add
label define bf06a_birthyr_lbl 1955 `"1955"', add
label define bf06a_birthyr_lbl 1956 `"1956"', add
label define bf06a_birthyr_lbl 1957 `"1957"', add
label define bf06a_birthyr_lbl 1958 `"1958"', add
label define bf06a_birthyr_lbl 1959 `"1959"', add
label define bf06a_birthyr_lbl 1960 `"1960"', add
label define bf06a_birthyr_lbl 1961 `"1961"', add
label define bf06a_birthyr_lbl 1962 `"1962"', add
label define bf06a_birthyr_lbl 1963 `"1963"', add
label define bf06a_birthyr_lbl 1964 `"1964"', add
label define bf06a_birthyr_lbl 1965 `"1965"', add
label define bf06a_birthyr_lbl 1966 `"1966"', add
label define bf06a_birthyr_lbl 1967 `"1967"', add
label define bf06a_birthyr_lbl 1968 `"1968"', add
label define bf06a_birthyr_lbl 1969 `"1969"', add
label define bf06a_birthyr_lbl 1970 `"1970"', add
label define bf06a_birthyr_lbl 1971 `"1971"', add
label define bf06a_birthyr_lbl 1972 `"1972"', add
label define bf06a_birthyr_lbl 1973 `"1973"', add
label define bf06a_birthyr_lbl 1974 `"1974"', add
label define bf06a_birthyr_lbl 1975 `"1975"', add
label define bf06a_birthyr_lbl 1976 `"1976"', add
label define bf06a_birthyr_lbl 1977 `"1977"', add
label define bf06a_birthyr_lbl 1978 `"1978"', add
label define bf06a_birthyr_lbl 1979 `"1979"', add
label define bf06a_birthyr_lbl 1980 `"1980"', add
label define bf06a_birthyr_lbl 1981 `"1981"', add
label define bf06a_birthyr_lbl 1982 `"1982"', add
label define bf06a_birthyr_lbl 1983 `"1983"', add
label define bf06a_birthyr_lbl 1984 `"1984"', add
label define bf06a_birthyr_lbl 1985 `"1985"', add
label define bf06a_birthyr_lbl 1986 `"1986"', add
label define bf06a_birthyr_lbl 1987 `"1987"', add
label define bf06a_birthyr_lbl 1988 `"1988"', add
label define bf06a_birthyr_lbl 1989 `"1989"', add
label define bf06a_birthyr_lbl 1990 `"1990"', add
label define bf06a_birthyr_lbl 1991 `"1991"', add
label define bf06a_birthyr_lbl 1992 `"1992"', add
label define bf06a_birthyr_lbl 1993 `"1993"', add
label define bf06a_birthyr_lbl 1994 `"1994"', add
label define bf06a_birthyr_lbl 1995 `"1995"', add
label define bf06a_birthyr_lbl 1996 `"1996"', add
label define bf06a_birthyr_lbl 1997 `"1997"', add
label define bf06a_birthyr_lbl 1998 `"1998"', add
label define bf06a_birthyr_lbl 1999 `"1999"', add
label define bf06a_birthyr_lbl 2000 `"2000"', add
label define bf06a_birthyr_lbl 2001 `"2001"', add
label define bf06a_birthyr_lbl 2002 `"2002"', add
label define bf06a_birthyr_lbl 2003 `"2003"', add
label define bf06a_birthyr_lbl 2004 `"2004"', add
label define bf06a_birthyr_lbl 2005 `"2005"', add
label define bf06a_birthyr_lbl 2006 `"2006"', add
label define bf06a_birthyr_lbl 9999 `"Unknown"', add
label values bf06a_birthyr bf06a_birthyr_lbl

label define bf06a_age_lbl 000 `"0"'
label define bf06a_age_lbl 001 `"1"', add
label define bf06a_age_lbl 002 `"2"', add
label define bf06a_age_lbl 003 `"3"', add
label define bf06a_age_lbl 004 `"4"', add
label define bf06a_age_lbl 005 `"5"', add
label define bf06a_age_lbl 006 `"6"', add
label define bf06a_age_lbl 007 `"7"', add
label define bf06a_age_lbl 008 `"8"', add
label define bf06a_age_lbl 009 `"9"', add
label define bf06a_age_lbl 010 `"10"', add
label define bf06a_age_lbl 011 `"11"', add
label define bf06a_age_lbl 012 `"12"', add
label define bf06a_age_lbl 013 `"13"', add
label define bf06a_age_lbl 014 `"14"', add
label define bf06a_age_lbl 015 `"15"', add
label define bf06a_age_lbl 016 `"16"', add
label define bf06a_age_lbl 017 `"17"', add
label define bf06a_age_lbl 018 `"18"', add
label define bf06a_age_lbl 019 `"19"', add
label define bf06a_age_lbl 020 `"20"', add
label define bf06a_age_lbl 021 `"21"', add
label define bf06a_age_lbl 022 `"22"', add
label define bf06a_age_lbl 023 `"23"', add
label define bf06a_age_lbl 024 `"24"', add
label define bf06a_age_lbl 025 `"25"', add
label define bf06a_age_lbl 026 `"26"', add
label define bf06a_age_lbl 027 `"27"', add
label define bf06a_age_lbl 028 `"28"', add
label define bf06a_age_lbl 029 `"29"', add
label define bf06a_age_lbl 030 `"30"', add
label define bf06a_age_lbl 031 `"31"', add
label define bf06a_age_lbl 032 `"32"', add
label define bf06a_age_lbl 033 `"33"', add
label define bf06a_age_lbl 034 `"34"', add
label define bf06a_age_lbl 035 `"35"', add
label define bf06a_age_lbl 036 `"36"', add
label define bf06a_age_lbl 037 `"37"', add
label define bf06a_age_lbl 038 `"38"', add
label define bf06a_age_lbl 039 `"39"', add
label define bf06a_age_lbl 040 `"40"', add
label define bf06a_age_lbl 041 `"41"', add
label define bf06a_age_lbl 042 `"42"', add
label define bf06a_age_lbl 043 `"43"', add
label define bf06a_age_lbl 044 `"44"', add
label define bf06a_age_lbl 045 `"45"', add
label define bf06a_age_lbl 046 `"46"', add
label define bf06a_age_lbl 047 `"47"', add
label define bf06a_age_lbl 048 `"48"', add
label define bf06a_age_lbl 049 `"49"', add
label define bf06a_age_lbl 050 `"50"', add
label define bf06a_age_lbl 051 `"51"', add
label define bf06a_age_lbl 052 `"52"', add
label define bf06a_age_lbl 053 `"53"', add
label define bf06a_age_lbl 054 `"54"', add
label define bf06a_age_lbl 055 `"55"', add
label define bf06a_age_lbl 056 `"56"', add
label define bf06a_age_lbl 057 `"57"', add
label define bf06a_age_lbl 058 `"58"', add
label define bf06a_age_lbl 059 `"59"', add
label define bf06a_age_lbl 060 `"60"', add
label define bf06a_age_lbl 061 `"61"', add
label define bf06a_age_lbl 062 `"62"', add
label define bf06a_age_lbl 063 `"63"', add
label define bf06a_age_lbl 064 `"64"', add
label define bf06a_age_lbl 065 `"65"', add
label define bf06a_age_lbl 066 `"66"', add
label define bf06a_age_lbl 067 `"67"', add
label define bf06a_age_lbl 068 `"68"', add
label define bf06a_age_lbl 069 `"69"', add
label define bf06a_age_lbl 070 `"70"', add
label define bf06a_age_lbl 071 `"71"', add
label define bf06a_age_lbl 072 `"72"', add
label define bf06a_age_lbl 073 `"73"', add
label define bf06a_age_lbl 074 `"74"', add
label define bf06a_age_lbl 075 `"75"', add
label define bf06a_age_lbl 076 `"76"', add
label define bf06a_age_lbl 077 `"77"', add
label define bf06a_age_lbl 078 `"78"', add
label define bf06a_age_lbl 079 `"79"', add
label define bf06a_age_lbl 080 `"80"', add
label define bf06a_age_lbl 081 `"81"', add
label define bf06a_age_lbl 082 `"82"', add
label define bf06a_age_lbl 083 `"83"', add
label define bf06a_age_lbl 084 `"84"', add
label define bf06a_age_lbl 085 `"85"', add
label define bf06a_age_lbl 086 `"86"', add
label define bf06a_age_lbl 087 `"87"', add
label define bf06a_age_lbl 088 `"88"', add
label define bf06a_age_lbl 089 `"89"', add
label define bf06a_age_lbl 090 `"90"', add
label define bf06a_age_lbl 091 `"91"', add
label define bf06a_age_lbl 092 `"92"', add
label define bf06a_age_lbl 093 `"93"', add
label define bf06a_age_lbl 094 `"94"', add
label define bf06a_age_lbl 095 `"95"', add
label define bf06a_age_lbl 096 `"96"', add
label define bf06a_age_lbl 097 `"97"', add
label define bf06a_age_lbl 098 `"98"', add
label define bf06a_age_lbl 999 `"Unknown"', add
label values bf06a_age bf06a_age_lbl

label define bf06a_bircert_lbl 1 `"Yes"'
label define bf06a_bircert_lbl 2 `"No"', add
label define bf06a_bircert_lbl 3 `"Respondent did not know"', add
label define bf06a_bircert_lbl 9 `"Unknown"', add
label values bf06a_bircert bf06a_bircert_lbl

label define bf06a_bpl_lbl 01 `"Burkina Faso"'
label define bf06a_bpl_lbl 02 `"Benin"', add
label define bf06a_bpl_lbl 03 `"Cameroon"', add
label define bf06a_bpl_lbl 05 `"Congo"', add
label define bf06a_bpl_lbl 06 `"Ivory Coast"', add
label define bf06a_bpl_lbl 07 `"Gabon"', add
label define bf06a_bpl_lbl 09 `"Ghana"', add
label define bf06a_bpl_lbl 10 `"Guinea Bissau"', add
label define bf06a_bpl_lbl 11 `"Guinea"', add
label define bf06a_bpl_lbl 12 `"Liberia"', add
label define bf06a_bpl_lbl 13 `"Mali"', add
label define bf06a_bpl_lbl 14 `"Mauritania"', add
label define bf06a_bpl_lbl 15 `"Niger"', add
label define bf06a_bpl_lbl 16 `"Nigeria"', add
label define bf06a_bpl_lbl 18 `"Senegal"', add
label define bf06a_bpl_lbl 21 `"Chad"', add
label define bf06a_bpl_lbl 22 `"Togo"', add
label define bf06a_bpl_lbl 23 `"Other African countries"', add
label define bf06a_bpl_lbl 24 `"America"', add
label define bf06a_bpl_lbl 25 `"Asia and Oceania"', add
label define bf06a_bpl_lbl 26 `"Europe"', add
label define bf06a_bpl_lbl 99 `"Born abroad, unknown country"', add
label values bf06a_bpl bf06a_bpl_lbl

label define bf06a_bplprov_lbl 01 `"Bam"'
label define bf06a_bplprov_lbl 02 `"Bazega"', add
label define bf06a_bplprov_lbl 03 `"Bougouriba"', add
label define bf06a_bplprov_lbl 04 `"Boulgou"', add
label define bf06a_bplprov_lbl 05 `"Boulkiemde"', add
label define bf06a_bplprov_lbl 06 `"Comoe"', add
label define bf06a_bplprov_lbl 07 `"Ganzourgou"', add
label define bf06a_bplprov_lbl 08 `"Gnagna"', add
label define bf06a_bplprov_lbl 09 `"Gourma"', add
label define bf06a_bplprov_lbl 10 `"Houet"', add
label define bf06a_bplprov_lbl 11 `"Kadiogo"', add
label define bf06a_bplprov_lbl 12 `"Kenedougou"', add
label define bf06a_bplprov_lbl 13 `"Kossi"', add
label define bf06a_bplprov_lbl 14 `"Kouritenga"', add
label define bf06a_bplprov_lbl 15 `"Mouhoun"', add
label define bf06a_bplprov_lbl 16 `"Nahouri"', add
label define bf06a_bplprov_lbl 17 `"Namentenga"', add
label define bf06a_bplprov_lbl 18 `"Oubritenga"', add
label define bf06a_bplprov_lbl 19 `"Oudalan"', add
label define bf06a_bplprov_lbl 20 `"Passore"', add
label define bf06a_bplprov_lbl 21 `"Poni"', add
label define bf06a_bplprov_lbl 22 `"Sanguie"', add
label define bf06a_bplprov_lbl 23 `"Sanmatenga"', add
label define bf06a_bplprov_lbl 24 `"Seno"', add
label define bf06a_bplprov_lbl 25 `"Sissili"', add
label define bf06a_bplprov_lbl 26 `"Soum"', add
label define bf06a_bplprov_lbl 27 `"Sourou"', add
label define bf06a_bplprov_lbl 28 `"Tapoa"', add
label define bf06a_bplprov_lbl 29 `"Yatenga"', add
label define bf06a_bplprov_lbl 30 `"Zoundweogo"', add
label define bf06a_bplprov_lbl 31 `"Bale"', add
label define bf06a_bplprov_lbl 32 `"Banwa"', add
label define bf06a_bplprov_lbl 33 `"Ioba"', add
label define bf06a_bplprov_lbl 34 `"Komandjoari"', add
label define bf06a_bplprov_lbl 35 `"Kompienga"', add
label define bf06a_bplprov_lbl 36 `"Koulpelogo"', add
label define bf06a_bplprov_lbl 37 `"Kourweogo"', add
label define bf06a_bplprov_lbl 38 `"Leraba"', add
label define bf06a_bplprov_lbl 39 `"Loroum"', add
label define bf06a_bplprov_lbl 40 `"Nayala"', add
label define bf06a_bplprov_lbl 41 `"Noumbiel"', add
label define bf06a_bplprov_lbl 42 `"Tuy"', add
label define bf06a_bplprov_lbl 43 `"Yagha"', add
label define bf06a_bplprov_lbl 44 `"Ziro"', add
label define bf06a_bplprov_lbl 45 `"Zondoma"', add
label define bf06a_bplprov_lbl 98 `"Unknown"', add
label define bf06a_bplprov_lbl 99 `"NIU (not in universe)"', add
label values bf06a_bplprov bf06a_bplprov_lbl

label define bf06a_bplcomm_lbl 0101 `"Bourzanga"'
label define bf06a_bplcomm_lbl 0102 `"Guibare"', add
label define bf06a_bplcomm_lbl 0104 `"Nassere"', add
label define bf06a_bplcomm_lbl 0105 `"Rollo"', add
label define bf06a_bplcomm_lbl 0106 `"Rouko"', add
label define bf06a_bplcomm_lbl 0107 `"Sabce"', add
label define bf06a_bplcomm_lbl 0108 `"Tikare"', add
label define bf06a_bplcomm_lbl 0109 `"Zimtenga"', add
label define bf06a_bplcomm_lbl 0199 `"Bam, unknown or other commune/arrondissement"', add
label define bf06a_bplcomm_lbl 0201 `"Doulougou"', add
label define bf06a_bplcomm_lbl 0202 `"Gaongo"', add
label define bf06a_bplcomm_lbl 0203 `"Ipelce"', add
label define bf06a_bplcomm_lbl 0204 `"Kayao"', add
label define bf06a_bplcomm_lbl 0205 `"Kombissiri"', add
label define bf06a_bplcomm_lbl 0206 `"Sapone"', add
label define bf06a_bplcomm_lbl 0207 `"Toece"', add
label define bf06a_bplcomm_lbl 0299 `"Bazega, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 0301 `"Bondigui"', add
label define bf06a_bplcomm_lbl 0302 `"Diebougou"', add
label define bf06a_bplcomm_lbl 0303 `"Dolo"', add
label define bf06a_bplcomm_lbl 0304 `"Iolonioro"', add
label define bf06a_bplcomm_lbl 0305 `"Tiankoura"', add
label define bf06a_bplcomm_lbl 0399 `"Bougouriba, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 0401 `"Bagre"', add
label define bf06a_bplcomm_lbl 0402 `"Bane"', add
label define bf06a_bplcomm_lbl 0403 `"Beguedo"', add
label define bf06a_bplcomm_lbl 0404 `"Bissiga"', add
label define bf06a_bplcomm_lbl 0405 `"Bittou"', add
label define bf06a_bplcomm_lbl 0406 `"Boussouma"', add
label define bf06a_bplcomm_lbl 0407 `"Garango"', add
label define bf06a_bplcomm_lbl 0408 `"Komtoega"', add
label define bf06a_bplcomm_lbl 0409 `"Naiogo"', add
label define bf06a_bplcomm_lbl 0410 `"Tenkodogo"', add
label define bf06a_bplcomm_lbl 0411 `"Zabre"', add
label define bf06a_bplcomm_lbl 0412 `"Zoago"', add
label define bf06a_bplcomm_lbl 0413 `"Zonse"', add
label define bf06a_bplcomm_lbl 0499 `"Boulgou, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 0501 `"Bingo"', add
label define bf06a_bplcomm_lbl 0502 `"Imasgo"', add
label define bf06a_bplcomm_lbl 0503 `"Kindi"', add
label define bf06a_bplcomm_lbl 0504 `"Kokologho"', add
label define bf06a_bplcomm_lbl 0505 `"Koudougou"', add
label define bf06a_bplcomm_lbl 0506 `"Nandiala"', add
label define bf06a_bplcomm_lbl 0507 `"Nanoro"', add
label define bf06a_bplcomm_lbl 0508 `"Pella"', add
label define bf06a_bplcomm_lbl 0509 `"Poa"', add
label define bf06a_bplcomm_lbl 0510 `"Ramongo"', add
label define bf06a_bplcomm_lbl 0511 `"Sabou"', add
label define bf06a_bplcomm_lbl 0512 `"Sigle"', add
label define bf06a_bplcomm_lbl 0513 `"Soaw"', add
label define bf06a_bplcomm_lbl 0514 `"Sourgou"', add
label define bf06a_bplcomm_lbl 0515 `"Thyou"', add
label define bf06a_bplcomm_lbl 0599 `"Boukiemde, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 0601 `"Banfora"', add
label define bf06a_bplcomm_lbl 0602 `"Beregadougo"', add
label define bf06a_bplcomm_lbl 0603 `"Mangodara"', add
label define bf06a_bplcomm_lbl 0604 `"Moussodougou"', add
label define bf06a_bplcomm_lbl 0605 `"Niangoloko"', add
label define bf06a_bplcomm_lbl 0606 `"Ouo"', add
label define bf06a_bplcomm_lbl 0607 `"Sideradougou"', add
label define bf06a_bplcomm_lbl 0608 `"Soubakaniedougou"', add
label define bf06a_bplcomm_lbl 0609 `"Tiefora"', add
label define bf06a_bplcomm_lbl 0699 `"Comoe, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 0701 `"Boudry"', add
label define bf06a_bplcomm_lbl 0702 `"Kogho"', add
label define bf06a_bplcomm_lbl 0703 `"Meguet"', add
label define bf06a_bplcomm_lbl 0704 `"Mogtedo"', add
label define bf06a_bplcomm_lbl 0705 `"Salogo"', add
label define bf06a_bplcomm_lbl 0706 `"Zam"', add
label define bf06a_bplcomm_lbl 0707 `"Zorgho"', add
label define bf06a_bplcomm_lbl 0708 `"Zoungou"', add
label define bf06a_bplcomm_lbl 0799 `"Ganzourgou, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 0801 `"Bilanga"', add
label define bf06a_bplcomm_lbl 0802 `"Bogande"', add
label define bf06a_bplcomm_lbl 0803 `"Coalla"', add
label define bf06a_bplcomm_lbl 0804 `"Liptougou"', add
label define bf06a_bplcomm_lbl 0805 `"Mani"', add
label define bf06a_bplcomm_lbl 0806 `"Piela"', add
label define bf06a_bplcomm_lbl 0807 `"Thion"', add
label define bf06a_bplcomm_lbl 0899 `"Gnagna, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 0901 `"Diabo"', add
label define bf06a_bplcomm_lbl 0902 `"Diapangou"', add
label define bf06a_bplcomm_lbl 0903 `"Fada N'Gourma"', add
label define bf06a_bplcomm_lbl 0904 `"Matiacoali"', add
label define bf06a_bplcomm_lbl 0905 `"Tibga"', add
label define bf06a_bplcomm_lbl 0906 `"Yamba"', add
label define bf06a_bplcomm_lbl 0999 `"Gourma, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 1001 `"Bama"', add
label define bf06a_bplcomm_lbl 1002 `"Dande"', add
label define bf06a_bplcomm_lbl 1003 `"Faramana"', add
label define bf06a_bplcomm_lbl 1004 `"Fo"', add
label define bf06a_bplcomm_lbl 1005 `"Karankasso-Sambla"', add
label define bf06a_bplcomm_lbl 1006 `"Karankasso-Vigue"', add
label define bf06a_bplcomm_lbl 1007 `"Koundougou"', add
label define bf06a_bplcomm_lbl 1008 `"Sena"', add
label define bf06a_bplcomm_lbl 1009 `"Padema"', add
label define bf06a_bplcomm_lbl 1010 `"Peni"', add
label define bf06a_bplcomm_lbl 1011 `"Satiri"', add
label define bf06a_bplcomm_lbl 1012 `"Toussiana"', add
label define bf06a_bplcomm_lbl 1013 `"Bobo-Dioulasso (Rural)"', add
label define bf06a_bplcomm_lbl 1091 `"Dafra (arrondissement)"', add
label define bf06a_bplcomm_lbl 1099 `"Houet, unknown or other commune/arrondissement"', add
label define bf06a_bplcomm_lbl 1101 `"Komki-Ipala"', add
label define bf06a_bplcomm_lbl 1102 `"Komsilga"', add
label define bf06a_bplcomm_lbl 1103 `"Koubri"', add
label define bf06a_bplcomm_lbl 1104 `"Pabre"', add
label define bf06a_bplcomm_lbl 1105 `"Saaba"', add
label define bf06a_bplcomm_lbl 1106 `"Tanghin-Dassouri"', add
label define bf06a_bplcomm_lbl 1191 `"Baskuy (arrondissement)"', add
label define bf06a_bplcomm_lbl 1192 `"Bogodogo (arrondissement)"', add
label define bf06a_bplcomm_lbl 1193 `"Boulmiougou (arrondissement)"', add
label define bf06a_bplcomm_lbl 1194 `"Nongremassom (arrondissement)"', add
label define bf06a_bplcomm_lbl 1195 `"Sig-Noghin (arrondissement)"', add
label define bf06a_bplcomm_lbl 1199 `"Kadiogo, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 1201 `"Banzon"', add
label define bf06a_bplcomm_lbl 1202 `"Djigouera"', add
label define bf06a_bplcomm_lbl 1203 `"Kangala"', add
label define bf06a_bplcomm_lbl 1204 `"Kayan"', add
label define bf06a_bplcomm_lbl 1205 `"Koloko"', add
label define bf06a_bplcomm_lbl 1206 `"Kourinion"', add
label define bf06a_bplcomm_lbl 1207 `"Kourouma"', add
label define bf06a_bplcomm_lbl 1208 `"Morolaba"', add
label define bf06a_bplcomm_lbl 1209 `"N'Dorola"', add
label define bf06a_bplcomm_lbl 1210 `"Orodara"', add
label define bf06a_bplcomm_lbl 1211 `"Samogohiri"', add
label define bf06a_bplcomm_lbl 1212 `"Samorogouan"', add
label define bf06a_bplcomm_lbl 1213 `"Sindo"', add
label define bf06a_bplcomm_lbl 1299 `"Kenedougou, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 1301 `"Barani"', add
label define bf06a_bplcomm_lbl 1302 `"Bomborokuy"', add
label define bf06a_bplcomm_lbl 1303 `"Bourasso"', add
label define bf06a_bplcomm_lbl 1304 `"Djibasso"', add
label define bf06a_bplcomm_lbl 1305 `"Dokuy"', add
label define bf06a_bplcomm_lbl 1306 `"Doubala"', add
label define bf06a_bplcomm_lbl 1307 `"Kobori"', add
label define bf06a_bplcomm_lbl 1308 `"Madouba"', add
label define bf06a_bplcomm_lbl 1309 `"Nouna"', add
label define bf06a_bplcomm_lbl 1310 `"Sono"', add
label define bf06a_bplcomm_lbl 1399 `"Kossi, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 1401 `"Andemtenga"', add
label define bf06a_bplcomm_lbl 1402 `"Basoure"', add
label define bf06a_bplcomm_lbl 1403 `"Dialgaye"', add
label define bf06a_bplcomm_lbl 1404 `"Goughin"', add
label define bf06a_bplcomm_lbl 1405 `"Cando"', add
label define bf06a_bplcomm_lbl 1406 `"Koupela"', add
label define bf06a_bplcomm_lbl 1408 `"Tensobentenga"', add
label define bf06a_bplcomm_lbl 1409 `"Yargo"', add
label define bf06a_bplcomm_lbl 1499 `"[missing name"', add
label define bf06a_bplcomm_lbl 1501 `"Bondokuy"', add
label define bf06a_bplcomm_lbl 1502 `"Dedougou"', add
label define bf06a_bplcomm_lbl 1503 `"Douroula"', add
label define bf06a_bplcomm_lbl 1504 `"Kona"', add
label define bf06a_bplcomm_lbl 1505 `"Ourakoye"', add
label define bf06a_bplcomm_lbl 1506 `"Safane"', add
label define bf06a_bplcomm_lbl 1507 `"Tcheriba"', add
label define bf06a_bplcomm_lbl 1599 `"Mouhoun, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 1601 `"Guiaro"', add
label define bf06a_bplcomm_lbl 1603 `"Tiebele"', add
label define bf06a_bplcomm_lbl 1604 `"Zecco"', add
label define bf06a_bplcomm_lbl 1605 `"Ziou"', add
label define bf06a_bplcomm_lbl 1699 `"[missing name-GF]"', add
label define bf06a_bplcomm_lbl 1701 `"Boala"', add
label define bf06a_bplcomm_lbl 1702 `"Boulsa"', add
label define bf06a_bplcomm_lbl 1703 `"Boroum"', add
label define bf06a_bplcomm_lbl 1704 `"Dargo"', add
label define bf06a_bplcomm_lbl 1705 `"Nagbingou"', add
label define bf06a_bplcomm_lbl 1706 `"Tougouri"', add
label define bf06a_bplcomm_lbl 1707 `"Yalgo"', add
label define bf06a_bplcomm_lbl 1708 `"Zeguedeguin"', add
label define bf06a_bplcomm_lbl 1799 `"Namentenga, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 1801 `"Absouya"', add
label define bf06a_bplcomm_lbl 1802 `"Dapelogo"', add
label define bf06a_bplcomm_lbl 1803 `"Loumbila"', add
label define bf06a_bplcomm_lbl 1804 `"Nagreongo"', add
label define bf06a_bplcomm_lbl 1805 `"Ourgou-Manega"', add
label define bf06a_bplcomm_lbl 1806 `"Ziniare"', add
label define bf06a_bplcomm_lbl 1807 `"Zitenga"', add
label define bf06a_bplcomm_lbl 1899 `"Oubritenga, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 1901 `"Deou"', add
label define bf06a_bplcomm_lbl 1902 `"Gorom-Gorom"', add
label define bf06a_bplcomm_lbl 1903 `"Markoye"', add
label define bf06a_bplcomm_lbl 1904 `"Oursi"', add
label define bf06a_bplcomm_lbl 1905 `"Tin-Akoff"', add
label define bf06a_bplcomm_lbl 1999 `"Oudalan, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 2001 `"Arbole"', add
label define bf06a_bplcomm_lbl 2002 `"Bargare"', add
label define bf06a_bplcomm_lbl 2003 `"Bokin"', add
label define bf06a_bplcomm_lbl 2004 `"Gomponsom"', add
label define bf06a_bplcomm_lbl 2005 `"Kirsi"', add
label define bf06a_bplcomm_lbl 2006 `"La-Todin"', add
label define bf06a_bplcomm_lbl 2007 `"Pilimpikou"', add
label define bf06a_bplcomm_lbl 2008 `"Samba"', add
label define bf06a_bplcomm_lbl 2009 `"Yako"', add
label define bf06a_bplcomm_lbl 2099 `"Passore, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 2101 `"Bouroum-Bouroum"', add
label define bf06a_bplcomm_lbl 2102 `"Boussera"', add
label define bf06a_bplcomm_lbl 2103 `"Djigoue"', add
label define bf06a_bplcomm_lbl 2105 `"Gomblora"', add
label define bf06a_bplcomm_lbl 2106 `"Kampti"', add
label define bf06a_bplcomm_lbl 2107 `"Loropeni"', add
label define bf06a_bplcomm_lbl 2108 `"Malba"', add
label define bf06a_bplcomm_lbl 2109 `"Nako"', add
label define bf06a_bplcomm_lbl 2110 `"Pergban"', add
label define bf06a_bplcomm_lbl 2199 `"Poni, unknown or othercommune/arrondissement"', add
label define bf06a_bplcomm_lbl 2201 `"Dassa"', add
label define bf06a_bplcomm_lbl 2202 `"Didyr"', add
label define bf06a_bplcomm_lbl 2203 `"Godyr"', add
label define bf06a_bplcomm_lbl 2204 `"Kordie"', add
label define bf06a_bplcomm_lbl 2205 `"Kyon"', add
label define bf06a_bplcomm_lbl 2206 `"Pouni"', add
label define bf06a_bplcomm_lbl 2207 `"Reo"', add
label define bf06a_bplcomm_lbl 2208 `"Tenado"', add
label define bf06a_bplcomm_lbl 2209 `"Zamo"', add
label define bf06a_bplcomm_lbl 2210 `"Zawara"', add
label define bf06a_bplcomm_lbl 2299 `"Sanguie, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 2301 `"Barsalogho"', add
label define bf06a_bplcomm_lbl 2302 `"Boussouma"', add
label define bf06a_bplcomm_lbl 2303 `"Dablo"', add
label define bf06a_bplcomm_lbl 2304 `"Kaya"', add
label define bf06a_bplcomm_lbl 2305 `"Korsimoro"', add
label define bf06a_bplcomm_lbl 2306 `"Mane"', add
label define bf06a_bplcomm_lbl 2307 `"Namissiguima"', add
label define bf06a_bplcomm_lbl 2308 `"Pensa"', add
label define bf06a_bplcomm_lbl 2309 `"Pibaore"', add
label define bf06a_bplcomm_lbl 2310 `"Pissila"', add
label define bf06a_bplcomm_lbl 2311 `"Ziga"', add
label define bf06a_bplcomm_lbl 2399 `"Sanmatenga, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 2401 `"Bani"', add
label define bf06a_bplcomm_lbl 2402 `"Dori"', add
label define bf06a_bplcomm_lbl 2403 `"Falagountou"', add
label define bf06a_bplcomm_lbl 2404 `"Gorgadji"', add
label define bf06a_bplcomm_lbl 2405 `"Sampelga"', add
label define bf06a_bplcomm_lbl 2406 `"Seytenga"', add
label define bf06a_bplcomm_lbl 2499 `"Seno, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 2501 `"Bieha"', add
label define bf06a_bplcomm_lbl 2502 `"Bourasso"', add
label define bf06a_bplcomm_lbl 2503 `"Leo"', add
label define bf06a_bplcomm_lbl 2504 `"Nebielianayou"', add
label define bf06a_bplcomm_lbl 2505 `"Niabouri"', add
label define bf06a_bplcomm_lbl 2506 `"Silly"', add
label define bf06a_bplcomm_lbl 2507 `"To"', add
label define bf06a_bplcomm_lbl 2591 `"Sissili, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 2599 `"[missing name GF"', add
label define bf06a_bplcomm_lbl 2601 `"Aribinda"', add
label define bf06a_bplcomm_lbl 2602 `"Baraboule"', add
label define bf06a_bplcomm_lbl 2603 `"Diguel"', add
label define bf06a_bplcomm_lbl 2604 `"Djibo"', add
label define bf06a_bplcomm_lbl 2605 `"Kelbo"', add
label define bf06a_bplcomm_lbl 2606 `"Koutougou"', add
label define bf06a_bplcomm_lbl 2607 `"Nassoubmou"', add
label define bf06a_bplcomm_lbl 2608 `"Pobe-Mengao"', add
label define bf06a_bplcomm_lbl 2609 `"Tongomayel"', add
label define bf06a_bplcomm_lbl 2699 `"Soum, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 2701 `"Di"', add
label define bf06a_bplcomm_lbl 2702 `"Gomboro"', add
label define bf06a_bplcomm_lbl 2703 `"Kassoum"', add
label define bf06a_bplcomm_lbl 2704 `"Kiembara"', add
label define bf06a_bplcomm_lbl 2705 `"Lanfiera"', add
label define bf06a_bplcomm_lbl 2706 `"Kankoue"', add
label define bf06a_bplcomm_lbl 2707 `"Toeni"', add
label define bf06a_bplcomm_lbl 2708 `"Tougan"', add
label define bf06a_bplcomm_lbl 2799 `"Sourou, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 2801 `"Botou"', add
label define bf06a_bplcomm_lbl 2802 `"Diapaga"', add
label define bf06a_bplcomm_lbl 2803 `"Kantchari"', add
label define bf06a_bplcomm_lbl 2804 `"Logobou"', add
label define bf06a_bplcomm_lbl 2805 `"Namounou"', add
label define bf06a_bplcomm_lbl 2806 `"Partiaga"', add
label define bf06a_bplcomm_lbl 2807 `"Tambaga"', add
label define bf06a_bplcomm_lbl 2808 `"Tansarga"', add
label define bf06a_bplcomm_lbl 2899 `"Tapoa, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 2901 `"Bargare"', add
label define bf06a_bplcomm_lbl 2902 `"Kain"', add
label define bf06a_bplcomm_lbl 2903 `"Kalsaka"', add
label define bf06a_bplcomm_lbl 2904 `"Kossouka"', add
label define bf06a_bplcomm_lbl 2905 `"Koubri"', add
label define bf06a_bplcomm_lbl 2906 `"Namissiguima"', add
label define bf06a_bplcomm_lbl 2907 `"Ouahigouya"', add
label define bf06a_bplcomm_lbl 2908 `"Oula"', add
label define bf06a_bplcomm_lbl 2909 `"Rambo"', add
label define bf06a_bplcomm_lbl 2910 `"Seguenega"', add
label define bf06a_bplcomm_lbl 2911 `"Tangaye"', add
label define bf06a_bplcomm_lbl 2912 `"Thiou"', add
label define bf06a_bplcomm_lbl 2913 `"Zogore"', add
label define bf06a_bplcomm_lbl 2999 `"Yatenga, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 3001 `"Beregadougo"', add
label define bf06a_bplcomm_lbl 3002 `"Binde"', add
label define bf06a_bplcomm_lbl 3003 `"Gogo"', add
label define bf06a_bplcomm_lbl 3004 `"Gomboussougou"', add
label define bf06a_bplcomm_lbl 3005 `"Guibare"', add
label define bf06a_bplcomm_lbl 3006 `"Manga"', add
label define bf06a_bplcomm_lbl 3007 `"Nobere"', add
label define bf06a_bplcomm_lbl 3099 `"Zoundweogo, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 3101 `"Bagassi"', add
label define bf06a_bplcomm_lbl 3102 `"Bana"', add
label define bf06a_bplcomm_lbl 3103 `"Boromo"', add
label define bf06a_bplcomm_lbl 3104 `"Fara"', add
label define bf06a_bplcomm_lbl 3105 `"Oury"', add
label define bf06a_bplcomm_lbl 3106 `"Pa"', add
label define bf06a_bplcomm_lbl 3107 `"Pompoi"', add
label define bf06a_bplcomm_lbl 3108 `"Poura"', add
label define bf06a_bplcomm_lbl 3109 `"Siby"', add
label define bf06a_bplcomm_lbl 3110 `"Yaho"', add
label define bf06a_bplcomm_lbl 3199 `"Bale, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 3201 `"Balave"', add
label define bf06a_bplcomm_lbl 3202 `"Kouka"', add
label define bf06a_bplcomm_lbl 3203 `"Sami"', add
label define bf06a_bplcomm_lbl 3204 `"Sanaba"', add
label define bf06a_bplcomm_lbl 3205 `"Solenzo"', add
label define bf06a_bplcomm_lbl 3206 `"Tansila"', add
label define bf06a_bplcomm_lbl 3299 `"Banwa, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 3301 `"Dano"', add
label define bf06a_bplcomm_lbl 3302 `"Dissin"', add
label define bf06a_bplcomm_lbl 3303 `"Gueguere"', add
label define bf06a_bplcomm_lbl 3304 `"Koper"', add
label define bf06a_bplcomm_lbl 3305 `"Niego"', add
label define bf06a_bplcomm_lbl 3306 `"Oronkua"', add
label define bf06a_bplcomm_lbl 3307 `"Ouessa"', add
label define bf06a_bplcomm_lbl 3308 `"Zambo"', add
label define bf06a_bplcomm_lbl 3399 `"Ioba, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 3401 `"Bartiebougou"', add
label define bf06a_bplcomm_lbl 3402 `"Foutouri"', add
label define bf06a_bplcomm_lbl 3403 `"Gayeri"', add
label define bf06a_bplcomm_lbl 3499 `"Komandjoari, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 3501 `"Kompienga"', add
label define bf06a_bplcomm_lbl 3502 `"Madjoari"', add
label define bf06a_bplcomm_lbl 3503 `"Pama"', add
label define bf06a_bplcomm_lbl 3599 `"Kompienga, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 3601 `"Comin-Yanga"', add
label define bf06a_bplcomm_lbl 3602 `"Dourtenga"', add
label define bf06a_bplcomm_lbl 3603 `"Lalgaye"', add
label define bf06a_bplcomm_lbl 3604 `"Ouargaye"', add
label define bf06a_bplcomm_lbl 3605 `"Sanga"', add
label define bf06a_bplcomm_lbl 3606 `"Soudougui"', add
label define bf06a_bplcomm_lbl 3607 `"Yargatenga"', add
label define bf06a_bplcomm_lbl 3608 `"Yonde"', add
label define bf06a_bplcomm_lbl 3699 `"Koulpelogo, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 3701 `"Bousse"', add
label define bf06a_bplcomm_lbl 3702 `"Laye"', add
label define bf06a_bplcomm_lbl 3703 `"Niou"', add
label define bf06a_bplcomm_lbl 3704 `"Sourgoubila"', add
label define bf06a_bplcomm_lbl 3705 `"Toeghin"', add
label define bf06a_bplcomm_lbl 3799 `"Kourweogo, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 3801 `"Dakoro"', add
label define bf06a_bplcomm_lbl 3802 `"Douna"', add
label define bf06a_bplcomm_lbl 3803 `"Kankalaba"', add
label define bf06a_bplcomm_lbl 3804 `"Loumana"', add
label define bf06a_bplcomm_lbl 3805 `"Niankorodougou"', add
label define bf06a_bplcomm_lbl 3806 `"Oueleni"', add
label define bf06a_bplcomm_lbl 3807 `"Sindou"', add
label define bf06a_bplcomm_lbl 3808 `"Wolonkoto"', add
label define bf06a_bplcomm_lbl 3899 `"Leraba, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 3901 `"Banh"', add
label define bf06a_bplcomm_lbl 3902 `"Ouindigui"', add
label define bf06a_bplcomm_lbl 3903 `"Solle"', add
label define bf06a_bplcomm_lbl 3904 `"Titao"', add
label define bf06a_bplcomm_lbl 3999 `"Loroum, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 4001 `"Gassan"', add
label define bf06a_bplcomm_lbl 4002 `"Gossina"', add
label define bf06a_bplcomm_lbl 4003 `"Kougny"', add
label define bf06a_bplcomm_lbl 4004 `"Toma"', add
label define bf06a_bplcomm_lbl 4005 `"Yaba"', add
label define bf06a_bplcomm_lbl 4006 `"Ye"', add
label define bf06a_bplcomm_lbl 4099 `"Nayala, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 4101 `"Batie"', add
label define bf06a_bplcomm_lbl 4102 `"Boussoukoula"', add
label define bf06a_bplcomm_lbl 4103 `"Kpuere"', add
label define bf06a_bplcomm_lbl 4104 `"Legmoin"', add
label define bf06a_bplcomm_lbl 4105 `"Midebdo"', add
label define bf06a_bplcomm_lbl 4199 `"Noumbiel, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 4201 `"Bekuy"', add
label define bf06a_bplcomm_lbl 4202 `"Bereba"', add
label define bf06a_bplcomm_lbl 4203 `"Boni"', add
label define bf06a_bplcomm_lbl 4204 `"Founzan"', add
label define bf06a_bplcomm_lbl 4205 `"Hounde"', add
label define bf06a_bplcomm_lbl 4206 `"Koti"', add
label define bf06a_bplcomm_lbl 4207 `"Koumbia"', add
label define bf06a_bplcomm_lbl 4299 `"Tuy, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 4301 `"Boundore"', add
label define bf06a_bplcomm_lbl 4302 `"Mansila"', add
label define bf06a_bplcomm_lbl 4303 `"Sebba"', add
label define bf06a_bplcomm_lbl 4304 `"Solan"', add
label define bf06a_bplcomm_lbl 4305 `"Tankougounadie"', add
label define bf06a_bplcomm_lbl 4306 `"Titabe"', add
label define bf06a_bplcomm_lbl 4399 `"Yagha, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 4401 `"Bakata"', add
label define bf06a_bplcomm_lbl 4402 `"Bougnounou"', add
label define bf06a_bplcomm_lbl 4403 `"Cassou"', add
label define bf06a_bplcomm_lbl 4404 `"Dalo"', add
label define bf06a_bplcomm_lbl 4405 `"Gao"', add
label define bf06a_bplcomm_lbl 4406 `"Sapouy"', add
label define bf06a_bplcomm_lbl 4499 `"Ziro, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 4501 `"Bassi"', add
label define bf06a_bplcomm_lbl 4502 `"Boussouma"', add
label define bf06a_bplcomm_lbl 4503 `"Gourcy"', add
label define bf06a_bplcomm_lbl 4504 `"Leba"', add
label define bf06a_bplcomm_lbl 4505 `"Tougo"', add
label define bf06a_bplcomm_lbl 4599 `"Zondoma, unknown commune/arrondissement"', add
label define bf06a_bplcomm_lbl 9998 `"Unknown"', add
label define bf06a_bplcomm_lbl 9999 `"NIU (Not in universe)"', add
label values bf06a_bplcomm bf06a_bplcomm_lbl

label define bf06a_cntry05_lbl 01 `"Burkina Faso"'
label define bf06a_cntry05_lbl 02 `"Benin"', add
label define bf06a_cntry05_lbl 06 `"Ivory Coast"', add
label define bf06a_cntry05_lbl 07 `"Gabon"', add
label define bf06a_cntry05_lbl 09 `"Ghana"', add
label define bf06a_cntry05_lbl 13 `"Mali"', add
label define bf06a_cntry05_lbl 15 `"Niger"', add
label define bf06a_cntry05_lbl 16 `"Nigeria"', add
label define bf06a_cntry05_lbl 18 `"Senegal"', add
label define bf06a_cntry05_lbl 20 `"Sudan"', add
label define bf06a_cntry05_lbl 21 `"Chad"', add
label define bf06a_cntry05_lbl 22 `"Togo"', add
label define bf06a_cntry05_lbl 23 `"Other African countries"', add
label define bf06a_cntry05_lbl 24 `"Europe"', add
label define bf06a_cntry05_lbl 25 `"Other"', add
label define bf06a_cntry05_lbl 98 `"Unknown"', add
label define bf06a_cntry05_lbl 99 `"NIU (not in universe)"', add
label values bf06a_cntry05 bf06a_cntry05_lbl

label define bf06a_prov05_lbl 01 `"Bam"'
label define bf06a_prov05_lbl 02 `"Bazega"', add
label define bf06a_prov05_lbl 03 `"Bougouriba"', add
label define bf06a_prov05_lbl 04 `"Boulgou"', add
label define bf06a_prov05_lbl 05 `"Boulkiemde"', add
label define bf06a_prov05_lbl 06 `"Comoe"', add
label define bf06a_prov05_lbl 07 `"Ganzourgou"', add
label define bf06a_prov05_lbl 08 `"Gnagna"', add
label define bf06a_prov05_lbl 09 `"Gourma"', add
label define bf06a_prov05_lbl 10 `"Houet"', add
label define bf06a_prov05_lbl 11 `"Kadiogo"', add
label define bf06a_prov05_lbl 12 `"Kenedougou"', add
label define bf06a_prov05_lbl 13 `"Kossi"', add
label define bf06a_prov05_lbl 14 `"Kouritenga"', add
label define bf06a_prov05_lbl 15 `"Mouhoun"', add
label define bf06a_prov05_lbl 16 `"Nahouri"', add
label define bf06a_prov05_lbl 17 `"Namentenga"', add
label define bf06a_prov05_lbl 18 `"Oubritenga"', add
label define bf06a_prov05_lbl 19 `"Oudalan"', add
label define bf06a_prov05_lbl 20 `"Passore"', add
label define bf06a_prov05_lbl 21 `"Poni"', add
label define bf06a_prov05_lbl 22 `"Sanguie"', add
label define bf06a_prov05_lbl 23 `"Sanmatenga"', add
label define bf06a_prov05_lbl 24 `"Seno"', add
label define bf06a_prov05_lbl 25 `"Sissili"', add
label define bf06a_prov05_lbl 26 `"Soum"', add
label define bf06a_prov05_lbl 27 `"Sourou"', add
label define bf06a_prov05_lbl 28 `"Tapoa"', add
label define bf06a_prov05_lbl 29 `"Yatenga"', add
label define bf06a_prov05_lbl 30 `"Zoundweogo"', add
label define bf06a_prov05_lbl 31 `"Bale"', add
label define bf06a_prov05_lbl 32 `"Banwa"', add
label define bf06a_prov05_lbl 33 `"Ioba"', add
label define bf06a_prov05_lbl 34 `"Komandjoari"', add
label define bf06a_prov05_lbl 35 `"Kompienga"', add
label define bf06a_prov05_lbl 36 `"Koulpelogo"', add
label define bf06a_prov05_lbl 37 `"Kourweogo"', add
label define bf06a_prov05_lbl 38 `"Leraba"', add
label define bf06a_prov05_lbl 39 `"Loroum"', add
label define bf06a_prov05_lbl 40 `"Nayala"', add
label define bf06a_prov05_lbl 41 `"Noumbiel"', add
label define bf06a_prov05_lbl 42 `"Tuy"', add
label define bf06a_prov05_lbl 43 `"Yagha"', add
label define bf06a_prov05_lbl 44 `"Ziro"', add
label define bf06a_prov05_lbl 45 `"Zondoma"', add
label define bf06a_prov05_lbl 98 `"Unknown"', add
label define bf06a_prov05_lbl 99 `"NIU (Not in universe)"', add
label values bf06a_prov05 bf06a_prov05_lbl

label define bf06a_comm05_lbl 0101 `"Bourzanga"'
label define bf06a_comm05_lbl 0102 `"Guibare"', add
label define bf06a_comm05_lbl 0104 `"Nassere"', add
label define bf06a_comm05_lbl 0105 `"Rollo"', add
label define bf06a_comm05_lbl 0106 `"Rouko"', add
label define bf06a_comm05_lbl 0107 `"Sabce"', add
label define bf06a_comm05_lbl 0108 `"Tikare"', add
label define bf06a_comm05_lbl 0109 `"Zimtenga"', add
label define bf06a_comm05_lbl 0199 `"Bam, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 0201 `"Doulougou"', add
label define bf06a_comm05_lbl 0202 `"Gaongo"', add
label define bf06a_comm05_lbl 0203 `"Ipelce"', add
label define bf06a_comm05_lbl 0204 `"Kayao"', add
label define bf06a_comm05_lbl 0205 `"Kombissiri"', add
label define bf06a_comm05_lbl 0206 `"Sapone"', add
label define bf06a_comm05_lbl 0207 `"Toece"', add
label define bf06a_comm05_lbl 0299 `"Bazega, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 0301 `"Bondigui"', add
label define bf06a_comm05_lbl 0302 `"Diebougou"', add
label define bf06a_comm05_lbl 0303 `"Dolo"', add
label define bf06a_comm05_lbl 0304 `"Iolonioro"', add
label define bf06a_comm05_lbl 0305 `"Tiankoura"', add
label define bf06a_comm05_lbl 0399 `"Bougouriba, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 0401 `"Bagre"', add
label define bf06a_comm05_lbl 0402 `"Bane"', add
label define bf06a_comm05_lbl 0403 `"Beguedo"', add
label define bf06a_comm05_lbl 0404 `"Bissiga"', add
label define bf06a_comm05_lbl 0406 `"Boussouma"', add
label define bf06a_comm05_lbl 0407 `"Garango"', add
label define bf06a_comm05_lbl 0408 `"Komtoega"', add
label define bf06a_comm05_lbl 0409 `"Naiogo"', add
label define bf06a_comm05_lbl 0410 `"Tenkodogo"', add
label define bf06a_comm05_lbl 0411 `"Zabre"', add
label define bf06a_comm05_lbl 0412 `"Zoago"', add
label define bf06a_comm05_lbl 0413 `"Zonse"', add
label define bf06a_comm05_lbl 0499 `"Boulgou, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 0501 `"Bingo"', add
label define bf06a_comm05_lbl 0502 `"Imasgo"', add
label define bf06a_comm05_lbl 0503 `"Kindi"', add
label define bf06a_comm05_lbl 0504 `"Kokologho"', add
label define bf06a_comm05_lbl 0505 `"Koudougou"', add
label define bf06a_comm05_lbl 0506 `"Nandiala"', add
label define bf06a_comm05_lbl 0507 `"Nanoro"', add
label define bf06a_comm05_lbl 0508 `"Pella"', add
label define bf06a_comm05_lbl 0509 `"Poa"', add
label define bf06a_comm05_lbl 0510 `"Ramongo"', add
label define bf06a_comm05_lbl 0511 `"Sabou"', add
label define bf06a_comm05_lbl 0512 `"Sigle"', add
label define bf06a_comm05_lbl 0513 `"Soaw"', add
label define bf06a_comm05_lbl 0514 `"Sourgou"', add
label define bf06a_comm05_lbl 0515 `"Thyou"', add
label define bf06a_comm05_lbl 0599 `"Boukiemde, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 0601 `"Banfora"', add
label define bf06a_comm05_lbl 0602 `"Beregadougo"', add
label define bf06a_comm05_lbl 0603 `"Mangodara"', add
label define bf06a_comm05_lbl 0604 `"Moussodougou"', add
label define bf06a_comm05_lbl 0605 `"Niangoloko"', add
label define bf06a_comm05_lbl 0606 `"Ouo"', add
label define bf06a_comm05_lbl 0607 `"Sideradougou"', add
label define bf06a_comm05_lbl 0608 `"Soubakaniedougou"', add
label define bf06a_comm05_lbl 0609 `"Tiefora"', add
label define bf06a_comm05_lbl 0699 `"Comoe, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 0701 `"Boudry"', add
label define bf06a_comm05_lbl 0702 `"Kogho"', add
label define bf06a_comm05_lbl 0703 `"Meguet"', add
label define bf06a_comm05_lbl 0704 `"Mogtedo"', add
label define bf06a_comm05_lbl 0705 `"Salogo"', add
label define bf06a_comm05_lbl 0706 `"Zam"', add
label define bf06a_comm05_lbl 0708 `"Zoungou"', add
label define bf06a_comm05_lbl 0799 `"Ganzourgou, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 0801 `"Bilanga"', add
label define bf06a_comm05_lbl 0803 `"Coalla"', add
label define bf06a_comm05_lbl 0804 `"Liptougou"', add
label define bf06a_comm05_lbl 0805 `"Mani"', add
label define bf06a_comm05_lbl 0806 `"Piela"', add
label define bf06a_comm05_lbl 0807 `"Thion"', add
label define bf06a_comm05_lbl 0899 `"[missing name GF]"', add
label define bf06a_comm05_lbl 0901 `"Diabo"', add
label define bf06a_comm05_lbl 0902 `"Diapangou"', add
label define bf06a_comm05_lbl 0903 `"Fada N'Gourma"', add
label define bf06a_comm05_lbl 0904 `"Matiacoali"', add
label define bf06a_comm05_lbl 0905 `"Tibga"', add
label define bf06a_comm05_lbl 0906 `"Yamba"', add
label define bf06a_comm05_lbl 0999 `"Gourma, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 1001 `"Bama"', add
label define bf06a_comm05_lbl 1002 `"Dande"', add
label define bf06a_comm05_lbl 1003 `"Faramana"', add
label define bf06a_comm05_lbl 1004 `"Fo"', add
label define bf06a_comm05_lbl 1005 `"Karankasso-Sambla"', add
label define bf06a_comm05_lbl 1006 `"Karankasso-Vigue"', add
label define bf06a_comm05_lbl 1007 `"Koundougou"', add
label define bf06a_comm05_lbl 1008 `"Sena"', add
label define bf06a_comm05_lbl 1009 `"Padema"', add
label define bf06a_comm05_lbl 1010 `"Peni"', add
label define bf06a_comm05_lbl 1011 `"Satiri"', add
label define bf06a_comm05_lbl 1012 `"Toussiana"', add
label define bf06a_comm05_lbl 1013 `"Bobo-Dioulasso (Rural)"', add
label define bf06a_comm05_lbl 1091 `"Dafra (arrondissement)"', add
label define bf06a_comm05_lbl 1099 `"Houet, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 1101 `"Komki-Ipala"', add
label define bf06a_comm05_lbl 1102 `"Komsilga"', add
label define bf06a_comm05_lbl 1103 `"Koubri"', add
label define bf06a_comm05_lbl 1104 `"Pabre"', add
label define bf06a_comm05_lbl 1105 `"Saaba"', add
label define bf06a_comm05_lbl 1106 `"Tanghin-Dassouri"', add
label define bf06a_comm05_lbl 1191 `"Baskuy (arrondissement)"', add
label define bf06a_comm05_lbl 1192 `"Bogodogo (arrondissement)"', add
label define bf06a_comm05_lbl 1193 `"Boulmiougou (arrondissement)"', add
label define bf06a_comm05_lbl 1194 `"Nongremassom (arrondissement)"', add
label define bf06a_comm05_lbl 1195 `"Sig-Noghin (arrondissement)"', add
label define bf06a_comm05_lbl 1199 `"Kadiogo, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 1201 `"Banzon"', add
label define bf06a_comm05_lbl 1202 `"Djigouera"', add
label define bf06a_comm05_lbl 1203 `"Kangala"', add
label define bf06a_comm05_lbl 1204 `"Kayan"', add
label define bf06a_comm05_lbl 1205 `"Koloko"', add
label define bf06a_comm05_lbl 1206 `"Kourinion"', add
label define bf06a_comm05_lbl 1207 `"Kourouma"', add
label define bf06a_comm05_lbl 1208 `"Morolaba"', add
label define bf06a_comm05_lbl 1209 `"N'Dorola"', add
label define bf06a_comm05_lbl 1211 `"Samogohiri"', add
label define bf06a_comm05_lbl 1212 `"Samorogouan"', add
label define bf06a_comm05_lbl 1213 `"Sindo"', add
label define bf06a_comm05_lbl 1299 `"Kenedougou, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 1301 `"Barani"', add
label define bf06a_comm05_lbl 1302 `"Bomborokuy"', add
label define bf06a_comm05_lbl 1303 `"Bourasso"', add
label define bf06a_comm05_lbl 1304 `"Djibasso"', add
label define bf06a_comm05_lbl 1305 `"Dokuy"', add
label define bf06a_comm05_lbl 1306 `"Doubala"', add
label define bf06a_comm05_lbl 1307 `"Kobori"', add
label define bf06a_comm05_lbl 1308 `"Madouba"', add
label define bf06a_comm05_lbl 1309 `"Nouna"', add
label define bf06a_comm05_lbl 1310 `"Sono"', add
label define bf06a_comm05_lbl 1399 `"Kossi, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 1401 `"Andemtenga"', add
label define bf06a_comm05_lbl 1402 `"Basoure"', add
label define bf06a_comm05_lbl 1403 `"Dialgaye"', add
label define bf06a_comm05_lbl 1404 `"Goughin"', add
label define bf06a_comm05_lbl 1405 `"Cando"', add
label define bf06a_comm05_lbl 1408 `"Tensobentenga"', add
label define bf06a_comm05_lbl 1409 `"Yargo"', add
label define bf06a_comm05_lbl 1499 `"Kouritenga, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 1501 `"Bondokuy"', add
label define bf06a_comm05_lbl 1503 `"Douroula"', add
label define bf06a_comm05_lbl 1504 `"Kona"', add
label define bf06a_comm05_lbl 1505 `"Ourakoye"', add
label define bf06a_comm05_lbl 1506 `"Safane"', add
label define bf06a_comm05_lbl 1507 `"Tcheriba"', add
label define bf06a_comm05_lbl 1599 `"Mouhoun, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 1601 `"Guiaro"', add
label define bf06a_comm05_lbl 1603 `"Tiebele"', add
label define bf06a_comm05_lbl 1604 `"Zecco"', add
label define bf06a_comm05_lbl 1605 `"Ziou"', add
label define bf06a_comm05_lbl 1699 `"Nahouri, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 1701 `"Boala"', add
label define bf06a_comm05_lbl 1702 `"Boulsa"', add
label define bf06a_comm05_lbl 1703 `"Boroum"', add
label define bf06a_comm05_lbl 1704 `"Dargo"', add
label define bf06a_comm05_lbl 1705 `"Nagbingou"', add
label define bf06a_comm05_lbl 1706 `"Tougouri"', add
label define bf06a_comm05_lbl 1707 `"Yalgo"', add
label define bf06a_comm05_lbl 1708 `"Zeguedeguin"', add
label define bf06a_comm05_lbl 1799 `"Namentenga, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 1801 `"Absouya"', add
label define bf06a_comm05_lbl 1802 `"Dapelogo"', add
label define bf06a_comm05_lbl 1803 `"Loumbila"', add
label define bf06a_comm05_lbl 1804 `"Nagreongo"', add
label define bf06a_comm05_lbl 1805 `"Ourgou-Manega"', add
label define bf06a_comm05_lbl 1806 `"Ziniare"', add
label define bf06a_comm05_lbl 1807 `"Zitenga"', add
label define bf06a_comm05_lbl 1899 `"Oubritenga, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 1901 `"Deou"', add
label define bf06a_comm05_lbl 1902 `"Gorom-Gorom"', add
label define bf06a_comm05_lbl 1903 `"Markoye"', add
label define bf06a_comm05_lbl 1904 `"Oursi"', add
label define bf06a_comm05_lbl 1905 `"Tin-Akoff"', add
label define bf06a_comm05_lbl 1999 `"Oudalan, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 2001 `"Arbole"', add
label define bf06a_comm05_lbl 2002 `"Bargare"', add
label define bf06a_comm05_lbl 2003 `"Bokin"', add
label define bf06a_comm05_lbl 2004 `"Gomponsom"', add
label define bf06a_comm05_lbl 2005 `"Kirsi"', add
label define bf06a_comm05_lbl 2006 `"La-Todin"', add
label define bf06a_comm05_lbl 2007 `"Pilimpikou"', add
label define bf06a_comm05_lbl 2008 `"Samba"', add
label define bf06a_comm05_lbl 2099 `"Passore, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 2101 `"Bouroum-Bouroum"', add
label define bf06a_comm05_lbl 2102 `"Boussera"', add
label define bf06a_comm05_lbl 2103 `"Djigoue"', add
label define bf06a_comm05_lbl 2105 `"Gomblora"', add
label define bf06a_comm05_lbl 2106 `"Kampti"', add
label define bf06a_comm05_lbl 2107 `"Loropeni"', add
label define bf06a_comm05_lbl 2108 `"Malba"', add
label define bf06a_comm05_lbl 2109 `"Nako"', add
label define bf06a_comm05_lbl 2110 `"Pergban"', add
label define bf06a_comm05_lbl 2199 `"Poni, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 2201 `"Dassa"', add
label define bf06a_comm05_lbl 2202 `"Didyr"', add
label define bf06a_comm05_lbl 2203 `"Godyr"', add
label define bf06a_comm05_lbl 2204 `"Kordie"', add
label define bf06a_comm05_lbl 2205 `"Kyon"', add
label define bf06a_comm05_lbl 2206 `"Pouni"', add
label define bf06a_comm05_lbl 2207 `"Reo"', add
label define bf06a_comm05_lbl 2208 `"Tenado"', add
label define bf06a_comm05_lbl 2209 `"Zamo"', add
label define bf06a_comm05_lbl 2210 `"Zawara"', add
label define bf06a_comm05_lbl 2299 `"Sanguie, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 2301 `"Barsalogho"', add
label define bf06a_comm05_lbl 2302 `"Boussouma"', add
label define bf06a_comm05_lbl 2303 `"Dablo"', add
label define bf06a_comm05_lbl 2305 `"Korsimoro"', add
label define bf06a_comm05_lbl 2306 `"Mane"', add
label define bf06a_comm05_lbl 2307 `"Namissiguima"', add
label define bf06a_comm05_lbl 2308 `"Pensa"', add
label define bf06a_comm05_lbl 2309 `"Pibaore"', add
label define bf06a_comm05_lbl 2310 `"Pissila"', add
label define bf06a_comm05_lbl 2311 `"Ziga"', add
label define bf06a_comm05_lbl 2399 `"Sanmatenga, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 2401 `"Bani"', add
label define bf06a_comm05_lbl 2402 `"Dori"', add
label define bf06a_comm05_lbl 2403 `"Falagountou"', add
label define bf06a_comm05_lbl 2404 `"Gorgadji"', add
label define bf06a_comm05_lbl 2405 `"Sampelga"', add
label define bf06a_comm05_lbl 2406 `"Seytenga"', add
label define bf06a_comm05_lbl 2499 `"Seno, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 2501 `"Bieha"', add
label define bf06a_comm05_lbl 2502 `"Bourasso"', add
label define bf06a_comm05_lbl 2504 `"Nebielianayou"', add
label define bf06a_comm05_lbl 2505 `"Niabouri"', add
label define bf06a_comm05_lbl 2506 `"Silly"', add
label define bf06a_comm05_lbl 2507 `"To"', add
label define bf06a_comm05_lbl 2599 `"Sissili, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 2601 `"Aribinda"', add
label define bf06a_comm05_lbl 2602 `"Baraboule"', add
label define bf06a_comm05_lbl 2603 `"Diguel"', add
label define bf06a_comm05_lbl 2605 `"Kelbo"', add
label define bf06a_comm05_lbl 2606 `"Koutougou"', add
label define bf06a_comm05_lbl 2607 `"Nassoubmou"', add
label define bf06a_comm05_lbl 2608 `"Pobe-Mengao"', add
label define bf06a_comm05_lbl 2609 `"Tongomayel"', add
label define bf06a_comm05_lbl 2699 `"Soum, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 2701 `"Di"', add
label define bf06a_comm05_lbl 2702 `"Gomboro"', add
label define bf06a_comm05_lbl 2703 `"Kassoum"', add
label define bf06a_comm05_lbl 2704 `"Kiembara"', add
label define bf06a_comm05_lbl 2705 `"Lanfiera"', add
label define bf06a_comm05_lbl 2706 `"Kankoue"', add
label define bf06a_comm05_lbl 2707 `"Toeni"', add
label define bf06a_comm05_lbl 2708 `"Tougan"', add
label define bf06a_comm05_lbl 2799 `"Sourou, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 2801 `"Botou"', add
label define bf06a_comm05_lbl 2802 `"Diapaga"', add
label define bf06a_comm05_lbl 2803 `"Kantchari"', add
label define bf06a_comm05_lbl 2804 `"Logobou"', add
label define bf06a_comm05_lbl 2805 `"Namounou"', add
label define bf06a_comm05_lbl 2806 `"Partiaga"', add
label define bf06a_comm05_lbl 2807 `"Tambaga"', add
label define bf06a_comm05_lbl 2808 `"Tansarga"', add
label define bf06a_comm05_lbl 2899 `"Tapoa, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 2901 `"Bargare"', add
label define bf06a_comm05_lbl 2902 `"Kain"', add
label define bf06a_comm05_lbl 2903 `"Kalsaka"', add
label define bf06a_comm05_lbl 2904 `"Kossouka"', add
label define bf06a_comm05_lbl 2905 `"Koubri"', add
label define bf06a_comm05_lbl 2906 `"Namissiguima"', add
label define bf06a_comm05_lbl 2907 `"Ouahigouya"', add
label define bf06a_comm05_lbl 2908 `"Oula"', add
label define bf06a_comm05_lbl 2909 `"Rambo"', add
label define bf06a_comm05_lbl 2910 `"Seguenega"', add
label define bf06a_comm05_lbl 2911 `"Tangaye"', add
label define bf06a_comm05_lbl 2912 `"Thiou"', add
label define bf06a_comm05_lbl 2913 `"Zogore"', add
label define bf06a_comm05_lbl 2999 `"Yatenga, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 3001 `"Beregadougo"', add
label define bf06a_comm05_lbl 3002 `"Binde"', add
label define bf06a_comm05_lbl 3003 `"Gogo"', add
label define bf06a_comm05_lbl 3004 `"Gomboussougou"', add
label define bf06a_comm05_lbl 3005 `"Guibare"', add
label define bf06a_comm05_lbl 3007 `"Nobere"', add
label define bf06a_comm05_lbl 3099 `"Zoundweogo, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 3101 `"Bagassi"', add
label define bf06a_comm05_lbl 3102 `"Bana"', add
label define bf06a_comm05_lbl 3103 `"Boromo"', add
label define bf06a_comm05_lbl 3104 `"Fara"', add
label define bf06a_comm05_lbl 3105 `"Oury"', add
label define bf06a_comm05_lbl 3106 `"Pa"', add
label define bf06a_comm05_lbl 3107 `"Pompoi"', add
label define bf06a_comm05_lbl 3108 `"Poura"', add
label define bf06a_comm05_lbl 3109 `"Siby"', add
label define bf06a_comm05_lbl 3110 `"Yaho"', add
label define bf06a_comm05_lbl 3199 `"Bale, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 3201 `"Balave"', add
label define bf06a_comm05_lbl 3202 `"Kouka"', add
label define bf06a_comm05_lbl 3203 `"Sami"', add
label define bf06a_comm05_lbl 3204 `"Sanaba"', add
label define bf06a_comm05_lbl 3205 `"Solenzo"', add
label define bf06a_comm05_lbl 3206 `"Tansila"', add
label define bf06a_comm05_lbl 3299 `"Banwa, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 3301 `"Dano"', add
label define bf06a_comm05_lbl 3302 `"Dissin"', add
label define bf06a_comm05_lbl 3303 `"Gueguere"', add
label define bf06a_comm05_lbl 3304 `"Koper"', add
label define bf06a_comm05_lbl 3305 `"Niego"', add
label define bf06a_comm05_lbl 3306 `"Oronkua"', add
label define bf06a_comm05_lbl 3307 `"Ouessa"', add
label define bf06a_comm05_lbl 3308 `"Zambo"', add
label define bf06a_comm05_lbl 3399 `"Ioba, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 3401 `"Bartiebougou"', add
label define bf06a_comm05_lbl 3402 `"Foutouri"', add
label define bf06a_comm05_lbl 3403 `"Gayeri"', add
label define bf06a_comm05_lbl 3499 `"Komandjoari, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 3501 `"Kompienga"', add
label define bf06a_comm05_lbl 3502 `"Madjoari"', add
label define bf06a_comm05_lbl 3503 `"Pama"', add
label define bf06a_comm05_lbl 3599 `"Kompienga, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 3601 `"Comin-Yanga"', add
label define bf06a_comm05_lbl 3602 `"Dourtenga"', add
label define bf06a_comm05_lbl 3603 `"Lalgaye"', add
label define bf06a_comm05_lbl 3605 `"Sanga"', add
label define bf06a_comm05_lbl 3606 `"Soudougui"', add
label define bf06a_comm05_lbl 3607 `"Yargatenga"', add
label define bf06a_comm05_lbl 3608 `"Yonde"', add
label define bf06a_comm05_lbl 3699 `"Koulpelogo, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 3701 `"Bousse"', add
label define bf06a_comm05_lbl 3702 `"Laye"', add
label define bf06a_comm05_lbl 3703 `"Niou"', add
label define bf06a_comm05_lbl 3704 `"Sourgoubila"', add
label define bf06a_comm05_lbl 3705 `"Toeghin"', add
label define bf06a_comm05_lbl 3799 `"Kourweogo, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 3801 `"Dakoro"', add
label define bf06a_comm05_lbl 3802 `"Douna"', add
label define bf06a_comm05_lbl 3803 `"Kankalaba"', add
label define bf06a_comm05_lbl 3804 `"Loumana"', add
label define bf06a_comm05_lbl 3805 `"Niankorodougou"', add
label define bf06a_comm05_lbl 3806 `"Oueleni"', add
label define bf06a_comm05_lbl 3808 `"Wolonkoto"', add
label define bf06a_comm05_lbl 3899 `"Leraba, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 3901 `"Banh"', add
label define bf06a_comm05_lbl 3902 `"Ouindigui"', add
label define bf06a_comm05_lbl 3903 `"Solle"', add
label define bf06a_comm05_lbl 3999 `"Loroum, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 4001 `"Gassan"', add
label define bf06a_comm05_lbl 4002 `"Gossina"', add
label define bf06a_comm05_lbl 4003 `"Kougny"', add
label define bf06a_comm05_lbl 4004 `"Toma"', add
label define bf06a_comm05_lbl 4005 `"Yaba"', add
label define bf06a_comm05_lbl 4006 `"Ye"', add
label define bf06a_comm05_lbl 4099 `"Nayala, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 4101 `"Batie"', add
label define bf06a_comm05_lbl 4102 `"Boussoukoula"', add
label define bf06a_comm05_lbl 4103 `"Kpuere"', add
label define bf06a_comm05_lbl 4104 `"Legmoin"', add
label define bf06a_comm05_lbl 4105 `"Midebdo"', add
label define bf06a_comm05_lbl 4199 `"Noumbiel, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 4201 `"Bekuy"', add
label define bf06a_comm05_lbl 4202 `"Bereba"', add
label define bf06a_comm05_lbl 4203 `"Boni"', add
label define bf06a_comm05_lbl 4204 `"Founzan"', add
label define bf06a_comm05_lbl 4205 `"Hounde"', add
label define bf06a_comm05_lbl 4206 `"Koti"', add
label define bf06a_comm05_lbl 4207 `"Koumbia"', add
label define bf06a_comm05_lbl 4299 `"Tuy, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 4301 `"Boundore"', add
label define bf06a_comm05_lbl 4302 `"Mansila"', add
label define bf06a_comm05_lbl 4303 `"Sebba"', add
label define bf06a_comm05_lbl 4304 `"Solan"', add
label define bf06a_comm05_lbl 4305 `"Tankougounadie"', add
label define bf06a_comm05_lbl 4306 `"Titabe"', add
label define bf06a_comm05_lbl 4399 `"Yagha, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 4401 `"Bakata"', add
label define bf06a_comm05_lbl 4402 `"Bougnounou"', add
label define bf06a_comm05_lbl 4403 `"Cassou"', add
label define bf06a_comm05_lbl 4404 `"Dalo"', add
label define bf06a_comm05_lbl 4405 `"Gao"', add
label define bf06a_comm05_lbl 4406 `"Sapouy"', add
label define bf06a_comm05_lbl 4499 `"Ziro, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 4501 `"Bassi"', add
label define bf06a_comm05_lbl 4502 `"Boussouma"', add
label define bf06a_comm05_lbl 4503 `"Gourcy"', add
label define bf06a_comm05_lbl 4504 `"Leba"', add
label define bf06a_comm05_lbl 4505 `"Tougo"', add
label define bf06a_comm05_lbl 4599 `"Zondoma, unknown commune/arrondissement"', add
label define bf06a_comm05_lbl 9998 `"Unknown"', add
label define bf06a_comm05_lbl 9999 `"NIU (not in universe)"', add
label values bf06a_comm05 bf06a_comm05_lbl

label define bf06a_abroad_lbl 0 `"No"'
label define bf06a_abroad_lbl 1 `"Yes (Ivory Coast)"', add
label define bf06a_abroad_lbl 2 `"Yes (Other country)"', add
label define bf06a_abroad_lbl 9 `"Unknown"', add
label values bf06a_abroad bf06a_abroad_lbl

label define bf06a_resdur_lbl 00 `"0"'
label define bf06a_resdur_lbl 01 `"1"', add
label define bf06a_resdur_lbl 02 `"2"', add
label define bf06a_resdur_lbl 03 `"3"', add
label define bf06a_resdur_lbl 04 `"4"', add
label define bf06a_resdur_lbl 05 `"5"', add
label define bf06a_resdur_lbl 06 `"6"', add
label define bf06a_resdur_lbl 07 `"7"', add
label define bf06a_resdur_lbl 08 `"8"', add
label define bf06a_resdur_lbl 09 `"9"', add
label define bf06a_resdur_lbl 10 `"10"', add
label define bf06a_resdur_lbl 98 `"Unknown"', add
label define bf06a_resdur_lbl 99 `"NIU (not in universe)"', add
label values bf06a_resdur bf06a_resdur_lbl

label define bf06a_whyret_lbl 1 `"Socio-political crisis"'
label define bf06a_whyret_lbl 2 `"Deportation"', add
label define bf06a_whyret_lbl 3 `"Educational purposes"', add
label define bf06a_whyret_lbl 4 `"Voluntary return"', add
label define bf06a_whyret_lbl 5 `"Other"', add
label define bf06a_whyret_lbl 8 `"Unknown"', add
label define bf06a_whyret_lbl 9 `"NIU (not in universe)"', add
label values bf06a_whyret bf06a_whyret_lbl

label define bf06a_disab_lbl 0 `"No handicap"'
label define bf06a_disab_lbl 1 `"Handicap of upper extremities"', add
label define bf06a_disab_lbl 2 `"Handicap of lower extremities"', add
label define bf06a_disab_lbl 3 `"Mental retardation"', add
label define bf06a_disab_lbl 4 `"Blind"', add
label define bf06a_disab_lbl 5 `"Deaf/mute"', add
label define bf06a_disab_lbl 6 `"Other"', add
label values bf06a_disab bf06a_disab_lbl

label define bf06a_religion_lbl 1 `"Animist"'
label define bf06a_religion_lbl 2 `"Muslim"', add
label define bf06a_religion_lbl 3 `"Catholic"', add
label define bf06a_religion_lbl 4 `"Protestant"', add
label define bf06a_religion_lbl 5 `"Other"', add
label define bf06a_religion_lbl 6 `"Not religious"', add
label values bf06a_religion bf06a_religion_lbl

label define bf06a_nation_lbl 01 `"Burkina"'
label define bf06a_nation_lbl 02 `"Benin"', add
label define bf06a_nation_lbl 03 `"Cameroon"', add
label define bf06a_nation_lbl 04 `"Cape Verde"', add
label define bf06a_nation_lbl 05 `"Congo"', add
label define bf06a_nation_lbl 06 `"Ivory Coast"', add
label define bf06a_nation_lbl 07 `"Gabon"', add
label define bf06a_nation_lbl 09 `"Ghana"', add
label define bf06a_nation_lbl 11 `"Guinea"', add
label define bf06a_nation_lbl 12 `"Liberia"', add
label define bf06a_nation_lbl 13 `"Mali"', add
label define bf06a_nation_lbl 15 `"Niger"', add
label define bf06a_nation_lbl 16 `"Nigeria"', add
label define bf06a_nation_lbl 18 `"Senegal"', add
label define bf06a_nation_lbl 20 `"Sudan"', add
label define bf06a_nation_lbl 21 `"Chad"', add
label define bf06a_nation_lbl 22 `"Togo"', add
label define bf06a_nation_lbl 23 `"Other African countries"', add
label define bf06a_nation_lbl 24 `"America"', add
label define bf06a_nation_lbl 25 `"Asia"', add
label define bf06a_nation_lbl 26 `"Europe"', add
label define bf06a_nation_lbl 99 `"Not stated or response suppressed"', add
label values bf06a_nation bf06a_nation_lbl

label define bf06a_school_lbl 0 `"No, never attended"'
label define bf06a_school_lbl 1 `"Yes, attended"', add
label define bf06a_school_lbl 2 `"Yes, currently attends"', add
label define bf06a_school_lbl 8 `"Unknown"', add
label define bf06a_school_lbl 9 `"NIU (not in universe)"', add
label values bf06a_school bf06a_school_lbl

label define bf06a_edlevel_lbl 00 `"None"'
label define bf06a_edlevel_lbl 01 `"Kindergarten"', add
label define bf06a_edlevel_lbl 02 `"Primary, 1st grade"', add
label define bf06a_edlevel_lbl 03 `"Primary, 2nd grade"', add
label define bf06a_edlevel_lbl 04 `"Primary, 3rd grade"', add
label define bf06a_edlevel_lbl 05 `"Primary, 4th grade"', add
label define bf06a_edlevel_lbl 06 `"Primary, 5th grade"', add
label define bf06a_edlevel_lbl 07 `"Primary, 6th grade"', add
label define bf06a_edlevel_lbl 08 `"Middle school"', add
label define bf06a_edlevel_lbl 09 `"High school"', add
label define bf06a_edlevel_lbl 10 `"Higher"', add
label define bf06a_edlevel_lbl 98 `"Unknown"', add
label define bf06a_edlevel_lbl 99 `"NIU (not in universe)"', add
label values bf06a_edlevel bf06a_edlevel_lbl

label define bf06a_litflang_lbl 00 `"None"'
label define bf06a_litflang_lbl 02 `"Djerma"', add
label define bf06a_litflang_lbl 03 `"Haoussa"', add
label define bf06a_litflang_lbl 04 `"Wolof"', add
label define bf06a_litflang_lbl 06 `"French"', add
label define bf06a_litflang_lbl 07 `"Arab"', add
label define bf06a_litflang_lbl 08 `"English"', add
label define bf06a_litflang_lbl 10 `"Other"', add
label define bf06a_litflang_lbl 98 `"Unknown, no response"', add
label define bf06a_litflang_lbl 99 `"NIU (not in universe)"', add
label values bf06a_litflang bf06a_litflang_lbl

label define bf06a_litnat_lbl 00 `"None"'
label define bf06a_litnat_lbl 11 `"Bissa"', add
label define bf06a_litnat_lbl 13 `"Bwamu (or Bwamou)"', add
label define bf06a_litnat_lbl 15 `"Dagara"', add
label define bf06a_litnat_lbl 16 `"Dioula (or Bambara)"', add
label define bf06a_litnat_lbl 18 `"Fulfulde (or Peulh)"', add
label define bf06a_litnat_lbl 20 `"Goulmancema (or Gourmantché)"', add
label define bf06a_litnat_lbl 21 `"Kasséna"', add
label define bf06a_litnat_lbl 24 `"Lyele"', add
label define bf06a_litnat_lbl 25 `"Lobiri"', add
label define bf06a_litnat_lbl 27 `"Moore"', add
label define bf06a_litnat_lbl 28 `"Nuni (Nounouma)"', add
label define bf06a_litnat_lbl 35 `"Tamacheque (or Bella)"', add
label define bf06a_litnat_lbl 37 `"Other national languages"', add
label define bf06a_litnat_lbl 98 `"Unknown, no response"', add
label define bf06a_litnat_lbl 99 `"NIU (not in universe)"', add
label values bf06a_litnat bf06a_litnat_lbl

label define bf06a_lang_lbl 02 `"Djerma"'
label define bf06a_lang_lbl 03 `"Haoussa"', add
label define bf06a_lang_lbl 04 `"Wolof"', add
label define bf06a_lang_lbl 05 `"Other African language"', add
label define bf06a_lang_lbl 06 `"French"', add
label define bf06a_lang_lbl 07 `"Arab"', add
label define bf06a_lang_lbl 08 `"English"', add
label define bf06a_lang_lbl 10 `"Other non-African language"', add
label define bf06a_lang_lbl 11 `"Bissa"', add
label define bf06a_lang_lbl 12 `"Bobo"', add
label define bf06a_lang_lbl 13 `"Bwamu (or Bwamou)"', add
label define bf06a_lang_lbl 14 `"Dafing"', add
label define bf06a_lang_lbl 15 `"Dagara"', add
label define bf06a_lang_lbl 16 `"Dioula (or Bambara)"', add
label define bf06a_lang_lbl 17 `"Dogon (or Kaado)"', add
label define bf06a_lang_lbl 18 `"Fulfulde (or Peulh)"', add
label define bf06a_lang_lbl 19 `"Gouin"', add
label define bf06a_lang_lbl 20 `"Goulmancema (or Gourmantché)"', add
label define bf06a_lang_lbl 21 `"Kassena"', add
label define bf06a_lang_lbl 22 `"Ko"', add
label define bf06a_lang_lbl 23 `"Koussassé"', add
label define bf06a_lang_lbl 24 `"Lyele"', add
label define bf06a_lang_lbl 25 `"Lobiri"', add
label define bf06a_lang_lbl 26 `"Minianka"', add
label define bf06a_lang_lbl 27 `"Moore"', add
label define bf06a_lang_lbl 28 `"Nuni (Nounouma)"', add
label define bf06a_lang_lbl 29 `"San (or Samogho or Samo)"', add
label define bf06a_lang_lbl 30 `"Sembla"', add
label define bf06a_lang_lbl 31 `"Senoufo"', add
label define bf06a_lang_lbl 32 `"Siamou"', add
label define bf06a_lang_lbl 33 `"Sissaka"', add
label define bf06a_lang_lbl 34 `"Sonrhai"', add
label define bf06a_lang_lbl 35 `"Tamacheque (or Bella)"', add
label define bf06a_lang_lbl 36 `"Gurunsi"', add
label define bf06a_lang_lbl 37 `"Other national languages"', add
label define bf06a_lang_lbl 98 `"Unknown"', add
label define bf06a_lang_lbl 99 `"NIU (not in universe)"', add
label values bf06a_lang bf06a_lang_lbl

label define bf06a_empstat_lbl 0 `"NIU (not in universe)"'
label define bf06a_empstat_lbl 1 `"Employed"', add
label define bf06a_empstat_lbl 2 `"Unemployed and looking"', add
label define bf06a_empstat_lbl 3 `"Looking for first job"', add
label define bf06a_empstat_lbl 4 `"Retired"', add
label define bf06a_empstat_lbl 5 `"Housewife"', add
label define bf06a_empstat_lbl 6 `"Student"', add
label define bf06a_empstat_lbl 7 `"Shareholder"', add
label define bf06a_empstat_lbl 8 `"Other inactive persons"', add
label define bf06a_empstat_lbl 9 `"Unknown"', add
label values bf06a_empstat bf06a_empstat_lbl

label define bf06a_classwk_lbl 1 `"Employer, boss"'
label define bf06a_classwk_lbl 2 `"Independent"', add
label define bf06a_classwk_lbl 3 `"Salaried"', add
label define bf06a_classwk_lbl 4 `"Apprentice"', add
label define bf06a_classwk_lbl 5 `"Family helper"', add
label define bf06a_classwk_lbl 6 `"Other"', add
label define bf06a_classwk_lbl 8 `"Unknown"', add
label define bf06a_classwk_lbl 9 `"NIU (not in universe)"', add
label values bf06a_classwk bf06a_classwk_lbl

label define bf06a_marst_lbl 0 `"Single"'
label define bf06a_marst_lbl 1 `"Married and monogamous"', add
label define bf06a_marst_lbl 2 `"Married and polygamous (2 wives)"', add
label define bf06a_marst_lbl 3 `"Married and polygamous (3 wives)"', add
label define bf06a_marst_lbl 4 `"Married and polygamous (4 or more wives)"', add
label define bf06a_marst_lbl 5 `"Widow(er)"', add
label define bf06a_marst_lbl 6 `"Divorced or separated"', add
label define bf06a_marst_lbl 7 `"Civil Union"', add
label define bf06a_marst_lbl 8 `"Unknown"', add
label define bf06a_marst_lbl 9 `"NIU (not in universe)"', add
label values bf06a_marst bf06a_marst_lbl

label define bf06a_chbornm_lbl 00 `"0"'
label define bf06a_chbornm_lbl 01 `"1"', add
label define bf06a_chbornm_lbl 02 `"2"', add
label define bf06a_chbornm_lbl 03 `"3"', add
label define bf06a_chbornm_lbl 04 `"4"', add
label define bf06a_chbornm_lbl 05 `"5"', add
label define bf06a_chbornm_lbl 06 `"6"', add
label define bf06a_chbornm_lbl 07 `"7"', add
label define bf06a_chbornm_lbl 08 `"8"', add
label define bf06a_chbornm_lbl 09 `"9"', add
label define bf06a_chbornm_lbl 10 `"10"', add
label define bf06a_chbornm_lbl 11 `"11"', add
label define bf06a_chbornm_lbl 12 `"12+"', add
label define bf06a_chbornm_lbl 98 `"Unknown"', add
label define bf06a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values bf06a_chbornm bf06a_chbornm_lbl

label define bf06a_chbornf_lbl 00 `"0"'
label define bf06a_chbornf_lbl 01 `"1"', add
label define bf06a_chbornf_lbl 02 `"2"', add
label define bf06a_chbornf_lbl 03 `"3"', add
label define bf06a_chbornf_lbl 04 `"4"', add
label define bf06a_chbornf_lbl 05 `"5"', add
label define bf06a_chbornf_lbl 06 `"6"', add
label define bf06a_chbornf_lbl 07 `"7"', add
label define bf06a_chbornf_lbl 08 `"8"', add
label define bf06a_chbornf_lbl 09 `"9"', add
label define bf06a_chbornf_lbl 10 `"10"', add
label define bf06a_chbornf_lbl 11 `"11"', add
label define bf06a_chbornf_lbl 12 `"12+"', add
label define bf06a_chbornf_lbl 98 `"Unknown"', add
label define bf06a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values bf06a_chbornf bf06a_chbornf_lbl

label define bf06a_chsurvm_lbl 00 `"0"'
label define bf06a_chsurvm_lbl 01 `"1"', add
label define bf06a_chsurvm_lbl 02 `"2"', add
label define bf06a_chsurvm_lbl 03 `"3"', add
label define bf06a_chsurvm_lbl 04 `"4"', add
label define bf06a_chsurvm_lbl 05 `"5"', add
label define bf06a_chsurvm_lbl 06 `"6"', add
label define bf06a_chsurvm_lbl 07 `"7"', add
label define bf06a_chsurvm_lbl 08 `"8"', add
label define bf06a_chsurvm_lbl 09 `"9"', add
label define bf06a_chsurvm_lbl 10 `"10+"', add
label define bf06a_chsurvm_lbl 98 `"Unknown"', add
label define bf06a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values bf06a_chsurvm bf06a_chsurvm_lbl

label define bf06a_chsurvf_lbl 00 `"0"'
label define bf06a_chsurvf_lbl 01 `"1"', add
label define bf06a_chsurvf_lbl 02 `"2"', add
label define bf06a_chsurvf_lbl 03 `"3"', add
label define bf06a_chsurvf_lbl 04 `"4"', add
label define bf06a_chsurvf_lbl 05 `"5"', add
label define bf06a_chsurvf_lbl 06 `"6"', add
label define bf06a_chsurvf_lbl 07 `"7"', add
label define bf06a_chsurvf_lbl 08 `"8"', add
label define bf06a_chsurvf_lbl 09 `"9"', add
label define bf06a_chsurvf_lbl 10 `"10+"', add
label define bf06a_chsurvf_lbl 98 `"Unknown"', add
label define bf06a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values bf06a_chsurvf bf06a_chsurvf_lbl

label define bf06a_bthlyrm_lbl 0 `"0"'
label define bf06a_bthlyrm_lbl 1 `"1"', add
label define bf06a_bthlyrm_lbl 2 `"2"', add
label define bf06a_bthlyrm_lbl 3 `"3"', add
label define bf06a_bthlyrm_lbl 4 `"4"', add
label define bf06a_bthlyrm_lbl 8 `"Unknown"', add
label define bf06a_bthlyrm_lbl 9 `"NIU (not in universe)"', add
label values bf06a_bthlyrm bf06a_bthlyrm_lbl

label define bf06a_bthlyrf_lbl 0 `"0"'
label define bf06a_bthlyrf_lbl 1 `"1"', add
label define bf06a_bthlyrf_lbl 2 `"2"', add
label define bf06a_bthlyrf_lbl 3 `"3"', add
label define bf06a_bthlyrf_lbl 4 `"4"', add
label define bf06a_bthlyrf_lbl 8 `"Unknown"', add
label define bf06a_bthlyrf_lbl 9 `"NIU (not in universe)"', add
label values bf06a_bthlyrf bf06a_bthlyrf_lbl

label define bf06a_mortfath_lbl 1 `"Lives in the household"'
label define bf06a_mortfath_lbl 2 `"Does not live in household, but lives in BF"', add
label define bf06a_mortfath_lbl 3 `"Lives outside of BF"', add
label define bf06a_mortfath_lbl 4 `"Deceased"', add
label define bf06a_mortfath_lbl 5 `"Respondent did not know"', add
label define bf06a_mortfath_lbl 8 `"Unknown"', add
label define bf06a_mortfath_lbl 9 `"NIU (not in universe)"', add
label values bf06a_mortfath bf06a_mortfath_lbl

label define bf06a_mortmoth_lbl 1 `"Lives in the household"'
label define bf06a_mortmoth_lbl 2 `"Does not live in household, but lives in BF"', add
label define bf06a_mortmoth_lbl 3 `"Lives outside of BF"', add
label define bf06a_mortmoth_lbl 4 `"Deceased"', add
label define bf06a_mortmoth_lbl 5 `"Respondent did not know"', add
label define bf06a_mortmoth_lbl 8 `"Unknown"', add
label define bf06a_mortmoth_lbl 9 `"NIU (not in universe)"', add
label values bf06a_mortmoth bf06a_mortmoth_lbl


