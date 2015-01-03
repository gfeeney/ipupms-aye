* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                    ///
  int     cntry           1-3    ///
  int     year            4-7    ///
  int     sample          8-11   ///
  double  serial          12-21  ///
  long    ar10a_dwnum     22-28  ///
  byte    ar10a_pern      29-30  ///
  byte    ar10a_prov      31-32  ///
  byte    ar10a_houstype  33-33  ///
  byte    ar10a_floor     34-34  ///
  byte    ar10a_roof      35-35  ///
  byte    ar10a_ceiling   36-36  ///
  byte    ar10a_watsup    37-37  ///
  byte    ar10a_watsrc    38-38  ///
  byte    ar10a_bath      39-39  ///
  byte    ar10a_toilet    40-40  ///
  byte    ar10a_sewage    41-41  ///
  byte    ar10a_privbath  42-42  ///
  byte    ar10a_fuelck    43-43  ///
  byte    ar10a_bedrms    44-45  ///
  byte    ar10a_rooms     46-47  ///
  byte    ar10a_ownrshp   48-48  ///
  byte    ar10a_landown   49-49  ///
  byte    ar10a_refrig    50-50  ///
  byte    ar10a_computr   51-51  ///
  byte    ar10a_cellphon  52-52  ///
  byte    ar10a_phone     53-53  ///
  int     pernum          54-56  ///
  float   wtper           57-64  ///
  byte    ar10a_pernum    65-66  ///
  byte    ar10a_relate    67-67  ///
  byte    ar10a_sex       68-68  ///
  int     ar10a_age       69-71  ///
  byte    ar10a_birthmn   72-73  ///
  int     ar10a_birthyr   74-77  ///
  byte    ar10a_bpl       78-78  ///
  int     ar10a_country   79-81  ///
  byte    ar10a_lit       82-82  ///
  byte    ar10a_school    83-83  ///
  byte    ar10a_edlev     84-85  ///
  byte    ar10a_grade     86-87  ///
  int     ar10a_edattan   88-90  ///
  byte    ar10a_secsch    91-91  ///
  byte    ar10a_levelsch  92-92  ///
  byte    ar10a_compuse   93-93  ///
  byte    ar10a_wk1hr     94-94  ///
  byte    ar10a_wkinf     95-95  ///
  byte    ar10a_wkaway    96-96  ///
  byte    ar10a_wklook    97-97  ///
  using `"ipumsi_00049.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var ar10a_dwnum    `"Dwelling number"'
label var ar10a_pern     `"Number of persons in household"'
label var ar10a_prov     `"Province"'
label var ar10a_houstype `"Dwelling type"'
label var ar10a_floor    `"Floors material"'
label var ar10a_roof     `"Roof material"'
label var ar10a_ceiling  `"Interior ceiling"'
label var ar10a_watsup   `"Water location"'
label var ar10a_watsrc   `"Water source"'
label var ar10a_bath     `"Household have bathroom"'
label var ar10a_toilet   `"Household have toilet"'
label var ar10a_sewage   `"Sewage disposal"'
label var ar10a_privbath `"Private bath"'
label var ar10a_fuelck   `"Cooking fuel"'
label var ar10a_bedrms   `"Number of bedrooms"'
label var ar10a_rooms    `"Number of rooms"'
label var ar10a_ownrshp  `"Ownership of dwelling"'
label var ar10a_landown  `"Land ownership"'
label var ar10a_refrig   `"Refrigerator"'
label var ar10a_computr  `"Computer"'
label var ar10a_cellphon `"Cellular telephone"'
label var ar10a_phone    `"Landline telephone"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var ar10a_pernum   `"Person number (within household)"'
label var ar10a_relate   `"Relationship to household head"'
label var ar10a_sex      `"Sex"'
label var ar10a_age      `"Age"'
label var ar10a_birthmn  `"Birth month"'
label var ar10a_birthyr  `"Birth year"'
label var ar10a_bpl      `"Country of birth (Argentina or other)"'
label var ar10a_country  `"Country of birth outside Argentina"'
label var ar10a_lit      `"Literacy"'
label var ar10a_school   `"Attend school"'
label var ar10a_edlev    `"Educational level"'
label var ar10a_grade    `"Highest grade completed"'
label var ar10a_edattan  `"Educational attainment"'
label var ar10a_secsch   `"Type of primary school"'
label var ar10a_levelsch `"Completed educational level"'
label var ar10a_compuse  `"Uses computer"'
label var ar10a_wk1hr    `"Worked at least 1 hour last week"'
label var ar10a_wkinf    `"Informal work last week"'
label var ar10a_wkaway   `"Did not work but had work"'
label var ar10a_wklook   `"Looked for work last 4 weeks"'

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

label define ar10a_pern_lbl 01 `"1"'
label define ar10a_pern_lbl 02 `"2"', add
label define ar10a_pern_lbl 03 `"3"', add
label define ar10a_pern_lbl 04 `"4"', add
label define ar10a_pern_lbl 05 `"5"', add
label define ar10a_pern_lbl 06 `"6"', add
label define ar10a_pern_lbl 07 `"7"', add
label define ar10a_pern_lbl 08 `"8"', add
label define ar10a_pern_lbl 09 `"9"', add
label define ar10a_pern_lbl 10 `"10"', add
label define ar10a_pern_lbl 11 `"11"', add
label define ar10a_pern_lbl 12 `"12"', add
label define ar10a_pern_lbl 13 `"13"', add
label define ar10a_pern_lbl 14 `"14"', add
label define ar10a_pern_lbl 15 `"15"', add
label define ar10a_pern_lbl 16 `"16"', add
label define ar10a_pern_lbl 17 `"17"', add
label define ar10a_pern_lbl 18 `"18"', add
label define ar10a_pern_lbl 19 `"19"', add
label define ar10a_pern_lbl 20 `"20"', add
label define ar10a_pern_lbl 21 `"21"', add
label define ar10a_pern_lbl 22 `"22"', add
label define ar10a_pern_lbl 23 `"23"', add
label define ar10a_pern_lbl 24 `"24"', add
label define ar10a_pern_lbl 25 `"25"', add
label define ar10a_pern_lbl 34 `"34"', add
label define ar10a_pern_lbl 40 `"40"', add
label values ar10a_pern ar10a_pern_lbl

