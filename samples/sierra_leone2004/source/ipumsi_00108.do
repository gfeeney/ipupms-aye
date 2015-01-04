* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    sl04a_dwnum     22-27    ///
  byte    sl04a_pern      28-29    ///
  byte    sl04a_prov      30-30    ///
  byte    sl04a_dist      31-32    ///
  int     sl04a_chief     33-36    ///
  byte    sl04a_urban     37-37    ///
  byte    sl04a_structyp  38-38    ///
  byte    sl04a_restype   39-39    ///
  byte    sl04a_npers     40-41    ///
  byte    sl04a_repair    42-42    ///
  byte    sl04a_rooms     43-44    ///
  byte    sl04a_impnets   45-45    ///
  byte    sl04a_nets      46-47    ///
  byte    sl04a_nonets    48-49    ///
  byte    sl04a_acquired  50-51    ///
  byte    sl04a_roof      52-52    ///
  byte    sl04a_wall      53-54    ///
  byte    sl04a_floor     55-55    ///
  byte    sl04a_trash     56-56    ///
  byte    sl04a_fuelcook  57-57    ///
  byte    sl04a_lighting  58-58    ///
  byte    sl04a_watsrc    59-60    ///
  byte    sl04a_toilet    61-61    ///
  byte    sl04a_bathing   62-62    ///
  byte    sl04a_inform    63-63    ///
  byte    sl04a_disthlth  64-64    ///
  byte    sl04a_distschl  65-65    ///
  byte    sl04a_distwatr  66-66    ///
  byte    sl04a_iron      67-67    ///
  byte    sl04a_fridge    68-68    ///
  byte    sl04a_tv        69-69    ///
  byte    sl04a_pc        70-70    ///
  byte    sl04a_radio     71-71    ///
  byte    sl04a_phone     72-72    ///
  byte    sl04a_cell      73-73    ///
  byte    sl04a_stove     74-74    ///
  byte    sl04a_bike      75-75    ///
  byte    sl04a_motocyc   76-76    ///
  byte    sl04a_vehicle   77-77    ///
  byte    sl04a_acriceup  78-79    ///
  byte    sl04a_acricelo  80-81    ///
  byte    sl04a_accass    82-82    ///
  byte    sl04a_acswpot   83-84    ///
  byte    sl04a_acgrndnt  85-85    ///
  byte    sl04a_acmaize   86-87    ///
  byte    sl04a_accoffee  88-89    ///
  byte    sl04a_accacao   90-91    ///
  byte    sl04a_acoilplm  92-92    ///
  byte    sl04a_accitrus  93-93    ///
  byte    sl04a_acveg     94-94    ///
  byte    sl04a_cattle    95-95    ///
  byte    sl04a_sheep     96-97    ///
  byte    sl04a_goats     98-98    ///
  byte    sl04a_pigs      99-100   ///
  byte    sl04a_chickens  101-102  ///
  byte    sl04a_ducks     103-103  ///
  byte    sl04a_tractor   104-104  ///
  byte    sl04a_tiller    105-105  ///
  byte    sl04a_thresher  106-106  ///
  byte    sl04a_mill      107-107  ///
  byte    sl04a_storage   108-108  ///
  byte    sl04a_dryfloor  109-109  ///
  byte    sl04a_grater    110-110  ///
  byte    sl04a_nmort     111-111  ///
  int     pernum          112-114  ///
  float   wtper           115-122  ///
  byte    sl04a_pernum    123-124  ///
  byte    sl04a_perno     125-126  ///
  byte    sl04a_relate    127-128  ///
  byte    sl04a_age       129-130  ///
  byte    sl04a_sex       131-131  ///
  byte    sl04a_relig     132-133  ///
  byte    sl04a_ethnic    134-135  ///
  byte    sl04a_langprim  136-137  ///
  byte    sl04a_langsec   138-139  ///
  byte    sl04a_dist90    140-141  ///
  int     sl04a_chief90   142-145  ///
  byte    sl04a_mortmom   146-146  ///
  byte    sl04a_mortpop   147-147  ///
  byte    sl04a_disable   148-148  ///
  byte    sl04a_distype   149-150  ///
  byte    sl04a_discause  151-151  ///
  byte    sl04a_disasst   152-153  ///
  byte    sl04a_school    154-154  ///
  byte    sl04a_edattain  155-156  ///
  byte    sl04a_marst     157-157  ///
  byte    sl04a_activity  158-159  ///
  byte    sl04a_occ       160-161  ///
  byte    sl04a_ind       162-163  ///
  byte    sl04a_chbornm   164-165  ///
  byte    sl04a_chbornf   166-167  ///
  byte    sl04a_malehh    168-169  ///
  byte    sl04a_femhh     170-171  ///
  byte    sl04a_maleaway  172-173  ///
  byte    sl04a_femaway   174-175  ///
  byte    sl04a_chdeadm   176-177  ///
  byte    sl04a_chdeadf   178-179  ///
  byte    sl04a_bthyear   180-180  ///
  byte    sl04a_molstbth  181-182  ///
  byte    sl04a_sexlstb   183-183  ///
  byte    sl04a_livlstb   184-184  ///
  byte    sl04a_immun     185-185  ///
  byte    sl04a_chborn    186-187  ///
  byte    sl04a_chsurv    188-189  ///
  byte    sl04a_bthlstyr  190-190  ///
  using `"ipumsi_00108.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var sl04a_dwnum    `"Dwelling number"'
label var sl04a_pern     `"Number of persons in household"'
label var sl04a_prov     `"Province"'
label var sl04a_dist     `"District"'
label var sl04a_chief    `"Chiefdom/ward"'
label var sl04a_urban    `"Urban/rural status"'
label var sl04a_structyp `"Structure type"'
label var sl04a_restype  `"Residence type"'
label var sl04a_npers    `"Number of persons"'
label var sl04a_repair   `"Current repair needs of dwelling unit"'
label var sl04a_rooms    `"Number of rooms"'
label var sl04a_impnets  `"Number of beds with impregnated mosquito nets"'
label var sl04a_nets     `"Number of beds with regular mosquito nets"'
label var sl04a_nonets   `"Number of beds with no mosquito nets"'
label var sl04a_acquired `"Tenure of the dwelling"'
label var sl04a_roof     `"Material of the roof"'
label var sl04a_wall     `"Material of the wall"'
label var sl04a_floor    `"Material of the floor"'
label var sl04a_trash    `"Type of trash disposal"'
label var sl04a_fuelcook `"Fuel for cooking"'
label var sl04a_lighting `"Source of lighting"'
label var sl04a_watsrc   `"Source of water supply for drinking"'
label var sl04a_toilet   `"Type of toilet facility"'
label var sl04a_bathing  `"Location of bathing facilities"'
label var sl04a_inform   `"Main source of information"'
label var sl04a_disthlth `"Distance to nearest health facility"'
label var sl04a_distschl `"Distance to nearest primary school"'
label var sl04a_distwatr `"Distance to nearest source of water"'
label var sl04a_iron     `"Electric iron"'
label var sl04a_fridge   `"Refrigerator"'
label var sl04a_tv       `"Television"'
label var sl04a_pc       `"Computer"'
label var sl04a_radio    `"Radio"'
label var sl04a_phone    `"Telephone"'
label var sl04a_cell     `"Cell phone"'
label var sl04a_stove    `"Modern stove"'
label var sl04a_bike     `"Bicycle"'
label var sl04a_motocyc  `"Motorcycle"'
label var sl04a_vehicle  `"Car/truck"'
label var sl04a_acriceup `"Number of acres of upland rice"'
label var sl04a_acricelo `"Number of acres of lowland rice"'
label var sl04a_accass   `"Number of acres of cassava"'
label var sl04a_acswpot  `"Number of acres of sweet potato"'
label var sl04a_acgrndnt `"Number of acres of groundnuts"'
label var sl04a_acmaize  `"Number of acres of maize"'
label var sl04a_accoffee `"Number of acres of coffee"'
label var sl04a_accacao  `"Number of acres of cacao"'
label var sl04a_acoilplm `"Number of acres of oil palm"'
label var sl04a_accitrus `"Number of acres of citrus fruits"'
label var sl04a_acveg    `"Number of acres of vegetables"'
label var sl04a_cattle   `"Number of cattle owned"'
label var sl04a_sheep    `"Number of sheep owned"'
label var sl04a_goats    `"Number of goats owned"'
label var sl04a_pigs     `"Number of pigs owned"'
label var sl04a_chickens `"Number of chickens owned"'
label var sl04a_ducks    `"Number of ducks owned"'
label var sl04a_tractor  `"Access to tractors"'
label var sl04a_tiller   `"Access to power tillers"'
label var sl04a_thresher `"Access to threshers"'
label var sl04a_mill     `"Access to rice mills"'
label var sl04a_storage  `"Access to storage facilities"'
label var sl04a_dryfloor `"Access to drying floors"'
label var sl04a_grater   `"Access to cassava graters"'
label var sl04a_nmort    `"Number of deaths in last 12 months"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var sl04a_pernum   `"Person number (within household)"'
label var sl04a_perno    `"Person number"'
label var sl04a_relate   `"Relationship to the household head"'
label var sl04a_age      `"Age"'
label var sl04a_sex      `"Sex"'
label var sl04a_relig    `"Religion"'
label var sl04a_ethnic   `"Ethnicity/nationality"'
label var sl04a_langprim `"Primary language"'
label var sl04a_langsec  `"Secondary language"'
label var sl04a_dist90   `"District of residence in 1990"'
label var sl04a_chief90  `"Chiefdom/country of residence in 1990"'
label var sl04a_mortmom  `"Maternal orphanhood"'
label var sl04a_mortpop  `"Paternal orphanhood"'
label var sl04a_disable  `"Disabled"'
label var sl04a_distype  `"Type of disability"'
label var sl04a_discause `"Cause of disability"'
label var sl04a_disasst  `"Disability assistance"'
label var sl04a_school   `"School attendance"'
label var sl04a_edattain `"Highest education level attained"'
label var sl04a_marst    `"Marital status"'
label var sl04a_activity `"Economic activity in the last 30 days"'
label var sl04a_occ      `"Occupation"'
label var sl04a_ind      `"Industry"'
label var sl04a_chbornm  `"Number of male children ever born"'
label var sl04a_chbornf  `"Number of female children ever born"'
label var sl04a_malehh   `"Number of male children in this household"'
label var sl04a_femhh    `"Number of female children in this household"'
label var sl04a_maleaway `"Number of male children elsewhere"'
label var sl04a_femaway  `"Number of female children elsewhere"'
label var sl04a_chdeadm  `"Number of male children dead"'
label var sl04a_chdeadf  `"Number of female children dead"'
label var sl04a_bthyear  `"Year of last birth (in last 12 months)"'
label var sl04a_molstbth `"Month of last birth (in last 12 months)"'
label var sl04a_sexlstb  `"Sex of the last child born (in last 12 months)"'
label var sl04a_livlstb  `"Status of the last child born (in last 12 months)"'
label var sl04a_immun    `"Prescribed immunization status of the last child born (in last 12 months)"'
label var sl04a_chborn   `"Number of children ever born"'
label var sl04a_chsurv   `"Number of children still alive"'
label var sl04a_bthlstyr `"Gave birth in last year"'

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

