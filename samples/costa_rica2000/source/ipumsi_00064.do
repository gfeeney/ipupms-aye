* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  int     persons         22-24    ///
  float   wthh            25-32    ///
  byte    gq              33-34    ///
  byte    unrel           35-35    ///
  byte    regionw         36-37    ///
  long    geolev1         38-43    ///
  long    geo1a_cr        44-49    ///
  int     geo2b_cr        50-52    ///
  long    cr00a_dwnum     53-59    ///
  byte    cr00a_hhnum     60-60    ///
  byte    cr00a_hhn       61-61    ///
  byte    cr00a_pernd     62-63    ///
  byte    cr00a_pern      64-65    ///
  byte    cr00a_fbig      66-66    ///
  byte    cr00a_prov      67-67    ///
  byte    cr00a_region    68-68    ///
  byte    cr00a_zone      69-69    ///
  byte    cr00a_indters   70-70    ///
  byte    cr00a_dwtype    71-71    ///
  byte    cr00a_occup     72-72    ///
  long    cr00a_rentmort  73-79    ///
  byte    cr00a_wall      80-80    ///
  byte    cr00a_roof      81-81    ///
  byte    cr00a_ceiling   82-82    ///
  byte    cr00a_floor     83-83    ///
  byte    cr00a_wallc     84-84    ///
  byte    cr00a_roofc     85-85    ///
  byte    cr00a_floorc    86-86    ///
  byte    cr00a_bedrm     87-88    ///
  byte    cr00a_rm        89-90    ///
  byte    cr00a_watsup    91-91    ///
  byte    cr00a_watsrc    92-92    ///
  byte    cr00a_sewer     93-93    ///
  byte    cr00a_toilet    94-94    ///
  byte    cr00a_elect     95-95    ///
  byte    cr00a_fuelcook  96-96    ///
  byte    cr00a_tv        97-97    ///
  byte    cr00a_phone     98-98    ///
  byte    cr00a_refrig    99-99    ///
  byte    cr00a_micro     100-100  ///
  byte    cr00a_shower    101-101  ///
  byte    cr00a_watheat   102-102  ///
  byte    cr00a_washer    103-103  ///
  byte    cr00a_computr   104-104  ///
  byte    cr00a_car       105-105  ///
  byte    cr00a_dwcond1   106-106  ///
  byte    cr00a_dwcond2   107-107  ///
  byte    cr00a_appown    108-108  ///
  byte    cr00a_crowd     109-109  ///
  byte    cr00a_hhtype    110-111  ///
  byte    cr00a_nbishel   112-112  ///
  byte    cr00a_nbihyg    113-113  ///
  byte    cr00a_nbiknow   114-114  ///
  byte    cr00a_nbicons   115-115  ///
  byte    cr00a_nbibas    116-116  ///
  int     pernum          117-119  ///
  float   wtper           120-127  ///
  byte    cr00a_pernum    128-129  ///
  byte    cr00a_relate    130-130  ///
  byte    cr00a_sex       131-131  ///
  byte    cr00a_age       132-133  ///
  byte    cr00a_bplp      134-134  ///
  int     cr00a_bplc      135-137  ///
  int     cr00a_arryr     138-141  ///
  byte    cr00a_nation    142-142  ///
  int     cr00a_citiz     143-145  ///
  byte    cr00a_ethnic    146-146  ///
  byte    cr00a_indig     147-147  ///
  byte    cr00a_indigsp   148-148  ///
  byte    cr00a_lang      149-149  ///
  byte    cr00a_socsec    150-150  ///
  byte    cr00a_disab     151-151  ///
  byte    cr00a_res5plc   152-152  ///
  int     cr00a_res5cant  153-155  ///
  byte    cr00a_school    156-156  ///
  byte    cr00a_grade     157-158  ///
  byte    cr00a_edattain  159-159  ///
  byte    cr00a_lit       160-160  ///
  byte    cr00a_marst     161-161  ///
  byte    cr00a_empstat   162-162  ///
  byte    cr00a_sector    163-163  ///
  byte    cr00a_ind2      164-165  ///
  int     cr00a_ind3      166-168  ///
  byte    cr00a_occ1      169-169  ///
  byte    cr00a_occ2      170-171  ///
  int     cr00a_occ3      172-174  ///
  int     cr00a_occ4      175-178  ///
  byte    cr00a_classwk   179-179  ///
  byte    cr00a_chborn    180-181  ///
  byte    cr00a_chsurv    182-183  ///
  byte    cr00a_hhtypep   184-185  ///
  byte    cr00a_ind2r     186-187  ///
  byte    cr00a_yrschool  188-189  ///
  using `"ipumsi_00064.dat"'

replace wthh           = wthh           / 100
replace wtper          = wtper          / 100

format serial         %10.0f
format wthh           %8.2f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var persons        `"Number of person records in the household"'
label var wthh           `"Household weight"'
label var gq             `"Group quarters status"'
label var unrel          `"Number of unrelated persons"'
label var regionw        `"Continent and region of country"'
label var geolev1        `"1st subnational geographic level, world [consistent boundaries over time]"'
label var geo1a_cr       `"Province, Costa Rica [Level 1; consistent boundaries over time]"'
label var geo2b_cr       `"Canton (20,000 and over), Costa Rica [Level 2; inconsistent boundaries, harmoniz"'
label var cr00a_dwnum    `"Dwelling number"'
label var cr00a_hhnum    `"Household number (within dwelling)"'
label var cr00a_hhn      `"Number of households in dwelling"'
label var cr00a_pernd    `"Number of persons in dwelling"'
label var cr00a_pern     `"Number of persons in household"'
label var cr00a_fbig     `"Household created by splitting apart a large dwelling"'
label var cr00a_prov     `"Province"'
label var cr00a_region   `"Region"'
label var cr00a_zone     `"Zone"'
label var cr00a_indters  `"Dwelling in indigenous territory"'
label var cr00a_dwtype   `"Dwelling type"'
label var cr00a_occup    `"Occupancy and ownership"'
label var cr00a_rentmort `"Monthly rent or mortgage"'
label var cr00a_wall     `"Wall material"'
label var cr00a_roof     `"Roof material"'
label var cr00a_ceiling  `"Interior ceiling"'
label var cr00a_floor    `"Floor material"'
label var cr00a_wallc    `"Wall condition"'
label var cr00a_roofc    `"Roof condition"'
label var cr00a_floorc   `"Floor condition"'
label var cr00a_bedrm    `"Bedrooms"'
label var cr00a_rm       `"Rooms"'
label var cr00a_watsup   `"Water supply"'
label var cr00a_watsrc   `"Source of water"'
label var cr00a_sewer    `"Sewage"'
label var cr00a_toilet   `"Use of toilet"'
label var cr00a_elect    `"Source of electric lighting"'
label var cr00a_fuelcook `"Cooking fuel"'
label var cr00a_tv       `"Color television"'
label var cr00a_phone    `"Telephone"'
label var cr00a_refrig   `"Refrigerator"'
label var cr00a_micro    `"Microwave oven"'
label var cr00a_shower   `"Hot water shower"'
label var cr00a_watheat  `"Water heater tank"'
label var cr00a_washer   `"Washing machine"'
label var cr00a_computr  `"Computer"'
label var cr00a_car      `"Car"'
label var cr00a_dwcond1  `"Condition of the dwelling"'
label var cr00a_dwcond2  `"Description of the dwelling"'
label var cr00a_appown   `"Ownership of appliances (one or more)"'
label var cr00a_crowd    `"Crowding in the dwelling(sleeping rooms)"'
label var cr00a_hhtype   `"Household type"'
label var cr00a_nbishel  `"Shelter UBN component"'
label var cr00a_nbihyg   `"Hygiene UBN component"'
label var cr00a_nbiknow  `"Knowledge UBN component"'
label var cr00a_nbicons  `"Consumption UBN component"'
label var cr00a_nbibas   `"Unsatisfied basic needs (UBN)"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var cr00a_pernum   `"Person number (within household)"'
label var cr00a_relate   `"Relationship to household head"'
label var cr00a_sex      `"Sex"'
label var cr00a_age      `"Age"'
label var cr00a_bplp     `"Birthplace in this canton"'
label var cr00a_bplc     `"Canton or country of birth"'
label var cr00a_arryr    `"Year of arrival in Costa Rica"'
label var cr00a_nation   `"Citizenship"'
label var cr00a_citiz    `"Country of citizenship"'
label var cr00a_ethnic   `"Race"'
label var cr00a_indig    `"Indigenous group"'
label var cr00a_indigsp  `"Speaks indigenous language"'
label var cr00a_lang     `"Language taught to speak"'
label var cr00a_socsec   `"Social security"'
label var cr00a_disab    `"Disability"'
label var cr00a_res5plc  `"Residence 5 years ago, status"'
label var cr00a_res5cant `"Canton or country of residence 5 years ago"'
label var cr00a_school   `"School attendance"'
label var cr00a_grade    `"Educational attainment, year and level"'
label var cr00a_edattain `"Educational attainment, level"'
label var cr00a_lit      `"Literacy"'
label var cr00a_marst    `"Marital status"'
label var cr00a_empstat  `"Employment status"'
label var cr00a_sector   `"Institutional sector"'
label var cr00a_ind2     `"Industry, 2 digits"'
label var cr00a_ind3     `"Industry, 3 digits"'
label var cr00a_occ1     `"Occupation, 1 digit"'
label var cr00a_occ2     `"Occupation, 2 digits"'
label var cr00a_occ3     `"Occupation, 3 digits"'
label var cr00a_occ4     `"Occupation, 4 digits"'
label var cr00a_classwk  `"Class of worker"'
label var cr00a_chborn   `"Children ever born"'
label var cr00a_chsurv   `"Children surviving"'
label var cr00a_hhtypep  `"Household structure"'
label var cr00a_ind2r    `"Industry, 2 digits, recoded"'
label var cr00a_yrschool `"Years of schooling"'

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

