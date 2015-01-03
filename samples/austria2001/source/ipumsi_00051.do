* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    at01a_dwnum     22-27    ///
  byte    at01a_pern      28-29    ///
  byte    at01a_fbig      30-30    ///
  byte    at01a_donated   31-31    ///
  byte    at01a_d_num     32-32    ///
  byte    at01a_region    33-34    ///
  byte    at01a_hhty1     35-35    ///
  byte    at01a_hhty2     36-36    ///
  byte    at01a_hhty3     37-37    ///
  byte    at01a_hhty4     38-38    ///
  byte    at01a_hhty5     39-40    ///
  byte    at01a_hhty6     41-42    ///
  byte    at01a_hhty7     43-44    ///
  byte    at01a_pernsup   45-45    ///
  byte    at01a_hdcohab   46-46    ///
  byte    at01a_tenure1   47-47    ///
  byte    at01a_perndo    48-48    ///
  byte    at01a_roomdw1   49-50    ///
  byte    at01a_space1    51-51    ///
  byte    at01a_watsup    52-52    ///
  byte    at01a_toilet    53-53    ///
  byte    at01a_facil     54-54    ///
  byte    at01a_heat      55-55    ///
  byte    at01a_fuelht    56-56    ///
  byte    at01a_story     57-58    ///
  byte    at01a_owner1    59-59    ///
  byte    at01a_conyr1    60-60    ///
  byte    at01a_dwn1      61-61    ///
  int     pernum          62-64    ///
  float   wtper           65-72    ///
  byte    at01a_pernum    73-74    ///
  byte    at01a_famnum    75-75    ///
  int     at01a_biryr     76-79    ///
  byte    at01a_age       80-81    ///
  byte    at01a_sex       82-82    ///
  byte    at01a_marst     83-83    ///
  byte    at01a_cohab     84-84    ///
  byte    at01a_citiz     85-86    ///
  byte    at01a_bplc      87-88    ///
  byte    at01a_religd    89-90    ///
  byte    at01a_edattan1  91-91    ///
  byte    at01a_edattan3  92-92    ///
  int     at01a_edfldd    93-95    ///
  byte    at01a_school    96-96    ///
  byte    at01a_schtyd    97-98    ///
  byte    at01a_empst     99-100   ///
  byte    at01a_emp       101-101  ///
  byte    at01a_ecact     102-102  ///
  byte    at01a_empstl    103-103  ///
  byte    at01a_empl      104-104  ///
  byte    at01a_ecactl    105-105  ///
  byte    at01a_clwk1     106-106  ///
  byte    at01a_clwk3     107-107  ///
  byte    at01a_socec1    108-109  ///
  int     at01a_occiu     110-112  ///
  int     at01a_occimi    113-115  ///
  byte    at01a_occism    116-117  ///
  byte    at01a_occim     118-119  ///
  byte    at01a_occsm     120-121  ///
  byte    at01a_occm      122-123  ///
  int     at01a_indg      124-126  ///
  byte    at01a_indm      127-128  ///
  byte    at01a_inds      129-130  ///
  byte    at01a_indse     131-131  ///
  byte    at01a_indbr     132-133  ///
  byte    at01a_inddi     134-135  ///
  byte    at01a_wkplr     136-137  ///
  byte    at01a_wkplc1    138-139  ///
  byte    at01a_commut1   140-140  ///
  byte    at01a_commut2   141-141  ///
  byte    at01a_commut3   142-142  ///
  byte    at01a_commut4   143-143  ///
  byte    at01a_commut5   144-144  ///
  byte    at01a_commut6   145-146  ///
  byte    at01a_relate2   147-147  ///
  byte    at01a_relate    148-149  ///
  byte    at01a_hhstat4   150-151  ///
  byte    at01a_famst1    152-152  ///
  byte    at01a_famst2    153-153  ///
  byte    at01a_famst3    154-154  ///
  byte    at01a_nch1      155-155  ///
  byte    at01a_nch6      156-156  ///
  byte    at01a_nch15     157-157  ///
  byte    at01a_nch18     158-158  ///
  byte    at01a_nch25     159-159  ///
  byte    at01a_famty1    160-160  ///
  byte    at01a_famty2    161-161  ///
  byte    at01a_famty3    162-162  ///
  byte    at01a_chborn1   163-163  ///
  int     at01a_maryr1    164-167  ///
  byte    at01a_mardur    168-169  ///
  byte    at01a_marage    170-171  ///
  byte    at01a_hhty6p    172-173  ///
  using `"ipumsi_00051.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var at01a_dwnum    `"Dwelling number"'
label var at01a_pern     `"Number of persons in household"'
label var at01a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var at01a_donated  `"Donated dwelling"'
label var at01a_d_num    `"Donation strata: strata number"'
label var at01a_region   `"Region of residence (NUTS3)"'
label var at01a_hhty1    `"Type and size of household"'
label var at01a_hhty2    `"Type of household"'
label var at01a_hhty3    `"Type of household 3"'
label var at01a_hhty4    `"Type of household and number of family nuclei"'
label var at01a_hhty5    `"Type of household 5"'
label var at01a_hhty6    `"Type of household 6"'
label var at01a_hhty7    `"Type of household 7"'
label var at01a_pernsup  `"Number of persons supported"'
label var at01a_hdcohab  `"Cohabitation status of household representative"'
label var at01a_tenure1  `"Tenure of dwellings"'
label var at01a_perndo   `"Number of dwellers"'
label var at01a_roomdw1  `"Number of rooms in dwelling"'
label var at01a_space1   `"Useful floor space of dwelling (in square meters)"'
label var at01a_watsup   `"Water connection within the dwelling"'
label var at01a_toilet   `"Toilet facility inside the dwelling"'
label var at01a_facil    `"Equipment standard of dwelling"'
label var at01a_heat     `"Heating, predominant system"'
label var at01a_fuelht   `"Fuel for heating of dwelling (1991)"'
label var at01a_story    `"Floor level"'
label var at01a_owner1   `"Owner of building"'
label var at01a_conyr1   `"Construction period"'
label var at01a_dwn1     `"Number of dwellings in the building"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var at01a_pernum   `"Person number (within household)"'
label var at01a_famnum   `"Family number"'
label var at01a_biryr    `"Year of birth"'
label var at01a_age      `"Age"'
label var at01a_sex      `"Sex"'
label var at01a_marst    `"Marital status"'
label var at01a_cohab    `"Cohabitation status"'
label var at01a_citiz    `"Citizenship"'
label var at01a_bplc     `"Country of birth"'
label var at01a_religd   `"Religion -- detailed"'
label var at01a_edattan1 `"Level of highest education completed"'
label var at01a_edattan3 `"Highest education completed (ISCED-97)"'
label var at01a_edfldd   `"Major field of highest education completed -- detailed"'
label var at01a_school   `"Enrolled in school"'
label var at01a_schtyd   `"Type of school currently enrolled in -- detailed"'
label var at01a_empst    `"Activity status (labor force concept)"'
label var at01a_emp      `"Whether employed or unemployed (labor force concept)"'
label var at01a_ecact    `"Whether economically active or not (labor force concept)"'
label var at01a_empstl   `"Activity status (livelihood concept)"'
label var at01a_empl     `"Whether employed or unemployed (livelihood concept)"'
label var at01a_ecactl   `"Whether economically active or not (livelihood concept)"'
label var at01a_clwk1    `"Status in employment (of supporter)"'
label var at01a_clwk3    `"Status in employment 2 (of supporter)"'
label var at01a_socec1   `"Socio-economic group (of supporter)"'
label var at01a_occiu    `"Occupation of supporter: ISCO unit groups"'
label var at01a_occimi   `"Occupation of supporter: ISCO minor groups"'
label var at01a_occism   `"Occupation of supporter: ISCO sub-major groups"'
label var at01a_occim    `"Occupation of supporter: ISCO major groups"'
label var at01a_occsm    `"Occupation of supporter: sub-major groups"'
label var at01a_occm     `"Occupation of supporter: major groups"'
label var at01a_indg     `"Economic activity of supporter: ONACE group"'
label var at01a_indm     `"Economic activity of supporter: ONACE major group"'
label var at01a_inds     `"Economic activity of supporter: ONACE section"'
label var at01a_indse    `"Economic activity of supporter: sector"'
label var at01a_indbr    `"Economic activity of supporter: branch"'
label var at01a_inddi    `"Economic activity of supporter: division"'
label var at01a_wkplr    `"Region of place of work or school enrollment (NUTS3)"'
label var at01a_wkplc1   `"Country of place of work or school enrollment"'
label var at01a_commut1  `"Type of commuters"'
label var at01a_commut2  `"Commuting: location of residence and workplace or school"'
label var at01a_commut3  `"Commuting: location of residence and workplace or school (general)"'
label var at01a_commut4  `"Commuting frequency"'
label var at01a_commut5  `"Time for journey to work/school"'
label var at01a_commut6  `"Means of transport for (daily) commute"'
label var at01a_relate2  `"Household status"'
label var at01a_relate   `"Status in private household, or type of institution"'
label var at01a_hhstat4  `"Status in private household, or type of institution (EU version)"'
label var at01a_famst1   `"Family status"'
label var at01a_famst2   `"Whether child of a family or not"'
label var at01a_famst3   `"Family status"'
label var at01a_nch1     `"Number of children per family"'
label var at01a_nch6     `"Number of children under 6 years old per family"'
label var at01a_nch15    `"Number of children under 15 years old per family"'
label var at01a_nch18    `"Number of children under 18 years old per family"'
label var at01a_nch25    `"Number of children under 25 years old per family"'
label var at01a_famty1   `"Type of family nucleus"'
label var at01a_famty2   `"Type of family nucleus"'
label var at01a_famty3   `"Type of family nucleus"'
label var at01a_chborn1  `"Number of live-born children"'
label var at01a_maryr1   `"Year of marriage"'
label var at01a_mardur   `"Duration of marriage in years"'
label var at01a_marage   `"Age at marriage"'
label var at01a_hhty6p   `"Type of household"'

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

label define at01a_pern_lbl 01 `"1"'
label define at01a_pern_lbl 02 `"2"', add
label define at01a_pern_lbl 03 `"3"', add
label define at01a_pern_lbl 04 `"4"', add
label define at01a_pern_lbl 05 `"5"', add
label define at01a_pern_lbl 06 `"6"', add
label define at01a_pern_lbl 07 `"7"', add
label define at01a_pern_lbl 08 `"8"', add
label define at01a_pern_lbl 09 `"9"', add
label define at01a_pern_lbl 10 `"10"', add
label define at01a_pern_lbl 11 `"11"', add
label define at01a_pern_lbl 12 `"12"', add
label define at01a_pern_lbl 13 `"13"', add
label define at01a_pern_lbl 14 `"14"', add
label define at01a_pern_lbl 15 `"15"', add
label define at01a_pern_lbl 16 `"16"', add
label define at01a_pern_lbl 17 `"17"', add
label define at01a_pern_lbl 18 `"18"', add
label define at01a_pern_lbl 19 `"19"', add
label define at01a_pern_lbl 20 `"20"', add
label define at01a_pern_lbl 21 `"21"', add
label define at01a_pern_lbl 22 `"22"', add
label define at01a_pern_lbl 23 `"23"', add
label define at01a_pern_lbl 24 `"24"', add
label define at01a_pern_lbl 25 `"25"', add
label define at01a_pern_lbl 26 `"26"', add
label define at01a_pern_lbl 27 `"27"', add
label define at01a_pern_lbl 28 `"28"', add
label define at01a_pern_lbl 29 `"29"', add
label define at01a_pern_lbl 30 `"30"', add
label values at01a_pern at01a_pern_lbl

label define at01a_fbig_lbl 0 `"No problem"'
label define at01a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define at01a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values at01a_fbig at01a_fbig_lbl

label define at01a_donated_lbl 0 `"No problem"'
label define at01a_donated_lbl 1 `"Donated"', add
label values at01a_donated at01a_donated_lbl

label define at01a_d_num_lbl 1 `"1"'
label define at01a_d_num_lbl 2 `"2"', add
label define at01a_d_num_lbl 3 `"3"', add
label define at01a_d_num_lbl 4 `"4"', add
label define at01a_d_num_lbl 5 `"5"', add
label values at01a_d_num at01a_d_num_lbl

label define at01a_region_lbl 01 `"Mittelburgenland and Südburgenland"'
label define at01a_region_lbl 02 `"Nordburgenland"', add
label define at01a_region_lbl 04 `"Mostviertel-Eisenwurzen"', add
label define at01a_region_lbl 05 `"Niederösterreich-Süd"', add
label define at01a_region_lbl 06 `"Sankt Pölten"', add
label define at01a_region_lbl 07 `"Waldviertel"', add
label define at01a_region_lbl 08 `"Weinviertel"', add
label define at01a_region_lbl 09 `"Wiener Umland-Nordteil"', add
label define at01a_region_lbl 10 `"Wiener Umland-Südteil"', add
label define at01a_region_lbl 11 `"Wien"', add
label define at01a_region_lbl 12 `"Klagenfurt-Villach"', add
label define at01a_region_lbl 13 `"Oberkärnten"', add
label define at01a_region_lbl 14 `"Unterkärnten"', add
label define at01a_region_lbl 15 `"Graz"', add
label define at01a_region_lbl 16 `"Liezen"', add
label define at01a_region_lbl 17 `"Östliche Obersteiermark"', add
label define at01a_region_lbl 18 `"Oststeiermark"', add
label define at01a_region_lbl 19 `"West- und Südsteiermark"', add
label define at01a_region_lbl 20 `"Westliche Obersteiermark"', add
label define at01a_region_lbl 21 `"Innviertel"', add
label define at01a_region_lbl 22 `"Linz-Wels"', add
label define at01a_region_lbl 23 `"Mühlviertel"', add
label define at01a_region_lbl 24 `"Steyr-Kirchdorf"', add
label define at01a_region_lbl 25 `"Traunviertel"', add
label define at01a_region_lbl 26 `"Lungau and Pinzgau-Pongau"', add
label define at01a_region_lbl 28 `"Salzburg und Umgebung"', add
label define at01a_region_lbl 29 `"Außerfern and Tiroler Oberland"', add
label define at01a_region_lbl 30 `"Innsbruck"', add
label define at01a_region_lbl 31 `"Osttirol and Tiroler Unterland"', add
label define at01a_region_lbl 34 `"Bludenz-Bregenzer Wald"', add
label define at01a_region_lbl 35 `"Rheintal-Bodenseegebiet"', add
label values at01a_region at01a_region_lbl

label define at01a_hhty1_lbl 1 `"1-person private household"'
label define at01a_hhty1_lbl 2 `"2-person private household"', add
label define at01a_hhty1_lbl 3 `"3-person private household"', add
label define at01a_hhty1_lbl 4 `"4-person private household"', add
label define at01a_hhty1_lbl 5 `"5-person private household"', add
label define at01a_hhty1_lbl 6 `"6-person private household"', add
label define at01a_hhty1_lbl 7 `"7-person private household"', add
label define at01a_hhty1_lbl 8 `"8 plus persons private household"', add
label define at01a_hhty1_lbl 9 `"Institutional household/communal establishment"', add
label values at01a_hhty1 at01a_hhty1_lbl

label define at01a_hhty2_lbl 1 `"Private household"'
label define at01a_hhty2_lbl 2 `"Institutional household/communal establishment"', add
label values at01a_hhty2 at01a_hhty2_lbl

label define at01a_hhty3_lbl 1 `"Family household"'
label define at01a_hhty3_lbl 2 `"Non-family private household"', add
label define at01a_hhty3_lbl 3 `"Institutional household/communal establishment"', add
label values at01a_hhty3 at01a_hhty3_lbl

label define at01a_hhty4_lbl 1 `"One family household"'
label define at01a_hhty4_lbl 2 `"Two family household without non-family members"', add
label define at01a_hhty4_lbl 3 `"Two family household plus other persons"', add
label define at01a_hhty4_lbl 4 `"Household consisting of 3+ family nuclei"', add
label define at01a_hhty4_lbl 5 `"One person household"', add
label define at01a_hhty4_lbl 6 `"Non-family multi-person household"', add
label define at01a_hhty4_lbl 7 `"Institutional household/communal establishment"', add
label values at01a_hhty4 at01a_hhty4_lbl

label define at01a_hhty5_lbl 01 `"Couple family, no child, no other person"'
label define at01a_hhty5_lbl 02 `"Couple family, no child, other persons"', add
label define at01a_hhty5_lbl 03 `"Couple family with children, no others"', add
label define at01a_hhty5_lbl 04 `"Couple family with children, with others"', add
label define at01a_hhty5_lbl 05 `"Lone parent, male, children, no others"', add
label define at01a_hhty5_lbl 06 `"Lone parent, male, children, with others"', add
label define at01a_hhty5_lbl 07 `"Lone parent, female, children, no others"', add
label define at01a_hhty5_lbl 08 `"Lone parent, female, children, with others"', add
label define at01a_hhty5_lbl 09 `"Households with 2+ family nuclei"', add
label define at01a_hhty5_lbl 10 `"Single person household, male"', add
label define at01a_hhty5_lbl 11 `"Single person household, female"', add
label define at01a_hhty5_lbl 12 `"Non-family multi-person household"', add
label define at01a_hhty5_lbl 13 `"Institutional household/communal establishment"', add
label values at01a_hhty5 at01a_hhty5_lbl

label define at01a_hhty6_lbl 01 `"Married couple without children"'
label define at01a_hhty6_lbl 02 `"Married couple with children"', add
label define at01a_hhty6_lbl 03 `"Cohabiting couple without children"', add
label define at01a_hhty6_lbl 04 `"Cohabiting couple with children"', add
label define at01a_hhty6_lbl 05 `"Lone mother"', add
label define at01a_hhty6_lbl 06 `"Lone father"', add
label define at01a_hhty6_lbl 07 `"Household with two or more families"', add
label define at01a_hhty6_lbl 08 `"Single person household, male"', add
label define at01a_hhty6_lbl 09 `"Single person household, female"', add
label define at01a_hhty6_lbl 10 `"Non-family, multi-person household"', add
label define at01a_hhty6_lbl 11 `"Institutional household"', add
label values at01a_hhty6 at01a_hhty6_lbl

label define at01a_hhty7_lbl 01 `"Couple, no child, wife less that age 40, no other person"'
label define at01a_hhty7_lbl 02 `"Couple, no child, wife less that age 40, with others"', add
label define at01a_hhty7_lbl 03 `"Family with children, youngest child under 6"', add
label define at01a_hhty7_lbl 04 `"Family with children, youngest child 6 to 14"', add
label define at01a_hhty7_lbl 05 `"Family with children, all children 15+ old"', add
label define at01a_hhty7_lbl 06 `"Couple, no child, wife 40+ years old"', add
label define at01a_hhty7_lbl 07 `"Single person household, less that age 40 years old"', add
label define at01a_hhty7_lbl 08 `"Single person household, 40+ years old"', add
label define at01a_hhty7_lbl 09 `"Non-family, multi-person household"', add
label define at01a_hhty7_lbl 10 `"Institutional household"', add
label values at01a_hhty7 at01a_hhty7_lbl

label define at01a_pernsup_lbl 0 `"0"'
label define at01a_pernsup_lbl 1 `"1"', add
label define at01a_pernsup_lbl 2 `"2"', add
label define at01a_pernsup_lbl 3 `"3"', add
label define at01a_pernsup_lbl 4 `"4"', add
label define at01a_pernsup_lbl 5 `"5+"', add
label values at01a_pernsup at01a_pernsup_lbl

label define at01a_hdcohab_lbl 1 `"Married, same household as spouse"'
label define at01a_hdcohab_lbl 2 `"Married, not same household as spouse"', add
label define at01a_hdcohab_lbl 3 `"In consensual union, same household as partner"', add
label define at01a_hdcohab_lbl 4 `"Neither married nor in consensual union"', add
label values at01a_hdcohab at01a_hdcohab_lbl

label define at01a_tenure1_lbl 1 `"Building owner's own use"'
label define at01a_tenure1_lbl 2 `"Freehold dwelling (owner used)"', add
label define at01a_tenure1_lbl 3 `"Rent (subject to Rent Act or to 'WGG'-Act)"', add
label define at01a_tenure1_lbl 4 `"Company-owned dwelling, apartment provided as income"', add
label define at01a_tenure1_lbl 5 `"Other form of tenure"', add
label define at01a_tenure1_lbl 9 `"NIU (not in universe)"', add
label values at01a_tenure1 at01a_tenure1_lbl

label define at01a_perndo_lbl 1 `"1"'
label define at01a_perndo_lbl 2 `"2"', add
label define at01a_perndo_lbl 3 `"3"', add
label define at01a_perndo_lbl 4 `"4"', add
label define at01a_perndo_lbl 5 `"5"', add
label define at01a_perndo_lbl 6 `"6"', add
label define at01a_perndo_lbl 7 `"7"', add
label define at01a_perndo_lbl 8 `"8+"', add
label define at01a_perndo_lbl 9 `"NIU (not in universe)"', add
label values at01a_perndo at01a_perndo_lbl

label define at01a_roomdw1_lbl 01 `"1"'
label define at01a_roomdw1_lbl 02 `"2"', add
label define at01a_roomdw1_lbl 03 `"3"', add
label define at01a_roomdw1_lbl 04 `"4"', add
label define at01a_roomdw1_lbl 05 `"5"', add
label define at01a_roomdw1_lbl 06 `"6"', add
label define at01a_roomdw1_lbl 07 `"7"', add
label define at01a_roomdw1_lbl 08 `"8"', add
label define at01a_roomdw1_lbl 09 `"9"', add
label define at01a_roomdw1_lbl 10 `"10+"', add
label define at01a_roomdw1_lbl 99 `"NIU (not in universe)"', add
label values at01a_roomdw1 at01a_roomdw1_lbl

label define at01a_space1_lbl 1 `"Under 35"'
label define at01a_space1_lbl 2 `"35-44"', add
label define at01a_space1_lbl 3 `"45-60"', add
label define at01a_space1_lbl 4 `"60-90"', add
label define at01a_space1_lbl 5 `"90-110"', add
label define at01a_space1_lbl 6 `"110-130"', add
label define at01a_space1_lbl 7 `"130-150"', add
label define at01a_space1_lbl 8 `"150+"', add
label define at01a_space1_lbl 9 `"NIU (not in universe)"', add
label values at01a_space1 at01a_space1_lbl