label define sl04a_pern_lbl 01 `"1"'
label define sl04a_pern_lbl 02 `"2"', add
label define sl04a_pern_lbl 03 `"3"', add
label define sl04a_pern_lbl 04 `"4"', add
label define sl04a_pern_lbl 05 `"5"', add
label define sl04a_pern_lbl 06 `"6"', add
label define sl04a_pern_lbl 07 `"7"', add
label define sl04a_pern_lbl 08 `"8"', add
label define sl04a_pern_lbl 09 `"9"', add
label define sl04a_pern_lbl 10 `"10"', add
label define sl04a_pern_lbl 11 `"11"', add
label define sl04a_pern_lbl 12 `"12"', add
label define sl04a_pern_lbl 13 `"13"', add
label define sl04a_pern_lbl 14 `"14"', add
label define sl04a_pern_lbl 15 `"15"', add
label define sl04a_pern_lbl 16 `"16"', add
label define sl04a_pern_lbl 17 `"17"', add
label define sl04a_pern_lbl 18 `"18"', add
label define sl04a_pern_lbl 19 `"19"', add
label define sl04a_pern_lbl 20 `"20"', add
label define sl04a_pern_lbl 21 `"21"', add
label define sl04a_pern_lbl 22 `"22"', add
label define sl04a_pern_lbl 23 `"23"', add
label define sl04a_pern_lbl 24 `"24"', add
label define sl04a_pern_lbl 25 `"25"', add
label define sl04a_pern_lbl 26 `"26"', add
label define sl04a_pern_lbl 27 `"27"', add
label define sl04a_pern_lbl 28 `"28"', add
label define sl04a_pern_lbl 29 `"29"', add
label define sl04a_pern_lbl 30 `"30"', add
label define sl04a_pern_lbl 31 `"31"', add
label define sl04a_pern_lbl 32 `"32"', add
label define sl04a_pern_lbl 33 `"33"', add
label define sl04a_pern_lbl 34 `"34"', add
label define sl04a_pern_lbl 35 `"35"', add
label define sl04a_pern_lbl 36 `"36"', add
label define sl04a_pern_lbl 37 `"37"', add
label define sl04a_pern_lbl 38 `"38"', add
label define sl04a_pern_lbl 39 `"39"', add
label define sl04a_pern_lbl 40 `"40"', add
label define sl04a_pern_lbl 41 `"41"', add
label define sl04a_pern_lbl 42 `"42"', add
label define sl04a_pern_lbl 43 `"43"', add
label define sl04a_pern_lbl 44 `"44"', add
label define sl04a_pern_lbl 45 `"45"', add
label define sl04a_pern_lbl 46 `"46"', add
label define sl04a_pern_lbl 47 `"47"', add
label define sl04a_pern_lbl 48 `"48"', add
label define sl04a_pern_lbl 49 `"49"', add
label define sl04a_pern_lbl 50 `"50"', add
label define sl04a_pern_lbl 51 `"51"', add
label define sl04a_pern_lbl 52 `"52"', add
label define sl04a_pern_lbl 53 `"53"', add
label define sl04a_pern_lbl 54 `"54"', add
label define sl04a_pern_lbl 55 `"55"', add
label define sl04a_pern_lbl 56 `"56"', add
label define sl04a_pern_lbl 57 `"57"', add
label define sl04a_pern_lbl 58 `"58"', add
label define sl04a_pern_lbl 59 `"59"', add
label define sl04a_pern_lbl 60 `"60"', add
label define sl04a_pern_lbl 62 `"62"', add
label define sl04a_pern_lbl 65 `"65"', add
label define sl04a_pern_lbl 66 `"66"', add
label define sl04a_pern_lbl 67 `"67"', add
label define sl04a_pern_lbl 68 `"68"', add
label define sl04a_pern_lbl 71 `"71"', add
label define sl04a_pern_lbl 72 `"72"', add
label values sl04a_pern sl04a_pern_lbl

label define sl04a_prov_lbl 1 `"Eastern"'
label define sl04a_prov_lbl 2 `"Northern"', add
label define sl04a_prov_lbl 3 `"Southern"', add
label define sl04a_prov_lbl 4 `"Western"', add
label values sl04a_prov sl04a_prov_lbl

label define sl04a_dist_lbl 11 `"Kailahun"'
label define sl04a_dist_lbl 12 `"Kenema"', add
label define sl04a_dist_lbl 13 `"Kono"', add
label define sl04a_dist_lbl 21 `"Bombali"', add
label define sl04a_dist_lbl 22 `"Kambia"', add
label define sl04a_dist_lbl 23 `"Koinadugu"', add
label define sl04a_dist_lbl 24 `"Port Loko"', add
label define sl04a_dist_lbl 25 `"Tonkolili"', add
label define sl04a_dist_lbl 31 `"Bo"', add
label define sl04a_dist_lbl 32 `"Bonthe"', add
label define sl04a_dist_lbl 33 `"Moyamba"', add
label define sl04a_dist_lbl 34 `"Pujehun"', add
label define sl04a_dist_lbl 41 `"Western - rural"', add
label define sl04a_dist_lbl 42 `"Western - urban"', add
label values sl04a_dist sl04a_dist_lbl

label define sl04a_chief_lbl 1101 `"Dea"'
label define sl04a_chief_lbl 1102 `"Jawie"', add
label define sl04a_chief_lbl 1103 `"Kissi Kama"', add
label define sl04a_chief_lbl 1104 `"Kissi Teng"', add
label define sl04a_chief_lbl 1105 `"Kissi Tongi"', add
label define sl04a_chief_lbl 1106 `"Kpeje Bongre"', add
label define sl04a_chief_lbl 1107 `"Kpeje West"', add
label define sl04a_chief_lbl 1108 `"Luawa"', add
label define sl04a_chief_lbl 1109 `"Malema"', add
label define sl04a_chief_lbl 1110 `"Mandu"', add
label define sl04a_chief_lbl 1111 `"Njaluahun"', add
label define sl04a_chief_lbl 1112 `"Penguia"', add
label define sl04a_chief_lbl 1113 `"Upper Bambara"', add
label define sl04a_chief_lbl 1114 `"Yawei"', add
label define sl04a_chief_lbl 1201 `"Dama"', add
label define sl04a_chief_lbl 1202 `"Dodo"', add
label define sl04a_chief_lbl 1203 `"Gaura"', add
label define sl04a_chief_lbl 1204 `"Gorama Mende"', add
label define sl04a_chief_lbl 1205 `"Kandu Lekpeama"', add
label define sl04a_chief_lbl 1206 `"Koya [Kenema]"', add
label define sl04a_chief_lbl 1207 `"Langrama"', add
label define sl04a_chief_lbl 1208 `"Lower Bambara"', add
label define sl04a_chief_lbl 1209 `"Malegohun"', add
label define sl04a_chief_lbl 1210 `"Niawa"', add
label define sl04a_chief_lbl 1211 `"Nomo"', add
label define sl04a_chief_lbl 1212 `"Nongowa"', add
label define sl04a_chief_lbl 1213 `"Simbaru"', add
label define sl04a_chief_lbl 1214 `"Small Bo"', add
label define sl04a_chief_lbl 1215 `"Tunkia"', add
label define sl04a_chief_lbl 1216 `"Wandor"', add
label define sl04a_chief_lbl 1291 `"Kenema Town"', add
label define sl04a_chief_lbl 1301 `"Fiama"', add
label define sl04a_chief_lbl 1302 `"Gbane"', add
label define sl04a_chief_lbl 1303 `"Gbane Kandor"', add
label define sl04a_chief_lbl 1304 `"Gbense"', add
label define sl04a_chief_lbl 1305 `"Gorama Kono"', add
label define sl04a_chief_lbl 1306 `"Kamara"', add
label define sl04a_chief_lbl 1307 `"Lei"', add
label define sl04a_chief_lbl 1308 `"Mafindor"', add
label define sl04a_chief_lbl 1309 `"Nimikoro"', add
label define sl04a_chief_lbl 1310 `"Nimiyama"', add
label define sl04a_chief_lbl 1311 `"Sandor"', add
label define sl04a_chief_lbl 1312 `"Soa"', add
label define sl04a_chief_lbl 1313 `"Tankoro"', add
label define sl04a_chief_lbl 1314 `"Toli"', add
label define sl04a_chief_lbl 1391 `"Koidu Town"', add
label define sl04a_chief_lbl 2101 `"Biriwa"', add
label define sl04a_chief_lbl 2102 `"Bombali Sebora"', add
label define sl04a_chief_lbl 2103 `"Gbanti-Kamaranka"', add
label define sl04a_chief_lbl 2104 `"Gbendembu Ngowahun"', add
label define sl04a_chief_lbl 2105 `"Libeisaygahun"', add
label define sl04a_chief_lbl 2106 `"Magbaimba Ndorhahun"', add
label define sl04a_chief_lbl 2107 `"Makari Gbanti"', add
label define sl04a_chief_lbl 2108 `"Paki Masabong"', add
label define sl04a_chief_lbl 2109 `"Safroko Limba"', add
label define sl04a_chief_lbl 2110 `"Sanda Loko"', add
label define sl04a_chief_lbl 2111 `"Sanda Tenraran"', add
label define sl04a_chief_lbl 2112 `"Sella Limba"', add
label define sl04a_chief_lbl 2113 `"Tambakka"', add
label define sl04a_chief_lbl 2191 `"Makeni Town"', add
label define sl04a_chief_lbl 2201 `"Bramaia"', add
label define sl04a_chief_lbl 2202 `"Gbinle-Dixing"', add
label define sl04a_chief_lbl 2203 `"Magbema"', add
label define sl04a_chief_lbl 2204 `"Mambolo"', add
label define sl04a_chief_lbl 2205 `"Masungbala"', add
label define sl04a_chief_lbl 2206 `"Samu"', add
label define sl04a_chief_lbl 2207 `"Tonko Limba"', add
label define sl04a_chief_lbl 2301 `"Dembelia Sinkunia"', add
label define sl04a_chief_lbl 2302 `"Diang"', add
label define sl04a_chief_lbl 2303 `"Follosaba Dembelia"', add
label define sl04a_chief_lbl 2304 `"Kasunko"', add
label define sl04a_chief_lbl 2305 `"Mongo"', add
label define sl04a_chief_lbl 2306 `"Neya"', add
label define sl04a_chief_lbl 2307 `"Nieni"', add
label define sl04a_chief_lbl 2308 `"Sengbe"', add
label define sl04a_chief_lbl 2309 `"Sulima"', add
label define sl04a_chief_lbl 2310 `"Wara Wara Bafodia"', add
label define sl04a_chief_lbl 2311 `"Wara Wara Yagala"', add
label define sl04a_chief_lbl 2401 `"BKM [Bureh Kaseh]"', add
label define sl04a_chief_lbl 2402 `"Buya Romende"', add
label define sl04a_chief_lbl 2403 `"Dibia"', add
label define sl04a_chief_lbl 2404 `"Kaffu Bullom"', add
label define sl04a_chief_lbl 2405 `"Koya [Port Loko]"', add
label define sl04a_chief_lbl 2406 `"Lokomasama"', add
label define sl04a_chief_lbl 2407 `"Maforki"', add
label define sl04a_chief_lbl 2408 `"Marampa"', add
label define sl04a_chief_lbl 2409 `"Masimera"', add
label define sl04a_chief_lbl 2410 `"Sanda Magbolontor"', add
label define sl04a_chief_lbl 2411 `"TMS [T.M. Safroko]"', add
label define sl04a_chief_lbl 2501 `"Gbonkolenken"', add
label define sl04a_chief_lbl 2502 `"Kafe Simira"', add
label define sl04a_chief_lbl 2503 `"Kalansogoia"', add
label define sl04a_chief_lbl 2504 `"Kholifa Mabang"', add
label define sl04a_chief_lbl 2505 `"Kholifa Rowalla"', add
label define sl04a_chief_lbl 2506 `"Kunike Barina"', add
label define sl04a_chief_lbl 2507 `"Kunike Sanda"', add
label define sl04a_chief_lbl 2508 `"Malal Mara"', add
label define sl04a_chief_lbl 2509 `"Sambaya"', add
label define sl04a_chief_lbl 2510 `"Tane"', add
label define sl04a_chief_lbl 2511 `"Yoni"', add
label define sl04a_chief_lbl 3101 `"Badjia"', add
label define sl04a_chief_lbl 3102 `"Bagbo"', add
label define sl04a_chief_lbl 3103 `"Bagbwe"', add
label define sl04a_chief_lbl 3104 `"Baoma"', add
label define sl04a_chief_lbl 3105 `"Bumpe Ngawo"', add
label define sl04a_chief_lbl 3106 `"Gbo"', add
label define sl04a_chief_lbl 3107 `"Jaiama-Bongor"', add
label define sl04a_chief_lbl 3108 `"Kakua"', add
label define sl04a_chief_lbl 3109 `"Komboya"', add
label define sl04a_chief_lbl 3110 `"Lugbu"', add
label define sl04a_chief_lbl 3111 `"Niawa Lenga"', add
label define sl04a_chief_lbl 3112 `"Selenga"', add
label define sl04a_chief_lbl 3113 `"Tikonko"', add
label define sl04a_chief_lbl 3114 `"Valunia"', add
label define sl04a_chief_lbl 3115 `"Wunde"', add
label define sl04a_chief_lbl 3191 `"Bo Town"', add
label define sl04a_chief_lbl 3201 `"Bendu Cha"', add
label define sl04a_chief_lbl 3202 `"Bum"', add
label define sl04a_chief_lbl 3203 `"Dema"', add
label define sl04a_chief_lbl 3204 `"Imperi"', add
label define sl04a_chief_lbl 3205 `"Jong"', add
label define sl04a_chief_lbl 3206 `"Kpanda Kemo"', add
label define sl04a_chief_lbl 3207 `"Kwamebai Krim"', add
label define sl04a_chief_lbl 3208 `"Nongoba Bullom"', add
label define sl04a_chief_lbl 3209 `"Sittia"', add
label define sl04a_chief_lbl 3210 `"Sogbini"', add
label define sl04a_chief_lbl 3211 `"Yawbeko"', add
label define sl04a_chief_lbl 3291 `"Bonthe Town"', add
label define sl04a_chief_lbl 3301 `"Bagruwa"', add
label define sl04a_chief_lbl 3302 `"Bumpeh"', add
label define sl04a_chief_lbl 3303 `"Dasse"', add
label define sl04a_chief_lbl 3304 `"Fakunya"', add
label define sl04a_chief_lbl 3305 `"Kagboro"', add
label define sl04a_chief_lbl 3306 `"Kaiyamba"', add
label define sl04a_chief_lbl 3307 `"Kamajei"', add
label define sl04a_chief_lbl 3308 `"Kongbora"', add
label define sl04a_chief_lbl 3309 `"Kori"', add
label define sl04a_chief_lbl 3310 `"Kowa"', add
label define sl04a_chief_lbl 3311 `"Lower Banta"', add
label define sl04a_chief_lbl 3312 `"Ribbi"', add
label define sl04a_chief_lbl 3313 `"Timdale"', add
label define sl04a_chief_lbl 3314 `"Upper Banta"', add
label define sl04a_chief_lbl 3401 `"Barri"', add
label define sl04a_chief_lbl 3402 `"Gallinasperi"', add
label define sl04a_chief_lbl 3403 `"Kpaka"', add
label define sl04a_chief_lbl 3404 `"Kpanga-Kabonde"', add
label define sl04a_chief_lbl 3405 `"Makpele"', add
label define sl04a_chief_lbl 3406 `"Malen"', add
label define sl04a_chief_lbl 3407 `"Mano Sakrim"', add
label define sl04a_chief_lbl 3408 `"Panga Krim"', add
label define sl04a_chief_lbl 3409 `"Pejeh"', add
label define sl04a_chief_lbl 3410 `"Soro Gbema"', add
label define sl04a_chief_lbl 3411 `"Sowa"', add
label define sl04a_chief_lbl 3412 `"YKK [Yekomo Kpukumu Krim]"', add
label define sl04a_chief_lbl 4101 `"Koya [Western - rural]"', add
label define sl04a_chief_lbl 4102 `"Mountain"', add
label define sl04a_chief_lbl 4103 `"Waterloo"', add
label define sl04a_chief_lbl 4104 `"York - rural"', add
label define sl04a_chief_lbl 4201 `"Western - urban - Central 1"', add
label define sl04a_chief_lbl 4202 `"Western - urban - Central 2"', add
label define sl04a_chief_lbl 4203 `"Western - urban - East 1"', add
label define sl04a_chief_lbl 4204 `"Western - urban - East 2"', add
label define sl04a_chief_lbl 4205 `"Western - urban - East 3"', add
label define sl04a_chief_lbl 4206 `"Western - urban - West 1"', add
label define sl04a_chief_lbl 4207 `"Western - urban - West 2"', add
label define sl04a_chief_lbl 4208 `"Western - urban - West 3"', add
label values sl04a_chief sl04a_chief_lbl

label define sl04a_urban_lbl 1 `"Rural"'
label define sl04a_urban_lbl 2 `"Urban"', add
label values sl04a_urban sl04a_urban_lbl

label define sl04a_structyp_lbl 1 `"Single unit, 1 storey"'
label define sl04a_structyp_lbl 2 `"Multiple unit, 1 storey"', add
label define sl04a_structyp_lbl 3 `"Single unit, 2 storey"', add
label define sl04a_structyp_lbl 4 `"Multiple unit, 2 storey"', add
label define sl04a_structyp_lbl 5 `"Single unit, 3+ storey"', add
label define sl04a_structyp_lbl 6 `"Multiple unit, 3+ storey"', add
label define sl04a_structyp_lbl 9 `"Not stated"', add
label values sl04a_structyp sl04a_structyp_lbl

