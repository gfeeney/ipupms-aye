* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    pt01a_dwnum     22-27    ///
  byte    pt01a_hhnum     28-29    ///
  byte    pt01a_hhn       30-31    ///
  byte    pt01a_pernd     32-33    ///
  byte    pt01a_pern      34-35    ///
  byte    pt01a_fbig      36-36    ///
  byte    pt01a_geog1     37-37    ///
  byte    pt01a_geog2     38-39    ///
  int     pt01a_geog3     40-42    ///
  byte    pt01a_geogun    43-43    ///
  byte    pt01a_geogsz    44-44    ///
  byte    pt01a_gq        45-45    ///
  byte    pt01a_dwtype    46-46    ///
  byte    pt01a_occup1    47-47    ///
  byte    pt01a_occup2    48-48    ///
  byte    pt01a_tenure    49-49    ///
  byte    pt01a_owner     50-50    ///
  byte    pt01a_mortgage  51-51    ///
  byte    pt01a_elect     52-52    ///
  byte    pt01a_water     53-53    ///
  byte    pt01a_toilet    54-54    ///
  byte    pt01a_bath      55-55    ///
  byte    pt01a_sewer     56-56    ///
  byte    pt01a_kitch     57-57    ///
  byte    pt01a_heat      58-58    ///
  byte    pt01a_rooms     59-59    ///
  byte    pt01a_elev      60-60    ///
  byte    pt01a_conyr     61-61    ///
  byte    pt01a_roof      62-62    ///
  int     pernum          63-65    ///
  float   wtper           66-73    ///
  byte    pt01a_pernum    74-75    ///
  byte    pt01a_famnumo   76-77    ///
  byte    pt01a_pernumo   78-79    ///
  byte    pt01a_sploc     80-81    ///
  byte    pt01a_poploc    82-83    ///
  byte    pt01a_momloc    84-85    ///
  byte    pt01a_famtype   86-87    ///
  byte    pt01a_relate    88-89    ///
  byte    pt01a_sex       90-90    ///
  int     pt01a_age       91-93    ///
  byte    pt01a_marst     94-94    ///
  byte    pt01a_disab     95-95    ///
  byte    pt01a_relig     96-96    ///
  byte    pt01a_lit       97-97    ///
  byte    pt01a_school    98-98    ///
  byte    pt01a_edattan   99-100   ///
  int     pt01a_edfld     101-103  ///
  byte    pt01a_citiz     104-104  ///
  int     pt01a_citizc    105-107  ///
  byte    pt01a_bpl       108-109  ///
  int     pt01a_bpln      110-113  ///
  int     pt01a_bplc      114-116  ///
  byte    pt01a_res       117-118  ///
  int     pt01a_resn      119-122  ///
  int     pt01a_resc      123-125  ///
  byte    pt01a_resp      126-127  ///
  int     pt01a_respc     128-130  ///
  byte    pt01a_wkplac    131-131  ///
  int     pt01a_wkplacn   132-135  ///
  byte    pt01a_trans     136-137  ///
  byte    pt01a_empstat   138-139  ///
  byte    pt01a_classwk   140-140  ///
  byte    pt01a_wkhrs     141-141  ///
  byte    pt01a_incsrc    142-142  ///
  byte    pt01a_empsz     143-143  ///
  byte    pt01a_sector    144-144  ///
  int     pt01a_ind       145-147  ///
  int     pt01a_occ       148-150  ///
  using `"ipumsi_00102.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var pt01a_dwnum    `"Dwelling number"'
label var pt01a_hhnum    `"Household number (within dwelling)"'
label var pt01a_hhn      `"Number of households in dwelling"'
label var pt01a_pernd    `"Number of persons in dwelling"'
label var pt01a_pern     `"Number of persons inhousehold"'
label var pt01a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var pt01a_geog1    `"Geography: NUTS 1-digit"'
label var pt01a_geog2    `"Geography: NUTS 2-digit"'
label var pt01a_geog3    `"Geography: NUTS 3-digit [modified]"'
label var pt01a_geogun   `"City"'
label var pt01a_geogsz   `"Size of place of residence"'
label var pt01a_gq       `"Household type"'
label var pt01a_dwtype   `"Dwelling type"'
label var pt01a_occup1   `"Occupancy"'
label var pt01a_occup2   `"Occupancy status"'
label var pt01a_tenure   `"Tenure"'
label var pt01a_owner    `"Dwelling ownership"'
label var pt01a_mortgage `"Mortgage"'
label var pt01a_elect    `"Electricity"'
label var pt01a_water    `"Water"'
label var pt01a_toilet   `"Toilet"'
label var pt01a_bath     `"Bath"'
label var pt01a_sewer    `"Sewage"'
label var pt01a_kitch    `"Kitchen"'
label var pt01a_heat     `"Central heating"'
label var pt01a_rooms    `"Number of rooms"'
label var pt01a_elev     `"Elevator"'
label var pt01a_conyr    `"Year built"'
label var pt01a_roof     `"Roof material"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var pt01a_pernum   `"Person number (within household)"'
label var pt01a_famnumo  `"Sequence number of the nucleus inside of the family"'
label var pt01a_pernumo  `"Person number, original"'
label var pt01a_sploc    `"Person number of the spouse"'
label var pt01a_poploc   `"Person number of the father"'
label var pt01a_momloc   `"Person number of the mother"'
label var pt01a_famtype  `"Family type"'
label var pt01a_relate   `"Relationship to household's reference person"'
label var pt01a_sex      `"Sex"'
label var pt01a_age      `"Age"'
label var pt01a_marst    `"Marital status"'
label var pt01a_disab    `"Disability"'
label var pt01a_relig    `"Religion"'
label var pt01a_lit      `"Literacy"'
label var pt01a_school   `"School attendance"'
label var pt01a_edattan  `"Educational attainment"'
label var pt01a_edfld    `"Field of education"'
label var pt01a_citiz    `"Citizenship"'
label var pt01a_citizc   `"Country of citizenship"'
label var pt01a_bpl      `"Place of birth"'
label var pt01a_bpln     `"EU subregion of birth"'
label var pt01a_bplc     `"Country of birth"'
label var pt01a_res      `"Place of usual residence on December 31, 1999"'
label var pt01a_resn     `"NUTS-3 region of usual residence on December 31, 1999"'
label var pt01a_resc     `"Country of usual residence on December 31, 1999"'
label var pt01a_resp     `"Place of usual residence on December 31, 1995"'
label var pt01a_respc    `"Country of usual residence on December 31, 1995"'
label var pt01a_wkplac   `"Place of work or study"'
label var pt01a_wkplacn  `"Place of work or study"'
label var pt01a_trans    `"Main mode of transportation to work or study"'
label var pt01a_empstat  `"Employment status"'
label var pt01a_classwk  `"Employment condition"'
label var pt01a_wkhrs    `"Usual number of hours worked per week"'
label var pt01a_incsrc   `"Source of livelihood"'
label var pt01a_empsz    `"Size of place of employment"'
label var pt01a_sector   `"Sector of economic activity"'
label var pt01a_ind      `"Industry"'
label var pt01a_occ      `"Main occupation"'

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

label define pt01a_hhnum_lbl 01 `"1"'
label define pt01a_hhnum_lbl 02 `"2"', add
label define pt01a_hhnum_lbl 03 `"3"', add
label define pt01a_hhnum_lbl 04 `"4"', add
label define pt01a_hhnum_lbl 05 `"5"', add
label define pt01a_hhnum_lbl 06 `"6"', add
label define pt01a_hhnum_lbl 07 `"7"', add
label define pt01a_hhnum_lbl 08 `"8"', add
label define pt01a_hhnum_lbl 09 `"9"', add
label define pt01a_hhnum_lbl 10 `"10"', add
label define pt01a_hhnum_lbl 11 `"11"', add
label define pt01a_hhnum_lbl 12 `"12"', add
label define pt01a_hhnum_lbl 13 `"13"', add
label define pt01a_hhnum_lbl 14 `"14"', add
label define pt01a_hhnum_lbl 15 `"15"', add
label define pt01a_hhnum_lbl 16 `"16"', add
label define pt01a_hhnum_lbl 17 `"17"', add
label values pt01a_hhnum pt01a_hhnum_lbl

label define pt01a_hhn_lbl 01 `"1"'
label define pt01a_hhn_lbl 02 `"2"', add
label define pt01a_hhn_lbl 03 `"3"', add
label define pt01a_hhn_lbl 04 `"4"', add
label define pt01a_hhn_lbl 05 `"5"', add
label define pt01a_hhn_lbl 06 `"6"', add
label define pt01a_hhn_lbl 07 `"7"', add
label define pt01a_hhn_lbl 08 `"8"', add
label define pt01a_hhn_lbl 09 `"9"', add
label define pt01a_hhn_lbl 11 `"11"', add
label define pt01a_hhn_lbl 12 `"12"', add
label define pt01a_hhn_lbl 14 `"14"', add
label define pt01a_hhn_lbl 15 `"15"', add
label define pt01a_hhn_lbl 17 `"17"', add
label values pt01a_hhn pt01a_hhn_lbl

label define pt01a_pernd_lbl 00 `"0"'
label define pt01a_pernd_lbl 01 `"1"', add
label define pt01a_pernd_lbl 02 `"2"', add
label define pt01a_pernd_lbl 03 `"3"', add
label define pt01a_pernd_lbl 04 `"4"', add
label define pt01a_pernd_lbl 05 `"5"', add
label define pt01a_pernd_lbl 06 `"6"', add
label define pt01a_pernd_lbl 07 `"7"', add
label define pt01a_pernd_lbl 08 `"8"', add
label define pt01a_pernd_lbl 09 `"9"', add
label define pt01a_pernd_lbl 10 `"10"', add
label define pt01a_pernd_lbl 11 `"11"', add
label define pt01a_pernd_lbl 12 `"12"', add
label define pt01a_pernd_lbl 13 `"13"', add
label define pt01a_pernd_lbl 14 `"14"', add
label define pt01a_pernd_lbl 15 `"15"', add
label define pt01a_pernd_lbl 16 `"16"', add
label define pt01a_pernd_lbl 17 `"17"', add
label define pt01a_pernd_lbl 19 `"19"', add
label define pt01a_pernd_lbl 20 `"20"', add
label define pt01a_pernd_lbl 21 `"21"', add
label define pt01a_pernd_lbl 22 `"22"', add
label define pt01a_pernd_lbl 23 `"23"', add
label define pt01a_pernd_lbl 25 `"25"', add
label define pt01a_pernd_lbl 27 `"27"', add
label values pt01a_pernd pt01a_pernd_lbl

label define pt01a_pern_lbl 00 `"0"'
label define pt01a_pern_lbl 01 `"1"', add
label define pt01a_pern_lbl 02 `"2"', add
label define pt01a_pern_lbl 03 `"3"', add
label define pt01a_pern_lbl 04 `"4"', add
label define pt01a_pern_lbl 05 `"5"', add
label define pt01a_pern_lbl 06 `"6"', add
label define pt01a_pern_lbl 07 `"7"', add
label define pt01a_pern_lbl 08 `"8"', add
label define pt01a_pern_lbl 09 `"9"', add
label define pt01a_pern_lbl 10 `"10"', add
label define pt01a_pern_lbl 11 `"11"', add
label define pt01a_pern_lbl 12 `"12"', add
label define pt01a_pern_lbl 13 `"13"', add
label define pt01a_pern_lbl 14 `"14"', add
label define pt01a_pern_lbl 15 `"15"', add
label values pt01a_pern pt01a_pern_lbl

label define pt01a_fbig_lbl 0 `"No problem"'
label define pt01a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define pt01a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values pt01a_fbig pt01a_fbig_lbl

label define pt01a_geog1_lbl 1 `"Continente"'
label define pt01a_geog1_lbl 2 `"Autonomous Azores Region"', add
label define pt01a_geog1_lbl 3 `"Autonomous Madeira Region"', add
label values pt01a_geog1 pt01a_geog1_lbl

label define pt01a_geog2_lbl 11 `"Norte (North)"'
label define pt01a_geog2_lbl 16 `"Centro (Center)"', add
label define pt01a_geog2_lbl 17 `"Lisboa (Lisbon)"', add
label define pt01a_geog2_lbl 18 `"Alentejo"', add
label define pt01a_geog2_lbl 15 `"Algarve"', add
label define pt01a_geog2_lbl 20 `"Autonomous Azores Region"', add
label define pt01a_geog2_lbl 30 `"Autonomous Madeira Region"', add
label values pt01a_geog2 pt01a_geog2_lbl

label define pt01a_geog3_lbl 111 `"Minho-Lima"'
label define pt01a_geog3_lbl 112 `"Cávado"', add
label define pt01a_geog3_lbl 113 `"Ave"', add
label define pt01a_geog3_lbl 114 `"Grande Porto"', add
label define pt01a_geog3_lbl 115 `"Tâmega"', add
label define pt01a_geog3_lbl 116 `"Entre Douro e Vouga"', add
label define pt01a_geog3_lbl 117 `"Douro"', add
label define pt01a_geog3_lbl 118 `"Alto Trás-os-Montes"', add
label define pt01a_geog3_lbl 150 `"Algarve"', add
label define pt01a_geog3_lbl 161 `"Baixo Vouga"', add
label define pt01a_geog3_lbl 162 `"Baixo Mondego"', add
label define pt01a_geog3_lbl 163 `"Pinhal Litoral"', add
label define pt01a_geog3_lbl 165 `"Dão-Lafões"', add
label define pt01a_geog3_lbl 166 `"Oeste"', add
label define pt01a_geog3_lbl 167 `"Médio Tejo"', add
label define pt01a_geog3_lbl 169 `"Other Center"', add
label define pt01a_geog3_lbl 171 `"Grande Lisboa"', add
label define pt01a_geog3_lbl 172 `"Península de Setúbal"', add
label define pt01a_geog3_lbl 185 `"Lezíria do Tejo"', add
label define pt01a_geog3_lbl 189 `"Other Alentejo"', add
label define pt01a_geog3_lbl 200 `"Autonomous Azores Region"', add
label define pt01a_geog3_lbl 300 `"Autonomous Madeira Region"', add
label values pt01a_geog3 pt01a_geog3_lbl

