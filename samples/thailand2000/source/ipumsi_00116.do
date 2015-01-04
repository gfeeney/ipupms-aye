* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    th00a_dwnum     22-27    ///
  byte    th00a_pern      28-29    ///
  byte    th00a_fbig      30-30    ///
  byte    th00a_region    31-31    ///
  byte    th00a_prov      32-33    ///
  byte    th00a_area      34-34    ///
  byte    th00a_hhtype    35-35    ///
  byte    th00a_langhh    36-36    ///
  byte    th00a_langhho   37-38    ///
  byte    th00a_dwelltyp  39-40    ///
  byte    th00a_walls     41-41    ///
  byte    th00a_ownershp  42-42    ///
  byte    th00a_landown   43-43    ///
  byte    th00a_fuelcook  44-44    ///
  byte    th00a_toilet    45-45    ///
  byte    th00a_water     46-47    ///
  byte    th00a_watsup    48-49    ///
  byte    th00a_tv        50-51    ///
  byte    th00a_radio     52-53    ///
  byte    th00a_fridge    54-55    ///
  byte    th00a_washer    56-57    ///
  byte    th00a_phone     58-59    ///
  byte    th00a_aircond   60-61    ///
  byte    th00a_fan       62-63    ///
  byte    th00a_car       64-65    ///
  byte    th00a_moto      66-67    ///
  byte    th00a_bike      68-69    ///
  byte    th00a_agmach    70-71    ///
  byte    th00a_tractor   72-73    ///
  float   th00a_hhwt      74-80    ///
  int     pernum          81-83    ///
  float   wtper           84-91    ///
  byte    th00a_pernum    92-93    ///
  byte    th00a_relate    94-94    ///
  byte    th00a_sex       95-95    ///
  int     th00a_ager      96-98    ///
  byte    th00a_birthmo   99-100   ///
  int     th00a_birthyr   101-103  ///
  byte    th00a_relig     104-104  ///
  byte    th00a_nation    105-106  ///
  byte    th00a_gradeatt  107-108  ///
  byte    th00a_lit       109-109  ///
  byte    th00a_higrade   110-111  ///
  byte    th00a_marst     112-112  ///
  int     th00a_occ3      113-116  ///
  int     th00a_ind3      117-119  ///
  byte    th00a_classwk   120-121  ///
  int     th00a_occwk3    122-125  ///
  byte    th00a_seeking   126-126  ///
  byte    th00a_reaswork  127-128  ///
  byte    th00a_chsurv    129-130  ///
  byte    th00a_chdead    131-132  ///
  byte    th00a_births    133-133  ///
  byte    th00a_bpl       134-135  ///
  byte    th00a_durres    136-136  ///
  int     th00a_prevres   137-139  ///
  byte    th00a_prevdist  140-140  ///
  byte    th00a_prevplc   141-141  ///
  byte    th00a_migreas   142-143  ///
  byte    th00a_age       144-145  ///
  byte    th00a_chborn    146-147  ///
  float   th00a_perwt     148-154  ///
  using `"ipumsi_00116.dat"'

replace th00a_hhwt     = th00a_hhwt     / 10000
replace wtper          = wtper          / 100
replace th00a_perwt    = th00a_perwt    / 10000

format serial         %10.0f
format th00a_hhwt     %7.4f
format wtper          %8.2f
format th00a_perwt    %7.4f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var th00a_dwnum    `"Dwelling number"'
label var th00a_pern     `"Number of persons in household"'
label var th00a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var th00a_region   `"Region"'
label var th00a_prov     `"Province (changwat)"'
label var th00a_area     `"Area"'
label var th00a_hhtype   `"Household type"'
label var th00a_langhh   `"Language spoken in household"'
label var th00a_langhho  `"Other language"'
label var th00a_dwelltyp `"Type of living quarter"'
label var th00a_walls    `"Wall construction material"'
label var th00a_ownershp `"Tenure of living quarter"'
label var th00a_landown  `"Land ownership"'
label var th00a_fuelcook `"Cooking fuel"'
label var th00a_toilet   `"Toilet"'
label var th00a_water    `"Drinking water"'
label var th00a_watsup   `"Water supply"'
label var th00a_tv       `"Television"'
label var th00a_radio    `"Radio"'
label var th00a_fridge   `"Refrigerator"'
label var th00a_washer   `"Washing machine"'
label var th00a_phone    `"Telephone"'
label var th00a_aircond  `"Air conditioner"'
label var th00a_fan      `"Fan"'
label var th00a_car      `"Motor car"'
label var th00a_moto     `"Motorcycle"'
label var th00a_bike     `"Bicycle"'
label var th00a_agmach   `"Agriculture machine"'
label var th00a_tractor  `"Tractor"'
label var th00a_hhwt     `"Housing weight"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var th00a_pernum   `"Person number (within household)"'
label var th00a_relate   `"Relationship to head of household"'
label var th00a_sex      `"Sex"'
label var th00a_ager     `"Age, reported"'
label var th00a_birthmo  `"Birth month"'
label var th00a_birthyr  `"Birth year"'
label var th00a_relig    `"Religion"'
label var th00a_nation   `"Nationality"'
label var th00a_gradeatt `"Grade of school attended"'
label var th00a_lit      `"Literacy"'
label var th00a_higrade  `"Highest grade completed"'
label var th00a_marst    `"Marital status"'
label var th00a_occ3     `"Occupation last year, 3 digits"'
label var th00a_ind3     `"Industry last year, 3 digits"'
label var th00a_classwk  `"Work status"'
label var th00a_occwk3   `"Occupation last week, 3 digits"'
label var th00a_seeking  `"Availability and looking for work"'
label var th00a_reaswork `"Reason for no availability for work"'
label var th00a_chsurv   `"Number of living children"'
label var th00a_chdead   `"Number of children died"'
label var th00a_births   `"Number of new born babies"'
label var th00a_bpl      `"Province or country of birth"'
label var th00a_durres   `"Years at present residence"'
label var th00a_prevres  `"Province or country of previous residence"'
label var th00a_prevdist `"Previous district before moving"'
label var th00a_prevplc  `"Previous place before moving"'
label var th00a_migreas  `"Reason for moving"'
label var th00a_age      `"Age"'
label var th00a_chborn   `"Children ever born"'
label var th00a_perwt    `"Person weight"'

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

label define th00a_pern_lbl 01 `"1"'
label define th00a_pern_lbl 02 `"2"', add
label define th00a_pern_lbl 03 `"3"', add
label define th00a_pern_lbl 04 `"4"', add
label define th00a_pern_lbl 05 `"5"', add
label define th00a_pern_lbl 06 `"6"', add
label define th00a_pern_lbl 07 `"7"', add
label define th00a_pern_lbl 08 `"8"', add
label define th00a_pern_lbl 09 `"9"', add
label define th00a_pern_lbl 10 `"10"', add
label define th00a_pern_lbl 11 `"11"', add
label define th00a_pern_lbl 12 `"12"', add
label define th00a_pern_lbl 13 `"13"', add
label define th00a_pern_lbl 14 `"14"', add
label define th00a_pern_lbl 15 `"15"', add
label define th00a_pern_lbl 16 `"16"', add
label define th00a_pern_lbl 17 `"17"', add
label define th00a_pern_lbl 18 `"18"', add
label define th00a_pern_lbl 19 `"19"', add
label define th00a_pern_lbl 20 `"20"', add
label define th00a_pern_lbl 21 `"21"', add
label define th00a_pern_lbl 22 `"22"', add
label define th00a_pern_lbl 23 `"23"', add
label define th00a_pern_lbl 24 `"24"', add
label define th00a_pern_lbl 25 `"25"', add
label define th00a_pern_lbl 27 `"27"', add
label define th00a_pern_lbl 30 `"30"', add
label values th00a_pern th00a_pern_lbl

label define th00a_fbig_lbl 0 `"No problem"'
label define th00a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define th00a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values th00a_fbig th00a_fbig_lbl

label define th00a_region_lbl 1 `"Bangkok"'
label define th00a_region_lbl 2 `"Central region (exclude Bangkok )"', add
label define th00a_region_lbl 3 `"Northern region"', add
label define th00a_region_lbl 4 `"Northeastern region"', add
label define th00a_region_lbl 5 `"Southern region"', add
label values th00a_region th00a_region_lbl

label define th00a_prov_lbl 10 `"Bangkok"'
label define th00a_prov_lbl 11 `"Samut Prakan"', add
label define th00a_prov_lbl 12 `"Nonthaburi"', add
label define th00a_prov_lbl 13 `"Pathum Thani"', add
label define th00a_prov_lbl 14 `"Phra Nakhon si Ayutthaya"', add
label define th00a_prov_lbl 15 `"Ang Thong"', add
label define th00a_prov_lbl 16 `"Lop Buri"', add
label define th00a_prov_lbl 17 `"Sing Buri"', add
label define th00a_prov_lbl 18 `"Chai Nat"', add
label define th00a_prov_lbl 19 `"Sa Kaeo"', add
label define th00a_prov_lbl 20 `"Chon buri"', add
label define th00a_prov_lbl 21 `"Rayong"', add
label define th00a_prov_lbl 22 `"Chanthaburi"', add
label define th00a_prov_lbl 23 `"Trat"', add
label define th00a_prov_lbl 24 `"Chachoengsao"', add
label define th00a_prov_lbl 25 `"Prachin Buri"', add
label define th00a_prov_lbl 26 `"Nakhon Nayok"', add
label define th00a_prov_lbl 27 `"Saraburi"', add
label define th00a_prov_lbl 30 `"Nakhon Ratchasima"', add
label define th00a_prov_lbl 31 `"Buri Ram"', add
label define th00a_prov_lbl 32 `"Surin"', add
label define th00a_prov_lbl 33 `"Si Sa Ket"', add
label define th00a_prov_lbl 34 `"Ubon Ratchathani"', add
label define th00a_prov_lbl 35 `"Yasothon"', add
label define th00a_prov_lbl 36 `"Chaiyaphum"', add
label define th00a_prov_lbl 37 `"Amnat Charoen"', add
label define th00a_prov_lbl 39 `"Nong Bua Lam Phu"', add
label define th00a_prov_lbl 40 `"Khon Kaen"', add
label define th00a_prov_lbl 41 `"Udon Thani"', add
label define th00a_prov_lbl 42 `"Loei"', add
label define th00a_prov_lbl 43 `"Nong Khai"', add
label define th00a_prov_lbl 44 `"Maha Sarakham"', add
label define th00a_prov_lbl 45 `"Roi Et"', add
label define th00a_prov_lbl 46 `"Kalasin"', add
label define th00a_prov_lbl 47 `"Sakon Nakhon"', add
label define th00a_prov_lbl 48 `"Nakhon Phanom"', add
label define th00a_prov_lbl 49 `"Mukdahan"', add
label define th00a_prov_lbl 50 `"Chiang Mai"', add
label define th00a_prov_lbl 51 `"Lamphun"', add
label define th00a_prov_lbl 52 `"Lampang"', add
label define th00a_prov_lbl 53 `"Uttaradit"', add
label define th00a_prov_lbl 54 `"Phrae"', add
label define th00a_prov_lbl 55 `"Nan"', add
label define th00a_prov_lbl 56 `"Phayao"', add
label define th00a_prov_lbl 57 `"Chiang Rai"', add
label define th00a_prov_lbl 58 `"Mae Hong Son"', add
label define th00a_prov_lbl 60 `"Nakhon Sawan"', add
label define th00a_prov_lbl 61 `"Uthai Thani"', add
label define th00a_prov_lbl 62 `"Kamphaeng Phet"', add
label define th00a_prov_lbl 63 `"Tak"', add
label define th00a_prov_lbl 64 `"Sukhothai"', add
label define th00a_prov_lbl 65 `"Phitsanulok"', add
label define th00a_prov_lbl 66 `"Phichit"', add
label define th00a_prov_lbl 67 `"Phetchabun"', add
label define th00a_prov_lbl 70 `"Ratchaburi"', add
label define th00a_prov_lbl 71 `"Kanchanaburi"', add
label define th00a_prov_lbl 72 `"Suphanburi"', add
label define th00a_prov_lbl 73 `"Nakhon Pathom"', add
label define th00a_prov_lbl 74 `"Samut Sakhon"', add
label define th00a_prov_lbl 75 `"Samut Songkhram"', add
label define th00a_prov_lbl 76 `"Phetchaburi"', add
label define th00a_prov_lbl 77 `"Prachuap Khiri Khan"', add
label define th00a_prov_lbl 80 `"Nakhon Si Thammarat"', add
label define th00a_prov_lbl 81 `"Krabi"', add
label define th00a_prov_lbl 82 `"Phangnga"', add
label define th00a_prov_lbl 83 `"Phuket"', add
label define th00a_prov_lbl 84 `"Surat Thani"', add
label define th00a_prov_lbl 85 `"Ranong"', add
label define th00a_prov_lbl 86 `"Chumphon"', add
label define th00a_prov_lbl 90 `"Songkhla"', add
label define th00a_prov_lbl 91 `"Satun"', add
label define th00a_prov_lbl 92 `"Trang"', add
label define th00a_prov_lbl 93 `"Phatthalung"', add
label define th00a_prov_lbl 94 `"Pattani"', add
label define th00a_prov_lbl 95 `"Yala"', add
label define th00a_prov_lbl 96 `"Narathiwat"', add
label values th00a_prov th00a_prov_lbl

label define th00a_area_lbl 1 `"Municipal area"'
label define th00a_area_lbl 2 `"Non municipal area"', add
label values th00a_area th00a_area_lbl

label define th00a_hhtype_lbl 1 `"Private household"'
label define th00a_hhtype_lbl 2 `"Special household"', add
label define th00a_hhtype_lbl 3 `"Institutional household"', add
label values th00a_hhtype th00a_hhtype_lbl

label define th00a_langhh_lbl 1 `"Only Thai Language"'
label define th00a_langhh_lbl 2 `"Thai and other languages"', add
label define th00a_langhh_lbl 3 `"Only other languages"', add
label values th00a_langhh th00a_langhh_lbl

label define th00a_langhho_lbl 01 `"Japanese"'
label define th00a_langhho_lbl 02 `"Chinese"', add
label define th00a_langhho_lbl 03 `"Malaysia-yawi"', add
label define th00a_langhho_lbl 04 `"Myanmar, Pesguans"', add
label define th00a_langhho_lbl 05 `"Cambodia"', add
label define th00a_langhho_lbl 06 `"Lao - Vietnam"', add
label define th00a_langhho_lbl 07 `"English"', add
label define th00a_langhho_lbl 08 `"Western languages such as French, German, Spanish"', add
label define th00a_langhho_lbl 09 `"Ti"', add
label define th00a_langhho_lbl 10 `"Lahu"', add
label define th00a_langhho_lbl 11 `"Lisu"', add
label define th00a_langhho_lbl 12 `"Akha"', add
label define th00a_langhho_lbl 13 `"Khamu"', add
label define th00a_langhho_lbl 14 `"Lau"', add
label define th00a_langhho_lbl 15 `"Htin"', add
label define th00a_langhho_lbl 16 `"Karen"', add
label define th00a_langhho_lbl 17 `"Meo"', add
label define th00a_langhho_lbl 18 `"Yao"', add
label define th00a_langhho_lbl 19 `"Haw, Yannanese"', add
label define th00a_langhho_lbl 20 `"India"', add
label define th00a_langhho_lbl 21 `"Others"', add
label define th00a_langhho_lbl 98 `"Unknown"', add
label define th00a_langhho_lbl 99 `"NIU (not in universe)"', add
label values th00a_langhho th00a_langhho_lbl

