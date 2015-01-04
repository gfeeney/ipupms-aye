* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    ml09a_dwnum     22-28    ///
  byte    ml09a_pern      29-30    ///
  byte    ml09a_fbig      31-31    ///
  byte    ml09a_region    32-32    ///
  byte    ml09a_circle    33-34    ///
  byte    ml09a_area      35-35    ///
  byte    ml09a_urban     36-36    ///
  byte    ml09a_typehh    37-37    ///
  byte    ml09a_emigmal   38-38    ///
  byte    ml09a_emigfem   39-39    ///
  byte    ml09a_emigtot   40-40    ///
  byte    ml09a_regtyp    41-41    ///
  byte    ml09a_dwtype    42-43    ///
  byte    ml09a_walls     44-44    ///
  byte    ml09a_roof      45-45    ///
  byte    ml09a_floor     46-46    ///
  byte    ml09a_light     47-48    ///
  byte    ml09a_watsrc    49-50    ///
  byte    ml09a_fuelck    51-52    ///
  byte    ml09a_toilet    53-54    ///
  byte    ml09a_ownershp  55-56    ///
  byte    ml09a_rooms     57-58    ///
  byte    ml09a_stove     59-59    ///
  byte    ml09a_trash     60-61    ///
  byte    ml09a_sewer     62-63    ///
  byte    ml09a_death12m  64-64    ///
  byte    ml09a_ndeaths   65-65    ///
  byte    ml09a_emighh    66-66    ///
  byte    ml09a_nemighh   67-67    ///
  byte    ml09a_migrecs   68-68    ///
  byte    ml09a_nmort     69-69    ///
  int     pernum          70-72    ///
  float   wtper           73-80    ///
  byte    ml09a_pernum    81-82    ///
  byte    ml09a_sex       83-83    ///
  byte    ml09a_relate    84-85    ///
  byte    ml09a_resident  86-86    ///
  byte    ml09a_religion  87-87    ///
  byte    ml09a_brthreg   88-88    ///
  byte    ml09a_birthmo   89-90    ///
  int     ml09a_birthyr   91-94    ///
  byte    ml09a_age       95-96    ///
  byte    ml09a_agemo     97-98    ///
  int     ml09a_bplctry   99-101   ///
  byte    ml09a_bplregn   102-103  ///
  byte    ml09a_bpl       104-105  ///
  int     ml09a_nation    106-108  ///
  byte    ml09a_disab     109-109  ///
  int     ml09a_prevctry  110-112  ///
  byte    ml09a_prevres2  113-114  ///
  byte    ml09a_prevres   115-116  ///
  byte    ml09a_durres    117-118  ///
  byte    ml09a_livfat    119-119  ///
  byte    ml09a_livmot    120-120  ///
  byte    ml09a_school    121-121  ///
  byte    ml09a_edlevel   122-123  ///
  byte    ml09a_class     124-125  ///
  int     ml09a_edattend  126-129  ///
  byte    ml09a_diploma   130-131  ///
  byte    ml09a_langnat   132-133  ///
  byte    ml09a_langflu   134-135  ///
  byte    ml09a_empstat   136-137  ///
  int     ml09a_occ       138-141  ///
  byte    ml09a_classwk   142-143  ///
  byte    ml09a_ind       144-145  ///
  byte    ml09a_agric     146-147  ///
  byte    ml09a_marst     148-148  ///
  byte    ml09a_lit       149-149  ///
  byte    ml09a_chbornm   150-151  ///
  byte    ml09a_chbornf   152-153  ///
  byte    ml09a_chsurvm   154-155  ///
  byte    ml09a_chsurvf   156-157  ///
  byte    ml09a_bth12mal  158-158  ///
  byte    ml09a_bthfem12  159-159  ///
  using `"ipumsi_00091.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var ml09a_dwnum    `"Dwelling number"'
label var ml09a_pern     `"Number of persons in household"'
label var ml09a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var ml09a_region   `"Region"'
label var ml09a_circle   `"Circle"'
label var ml09a_area     `"Area"'
label var ml09a_urban    `"Urban"'
label var ml09a_typehh   `"Household type"'
label var ml09a_emigmal  `"Male emigrants"'
label var ml09a_emigfem  `"Female emigrants"'
label var ml09a_emigtot  `"Total emigrants"'
label var ml09a_regtyp   `"Mobile dwelling"'
label var ml09a_dwtype   `"Type of dwelling"'
label var ml09a_walls    `"Main material of walls"'
label var ml09a_roof     `"Main material of roof"'
label var ml09a_floor    `"Main material of floor"'
label var ml09a_light    `"Main method of lighting"'
label var ml09a_watsrc   `"Main source of drinking water"'
label var ml09a_fuelck   `"Main source of cooking fuel"'
label var ml09a_toilet   `"Type of toilet"'
label var ml09a_ownershp `"Occupancy status"'
label var ml09a_rooms    `"Number of occupied rooms"'
label var ml09a_stove    `"Presence of improved stove"'
label var ml09a_trash    `"Trash disposal method"'
label var ml09a_sewer    `"Used water disposal method"'
label var ml09a_death12m `"Any deaths in the household in the past 12 months"'
label var ml09a_ndeaths  `"Number of persons deceased"'
label var ml09a_emighh   `"Any member of the household emigrated in the past 12 months"'
label var ml09a_nemighh  `"Number of emigrants in past 12 months"'
label var ml09a_migrecs  `"Number of migration records"'
label var ml09a_nmort    `"Number of mortality records"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var ml09a_pernum   `"Person number (within household)"'
label var ml09a_sex      `"Sex"'
label var ml09a_relate   `"Relationship to head of household"'
label var ml09a_resident `"Residential status"'
label var ml09a_religion `"Religion"'
label var ml09a_brthreg  `"Birth registration"'
label var ml09a_birthmo  `"Month of birth"'
label var ml09a_birthyr  `"Year of birth"'
label var ml09a_age      `"Age"'
label var ml09a_agemo    `"Age in months"'
label var ml09a_bplctry  `"Country of birth"'
label var ml09a_bplregn  `"Region of birth"'
label var ml09a_bpl      `"Circle of birth"'
label var ml09a_nation   `"Nationality"'
label var ml09a_disab    `"Disability"'
label var ml09a_prevctry `"Country of previous residence"'
label var ml09a_prevres2 `"Region of previous residence"'
label var ml09a_prevres  `"Circle of previous residence"'
label var ml09a_durres   `"Length of residence or stay in years"'
label var ml09a_livfat   `"Father alive"'
label var ml09a_livmot   `"Mother alive"'
label var ml09a_school   `"School attendance"'
label var ml09a_edlevel  `"Education level"'
label var ml09a_class    `"Highest class attended within education level"'
label var ml09a_edattend `"Highest class attended within education level"'
label var ml09a_diploma  `"Highest diploma attained"'
label var ml09a_langnat  `"Native language"'
label var ml09a_langflu  `"Language spoken fluently"'
label var ml09a_empstat  `"Activity status"'
label var ml09a_occ      `"Principal occupation"'
label var ml09a_classwk  `"Situation in principal occupation"'
label var ml09a_ind      `"Industry"'
label var ml09a_agric    `"Agricultural activities"'
label var ml09a_marst    `"Marital status"'
label var ml09a_lit      `"Literacy"'
label var ml09a_chbornm  `"Male live births"'
label var ml09a_chbornf  `"Female live births"'
label var ml09a_chsurvm  `"Surviving male children"'
label var ml09a_chsurvf  `"Surviving female children"'
label var ml09a_bth12mal `"Female births in last 12 months"'
label var ml09a_bthfem12 `"Male births in last 12 months"'

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

label define ml09a_pern_lbl 01 `"1"'
label define ml09a_pern_lbl 02 `"2"', add
label define ml09a_pern_lbl 03 `"3"', add
label define ml09a_pern_lbl 04 `"4"', add
label define ml09a_pern_lbl 05 `"5"', add
label define ml09a_pern_lbl 06 `"6"', add
label define ml09a_pern_lbl 07 `"7"', add
label define ml09a_pern_lbl 08 `"8"', add
label define ml09a_pern_lbl 09 `"9"', add
label define ml09a_pern_lbl 10 `"10"', add
label define ml09a_pern_lbl 11 `"11"', add
label define ml09a_pern_lbl 12 `"12"', add
label define ml09a_pern_lbl 13 `"13"', add
label define ml09a_pern_lbl 14 `"14"', add
label define ml09a_pern_lbl 15 `"15"', add
label define ml09a_pern_lbl 16 `"16"', add
label define ml09a_pern_lbl 17 `"17"', add
label define ml09a_pern_lbl 18 `"18"', add
label define ml09a_pern_lbl 19 `"19"', add
label define ml09a_pern_lbl 20 `"20"', add
label define ml09a_pern_lbl 21 `"21"', add
label define ml09a_pern_lbl 22 `"22"', add
label define ml09a_pern_lbl 23 `"23"', add
label define ml09a_pern_lbl 24 `"24"', add
label define ml09a_pern_lbl 25 `"25"', add
label define ml09a_pern_lbl 26 `"26"', add
label define ml09a_pern_lbl 27 `"27"', add
label define ml09a_pern_lbl 28 `"28"', add
label define ml09a_pern_lbl 29 `"29"', add
label define ml09a_pern_lbl 30 `"30"', add
label define ml09a_pern_lbl 31 `"31"', add
label define ml09a_pern_lbl 32 `"32"', add
label define ml09a_pern_lbl 33 `"33"', add
label define ml09a_pern_lbl 34 `"34"', add
label define ml09a_pern_lbl 35 `"35"', add
label define ml09a_pern_lbl 36 `"36"', add
label define ml09a_pern_lbl 37 `"37"', add
label define ml09a_pern_lbl 38 `"38"', add
label define ml09a_pern_lbl 39 `"39"', add
label define ml09a_pern_lbl 40 `"40"', add
label define ml09a_pern_lbl 41 `"41"', add
label define ml09a_pern_lbl 42 `"42"', add
label define ml09a_pern_lbl 43 `"43"', add
label define ml09a_pern_lbl 44 `"44"', add
label define ml09a_pern_lbl 45 `"45"', add
label define ml09a_pern_lbl 46 `"46"', add
label define ml09a_pern_lbl 47 `"47"', add
label define ml09a_pern_lbl 48 `"48"', add
label define ml09a_pern_lbl 49 `"49"', add
label define ml09a_pern_lbl 50 `"50"', add
label define ml09a_pern_lbl 51 `"51"', add
label define ml09a_pern_lbl 52 `"52"', add
label define ml09a_pern_lbl 53 `"53"', add
label define ml09a_pern_lbl 54 `"54"', add
label define ml09a_pern_lbl 55 `"55"', add
label define ml09a_pern_lbl 56 `"56"', add
label define ml09a_pern_lbl 57 `"57"', add
label define ml09a_pern_lbl 58 `"58"', add
label define ml09a_pern_lbl 59 `"59"', add
label define ml09a_pern_lbl 60 `"60"', add
label define ml09a_pern_lbl 61 `"61"', add
label define ml09a_pern_lbl 62 `"62"', add
label define ml09a_pern_lbl 63 `"63"', add
label define ml09a_pern_lbl 64 `"64"', add
label define ml09a_pern_lbl 65 `"65"', add
label define ml09a_pern_lbl 66 `"66"', add
label define ml09a_pern_lbl 67 `"67"', add
label define ml09a_pern_lbl 69 `"69"', add
label define ml09a_pern_lbl 72 `"72"', add
label define ml09a_pern_lbl 73 `"73"', add
label define ml09a_pern_lbl 74 `"74"', add
label define ml09a_pern_lbl 75 `"75"', add
label define ml09a_pern_lbl 76 `"76"', add
label define ml09a_pern_lbl 77 `"77"', add
label define ml09a_pern_lbl 78 `"78"', add
label define ml09a_pern_lbl 79 `"79"', add
label define ml09a_pern_lbl 81 `"81"', add
label define ml09a_pern_lbl 82 `"82"', add
label define ml09a_pern_lbl 83 `"83"', add
label define ml09a_pern_lbl 84 `"84"', add
label values ml09a_pern ml09a_pern_lbl

label define ml09a_fbig_lbl 0 `"No problem"'
label define ml09a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define ml09a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values ml09a_fbig ml09a_fbig_lbl

label define ml09a_region_lbl 1 `"Kayes"'
label define ml09a_region_lbl 2 `"Koulikoro"', add
label define ml09a_region_lbl 3 `"Sikasso"', add
label define ml09a_region_lbl 4 `"Segou"', add
label define ml09a_region_lbl 5 `"Mopti"', add
label define ml09a_region_lbl 6 `"Tombouctou"', add
label define ml09a_region_lbl 7 `"Gao"', add
label define ml09a_region_lbl 8 `"Kidal"', add
label define ml09a_region_lbl 9 `"Bamako"', add
label values ml09a_region ml09a_region_lbl

label define ml09a_circle_lbl 11 `"Kayes"'
label define ml09a_circle_lbl 12 `"Bafoulabé"', add
label define ml09a_circle_lbl 13 `"Diéma"', add
label define ml09a_circle_lbl 14 `"Kéniéba"', add
label define ml09a_circle_lbl 15 `"Kita"', add
label define ml09a_circle_lbl 16 `"Nioro"', add
label define ml09a_circle_lbl 17 `"Yélimané"', add
label define ml09a_circle_lbl 21 `"Koulikoro"', add
label define ml09a_circle_lbl 22 `"Banamba"', add
label define ml09a_circle_lbl 23 `"Dioila"', add
label define ml09a_circle_lbl 24 `"Kangaba"', add
label define ml09a_circle_lbl 25 `"Kati"', add
label define ml09a_circle_lbl 26 `"Kolokani"', add
label define ml09a_circle_lbl 27 `"Nara"', add
label define ml09a_circle_lbl 31 `"Sikasso"', add
label define ml09a_circle_lbl 32 `"Bougouni"', add
label define ml09a_circle_lbl 33 `"Kadiolo"', add
label define ml09a_circle_lbl 34 `"Kolondiéba"', add
label define ml09a_circle_lbl 35 `"Koutiala"', add
label define ml09a_circle_lbl 36 `"Yanfolila"', add
label define ml09a_circle_lbl 37 `"Yorosso"', add
label define ml09a_circle_lbl 41 `"Ségou"', add
label define ml09a_circle_lbl 42 `"Baraouéli"', add
label define ml09a_circle_lbl 43 `"Bla"', add
label define ml09a_circle_lbl 44 `"Macina"', add
label define ml09a_circle_lbl 45 `"Niono"', add
label define ml09a_circle_lbl 46 `"San"', add
label define ml09a_circle_lbl 47 `"Tominian"', add
label define ml09a_circle_lbl 51 `"Mopti"', add
label define ml09a_circle_lbl 52 `"Bandiagara"', add
label define ml09a_circle_lbl 53 `"Bankass"', add
label define ml09a_circle_lbl 54 `"Djénné"', add
label define ml09a_circle_lbl 55 `"Douentza"', add
label define ml09a_circle_lbl 56 `"Koro"', add
label define ml09a_circle_lbl 57 `"Ténenkou"', add
label define ml09a_circle_lbl 58 `"Youwarou"', add
label define ml09a_circle_lbl 61 `"Tombouctou"', add
label define ml09a_circle_lbl 62 `"Diré"', add
label define ml09a_circle_lbl 63 `"Goundam"', add
label define ml09a_circle_lbl 64 `"Gourma Rharous"', add
label define ml09a_circle_lbl 65 `"Niafunké"', add
label define ml09a_circle_lbl 71 `"Gao"', add
label define ml09a_circle_lbl 72 `"Ansongo"', add
label define ml09a_circle_lbl 73 `"Bourem"', add
label define ml09a_circle_lbl 74 `"Ménaka"', add
label define ml09a_circle_lbl 81 `"Provinces in the Kidal region"', add
label define ml09a_circle_lbl 91 `"District of Bamako"', add
label values ml09a_circle ml09a_circle_lbl

label define ml09a_area_lbl 1 `"Bamako"'
label define ml09a_area_lbl 2 `"Other urban"', add
label define ml09a_area_lbl 3 `"Rural"', add
label values ml09a_area ml09a_area_lbl

