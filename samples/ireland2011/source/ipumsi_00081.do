* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  long    ie11a_dwnum      22-27    ///
  byte    ie11a_pern       28-29    ///
  byte    ie11a_fbig       30-30    ///
  byte    ie11a_region     31-31    ///
  byte    ie11a_urban      32-32    ///
  byte    ie11a_hhtype     33-33    ///
  byte    ie11a_dwtype     34-34    ///
  byte    ie11a_bltyear    35-36    ///
  byte    ie11a_ownrshp    37-37    ///
  byte    ie11a_heating    38-39    ///
  byte    ie11a_watsup     40-40    ///
  byte    ie11a_sewage     41-41    ///
  byte    ie11a_cars       42-42    ///
  byte    ie11a_internet   43-43    ///
  byte    ie11a_pc         44-44    ///
  byte    ie11a_rooms      45-46    ///
  int     pernum           47-49    ///
  float   wtper            50-57    ///
  byte    resident         58-58    ///
  byte    ie11a_pernum     59-60    ///
  byte    ie11a_ptype      61-61    ///
  byte    ie11a_usualres   62-62    ///
  byte    ie11a_famtype    63-63    ///
  byte    ie11a_relate     64-65    ///
  byte    ie11a_sex        66-66    ///
  byte    ie11a_marst      67-67    ///
  int     ie11a_bpl        68-70    ///
  byte    ie11a_bplstat    71-71    ///
  int     ie11a_resnow     72-74    ///
  int     ie11a_resyrago   75-77    ///
  byte    ie11a_yrimmig    78-78    ///
  int     ie11a_prevctry   79-81    ///
  byte    ie11a_spkirish   82-82    ///
  byte    ie11a_irishfq    83-83    ///
  byte    ie11a_leveduc    84-84    ///
  byte    ie11a_field      85-86    ///
  byte    ie11a_edcease    87-88    ///
  byte    ie11a_empstat    89-89    ///
  byte    ie11a_classwk    90-90    ///
  int     ie11a_ind        91-93    ///
  byte    ie11a_socecon    94-95    ///
  byte    ie11a_socclass   96-96    ///
  int     ie11a_nation     97-99    ///
  byte    ie11a_relig      100-100  ///
  byte    ie11a_disab      101-101  ///
  byte    ie11a_health     102-102  ///
  byte    ie11a_carer      103-103  ///
  byte    ie11a_ethnic     104-104  ///
  byte    ie11a_langhome   105-105  ///
  byte    ie11a_englev     106-106  ///
  byte    ie11a_langfor    107-108  ///
  byte    ie11a_chborn     109-110  ///
  byte    ie11a_trantime   111-111  ///
  byte    ie11a_departs    112-113  ///
  byte    ie11a_meantrv    114-115  ///
  byte    ie11a_dissight   116-116  ///
  byte    ie11a_dishear    117-117  ///
  byte    ie11a_disphys    118-118  ///
  byte    ie11a_dismntl    119-119  ///
  byte    ie11a_dislearn   120-120  ///
  byte    ie11a_disspsych  121-121  ///
  byte    ie11a_disother   122-122  ///
  byte    ie11a_diffdress  123-123  ///
  byte    ie11a_diffout    124-124  ///
  byte    ie11a_diffwrk    125-125  ///
  byte    ie11a_diffother  126-126  ///
  byte    ie11a_age        127-128  ///
  int     ie11a_occ        129-131  ///
  using `"ipumsi_00081.dat"'

replace wtper           = wtper           / 100

format serial          %10.0f
format wtper           %8.2f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var ie11a_dwnum     `"Dwelling number"'
label var ie11a_pern      `"Number of persons in household"'
label var ie11a_fbig      `"Dwelling created by splitting apart a large dwelling or household"'
label var ie11a_region    `"Region"'
label var ie11a_urban     `"Area type"'
label var ie11a_hhtype    `"Household composition"'
label var ie11a_dwtype    `"Type of accommodation"'
label var ie11a_bltyear   `"Year dwelling was built"'
label var ie11a_ownrshp   `"Nature of occupancy"'
label var ie11a_heating   `"Central heating"'
label var ie11a_watsup    `"Type of piped water supply"'
label var ie11a_sewage    `"Sewerage facility"'
label var ie11a_cars      `"Number of cars or vans available"'
label var ie11a_internet  `"Type of internet access"'
label var ie11a_pc        `"Household has a PC"'
label var ie11a_rooms     `"Number of rooms available"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var resident        `"Residence status: de facto, de jure"'
label var ie11a_pernum    `"Person number (within household)"'
label var ie11a_ptype     `"Absent person"'
label var ie11a_usualres  `"Usual residence flag"'
label var ie11a_famtype   `"Family type"'
label var ie11a_relate    `"Relationship to reference person"'
label var ie11a_sex       `"Sex"'
label var ie11a_marst     `"Marital status"'
label var ie11a_bpl       `"Region or country of birth"'
label var ie11a_bplstat   `"Place of birth (flag)"'
label var ie11a_resnow    `"Region or country of usual residence"'
label var ie11a_resyrago  `"Region or country of residence 1 year ago"'
label var ie11a_yrimmig   `"Year taking up residency in Ireland"'
label var ie11a_prevctry  `"Country of last previous residence"'
label var ie11a_spkirish  `"Ability to speak Irish"'
label var ie11a_irishfq   `"Frequency of speaking Irish"'
label var ie11a_leveduc   `"Highest level of education completed"'
label var ie11a_field     `"Field of study"'
label var ie11a_edcease   `"Age education ceased"'
label var ie11a_empstat   `"Employment status"'
label var ie11a_classwk   `"Class of worker"'
label var ie11a_ind       `"Industry"'
label var ie11a_socecon   `"Socio-economic group (SEG)"'
label var ie11a_socclass  `"Social class"'
label var ie11a_nation    `"Nationality"'
label var ie11a_relig     `"Religion"'
label var ie11a_disab     `"Disability"'
label var ie11a_health    `"General health"'
label var ie11a_carer     `"Unpaid carer"'
label var ie11a_ethnic    `"Ethnicity"'
label var ie11a_langhome  `"Foreign language at home"'
label var ie11a_englev    `"Level of English"'
label var ie11a_langfor   `"Foreign language spoken"'
label var ie11a_chborn    `"Number of children born alive"'
label var ie11a_trantime  `"Journey time to work, school, or college"'
label var ie11a_departs   `"Time left home for work, school, or college"'
label var ie11a_meantrv   `"Means of travel to work/school/college"'
label var ie11a_dissight  `"Visual disability"'
label var ie11a_dishear   `"Hearing disability"'
label var ie11a_disphys   `"Physical disability"'
label var ie11a_dismntl   `"Intellectual disability"'
label var ie11a_dislearn  `"Learning disability"'
label var ie11a_disspsych `"Psychological disability"'
label var ie11a_disother  `"Other disability"'
label var ie11a_diffdress `"Difficulty dressing"'
label var ie11a_diffout   `"Difficulty going outside"'
label var ie11a_diffwrk   `"Difficulty doing a job"'
label var ie11a_diffother `"Other difficulty"'
label var ie11a_age       `"Age"'
label var ie11a_occ       `"Occupation (shuffled)"'

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

label define ie11a_pern_lbl 01 `"1"'
label define ie11a_pern_lbl 02 `"2"', add
label define ie11a_pern_lbl 03 `"3"', add
label define ie11a_pern_lbl 04 `"4"', add
label define ie11a_pern_lbl 05 `"5"', add
label define ie11a_pern_lbl 06 `"6"', add
label define ie11a_pern_lbl 07 `"7"', add
label define ie11a_pern_lbl 08 `"8"', add
label define ie11a_pern_lbl 09 `"9"', add
label define ie11a_pern_lbl 10 `"10"', add
label define ie11a_pern_lbl 11 `"11"', add
label define ie11a_pern_lbl 12 `"12"', add
label define ie11a_pern_lbl 13 `"13"', add
label define ie11a_pern_lbl 14 `"14"', add
label values ie11a_pern ie11a_pern_lbl

label define ie11a_fbig_lbl 0 `"No problem"'
label define ie11a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define ie11a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values ie11a_fbig ie11a_fbig_lbl

label define ie11a_region_lbl 1 `"Border"'
label define ie11a_region_lbl 2 `"Dublin"', add
label define ie11a_region_lbl 3 `"Mid-East"', add
label define ie11a_region_lbl 4 `"Midland"', add
label define ie11a_region_lbl 5 `"Mid-West"', add
label define ie11a_region_lbl 6 `"South-East"', add
label define ie11a_region_lbl 7 `"South-West"', add
label define ie11a_region_lbl 8 `"West"', add
label values ie11a_region ie11a_region_lbl

label define ie11a_urban_lbl 1 `"Rural"'
label define ie11a_urban_lbl 2 `"Urban"', add
label values ie11a_urban ie11a_urban_lbl

label define ie11a_hhtype_lbl 1 `"One person"'
label define ie11a_hhtype_lbl 2 `"Husband and wife"', add
label define ie11a_hhtype_lbl 3 `"Cohabiting couple"', add
label define ie11a_hhtype_lbl 4 `"Husband and wife with children"', add
label define ie11a_hhtype_lbl 5 `"Cohabiting couple with children"', add
label define ie11a_hhtype_lbl 6 `"Lone mother with children"', add
label define ie11a_hhtype_lbl 7 `"Lone father with children"', add
label define ie11a_hhtype_lbl 8 `"Other household type"', add
label define ie11a_hhtype_lbl 9 `"NIU (not in universe)"', add
label values ie11a_hhtype ie11a_hhtype_lbl

label define ie11a_dwtype_lbl 1 `"Detached house"'
label define ie11a_dwtype_lbl 2 `"Semi-detached house"', add
label define ie11a_dwtype_lbl 3 `"Terraced house"', add
label define ie11a_dwtype_lbl 4 `"Flat or apartment in a purpose-built block"', add
label define ie11a_dwtype_lbl 5 `"Flat or apartment in a converted house or commercial building"', add
label define ie11a_dwtype_lbl 6 `"Bed-sit"', add
label define ie11a_dwtype_lbl 7 `"Caravan, mobile, or temporary structure"', add
label define ie11a_dwtype_lbl 8 `"Unknown"', add
label define ie11a_dwtype_lbl 9 `"NIU (not in universe)"', add
label values ie11a_dwtype ie11a_dwtype_lbl