label define th00a_dwelltyp_lbl 01 `"Detached house"'
label define th00a_dwelltyp_lbl 02 `"Town house"', add
label define th00a_dwelltyp_lbl 03 `"Apartment, flat, condominium  and others"', add
label define th00a_dwelltyp_lbl 04 `"Row house"', add
label define th00a_dwelltyp_lbl 05 `"Brick row house"', add
label define th00a_dwelltyp_lbl 06 `"Room"', add
label define th00a_dwelltyp_lbl 07 `"Office room"', add
label define th00a_dwelltyp_lbl 08 `"Mobile"', add
label define th00a_dwelltyp_lbl 09 `"Others"', add
label define th00a_dwelltyp_lbl 98 `"Unknown"', add
label define th00a_dwelltyp_lbl 99 `"NIU (not in universe)"', add
label values th00a_dwelltyp th00a_dwelltyp_lbl

label define th00a_walls_lbl 1 `"Cement or brick"'
label define th00a_walls_lbl 2 `"Wood and cement or brick"', add
label define th00a_walls_lbl 3 `"Mainly permanent materials"', add
label define th00a_walls_lbl 4 `"Non-permanent materials"', add
label define th00a_walls_lbl 5 `"Reused materials"', add
label define th00a_walls_lbl 8 `"Unknown"', add
label define th00a_walls_lbl 9 `"NIU (not in universe)"', add
label values th00a_walls th00a_walls_lbl

label define th00a_ownershp_lbl 1 `"Owner"'
label define th00a_ownershp_lbl 2 `"Hire purchaser"', add
label define th00a_ownershp_lbl 3 `"Rent"', add
label define th00a_ownershp_lbl 4 `"Rent free: as part of wage or salary"', add
label define th00a_ownershp_lbl 5 `"Rent free: allowed to stay without payment"', add
label define th00a_ownershp_lbl 8 `"Unknown"', add
label define th00a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values th00a_ownershp th00a_ownershp_lbl

label define th00a_landown_lbl 1 `"Owner"'
label define th00a_landown_lbl 2 `"Hire purchaser"', add
label define th00a_landown_lbl 3 `"Rent"', add
label define th00a_landown_lbl 4 `"Rent free"', add
label define th00a_landown_lbl 5 `"Others"', add
label define th00a_landown_lbl 8 `"Unknown"', add
label define th00a_landown_lbl 9 `"NIU (not in universe)"', add
label values th00a_landown th00a_landown_lbl

label define th00a_fuelcook_lbl 1 `"Charcoal"'
label define th00a_fuelcook_lbl 2 `"Wood"', add
label define th00a_fuelcook_lbl 3 `"Gas"', add
label define th00a_fuelcook_lbl 4 `"Electricity"', add
label define th00a_fuelcook_lbl 5 `"Kerosene"', add
label define th00a_fuelcook_lbl 6 `"Others"', add
label define th00a_fuelcook_lbl 7 `"Not cooking"', add
label define th00a_fuelcook_lbl 8 `"Unknown"', add
label define th00a_fuelcook_lbl 9 `"NIU (not in universe)"', add
label values th00a_fuelcook th00a_fuelcook_lbl

label define th00a_toilet_lbl 1 `"Flush toilet"'
label define th00a_toilet_lbl 2 `"Molded bucket latrine"', add
label define th00a_toilet_lbl 3 `"Flush and molded bucket latrine"', add
label define th00a_toilet_lbl 4 `"Pits/ waste disposed to river or canal and others"', add
label define th00a_toilet_lbl 5 `"No latrine"', add
label define th00a_toilet_lbl 8 `"Unknown"', add
label define th00a_toilet_lbl 9 `"NIU (not in universe)"', add
label values th00a_toilet th00a_toilet_lbl

label define th00a_water_lbl 01 `"Tap water inside"'
label define th00a_water_lbl 02 `"Tap water outside"', add
label define th00a_water_lbl 03 `"Public well"', add
label define th00a_water_lbl 04 `"Private well"', add
label define th00a_water_lbl 05 `"Rain water"', add
label define th00a_water_lbl 06 `"River, canal, stream, waterfall"', add
label define th00a_water_lbl 07 `"Bottled water"', add
label define th00a_water_lbl 08 `"Others"', add
label define th00a_water_lbl 98 `"Unknown"', add
label define th00a_water_lbl 99 `"NIU (not in universe)"', add
label values th00a_water th00a_water_lbl

label define th00a_watsup_lbl 01 `"Tap water inside"'
label define th00a_watsup_lbl 02 `"Tap water outside"', add
label define th00a_watsup_lbl 03 `"Public well"', add
label define th00a_watsup_lbl 04 `"Private well"', add
label define th00a_watsup_lbl 05 `"Rain water"', add
label define th00a_watsup_lbl 06 `"River, canal, stream, waterfall"', add
label define th00a_watsup_lbl 08 `"Others"', add
label define th00a_watsup_lbl 98 `"Unknown"', add
label define th00a_watsup_lbl 99 `"NIU (not in universe)"', add
label values th00a_watsup th00a_watsup_lbl

label define th00a_tv_lbl 00 `"None"'
label define th00a_tv_lbl 01 `"1"', add
label define th00a_tv_lbl 02 `"2"', add
label define th00a_tv_lbl 03 `"3"', add
label define th00a_tv_lbl 04 `"4"', add
label define th00a_tv_lbl 05 `"5"', add
label define th00a_tv_lbl 06 `"6"', add
label define th00a_tv_lbl 07 `"7 and over"', add
label define th00a_tv_lbl 08 `"Yes, unspecified number"', add
label define th00a_tv_lbl 98 `"Unknown"', add
label define th00a_tv_lbl 99 `"NIU (not in universe)"', add
label values th00a_tv th00a_tv_lbl

label define th00a_radio_lbl 00 `"None"'
label define th00a_radio_lbl 01 `"1"', add
label define th00a_radio_lbl 02 `"2"', add
label define th00a_radio_lbl 03 `"3"', add
label define th00a_radio_lbl 04 `"4"', add
label define th00a_radio_lbl 05 `"5"', add
label define th00a_radio_lbl 06 `"6"', add
label define th00a_radio_lbl 07 `"7 and over"', add
label define th00a_radio_lbl 08 `"Yes, unspecified number"', add
label define th00a_radio_lbl 98 `"Unknown"', add
label define th00a_radio_lbl 99 `"NIU (not in universe)"', add
label values th00a_radio th00a_radio_lbl

label define th00a_fridge_lbl 00 `"None"'
label define th00a_fridge_lbl 01 `"1"', add
label define th00a_fridge_lbl 02 `"2"', add
label define th00a_fridge_lbl 03 `"3"', add
label define th00a_fridge_lbl 04 `"4"', add
label define th00a_fridge_lbl 05 `"5"', add
label define th00a_fridge_lbl 06 `"6"', add
label define th00a_fridge_lbl 07 `"7 and over"', add
label define th00a_fridge_lbl 08 `"Yes, unspecified number"', add
label define th00a_fridge_lbl 98 `"Unknown"', add
label define th00a_fridge_lbl 99 `"NIU (not in universe)"', add
label values th00a_fridge th00a_fridge_lbl

label define th00a_washer_lbl 00 `"None"'
label define th00a_washer_lbl 01 `"1"', add
label define th00a_washer_lbl 02 `"2"', add
label define th00a_washer_lbl 03 `"3"', add
label define th00a_washer_lbl 04 `"4"', add
label define th00a_washer_lbl 05 `"5"', add
label define th00a_washer_lbl 06 `"6"', add
label define th00a_washer_lbl 07 `"7 and over"', add
label define th00a_washer_lbl 08 `"Yes, unspecified number"', add
label define th00a_washer_lbl 98 `"Unknown"', add
label define th00a_washer_lbl 99 `"NIU (not in universe)"', add
label values th00a_washer th00a_washer_lbl

label define th00a_phone_lbl 00 `"None"'
label define th00a_phone_lbl 01 `"1"', add
label define th00a_phone_lbl 02 `"2"', add
label define th00a_phone_lbl 03 `"3"', add
label define th00a_phone_lbl 04 `"4"', add
label define th00a_phone_lbl 05 `"5"', add
label define th00a_phone_lbl 06 `"6"', add
label define th00a_phone_lbl 07 `"7 and over"', add
label define th00a_phone_lbl 08 `"Yes, unspecified number"', add
label define th00a_phone_lbl 98 `"Unknown"', add
label define th00a_phone_lbl 99 `"NIU (not in universe)"', add
label values th00a_phone th00a_phone_lbl

label define th00a_aircond_lbl 00 `"None"'
label define th00a_aircond_lbl 01 `"1"', add
label define th00a_aircond_lbl 02 `"2"', add
label define th00a_aircond_lbl 03 `"3"', add
label define th00a_aircond_lbl 04 `"4"', add
label define th00a_aircond_lbl 05 `"5"', add
label define th00a_aircond_lbl 06 `"6"', add
label define th00a_aircond_lbl 07 `"7 and over"', add
label define th00a_aircond_lbl 08 `"Yes, unspecified number"', add
label define th00a_aircond_lbl 98 `"Unknown"', add
label define th00a_aircond_lbl 99 `"NIU (not in universe)"', add
label values th00a_aircond th00a_aircond_lbl

label define th00a_fan_lbl 00 `"None"'
label define th00a_fan_lbl 01 `"1"', add
label define th00a_fan_lbl 02 `"2"', add
label define th00a_fan_lbl 03 `"3"', add
label define th00a_fan_lbl 04 `"4"', add
label define th00a_fan_lbl 05 `"5"', add
label define th00a_fan_lbl 06 `"6"', add
label define th00a_fan_lbl 07 `"7 and over"', add
label define th00a_fan_lbl 08 `"Yes, unspecified number"', add
label define th00a_fan_lbl 98 `"Unknown"', add
label define th00a_fan_lbl 99 `"NIU (not in universe)"', add
label values th00a_fan th00a_fan_lbl

label define th00a_car_lbl 00 `"None"'
label define th00a_car_lbl 01 `"1"', add
label define th00a_car_lbl 02 `"2"', add
label define th00a_car_lbl 03 `"3"', add
label define th00a_car_lbl 04 `"4"', add
label define th00a_car_lbl 05 `"5"', add
label define th00a_car_lbl 06 `"6"', add
label define th00a_car_lbl 07 `"7 and over"', add
label define th00a_car_lbl 08 `"Yes, unspecified number"', add
label define th00a_car_lbl 98 `"Unknown"', add
label define th00a_car_lbl 99 `"NIU (not in universe)"', add
label values th00a_car th00a_car_lbl

label define th00a_moto_lbl 00 `"None"'
label define th00a_moto_lbl 01 `"1"', add
label define th00a_moto_lbl 02 `"2"', add
label define th00a_moto_lbl 03 `"3"', add
label define th00a_moto_lbl 04 `"4"', add
label define th00a_moto_lbl 05 `"5"', add
label define th00a_moto_lbl 06 `"6"', add
label define th00a_moto_lbl 07 `"7 and over"', add
label define th00a_moto_lbl 08 `"Yes, unspecified number"', add
label define th00a_moto_lbl 98 `"Unknown"', add
label define th00a_moto_lbl 99 `"NIU (not in universe)"', add
label values th00a_moto th00a_moto_lbl

label define th00a_bike_lbl 00 `"None"'
label define th00a_bike_lbl 01 `"1"', add
label define th00a_bike_lbl 02 `"2"', add
label define th00a_bike_lbl 03 `"3"', add
label define th00a_bike_lbl 04 `"4"', add
label define th00a_bike_lbl 05 `"5"', add
label define th00a_bike_lbl 06 `"6"', add
label define th00a_bike_lbl 07 `"7 and over"', add
label define th00a_bike_lbl 08 `"Yes, unspecified number"', add
label define th00a_bike_lbl 98 `"Unknown"', add
label define th00a_bike_lbl 99 `"NIU (not in universe)"', add
label values th00a_bike th00a_bike_lbl

label define th00a_agmach_lbl 00 `"None"'
label define th00a_agmach_lbl 01 `"1"', add
label define th00a_agmach_lbl 02 `"2"', add
label define th00a_agmach_lbl 03 `"3"', add
label define th00a_agmach_lbl 04 `"4"', add
label define th00a_agmach_lbl 05 `"5"', add
label define th00a_agmach_lbl 06 `"6"', add
label define th00a_agmach_lbl 07 `"7 and over"', add
label define th00a_agmach_lbl 08 `"Yes, unspecified number"', add
label define th00a_agmach_lbl 98 `"Unknown"', add
label define th00a_agmach_lbl 99 `"NIU (not in universe)"', add
label values th00a_agmach th00a_agmach_lbl

label define th00a_tractor_lbl 00 `"None"'
label define th00a_tractor_lbl 01 `"1"', add
label define th00a_tractor_lbl 02 `"2"', add
label define th00a_tractor_lbl 03 `"3"', add
label define th00a_tractor_lbl 04 `"4"', add
label define th00a_tractor_lbl 05 `"5 or over"', add
label define th00a_tractor_lbl 08 `"Yes, unspecified number"', add
label define th00a_tractor_lbl 98 `"Unknown"', add
label define th00a_tractor_lbl 99 `"NIU (not in universe)"', add
label values th00a_tractor th00a_tractor_lbl

label define th00a_hhwt_lbl 0944012 `"944012"'
label define th00a_hhwt_lbl 0969870 `"969870"', add
label define th00a_hhwt_lbl 0973553 `"973553"', add
label define th00a_hhwt_lbl 0978515 `"978515"', add
label define th00a_hhwt_lbl 0980665 `"980665"', add
label define th00a_hhwt_lbl 0985577 `"985577"', add
label define th00a_hhwt_lbl 0988835 `"988835"', add
label define th00a_hhwt_lbl 1023505 `"1023505"', add
label define th00a_hhwt_lbl 1071715 `"1071715"', add
label define th00a_hhwt_lbl 0977680 `"977680"', add
label values th00a_hhwt th00a_hhwt_lbl