label define ml09a_urban_lbl 1 `"Urban"'
label define ml09a_urban_lbl 2 `"Rural"', add
label values ml09a_urban ml09a_urban_lbl

label define ml09a_typehh_lbl 1 `"Settled"'
label define ml09a_typehh_lbl 2 `"Nomad"', add
label values ml09a_typehh ml09a_typehh_lbl

label define ml09a_emigmal_lbl 0 `"0"'
label define ml09a_emigmal_lbl 1 `"1"', add
label define ml09a_emigmal_lbl 2 `"2"', add
label define ml09a_emigmal_lbl 3 `"3"', add
label define ml09a_emigmal_lbl 4 `"4+"', add
label values ml09a_emigmal ml09a_emigmal_lbl

label define ml09a_emigfem_lbl 0 `"0"'
label define ml09a_emigfem_lbl 1 `"1"', add
label define ml09a_emigfem_lbl 2 `"2+"', add
label values ml09a_emigfem ml09a_emigfem_lbl

label define ml09a_emigtot_lbl 0 `"0"'
label define ml09a_emigtot_lbl 1 `"1"', add
label define ml09a_emigtot_lbl 2 `"2"', add
label define ml09a_emigtot_lbl 3 `"3"', add
label define ml09a_emigtot_lbl 4 `"4"', add
label define ml09a_emigtot_lbl 5 `"5+"', add
label values ml09a_emigtot ml09a_emigtot_lbl

label define ml09a_regtyp_lbl 1 `"Fixed"'
label define ml09a_regtyp_lbl 2 `"Mobile"', add
label define ml09a_regtyp_lbl 9 `"Unknown"', add
label values ml09a_regtyp ml09a_regtyp_lbl

label define ml09a_dwtype_lbl 01 `"Apartment building"'
label define ml09a_dwtype_lbl 02 `"Villa"', add
label define ml09a_dwtype_lbl 03 `"Simple individual house"', add
label define ml09a_dwtype_lbl 04 `"Concession with several dwellings"', add
label define ml09a_dwtype_lbl 05 `"Hut"', add
label define ml09a_dwtype_lbl 06 `"Tent"', add
label define ml09a_dwtype_lbl 07 `"Precarious dwelling or shack"', add
label define ml09a_dwtype_lbl 08 `"Other"', add
label define ml09a_dwtype_lbl 99 `"Unknown"', add
label values ml09a_dwtype ml09a_dwtype_lbl

label define ml09a_walls_lbl 1 `"Hard"'
label define ml09a_walls_lbl 2 `"Semi hard"', add
label define ml09a_walls_lbl 3 `"Mudbrick"', add
label define ml09a_walls_lbl 4 `"Wood or straw"', add
label define ml09a_walls_lbl 5 `"Other"', add
label define ml09a_walls_lbl 9 `"Unknown"', add
label values ml09a_walls ml09a_walls_lbl

label define ml09a_roof_lbl 1 `"Sheet metal only"'
label define ml09a_roof_lbl 2 `"Sheet metal with ceiling"', add
label define ml09a_roof_lbl 3 `"Tile"', add
label define ml09a_roof_lbl 4 `"Concrete"', add
label define ml09a_roof_lbl 5 `"Mudbrick"', add
label define ml09a_roof_lbl 6 `"Thatch"', add
label define ml09a_roof_lbl 7 `"Other"', add
label define ml09a_roof_lbl 9 `"Unknown"', add
label values ml09a_roof ml09a_roof_lbl

label define ml09a_floor_lbl 1 `"Cement"'
label define ml09a_floor_lbl 2 `"Tile"', add
label define ml09a_floor_lbl 3 `"Beaten earth"', add
label define ml09a_floor_lbl 4 `"Other"', add
label define ml09a_floor_lbl 9 `"Unknown"', add
label values ml09a_floor ml09a_floor_lbl

label define ml09a_light_lbl 01 `"Electricity (Electricity of Mali)"'
label define ml09a_light_lbl 02 `"Rural electrification or multifunction platform"', add
label define ml09a_light_lbl 03 `"Generator"', add
label define ml09a_light_lbl 04 `"Solar panel"', add
label define ml09a_light_lbl 05 `"Gas"', add
label define ml09a_light_lbl 06 `"Petroleum lamp"', add
label define ml09a_light_lbl 07 `"Oil lamp"', add
label define ml09a_light_lbl 08 `"Flashlight (batteries)"', add
label define ml09a_light_lbl 09 `"Other"', add
label define ml09a_light_lbl 99 `"Unknown"', add
label values ml09a_light ml09a_light_lbl

label define ml09a_watsrc_lbl 01 `"Tap"'
label define ml09a_watsrc_lbl 02 `"Bore hole"', add
label define ml09a_watsrc_lbl 03 `"Improved well"', add
label define ml09a_watsrc_lbl 04 `"Traditional well"', add
label define ml09a_watsrc_lbl 05 `"Public tap"', add
label define ml09a_watsrc_lbl 06 `"Surface water"', add
label define ml09a_watsrc_lbl 07 `"Other"', add
label define ml09a_watsrc_lbl 99 `"Unknown"', add
label values ml09a_watsrc ml09a_watsrc_lbl

label define ml09a_fuelck_lbl 01 `"Electricity"'
label define ml09a_fuelck_lbl 02 `"Gas"', add
label define ml09a_fuelck_lbl 03 `"Petroleum"', add
label define ml09a_fuelck_lbl 04 `"Wood"', add
label define ml09a_fuelck_lbl 05 `"Charcoal"', add
label define ml09a_fuelck_lbl 06 `"Animal dung"', add
label define ml09a_fuelck_lbl 07 `"Solar oven"', add
label define ml09a_fuelck_lbl 08 `"Other"', add
label define ml09a_fuelck_lbl 99 `"Unknown"', add
label values ml09a_fuelck ml09a_fuelck_lbl

label define ml09a_toilet_lbl 01 `"Indoor private with flush"'
label define ml09a_toilet_lbl 02 `"Outdoor private with flush"', add
label define ml09a_toilet_lbl 03 `"Communal to several households with flush"', add
label define ml09a_toilet_lbl 04 `"Private latrine"', add
label define ml09a_toilet_lbl 05 `"Communal latrine"', add
label define ml09a_toilet_lbl 06 `"Nature or field"', add
label define ml09a_toilet_lbl 07 `"Other"', add
label define ml09a_toilet_lbl 99 `"Unknown"', add
label values ml09a_toilet ml09a_toilet_lbl

label define ml09a_ownershp_lbl 01 `"Owner with property title"'
label define ml09a_ownershp_lbl 02 `"Owner without property title"', add
label define ml09a_ownershp_lbl 03 `"Co-owner"', add
label define ml09a_ownershp_lbl 04 `"Renter"', add
label define ml09a_ownershp_lbl 05 `"Hire purchase"', add
label define ml09a_ownershp_lbl 06 `"Lodged for free"', add
label define ml09a_ownershp_lbl 07 `"Other"', add
label define ml09a_ownershp_lbl 99 `"Unknown"', add
label values ml09a_ownershp ml09a_ownershp_lbl

label define ml09a_rooms_lbl 00 `"0"'
label define ml09a_rooms_lbl 01 `"1"', add
label define ml09a_rooms_lbl 02 `"2"', add
label define ml09a_rooms_lbl 03 `"3"', add
label define ml09a_rooms_lbl 04 `"4"', add
label define ml09a_rooms_lbl 05 `"5"', add
label define ml09a_rooms_lbl 06 `"6"', add
label define ml09a_rooms_lbl 07 `"7"', add
label define ml09a_rooms_lbl 08 `"8"', add
label define ml09a_rooms_lbl 09 `"9"', add
label define ml09a_rooms_lbl 10 `"10"', add
label define ml09a_rooms_lbl 11 `"11"', add
label define ml09a_rooms_lbl 12 `"12"', add
label define ml09a_rooms_lbl 13 `"13"', add
label define ml09a_rooms_lbl 14 `"14"', add
label define ml09a_rooms_lbl 15 `"15"', add
label define ml09a_rooms_lbl 16 `"16"', add
label define ml09a_rooms_lbl 17 `"17"', add
label define ml09a_rooms_lbl 18 `"18+"', add
label values ml09a_rooms ml09a_rooms_lbl

label define ml09a_stove_lbl 1 `"Yes"'
label define ml09a_stove_lbl 2 `"No"', add
label define ml09a_stove_lbl 9 `"Unknown"', add
label values ml09a_stove ml09a_stove_lbl

label define ml09a_trash_lbl 01 `"Private collection"'
label define ml09a_trash_lbl 02 `"Truck or collection"', add
label define ml09a_trash_lbl 03 `"Communal trash can"', add
label define ml09a_trash_lbl 04 `"GIE"', add
label define ml09a_trash_lbl 05 `"Trash pile"', add
label define ml09a_trash_lbl 06 `"Ditch"', add
label define ml09a_trash_lbl 07 `"Street"', add
label define ml09a_trash_lbl 08 `"Nature or field"', add
label define ml09a_trash_lbl 09 `"Other"', add
label define ml09a_trash_lbl 99 `"Unknown"', add
label values ml09a_trash ml09a_trash_lbl

label define ml09a_sewer_lbl 01 `"Courtyard"'
label define ml09a_sewer_lbl 02 `"Street"', add
label define ml09a_sewer_lbl 03 `"Soak pit"', add
label define ml09a_sewer_lbl 04 `"Truck or collection"', add
label define ml09a_sewer_lbl 05 `"Septic tank"', add
label define ml09a_sewer_lbl 06 `"Sewer system"', add
label define ml09a_sewer_lbl 07 `"Nature or field"', add
label define ml09a_sewer_lbl 08 `"Other"', add
label define ml09a_sewer_lbl 99 `"Unknown"', add
label values ml09a_sewer ml09a_sewer_lbl

label define ml09a_death12m_lbl 1 `"Yes"'
label define ml09a_death12m_lbl 2 `"No"', add
label define ml09a_death12m_lbl 9 `"Unknown"', add
label values ml09a_death12m ml09a_death12m_lbl

label define ml09a_ndeaths_lbl 0 `"0"'
label define ml09a_ndeaths_lbl 1 `"1"', add
label define ml09a_ndeaths_lbl 2 `"2"', add
label define ml09a_ndeaths_lbl 3 `"3"', add
label define ml09a_ndeaths_lbl 4 `"4+"', add
label values ml09a_ndeaths ml09a_ndeaths_lbl

label define ml09a_emighh_lbl 1 `"Yes"'
label define ml09a_emighh_lbl 2 `"No"', add
label define ml09a_emighh_lbl 9 `"Unknown"', add
label values ml09a_emighh ml09a_emighh_lbl

label define ml09a_nemighh_lbl 0 `"0"'
label define ml09a_nemighh_lbl 1 `"1"', add
label define ml09a_nemighh_lbl 2 `"2"', add
label define ml09a_nemighh_lbl 3 `"3"', add
label define ml09a_nemighh_lbl 4 `"4"', add
label define ml09a_nemighh_lbl 5 `"5"', add
label define ml09a_nemighh_lbl 6 `"6+"', add
label values ml09a_nemighh ml09a_nemighh_lbl

label define ml09a_migrecs_lbl 0 `"0"'
label define ml09a_migrecs_lbl 1 `"1"', add
label define ml09a_migrecs_lbl 2 `"2"', add
label define ml09a_migrecs_lbl 3 `"3"', add
label define ml09a_migrecs_lbl 4 `"4"', add
label define ml09a_migrecs_lbl 5 `"5"', add
label define ml09a_migrecs_lbl 6 `"6+"', add
label values ml09a_migrecs ml09a_migrecs_lbl

label define ml09a_nmort_lbl 0 `"0"'
label define ml09a_nmort_lbl 1 `"1"', add
label define ml09a_nmort_lbl 2 `"2"', add
label define ml09a_nmort_lbl 3 `"3+"', add
label values ml09a_nmort ml09a_nmort_lbl