label define ie11a_bltyear_lbl 01 `"Before 1919"'
label define ie11a_bltyear_lbl 02 `"1919-1945"', add
label define ie11a_bltyear_lbl 03 `"1946-1960"', add
label define ie11a_bltyear_lbl 04 `"1961-1970"', add
label define ie11a_bltyear_lbl 05 `"1971-1980"', add
label define ie11a_bltyear_lbl 06 `"1981-1990"', add
label define ie11a_bltyear_lbl 07 `"1991-2000"', add
label define ie11a_bltyear_lbl 08 `"2001-2005"', add
label define ie11a_bltyear_lbl 09 `"2006 or later"', add
label define ie11a_bltyear_lbl 98 `"Unknown"', add
label define ie11a_bltyear_lbl 99 `"NIU (not in universe)"', add
label values ie11a_bltyear ie11a_bltyear_lbl

label define ie11a_ownrshp_lbl 1 `"Purchaser/owner occupied"'
label define ie11a_ownrshp_lbl 2 `"Rented including rent free"', add
label define ie11a_ownrshp_lbl 8 `"Unknown"', add
label define ie11a_ownrshp_lbl 9 `"NIU (not in universe)"', add
label values ie11a_ownrshp ie11a_ownrshp_lbl

label define ie11a_heating_lbl 01 `"No central heating"'
label define ie11a_heating_lbl 02 `"Oil"', add
label define ie11a_heating_lbl 03 `"Natural gas"', add
label define ie11a_heating_lbl 04 `"Electricity"', add
label define ie11a_heating_lbl 05 `"Coal (including anthracite)"', add
label define ie11a_heating_lbl 06 `"Peat (including turf)"', add
label define ie11a_heating_lbl 07 `"Liquid petroleum gas (LPG)"', add
label define ie11a_heating_lbl 08 `"Wood (including wood pellets)"', add
label define ie11a_heating_lbl 09 `"Other"', add
label define ie11a_heating_lbl 98 `"Unknown"', add
label define ie11a_heating_lbl 99 `"NIU (not in universe)"', add
label values ie11a_heating ie11a_heating_lbl

label define ie11a_watsup_lbl 1 `"Public main"'
label define ie11a_watsup_lbl 2 `"Local authority group scheme"', add
label define ie11a_watsup_lbl 3 `"Private group scheme"', add
label define ie11a_watsup_lbl 4 `"Other private source"', add
label define ie11a_watsup_lbl 8 `"Unknown"', add
label define ie11a_watsup_lbl 9 `"NIU (not in universe)"', add
label values ie11a_watsup ie11a_watsup_lbl

label define ie11a_sewage_lbl 1 `"Public sewerage scheme"'
label define ie11a_sewage_lbl 2 `"Individual septic tank"', add
label define ie11a_sewage_lbl 3 `"Individual system other than a septic tank"', add
label define ie11a_sewage_lbl 4 `"Other"', add
label define ie11a_sewage_lbl 8 `"Unknown"', add
label define ie11a_sewage_lbl 9 `"NIU (not in universe)"', add
label values ie11a_sewage ie11a_sewage_lbl

label define ie11a_cars_lbl 0 `"None"'
label define ie11a_cars_lbl 1 `"1"', add
label define ie11a_cars_lbl 2 `"2"', add
label define ie11a_cars_lbl 3 `"3"', add
label define ie11a_cars_lbl 4 `"4+"', add
label define ie11a_cars_lbl 8 `"Unknown"', add
label define ie11a_cars_lbl 9 `"NIU (not in universe)"', add
label values ie11a_cars ie11a_cars_lbl

label define ie11a_internet_lbl 1 `"Internet with broadband"'
label define ie11a_internet_lbl 2 `"Internet without broadband"', add
label define ie11a_internet_lbl 3 `"No internet"', add
label define ie11a_internet_lbl 8 `"Unknown"', add
label define ie11a_internet_lbl 9 `"NIU (not in universe)"', add
label values ie11a_internet ie11a_internet_lbl

label define ie11a_pc_lbl 1 `"Have a PC"'
label define ie11a_pc_lbl 2 `"Do not have a PC"', add
label define ie11a_pc_lbl 8 `"Unknown"', add
label define ie11a_pc_lbl 9 `"NIU (not in universe)"', add
label values ie11a_pc ie11a_pc_lbl

label define ie11a_rooms_lbl 01 `"1"'
label define ie11a_rooms_lbl 02 `"2"', add
label define ie11a_rooms_lbl 03 `"3"', add
label define ie11a_rooms_lbl 04 `"4"', add
label define ie11a_rooms_lbl 05 `"5"', add
label define ie11a_rooms_lbl 06 `"6"', add
label define ie11a_rooms_lbl 07 `"7"', add
label define ie11a_rooms_lbl 08 `"8"', add
label define ie11a_rooms_lbl 09 `"9+"', add
label define ie11a_rooms_lbl 98 `"Unknown"', add
label define ie11a_rooms_lbl 99 `"NIU (not in universe)"', add
label values ie11a_rooms ie11a_rooms_lbl

label define resident_lbl 1 `"Present resident"'
label define resident_lbl 2 `"Absent resident"', add
label define resident_lbl 3 `"Visitor/non-resident"', add
label define resident_lbl 4 `"De facto population (present persons)"', add
label define resident_lbl 9 `"Unknown/missing"', add
label values resident resident_lbl

label define ie11a_pernum_lbl 00 `"Household record"'
label define ie11a_pernum_lbl 01 `"1"', add
label define ie11a_pernum_lbl 02 `"2"', add
label define ie11a_pernum_lbl 03 `"3"', add
label define ie11a_pernum_lbl 04 `"4"', add
label define ie11a_pernum_lbl 05 `"5"', add
label define ie11a_pernum_lbl 06 `"6"', add
label define ie11a_pernum_lbl 07 `"7"', add
label define ie11a_pernum_lbl 08 `"8"', add
label define ie11a_pernum_lbl 09 `"9"', add
label define ie11a_pernum_lbl 10 `"10"', add
label define ie11a_pernum_lbl 11 `"11"', add
label define ie11a_pernum_lbl 12 `"12"', add
label define ie11a_pernum_lbl 13 `"13"', add
label define ie11a_pernum_lbl 14 `"14"', add
label values ie11a_pernum ie11a_pernum_lbl

label define ie11a_ptype_lbl 1 `"Present"'
label define ie11a_ptype_lbl 2 `"Absent"', add
label values ie11a_ptype ie11a_ptype_lbl

label define ie11a_usualres_lbl 0 `"Person not usually resident in the dwelling they were enumerated in"'
label define ie11a_usualres_lbl 1 `"Person usually resident in the dwelling they were enumerated in"', add
label values ie11a_usualres ie11a_usualres_lbl

label define ie11a_famtype_lbl 0 `"NIU (not in universe)"'
label define ie11a_famtype_lbl 1 `"Husband and wife without children"', add
label define ie11a_famtype_lbl 2 `"Cohabiting couple without children"', add
label define ie11a_famtype_lbl 3 `"Husband and wife with children"', add
label define ie11a_famtype_lbl 4 `"Cohabiting couple with children"', add
label define ie11a_famtype_lbl 5 `"Lone mother with children"', add
label define ie11a_famtype_lbl 6 `"Lone father with children"', add
label values ie11a_famtype ie11a_famtype_lbl

label define ie11a_relate_lbl 00 `"Reference person"'
label define ie11a_relate_lbl 01 `"Husband or wife"', add
label define ie11a_relate_lbl 02 `"Partner (including same-sex partner)"', add
label define ie11a_relate_lbl 03 `"Son or daughter"', add
label define ie11a_relate_lbl 04 `"Step-child"', add
label define ie11a_relate_lbl 05 `"Brother or sister"', add
label define ie11a_relate_lbl 06 `"Mother or father"', add
label define ie11a_relate_lbl 07 `"Grandparent"', add
label define ie11a_relate_lbl 08 `"Step-mother or step-father"', add
label define ie11a_relate_lbl 09 `"Son-in-law or daughter-in-law"', add
label define ie11a_relate_lbl 10 `"Grandchild"', add
label define ie11a_relate_lbl 11 `"Other related"', add
label define ie11a_relate_lbl 12 `"Unrelated (including foster child)"', add
label values ie11a_relate ie11a_relate_lbl

label define ie11a_sex_lbl 1 `"Male"'
label define ie11a_sex_lbl 2 `"Female"', add
label values ie11a_sex ie11a_sex_lbl

label define ie11a_marst_lbl 0 `"NIU (not in universe)"'
label define ie11a_marst_lbl 1 `"Never married"', add
label define ie11a_marst_lbl 2 `"Married"', add
label define ie11a_marst_lbl 3 `"Separated (including divorced)"', add
label define ie11a_marst_lbl 4 `"Widowed"', add
label values ie11a_marst ie11a_marst_lbl