label define ar10a_prov_lbl 02 `"City of Buenos Aires"'
label define ar10a_prov_lbl 06 `"Buenos Aires province"', add
label define ar10a_prov_lbl 10 `"Catamarca"', add
label define ar10a_prov_lbl 14 `"Cordoba"', add
label define ar10a_prov_lbl 18 `"Corrientes"', add
label define ar10a_prov_lbl 22 `"Chaco"', add
label define ar10a_prov_lbl 26 `"Chubut"', add
label define ar10a_prov_lbl 30 `"Entre Rios"', add
label define ar10a_prov_lbl 34 `"Formosa"', add
label define ar10a_prov_lbl 38 `"Jujuy"', add
label define ar10a_prov_lbl 42 `"La Pampa"', add
label define ar10a_prov_lbl 46 `"La Rioja"', add
label define ar10a_prov_lbl 50 `"Mendoza"', add
label define ar10a_prov_lbl 54 `"Misiones"', add
label define ar10a_prov_lbl 58 `"Neuquen"', add
label define ar10a_prov_lbl 62 `"Rio Negro"', add
label define ar10a_prov_lbl 66 `"Salta"', add
label define ar10a_prov_lbl 70 `"San Juan"', add
label define ar10a_prov_lbl 74 `"San Luis"', add
label define ar10a_prov_lbl 78 `"Santa Cruz"', add
label define ar10a_prov_lbl 82 `"Santa Fe"', add
label define ar10a_prov_lbl 86 `"Santiago del Estero"', add
label define ar10a_prov_lbl 90 `"Tucuman"', add
label define ar10a_prov_lbl 94 `"Tierra del Fuego"', add
label values ar10a_prov ar10a_prov_lbl

label define ar10a_houstype_lbl 1 `"House"'
label define ar10a_houstype_lbl 2 `"Ranch house"', add
label define ar10a_houstype_lbl 3 `"Shack"', add
label define ar10a_houstype_lbl 4 `"Apartment"', add
label define ar10a_houstype_lbl 5 `"Room in a boarding house"', add
label define ar10a_houstype_lbl 6 `"Room in a family house or pension"', add
label define ar10a_houstype_lbl 7 `"Mobile dwelling"', add
label define ar10a_houstype_lbl 8 `"Persons living in the street"', add
label values ar10a_houstype ar10a_houstype_lbl

label define ar10a_floor_lbl 1 `"Ceramic, tile, mosaic, marble, wood, or carpet"'
label define ar10a_floor_lbl 2 `"Cement or attached bricks"', add
label define ar10a_floor_lbl 3 `"Dirt or loose brick"', add
label define ar10a_floor_lbl 4 `"Other"', add
label values ar10a_floor ar10a_floor_lbl

label define ar10a_roof_lbl 1 `"Asphalt coating or membrane"'
label define ar10a_roof_lbl 2 `"Tile or clay tiles (without coating)"', add
label define ar10a_roof_lbl 3 `"Clay or clay tiles"', add
label define ar10a_roof_lbl 4 `"Metal sheeting (without coating)"', add
label define ar10a_roof_lbl 5 `"Fiber-cement or plastic sheeting"', add
label define ar10a_roof_lbl 6 `"Cardboard sheeting"', add
label define ar10a_roof_lbl 7 `"Cane, palm, boards, or straw with or without clay"', add
label define ar10a_roof_lbl 8 `"Other"', add
label values ar10a_roof ar10a_roof_lbl

label define ar10a_ceiling_lbl 1 `"Yes"'
label define ar10a_ceiling_lbl 2 `"No"', add
label values ar10a_ceiling ar10a_ceiling_lbl

label define ar10a_watsup_lbl 1 `"Supplied through pipes inside the dwelling"'
label define ar10a_watsup_lbl 2 `"Outside the dwelling but within the property"', add
label define ar10a_watsup_lbl 3 `"Outside the property"', add
label values ar10a_watsup ar10a_watsup_lbl

label define ar10a_watsrc_lbl 1 `"Public network"'
label define ar10a_watsrc_lbl 2 `"Drilled-well with a motorized pump"', add
label define ar10a_watsrc_lbl 3 `"Drilled-well with a hand pump"', add
label define ar10a_watsrc_lbl 4 `"Well"', add
label define ar10a_watsrc_lbl 5 `"Transported on a cistern"', add
label define ar10a_watsrc_lbl 6 `"Rain water, river, channel, ditch or spring"', add
label values ar10a_watsrc ar10a_watsrc_lbl

label define ar10a_bath_lbl 1 `"Yes"'
label define ar10a_bath_lbl 2 `"No"', add
label values ar10a_bath ar10a_bath_lbl

label define ar10a_toilet_lbl 1 `"Yes"'
label define ar10a_toilet_lbl 2 `"No"', add
label define ar10a_toilet_lbl 9 `"NIU (not in universe)"', add
label values ar10a_toilet ar10a_toilet_lbl

label define ar10a_sewage_lbl 1 `"Public network (sewer)"'
label define ar10a_sewage_lbl 2 `"Septic tank and septic well"', add
label define ar10a_sewage_lbl 3 `"Only to a septic well"', add
label define ar10a_sewage_lbl 4 `"Hole or excavation in the dirt, etc."', add
label define ar10a_sewage_lbl 9 `"NIU (not in universe)"', add
label values ar10a_sewage ar10a_sewage_lbl

label define ar10a_privbath_lbl 1 `"Only used by this household"'
label define ar10a_privbath_lbl 2 `"Shared with other households"', add
label define ar10a_privbath_lbl 9 `"NIU (not in universe)"', add
label values ar10a_privbath ar10a_privbath_lbl