label define ml09a_pernum_lbl 00 `"Household record"'
label define ml09a_pernum_lbl 01 `"1"', add
label define ml09a_pernum_lbl 02 `"2"', add
label define ml09a_pernum_lbl 03 `"3"', add
label define ml09a_pernum_lbl 04 `"4"', add
label define ml09a_pernum_lbl 05 `"5"', add
label define ml09a_pernum_lbl 06 `"6"', add
label define ml09a_pernum_lbl 07 `"7"', add
label define ml09a_pernum_lbl 08 `"8"', add
label define ml09a_pernum_lbl 09 `"9"', add
label define ml09a_pernum_lbl 10 `"10"', add
label define ml09a_pernum_lbl 11 `"11"', add
label define ml09a_pernum_lbl 12 `"12"', add
label define ml09a_pernum_lbl 13 `"13"', add
label define ml09a_pernum_lbl 14 `"14"', add
label define ml09a_pernum_lbl 15 `"15"', add
label define ml09a_pernum_lbl 16 `"16"', add
label define ml09a_pernum_lbl 17 `"17"', add
label define ml09a_pernum_lbl 18 `"18"', add
label define ml09a_pernum_lbl 19 `"19"', add
label define ml09a_pernum_lbl 20 `"20"', add
label define ml09a_pernum_lbl 21 `"21"', add
label define ml09a_pernum_lbl 22 `"22"', add
label define ml09a_pernum_lbl 23 `"23"', add
label define ml09a_pernum_lbl 24 `"24"', add
label define ml09a_pernum_lbl 25 `"25"', add
label define ml09a_pernum_lbl 26 `"26"', add
label define ml09a_pernum_lbl 27 `"27"', add
label define ml09a_pernum_lbl 28 `"28"', add
label define ml09a_pernum_lbl 29 `"29"', add
label define ml09a_pernum_lbl 30 `"30"', add
label define ml09a_pernum_lbl 31 `"31"', add
label define ml09a_pernum_lbl 32 `"32"', add
label define ml09a_pernum_lbl 33 `"33"', add
label define ml09a_pernum_lbl 34 `"34"', add
label define ml09a_pernum_lbl 35 `"35"', add
label define ml09a_pernum_lbl 36 `"36"', add
label define ml09a_pernum_lbl 37 `"37"', add
label define ml09a_pernum_lbl 38 `"38"', add
label define ml09a_pernum_lbl 39 `"39"', add
label define ml09a_pernum_lbl 40 `"40"', add
label define ml09a_pernum_lbl 41 `"41"', add
label define ml09a_pernum_lbl 42 `"42"', add
label define ml09a_pernum_lbl 43 `"43"', add
label define ml09a_pernum_lbl 44 `"44"', add
label define ml09a_pernum_lbl 45 `"45"', add
label define ml09a_pernum_lbl 46 `"46"', add
label define ml09a_pernum_lbl 47 `"47"', add
label define ml09a_pernum_lbl 48 `"48"', add
label define ml09a_pernum_lbl 49 `"49"', add
label define ml09a_pernum_lbl 50 `"50"', add
label define ml09a_pernum_lbl 51 `"51"', add
label define ml09a_pernum_lbl 52 `"52"', add
label define ml09a_pernum_lbl 53 `"53"', add
label define ml09a_pernum_lbl 54 `"54"', add
label define ml09a_pernum_lbl 55 `"55"', add
label define ml09a_pernum_lbl 56 `"56"', add
label define ml09a_pernum_lbl 57 `"57"', add
label define ml09a_pernum_lbl 58 `"58"', add
label define ml09a_pernum_lbl 59 `"59"', add
label define ml09a_pernum_lbl 60 `"60"', add
label define ml09a_pernum_lbl 61 `"61"', add
label define ml09a_pernum_lbl 62 `"62"', add
label define ml09a_pernum_lbl 63 `"63"', add
label define ml09a_pernum_lbl 64 `"64"', add
label define ml09a_pernum_lbl 65 `"65"', add
label define ml09a_pernum_lbl 66 `"66"', add
label define ml09a_pernum_lbl 67 `"67"', add
label define ml09a_pernum_lbl 68 `"68"', add
label define ml09a_pernum_lbl 69 `"69"', add
label define ml09a_pernum_lbl 70 `"70"', add
label define ml09a_pernum_lbl 71 `"71"', add
label define ml09a_pernum_lbl 72 `"72"', add
label define ml09a_pernum_lbl 73 `"73"', add
label define ml09a_pernum_lbl 74 `"74"', add
label define ml09a_pernum_lbl 75 `"75"', add
label define ml09a_pernum_lbl 76 `"76"', add
label define ml09a_pernum_lbl 77 `"77"', add
label define ml09a_pernum_lbl 78 `"78"', add
label define ml09a_pernum_lbl 79 `"79"', add
label define ml09a_pernum_lbl 80 `"80"', add
label define ml09a_pernum_lbl 81 `"81"', add
label define ml09a_pernum_lbl 82 `"82"', add
label define ml09a_pernum_lbl 83 `"83"', add
label define ml09a_pernum_lbl 84 `"84"', add
label values ml09a_pernum ml09a_pernum_lbl

label define ml09a_sex_lbl 1 `"Male"'
label define ml09a_sex_lbl 2 `"Female"', add
label values ml09a_sex ml09a_sex_lbl

label define ml09a_relate_lbl 01 `"Head of household"'
label define ml09a_relate_lbl 02 `"Spouse of head of household"', add
label define ml09a_relate_lbl 03 `"Son or daughter of head of household"', add
label define ml09a_relate_lbl 04 `"Brother or sister of head of household"', add
label define ml09a_relate_lbl 05 `"Father or mother of head of household"', add
label define ml09a_relate_lbl 06 `"Grandchild"', add
label define ml09a_relate_lbl 07 `"Nephew or niece"', add
label define ml09a_relate_lbl 08 `"Uncle or aunt"', add
label define ml09a_relate_lbl 09 `"Son- or daughter-in-law"', add
label define ml09a_relate_lbl 10 `"Other relative of head of household"', add
label define ml09a_relate_lbl 11 `"Servant"', add
label define ml09a_relate_lbl 12 `"Non-relative"', add
label values ml09a_relate ml09a_relate_lbl

label define ml09a_resident_lbl 1 `"Resident present"'
label define ml09a_resident_lbl 2 `"Resident absent"', add
label values ml09a_resident ml09a_resident_lbl

label define ml09a_religion_lbl 1 `"Muslim"'
label define ml09a_religion_lbl 2 `"Christian"', add
label define ml09a_religion_lbl 3 `"Animist"', add
label define ml09a_religion_lbl 4 `"Other religion"', add
label define ml09a_religion_lbl 5 `"No religion"', add
label define ml09a_religion_lbl 9 `"Unknown"', add
label values ml09a_religion ml09a_religion_lbl

label define ml09a_brthreg_lbl 1 `"Yes"'
label define ml09a_brthreg_lbl 2 `"No"', add
label define ml09a_brthreg_lbl 3 `"Respondent does not know"', add
label define ml09a_brthreg_lbl 9 `"Unknown"', add
label values ml09a_brthreg ml09a_brthreg_lbl

label define ml09a_birthmo_lbl 01 `"January"'
label define ml09a_birthmo_lbl 02 `"February"', add
label define ml09a_birthmo_lbl 03 `"March"', add
label define ml09a_birthmo_lbl 04 `"April"', add
label define ml09a_birthmo_lbl 05 `"May"', add
label define ml09a_birthmo_lbl 06 `"June"', add
label define ml09a_birthmo_lbl 07 `"July"', add
label define ml09a_birthmo_lbl 08 `"August"', add
label define ml09a_birthmo_lbl 09 `"September"', add
label define ml09a_birthmo_lbl 10 `"October"', add
label define ml09a_birthmo_lbl 11 `"November"', add
label define ml09a_birthmo_lbl 12 `"December"', add
label define ml09a_birthmo_lbl 99 `"Unknown"', add
label values ml09a_birthmo ml09a_birthmo_lbl

label define ml09a_birthyr_lbl 1909 `"1909 or earlier"'
label define ml09a_birthyr_lbl 1910 `"1910"', add
label define ml09a_birthyr_lbl 1911 `"1911"', add
label define ml09a_birthyr_lbl 1912 `"1912"', add
label define ml09a_birthyr_lbl 1913 `"1913"', add
label define ml09a_birthyr_lbl 1914 `"1914"', add
label define ml09a_birthyr_lbl 1915 `"1915"', add
label define ml09a_birthyr_lbl 1916 `"1916"', add
label define ml09a_birthyr_lbl 1917 `"1917"', add
label define ml09a_birthyr_lbl 1918 `"1918"', add
label define ml09a_birthyr_lbl 1919 `"1919"', add
label define ml09a_birthyr_lbl 1920 `"1920"', add
label define ml09a_birthyr_lbl 1921 `"1921"', add
label define ml09a_birthyr_lbl 1922 `"1922"', add
label define ml09a_birthyr_lbl 1923 `"1923"', add
label define ml09a_birthyr_lbl 1924 `"1924"', add
label define ml09a_birthyr_lbl 1925 `"1925"', add
label define ml09a_birthyr_lbl 1926 `"1926"', add
label define ml09a_birthyr_lbl 1927 `"1927"', add
label define ml09a_birthyr_lbl 1928 `"1928"', add
label define ml09a_birthyr_lbl 1929 `"1929"', add
label define ml09a_birthyr_lbl 1930 `"1930"', add
label define ml09a_birthyr_lbl 1931 `"1931"', add
label define ml09a_birthyr_lbl 1932 `"1932"', add
label define ml09a_birthyr_lbl 1933 `"1933"', add
label define ml09a_birthyr_lbl 1934 `"1934"', add
label define ml09a_birthyr_lbl 1935 `"1935"', add
label define ml09a_birthyr_lbl 1936 `"1936"', add
label define ml09a_birthyr_lbl 1937 `"1937"', add
label define ml09a_birthyr_lbl 1938 `"1938"', add
label define ml09a_birthyr_lbl 1939 `"1939"', add
label define ml09a_birthyr_lbl 1940 `"1940"', add
label define ml09a_birthyr_lbl 1941 `"1941"', add
label define ml09a_birthyr_lbl 1942 `"1942"', add
label define ml09a_birthyr_lbl 1943 `"1943"', add
label define ml09a_birthyr_lbl 1944 `"1944"', add
label define ml09a_birthyr_lbl 1945 `"1945"', add
label define ml09a_birthyr_lbl 1946 `"1946"', add
label define ml09a_birthyr_lbl 1947 `"1947"', add
label define ml09a_birthyr_lbl 1948 `"1948"', add
label define ml09a_birthyr_lbl 1949 `"1949"', add
label define ml09a_birthyr_lbl 1950 `"1950"', add
label define ml09a_birthyr_lbl 1951 `"1951"', add
label define ml09a_birthyr_lbl 1952 `"1952"', add
label define ml09a_birthyr_lbl 1953 `"1953"', add
label define ml09a_birthyr_lbl 1954 `"1954"', add
label define ml09a_birthyr_lbl 1955 `"1955"', add
label define ml09a_birthyr_lbl 1956 `"1956"', add
label define ml09a_birthyr_lbl 1957 `"1957"', add
label define ml09a_birthyr_lbl 1958 `"1958"', add
label define ml09a_birthyr_lbl 1959 `"1959"', add
label define ml09a_birthyr_lbl 1960 `"1960"', add
label define ml09a_birthyr_lbl 1961 `"1961"', add
label define ml09a_birthyr_lbl 1962 `"1962"', add
label define ml09a_birthyr_lbl 1963 `"1963"', add
label define ml09a_birthyr_lbl 1964 `"1964"', add
label define ml09a_birthyr_lbl 1965 `"1965"', add
label define ml09a_birthyr_lbl 1966 `"1966"', add
label define ml09a_birthyr_lbl 1967 `"1967"', add
label define ml09a_birthyr_lbl 1968 `"1968"', add
label define ml09a_birthyr_lbl 1969 `"1969"', add
label define ml09a_birthyr_lbl 1970 `"1970"', add
label define ml09a_birthyr_lbl 1971 `"1971"', add
label define ml09a_birthyr_lbl 1972 `"1972"', add
label define ml09a_birthyr_lbl 1973 `"1973"', add
label define ml09a_birthyr_lbl 1974 `"1974"', add
label define ml09a_birthyr_lbl 1975 `"1975"', add
label define ml09a_birthyr_lbl 1976 `"1976"', add
label define ml09a_birthyr_lbl 1977 `"1977"', add
label define ml09a_birthyr_lbl 1978 `"1978"', add
label define ml09a_birthyr_lbl 1979 `"1979"', add
label define ml09a_birthyr_lbl 1980 `"1980"', add
label define ml09a_birthyr_lbl 1981 `"1981"', add
label define ml09a_birthyr_lbl 1982 `"1982"', add
label define ml09a_birthyr_lbl 1983 `"1983"', add
label define ml09a_birthyr_lbl 1984 `"1984"', add
label define ml09a_birthyr_lbl 1985 `"1985"', add
label define ml09a_birthyr_lbl 1986 `"1986"', add
label define ml09a_birthyr_lbl 1987 `"1987"', add
label define ml09a_birthyr_lbl 1988 `"1988"', add
label define ml09a_birthyr_lbl 1989 `"1989"', add
label define ml09a_birthyr_lbl 1990 `"1990"', add
label define ml09a_birthyr_lbl 1991 `"1991"', add
label define ml09a_birthyr_lbl 1992 `"1992"', add
label define ml09a_birthyr_lbl 1993 `"1993"', add
label define ml09a_birthyr_lbl 1994 `"1994"', add
label define ml09a_birthyr_lbl 1995 `"1995"', add
label define ml09a_birthyr_lbl 1996 `"1996"', add
label define ml09a_birthyr_lbl 1997 `"1997"', add
label define ml09a_birthyr_lbl 1998 `"1998"', add
label define ml09a_birthyr_lbl 1999 `"1999"', add
label define ml09a_birthyr_lbl 2000 `"2000"', add
label define ml09a_birthyr_lbl 2001 `"2001"', add
label define ml09a_birthyr_lbl 2002 `"2002"', add
label define ml09a_birthyr_lbl 2003 `"2003"', add
label define ml09a_birthyr_lbl 2004 `"2004"', add
label define ml09a_birthyr_lbl 2005 `"2005"', add
label define ml09a_birthyr_lbl 2006 `"2006"', add
label define ml09a_birthyr_lbl 2007 `"2007"', add
label define ml09a_birthyr_lbl 2008 `"2008"', add
label define ml09a_birthyr_lbl 2009 `"2009"', add
label define ml09a_birthyr_lbl 9999 `"Unknown"', add
label values ml09a_birthyr ml09a_birthyr_lbl