label define at01a_watsup_lbl 1 `"Piped water in the dwelling"'
label define at01a_watsup_lbl 2 `"No piped water in the dwelling"', add
label define at01a_watsup_lbl 9 `"NIU (not in universe)"', add
label values at01a_watsup at01a_watsup_lbl

label define at01a_toilet_lbl 1 `"Flush toilet in the dwelling"'
label define at01a_toilet_lbl 2 `"No flush toilet in the dwelling"', add
label define at01a_toilet_lbl 9 `"NIU (not in universe)"', add
label values at01a_toilet at01a_toilet_lbl

label define at01a_facil_lbl 1 `"Bathroom (shower stand) and central heating"'
label define at01a_facil_lbl 2 `"Bathroom (shower stand)"', add
label define at01a_facil_lbl 3 `"Flush toilet and piped water within dwelling"', add
label define at01a_facil_lbl 4 `"Piped water within the dwelling"', add
label define at01a_facil_lbl 5 `"No flush toilet, no piped water in dwelling"', add
label define at01a_facil_lbl 9 `"NIU (not in universe)"', add
label values at01a_facil at01a_facil_lbl

label define at01a_heat_lbl 1 `"District or block heating"'
label define at01a_heat_lbl 2 `"Building central heating"', add
label define at01a_heat_lbl 3 `"Gas convectors"', add
label define at01a_heat_lbl 4 `"Electric heating (permanently attached radiators)"', add
label define at01a_heat_lbl 5 `"Central heating system for apartment (single-story heating system)"', add
label define at01a_heat_lbl 6 `"Individual stove"', add
label define at01a_heat_lbl 9 `"NIU (not in universe)"', add
label values at01a_heat at01a_heat_lbl

label define at01a_fuelht_lbl 0 `"NIU (not in universe)"'
label define at01a_fuelht_lbl 1 `"Distance (community) heating"', add
label define at01a_fuelht_lbl 2 `"Wood"', add
label define at01a_fuelht_lbl 3 `"Coal, coke, briquettes"', add
label define at01a_fuelht_lbl 4 `"Electricity"', add
label define at01a_fuelht_lbl 5 `"Heating oil, fuel oil"', add
label define at01a_fuelht_lbl 6 `"Town gas, natural gas"', add
label define at01a_fuelht_lbl 7 `"Liquefied petroleum gas"', add
label define at01a_fuelht_lbl 8 `"Wood shavings, saw dust (building central heating)"', add
label define at01a_fuelht_lbl 9 `"Other fuel"', add
label values at01a_fuelht at01a_fuelht_lbl

label define at01a_story_lbl 01 `"In the cellar (basement)"'
label define at01a_story_lbl 02 `"On the ground level"', add
label define at01a_story_lbl 03 `"On an intermediate floor (raised ground floor, mezzaine)"', add
label define at01a_story_lbl 04 `"On the first floor"', add
label define at01a_story_lbl 05 `"On the 2nd floor"', add
label define at01a_story_lbl 06 `"On the 3rd floor"', add
label define at01a_story_lbl 07 `"On the 4th floor"', add
label define at01a_story_lbl 08 `"On the 5th to 9th floor"', add
label define at01a_story_lbl 09 `"On the 10th floor or higher"', add
label define at01a_story_lbl 10 `"In a habitable attic"', add
label define at01a_story_lbl 99 `"NIU (not in universe)"', add
label values at01a_story at01a_story_lbl

label define at01a_owner1_lbl 1 `"Private owner(s)"'
label define at01a_owner1_lbl 2 `"Government owned"', add
label define at01a_owner1_lbl 3 `"Non-profit building association"', add
label define at01a_owner1_lbl 4 `"Other legal entity"', add
label define at01a_owner1_lbl 9 `"NIU (not in universe)"', add
label values at01a_owner1 at01a_owner1_lbl

label define at01a_conyr1_lbl 1 `"Before 1919"'
label define at01a_conyr1_lbl 2 `"1919 to 1944"', add
label define at01a_conyr1_lbl 3 `"1945 to 1960"', add
label define at01a_conyr1_lbl 4 `"1961 to 1980"', add
label define at01a_conyr1_lbl 5 `"1981 to 1990"', add
label define at01a_conyr1_lbl 6 `"1991 or later"', add
label define at01a_conyr1_lbl 7 `"Unknown"', add
label define at01a_conyr1_lbl 9 `"NIU (not in universe)"', add
label values at01a_conyr1 at01a_conyr1_lbl

label define at01a_dwn1_lbl 1 `"0"'
label define at01a_dwn1_lbl 2 `"1"', add
label define at01a_dwn1_lbl 3 `"2"', add
label define at01a_dwn1_lbl 4 `"3 to 5"', add
label define at01a_dwn1_lbl 5 `"6 to 10"', add
label define at01a_dwn1_lbl 6 `"11 to 20"', add
label define at01a_dwn1_lbl 7 `"21+"', add
label define at01a_dwn1_lbl 9 `"NIU (not in universe)"', add
label values at01a_dwn1 at01a_dwn1_lbl

label define at01a_pernum_lbl 00 `"0"'
label define at01a_pernum_lbl 01 `"1"', add
label define at01a_pernum_lbl 02 `"2"', add
label define at01a_pernum_lbl 03 `"3"', add
label define at01a_pernum_lbl 04 `"4"', add
label define at01a_pernum_lbl 05 `"5"', add
label define at01a_pernum_lbl 06 `"6"', add
label define at01a_pernum_lbl 07 `"7"', add
label define at01a_pernum_lbl 08 `"8"', add
label define at01a_pernum_lbl 09 `"9"', add
label define at01a_pernum_lbl 10 `"10"', add
label define at01a_pernum_lbl 11 `"11"', add
label define at01a_pernum_lbl 12 `"12"', add
label define at01a_pernum_lbl 13 `"13"', add
label define at01a_pernum_lbl 14 `"14"', add
label define at01a_pernum_lbl 15 `"15"', add
label define at01a_pernum_lbl 16 `"16"', add
label define at01a_pernum_lbl 17 `"17"', add
label define at01a_pernum_lbl 18 `"18"', add
label define at01a_pernum_lbl 19 `"19"', add
label define at01a_pernum_lbl 20 `"20"', add
label define at01a_pernum_lbl 21 `"21"', add
label define at01a_pernum_lbl 22 `"22"', add
label define at01a_pernum_lbl 23 `"23"', add
label define at01a_pernum_lbl 24 `"24"', add
label define at01a_pernum_lbl 25 `"25"', add
label define at01a_pernum_lbl 26 `"26"', add
label define at01a_pernum_lbl 27 `"27"', add
label define at01a_pernum_lbl 28 `"28"', add
label define at01a_pernum_lbl 29 `"29"', add
label define at01a_pernum_lbl 30 `"30"', add
label values at01a_pernum at01a_pernum_lbl

label define at01a_famnum_lbl 0 `"Non-related person"'
label define at01a_famnum_lbl 1 `"1"', add
label define at01a_famnum_lbl 2 `"2"', add
label define at01a_famnum_lbl 3 `"3"', add
label define at01a_famnum_lbl 4 `"4"', add
label define at01a_famnum_lbl 5 `"5"', add
label define at01a_famnum_lbl 9 `"9"', add
label values at01a_famnum at01a_famnum_lbl

label define at01a_biryr_lbl 1900 `"1900 or earlier"'
label define at01a_biryr_lbl 1901 `"1901"', add
label define at01a_biryr_lbl 1902 `"1902"', add
label define at01a_biryr_lbl 1903 `"1903"', add
label define at01a_biryr_lbl 1904 `"1904"', add
label define at01a_biryr_lbl 1905 `"1905"', add
label define at01a_biryr_lbl 1906 `"1906"', add
label define at01a_biryr_lbl 1907 `"1907"', add
label define at01a_biryr_lbl 1908 `"1908"', add
label define at01a_biryr_lbl 1909 `"1909"', add
label define at01a_biryr_lbl 1910 `"1910"', add
label define at01a_biryr_lbl 1911 `"1911"', add
label define at01a_biryr_lbl 1912 `"1912"', add
label define at01a_biryr_lbl 1913 `"1913"', add
label define at01a_biryr_lbl 1914 `"1914"', add
label define at01a_biryr_lbl 1915 `"1915"', add
label define at01a_biryr_lbl 1916 `"1916"', add
label define at01a_biryr_lbl 1917 `"1917"', add
label define at01a_biryr_lbl 1918 `"1918"', add
label define at01a_biryr_lbl 1919 `"1919"', add
label define at01a_biryr_lbl 1920 `"1920"', add
label define at01a_biryr_lbl 1921 `"1921"', add
label define at01a_biryr_lbl 1922 `"1922"', add
label define at01a_biryr_lbl 1923 `"1923"', add
label define at01a_biryr_lbl 1924 `"1924"', add
label define at01a_biryr_lbl 1925 `"1925"', add
label define at01a_biryr_lbl 1926 `"1926"', add
label define at01a_biryr_lbl 1927 `"1927"', add
label define at01a_biryr_lbl 1928 `"1928"', add
label define at01a_biryr_lbl 1929 `"1929"', add
label define at01a_biryr_lbl 1930 `"1930"', add
label define at01a_biryr_lbl 1931 `"1931"', add
label define at01a_biryr_lbl 1932 `"1932"', add
label define at01a_biryr_lbl 1933 `"1933"', add
label define at01a_biryr_lbl 1934 `"1934"', add
label define at01a_biryr_lbl 1935 `"1935"', add
label define at01a_biryr_lbl 1936 `"1936"', add
label define at01a_biryr_lbl 1937 `"1937"', add
label define at01a_biryr_lbl 1938 `"1938"', add
label define at01a_biryr_lbl 1939 `"1939"', add
label define at01a_biryr_lbl 1940 `"1940"', add
label define at01a_biryr_lbl 1941 `"1941"', add
label define at01a_biryr_lbl 1942 `"1942"', add
label define at01a_biryr_lbl 1943 `"1943"', add
label define at01a_biryr_lbl 1944 `"1944"', add
label define at01a_biryr_lbl 1945 `"1945"', add
label define at01a_biryr_lbl 1946 `"1946"', add
label define at01a_biryr_lbl 1947 `"1947"', add
label define at01a_biryr_lbl 1948 `"1948"', add
label define at01a_biryr_lbl 1949 `"1949"', add
label define at01a_biryr_lbl 1950 `"1950"', add
label define at01a_biryr_lbl 1951 `"1951"', add
label define at01a_biryr_lbl 1952 `"1952"', add
label define at01a_biryr_lbl 1953 `"1953"', add
label define at01a_biryr_lbl 1954 `"1954"', add
label define at01a_biryr_lbl 1955 `"1955"', add
label define at01a_biryr_lbl 1956 `"1956"', add
label define at01a_biryr_lbl 1957 `"1957"', add
label define at01a_biryr_lbl 1958 `"1958"', add
label define at01a_biryr_lbl 1959 `"1959"', add
label define at01a_biryr_lbl 1960 `"1960"', add
label define at01a_biryr_lbl 1961 `"1961"', add
label define at01a_biryr_lbl 1962 `"1962"', add
label define at01a_biryr_lbl 1963 `"1963"', add
label define at01a_biryr_lbl 1964 `"1964"', add
label define at01a_biryr_lbl 1965 `"1965"', add
label define at01a_biryr_lbl 1966 `"1966"', add
label define at01a_biryr_lbl 1967 `"1967"', add
label define at01a_biryr_lbl 1968 `"1968"', add
label define at01a_biryr_lbl 1969 `"1969"', add
label define at01a_biryr_lbl 1970 `"1970"', add
label define at01a_biryr_lbl 1971 `"1971"', add
label define at01a_biryr_lbl 1972 `"1972"', add
label define at01a_biryr_lbl 1973 `"1973"', add
label define at01a_biryr_lbl 1974 `"1974"', add
label define at01a_biryr_lbl 1975 `"1975"', add
label define at01a_biryr_lbl 1976 `"1976"', add
label define at01a_biryr_lbl 1977 `"1977"', add
label define at01a_biryr_lbl 1978 `"1978"', add
label define at01a_biryr_lbl 1979 `"1979"', add
label define at01a_biryr_lbl 1980 `"1980"', add
label define at01a_biryr_lbl 1981 `"1981"', add
label define at01a_biryr_lbl 1982 `"1982"', add
label define at01a_biryr_lbl 1983 `"1983"', add
label define at01a_biryr_lbl 1984 `"1984"', add
label define at01a_biryr_lbl 1985 `"1985"', add
label define at01a_biryr_lbl 1986 `"1986"', add
label define at01a_biryr_lbl 1987 `"1987"', add
label define at01a_biryr_lbl 1988 `"1988"', add
label define at01a_biryr_lbl 1989 `"1989"', add
label define at01a_biryr_lbl 1990 `"1990"', add
label define at01a_biryr_lbl 1991 `"1991"', add
label define at01a_biryr_lbl 1992 `"1992"', add
label define at01a_biryr_lbl 1993 `"1993"', add
label define at01a_biryr_lbl 1994 `"1994"', add
label define at01a_biryr_lbl 1995 `"1995"', add
label define at01a_biryr_lbl 1996 `"1996"', add
label define at01a_biryr_lbl 1997 `"1997"', add
label define at01a_biryr_lbl 1998 `"1998"', add
label define at01a_biryr_lbl 1999 `"1999"', add
label define at01a_biryr_lbl 2000 `"2000"', add
label define at01a_biryr_lbl 2001 `"2001"', add
label values at01a_biryr at01a_biryr_lbl

label define at01a_age_lbl 00 `"Less than 1 year"'
label define at01a_age_lbl 01 `"1"', add
label define at01a_age_lbl 02 `"2"', add
label define at01a_age_lbl 03 `"3"', add
label define at01a_age_lbl 04 `"4"', add
label define at01a_age_lbl 05 `"5"', add
label define at01a_age_lbl 06 `"6"', add
label define at01a_age_lbl 07 `"7"', add
label define at01a_age_lbl 08 `"8"', add
label define at01a_age_lbl 09 `"9"', add
label define at01a_age_lbl 10 `"10"', add
label define at01a_age_lbl 11 `"11"', add
label define at01a_age_lbl 12 `"12"', add
label define at01a_age_lbl 13 `"13"', add
label define at01a_age_lbl 14 `"14"', add
label define at01a_age_lbl 15 `"15"', add
label define at01a_age_lbl 16 `"16"', add
label define at01a_age_lbl 17 `"17"', add
label define at01a_age_lbl 18 `"18"', add
label define at01a_age_lbl 19 `"19"', add
label define at01a_age_lbl 20 `"20"', add
label define at01a_age_lbl 21 `"21"', add
label define at01a_age_lbl 22 `"22"', add
label define at01a_age_lbl 23 `"23"', add
label define at01a_age_lbl 24 `"24"', add
label define at01a_age_lbl 25 `"25"', add
label define at01a_age_lbl 26 `"26"', add
label define at01a_age_lbl 27 `"27"', add
label define at01a_age_lbl 28 `"28"', add
label define at01a_age_lbl 29 `"29"', add
label define at01a_age_lbl 30 `"30"', add
label define at01a_age_lbl 31 `"31"', add
label define at01a_age_lbl 32 `"32"', add
label define at01a_age_lbl 33 `"33"', add
label define at01a_age_lbl 34 `"34"', add
label define at01a_age_lbl 35 `"35"', add
label define at01a_age_lbl 36 `"36"', add
label define at01a_age_lbl 37 `"37"', add
label define at01a_age_lbl 38 `"38"', add
label define at01a_age_lbl 39 `"39"', add
label define at01a_age_lbl 40 `"40"', add
label define at01a_age_lbl 41 `"41"', add
label define at01a_age_lbl 42 `"42"', add
label define at01a_age_lbl 43 `"43"', add
label define at01a_age_lbl 44 `"44"', add
label define at01a_age_lbl 45 `"45"', add
label define at01a_age_lbl 46 `"46"', add
label define at01a_age_lbl 47 `"47"', add
label define at01a_age_lbl 48 `"48"', add
label define at01a_age_lbl 49 `"49"', add
label define at01a_age_lbl 50 `"50"', add
label define at01a_age_lbl 51 `"51"', add
label define at01a_age_lbl 52 `"52"', add
label define at01a_age_lbl 53 `"53"', add
label define at01a_age_lbl 54 `"54"', add
label define at01a_age_lbl 55 `"55"', add
label define at01a_age_lbl 56 `"56"', add
label define at01a_age_lbl 57 `"57"', add
label define at01a_age_lbl 58 `"58"', add
label define at01a_age_lbl 59 `"59"', add
label define at01a_age_lbl 60 `"60"', add
label define at01a_age_lbl 61 `"61"', add
label define at01a_age_lbl 62 `"62"', add
label define at01a_age_lbl 63 `"63"', add
label define at01a_age_lbl 64 `"64"', add
label define at01a_age_lbl 65 `"65"', add
label define at01a_age_lbl 66 `"66"', add
label define at01a_age_lbl 67 `"67"', add
label define at01a_age_lbl 68 `"68"', add
label define at01a_age_lbl 69 `"69"', add
label define at01a_age_lbl 70 `"70"', add
label define at01a_age_lbl 71 `"71"', add
label define at01a_age_lbl 72 `"72"', add
label define at01a_age_lbl 73 `"73"', add
label define at01a_age_lbl 74 `"74"', add
label define at01a_age_lbl 75 `"75"', add
label define at01a_age_lbl 76 `"76"', add
label define at01a_age_lbl 77 `"77"', add
label define at01a_age_lbl 78 `"78"', add
label define at01a_age_lbl 79 `"79"', add
label define at01a_age_lbl 80 `"80"', add
label define at01a_age_lbl 81 `"81"', add
label define at01a_age_lbl 82 `"82"', add
label define at01a_age_lbl 83 `"83"', add
label define at01a_age_lbl 84 `"84"', add
label define at01a_age_lbl 85 `"85"', add
label define at01a_age_lbl 86 `"86"', add
label define at01a_age_lbl 87 `"87"', add
label define at01a_age_lbl 88 `"88"', add
label define at01a_age_lbl 89 `"89"', add
label define at01a_age_lbl 90 `"90"', add
label define at01a_age_lbl 91 `"91"', add
label define at01a_age_lbl 92 `"92"', add
label define at01a_age_lbl 93 `"93"', add
label define at01a_age_lbl 94 `"94"', add
label define at01a_age_lbl 95 `"95"', add
label define at01a_age_lbl 96 `"96"', add
label define at01a_age_lbl 97 `"97"', add
label define at01a_age_lbl 98 `"98"', add
label define at01a_age_lbl 99 `"99+ years old"', add
label values at01a_age at01a_age_lbl

label define at01a_sex_lbl 1 `"Male"'
label define at01a_sex_lbl 2 `"Female"', add
label values at01a_sex at01a_sex_lbl

label define at01a_marst_lbl 1 `"Single"'
label define at01a_marst_lbl 2 `"Married"', add
label define at01a_marst_lbl 3 `"Widowed"', add
label define at01a_marst_lbl 4 `"Divorced"', add
label values at01a_marst at01a_marst_lbl

label define at01a_cohab_lbl 1 `"Married, same household as spouse"'
label define at01a_cohab_lbl 2 `"Married, not same household as spouse"', add
label define at01a_cohab_lbl 3 `"In consensual union, same household as partner"', add
label define at01a_cohab_lbl 4 `"Neither married nor in consensual union"', add
label values at01a_cohab at01a_cohab_lbl

label define at01a_citiz_lbl 01 `"Austria"'
label define at01a_citiz_lbl 02 `"Albania"', add
label define at01a_citiz_lbl 04 `"Belgium"', add
label define at01a_citiz_lbl 05 `"Bulgaria"', add
label define at01a_citiz_lbl 06 `"Denmark"', add
label define at01a_citiz_lbl 07 `"Germany, Federal Republic"', add
label define at01a_citiz_lbl 09 `"Finland"', add
label define at01a_citiz_lbl 10 `"France"', add
label define at01a_citiz_lbl 11 `"Greece"', add
label define at01a_citiz_lbl 12 `"United Kingdom"', add
label define at01a_citiz_lbl 13 `"Ireland"', add
label define at01a_citiz_lbl 15 `"Italy"', add
label define at01a_citiz_lbl 16 `"Yugoslavia"', add
label define at01a_citiz_lbl 17 `"Liechtenstein"', add
label define at01a_citiz_lbl 18 `"Luxembourg"', add
label define at01a_citiz_lbl 21 `"Netherlands"', add
label define at01a_citiz_lbl 22 `"Norway"', add
label define at01a_citiz_lbl 23 `"Poland"', add
label define at01a_citiz_lbl 24 `"Portugal"', add
label define at01a_citiz_lbl 25 `"Romania"', add
label define at01a_citiz_lbl 27 `"Sweden"', add
label define at01a_citiz_lbl 28 `"Switzerland"', add
label define at01a_citiz_lbl 29 `"Soviet Union"', add
label define at01a_citiz_lbl 30 `"Spain"', add
label define at01a_citiz_lbl 31 `"Czechoslovakia"', add
label define at01a_citiz_lbl 32 `"Hungary"', add
label define at01a_citiz_lbl 34 `"Egypt"', add
label define at01a_citiz_lbl 35 `"Algeria"', add
label define at01a_citiz_lbl 37 `"Morocco"', add
label define at01a_citiz_lbl 39 `"Nigeria"', add
label define at01a_citiz_lbl 40 `"Sudan"', add
label define at01a_citiz_lbl 41 `"South Africa"', add
label define at01a_citiz_lbl 42 `"Tunisia"', add
label define at01a_citiz_lbl 43 `"Other African countries"', add
label define at01a_citiz_lbl 44 `"Bangladesh"', add
label define at01a_citiz_lbl 45 `"China"', add
label define at01a_citiz_lbl 46 `"India"', add
label define at01a_citiz_lbl 47 `"Indonesia"', add
label define at01a_citiz_lbl 48 `"Iraq"', add
label define at01a_citiz_lbl 49 `"Iran"', add
label define at01a_citiz_lbl 50 `"Israel"', add
label define at01a_citiz_lbl 51 `"Japan"', add
label define at01a_citiz_lbl 53 `"Jordan"', add
label define at01a_citiz_lbl 55 `"Korea South, Republic"', add
label define at01a_citiz_lbl 56 `"Lebanon"', add
label define at01a_citiz_lbl 57 `"Pakistan"', add
label define at01a_citiz_lbl 58 `"Philippines"', add
label define at01a_citiz_lbl 60 `"Syrian Arab Republic"', add
label define at01a_citiz_lbl 61 `"Thailand"', add
label define at01a_citiz_lbl 62 `"Turkey"', add
label define at01a_citiz_lbl 63 `"Viet Nam"', add
label define at01a_citiz_lbl 66 `"Other Asian countries"', add
label define at01a_citiz_lbl 68 `"Brazil"', add
label define at01a_citiz_lbl 70 `"Canada"', add
label define at01a_citiz_lbl 71 `"Mexico"', add
label define at01a_citiz_lbl 72 `"Peru"', add
label define at01a_citiz_lbl 73 `"United States"', add
label define at01a_citiz_lbl 74 `"Other American countries"', add
label define at01a_citiz_lbl 75 `"Australia"', add
label define at01a_citiz_lbl 78 `"Stateless person"', add
label define at01a_citiz_lbl 80 `"Unsettled"', add
label define at01a_citiz_lbl 99 `"Unknown, and other countries not elsewhere classifed"', add
label values at01a_citiz at01a_citiz_lbl

label define at01a_bplc_lbl 01 `"Austria"'
label define at01a_bplc_lbl 02 `"Belgium"', add
label define at01a_bplc_lbl 03 `"Denmark"', add
label define at01a_bplc_lbl 04 `"Germany"', add
label define at01a_bplc_lbl 05 `"Finland"', add
label define at01a_bplc_lbl 06 `"France"', add
label define at01a_bplc_lbl 07 `"Greece"', add
label define at01a_bplc_lbl 08 `"Ireland"', add
label define at01a_bplc_lbl 09 `"Italy"', add
label define at01a_bplc_lbl 10 `"Luxembourg"', add
label define at01a_bplc_lbl 11 `"Netherlands"', add
label define at01a_bplc_lbl 12 `"Portugal"', add
label define at01a_bplc_lbl 13 `"Sweden"', add
label define at01a_bplc_lbl 14 `"Spain"', add
label define at01a_bplc_lbl 15 `"United Kingdom"', add
label define at01a_bplc_lbl 17 `"Liechtenstein"', add
label define at01a_bplc_lbl 18 `"Norway"', add
label define at01a_bplc_lbl 19 `"Switzerland"', add
label define at01a_bplc_lbl 20 `"Armenia"', add
label define at01a_bplc_lbl 22 `"Belarus"', add
label define at01a_bplc_lbl 23 `"Georgia"', add
label define at01a_bplc_lbl 24 `"Moldova"', add
label define at01a_bplc_lbl 25 `"Russian Federation"', add
label define at01a_bplc_lbl 26 `"Ukraine"', add
label define at01a_bplc_lbl 27 `"Albania"', add
label define at01a_bplc_lbl 28 `"Bosnia and Herzegovina"', add
label define at01a_bplc_lbl 29 `"Bulgaria"', add
label define at01a_bplc_lbl 31 `"Yugoslavia (Serbia, Montenegro)"', add
label define at01a_bplc_lbl 32 `"Croatia"', add
label define at01a_bplc_lbl 33 `"Lithuania"', add
label define at01a_bplc_lbl 34 `"Latvia"', add
label define at01a_bplc_lbl 35 `"Macedonia"', add
label define at01a_bplc_lbl 36 `"Poland"', add
label define at01a_bplc_lbl 37 `"Romania"', add
label define at01a_bplc_lbl 38 `"Slovakia"', add
label define at01a_bplc_lbl 39 `"Slovenia"', add
label define at01a_bplc_lbl 40 `"Czech Republic"', add
label define at01a_bplc_lbl 41 `"Hungary"', add
label define at01a_bplc_lbl 42 `"Andorra"', add
label define at01a_bplc_lbl 45 `"San Marino"', add
label define at01a_bplc_lbl 46 `"Turkey"', add
label define at01a_bplc_lbl 47 `"Cyprus"', add
label define at01a_bplc_lbl 48 `"Outer Europe -- new independent countries"', add
label define at01a_bplc_lbl 49 `"Other Europe, response suppressed"', add
label define at01a_bplc_lbl 50 `"Iraq"', add
label define at01a_bplc_lbl 51 `"Israel"', add
label define at01a_bplc_lbl 53 `"Jordan"', add
label define at01a_bplc_lbl 54 `"Lebanon"', add
label define at01a_bplc_lbl 55 `"Palestine Territories"', add
label define at01a_bplc_lbl 57 `"Syria"', add
label define at01a_bplc_lbl 58 `"Other countries of the Near East"', add
label define at01a_bplc_lbl 59 `"Bangladesh"', add
label define at01a_bplc_lbl 60 `"China"', add
label define at01a_bplc_lbl 61 `"India"', add
label define at01a_bplc_lbl 62 `"Indonesia"', add
label define at01a_bplc_lbl 63 `"Iran"', add
label define at01a_bplc_lbl 64 `"Japan"', add
label define at01a_bplc_lbl 65 `"Kampuchea"', add
label define at01a_bplc_lbl 66 `"Korea South Republic"', add
label define at01a_bplc_lbl 67 `"Pakistan"', add
label define at01a_bplc_lbl 68 `"Philippines"', add
label define at01a_bplc_lbl 69 `"China, Republic (Taiwan)"', add
label define at01a_bplc_lbl 70 `"Thailand"', add
label define at01a_bplc_lbl 71 `"Viet Nam"', add
label define at01a_bplc_lbl 72 `"Other Asian countries"', add
label define at01a_bplc_lbl 73 `"United States"', add
label define at01a_bplc_lbl 74 `"Canada"', add
label define at01a_bplc_lbl 75 `"Argentina"', add
label define at01a_bplc_lbl 76 `"Brazil"', add
label define at01a_bplc_lbl 77 `"Chile"', add
label define at01a_bplc_lbl 78 `"Mexico"', add
label define at01a_bplc_lbl 79 `"Peru"', add
label define at01a_bplc_lbl 80 `"Other Central and South American countries"', add
label define at01a_bplc_lbl 81 `"Egypt"', add
label define at01a_bplc_lbl 82 `"Algeria"', add
label define at01a_bplc_lbl 84 `"Morocco"', add
label define at01a_bplc_lbl 85 `"Tunisia"', add
label define at01a_bplc_lbl 86 `"Nigeria"', add
label define at01a_bplc_lbl 87 `"Sudan"', add
label define at01a_bplc_lbl 88 `"South Africa"', add
label define at01a_bplc_lbl 89 `"Other African countries"', add
label define at01a_bplc_lbl 90 `"Australia"', add
label define at01a_bplc_lbl 92 `"Other Oceania"', add
label define at01a_bplc_lbl 99 `"Unknown"', add
label values at01a_bplc at01a_bplc_lbl

label define at01a_religd_lbl 01 `"Roman Catholic church"'
label define at01a_religd_lbl 02 `"Greek Oriental church"', add
label define at01a_religd_lbl 07 `"Syrian Catholic church"', add
label define at01a_religd_lbl 09 `"Other Catholic church without further details"', add
label define at01a_religd_lbl 10 `"Orthodox church without further details"', add
label define at01a_religd_lbl 11 `"Greek Orthodox church"', add
label define at01a_religd_lbl 12 `"Bulgarian Orthodox church"', add
label define at01a_religd_lbl 13 `"Romanian Orthodox church"', add
label define at01a_religd_lbl 14 `"Russian Orthodox church"', add
label define at01a_religd_lbl 15 `"Serbian Orthodox church"', add
label define at01a_religd_lbl 17 `"Syrian Orthodox church"', add
label define at01a_religd_lbl 18 `"Copt Orthodox church"', add
label define at01a_religd_lbl 19 `"Armenian Apostolic church"', add
label define at01a_religd_lbl 21 `"Protestant church without further details"', add
label define at01a_religd_lbl 22 `"Protestant church (Augsburg confession)"', add
label define at01a_religd_lbl 23 `"Protestant church (Helvetic confession)"', add
label define at01a_religd_lbl 24 `"Old Catholic church"', add
label define at01a_religd_lbl 25 `"Church of England"', add
label define at01a_religd_lbl 26 `"Methodist church"', add
label define at01a_religd_lbl 27 `"Baptist churches"', add
label define at01a_religd_lbl 28 `"Evangelical churches"', add
label define at01a_religd_lbl 29 `"Free Christian community/Pentecostal"', add
label define at01a_religd_lbl 30 `"Mennonite church"', add
label define at01a_religd_lbl 31 `"Seventh-day Adventist church"', add
label define at01a_religd_lbl 32 `"Christian Community, movement for religious renewal"', add
label define at01a_religd_lbl 33 `"Jehovah's Witnesses"', add
label define at01a_religd_lbl 34 `"New Apostolic church"', add
label define at01a_religd_lbl 35 `"Church of Jesus Christ of Latter-day Saints"', add
label define at01a_religd_lbl 36 `"Christian community without further details"', add
label define at01a_religd_lbl 37 `"Jewish religious community"', add
label define at01a_religd_lbl 38 `"Islamic religious community"', add
label define at01a_religd_lbl 39 `"Buddhist religious community"', add
label define at01a_religd_lbl 40 `"Baha'i"', add
label define at01a_religd_lbl 41 `"Hindu"', add
label define at01a_religd_lbl 42 `"Sikh"', add
label define at01a_religd_lbl 44 `"Unification church (Moon)"', add
label define at01a_religd_lbl 45 `"Other communities"', add
label define at01a_religd_lbl 46 `"Without religion"', add
label define at01a_religd_lbl 99 `"Unknown"', add
label values at01a_religd at01a_religd_lbl