label define ar10a_fuelck_lbl 1 `"Gas from a network"'
label define ar10a_fuelck_lbl 2 `"Gas from a tank (zeppelin tank)"', add
label define ar10a_fuelck_lbl 3 `"Gas in a cylinder"', add
label define ar10a_fuelck_lbl 4 `"Gas in a canister"', add
label define ar10a_fuelck_lbl 5 `"Electricity"', add
label define ar10a_fuelck_lbl 6 `"Firewood or charcoal"', add
label define ar10a_fuelck_lbl 7 `"Other"', add
label values ar10a_fuelck ar10a_fuelck_lbl

label define ar10a_bedrms_lbl 01 `"1"'
label define ar10a_bedrms_lbl 02 `"2"', add
label define ar10a_bedrms_lbl 03 `"3"', add
label define ar10a_bedrms_lbl 04 `"4"', add
label define ar10a_bedrms_lbl 05 `"5"', add
label define ar10a_bedrms_lbl 06 `"6"', add
label define ar10a_bedrms_lbl 07 `"7"', add
label define ar10a_bedrms_lbl 08 `"8"', add
label define ar10a_bedrms_lbl 09 `"9"', add
label define ar10a_bedrms_lbl 10 `"10+"', add
label values ar10a_bedrms ar10a_bedrms_lbl

label define ar10a_rooms_lbl 01 `"1"'
label define ar10a_rooms_lbl 02 `"2"', add
label define ar10a_rooms_lbl 03 `"3"', add
label define ar10a_rooms_lbl 04 `"4"', add
label define ar10a_rooms_lbl 05 `"5"', add
label define ar10a_rooms_lbl 06 `"6"', add
label define ar10a_rooms_lbl 07 `"7"', add
label define ar10a_rooms_lbl 08 `"8"', add
label define ar10a_rooms_lbl 09 `"9"', add
label define ar10a_rooms_lbl 10 `"10"', add
label define ar10a_rooms_lbl 11 `"11"', add
label define ar10a_rooms_lbl 12 `"12"', add
label define ar10a_rooms_lbl 13 `"13"', add
label define ar10a_rooms_lbl 14 `"14"', add
label define ar10a_rooms_lbl 15 `"15+"', add
label values ar10a_rooms ar10a_rooms_lbl

label define ar10a_ownrshp_lbl 1 `"Owned"'
label define ar10a_ownrshp_lbl 2 `"Rented"', add
label define ar10a_ownrshp_lbl 3 `"Loaned"', add
label define ar10a_ownrshp_lbl 4 `"Ceded for work"', add
label define ar10a_ownrshp_lbl 5 `"Other situation"', add
label values ar10a_ownrshp ar10a_ownrshp_lbl

label define ar10a_landown_lbl 1 `"Yes"'
label define ar10a_landown_lbl 2 `"No"', add
label define ar10a_landown_lbl 9 `"NIU (not in universe)"', add
label values ar10a_landown ar10a_landown_lbl

label define ar10a_refrig_lbl 1 `"Yes"'
label define ar10a_refrig_lbl 2 `"No"', add
label values ar10a_refrig ar10a_refrig_lbl

label define ar10a_computr_lbl 1 `"Yes"'
label define ar10a_computr_lbl 2 `"No"', add
label values ar10a_computr ar10a_computr_lbl

label define ar10a_cellphon_lbl 1 `"Yes"'
label define ar10a_cellphon_lbl 2 `"No"', add
label values ar10a_cellphon ar10a_cellphon_lbl

label define ar10a_phone_lbl 1 `"Yes"'
label define ar10a_phone_lbl 2 `"No"', add
label values ar10a_phone ar10a_phone_lbl

label define ar10a_pernum_lbl 00 `"Household record"'
label define ar10a_pernum_lbl 01 `"1"', add
label define ar10a_pernum_lbl 02 `"2"', add
label define ar10a_pernum_lbl 03 `"3"', add
label define ar10a_pernum_lbl 04 `"4"', add
label define ar10a_pernum_lbl 05 `"5"', add
label define ar10a_pernum_lbl 06 `"6"', add
label define ar10a_pernum_lbl 07 `"7"', add
label define ar10a_pernum_lbl 08 `"8"', add
label define ar10a_pernum_lbl 09 `"9"', add
label define ar10a_pernum_lbl 10 `"10"', add
label define ar10a_pernum_lbl 11 `"11"', add
label define ar10a_pernum_lbl 12 `"12"', add
label define ar10a_pernum_lbl 13 `"13"', add
label define ar10a_pernum_lbl 14 `"14"', add
label define ar10a_pernum_lbl 15 `"15"', add
label define ar10a_pernum_lbl 16 `"16"', add
label define ar10a_pernum_lbl 17 `"17"', add
label define ar10a_pernum_lbl 18 `"18"', add
label define ar10a_pernum_lbl 19 `"19"', add
label define ar10a_pernum_lbl 20 `"20"', add
label define ar10a_pernum_lbl 21 `"21"', add
label define ar10a_pernum_lbl 22 `"22"', add
label define ar10a_pernum_lbl 23 `"23"', add
label define ar10a_pernum_lbl 24 `"24"', add
label define ar10a_pernum_lbl 25 `"25"', add
label define ar10a_pernum_lbl 26 `"26"', add
label define ar10a_pernum_lbl 27 `"27"', add
label define ar10a_pernum_lbl 28 `"28"', add
label define ar10a_pernum_lbl 29 `"29"', add
label define ar10a_pernum_lbl 30 `"30"', add
label define ar10a_pernum_lbl 31 `"31"', add
label define ar10a_pernum_lbl 32 `"32"', add
label define ar10a_pernum_lbl 33 `"33"', add
label define ar10a_pernum_lbl 34 `"34"', add
label define ar10a_pernum_lbl 35 `"35"', add
label define ar10a_pernum_lbl 36 `"36"', add
label define ar10a_pernum_lbl 37 `"37"', add
label define ar10a_pernum_lbl 38 `"38"', add
label define ar10a_pernum_lbl 39 `"39"', add
label define ar10a_pernum_lbl 40 `"40"', add
label values ar10a_pernum ar10a_pernum_lbl

label define ar10a_relate_lbl 1 `"Head"'
label define ar10a_relate_lbl 2 `"Spouse or partner"', add
label define ar10a_relate_lbl 3 `"Son/daughter or stepson/daughter"', add
label define ar10a_relate_lbl 4 `"Son-in-law or daughter-in-law"', add
label define ar10a_relate_lbl 5 `"Grandson/granddaughter"', add
label define ar10a_relate_lbl 6 `"Father/mother/parent-in-law"', add
label define ar10a_relate_lbl 7 `"Other family members"', add
label define ar10a_relate_lbl 8 `"Other non-family members"', add
label define ar10a_relate_lbl 9 `"Domestic servants and their families"', add
label values ar10a_relate ar10a_relate_lbl

