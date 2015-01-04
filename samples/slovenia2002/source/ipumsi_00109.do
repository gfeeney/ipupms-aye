* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    si02a_dwnum     22-26    ///
  byte    si02a_pern      27-27    ///
  byte    si02a_region    28-29    ///
  byte    si02a_sizsettl  30-30    ///
  byte    si02a_urban     31-31    ///
  byte    si02a_owner     32-32    ///
  byte    si02a_hsgtype   33-33    ///
  byte    si02a_rooms     34-34    ///
  byte    si02a_space     35-35    ///
  byte    si02a_water     36-36    ///
  byte    si02a_sewage    37-37    ///
  byte    si02a_toilet    38-38    ///
  byte    si02a_bathroom  39-39    ///
  byte    si02a_gas       40-40    ///
  byte    si02a_phone     41-41    ///
  byte    si02a_cable     42-42    ///
  byte    si02a_heat      43-43    ///
  byte    si02a_fuelh     44-44    ///
  byte    si02a_bldty1    45-45    ///
  byte    si02a_bldty2    46-46    ///
  byte    si02a_bldyr     47-47    ///
  byte    si02a_numdwl    48-48    ///
  int     pernum          49-51    ///
  float   wtper           52-59    ///
  byte    si02a_pernum    60-60    ///
  byte    si02a_regionp   61-62    ///
  byte    si02a_areasizp  63-63    ///
  byte    si02a_bplind    64-64    ///
  byte    si02a_bpl       65-66    ///
  byte    si02a_bplctry   67-67    ///
  byte    si02a_immigyr   68-68    ///
  byte    si02a_resprt    69-69    ///
  byte    si02a_resprr    70-71    ///
  byte    si02a_resprc    72-72    ///
  byte    si02a_resdur    73-73    ///
  byte    si02a_res1yr    74-74    ///
  byte    si02a_relate    75-75    ///
  byte    si02a_relatef   76-76    ///
  byte    si02a_whyabs    77-77    ///
  byte    si02a_sex       78-78    ///
  byte    si02a_age       79-80    ///
  byte    si02a_marst     81-81    ///
  byte    si02a_citiz     82-82    ///
  byte    si02a_chborn    83-83    ///
  byte    si02a_school    84-84    ///
  byte    si02a_schloc    85-85    ///
  byte    si02a_stravm    86-86    ///
  byte    si02a_stravd    87-87    ///
  byte    si02a_edattan   88-88    ///
  byte    si02a_field     89-90    ///
  byte    si02a_empstat   91-91    ///
  byte    si02a_occ       92-93    ///
  byte    si02a_ind       94-95    ///
  byte    si02a_depend    96-96    ///
  byte    si02a_tenure    97-97    ///
  byte    si02a_workloc   98-98    ///
  byte    si02a_wtravf    99-99    ///
  byte    si02a_wtravm    100-100  ///
  byte    si02a_wtravd    101-101  ///
  using `"ipumsi_00109.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var si02a_dwnum    `"Dwelling number"'