label define at01a_edattan1_lbl 0 `"NIU (not in universe)"'
label define at01a_edattan1_lbl 1 `"University, Polytechnic"', add
label define at01a_edattan1_lbl 2 `"Post-secondary college"', add
label define at01a_edattan1_lbl 3 `"Post-secondary course in technical or vocational education"', add
label define at01a_edattan1_lbl 4 `"Higher technical and vocational secondary school"', add
label define at01a_edattan1_lbl 5 `"Higher general secondary school"', add
label define at01a_edattan1_lbl 6 `"Intermediate technical and vocational secondary school"', add
label define at01a_edattan1_lbl 7 `"Apprenticeship training"', add
label define at01a_edattan1_lbl 8 `"Compulsory secondary school"', add
label define at01a_edattan1_lbl 9 `"Unknown"', add
label values at01a_edattan1 at01a_edattan1_lbl

label define at01a_edattan3_lbl 1 `"ISCED 2 - education at lower secondary stage"'
label define at01a_edattan3_lbl 2 `"ISCED 3C - education at upper secondary stage (short form)"', add
label define at01a_edattan3_lbl 3 `"ISCED 3B - education at upper secondary stage"', add
label define at01a_edattan3_lbl 4 `"ISCED 3A - education at upper secondary stage"', add
label define at01a_edattan3_lbl 5 `"ISCED 4 - post-secondary education, not tertiary"', add
label define at01a_edattan3_lbl 6 `"ISCED 5B - tertiary education"', add
label define at01a_edattan3_lbl 7 `"ISCED 5A/6 - tertiary education"', add
label define at01a_edattan3_lbl 8 `"Unknown"', add
label define at01a_edattan3_lbl 9 `"NIU (not in universe)"', add
label values at01a_edattan3 at01a_edattan3_lbl

label define at01a_edfldd_lbl 001 `"University, college, field unknown"'
label define at01a_edfldd_lbl 002 `"Theology"', add
label define at01a_edfldd_lbl 003 `"Law"', add
label define at01a_edfldd_lbl 004 `"Social or economic sciences, field unknown"', add
label define at01a_edfldd_lbl 005 `"National economy"', add
label define at01a_edfldd_lbl 006 `"Commerce"', add
label define at01a_edfldd_lbl 007 `"Business administration"', add
label define at01a_edfldd_lbl 008 `"Economics and computer science"', add
label define at01a_edfldd_lbl 009 `"Sociology"', add
label define at01a_edfldd_lbl 010 `"Other social and economic sciences"', add
label define at01a_edfldd_lbl 011 `"Medicine"', add
label define at01a_edfldd_lbl 012 `"Philosophy faculty, field unknown"', add
label define at01a_edfldd_lbl 013 `"Humanities, field unknown"', add
label define at01a_edfldd_lbl 014 `"Philosophy, philosophy, pedagogy and psychology"', add
label define at01a_edfldd_lbl 015 `"Education science"', add
label define at01a_edfldd_lbl 016 `"Psychology"', add
label define at01a_edfldd_lbl 017 `"Political science"', add
label define at01a_edfldd_lbl 018 `"Journalism, communication science"', add
label define at01a_edfldd_lbl 020 `"Ethnology, ethnic studies"', add
label define at01a_edfldd_lbl 021 `"History"', add
label define at01a_edfldd_lbl 022 `"History of art, music, and theatre studies"', add
label define at01a_edfldd_lbl 024 `"German philology"', add
label define at01a_edfldd_lbl 025 `"English and American philology"', add
label define at01a_edfldd_lbl 026 `"Romance philology"', add
label define at01a_edfldd_lbl 027 `"Slavic philology"', add
label define at01a_edfldd_lbl 028 `"Classical philology"', add
label define at01a_edfldd_lbl 029 `"Other philological-cultural programs"', add
label define at01a_edfldd_lbl 030 `"Translator and interpreter programs"', add
label define at01a_edfldd_lbl 031 `"Natural sciences (technical), field unknown"', add
label define at01a_edfldd_lbl 033 `"Mathematics, geometry and actuarial mathematics"', add
label define at01a_edfldd_lbl 034 `"Physics"', add
label define at01a_edfldd_lbl 035 `"Chemistry"', add
label define at01a_edfldd_lbl 036 `"Geology, geography"', add
label define at01a_edfldd_lbl 037 `"Biology and nutrition science"', add
label define at01a_edfldd_lbl 038 `"Astronomy, meteorology, and geophysics"', add
label define at01a_edfldd_lbl 039 `"Pharmacy"', add
label define at01a_edfldd_lbl 040 `"Sports science and physical training"', add
label define at01a_edfldd_lbl 041 `"Engineering, field unknown"', add
label define at01a_edfldd_lbl 042 `"Civil engineering"', add
label define at01a_edfldd_lbl 043 `"Architecture, urban and regional planning, surveying"', add
label define at01a_edfldd_lbl 044 `"Mechanical engineering"', add
label define at01a_edfldd_lbl 045 `"Electrical engineering, electronics"', add
label define at01a_edfldd_lbl 046 `"Mechatronics"', add
label define at01a_edfldd_lbl 047 `"Computer science, telematics"', add
label define at01a_edfldd_lbl 048 `"Other engineering programs"', add
label define at01a_edfldd_lbl 049 `"Mining sciences, field unknown"', add
label define at01a_edfldd_lbl 050 `"Mining engineering and surveying"', add
label define at01a_edfldd_lbl 051 `"Petroleum engineering"', add
label define at01a_edfldd_lbl 052 `"Metallurgy"', add
label define at01a_edfldd_lbl 053 `"Polymer engineering"', add
label define at01a_edfldd_lbl 055 `"Other mining engineering programs"', add
label define at01a_edfldd_lbl 056 `"Agriculture and forestry, field unknown"', add
label define at01a_edfldd_lbl 057 `"Agriculture"', add
label define at01a_edfldd_lbl 058 `"Landscape planning"', add
label define at01a_edfldd_lbl 059 `"Forestry and wood production"', add
label define at01a_edfldd_lbl 060 `"Agricultural engineering"', add
label define at01a_edfldd_lbl 061 `"Food chemistry and biotechnology"', add
label define at01a_edfldd_lbl 062 `"Veterinary medicine"', add
label define at01a_edfldd_lbl 063 `"University arts and music, field unknown"', add
label define at01a_edfldd_lbl 064 `"Fine arts and applied arts"', add
label define at01a_edfldd_lbl 065 `"Music"', add
label define at01a_edfldd_lbl 066 `"Dramatic arts"', add
label define at01a_edfldd_lbl 068 `"Polytechnic -- field unknown"', add
label define at01a_edfldd_lbl 069 `"Polytechnic -- program in engineering"', add
label define at01a_edfldd_lbl 070 `"Polytechnic -- program in economics"', add
label define at01a_edfldd_lbl 071 `"Polytechnic -- program in tourism"', add
label define at01a_edfldd_lbl 072 `"Polytechnic -- program in media"', add
label define at01a_edfldd_lbl 074 `"Polytechnic -- other programs"', add
label define at01a_edfldd_lbl 076 `"College for social work"', add
label define at01a_edfldd_lbl 077 `"College for training of health professions"', add
label define at01a_edfldd_lbl 078 `"College for teacher training"', add
label define at01a_edfldd_lbl 079 `"Military academy"', add
label define at01a_edfldd_lbl 080 `"Programs in music (teaching qualification test)"', add
label define at01a_edfldd_lbl 082 `"Post-secondary course -- field unknown"', add
label define at01a_edfldd_lbl 083 `"Post-secondary course -- technical, vocational and trade"', add
label define at01a_edfldd_lbl 084 `"Post-secondary course -- construction and wood technology"', add
label define at01a_edfldd_lbl 085 `"Post-secondary course -- chemical engineering"', add
label define at01a_edfldd_lbl 086 `"Post-secondary course -- electrical engineering, electronics, electronic data processing"', add
label define at01a_edfldd_lbl 087 `"Post-secondary course -- mechanical engineering"', add
label define at01a_edfldd_lbl 088 `"Post-secondary course -- materials engineering"', add
label define at01a_edfldd_lbl 090 `"Post-secondary course -- print and graphic"', add
label define at01a_edfldd_lbl 091 `"Post-secondary course -- textile technology"', add
label define at01a_edfldd_lbl 092 `"Post-secondary course -- fashion and clothing"', add
label define at01a_edfldd_lbl 093 `"Post-secondary course -- tourism"', add
label define at01a_edfldd_lbl 095 `"Post-secondary course -- other technical programs"', add
label define at01a_edfldd_lbl 096 `"Post-secondary course -- business administration"', add
label define at01a_edfldd_lbl 099 `"Post-secondary course -- teacher and educational training"', add
label define at01a_edfldd_lbl 100 `"Post-secondary course -- primary school teacher and educational training"', add
label define at01a_edfldd_lbl 101 `"Higher technical and vocational school, field unknown"', add
label define at01a_edfldd_lbl 102 `"Higher technical school, field unknown"', add
label define at01a_edfldd_lbl 103 `"Construction, wood (higher)"', add
label define at01a_edfldd_lbl 104 `"Chemical engineering (higher)"', add
label define at01a_edfldd_lbl 105 `"Electrical engineering, computing (higher)"', add
label define at01a_edfldd_lbl 106 `"Mechanical engineering (higher)"', add
label define at01a_edfldd_lbl 107 `"Materials engineering (higher)"', add
label define at01a_edfldd_lbl 108 `"Precision engineering (higher)"', add
label define at01a_edfldd_lbl 109 `"Printing, graphic arts (higher)"', add
label define at01a_edfldd_lbl 110 `"Textile technology (higher)"', add
label define at01a_edfldd_lbl 111 `"Fashion and clothing Trade (higher)"', add
label define at01a_edfldd_lbl 112 `"Tourism (higher)"', add
label define at01a_edfldd_lbl 113 `"Arts and crafts (higher)"', add
label define at01a_edfldd_lbl 114 `"Other technical and crafts program (higher)"', add
label define at01a_edfldd_lbl 115 `"Higher school for business administration"', add
label define at01a_edfldd_lbl 116 `"Higher school for home economics"', add
label define at01a_edfldd_lbl 117 `"Higher school for agriculture and forestry, field unknown"', add
label define at01a_edfldd_lbl 118 `"Agriculture (higher)"', add
label define at01a_edfldd_lbl 119 `"Special fields in agriculture (higher)"', add
label define at01a_edfldd_lbl 120 `"Forestry (higher)"', add
label define at01a_edfldd_lbl 122 `"Higher school for educator and teacher, training"', add
label define at01a_edfldd_lbl 123 `"School for teacher training"', add
label define at01a_edfldd_lbl 124 `"Higher general secondary school"', add
label define at01a_edfldd_lbl 125 `"Intermediate technical and vocational school, field unknown"', add
label define at01a_edfldd_lbl 126 `"Technical, vocational and trade school, field unknown"', add
label define at01a_edfldd_lbl 127 `"Mining, metallurgy, glasswork (technical college)"', add
label define at01a_edfldd_lbl 128 `"Construction, wood industry (technical college)"', add
label define at01a_edfldd_lbl 129 `"Chemistry (technical college)"', add
label define at01a_edfldd_lbl 130 `"Electrical engineering, electronics (technical college)"', add
label define at01a_edfldd_lbl 131 `"Mechanical engineering (technical college)"', add
label define at01a_edfldd_lbl 132 `"Precision engineering (technical college)"', add
label define at01a_edfldd_lbl 133 `"Metalworking, tool making (technical college)"', add
label define at01a_edfldd_lbl 134 `"Printing, graphic arts (technical college)"', add
label define at01a_edfldd_lbl 135 `"Textile technology (technical college)"', add
label define at01a_edfldd_lbl 136 `"Fashion and clothing trade (technical college)"', add
label define at01a_edfldd_lbl 137 `"Tourism, hotel and restaurant trade (technical college)"', add
label define at01a_edfldd_lbl 138 `"Arts and crafts (technical college)"', add
label define at01a_edfldd_lbl 139 `"Other technical and crafts program (technical college)"', add
label define at01a_edfldd_lbl 140 `"Intermediate commercial school, field unknown"', add
label define at01a_edfldd_lbl 141 `"School for business administration (technical college)"', add
label define at01a_edfldd_lbl 142 `"School for administration and office work (technical college)"', add
label define at01a_edfldd_lbl 143 `"Data processing (technical college)"', add
label define at01a_edfldd_lbl 144 `"Economics, field unknown"', add
label define at01a_edfldd_lbl 145 `"School for home economics (technical college)"', add
label define at01a_edfldd_lbl 146 `"School for home economics, short form"', add
label define at01a_edfldd_lbl 147 `"School for nursing and health care (technical college)"', add
label define at01a_edfldd_lbl 148 `"School for social work (technical college)"', add
label define at01a_edfldd_lbl 149 `"Intermediate agriculture and forestry school, specialization unknown"', add
label define at01a_edfldd_lbl 150 `"Agriculture (technical college)"', add
label define at01a_edfldd_lbl 151 `"Special fields in agriculture (technical college)"', add
label define at01a_edfldd_lbl 152 `"Forestry (technical college)"', add
label define at01a_edfldd_lbl 153 `"Other intermediate vocational school"', add
label define at01a_edfldd_lbl 154 `"Intermediate school for teacher and educator training"', add
label define at01a_edfldd_lbl 155 `"Other intermediate schools"', add
label define at01a_edfldd_lbl 156 `"Apprenticeship training, occupation unknown"', add
label define at01a_edfldd_lbl 157 `"Technical occupations"', add
label define at01a_edfldd_lbl 158 `"Life science and health occupation"', add
label define at01a_edfldd_lbl 159 `"Other technical administrative and finance occupation"', add
label define at01a_edfldd_lbl 160 `"Office clerks"', add
label define at01a_edfldd_lbl 161 `"Personal service occupation"', add
label define at01a_edfldd_lbl 162 `"Agricultural and forestry occupation"', add
label define at01a_edfldd_lbl 163 `"Extraction and building trades occupation"', add
label define at01a_edfldd_lbl 164 `"Metal, machinery and related trades occupation"', add
label define at01a_edfldd_lbl 165 `"Precision and handicraft worker, printer and related trades"', add
label define at01a_edfldd_lbl 166 `"Other craft and related trades occupations"', add
label define at01a_edfldd_lbl 167 `"Stationary plant and related operator"', add
label define at01a_edfldd_lbl 168 `"Machine operators and assemblers"', add
label define at01a_edfldd_lbl 169 `"Drivers and mobile plant operators"', add
label define at01a_edfldd_lbl 170 `"Compulsory secondary school"', add
label define at01a_edfldd_lbl 990 `"Response suppressed"', add
label define at01a_edfldd_lbl 998 `"Unknown"', add
label define at01a_edfldd_lbl 999 `"NIU (not in universe)"', add
label values at01a_edfldd at01a_edfldd_lbl

label define at01a_school_lbl 1 `"Yes"'
label define at01a_school_lbl 2 `"No"', add
label values at01a_school at01a_school_lbl

label define at01a_schtyd_lbl 01 `"Primary school"'
label define at01a_schtyd_lbl 02 `"Lower secondary school"', add
label define at01a_schtyd_lbl 03 `"Higher general secondary school, lower form"', add
label define at01a_schtyd_lbl 04 `"Special needs school"', add
label define at01a_schtyd_lbl 05 `"Pre-vocational year"', add
label define at01a_schtyd_lbl 06 `"Intermediate technical and vocational school"', add
label define at01a_schtyd_lbl 07 `"Higher general secondary school, upper form"', add
label define at01a_schtyd_lbl 08 `"Higher technical and vocational school"', add
label define at01a_schtyd_lbl 09 `"Post-secondary course in technical and vocational education"', add
label define at01a_schtyd_lbl 10 `"University, post-secondary colleges"', add
label define at01a_schtyd_lbl 11 `"Other education"', add
label define at01a_schtyd_lbl 99 `"NIU (not in universe)"', add
label values at01a_schtyd at01a_schtyd_lbl

label define at01a_empst_lbl 01 `"Employed (full time)"'
label define at01a_empst_lbl 02 `"Employed (part time)"', add
label define at01a_empst_lbl 03 `"Marginally employed"', add
label define at01a_empst_lbl 04 `"Compulsory military or non-military service"', add
label define at01a_empst_lbl 05 `"Unemployed"', add
label define at01a_empst_lbl 06 `"Retirement pension"', add
label define at01a_empst_lbl 07 `"Widow's or widower's pension"', add
label define at01a_empst_lbl 08 `"Other income recipient, status unknown"', add
label define at01a_empst_lbl 09 `"Homemaker"', add
label define at01a_empst_lbl 10 `"Pupil under 15 years of age"', add
label define at01a_empst_lbl 11 `"Student of 15 years and over"', add
label define at01a_empst_lbl 12 `"Child not attending school (under 15 years of age)"', add
label define at01a_empst_lbl 13 `"Other dependant 15 years of age and over (not attending school)"', add
label values at01a_empst at01a_empst_lbl