label define ar10a_sex_lbl 1 `"Male"'
label define ar10a_sex_lbl 2 `"Female"', add
label values ar10a_sex ar10a_sex_lbl

label define ar10a_age_lbl 000 `"Less than 1 year old"'
label define ar10a_age_lbl 001 `"1"', add
label define ar10a_age_lbl 002 `"2"', add
label define ar10a_age_lbl 003 `"3"', add
label define ar10a_age_lbl 004 `"4"', add
label define ar10a_age_lbl 005 `"5"', add
label define ar10a_age_lbl 006 `"6"', add
label define ar10a_age_lbl 007 `"7"', add
label define ar10a_age_lbl 008 `"8"', add
label define ar10a_age_lbl 009 `"9"', add
label define ar10a_age_lbl 010 `"10"', add
label define ar10a_age_lbl 011 `"11"', add
label define ar10a_age_lbl 012 `"12"', add
label define ar10a_age_lbl 013 `"13"', add
label define ar10a_age_lbl 014 `"14"', add
label define ar10a_age_lbl 015 `"15"', add
label define ar10a_age_lbl 016 `"16"', add
label define ar10a_age_lbl 017 `"17"', add
label define ar10a_age_lbl 018 `"18"', add
label define ar10a_age_lbl 019 `"19"', add
label define ar10a_age_lbl 020 `"20"', add
label define ar10a_age_lbl 021 `"21"', add
label define ar10a_age_lbl 022 `"22"', add
label define ar10a_age_lbl 023 `"23"', add
label define ar10a_age_lbl 024 `"24"', add
label define ar10a_age_lbl 025 `"25"', add
label define ar10a_age_lbl 026 `"26"', add
label define ar10a_age_lbl 027 `"27"', add
label define ar10a_age_lbl 028 `"28"', add
label define ar10a_age_lbl 029 `"29"', add
label define ar10a_age_lbl 030 `"30"', add
label define ar10a_age_lbl 031 `"31"', add
label define ar10a_age_lbl 032 `"32"', add
label define ar10a_age_lbl 033 `"33"', add
label define ar10a_age_lbl 034 `"34"', add
label define ar10a_age_lbl 035 `"35"', add
label define ar10a_age_lbl 036 `"36"', add
label define ar10a_age_lbl 037 `"37"', add
label define ar10a_age_lbl 038 `"38"', add
label define ar10a_age_lbl 039 `"39"', add
label define ar10a_age_lbl 040 `"40"', add
label define ar10a_age_lbl 041 `"41"', add
label define ar10a_age_lbl 042 `"42"', add
label define ar10a_age_lbl 043 `"43"', add
label define ar10a_age_lbl 044 `"44"', add
label define ar10a_age_lbl 045 `"45"', add
label define ar10a_age_lbl 046 `"46"', add
label define ar10a_age_lbl 047 `"47"', add
label define ar10a_age_lbl 048 `"48"', add
label define ar10a_age_lbl 049 `"49"', add
label define ar10a_age_lbl 050 `"50"', add
label define ar10a_age_lbl 051 `"51"', add
label define ar10a_age_lbl 052 `"52"', add
label define ar10a_age_lbl 053 `"53"', add
label define ar10a_age_lbl 054 `"54"', add
label define ar10a_age_lbl 055 `"55"', add
label define ar10a_age_lbl 056 `"56"', add
label define ar10a_age_lbl 057 `"57"', add
label define ar10a_age_lbl 058 `"58"', add
label define ar10a_age_lbl 059 `"59"', add
label define ar10a_age_lbl 060 `"60"', add
label define ar10a_age_lbl 061 `"61"', add
label define ar10a_age_lbl 062 `"62"', add
label define ar10a_age_lbl 063 `"63"', add
label define ar10a_age_lbl 064 `"64"', add
label define ar10a_age_lbl 065 `"65"', add
label define ar10a_age_lbl 066 `"66"', add
label define ar10a_age_lbl 067 `"67"', add
label define ar10a_age_lbl 068 `"68"', add
label define ar10a_age_lbl 069 `"69"', add
label define ar10a_age_lbl 070 `"70"', add
label define ar10a_age_lbl 071 `"71"', add
label define ar10a_age_lbl 072 `"72"', add
label define ar10a_age_lbl 073 `"73"', add
label define ar10a_age_lbl 074 `"74"', add
label define ar10a_age_lbl 075 `"75"', add
label define ar10a_age_lbl 076 `"76"', add
label define ar10a_age_lbl 077 `"77"', add
label define ar10a_age_lbl 078 `"78"', add
label define ar10a_age_lbl 079 `"79"', add
label define ar10a_age_lbl 080 `"80"', add
label define ar10a_age_lbl 081 `"81"', add
label define ar10a_age_lbl 082 `"82"', add
label define ar10a_age_lbl 083 `"83"', add
label define ar10a_age_lbl 084 `"84"', add
label define ar10a_age_lbl 085 `"85"', add
label define ar10a_age_lbl 086 `"86"', add
label define ar10a_age_lbl 087 `"87"', add
label define ar10a_age_lbl 088 `"88"', add
label define ar10a_age_lbl 089 `"89"', add
label define ar10a_age_lbl 090 `"90"', add
label define ar10a_age_lbl 091 `"91"', add
label define ar10a_age_lbl 092 `"92"', add
label define ar10a_age_lbl 093 `"93"', add
label define ar10a_age_lbl 094 `"94"', add
label define ar10a_age_lbl 095 `"95"', add
label define ar10a_age_lbl 096 `"96"', add
label define ar10a_age_lbl 097 `"97"', add
label define ar10a_age_lbl 098 `"98"', add
label define ar10a_age_lbl 099 `"99"', add
label define ar10a_age_lbl 100 `"100+"', add
label values ar10a_age ar10a_age_lbl

label define ar10a_birthmn_lbl 01 `"January"'
label define ar10a_birthmn_lbl 02 `"February"', add
label define ar10a_birthmn_lbl 03 `"March"', add
label define ar10a_birthmn_lbl 04 `"April"', add
label define ar10a_birthmn_lbl 05 `"May"', add
label define ar10a_birthmn_lbl 06 `"June"', add
label define ar10a_birthmn_lbl 07 `"July"', add
label define ar10a_birthmn_lbl 08 `"August"', add
label define ar10a_birthmn_lbl 09 `"September"', add
label define ar10a_birthmn_lbl 10 `"October"', add
label define ar10a_birthmn_lbl 11 `"November"', add
label define ar10a_birthmn_lbl 12 `"December"', add
label define ar10a_birthmn_lbl 98 `"Unknown"', add
label values ar10a_birthmn ar10a_birthmn_lbl