label define ml09a_age_lbl 00 `"Less than 1 year"'
label define ml09a_age_lbl 01 `"1"', add
label define ml09a_age_lbl 02 `"2"', add
label define ml09a_age_lbl 03 `"3"', add
label define ml09a_age_lbl 04 `"4"', add
label define ml09a_age_lbl 05 `"5"', add
label define ml09a_age_lbl 06 `"6"', add
label define ml09a_age_lbl 07 `"7"', add
label define ml09a_age_lbl 08 `"8"', add
label define ml09a_age_lbl 09 `"9"', add
label define ml09a_age_lbl 10 `"10"', add
label define ml09a_age_lbl 11 `"11"', add
label define ml09a_age_lbl 12 `"12"', add
label define ml09a_age_lbl 13 `"13"', add
label define ml09a_age_lbl 14 `"14"', add
label define ml09a_age_lbl 15 `"15"', add
label define ml09a_age_lbl 16 `"16"', add
label define ml09a_age_lbl 17 `"17"', add
label define ml09a_age_lbl 18 `"18"', add
label define ml09a_age_lbl 19 `"19"', add
label define ml09a_age_lbl 20 `"20"', add
label define ml09a_age_lbl 21 `"21"', add
label define ml09a_age_lbl 22 `"22"', add
label define ml09a_age_lbl 23 `"23"', add
label define ml09a_age_lbl 24 `"24"', add
label define ml09a_age_lbl 25 `"25"', add
label define ml09a_age_lbl 26 `"26"', add
label define ml09a_age_lbl 27 `"27"', add
label define ml09a_age_lbl 28 `"28"', add
label define ml09a_age_lbl 29 `"29"', add
label define ml09a_age_lbl 30 `"30"', add
label define ml09a_age_lbl 31 `"31"', add
label define ml09a_age_lbl 32 `"32"', add
label define ml09a_age_lbl 33 `"33"', add
label define ml09a_age_lbl 34 `"34"', add
label define ml09a_age_lbl 35 `"35"', add
label define ml09a_age_lbl 36 `"36"', add
label define ml09a_age_lbl 37 `"37"', add
label define ml09a_age_lbl 38 `"38"', add
label define ml09a_age_lbl 39 `"39"', add
label define ml09a_age_lbl 40 `"40"', add
label define ml09a_age_lbl 41 `"41"', add
label define ml09a_age_lbl 42 `"42"', add
label define ml09a_age_lbl 43 `"43"', add
label define ml09a_age_lbl 44 `"44"', add
label define ml09a_age_lbl 45 `"45"', add
label define ml09a_age_lbl 46 `"46"', add
label define ml09a_age_lbl 47 `"47"', add
label define ml09a_age_lbl 48 `"48"', add
label define ml09a_age_lbl 49 `"49"', add
label define ml09a_age_lbl 50 `"50"', add
label define ml09a_age_lbl 51 `"51"', add
label define ml09a_age_lbl 52 `"52"', add
label define ml09a_age_lbl 53 `"53"', add
label define ml09a_age_lbl 54 `"54"', add
label define ml09a_age_lbl 55 `"55"', add
label define ml09a_age_lbl 56 `"56"', add
label define ml09a_age_lbl 57 `"57"', add
label define ml09a_age_lbl 58 `"58"', add
label define ml09a_age_lbl 59 `"59"', add
label define ml09a_age_lbl 60 `"60"', add
label define ml09a_age_lbl 61 `"61"', add
label define ml09a_age_lbl 62 `"62"', add
label define ml09a_age_lbl 63 `"63"', add
label define ml09a_age_lbl 64 `"64"', add
label define ml09a_age_lbl 65 `"65"', add
label define ml09a_age_lbl 66 `"66"', add
label define ml09a_age_lbl 67 `"67"', add
label define ml09a_age_lbl 68 `"68"', add
label define ml09a_age_lbl 69 `"69"', add
label define ml09a_age_lbl 70 `"70"', add
label define ml09a_age_lbl 71 `"71"', add
label define ml09a_age_lbl 72 `"72"', add
label define ml09a_age_lbl 73 `"73"', add
label define ml09a_age_lbl 74 `"74"', add
label define ml09a_age_lbl 75 `"75"', add
label define ml09a_age_lbl 76 `"76"', add
label define ml09a_age_lbl 77 `"77"', add
label define ml09a_age_lbl 78 `"78"', add
label define ml09a_age_lbl 79 `"79"', add
label define ml09a_age_lbl 80 `"80"', add
label define ml09a_age_lbl 81 `"81"', add
label define ml09a_age_lbl 82 `"82"', add
label define ml09a_age_lbl 83 `"83"', add
label define ml09a_age_lbl 84 `"84"', add
label define ml09a_age_lbl 85 `"85"', add
label define ml09a_age_lbl 86 `"86"', add
label define ml09a_age_lbl 87 `"87"', add
label define ml09a_age_lbl 88 `"88"', add
label define ml09a_age_lbl 89 `"89"', add
label define ml09a_age_lbl 90 `"90"', add
label define ml09a_age_lbl 91 `"91"', add
label define ml09a_age_lbl 92 `"92"', add
label define ml09a_age_lbl 93 `"93"', add
label define ml09a_age_lbl 94 `"94"', add
label define ml09a_age_lbl 95 `"95"', add
label define ml09a_age_lbl 96 `"96"', add
label define ml09a_age_lbl 97 `"97"', add
label define ml09a_age_lbl 98 `"98+"', add
label define ml09a_age_lbl 99 `"Unknown"', add
label values ml09a_age ml09a_age_lbl

label define ml09a_agemo_lbl 00 `"Less than 1 month"'
label define ml09a_agemo_lbl 01 `"1 month"', add
label define ml09a_agemo_lbl 02 `"2 months"', add
label define ml09a_agemo_lbl 03 `"3"', add
label define ml09a_agemo_lbl 04 `"4"', add
label define ml09a_agemo_lbl 05 `"5"', add
label define ml09a_agemo_lbl 06 `"6"', add
label define ml09a_agemo_lbl 07 `"7"', add
label define ml09a_agemo_lbl 08 `"8"', add
label define ml09a_agemo_lbl 09 `"9"', add
label define ml09a_agemo_lbl 10 `"10"', add
label define ml09a_agemo_lbl 11 `"11"', add
label define ml09a_agemo_lbl 97 `"Less than 1 year, months unknown"', add
label define ml09a_agemo_lbl 98 `"Unknown"', add
label define ml09a_agemo_lbl 99 `"NIU"', add
label values ml09a_agemo ml09a_agemo_lbl

label define ml09a_bplctry_lbl 101 `"South Africa"'
label define ml09a_bplctry_lbl 102 `"Algeria"', add
label define ml09a_bplctry_lbl 103 `"Angola"', add
label define ml09a_bplctry_lbl 104 `"Benin"', add
label define ml09a_bplctry_lbl 106 `"Burkina Faso"', add
label define ml09a_bplctry_lbl 108 `"Cameroon"', add
label define ml09a_bplctry_lbl 111 `"Congo-Brazzaville"', add
label define ml09a_bplctry_lbl 112 `"Democratic Republic of Congo"', add
label define ml09a_bplctry_lbl 113 `"Côte d'Ivoire"', add
label define ml09a_bplctry_lbl 115 `"Egypt"', add
label define ml09a_bplctry_lbl 118 `"Gabon"', add
label define ml09a_bplctry_lbl 119 `"Gambia"', add
label define ml09a_bplctry_lbl 120 `"Ghana"', add
label define ml09a_bplctry_lbl 121 `"Guinea-Bissau"', add
label define ml09a_bplctry_lbl 122 `"Guinea"', add
label define ml09a_bplctry_lbl 123 `"Equatorial Guinea"', add
label define ml09a_bplctry_lbl 127 `"Liberia"', add
label define ml09a_bplctry_lbl 128 `"Libya"', add
label define ml09a_bplctry_lbl 131 `"Mali"', add
label define ml09a_bplctry_lbl 132 `"Morocco"', add
label define ml09a_bplctry_lbl 134 `"Mauritania"', add
label define ml09a_bplctry_lbl 138 `"Niger"', add
label define ml09a_bplctry_lbl 139 `"Nigeria"', add
label define ml09a_bplctry_lbl 141 `"Central African Republic"', add
label define ml09a_bplctry_lbl 143 `"Rwanda"', add
label define ml09a_bplctry_lbl 147 `"Senegal"', add
label define ml09a_bplctry_lbl 149 `"Sierra Leone"', add
label define ml09a_bplctry_lbl 151 `"Sudan"', add
label define ml09a_bplctry_lbl 153 `"Tanzania"', add
label define ml09a_bplctry_lbl 154 `"Chad"', add
label define ml09a_bplctry_lbl 155 `"Togo"', add
label define ml09a_bplctry_lbl 157 `"Zambia"', add
label define ml09a_bplctry_lbl 199 `"Other Africa"', add
label define ml09a_bplctry_lbl 213 `"Chile"', add
label define ml09a_bplctry_lbl 220 `"United States"', add
label define ml09a_bplctry_lbl 221 `"Grenada"', add
label define ml09a_bplctry_lbl 223 `"Guadeloupe"', add
label define ml09a_bplctry_lbl 231 `"Turks and Caicos Islands"', add
label define ml09a_bplctry_lbl 232 `"British Virgin Islands"', add
label define ml09a_bplctry_lbl 233 `"U.S. Virgin Islands"', add
label define ml09a_bplctry_lbl 251 `"Uruguay"', add
label define ml09a_bplctry_lbl 299 `"Other America"', add
label define ml09a_bplctry_lbl 301 `"Afghanistan"', add
label define ml09a_bplctry_lbl 302 `"Saudi Arabia"', add
label define ml09a_bplctry_lbl 310 `"China"', add
label define ml09a_bplctry_lbl 311 `"North Korea"', add
label define ml09a_bplctry_lbl 313 `"United Arab Emirates"', add
label define ml09a_bplctry_lbl 320 `"Israel"', add
label define ml09a_bplctry_lbl 321 `"Japan"', add
label define ml09a_bplctry_lbl 323 `"Kazakhstan"', add
label define ml09a_bplctry_lbl 340 `"Singapore"', add
label define ml09a_bplctry_lbl 345 `"Thailand"', add
label define ml09a_bplctry_lbl 399 `"Other Asia"', add
label define ml09a_bplctry_lbl 401 `"Albania"', add
label define ml09a_bplctry_lbl 403 `"Andorra"', add
label define ml09a_bplctry_lbl 410 `"Croatia"', add
label define ml09a_bplctry_lbl 415 `"France"', add
label define ml09a_bplctry_lbl 440 `"Russia"', add
label define ml09a_bplctry_lbl 499 `"Other Europe"', add
label define ml09a_bplctry_lbl 521 `"French Polynesia"', add
label define ml09a_bplctry_lbl 523 `"American Samoa"', add
label define ml09a_bplctry_lbl 599 `"Other Oceania"', add
label define ml09a_bplctry_lbl 999 `"Unknown"', add
label values ml09a_bplctry ml09a_bplctry_lbl

label define ml09a_bplregn_lbl 01 `"Kayes"'
label define ml09a_bplregn_lbl 02 `"Koulikoro"', add
label define ml09a_bplregn_lbl 03 `"Sikasso"', add
label define ml09a_bplregn_lbl 04 `"Ségou"', add
label define ml09a_bplregn_lbl 05 `"Mopti"', add
label define ml09a_bplregn_lbl 06 `"Tombouctou"', add
label define ml09a_bplregn_lbl 07 `"Gao"', add
label define ml09a_bplregn_lbl 08 `"Kidal"', add
label define ml09a_bplregn_lbl 09 `"Bamako"', add
label define ml09a_bplregn_lbl 98 `"Unknown"', add
label define ml09a_bplregn_lbl 99 `"NIU (not in universe)"', add
label values ml09a_bplregn ml09a_bplregn_lbl

label define ml09a_bpl_lbl 10 `"Kayes region, unknown circle"'
label define ml09a_bpl_lbl 11 `"Kayes"', add
label define ml09a_bpl_lbl 12 `"Bafoulabé"', add
label define ml09a_bpl_lbl 13 `"Diéma"', add
label define ml09a_bpl_lbl 14 `"Kéniéba"', add
label define ml09a_bpl_lbl 15 `"Kita"', add
label define ml09a_bpl_lbl 16 `"Nioro"', add
label define ml09a_bpl_lbl 17 `"Yélimané"', add
label define ml09a_bpl_lbl 20 `"Koulikoro region, unknown circle"', add
label define ml09a_bpl_lbl 21 `"Koulikoro"', add
label define ml09a_bpl_lbl 22 `"Banamba"', add
label define ml09a_bpl_lbl 23 `"Dioila"', add
label define ml09a_bpl_lbl 24 `"Kangaba"', add
label define ml09a_bpl_lbl 25 `"Kati"', add
label define ml09a_bpl_lbl 26 `"Kolokani"', add
label define ml09a_bpl_lbl 27 `"Nara"', add
label define ml09a_bpl_lbl 30 `"Sikasso region, unknown circle"', add
label define ml09a_bpl_lbl 31 `"Sikasso"', add
label define ml09a_bpl_lbl 32 `"Bougouni"', add
label define ml09a_bpl_lbl 33 `"Kadiolo"', add
label define ml09a_bpl_lbl 34 `"Kolondiéba"', add
label define ml09a_bpl_lbl 35 `"Koutiala"', add
label define ml09a_bpl_lbl 36 `"Yanfolila"', add
label define ml09a_bpl_lbl 37 `"Yorosso"', add
label define ml09a_bpl_lbl 40 `"Ségou region, unknown circle"', add
label define ml09a_bpl_lbl 41 `"Ségou"', add
label define ml09a_bpl_lbl 42 `"Baraouéli"', add
label define ml09a_bpl_lbl 43 `"Bla"', add
label define ml09a_bpl_lbl 44 `"Macina"', add
label define ml09a_bpl_lbl 45 `"Niono"', add
label define ml09a_bpl_lbl 46 `"San"', add
label define ml09a_bpl_lbl 47 `"Tominian"', add
label define ml09a_bpl_lbl 50 `"Mopti region, unknown circle"', add
label define ml09a_bpl_lbl 51 `"Mopti"', add
label define ml09a_bpl_lbl 52 `"Bandiagara"', add
label define ml09a_bpl_lbl 53 `"Bankass"', add
label define ml09a_bpl_lbl 54 `"Djénné"', add
label define ml09a_bpl_lbl 55 `"Douentza"', add
label define ml09a_bpl_lbl 56 `"Koro"', add
label define ml09a_bpl_lbl 57 `"Ténenkou"', add
label define ml09a_bpl_lbl 58 `"Youvarou"', add
label define ml09a_bpl_lbl 60 `"Tombouctou region, unknown circle"', add
label define ml09a_bpl_lbl 61 `"Tombouctou"', add
label define ml09a_bpl_lbl 62 `"Diré"', add
label define ml09a_bpl_lbl 63 `"Goundam"', add
label define ml09a_bpl_lbl 64 `"Gourma Rharous"', add
label define ml09a_bpl_lbl 65 `"Niafunké"', add
label define ml09a_bpl_lbl 70 `"Gao region, unknown circle"', add
label define ml09a_bpl_lbl 71 `"Gao"', add
label define ml09a_bpl_lbl 72 `"Ansongo"', add
label define ml09a_bpl_lbl 73 `"Bourem"', add
label define ml09a_bpl_lbl 74 `"Ménaka"', add
label define ml09a_bpl_lbl 80 `"Kidal region, unknown circle"', add
label define ml09a_bpl_lbl 81 `"Kidal"', add
label define ml09a_bpl_lbl 82 `"Abéibara"', add
label define ml09a_bpl_lbl 83 `"Téssalit"', add
label define ml09a_bpl_lbl 84 `"Tin Essako"', add
label define ml09a_bpl_lbl 90 `"District of Bamako, unknown commune"', add
label define ml09a_bpl_lbl 91 `"Commune I of the District of Bamako"', add
label define ml09a_bpl_lbl 92 `"Commune II of the District of Bamako"', add
label define ml09a_bpl_lbl 93 `"Commune III of the District of Bamako"', add
label define ml09a_bpl_lbl 94 `"Commune IV  of the District of Bamako"', add
label define ml09a_bpl_lbl 95 `"Commune V of the District of Bamako"', add
label define ml09a_bpl_lbl 96 `"Commune IV  of the District of Bamako"', add
label define ml09a_bpl_lbl 98 `"Unknown"', add
label define ml09a_bpl_lbl 99 `"NIU (not in universe)"', add
label values ml09a_bpl ml09a_bpl_lbl

label define ml09a_nation_lbl 103 `"Angola"'
label define ml09a_nation_lbl 104 `"Benin"', add
label define ml09a_nation_lbl 106 `"Burkina Faso"', add
label define ml09a_nation_lbl 108 `"Cameroon"', add
label define ml09a_nation_lbl 110 `"Comores"', add
label define ml09a_nation_lbl 111 `"Congo-Brazzaville"', add
label define ml09a_nation_lbl 112 `"Democratic Republic of Congo"', add
label define ml09a_nation_lbl 113 `"Côte d'Ivoire"', add
label define ml09a_nation_lbl 118 `"Gabon"', add
label define ml09a_nation_lbl 120 `"Ghana"', add
label define ml09a_nation_lbl 121 `"Guinea-Bissau"', add
label define ml09a_nation_lbl 122 `"Guinea"', add
label define ml09a_nation_lbl 123 `"Equatorial Guinea"', add
label define ml09a_nation_lbl 130 `"Malawi"', add
label define ml09a_nation_lbl 131 `"Mali"', add
label define ml09a_nation_lbl 132 `"Morocco"', add
label define ml09a_nation_lbl 133 `"Mauritius"', add
label define ml09a_nation_lbl 134 `"Mauritania"', add
label define ml09a_nation_lbl 136 `"Mozambique"', add
label define ml09a_nation_lbl 138 `"Niger"', add
label define ml09a_nation_lbl 139 `"Nigeria"', add
label define ml09a_nation_lbl 143 `"Rwanda"', add
label define ml09a_nation_lbl 147 `"Senegal"', add
label define ml09a_nation_lbl 149 `"Sierra Leone"', add
label define ml09a_nation_lbl 151 `"Sudan"', add
label define ml09a_nation_lbl 155 `"Togo"', add
label define ml09a_nation_lbl 199 `"Other Africa"', add
label define ml09a_nation_lbl 213 `"Chile"', add
label define ml09a_nation_lbl 220 `"United States"', add
label define ml09a_nation_lbl 299 `"Other America"', add
label define ml09a_nation_lbl 302 `"Saudi Arabia"', add
label define ml09a_nation_lbl 310 `"China"', add
label define ml09a_nation_lbl 313 `"United Arab Emirates"', add
label define ml09a_nation_lbl 399 `"Other Asia"', add
label define ml09a_nation_lbl 415 `"France"', add
label define ml09a_nation_lbl 499 `"Other Europe"', add
label define ml09a_nation_lbl 999 `"Unknown"', add
label values ml09a_nation ml09a_nation_lbl