label define pt01a_geogun_lbl 1 `"Porto (Oporto)"'
label define pt01a_geogun_lbl 2 `"Vila Nova de Gaia"', add
label define pt01a_geogun_lbl 3 `"Lisboa (Lisbon)"', add
label define pt01a_geogun_lbl 4 `"Sintra"', add
label define pt01a_geogun_lbl 9 `"Not in identified city"', add
label values pt01a_geogun pt01a_geogun_lbl

label define pt01a_geogsz_lbl 1 `"Less than 2000 inhabitants"'
label define pt01a_geogsz_lbl 2 `"2000 or more inhabitants"', add
label define pt01a_geogsz_lbl 8 `"Unknown"', add
label define pt01a_geogsz_lbl 9 `"NIU (not in universe)"', add
label values pt01a_geogsz pt01a_geogsz_lbl

label define pt01a_gq_lbl 1 `"Private household"'
label define pt01a_gq_lbl 2 `"Institutional household"', add
label define pt01a_gq_lbl 9 `"NIU (not in universe)"', add
label values pt01a_gq pt01a_gq_lbl

label define pt01a_dwtype_lbl 1 `"Conventional dwelling"'
label define pt01a_dwtype_lbl 2 `"Non-conventional dwelling"', add
label define pt01a_dwtype_lbl 3 `"Collective living quarter/Other"', add
label values pt01a_dwtype pt01a_dwtype_lbl

label define pt01a_occup1_lbl 1 `"Usual residence"'
label define pt01a_occup1_lbl 2 `"Seasonal or secondary use"', add
label define pt01a_occup1_lbl 3 `"Vacant for sell"', add
label define pt01a_occup1_lbl 4 `"Vacant for rent"', add
label define pt01a_occup1_lbl 5 `"Vacant for demolition"', add
label define pt01a_occup1_lbl 6 `"Vacant other cases"', add
label define pt01a_occup1_lbl 9 `"NIU (not in universe)"', add
label values pt01a_occup1 pt01a_occup1_lbl

label define pt01a_occup2_lbl 1 `"Usual residence of 1 family"'
label define pt01a_occup2_lbl 2 `"Usual residence of 2 families"', add
label define pt01a_occup2_lbl 3 `"Usual residence of 3 or more families"', add
label define pt01a_occup2_lbl 4 `"Dwelling of seasonal or secondary use"', add
label define pt01a_occup2_lbl 5 `"Vacant dwelling"', add
label define pt01a_occup2_lbl 9 `"NIU (not in universe)"', add
label values pt01a_occup2 pt01a_occup2_lbl

label define pt01a_tenure_lbl 1 `"Owner"'
label define pt01a_tenure_lbl 2 `"Tenant"', add
label define pt01a_tenure_lbl 3 `"Sub-tenant"', add
label define pt01a_tenure_lbl 4 `"Others"', add
label define pt01a_tenure_lbl 9 `"NIU (not in universe)"', add
label values pt01a_tenure pt01a_tenure_lbl

label define pt01a_owner_lbl 1 `"Occupant - with mortgage"'
label define pt01a_owner_lbl 2 `"Occupant - without mortgage"', add
label define pt01a_owner_lbl 3 `"Other - ascendants or descendants"', add
label define pt01a_owner_lbl 4 `"Other - private owner or private company"', add
label define pt01a_owner_lbl 5 `"Other - state, public corporations, social security or other non-profit institutions"', add
label define pt01a_owner_lbl 6 `"Other - public company"', add
label define pt01a_owner_lbl 7 `"Other - local authority"', add
label define pt01a_owner_lbl 8 `"Other - housing association"', add
label define pt01a_owner_lbl 9 `"NIU (not in universe)"', add
label values pt01a_owner pt01a_owner_lbl

label define pt01a_mortgage_lbl 1 `"Have a mortgage or loan resulting from the purchase of this dwelling"'
label define pt01a_mortgage_lbl 2 `"Does not have a mortgage or loan resulting from the purchase of this dwelling"', add
label define pt01a_mortgage_lbl 9 `"NIU (not in universe)"', add
label values pt01a_mortgage pt01a_mortgage_lbl

label define pt01a_elect_lbl 1 `"Dwelling with electricity"'
label define pt01a_elect_lbl 2 `"Dwelling without electricity"', add
label define pt01a_elect_lbl 9 `"NIU (not in universe)"', add
label values pt01a_elect pt01a_elect_lbl

label define pt01a_water_lbl 1 `"Piped water available in the housing unit from a community scheme"'
label define pt01a_water_lbl 2 `"Piped water available in the housing unit from a private source"', add
label define pt01a_water_lbl 3 `"Piped water available within the building but outside the housing unit"', add
label define pt01a_water_lbl 4 `"No piped water available but providing from public drinking fountain"', add
label define pt01a_water_lbl 5 `"No piped water available but providing from well or private hole"', add
label define pt01a_water_lbl 6 `"No piped water available but providing from other sources (others than the previously described)"', add
label define pt01a_water_lbl 9 `"NIU (not in universe)"', add
label values pt01a_water pt01a_water_lbl

label define pt01a_toilet_lbl 1 `"Has toilet within the housing unit for exclusive use with flush toilet"'
label define pt01a_toilet_lbl 2 `"Has toilet within the housing unit for exclusive use without flush toilet"', add
label define pt01a_toilet_lbl 3 `"Has toilet within the building but outside of the housing unit for shared use with flush toilet"', add
label define pt01a_toilet_lbl 4 `"Has toilet within the building but outside of the housing unit for shared use without flush toilet"', add
label define pt01a_toilet_lbl 5 `"No toilet available"', add
label define pt01a_toilet_lbl 9 `"NIU (not in universe)"', add
label values pt01a_toilet pt01a_toilet_lbl

label define pt01a_bath_lbl 1 `"Housing unit with fixed bath or shower"'
label define pt01a_bath_lbl 3 `"Housing unit without fixed bath or shower"', add
label define pt01a_bath_lbl 9 `"NIU (not in universe)"', add
label values pt01a_bath pt01a_bath_lbl

label define pt01a_sewer_lbl 1 `"Housing unit with sewage disposal system connected to a public sewage disposal plant"'
label define pt01a_sewer_lbl 2 `"Housing unit with sewage disposal system connected to a private sewage disposal plant (septic tank, etc.)"', add
label define pt01a_sewer_lbl 3 `"Other arrangements"', add
label define pt01a_sewer_lbl 4 `"Housing unit without sewage disposal system"', add
label define pt01a_sewer_lbl 9 `"NIU (not in universe)"', add
label values pt01a_sewer pt01a_sewer_lbl

label define pt01a_kitch_lbl 1 `"Kitchen of less than 4 square metres"'
label define pt01a_kitch_lbl 2 `"Kitchen of 4 square metres or more"', add
label define pt01a_kitch_lbl 3 `"Has only kitchenette"', add
label define pt01a_kitch_lbl 4 `"Without kitchen or kitchenette"', add
label define pt01a_kitch_lbl 9 `"NIU (not in universe)"', add
label values pt01a_kitch pt01a_kitch_lbl

label define pt01a_heat_lbl 1 `"Has central heating"'
label define pt01a_heat_lbl 2 `"No central heating: fireplace"', add
label define pt01a_heat_lbl 3 `"No central heating: fixed equipment"', add
label define pt01a_heat_lbl 4 `"No central heating: mobile equipment"', add
label define pt01a_heat_lbl 5 `"Without heat"', add
label define pt01a_heat_lbl 9 `"NIU (not in universe)"', add
label values pt01a_heat pt01a_heat_lbl

label define pt01a_rooms_lbl 0 `"NIU (not in universe)"'
label define pt01a_rooms_lbl 1 `"1"', add
label define pt01a_rooms_lbl 2 `"2"', add
label define pt01a_rooms_lbl 3 `"3"', add
label define pt01a_rooms_lbl 4 `"4"', add
label define pt01a_rooms_lbl 5 `"5"', add
label define pt01a_rooms_lbl 6 `"6"', add
label define pt01a_rooms_lbl 7 `"7"', add
label define pt01a_rooms_lbl 8 `"8"', add
label define pt01a_rooms_lbl 9 `"9+"', add
label values pt01a_rooms pt01a_rooms_lbl

label define pt01a_elev_lbl 1 `"Has elevator"'
label define pt01a_elev_lbl 2 `"Does not have elevator"', add
label define pt01a_elev_lbl 9 `"Unknown"', add
label values pt01a_elev pt01a_elev_lbl

label define pt01a_conyr_lbl 0 `"Unknown"'
label define pt01a_conyr_lbl 1 `"Before 1919"', add
label define pt01a_conyr_lbl 2 `"From 1919 to 1945"', add
label define pt01a_conyr_lbl 3 `"From 1946 to 1960"', add
label define pt01a_conyr_lbl 4 `"From 1961 to 1970"', add
label define pt01a_conyr_lbl 5 `"From 1971 to 1980"', add
label define pt01a_conyr_lbl 6 `"From 1981 to 1985"', add
label define pt01a_conyr_lbl 7 `"From 1986 to 1990"', add
label define pt01a_conyr_lbl 8 `"From 1991 to 1995"', add
label define pt01a_conyr_lbl 9 `"From 1996 to 2001"', add
label values pt01a_conyr pt01a_conyr_lbl

label define pt01a_roof_lbl 1 `"Flat roof"'
label define pt01a_roof_lbl 2 `"Inclined roof covered with tiles"', add
label define pt01a_roof_lbl 3 `"Inclined roof covered with other materials"', add
label define pt01a_roof_lbl 4 `"Mixed (flat and inclined)"', add
label define pt01a_roof_lbl 9 `"Unknown"', add
label values pt01a_roof pt01a_roof_lbl

label define pt01a_pernum_lbl 00 `"Household record"'
label define pt01a_pernum_lbl 01 `"1"', add
label define pt01a_pernum_lbl 02 `"2"', add
label define pt01a_pernum_lbl 03 `"3"', add
label define pt01a_pernum_lbl 04 `"4"', add
label define pt01a_pernum_lbl 05 `"5"', add
label define pt01a_pernum_lbl 06 `"6"', add
label define pt01a_pernum_lbl 07 `"7"', add
label define pt01a_pernum_lbl 08 `"8"', add
label define pt01a_pernum_lbl 09 `"9"', add
label define pt01a_pernum_lbl 10 `"10"', add
label define pt01a_pernum_lbl 11 `"11"', add
label define pt01a_pernum_lbl 12 `"12"', add
label define pt01a_pernum_lbl 13 `"13"', add
label define pt01a_pernum_lbl 14 `"14"', add
label define pt01a_pernum_lbl 15 `"15"', add
label values pt01a_pernum pt01a_pernum_lbl

