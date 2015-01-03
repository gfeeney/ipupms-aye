* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    hu01a_dwnum     22-27    ///
  byte    hu01a_hhnum     28-28    ///
  byte    hu01a_hhn       29-29    ///
  byte    hu01a_pernd     30-31    ///
  byte    hu01a_pern      32-33    ///
  byte    hu01a_fgq       34-34    ///
  byte    hu01a_famn      35-36    ///
  byte    hu01a_fbig      37-37    ///
  byte    hu01a_story     38-39    ///
  byte    hu01a_bldty     40-40    ///
  int     hu01a_conyr     41-44    ///
  byte    hu01a_dwtype    45-45    ///
  byte    hu01a_occup     46-46    ///
  byte    hu01a_ownty     47-47    ///
  byte    hu01a_room      48-48    ///
  byte    hu01a_kitch     49-49    ///
  byte    hu01a_kitchs    50-50    ///
  byte    hu01a_baths     51-51    ///
  byte    hu01a_bathsn    52-52    ///
  int     hu01a_floorspr  53-55    ///
  byte    hu01a_watsup    56-56    ///
  byte    hu01a_hotwat    57-57    ///
  byte    hu01a_gas       58-58    ///
  byte    hu01a_heat      59-59    ///
  byte    hu01a_toilet    60-60    ///
  byte    hu01a_sewer     61-61    ///
  byte    hu01a_comfort   62-62    ///
  byte    hu01a_tenure    63-63    ///
  int     pernum          64-66    ///
  float   wtper           67-74    ///
  byte    hu01a_pernum    75-76    ///
  byte    hu01a_hhnumo    77-77    ///
  byte    hu01a_relatef1  78-78    ///
  byte    hu01a_tenurep   79-79    ///
  byte    hu01a_sex       80-80    ///
  int     hu01a_age       81-83    ///
  byte    hu01a_citizen   84-84    ///
  byte    hu01a_marst     85-85    ///
  byte    hu01a_marn      86-86    ///
  byte    hu01a_conun     87-87    ///
  byte    hu01a_chborn    88-89    ///
  byte    hu01a_relatef2  90-90    ///
  byte    hu01a_edattan   91-91    ///
  byte    hu01a_empstat   92-92    ///
  byte    hu01a_occ       93-94    ///
  byte    hu01a_hrswk     95-96    ///
  byte    hu01a_classwk   97-97    ///
  byte    hu01a_ind       98-99    ///
  byte    hu01a_empsz     100-100  ///
  byte    hu01a_seekjob   101-101  ///
  int     hu01a_seekdur   102-104  ///
  int     hu01a_jobendyr  105-108  ///
  byte    hu01a_commw     109-109  ///
  byte    hu01a_comms     110-110  ///
  byte    hu01a_commdurw  111-111  ///
  byte    hu01a_commdurs  112-112  ///
  byte    hu01a_commloc   113-113  ///
  byte    hu01a_relate    114-114  ///
  byte    hu01a_famnum    115-116  ///
  using `"ipumsi_00077.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var hu01a_dwnum    `"Dwelling number"'
label var hu01a_hhnum    `"Household number (within dwelling)"'
label var hu01a_hhn      `"Number of households in dwelling"'
label var hu01a_pernd    `"Number of persons in dwelling"'
label var hu01a_pern     `"Number of persons in household"'
label var hu01a_fgq      `"Group quarters, inferred"'
label var hu01a_famn     `"Number of families in the dwelling"'
label var hu01a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var hu01a_story    `"Position of dwelling within the building"'
label var hu01a_bldty    `"Type of building"'
label var hu01a_conyr    `"Year of construction of building"'
label var hu01a_dwtype   `"Type of housing unit"'
label var hu01a_occup    `"Occupancy status of housing unit"'
label var hu01a_ownty    `"Type of ownership"'
label var hu01a_room     `"Number of rooms, and availability of kitchen"'
label var hu01a_kitch    `"Number of kitchens of 4 m2 or more"'
label var hu01a_kitchs   `"Number of kitchenettes less than 4 square meters"'
label var hu01a_baths    `"Number of bathrooms with fixed bath or shower"'
label var hu01a_bathsn   `"Number of bathrooms with no fixed bath or shower"'
label var hu01a_floorspr `"Floorspace: rooms (square meters)"'
label var hu01a_watsup   `"Water supply"'
label var hu01a_hotwat   `"Hot water"'
label var hu01a_gas      `"Gas"'
label var hu01a_heat     `"Heating"'
label var hu01a_toilet   `"Flush toilet"'
label var hu01a_sewer    `"Sewage disposal"'
label var hu01a_comfort  `"Level of comfort"'
label var hu01a_tenure   `"Occupancy status of the dwelling"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var hu01a_pernum   `"Person number (within household)"'
label var hu01a_hhnumo   `"Serial number of household within dwelling"'
label var hu01a_relatef1 `"Family status"'
label var hu01a_tenurep  `"Dwelling's tenure status"'
label var hu01a_sex      `"Sex"'
label var hu01a_age      `"Age"'
label var hu01a_citizen  `"Citizenship"'
label var hu01a_marst    `"Marital status"'
label var hu01a_marn     `"Number of marriages"'
label var hu01a_conun    `"In consensual union"'
label var hu01a_chborn   `"Number of liveborn children"'
label var hu01a_relatef2 `"Relation to the head of family"'
label var hu01a_edattan  `"Highest education level completed"'
label var hu01a_empstat  `"Economic activity"'
label var hu01a_occ      `"Occupation"'
label var hu01a_hrswk    `"Hours worked per week"'
label var hu01a_classwk  `"Status in employment"'
label var hu01a_ind      `"Industry, branch of economy"'
label var hu01a_empsz    `"Number of employees of employer"'
label var hu01a_seekjob  `"Seeking job"'
label var hu01a_seekdur  `"Months seeking job"'
label var hu01a_jobendyr `"Year of ending last job"'
label var hu01a_commw    `"Travel to work"'
label var hu01a_comms    `"Travel to school"'
label var hu01a_commdurw `"Duration of daily journey to work"'
label var hu01a_commdurs `"Duration of daily journey to school"'
label var hu01a_commloc  `"Works or studies in locality of residence"'
label var hu01a_relate   `"Relationship to household head"'
label var hu01a_famnum   `"Family number within household"'

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

label define hu01a_hhnum_lbl 1 `"1"'
label define hu01a_hhnum_lbl 2 `"2"', add
label define hu01a_hhnum_lbl 3 `"3"', add
label define hu01a_hhnum_lbl 4 `"4"', add
label define hu01a_hhnum_lbl 5 `"5"', add
label define hu01a_hhnum_lbl 6 `"6"', add
label define hu01a_hhnum_lbl 7 `"7"', add
label define hu01a_hhnum_lbl 8 `"8"', add
label values hu01a_hhnum hu01a_hhnum_lbl

label define hu01a_hhn_lbl 1 `"1"'
label define hu01a_hhn_lbl 2 `"2"', add
label define hu01a_hhn_lbl 3 `"3"', add
label define hu01a_hhn_lbl 4 `"4"', add
label define hu01a_hhn_lbl 5 `"5"', add
label define hu01a_hhn_lbl 6 `"6"', add
label define hu01a_hhn_lbl 7 `"7"', add
label define hu01a_hhn_lbl 8 `"8"', add
label values hu01a_hhn hu01a_hhn_lbl

label define hu01a_pernd_lbl 00 `"0"'
label define hu01a_pernd_lbl 01 `"1"', add
label define hu01a_pernd_lbl 02 `"2"', add
label define hu01a_pernd_lbl 03 `"3"', add
label define hu01a_pernd_lbl 04 `"4"', add
label define hu01a_pernd_lbl 05 `"5"', add
label define hu01a_pernd_lbl 06 `"6"', add
label define hu01a_pernd_lbl 07 `"7"', add
label define hu01a_pernd_lbl 08 `"8"', add
label define hu01a_pernd_lbl 09 `"9"', add
label define hu01a_pernd_lbl 10 `"10"', add
label define hu01a_pernd_lbl 11 `"11"', add
label define hu01a_pernd_lbl 12 `"12"', add
label define hu01a_pernd_lbl 13 `"13"', add
label define hu01a_pernd_lbl 14 `"14"', add
label define hu01a_pernd_lbl 15 `"15"', add
label define hu01a_pernd_lbl 16 `"16"', add
label define hu01a_pernd_lbl 17 `"17"', add
label define hu01a_pernd_lbl 18 `"18"', add
label define hu01a_pernd_lbl 19 `"19"', add
label define hu01a_pernd_lbl 20 `"20"', add
label define hu01a_pernd_lbl 21 `"21"', add
label define hu01a_pernd_lbl 22 `"22"', add
label define hu01a_pernd_lbl 23 `"23"', add
label define hu01a_pernd_lbl 24 `"24"', add
label define hu01a_pernd_lbl 25 `"25"', add
label define hu01a_pernd_lbl 26 `"26"', add
label define hu01a_pernd_lbl 27 `"27"', add
label define hu01a_pernd_lbl 28 `"28"', add
label define hu01a_pernd_lbl 29 `"29"', add
label define hu01a_pernd_lbl 30 `"30"', add
label values hu01a_pernd hu01a_pernd_lbl