label define sl04a_restype_lbl 1 `"Household"'
label define sl04a_restype_lbl 2 `"Educational"', add
label define sl04a_restype_lbl 3 `"Religious"', add
label define sl04a_restype_lbl 4 `"Medical"', add
label define sl04a_restype_lbl 5 `"Hotel/Hostel"', add
label define sl04a_restype_lbl 6 `"Prison"', add
label define sl04a_restype_lbl 7 `"Orphanage/reformatory/barracks"', add
label define sl04a_restype_lbl 8 `"Other institution"', add
label define sl04a_restype_lbl 9 `"Homeless, refugee camp, floating population"', add
label values sl04a_restype sl04a_restype_lbl

label define sl04a_npers_lbl 01 `"1"'
label define sl04a_npers_lbl 02 `"2"', add
label define sl04a_npers_lbl 03 `"3"', add
label define sl04a_npers_lbl 04 `"4"', add
label define sl04a_npers_lbl 05 `"5"', add
label define sl04a_npers_lbl 06 `"6"', add
label define sl04a_npers_lbl 07 `"7"', add
label define sl04a_npers_lbl 08 `"8"', add
label define sl04a_npers_lbl 09 `"9"', add
label define sl04a_npers_lbl 10 `"10"', add
label define sl04a_npers_lbl 11 `"11"', add
label define sl04a_npers_lbl 12 `"12"', add
label define sl04a_npers_lbl 13 `"13"', add
label define sl04a_npers_lbl 14 `"14"', add
label define sl04a_npers_lbl 15 `"15"', add
label define sl04a_npers_lbl 16 `"16"', add
label define sl04a_npers_lbl 17 `"17"', add
label define sl04a_npers_lbl 18 `"18"', add
label define sl04a_npers_lbl 19 `"19"', add
label define sl04a_npers_lbl 20 `"20"', add
label define sl04a_npers_lbl 21 `"21"', add
label define sl04a_npers_lbl 22 `"22"', add
label define sl04a_npers_lbl 23 `"23"', add
label define sl04a_npers_lbl 24 `"24"', add
label define sl04a_npers_lbl 25 `"25"', add
label define sl04a_npers_lbl 26 `"26"', add
label define sl04a_npers_lbl 27 `"27"', add
label define sl04a_npers_lbl 28 `"28"', add
label define sl04a_npers_lbl 29 `"29"', add
label define sl04a_npers_lbl 30 `"30"', add
label define sl04a_npers_lbl 31 `"31"', add
label define sl04a_npers_lbl 32 `"32"', add
label define sl04a_npers_lbl 33 `"33"', add
label define sl04a_npers_lbl 34 `"34"', add
label define sl04a_npers_lbl 35 `"35"', add
label define sl04a_npers_lbl 36 `"36"', add
label define sl04a_npers_lbl 37 `"37"', add
label define sl04a_npers_lbl 38 `"38"', add
label define sl04a_npers_lbl 39 `"39"', add
label define sl04a_npers_lbl 40 `"40"', add
label define sl04a_npers_lbl 42 `"42"', add
label define sl04a_npers_lbl 43 `"43"', add
label define sl04a_npers_lbl 45 `"45"', add
label define sl04a_npers_lbl 46 `"46"', add
label define sl04a_npers_lbl 47 `"47"', add
label define sl04a_npers_lbl 50 `"50"', add
label define sl04a_npers_lbl 51 `"51"', add
label define sl04a_npers_lbl 52 `"52"', add
label define sl04a_npers_lbl 53 `"53"', add
label define sl04a_npers_lbl 58 `"58"', add
label define sl04a_npers_lbl 71 `"71"', add
label define sl04a_npers_lbl 72 `"72"', add
label values sl04a_npers sl04a_npers_lbl

label define sl04a_repair_lbl 1 `"No repairs"'
label define sl04a_repair_lbl 2 `"Minor repairs"', add
label define sl04a_repair_lbl 3 `"Rehabilitation"', add
label define sl04a_repair_lbl 4 `"Reconstruction"', add
label values sl04a_repair sl04a_repair_lbl

label define sl04a_rooms_lbl 01 `"1"'
label define sl04a_rooms_lbl 02 `"2"', add
label define sl04a_rooms_lbl 03 `"3"', add
label define sl04a_rooms_lbl 04 `"4"', add
label define sl04a_rooms_lbl 05 `"5"', add
label define sl04a_rooms_lbl 06 `"6"', add
label define sl04a_rooms_lbl 07 `"7"', add
label define sl04a_rooms_lbl 08 `"8"', add
label define sl04a_rooms_lbl 09 `"9"', add
label define sl04a_rooms_lbl 10 `"10"', add
label define sl04a_rooms_lbl 11 `"11"', add
label define sl04a_rooms_lbl 12 `"12"', add
label define sl04a_rooms_lbl 13 `"13"', add
label define sl04a_rooms_lbl 14 `"14"', add
label define sl04a_rooms_lbl 15 `"15+"', add
label values sl04a_rooms sl04a_rooms_lbl

label define sl04a_impnets_lbl 0 `"0"'
label define sl04a_impnets_lbl 1 `"1"', add
label define sl04a_impnets_lbl 2 `"2"', add
label define sl04a_impnets_lbl 3 `"3"', add
label define sl04a_impnets_lbl 4 `"4"', add
label define sl04a_impnets_lbl 5 `"5"', add
label define sl04a_impnets_lbl 6 `"6"', add
label define sl04a_impnets_lbl 7 `"7+"', add
label values sl04a_impnets sl04a_impnets_lbl

label define sl04a_nets_lbl 00 `"0"'
label define sl04a_nets_lbl 01 `"1"', add
label define sl04a_nets_lbl 02 `"2"', add
label define sl04a_nets_lbl 03 `"3"', add
label define sl04a_nets_lbl 04 `"4"', add
label define sl04a_nets_lbl 05 `"5"', add
label define sl04a_nets_lbl 06 `"6"', add
label define sl04a_nets_lbl 07 `"7"', add
label define sl04a_nets_lbl 08 `"8"', add
label define sl04a_nets_lbl 09 `"9"', add
label define sl04a_nets_lbl 10 `"10+"', add
label values sl04a_nets sl04a_nets_lbl

label define sl04a_nonets_lbl 00 `"0"'
label define sl04a_nonets_lbl 01 `"1"', add
label define sl04a_nonets_lbl 02 `"2"', add
label define sl04a_nonets_lbl 03 `"3"', add
label define sl04a_nonets_lbl 04 `"4"', add
label define sl04a_nonets_lbl 05 `"5"', add
label define sl04a_nonets_lbl 06 `"6"', add
label define sl04a_nonets_lbl 07 `"7"', add
label define sl04a_nonets_lbl 08 `"8"', add
label define sl04a_nonets_lbl 09 `"9"', add
label define sl04a_nonets_lbl 10 `"10"', add
label define sl04a_nonets_lbl 11 `"11"', add
label define sl04a_nonets_lbl 12 `"12"', add
label define sl04a_nonets_lbl 13 `"13+"', add
label values sl04a_nonets sl04a_nonets_lbl

label define sl04a_acquired_lbl 01 `"Purchased"'
label define sl04a_acquired_lbl 02 `"Constructed"', add
label define sl04a_acquired_lbl 03 `"Inherited"', add
label define sl04a_acquired_lbl 04 `"Employer provided - government"', add
label define sl04a_acquired_lbl 05 `"Employer provided - private"', add
label define sl04a_acquired_lbl 06 `"Employer provided - parastatal"', add
label define sl04a_acquired_lbl 07 `"Employer provided - quasi-government"', add
label define sl04a_acquired_lbl 08 `"Rented - government"', add
label define sl04a_acquired_lbl 09 `"Rented - housing corporation"', add
label define sl04a_acquired_lbl 10 `"Rented - private"', add
label define sl04a_acquired_lbl 11 `"Rented - parastatal"', add
label define sl04a_acquired_lbl 12 `"Rented - quasi-government"', add
label define sl04a_acquired_lbl 13 `"Squatter"', add
label define sl04a_acquired_lbl 14 `"Other"', add
label values sl04a_acquired sl04a_acquired_lbl

label define sl04a_roof_lbl 1 `"Concrete"'
label define sl04a_roof_lbl 2 `"Asbestos"', add
label define sl04a_roof_lbl 3 `"Zinc"', add
label define sl04a_roof_lbl 4 `"Thatch"', add
label define sl04a_roof_lbl 5 `"Tarpaulin"', add
label define sl04a_roof_lbl 6 `"Tiles"', add
label define sl04a_roof_lbl 7 `"Other"', add
label values sl04a_roof sl04a_roof_lbl

label define sl04a_wall_lbl 01 `"Stone"'
label define sl04a_wall_lbl 02 `"Cement blocks"', add
label define sl04a_wall_lbl 03 `"Clay bricks"', add
label define sl04a_wall_lbl 04 `"Sandcrete"', add
label define sl04a_wall_lbl 05 `"Zinc"', add
label define sl04a_wall_lbl 06 `"Timber"', add
label define sl04a_wall_lbl 07 `"Mud bricks"', add
label define sl04a_wall_lbl 08 `"Poles/reed"', add
label define sl04a_wall_lbl 09 `"Tarpaulin"', add
label define sl04a_wall_lbl 10 `"Mud and wattle"', add
label define sl04a_wall_lbl 11 `"Other"', add
label values sl04a_wall sl04a_wall_lbl

label define sl04a_floor_lbl 1 `"Stone"'
label define sl04a_floor_lbl 2 `"Tiles"', add
label define sl04a_floor_lbl 3 `"Cement"', add
label define sl04a_floor_lbl 4 `"Wood"', add
label define sl04a_floor_lbl 5 `"Mud"', add
label define sl04a_floor_lbl 6 `"Other"', add
label values sl04a_floor sl04a_floor_lbl

label define sl04a_trash_lbl 1 `"Collected"'
label define sl04a_trash_lbl 2 `"Dumped anywhere"', add
label define sl04a_trash_lbl 3 `"Burnt"', add
label define sl04a_trash_lbl 4 `"Buried"', add
label define sl04a_trash_lbl 5 `"Deposited in bin"', add
label define sl04a_trash_lbl 6 `"Other"', add
label values sl04a_trash sl04a_trash_lbl

label define sl04a_fuelcook_lbl 1 `"Electricity"'
label define sl04a_fuelcook_lbl 2 `"Gas"', add
label define sl04a_fuelcook_lbl 3 `"Kerosene"', add
label define sl04a_fuelcook_lbl 4 `"Charcoal"', add
label define sl04a_fuelcook_lbl 5 `"Wood"', add
label define sl04a_fuelcook_lbl 6 `"Other"', add
label values sl04a_fuelcook sl04a_fuelcook_lbl

label define sl04a_lighting_lbl 1 `"Electricity"'
label define sl04a_lighting_lbl 2 `"Gas"', add
label define sl04a_lighting_lbl 3 `"Kerosene"', add
label define sl04a_lighting_lbl 4 `"Generator"', add
label define sl04a_lighting_lbl 5 `"Battery/rechargeable light"', add
label define sl04a_lighting_lbl 6 `"Candle"', add
label define sl04a_lighting_lbl 7 `"Wood"', add
label define sl04a_lighting_lbl 8 `"Other"', add
label values sl04a_lighting sl04a_lighting_lbl

label define sl04a_watsrc_lbl 01 `"Piped indoors"'
label define sl04a_watsrc_lbl 02 `"Piped in compound"', add
label define sl04a_watsrc_lbl 03 `"Public tap"', add
label define sl04a_watsrc_lbl 04 `"Protected ordinary well"', add
label define sl04a_watsrc_lbl 05 `"Unprotected ordinary  well"', add
label define sl04a_watsrc_lbl 06 `"Mechanical well"', add
label define sl04a_watsrc_lbl 07 `"River/riverbed/stream"', add
label define sl04a_watsrc_lbl 08 `"Neighbour's tap"', add
label define sl04a_watsrc_lbl 09 `"Water vendor/bowser"', add
label define sl04a_watsrc_lbl 10 `"Other"', add
label values sl04a_watsrc sl04a_watsrc_lbl

label define sl04a_toilet_lbl 1 `"Ventilated Improved Pit (VIP)"'
label define sl04a_toilet_lbl 2 `"Flush, inside"', add
label define sl04a_toilet_lbl 3 `"Flush, outside"', add
label define sl04a_toilet_lbl 4 `"Pit"', add
label define sl04a_toilet_lbl 5 `"Bucket"', add
label define sl04a_toilet_lbl 6 `"Bush/riverbed"', add
label define sl04a_toilet_lbl 7 `"Other"', add
label define sl04a_toilet_lbl 9 `"Unknown"', add
label values sl04a_toilet sl04a_toilet_lbl

label define sl04a_bathing_lbl 1 `"Inside"'
label define sl04a_bathing_lbl 2 `"Outside, built"', add
label define sl04a_bathing_lbl 3 `"Outside, makeshift"', add
label define sl04a_bathing_lbl 4 `"Other"', add
label define sl04a_bathing_lbl 5 `"None"', add
label values sl04a_bathing sl04a_bathing_lbl

label define sl04a_inform_lbl 1 `"Radio"'
label define sl04a_inform_lbl 2 `"Television"', add
label define sl04a_inform_lbl 3 `"Print media"', add
label define sl04a_inform_lbl 4 `"Post mail"', add
label define sl04a_inform_lbl 5 `"Hand mail"', add
label define sl04a_inform_lbl 6 `"Word of mouth"', add
label define sl04a_inform_lbl 7 `"Church/mosque"', add
label define sl04a_inform_lbl 8 `"Other"', add
label values sl04a_inform sl04a_inform_lbl