label define ie11a_bpl_lbl 001 `"Border"'
label define ie11a_bpl_lbl 002 `"Dublin"', add
label define ie11a_bpl_lbl 003 `"Mid-East"', add
label define ie11a_bpl_lbl 004 `"Midlands"', add
label define ie11a_bpl_lbl 005 `"Mid-West"', add
label define ie11a_bpl_lbl 006 `"South-East"', add
label define ie11a_bpl_lbl 007 `"South-West"', add
label define ie11a_bpl_lbl 008 `"West"', add
label define ie11a_bpl_lbl 040 `"Northern Ireland"', add
label define ie11a_bpl_lbl 102 `"United Arab Emirates"', add
label define ie11a_bpl_lbl 103 `"Afghanistan"', add
label define ie11a_bpl_lbl 106 `"Albania"', add
label define ie11a_bpl_lbl 109 `"Angola"', add
label define ie11a_bpl_lbl 111 `"Argentina"', add
label define ie11a_bpl_lbl 113 `"Austria"', add
label define ie11a_bpl_lbl 114 `"Australia"', add
label define ie11a_bpl_lbl 117 `"Bosnia and Herzegovina"', add
label define ie11a_bpl_lbl 119 `"Bangladesh"', add
label define ie11a_bpl_lbl 120 `"Belgium"', add
label define ie11a_bpl_lbl 122 `"Bulgaria"', add
label define ie11a_bpl_lbl 129 `"Brazil"', add
label define ie11a_bpl_lbl 134 `"Belarus"', add
label define ie11a_bpl_lbl 136 `"Canada"', add
label define ie11a_bpl_lbl 138 `"Congo Democratic Republic"', add
label define ie11a_bpl_lbl 140 `"Congo Belgian"', add
label define ie11a_bpl_lbl 141 `"Switzerland"', add
label define ie11a_bpl_lbl 142 `"Ivory Coast"', add
label define ie11a_bpl_lbl 144 `"Chile"', add
label define ie11a_bpl_lbl 145 `"Cameroon"', add
label define ie11a_bpl_lbl 146 `"China"', add
label define ie11a_bpl_lbl 147 `"Colombia"', add
label define ie11a_bpl_lbl 153 `"Czech Republic"', add
label define ie11a_bpl_lbl 154 `"Germany"', add
label define ie11a_bpl_lbl 156 `"Denmark"', add
label define ie11a_bpl_lbl 159 `"Algeria"', add
label define ie11a_bpl_lbl 161 `"Estonia"', add
label define ie11a_bpl_lbl 162 `"Egypt"', add
label define ie11a_bpl_lbl 165 `"Spain"', add
label define ie11a_bpl_lbl 166 `"Ethiopia"', add
label define ie11a_bpl_lbl 167 `"Finland"', add
label define ie11a_bpl_lbl 172 `"France"', add
label define ie11a_bpl_lbl 176 `"Georgia"', add
label define ie11a_bpl_lbl 179 `"Ghana"', add
label define ie11a_bpl_lbl 186 `"Greece"', add
label define ie11a_bpl_lbl 192 `"Hong Kong"', add
label define ie11a_bpl_lbl 195 `"Croatia"', add
label define ie11a_bpl_lbl 197 `"Hungary"', add
label define ie11a_bpl_lbl 198 `"Indonesia"', add
label define ie11a_bpl_lbl 199 `"Israel"', add
label define ie11a_bpl_lbl 200 `"Isle of Man"', add
label define ie11a_bpl_lbl 201 `"India"', add
label define ie11a_bpl_lbl 203 `"Iraq"', add
label define ie11a_bpl_lbl 204 `"Iran"', add
label define ie11a_bpl_lbl 206 `"Italy"', add
label define ie11a_bpl_lbl 207 `"Jersey"', add
label define ie11a_bpl_lbl 210 `"Japan"', add
label define ie11a_bpl_lbl 211 `"Kenya"', add
label define ie11a_bpl_lbl 217 `"North Korea"', add
label define ie11a_bpl_lbl 218 `"South Korea"', add
label define ie11a_bpl_lbl 219 `"Kuwait"', add
label define ie11a_bpl_lbl 221 `"Kazakhstan"', add
label define ie11a_bpl_lbl 223 `"Lebanon"', add
label define ie11a_bpl_lbl 226 `"Sri Lanka"', add
label define ie11a_bpl_lbl 229 `"Lithuania"', add
label define ie11a_bpl_lbl 231 `"Latvia"', add
label define ie11a_bpl_lbl 232 `"Libya"', add
label define ie11a_bpl_lbl 233 `"Morocco"', add
label define ie11a_bpl_lbl 235 `"Moldova"', add
label define ie11a_bpl_lbl 241 `"Mongolia"', add
label define ie11a_bpl_lbl 247 `"Malta"', add
label define ie11a_bpl_lbl 248 `"Mauritius"', add
label define ie11a_bpl_lbl 250 `"Malawi"', add
label define ie11a_bpl_lbl 251 `"Mexico"', add
label define ie11a_bpl_lbl 252 `"Malaysia"', add
label define ie11a_bpl_lbl 258 `"Nigeria"', add
label define ie11a_bpl_lbl 260 `"Netherlands"', add
label define ie11a_bpl_lbl 261 `"Norway"', add
label define ie11a_bpl_lbl 262 `"Nepal"', add
label define ie11a_bpl_lbl 265 `"New Zealand"', add
label define ie11a_bpl_lbl 268 `"Peru"', add
label define ie11a_bpl_lbl 271 `"Philippines"', add
label define ie11a_bpl_lbl 272 `"Pakistan"', add
label define ie11a_bpl_lbl 273 `"Poland"', add
label define ie11a_bpl_lbl 278 `"Portugal"', add
label define ie11a_bpl_lbl 283 `"Romania"', add
label define ie11a_bpl_lbl 284 `"Russia"', add
label define ie11a_bpl_lbl 287 `"Saudi Arabia"', add
label define ie11a_bpl_lbl 290 `"Sudan"', add
label define ie11a_bpl_lbl 291 `"Sweden"', add
label define ie11a_bpl_lbl 292 `"Singapore"', add
label define ie11a_bpl_lbl 294 `"Slovenia"', add
label define ie11a_bpl_lbl 296 `"Slovakia"', add
label define ie11a_bpl_lbl 297 `"Sierra Leone"', add
label define ie11a_bpl_lbl 300 `"Somalia"', add
label define ie11a_bpl_lbl 304 `"Syria"', add
label define ie11a_bpl_lbl 309 `"Togo"', add
label define ie11a_bpl_lbl 310 `"Thailand"', add
label define ie11a_bpl_lbl 315 `"Tunisia"', add
label define ie11a_bpl_lbl 317 `"Turkey"', add
label define ie11a_bpl_lbl 320 `"Taiwan"', add
label define ie11a_bpl_lbl 321 `"Tanzania"', add
label define ie11a_bpl_lbl 322 `"Ukraine"', add
label define ie11a_bpl_lbl 323 `"Uganda"', add
label define ie11a_bpl_lbl 324 `"United States"', add
label define ie11a_bpl_lbl 329 `"Venezuela"', add
label define ie11a_bpl_lbl 332 `"Vietnam"', add
label define ie11a_bpl_lbl 336 `"England"', add
label define ie11a_bpl_lbl 338 `"Scotland"', add
label define ie11a_bpl_lbl 339 `"Wales"', add
label define ie11a_bpl_lbl 343 `"South Africa"', add
label define ie11a_bpl_lbl 344 `"Zambia"', add
label define ie11a_bpl_lbl 345 `"Zimbabwe"', add
label define ie11a_bpl_lbl 901 `"Other Europe"', add
label define ie11a_bpl_lbl 902 `"Other Africa"', add
label define ie11a_bpl_lbl 903 `"Other South America"', add
label define ie11a_bpl_lbl 904 `"Other Central America"', add
label define ie11a_bpl_lbl 905 `"Other Caribbean"', add
label define ie11a_bpl_lbl 906 `"Other Oceania"', add
label define ie11a_bpl_lbl 907 `"Other Asia"', add
label define ie11a_bpl_lbl 908 `"Elsewhere abroad"', add
label define ie11a_bpl_lbl 999 `"NIU (not in universe)"', add
label values ie11a_bpl ie11a_bpl_lbl

label define ie11a_bplstat_lbl 1 `"Ireland, county of usual residence"'
label define ie11a_bplstat_lbl 2 `"Ireland, other county"', add
label define ie11a_bplstat_lbl 3 `"Abroad (including Northern Ireland)"', add
label define ie11a_bplstat_lbl 9 `"NIU (not in universe)"', add
label values ie11a_bplstat ie11a_bplstat_lbl

label define ie11a_resnow_lbl 001 `"Border"'
label define ie11a_resnow_lbl 002 `"Dublin"', add
label define ie11a_resnow_lbl 003 `"Mid-East"', add
label define ie11a_resnow_lbl 004 `"Midlands"', add
label define ie11a_resnow_lbl 005 `"Mid-West"', add
label define ie11a_resnow_lbl 006 `"South-East"', add
label define ie11a_resnow_lbl 007 `"South-West"', add
label define ie11a_resnow_lbl 008 `"West"', add
label define ie11a_resnow_lbl 040 `"Northern Ireland"', add
label define ie11a_resnow_lbl 113 `"Austria"', add
label define ie11a_resnow_lbl 114 `"Australia"', add
label define ie11a_resnow_lbl 120 `"Belgium"', add
label define ie11a_resnow_lbl 129 `"Brazil"', add
label define ie11a_resnow_lbl 136 `"Canada"', add
label define ie11a_resnow_lbl 141 `"Switzerland"', add
label define ie11a_resnow_lbl 146 `"China"', add
label define ie11a_resnow_lbl 154 `"Germany"', add
label define ie11a_resnow_lbl 156 `"Denmark"', add
label define ie11a_resnow_lbl 165 `"Spain"', add
label define ie11a_resnow_lbl 167 `"Finland"', add
label define ie11a_resnow_lbl 172 `"France"', add
label define ie11a_resnow_lbl 174 `"Great Britain"', add
label define ie11a_resnow_lbl 201 `"India"', add
label define ie11a_resnow_lbl 206 `"Italy"', add
label define ie11a_resnow_lbl 210 `"Japan"', add
label define ie11a_resnow_lbl 229 `"Lithuania"', add
label define ie11a_resnow_lbl 260 `"Netherlands"', add
label define ie11a_resnow_lbl 261 `"Norway"', add
label define ie11a_resnow_lbl 265 `"New Zealand"', add
label define ie11a_resnow_lbl 273 `"Poland"', add
label define ie11a_resnow_lbl 283 `"Romania"', add
label define ie11a_resnow_lbl 291 `"Sweden"', add
label define ie11a_resnow_lbl 324 `"United States"', add
label define ie11a_resnow_lbl 336 `"England"', add
label define ie11a_resnow_lbl 338 `"Scotland"', add
label define ie11a_resnow_lbl 339 `"Wales"', add
label define ie11a_resnow_lbl 901 `"Other Europe"', add
label define ie11a_resnow_lbl 902 `"Other Africa"', add
label define ie11a_resnow_lbl 903 `"Other South America"', add
label define ie11a_resnow_lbl 904 `"Other Central America"', add
label define ie11a_resnow_lbl 905 `"Other Caribbean"', add
label define ie11a_resnow_lbl 907 `"Other Asia"', add
label define ie11a_resnow_lbl 908 `"Elsewhere abroad"', add
label define ie11a_resnow_lbl 999 `"NIU (not in universe)"', add
label values ie11a_resnow ie11a_resnow_lbl

label define ie11a_resyrago_lbl 001 `"Border"'
label define ie11a_resyrago_lbl 002 `"Dublin"', add
label define ie11a_resyrago_lbl 003 `"Mid-East"', add
label define ie11a_resyrago_lbl 004 `"Midlands"', add
label define ie11a_resyrago_lbl 005 `"Mid-West"', add
label define ie11a_resyrago_lbl 006 `"South-East"', add
label define ie11a_resyrago_lbl 007 `"South-West"', add
label define ie11a_resyrago_lbl 008 `"West"', add
label define ie11a_resyrago_lbl 040 `"Northern Ireland"', add
label define ie11a_resyrago_lbl 102 `"United Arab Emirates"', add
label define ie11a_resyrago_lbl 111 `"Argentina"', add
label define ie11a_resyrago_lbl 113 `"Austria"', add
label define ie11a_resyrago_lbl 114 `"Australia"', add
label define ie11a_resyrago_lbl 120 `"Belgium"', add
label define ie11a_resyrago_lbl 129 `"Brazil"', add
label define ie11a_resyrago_lbl 136 `"Canada"', add
label define ie11a_resyrago_lbl 141 `"Switzerland"', add
label define ie11a_resyrago_lbl 146 `"China"', add
label define ie11a_resyrago_lbl 153 `"Czech Republic"', add
label define ie11a_resyrago_lbl 154 `"Germany"', add
label define ie11a_resyrago_lbl 156 `"Denmark"', add
label define ie11a_resyrago_lbl 165 `"Spain"', add
label define ie11a_resyrago_lbl 167 `"Finland"', add
label define ie11a_resyrago_lbl 172 `"France"', add
label define ie11a_resyrago_lbl 174 `"Great Britain"', add
label define ie11a_resyrago_lbl 197 `"Hungary"', add
label define ie11a_resyrago_lbl 201 `"India"', add
label define ie11a_resyrago_lbl 206 `"Italy"', add
label define ie11a_resyrago_lbl 210 `"Japan"', add
label define ie11a_resyrago_lbl 229 `"Lithuania"', add
label define ie11a_resyrago_lbl 231 `"Latvia"', add
label define ie11a_resyrago_lbl 251 `"Mexico"', add
label define ie11a_resyrago_lbl 252 `"Malaysia"', add
label define ie11a_resyrago_lbl 258 `"Nigeria"', add
label define ie11a_resyrago_lbl 260 `"Netherlands"', add
label define ie11a_resyrago_lbl 261 `"Norway"', add
label define ie11a_resyrago_lbl 265 `"New Zealand"', add
label define ie11a_resyrago_lbl 271 `"Philippines"', add
label define ie11a_resyrago_lbl 272 `"Pakistan"', add
label define ie11a_resyrago_lbl 273 `"Poland"', add
label define ie11a_resyrago_lbl 278 `"Portugal"', add
label define ie11a_resyrago_lbl 283 `"Romania"', add
label define ie11a_resyrago_lbl 284 `"Russia"', add
label define ie11a_resyrago_lbl 287 `"Saudi Arabia"', add
label define ie11a_resyrago_lbl 291 `"Sweden"', add
label define ie11a_resyrago_lbl 296 `"Slovakia"', add
label define ie11a_resyrago_lbl 324 `"United States"', add
label define ie11a_resyrago_lbl 336 `"England"', add
label define ie11a_resyrago_lbl 337 `"Northern Ireland"', add
label define ie11a_resyrago_lbl 338 `"Scotland"', add
label define ie11a_resyrago_lbl 339 `"Wales"', add
label define ie11a_resyrago_lbl 343 `"South Africa"', add
label define ie11a_resyrago_lbl 901 `"Other Europe"', add
label define ie11a_resyrago_lbl 902 `"Other Africa"', add
label define ie11a_resyrago_lbl 903 `"Other South America"', add
label define ie11a_resyrago_lbl 904 `"Other Central America"', add
label define ie11a_resyrago_lbl 905 `"Other Caribbean"', add
label define ie11a_resyrago_lbl 907 `"Other Asia"', add
label define ie11a_resyrago_lbl 908 `"Elsewhere abroad"', add
label define ie11a_resyrago_lbl 999 `"NIU (not in universe)"', add
label values ie11a_resyrago ie11a_resyrago_lbl

label define ie11a_yrimmig_lbl 1 `"Before 1951"'
label define ie11a_yrimmig_lbl 2 `"1951-1960"', add
label define ie11a_yrimmig_lbl 3 `"1961-1970"', add
label define ie11a_yrimmig_lbl 4 `"1971-1980"', add
label define ie11a_yrimmig_lbl 5 `"1981-1990"', add
label define ie11a_yrimmig_lbl 6 `"1991-2000"', add
label define ie11a_yrimmig_lbl 7 `"2001-2011"', add
label define ie11a_yrimmig_lbl 8 `"Unknown"', add
label define ie11a_yrimmig_lbl 9 `"NIU (not in universe)"', add
label values ie11a_yrimmig ie11a_yrimmig_lbl