label define at01a_emp_lbl 1 `"Employed"'
label define at01a_emp_lbl 2 `"Unemployed"', add
label define at01a_emp_lbl 3 `"Economically inactive"', add
label values at01a_emp at01a_emp_lbl

label define at01a_ecact_lbl 1 `"Economically active"'
label define at01a_ecact_lbl 2 `"Economically inactive"', add
label values at01a_ecact at01a_ecact_lbl

label define at01a_empstl_lbl 1 `"Employed (without marginally employed)"'
label define at01a_empstl_lbl 2 `"Unemployed"', add
label define at01a_empstl_lbl 3 `"Retirement or widow(er)'s pension"', add
label define at01a_empstl_lbl 4 `"Other income recipient"', add
label define at01a_empstl_lbl 5 `"Homemaker"', add
label define at01a_empstl_lbl 6 `"Child pupil under 15 years of age"', add
label define at01a_empstl_lbl 7 `"Student of 15 years and over"', add
label define at01a_empstl_lbl 8 `"Other dependant of 15 years of age and over (not attending school)"', add
label values at01a_empstl at01a_empstl_lbl

label define at01a_empl_lbl 1 `"Employed"'
label define at01a_empl_lbl 2 `"Unemployed"', add
label define at01a_empl_lbl 3 `"Not economically active"', add
label values at01a_empl at01a_empl_lbl

label define at01a_ecactl_lbl 1 `"Economically active"'
label define at01a_ecactl_lbl 2 `"Not economically active"', add
label values at01a_ecactl at01a_ecactl_lbl

label define at01a_clwk1_lbl 1 `"Self-employed"'
label define at01a_clwk1_lbl 2 `"Unpaid family worker"', add
label define at01a_clwk1_lbl 3 `"Employee, non-manual"', add
label define at01a_clwk1_lbl 4 `"Civil servant"', add
label define at01a_clwk1_lbl 5 `"Skilled manual worker"', add
label define at01a_clwk1_lbl 6 `"Semi-skilled manual worker"', add
label define at01a_clwk1_lbl 7 `"Unskilled manual worker"', add
label define at01a_clwk1_lbl 8 `"Looking for a job for the first time"', add
label define at01a_clwk1_lbl 9 `"Not economically active"', add
label values at01a_clwk1 at01a_clwk1_lbl

label define at01a_clwk3_lbl 1 `"Employer, assistant, unpaid family worker"'
label define at01a_clwk3_lbl 2 `"Employee"', add
label define at01a_clwk3_lbl 3 `"Not economically active"', add
label define at01a_clwk3_lbl 4 `"Looking for a job for the first time (2001)"', add
label values at01a_clwk3 at01a_clwk3_lbl

label define at01a_socec1_lbl 01 `"Self-employed and family worker in agriculture"'
label define at01a_socec1_lbl 02 `"Self-employed and family worker in technical and scientific occupations"', add
label define at01a_socec1_lbl 03 `"Self-employed in product and service occupations"', add
label define at01a_socec1_lbl 04 `"Employee - non-manual, university degree"', add
label define at01a_socec1_lbl 05 `"Employee - non-manual, higher education"', add
label define at01a_socec1_lbl 06 `"Employee - non-manual, intermediate education"', add
label define at01a_socec1_lbl 07 `"Employee - non-manual, vocational education"', add
label define at01a_socec1_lbl 08 `"Employee - non-manual, compulsory education"', add
label define at01a_socec1_lbl 09 `"Skilled manual worker"', add
label define at01a_socec1_lbl 10 `"Semi-skilled manual worker"', add
label define at01a_socec1_lbl 11 `"Unskilled manual worker"', add
label define at01a_socec1_lbl 12 `"Looking for a job for the first time"', add
label define at01a_socec1_lbl 13 `"Not economically active"', add
label values at01a_socec1 at01a_socec1_lbl