label define pt01a_famnumo_lbl 01 `"1"'
label define pt01a_famnumo_lbl 02 `"2"', add
label define pt01a_famnumo_lbl 03 `"3"', add
label define pt01a_famnumo_lbl 04 `"4"', add
label define pt01a_famnumo_lbl 05 `"5"', add
label define pt01a_famnumo_lbl 06 `"6"', add
label define pt01a_famnumo_lbl 07 `"7"', add
label define pt01a_famnumo_lbl 08 `"8"', add
label define pt01a_famnumo_lbl 09 `"9"', add
label define pt01a_famnumo_lbl 10 `"10"', add
label define pt01a_famnumo_lbl 11 `"11"', add
label define pt01a_famnumo_lbl 12 `"12"', add
label define pt01a_famnumo_lbl 13 `"13"', add
label define pt01a_famnumo_lbl 14 `"14"', add
label define pt01a_famnumo_lbl 15 `"15"', add
label define pt01a_famnumo_lbl 16 `"16"', add
label define pt01a_famnumo_lbl 17 `"17"', add
label define pt01a_famnumo_lbl 18 `"18"', add
label define pt01a_famnumo_lbl 19 `"19"', add
label define pt01a_famnumo_lbl 20 `"20"', add
label define pt01a_famnumo_lbl 21 `"21"', add
label define pt01a_famnumo_lbl 22 `"22"', add
label define pt01a_famnumo_lbl 23 `"23"', add
label define pt01a_famnumo_lbl 24 `"24"', add
label define pt01a_famnumo_lbl 25 `"25"', add
label define pt01a_famnumo_lbl 26 `"26"', add
label define pt01a_famnumo_lbl 27 `"27"', add
label define pt01a_famnumo_lbl 28 `"28"', add
label define pt01a_famnumo_lbl 29 `"29"', add
label define pt01a_famnumo_lbl 30 `"30"', add
label define pt01a_famnumo_lbl 31 `"31"', add
label define pt01a_famnumo_lbl 32 `"32"', add
label define pt01a_famnumo_lbl 33 `"33"', add
label define pt01a_famnumo_lbl 34 `"34"', add
label define pt01a_famnumo_lbl 35 `"35"', add
label define pt01a_famnumo_lbl 36 `"36"', add
label define pt01a_famnumo_lbl 37 `"37"', add
label define pt01a_famnumo_lbl 38 `"38"', add
label define pt01a_famnumo_lbl 39 `"39"', add
label define pt01a_famnumo_lbl 40 `"40"', add
label define pt01a_famnumo_lbl 41 `"41"', add
label define pt01a_famnumo_lbl 42 `"42"', add
label define pt01a_famnumo_lbl 43 `"43"', add
label define pt01a_famnumo_lbl 44 `"44"', add
label define pt01a_famnumo_lbl 45 `"45"', add
label define pt01a_famnumo_lbl 46 `"46"', add
label define pt01a_famnumo_lbl 47 `"47"', add
label define pt01a_famnumo_lbl 48 `"48"', add
label define pt01a_famnumo_lbl 49 `"49"', add
label define pt01a_famnumo_lbl 50 `"50"', add
label define pt01a_famnumo_lbl 51 `"51"', add
label define pt01a_famnumo_lbl 52 `"52"', add
label define pt01a_famnumo_lbl 53 `"53"', add
label define pt01a_famnumo_lbl 54 `"54"', add
label define pt01a_famnumo_lbl 55 `"55"', add
label define pt01a_famnumo_lbl 56 `"56"', add
label define pt01a_famnumo_lbl 57 `"57"', add
label define pt01a_famnumo_lbl 58 `"58"', add
label define pt01a_famnumo_lbl 59 `"59"', add
label define pt01a_famnumo_lbl 60 `"60"', add
label define pt01a_famnumo_lbl 61 `"61"', add
label define pt01a_famnumo_lbl 62 `"62"', add
label define pt01a_famnumo_lbl 63 `"63"', add
label define pt01a_famnumo_lbl 64 `"64"', add
label define pt01a_famnumo_lbl 65 `"65"', add
label define pt01a_famnumo_lbl 66 `"66"', add
label define pt01a_famnumo_lbl 67 `"67"', add
label define pt01a_famnumo_lbl 68 `"68"', add
label define pt01a_famnumo_lbl 69 `"69"', add
label define pt01a_famnumo_lbl 70 `"70"', add
label define pt01a_famnumo_lbl 71 `"71"', add
label define pt01a_famnumo_lbl 72 `"72"', add
label define pt01a_famnumo_lbl 73 `"73"', add
label define pt01a_famnumo_lbl 74 `"74"', add
label define pt01a_famnumo_lbl 75 `"75"', add
label define pt01a_famnumo_lbl 76 `"76"', add
label define pt01a_famnumo_lbl 77 `"77"', add
label define pt01a_famnumo_lbl 78 `"78"', add
label define pt01a_famnumo_lbl 79 `"79"', add
label define pt01a_famnumo_lbl 80 `"80"', add
label define pt01a_famnumo_lbl 81 `"81"', add
label define pt01a_famnumo_lbl 82 `"82"', add
label define pt01a_famnumo_lbl 83 `"83"', add
label define pt01a_famnumo_lbl 84 `"84"', add
label define pt01a_famnumo_lbl 85 `"85"', add
label define pt01a_famnumo_lbl 86 `"86"', add
label define pt01a_famnumo_lbl 87 `"87"', add
label define pt01a_famnumo_lbl 88 `"88"', add
label define pt01a_famnumo_lbl 89 `"89"', add
label define pt01a_famnumo_lbl 90 `"90"', add
label define pt01a_famnumo_lbl 91 `"91"', add
label define pt01a_famnumo_lbl 92 `"92"', add
label define pt01a_famnumo_lbl 93 `"93"', add
label define pt01a_famnumo_lbl 94 `"94"', add
label define pt01a_famnumo_lbl 95 `"95"', add
label define pt01a_famnumo_lbl 96 `"96"', add
label define pt01a_famnumo_lbl 97 `"97"', add
label define pt01a_famnumo_lbl 98 `"98"', add
label define pt01a_famnumo_lbl 99 `"99"', add
label values pt01a_famnumo pt01a_famnumo_lbl

label define pt01a_pernumo_lbl 01 `"1"'
label define pt01a_pernumo_lbl 02 `"2"', add
label define pt01a_pernumo_lbl 03 `"3"', add
label define pt01a_pernumo_lbl 04 `"4"', add
label define pt01a_pernumo_lbl 05 `"5"', add
label define pt01a_pernumo_lbl 06 `"6"', add
label define pt01a_pernumo_lbl 07 `"7"', add
label define pt01a_pernumo_lbl 08 `"8"', add
label define pt01a_pernumo_lbl 09 `"9"', add
label define pt01a_pernumo_lbl 10 `"10"', add
label define pt01a_pernumo_lbl 11 `"11"', add
label define pt01a_pernumo_lbl 12 `"12"', add
label define pt01a_pernumo_lbl 13 `"13"', add
label define pt01a_pernumo_lbl 14 `"14"', add
label define pt01a_pernumo_lbl 15 `"15"', add
label define pt01a_pernumo_lbl 16 `"16"', add
label define pt01a_pernumo_lbl 17 `"17"', add
label define pt01a_pernumo_lbl 18 `"18"', add
label define pt01a_pernumo_lbl 19 `"19"', add
label define pt01a_pernumo_lbl 20 `"20"', add
label define pt01a_pernumo_lbl 21 `"21"', add
label define pt01a_pernumo_lbl 22 `"22"', add
label define pt01a_pernumo_lbl 23 `"23"', add
label define pt01a_pernumo_lbl 24 `"24"', add
label define pt01a_pernumo_lbl 25 `"25"', add
label define pt01a_pernumo_lbl 26 `"26"', add
label define pt01a_pernumo_lbl 27 `"27"', add
label define pt01a_pernumo_lbl 28 `"28"', add
label define pt01a_pernumo_lbl 29 `"29"', add
label define pt01a_pernumo_lbl 30 `"30"', add
label define pt01a_pernumo_lbl 31 `"31"', add
label define pt01a_pernumo_lbl 32 `"32"', add
label define pt01a_pernumo_lbl 33 `"33"', add
label define pt01a_pernumo_lbl 34 `"34"', add
label define pt01a_pernumo_lbl 35 `"35"', add
label define pt01a_pernumo_lbl 36 `"36"', add
label define pt01a_pernumo_lbl 37 `"37"', add
label define pt01a_pernumo_lbl 38 `"38"', add
label define pt01a_pernumo_lbl 39 `"39"', add
label define pt01a_pernumo_lbl 40 `"40"', add
label define pt01a_pernumo_lbl 41 `"41"', add
label define pt01a_pernumo_lbl 42 `"42"', add
label define pt01a_pernumo_lbl 43 `"43"', add
label define pt01a_pernumo_lbl 44 `"44"', add
label define pt01a_pernumo_lbl 45 `"45"', add
label define pt01a_pernumo_lbl 46 `"46"', add
label define pt01a_pernumo_lbl 47 `"47"', add
label define pt01a_pernumo_lbl 48 `"48"', add
label define pt01a_pernumo_lbl 49 `"49"', add
label define pt01a_pernumo_lbl 50 `"50"', add
label define pt01a_pernumo_lbl 51 `"51"', add
label define pt01a_pernumo_lbl 52 `"52"', add
label define pt01a_pernumo_lbl 53 `"53"', add
label define pt01a_pernumo_lbl 54 `"54"', add
label define pt01a_pernumo_lbl 55 `"55"', add
label define pt01a_pernumo_lbl 56 `"56"', add
label define pt01a_pernumo_lbl 57 `"57"', add
label define pt01a_pernumo_lbl 58 `"58"', add
label define pt01a_pernumo_lbl 59 `"59"', add
label define pt01a_pernumo_lbl 60 `"60"', add
label define pt01a_pernumo_lbl 61 `"61"', add
label define pt01a_pernumo_lbl 62 `"62"', add
label define pt01a_pernumo_lbl 63 `"63"', add
label define pt01a_pernumo_lbl 64 `"64"', add
label define pt01a_pernumo_lbl 65 `"65"', add
label define pt01a_pernumo_lbl 66 `"66"', add
label define pt01a_pernumo_lbl 67 `"67"', add
label define pt01a_pernumo_lbl 68 `"68"', add
label define pt01a_pernumo_lbl 69 `"69"', add
label define pt01a_pernumo_lbl 70 `"70"', add
label define pt01a_pernumo_lbl 71 `"71"', add
label define pt01a_pernumo_lbl 72 `"72"', add
label define pt01a_pernumo_lbl 73 `"73"', add
label define pt01a_pernumo_lbl 74 `"74"', add
label define pt01a_pernumo_lbl 75 `"75"', add
label define pt01a_pernumo_lbl 76 `"76"', add
label define pt01a_pernumo_lbl 77 `"77"', add
label define pt01a_pernumo_lbl 78 `"78"', add
label define pt01a_pernumo_lbl 79 `"79"', add
label define pt01a_pernumo_lbl 80 `"80"', add
label define pt01a_pernumo_lbl 81 `"81"', add
label define pt01a_pernumo_lbl 82 `"82"', add
label define pt01a_pernumo_lbl 83 `"83"', add
label define pt01a_pernumo_lbl 84 `"84"', add
label define pt01a_pernumo_lbl 85 `"85"', add
label define pt01a_pernumo_lbl 86 `"86"', add
label define pt01a_pernumo_lbl 87 `"87"', add
label define pt01a_pernumo_lbl 88 `"88"', add
label define pt01a_pernumo_lbl 89 `"89"', add
label define pt01a_pernumo_lbl 90 `"90"', add
label define pt01a_pernumo_lbl 91 `"91"', add
label define pt01a_pernumo_lbl 92 `"92"', add
label define pt01a_pernumo_lbl 93 `"93"', add
label define pt01a_pernumo_lbl 94 `"94"', add
label define pt01a_pernumo_lbl 95 `"95"', add
label define pt01a_pernumo_lbl 96 `"96"', add
label define pt01a_pernumo_lbl 97 `"97"', add
label define pt01a_pernumo_lbl 98 `"98"', add
label define pt01a_pernumo_lbl 99 `"99"', add
label values pt01a_pernumo pt01a_pernumo_lbl

label define pt01a_sploc_lbl 00 `"Spouse not present in the household"'
label define pt01a_sploc_lbl 01 `"1"', add
label define pt01a_sploc_lbl 02 `"2"', add
label define pt01a_sploc_lbl 03 `"3"', add
label define pt01a_sploc_lbl 04 `"4"', add
label define pt01a_sploc_lbl 05 `"5"', add
label define pt01a_sploc_lbl 06 `"6"', add
label define pt01a_sploc_lbl 07 `"7"', add
label define pt01a_sploc_lbl 08 `"8"', add
label define pt01a_sploc_lbl 09 `"9"', add
label define pt01a_sploc_lbl 10 `"10"', add
label define pt01a_sploc_lbl 11 `"11"', add
label define pt01a_sploc_lbl 12 `"12"', add
label define pt01a_sploc_lbl 13 `"13"', add
label define pt01a_sploc_lbl 14 `"14"', add
label values pt01a_sploc pt01a_sploc_lbl

label define pt01a_poploc_lbl 00 `"Father not present in the household"'
label define pt01a_poploc_lbl 01 `"1"', add
label define pt01a_poploc_lbl 02 `"2"', add
label define pt01a_poploc_lbl 03 `"3"', add
label define pt01a_poploc_lbl 04 `"4"', add
label define pt01a_poploc_lbl 05 `"5"', add
label define pt01a_poploc_lbl 06 `"6"', add
label define pt01a_poploc_lbl 07 `"7"', add
label define pt01a_poploc_lbl 08 `"8"', add
label define pt01a_poploc_lbl 09 `"9"', add
label define pt01a_poploc_lbl 10 `"10"', add
label define pt01a_poploc_lbl 11 `"11"', add
label define pt01a_poploc_lbl 12 `"12"', add
label define pt01a_poploc_lbl 14 `"14"', add
label values pt01a_poploc pt01a_poploc_lbl

label define pt01a_momloc_lbl 00 `"Mother not present in the household"'
label define pt01a_momloc_lbl 01 `"1"', add
label define pt01a_momloc_lbl 02 `"2"', add
label define pt01a_momloc_lbl 03 `"3"', add
label define pt01a_momloc_lbl 04 `"4"', add
label define pt01a_momloc_lbl 05 `"5"', add
label define pt01a_momloc_lbl 06 `"6"', add
label define pt01a_momloc_lbl 07 `"7"', add
label define pt01a_momloc_lbl 08 `"8"', add
label define pt01a_momloc_lbl 09 `"9"', add
label define pt01a_momloc_lbl 10 `"10"', add
label define pt01a_momloc_lbl 11 `"11"', add
label define pt01a_momloc_lbl 12 `"12"', add
label define pt01a_momloc_lbl 14 `"14"', add
label values pt01a_momloc pt01a_momloc_lbl

label define pt01a_famtype_lbl 11 `"Couple <de jure> without children"'
label define pt01a_famtype_lbl 12 `"Couple <de jure> with single children, with at least one younger than 25 years old"', add
label define pt01a_famtype_lbl 13 `"Couple <de jure> with single children, where the youngest is at least 25 years old"', add
label define pt01a_famtype_lbl 21 `"Couple <de facto> without children"', add
label define pt01a_famtype_lbl 22 `"Couple <de facto> with single children, with at least one younger than 25 years old"', add
label define pt01a_famtype_lbl 23 `"Couple <de facto> with single children, where the youngest is at least 25 years old"', add
label define pt01a_famtype_lbl 31 `"Father, with at least one not married child younger than 25 years old"', add
label define pt01a_famtype_lbl 32 `"Father, with not married children, where the youngest is at least 25 years old"', add
label define pt01a_famtype_lbl 41 `"Mother, with at least one not married child younger than 25 years old"', add
label define pt01a_famtype_lbl 42 `"Mother, with not married children, where the youngest is at least 25 years old"', add
label define pt01a_famtype_lbl 51 `"Grandparents, with at least one not married grandchild younger than 25 years old"', add
label define pt01a_famtype_lbl 52 `"Grandparents, with not married grandchildren, where the youngest is at least 25 years old"', add
label define pt01a_famtype_lbl 61 `"Grandfather, with at least one not married grandchild younger than 25 years old"', add
label define pt01a_famtype_lbl 62 `"Grandfather, with not married grandchildren, where the youngest is at least 25 years old"', add
label define pt01a_famtype_lbl 71 `"Grandmother, with at least one not married grandchild younger than 25 years old"', add
label define pt01a_famtype_lbl 72 `"Grandmother, with not married grandchildren, where the youngest is at least 25 years old"', add
label define pt01a_famtype_lbl 99 `"Ficticious [non-family] nucleus"', add
label values pt01a_famtype pt01a_famtype_lbl

label define pt01a_relate_lbl 01 `"Household reference person"'
label define pt01a_relate_lbl 02 `"Spouse"', add
label define pt01a_relate_lbl 03 `"Son/daughter, not married"', add
label define pt01a_relate_lbl 04 `"Son/daughter, married"', add
label define pt01a_relate_lbl 05 `"Foster son/daughter, not married"', add
label define pt01a_relate_lbl 06 `"Foster son/daughter, married"', add
label define pt01a_relate_lbl 07 `"Stepson/stepdaughter, not married"', add
label define pt01a_relate_lbl 08 `"Stepson/stepdaughter, married"', add
label define pt01a_relate_lbl 09 `"Father or mother"', add
label define pt01a_relate_lbl 10 `"Father-in-law or mother-in-law"', add
label define pt01a_relate_lbl 11 `"Daughter-in-law or son-in-law"', add
label define pt01a_relate_lbl 12 `"Brother or sister"', add
label define pt01a_relate_lbl 13 `"Grandson or granddaughter; great-grandson or great-granddaughter"', add
label define pt01a_relate_lbl 14 `"Grandfather or grandmother; great-grandfather or great-grandmother"', add
label define pt01a_relate_lbl 15 `"Other relative"', add
label define pt01a_relate_lbl 16 `"Domestic servant"', add
label define pt01a_relate_lbl 17 `"Other"', add
label define pt01a_relate_lbl 99 `"NIU (not in universe)"', add
label values pt01a_relate pt01a_relate_lbl

label define pt01a_sex_lbl 1 `"Male"'
label define pt01a_sex_lbl 2 `"Female"', add
label values pt01a_sex pt01a_sex_lbl