label var si02a_pern     `"Number of persons in household"'
label var si02a_region   `"Region"'
label var si02a_sizsettl `"Size of settlement"'
label var si02a_urban    `"Rural/urban areas"'
label var si02a_owner    `"Ownership of dwelling"'
label var si02a_hsgtype  `"Type of housing unit"'
label var si02a_rooms    `"Number of rooms"'
label var si02a_space    `"Useful floor space"'
label var si02a_water    `"Piped water supply"'
label var si02a_sewage   `"Sewage system"'
label var si02a_toilet   `"Toilet in the dwelling"'
label var si02a_bathroom `"Bathroom in the dwelling"'
label var si02a_gas      `"Piped gas supply"'
label var si02a_phone    `"Connection to telephone network"'
label var si02a_cable    `"Connection to cable TV network"'
label var si02a_heat     `"Type of heating"'
label var si02a_fuelh    `"Main source of heating"'
label var si02a_bldty1   `"Type of building with regard to construction"'
label var si02a_bldty2   `"Type of building with regard to use"'
label var si02a_bldyr    `"Year of construction of the building"'
label var si02a_numdwl   `"Number of dwellings in the building"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var si02a_pernum   `"Person number (within household)"'
label var si02a_regionp  `"Region of usual residence"'
label var si02a_areasizp `"Size of settlement"'
label var si02a_bplind   `"Place of birth - indicator"'
label var si02a_bpl      `"Region of birth"'
label var si02a_bplctry  `"Country of birth"'
label var si02a_immigyr  `"Year or period of arrival"'
label var si02a_resprt   `"Place of previous residence - type"'
label var si02a_resprr   `"Region of previous residence"'
label var si02a_resprc   `"Country of previous residence"'
label var si02a_resdur   `"Duration of residence"'
label var si02a_res1yr   `"Place of residence one year ago"'
label var si02a_relate   `"Relationship to reference person of household"'
label var si02a_relatef  `"Position of the person in the family"'
label var si02a_whyabs   `"Reason for absence from the household"'
label var si02a_sex      `"Sex"'
label var si02a_age      `"Age"'
label var si02a_marst    `"Legal marital status"'
label var si02a_citiz    `"Citizenship"'
label var si02a_chborn   `"Number of children born alive"'
label var si02a_school   `"Level of current school attendance"'
label var si02a_schloc   `"Location of current school attended"'
label var si02a_stravm   `"Travel mode to school"'
label var si02a_stravd   `"Travel duration to school"'
label var si02a_edattan  `"Educational attainment"'
label var si02a_field    `"Field of educational qualification"'
label var si02a_empstat  `"Economic activity status"'
label var si02a_occ      `"Occupation"'
label var si02a_ind      `"Industry"'
label var si02a_depend   `"Dependency relationship"'
label var si02a_tenure   `"Tenure status of residence"'
label var si02a_workloc  `"Place of work"'
label var si02a_wtravf   `"Frequency of journey to work"'
label var si02a_wtravm   `"Mode of transport to work"'
label var si02a_wtravd   `"Length of journey to work"'

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

label define si02a_pern_lbl 1 `"1"'
label define si02a_pern_lbl 2 `"2"', add
label define si02a_pern_lbl 3 `"3"', add
label define si02a_pern_lbl 4 `"4"', add
label define si02a_pern_lbl 5 `"5"', add
label define si02a_pern_lbl 6 `"6"', add
label values si02a_pern si02a_pern_lbl

label define si02a_region_lbl 01 `"Pomurska"'
label define si02a_region_lbl 02 `"Podravska"', add
label define si02a_region_lbl 03 `"Koroska"', add
label define si02a_region_lbl 04 `"Savinjska"', add
label define si02a_region_lbl 05 `"Zasavska"', add
label define si02a_region_lbl 06 `"Spodnjeposavska"', add
label define si02a_region_lbl 07 `"Jugovzhodna Slovenija"', add
label define si02a_region_lbl 08 `"Osrednjeslovenska"', add
label define si02a_region_lbl 09 `"Gorenjska"', add
label define si02a_region_lbl 10 `"Notranjsko-kraska"', add
label define si02a_region_lbl 11 `"Goriska"', add
label define si02a_region_lbl 12 `"Obalno-kraska"', add
label define si02a_region_lbl 99 `"Unknown"', add
label values si02a_region si02a_region_lbl

label define si02a_sizsettl_lbl 1 `"1 - 499"'
label define si02a_sizsettl_lbl 2 `"500 - 3000"', add
label define si02a_sizsettl_lbl 3 `"3001 and more"', add
label define si02a_sizsettl_lbl 9 `"Unknown"', add
label values si02a_sizsettl si02a_sizsettl_lbl

label define si02a_urban_lbl 1 `"Urban areas"'
label define si02a_urban_lbl 2 `"Rural areas"', add
label values si02a_urban si02a_urban_lbl

label define si02a_owner_lbl 1 `"Private property of natural persons"'
label define si02a_owner_lbl 2 `"Property of public sectors (state, public funds)"', add
label define si02a_owner_lbl 3 `"Other type of ownership"', add
label define si02a_owner_lbl 9 `"Unknown"', add
label values si02a_owner si02a_owner_lbl

label define si02a_hsgtype_lbl 1 `"One dwelling house"'
label define si02a_hsgtype_lbl 2 `"Dwelling in an individual house or in multi-stored building"', add
label define si02a_hsgtype_lbl 3 `"Non-conventional housing unit"', add
label values si02a_hsgtype si02a_hsgtype_lbl