label define th00a_pernum_lbl 00 `"Household record"'
label define th00a_pernum_lbl 01 `"1"', add
label define th00a_pernum_lbl 02 `"2"', add
label define th00a_pernum_lbl 03 `"3"', add
label define th00a_pernum_lbl 04 `"4"', add
label define th00a_pernum_lbl 05 `"5"', add
label define th00a_pernum_lbl 06 `"6"', add
label define th00a_pernum_lbl 07 `"7"', add
label define th00a_pernum_lbl 08 `"8"', add
label define th00a_pernum_lbl 09 `"9"', add
label define th00a_pernum_lbl 10 `"10"', add
label define th00a_pernum_lbl 11 `"11"', add
label define th00a_pernum_lbl 12 `"12"', add
label define th00a_pernum_lbl 13 `"13"', add
label define th00a_pernum_lbl 14 `"14"', add
label define th00a_pernum_lbl 15 `"15"', add
label define th00a_pernum_lbl 16 `"16"', add
label define th00a_pernum_lbl 17 `"17"', add
label define th00a_pernum_lbl 18 `"18"', add
label define th00a_pernum_lbl 19 `"19"', add
label define th00a_pernum_lbl 20 `"20"', add
label define th00a_pernum_lbl 21 `"21"', add
label define th00a_pernum_lbl 22 `"22"', add
label define th00a_pernum_lbl 23 `"23"', add
label define th00a_pernum_lbl 24 `"24"', add
label define th00a_pernum_lbl 25 `"25"', add
label define th00a_pernum_lbl 26 `"26"', add
label define th00a_pernum_lbl 27 `"27"', add
label define th00a_pernum_lbl 28 `"28"', add
label define th00a_pernum_lbl 29 `"29"', add
label define th00a_pernum_lbl 30 `"30"', add
label values th00a_pernum th00a_pernum_lbl

label define th00a_relate_lbl 0 `"Special / institutional household member"'
label define th00a_relate_lbl 1 `"Head"', add
label define th00a_relate_lbl 2 `"Spouse"', add
label define th00a_relate_lbl 3 `"Unmarried children (Include step child and adopted child)"', add
label define th00a_relate_lbl 4 `"Married children (Include step child and adopted child)"', add
label define th00a_relate_lbl 5 `"Son / daughter-in-law (Include son or daughter-in-law of step child and adopted child)"', add
label define th00a_relate_lbl 6 `"Grandchild or grandchild of step child or spouses of grandchild (step child and adopted child)"', add
label define th00a_relate_lbl 7 `"Parents and grandparents"', add
label define th00a_relate_lbl 8 `"Other relatives such as brother, niece/nephew stepfather stepmother etc."', add
label define th00a_relate_lbl 9 `"Non-relatives and servant"', add
label values th00a_relate th00a_relate_lbl

label define th00a_sex_lbl 1 `"Male"'
label define th00a_sex_lbl 2 `"Female"', add
label values th00a_sex th00a_sex_lbl

label define th00a_ager_lbl 000 `"0"'
label define th00a_ager_lbl 001 `"1"', add
label define th00a_ager_lbl 002 `"2"', add
label define th00a_ager_lbl 003 `"3"', add
label define th00a_ager_lbl 004 `"4"', add
label define th00a_ager_lbl 005 `"5"', add
label define th00a_ager_lbl 006 `"6"', add
label define th00a_ager_lbl 007 `"7"', add
label define th00a_ager_lbl 008 `"8"', add
label define th00a_ager_lbl 009 `"9"', add
label define th00a_ager_lbl 010 `"10"', add
label define th00a_ager_lbl 011 `"11"', add
label define th00a_ager_lbl 012 `"12"', add
label define th00a_ager_lbl 013 `"13"', add
label define th00a_ager_lbl 014 `"14"', add
label define th00a_ager_lbl 015 `"15"', add
label define th00a_ager_lbl 016 `"16"', add
label define th00a_ager_lbl 017 `"17"', add
label define th00a_ager_lbl 018 `"18"', add
label define th00a_ager_lbl 019 `"19"', add
label define th00a_ager_lbl 020 `"20"', add
label define th00a_ager_lbl 021 `"21"', add
label define th00a_ager_lbl 022 `"22"', add
label define th00a_ager_lbl 023 `"23"', add
label define th00a_ager_lbl 024 `"24"', add
label define th00a_ager_lbl 025 `"25"', add
label define th00a_ager_lbl 026 `"26"', add
label define th00a_ager_lbl 027 `"27"', add
label define th00a_ager_lbl 028 `"28"', add
label define th00a_ager_lbl 029 `"29"', add
label define th00a_ager_lbl 030 `"30"', add
label define th00a_ager_lbl 031 `"31"', add
label define th00a_ager_lbl 032 `"32"', add
label define th00a_ager_lbl 033 `"33"', add
label define th00a_ager_lbl 034 `"34"', add
label define th00a_ager_lbl 035 `"35"', add
label define th00a_ager_lbl 036 `"36"', add
label define th00a_ager_lbl 037 `"37"', add
label define th00a_ager_lbl 038 `"38"', add
label define th00a_ager_lbl 039 `"39"', add
label define th00a_ager_lbl 040 `"40"', add
label define th00a_ager_lbl 041 `"41"', add
label define th00a_ager_lbl 042 `"42"', add
label define th00a_ager_lbl 043 `"43"', add
label define th00a_ager_lbl 044 `"44"', add
label define th00a_ager_lbl 045 `"45"', add
label define th00a_ager_lbl 046 `"46"', add
label define th00a_ager_lbl 047 `"47"', add
label define th00a_ager_lbl 048 `"48"', add
label define th00a_ager_lbl 049 `"49"', add
label define th00a_ager_lbl 050 `"50"', add
label define th00a_ager_lbl 051 `"51"', add
label define th00a_ager_lbl 052 `"52"', add
label define th00a_ager_lbl 053 `"53"', add
label define th00a_ager_lbl 054 `"54"', add
label define th00a_ager_lbl 055 `"55"', add
label define th00a_ager_lbl 056 `"56"', add
label define th00a_ager_lbl 057 `"57"', add
label define th00a_ager_lbl 058 `"58"', add
label define th00a_ager_lbl 059 `"59"', add
label define th00a_ager_lbl 060 `"60"', add
label define th00a_ager_lbl 061 `"61"', add
label define th00a_ager_lbl 062 `"62"', add
label define th00a_ager_lbl 063 `"63"', add
label define th00a_ager_lbl 064 `"64"', add
label define th00a_ager_lbl 065 `"65"', add
label define th00a_ager_lbl 066 `"66"', add
label define th00a_ager_lbl 067 `"67"', add
label define th00a_ager_lbl 068 `"68"', add
label define th00a_ager_lbl 069 `"69"', add
label define th00a_ager_lbl 070 `"70"', add
label define th00a_ager_lbl 071 `"71"', add
label define th00a_ager_lbl 072 `"72"', add
label define th00a_ager_lbl 073 `"73"', add
label define th00a_ager_lbl 074 `"74"', add
label define th00a_ager_lbl 075 `"75"', add
label define th00a_ager_lbl 076 `"76"', add
label define th00a_ager_lbl 077 `"77"', add
label define th00a_ager_lbl 078 `"78"', add
label define th00a_ager_lbl 079 `"79"', add
label define th00a_ager_lbl 080 `"80"', add
label define th00a_ager_lbl 081 `"81"', add
label define th00a_ager_lbl 082 `"82"', add
label define th00a_ager_lbl 083 `"83"', add
label define th00a_ager_lbl 084 `"84"', add
label define th00a_ager_lbl 085 `"85"', add
label define th00a_ager_lbl 086 `"86"', add
label define th00a_ager_lbl 087 `"87"', add
label define th00a_ager_lbl 088 `"88"', add
label define th00a_ager_lbl 089 `"89"', add
label define th00a_ager_lbl 090 `"90"', add
label define th00a_ager_lbl 091 `"91"', add
label define th00a_ager_lbl 092 `"92"', add
label define th00a_ager_lbl 093 `"93"', add
label define th00a_ager_lbl 094 `"94"', add
label define th00a_ager_lbl 095 `"95"', add
label define th00a_ager_lbl 096 `"96"', add
label define th00a_ager_lbl 097 `"97"', add
label define th00a_ager_lbl 098 `"98 years and over"', add
label define th00a_ager_lbl 998 `"Unknown"', add
label values th00a_ager th00a_ager_lbl

label define th00a_birthmo_lbl 01 `"Solar, January"'
label define th00a_birthmo_lbl 02 `"Solar, February"', add
label define th00a_birthmo_lbl 03 `"Solar, March"', add
label define th00a_birthmo_lbl 04 `"Solar, April"', add
label define th00a_birthmo_lbl 05 `"Solar, May"', add
label define th00a_birthmo_lbl 06 `"Solar, June"', add
label define th00a_birthmo_lbl 07 `"Solar, July"', add
label define th00a_birthmo_lbl 08 `"Solar, August"', add
label define th00a_birthmo_lbl 09 `"Solar, September"', add
label define th00a_birthmo_lbl 10 `"Solar, October"', add
label define th00a_birthmo_lbl 11 `"Solar, November"', add
label define th00a_birthmo_lbl 12 `"Solar, December"', add
label define th00a_birthmo_lbl 21 `"Lunar month 1 (December)"', add
label define th00a_birthmo_lbl 22 `"Lunar month 2 (January)"', add
label define th00a_birthmo_lbl 23 `"Lunar month 3 (February)"', add
label define th00a_birthmo_lbl 24 `"Lunar month 4 (March)"', add
label define th00a_birthmo_lbl 25 `"Lunar month 5 (April)"', add
label define th00a_birthmo_lbl 26 `"Lunar month 6 (May)"', add
label define th00a_birthmo_lbl 27 `"Lunar month 7 (June)"', add
label define th00a_birthmo_lbl 28 `"Lunar month 8 (July)"', add
label define th00a_birthmo_lbl 29 `"Lunar month 9 (August)"', add
label define th00a_birthmo_lbl 30 `"Lunar month 10 (September)"', add
label define th00a_birthmo_lbl 31 `"Lunar month 11 (October)"', add
label define th00a_birthmo_lbl 32 `"Lunar month 12 (November)"', add
label define th00a_birthmo_lbl 98 `"Unknown"', add
label values th00a_birthmo th00a_birthmo_lbl