label define at01a_occiu_lbl 001 `"Legislators and senior government officials"'
label define at01a_occiu_lbl 002 `"Senior officials of political party organizations"', add
label define at01a_occiu_lbl 003 `"Senior officials of employers', workers' and other economic interest organizations"', add
label define at01a_occiu_lbl 004 `"Senior officials of humanitarian and other special interest organizations"', add
label define at01a_occiu_lbl 005 `"Directors and chief executives"', add
label define at01a_occiu_lbl 006 `"Production and operations managers in agriculture, hunting, forestry and fishing"', add
label define at01a_occiu_lbl 007 `"Production and operations managers in manufacturing"', add
label define at01a_occiu_lbl 008 `"Production and operations managers in construction"', add
label define at01a_occiu_lbl 009 `"Production and operations managers in wholesale and retail trade"', add
label define at01a_occiu_lbl 010 `"Production and operations managers in restaurants and hotels"', add
label define at01a_occiu_lbl 011 `"Production and operations managers in transport, storage and communications"', add
label define at01a_occiu_lbl 012 `"Production and operations managers in business services enterprises"', add
label define at01a_occiu_lbl 013 `"Production and operations managers in personal care, cleaning and related services"', add
label define at01a_occiu_lbl 014 `"Production and operations managers not elsewhere classified"', add
label define at01a_occiu_lbl 015 `"Finance and administration managers"', add
label define at01a_occiu_lbl 016 `"Personnel and industrial relations managers"', add
label define at01a_occiu_lbl 017 `"Sales and marketing managers"', add
label define at01a_occiu_lbl 018 `"Advertising and public relations managers"', add
label define at01a_occiu_lbl 019 `"Supply and distribution managers"', add
label define at01a_occiu_lbl 020 `"Computing services managers"', add
label define at01a_occiu_lbl 021 `"Research and development managers"', add
label define at01a_occiu_lbl 022 `"Other specialist managers not elsewhere classified"', add
label define at01a_occiu_lbl 023 `"Managers of small enterprises in agriculture, hunting, forestry and fishing"', add
label define at01a_occiu_lbl 024 `"Managers of small enterprises in manufacturing"', add
label define at01a_occiu_lbl 025 `"Managers of small enterprises in construction"', add
label define at01a_occiu_lbl 026 `"Managers of small enterprises in wholesale and retail trade"', add
label define at01a_occiu_lbl 027 `"Managers of small enterprises of restaurants and hotels"', add
label define at01a_occiu_lbl 028 `"Managers of small enterprises in transport, storage and communications"', add
label define at01a_occiu_lbl 029 `"Managers of small enterprises in business services enterprises"', add
label define at01a_occiu_lbl 030 `"Managers of small enterprises in personal care, cleaning and related services"', add
label define at01a_occiu_lbl 031 `"Managers of small enterprises not elsewhere classified"', add
label define at01a_occiu_lbl 032 `"Physicists and astronomers"', add
label define at01a_occiu_lbl 033 `"Meteorologists"', add
label define at01a_occiu_lbl 034 `"Chemists"', add
label define at01a_occiu_lbl 035 `"Geologists and geophysicists"', add
label define at01a_occiu_lbl 036 `"Mathematicians and related professionals"', add
label define at01a_occiu_lbl 037 `"Statisticians"', add
label define at01a_occiu_lbl 038 `"Computer systems designers, analysts and programmers"', add
label define at01a_occiu_lbl 039 `"Computing professionals not elsewhere classified"', add
label define at01a_occiu_lbl 040 `"Architects, engineers and related professionals"', add
label define at01a_occiu_lbl 041 `"Architects, town and traffic planners"', add
label define at01a_occiu_lbl 042 `"Civil engineers"', add
label define at01a_occiu_lbl 043 `"Electrical engineers"', add
label define at01a_occiu_lbl 044 `"Electronics and telecommunications engineers"', add
label define at01a_occiu_lbl 045 `"Mechanical engineers"', add
label define at01a_occiu_lbl 046 `"Chemical engineers"', add
label define at01a_occiu_lbl 047 `"Mining engineers, metallurgists and related professionals"', add
label define at01a_occiu_lbl 048 `"Cartographers and surveyors"', add
label define at01a_occiu_lbl 049 `"Architects, engineers and related professionals not elsewhere classified"', add
label define at01a_occiu_lbl 050 `"Biologists, botanists, zoologists and related professionals"', add
label define at01a_occiu_lbl 051 `"Pharmacologists, pathologists and related professionals"', add
label define at01a_occiu_lbl 052 `"Agronomists and related professionals"', add
label define at01a_occiu_lbl 053 `"Medical doctors"', add
label define at01a_occiu_lbl 054 `"Dentists"', add
label define at01a_occiu_lbl 055 `"Veterinarians"', add
label define at01a_occiu_lbl 056 `"Pharmacists"', add
label define at01a_occiu_lbl 058 `"Nursing and midwifery professionals"', add
label define at01a_occiu_lbl 059 `"College, university and higher education teaching professionals"', add
label define at01a_occiu_lbl 060 `"Secondary education teaching professionals"', add
label define at01a_occiu_lbl 061 `"Primary education teaching professionals"', add
label define at01a_occiu_lbl 063 `"Special education teaching professionals"', add
label define at01a_occiu_lbl 064 `"Education methods specialists"', add
label define at01a_occiu_lbl 065 `"School inspectors"', add
label define at01a_occiu_lbl 066 `"Other teaching professionals not elsewhere classified"', add
label define at01a_occiu_lbl 067 `"Accountants"', add
label define at01a_occiu_lbl 068 `"Personnel and careers professionals"', add
label define at01a_occiu_lbl 069 `"Business professionals not elsewhere classified"', add
label define at01a_occiu_lbl 070 `"Lawyers"', add
label define at01a_occiu_lbl 071 `"Judges"', add
label define at01a_occiu_lbl 072 `"Legal professionals not elsewhere classified"', add
label define at01a_occiu_lbl 073 `"Archivists and curators"', add
label define at01a_occiu_lbl 074 `"Librarians and related information professionals"', add
label define at01a_occiu_lbl 075 `"Economists"', add
label define at01a_occiu_lbl 076 `"Sociologists, anthropologists and related professionals"', add
label define at01a_occiu_lbl 077 `"Philosophers, historians and political scientists"', add
label define at01a_occiu_lbl 078 `"Philologists, translators and interpreters"', add
label define at01a_occiu_lbl 079 `"Psychologists"', add
label define at01a_occiu_lbl 080 `"Social work professionals"', add
label define at01a_occiu_lbl 081 `"Writers and creative or performing artists"', add
label define at01a_occiu_lbl 082 `"Authors, journalists and other writers"', add
label define at01a_occiu_lbl 083 `"Sculptors, painters and related artists"', add
label define at01a_occiu_lbl 084 `"Composers, musicians and singers"', add
label define at01a_occiu_lbl 085 `"Choreographers and dancers"', add
label define at01a_occiu_lbl 086 `"Film, stage and related actors and directors"', add
label define at01a_occiu_lbl 087 `"Religious professionals"', add
label define at01a_occiu_lbl 088 `"Public service administrative professionals"', add
label define at01a_occiu_lbl 089 `"Physical and engineering science associate professionals"', add
label define at01a_occiu_lbl 090 `"Chemical and physical science technicians"', add
label define at01a_occiu_lbl 091 `"Civil engineering technicians"', add
label define at01a_occiu_lbl 092 `"Electrical engineering technicians"', add
label define at01a_occiu_lbl 093 `"Electronics and telecommunications engineering technicians"', add
label define at01a_occiu_lbl 094 `"Mechanical engineering technicians"', add
label define at01a_occiu_lbl 095 `"Chemical engineering technicians"', add
label define at01a_occiu_lbl 096 `"Mining and metallurgical technicians"', add
label define at01a_occiu_lbl 097 `"Draftsmen"', add
label define at01a_occiu_lbl 098 `"Physical and engineering science technicians not elsewhere classified"', add
label define at01a_occiu_lbl 099 `"Computer assistants"', add
label define at01a_occiu_lbl 100 `"Computer equipment operators"', add
label define at01a_occiu_lbl 102 `"Photographers and image and sound recording equipment operators"', add
label define at01a_occiu_lbl 103 `"Broadcasting and telecommunications equipment operators"', add
label define at01a_occiu_lbl 104 `"Medical equipment operators"', add
label define at01a_occiu_lbl 107 `"Ships' deck officers and pilots"', add
label define at01a_occiu_lbl 108 `"Aircraft pilots and related associate professionals"', add
label define at01a_occiu_lbl 109 `"Air traffic controllers"', add
label define at01a_occiu_lbl 110 `"Air traffic safety technicians"', add
label define at01a_occiu_lbl 111 `"Building and fire inspectors"', add
label define at01a_occiu_lbl 112 `"Safety, health and quality inspectors"', add
label define at01a_occiu_lbl 113 `"Life science technicians"', add
label define at01a_occiu_lbl 114 `"Agronomy and forestry technicians"', add
label define at01a_occiu_lbl 115 `"Farming and forestry advisers"', add
label define at01a_occiu_lbl 116 `"Medical assistants"', add
label define at01a_occiu_lbl 118 `"Dieticians and nutritionists"', add
label define at01a_occiu_lbl 119 `"Optometrists and opticians"', add
label define at01a_occiu_lbl 121 `"Physiotherapists and related associate professionals"', add
label define at01a_occiu_lbl 123 `"Pharmaceutical assistants"', add
label define at01a_occiu_lbl 124 `"Health associate professionals (except nursing) not elsewhere classified"', add
label define at01a_occiu_lbl 125 `"Nursing associate professionals"', add
label define at01a_occiu_lbl 126 `"Midwifery associate professionals"', add
label define at01a_occiu_lbl 128 `"Pre-primary education teaching associate professionals"', add
label define at01a_occiu_lbl 130 `"Other teaching associate professionals"', add
label define at01a_occiu_lbl 131 `"Securities and finance dealers and brokers"', add
label define at01a_occiu_lbl 132 `"Insurance representatives"', add
label define at01a_occiu_lbl 133 `"Estate agents"', add
label define at01a_occiu_lbl 134 `"Travel consultants and organizers"', add
label define at01a_occiu_lbl 135 `"Technical and commercial sales representatives"', add
label define at01a_occiu_lbl 136 `"Buyers"', add
label define at01a_occiu_lbl 137 `"Appraisers, valuers and auctioneers"', add
label define at01a_occiu_lbl 138 `"Finance and sales associate professionals not elsewhere classified"', add
label define at01a_occiu_lbl 139 `"Trade brokers"', add
label define at01a_occiu_lbl 140 `"Clearing and forwarding agents"', add
label define at01a_occiu_lbl 141 `"Employment agents and labor contractors"', add
label define at01a_occiu_lbl 142 `"Business services agents and trade brokers not elsewhere classified"', add
label define at01a_occiu_lbl 143 `"Administrative secretaries and related associate professionals"', add
label define at01a_occiu_lbl 144 `"Legal and related business associate professionals"', add
label define at01a_occiu_lbl 145 `"Bookkeepers"', add
label define at01a_occiu_lbl 146 `"Statistical, mathematical and related associate professionals"', add
label define at01a_occiu_lbl 147 `"Customs and border inspectors"', add
label define at01a_occiu_lbl 148 `"Government tax and excise officials"', add
label define at01a_occiu_lbl 149 `"Government social benefits officials"', add
label define at01a_occiu_lbl 150 `"Government licensing officials"', add
label define at01a_occiu_lbl 151 `"Customs, tax and related government associate professionals not elsewhere classified"', add
label define at01a_occiu_lbl 152 `"Police inspectors and detectives"', add
label define at01a_occiu_lbl 153 `"Social work associate professionals"', add
label define at01a_occiu_lbl 154 `"Decorators and commercial designers"', add
label define at01a_occiu_lbl 155 `"Radio, television and other announcers"', add
label define at01a_occiu_lbl 156 `"Street, night club and related musicians, singers and dancers"', add
label define at01a_occiu_lbl 157 `"Clowns, magicians, acrobats and related associate professionals"', add
label define at01a_occiu_lbl 158 `"Athletes, sports persons and related associate professionals"', add
label define at01a_occiu_lbl 159 `"Religious associate professionals"', add
label define at01a_occiu_lbl 160 `"Stenographers and typists"', add
label define at01a_occiu_lbl 162 `"Data entry operators"', add
label define at01a_occiu_lbl 164 `"Secretaries"', add
label define at01a_occiu_lbl 165 `"Accounting and bookkeeping clerks"', add
label define at01a_occiu_lbl 166 `"Statistical and finance clerks"', add
label define at01a_occiu_lbl 167 `"Stock clerks"', add
label define at01a_occiu_lbl 168 `"Production clerks"', add
label define at01a_occiu_lbl 169 `"Transport clerks"', add
label define at01a_occiu_lbl 170 `"Library and filing clerks"', add
label define at01a_occiu_lbl 171 `"Mail carriers and sorting clerks"', add
label define at01a_occiu_lbl 172 `"Coding, proofreading and related clerks"', add
label define at01a_occiu_lbl 174 `"Other office clerks"', add
label define at01a_occiu_lbl 175 `"Cashiers and ticket clerks"', add
label define at01a_occiu_lbl 176 `"Tellers and other counter clerks"', add
label define at01a_occiu_lbl 177 `"Bookmakers and croupiers"', add
label define at01a_occiu_lbl 179 `"Debt collectors and related workers"', add
label define at01a_occiu_lbl 180 `"Travel agency and related clerks"', add
label define at01a_occiu_lbl 181 `"Receptionists and information clerks"', add
label define at01a_occiu_lbl 182 `"Telephone switchboard operators"', add
label define at01a_occiu_lbl 183 `"Travel attendants and travel stewards"', add
label define at01a_occiu_lbl 184 `"Transport conductors"', add
label define at01a_occiu_lbl 185 `"Travel guides"', add
label define at01a_occiu_lbl 186 `"Housekeepers and related workers"', add
label define at01a_occiu_lbl 187 `"Cooks"', add
label define at01a_occiu_lbl 188 `"Waiters, waitresses and bartenders"', add
label define at01a_occiu_lbl 189 `"Child care workers"', add
label define at01a_occiu_lbl 190 `"Institution-based personal care workers"', add
label define at01a_occiu_lbl 191 `"Home-based personal care workers"', add
label define at01a_occiu_lbl 192 `"Personal care and related workers not elsewhere classified"', add
label define at01a_occiu_lbl 193 `"Hairdressers, barbers, beauticians and related workers"', add
label define at01a_occiu_lbl 195 `"Undertakers and embalmers"', add
label define at01a_occiu_lbl 196 `"Other personal services workers not elsewhere classified"', add
label define at01a_occiu_lbl 197 `"Firefighters"', add
label define at01a_occiu_lbl 198 `"Police officers"', add
label define at01a_occiu_lbl 199 `"Prison guards"', add
label define at01a_occiu_lbl 200 `"Protective services workers not elsewhere classified"', add
label define at01a_occiu_lbl 202 `"Shop, stall and market salespersons and demonstrators"', add
label define at01a_occiu_lbl 203 `"Field crop and vegetable growers"', add
label define at01a_occiu_lbl 204 `"Gardeners, horticultural and nursery growers"', add
label define at01a_occiu_lbl 205 `"Dairy and livestock producers"', add
label define at01a_occiu_lbl 207 `"Animal producers and related workers not elsewhere classified"', add
label define at01a_occiu_lbl 208 `"Crop and animal producers"', add
label define at01a_occiu_lbl 209 `"Forestry workers and loggers"', add
label define at01a_occiu_lbl 214 `"Hunters and trappers"', add
label define at01a_occiu_lbl 215 `"Miners and quarry workers"', add
label define at01a_occiu_lbl 216 `"Blasters"', add
label define at01a_occiu_lbl 217 `"Stone splitters, cutters and carvers"', add
label define at01a_occiu_lbl 219 `"Bricklayers and stonemasons"', add
label define at01a_occiu_lbl 220 `"Concrete placers, concrete finishers and related workers"', add
label define at01a_occiu_lbl 221 `"Carpenters and joiners"', add
label define at01a_occiu_lbl 222 `"Building frame and related trades workers not elsewhere classified"', add
label define at01a_occiu_lbl 223 `"Roofers"', add
label define at01a_occiu_lbl 224 `"Floor layers and tile setters"', add
label define at01a_occiu_lbl 225 `"Plasterers"', add
label define at01a_occiu_lbl 226 `"Insulation workers"', add
label define at01a_occiu_lbl 227 `"Glaziers"', add
label define at01a_occiu_lbl 228 `"Plumbers and pipe fitters"', add
label define at01a_occiu_lbl 229 `"Building and related electricians"', add
label define at01a_occiu_lbl 230 `"Building finishers and related trade workers not elsewhere classified"', add
label define at01a_occiu_lbl 231 `"Painters and related workers"', add
label define at01a_occiu_lbl 232 `"Building structure cleaners"', add
label define at01a_occiu_lbl 233 `"Metal molders and coremakers"', add
label define at01a_occiu_lbl 234 `"Welders and flame cutters"', add
label define at01a_occiu_lbl 235 `"Sheet-metal workers"', add
label define at01a_occiu_lbl 236 `"Structural-metal preparers and erectors"', add
label define at01a_occiu_lbl 237 `"Riggers and cable splicers"', add
label define at01a_occiu_lbl 239 `"Blacksmiths, hammersmiths and forging press workers"', add
label define at01a_occiu_lbl 240 `"Toolmakers and related workers"', add
label define at01a_occiu_lbl 241 `"Machine-tool setters and setter-operators"', add
label define at01a_occiu_lbl 242 `"Metal wheel grinders, polishers and tool sharpeners"', add
label define at01a_occiu_lbl 243 `"Motor vehicle mechanics and fitters"', add
label define at01a_occiu_lbl 244 `"Aircraft engine mechanics and fitters"', add
label define at01a_occiu_lbl 245 `"Agricultural or industrial machinery mechanics and fitters"', add
label define at01a_occiu_lbl 246 `"Electrical mechanics fitters and services"', add
label define at01a_occiu_lbl 247 `"Electronics mechanics, fitters and servicers"', add
label define at01a_occiu_lbl 248 `"Telegraph and telephone installers and servicers"', add
label define at01a_occiu_lbl 249 `"Electrical line installers, repairers and cable jointers"', add
label define at01a_occiu_lbl 250 `"Precision instrument makers and repairers"', add
label define at01a_occiu_lbl 251 `"Musical instrument makers and tuners"', add
label define at01a_occiu_lbl 252 `"Jewelry and precious metal workers"', add
label define at01a_occiu_lbl 253 `"Abrasive wheel formers, potters and related workers"', add
label define at01a_occiu_lbl 254 `"Glassmakers, cutters, grinders and finishers"', add
label define at01a_occiu_lbl 256 `"Glass, ceramics and related decorative painters"', add
label define at01a_occiu_lbl 257 `"Handicraft workers"', add
label define at01a_occiu_lbl 258 `"Handicraft workers in wood and related materials"', add
label define at01a_occiu_lbl 259 `"Handicraft workers in textile, leather and related materials"', add
label define at01a_occiu_lbl 260 `"Compositors, typesetters and related workers"', add
label define at01a_occiu_lbl 262 `"Printing engravers and etchers"', add
label define at01a_occiu_lbl 263 `"Photographic and related workers"', add
label define at01a_occiu_lbl 264 `"Bookbinders and related workers"', add
label define at01a_occiu_lbl 265 `"Silkscreen, block and craft textile printers"', add
label define at01a_occiu_lbl 266 `"Butchers, fishmongers and related food preparers"', add
label define at01a_occiu_lbl 267 `"Bakers, pastry cooks and confectionery makers"', add
label define at01a_occiu_lbl 268 `"Dairy products workers"', add
label define at01a_occiu_lbl 272 `"Wood treaters"', add
label define at01a_occiu_lbl 273 `"Cabinetmakers and related workers"', add
label define at01a_occiu_lbl 274 `"Woodworking machine setters and setter-operators"', add
label define at01a_occiu_lbl 277 `"Weavers, knitters and related workers"', add
label define at01a_occiu_lbl 278 `"Tailors, dressmakers and hatters"', add
label define at01a_occiu_lbl 279 `"Furriers and related workers"', add
label define at01a_occiu_lbl 280 `"Textile, leather and related pattern-makers and cutters"', add
label define at01a_occiu_lbl 281 `"Sewers, embroiderers and related workers"', add
label define at01a_occiu_lbl 282 `"Upholsterers and related workers"', add
label define at01a_occiu_lbl 283 `"Pelt dressers, tanners and fell mongers"', add
label define at01a_occiu_lbl 284 `"Shoemakers and related workers"', add
label define at01a_occiu_lbl 285 `"Mining plant operators"', add
label define at01a_occiu_lbl 287 `"Well drillers and borers and related workers"', add
label define at01a_occiu_lbl 288 `"Ore and metal furnace operators"', add
label define at01a_occiu_lbl 289 `"Metal melters, casters and rolling mill operators"', add
label define at01a_occiu_lbl 290 `"Metal heat treating plant operators"', add
label define at01a_occiu_lbl 294 `"Wood processing plant operators"', add
label define at01a_occiu_lbl 296 `"Papermaking plant operators"', add
label define at01a_occiu_lbl 297 `"Chemical processing plant operators"', add
label define at01a_occiu_lbl 298 `"Crushing, grinding and chemical mixing machinery operators"', add
label define at01a_occiu_lbl 304 `"Power production and related plant operators"', add
label define at01a_occiu_lbl 305 `"Power production plant operators"', add
label define at01a_occiu_lbl 306 `"Steam engine and boiler operators"', add
label define at01a_occiu_lbl 307 `"Incinerator, water treatment and related plant operators"', add
label define at01a_occiu_lbl 309 `"Machine-tool operators"', add
label define at01a_occiu_lbl 310 `"Cement and other mineral products machine operators"', add
label define at01a_occiu_lbl 311 `"Pharmaceutical and toiletry products machine operators"', add
label define at01a_occiu_lbl 312 `"Ammunition and explosive products machine operators"', add
label define at01a_occiu_lbl 313 `"Metal finishing, plating and coating machine operators"', add
label define at01a_occiu_lbl 315 `"Chemical products machine operators not elsewhere classified"', add
label define at01a_occiu_lbl 316 `"Rubber products machine operators"', add
label define at01a_occiu_lbl 317 `"Plastic products machine operators"', add
label define at01a_occiu_lbl 318 `"Wood products machine operators"', add
label define at01a_occiu_lbl 319 `"Printing machine operators"', add
label define at01a_occiu_lbl 321 `"Paper products machine operators"', add
label define at01a_occiu_lbl 322 `"Fiber-preparing, spinning and winding-machine operators"', add
label define at01a_occiu_lbl 323 `"Weaving and knitting machine operators"', add
label define at01a_occiu_lbl 324 `"Sewing machine operators"', add
label define at01a_occiu_lbl 325 `"Bleaching, dyeing and cleaning machine operators"', add
label define at01a_occiu_lbl 327 `"Shoemaking and related machine operators"', add
label define at01a_occiu_lbl 328 `"Textile, fur and leather products machine operators not elsewhere classified"', add
label define at01a_occiu_lbl 329 `"Food and related products machine operators"', add
label define at01a_occiu_lbl 330 `"Meat and fish processing machine operators"', add
label define at01a_occiu_lbl 331 `"Dairy products machine operators"', add
label define at01a_occiu_lbl 332 `"Grain and spice milling machine operators"', add
label define at01a_occiu_lbl 333 `"Baked goods, cereal and chocolate products machine operators"', add
label define at01a_occiu_lbl 334 `"Fruit, vegetable and nut processing machine operators"', add
label define at01a_occiu_lbl 337 `"Brewers, wine and other beverage machine operators"', add
label define at01a_occiu_lbl 339 `"Assemblers"', add
label define at01a_occiu_lbl 340 `"Mechanical machinery assemblers"', add
label define at01a_occiu_lbl 341 `"Electrical equipment assemblers"', add
label define at01a_occiu_lbl 342 `"Electronic equipment assemblers"', add
label define at01a_occiu_lbl 343 `"Metal, rubber and plastic products assemblers"', add
label define at01a_occiu_lbl 345 `"Paperboard, textile and related products assemblers"', add
label define at01a_occiu_lbl 347 `"Other machine operators not elsewhere classified"', add
label define at01a_occiu_lbl 348 `"Locomotive engine drivers"', add
label define at01a_occiu_lbl 349 `"Railway brakers, signalers and shunters"', add
label define at01a_occiu_lbl 350 `"Motor vehicle drivers"', add
label define at01a_occiu_lbl 352 `"Car, taxi and van drivers"', add
label define at01a_occiu_lbl 353 `"Bus and tram drivers"', add
label define at01a_occiu_lbl 354 `"Heavy truck drivers"', add
label define at01a_occiu_lbl 355 `"Motorized farm and forestry plant operators"', add
label define at01a_occiu_lbl 356 `"Earth-moving and related plant operators"', add
label define at01a_occiu_lbl 357 `"Crane, hoist and related plant operators"', add
label define at01a_occiu_lbl 358 `"Lifting truck operators"', add
label define at01a_occiu_lbl 360 `"Street vendors"', add
label define at01a_occiu_lbl 361 `"Door to door and telephone salespersons"', add
label define at01a_occiu_lbl 363 `"Domestic helpers and cleaners"', add
label define at01a_occiu_lbl 364 `"Helpers and cleaners in offices, hotels and other establishments"', add
label define at01a_occiu_lbl 366 `"Building caretakers"', add
label define at01a_occiu_lbl 367 `"Vehicle, window and related cleaners"', add
label define at01a_occiu_lbl 368 `"Messengers, package and luggage porters and deliverers"', add
label define at01a_occiu_lbl 369 `"Doorkeepers, watchpersons and related workers"', add
label define at01a_occiu_lbl 370 `"Vending machine money collectors, meter readers and related workers"', add
label define at01a_occiu_lbl 371 `"Garbage collectors"', add
label define at01a_occiu_lbl 372 `"Sweepers and related laborers"', add
label define at01a_occiu_lbl 373 `"Farmhands and laborers"', add
label define at01a_occiu_lbl 374 `"Forestry laborers"', add
label define at01a_occiu_lbl 376 `"Mining and quarrying laborers"', add
label define at01a_occiu_lbl 377 `"Construction and maintenance laborers: roads, dams and similar constructions"', add
label define at01a_occiu_lbl 378 `"Building construction laborers"', add
label define at01a_occiu_lbl 379 `"Manufacturing laborers"', add
label define at01a_occiu_lbl 380 `"Transport laborers and freight handlers"', add
label define at01a_occiu_lbl 381 `"Armed forces"', add
label define at01a_occiu_lbl 382 `"Looking for a job for the first time"', add
label define at01a_occiu_lbl 995 `"Response suppressed"', add
label define at01a_occiu_lbl 999 `"NIU (not in universe)"', add
label values at01a_occiu at01a_occiu_lbl

label define at01a_occimi_lbl 001 `"Legislators and senior government officials"'
label define at01a_occimi_lbl 002 `"Senior officials of special interest organizations"', add
label define at01a_occimi_lbl 003 `"Directors and chief executives"', add
label define at01a_occimi_lbl 004 `"Production and operations managers"', add
label define at01a_occimi_lbl 005 `"Other specialist managers"', add
label define at01a_occimi_lbl 006 `"Managers of small enterprises"', add
label define at01a_occimi_lbl 007 `"Physicists, chemists and related professionals"', add
label define at01a_occimi_lbl 008 `"Mathematicians, statisticians and related professionals"', add
label define at01a_occimi_lbl 009 `"Computing professionals"', add
label define at01a_occimi_lbl 010 `"Architects, engineers and related professionals"', add
label define at01a_occimi_lbl 011 `"Life science professionals"', add
label define at01a_occimi_lbl 012 `"Health professionals (except nursing)"', add
label define at01a_occimi_lbl 013 `"Nursing and midwifery professionals"', add
label define at01a_occimi_lbl 014 `"College, university and higher education teachers"', add
label define at01a_occimi_lbl 015 `"Secondary education teaching profession"', add
label define at01a_occimi_lbl 016 `"Primary and pre-primary education teacher professionals"', add
label define at01a_occimi_lbl 017 `"Special education teaching professional"', add
label define at01a_occimi_lbl 018 `"Other teaching professionals"', add
label define at01a_occimi_lbl 019 `"Business professionals"', add
label define at01a_occimi_lbl 020 `"Legal professionals"', add
label define at01a_occimi_lbl 021 `"Archivists, librarians and related information professionals"', add
label define at01a_occimi_lbl 022 `"Social science and related professional"', add
label define at01a_occimi_lbl 023 `"Writers and creative or performing artist"', add
label define at01a_occimi_lbl 024 `"Religious professionals"', add
label define at01a_occimi_lbl 025 `"Public service administrative professionals"', add
label define at01a_occimi_lbl 026 `"Physical and engineering science professionals"', add
label define at01a_occimi_lbl 027 `"Computer associate professionals"', add
label define at01a_occimi_lbl 028 `"Optical and electronic equipment operators"', add
label define at01a_occimi_lbl 029 `"Ship and aircraft controllers and related professionals"', add
label define at01a_occimi_lbl 030 `"Safety and quality inspectors"', add
label define at01a_occimi_lbl 031 `"Life science technicians and related professions"', add
label define at01a_occimi_lbl 032 `"Health associate professionals (except nursing)"', add
label define at01a_occimi_lbl 033 `"Nursing and midwifery associate professional"', add
label define at01a_occimi_lbl 035 `"Pre-primary education teaching associate professional"', add
label define at01a_occimi_lbl 037 `"Other teaching associate professionals"', add
label define at01a_occimi_lbl 038 `"Finance and sales associate professional"', add
label define at01a_occimi_lbl 039 `"Business services agents and trade broker"', add
label define at01a_occimi_lbl 040 `"Administrative associate professionals"', add
label define at01a_occimi_lbl 041 `"Customs, tax and related public administration professionals"', add
label define at01a_occimi_lbl 042 `"Police inspectors and detectives"', add
label define at01a_occimi_lbl 043 `"Social work associate professionals"', add
label define at01a_occimi_lbl 044 `"Artistic, entertainment and sports related professionals"', add
label define at01a_occimi_lbl 045 `"Religious associate professionals"', add
label define at01a_occimi_lbl 046 `"Secretaries a keyboard operating clerks"', add
label define at01a_occimi_lbl 047 `"Numerical clerks"', add
label define at01a_occimi_lbl 048 `"Material recording and transport clerks"', add
label define at01a_occimi_lbl 049 `"Library, mail and related clerks"', add
label define at01a_occimi_lbl 050 `"Other office clerks"', add
label define at01a_occimi_lbl 051 `"Cashiers, tellers and related clerks"', add
label define at01a_occimi_lbl 052 `"Client information clerks"', add
label define at01a_occimi_lbl 053 `"Travel attendants and related workers"', add
label define at01a_occimi_lbl 054 `"Housekeeping and restaurant services work"', add
label define at01a_occimi_lbl 055 `"Personal care and related workers"', add
label define at01a_occimi_lbl 056 `"Other personal services workers"', add
label define at01a_occimi_lbl 057 `"Protective services workers"', add
label define at01a_occimi_lbl 059 `"Shop, stall and market salespersons and demonstrators"', add
label define at01a_occimi_lbl 060 `"Market gardeners and crop growers"', add
label define at01a_occimi_lbl 061 `"Animal producers and related workers"', add
label define at01a_occimi_lbl 062 `"Crop and animal producers and owners"', add
label define at01a_occimi_lbl 063 `"Forestry and related professionals"', add
label define at01a_occimi_lbl 064 `"Fishery workers, hunters and trappers"', add
label define at01a_occimi_lbl 065 `"Miners, blasters, stonecutters and stone sculptors"', add
label define at01a_occimi_lbl 066 `"Building frame and related trades worker"', add
label define at01a_occimi_lbl 067 `"Building finishers and related trades"', add
label define at01a_occimi_lbl 068 `"Painters, building structure cleaners and related trades"', add
label define at01a_occimi_lbl 069 `"Metal molders, welders, sheet-metal molders"', add
label define at01a_occimi_lbl 070 `"Blacksmiths, toolmakers and related trades"', add
label define at01a_occimi_lbl 071 `"Machinery mechanics and fitters"', add
label define at01a_occimi_lbl 072 `"Electrical and electronic equipment mechanics"', add
label define at01a_occimi_lbl 073 `"Precision workers in metal and related materials"', add
label define at01a_occimi_lbl 074 `"Potters, glassmakers and related trades"', add
label define at01a_occimi_lbl 075 `"Handicraft workers in wood, textile, leather and related materials"', add
label define at01a_occimi_lbl 076 `"Craft printing workers and related trades"', add
label define at01a_occimi_lbl 077 `"Food processing workers and related trades"', add
label define at01a_occimi_lbl 078 `"Wood treaters, cabinetmakers and related trades"', add
label define at01a_occimi_lbl 079 `"Textile, garment and related trades workers"', add
label define at01a_occimi_lbl 080 `"Pelt, leather and shoemaking trades worker"', add
label define at01a_occimi_lbl 081 `"Mining and mineral processing plant operators"', add
label define at01a_occimi_lbl 082 `"Metal processing plant operators"', add
label define at01a_occimi_lbl 084 `"Wood processing and papermaking plant operators"', add
label define at01a_occimi_lbl 085 `"Chemical processing plant operators"', add
label define at01a_occimi_lbl 086 `"Power-production and related plant operators"', add
label define at01a_occimi_lbl 087 `"Industrial robot operators"', add
label define at01a_occimi_lbl 088 `"Metal and mineral products machine operators"', add
label define at01a_occimi_lbl 089 `"Chemical products machine operators"', add
label define at01a_occimi_lbl 090 `"Rubber and plastic products machine operators"', add
label define at01a_occimi_lbl 091 `"Wood products machine operators"', add
label define at01a_occimi_lbl 092 `"Printing, binding and paper products machine operators"', add
label define at01a_occimi_lbl 093 `"Textile, fur and leather product machine operators"', add
label define at01a_occimi_lbl 094 `"Food and related products machine operators"', add
label define at01a_occimi_lbl 095 `"Assemblers"', add
label define at01a_occimi_lbl 096 `"Other machine operators not elsewhere classified"', add
label define at01a_occimi_lbl 097 `"Locomotive engine drivers and related workers"', add
label define at01a_occimi_lbl 098 `"Motor vehicle drivers"', add
label define at01a_occimi_lbl 099 `"Agricultural and other mobile plant operators"', add
label define at01a_occimi_lbl 101 `"Street vendors and related workers"', add
label define at01a_occimi_lbl 102 `"Shoe cleaning and other services practiced on the street"', add
label define at01a_occimi_lbl 103 `"Domestic and related helpers, cleaners, launderers"', add
label define at01a_occimi_lbl 104 `"Building caretakers, window and related cleaning personnel"', add
label define at01a_occimi_lbl 105 `"Messengers, porters, doorkeepers and related workers"', add
label define at01a_occimi_lbl 106 `"Garbage collectors and related laborer"', add
label define at01a_occimi_lbl 107 `"Agricultural, fishery and related laborer"', add
label define at01a_occimi_lbl 108 `"Mining and construction laborers"', add
label define at01a_occimi_lbl 109 `"Manufacturing laborers"', add
label define at01a_occimi_lbl 110 `"Transport laborers and freight handler"', add
label define at01a_occimi_lbl 111 `"Armed forces"', add
label define at01a_occimi_lbl 112 `"Looking for a job for the first time"', add
label define at01a_occimi_lbl 990 `"Response suppressed"', add
label define at01a_occimi_lbl 999 `"NIU (not in universe)"', add
label values at01a_occimi at01a_occimi_lbl

label define at01a_occism_lbl 01 `"Legislators and senior officials"'
label define at01a_occism_lbl 02 `"Corporate managers"', add
label define at01a_occism_lbl 03 `"Managers of small enterprises"', add
label define at01a_occism_lbl 04 `"Physicist, mathematician and engineering science professionals"', add
label define at01a_occism_lbl 05 `"Life science and health professionals"', add
label define at01a_occism_lbl 06 `"Teaching professionals"', add
label define at01a_occism_lbl 07 `"Other professionals"', add
label define at01a_occism_lbl 08 `"Physical and engineering science associate professionals"', add
label define at01a_occism_lbl 09 `"Life science and health associate professionals"', add
label define at01a_occism_lbl 10 `"Teaching associate professionals"', add
label define at01a_occism_lbl 11 `"Other associate professionals"', add
label define at01a_occism_lbl 12 `"Office clerks"', add
label define at01a_occism_lbl 13 `"Customer services clerks"', add
label define at01a_occism_lbl 14 `"Personal and protective services workers"', add
label define at01a_occism_lbl 15 `"Models, salespersons and demonstrators"', add
label define at01a_occism_lbl 16 `"Skilled agricultural and fishery workers"', add
label define at01a_occism_lbl 17 `"Extraction and building trades workers"', add
label define at01a_occism_lbl 18 `"Metal, machinery and related trades workers"', add
label define at01a_occism_lbl 19 `"Precision, handicraft, printer and related trades workers"', add
label define at01a_occism_lbl 20 `"Other craft and related trades workers"', add
label define at01a_occism_lbl 21 `"Stationary plant and related operators"', add
label define at01a_occism_lbl 22 `"Machine operators and assemblers"', add
label define at01a_occism_lbl 23 `"Drivers and mobile plant operators"', add
label define at01a_occism_lbl 24 `"Sales and services elementary occupation"', add
label define at01a_occism_lbl 25 `"Agricultural, fishery and related labor"', add
label define at01a_occism_lbl 26 `"Laborers in mining, construction, manufacturing and transportation"', add
label define at01a_occism_lbl 27 `"Armed forces"', add
label define at01a_occism_lbl 28 `"Looking for a job for the first time"', add
label define at01a_occism_lbl 99 `"NIU (not in universe)"', add
label values at01a_occism at01a_occism_lbl