label define sl04a_disthlth_lbl 1 `"On premises"'
label define sl04a_disthlth_lbl 2 `"Less than half a mile"', add
label define sl04a_disthlth_lbl 3 `"Between half a mile and less than one mile"', add
label define sl04a_disthlth_lbl 4 `"Between one mile and less than five miles"', add
label define sl04a_disthlth_lbl 5 `"Five miles or more"', add
label values sl04a_disthlth sl04a_disthlth_lbl

label define sl04a_distschl_lbl 1 `"On premises"'
label define sl04a_distschl_lbl 2 `"Less than half a mile"', add
label define sl04a_distschl_lbl 3 `"Between half a mile and less than one mile"', add
label define sl04a_distschl_lbl 4 `"Between one mile and less than five miles"', add
label define sl04a_distschl_lbl 5 `"Five miles or more"', add
label values sl04a_distschl sl04a_distschl_lbl

label define sl04a_distwatr_lbl 1 `"On premises"'
label define sl04a_distwatr_lbl 2 `"Less than half a mile"', add
label define sl04a_distwatr_lbl 3 `"Between half a mile and less than one mile"', add
label define sl04a_distwatr_lbl 4 `"Between one mile and less than five miles"', add
label define sl04a_distwatr_lbl 5 `"Five miles or more"', add
label values sl04a_distwatr sl04a_distwatr_lbl

label define sl04a_iron_lbl 1 `"Yes"'
label define sl04a_iron_lbl 2 `"No"', add
label define sl04a_iron_lbl 9 `"Unknown"', add
label values sl04a_iron sl04a_iron_lbl

label define sl04a_fridge_lbl 1 `"Yes"'
label define sl04a_fridge_lbl 2 `"No"', add
label define sl04a_fridge_lbl 9 `"Unknown"', add
label values sl04a_fridge sl04a_fridge_lbl

label define sl04a_tv_lbl 1 `"Yes"'
label define sl04a_tv_lbl 2 `"No"', add
label define sl04a_tv_lbl 9 `"Unknown"', add
label values sl04a_tv sl04a_tv_lbl

label define sl04a_pc_lbl 1 `"Yes"'
label define sl04a_pc_lbl 2 `"No"', add
label define sl04a_pc_lbl 9 `"Unknown"', add
label values sl04a_pc sl04a_pc_lbl

label define sl04a_radio_lbl 1 `"Yes"'
label define sl04a_radio_lbl 2 `"No"', add
label define sl04a_radio_lbl 9 `"Unknown"', add
label values sl04a_radio sl04a_radio_lbl

label define sl04a_phone_lbl 1 `"Yes"'
label define sl04a_phone_lbl 2 `"No"', add
label define sl04a_phone_lbl 9 `"Unknown"', add
label values sl04a_phone sl04a_phone_lbl

label define sl04a_cell_lbl 1 `"Yes"'
label define sl04a_cell_lbl 2 `"No"', add
label define sl04a_cell_lbl 9 `"Unknown"', add
label values sl04a_cell sl04a_cell_lbl

label define sl04a_stove_lbl 1 `"Yes"'
label define sl04a_stove_lbl 2 `"No"', add
label define sl04a_stove_lbl 9 `"Unknown"', add
label values sl04a_stove sl04a_stove_lbl

label define sl04a_bike_lbl 1 `"Yes"'
label define sl04a_bike_lbl 2 `"No"', add
label define sl04a_bike_lbl 9 `"Unknown"', add
label values sl04a_bike sl04a_bike_lbl

label define sl04a_motocyc_lbl 1 `"Yes"'
label define sl04a_motocyc_lbl 2 `"No"', add
label define sl04a_motocyc_lbl 9 `"Unknown"', add
label values sl04a_motocyc sl04a_motocyc_lbl

label define sl04a_vehicle_lbl 1 `"Yes"'
label define sl04a_vehicle_lbl 2 `"No"', add
label define sl04a_vehicle_lbl 9 `"Unknown"', add
label values sl04a_vehicle sl04a_vehicle_lbl

label define sl04a_acriceup_lbl 00 `"0"'
label define sl04a_acriceup_lbl 01 `"1"', add
label define sl04a_acriceup_lbl 02 `"2"', add
label define sl04a_acriceup_lbl 03 `"3"', add
label define sl04a_acriceup_lbl 04 `"4"', add
label define sl04a_acriceup_lbl 05 `"5"', add
label define sl04a_acriceup_lbl 06 `"6"', add
label define sl04a_acriceup_lbl 07 `"7"', add
label define sl04a_acriceup_lbl 08 `"8"', add
label define sl04a_acriceup_lbl 09 `"9+"', add
label define sl04a_acriceup_lbl 99 `"Unknown"', add
label values sl04a_acriceup sl04a_acriceup_lbl

label define sl04a_acricelo_lbl 00 `"0"'
label define sl04a_acricelo_lbl 01 `"1"', add
label define sl04a_acricelo_lbl 02 `"2"', add
label define sl04a_acricelo_lbl 03 `"3"', add
label define sl04a_acricelo_lbl 04 `"4"', add
label define sl04a_acricelo_lbl 05 `"5"', add
label define sl04a_acricelo_lbl 06 `"6"', add
label define sl04a_acricelo_lbl 07 `"7"', add
label define sl04a_acricelo_lbl 08 `"8"', add
label define sl04a_acricelo_lbl 09 `"9+"', add
label define sl04a_acricelo_lbl 99 `"Unknown"', add
label values sl04a_acricelo sl04a_acricelo_lbl

label define sl04a_accass_lbl 0 `"0"'
label define sl04a_accass_lbl 1 `"1"', add
label define sl04a_accass_lbl 2 `"2"', add
label define sl04a_accass_lbl 3 `"3"', add
label define sl04a_accass_lbl 4 `"4"', add
label define sl04a_accass_lbl 5 `"5"', add
label define sl04a_accass_lbl 6 `"6"', add
label define sl04a_accass_lbl 7 `"7+"', add
label define sl04a_accass_lbl 9 `"Unknown"', add
label values sl04a_accass sl04a_accass_lbl

label define sl04a_acswpot_lbl 00 `"0"'
label define sl04a_acswpot_lbl 01 `"1"', add
label define sl04a_acswpot_lbl 02 `"2"', add
label define sl04a_acswpot_lbl 03 `"3"', add
label define sl04a_acswpot_lbl 04 `"4"', add
label define sl04a_acswpot_lbl 05 `"5"', add
label define sl04a_acswpot_lbl 06 `"6"', add
label define sl04a_acswpot_lbl 07 `"7"', add
label define sl04a_acswpot_lbl 08 `"8"', add
label define sl04a_acswpot_lbl 09 `"9+"', add
label define sl04a_acswpot_lbl 99 `"Unknown"', add
label values sl04a_acswpot sl04a_acswpot_lbl

label define sl04a_acgrndnt_lbl 0 `"0"'
label define sl04a_acgrndnt_lbl 1 `"1"', add
label define sl04a_acgrndnt_lbl 2 `"2"', add
label define sl04a_acgrndnt_lbl 3 `"3"', add
label define sl04a_acgrndnt_lbl 4 `"4"', add
label define sl04a_acgrndnt_lbl 5 `"5"', add
label define sl04a_acgrndnt_lbl 6 `"6"', add
label define sl04a_acgrndnt_lbl 7 `"7"', add
label define sl04a_acgrndnt_lbl 8 `"8+"', add
label define sl04a_acgrndnt_lbl 9 `"Unknown"', add
label values sl04a_acgrndnt sl04a_acgrndnt_lbl

label define sl04a_acmaize_lbl 00 `"0"'
label define sl04a_acmaize_lbl 01 `"1"', add
label define sl04a_acmaize_lbl 02 `"2"', add
label define sl04a_acmaize_lbl 03 `"3"', add
label define sl04a_acmaize_lbl 04 `"4"', add
label define sl04a_acmaize_lbl 05 `"5"', add
label define sl04a_acmaize_lbl 06 `"6"', add
label define sl04a_acmaize_lbl 07 `"7"', add
label define sl04a_acmaize_lbl 08 `"8"', add
label define sl04a_acmaize_lbl 09 `"9+"', add
label define sl04a_acmaize_lbl 99 `"Unknown"', add
label values sl04a_acmaize sl04a_acmaize_lbl

label define sl04a_accoffee_lbl 00 `"0"'
label define sl04a_accoffee_lbl 01 `"1"', add
label define sl04a_accoffee_lbl 02 `"2"', add
label define sl04a_accoffee_lbl 03 `"3"', add
label define sl04a_accoffee_lbl 04 `"4"', add
label define sl04a_accoffee_lbl 05 `"5"', add
label define sl04a_accoffee_lbl 06 `"6"', add
label define sl04a_accoffee_lbl 07 `"7"', add
label define sl04a_accoffee_lbl 08 `"8"', add
label define sl04a_accoffee_lbl 09 `"9+"', add
label define sl04a_accoffee_lbl 99 `"Unknown"', add
label values sl04a_accoffee sl04a_accoffee_lbl

label define sl04a_accacao_lbl 00 `"0"'
label define sl04a_accacao_lbl 01 `"1"', add
label define sl04a_accacao_lbl 02 `"2"', add
label define sl04a_accacao_lbl 03 `"3"', add
label define sl04a_accacao_lbl 04 `"4"', add
label define sl04a_accacao_lbl 05 `"5"', add
label define sl04a_accacao_lbl 06 `"6"', add
label define sl04a_accacao_lbl 07 `"7"', add
label define sl04a_accacao_lbl 08 `"8"', add
label define sl04a_accacao_lbl 09 `"9+"', add
label define sl04a_accacao_lbl 99 `"Unknown"', add
label values sl04a_accacao sl04a_accacao_lbl

label define sl04a_acoilplm_lbl 0 `"0"'
label define sl04a_acoilplm_lbl 1 `"1"', add
label define sl04a_acoilplm_lbl 2 `"2"', add
label define sl04a_acoilplm_lbl 3 `"3"', add
label define sl04a_acoilplm_lbl 4 `"4"', add
label define sl04a_acoilplm_lbl 5 `"5"', add
label define sl04a_acoilplm_lbl 6 `"6"', add
label define sl04a_acoilplm_lbl 7 `"7+"', add
label define sl04a_acoilplm_lbl 9 `"Unknown"', add
label values sl04a_acoilplm sl04a_acoilplm_lbl

label define sl04a_accitrus_lbl 0 `"0"'
label define sl04a_accitrus_lbl 1 `"1"', add
label define sl04a_accitrus_lbl 2 `"2"', add
label define sl04a_accitrus_lbl 3 `"3"', add
label define sl04a_accitrus_lbl 4 `"4"', add
label define sl04a_accitrus_lbl 5 `"5"', add
label define sl04a_accitrus_lbl 6 `"6"', add
label define sl04a_accitrus_lbl 7 `"7+"', add
label define sl04a_accitrus_lbl 9 `"Unknown"', add
label values sl04a_accitrus sl04a_accitrus_lbl

label define sl04a_acveg_lbl 0 `"0"'
label define sl04a_acveg_lbl 1 `"1"', add
label define sl04a_acveg_lbl 2 `"2"', add
label define sl04a_acveg_lbl 3 `"3"', add
label define sl04a_acveg_lbl 4 `"4"', add
label define sl04a_acveg_lbl 5 `"5"', add
label define sl04a_acveg_lbl 6 `"6"', add
label define sl04a_acveg_lbl 7 `"7+"', add
label define sl04a_acveg_lbl 9 `"Unknown"', add
label values sl04a_acveg sl04a_acveg_lbl

label define sl04a_cattle_lbl 0 `"0"'
label define sl04a_cattle_lbl 1 `"1"', add
label define sl04a_cattle_lbl 2 `"2"', add
label define sl04a_cattle_lbl 3 `"3"', add
label define sl04a_cattle_lbl 4 `"4"', add
label define sl04a_cattle_lbl 5 `"5"', add
label define sl04a_cattle_lbl 6 `"6"', add
label define sl04a_cattle_lbl 7 `"7"', add
label define sl04a_cattle_lbl 8 `"8+"', add
label define sl04a_cattle_lbl 9 `"Unknown"', add
label values sl04a_cattle sl04a_cattle_lbl

label define sl04a_sheep_lbl 00 `"0"'
label define sl04a_sheep_lbl 01 `"1"', add
label define sl04a_sheep_lbl 02 `"2"', add
label define sl04a_sheep_lbl 03 `"3"', add
label define sl04a_sheep_lbl 04 `"4"', add
label define sl04a_sheep_lbl 05 `"5"', add
label define sl04a_sheep_lbl 06 `"6"', add
label define sl04a_sheep_lbl 07 `"7"', add
label define sl04a_sheep_lbl 08 `"8"', add
label define sl04a_sheep_lbl 09 `"9"', add
label define sl04a_sheep_lbl 99 `"Not stated"', add
label values sl04a_sheep sl04a_sheep_lbl

label define sl04a_goats_lbl 0 `"0"'
label define sl04a_goats_lbl 1 `"1"', add
label define sl04a_goats_lbl 2 `"2"', add
label define sl04a_goats_lbl 3 `"3"', add
label define sl04a_goats_lbl 4 `"4"', add
label define sl04a_goats_lbl 5 `"5"', add
label define sl04a_goats_lbl 6 `"6"', add
label define sl04a_goats_lbl 7 `"7+"', add
label define sl04a_goats_lbl 9 `"Unknown"', add
label values sl04a_goats sl04a_goats_lbl