label define ar10a_birthyr_lbl 1900 `"1900"'
label define ar10a_birthyr_lbl 1901 `"1901"', add
label define ar10a_birthyr_lbl 1902 `"1902"', add
label define ar10a_birthyr_lbl 1903 `"1903"', add
label define ar10a_birthyr_lbl 1904 `"1904"', add
label define ar10a_birthyr_lbl 1905 `"1905"', add
label define ar10a_birthyr_lbl 1906 `"1906"', add
label define ar10a_birthyr_lbl 1907 `"1907"', add
label define ar10a_birthyr_lbl 1908 `"1908"', add
label define ar10a_birthyr_lbl 1909 `"1909"', add
label define ar10a_birthyr_lbl 1910 `"1910"', add
label define ar10a_birthyr_lbl 1911 `"1911"', add
label define ar10a_birthyr_lbl 1912 `"1912"', add
label define ar10a_birthyr_lbl 1913 `"1913"', add
label define ar10a_birthyr_lbl 1914 `"1914"', add
label define ar10a_birthyr_lbl 1915 `"1915"', add
label define ar10a_birthyr_lbl 1916 `"1916"', add
label define ar10a_birthyr_lbl 1917 `"1917"', add
label define ar10a_birthyr_lbl 1918 `"1918"', add
label define ar10a_birthyr_lbl 1919 `"1919"', add
label define ar10a_birthyr_lbl 1920 `"1920"', add
label define ar10a_birthyr_lbl 1921 `"1921"', add
label define ar10a_birthyr_lbl 1922 `"1922"', add
label define ar10a_birthyr_lbl 1923 `"1923"', add
label define ar10a_birthyr_lbl 1924 `"1924"', add
label define ar10a_birthyr_lbl 1925 `"1925"', add
label define ar10a_birthyr_lbl 1926 `"1926"', add
label define ar10a_birthyr_lbl 1927 `"1927"', add
label define ar10a_birthyr_lbl 1928 `"1928"', add
label define ar10a_birthyr_lbl 1929 `"1929"', add
label define ar10a_birthyr_lbl 1930 `"1930"', add
label define ar10a_birthyr_lbl 1931 `"1931"', add
label define ar10a_birthyr_lbl 1932 `"1932"', add
label define ar10a_birthyr_lbl 1933 `"1933"', add
label define ar10a_birthyr_lbl 1934 `"1934"', add
label define ar10a_birthyr_lbl 1935 `"1935"', add
label define ar10a_birthyr_lbl 1936 `"1936"', add
label define ar10a_birthyr_lbl 1937 `"1937"', add
label define ar10a_birthyr_lbl 1938 `"1938"', add
label define ar10a_birthyr_lbl 1939 `"1939"', add
label define ar10a_birthyr_lbl 1940 `"1940"', add
label define ar10a_birthyr_lbl 1941 `"1941"', add
label define ar10a_birthyr_lbl 1942 `"1942"', add
label define ar10a_birthyr_lbl 1943 `"1943"', add
label define ar10a_birthyr_lbl 1944 `"1944"', add
label define ar10a_birthyr_lbl 1945 `"1945"', add
label define ar10a_birthyr_lbl 1946 `"1946"', add
label define ar10a_birthyr_lbl 1947 `"1947"', add
label define ar10a_birthyr_lbl 1948 `"1948"', add
label define ar10a_birthyr_lbl 1949 `"1949"', add
label define ar10a_birthyr_lbl 1950 `"1950"', add
label define ar10a_birthyr_lbl 1951 `"1951"', add
label define ar10a_birthyr_lbl 1952 `"1952"', add
label define ar10a_birthyr_lbl 1953 `"1953"', add
label define ar10a_birthyr_lbl 1954 `"1954"', add
label define ar10a_birthyr_lbl 1955 `"1955"', add
label define ar10a_birthyr_lbl 1956 `"1956"', add
label define ar10a_birthyr_lbl 1957 `"1957"', add
label define ar10a_birthyr_lbl 1958 `"1958"', add
label define ar10a_birthyr_lbl 1959 `"1959"', add
label define ar10a_birthyr_lbl 1960 `"1960"', add
label define ar10a_birthyr_lbl 1961 `"1961"', add
label define ar10a_birthyr_lbl 1962 `"1962"', add
label define ar10a_birthyr_lbl 1963 `"1963"', add
label define ar10a_birthyr_lbl 1964 `"1964"', add
label define ar10a_birthyr_lbl 1965 `"1965"', add
label define ar10a_birthyr_lbl 1966 `"1966"', add
label define ar10a_birthyr_lbl 1967 `"1967"', add
label define ar10a_birthyr_lbl 1968 `"1968"', add
label define ar10a_birthyr_lbl 1969 `"1969"', add
label define ar10a_birthyr_lbl 1970 `"1970"', add
label define ar10a_birthyr_lbl 1971 `"1971"', add
label define ar10a_birthyr_lbl 1972 `"1972"', add
label define ar10a_birthyr_lbl 1973 `"1973"', add
label define ar10a_birthyr_lbl 1974 `"1974"', add
label define ar10a_birthyr_lbl 1975 `"1975"', add
label define ar10a_birthyr_lbl 1976 `"1976"', add
label define ar10a_birthyr_lbl 1977 `"1977"', add
label define ar10a_birthyr_lbl 1978 `"1978"', add
label define ar10a_birthyr_lbl 1979 `"1979"', add
label define ar10a_birthyr_lbl 1980 `"1980"', add
label define ar10a_birthyr_lbl 1981 `"1981"', add
label define ar10a_birthyr_lbl 1982 `"1982"', add
label define ar10a_birthyr_lbl 1983 `"1983"', add
label define ar10a_birthyr_lbl 1984 `"1984"', add
label define ar10a_birthyr_lbl 1985 `"1985"', add
label define ar10a_birthyr_lbl 1986 `"1986"', add
label define ar10a_birthyr_lbl 1987 `"1987"', add
label define ar10a_birthyr_lbl 1988 `"1988"', add
label define ar10a_birthyr_lbl 1989 `"1989"', add
label define ar10a_birthyr_lbl 1990 `"1990"', add
label define ar10a_birthyr_lbl 1991 `"1991"', add
label define ar10a_birthyr_lbl 1992 `"1992"', add
label define ar10a_birthyr_lbl 1993 `"1993"', add
label define ar10a_birthyr_lbl 1994 `"1994"', add
label define ar10a_birthyr_lbl 1995 `"1995"', add
label define ar10a_birthyr_lbl 1996 `"1996"', add
label define ar10a_birthyr_lbl 1997 `"1997"', add
label define ar10a_birthyr_lbl 1998 `"1998"', add
label define ar10a_birthyr_lbl 1999 `"1999"', add
label define ar10a_birthyr_lbl 2000 `"2000"', add
label define ar10a_birthyr_lbl 2001 `"2001"', add
label define ar10a_birthyr_lbl 2002 `"2002"', add
label define ar10a_birthyr_lbl 2003 `"2003"', add
label define ar10a_birthyr_lbl 2004 `"2004"', add
label define ar10a_birthyr_lbl 2005 `"2005"', add
label define ar10a_birthyr_lbl 2006 `"2006"', add
label define ar10a_birthyr_lbl 2007 `"2007"', add
label define ar10a_birthyr_lbl 2008 `"2008"', add
label define ar10a_birthyr_lbl 2009 `"2009"', add
label define ar10a_birthyr_lbl 2010 `"2010"', add
label define ar10a_birthyr_lbl 9999 `"Unknown"', add
label values ar10a_birthyr ar10a_birthyr_lbl