label define th00a_birthyr_lbl 000 `"Rabbit"'
label define th00a_birthyr_lbl 001 `"Tiger"', add
label define th00a_birthyr_lbl 002 `"Cow"', add
label define th00a_birthyr_lbl 003 `"Rat"', add
label define th00a_birthyr_lbl 004 `"Pig"', add
label define th00a_birthyr_lbl 005 `"Dog"', add
label define th00a_birthyr_lbl 006 `"Cock"', add
label define th00a_birthyr_lbl 007 `"Monkey"', add
label define th00a_birthyr_lbl 008 `"Goat"', add
label define th00a_birthyr_lbl 009 `"Horse"', add
label define th00a_birthyr_lbl 010 `"Snake (small)"', add
label define th00a_birthyr_lbl 011 `"Snake (big)"', add
label define th00a_birthyr_lbl 444 `"1901"', add
label define th00a_birthyr_lbl 445 `"1902"', add
label define th00a_birthyr_lbl 446 `"1903"', add
label define th00a_birthyr_lbl 447 `"1904"', add
label define th00a_birthyr_lbl 448 `"1905"', add
label define th00a_birthyr_lbl 449 `"1906"', add
label define th00a_birthyr_lbl 450 `"1907"', add
label define th00a_birthyr_lbl 451 `"1908"', add
label define th00a_birthyr_lbl 452 `"1909"', add
label define th00a_birthyr_lbl 453 `"1910"', add
label define th00a_birthyr_lbl 454 `"1911"', add
label define th00a_birthyr_lbl 455 `"1912"', add
label define th00a_birthyr_lbl 456 `"1913"', add
label define th00a_birthyr_lbl 457 `"1914"', add
label define th00a_birthyr_lbl 458 `"1915"', add
label define th00a_birthyr_lbl 459 `"1916"', add
label define th00a_birthyr_lbl 460 `"1917"', add
label define th00a_birthyr_lbl 461 `"1918"', add
label define th00a_birthyr_lbl 462 `"1919"', add
label define th00a_birthyr_lbl 463 `"1920"', add
label define th00a_birthyr_lbl 464 `"1921"', add
label define th00a_birthyr_lbl 465 `"1922"', add
label define th00a_birthyr_lbl 466 `"1923"', add
label define th00a_birthyr_lbl 467 `"1924"', add
label define th00a_birthyr_lbl 468 `"1925"', add
label define th00a_birthyr_lbl 469 `"1926"', add
label define th00a_birthyr_lbl 470 `"1927"', add
label define th00a_birthyr_lbl 471 `"1928"', add
label define th00a_birthyr_lbl 472 `"1929"', add
label define th00a_birthyr_lbl 473 `"1930"', add
label define th00a_birthyr_lbl 474 `"1931"', add
label define th00a_birthyr_lbl 475 `"1932"', add
label define th00a_birthyr_lbl 476 `"1933"', add
label define th00a_birthyr_lbl 477 `"1934"', add
label define th00a_birthyr_lbl 478 `"1935"', add
label define th00a_birthyr_lbl 479 `"1936"', add
label define th00a_birthyr_lbl 480 `"1937"', add
label define th00a_birthyr_lbl 481 `"1938"', add
label define th00a_birthyr_lbl 482 `"1939"', add
label define th00a_birthyr_lbl 483 `"1940"', add
label define th00a_birthyr_lbl 484 `"1941"', add
label define th00a_birthyr_lbl 485 `"1942"', add
label define th00a_birthyr_lbl 486 `"1943"', add
label define th00a_birthyr_lbl 487 `"1944"', add
label define th00a_birthyr_lbl 488 `"1945"', add
label define th00a_birthyr_lbl 489 `"1946"', add
label define th00a_birthyr_lbl 490 `"1947"', add
label define th00a_birthyr_lbl 491 `"1948"', add
label define th00a_birthyr_lbl 492 `"1949"', add
label define th00a_birthyr_lbl 493 `"1950"', add
label define th00a_birthyr_lbl 494 `"1951"', add
label define th00a_birthyr_lbl 495 `"1952"', add
label define th00a_birthyr_lbl 496 `"1953"', add
label define th00a_birthyr_lbl 497 `"1954"', add
label define th00a_birthyr_lbl 498 `"1955"', add
label define th00a_birthyr_lbl 499 `"1956"', add
label define th00a_birthyr_lbl 500 `"1957"', add
label define th00a_birthyr_lbl 501 `"1958"', add
label define th00a_birthyr_lbl 502 `"1959"', add
label define th00a_birthyr_lbl 503 `"1960"', add
label define th00a_birthyr_lbl 504 `"1961"', add
label define th00a_birthyr_lbl 505 `"1962"', add
label define th00a_birthyr_lbl 506 `"1963"', add
label define th00a_birthyr_lbl 507 `"1964"', add
label define th00a_birthyr_lbl 508 `"1965"', add
label define th00a_birthyr_lbl 509 `"1966"', add
label define th00a_birthyr_lbl 510 `"1967"', add
label define th00a_birthyr_lbl 511 `"1968"', add
label define th00a_birthyr_lbl 512 `"1969"', add
label define th00a_birthyr_lbl 513 `"1970"', add
label define th00a_birthyr_lbl 514 `"1971"', add
label define th00a_birthyr_lbl 515 `"1972"', add
label define th00a_birthyr_lbl 516 `"1973"', add
label define th00a_birthyr_lbl 517 `"1974"', add
label define th00a_birthyr_lbl 518 `"1975"', add
label define th00a_birthyr_lbl 519 `"1976"', add
label define th00a_birthyr_lbl 520 `"1977"', add
label define th00a_birthyr_lbl 521 `"1978"', add
label define th00a_birthyr_lbl 522 `"1979"', add
label define th00a_birthyr_lbl 523 `"1980"', add
label define th00a_birthyr_lbl 524 `"1981"', add
label define th00a_birthyr_lbl 525 `"1982"', add
label define th00a_birthyr_lbl 526 `"1983"', add
label define th00a_birthyr_lbl 527 `"1984"', add
label define th00a_birthyr_lbl 528 `"1985"', add
label define th00a_birthyr_lbl 529 `"1986"', add
label define th00a_birthyr_lbl 530 `"1987"', add
label define th00a_birthyr_lbl 531 `"1988"', add
label define th00a_birthyr_lbl 532 `"1989"', add
label define th00a_birthyr_lbl 533 `"1990"', add
label define th00a_birthyr_lbl 534 `"1991"', add
label define th00a_birthyr_lbl 535 `"1992"', add
label define th00a_birthyr_lbl 536 `"1993"', add
label define th00a_birthyr_lbl 537 `"1994"', add
label define th00a_birthyr_lbl 538 `"1995"', add
label define th00a_birthyr_lbl 539 `"1996"', add
label define th00a_birthyr_lbl 540 `"1997"', add
label define th00a_birthyr_lbl 541 `"1998"', add
label define th00a_birthyr_lbl 542 `"1999"', add
label define th00a_birthyr_lbl 543 `"2000"', add
label define th00a_birthyr_lbl 998 `"Unknown"', add
label values th00a_birthyr th00a_birthyr_lbl

label define th00a_relig_lbl 1 `"Buddhism"'
label define th00a_relig_lbl 2 `"Islam"', add
label define th00a_relig_lbl 3 `"Christianity"', add
label define th00a_relig_lbl 4 `"Hinduism"', add
label define th00a_relig_lbl 5 `"Chinese Confucius"', add
label define th00a_relig_lbl 6 `"Others"', add
label define th00a_relig_lbl 7 `"No religion"', add
label define th00a_relig_lbl 9 `"Unknown"', add
label values th00a_relig th00a_relig_lbl

label define th00a_nation_lbl 01 `"Thailand"'
label define th00a_nation_lbl 02 `"China"', add
label define th00a_nation_lbl 03 `"India"', add
label define th00a_nation_lbl 04 `"Nepal"', add
label define th00a_nation_lbl 05 `"Pakistan"', add
label define th00a_nation_lbl 06 `"Bangladesh"', add
label define th00a_nation_lbl 07 `"Sri Lanka"', add
label define th00a_nation_lbl 08 `"Vietnam"', add
label define th00a_nation_lbl 09 `"Lao People's Democratic Republic"', add
label define th00a_nation_lbl 10 `"Cambodia"', add
label define th00a_nation_lbl 11 `"Japan"', add
label define th00a_nation_lbl 12 `"Korea"', add
label define th00a_nation_lbl 13 `"Philippines"', add
label define th00a_nation_lbl 14 `"Myanmar"', add
label define th00a_nation_lbl 15 `"Malaysia"', add
label define th00a_nation_lbl 16 `"Singapore"', add
label define th00a_nation_lbl 17 `"Indonesian"', add
label define th00a_nation_lbl 18 `"United States of America"', add
label define th00a_nation_lbl 19 `"Canada"', add
label define th00a_nation_lbl 20 `"Australia"', add
label define th00a_nation_lbl 21 `"New Zealand"', add
label define th00a_nation_lbl 22 `"United Kingdom"', add
label define th00a_nation_lbl 23 `"Germany"', add
label define th00a_nation_lbl 24 `"Portugal"', add
label define th00a_nation_lbl 25 `"Netherlands"', add
label define th00a_nation_lbl 26 `"France"', add
label define th00a_nation_lbl 27 `"Denmark"', add
label define th00a_nation_lbl 29 `"Switzerland"', add
label define th00a_nation_lbl 30 `"Italy"', add
label define th00a_nation_lbl 31 `"Norway"', add
label define th00a_nation_lbl 32 `"Others"', add
label define th00a_nation_lbl 98 `"Unknown"', add
label values th00a_nation th00a_nation_lbl

label define th00a_gradeatt_lbl 00 `"Not attending school"'
label define th00a_gradeatt_lbl 01 `"Pre-Elementary level 1"', add
label define th00a_gradeatt_lbl 02 `"Pre-Elementary level 2"', add
label define th00a_gradeatt_lbl 03 `"Pre-Elementary level 3"', add
label define th00a_gradeatt_lbl 04 `"Elementary level 1"', add
label define th00a_gradeatt_lbl 05 `"Elementary level 2"', add
label define th00a_gradeatt_lbl 06 `"Elementary level 3"', add
label define th00a_gradeatt_lbl 07 `"Elementary level 4"', add
label define th00a_gradeatt_lbl 08 `"Elementary level 5"', add
label define th00a_gradeatt_lbl 10 `"Elementary level 6"', add
label define th00a_gradeatt_lbl 11 `"Elementary level, grade unknown"', add
label define th00a_gradeatt_lbl 21 `"Lower secondary level 1 (M1)"', add
label define th00a_gradeatt_lbl 22 `"Lower secondary level 2 (M2)"', add
label define th00a_gradeatt_lbl 23 `"Lower secondary level 3 (M3)"', add
label define th00a_gradeatt_lbl 24 `"Lower secondary level, grade unknown"', add
label define th00a_gradeatt_lbl 31 `"Upper secondary level (general), year 1 (M4)"', add
label define th00a_gradeatt_lbl 32 `"Upper secondary level (general), year 2 (M5)"', add
label define th00a_gradeatt_lbl 33 `"Upper secondary level (general), year 3 (M6)"', add
label define th00a_gradeatt_lbl 34 `"Upper secondary level (general), grade unknown"', add
label define th00a_gradeatt_lbl 41 `"Upper secondary level, vocational, year 1"', add
label define th00a_gradeatt_lbl 42 `"Upper secondary level, vocational, year 2"', add
label define th00a_gradeatt_lbl 43 `"Upper secondary level, vocational, year 3"', add
label define th00a_gradeatt_lbl 44 `"Upper secondary level, vocational, unknown year"', add
label define th00a_gradeatt_lbl 45 `"Higher level, lower diploma level"', add
label define th00a_gradeatt_lbl 46 `"Higher level, diploma level"', add
label define th00a_gradeatt_lbl 51 `"Higher level, bachelor's  degree, year 1"', add
label define th00a_gradeatt_lbl 52 `"Higher level, bachelor's  degree, year 2"', add
label define th00a_gradeatt_lbl 53 `"Higher level, bachelor's  degree, year 3"', add
label define th00a_gradeatt_lbl 54 `"Higher level, bachelor's  degree, year 4"', add
label define th00a_gradeatt_lbl 55 `"Higher level, bachelor's  degree, year unknown"', add
label define th00a_gradeatt_lbl 56 `"Higher level, masters degree"', add
label define th00a_gradeatt_lbl 57 `"Higher level, doctorate degree"', add
label define th00a_gradeatt_lbl 61 `"Religious education, scripture school for general education"', add
label define th00a_gradeatt_lbl 62 `"Religious education, scripture school for Dharma"', add
label define th00a_gradeatt_lbl 63 `"Religious education, scripture school for Pali"', add
label define th00a_gradeatt_lbl 64 `"Religious education, short course vocational education"', add
label define th00a_gradeatt_lbl 65 `"Religious education, other education"', add
label define th00a_gradeatt_lbl 98 `"Unknown"', add
label define th00a_gradeatt_lbl 99 `"NIU (not in universe)"', add
label values th00a_gradeatt th00a_gradeatt_lbl

label define th00a_lit_lbl 1 `"Literate"'
label define th00a_lit_lbl 2 `"Illiterate"', add
label define th00a_lit_lbl 8 `"Unknown"', add
label define th00a_lit_lbl 9 `"NIU (not in universe)"', add
label values th00a_lit th00a_lit_lbl

label define th00a_higrade_lbl 00 `"Not attending school"'
label define th00a_higrade_lbl 01 `"Pre-Elementary level 1"', add
label define th00a_higrade_lbl 02 `"Pre-Elementary level 2"', add
label define th00a_higrade_lbl 03 `"Pre-Elementary level 3"', add
label define th00a_higrade_lbl 04 `"Elementary level 1"', add
label define th00a_higrade_lbl 05 `"Elementary level 2"', add
label define th00a_higrade_lbl 06 `"Elementary level 3"', add
label define th00a_higrade_lbl 07 `"Elementary level 4"', add
label define th00a_higrade_lbl 08 `"Elementary level 5"', add
label define th00a_higrade_lbl 09 `"Elementary level 6"', add
label define th00a_higrade_lbl 10 `"Elementary level, completed"', add
label define th00a_higrade_lbl 11 `"Elementary level, unknown level"', add
label define th00a_higrade_lbl 21 `"Lower secondary level 1"', add
label define th00a_higrade_lbl 22 `"Lower secondary level 2"', add
label define th00a_higrade_lbl 23 `"Lower secondary level 3"', add
label define th00a_higrade_lbl 24 `"Lower secondary level, completed"', add
label define th00a_higrade_lbl 25 `"Lower secondary level, unknown level"', add
label define th00a_higrade_lbl 31 `"Upper secondary level, general, year 1"', add
label define th00a_higrade_lbl 32 `"Upper secondary level, general, year 2"', add
label define th00a_higrade_lbl 33 `"Upper secondary level, general, year 3"', add
label define th00a_higrade_lbl 34 `"Upper secondary level, general, unknown year"', add
label define th00a_higrade_lbl 41 `"Upper secondary level, vocational, year 1"', add
label define th00a_higrade_lbl 42 `"Upper secondary level, vocational, year 2"', add
label define th00a_higrade_lbl 43 `"Upper secondary level, vocational, year 3"', add
label define th00a_higrade_lbl 44 `"Upper secondary level, vocational, unknown year"', add
label define th00a_higrade_lbl 45 `"Higher level, lower diploma level"', add
label define th00a_higrade_lbl 46 `"Higher level, diploma level"', add
label define th00a_higrade_lbl 51 `"Higher level, bachelor's  degree, year 1"', add
label define th00a_higrade_lbl 52 `"Higher level, bachelor's  degree, year 2"', add
label define th00a_higrade_lbl 53 `"Higher level, bachelor's  degree, year 3"', add
label define th00a_higrade_lbl 54 `"Higher level, bachelor's  degree, year 4"', add
label define th00a_higrade_lbl 55 `"Higher level, bachelor's  degree, year unknown"', add
label define th00a_higrade_lbl 56 `"Higher level, master's degree"', add
label define th00a_higrade_lbl 57 `"Higher level, doctorate degree"', add
label define th00a_higrade_lbl 61 `"Religious education, scripture school for general education"', add
label define th00a_higrade_lbl 62 `"Religious education, scripture school for Dharma"', add
label define th00a_higrade_lbl 63 `"Religious education, scripture school for Pali"', add
label define th00a_higrade_lbl 64 `"Religious education, short course vocational education"', add
label define th00a_higrade_lbl 65 `"Religious education, other education"', add
label define th00a_higrade_lbl 98 `"Unknown"', add
label define th00a_higrade_lbl 99 `"NIU (not in universe)"', add
label values th00a_higrade th00a_higrade_lbl

label define th00a_marst_lbl 1 `"Single"'
label define th00a_marst_lbl 2 `"Married"', add
label define th00a_marst_lbl 3 `"Widowed"', add
label define th00a_marst_lbl 4 `"Divorced"', add
label define th00a_marst_lbl 5 `"Separated"', add
label define th00a_marst_lbl 6 `"Ever married, current status unknown"', add
label define th00a_marst_lbl 7 `"Monk"', add
label define th00a_marst_lbl 8 `"Unknown"', add
label define th00a_marst_lbl 9 `"NIU (not in universe)"', add
label values th00a_marst th00a_marst_lbl