label define si02a_rooms_lbl 1 `"One room"'
label define si02a_rooms_lbl 2 `"Two rooms"', add
label define si02a_rooms_lbl 3 `"Three rooms"', add
label define si02a_rooms_lbl 4 `"Four rooms"', add
label define si02a_rooms_lbl 5 `"Five rooms"', add
label define si02a_rooms_lbl 6 `"Six rooms or more"', add
label define si02a_rooms_lbl 9 `"Unknown"', add
label values si02a_rooms si02a_rooms_lbl

label define si02a_space_lbl 1 `"20 or less"'
label define si02a_space_lbl 2 `"21 - 40"', add
label define si02a_space_lbl 3 `"41 - 60"', add
label define si02a_space_lbl 4 `"61 - 80"', add
label define si02a_space_lbl 5 `"81 - 100"', add
label define si02a_space_lbl 6 `"101 or more"', add
label define si02a_space_lbl 9 `"Unknown"', add
label values si02a_space si02a_space_lbl

label define si02a_water_lbl 1 `"Water supply network"'
label define si02a_water_lbl 2 `"Individual supply facilities"', add
label define si02a_water_lbl 3 `"No piped water supply"', add
label define si02a_water_lbl 9 `"Unknown"', add
label values si02a_water si02a_water_lbl

label define si02a_sewage_lbl 1 `"Sewage network"'
label define si02a_sewage_lbl 2 `"Septic tank"', add
label define si02a_sewage_lbl 3 `"No sewage system"', add
label values si02a_sewage si02a_sewage_lbl

label define si02a_toilet_lbl 1 `"Flush toilet"'
label define si02a_toilet_lbl 2 `"Non-flush toilet"', add
label define si02a_toilet_lbl 3 `"No toilet in the dwelling"', add
label values si02a_toilet si02a_toilet_lbl

label define si02a_bathroom_lbl 1 `"Yes"'
label define si02a_bathroom_lbl 2 `"No"', add
label values si02a_bathroom si02a_bathroom_lbl

label define si02a_gas_lbl 1 `"Yes"'
label define si02a_gas_lbl 2 `"No"', add
label values si02a_gas si02a_gas_lbl

label define si02a_phone_lbl 1 `"Yes"'
label define si02a_phone_lbl 2 `"No"', add
label values si02a_phone si02a_phone_lbl

label define si02a_cable_lbl 1 `"Yes"'
label define si02a_cable_lbl 2 `"No"', add
label values si02a_cable si02a_cable_lbl

label define si02a_heat_lbl 1 `"District heating"'
label define si02a_heat_lbl 2 `"Central heating device"', add
label define si02a_heat_lbl 3 `"No central heating but heated by various stoves and fireplaces"', add
label define si02a_heat_lbl 4 `"Not heated in the last season"', add
label define si02a_heat_lbl 9 `"Unknown"', add
label values si02a_heat si02a_heat_lbl

label define si02a_fuelh_lbl 1 `"Coal or wood"'
label define si02a_fuelh_lbl 2 `"Fuel oil"', add
label define si02a_fuelh_lbl 3 `"Gas"', add
label define si02a_fuelh_lbl 4 `"Other sources"', add
label define si02a_fuelh_lbl 9 `"NIU (not in universe)"', add
label values si02a_fuelh si02a_fuelh_lbl

label define si02a_bldty1_lbl 1 `"Individual house"'
label define si02a_bldty1_lbl 2 `"Multi-dwelling building"', add
label define si02a_bldty1_lbl 3 `"Other type of building or confidentiality"', add
label values si02a_bldty1 si02a_bldty1_lbl

label define si02a_bldty2_lbl 1 `"Residential only"'
label define si02a_bldty2_lbl 2 `"Mostly residential"', add
label define si02a_bldty2_lbl 3 `"Mostly non-residential"', add
label define si02a_bldty2_lbl 9 `"Unknown"', add
label values si02a_bldty2 si02a_bldty2_lbl

label define si02a_bldyr_lbl 1 `"1900 or before"'
label define si02a_bldyr_lbl 2 `"1901 - 1930"', add
label define si02a_bldyr_lbl 3 `"1931 - 1945"', add
label define si02a_bldyr_lbl 4 `"1946 - 1960"', add
label define si02a_bldyr_lbl 5 `"1961 - 1970"', add
label define si02a_bldyr_lbl 6 `"1971 - 1980"', add
label define si02a_bldyr_lbl 7 `"1981 - 1990"', add
label define si02a_bldyr_lbl 8 `"1991 or later"', add
label values si02a_bldyr si02a_bldyr_lbl

label define si02a_numdwl_lbl 1 `"One dwelling only"'
label define si02a_numdwl_lbl 2 `"Two dwellings"', add
label define si02a_numdwl_lbl 3 `"Three to five dwellings"', add
label define si02a_numdwl_lbl 4 `"Six to fifteen dwellings"', add
label define si02a_numdwl_lbl 5 `"Sixteen dwellings or more"', add
label values si02a_numdwl si02a_numdwl_lbl