label define at01a_occim_lbl 01 `"Legislators, senior officials and manager"'
label define at01a_occim_lbl 02 `"Professionals"', add
label define at01a_occim_lbl 03 `"Technicians and associate professionals"', add
label define at01a_occim_lbl 04 `"Office and commercial employees"', add
label define at01a_occim_lbl 05 `"Service workers, shop and market sales workers"', add
label define at01a_occim_lbl 06 `"Skilled agricultural and fishery workers"', add
label define at01a_occim_lbl 07 `"Craft and related trades workers"', add
label define at01a_occim_lbl 08 `"Plant and machine operators and assembler"', add
label define at01a_occim_lbl 09 `"Elementary occupations"', add
label define at01a_occim_lbl 10 `"Armed forces"', add
label define at01a_occim_lbl 11 `"Looking for a job for the first time"', add
label define at01a_occim_lbl 99 `"NIU (not in universe)"', add
label values at01a_occim at01a_occim_lbl

label define at01a_occsm_lbl 01 `"Engineering science and natural science professionals"'
label define at01a_occsm_lbl 02 `"Health professionals and technicians"', add
label define at01a_occsm_lbl 03 `"Teachers, educators"', add
label define at01a_occsm_lbl 04 `"Legal professionals, human and social scientists"', add
label define at01a_occsm_lbl 05 `"Religious professionals, social workers"', add
label define at01a_occsm_lbl 06 `"Artists, journalists and sportspersons"', add
label define at01a_occsm_lbl 07 `"Managers in administration, industry and finance"', add
label define at01a_occsm_lbl 08 `"Office and financial clerks"', add
label define at01a_occsm_lbl 09 `"Administrative clerks"', add
label define at01a_occsm_lbl 10 `"Bookkeepers, cashiers and related workers"', add
label define at01a_occsm_lbl 11 `"Other clerical workers"', add
label define at01a_occsm_lbl 12 `"Computer equipment operators, data entry operators"', add
label define at01a_occsm_lbl 13 `"Managers (wholesale and retail), advertising salespersons"', add
label define at01a_occsm_lbl 14 `"Merchants, salespersons"', add
label define at01a_occsm_lbl 15 `"Hotel and restaurant managers"', add
label define at01a_occsm_lbl 16 `"Waiters, cooks"', add
label define at01a_occsm_lbl 17 `"Other restaurant and hotel service workers, housekeepers"', add
label define at01a_occsm_lbl 18 `"Cleaners"', add
label define at01a_occsm_lbl 19 `"Hairdressers, beauticians and related workers"', add
label define at01a_occsm_lbl 20 `"Health service workers"', add
label define at01a_occsm_lbl 21 `"Protective service workers, armed forces"', add
label define at01a_occsm_lbl 22 `"Other service workers"', add
label define at01a_occsm_lbl 23 `"Transport supervisors"', add
label define at01a_occsm_lbl 24 `"Postal service workers, messengers"', add
label define at01a_occsm_lbl 25 `"Transport conductors"', add
label define at01a_occsm_lbl 26 `"Vehicle drivers"', add
label define at01a_occsm_lbl 27 `"Transport service auxiliary personnel"', add
label define at01a_occsm_lbl 28 `"Freight handlers, warehouse workers"', add
label define at01a_occsm_lbl 29 `"Crane and construction machinery and related operators"', add
label define at01a_occsm_lbl 30 `"Machine operators, firepersons"', add
label define at01a_occsm_lbl 31 `"Agricultural occupations"', add
label define at01a_occsm_lbl 32 `"Forestry occupations"', add
label define at01a_occsm_lbl 33 `"Miners, quarrymen and related workers"', add
label define at01a_occsm_lbl 34 `"Potters, glassmakers, stonemasons and related workers"', add
label define at01a_occsm_lbl 35 `"Metal processors"', add
label define at01a_occsm_lbl 36 `"Metalworking occupations"', add
label define at01a_occsm_lbl 37 `"Metal trade laborers"', add
label define at01a_occsm_lbl 38 `"Wood preparation workers, papermakers"', add
label define at01a_occsm_lbl 39 `"Chemical processors, leather manufacturers"', add
label define at01a_occsm_lbl 40 `"Textile production and finishing workers"', add
label define at01a_occsm_lbl 41 `"Bricklayers, plasterers, scaffolders"', add
label define at01a_occsm_lbl 42 `"Carpenters"', add
label define at01a_occsm_lbl 43 `"Painters, varnishers"', add
label define at01a_occsm_lbl 44 `"Glaziers, roofers, floor layers and related workers"', add
label define at01a_occsm_lbl 45 `"Civil engineering workers"', add
label define at01a_occsm_lbl 46 `"Construction laborers"', add
label define at01a_occsm_lbl 47 `"Food and beverage processors"', add
label define at01a_occsm_lbl 48 `"Tailors, dressmakers, sewers and related workers"', add
label define at01a_occsm_lbl 49 `"Furriers, leather goods makers"', add
label define at01a_occsm_lbl 50 `"Joiners and related woodworkers"', add
label define at01a_occsm_lbl 51 `"Rubber, plastics and paper products makers"', add
label define at01a_occsm_lbl 52 `"Printers and related workers"', add
label define at01a_occsm_lbl 53 `"Jewelers, precision instrument makers and related workers"', add
label define at01a_occsm_lbl 54 `"Locksmiths (fitters), mechanics and related workers"', add
label define at01a_occsm_lbl 55 `"Plumbers and pipe installation workers"', add
label define at01a_occsm_lbl 56 `"Electrical workers"', add
label define at01a_occsm_lbl 57 `"Laborers without further details, workers without further details"', add
label define at01a_occsm_lbl 58 `"Retired persons"', add
label define at01a_occsm_lbl 59 `"Other income recipients"', add
label values at01a_occsm at01a_occsm_lbl

label define at01a_occm_lbl 01 `"Professionals, technicians and related, managers"'
label define at01a_occm_lbl 02 `"Clerical occupations"', add
label define at01a_occm_lbl 03 `"Wholesale and retail trade occupations"', add
label define at01a_occm_lbl 04 `"Service occupations, armed forces"', add
label define at01a_occm_lbl 05 `"Transport occupations, machine operators"', add
label define at01a_occm_lbl 06 `"Agricultural and forestry occupations"', add
label define at01a_occm_lbl 07 `"Basic industry workers"', add
label define at01a_occm_lbl 08 `"Construction and related trades workers"', add
label define at01a_occm_lbl 09 `"Product manufacturing workers"', add
label define at01a_occm_lbl 10 `"Laborers without further details"', add
label define at01a_occm_lbl 99 `"NIU (not in universe)"', add
label values at01a_occm at01a_occm_lbl

label define at01a_indg_lbl 001 `"Growing of crops, market gardening"'
label define at01a_indg_lbl 002 `"Farming of animals"', add
label define at01a_indg_lbl 003 `"Mixed farming"', add
label define at01a_indg_lbl 004 `"Agriculture and animal husbandry service activities"', add
label define at01a_indg_lbl 006 `"Forestry and logging"', add
label define at01a_indg_lbl 009 `"Mining and agglomeration of lignite"', add
label define at01a_indg_lbl 011 `"Extraction of crude petroleum and natural gas"', add
label define at01a_indg_lbl 014 `"Mining of iron ores"', add
label define at01a_indg_lbl 016 `"Quarrying of stone"', add
label define at01a_indg_lbl 017 `"Quarrying of sand and clay"', add
label define at01a_indg_lbl 019 `"Production of salt"', add
label define at01a_indg_lbl 020 `"Other mining and quarrying without further details"', add
label define at01a_indg_lbl 021 `"Production and processing of meat"', add
label define at01a_indg_lbl 023 `"Processing and preserving of fruit and vegetables"', add
label define at01a_indg_lbl 024 `"Manufacture of vegetable and animal oils and fats"', add
label define at01a_indg_lbl 025 `"Manufacture of dairy products"', add
label define at01a_indg_lbl 026 `"Manufacture of grain mill and starch mill products"', add
label define at01a_indg_lbl 027 `"Manufacture of prepared animal feeds"', add
label define at01a_indg_lbl 028 `"Manufacture of other food products"', add
label define at01a_indg_lbl 029 `"Manufacture of beverages"', add
label define at01a_indg_lbl 030 `"Manufacture of tobacco products"', add
label define at01a_indg_lbl 031 `"Preparation and spinning of textile fibers"', add
label define at01a_indg_lbl 032 `"Textile weaving"', add
label define at01a_indg_lbl 033 `"Finishing of textiles"', add
label define at01a_indg_lbl 034 `"Manufacture of made-up textile articles"', add
label define at01a_indg_lbl 035 `"Manufacture of other textiles"', add
label define at01a_indg_lbl 036 `"Manufacture of knitted and crocheted fabrics"', add
label define at01a_indg_lbl 037 `"Manufacture of knitted and crocheted articles"', add
label define at01a_indg_lbl 039 `"Manufacture of other wearing apparel"', add
label define at01a_indg_lbl 040 `"Manufacture of fur and articles thereof"', add
label define at01a_indg_lbl 041 `"Tanning and dressing of leather"', add
label define at01a_indg_lbl 042 `"Manufacture of luggage, saddlery and harness"', add
label define at01a_indg_lbl 043 `"Manufacture of footwear"', add
label define at01a_indg_lbl 044 `"Sawmilling and planing of wood"', add
label define at01a_indg_lbl 045 `"Manufacture of veneer sheets, boards, etc."', add
label define at01a_indg_lbl 046 `"Manufacture of builders' carpentry and joinery"', add
label define at01a_indg_lbl 047 `"Manufacture of wooden containers"', add
label define at01a_indg_lbl 048 `"Manufacture of other products of wood"', add
label define at01a_indg_lbl 049 `"Manufacture of pulp, paper and paperboard"', add
label define at01a_indg_lbl 050 `"Manufacture of paper and paperboard products"', add
label define at01a_indg_lbl 051 `"Publishing"', add
label define at01a_indg_lbl 052 `"Printing and related service activities"', add
label define at01a_indg_lbl 053 `"Reproduction of recorded media"', add
label define at01a_indg_lbl 054 `"Manufacture of coke oven products"', add
label define at01a_indg_lbl 055 `"Manufacture of refined petroleum products"', add
label define at01a_indg_lbl 057 `"Manufacture of basic chemicals"', add
label define at01a_indg_lbl 058 `"Manufacture of pesticides"', add
label define at01a_indg_lbl 059 `"Manufacture of paints, varnishes, printing ink"', add
label define at01a_indg_lbl 060 `"Manufacture of pharmaceutical products"', add
label define at01a_indg_lbl 061 `"Manufacture of soap, detergents, etc."', add
label define at01a_indg_lbl 062 `"Manufacture of other chemical products"', add
label define at01a_indg_lbl 063 `"Manufacture of man-made fibers"', add
label define at01a_indg_lbl 064 `"Manufacture of rubber products"', add
label define at01a_indg_lbl 065 `"Manufacture of plastic products"', add
label define at01a_indg_lbl 066 `"Manufacture of glass and glass products"', add
label define at01a_indg_lbl 067 `"Manufacture of ceramic goods"', add
label define at01a_indg_lbl 069 `"Manufacture of bricks, etc. in baked clay"', add
label define at01a_indg_lbl 070 `"Manufacture of cement, lime and plaster"', add
label define at01a_indg_lbl 071 `"Manufacture of other articles of concrete, plaster and cement"', add
label define at01a_indg_lbl 072 `"Cutting, shaping and finishing of stone"', add
label define at01a_indg_lbl 073 `"Manufacture of other nonmetallic mineral products"', add
label define at01a_indg_lbl 074 `"Manufacture of basic iron and steel"', add
label define at01a_indg_lbl 075 `"Manufacture of tubes"', add
label define at01a_indg_lbl 076 `"Other first processing of iron and steel"', add
label define at01a_indg_lbl 077 `"Manufacture of precious and non-ferrous metal products"', add
label define at01a_indg_lbl 078 `"Casting of metals"', add
label define at01a_indg_lbl 079 `"Manufacture of structural metal products"', add
label define at01a_indg_lbl 080 `"Manufacture of tanks, etc. of metal"', add
label define at01a_indg_lbl 081 `"Manufacture of steam generators"', add
label define at01a_indg_lbl 082 `"Forging, pressing, etc. of metal"', add
label define at01a_indg_lbl 083 `"Treatment and coating of metals"', add
label define at01a_indg_lbl 084 `"Manufacture of cutlery, tools and general hardware"', add
label define at01a_indg_lbl 085 `"Manufacture of other fabricated metal products"', add
label define at01a_indg_lbl 086 `"Manufacture of machinery for production of mechanical power"', add
label define at01a_indg_lbl 087 `"Manufacture of other general purpose machinery"', add
label define at01a_indg_lbl 088 `"Manufacture of agriculture and forestry machinery"', add
label define at01a_indg_lbl 089 `"Manufacture of machine tools"', add
label define at01a_indg_lbl 090 `"Manufacture of other special purpose machinery"', add
label define at01a_indg_lbl 091 `"Manufacture of weapons and ammunition"', add
label define at01a_indg_lbl 092 `"Manufacture of domestic appliances without further details"', add
label define at01a_indg_lbl 093 `"Manufacture of office machinery and computers"', add
label define at01a_indg_lbl 094 `"Manufacture of electric motors, etc."', add
label define at01a_indg_lbl 095 `"Manufacture of electric distribution and control equipment"', add
label define at01a_indg_lbl 096 `"Manufacture of insulated wire and cable"', add
label define at01a_indg_lbl 097 `"Manufacture of accumulators and batteries"', add
label define at01a_indg_lbl 098 `"Manufacture of lighting equipment"', add
label define at01a_indg_lbl 099 `"Manufacture of electrical equipment without further details"', add
label define at01a_indg_lbl 100 `"Manufacture of electronic valves and tubes"', add
label define at01a_indg_lbl 101 `"Manufacture of communication equipment"', add
label define at01a_indg_lbl 102 `"Manufacture of television and radio equipment"', add
label define at01a_indg_lbl 103 `"Manufacture of medical and surgical equipment"', add
label define at01a_indg_lbl 104 `"Manufacture of instruments for measuring etc."', add
label define at01a_indg_lbl 105 `"Manufacture of industrial process control equipment"', add
label define at01a_indg_lbl 106 `"Manufacture of optical and photographic equipment"', add
label define at01a_indg_lbl 107 `"Manufacture of watches and clocks"', add
label define at01a_indg_lbl 108 `"Manufacture of motor vehicles"', add
label define at01a_indg_lbl 109 `"Manufacture of bodies and trailers"', add
label define at01a_indg_lbl 110 `"Manufacture of parts for motor vehicles"', add
label define at01a_indg_lbl 111 `"Building and repairing of ships and boats"', add
label define at01a_indg_lbl 112 `"Manufacture of railway and tramway vehicles"', add
label define at01a_indg_lbl 113 `"Manufacture of aircraft and spacecraft"', add
label define at01a_indg_lbl 114 `"Manufacture of motorcycles and bicycles"', add
label define at01a_indg_lbl 116 `"Manufacture of furniture"', add
label define at01a_indg_lbl 117 `"Manufacture of jewelry and related articles"', add
label define at01a_indg_lbl 118 `"Manufacture of musical instruments"', add
label define at01a_indg_lbl 119 `"Manufacture of sporting goods"', add
label define at01a_indg_lbl 120 `"Manufacture of games and toys"', add
label define at01a_indg_lbl 121 `"Miscellaneous manufacturing without further details"', add
label define at01a_indg_lbl 122 `"Recycling of metal waste and scrap"', add
label define at01a_indg_lbl 123 `"Recycling of nonmetal waste and scrap"', add
label define at01a_indg_lbl 124 `"Production and distribution of electricity"', add
label define at01a_indg_lbl 125 `"Manufacture of gas"', add
label define at01a_indg_lbl 126 `"Steam and hot water supply"', add
label define at01a_indg_lbl 127 `"Collection, purification and distribution of water"', add
label define at01a_indg_lbl 128 `"Site preparation"', add
label define at01a_indg_lbl 129 `"Building of complete constructions"', add
label define at01a_indg_lbl 130 `"Building installation"', add
label define at01a_indg_lbl 131 `"Building completion"', add
label define at01a_indg_lbl 132 `"Renting of construction equipment with operator"', add
label define at01a_indg_lbl 133 `"Sale of motor vehicles"', add
label define at01a_indg_lbl 134 `"Maintenance and repair of motor vehicles"', add
label define at01a_indg_lbl 135 `"Sale of motor vehicles parts"', add
label define at01a_indg_lbl 136 `"Sale, maintenance and repair of motorcycles"', add
label define at01a_indg_lbl 137 `"Retail sale of automotive fuel"', add
label define at01a_indg_lbl 138 `"Wholesale on a fee or contract basis"', add
label define at01a_indg_lbl 139 `"Wholesale of agriculture materials and live animals"', add
label define at01a_indg_lbl 140 `"Wholesale of food, beverages and tobacco"', add
label define at01a_indg_lbl 141 `"Wholesale of household goods"', add
label define at01a_indg_lbl 142 `"Wholesale of intermediate products"', add
label define at01a_indg_lbl 143 `"Wholesale of machine, equipment and supplies"', add
label define at01a_indg_lbl 144 `"Other wholesale"', add
label define at01a_indg_lbl 145 `"Retail sale in non-specialized stores"', add
label define at01a_indg_lbl 146 `"Retail sale of food, beverages in specialty stores"', add
label define at01a_indg_lbl 147 `"Retail sale of pharmaceutical goods, cosmetic articles"', add
label define at01a_indg_lbl 148 `"Other retail sale of new goods in specialty stores"', add
label define at01a_indg_lbl 149 `"Retail sale of secondhand goods in stores"', add
label define at01a_indg_lbl 150 `"Retail sale not in stores"', add
label define at01a_indg_lbl 151 `"Repair of personal and household goods"', add
label define at01a_indg_lbl 152 `"Hotels"', add
label define at01a_indg_lbl 153 `"Camping sites etc."', add
label define at01a_indg_lbl 154 `"Restaurants"', add
label define at01a_indg_lbl 155 `"Bars"', add
label define at01a_indg_lbl 156 `"Canteens and catering"', add
label define at01a_indg_lbl 157 `"Transport via railways"', add
label define at01a_indg_lbl 158 `"Other land transport"', add
label define at01a_indg_lbl 161 `"Inland water transport"', add
label define at01a_indg_lbl 162 `"Scheduled air transport"', add
label define at01a_indg_lbl 163 `"Non-scheduled air transport"', add
label define at01a_indg_lbl 165 `"Cargo handling and storage"', add
label define at01a_indg_lbl 166 `"Other supporting transport activities"', add
label define at01a_indg_lbl 167 `"Travel agencies and tour operators"', add
label define at01a_indg_lbl 168 `"Activities of other transport agencies"', add
label define at01a_indg_lbl 169 `"Post and courier activities"', add
label define at01a_indg_lbl 170 `"Telecommunications"', add
label define at01a_indg_lbl 171 `"Monetary intermediation"', add
label define at01a_indg_lbl 172 `"Other financial intermediation"', add
label define at01a_indg_lbl 173 `"Insurance and pension funding"', add
label define at01a_indg_lbl 174 `"Activities auxiliary to financial intermediation"', add
label define at01a_indg_lbl 175 `"Activities auxiliary to insurance and pension funding"', add
label define at01a_indg_lbl 176 `"Real estate activities with own property"', add
label define at01a_indg_lbl 177 `"Renting of own property"', add
label define at01a_indg_lbl 178 `"Real estate activities on a fee or contract basis"', add
label define at01a_indg_lbl 179 `"Renting of automobiles"', add
label define at01a_indg_lbl 180 `"Renting of other transport equipment"', add
label define at01a_indg_lbl 181 `"Renting of other machinery and equipment"', add
label define at01a_indg_lbl 182 `"Renting of personal and household goods without further details"', add
label define at01a_indg_lbl 183 `"Hardware consultancy"', add
label define at01a_indg_lbl 184 `"Software consultancy and supply"', add
label define at01a_indg_lbl 185 `"Data processing"', add
label define at01a_indg_lbl 186 `"Data base activities"', add
label define at01a_indg_lbl 187 `"Repair of office and computing machinery"', add
label define at01a_indg_lbl 188 `"Other computer related activities"', add
label define at01a_indg_lbl 189 `"Research and development on natural sciences and engineering"', add
label define at01a_indg_lbl 190 `"Research and development on social sciences and humanities"', add
label define at01a_indg_lbl 191 `"Legal, accounting, business consultancy activities"', add
label define at01a_indg_lbl 192 `"Architectural and engineering activities"', add
label define at01a_indg_lbl 193 `"Technical testing and analysis"', add
label define at01a_indg_lbl 194 `"Advertising"', add
label define at01a_indg_lbl 195 `"Labor recruitment and provision of personnel"', add
label define at01a_indg_lbl 196 `"Investigation and security activities"', add
label define at01a_indg_lbl 197 `"Industrial cleaning"', add
label define at01a_indg_lbl 198 `"Miscellaneous business activities without further details"', add
label define at01a_indg_lbl 199 `"Administration of the state and community"', add
label define at01a_indg_lbl 200 `"Provision of services to the community"', add
label define at01a_indg_lbl 201 `"Compulsory social security activities"', add
label define at01a_indg_lbl 202 `"Primary education"', add
label define at01a_indg_lbl 203 `"Secondary education"', add
label define at01a_indg_lbl 204 `"Higher education"', add
label define at01a_indg_lbl 205 `"Adult and other education"', add
label define at01a_indg_lbl 206 `"Human health activities"', add
label define at01a_indg_lbl 207 `"Veterinary activities"', add
label define at01a_indg_lbl 208 `"Social work activities"', add
label define at01a_indg_lbl 209 `"Sewage and refuse disposal, sanitation activities"', add
label define at01a_indg_lbl 210 `"Activities of business, professional organizations"', add
label define at01a_indg_lbl 211 `"Activities of employees organizations"', add
label define at01a_indg_lbl 212 `"Activities of other membership organizations"', add
label define at01a_indg_lbl 213 `"Motion picture and video activities"', add
label define at01a_indg_lbl 214 `"Radio and television activities"', add
label define at01a_indg_lbl 215 `"Other entertainment activities"', add
label define at01a_indg_lbl 216 `"News agency activities"', add
label define at01a_indg_lbl 217 `"Library, archives, museums, etc."', add
label define at01a_indg_lbl 218 `"Sporting activities"', add
label define at01a_indg_lbl 219 `"Other recreational activities"', add
label define at01a_indg_lbl 220 `"Other service activities"', add
label define at01a_indg_lbl 221 `"Private households with employed persons"', add
label define at01a_indg_lbl 222 `"Extraterritorial organizations a bodies"', add
label define at01a_indg_lbl 223 `"Looking for a job for the first time"', add
label define at01a_indg_lbl 990 `"Response suppressed"', add
label define at01a_indg_lbl 999 `"NIU (not in universe)"', add
label values at01a_indg at01a_indg_lbl

label define at01a_indm_lbl 01 `"Agriculture"'
label define at01a_indm_lbl 02 `"Forestry and logging"', add
label define at01a_indm_lbl 04 `"Mining of coal and lignite"', add
label define at01a_indm_lbl 05 `"Extraction of crude petroleum and natural gas"', add
label define at01a_indm_lbl 06 `"Mining of uranium and thorium ores"', add
label define at01a_indm_lbl 07 `"Mining of metal ores"', add
label define at01a_indm_lbl 08 `"Other mining and quarrying without further details"', add
label define at01a_indm_lbl 09 `"Manufacture of food products and beverages"', add
label define at01a_indm_lbl 10 `"Manufacture of tobacco products"', add
label define at01a_indm_lbl 11 `"Manufacture of textiles"', add
label define at01a_indm_lbl 12 `"Manufacture of wearing apparel"', add
label define at01a_indm_lbl 13 `"Manufacture of leather, leather products, footwear"', add
label define at01a_indm_lbl 14 `"Manufacture of wood and of products of wood"', add
label define at01a_indm_lbl 15 `"Manufacture of paper and paper products"', add
label define at01a_indm_lbl 16 `"Publishing, printing and reproduction"', add
label define at01a_indm_lbl 17 `"Manufacture of coke, refined petroleum products"', add
label define at01a_indm_lbl 18 `"Manufacture of chemicals and chemical products"', add
label define at01a_indm_lbl 19 `"Manufacture of rubber and plastic products"', add
label define at01a_indm_lbl 20 `"Manufacture of other nonmetallic mineral products"', add
label define at01a_indm_lbl 21 `"Manufacture of basic metals"', add
label define at01a_indm_lbl 22 `"Manufacture of fabricated metal products"', add
label define at01a_indm_lbl 23 `"Manufacture of machinery and equipment without further details"', add
label define at01a_indm_lbl 24 `"Manufacture of office machinery and computers"', add
label define at01a_indm_lbl 25 `"Manufacture of electricity machines and appliances without further details"', add
label define at01a_indm_lbl 26 `"Manufacture of radio, television equipment"', add
label define at01a_indm_lbl 27 `"Manufacture of medical, precision, optical instruments"', add
label define at01a_indm_lbl 28 `"Manufacture of motor vehicles and trailers"', add
label define at01a_indm_lbl 29 `"Manufacture of other transport equipment"', add
label define at01a_indm_lbl 30 `"Manufacture of furniture; manufacturing without further details"', add
label define at01a_indm_lbl 31 `"Recycling"', add
label define at01a_indm_lbl 32 `"Electricity, gas, steam and hot water supply"', add
label define at01a_indm_lbl 33 `"Collection, purification and distribution of water"', add
label define at01a_indm_lbl 34 `"Construction"', add
label define at01a_indm_lbl 35 `"Sale and repair of motor vehicles"', add
label define at01a_indm_lbl 36 `"Wholesale and commission trade"', add
label define at01a_indm_lbl 37 `"Retail trade, repair of household goods"', add
label define at01a_indm_lbl 38 `"Hotels and restaurants"', add
label define at01a_indm_lbl 39 `"Land transport via pipelines"', add
label define at01a_indm_lbl 40 `"Water transport"', add
label define at01a_indm_lbl 41 `"Air transport"', add
label define at01a_indm_lbl 42 `"Auxiliary and part time activities for traffic, travel agencies"', add
label define at01a_indm_lbl 43 `"Post and telecommunications"', add
label define at01a_indm_lbl 44 `"Financial intermediation"', add
label define at01a_indm_lbl 45 `"Insurance and pension funding"', add
label define at01a_indm_lbl 46 `"Activities auxiliary to financial intermediation"', add
label define at01a_indm_lbl 47 `"Real estate activities"', add
label define at01a_indm_lbl 48 `"Renting of machinery and equipment without operator"', add
label define at01a_indm_lbl 49 `"Computer and related activities"', add
label define at01a_indm_lbl 50 `"Research and development"', add
label define at01a_indm_lbl 51 `"Other business activities"', add
label define at01a_indm_lbl 52 `"Public administration"', add
label define at01a_indm_lbl 53 `"Education"', add
label define at01a_indm_lbl 54 `"Health and social work"', add
label define at01a_indm_lbl 55 `"Sewage and refuse disposal, sanitation activities"', add
label define at01a_indm_lbl 56 `"Activities of membership organizations without further details"', add
label define at01a_indm_lbl 57 `"Recreational, cultural and sporting activities"', add
label define at01a_indm_lbl 58 `"Other service activities"', add
label define at01a_indm_lbl 59 `"Private households with employed persons"', add
label define at01a_indm_lbl 60 `"Extraterritorial organizations"', add
label define at01a_indm_lbl 61 `"Looking for a job for the first time"', add
label define at01a_indm_lbl 98 `"Response suppressed"', add
label define at01a_indm_lbl 99 `"NIU (not in universe)"', add
label values at01a_indm at01a_indm_lbl

label define at01a_inds_lbl 01 `"Agriculture and forestry"'
label define at01a_inds_lbl 03 `"Mining and quarrying"', add
label define at01a_inds_lbl 04 `"Manufacturing"', add
label define at01a_inds_lbl 05 `"Electricity, gas and water supply"', add
label define at01a_inds_lbl 06 `"Construction"', add
label define at01a_inds_lbl 07 `"Trade, repair of motor vehicles and consumer goods"', add
label define at01a_inds_lbl 08 `"Hotels and restaurants"', add
label define at01a_inds_lbl 09 `"Transport, storage and communication"', add
label define at01a_inds_lbl 10 `"Financial intermediation"', add
label define at01a_inds_lbl 11 `"Real estate, renting and business activities"', add
label define at01a_inds_lbl 12 `"Public administration and defense, social security"', add
label define at01a_inds_lbl 13 `"Education"', add
label define at01a_inds_lbl 14 `"Health and social work"', add
label define at01a_inds_lbl 15 `"Other community, social and personal service activities"', add
label define at01a_inds_lbl 16 `"Private households with employed persons"', add
label define at01a_inds_lbl 17 `"Extraterritorial organizations and bodies"', add
label define at01a_inds_lbl 18 `"Looking for a job for the first time"', add
label define at01a_inds_lbl 98 `"Response suppressed"', add
label define at01a_inds_lbl 99 `"NIU (not in universe)"', add
label values at01a_inds at01a_inds_lbl