label define pt01a_age_lbl 000 `"0"'
label define pt01a_age_lbl 001 `"1"', add
label define pt01a_age_lbl 002 `"2"', add
label define pt01a_age_lbl 003 `"3"', add
label define pt01a_age_lbl 004 `"4"', add
label define pt01a_age_lbl 005 `"5"', add
label define pt01a_age_lbl 006 `"6"', add
label define pt01a_age_lbl 007 `"7"', add
label define pt01a_age_lbl 008 `"8"', add
label define pt01a_age_lbl 009 `"9"', add
label define pt01a_age_lbl 010 `"10"', add
label define pt01a_age_lbl 011 `"11"', add
label define pt01a_age_lbl 012 `"12"', add
label define pt01a_age_lbl 013 `"13"', add
label define pt01a_age_lbl 014 `"14"', add
label define pt01a_age_lbl 015 `"15"', add
label define pt01a_age_lbl 016 `"16"', add
label define pt01a_age_lbl 017 `"17"', add
label define pt01a_age_lbl 018 `"18"', add
label define pt01a_age_lbl 019 `"19"', add
label define pt01a_age_lbl 020 `"20"', add
label define pt01a_age_lbl 021 `"21"', add
label define pt01a_age_lbl 022 `"22"', add
label define pt01a_age_lbl 023 `"23"', add
label define pt01a_age_lbl 024 `"24"', add
label define pt01a_age_lbl 025 `"25"', add
label define pt01a_age_lbl 026 `"26"', add
label define pt01a_age_lbl 027 `"27"', add
label define pt01a_age_lbl 028 `"28"', add
label define pt01a_age_lbl 029 `"29"', add
label define pt01a_age_lbl 030 `"30"', add
label define pt01a_age_lbl 031 `"31"', add
label define pt01a_age_lbl 032 `"32"', add
label define pt01a_age_lbl 033 `"33"', add
label define pt01a_age_lbl 034 `"34"', add
label define pt01a_age_lbl 035 `"35"', add
label define pt01a_age_lbl 036 `"36"', add
label define pt01a_age_lbl 037 `"37"', add
label define pt01a_age_lbl 038 `"38"', add
label define pt01a_age_lbl 039 `"39"', add
label define pt01a_age_lbl 040 `"40"', add
label define pt01a_age_lbl 041 `"41"', add
label define pt01a_age_lbl 042 `"42"', add
label define pt01a_age_lbl 043 `"43"', add
label define pt01a_age_lbl 044 `"44"', add
label define pt01a_age_lbl 045 `"45"', add
label define pt01a_age_lbl 046 `"46"', add
label define pt01a_age_lbl 047 `"47"', add
label define pt01a_age_lbl 048 `"48"', add
label define pt01a_age_lbl 049 `"49"', add
label define pt01a_age_lbl 050 `"50"', add
label define pt01a_age_lbl 051 `"51"', add
label define pt01a_age_lbl 052 `"52"', add
label define pt01a_age_lbl 053 `"53"', add
label define pt01a_age_lbl 054 `"54"', add
label define pt01a_age_lbl 055 `"55"', add
label define pt01a_age_lbl 056 `"56"', add
label define pt01a_age_lbl 057 `"57"', add
label define pt01a_age_lbl 058 `"58"', add
label define pt01a_age_lbl 059 `"59"', add
label define pt01a_age_lbl 060 `"60"', add
label define pt01a_age_lbl 061 `"61"', add
label define pt01a_age_lbl 062 `"62"', add
label define pt01a_age_lbl 063 `"63"', add
label define pt01a_age_lbl 064 `"64"', add
label define pt01a_age_lbl 065 `"65"', add
label define pt01a_age_lbl 066 `"66"', add
label define pt01a_age_lbl 067 `"67"', add
label define pt01a_age_lbl 068 `"68"', add
label define pt01a_age_lbl 069 `"69"', add
label define pt01a_age_lbl 070 `"70"', add
label define pt01a_age_lbl 071 `"71"', add
label define pt01a_age_lbl 072 `"72"', add
label define pt01a_age_lbl 073 `"73"', add
label define pt01a_age_lbl 074 `"74"', add
label define pt01a_age_lbl 075 `"75"', add
label define pt01a_age_lbl 076 `"76"', add
label define pt01a_age_lbl 077 `"77"', add
label define pt01a_age_lbl 078 `"78"', add
label define pt01a_age_lbl 079 `"79"', add
label define pt01a_age_lbl 080 `"80"', add
label define pt01a_age_lbl 081 `"81"', add
label define pt01a_age_lbl 082 `"82"', add
label define pt01a_age_lbl 083 `"83"', add
label define pt01a_age_lbl 084 `"84"', add
label define pt01a_age_lbl 085 `"85"', add
label define pt01a_age_lbl 086 `"86"', add
label define pt01a_age_lbl 087 `"87"', add
label define pt01a_age_lbl 088 `"88"', add
label define pt01a_age_lbl 089 `"89"', add
label define pt01a_age_lbl 090 `"90"', add
label define pt01a_age_lbl 091 `"91"', add
label define pt01a_age_lbl 092 `"92"', add
label define pt01a_age_lbl 093 `"93"', add
label define pt01a_age_lbl 094 `"94"', add
label define pt01a_age_lbl 095 `"95"', add
label define pt01a_age_lbl 096 `"96"', add
label define pt01a_age_lbl 097 `"97"', add
label define pt01a_age_lbl 098 `"98"', add
label define pt01a_age_lbl 099 `"99"', add
label define pt01a_age_lbl 100 `"100+"', add
label values pt01a_age pt01a_age_lbl

label define pt01a_marst_lbl 1 `"Single"'
label define pt01a_marst_lbl 2 `"Married with register"', add
label define pt01a_marst_lbl 3 `"Married without register"', add
label define pt01a_marst_lbl 4 `"Widowed"', add
label define pt01a_marst_lbl 5 `"Separated"', add
label define pt01a_marst_lbl 6 `"Divorced"', add
label values pt01a_marst pt01a_marst_lbl

label define pt01a_disab_lbl 1 `"None"'
label define pt01a_disab_lbl 2 `"Hearing disability"', add
label define pt01a_disab_lbl 3 `"Visual disability"', add
label define pt01a_disab_lbl 4 `"Physical disability"', add
label define pt01a_disab_lbl 5 `"Mental disability"', add
label define pt01a_disab_lbl 6 `"Cerebral palsy"', add
label define pt01a_disab_lbl 7 `"Other disability"', add
label values pt01a_disab pt01a_disab_lbl

label define pt01a_relig_lbl 0 `"NIU (not in universe)"'
label define pt01a_relig_lbl 1 `"Catholic"', add
label define pt01a_relig_lbl 2 `"Orthodox"', add
label define pt01a_relig_lbl 3 `"Protestant"', add
label define pt01a_relig_lbl 4 `"Other Christian"', add
label define pt01a_relig_lbl 5 `"Jewish"', add
label define pt01a_relig_lbl 6 `"Muslim"', add
label define pt01a_relig_lbl 7 `"Other non Christian"', add
label define pt01a_relig_lbl 8 `"Without religion"', add
label define pt01a_relig_lbl 9 `"Unknown"', add
label values pt01a_relig pt01a_relig_lbl

label define pt01a_lit_lbl 1 `"Able to read and write"'
label define pt01a_lit_lbl 2 `"Not able to read and write"', add
label values pt01a_lit pt01a_lit_lbl

label define pt01a_school_lbl 1 `"No, never attended school"'
label define pt01a_school_lbl 2 `"Attending school"', add
label define pt01a_school_lbl 3 `"Attended school, but no more"', add
label values pt01a_school pt01a_school_lbl

label define pt01a_edattan_lbl 00 `"NIU (not in universe)"'
label define pt01a_edattan_lbl 01 `"Able to read and write without a educational degree"', add
label define pt01a_edattan_lbl 11 `"Basic - 1st degree"', add
label define pt01a_edattan_lbl 12 `"Basic - 2nd degree"', add
label define pt01a_edattan_lbl 13 `"Basic - 3rd degree"', add
label define pt01a_edattan_lbl 20 `"Secondary"', add
label define pt01a_edattan_lbl 30 `"Post-secondary"', add
label define pt01a_edattan_lbl 41 `"Tertiary - 1st degree (Bac.)"', add
label define pt01a_edattan_lbl 42 `"Tertiary - 2nd degree (Lic.)"', add
label define pt01a_edattan_lbl 43 `"Tertiary - 3rd degree (Master)"', add
label define pt01a_edattan_lbl 44 `"Tertiary - 4th degree (Phd)"', add
label values pt01a_edattan pt01a_edattan_lbl