label define si02a_pernum_lbl 0 `"Household record"'
label define si02a_pernum_lbl 1 `"1"', add
label define si02a_pernum_lbl 2 `"2"', add
label define si02a_pernum_lbl 3 `"3"', add
label define si02a_pernum_lbl 4 `"4"', add
label define si02a_pernum_lbl 5 `"5"', add
label define si02a_pernum_lbl 6 `"6"', add
label values si02a_pernum si02a_pernum_lbl

label define si02a_regionp_lbl 01 `"Pomurska"'
label define si02a_regionp_lbl 02 `"Podravska"', add
label define si02a_regionp_lbl 03 `"Koroska"', add
label define si02a_regionp_lbl 04 `"Savinjska"', add
label define si02a_regionp_lbl 05 `"Zasavska"', add
label define si02a_regionp_lbl 06 `"Spodnjeposavska"', add
label define si02a_regionp_lbl 07 `"Jugovzhodna Slovenija"', add
label define si02a_regionp_lbl 08 `"Osrednjeslovenska"', add
label define si02a_regionp_lbl 09 `"Gorenjska"', add
label define si02a_regionp_lbl 10 `"Notranjsko-kraska"', add
label define si02a_regionp_lbl 11 `"Goriska"', add
label define si02a_regionp_lbl 12 `"Obalno-kraska"', add
label define si02a_regionp_lbl 99 `"Unknown"', add
label values si02a_regionp si02a_regionp_lbl

label define si02a_areasizp_lbl 1 `"1 - 499"'
label define si02a_areasizp_lbl 2 `"500 - 3000"', add
label define si02a_areasizp_lbl 3 `"3001 and more"', add
label define si02a_areasizp_lbl 9 `"Unknown"', add
label values si02a_areasizp si02a_areasizp_lbl

label define si02a_bplind_lbl 1 `"The same as usual residence as of 31 March 2002"'
label define si02a_bplind_lbl 2 `"Another place in Slovenia"', add
label define si02a_bplind_lbl 3 `"Abroad"', add
label values si02a_bplind si02a_bplind_lbl

label define si02a_bpl_lbl 01 `"Pomurska"'
label define si02a_bpl_lbl 02 `"Podravska"', add
label define si02a_bpl_lbl 03 `"Koroska"', add
label define si02a_bpl_lbl 04 `"Savinjska"', add
label define si02a_bpl_lbl 05 `"Zasavska"', add
label define si02a_bpl_lbl 06 `"Spodnjeposavska"', add
label define si02a_bpl_lbl 07 `"Jugovzhodna Slovenija"', add
label define si02a_bpl_lbl 08 `"Osrednjeslovenska"', add
label define si02a_bpl_lbl 09 `"Gorenjska"', add
label define si02a_bpl_lbl 10 `"Notranjsko-kraska"', add
label define si02a_bpl_lbl 11 `"Goriska"', add
label define si02a_bpl_lbl 12 `"Obalno-kraska"', add
label define si02a_bpl_lbl 99 `"NIU (not in universe)"', add
label values si02a_bpl si02a_bpl_lbl