label define hu01a_pern_lbl 00 `"0"'
label define hu01a_pern_lbl 01 `"1"', add
label define hu01a_pern_lbl 02 `"2"', add
label define hu01a_pern_lbl 03 `"3"', add
label define hu01a_pern_lbl 04 `"4"', add
label define hu01a_pern_lbl 05 `"5"', add
label define hu01a_pern_lbl 06 `"6"', add
label define hu01a_pern_lbl 07 `"7"', add
label define hu01a_pern_lbl 08 `"8"', add
label define hu01a_pern_lbl 09 `"9"', add
label define hu01a_pern_lbl 10 `"10"', add
label define hu01a_pern_lbl 11 `"11"', add
label define hu01a_pern_lbl 12 `"12"', add
label define hu01a_pern_lbl 13 `"13"', add
label define hu01a_pern_lbl 14 `"14"', add
label define hu01a_pern_lbl 15 `"15"', add
label define hu01a_pern_lbl 16 `"16"', add
label define hu01a_pern_lbl 17 `"17"', add
label define hu01a_pern_lbl 18 `"18"', add
label define hu01a_pern_lbl 19 `"19"', add
label define hu01a_pern_lbl 20 `"20"', add
label define hu01a_pern_lbl 21 `"21"', add
label define hu01a_pern_lbl 22 `"22"', add
label define hu01a_pern_lbl 23 `"23"', add
label define hu01a_pern_lbl 24 `"24"', add
label define hu01a_pern_lbl 25 `"25"', add
label define hu01a_pern_lbl 26 `"26"', add
label define hu01a_pern_lbl 27 `"27"', add
label define hu01a_pern_lbl 28 `"28"', add
label define hu01a_pern_lbl 29 `"29"', add
label define hu01a_pern_lbl 30 `"30"', add
label values hu01a_pern hu01a_pern_lbl

label define hu01a_fgq_lbl 0 `"No"'
label define hu01a_fgq_lbl 1 `"Persons lacked an input dwelling record, suggesting they are from a group quarters"', add
label values hu01a_fgq hu01a_fgq_lbl

label define hu01a_famn_lbl 00 `"Vacant dwelling"'
label define hu01a_famn_lbl 01 `"1"', add
label define hu01a_famn_lbl 02 `"2"', add
label define hu01a_famn_lbl 03 `"3"', add
label define hu01a_famn_lbl 04 `"4"', add
label define hu01a_famn_lbl 05 `"5"', add
label define hu01a_famn_lbl 06 `"6"', add
label define hu01a_famn_lbl 07 `"7"', add
label define hu01a_famn_lbl 08 `"8"', add
label define hu01a_famn_lbl 09 `"9"', add
label define hu01a_famn_lbl 10 `"10"', add
label values hu01a_famn hu01a_famn_lbl

label define hu01a_fbig_lbl 0 `"No problem"'
label define hu01a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define hu01a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values hu01a_fbig hu01a_fbig_lbl

label define hu01a_story_lbl 00 `"Groundfloor, mezzanine"'
label define hu01a_story_lbl 01 `"Floor 1"', add
label define hu01a_story_lbl 02 `"Floor 2"', add
label define hu01a_story_lbl 03 `"Floor 3"', add
label define hu01a_story_lbl 04 `"Floor 4"', add
label define hu01a_story_lbl 05 `"Floor 5"', add
label define hu01a_story_lbl 06 `"Floor 6"', add
label define hu01a_story_lbl 07 `"Floor 7"', add
label define hu01a_story_lbl 08 `"Floor 8"', add
label define hu01a_story_lbl 09 `"Floor 9"', add
label define hu01a_story_lbl 10 `"Floor 10"', add
label define hu01a_story_lbl 11 `"Floor 11"', add
label define hu01a_story_lbl 12 `"Floor 12"', add
label define hu01a_story_lbl 13 `"Floor 13"', add
label define hu01a_story_lbl 14 `"Floor 14"', add
label define hu01a_story_lbl 15 `"Floor 15"', add
label define hu01a_story_lbl 16 `"Floor 16+"', add
label define hu01a_story_lbl 31 `"Mansard, garret"', add
label define hu01a_story_lbl 32 `"Basement or cellar"', add
label define hu01a_story_lbl 99 `"NIU (not in universe)"', add
label values hu01a_story hu01a_story_lbl

label define hu01a_bldty_lbl 1 `"Residential building"'
label define hu01a_bldty_lbl 2 `"Holiday house"', add
label define hu01a_bldty_lbl 3 `"Inhabited other building (e.g. school, office building, factory, shopping house)"', add
label define hu01a_bldty_lbl 4 `"Institution (e.g. students' hostel, workers' home social home, hotel, pension)"', add
label define hu01a_bldty_lbl 5 `"Other occupied structure (hut, hovel, cara  etc.)"', add
label define hu01a_bldty_lbl 9 `"Collective dwelling"', add
label values hu01a_bldty hu01a_bldty_lbl

label define hu01a_conyr_lbl 1900 `"Before 1900"'
label define hu01a_conyr_lbl 1919 `"1900-1919"', add
label define hu01a_conyr_lbl 1944 `"1920-1944"', add
label define hu01a_conyr_lbl 1959 `"1945-1959"', add
label define hu01a_conyr_lbl 1969 `"1960-1969"', add
label define hu01a_conyr_lbl 1979 `"1970-1979"', add
label define hu01a_conyr_lbl 1989 `"1980-1989"', add
label define hu01a_conyr_lbl 1990 `"1990"', add
label define hu01a_conyr_lbl 1991 `"1991"', add
label define hu01a_conyr_lbl 1992 `"1992"', add
label define hu01a_conyr_lbl 1993 `"1993"', add
label define hu01a_conyr_lbl 1994 `"1994"', add
label define hu01a_conyr_lbl 1995 `"1995"', add
label define hu01a_conyr_lbl 1996 `"1996"', add
label define hu01a_conyr_lbl 1997 `"1997"', add
label define hu01a_conyr_lbl 1998 `"1998"', add
label define hu01a_conyr_lbl 1999 `"1999"', add
label define hu01a_conyr_lbl 2000 `"2000"', add
label define hu01a_conyr_lbl 2001 `"2001"', add
label define hu01a_conyr_lbl 9999 `"NIU (not in universe)"', add
label values hu01a_conyr hu01a_conyr_lbl

label define hu01a_dwtype_lbl 1 `"Dwelling"'
label define hu01a_dwtype_lbl 2 `"Seasonal/holiday housing unit"', add
label define hu01a_dwtype_lbl 3 `"Occupied other housing unit (shop, workshop, laundry, hut, cara  etc.)"', add
label define hu01a_dwtype_lbl 9 `"Collective dwelling"', add
label values hu01a_dwtype hu01a_dwtype_lbl

label define hu01a_occup_lbl 0 `"NIU (not in universe)"'
label define hu01a_occup_lbl 1 `"Occupied"', add
label define hu01a_occup_lbl 2 `"Seasonally occupied, secondary dwelling"', add
label define hu01a_occup_lbl 4 `"Occupied by persons not belonging to the scope of the census"', add
label define hu01a_occup_lbl 5 `"Vacant dwelling"', add
label define hu01a_occup_lbl 6 `"Dwelling used for other than habitation"', add
label define hu01a_occup_lbl 7 `"Holiday housing unit"', add
label values hu01a_occup hu01a_occup_lbl

label define hu01a_ownty_lbl 0 `"NIU (not in universe)"'
label define hu01a_ownty_lbl 1 `"Natural person"', add
label define hu01a_ownty_lbl 2 `"Local government"', add
label define hu01a_ownty_lbl 3 `"Church, religious community"', add
label define hu01a_ownty_lbl 4 `"Enterprise, cooperative, other economic unit, institution"', add
label values hu01a_ownty hu01a_ownty_lbl

label define hu01a_room_lbl 0 `"No room"'
label define hu01a_room_lbl 1 `"1 room with no kitchen"', add
label define hu01a_room_lbl 2 `"1 room with kitchen(s)"', add
label define hu01a_room_lbl 3 `"2 rooms with no kitchen"', add
label define hu01a_room_lbl 4 `"2 rooms with kitchen(s)"', add
label define hu01a_room_lbl 5 `"3"', add
label define hu01a_room_lbl 6 `"4"', add
label define hu01a_room_lbl 7 `"5"', add
label define hu01a_room_lbl 8 `"6 or more"', add
label define hu01a_room_lbl 9 `"NIU (not in universe)"', add
label values hu01a_room hu01a_room_lbl

label define hu01a_kitch_lbl 0 `"None"'
label define hu01a_kitch_lbl 1 `"1"', add
label define hu01a_kitch_lbl 2 `"2"', add
label define hu01a_kitch_lbl 3 `"3"', add
label define hu01a_kitch_lbl 4 `"4 or more"', add
label define hu01a_kitch_lbl 9 `"NIU (not in universe)"', add
label values hu01a_kitch hu01a_kitch_lbl

label define hu01a_kitchs_lbl 0 `"None"'
label define hu01a_kitchs_lbl 1 `"1"', add
label define hu01a_kitchs_lbl 2 `"2"', add
label define hu01a_kitchs_lbl 3 `"3"', add
label define hu01a_kitchs_lbl 4 `"4 or more"', add
label define hu01a_kitchs_lbl 8 `"Unknown"', add
label define hu01a_kitchs_lbl 9 `"NIU (not in universe)"', add
label values hu01a_kitchs hu01a_kitchs_lbl

label define hu01a_baths_lbl 0 `"None"'
label define hu01a_baths_lbl 1 `"1"', add
label define hu01a_baths_lbl 2 `"2"', add
label define hu01a_baths_lbl 3 `"3"', add
label define hu01a_baths_lbl 4 `"4  or more"', add
label define hu01a_baths_lbl 9 `"NIU (not in universe)"', add
label values hu01a_baths hu01a_baths_lbl

label define hu01a_bathsn_lbl 0 `"None"'
label define hu01a_bathsn_lbl 1 `"1"', add
label define hu01a_bathsn_lbl 2 `"2"', add
label define hu01a_bathsn_lbl 3 `"3 or more"', add
label define hu01a_bathsn_lbl 8 `"Unknown"', add
label define hu01a_bathsn_lbl 9 `"NIU (not in universe)"', add
label values hu01a_bathsn hu01a_bathsn_lbl