label define ie11a_prevctry_lbl 102 `"United Arab Emirates"'
label define ie11a_prevctry_lbl 106 `"Albania"', add
label define ie11a_prevctry_lbl 109 `"Angola"', add
label define ie11a_prevctry_lbl 111 `"Argentina"', add
label define ie11a_prevctry_lbl 113 `"Austria"', add
label define ie11a_prevctry_lbl 114 `"Australia"', add
label define ie11a_prevctry_lbl 117 `"Bosnia and Herzegovina"', add
label define ie11a_prevctry_lbl 119 `"Bangladesh"', add
label define ie11a_prevctry_lbl 120 `"Belgium"', add
label define ie11a_prevctry_lbl 122 `"Bulgaria"', add
label define ie11a_prevctry_lbl 123 `"Bahrain"', add
label define ie11a_prevctry_lbl 126 `"Bermuda"', add
label define ie11a_prevctry_lbl 129 `"Brazil"', add
label define ie11a_prevctry_lbl 133 `"Botswana"', add
label define ie11a_prevctry_lbl 134 `"Belarus"', add
label define ie11a_prevctry_lbl 136 `"Canada"', add
label define ie11a_prevctry_lbl 140 `"Congo Belgian"', add
label define ie11a_prevctry_lbl 141 `"Switzerland"', add
label define ie11a_prevctry_lbl 144 `"Chile"', add
label define ie11a_prevctry_lbl 145 `"Cameroon"', add
label define ie11a_prevctry_lbl 146 `"China"', add
label define ie11a_prevctry_lbl 152 `"Cyprus"', add
label define ie11a_prevctry_lbl 153 `"Czech Republic"', add
label define ie11a_prevctry_lbl 154 `"Germany"', add
label define ie11a_prevctry_lbl 156 `"Denmark"', add
label define ie11a_prevctry_lbl 159 `"Algeria"', add
label define ie11a_prevctry_lbl 161 `"Estonia"', add
label define ie11a_prevctry_lbl 162 `"Egypt"', add
label define ie11a_prevctry_lbl 165 `"Spain"', add
label define ie11a_prevctry_lbl 166 `"Ethiopia"', add
label define ie11a_prevctry_lbl 167 `"Finland"', add
label define ie11a_prevctry_lbl 172 `"France"', add
label define ie11a_prevctry_lbl 174 `"Great Britain"', add
label define ie11a_prevctry_lbl 176 `"Georgia"', add
label define ie11a_prevctry_lbl 178 `"Guernsey"', add
label define ie11a_prevctry_lbl 179 `"Ghana"', add
label define ie11a_prevctry_lbl 186 `"Greece"', add
label define ie11a_prevctry_lbl 192 `"Hong Kong"', add
label define ie11a_prevctry_lbl 195 `"Croatia"', add
label define ie11a_prevctry_lbl 197 `"Hungary"', add
label define ie11a_prevctry_lbl 199 `"Israel"', add
label define ie11a_prevctry_lbl 200 `"Isle of Man"', add
label define ie11a_prevctry_lbl 201 `"India"', add
label define ie11a_prevctry_lbl 203 `"Iraq"', add
label define ie11a_prevctry_lbl 204 `"Iran"', add
label define ie11a_prevctry_lbl 206 `"Italy"', add
label define ie11a_prevctry_lbl 207 `"Jersey"', add
label define ie11a_prevctry_lbl 208 `"Jamaica"', add
label define ie11a_prevctry_lbl 209 `"Jordan"', add
label define ie11a_prevctry_lbl 210 `"Japan"', add
label define ie11a_prevctry_lbl 211 `"Kenya"', add
label define ie11a_prevctry_lbl 217 `"North Korea"', add
label define ie11a_prevctry_lbl 218 `"South Korea"', add
label define ie11a_prevctry_lbl 219 `"Kuwait"', add
label define ie11a_prevctry_lbl 220 `"Cayman Islands"', add
label define ie11a_prevctry_lbl 221 `"Kazakhstan"', add
label define ie11a_prevctry_lbl 223 `"Lebanon"', add
label define ie11a_prevctry_lbl 226 `"Sri Lanka"', add
label define ie11a_prevctry_lbl 228 `"Lesotho"', add
label define ie11a_prevctry_lbl 229 `"Lithuania"', add
label define ie11a_prevctry_lbl 230 `"Luxembourg"', add
label define ie11a_prevctry_lbl 231 `"Latvia"', add
label define ie11a_prevctry_lbl 232 `"Libya"', add
label define ie11a_prevctry_lbl 233 `"Morocco"', add
label define ie11a_prevctry_lbl 235 `"Moldova"', add
label define ie11a_prevctry_lbl 247 `"Malta"', add
label define ie11a_prevctry_lbl 248 `"Mauritius"', add
label define ie11a_prevctry_lbl 250 `"Malawi"', add
label define ie11a_prevctry_lbl 251 `"Mexico"', add
label define ie11a_prevctry_lbl 252 `"Malaysia"', add
label define ie11a_prevctry_lbl 258 `"Nigeria"', add
label define ie11a_prevctry_lbl 260 `"Netherlands"', add
label define ie11a_prevctry_lbl 261 `"Norway"', add
label define ie11a_prevctry_lbl 262 `"Nepal"', add
label define ie11a_prevctry_lbl 265 `"New Zealand"', add
label define ie11a_prevctry_lbl 266 `"Oman"', add
label define ie11a_prevctry_lbl 268 `"Peru"', add
label define ie11a_prevctry_lbl 271 `"Philippines"', add
label define ie11a_prevctry_lbl 272 `"Pakistan"', add
label define ie11a_prevctry_lbl 273 `"Poland"', add
label define ie11a_prevctry_lbl 278 `"Portugal"', add
label define ie11a_prevctry_lbl 283 `"Romania"', add
label define ie11a_prevctry_lbl 284 `"Russia"', add
label define ie11a_prevctry_lbl 287 `"Saudi Arabia"', add
label define ie11a_prevctry_lbl 290 `"Sudan"', add
label define ie11a_prevctry_lbl 291 `"Sweden"', add
label define ie11a_prevctry_lbl 292 `"Singapore"', add
label define ie11a_prevctry_lbl 296 `"Slovakia"', add
label define ie11a_prevctry_lbl 297 `"Sierra Leone"', add
label define ie11a_prevctry_lbl 300 `"Somalia"', add
label define ie11a_prevctry_lbl 304 `"Syria"', add
label define ie11a_prevctry_lbl 310 `"Thailand"', add
label define ie11a_prevctry_lbl 317 `"Turkey"', add
label define ie11a_prevctry_lbl 320 `"Taiwan"', add
label define ie11a_prevctry_lbl 321 `"Tanzania"', add
label define ie11a_prevctry_lbl 322 `"Ukraine"', add
label define ie11a_prevctry_lbl 323 `"Uganda"', add
label define ie11a_prevctry_lbl 324 `"United States"', add
label define ie11a_prevctry_lbl 329 `"Venezuela"', add
label define ie11a_prevctry_lbl 332 `"Vietnam"', add
label define ie11a_prevctry_lbl 336 `"England"', add
label define ie11a_prevctry_lbl 337 `"Northern Ireland"', add
label define ie11a_prevctry_lbl 338 `"Scotland"', add
label define ie11a_prevctry_lbl 339 `"Wales"', add
label define ie11a_prevctry_lbl 343 `"South Africa"', add
label define ie11a_prevctry_lbl 344 `"Zambia"', add
label define ie11a_prevctry_lbl 345 `"Zimbabwe"', add
label define ie11a_prevctry_lbl 901 `"Other Europe"', add
label define ie11a_prevctry_lbl 902 `"Other Africa"', add
label define ie11a_prevctry_lbl 903 `"Other South America"', add
label define ie11a_prevctry_lbl 904 `"Other Central America"', add
label define ie11a_prevctry_lbl 905 `"Other Caribbean"', add
label define ie11a_prevctry_lbl 906 `"Other Oceania"', add
label define ie11a_prevctry_lbl 907 `"Other Asia"', add
label define ie11a_prevctry_lbl 998 `"Unknown"', add
label define ie11a_prevctry_lbl 999 `"NIU (not in universe)"', add
label values ie11a_prevctry ie11a_prevctry_lbl

label define ie11a_spkirish_lbl 1 `"Yes"'
label define ie11a_spkirish_lbl 2 `"No"', add
label define ie11a_spkirish_lbl 8 `"Unknown"', add
label define ie11a_spkirish_lbl 9 `"NIU (not in universe)"', add
label values ie11a_spkirish ie11a_spkirish_lbl

label define ie11a_irishfq_lbl 1 `"Daily within the education system only"'
label define ie11a_irishfq_lbl 2 `"Daily within and outside the education system"', add
label define ie11a_irishfq_lbl 3 `"Daily outside the education system"', add
label define ie11a_irishfq_lbl 4 `"Weekly"', add
label define ie11a_irishfq_lbl 5 `"Less often"', add
label define ie11a_irishfq_lbl 6 `"Never"', add
label define ie11a_irishfq_lbl 8 `"Unknown"', add
label define ie11a_irishfq_lbl 9 `"NIU (not in universe)"', add
label values ie11a_irishfq ie11a_irishfq_lbl