label define ml09a_disab_lbl 0 `"None"'
label define ml09a_disab_lbl 1 `"Physical disability"', add
label define ml09a_disab_lbl 2 `"Hearing disability"', add
label define ml09a_disab_lbl 3 `"Vision disability"', add
label define ml09a_disab_lbl 4 `"Mental disability"', add
label define ml09a_disab_lbl 5 `"Multiple disabilities"', add
label define ml09a_disab_lbl 9 `"Unknown"', add
label values ml09a_disab ml09a_disab_lbl

label define ml09a_prevctry_lbl 101 `"South Africa"'
label define ml09a_prevctry_lbl 102 `"Algeria"', add
label define ml09a_prevctry_lbl 103 `"Angola"', add
label define ml09a_prevctry_lbl 104 `"Benin"', add
label define ml09a_prevctry_lbl 106 `"Burkina Faso"', add
label define ml09a_prevctry_lbl 108 `"Cameroon"', add
label define ml09a_prevctry_lbl 110 `"Comoros"', add
label define ml09a_prevctry_lbl 111 `"Congo-Brazzaville"', add
label define ml09a_prevctry_lbl 112 `"Democratic Republic of Congo"', add
label define ml09a_prevctry_lbl 113 `"Côte d'Ivoire"', add
label define ml09a_prevctry_lbl 115 `"Egypt"', add
label define ml09a_prevctry_lbl 118 `"Gabon"', add
label define ml09a_prevctry_lbl 119 `"Gambia"', add
label define ml09a_prevctry_lbl 120 `"Ghana"', add
label define ml09a_prevctry_lbl 121 `"Guinea-Bissau"', add
label define ml09a_prevctry_lbl 122 `"Guinea"', add
label define ml09a_prevctry_lbl 123 `"Equatorial Guinea"', add
label define ml09a_prevctry_lbl 127 `"Liberia"', add
label define ml09a_prevctry_lbl 128 `"Libya"', add
label define ml09a_prevctry_lbl 130 `"Malawi"', add
label define ml09a_prevctry_lbl 132 `"Morocco"', add
label define ml09a_prevctry_lbl 134 `"Mauritania"', add
label define ml09a_prevctry_lbl 138 `"Niger"', add
label define ml09a_prevctry_lbl 139 `"Nigeria"', add
label define ml09a_prevctry_lbl 141 `"Central African Republic"', add
label define ml09a_prevctry_lbl 143 `"Rwanda"', add
label define ml09a_prevctry_lbl 147 `"Senegal"', add
label define ml09a_prevctry_lbl 149 `"Sierra Leone"', add
label define ml09a_prevctry_lbl 150 `"Somalia"', add
label define ml09a_prevctry_lbl 151 `"Sudan"', add
label define ml09a_prevctry_lbl 153 `"Tanzania"', add
label define ml09a_prevctry_lbl 154 `"Chad"', add
label define ml09a_prevctry_lbl 155 `"Togo"', add
label define ml09a_prevctry_lbl 157 `"Zambia"', add
label define ml09a_prevctry_lbl 199 `"Other Africa"', add
label define ml09a_prevctry_lbl 212 `"Canada"', add
label define ml09a_prevctry_lbl 213 `"Chile"', add
label define ml09a_prevctry_lbl 220 `"United States"', add
label define ml09a_prevctry_lbl 223 `"Guadeloupe"', add
label define ml09a_prevctry_lbl 230 `"Falkland Islands"', add
label define ml09a_prevctry_lbl 232 `"British Virgin Islands"', add
label define ml09a_prevctry_lbl 233 `"U.S. Virgin Islands"', add
label define ml09a_prevctry_lbl 250 `"Trinidad and Tobago"', add
label define ml09a_prevctry_lbl 299 `"Other Americas"', add
label define ml09a_prevctry_lbl 302 `"Saudi Arabia"', add
label define ml09a_prevctry_lbl 310 `"China"', add
label define ml09a_prevctry_lbl 311 `"North Korea"', add
label define ml09a_prevctry_lbl 312 `"South Korea"', add
label define ml09a_prevctry_lbl 313 `"United Arab Emirates"', add
label define ml09a_prevctry_lbl 320 `"Israel"', add
label define ml09a_prevctry_lbl 321 `"Japan"', add
label define ml09a_prevctry_lbl 323 `"Kazakhstan"', add
label define ml09a_prevctry_lbl 340 `"Singapore"', add
label define ml09a_prevctry_lbl 345 `"Thailand"', add
label define ml09a_prevctry_lbl 350 `"Yemen"', add
label define ml09a_prevctry_lbl 399 `"Other Asia"', add
label define ml09a_prevctry_lbl 401 `"Albania"', add
label define ml09a_prevctry_lbl 402 `"Germany"', add
label define ml09a_prevctry_lbl 403 `"Andorra"', add
label define ml09a_prevctry_lbl 410 `"Croatia"', add
label define ml09a_prevctry_lbl 412 `"Spain"', add
label define ml09a_prevctry_lbl 413 `"Estonia"', add
label define ml09a_prevctry_lbl 415 `"France"', add
label define ml09a_prevctry_lbl 420 `"Channel Islands"', add
label define ml09a_prevctry_lbl 423 `"Iceland"', add
label define ml09a_prevctry_lbl 430 `"Malta"', add
label define ml09a_prevctry_lbl 440 `"Russia"', add
label define ml09a_prevctry_lbl 499 `"Other Europe"', add
label define ml09a_prevctry_lbl 523 `"American Samoa"', add
label define ml09a_prevctry_lbl 599 `"Other Oceania"', add
label define ml09a_prevctry_lbl 998 `"Unknown"', add
label define ml09a_prevctry_lbl 999 `"NIU (not in universe)"', add
label values ml09a_prevctry ml09a_prevctry_lbl

label define ml09a_prevres2_lbl 01 `"Kayes"'
label define ml09a_prevres2_lbl 02 `"Koulikoro"', add
label define ml09a_prevres2_lbl 03 `"Sikasso"', add
label define ml09a_prevres2_lbl 04 `"Ségou"', add
label define ml09a_prevres2_lbl 05 `"Mopti"', add
label define ml09a_prevres2_lbl 06 `"Tombouctou"', add
label define ml09a_prevres2_lbl 07 `"Gao"', add
label define ml09a_prevres2_lbl 08 `"Kidal"', add
label define ml09a_prevres2_lbl 09 `"Bamako"', add
label define ml09a_prevres2_lbl 98 `"Unknown"', add
label define ml09a_prevres2_lbl 99 `"NIU (not in universe)"', add
label values ml09a_prevres2 ml09a_prevres2_lbl

label define ml09a_prevres_lbl 10 `"Kayes region, unknown circle"'
label define ml09a_prevres_lbl 11 `"Kayes"', add
label define ml09a_prevres_lbl 12 `"Bafoulabé"', add
label define ml09a_prevres_lbl 13 `"Diéma"', add
label define ml09a_prevres_lbl 14 `"Kéniéba"', add
label define ml09a_prevres_lbl 15 `"Kita"', add
label define ml09a_prevres_lbl 16 `"Nioro"', add
label define ml09a_prevres_lbl 17 `"Yélimané"', add
label define ml09a_prevres_lbl 20 `"Koulikoro region, unknown circle"', add
label define ml09a_prevres_lbl 21 `"Koulikoro"', add
label define ml09a_prevres_lbl 22 `"Banamba"', add
label define ml09a_prevres_lbl 23 `"Dioila"', add
label define ml09a_prevres_lbl 24 `"Kangaba"', add
label define ml09a_prevres_lbl 25 `"Kati"', add
label define ml09a_prevres_lbl 26 `"Kolokani"', add
label define ml09a_prevres_lbl 27 `"Nara"', add
label define ml09a_prevres_lbl 30 `"Sikasso region, unknown circle"', add
label define ml09a_prevres_lbl 31 `"Sikasso"', add
label define ml09a_prevres_lbl 32 `"Bougouni"', add
label define ml09a_prevres_lbl 33 `"Kadiolo"', add
label define ml09a_prevres_lbl 34 `"Kolondiéba"', add
label define ml09a_prevres_lbl 35 `"Koutiala"', add
label define ml09a_prevres_lbl 36 `"Yanfolila"', add
label define ml09a_prevres_lbl 37 `"Yorosso"', add
label define ml09a_prevres_lbl 40 `"Ségou region, unknown circle"', add
label define ml09a_prevres_lbl 41 `"Ségou"', add
label define ml09a_prevres_lbl 42 `"Baraouéli"', add
label define ml09a_prevres_lbl 43 `"Bla"', add
label define ml09a_prevres_lbl 44 `"Macina"', add
label define ml09a_prevres_lbl 45 `"Niono"', add
label define ml09a_prevres_lbl 46 `"San"', add
label define ml09a_prevres_lbl 47 `"Tominian"', add
label define ml09a_prevres_lbl 50 `"Mopti region, unknown circle"', add
label define ml09a_prevres_lbl 51 `"Mopti"', add
label define ml09a_prevres_lbl 52 `"Bandiagara"', add
label define ml09a_prevres_lbl 53 `"Bankass"', add
label define ml09a_prevres_lbl 54 `"Djénné"', add
label define ml09a_prevres_lbl 55 `"Douentza"', add
label define ml09a_prevres_lbl 56 `"Koro"', add
label define ml09a_prevres_lbl 57 `"Ténenkou"', add
label define ml09a_prevres_lbl 58 `"Youvarou"', add
label define ml09a_prevres_lbl 60 `"Tombouctou region, unknown circle"', add
label define ml09a_prevres_lbl 61 `"Tombouctou"', add
label define ml09a_prevres_lbl 62 `"Diré"', add
label define ml09a_prevres_lbl 63 `"Goundam"', add
label define ml09a_prevres_lbl 64 `"Gourma Rharous"', add
label define ml09a_prevres_lbl 65 `"Niafunké"', add
label define ml09a_prevres_lbl 70 `"Gao region, unknown circle"', add
label define ml09a_prevres_lbl 71 `"Gao"', add
label define ml09a_prevres_lbl 72 `"Ansongo"', add
label define ml09a_prevres_lbl 73 `"Bourem"', add
label define ml09a_prevres_lbl 74 `"Ménaka"', add
label define ml09a_prevres_lbl 80 `"Kidal region, unknown circle"', add
label define ml09a_prevres_lbl 81 `"Kidal"', add
label define ml09a_prevres_lbl 82 `"Abéibara"', add
label define ml09a_prevres_lbl 83 `"Téssalit"', add
label define ml09a_prevres_lbl 84 `"Tin Essako"', add
label define ml09a_prevres_lbl 90 `"District of Bamako, commune unknown"', add
label define ml09a_prevres_lbl 91 `"Commune I of the District of Bamako"', add
label define ml09a_prevres_lbl 92 `"Commune II of the District of Bamako"', add
label define ml09a_prevres_lbl 93 `"Commune III of the District of Bamako"', add
label define ml09a_prevres_lbl 94 `"Commune IV  of the District of Bamako"', add
label define ml09a_prevres_lbl 95 `"Commune V of the District of Bamako"', add
label define ml09a_prevres_lbl 96 `"Commune IV  of the District of Bamako"', add
label define ml09a_prevres_lbl 98 `"Unknown"', add
label define ml09a_prevres_lbl 99 `"NIU (not in universe)"', add
label values ml09a_prevres ml09a_prevres_lbl