label define si02a_bplctry_lbl 1 `"Austria"'
label define si02a_bplctry_lbl 2 `"Bosnia and Herzegovina"', add
label define si02a_bplctry_lbl 3 `"Croatia"', add
label define si02a_bplctry_lbl 4 `"Germany"', add
label define si02a_bplctry_lbl 5 `"Italy"', add
label define si02a_bplctry_lbl 6 `"Former Yugoslav Republic of Macedonia (FYROM)"', add
label define si02a_bplctry_lbl 7 `"Yugoslavia"', add
label define si02a_bplctry_lbl 8 `"Other countries"', add
label define si02a_bplctry_lbl 9 `"NIU (not in universe)"', add
label values si02a_bplctry si02a_bplctry_lbl

label define si02a_immigyr_lbl 1 `"1945 or before"'
label define si02a_immigyr_lbl 2 `"1946-1960"', add
label define si02a_immigyr_lbl 3 `"1961-1970"', add
label define si02a_immigyr_lbl 4 `"1971-1980"', add
label define si02a_immigyr_lbl 5 `"1981-1990"', add
label define si02a_immigyr_lbl 6 `"1991-1994"', add
label define si02a_immigyr_lbl 7 `"1995-1998"', add
label define si02a_immigyr_lbl 8 `"1999-2001"', add
label define si02a_immigyr_lbl 9 `"NIU (not in universe)"', add
label values si02a_immigyr si02a_immigyr_lbl

label define si02a_resprt_lbl 1 `"Lived in the same settlement since birth"'
label define si02a_resprt_lbl 2 `"Migration from another settlement of the same municipality"', add
label define si02a_resprt_lbl 3 `"Migration from another municipality of the same statistical region"', add
label define si02a_resprt_lbl 4 `"Migration from another statistical region"', add
label define si02a_resprt_lbl 5 `"Migration from abroad"', add
label values si02a_resprt si02a_resprt_lbl

label define si02a_resprr_lbl 01 `"Pomurska"'
label define si02a_resprr_lbl 02 `"Podravska"', add
label define si02a_resprr_lbl 03 `"Koroska"', add
label define si02a_resprr_lbl 04 `"Savinjska"', add
label define si02a_resprr_lbl 05 `"Zasavska"', add
label define si02a_resprr_lbl 06 `"Spodnjeposavska"', add
label define si02a_resprr_lbl 07 `"Jugovzhodna Slovenija"', add
label define si02a_resprr_lbl 08 `"Osrednjeslovenska"', add
label define si02a_resprr_lbl 09 `"Gorenjska"', add
label define si02a_resprr_lbl 10 `"Notranjsko-kraska"', add
label define si02a_resprr_lbl 11 `"Goriska"', add
label define si02a_resprr_lbl 12 `"Obalno-kraska"', add
label define si02a_resprr_lbl 99 `"NIU (not in universe)"', add
label values si02a_resprr si02a_resprr_lbl

label define si02a_resprc_lbl 1 `"Austria"'
label define si02a_resprc_lbl 2 `"Bosnia and Herzegovina"', add
label define si02a_resprc_lbl 3 `"Croatia"', add
label define si02a_resprc_lbl 4 `"Germany"', add
label define si02a_resprc_lbl 5 `"Italy"', add
label define si02a_resprc_lbl 6 `"Former Yugoslav Republic of Macedonia (FYROM)"', add
label define si02a_resprc_lbl 7 `"Yugoslavia"', add
label define si02a_resprc_lbl 8 `"Other countries"', add
label define si02a_resprc_lbl 9 `"NIU (not in universe)"', add
label values si02a_resprc si02a_resprc_lbl

label define si02a_resdur_lbl 1 `"1945 or before"'
label define si02a_resdur_lbl 2 `"1946-1960"', add
label define si02a_resdur_lbl 3 `"1961-1970"', add
label define si02a_resdur_lbl 4 `"1971-1980"', add
label define si02a_resdur_lbl 5 `"1981-1990"', add
label define si02a_resdur_lbl 6 `"1991-1994"', add
label define si02a_resdur_lbl 7 `"1995-1998"', add
label define si02a_resdur_lbl 8 `"1999-2002"', add
label define si02a_resdur_lbl 9 `"NIU (not in universe)"', add
label values si02a_resdur si02a_resdur_lbl

label define si02a_res1yr_lbl 1 `"Lived at the same address or in the same settlement"'
label define si02a_res1yr_lbl 2 `"Lived in another settlement of the same municipality"', add
label define si02a_res1yr_lbl 3 `"Lived in another municipality of the same statistical region"', add
label define si02a_res1yr_lbl 4 `"Lived in another statistical region"', add
label define si02a_res1yr_lbl 6 `"Has not been born yet"', add
label values si02a_res1yr si02a_res1yr_lbl

label define si02a_relate_lbl 1 `"Reference person"'
label define si02a_relate_lbl 2 `"Spouse"', add
label define si02a_relate_lbl 3 `"Cohabiting partner"', add
label define si02a_relate_lbl 4 `"Child"', add
label define si02a_relate_lbl 5 `"Parents / In-laws"', add
label define si02a_relate_lbl 6 `"Other relative"', add
label define si02a_relate_lbl 7 `"Non-relative"', add
label values si02a_relate si02a_relate_lbl