label define ie11a_leveduc_lbl 1 `"Primary (including not formal)"'
label define ie11a_leveduc_lbl 2 `"Lower secondary"', add
label define ie11a_leveduc_lbl 3 `"Upper secondary"', add
label define ie11a_leveduc_lbl 4 `"Third level, non degree"', add
label define ie11a_leveduc_lbl 5 `"Third level, degree or higher"', add
label define ie11a_leveduc_lbl 8 `"Unknown"', add
label define ie11a_leveduc_lbl 9 `"NIU (not in universe)"', add
label values ie11a_leveduc ie11a_leveduc_lbl

label define ie11a_field_lbl 01 `"General programmes"'
label define ie11a_field_lbl 02 `"Education"', add
label define ie11a_field_lbl 03 `"Humanities and arts"', add
label define ie11a_field_lbl 04 `"Social sciences, business, and law"', add
label define ie11a_field_lbl 05 `"Science, mathematics, and computing"', add
label define ie11a_field_lbl 06 `"Engineering, manufacturing, and construction"', add
label define ie11a_field_lbl 07 `"Agriculture and veterinary"', add
label define ie11a_field_lbl 08 `"Health and welfare"', add
label define ie11a_field_lbl 09 `"Services"', add
label define ie11a_field_lbl 98 `"Unknown"', add
label define ie11a_field_lbl 99 `"NIU (not in universe)"', add
label values ie11a_field ie11a_field_lbl

label define ie11a_edcease_lbl 01 `"Under 15 years"'
label define ie11a_edcease_lbl 02 `"15 years"', add
label define ie11a_edcease_lbl 03 `"16 years"', add
label define ie11a_edcease_lbl 04 `"17 years"', add
label define ie11a_edcease_lbl 05 `"18 years"', add
label define ie11a_edcease_lbl 06 `"19 years"', add
label define ie11a_edcease_lbl 07 `"20-21 years"', add
label define ie11a_edcease_lbl 08 `"22 years or older"', add
label define ie11a_edcease_lbl 09 `"Full-time education not ceased"', add
label define ie11a_edcease_lbl 98 `"Unknown"', add
label define ie11a_edcease_lbl 99 `"NIU (not in universe)"', add
label values ie11a_edcease ie11a_edcease_lbl

label define ie11a_empstat_lbl 1 `"Working for payment or profit"'
label define ie11a_empstat_lbl 2 `"Looking for first regular job"', add
label define ie11a_empstat_lbl 3 `"Unemployed"', add
label define ie11a_empstat_lbl 4 `"Student"', add
label define ie11a_empstat_lbl 5 `"Looking after home or family"', add
label define ie11a_empstat_lbl 6 `"Retired"', add
label define ie11a_empstat_lbl 7 `"Unable to work due to sickness or disability"', add
label define ie11a_empstat_lbl 8 `"Other"', add
label define ie11a_empstat_lbl 9 `"NIU (not in universe)"', add
label values ie11a_empstat ie11a_empstat_lbl

label define ie11a_classwk_lbl 0 `"NIU (not in universe)"'
label define ie11a_classwk_lbl 1 `"Employee"', add
label define ie11a_classwk_lbl 2 `"Self-employed with paid employees"', add
label define ie11a_classwk_lbl 3 `"Self-employed without paid employees"', add
label define ie11a_classwk_lbl 4 `"Assisting relative (not receiving fixed wage)"', add
label values ie11a_classwk ie11a_classwk_lbl

label define ie11a_ind_lbl 019 `"Farming and other agricultural activities"'
label define ie11a_ind_lbl 020 `"Forestry and logging"', add
label define ie11a_ind_lbl 030 `"Fishing and aquaculture"', add
label define ie11a_ind_lbl 040 `"Horseracing activities"', add
label define ie11a_ind_lbl 070 `"Mining of metal ores"', add
label define ie11a_ind_lbl 080 `"Other mining and quarrying"', add
label define ie11a_ind_lbl 089 `"Extraction and agglomeration of peat"', add
label define ie11a_ind_lbl 090 `"Mining support service activities"', add
label define ie11a_ind_lbl 101 `"Processing and preserving of meat and production of meat products"', add
label define ie11a_ind_lbl 102 `"Processing and preserving of fish, crustaceans, and molluscs"', add
label define ie11a_ind_lbl 103 `"Processing and preserving of fruit and vegetables"', add
label define ie11a_ind_lbl 104 `"Manufacture of vegetable and animal oils and fats"', add
label define ie11a_ind_lbl 105 `"Manufacture of dairy products"', add
label define ie11a_ind_lbl 106 `"Manufacture of grain mill products, starches, and starch products"', add
label define ie11a_ind_lbl 107 `"Manufacture of bakery and farinaceous products"', add
label define ie11a_ind_lbl 108 `"Manufacture of other food products"', add
label define ie11a_ind_lbl 109 `"Manufacture of prepared animal feeds"', add
label define ie11a_ind_lbl 110 `"Manufacture of beverages"', add
label define ie11a_ind_lbl 120 `"Manufacture of tobacco products"', add
label define ie11a_ind_lbl 130 `"Manufacture of textiles"', add
label define ie11a_ind_lbl 140 `"Manufacture of clothes, dressing, and dyeing of fur"', add
label define ie11a_ind_lbl 150 `"Manufacture of leather and related products"', add
label define ie11a_ind_lbl 160 `"Manufacture of wood and products of wood and cork except furniture, manufacture of articles of straw and plaiting materials"', add
label define ie11a_ind_lbl 170 `"Manufacture of pulp, paper, and paper products"', add
label define ie11a_ind_lbl 180 `"Printing activities and reproduction of recorded media"', add
label define ie11a_ind_lbl 195 `"Manufacture of chemicals and chemical products and coke and refined petroleum products"', add
label define ie11a_ind_lbl 210 `"Manufacture of pharmaceutical, medicinal chemicals, and botanical products"', add
label define ie11a_ind_lbl 221 `"Manufacture of rubber products"', add
label define ie11a_ind_lbl 222 `"Manufacture of plastic products"', add
label define ie11a_ind_lbl 231 `"Manufacture of glass and glass products"', add
label define ie11a_ind_lbl 236 `"Manufacture of articles of concrete, plaster, and cement"', add
label define ie11a_ind_lbl 238 `"All other manufacture of other non-metallic mineral products"', add
label define ie11a_ind_lbl 240 `"Manufacture of basic metals"', add
label define ie11a_ind_lbl 250 `"Manufacture of fabricated metal products, except machinery and equipment"', add
label define ie11a_ind_lbl 261 `"Manufacture of electronic components and boards"', add
label define ie11a_ind_lbl 262 `"Manufacture of computers and peripheral equipment"', add
label define ie11a_ind_lbl 269 `"Manufacture of other computer, electronic, and optical products"', add
label define ie11a_ind_lbl 270 `"Manufacture of electrical equipment"', add
label define ie11a_ind_lbl 280 `"Manufacture of machinery and equipment not elsewhere classified"', add
label define ie11a_ind_lbl 290 `"Manufacture of motor vehicles, trailers, and semi-trailers"', add
label define ie11a_ind_lbl 300 `"Manufacture of other transport equipment"', add
label define ie11a_ind_lbl 310 `"Manufacture of furniture"', add
label define ie11a_ind_lbl 325 `"Manufacture of medical and dental instruments and supplies"', add
label define ie11a_ind_lbl 328 `"All other manufacturing not elsewhere classified"', add
label define ie11a_ind_lbl 330 `"Repair and installation of machinery and equipment"', add
label define ie11a_ind_lbl 351 `"Electric power generation, transmission, and distribution"', add
label define ie11a_ind_lbl 359 `"Manufacture of gas, distribution of gaseous fuels through mains and steam and air conditioning supply"', add
label define ie11a_ind_lbl 360 `"Water collection,  treatment, and supply"', add
label define ie11a_ind_lbl 390 `"Sewerage and waste collection, treatment and disposal activities, materials recovery"', add
label define ie11a_ind_lbl 410 `"Development of building products, construction of residential and non-residential buildings"', add
label define ie11a_ind_lbl 420 `"Civil engineering"', add
label define ie11a_ind_lbl 431 `"Demolition and site preparation"', add
label define ie11a_ind_lbl 432 `"Electrical installation, plumbing, heat and air-conditioning installation, other construction installation"', add
label define ie11a_ind_lbl 433 `"Building completion and finishing"', add
label define ie11a_ind_lbl 439 `"Other specialised construction activities"', add
label define ie11a_ind_lbl 450 `"Wholesale and retail trade and repair of motor vehicles and motorcycles"', add
label define ie11a_ind_lbl 463 `"Wholesale of food, beverages and tobacco"', add
label define ie11a_ind_lbl 464 `"Wholesale of household goods"', add
label define ie11a_ind_lbl 467 `"Wholesale of wood, construction materials and sanitary equipment"', add
label define ie11a_ind_lbl 468 `"All other wholesale trade and commission trade and wholesale not specified"', add
label define ie11a_ind_lbl 471 `"Retail sale in non-specialised stores with food, beverages, or tobacco predominating"', add
label define ie11a_ind_lbl 472 `"Retail sale of food, beverages, or tobacco in specialised stores"', add
label define ie11a_ind_lbl 473 `"Retail sale of automotive fuel in specialised stores"', add
label define ie11a_ind_lbl 474 `"Retail sale of information and communication equipment in specialised stores"', add
label define ie11a_ind_lbl 475 `"Retail sale of textiles, hardware, electrical household appliances, and furniture in specialised stores"', add
label define ie11a_ind_lbl 476 `"Retail sale of cultural and recreation goods in specialised stores"', add
label define ie11a_ind_lbl 477 `"Retail sale of clothing and footwear in specialised stores"', add
label define ie11a_ind_lbl 479 `"Retail trade not elsewhere classified"', add
label define ie11a_ind_lbl 493 `"Taxi operations, other passenger land transport"', add
label define ie11a_ind_lbl 494 `"Freight transport by road"', add
label define ie11a_ind_lbl 498 `"Transport via railways"', add
label define ie11a_ind_lbl 500 `"Water transport"', add
label define ie11a_ind_lbl 510 `"Air transport"', add
label define ie11a_ind_lbl 522 `"Activities of other transport agencies"', add
label define ie11a_ind_lbl 528 `"Warehousing, storage, and cargo handling"', add
label define ie11a_ind_lbl 529 `"Service activities related to land, water, and air transportation"', add
label define ie11a_ind_lbl 530 `"Post and courier activities"', add
label define ie11a_ind_lbl 531 `"Other transport"', add
label define ie11a_ind_lbl 551 `"Hotels and similar accommodation"', add
label define ie11a_ind_lbl 558 `"Other provision of short-stay accommodation"', add
label define ie11a_ind_lbl 561 `"Restaurants and mobile food service activities"', add
label define ie11a_ind_lbl 562 `"Event catering and food service activities"', add
label define ie11a_ind_lbl 563 `"Beverage serving activities, including bars"', add
label define ie11a_ind_lbl 589 `"Publishing of books, newspapers, magazines, and other publishing services and software publishing"', add
label define ie11a_ind_lbl 590 `"Movie, video, and television programme production, sound recording, and music publishing activities"', add
label define ie11a_ind_lbl 600 `"Programming and broadcasting activities"', add
label define ie11a_ind_lbl 610 `"Telecommunications"', add
label define ie11a_ind_lbl 629 `"Computer programming, consultancy, and related services and information service activities"', add
label define ie11a_ind_lbl 640 `"Financial service activities, except insurance and pension funding"', add
label define ie11a_ind_lbl 650 `"Insurance, reinsurance, and pension funding, except compulsory social security"', add
label define ie11a_ind_lbl 661 `"Activities auxiliary to financial intermediation, except insurance and pension funding"', add
label define ie11a_ind_lbl 662 `"Activities auxiliary to insurance and pension funding"', add
label define ie11a_ind_lbl 663 `"Fund management activities"', add
label define ie11a_ind_lbl 680 `"Real estate activities"', add
label define ie11a_ind_lbl 691 `"Legal activities"', add
label define ie11a_ind_lbl 692 `"Accounting, book-keeping and auditing activities, tax consultancy"', add
label define ie11a_ind_lbl 700 `"Activities of head offices, management consultancy services"', add
label define ie11a_ind_lbl 711 `"Architectural and engineering activities and related technical consultancy"', add
label define ie11a_ind_lbl 712 `"Technical testing and analysis"', add
label define ie11a_ind_lbl 720 `"Scientific research and development"', add
label define ie11a_ind_lbl 730 `"Advertising and market research"', add
label define ie11a_ind_lbl 740 `"Other professional, scientific, and technical activities"', add
label define ie11a_ind_lbl 750 `"Veterinary activities"', add
label define ie11a_ind_lbl 770 `"Rental and leasing activities"', add
label define ie11a_ind_lbl 780 `"Employment activities"', add
label define ie11a_ind_lbl 790 `"Travel agency, tour operator, and other reservation service and related activities"', add
label define ie11a_ind_lbl 800 `"Security and investigation activities"', add
label define ie11a_ind_lbl 810 `"Services to buildings and landscape activities"', add
label define ie11a_ind_lbl 820 `"Miscellaneous office and business activities"', add
label define ie11a_ind_lbl 842 `"Defence activities, Garda Siochana"', add
label define ie11a_ind_lbl 849 `"All other public administration, compulsory social security"', add
label define ie11a_ind_lbl 851 `"Pre-primary education"', add
label define ie11a_ind_lbl 852 `"Primary education"', add
label define ie11a_ind_lbl 853 `"Secondary education"', add
label define ie11a_ind_lbl 854 `"Higher education"', add
label define ie11a_ind_lbl 859 `"Adult and other education not elsewhere classified"', add
label define ie11a_ind_lbl 861 `"Hospital activities"', add
label define ie11a_ind_lbl 862 `"Dental and medical practice activities"', add
label define ie11a_ind_lbl 869 `"Other human health actives"', add
label define ie11a_ind_lbl 890 `"Residential care and social work activities"', add
label define ie11a_ind_lbl 900 `"Creative arts and entertainment activities"', add
label define ie11a_ind_lbl 910 `"Libraries, archives, museums, and other cultural activities"', add
label define ie11a_ind_lbl 920 `"Gambling and betting activities"', add
label define ie11a_ind_lbl 930 `"Sports activities and amusement and recreation activities"', add
label define ie11a_ind_lbl 940 `"Activities  of membership organisations"', add
label define ie11a_ind_lbl 950 `"Repair of computers and personal and household goods"', add
label define ie11a_ind_lbl 960 `"Personal services"', add
label define ie11a_ind_lbl 970 `"Private households with employed persons"', add
label define ie11a_ind_lbl 990 `"Extra-territorial organisations and bodies"', add
label define ie11a_ind_lbl 998 `"Unknown"', add
label define ie11a_ind_lbl 999 `"NIU (not in universe)"', add
label values ie11a_ind ie11a_ind_lbl