label define pt01a_edfld_lbl 001 `"Education of languages, literatures and sciences of the education"'
label define pt01a_edfld_lbl 002 `"Education of physical, musical and visual education"', add
label define pt01a_edfld_lbl 003 `"Education of physics, mathematics, geology, biology and computer science"', add
label define pt01a_edfld_lbl 004 `"Social education and cultural animation"', add
label define pt01a_edfld_lbl 005 `"Primary and pre-primary education"', add
label define pt01a_edfld_lbl 006 `"Special education"', add
label define pt01a_edfld_lbl 007 `"Pedagogical orientation and sciences"', add
label define pt01a_edfld_lbl 009 `"Plastic arts, sculpture and painting"', add
label define pt01a_edfld_lbl 010 `"Interior architecture, decorative arts, conservation and restoration"', add
label define pt01a_edfld_lbl 012 `"Cinema, video and photography"', add
label define pt01a_edfld_lbl 013 `"Musical sciences, composition and instruments"', add
label define pt01a_edfld_lbl 014 `"Theater, dance and scenography"', add
label define pt01a_edfld_lbl 015 `"Decoration, design and estilismo"', add
label define pt01a_edfld_lbl 017 `"History and archaeology"', add
label define pt01a_edfld_lbl 018 `"Modern languages and literatures"', add
label define pt01a_edfld_lbl 019 `"Translation and interpretation"', add
label define pt01a_edfld_lbl 020 `"Theology"', add
label define pt01a_edfld_lbl 021 `"Philosophy and humanities"', add
label define pt01a_edfld_lbl 022 `"Classic languages and literatures"', add
label define pt01a_edfld_lbl 023 `"Linguistics"', add
label define pt01a_edfld_lbl 024 `"Other language and religious sciences"', add
label define pt01a_edfld_lbl 025 `"Sociology"', add
label define pt01a_edfld_lbl 026 `"Anthropology"', add
label define pt01a_edfld_lbl 027 `"Political science of the population and human resource management"', add
label define pt01a_edfld_lbl 028 `"Social sciences"', add
label define pt01a_edfld_lbl 029 `"Economics"', add
label define pt01a_edfld_lbl 030 `"Geography, regional and urban planning"', add
label define pt01a_edfld_lbl 031 `"Psychology"', add
label define pt01a_edfld_lbl 033 `"Media and communication sciences"', add
label define pt01a_edfld_lbl 034 `"Media and communication"', add
label define pt01a_edfld_lbl 035 `"Journalism"', add
label define pt01a_edfld_lbl 038 `"administrative administration and sciences"', add
label define pt01a_edfld_lbl 039 `"Management, organization and commerce"', add
label define pt01a_edfld_lbl 040 `"Advertising and marketing"', add
label define pt01a_edfld_lbl 041 `"Public relations and secretaryship"', add
label define pt01a_edfld_lbl 042 `"Auditorship and assessorship"', add
label define pt01a_edfld_lbl 043 `"Accounting and finance"', add
label define pt01a_edfld_lbl 045 `"Soliciting"', add
label define pt01a_edfld_lbl 046 `"Law"', add
label define pt01a_edfld_lbl 047 `"Biotechnology"', add
label define pt01a_edfld_lbl 048 `"Biology"', add
label define pt01a_edfld_lbl 049 `"Microbiology"', add
label define pt01a_edfld_lbl 051 `"Chemistry"', add
label define pt01a_edfld_lbl 052 `"Physics, Astronomy"', add
label define pt01a_edfld_lbl 053 `"Geology and geographic engineering"', add
label define pt01a_edfld_lbl 055 `"Engineering of the hídricos resources"', add
label define pt01a_edfld_lbl 057 `"Statistics, operational analysis and probabilities"', add
label define pt01a_edfld_lbl 058 `"Mathematics"', add
label define pt01a_edfld_lbl 060 `"Computation"', add
label define pt01a_edfld_lbl 061 `"Computer science"', add
label define pt01a_edfld_lbl 062 `"Engineering computer science and of systems"', add
label define pt01a_edfld_lbl 064 `"Electronics and telecommunications engineering"', add
label define pt01a_edfld_lbl 065 `"Industrial production and quality engineering"', add
label define pt01a_edfld_lbl 066 `"Energy engineering"', add
label define pt01a_edfld_lbl 067 `"Mechanical engineering"', add
label define pt01a_edfld_lbl 068 `"Physical and chemical engineering"', add
label define pt01a_edfld_lbl 069 `"Naval and aerospace engineering"', add
label define pt01a_edfld_lbl 070 `"Biological engineering"', add
label define pt01a_edfld_lbl 071 `"Other similar courses of engineering and techniques"', add
label define pt01a_edfld_lbl 072 `"Food engineering"', add
label define pt01a_edfld_lbl 073 `"Engineering of materials"', add
label define pt01a_edfld_lbl 074 `"Textile engineering"', add
label define pt01a_edfld_lbl 076 `"Civil engineering"', add
label define pt01a_edfld_lbl 077 `"Mining engineering"', add
label define pt01a_edfld_lbl 079 `"Geotechnics engineering"', add
label define pt01a_edfld_lbl 080 `"Architecture"', add
label define pt01a_edfld_lbl 083 `"Agronomy, agricultural engineering and agrarian sciences"', add
label define pt01a_edfld_lbl 084 `"Engineering of animal production"', add
label define pt01a_edfld_lbl 085 `"Forestry"', add
label define pt01a_edfld_lbl 086 `"Forest engineering"', add
label define pt01a_edfld_lbl 087 `"Agricultural management"', add
label define pt01a_edfld_lbl 090 `"Veterinary medicine"', add
label define pt01a_edfld_lbl 092 `"Clinical analyses"', add
label define pt01a_edfld_lbl 093 `"Nutrition sciences"', add
label define pt01a_edfld_lbl 094 `"Nursing"', add
label define pt01a_edfld_lbl 095 `"Physical rehabilitation"', add
label define pt01a_edfld_lbl 096 `"Medicine"', add
label define pt01a_edfld_lbl 097 `"Dental medicine"', add
label define pt01a_edfld_lbl 098 `"Pharmaceutical sciences"', add
label define pt01a_edfld_lbl 100 `"Other medical specialties"', add
label define pt01a_edfld_lbl 102 `"Social assistance"', add
label define pt01a_edfld_lbl 105 `"Cooking, waitering and tourism"', add
label define pt01a_edfld_lbl 106 `"Interpreter"', add
label define pt01a_edfld_lbl 107 `"Sciences of the sport and physical education"', add
label define pt01a_edfld_lbl 110 `"Transports"', add
label define pt01a_edfld_lbl 112 `"Engineering of the environment and the territory"', add
label define pt01a_edfld_lbl 113 `"Environmental sciences"', add
label define pt01a_edfld_lbl 115 `"Military sciences"', add
label define pt01a_edfld_lbl 116 `"Naval sciences"', add
label define pt01a_edfld_lbl 117 `"Aeronautics"', add
label define pt01a_edfld_lbl 118 `"Air force pilot"', add
label define pt01a_edfld_lbl 998 `"Response suppressed"', add
label define pt01a_edfld_lbl 999 `"NIU (not in universe)"', add
label values pt01a_edfld pt01a_edfld_lbl

label define pt01a_citiz_lbl 1 `"Portuguese only"'
label define pt01a_citiz_lbl 2 `"Double citizenship - Portuguese and other"', add
label define pt01a_citiz_lbl 3 `"Double citizenship - Other cases"', add
label define pt01a_citiz_lbl 4 `"Foreign, from country of birth"', add
label define pt01a_citiz_lbl 5 `"Foreign, from another country"', add
label define pt01a_citiz_lbl 6 `"Stateless"', add
label values pt01a_citiz pt01a_citiz_lbl

label define pt01a_citizc_lbl 001 `"France"'
label define pt01a_citizc_lbl 002 `"Netherlands"', add
label define pt01a_citizc_lbl 003 `"Germany"', add
label define pt01a_citizc_lbl 004 `"Italy"', add
label define pt01a_citizc_lbl 005 `"United Kingdom"', add
label define pt01a_citizc_lbl 006 `"Ireland"', add
label define pt01a_citizc_lbl 007 `"Denmark"', add
label define pt01a_citizc_lbl 009 `"Portugal"', add
label define pt01a_citizc_lbl 010 `"Spain"', add
label define pt01a_citizc_lbl 011 `"Belgium"', add
label define pt01a_citizc_lbl 012 `"Luxemburg"', add
label define pt01a_citizc_lbl 016 `"Norway"', add
label define pt01a_citizc_lbl 017 `"Sweden"', add
label define pt01a_citizc_lbl 018 `"Finland"', add
label define pt01a_citizc_lbl 021 `"Switzerland"', add
label define pt01a_citizc_lbl 030 `"Latvia"', add
label define pt01a_citizc_lbl 032 `"Poland"', add
label define pt01a_citizc_lbl 036 `"Romenia"', add
label define pt01a_citizc_lbl 037 `"Bulgary"', add
label define pt01a_citizc_lbl 039 `"Ukraine"', add
label define pt01a_citizc_lbl 041 `"Moldova (Republic of)"', add
label define pt01a_citizc_lbl 042 `"Russia"', add
label define pt01a_citizc_lbl 054 `"Yugoslavia"', add
label define pt01a_citizc_lbl 056 `"Morocco"', add
label define pt01a_citizc_lbl 067 `"Cape Verde"', add
label define pt01a_citizc_lbl 068 `"Senegal"', add
label define pt01a_citizc_lbl 070 `"Guinea-Bissau"', add
label define pt01a_citizc_lbl 071 `"Guinea-Conakry"', add
label define pt01a_citizc_lbl 082 `"S. Tomé and Príncipe"', add
label define pt01a_citizc_lbl 084 `"Congo"', add
label define pt01a_citizc_lbl 089 `"Angola"', add
label define pt01a_citizc_lbl 099 `"Mozambique"', add
label define pt01a_citizc_lbl 107 `"South Africa"', add
label define pt01a_citizc_lbl 112 `"United States of America"', add
label define pt01a_citizc_lbl 113 `"Canada"', add
label define pt01a_citizc_lbl 147 `"Venezuela"', add
label define pt01a_citizc_lbl 150 `"Ecuador"', add
label define pt01a_citizc_lbl 152 `"Brazil"', add
label define pt01a_citizc_lbl 157 `"Argentina"', add
label define pt01a_citizc_lbl 175 `"Pakistan"', add
label define pt01a_citizc_lbl 176 `"India"', add
label define pt01a_citizc_lbl 194 `"China"', add
label define pt01a_citizc_lbl 197 `"Japan"', add
label define pt01a_citizc_lbl 201 `"Australia"', add
label define pt01a_citizc_lbl 996 `"Double citizenship - Portuguese and other"', add
label define pt01a_citizc_lbl 997 `"Double citizenship - Foreign"', add
label define pt01a_citizc_lbl 998 `"Stateless"', add
label define pt01a_citizc_lbl 999 `"Response suppressed"', add
label values pt01a_citizc pt01a_citizc_lbl

label define pt01a_bpl_lbl 01 `"In the parish where you llive"'
label define pt01a_bpl_lbl 02 `"In other parish of the municipality where you live"', add
label define pt01a_bpl_lbl 03 `"In other municipality"', add
label define pt01a_bpl_lbl 04 `"Timor"', add
label define pt01a_bpl_lbl 05 `"Macau"', add
label define pt01a_bpl_lbl 06 `"Angola"', add
label define pt01a_bpl_lbl 07 `"Mozambique"', add
label define pt01a_bpl_lbl 08 `"Cape Vert"', add
label define pt01a_bpl_lbl 09 `"Germany"', add
label define pt01a_bpl_lbl 10 `"France"', add
label define pt01a_bpl_lbl 11 `"Brazil"', add
label define pt01a_bpl_lbl 12 `"Venezuela"', add
label define pt01a_bpl_lbl 13 `"Other country"', add
label values pt01a_bpl pt01a_bpl_lbl

label define pt01a_bpln_lbl 1101 `"Minho-Lima"'
label define pt01a_bpln_lbl 1102 `"Cávado"', add
label define pt01a_bpln_lbl 1103 `"Ave"', add
label define pt01a_bpln_lbl 1104 `"Grande Porto"', add
label define pt01a_bpln_lbl 1105 `"Tâmega"', add
label define pt01a_bpln_lbl 1106 `"Entre Douro e Vouga"', add
label define pt01a_bpln_lbl 1107 `"Douro"', add
label define pt01a_bpln_lbl 1108 `"Alto Trás-os-Montes"', add
label define pt01a_bpln_lbl 1601 `"Baixo Vouga"', add
label define pt01a_bpln_lbl 1602 `"Baixo Mondego"', add
label define pt01a_bpln_lbl 1603 `"Pinhal Litoral"', add
label define pt01a_bpln_lbl 1604 `"Pinhal Interior Norte"', add
label define pt01a_bpln_lbl 1605 `"Dão-Lafões"', add
label define pt01a_bpln_lbl 1606 `"Pinhal Interior Sul"', add
label define pt01a_bpln_lbl 1607 `"Serra da Estrela"', add
label define pt01a_bpln_lbl 1608 `"Beira Interior Norte"', add
label define pt01a_bpln_lbl 1609 `"Beira Interior Sul"', add
label define pt01a_bpln_lbl 1610 `"Cova da Beira"', add
label define pt01a_bpln_lbl 1611 `"Oeste"', add
label define pt01a_bpln_lbl 1612 `"Médio Tejo"', add
label define pt01a_bpln_lbl 1701 `"Grande Lisboa"', add
label define pt01a_bpln_lbl 1702 `"Península de Setúbal"', add
label define pt01a_bpln_lbl 1801 `"Alentejo Litoral"', add
label define pt01a_bpln_lbl 1802 `"Alto Alentejo"', add
label define pt01a_bpln_lbl 1803 `"Alentejo Central"', add
label define pt01a_bpln_lbl 1804 `"Baixo Alentejo"', add
label define pt01a_bpln_lbl 1805 `"Lezíria do Tejo"', add
label define pt01a_bpln_lbl 1500 `"Algarve"', add
label define pt01a_bpln_lbl 2000 `"Autonomous Azores Region"', add
label define pt01a_bpln_lbl 3000 `"Autonomous Madeira Region"', add
label define pt01a_bpln_lbl 9998 `"Foreign country"', add
label values pt01a_bpln pt01a_bpln_lbl

label define pt01a_bplc_lbl 001 `"France"'
label define pt01a_bplc_lbl 002 `"Netherlands"', add
label define pt01a_bplc_lbl 003 `"Germany"', add
label define pt01a_bplc_lbl 004 `"Italy"', add
label define pt01a_bplc_lbl 005 `"United Kingdom"', add
label define pt01a_bplc_lbl 006 `"Ireland"', add
label define pt01a_bplc_lbl 007 `"Denmark"', add
label define pt01a_bplc_lbl 009 `"Portugal"', add
label define pt01a_bplc_lbl 010 `"Spain"', add
label define pt01a_bplc_lbl 011 `"Belgium"', add
label define pt01a_bplc_lbl 012 `"Luxemburg"', add
label define pt01a_bplc_lbl 017 `"Sweden"', add
label define pt01a_bplc_lbl 018 `"Finland"', add
label define pt01a_bplc_lbl 020 `"Austria"', add
label define pt01a_bplc_lbl 021 `"Switzerland"', add
label define pt01a_bplc_lbl 023 `"Andorra"', add
label define pt01a_bplc_lbl 030 `"Latvia"', add
label define pt01a_bplc_lbl 032 `"Poland"', add
label define pt01a_bplc_lbl 036 `"Romenia"', add
label define pt01a_bplc_lbl 037 `"Bulgary"', add
label define pt01a_bplc_lbl 039 `"Ukraine"', add
label define pt01a_bplc_lbl 041 `"Moldova (Republic of)"', add
label define pt01a_bplc_lbl 042 `"Russia"', add
label define pt01a_bplc_lbl 054 `"Yugoslavia"', add
label define pt01a_bplc_lbl 056 `"Morocco"', add
label define pt01a_bplc_lbl 067 `"Cape Verde"', add
label define pt01a_bplc_lbl 068 `"Senegal"', add
label define pt01a_bplc_lbl 070 `"Guinea-Bissau"', add
label define pt01a_bplc_lbl 071 `"Guinea-Conakry"', add
label define pt01a_bplc_lbl 082 `"S. Tomé and Príncipe"', add
label define pt01a_bplc_lbl 084 `"Congo"', add
label define pt01a_bplc_lbl 085 `"Congo (Democratic Republic of)"', add
label define pt01a_bplc_lbl 089 `"Angola"', add
label define pt01a_bplc_lbl 096 `"Tanzania (United Republic of)"', add
label define pt01a_bplc_lbl 099 `"Mozambique"', add
label define pt01a_bplc_lbl 105 `"Zimbabwe"', add
label define pt01a_bplc_lbl 107 `"South Africa"', add
label define pt01a_bplc_lbl 112 `"United States of America"', add
label define pt01a_bplc_lbl 113 `"Canada"', add
label define pt01a_bplc_lbl 126 `"Cuba"', add
label define pt01a_bplc_lbl 146 `"Colombia"', add
label define pt01a_bplc_lbl 147 `"Venezuela"', add
label define pt01a_bplc_lbl 150 `"Ecuador"', add
label define pt01a_bplc_lbl 152 `"Brazil"', add
label define pt01a_bplc_lbl 157 `"Argentina"', add
label define pt01a_bplc_lbl 175 `"Pakistan"', add
label define pt01a_bplc_lbl 176 `"India"', add
label define pt01a_bplc_lbl 187 `"East Timor"', add
label define pt01a_bplc_lbl 194 `"China"', add
label define pt01a_bplc_lbl 200 `"Macau"', add
label define pt01a_bplc_lbl 201 `"Australia"', add
label define pt01a_bplc_lbl 999 `"Response suppressed"', add
label values pt01a_bplc pt01a_bplc_lbl

label define pt01a_res_lbl 00 `"NIU (not in universe)"'
label define pt01a_res_lbl 01 `"In the parish where you llive"', add
label define pt01a_res_lbl 02 `"In other parish of the municipality where you live"', add
label define pt01a_res_lbl 03 `"In other municipality"', add
label define pt01a_res_lbl 05 `"Macau"', add
label define pt01a_res_lbl 06 `"Angola"', add
label define pt01a_res_lbl 07 `"Mozambique"', add
label define pt01a_res_lbl 08 `"Cape Vert"', add
label define pt01a_res_lbl 09 `"Germany"', add
label define pt01a_res_lbl 10 `"France"', add
label define pt01a_res_lbl 11 `"Brazil"', add
label define pt01a_res_lbl 12 `"Venezuela"', add
label define pt01a_res_lbl 13 `"In other country/Response suppressed"', add
label values pt01a_res pt01a_res_lbl

label define pt01a_resn_lbl 1101 `"Minho-Lima"'
label define pt01a_resn_lbl 1102 `"Cávado"', add
label define pt01a_resn_lbl 1103 `"Ave"', add
label define pt01a_resn_lbl 1104 `"Grande Porto"', add
label define pt01a_resn_lbl 1105 `"Tâmega"', add
label define pt01a_resn_lbl 1106 `"Entre Douro e Vouga"', add
label define pt01a_resn_lbl 1107 `"Douro"', add
label define pt01a_resn_lbl 1108 `"Alto Trás-os-Montes"', add
label define pt01a_resn_lbl 1601 `"Baixo Vouga"', add
label define pt01a_resn_lbl 1602 `"Baixo Mondego"', add
label define pt01a_resn_lbl 1603 `"Pinhal Litoral"', add
label define pt01a_resn_lbl 1604 `"Pinhal Interior Norte"', add
label define pt01a_resn_lbl 1605 `"Dão-Lafões"', add
label define pt01a_resn_lbl 1606 `"Pinhal Interior Sul"', add
label define pt01a_resn_lbl 1607 `"Serra da Estrela"', add
label define pt01a_resn_lbl 1608 `"Beira Interior Norte"', add
label define pt01a_resn_lbl 1609 `"Beira Interior Sul"', add
label define pt01a_resn_lbl 1610 `"Cova da Beira"', add
label define pt01a_resn_lbl 1611 `"Oeste"', add
label define pt01a_resn_lbl 1612 `"Médio Tejo"', add
label define pt01a_resn_lbl 1701 `"Grande Lisboa"', add
label define pt01a_resn_lbl 1702 `"Península de Setúbal"', add
label define pt01a_resn_lbl 1801 `"Alentejo Litoral"', add
label define pt01a_resn_lbl 1802 `"Alto Alentejo"', add
label define pt01a_resn_lbl 1803 `"Alentejo Central"', add
label define pt01a_resn_lbl 1804 `"Baixo Alentejo"', add
label define pt01a_resn_lbl 1805 `"Lezíria do Tejo"', add
label define pt01a_resn_lbl 1500 `"Algarve"', add
label define pt01a_resn_lbl 2000 `"Região Autónoma dos Açores (Azores Archipelago)"', add
label define pt01a_resn_lbl 3000 `"Região Autónoma da Madeira (Madeira Archipelago)"', add
label define pt01a_resn_lbl 9998 `"Foreign country"', add
label define pt01a_resn_lbl 9999 `"NIU (not in universe)"', add
label values pt01a_resn pt01a_resn_lbl