label define at01a_indse_lbl 1 `"Agriculture and forestry"'
label define at01a_indse_lbl 2 `"Manufacturing, construction"', add
label define at01a_indse_lbl 3 `"Service activities"', add
label define at01a_indse_lbl 4 `"Looking for a job for the first time"', add
label define at01a_indse_lbl 9 `"NIU (not in universe)"', add
label values at01a_indse at01a_indse_lbl

label define at01a_indbr_lbl 01 `"Agriculture and fishing"'
label define at01a_indbr_lbl 02 `"Forestry and hunting"', add
label define at01a_indbr_lbl 03 `"Electricity, gas and water supply"', add
label define at01a_indbr_lbl 04 `"Mining of coal"', add
label define at01a_indbr_lbl 05 `"Mining of metal ores"', add
label define at01a_indbr_lbl 06 `"Extraction of crude petroleum and natural gas"', add
label define at01a_indbr_lbl 07 `"Production of salt"', add
label define at01a_indbr_lbl 08 `"Mining of magnesium"', add
label define at01a_indbr_lbl 09 `"Extraction of other minerals and peat"', add
label define at01a_indbr_lbl 10 `"Quarrying of stone, sand and clay"', add
label define at01a_indbr_lbl 11 `"Manufacture of food products"', add
label define at01a_indbr_lbl 12 `"Manufacture of beverages and tobacco products"', add
label define at01a_indbr_lbl 13 `"Textile weaving and spinning"', add
label define at01a_indbr_lbl 14 `"Manufacture of knitted fabrics"', add
label define at01a_indbr_lbl 15 `"Finishing of textiles, textile printing"', add
label define at01a_indbr_lbl 16 `"Manufacture of linen and bedclothes"', add
label define at01a_indbr_lbl 17 `"Manufacture of apparel"', add
label define at01a_indbr_lbl 18 `"Manufacture of other textile products"', add
label define at01a_indbr_lbl 19 `"Manufacture of footwear"', add
label define at01a_indbr_lbl 20 `"Manufacture of leather, leather products, and imitation materials"', add
label define at01a_indbr_lbl 21 `"Manufacture of wood and wooden boards"', add
label define at01a_indbr_lbl 22 `"Manufacture of wood products"', add
label define at01a_indbr_lbl 23 `"Manufacture of musical instruments, toys and sports articles"', add
label define at01a_indbr_lbl 24 `"Manufacture of paper and paperboard"', add
label define at01a_indbr_lbl 25 `"Manufacture of paper products, bookbinding"', add
label define at01a_indbr_lbl 26 `"Printing"', add
label define at01a_indbr_lbl 27 `"Publishing"', add
label define at01a_indbr_lbl 28 `"Manufacture of rubber and plastic products"', add
label define at01a_indbr_lbl 29 `"Manufacture of chemicals and chemical products"', add
label define at01a_indbr_lbl 30 `"Manufacture of refined petroleum, gas and coke products"', add
label define at01a_indbr_lbl 31 `"Manufacture of non-metal mineral products, bricks"', add
label define at01a_indbr_lbl 32 `"Manufacture of stone and ceramic products, concrete"', add
label define at01a_indbr_lbl 33 `"Manufacture of glass and glass products"', add
label define at01a_indbr_lbl 34 `"Manufacture of basic metals and semi-finished products"', add
label define at01a_indbr_lbl 35 `"Manufacture of metal products and steel constructions"', add
label define at01a_indbr_lbl 36 `"Manufacture of machinery and equipment"', add
label define at01a_indbr_lbl 37 `"Manufacture of electrical equipment"', add
label define at01a_indbr_lbl 38 `"Manufacture of transport equipment"', add
label define at01a_indbr_lbl 39 `"Manufacture of precision, medical, optical instruments and watches"', add
label define at01a_indbr_lbl 40 `"Building construction and civil engineering"', add
label define at01a_indbr_lbl 41 `"Building completion and other construction work"', add
label define at01a_indbr_lbl 42 `"Carpentry"', add
label define at01a_indbr_lbl 43 `"Activities of sheet metal working"', add
label define at01a_indbr_lbl 44 `"Building installation"', add
label define at01a_indbr_lbl 45 `"Wholesale trade"', add
label define at01a_indbr_lbl 46 `"Retail trade"', add
label define at01a_indbr_lbl 47 `"Storage and warehousing"', add
label define at01a_indbr_lbl 48 `"Hotels and restaurants"', add
label define at01a_indbr_lbl 49 `"Land transport"', add
label define at01a_indbr_lbl 50 `"Freight transport by road"', add
label define at01a_indbr_lbl 51 `"Transport via railways"', add
label define at01a_indbr_lbl 52 `"Water transport"', add
label define at01a_indbr_lbl 53 `"Air transport"', add
label define at01a_indbr_lbl 54 `"Transport via pipeline, travel agencies"', add
label define at01a_indbr_lbl 55 `"Forwarding agency"', add
label define at01a_indbr_lbl 56 `"Post and telecommunications"', add
label define at01a_indbr_lbl 57 `"Financial intermediation"', add
label define at01a_indbr_lbl 58 `"Insurance"', add
label define at01a_indbr_lbl 59 `"Real estate and business activities"', add
label define at01a_indbr_lbl 60 `"Engineering activities and related technical consultancy"', add
label define at01a_indbr_lbl 61 `"Photographic activities"', add
label define at01a_indbr_lbl 62 `"Hairdressing and other beauty treatment"', add
label define at01a_indbr_lbl 63 `"Cleaning activities"', add
label define at01a_indbr_lbl 64 `"Chimney cleaning"', add
label define at01a_indbr_lbl 65 `"Funeral and related activities"', add
label define at01a_indbr_lbl 66 `"Cultural, recreational and sporting activities"', add
label define at01a_indbr_lbl 67 `"Health and social work"', add
label define at01a_indbr_lbl 68 `"Education, research and development"', add
label define at01a_indbr_lbl 69 `"Public administration"', add
label define at01a_indbr_lbl 70 `"Extraterritorial organizations and bodies"', add
label define at01a_indbr_lbl 71 `"Compulsory social security"', add
label define at01a_indbr_lbl 72 `"Public legal membership organizations (chambers)"', add
label define at01a_indbr_lbl 73 `"Voluntary membership organizations"', add
label define at01a_indbr_lbl 74 `"Religious organizations"', add
label define at01a_indbr_lbl 75 `"Housekeeping"', add
label define at01a_indbr_lbl 76 `"Building caretaking"', add
label define at01a_indbr_lbl 77 `"Unknown industrial branch"', add
label define at01a_indbr_lbl 78 `"Retired person"', add
label define at01a_indbr_lbl 79 `"Other income recipient"', add
label values at01a_indbr at01a_indbr_lbl

label define at01a_inddi_lbl 01 `"Agriculture and forestry"'
label define at01a_inddi_lbl 02 `"Electricity, gas and water supply"', add
label define at01a_inddi_lbl 03 `"Mining and quarrying"', add
label define at01a_inddi_lbl 04 `"Manufacturing"', add
label define at01a_inddi_lbl 05 `"Construction"', add
label define at01a_inddi_lbl 06 `"Wholesale and retail trade, storage"', add
label define at01a_inddi_lbl 07 `"Hotels and restaurants"', add
label define at01a_inddi_lbl 08 `"Transport, communication"', add
label define at01a_inddi_lbl 09 `"Financial intermediation, insurance, business activities"', add
label define at01a_inddi_lbl 10 `"Personal, social and public services, housekeeping"', add
label define at01a_inddi_lbl 11 `"Unknown industrial branch"', add
label define at01a_inddi_lbl 12 `"Retired person"', add
label values at01a_inddi at01a_inddi_lbl

label define at01a_wkplr_lbl 01 `"Mittelburgenland and Südburgenland"'
label define at01a_wkplr_lbl 02 `"Nordburgenland"', add
label define at01a_wkplr_lbl 04 `"Mostviertel-Eisenwurzen"', add
label define at01a_wkplr_lbl 05 `"Niederösterreich-Süd"', add
label define at01a_wkplr_lbl 06 `"Sankt Pölten"', add
label define at01a_wkplr_lbl 07 `"Waldviertel"', add
label define at01a_wkplr_lbl 08 `"Weinviertel"', add
label define at01a_wkplr_lbl 09 `"Wiener Umland-Nordteil"', add
label define at01a_wkplr_lbl 10 `"Wiener Umland-Südteil"', add
label define at01a_wkplr_lbl 11 `"Wien"', add
label define at01a_wkplr_lbl 12 `"Klagenfurt-Villach"', add
label define at01a_wkplr_lbl 13 `"Oberkärnten"', add
label define at01a_wkplr_lbl 14 `"Unterkärnten"', add
label define at01a_wkplr_lbl 15 `"Graz"', add
label define at01a_wkplr_lbl 16 `"Liezen"', add
label define at01a_wkplr_lbl 17 `"Östliche Obersteiermark"', add
label define at01a_wkplr_lbl 18 `"Oststeiermark"', add
label define at01a_wkplr_lbl 19 `"West- und Südsteiermark"', add
label define at01a_wkplr_lbl 20 `"Westliche Obersteiermark"', add
label define at01a_wkplr_lbl 21 `"Innviertel"', add
label define at01a_wkplr_lbl 22 `"Linz-Wels"', add
label define at01a_wkplr_lbl 23 `"Mühlviertel"', add
label define at01a_wkplr_lbl 24 `"Steyr-Kirchdorf"', add
label define at01a_wkplr_lbl 25 `"Traunviertel"', add
label define at01a_wkplr_lbl 26 `"Lungau and Pinzgau-Pongau"', add
label define at01a_wkplr_lbl 28 `"Salzburg und Umgebung"', add
label define at01a_wkplr_lbl 29 `"Außerfern and Tiroler Oberland"', add
label define at01a_wkplr_lbl 30 `"Innsbruck"', add
label define at01a_wkplr_lbl 31 `"Osttirol and Tiroler Unterland"', add
label define at01a_wkplr_lbl 34 `"Bludenz-Bregenzer Wald"', add
label define at01a_wkplr_lbl 35 `"Rheintal-Bodenseegebiet"', add
label define at01a_wkplr_lbl 36 `"Foreign country"', add
label define at01a_wkplr_lbl 98 `"Unknown"', add
label define at01a_wkplr_lbl 99 `"NIU (not in universe)"', add
label values at01a_wkplr at01a_wkplr_lbl

label define at01a_wkplc1_lbl 01 `"Austria"'
label define at01a_wkplc1_lbl 02 `"Belgium"', add
label define at01a_wkplc1_lbl 04 `"Germany"', add
label define at01a_wkplc1_lbl 06 `"France"', add
label define at01a_wkplc1_lbl 09 `"Italy"', add
label define at01a_wkplc1_lbl 11 `"Netherlands"', add
label define at01a_wkplc1_lbl 14 `"Spain"', add
label define at01a_wkplc1_lbl 15 `"United Kingdom"', add
label define at01a_wkplc1_lbl 17 `"Liechtenstein"', add
label define at01a_wkplc1_lbl 19 `"Switzerland"', add
label define at01a_wkplc1_lbl 28 `"Yugoslavia (Serbia, Montenegro)"', add
label define at01a_wkplc1_lbl 33 `"Poland"', add
label define at01a_wkplc1_lbl 37 `"Czech Republic"', add
label define at01a_wkplc1_lbl 38 `"Hungary"', add
label define at01a_wkplc1_lbl 43 `"Turkey"', add
label define at01a_wkplc1_lbl 73 `"United States"', add
label define at01a_wkplc1_lbl 80 `"Other Central/South American countries"', add
label define at01a_wkplc1_lbl 90 `"Response suppressed"', add
label define at01a_wkplc1_lbl 98 `"Unknown"', add
label define at01a_wkplc1_lbl 99 `"NIU (not in universe)"', add
label values at01a_wkplc1 at01a_wkplc1_lbl