label define sl04a_pigs_lbl 00 `"0"'
label define sl04a_pigs_lbl 01 `"1"', add
label define sl04a_pigs_lbl 02 `"2"', add
label define sl04a_pigs_lbl 03 `"3"', add
label define sl04a_pigs_lbl 04 `"4"', add
label define sl04a_pigs_lbl 05 `"5"', add
label define sl04a_pigs_lbl 06 `"6"', add
label define sl04a_pigs_lbl 07 `"7"', add
label define sl04a_pigs_lbl 08 `"8"', add
label define sl04a_pigs_lbl 09 `"9"', add
label define sl04a_pigs_lbl 99 `"Unknown"', add
label values sl04a_pigs sl04a_pigs_lbl

label define sl04a_chickens_lbl 00 `"0"'
label define sl04a_chickens_lbl 01 `"1"', add
label define sl04a_chickens_lbl 02 `"2"', add
label define sl04a_chickens_lbl 03 `"3"', add
label define sl04a_chickens_lbl 04 `"4"', add
label define sl04a_chickens_lbl 05 `"5"', add
label define sl04a_chickens_lbl 06 `"6"', add
label define sl04a_chickens_lbl 07 `"7"', add
label define sl04a_chickens_lbl 08 `"8"', add
label define sl04a_chickens_lbl 09 `"9+"', add
label define sl04a_chickens_lbl 99 `"Unknown"', add
label values sl04a_chickens sl04a_chickens_lbl

label define sl04a_ducks_lbl 0 `"0"'
label define sl04a_ducks_lbl 1 `"1 or more"', add
label define sl04a_ducks_lbl 9 `"Unknown"', add
label values sl04a_ducks sl04a_ducks_lbl

label define sl04a_tractor_lbl 1 `"Yes"'
label define sl04a_tractor_lbl 2 `"No"', add
label define sl04a_tractor_lbl 9 `"Unknown"', add
label values sl04a_tractor sl04a_tractor_lbl

label define sl04a_tiller_lbl 1 `"Yes"'
label define sl04a_tiller_lbl 2 `"No"', add
label define sl04a_tiller_lbl 9 `"Unknown"', add
label values sl04a_tiller sl04a_tiller_lbl

label define sl04a_thresher_lbl 1 `"Yes"'
label define sl04a_thresher_lbl 2 `"No"', add
label define sl04a_thresher_lbl 9 `"Unknown"', add
label values sl04a_thresher sl04a_thresher_lbl

label define sl04a_mill_lbl 1 `"Yes"'
label define sl04a_mill_lbl 2 `"No"', add
label define sl04a_mill_lbl 9 `"Unknown"', add
label values sl04a_mill sl04a_mill_lbl

label define sl04a_storage_lbl 1 `"Yes"'
label define sl04a_storage_lbl 2 `"No"', add
label define sl04a_storage_lbl 9 `"Unknown"', add
label values sl04a_storage sl04a_storage_lbl

label define sl04a_dryfloor_lbl 1 `"Yes"'
label define sl04a_dryfloor_lbl 2 `"No"', add
label define sl04a_dryfloor_lbl 9 `"Unknown"', add
label values sl04a_dryfloor sl04a_dryfloor_lbl

label define sl04a_grater_lbl 1 `"Yes"'
label define sl04a_grater_lbl 2 `"No"', add
label define sl04a_grater_lbl 9 `"Unknown"', add
label values sl04a_grater sl04a_grater_lbl

label define sl04a_nmort_lbl 0 `"0"'
label define sl04a_nmort_lbl 1 `"1"', add
label define sl04a_nmort_lbl 2 `"2"', add
label define sl04a_nmort_lbl 3 `"3"', add
label define sl04a_nmort_lbl 4 `"4"', add
label define sl04a_nmort_lbl 5 `"5+"', add
label values sl04a_nmort sl04a_nmort_lbl

label define sl04a_pernum_lbl 00 `"Household record"'
label define sl04a_pernum_lbl 01 `"1"', add
label define sl04a_pernum_lbl 02 `"2"', add
label define sl04a_pernum_lbl 03 `"3"', add
label define sl04a_pernum_lbl 04 `"4"', add
label define sl04a_pernum_lbl 05 `"5"', add
label define sl04a_pernum_lbl 06 `"6"', add
label define sl04a_pernum_lbl 07 `"7"', add
label define sl04a_pernum_lbl 08 `"8"', add
label define sl04a_pernum_lbl 09 `"9"', add
label define sl04a_pernum_lbl 10 `"10"', add
label define sl04a_pernum_lbl 11 `"11"', add
label define sl04a_pernum_lbl 12 `"12"', add
label define sl04a_pernum_lbl 13 `"13"', add
label define sl04a_pernum_lbl 14 `"14"', add
label define sl04a_pernum_lbl 15 `"15"', add
label define sl04a_pernum_lbl 16 `"16"', add
label define sl04a_pernum_lbl 17 `"17"', add
label define sl04a_pernum_lbl 18 `"18"', add
label define sl04a_pernum_lbl 19 `"19"', add
label define sl04a_pernum_lbl 20 `"20"', add
label define sl04a_pernum_lbl 21 `"21"', add
label define sl04a_pernum_lbl 22 `"22"', add
label define sl04a_pernum_lbl 23 `"23"', add
label define sl04a_pernum_lbl 24 `"24"', add
label define sl04a_pernum_lbl 25 `"25"', add
label define sl04a_pernum_lbl 26 `"26"', add
label define sl04a_pernum_lbl 27 `"27"', add
label define sl04a_pernum_lbl 28 `"28"', add
label define sl04a_pernum_lbl 29 `"29"', add
label define sl04a_pernum_lbl 30 `"30"', add
label define sl04a_pernum_lbl 31 `"31"', add
label define sl04a_pernum_lbl 32 `"32"', add
label define sl04a_pernum_lbl 33 `"33"', add
label define sl04a_pernum_lbl 34 `"34"', add
label define sl04a_pernum_lbl 35 `"35"', add
label define sl04a_pernum_lbl 36 `"36"', add
label define sl04a_pernum_lbl 37 `"37"', add
label define sl04a_pernum_lbl 38 `"38"', add
label define sl04a_pernum_lbl 39 `"39"', add
label define sl04a_pernum_lbl 40 `"40"', add
label define sl04a_pernum_lbl 41 `"41"', add
label define sl04a_pernum_lbl 42 `"42"', add
label define sl04a_pernum_lbl 43 `"43"', add
label define sl04a_pernum_lbl 44 `"44"', add
label define sl04a_pernum_lbl 45 `"45"', add
label define sl04a_pernum_lbl 46 `"46"', add
label define sl04a_pernum_lbl 47 `"47"', add
label define sl04a_pernum_lbl 48 `"48"', add
label define sl04a_pernum_lbl 49 `"49"', add
label define sl04a_pernum_lbl 50 `"50"', add
label define sl04a_pernum_lbl 51 `"51"', add
label define sl04a_pernum_lbl 52 `"52"', add
label define sl04a_pernum_lbl 53 `"53"', add
label define sl04a_pernum_lbl 54 `"54"', add
label define sl04a_pernum_lbl 55 `"55"', add
label define sl04a_pernum_lbl 56 `"56"', add
label define sl04a_pernum_lbl 57 `"57"', add
label define sl04a_pernum_lbl 58 `"58"', add
label define sl04a_pernum_lbl 59 `"59"', add
label define sl04a_pernum_lbl 60 `"60"', add
label define sl04a_pernum_lbl 61 `"61"', add
label define sl04a_pernum_lbl 62 `"62"', add
label define sl04a_pernum_lbl 63 `"63"', add
label define sl04a_pernum_lbl 64 `"64"', add
label define sl04a_pernum_lbl 65 `"65"', add
label define sl04a_pernum_lbl 66 `"66"', add
label define sl04a_pernum_lbl 67 `"67"', add
label define sl04a_pernum_lbl 68 `"68"', add
label define sl04a_pernum_lbl 69 `"69"', add
label define sl04a_pernum_lbl 70 `"70"', add
label define sl04a_pernum_lbl 71 `"71"', add
label define sl04a_pernum_lbl 72 `"72"', add
label values sl04a_pernum sl04a_pernum_lbl

label define sl04a_perno_lbl 01 `"1"'
label define sl04a_perno_lbl 02 `"2"', add
label define sl04a_perno_lbl 03 `"3"', add
label define sl04a_perno_lbl 04 `"4"', add
label define sl04a_perno_lbl 05 `"5"', add
label define sl04a_perno_lbl 06 `"6"', add
label define sl04a_perno_lbl 07 `"7"', add
label define sl04a_perno_lbl 08 `"8"', add
label define sl04a_perno_lbl 09 `"9"', add
label define sl04a_perno_lbl 10 `"10"', add
label define sl04a_perno_lbl 11 `"11"', add
label define sl04a_perno_lbl 12 `"12"', add
label define sl04a_perno_lbl 13 `"13"', add
label define sl04a_perno_lbl 14 `"14"', add
label define sl04a_perno_lbl 15 `"15"', add
label define sl04a_perno_lbl 16 `"16"', add
label define sl04a_perno_lbl 17 `"17"', add
label define sl04a_perno_lbl 18 `"18"', add
label define sl04a_perno_lbl 19 `"19"', add
label define sl04a_perno_lbl 20 `"20"', add
label define sl04a_perno_lbl 21 `"21"', add
label define sl04a_perno_lbl 22 `"22"', add
label define sl04a_perno_lbl 23 `"23"', add
label define sl04a_perno_lbl 24 `"24"', add
label define sl04a_perno_lbl 25 `"25"', add
label define sl04a_perno_lbl 26 `"26"', add
label define sl04a_perno_lbl 27 `"27"', add
label define sl04a_perno_lbl 28 `"28"', add
label define sl04a_perno_lbl 29 `"29"', add
label define sl04a_perno_lbl 30 `"30"', add
label define sl04a_perno_lbl 31 `"31"', add
label define sl04a_perno_lbl 32 `"32"', add
label define sl04a_perno_lbl 33 `"33"', add
label define sl04a_perno_lbl 34 `"34"', add
label define sl04a_perno_lbl 35 `"35"', add
label define sl04a_perno_lbl 36 `"36"', add
label define sl04a_perno_lbl 37 `"37"', add
label define sl04a_perno_lbl 38 `"38"', add
label define sl04a_perno_lbl 39 `"39"', add
label define sl04a_perno_lbl 40 `"40"', add
label define sl04a_perno_lbl 41 `"41"', add
label define sl04a_perno_lbl 42 `"42"', add
label define sl04a_perno_lbl 43 `"43"', add
label define sl04a_perno_lbl 44 `"44"', add
label define sl04a_perno_lbl 45 `"45"', add
label define sl04a_perno_lbl 46 `"46"', add
label define sl04a_perno_lbl 47 `"47"', add
label define sl04a_perno_lbl 48 `"48"', add
label define sl04a_perno_lbl 49 `"49"', add
label define sl04a_perno_lbl 50 `"50"', add
label define sl04a_perno_lbl 51 `"51"', add
label define sl04a_perno_lbl 52 `"52"', add
label define sl04a_perno_lbl 53 `"53"', add
label define sl04a_perno_lbl 54 `"54"', add
label define sl04a_perno_lbl 55 `"55"', add
label define sl04a_perno_lbl 56 `"56"', add
label define sl04a_perno_lbl 57 `"57"', add
label define sl04a_perno_lbl 58 `"58"', add
label define sl04a_perno_lbl 59 `"59"', add
label define sl04a_perno_lbl 60 `"60"', add
label define sl04a_perno_lbl 61 `"61"', add
label define sl04a_perno_lbl 62 `"62"', add
label define sl04a_perno_lbl 63 `"63"', add
label define sl04a_perno_lbl 64 `"64"', add
label define sl04a_perno_lbl 65 `"65"', add
label define sl04a_perno_lbl 66 `"66"', add
label define sl04a_perno_lbl 67 `"67"', add
label define sl04a_perno_lbl 68 `"68"', add
label define sl04a_perno_lbl 69 `"69"', add
label define sl04a_perno_lbl 70 `"70"', add
label define sl04a_perno_lbl 71 `"71"', add
label define sl04a_perno_lbl 72 `"72"', add
label values sl04a_perno sl04a_perno_lbl

label define sl04a_relate_lbl 01 `"Head"'
label define sl04a_relate_lbl 02 `"Spouse"', add
label define sl04a_relate_lbl 03 `"Son/daughter"', add
label define sl04a_relate_lbl 04 `"Sister/brother"', add
label define sl04a_relate_lbl 05 `"Nephew/niece"', add
label define sl04a_relate_lbl 06 `"Parent"', add
label define sl04a_relate_lbl 07 `"In-law"', add
label define sl04a_relate_lbl 08 `"Grandchild"', add
label define sl04a_relate_lbl 09 `"Other"', add
label define sl04a_relate_lbl 10 `"Not related"', add
label values sl04a_relate sl04a_relate_lbl

label define sl04a_age_lbl 00 `"Under 1 year"'
label define sl04a_age_lbl 01 `"1"', add
label define sl04a_age_lbl 02 `"2"', add
label define sl04a_age_lbl 03 `"3"', add
label define sl04a_age_lbl 04 `"4"', add
label define sl04a_age_lbl 05 `"5"', add
label define sl04a_age_lbl 06 `"6"', add
label define sl04a_age_lbl 07 `"7"', add
label define sl04a_age_lbl 08 `"8"', add
label define sl04a_age_lbl 09 `"9"', add
label define sl04a_age_lbl 10 `"10"', add
label define sl04a_age_lbl 11 `"11"', add
label define sl04a_age_lbl 12 `"12"', add
label define sl04a_age_lbl 13 `"13"', add
label define sl04a_age_lbl 14 `"14"', add
label define sl04a_age_lbl 15 `"15"', add
label define sl04a_age_lbl 16 `"16"', add
label define sl04a_age_lbl 17 `"17"', add
label define sl04a_age_lbl 18 `"18"', add
label define sl04a_age_lbl 19 `"19"', add
label define sl04a_age_lbl 20 `"20"', add
label define sl04a_age_lbl 21 `"21"', add
label define sl04a_age_lbl 22 `"22"', add
label define sl04a_age_lbl 23 `"23"', add
label define sl04a_age_lbl 24 `"24"', add
label define sl04a_age_lbl 25 `"25"', add
label define sl04a_age_lbl 26 `"26"', add
label define sl04a_age_lbl 27 `"27"', add
label define sl04a_age_lbl 28 `"28"', add
label define sl04a_age_lbl 29 `"29"', add
label define sl04a_age_lbl 30 `"30"', add
label define sl04a_age_lbl 31 `"31"', add
label define sl04a_age_lbl 32 `"32"', add
label define sl04a_age_lbl 33 `"33"', add
label define sl04a_age_lbl 34 `"34"', add
label define sl04a_age_lbl 35 `"35"', add
label define sl04a_age_lbl 36 `"36"', add
label define sl04a_age_lbl 37 `"37"', add
label define sl04a_age_lbl 38 `"38"', add
label define sl04a_age_lbl 39 `"39"', add
label define sl04a_age_lbl 40 `"40"', add
label define sl04a_age_lbl 41 `"41"', add
label define sl04a_age_lbl 42 `"42"', add
label define sl04a_age_lbl 43 `"43"', add
label define sl04a_age_lbl 44 `"44"', add
label define sl04a_age_lbl 45 `"45"', add
label define sl04a_age_lbl 46 `"46"', add
label define sl04a_age_lbl 47 `"47"', add
label define sl04a_age_lbl 48 `"48"', add
label define sl04a_age_lbl 49 `"49"', add
label define sl04a_age_lbl 50 `"50"', add
label define sl04a_age_lbl 51 `"51"', add
label define sl04a_age_lbl 52 `"52"', add
label define sl04a_age_lbl 53 `"53"', add
label define sl04a_age_lbl 54 `"54"', add
label define sl04a_age_lbl 55 `"55"', add
label define sl04a_age_lbl 56 `"56"', add
label define sl04a_age_lbl 57 `"57"', add
label define sl04a_age_lbl 58 `"58"', add
label define sl04a_age_lbl 59 `"59"', add
label define sl04a_age_lbl 60 `"60"', add
label define sl04a_age_lbl 61 `"61"', add
label define sl04a_age_lbl 62 `"62"', add
label define sl04a_age_lbl 63 `"63"', add
label define sl04a_age_lbl 64 `"64"', add
label define sl04a_age_lbl 65 `"65"', add
label define sl04a_age_lbl 66 `"66"', add
label define sl04a_age_lbl 67 `"67"', add
label define sl04a_age_lbl 68 `"68"', add
label define sl04a_age_lbl 69 `"69"', add
label define sl04a_age_lbl 70 `"70"', add
label define sl04a_age_lbl 71 `"71"', add
label define sl04a_age_lbl 72 `"72"', add
label define sl04a_age_lbl 73 `"73"', add
label define sl04a_age_lbl 74 `"74"', add
label define sl04a_age_lbl 75 `"75"', add
label define sl04a_age_lbl 76 `"76"', add
label define sl04a_age_lbl 77 `"77"', add
label define sl04a_age_lbl 78 `"78"', add
label define sl04a_age_lbl 79 `"79"', add
label define sl04a_age_lbl 80 `"80"', add
label define sl04a_age_lbl 81 `"81"', add
label define sl04a_age_lbl 82 `"82"', add
label define sl04a_age_lbl 83 `"83"', add
label define sl04a_age_lbl 84 `"84"', add
label define sl04a_age_lbl 85 `"85"', add
label define sl04a_age_lbl 86 `"86"', add
label define sl04a_age_lbl 87 `"87"', add
label define sl04a_age_lbl 88 `"88"', add
label define sl04a_age_lbl 89 `"89"', add
label define sl04a_age_lbl 90 `"90"', add
label define sl04a_age_lbl 91 `"91"', add
label define sl04a_age_lbl 92 `"92"', add
label define sl04a_age_lbl 93 `"93"', add
label define sl04a_age_lbl 94 `"94"', add
label define sl04a_age_lbl 95 `"95 and over"', add
label define sl04a_age_lbl 99 `"Unknown"', add
label values sl04a_age sl04a_age_lbl