label define ml09a_durres_lbl 00 `"0"'
label define ml09a_durres_lbl 01 `"1"', add
label define ml09a_durres_lbl 02 `"2"', add
label define ml09a_durres_lbl 03 `"3"', add
label define ml09a_durres_lbl 04 `"4"', add
label define ml09a_durres_lbl 05 `"5"', add
label define ml09a_durres_lbl 06 `"6"', add
label define ml09a_durres_lbl 07 `"7"', add
label define ml09a_durres_lbl 08 `"8"', add
label define ml09a_durres_lbl 09 `"9"', add
label define ml09a_durres_lbl 10 `"10"', add
label define ml09a_durres_lbl 11 `"11"', add
label define ml09a_durres_lbl 12 `"12"', add
label define ml09a_durres_lbl 13 `"13"', add
label define ml09a_durres_lbl 14 `"14"', add
label define ml09a_durres_lbl 15 `"15"', add
label define ml09a_durres_lbl 16 `"16"', add
label define ml09a_durres_lbl 17 `"17"', add
label define ml09a_durres_lbl 18 `"18"', add
label define ml09a_durres_lbl 19 `"19"', add
label define ml09a_durres_lbl 20 `"20"', add
label define ml09a_durres_lbl 21 `"21"', add
label define ml09a_durres_lbl 22 `"22"', add
label define ml09a_durres_lbl 23 `"23"', add
label define ml09a_durres_lbl 24 `"24"', add
label define ml09a_durres_lbl 25 `"25"', add
label define ml09a_durres_lbl 26 `"26"', add
label define ml09a_durres_lbl 27 `"27"', add
label define ml09a_durres_lbl 28 `"28"', add
label define ml09a_durres_lbl 29 `"29"', add
label define ml09a_durres_lbl 30 `"30"', add
label define ml09a_durres_lbl 31 `"31"', add
label define ml09a_durres_lbl 32 `"32"', add
label define ml09a_durres_lbl 33 `"33"', add
label define ml09a_durres_lbl 34 `"34"', add
label define ml09a_durres_lbl 35 `"35"', add
label define ml09a_durres_lbl 36 `"36"', add
label define ml09a_durres_lbl 37 `"37"', add
label define ml09a_durres_lbl 38 `"38"', add
label define ml09a_durres_lbl 39 `"39"', add
label define ml09a_durres_lbl 40 `"40"', add
label define ml09a_durres_lbl 41 `"41"', add
label define ml09a_durres_lbl 42 `"42"', add
label define ml09a_durres_lbl 43 `"43"', add
label define ml09a_durres_lbl 44 `"44"', add
label define ml09a_durres_lbl 45 `"45"', add
label define ml09a_durres_lbl 46 `"46"', add
label define ml09a_durres_lbl 47 `"47"', add
label define ml09a_durres_lbl 48 `"48"', add
label define ml09a_durres_lbl 49 `"49"', add
label define ml09a_durres_lbl 50 `"50"', add
label define ml09a_durres_lbl 51 `"51"', add
label define ml09a_durres_lbl 52 `"52"', add
label define ml09a_durres_lbl 53 `"53"', add
label define ml09a_durres_lbl 54 `"54"', add
label define ml09a_durres_lbl 55 `"55"', add
label define ml09a_durres_lbl 56 `"56"', add
label define ml09a_durres_lbl 57 `"57"', add
label define ml09a_durres_lbl 58 `"58"', add
label define ml09a_durres_lbl 59 `"59"', add
label define ml09a_durres_lbl 60 `"60"', add
label define ml09a_durres_lbl 61 `"61"', add
label define ml09a_durres_lbl 62 `"62"', add
label define ml09a_durres_lbl 63 `"63"', add
label define ml09a_durres_lbl 64 `"64"', add
label define ml09a_durres_lbl 65 `"65"', add
label define ml09a_durres_lbl 66 `"66"', add
label define ml09a_durres_lbl 67 `"67"', add
label define ml09a_durres_lbl 68 `"68"', add
label define ml09a_durres_lbl 69 `"69"', add
label define ml09a_durres_lbl 70 `"70"', add
label define ml09a_durres_lbl 71 `"71"', add
label define ml09a_durres_lbl 72 `"72"', add
label define ml09a_durres_lbl 73 `"73"', add
label define ml09a_durres_lbl 74 `"74"', add
label define ml09a_durres_lbl 75 `"75"', add
label define ml09a_durres_lbl 76 `"76"', add
label define ml09a_durres_lbl 77 `"77"', add
label define ml09a_durres_lbl 78 `"78"', add
label define ml09a_durres_lbl 79 `"79"', add
label define ml09a_durres_lbl 80 `"80"', add
label define ml09a_durres_lbl 81 `"81"', add
label define ml09a_durres_lbl 82 `"82"', add
label define ml09a_durres_lbl 83 `"83"', add
label define ml09a_durres_lbl 84 `"84"', add
label define ml09a_durres_lbl 85 `"85"', add
label define ml09a_durres_lbl 86 `"86"', add
label define ml09a_durres_lbl 87 `"87"', add
label define ml09a_durres_lbl 88 `"88"', add
label define ml09a_durres_lbl 89 `"89"', add
label define ml09a_durres_lbl 90 `"90"', add
label define ml09a_durres_lbl 91 `"91"', add
label define ml09a_durres_lbl 92 `"92"', add
label define ml09a_durres_lbl 93 `"93"', add
label define ml09a_durres_lbl 94 `"94"', add
label define ml09a_durres_lbl 95 `"95"', add
label define ml09a_durres_lbl 96 `"96"', add
label define ml09a_durres_lbl 97 `"97"', add
label define ml09a_durres_lbl 99 `"Unknown"', add
label values ml09a_durres ml09a_durres_lbl

label define ml09a_livfat_lbl 1 `"Yes"'
label define ml09a_livfat_lbl 2 `"No"', add
label define ml09a_livfat_lbl 3 `"Respondent does not know"', add
label define ml09a_livfat_lbl 9 `"Unknown"', add
label values ml09a_livfat ml09a_livfat_lbl

label define ml09a_livmot_lbl 1 `"Yes"'
label define ml09a_livmot_lbl 2 `"No"', add
label define ml09a_livmot_lbl 3 `"Respondent does not know"', add
label define ml09a_livmot_lbl 9 `"Unknown"', add
label values ml09a_livmot ml09a_livmot_lbl

label define ml09a_school_lbl 0 `"No, never attended"'
label define ml09a_school_lbl 1 `"Yes, attended in the past"', add
label define ml09a_school_lbl 2 `"Yes, attending currently"', add
label define ml09a_school_lbl 8 `"Unknown"', add
label define ml09a_school_lbl 9 `"NIU (not in universe)"', add
label values ml09a_school ml09a_school_lbl

label define ml09a_edlevel_lbl 00 `"NIU (not in universe)"'
label define ml09a_edlevel_lbl 01 `"None"', add
label define ml09a_edlevel_lbl 02 `"Koranic school (not trained)"', add
label define ml09a_edlevel_lbl 03 `"Literate (not trained)"', add
label define ml09a_edlevel_lbl 04 `"Preschool"', add
label define ml09a_edlevel_lbl 05 `"Fundamental, 1st cycle"', add
label define ml09a_edlevel_lbl 06 `"Fundamental, 2nd cycle"', add
label define ml09a_edlevel_lbl 07 `"Madras, 1st cycle"', add
label define ml09a_edlevel_lbl 08 `"Madras, 2nd cycle"', add
label define ml09a_edlevel_lbl 09 `"Secondary"', add
label define ml09a_edlevel_lbl 10 `"Technical and professional"', add
label define ml09a_edlevel_lbl 11 `"Teaching school"', add
label define ml09a_edlevel_lbl 12 `"University"', add
label define ml09a_edlevel_lbl 13 `"Post-university"', add
label define ml09a_edlevel_lbl 99 `"Unknown"', add
label values ml09a_edlevel ml09a_edlevel_lbl

label define ml09a_class_lbl 00 `"NIU (not in universe)"'
label define ml09a_class_lbl 01 `"1"', add
label define ml09a_class_lbl 02 `"2"', add
label define ml09a_class_lbl 03 `"3"', add
label define ml09a_class_lbl 04 `"4"', add
label define ml09a_class_lbl 05 `"5"', add
label define ml09a_class_lbl 06 `"6"', add
label define ml09a_class_lbl 07 `"7"', add
label define ml09a_class_lbl 08 `"8"', add
label define ml09a_class_lbl 09 `"9"', add
label define ml09a_class_lbl 10 `"10"', add
label define ml09a_class_lbl 11 `"11"', add
label define ml09a_class_lbl 12 `"12"', add
label define ml09a_class_lbl 99 `"Unknown"', add
label values ml09a_class ml09a_class_lbl

label define ml09a_edattend_lbl 0000 `"NIU (not in universe)"'
label define ml09a_edattend_lbl 0100 `"No schooling"', add
label define ml09a_edattend_lbl 0200 `"Koranic school, 0 years"', add
label define ml09a_edattend_lbl 0300 `"Literate, 0 years"', add
label define ml09a_edattend_lbl 0401 `"Preschool, 1 year"', add
label define ml09a_edattend_lbl 0402 `"Preschool, 2 years"', add
label define ml09a_edattend_lbl 0403 `"Preschool, 3 years"', add
label define ml09a_edattend_lbl 0501 `"Fundamental 1st cycle, 1 year"', add
label define ml09a_edattend_lbl 0502 `"Fundamental 1st cycle, 2 years"', add
label define ml09a_edattend_lbl 0503 `"Fundamental 1st cycle, 3 years"', add
label define ml09a_edattend_lbl 0504 `"Fundamental 1st cycle, 4 years"', add
label define ml09a_edattend_lbl 0505 `"Fundamental 1st cycle, 5 years"', add
label define ml09a_edattend_lbl 0506 `"Fundamental 1st cycle, 6 years"', add
label define ml09a_edattend_lbl 0599 `"Fundamental 1st cycle, unknown class"', add
label define ml09a_edattend_lbl 0606 `"Fundamental 2nd cycle, 6 years"', add
label define ml09a_edattend_lbl 0607 `"Fundamental 2nd cycle, 7 years"', add
label define ml09a_edattend_lbl 0608 `"Fundamental 2nd cycle, 8 years"', add
label define ml09a_edattend_lbl 0609 `"Fundamental 2nd cycle, 9 years"', add
label define ml09a_edattend_lbl 0699 `"Fundamental 2nd cycle, unknown class"', add
label define ml09a_edattend_lbl 0701 `"Madras 1st cycle, 1 year"', add
label define ml09a_edattend_lbl 0702 `"Madras 1st cycle, 2 years"', add
label define ml09a_edattend_lbl 0703 `"Madras 1st cycle, 3 years"', add
label define ml09a_edattend_lbl 0704 `"Madras 1st cycle, 4 years"', add
label define ml09a_edattend_lbl 0705 `"Madras 1st cycle, 5 years"', add
label define ml09a_edattend_lbl 0706 `"Madras 1st cycle, 6 years"', add
label define ml09a_edattend_lbl 0799 `"Madras 1st cycle, unknown year"', add
label define ml09a_edattend_lbl 0806 `"Madras 2nd cycle, 6 years"', add
label define ml09a_edattend_lbl 0807 `"Madras 2nd cycle, 7 years"', add
label define ml09a_edattend_lbl 0808 `"Madras 2nd cycle, 8 years"', add
label define ml09a_edattend_lbl 0809 `"Madras 2nd cycle, 9 years"', add
label define ml09a_edattend_lbl 0899 `"Madras 2nd cycle, unknown year"', add
label define ml09a_edattend_lbl 0909 `"Secondary, 9 years"', add
label define ml09a_edattend_lbl 0910 `"Secondary, 10 years"', add
label define ml09a_edattend_lbl 0911 `"Secondary, 11 years"', add
label define ml09a_edattend_lbl 0912 `"Secondary, 12 years"', add
label define ml09a_edattend_lbl 0999 `"Secondary, unknown year"', add
label define ml09a_edattend_lbl 1001 `"Technical and professional, 1 year"', add
label define ml09a_edattend_lbl 1002 `"Technical and professional, 2 years"', add
label define ml09a_edattend_lbl 1003 `"Technical and professional, 3 years"', add
label define ml09a_edattend_lbl 1004 `"Technical and professional, 4 years"', add
label define ml09a_edattend_lbl 1009 `"Technical and professional, 9 years"', add
label define ml09a_edattend_lbl 1010 `"Technical and professional, 10 years"', add
label define ml09a_edattend_lbl 1011 `"Technical and professional, 11 years"', add
label define ml09a_edattend_lbl 1012 `"Technical and professional, 12 years"', add
label define ml09a_edattend_lbl 1099 `"Technical and professional"', add
label define ml09a_edattend_lbl 1101 `"Teaching school, 1 year"', add
label define ml09a_edattend_lbl 1102 `"Teaching school, 2  years"', add
label define ml09a_edattend_lbl 1103 `"Teaching school, 3 years"', add
label define ml09a_edattend_lbl 1104 `"Teaching school, 4 years"', add
label define ml09a_edattend_lbl 1109 `"Teaching school, 9 years"', add
label define ml09a_edattend_lbl 1110 `"Teaching school, 10 years"', add
label define ml09a_edattend_lbl 1111 `"Teaching school, 11 years"', add
label define ml09a_edattend_lbl 1112 `"Teaching school, 12 years"', add
label define ml09a_edattend_lbl 1199 `"Teaching school, unknown class"', add
label define ml09a_edattend_lbl 1201 `"University, 1 year"', add
label define ml09a_edattend_lbl 1202 `"University, 2 years"', add
label define ml09a_edattend_lbl 1203 `"University, 3 years"', add
label define ml09a_edattend_lbl 1204 `"University, 4 years"', add
label define ml09a_edattend_lbl 1205 `"University, 5 years"', add
label define ml09a_edattend_lbl 1206 `"University, 6 years"', add
label define ml09a_edattend_lbl 1207 `"University, 7 years"', add
label define ml09a_edattend_lbl 1208 `"University, 8 years"', add
label define ml09a_edattend_lbl 1209 `"University, 9 years"', add
label define ml09a_edattend_lbl 1210 `"University, 10 years"', add
label define ml09a_edattend_lbl 1211 `"University, 11 years"', add
label define ml09a_edattend_lbl 1212 `"University, 12 years"', add
label define ml09a_edattend_lbl 1299 `"University, unknown class"', add
label define ml09a_edattend_lbl 1301 `"Post university, 1 or 2 years"', add
label define ml09a_edattend_lbl 1303 `"Post university, 3 years"', add
label define ml09a_edattend_lbl 1304 `"Post university, 4 years"', add
label define ml09a_edattend_lbl 1305 `"Post university, 5 years"', add
label define ml09a_edattend_lbl 1306 `"Post university, 6 years"', add
label define ml09a_edattend_lbl 1307 `"Post university, 7 years"', add
label define ml09a_edattend_lbl 1308 `"Post university, 8 years"', add
label define ml09a_edattend_lbl 1309 `"Post university, 9 or more years"', add
label define ml09a_edattend_lbl 1399 `"Post university, unknown class"', add
label define ml09a_edattend_lbl 9999 `"Unknown"', add
label values ml09a_edattend ml09a_edattend_lbl

label define ml09a_diploma_lbl 00 `"NIU (not in universe)"'
label define ml09a_diploma_lbl 01 `"Certificate of primary studies"', add
label define ml09a_diploma_lbl 02 `"Fundamental studies diploma"', add
label define ml09a_diploma_lbl 03 `"Certificate of professional aptitude"', add
label define ml09a_diploma_lbl 04 `"Preschool and special educator teacher training"', add
label define ml09a_diploma_lbl 05 `"Technician's certificate"', add
label define ml09a_diploma_lbl 06 `"Superior technician's certificate or university technology diploma"', add
label define ml09a_diploma_lbl 07 `"Teach training"', add
label define ml09a_diploma_lbl 08 `"High school diploma"', add
label define ml09a_diploma_lbl 09 `"Two year college degree"', add
label define ml09a_diploma_lbl 10 `"Bachelor's degree (baccalaureate plus 3 years)"', add
label define ml09a_diploma_lbl 11 `"Master's degree (baccalaureate plus 4 years)"', add
label define ml09a_diploma_lbl 12 `"Post university diploma (Masters, DEA, DESS, PhD, etc.)"', add
label define ml09a_diploma_lbl 99 `"Unknown"', add
label values ml09a_diploma ml09a_diploma_lbl