label define th00a_occ3_lbl 0011 `"Armed forces"'
label define th00a_occ3_lbl 0111 `"Legislators"', add
label define th00a_occ3_lbl 0112 `"Senior government officials"', add
label define th00a_occ3_lbl 0113 `"Traditional chiefs and heads of villages"', add
label define th00a_occ3_lbl 0114 `"Senior officials of special-interest organizations"', add
label define th00a_occ3_lbl 0121 `"Directors and chief executives"', add
label define th00a_occ3_lbl 0122 `"Production and operations department managers"', add
label define th00a_occ3_lbl 0123 `"Other department managers"', add
label define th00a_occ3_lbl 0129 `"Undocumented"', add
label define th00a_occ3_lbl 0131 `"General managers"', add
label define th00a_occ3_lbl 0211 `"Physicists, chemists and related professionals"', add
label define th00a_occ3_lbl 0212 `"Mathematicians, statisticians and related professionals"', add
label define th00a_occ3_lbl 0213 `"Computing professionals"', add
label define th00a_occ3_lbl 0214 `"Architects, engineers and related professionals"', add
label define th00a_occ3_lbl 0221 `"Life science professionals"', add
label define th00a_occ3_lbl 0222 `"Health professionals (except nursing)"', add
label define th00a_occ3_lbl 0223 `"Nursing and midwifery professionals"', add
label define th00a_occ3_lbl 0231 `"College, university and higher education teaching professionals"', add
label define th00a_occ3_lbl 0232 `"Secondary education teaching professionals"', add
label define th00a_occ3_lbl 0233 `"Primary and pre-primary education teaching professionals"', add
label define th00a_occ3_lbl 0234 `"Special education teaching professionals"', add
label define th00a_occ3_lbl 0235 `"Other teaching professionals"', add
label define th00a_occ3_lbl 0241 `"Business professionals"', add
label define th00a_occ3_lbl 0242 `"Legal professionals"', add
label define th00a_occ3_lbl 0243 `"Archivists, librarians and related information professionals"', add
label define th00a_occ3_lbl 0244 `"Social science and related professionals"', add
label define th00a_occ3_lbl 0245 `"Writers and creative or performing artists"', add
label define th00a_occ3_lbl 0246 `"Religious professionals"', add
label define th00a_occ3_lbl 0299 `"Undocumented"', add
label define th00a_occ3_lbl 0311 `"Physical and engineering science technicians"', add
label define th00a_occ3_lbl 0312 `"Computer associate professionals"', add
label define th00a_occ3_lbl 0313 `"Optical and electronic equipment operators"', add
label define th00a_occ3_lbl 0314 `"Ship and aircraft controllers and technicians"', add
label define th00a_occ3_lbl 0315 `"Safety and quality inspectors"', add
label define th00a_occ3_lbl 0321 `"Life science technicians and related associate professionals"', add
label define th00a_occ3_lbl 0322 `"Modern health associate professionals (except nursing)"', add
label define th00a_occ3_lbl 0323 `"Nursing and midwifery associate professionals"', add
label define th00a_occ3_lbl 0324 `"Traditional medicine practitioners and faith healers"', add
label define th00a_occ3_lbl 0331 `"Primary education teaching associate professionals"', add
label define th00a_occ3_lbl 0332 `"Pre-primary education teaching associate professionals"', add
label define th00a_occ3_lbl 0333 `"Special education teaching associate professionals"', add
label define th00a_occ3_lbl 0334 `"Other teaching associate professionals"', add
label define th00a_occ3_lbl 0341 `"Finance and sales associate professionals"', add
label define th00a_occ3_lbl 0342 `"Business services agents and trade brokers"', add
label define th00a_occ3_lbl 0343 `"Administrative associate professionals"', add
label define th00a_occ3_lbl 0344 `"Customs, tax and related government associate professionals"', add
label define th00a_occ3_lbl 0345 `"Police inspectors and detectives"', add
label define th00a_occ3_lbl 0346 `"Social work associate professionals"', add
label define th00a_occ3_lbl 0347 `"Artistic, entertainment and sports associate professionals"', add
label define th00a_occ3_lbl 0348 `"Religious associate professionals"', add
label define th00a_occ3_lbl 0399 `"Undocumented"', add
label define th00a_occ3_lbl 0411 `"Secretaries and keyboard-operating clerks"', add
label define th00a_occ3_lbl 0412 `"Numerical clerks"', add
label define th00a_occ3_lbl 0413 `"Material-recording and transport clerks"', add
label define th00a_occ3_lbl 0414 `"Library, mail and related clerks"', add
label define th00a_occ3_lbl 0419 `"Other office clerks"', add
label define th00a_occ3_lbl 0421 `"Cashiers, tellers and related clerks"', add
label define th00a_occ3_lbl 0422 `"Client information clerks"', add
label define th00a_occ3_lbl 0511 `"Travel attendants and related workers"', add
label define th00a_occ3_lbl 0512 `"Housekeeping and restaurant services workers"', add
label define th00a_occ3_lbl 0513 `"Personal care and related workers"', add
label define th00a_occ3_lbl 0514 `"Other personal services workers"', add
label define th00a_occ3_lbl 0515 `"Astrologers, fortune-tellers and related workers"', add
label define th00a_occ3_lbl 0516 `"Protective services workers"', add
label define th00a_occ3_lbl 0521 `"Fashion and other models"', add
label define th00a_occ3_lbl 0522 `"Shop salespersons and demonstrators"', add
label define th00a_occ3_lbl 0523 `"Stall and market salespersons"', add
label define th00a_occ3_lbl 0529 `"Undocumented"', add
label define th00a_occ3_lbl 0611 `"Market gardeners and crop growers"', add
label define th00a_occ3_lbl 0612 `"Market-oriented animal producers and related workers"', add
label define th00a_occ3_lbl 0613 `"Market-oriented crop and animal producers"', add
label define th00a_occ3_lbl 0614 `"Forestry and related workers"', add
label define th00a_occ3_lbl 0615 `"Fishery workers, hunters and trappers"', add
label define th00a_occ3_lbl 0621 `"Subsistence agricultural and fishery workers"', add
label define th00a_occ3_lbl 0711 `"Miners, shotfirers, stone cutters and carvers"', add
label define th00a_occ3_lbl 0712 `"Building frame and related trades workers"', add
label define th00a_occ3_lbl 0713 `"Building finishers and related trades workers"', add
label define th00a_occ3_lbl 0714 `"Painters, building structure cleaners and related trades workers"', add
label define th00a_occ3_lbl 0721 `"Metal molders, welders, sheet-metal workers, structural- metal preparers, and related trades workers"', add
label define th00a_occ3_lbl 0722 `"Blacksmiths, tool-makers and related trades workers"', add
label define th00a_occ3_lbl 0723 `"Machinery mechanics and fitters"', add
label define th00a_occ3_lbl 0724 `"Electrical and electronic equipment mechanics and fitters"', add
label define th00a_occ3_lbl 0731 `"Precision workers in metal and related materials"', add
label define th00a_occ3_lbl 0732 `"Potters, glass-makers and related trades workers"', add
label define th00a_occ3_lbl 0733 `"Handicraft workers in wood, textile, leather and related materials"', add
label define th00a_occ3_lbl 0734 `"Printing and related trades workers"', add
label define th00a_occ3_lbl 0741 `"Food processing and related trades workers"', add
label define th00a_occ3_lbl 0742 `"Wood treaters, cabinet-makers and related trades workers"', add
label define th00a_occ3_lbl 0743 `"Textile, garment and related trades workers"', add
label define th00a_occ3_lbl 0744 `"Pelt, leather and shoemaking trades workers"', add
label define th00a_occ3_lbl 0811 `"Mining- and mineral-processing-plant operators"', add
label define th00a_occ3_lbl 0812 `"Metal-processing-plant operators"', add
label define th00a_occ3_lbl 0813 `"Glass, ceramics and related plant operators"', add
label define th00a_occ3_lbl 0814 `"Wood-processing- and papermaking-plant operators"', add
label define th00a_occ3_lbl 0815 `"Chemical-processing-plant operators"', add
label define th00a_occ3_lbl 0816 `"Power-production and related plant operators"', add
label define th00a_occ3_lbl 0817 `"Automated-assembly-line and industrial-robot operators"', add
label define th00a_occ3_lbl 0821 `"Metal- and mineral-products machine operators"', add
label define th00a_occ3_lbl 0822 `"Chemical-products machine operators"', add
label define th00a_occ3_lbl 0823 `"Rubber- and plastic-products machine operators"', add
label define th00a_occ3_lbl 0824 `"Wood-products machine operators"', add
label define th00a_occ3_lbl 0825 `"Printing-, binding- and paper-products machine operators"', add
label define th00a_occ3_lbl 0826 `"Textile-, fur- and leather-products machine operators"', add
label define th00a_occ3_lbl 0827 `"Food and related products machine operators"', add
label define th00a_occ3_lbl 0828 `"Assemblers"', add
label define th00a_occ3_lbl 0829 `"Other machine operators and assemblers"', add
label define th00a_occ3_lbl 0831 `"Locomotive-engine drivers and related workers"', add
label define th00a_occ3_lbl 0832 `"Motor-vehicle drivers"', add
label define th00a_occ3_lbl 0833 `"Agricultural and other mobile-plant operators"', add
label define th00a_occ3_lbl 0834 `"Ships' deck crews and related workers"', add
label define th00a_occ3_lbl 0911 `"Street vendors and related workers"', add
label define th00a_occ3_lbl 0912 `"Shoe cleaning and other street services elementary occupations"', add
label define th00a_occ3_lbl 0913 `"Domestic and related helpers, cleaners and launderers"', add
label define th00a_occ3_lbl 0914 `"Building caretakers, window and related cleaners"', add
label define th00a_occ3_lbl 0915 `"Messengers, porters, doorkeepers and related workers"', add
label define th00a_occ3_lbl 0916 `"Garbage collectors and related laborers"', add
label define th00a_occ3_lbl 0921 `"Agricultural, fishery and related laborers"', add
label define th00a_occ3_lbl 0931 `"Mining and construction laborers"', add
label define th00a_occ3_lbl 0932 `"Manufacturing laborers"', add
label define th00a_occ3_lbl 0933 `"Transport laborers and freight handlers"', add
label define th00a_occ3_lbl 0997 `"Worked, occupation unknown"', add
label define th00a_occ3_lbl 0998 `"Do not work"', add
label define th00a_occ3_lbl 9998 `"Unknown"', add
label define th00a_occ3_lbl 9999 `"NIU (not in universe)"', add
label values th00a_occ3 th00a_occ3_lbl