label define sl04a_sex_lbl 1 `"Male"'
label define sl04a_sex_lbl 2 `"Female"', add
label values sl04a_sex sl04a_sex_lbl

label define sl04a_relig_lbl 01 `"Catholic"'
label define sl04a_relig_lbl 02 `"Anglican"', add
label define sl04a_relig_lbl 03 `"Methodist"', add
label define sl04a_relig_lbl 04 `"Seventh-day Adventists"', add
label define sl04a_relig_lbl 05 `"Pentecostal"', add
label define sl04a_relig_lbl 06 `"Other Christians"', add
label define sl04a_relig_lbl 07 `"Ahmadis Muslim"', add
label define sl04a_relig_lbl 08 `"Sunni Muslim"', add
label define sl04a_relig_lbl 09 `"Shiek Muslim"', add
label define sl04a_relig_lbl 10 `"Other Muslim"', add
label define sl04a_relig_lbl 11 `"Bahai"', add
label define sl04a_relig_lbl 12 `"Traditional"', add
label define sl04a_relig_lbl 13 `"None"', add
label define sl04a_relig_lbl 14 `"Other"', add
label values sl04a_relig sl04a_relig_lbl

label define sl04a_ethnic_lbl 01 `"Krio"'
label define sl04a_ethnic_lbl 02 `"Mende"', add
label define sl04a_ethnic_lbl 03 `"Temne"', add
label define sl04a_ethnic_lbl 04 `"Madingo"', add
label define sl04a_ethnic_lbl 05 `"Loko"', add
label define sl04a_ethnic_lbl 06 `"Sherbro"', add
label define sl04a_ethnic_lbl 07 `"Limba"', add
label define sl04a_ethnic_lbl 08 `"Kissi"', add
label define sl04a_ethnic_lbl 09 `"Kono"', add
label define sl04a_ethnic_lbl 10 `"Susu"', add
label define sl04a_ethnic_lbl 11 `"Fullah"', add
label define sl04a_ethnic_lbl 12 `"Krim"', add
label define sl04a_ethnic_lbl 13 `"Yalunka"', add
label define sl04a_ethnic_lbl 14 `"Koranko"', add
label define sl04a_ethnic_lbl 15 `"Vai"', add
label define sl04a_ethnic_lbl 16 `"English"', add
label define sl04a_ethnic_lbl 17 `"French"', add
label define sl04a_ethnic_lbl 18 `"Arabic"', add
label define sl04a_ethnic_lbl 19 `"Other"', add
label define sl04a_ethnic_lbl 20 `"None"', add
label values sl04a_ethnic sl04a_ethnic_lbl

label define sl04a_langprim_lbl 01 `"Krio"'
label define sl04a_langprim_lbl 02 `"Mende"', add
label define sl04a_langprim_lbl 03 `"Temne"', add
label define sl04a_langprim_lbl 04 `"Madingo"', add
label define sl04a_langprim_lbl 05 `"Loko"', add
label define sl04a_langprim_lbl 06 `"Sherbro"', add
label define sl04a_langprim_lbl 07 `"Limba"', add
label define sl04a_langprim_lbl 08 `"Kissi"', add
label define sl04a_langprim_lbl 09 `"Kono"', add
label define sl04a_langprim_lbl 10 `"Susu"', add
label define sl04a_langprim_lbl 11 `"Fullah"', add
label define sl04a_langprim_lbl 12 `"Krim"', add
label define sl04a_langprim_lbl 13 `"Yalunka"', add
label define sl04a_langprim_lbl 14 `"Koranko"', add
label define sl04a_langprim_lbl 15 `"Vai"', add
label define sl04a_langprim_lbl 16 `"English"', add
label define sl04a_langprim_lbl 17 `"French"', add
label define sl04a_langprim_lbl 18 `"Arabic"', add
label define sl04a_langprim_lbl 19 `"Other"', add
label define sl04a_langprim_lbl 20 `"None"', add
label values sl04a_langprim sl04a_langprim_lbl

label define sl04a_langsec_lbl 01 `"Krio"'
label define sl04a_langsec_lbl 02 `"Mende"', add
label define sl04a_langsec_lbl 03 `"Temne"', add
label define sl04a_langsec_lbl 04 `"Madingo"', add
label define sl04a_langsec_lbl 05 `"Loko"', add
label define sl04a_langsec_lbl 06 `"Sherbro"', add
label define sl04a_langsec_lbl 07 `"Limba"', add
label define sl04a_langsec_lbl 08 `"Kissi"', add
label define sl04a_langsec_lbl 09 `"Kono"', add
label define sl04a_langsec_lbl 10 `"Susu"', add
label define sl04a_langsec_lbl 11 `"Fullah"', add
label define sl04a_langsec_lbl 12 `"Krim"', add
label define sl04a_langsec_lbl 13 `"Yalunka"', add
label define sl04a_langsec_lbl 14 `"Koranko"', add
label define sl04a_langsec_lbl 15 `"Vai"', add
label define sl04a_langsec_lbl 16 `"English"', add
label define sl04a_langsec_lbl 17 `"French"', add
label define sl04a_langsec_lbl 18 `"Arabic"', add
label define sl04a_langsec_lbl 19 `"Other"', add
label define sl04a_langsec_lbl 20 `"None"', add
label values sl04a_langsec sl04a_langsec_lbl