label define pt01a_resc_lbl 001 `"France"'
label define pt01a_resc_lbl 002 `"Netherlands"', add
label define pt01a_resc_lbl 003 `"Germany"', add
label define pt01a_resc_lbl 004 `"Italy"', add
label define pt01a_resc_lbl 005 `"United Kingdom"', add
label define pt01a_resc_lbl 006 `"Ireland"', add
label define pt01a_resc_lbl 009 `"Portugal"', add
label define pt01a_resc_lbl 010 `"Spain"', add
label define pt01a_resc_lbl 011 `"Belgium"', add
label define pt01a_resc_lbl 012 `"Luxemburg"', add
label define pt01a_resc_lbl 021 `"Switzerland"', add
label define pt01a_resc_lbl 023 `"Andorra"', add
label define pt01a_resc_lbl 030 `"Latvia"', add
label define pt01a_resc_lbl 036 `"Romenia"', add
label define pt01a_resc_lbl 037 `"Bulgary"', add
label define pt01a_resc_lbl 039 `"Ukraine"', add
label define pt01a_resc_lbl 041 `"Moldova (Republic of)"', add
label define pt01a_resc_lbl 042 `"Russia"', add
label define pt01a_resc_lbl 056 `"Morocco"', add
label define pt01a_resc_lbl 067 `"Cape Verde"', add
label define pt01a_resc_lbl 070 `"Guinea-Bissau"', add
label define pt01a_resc_lbl 082 `"S. Tomé and Príncipe"', add
label define pt01a_resc_lbl 089 `"Angola"', add
label define pt01a_resc_lbl 099 `"Mozambique"', add
label define pt01a_resc_lbl 107 `"South Africa"', add
label define pt01a_resc_lbl 112 `"United States of America"', add
label define pt01a_resc_lbl 113 `"Canada"', add
label define pt01a_resc_lbl 147 `"Venezuela"', add
label define pt01a_resc_lbl 152 `"Brazil"', add
label define pt01a_resc_lbl 194 `"China"', add
label define pt01a_resc_lbl 200 `"Macau"', add
label define pt01a_resc_lbl 201 `"Australia"', add
label define pt01a_resc_lbl 998 `"Response suppressed"', add
label define pt01a_resc_lbl 999 `"NIU (not in universe)"', add
label values pt01a_resc pt01a_resc_lbl

label define pt01a_resp_lbl 00 `"NIU (not in universe)"'
label define pt01a_resp_lbl 01 `"In the parish where you llive"', add
label define pt01a_resp_lbl 02 `"In other parish of the municipality where you live"', add
label define pt01a_resp_lbl 03 `"In other municipality"', add
label define pt01a_resp_lbl 04 `"Timor"', add
label define pt01a_resp_lbl 05 `"Macau"', add
label define pt01a_resp_lbl 06 `"Angola"', add
label define pt01a_resp_lbl 07 `"Mozambique"', add
label define pt01a_resp_lbl 08 `"Cape Vert"', add
label define pt01a_resp_lbl 09 `"Germany"', add
label define pt01a_resp_lbl 10 `"France"', add
label define pt01a_resp_lbl 11 `"Brazil"', add
label define pt01a_resp_lbl 13 `"Venezuela"', add
label values pt01a_resp pt01a_resp_lbl

label define pt01a_respc_lbl 001 `"France"'
label define pt01a_respc_lbl 003 `"Netherlands"', add
label define pt01a_respc_lbl 004 `"Germany"', add
label define pt01a_respc_lbl 005 `"Italy"', add
label define pt01a_respc_lbl 006 `"United Kingdom"', add
label define pt01a_respc_lbl 007 `"Ireland"', add
label define pt01a_respc_lbl 010 `"Portugal"', add
label define pt01a_respc_lbl 011 `"Spain"', add
label define pt01a_respc_lbl 017 `"Belgium"', add
label define pt01a_respc_lbl 018 `"Luxemburg"', add
label define pt01a_respc_lbl 030 `"Sweden"', add
label define pt01a_respc_lbl 039 `"Switzerland"', add
label define pt01a_respc_lbl 043 `"Andorra"', add
label define pt01a_respc_lbl 054 `"Latvia"', add
label define pt01a_respc_lbl 066 `"Romenia"', add
label define pt01a_respc_lbl 068 `"Bulgary"', add
label define pt01a_respc_lbl 072 `"Ukraine"', add
label define pt01a_respc_lbl 074 `"Moldova (Republic of)"', add
label define pt01a_respc_lbl 075 `"Russia"', add
label define pt01a_respc_lbl 204 `"Morocco"', add
label define pt01a_respc_lbl 247 `"Cape Verde"', add
label define pt01a_respc_lbl 248 `"Senegal"', add
label define pt01a_respc_lbl 257 `"Guinea-Bissau"', add
label define pt01a_respc_lbl 260 `"Guinea-Conakry"', add
label define pt01a_respc_lbl 311 `"S. Tomé and Príncipe"', add
label define pt01a_respc_lbl 318 `"Congo"', add
label define pt01a_respc_lbl 330 `"Angola"', add
label define pt01a_respc_lbl 366 `"Mozambique"', add
label define pt01a_respc_lbl 388 `"South Africa"', add
label define pt01a_respc_lbl 400 `"United States of America"', add
label define pt01a_respc_lbl 404 `"Canada"', add
label define pt01a_respc_lbl 448 `"Cuba"', add
label define pt01a_respc_lbl 484 `"Venezuela"', add
label define pt01a_respc_lbl 500 `"Ecuador"', add
label define pt01a_respc_lbl 508 `"Brazil"', add
label define pt01a_respc_lbl 528 `"Argentina"', add
label define pt01a_respc_lbl 664 `"India"', add
label define pt01a_respc_lbl 699 `"East Timor"', add
label define pt01a_respc_lbl 720 `"China"', add
label define pt01a_respc_lbl 743 `"Macau"', add
label define pt01a_respc_lbl 800 `"Australia"', add
label define pt01a_respc_lbl 998 `"Response suppressed"', add
label define pt01a_respc_lbl 999 `"NIU (not in universe)"', add
label values pt01a_respc pt01a_respc_lbl

label define pt01a_wkplac_lbl 0 `"NIU (not in universe)"'
label define pt01a_wkplac_lbl 1 `"In the parish where you live"', add
label define pt01a_wkplac_lbl 2 `"In other parish of the municipality where you live"', add
label define pt01a_wkplac_lbl 3 `"In other municipality, diferent from where you live"', add
label define pt01a_wkplac_lbl 4 `"Other country"', add
label values pt01a_wkplac pt01a_wkplac_lbl

label define pt01a_wkplacn_lbl 1101 `"Minho-Lima"'
label define pt01a_wkplacn_lbl 1102 `"Cávado"', add
label define pt01a_wkplacn_lbl 1103 `"Ave"', add
label define pt01a_wkplacn_lbl 1104 `"Grande Porto"', add
label define pt01a_wkplacn_lbl 1105 `"Tâmega"', add
label define pt01a_wkplacn_lbl 1106 `"Entre Douro e Vouga"', add
label define pt01a_wkplacn_lbl 1107 `"Douro"', add
label define pt01a_wkplacn_lbl 1108 `"Alto Trás-os-Montes"', add
label define pt01a_wkplacn_lbl 1601 `"Baixo Vouga"', add
label define pt01a_wkplacn_lbl 1602 `"Baixo Mondego"', add
label define pt01a_wkplacn_lbl 1603 `"Pinhal Litoral"', add
label define pt01a_wkplacn_lbl 1604 `"Pinhal Interior Norte"', add
label define pt01a_wkplacn_lbl 1605 `"Dão-Lafões"', add
label define pt01a_wkplacn_lbl 1606 `"Pinhal Interior Sul"', add
label define pt01a_wkplacn_lbl 1607 `"Serra da Estrela"', add
label define pt01a_wkplacn_lbl 1608 `"Beira Interior Norte"', add
label define pt01a_wkplacn_lbl 1609 `"Beira Interior Sul"', add
label define pt01a_wkplacn_lbl 1610 `"Cova da Beira"', add
label define pt01a_wkplacn_lbl 1611 `"Oeste"', add
label define pt01a_wkplacn_lbl 1612 `"Médio Tejo"', add
label define pt01a_wkplacn_lbl 1701 `"Grande Lisboa"', add
label define pt01a_wkplacn_lbl 1702 `"Península de Setúbal"', add
label define pt01a_wkplacn_lbl 1801 `"Alentejo Litoral"', add
label define pt01a_wkplacn_lbl 1802 `"Alto Alentejo"', add
label define pt01a_wkplacn_lbl 1803 `"Alentejo Central"', add
label define pt01a_wkplacn_lbl 1804 `"Baixo Alentejo"', add
label define pt01a_wkplacn_lbl 1805 `"Lezíria do Tejo"', add
label define pt01a_wkplacn_lbl 1500 `"Algarve"', add
label define pt01a_wkplacn_lbl 2000 `"Região Autónoma dos Açores (Azores Archipelago)"', add
label define pt01a_wkplacn_lbl 3000 `"Região Autónoma da Madeira (Madeira Archipelago)"', add
label define pt01a_wkplacn_lbl 9998 `"Foreign country"', add
label define pt01a_wkplacn_lbl 9999 `"NIU (not in universe)"', add
label values pt01a_wkplacn pt01a_wkplacn_lbl

label define pt01a_trans_lbl 00 `"NIU (not in universe)"'
label define pt01a_trans_lbl 01 `"None, walk"', add
label define pt01a_trans_lbl 02 `"Bus"', add
label define pt01a_trans_lbl 03 `"Underground or light train"', add
label define pt01a_trans_lbl 04 `"Train"', add
label define pt01a_trans_lbl 05 `"Company or school collective transport"', add
label define pt01a_trans_lbl 06 `"Car or van - as driver"', add
label define pt01a_trans_lbl 07 `"Car or van - as passenger"', add
label define pt01a_trans_lbl 08 `"Motorcycle or bicycle"', add
label define pt01a_trans_lbl 09 `"Other"', add
label define pt01a_trans_lbl 99 `"Unknown"', add
label values pt01a_trans pt01a_trans_lbl

label define pt01a_empstat_lbl 01 `"Active worker, being paid, and working 1 to 4 hours a week"'
label define pt01a_empstat_lbl 02 `"Active worker, being paid, and working 5 to 14 hours a week"', add
label define pt01a_empstat_lbl 03 `"Active worker, being paid, and working 15 to 29 hours a week"', add
label define pt01a_empstat_lbl 04 `"Active worker, being paid, and working 30 to 34 hours a week"', add
label define pt01a_empstat_lbl 05 `"Active worker, being paid, and working 35 to 39 hours a week"', add
label define pt01a_empstat_lbl 06 `"Active worker, being paid, and working 40 to 44 hours a week"', add
label define pt01a_empstat_lbl 07 `"Active worker, being paid, and working 45 or more hours a week"', add
label define pt01a_empstat_lbl 08 `"Contributing family worker, not paid ,working 15 to 29 hours a week"', add
label define pt01a_empstat_lbl 09 `"Contributing family worker, not paid ,working 30 to 34 hours a week"', add
label define pt01a_empstat_lbl 10 `"Contributing family worker, not paid ,working 35 to 39 hours a week"', add
label define pt01a_empstat_lbl 11 `"Contributing family worker, not paid ,working 40 to 44 hours a week"', add
label define pt01a_empstat_lbl 12 `"Contributing family worker, not paid ,working more than 45 hours a week"', add
label define pt01a_empstat_lbl 13 `"Compulsory military service"', add
label define pt01a_empstat_lbl 14 `"Unemployed  looking for first job (strict sense)"', add
label define pt01a_empstat_lbl 15 `"Unemployed  looking for first job (other)"', add
label define pt01a_empstat_lbl 16 `"Unemployed  looking for new job (strict sense)"', add
label define pt01a_empstat_lbl 17 `"Unemployed  looking for new job (other)"', add
label define pt01a_empstat_lbl 18 `"Not active, student"', add
label define pt01a_empstat_lbl 19 `"Not active, homemakers"', add
label define pt01a_empstat_lbl 20 `"Not active, retired"', add
label define pt01a_empstat_lbl 21 `"Not active, disable"', add
label define pt01a_empstat_lbl 22 `"Other cases"', add
label define pt01a_empstat_lbl 99 `"NIU (not in universe)"', add
label values pt01a_empstat pt01a_empstat_lbl

label define pt01a_classwk_lbl 1 `"Employer"'
label define pt01a_classwk_lbl 2 `"Own-account worker"', add
label define pt01a_classwk_lbl 3 `"Employee"', add
label define pt01a_classwk_lbl 4 `"Contributing family worker"', add
label define pt01a_classwk_lbl 5 `"Compulsory military service"', add
label define pt01a_classwk_lbl 6 `"Member of a producers co-operative"', add
label define pt01a_classwk_lbl 7 `"Other situation"', add
label define pt01a_classwk_lbl 9 `"NIU (not in universe)"', add
label values pt01a_classwk pt01a_classwk_lbl

label define pt01a_wkhrs_lbl 1 `"1 to 4"'
label define pt01a_wkhrs_lbl 2 `"5 to 14"', add
label define pt01a_wkhrs_lbl 3 `"15 to 29"', add
label define pt01a_wkhrs_lbl 4 `"30 to 34"', add
label define pt01a_wkhrs_lbl 5 `"35 to 39"', add
label define pt01a_wkhrs_lbl 6 `"40 to 44"', add
label define pt01a_wkhrs_lbl 7 `"45 +"', add
label define pt01a_wkhrs_lbl 9 `"NIU (not in universe)"', add
label values pt01a_wkhrs pt01a_wkhrs_lbl

label define pt01a_incsrc_lbl 0 `"Work"'
label define pt01a_incsrc_lbl 1 `"Temporary benefits - Sickness, accident, etc."', add
label define pt01a_incsrc_lbl 2 `"Temporary benefits - Unemployment"', add
label define pt01a_incsrc_lbl 3 `"Temporary benefits - Others"', add
label define pt01a_incsrc_lbl 4 `"Guaranteed minimal income"', add
label define pt01a_incsrc_lbl 5 `"Pensions"', add
label define pt01a_incsrc_lbl 6 `"Property or entrepreneurial income"', add
label define pt01a_incsrc_lbl 7 `"Social support"', add
label define pt01a_incsrc_lbl 8 `"Household support"', add
label define pt01a_incsrc_lbl 9 `"Other"', add
label values pt01a_incsrc pt01a_incsrc_lbl

label define pt01a_empsz_lbl 1 `"One worker"'
label define pt01a_empsz_lbl 2 `"2 to 4 workers"', add
label define pt01a_empsz_lbl 3 `"5 to 9 workers"', add
label define pt01a_empsz_lbl 4 `"10 to 99 workers"', add
label define pt01a_empsz_lbl 5 `"100 to 499 workers"', add
label define pt01a_empsz_lbl 6 `"500 or more workers"', add
label define pt01a_empsz_lbl 9 `"NIU (not in universe)"', add
label values pt01a_empsz pt01a_empsz_lbl