label define ie11a_socecon_lbl 01 `"Employers and managers"'
label define ie11a_socecon_lbl 02 `"Higher professional"', add
label define ie11a_socecon_lbl 03 `"Lower professional"', add
label define ie11a_socecon_lbl 04 `"Non-manual"', add
label define ie11a_socecon_lbl 05 `"Manual skilled"', add
label define ie11a_socecon_lbl 06 `"Semi-skilled"', add
label define ie11a_socecon_lbl 07 `"Unskilled"', add
label define ie11a_socecon_lbl 08 `"Own account workers"', add
label define ie11a_socecon_lbl 09 `"Farmers"', add
label define ie11a_socecon_lbl 10 `"Agricultural workers"', add
label define ie11a_socecon_lbl 11 `"All others gainfully occupied and unknown"', add
label define ie11a_socecon_lbl 99 `"NIU (not in universe)"', add
label values ie11a_socecon ie11a_socecon_lbl

label define ie11a_socclass_lbl 1 `"Professional workers"'
label define ie11a_socclass_lbl 2 `"Managerial and technical"', add
label define ie11a_socclass_lbl 3 `"Non-manual"', add
label define ie11a_socclass_lbl 4 `"Skilled manual"', add
label define ie11a_socclass_lbl 5 `"Semi-skilled"', add
label define ie11a_socclass_lbl 6 `"Unskilled"', add
label define ie11a_socclass_lbl 7 `"All others gainfully occupied and unknown"', add
label define ie11a_socclass_lbl 9 `"NIU (not in universe)"', add
label values ie11a_socclass ie11a_socclass_lbl

label define ie11a_nation_lbl 000 `"Irish"'
label define ie11a_nation_lbl 001 `"Irish English"', add
label define ie11a_nation_lbl 002 `"Irish American"', add
label define ie11a_nation_lbl 003 `"Irish European"', add
label define ie11a_nation_lbl 004 `"Irish other"', add
label define ie11a_nation_lbl 005 `"Multi nationality"', add
label define ie11a_nation_lbl 006 `"Not Irish"', add
label define ie11a_nation_lbl 098 `"No nationality"', add
label define ie11a_nation_lbl 103 `"Afghan"', add
label define ie11a_nation_lbl 106 `"Albanian"', add
label define ie11a_nation_lbl 107 `"Armenian"', add
label define ie11a_nation_lbl 109 `"Angola"', add
label define ie11a_nation_lbl 111 `"Argentinian"', add
label define ie11a_nation_lbl 113 `"Austrian"', add
label define ie11a_nation_lbl 114 `"Australian"', add
label define ie11a_nation_lbl 117 `"Bosnian"', add
label define ie11a_nation_lbl 119 `"Bangladesh"', add
label define ie11a_nation_lbl 120 `"Belgian"', add
label define ie11a_nation_lbl 122 `"Bulgarian"', add
label define ie11a_nation_lbl 129 `"Brazilian"', add
label define ie11a_nation_lbl 134 `"Belarusian"', add
label define ie11a_nation_lbl 136 `"Canadian"', add
label define ie11a_nation_lbl 138 `"Congo Democratic Republic"', add
label define ie11a_nation_lbl 140 `"Congolese (Congo Belgian)"', add
label define ie11a_nation_lbl 141 `"Swiss"', add
label define ie11a_nation_lbl 142 `"Ivorian"', add
label define ie11a_nation_lbl 145 `"Cameroon"', add
label define ie11a_nation_lbl 146 `"Chinese"', add
label define ie11a_nation_lbl 153 `"Czech"', add
label define ie11a_nation_lbl 154 `"German"', add
label define ie11a_nation_lbl 156 `"Dane"', add
label define ie11a_nation_lbl 159 `"Algerian"', add
label define ie11a_nation_lbl 161 `"Estonia"', add
label define ie11a_nation_lbl 162 `"Egyptian"', add
label define ie11a_nation_lbl 165 `"Spanish"', add
label define ie11a_nation_lbl 166 `"Ethiopian"', add
label define ie11a_nation_lbl 167 `"Finish"', add
label define ie11a_nation_lbl 172 `"French"', add
label define ie11a_nation_lbl 174 `"British"', add
label define ie11a_nation_lbl 176 `"Georgian"', add
label define ie11a_nation_lbl 179 `"Ghana"', add
label define ie11a_nation_lbl 186 `"Greek"', add
label define ie11a_nation_lbl 195 `"Croat"', add
label define ie11a_nation_lbl 197 `"Hungarian"', add
label define ie11a_nation_lbl 199 `"Israeli"', add
label define ie11a_nation_lbl 201 `"Indian"', add
label define ie11a_nation_lbl 203 `"Iraqi"', add
label define ie11a_nation_lbl 204 `"Iranian"', add
label define ie11a_nation_lbl 206 `"Italian"', add
label define ie11a_nation_lbl 210 `"Japanese"', add
label define ie11a_nation_lbl 211 `"Kenyan"', add
label define ie11a_nation_lbl 218 `"South Korean"', add
label define ie11a_nation_lbl 219 `"Kuwaiti"', add
label define ie11a_nation_lbl 221 `"Kazakhstan"', add
label define ie11a_nation_lbl 226 `"Sri Lankan"', add
label define ie11a_nation_lbl 229 `"Lithuanian"', add
label define ie11a_nation_lbl 231 `"Latvian"', add
label define ie11a_nation_lbl 232 `"Libyan"', add
label define ie11a_nation_lbl 233 `"Moroccan"', add
label define ie11a_nation_lbl 235 `"Moldovan"', add
label define ie11a_nation_lbl 241 `"Mongolian"', add
label define ie11a_nation_lbl 248 `"Mauritian"', add
label define ie11a_nation_lbl 250 `"Malawi"', add
label define ie11a_nation_lbl 251 `"Mexico"', add
label define ie11a_nation_lbl 252 `"Malasian"', add
label define ie11a_nation_lbl 258 `"Nigerian"', add
label define ie11a_nation_lbl 260 `"Dutch"', add
label define ie11a_nation_lbl 261 `"Norwegian"', add
label define ie11a_nation_lbl 262 `"Nepalese"', add
label define ie11a_nation_lbl 265 `"New Zealander"', add
label define ie11a_nation_lbl 271 `"Filipino"', add
label define ie11a_nation_lbl 272 `"Pakistani"', add
label define ie11a_nation_lbl 273 `"Polish"', add
label define ie11a_nation_lbl 278 `"Portuguese"', add
label define ie11a_nation_lbl 283 `"Romanian"', add
label define ie11a_nation_lbl 284 `"Russian"', add
label define ie11a_nation_lbl 287 `"Saudi"', add
label define ie11a_nation_lbl 290 `"Sudanese"', add
label define ie11a_nation_lbl 291 `"Swede"', add
label define ie11a_nation_lbl 292 `"Singapore"', add
label define ie11a_nation_lbl 294 `"Slovenian"', add
label define ie11a_nation_lbl 296 `"Slovak"', add
label define ie11a_nation_lbl 300 `"Somali"', add
label define ie11a_nation_lbl 304 `"Syrian"', add
label define ie11a_nation_lbl 309 `"Togo"', add
label define ie11a_nation_lbl 310 `"Siamese"', add
label define ie11a_nation_lbl 315 `"Tunisian"', add
label define ie11a_nation_lbl 317 `"Turk"', add
label define ie11a_nation_lbl 320 `"Taiwanese"', add
label define ie11a_nation_lbl 322 `"Ukrainian"', add
label define ie11a_nation_lbl 323 `"Ugandan"', add
label define ie11a_nation_lbl 324 `"American"', add
label define ie11a_nation_lbl 329 `"Venezuelan"', add
label define ie11a_nation_lbl 332 `"Vietnamese"', add
label define ie11a_nation_lbl 336 `"English"', add
label define ie11a_nation_lbl 337 `"Northern Irish"', add
label define ie11a_nation_lbl 338 `"Scottish"', add
label define ie11a_nation_lbl 339 `"Welsh"', add
label define ie11a_nation_lbl 343 `"South African"', add
label define ie11a_nation_lbl 345 `"Zimbabwean"', add
label define ie11a_nation_lbl 901 `"Other European"', add
label define ie11a_nation_lbl 902 `"Other African"', add
label define ie11a_nation_lbl 903 `"Other South American"', add
label define ie11a_nation_lbl 904 `"Other Central American"', add
label define ie11a_nation_lbl 905 `"Other Caribbean"', add
label define ie11a_nation_lbl 907 `"Other Asian"', add
label define ie11a_nation_lbl 908 `"Other foreign"', add
label define ie11a_nation_lbl 998 `"Unknown"', add
label define ie11a_nation_lbl 999 `"NIU (not in universe)"', add
label values ie11a_nation ie11a_nation_lbl

label define ie11a_relig_lbl 1 `"Roman Catholic"'
label define ie11a_relig_lbl 2 `"Church of Ireland (including Protestant)"', add
label define ie11a_relig_lbl 3 `"Other stated religions"', add
label define ie11a_relig_lbl 4 `"No religion"', add
label define ie11a_relig_lbl 8 `"Unknown"', add
label define ie11a_relig_lbl 9 `"NIU (not in universe)"', add
label values ie11a_relig ie11a_relig_lbl

label define ie11a_disab_lbl 1 `"Has a disability"'
label define ie11a_disab_lbl 2 `"No disability (including not stated)"', add
label define ie11a_disab_lbl 9 `"NIU (not in universe)"', add
label values ie11a_disab ie11a_disab_lbl