label define hu01a_floorspr_lbl 000 `"NIU (not in universe)"'
label define hu01a_floorspr_lbl 004 `"4"', add
label define hu01a_floorspr_lbl 005 `"5"', add
label define hu01a_floorspr_lbl 006 `"6"', add
label define hu01a_floorspr_lbl 007 `"7"', add
label define hu01a_floorspr_lbl 008 `"8"', add
label define hu01a_floorspr_lbl 009 `"9"', add
label define hu01a_floorspr_lbl 010 `"10"', add
label define hu01a_floorspr_lbl 011 `"11"', add
label define hu01a_floorspr_lbl 012 `"12"', add
label define hu01a_floorspr_lbl 013 `"13"', add
label define hu01a_floorspr_lbl 014 `"14"', add
label define hu01a_floorspr_lbl 015 `"15"', add
label define hu01a_floorspr_lbl 016 `"16"', add
label define hu01a_floorspr_lbl 017 `"17"', add
label define hu01a_floorspr_lbl 018 `"18"', add
label define hu01a_floorspr_lbl 019 `"19"', add
label define hu01a_floorspr_lbl 020 `"20"', add
label define hu01a_floorspr_lbl 021 `"21"', add
label define hu01a_floorspr_lbl 022 `"22"', add
label define hu01a_floorspr_lbl 023 `"23"', add
label define hu01a_floorspr_lbl 024 `"24"', add
label define hu01a_floorspr_lbl 025 `"25"', add
label define hu01a_floorspr_lbl 026 `"26"', add
label define hu01a_floorspr_lbl 027 `"27"', add
label define hu01a_floorspr_lbl 028 `"28"', add
label define hu01a_floorspr_lbl 029 `"29"', add
label define hu01a_floorspr_lbl 030 `"30"', add
label define hu01a_floorspr_lbl 031 `"31"', add
label define hu01a_floorspr_lbl 032 `"32"', add
label define hu01a_floorspr_lbl 033 `"33"', add
label define hu01a_floorspr_lbl 034 `"34"', add
label define hu01a_floorspr_lbl 035 `"35"', add
label define hu01a_floorspr_lbl 036 `"36"', add
label define hu01a_floorspr_lbl 037 `"37"', add
label define hu01a_floorspr_lbl 038 `"38"', add
label define hu01a_floorspr_lbl 039 `"39"', add
label define hu01a_floorspr_lbl 040 `"40"', add
label define hu01a_floorspr_lbl 041 `"41"', add
label define hu01a_floorspr_lbl 042 `"42"', add
label define hu01a_floorspr_lbl 043 `"43"', add
label define hu01a_floorspr_lbl 044 `"44"', add
label define hu01a_floorspr_lbl 045 `"45"', add
label define hu01a_floorspr_lbl 046 `"46"', add
label define hu01a_floorspr_lbl 047 `"47"', add
label define hu01a_floorspr_lbl 048 `"48"', add
label define hu01a_floorspr_lbl 049 `"49"', add
label define hu01a_floorspr_lbl 050 `"50"', add
label define hu01a_floorspr_lbl 051 `"51"', add
label define hu01a_floorspr_lbl 052 `"52"', add
label define hu01a_floorspr_lbl 053 `"53"', add
label define hu01a_floorspr_lbl 054 `"54"', add
label define hu01a_floorspr_lbl 055 `"55"', add
label define hu01a_floorspr_lbl 056 `"56"', add
label define hu01a_floorspr_lbl 057 `"57"', add
label define hu01a_floorspr_lbl 058 `"58"', add
label define hu01a_floorspr_lbl 059 `"59"', add
label define hu01a_floorspr_lbl 060 `"60"', add
label define hu01a_floorspr_lbl 061 `"61"', add
label define hu01a_floorspr_lbl 062 `"62"', add
label define hu01a_floorspr_lbl 063 `"63"', add
label define hu01a_floorspr_lbl 064 `"64"', add
label define hu01a_floorspr_lbl 065 `"65"', add
label define hu01a_floorspr_lbl 066 `"66"', add
label define hu01a_floorspr_lbl 067 `"67"', add
label define hu01a_floorspr_lbl 068 `"68"', add
label define hu01a_floorspr_lbl 069 `"69"', add
label define hu01a_floorspr_lbl 070 `"70"', add
label define hu01a_floorspr_lbl 071 `"71"', add
label define hu01a_floorspr_lbl 072 `"72"', add
label define hu01a_floorspr_lbl 073 `"73"', add
label define hu01a_floorspr_lbl 074 `"74"', add
label define hu01a_floorspr_lbl 075 `"75"', add
label define hu01a_floorspr_lbl 076 `"76"', add
label define hu01a_floorspr_lbl 077 `"77"', add
label define hu01a_floorspr_lbl 078 `"78"', add
label define hu01a_floorspr_lbl 079 `"79"', add
label define hu01a_floorspr_lbl 080 `"80"', add
label define hu01a_floorspr_lbl 081 `"81"', add
label define hu01a_floorspr_lbl 082 `"82"', add
label define hu01a_floorspr_lbl 083 `"83"', add
label define hu01a_floorspr_lbl 084 `"84"', add
label define hu01a_floorspr_lbl 085 `"85"', add
label define hu01a_floorspr_lbl 086 `"86"', add
label define hu01a_floorspr_lbl 087 `"87"', add
label define hu01a_floorspr_lbl 088 `"88"', add
label define hu01a_floorspr_lbl 089 `"89"', add
label define hu01a_floorspr_lbl 090 `"90"', add
label define hu01a_floorspr_lbl 091 `"91"', add
label define hu01a_floorspr_lbl 092 `"92"', add
label define hu01a_floorspr_lbl 093 `"93"', add
label define hu01a_floorspr_lbl 094 `"94"', add
label define hu01a_floorspr_lbl 095 `"95"', add
label define hu01a_floorspr_lbl 096 `"96"', add
label define hu01a_floorspr_lbl 097 `"97"', add
label define hu01a_floorspr_lbl 098 `"98"', add
label define hu01a_floorspr_lbl 099 `"99"', add
label define hu01a_floorspr_lbl 100 `"100"', add
label define hu01a_floorspr_lbl 101 `"101"', add
label define hu01a_floorspr_lbl 102 `"102"', add
label define hu01a_floorspr_lbl 103 `"103"', add
label define hu01a_floorspr_lbl 104 `"104"', add
label define hu01a_floorspr_lbl 105 `"105"', add
label define hu01a_floorspr_lbl 106 `"106"', add
label define hu01a_floorspr_lbl 107 `"107"', add
label define hu01a_floorspr_lbl 108 `"108"', add
label define hu01a_floorspr_lbl 109 `"109"', add
label define hu01a_floorspr_lbl 110 `"110"', add
label define hu01a_floorspr_lbl 111 `"111"', add
label define hu01a_floorspr_lbl 112 `"112"', add
label define hu01a_floorspr_lbl 113 `"113"', add
label define hu01a_floorspr_lbl 114 `"114"', add
label define hu01a_floorspr_lbl 115 `"115"', add
label define hu01a_floorspr_lbl 116 `"116"', add
label define hu01a_floorspr_lbl 117 `"117"', add
label define hu01a_floorspr_lbl 118 `"118"', add
label define hu01a_floorspr_lbl 119 `"119"', add
label define hu01a_floorspr_lbl 120 `"120"', add
label define hu01a_floorspr_lbl 121 `"121"', add
label define hu01a_floorspr_lbl 122 `"122"', add
label define hu01a_floorspr_lbl 123 `"123"', add
label define hu01a_floorspr_lbl 124 `"124"', add
label define hu01a_floorspr_lbl 125 `"125"', add
label define hu01a_floorspr_lbl 126 `"126"', add
label define hu01a_floorspr_lbl 127 `"127"', add
label define hu01a_floorspr_lbl 128 `"128"', add
label define hu01a_floorspr_lbl 129 `"129"', add
label define hu01a_floorspr_lbl 130 `"130"', add
label define hu01a_floorspr_lbl 131 `"131"', add
label define hu01a_floorspr_lbl 132 `"132"', add
label define hu01a_floorspr_lbl 134 `"134"', add
label define hu01a_floorspr_lbl 135 `"135"', add
label define hu01a_floorspr_lbl 136 `"136"', add
label define hu01a_floorspr_lbl 137 `"137"', add
label define hu01a_floorspr_lbl 138 `"138"', add
label define hu01a_floorspr_lbl 139 `"139"', add
label define hu01a_floorspr_lbl 140 `"140"', add
label define hu01a_floorspr_lbl 141 `"141"', add
label define hu01a_floorspr_lbl 142 `"142"', add
label define hu01a_floorspr_lbl 143 `"143"', add
label define hu01a_floorspr_lbl 144 `"144"', add
label define hu01a_floorspr_lbl 145 `"145"', add
label define hu01a_floorspr_lbl 146 `"146"', add
label define hu01a_floorspr_lbl 147 `"147"', add
label define hu01a_floorspr_lbl 148 `"148"', add
label define hu01a_floorspr_lbl 150 `"150"', add
label define hu01a_floorspr_lbl 152 `"152"', add
label define hu01a_floorspr_lbl 153 `"153"', add
label define hu01a_floorspr_lbl 154 `"154"', add
label define hu01a_floorspr_lbl 155 `"155"', add
label define hu01a_floorspr_lbl 156 `"156"', add
label define hu01a_floorspr_lbl 157 `"157"', add
label define hu01a_floorspr_lbl 158 `"158"', add
label define hu01a_floorspr_lbl 160 `"160"', add
label define hu01a_floorspr_lbl 162 `"162"', add
label define hu01a_floorspr_lbl 164 `"164"', add
label define hu01a_floorspr_lbl 165 `"165"', add
label define hu01a_floorspr_lbl 167 `"167"', add
label define hu01a_floorspr_lbl 170 `"170"', add
label define hu01a_floorspr_lbl 174 `"174"', add
label define hu01a_floorspr_lbl 175 `"175"', add
label define hu01a_floorspr_lbl 176 `"176"', add
label define hu01a_floorspr_lbl 180 `"180"', add
label define hu01a_floorspr_lbl 181 `"181"', add
label define hu01a_floorspr_lbl 182 `"182"', add
label define hu01a_floorspr_lbl 184 `"184"', add
label define hu01a_floorspr_lbl 185 `"185"', add
label define hu01a_floorspr_lbl 186 `"186"', add
label define hu01a_floorspr_lbl 187 `"187"', add
label define hu01a_floorspr_lbl 189 `"189"', add
label define hu01a_floorspr_lbl 190 `"190"', add
label define hu01a_floorspr_lbl 192 `"192"', add
label define hu01a_floorspr_lbl 193 `"193"', add
label define hu01a_floorspr_lbl 194 `"194"', add
label define hu01a_floorspr_lbl 195 `"195"', add
label define hu01a_floorspr_lbl 200 `"200"', add
label define hu01a_floorspr_lbl 202 `"202"', add
label define hu01a_floorspr_lbl 210 `"210"', add
label define hu01a_floorspr_lbl 213 `"213"', add
label define hu01a_floorspr_lbl 220 `"220"', add
label define hu01a_floorspr_lbl 222 `"222"', add
label define hu01a_floorspr_lbl 224 `"224"', add
label define hu01a_floorspr_lbl 230 `"230"', add
label define hu01a_floorspr_lbl 232 `"232"', add
label define hu01a_floorspr_lbl 233 `"233"', add
label define hu01a_floorspr_lbl 240 `"240"', add
label define hu01a_floorspr_lbl 248 `"248"', add
label define hu01a_floorspr_lbl 250 `"250+"', add
label values hu01a_floorspr hu01a_floorspr_lbl