label define gq_lbl 00 `"Vacant"'
label define gq_lbl 10 `"Households"', add
label define gq_lbl 20 `"Group quarters, n.s."', add
label define gq_lbl 21 `"Institutions"', add
label define gq_lbl 22 `"Other group quarters"', add
label define gq_lbl 29 `"1-person unit created by splitting large household"', add
label define gq_lbl 99 `"Unknown/group quarters not identified"', add
label values gq gq_lbl

label define unrel_lbl 0 `"0"'
label define unrel_lbl 1 `"1"', add
label define unrel_lbl 2 `"2"', add
label define unrel_lbl 3 `"3"', add
label define unrel_lbl 4 `"4"', add
label define unrel_lbl 5 `"5"', add
label define unrel_lbl 6 `"6"', add
label define unrel_lbl 7 `"7"', add
label define unrel_lbl 8 `"8"', add
label define unrel_lbl 9 `"9+"', add
label values unrel unrel_lbl

label define regionw_lbl 11 `"Eastern Africa"'
label define regionw_lbl 12 `"Middle Africa"', add
label define regionw_lbl 13 `"Northern Africa"', add
label define regionw_lbl 14 `"Southern Africa"', add
label define regionw_lbl 15 `"Western Africa"', add
label define regionw_lbl 21 `"Caribbean"', add
label define regionw_lbl 22 `"Central America"', add
label define regionw_lbl 23 `"North America"', add
label define regionw_lbl 24 `"South America"', add
label define regionw_lbl 31 `"Central Asia"', add
label define regionw_lbl 32 `"Eastern Asia"', add
label define regionw_lbl 33 `"Southern Asia"', add
label define regionw_lbl 34 `"South-Eastern Asia"', add
label define regionw_lbl 35 `"Western Asia"', add
label define regionw_lbl 41 `"Eastern Europe"', add
label define regionw_lbl 42 `"Northern Europe"', add
label define regionw_lbl 43 `"Southern Europe"', add
label define regionw_lbl 44 `"Western Europe"', add
label define regionw_lbl 51 `"Australia and New Zealand"', add
label define regionw_lbl 52 `"Melanesia"', add
label define regionw_lbl 53 `"Micronesia"', add
label define regionw_lbl 54 `"Polynesia"', add
label values regionw regionw_lbl

label define geolev1_lbl 032002 `"City of Buenos Aires [Province: Argentina]"'
label define geolev1_lbl 032006 `"Buenos Aires province [Province: Argentina]"', add
label define geolev1_lbl 032010 `"Catamarca [Province: Argentina]"', add
label define geolev1_lbl 032014 `"Córdoba [Province: Argentina]"', add
label define geolev1_lbl 032018 `"Corrientes [Province: Argentina]"', add
label define geolev1_lbl 032022 `"Chaco [Province: Argentina]"', add
label define geolev1_lbl 032026 `"Chubut [Province: Argentina]"', add
label define geolev1_lbl 032030 `"Entre Ríos [Province: Argentina]"', add
label define geolev1_lbl 032034 `"Formosa [Province: Argentina]"', add
label define geolev1_lbl 032038 `"Jujuy [Province: Argentina]"', add
label define geolev1_lbl 032042 `"La Pampa [Province: Argentina]"', add
label define geolev1_lbl 032046 `"La Rioja [Province: Argentina]"', add
label define geolev1_lbl 032050 `"Mendoza [Province: Argentina]"', add
label define geolev1_lbl 032054 `"Misiones [Province: Argentina]"', add
label define geolev1_lbl 032058 `"Neuquén [Province: Argentina]"', add
label define geolev1_lbl 032062 `"Río Negro [Province: Argentina]"', add
label define geolev1_lbl 032066 `"Salta [Province: Argentina]"', add
label define geolev1_lbl 032070 `"San Juan [Province: Argentina]"', add
label define geolev1_lbl 032074 `"San Luis [Province: Argentina]"', add
label define geolev1_lbl 032078 `"Santa Cruz [Province: Argentina]"', add
label define geolev1_lbl 032082 `"Santa Fe [Province: Argentina]"', add
label define geolev1_lbl 032086 `"Santiago del Estero [Province: Argentina]"', add
label define geolev1_lbl 032090 `"Tucumán [Province: Argentina]"', add
label define geolev1_lbl 032094 `"Tierra del Fuego [Province: Argentina]"', add
label define geolev1_lbl 032099 `"Unknown [Province: Argentina]"', add
label define geolev1_lbl 051011 `"Yerevan [Province: Armenia]"', add
label define geolev1_lbl 051001 `"Aragatsotn [Province: Armenia]"', add
label define geolev1_lbl 051002 `"Ararat [Province: Armenia]"', add
label define geolev1_lbl 051003 `"Armavir [Province: Armenia]"', add
label define geolev1_lbl 051004 `"Gegharkunik [Province: Armenia]"', add
label define geolev1_lbl 051006 `"Lori [Province: Armenia]"', add
label define geolev1_lbl 051005 `"Kotayk [Province: Armenia]"', add
label define geolev1_lbl 051007 `"Shirak [Province: Armenia]"', add
label define geolev1_lbl 051008 `"Syunik [Province: Armenia]"', add
label define geolev1_lbl 051010 `"Yoyots Dzor [Province: Armenia]"', add
label define geolev1_lbl 051009 `"Tavush [Province: Armenia]"', add
label define geolev1_lbl 040011 `"Burgenland [State: Austria]"', add
label define geolev1_lbl 040012 `"Niederösterreich [State: Austria]"', add
label define geolev1_lbl 040013 `"Wien [State: Austria]"', add
label define geolev1_lbl 040021 `"Kärnten [State: Austria]"', add
label define geolev1_lbl 040022 `"Steiermark [State: Austria]"', add
label define geolev1_lbl 040031 `"Oberösterreich [State: Austria]"', add
label define geolev1_lbl 040032 `"Salzburg [State: Austria]"', add
label define geolev1_lbl 040033 `"Tirol [State: Austria]"', add
label define geolev1_lbl 040034 `"Vorarlberg [State: Austria]"', add
label define geolev1_lbl 050010 `"Barisal [Division, Bangladesh]"', add
label define geolev1_lbl 050020 `"Chittagong [Division, Bangladesh]"', add
label define geolev1_lbl 050030 `"Dhaka [Division, Bangladesh]"', add
label define geolev1_lbl 050040 `"Khulna [Division, Bangladesh]"', add
label define geolev1_lbl 050050 `"Rajshahi and Rangpur [Division, Bangladesh]"', add
label define geolev1_lbl 050060 `"Sylhet [Division, Bangladesh]"', add
label define geolev1_lbl 112001 `"Brest [Region: Belarus]"', add
label define geolev1_lbl 112002 `"Vitebsk [Region: Belarus]"', add
label define geolev1_lbl 112003 `"Gomel [Region: Belarus]"', add
label define geolev1_lbl 112004 `"Grodno [Region: Belarus]"', add
label define geolev1_lbl 112006 `"Minsk [Region: Belarus]"', add
label define geolev1_lbl 112007 `"Mogilev [Region: Belarus]"', add
label define geolev1_lbl 068001 `"Chuquisaca [Department: Bolivia]"', add
label define geolev1_lbl 068002 `"La Paz [Department: Bolivia]"', add
label define geolev1_lbl 068003 `"Cochabamba [Department: Bolivia]"', add
label define geolev1_lbl 068004 `"Oruro [Department: Bolivia]"', add
label define geolev1_lbl 068005 `"Potosí [Department: Bolivia]"', add
label define geolev1_lbl 068006 `"Tarija [Department: Bolivia]"', add
label define geolev1_lbl 068007 `"Santa Cruz [Department: Bolivia]"', add
label define geolev1_lbl 068008 `"Beni [Department: Bolivia]"', add
label define geolev1_lbl 068009 `"Pando [Department: Bolivia]"', add
label define geolev1_lbl 076011 `"Rondônia [State: Brazil]"', add
label define geolev1_lbl 076012 `"Acre [State: Brazil]"', add
label define geolev1_lbl 076013 `"Amazonas [State: Brazil]"', add
label define geolev1_lbl 076014 `"Roraima [State: Brazil]"', add
label define geolev1_lbl 076015 `"Pará [State: Brazil]"', add
label define geolev1_lbl 076016 `"Amapá [State: Brazil]"', add
label define geolev1_lbl 076021 `"Maranhão [State: Brazil]"', add
label define geolev1_lbl 076022 `"Piauí [State: Brazil]"', add
label define geolev1_lbl 076023 `"Ceará [State: Brazil]"', add
label define geolev1_lbl 076024 `"Rio Grande do Norte [State: Brazil]"', add
label define geolev1_lbl 076025 `"Paraíba [State: Brazil]"', add
label define geolev1_lbl 076026 `"Pernambuco [State: Brazil]"', add
label define geolev1_lbl 076027 `"Alagoas [State: Brazil]"', add
label define geolev1_lbl 076028 `"Sergipe [State: Brazil]"', add
label define geolev1_lbl 076029 `"Bahia [State: Brazil]"', add
label define geolev1_lbl 076031 `"Minas Gerais [State: Brazil]"', add
label define geolev1_lbl 076032 `"Espírito Santo [State: Brazil]"', add
label define geolev1_lbl 076033 `"Rio de Janeiro [State: Brazil]"', add
label define geolev1_lbl 076035 `"São Paulo [State: Brazil]"', add
label define geolev1_lbl 076041 `"Paraná [State: Brazil]"', add
label define geolev1_lbl 076042 `"Santa Catarina [State: Brazil]"', add
label define geolev1_lbl 076043 `"Rio Grande do Sul [State: Brazil]"', add
label define geolev1_lbl 076051 `"Mato Grosso and Mato Grosso do Sul [State: Brazil]"', add
label define geolev1_lbl 076052 `"Goiás and Tocantins  [State: Brazil]"', add
label define geolev1_lbl 076053 `"Distrito Federal [State: Brazil]"', add
label define geolev1_lbl 854003 `"Boucle du Mouhoun, Cascades, Centre, Centre-Ouest, Centre-Sud, Hauts-Bassins, Plateau Central, Sud-Ouest, Centre-Est, Centre-Nord, Est [Region: Burkina Faso]"', add
label define geolev1_lbl 854010 `"Nord [Region: Burkina Faso]"', add
label define geolev1_lbl 854012 `"Sahel [Region: Burkina Faso]"', add
label define geolev1_lbl 116001 `"Banteay Mean Chey [Province: Cambodia]"', add
label define geolev1_lbl 116002 `"Bat Dambang [Province: Cambodia]"', add
label define geolev1_lbl 116003 `"Kampong Cham [Province: Cambodia]"', add
label define geolev1_lbl 116004 `"Kampong Chhnang [Province: Cambodia]"', add
label define geolev1_lbl 116005 `"Kampong Spueu [Province: Cambodia]"', add
label define geolev1_lbl 116006 `"Kampong Thum [Province: Cambodia]"', add
label define geolev1_lbl 116007 `"Kampot [Province: Cambodia]"', add
label define geolev1_lbl 116008 `"Kandal [Province: Cambodia]"', add
label define geolev1_lbl 116009 `"Kaoh Kong [Province: Cambodia]"', add
label define geolev1_lbl 116010 `"Kracheh [Province: Cambodia]"', add
label define geolev1_lbl 116011 `"Mondol Kiri [Province: Cambodia]"', add
label define geolev1_lbl 116012 `"Phnom Penh [Province: Cambodia]"', add
label define geolev1_lbl 116013 `"Preah Vihear [Province: Cambodia]"', add
label define geolev1_lbl 116014 `"Prey Veaeng [Province: Cambodia]"', add
label define geolev1_lbl 116015 `"Pousat [Province: Cambodia]"', add
label define geolev1_lbl 116016 `"Rotanak Kiri [Province: Cambodia]"', add
label define geolev1_lbl 116017 `"Siem Reab [Province: Cambodia]"', add
label define geolev1_lbl 116018 `"Krong Preah Sihanouk [Province: Cambodia]"', add
label define geolev1_lbl 116019 `"Stueng Traeng [Province: Cambodia]"', add
label define geolev1_lbl 116020 `"Svay Rieng [Province: Cambodia]"', add
label define geolev1_lbl 116021 `"Takaev [Province: Cambodia]"', add
label define geolev1_lbl 116022 `"Otdar Mean Chey [Province: Cambodia]"', add
label define geolev1_lbl 116023 `"Krong Kaeb [Province: Cambodia]"', add
label define geolev1_lbl 116024 `"Krong Pailin [Province: Cambodia]"', add
label define geolev1_lbl 120002 `"Centre and Sud [Province: Cameroon]"', add
label define geolev1_lbl 120003 `"Est [Province: Cameroon]"', add
label define geolev1_lbl 120004 `"Nord,  Adamoua , and Extrème Nord [Province: Cameroon]"', add
label define geolev1_lbl 120005 `"Littoral [Province: Cameroon]"', add
label define geolev1_lbl 120007 `"Nord Ouest [Province: Cameroon]"', add
label define geolev1_lbl 120008 `"Ouest [Province: Cameroon]"', add
label define geolev1_lbl 120010 `"Sud Ouest [Province: Cameroon]"', add
label define geolev1_lbl 124010 `"Newfoundland and Labrador [Province: Canada]"', add
label define geolev1_lbl 124011 `"Prince Edward Island, Yukon, Northwest Territories, and Nunavut [Province: Canada]"', add
label define geolev1_lbl 124012 `"Nova Scotia [Province: Canada]"', add
label define geolev1_lbl 124013 `"New Brunswick [Province: Canada]"', add
label define geolev1_lbl 124024 `"Quebec [Province: Canada]"', add
label define geolev1_lbl 124035 `"Ontario [Province: Canada]"', add
label define geolev1_lbl 124046 `"Manitoba [Province: Canada]"', add
label define geolev1_lbl 124047 `"Saskatchewan [Province: Canada]"', add
label define geolev1_lbl 124048 `"Alberta [Province: Canada]"', add
label define geolev1_lbl 124059 `"British Columbia [Province: Canada]"', add
label define geolev1_lbl 152002 `"Antofagasta and Tarapacá [Region: Chile]"', add
label define geolev1_lbl 152004 `"Atacama and Coquimbo [Region: Chile]"', add
label define geolev1_lbl 152007 `"Del Maule  [Region: Chile]"', add
label define geolev1_lbl 152008 `"Del Biobio [Region: Chile]"', add
label define geolev1_lbl 152009 `"La Araucanía [Region: Chile]"', add
label define geolev1_lbl 152010 `"Aysen del Gral Carlos Ibáñez del Campo and Los Lagos [Region: Chile]"', add
label define geolev1_lbl 152012 `"Magallanes and La Antártica Chilena [Region: Chile]"', add
label define geolev1_lbl 152013 `"Libertador General Bernardo O"Higgins (La Alameda), Metropolitana de Santiago, and Valparaiso  [Region: Chile]"', add
label define geolev1_lbl 152099 `"Unknown  [Region: Chile]"', add
label define geolev1_lbl 156011 `"Beijing (municipality) [Province: China]"', add
label define geolev1_lbl 156012 `"Tianjin (municipality) [Province: China]"', add
label define geolev1_lbl 156013 `"Hebei [Province: China]"', add
label define geolev1_lbl 156014 `"Shanxi [Province: China]"', add
label define geolev1_lbl 156015 `"Inner Mongolia [Province: China]"', add
label define geolev1_lbl 156021 `"Liaoning [Province: China]"', add
label define geolev1_lbl 156022 `"Jilin [Province: China]"', add
label define geolev1_lbl 156023 `"Heilongjiang [Province: China]"', add
label define geolev1_lbl 156031 `"Shanghai (municipality) [Province: China]"', add
label define geolev1_lbl 156032 `"Jiangsu [Province: China]"', add
label define geolev1_lbl 156033 `"Zhejiang [Province: China]"', add
label define geolev1_lbl 156034 `"Anhui [Province: China]"', add
label define geolev1_lbl 156035 `"Fujian [Province: China]"', add
label define geolev1_lbl 156036 `"Jiangxi [Province: China]"', add
label define geolev1_lbl 156037 `"Shangdong [Province: China]"', add
label define geolev1_lbl 156041 `"Henan [Province: China]"', add
label define geolev1_lbl 156042 `"Hubei [Province: China]"', add
label define geolev1_lbl 156043 `"Hunan [Province: China]"', add
label define geolev1_lbl 156044 `"Guangdong and Hainan [Province: China]"', add
label define geolev1_lbl 156045 `"Guangxi [Province: China]"', add
label define geolev1_lbl 156051 `"Sichuan [Province: China]"', add
label define geolev1_lbl 156052 `"Guizhou [Province: China]"', add
label define geolev1_lbl 156053 `"Yunnan [Province: China]"', add
label define geolev1_lbl 156054 `"Tibet [Province: China]"', add
label define geolev1_lbl 156061 `"Shaanxi [Province: China]"', add
label define geolev1_lbl 156062 `"Gansu [Province: China]"', add
label define geolev1_lbl 156063 `"Qinghai [Province: China]"', add
label define geolev1_lbl 156064 `"Ningxia [Province: China]"', add
label define geolev1_lbl 156065 `"Xinjiang [Province: China]"', add
label define geolev1_lbl 170005 `"Antioquia [Department: Colombia]"', add
label define geolev1_lbl 170008 `"Atlántico [Department: Colombia]"', add
label define geolev1_lbl 170011 `"Bogotá [Department: Colombia]"', add
label define geolev1_lbl 170013 `"Bolivar and Sucre [Department: Colombia]"', add
label define geolev1_lbl 170015 `"Boyacá and Casanare [Department: Colombia]"', add
label define geolev1_lbl 170018 `"Caquetá [Department: Colombia]"', add
label define geolev1_lbl 170019 `"Cauca [Department: Colombia]"', add
label define geolev1_lbl 170023 `"Cordoba [Department: Colombia]"', add
label define geolev1_lbl 170025 `"Cundinamarca [Department: Colombia]"', add
label define geolev1_lbl 170027 `"Chocó [Department: Colombia]"', add
label define geolev1_lbl 170041 `"Huila [Department: Colombia]"', add
label define geolev1_lbl 170044 `"La Guajira [Department: Colombia]"', add
label define geolev1_lbl 170047 `"Cesar and Magdalena  [Department: Colombia]"', add
label define geolev1_lbl 170050 `"Meta and Vichada [Department: Colombia]"', add
label define geolev1_lbl 170052 `"Nariño [Department: Colombia]"', add
label define geolev1_lbl 170054 `"Norte Santander [Department: Colombia]"', add
label define geolev1_lbl 170066 `"Caldas, Quindio, and Risaralda [Department: Colombia]"', add
label define geolev1_lbl 170068 `"Santander [Department: Colombia]"', add
label define geolev1_lbl 170073 `"Tolima [Department: Colombia]"', add
label define geolev1_lbl 170076 `"Valle [Department: Colombia]"', add
label define geolev1_lbl 170081 `"Arauca [Department: Colombia]"', add
label define geolev1_lbl 170086 `"Putumayo [Department: Colombia]"', add
label define geolev1_lbl 170088 `"San Andrés [Department: Colombia]"', add
label define geolev1_lbl 170091 `"Amazonas [Department: Colombia]"', add
label define geolev1_lbl 170095 `"Guaviare, Vaupes, and Guaina [Department: Colombia]"', add
label define geolev1_lbl 188001 `"San José [Province: Costa Rica]"', add
label define geolev1_lbl 188002 `"Alajuela [Province: Costa Rica]"', add
label define geolev1_lbl 188003 `"Cartago [Province: Costa Rica]"', add
label define geolev1_lbl 188004 `"Heredia [Province: Costa Rica]"', add
label define geolev1_lbl 188005 `"Guanacaste [Province: Costa Rica]"', add
label define geolev1_lbl 188006 `"Puntarenas [Province: Costa Rica]"', add
label define geolev1_lbl 188007 `"Limón [Province: Costa Rica]"', add
label define geolev1_lbl 192001 `"Pinar del Rio [Province: Cuba]"', add
label define geolev1_lbl 192002 `"La Habana [Province: Cuba]"', add
label define geolev1_lbl 192003 `"Ciudad de la Habana [Province: Cuba]"', add
label define geolev1_lbl 192004 `"Matanzas [Province: Cuba]"', add
label define geolev1_lbl 192005 `"Villa Clara [Province: Cuba]"', add
label define geolev1_lbl 192006 `"Cienfuegos [Province: Cuba]"', add
label define geolev1_lbl 192007 `"Sancti Spiritus [Province: Cuba]"', add
label define geolev1_lbl 192008 `"Ciego de Avila [Province: Cuba]"', add
label define geolev1_lbl 192009 `"Camaguey [Province: Cuba]"', add
label define geolev1_lbl 192010 `"Las Tunas [Province: Cuba]"', add
label define geolev1_lbl 192011 `"Holguin [Province: Cuba]"', add
label define geolev1_lbl 192012 `"Granma [Province: Cuba]"', add
label define geolev1_lbl 192013 `"Santiago de Cuba [Province: Cuba]"', add
label define geolev1_lbl 192014 `"Guantanamo [Province: Cuba]"', add
label define geolev1_lbl 192099 `"Isla de la Juventud [Province: Cuba]"', add
label define geolev1_lbl 214001 `"Federal district and Santo Domingo [Province: Dominican Republic]"', add
label define geolev1_lbl 214002 `"Azua [Province: Dominican Republic]"', add
label define geolev1_lbl 214003 `"Baoruco [Province: Dominican Republic]"', add
label define geolev1_lbl 214004 `"Barahona [Province: Dominican Republic]"', add
label define geolev1_lbl 214005 `"Dajabón [Province: Dominican Republic]"', add
label define geolev1_lbl 214006 `"Duarte [Province: Dominican Republic]"', add
label define geolev1_lbl 214007 `"Elías Piña [Province: Dominican Republic]"', add
label define geolev1_lbl 214008 `"El Seibo and Hato Mayor [Province: Dominican Republic]"', add
label define geolev1_lbl 214009 `"Espaillat [Province: Dominican Republic]"', add
label define geolev1_lbl 214010 `"Independencia [Province: Dominican Republic]"', add
label define geolev1_lbl 214011 `"La Altagracia and La Romana [Province: Dominican Republic]"', add
label define geolev1_lbl 214013 `"La Vega and Monseñor Nouel [Province: Dominican Republic]"', add
label define geolev1_lbl 214014 `"María Trinidad Sánchez and Samaná [Province: Dominican Republic]"', add
label define geolev1_lbl 214015 `"Monte Cristi [Province: Dominican Republic]"', add
label define geolev1_lbl 214016 `"Pedernales [Province: Dominican Republic]"', add
label define geolev1_lbl 214017 `"Peravia and San José de Ocoa [Province: Dominican Republic]"', add
label define geolev1_lbl 214018 `"Puerto Plata [Province: Dominican Republic]"', add
label define geolev1_lbl 214019 `"Hermanas Mirabal [Province: Dominican Republic]"', add
label define geolev1_lbl 214021 `"San Cristóbal and Monte Plata [Province: Dominican Republic]"', add
label define geolev1_lbl 214022 `"San Juan [Province: Dominican Republic]"', add
label define geolev1_lbl 214023 `"San Pedro de Macorís [Province: Dominican Republic]"', add
label define geolev1_lbl 214024 `"Sánchez Ramírez [Province: Dominican Republic]"', add
label define geolev1_lbl 214025 `"Santiago [Province: Dominican Republic]"', add
label define geolev1_lbl 214026 `"Santiago Rodríguez [Province: Dominican Republic]"', add
label define geolev1_lbl 214027 `"Valverde [Province: Dominican Republic]"', add
label define geolev1_lbl 218001 `"Azuay [Province: Ecuador]"', add
label define geolev1_lbl 218002 `"Bolivar [Province: Ecuador]"', add
label define geolev1_lbl 218003 `"Cañar [Province: Ecuador]"', add
label define geolev1_lbl 218004 `"Carchi [Province: Ecuador]"', add
label define geolev1_lbl 218005 `"Cotopaxi [Province: Ecuador]"', add
label define geolev1_lbl 218006 `"Chimborazo [Province: Ecuador]"', add
label define geolev1_lbl 218007 `"El Oro [Province: Ecuador]"', add
label define geolev1_lbl 218008 `"Esmeraldas [Province: Ecuador]"', add
label define geolev1_lbl 218009 `"Guayas, Santa Elena, and Galapagos [Province: Ecuador]"', add
label define geolev1_lbl 218010 `"Imbabura [Province: Ecuador]"', add
label define geolev1_lbl 218011 `"Loja [Province: Ecuador]"', add
label define geolev1_lbl 218012 `"Los Ríos [Province: Ecuador]"', add
label define geolev1_lbl 218013 `"Manabí [Province: Ecuador]"', add
label define geolev1_lbl 218014 `"Morona Santiago [Province: Ecuador]"', add
label define geolev1_lbl 218016 `"Pastaza [Province: Ecuador]"', add
label define geolev1_lbl 218017 `"Pichincha and Santo Domingo de los Tsáchilas [Province: Ecuador]"', add
label define geolev1_lbl 218018 `"Tungurahua [Province: Ecuador]"', add
label define geolev1_lbl 218019 `"Zamora Chinchipe [Province: Ecuador]"', add
label define geolev1_lbl 218021 `"Napo, Orellana, and Sucumbios [Province: Ecuador]"', add
label define geolev1_lbl 218023 `"Disputed Zones [Province: Ecuador]"', add
label define geolev1_lbl 218099 `"Unknown [Province: Ecuador]"', add
label define geolev1_lbl 818001 `"Cairo [Governorate: Egypt]"', add
label define geolev1_lbl 818002 `"Alexandria [Governorate: Egypt]"', add
label define geolev1_lbl 818003 `"Port Said [Governorate: Egypt]"', add
label define geolev1_lbl 818004 `"Suez [Governorate: Egypt]"', add
label define geolev1_lbl 818011 `"Damietta [Governorate: Egypt]"', add
label define geolev1_lbl 818012 `"Dakahlia [Governorate: Egypt]"', add
label define geolev1_lbl 818013 `"Sharkia [Governorate: Egypt]"', add
label define geolev1_lbl 818014 `"Kaliobia [Governorate: Egypt]"', add
label define geolev1_lbl 818015 `"Kafr Sheikh [Governorate: Egypt]"', add
label define geolev1_lbl 818016 `"Gharbia [Governorate: Egypt]"', add
label define geolev1_lbl 818017 `"Menoufia [Governorate: Egypt]"', add
label define geolev1_lbl 818018 `"Behera [Governorate: Egypt]"', add
label define geolev1_lbl 818019 `"Ismailia [Governorate: Egypt]"', add
label define geolev1_lbl 818021 `"Giza [Governorate: Egypt]"', add
label define geolev1_lbl 818022 `"Bani Swif [Governorate: Egypt]"', add
label define geolev1_lbl 818023 `"Fayoum [Governorate: Egypt]"', add
label define geolev1_lbl 818024 `"Menia [Governorate: Egypt]"', add
label define geolev1_lbl 818025 `"Asiut [Governorate: Egypt]"', add
label define geolev1_lbl 818026 `"Sohag [Governorate: Egypt]"', add
label define geolev1_lbl 818027 `"Qena [Governorate: Egypt]"', add
label define geolev1_lbl 818028 `"Aswan [Governorate: Egypt]"', add
label define geolev1_lbl 818029 `"Luxor [Governorate: Egypt]"', add
label define geolev1_lbl 818031 `"Red Sea [Governorate: Egypt]"', add
label define geolev1_lbl 818032 `"New Valley [Governorate: Egypt]"', add
label define geolev1_lbl 818033 `"Marsa Matroh [Governorate: Egypt]"', add
label define geolev1_lbl 818034 `"North Sinai [Governorate: Egypt]"', add
label define geolev1_lbl 818035 `"South Sinai [Governorate: Egypt]"', add
label define geolev1_lbl 222001 `"Ahuachapán [Department: El Salvador]"', add
label define geolev1_lbl 222002 `"Santa Ana [Department: El Salvador]"', add
label define geolev1_lbl 222003 `"Sonsonate [Department: El Salvador]"', add
label define geolev1_lbl 222004 `"Chalatenango [Department: El Salvador]"', add
label define geolev1_lbl 222005 `"La Libertad [Department: El Salvador]"', add
label define geolev1_lbl 222006 `"San Salvador [Department: El Salvador]"', add
label define geolev1_lbl 222007 `"Cuscatlán [Department: El Salvador]"', add
label define geolev1_lbl 222008 `"La Paz [Department: El Salvador]"', add
label define geolev1_lbl 222009 `"Cabañas [Department: El Salvador]"', add
label define geolev1_lbl 222010 `"San Vicente [Department: El Salvador]"', add
label define geolev1_lbl 222011 `"Usulután [Department: El Salvador]"', add
label define geolev1_lbl 222012 `"San Miguel [Department: El Salvador]"', add
label define geolev1_lbl 222013 `"Morazán [Department: El Salvador]"', add
label define geolev1_lbl 222014 `"La Unión [Department: El Salvador]"', add
label define geolev1_lbl 242001 `"Ba [Province: Fiji]"', add
label define geolev1_lbl 242003 `"Bua and Cakaudrove [Province: Fiji]"', add
label define geolev1_lbl 242006 `"Kadavu, Lau, Lomaiviti, and Rotuma [Province: Fiji]"', add
label define geolev1_lbl 242007 `"Macuata [Province: Fiji]"', add
label define geolev1_lbl 242008 `"Nadroha [Province: Fiji]"', add
label define geolev1_lbl 242009 `"Naitasiri [Province: Fiji]"', add
label define geolev1_lbl 242011 `"Ra [Province: Fiji]"', add
label define geolev1_lbl 242012 `"Rewa [Province: Fiji]"', add
label define geolev1_lbl 242014 `"Serua and Namosi [Province: Fiji]"', add
label define geolev1_lbl 242015 `"Tailevu [Province: Fiji]"', add
label define geolev1_lbl 242099 `"Ships and unknown [Province: Fiji]"', add
label define geolev1_lbl 250001 `"Guadeloupe [Oversea Department, France]"', add
label define geolev1_lbl 250002 `"Martinique [Oversea Department, France]"', add
label define geolev1_lbl 250003 `"Guyane [Oversea Department, France]"', add
label define geolev1_lbl 250004 `"La Réunion [Oversea Department, France]"', add
label define geolev1_lbl 250011 `"Region d'Île de France [Region: France]"', add
label define geolev1_lbl 250021 `"Champagne-Ardenne [Region: France]"', add
label define geolev1_lbl 250022 `"Picardie [Region: France]"', add
label define geolev1_lbl 250023 `"Haute-Normandie [Region: France]"', add
label define geolev1_lbl 250024 `"Centre [Region: France]"', add
label define geolev1_lbl 250025 `"Basse-Normandie [Region: France]"', add
label define geolev1_lbl 250026 `"Bourgogne [Region: France]"', add
label define geolev1_lbl 250031 `"Nord-Pas-de-Calais [Region: France]"', add
label define geolev1_lbl 250041 `"Lorraine [Region: France]"', add
label define geolev1_lbl 250042 `"Alsace [Region: France]"', add
label define geolev1_lbl 250043 `"Franche-Comté [Region: France]"', add
label define geolev1_lbl 250052 `"Pays de la Loire [Region: France]"', add
label define geolev1_lbl 250053 `"Bretagne [Region: France]"', add
label define geolev1_lbl 250054 `"Poitou-Charentes [Region: France]"', add
label define geolev1_lbl 250072 `"Aquitaine [Region: France]"', add
label define geolev1_lbl 250073 `"Midi-Pyrénées [Region: France]"', add
label define geolev1_lbl 250074 `"Limousin [Region: France]"', add
label define geolev1_lbl 250082 `"Rhône-Alpes [Region: France]"', add
label define geolev1_lbl 250083 `"Auvergne [Region: France]"', add
label define geolev1_lbl 250091 `"Lanquedoc-Roussillon [Region: France]"', add
label define geolev1_lbl 250093 `"Provence-Alpes-Côte d'Azur [Region: France]"', add
label define geolev1_lbl 250094 `"Corse [Region: France]"', add
label define geolev1_lbl 276001 `"Schleswig-Holstein [State: Germany]"', add
label define geolev1_lbl 276002 `"Hamburg [State: Germany]"', add
label define geolev1_lbl 276003 `"Niedersachsen [State: Germany]"', add
label define geolev1_lbl 276004 `"Bremen [State: Germany]"', add
label define geolev1_lbl 276005 `"Nordrhein-Westfalen [State: Germany]"', add
label define geolev1_lbl 276006 `"Hessen [State: Germany]"', add
label define geolev1_lbl 276007 `"Rheinland-Pfalz [State: Germany]"', add
label define geolev1_lbl 276008 `"Baden-Württemberg [State: Germany]"', add
label define geolev1_lbl 276009 `"Bayern [State: Germany]"', add
label define geolev1_lbl 276010 `"Saarland [State: Germany]"', add
label define geolev1_lbl 276012 `"Brandenburg [State: Germany]"', add
label define geolev1_lbl 276013 `"Mecklenburg-West Pomerania [State: Germany]"', add
label define geolev1_lbl 276014 `"Saxony [State: Germany]"', add
label define geolev1_lbl 276015 `"Saxony-Anhalt [State: Germany]"', add
label define geolev1_lbl 276016 `"Thuringia [State: Germany]"', add
label define geolev1_lbl 276017 `"East Berlin [State: Germany]"', add
label define geolev1_lbl 276018 `"West Berlin [State: Germany]"', add
label define geolev1_lbl 276099 `"NIU (Not in universe) [State: Germany]"', add
label define geolev1_lbl 288001 `"Western [Region: Ghana]"', add
label define geolev1_lbl 288002 `"Central [Region: Ghana]"', add
label define geolev1_lbl 288003 `"Greater Accra [Region: Ghana]"', add
label define geolev1_lbl 288004 `"Volta [Region: Ghana]"', add
label define geolev1_lbl 288005 `"Eastern [Region: Ghana]"', add
label define geolev1_lbl 288006 `"Ashanti [Region: Ghana]"', add
label define geolev1_lbl 288007 `"Brong Ahafo [Region: Ghana]"', add
label define geolev1_lbl 288008 `"Northern [Region: Ghana]"', add
label define geolev1_lbl 288009 `"Upper East [Region: Ghana]"', add
label define geolev1_lbl 288010 `"Upper West [Region: Ghana]"', add
label define geolev1_lbl 300001 `"Etolia and Akarnania [Department: Greece]"', add
label define geolev1_lbl 300003 `"Viotia [Department: Greece]"', add
label define geolev1_lbl 300004 `"Evia [Department: Greece]"', add
label define geolev1_lbl 300005 `"Evrytania [Department: Greece]"', add
label define geolev1_lbl 300006 `"Fthiotida [Department: Greece]"', add
label define geolev1_lbl 300007 `"Fokida [Department: Greece]"', add
label define geolev1_lbl 300011 `"Argolida [Department: Greece]"', add
label define geolev1_lbl 300012 `"Arkadia [Department: Greece]"', add
label define geolev1_lbl 300013 `"Achaia [Department: Greece]"', add
label define geolev1_lbl 300014 `"Ilia [Department: Greece]"', add
label define geolev1_lbl 300015 `"Korinthia [Department: Greece]"', add
label define geolev1_lbl 300016 `"Lakonia [Department: Greece]"', add
label define geolev1_lbl 300017 `"Messinia [Department: Greece]"', add
label define geolev1_lbl 300021 `"Zakynthos [Department: Greece]"', add
label define geolev1_lbl 300022 `"Kerkyra [Department: Greece]"', add
label define geolev1_lbl 300023 `"Kefallinia [Department: Greece]"', add
label define geolev1_lbl 300024 `"Lefkada [Department: Greece]"', add
label define geolev1_lbl 300031 `"Arta [Department: Greece]"', add
label define geolev1_lbl 300032 `"Thesprotia [Department: Greece]"', add
label define geolev1_lbl 300033 `"Ioannina [Department: Greece]"', add
label define geolev1_lbl 300034 `"Preveza [Department: Greece]"', add
label define geolev1_lbl 300041 `"Karditsa [Department: Greece]"', add
label define geolev1_lbl 300042 `"Larissa [Department: Greece]"', add
label define geolev1_lbl 300043 `"Magnissia [Department: Greece]"', add
label define geolev1_lbl 300044 `"Trikala [Department: Greece]"', add
label define geolev1_lbl 300051 `"Grevena [Department: Greece]"', add
label define geolev1_lbl 300052 `"Drama [Department: Greece]"', add
label define geolev1_lbl 300053 `"Imathia [Department: Greece]"', add
label define geolev1_lbl 300054 `"Thessaloniki [Department: Greece]"', add
label define geolev1_lbl 300055 `"Kavala [Department: Greece]"', add
label define geolev1_lbl 300056 `"Kastoria [Department: Greece]"', add
label define geolev1_lbl 300057 `"Kilkis [Department: Greece]"', add
label define geolev1_lbl 300058 `"Kozani [Department: Greece]"', add
label define geolev1_lbl 300059 `"Pella [Department: Greece]"', add
label define geolev1_lbl 300061 `"Pieria [Department: Greece]"', add
label define geolev1_lbl 300062 `"Serres [Department: Greece]"', add
label define geolev1_lbl 300063 `"Florina [Department: Greece]"', add
label define geolev1_lbl 300064 `"Chalkidiki and Aghion Oros [Department: Greece]"', add
label define geolev1_lbl 300071 `"Evros [Department: Greece]"', add
label define geolev1_lbl 300072 `"Xanthi [Department: Greece]"', add
label define geolev1_lbl 300073 `"Rodopi [Department: Greece]"', add
label define geolev1_lbl 300081 `"Dodekanissos [Department: Greece]"', add
label define geolev1_lbl 300082 `"Kyklades [Department: Greece]"', add
label define geolev1_lbl 300083 `"Lesvos [Department: Greece]"', add
label define geolev1_lbl 300084 `"Samos [Department: Greece]"', add
label define geolev1_lbl 300085 `"Chios [Department: Greece]"', add
label define geolev1_lbl 300091 `"Iraklio [Department: Greece]"', add
label define geolev1_lbl 300092 `"Lassithi [Department: Greece]"', add
label define geolev1_lbl 300093 `"Rethymno [Department: Greece]"', add
label define geolev1_lbl 300094 `"Chania [Department: Greece]"', add
label define geolev1_lbl 300101 `"Prefecture of Athens [Department: Greece]"', add
label define geolev1_lbl 300102 `"Prefecture of East Attiki [Department: Greece]"', add
label define geolev1_lbl 300103 `"Prefecture of West Attiki [Department: Greece]"', add
label define geolev1_lbl 300104 `"Prefecture of Pireas [Department: Greece]"', add
label define geolev1_lbl 324001 `"Boké [Region: Guinea]"', add
label define geolev1_lbl 324002 `"Faranah [Region: Guinea]"', add
label define geolev1_lbl 324003 `"Kankan [Region: Guinea]"', add
label define geolev1_lbl 324004 `"Kindia, Labe, and Mamzu [Region: Guinea]"', add
label define geolev1_lbl 324007 `"N'zerekore [Region: Guinea]"', add
label define geolev1_lbl 324008 `"Conakry [Region: Guinea]"', add
label define geolev1_lbl 332001 `"Ouest (West)  [Department: Haiti]"', add
label define geolev1_lbl 332002 `"Sud'Est (South East)  [Department: Haiti]"', add
label define geolev1_lbl 332003 `"Nord (North)  [Department: Haiti]"', add
label define geolev1_lbl 332004 `"Nord'est (North East)  [Department: Haiti]"', add
label define geolev1_lbl 332005 `"Artibonite  [Department: Haiti]"', add
label define geolev1_lbl 332006 `"Centre  [Department: Haiti]"', add
label define geolev1_lbl 332007 `"Sud (South)  [Department: Haiti]"', add
label define geolev1_lbl 332008 `"Grand'Anse and Nippes  [Department: Haiti]"', add
label define geolev1_lbl 332009 `"Nord'Ouest (North West)  [Department: Haiti]"', add
label define geolev1_lbl 356001 `"Jammu and Kashmir [State: India]"', add
label define geolev1_lbl 356002 `"Himachal Pradesh [State: India]"', add
label define geolev1_lbl 356003 `"Punjab [State: India]"', add
label define geolev1_lbl 356004 `"Chandigarh [State: India]"', add
label define geolev1_lbl 356006 `"Haryana [State: India]"', add
label define geolev1_lbl 356007 `"Delhi [State: India]"', add
label define geolev1_lbl 356008 `"Rajasthan [State: India]"', add
label define geolev1_lbl 356009 `"Uttar Pradesh and Uttaranchal [State: India]"', add
label define geolev1_lbl 356010 `"Bihar and Jharkhand [State: India]"', add
label define geolev1_lbl 356011 `"Sikkim [State: India]"', add
label define geolev1_lbl 356012 `"Arunachal Pradesh [State: India]"', add
label define geolev1_lbl 356013 `"Nagaland [State: India]"', add
label define geolev1_lbl 356014 `"Manipur [State: India]"', add
label define geolev1_lbl 356015 `"Mizoram [State: India]"', add
label define geolev1_lbl 356016 `"Tripura [State: India]"', add
label define geolev1_lbl 356017 `"Meghalaya [State: India]"', add
label define geolev1_lbl 356018 `"Assam [State: India]"', add
label define geolev1_lbl 356019 `"West Bengal [State: India]"', add
label define geolev1_lbl 356021 `"Orissa [State: India]"', add
label define geolev1_lbl 356023 `"Chhattisgarh and Madhya Pradesh [State: India]"', add
label define geolev1_lbl 356024 `"Gujarat [State: India]"', add
label define geolev1_lbl 356026 `"Dadra and Nagar Haveli [State: India]"', add
label define geolev1_lbl 356027 `"Maharashtra [State: India]"', add
label define geolev1_lbl 356028 `"Andhra Pradesh [State: India]"', add
label define geolev1_lbl 356029 `"Karnataka [State: India]"', add
label define geolev1_lbl 356030 `"Daman and Diu and Goa [State: India]"', add
label define geolev1_lbl 356031 `"Lakshadweep [State: India]"', add
label define geolev1_lbl 356032 `"Kerala [State: India]"', add
label define geolev1_lbl 356033 `"Tamil Nadu [State: India]"', add
label define geolev1_lbl 356034 `"Pondicherry [State: India]"', add
label define geolev1_lbl 356035 `"Andaman and Nicobar Islands [State: India]"', add
label define geolev1_lbl 360011 `"Nanggroe Aceh Darussalam [Province: Indonesia]"', add
label define geolev1_lbl 360012 `"Sumatera Utara [Province: Indonesia]"', add
label define geolev1_lbl 360013 `"Sumatera Barat [Province: Indonesia]"', add
label define geolev1_lbl 360014 `"Riau and Kepulauan Riau [Province: Indonesia]"', add
label define geolev1_lbl 360015 `"Jambi [Province: Indonesia]"', add
label define geolev1_lbl 360016 `"Sumatera Selatan and Bangka Belitung [Province: Indonesia]"', add
label define geolev1_lbl 360017 `"Bengkulu [Province: Indonesia]"', add
label define geolev1_lbl 360018 `"Lampung [Province: Indonesia]"', add
label define geolev1_lbl 360031 `"DKI Jakarta [Province: Indonesia]"', add
label define geolev1_lbl 360032 `"West Java and Banten [Province: Indonesia]"', add
label define geolev1_lbl 360033 `"Jawa Tengah  [Province: Indonesia]"', add
label define geolev1_lbl 360034 `"DI Yogyakarta  [Province: Indonesia]"', add
label define geolev1_lbl 360035 `"Jawa Timur [Province: Indonesia]"', add
label define geolev1_lbl 360051 `"Bali [Province: Indonesia]"', add
label define geolev1_lbl 360052 `"Nusa Tenggara Barat [Province: Indonesia]"', add
label define geolev1_lbl 360053 `"East Nusa Tenggara and East Timur [Province: Indonesia]"', add
label define geolev1_lbl 360061 `"Kalimantan Barat  [Province: Indonesia]"', add
label define geolev1_lbl 360062 `"Kalimantan Tengah [Province: Indonesia]"', add
label define geolev1_lbl 360063 `"Kalimantan Selatan [Province: Indonesia]"', add
label define geolev1_lbl 360064 `"Kalimantan Timur [Province: Indonesia]"', add
label define geolev1_lbl 360071 `"Sulawesi Utara  and Gorontalo [Province: Indonesia]"', add
label define geolev1_lbl 360072 `"Sulawesi Tengah [Province: Indonesia]"', add
label define geolev1_lbl 360073 `"Sulawesi Selatan, Sulawesi Tenggara and Sulawesi Barat [Province: Indonesia]"', add
label define geolev1_lbl 360081 `"Maluku and North Maluku [Province: Indonesia]"', add
label define geolev1_lbl 360094 `"Papua and Papua Barat [Province: Indonesia]"', add
label define geolev1_lbl 364000 `"Markazi [Province: Iran]"', add
label define geolev1_lbl 364001 `"Gilan [Province: Iran]"', add
label define geolev1_lbl 364002 `"Mazandaran [Province: Iran]"', add
label define geolev1_lbl 364003 `"East Azarbayejan [Province: Iran]"', add
label define geolev1_lbl 364004 `"West Azarbayejan [Province: Iran]"', add
label define geolev1_lbl 364005 `"Kermanshah [Province: Iran]"', add
label define geolev1_lbl 364006 `"Khuzestan [Province: Iran]"', add
label define geolev1_lbl 364007 `"Fars [Province: Iran]"', add
label define geolev1_lbl 364008 `"Kerman [Province: Iran]"', add
label define geolev1_lbl 364009 `"Khorasan-e- Razavi [Province: Iran]"', add
label define geolev1_lbl 364010 `"Esfahan [Province: Iran]"', add
label define geolev1_lbl 364011 `"Sistan and Baluchestan [Province: Iran]"', add
label define geolev1_lbl 364012 `"Kordestan [Province: Iran]"', add
label define geolev1_lbl 364013 `"Hamedan [Province: Iran]"', add
label define geolev1_lbl 364014 `"Chaharmahal and Bakhtiyari [Province: Iran]"', add
label define geolev1_lbl 364015 `"Lorestan [Province: Iran]"', add
label define geolev1_lbl 364016 `"Ilam [Province: Iran]"', add
label define geolev1_lbl 364017 `"Kohgiluyeh and Boyerahmad [Province: Iran]"', add
label define geolev1_lbl 364018 `"Bushehr [Province: Iran]"', add
label define geolev1_lbl 364019 `"Zanjan [Province: Iran]"', add
label define geolev1_lbl 364020 `"Semnan [Province: Iran]"', add
label define geolev1_lbl 364021 `"Yazd [Province: Iran]"', add
label define geolev1_lbl 364022 `"Hormozgan [Province: Iran]"', add
label define geolev1_lbl 364023 `"Tehran [Province: Iran]"', add
label define geolev1_lbl 364024 `"Ardebil [Province: Iran]"', add
label define geolev1_lbl 364025 `"Qom [Province: Iran]"', add
label define geolev1_lbl 364026 `"Qazvin [Province: Iran]"', add
label define geolev1_lbl 364027 `"Golestan [Province: Iran]"', add
label define geolev1_lbl 364028 `"North Khorasan [Province: Iran]"', add
label define geolev1_lbl 364029 `"South Khorasan [Province: Iran]"', add
label define geolev1_lbl 368011 `"Dhok [Governorate: Iraq]"', add
label define geolev1_lbl 368012 `"Nineveh [Governorate: Iraq]"', add
label define geolev1_lbl 368013 `"Al-Sulaimaniya [Governorate: Iraq]"', add
label define geolev1_lbl 368014 `"Al-Tameem [Governorate: Iraq]"', add
label define geolev1_lbl 368015 `"Arbil [Governorate: Iraq]"', add
label define geolev1_lbl 368021 `"Diala [Governorate: Iraq]"', add
label define geolev1_lbl 368022 `"Al-Anbar [Governorate: Iraq]"', add
label define geolev1_lbl 368023 `"Baghdad [Governorate: Iraq]"', add
label define geolev1_lbl 368024 `"Babylon [Governorate: Iraq]"', add
label define geolev1_lbl 368025 `"Kerbela [Governorate: Iraq]"', add
label define geolev1_lbl 368026 `"Wasit [Governorate: Iraq]"', add
label define geolev1_lbl 368027 `"Salah Al-Deen [Governorate: Iraq]"', add
label define geolev1_lbl 368028 `"Al-Najaf [Governorate: Iraq]"', add
label define geolev1_lbl 368031 `"Al-Qadisiya [Governorate: Iraq]"', add
label define geolev1_lbl 368032 `"Al-Muthanna [Governorate: Iraq]"', add
label define geolev1_lbl 368033 `"Thi-Qar [Governorate: Iraq]"', add
label define geolev1_lbl 368034 `"Maysan [Governorate: Iraq]"', add
label define geolev1_lbl 368035 `"Al-Basrah [Governorate: Iraq]"', add
label define geolev1_lbl 372001 `"Border [Region: Ireland]"', add
label define geolev1_lbl 372002 `"Dublin [Region: Ireland]"', add
label define geolev1_lbl 372003 `"Mid-East [Region: Ireland]"', add
label define geolev1_lbl 372004 `"Midlands [Region: Ireland]"', add
label define geolev1_lbl 372005 `"Mid-West [Region: Ireland]"', add
label define geolev1_lbl 372006 `"South-East [Region: Ireland]"', add
label define geolev1_lbl 372007 `"South-West [Region: Ireland]"', add
label define geolev1_lbl 372008 `"West [Region: Ireland]"', add
label define geolev1_lbl 376001 `"Jerusalem [District: Israel]"', add
label define geolev1_lbl 376002 `"Northern [District: Israel]"', add
label define geolev1_lbl 376003 `"Haifa [District: Israel]"', add
label define geolev1_lbl 376004 `"Central [District: Israel]"', add
label define geolev1_lbl 376005 `"Tel-Aviv [District: Israel]"', add
label define geolev1_lbl 376006 `"Southern [District: Israel]"', add
label define geolev1_lbl 376009 `"Judea, Samaria, and Gaza areas [District: Israel]"', add
label define geolev1_lbl 380001 `"Piemonte-Valle d'Aosta [Region: Italy]"', add
label define geolev1_lbl 380003 `"Lombardia [Region: Italy]"', add
label define geolev1_lbl 380004 `"Trentino-Alto Adige [Region: Italy]"', add
label define geolev1_lbl 380005 `"Veneto [Region: Italy]"', add
label define geolev1_lbl 380006 `"Friuli-Venezia Giulia [Region: Italy]"', add
label define geolev1_lbl 380007 `"Liguria [Region: Italy]"', add
label define geolev1_lbl 380008 `"Emilia-Romagna [Region: Italy]"', add
label define geolev1_lbl 380009 `"Toscana [Region: Italy]"', add
label define geolev1_lbl 380010 `"Umbria [Region: Italy]"', add
label define geolev1_lbl 380011 `"Marche [Region: Italy]"', add
label define geolev1_lbl 380012 `"Lazio [Region: Italy]"', add
label define geolev1_lbl 380013 `"Abruzzo [Region: Italy]"', add
label define geolev1_lbl 380014 `"Molise [Region: Italy]"', add
label define geolev1_lbl 380015 `"Campania [Region: Italy]"', add
label define geolev1_lbl 380016 `"Puglia [Region: Italy]"', add
label define geolev1_lbl 380017 `"Basilicata [Region: Italy]"', add
label define geolev1_lbl 380018 `"Calabria [Region: Italy]"', add
label define geolev1_lbl 380019 `"Sicilia [Region: Italy]"', add
label define geolev1_lbl 380020 `"Sardegna [Region: Italy]"', add
label define geolev1_lbl 388001 `"Kingston [Parish: Jamaica]"', add
label define geolev1_lbl 388002 `"Saint Andrew [Parish: Jamaica]"', add
label define geolev1_lbl 388003 `"Saint Thomas [Parish: Jamaica]"', add
label define geolev1_lbl 388004 `"Portland [Parish: Jamaica]"', add
label define geolev1_lbl 388005 `"Saint Mary [Parish: Jamaica]"', add
label define geolev1_lbl 388006 `"Saint Ann [Parish: Jamaica]"', add
label define geolev1_lbl 388007 `"Trelawny [Parish: Jamaica]"', add
label define geolev1_lbl 388008 `"Saint James [Parish: Jamaica]"', add
label define geolev1_lbl 388009 `"Hanover [Parish: Jamaica]"', add
label define geolev1_lbl 388010 `"Westmoreland [Parish: Jamaica]"', add
label define geolev1_lbl 388011 `"Saint Elizabeth [Parish: Jamaica]"', add
label define geolev1_lbl 388012 `"Manchester [Parish: Jamaica]"', add
label define geolev1_lbl 388013 `"Clarendon [Parish: Jamaica]"', add
label define geolev1_lbl 388014 `"Saint Catherine [Parish: Jamaica]"', add
label define geolev1_lbl 400011 `"Amman [Governorate: Jordan]"', add
label define geolev1_lbl 400012 `"Balqa [Governorate: Jordan]"', add
label define geolev1_lbl 400013 `"Zarqa [Governorate: Jordan]"', add
label define geolev1_lbl 400014 `"Madaba [Governorate: Jordan]"', add
label define geolev1_lbl 400021 `"Irbid [Governorate: Jordan]"', add
label define geolev1_lbl 400022 `"Mafraq [Governorate: Jordan]"', add
label define geolev1_lbl 400023 `"Jarash [Governorate: Jordan]"', add
label define geolev1_lbl 400024 `"Ajloun [Governorate: Jordan]"', add
label define geolev1_lbl 400031 `"Karak [Governorate: Jordan]"', add
label define geolev1_lbl 400032 `"Tafileh [Governorate: Jordan]"', add
label define geolev1_lbl 400033 `"Ma'an [Governorate: Jordan]"', add
label define geolev1_lbl 400034 `"Aqaba [Governorate: Jordan]"', add
label define geolev1_lbl 404001 `"Nairobi [Province: Kenya]"', add
label define geolev1_lbl 404002 `"Central Province [Province: Kenya]"', add
label define geolev1_lbl 404003 `"Coast Province [Province: Kenya]"', add
label define geolev1_lbl 404004 `"Eastern Province [Province: Kenya]"', add
label define geolev1_lbl 404005 `"North-Eastern Province [Province: Kenya]"', add
label define geolev1_lbl 404006 `"Nyanza Province [Province: Kenya]"', add
label define geolev1_lbl 404007 `"Rift Valley Province [Province: Kenya]"', add
label define geolev1_lbl 404008 `"Western Province [Province: Kenya]"', add
label define geolev1_lbl 417001 `"Gorkenesh Bishkek [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 417002 `"Issyk-Kul [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 417003 `"Dzhalal-Abad [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 417004 `"Naryn [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 417005 `"Batken [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 417006 `"Oshskaya [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 417007 `"Talasskaya [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 417008 `"Chuya [Region: Kyrgyz Republic]"', add
label define geolev1_lbl 430006 `"Bong [County: Liberia]"', add
label define geolev1_lbl 430009 `"Grand Bassa and Rivercess [County: Liberia]"', add
label define geolev1_lbl 430012 `"Grand Cape Mount [County: Liberia]"', add
label define geolev1_lbl 430015 `"Grand Gedeh and River Gee [County: Liberia]"', add
label define geolev1_lbl 430021 `"Lofa and Gbarpolu [County: Liberia]"', add
label define geolev1_lbl 430027 `"Maryland and Grand Kru [County: Liberia]"', add
label define geolev1_lbl 430030 `"Montserrado, Bomi, and Margibi [County: Liberia]"', add
label define geolev1_lbl 430033 `"Nimba [County: Liberia]"', add
label define geolev1_lbl 430039 `"Sinoe [County: Liberia]"', add
label define geolev1_lbl 454101 `"Chitipa [District: Malawi]"', add
label define geolev1_lbl 454102 `"Karonga [District: Malawi]"', add
label define geolev1_lbl 454103 `"Nkhata Bay and Likoma [District: Malawi]"', add
label define geolev1_lbl 454104 `"Rumphi [District: Malawi]"', add
label define geolev1_lbl 454105 `"Mzimba and Mzuzu city [District: Malawi]"', add
label define geolev1_lbl 454201 `"Kasungu [District: Malawi]"', add
label define geolev1_lbl 454202 `"Nkhota Kota [District: Malawi]"', add
label define geolev1_lbl 454203 `"Ntchisi [District: Malawi]"', add
label define geolev1_lbl 454204 `"Dowa [District: Malawi]"', add
label define geolev1_lbl 454205 `"Salima [District: Malawi]"', add
label define geolev1_lbl 454206 `"Lilongwe [District: Malawi]"', add
label define geolev1_lbl 454207 `"Mchinji [District: Malawi]"', add
label define geolev1_lbl 454208 `"Dedza [District: Malawi]"', add
label define geolev1_lbl 454209 `"Ntcheu [District: Malawi]"', add
label define geolev1_lbl 454301 `"Mangochi [District: Malawi]"', add
label define geolev1_lbl 454302 `"Machinga and Balaka [District: Malawi]"', add
label define geolev1_lbl 454303 `"Zomba [District: Malawi]"', add
label define geolev1_lbl 454304 `"Chiradzulu [District: Malawi]"', add
label define geolev1_lbl 454305 `"Blantyre [District: Malawi]"', add
label define geolev1_lbl 454307 `"Thyolo [District: Malawi]"', add
label define geolev1_lbl 454308 `"Mulanje and Phalombe [District: Malawi]"', add
label define geolev1_lbl 454310 `"Chikwawa [District: Malawi]"', add
label define geolev1_lbl 454311 `"Nsanje [District: Malawi]"', add
label define geolev1_lbl 454313 `"Mwanza and Neno [District: Malawi]"', add
label define geolev1_lbl 458001 `"Johor [State: Malaysia]"', add
label define geolev1_lbl 458002 `"Kedah [State: Malaysia]"', add
label define geolev1_lbl 458003 `"Kelantan [State: Malaysia]"', add
label define geolev1_lbl 458004 `"Melaka [State: Malaysia]"', add
label define geolev1_lbl 458005 `"Negeri Sembilan [State: Malaysia]"', add
label define geolev1_lbl 458006 `"Pahang [State: Malaysia]"', add
label define geolev1_lbl 458007 `"Pulau Pinang [State: Malaysia]"', add
label define geolev1_lbl 458008 `"Perak [State: Malaysia]"', add
label define geolev1_lbl 458009 `"Perlis [State: Malaysia]"', add
label define geolev1_lbl 458010 `"Selangor and Kuala Lumpur Federal Territory [State: Malaysia]"', add
label define geolev1_lbl 458011 `"Terengganu [State: Malaysia]"', add
label define geolev1_lbl 458012 `"Sabah and Labuan Federal Territory [State: Malaysia]"', add
label define geolev1_lbl 458013 `"Sarawak [State: Malaysia]"', add
label define geolev1_lbl 466001 `"Kayes [Region: Mali]"', add
label define geolev1_lbl 466002 `"Koulikoro [Region: Mali]"', add
label define geolev1_lbl 466003 `"Sikasso [Region: Mali]"', add
label define geolev1_lbl 466004 `"Ségou [Region: Mali]"', add
label define geolev1_lbl 466005 `"Mopti [Region: Mali]"', add
label define geolev1_lbl 466006 `"Tombouctou [Region: Mali]"', add
label define geolev1_lbl 466007 `"Gao and Kidal [Region: Mali]"', add
label define geolev1_lbl 466009 `"Bamako [Region: Mali]"', add
label define geolev1_lbl 466099 `"Unknown [Region: Mali]"', add
label define geolev1_lbl 484001 `"Aguascalientes [State: Mexico]"', add
label define geolev1_lbl 484002 `"Baja California [State: Mexico]"', add
label define geolev1_lbl 484003 `"Baja California Sur [State: Mexico]"', add
label define geolev1_lbl 484004 `"Campeche [State: Mexico]"', add
label define geolev1_lbl 484005 `"Coahuila [State: Mexico]"', add
label define geolev1_lbl 484006 `"Colima [State: Mexico]"', add
label define geolev1_lbl 484007 `"Chiapas [State: Mexico]"', add
label define geolev1_lbl 484008 `"Chihuahua [State: Mexico]"', add
label define geolev1_lbl 484009 `"Distrito Federal [State: Mexico]"', add
label define geolev1_lbl 484010 `"Durango [State: Mexico]"', add
label define geolev1_lbl 484011 `"Guanajuato [State: Mexico]"', add
label define geolev1_lbl 484012 `"Guerrero [State: Mexico]"', add
label define geolev1_lbl 484013 `"Hidalgo [State: Mexico]"', add
label define geolev1_lbl 484014 `"Jalisco [State: Mexico]"', add
label define geolev1_lbl 484015 `"México [State: Mexico]"', add
label define geolev1_lbl 484016 `"Michoacán [State: Mexico]"', add
label define geolev1_lbl 484017 `"Morelos [State: Mexico]"', add
label define geolev1_lbl 484018 `"Nayarit [State: Mexico]"', add
label define geolev1_lbl 484019 `"Nuevo León [State: Mexico]"', add
label define geolev1_lbl 484020 `"Oaxaca [State: Mexico]"', add
label define geolev1_lbl 484021 `"Puebla [State: Mexico]"', add
label define geolev1_lbl 484022 `"Querétaro [State: Mexico]"', add
label define geolev1_lbl 484023 `"Quintana Roo [State: Mexico]"', add
label define geolev1_lbl 484024 `"San Luis Potosí [State: Mexico]"', add
label define geolev1_lbl 484025 `"Sinaloa [State: Mexico]"', add
label define geolev1_lbl 484026 `"Sonora [State: Mexico]"', add
label define geolev1_lbl 484027 `"Tabasco [State: Mexico]"', add
label define geolev1_lbl 484028 `"Tamaulipas [State: Mexico]"', add
label define geolev1_lbl 484029 `"Tlaxcala [State: Mexico]"', add
label define geolev1_lbl 484030 `"Veracruz [State: Mexico]"', add
label define geolev1_lbl 484031 `"Yucatán [State: Mexico]"', add
label define geolev1_lbl 484032 `"Zacatecas [State: Mexico]"', add
label define geolev1_lbl 496001 `"Arkhangai [Province: Mongolia]"', add
label define geolev1_lbl 496002 `"Bayan-Ölgii [Province: Mongolia]"', add
label define geolev1_lbl 496003 `"Bayankhongor [Province: Mongolia]"', add
label define geolev1_lbl 496004 `"Bulgan [Province: Mongolia]"', add
label define geolev1_lbl 496005 `"Govi-Altai [Province: Mongolia]"', add
label define geolev1_lbl 496006 `"Dornogovi [Province: Mongolia]"', add
label define geolev1_lbl 496007 `"Dornod [Province: Mongolia]"', add
label define geolev1_lbl 496008 `"Dundgovi and Govisumber [Province: Mongolia]"', add
label define geolev1_lbl 496009 `"Zavkhan [Province: Mongolia]"', add
label define geolev1_lbl 496010 `"Övörkhangai [Province: Mongolia]"', add
label define geolev1_lbl 496011 `"Ömnögovi [Province: Mongolia]"', add
label define geolev1_lbl 496012 `"Sükhbaatar [Province: Mongolia]"', add
label define geolev1_lbl 496013 `"Selenge [Province: Mongolia]"', add
label define geolev1_lbl 496014 `"Töv [Province: Mongolia]"', add
label define geolev1_lbl 496015 `"Uvs [Province: Mongolia]"', add
label define geolev1_lbl 496016 `"Khovd [Province: Mongolia]"', add
label define geolev1_lbl 496017 `"Khövsgöl [Province: Mongolia]"', add
label define geolev1_lbl 496018 `"Khentii [Province: Mongolia]"', add
label define geolev1_lbl 496019 `"Darkhan-Uul [Province: Mongolia]"', add
label define geolev1_lbl 496020 `"Ulaanbaatar [Province: Mongolia]"', add
label define geolev1_lbl 496021 `"Orkhon [Province: Mongolia]"', add
label define geolev1_lbl 504001 `"Oued-Ed-Dahab-Lagouira [Region: Morocco]"', add
label define geolev1_lbl 504002 `"Laayoune-Boujdour-Sakia El Hamra [Region: Morocco]"', add
label define geolev1_lbl 504003 `"Guelmin-Es-Samara [Region: Morocco]"', add
label define geolev1_lbl 504004 `"Souss-Massa-Draa [Region: Morocco]"', add
label define geolev1_lbl 504005 `"Charb-Chrarda-Beni Hssen [Region: Morocco]"', add
label define geolev1_lbl 504006 `"Chaouia-Ouardigha [Region: Morocco]"', add
label define geolev1_lbl 504007 `"Marrakech-Tensift-Al Haouz [Region: Morocco]"', add
label define geolev1_lbl 504008 `"Oriental [Region: Morocco]"', add
label define geolev1_lbl 504009 `"Grand-Casablanca [Region: Morocco]"', add
label define geolev1_lbl 504010 `"Rabat-Salé-Zemmour-Zaer [Region: Morocco]"', add
label define geolev1_lbl 504011 `"Doukala Abda [Region: Morocco]"', add
label define geolev1_lbl 504012 `"Tadla Azilal [Region: Morocco]"', add
label define geolev1_lbl 504013 `"Meknes-Tafilalet [Region: Morocco]"', add
label define geolev1_lbl 504014 `"Fès-Boulemane [Region: Morocco]"', add
label define geolev1_lbl 504015 `"Taza-Al Heiceima-Taounate [Region: Morocco]"', add
label define geolev1_lbl 504016 `"Tanger-Tétouan [Region: Morocco]"', add
label define geolev1_lbl 524001 `"Mechi [Administrative zone: Nepal]"', add
label define geolev1_lbl 524002 `"Koshi [Administrative zone: Nepal]"', add
label define geolev1_lbl 524003 `"Sagarmatha [Administrative zone: Nepal]"', add
label define geolev1_lbl 524004 `"Janakpur [Administrative zone: Nepal]"', add
label define geolev1_lbl 524005 `"Bagmati [Administrative zone: Nepal]"', add
label define geolev1_lbl 524006 `"Narayani [Administrative zone: Nepal]"', add
label define geolev1_lbl 524007 `"Gandaki [Administrative zone: Nepal]"', add
label define geolev1_lbl 524008 `"Dhawalagiri [Administrative zone: Nepal]"', add
label define geolev1_lbl 524009 `"Lumbini [Administrative zone: Nepal]"', add
label define geolev1_lbl 524010 `"Rapti [Administrative zone: Nepal]"', add
label define geolev1_lbl 524011 `"Bheri [Administrative zone: Nepal]"', add
label define geolev1_lbl 524012 `"Karnali [Administrative zone: Nepal]"', add
label define geolev1_lbl 524013 `"Seti [Administrative zone: Nepal]"', add
label define geolev1_lbl 524014 `"Mahakali [Administrative zone: Nepal]"', add
label define geolev1_lbl 558005 `"Nueva Segovia [Department: Nicaragua]"', add
label define geolev1_lbl 558010 `"Jinotega [Department: Nicaragua]"', add
label define geolev1_lbl 558020 `"Madríz [Department: Nicaragua]"', add
label define geolev1_lbl 558030 `"Chinandega [Department: Nicaragua]"', add
label define geolev1_lbl 558035 `"Leon and Esteli [Department: Nicaragua]"', add
label define geolev1_lbl 558040 `"Matagalpa [Department: Nicaragua]"', add
label define geolev1_lbl 558050 `"Boaco [Department: Nicaragua]"', add
label define geolev1_lbl 558055 `"Managua [Department: Nicaragua]"', add
label define geolev1_lbl 558060 `"Masaya [Department: Nicaragua]"', add
label define geolev1_lbl 558065 `"Chontales [Department: Nicaragua]"', add
label define geolev1_lbl 558070 `"Granada [Department: Nicaragua]"', add
label define geolev1_lbl 558075 `"Carazo [Department: Nicaragua]"', add
label define geolev1_lbl 558080 `"Rivas [Department: Nicaragua]"', add
label define geolev1_lbl 558085 `"Río San Juan [Department: Nicaragua]"', add
label define geolev1_lbl 558093 `"Zelaya, Atlántico Norte and Atlántico Sur [Department: Nicaragua]"', add
label define geolev1_lbl 558099 `"Unknown [Department: Nicaragua]"', add
label define geolev1_lbl 566001 `"Abia [State: Nigeria]"', add
label define geolev1_lbl 566002 `"Adamawa [State: Nigeria]"', add
label define geolev1_lbl 566003 `"Akwa Ibom [State: Nigeria]"', add
label define geolev1_lbl 566004 `"Anambra [State: Nigeria]"', add
label define geolev1_lbl 566005 `"Bauchi [State: Nigeria]"', add
label define geolev1_lbl 566006 `"Bayelsa [State: Nigeria]"', add
label define geolev1_lbl 566007 `"Benue [State: Nigeria]"', add
label define geolev1_lbl 566008 `"Borno [State: Nigeria]"', add
label define geolev1_lbl 566009 `"Cross River [State: Nigeria]"', add
label define geolev1_lbl 566010 `"Delta [State: Nigeria]"', add
label define geolev1_lbl 566011 `"Ebonyi [State: Nigeria]"', add
label define geolev1_lbl 566012 `"Edo [State: Nigeria]"', add
label define geolev1_lbl 566013 `"Ekiti [State: Nigeria]"', add
label define geolev1_lbl 566014 `"Enugu [State: Nigeria]"', add
label define geolev1_lbl 566015 `"Gombe [State: Nigeria]"', add
label define geolev1_lbl 566016 `"Imo [State: Nigeria]"', add
label define geolev1_lbl 566017 `"Jigawa [State: Nigeria]"', add
label define geolev1_lbl 566018 `"Kaduna [State: Nigeria]"', add
label define geolev1_lbl 566019 `"Kano [State: Nigeria]"', add
label define geolev1_lbl 566020 `"Katsina [State: Nigeria]"', add
label define geolev1_lbl 566021 `"Kebbi [State: Nigeria]"', add
label define geolev1_lbl 566022 `"Kogi [State: Nigeria]"', add
label define geolev1_lbl 566023 `"Kwara [State: Nigeria]"', add
label define geolev1_lbl 566024 `"Lagos [State: Nigeria]"', add
label define geolev1_lbl 566025 `"Nasarawa [State: Nigeria]"', add
label define geolev1_lbl 566026 `"Niger [State: Nigeria]"', add
label define geolev1_lbl 566027 `"Ogun [State: Nigeria]"', add
label define geolev1_lbl 566028 `"Ondo [State: Nigeria]"', add
label define geolev1_lbl 566029 `"Osun [State: Nigeria]"', add
label define geolev1_lbl 566030 `"Oyo [State: Nigeria]"', add
label define geolev1_lbl 566031 `"Plateau [State: Nigeria]"', add
label define geolev1_lbl 566032 `"Rivers [State: Nigeria]"', add
label define geolev1_lbl 566033 `"Sokoto [State: Nigeria]"', add
label define geolev1_lbl 566034 `"Taraba [State: Nigeria]"', add
label define geolev1_lbl 566035 `"Yobe [State: Nigeria]"', add
label define geolev1_lbl 566036 `"Zamfara [State: Nigeria]"', add
label define geolev1_lbl 566037 `"FCT Abuja [State: Nigeria]"', add
label define geolev1_lbl 566099 `"Unknown [State: Nigeria]"', add
label define geolev1_lbl 586001 `"North-West Frontier Province  [Province: Pakistan]"', add
label define geolev1_lbl 586003 `"Punjab [Province: Pakistan]"', add
label define geolev1_lbl 586004 `"Sindh [Province: Pakistan]"', add
label define geolev1_lbl 586005 `"Balochistan [Province: Pakistan]"', add
label define geolev1_lbl 586006 `"Islamabad [Province: Pakistan]"', add
label define geolev1_lbl 275001 `"Jenin [Governorate: Palestine]"', add
label define geolev1_lbl 275005 `"Tubas [Governorate: Palestine]"', add
label define geolev1_lbl 275010 `"Tulkarm [Governorate: Palestine]"', add
label define geolev1_lbl 275015 `"Nablus [Governorate: Palestine]"', add
label define geolev1_lbl 275020 `"Qalqiliya [Governorate: Palestine]"', add
label define geolev1_lbl 275025 `"Salfit [Governorate: Palestine]"', add
label define geolev1_lbl 275030 `"Ramallah and Al-Bireh [Governorate: Palestine]"', add
label define geolev1_lbl 275035 `"Jericho [Governorate: Palestine]"', add
label define geolev1_lbl 275040 `"Jerusalem [Governorate: Palestine]"', add
label define geolev1_lbl 275045 `"Bethlehem [Governorate: Palestine]"', add
label define geolev1_lbl 275050 `"Hebron [Governorate: Palestine]"', add
label define geolev1_lbl 275055 `"North Gaza [Governorate: Palestine]"', add
label define geolev1_lbl 275060 `"Gaza [Governorate: Palestine]"', add
label define geolev1_lbl 275065 `"Deir Al-Balah [Governorate: Palestine]"', add
label define geolev1_lbl 275070 `"Khan Yunis [Governorate: Palestine]"', add
label define geolev1_lbl 275075 `"Rafah [Governorate: Palestine]"', add
label define geolev1_lbl 591002 `"Coclé [Province: Panama]"', add
label define geolev1_lbl 591003 `"Colón  [Province: Panama]"', add
label define geolev1_lbl 591004 `"Bocas del Toro, Chiriquí, Veraguas, and Comarca Ngöbe-Buglé [Province: Panama]"', add
label define geolev1_lbl 591006 `"Herrera [Province: Panama]"', add
label define geolev1_lbl 591007 `"Los Santos [Province: Panama]"', add
label define geolev1_lbl 591008 `"Darién, Embera, and Panamá [Province: Panama]"', add
label define geolev1_lbl 591010 `"Comarca Kuna Yala  (San Blas) [Province: Panama]"', add
label define geolev1_lbl 604001 `"Amazonas [Region: Peru]"', add
label define geolev1_lbl 604002 `"Ancash [Region: Peru]"', add
label define geolev1_lbl 604003 `"Apurimac [Region: Peru]"', add
label define geolev1_lbl 604004 `"Arequipa [Region: Peru]"', add
label define geolev1_lbl 604005 `"Ayacucho [Region: Peru]"', add
label define geolev1_lbl 604006 `"Cajamarca [Region: Peru]"', add
label define geolev1_lbl 604007 `"Callao [Region: Peru]"', add
label define geolev1_lbl 604008 `"Cusco [Region: Peru]"', add
label define geolev1_lbl 604009 `"Huancavelica [Region: Peru]"', add
label define geolev1_lbl 604010 `"Huanuco [Region: Peru]"', add
label define geolev1_lbl 604011 `"Ica [Region: Peru]"', add
label define geolev1_lbl 604012 `"Junin [Region: Peru]"', add
label define geolev1_lbl 604013 `"La Libertad [Region: Peru]"', add
label define geolev1_lbl 604014 `"Lambayeque [Region: Peru]"', add
label define geolev1_lbl 604015 `"Lima [Region: Peru]"', add
label define geolev1_lbl 604016 `"Loreto [Region: Peru]"', add
label define geolev1_lbl 604017 `"Madre de Dios [Region: Peru]"', add
label define geolev1_lbl 604018 `"Moquegua [Region: Peru]"', add
label define geolev1_lbl 604019 `"Pasco [Region: Peru]"', add
label define geolev1_lbl 604020 `"Piura [Region: Peru]"', add
label define geolev1_lbl 604021 `"Puno [Region: Peru]"', add
label define geolev1_lbl 604022 `"San Martin [Region: Peru]"', add
label define geolev1_lbl 604023 `"Tacna [Region: Peru]"', add
label define geolev1_lbl 604024 `"Tumbes [Region: Peru]"', add
label define geolev1_lbl 604025 `"Ucayali [Region: Peru]"', add
label define geolev1_lbl 608001 `"Ilocos [Region: Philippines]"', add
label define geolev1_lbl 608002 `"Cagayan Valley [Region: Philippines]"', add
label define geolev1_lbl 608003 `"Central Luzon [Region: Philippines]"', add
label define geolev1_lbl 608004 `"Southern Tagalog [Region: Philippines]"', add
label define geolev1_lbl 608005 `"Bicol [Region: Philippines]"', add
label define geolev1_lbl 608006 `"Western Visayas [Region: Philippines]"', add
label define geolev1_lbl 608007 `"Central Visayas [Region: Philippines]"', add
label define geolev1_lbl 608008 `"Eastern Visayas [Region: Philippines]"', add
label define geolev1_lbl 608009 `"Western Mindanao [Region: Philippines]"', add
label define geolev1_lbl 608011 `"Northern Mindanao, Southern Mindanao, and Caraga [Region: Philippines]"', add
label define geolev1_lbl 608012 `"Central Mindanao and Autonomous Region of Muslim Mindanao [Region: Philippines]"', add
label define geolev1_lbl 608013 `"National Capital Region [Region: Philippines]"', add
label define geolev1_lbl 608014 `"Cordillera Administrative Region [Region: Philippines]"', add
label define geolev1_lbl 620111 `"Minho-Lima [Subregion: Portugal]"', add
label define geolev1_lbl 620112 `"Cávado [Subregion: Portugal]"', add
label define geolev1_lbl 620113 `"Ave [Subregion: Portugal]"', add
label define geolev1_lbl 620114 `"Grande Porto [Subregion: Portugal]"', add
label define geolev1_lbl 620115 `"Tâmega [Subregion: Portugal]"', add
label define geolev1_lbl 620116 `"Entre Douro e Vouga [Subregion: Portugal]"', add
label define geolev1_lbl 620117 `"Douro [Subregion: Portugal]"', add
label define geolev1_lbl 620118 `"Alto Trás-os-Montes [Subregion: Portugal]"', add
label define geolev1_lbl 620150 `"Algarve [Subregion: Portugal]"', add
label define geolev1_lbl 620161 `"Baixo Vouga [Subregion: Portugal]"', add
label define geolev1_lbl 620162 `"Baixo Mondego [Subregion: Portugal]"', add
label define geolev1_lbl 620163 `"Pinhal Litoral [Subregion: Portugal]"', add
label define geolev1_lbl 620165 `"Dão-Lafões [Subregion: Portugal]"', add
label define geolev1_lbl 620166 `"Oeste [Subregion: Portugal]"', add
label define geolev1_lbl 620167 `"Médio Tejo [Subregion: Portugal]"', add
label define geolev1_lbl 620169 `"Other Center [Subregion: Portugal]"', add
label define geolev1_lbl 620171 `"Grande Lisboa [Subregion: Portugal]"', add
label define geolev1_lbl 620172 `"Península de Setúbal [Subregion: Portugal]"', add
label define geolev1_lbl 620185 `"Lezíria do Tejo [Subregion: Portugal]"', add
label define geolev1_lbl 620189 `"Other Alentejo [Subregion: Portugal]"', add
label define geolev1_lbl 620200 `"Autonomous Azores Region [Subregion: Portugal]"', add
label define geolev1_lbl 620300 `"Autonomous Madeira Region [Subregion: Portugal]"', add
label define geolev1_lbl 642001 `"Alba [County: Romania]"', add
label define geolev1_lbl 642002 `"Arad [County: Romania]"', add
label define geolev1_lbl 642003 `"Arges [County: Romania]"', add
label define geolev1_lbl 642004 `"Bacau [County: Romania]"', add
label define geolev1_lbl 642005 `"Bihor [County: Romania]"', add
label define geolev1_lbl 642006 `"Bistrita Nasaud [County: Romania]"', add
label define geolev1_lbl 642007 `"Botosani [County: Romania]"', add
label define geolev1_lbl 642008 `"Brasov [County: Romania]"', add
label define geolev1_lbl 642009 `"Braila [County: Romania]"', add
label define geolev1_lbl 642010 `"Buzau [County: Romania]"', add
label define geolev1_lbl 642011 `"Caras Severin [County: Romania]"', add
label define geolev1_lbl 642012 `"Cluj [County: Romania]"', add
label define geolev1_lbl 642013 `"Constanta [County: Romania]"', add
label define geolev1_lbl 642014 `"Covasna [County: Romania]"', add
label define geolev1_lbl 642015 `"Dambovita [County: Romania]"', add
label define geolev1_lbl 642016 `"Dolj [County: Romania]"', add
label define geolev1_lbl 642017 `"Galati [County: Romania]"', add
label define geolev1_lbl 642018 `"Gorj [County: Romania]"', add
label define geolev1_lbl 642019 `"Harghita [County: Romania]"', add
label define geolev1_lbl 642020 `"Hunedoara [County: Romania]"', add
label define geolev1_lbl 642021 `"Ialomita [County: Romania]"', add
label define geolev1_lbl 642022 `"Iasi [County: Romania]"', add
label define geolev1_lbl 642024 `"Maramures [County: Romania]"', add
label define geolev1_lbl 642025 `"Mehedinti [County: Romania]"', add
label define geolev1_lbl 642026 `"Mures [County: Romania]"', add
label define geolev1_lbl 642027 `"Neamt [County: Romania]"', add
label define geolev1_lbl 642028 `"Olt [County: Romania]"', add
label define geolev1_lbl 642029 `"Prahova [County: Romania]"', add
label define geolev1_lbl 642030 `"Satu Mare [County: Romania]"', add
label define geolev1_lbl 642031 `"Salaj [County: Romania]"', add
label define geolev1_lbl 642032 `"Sibiu [County: Romania]"', add
label define geolev1_lbl 642033 `"Suceava [County: Romania]"', add
label define geolev1_lbl 642034 `"Teleorman [County: Romania]"', add
label define geolev1_lbl 642035 `"Timis [County: Romania]"', add
label define geolev1_lbl 642036 `"Tulcea [County: Romania]"', add
label define geolev1_lbl 642037 `"Vaslui [County: Romania]"', add
label define geolev1_lbl 642038 `"Valcea [County: Romania]"', add
label define geolev1_lbl 642039 `"Vrancea [County: Romania]"', add
label define geolev1_lbl 642040 `"Bucharest Municipality, Ilfov, Calarasi, and Giurgiu [County: Romania]"', add
label define geolev1_lbl 646001 `"Kigali City [Province: Rwanda]"', add
label define geolev1_lbl 646002 `"Kigali Ngali [Province: Rwanda]"', add
label define geolev1_lbl 646004 `"Gitarama [Province: Rwanda]"', add
label define geolev1_lbl 646005 `"Butare [Province: Rwanda]"', add
label define geolev1_lbl 646006 `"Gikongoro [Province: Rwanda]"', add
label define geolev1_lbl 646007 `"Cyangugu [Province: Rwanda]"', add
label define geolev1_lbl 646008 `"Kibuye [Province: Rwanda]"', add
label define geolev1_lbl 646009 `"Gisenyi [Province: Rwanda]"', add
label define geolev1_lbl 646010 `"Ruhengeri [Province: Rwanda]"', add
label define geolev1_lbl 646012 `"Byumba, Kibungo and Umutara [Province: Rwanda]"', add
label define geolev1_lbl 686001 `"Dakar [Region: Senegal]"', add
label define geolev1_lbl 686002 `"Diourbel [Region: Senegal]"', add
label define geolev1_lbl 686003 `"Fatick [Region: Senegal]"', add
label define geolev1_lbl 686004 `"Kaolack [Region: Senegal]"', add
label define geolev1_lbl 686005 `"Kolda [Region: Senegal]"', add
label define geolev1_lbl 686006 `"Louga [Region: Senegal]"', add
label define geolev1_lbl 686008 `"Saint Louis and Matam [Region: Senegal]"', add
label define geolev1_lbl 686009 `"Tambacounda [Region: Senegal]"', add
label define geolev1_lbl 686010 `"Thies [Region: Senegal]"', add
label define geolev1_lbl 686011 `"Ziguinchor [Region: Senegal]"', add
label define geolev1_lbl 694011 `"Kailahun [District: Sierra Leone]"', add
label define geolev1_lbl 694012 `"Kenema [District: Sierra Leone]"', add
label define geolev1_lbl 694013 `"Kono [District: Sierra Leone]"', add
label define geolev1_lbl 694021 `"Bombali [District: Sierra Leone]"', add
label define geolev1_lbl 694022 `"Kambia [District: Sierra Leone]"', add
label define geolev1_lbl 694023 `"Koinadugu [District: Sierra Leone]"', add
label define geolev1_lbl 694024 `"Port Loko [District: Sierra Leone]"', add
label define geolev1_lbl 694025 `"Tonkolili [District: Sierra Leone]"', add
label define geolev1_lbl 694031 `"Bo [District: Sierra Leone]"', add
label define geolev1_lbl 694032 `"Bonthe [District: Sierra Leone]"', add
label define geolev1_lbl 694033 `"Moyamba [District: Sierra Leone]"', add
label define geolev1_lbl 694034 `"Pujehun [District: Sierra Leone]"', add
label define geolev1_lbl 694041 `"Western - rural [District: Sierra Leone]"', add
label define geolev1_lbl 694042 `"Western - urban [District: Sierra Leone]"', add
label define geolev1_lbl 705001 `"Pomurska [Region: Slovenia]"', add
label define geolev1_lbl 705002 `"Podravska [Region: Slovenia]"', add
label define geolev1_lbl 705003 `"Koroka [Region: Slovenia]"', add
label define geolev1_lbl 705004 `"Savinjska [Region: Slovenia]"', add
label define geolev1_lbl 705005 `"Zasavska [Region: Slovenia]"', add
label define geolev1_lbl 705006 `"Spodnjeposavska [Region: Slovenia]"', add
label define geolev1_lbl 705007 `"Jugovzhodna Slovenija [Region: Slovenia]"', add
label define geolev1_lbl 705008 `"Osrednjeslovenska [Region: Slovenia]"', add
label define geolev1_lbl 705009 `"Gorenjska [Region: Slovenia]"', add
label define geolev1_lbl 705010 `"Notranjsko-kraka [Region: Slovenia]"', add
label define geolev1_lbl 705011 `"Gorika [Region: Slovenia]"', add
label define geolev1_lbl 705012 `"Obalno-kraka [Region: Slovenia]"', add
label define geolev1_lbl 705099 `"Unknown [Region: Slovenia]"', add
label define geolev1_lbl 710001 `"Western Cape [Province: South Africa]"', add
label define geolev1_lbl 710002 `"Eastern Cape [Province: South Africa]"', add
label define geolev1_lbl 710003 `"Northern Cape [Province: South Africa]"', add
label define geolev1_lbl 710004 `"Free State [Province: South Africa]"', add
label define geolev1_lbl 710005 `"KwaZulu-Natal [Province: South Africa]"', add
label define geolev1_lbl 710006 `"North West [Province: South Africa]"', add
label define geolev1_lbl 710007 `"Gauteng [Province: South Africa]"', add
label define geolev1_lbl 710008 `"Mpumalanga [Province: South Africa]"', add
label define geolev1_lbl 710009 `"Limpopo [Province: South Africa]"', add
label define geolev1_lbl 710099 `"Unknown [Province: South Africa]"', add
label define geolev1_lbl 728071 `"Upper Nile [State: South Sudan]"', add
label define geolev1_lbl 728072 `"Jonglei [State: South Sudan]"', add
label define geolev1_lbl 728073 `"Unity [State: South Sudan]"', add
label define geolev1_lbl 728081 `"Warrap [State: South Sudan]"', add
label define geolev1_lbl 728082 `"Northern Bahr El Ghazal [State: South Sudan]"', add
label define geolev1_lbl 728083 `"Western Bahr El Ghazal [State: South Sudan]"', add
label define geolev1_lbl 728084 `"Lakes [State: South Sudan]"', add
label define geolev1_lbl 728091 `"Western Equatoria [State: South Sudan]"', add
label define geolev1_lbl 728092 `"Central Equatoria [State: South Sudan]"', add
label define geolev1_lbl 728093 `"Eastern Equatoria [State: South Sudan]"', add
label define geolev1_lbl 724011 `"Galicia [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724012 `"Principado de Asturias [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724013 `"Cantabria [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724021 `"País Vasco [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724022 `"Comunidad Foral de Navarra [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724023 `"La Rioja [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724024 `"Aragón [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724030 `"Comunidad de Madrid [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724041 `"Castilla y León [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724042 `"Castilla-La Mancha [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724043 `"Extremadura [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724051 `"Cataluña [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724052 `"Comunidad Valenciana [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724053 `"Illes Balears [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724061 `"Andalucía [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724062 `"Región de Murcia [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724063 `"Ciudad Autónoma de Ceuta [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724064 `"Ciudad Autónoma de Melilla [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724070 `"Canarias [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724099 `"Unknown [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 729011 `"Northern [State: Sudan]"', add
label define geolev1_lbl 729012 `"Nahr El Nil [State: Sudan]"', add
label define geolev1_lbl 729021 `"Red Sea [State: Sudan]"', add
label define geolev1_lbl 729022 `"Kassala [State: Sudan]"', add
label define geolev1_lbl 729023 `"Al Gedarif [State: Sudan]"', add
label define geolev1_lbl 729031 `"Khartoum [State: Sudan]"', add
label define geolev1_lbl 729041 `"Al Gezira [State: Sudan]"', add
label define geolev1_lbl 729042 `"White Nile [State: Sudan]"', add
label define geolev1_lbl 729043 `"Sinnar [State: Sudan]"', add
label define geolev1_lbl 729044 `"Blue Nile [State: Sudan]"', add
label define geolev1_lbl 729051 `"North Kordofan [State: Sudan]"', add
label define geolev1_lbl 729052 `"South Kordofan [State: Sudan]"', add
label define geolev1_lbl 729061 `"North Darfur [State: Sudan]"', add
label define geolev1_lbl 729062 `"West Darfur [State: Sudan]"', add
label define geolev1_lbl 729063 `"South Darfur [State: Sudan]"', add
label define geolev1_lbl 756001 `"Zurich [Canton: Switzerland]"', add
label define geolev1_lbl 756002 `"Bern [Canton: Switzerland]"', add
label define geolev1_lbl 756003 `"Luzern (Lucerne) [Canton: Switzerland]"', add
label define geolev1_lbl 756004 `"Uri [Canton: Switzerland]"', add
label define geolev1_lbl 756005 `"Schwyz [Canton: Switzerland]"', add
label define geolev1_lbl 756006 `"Obwalden (Obwald) [Canton: Switzerland]"', add
label define geolev1_lbl 756007 `"Nidwalden (Nidwald) [Canton: Switzerland]"', add
label define geolev1_lbl 756008 `"Glarus [Canton: Switzerland]"', add
label define geolev1_lbl 756009 `"Zug [Canton: Switzerland]"', add
label define geolev1_lbl 756010 `"Fribourg [Canton: Switzerland]"', add
label define geolev1_lbl 756011 `"Solothurn [Canton: Switzerland]"', add
label define geolev1_lbl 756012 `"Basel-Stadt (Basel-City) [Canton: Switzerland]"', add
label define geolev1_lbl 756013 `"Basel-Landschaft (Basel-Country) [Canton: Switzerland]"', add
label define geolev1_lbl 756014 `"Schaffhausen [Canton: Switzerland]"', add
label define geolev1_lbl 756015 `"Outer and Inner Rhodes [Canton: Switzerland]"', add
label define geolev1_lbl 756017 `"St. Gallen (St. Gall) [Canton: Switzerland]"', add
label define geolev1_lbl 756018 `"Graubundun (Grisons) [Canton: Switzerland]"', add
label define geolev1_lbl 756019 `"Aargau (Argovia) [Canton: Switzerland]"', add
label define geolev1_lbl 756020 `"Thurgau (Thurgovia) [Canton: Switzerland]"', add
label define geolev1_lbl 756021 `"Ticino [Canton: Switzerland]"', add
label define geolev1_lbl 756022 `"Vaud [Canton: Switzerland]"', add
label define geolev1_lbl 756023 `"Valais [Canton: Switzerland]"', add
label define geolev1_lbl 756024 `"Neuchatel [Canton: Switzerland]"', add
label define geolev1_lbl 756025 `"Geneva [Canton: Switzerland]"', add
label define geolev1_lbl 756026 `"Jura [Canton: Switzerland]"', add
label define geolev1_lbl 834001 `"Dodoma [Region: Tanzania]"', add
label define geolev1_lbl 834003 `"Kilimanjaro [Region: Tanzania]"', add
label define geolev1_lbl 834004 `"Tanga [Region: Tanzania]"', add
label define geolev1_lbl 834005 `"Morogoro [Region: Tanzania]"', add
label define geolev1_lbl 834006 `"Pwani [Region: Tanzania]"', add
label define geolev1_lbl 834007 `"Dar es Salaam [Region: Tanzania]"', add
label define geolev1_lbl 834008 `"Lindi [Region: Tanzania]"', add
label define geolev1_lbl 834009 `"Mtwara [Region: Tanzania]"', add
label define geolev1_lbl 834010 `"Ruvumba [Region: Tanzania]"', add
label define geolev1_lbl 834011 `"Iringa [Region: Tanzania]"', add
label define geolev1_lbl 834012 `"Mbeya [Region: Tanzania]"', add
label define geolev1_lbl 834013 `"Singida [Region: Tanzania]"', add
label define geolev1_lbl 834014 `"Tabora [Region: Tanzania]"', add
label define geolev1_lbl 834015 `"Rukwa [Region: Tanzania]"', add
label define geolev1_lbl 834016 `"Kigoma [Region: Tanzania]"', add
label define geolev1_lbl 834017 `"Shinyanga [Region: Tanzania]"', add
label define geolev1_lbl 834018 `"Kagera [Region: Tanzania]"', add
label define geolev1_lbl 834019 `"Mwanza [Region: Tanzania]"', add
label define geolev1_lbl 834020 `"Mara [Region: Tanzania]"', add
label define geolev1_lbl 834021 `"Arusha and Manyara [Region: Tanzania]"', add
label define geolev1_lbl 834051 `"Zanzibar North [Region: Tanzania]"', add
label define geolev1_lbl 834052 `"Zanzibar South [Region: Tanzania]"', add
label define geolev1_lbl 834053 `"Zanzibar Town/West [Region: Tanzania]"', add
label define geolev1_lbl 834054 `"Pemba North [Region: Tanzania]"', add
label define geolev1_lbl 834055 `"Pemba South [Region: Tanzania]"', add
label define geolev1_lbl 764010 `"Bangkok [Province: Thailand]"', add
label define geolev1_lbl 764011 `"Samut Prakan [Province: Thailand]"', add
label define geolev1_lbl 764012 `"Nonthaburi [Province: Thailand]"', add
label define geolev1_lbl 764013 `"Pathum Thani [Province: Thailand]"', add
label define geolev1_lbl 764014 `"Phra Nakhon si Ayutthaya [Province: Thailand]"', add
label define geolev1_lbl 764015 `"Ang Thong [Province: Thailand]"', add
label define geolev1_lbl 764016 `"Lop Buri [Province: Thailand]"', add
label define geolev1_lbl 764017 `"Sing Buri [Province: Thailand]"', add
label define geolev1_lbl 764018 `"Chai Nat [Province: Thailand]"', add
label define geolev1_lbl 764019 `"Prachin Buri and Sa Kaeo [Province: Thailand]"', add
label define geolev1_lbl 764020 `"Chon buri [Province: Thailand]"', add
label define geolev1_lbl 764021 `"Rayong [Province: Thailand]"', add
label define geolev1_lbl 764022 `"Chanthaburi [Province: Thailand]"', add
label define geolev1_lbl 764023 `"Trat [Province: Thailand]"', add
label define geolev1_lbl 764024 `"Chachoengsao [Province: Thailand]"', add
label define geolev1_lbl 764026 `"Nakhon Nayok [Province: Thailand]"', add
label define geolev1_lbl 764027 `"Saraburi [Province: Thailand]"', add
label define geolev1_lbl 764070 `"Ratchaburi [Province: Thailand]"', add
label define geolev1_lbl 764071 `"Kanchanaburi [Province: Thailand]"', add
label define geolev1_lbl 764072 `"Suphanburi [Province: Thailand]"', add
label define geolev1_lbl 764073 `"Nakhon Pathom [Province: Thailand]"', add
label define geolev1_lbl 764074 `"Samut Sakhon [Province: Thailand]"', add
label define geolev1_lbl 764075 `"Samut Songkhram [Province: Thailand]"', add
label define geolev1_lbl 764076 `"Phetchaburi [Province: Thailand]"', add
label define geolev1_lbl 764077 `"Prachuap Khiri Khan [Province: Thailand]"', add
label define geolev1_lbl 764030 `"Nakhon Ratchasima [Province: Thailand]"', add
label define geolev1_lbl 764031 `"Buri Ram [Province: Thailand]"', add
label define geolev1_lbl 764032 `"Surin [Province: Thailand]"', add
label define geolev1_lbl 764033 `"Si Sa Ket [Province: Thailand]"', add
label define geolev1_lbl 764034 `"Ubon Ratchathani, Yasothon and Amnat Charoen [Province: Thailand]"', add
label define geolev1_lbl 764036 `"Chaiyaphum [Province: Thailand]"', add
label define geolev1_lbl 764040 `"Khon Kaen [Province: Thailand]"', add
label define geolev1_lbl 764041 `"Udon Thani and Nong Bua Lam Phu [Province: Thailand]"', add
label define geolev1_lbl 764042 `"Loei [Province: Thailand]"', add
label define geolev1_lbl 764043 `"Nong Khai [Province: Thailand]"', add
label define geolev1_lbl 764044 `"Maha Sarakham [Province: Thailand]"', add
label define geolev1_lbl 764045 `"Roi Et [Province: Thailand]"', add
label define geolev1_lbl 764046 `"Kalasin [Province: Thailand]"', add
label define geolev1_lbl 764047 `"Sakon Nakhon [Province: Thailand]"', add
label define geolev1_lbl 764048 `"Nakhon Phanom and Mukdahan [Province: Thailand]"', add
label define geolev1_lbl 764050 `"Chiang Mai [Province: Thailand]"', add
label define geolev1_lbl 764051 `"Lamphun [Province: Thailand]"', add
label define geolev1_lbl 764052 `"Lampang [Province: Thailand]"', add
label define geolev1_lbl 764053 `"Uttaradit [Province: Thailand]"', add
label define geolev1_lbl 764054 `"Phrae [Province: Thailand]"', add
label define geolev1_lbl 764055 `"Nan [Province: Thailand]"', add
label define geolev1_lbl 764057 `"Chiang Rai and Phayao [Province: Thailand]"', add
label define geolev1_lbl 764058 `"Mae Hong Son [Province: Thailand]"', add
label define geolev1_lbl 764060 `"Nakhon Sawan [Province: Thailand]"', add
label define geolev1_lbl 764061 `"Uthai Thani [Province: Thailand]"', add
label define geolev1_lbl 764062 `"Kamphaeng Phet [Province: Thailand]"', add
label define geolev1_lbl 764063 `"Tak [Province: Thailand]"', add
label define geolev1_lbl 764064 `"Sukhothai [Province: Thailand]"', add
label define geolev1_lbl 764065 `"Phitsanulok [Province: Thailand]"', add
label define geolev1_lbl 764066 `"Phichit [Province: Thailand]"', add
label define geolev1_lbl 764067 `"Phetchabun [Province: Thailand]"', add
label define geolev1_lbl 764080 `"Nakhon Si Thammarat [Province: Thailand]"', add
label define geolev1_lbl 764081 `"Krabi [Province: Thailand]"', add
label define geolev1_lbl 764082 `"Phangnga [Province: Thailand]"', add
label define geolev1_lbl 764083 `"Phuket [Province: Thailand]"', add
label define geolev1_lbl 764084 `"Surat Thani [Province: Thailand]"', add
label define geolev1_lbl 764085 `"Ranong [Province: Thailand]"', add
label define geolev1_lbl 764086 `"Chumphon [Province: Thailand]"', add
label define geolev1_lbl 764090 `"Songkhla [Province: Thailand]"', add
label define geolev1_lbl 764091 `"Satun [Province: Thailand]"', add
label define geolev1_lbl 764092 `"Trang [Province: Thailand]"', add
label define geolev1_lbl 764093 `"Phatthalung [Province: Thailand]"', add
label define geolev1_lbl 764094 `"Pattani [Province: Thailand]"', add
label define geolev1_lbl 764095 `"Yala [Province: Thailand]"', add
label define geolev1_lbl 764096 `"Narathiwat [Province: Thailand]"', add
label define geolev1_lbl 792001 `"Adana, Gaziantep, Osmaniye and Kilis [Province: Turkey]"', add
label define geolev1_lbl 792002 `"Adiyaman [Province: Turkey]"', add
label define geolev1_lbl 792003 `"Afyon [Province: Turkey]"', add
label define geolev1_lbl 792004 `"Agri [Province: Turkey]"', add
label define geolev1_lbl 792005 `"Amasya [Province: Turkey]"', add
label define geolev1_lbl 792006 `"Ankara and Kirikkale [Province: Turkey]"', add
label define geolev1_lbl 792007 `"Antalya [Province: Turkey]"', add
label define geolev1_lbl 792008 `"Artvin [Province: Turkey]"', add
label define geolev1_lbl 792009 `"Aydin [Province: Turkey]"', add
label define geolev1_lbl 792010 `"Balikesir [Province: Turkey]"', add
label define geolev1_lbl 792011 `"Bilecik [Province: Turkey]"', add
label define geolev1_lbl 792012 `"Bingöl [Province: Turkey]"', add
label define geolev1_lbl 792013 `"Bitlis [Province: Turkey]"', add
label define geolev1_lbl 792014 `"Bolu and Düzce [Province: Turkey]"', add
label define geolev1_lbl 792015 `"Burdur [Province: Turkey]"', add
label define geolev1_lbl 792017 `"Çanakkale [Province: Turkey]"', add
label define geolev1_lbl 792019 `"Çorum [Province: Turkey]"', add
label define geolev1_lbl 792020 `"Denizli [Province: Turkey]"', add
label define geolev1_lbl 792021 `"Diyarbakir [Province: Turkey]"', add
label define geolev1_lbl 792022 `"Edirne [Province: Turkey]"', add
label define geolev1_lbl 792023 `"Elazig [Province: Turkey]"', add
label define geolev1_lbl 792024 `"Erzincan [Province: Turkey]"', add
label define geolev1_lbl 792025 `"Erzurum [Province: Turkey]"', add
label define geolev1_lbl 792026 `"Eskisehir [Province: Turkey]"', add
label define geolev1_lbl 792028 `"Giresun [Province: Turkey]"', add
label define geolev1_lbl 792029 `"Gümüshane and Bayburt [Province: Turkey]"', add
label define geolev1_lbl 792031 `"Hatay [Province: Turkey]"', add
label define geolev1_lbl 792032 `"Isparta [Province: Turkey]"', add
label define geolev1_lbl 792033 `"Mersin (içel) [Province: Turkey]"', add
label define geolev1_lbl 792034 `"Istanbul, Bursa, Kocaeli and Yalova [Province: Turkey]"', add
label define geolev1_lbl 792035 `"Izmir [Province: Turkey]"', add
label define geolev1_lbl 792036 `"Kars, Ardahan and Igdir [Province: Turkey]"', add
label define geolev1_lbl 792037 `"Kastamonu [Province: Turkey]"', add
label define geolev1_lbl 792038 `"Kayseri [Province: Turkey]"', add
label define geolev1_lbl 792039 `"Kirklareli [Province: Turkey]"', add
label define geolev1_lbl 792040 `"Kirsehir [Province: Turkey]"', add
label define geolev1_lbl 792042 `"Konya and Karaman [Province: Turkey]"', add
label define geolev1_lbl 792043 `"Kütahya [Province: Turkey]"', add
label define geolev1_lbl 792044 `"Malatya [Province: Turkey]"', add
label define geolev1_lbl 792045 `"Manisa [Province: Turkey]"', add
label define geolev1_lbl 792046 `"Kahramanmaras [Province: Turkey]"', add
label define geolev1_lbl 792047 `"Mardin, Hakkari, Siirt, Batman and Sirnak [Province: Turkey]"', add
label define geolev1_lbl 792048 `"Mugla [Province: Turkey]"', add
label define geolev1_lbl 792049 `"Mus [Province: Turkey]"', add
label define geolev1_lbl 792050 `"Nevsehir [Province: Turkey]"', add
label define geolev1_lbl 792051 `"Nigde and Aksaray [Province: Turkey]"', add
label define geolev1_lbl 792052 `"Ordu [Province: Turkey]"', add
label define geolev1_lbl 792053 `"Rize [Province: Turkey]"', add
label define geolev1_lbl 792054 `"Sakarya [Province: Turkey]"', add
label define geolev1_lbl 792055 `"Samsun [Province: Turkey]"', add
label define geolev1_lbl 792057 `"Sinop [Province: Turkey]"', add
label define geolev1_lbl 792058 `"Sivas [Province: Turkey]"', add
label define geolev1_lbl 792059 `"Tekirdag [Province: Turkey]"', add
label define geolev1_lbl 792060 `"Tokat [Province: Turkey]"', add
label define geolev1_lbl 792061 `"Trabzon [Province: Turkey]"', add
label define geolev1_lbl 792062 `"Tunceli [Province: Turkey]"', add
label define geolev1_lbl 792063 `"Sanliurfa [Province: Turkey]"', add
label define geolev1_lbl 792064 `"Usak [Province: Turkey]"', add
label define geolev1_lbl 792065 `"Van [Province: Turkey]"', add
label define geolev1_lbl 792066 `"Yozgat [Province: Turkey]"', add
label define geolev1_lbl 804001 `"The Autonomous Republic of Crimea [Region: Ukraine]"', add
label define geolev1_lbl 804005 `"Vinnytska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804007 `"Volynska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804012 `"Dnipropetrovska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804014 `"Donetska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804018 `"Zhytomyrska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804021 `"Zakarpatska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804023 `"Zaporizka oblast [Region: Ukraine]"', add
label define geolev1_lbl 804026 `"Ivano-Frankivska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804032 `"Kyivska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804035 `"Kirovohradska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804044 `"Luhanska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804046 `"Lvivska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804048 `"Mykolaivska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804051 `"Odeska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804053 `"Poltavska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804056 `"Rivnenska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804059 `"Sumska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804061 `"Ternopilska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804063 `"Kharkivska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804065 `"Khersonska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804068 `"Khmelnytska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804071 `"Cherkaska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804073 `"Chernivetska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804074 `"Chernihivska oblast [Region: Ukraine]"', add
label define geolev1_lbl 804080 `"Kyiv  [Region: Ukraine]"', add
label define geolev1_lbl 804085 `"Sevastopol  [Region: Ukraine]"', add
label define geolev1_lbl 792067 `"Zonguldak, Çankiri, Karabuk and Bartin [Province: Turkey]"', add
label define geolev1_lbl 800101 `"Kalangala [District: Uganda]"', add
label define geolev1_lbl 800102 `"Kampala [District: Uganda]"', add
label define geolev1_lbl 800103 `"Kiboga [District: Uganda]"', add
label define geolev1_lbl 800104 `"Luwero and Nakasongola [District: Uganda]"', add
label define geolev1_lbl 800105 `"Masaka and Sembabule [District: Uganda]"', add
label define geolev1_lbl 800107 `"Mubende [District: Uganda]"', add
label define geolev1_lbl 800108 `"Mukono and Kayunga [District: Uganda]"', add
label define geolev1_lbl 800110 `"Rakai [District: Uganda]"', add
label define geolev1_lbl 800113 `"Mpigi and Wakiso [District: Uganda]"', add
label define geolev1_lbl 800203 `"Iganga, Buguri, and Mayuge [District: Uganda]"', add
label define geolev1_lbl 800204 `"Jinja [District: Uganda]"', add
label define geolev1_lbl 800205 `"Kamuli [District: Uganda]"', add
label define geolev1_lbl 800206 `"Kapchorwa [District: Uganda]"', add
label define geolev1_lbl 800208 `"Kumi [District: Uganda]"', add
label define geolev1_lbl 800209 `"Mbale and Sironko [District: Uganda]"', add
label define geolev1_lbl 800210 `"Pallisa [District: Uganda]"', add
label define geolev1_lbl 800211 `"Soroti, Katakwi, and Kaberamaido [District: Uganda]"', add
label define geolev1_lbl 800212 `"Busia and Troro [District: Uganda]"', add
label define geolev1_lbl 800301 `"Moyo and Adjumani [District: Uganda]"', add
label define geolev1_lbl 800302 `"Apac [District: Uganda]"', add
label define geolev1_lbl 800303 `"Arua and Yumbe [District: Uganda]"', add
label define geolev1_lbl 800304 `"Gulu [District: Uganda]"', add
label define geolev1_lbl 800306 `"Kotido [District: Uganda]"', add
label define geolev1_lbl 800307 `"Lira [District: Uganda]"', add
label define geolev1_lbl 800308 `"Moroto and Nakapiripirit [District: Uganda]"', add
label define geolev1_lbl 800310 `"Nebbi [District: Uganda]"', add
label define geolev1_lbl 800312 `"Kitgum and Pader [District: Uganda]"', add
label define geolev1_lbl 800401 `"Bundibugyo [District: Uganda]"', add
label define geolev1_lbl 800403 `"Hoima [District: Uganda]"', add
label define geolev1_lbl 800404 `"Kabale [District: Uganda]"', add
label define geolev1_lbl 800405 `"Kabarole, Kamwenge, and Kyenjojo [District: Uganda]"', add
label define geolev1_lbl 800406 `"Kasese [District: Uganda]"', add
label define geolev1_lbl 800407 `"Kibaale [District: Uganda]"', add
label define geolev1_lbl 800408 `"Kisoro [District: Uganda]"', add
label define geolev1_lbl 800409 `"Masindi [District: Uganda]"', add
label define geolev1_lbl 800410 `"Bushenyi, Mbarara, and Ntungamo [District: Uganda]"', add
label define geolev1_lbl 800412 `"Rukungiri and Kanungu [District: Uganda]"', add
label define geolev1_lbl 800999 `"Unknown [District: Uganda]"', add
label define geolev1_lbl 826011 `"North East [Region: United Kingdom]"', add
label define geolev1_lbl 826013 `"North West [Region: United Kingdom]"', add
label define geolev1_lbl 826014 `"Yorkshire and the Humber [Region: United Kingdom]"', add
label define geolev1_lbl 826021 `"East Midlands [Region: United Kingdom]"', add
label define geolev1_lbl 826022 `"West Midlands [Region: United Kingdom]"', add
label define geolev1_lbl 826031 `"East of England [Region: United Kingdom]"', add
label define geolev1_lbl 826032 `"South East and London [Region: United Kingdom]"', add
label define geolev1_lbl 826040 `"South West [Region: United Kingdom]"', add
label define geolev1_lbl 826060 `"Scotland [Region: United Kingdom]"', add
label define geolev1_lbl 826070 `"Wales [Region: United Kingdom]"', add
label define geolev1_lbl 826080 `"Northern Ireland [Region: United Kingdom]"', add
label define geolev1_lbl 840001 `"Alabama [State: U.S.]"', add
label define geolev1_lbl 840002 `"Alaska [State: U.S.]"', add
label define geolev1_lbl 840004 `"Arizona [State: U.S.]"', add
label define geolev1_lbl 840005 `"Arkansas [State: U.S.]"', add
label define geolev1_lbl 840006 `"California [State: U.S.]"', add
label define geolev1_lbl 840008 `"Colorado [State: U.S.]"', add
label define geolev1_lbl 840009 `"Connecticut [State: U.S.]"', add
label define geolev1_lbl 840010 `"Delaware [State: U.S.]"', add
label define geolev1_lbl 840011 `"District of Columbia [State: U.S.]"', add
label define geolev1_lbl 840012 `"Florida [State: U.S.]"', add
label define geolev1_lbl 840013 `"Georgia [State: U.S.]"', add
label define geolev1_lbl 840015 `"Hawaii [State: U.S.]"', add
label define geolev1_lbl 840016 `"Idaho [State: U.S.]"', add
label define geolev1_lbl 840017 `"Illinois [State: U.S.]"', add
label define geolev1_lbl 840018 `"Indiana [State: U.S.]"', add
label define geolev1_lbl 840019 `"Iowa [State: U.S.]"', add
label define geolev1_lbl 840020 `"Kansas [State: U.S.]"', add
label define geolev1_lbl 840021 `"Kentucky [State: U.S.]"', add
label define geolev1_lbl 840022 `"Louisiana [State: U.S.]"', add
label define geolev1_lbl 840023 `"Maine [State: U.S.]"', add
label define geolev1_lbl 840024 `"Maryland [State: U.S.]"', add
label define geolev1_lbl 840025 `"Massachusetts [State: U.S.]"', add
label define geolev1_lbl 840026 `"Michigan [State: U.S.]"', add
label define geolev1_lbl 840027 `"Minnesota [State: U.S.]"', add
label define geolev1_lbl 840028 `"Mississippi [State: U.S.]"', add
label define geolev1_lbl 840029 `"Missouri [State: U.S.]"', add
label define geolev1_lbl 840030 `"Montana [State: U.S.]"', add
label define geolev1_lbl 840031 `"Nebraska [State: U.S.]"', add
label define geolev1_lbl 840032 `"Nevada [State: U.S.]"', add
label define geolev1_lbl 840033 `"New Hampshire [State: U.S.]"', add
label define geolev1_lbl 840034 `"New Jersey [State: U.S.]"', add
label define geolev1_lbl 840035 `"New Mexico [State: U.S.]"', add
label define geolev1_lbl 840036 `"New York [State: U.S.]"', add
label define geolev1_lbl 840037 `"North Carolina [State: U.S.]"', add
label define geolev1_lbl 840038 `"North Dakota [State: U.S.]"', add
label define geolev1_lbl 840039 `"Ohio [State: U.S.]"', add
label define geolev1_lbl 840040 `"Oklahoma [State: U.S.]"', add
label define geolev1_lbl 840041 `"Oregon [State: U.S.]"', add
label define geolev1_lbl 840042 `"Pennsylvania [State: U.S.]"', add
label define geolev1_lbl 840044 `"Rhode Island [State: U.S.]"', add
label define geolev1_lbl 840045 `"South Carolina [State: U.S.]"', add
label define geolev1_lbl 840046 `"South Dakota [State: U.S.]"', add
label define geolev1_lbl 840047 `"Tennessee [State: U.S.]"', add
label define geolev1_lbl 840048 `"Texas [State: U.S.]"', add
label define geolev1_lbl 840049 `"Utah [State: U.S.]"', add
label define geolev1_lbl 840050 `"Vermont [State: U.S.]"', add
label define geolev1_lbl 840051 `"Virginia [State: U.S.]"', add
label define geolev1_lbl 840053 `"Washington [State: U.S.]"', add
label define geolev1_lbl 840054 `"West Virginia [State: U.S.]"', add
label define geolev1_lbl 840055 `"Wisconsin [State: U.S.]"', add
label define geolev1_lbl 840056 `"Wyoming [State: U.S.]"', add
label define geolev1_lbl 840099 `"State not identified [State: U.S.]"', add
label define geolev1_lbl 858001 `"Montevideo [Department: Uruguay]"', add
label define geolev1_lbl 858002 `"Artigas [Department: Uruguay]"', add
label define geolev1_lbl 858003 `"Canelones [Department: Uruguay]"', add
label define geolev1_lbl 858004 `"Cerro Largo [Department: Uruguay]"', add
label define geolev1_lbl 858005 `"Colonia [Department: Uruguay]"', add
label define geolev1_lbl 858006 `"Durazno [Department: Uruguay]"', add
label define geolev1_lbl 858007 `"Flores [Department: Uruguay]"', add
label define geolev1_lbl 858008 `"Florida [Department: Uruguay]"', add
label define geolev1_lbl 858009 `"Lavalleja [Department: Uruguay]"', add
label define geolev1_lbl 858010 `"Maldonado [Department: Uruguay]"', add
label define geolev1_lbl 858011 `"Paysandu [Department: Uruguay]"', add
label define geolev1_lbl 858012 `"Rio Negro [Department: Uruguay]"', add
label define geolev1_lbl 858013 `"Rivera [Department: Uruguay]"', add
label define geolev1_lbl 858014 `"Rocha [Department: Uruguay]"', add
label define geolev1_lbl 858015 `"Salto [Department: Uruguay]"', add
label define geolev1_lbl 858016 `"San Jose [Department: Uruguay]"', add
label define geolev1_lbl 858017 `"Soriano [Department: Uruguay]"', add
label define geolev1_lbl 858018 `"Tacuarembo [Department: Uruguay]"', add
label define geolev1_lbl 858019 `"Treinta y Tres [Department: Uruguay]"', add
label define geolev1_lbl 862001 `"Federal District and Vargas  [State: Venezuela]"', add
label define geolev1_lbl 862002 `"Amazonas Federal Territory [State: Venezuela]"', add
label define geolev1_lbl 862003 `"Anzóategui  [State: Venezuela]"', add
label define geolev1_lbl 862004 `"Apure  [State: Venezuela]"', add
label define geolev1_lbl 862005 `"Aragua [State: Venezuela]"', add
label define geolev1_lbl 862006 `"Barinas [State: Venezuela]"', add
label define geolev1_lbl 862007 `"Bolívar [State: Venezuela]"', add
label define geolev1_lbl 862008 `"Carabobo [State: Venezuela]"', add
label define geolev1_lbl 862009 `"Cojedes  [State: Venezuela]"', add
label define geolev1_lbl 862010 `"Amacuros Delta Federal Territory [State: Venezuela]"', add
label define geolev1_lbl 862011 `"Falcón  [State: Venezuela]"', add
label define geolev1_lbl 862012 `"Guárico [State: Venezuela]"', add
label define geolev1_lbl 862013 `"Lara  [State: Venezuela]"', add
label define geolev1_lbl 862014 `"Mérida [State: Venezuela]"', add
label define geolev1_lbl 862015 `"Miranda [State: Venezuela]"', add
label define geolev1_lbl 862016 `"Monagas [State: Venezuela]"', add
label define geolev1_lbl 862017 `"Nueva Esparta and Federal Dependencies [State: Venezuela]"', add
label define geolev1_lbl 862018 `"Portuguesa [State: Venezuela]"', add
label define geolev1_lbl 862019 `"Sucre [State: Venezuela]"', add
label define geolev1_lbl 862020 `"Táchira [State: Venezuela]"', add
label define geolev1_lbl 862021 `"Trujillo [State: Venezuela]"', add
label define geolev1_lbl 862022 `"Yaracuy [State: Venezuela]"', add
label define geolev1_lbl 862023 `"Zulia [State: Venezuela]"', add
label define geolev1_lbl 704001 `"Ninh Binh, Hoa Binh, Ha Noi, Phu Tho, Vinh Phuc, Ha Nam, and Nam Dinh [Province: Vietnam]"', add
label define geolev1_lbl 704002 `"Ha Giang, and Tuyen Quang [Province: Vietnam]"', add
label define geolev1_lbl 704004 `"Cao Bang [Province: Vietnam]"', add
label define geolev1_lbl 704014 `"Son La [Province: Vietnam]"', add
label define geolev1_lbl 704015 `"Lai Chau, Dien Bien, Lao Cai, and Yen Bai [Province: Vietnam]"', add
label define geolev1_lbl 704019 `"Bac Kan, and Thai Nguyen [Province: Vietnam]"', add
label define geolev1_lbl 704020 `"Lang Son [Province: Vietnam]"', add
label define geolev1_lbl 704022 `"Quang Ninh [Province: Vietnam]"', add
label define geolev1_lbl 704024 `"Bac Giang, and Bac Ninh [Province: Vietnam]"', add
label define geolev1_lbl 704030 `"Hai Duong, and Hung Yen [Province: Vietnam]"', add
label define geolev1_lbl 704031 `"Hai Phong [Province: Vietnam]"', add
label define geolev1_lbl 704034 `"Thai Binh [Province: Vietnam]"', add
label define geolev1_lbl 704038 `"Thanh Hoa [Province: Vietnam]"', add
label define geolev1_lbl 704040 `"Nghe An, and  Ha Tinh [Province: Vietnam]"', add
label define geolev1_lbl 704046 `"Quang Binh, Quang Tri, and Thua Thien - Hue [Province: Vietnam]"', add
label define geolev1_lbl 704049 `"Da Nang, and Quang Nam [Province: Vietnam]"', add
label define geolev1_lbl 704051 `"Binh Dinh and Quang Ngai [Province: Vietnam]"', add
label define geolev1_lbl 704054 `"Phu Yen and Khanh Hoa [Province: Vietnam]"', add
label define geolev1_lbl 704060 `"Thuan Hai, Ninh Thuan, and Binh Thuan [Province: Vietnam]"', add
label define geolev1_lbl 704062 `"Gia Lai, and Kon Tum [Province: Vietnam]"', add
label define geolev1_lbl 704066 `"Dak Lak and Dak Nong [Province: Vietnam]"', add
label define geolev1_lbl 704068 `"Lam Dong [Province: Vietnam]"', add
label define geolev1_lbl 704072 `"Tay Ninh [Province: Vietnam]"', add
label define geolev1_lbl 704074 `"Binh Duong, and Binh Phuoc [Province: Vietnam]"', add
label define geolev1_lbl 704075 `"Dong Nai and Ba Ria - Vung Tau [Province: Vietnam]"', add
label define geolev1_lbl 704079 `"Ho Chi Minh City [Province: Vietnam]"', add
label define geolev1_lbl 704080 `"Long An [Province: Vietnam]"', add
label define geolev1_lbl 704082 `"Tien Giang [Province: Vietnam]"', add
label define geolev1_lbl 704083 `"Ben Tre [Province: Vietnam]"', add
label define geolev1_lbl 704086 `"Vinh Long, and Tra Vinh [Province: Vietnam]"', add
label define geolev1_lbl 704087 `"Dong Thap [Province: Vietnam]"', add
label define geolev1_lbl 704089 `"An Giang [Province: Vietnam]"', add
label define geolev1_lbl 704091 `"Kien Giang [Province: Vietnam]"', add
label define geolev1_lbl 704094 `"Hau Giang, Can Tho city, and Soc Trang [Province: Vietnam]"', add
label define geolev1_lbl 704096 `"Bac Lieu, and Ca Mau [Province: Vietnam]"', add
label define geolev1_lbl 894001 `"Central [Province: Zambia]"', add
label define geolev1_lbl 894002 `"Copperbelt [Province: Zambia]"', add
label define geolev1_lbl 894003 `"Eastern, Muchinga, and Northern [Province: Zambia]"', add
label define geolev1_lbl 894004 `"Luapula [Province: Zambia]"', add
label define geolev1_lbl 894005 `"Lusaka [Province: Zambia]"', add
label define geolev1_lbl 894008 `"North Western [Province: Zambia]"', add
label define geolev1_lbl 894009 `"Southern [Province: Zambia]"', add
label define geolev1_lbl 894010 `"Western [Province: Zambia]"', add
label values geolev1 geolev1_lbl

label define geo1a_cr_lbl 188001 `"San José"'
label define geo1a_cr_lbl 188002 `"Alajuela"', add
label define geo1a_cr_lbl 188003 `"Cartago"', add
label define geo1a_cr_lbl 188004 `"Heredia"', add
label define geo1a_cr_lbl 188005 `"Guanacaste"', add
label define geo1a_cr_lbl 188006 `"Puntarenas"', add
label define geo1a_cr_lbl 188007 `"Limón"', add
label values geo1a_cr geo1a_cr_lbl

label define geo2b_cr_lbl 101 `"San José"'
label define geo2b_cr_lbl 102 `"Escazu"', add
label define geo2b_cr_lbl 103 `"Desamparados"', add
label define geo2b_cr_lbl 104 `"Puriscal"', add
label define geo2b_cr_lbl 106 `"Aserri"', add
label define geo2b_cr_lbl 107 `"Mora"', add
label define geo2b_cr_lbl 108 `"Goicoechea"', add
label define geo2b_cr_lbl 109 `"Santa Ana"', add
label define geo2b_cr_lbl 110 `"Alajuelita"', add
label define geo2b_cr_lbl 111 `"Canton Vásquez de Coronado"', add
label define geo2b_cr_lbl 113 `"Tibás"', add
label define geo2b_cr_lbl 114 `"Moravia"', add
label define geo2b_cr_lbl 115 `"Montes de Oca"', add
label define geo2b_cr_lbl 118 `"Curridabat"', add
label define geo2b_cr_lbl 119 `"Pérez Zeledón"', add
label define geo2b_cr_lbl 199 `"Cantons with less than 20,000 in San José province"', add
label define geo2b_cr_lbl 201 `"Alajuela"', add
label define geo2b_cr_lbl 202 `"San Ramón"', add
label define geo2b_cr_lbl 203 `"Grecia"', add
label define geo2b_cr_lbl 205 `"Atenas"', add
label define geo2b_cr_lbl 206 `"Naranjo"', add
label define geo2b_cr_lbl 207 `"Palmares"', add
label define geo2b_cr_lbl 208 `"Póas"', add
label define geo2b_cr_lbl 210 `"San Carlos"', add
label define geo2b_cr_lbl 213 `"Upala"', add
label define geo2b_cr_lbl 299 `"Cantons with less than 20,000 in Alajuela province"', add
label define geo2b_cr_lbl 301 `"Cartago"', add
label define geo2b_cr_lbl 302 `"Canton Paraíso"', add
label define geo2b_cr_lbl 303 `"La Unión"', add
label define geo2b_cr_lbl 305 `"Turrialba"', add
label define geo2b_cr_lbl 307 `"Oreamuno"', add
label define geo2b_cr_lbl 308 `"El Guarco"', add
label define geo2b_cr_lbl 399 `"Cantons with less than 20,000 in Cartago province"', add
label define geo2b_cr_lbl 401 `"Heredia"', add
label define geo2b_cr_lbl 402 `"Barva"', add
label define geo2b_cr_lbl 403 `"Santo Domingo"', add
label define geo2b_cr_lbl 404 `"Santa Bárbara"', add
label define geo2b_cr_lbl 405 `"San Rafael"', add
label define geo2b_cr_lbl 409 `"San Pablo"', add
label define geo2b_cr_lbl 499 `"Cantons with less than 20,000 in Heredia province"', add
label define geo2b_cr_lbl 501 `"Liberia"', add
label define geo2b_cr_lbl 502 `"Nicoya"', add
label define geo2b_cr_lbl 503 `"Santa Cruz"', add
label define geo2b_cr_lbl 505 `"Carrillo"', add
label define geo2b_cr_lbl 506 `"Cañas"', add
label define geo2b_cr_lbl 599 `"Cantons with less than 20,000 in Guanacas province"', add
label define geo2b_cr_lbl 601 `"Puntarenas"', add
label define geo2b_cr_lbl 602 `"Esparza"', add
label define geo2b_cr_lbl 603 `"Buenos Aires"', add
label define geo2b_cr_lbl 605 `"Osa"', add
label define geo2b_cr_lbl 606 `"Aguirre"', add
label define geo2b_cr_lbl 607 `"Golfito"', add
label define geo2b_cr_lbl 608 `"Coto Brus"', add
label define geo2b_cr_lbl 610 `"Corredores"', add
label define geo2b_cr_lbl 699 `"Cantons with less than 20,000 in Puntarenas province"', add
label define geo2b_cr_lbl 701 `"Limón"', add
label define geo2b_cr_lbl 702 `"Pococí"', add
label define geo2b_cr_lbl 703 `"Siquirres"', add
label define geo2b_cr_lbl 704 `"Talamanca"', add
label define geo2b_cr_lbl 705 `"Matina"', add
label define geo2b_cr_lbl 706 `"Guácimo"', add
label values geo2b_cr geo2b_cr_lbl

label define cr00a_hhnum_lbl 1 `"1"'
label define cr00a_hhnum_lbl 2 `"2"', add
label define cr00a_hhnum_lbl 3 `"3"', add
label define cr00a_hhnum_lbl 4 `"4"', add
label define cr00a_hhnum_lbl 5 `"5"', add
label define cr00a_hhnum_lbl 6 `"6"', add
label define cr00a_hhnum_lbl 7 `"7"', add
label define cr00a_hhnum_lbl 8 `"8"', add
label values cr00a_hhnum cr00a_hhnum_lbl

label define cr00a_hhn_lbl 1 `"1"'
label define cr00a_hhn_lbl 2 `"2"', add
label define cr00a_hhn_lbl 3 `"3"', add
label define cr00a_hhn_lbl 4 `"4"', add
label define cr00a_hhn_lbl 5 `"5"', add
label define cr00a_hhn_lbl 6 `"6"', add
label define cr00a_hhn_lbl 7 `"7"', add
label define cr00a_hhn_lbl 8 `"8"', add
label define cr00a_hhn_lbl 9 `"9"', add
label values cr00a_hhn cr00a_hhn_lbl

label define cr00a_pernd_lbl 00 `"0"'
label define cr00a_pernd_lbl 01 `"1"', add
label define cr00a_pernd_lbl 02 `"2"', add
label define cr00a_pernd_lbl 03 `"3"', add
label define cr00a_pernd_lbl 04 `"4"', add
label define cr00a_pernd_lbl 05 `"5"', add
label define cr00a_pernd_lbl 06 `"6"', add
label define cr00a_pernd_lbl 07 `"7"', add
label define cr00a_pernd_lbl 08 `"8"', add
label define cr00a_pernd_lbl 09 `"9"', add
label define cr00a_pernd_lbl 10 `"10"', add
label define cr00a_pernd_lbl 11 `"11"', add
label define cr00a_pernd_lbl 12 `"12"', add
label define cr00a_pernd_lbl 13 `"13"', add
label define cr00a_pernd_lbl 14 `"14"', add
label define cr00a_pernd_lbl 15 `"15"', add
label define cr00a_pernd_lbl 16 `"16"', add
label define cr00a_pernd_lbl 17 `"17"', add
label define cr00a_pernd_lbl 18 `"18"', add
label define cr00a_pernd_lbl 19 `"19"', add
label define cr00a_pernd_lbl 20 `"20"', add
label define cr00a_pernd_lbl 21 `"21"', add
label define cr00a_pernd_lbl 22 `"22"', add
label define cr00a_pernd_lbl 23 `"23"', add
label define cr00a_pernd_lbl 24 `"24"', add
label define cr00a_pernd_lbl 25 `"25"', add
label define cr00a_pernd_lbl 26 `"26"', add
label define cr00a_pernd_lbl 27 `"27"', add
label define cr00a_pernd_lbl 28 `"28"', add
label define cr00a_pernd_lbl 29 `"29"', add
label define cr00a_pernd_lbl 30 `"30"', add
label values cr00a_pernd cr00a_pernd_lbl

label define cr00a_pern_lbl 00 `"0"'
label define cr00a_pern_lbl 01 `"1"', add
label define cr00a_pern_lbl 02 `"2"', add
label define cr00a_pern_lbl 03 `"3"', add
label define cr00a_pern_lbl 04 `"4"', add
label define cr00a_pern_lbl 05 `"5"', add
label define cr00a_pern_lbl 06 `"6"', add
label define cr00a_pern_lbl 07 `"7"', add
label define cr00a_pern_lbl 08 `"8"', add
label define cr00a_pern_lbl 09 `"9"', add
label define cr00a_pern_lbl 10 `"10"', add
label define cr00a_pern_lbl 11 `"11"', add
label define cr00a_pern_lbl 12 `"12"', add
label define cr00a_pern_lbl 13 `"13"', add
label define cr00a_pern_lbl 14 `"14"', add
label define cr00a_pern_lbl 15 `"15"', add
label define cr00a_pern_lbl 16 `"16"', add
label define cr00a_pern_lbl 17 `"17"', add
label define cr00a_pern_lbl 18 `"18"', add
label define cr00a_pern_lbl 19 `"19"', add
label define cr00a_pern_lbl 20 `"20"', add
label define cr00a_pern_lbl 21 `"21"', add
label define cr00a_pern_lbl 22 `"22"', add
label define cr00a_pern_lbl 23 `"23"', add
label define cr00a_pern_lbl 24 `"24"', add
label define cr00a_pern_lbl 25 `"25"', add
label define cr00a_pern_lbl 26 `"26"', add
label define cr00a_pern_lbl 27 `"27"', add
label define cr00a_pern_lbl 28 `"28"', add
label define cr00a_pern_lbl 29 `"29"', add
label define cr00a_pern_lbl 30 `"30"', add
label values cr00a_pern cr00a_pern_lbl

label define cr00a_fbig_lbl 0 `"No problem"'
label define cr00a_fbig_lbl 1 `"Yes"', add
label values cr00a_fbig cr00a_fbig_lbl

label define cr00a_prov_lbl 1 `"San Jose"'
label define cr00a_prov_lbl 2 `"Alajuela"', add
label define cr00a_prov_lbl 3 `"Cartago"', add
label define cr00a_prov_lbl 4 `"Heredia"', add
label define cr00a_prov_lbl 5 `"Guanacaste"', add
label define cr00a_prov_lbl 6 `"Puntarenas"', add
label define cr00a_prov_lbl 7 `"Limon"', add
label values cr00a_prov cr00a_prov_lbl

label define cr00a_region_lbl 1 `"Metropolitan Area"'
label define cr00a_region_lbl 2 `"Rest of Central Region"', add
label define cr00a_region_lbl 3 `"Chorotega"', add
label define cr00a_region_lbl 4 `"Pacific Central"', add
label define cr00a_region_lbl 5 `"Brunca"', add
label define cr00a_region_lbl 6 `"Atlantic Huetar"', add
label define cr00a_region_lbl 7 `"Northern Huetar"', add
label values cr00a_region cr00a_region_lbl

label define cr00a_zone_lbl 1 `"Urban concentrated"'
label define cr00a_zone_lbl 2 `"Urban outskirts"', add
label define cr00a_zone_lbl 3 `"Rural concentrated"', add
label define cr00a_zone_lbl 4 `"Rural scattered"', add
label values cr00a_zone cr00a_zone_lbl

label define cr00a_indters_lbl 1 `"Indigenous territory"'
label define cr00a_indters_lbl 2 `"Contiguous with indigenous territory"', add
label define cr00a_indters_lbl 3 `"Not indigenous territory"', add
label values cr00a_indters cr00a_indters_lbl

label define cr00a_dwtype_lbl 1 `"Independent house"'
label define cr00a_dwtype_lbl 2 `"In a building"', add
label define cr00a_dwtype_lbl 3 `"Shack or hut"', add
label define cr00a_dwtype_lbl 4 `"Other"', add
label define cr00a_dwtype_lbl 5 `"Homeless"', add
label define cr00a_dwtype_lbl 6 `"Collective"', add
label define cr00a_dwtype_lbl 7 `"Prison (collective)"', add
label values cr00a_dwtype cr00a_dwtype_lbl

label define cr00a_occup_lbl 0 `"NIU (not in universe)"'
label define cr00a_occup_lbl 1 `"Occupied: owner, completely paid"', add
label define cr00a_occup_lbl 2 `"Occupied: owner, being paid in installments"', add
label define cr00a_occup_lbl 3 `"Occupied: rented"', add
label define cr00a_occup_lbl 4 `"Occupied: squatter"', add
label define cr00a_occup_lbl 5 `"Occupied: other (gift, loan)"', add
label define cr00a_occup_lbl 6 `"Vacant: to let or sell"', add
label define cr00a_occup_lbl 7 `"Vacant: under construction or repair"', add
label define cr00a_occup_lbl 8 `"Vacant: seasonal (for vacations or for workers)"', add
label define cr00a_occup_lbl 9 `"Vacant: other"', add
label values cr00a_occup cr00a_occup_lbl

label define cr00a_rentmort_lbl 0000942 `"942 or less"'
label define cr00a_rentmort_lbl 0305355 `"305355+"', add
label define cr00a_rentmort_lbl 0999998 `"Unknown rent or mortgage payment"', add
label define cr00a_rentmort_lbl 0999999 `"NIU (not in universe)"', add
label values cr00a_rentmort cr00a_rentmort_lbl

label define cr00a_wall_lbl 0 `"NIU (not in universe)"'
label define cr00a_wall_lbl 1 `"Cinder block or brick"', add
label define cr00a_wall_lbl 2 `"Socle with facing"', add
label define cr00a_wall_lbl 3 `"Socle without facing"', add
label define cr00a_wall_lbl 4 `"Wood with facing"', add
label define cr00a_wall_lbl 5 `"Wood without facing"', add
label define cr00a_wall_lbl 6 `"Prefabricated"', add
label define cr00a_wall_lbl 7 `"Other"', add
label define cr00a_wall_lbl 8 `"Waste material"', add
label values cr00a_wall cr00a_wall_lbl

label define cr00a_roof_lbl 0 `"NIU (not in universe)"'
label define cr00a_roof_lbl 1 `"Metal or zinc sheet"', add
label define cr00a_roof_lbl 2 `"Fibrocement"', add
label define cr00a_roof_lbl 3 `"Other"', add
label define cr00a_roof_lbl 4 `"Waste material"', add
label values cr00a_roof cr00a_roof_lbl

label define cr00a_ceiling_lbl 0 `"NIU (not in universe)"'
label define cr00a_ceiling_lbl 1 `"Yes"', add
label define cr00a_ceiling_lbl 2 `"No"', add
label values cr00a_ceiling cr00a_ceiling_lbl

label define cr00a_floor_lbl 0 `"NIU (not in universe)"'
label define cr00a_floor_lbl 1 `"Tile, linoleum flooring, ceramic, etc"', add
label define cr00a_floor_lbl 2 `"Cement (polished or not)"', add
label define cr00a_floor_lbl 3 `"Wood"', add
label define cr00a_floor_lbl 4 `"Other"', add
label define cr00a_floor_lbl 5 `"None (dirt floor)"', add
label values cr00a_floor cr00a_floor_lbl

label define cr00a_wallc_lbl 0 `"NIU (not in universe)"'
label define cr00a_wallc_lbl 1 `"Poor"', add
label define cr00a_wallc_lbl 2 `"Fair"', add
label define cr00a_wallc_lbl 3 `"Good"', add
label values cr00a_wallc cr00a_wallc_lbl

label define cr00a_roofc_lbl 0 `"NIU (not in universe)"'
label define cr00a_roofc_lbl 1 `"Poor"', add
label define cr00a_roofc_lbl 2 `"Fair"', add
label define cr00a_roofc_lbl 3 `"Good"', add
label values cr00a_roofc cr00a_roofc_lbl

label define cr00a_floorc_lbl 0 `"NIU (not in universe)"'
label define cr00a_floorc_lbl 1 `"Poor"', add
label define cr00a_floorc_lbl 2 `"Fair"', add
label define cr00a_floorc_lbl 3 `"Good"', add
label values cr00a_floorc cr00a_floorc_lbl

label define cr00a_bedrm_lbl 00 `"0"'
label define cr00a_bedrm_lbl 01 `"1"', add
label define cr00a_bedrm_lbl 02 `"2"', add
label define cr00a_bedrm_lbl 03 `"3"', add
label define cr00a_bedrm_lbl 04 `"4"', add
label define cr00a_bedrm_lbl 05 `"5"', add
label define cr00a_bedrm_lbl 06 `"6"', add
label define cr00a_bedrm_lbl 07 `"7"', add
label define cr00a_bedrm_lbl 08 `"8+"', add
label define cr00a_bedrm_lbl 99 `"NIU (not in universe)"', add
label values cr00a_bedrm cr00a_bedrm_lbl

label define cr00a_rm_lbl 00 `"NIU (not in universe)"'
label define cr00a_rm_lbl 01 `"1"', add
label define cr00a_rm_lbl 02 `"2"', add
label define cr00a_rm_lbl 03 `"3"', add
label define cr00a_rm_lbl 04 `"4"', add
label define cr00a_rm_lbl 05 `"5"', add
label define cr00a_rm_lbl 06 `"6"', add
label define cr00a_rm_lbl 07 `"7"', add
label define cr00a_rm_lbl 08 `"8"', add
label define cr00a_rm_lbl 09 `"9"', add
label define cr00a_rm_lbl 10 `"10"', add
label define cr00a_rm_lbl 11 `"11"', add
label define cr00a_rm_lbl 12 `"12"', add
label define cr00a_rm_lbl 13 `"13"', add
label define cr00a_rm_lbl 14 `"14+"', add
label values cr00a_rm cr00a_rm_lbl

label define cr00a_watsup_lbl 0 `"NIU (not in universe)"'
label define cr00a_watsup_lbl 1 `"Pipe inside the dwelling"', add
label define cr00a_watsup_lbl 2 `"Pipe outside the dwelling, but within the lot or building"', add
label define cr00a_watsup_lbl 3 `"Pipe outside the lot or building"', add
label define cr00a_watsup_lbl 4 `"No piped water"', add
label values cr00a_watsup cr00a_watsup_lbl

label define cr00a_watsrc_lbl 0 `"NIU (not in universe)"'
label define cr00a_watsrc_lbl 1 `"Piped by Water and Sewer Company"', add
label define cr00a_watsrc_lbl 2 `"Rural or municipal aqueduct"', add
label define cr00a_watsrc_lbl 3 `"Well"', add
label define cr00a_watsrc_lbl 4 `"River, stream or spring"', add
label define cr00a_watsrc_lbl 5 `"Rain or other source"', add
label values cr00a_watsrc cr00a_watsrc_lbl

label define cr00a_sewer_lbl 0 `"NIU (not in universe)"'
label define cr00a_sewer_lbl 1 `"Public sewer system"', add
label define cr00a_sewer_lbl 2 `"Septic tank"', add
label define cr00a_sewer_lbl 3 `"Pit or latrine"', add
label define cr00a_sewer_lbl 4 `"Other system"', add
label define cr00a_sewer_lbl 5 `"None"', add
label values cr00a_sewer cr00a_sewer_lbl

label define cr00a_toilet_lbl 0 `"NIU (not in universe)"'
label define cr00a_toilet_lbl 1 `"Exclusive use"', add
label define cr00a_toilet_lbl 2 `"Shared use"', add
label define cr00a_toilet_lbl 3 `"No toilet"', add
label values cr00a_toilet cr00a_toilet_lbl

label define cr00a_elect_lbl 0 `"NIU (not in universe)"'
label define cr00a_elect_lbl 1 `"From the CNFL or ICE (public service)"', add
label define cr00a_elect_lbl 2 `"Other"', add
label define cr00a_elect_lbl 3 `"No electric lighting"', add
label values cr00a_elect cr00a_elect_lbl

label define cr00a_fuelcook_lbl 0 `"NIU (not in universe)"'
label define cr00a_fuelcook_lbl 1 `"Electricity"', add
label define cr00a_fuelcook_lbl 2 `"Wood or charcoal"', add
label define cr00a_fuelcook_lbl 3 `"Gas"', add
label define cr00a_fuelcook_lbl 4 `"Other"', add
label define cr00a_fuelcook_lbl 5 `"None (no cooking)"', add
label values cr00a_fuelcook cr00a_fuelcook_lbl

label define cr00a_tv_lbl 0 `"NIU (not in universe)"'
label define cr00a_tv_lbl 1 `"Yes"', add
label define cr00a_tv_lbl 2 `"No"', add
label values cr00a_tv cr00a_tv_lbl

label define cr00a_phone_lbl 0 `"NIU (not in universe)"'
label define cr00a_phone_lbl 1 `"Yes"', add
label define cr00a_phone_lbl 2 `"No"', add
label values cr00a_phone cr00a_phone_lbl

label define cr00a_refrig_lbl 0 `"NIU (not in universe)"'
label define cr00a_refrig_lbl 1 `"Yes"', add
label define cr00a_refrig_lbl 2 `"No"', add
label values cr00a_refrig cr00a_refrig_lbl

label define cr00a_micro_lbl 0 `"NIU (not in universe)"'
label define cr00a_micro_lbl 1 `"Yes"', add
label define cr00a_micro_lbl 2 `"No"', add
label values cr00a_micro cr00a_micro_lbl

label define cr00a_shower_lbl 0 `"NIU (not in universe)"'
label define cr00a_shower_lbl 1 `"Yes"', add
label define cr00a_shower_lbl 2 `"No"', add
label values cr00a_shower cr00a_shower_lbl

label define cr00a_watheat_lbl 0 `"NIU (not in universe)"'
label define cr00a_watheat_lbl 1 `"Yes"', add
label define cr00a_watheat_lbl 2 `"No"', add
label values cr00a_watheat cr00a_watheat_lbl

label define cr00a_washer_lbl 0 `"NIU (not in universe)"'
label define cr00a_washer_lbl 1 `"Yes"', add
label define cr00a_washer_lbl 2 `"No"', add
label values cr00a_washer cr00a_washer_lbl

label define cr00a_computr_lbl 0 `"NIU (not in universe)"'
label define cr00a_computr_lbl 1 `"Yes"', add
label define cr00a_computr_lbl 2 `"No"', add
label values cr00a_computr cr00a_computr_lbl

label define cr00a_car_lbl 0 `"NIU (not in universe)"'
label define cr00a_car_lbl 1 `"Yes"', add
label define cr00a_car_lbl 2 `"No"', add
label values cr00a_car cr00a_car_lbl

label define cr00a_dwcond1_lbl 0 `"NIU (not in universe)"'
label define cr00a_dwcond1_lbl 1 `"Poor"', add
label define cr00a_dwcond1_lbl 2 `"Fair"', add
label define cr00a_dwcond1_lbl 3 `"Good"', add
label values cr00a_dwcond1 cr00a_dwcond1_lbl

label define cr00a_dwcond2_lbl 0 `"NIU (not in universe)"'
label define cr00a_dwcond2_lbl 1 `"Inadequate"', add
label define cr00a_dwcond2_lbl 2 `"Deficient"', add
label define cr00a_dwcond2_lbl 3 `"Fair"', add
label define cr00a_dwcond2_lbl 4 `"Adequate"', add
label values cr00a_dwcond2 cr00a_dwcond2_lbl

label define cr00a_appown_lbl 0 `"NIU (not in universe)"'
label define cr00a_appown_lbl 1 `"Yes"', add
label define cr00a_appown_lbl 2 `"No"', add
label values cr00a_appown cr00a_appown_lbl

label define cr00a_crowd_lbl 0 `"NIU (not in universe)"'
label define cr00a_crowd_lbl 1 `"Crowded"', add
label define cr00a_crowd_lbl 2 `"Not crowded"', add
label values cr00a_crowd cr00a_crowd_lbl

label define cr00a_hhtype_lbl 00 `"NIU (not in universe)"'
label define cr00a_hhtype_lbl 01 `"Nuclear: family without children"', add
label define cr00a_hhtype_lbl 02 `"Nuclear: family with children"', add
label define cr00a_hhtype_lbl 03 `"Nuclear: single parent"', add
label define cr00a_hhtype_lbl 04 `"Extended: nuclear family(1) plus other relatives"', add
label define cr00a_hhtype_lbl 05 `"Extended: nuclear family(2) plus other relatives"', add
label define cr00a_hhtype_lbl 06 `"Extended: nuclear family(3) plus other relatives"', add
label define cr00a_hhtype_lbl 07 `"Extended: household head plus other relatives"', add
label define cr00a_hhtype_lbl 08 `"Composite: nuclear family (1-3) plus other non-relatives"', add
label define cr00a_hhtype_lbl 09 `"Composite: nuclear family (4-6) plus other non-relatives"', add
label define cr00a_hhtype_lbl 10 `"Composite: hh head plus other relatives plus other non-relatives"', add
label define cr00a_hhtype_lbl 11 `"Single person"', add
label define cr00a_hhtype_lbl 12 `"Non-family: head plus other non-relatives"', add
label define cr00a_hhtype_lbl 13 `"Collective"', add
label values cr00a_hhtype cr00a_hhtype_lbl

label define cr00a_nbishel_lbl 0 `"NIU (not in universe)"'
label define cr00a_nbishel_lbl 1 `"Without deficiencies"', add
label define cr00a_nbishel_lbl 2 `"With deficiencies"', add
label values cr00a_nbishel cr00a_nbishel_lbl

label define cr00a_nbihyg_lbl 0 `"NIU (not in universe)"'
label define cr00a_nbihyg_lbl 1 `"Without deficiencies"', add
label define cr00a_nbihyg_lbl 2 `"With deficiencies"', add
label values cr00a_nbihyg cr00a_nbihyg_lbl

label define cr00a_nbiknow_lbl 0 `"NIU (not in universe)"'
label define cr00a_nbiknow_lbl 1 `"Without deficiencies"', add
label define cr00a_nbiknow_lbl 2 `"With deficiencies"', add
label values cr00a_nbiknow cr00a_nbiknow_lbl

label define cr00a_nbicons_lbl 0 `"NIU (not in universe)"'
label define cr00a_nbicons_lbl 1 `"Without deficiencies"', add
label define cr00a_nbicons_lbl 2 `"With deficiencies"', add
label values cr00a_nbicons cr00a_nbicons_lbl

label define cr00a_nbibas_lbl 0 `"No deficiencies"'
label define cr00a_nbibas_lbl 1 `"One deficiency"', add
label define cr00a_nbibas_lbl 2 `"Two deficiencies"', add
label define cr00a_nbibas_lbl 3 `"Three deficiencies"', add
label define cr00a_nbibas_lbl 4 `"Four deficiencies"', add
label define cr00a_nbibas_lbl 5 `"Collective"', add
label define cr00a_nbibas_lbl 9 `"NIU (not in universe)"', add
label values cr00a_nbibas cr00a_nbibas_lbl

label define cr00a_pernum_lbl 00 `"0"'
label define cr00a_pernum_lbl 01 `"1"', add
label define cr00a_pernum_lbl 02 `"2"', add
label define cr00a_pernum_lbl 03 `"3"', add
label define cr00a_pernum_lbl 04 `"4"', add
label define cr00a_pernum_lbl 05 `"5"', add
label define cr00a_pernum_lbl 06 `"6"', add
label define cr00a_pernum_lbl 07 `"7"', add
label define cr00a_pernum_lbl 08 `"8"', add
label define cr00a_pernum_lbl 09 `"9"', add
label define cr00a_pernum_lbl 10 `"10"', add
label define cr00a_pernum_lbl 11 `"11"', add
label define cr00a_pernum_lbl 12 `"12"', add
label define cr00a_pernum_lbl 13 `"13"', add
label define cr00a_pernum_lbl 14 `"14"', add
label define cr00a_pernum_lbl 15 `"15"', add
label define cr00a_pernum_lbl 16 `"16"', add
label define cr00a_pernum_lbl 17 `"17"', add
label define cr00a_pernum_lbl 18 `"18"', add
label define cr00a_pernum_lbl 19 `"19"', add
label define cr00a_pernum_lbl 20 `"20"', add
label define cr00a_pernum_lbl 21 `"21"', add
label define cr00a_pernum_lbl 22 `"22"', add
label define cr00a_pernum_lbl 23 `"23"', add
label define cr00a_pernum_lbl 24 `"24"', add
label define cr00a_pernum_lbl 25 `"25"', add
label define cr00a_pernum_lbl 26 `"26"', add
label define cr00a_pernum_lbl 27 `"27"', add
label define cr00a_pernum_lbl 28 `"28"', add
label define cr00a_pernum_lbl 29 `"29"', add
label define cr00a_pernum_lbl 30 `"30"', add
label values cr00a_pernum cr00a_pernum_lbl

label define cr00a_relate_lbl 1 `"Head (male or female)"'
label define cr00a_relate_lbl 2 `"Spouse or partner"', add
label define cr00a_relate_lbl 3 `"Child or stepchild"', add
label define cr00a_relate_lbl 4 `"Son-in-law or daughter-in-law"', add
label define cr00a_relate_lbl 5 `"Grandchild"', add
label define cr00a_relate_lbl 6 `"Parent or parent-in-law"', add
label define cr00a_relate_lbl 7 `"Other relative"', add
label define cr00a_relate_lbl 8 `"Domestic servant or relative of domestic servant"', add
label define cr00a_relate_lbl 9 `"Other non-relative"', add
label values cr00a_relate cr00a_relate_lbl

label define cr00a_sex_lbl 1 `"Male"'
label define cr00a_sex_lbl 2 `"Female"', add
label values cr00a_sex cr00a_sex_lbl

label define cr00a_age_lbl 00 `"0"'
label define cr00a_age_lbl 01 `"1"', add
label define cr00a_age_lbl 02 `"2"', add
label define cr00a_age_lbl 03 `"3"', add
label define cr00a_age_lbl 04 `"4"', add
label define cr00a_age_lbl 05 `"5"', add
label define cr00a_age_lbl 06 `"6"', add
label define cr00a_age_lbl 07 `"7"', add
label define cr00a_age_lbl 08 `"8"', add
label define cr00a_age_lbl 09 `"9"', add
label define cr00a_age_lbl 10 `"10"', add
label define cr00a_age_lbl 11 `"11"', add
label define cr00a_age_lbl 12 `"12"', add
label define cr00a_age_lbl 13 `"13"', add
label define cr00a_age_lbl 14 `"14"', add
label define cr00a_age_lbl 15 `"15"', add
label define cr00a_age_lbl 16 `"16"', add
label define cr00a_age_lbl 17 `"17"', add
label define cr00a_age_lbl 18 `"18"', add
label define cr00a_age_lbl 19 `"19"', add
label define cr00a_age_lbl 20 `"20"', add
label define cr00a_age_lbl 21 `"21"', add
label define cr00a_age_lbl 22 `"22"', add
label define cr00a_age_lbl 23 `"23"', add
label define cr00a_age_lbl 24 `"24"', add
label define cr00a_age_lbl 25 `"25"', add
label define cr00a_age_lbl 26 `"26"', add
label define cr00a_age_lbl 27 `"27"', add
label define cr00a_age_lbl 28 `"28"', add
label define cr00a_age_lbl 29 `"29"', add
label define cr00a_age_lbl 30 `"30"', add
label define cr00a_age_lbl 31 `"31"', add
label define cr00a_age_lbl 32 `"32"', add
label define cr00a_age_lbl 33 `"33"', add
label define cr00a_age_lbl 34 `"34"', add
label define cr00a_age_lbl 35 `"35"', add
label define cr00a_age_lbl 36 `"36"', add
label define cr00a_age_lbl 37 `"37"', add
label define cr00a_age_lbl 38 `"38"', add
label define cr00a_age_lbl 39 `"39"', add
label define cr00a_age_lbl 40 `"40"', add
label define cr00a_age_lbl 41 `"41"', add
label define cr00a_age_lbl 42 `"42"', add
label define cr00a_age_lbl 43 `"43"', add
label define cr00a_age_lbl 44 `"44"', add
label define cr00a_age_lbl 45 `"45"', add
label define cr00a_age_lbl 46 `"46"', add
label define cr00a_age_lbl 47 `"47"', add
label define cr00a_age_lbl 48 `"48"', add
label define cr00a_age_lbl 49 `"49"', add
label define cr00a_age_lbl 50 `"50"', add
label define cr00a_age_lbl 51 `"51"', add
label define cr00a_age_lbl 52 `"52"', add
label define cr00a_age_lbl 53 `"53"', add
label define cr00a_age_lbl 54 `"54"', add
label define cr00a_age_lbl 55 `"55"', add
label define cr00a_age_lbl 56 `"56"', add
label define cr00a_age_lbl 57 `"57"', add
label define cr00a_age_lbl 58 `"58"', add
label define cr00a_age_lbl 59 `"59"', add
label define cr00a_age_lbl 60 `"60"', add
label define cr00a_age_lbl 61 `"61"', add
label define cr00a_age_lbl 62 `"62"', add
label define cr00a_age_lbl 63 `"63"', add
label define cr00a_age_lbl 64 `"64"', add
label define cr00a_age_lbl 65 `"65"', add
label define cr00a_age_lbl 66 `"66"', add
label define cr00a_age_lbl 67 `"67"', add
label define cr00a_age_lbl 68 `"68"', add
label define cr00a_age_lbl 69 `"69"', add
label define cr00a_age_lbl 70 `"70"', add
label define cr00a_age_lbl 71 `"71"', add
label define cr00a_age_lbl 72 `"72"', add
label define cr00a_age_lbl 73 `"73"', add
label define cr00a_age_lbl 74 `"74"', add
label define cr00a_age_lbl 75 `"75"', add
label define cr00a_age_lbl 76 `"76"', add
label define cr00a_age_lbl 77 `"77"', add
label define cr00a_age_lbl 78 `"78"', add
label define cr00a_age_lbl 79 `"79"', add
label define cr00a_age_lbl 80 `"80"', add
label define cr00a_age_lbl 81 `"81"', add
label define cr00a_age_lbl 82 `"82"', add
label define cr00a_age_lbl 83 `"83"', add
label define cr00a_age_lbl 84 `"84"', add
label define cr00a_age_lbl 85 `"85"', add
label define cr00a_age_lbl 86 `"86"', add
label define cr00a_age_lbl 87 `"87"', add
label define cr00a_age_lbl 88 `"88"', add
label define cr00a_age_lbl 89 `"89"', add
label define cr00a_age_lbl 90 `"90"', add
label define cr00a_age_lbl 91 `"91"', add
label define cr00a_age_lbl 92 `"92"', add
label define cr00a_age_lbl 93 `"93"', add
label define cr00a_age_lbl 94 `"94"', add
label define cr00a_age_lbl 95 `"95"', add
label define cr00a_age_lbl 96 `"96"', add
label define cr00a_age_lbl 97 `"97"', add
label define cr00a_age_lbl 98 `"98"', add
label define cr00a_age_lbl 99 `"99 +"', add
label values cr00a_age cr00a_age_lbl

label define cr00a_bplp_lbl 1 `"Same canton"'
label define cr00a_bplp_lbl 2 `"Different canton"', add
label define cr00a_bplp_lbl 3 `"Another country"', add
label values cr00a_bplp cr00a_bplp_lbl

label define cr00a_bplc_lbl 101 `"San Jose"'
label define cr00a_bplc_lbl 102 `"Escazu"', add
label define cr00a_bplc_lbl 103 `"Desamparados"', add
label define cr00a_bplc_lbl 104 `"Puriscal"', add
label define cr00a_bplc_lbl 105 `"Tarrazu"', add
label define cr00a_bplc_lbl 106 `"Aserri"', add
label define cr00a_bplc_lbl 107 `"Mora"', add
label define cr00a_bplc_lbl 108 `"Goicoechea"', add
label define cr00a_bplc_lbl 109 `"Santa Ana"', add
label define cr00a_bplc_lbl 110 `"Alajuelita"', add
label define cr00a_bplc_lbl 111 `"Vasquez De Coronado"', add
label define cr00a_bplc_lbl 112 `"Acosta"', add
label define cr00a_bplc_lbl 113 `"Tibas"', add
label define cr00a_bplc_lbl 114 `"Moravia"', add
label define cr00a_bplc_lbl 115 `"Montes De Oca"', add
label define cr00a_bplc_lbl 116 `"Turrubares"', add
label define cr00a_bplc_lbl 117 `"Dota"', add
label define cr00a_bplc_lbl 118 `"Curridabat"', add
label define cr00a_bplc_lbl 119 `"Perez Zeledon"', add
label define cr00a_bplc_lbl 120 `"Leon Cortes"', add
label define cr00a_bplc_lbl 201 `"Alajuela"', add
label define cr00a_bplc_lbl 202 `"San Ramon"', add
label define cr00a_bplc_lbl 203 `"Greece"', add
label define cr00a_bplc_lbl 204 `"San Mateo"', add
label define cr00a_bplc_lbl 205 `"Atenas"', add
label define cr00a_bplc_lbl 206 `"Naranjo"', add
label define cr00a_bplc_lbl 207 `"Palmares"', add
label define cr00a_bplc_lbl 208 `"Poas"', add
label define cr00a_bplc_lbl 209 `"Orotina"', add
label define cr00a_bplc_lbl 210 `"San Carlos"', add
label define cr00a_bplc_lbl 211 `"Alfaro Ruiz"', add
label define cr00a_bplc_lbl 212 `"Valverde Vega"', add
label define cr00a_bplc_lbl 213 `"Upala"', add
label define cr00a_bplc_lbl 214 `"Los Chiles"', add
label define cr00a_bplc_lbl 215 `"Guatuso"', add
label define cr00a_bplc_lbl 301 `"Cartago"', add
label define cr00a_bplc_lbl 302 `"Paraiso"', add
label define cr00a_bplc_lbl 303 `"La Union"', add
label define cr00a_bplc_lbl 304 `"Jimenez"', add
label define cr00a_bplc_lbl 305 `"Turrialba"', add
label define cr00a_bplc_lbl 306 `"Alvarado"', add
label define cr00a_bplc_lbl 307 `"Oreamuno"', add
label define cr00a_bplc_lbl 308 `"El Guarco"', add
label define cr00a_bplc_lbl 401 `"Heredia"', add
label define cr00a_bplc_lbl 402 `"Barva"', add
label define cr00a_bplc_lbl 403 `"Santo Domingo"', add
label define cr00a_bplc_lbl 404 `"Santa Barbara"', add
label define cr00a_bplc_lbl 405 `"San Rafael"', add
label define cr00a_bplc_lbl 406 `"San Isidro"', add
label define cr00a_bplc_lbl 407 `"Belen"', add
label define cr00a_bplc_lbl 408 `"Flores"', add
label define cr00a_bplc_lbl 409 `"San Pablo"', add
label define cr00a_bplc_lbl 410 `"Sarapiqui"', add
label define cr00a_bplc_lbl 501 `"Liberia"', add
label define cr00a_bplc_lbl 502 `"Nicoya"', add
label define cr00a_bplc_lbl 503 `"Santa Cruz"', add
label define cr00a_bplc_lbl 504 `"Bagaces"', add
label define cr00a_bplc_lbl 505 `"Carrillo"', add
label define cr00a_bplc_lbl 506 `"Cañas"', add
label define cr00a_bplc_lbl 507 `"Abangares"', add
label define cr00a_bplc_lbl 508 `"Tilaran"', add
label define cr00a_bplc_lbl 509 `"Nandayure"', add
label define cr00a_bplc_lbl 510 `"La Cruz"', add
label define cr00a_bplc_lbl 511 `"Hojancha"', add
label define cr00a_bplc_lbl 601 `"Puntarenas"', add
label define cr00a_bplc_lbl 602 `"Esparza"', add
label define cr00a_bplc_lbl 603 `"Buenos Aires"', add
label define cr00a_bplc_lbl 604 `"Montes De Oro"', add
label define cr00a_bplc_lbl 605 `"Osa"', add
label define cr00a_bplc_lbl 606 `"Aguirre"', add
label define cr00a_bplc_lbl 607 `"Golfito"', add
label define cr00a_bplc_lbl 608 `"Coto Brus"', add
label define cr00a_bplc_lbl 609 `"Parrita"', add
label define cr00a_bplc_lbl 610 `"Corredores"', add
label define cr00a_bplc_lbl 611 `"Garabito"', add
label define cr00a_bplc_lbl 701 `"Limon"', add
label define cr00a_bplc_lbl 702 `"Pococi"', add
label define cr00a_bplc_lbl 703 `"Siquirres"', add
label define cr00a_bplc_lbl 704 `"Talamanca"', add
label define cr00a_bplc_lbl 705 `"Matina"', add
label define cr00a_bplc_lbl 706 `"Guacimo"', add
label define cr00a_bplc_lbl 715 `"Canada"', add
label define cr00a_bplc_lbl 716 `"United States"', add
label define cr00a_bplc_lbl 717 `"Mexico"', add
label define cr00a_bplc_lbl 720 `"El Salvador"', add
label define cr00a_bplc_lbl 721 `"Guatemala"', add
label define cr00a_bplc_lbl 722 `"Honduras"', add
label define cr00a_bplc_lbl 723 `"Nicaragua"', add
label define cr00a_bplc_lbl 724 `"Panama"', add
label define cr00a_bplc_lbl 733 `"Cuba"', add
label define cr00a_bplc_lbl 741 `"Puerto Rico"', add
label define cr00a_bplc_lbl 742 `"Dominican Republic"', add
label define cr00a_bplc_lbl 749 `"Argentina"', add
label define cr00a_bplc_lbl 751 `"Brazil"', add
label define cr00a_bplc_lbl 752 `"Chile"', add
label define cr00a_bplc_lbl 753 `"Colombia"', add
label define cr00a_bplc_lbl 754 `"Ecuador"', add
label define cr00a_bplc_lbl 759 `"Peru"', add
label define cr00a_bplc_lbl 762 `"Venezuela"', add
label define cr00a_bplc_lbl 766 `"Spain"', add
label define cr00a_bplc_lbl 768 `"France"', add
label define cr00a_bplc_lbl 772 `"Netherlands"', add
label define cr00a_bplc_lbl 777 `"United Kingdom"', add
label define cr00a_bplc_lbl 785 `"Germany"', add
label define cr00a_bplc_lbl 793 `"Switzerland"', add
label define cr00a_bplc_lbl 794 `"Italy"', add
label define cr00a_bplc_lbl 817 `"Russia (Russian Federation)"', add
label define cr00a_bplc_lbl 861 `"China (Hong Kong)"', add
label define cr00a_bplc_lbl 865 `"Taiwan"', add
label define cr00a_bplc_lbl 999 `"Response suppressed"', add
label values cr00a_bplc cr00a_bplc_lbl

label define cr00a_arryr_lbl 0000 `"NIU (not in universe)"'
label define cr00a_arryr_lbl 1929 `"1929 or earlier"', add
label define cr00a_arryr_lbl 1930 `"1930"', add
label define cr00a_arryr_lbl 1931 `"1931"', add
label define cr00a_arryr_lbl 1932 `"1932"', add
label define cr00a_arryr_lbl 1933 `"1933"', add
label define cr00a_arryr_lbl 1934 `"1934"', add
label define cr00a_arryr_lbl 1935 `"1935"', add
label define cr00a_arryr_lbl 1936 `"1936"', add
label define cr00a_arryr_lbl 1937 `"1937"', add
label define cr00a_arryr_lbl 1938 `"1938"', add
label define cr00a_arryr_lbl 1939 `"1939"', add
label define cr00a_arryr_lbl 1940 `"1940"', add
label define cr00a_arryr_lbl 1941 `"1941"', add
label define cr00a_arryr_lbl 1942 `"1942"', add
label define cr00a_arryr_lbl 1943 `"1943"', add
label define cr00a_arryr_lbl 1944 `"1944"', add
label define cr00a_arryr_lbl 1945 `"1945"', add
label define cr00a_arryr_lbl 1946 `"1946"', add
label define cr00a_arryr_lbl 1947 `"1947"', add
label define cr00a_arryr_lbl 1948 `"1948"', add
label define cr00a_arryr_lbl 1949 `"1949"', add
label define cr00a_arryr_lbl 1950 `"1950"', add
label define cr00a_arryr_lbl 1951 `"1951"', add
label define cr00a_arryr_lbl 1952 `"1952"', add
label define cr00a_arryr_lbl 1953 `"1953"', add
label define cr00a_arryr_lbl 1954 `"1954"', add
label define cr00a_arryr_lbl 1955 `"1955"', add
label define cr00a_arryr_lbl 1956 `"1956"', add
label define cr00a_arryr_lbl 1957 `"1957"', add
label define cr00a_arryr_lbl 1958 `"1958"', add
label define cr00a_arryr_lbl 1959 `"1959"', add
label define cr00a_arryr_lbl 1960 `"1960"', add
label define cr00a_arryr_lbl 1961 `"1961"', add
label define cr00a_arryr_lbl 1962 `"1962"', add
label define cr00a_arryr_lbl 1963 `"1963"', add
label define cr00a_arryr_lbl 1964 `"1964"', add
label define cr00a_arryr_lbl 1965 `"1965"', add
label define cr00a_arryr_lbl 1966 `"1966"', add
label define cr00a_arryr_lbl 1967 `"1967"', add
label define cr00a_arryr_lbl 1968 `"1968"', add
label define cr00a_arryr_lbl 1969 `"1969"', add
label define cr00a_arryr_lbl 1970 `"1970"', add
label define cr00a_arryr_lbl 1971 `"1971"', add
label define cr00a_arryr_lbl 1972 `"1972"', add
label define cr00a_arryr_lbl 1973 `"1973"', add
label define cr00a_arryr_lbl 1974 `"1974"', add
label define cr00a_arryr_lbl 1975 `"1975"', add
label define cr00a_arryr_lbl 1976 `"1976"', add
label define cr00a_arryr_lbl 1977 `"1977"', add
label define cr00a_arryr_lbl 1978 `"1978"', add
label define cr00a_arryr_lbl 1979 `"1979"', add
label define cr00a_arryr_lbl 1980 `"1980"', add
label define cr00a_arryr_lbl 1981 `"1981"', add
label define cr00a_arryr_lbl 1982 `"1982"', add
label define cr00a_arryr_lbl 1983 `"1983"', add
label define cr00a_arryr_lbl 1984 `"1984"', add
label define cr00a_arryr_lbl 1985 `"1985"', add
label define cr00a_arryr_lbl 1986 `"1986"', add
label define cr00a_arryr_lbl 1987 `"1987"', add
label define cr00a_arryr_lbl 1988 `"1988"', add
label define cr00a_arryr_lbl 1989 `"1989"', add
label define cr00a_arryr_lbl 1990 `"1990"', add
label define cr00a_arryr_lbl 1991 `"1991"', add
label define cr00a_arryr_lbl 1992 `"1992"', add
label define cr00a_arryr_lbl 1993 `"1993"', add
label define cr00a_arryr_lbl 1994 `"1994"', add
label define cr00a_arryr_lbl 1995 `"1995"', add
label define cr00a_arryr_lbl 1996 `"1996"', add
label define cr00a_arryr_lbl 1997 `"1997"', add
label define cr00a_arryr_lbl 1998 `"1998"', add
label define cr00a_arryr_lbl 1999 `"1999"', add
label define cr00a_arryr_lbl 2000 `"2000"', add
label define cr00a_arryr_lbl 9999 `"Unknown"', add
label values cr00a_arryr cr00a_arryr_lbl

label define cr00a_nation_lbl 1 `"Costa Rican by birth"'
label define cr00a_nation_lbl 2 `"Costa Rican by naturalization"', add
label define cr00a_nation_lbl 3 `"Not a Costa Rican citizen"', add
label values cr00a_nation cr00a_nation_lbl

label define cr00a_citiz_lbl 000 `"NIU (not in universe)"'
label define cr00a_citiz_lbl 715 `"Canada"', add
label define cr00a_citiz_lbl 716 `"United States"', add
label define cr00a_citiz_lbl 717 `"Mexico"', add
label define cr00a_citiz_lbl 720 `"El Salvador"', add
label define cr00a_citiz_lbl 721 `"Guatemala"', add
label define cr00a_citiz_lbl 722 `"Honduras"', add
label define cr00a_citiz_lbl 723 `"Nicaragua"', add
label define cr00a_citiz_lbl 724 `"Panama"', add
label define cr00a_citiz_lbl 733 `"Cuba"', add
label define cr00a_citiz_lbl 742 `"Dominican Republic"', add
label define cr00a_citiz_lbl 749 `"Argentina"', add
label define cr00a_citiz_lbl 751 `"Brazil"', add
label define cr00a_citiz_lbl 752 `"Chile"', add
label define cr00a_citiz_lbl 753 `"Colombia"', add
label define cr00a_citiz_lbl 754 `"Ecuador"', add
label define cr00a_citiz_lbl 759 `"Peru"', add
label define cr00a_citiz_lbl 762 `"Venezuela"', add
label define cr00a_citiz_lbl 766 `"Spain"', add
label define cr00a_citiz_lbl 768 `"France"', add
label define cr00a_citiz_lbl 772 `"Netherlands"', add
label define cr00a_citiz_lbl 777 `"United Kingdom"', add
label define cr00a_citiz_lbl 785 `"Germany"', add
label define cr00a_citiz_lbl 793 `"Switzerland"', add
label define cr00a_citiz_lbl 794 `"Italy"', add
label define cr00a_citiz_lbl 817 `"Russia (Russian Federation)"', add
label define cr00a_citiz_lbl 861 `"China (Hong Kong)"', add
label define cr00a_citiz_lbl 865 `"Taiwan"', add
label define cr00a_citiz_lbl 999 `"Response suppressed"', add
label values cr00a_citiz cr00a_citiz_lbl

label define cr00a_ethnic_lbl 1 `"Indigenous"'
label define cr00a_ethnic_lbl 2 `"Black or Afrocostarican"', add
label define cr00a_ethnic_lbl 3 `"Asian"', add
label define cr00a_ethnic_lbl 4 `"None of the above"', add
label define cr00a_ethnic_lbl 9 `"Unknown"', add
label values cr00a_ethnic cr00a_ethnic_lbl

label define cr00a_indig_lbl 0 `"NIU (not in universe)"'
label define cr00a_indig_lbl 1 `"Bribri"', add
label define cr00a_indig_lbl 2 `"Boruca or Brunca"', add
label define cr00a_indig_lbl 3 `"Cabécar"', add
label define cr00a_indig_lbl 4 `"Chorotega"', add
label define cr00a_indig_lbl 5 `"Guaymí (Ngöbe or Sabanero)"', add
label define cr00a_indig_lbl 6 `"Maleku or Guatuso"', add
label define cr00a_indig_lbl 7 `"Teribe or Térraba"', add
label define cr00a_indig_lbl 8 `"Huetar and other indigenous"', add
label values cr00a_indig cr00a_indig_lbl

label define cr00a_indigsp_lbl 0 `"NIU (not in universe)"'
label define cr00a_indigsp_lbl 1 `"Yes"', add
label define cr00a_indigsp_lbl 2 `"No"', add
label define cr00a_indigsp_lbl 9 `"Unknown"', add
label values cr00a_indigsp cr00a_indigsp_lbl

label define cr00a_lang_lbl 0 `"NIU (not in universe)"'
label define cr00a_lang_lbl 1 `"Indigenous language"', add
label define cr00a_lang_lbl 2 `"Only Spanish"', add
label define cr00a_lang_lbl 3 `"Other language"', add
label define cr00a_lang_lbl 9 `"Unknown"', add
label values cr00a_lang cr00a_lang_lbl

label define cr00a_socsec_lbl 1 `"Salaried worker"'
label define cr00a_socsec_lbl 2 `"Own-account or by contract"', add
label define cr00a_socsec_lbl 3 `"Pensioner"', add
label define cr00a_socsec_lbl 4 `"Family worker"', add
label define cr00a_socsec_lbl 5 `"State employee"', add
label define cr00a_socsec_lbl 6 `"Other"', add
label define cr00a_socsec_lbl 7 `"None"', add
label values cr00a_socsec cr00a_socsec_lbl

label define cr00a_disab_lbl 1 `"Total or partial blindness"'
label define cr00a_disab_lbl 2 `"Total or partial deafness"', add
label define cr00a_disab_lbl 3 `"Mental disability"', add
label define cr00a_disab_lbl 4 `"Paralysis, amputation"', add
label define cr00a_disab_lbl 5 `"Mental illness"', add
label define cr00a_disab_lbl 6 `"Other"', add
label define cr00a_disab_lbl 7 `"None"', add
label define cr00a_disab_lbl 9 `"Unknown"', add
label values cr00a_disab cr00a_disab_lbl

label define cr00a_res5plc_lbl 0 `"NIU (not in universe)"'
label define cr00a_res5plc_lbl 1 `"In this canton"', add
label define cr00a_res5plc_lbl 2 `"In another canton"', add
label define cr00a_res5plc_lbl 3 `"In another country"', add
label values cr00a_res5plc cr00a_res5plc_lbl

label define cr00a_res5cant_lbl 000 `"NIU (not in universe)"'
label define cr00a_res5cant_lbl 101 `"San Jose"', add
label define cr00a_res5cant_lbl 102 `"Escazu"', add
label define cr00a_res5cant_lbl 103 `"Desamparados"', add
label define cr00a_res5cant_lbl 104 `"Puriscal"', add
label define cr00a_res5cant_lbl 105 `"Tarrazu"', add
label define cr00a_res5cant_lbl 106 `"Aserri"', add
label define cr00a_res5cant_lbl 107 `"Mora"', add
label define cr00a_res5cant_lbl 108 `"Goicoechea"', add
label define cr00a_res5cant_lbl 109 `"Santa Ana"', add
label define cr00a_res5cant_lbl 110 `"Alajuelita"', add
label define cr00a_res5cant_lbl 111 `"Vasquez De Coronado"', add
label define cr00a_res5cant_lbl 112 `"Acosta"', add
label define cr00a_res5cant_lbl 113 `"Tibas"', add
label define cr00a_res5cant_lbl 114 `"Moravia"', add
label define cr00a_res5cant_lbl 115 `"Montes De Oca"', add
label define cr00a_res5cant_lbl 116 `"Turrubares"', add
label define cr00a_res5cant_lbl 117 `"Dota"', add
label define cr00a_res5cant_lbl 118 `"Curridabat"', add
label define cr00a_res5cant_lbl 119 `"Perez Zeledon"', add
label define cr00a_res5cant_lbl 120 `"Leon Cortes"', add
label define cr00a_res5cant_lbl 201 `"Alajuela"', add
label define cr00a_res5cant_lbl 202 `"San Ramon"', add
label define cr00a_res5cant_lbl 203 `"Greece"', add
label define cr00a_res5cant_lbl 204 `"San Mateo"', add
label define cr00a_res5cant_lbl 205 `"Atenas"', add
label define cr00a_res5cant_lbl 206 `"Naranjo"', add
label define cr00a_res5cant_lbl 207 `"Palmares"', add
label define cr00a_res5cant_lbl 208 `"Poas"', add
label define cr00a_res5cant_lbl 209 `"Orotina"', add
label define cr00a_res5cant_lbl 210 `"San Carlos"', add
label define cr00a_res5cant_lbl 211 `"Alfaro Ruiz"', add
label define cr00a_res5cant_lbl 212 `"Valverde Vega"', add
label define cr00a_res5cant_lbl 213 `"Upala"', add
label define cr00a_res5cant_lbl 214 `"Los Chiles"', add
label define cr00a_res5cant_lbl 215 `"Guatuso"', add
label define cr00a_res5cant_lbl 301 `"Cartago"', add
label define cr00a_res5cant_lbl 302 `"Paraiso"', add
label define cr00a_res5cant_lbl 303 `"La Union"', add
label define cr00a_res5cant_lbl 304 `"Jimenez"', add
label define cr00a_res5cant_lbl 305 `"Turrialba"', add
label define cr00a_res5cant_lbl 306 `"Alvarado"', add
label define cr00a_res5cant_lbl 307 `"Oreamuno"', add
label define cr00a_res5cant_lbl 308 `"El Guarco"', add
label define cr00a_res5cant_lbl 401 `"Heredia"', add
label define cr00a_res5cant_lbl 402 `"Barva"', add
label define cr00a_res5cant_lbl 403 `"Santo Domingo"', add
label define cr00a_res5cant_lbl 404 `"Santa Barbara"', add
label define cr00a_res5cant_lbl 405 `"San Rafael"', add
label define cr00a_res5cant_lbl 406 `"San Isidro"', add
label define cr00a_res5cant_lbl 407 `"Belen"', add
label define cr00a_res5cant_lbl 408 `"Flores"', add
label define cr00a_res5cant_lbl 409 `"San Pablo"', add
label define cr00a_res5cant_lbl 410 `"Sarapiqui"', add
label define cr00a_res5cant_lbl 501 `"Liberia"', add
label define cr00a_res5cant_lbl 502 `"Nicoya"', add
label define cr00a_res5cant_lbl 503 `"Santa Cruz"', add
label define cr00a_res5cant_lbl 504 `"Bagaces"', add
label define cr00a_res5cant_lbl 505 `"Carrillo"', add
label define cr00a_res5cant_lbl 506 `"Cañas"', add
label define cr00a_res5cant_lbl 507 `"Abangares"', add
label define cr00a_res5cant_lbl 508 `"Tilaran"', add
label define cr00a_res5cant_lbl 509 `"Nandayure"', add
label define cr00a_res5cant_lbl 510 `"La Cruz"', add
label define cr00a_res5cant_lbl 511 `"Hojancha"', add
label define cr00a_res5cant_lbl 601 `"Puntarenas"', add
label define cr00a_res5cant_lbl 602 `"Esparza"', add
label define cr00a_res5cant_lbl 603 `"Buenos Aires"', add
label define cr00a_res5cant_lbl 604 `"Montes De Oro"', add
label define cr00a_res5cant_lbl 605 `"Osa"', add
label define cr00a_res5cant_lbl 606 `"Aguirre"', add
label define cr00a_res5cant_lbl 607 `"Golfito"', add
label define cr00a_res5cant_lbl 608 `"Coto Brus"', add
label define cr00a_res5cant_lbl 609 `"Parrita"', add
label define cr00a_res5cant_lbl 610 `"Corredores"', add
label define cr00a_res5cant_lbl 611 `"Garabito"', add
label define cr00a_res5cant_lbl 701 `"Limon"', add
label define cr00a_res5cant_lbl 702 `"Pococi"', add
label define cr00a_res5cant_lbl 703 `"Siquirres"', add
label define cr00a_res5cant_lbl 704 `"Talamanca"', add
label define cr00a_res5cant_lbl 705 `"Matina"', add
label define cr00a_res5cant_lbl 706 `"Guacimo"', add
label define cr00a_res5cant_lbl 715 `"Canada"', add
label define cr00a_res5cant_lbl 716 `"United States"', add
label define cr00a_res5cant_lbl 717 `"Mexico"', add
label define cr00a_res5cant_lbl 720 `"El Salvador"', add
label define cr00a_res5cant_lbl 721 `"Guatemala"', add
label define cr00a_res5cant_lbl 722 `"Honduras"', add
label define cr00a_res5cant_lbl 723 `"Nicaragua"', add
label define cr00a_res5cant_lbl 724 `"Panama"', add
label define cr00a_res5cant_lbl 733 `"Cuba"', add
label define cr00a_res5cant_lbl 741 `"Puerto Rico"', add
label define cr00a_res5cant_lbl 742 `"Dominican Republic"', add
label define cr00a_res5cant_lbl 749 `"Argentina"', add
label define cr00a_res5cant_lbl 751 `"Brazil"', add
label define cr00a_res5cant_lbl 753 `"Colombia"', add
label define cr00a_res5cant_lbl 754 `"Ecuador"', add
label define cr00a_res5cant_lbl 759 `"Peru"', add
label define cr00a_res5cant_lbl 762 `"Venezuela"', add
label define cr00a_res5cant_lbl 766 `"Spain"', add
label define cr00a_res5cant_lbl 768 `"France"', add
label define cr00a_res5cant_lbl 785 `"Germany"', add
label define cr00a_res5cant_lbl 793 `"Switzerland"', add
label define cr00a_res5cant_lbl 794 `"Italy"', add
label define cr00a_res5cant_lbl 861 `"China (Hong Kong)"', add
label define cr00a_res5cant_lbl 865 `"Taiwan"', add
label define cr00a_res5cant_lbl 999 `"Response suppressed"', add
label values cr00a_res5cant cr00a_res5cant_lbl

label define cr00a_school_lbl 0 `"NIU (not in universe)"'
label define cr00a_school_lbl 1 `"Yes"', add
label define cr00a_school_lbl 2 `"No"', add
label values cr00a_school cr00a_school_lbl

label define cr00a_grade_lbl 00 `"None"'
label define cr00a_grade_lbl 11 `"Kindergarten"', add
label define cr00a_grade_lbl 21 `"Primary, 1st grade"', add
label define cr00a_grade_lbl 22 `"Primary, 2nd grade"', add
label define cr00a_grade_lbl 23 `"Primary, 3rd grade"', add
label define cr00a_grade_lbl 24 `"Primary, 4th grade"', add
label define cr00a_grade_lbl 25 `"Primary, 5th grade"', add
label define cr00a_grade_lbl 26 `"Primary, 6th grade"', add
label define cr00a_grade_lbl 31 `"Secondary Academic, 1st year"', add
label define cr00a_grade_lbl 32 `"Secondary Academic, 2nd year"', add
label define cr00a_grade_lbl 33 `"Secondary Academic, 3rd year"', add
label define cr00a_grade_lbl 34 `"Secondary Academic, 4th year"', add
label define cr00a_grade_lbl 35 `"Secondary Academic, 5th year"', add
label define cr00a_grade_lbl 41 `"Secondary Technical, 1st year"', add
label define cr00a_grade_lbl 42 `"Secondary Technical, 2nd year"', add
label define cr00a_grade_lbl 43 `"Secondary Technical, 3rd year"', add
label define cr00a_grade_lbl 44 `"Secondary Technical, 4th year"', add
label define cr00a_grade_lbl 45 `"Secondary Technical, 5th year"', add
label define cr00a_grade_lbl 46 `"Secondary Technical, 6th year"', add
label define cr00a_grade_lbl 51 `"Technical college, 1st year"', add
label define cr00a_grade_lbl 52 `"Technical college, 2nd year"', add
label define cr00a_grade_lbl 53 `"Technical college, 3rd year"', add
label define cr00a_grade_lbl 61 `"University, 1st year"', add
label define cr00a_grade_lbl 62 `"University, 2nd year"', add
label define cr00a_grade_lbl 63 `"University, 3rd year"', add
label define cr00a_grade_lbl 64 `"University, 4th year"', add
label define cr00a_grade_lbl 65 `"University, 5th year"', add
label define cr00a_grade_lbl 66 `"University, 6th year"', add
label define cr00a_grade_lbl 67 `"University, 7th year"', add
label define cr00a_grade_lbl 68 `"University, 8th year"', add
label define cr00a_grade_lbl 99 `"NIU (not in universe)"', add
label values cr00a_grade cr00a_grade_lbl

label define cr00a_edattain_lbl 0 `"None"'
label define cr00a_edattain_lbl 1 `"Kindergarten"', add
label define cr00a_edattain_lbl 2 `"Primary"', add
label define cr00a_edattain_lbl 3 `"Secondary academic"', add
label define cr00a_edattain_lbl 4 `"Secondary vocational/technical"', add
label define cr00a_edattain_lbl 5 `"Technical college"', add
label define cr00a_edattain_lbl 6 `"University"', add
label define cr00a_edattain_lbl 9 `"NIU (not in universe)"', add
label values cr00a_edattain cr00a_edattain_lbl

label define cr00a_lit_lbl 0 `"NIU (not in universe)"'
label define cr00a_lit_lbl 1 `"Yes"', add
label define cr00a_lit_lbl 2 `"No"', add
label values cr00a_lit cr00a_lit_lbl

label define cr00a_marst_lbl 0 `"NIU (not in universe)"'
label define cr00a_marst_lbl 1 `"Consensual union"', add
label define cr00a_marst_lbl 2 `"Married"', add
label define cr00a_marst_lbl 3 `"Separated"', add
label define cr00a_marst_lbl 4 `"Divorced"', add
label define cr00a_marst_lbl 5 `"Widowed"', add
label define cr00a_marst_lbl 6 `"Single"', add
label values cr00a_marst cr00a_marst_lbl

label define cr00a_empstat_lbl 0 `"NIU (not in universe)"'
label define cr00a_empstat_lbl 1 `"Employed"', add
label define cr00a_empstat_lbl 2 `"Employed, not paid"', add
label define cr00a_empstat_lbl 3 `"Did not work but was employed"', add
label define cr00a_empstat_lbl 4 `"Looked for work having worked before"', add
label define cr00a_empstat_lbl 5 `"Looked for work for the first time"', add
label define cr00a_empstat_lbl 6 `"Pensioner/rentier"', add
label define cr00a_empstat_lbl 7 `"Studying and did not work"', add
label define cr00a_empstat_lbl 8 `"Household duties"', add
label define cr00a_empstat_lbl 9 `"Other"', add
label values cr00a_empstat cr00a_empstat_lbl

label define cr00a_sector_lbl 0 `"NIU (not in universe)"'
label define cr00a_sector_lbl 1 `"Federal government"', add
label define cr00a_sector_lbl 2 `"Autonomous service institution"', add
label define cr00a_sector_lbl 3 `"Autonomous financial institution"', add
label define cr00a_sector_lbl 4 `"Autonomous not financial institution"', add
label define cr00a_sector_lbl 5 `"Public company"', add
label define cr00a_sector_lbl 6 `"Municipalities"', add
label define cr00a_sector_lbl 7 `"Private sector"', add
label define cr00a_sector_lbl 8 `"International organizations"', add
label values cr00a_sector cr00a_sector_lbl

label define cr00a_ind2_lbl 00 `"NIU (not in universe)"'
label define cr00a_ind2_lbl 01 `"Agriculture, cattle ranching, hunting, and related service industries"', add
label define cr00a_ind2_lbl 02 `"Forestry, wood extraction, and related service industries"', add
label define cr00a_ind2_lbl 05 `"Fishery, fish raising and fish farming, related service industries"', add
label define cr00a_ind2_lbl 10 `"Coal and lignite mining, peat extraction"', add
label define cr00a_ind2_lbl 12 `"Uranium and thorium minerals extraction"', add
label define cr00a_ind2_lbl 13 `"Metal mineral extraction"', add
label define cr00a_ind2_lbl 14 `"Other mining and quarries industries"', add
label define cr00a_ind2_lbl 15 `"Elaboration of food and beverage products"', add
label define cr00a_ind2_lbl 16 `"Elaboration of tobacco products"', add
label define cr00a_ind2_lbl 17 `"Elaboration of textile products"', add
label define cr00a_ind2_lbl 18 `"Manufacture of clothing;  tanning and leather industry"', add
label define cr00a_ind2_lbl 19 `"Tanning and preparing leather; Manufacture of suitcases, handbags, leather goods and accessories, and footwear"', add
label define cr00a_ind2_lbl 20 `"Wood production and wood and cork product manufacture, except furniture; manufacture of straw products and other woven products"', add
label define cr00a_ind2_lbl 21 `"Manufacture of paper and paper products"', add
label define cr00a_ind2_lbl 22 `"Editing and printing activities; recording reproduction"', add
label define cr00a_ind2_lbl 24 `"Chemical and Chemical products manufacture"', add
label define cr00a_ind2_lbl 25 `"Manufacture of plastic and cork products"', add
label define cr00a_ind2_lbl 26 `"Mineral (non-metallic) products manufacture"', add
label define cr00a_ind2_lbl 27 `"Manufacture of basic metals"', add
label define cr00a_ind2_lbl 28 `"Manufacture of metal products, except machines and equipment"', add
label define cr00a_ind2_lbl 29 `"Manufacture of machinery and equipment not listed elsewhere"', add
label define cr00a_ind2_lbl 31 `"Manufacture of machinery and electrical appliances not listed elsewhere"', add
label define cr00a_ind2_lbl 32 `"Manufacture of equipment and appliances for radio, television, and communications"', add
label define cr00a_ind2_lbl 33 `"Manufacture of medical, optical, and precision instruments, and manufacture of clocks and watches"', add
label define cr00a_ind2_lbl 34 `"Manufacture of automobiles, tow trucks and truck towers"', add
label define cr00a_ind2_lbl 35 `"Manufacture of other types of transportation equipment"', add
label define cr00a_ind2_lbl 36 `"Manufacture of furniture; manufacturing industries not listed elsewhere"', add
label define cr00a_ind2_lbl 37 `"Recycling"', add
label define cr00a_ind2_lbl 40 `"Distribution of electricity, gas, steam, and hot water"', add
label define cr00a_ind2_lbl 41 `"Water collection, purification and distribution"', add
label define cr00a_ind2_lbl 45 `"Construction"', add
label define cr00a_ind2_lbl 50 `"Automobile and motorcycle sales, maintenance and repair; retail sales of automobile fuel"', add
label define cr00a_ind2_lbl 51 `"Wholesale and commission commerce, except automobiles and motorcycles"', add
label define cr00a_ind2_lbl 52 `"Retail commerce, except automobile and motorcycles, repairing personal goods and household goods"', add
label define cr00a_ind2_lbl 55 `"Hotels and restaurants"', add
label define cr00a_ind2_lbl 60 `"Land transportation, pipe transportation"', add
label define cr00a_ind2_lbl 61 `"Transportation via aqueduct"', add
label define cr00a_ind2_lbl 62 `"Air transportation"', add
label define cr00a_ind2_lbl 63 `"Transportation support and secondary services; travel agencies"', add
label define cr00a_ind2_lbl 64 `"Mail and telecommunications"', add
label define cr00a_ind2_lbl 65 `"Financial institutions, except financing insurance and retirement plans"', add
label define cr00a_ind2_lbl 66 `"Insurance and pension plans, except obligatory enrollment plans"', add
label define cr00a_ind2_lbl 67 `"Secondary activities for financial institutions"', add
label define cr00a_ind2_lbl 70 `"Real estate commercial activities"', add
label define cr00a_ind2_lbl 71 `"Rental of machinery and machinery without operators; rental of personal effect and domestic items"', add
label define cr00a_ind2_lbl 72 `"Data management and related activities"', add
label define cr00a_ind2_lbl 73 `"Research and development"', add
label define cr00a_ind2_lbl 74 `"Other business activities"', add
label define cr00a_ind2_lbl 75 `"Public Administration and defense; obligatory enrollment social security service"', add
label define cr00a_ind2_lbl 80 `"Education"', add
label define cr00a_ind2_lbl 85 `"Social and health services"', add
label define cr00a_ind2_lbl 90 `"Waste removal, sewage, sanitary, and related services"', add
label define cr00a_ind2_lbl 91 `"Other associated services not listed elsewhere"', add
label define cr00a_ind2_lbl 92 `"Entertainment, recreation, cultural, and sports services"', add
label define cr00a_ind2_lbl 93 `"Other service activities"', add
label define cr00a_ind2_lbl 95 `"Personal household services"', add
label define cr00a_ind2_lbl 99 `"International and extraterritorial organizations or Response suppressed"', add
label values cr00a_ind2 cr00a_ind2_lbl

label define cr00a_ind3_lbl 000 `"NIU (not in universe)"'
label define cr00a_ind3_lbl 011 `"General agricultural production; commercial crop growing, horticulture"', add
label define cr00a_ind3_lbl 012 `"Animal breeding"', add
label define cr00a_ind3_lbl 013 `"Crop production in combination with animal breeding (mixed usage)"', add
label define cr00a_ind3_lbl 014 `"Agricultural and cattle service activities, except veterinary services"', add
label define cr00a_ind3_lbl 016 `"Agriculture, cattle, ranching, hunting, and related services n.e.c."', add
label define cr00a_ind3_lbl 020 `"Forestry, lumber extraction and related service activities"', add
label define cr00a_ind3_lbl 050 `"Fishing, fish breeding and farming; service activities related to fishing"', add
label define cr00a_ind3_lbl 132 `"Non-iron metal mining"', add
label define cr00a_ind3_lbl 141 `"Rock, stone, and sand quarrying"', add
label define cr00a_ind3_lbl 142 `"Mining and quarrying, not listed elsewhere"', add
label define cr00a_ind3_lbl 151 `"Production, processing and conservation of meat, fish, fruits, vegetables, oils, and fats"', add
label define cr00a_ind3_lbl 152 `"Elaboration of dairy goods"', add
label define cr00a_ind3_lbl 153 `"Elaboration of ground flours, starches, and starch-based products, and animal feeds"', add
label define cr00a_ind3_lbl 154 `"Elaboration of other food items"', add
label define cr00a_ind3_lbl 155 `"Elaboration of beverages"', add
label define cr00a_ind3_lbl 160 `"Elaboration of tobacco products"', add
label define cr00a_ind3_lbl 171 `"Sewing, weaving, and finishing textile products"', add
label define cr00a_ind3_lbl 172 `"Manufacture of other textile products"', add
label define cr00a_ind3_lbl 173 `"Manufacture of knits and articles that are knit or crocheted"', add
label define cr00a_ind3_lbl 181 `"Manufacture of clothing, except leather clothing"', add
label define cr00a_ind3_lbl 191 `"Leather preparing and dying; manufacture of suitcases, handbags, leather equipment and straps"', add
label define cr00a_ind3_lbl 192 `"Manufacture of footwear"', add
label define cr00a_ind3_lbl 201 `"Cutting and finishing lumber"', add
label define cr00a_ind3_lbl 202 `"Manufacture of wood and cork products, and goods made out of straw and other materials that can be woven"', add
label define cr00a_ind3_lbl 210 `"Manufacture of paper and paper products"', add
label define cr00a_ind3_lbl 221 `"Editing activities"', add
label define cr00a_ind3_lbl 222 `"Printing and related service activities"', add
label define cr00a_ind3_lbl 241 `"Manufacture of basic chemical products"', add
label define cr00a_ind3_lbl 242 `"Manufacture of chemical products not listed elsewhere"', add
label define cr00a_ind3_lbl 251 `"Manufacture of rubber products"', add
label define cr00a_ind3_lbl 252 `"Manufacture of plastic products"', add
label define cr00a_ind3_lbl 261 `"Manufacture of glass and glass products"', add
label define cr00a_ind3_lbl 269 `"Manufacture of non-metal mineral products not listed elsewhere"', add
label define cr00a_ind3_lbl 271 `"Basic iron and steel industries"', add
label define cr00a_ind3_lbl 273 `"Metal foundry"', add
label define cr00a_ind3_lbl 281 `"Manufacture of products made of metal for structural use, vapor tanks, deposits, and generators"', add
label define cr00a_ind3_lbl 289 `"Manufacture of other metal products; service activities related to metal works"', add
label define cr00a_ind3_lbl 291 `"Manufacture of general use machinery"', add
label define cr00a_ind3_lbl 292 `"Manufacture of specialized machinery"', add
label define cr00a_ind3_lbl 293 `"Manufacture of household appliances not listed elsewhere"', add
label define cr00a_ind3_lbl 312 `"Manufacture of appliances for distribution and control"', add
label define cr00a_ind3_lbl 313 `"Manufacture of insulated wires and cables"', add
label define cr00a_ind3_lbl 314 `"Manufacture of multi-celled and basic batteries"', add
label define cr00a_ind3_lbl 315 `"Manufacture of electrical lamps and lighting equipment"', add
label define cr00a_ind3_lbl 319 `"Manufacture of electrical appliances not listed elsewhere"', add
label define cr00a_ind3_lbl 321 `"Manufacture of electronic tubes and valves and other electronic components"', add
label define cr00a_ind3_lbl 322 `"Manufacture of radio and television transmitters and of appliances for cabled telephones and telegraphs"', add
label define cr00a_ind3_lbl 331 `"Manufacture of medical instruments and equipment, and instruments for measurement, navigation, control and others, except optical equipment"', add
label define cr00a_ind3_lbl 332 `"Manufacture of optical instruments and equipment"', add
label define cr00a_ind3_lbl 343 `"Manufacture of parts, pieces, and accessories for automobiles and automobile engines"', add
label define cr00a_ind3_lbl 351 `"Construction and repair of ships and other types of boating"', add
label define cr00a_ind3_lbl 353 `"Manufacture of airplanes and special planes"', add
label define cr00a_ind3_lbl 361 `"Manufacture of furniture"', add
label define cr00a_ind3_lbl 369 `"Manufacturing industries not listed elsewhere"', add
label define cr00a_ind3_lbl 372 `"Recycling of non-metallic waste materials"', add
label define cr00a_ind3_lbl 401 `"Generation, storage, and distribution of electricity"', add
label define cr00a_ind3_lbl 402 `"Production of natural gas; Production and distribution of gas fuels through pipes"', add
label define cr00a_ind3_lbl 410 `"Intake, purification and distribution of water"', add
label define cr00a_ind3_lbl 451 `"Land preparation"', add
label define cr00a_ind3_lbl 452 `"Construction of buildings, parts of buildings, or infrastructure"', add
label define cr00a_ind3_lbl 453 `"Fitting buildings"', add
label define cr00a_ind3_lbl 454 `"Finishing buildings"', add
label define cr00a_ind3_lbl 501 `"Sales of automobiles"', add
label define cr00a_ind3_lbl 502 `"Maintenance and repair of automobiles"', add
label define cr00a_ind3_lbl 503 `"Sales of parts, pieces and accessories of automobiles"', add
label define cr00a_ind3_lbl 504 `"Sales maintenance, and repairs of motorcycles and of parts, pieces and accessories of motorcycles"', add
label define cr00a_ind3_lbl 505 `"Retail sale of automobile fuel"', add
label define cr00a_ind3_lbl 510 `"Wholesale and commission sales, except automobiles and motorcycles"', add
label define cr00a_ind3_lbl 511 `"Wholesale commerce for payment or commission"', add
label define cr00a_ind3_lbl 512 `"Wholesale commerce of agricultural supplies, live animals, foods, beverages, and tobacco"', add
label define cr00a_ind3_lbl 513 `"Wholesale commerce of household goods"', add
label define cr00a_ind3_lbl 514 `"Wholesale commerce of intermediates, waste products and discarded goods"', add
label define cr00a_ind3_lbl 515 `"Wholesale commerce of machinery, equipment, and materials for industries"', add
label define cr00a_ind3_lbl 519 `"Wholesale commerce of other products"', add
label define cr00a_ind3_lbl 520 `"Retail sales, except automobile and motorcycle sales, repair of personal items and household equipment"', add
label define cr00a_ind3_lbl 521 `"Retail commerce not in specialty stores"', add
label define cr00a_ind3_lbl 522 `"Retail commerce, in specialty stores, in stores that stock primarily food, beverages, and tobacco"', add
label define cr00a_ind3_lbl 523 `"Retail commerce, in specialty stores, in stores that stock new goods"', add
label define cr00a_ind3_lbl 524 `"Retail sales of products in used-goods stores"', add
label define cr00a_ind3_lbl 525 `"Retail sales not in stores"', add
label define cr00a_ind3_lbl 526 `"Repair of personal items and household goods"', add
label define cr00a_ind3_lbl 551 `"Hotels, camps, and other types of temporary housing"', add
label define cr00a_ind3_lbl 552 `"Restaurants, bars, cantinas"', add
label define cr00a_ind3_lbl 553 `"Hotels and restaurants n.e.c."', add
label define cr00a_ind3_lbl 602 `"Other types of land transportation"', add
label define cr00a_ind3_lbl 611 `"Ocean or coastal transportation"', add
label define cr00a_ind3_lbl 621 `"Regular air transportation"', add
label define cr00a_ind3_lbl 630 `"Complementary and auxiliary transportation activities; tourist agencies"', add
label define cr00a_ind3_lbl 641 `"Mail and postal activities"', add
label define cr00a_ind3_lbl 642 `"Telecommunications"', add
label define cr00a_ind3_lbl 651 `"Monetary intermediation"', add
label define cr00a_ind3_lbl 659 `"Other types of financial intermediation"', add
label define cr00a_ind3_lbl 660 `"Financing insurance plans and pensions, except obligatory affiliation social security plans"', add
label define cr00a_ind3_lbl 671 `"Financial intermediation support services, except financing insurance and pension plans"', add
label define cr00a_ind3_lbl 701 `"Real estate activities with personal or rented properties"', add
label define cr00a_ind3_lbl 702 `"Real estate activities for payment or commission"', add
label define cr00a_ind3_lbl 711 `"Rental of transportation equipment"', add
label define cr00a_ind3_lbl 712 `"Rental of other types of machinery and equipment"', add
label define cr00a_ind3_lbl 713 `"Rental of personal items and household equipment not listed elsewhere"', add
label define cr00a_ind3_lbl 721 `"Consultants in equipment for data management"', add
label define cr00a_ind3_lbl 722 `"Consultants for data management programming and administration of data management programming"', add
label define cr00a_ind3_lbl 723 `"Data processing"', add
label define cr00a_ind3_lbl 725 `"Maintenance and repair of office, accounting, and data management machinery"', add
label define cr00a_ind3_lbl 731 `"Experiment research and development in natural sciences and engineering fields"', add
label define cr00a_ind3_lbl 741 `"Judicial and accounting activities, bookkeeping and auditing; tax advising; market studies and public opinion polls; business and management consulting"', add
label define cr00a_ind3_lbl 742 `"Architecture and engineering and related activities of technical consulting"', add
label define cr00a_ind3_lbl 743 `"Advertising services"', add
label define cr00a_ind3_lbl 749 `"Business activities not listed elsewhere"', add
label define cr00a_ind3_lbl 751 `"State administration and application of community economic and social policies"', add
label define cr00a_ind3_lbl 752 `"General public administration activities"', add
label define cr00a_ind3_lbl 753 `"Activities of obligatory affiliation social security plans"', add
label define cr00a_ind3_lbl 801 `"Elementary education"', add
label define cr00a_ind3_lbl 802 `"Secondary education"', add
label define cr00a_ind3_lbl 803 `"Higher education"', add
label define cr00a_ind3_lbl 809 `"Secondary education, technical and professional education"', add
label define cr00a_ind3_lbl 851 `"Activities related to human health"', add
label define cr00a_ind3_lbl 852 `"Veterinary services"', add
label define cr00a_ind3_lbl 853 `"Activities of social assistance institutions"', add
label define cr00a_ind3_lbl 900 `"Waste and sewage removal, sanitation and similar activities"', add
label define cr00a_ind3_lbl 911 `"Activities of business, professional and employer organizations"', add
label define cr00a_ind3_lbl 912 `"Labor union activities"', add
label define cr00a_ind3_lbl 919 `"Activities of other organizations"', add
label define cr00a_ind3_lbl 921 `"Filmmaking, radio, televisions and other entertainment activities"', add
label define cr00a_ind3_lbl 923 `"Activities of libraries, archives and museums, other cultural services"', add
label define cr00a_ind3_lbl 924 `"Sports activities and other recreational activities"', add
label define cr00a_ind3_lbl 930 `"Other service activities"', add
label define cr00a_ind3_lbl 950 `"Private homes with domestic service"', add
label define cr00a_ind3_lbl 990 `"International and extraterritorial organizations"', add
label define cr00a_ind3_lbl 999 `"Response suppressed"', add
label values cr00a_ind3 cr00a_ind3_lbl

label define cr00a_occ1_lbl 0 `"NIU (not in universe)"'
label define cr00a_occ1_lbl 1 `"Management level in Public and Private administration"', add
label define cr00a_occ1_lbl 2 `"Professional level, scientist, and scholar"', add
label define cr00a_occ1_lbl 3 `"Technicians and technical-school level professionals"', add
label define cr00a_occ1_lbl 4 `"Administrative occupations"', add
label define cr00a_occ1_lbl 5 `"Retail sales and personal direct services"', add
label define cr00a_occ1_lbl 6 `"Farming and fishery"', add
label define cr00a_occ1_lbl 7 `"Craft ind., bldg, mechanical, graphic arts and manuf. ind."', add
label define cr00a_occ1_lbl 8 `"Installation and operation of machinery and instalations"', add
label define cr00a_occ1_lbl 9 `"Unskilled occupations"', add
label values cr00a_occ1 cr00a_occ1_lbl

label define cr00a_occ2_lbl 00 `"NIU (not in universe)"'
label define cr00a_occ2_lbl 11 `"Management level in Public and Private administration"', add
label define cr00a_occ2_lbl 21 `"Professional level Physicists, Chemists, Math. and Engin."', add
label define cr00a_occ2_lbl 22 `"Professional level Biolog. sci., Medicine and Healthcare"', add
label define cr00a_occ2_lbl 23 `"Professional level Educators"', add
label define cr00a_occ2_lbl 24 `"Other occupations, professional level"', add
label define cr00a_occ2_lbl 31 `"Technicians and intermediate-level professionals in physics, chem, math, engn., navigation"', add
label define cr00a_occ2_lbl 32 `"Technician level Biolog.l sciences, Medicine and Healthcare"', add
label define cr00a_occ2_lbl 33 `"Technicians in Education"', add
label define cr00a_occ2_lbl 34 `"Oth. occup. of technician and tech-school professional level"', add
label define cr00a_occ2_lbl 41 `"Administrative services"', add
label define cr00a_occ2_lbl 42 `"Public services"', add
label define cr00a_occ2_lbl 51 `"Personal services, protection and security"', add
label define cr00a_occ2_lbl 52 `"Modeling and sales in commercial establishments"', add
label define cr00a_occ2_lbl 61 `"Agricultural, forestry, and fishery"', add
label define cr00a_occ2_lbl 62 `"Subsistence-level agriculture and fishery"', add
label define cr00a_occ2_lbl 71 `"Mineral extraction and building industries"', add
label define cr00a_occ2_lbl 72 `"Metallurgy, mechanical construction and related industries"', add
label define cr00a_occ2_lbl 73 `"Precision mechanics, handicrafts, and graphic arts"', add
label define cr00a_occ2_lbl 74 `"Other qualified industries handicrafts"', add
label define cr00a_occ2_lbl 81 `"Operation of fixed equipment and related"', add
label define cr00a_occ2_lbl 82 `"Installation and operation of machinery"', add
label define cr00a_occ2_lbl 83 `"Vehicle and heavy equipment drivers"', add
label define cr00a_occ2_lbl 91 `"Unclassified sales and services"', add
label define cr00a_occ2_lbl 92 `"Unclassified agricultural, forestry and fishery"', add
label define cr00a_occ2_lbl 93 `"Unclassified mining, building, manufacture and transp."', add
label values cr00a_occ2 cr00a_occ2_lbl

label define cr00a_occ3_lbl 000 `"NIU (not in universe)"'
label define cr00a_occ3_lbl 111 `"Members of the highest level of authority in the Republic, and representatives of local governments"', add
label define cr00a_occ3_lbl 112 `"Personnel directors of public administration and private businesses"', add
label define cr00a_occ3_lbl 211 `"Professionals of physics, chemistry, and similar"', add
label define cr00a_occ3_lbl 212 `"Professionals of mathematics, statistics, and similar"', add
label define cr00a_occ3_lbl 213 `"Professionals of computer science"', add
label define cr00a_occ3_lbl 214 `"Professionals of architecture, engineering, and similar"', add
label define cr00a_occ3_lbl 221 `"Professionals in biological sciences and similar disciplines relative to living (organic) beings"', add
label define cr00a_occ3_lbl 222 `"Professionals in health care sciences"', add
label define cr00a_occ3_lbl 231 `"University professors and similar"', add
label define cr00a_occ3_lbl 232 `"Secondary school professors"', add
label define cr00a_occ3_lbl 233 `"Elementary and preschool teachers"', add
label define cr00a_occ3_lbl 234 `"Special education teachers"', add
label define cr00a_occ3_lbl 235 `"Other teaching professionals"', add
label define cr00a_occ3_lbl 241 `"Administration and economy professionals"', add
label define cr00a_occ3_lbl 242 `"Legal professionals"', add
label define cr00a_occ3_lbl 243 `"Archivists, conservationists and curators of museums and art galleries, librarians, file keepers and similar professionals"', add
label define cr00a_occ3_lbl 244 `"Social science professionals"', add
label define cr00a_occ3_lbl 245 `"Professionals of the arts"', add
label define cr00a_occ3_lbl 246 `"Ministers of the various religions, monks and nuns, theologists and philosophers"', add
label define cr00a_occ3_lbl 311 `"Physics, chemistry, and similar technicians"', add
label define cr00a_occ3_lbl 312 `"Mathematic, statistical, and similar technicians"', add
label define cr00a_occ3_lbl 313 `"Technicians of computer programming and computer science"', add
label define cr00a_occ3_lbl 314 `"Architecture and engineering technicians"', add
label define cr00a_occ3_lbl 315 `"Construction, security, health and quality control inspectors"', add
label define cr00a_occ3_lbl 316 `"Operators of electronic imaging and sound equipment"', add
label define cr00a_occ3_lbl 317 `"Maritime and aeronautical navigation technicians"', add
label define cr00a_occ3_lbl 318 `"Personnel supervisors"', add
label define cr00a_occ3_lbl 319 `"Production supervisors"', add
label define cr00a_occ3_lbl 321 `"Technicians and assistants in biological sciences and other disciplines related to living (organic) beings"', add
label define cr00a_occ3_lbl 322 `"Mid-level professionals in health sciences"', add
label define cr00a_occ3_lbl 323 `"Technicians in the operations of medical diagnostic and treatment equipment"', add
label define cr00a_occ3_lbl 332 `"Assistants to elementary and preschool teachers"', add
label define cr00a_occ3_lbl 334 `"Technicians of non-regular education"', add
label define cr00a_occ3_lbl 341 `"Technicians and assistants in administration and economy"', add
label define cr00a_occ3_lbl 342 `"Legal technicians and assistants"', add
label define cr00a_occ3_lbl 343 `"Archivists, conservationists and curators of museums and art galleries, librarians, file keepers and similar technicians"', add
label define cr00a_occ3_lbl 344 `"Social science technicians"', add
label define cr00a_occ3_lbl 345 `"Technicians of the arts, entertainment, and sports"', add
label define cr00a_occ3_lbl 346 `"Assistants in lay services and technicians and assistants of theologists and philosophers"', add
label define cr00a_occ3_lbl 347 `"Technicians in financial and commercial operations"', add
label define cr00a_occ3_lbl 348 `"Commercial agents and brokers"', add
label define cr00a_occ3_lbl 349 `"Police inspectors, detectives, and similar"', add
label define cr00a_occ3_lbl 411 `"Secretaries and operators of office machinery"', add
label define cr00a_occ3_lbl 412 `"Accounting, financial, and statistical services employees"', add
label define cr00a_occ3_lbl 413 `"Employees in charge of registering materials and transportation"', add
label define cr00a_occ3_lbl 414 `"Library, archive and postal service employees"', add
label define cr00a_occ3_lbl 419 `"Other administrative service employees"', add
label define cr00a_occ3_lbl 421 `"Employees in monetary transactions"', add
label define cr00a_occ3_lbl 422 `"Employees"', add
label define cr00a_occ3_lbl 512 `"Workers in provisioning services and the preparation of food and beverages prepared for consumption"', add
label define cr00a_occ3_lbl 513 `"Workers that provide personal care and similar"', add
label define cr00a_occ3_lbl 514 `"Other workers that provide personal services"', add
label define cr00a_occ3_lbl 515 `"Other workers that provide protection and security services"', add
label define cr00a_occ3_lbl 522 `"Salespeople and employees that display in shops, stores, and market stalls"', add
label define cr00a_occ3_lbl 611 `"Farmers and specialized farm workers"', add
label define cr00a_occ3_lbl 612 `"Cattle breeders and workers specialized in cattle breeding and similar"', add
label define cr00a_occ3_lbl 613 `"Specialized agricultural producers and workers"', add
label define cr00a_occ3_lbl 614 `"Specialized forestry producers and similar"', add
label define cr00a_occ3_lbl 615 `"Fish breeders and workers specialized in fish breeding and similar"', add
label define cr00a_occ3_lbl 621 `"Subsistence-level agriculture and fishery workers"', add
label define cr00a_occ3_lbl 711 `"Miners, quarry workers, dynamiters, and stone workers"', add
label define cr00a_occ3_lbl 712 `"Construction laborers and carpenters"', add
label define cr00a_occ3_lbl 713 `"Construction workers that do finishing and similar"', add
label define cr00a_occ3_lbl 714 `"Painters, vehicle painters, painters of varnishes and lacquers, insect and rodent exterminators and similar"', add
label define cr00a_occ3_lbl 721 `"Molders, welders, locksmiths, boilermakers, metal structure builders and similar"', add
label define cr00a_occ3_lbl 722 `"Blacksmiths, toolmakers, and similar"', add
label define cr00a_occ3_lbl 723 `"Machinery mechanics and adjusters and similar"', add
label define cr00a_occ3_lbl 724 `"Electrical and electronic equipment mechanics and adjusters and similar"', add
label define cr00a_occ3_lbl 731 `"Precision mechanics that work with metals and similar"', add
label define cr00a_occ3_lbl 732 `"Potters and glassworkers and similar"', add
label define cr00a_occ3_lbl 733 `"Artisans who work with wood and similar materials (stone, straw, paper, cardboard, wicker, jute, bone, shells) and textile and leather and floral arrangements"', add
label define cr00a_occ3_lbl 734 `"Graphic art and similar workers"', add
label define cr00a_occ3_lbl 741 `"Food processing workers and similar"', add
label define cr00a_occ3_lbl 742 `"Workers in wood treatment industries, cabinetmakers, and similar"', add
label define cr00a_occ3_lbl 743 `"Textile, clothing, and similar workers"', add
label define cr00a_occ3_lbl 744 `"Leather, tanning, and footwear workers and similar"', add
label define cr00a_occ3_lbl 812 `"Operators of installations for processing of minerals"', add
label define cr00a_occ3_lbl 813 `"Operators of glass, ceramics, and similar installations"', add
label define cr00a_occ3_lbl 814 `"Operators of installations for wood processing and paper manufacture"', add
label define cr00a_occ3_lbl 815 `"Operators of installations for chemical treatments"', add
label define cr00a_occ3_lbl 816 `"Operators of installations for energy productions and similar"', add
label define cr00a_occ3_lbl 821 `"Operators of machinery for working metals and mineral production"', add
label define cr00a_occ3_lbl 822 `"Operators of machinery for the manufacture of chemical products"', add
label define cr00a_occ3_lbl 823 `"Operators of machinery for the manufacture of rubber and plastic products"', add
label define cr00a_occ3_lbl 824 `"Operators of machinery for the manufacture of wood products"', add
label define cr00a_occ3_lbl 825 `"Operators of machinery for printing, binding, and manufacture of paper products"', add
label define cr00a_occ3_lbl 826 `"Operators of machinery for the manufacture of textile products, and articles made of fur and leather"', add
label define cr00a_occ3_lbl 827 `"Operators of machinery for the manufacture of foods and similar items"', add
label define cr00a_occ3_lbl 828 `"Loaders"', add
label define cr00a_occ3_lbl 829 `"Other operators of machinery and loaders"', add
label define cr00a_occ3_lbl 831 `"Motor vehicle drivers"', add
label define cr00a_occ3_lbl 832 `"Operators of mobile agricultural machinery and other mobile machinery"', add
label define cr00a_occ3_lbl 833 `"Sea sailors and similar"', add
label define cr00a_occ3_lbl 911 `"Traveling salesmen and similar"', add
label define cr00a_occ3_lbl 913 `"Non-classified cleaning personnel in establishments"', add
label define cr00a_occ3_lbl 914 `"Non-classified service personnel: public roads and trash removal"', add
label define cr00a_occ3_lbl 915 `"Non-classified service personnel"', add
label define cr00a_occ3_lbl 921 `"Agricultural day laborers"', add
label define cr00a_occ3_lbl 922 `"Forestry and fishing day laborers"', add
label define cr00a_occ3_lbl 931 `"Mining and construction day laborers"', add
label define cr00a_occ3_lbl 932 `"Manufacturing industry day laborers"', add
label define cr00a_occ3_lbl 933 `"Transportation day laborers"', add
label define cr00a_occ3_lbl 999 `"Response suppressed"', add
label values cr00a_occ3 cr00a_occ3_lbl

label define cr00a_occ4_lbl 0000 `"NIU (not in universe)"'
label define cr00a_occ4_lbl 1111 `"Members of the highest level of authority in the Republic (executive power, legislative power, judicial power, ad the Supreme Tribunal of Elections)"', add
label define cr00a_occ4_lbl 1112 `"Representatives of the local governments"', add
label define cr00a_occ4_lbl 1122 `"General managers, sub managers, directors, sub directors, and general coordinators of public administration and private businesses"', add
label define cr00a_occ4_lbl 1123 `"Heads or coordinators of areas or departments of public administration and private businesses"', add
label define cr00a_occ4_lbl 1124 `"Section leaders of public administration and private businesses"', add
label define cr00a_occ4_lbl 2113 `"Chemists"', add
label define cr00a_occ4_lbl 2122 `"Statisticians and demographers"', add
label define cr00a_occ4_lbl 2131 `"Information system designers and analysts"', add
label define cr00a_occ4_lbl 2132 `"Computer programmers"', add
label define cr00a_occ4_lbl 2139 `"Other programming professionals; for example: auditors of computer programs"', add
label define cr00a_occ4_lbl 2141 `"Architects and urban planners"', add
label define cr00a_occ4_lbl 2142 `"Civil and construction engineers"', add
label define cr00a_occ4_lbl 2143 `"Electrical engineers"', add
label define cr00a_occ4_lbl 2144 `"Electronic and telecommunication engineers"', add
label define cr00a_occ4_lbl 2145 `"Mechanical engineers"', add
label define cr00a_occ4_lbl 2146 `"Chemical engineers and food technicians"', add
label define cr00a_occ4_lbl 2147 `"Industrial engineers"', add
label define cr00a_occ4_lbl 2148 `"Topographical and geodesy engineers"', add
label define cr00a_occ4_lbl 2211 `"Biologists, botanists, bacteriologists, cytologists, zoologists, microbiologists, geneticists, ecologists and similar"', add
label define cr00a_occ4_lbl 2213 `"Agronomists, agricultural engineers, forestry engineers, zoo technical engineers, engineers in lumber and similar"', add
label define cr00a_occ4_lbl 2221 `"General doctors and specialists"', add
label define cr00a_occ4_lbl 2222 `"Dentists"', add
label define cr00a_occ4_lbl 2223 `"Veterinarians"', add
label define cr00a_occ4_lbl 2224 `"Pharmacists"', add
label define cr00a_occ4_lbl 2225 `"Nutritionists"', add
label define cr00a_occ4_lbl 2226 `"Professional nurses"', add
label define cr00a_occ4_lbl 2310 `"University professors and similar"', add
label define cr00a_occ4_lbl 2320 `"Secondary school professors"', add
label define cr00a_occ4_lbl 2331 `"Elementary school teachers"', add
label define cr00a_occ4_lbl 2332 `"Preschool teachers"', add
label define cr00a_occ4_lbl 2340 `"Special education teachers"', add
label define cr00a_occ4_lbl 2351 `"Specialists in pedagogy and teaching materials"', add
label define cr00a_occ4_lbl 2352 `"Education inspectors"', add
label define cr00a_occ4_lbl 2354 `"Student advisors"', add
label define cr00a_occ4_lbl 2411 `"Public accountants and auditors"', add
label define cr00a_occ4_lbl 2412 `"Human resources administrators and specialists"', add
label define cr00a_occ4_lbl 2413 `"Business administrators and marketing professionals"', add
label define cr00a_occ4_lbl 2414 `"Public administrators"', add
label define cr00a_occ4_lbl 2415 `"Economists and agricultural economists"', add
label define cr00a_occ4_lbl 2421 `"Lawyers and notaries"', add
label define cr00a_occ4_lbl 2432 `"Professional librarians, file keepers and similar professionals"', add
label define cr00a_occ4_lbl 2441 `"Public relations specialists and advertisers"', add
label define cr00a_occ4_lbl 2442 `"Sociologists, anthropologists, archeologists, ethnographers, geographers, and similar"', add
label define cr00a_occ4_lbl 2444 `"Philologists and translators"', add
label define cr00a_occ4_lbl 2445 `"Psychologists"', add
label define cr00a_occ4_lbl 2446 `"Social workers and social advisors"', add
label define cr00a_occ4_lbl 2447 `"Socioeconomic planners"', add
label define cr00a_occ4_lbl 2452 `"Newspaper reporters"', add
label define cr00a_occ4_lbl 2453 `"Sculptors, painters, recorders, drawers, graphic artists, and similar"', add
label define cr00a_occ4_lbl 2454 `"Composers, musicians, and professional singers"', add
label define cr00a_occ4_lbl 2461 `"Ministers of the various religions, monks and nuns"', add
label define cr00a_occ4_lbl 3113 `"Technicians and assistants in chemistry"', add
label define cr00a_occ4_lbl 3122 `"Technicians and assistants in statistics and demography"', add
label define cr00a_occ4_lbl 3131 `"Technicians of computer programming"', add
label define cr00a_occ4_lbl 3132 `"Technicians of controlling computers"', add
label define cr00a_occ4_lbl 3141 `"Technical outliners and drawers"', add
label define cr00a_occ4_lbl 3142 `"Technicians and assistants for civil engineering and construction and contractors"', add
label define cr00a_occ4_lbl 3143 `"Technicians and assistants for electricity and electrical technology"', add
label define cr00a_occ4_lbl 3144 `"Technicians and assistants for electronics and telecommunications"', add
label define cr00a_occ4_lbl 3145 `"Technicians and assistants for mechanics"', add
label define cr00a_occ4_lbl 3146 `"Industrial chemistry technicians and food technicians"', add
label define cr00a_occ4_lbl 3148 `"Cartographers, surveyors, and topography technicians"', add
label define cr00a_occ4_lbl 3151 `"Building inspectors and inspectors for the prevention and investigation of fires"', add
label define cr00a_occ4_lbl 3152 `"Security and health inspectors"', add
label define cr00a_occ4_lbl 3153 `"Quality control inspectors"', add
label define cr00a_occ4_lbl 3161 `"Photographers and operators of electronic imaging and sound recording and reproducing equipment"', add
label define cr00a_occ4_lbl 3162 `"Operators of radio transmission, movie, television and telecommunication equipment"', add
label define cr00a_occ4_lbl 3172 `"Captains, ship officials and other officials"', add
label define cr00a_occ4_lbl 3174 `"Airplane pilots"', add
label define cr00a_occ4_lbl 3181 `"Chefs"', add
label define cr00a_occ4_lbl 3185 `"Supervisors of agricultural and fishing workers"', add
label define cr00a_occ4_lbl 3189 `"Other personnel supervisors"', add
label define cr00a_occ4_lbl 3192 `"Production supervisors of workers in production of energy and water treatment"', add
label define cr00a_occ4_lbl 3194 `"Production supervisors of workers in the manufacture of rubber, plastics, glass and ceramic products"', add
label define cr00a_occ4_lbl 3196 `"Production supervisors of workers in the manufacture of textiles and fur and leather articles"', add
label define cr00a_occ4_lbl 3197 `"Production supervisors of workers in the manufacture of foods, beverages and tobacco"', add
label define cr00a_occ4_lbl 3198 `"Production supervisors of workers in the manufacture of electrical and electronic products"', add
label define cr00a_occ4_lbl 3199 `"Other production supervisors (mining industry, packing, etc)"', add
label define cr00a_occ4_lbl 3211 `"Technicians and assistants in biology, botanists, bacteriology, cytology, zoology, microbiology, genetics, ecology, and similar"', add
label define cr00a_occ4_lbl 3213 `"Technicians in agronomy, agricultural engineering, forestry engineering, zoo technicians, lumber engineers, and similar"', add
label define cr00a_occ4_lbl 3221 `"Medical and paramedical internists"', add
label define cr00a_occ4_lbl 3222 `"Mid-level professionals in health sciences"', add
label define cr00a_occ4_lbl 3224 `"Pharmacy technicians and assistants"', add
label define cr00a_occ4_lbl 3225 `"Dietary and nutritional technicians and assistants"', add
label define cr00a_occ4_lbl 3226 `"Nursing assistants"', add
label define cr00a_occ4_lbl 3228 `"Technicians and assistants in orthopedics, physical therapy, occupational therapy, ergotherapy, orthophony y orthoptics"', add
label define cr00a_occ4_lbl 3231 `"Optometry technicians and ophthalmology assistants"', add
label define cr00a_occ4_lbl 3341 `"Professors and instructors of non-regular arts and technical education- commercial"', add
label define cr00a_occ4_lbl 3342 `"Professors and instructors of other non-regular education- commercial; for example: aerobic instructors, driver's school or pilot training, etc"', add
label define cr00a_occ4_lbl 3411 `"Technicians and auxiliaries of accounting and auditing"', add
label define cr00a_occ4_lbl 3412 `"Technicians and assistants in human resources"', add
label define cr00a_occ4_lbl 3413 `"Technicians and assistants in business administration and marketing"', add
label define cr00a_occ4_lbl 3417 `"Executive secretaries and bilingual executive secretaries"', add
label define cr00a_occ4_lbl 3418 `"Tax technicians"', add
label define cr00a_occ4_lbl 3419 `"Other technicians and assistants in administration and economy; for example: social security inspectors, inspectors of weights and measures, customs inspectors, etc."', add
label define cr00a_occ4_lbl 3421 `"Technicians and assistants to lawyers and notaries"', add
label define cr00a_occ4_lbl 3429 `"Other legal technicians and assistants (inspectors of judicial charges)"', add
label define cr00a_occ4_lbl 3441 `"Technicians and assistants in public relations and publicity"', add
label define cr00a_occ4_lbl 3446 `"Technicians and assistants in social work and economic and social planning"', add
label define cr00a_occ4_lbl 3451 `"Technicians in newspapers, announcers, presenters, radio speakers and commentators and masters of ceremonies"', add
label define cr00a_occ4_lbl 3452 `"Artistic drawing technicians"', add
label define cr00a_occ4_lbl 3453 `"Non-professional musicians, singers, dancers"', add
label define cr00a_occ4_lbl 3454 `"Decorators, designers, and stage designers"', add
label define cr00a_occ4_lbl 3456 `"Physical trainers, sportsmen, and sports umpires"', add
label define cr00a_occ4_lbl 3460 `"Assistants in lay services (Deacons, monks, secular preachers, evangelists, spiritual advisors) and technicians and assistants of theologists and philosophers"', add
label define cr00a_occ4_lbl 3471 `"Stock/ exchange agents"', add
label define cr00a_occ4_lbl 3472 `"Insurance agents"', add
label define cr00a_occ4_lbl 3473 `"Real estate agents"', add
label define cr00a_occ4_lbl 3474 `"Travel agents, guides and tourism promoters"', add
label define cr00a_occ4_lbl 3475 `"Commercial representations and sales technicians"', add
label define cr00a_occ4_lbl 3476 `"Supply technicians"', add
label define cr00a_occ4_lbl 3477 `"Technicians in taxes, auctioning, and estimators"', add
label define cr00a_occ4_lbl 3482 `"Customs declarers and agents"', add
label define cr00a_occ4_lbl 3491 `"Police inspectors and detectives"', add
label define cr00a_occ4_lbl 4111 `"Typists, data entry, operators of machines for sending and receiving messages (fax, telex, etc.)"', add
label define cr00a_occ4_lbl 4112 `"Secretaries"', add
label define cr00a_occ4_lbl 4121 `"Accounting and finance employees"', add
label define cr00a_occ4_lbl 4122 `"Census takers, coders, and data entry"', add
label define cr00a_occ4_lbl 4131 `"Employees in charge of supplies and inventory"', add
label define cr00a_occ4_lbl 4133 `"Transportation control employees"', add
label define cr00a_occ4_lbl 4141 `"Employees of libraries, archives, and photocopy services"', add
label define cr00a_occ4_lbl 4142 `"Postal service employees"', add
label define cr00a_occ4_lbl 4190 `"Other administrative support employees (personnel administrative employees)"', add
label define cr00a_occ4_lbl 4211 `"Cashiers"', add
label define cr00a_occ4_lbl 4212 `"Payers and receivers (tellers)"', add
label define cr00a_occ4_lbl 4213 `"Bet receivers"', add
label define cr00a_occ4_lbl 4215 `"Billing"', add
label define cr00a_occ4_lbl 4222 `"Receptionists and information employees"', add
label define cr00a_occ4_lbl 4223 `"Telephone operators"', add
label define cr00a_occ4_lbl 5121 `"Butlers and similar"', add
label define cr00a_occ4_lbl 5122 `"Cooks"', add
label define cr00a_occ4_lbl 5123 `"Housekeepers, waiters, bartenders"', add
label define cr00a_occ4_lbl 5124 `"Organizers of parties, events, and conventions (catering service)"', add
label define cr00a_occ4_lbl 5131 `"Nannies"', add
label define cr00a_occ4_lbl 5132 `"Nursing assistants"', add
label define cr00a_occ4_lbl 5139 `"Workers that provide personal care and similar (veterinary and pharmacy assistants)"', add
label define cr00a_occ4_lbl 5141 `"Barbers, hairdressers, specialists in beauty treatments and similar (barbers, stylists, make-up artists, etc.)"', add
label define cr00a_occ4_lbl 5151 `"Firemen"', add
label define cr00a_occ4_lbl 5152 `"Policemen and traffic inspectors"', add
label define cr00a_occ4_lbl 5153 `"Prison guards"', add
label define cr00a_occ4_lbl 5159 `"Other workers that provide protection and security services; for example: lifeguards, bodyguards, guides, park rangers, business and homes security guards, etc."', add
label define cr00a_occ4_lbl 5221 `"Salespeople and employees that display in shops"', add
label define cr00a_occ4_lbl 5222 `"Market vendors"', add
label define cr00a_occ4_lbl 6111 `"Specialized farmers and workers in extensive farming (rice, cotton, sugar cane, cereals, melons, watermelon, squash, tomatoes, berries, potatoes, tobacco, etc)"', add
label define cr00a_occ4_lbl 6112 `"Specialized farmers and workers in tree and bush plantations (cacao, coffee, tea, fruit trees, etc.)"', add
label define cr00a_occ4_lbl 6113 `"Specialized farmers and workers in vegetable gardens, greenhouses, nurseries and gardens"', add
label define cr00a_occ4_lbl 6114 `"Specialized agricultural producers and workers in mixed agriculture"', add
label define cr00a_occ4_lbl 6115 `"Other specialized agricultural producers and workers with specialized tasks; for example: fertilizer spreaders, herbicide spreaders, chemical spreaders for crops, agricultural fumigators in the field, tree trimmers, etc"', add
label define cr00a_occ4_lbl 6121 `"Cattle and other domestic animal breeders, dairy producers"', add
label define cr00a_occ4_lbl 6122 `"Bird keepers and specialized workers"', add
label define cr00a_occ4_lbl 6130 `"Producers and workers in specialized agriculture"', add
label define cr00a_occ4_lbl 6141 `"Loggers an other forestry workers"', add
label define cr00a_occ4_lbl 6152 `"Fresh water, coastal and deep sea fishing"', add
label define cr00a_occ4_lbl 6210 `"Subsistence-level agriculture and fishery workers"', add
label define cr00a_occ4_lbl 7111 `"Miners and quarry workers"', add
label define cr00a_occ4_lbl 7121 `"Construction laborers and plasterers"', add
label define cr00a_occ4_lbl 7123 `"Carpenters"', add
label define cr00a_occ4_lbl 7129 `"Other construction laborers, carpenters, and similar; for example: scaffolding builders, demolition crews, etc"', add
label define cr00a_occ4_lbl 7132 `"Flooring installers"', add
label define cr00a_occ4_lbl 7135 `"Window installers"', add
label define cr00a_occ4_lbl 7136 `"Plumbers and pipefitters"', add
label define cr00a_occ4_lbl 7137 `"Construction electricians and similar"', add
label define cr00a_occ4_lbl 7141 `"Painters and wallpaper installers"', add
label define cr00a_occ4_lbl 7142 `"Vehicle painters, painters of varnishes and lacquers, and similar"', add
label define cr00a_occ4_lbl 7143 `"Insect and rodent exterminators, chimney sweeps, cleaners of building exteriors and similar"', add
label define cr00a_occ4_lbl 7212 `"Welders and oxyfuel cutters"', add
label define cr00a_occ4_lbl 7213 `"Boilermaker and laminator"', add
label define cr00a_occ4_lbl 7214 `"Metal structure builders"', add
label define cr00a_occ4_lbl 7222 `"Toolmakers, locksmiths, and gunsmiths"', add
label define cr00a_occ4_lbl 7224 `"Metal polishers and tool sharpeners"', add
label define cr00a_occ4_lbl 7231 `"Mechanics and adjusters of automobiles"', add
label define cr00a_occ4_lbl 7232 `"Mechanics and adjusters of airplane engines"', add
label define cr00a_occ4_lbl 7233 `"Mechanics and adjusters of agricultural and industrial machinery"', add
label define cr00a_occ4_lbl 7234 `"Other machinery mechanics and adjusters; for example: lubricators"', add
label define cr00a_occ4_lbl 7241 `"Electrical mechanics and adjusters"', add
label define cr00a_occ4_lbl 7242 `"Electronic equipment mechanics, repairmen, and adjusters"', add
label define cr00a_occ4_lbl 7243 `"Telegraph and telephone installers and repairmen"', add
label define cr00a_occ4_lbl 7244 `"Electrical line installers and repairmen"', add
label define cr00a_occ4_lbl 7311 `"Precision instrument mechanics and repairmen"', add
label define cr00a_occ4_lbl 7313 `"Jewelers, goldsmiths, and silversmiths"', add
label define cr00a_occ4_lbl 7321 `"Potters and similar (clay, ceramic, and abrasives)"', add
label define cr00a_occ4_lbl 7324 `"Sign painters and painters who decorate glass, ceramics, and similar materials"', add
label define cr00a_occ4_lbl 7331 `"Artisans who work with wood and similar materials (stone, straw, paper, cardboard, wicker, jute, bone, shells)"', add
label define cr00a_occ4_lbl 7332 `"Artisans who work with textiles and leather"', add
label define cr00a_occ4_lbl 7341 `"Printers, typographers, linotype casters, and similar"', add
label define cr00a_occ4_lbl 7343 `"Print setters and photo setters"', add
label define cr00a_occ4_lbl 7345 `"Binders, coverers, and similar"', add
label define cr00a_occ4_lbl 7346 `"Serigraph printers, iron transfers and printing on textiles"', add
label define cr00a_occ4_lbl 7411 `"Butchers and similar"', add
label define cr00a_occ4_lbl 7412 `"Bakers, cake and pastry makers, candy makers, chocolate makers and pasta manufacturers"', add
label define cr00a_occ4_lbl 7422 `"Cabinetmakers"', add
label define cr00a_occ4_lbl 7423 `"Regulators and regulators- operators of woodworking machinery"', add
label define cr00a_occ4_lbl 7433 `"Tailors, seamstresses, dressmakers; curtain, quilt, and bedding makers, hat makers"', add
label define cr00a_occ4_lbl 7435 `"Pattern makers and fabric, leather, and fur cutters"', add
label define cr00a_occ4_lbl 7437 `"Upholsterers, mattress makers, personal installation of curtains, carpets, and similar"', add
label define cr00a_occ4_lbl 7442 `"Shoemakers and similar (leatherworkers)"', add
label define cr00a_occ4_lbl 8122 `"Operators of ovens for second fusion, machinery for straining and molding metals and laminating equipment"', add
label define cr00a_occ4_lbl 8131 `"Operators of glass and ceramic kilns, and operators of similar machinery"', add
label define cr00a_occ4_lbl 8141 `"Operators of installations for wood processing"', add
label define cr00a_occ4_lbl 8143 `"Operators of installations for paper manufacture"', add
label define cr00a_occ4_lbl 8151 `"Operators of plants for breaking, crushing and mixing chemical substances"', add
label define cr00a_occ4_lbl 8155 `"Operators of machinery for the manufacture of wood products"', add
label define cr00a_occ4_lbl 8161 `"Operators of installations for energy productions"', add
label define cr00a_occ4_lbl 8163 `"Operators of incinerators, water treatment plants, and similar"', add
label define cr00a_occ4_lbl 8211 `"Operators of tooling machinery (lathes, stamping presses, mechanical guillotines, metal curving machines, drills, grinders, planes, drills, rectifiers, mechanical metal saws, etc)"', add
label define cr00a_occ4_lbl 8212 `"Operators of machinery for the manufacture of cement and similar minerals"', add
label define cr00a_occ4_lbl 8221 `"Operators of machinery for the manufacture of pharmaceutical products and cosmetics"', add
label define cr00a_occ4_lbl 8229 `"Other operators of machinery for the manufacture of chemical products; for example operators of machines for manufacturing munitions and explosives, fireworks, matches, candles, linoleum, halogen gas, etc"', add
label define cr00a_occ4_lbl 8231 `"Operators of machinery for the manufacture of rubber products"', add
label define cr00a_occ4_lbl 8232 `"Operators of machinery for the manufacture of plastic products"', add
label define cr00a_occ4_lbl 8240 `"Operators of machinery for the manufacture of wood products"', add
label define cr00a_occ4_lbl 8251 `"Operators of machinery for printing"', add
label define cr00a_occ4_lbl 8252 `"Operators of machinery for binding"', add
label define cr00a_occ4_lbl 8253 `"Operators of machinery for manufacture of paper products"', add
label define cr00a_occ4_lbl 8261 `"Operators of machinery for the preparation of fibers, threads, and bobbins"', add
label define cr00a_occ4_lbl 8262 `"Operators of looms and other weaving machinery"', add
label define cr00a_occ4_lbl 8263 `"Operators of sewing machines"', add
label define cr00a_occ4_lbl 8264 `"Operators of machinery for bleaching, dying, and tinting textile products"', add
label define cr00a_occ4_lbl 8265 `"Operators of machinery for treating fur and leather"', add
label define cr00a_occ4_lbl 8266 `"Operators of machinery for the manufacture of footwear, suitcases, and other leather goods"', add
label define cr00a_occ4_lbl 8269 `"Other operators of machinery for the manufacture of textile products, and articles made of fur and leather;  for example: operators of pattern cutting machines (textiles), ribbon and lace decorations, hat making"', add
label define cr00a_occ4_lbl 8271 `"Operators of machinery for processing meat, fish, and shellfish"', add
label define cr00a_occ4_lbl 8272 `"Operators of machinery for processing dairy products"', add
label define cr00a_occ4_lbl 8273 `"Operators of machinery for grinding cereals and spices"', add
label define cr00a_occ4_lbl 8274 `"Operators of machinery for processing cereals, bakery and pastry goods, candy, and products made of chocolate and similar"', add
label define cr00a_occ4_lbl 8275 `"Operators of machinery for processing fruits and dried fruits, vegetables, and manufacturing edible oils"', add
label define cr00a_occ4_lbl 8276 `"Operators of machinery for processing sugars"', add
label define cr00a_occ4_lbl 8277 `"Operators of machinery for manufacturing tea and processing coffee and cacao"', add
label define cr00a_occ4_lbl 8278 `"Operators of machinery for processing beer, wine, and other beverages except fruit and vegetable juices"', add
label define cr00a_occ4_lbl 8282 `"Installers of electrical equipment"', add
label define cr00a_occ4_lbl 8283 `"Installers of electronic equipment"', add
label define cr00a_occ4_lbl 8284 `"Installers of metal, rubber, and plastic products"', add
label define cr00a_occ4_lbl 8290 `"Other operators of machinery and installers; for example: installers of products with multiple parts, baling machine operators, labeling machine operators"', add
label define cr00a_occ4_lbl 8311 `"Motorcycle drivers"', add
label define cr00a_occ4_lbl 8312 `"Taxi drivers and drivers of transportation vehicles (including ambulances)"', add
label define cr00a_occ4_lbl 8313 `"Bus, microbus, and tram drivers"', add
label define cr00a_occ4_lbl 8314 `"Drivers of heavy trucks"', add
label define cr00a_occ4_lbl 8321 `"Operators of mobile agricultural and forestry machinery"', add
label define cr00a_occ4_lbl 8322 `"Operators of dirt moving machinery and similar"', add
label define cr00a_occ4_lbl 8323 `"Operators of towing equipment, elevator equipment and similar"', add
label define cr00a_occ4_lbl 8324 `"Operators of front loaders"', add
label define cr00a_occ4_lbl 8330 `"Sea sailors and similar"', add
label define cr00a_occ4_lbl 9110 `"Traveling salesmen and similar"', add
label define cr00a_occ4_lbl 9111 `"Traveling salesmen, food vendors"', add
label define cr00a_occ4_lbl 9112 `"Traveling salesmen, non-food vendors (including traveling photographers)"', add
label define cr00a_occ4_lbl 9113 `"Door-to-door salesmen and telemarketers"', add
label define cr00a_occ4_lbl 9114 `"Street vendors with permanent street stalls"', add
label define cr00a_occ4_lbl 9115 `"Vendors that sell from their home"', add
label define cr00a_occ4_lbl 9131 `"Household employees"', add
label define cr00a_occ4_lbl 9132 `"Housekeeping in offices, hotels and other establishments (janitors)"', add
label define cr00a_occ4_lbl 9133 `"Hand-launderers and pressers"', add
label define cr00a_occ4_lbl 9134 `"Concierges"', add
label define cr00a_occ4_lbl 9135 `"Car washers and window cleaners"', add
label define cr00a_occ4_lbl 9141 `"Trash collectors"', add
label define cr00a_occ4_lbl 9142 `"Street sweepers"', add
label define cr00a_occ4_lbl 9151 `"Messengers, elevator operators, bellboys, bellhops, caddies, and delivery personnel"', add
label define cr00a_occ4_lbl 9152 `"Watchmen and doormen"', add
label define cr00a_occ4_lbl 9153 `"Meter reader and vending machine money collectors"', add
label define cr00a_occ4_lbl 9155 `"Kitchen assistants"', add
label define cr00a_occ4_lbl 9159 `"Non-classified service personnel; occasional workers"', add
label define cr00a_occ4_lbl 9211 `"Agricultural day laborers (except coffee harvesters)"', add
label define cr00a_occ4_lbl 9212 `"Agricultural day laborers, coffee harvesters)"', add
label define cr00a_occ4_lbl 9221 `"Forestry day laborers"', add
label define cr00a_occ4_lbl 9222 `"Fishing, hunting, and trapping day laborers"', add
label define cr00a_occ4_lbl 9312 `"Day laborers of public works and maintenance of highways, dams, and similar (including cemeteries)"', add
label define cr00a_occ4_lbl 9313 `"Construction day laborers"', add
label define cr00a_occ4_lbl 9314 `"Electrician assistant"', add
label define cr00a_occ4_lbl 9322 `"Hand-packers and other day laborers in the manufacturing industry"', add
label define cr00a_occ4_lbl 9323 `"Mechanic assistant"', add
label define cr00a_occ4_lbl 9333 `"Cargo handlers"', add
label define cr00a_occ4_lbl 9334 `"Other transportation day laborers"', add
label define cr00a_occ4_lbl 9999 `"Response suppressed"', add
label values cr00a_occ4 cr00a_occ4_lbl

label define cr00a_classwk_lbl 0 `"NIU (not in universe)"'
label define cr00a_classwk_lbl 1 `"Owner/employer"', add
label define cr00a_classwk_lbl 2 `"Own-account"', add
label define cr00a_classwk_lbl 3 `"Salaried worker"', add
label define cr00a_classwk_lbl 4 `"Family worker"', add
label values cr00a_classwk cr00a_classwk_lbl

label define cr00a_chborn_lbl 00 `"0"'
label define cr00a_chborn_lbl 01 `"1"', add
label define cr00a_chborn_lbl 02 `"2"', add
label define cr00a_chborn_lbl 03 `"3"', add
label define cr00a_chborn_lbl 04 `"4"', add
label define cr00a_chborn_lbl 05 `"5"', add
label define cr00a_chborn_lbl 06 `"6"', add
label define cr00a_chborn_lbl 07 `"7"', add
label define cr00a_chborn_lbl 08 `"8"', add
label define cr00a_chborn_lbl 09 `"9"', add
label define cr00a_chborn_lbl 10 `"10"', add
label define cr00a_chborn_lbl 11 `"11"', add
label define cr00a_chborn_lbl 12 `"12"', add
label define cr00a_chborn_lbl 13 `"13"', add
label define cr00a_chborn_lbl 14 `"14"', add
label define cr00a_chborn_lbl 15 `"15"', add
label define cr00a_chborn_lbl 16 `"16"', add
label define cr00a_chborn_lbl 17 `"17"', add
label define cr00a_chborn_lbl 18 `"18"', add
label define cr00a_chborn_lbl 19 `"19"', add
label define cr00a_chborn_lbl 20 `"20+"', add
label define cr00a_chborn_lbl 98 `"Unknown"', add
label define cr00a_chborn_lbl 99 `"NIU (not in universe)"', add
label values cr00a_chborn cr00a_chborn_lbl

label define cr00a_chsurv_lbl 00 `"0"'
label define cr00a_chsurv_lbl 01 `"1"', add
label define cr00a_chsurv_lbl 02 `"2"', add
label define cr00a_chsurv_lbl 03 `"3"', add
label define cr00a_chsurv_lbl 04 `"4"', add
label define cr00a_chsurv_lbl 05 `"5"', add
label define cr00a_chsurv_lbl 06 `"6"', add
label define cr00a_chsurv_lbl 07 `"7"', add
label define cr00a_chsurv_lbl 08 `"8"', add
label define cr00a_chsurv_lbl 09 `"9"', add
label define cr00a_chsurv_lbl 10 `"10"', add
label define cr00a_chsurv_lbl 11 `"11"', add
label define cr00a_chsurv_lbl 12 `"12"', add
label define cr00a_chsurv_lbl 13 `"13"', add
label define cr00a_chsurv_lbl 14 `"14"', add
label define cr00a_chsurv_lbl 15 `"15"', add
label define cr00a_chsurv_lbl 16 `"16+"', add
label define cr00a_chsurv_lbl 98 `"Unknown"', add
label define cr00a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values cr00a_chsurv cr00a_chsurv_lbl

label define cr00a_hhtypep_lbl 00 `"NIU (not in universe)"'
label define cr00a_hhtypep_lbl 01 `"Nuclear family without children"', add
label define cr00a_hhtypep_lbl 02 `"Nuclear family with children"', add
label define cr00a_hhtypep_lbl 03 `"Nuclear single parent"', add
label define cr00a_hhtypep_lbl 04 `"Extended: nuclear family(1) plus other relatives"', add
label define cr00a_hhtypep_lbl 05 `"Extended: nuclear family(2) plus other relatives"', add
label define cr00a_hhtypep_lbl 06 `"Extended: nuclear family(3) plus other relatives"', add
label define cr00a_hhtypep_lbl 07 `"Extended: household head plus other relatives"', add
label define cr00a_hhtypep_lbl 08 `"Composite: nuclear family (1-3) plus other non-relatives"', add
label define cr00a_hhtypep_lbl 09 `"Composite: nuclear family (4-6) plus other non-relatives"', add
label define cr00a_hhtypep_lbl 10 `"Composite: hh head plus other relatives plus other non-relative"', add
label define cr00a_hhtypep_lbl 11 `"Single person"', add
label define cr00a_hhtypep_lbl 12 `"Non-familial: household head plus other non-relatives"', add
label define cr00a_hhtypep_lbl 13 `"Collective"', add
label values cr00a_hhtypep cr00a_hhtypep_lbl

label define cr00a_ind2r_lbl 00 `"NIU (not in universe)"'
label define cr00a_ind2r_lbl 01 `"Agriculture, livestock, hunting and forestry"', add
label define cr00a_ind2r_lbl 02 `"Fishery"', add
label define cr00a_ind2r_lbl 03 `"Mines and quarries"', add
label define cr00a_ind2r_lbl 04 `"Manufacturing industry"', add
label define cr00a_ind2r_lbl 05 `"Electricity, gas and water supply"', add
label define cr00a_ind2r_lbl 06 `"Construction"', add
label define cr00a_ind2r_lbl 07 `"Whole. and ret. sales, veh. repair, personal and hh appliances"', add
label define cr00a_ind2r_lbl 08 `"Hotels and restaurants"', add
label define cr00a_ind2r_lbl 09 `"Transportation, storage, and communications"', add
label define cr00a_ind2r_lbl 10 `"Financial services/intermediaries"', add
label define cr00a_ind2r_lbl 11 `"Real estate, private companies and rentals"', add
label define cr00a_ind2r_lbl 12 `"Pub admin and defense: soc sec plans of oblig participation"', add
label define cr00a_ind2r_lbl 13 `"Education"', add
label define cr00a_ind2r_lbl 14 `"Social services and health"', add
label define cr00a_ind2r_lbl 15 `"Other community, social and personal services"', add
label define cr00a_ind2r_lbl 16 `"Private homes with domestic service"', add
label define cr00a_ind2r_lbl 17 `"International and extraterritorial organizations"', add
label values cr00a_ind2r cr00a_ind2r_lbl

label define cr00a_yrschool_lbl 00 `"0"'
label define cr00a_yrschool_lbl 01 `"1"', add
label define cr00a_yrschool_lbl 02 `"2"', add
label define cr00a_yrschool_lbl 03 `"3"', add
label define cr00a_yrschool_lbl 04 `"4"', add
label define cr00a_yrschool_lbl 05 `"5"', add
label define cr00a_yrschool_lbl 06 `"6"', add
label define cr00a_yrschool_lbl 07 `"7"', add
label define cr00a_yrschool_lbl 08 `"8"', add
label define cr00a_yrschool_lbl 09 `"9"', add
label define cr00a_yrschool_lbl 10 `"10"', add
label define cr00a_yrschool_lbl 11 `"11"', add
label define cr00a_yrschool_lbl 12 `"12"', add
label define cr00a_yrschool_lbl 13 `"13"', add
label define cr00a_yrschool_lbl 14 `"14"', add
label define cr00a_yrschool_lbl 15 `"15"', add
label define cr00a_yrschool_lbl 16 `"16"', add
label define cr00a_yrschool_lbl 17 `"17"', add
label define cr00a_yrschool_lbl 18 `"18"', add
label define cr00a_yrschool_lbl 19 `"19"', add
label define cr00a_yrschool_lbl 99 `"NIU (not in universe)"', add
label values cr00a_yrschool cr00a_yrschool_lbl