label define th00a_ind3_lbl 011 `"Growing of crops; market gardening; horticulture"'
label define th00a_ind3_lbl 012 `"Farming of animals"', add
label define th00a_ind3_lbl 013 `"Growing of crops combined with farming of animals (mixed farming)"', add
label define th00a_ind3_lbl 014 `"Agricultural and animal husbandry service activities, except veterinary activities"', add
label define th00a_ind3_lbl 015 `"Hunting, trapping and game propagation including related service activities"', add
label define th00a_ind3_lbl 020 `"Forestry, logging and related service activities"', add
label define th00a_ind3_lbl 050 `"Fishing, operation of fish hatcheries and fish farms; service activities incidental to fishing"', add
label define th00a_ind3_lbl 101 `"Mining and agglomeration of hard coal"', add
label define th00a_ind3_lbl 111 `"Extraction of crude petroleum and natural gas"', add
label define th00a_ind3_lbl 112 `"Service activities incidental to oil and gas extraction excluding surveying"', add
label define th00a_ind3_lbl 132 `"Mining of nonferrous metal ores, except uranium and thorium ores"', add
label define th00a_ind3_lbl 141 `"Quarrying of stone, sand and clay"', add
label define th00a_ind3_lbl 142 `"Mining and quarrying n.e.c."', add
label define th00a_ind3_lbl 151 `"Production, processing and preservation of meat, fish, fruit, vegetables, oils and fat"', add
label define th00a_ind3_lbl 152 `"Manufacture of dairy products"', add
label define th00a_ind3_lbl 153 `"Manufacture of grain mill products, starches and starch products, and prepared animal feeds"', add
label define th00a_ind3_lbl 154 `"Manufacture of other food products"', add
label define th00a_ind3_lbl 155 `"Manufacture of beverages"', add
label define th00a_ind3_lbl 159 `"Undocumented"', add
label define th00a_ind3_lbl 160 `"Manufacture of tobacco products"', add
label define th00a_ind3_lbl 171 `"Spinning, weaving and finishing of textiles"', add
label define th00a_ind3_lbl 172 `"Manufacture of other textiles"', add
label define th00a_ind3_lbl 173 `"Manufacture of knitted and crocheted fabrics and articles"', add
label define th00a_ind3_lbl 181 `"Manufacture of wearing apparel, except fur apparel"', add
label define th00a_ind3_lbl 182 `"Dressing and dyeing of fur; manufacture of articles of fur"', add
label define th00a_ind3_lbl 191 `"Tanning and dressing of leather; manufacture of luggage, handbags, saddlery and harness"', add
label define th00a_ind3_lbl 192 `"Manufacture of footwear"', add
label define th00a_ind3_lbl 201 `"Sawmilling and planning of wood"', add
label define th00a_ind3_lbl 202 `"Manufacture of products of wood, cork, straw and plaiting materials"', add
label define th00a_ind3_lbl 210 `"Manufacture of paper and paper products"', add
label define th00a_ind3_lbl 221 `"Publishing"', add
label define th00a_ind3_lbl 222 `"Printing and service activities related to printing"', add
label define th00a_ind3_lbl 223 `"Reproduction of recorded media"', add
label define th00a_ind3_lbl 231 `"Manufacture of coke oven products"', add
label define th00a_ind3_lbl 232 `"Manufacture of refined petroleum products"', add
label define th00a_ind3_lbl 241 `"Manufacture of basic chemicals"', add
label define th00a_ind3_lbl 242 `"Manufacture of other chemical products"', add
label define th00a_ind3_lbl 243 `"Manufacture of manmade fibers"', add
label define th00a_ind3_lbl 251 `"Manufacture of rubber products"', add
label define th00a_ind3_lbl 252 `"Manufacture of plastics products"', add
label define th00a_ind3_lbl 261 `"Manufacture of glass and glass products"', add
label define th00a_ind3_lbl 269 `"Manufacture of nonmetallic mineral products n.e.c."', add
label define th00a_ind3_lbl 271 `"Manufacture of basic iron and steel"', add
label define th00a_ind3_lbl 272 `"Manufacture of basic precious and nonferrous metals"', add
label define th00a_ind3_lbl 273 `"Casting of metals"', add
label define th00a_ind3_lbl 281 `"Manufacture of structural metal products, tanks, reservoirs and steam generators"', add
label define th00a_ind3_lbl 289 `"Manufacture of other fabricated metal products; metal working service activities"', add
label define th00a_ind3_lbl 291 `"Manufacture of general purpose machinery"', add
label define th00a_ind3_lbl 292 `"Manufacture of special purpose machinery"', add
label define th00a_ind3_lbl 293 `"Manufacture of domestic appliances n.e.c."', add
label define th00a_ind3_lbl 300 `"Manufacture of office, accounting and computing machinery"', add
label define th00a_ind3_lbl 311 `"Manufacture of electric motors, generators and transformers"', add
label define th00a_ind3_lbl 312 `"Manufacture of electricity distribution and control apparatus"', add
label define th00a_ind3_lbl 313 `"Manufacture of insulated wire and cable"', add
label define th00a_ind3_lbl 314 `"Manufacture of accumulators, primary cells and primary batteries"', add
label define th00a_ind3_lbl 315 `"Manufacture of electric lamps and lighting equipment"', add
label define th00a_ind3_lbl 319 `"Manufacture of other electrical equipment n.e.c."', add
label define th00a_ind3_lbl 321 `"Manufacture of electronic valves and tubes and other electronic components"', add
label define th00a_ind3_lbl 322 `"Manufacture of television and radio transmitters and apparatus for line telephony and line telegraphy"', add
label define th00a_ind3_lbl 323 `"Manufacture of television and radio receivers, sound or video recording or reproducing apparatus, and associated goods"', add
label define th00a_ind3_lbl 331 `"Manufacture of medical appliances and instruments and appliances for measuring, checking, testing, navigating and other purposes, except optical instruments"', add
label define th00a_ind3_lbl 332 `"Manufacture of optical instruments and photographic equipment"', add
label define th00a_ind3_lbl 333 `"Manufacture of watches and clocks"', add
label define th00a_ind3_lbl 341 `"Manufacture of motor vehicles"', add
label define th00a_ind3_lbl 342 `"Manufacture of bodies (coachwork) for motor vehicles; manufacture of trailers and semitrailers"', add
label define th00a_ind3_lbl 343 `"Manufacture of parts and accessories for motor vehicles and their engines"', add
label define th00a_ind3_lbl 351 `"Building and repairing of ships and boats"', add
label define th00a_ind3_lbl 352 `"Manufacture of railway and tramway locomotives and rolling stock"', add
label define th00a_ind3_lbl 353 `"Manufacture of aircraft and spacecraft"', add
label define th00a_ind3_lbl 359 `"Manufacture of transport equipment n.e.c."', add
label define th00a_ind3_lbl 361 `"Manufacture of furniture"', add
label define th00a_ind3_lbl 369 `"Manufacturing n.e.c."', add
label define th00a_ind3_lbl 371 `"Recycling of metal waste and scrap"', add
label define th00a_ind3_lbl 372 `"Recycling of nonmetal waste and scrap"', add
label define th00a_ind3_lbl 399 `"Undocumented"', add
label define th00a_ind3_lbl 401 `"Production, collection and distribution of electricity"', add
label define th00a_ind3_lbl 402 `"Manufacture of gas; distribution of gaseous fuels through mains"', add
label define th00a_ind3_lbl 410 `"Collection, purification and distribution of water"', add
label define th00a_ind3_lbl 451 `"Site preparation"', add
label define th00a_ind3_lbl 452 `"Building of complete constructions or parts thereof; civil engineering"', add
label define th00a_ind3_lbl 453 `"Building installation"', add
label define th00a_ind3_lbl 454 `"Building completion"', add
label define th00a_ind3_lbl 455 `"Renting of construction or demolition equipment with operator"', add
label define th00a_ind3_lbl 501 `"Sale of motor vehicles"', add
label define th00a_ind3_lbl 502 `"Maintenance and repair of motor vehicles"', add
label define th00a_ind3_lbl 503 `"Sale of motor vehicle parts and accessories"', add
label define th00a_ind3_lbl 504 `"Sale, maintenance and repair of motorcycles and related parts and accessories"', add
label define th00a_ind3_lbl 505 `"Retail sale of automotive fuel"', add
label define th00a_ind3_lbl 511 `"Wholesale on a fee or contract basis"', add
label define th00a_ind3_lbl 512 `"Wholesale of agricultural raw materials, live animals, food, beverages and tobacco"', add
label define th00a_ind3_lbl 513 `"Wholesale of household goods"', add
label define th00a_ind3_lbl 514 `"Wholesale of nonagricultural intermediate products, waste and scrap"', add
label define th00a_ind3_lbl 515 `"Wholesale of machinery, equipment and supplies"', add
label define th00a_ind3_lbl 519 `"Other wholesale"', add
label define th00a_ind3_lbl 521 `"Nonspecialized retail trade in stores"', add
label define th00a_ind3_lbl 522 `"Retail sale of food, beverages and tobacco in specialized stores"', add
label define th00a_ind3_lbl 523 `"Other retail trade of new goods in specialized stores"', add
label define th00a_ind3_lbl 524 `"Retail sale of secondhand goods in stores"', add
label define th00a_ind3_lbl 525 `"Retail trade not in stores"', add
label define th00a_ind3_lbl 526 `"Repair of personal and household goods"', add
label define th00a_ind3_lbl 529 `"Undocumented"', add
label define th00a_ind3_lbl 551 `"Hotels, camping sites and other provision of shortstay accommodation"', add
label define th00a_ind3_lbl 552 `"Restaurants, bars and canteens"', add
label define th00a_ind3_lbl 601 `"Transport via railways"', add
label define th00a_ind3_lbl 602 `"Other land transport"', add
label define th00a_ind3_lbl 603 `"Transport via pipelines"', add
label define th00a_ind3_lbl 611 `"Sea and coastal water transport"', add
label define th00a_ind3_lbl 612 `"Inland water transport"', add
label define th00a_ind3_lbl 621 `"Scheduled air transport"', add
label define th00a_ind3_lbl 622 `"Nonscheduled air transport"', add
label define th00a_ind3_lbl 630 `"Supporting and auxiliary transport activities; activities of travel agencies"', add
label define th00a_ind3_lbl 641 `"Post and courier activities"', add
label define th00a_ind3_lbl 642 `"Telecommunications"', add
label define th00a_ind3_lbl 651 `"Monetary intermediation"', add
label define th00a_ind3_lbl 659 `"Other financial intermediation"', add
label define th00a_ind3_lbl 660 `"Insurance and pension funding, except compulsory social security"', add
label define th00a_ind3_lbl 671 `"Activities auxiliary to financial intermediation, except insurance and pension funding"', add
label define th00a_ind3_lbl 672 `"Activities auxiliary to insurance and pension funding"', add
label define th00a_ind3_lbl 701 `"Real estate activities with own or leased property"', add
label define th00a_ind3_lbl 702 `"Real estate activities on a fee or contract basis"', add
label define th00a_ind3_lbl 711 `"Renting of transport equipment"', add
label define th00a_ind3_lbl 712 `"Renting of other machinery and equipment"', add
label define th00a_ind3_lbl 713 `"Renting of personal and household goods n.e.c."', add
label define th00a_ind3_lbl 721 `"Hardware consultancy"', add
label define th00a_ind3_lbl 722 `"Software consultancy and supply"', add
label define th00a_ind3_lbl 723 `"Data processing"', add
label define th00a_ind3_lbl 724 `"Data base activities"', add
label define th00a_ind3_lbl 725 `"Maintenance and repair of office, accounting and computing machinery"', add
label define th00a_ind3_lbl 729 `"Other computer related activities"', add
label define th00a_ind3_lbl 731 `"Research and experimental development on natural sciences and engineering (NSE)"', add
label define th00a_ind3_lbl 732 `"Research and experimental development on social sciences and humanities (SSH)"', add
label define th00a_ind3_lbl 741 `"Legal, accounting, bookkeeping and auditing activities; tax consultancy; market research and public opinion polling; business and management consultancy"', add
label define th00a_ind3_lbl 742 `"Architectural, engineering and other technical activities"', add
label define th00a_ind3_lbl 743 `"Advertising"', add
label define th00a_ind3_lbl 749 `"Business activities n.e.c."', add
label define th00a_ind3_lbl 751 `"Administration of the State and the economic and social policy of the community"', add
label define th00a_ind3_lbl 752 `"Provision of services to the community as a whole"', add
label define th00a_ind3_lbl 753 `"Compulsory social security activities"', add
label define th00a_ind3_lbl 801 `"Primary education"', add
label define th00a_ind3_lbl 802 `"Secondary education"', add
label define th00a_ind3_lbl 803 `"Higher education"', add
label define th00a_ind3_lbl 809 `"Adult and other education"', add
label define th00a_ind3_lbl 851 `"Human health activities"', add
label define th00a_ind3_lbl 852 `"Veterinary activities"', add
label define th00a_ind3_lbl 853 `"Social work activities"', add
label define th00a_ind3_lbl 900 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define th00a_ind3_lbl 911 `"Activities of business, employers and professional organizations"', add
label define th00a_ind3_lbl 912 `"Activities of trade unions"', add
label define th00a_ind3_lbl 919 `"Activities of other membership organizations"', add
label define th00a_ind3_lbl 921 `"Motion picture, radio, television and other entertainment activities"', add
label define th00a_ind3_lbl 922 `"News agency activities"', add
label define th00a_ind3_lbl 923 `"Library, archives, museums and other cultural activities"', add
label define th00a_ind3_lbl 924 `"Sporting and other recreational activities"', add
label define th00a_ind3_lbl 930 `"Other service activities"', add
label define th00a_ind3_lbl 950 `"Private households with employed persons"', add
label define th00a_ind3_lbl 990 `"Extraterritorial organizations and bodies"', add
label define th00a_ind3_lbl 998 `"Unknown"', add
label define th00a_ind3_lbl 999 `"NIU (not in universe)"', add
label values th00a_ind3 th00a_ind3_lbl

label define th00a_classwk_lbl 01 `"Employer"'
label define th00a_classwk_lbl 02 `"Own account worker"', add
label define th00a_classwk_lbl 03 `"Government officer"', add
label define th00a_classwk_lbl 04 `"Government employee"', add
label define th00a_classwk_lbl 05 `"Government enterprise employee"', add
label define th00a_classwk_lbl 06 `"Private employee"', add
label define th00a_classwk_lbl 07 `"Unpaid family worker"', add
label define th00a_classwk_lbl 08 `"Members of producers' cooperatives"', add
label define th00a_classwk_lbl 98 `"Unknown"', add
label define th00a_classwk_lbl 99 `"NIU (not in universe)"', add
label values th00a_classwk th00a_classwk_lbl

label define th00a_occwk3_lbl 0011 `"Armed forces"'
label define th00a_occwk3_lbl 0111 `"Legislators"', add
label define th00a_occwk3_lbl 0112 `"Senior government officials"', add
label define th00a_occwk3_lbl 0113 `"Traditional chiefs and heads of villages"', add
label define th00a_occwk3_lbl 0114 `"Senior officials of special-interest organizations"', add
label define th00a_occwk3_lbl 0121 `"Directors and chief executives"', add
label define th00a_occwk3_lbl 0122 `"Production and operations department managers"', add
label define th00a_occwk3_lbl 0123 `"Other department managers"', add
label define th00a_occwk3_lbl 0129 `"Undocumented"', add
label define th00a_occwk3_lbl 0131 `"General managers"', add
label define th00a_occwk3_lbl 0211 `"Physicists, chemists and related professionals"', add
label define th00a_occwk3_lbl 0212 `"Mathematicians, statisticians and related professionals"', add
label define th00a_occwk3_lbl 0213 `"Computing professionals"', add
label define th00a_occwk3_lbl 0214 `"Architects, engineers and related professionals"', add
label define th00a_occwk3_lbl 0221 `"Life science professionals"', add
label define th00a_occwk3_lbl 0222 `"Health professionals (except nursing)"', add
label define th00a_occwk3_lbl 0223 `"Nursing and midwifery professionals"', add
label define th00a_occwk3_lbl 0231 `"College, university and higher education teaching professionals"', add
label define th00a_occwk3_lbl 0232 `"Secondary education teaching professionals"', add
label define th00a_occwk3_lbl 0233 `"Primary and pre-primary education teaching professionals"', add
label define th00a_occwk3_lbl 0234 `"Special education teaching professionals"', add
label define th00a_occwk3_lbl 0235 `"Other teaching professionals"', add
label define th00a_occwk3_lbl 0241 `"Business professionals"', add
label define th00a_occwk3_lbl 0242 `"Legal professionals"', add
label define th00a_occwk3_lbl 0243 `"Archivists, librarians and related information professionals"', add
label define th00a_occwk3_lbl 0244 `"Social science and related professionals"', add
label define th00a_occwk3_lbl 0245 `"Writers and creative or performing artists"', add
label define th00a_occwk3_lbl 0246 `"Religious professionals"', add
label define th00a_occwk3_lbl 0299 `"Undocumented"', add
label define th00a_occwk3_lbl 0311 `"Physical and engineering science technicians"', add
label define th00a_occwk3_lbl 0312 `"Computer associate professionals"', add
label define th00a_occwk3_lbl 0313 `"Optical and electronic equipment operators"', add
label define th00a_occwk3_lbl 0314 `"Ship and aircraft controllers and technicians"', add
label define th00a_occwk3_lbl 0315 `"Safety and quality inspectors"', add
label define th00a_occwk3_lbl 0321 `"Life science technicians and related associate professionals"', add
label define th00a_occwk3_lbl 0322 `"Modern health associate professionals (except nursing)"', add
label define th00a_occwk3_lbl 0323 `"Nursing and midwifery associate professionals"', add
label define th00a_occwk3_lbl 0324 `"Traditional medicine practitioners and faith healers"', add
label define th00a_occwk3_lbl 0331 `"Primary education teaching associate professionals"', add
label define th00a_occwk3_lbl 0332 `"Pre-primary education teaching associate professionals"', add
label define th00a_occwk3_lbl 0333 `"Special education teaching associate professionals"', add
label define th00a_occwk3_lbl 0334 `"Other teaching associate professionals"', add
label define th00a_occwk3_lbl 0341 `"Finance and sales associate professionals"', add
label define th00a_occwk3_lbl 0342 `"Business services agents and trade brokers"', add
label define th00a_occwk3_lbl 0343 `"Administrative associate professionals"', add
label define th00a_occwk3_lbl 0344 `"Customs, tax and related government associate professionals"', add
label define th00a_occwk3_lbl 0345 `"Police inspectors and detectives"', add
label define th00a_occwk3_lbl 0346 `"Social work associate professionals"', add
label define th00a_occwk3_lbl 0347 `"Artistic, entertainment and sports associate professionals"', add
label define th00a_occwk3_lbl 0348 `"Religious associate professionals"', add
label define th00a_occwk3_lbl 0399 `"Undocumented"', add
label define th00a_occwk3_lbl 0411 `"Secretaries and keyboard-operating clerks"', add
label define th00a_occwk3_lbl 0412 `"Numerical clerks"', add
label define th00a_occwk3_lbl 0413 `"Material-recording and transport clerks"', add
label define th00a_occwk3_lbl 0414 `"Library, mail and related clerks"', add
label define th00a_occwk3_lbl 0419 `"Other office clerks"', add
label define th00a_occwk3_lbl 0421 `"Cashiers, tellers and related clerks"', add
label define th00a_occwk3_lbl 0422 `"Client information clerks"', add
label define th00a_occwk3_lbl 0511 `"Travel attendants and related workers"', add
label define th00a_occwk3_lbl 0512 `"Housekeeping and restaurant services workers"', add
label define th00a_occwk3_lbl 0513 `"Personal care and related workers"', add
label define th00a_occwk3_lbl 0514 `"Other personal services workers"', add
label define th00a_occwk3_lbl 0515 `"Astrologers, fortune-tellers and related workers"', add
label define th00a_occwk3_lbl 0516 `"Protective services workers"', add
label define th00a_occwk3_lbl 0521 `"Fashion and other models"', add
label define th00a_occwk3_lbl 0522 `"Shop salespersons and demonstrators"', add
label define th00a_occwk3_lbl 0523 `"Stall and market salespersons"', add
label define th00a_occwk3_lbl 0529 `"Undocumented"', add
label define th00a_occwk3_lbl 0611 `"Market gardeners and crop growers"', add
label define th00a_occwk3_lbl 0612 `"Market-oriented animal producers and related workers"', add
label define th00a_occwk3_lbl 0613 `"Market-oriented crop and animal producers"', add
label define th00a_occwk3_lbl 0614 `"Forestry and related workers"', add
label define th00a_occwk3_lbl 0615 `"Fishery workers, hunters and trappers"', add
label define th00a_occwk3_lbl 0621 `"Subsistence agricultural and fishery workers"', add
label define th00a_occwk3_lbl 0711 `"Miners, shotfirers, stone cutters and carvers"', add
label define th00a_occwk3_lbl 0712 `"Building frame and related trades workers"', add
label define th00a_occwk3_lbl 0713 `"Building finishers and related trades workers"', add
label define th00a_occwk3_lbl 0714 `"Painters, building structure cleaners and related trades workers"', add
label define th00a_occwk3_lbl 0721 `"Metal molders, welders, sheet-metal workers, structural- metal preparers, and related trades workers"', add
label define th00a_occwk3_lbl 0722 `"Blacksmiths, tool-makers and related trades workers"', add
label define th00a_occwk3_lbl 0723 `"Machinery mechanics and fitters"', add
label define th00a_occwk3_lbl 0724 `"Electrical and electronic equipment mechanics and fitters"', add
label define th00a_occwk3_lbl 0731 `"Precision workers in metal and related materials"', add
label define th00a_occwk3_lbl 0732 `"Potters, glass-makers and related trades workers"', add
label define th00a_occwk3_lbl 0733 `"Handicraft workers in wood, textile, leather and related materials"', add
label define th00a_occwk3_lbl 0734 `"Printing and related trades workers"', add
label define th00a_occwk3_lbl 0741 `"Food processing and related trades workers"', add
label define th00a_occwk3_lbl 0742 `"Wood treaters, cabinet-makers and related trades workers"', add
label define th00a_occwk3_lbl 0743 `"Textile, garment and related trades workers"', add
label define th00a_occwk3_lbl 0744 `"Pelt, leather and shoemaking trades workers"', add
label define th00a_occwk3_lbl 0811 `"Mining- and mineral-processing-plant operators"', add
label define th00a_occwk3_lbl 0812 `"Metal-processing-plant operators"', add
label define th00a_occwk3_lbl 0813 `"Glass, ceramics and related plant operators"', add
label define th00a_occwk3_lbl 0814 `"Wood-processing- and papermaking-plant operators"', add
label define th00a_occwk3_lbl 0815 `"Chemical-processing-plant operators"', add
label define th00a_occwk3_lbl 0816 `"Power-production and related plant operators"', add
label define th00a_occwk3_lbl 0817 `"Automated-assembly-line and industrial-robot operators"', add
label define th00a_occwk3_lbl 0821 `"Metal- and mineral-products machine operators"', add
label define th00a_occwk3_lbl 0822 `"Chemical-products machine operators"', add
label define th00a_occwk3_lbl 0823 `"Rubber- and plastic-products machine operators"', add
label define th00a_occwk3_lbl 0824 `"Wood-products machine operators"', add
label define th00a_occwk3_lbl 0825 `"Printing-, binding- and paper-products machine operators"', add
label define th00a_occwk3_lbl 0826 `"Textile-, fur- and leather-products machine operators"', add
label define th00a_occwk3_lbl 0827 `"Food and related products machine operators"', add
label define th00a_occwk3_lbl 0828 `"Assemblers"', add
label define th00a_occwk3_lbl 0829 `"Other machine operators and assemblers"', add
label define th00a_occwk3_lbl 0831 `"Locomotive-engine drivers and related workers"', add
label define th00a_occwk3_lbl 0832 `"Motor-vehicle drivers"', add
label define th00a_occwk3_lbl 0833 `"Agricultural and other mobile-plant operators"', add
label define th00a_occwk3_lbl 0834 `"Ships' deck crews and related workers"', add
label define th00a_occwk3_lbl 0911 `"Street vendors and related workers"', add
label define th00a_occwk3_lbl 0912 `"Shoe cleaning and other street services elementary occupations"', add
label define th00a_occwk3_lbl 0913 `"Domestic and related helpers, cleaners and launderers"', add
label define th00a_occwk3_lbl 0914 `"Building caretakers, window and related cleaners"', add
label define th00a_occwk3_lbl 0915 `"Messengers, porters, doorkeepers and related workers"', add
label define th00a_occwk3_lbl 0916 `"Garbage collectors and related laborers"', add
label define th00a_occwk3_lbl 0921 `"Agricultural, fishery and related laborers"', add
label define th00a_occwk3_lbl 0931 `"Mining and construction laborers"', add
label define th00a_occwk3_lbl 0932 `"Manufacturing laborers"', add
label define th00a_occwk3_lbl 0933 `"Transport laborers and freight handlers"', add
label define th00a_occwk3_lbl 0997 `"Worked, occupation unknown"', add
label define th00a_occwk3_lbl 0998 `"Do not work"', add
label define th00a_occwk3_lbl 9998 `"Unknown"', add
label define th00a_occwk3_lbl 9999 `"NIU (not in universe)"', add
label values th00a_occwk3 th00a_occwk3_lbl

label define th00a_seeking_lbl 1 `"Looking for work"'
label define th00a_seeking_lbl 2 `"Not looking but available for work"', add
label define th00a_seeking_lbl 3 `"Not looking and not available for work"', add
label define th00a_seeking_lbl 8 `"Unknown"', add
label define th00a_seeking_lbl 9 `"NIU (not in universe)"', add
label values th00a_seeking th00a_seeking_lbl