label define hu01a_watsup_lbl 0 `"NIU (not in universe)"'
label define hu01a_watsup_lbl 1 `"Community network: within dwelling"', add
label define hu01a_watsup_lbl 2 `"Community network: outside dwelling, but within building"', add
label define hu01a_watsup_lbl 3 `"Community network: on the groundplot of the building"', add
label define hu01a_watsup_lbl 4 `"Community network: outside the groundplot of the building"', add
label define hu01a_watsup_lbl 5 `"Domestic water system, within dwelling"', add
label define hu01a_watsup_lbl 6 `"From the well on the groundplot"', add
label define hu01a_watsup_lbl 7 `"From other place"', add
label values hu01a_watsup hu01a_watsup_lbl

label define hu01a_hotwat_lbl 0 `"None"'
label define hu01a_hotwat_lbl 1 `"From community scheme"', add
label define hu01a_hotwat_lbl 2 `"From central boiler for several dwellings"', add
label define hu01a_hotwat_lbl 3 `"From central boiler for one dwelling"', add
label define hu01a_hotwat_lbl 4 `"From traditional bath stove"', add
label define hu01a_hotwat_lbl 5 `"Kitchen water heater only"', add
label define hu01a_hotwat_lbl 6 `"Other"', add
label define hu01a_hotwat_lbl 9 `"NIU (not in universe)"', add
label values hu01a_hotwat hu01a_hotwat_lbl

label define hu01a_gas_lbl 0 `"None"'
label define hu01a_gas_lbl 1 `"Network (piped) gas"', add
label define hu01a_gas_lbl 2 `"From container"', add
label define hu01a_gas_lbl 3 `"Cylinder (bottle) gas"', add
label define hu01a_gas_lbl 9 `"NIU (not in universe)"', add
label values hu01a_gas hu01a_gas_lbl

label define hu01a_heat_lbl 0 `"No possibility of heating"'
label define hu01a_heat_lbl 1 `"District (block, thermic water) heating"', add
label define hu01a_heat_lbl 2 `"Central boiler for several dwellings"', add
label define hu01a_heat_lbl 3 `"Central boiler for one dwelling"', add
label define hu01a_heat_lbl 4 `"Individual (separate) heating of places"', add
label define hu01a_heat_lbl 9 `"NIU (not in universe)"', add
label values hu01a_heat hu01a_heat_lbl

label define hu01a_toilet_lbl 0 `"None"'
label define hu01a_toilet_lbl 1 `"Yes: within dwelling, in separate place"', add
label define hu01a_toilet_lbl 2 `"Yes: in another place of the dwelling"', add
label define hu01a_toilet_lbl 3 `"Yes:outside dwelling"', add
label define hu01a_toilet_lbl 9 `"NIU (not in universe)"', add
label values hu01a_toilet hu01a_toilet_lbl

label define hu01a_sewer_lbl 0 `"None"'
label define hu01a_sewer_lbl 1 `"Into community scheme"', add
label define hu01a_sewer_lbl 2 `"Into domestic system: closed sewage tank"', add
label define hu01a_sewer_lbl 3 `"Into domestic system: dessicator (drain tank)"', add
label define hu01a_sewer_lbl 4 `"Into domestic system: other"', add
label define hu01a_sewer_lbl 9 `"NIU (not in universe)"', add
label values hu01a_sewer hu01a_sewer_lbl

label define hu01a_comfort_lbl 1 `"Occupied other housing unit"'
label define hu01a_comfort_lbl 2 `"Dwelling, holiday housing unit: with all modern conveniences (amenities)"', add
label define hu01a_comfort_lbl 3 `"Dwelling, holiday housing unit: with principal conveniences"', add
label define hu01a_comfort_lbl 4 `"Dwelling, holiday housing unit: half-comfort (part of conveniences)"', add
label define hu01a_comfort_lbl 5 `"Dwelling, holiday housing unit: without comfort"', add
label define hu01a_comfort_lbl 6 `"Emergency or other accommodation"', add
label define hu01a_comfort_lbl 9 `"NIU (not in universe)"', add
label values hu01a_comfort hu01a_comfort_lbl

label define hu01a_tenure_lbl 1 `"Vacant"'
label define hu01a_tenure_lbl 2 `"Owner's"', add
label define hu01a_tenure_lbl 3 `"Tenant's"', add
label define hu01a_tenure_lbl 4 `"Service"', add
label define hu01a_tenure_lbl 5 `"Other rights of use"', add
label define hu01a_tenure_lbl 9 `"NIU (not in universe)"', add
label values hu01a_tenure hu01a_tenure_lbl

label define hu01a_pernum_lbl 00 `"Household record"'
label define hu01a_pernum_lbl 01 `"1"', add
label define hu01a_pernum_lbl 02 `"2"', add
label define hu01a_pernum_lbl 03 `"3"', add
label define hu01a_pernum_lbl 04 `"4"', add
label define hu01a_pernum_lbl 05 `"5"', add
label define hu01a_pernum_lbl 06 `"6"', add
label define hu01a_pernum_lbl 07 `"7"', add
label define hu01a_pernum_lbl 08 `"8"', add
label define hu01a_pernum_lbl 09 `"9"', add
label define hu01a_pernum_lbl 10 `"10"', add
label define hu01a_pernum_lbl 11 `"11"', add
label define hu01a_pernum_lbl 12 `"12"', add
label define hu01a_pernum_lbl 13 `"13"', add
label define hu01a_pernum_lbl 14 `"14"', add
label define hu01a_pernum_lbl 15 `"15"', add
label define hu01a_pernum_lbl 16 `"16"', add
label define hu01a_pernum_lbl 17 `"17"', add
label define hu01a_pernum_lbl 18 `"18"', add
label define hu01a_pernum_lbl 19 `"19"', add
label define hu01a_pernum_lbl 20 `"20"', add
label define hu01a_pernum_lbl 21 `"21"', add
label define hu01a_pernum_lbl 22 `"22"', add
label define hu01a_pernum_lbl 23 `"23"', add
label define hu01a_pernum_lbl 24 `"24"', add
label define hu01a_pernum_lbl 25 `"25"', add
label define hu01a_pernum_lbl 26 `"26"', add
label define hu01a_pernum_lbl 27 `"27"', add
label define hu01a_pernum_lbl 28 `"28"', add
label define hu01a_pernum_lbl 29 `"29"', add
label define hu01a_pernum_lbl 30 `"30"', add
label values hu01a_pernum hu01a_pernum_lbl

label define hu01a_hhnumo_lbl 0 `"Persons in collective dwellings"'
label define hu01a_hhnumo_lbl 1 `"1"', add
label define hu01a_hhnumo_lbl 2 `"2"', add
label define hu01a_hhnumo_lbl 3 `"3"', add
label define hu01a_hhnumo_lbl 4 `"4"', add
label define hu01a_hhnumo_lbl 5 `"5"', add
label define hu01a_hhnumo_lbl 6 `"6"', add
label define hu01a_hhnumo_lbl 7 `"7"', add
label define hu01a_hhnumo_lbl 8 `"8"', add
label define hu01a_hhnumo_lbl 9 `"9"', add
label values hu01a_hhnumo hu01a_hhnumo_lbl

label define hu01a_relatef1_lbl 1 `"Husband, wife"'
label define hu01a_relatef1_lbl 2 `"Consensual (cohabiting) partner"', add
label define hu01a_relatef1_lbl 3 `"Father, mother"', add
label define hu01a_relatef1_lbl 4 `"Child"', add
label define hu01a_relatef1_lbl 5 `"Other"', add
label define hu01a_relatef1_lbl 6 `"Person living alone"', add
label values hu01a_relatef1 hu01a_relatef1_lbl

label define hu01a_tenurep_lbl 1 `"Owner or his/her relative"'
label define hu01a_tenurep_lbl 2 `"Main tenant or his/her relative, user of service dwelling"', add
label define hu01a_tenurep_lbl 3 `"Subtenant, bedtenant, night-lodger, other tenure"', add
label define hu01a_tenurep_lbl 4 `"NIU (not in universe)"', add
label values hu01a_tenurep hu01a_tenurep_lbl

label define hu01a_sex_lbl 1 `"Male"'
label define hu01a_sex_lbl 2 `"Female"', add
label values hu01a_sex hu01a_sex_lbl