label define ie11a_health_lbl 1 `"Very good"'
label define ie11a_health_lbl 2 `"Good"', add
label define ie11a_health_lbl 3 `"Fair"', add
label define ie11a_health_lbl 4 `"Bad"', add
label define ie11a_health_lbl 5 `"Very bad"', add
label define ie11a_health_lbl 8 `"Unknown"', add
label define ie11a_health_lbl 9 `"NIU (not in universe)"', add
label values ie11a_health ie11a_health_lbl

label define ie11a_carer_lbl 1 `"Unpaid carer"'
label define ie11a_carer_lbl 2 `"Not a carer (including not stated)"', add
label define ie11a_carer_lbl 9 `"NIU (not in universe)"', add
label values ie11a_carer ie11a_carer_lbl

label define ie11a_ethnic_lbl 1 `"Irish or Irish traveller"'
label define ie11a_ethnic_lbl 2 `"Other stated ethnicity"', add
label define ie11a_ethnic_lbl 8 `"Unknown"', add
label define ie11a_ethnic_lbl 9 `"NIU (not in universe)"', add
label values ie11a_ethnic ie11a_ethnic_lbl

label define ie11a_langhome_lbl 1 `"Speak a foreign language at home"'
label define ie11a_langhome_lbl 2 `"Does not speak a foreign language at home"', add
label define ie11a_langhome_lbl 8 `"Unknown"', add
label define ie11a_langhome_lbl 9 `"NIU (not in universe)"', add
label values ie11a_langhome ie11a_langhome_lbl

label define ie11a_englev_lbl 1 `"Very well"'
label define ie11a_englev_lbl 2 `"Well"', add
label define ie11a_englev_lbl 3 `"Not well"', add
label define ie11a_englev_lbl 4 `"Not at all"', add
label define ie11a_englev_lbl 8 `"Unknown"', add
label define ie11a_englev_lbl 9 `"NIU (not in universe)"', add
label values ie11a_englev ie11a_englev_lbl

label define ie11a_langfor_lbl 01 `"Polish"'
label define ie11a_langfor_lbl 02 `"French"', add
label define ie11a_langfor_lbl 03 `"Lithuanian"', add
label define ie11a_langfor_lbl 04 `"German"', add
label define ie11a_langfor_lbl 05 `"Russian"', add
label define ie11a_langfor_lbl 06 `"Spanish"', add
label define ie11a_langfor_lbl 07 `"Romanian"', add
label define ie11a_langfor_lbl 08 `"Chinese"', add
label define ie11a_langfor_lbl 09 `"Latvian"', add
label define ie11a_langfor_lbl 10 `"Portuguese"', add
label define ie11a_langfor_lbl 11 `"Arabic"', add
label define ie11a_langfor_lbl 12 `"Italian"', add
label define ie11a_langfor_lbl 13 `"Yoruba"', add
label define ie11a_langfor_lbl 14 `"Slovak"', add
label define ie11a_langfor_lbl 15 `"Other language"', add
label define ie11a_langfor_lbl 99 `"NIU (not in universe)"', add
label values ie11a_langfor ie11a_langfor_lbl

label define ie11a_chborn_lbl 00 `"0"'
label define ie11a_chborn_lbl 01 `"1"', add
label define ie11a_chborn_lbl 02 `"2"', add
label define ie11a_chborn_lbl 03 `"3"', add
label define ie11a_chborn_lbl 04 `"4"', add
label define ie11a_chborn_lbl 05 `"5"', add
label define ie11a_chborn_lbl 06 `"6"', add
label define ie11a_chborn_lbl 07 `"7"', add
label define ie11a_chborn_lbl 08 `"8"', add
label define ie11a_chborn_lbl 09 `"9+"', add
label define ie11a_chborn_lbl 99 `"NIU (not in universe)"', add
label values ie11a_chborn ie11a_chborn_lbl

label define ie11a_trantime_lbl 1 `"Less than 15 minutes"'
label define ie11a_trantime_lbl 2 `"Between 15 and 29 minutes"', add
label define ie11a_trantime_lbl 3 `"Between 30 and 44 minutes"', add
label define ie11a_trantime_lbl 4 `"Between 45 minutes and 1 hour"', add
label define ie11a_trantime_lbl 5 `"Between 1 and 1.5 hours"', add
label define ie11a_trantime_lbl 6 `"More than 1.5 hours"', add
label define ie11a_trantime_lbl 8 `"Does not travel or unknown"', add
label define ie11a_trantime_lbl 9 `"NIU (not in universe)"', add
label values ie11a_trantime ie11a_trantime_lbl

label define ie11a_departs_lbl 01 `"Not at work, school, or college"'
label define ie11a_departs_lbl 02 `"Before 6:30"', add
label define ie11a_departs_lbl 03 `"6:30 - 7:00"', add
label define ie11a_departs_lbl 04 `"7:01 - 7:30"', add
label define ie11a_departs_lbl 05 `"7:31 - 8:00"', add
label define ie11a_departs_lbl 06 `"8:01 - 8:30"', add
label define ie11a_departs_lbl 07 `"8:31 - 9:00"', add
label define ie11a_departs_lbl 08 `"9:01 - 9:30"', add
label define ie11a_departs_lbl 09 `"After 9:30"', add
label define ie11a_departs_lbl 98 `"Unknown"', add
label define ie11a_departs_lbl 99 `"NIU (not in universe)"', add
label values ie11a_departs ie11a_departs_lbl

label define ie11a_meantrv_lbl 01 `"Not at work, school, or college"'
label define ie11a_meantrv_lbl 02 `"On foot"', add
label define ie11a_meantrv_lbl 03 `"Bicycle"', add
label define ie11a_meantrv_lbl 04 `"Bus, minibus, or coach"', add
label define ie11a_meantrv_lbl 05 `"Train, DART, or LUAS"', add
label define ie11a_meantrv_lbl 06 `"Motor cycle or scooter"', add
label define ie11a_meantrv_lbl 07 `"Driving a car"', add
label define ie11a_meantrv_lbl 08 `"Passenger in a car"', add
label define ie11a_meantrv_lbl 09 `"Van"', add
label define ie11a_meantrv_lbl 10 `"Other, including lorry"', add
label define ie11a_meantrv_lbl 11 `"Work mainly at or from home"', add
label define ie11a_meantrv_lbl 98 `"Unknown"', add
label define ie11a_meantrv_lbl 99 `"NIU (not in universe)"', add
label values ie11a_meantrv ie11a_meantrv_lbl

label define ie11a_dissight_lbl 1 `"Yes"'
label define ie11a_dissight_lbl 2 `"No"', add
label define ie11a_dissight_lbl 9 `"NIU (not in universe)"', add
label values ie11a_dissight ie11a_dissight_lbl

label define ie11a_dishear_lbl 1 `"Yes"'
label define ie11a_dishear_lbl 2 `"No"', add
label define ie11a_dishear_lbl 9 `"NIU (not in universe)"', add
label values ie11a_dishear ie11a_dishear_lbl

label define ie11a_disphys_lbl 1 `"Yes"'
label define ie11a_disphys_lbl 2 `"No"', add
label define ie11a_disphys_lbl 9 `"NIU (not in universe)"', add
label values ie11a_disphys ie11a_disphys_lbl

label define ie11a_dismntl_lbl 1 `"Yes"'
label define ie11a_dismntl_lbl 2 `"No"', add
label define ie11a_dismntl_lbl 9 `"NIU (not in universe)"', add
label values ie11a_dismntl ie11a_dismntl_lbl

label define ie11a_dislearn_lbl 1 `"Yes"'
label define ie11a_dislearn_lbl 2 `"No"', add
label define ie11a_dislearn_lbl 9 `"NIU (not in universe)"', add
label values ie11a_dislearn ie11a_dislearn_lbl

label define ie11a_disspsych_lbl 1 `"Yes"'
label define ie11a_disspsych_lbl 2 `"No"', add
label define ie11a_disspsych_lbl 9 `"NIU (not in universe)"', add
label values ie11a_disspsych ie11a_disspsych_lbl

label define ie11a_disother_lbl 1 `"Yes"'
label define ie11a_disother_lbl 2 `"No"', add
label define ie11a_disother_lbl 9 `"NIU (not in universe)"', add
label values ie11a_disother ie11a_disother_lbl

label define ie11a_diffdress_lbl 1 `"Yes"'
label define ie11a_diffdress_lbl 2 `"No"', add
label define ie11a_diffdress_lbl 9 `"NIU (not in universe)"', add
label values ie11a_diffdress ie11a_diffdress_lbl

label define ie11a_diffout_lbl 1 `"Yes"'
label define ie11a_diffout_lbl 2 `"No"', add
label define ie11a_diffout_lbl 9 `"NIU (not in universe)"', add
label values ie11a_diffout ie11a_diffout_lbl

label define ie11a_diffwrk_lbl 1 `"Yes"'
label define ie11a_diffwrk_lbl 2 `"No"', add
label define ie11a_diffwrk_lbl 9 `"NIU (not in universe)"', add
label values ie11a_diffwrk ie11a_diffwrk_lbl

label define ie11a_diffother_lbl 1 `"Yes"'
label define ie11a_diffother_lbl 2 `"No"', add
label define ie11a_diffother_lbl 9 `"NIU (not in universe)"', add
label values ie11a_diffother ie11a_diffother_lbl