label define si02a_relatef_lbl 1 `"Spouse"'
label define si02a_relatef_lbl 2 `"Lone parent"', add
label define si02a_relatef_lbl 3 `"Cohabiting partner"', add
label define si02a_relatef_lbl 4 `"Child living with married parents"', add
label define si02a_relatef_lbl 5 `"Child living with consensual union parents"', add
label define si02a_relatef_lbl 6 `"Child living with lone parent"', add
label define si02a_relatef_lbl 7 `"Living alone"', add
label define si02a_relatef_lbl 8 `"Non-family member of multi-person household"', add
label values si02a_relatef si02a_relatef_lbl

label define si02a_whyabs_lbl 1 `"Employment"'
label define si02a_whyabs_lbl 2 `"Education"', add
label define si02a_whyabs_lbl 3 `"Family or personal reasons"', add
label define si02a_whyabs_lbl 9 `"Not absent"', add
label values si02a_whyabs si02a_whyabs_lbl

label define si02a_sex_lbl 1 `"Male"'
label define si02a_sex_lbl 2 `"Female"', add
label define si02a_sex_lbl 9 `"Unknown"', add
label values si02a_sex si02a_sex_lbl

label define si02a_age_lbl 00 `"0-4 years"'
label define si02a_age_lbl 05 `"5-9 years"', add
label define si02a_age_lbl 10 `"10-14 years"', add
label define si02a_age_lbl 15 `"15-19 years"', add
label define si02a_age_lbl 20 `"20-24 years"', add
label define si02a_age_lbl 25 `"25-29 years"', add
label define si02a_age_lbl 30 `"30-34 years"', add
label define si02a_age_lbl 35 `"35-39 years"', add
label define si02a_age_lbl 40 `"40-44 years"', add
label define si02a_age_lbl 45 `"45-49 years"', add
label define si02a_age_lbl 50 `"50-54 years"', add
label define si02a_age_lbl 55 `"55-59 years"', add
label define si02a_age_lbl 60 `"60-64 years"', add
label define si02a_age_lbl 65 `"65-69 years"', add
label define si02a_age_lbl 70 `"70-74 years"', add
label define si02a_age_lbl 75 `"75-79 years"', add
label define si02a_age_lbl 80 `"80-84 years"', add
label define si02a_age_lbl 85 `"85 years or over"', add
label define si02a_age_lbl 99 `"Unknown"', add
label values si02a_age si02a_age_lbl

label define si02a_marst_lbl 1 `"Never married"'
label define si02a_marst_lbl 2 `"Married"', add
label define si02a_marst_lbl 3 `"Widowed and not remarried"', add
label define si02a_marst_lbl 4 `"Divorced and not remarried"', add
label values si02a_marst si02a_marst_lbl

label define si02a_citiz_lbl 1 `"Bosnia and Herzegovina"'
label define si02a_citiz_lbl 2 `"Croatia"', add
label define si02a_citiz_lbl 3 `"Slovenia"', add
label define si02a_citiz_lbl 4 `"Former Yugoslav Republic of Macedonia (FYROM)"', add
label define si02a_citiz_lbl 5 `"Yugoslavia"', add
label define si02a_citiz_lbl 9 `"Other countries or unknown"', add
label values si02a_citiz si02a_citiz_lbl

label define si02a_chborn_lbl 0 `"0 children"'
label define si02a_chborn_lbl 1 `"1 child"', add
label define si02a_chborn_lbl 2 `"2 children"', add
label define si02a_chborn_lbl 3 `"3 children"', add
label define si02a_chborn_lbl 4 `"4 children"', add
label define si02a_chborn_lbl 5 `"5 children"', add
label define si02a_chborn_lbl 6 `"6 children or more"', add
label define si02a_chborn_lbl 8 `"Unknown"', add
label define si02a_chborn_lbl 9 `"NIU (not in universe)"', add
label values si02a_chborn si02a_chborn_lbl

label define si02a_school_lbl 1 `"Basic education (primary school)"'
label define si02a_school_lbl 2 `"Lower and middle vocational upper secondary education"', add
label define si02a_school_lbl 3 `"Technical, professional and general upper secondary education"', add
label define si02a_school_lbl 4 `"Short term tertiary education"', add
label define si02a_school_lbl 5 `"Higher undergraduate education"', add
label define si02a_school_lbl 6 `"Higher post-graduate education"', add
label define si02a_school_lbl 9 `"No schooling and unknown"', add
label values si02a_school si02a_school_lbl