label define hu01a_age_lbl 000 `"0"'
label define hu01a_age_lbl 001 `"1"', add
label define hu01a_age_lbl 002 `"2"', add
label define hu01a_age_lbl 003 `"3"', add
label define hu01a_age_lbl 004 `"4"', add
label define hu01a_age_lbl 005 `"5"', add
label define hu01a_age_lbl 006 `"6"', add
label define hu01a_age_lbl 007 `"7"', add
label define hu01a_age_lbl 008 `"8"', add
label define hu01a_age_lbl 009 `"9"', add
label define hu01a_age_lbl 010 `"10"', add
label define hu01a_age_lbl 011 `"11"', add
label define hu01a_age_lbl 012 `"12"', add
label define hu01a_age_lbl 013 `"13"', add
label define hu01a_age_lbl 014 `"14"', add
label define hu01a_age_lbl 015 `"15"', add
label define hu01a_age_lbl 016 `"16"', add
label define hu01a_age_lbl 017 `"17"', add
label define hu01a_age_lbl 018 `"18"', add
label define hu01a_age_lbl 019 `"19"', add
label define hu01a_age_lbl 020 `"20"', add
label define hu01a_age_lbl 021 `"21"', add
label define hu01a_age_lbl 022 `"22"', add
label define hu01a_age_lbl 023 `"23"', add
label define hu01a_age_lbl 024 `"24"', add
label define hu01a_age_lbl 025 `"25"', add
label define hu01a_age_lbl 026 `"26"', add
label define hu01a_age_lbl 027 `"27"', add
label define hu01a_age_lbl 028 `"28"', add
label define hu01a_age_lbl 029 `"29"', add
label define hu01a_age_lbl 030 `"30"', add
label define hu01a_age_lbl 031 `"31"', add
label define hu01a_age_lbl 032 `"32"', add
label define hu01a_age_lbl 033 `"33"', add
label define hu01a_age_lbl 034 `"34"', add
label define hu01a_age_lbl 035 `"35"', add
label define hu01a_age_lbl 036 `"36"', add
label define hu01a_age_lbl 037 `"37"', add
label define hu01a_age_lbl 038 `"38"', add
label define hu01a_age_lbl 039 `"39"', add
label define hu01a_age_lbl 040 `"40"', add
label define hu01a_age_lbl 041 `"41"', add
label define hu01a_age_lbl 042 `"42"', add
label define hu01a_age_lbl 043 `"43"', add
label define hu01a_age_lbl 044 `"44"', add
label define hu01a_age_lbl 045 `"45"', add
label define hu01a_age_lbl 046 `"46"', add
label define hu01a_age_lbl 047 `"47"', add
label define hu01a_age_lbl 048 `"48"', add
label define hu01a_age_lbl 049 `"49"', add
label define hu01a_age_lbl 050 `"50"', add
label define hu01a_age_lbl 051 `"51"', add
label define hu01a_age_lbl 052 `"52"', add
label define hu01a_age_lbl 053 `"53"', add
label define hu01a_age_lbl 054 `"54"', add
label define hu01a_age_lbl 055 `"55"', add
label define hu01a_age_lbl 056 `"56"', add
label define hu01a_age_lbl 057 `"57"', add
label define hu01a_age_lbl 058 `"58"', add
label define hu01a_age_lbl 059 `"59"', add
label define hu01a_age_lbl 060 `"60"', add
label define hu01a_age_lbl 061 `"61"', add
label define hu01a_age_lbl 062 `"62"', add
label define hu01a_age_lbl 063 `"63"', add
label define hu01a_age_lbl 064 `"64"', add
label define hu01a_age_lbl 065 `"65"', add
label define hu01a_age_lbl 066 `"66"', add
label define hu01a_age_lbl 067 `"67"', add
label define hu01a_age_lbl 068 `"68"', add
label define hu01a_age_lbl 069 `"69"', add
label define hu01a_age_lbl 070 `"70"', add
label define hu01a_age_lbl 071 `"71"', add
label define hu01a_age_lbl 072 `"72"', add
label define hu01a_age_lbl 073 `"73"', add
label define hu01a_age_lbl 074 `"74"', add
label define hu01a_age_lbl 075 `"75"', add
label define hu01a_age_lbl 076 `"76"', add
label define hu01a_age_lbl 077 `"77"', add
label define hu01a_age_lbl 078 `"78"', add
label define hu01a_age_lbl 079 `"79"', add
label define hu01a_age_lbl 080 `"80"', add
label define hu01a_age_lbl 081 `"81"', add
label define hu01a_age_lbl 082 `"82"', add
label define hu01a_age_lbl 083 `"83"', add
label define hu01a_age_lbl 084 `"84"', add
label define hu01a_age_lbl 085 `"85"', add
label define hu01a_age_lbl 086 `"86"', add
label define hu01a_age_lbl 087 `"87"', add
label define hu01a_age_lbl 088 `"88"', add
label define hu01a_age_lbl 089 `"89"', add
label define hu01a_age_lbl 090 `"90"', add
label define hu01a_age_lbl 091 `"91"', add
label define hu01a_age_lbl 092 `"92"', add
label define hu01a_age_lbl 093 `"93"', add
label define hu01a_age_lbl 094 `"94"', add
label define hu01a_age_lbl 095 `"95"', add
label define hu01a_age_lbl 096 `"96"', add
label define hu01a_age_lbl 097 `"97"', add
label define hu01a_age_lbl 098 `"98"', add
label define hu01a_age_lbl 099 `"99"', add
label define hu01a_age_lbl 100 `"100+"', add
label values hu01a_age hu01a_age_lbl

label define hu01a_citizen_lbl 1 `"Foreigners"'
label define hu01a_citizen_lbl 2 `"Hungarian"', add
label values hu01a_citizen hu01a_citizen_lbl

label define hu01a_marst_lbl 1 `"Never married"'
label define hu01a_marst_lbl 2 `"Married, living together with spouse"', add
label define hu01a_marst_lbl 3 `"Married, not living together with spouse"', add
label define hu01a_marst_lbl 4 `"Widowed"', add
label define hu01a_marst_lbl 5 `"Divorced"', add
label values hu01a_marst hu01a_marst_lbl

label define hu01a_marn_lbl 0 `"NIU (not in universe)"'
label define hu01a_marn_lbl 1 `"1"', add
label define hu01a_marn_lbl 2 `"2"', add
label define hu01a_marn_lbl 3 `"3"', add
label define hu01a_marn_lbl 4 `"4"', add
label define hu01a_marn_lbl 5 `"5+"', add
label define hu01a_marn_lbl 9 `"Unknown"', add
label values hu01a_marn hu01a_marn_lbl

label define hu01a_conun_lbl 1 `"Yes"'
label define hu01a_conun_lbl 2 `"No"', add
label values hu01a_conun hu01a_conun_lbl

label define hu01a_chborn_lbl 00 `"0"'
label define hu01a_chborn_lbl 01 `"1"', add
label define hu01a_chborn_lbl 02 `"2"', add
label define hu01a_chborn_lbl 03 `"3"', add
label define hu01a_chborn_lbl 04 `"4"', add
label define hu01a_chborn_lbl 05 `"5"', add
label define hu01a_chborn_lbl 06 `"6"', add
label define hu01a_chborn_lbl 07 `"7"', add
label define hu01a_chborn_lbl 08 `"8"', add
label define hu01a_chborn_lbl 09 `"9"', add
label define hu01a_chborn_lbl 10 `"10"', add
label define hu01a_chborn_lbl 11 `"11"', add
label define hu01a_chborn_lbl 12 `"12"', add
label define hu01a_chborn_lbl 13 `"13+"', add
label define hu01a_chborn_lbl 99 `"NIU (not in universe)"', add
label values hu01a_chborn hu01a_chborn_lbl

label define hu01a_relatef2_lbl 1 `"Head of family"'
label define hu01a_relatef2_lbl 2 `"Spouse of the head of family"', add
label define hu01a_relatef2_lbl 3 `"Cohabiting partner of the head of family"', add
label define hu01a_relatef2_lbl 4 `"Other family member"', add
label values hu01a_relatef2 hu01a_relatef2_lbl

label define hu01a_edattan_lbl 0 `"NIU (not in universe)"'
label define hu01a_edattan_lbl 1 `"3 grades of general (primary) school or less"', add
label define hu01a_edattan_lbl 2 `"4-7 grades of general school"', add
label define hu01a_edattan_lbl 3 `"First cycle of secondary school"', add
label define hu01a_edattan_lbl 4 `"Second-level apprentice or vocational school"', add
label define hu01a_edattan_lbl 5 `"Second cycle of secondary school"', add
label define hu01a_edattan_lbl 6 `"Third-level education"', add
label values hu01a_edattan hu01a_edattan_lbl

label define hu01a_empstat_lbl 1 `"Employed (with or without other source of livelihood)"'
label define hu01a_empstat_lbl 2 `"Unemployed (including those with different sources of livelihood)"', add
label define hu01a_empstat_lbl 3 `"Persons receiving childcare fee, benefit or allowance"', add
label define hu01a_empstat_lbl 4 `"Pensioner"', add
label define hu01a_empstat_lbl 5 `"Other inactive earner"', add
label define hu01a_empstat_lbl 6 `"Dependent supported by an institution"', add
label define hu01a_empstat_lbl 7 `"Dependent supported by a private person"', add
label values hu01a_empstat hu01a_empstat_lbl