label define ml09a_langnat_lbl 00 `"NIU (not in universe)"'
label define ml09a_langnat_lbl 01 `"Bambara"', add
label define ml09a_langnat_lbl 02 `"Malinké"', add
label define ml09a_langnat_lbl 03 `"Peul or Foulfoulbé"', add
label define ml09a_langnat_lbl 04 `"Sonraï or Djerma"', add
label define ml09a_langnat_lbl 05 `"Maraka or Soninké"', add
label define ml09a_langnat_lbl 06 `"Kassonké"', add
label define ml09a_langnat_lbl 07 `"Sénoufo"', add
label define ml09a_langnat_lbl 08 `"Dogon"', add
label define ml09a_langnat_lbl 09 `"Maure"', add
label define ml09a_langnat_lbl 10 `"Tamacheq"', add
label define ml09a_langnat_lbl 11 `"Bobo"', add
label define ml09a_langnat_lbl 12 `"Dafing"', add
label define ml09a_langnat_lbl 13 `"Minianka"', add
label define ml09a_langnat_lbl 14 `"Haoussa"', add
label define ml09a_langnat_lbl 15 `"Samogo"', add
label define ml09a_langnat_lbl 16 `"Bozo"', add
label define ml09a_langnat_lbl 17 `"Arabic"', add
label define ml09a_langnat_lbl 18 `"Other Malian languages"', add
label define ml09a_langnat_lbl 19 `"Other African languages"', add
label define ml09a_langnat_lbl 20 `"Other foreign languages"', add
label define ml09a_langnat_lbl 99 `"Unknown"', add
label values ml09a_langnat ml09a_langnat_lbl

label define ml09a_langflu_lbl 00 `"NIU (not in universe)"'
label define ml09a_langflu_lbl 01 `"Bambara"', add
label define ml09a_langflu_lbl 02 `"Malinké"', add
label define ml09a_langflu_lbl 03 `"Peul or Foulfoulbé"', add
label define ml09a_langflu_lbl 04 `"Sonraï or Djerma"', add
label define ml09a_langflu_lbl 05 `"Maraka or Soninké"', add
label define ml09a_langflu_lbl 06 `"Kassonké"', add
label define ml09a_langflu_lbl 07 `"Sénoufo"', add
label define ml09a_langflu_lbl 08 `"Dogon"', add
label define ml09a_langflu_lbl 09 `"Maure"', add
label define ml09a_langflu_lbl 10 `"Tamacheq"', add
label define ml09a_langflu_lbl 11 `"Bobo"', add
label define ml09a_langflu_lbl 12 `"Dafing"', add
label define ml09a_langflu_lbl 13 `"Minianka"', add
label define ml09a_langflu_lbl 14 `"Haoussa"', add
label define ml09a_langflu_lbl 15 `"Samogo"', add
label define ml09a_langflu_lbl 16 `"Bozo"', add
label define ml09a_langflu_lbl 17 `"Arabic"', add
label define ml09a_langflu_lbl 18 `"Other Malian languages"', add
label define ml09a_langflu_lbl 19 `"Other African languages"', add
label define ml09a_langflu_lbl 20 `"Other foreign languages"', add
label define ml09a_langflu_lbl 99 `"Unknown"', add
label values ml09a_langflu ml09a_langflu_lbl

label define ml09a_empstat_lbl 01 `"At work"'
label define ml09a_empstat_lbl 02 `"Unemployed (having previously worked)"', add
label define ml09a_empstat_lbl 03 `"Looking for first job"', add
label define ml09a_empstat_lbl 04 `"Seasonal inactivity"', add
label define ml09a_empstat_lbl 05 `"Occupied at home"', add
label define ml09a_empstat_lbl 06 `"Student"', add
label define ml09a_empstat_lbl 07 `"Person of independent means"', add
label define ml09a_empstat_lbl 08 `"Retired or elderly"', add
label define ml09a_empstat_lbl 09 `"Has not worked"', add
label define ml09a_empstat_lbl 98 `"Unknown"', add
label define ml09a_empstat_lbl 99 `"NIU (not in universe)"', add
label values ml09a_empstat ml09a_empstat_lbl

label define ml09a_occ_lbl 0101 `"Farmer, peasant"'
label define ml09a_occ_lbl 0102 `"Greengrocer"', add
label define ml09a_occ_lbl 0103 `"Gardener, florist"', add
label define ml09a_occ_lbl 0104 `"Tree farmer"', add
label define ml09a_occ_lbl 0105 `"Other agricultural workers not elsewhere classified"', add
label define ml09a_occ_lbl 0106 `"Breeder"', add
label define ml09a_occ_lbl 0107 `"Shepherd"', add
label define ml09a_occ_lbl 0108 `"Poultry farmer"', add
label define ml09a_occ_lbl 0109 `"Beekeeper"', add
label define ml09a_occ_lbl 0110 `"Other workers in livestock and related not elsewhere classified"', add
label define ml09a_occ_lbl 0111 `"Hunter"', add
label define ml09a_occ_lbl 0112 `"Forestry"', add
label define ml09a_occ_lbl 0113 `"Agronomist"', add
label define ml09a_occ_lbl 0114 `"Veterinarian or veterinary agent"', add
label define ml09a_occ_lbl 0115 `"Seasonal agricultural worker"', add
label define ml09a_occ_lbl 0201 `"Fisherman"', add
label define ml09a_occ_lbl 0202 `"Fish farmer, aquaculture"', add
label define ml09a_occ_lbl 0301 `"Sand extractor"', add
label define ml09a_occ_lbl 0302 `"Gold prospector"', add
label define ml09a_occ_lbl 0303 `"Well digger"', add
label define ml09a_occ_lbl 0304 `"Geologist"', add
label define ml09a_occ_lbl 0305 `"Other mine and quarry workers"', add
label define ml09a_occ_lbl 0401 `"Carpenter, cabinetmaker"', add
label define ml09a_occ_lbl 0402 `"Basketmaker, weaver (mat, fan etc)"', add
label define ml09a_occ_lbl 0403 `"Shoemaker, leatherworker"', add
label define ml09a_occ_lbl 0404 `"Carpenter"', add
label define ml09a_occ_lbl 0405 `"Glazier, glass worker"', add
label define ml09a_occ_lbl 0406 `"Brickmaker"', add
label define ml09a_occ_lbl 0407 `"Dyer"', add
label define ml09a_occ_lbl 0408 `"Potter"', add
label define ml09a_occ_lbl 0409 `"Jeweler"', add
label define ml09a_occ_lbl 0410 `"Weaver"', add
label define ml09a_occ_lbl 0411 `"Smith"', add
label define ml09a_occ_lbl 0412 `"Welder"', add
label define ml09a_occ_lbl 0413 `"Sculptor"', add
label define ml09a_occ_lbl 0414 `"Other similar craftsman not elsewhere classified (factories, manufacturing industry, etc)"', add
label define ml09a_occ_lbl 0415 `"Baker"', add
label define ml09a_occ_lbl 0416 `"Pastry maker"', add
label define ml09a_occ_lbl 0417 `"Painter or decorator"', add
label define ml09a_occ_lbl 0418 `"Printer"', add
label define ml09a_occ_lbl 0419 `"Tailor"', add
label define ml09a_occ_lbl 0420 `"Embroiderer"', add
label define ml09a_occ_lbl 0421 `"Dressmaker"', add
label define ml09a_occ_lbl 0422 `"Upholsterer"', add
label define ml09a_occ_lbl 0424 `"Miller or mill operator"', add
label define ml09a_occ_lbl 0425 `"Refrigerationist"', add
label define ml09a_occ_lbl 0426 `"Worker in manufacturing activity"', add
label define ml09a_occ_lbl 0501 `"Electrician"', add
label define ml09a_occ_lbl 0502 `"Energy agent"', add
label define ml09a_occ_lbl 0503 `"Water distribution"', add
label define ml09a_occ_lbl 0601 `"Mason"', add
label define ml09a_occ_lbl 0602 `"Worker"', add
label define ml09a_occ_lbl 0604 `"Other construction workers"', add
label define ml09a_occ_lbl 0605 `"Floor tiling, marble"', add
label define ml09a_occ_lbl 0606 `"Building constructor"', add
label define ml09a_occ_lbl 0607 `"Building contractor"', add
label define ml09a_occ_lbl 0608 `"Tâcheron"', add
label define ml09a_occ_lbl 0610 `"Surveyor or cartographer"', add
label define ml09a_occ_lbl 0611 `"Plumber"', add
label define ml09a_occ_lbl 0612 `"Building engineer"', add
label define ml09a_occ_lbl 0613 `"Architect"', add
label define ml09a_occ_lbl 0701 `"Director and manager of business, economic operator"', add
label define ml09a_occ_lbl 0702 `"Trader"', add
label define ml09a_occ_lbl 0703 `"Shopkeeper"', add
label define ml09a_occ_lbl 0704 `"Merchandiser"', add
label define ml09a_occ_lbl 0706 `"Seller of articles (general trade, various items)"', add
label define ml09a_occ_lbl 0707 `"Seller of pharmacy"', add
label define ml09a_occ_lbl 0708 `"Coffee seller"', add
label define ml09a_occ_lbl 0709 `"Local pharmacy vendor"', add
label define ml09a_occ_lbl 0710 `"Fish seller"', add
label define ml09a_occ_lbl 0711 `"Vegetable seller"', add
label define ml09a_occ_lbl 0712 `"Clothing celler"', add
label define ml09a_occ_lbl 0713 `"Wood seller"', add
label define ml09a_occ_lbl 0714 `"Street vendor (mobile)"', add
label define ml09a_occ_lbl 0715 `"Food vendor"', add
label define ml09a_occ_lbl 0716 `"Shoe vendor"', add
label define ml09a_occ_lbl 0717 `"Livestock vender"', add
label define ml09a_occ_lbl 0718 `"Milk vendor"', add
label define ml09a_occ_lbl 0719 `"Charcoal vendor"', add
label define ml09a_occ_lbl 0720 `"Fruit vendor"', add
label define ml09a_occ_lbl 0721 `"Condiment vendor"', add
label define ml09a_occ_lbl 0722 `"Supply vendor (stationary, books and other office supplies)"', add
label define ml09a_occ_lbl 0723 `"Ticket seller"', add
label define ml09a_occ_lbl 0724 `"Cereal vendor"', add
label define ml09a_occ_lbl 0725 `"Seller of telephone cards, phone booth"', add
label define ml09a_occ_lbl 0726 `"Soda vendor"', add
label define ml09a_occ_lbl 0727 `"Cement vendor"', add
label define ml09a_occ_lbl 0728 `"Vendor of cosmetic produccts"', add
label define ml09a_occ_lbl 0729 `"Egg seller"', add
label define ml09a_occ_lbl 0730 `"Electronics vendor"', add
label define ml09a_occ_lbl 0731 `"Vendor of traditional medicines"', add
label define ml09a_occ_lbl 0732 `"Bread seller"', add
label define ml09a_occ_lbl 0733 `"Butcher"', add
label define ml09a_occ_lbl 0736 `"Sales representative"', add
label define ml09a_occ_lbl 0737 `"Other sales staff and sellers not elsewhere classified"', add
label define ml09a_occ_lbl 0738 `"Hardware seller"', add
label define ml09a_occ_lbl 0739 `"Moped and bicycle repairman"', add
label define ml09a_occ_lbl 0741 `"Repair for radio and television receivers"', add
label define ml09a_occ_lbl 0742 `"Gas station attendant"', add
label define ml09a_occ_lbl 0744 `"Shoe repairman"', add
label define ml09a_occ_lbl 0746 `"Vehicle and motorcycle seller"', add
label define ml09a_occ_lbl 0748 `"Parts vender"', add
label define ml09a_occ_lbl 0749 `"Pharmacist"', add
label define ml09a_occ_lbl 0750 `"Auto mechanics and auxiliary"', add
label define ml09a_occ_lbl 0751 `"Vulcanising (tire repair)"', add
label define ml09a_occ_lbl 0752 `"Storekeeper"', add
label define ml09a_occ_lbl 0801 `"Hotel owner"', add
label define ml09a_occ_lbl 0802 `"Restaurant owner"', add
label define ml09a_occ_lbl 0803 `"Gargotier"', add
label define ml09a_occ_lbl 0805 `"Other service personnel occupations not elsewhere classified (hostess, steward etc)"', add
label define ml09a_occ_lbl 0806 `"Tour guide"', add
label define ml09a_occ_lbl 0901 `"Carrier"', add
label define ml09a_occ_lbl 0902 `"Conveyor"', add
label define ml09a_occ_lbl 0903 `"Light vehicle driver"', add
label define ml09a_occ_lbl 0906 `"Driver of animal- or person-powered vehicle (donkey cart, rickshaw etc)"', add
label define ml09a_occ_lbl 0907 `"Small boat driver (pirogue)"', add
label define ml09a_occ_lbl 0908 `"Taximan"', add
label define ml09a_occ_lbl 0910 `"Other drivers of vehicles not elsewhere classified"', add
label define ml09a_occ_lbl 0911 `"Moderator or journalist"', add
label define ml09a_occ_lbl 0913 `"Other telecommunication agents (cyber cafes, Orange, Malitel, Sotelma)"', add
label define ml09a_occ_lbl 0915 `"Other communication agents not elsewhere classified (marketing, griots)"', add
label define ml09a_occ_lbl 0916 `"Transportation agent (air, land and river)"', add
label define ml09a_occ_lbl 0917 `"Laborer"', add
label define ml09a_occ_lbl 0919 `"Forwarding agent (freight)"', add
label define ml09a_occ_lbl 1001 `"Insurance agent"', add
label define ml09a_occ_lbl 1002 `"Financial intermediary"', add
label define ml09a_occ_lbl 1003 `"Bank officer"', add
label define ml09a_occ_lbl 1006 `"Cashier"', add
label define ml09a_occ_lbl 1007 `"Other financial system agents"', add
label define ml09a_occ_lbl 1102 `"Computer worker, computer maintenance"', add
label define ml09a_occ_lbl 1103 `"Realtor"', add
label define ml09a_occ_lbl 1104 `"Seizure agent (operator)"', add
label define ml09a_occ_lbl 1107 `"Researcher"', add
label define ml09a_occ_lbl 1108 `"Administrator"', add
label define ml09a_occ_lbl 1111 `"Lawyer"', add
label define ml09a_occ_lbl 1112 `"Accountant"', add
label define ml09a_occ_lbl 1113 `"Other executives of private companies"', add
label define ml09a_occ_lbl 1114 `"Other middle managers of private companies"', add
label define ml09a_occ_lbl 1115 `"Support staff (secretary, office worker) in private companies"', add
label define ml09a_occ_lbl 1116 `"Guard/parking agent"', add
label define ml09a_occ_lbl 1201 `"CEOs"', add
label define ml09a_occ_lbl 1202 `"Director level  (department heads)"', add
label define ml09a_occ_lbl 1203 `"Upper level (engineer, economist, doctor, professor, inspector)"', add
label define ml09a_occ_lbl 1204 `"Mid level (controllers, technicians)"', add
label define ml09a_occ_lbl 1205 `"Staff support (secretary, office worker, administrative assistant)"', add
label define ml09a_occ_lbl 1206 `"Customs agent"', add
label define ml09a_occ_lbl 1207 `"Police officer"', add
label define ml09a_occ_lbl 1208 `"Civil protection officer"', add
label define ml09a_occ_lbl 1209 `"Mayor's office worker"', add
label define ml09a_occ_lbl 1210 `"Constable"', add
label define ml09a_occ_lbl 1211 `"Guard"', add
label define ml09a_occ_lbl 1213 `"Soldier or military"', add
label define ml09a_occ_lbl 1216 `"Legal officer"', add
label define ml09a_occ_lbl 1220 `"Magistrate"', add
label define ml09a_occ_lbl 1222 `"Other administrative service occupations not elsewhere classified"', add
label define ml09a_occ_lbl 1223 `"Municipal elected officials"', add
label define ml09a_occ_lbl 1226 `"Other elected officals of territorial or communities (village, district)"', add
label define ml09a_occ_lbl 1229 `"Water and forest agents"', add
label define ml09a_occ_lbl 1230 `"Librarian, archivist"', add
label define ml09a_occ_lbl 1231 `"Accountant"', add
label define ml09a_occ_lbl 1232 `"Tax agent or treasurer"', add
label define ml09a_occ_lbl 1301 `"University professor and other higher learning institutions"', add
label define ml09a_occ_lbl 1302 `"Secondary teacher (general, technical, professional)"', add
label define ml09a_occ_lbl 1303 `"Teacher of fundamental second cycle"', add
label define ml09a_occ_lbl 1304 `"Teacher of first cycle"', add
label define ml09a_occ_lbl 1305 `"Preschool teacher"', add
label define ml09a_occ_lbl 1306 `"Special education teacher"', add
label define ml09a_occ_lbl 1307 `"Other teaching staff not elsewhere classified"', add
label define ml09a_occ_lbl 1401 `"Doctor"', add
label define ml09a_occ_lbl 1404 `"Anesthesiologist"', add
label define ml09a_occ_lbl 1405 `"Nurse"', add
label define ml09a_occ_lbl 1406 `"Midwife"', add
label define ml09a_occ_lbl 1407 `"Matrone"', add
label define ml09a_occ_lbl 1408 `"Maintenace services for health center"', add
label define ml09a_occ_lbl 1410 `"Health worker"', add
label define ml09a_occ_lbl 1415 `"Traditional healer"', add
label define ml09a_occ_lbl 1416 `"Health technician"', add
label define ml09a_occ_lbl 1418 `"Laboratory technician"', add
label define ml09a_occ_lbl 1419 `"Other health personnel not elsewhere classified"', add
label define ml09a_occ_lbl 1421 `"Sweeper"', add
label define ml09a_occ_lbl 1501 `"Artist (writer, singer, designer, painter)"', add
label define ml09a_occ_lbl 1502 `"Filmmaker"', add
label define ml09a_occ_lbl 1504 `"Photographer"', add
label define ml09a_occ_lbl 1506 `"Other artists not elsewhere classified"', add
label define ml09a_occ_lbl 1507 `"Cameraman"', add
label define ml09a_occ_lbl 1513 `"Bleacher or clothing beater"', add
label define ml09a_occ_lbl 1514 `"Imam"', add
label define ml09a_occ_lbl 1515 `"Muezzin"', add
label define ml09a_occ_lbl 1517 `"Other clergy member"', add
label define ml09a_occ_lbl 1518 `"Beggar"', add
label define ml09a_occ_lbl 1519 `"Traditional religious teacher, wandering holy man"', add
label define ml09a_occ_lbl 1520 `"Hair dresser, braider"', add
label define ml09a_occ_lbl 1525 `"Other occupations in private administration, semi-autonomous, not elsewhere classified"', add
label define ml09a_occ_lbl 1529 `"Ironing, clothes washing, auto washing"', add
label define ml09a_occ_lbl 1530 `"Pastor and other religious service"', add
label define ml09a_occ_lbl 1531 `"Football player and other atheletes"', add
label define ml09a_occ_lbl 1536 `"Investigator and collection agent"', add
label define ml09a_occ_lbl 1537 `"Union activities"', add
label define ml09a_occ_lbl 1601 `"Domestic servant (female)"', add
label define ml09a_occ_lbl 1602 `"Domestic servant (male)"', add
label define ml09a_occ_lbl 1603 `"Cook"', add
label define ml09a_occ_lbl 1604 `"Other domestic workers"', add
label define ml09a_occ_lbl 1704 `"NGO workers"', add
label define ml09a_occ_lbl 1705 `"Other foreigners working in international organizations"', add
label define ml09a_occ_lbl 9000 `"Occupation response suppressed"', add
label define ml09a_occ_lbl 9998 `"Unknown"', add
label define ml09a_occ_lbl 9999 `"NIU (not in universe)"', add
label values ml09a_occ ml09a_occ_lbl