label define si02a_schloc_lbl 1 `"The settlement of usual residence"'
label define si02a_schloc_lbl 2 `"Another settlement of the same municipality"', add
label define si02a_schloc_lbl 3 `"Another municipality of the same statistical region"', add
label define si02a_schloc_lbl 4 `"Another statistical region"', add
label define si02a_schloc_lbl 5 `"Foreign country"', add
label define si02a_schloc_lbl 9 `"NIU (not in universe)"', add
label values si02a_schloc si02a_schloc_lbl

label define si02a_stravm_lbl 1 `"Foot, bicycle or motorbike"'
label define si02a_stravm_lbl 2 `"Car or other mode"', add
label define si02a_stravm_lbl 3 `"Bus"', add
label define si02a_stravm_lbl 4 `"Train"', add
label define si02a_stravm_lbl 8 `"Unknown"', add
label define si02a_stravm_lbl 9 `"NIU (not in universe)"', add
label values si02a_stravm si02a_stravm_lbl

label define si02a_stravd_lbl 1 `"15 minutes or less"'
label define si02a_stravd_lbl 2 `"16-30 minutes"', add
label define si02a_stravd_lbl 3 `"31-60 minutes"', add
label define si02a_stravd_lbl 4 `"61-90 minutes"', add
label define si02a_stravd_lbl 5 `"91 minutes or more"', add
label define si02a_stravd_lbl 8 `"Unknown"', add
label define si02a_stravd_lbl 9 `"NIU (not in universe)"', add
label values si02a_stravd si02a_stravd_lbl

label define si02a_edattan_lbl 1 `"No education or incomplete basic"'
label define si02a_edattan_lbl 2 `"Basic education (primary school)"', add
label define si02a_edattan_lbl 3 `"Lower and middle vocational upper secondary education"', add
label define si02a_edattan_lbl 4 `"Technical, professional and general upper secondary education"', add
label define si02a_edattan_lbl 5 `"Short term tertiary education"', add
label define si02a_edattan_lbl 6 `"Higher undergraduate education"', add
label define si02a_edattan_lbl 7 `"Higher post-graduate education"', add
label define si02a_edattan_lbl 8 `"Unknown"', add
label define si02a_edattan_lbl 9 `"NIU (not in universe)"', add
label values si02a_edattan si02a_edattan_lbl

label define si02a_field_lbl 01 `"General education"'
label define si02a_field_lbl 02 `"Teacher training"', add
label define si02a_field_lbl 03 `"Humanities and Arts"', add
label define si02a_field_lbl 04 `"Social sciences, Business and Law"', add
label define si02a_field_lbl 05 `"Science, Mathematics and Computing"', add
label define si02a_field_lbl 06 `"Engineering, Manufacturing and Construction"', add
label define si02a_field_lbl 07 `"Agriculture and Veterinary"', add
label define si02a_field_lbl 08 `"Health and Welfare"', add
label define si02a_field_lbl 09 `"Services"', add
label define si02a_field_lbl 98 `"Unknown"', add
label define si02a_field_lbl 99 `"NIU (not in universe)"', add
label values si02a_field si02a_field_lbl

label define si02a_empstat_lbl 1 `"Employed"'
label define si02a_empstat_lbl 2 `"Unemployed person"', add
label define si02a_empstat_lbl 3 `"Child, pupil, student"', add
label define si02a_empstat_lbl 4 `"Pensioner"', add
label define si02a_empstat_lbl 5 `"Other inactive person"', add
label values si02a_empstat si02a_empstat_lbl