label define hu01a_occ_lbl 00 `"NIU (not in universe)"'
label define hu01a_occ_lbl 01 `"Armed forces"', add
label define hu01a_occ_lbl 11 `"Legislators and senior officials"', add
label define hu01a_occ_lbl 12 `"Corporate managers"', add
label define hu01a_occ_lbl 13 `"General managers"', add
label define hu01a_occ_lbl 21 `"Physical, mathematical and engineering professionals"', add
label define hu01a_occ_lbl 22 `"Life science and health professionals"', add
label define hu01a_occ_lbl 23 `"Teaching professionals"', add
label define hu01a_occ_lbl 24 `"Other professionals"', add
label define hu01a_occ_lbl 31 `"Physical and engineering associate professionals"', add
label define hu01a_occ_lbl 32 `"Life science and health associate professionals"', add
label define hu01a_occ_lbl 33 `"Teaching associate professionals"', add
label define hu01a_occ_lbl 34 `"Other associate professionals"', add
label define hu01a_occ_lbl 41 `"Office clerks"', add
label define hu01a_occ_lbl 42 `"Customer service clerks"', add
label define hu01a_occ_lbl 51 `"Personal and protective service workers"', add
label define hu01a_occ_lbl 52 `"Models, salespersons and demonstrators"', add
label define hu01a_occ_lbl 61 `"Agriculture and fishery workers"', add
label define hu01a_occ_lbl 71 `"Extraction and building trades workers"', add
label define hu01a_occ_lbl 72 `"Metal, machinery and related trades workers"', add
label define hu01a_occ_lbl 73 `"Precision, handicraft, printing, and related workers"', add
label define hu01a_occ_lbl 74 `"Other craft and related trades workers"', add
label define hu01a_occ_lbl 81 `"Stationary-plant and related operators"', add
label define hu01a_occ_lbl 82 `"Machine operators and assemblers"', add
label define hu01a_occ_lbl 83 `"Drivers and mobile-plant operators"', add
label define hu01a_occ_lbl 91 `"Sales and services elementary occupations"', add
label define hu01a_occ_lbl 92 `"Agriculture, fishery, and related laborers"', add
label define hu01a_occ_lbl 93 `"Laborers in mining, construction, manuf. and transport"', add
label values hu01a_occ hu01a_occ_lbl

label define hu01a_hrswk_lbl 00 `"0"'
label define hu01a_hrswk_lbl 01 `"1"', add
label define hu01a_hrswk_lbl 02 `"2"', add
label define hu01a_hrswk_lbl 03 `"3"', add
label define hu01a_hrswk_lbl 04 `"4"', add
label define hu01a_hrswk_lbl 05 `"5"', add
label define hu01a_hrswk_lbl 06 `"6"', add
label define hu01a_hrswk_lbl 07 `"7"', add
label define hu01a_hrswk_lbl 08 `"8"', add
label define hu01a_hrswk_lbl 09 `"9"', add
label define hu01a_hrswk_lbl 10 `"10"', add
label define hu01a_hrswk_lbl 11 `"11"', add
label define hu01a_hrswk_lbl 12 `"12"', add
label define hu01a_hrswk_lbl 13 `"13"', add
label define hu01a_hrswk_lbl 14 `"14"', add
label define hu01a_hrswk_lbl 15 `"15"', add
label define hu01a_hrswk_lbl 16 `"16"', add
label define hu01a_hrswk_lbl 17 `"17"', add
label define hu01a_hrswk_lbl 18 `"18"', add
label define hu01a_hrswk_lbl 19 `"19"', add
label define hu01a_hrswk_lbl 20 `"20"', add
label define hu01a_hrswk_lbl 21 `"21"', add
label define hu01a_hrswk_lbl 22 `"22"', add
label define hu01a_hrswk_lbl 23 `"23"', add
label define hu01a_hrswk_lbl 24 `"24"', add
label define hu01a_hrswk_lbl 25 `"25"', add
label define hu01a_hrswk_lbl 26 `"26"', add
label define hu01a_hrswk_lbl 27 `"27"', add
label define hu01a_hrswk_lbl 28 `"28"', add
label define hu01a_hrswk_lbl 29 `"29"', add
label define hu01a_hrswk_lbl 30 `"30"', add
label define hu01a_hrswk_lbl 31 `"31"', add
label define hu01a_hrswk_lbl 32 `"32"', add
label define hu01a_hrswk_lbl 33 `"33"', add
label define hu01a_hrswk_lbl 34 `"34"', add
label define hu01a_hrswk_lbl 35 `"35"', add
label define hu01a_hrswk_lbl 36 `"36"', add
label define hu01a_hrswk_lbl 37 `"37"', add
label define hu01a_hrswk_lbl 38 `"38"', add
label define hu01a_hrswk_lbl 39 `"39"', add
label define hu01a_hrswk_lbl 40 `"40"', add
label define hu01a_hrswk_lbl 41 `"41"', add
label define hu01a_hrswk_lbl 42 `"42"', add
label define hu01a_hrswk_lbl 43 `"43"', add
label define hu01a_hrswk_lbl 44 `"44"', add
label define hu01a_hrswk_lbl 45 `"45"', add
label define hu01a_hrswk_lbl 46 `"46"', add
label define hu01a_hrswk_lbl 47 `"47"', add
label define hu01a_hrswk_lbl 48 `"48"', add
label define hu01a_hrswk_lbl 49 `"49"', add
label define hu01a_hrswk_lbl 50 `"50"', add
label define hu01a_hrswk_lbl 51 `"51"', add
label define hu01a_hrswk_lbl 52 `"52"', add
label define hu01a_hrswk_lbl 53 `"53"', add
label define hu01a_hrswk_lbl 54 `"54"', add
label define hu01a_hrswk_lbl 55 `"55"', add
label define hu01a_hrswk_lbl 56 `"56"', add
label define hu01a_hrswk_lbl 57 `"57"', add
label define hu01a_hrswk_lbl 58 `"58"', add
label define hu01a_hrswk_lbl 59 `"59"', add
label define hu01a_hrswk_lbl 60 `"60"', add
label define hu01a_hrswk_lbl 62 `"62"', add
label define hu01a_hrswk_lbl 63 `"63"', add
label define hu01a_hrswk_lbl 64 `"64"', add
label define hu01a_hrswk_lbl 65 `"65"', add
label define hu01a_hrswk_lbl 66 `"66"', add
label define hu01a_hrswk_lbl 67 `"67"', add
label define hu01a_hrswk_lbl 68 `"68"', add
label define hu01a_hrswk_lbl 69 `"69"', add
label define hu01a_hrswk_lbl 70 `"70"', add
label define hu01a_hrswk_lbl 71 `"71"', add
label define hu01a_hrswk_lbl 72 `"72"', add
label define hu01a_hrswk_lbl 73 `"73"', add
label define hu01a_hrswk_lbl 74 `"74"', add
label define hu01a_hrswk_lbl 75 `"75"', add
label define hu01a_hrswk_lbl 76 `"76"', add
label define hu01a_hrswk_lbl 77 `"77"', add
label define hu01a_hrswk_lbl 78 `"78"', add
label define hu01a_hrswk_lbl 79 `"79"', add
label define hu01a_hrswk_lbl 80 `"80"', add
label define hu01a_hrswk_lbl 82 `"82"', add
label define hu01a_hrswk_lbl 84 `"84"', add
label define hu01a_hrswk_lbl 85 `"85"', add
label define hu01a_hrswk_lbl 86 `"86"', add
label define hu01a_hrswk_lbl 87 `"87"', add
label define hu01a_hrswk_lbl 88 `"88"', add
label define hu01a_hrswk_lbl 89 `"89"', add
label define hu01a_hrswk_lbl 90 `"90"', add
label define hu01a_hrswk_lbl 91 `"91"', add
label define hu01a_hrswk_lbl 92 `"92"', add
label define hu01a_hrswk_lbl 94 `"94"', add
label define hu01a_hrswk_lbl 95 `"95"', add
label define hu01a_hrswk_lbl 96 `"96+"', add
label define hu01a_hrswk_lbl 97 `"No specified obligation for worktime"', add
label define hu01a_hrswk_lbl 98 `"Unknown"', add
label define hu01a_hrswk_lbl 99 `"NIU (not in universe)"', add
label values hu01a_hrswk hu01a_hrswk_lbl

label define hu01a_classwk_lbl 1 `"Employee"'
label define hu01a_classwk_lbl 2 `"Private (own-account) entrepreneur with or without employee"', add
label define hu01a_classwk_lbl 3 `"Working member of partnership"', add
label define hu01a_classwk_lbl 4 `"Member of cooperative"', add
label define hu01a_classwk_lbl 5 `"Unpaid helping family worker"', add
label define hu01a_classwk_lbl 6 `"Occasional worker, day laborer"', add
label define hu01a_classwk_lbl 7 `"Worker of public utility"', add
label define hu01a_classwk_lbl 9 `"NIU (not in universe)"', add
label values hu01a_classwk hu01a_classwk_lbl