label define sl04a_dist90_lbl 11 `"Kailahun"'
label define sl04a_dist90_lbl 12 `"Kenema"', add
label define sl04a_dist90_lbl 13 `"Kono"', add
label define sl04a_dist90_lbl 21 `"Bombali"', add
label define sl04a_dist90_lbl 22 `"Kambia"', add
label define sl04a_dist90_lbl 23 `"Koinadugu"', add
label define sl04a_dist90_lbl 24 `"Port Loko"', add
label define sl04a_dist90_lbl 25 `"Tonkolili"', add
label define sl04a_dist90_lbl 31 `"Bo"', add
label define sl04a_dist90_lbl 32 `"Bonthe"', add
label define sl04a_dist90_lbl 33 `"Moyamba"', add
label define sl04a_dist90_lbl 34 `"Pujehun"', add
label define sl04a_dist90_lbl 41 `"Western - rural"', add
label define sl04a_dist90_lbl 42 `"Western - urban"', add
label define sl04a_dist90_lbl 90 `"Abroad"', add
label define sl04a_dist90_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_dist90 sl04a_dist90_lbl

label define sl04a_chief90_lbl 1101 `"Dea"'
label define sl04a_chief90_lbl 1102 `"Jawie"', add
label define sl04a_chief90_lbl 1103 `"Kissi Kama"', add
label define sl04a_chief90_lbl 1104 `"Kissi Teng"', add
label define sl04a_chief90_lbl 1105 `"Kissi Tongi"', add
label define sl04a_chief90_lbl 1106 `"Kpeje Bongre"', add
label define sl04a_chief90_lbl 1107 `"Kpeje West"', add
label define sl04a_chief90_lbl 1108 `"Luawa"', add
label define sl04a_chief90_lbl 1109 `"Malema"', add
label define sl04a_chief90_lbl 1110 `"Mandu"', add
label define sl04a_chief90_lbl 1111 `"Njaluahun"', add
label define sl04a_chief90_lbl 1112 `"Penguia"', add
label define sl04a_chief90_lbl 1113 `"Upper Bambara"', add
label define sl04a_chief90_lbl 1114 `"Yawei"', add
label define sl04a_chief90_lbl 1201 `"Dama"', add
label define sl04a_chief90_lbl 1202 `"Dodo"', add
label define sl04a_chief90_lbl 1203 `"Gaura"', add
label define sl04a_chief90_lbl 1204 `"Gorama Mende"', add
label define sl04a_chief90_lbl 1205 `"Kandu Lekpeama"', add
label define sl04a_chief90_lbl 1206 `"Koya [Kenema]"', add
label define sl04a_chief90_lbl 1207 `"Langrama"', add
label define sl04a_chief90_lbl 1208 `"Lower Bambara"', add
label define sl04a_chief90_lbl 1209 `"Malegohun"', add
label define sl04a_chief90_lbl 1210 `"Niawa"', add
label define sl04a_chief90_lbl 1211 `"Nomo"', add
label define sl04a_chief90_lbl 1212 `"Nongowa"', add
label define sl04a_chief90_lbl 1213 `"Simbaru"', add
label define sl04a_chief90_lbl 1214 `"Small Bo"', add
label define sl04a_chief90_lbl 1215 `"Tunkia"', add
label define sl04a_chief90_lbl 1216 `"Wandor"', add
label define sl04a_chief90_lbl 1291 `"Kenema Town"', add
label define sl04a_chief90_lbl 1301 `"Fiama"', add
label define sl04a_chief90_lbl 1302 `"Gbane"', add
label define sl04a_chief90_lbl 1303 `"Gbane Kandor"', add
label define sl04a_chief90_lbl 1304 `"Gbense"', add
label define sl04a_chief90_lbl 1305 `"Gorama Kono"', add
label define sl04a_chief90_lbl 1306 `"Kamara"', add
label define sl04a_chief90_lbl 1307 `"Lei"', add
label define sl04a_chief90_lbl 1308 `"Mafindor"', add
label define sl04a_chief90_lbl 1309 `"Nimikoro"', add
label define sl04a_chief90_lbl 1310 `"Nimiyama"', add
label define sl04a_chief90_lbl 1311 `"Sandor"', add
label define sl04a_chief90_lbl 1312 `"Soa"', add
label define sl04a_chief90_lbl 1313 `"Tankoro"', add
label define sl04a_chief90_lbl 1314 `"Toli"', add
label define sl04a_chief90_lbl 1391 `"Koidu Town"', add
label define sl04a_chief90_lbl 2101 `"Biriwa"', add
label define sl04a_chief90_lbl 2102 `"Bombali Sebora"', add
label define sl04a_chief90_lbl 2103 `"Gbanti-Kamaranka"', add
label define sl04a_chief90_lbl 2104 `"Gbendembu Ngowahun"', add
label define sl04a_chief90_lbl 2105 `"Libeisaygahun"', add
label define sl04a_chief90_lbl 2106 `"Magbaimba Ndorhahun"', add
label define sl04a_chief90_lbl 2107 `"Makari Gbanti"', add
label define sl04a_chief90_lbl 2108 `"Paki Masabong"', add
label define sl04a_chief90_lbl 2109 `"Safroko Limba"', add
label define sl04a_chief90_lbl 2110 `"Sanda Loko"', add
label define sl04a_chief90_lbl 2111 `"Sanda Tenraran"', add
label define sl04a_chief90_lbl 2112 `"Sella Limba"', add
label define sl04a_chief90_lbl 2113 `"Tambakka"', add
label define sl04a_chief90_lbl 2191 `"Makeni Town"', add
label define sl04a_chief90_lbl 2201 `"Bramaia"', add
label define sl04a_chief90_lbl 2202 `"Gbinle-Dixing"', add
label define sl04a_chief90_lbl 2203 `"Magbema"', add
label define sl04a_chief90_lbl 2204 `"Mambolo"', add
label define sl04a_chief90_lbl 2205 `"Masungbala"', add
label define sl04a_chief90_lbl 2206 `"Samu"', add
label define sl04a_chief90_lbl 2207 `"Tonko Limba"', add
label define sl04a_chief90_lbl 2301 `"Dembelia Sinkunia"', add
label define sl04a_chief90_lbl 2302 `"Diang"', add
label define sl04a_chief90_lbl 2303 `"Follosaba Dembelia"', add
label define sl04a_chief90_lbl 2304 `"Kasunko"', add
label define sl04a_chief90_lbl 2305 `"Mongo"', add
label define sl04a_chief90_lbl 2306 `"Neya"', add
label define sl04a_chief90_lbl 2307 `"Nieni"', add
label define sl04a_chief90_lbl 2308 `"Sengbe"', add
label define sl04a_chief90_lbl 2309 `"Sulima"', add
label define sl04a_chief90_lbl 2310 `"Wara Wara Bafodia"', add
label define sl04a_chief90_lbl 2311 `"Wara Wara Yagala"', add
label define sl04a_chief90_lbl 2401 `"BKM [Bureh Kaseh]"', add
label define sl04a_chief90_lbl 2402 `"Buya Romende"', add
label define sl04a_chief90_lbl 2403 `"Dibia"', add
label define sl04a_chief90_lbl 2404 `"Kaffu Bullom"', add
label define sl04a_chief90_lbl 2405 `"Koya [Port Loko]"', add
label define sl04a_chief90_lbl 2406 `"Lokomasama"', add
label define sl04a_chief90_lbl 2407 `"Maforki"', add
label define sl04a_chief90_lbl 2408 `"Marampa"', add
label define sl04a_chief90_lbl 2409 `"Masimera"', add
label define sl04a_chief90_lbl 2410 `"Sanda Magbolontor"', add
label define sl04a_chief90_lbl 2411 `"TMS [T.M. Safroko]"', add
label define sl04a_chief90_lbl 2501 `"Gbonkolenken"', add
label define sl04a_chief90_lbl 2502 `"Kafe Simira"', add
label define sl04a_chief90_lbl 2503 `"Kalansogoia"', add
label define sl04a_chief90_lbl 2504 `"Kholifa Mabang"', add
label define sl04a_chief90_lbl 2505 `"Kholifa Rowalla"', add
label define sl04a_chief90_lbl 2506 `"Kunike Barina"', add
label define sl04a_chief90_lbl 2507 `"Kunike Sanda"', add
label define sl04a_chief90_lbl 2508 `"Malal Mara"', add
label define sl04a_chief90_lbl 2509 `"Sambaya"', add
label define sl04a_chief90_lbl 2510 `"Tane"', add
label define sl04a_chief90_lbl 2511 `"Yoni"', add
label define sl04a_chief90_lbl 3101 `"Badjia"', add
label define sl04a_chief90_lbl 3102 `"Bagbo"', add
label define sl04a_chief90_lbl 3103 `"Bagbwe"', add
label define sl04a_chief90_lbl 3104 `"Baoma"', add
label define sl04a_chief90_lbl 3105 `"Bumpe Ngawo"', add
label define sl04a_chief90_lbl 3106 `"Gbo"', add
label define sl04a_chief90_lbl 3107 `"Jaiama-Bongor"', add
label define sl04a_chief90_lbl 3108 `"Kakua"', add
label define sl04a_chief90_lbl 3109 `"Komboya"', add
label define sl04a_chief90_lbl 3110 `"Lugbu"', add
label define sl04a_chief90_lbl 3111 `"Niawa Lenga"', add
label define sl04a_chief90_lbl 3112 `"Selenga"', add
label define sl04a_chief90_lbl 3113 `"Tikonko"', add
label define sl04a_chief90_lbl 3114 `"Valunia"', add
label define sl04a_chief90_lbl 3115 `"Wunde"', add
label define sl04a_chief90_lbl 3191 `"Bo Town"', add
label define sl04a_chief90_lbl 3201 `"Bendu Cha"', add
label define sl04a_chief90_lbl 3202 `"Bum"', add
label define sl04a_chief90_lbl 3203 `"Dema"', add
label define sl04a_chief90_lbl 3204 `"Imperi"', add
label define sl04a_chief90_lbl 3205 `"Jong"', add
label define sl04a_chief90_lbl 3206 `"Kpanda Kemo"', add
label define sl04a_chief90_lbl 3207 `"Kwamebai Krim"', add
label define sl04a_chief90_lbl 3208 `"Nongoba Bullom"', add
label define sl04a_chief90_lbl 3209 `"Sittia"', add
label define sl04a_chief90_lbl 3210 `"Sogbini"', add
label define sl04a_chief90_lbl 3211 `"Yawbeko"', add
label define sl04a_chief90_lbl 3291 `"Bonthe Town"', add
label define sl04a_chief90_lbl 3301 `"Bagruwa"', add
label define sl04a_chief90_lbl 3302 `"Bumpeh"', add
label define sl04a_chief90_lbl 3303 `"Dasse"', add
label define sl04a_chief90_lbl 3304 `"Fakunya"', add
label define sl04a_chief90_lbl 3305 `"Kagboro"', add
label define sl04a_chief90_lbl 3306 `"Kaiyamba"', add
label define sl04a_chief90_lbl 3307 `"Kamajei"', add
label define sl04a_chief90_lbl 3308 `"Kongbora"', add
label define sl04a_chief90_lbl 3309 `"Kori"', add
label define sl04a_chief90_lbl 3310 `"Kowa"', add
label define sl04a_chief90_lbl 3311 `"Lower Banta"', add
label define sl04a_chief90_lbl 3312 `"Ribbi"', add
label define sl04a_chief90_lbl 3313 `"Timdale"', add
label define sl04a_chief90_lbl 3314 `"Upper Banta"', add
label define sl04a_chief90_lbl 3401 `"Barri"', add
label define sl04a_chief90_lbl 3402 `"Gallinasperi"', add
label define sl04a_chief90_lbl 3403 `"Kpaka"', add
label define sl04a_chief90_lbl 3404 `"Kpanga-Kabonde"', add
label define sl04a_chief90_lbl 3405 `"Makpele"', add
label define sl04a_chief90_lbl 3406 `"Malen"', add
label define sl04a_chief90_lbl 3407 `"Mano Sakrim"', add
label define sl04a_chief90_lbl 3408 `"Panga Krim"', add
label define sl04a_chief90_lbl 3409 `"Pejeh"', add
label define sl04a_chief90_lbl 3410 `"Soro Gbema"', add
label define sl04a_chief90_lbl 3411 `"Sowa"', add
label define sl04a_chief90_lbl 3412 `"YKK [Yekomo Kpukumu Krim]"', add
label define sl04a_chief90_lbl 4101 `"Koya [Western - rural]"', add
label define sl04a_chief90_lbl 4102 `"Mountain"', add
label define sl04a_chief90_lbl 4103 `"Waterloo"', add
label define sl04a_chief90_lbl 4104 `"York - rural"', add
label define sl04a_chief90_lbl 4201 `"Western - urban - Central 1"', add
label define sl04a_chief90_lbl 4202 `"Western - urban - Central 2"', add
label define sl04a_chief90_lbl 4203 `"Western - urban - East 1"', add
label define sl04a_chief90_lbl 4204 `"Western - urban - East 2"', add
label define sl04a_chief90_lbl 4205 `"Western - urban - East 3"', add
label define sl04a_chief90_lbl 4206 `"Western - urban - West 1"', add
label define sl04a_chief90_lbl 4207 `"Western - urban - West 2"', add
label define sl04a_chief90_lbl 4208 `"Western - urban - West 3"', add
label define sl04a_chief90_lbl 6164 `"Nigeria"', add
label define sl04a_chief90_lbl 6132 `"Gambia"', add
label define sl04a_chief90_lbl 6136 `"Guinea"', add
label define sl04a_chief90_lbl 6134 `"Ghana"', add
label define sl04a_chief90_lbl 6144 `"Liberia"', add
label define sl04a_chief90_lbl 6138 `"Cote d'Ivoire"', add
label define sl04a_chief90_lbl 6172 `"Senegal"', add
label define sl04a_chief90_lbl 6152 `"Mali"', add
label define sl04a_chief90_lbl 6195 `"Other African country"', add
label define sl04a_chief90_lbl 6200 `"United Kingdom"', add
label define sl04a_chief90_lbl 6205 `"Other European country"', add
label define sl04a_chief90_lbl 6209 `"United States of America"', add
label define sl04a_chief90_lbl 6419 `"India"', add
label define sl04a_chief90_lbl 6441 `"Lebanon"', add
label define sl04a_chief90_lbl 6490 `"Other"', add
label define sl04a_chief90_lbl 9999 `"NIU (Not in universe)"', add
label values sl04a_chief90 sl04a_chief90_lbl

label define sl04a_mortmom_lbl 1 `"Mother alive"'
label define sl04a_mortmom_lbl 2 `"Mother dead"', add
label values sl04a_mortmom sl04a_mortmom_lbl

label define sl04a_mortpop_lbl 1 `"Father alive"'
label define sl04a_mortpop_lbl 2 `"Father dead"', add
label values sl04a_mortpop sl04a_mortpop_lbl

label define sl04a_disable_lbl 1 `"Yes"'
label define sl04a_disable_lbl 2 `"No"', add
label values sl04a_disable sl04a_disable_lbl

label define sl04a_distype_lbl 01 `"Limited use of legs"'
label define sl04a_distype_lbl 02 `"Loss of leg(s)"', add
label define sl04a_distype_lbl 03 `"Limited use of arms"', add
label define sl04a_distype_lbl 04 `"Loss of arm(s)"', add
label define sl04a_distype_lbl 05 `"Serious problem with back spine"', add
label define sl04a_distype_lbl 06 `"Hearing difficulty"', add
label define sl04a_distype_lbl 07 `"Deafness"', add
label define sl04a_distype_lbl 08 `"Sight difficulty"', add
label define sl04a_distype_lbl 09 `"Blindness"', add
label define sl04a_distype_lbl 10 `"Speech impairment"', add
label define sl04a_distype_lbl 11 `"Mute"', add
label define sl04a_distype_lbl 12 `"Mental retardation"', add
label define sl04a_distype_lbl 13 `"Mental illness"', add
label define sl04a_distype_lbl 14 `"Epileptic"', add
label define sl04a_distype_lbl 15 `"Rheumatism"', add
label define sl04a_distype_lbl 16 `"Other"', add
label define sl04a_distype_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_distype sl04a_distype_lbl

label define sl04a_discause_lbl 1 `"Congenital"'
label define sl04a_discause_lbl 2 `"Disease/illness"', add
label define sl04a_discause_lbl 3 `"Transport accident"', add
label define sl04a_discause_lbl 4 `"Occupational injury"', add
label define sl04a_discause_lbl 5 `"Other accident"', add
label define sl04a_discause_lbl 6 `"War"', add
label define sl04a_discause_lbl 7 `"Aging"', add
label define sl04a_discause_lbl 8 `"Other"', add
label define sl04a_discause_lbl 9 `"NIU (Not in universe)"', add
label values sl04a_discause sl04a_discause_lbl

label define sl04a_disasst_lbl 01 `"Surgical operation"'
label define sl04a_disasst_lbl 02 `"Medication"', add
label define sl04a_disasst_lbl 03 `"Assistive devices"', add
label define sl04a_disasst_lbl 04 `"Special education"', add
label define sl04a_disasst_lbl 05 `"Braille/sign language training"', add
label define sl04a_disasst_lbl 06 `"Vocational training"', add
label define sl04a_disasst_lbl 07 `"Counseling"', add
label define sl04a_disasst_lbl 08 `"Financial"', add
label define sl04a_disasst_lbl 09 `"Other"', add
label define sl04a_disasst_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_disasst sl04a_disasst_lbl

label define sl04a_school_lbl 1 `"Never attended"'
label define sl04a_school_lbl 2 `"Still attending"', add
label define sl04a_school_lbl 3 `"Left school"', add
label define sl04a_school_lbl 9 `"NIU (Not in universe)"', add
label values sl04a_school sl04a_school_lbl

label define sl04a_edattain_lbl 01 `"None"'
label define sl04a_edattain_lbl 02 `"Kindergarten"', add
label define sl04a_edattain_lbl 03 `"Primary 1"', add
label define sl04a_edattain_lbl 04 `"Primary 2"', add
label define sl04a_edattain_lbl 05 `"Primary 3"', add
label define sl04a_edattain_lbl 06 `"Primary 4"', add
label define sl04a_edattain_lbl 07 `"Primary 5"', add
label define sl04a_edattain_lbl 08 `"Primary 6"', add
label define sl04a_edattain_lbl 09 `"Junior Secondary School 1-3"', add
label define sl04a_edattain_lbl 10 `"Senior Secondary School 1-3"', add
label define sl04a_edattain_lbl 11 `"Vocational/commercial"', add
label define sl04a_edattain_lbl 12 `"Teacher training (TC/HTC)"', add
label define sl04a_edattain_lbl 13 `"Technical (OND, HND)"', add
label define sl04a_edattain_lbl 14 `"Nursing (up to SRN)"', add
label define sl04a_edattain_lbl 15 `"Tertiary (certificate/diploma)"', add
label define sl04a_edattain_lbl 16 `"Tertiary (first degree)"', add
label define sl04a_edattain_lbl 17 `"Tertiary (post-graduate)"', add
label define sl04a_edattain_lbl 18 `"Koranic"', add
label define sl04a_edattain_lbl 19 `"Other"', add
label define sl04a_edattain_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_edattain sl04a_edattain_lbl