label define ml09a_classwk_lbl 01 `"Independent worker"'
label define ml09a_classwk_lbl 02 `"Employer or boss"', add
label define ml09a_classwk_lbl 03 `"Salaried or permanent employee"', add
label define ml09a_classwk_lbl 04 `"Salaried or temporary employee"', add
label define ml09a_classwk_lbl 05 `"Apprentice"', add
label define ml09a_classwk_lbl 06 `"Family helper"', add
label define ml09a_classwk_lbl 07 `"Other"', add
label define ml09a_classwk_lbl 08 `"Independent (agricultural sector)"', add
label define ml09a_classwk_lbl 09 `"Primary associated household (agricultural sector)"', add
label define ml09a_classwk_lbl 10 `"Secondary associated household (agricultural sector)"', add
label define ml09a_classwk_lbl 98 `"Unknown"', add
label define ml09a_classwk_lbl 99 `"NIU (not in universe)"', add
label values ml09a_classwk ml09a_classwk_lbl

label define ml09a_ind_lbl 00 `"NIU (not in universe)"'
label define ml09a_ind_lbl 01 `"Agriculture, livestock raising, hunting and forestry"', add
label define ml09a_ind_lbl 02 `"Fishing, fish farming, aquaculture"', add
label define ml09a_ind_lbl 03 `"Extractive industries"', add
label define ml09a_ind_lbl 04 `"Manufacturing"', add
label define ml09a_ind_lbl 05 `"Production and distribution of electricity, gas, water"', add
label define ml09a_ind_lbl 06 `"Construction"', add
label define ml09a_ind_lbl 07 `"Commerce, motor vehicle repair and household goods"', add
label define ml09a_ind_lbl 08 `"Hotels and restaurants"', add
label define ml09a_ind_lbl 09 `"Transportation, auxiliary transport activiites and communications"', add
label define ml09a_ind_lbl 10 `"Financial activities"', add
label define ml09a_ind_lbl 11 `"Real estate, rending and business services"', add
label define ml09a_ind_lbl 12 `"Public administration"', add
label define ml09a_ind_lbl 13 `"Education"', add
label define ml09a_ind_lbl 14 `"Health and social work"', add
label define ml09a_ind_lbl 15 `"Collective or personal activities"', add
label define ml09a_ind_lbl 16 `"Private household services"', add
label define ml09a_ind_lbl 17 `"Activities of offshore organizations"', add
label define ml09a_ind_lbl 99 `"Unknown"', add
label values ml09a_ind ml09a_ind_lbl

label define ml09a_agric_lbl 01 `"Farming of dry grains"'
label define ml09a_agric_lbl 02 `"Rice farming"', add
label define ml09a_agric_lbl 03 `"Industrial farming"', add
label define ml09a_agric_lbl 04 `"Vegetable farming"', add
label define ml09a_agric_lbl 05 `"Fruit tree farming"', add
label define ml09a_agric_lbl 06 `"Livestock farming"', add
label define ml09a_agric_lbl 07 `"Fishing"', add
label define ml09a_agric_lbl 08 `"Forestry"', add
label define ml09a_agric_lbl 09 `"Harvesting"', add
label define ml09a_agric_lbl 10 `"Hunting"', add
label define ml09a_agric_lbl 11 `"Other agricultural activities"', add
label define ml09a_agric_lbl 98 `"Unknown"', add
label define ml09a_agric_lbl 99 `"NIU (not in universe)"', add
label values ml09a_agric ml09a_agric_lbl

label define ml09a_marst_lbl 1 `"Single"'
label define ml09a_marst_lbl 2 `"Married, monogamous union"', add
label define ml09a_marst_lbl 3 `"Married, polygamous union"', add
label define ml09a_marst_lbl 4 `"Widow(er)"', add
label define ml09a_marst_lbl 5 `"Divorced or separated"', add
label define ml09a_marst_lbl 6 `"De facto union or civil partnership"', add
label define ml09a_marst_lbl 8 `"Unknown"', add
label define ml09a_marst_lbl 9 `"NIU (not in universe)"', add
label values ml09a_marst ml09a_marst_lbl

label define ml09a_lit_lbl 0 `"NIU (not in universe)"'
label define ml09a_lit_lbl 1 `"Can read and write French only"', add
label define ml09a_lit_lbl 2 `"Can read and write in a national language only"', add
label define ml09a_lit_lbl 3 `"Can read and write in another language only"', add
label define ml09a_lit_lbl 4 `"Can read and write in French and a national language"', add
label define ml09a_lit_lbl 5 `"Can't read or write"', add
label define ml09a_lit_lbl 9 `"Unknown"', add
label values ml09a_lit ml09a_lit_lbl

label define ml09a_chbornm_lbl 00 `"0"'
label define ml09a_chbornm_lbl 01 `"1"', add
label define ml09a_chbornm_lbl 02 `"2"', add
label define ml09a_chbornm_lbl 03 `"3"', add
label define ml09a_chbornm_lbl 04 `"4"', add
label define ml09a_chbornm_lbl 05 `"5"', add
label define ml09a_chbornm_lbl 06 `"6"', add
label define ml09a_chbornm_lbl 07 `"7"', add
label define ml09a_chbornm_lbl 08 `"8"', add
label define ml09a_chbornm_lbl 09 `"9"', add
label define ml09a_chbornm_lbl 10 `"10"', add
label define ml09a_chbornm_lbl 11 `"11"', add
label define ml09a_chbornm_lbl 12 `"12+"', add
label define ml09a_chbornm_lbl 98 `"Unknown"', add
label define ml09a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values ml09a_chbornm ml09a_chbornm_lbl

label define ml09a_chbornf_lbl 00 `"0"'
label define ml09a_chbornf_lbl 01 `"1"', add
label define ml09a_chbornf_lbl 02 `"2"', add
label define ml09a_chbornf_lbl 03 `"3"', add
label define ml09a_chbornf_lbl 04 `"4"', add
label define ml09a_chbornf_lbl 05 `"5"', add
label define ml09a_chbornf_lbl 06 `"6"', add
label define ml09a_chbornf_lbl 07 `"7"', add
label define ml09a_chbornf_lbl 08 `"8"', add
label define ml09a_chbornf_lbl 09 `"9"', add
label define ml09a_chbornf_lbl 10 `"10"', add
label define ml09a_chbornf_lbl 11 `"11"', add
label define ml09a_chbornf_lbl 12 `"12+"', add
label define ml09a_chbornf_lbl 98 `"Unknown"', add
label define ml09a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values ml09a_chbornf ml09a_chbornf_lbl

label define ml09a_chsurvm_lbl 00 `"0"'
label define ml09a_chsurvm_lbl 01 `"1"', add
label define ml09a_chsurvm_lbl 02 `"2"', add
label define ml09a_chsurvm_lbl 03 `"3"', add
label define ml09a_chsurvm_lbl 04 `"4"', add
label define ml09a_chsurvm_lbl 05 `"5"', add
label define ml09a_chsurvm_lbl 06 `"6"', add
label define ml09a_chsurvm_lbl 07 `"7"', add
label define ml09a_chsurvm_lbl 08 `"8"', add
label define ml09a_chsurvm_lbl 09 `"9"', add
label define ml09a_chsurvm_lbl 10 `"10"', add
label define ml09a_chsurvm_lbl 11 `"11"', add
label define ml09a_chsurvm_lbl 12 `"12+"', add
label define ml09a_chsurvm_lbl 98 `"Unknown"', add
label define ml09a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values ml09a_chsurvm ml09a_chsurvm_lbl

label define ml09a_chsurvf_lbl 00 `"0"'
label define ml09a_chsurvf_lbl 01 `"1"', add
label define ml09a_chsurvf_lbl 02 `"2"', add
label define ml09a_chsurvf_lbl 03 `"3"', add
label define ml09a_chsurvf_lbl 04 `"4"', add
label define ml09a_chsurvf_lbl 05 `"5"', add
label define ml09a_chsurvf_lbl 06 `"6"', add
label define ml09a_chsurvf_lbl 07 `"7"', add
label define ml09a_chsurvf_lbl 08 `"8"', add
label define ml09a_chsurvf_lbl 09 `"9"', add
label define ml09a_chsurvf_lbl 10 `"10"', add
label define ml09a_chsurvf_lbl 11 `"11"', add
label define ml09a_chsurvf_lbl 12 `"12+"', add
label define ml09a_chsurvf_lbl 98 `"Unknown"', add
label define ml09a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values ml09a_chsurvf ml09a_chsurvf_lbl

label define ml09a_bth12mal_lbl 0 `"0"'
label define ml09a_bth12mal_lbl 1 `"1"', add
label define ml09a_bth12mal_lbl 2 `"2"', add
label define ml09a_bth12mal_lbl 3 `"3"', add
label define ml09a_bth12mal_lbl 4 `"4"', add
label define ml09a_bth12mal_lbl 8 `"Unknown"', add
label define ml09a_bth12mal_lbl 9 `"NIU (not in universe)"', add
label values ml09a_bth12mal ml09a_bth12mal_lbl

label define ml09a_bthfem12_lbl 0 `"0"'
label define ml09a_bthfem12_lbl 1 `"1"', add
label define ml09a_bthfem12_lbl 2 `"2"', add
label define ml09a_bthfem12_lbl 3 `"3"', add
label define ml09a_bthfem12_lbl 4 `"4"', add
label define ml09a_bthfem12_lbl 8 `"Unknown"', add
label define ml09a_bthfem12_lbl 9 `"NIU (not in universe)"', add
label values ml09a_bthfem12 ml09a_bthfem12_lbl