label define hu01a_ind_lbl 00 `"NIU (not in universe)"'
label define hu01a_ind_lbl 01 `"Agriculture, hunting, forestry and fishing"', add
label define hu01a_ind_lbl 02 `"Forestry, logging and related activities"', add
label define hu01a_ind_lbl 05 `"Fishing"', add
label define hu01a_ind_lbl 10 `"Mining of coal and lignite"', add
label define hu01a_ind_lbl 11 `"Extraction of crude petroleum and natural gas"', add
label define hu01a_ind_lbl 13 `"Mining of metal ores"', add
label define hu01a_ind_lbl 14 `"Other mining and quarrying"', add
label define hu01a_ind_lbl 15 `"Manufacturing of food products and beverages"', add
label define hu01a_ind_lbl 16 `"Manufacture of tobacco products"', add
label define hu01a_ind_lbl 17 `"Manufacture of textiles"', add
label define hu01a_ind_lbl 18 `"Manufacture of wearing apparel"', add
label define hu01a_ind_lbl 19 `"Tanning and dressing of leather"', add
label define hu01a_ind_lbl 20 `"Manufacture of wood and wood, products, except furniture"', add
label define hu01a_ind_lbl 21 `"Manufacture of paper and paper products"', add
label define hu01a_ind_lbl 22 `"Publishing, printing, and reproduction of recorded media"', add
label define hu01a_ind_lbl 23 `"Manufacture of coke, refined petroleum products and nuclear fuel"', add
label define hu01a_ind_lbl 24 `"Manufacture of chemicals"', add
label define hu01a_ind_lbl 25 `"Manufacture of rubber and plastic products"', add
label define hu01a_ind_lbl 26 `"Manufacture of other non-metallic mineral products"', add
label define hu01a_ind_lbl 27 `"Manufacture of basic metals"', add
label define hu01a_ind_lbl 28 `"Manufacture of fabricated metal products, except machinery"', add
label define hu01a_ind_lbl 29 `"Manufacture of machinery and equipment, nec"', add
label define hu01a_ind_lbl 30 `"Manufacture of office machinery"', add
label define hu01a_ind_lbl 31 `"Manufacture of electrical machinery, nec"', add
label define hu01a_ind_lbl 32 `"Manufacture of communication equipment"', add
label define hu01a_ind_lbl 33 `"Manufacture of medical, precision instruments, watches"', add
label define hu01a_ind_lbl 34 `"Manufacture of motor vehicles and trailers"', add
label define hu01a_ind_lbl 35 `"Manufacture of other transport equipment"', add
label define hu01a_ind_lbl 36 `"Manufacture of furniture, nec"', add
label define hu01a_ind_lbl 37 `"Recycling"', add
label define hu01a_ind_lbl 40 `"Electricity, gas, steam, hot-water supply"', add
label define hu01a_ind_lbl 41 `"Collection, purification, distribution of water"', add
label define hu01a_ind_lbl 45 `"Construction"', add
label define hu01a_ind_lbl 50 `"Sale and maintenance of motor vehicles"', add
label define hu01a_ind_lbl 51 `"Wholesale and commission trade, except motor vehicles"', add
label define hu01a_ind_lbl 52 `"Retail trade, except motor vehicles and repair of household goods"', add
label define hu01a_ind_lbl 55 `"Hotels and restaurants"', add
label define hu01a_ind_lbl 60 `"Land transport, pipelines"', add
label define hu01a_ind_lbl 61 `"Water transport"', add
label define hu01a_ind_lbl 62 `"Air transport"', add
label define hu01a_ind_lbl 63 `"Supporting transport activities; travel agents"', add
label define hu01a_ind_lbl 64 `"Post and telecommunications"', add
label define hu01a_ind_lbl 65 `"Financial intermediation, except insurance and pensions"', add
label define hu01a_ind_lbl 66 `"Insurance and pension funding, except social security"', add
label define hu01a_ind_lbl 67 `"Activities auxiliary to financial intermediation"', add
label define hu01a_ind_lbl 70 `"Real estate activities"', add
label define hu01a_ind_lbl 71 `"Renting of machinery and equipment"', add
label define hu01a_ind_lbl 72 `"Computer and related activities"', add
label define hu01a_ind_lbl 73 `"Research and development"', add
label define hu01a_ind_lbl 74 `"Other business activities"', add
label define hu01a_ind_lbl 75 `"Public administration and defense"', add
label define hu01a_ind_lbl 80 `"Education"', add
label define hu01a_ind_lbl 85 `"Health and social work"', add
label define hu01a_ind_lbl 90 `"Sewage and refuse disposal"', add
label define hu01a_ind_lbl 91 `"Activities and membership organizations, nec"', add
label define hu01a_ind_lbl 92 `"Recreational, cultural and sporting activities"', add
label define hu01a_ind_lbl 93 `"Other service activities"', add
label define hu01a_ind_lbl 95 `"Private households with employed persons"', add
label define hu01a_ind_lbl 99 `"Extra-territorial organizations and bodies"', add
label values hu01a_ind hu01a_ind_lbl