label define ie11a_age_lbl 00 `"0"'
label define ie11a_age_lbl 01 `"1"', add
label define ie11a_age_lbl 02 `"2"', add
label define ie11a_age_lbl 03 `"3"', add
label define ie11a_age_lbl 04 `"4"', add
label define ie11a_age_lbl 05 `"5"', add
label define ie11a_age_lbl 06 `"6"', add
label define ie11a_age_lbl 07 `"7"', add
label define ie11a_age_lbl 08 `"8"', add
label define ie11a_age_lbl 09 `"9"', add
label define ie11a_age_lbl 10 `"10"', add
label define ie11a_age_lbl 11 `"11"', add
label define ie11a_age_lbl 12 `"12"', add
label define ie11a_age_lbl 13 `"13"', add
label define ie11a_age_lbl 14 `"14"', add
label define ie11a_age_lbl 15 `"15"', add
label define ie11a_age_lbl 16 `"16"', add
label define ie11a_age_lbl 17 `"17"', add
label define ie11a_age_lbl 18 `"18"', add
label define ie11a_age_lbl 19 `"19"', add
label define ie11a_age_lbl 20 `"20"', add
label define ie11a_age_lbl 21 `"21"', add
label define ie11a_age_lbl 22 `"22"', add
label define ie11a_age_lbl 23 `"23"', add
label define ie11a_age_lbl 24 `"24"', add
label define ie11a_age_lbl 25 `"25"', add
label define ie11a_age_lbl 26 `"26"', add
label define ie11a_age_lbl 27 `"27"', add
label define ie11a_age_lbl 28 `"28"', add
label define ie11a_age_lbl 29 `"29"', add
label define ie11a_age_lbl 30 `"30"', add
label define ie11a_age_lbl 31 `"31"', add
label define ie11a_age_lbl 32 `"32"', add
label define ie11a_age_lbl 33 `"33"', add
label define ie11a_age_lbl 34 `"34"', add
label define ie11a_age_lbl 35 `"35"', add
label define ie11a_age_lbl 36 `"36"', add
label define ie11a_age_lbl 37 `"37"', add
label define ie11a_age_lbl 38 `"38"', add
label define ie11a_age_lbl 39 `"39"', add
label define ie11a_age_lbl 40 `"40"', add
label define ie11a_age_lbl 41 `"41"', add
label define ie11a_age_lbl 42 `"42"', add
label define ie11a_age_lbl 43 `"43"', add
label define ie11a_age_lbl 44 `"44"', add
label define ie11a_age_lbl 45 `"45"', add
label define ie11a_age_lbl 46 `"46"', add
label define ie11a_age_lbl 47 `"47"', add
label define ie11a_age_lbl 48 `"48"', add
label define ie11a_age_lbl 49 `"49"', add
label define ie11a_age_lbl 50 `"50"', add
label define ie11a_age_lbl 51 `"51"', add
label define ie11a_age_lbl 52 `"52"', add
label define ie11a_age_lbl 53 `"53"', add
label define ie11a_age_lbl 54 `"54"', add
label define ie11a_age_lbl 55 `"55"', add
label define ie11a_age_lbl 56 `"56"', add
label define ie11a_age_lbl 57 `"57"', add
label define ie11a_age_lbl 58 `"58"', add
label define ie11a_age_lbl 59 `"59"', add
label define ie11a_age_lbl 60 `"60"', add
label define ie11a_age_lbl 61 `"61"', add
label define ie11a_age_lbl 62 `"62"', add
label define ie11a_age_lbl 63 `"63"', add
label define ie11a_age_lbl 64 `"64"', add
label define ie11a_age_lbl 65 `"65"', add
label define ie11a_age_lbl 66 `"66"', add
label define ie11a_age_lbl 67 `"67"', add
label define ie11a_age_lbl 68 `"68"', add
label define ie11a_age_lbl 69 `"69"', add
label define ie11a_age_lbl 70 `"70"', add
label define ie11a_age_lbl 71 `"71"', add
label define ie11a_age_lbl 72 `"72"', add
label define ie11a_age_lbl 73 `"73"', add
label define ie11a_age_lbl 74 `"74"', add
label define ie11a_age_lbl 75 `"75"', add
label define ie11a_age_lbl 76 `"76"', add
label define ie11a_age_lbl 77 `"77"', add
label define ie11a_age_lbl 78 `"78"', add
label define ie11a_age_lbl 79 `"79"', add
label define ie11a_age_lbl 80 `"80"', add
label define ie11a_age_lbl 81 `"81"', add
label define ie11a_age_lbl 82 `"82"', add
label define ie11a_age_lbl 83 `"83"', add
label define ie11a_age_lbl 84 `"84"', add
label define ie11a_age_lbl 85 `"85+"', add
label values ie11a_age ie11a_age_lbl

label define ie11a_occ_lbl 111 `"Chief executives and senior officials"'
label define ie11a_occ_lbl 112 `"Production managers and directors"', add
label define ie11a_occ_lbl 113 `"Functional managers and directors"', add
label define ie11a_occ_lbl 115 `"Financial institution managers and directors"', add
label define ie11a_occ_lbl 116 `"Managers and directors in transport and logistics"', add
label define ie11a_occ_lbl 117 `"Senior officers in protective services"', add
label define ie11a_occ_lbl 118 `"Health and social services managers and directors"', add
label define ie11a_occ_lbl 119 `"Managers and directors in retail and wholesale"', add
label define ie11a_occ_lbl 121 `"Managers and proprietors in agriculture related services"', add
label define ie11a_occ_lbl 122 `"Managers and proprietors in hospitality and leisure services"', add
label define ie11a_occ_lbl 124 `"Managers and proprietors in health and care services"', add
label define ie11a_occ_lbl 125 `"Managers and proprietors in other services"', add
label define ie11a_occ_lbl 211 `"Natural and social science professionals"', add
label define ie11a_occ_lbl 212 `"Engineering professionals"', add
label define ie11a_occ_lbl 213 `"Information technology and telecommunications professionals"', add
label define ie11a_occ_lbl 214 `"Conservation and environment professionals"', add
label define ie11a_occ_lbl 215 `"Research and development managers"', add
label define ie11a_occ_lbl 221 `"Health professionals"', add
label define ie11a_occ_lbl 222 `"Therapy professionals"', add
label define ie11a_occ_lbl 223 `"Nursing and midwifery professionals"', add
label define ie11a_occ_lbl 231 `"Teaching and educational professionals"', add
label define ie11a_occ_lbl 241 `"Legal professionals"', add
label define ie11a_occ_lbl 242 `"Business, research, and administrative professionals"', add
label define ie11a_occ_lbl 243 `"Architects, town planners, and surveyors"', add
label define ie11a_occ_lbl 244 `"Welfare professionals"', add
label define ie11a_occ_lbl 245 `"Librarians and related professionals"', add
label define ie11a_occ_lbl 246 `"Quality and regulatory professionals"', add
label define ie11a_occ_lbl 247 `"Media professionals"', add
label define ie11a_occ_lbl 311 `"Science, engineering, and production technicians"', add
label define ie11a_occ_lbl 312 `"Draughtspersons and related architectural technicians"', add
label define ie11a_occ_lbl 313 `"Information technology technicians"', add
label define ie11a_occ_lbl 321 `"Health associate professionals"', add
label define ie11a_occ_lbl 323 `"Welfare and housing associate professionals"', add
label define ie11a_occ_lbl 331 `"Protective service occupations"', add
label define ie11a_occ_lbl 341 `"Artistic, literary, and media occupations"', add
label define ie11a_occ_lbl 342 `"Design occupations"', add
label define ie11a_occ_lbl 344 `"Sports and fitness occupations"', add
label define ie11a_occ_lbl 351 `"Transport associate professionals"', add
label define ie11a_occ_lbl 352 `"Legal associate professionals"', add
label define ie11a_occ_lbl 353 `"Business, finance, and related associate professionals"', add
label define ie11a_occ_lbl 354 `"Sales, marketing, and related associate professionals"', add
label define ie11a_occ_lbl 355 `"Conservation and environmental associate professionals"', add
label define ie11a_occ_lbl 356 `"Public services and other associate professionals"', add
label define ie11a_occ_lbl 411 `"Administrative occupations: government and related organisations"', add
label define ie11a_occ_lbl 412 `"Administrative occupations: finance"', add
label define ie11a_occ_lbl 413 `"Administrative occupations: records"', add
label define ie11a_occ_lbl 415 `"Other administrative occupations"', add
label define ie11a_occ_lbl 416 `"Administrative occupations: office managers and supervisors"', add
label define ie11a_occ_lbl 421 `"Secretarial and related occupations"', add
label define ie11a_occ_lbl 511 `"Agricultural and related trades"', add
label define ie11a_occ_lbl 521 `"Metal forming, welding, and related trades"', add
label define ie11a_occ_lbl 522 `"Metal machining, fitting, and instrument making trades"', add
label define ie11a_occ_lbl 523 `"Vehicle trades"', add
label define ie11a_occ_lbl 524 `"Electrical and electronic trades"', add
label define ie11a_occ_lbl 525 `"Skilled metal, electrical, and electronic trades supervisors"', add
label define ie11a_occ_lbl 531 `"Construction and building trades"', add
label define ie11a_occ_lbl 532 `"Building finishing trades"', add
label define ie11a_occ_lbl 533 `"Construction and building trades supervisors"', add
label define ie11a_occ_lbl 541 `"Textiles and garments trades"', add
label define ie11a_occ_lbl 542 `"Printing trades"', add
label define ie11a_occ_lbl 543 `"Food preparation and hospitality trades"', add
label define ie11a_occ_lbl 544 `"Other skilled trades"', add
label define ie11a_occ_lbl 612 `"Childcare and related personal services"', add
label define ie11a_occ_lbl 613 `"Animal care and control services"', add
label define ie11a_occ_lbl 614 `"Caring personal services"', add
label define ie11a_occ_lbl 621 `"Leisure and travel services"', add
label define ie11a_occ_lbl 622 `"Hairdressers and related services"', add
label define ie11a_occ_lbl 623 `"Housekeeping and related services"', add
label define ie11a_occ_lbl 624 `"Cleaning and housekeeping managers and supervisors"', add
label define ie11a_occ_lbl 711 `"Sales assistants and retail cashiers"', add
label define ie11a_occ_lbl 712 `"Sales related occupations"', add
label define ie11a_occ_lbl 713 `"Sales supervisors"', add
label define ie11a_occ_lbl 721 `"Customer service occupations"', add
label define ie11a_occ_lbl 722 `"Customer service managers and supervisors"', add
label define ie11a_occ_lbl 811 `"Process operatives"', add
label define ie11a_occ_lbl 812 `"Plant and machine operatives"', add
label define ie11a_occ_lbl 813 `"Assemblers and routine operatives"', add
label define ie11a_occ_lbl 814 `"Construction operatives"', add
label define ie11a_occ_lbl 821 `"Road transport drivers"', add
label define ie11a_occ_lbl 822 `"Mobile machine drivers and operatives"', add
label define ie11a_occ_lbl 823 `"Other drivers and transport operatives"', add
label define ie11a_occ_lbl 911 `"Elementary agricultural occupations"', add
label define ie11a_occ_lbl 912 `"Elementary construction occupations"', add
label define ie11a_occ_lbl 913 `"Elementary process plant occupations"', add
label define ie11a_occ_lbl 921 `"Elementary administration occupations"', add
label define ie11a_occ_lbl 923 `"Elementary cleaning occupations"', add
label define ie11a_occ_lbl 924 `"Elementary security occupations"', add
label define ie11a_occ_lbl 926 `"Elementary storage occupations"', add
label define ie11a_occ_lbl 927 `"Other elementary services occupations"', add
label define ie11a_occ_lbl 998 `"Unknown"', add
label define ie11a_occ_lbl 999 `"NIU (not in universe)"', add
label values ie11a_occ ie11a_occ_lbl