label define th00a_reaswork_lbl 01 `"Waiting for agricultural season"'
label define th00a_reaswork_lbl 02 `"Waiting for appropriate season"', add
label define th00a_reaswork_lbl 03 `"To study"', add
label define th00a_reaswork_lbl 04 `"House worker"', add
label define th00a_reaswork_lbl 05 `"Childhood, elderly"', add
label define th00a_reaswork_lbl 06 `"Illness / disability unable to work"', add
label define th00a_reaswork_lbl 07 `"Monk / religious order"', add
label define th00a_reaswork_lbl 08 `"Others"', add
label define th00a_reaswork_lbl 98 `"Unknown"', add
label define th00a_reaswork_lbl 99 `"NIU (not in universe)"', add
label values th00a_reaswork th00a_reaswork_lbl

label define th00a_chsurv_lbl 00 `"0"'
label define th00a_chsurv_lbl 01 `"1"', add
label define th00a_chsurv_lbl 02 `"2"', add
label define th00a_chsurv_lbl 03 `"3"', add
label define th00a_chsurv_lbl 04 `"4"', add
label define th00a_chsurv_lbl 05 `"5"', add
label define th00a_chsurv_lbl 06 `"6"', add
label define th00a_chsurv_lbl 07 `"7"', add
label define th00a_chsurv_lbl 08 `"8"', add
label define th00a_chsurv_lbl 09 `"9"', add
label define th00a_chsurv_lbl 10 `"10"', add
label define th00a_chsurv_lbl 11 `"11"', add
label define th00a_chsurv_lbl 12 `"12"', add
label define th00a_chsurv_lbl 13 `"13"', add
label define th00a_chsurv_lbl 14 `"14"', add
label define th00a_chsurv_lbl 15 `"15"', add
label define th00a_chsurv_lbl 16 `"16+"', add
label define th00a_chsurv_lbl 98 `"Unknown"', add
label define th00a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values th00a_chsurv th00a_chsurv_lbl

label define th00a_chdead_lbl 00 `"0"'
label define th00a_chdead_lbl 01 `"1"', add
label define th00a_chdead_lbl 02 `"2"', add
label define th00a_chdead_lbl 03 `"3"', add
label define th00a_chdead_lbl 04 `"4"', add
label define th00a_chdead_lbl 05 `"5"', add
label define th00a_chdead_lbl 06 `"6"', add
label define th00a_chdead_lbl 07 `"7"', add
label define th00a_chdead_lbl 08 `"8"', add
label define th00a_chdead_lbl 09 `"9"', add
label define th00a_chdead_lbl 10 `"10"', add
label define th00a_chdead_lbl 11 `"11+"', add
label define th00a_chdead_lbl 98 `"Unknown"', add
label define th00a_chdead_lbl 99 `"NIU (not in universe)"', add
label values th00a_chdead th00a_chdead_lbl

label define th00a_births_lbl 0 `"0"'
label define th00a_births_lbl 1 `"1"', add
label define th00a_births_lbl 2 `"2"', add
label define th00a_births_lbl 3 `"3"', add
label define th00a_births_lbl 8 `"Unknown"', add
label define th00a_births_lbl 9 `"NIU (not in universe)"', add
label values th00a_births th00a_births_lbl

label define th00a_bpl_lbl 01 `"China"'
label define th00a_bpl_lbl 02 `"Japan"', add
label define th00a_bpl_lbl 03 `"Hong Kong"', add
label define th00a_bpl_lbl 04 `"Taiwan"', add
label define th00a_bpl_lbl 05 `"Malaysia, Singapore"', add
label define th00a_bpl_lbl 06 `"Vietnam"', add
label define th00a_bpl_lbl 07 `"Lao People's Democratic Republic"', add
label define th00a_bpl_lbl 08 `"Bangladesh, India, Pakistan"', add
label define th00a_bpl_lbl 09 `"Myanmar"', add
label define th00a_bpl_lbl 10 `"Bangkok"', add
label define th00a_bpl_lbl 11 `"Samut Prakan"', add
label define th00a_bpl_lbl 12 `"Nonthaburi"', add
label define th00a_bpl_lbl 13 `"Pathum Thani"', add
label define th00a_bpl_lbl 14 `"Phra Nakhon si Ayutthaya"', add
label define th00a_bpl_lbl 15 `"Ang Thong"', add
label define th00a_bpl_lbl 16 `"Lop Buri"', add
label define th00a_bpl_lbl 17 `"Sing Buri"', add
label define th00a_bpl_lbl 18 `"Chai Nat"', add
label define th00a_bpl_lbl 19 `"Sa Kaeo"', add
label define th00a_bpl_lbl 20 `"Chon buri"', add
label define th00a_bpl_lbl 21 `"Rayong"', add
label define th00a_bpl_lbl 22 `"Chanthaburi"', add
label define th00a_bpl_lbl 23 `"Trat"', add
label define th00a_bpl_lbl 24 `"Chachoengsao"', add
label define th00a_bpl_lbl 25 `"Prachin Buri"', add
label define th00a_bpl_lbl 26 `"Nakhon Nayok"', add
label define th00a_bpl_lbl 27 `"Saraburi"', add
label define th00a_bpl_lbl 28 `"U.S.A."', add
label define th00a_bpl_lbl 29 `"Canada"', add
label define th00a_bpl_lbl 30 `"Nakhon Ratchasima"', add
label define th00a_bpl_lbl 31 `"Buri Ram"', add
label define th00a_bpl_lbl 32 `"Surin"', add
label define th00a_bpl_lbl 33 `"Si Sa Ket"', add
label define th00a_bpl_lbl 34 `"Ubon Ratchathani"', add
label define th00a_bpl_lbl 35 `"Yasothon"', add
label define th00a_bpl_lbl 36 `"Chaiyaphum"', add
label define th00a_bpl_lbl 37 `"Amnat Charoen"', add
label define th00a_bpl_lbl 39 `"Nong Bua Lam Phu"', add
label define th00a_bpl_lbl 40 `"Khon Kaen"', add
label define th00a_bpl_lbl 41 `"Udon Thani"', add
label define th00a_bpl_lbl 42 `"Loei"', add
label define th00a_bpl_lbl 43 `"Nong Khai"', add
label define th00a_bpl_lbl 44 `"Maha Sarakham"', add
label define th00a_bpl_lbl 45 `"Roi Et"', add
label define th00a_bpl_lbl 46 `"Kalasin"', add
label define th00a_bpl_lbl 47 `"Sakon Nakhon"', add
label define th00a_bpl_lbl 48 `"Nakhon Phanom"', add
label define th00a_bpl_lbl 49 `"Mukdahan"', add
label define th00a_bpl_lbl 50 `"Chiang Mai"', add
label define th00a_bpl_lbl 51 `"Lamphun"', add
label define th00a_bpl_lbl 52 `"Lampang"', add
label define th00a_bpl_lbl 53 `"Uttaradit"', add
label define th00a_bpl_lbl 54 `"Phrae"', add
label define th00a_bpl_lbl 55 `"Nan"', add
label define th00a_bpl_lbl 56 `"Phayao"', add
label define th00a_bpl_lbl 57 `"Chiang Rai"', add
label define th00a_bpl_lbl 58 `"Mae Hong Son"', add
label define th00a_bpl_lbl 60 `"Nakhon Sawan"', add
label define th00a_bpl_lbl 61 `"Uthai Thani"', add
label define th00a_bpl_lbl 62 `"Kamphaeng Phet"', add
label define th00a_bpl_lbl 63 `"Tak"', add
label define th00a_bpl_lbl 64 `"Sukhothai"', add
label define th00a_bpl_lbl 65 `"Phitsanulok"', add
label define th00a_bpl_lbl 66 `"Phichit"', add
label define th00a_bpl_lbl 67 `"Phetchabun"', add
label define th00a_bpl_lbl 68 `"United Kingdom, France, Italy, Germany"', add
label define th00a_bpl_lbl 69 `"Europe, others"', add
label define th00a_bpl_lbl 70 `"Ratchaburi"', add
label define th00a_bpl_lbl 71 `"Kanchanaburi"', add
label define th00a_bpl_lbl 72 `"Suphanburi"', add
label define th00a_bpl_lbl 73 `"Nakhon Pathom"', add
label define th00a_bpl_lbl 74 `"Samut Sakhon"', add
label define th00a_bpl_lbl 75 `"Samut Songkhram"', add
label define th00a_bpl_lbl 76 `"Phetchaburi"', add
label define th00a_bpl_lbl 77 `"Prachuap Khiri Khan"', add
label define th00a_bpl_lbl 78 `"Same changwat as current residence"', add
label define th00a_bpl_lbl 79 `"Unknown changwat"', add
label define th00a_bpl_lbl 80 `"Nakhon Si Thammarat"', add
label define th00a_bpl_lbl 81 `"Krabi"', add
label define th00a_bpl_lbl 82 `"Phangnga"', add
label define th00a_bpl_lbl 83 `"Phuket"', add
label define th00a_bpl_lbl 84 `"Surat Thani"', add
label define th00a_bpl_lbl 85 `"Ranong"', add
label define th00a_bpl_lbl 86 `"Chumphon"', add
label define th00a_bpl_lbl 87 `"Australia, New Zealand"', add
label define th00a_bpl_lbl 88 `"Oceania, others"', add
label define th00a_bpl_lbl 90 `"Songkhla"', add
label define th00a_bpl_lbl 91 `"Satun"', add
label define th00a_bpl_lbl 92 `"Trang"', add
label define th00a_bpl_lbl 93 `"Phatthalung"', add
label define th00a_bpl_lbl 94 `"Pattani"', add
label define th00a_bpl_lbl 95 `"Yala"', add
label define th00a_bpl_lbl 96 `"Narathiwat"', add
label define th00a_bpl_lbl 97 `"Asia, others"', add
label define th00a_bpl_lbl 98 `"Unknown country"', add
label define th00a_bpl_lbl 99 `"Unknown"', add
label values th00a_bpl th00a_bpl_lbl