label define hu01a_empsz_lbl 1 `"Less than 10"'
label define hu01a_empsz_lbl 2 `"10 to 19"', add
label define hu01a_empsz_lbl 3 `"20 or more"', add
label define hu01a_empsz_lbl 4 `"Did not know"', add
label define hu01a_empsz_lbl 9 `"NIU (not in universe)"', add
label values hu01a_empsz hu01a_empsz_lbl

label define hu01a_seekjob_lbl 1 `"Yes"'
label define hu01a_seekjob_lbl 2 `"No, because of no chance to find appropriate job"', add
label define hu01a_seekjob_lbl 3 `"No, because of any other reason"', add
label define hu01a_seekjob_lbl 9 `"NIU (not in universe)"', add
label values hu01a_seekjob hu01a_seekjob_lbl

label define hu01a_seekdur_lbl 000 `"Less than one month"'
label define hu01a_seekdur_lbl 001 `"1"', add
label define hu01a_seekdur_lbl 002 `"2"', add
label define hu01a_seekdur_lbl 003 `"3"', add
label define hu01a_seekdur_lbl 004 `"4"', add
label define hu01a_seekdur_lbl 005 `"5"', add
label define hu01a_seekdur_lbl 006 `"6"', add
label define hu01a_seekdur_lbl 007 `"7"', add
label define hu01a_seekdur_lbl 008 `"8"', add
label define hu01a_seekdur_lbl 009 `"9"', add
label define hu01a_seekdur_lbl 010 `"10"', add
label define hu01a_seekdur_lbl 011 `"11"', add
label define hu01a_seekdur_lbl 012 `"12"', add
label define hu01a_seekdur_lbl 013 `"13"', add
label define hu01a_seekdur_lbl 014 `"14"', add
label define hu01a_seekdur_lbl 015 `"15"', add
label define hu01a_seekdur_lbl 016 `"16"', add
label define hu01a_seekdur_lbl 017 `"17"', add
label define hu01a_seekdur_lbl 018 `"18"', add
label define hu01a_seekdur_lbl 019 `"19"', add
label define hu01a_seekdur_lbl 020 `"20"', add
label define hu01a_seekdur_lbl 021 `"21"', add
label define hu01a_seekdur_lbl 022 `"22"', add
label define hu01a_seekdur_lbl 023 `"23"', add
label define hu01a_seekdur_lbl 024 `"24"', add
label define hu01a_seekdur_lbl 025 `"25"', add
label define hu01a_seekdur_lbl 026 `"26"', add
label define hu01a_seekdur_lbl 027 `"27"', add
label define hu01a_seekdur_lbl 028 `"28"', add
label define hu01a_seekdur_lbl 029 `"29"', add
label define hu01a_seekdur_lbl 030 `"30"', add
label define hu01a_seekdur_lbl 031 `"31"', add
label define hu01a_seekdur_lbl 032 `"32"', add
label define hu01a_seekdur_lbl 033 `"33"', add
label define hu01a_seekdur_lbl 034 `"34"', add
label define hu01a_seekdur_lbl 035 `"35"', add
label define hu01a_seekdur_lbl 036 `"36"', add
label define hu01a_seekdur_lbl 037 `"37"', add
label define hu01a_seekdur_lbl 038 `"38"', add
label define hu01a_seekdur_lbl 039 `"39"', add
label define hu01a_seekdur_lbl 040 `"40"', add
label define hu01a_seekdur_lbl 042 `"42"', add
label define hu01a_seekdur_lbl 043 `"43"', add
label define hu01a_seekdur_lbl 044 `"44"', add
label define hu01a_seekdur_lbl 045 `"45"', add
label define hu01a_seekdur_lbl 046 `"46"', add
label define hu01a_seekdur_lbl 047 `"47"', add
label define hu01a_seekdur_lbl 048 `"48"', add
label define hu01a_seekdur_lbl 049 `"49"', add
label define hu01a_seekdur_lbl 050 `"50"', add
label define hu01a_seekdur_lbl 051 `"51"', add
label define hu01a_seekdur_lbl 052 `"52"', add
label define hu01a_seekdur_lbl 053 `"53"', add
label define hu01a_seekdur_lbl 054 `"54"', add
label define hu01a_seekdur_lbl 055 `"55"', add
label define hu01a_seekdur_lbl 056 `"56"', add
label define hu01a_seekdur_lbl 057 `"57"', add
label define hu01a_seekdur_lbl 058 `"58"', add
label define hu01a_seekdur_lbl 059 `"59"', add
label define hu01a_seekdur_lbl 060 `"60"', add
label define hu01a_seekdur_lbl 061 `"61"', add
label define hu01a_seekdur_lbl 062 `"62"', add
label define hu01a_seekdur_lbl 063 `"63"', add
label define hu01a_seekdur_lbl 064 `"64"', add
label define hu01a_seekdur_lbl 065 `"65"', add
label define hu01a_seekdur_lbl 066 `"66"', add
label define hu01a_seekdur_lbl 068 `"68"', add
label define hu01a_seekdur_lbl 070 `"70"', add
label define hu01a_seekdur_lbl 072 `"72"', add
label define hu01a_seekdur_lbl 073 `"73"', add
label define hu01a_seekdur_lbl 074 `"74"', add
label define hu01a_seekdur_lbl 075 `"75"', add
label define hu01a_seekdur_lbl 080 `"80"', add
label define hu01a_seekdur_lbl 082 `"82"', add
label define hu01a_seekdur_lbl 084 `"84"', add
label define hu01a_seekdur_lbl 085 `"85"', add
label define hu01a_seekdur_lbl 086 `"86"', add
label define hu01a_seekdur_lbl 087 `"87"', add
label define hu01a_seekdur_lbl 090 `"90"', add
label define hu01a_seekdur_lbl 092 `"92"', add
label define hu01a_seekdur_lbl 094 `"94"', add
label define hu01a_seekdur_lbl 095 `"95"', add
label define hu01a_seekdur_lbl 096 `"96"', add
label define hu01a_seekdur_lbl 097 `"97"', add
label define hu01a_seekdur_lbl 098 `"98"', add
label define hu01a_seekdur_lbl 099 `"99 or more"', add
label define hu01a_seekdur_lbl 998 `"Unknown"', add
label define hu01a_seekdur_lbl 999 `"NIU (not in universe)"', add
label values hu01a_seekdur hu01a_seekdur_lbl

label define hu01a_jobendyr_lbl 0000 `"Never worked"'
label define hu01a_jobendyr_lbl 1900 `"1900"', add
label define hu01a_jobendyr_lbl 1901 `"1901"', add
label define hu01a_jobendyr_lbl 1902 `"1902"', add
label define hu01a_jobendyr_lbl 1903 `"1903"', add
label define hu01a_jobendyr_lbl 1904 `"1904"', add
label define hu01a_jobendyr_lbl 1905 `"1905"', add
label define hu01a_jobendyr_lbl 1906 `"1906"', add
label define hu01a_jobendyr_lbl 1907 `"1907"', add
label define hu01a_jobendyr_lbl 1908 `"1908"', add
label define hu01a_jobendyr_lbl 1909 `"1909"', add
label define hu01a_jobendyr_lbl 1910 `"1910"', add
label define hu01a_jobendyr_lbl 1911 `"1911"', add
label define hu01a_jobendyr_lbl 1913 `"1913"', add
label define hu01a_jobendyr_lbl 1915 `"1915"', add
label define hu01a_jobendyr_lbl 1919 `"1919"', add
label define hu01a_jobendyr_lbl 1920 `"1920"', add
label define hu01a_jobendyr_lbl 1921 `"1921"', add
label define hu01a_jobendyr_lbl 1922 `"1922"', add
label define hu01a_jobendyr_lbl 1923 `"1923"', add
label define hu01a_jobendyr_lbl 1924 `"1924"', add
label define hu01a_jobendyr_lbl 1925 `"1925"', add
label define hu01a_jobendyr_lbl 1926 `"1926"', add
label define hu01a_jobendyr_lbl 1927 `"1927"', add
label define hu01a_jobendyr_lbl 1928 `"1928"', add
label define hu01a_jobendyr_lbl 1929 `"1929"', add
label define hu01a_jobendyr_lbl 1930 `"1930"', add
label define hu01a_jobendyr_lbl 1931 `"1931"', add
label define hu01a_jobendyr_lbl 1932 `"1932"', add
label define hu01a_jobendyr_lbl 1933 `"1933"', add
label define hu01a_jobendyr_lbl 1934 `"1934"', add
label define hu01a_jobendyr_lbl 1935 `"1935"', add
label define hu01a_jobendyr_lbl 1936 `"1936"', add
label define hu01a_jobendyr_lbl 1937 `"1937"', add
label define hu01a_jobendyr_lbl 1938 `"1938"', add
label define hu01a_jobendyr_lbl 1939 `"1939"', add
label define hu01a_jobendyr_lbl 1940 `"1940"', add
label define hu01a_jobendyr_lbl 1941 `"1941"', add
label define hu01a_jobendyr_lbl 1942 `"1942"', add
label define hu01a_jobendyr_lbl 1943 `"1943"', add
label define hu01a_jobendyr_lbl 1944 `"1944"', add
label define hu01a_jobendyr_lbl 1945 `"1945"', add
label define hu01a_jobendyr_lbl 1946 `"1946"', add
label define hu01a_jobendyr_lbl 1947 `"1947"', add
label define hu01a_jobendyr_lbl 1948 `"1948"', add
label define hu01a_jobendyr_lbl 1949 `"1949"', add
label define hu01a_jobendyr_lbl 1950 `"1950"', add
label define hu01a_jobendyr_lbl 1951 `"1951"', add
label define hu01a_jobendyr_lbl 1952 `"1952"', add
label define hu01a_jobendyr_lbl 1953 `"1953"', add
label define hu01a_jobendyr_lbl 1954 `"1954"', add
label define hu01a_jobendyr_lbl 1955 `"1955"', add
label define hu01a_jobendyr_lbl 1956 `"1956"', add
label define hu01a_jobendyr_lbl 1957 `"1957"', add
label define hu01a_jobendyr_lbl 1958 `"1958"', add
label define hu01a_jobendyr_lbl 1959 `"1959"', add
label define hu01a_jobendyr_lbl 1960 `"1960"', add
label define hu01a_jobendyr_lbl 1961 `"1961"', add
label define hu01a_jobendyr_lbl 1962 `"1962"', add
label define hu01a_jobendyr_lbl 1963 `"1963"', add
label define hu01a_jobendyr_lbl 1964 `"1964"', add
label define hu01a_jobendyr_lbl 1965 `"1965"', add
label define hu01a_jobendyr_lbl 1966 `"1966"', add
label define hu01a_jobendyr_lbl 1967 `"1967"', add
label define hu01a_jobendyr_lbl 1968 `"1968"', add
label define hu01a_jobendyr_lbl 1969 `"1969"', add
label define hu01a_jobendyr_lbl 1970 `"1970"', add
label define hu01a_jobendyr_lbl 1971 `"1971"', add
label define hu01a_jobendyr_lbl 1972 `"1972"', add
label define hu01a_jobendyr_lbl 1973 `"1973"', add
label define hu01a_jobendyr_lbl 1974 `"1974"', add
label define hu01a_jobendyr_lbl 1975 `"1975"', add
label define hu01a_jobendyr_lbl 1976 `"1976"', add
label define hu01a_jobendyr_lbl 1977 `"1977"', add
label define hu01a_jobendyr_lbl 1978 `"1978"', add
label define hu01a_jobendyr_lbl 1979 `"1979"', add
label define hu01a_jobendyr_lbl 1980 `"1980"', add
label define hu01a_jobendyr_lbl 1981 `"1981"', add
label define hu01a_jobendyr_lbl 1982 `"1982"', add
label define hu01a_jobendyr_lbl 1983 `"1983"', add
label define hu01a_jobendyr_lbl 1984 `"1984"', add
label define hu01a_jobendyr_lbl 1985 `"1985"', add
label define hu01a_jobendyr_lbl 1986 `"1986"', add
label define hu01a_jobendyr_lbl 1987 `"1987"', add
label define hu01a_jobendyr_lbl 1988 `"1988"', add
label define hu01a_jobendyr_lbl 1989 `"1989"', add
label define hu01a_jobendyr_lbl 1990 `"1990"', add
label define hu01a_jobendyr_lbl 1991 `"1991"', add
label define hu01a_jobendyr_lbl 1992 `"1992"', add
label define hu01a_jobendyr_lbl 1993 `"1993"', add
label define hu01a_jobendyr_lbl 1994 `"1994"', add
label define hu01a_jobendyr_lbl 1995 `"1995"', add
label define hu01a_jobendyr_lbl 1996 `"1996"', add
label define hu01a_jobendyr_lbl 1997 `"1997"', add
label define hu01a_jobendyr_lbl 1998 `"1998"', add
label define hu01a_jobendyr_lbl 1999 `"1999"', add
label define hu01a_jobendyr_lbl 2000 `"2000"', add
label define hu01a_jobendyr_lbl 2001 `"2001"', add
label define hu01a_jobendyr_lbl 9998 `"Unknown"', add
label define hu01a_jobendyr_lbl 9999 `"NIU (not in universe)"', add
label values hu01a_jobendyr hu01a_jobendyr_lbl

label define hu01a_commw_lbl 1 `"No"'
label define hu01a_commw_lbl 2 `"Yes"', add
label values hu01a_commw hu01a_commw_lbl

label define hu01a_comms_lbl 1 `"No"'
label define hu01a_comms_lbl 2 `"Yes"', add
label values hu01a_comms hu01a_comms_lbl

label define hu01a_commdurw_lbl 0 `"NIU (not in universe)"'
label define hu01a_commdurw_lbl 1 `"Less than 30 minutes"', add
label define hu01a_commdurw_lbl 2 `"31-60 minutes"', add
label define hu01a_commdurw_lbl 3 `"61-90 minutes"', add
label define hu01a_commdurw_lbl 4 `"91-120 minutes"', add
label define hu01a_commdurw_lbl 5 `"More than 2 hours"', add
label define hu01a_commdurw_lbl 9 `"Unknown"', add
label values hu01a_commdurw hu01a_commdurw_lbl

label define hu01a_commdurs_lbl 0 `"NIU (not in universe)"'
label define hu01a_commdurs_lbl 1 `"Less than 30 minutes"', add
label define hu01a_commdurs_lbl 2 `"31-60 minutes"', add
label define hu01a_commdurs_lbl 3 `"61-90 minutes"', add
label define hu01a_commdurs_lbl 4 `"91-120 minutes"', add
label define hu01a_commdurs_lbl 5 `"More than 2 hours"', add
label define hu01a_commdurs_lbl 9 `"Unknown"', add
label values hu01a_commdurs hu01a_commdurs_lbl

label define hu01a_commloc_lbl 1 `"Working in the locality of residence"'
label define hu01a_commloc_lbl 2 `"Studying in the locality of residence"', add
label define hu01a_commloc_lbl 3 `"Neither working nor studying in locality of residence"', add
label values hu01a_commloc hu01a_commloc_lbl

label define hu01a_relate_lbl 1 `"Head"'
label define hu01a_relate_lbl 2 `"Husband, wife"', add
label define hu01a_relate_lbl 3 `"Consensual (cohabiting) partner"', add
label define hu01a_relate_lbl 4 `"Father, mother"', add
label define hu01a_relate_lbl 5 `"Child"', add
label define hu01a_relate_lbl 6 `"Other"', add
label define hu01a_relate_lbl 8 `"Person living alone"', add
label define hu01a_relate_lbl 9 `"Unknown: person not in the first family within the household"', add
label values hu01a_relate hu01a_relate_lbl

label define hu01a_famnum_lbl 01 `"1"'
label define hu01a_famnum_lbl 02 `"2"', add
label define hu01a_famnum_lbl 03 `"3"', add
label define hu01a_famnum_lbl 04 `"4"', add
label define hu01a_famnum_lbl 05 `"5"', add
label define hu01a_famnum_lbl 06 `"6"', add
label define hu01a_famnum_lbl 07 `"7"', add
label define hu01a_famnum_lbl 08 `"8"', add
label define hu01a_famnum_lbl 09 `"9"', add
label define hu01a_famnum_lbl 10 `"10"', add
label values hu01a_famnum hu01a_famnum_lbl