label define at01a_commut1_lbl 1 `"Commuters (employed persons) (only 2001)"'
label define at01a_commut1_lbl 2 `"Commuters (pupils and students)"', add
label define at01a_commut1_lbl 8 `"Unknown"', add
label define at01a_commut1_lbl 9 `"NIU (not in universe)"', add
label values at01a_commut1 at01a_commut1_lbl

label define at01a_commut2_lbl 1 `"Residence and workplace (school) in same house"'
label define at01a_commut2_lbl 2 `"Residence and workplace (school) in same commune"', add
label define at01a_commut2_lbl 3 `"Workplace (school) in other commune, same district"', add
label define at01a_commut2_lbl 4 `"Workplace (school) in other district, same province"', add
label define at01a_commut2_lbl 5 `"Workplace (school) in other province"', add
label define at01a_commut2_lbl 6 `"Workplace (school) abroad"', add
label define at01a_commut2_lbl 8 `"Unknown"', add
label define at01a_commut2_lbl 9 `"NIU (not in universe)"', add
label values at01a_commut2 at01a_commut2_lbl

label define at01a_commut3_lbl 1 `"Residence and workplace/school in same house"'
label define at01a_commut3_lbl 2 `"Residence and workplace/school in same commune"', add
label define at01a_commut3_lbl 3 `"Residence and workplace/school in different communes"', add
label define at01a_commut3_lbl 8 `"Unknown"', add
label define at01a_commut3_lbl 9 `"NIU (not in universe)"', add
label values at01a_commut3 at01a_commut3_lbl

label define at01a_commut4_lbl 1 `"Daily"'
label define at01a_commut4_lbl 2 `"Not daily but weekly etc."', add
label define at01a_commut4_lbl 9 `"NIU (not in universe)"', add
label values at01a_commut4 at01a_commut4_lbl

label define at01a_commut5_lbl 0 `"NIU (not in universe)"'
label define at01a_commut5_lbl 1 `"Residence and workplace (school) in same house"', add
label define at01a_commut5_lbl 2 `"Journey to work (school) daily, up to 15 minutes"', add
label define at01a_commut5_lbl 3 `"Journey to work (school) daily, 16 to 30 minutes"', add
label define at01a_commut5_lbl 4 `"Journey to work (school) daily, 31 to 45 minutes"', add
label define at01a_commut5_lbl 5 `"Journey to work (school) daily, 46 to 60 minutes"', add
label define at01a_commut5_lbl 6 `"Journey to work (school) daily, 61+ minutes"', add
label define at01a_commut5_lbl 7 `"Not daily but weekly etc."', add
label define at01a_commut5_lbl 8 `"Daily commuters, changing commute destination"', add
label define at01a_commut5_lbl 9 `"Unknown"', add
label values at01a_commut5 at01a_commut5_lbl

label define at01a_commut6_lbl 01 `"None (on foot)"'
label define at01a_commut6_lbl 02 `"Motor vehicle, motor bike"', add
label define at01a_commut6_lbl 03 `"Train, suburban train"', add
label define at01a_commut6_lbl 04 `"Tram, subway"', add
label define at01a_commut6_lbl 05 `"Bus, trolley bus"', add
label define at01a_commut6_lbl 06 `"Bicycle"', add
label define at01a_commut6_lbl 07 `"Other"', add
label define at01a_commut6_lbl 08 `"Journey to work not daily but weekly etc."', add
label define at01a_commut6_lbl 09 `"Changing commuting destination"', add
label define at01a_commut6_lbl 98 `"Unknown"', add
label define at01a_commut6_lbl 99 `"NIU (not in universe)"', add
label values at01a_commut6 at01a_commut6_lbl

label define at01a_relate2_lbl 1 `"Head of household"'
label define at01a_relate2_lbl 2 `"Other status"', add
label values at01a_relate2 at01a_relate2_lbl

label define at01a_relate_lbl 01 `"Living alone"'
label define at01a_relate_lbl 02 `"Household representative of multi-person household"', add
label define at01a_relate_lbl 03 `"Spouse of household representative"', add
label define at01a_relate_lbl 04 `"Cohabitant of household representative"', add
label define at01a_relate_lbl 05 `"Child of household representative"', add
label define at01a_relate_lbl 06 `"Partner of child of household representative"', add
label define at01a_relate_lbl 07 `"Grandchild (including his/her partner) of household representative"', add
label define at01a_relate_lbl 08 `"Ancestor of household representative or his/her partner"', add
label define at01a_relate_lbl 09 `"Other relative of household representative"', add
label define at01a_relate_lbl 10 `"Person not related to household representative"', add
label define at01a_relate_lbl 11 `"Person living in boarding school"', add
label define at01a_relate_lbl 12 `"Person living in dormitory for students"', add
label define at01a_relate_lbl 14 `"Person living in nursing home or hospital"', add
label define at01a_relate_lbl 15 `"Person living in institution for elderly people"', add
label define at01a_relate_lbl 16 `"Person living in institution for the disabled"', add
label define at01a_relate_lbl 17 `"Person living in child care institution"', add
label define at01a_relate_lbl 18 `"Person in institution for children without parents"', add
label define at01a_relate_lbl 19 `"Person living in religious institution"', add
label define at01a_relate_lbl 21 `"Person living in penal institution"', add
label define at01a_relate_lbl 22 `"Person living in refugee camp"', add
label define at01a_relate_lbl 23 `"Person living in private homes for refugees"', add
label define at01a_relate_lbl 24 `"Person living in other institution"', add
label define at01a_relate_lbl 25 `"Person in institution for homeless/socially disadvantaged"', add
label values at01a_relate at01a_relate_lbl

label define at01a_hhstat4_lbl 01 `"Person in private household - spouse"'
label define at01a_hhstat4_lbl 02 `"Person in private household - cohabitant"', add
label define at01a_hhstat4_lbl 03 `"Person in private household - lone parent"', add
label define at01a_hhstat4_lbl 04 `"Person in private household - child"', add
label define at01a_hhstat4_lbl 05 `"Living alone"', add
label define at01a_hhstat4_lbl 06 `"Other person in private household"', add
label define at01a_hhstat4_lbl 07 `"Person living in educational institution"', add
label define at01a_hhstat4_lbl 08 `"Person living in health care institution"', add
label define at01a_hhstat4_lbl 09 `"Person living in institution for retired or elderly people"', add
label define at01a_hhstat4_lbl 11 `"Person living in religious institution"', add
label define at01a_hhstat4_lbl 12 `"Person living in other institution"', add
label values at01a_hhstat4 at01a_hhstat4_lbl

label define at01a_famst1_lbl 1 `"Husband or lone parent"'
label define at01a_famst1_lbl 2 `"Other status"', add
label values at01a_famst1 at01a_famst1_lbl

label define at01a_famst2_lbl 1 `"Child in a family"'
label define at01a_famst2_lbl 2 `"Not child in a family"', add
label values at01a_famst2 at01a_famst2_lbl

label define at01a_famst3_lbl 1 `"Spouse"'
label define at01a_famst3_lbl 2 `"Cohabitant"', add
label define at01a_famst3_lbl 3 `"Lone parent"', add
label define at01a_famst3_lbl 4 `"Child"', add
label define at01a_famst3_lbl 5 `"Person, not member of a family"', add
label values at01a_famst3 at01a_famst3_lbl

label define at01a_nch1_lbl 0 `"0"'
label define at01a_nch1_lbl 1 `"1"', add
label define at01a_nch1_lbl 2 `"2"', add
label define at01a_nch1_lbl 3 `"3"', add
label define at01a_nch1_lbl 4 `"4+"', add
label define at01a_nch1_lbl 9 `"NIU (not in universe)"', add
label values at01a_nch1 at01a_nch1_lbl

label define at01a_nch6_lbl 0 `"0"'
label define at01a_nch6_lbl 1 `"1"', add
label define at01a_nch6_lbl 2 `"2"', add
label define at01a_nch6_lbl 3 `"3"', add
label define at01a_nch6_lbl 4 `"4+"', add
label define at01a_nch6_lbl 9 `"NIU (not in universe)"', add
label values at01a_nch6 at01a_nch6_lbl

label define at01a_nch15_lbl 0 `"0"'
label define at01a_nch15_lbl 1 `"1"', add
label define at01a_nch15_lbl 2 `"2"', add
label define at01a_nch15_lbl 3 `"3"', add
label define at01a_nch15_lbl 4 `"4+"', add
label define at01a_nch15_lbl 9 `"NIU (not in universe)"', add
label values at01a_nch15 at01a_nch15_lbl

label define at01a_nch18_lbl 0 `"0"'
label define at01a_nch18_lbl 1 `"1"', add
label define at01a_nch18_lbl 2 `"2"', add
label define at01a_nch18_lbl 3 `"3"', add
label define at01a_nch18_lbl 4 `"4"', add
label define at01a_nch18_lbl 5 `"5"', add
label define at01a_nch18_lbl 6 `"6+"', add
label define at01a_nch18_lbl 9 `"NIU (not in universe)"', add
label values at01a_nch18 at01a_nch18_lbl

label define at01a_nch25_lbl 0 `"0"'
label define at01a_nch25_lbl 1 `"1"', add
label define at01a_nch25_lbl 2 `"2"', add
label define at01a_nch25_lbl 3 `"3"', add
label define at01a_nch25_lbl 4 `"4"', add
label define at01a_nch25_lbl 5 `"5"', add
label define at01a_nch25_lbl 6 `"6+"', add
label define at01a_nch25_lbl 9 `"NIU (not in universe)"', add
label values at01a_nch25 at01a_nch25_lbl

label define at01a_famty1_lbl 1 `"Husband-wife family"'
label define at01a_famty1_lbl 2 `"Consensual union"', add
label define at01a_famty1_lbl 3 `"Lone parent, male"', add
label define at01a_famty1_lbl 4 `"Lone parent, female"', add
label define at01a_famty1_lbl 9 `"NIU (not in universe)"', add
label values at01a_famty1 at01a_famty1_lbl

label define at01a_famty2_lbl 1 `"Husband-wife family without children"'
label define at01a_famty2_lbl 2 `"Husband-wife family with children"', add
label define at01a_famty2_lbl 3 `"Lone parent"', add
label define at01a_famty2_lbl 9 `"NIU (not in universe)"', add
label values at01a_famty2 at01a_famty2_lbl

label define at01a_famty3_lbl 1 `"Husband-wife family, no child, wife under 40"'
label define at01a_famty3_lbl 2 `"Husband-wife family, youngest child under 6"', add
label define at01a_famty3_lbl 3 `"Husband-wife family, youngest child 6-14 yrs"', add
label define at01a_famty3_lbl 4 `"Husband-wife family, youngest child 15+ yrs"', add
label define at01a_famty3_lbl 5 `"Lone parent, youngest child under 6 years"', add
label define at01a_famty3_lbl 6 `"Lone parent, youngest child 6 to 14 years"', add
label define at01a_famty3_lbl 7 `"Lone parent, youngest child 15 years and over"', add
label define at01a_famty3_lbl 8 `"Husband-wife family, no child, wife 40+ years"', add
label define at01a_famty3_lbl 9 `"NIU (not in universe)"', add
label values at01a_famty3 at01a_famty3_lbl

label define at01a_chborn1_lbl 0 `"0"'
label define at01a_chborn1_lbl 1 `"1"', add
label define at01a_chborn1_lbl 2 `"2"', add
label define at01a_chborn1_lbl 3 `"3"', add
label define at01a_chborn1_lbl 4 `"4"', add
label define at01a_chborn1_lbl 5 `"5"', add
label define at01a_chborn1_lbl 6 `"6"', add
label define at01a_chborn1_lbl 7 `"7"', add
label define at01a_chborn1_lbl 8 `"8+"', add
label define at01a_chborn1_lbl 9 `"NIU (not in universe)"', add
label values at01a_chborn1 at01a_chborn1_lbl

label define at01a_maryr1_lbl 1934 `"1934 or earlier"'
label define at01a_maryr1_lbl 1935 `"1935"', add
label define at01a_maryr1_lbl 1936 `"1936"', add
label define at01a_maryr1_lbl 1937 `"1937"', add
label define at01a_maryr1_lbl 1938 `"1938"', add
label define at01a_maryr1_lbl 1939 `"1939"', add
label define at01a_maryr1_lbl 1940 `"1940"', add
label define at01a_maryr1_lbl 1941 `"1941"', add
label define at01a_maryr1_lbl 1942 `"1942"', add
label define at01a_maryr1_lbl 1943 `"1943"', add
label define at01a_maryr1_lbl 1944 `"1944"', add
label define at01a_maryr1_lbl 1945 `"1945"', add
label define at01a_maryr1_lbl 1946 `"1946"', add
label define at01a_maryr1_lbl 1947 `"1947"', add
label define at01a_maryr1_lbl 1948 `"1948"', add
label define at01a_maryr1_lbl 1949 `"1949"', add
label define at01a_maryr1_lbl 1950 `"1950"', add
label define at01a_maryr1_lbl 1951 `"1951"', add
label define at01a_maryr1_lbl 1952 `"1952"', add
label define at01a_maryr1_lbl 1953 `"1953"', add
label define at01a_maryr1_lbl 1954 `"1954"', add
label define at01a_maryr1_lbl 1955 `"1955"', add
label define at01a_maryr1_lbl 1956 `"1956"', add
label define at01a_maryr1_lbl 1957 `"1957"', add
label define at01a_maryr1_lbl 1958 `"1958"', add
label define at01a_maryr1_lbl 1959 `"1959"', add
label define at01a_maryr1_lbl 1960 `"1960"', add
label define at01a_maryr1_lbl 1961 `"1961"', add
label define at01a_maryr1_lbl 1962 `"1962"', add
label define at01a_maryr1_lbl 1963 `"1963"', add
label define at01a_maryr1_lbl 1964 `"1964"', add
label define at01a_maryr1_lbl 1965 `"1965"', add
label define at01a_maryr1_lbl 1966 `"1966"', add
label define at01a_maryr1_lbl 1967 `"1967"', add
label define at01a_maryr1_lbl 1968 `"1968"', add
label define at01a_maryr1_lbl 1969 `"1969"', add
label define at01a_maryr1_lbl 1970 `"1970"', add
label define at01a_maryr1_lbl 1971 `"1971"', add
label define at01a_maryr1_lbl 1972 `"1972"', add
label define at01a_maryr1_lbl 1973 `"1973"', add
label define at01a_maryr1_lbl 1974 `"1974"', add
label define at01a_maryr1_lbl 1975 `"1975"', add
label define at01a_maryr1_lbl 1976 `"1976"', add
label define at01a_maryr1_lbl 1977 `"1977"', add
label define at01a_maryr1_lbl 1978 `"1978"', add
label define at01a_maryr1_lbl 1979 `"1979"', add
label define at01a_maryr1_lbl 1980 `"1980"', add
label define at01a_maryr1_lbl 1981 `"1981"', add
label define at01a_maryr1_lbl 1982 `"1982"', add
label define at01a_maryr1_lbl 1983 `"1983"', add
label define at01a_maryr1_lbl 1984 `"1984"', add
label define at01a_maryr1_lbl 1985 `"1985"', add
label define at01a_maryr1_lbl 1986 `"1986"', add
label define at01a_maryr1_lbl 1987 `"1987"', add
label define at01a_maryr1_lbl 1988 `"1988"', add
label define at01a_maryr1_lbl 1989 `"1989"', add
label define at01a_maryr1_lbl 1990 `"1990"', add
label define at01a_maryr1_lbl 1991 `"1991"', add
label define at01a_maryr1_lbl 1992 `"1992"', add
label define at01a_maryr1_lbl 1993 `"1993"', add
label define at01a_maryr1_lbl 1994 `"1994"', add
label define at01a_maryr1_lbl 1995 `"1995"', add
label define at01a_maryr1_lbl 1996 `"1996"', add
label define at01a_maryr1_lbl 1997 `"1997"', add
label define at01a_maryr1_lbl 1998 `"1998"', add
label define at01a_maryr1_lbl 1999 `"1999"', add
label define at01a_maryr1_lbl 2000 `"2000"', add
label define at01a_maryr1_lbl 2001 `"2001"', add
label define at01a_maryr1_lbl 9999 `"NIU (not in universe)"', add
label values at01a_maryr1 at01a_maryr1_lbl

label define at01a_mardur_lbl 00 `"Under 1 year"'
label define at01a_mardur_lbl 01 `"1"', add
label define at01a_mardur_lbl 02 `"2"', add
label define at01a_mardur_lbl 03 `"3"', add
label define at01a_mardur_lbl 04 `"4"', add
label define at01a_mardur_lbl 05 `"5"', add
label define at01a_mardur_lbl 06 `"6"', add
label define at01a_mardur_lbl 07 `"7"', add
label define at01a_mardur_lbl 08 `"8"', add
label define at01a_mardur_lbl 09 `"9"', add
label define at01a_mardur_lbl 10 `"10"', add
label define at01a_mardur_lbl 11 `"11"', add
label define at01a_mardur_lbl 12 `"12"', add
label define at01a_mardur_lbl 13 `"13"', add
label define at01a_mardur_lbl 14 `"14"', add
label define at01a_mardur_lbl 15 `"15"', add
label define at01a_mardur_lbl 16 `"16"', add
label define at01a_mardur_lbl 17 `"17"', add
label define at01a_mardur_lbl 18 `"18"', add
label define at01a_mardur_lbl 19 `"19"', add
label define at01a_mardur_lbl 20 `"20"', add
label define at01a_mardur_lbl 21 `"21"', add
label define at01a_mardur_lbl 22 `"22"', add
label define at01a_mardur_lbl 23 `"23"', add
label define at01a_mardur_lbl 24 `"24"', add
label define at01a_mardur_lbl 25 `"25"', add
label define at01a_mardur_lbl 26 `"26"', add
label define at01a_mardur_lbl 27 `"27"', add
label define at01a_mardur_lbl 28 `"28"', add
label define at01a_mardur_lbl 29 `"29"', add
label define at01a_mardur_lbl 30 `"30"', add
label define at01a_mardur_lbl 31 `"31"', add
label define at01a_mardur_lbl 32 `"32"', add
label define at01a_mardur_lbl 33 `"33"', add
label define at01a_mardur_lbl 34 `"34"', add
label define at01a_mardur_lbl 35 `"35"', add
label define at01a_mardur_lbl 36 `"36"', add
label define at01a_mardur_lbl 37 `"37"', add
label define at01a_mardur_lbl 38 `"38"', add
label define at01a_mardur_lbl 39 `"39"', add
label define at01a_mardur_lbl 40 `"40"', add
label define at01a_mardur_lbl 41 `"41"', add
label define at01a_mardur_lbl 42 `"42"', add
label define at01a_mardur_lbl 43 `"43"', add
label define at01a_mardur_lbl 44 `"44"', add
label define at01a_mardur_lbl 45 `"45"', add
label define at01a_mardur_lbl 46 `"46"', add
label define at01a_mardur_lbl 47 `"47"', add
label define at01a_mardur_lbl 48 `"48"', add
label define at01a_mardur_lbl 49 `"49"', add
label define at01a_mardur_lbl 50 `"50+"', add
label define at01a_mardur_lbl 99 `"NIU (not in universe)"', add
label values at01a_mardur at01a_mardur_lbl

label define at01a_marage_lbl 17 `"Up to 17 years"'
label define at01a_marage_lbl 18 `"18"', add
label define at01a_marage_lbl 19 `"19"', add
label define at01a_marage_lbl 20 `"20"', add
label define at01a_marage_lbl 21 `"21"', add
label define at01a_marage_lbl 22 `"22"', add
label define at01a_marage_lbl 23 `"23"', add
label define at01a_marage_lbl 24 `"24"', add
label define at01a_marage_lbl 25 `"25"', add
label define at01a_marage_lbl 26 `"26"', add
label define at01a_marage_lbl 27 `"27"', add
label define at01a_marage_lbl 28 `"28"', add
label define at01a_marage_lbl 29 `"29"', add
label define at01a_marage_lbl 30 `"30"', add
label define at01a_marage_lbl 31 `"31"', add
label define at01a_marage_lbl 32 `"32"', add
label define at01a_marage_lbl 33 `"33"', add
label define at01a_marage_lbl 34 `"34"', add
label define at01a_marage_lbl 35 `"35"', add
label define at01a_marage_lbl 36 `"36"', add
label define at01a_marage_lbl 37 `"37"', add
label define at01a_marage_lbl 38 `"38"', add
label define at01a_marage_lbl 39 `"39"', add
label define at01a_marage_lbl 40 `"40"', add
label define at01a_marage_lbl 41 `"41"', add
label define at01a_marage_lbl 42 `"42"', add
label define at01a_marage_lbl 43 `"43"', add
label define at01a_marage_lbl 44 `"44"', add
label define at01a_marage_lbl 45 `"45"', add
label define at01a_marage_lbl 46 `"46"', add
label define at01a_marage_lbl 47 `"47"', add
label define at01a_marage_lbl 48 `"48"', add
label define at01a_marage_lbl 49 `"49"', add
label define at01a_marage_lbl 50 `"50+"', add
label define at01a_marage_lbl 99 `"NIU (not in universe)"', add
label values at01a_marage at01a_marage_lbl

label define at01a_hhty6p_lbl 01 `"Married couple without children"'
label define at01a_hhty6p_lbl 02 `"Married couple with children"', add
label define at01a_hhty6p_lbl 03 `"Cohabiting couple without children"', add
label define at01a_hhty6p_lbl 04 `"Cohabiting couple with children"', add
label define at01a_hhty6p_lbl 05 `"Lone mother"', add
label define at01a_hhty6p_lbl 06 `"Lone father"', add
label define at01a_hhty6p_lbl 07 `"Household with two or more families"', add
label define at01a_hhty6p_lbl 08 `"Single person household, male"', add
label define at01a_hhty6p_lbl 09 `"Single person household, female"', add
label define at01a_hhty6p_lbl 10 `"Non-family, multi-person household"', add
label define at01a_hhty6p_lbl 11 `"Institutional household"', add
label values at01a_hhty6p at01a_hhty6p_lbl