label define ar10a_bpl_lbl 1 `"Argentina"'
label define ar10a_bpl_lbl 2 `"Other country"', add
label values ar10a_bpl ar10a_bpl_lbl

label define ar10a_country_lbl 004 `"Germany"'
label define ar10a_country_lbl 009 `"Armenia"', add
label define ar10a_country_lbl 011 `"Australia"', add
label define ar10a_country_lbl 012 `"Austria"', add
label define ar10a_country_lbl 016 `"Belgium"', add
label define ar10a_country_lbl 020 `"Bolivia"', add
label define ar10a_country_lbl 022 `"Brazil"', add
label define ar10a_country_lbl 023 `"Bulgaria"', add
label define ar10a_country_lbl 030 `"Canada"', add
label define ar10a_country_lbl 032 `"Chile"', add
label define ar10a_country_lbl 033 `"China"', add
label define ar10a_country_lbl 034 `"Cyprus"', add
label define ar10a_country_lbl 035 `"Colombia"', add
label define ar10a_country_lbl 037 `"North Korea"', add
label define ar10a_country_lbl 038 `"South Korea"', add
label define ar10a_country_lbl 039 `"Costa Rica"', add
label define ar10a_country_lbl 040 `"Croatia"', add
label define ar10a_country_lbl 041 `"Cuba"', add
label define ar10a_country_lbl 042 `"Denmark"', add
label define ar10a_country_lbl 043 `"Ecuador"', add
label define ar10a_country_lbl 044 `"Egypt"', add
label define ar10a_country_lbl 045 `"El Salvador"', add
label define ar10a_country_lbl 047 `"Slovenia"', add
label define ar10a_country_lbl 048 `"United States"', add
label define ar10a_country_lbl 053 `"France"', add
label define ar10a_country_lbl 058 `"Greece"', add
label define ar10a_country_lbl 060 `"Guatemala"', add
label define ar10a_country_lbl 063 `"Haiti"', add
label define ar10a_country_lbl 066 `"Hungary"', add
label define ar10a_country_lbl 067 `"India"', add
label define ar10a_country_lbl 069 `"Iran"', add
label define ar10a_country_lbl 073 `"Israel"', add
label define ar10a_country_lbl 074 `"Italy"', add
label define ar10a_country_lbl 076 `"Japan"', add
label define ar10a_country_lbl 081 `"Lao"', add
label define ar10a_country_lbl 083 `"Lebanon"', add
label define ar10a_country_lbl 086 `"Lithuania"', add
label define ar10a_country_lbl 092 `"Mexico"', add
label define ar10a_country_lbl 095 `"Montenegro"', add
label define ar10a_country_lbl 100 `"Norway"', add
label define ar10a_country_lbl 103 `"Nethelands"', add
label define ar10a_country_lbl 104 `"Panama"', add
label define ar10a_country_lbl 106 `"Paraguay"', add
label define ar10a_country_lbl 107 `"Peru"', add
label define ar10a_country_lbl 108 `"Poland"', add
label define ar10a_country_lbl 109 `"Portugal"', add
label define ar10a_country_lbl 110 `"Puerto Rico"', add
label define ar10a_country_lbl 111 `"United Kingdom"', add
label define ar10a_country_lbl 112 `"Czech Republic"', add
label define ar10a_country_lbl 113 `"Dominican Republic"', add
label define ar10a_country_lbl 114 `"Romania"', add
label define ar10a_country_lbl 115 `"Russia"', add
label define ar10a_country_lbl 117 `"Senegal"', add
label define ar10a_country_lbl 121 `"Syria"', add
label define ar10a_country_lbl 122 `"South Africa"', add
label define ar10a_country_lbl 123 `"Sweden"', add
label define ar10a_country_lbl 124 `"Switzerland"', add
label define ar10a_country_lbl 126 `"Taiwan"', add
label define ar10a_country_lbl 128 `"Palestina"', add
label define ar10a_country_lbl 132 `"Turkey"', add
label define ar10a_country_lbl 133 `"Ukraine"', add
label define ar10a_country_lbl 134 `"Uruguay"', add
label define ar10a_country_lbl 136 `"Venezuela"', add
label define ar10a_country_lbl 140 `"Spain"', add
label define ar10a_country_lbl 900 `"Response suppressed"', add
label define ar10a_country_lbl 999 `"NIU (not in universe)"', add
label values ar10a_country ar10a_country_lbl