label define pt01a_sector_lbl 1 `"Primary activity sector"'
label define pt01a_sector_lbl 2 `"Secondary activity sector"', add
label define pt01a_sector_lbl 3 `"Terciary activity sector (social)"', add
label define pt01a_sector_lbl 4 `"Terciary activity sector (economical)"', add
label define pt01a_sector_lbl 9 `"NIU (not in universe)"', add
label values pt01a_sector pt01a_sector_lbl

label define pt01a_ind_lbl 011 `"Growing of crops; market gardening; horticulture"'
label define pt01a_ind_lbl 012 `"Farming of animals"', add
label define pt01a_ind_lbl 013 `"Growing of crops combined with farming of animals (mixed farming)"', add
label define pt01a_ind_lbl 014 `"Agricultural and animal husbandry service activities, except veterinary activities"', add
label define pt01a_ind_lbl 015 `"Hunting, trapping and game propagation, including related service activities"', add
label define pt01a_ind_lbl 020 `"Forestry, logging and related service activities"', add
label define pt01a_ind_lbl 050 `"Fishing, operation of fish hatcheries and fish farms; service activities incidental to fishing"', add
label define pt01a_ind_lbl 131 `"Mining of iron ores"', add
label define pt01a_ind_lbl 132 `"Mining of non-ferrous metal ores, except uranium and thorium ores"', add
label define pt01a_ind_lbl 141 `"Agricultural service activities"', add
label define pt01a_ind_lbl 142 `"Animal husbandry service activities, except veterinary activities"', add
label define pt01a_ind_lbl 144 `"Production of salt"', add
label define pt01a_ind_lbl 145 `"Other mining and quarrying n.e.c."', add
label define pt01a_ind_lbl 151 `"Production, processing and preserving of meat and meat products"', add
label define pt01a_ind_lbl 152 `"Processing and preserving of fish and fish products"', add
label define pt01a_ind_lbl 153 `"Processing and preserving of fruit and vegetables"', add
label define pt01a_ind_lbl 154 `"Manufacture of vegetable and animal oils and fats"', add
label define pt01a_ind_lbl 155 `"Manufacture of dairy products"', add
label define pt01a_ind_lbl 156 `"Manufacture of grain mill products, starches and starch products"', add
label define pt01a_ind_lbl 157 `"Manufacture of prepared animal feeds"', add
label define pt01a_ind_lbl 158 `"Manufacture of other food products"', add
label define pt01a_ind_lbl 159 `"Manufacture of beverages"', add
label define pt01a_ind_lbl 160 `"Manufacture of tobacco products"', add
label define pt01a_ind_lbl 171 `"Preparation and spinning of textile fibres"', add
label define pt01a_ind_lbl 172 `"Textile weaving"', add
label define pt01a_ind_lbl 173 `"Finishing of textiles"', add
label define pt01a_ind_lbl 174 `"Manufacture of made-up textile articles, except apparel"', add
label define pt01a_ind_lbl 175 `"Manufacture of other textiles"', add
label define pt01a_ind_lbl 176 `"Manufacture of knitted and crocheted fabrics"', add
label define pt01a_ind_lbl 177 `"Manufacture of knitted and crocheted articles"', add
label define pt01a_ind_lbl 181 `"Manufacture of leather clothes"', add
label define pt01a_ind_lbl 182 `"Manufacture of other wearing apparel and accessories"', add
label define pt01a_ind_lbl 191 `"Tanning and dressing of leather"', add
label define pt01a_ind_lbl 192 `"Manufacture of luggage, handbags and the like, saddlery and harness"', add
label define pt01a_ind_lbl 193 `"Manufacture of footwear"', add
label define pt01a_ind_lbl 201 `"Forestry and logging"', add
label define pt01a_ind_lbl 202 `"Forestry and logging related service activities"', add
label define pt01a_ind_lbl 203 `"Manufacture of builders' carpentry and joinery"', add
label define pt01a_ind_lbl 204 `"Manufacture of wooden containers"', add
label define pt01a_ind_lbl 205 `"Manufacture of other products of wood; manufacture of articles of cork, straw and plaiting materials"', add
label define pt01a_ind_lbl 211 `"Manufacture of pulp, paper and paperboard"', add
label define pt01a_ind_lbl 212 `"Manufacture of articles of paper and paperboard"', add
label define pt01a_ind_lbl 221 `"Publishing"', add
label define pt01a_ind_lbl 222 `"Printing and service activities related to printing"', add
label define pt01a_ind_lbl 232 `"Manufacture of refined petroleum products"', add
label define pt01a_ind_lbl 241 `"Manufacture of basic chemicals"', add
label define pt01a_ind_lbl 242 `"Manufacture of pesticides and other agro-chemical products"', add
label define pt01a_ind_lbl 243 `"Manufacture of paints, varnishes and similar coatings, printing ink and mastics"', add
label define pt01a_ind_lbl 244 `"Manufacture of pharmaceuticals, medicinal chemicals and botanical products"', add
label define pt01a_ind_lbl 245 `"Manufacture of soap and detergents, cleaning and polishing preparations, perfumes and toilet preparations"', add
label define pt01a_ind_lbl 246 `"Manufacture of other chemical products"', add
label define pt01a_ind_lbl 247 `"Manufacture of man-made fibres"', add
label define pt01a_ind_lbl 251 `"Manufacture of rubber products"', add
label define pt01a_ind_lbl 252 `"Manufacture of plastic products"', add
label define pt01a_ind_lbl 261 `"Manufacture of glass and glass products"', add
label define pt01a_ind_lbl 262 `"Manufacture of non-refractory ceramic goods other than for construction purposes; manufacture of refractory ceramic products"', add
label define pt01a_ind_lbl 263 `"Manufacture of ceramic tiles and flags"', add
label define pt01a_ind_lbl 264 `"Manufacture of bricks, tiles and construction products, in baked clay"', add
label define pt01a_ind_lbl 265 `"Manufacture of cement, lime and plaster"', add
label define pt01a_ind_lbl 266 `"Manufacture of articles of concrete, plaster and cement"', add
label define pt01a_ind_lbl 267 `"Cutting, shaping and finishing of stone"', add
label define pt01a_ind_lbl 268 `"Manufacture of other non-metallic mineral products"', add
label define pt01a_ind_lbl 271 `"Manufacture of basic iron and steel and of ferro-alloys (ECSC)"', add
label define pt01a_ind_lbl 272 `"Manufacture of tubes"', add
label define pt01a_ind_lbl 273 `"Other first processing of iron and steel and production of non-ECSC ferro-alloys"', add
label define pt01a_ind_lbl 274 `"Manufacture of basic precious and non-ferrous metals"', add
label define pt01a_ind_lbl 275 `"Casting of metals"', add
label define pt01a_ind_lbl 281 `"Manufacture of structural metal products"', add
label define pt01a_ind_lbl 282 `"Manufacture of tanks, reservoirs and containers of metal; manufacture of central heating radiators and boilers"', add
label define pt01a_ind_lbl 285 `"Treatment and coating of metals; general mechanical engineering"', add
label define pt01a_ind_lbl 286 `"Manufacture of cutlery, tools and general hardware"', add
label define pt01a_ind_lbl 287 `"Manufacture of other fabricated metal products"', add
label define pt01a_ind_lbl 291 `"Manufacture of machinery for the production and use of mechanical power, except aircraft, vehicle and cycle engines"', add
label define pt01a_ind_lbl 292 `"Manufacture of other general purpose machinery"', add
label define pt01a_ind_lbl 293 `"Manufacture of agricultural and forestry machinery"', add
label define pt01a_ind_lbl 294 `"Manufacture of machine-tools"', add
label define pt01a_ind_lbl 295 `"Manufacture of other special purpose machinery"', add
label define pt01a_ind_lbl 296 `"Manufacture of weapons and ammunition"', add
label define pt01a_ind_lbl 297 `"Manufacture of domestic appliances n.e.c."', add
label define pt01a_ind_lbl 300 `"Manufacture of office machinery and computers"', add
label define pt01a_ind_lbl 311 `"Manufacture of electric motors, generators and transformers"', add
label define pt01a_ind_lbl 312 `"Manufacture of electricity distribution and control apparatus"', add
label define pt01a_ind_lbl 313 `"Manufacture of insulated wire and cable"', add
label define pt01a_ind_lbl 314 `"Manufacture of accumulators, primary cells and primary batteries"', add
label define pt01a_ind_lbl 315 `"Manufacture of lighting equipment and electric lamps"', add
label define pt01a_ind_lbl 316 `"Manufacture of electrical equipment n.e.c."', add
label define pt01a_ind_lbl 321 `"Manufacture of electronic valves and tubes and other electronic components"', add
label define pt01a_ind_lbl 322 `"Manufacture of television and radio transmitters and apparatus for line telephony and line telegraphy"', add
label define pt01a_ind_lbl 323 `"Manufacture of television and radio receivers, sound or video recording or reproducing apparatus and associated goods"', add
label define pt01a_ind_lbl 331 `"Manufacture of medical and surgical equipment and orthopaedic appliances"', add
label define pt01a_ind_lbl 332 `"Manufacture of instruments and appliances for measuring, checking, testing, navigating and other purposes, except industrial process control equipment"', add
label define pt01a_ind_lbl 334 `"Manufacture of optical instruments and photographic equipment"', add
label define pt01a_ind_lbl 335 `"Manufacture of watches and clocks"', add
label define pt01a_ind_lbl 341 `"Manufacture of motor vehicles"', add
label define pt01a_ind_lbl 342 `"Manufacture of bodies (coachwork) for motor vehicles; manufacture of trailers and semi-trailers"', add
label define pt01a_ind_lbl 343 `"Manufacture of parts and accessories for motor vehicles and their engines"', add
label define pt01a_ind_lbl 351 `"Building and repairing of ships and boats"', add
label define pt01a_ind_lbl 352 `"Manufacture of railway and tramway locomotives and rolling stock"', add
label define pt01a_ind_lbl 353 `"Manufacture of aircraft and spacecraft"', add
label define pt01a_ind_lbl 354 `"Manufacture of motorcycles and bicycles"', add
label define pt01a_ind_lbl 361 `"Manufacture of furniture"', add
label define pt01a_ind_lbl 362 `"Manufacture of jewellery and related articles"', add
label define pt01a_ind_lbl 364 `"Manufacture of sports goods"', add
label define pt01a_ind_lbl 365 `"Manufacture of games and toys"', add
label define pt01a_ind_lbl 366 `"Miscellaneous manufacturing n.e.c."', add
label define pt01a_ind_lbl 372 `"Recycling of non-metal waste and scrap"', add
label define pt01a_ind_lbl 401 `"Production and distribution of electricity"', add
label define pt01a_ind_lbl 402 `"Manufacture of gas; distribution of gaseous fuels through mains"', add
label define pt01a_ind_lbl 410 `"Collection, purification and distribution of water"', add
label define pt01a_ind_lbl 451 `"Site preparation"', add
label define pt01a_ind_lbl 452 `"Building of complete constructions or parts thereof; civil engineering"', add
label define pt01a_ind_lbl 453 `"Building installation"', add
label define pt01a_ind_lbl 454 `"Building completion"', add
label define pt01a_ind_lbl 501 `"Automobile sales"', add
label define pt01a_ind_lbl 502 `"Automobile repair and maintenance services"', add
label define pt01a_ind_lbl 503 `"Sale of motor vehicle parts and accessories"', add
label define pt01a_ind_lbl 504 `"Sale, maintenance and repair of motorcycles and related parts and accessories"', add
label define pt01a_ind_lbl 505 `"Retail sale of automotive fuel"', add
label define pt01a_ind_lbl 511 `"Wholesale on a fee or contract basis"', add
label define pt01a_ind_lbl 512 `"Wholesale of agricultural raw materials and live animals"', add
label define pt01a_ind_lbl 513 `"Wholesale of food, beverages and tobacco"', add
label define pt01a_ind_lbl 514 `"Wholesale of household goods"', add
label define pt01a_ind_lbl 515 `"Wholesale of non-agricultural intermediate products, waste and scrap"', add
label define pt01a_ind_lbl 516 `"Wholesale of machinery, equipment and supplies"', add
label define pt01a_ind_lbl 517 `"Other wholesale"', add
label define pt01a_ind_lbl 521 `"Retail sale in non-specialized stores"', add
label define pt01a_ind_lbl 522 `"Retail sale of food, beverages and tobacco in specialized stores"', add
label define pt01a_ind_lbl 523 `"Retail sale of pharmaceutical and medical goods, cosmetic and toilet articles"', add
label define pt01a_ind_lbl 524 `"Other retail sale of new goods in specialized stores"', add
label define pt01a_ind_lbl 525 `"Retail sale of second-hand goods in stores"', add
label define pt01a_ind_lbl 526 `"Retail sale not in stores"', add
label define pt01a_ind_lbl 527 `"Repair of personal and household goods"', add
label define pt01a_ind_lbl 551 `"Hotels"', add
label define pt01a_ind_lbl 552 `"Camping sites and other provision of short-stay accommodation"', add
label define pt01a_ind_lbl 553 `"Restaurants"', add
label define pt01a_ind_lbl 554 `"Bars"', add
label define pt01a_ind_lbl 555 `"Canteens and catering"', add
label define pt01a_ind_lbl 601 `"Transport via railways"', add
label define pt01a_ind_lbl 602 `"Other land transport"', add
label define pt01a_ind_lbl 611 `"Sea and coastal water transport"', add
label define pt01a_ind_lbl 612 `"Inland water transport"', add
label define pt01a_ind_lbl 621 `"Scheduled air transport"', add
label define pt01a_ind_lbl 631 `"Cargo handling and storage"', add
label define pt01a_ind_lbl 632 `"Other supporting transport activities"', add
label define pt01a_ind_lbl 633 `"Activities of travel agencies and tour operators; tourist assistance activities n.e.c."', add
label define pt01a_ind_lbl 634 `"Activities of other transport agencies"', add
label define pt01a_ind_lbl 641 `"Post and courier activities"', add
label define pt01a_ind_lbl 642 `"Telecommunications"', add
label define pt01a_ind_lbl 651 `"Monetary intermediation"', add
label define pt01a_ind_lbl 652 `"Other financial intermediation"', add
label define pt01a_ind_lbl 660 `"Insurance and pension funding, except compulsory social security"', add
label define pt01a_ind_lbl 671 `"Activities auxiliary to financial intermediation, except insurance and pension funding"', add
label define pt01a_ind_lbl 672 `"Activities auxiliary to insurance and pension funding"', add
label define pt01a_ind_lbl 701 `"Real estate activities with own property"', add
label define pt01a_ind_lbl 703 `"Real estate activities on a fee or contract basis"', add
label define pt01a_ind_lbl 711 `"Renting of automobiles"', add
label define pt01a_ind_lbl 713 `"Renting of other machinery and equipment"', add
label define pt01a_ind_lbl 714 `"Renting of personal and household goods n.e.c."', add
label define pt01a_ind_lbl 721 `"Hardware consultancy"', add
label define pt01a_ind_lbl 722 `"Software consultancy and supply"', add
label define pt01a_ind_lbl 723 `"Data processing"', add
label define pt01a_ind_lbl 724 `"Database activities"', add
label define pt01a_ind_lbl 725 `"Maintenance and repair of office, accounting and computing machinery"', add
label define pt01a_ind_lbl 726 `"Other computer related activities"', add
label define pt01a_ind_lbl 731 `"Research and experimental development on natural sciences and engineering"', add
label define pt01a_ind_lbl 741 `"Legal, accounting, book-keeping and auditing activities; tax consultancy; market research and public opinion polling; business and management consultancy; holdings"', add
label define pt01a_ind_lbl 742 `"Architectural and engineering activities and related technical consultancy"', add
label define pt01a_ind_lbl 743 `"Technical testing and analysis"', add
label define pt01a_ind_lbl 744 `"Advertising"', add
label define pt01a_ind_lbl 745 `"Labour recruitment and provision of personnel"', add
label define pt01a_ind_lbl 746 `"Investigation and security activities"', add
label define pt01a_ind_lbl 747 `"Industrial cleaning"', add
label define pt01a_ind_lbl 748 `"Miscellaneous business activities n.e.c."', add
label define pt01a_ind_lbl 751 `"Administration of the State and the economic and social policy of the community"', add
label define pt01a_ind_lbl 752 `"Provision of services to the community as a whole"', add
label define pt01a_ind_lbl 753 `"Compulsory social security activities"', add
label define pt01a_ind_lbl 801 `"Primary education"', add
label define pt01a_ind_lbl 802 `"Secondary education"', add
label define pt01a_ind_lbl 803 `"Higher education"', add
label define pt01a_ind_lbl 804 `"Adult and other education"', add
label define pt01a_ind_lbl 851 `"Human health activities"', add
label define pt01a_ind_lbl 852 `"Veterinary activities"', add
label define pt01a_ind_lbl 853 `"Social work activities"', add
label define pt01a_ind_lbl 900 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define pt01a_ind_lbl 911 `"Activities of business, employers' and professional organizations"', add
label define pt01a_ind_lbl 912 `"Activities of trade unions"', add
label define pt01a_ind_lbl 913 `"Activities of other membership organizations"', add
label define pt01a_ind_lbl 921 `"Motion picture and video activities"', add
label define pt01a_ind_lbl 922 `"Radio and television activities"', add
label define pt01a_ind_lbl 923 `"Other entertainment activities"', add
label define pt01a_ind_lbl 924 `"News agency activities"', add
label define pt01a_ind_lbl 925 `"Library, archives, museums and other cultural activities"', add
label define pt01a_ind_lbl 926 `"Sporting activities"', add
label define pt01a_ind_lbl 927 `"Other recreational activities"', add
label define pt01a_ind_lbl 930 `"Other service activities"', add
label define pt01a_ind_lbl 950 `"Private households with employed persons"', add
label define pt01a_ind_lbl 990 `"Extra-territorial organizations and bodies"', add
label define pt01a_ind_lbl 998 `"Response suppressed"', add
label define pt01a_ind_lbl 999 `"NIU (not in universe)"', add
label values pt01a_ind pt01a_ind_lbl

label define pt01a_occ_lbl 100 `"Members of the Armed Forces"'
label define pt01a_occ_lbl 112 `"Senior government officials"', add
label define pt01a_occ_lbl 114 `"Senior officials of special-interest organisations"', add
label define pt01a_occ_lbl 121 `"Directors and chief executives"', add
label define pt01a_occ_lbl 122 `"Production and operations department managers"', add
label define pt01a_occ_lbl 123 `"Other department managers"', add
label define pt01a_occ_lbl 131 `"General managers"', add
label define pt01a_occ_lbl 211 `"Physicists, chemists and related professionals"', add
label define pt01a_occ_lbl 212 `"Mathematicians, statisticians and related professionals"', add
label define pt01a_occ_lbl 213 `"Computing professionals"', add
label define pt01a_occ_lbl 214 `"Architects, engineers and related professionals"', add
label define pt01a_occ_lbl 221 `"Life science professionals"', add
label define pt01a_occ_lbl 222 `"Health professionals (except nursing)"', add
label define pt01a_occ_lbl 223 `"Nursing and midwifery professionals"', add
label define pt01a_occ_lbl 231 `"College, university and higher education teaching professionals"', add
label define pt01a_occ_lbl 232 `"Secondary education teaching professionals"', add
label define pt01a_occ_lbl 235 `"Other teaching professionals"', add
label define pt01a_occ_lbl 241 `"Business professionals"', add
label define pt01a_occ_lbl 242 `"Legal professionals"', add
label define pt01a_occ_lbl 243 `"Archivists, librarians and related information professionals"', add
label define pt01a_occ_lbl 244 `"Social science and related professionals"', add
label define pt01a_occ_lbl 245 `"Writers and creative or performing artists"', add
label define pt01a_occ_lbl 246 `"Religious professionals"', add
label define pt01a_occ_lbl 247 `"Other government officials not elsewhere classified"', add
label define pt01a_occ_lbl 311 `"Physical and engineering science technicians"', add
label define pt01a_occ_lbl 312 `"Computer associate professionals"', add
label define pt01a_occ_lbl 313 `"Optical and electronic equipment operators"', add
label define pt01a_occ_lbl 314 `"Ship and aircraft controllers and technicians"', add
label define pt01a_occ_lbl 315 `"Safety and quality inspectors"', add
label define pt01a_occ_lbl 321 `"Life science technicians and related associate professionals"', add
label define pt01a_occ_lbl 322 `"Modern health associate professionals (except nursing)"', add
label define pt01a_occ_lbl 331 `"Primary education teaching associate professionals"', add
label define pt01a_occ_lbl 332 `"Pre-primary education teaching associate professionals"', add
label define pt01a_occ_lbl 333 `"Special education teaching associate professionals"', add
label define pt01a_occ_lbl 339 `"Other teaching professionals not elsewhere classified"', add
label define pt01a_occ_lbl 341 `"Finance and sales associate professionals"', add
label define pt01a_occ_lbl 342 `"Business services agents and trade brokers"', add
label define pt01a_occ_lbl 343 `"Administrative associate professionals"', add
label define pt01a_occ_lbl 344 `"Customs, tax and related government associate professionals"', add
label define pt01a_occ_lbl 345 `"Police inspectors and detectives"', add
label define pt01a_occ_lbl 347 `"Artistic, entertainment and sports associate professionals"', add
label define pt01a_occ_lbl 411 `"Secretaries and keyboard-operating clerks"', add
label define pt01a_occ_lbl 412 `"Numerical clerks"', add
label define pt01a_occ_lbl 413 `"Material-recording and transport clerks"', add
label define pt01a_occ_lbl 414 `"Library, mail and related clerks"', add
label define pt01a_occ_lbl 421 `"Cashiers, tellers and related clerks"', add
label define pt01a_occ_lbl 422 `"Client information clerks"', add
label define pt01a_occ_lbl 511 `"Travel attendants and related workers"', add
label define pt01a_occ_lbl 512 `"Housekeeping and restaurant services workers"', add
label define pt01a_occ_lbl 513 `"Personal care and related workers"', add
label define pt01a_occ_lbl 514 `"Other personal services workers"', add
label define pt01a_occ_lbl 516 `"Protective services workers"', add
label define pt01a_occ_lbl 522 `"Shop salespersons and demonstrators"', add
label define pt01a_occ_lbl 523 `"Stall and market salespersons"', add
label define pt01a_occ_lbl 611 `"Market gardeners and crop growers"', add
label define pt01a_occ_lbl 612 `"Market-oriented animal producers and related workers"', add
label define pt01a_occ_lbl 613 `"Market-oriented crop and animal producers"', add
label define pt01a_occ_lbl 614 `"Forestry and related workers"', add
label define pt01a_occ_lbl 615 `"Fishery workers, hunters and trappers"', add
label define pt01a_occ_lbl 621 `"Subsistence agricultural and fishery workers"', add
label define pt01a_occ_lbl 711 `"Miners, shotfirers, stone cutters and carvers"', add
label define pt01a_occ_lbl 712 `"Building frame and related trades workers"', add
label define pt01a_occ_lbl 713 `"Building finishers and related trades workers"', add
label define pt01a_occ_lbl 714 `"Painters, building structure cleaners and related trades workers"', add
label define pt01a_occ_lbl 721 `"Metal moulders, welders, sheet-metal workers, structural-metal preparers, and related trades workers"', add
label define pt01a_occ_lbl 722 `"Blacksmiths, tool-makers and related trades workers"', add
label define pt01a_occ_lbl 723 `"Machinery mechanics and fitters"', add
label define pt01a_occ_lbl 724 `"Electrical and electronic equipment mechanics and fitters"', add
label define pt01a_occ_lbl 731 `"Precision workers in metal and related materials"', add
label define pt01a_occ_lbl 732 `"Potters, glass-makers and related trades workers"', add
label define pt01a_occ_lbl 733 `"Handicraft workers in wood, textile, leather and related materials"', add
label define pt01a_occ_lbl 734 `"Printing and related trades workers"', add
label define pt01a_occ_lbl 741 `"Food processing and related trades workers"', add
label define pt01a_occ_lbl 742 `"Wood treaters, cabinet-makers and related trades workers"', add
label define pt01a_occ_lbl 743 `"Textile, garment and related trades workers"', add
label define pt01a_occ_lbl 744 `"Pelt, leather and shoemaking trades workers"', add
label define pt01a_occ_lbl 745 `"Fireworks workers"', add
label define pt01a_occ_lbl 811 `"Mining- and mineral-processing-plant operators"', add
label define pt01a_occ_lbl 812 `"Metal-processing-plant operators"', add
label define pt01a_occ_lbl 813 `"Glass, ceramics and related plant operators"', add
label define pt01a_occ_lbl 814 `"Wood-processing- and papermaking-plant operators"', add
label define pt01a_occ_lbl 815 `"Chemical-processing-plant operators"', add
label define pt01a_occ_lbl 816 `"Power-production and related plant operators"', add
label define pt01a_occ_lbl 821 `"Metal- and mineral-products machine operators"', add
label define pt01a_occ_lbl 822 `"Chemical-products machine operators"', add
label define pt01a_occ_lbl 823 `"Rubber- and plastic-products machine operators"', add
label define pt01a_occ_lbl 824 `"Wood-products machine operators"', add
label define pt01a_occ_lbl 825 `"Printing-, binding- and paper-products machine operators"', add
label define pt01a_occ_lbl 826 `"Textile-, fur- and leather-products machine operators"', add
label define pt01a_occ_lbl 827 `"Food and related products machine operators"', add
label define pt01a_occ_lbl 828 `"Assemblers"', add
label define pt01a_occ_lbl 829 `"Other machine operators and assemblers"', add
label define pt01a_occ_lbl 831 `"Locomotive-engine drivers and related workers"', add
label define pt01a_occ_lbl 832 `"Motor-vehicle drivers"', add
label define pt01a_occ_lbl 833 `"Agricultural and other mobile-plant operators"', add
label define pt01a_occ_lbl 834 `"Ships' deck crews and related workers"', add
label define pt01a_occ_lbl 911 `"Street vendors and related workers"', add
label define pt01a_occ_lbl 913 `"Domestic and related helpers, cleaners and launderers"', add
label define pt01a_occ_lbl 914 `"Building caretakers, window and related cleaners"', add
label define pt01a_occ_lbl 915 `"Messengers, porters, doorkeepers and related workers"', add
label define pt01a_occ_lbl 916 `"Garbage collectors and related labourers"', add
label define pt01a_occ_lbl 921 `"Agricultural, fishery and related labourers"', add
label define pt01a_occ_lbl 931 `"Mining and construction labourers"', add
label define pt01a_occ_lbl 932 `"Manufacturing labourers"', add
label define pt01a_occ_lbl 933 `"Transport labourers and freight handlers"', add
label define pt01a_occ_lbl 998 `"Response suppressed"', add
label define pt01a_occ_lbl 999 `"NIU (not in universe)"', add
label values pt01a_occ pt01a_occ_lbl