label define si02a_occ_lbl 00 `"Armed forces"'
label define si02a_occ_lbl 01 `"Legislators, senior officials and managers"', add
label define si02a_occ_lbl 02 `"Professionals"', add
label define si02a_occ_lbl 03 `"Technicians and associate professionals"', add
label define si02a_occ_lbl 04 `"Clerks"', add
label define si02a_occ_lbl 05 `"Service workers and shop and market sales workers"', add
label define si02a_occ_lbl 06 `"Skilled agricultural and fishery workers"', add
label define si02a_occ_lbl 07 `"Craft and related trades workers"', add
label define si02a_occ_lbl 08 `"Plant and machine operators and assemblers"', add
label define si02a_occ_lbl 09 `"Elementary occupations"', add
label define si02a_occ_lbl 98 `"Unknown"', add
label define si02a_occ_lbl 99 `"NIU (not in universe)"', add
label values si02a_occ si02a_occ_lbl

label define si02a_ind_lbl 01 `"Agriculture, hunting, forestry and fishing"'
label define si02a_ind_lbl 02 `"Mining and quarrying"', add
label define si02a_ind_lbl 03 `"Manufacturing"', add
label define si02a_ind_lbl 04 `"Electricity, gas and water supply"', add
label define si02a_ind_lbl 05 `"Construction"', add
label define si02a_ind_lbl 06 `"Wholesale, retail; certain repair"', add
label define si02a_ind_lbl 07 `"Hotels and restaurants"', add
label define si02a_ind_lbl 08 `"Transport, storage and communication"', add
label define si02a_ind_lbl 09 `"Financial intermediation"', add
label define si02a_ind_lbl 10 `"Real estate, renting and business activities"', add
label define si02a_ind_lbl 11 `"Public administration, defense; compulsory social security"', add
label define si02a_ind_lbl 12 `"Education"', add
label define si02a_ind_lbl 13 `"Health and social work"', add
label define si02a_ind_lbl 14 `"Other community, social and personal services"', add
label define si02a_ind_lbl 98 `"Unknown"', add
label define si02a_ind_lbl 99 `"NIU (not in universe)"', add
label values si02a_ind si02a_ind_lbl

label define si02a_depend_lbl 1 `"Dependent"'
label define si02a_depend_lbl 2 `"Own source of livelihood"', add
label values si02a_depend si02a_depend_lbl

label define si02a_tenure_lbl 1 `"Owner, co-owner"'
label define si02a_tenure_lbl 2 `"Tenant or subtenant"', add
label define si02a_tenure_lbl 3 `"Other form of tenure"', add
label define si02a_tenure_lbl 8 `"Unknown"', add
label define si02a_tenure_lbl 9 `"NIU (not in universe)"', add
label values si02a_tenure si02a_tenure_lbl

label define si02a_workloc_lbl 1 `"The settlement of usual residence"'
label define si02a_workloc_lbl 2 `"Another settlement of the same municipality"', add
label define si02a_workloc_lbl 3 `"Another municipality of the same statistical region"', add
label define si02a_workloc_lbl 4 `"Another statistical region"', add
label define si02a_workloc_lbl 5 `"Foreign country"', add
label define si02a_workloc_lbl 9 `"NIU (not in universe)"', add
label values si02a_workloc si02a_workloc_lbl

label define si02a_wtravf_lbl 1 `"Daily"'
label define si02a_wtravf_lbl 2 `"Weekly or less"', add
label define si02a_wtravf_lbl 3 `"Working at home"', add
label define si02a_wtravf_lbl 9 `"NIU (not in universe)"', add
label values si02a_wtravf si02a_wtravf_lbl

label define si02a_wtravm_lbl 1 `"By foot, bicycle or motorbike"'
label define si02a_wtravm_lbl 2 `"Car or other mode"', add
label define si02a_wtravm_lbl 3 `"Bus"', add
label define si02a_wtravm_lbl 4 `"Train"', add
label define si02a_wtravm_lbl 8 `"Unknown"', add
label define si02a_wtravm_lbl 9 `"NIU (not in universe)"', add
label values si02a_wtravm si02a_wtravm_lbl

label define si02a_wtravd_lbl 1 `"15 minutes or less"'
label define si02a_wtravd_lbl 2 `"16-30 minutes"', add
label define si02a_wtravd_lbl 3 `"31-60 minutes"', add
label define si02a_wtravd_lbl 4 `"61-90 minutes"', add
label define si02a_wtravd_lbl 5 `"91minutes or more"', add
label define si02a_wtravd_lbl 8 `"Unknown"', add
label define si02a_wtravd_lbl 9 `"NIU (not in universe)"', add
label values si02a_wtravd si02a_wtravd_lbl