label define sl04a_marst_lbl 1 `"Never married"'
label define sl04a_marst_lbl 2 `"Engaged"', add
label define sl04a_marst_lbl 3 `"Married, monogamous"', add
label define sl04a_marst_lbl 4 `"Married, polygamous"', add
label define sl04a_marst_lbl 5 `"Separated"', add
label define sl04a_marst_lbl 6 `"Divorced"', add
label define sl04a_marst_lbl 7 `"Widowed"', add
label define sl04a_marst_lbl 9 `"NIU (Not in universe)"', add
label values sl04a_marst sl04a_marst_lbl

label define sl04a_activity_lbl 01 `"Paid employee"'
label define sl04a_activity_lbl 02 `"Self-employed"', add
label define sl04a_activity_lbl 03 `"Unpaid family worker"', add
label define sl04a_activity_lbl 04 `"Looking for work"', add
label define sl04a_activity_lbl 05 `"Not working and not looking for work"', add
label define sl04a_activity_lbl 06 `"Household work"', add
label define sl04a_activity_lbl 07 `"Full-time student"', add
label define sl04a_activity_lbl 08 `"Retired/pensioner"', add
label define sl04a_activity_lbl 09 `"Other"', add
label define sl04a_activity_lbl 98 `"Unknown"', add
label define sl04a_activity_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_activity sl04a_activity_lbl

label define sl04a_occ_lbl 01 `"Legislators, senior officials and managers"'
label define sl04a_occ_lbl 02 `"Professionals"', add
label define sl04a_occ_lbl 03 `"Technicians and associate professionals"', add
label define sl04a_occ_lbl 04 `"Clerks"', add
label define sl04a_occ_lbl 05 `"Service workers, shop and market sales workers"', add
label define sl04a_occ_lbl 06 `"Skilled agricultural and fishery workers"', add
label define sl04a_occ_lbl 07 `"Craft and related trade workers"', add
label define sl04a_occ_lbl 08 `"Plant and machine operators and assemblers"', add
label define sl04a_occ_lbl 09 `"Elementary occupations"', add
label define sl04a_occ_lbl 10 `"Armed forces"', add
label define sl04a_occ_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_occ sl04a_occ_lbl

label define sl04a_ind_lbl 01 `"Crop farming"'
label define sl04a_ind_lbl 02 `"Livestock"', add
label define sl04a_ind_lbl 03 `"Poultry"', add
label define sl04a_ind_lbl 04 `"Hunting"', add
label define sl04a_ind_lbl 05 `"Forestry"', add
label define sl04a_ind_lbl 06 `"Fishing"', add
label define sl04a_ind_lbl 07 `"Mining and quarrying"', add
label define sl04a_ind_lbl 08 `"Manufacturing"', add
label define sl04a_ind_lbl 09 `"Electricity, gas and water supply"', add
label define sl04a_ind_lbl 10 `"Construction"', add
label define sl04a_ind_lbl 11 `"Wholesale and retail trade, repair of motor vehicles, motorcycles and personal household goods"', add
label define sl04a_ind_lbl 12 `"Hotels and restaurants"', add
label define sl04a_ind_lbl 13 `"Transport, storage and communication"', add
label define sl04a_ind_lbl 14 `"Financial intermediation"', add
label define sl04a_ind_lbl 15 `"Real estate, renting and business activities"', add
label define sl04a_ind_lbl 16 `"Public administration and defense, compulsory social security"', add
label define sl04a_ind_lbl 17 `"Education"', add
label define sl04a_ind_lbl 18 `"Health and social work"', add
label define sl04a_ind_lbl 19 `"Other community, social and personal service activities"', add
label define sl04a_ind_lbl 20 `"Private households with employed persons"', add
label define sl04a_ind_lbl 21 `"Extra-territorial organizations and bodies"', add
label define sl04a_ind_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_ind sl04a_ind_lbl

label define sl04a_chbornm_lbl 00 `"0"'
label define sl04a_chbornm_lbl 01 `"1"', add
label define sl04a_chbornm_lbl 02 `"2"', add
label define sl04a_chbornm_lbl 03 `"3"', add
label define sl04a_chbornm_lbl 04 `"4"', add
label define sl04a_chbornm_lbl 05 `"5"', add
label define sl04a_chbornm_lbl 06 `"6"', add
label define sl04a_chbornm_lbl 07 `"7"', add
label define sl04a_chbornm_lbl 08 `"8"', add
label define sl04a_chbornm_lbl 09 `"9"', add
label define sl04a_chbornm_lbl 10 `"10"', add
label define sl04a_chbornm_lbl 11 `"11"', add
label define sl04a_chbornm_lbl 12 `"12+"', add
label define sl04a_chbornm_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_chbornm sl04a_chbornm_lbl

label define sl04a_chbornf_lbl 00 `"0"'
label define sl04a_chbornf_lbl 01 `"1"', add
label define sl04a_chbornf_lbl 02 `"2"', add
label define sl04a_chbornf_lbl 03 `"3"', add
label define sl04a_chbornf_lbl 04 `"4"', add
label define sl04a_chbornf_lbl 05 `"5"', add
label define sl04a_chbornf_lbl 06 `"6"', add
label define sl04a_chbornf_lbl 07 `"7"', add
label define sl04a_chbornf_lbl 08 `"8"', add
label define sl04a_chbornf_lbl 09 `"9"', add
label define sl04a_chbornf_lbl 10 `"10"', add
label define sl04a_chbornf_lbl 11 `"11"', add
label define sl04a_chbornf_lbl 12 `"12+"', add
label define sl04a_chbornf_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_chbornf sl04a_chbornf_lbl

label define sl04a_malehh_lbl 00 `"0"'
label define sl04a_malehh_lbl 01 `"1"', add
label define sl04a_malehh_lbl 02 `"2"', add
label define sl04a_malehh_lbl 03 `"3"', add
label define sl04a_malehh_lbl 04 `"4"', add
label define sl04a_malehh_lbl 05 `"5"', add
label define sl04a_malehh_lbl 06 `"6"', add
label define sl04a_malehh_lbl 07 `"7"', add
label define sl04a_malehh_lbl 08 `"8+"', add
label define sl04a_malehh_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_malehh sl04a_malehh_lbl

label define sl04a_femhh_lbl 00 `"0"'
label define sl04a_femhh_lbl 01 `"1"', add
label define sl04a_femhh_lbl 02 `"2"', add
label define sl04a_femhh_lbl 03 `"3"', add
label define sl04a_femhh_lbl 04 `"4"', add
label define sl04a_femhh_lbl 05 `"5"', add
label define sl04a_femhh_lbl 06 `"6"', add
label define sl04a_femhh_lbl 07 `"7"', add
label define sl04a_femhh_lbl 08 `"8+"', add
label define sl04a_femhh_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_femhh sl04a_femhh_lbl

label define sl04a_maleaway_lbl 00 `"0"'
label define sl04a_maleaway_lbl 01 `"1"', add
label define sl04a_maleaway_lbl 02 `"2"', add
label define sl04a_maleaway_lbl 03 `"3"', add
label define sl04a_maleaway_lbl 04 `"4"', add
label define sl04a_maleaway_lbl 05 `"5"', add
label define sl04a_maleaway_lbl 06 `"6"', add
label define sl04a_maleaway_lbl 07 `"7"', add
label define sl04a_maleaway_lbl 08 `"8+"', add
label define sl04a_maleaway_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_maleaway sl04a_maleaway_lbl

label define sl04a_femaway_lbl 00 `"0"'
label define sl04a_femaway_lbl 01 `"1"', add
label define sl04a_femaway_lbl 02 `"2"', add
label define sl04a_femaway_lbl 03 `"3"', add
label define sl04a_femaway_lbl 04 `"4"', add
label define sl04a_femaway_lbl 05 `"5"', add
label define sl04a_femaway_lbl 06 `"6"', add
label define sl04a_femaway_lbl 07 `"7"', add
label define sl04a_femaway_lbl 08 `"8+"', add
label define sl04a_femaway_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_femaway sl04a_femaway_lbl

label define sl04a_chdeadm_lbl 00 `"0"'
label define sl04a_chdeadm_lbl 01 `"1"', add
label define sl04a_chdeadm_lbl 02 `"2"', add
label define sl04a_chdeadm_lbl 03 `"3"', add
label define sl04a_chdeadm_lbl 04 `"4"', add
label define sl04a_chdeadm_lbl 05 `"5"', add
label define sl04a_chdeadm_lbl 06 `"6"', add
label define sl04a_chdeadm_lbl 07 `"7"', add
label define sl04a_chdeadm_lbl 08 `"8"', add
label define sl04a_chdeadm_lbl 09 `"9"', add
label define sl04a_chdeadm_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_chdeadm sl04a_chdeadm_lbl

label define sl04a_chdeadf_lbl 00 `"0"'
label define sl04a_chdeadf_lbl 01 `"1"', add
label define sl04a_chdeadf_lbl 02 `"2"', add
label define sl04a_chdeadf_lbl 03 `"3"', add
label define sl04a_chdeadf_lbl 04 `"4"', add
label define sl04a_chdeadf_lbl 05 `"5"', add
label define sl04a_chdeadf_lbl 06 `"6"', add
label define sl04a_chdeadf_lbl 07 `"7"', add
label define sl04a_chdeadf_lbl 08 `"8"', add
label define sl04a_chdeadf_lbl 09 `"9"', add
label define sl04a_chdeadf_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_chdeadf sl04a_chdeadf_lbl

label define sl04a_bthyear_lbl 1 `"2003"'
label define sl04a_bthyear_lbl 2 `"2004"', add
label define sl04a_bthyear_lbl 8 `"No response"', add
label define sl04a_bthyear_lbl 9 `"NIU (Not in universe)"', add
label values sl04a_bthyear sl04a_bthyear_lbl

label define sl04a_molstbth_lbl 01 `"January"'
label define sl04a_molstbth_lbl 02 `"February"', add
label define sl04a_molstbth_lbl 03 `"March"', add
label define sl04a_molstbth_lbl 04 `"April"', add
label define sl04a_molstbth_lbl 05 `"May"', add
label define sl04a_molstbth_lbl 06 `"June"', add
label define sl04a_molstbth_lbl 07 `"July"', add
label define sl04a_molstbth_lbl 08 `"August"', add
label define sl04a_molstbth_lbl 09 `"September"', add
label define sl04a_molstbth_lbl 10 `"October"', add
label define sl04a_molstbth_lbl 11 `"November"', add
label define sl04a_molstbth_lbl 12 `"December"', add
label define sl04a_molstbth_lbl 98 `"No response"', add
label define sl04a_molstbth_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_molstbth sl04a_molstbth_lbl

label define sl04a_sexlstb_lbl 1 `"Male"'
label define sl04a_sexlstb_lbl 2 `"Female"', add
label define sl04a_sexlstb_lbl 8 `"No response"', add
label define sl04a_sexlstb_lbl 9 `"NIU (Not in universe)"', add
label values sl04a_sexlstb sl04a_sexlstb_lbl

label define sl04a_livlstb_lbl 1 `"Alive"'
label define sl04a_livlstb_lbl 2 `"Not alive"', add
label define sl04a_livlstb_lbl 8 `"No response"', add
label define sl04a_livlstb_lbl 9 `"NIU (Not in universe)"', add
label values sl04a_livlstb sl04a_livlstb_lbl

label define sl04a_immun_lbl 1 `"Yes"'
label define sl04a_immun_lbl 2 `"No"', add
label define sl04a_immun_lbl 3 `"Partial"', add
label define sl04a_immun_lbl 8 `"No response"', add
label define sl04a_immun_lbl 9 `"NIU (Not in universe)"', add
label values sl04a_immun sl04a_immun_lbl

label define sl04a_chborn_lbl 00 `"0"'
label define sl04a_chborn_lbl 01 `"1"', add
label define sl04a_chborn_lbl 02 `"2"', add
label define sl04a_chborn_lbl 03 `"3"', add
label define sl04a_chborn_lbl 04 `"4"', add
label define sl04a_chborn_lbl 05 `"5"', add
label define sl04a_chborn_lbl 06 `"6"', add
label define sl04a_chborn_lbl 07 `"7"', add
label define sl04a_chborn_lbl 08 `"8"', add
label define sl04a_chborn_lbl 09 `"9"', add
label define sl04a_chborn_lbl 10 `"10"', add
label define sl04a_chborn_lbl 11 `"11"', add
label define sl04a_chborn_lbl 12 `"12"', add
label define sl04a_chborn_lbl 13 `"13"', add
label define sl04a_chborn_lbl 14 `"14"', add
label define sl04a_chborn_lbl 15 `"15"', add
label define sl04a_chborn_lbl 16 `"16"', add
label define sl04a_chborn_lbl 17 `"17+"', add
label define sl04a_chborn_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_chborn sl04a_chborn_lbl

label define sl04a_chsurv_lbl 00 `"0"'
label define sl04a_chsurv_lbl 01 `"1"', add
label define sl04a_chsurv_lbl 02 `"2"', add
label define sl04a_chsurv_lbl 03 `"3"', add
label define sl04a_chsurv_lbl 04 `"4"', add
label define sl04a_chsurv_lbl 05 `"5"', add
label define sl04a_chsurv_lbl 06 `"6"', add
label define sl04a_chsurv_lbl 07 `"7"', add
label define sl04a_chsurv_lbl 08 `"8"', add
label define sl04a_chsurv_lbl 09 `"9"', add
label define sl04a_chsurv_lbl 10 `"10"', add
label define sl04a_chsurv_lbl 11 `"11"', add
label define sl04a_chsurv_lbl 12 `"12"', add
label define sl04a_chsurv_lbl 13 `"13"', add
label define sl04a_chsurv_lbl 14 `"14+"', add
label define sl04a_chsurv_lbl 99 `"NIU (Not in universe)"', add
label values sl04a_chsurv sl04a_chsurv_lbl

label define sl04a_bthlstyr_lbl 1 `"Did not give birth"'
label define sl04a_bthlstyr_lbl 2 `"Gave birth"', add
label define sl04a_bthlstyr_lbl 9 `"NIU (Not in universe)"', add
label values sl04a_bthlstyr sl04a_bthlstyr_lbl