label define th00a_durres_lbl 0 `"Less than 1 year"'
label define th00a_durres_lbl 1 `"1 year"', add
label define th00a_durres_lbl 2 `"2 years"', add
label define th00a_durres_lbl 3 `"3 years"', add
label define th00a_durres_lbl 4 `"4 years"', add
label define th00a_durres_lbl 5 `"Less than 5 years"', add
label define th00a_durres_lbl 6 `"5 years and over"', add
label define th00a_durres_lbl 7 `"Children age 0-4 years who live here since birth"', add
label define th00a_durres_lbl 8 `"Unknown"', add
label values th00a_durres th00a_durres_lbl

label define th00a_prevres_lbl 001 `"China"'
label define th00a_prevres_lbl 002 `"Japan"', add
label define th00a_prevres_lbl 003 `"Hong Kong"', add
label define th00a_prevres_lbl 004 `"Taiwan"', add
label define th00a_prevres_lbl 005 `"Malaysia, Singapore"', add
label define th00a_prevres_lbl 006 `"Vietnam"', add
label define th00a_prevres_lbl 007 `"Lao People's Democratic Republic"', add
label define th00a_prevres_lbl 008 `"Bangladesh, India, Pakistan"', add
label define th00a_prevres_lbl 009 `"Myanmar"', add
label define th00a_prevres_lbl 010 `"Bangkok"', add
label define th00a_prevres_lbl 011 `"Samut Prakan"', add
label define th00a_prevres_lbl 012 `"Nonthaburi"', add
label define th00a_prevres_lbl 013 `"Pathum Thani"', add
label define th00a_prevres_lbl 014 `"Phra Nakhon si Ayutthaya"', add
label define th00a_prevres_lbl 015 `"Ang Thong"', add
label define th00a_prevres_lbl 016 `"Lop Buri"', add
label define th00a_prevres_lbl 017 `"Sing Buri"', add
label define th00a_prevres_lbl 018 `"Chai Nat"', add
label define th00a_prevres_lbl 019 `"Sa Kaeo"', add
label define th00a_prevres_lbl 020 `"Chon buri"', add
label define th00a_prevres_lbl 021 `"Rayong"', add
label define th00a_prevres_lbl 022 `"Chanthaburi"', add
label define th00a_prevres_lbl 023 `"Trat"', add
label define th00a_prevres_lbl 024 `"Chachoengsao"', add
label define th00a_prevres_lbl 025 `"Prachin Buri"', add
label define th00a_prevres_lbl 026 `"Nakhon Nayok"', add
label define th00a_prevres_lbl 027 `"Saraburi"', add
label define th00a_prevres_lbl 028 `"U.S.A."', add
label define th00a_prevres_lbl 029 `"Canada"', add
label define th00a_prevres_lbl 030 `"Nakhon Ratchasima"', add
label define th00a_prevres_lbl 031 `"Buri Ram"', add
label define th00a_prevres_lbl 032 `"Surin"', add
label define th00a_prevres_lbl 033 `"Si Sa Ket"', add
label define th00a_prevres_lbl 034 `"Ubon Ratchathani"', add
label define th00a_prevres_lbl 035 `"Yasothon"', add
label define th00a_prevres_lbl 036 `"Chaiyaphum"', add
label define th00a_prevres_lbl 037 `"Amnat Charoen"', add
label define th00a_prevres_lbl 038 `"Mexico, Brazil"', add
label define th00a_prevres_lbl 039 `"Nong Bua Lam Phu"', add
label define th00a_prevres_lbl 040 `"Khon Kaen"', add
label define th00a_prevres_lbl 041 `"Udon Thani"', add
label define th00a_prevres_lbl 042 `"Loei"', add
label define th00a_prevres_lbl 043 `"Nong Khai"', add
label define th00a_prevres_lbl 044 `"Maha Sarakham"', add
label define th00a_prevres_lbl 045 `"Roi Et"', add
label define th00a_prevres_lbl 046 `"Kalasin"', add
label define th00a_prevres_lbl 047 `"Sakon Nakhon"', add
label define th00a_prevres_lbl 048 `"Nakhon Phanom"', add
label define th00a_prevres_lbl 049 `"Mukdahan"', add
label define th00a_prevres_lbl 050 `"Chiang Mai"', add
label define th00a_prevres_lbl 051 `"Lamphun"', add
label define th00a_prevres_lbl 052 `"Lampang"', add
label define th00a_prevres_lbl 053 `"Uttaradit"', add
label define th00a_prevres_lbl 054 `"Phrae"', add
label define th00a_prevres_lbl 055 `"Nan"', add
label define th00a_prevres_lbl 056 `"Phayao"', add
label define th00a_prevres_lbl 057 `"Chiang Rai"', add
label define th00a_prevres_lbl 058 `"Mae Hong Son"', add
label define th00a_prevres_lbl 059 `"America, others"', add
label define th00a_prevres_lbl 060 `"Nakhon Sawan"', add
label define th00a_prevres_lbl 061 `"Uthai Thani"', add
label define th00a_prevres_lbl 062 `"Kamphaeng Phet"', add
label define th00a_prevres_lbl 063 `"Tak"', add
label define th00a_prevres_lbl 064 `"Sukhothai"', add
label define th00a_prevres_lbl 065 `"Phitsanulok"', add
label define th00a_prevres_lbl 066 `"Phichit"', add
label define th00a_prevres_lbl 067 `"Phetchabun"', add
label define th00a_prevres_lbl 068 `"United Kingdom, France, Italy, Germany"', add
label define th00a_prevres_lbl 069 `"Europe, others"', add
label define th00a_prevres_lbl 070 `"Ratchaburi"', add
label define th00a_prevres_lbl 071 `"Kanchanaburi"', add
label define th00a_prevres_lbl 072 `"Suphanburi"', add
label define th00a_prevres_lbl 073 `"Nakhon Pathom"', add
label define th00a_prevres_lbl 074 `"Samut Sakhon"', add
label define th00a_prevres_lbl 075 `"Samut Songkhram"', add
label define th00a_prevres_lbl 076 `"Phetchaburi"', add
label define th00a_prevres_lbl 077 `"Prachuap Khiri Khan"', add
label define th00a_prevres_lbl 078 `"Same changwat as current residence"', add
label define th00a_prevres_lbl 079 `"Unknown changwat"', add
label define th00a_prevres_lbl 080 `"Nakhon Si Thammarat"', add
label define th00a_prevres_lbl 081 `"Krabi"', add
label define th00a_prevres_lbl 082 `"Phangnga"', add
label define th00a_prevres_lbl 083 `"Phuket"', add
label define th00a_prevres_lbl 084 `"Surat Thani"', add
label define th00a_prevres_lbl 085 `"Ranong"', add
label define th00a_prevres_lbl 086 `"Chumphon"', add
label define th00a_prevres_lbl 087 `"Australia, New Zealand"', add
label define th00a_prevres_lbl 088 `"Oceania, others"', add
label define th00a_prevres_lbl 089 `"Africa and other"', add
label define th00a_prevres_lbl 090 `"Songkhla"', add
label define th00a_prevres_lbl 091 `"Satun"', add
label define th00a_prevres_lbl 092 `"Trang"', add
label define th00a_prevres_lbl 093 `"Phatthalung"', add
label define th00a_prevres_lbl 094 `"Pattani"', add
label define th00a_prevres_lbl 095 `"Yala"', add
label define th00a_prevres_lbl 096 `"Narathiwat"', add
label define th00a_prevres_lbl 097 `"Asia, others"', add
label define th00a_prevres_lbl 098 `"Unknown country"', add
label define th00a_prevres_lbl 099 `"Unknown changwat or country"', add
label define th00a_prevres_lbl 999 `"NIU (not in universe)"', add
label values th00a_prevres th00a_prevres_lbl

label define th00a_prevdist_lbl 1 `"Same amphoe as current residence"'
label define th00a_prevdist_lbl 2 `"Different amphoe from current residence"', add
label define th00a_prevdist_lbl 8 `"Unknown"', add
label define th00a_prevdist_lbl 9 `"NIU (not in universe)"', add
label values th00a_prevdist th00a_prevdist_lbl

label define th00a_prevplc_lbl 1 `"Village"'
label define th00a_prevplc_lbl 2 `"Municipal"', add
label define th00a_prevplc_lbl 8 `"Unknown"', add
label define th00a_prevplc_lbl 9 `"NIU (not in universe)"', add
label values th00a_prevplc th00a_prevplc_lbl

label define th00a_migreas_lbl 01 `"Looking for work"'
label define th00a_migreas_lbl 02 `"Job related reason"', add
label define th00a_migreas_lbl 03 `"To study"', add
label define th00a_migreas_lbl 04 `"Following persons in household"', add
label define th00a_migreas_lbl 05 `"Return home"', add
label define th00a_migreas_lbl 06 `"Change of residence"', add
label define th00a_migreas_lbl 07 `"Moved to institutional household"', add
label define th00a_migreas_lbl 08 `"Others"', add
label define th00a_migreas_lbl 98 `"Unknown"', add
label define th00a_migreas_lbl 99 `"NIU (not in universe)"', add
label values th00a_migreas th00a_migreas_lbl

label define th00a_age_lbl 00 `"0"'
label define th00a_age_lbl 01 `"1"', add
label define th00a_age_lbl 02 `"2"', add
label define th00a_age_lbl 03 `"3"', add
label define th00a_age_lbl 04 `"4"', add
label define th00a_age_lbl 05 `"5"', add
label define th00a_age_lbl 06 `"6"', add
label define th00a_age_lbl 07 `"7"', add
label define th00a_age_lbl 08 `"8"', add
label define th00a_age_lbl 09 `"9"', add
label define th00a_age_lbl 10 `"10"', add
label define th00a_age_lbl 11 `"11"', add
label define th00a_age_lbl 12 `"12"', add
label define th00a_age_lbl 13 `"13"', add
label define th00a_age_lbl 14 `"14"', add
label define th00a_age_lbl 15 `"15"', add
label define th00a_age_lbl 16 `"16"', add
label define th00a_age_lbl 17 `"17"', add
label define th00a_age_lbl 18 `"18"', add
label define th00a_age_lbl 19 `"19"', add
label define th00a_age_lbl 20 `"20"', add
label define th00a_age_lbl 21 `"21"', add
label define th00a_age_lbl 22 `"22"', add
label define th00a_age_lbl 23 `"23"', add
label define th00a_age_lbl 24 `"24"', add
label define th00a_age_lbl 25 `"25"', add
label define th00a_age_lbl 26 `"26"', add
label define th00a_age_lbl 27 `"27"', add
label define th00a_age_lbl 28 `"28"', add
label define th00a_age_lbl 29 `"29"', add
label define th00a_age_lbl 30 `"30"', add
label define th00a_age_lbl 31 `"31"', add
label define th00a_age_lbl 32 `"32"', add
label define th00a_age_lbl 33 `"33"', add
label define th00a_age_lbl 34 `"34"', add
label define th00a_age_lbl 35 `"35"', add
label define th00a_age_lbl 36 `"36"', add
label define th00a_age_lbl 37 `"37"', add
label define th00a_age_lbl 38 `"38"', add
label define th00a_age_lbl 39 `"39"', add
label define th00a_age_lbl 40 `"40"', add
label define th00a_age_lbl 41 `"41"', add
label define th00a_age_lbl 42 `"42"', add
label define th00a_age_lbl 43 `"43"', add
label define th00a_age_lbl 44 `"44"', add
label define th00a_age_lbl 45 `"45"', add
label define th00a_age_lbl 46 `"46"', add
label define th00a_age_lbl 47 `"47"', add
label define th00a_age_lbl 48 `"48"', add
label define th00a_age_lbl 49 `"49"', add
label define th00a_age_lbl 50 `"50"', add
label define th00a_age_lbl 51 `"51"', add
label define th00a_age_lbl 52 `"52"', add
label define th00a_age_lbl 53 `"53"', add
label define th00a_age_lbl 54 `"54"', add
label define th00a_age_lbl 55 `"55"', add
label define th00a_age_lbl 56 `"56"', add
label define th00a_age_lbl 57 `"57"', add
label define th00a_age_lbl 58 `"58"', add
label define th00a_age_lbl 59 `"59"', add
label define th00a_age_lbl 60 `"60"', add
label define th00a_age_lbl 61 `"61"', add
label define th00a_age_lbl 62 `"62"', add
label define th00a_age_lbl 63 `"63"', add
label define th00a_age_lbl 64 `"64"', add
label define th00a_age_lbl 65 `"65"', add
label define th00a_age_lbl 66 `"66"', add
label define th00a_age_lbl 67 `"67"', add
label define th00a_age_lbl 68 `"68"', add
label define th00a_age_lbl 69 `"69"', add
label define th00a_age_lbl 70 `"70"', add
label define th00a_age_lbl 71 `"71"', add
label define th00a_age_lbl 72 `"72"', add
label define th00a_age_lbl 73 `"73"', add
label define th00a_age_lbl 74 `"74"', add
label define th00a_age_lbl 75 `"75"', add
label define th00a_age_lbl 76 `"76"', add
label define th00a_age_lbl 77 `"77"', add
label define th00a_age_lbl 78 `"78"', add
label define th00a_age_lbl 79 `"79"', add
label define th00a_age_lbl 80 `"80"', add
label define th00a_age_lbl 81 `"81"', add
label define th00a_age_lbl 82 `"82"', add
label define th00a_age_lbl 83 `"83"', add
label define th00a_age_lbl 84 `"84"', add
label define th00a_age_lbl 85 `"85"', add
label define th00a_age_lbl 86 `"86"', add
label define th00a_age_lbl 87 `"87"', add
label define th00a_age_lbl 88 `"88"', add
label define th00a_age_lbl 89 `"89"', add
label define th00a_age_lbl 90 `"90"', add
label define th00a_age_lbl 91 `"91"', add
label define th00a_age_lbl 92 `"92"', add
label define th00a_age_lbl 93 `"93"', add
label define th00a_age_lbl 94 `"94"', add
label define th00a_age_lbl 95 `"95"', add
label define th00a_age_lbl 96 `"96"', add
label define th00a_age_lbl 97 `"97"', add
label define th00a_age_lbl 98 `"98"', add
label values th00a_age th00a_age_lbl

label define th00a_chborn_lbl 00 `"0"'
label define th00a_chborn_lbl 01 `"1"', add
label define th00a_chborn_lbl 02 `"2"', add
label define th00a_chborn_lbl 03 `"3"', add
label define th00a_chborn_lbl 04 `"4"', add
label define th00a_chborn_lbl 05 `"5"', add
label define th00a_chborn_lbl 06 `"6"', add
label define th00a_chborn_lbl 07 `"7"', add
label define th00a_chborn_lbl 08 `"8"', add
label define th00a_chborn_lbl 09 `"9"', add
label define th00a_chborn_lbl 10 `"10"', add
label define th00a_chborn_lbl 11 `"11"', add
label define th00a_chborn_lbl 12 `"12"', add
label define th00a_chborn_lbl 13 `"13"', add
label define th00a_chborn_lbl 14 `"14"', add
label define th00a_chborn_lbl 15 `"15"', add
label define th00a_chborn_lbl 16 `"16"', add
label define th00a_chborn_lbl 17 `"17"', add
label define th00a_chborn_lbl 18 `"18"', add
label define th00a_chborn_lbl 19 `"19"', add
label define th00a_chborn_lbl 20 `"20"', add
label define th00a_chborn_lbl 21 `"21"', add
label define th00a_chborn_lbl 22 `"22"', add
label define th00a_chborn_lbl 98 `"Unknown"', add
label define th00a_chborn_lbl 99 `"NIU (not in universe)"', add
label values th00a_chborn th00a_chborn_lbl

label define th00a_perwt_lbl 0913909 `"913909"'
label define th00a_perwt_lbl 0921748 `"921748"', add
label define th00a_perwt_lbl 0971205 `"971205"', add
label define th00a_perwt_lbl 0971826 `"971826"', add
label define th00a_perwt_lbl 0976763 `"976763"', add
label define th00a_perwt_lbl 0987577 `"987577"', add
label define th00a_perwt_lbl 1000514 `"1000514"', add
label define th00a_perwt_lbl 1002860 `"1002860"', add
label define th00a_perwt_lbl 1009034 `"1009034"', add
label define th00a_perwt_lbl 1014875 `"1014875"', add
label define th00a_perwt_lbl 1016565 `"1016565"', add
label define th00a_perwt_lbl 1030914 `"1030914"', add
label define th00a_perwt_lbl 1032133 `"1032133"', add
label define th00a_perwt_lbl 1045318 `"1045318"', add
label define th00a_perwt_lbl 1048235 `"1048235"', add
label define th00a_perwt_lbl 1052130 `"1052130"', add
label define th00a_perwt_lbl 1055537 `"1055537"', add
label define th00a_perwt_lbl 1073065 `"1073065"', add
label values th00a_perwt th00a_perwt_lbl