label define ar10a_lit_lbl 1 `"Yes"'
label define ar10a_lit_lbl 2 `"No"', add
label define ar10a_lit_lbl 9 `"NIU (not in universe)"', add
label values ar10a_lit ar10a_lit_lbl

label define ar10a_school_lbl 1 `"Attends"'
label define ar10a_school_lbl 2 `"Attended"', add
label define ar10a_school_lbl 3 `"Never attended"', add
label define ar10a_school_lbl 9 `"NIU (not in universe)"', add
label values ar10a_school ar10a_school_lbl

label define ar10a_edlev_lbl 01 `"Initial (kindergarten, pre-school)"'
label define ar10a_edlev_lbl 02 `"Elementary"', add
label define ar10a_edlev_lbl 03 `"EGB [General Basic Education]"', add
label define ar10a_edlev_lbl 04 `"Secondary"', add
label define ar10a_edlev_lbl 05 `"Polimodal (Secondary)"', add
label define ar10a_edlev_lbl 06 `"Higher education, non-university"', add
label define ar10a_edlev_lbl 07 `"University"', add
label define ar10a_edlev_lbl 08 `"Post-graduate"', add
label define ar10a_edlev_lbl 09 `"Special education (for persons with disabilities)"', add
label define ar10a_edlev_lbl 99 `"NIU (not in universe)"', add
label values ar10a_edlev ar10a_edlev_lbl

label define ar10a_grade_lbl 00 `"Have not completed the first grade"'
label define ar10a_grade_lbl 01 `"1"', add
label define ar10a_grade_lbl 02 `"2"', add
label define ar10a_grade_lbl 03 `"3"', add
label define ar10a_grade_lbl 04 `"4"', add
label define ar10a_grade_lbl 05 `"5"', add
label define ar10a_grade_lbl 06 `"6"', add
label define ar10a_grade_lbl 07 `"7"', add
label define ar10a_grade_lbl 08 `"8"', add
label define ar10a_grade_lbl 09 `"9"', add
label define ar10a_grade_lbl 98 `"Unknown"', add
label define ar10a_grade_lbl 99 `"NIU (not in universe)"', add
label values ar10a_grade ar10a_grade_lbl

label define ar10a_edattan_lbl 100 `"Initial (kindergarten, pre-school)"'
label define ar10a_edattan_lbl 200 `"Elementary - 0 years"', add
label define ar10a_edattan_lbl 201 `"Elementary - 1 year"', add
label define ar10a_edattan_lbl 202 `"Elementary - 2 years"', add
label define ar10a_edattan_lbl 203 `"Elementary - 3 years"', add
label define ar10a_edattan_lbl 204 `"Elementary - 4 years"', add
label define ar10a_edattan_lbl 205 `"Elementary - 5 years"', add
label define ar10a_edattan_lbl 206 `"Elementary - 6 years"', add
label define ar10a_edattan_lbl 207 `"Elementary - 7 years or more"', add
label define ar10a_edattan_lbl 209 `"Elementary - Unknown years"', add
label define ar10a_edattan_lbl 300 `"EGB - 0 years [General Basic Education]"', add
label define ar10a_edattan_lbl 301 `"EGB - 1 year"', add
label define ar10a_edattan_lbl 302 `"EGB - 2 years"', add
label define ar10a_edattan_lbl 303 `"EGB - 3 years"', add
label define ar10a_edattan_lbl 304 `"EGB - 4 years"', add
label define ar10a_edattan_lbl 305 `"EGB - 5 years"', add
label define ar10a_edattan_lbl 306 `"EGB - 6 years"', add
label define ar10a_edattan_lbl 307 `"EGB - 7 years"', add
label define ar10a_edattan_lbl 308 `"EGB - 8 years"', add
label define ar10a_edattan_lbl 309 `"EGB - 9 years"', add
label define ar10a_edattan_lbl 310 `"EGB - Unknown years"', add
label define ar10a_edattan_lbl 400 `"Secondary - 0 years"', add
label define ar10a_edattan_lbl 401 `"Secondary - 1 year"', add
label define ar10a_edattan_lbl 402 `"Secondary - 2 years"', add
label define ar10a_edattan_lbl 403 `"Secondary - 3 years"', add
label define ar10a_edattan_lbl 404 `"Secondary - 4 years"', add
label define ar10a_edattan_lbl 405 `"Secondary - 5 years"', add
label define ar10a_edattan_lbl 406 `"Secondary - 6 years"', add
label define ar10a_edattan_lbl 407 `"Secondary - 7 years or more"', add
label define ar10a_edattan_lbl 409 `"Secondary - Unknown years"', add
label define ar10a_edattan_lbl 500 `"Polimodal - 0 years"', add
label define ar10a_edattan_lbl 501 `"Polimodal - 1 year"', add
label define ar10a_edattan_lbl 502 `"Polimodal - 2 years"', add
label define ar10a_edattan_lbl 503 `"Polimodal - 3 years or more"', add
label define ar10a_edattan_lbl 509 `"Polimodal - Unknown years"', add
label define ar10a_edattan_lbl 600 `"Higher education, non-university - 0 years"', add
label define ar10a_edattan_lbl 601 `"Higher education, non-university - 1 year"', add
label define ar10a_edattan_lbl 602 `"Higher education, non-university - 2 years"', add
label define ar10a_edattan_lbl 603 `"Higher education, non-university - 3 years"', add
label define ar10a_edattan_lbl 604 `"Higher education, non-university - 4 years"', add
label define ar10a_edattan_lbl 605 `"Higher education, non-university - 5 years"', add
label define ar10a_edattan_lbl 606 `"Higher education, non-university - 6 years"', add
label define ar10a_edattan_lbl 607 `"Higher education, non-university - 7 years or more"', add
label define ar10a_edattan_lbl 609 `"Higher education, non-university - Unknown years"', add
label define ar10a_edattan_lbl 700 `"University - 0 years"', add
label define ar10a_edattan_lbl 701 `"University - 1 year"', add
label define ar10a_edattan_lbl 702 `"University - 2 years"', add
label define ar10a_edattan_lbl 703 `"University - 3 years"', add
label define ar10a_edattan_lbl 704 `"University - 4 years"', add
label define ar10a_edattan_lbl 705 `"University - 5 years"', add
label define ar10a_edattan_lbl 706 `"University - 6 years or more"', add
label define ar10a_edattan_lbl 709 `"University - Unknown years"', add
label define ar10a_edattan_lbl 800 `"Post-graduate - 0 years"', add
label define ar10a_edattan_lbl 801 `"Post-graduate - 1 year"', add
label define ar10a_edattan_lbl 802 `"Post-graduate - 2 years"', add
label define ar10a_edattan_lbl 803 `"Post-graduate - 3 years"', add
label define ar10a_edattan_lbl 804 `"Post-graduate - 4 years"', add
label define ar10a_edattan_lbl 805 `"Post-graduate - 5 years"', add
label define ar10a_edattan_lbl 806 `"Post-graduate - 6 years or more"', add
label define ar10a_edattan_lbl 809 `"Post-graduate - Unknown years"', add
label define ar10a_edattan_lbl 900 `"Special education (for persons with disabilities)"', add
label define ar10a_edattan_lbl 999 `"NIU (not in universe)"', add
label values ar10a_edattan ar10a_edattan_lbl

label define ar10a_secsch_lbl 1 `"6-year primary school"'
label define ar10a_secsch_lbl 2 `"7-year primary school"', add
label define ar10a_secsch_lbl 8 `"Unknown"', add
label define ar10a_secsch_lbl 9 `"NIU (not in universe)"', add
label values ar10a_secsch ar10a_secsch_lbl

label define ar10a_levelsch_lbl 1 `"Yes"'
label define ar10a_levelsch_lbl 2 `"No"', add
label define ar10a_levelsch_lbl 8 `"Unknown"', add
label define ar10a_levelsch_lbl 9 `"NIU (not in universe)"', add
label values ar10a_levelsch ar10a_levelsch_lbl

label define ar10a_compuse_lbl 1 `"Yes"'
label define ar10a_compuse_lbl 2 `"No"', add
label define ar10a_compuse_lbl 9 `"NIU (not in universe)"', add
label values ar10a_compuse ar10a_compuse_lbl

label define ar10a_wk1hr_lbl 1 `"Yes"'
label define ar10a_wk1hr_lbl 2 `"No"', add
label define ar10a_wk1hr_lbl 9 `"NIU (not in universe)"', add
label values ar10a_wk1hr ar10a_wk1hr_lbl

label define ar10a_wkinf_lbl 1 `"Yes"'
label define ar10a_wkinf_lbl 2 `"No"', add
label define ar10a_wkinf_lbl 9 `"NIU (not in universe)"', add
label values ar10a_wkinf ar10a_wkinf_lbl

label define ar10a_wkaway_lbl 1 `"Yes"'
label define ar10a_wkaway_lbl 2 `"No"', add
label define ar10a_wkaway_lbl 9 `"NIU (not in universe)"', add
label values ar10a_wkaway ar10a_wkaway_lbl

label define ar10a_wklook_lbl 1 `"Yes"'
label define ar10a_wklook_lbl 2 `"No"', add
label define ar10a_wklook_lbl 9 `"NIU (not in universe)"', add
label values ar10a_wklook ar10a_wklook_lbl


