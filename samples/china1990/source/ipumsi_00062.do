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
  byte    subsamp         33-34    ///
  byte    gq              35-36    ///
  byte    unrel           37-37    ///
  byte    regionw         38-39    ///
  long    geolev1         40-45    ///
  long    geo1a_cn        46-51    ///
  byte    geo1b_cn        52-53    ///
  int     geo2b_cn        54-57    ///
  byte    hhtype          58-59    ///
  byte    nfams           60-60    ///
  byte    ncoupls         61-61    ///
  byte    nmothrs         62-62    ///
  byte    nfathrs         63-63    ///
  int     headloc         64-66    ///
  long    cn90a_dwnum     67-73    ///
  byte    cn90a_pern      74-75    ///
  byte    cn90a_fbig      76-76    ///
  byte    cn90a_fbig_nh   77-78    ///
  byte    cn90a_prov      79-80    ///
  int     cn90a_prefect   81-84    ///
  byte    cn90a_hhtya     85-85    ///
  byte    cn90a_gq        86-86    ///
  int     pernum          87-89    ///
  float   wtper           90-97    ///
  int     momloc          98-100   ///
  int     poploc          101-103  ///
  int     sploc           104-106  ///
  byte    parrule         107-108  ///
  byte    sprule          109-110  ///
  byte    cn90a_pernum    111-112  ///
  byte    cn90a_pernumo   113-114  ///
  byte    cn90a_relate    115-115  ///
  byte    cn90a_sex       116-116  ///
  int     cn90a_birthy    117-119  ///
  byte    cn90a_birthm    120-121  ///
  byte    cn90a_nation    122-123  ///
  byte    cn90a_regist    124-124  ///
  byte    cn90a_res85     125-126  ///
  byte    cn90a_res85t    127-127  ///
  byte    cn90a_migreas   128-128  ///
  byte    cn90a_edlev1    129-129  ///
  byte    cn90a_edlev2    130-130  ///
  byte    cn90a_edattan   131-132  ///
  int     cn90a_ind       133-135  ///
  int     cn90a_occ       136-138  ///
  byte    cn90a_unempst   139-139  ///
  byte    cn90a_marst     140-140  ///
  byte    cn90a_chbornm   141-142  ///
  byte    cn90a_chbornf   143-144  ///
  byte    cn90a_chsurvm   145-146  ///
  byte    cn90a_chsurvf   147-148  ///
  byte    cn90a_chb89_90  149-150  ///
  byte    cn90a_hhtyap    151-151  ///
  int     cn90a_age       152-154  ///
  using `"ipumsi_00062.dat"'

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
label var subsamp        `"Subsample number"'
label var gq             `"Group quarters status"'
label var unrel          `"Number of unrelated persons"'
label var regionw        `"Continent and region of country"'
label var geolev1        `"1st subnational geographic level, world [consistent boundaries over time]"'
label var geo1a_cn       `"Province, China [Level 1; consistent boundaries over time]"'
label var geo1b_cn       `"Province, China [Level 1; inconsistent boundaries, harmonized by name]"'
label var geo2b_cn       `"Prefecture and city, China [Level 2; inconsistent boundaries, harmonized by name"'
label var hhtype         `"Household classification"'
label var nfams          `"Number of families in household"'
label var ncoupls        `"Number of married couples in household"'
label var nmothrs        `"Number of mothers in household"'
label var nfathrs        `"Number of fathers in household"'
label var headloc        `"Head's location in household"'
label var cn90a_dwnum    `"Dwelling number"'
label var cn90a_pern     `"Number of persons in household"'
label var cn90a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var cn90a_fbig_nh  `"Number of persons in large household before it was split"'
label var cn90a_prov     `"Province"'
label var cn90a_prefect  `"Prefecture"'
label var cn90a_hhtya    `"Household type, agriculture"'
label var cn90a_gq       `"Household type"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var momloc         `"Mother's location in household"'
label var poploc         `"Father's location in household"'
label var sploc          `"Spouse's location in household"'
label var parrule        `"Rule for linking parent"'
label var sprule         `"Rule for linking spouse"'
label var cn90a_pernum   `"Person number (within household)"'
label var cn90a_pernumo  `"Person number (within household)"'
label var cn90a_relate   `"Relationship to the head of household"'
label var cn90a_sex      `"Sex"'
label var cn90a_birthy   `"Birth year"'
label var cn90a_birthm   `"Month of birth"'
label var cn90a_nation   `"Ethnicity"'
label var cn90a_regist   `"Registration status"'
label var cn90a_res85    `"Usual residence in 1985"'
label var cn90a_res85t   `"Usual residence type in 1985"'
label var cn90a_migreas  `"Reason for migration"'
label var cn90a_edlev1   `"Educational level"'
label var cn90a_edlev2   `"Educational status"'
label var cn90a_edattan  `"Educational attainment"'
label var cn90a_ind      `"Industry"'
label var cn90a_occ      `"Occupation"'
label var cn90a_unempst  `"Non-employment status"'
label var cn90a_marst    `"Marital status"'
label var cn90a_chbornm  `"Number of male births"'
label var cn90a_chbornf  `"Number of female births"'
label var cn90a_chsurvm  `"Number of male children surviving"'
label var cn90a_chsurvf  `"Number of female children surviving"'
label var cn90a_chb89_90 `"Births between 1989 to 1990"'
label var cn90a_hhtyap   `"Household type (person-level)"'
label var cn90a_age      `"Age"'

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

label define subsamp_lbl 00 `"1st 1% subsample"'
label define subsamp_lbl 01 `"2nd 1% subsample"', add
label define subsamp_lbl 02 `"3rd 1% subsample"', add
label define subsamp_lbl 03 `"4th 1% subsample"', add
label define subsamp_lbl 04 `"5th 1% subsample"', add
label define subsamp_lbl 05 `"6th 1% subsample"', add
label define subsamp_lbl 06 `"7th 1% subsample"', add
label define subsamp_lbl 07 `"8th 1% subsample"', add
label define subsamp_lbl 08 `"9th 1% subsample"', add
label define subsamp_lbl 09 `"10th 1% subsample"', add
label define subsamp_lbl 10 `"11th 1% subsample"', add
label define subsamp_lbl 11 `"12th 1% subsample"', add
label define subsamp_lbl 12 `"13th 1% subsample"', add
label define subsamp_lbl 13 `"14th 1% subsample"', add
label define subsamp_lbl 14 `"15th 1% subsample"', add
label define subsamp_lbl 15 `"16th 1% subsample"', add
label define subsamp_lbl 16 `"17th 1% subsample"', add
label define subsamp_lbl 17 `"18th 1% subsample"', add
label define subsamp_lbl 18 `"19th 1% subsample"', add
label define subsamp_lbl 19 `"20th 1% subsample"', add
label define subsamp_lbl 20 `"21st 1% subsample"', add
label define subsamp_lbl 21 `"22nd 1% subsample"', add
label define subsamp_lbl 22 `"23rd 1% subsample"', add
label define subsamp_lbl 23 `"24th 1% subsample"', add
label define subsamp_lbl 24 `"25th 1% subsample"', add
label define subsamp_lbl 25 `"26th 1% subsample"', add
label define subsamp_lbl 26 `"27th 1% subsample"', add
label define subsamp_lbl 27 `"28th 1% subsample"', add
label define subsamp_lbl 28 `"29th 1% subsample"', add
label define subsamp_lbl 29 `"30th 1% subsample"', add
label define subsamp_lbl 30 `"31st 1% subsample"', add
label define subsamp_lbl 31 `"32nd 1% subsample"', add
label define subsamp_lbl 32 `"33rd 1% subsample"', add
label define subsamp_lbl 33 `"34th 1% subsample"', add
label define subsamp_lbl 34 `"35th 1% subsample"', add
label define subsamp_lbl 35 `"36th 1% subsample"', add
label define subsamp_lbl 36 `"37th 1% subsample"', add
label define subsamp_lbl 37 `"38th 1% subsample"', add
label define subsamp_lbl 38 `"39th 1% subsample"', add
label define subsamp_lbl 39 `"40th 1% subsample"', add
label define subsamp_lbl 40 `"41st 1% subsample"', add
label define subsamp_lbl 41 `"42nd 1% subsample"', add
label define subsamp_lbl 42 `"43rd 1% subsample"', add
label define subsamp_lbl 43 `"44th 1% subsample"', add
label define subsamp_lbl 44 `"45th 1% subsample"', add
label define subsamp_lbl 45 `"46th 1% subsample"', add
label define subsamp_lbl 46 `"47th 1% subsample"', add
label define subsamp_lbl 47 `"48th 1% subsample"', add
label define subsamp_lbl 48 `"49th 1% subsample"', add
label define subsamp_lbl 49 `"50th 1% subsample"', add
label define subsamp_lbl 50 `"51st 1% subsample"', add
label define subsamp_lbl 51 `"52nd 1% subsample"', add
label define subsamp_lbl 52 `"53rd 1% subsample"', add
label define subsamp_lbl 53 `"54th 1% subsample"', add
label define subsamp_lbl 54 `"55th 1% subsample"', add
label define subsamp_lbl 55 `"56th 1% subsample"', add
label define subsamp_lbl 56 `"57th 1% subsample"', add
label define subsamp_lbl 57 `"58th 1% subsample"', add
label define subsamp_lbl 58 `"59th 1% subsample"', add
label define subsamp_lbl 59 `"60th 1% subsample"', add
label define subsamp_lbl 60 `"61st 1% subsample"', add
label define subsamp_lbl 61 `"62nd 1% subsample"', add
label define subsamp_lbl 62 `"63rd 1% subsample"', add
label define subsamp_lbl 63 `"64th 1% subsample"', add
label define subsamp_lbl 64 `"65th 1% subsample"', add
label define subsamp_lbl 65 `"66th 1% subsample"', add
label define subsamp_lbl 66 `"67th 1% subsample"', add
label define subsamp_lbl 67 `"68th 1% subsample"', add
label define subsamp_lbl 68 `"69th 1% subsample"', add
label define subsamp_lbl 69 `"70th 1% subsample"', add
label define subsamp_lbl 70 `"71st 1% subsample"', add
label define subsamp_lbl 71 `"72nd 1% subsample"', add
label define subsamp_lbl 72 `"73rd 1% subsample"', add
label define subsamp_lbl 73 `"74th 1% subsample"', add
label define subsamp_lbl 74 `"75th 1% subsample"', add
label define subsamp_lbl 75 `"76th 1% subsample"', add
label define subsamp_lbl 76 `"77th 1% subsample"', add
label define subsamp_lbl 77 `"78th 1% subsample"', add
label define subsamp_lbl 78 `"79th 1% subsample"', add
label define subsamp_lbl 79 `"80th 1% subsample"', add
label define subsamp_lbl 80 `"81st 1% subsample"', add
label define subsamp_lbl 81 `"82nd 1% subsample"', add
label define subsamp_lbl 82 `"83rd 1% subsample"', add
label define subsamp_lbl 83 `"84th 1% subsample"', add
label define subsamp_lbl 84 `"85th 1% subsample"', add
label define subsamp_lbl 85 `"86th 1% subsample"', add
label define subsamp_lbl 86 `"87th 1% subsample"', add
label define subsamp_lbl 87 `"88th 1% subsample"', add
label define subsamp_lbl 88 `"89th 1% subsample"', add
label define subsamp_lbl 89 `"90th 1% subsample"', add
label define subsamp_lbl 90 `"91st 1% subsample"', add
label define subsamp_lbl 91 `"92nd 1% subsample"', add
label define subsamp_lbl 92 `"93rd 1% subsample"', add
label define subsamp_lbl 93 `"94th 1% subsample"', add
label define subsamp_lbl 94 `"95th 1% subsample"', add
label define subsamp_lbl 95 `"96th 1% subsample"', add
label define subsamp_lbl 96 `"97th 1% subsample"', add
label define subsamp_lbl 97 `"98th 1% subsample"', add
label define subsamp_lbl 98 `"99th 1% subsample"', add
label define subsamp_lbl 99 `"100th 1% subsample"', add
label values subsamp subsamp_lbl

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
label define geolev1_lbl 032014 `"C�rdoba [Province: Argentina]"', add
label define geolev1_lbl 032018 `"Corrientes [Province: Argentina]"', add
label define geolev1_lbl 032022 `"Chaco [Province: Argentina]"', add
label define geolev1_lbl 032026 `"Chubut [Province: Argentina]"', add
label define geolev1_lbl 032030 `"Entre R�os [Province: Argentina]"', add
label define geolev1_lbl 032034 `"Formosa [Province: Argentina]"', add
label define geolev1_lbl 032038 `"Jujuy [Province: Argentina]"', add
label define geolev1_lbl 032042 `"La Pampa [Province: Argentina]"', add
label define geolev1_lbl 032046 `"La Rioja [Province: Argentina]"', add
label define geolev1_lbl 032050 `"Mendoza [Province: Argentina]"', add
label define geolev1_lbl 032054 `"Misiones [Province: Argentina]"', add
label define geolev1_lbl 032058 `"Neuqu�n [Province: Argentina]"', add
label define geolev1_lbl 032062 `"R�o Negro [Province: Argentina]"', add
label define geolev1_lbl 032066 `"Salta [Province: Argentina]"', add
label define geolev1_lbl 032070 `"San Juan [Province: Argentina]"', add
label define geolev1_lbl 032074 `"San Luis [Province: Argentina]"', add
label define geolev1_lbl 032078 `"Santa Cruz [Province: Argentina]"', add
label define geolev1_lbl 032082 `"Santa Fe [Province: Argentina]"', add
label define geolev1_lbl 032086 `"Santiago del Estero [Province: Argentina]"', add
label define geolev1_lbl 032090 `"Tucum�n [Province: Argentina]"', add
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
label define geolev1_lbl 040012 `"Nieder�sterreich [State: Austria]"', add
label define geolev1_lbl 040013 `"Wien [State: Austria]"', add
label define geolev1_lbl 040021 `"K�rnten [State: Austria]"', add
label define geolev1_lbl 040022 `"Steiermark [State: Austria]"', add
label define geolev1_lbl 040031 `"Ober�sterreich [State: Austria]"', add
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
label define geolev1_lbl 068005 `"Potos� [Department: Bolivia]"', add
label define geolev1_lbl 068006 `"Tarija [Department: Bolivia]"', add
label define geolev1_lbl 068007 `"Santa Cruz [Department: Bolivia]"', add
label define geolev1_lbl 068008 `"Beni [Department: Bolivia]"', add
label define geolev1_lbl 068009 `"Pando [Department: Bolivia]"', add
label define geolev1_lbl 076011 `"Rond�nia [State: Brazil]"', add
label define geolev1_lbl 076012 `"Acre [State: Brazil]"', add
label define geolev1_lbl 076013 `"Amazonas [State: Brazil]"', add
label define geolev1_lbl 076014 `"Roraima [State: Brazil]"', add
label define geolev1_lbl 076015 `"Par� [State: Brazil]"', add
label define geolev1_lbl 076016 `"Amap� [State: Brazil]"', add
label define geolev1_lbl 076021 `"Maranh�o [State: Brazil]"', add
label define geolev1_lbl 076022 `"Piau� [State: Brazil]"', add
label define geolev1_lbl 076023 `"Cear� [State: Brazil]"', add
label define geolev1_lbl 076024 `"Rio Grande do Norte [State: Brazil]"', add
label define geolev1_lbl 076025 `"Para�ba [State: Brazil]"', add
label define geolev1_lbl 076026 `"Pernambuco [State: Brazil]"', add
label define geolev1_lbl 076027 `"Alagoas [State: Brazil]"', add
label define geolev1_lbl 076028 `"Sergipe [State: Brazil]"', add
label define geolev1_lbl 076029 `"Bahia [State: Brazil]"', add
label define geolev1_lbl 076031 `"Minas Gerais [State: Brazil]"', add
label define geolev1_lbl 076032 `"Esp�rito Santo [State: Brazil]"', add
label define geolev1_lbl 076033 `"Rio de Janeiro [State: Brazil]"', add
label define geolev1_lbl 076035 `"S�o Paulo [State: Brazil]"', add
label define geolev1_lbl 076041 `"Paran� [State: Brazil]"', add
label define geolev1_lbl 076042 `"Santa Catarina [State: Brazil]"', add
label define geolev1_lbl 076043 `"Rio Grande do Sul [State: Brazil]"', add
label define geolev1_lbl 076051 `"Mato Grosso and Mato Grosso do Sul [State: Brazil]"', add
label define geolev1_lbl 076052 `"Goi�s and Tocantins  [State: Brazil]"', add
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
label define geolev1_lbl 120004 `"Nord,  Adamoua , and Extr�me Nord [Province: Cameroon]"', add
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
label define geolev1_lbl 152002 `"Antofagasta and Tarapac� [Region: Chile]"', add
label define geolev1_lbl 152004 `"Atacama and Coquimbo [Region: Chile]"', add
label define geolev1_lbl 152007 `"Del Maule  [Region: Chile]"', add
label define geolev1_lbl 152008 `"Del Biobio [Region: Chile]"', add
label define geolev1_lbl 152009 `"La Araucan�a [Region: Chile]"', add
label define geolev1_lbl 152010 `"Aysen del Gral Carlos Ib��ez del Campo and Los Lagos [Region: Chile]"', add
label define geolev1_lbl 152012 `"Magallanes and La Ant�rtica Chilena [Region: Chile]"', add
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
label define geolev1_lbl 170008 `"Atl�ntico [Department: Colombia]"', add
label define geolev1_lbl 170011 `"Bogot� [Department: Colombia]"', add
label define geolev1_lbl 170013 `"Bolivar and Sucre [Department: Colombia]"', add
label define geolev1_lbl 170015 `"Boyac� and Casanare [Department: Colombia]"', add
label define geolev1_lbl 170018 `"Caquet� [Department: Colombia]"', add
label define geolev1_lbl 170019 `"Cauca [Department: Colombia]"', add
label define geolev1_lbl 170023 `"Cordoba [Department: Colombia]"', add
label define geolev1_lbl 170025 `"Cundinamarca [Department: Colombia]"', add
label define geolev1_lbl 170027 `"Choc� [Department: Colombia]"', add
label define geolev1_lbl 170041 `"Huila [Department: Colombia]"', add
label define geolev1_lbl 170044 `"La Guajira [Department: Colombia]"', add
label define geolev1_lbl 170047 `"Cesar and Magdalena  [Department: Colombia]"', add
label define geolev1_lbl 170050 `"Meta and Vichada [Department: Colombia]"', add
label define geolev1_lbl 170052 `"Nari�o [Department: Colombia]"', add
label define geolev1_lbl 170054 `"Norte Santander [Department: Colombia]"', add
label define geolev1_lbl 170066 `"Caldas, Quindio, and Risaralda [Department: Colombia]"', add
label define geolev1_lbl 170068 `"Santander [Department: Colombia]"', add
label define geolev1_lbl 170073 `"Tolima [Department: Colombia]"', add
label define geolev1_lbl 170076 `"Valle [Department: Colombia]"', add
label define geolev1_lbl 170081 `"Arauca [Department: Colombia]"', add
label define geolev1_lbl 170086 `"Putumayo [Department: Colombia]"', add
label define geolev1_lbl 170088 `"San Andr�s [Department: Colombia]"', add
label define geolev1_lbl 170091 `"Amazonas [Department: Colombia]"', add
label define geolev1_lbl 170095 `"Guaviare, Vaupes, and Guaina [Department: Colombia]"', add
label define geolev1_lbl 188001 `"San Jos� [Province: Costa Rica]"', add
label define geolev1_lbl 188002 `"Alajuela [Province: Costa Rica]"', add
label define geolev1_lbl 188003 `"Cartago [Province: Costa Rica]"', add
label define geolev1_lbl 188004 `"Heredia [Province: Costa Rica]"', add
label define geolev1_lbl 188005 `"Guanacaste [Province: Costa Rica]"', add
label define geolev1_lbl 188006 `"Puntarenas [Province: Costa Rica]"', add
label define geolev1_lbl 188007 `"Lim�n [Province: Costa Rica]"', add
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
label define geolev1_lbl 214005 `"Dajab�n [Province: Dominican Republic]"', add
label define geolev1_lbl 214006 `"Duarte [Province: Dominican Republic]"', add
label define geolev1_lbl 214007 `"El�as Pi�a [Province: Dominican Republic]"', add
label define geolev1_lbl 214008 `"El Seibo and Hato Mayor [Province: Dominican Republic]"', add
label define geolev1_lbl 214009 `"Espaillat [Province: Dominican Republic]"', add
label define geolev1_lbl 214010 `"Independencia [Province: Dominican Republic]"', add
label define geolev1_lbl 214011 `"La Altagracia and La Romana [Province: Dominican Republic]"', add
label define geolev1_lbl 214013 `"La Vega and Monse�or Nouel [Province: Dominican Republic]"', add
label define geolev1_lbl 214014 `"Mar�a Trinidad S�nchez and Saman� [Province: Dominican Republic]"', add
label define geolev1_lbl 214015 `"Monte Cristi [Province: Dominican Republic]"', add
label define geolev1_lbl 214016 `"Pedernales [Province: Dominican Republic]"', add
label define geolev1_lbl 214017 `"Peravia and San Jos� de Ocoa [Province: Dominican Republic]"', add
label define geolev1_lbl 214018 `"Puerto Plata [Province: Dominican Republic]"', add
label define geolev1_lbl 214019 `"Hermanas Mirabal [Province: Dominican Republic]"', add
label define geolev1_lbl 214021 `"San Crist�bal and Monte Plata [Province: Dominican Republic]"', add
label define geolev1_lbl 214022 `"San Juan [Province: Dominican Republic]"', add
label define geolev1_lbl 214023 `"San Pedro de Macor�s [Province: Dominican Republic]"', add
label define geolev1_lbl 214024 `"S�nchez Ram�rez [Province: Dominican Republic]"', add
label define geolev1_lbl 214025 `"Santiago [Province: Dominican Republic]"', add
label define geolev1_lbl 214026 `"Santiago Rodr�guez [Province: Dominican Republic]"', add
label define geolev1_lbl 214027 `"Valverde [Province: Dominican Republic]"', add
label define geolev1_lbl 218001 `"Azuay [Province: Ecuador]"', add
label define geolev1_lbl 218002 `"Bolivar [Province: Ecuador]"', add
label define geolev1_lbl 218003 `"Ca�ar [Province: Ecuador]"', add
label define geolev1_lbl 218004 `"Carchi [Province: Ecuador]"', add
label define geolev1_lbl 218005 `"Cotopaxi [Province: Ecuador]"', add
label define geolev1_lbl 218006 `"Chimborazo [Province: Ecuador]"', add
label define geolev1_lbl 218007 `"El Oro [Province: Ecuador]"', add
label define geolev1_lbl 218008 `"Esmeraldas [Province: Ecuador]"', add
label define geolev1_lbl 218009 `"Guayas, Santa Elena, and Galapagos [Province: Ecuador]"', add
label define geolev1_lbl 218010 `"Imbabura [Province: Ecuador]"', add
label define geolev1_lbl 218011 `"Loja [Province: Ecuador]"', add
label define geolev1_lbl 218012 `"Los R�os [Province: Ecuador]"', add
label define geolev1_lbl 218013 `"Manab� [Province: Ecuador]"', add
label define geolev1_lbl 218014 `"Morona Santiago [Province: Ecuador]"', add
label define geolev1_lbl 218016 `"Pastaza [Province: Ecuador]"', add
label define geolev1_lbl 218017 `"Pichincha and Santo Domingo de los Ts�chilas [Province: Ecuador]"', add
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
label define geolev1_lbl 222001 `"Ahuachap�n [Department: El Salvador]"', add
label define geolev1_lbl 222002 `"Santa Ana [Department: El Salvador]"', add
label define geolev1_lbl 222003 `"Sonsonate [Department: El Salvador]"', add
label define geolev1_lbl 222004 `"Chalatenango [Department: El Salvador]"', add
label define geolev1_lbl 222005 `"La Libertad [Department: El Salvador]"', add
label define geolev1_lbl 222006 `"San Salvador [Department: El Salvador]"', add
label define geolev1_lbl 222007 `"Cuscatl�n [Department: El Salvador]"', add
label define geolev1_lbl 222008 `"La Paz [Department: El Salvador]"', add
label define geolev1_lbl 222009 `"Caba�as [Department: El Salvador]"', add
label define geolev1_lbl 222010 `"San Vicente [Department: El Salvador]"', add
label define geolev1_lbl 222011 `"Usulut�n [Department: El Salvador]"', add
label define geolev1_lbl 222012 `"San Miguel [Department: El Salvador]"', add
label define geolev1_lbl 222013 `"Moraz�n [Department: El Salvador]"', add
label define geolev1_lbl 222014 `"La Uni�n [Department: El Salvador]"', add
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
label define geolev1_lbl 250004 `"La R�union [Oversea Department, France]"', add
label define geolev1_lbl 250011 `"Region d'�le de France [Region: France]"', add
label define geolev1_lbl 250021 `"Champagne-Ardenne [Region: France]"', add
label define geolev1_lbl 250022 `"Picardie [Region: France]"', add
label define geolev1_lbl 250023 `"Haute-Normandie [Region: France]"', add
label define geolev1_lbl 250024 `"Centre [Region: France]"', add
label define geolev1_lbl 250025 `"Basse-Normandie [Region: France]"', add
label define geolev1_lbl 250026 `"Bourgogne [Region: France]"', add
label define geolev1_lbl 250031 `"Nord-Pas-de-Calais [Region: France]"', add
label define geolev1_lbl 250041 `"Lorraine [Region: France]"', add
label define geolev1_lbl 250042 `"Alsace [Region: France]"', add
label define geolev1_lbl 250043 `"Franche-Comt� [Region: France]"', add
label define geolev1_lbl 250052 `"Pays de la Loire [Region: France]"', add
label define geolev1_lbl 250053 `"Bretagne [Region: France]"', add
label define geolev1_lbl 250054 `"Poitou-Charentes [Region: France]"', add
label define geolev1_lbl 250072 `"Aquitaine [Region: France]"', add
label define geolev1_lbl 250073 `"Midi-Pyr�n�es [Region: France]"', add
label define geolev1_lbl 250074 `"Limousin [Region: France]"', add
label define geolev1_lbl 250082 `"Rh�ne-Alpes [Region: France]"', add
label define geolev1_lbl 250083 `"Auvergne [Region: France]"', add
label define geolev1_lbl 250091 `"Lanquedoc-Roussillon [Region: France]"', add
label define geolev1_lbl 250093 `"Provence-Alpes-C�te d'Azur [Region: France]"', add
label define geolev1_lbl 250094 `"Corse [Region: France]"', add
label define geolev1_lbl 276001 `"Schleswig-Holstein [State: Germany]"', add
label define geolev1_lbl 276002 `"Hamburg [State: Germany]"', add
label define geolev1_lbl 276003 `"Niedersachsen [State: Germany]"', add
label define geolev1_lbl 276004 `"Bremen [State: Germany]"', add
label define geolev1_lbl 276005 `"Nordrhein-Westfalen [State: Germany]"', add
label define geolev1_lbl 276006 `"Hessen [State: Germany]"', add
label define geolev1_lbl 276007 `"Rheinland-Pfalz [State: Germany]"', add
label define geolev1_lbl 276008 `"Baden-W�rttemberg [State: Germany]"', add
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
label define geolev1_lbl 324001 `"Bok� [Region: Guinea]"', add
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
label define geolev1_lbl 466004 `"S�gou [Region: Mali]"', add
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
label define geolev1_lbl 484015 `"M�xico [State: Mexico]"', add
label define geolev1_lbl 484016 `"Michoac�n [State: Mexico]"', add
label define geolev1_lbl 484017 `"Morelos [State: Mexico]"', add
label define geolev1_lbl 484018 `"Nayarit [State: Mexico]"', add
label define geolev1_lbl 484019 `"Nuevo Le�n [State: Mexico]"', add
label define geolev1_lbl 484020 `"Oaxaca [State: Mexico]"', add
label define geolev1_lbl 484021 `"Puebla [State: Mexico]"', add
label define geolev1_lbl 484022 `"Quer�taro [State: Mexico]"', add
label define geolev1_lbl 484023 `"Quintana Roo [State: Mexico]"', add
label define geolev1_lbl 484024 `"San Luis Potos� [State: Mexico]"', add
label define geolev1_lbl 484025 `"Sinaloa [State: Mexico]"', add
label define geolev1_lbl 484026 `"Sonora [State: Mexico]"', add
label define geolev1_lbl 484027 `"Tabasco [State: Mexico]"', add
label define geolev1_lbl 484028 `"Tamaulipas [State: Mexico]"', add
label define geolev1_lbl 484029 `"Tlaxcala [State: Mexico]"', add
label define geolev1_lbl 484030 `"Veracruz [State: Mexico]"', add
label define geolev1_lbl 484031 `"Yucat�n [State: Mexico]"', add
label define geolev1_lbl 484032 `"Zacatecas [State: Mexico]"', add
label define geolev1_lbl 496001 `"Arkhangai [Province: Mongolia]"', add
label define geolev1_lbl 496002 `"Bayan-�lgii [Province: Mongolia]"', add
label define geolev1_lbl 496003 `"Bayankhongor [Province: Mongolia]"', add
label define geolev1_lbl 496004 `"Bulgan [Province: Mongolia]"', add
label define geolev1_lbl 496005 `"Govi-Altai [Province: Mongolia]"', add
label define geolev1_lbl 496006 `"Dornogovi [Province: Mongolia]"', add
label define geolev1_lbl 496007 `"Dornod [Province: Mongolia]"', add
label define geolev1_lbl 496008 `"Dundgovi and Govisumber [Province: Mongolia]"', add
label define geolev1_lbl 496009 `"Zavkhan [Province: Mongolia]"', add
label define geolev1_lbl 496010 `"�v�rkhangai [Province: Mongolia]"', add
label define geolev1_lbl 496011 `"�mn�govi [Province: Mongolia]"', add
label define geolev1_lbl 496012 `"S�khbaatar [Province: Mongolia]"', add
label define geolev1_lbl 496013 `"Selenge [Province: Mongolia]"', add
label define geolev1_lbl 496014 `"T�v [Province: Mongolia]"', add
label define geolev1_lbl 496015 `"Uvs [Province: Mongolia]"', add
label define geolev1_lbl 496016 `"Khovd [Province: Mongolia]"', add
label define geolev1_lbl 496017 `"Kh�vsg�l [Province: Mongolia]"', add
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
label define geolev1_lbl 504010 `"Rabat-Sal�-Zemmour-Zaer [Region: Morocco]"', add
label define geolev1_lbl 504011 `"Doukala Abda [Region: Morocco]"', add
label define geolev1_lbl 504012 `"Tadla Azilal [Region: Morocco]"', add
label define geolev1_lbl 504013 `"Meknes-Tafilalet [Region: Morocco]"', add
label define geolev1_lbl 504014 `"F�s-Boulemane [Region: Morocco]"', add
label define geolev1_lbl 504015 `"Taza-Al Heiceima-Taounate [Region: Morocco]"', add
label define geolev1_lbl 504016 `"Tanger-T�touan [Region: Morocco]"', add
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
label define geolev1_lbl 558020 `"Madr�z [Department: Nicaragua]"', add
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
label define geolev1_lbl 558085 `"R�o San Juan [Department: Nicaragua]"', add
label define geolev1_lbl 558093 `"Zelaya, Atl�ntico Norte and Atl�ntico Sur [Department: Nicaragua]"', add
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
label define geolev1_lbl 591002 `"Cocl� [Province: Panama]"', add
label define geolev1_lbl 591003 `"Col�n  [Province: Panama]"', add
label define geolev1_lbl 591004 `"Bocas del Toro, Chiriqu�, Veraguas, and Comarca Ng�be-Bugl� [Province: Panama]"', add
label define geolev1_lbl 591006 `"Herrera [Province: Panama]"', add
label define geolev1_lbl 591007 `"Los Santos [Province: Panama]"', add
label define geolev1_lbl 591008 `"Dari�n, Embera, and Panam� [Province: Panama]"', add
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
label define geolev1_lbl 620112 `"C�vado [Subregion: Portugal]"', add
label define geolev1_lbl 620113 `"Ave [Subregion: Portugal]"', add
label define geolev1_lbl 620114 `"Grande Porto [Subregion: Portugal]"', add
label define geolev1_lbl 620115 `"T�mega [Subregion: Portugal]"', add
label define geolev1_lbl 620116 `"Entre Douro e Vouga [Subregion: Portugal]"', add
label define geolev1_lbl 620117 `"Douro [Subregion: Portugal]"', add
label define geolev1_lbl 620118 `"Alto Tr�s-os-Montes [Subregion: Portugal]"', add
label define geolev1_lbl 620150 `"Algarve [Subregion: Portugal]"', add
label define geolev1_lbl 620161 `"Baixo Vouga [Subregion: Portugal]"', add
label define geolev1_lbl 620162 `"Baixo Mondego [Subregion: Portugal]"', add
label define geolev1_lbl 620163 `"Pinhal Litoral [Subregion: Portugal]"', add
label define geolev1_lbl 620165 `"D�o-Laf�es [Subregion: Portugal]"', add
label define geolev1_lbl 620166 `"Oeste [Subregion: Portugal]"', add
label define geolev1_lbl 620167 `"M�dio Tejo [Subregion: Portugal]"', add
label define geolev1_lbl 620169 `"Other Center [Subregion: Portugal]"', add
label define geolev1_lbl 620171 `"Grande Lisboa [Subregion: Portugal]"', add
label define geolev1_lbl 620172 `"Pen�nsula de Set�bal [Subregion: Portugal]"', add
label define geolev1_lbl 620185 `"Lez�ria do Tejo [Subregion: Portugal]"', add
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
label define geolev1_lbl 724021 `"Pa�s Vasco [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724022 `"Comunidad Foral de Navarra [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724023 `"La Rioja [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724024 `"Arag�n [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724030 `"Comunidad de Madrid [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724041 `"Castilla y Le�n [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724042 `"Castilla-La Mancha [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724043 `"Extremadura [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724051 `"Catalu�a [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724052 `"Comunidad Valenciana [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724053 `"Illes Balears [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724061 `"Andaluc�a [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724062 `"Regi�n de Murcia [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724063 `"Ciudad Aut�noma de Ceuta [Communities and Autonomous Cities: Spain]"', add
label define geolev1_lbl 724064 `"Ciudad Aut�noma de Melilla [Communities and Autonomous Cities: Spain]"', add
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
label define geolev1_lbl 792012 `"Bing�l [Province: Turkey]"', add
label define geolev1_lbl 792013 `"Bitlis [Province: Turkey]"', add
label define geolev1_lbl 792014 `"Bolu and D�zce [Province: Turkey]"', add
label define geolev1_lbl 792015 `"Burdur [Province: Turkey]"', add
label define geolev1_lbl 792017 `"�anakkale [Province: Turkey]"', add
label define geolev1_lbl 792019 `"�orum [Province: Turkey]"', add
label define geolev1_lbl 792020 `"Denizli [Province: Turkey]"', add
label define geolev1_lbl 792021 `"Diyarbakir [Province: Turkey]"', add
label define geolev1_lbl 792022 `"Edirne [Province: Turkey]"', add
label define geolev1_lbl 792023 `"Elazig [Province: Turkey]"', add
label define geolev1_lbl 792024 `"Erzincan [Province: Turkey]"', add
label define geolev1_lbl 792025 `"Erzurum [Province: Turkey]"', add
label define geolev1_lbl 792026 `"Eskisehir [Province: Turkey]"', add
label define geolev1_lbl 792028 `"Giresun [Province: Turkey]"', add
label define geolev1_lbl 792029 `"G�m�shane and Bayburt [Province: Turkey]"', add
label define geolev1_lbl 792031 `"Hatay [Province: Turkey]"', add
label define geolev1_lbl 792032 `"Isparta [Province: Turkey]"', add
label define geolev1_lbl 792033 `"Mersin (i�el) [Province: Turkey]"', add
label define geolev1_lbl 792034 `"Istanbul, Bursa, Kocaeli and Yalova [Province: Turkey]"', add
label define geolev1_lbl 792035 `"Izmir [Province: Turkey]"', add
label define geolev1_lbl 792036 `"Kars, Ardahan and Igdir [Province: Turkey]"', add
label define geolev1_lbl 792037 `"Kastamonu [Province: Turkey]"', add
label define geolev1_lbl 792038 `"Kayseri [Province: Turkey]"', add
label define geolev1_lbl 792039 `"Kirklareli [Province: Turkey]"', add
label define geolev1_lbl 792040 `"Kirsehir [Province: Turkey]"', add
label define geolev1_lbl 792042 `"Konya and Karaman [Province: Turkey]"', add
label define geolev1_lbl 792043 `"K�tahya [Province: Turkey]"', add
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
label define geolev1_lbl 792067 `"Zonguldak, �ankiri, Karabuk and Bartin [Province: Turkey]"', add
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
label define geolev1_lbl 862003 `"Anz�ategui  [State: Venezuela]"', add
label define geolev1_lbl 862004 `"Apure  [State: Venezuela]"', add
label define geolev1_lbl 862005 `"Aragua [State: Venezuela]"', add
label define geolev1_lbl 862006 `"Barinas [State: Venezuela]"', add
label define geolev1_lbl 862007 `"Bol�var [State: Venezuela]"', add
label define geolev1_lbl 862008 `"Carabobo [State: Venezuela]"', add
label define geolev1_lbl 862009 `"Cojedes  [State: Venezuela]"', add
label define geolev1_lbl 862010 `"Amacuros Delta Federal Territory [State: Venezuela]"', add
label define geolev1_lbl 862011 `"Falc�n  [State: Venezuela]"', add
label define geolev1_lbl 862012 `"Gu�rico [State: Venezuela]"', add
label define geolev1_lbl 862013 `"Lara  [State: Venezuela]"', add
label define geolev1_lbl 862014 `"M�rida [State: Venezuela]"', add
label define geolev1_lbl 862015 `"Miranda [State: Venezuela]"', add
label define geolev1_lbl 862016 `"Monagas [State: Venezuela]"', add
label define geolev1_lbl 862017 `"Nueva Esparta and Federal Dependencies [State: Venezuela]"', add
label define geolev1_lbl 862018 `"Portuguesa [State: Venezuela]"', add
label define geolev1_lbl 862019 `"Sucre [State: Venezuela]"', add
label define geolev1_lbl 862020 `"T�chira [State: Venezuela]"', add
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

label define geo1a_cn_lbl 156011 `"Beijing (municipality)"'
label define geo1a_cn_lbl 156012 `"Tianjin (municipality)"', add
label define geo1a_cn_lbl 156013 `"Hebei"', add
label define geo1a_cn_lbl 156014 `"Shanxi"', add
label define geo1a_cn_lbl 156015 `"Inner Mongolia"', add
label define geo1a_cn_lbl 156021 `"Liaoning"', add
label define geo1a_cn_lbl 156022 `"Jilin"', add
label define geo1a_cn_lbl 156023 `"Heilongjiang"', add
label define geo1a_cn_lbl 156031 `"Shanghai (municipality)"', add
label define geo1a_cn_lbl 156032 `"Jiangsu"', add
label define geo1a_cn_lbl 156033 `"Zhejiang"', add
label define geo1a_cn_lbl 156034 `"Anhui"', add
label define geo1a_cn_lbl 156035 `"Fujian"', add
label define geo1a_cn_lbl 156036 `"Jiangxi"', add
label define geo1a_cn_lbl 156037 `"Shangdong"', add
label define geo1a_cn_lbl 156041 `"Henan"', add
label define geo1a_cn_lbl 156042 `"Hubei"', add
label define geo1a_cn_lbl 156043 `"Hunan"', add
label define geo1a_cn_lbl 156044 `"Guangdong and Hainan"', add
label define geo1a_cn_lbl 156045 `"Guangxi"', add
label define geo1a_cn_lbl 156051 `"Sichuan"', add
label define geo1a_cn_lbl 156052 `"Guizhou"', add
label define geo1a_cn_lbl 156053 `"Yunnan"', add
label define geo1a_cn_lbl 156054 `"Tibet"', add
label define geo1a_cn_lbl 156061 `"Shaanxi"', add
label define geo1a_cn_lbl 156062 `"Gansu"', add
label define geo1a_cn_lbl 156063 `"Qinghai"', add
label define geo1a_cn_lbl 156064 `"Ningxia"', add
label define geo1a_cn_lbl 156065 `"Xinjiang"', add
label values geo1a_cn geo1a_cn_lbl

label define geo1b_cn_lbl 11 `"Beijing (municipality)"'
label define geo1b_cn_lbl 12 `"Tianjin (municipality)"', add
label define geo1b_cn_lbl 13 `"Hebei"', add
label define geo1b_cn_lbl 14 `"Shanxi"', add
label define geo1b_cn_lbl 15 `"Inner Mongolia"', add
label define geo1b_cn_lbl 21 `"Liaoning"', add
label define geo1b_cn_lbl 22 `"Jilin"', add
label define geo1b_cn_lbl 23 `"Heilongjiang"', add
label define geo1b_cn_lbl 31 `"Shanghai (municipality)"', add
label define geo1b_cn_lbl 32 `"Jiangsu"', add
label define geo1b_cn_lbl 33 `"Zhejiang"', add
label define geo1b_cn_lbl 34 `"Anhui"', add
label define geo1b_cn_lbl 35 `"Fujian"', add
label define geo1b_cn_lbl 36 `"Jiangxi"', add
label define geo1b_cn_lbl 37 `"Shangdong"', add
label define geo1b_cn_lbl 41 `"Henan"', add
label define geo1b_cn_lbl 42 `"Hubei"', add
label define geo1b_cn_lbl 43 `"Hunan"', add
label define geo1b_cn_lbl 44 `"Guangdong"', add
label define geo1b_cn_lbl 45 `"Guangxi"', add
label define geo1b_cn_lbl 46 `"Hainan"', add
label define geo1b_cn_lbl 51 `"Sichuan"', add
label define geo1b_cn_lbl 52 `"Guizhou"', add
label define geo1b_cn_lbl 53 `"Yunnan"', add
label define geo1b_cn_lbl 54 `"Tibet"', add
label define geo1b_cn_lbl 61 `"Shaanxi"', add
label define geo1b_cn_lbl 62 `"Gansu"', add
label define geo1b_cn_lbl 63 `"Qinghai"', add
label define geo1b_cn_lbl 64 `"Ningxia"', add
label define geo1b_cn_lbl 65 `"Xinjiang"', add
label values geo1b_cn geo1b_cn_lbl

label define geo2b_cn_lbl 1101 `"Beijing districts"'
label define geo2b_cn_lbl 1102 `"Beijing counties"', add
label define geo2b_cn_lbl 1201 `"Tianjin districts"', add
label define geo2b_cn_lbl 1202 `"Tianjin counties"', add
label define geo2b_cn_lbl 1301 `"Shijiazhuang city"', add
label define geo2b_cn_lbl 1302 `"Tangshan city"', add
label define geo2b_cn_lbl 1303 `"Qinhuangdao city"', add
label define geo2b_cn_lbl 1304 `"Handan city"', add
label define geo2b_cn_lbl 1305 `"Xingtai city"', add
label define geo2b_cn_lbl 1306 `"Baoding city"', add
label define geo2b_cn_lbl 1307 `"Zhangjiakou city"', add
label define geo2b_cn_lbl 1308 `"Chengde city"', add
label define geo2b_cn_lbl 1309 `"Cangzhou city"', add
label define geo2b_cn_lbl 1310 `"Langfang city"', add
label define geo2b_cn_lbl 1321 `"Handan prefecture"', add
label define geo2b_cn_lbl 1322 `"Xingtai prefecture"', add
label define geo2b_cn_lbl 1323 `"Shijiazhuang prefecture"', add
label define geo2b_cn_lbl 1324 `"Baoding prefecture"', add
label define geo2b_cn_lbl 1325 `"Zhangjiakou prefecture"', add
label define geo2b_cn_lbl 1326 `"Chengde prefecture"', add
label define geo2b_cn_lbl 1327 `"Tangshan prefecture"', add
label define geo2b_cn_lbl 1328 `"Langfang prefecture"', add
label define geo2b_cn_lbl 1329 `"Cangzhou prefecture"', add
label define geo2b_cn_lbl 1330 `"Hengshui prefecture"', add
label define geo2b_cn_lbl 1401 `"Taiyuan city"', add
label define geo2b_cn_lbl 1402 `"Datong city"', add
label define geo2b_cn_lbl 1403 `"Yangchuan city"', add
label define geo2b_cn_lbl 1404 `"Changzhi city"', add
label define geo2b_cn_lbl 1405 `"Jincheng city"', add
label define geo2b_cn_lbl 1406 `"Shuozhou city"', add
label define geo2b_cn_lbl 1421 `"Yanbei prefecture"', add
label define geo2b_cn_lbl 1422 `"Xinzhou prefecture"', add
label define geo2b_cn_lbl 1423 `"L�liang prefecture"', add
label define geo2b_cn_lbl 1424 `"Jinzhong prefecture"', add
label define geo2b_cn_lbl 1425 `"Jindongnan prefecture"', add
label define geo2b_cn_lbl 1426 `"Linfen prefecture"', add
label define geo2b_cn_lbl 1427 `"Yuncheng prefecture"', add
label define geo2b_cn_lbl 1501 `"Huhehaote city"', add
label define geo2b_cn_lbl 1502 `"Baotou city"', add
label define geo2b_cn_lbl 1503 `"Wuhai city"', add
label define geo2b_cn_lbl 1504 `"Chifeng city"', add
label define geo2b_cn_lbl 1521 `"Hulunbei'er prefecture"', add
label define geo2b_cn_lbl 1522 `"Xing'an prefecture"', add
label define geo2b_cn_lbl 1523 `"Zhelimu prefecture"', add
label define geo2b_cn_lbl 1524 `"Zhaowuda prefecture"', add
label define geo2b_cn_lbl 1525 `"Xilinguole prefecture"', add
label define geo2b_cn_lbl 1526 `"Wulanchabu prefecture"', add
label define geo2b_cn_lbl 1527 `"Yikezhao prefecture"', add
label define geo2b_cn_lbl 1528 `"Bayannao'er prefecture"', add
label define geo2b_cn_lbl 1529 `"Alasha prefecture"', add
label define geo2b_cn_lbl 2101 `"Shenyang city"', add
label define geo2b_cn_lbl 2102 `"Dalian city"', add
label define geo2b_cn_lbl 2103 `"Anshan city"', add
label define geo2b_cn_lbl 2104 `"Fushun city"', add
label define geo2b_cn_lbl 2105 `"Benxi city"', add
label define geo2b_cn_lbl 2106 `"Dandong city"', add
label define geo2b_cn_lbl 2107 `"Jinzhou city"', add
label define geo2b_cn_lbl 2108 `"Yingkou city"', add
label define geo2b_cn_lbl 2109 `"Fuxin city"', add
label define geo2b_cn_lbl 2110 `"Liaoyang city"', add
label define geo2b_cn_lbl 2111 `"Panjin city"', add
label define geo2b_cn_lbl 2112 `"Tieling city"', add
label define geo2b_cn_lbl 2113 `"Chaoyang city"', add
label define geo2b_cn_lbl 2114 `"Jinxi city"', add
label define geo2b_cn_lbl 2201 `"Changchun city"', add
label define geo2b_cn_lbl 2202 `"Jilin city"', add
label define geo2b_cn_lbl 2203 `"Siping city"', add
label define geo2b_cn_lbl 2204 `"Liaoyuan city"', add
label define geo2b_cn_lbl 2205 `"Tonghua city"', add
label define geo2b_cn_lbl 2206 `"Hunjiang city"', add
label define geo2b_cn_lbl 2223 `"Baicheng prefecture"', add
label define geo2b_cn_lbl 2224 `"Yanbian Korean prefecture"', add
label define geo2b_cn_lbl 2301 `"Ha'erbin city"', add
label define geo2b_cn_lbl 2302 `"Qiqiha'er city"', add
label define geo2b_cn_lbl 2303 `"Jixi city"', add
label define geo2b_cn_lbl 2304 `"Hegang city"', add
label define geo2b_cn_lbl 2305 `"Shuangyashan city"', add
label define geo2b_cn_lbl 2306 `"Daqing city"', add
label define geo2b_cn_lbl 2307 `"Yichun city"', add
label define geo2b_cn_lbl 2308 `"Jiamusi city"', add
label define geo2b_cn_lbl 2309 `"Qitaihe city"', add
label define geo2b_cn_lbl 2321 `"Songhuajiang prefecture"', add
label define geo2b_cn_lbl 2322 `"Nenjiang prefecture"', add
label define geo2b_cn_lbl 2323 `"Suihua prefecture"', add
label define geo2b_cn_lbl 2324 `"Hejiang prefecture"', add
label define geo2b_cn_lbl 2325 `"Mudanjiang prefecture"', add
label define geo2b_cn_lbl 2326 `"Heihe prefecture"', add
label define geo2b_cn_lbl 2327 `"Daxing'anling prefecture"', add
label define geo2b_cn_lbl 2390 `"Acheng city"', add
label define geo2b_cn_lbl 3101 `"Shanghai districts"', add
label define geo2b_cn_lbl 3102 `"Shanghai counties"', add
label define geo2b_cn_lbl 3201 `"Nanjing city"', add
label define geo2b_cn_lbl 3202 `"Wuxi city"', add
label define geo2b_cn_lbl 3203 `"Xuzhou city"', add
label define geo2b_cn_lbl 3204 `"Changzhou city"', add
label define geo2b_cn_lbl 3205 `"Suzhou city"', add
label define geo2b_cn_lbl 3206 `"Nantong city"', add
label define geo2b_cn_lbl 3207 `"Lianyungang city"', add
label define geo2b_cn_lbl 3208 `"Huaiyin city"', add
label define geo2b_cn_lbl 3209 `"Yancheng city"', add
label define geo2b_cn_lbl 3210 `"Yangzhou city"', add
label define geo2b_cn_lbl 3211 `"Zhenjiang city"', add
label define geo2b_cn_lbl 3221 `"Xuzhou prefecture"', add
label define geo2b_cn_lbl 3225 `"Nantong prefecture"', add
label define geo2b_cn_lbl 3227 `"Suzhou prefecture"', add
label define geo2b_cn_lbl 3301 `"Hangzhou city"', add
label define geo2b_cn_lbl 3302 `"Ningbo city"', add
label define geo2b_cn_lbl 3303 `"Wenzhou city"', add
label define geo2b_cn_lbl 3304 `"Jiaxing city"', add
label define geo2b_cn_lbl 3305 `"Huzhou city"', add
label define geo2b_cn_lbl 3306 `"Shaoxing city"', add
label define geo2b_cn_lbl 3307 `"Jinhua city"', add
label define geo2b_cn_lbl 3308 `"Quzhou city"', add
label define geo2b_cn_lbl 3309 `"Zhoushan city"', add
label define geo2b_cn_lbl 3322 `"Ningbo prefecture"', add
label define geo2b_cn_lbl 3325 `"Lishui prefecture"', add
label define geo2b_cn_lbl 3326 `"Taizhou prefecture"', add
label define geo2b_cn_lbl 3401 `"Hefei city"', add
label define geo2b_cn_lbl 3402 `"Wuhu city"', add
label define geo2b_cn_lbl 3403 `"Bengbu city"', add
label define geo2b_cn_lbl 3404 `"Huainan city"', add
label define geo2b_cn_lbl 3405 `"Ma'anshan city"', add
label define geo2b_cn_lbl 3406 `"Huaibei city"', add
label define geo2b_cn_lbl 3407 `"Tongling city"', add
label define geo2b_cn_lbl 3408 `"Anqing city"', add
label define geo2b_cn_lbl 3410 `"Huangshan city"', add
label define geo2b_cn_lbl 3421 `"Fuyang prefecture"', add
label define geo2b_cn_lbl 3422 `"Suxian prefecture"', add
label define geo2b_cn_lbl 3423 `"Chuxian prefecture"', add
label define geo2b_cn_lbl 3424 `"Lu'an prefecture"', add
label define geo2b_cn_lbl 3425 `"Xuancheng prefecture"', add
label define geo2b_cn_lbl 3426 `"Chaohu prefecture"', add
label define geo2b_cn_lbl 3427 `"Huizhou prefecture"', add
label define geo2b_cn_lbl 3428 `"Anqing prefecture"', add
label define geo2b_cn_lbl 3429 `"Chizhou prefecture"', add
label define geo2b_cn_lbl 3501 `"Fuzhou city"', add
label define geo2b_cn_lbl 3502 `"Xiamen city"', add
label define geo2b_cn_lbl 3503 `"Putian city"', add
label define geo2b_cn_lbl 3504 `"Sanming city"', add
label define geo2b_cn_lbl 3505 `"Quanzhou city"', add
label define geo2b_cn_lbl 3506 `"Zhangzhou city"', add
label define geo2b_cn_lbl 3521 `"Jianyang prefecture"', add
label define geo2b_cn_lbl 3522 `"Ningde prefecture"', add
label define geo2b_cn_lbl 3524 `"Jinjiang prefecture"', add
label define geo2b_cn_lbl 3525 `"Longxi prefecture"', add
label define geo2b_cn_lbl 3526 `"Longyan prefecture"', add
label define geo2b_cn_lbl 3601 `"Nanchang city"', add
label define geo2b_cn_lbl 3602 `"Jingdezhen city"', add
label define geo2b_cn_lbl 3603 `"Pingxiang city"', add
label define geo2b_cn_lbl 3604 `"Jiujiang city"', add
label define geo2b_cn_lbl 3605 `"Xinyu city"', add
label define geo2b_cn_lbl 3606 `"Yingtan city"', add
label define geo2b_cn_lbl 3621 `"Ganzhou prefecture"', add
label define geo2b_cn_lbl 3622 `"Yichun prefecture"', add
label define geo2b_cn_lbl 3623 `"Shangrao prefecture"', add
label define geo2b_cn_lbl 3624 `"Ji'an prefecture"', add
label define geo2b_cn_lbl 3625 `"Fuzhou prefecture"', add
label define geo2b_cn_lbl 3626 `"Jiujiang prefecture"', add
label define geo2b_cn_lbl 3701 `"Jinan city"', add
label define geo2b_cn_lbl 3702 `"Qingdao city"', add
label define geo2b_cn_lbl 3703 `"Zibo city"', add
label define geo2b_cn_lbl 3704 `"Zaoshuang city"', add
label define geo2b_cn_lbl 3705 `"Dongying city"', add
label define geo2b_cn_lbl 3706 `"Yantai city"', add
label define geo2b_cn_lbl 3707 `"Weifang city"', add
label define geo2b_cn_lbl 3708 `"Jining city"', add
label define geo2b_cn_lbl 3709 `"Tai'an city"', add
label define geo2b_cn_lbl 3710 `"Weihai city"', add
label define geo2b_cn_lbl 3711 `"Rizhao city"', add
label define geo2b_cn_lbl 3723 `"Huimin prefecture"', add
label define geo2b_cn_lbl 3724 `"Dezhou prefecture"', add
label define geo2b_cn_lbl 3725 `"Liaocheng prefecture"', add
label define geo2b_cn_lbl 3728 `"Linyi prefecture"', add
label define geo2b_cn_lbl 3729 `"Heze prefecture"', add
label define geo2b_cn_lbl 4101 `"Zhengzhou city"', add
label define geo2b_cn_lbl 4102 `"Kaifeng city"', add
label define geo2b_cn_lbl 4103 `"Luoyang city"', add
label define geo2b_cn_lbl 4104 `"Pingdingshan city"', add
label define geo2b_cn_lbl 4105 `"Anyang city"', add
label define geo2b_cn_lbl 4106 `"Hebi city"', add
label define geo2b_cn_lbl 4107 `"Xinxiang city"', add
label define geo2b_cn_lbl 4108 `"Jiaozuo city"', add
label define geo2b_cn_lbl 4109 `"Puyang city"', add
label define geo2b_cn_lbl 4110 `"Xuchang city"', add
label define geo2b_cn_lbl 4111 `"Luohe city"', add
label define geo2b_cn_lbl 4112 `"Sanmenxia city"', add
label define geo2b_cn_lbl 4121 `"Anyang prefecture"', add
label define geo2b_cn_lbl 4122 `"Xinxiang prefecture"', add
label define geo2b_cn_lbl 4123 `"Shangqiu prefecture"', add
label define geo2b_cn_lbl 4124 `"Kaifeng prefecture"', add
label define geo2b_cn_lbl 4125 `"Luoyang prefecture"', add
label define geo2b_cn_lbl 4126 `"Xuchang prefecture"', add
label define geo2b_cn_lbl 4127 `"Zhoukou prefecture"', add
label define geo2b_cn_lbl 4128 `"Zhumadian prefecture"', add
label define geo2b_cn_lbl 4129 `"Nanyang prefecture"', add
label define geo2b_cn_lbl 4130 `"Xinyang prefecture"', add
label define geo2b_cn_lbl 4201 `"Wuhan city"', add
label define geo2b_cn_lbl 4202 `"Huangshi city"', add
label define geo2b_cn_lbl 4203 `"Shiyan city"', add
label define geo2b_cn_lbl 4204 `"Shashi city"', add
label define geo2b_cn_lbl 4205 `"Yichang city"', add
label define geo2b_cn_lbl 4206 `"Xiangfan city"', add
label define geo2b_cn_lbl 4207 `"Ezhou city"', add
label define geo2b_cn_lbl 4208 `"Jingmen city"', add
label define geo2b_cn_lbl 4221 `"Huanggang prefecture"', add
label define geo2b_cn_lbl 4222 `"Xiaogan prefecture"', add
label define geo2b_cn_lbl 4223 `"Xianning prefecture"', add
label define geo2b_cn_lbl 4224 `"Jinzhou prefecture"', add
label define geo2b_cn_lbl 4225 `"Xiangyang prefecture"', add
label define geo2b_cn_lbl 4226 `"Yunyang prefecture"', add
label define geo2b_cn_lbl 4227 `"Yichang prefecture"', add
label define geo2b_cn_lbl 4228 `"Exi Tujia-Miao prefecture"', add
label define geo2b_cn_lbl 4290 `"Hubei provincial government administrative unit"', add
label define geo2b_cn_lbl 4295 `"Enshi prefecture"', add
label define geo2b_cn_lbl 4301 `"Changsha city"', add
label define geo2b_cn_lbl 4302 `"Zhuzhou city"', add
label define geo2b_cn_lbl 4303 `"Xiangtan city"', add
label define geo2b_cn_lbl 4304 `"Hengyang city"', add
label define geo2b_cn_lbl 4305 `"Shaoyang city"', add
label define geo2b_cn_lbl 4306 `"Yueyang city"', add
label define geo2b_cn_lbl 4307 `"Changde city"', add
label define geo2b_cn_lbl 4308 `"Dayong city"', add
label define geo2b_cn_lbl 4321 `"Xiangtan prefecture"', add
label define geo2b_cn_lbl 4323 `"Yiyang prefecture"', add
label define geo2b_cn_lbl 4325 `"Loudi prefecture"', add
label define geo2b_cn_lbl 4326 `"Shaoyang prefecture"', add
label define geo2b_cn_lbl 4327 `"Hengyang prefecture"', add
label define geo2b_cn_lbl 4328 `"Chenzhou prefecture"', add
label define geo2b_cn_lbl 4329 `"Lingling prefecture"', add
label define geo2b_cn_lbl 4330 `"Huaihua prefecture"', add
label define geo2b_cn_lbl 4331 `"Xiangxi Tujia-Miao prefecture"', add
label define geo2b_cn_lbl 4335 `"Lianyuan prefecture"', add
label define geo2b_cn_lbl 4401 `"Guangzhou city"', add
label define geo2b_cn_lbl 4402 `"Shaoguan city"', add
label define geo2b_cn_lbl 4403 `"Shenzhen city"', add
label define geo2b_cn_lbl 4404 `"Zhuhai city"', add
label define geo2b_cn_lbl 4405 `"Shantou city"', add
label define geo2b_cn_lbl 4406 `"Fuoshan city"', add
label define geo2b_cn_lbl 4407 `"Jiangmen city"', add
label define geo2b_cn_lbl 4408 `"Zhanjiang city"', add
label define geo2b_cn_lbl 4409 `"Maoming city"', add
label define geo2b_cn_lbl 4412 `"Zhaoqing city"', add
label define geo2b_cn_lbl 4413 `"Huizhou city"', add
label define geo2b_cn_lbl 4414 `"Meizhou city"', add
label define geo2b_cn_lbl 4415 `"Shanwei city"', add
label define geo2b_cn_lbl 4416 `"Heyuan city"', add
label define geo2b_cn_lbl 4417 `"Yangjiang city"', add
label define geo2b_cn_lbl 4418 `"Qingyuan city"', add
label define geo2b_cn_lbl 4419 `"Dongguan city"', add
label define geo2b_cn_lbl 4420 `"Zhongshan city"', add
label define geo2b_cn_lbl 4421 `"Hainan prefecture"', add
label define geo2b_cn_lbl 4422 `"Hainan Li-Miao prefecture"', add
label define geo2b_cn_lbl 4423 `"Shantou prefecture"', add
label define geo2b_cn_lbl 4424 `"Meixian prefecture"', add
label define geo2b_cn_lbl 4425 `"Huiyang prefecture"', add
label define geo2b_cn_lbl 4426 `"Shaoguan prefecture"', add
label define geo2b_cn_lbl 4427 `"Foshan prefecture"', add
label define geo2b_cn_lbl 4428 `"Zhaoqing prefecture"', add
label define geo2b_cn_lbl 4429 `"Zhanjiang prefecture"', add
label define geo2b_cn_lbl 4490 `"Guangdong provincial government administrative unit"', add
label define geo2b_cn_lbl 4501 `"Nanning city"', add
label define geo2b_cn_lbl 4502 `"Liuzhou city"', add
label define geo2b_cn_lbl 4503 `"Guilin city"', add
label define geo2b_cn_lbl 4504 `"Wuzhou city"', add
label define geo2b_cn_lbl 4505 `"Beihai city"', add
label define geo2b_cn_lbl 4521 `"Nanning prefecture"', add
label define geo2b_cn_lbl 4522 `"Liuzhou prefecture"', add
label define geo2b_cn_lbl 4523 `"Guilin prefecture"', add
label define geo2b_cn_lbl 4524 `"Wuzhou prefecture"', add
label define geo2b_cn_lbl 4525 `"Yulin prefecture"', add
label define geo2b_cn_lbl 4526 `"Bose prefecture"', add
label define geo2b_cn_lbl 4527 `"Hechi prefecture"', add
label define geo2b_cn_lbl 4528 `"Qinzhou prefecture"', add
label define geo2b_cn_lbl 4601 `"Haikou city"', add
label define geo2b_cn_lbl 4602 `"Sanya city"', add
label define geo2b_cn_lbl 4690 `"Hainan provincial government administrative unit"', add
label define geo2b_cn_lbl 5101 `"Chengdu city"', add
label define geo2b_cn_lbl 5102 `"Chongqing city"', add
label define geo2b_cn_lbl 5103 `"Zigong city"', add
label define geo2b_cn_lbl 5104 `"Panzhihua city"', add
label define geo2b_cn_lbl 5105 `"Luzhou city"', add
label define geo2b_cn_lbl 5106 `"Deyang city"', add
label define geo2b_cn_lbl 5107 `"Mianyang city"', add
label define geo2b_cn_lbl 5108 `"Guangyuan city"', add
label define geo2b_cn_lbl 5109 `"Suining city"', add
label define geo2b_cn_lbl 5110 `"Neijiang city"', add
label define geo2b_cn_lbl 5111 `"Leshan city"', add
label define geo2b_cn_lbl 5122 `"Wangxian prefecture"', add
label define geo2b_cn_lbl 5123 `"Fuling prefecture"', add
label define geo2b_cn_lbl 5124 `"Neijiang prefecture"', add
label define geo2b_cn_lbl 5125 `"Yibin prefecture"', add
label define geo2b_cn_lbl 5126 `"Leshan prefecture"', add
label define geo2b_cn_lbl 5128 `"Mianyang prefecture"', add
label define geo2b_cn_lbl 5129 `"Nanchong prefecture"', add
label define geo2b_cn_lbl 5130 `"Daxian prefecture"', add
label define geo2b_cn_lbl 5131 `"Ya'an prefecture"', add
label define geo2b_cn_lbl 5132 `"Aba Tibetan prefecture"', add
label define geo2b_cn_lbl 5133 `"Ganzi Tibetan prefecture"', add
label define geo2b_cn_lbl 5134 `"Liangshan Yi prefecture"', add
label define geo2b_cn_lbl 5135 `"Qianjiang prefecture"', add
label define geo2b_cn_lbl 5140 `"Dukou city"', add
label define geo2b_cn_lbl 5201 `"Guiyang city"', add
label define geo2b_cn_lbl 5202 `"Liupanshui city"', add
label define geo2b_cn_lbl 5221 `"Zunyi prefecture"', add
label define geo2b_cn_lbl 5222 `"Tongren prefecture"', add
label define geo2b_cn_lbl 5223 `"Jinxinan Buyi-Miao prefecture"', add
label define geo2b_cn_lbl 5224 `"Bijie prefecture"', add
label define geo2b_cn_lbl 5225 `"Anshun prefecture"', add
label define geo2b_cn_lbl 5226 `"Yin Dong Nan Buyi-Miao prefecture"', add
label define geo2b_cn_lbl 5227 `"Qiannan Bouyei-Miao prefecture"', add
label define geo2b_cn_lbl 5301 `"Kunming city"', add
label define geo2b_cn_lbl 5302 `"Dongchuan city"', add
label define geo2b_cn_lbl 5321 `"Zhaotong prefecture"', add
label define geo2b_cn_lbl 5322 `"Qujing prefecture"', add
label define geo2b_cn_lbl 5323 `"Chuxiong Yi prefecture"', add
label define geo2b_cn_lbl 5324 `"Yuxi prefecture"', add
label define geo2b_cn_lbl 5325 `"Honghe Hani-Yi prefecture"', add
label define geo2b_cn_lbl 5326 `"Wenshan Zhuang-Maio prefecture"', add
label define geo2b_cn_lbl 5327 `"Simao prefecture"', add
label define geo2b_cn_lbl 5328 `"Xishuangpanna Dai prefecture"', add
label define geo2b_cn_lbl 5329 `"Dali Bai prefecture"', add
label define geo2b_cn_lbl 5330 `"Baoshan prefecture"', add
label define geo2b_cn_lbl 5331 `"Dehong Dai-Jingpo prefecture"', add
label define geo2b_cn_lbl 5332 `"Lijiang prefecture"', add
label define geo2b_cn_lbl 5333 `"Nujiang Lili prefecture"', add
label define geo2b_cn_lbl 5334 `"Diqing Tibetan prefecture"', add
label define geo2b_cn_lbl 5335 `"Lincang prefecture"', add
label define geo2b_cn_lbl 5401 `"Lhasa city"', add
label define geo2b_cn_lbl 5421 `"Qamdo prefecture"', add
label define geo2b_cn_lbl 5422 `"Shannan prefecture"', add
label define geo2b_cn_lbl 5423 `"Xigaze prefecture"', add
label define geo2b_cn_lbl 5424 `"Nagqu prefecture"', add
label define geo2b_cn_lbl 5425 `"Ali prefecture"', add
label define geo2b_cn_lbl 5426 `"Linzhi prefecture"', add
label define geo2b_cn_lbl 6101 `"Xi'an city"', add
label define geo2b_cn_lbl 6102 `"Tongchuan city"', add
label define geo2b_cn_lbl 6103 `"Baoji city"', add
label define geo2b_cn_lbl 6104 `"Xianyang city"', add
label define geo2b_cn_lbl 6121 `"Weinan prefecture"', add
label define geo2b_cn_lbl 6122 `"Xianyang prefecture"', add
label define geo2b_cn_lbl 6123 `"Hanzhong prefecture"', add
label define geo2b_cn_lbl 6124 `"Ankang prefecture"', add
label define geo2b_cn_lbl 6125 `"Shangluo prefecture"', add
label define geo2b_cn_lbl 6126 `"Yan'an prefecture"', add
label define geo2b_cn_lbl 6127 `"Yulin prefecture"', add
label define geo2b_cn_lbl 6201 `"Lanzhou city"', add
label define geo2b_cn_lbl 6202 `"Jiayuguan city"', add
label define geo2b_cn_lbl 6203 `"Jinchang city"', add
label define geo2b_cn_lbl 6204 `"Baiyin city"', add
label define geo2b_cn_lbl 6205 `"Tianshui city"', add
label define geo2b_cn_lbl 6221 `"Jiuquan prefecture"', add
label define geo2b_cn_lbl 6222 `"Zhangye prefecture"', add
label define geo2b_cn_lbl 6223 `"Wuwei prefecture"', add
label define geo2b_cn_lbl 6224 `"Dingxi prefecture"', add
label define geo2b_cn_lbl 6226 `"Wudu prefecture"', add
label define geo2b_cn_lbl 6227 `"Pingliang prefecture"', add
label define geo2b_cn_lbl 6228 `"Qingyang prefecture"', add
label define geo2b_cn_lbl 6229 `"Linxia Hui prefecture"', add
label define geo2b_cn_lbl 6230 `"Ganann Tibetan prefecture"', add
label define geo2b_cn_lbl 6301 `"Xining city"', add
label define geo2b_cn_lbl 6321 `"Haidong prefecture"', add
label define geo2b_cn_lbl 6322 `"Haibei Tibetan prefecture"', add
label define geo2b_cn_lbl 6323 `"Huangnan Tibetan prefecture"', add
label define geo2b_cn_lbl 6324 `"Qinghai province special administrative district"', add
label define geo2b_cn_lbl 6325 `"Hainan Tibetan prefecture"', add
label define geo2b_cn_lbl 6326 `"Guoluo Tibetan prefecture"', add
label define geo2b_cn_lbl 6327 `"Yushu Tibetan prefecture"', add
label define geo2b_cn_lbl 6328 `"Haixi Mongolian-Tibetan-Kazak prefecture"', add
label define geo2b_cn_lbl 6401 `"Yinchuan city"', add
label define geo2b_cn_lbl 6402 `"Shizuishan city"', add
label define geo2b_cn_lbl 6421 `"Yinnan prefecture"', add
label define geo2b_cn_lbl 6422 `"Guyuan prefecture"', add
label define geo2b_cn_lbl 6501 `"Wulumuqi city"', add
label define geo2b_cn_lbl 6502 `"Kalamayi city"', add
label define geo2b_cn_lbl 6503 `"Shihezi city"', add
label define geo2b_cn_lbl 6521 `"Tulufan prefecture"', add
label define geo2b_cn_lbl 6522 `"Hami prefecture"', add
label define geo2b_cn_lbl 6523 `"Changji Hui prefecture"', add
label define geo2b_cn_lbl 6524 `"Yili Kazak prefecture"', add
label define geo2b_cn_lbl 6525 `"Tacheng prefecture"', add
label define geo2b_cn_lbl 6526 `"Altay prefecture"', add
label define geo2b_cn_lbl 6527 `"Boretala Mongolian prefecture"', add
label define geo2b_cn_lbl 6528 `"Bayinguoleng Mongolian prefecture"', add
label define geo2b_cn_lbl 6529 `"Akesu prefecture"', add
label define geo2b_cn_lbl 6530 `"Kezilesu Keerkezi prefecture"', add
label define geo2b_cn_lbl 6531 `"Kashi prefecture"', add
label define geo2b_cn_lbl 6532 `"Hetian prefecture"', add
label define geo2b_cn_lbl 6540 `"Yili Hasake prefecture"', add
label define geo2b_cn_lbl 6541 `"Yili prefecture"', add
label define geo2b_cn_lbl 6542 `"Tacheng prefecture"', add
label define geo2b_cn_lbl 6543 `"Aletai prefecture"', add
label values geo2b_cn geo2b_cn_lbl

label define hhtype_lbl 00 `"Vacant household"'
label define hhtype_lbl 01 `"One-person household"', add
label define hhtype_lbl 02 `"Married/cohab couple, no children"', add
label define hhtype_lbl 03 `"Married/cohab couple with children"', add
label define hhtype_lbl 04 `"Single-parent family"', add
label define hhtype_lbl 05 `"Polygamous family"', add
label define hhtype_lbl 06 `"Extended family, relatives only"', add
label define hhtype_lbl 07 `"Composite household, family and non-relatives"', add
label define hhtype_lbl 08 `"Non-family household"', add
label define hhtype_lbl 09 `"Unclassified subfamily"', add
label define hhtype_lbl 10 `"Other relative or non-relative household"', add
label define hhtype_lbl 11 `"Group quarters"', add
label define hhtype_lbl 99 `"Unclassifiable"', add
label values hhtype hhtype_lbl

label define nfams_lbl 0 `"Vacant household"'
label define nfams_lbl 1 `"1 family"', add
label define nfams_lbl 2 `"2 families"', add
label define nfams_lbl 3 `"3 families"', add
label define nfams_lbl 4 `"4 families"', add
label define nfams_lbl 5 `"5 families"', add
label define nfams_lbl 6 `"6 families"', add
label define nfams_lbl 7 `"7 families"', add
label define nfams_lbl 8 `"8 families"', add
label define nfams_lbl 9 `"9 or more families"', add
label values nfams nfams_lbl

label define ncoupls_lbl 0 `"No married couples in household"'
label define ncoupls_lbl 1 `"1 couple"', add
label define ncoupls_lbl 2 `"2 couples"', add
label define ncoupls_lbl 3 `"3 couples"', add
label define ncoupls_lbl 4 `"4 couples"', add
label define ncoupls_lbl 5 `"5 couples"', add
label define ncoupls_lbl 6 `"6 couples"', add
label define ncoupls_lbl 7 `"7 couples"', add
label define ncoupls_lbl 8 `"8 couples"', add
label define ncoupls_lbl 9 `"9 or more couples"', add
label values ncoupls ncoupls_lbl

label define nmothrs_lbl 0 `"No mothers in household"'
label define nmothrs_lbl 1 `"1 mother"', add
label define nmothrs_lbl 2 `"2 mothers"', add
label define nmothrs_lbl 3 `"3 mothers"', add
label define nmothrs_lbl 4 `"4 mothers"', add
label define nmothrs_lbl 5 `"5 mothers"', add
label define nmothrs_lbl 6 `"6 mothers"', add
label define nmothrs_lbl 7 `"7 mothers"', add
label define nmothrs_lbl 8 `"8 mothers"', add
label define nmothrs_lbl 9 `"9 or more mothers in household"', add
label values nmothrs nmothrs_lbl

label define nfathrs_lbl 0 `"No fathers in household"'
label define nfathrs_lbl 1 `"1 father"', add
label define nfathrs_lbl 2 `"2 fathers"', add
label define nfathrs_lbl 3 `"3 fathers"', add
label define nfathrs_lbl 4 `"4 fathers"', add
label define nfathrs_lbl 5 `"5 fathers"', add
label define nfathrs_lbl 6 `"6 fathers"', add
label define nfathrs_lbl 7 `"7 fathers"', add
label define nfathrs_lbl 8 `"8 fathers"', add
label define nfathrs_lbl 9 `"9 or more fathers in household"', add
label values nfathrs nfathrs_lbl

label define cn90a_pern_lbl 01 `"1"'
label define cn90a_pern_lbl 02 `"2"', add
label define cn90a_pern_lbl 03 `"3"', add
label define cn90a_pern_lbl 04 `"4"', add
label define cn90a_pern_lbl 05 `"5"', add
label define cn90a_pern_lbl 06 `"6"', add
label define cn90a_pern_lbl 07 `"7"', add
label define cn90a_pern_lbl 08 `"8"', add
label define cn90a_pern_lbl 09 `"9"', add
label define cn90a_pern_lbl 10 `"10"', add
label define cn90a_pern_lbl 11 `"11"', add
label define cn90a_pern_lbl 12 `"12"', add
label define cn90a_pern_lbl 13 `"13"', add
label define cn90a_pern_lbl 14 `"14"', add
label define cn90a_pern_lbl 15 `"15"', add
label define cn90a_pern_lbl 16 `"16"', add
label define cn90a_pern_lbl 17 `"17"', add
label define cn90a_pern_lbl 18 `"18"', add
label define cn90a_pern_lbl 19 `"19"', add
label define cn90a_pern_lbl 20 `"20"', add
label define cn90a_pern_lbl 21 `"21"', add
label define cn90a_pern_lbl 22 `"22"', add
label define cn90a_pern_lbl 23 `"23"', add
label define cn90a_pern_lbl 24 `"24"', add
label define cn90a_pern_lbl 25 `"25"', add
label define cn90a_pern_lbl 26 `"26"', add
label define cn90a_pern_lbl 27 `"27"', add
label define cn90a_pern_lbl 28 `"28"', add
label define cn90a_pern_lbl 29 `"29"', add
label define cn90a_pern_lbl 30 `"30"', add
label values cn90a_pern cn90a_pern_lbl

label define cn90a_fbig_lbl 0 `"No problem"'
label define cn90a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define cn90a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values cn90a_fbig cn90a_fbig_lbl

label define cn90a_fbig_nh_lbl 00 `"Not split"'
label define cn90a_fbig_nh_lbl 31 `"31"', add
label define cn90a_fbig_nh_lbl 32 `"32"', add
label define cn90a_fbig_nh_lbl 33 `"33"', add
label define cn90a_fbig_nh_lbl 34 `"34"', add
label define cn90a_fbig_nh_lbl 35 `"35"', add
label define cn90a_fbig_nh_lbl 36 `"36"', add
label define cn90a_fbig_nh_lbl 37 `"37"', add
label define cn90a_fbig_nh_lbl 38 `"38"', add
label define cn90a_fbig_nh_lbl 39 `"39"', add
label define cn90a_fbig_nh_lbl 40 `"40"', add
label define cn90a_fbig_nh_lbl 41 `"41"', add
label define cn90a_fbig_nh_lbl 42 `"42"', add
label define cn90a_fbig_nh_lbl 43 `"43"', add
label define cn90a_fbig_nh_lbl 44 `"44"', add
label define cn90a_fbig_nh_lbl 45 `"45"', add
label define cn90a_fbig_nh_lbl 46 `"46"', add
label define cn90a_fbig_nh_lbl 47 `"47"', add
label define cn90a_fbig_nh_lbl 48 `"48"', add
label define cn90a_fbig_nh_lbl 49 `"49"', add
label define cn90a_fbig_nh_lbl 50 `"50"', add
label define cn90a_fbig_nh_lbl 51 `"51"', add
label define cn90a_fbig_nh_lbl 52 `"52"', add
label define cn90a_fbig_nh_lbl 53 `"53"', add
label define cn90a_fbig_nh_lbl 54 `"54"', add
label define cn90a_fbig_nh_lbl 55 `"55"', add
label define cn90a_fbig_nh_lbl 56 `"56"', add
label define cn90a_fbig_nh_lbl 57 `"57"', add
label define cn90a_fbig_nh_lbl 58 `"58"', add
label define cn90a_fbig_nh_lbl 59 `"59"', add
label define cn90a_fbig_nh_lbl 60 `"60"', add
label define cn90a_fbig_nh_lbl 61 `"61"', add
label define cn90a_fbig_nh_lbl 62 `"62"', add
label define cn90a_fbig_nh_lbl 63 `"63"', add
label define cn90a_fbig_nh_lbl 64 `"64"', add
label define cn90a_fbig_nh_lbl 65 `"65"', add
label define cn90a_fbig_nh_lbl 66 `"66"', add
label define cn90a_fbig_nh_lbl 67 `"67"', add
label define cn90a_fbig_nh_lbl 68 `"68"', add
label define cn90a_fbig_nh_lbl 69 `"69"', add
label define cn90a_fbig_nh_lbl 70 `"70"', add
label define cn90a_fbig_nh_lbl 71 `"71"', add
label define cn90a_fbig_nh_lbl 72 `"72"', add
label define cn90a_fbig_nh_lbl 73 `"73"', add
label define cn90a_fbig_nh_lbl 74 `"74"', add
label define cn90a_fbig_nh_lbl 75 `"75"', add
label define cn90a_fbig_nh_lbl 76 `"76"', add
label define cn90a_fbig_nh_lbl 77 `"77"', add
label define cn90a_fbig_nh_lbl 78 `"78"', add
label define cn90a_fbig_nh_lbl 79 `"79"', add
label define cn90a_fbig_nh_lbl 80 `"80"', add
label define cn90a_fbig_nh_lbl 81 `"81"', add
label define cn90a_fbig_nh_lbl 82 `"82"', add
label define cn90a_fbig_nh_lbl 83 `"83"', add
label define cn90a_fbig_nh_lbl 84 `"84"', add
label define cn90a_fbig_nh_lbl 85 `"85"', add
label define cn90a_fbig_nh_lbl 86 `"86"', add
label define cn90a_fbig_nh_lbl 87 `"87"', add
label define cn90a_fbig_nh_lbl 88 `"88"', add
label define cn90a_fbig_nh_lbl 89 `"89"', add
label define cn90a_fbig_nh_lbl 90 `"90"', add
label define cn90a_fbig_nh_lbl 91 `"91"', add
label define cn90a_fbig_nh_lbl 92 `"92"', add
label define cn90a_fbig_nh_lbl 93 `"93"', add
label define cn90a_fbig_nh_lbl 94 `"94"', add
label define cn90a_fbig_nh_lbl 95 `"95"', add
label define cn90a_fbig_nh_lbl 96 `"96"', add
label define cn90a_fbig_nh_lbl 97 `"97"', add
label define cn90a_fbig_nh_lbl 98 `"98"', add
label define cn90a_fbig_nh_lbl 99 `"99"', add
label values cn90a_fbig_nh cn90a_fbig_nh_lbl

label define cn90a_prov_lbl 11 `"Beijing"'
label define cn90a_prov_lbl 12 `"Tianjin"', add
label define cn90a_prov_lbl 13 `"Hebei"', add
label define cn90a_prov_lbl 14 `"Shanxi"', add
label define cn90a_prov_lbl 15 `"Inner Mongolia"', add
label define cn90a_prov_lbl 21 `"Liaoning"', add
label define cn90a_prov_lbl 22 `"jilin"', add
label define cn90a_prov_lbl 23 `"Heilongjiang"', add
label define cn90a_prov_lbl 31 `"Shanghai"', add
label define cn90a_prov_lbl 32 `"Jiangsu"', add
label define cn90a_prov_lbl 33 `"Zhejiang"', add
label define cn90a_prov_lbl 34 `"Anhui"', add
label define cn90a_prov_lbl 35 `"Fujian"', add
label define cn90a_prov_lbl 36 `"Jiangxi"', add
label define cn90a_prov_lbl 37 `"Shandong"', add
label define cn90a_prov_lbl 41 `"Henan"', add
label define cn90a_prov_lbl 42 `"Hubei"', add
label define cn90a_prov_lbl 43 `"Hunan"', add
label define cn90a_prov_lbl 44 `"Guangdong"', add
label define cn90a_prov_lbl 45 `"Guangxi"', add
label define cn90a_prov_lbl 46 `"Hainan"', add
label define cn90a_prov_lbl 51 `"Sichuan"', add
label define cn90a_prov_lbl 52 `"Guizhou"', add
label define cn90a_prov_lbl 53 `"Yunnan"', add
label define cn90a_prov_lbl 54 `"Tibet"', add
label define cn90a_prov_lbl 61 `"Shaanxi"', add
label define cn90a_prov_lbl 62 `"Gansu"', add
label define cn90a_prov_lbl 63 `"Qinghai"', add
label define cn90a_prov_lbl 64 `"Ningxia"', add
label define cn90a_prov_lbl 65 `"Xinjiang"', add
label values cn90a_prov cn90a_prov_lbl

label define cn90a_prefect_lbl 1101 `"Beijing municipality (districts)"'
label define cn90a_prefect_lbl 1102 `"Beijing municipality (counties)"', add
label define cn90a_prefect_lbl 1201 `"Tianjin municipality (districts)"', add
label define cn90a_prefect_lbl 1202 `"Tianjin municipality (counties)"', add
label define cn90a_prefect_lbl 1301 `"Shijiazhuang city"', add
label define cn90a_prefect_lbl 1302 `"Tangshan city"', add
label define cn90a_prefect_lbl 1303 `"Qinhuangdao city"', add
label define cn90a_prefect_lbl 1304 `"Handan city"', add
label define cn90a_prefect_lbl 1305 `"Xingtai city"', add
label define cn90a_prefect_lbl 1306 `"Baoding city"', add
label define cn90a_prefect_lbl 1307 `"Zhangjiakou city"', add
label define cn90a_prefect_lbl 1308 `"Chengde city"', add
label define cn90a_prefect_lbl 1309 `"Cangzhou city"', add
label define cn90a_prefect_lbl 1310 `"Langfang city"', add
label define cn90a_prefect_lbl 1321 `"Handan prefecture"', add
label define cn90a_prefect_lbl 1322 `"Xingtai prefecture"', add
label define cn90a_prefect_lbl 1323 `"Shijiazhuang prefecture"', add
label define cn90a_prefect_lbl 1324 `"Baoding prefecture"', add
label define cn90a_prefect_lbl 1325 `"Zhangjiakou prefecture"', add
label define cn90a_prefect_lbl 1326 `"Chengde prefecture"', add
label define cn90a_prefect_lbl 1329 `"Cangzhou prefecture"', add
label define cn90a_prefect_lbl 1330 `"Hengshui prefecture"', add
label define cn90a_prefect_lbl 1401 `"Taiyuan city"', add
label define cn90a_prefect_lbl 1402 `"Datong city"', add
label define cn90a_prefect_lbl 1403 `"Yangquan city"', add
label define cn90a_prefect_lbl 1404 `"Changzhi city"', add
label define cn90a_prefect_lbl 1405 `"Jingcheng city"', add
label define cn90a_prefect_lbl 1406 `"Shuozhou city"', add
label define cn90a_prefect_lbl 1421 `"Yanbei prefecture"', add
label define cn90a_prefect_lbl 1422 `"Xinzhou prefecture"', add
label define cn90a_prefect_lbl 1423 `"Luliang prefecture"', add
label define cn90a_prefect_lbl 1424 `"Jinzhong prefecture"', add
label define cn90a_prefect_lbl 1426 `"Linfen prefecture"', add
label define cn90a_prefect_lbl 1427 `"Yuncheng prefecture"', add
label define cn90a_prefect_lbl 1501 `"Huhehaote city"', add
label define cn90a_prefect_lbl 1502 `"Baotou city"', add
label define cn90a_prefect_lbl 1503 `"Wuhai city"', add
label define cn90a_prefect_lbl 1504 `"Chifeng city"', add
label define cn90a_prefect_lbl 1521 `"Hulunbeier prefecture"', add
label define cn90a_prefect_lbl 1522 `"Xingan prefecture"', add
label define cn90a_prefect_lbl 1523 `"Zhelimu prefecture"', add
label define cn90a_prefect_lbl 1525 `"Xilinguole prefecture"', add
label define cn90a_prefect_lbl 1526 `"Wulanchabu prefecture"', add
label define cn90a_prefect_lbl 1527 `"Yikezhao prefecture"', add
label define cn90a_prefect_lbl 1528 `"Bayannaoer prefecture"', add
label define cn90a_prefect_lbl 1529 `"Alasha prefecture"', add
label define cn90a_prefect_lbl 2101 `"Shenyang city"', add
label define cn90a_prefect_lbl 2102 `"Dalian city"', add
label define cn90a_prefect_lbl 2103 `"Anshan city"', add
label define cn90a_prefect_lbl 2104 `"Fushun city"', add
label define cn90a_prefect_lbl 2105 `"Benxi city"', add
label define cn90a_prefect_lbl 2106 `"Dandong city"', add
label define cn90a_prefect_lbl 2107 `"Jinzhou city"', add
label define cn90a_prefect_lbl 2108 `"Yingkou city"', add
label define cn90a_prefect_lbl 2109 `"Fuxin city"', add
label define cn90a_prefect_lbl 2110 `"Liaoyang city"', add
label define cn90a_prefect_lbl 2111 `"Panjin city"', add
label define cn90a_prefect_lbl 2112 `"Tieling city"', add
label define cn90a_prefect_lbl 2113 `"Chaoyang city"', add
label define cn90a_prefect_lbl 2114 `"Jinxi city"', add
label define cn90a_prefect_lbl 2201 `"Changchun city"', add
label define cn90a_prefect_lbl 2202 `"Jilin city"', add
label define cn90a_prefect_lbl 2203 `"Siping city"', add
label define cn90a_prefect_lbl 2204 `"Liaoyuan city"', add
label define cn90a_prefect_lbl 2205 `"Tonghua city"', add
label define cn90a_prefect_lbl 2206 `"Hunjiang city"', add
label define cn90a_prefect_lbl 2223 `"Baicheng prefecture"', add
label define cn90a_prefect_lbl 2224 `"Yanbian Chaoxian prefecture"', add
label define cn90a_prefect_lbl 2301 `"Haerbin city"', add
label define cn90a_prefect_lbl 2302 `"Qiqihaer city"', add
label define cn90a_prefect_lbl 2303 `"Jixi city"', add
label define cn90a_prefect_lbl 2304 `"Hegang city"', add
label define cn90a_prefect_lbl 2305 `"Shuangyashan city"', add
label define cn90a_prefect_lbl 2306 `"Daqing city"', add
label define cn90a_prefect_lbl 2307 `"Yichun city"', add
label define cn90a_prefect_lbl 2308 `"Jiamusi city"', add
label define cn90a_prefect_lbl 2309 `"Qitaihe city"', add
label define cn90a_prefect_lbl 2310 `"Mudanjiang prefecture"', add
label define cn90a_prefect_lbl 2321 `"Songhuajiang prefecture"', add
label define cn90a_prefect_lbl 2323 `"Suihua prefecture"', add
label define cn90a_prefect_lbl 2326 `"Heihe prefecture"', add
label define cn90a_prefect_lbl 2327 `"Daxing\"anling city"', add
label define cn90a_prefect_lbl 2390 `"Acheng city"', add
label define cn90a_prefect_lbl 3101 `"Shanghai municipality (districts)"', add
label define cn90a_prefect_lbl 3102 `"Shanghai municipality (counties)"', add
label define cn90a_prefect_lbl 3201 `"Nanjing city"', add
label define cn90a_prefect_lbl 3202 `"Wuxi city"', add
label define cn90a_prefect_lbl 3203 `"Xuzhou city"', add
label define cn90a_prefect_lbl 3204 `"Changzhou city"', add
label define cn90a_prefect_lbl 3205 `"Suzhou city"', add
label define cn90a_prefect_lbl 3206 `"Nantong city"', add
label define cn90a_prefect_lbl 3207 `"Lianyungang city"', add
label define cn90a_prefect_lbl 3208 `"Huaiyin city"', add
label define cn90a_prefect_lbl 3209 `"Yancheng city"', add
label define cn90a_prefect_lbl 3210 `"Yangzhou city"', add
label define cn90a_prefect_lbl 3211 `"Zhenjiang city"', add
label define cn90a_prefect_lbl 3301 `"Hangzhou city"', add
label define cn90a_prefect_lbl 3302 `"Ningbo city"', add
label define cn90a_prefect_lbl 3303 `"Wenzhou city"', add
label define cn90a_prefect_lbl 3304 `"Jiaxing city"', add
label define cn90a_prefect_lbl 3305 `"Huzhou city"', add
label define cn90a_prefect_lbl 3306 `"Shaoxing city"', add
label define cn90a_prefect_lbl 3307 `"Jinhua city"', add
label define cn90a_prefect_lbl 3308 `"Quzhou city"', add
label define cn90a_prefect_lbl 3309 `"Zhoushan city"', add
label define cn90a_prefect_lbl 3325 `"Lishui prefecture"', add
label define cn90a_prefect_lbl 3326 `"Taizhou prefecture"', add
label define cn90a_prefect_lbl 3401 `"Hefei city"', add
label define cn90a_prefect_lbl 3402 `"Wuhu city"', add
label define cn90a_prefect_lbl 3403 `"Bengbu city"', add
label define cn90a_prefect_lbl 3404 `"Huainan city"', add
label define cn90a_prefect_lbl 3405 `"Maanshan city"', add
label define cn90a_prefect_lbl 3406 `"Huaibei city"', add
label define cn90a_prefect_lbl 3407 `"Tongling city"', add
label define cn90a_prefect_lbl 3408 `"Anqing city"', add
label define cn90a_prefect_lbl 3410 `"Huangshan city"', add
label define cn90a_prefect_lbl 3421 `"Fuyang prefecture"', add
label define cn90a_prefect_lbl 3422 `"Suxian prefecture"', add
label define cn90a_prefect_lbl 3423 `"Chuxian prefecture"', add
label define cn90a_prefect_lbl 3424 `"Luan prefecture"', add
label define cn90a_prefect_lbl 3425 `"Xuancheng prefecture"', add
label define cn90a_prefect_lbl 3426 `"Chaohu prefecture"', add
label define cn90a_prefect_lbl 3429 `"Chizhou prefecture"', add
label define cn90a_prefect_lbl 3501 `"Fuzhou city"', add
label define cn90a_prefect_lbl 3502 `"Xiamen city"', add
label define cn90a_prefect_lbl 3503 `"Putian city"', add
label define cn90a_prefect_lbl 3504 `"Sanming city"', add
label define cn90a_prefect_lbl 3505 `"Quanzhou city"', add
label define cn90a_prefect_lbl 3506 `"Zhangzhou city"', add
label define cn90a_prefect_lbl 3521 `"Jianyang prefecture"', add
label define cn90a_prefect_lbl 3522 `"Ningde prefecture"', add
label define cn90a_prefect_lbl 3526 `"Longyan prefecture"', add
label define cn90a_prefect_lbl 3601 `"Nanchang city"', add
label define cn90a_prefect_lbl 3602 `"Jingdezhen city"', add
label define cn90a_prefect_lbl 3603 `"Pingxiang city"', add
label define cn90a_prefect_lbl 3604 `"Jiujiang city"', add
label define cn90a_prefect_lbl 3605 `"Xinyu city"', add
label define cn90a_prefect_lbl 3606 `"Yingtan city"', add
label define cn90a_prefect_lbl 3621 `"Ganzhou prefecture"', add
label define cn90a_prefect_lbl 3622 `"Yichun prefecture"', add
label define cn90a_prefect_lbl 3623 `"Shangrao prefecture"', add
label define cn90a_prefect_lbl 3624 `"Ji\"an prefecture"', add
label define cn90a_prefect_lbl 3625 `"Fuzhou prefecture"', add
label define cn90a_prefect_lbl 3701 `"Jinan city"', add
label define cn90a_prefect_lbl 3702 `"Qingdao city"', add
label define cn90a_prefect_lbl 3703 `"Zibo city"', add
label define cn90a_prefect_lbl 3704 `"Zaozhuang city"', add
label define cn90a_prefect_lbl 3705 `"Dongying city"', add
label define cn90a_prefect_lbl 3706 `"Yantai city"', add
label define cn90a_prefect_lbl 3707 `"Weifang city"', add
label define cn90a_prefect_lbl 3708 `"Jining city"', add
label define cn90a_prefect_lbl 3709 `"Taian city"', add
label define cn90a_prefect_lbl 3710 `"Weihai city"', add
label define cn90a_prefect_lbl 3711 `"Rizhao city"', add
label define cn90a_prefect_lbl 3723 `"Huimin prefecture"', add
label define cn90a_prefect_lbl 3724 `"Dezhou prefecture"', add
label define cn90a_prefect_lbl 3725 `"Liaocheng prefecture"', add
label define cn90a_prefect_lbl 3728 `"Linyi prefecture"', add
label define cn90a_prefect_lbl 3729 `"Heze prefecture"', add
label define cn90a_prefect_lbl 4101 `"Zhengzhou city"', add
label define cn90a_prefect_lbl 4102 `"Kaifeng city"', add
label define cn90a_prefect_lbl 4103 `"Luoyang city"', add
label define cn90a_prefect_lbl 4104 `"Pingdingshan city"', add
label define cn90a_prefect_lbl 4105 `"Anyang city"', add
label define cn90a_prefect_lbl 4106 `"Hebi city"', add
label define cn90a_prefect_lbl 4107 `"Xinxiang city"', add
label define cn90a_prefect_lbl 4108 `"Jiaozuo city"', add
label define cn90a_prefect_lbl 4109 `"Puyang city"', add
label define cn90a_prefect_lbl 4110 `"Xuchang city"', add
label define cn90a_prefect_lbl 4111 `"Luohe city"', add
label define cn90a_prefect_lbl 4112 `"Sanmenxia city"', add
label define cn90a_prefect_lbl 4123 `"Shangqiu prefecture"', add
label define cn90a_prefect_lbl 4127 `"Zhoukou prefecture"', add
label define cn90a_prefect_lbl 4128 `"Zhumadian prefecture"', add
label define cn90a_prefect_lbl 4129 `"Nanyang prefecture"', add
label define cn90a_prefect_lbl 4130 `"Xinyang prefecture"', add
label define cn90a_prefect_lbl 4201 `"Wuhan city"', add
label define cn90a_prefect_lbl 4202 `"Huangshi city"', add
label define cn90a_prefect_lbl 4203 `"Shiyan city"', add
label define cn90a_prefect_lbl 4204 `"Shashi city"', add
label define cn90a_prefect_lbl 4205 `"Yichang city"', add
label define cn90a_prefect_lbl 4206 `"Xiangfan city"', add
label define cn90a_prefect_lbl 4207 `"Ezhou city"', add
label define cn90a_prefect_lbl 4208 `"Jingmen city"', add
label define cn90a_prefect_lbl 4221 `"Huanggang prefecture"', add
label define cn90a_prefect_lbl 4222 `"Xiaogan prefecture"', add
label define cn90a_prefect_lbl 4223 `"Xianning prefecture"', add
label define cn90a_prefect_lbl 4224 `"Jingzhou prefecture"', add
label define cn90a_prefect_lbl 4226 `"Yunyang prefecture"', add
label define cn90a_prefect_lbl 4227 `"Yichang prefecture"', add
label define cn90a_prefect_lbl 4228 `"Exi Tujia-Miao prefecture"', add
label define cn90a_prefect_lbl 4290 `"Hubei Province direct administrative area"', add
label define cn90a_prefect_lbl 4301 `"Changsha city"', add
label define cn90a_prefect_lbl 4302 `"Zhuzhou city"', add
label define cn90a_prefect_lbl 4303 `"Xiangtan city"', add
label define cn90a_prefect_lbl 4304 `"Hengyang city"', add
label define cn90a_prefect_lbl 4305 `"Shaoyang city"', add
label define cn90a_prefect_lbl 4306 `"Yueyang city"', add
label define cn90a_prefect_lbl 4307 `"Changde city"', add
label define cn90a_prefect_lbl 4308 `"Dayong city"', add
label define cn90a_prefect_lbl 4323 `"Yiyang prefecture"', add
label define cn90a_prefect_lbl 4325 `"Loudi prefecture"', add
label define cn90a_prefect_lbl 4328 `"Chenzhou prefecture"', add
label define cn90a_prefect_lbl 4329 `"Lingling prefecture"', add
label define cn90a_prefect_lbl 4330 `"Huaibei prefecture"', add
label define cn90a_prefect_lbl 4331 `"Xiangxi Tujia-Miao prefecture"', add
label define cn90a_prefect_lbl 4401 `"Guangzhou city"', add
label define cn90a_prefect_lbl 4402 `"Shaoguan city"', add
label define cn90a_prefect_lbl 4403 `"Shenzhen city"', add
label define cn90a_prefect_lbl 4404 `"Zhuhai city"', add
label define cn90a_prefect_lbl 4405 `"Shantou city"', add
label define cn90a_prefect_lbl 4406 `"Foshan city"', add
label define cn90a_prefect_lbl 4407 `"Jiangmen city"', add
label define cn90a_prefect_lbl 4408 `"Zhanjiang city"', add
label define cn90a_prefect_lbl 4409 `"Maoming city"', add
label define cn90a_prefect_lbl 4412 `"Zhaoqing city"', add
label define cn90a_prefect_lbl 4413 `"Huizhou city"', add
label define cn90a_prefect_lbl 4414 `"Meizhou city"', add
label define cn90a_prefect_lbl 4415 `"Shanwei city"', add
label define cn90a_prefect_lbl 4416 `"Heyuan city"', add
label define cn90a_prefect_lbl 4417 `"Yangjiang city"', add
label define cn90a_prefect_lbl 4418 `"Qingyuan city"', add
label define cn90a_prefect_lbl 4419 `"Dongguan city"', add
label define cn90a_prefect_lbl 4420 `"Zhongshan city"', add
label define cn90a_prefect_lbl 4490 `"Guangdong Province direct administrative area"', add
label define cn90a_prefect_lbl 4501 `"Nanning city"', add
label define cn90a_prefect_lbl 4502 `"Liuzhou city"', add
label define cn90a_prefect_lbl 4503 `"Guilin city"', add
label define cn90a_prefect_lbl 4504 `"Wuzhou city"', add
label define cn90a_prefect_lbl 4505 `"Beihai city"', add
label define cn90a_prefect_lbl 4521 `"Nanning prefecture"', add
label define cn90a_prefect_lbl 4522 `"Liuzhou prefecture"', add
label define cn90a_prefect_lbl 4523 `"Guilin prefecture"', add
label define cn90a_prefect_lbl 4524 `"Wuzhou prefecture"', add
label define cn90a_prefect_lbl 4525 `"Yulin prefecture"', add
label define cn90a_prefect_lbl 4526 `"Bose prefecture"', add
label define cn90a_prefect_lbl 4527 `"Hechi prefecture"', add
label define cn90a_prefect_lbl 4528 `"Qinzhou prefecture"', add
label define cn90a_prefect_lbl 4601 `"Haikou city"', add
label define cn90a_prefect_lbl 4602 `"Sanya city"', add
label define cn90a_prefect_lbl 4690 `"Hainan Province direct administrative area"', add
label define cn90a_prefect_lbl 5101 `"Chengdu city"', add
label define cn90a_prefect_lbl 5102 `"Chongqing city"', add
label define cn90a_prefect_lbl 5103 `"Zigong city"', add
label define cn90a_prefect_lbl 5104 `"Panzhihua city"', add
label define cn90a_prefect_lbl 5105 `"Luzhou city"', add
label define cn90a_prefect_lbl 5106 `"Deyang city"', add
label define cn90a_prefect_lbl 5107 `"Mianyang city"', add
label define cn90a_prefect_lbl 5108 `"Guangyuan city"', add
label define cn90a_prefect_lbl 5109 `"Suining city"', add
label define cn90a_prefect_lbl 5110 `"Neijiang city"', add
label define cn90a_prefect_lbl 5111 `"Leshan city"', add
label define cn90a_prefect_lbl 5122 `"Wanxian prefecture"', add
label define cn90a_prefect_lbl 5123 `"Fuling prefecture"', add
label define cn90a_prefect_lbl 5125 `"Yibin prefecture"', add
label define cn90a_prefect_lbl 5129 `"Nanchong prefecture"', add
label define cn90a_prefect_lbl 5130 `"Daxian prefecture"', add
label define cn90a_prefect_lbl 5131 `"Yaan prefecture"', add
label define cn90a_prefect_lbl 5132 `"Aba Zang-Qiang prefecture"', add
label define cn90a_prefect_lbl 5133 `"Ganzi Zang prefecture"', add
label define cn90a_prefect_lbl 5134 `"Liangshan Yi prefecture"', add
label define cn90a_prefect_lbl 5135 `"Qianjiang prefecture"', add
label define cn90a_prefect_lbl 5201 `"Guiyang city"', add
label define cn90a_prefect_lbl 5202 `"Liupanshui city"', add
label define cn90a_prefect_lbl 5221 `"Zunyi prefecture"', add
label define cn90a_prefect_lbl 5222 `"Tongren prefecture"', add
label define cn90a_prefect_lbl 5223 `"Jinxinan Buyi-Miao prefecture"', add
label define cn90a_prefect_lbl 5224 `"Bijie prefecture"', add
label define cn90a_prefect_lbl 5225 `"Anshun prefecture"', add
label define cn90a_prefect_lbl 5226 `"Qiangdongnan Miao-Dong prefecture"', add
label define cn90a_prefect_lbl 5227 `"Qiannan Buyi-Miao prefecture"', add
label define cn90a_prefect_lbl 5301 `"Kunming city"', add
label define cn90a_prefect_lbl 5302 `"Dongchuan city"', add
label define cn90a_prefect_lbl 5321 `"Zhaotong prefecture"', add
label define cn90a_prefect_lbl 5322 `"Qujing prefecture"', add
label define cn90a_prefect_lbl 5323 `"Chuxiong Yi prefecture"', add
label define cn90a_prefect_lbl 5324 `"Yuxi prefecture"', add
label define cn90a_prefect_lbl 5325 `"Honghe Hani-Yi prefecture"', add
label define cn90a_prefect_lbl 5326 `"Wenshan Zhuang-Miao prefecture"', add
label define cn90a_prefect_lbl 5327 `"Simao prefecture"', add
label define cn90a_prefect_lbl 5328 `"Xishuangpanna Dai prefecture"', add
label define cn90a_prefect_lbl 5329 `"Dali Bai prefecture"', add
label define cn90a_prefect_lbl 5330 `"Baoshan prefecture"', add
label define cn90a_prefect_lbl 5331 `"Dehong Dai-Jingpo prefecture"', add
label define cn90a_prefect_lbl 5332 `"Lijiang prefecture"', add
label define cn90a_prefect_lbl 5333 `"Nujiang Lili prefecture"', add
label define cn90a_prefect_lbl 5334 `"Diqing Zang prefecture"', add
label define cn90a_prefect_lbl 5335 `"Lincang prefecture"', add
label define cn90a_prefect_lbl 5401 `"Lasa city"', add
label define cn90a_prefect_lbl 5421 `"Changdu prefecture"', add
label define cn90a_prefect_lbl 5422 `"Shannan prefecture"', add
label define cn90a_prefect_lbl 5423 `"Rikaze prefecture"', add
label define cn90a_prefect_lbl 5424 `"Naqu prefecture"', add
label define cn90a_prefect_lbl 5425 `"Ali prefecture"', add
label define cn90a_prefect_lbl 5426 `"Linzhi prefecture"', add
label define cn90a_prefect_lbl 6101 `"Xi'an city"', add
label define cn90a_prefect_lbl 6102 `"Tongchuan city"', add
label define cn90a_prefect_lbl 6103 `"Baoji city"', add
label define cn90a_prefect_lbl 6104 `"Xianyang city"', add
label define cn90a_prefect_lbl 6121 `"Weinan prefecture"', add
label define cn90a_prefect_lbl 6123 `"Hanzhong prefecture"', add
label define cn90a_prefect_lbl 6124 `"Ankang prefecture"', add
label define cn90a_prefect_lbl 6125 `"Shangluo prefecture"', add
label define cn90a_prefect_lbl 6126 `"Yanan prefecture"', add
label define cn90a_prefect_lbl 6127 `"Yulin prefecture"', add
label define cn90a_prefect_lbl 6201 `"Lanzhou city"', add
label define cn90a_prefect_lbl 6202 `"Jiayuguan city"', add
label define cn90a_prefect_lbl 6203 `"Jinchang city"', add
label define cn90a_prefect_lbl 6204 `"Baiyin city"', add
label define cn90a_prefect_lbl 6205 `"Tianshui city"', add
label define cn90a_prefect_lbl 6221 `"Jiuquan prefecture"', add
label define cn90a_prefect_lbl 6222 `"Zhangye prefecture"', add
label define cn90a_prefect_lbl 6223 `"Wuwei prefecture"', add
label define cn90a_prefect_lbl 6224 `"Dingxi prefecture"', add
label define cn90a_prefect_lbl 6226 `"Wudu prefecture"', add
label define cn90a_prefect_lbl 6227 `"Pingliang prefecture"', add
label define cn90a_prefect_lbl 6228 `"Qingyang prefecture"', add
label define cn90a_prefect_lbl 6229 `"Linxia Hui prefecture"', add
label define cn90a_prefect_lbl 6230 `"Gannan Zang prefecture"', add
label define cn90a_prefect_lbl 6301 `"Xining city"', add
label define cn90a_prefect_lbl 6321 `"Haidong prefecture"', add
label define cn90a_prefect_lbl 6322 `"Haibei Zang prefecture"', add
label define cn90a_prefect_lbl 6323 `"Huangnan Zang prefecture"', add
label define cn90a_prefect_lbl 6325 `"Hainan Zang prefecture"', add
label define cn90a_prefect_lbl 6326 `"Guoluo Zang prefecture"', add
label define cn90a_prefect_lbl 6327 `"Yushu Zang prefecture"', add
label define cn90a_prefect_lbl 6328 `"Haixi Meng-Zang prefecture"', add
label define cn90a_prefect_lbl 6401 `"Yinchuan city"', add
label define cn90a_prefect_lbl 6402 `"Shizuishan city"', add
label define cn90a_prefect_lbl 6421 `"Yinnan prefecture"', add
label define cn90a_prefect_lbl 6422 `"Guyuan prefecture"', add
label define cn90a_prefect_lbl 6501 `"Wulumuqi city"', add
label define cn90a_prefect_lbl 6502 `"Kelamayi city"', add
label define cn90a_prefect_lbl 6521 `"Tulufan prefecture"', add
label define cn90a_prefect_lbl 6522 `"Hami prefecture"', add
label define cn90a_prefect_lbl 6523 `"Changji Hui prefecture"', add
label define cn90a_prefect_lbl 6527 `"Boretala Menggu prefecture"', add
label define cn90a_prefect_lbl 6528 `"Bayinguoleng Menggu prefecture"', add
label define cn90a_prefect_lbl 6529 `"Akesu prefecture"', add
label define cn90a_prefect_lbl 6530 `"Kezilesu Keerkezi prefecture"', add
label define cn90a_prefect_lbl 6531 `"Kashi prefecture"', add
label define cn90a_prefect_lbl 6532 `"Hetian prefecture"', add
label define cn90a_prefect_lbl 6540 `"Yili Hasake prefecture"', add
label define cn90a_prefect_lbl 6541 `"Yili prefecture"', add
label define cn90a_prefect_lbl 6542 `"Tacheng prefecture"', add
label define cn90a_prefect_lbl 6543 `"Aletai prefecture"', add
label define cn90a_prefect_lbl 6590 `"Shihezi prefecture"', add
label values cn90a_prefect cn90a_prefect_lbl

label define cn90a_hhtya_lbl 1 `"Agriculture"'
label define cn90a_hhtya_lbl 2 `"Non-agriculture"', add
label define cn90a_hhtya_lbl 9 `"Unknown"', add
label values cn90a_hhtya cn90a_hhtya_lbl

label define cn90a_gq_lbl 1 `"Domestic"'
label define cn90a_gq_lbl 2 `"Collective"', add
label values cn90a_gq cn90a_gq_lbl

label define momloc_lbl 000 `"No mother of this person present in the household"'
label values momloc momloc_lbl

label define poploc_lbl 000 `"No father of this person present in household"'
label values poploc poploc_lbl

label define sploc_lbl 000 `"No spouse of this person present in household"'
label values sploc sploc_lbl

label define parrule_lbl 00 `"No parent of person in household"'
label define parrule_lbl 11 `"Link to head or spouse, unambiguous"', add
label define parrule_lbl 12 `"Link to head or spouse, ambiguous"', add
label define parrule_lbl 21 `"Child-Grandchild, within empirical child cap"', add
label define parrule_lbl 22 `"Child-Grandchild, within constructed child cap"', add
label define parrule_lbl 23 `"Child-Grandchild, exceeds child cap"', add
label define parrule_lbl 31 `"Specified Other Relatives, within empirical child cap"', add
label define parrule_lbl 32 `"Specified Other Relatives, within constructed child cap"', add
label define parrule_lbl 33 `"Specified Other Relatives, exceeds child cap"', add
label define parrule_lbl 41 `"Other Relatives, within empirical child cap"', add
label define parrule_lbl 42 `"Other Relatives, within constructed child cap"', add
label define parrule_lbl 51 `"Non-Relatives, within empirical child cap"', add
label define parrule_lbl 52 `"Non-Relatives, within constructed child cap"', add
label values parrule parrule_lbl

label define sprule_lbl 00 `"No spouse present"'
label define sprule_lbl 01 `"Rule 1: strong relationship pairing, couple adjacent"', add
label define sprule_lbl 02 `"Rule 2: strong relationship pairing, couple not adjacent"', add
label define sprule_lbl 03 `"Rule 3: weak relationship pairing, couple adjacent"', add
label define sprule_lbl 04 `"Rule 4: weak relationship pairing, couple not adjacent"', add
label define sprule_lbl 05 `"Rule 5: weak consensual union pairings"', add
label define sprule_lbl 06 `"Rule 6: sample-specific rules (usually child-to-child)"', add
label values sprule sprule_lbl

label define cn90a_pernum_lbl 00 `"Household record"'
label define cn90a_pernum_lbl 01 `"1"', add
label define cn90a_pernum_lbl 02 `"2"', add
label define cn90a_pernum_lbl 03 `"3"', add
label define cn90a_pernum_lbl 04 `"4"', add
label define cn90a_pernum_lbl 05 `"5"', add
label define cn90a_pernum_lbl 06 `"6"', add
label define cn90a_pernum_lbl 07 `"7"', add
label define cn90a_pernum_lbl 08 `"8"', add
label define cn90a_pernum_lbl 09 `"9"', add
label define cn90a_pernum_lbl 10 `"10"', add
label define cn90a_pernum_lbl 11 `"11"', add
label define cn90a_pernum_lbl 12 `"12"', add
label define cn90a_pernum_lbl 13 `"13"', add
label define cn90a_pernum_lbl 14 `"14"', add
label define cn90a_pernum_lbl 15 `"15"', add
label define cn90a_pernum_lbl 16 `"16"', add
label define cn90a_pernum_lbl 17 `"17"', add
label define cn90a_pernum_lbl 18 `"18"', add
label define cn90a_pernum_lbl 19 `"19"', add
label define cn90a_pernum_lbl 20 `"20"', add
label define cn90a_pernum_lbl 21 `"21"', add
label define cn90a_pernum_lbl 22 `"22"', add
label define cn90a_pernum_lbl 23 `"23"', add
label define cn90a_pernum_lbl 24 `"24"', add
label define cn90a_pernum_lbl 25 `"25"', add
label define cn90a_pernum_lbl 26 `"26"', add
label define cn90a_pernum_lbl 27 `"27"', add
label define cn90a_pernum_lbl 28 `"28"', add
label define cn90a_pernum_lbl 29 `"29"', add
label define cn90a_pernum_lbl 30 `"30"', add
label values cn90a_pernum cn90a_pernum_lbl

label define cn90a_pernumo_lbl 01 `"1"'
label define cn90a_pernumo_lbl 02 `"2"', add
label define cn90a_pernumo_lbl 03 `"3"', add
label define cn90a_pernumo_lbl 04 `"4"', add
label define cn90a_pernumo_lbl 05 `"5"', add
label define cn90a_pernumo_lbl 06 `"6"', add
label define cn90a_pernumo_lbl 07 `"7"', add
label define cn90a_pernumo_lbl 08 `"8"', add
label define cn90a_pernumo_lbl 09 `"9"', add
label define cn90a_pernumo_lbl 10 `"10"', add
label define cn90a_pernumo_lbl 11 `"11"', add
label define cn90a_pernumo_lbl 12 `"12"', add
label define cn90a_pernumo_lbl 13 `"13"', add
label define cn90a_pernumo_lbl 14 `"14"', add
label define cn90a_pernumo_lbl 15 `"15"', add
label define cn90a_pernumo_lbl 16 `"16"', add
label define cn90a_pernumo_lbl 17 `"17"', add
label define cn90a_pernumo_lbl 18 `"18"', add
label define cn90a_pernumo_lbl 19 `"19"', add
label define cn90a_pernumo_lbl 20 `"20"', add
label define cn90a_pernumo_lbl 21 `"21"', add
label define cn90a_pernumo_lbl 22 `"22"', add
label define cn90a_pernumo_lbl 23 `"23"', add
label define cn90a_pernumo_lbl 24 `"24"', add
label define cn90a_pernumo_lbl 25 `"25"', add
label define cn90a_pernumo_lbl 26 `"26"', add
label define cn90a_pernumo_lbl 27 `"27"', add
label define cn90a_pernumo_lbl 28 `"28"', add
label define cn90a_pernumo_lbl 29 `"29"', add
label define cn90a_pernumo_lbl 30 `"30"', add
label define cn90a_pernumo_lbl 31 `"31"', add
label define cn90a_pernumo_lbl 32 `"32"', add
label define cn90a_pernumo_lbl 33 `"33"', add
label define cn90a_pernumo_lbl 34 `"34"', add
label define cn90a_pernumo_lbl 35 `"35"', add
label define cn90a_pernumo_lbl 36 `"36"', add
label define cn90a_pernumo_lbl 37 `"37"', add
label define cn90a_pernumo_lbl 38 `"38"', add
label define cn90a_pernumo_lbl 39 `"39"', add
label define cn90a_pernumo_lbl 40 `"40"', add
label define cn90a_pernumo_lbl 41 `"41"', add
label define cn90a_pernumo_lbl 42 `"42"', add
label define cn90a_pernumo_lbl 43 `"43"', add
label define cn90a_pernumo_lbl 44 `"44"', add
label define cn90a_pernumo_lbl 45 `"45"', add
label define cn90a_pernumo_lbl 46 `"46"', add
label define cn90a_pernumo_lbl 47 `"47"', add
label define cn90a_pernumo_lbl 48 `"48"', add
label define cn90a_pernumo_lbl 49 `"49"', add
label define cn90a_pernumo_lbl 50 `"50"', add
label define cn90a_pernumo_lbl 51 `"51"', add
label define cn90a_pernumo_lbl 52 `"52"', add
label define cn90a_pernumo_lbl 53 `"53"', add
label define cn90a_pernumo_lbl 54 `"54"', add
label define cn90a_pernumo_lbl 55 `"55"', add
label define cn90a_pernumo_lbl 56 `"56"', add
label define cn90a_pernumo_lbl 57 `"57"', add
label define cn90a_pernumo_lbl 58 `"58"', add
label define cn90a_pernumo_lbl 59 `"59"', add
label define cn90a_pernumo_lbl 60 `"60"', add
label define cn90a_pernumo_lbl 61 `"61"', add
label define cn90a_pernumo_lbl 62 `"62"', add
label define cn90a_pernumo_lbl 63 `"63"', add
label define cn90a_pernumo_lbl 64 `"64"', add
label define cn90a_pernumo_lbl 65 `"65"', add
label define cn90a_pernumo_lbl 66 `"66"', add
label define cn90a_pernumo_lbl 67 `"67"', add
label define cn90a_pernumo_lbl 68 `"68"', add
label define cn90a_pernumo_lbl 69 `"69"', add
label define cn90a_pernumo_lbl 70 `"70"', add
label define cn90a_pernumo_lbl 71 `"71"', add
label define cn90a_pernumo_lbl 72 `"72"', add
label define cn90a_pernumo_lbl 73 `"73"', add
label define cn90a_pernumo_lbl 74 `"74"', add
label define cn90a_pernumo_lbl 75 `"75"', add
label define cn90a_pernumo_lbl 76 `"76"', add
label define cn90a_pernumo_lbl 77 `"77"', add
label define cn90a_pernumo_lbl 78 `"78"', add
label define cn90a_pernumo_lbl 79 `"79"', add
label define cn90a_pernumo_lbl 80 `"80"', add
label define cn90a_pernumo_lbl 81 `"81"', add
label define cn90a_pernumo_lbl 82 `"82"', add
label define cn90a_pernumo_lbl 83 `"83"', add
label define cn90a_pernumo_lbl 84 `"84"', add
label define cn90a_pernumo_lbl 85 `"85"', add
label define cn90a_pernumo_lbl 86 `"86"', add
label define cn90a_pernumo_lbl 87 `"87"', add
label define cn90a_pernumo_lbl 88 `"88"', add
label define cn90a_pernumo_lbl 89 `"89"', add
label define cn90a_pernumo_lbl 90 `"90"', add
label define cn90a_pernumo_lbl 91 `"91"', add
label define cn90a_pernumo_lbl 92 `"92"', add
label define cn90a_pernumo_lbl 93 `"93"', add
label define cn90a_pernumo_lbl 94 `"94"', add
label define cn90a_pernumo_lbl 95 `"95"', add
label define cn90a_pernumo_lbl 96 `"96"', add
label define cn90a_pernumo_lbl 97 `"97"', add
label define cn90a_pernumo_lbl 98 `"98"', add
label define cn90a_pernumo_lbl 99 `"99+"', add
label values cn90a_pernumo cn90a_pernumo_lbl

label define cn90a_relate_lbl 1 `"Head of household"'
label define cn90a_relate_lbl 2 `"Spouse"', add
label define cn90a_relate_lbl 3 `"Child"', add
label define cn90a_relate_lbl 4 `"Grandchild"', add
label define cn90a_relate_lbl 5 `"Parent"', add
label define cn90a_relate_lbl 6 `"Grandparent"', add
label define cn90a_relate_lbl 7 `"Other relative"', add
label define cn90a_relate_lbl 8 `"Non-relative"', add
label values cn90a_relate cn90a_relate_lbl

label define cn90a_sex_lbl 1 `"Male"'
label define cn90a_sex_lbl 2 `"Female"', add
label values cn90a_sex cn90a_sex_lbl

label define cn90a_birthy_lbl 870 `"1870"'
label define cn90a_birthy_lbl 875 `"1875"', add
label define cn90a_birthy_lbl 879 `"1879"', add
label define cn90a_birthy_lbl 880 `"1880"', add
label define cn90a_birthy_lbl 882 `"1882"', add
label define cn90a_birthy_lbl 883 `"1883"', add
label define cn90a_birthy_lbl 884 `"1884"', add
label define cn90a_birthy_lbl 885 `"1885"', add
label define cn90a_birthy_lbl 886 `"1886"', add
label define cn90a_birthy_lbl 887 `"1887"', add
label define cn90a_birthy_lbl 888 `"1888"', add
label define cn90a_birthy_lbl 889 `"1889"', add
label define cn90a_birthy_lbl 890 `"1890"', add
label define cn90a_birthy_lbl 891 `"1891"', add
label define cn90a_birthy_lbl 892 `"1892"', add
label define cn90a_birthy_lbl 893 `"1893"', add
label define cn90a_birthy_lbl 894 `"1894"', add
label define cn90a_birthy_lbl 895 `"1895"', add
label define cn90a_birthy_lbl 896 `"1896"', add
label define cn90a_birthy_lbl 897 `"1897"', add
label define cn90a_birthy_lbl 898 `"1898"', add
label define cn90a_birthy_lbl 899 `"1899"', add
label define cn90a_birthy_lbl 900 `"1900"', add
label define cn90a_birthy_lbl 901 `"1901"', add
label define cn90a_birthy_lbl 902 `"1902"', add
label define cn90a_birthy_lbl 903 `"1903"', add
label define cn90a_birthy_lbl 904 `"1904"', add
label define cn90a_birthy_lbl 905 `"1905"', add
label define cn90a_birthy_lbl 906 `"1906"', add
label define cn90a_birthy_lbl 907 `"1907"', add
label define cn90a_birthy_lbl 908 `"1908"', add
label define cn90a_birthy_lbl 909 `"1909"', add
label define cn90a_birthy_lbl 910 `"1910"', add
label define cn90a_birthy_lbl 911 `"1911"', add
label define cn90a_birthy_lbl 912 `"1912"', add
label define cn90a_birthy_lbl 913 `"1913"', add
label define cn90a_birthy_lbl 914 `"1914"', add
label define cn90a_birthy_lbl 915 `"1915"', add
label define cn90a_birthy_lbl 916 `"1916"', add
label define cn90a_birthy_lbl 917 `"1917"', add
label define cn90a_birthy_lbl 918 `"1918"', add
label define cn90a_birthy_lbl 919 `"1919"', add
label define cn90a_birthy_lbl 920 `"1920"', add
label define cn90a_birthy_lbl 921 `"1921"', add
label define cn90a_birthy_lbl 922 `"1922"', add
label define cn90a_birthy_lbl 923 `"1923"', add
label define cn90a_birthy_lbl 924 `"1924"', add
label define cn90a_birthy_lbl 925 `"1925"', add
label define cn90a_birthy_lbl 926 `"1926"', add
label define cn90a_birthy_lbl 927 `"1927"', add
label define cn90a_birthy_lbl 928 `"1928"', add
label define cn90a_birthy_lbl 929 `"1929"', add
label define cn90a_birthy_lbl 930 `"1930"', add
label define cn90a_birthy_lbl 931 `"1931"', add
label define cn90a_birthy_lbl 932 `"1932"', add
label define cn90a_birthy_lbl 933 `"1933"', add
label define cn90a_birthy_lbl 934 `"1934"', add
label define cn90a_birthy_lbl 935 `"1935"', add
label define cn90a_birthy_lbl 936 `"1936"', add
label define cn90a_birthy_lbl 937 `"1937"', add
label define cn90a_birthy_lbl 938 `"1938"', add
label define cn90a_birthy_lbl 939 `"1939"', add
label define cn90a_birthy_lbl 940 `"1940"', add
label define cn90a_birthy_lbl 941 `"1941"', add
label define cn90a_birthy_lbl 942 `"1942"', add
label define cn90a_birthy_lbl 943 `"1943"', add
label define cn90a_birthy_lbl 944 `"1944"', add
label define cn90a_birthy_lbl 945 `"1945"', add
label define cn90a_birthy_lbl 946 `"1946"', add
label define cn90a_birthy_lbl 947 `"1947"', add
label define cn90a_birthy_lbl 948 `"1948"', add
label define cn90a_birthy_lbl 949 `"1949"', add
label define cn90a_birthy_lbl 950 `"1950"', add
label define cn90a_birthy_lbl 951 `"1951"', add
label define cn90a_birthy_lbl 952 `"1952"', add
label define cn90a_birthy_lbl 953 `"1953"', add
label define cn90a_birthy_lbl 954 `"1954"', add
label define cn90a_birthy_lbl 955 `"1955"', add
label define cn90a_birthy_lbl 956 `"1956"', add
label define cn90a_birthy_lbl 957 `"1957"', add
label define cn90a_birthy_lbl 958 `"1958"', add
label define cn90a_birthy_lbl 959 `"1959"', add
label define cn90a_birthy_lbl 960 `"1960"', add
label define cn90a_birthy_lbl 961 `"1961"', add
label define cn90a_birthy_lbl 962 `"1962"', add
label define cn90a_birthy_lbl 963 `"1963"', add
label define cn90a_birthy_lbl 964 `"1964"', add
label define cn90a_birthy_lbl 965 `"1965"', add
label define cn90a_birthy_lbl 966 `"1966"', add
label define cn90a_birthy_lbl 967 `"1967"', add
label define cn90a_birthy_lbl 968 `"1968"', add
label define cn90a_birthy_lbl 969 `"1969"', add
label define cn90a_birthy_lbl 970 `"1970"', add
label define cn90a_birthy_lbl 971 `"1971"', add
label define cn90a_birthy_lbl 972 `"1972"', add
label define cn90a_birthy_lbl 973 `"1973"', add
label define cn90a_birthy_lbl 974 `"1974"', add
label define cn90a_birthy_lbl 975 `"1975"', add
label define cn90a_birthy_lbl 976 `"1976"', add
label define cn90a_birthy_lbl 977 `"1977"', add
label define cn90a_birthy_lbl 978 `"1978"', add
label define cn90a_birthy_lbl 979 `"1979"', add
label define cn90a_birthy_lbl 980 `"1980"', add
label define cn90a_birthy_lbl 981 `"1981"', add
label define cn90a_birthy_lbl 982 `"1982"', add
label define cn90a_birthy_lbl 983 `"1983"', add
label define cn90a_birthy_lbl 984 `"1984"', add
label define cn90a_birthy_lbl 985 `"1985"', add
label define cn90a_birthy_lbl 986 `"1986"', add
label define cn90a_birthy_lbl 987 `"1987"', add
label define cn90a_birthy_lbl 988 `"1988"', add
label define cn90a_birthy_lbl 989 `"1989"', add
label define cn90a_birthy_lbl 990 `"1990"', add
label values cn90a_birthy cn90a_birthy_lbl

label define cn90a_birthm_lbl 01 `"1"'
label define cn90a_birthm_lbl 02 `"2"', add
label define cn90a_birthm_lbl 03 `"3"', add
label define cn90a_birthm_lbl 04 `"4"', add
label define cn90a_birthm_lbl 05 `"5"', add
label define cn90a_birthm_lbl 06 `"6"', add
label define cn90a_birthm_lbl 07 `"7"', add
label define cn90a_birthm_lbl 08 `"8"', add
label define cn90a_birthm_lbl 09 `"9"', add
label define cn90a_birthm_lbl 10 `"10"', add
label define cn90a_birthm_lbl 11 `"11"', add
label define cn90a_birthm_lbl 12 `"12"', add
label values cn90a_birthm cn90a_birthm_lbl

label define cn90a_nation_lbl 01 `"Han"'
label define cn90a_nation_lbl 02 `"Mongolian"', add
label define cn90a_nation_lbl 03 `"Hui"', add
label define cn90a_nation_lbl 04 `"Tibetan"', add
label define cn90a_nation_lbl 05 `"Uygur"', add
label define cn90a_nation_lbl 06 `"Miao"', add
label define cn90a_nation_lbl 07 `"Yi"', add
label define cn90a_nation_lbl 08 `"Zhuang"', add
label define cn90a_nation_lbl 09 `"Bouyei"', add
label define cn90a_nation_lbl 10 `"Korean"', add
label define cn90a_nation_lbl 11 `"Man"', add
label define cn90a_nation_lbl 12 `"Dong"', add
label define cn90a_nation_lbl 13 `"Yao"', add
label define cn90a_nation_lbl 14 `"Bai"', add
label define cn90a_nation_lbl 15 `"Tujia"', add
label define cn90a_nation_lbl 16 `"Hani"', add
label define cn90a_nation_lbl 17 `"Kazak"', add
label define cn90a_nation_lbl 18 `"Dai"', add
label define cn90a_nation_lbl 19 `"Li"', add
label define cn90a_nation_lbl 20 `"Lisu"', add
label define cn90a_nation_lbl 21 `"Va"', add
label define cn90a_nation_lbl 22 `"She"', add
label define cn90a_nation_lbl 23 `"Gaoshan"', add
label define cn90a_nation_lbl 24 `"Lahu"', add
label define cn90a_nation_lbl 25 `"Shui"', add
label define cn90a_nation_lbl 26 `"Dongxiang"', add
label define cn90a_nation_lbl 27 `"Naxi"', add
label define cn90a_nation_lbl 28 `"Jingpo"', add
label define cn90a_nation_lbl 29 `"Kirgiz"', add
label define cn90a_nation_lbl 30 `"Tu"', add
label define cn90a_nation_lbl 31 `"Daur"', add
label define cn90a_nation_lbl 32 `"Mulam"', add
label define cn90a_nation_lbl 33 `"Qiang"', add
label define cn90a_nation_lbl 34 `"Blang"', add
label define cn90a_nation_lbl 35 `"Salar"', add
label define cn90a_nation_lbl 36 `"Maonan"', add
label define cn90a_nation_lbl 37 `"Gelo"', add
label define cn90a_nation_lbl 38 `"Xibe"', add
label define cn90a_nation_lbl 39 `"Achang"', add
label define cn90a_nation_lbl 40 `"Primi"', add
label define cn90a_nation_lbl 41 `"Tajik"', add
label define cn90a_nation_lbl 42 `"Nu"', add
label define cn90a_nation_lbl 43 `"Uzbek"', add
label define cn90a_nation_lbl 44 `"Russian"', add
label define cn90a_nation_lbl 45 `"Ewenki"', add
label define cn90a_nation_lbl 46 `"Deang"', add
label define cn90a_nation_lbl 47 `"Baoan"', add
label define cn90a_nation_lbl 48 `"Yugur"', add
label define cn90a_nation_lbl 49 `"Jing"', add
label define cn90a_nation_lbl 50 `"Tatar"', add
label define cn90a_nation_lbl 51 `"Derung"', add
label define cn90a_nation_lbl 52 `"Oroqen"', add
label define cn90a_nation_lbl 53 `"Hezhen"', add
label define cn90a_nation_lbl 54 `"Monba"', add
label define cn90a_nation_lbl 55 `"Lhoba"', add
label define cn90a_nation_lbl 56 `"Jino"', add
label define cn90a_nation_lbl 97 `"Other unidentified"', add
label define cn90a_nation_lbl 98 `"Naturalized foreigners"', add
label values cn90a_nation cn90a_nation_lbl

label define cn90a_regist_lbl 1 `"Residing and registered here"'
label define cn90a_regist_lbl 2 `"Residing here over 1 year, but registered elsewhere"', add
label define cn90a_regist_lbl 3 `"Residing here less than 1 year, absent from the registration place 1 year or more"', add
label define cn90a_regist_lbl 4 `"Living here with registration unsettled"', add
label define cn90a_regist_lbl 5 `"Used to reside here; is now abroad with no local registration"', add
label values cn90a_regist cn90a_regist_lbl

label define cn90a_res85_lbl 00 `"NIU (not in universe)"'
label define cn90a_res85_lbl 01 `"Local county/city"', add
label define cn90a_res85_lbl 02 `"Other county/city within the same province"', add
label define cn90a_res85_lbl 11 `"Beijing"', add
label define cn90a_res85_lbl 12 `"Tianjin"', add
label define cn90a_res85_lbl 13 `"Hebei"', add
label define cn90a_res85_lbl 14 `"Shanxi"', add
label define cn90a_res85_lbl 15 `"Inner Mongolia"', add
label define cn90a_res85_lbl 21 `"Liaonin"', add
label define cn90a_res85_lbl 22 `"jilin"', add
label define cn90a_res85_lbl 23 `"Heilongjiang"', add
label define cn90a_res85_lbl 31 `"Shanghai"', add
label define cn90a_res85_lbl 32 `"Jiangsu"', add
label define cn90a_res85_lbl 33 `"Zhejiang"', add
label define cn90a_res85_lbl 34 `"Anhui"', add
label define cn90a_res85_lbl 35 `"Fujian"', add
label define cn90a_res85_lbl 36 `"Jiangxi"', add
label define cn90a_res85_lbl 37 `"Shandong"', add
label define cn90a_res85_lbl 41 `"Henan"', add
label define cn90a_res85_lbl 42 `"Hubei"', add
label define cn90a_res85_lbl 43 `"Hunan"', add
label define cn90a_res85_lbl 44 `"Guangdong"', add
label define cn90a_res85_lbl 45 `"Guangxi"', add
label define cn90a_res85_lbl 46 `"Hainan"', add
label define cn90a_res85_lbl 51 `"Sichuan"', add
label define cn90a_res85_lbl 52 `"Guizhou"', add
label define cn90a_res85_lbl 53 `"Yunnan"', add
label define cn90a_res85_lbl 54 `"Tibet"', add
label define cn90a_res85_lbl 61 `"Shaanxi"', add
label define cn90a_res85_lbl 62 `"Gansu"', add
label define cn90a_res85_lbl 63 `"Qinghai"', add
label define cn90a_res85_lbl 64 `"Ningxia"', add
label define cn90a_res85_lbl 65 `"Xinjiang"', add
label define cn90a_res85_lbl 71 `"Taiwan"', add
label define cn90a_res85_lbl 81 `"Hong Kong"', add
label define cn90a_res85_lbl 82 `"Macao"', add
label define cn90a_res85_lbl 91 `"Other countries"', add
label values cn90a_res85 cn90a_res85_lbl

label define cn90a_res85t_lbl 0 `"NIU (not in universe)"'
label define cn90a_res85t_lbl 1 `"City"', add
label define cn90a_res85t_lbl 2 `"Town"', add
label define cn90a_res85t_lbl 3 `"County"', add
label values cn90a_res85t cn90a_res85t_lbl

label define cn90a_migreas_lbl 0 `"NIU (not in universe)"'
label define cn90a_migreas_lbl 1 `"Job relocation"', add
label define cn90a_migreas_lbl 2 `"Job assignment after completing school"', add
label define cn90a_migreas_lbl 3 `"Work/business"', add
label define cn90a_migreas_lbl 4 `"Study/training"', add
label define cn90a_migreas_lbl 5 `"Visiting friends or relatives"', add
label define cn90a_migreas_lbl 6 `"Retirement"', add
label define cn90a_migreas_lbl 7 `"Move with family"', add
label define cn90a_migreas_lbl 8 `"Marriage"', add
label define cn90a_migreas_lbl 9 `"Other"', add
label values cn90a_migreas cn90a_migreas_lbl

label define cn90a_edlev1_lbl 0 `"NIU (not in universe)"'
label define cn90a_edlev1_lbl 1 `"Illiterate or semi-literate"', add
label define cn90a_edlev1_lbl 2 `"Primary school"', add
label define cn90a_edlev1_lbl 3 `"Junior middle school"', add
label define cn90a_edlev1_lbl 4 `"Academic secondary school"', add
label define cn90a_edlev1_lbl 5 `"Technical secondary school"', add
label define cn90a_edlev1_lbl 6 `"Associate (two year college)"', add
label define cn90a_edlev1_lbl 7 `"College"', add
label values cn90a_edlev1 cn90a_edlev1_lbl

label define cn90a_edlev2_lbl 0 `"NIU (not in universe)"'
label define cn90a_edlev2_lbl 1 `"Attending"', add
label define cn90a_edlev2_lbl 2 `"Graduated"', add
label define cn90a_edlev2_lbl 3 `"Did not graduate"', add
label define cn90a_edlev2_lbl 4 `"Others"', add
label values cn90a_edlev2 cn90a_edlev2_lbl

label define cn90a_edattan_lbl 00 `"NIU (not in universe)"'
label define cn90a_edattan_lbl 10 `"Illiterate or semi-literate"', add
label define cn90a_edattan_lbl 21 `"Primary school, attending"', add
label define cn90a_edattan_lbl 22 `"Primary school, completed"', add
label define cn90a_edattan_lbl 23 `"Primary school, did not graduate"', add
label define cn90a_edattan_lbl 24 `"Primary school, other"', add
label define cn90a_edattan_lbl 31 `"Junior middle school, attending"', add
label define cn90a_edattan_lbl 32 `"Junior middle school, completed"', add
label define cn90a_edattan_lbl 33 `"Junior middle school, did not graduate"', add
label define cn90a_edattan_lbl 34 `"Junior middle school, other"', add
label define cn90a_edattan_lbl 41 `"Academic secondary school, attending"', add
label define cn90a_edattan_lbl 42 `"Academic secondary school, completed"', add
label define cn90a_edattan_lbl 43 `"Academic secondary school, did not graduate"', add
label define cn90a_edattan_lbl 44 `"Academic secondary school, other"', add
label define cn90a_edattan_lbl 51 `"Technical secondary school, attending"', add
label define cn90a_edattan_lbl 52 `"Technical secondary school, completed"', add
label define cn90a_edattan_lbl 53 `"Technical secondary school, did not graduate"', add
label define cn90a_edattan_lbl 54 `"Technical secondary school, other"', add
label define cn90a_edattan_lbl 61 `"Associate (two year college), attending"', add
label define cn90a_edattan_lbl 62 `"Associate (two year college), completed"', add
label define cn90a_edattan_lbl 63 `"Associate (two year college), did not graduate"', add
label define cn90a_edattan_lbl 64 `"Associate (two year college), other"', add
label define cn90a_edattan_lbl 71 `"College, attending"', add
label define cn90a_edattan_lbl 72 `"College, completed"', add
label define cn90a_edattan_lbl 73 `"College, did not graduate"', add
label define cn90a_edattan_lbl 74 `"College, other"', add
label values cn90a_edattan cn90a_edattan_lbl

label define cn90a_ind_lbl 000 `"NIU (not in universe)"'
label define cn90a_ind_lbl 011 `"Food crops"', add
label define cn90a_ind_lbl 019 `"Other agricultural sectors"', add
label define cn90a_ind_lbl 030 `"Forestry"', add
label define cn90a_ind_lbl 041 `"Livestock raising"', add
label define cn90a_ind_lbl 042 `"Poultry raising"', add
label define cn90a_ind_lbl 049 `"Small animal raising, hunting, and others"', add
label define cn90a_ind_lbl 051 `"Aquatic animal and plant raising"', add
label define cn90a_ind_lbl 052 `"Fishing for aquatic animals and plants"', add
label define cn90a_ind_lbl 060 `"Electric power, gas, and pipewater supply and production"', add
label define cn90a_ind_lbl 071 `"Agricultural services"', add
label define cn90a_ind_lbl 072 `"Forestry services"', add
label define cn90a_ind_lbl 073 `"Livestock raising services"', add
label define cn90a_ind_lbl 074 `"Fishery services"', add
label define cn90a_ind_lbl 079 `"Other agricultural, forestry, livestock raising, fishering, and electric power services"', add
label define cn90a_ind_lbl 081 `"Coal mining"', add
label define cn90a_ind_lbl 082 `"Coal dressing"', add
label define cn90a_ind_lbl 091 `"Petroleum extraction"', add
label define cn90a_ind_lbl 092 `"Natural gas extraction"', add
label define cn90a_ind_lbl 093 `"Oil shale extraction"', add
label define cn90a_ind_lbl 101 `"Iron mining"', add
label define cn90a_ind_lbl 102 `"Manganese ore mining"', add
label define cn90a_ind_lbl 103 `"Chrome mining"', add
label define cn90a_ind_lbl 111 `"Heavy non-ferrous metals mining"', add
label define cn90a_ind_lbl 113 `"Light non-ferrous metals mining"', add
label define cn90a_ind_lbl 115 `"Precious metal mining"', add
label define cn90a_ind_lbl 116 `"Rare metal mining and rare earth mining"', add
label define cn90a_ind_lbl 121 `"Earth, sand, and stone mining"', add
label define cn90a_ind_lbl 122 `"Chemical minerals mining"', add
label define cn90a_ind_lbl 129 `"Other earth, sand, and stone mining"', add
label define cn90a_ind_lbl 131 `"Sea salt mining"', add
label define cn90a_ind_lbl 132 `"Lake salt mining"', add
label define cn90a_ind_lbl 133 `"Well salt mining"', add
label define cn90a_ind_lbl 134 `"Rock salt mining"', add
label define cn90a_ind_lbl 140 `"Other mining sectors"', add
label define cn90a_ind_lbl 151 `"Timber logging and transport"', add
label define cn90a_ind_lbl 152 `"Bamboo logging and transport"', add
label define cn90a_ind_lbl 160 `"Production and supply of pipewater"', add
label define cn90a_ind_lbl 171 `"Grain processing"', add
label define cn90a_ind_lbl 172 `"Vegetable oil processing"', add
label define cn90a_ind_lbl 173 `"Pastry and candy processing"', add
label define cn90a_ind_lbl 174 `"Sugar processing"', add
label define cn90a_ind_lbl 175 `"Animal slaughtering and meat processing"', add
label define cn90a_ind_lbl 176 `"Egg product processing"', add
label define cn90a_ind_lbl 177 `"Dairy product processing"', add
label define cn90a_ind_lbl 178 `"Aquatic animal and plant products processing"', add
label define cn90a_ind_lbl 179 `"Canned food processing"', add
label define cn90a_ind_lbl 180 `"Salt processing"', add
label define cn90a_ind_lbl 181 `"Food additives production"', add
label define cn90a_ind_lbl 182 `"Seasoning production"', add
label define cn90a_ind_lbl 189 `"Production of other kinds of food"', add
label define cn90a_ind_lbl 191 `"Alcoholic beverage production"', add
label define cn90a_ind_lbl 192 `"Alcohol production"', add
label define cn90a_ind_lbl 193 `"Soft beverage production"', add
label define cn90a_ind_lbl 194 `"Tea processing"', add
label define cn90a_ind_lbl 199 `"Other beverage production"', add
label define cn90a_ind_lbl 201 `"Tobacco redrying"', add
label define cn90a_ind_lbl 202 `"Cigarette production"', add
label define cn90a_ind_lbl 209 `"Other tobacco processing sectors"', add
label define cn90a_ind_lbl 211 `"Mixed feed processing"', add
label define cn90a_ind_lbl 212 `"Protein feed processing"', add
label define cn90a_ind_lbl 213 `"Feed additives processing"', add
label define cn90a_ind_lbl 219 `"Other feed processing"', add
label define cn90a_ind_lbl 221 `"Row fiber material processing"', add
label define cn90a_ind_lbl 222 `"Cotton spinning and weaving"', add
label define cn90a_ind_lbl 224 `"Wool spinning and weaving"', add
label define cn90a_ind_lbl 226 `"Flax spinning and weaving"', add
label define cn90a_ind_lbl 227 `"Silk textile processing"', add
label define cn90a_ind_lbl 228 `"Knit fabric processing"', add
label define cn90a_ind_lbl 229 `"Other textile processing"', add
label define cn90a_ind_lbl 241 `"Garment tailoring"', add
label define cn90a_ind_lbl 243 `"Headwear tailoring"', add
label define cn90a_ind_lbl 245 `"Shoes making"', add
label define cn90a_ind_lbl 249 `"Repair services and others"', add
label define cn90a_ind_lbl 251 `"Hide tanning"', add
label define cn90a_ind_lbl 252 `"Leather products"', add
label define cn90a_ind_lbl 254 `"Fur tanning and fur products"', add
label define cn90a_ind_lbl 261 `"Lumber milling"', add
label define cn90a_ind_lbl 262 `"Panel products"', add
label define cn90a_ind_lbl 263 `"Wood composition products"', add
label define cn90a_ind_lbl 264 `"Bamboo, rattan, and grass products"', add
label define cn90a_ind_lbl 271 `"Wood furniture industry"', add
label define cn90a_ind_lbl 273 `"Bamboo and rattan furniture industry"', add
label define cn90a_ind_lbl 274 `"Metal furniture industry"', add
label define cn90a_ind_lbl 275 `"Plastic furniture industry"', add
label define cn90a_ind_lbl 279 `"Other furniture industries"', add
label define cn90a_ind_lbl 281 `"Pulp Production"', add
label define cn90a_ind_lbl 282 `"Paper making"', add
label define cn90a_ind_lbl 283 `"Paper products"', add
label define cn90a_ind_lbl 290 `"Printing"', add
label define cn90a_ind_lbl 301 `"Art supplies production"', add
label define cn90a_ind_lbl 302 `"Educational supplies production"', add
label define cn90a_ind_lbl 303 `"Sporting goods production"', add
label define cn90a_ind_lbl 305 `"Music instruments and other entertainment supplies production"', add
label define cn90a_ind_lbl 306 `"Toy industry"', add
label define cn90a_ind_lbl 307 `"Games product industry"', add
label define cn90a_ind_lbl 309 `"Other educational, entertainment, and sporting products making"', add
label define cn90a_ind_lbl 311 `"Sculpture handicrafts making"', add
label define cn90a_ind_lbl 312 `"Metal handicrafts making"', add
label define cn90a_ind_lbl 313 `"Lacquer ware handicrafts making"', add
label define cn90a_ind_lbl 314 `"Flower painting handicrafts making"', add
label define cn90a_ind_lbl 315 `"Bamboo, rattan, and grass handicrafts making"', add
label define cn90a_ind_lbl 316 `"Silk handicrafts making"', add
label define cn90a_ind_lbl 317 `"Carpet making"', add
label define cn90a_ind_lbl 318 `"Jewels making"', add
label define cn90a_ind_lbl 319 `"Other handicrafts industries"', add
label define cn90a_ind_lbl 331 `"Electric power generating"', add
label define cn90a_ind_lbl 332 `"Electric power supply and distribution"', add
label define cn90a_ind_lbl 333 `"Steam and hot water supply and production"', add
label define cn90a_ind_lbl 341 `"Artificial petroleum production"', add
label define cn90a_ind_lbl 342 `"Crude oil processing"', add
label define cn90a_ind_lbl 351 `"Coking"', add
label define cn90a_ind_lbl 352 `"Gas supply"', add
label define cn90a_ind_lbl 353 `"Coal products"', add
label define cn90a_ind_lbl 361 `"Primary chemical materials"', add
label define cn90a_ind_lbl 362 `"Chemical fertilizers"', add
label define cn90a_ind_lbl 363 `"Pesticides"', add
label define cn90a_ind_lbl 365 `"Organic chemical industry (i)"', add
label define cn90a_ind_lbl 366 `"Organic chemical industry (ii)"', add
label define cn90a_ind_lbl 372 `"Chemical fiber industry"', add
label define cn90a_ind_lbl 375 `"Forestry chemical products"', add
label define cn90a_ind_lbl 376 `"Explosives and fire products"', add
label define cn90a_ind_lbl 377 `"Chemical products for daily use (i)"', add
label define cn90a_ind_lbl 378 `"Chemical products for daily use (ii)"', add
label define cn90a_ind_lbl 381 `"Medical material processing"', add
label define cn90a_ind_lbl 384 `"Chemical medicine processing"', add
label define cn90a_ind_lbl 386 `"Traditional Chinese medicines processing"', add
label define cn90a_ind_lbl 387 `"Veterinary medicines processing"', add
label define cn90a_ind_lbl 388 `"Biochemical products processing"', add
label define cn90a_ind_lbl 401 `"Artificial fiber products"', add
label define cn90a_ind_lbl 402 `"Synthetic fiber products"', add
label define cn90a_ind_lbl 411 `"Tire products"', add
label define cn90a_ind_lbl 413 `"Tire products for non-motor vehicles"', add
label define cn90a_ind_lbl 414 `"Panel, tube, and belt rubber"', add
label define cn90a_ind_lbl 416 `"Rubber parts production"', add
label define cn90a_ind_lbl 418 `"Recycled rubber products"', add
label define cn90a_ind_lbl 421 `"Rubber shoes and boots production"', add
label define cn90a_ind_lbl 423 `"Rubber products for daily use"', add
label define cn90a_ind_lbl 428 `"Rubber product repair services"', add
label define cn90a_ind_lbl 429 `"Other rubber products"', add
label define cn90a_ind_lbl 431 `"Film plastic products"', add
label define cn90a_ind_lbl 433 `"Panel, tube, stick plastic products"', add
label define cn90a_ind_lbl 435 `"Silk plastic products"', add
label define cn90a_ind_lbl 436 `"Leatherette and synthetic leather products"', add
label define cn90a_ind_lbl 437 `"Foam plastic products"', add
label define cn90a_ind_lbl 438 `"Plastic parts production"', add
label define cn90a_ind_lbl 439 `"Plastic packaging and containers products"', add
label define cn90a_ind_lbl 441 `"Plastic shoes production"', add
label define cn90a_ind_lbl 442 `"Plastic products for daily use"', add
label define cn90a_ind_lbl 449 `"Other plastic products"', add
label define cn90a_ind_lbl 451 `"Cement production"', add
label define cn90a_ind_lbl 452 `"Finished cement products and asbestos-cement production"', add
label define cn90a_ind_lbl 453 `"Brick, tile and stone for construction"', add
label define cn90a_ind_lbl 454 `"Glass production"', add
label define cn90a_ind_lbl 455 `"Glass products"', add
label define cn90a_ind_lbl 456 `"Ceramics"', add
label define cn90a_ind_lbl 457 `"Refractory materials"', add
label define cn90a_ind_lbl 458 `"Graphite and carbon products"', add
label define cn90a_ind_lbl 461 `"Asbestos products"', add
label define cn90a_ind_lbl 462 `"Mica products"', add
label define cn90a_ind_lbl 463 `"Glass fiber products"', add
label define cn90a_ind_lbl 464 `"Abrasives products"', add
label define cn90a_ind_lbl 469 `"Other nonmetal mineral products"', add
label define cn90a_ind_lbl 481 `"Iron making"', add
label define cn90a_ind_lbl 482 `"Steel making"', add
label define cn90a_ind_lbl 483 `"Steel processing"', add
label define cn90a_ind_lbl 488 `"Ferroalloy smelting"', add
label define cn90a_ind_lbl 491 `"Refining of heavy nonferrous"', add
label define cn90a_ind_lbl 493 `"Refining of light nonferrous"', add
label define cn90a_ind_lbl 495 `"Refining of precious metals"', add
label define cn90a_ind_lbl 496 `"Rare metal processing"', add
label define cn90a_ind_lbl 497 `"Refining of alloy nonferrous"', add
label define cn90a_ind_lbl 498 `"Pressing of nonferrous"', add
label define cn90a_ind_lbl 511 `"Metal structures and metal structural components"', add
label define cn90a_ind_lbl 512 `"Iron casting"', add
label define cn90a_ind_lbl 513 `"Instrument products"', add
label define cn90a_ind_lbl 514 `"Metal container products"', add
label define cn90a_ind_lbl 515 `"Tight wire products"', add
label define cn90a_ind_lbl 516 `"Metal products for construction"', add
label define cn90a_ind_lbl 517 `"Machinery for agriculture"', add
label define cn90a_ind_lbl 518 `"Metal surface treatments and heat treatments"', add
label define cn90a_ind_lbl 519 `"Machinery for making daily use articles (i)"', add
label define cn90a_ind_lbl 521 `"Machinery for making daily use articles (ii)"', add
label define cn90a_ind_lbl 529 `"Other kinds of machinery and repair services"', add
label define cn90a_ind_lbl 531 `"Boiler and gas engine production"', add
label define cn90a_ind_lbl 532 `"Metal processing machinery"', add
label define cn90a_ind_lbl 533 `"General equipment (I)"', add
label define cn90a_ind_lbl 534 `"General equipment (II)"', add
label define cn90a_ind_lbl 535 `"General instruments production (I)"', add
label define cn90a_ind_lbl 536 `"General instruments production (II)"', add
label define cn90a_ind_lbl 537 `"Semi-finished metal products casting and pressing"', add
label define cn90a_ind_lbl 538 `"Special industrial equipment (I)"', add
label define cn90a_ind_lbl 539 `"Special industrial equipment (II)"', add
label define cn90a_ind_lbl 540 `"Special industrial equipment (III)"', add
label define cn90a_ind_lbl 541 `"Special industrial equipment (IV)"', add
label define cn90a_ind_lbl 542 `"Machinery for agriculture, forestry, animal husbandry and fishery"', add
label define cn90a_ind_lbl 544 `"Construction machinery"', add
label define cn90a_ind_lbl 545 `"Special geological equipment"', add
label define cn90a_ind_lbl 546 `"Medical device production"', add
label define cn90a_ind_lbl 547 `"Machinery of articles for culture production and office use"', add
label define cn90a_ind_lbl 548 `"Machinery of articles for daily use"', add
label define cn90a_ind_lbl 551 `"Other kinds of special equipment machinery"', add
label define cn90a_ind_lbl 558 `"Machinery repair services"', add
label define cn90a_ind_lbl 559 `"Other kinds of machinery"', add
label define cn90a_ind_lbl 561 `"Railway transport equipment"', add
label define cn90a_ind_lbl 562 `"Automobile manufacturing"', add
label define cn90a_ind_lbl 563 `"Motorcycle manufacturing"', add
label define cn90a_ind_lbl 564 `"Tram manufacturing"', add
label define cn90a_ind_lbl 565 `"Shipping equipment"', add
label define cn90a_ind_lbl 567 `"Navigation equipment"', add
label define cn90a_ind_lbl 568 `"Transportation machinery repair services"', add
label define cn90a_ind_lbl 569 `"Other transport equipment repair services"', add
label define cn90a_ind_lbl 581 `"Motor manufacturing"', add
label define cn90a_ind_lbl 582 `"Electrical power generators, distributors and electric machinery"', add
label define cn90a_ind_lbl 584 `"Electrical equipment manufacturing"', add
label define cn90a_ind_lbl 586 `"Home appliances manufacturing"', add
label define cn90a_ind_lbl 587 `"Lighting equipment manufacturing"', add
label define cn90a_ind_lbl 588 `"Electric machinery repair services"', add
label define cn90a_ind_lbl 589 `"Other kinds of electric machinery manufacturing"', add
label define cn90a_ind_lbl 601 `"Communication equipment manufacturing"', add
label define cn90a_ind_lbl 603 `"Radar manufacturing"', add
label define cn90a_ind_lbl 607 `"Broadcasting and telecasting equipment"', add
label define cn90a_ind_lbl 608 `"Computer manufacturing"', add
label define cn90a_ind_lbl 611 `"Electronic devices manufacturing"', add
label define cn90a_ind_lbl 613 `"Electronic parts manufacturing"', add
label define cn90a_ind_lbl 616 `"Electronic commodity manufacturing"', add
label define cn90a_ind_lbl 618 `"Electronic and communication equipment repair services"', add
label define cn90a_ind_lbl 619 `"Other kinds of electronic and telecom machinery and repair services"', add
label define cn90a_ind_lbl 631 `"Measuring tools and instruments manufacturing (I)"', add
label define cn90a_ind_lbl 632 `"Measuring tools and instruments manufacturing (II)"', add
label define cn90a_ind_lbl 633 `"Measuring tools and instruments manufacturing (III)"', add
label define cn90a_ind_lbl 634 `"Electric instruments"', add
label define cn90a_ind_lbl 635 `"Electronic and wireless measuring instruments"', add
label define cn90a_ind_lbl 636 `"Measuring apparatus manufacturing"', add
label define cn90a_ind_lbl 637 `"Weighing apparatus manufacturing"', add
label define cn90a_ind_lbl 638 `"Measuring tools and instruments repair services"', add
label define cn90a_ind_lbl 639 `"Other precision machinery and instruments and repair services"', add
label define cn90a_ind_lbl 661 `"Other manufacturing industries and repair services"', add
label define cn90a_ind_lbl 662 `"Other household product manufacturing industries and repair services"', add
label define cn90a_ind_lbl 671 `"Mineral geological survey"', add
label define cn90a_ind_lbl 672 `"Petroleum geological survey"', add
label define cn90a_ind_lbl 673 `"Marine geological survey"', add
label define cn90a_ind_lbl 674 `"Hydrological, construction, and environmental geological survey"', add
label define cn90a_ind_lbl 675 `"Regional geological survey"', add
label define cn90a_ind_lbl 676 `"Geophysics and chemical mineral prospecting"', add
label define cn90a_ind_lbl 677 `"Geological mapping"', add
label define cn90a_ind_lbl 678 `"Technical services for mineral prospecting"', add
label define cn90a_ind_lbl 691 `"Civil engineering"', add
label define cn90a_ind_lbl 700 `"Wiring and pipeline installation"', add
label define cn90a_ind_lbl 710 `"Prospecting design services"', add
label define cn90a_ind_lbl 731 `"Railway transportation"', add
label define cn90a_ind_lbl 732 `"Highway transportation"', add
label define cn90a_ind_lbl 733 `"Pipe transportation"', add
label define cn90a_ind_lbl 734 `"Water transportation"', add
label define cn90a_ind_lbl 735 `"Air transportation"', add
label define cn90a_ind_lbl 736 `"Porterage and shipping"', add
label define cn90a_ind_lbl 741 `"Postal services"', add
label define cn90a_ind_lbl 742 `"Telecommunications"', add
label define cn90a_ind_lbl 743 `"Postal and telecommunications services"', add
label define cn90a_ind_lbl 751 `"Domestic trade (I)"', add
label define cn90a_ind_lbl 752 `"Domestic trade (II)"', add
label define cn90a_ind_lbl 755 `"Foreign trade"', add
label define cn90a_ind_lbl 770 `"Food services"', add
label define cn90a_ind_lbl 780 `"Material and commodity supply services"', add
label define cn90a_ind_lbl 790 `"Storage services"', add
label define cn90a_ind_lbl 800 `"Real estate services"', add
label define cn90a_ind_lbl 811 `"Metro transit"', add
label define cn90a_ind_lbl 812 `"Landscaping and management of parks and national monuments"', add
label define cn90a_ind_lbl 813 `"Local public transport services"', add
label define cn90a_ind_lbl 814 `"Sewage, sanitary services, and transportation management"', add
label define cn90a_ind_lbl 815 `"Funeral, crematoria and mortuary services"', add
label define cn90a_ind_lbl 819 `"Others public facilities"', add
label define cn90a_ind_lbl 821 `"Tourism"', add
label define cn90a_ind_lbl 822 `"Hotels"', add
label define cn90a_ind_lbl 823 `"Barber shops"', add
label define cn90a_ind_lbl 824 `"Public baths"', add
label define cn90a_ind_lbl 825 `"Laundry services"', add
label define cn90a_ind_lbl 826 `"Photo studio"', add
label define cn90a_ind_lbl 827 `"Home appliances repair services"', add
label define cn90a_ind_lbl 829 `"Other service sectors"', add
label define cn90a_ind_lbl 830 `"Consulting services"', add
label define cn90a_ind_lbl 831 `"Undocumented"', add
label define cn90a_ind_lbl 832 `"Undocumented"', add
label define cn90a_ind_lbl 839 `"Undocumented"', add
label define cn90a_ind_lbl 841 `"Hospitals"', add
label define cn90a_ind_lbl 842 `"Sanitarium"', add
label define cn90a_ind_lbl 843 `"Clinics"', add
label define cn90a_ind_lbl 844 `"Public health infection control units"', add
label define cn90a_ind_lbl 845 `"Vaccination and health inspection stations"', add
label define cn90a_ind_lbl 846 `"Women and children health care centers"', add
label define cn90a_ind_lbl 847 `"Drug and medicine testing centers"', add
label define cn90a_ind_lbl 849 `"Child care and other public health and care services"', add
label define cn90a_ind_lbl 850 `"Sports"', add
label define cn90a_ind_lbl 860 `"Social welfare services"', add
label define cn90a_ind_lbl 871 `"Higher education"', add
label define cn90a_ind_lbl 872 `"Middle-level education"', add
label define cn90a_ind_lbl 873 `"Elementary-level education"', add
label define cn90a_ind_lbl 874 `"Preschool education"', add
label define cn90a_ind_lbl 875 `"Special education programs"', add
label define cn90a_ind_lbl 879 `"Other education programs"', add
label define cn90a_ind_lbl 881 `"Movies"', add
label define cn90a_ind_lbl 882 `"Arts"', add
label define cn90a_ind_lbl 883 `"Publishing"', add
label define cn90a_ind_lbl 884 `"Museum, monument, and other cultural heritage maintenance"', add
label define cn90a_ind_lbl 885 `"Libraries"', add
label define cn90a_ind_lbl 886 `"Mass culture organizations"', add
label define cn90a_ind_lbl 887 `"News"', add
label define cn90a_ind_lbl 889 `"Other industries about culture, arts, and religion"', add
label define cn90a_ind_lbl 890 `"Broadcasting and telecasting"', add
label define cn90a_ind_lbl 901 `"Natural science research"', add
label define cn90a_ind_lbl 902 `"Social science research"', add
label define cn90a_ind_lbl 903 `"Other management, technical, and scientific research"', add
label define cn90a_ind_lbl 911 `"Meteological research"', add
label define cn90a_ind_lbl 912 `"Earthquake detecting research"', add
label define cn90a_ind_lbl 913 `"Mapping"', add
label define cn90a_ind_lbl 914 `"Testing and measuring"', add
label define cn90a_ind_lbl 915 `"Marine and environmental research"', add
label define cn90a_ind_lbl 916 `"Environment protection"', add
label define cn90a_ind_lbl 917 `"Computer and software development"', add
label define cn90a_ind_lbl 919 `"Other technical services"', add
label define cn90a_ind_lbl 930 `"Finance"', add
label define cn90a_ind_lbl 940 `"Insurance"', add
label define cn90a_ind_lbl 950 `"Administrative organizations"', add
label define cn90a_ind_lbl 960 `"Political party organizations"', add
label define cn90a_ind_lbl 970 `"Social organizations"', add
label define cn90a_ind_lbl 980 `"Enterprises and management organizations"', add
label define cn90a_ind_lbl 990 `"Other industries"', add
label define cn90a_ind_lbl 998 `"Unknown"', add
label values cn90a_ind cn90a_ind_lbl

label define cn90a_occ_lbl 000 `"NIU (not in universe)"'
label define cn90a_occ_lbl 011 `"Philosophical researchers"', add
label define cn90a_occ_lbl 012 `"Sociological researchers"', add
label define cn90a_occ_lbl 013 `"Economic researchers"', add
label define cn90a_occ_lbl 014 `"Law researchers"', add
label define cn90a_occ_lbl 015 `"Pedagogy researchers"', add
label define cn90a_occ_lbl 016 `"Literary and art researchers"', add
label define cn90a_occ_lbl 017 `"Library and information researchers"', add
label define cn90a_occ_lbl 018 `"History researchers"', add
label define cn90a_occ_lbl 019 `"Natural science researchers"', add
label define cn90a_occ_lbl 020 `"Engineering researchers"', add
label define cn90a_occ_lbl 021 `"Researchers of agricultural science"', add
label define cn90a_occ_lbl 022 `"Agriculture researchers"', add
label define cn90a_occ_lbl 029 `"Other science researchers"', add
label define cn90a_occ_lbl 031 `"City architectural planning and designing staff"', add
label define cn90a_occ_lbl 032 `"Civil engineering technicians"', add
label define cn90a_occ_lbl 033 `"Electric and electronic technicians"', add
label define cn90a_occ_lbl 034 `"Mechanical engineering technicians"', add
label define cn90a_occ_lbl 035 `"Chemical engineering technicians"', add
label define cn90a_occ_lbl 036 `"Metallurgical engineering technicians"', add
label define cn90a_occ_lbl 037 `"Mineral engineering technicians"', add
label define cn90a_occ_lbl 038 `"Industrial management technicians"', add
label define cn90a_occ_lbl 039 `"Cartographers and hydrologic technicians"', add
label define cn90a_occ_lbl 040 `"Meteorological and seismic technicians"', add
label define cn90a_occ_lbl 041 `"Geology engineering technicians"', add
label define cn90a_occ_lbl 042 `"Light industrial, spinning and weaving technicians"', add
label define cn90a_occ_lbl 043 `"Food and beverage technicians"', add
label define cn90a_occ_lbl 044 `"Agricultural technicians"', add
label define cn90a_occ_lbl 045 `"Forestry technicians"', add
label define cn90a_occ_lbl 046 `"Veterinarians"', add
label define cn90a_occ_lbl 049 `"Other engineering, farming and forestry technicians"', add
label define cn90a_occ_lbl 051 `"Scientific and technical managerial professionals"', add
label define cn90a_occ_lbl 052 `"Scientific and technical auxiliary staff members"', add
label define cn90a_occ_lbl 061 `"Plane pilots navigators"', add
label define cn90a_occ_lbl 062 `"Plane mechanical technicians"', add
label define cn90a_occ_lbl 063 `"Ship navigators, directors"', add
label define cn90a_occ_lbl 064 `"Ship technicians"', add
label define cn90a_occ_lbl 069 `"Other plane and ship technicians"', add
label define cn90a_occ_lbl 071 `"Doctors"', add
label define cn90a_occ_lbl 072 `"Chinese and western pharmacists"', add
label define cn90a_occ_lbl 073 `"Nurses"', add
label define cn90a_occ_lbl 074 `"Medical staff in residential district or neighborhood"', add
label define cn90a_occ_lbl 075 `"Village or town medical staff"', add
label define cn90a_occ_lbl 089 `"Other medical staff"', add
label define cn90a_occ_lbl 091 `"Economy planners"', add
label define cn90a_occ_lbl 092 `"Statisticians"', add
label define cn90a_occ_lbl 093 `"Accounting and auditing staff"', add
label define cn90a_occ_lbl 094 `"Payroll clerk"', add
label define cn90a_occ_lbl 095 `"Dispatchers"', add
label define cn90a_occ_lbl 096 `"Tax and industrial and business administrative staff"', add
label define cn90a_occ_lbl 097 `"Financial professionals"', add
label define cn90a_occ_lbl 098 `"Customs inspection officers"', add
label define cn90a_occ_lbl 099 `"Other economic professionals"', add
label define cn90a_occ_lbl 101 `"Judges"', add
label define cn90a_occ_lbl 102 `"Prosecutors"', add
label define cn90a_occ_lbl 103 `"Lawyers"', add
label define cn90a_occ_lbl 109 `"Other legal staff"', add
label define cn90a_occ_lbl 111 `"Teachers of tertiary schools"', add
label define cn90a_occ_lbl 112 `"Teachers of secondary schools"', add
label define cn90a_occ_lbl 113 `"Teachers of primary schools"', add
label define cn90a_occ_lbl 114 `"Teachers of pre-primary schools"', add
label define cn90a_occ_lbl 115 `"Teachers of special schools (for blind, deaf, and dumb persons)"', add
label define cn90a_occ_lbl 116 `"Auxiliary teaching staff"', add
label define cn90a_occ_lbl 119 `"Other teachers"', add
label define cn90a_occ_lbl 121 `"Literary writers and critics"', add
label define cn90a_occ_lbl 122 `"Directors and music conductors"', add
label define cn90a_occ_lbl 123 `"Actors (actresses)"', add
label define cn90a_occ_lbl 124 `"Instrument players"', add
label define cn90a_occ_lbl 125 `"Photographers"', add
label define cn90a_occ_lbl 126 `"Movie and TV producers"', add
label define cn90a_occ_lbl 127 `"Artists"', add
label define cn90a_occ_lbl 128 `"Stage designers"', add
label define cn90a_occ_lbl 129 `"Sport coaches and umpires"', add
label define cn90a_occ_lbl 130 `"Athletes"', add
label define cn90a_occ_lbl 139 `"Other literary, art and sport workers"', add
label define cn90a_occ_lbl 141 `"Reporters"', add
label define cn90a_occ_lbl 142 `"Editors"', add
label define cn90a_occ_lbl 143 `"Broadcasters"', add
label define cn90a_occ_lbl 144 `"Translators"', add
label define cn90a_occ_lbl 145 `"Library and information personnel"', add
label define cn90a_occ_lbl 146 `"Archive personnel"', add
label define cn90a_occ_lbl 147 `"Archaeologists and workers associated with historical relic"', add
label define cn90a_occ_lbl 148 `"Exhibition guides"', add
label define cn90a_occ_lbl 149 `"Other culture workers"', add
label define cn90a_occ_lbl 150 `"Religious professionals"', add
label define cn90a_occ_lbl 211 `"Leading cadres of central government organizations and related institutions"', add
label define cn90a_occ_lbl 212 `"Leading cadres of provincial government organizations and related institutions"', add
label define cn90a_occ_lbl 213 `"Leading cadres of prefecture or city-level government organizations and related institutions"', add
label define cn90a_occ_lbl 214 `"Leading cadres of county-level government organizations and related institutions"', add
label define cn90a_occ_lbl 215 `"Leading cadres of government organizations and related institutions below county level (township, street, and village)"', add
label define cn90a_occ_lbl 221 `"Leading cadres of communist party organizations above county level"', add
label define cn90a_occ_lbl 222 `"Leading cadres of communist party organizations at grass-root level"', add
label define cn90a_occ_lbl 223 `"Leading cadres of youth leagues, trade unions, and women's federations"', add
label define cn90a_occ_lbl 224 `"Leading cadres of democratic party and other people's organizations"', add
label define cn90a_occ_lbl 229 `"Heads of residents' (village) committees"', add
label define cn90a_occ_lbl 241 `"Managers of enterprises and institutions at central level"', add
label define cn90a_occ_lbl 242 `"Managers of enterprises and institutions at provincial level"', add
label define cn90a_occ_lbl 243 `"Managers of enterprises and institutions at prefectural or military division level"', add
label define cn90a_occ_lbl 244 `"Managers of enterprises and institutions at county level or military troop level"', add
label define cn90a_occ_lbl 245 `"Managers of enterprises and institutions below county or military troop level"', add
label define cn90a_occ_lbl 246 `"Managers of private enterprises"', add
label define cn90a_occ_lbl 311 `"Administrative management staff and assistants"', add
label define cn90a_occ_lbl 312 `"Secretaries"', add
label define cn90a_occ_lbl 313 `"Receiving, dispatching and communicating staff"', add
label define cn90a_occ_lbl 314 `"Typing and printing staff"', add
label define cn90a_occ_lbl 319 `"Other administrative staff and office workers"', add
label define cn90a_occ_lbl 321 `"Staff for political affairs"', add
label define cn90a_occ_lbl 322 `"Personnel management staff"', add
label define cn90a_occ_lbl 323 `"Public security officers and police"', add
label define cn90a_occ_lbl 324 `"Firefighters"', add
label define cn90a_occ_lbl 329 `"Other staff for political and security affairs"', add
label define cn90a_occ_lbl 331 `"Postal working staff"', add
label define cn90a_occ_lbl 332 `"Telephone and telegraph operators"', add
label define cn90a_occ_lbl 339 `"Other staff for post and telecommunication"', add
label define cn90a_occ_lbl 399 `"Other clerical and related staff"', add
label define cn90a_occ_lbl 411 `"Shop employees and salesmen"', add
label define cn90a_occ_lbl 419 `"Other related sales staff"', add
label define cn90a_occ_lbl 420 `"Supply and marketing cooperative"', add
label define cn90a_occ_lbl 431 `"Agricultural or sideline products purchasing staff"', add
label define cn90a_occ_lbl 432 `"Trust purchasing staff"', add
label define cn90a_occ_lbl 433 `"Used merchandise purchasing staff"', add
label define cn90a_occ_lbl 441 `"Agents, brokers"', add
label define cn90a_occ_lbl 499 `"Other commercial staff"', add
label define cn90a_occ_lbl 511 `"Attendants in restaurants"', add
label define cn90a_occ_lbl 512 `"Attendants in inns, motels, hotels, etc"', add
label define cn90a_occ_lbl 513 `"Attendants in entertainment, tourism, sports and other clubs"', add
label define cn90a_occ_lbl 514 `"Bathroom attendants"', add
label define cn90a_occ_lbl 515 `"Attendants on bus, ship, and plane"', add
label define cn90a_occ_lbl 516 `"Ticket sellers"', add
label define cn90a_occ_lbl 517 `"Childcare workers"', add
label define cn90a_occ_lbl 518 `"Baby sitters or family service workers"', add
label define cn90a_occ_lbl 519 `"Barbers"', add
label define cn90a_occ_lbl 520 `"Washing, dyeing, and darning workers"', add
label define cn90a_occ_lbl 521 `"Fuel supply workers"', add
label define cn90a_occ_lbl 522 `"Cleaners"', add
label define cn90a_occ_lbl 523 `"Office attendants"', add
label define cn90a_occ_lbl 524 `"Funeral and interment workers"', add
label define cn90a_occ_lbl 525 `"Gardeners or related workers"', add
label define cn90a_occ_lbl 529 `"Other service workers"', add
label define cn90a_occ_lbl 531 `"Chefs"', add
label define cn90a_occ_lbl 532 `"Other kitchen staff"', add
label define cn90a_occ_lbl 540 `"Tour guides"', add
label define cn90a_occ_lbl 551 `"Staff for repairing household electronic equipment"', add
label define cn90a_occ_lbl 559 `"Other repair persons of household appliances"', add
label define cn90a_occ_lbl 599 `"Other service workers"', add
label define cn90a_occ_lbl 611 `"Grain farmers"', add
label define cn90a_occ_lbl 612 `"Cotton farmers"', add
label define cn90a_occ_lbl 613 `"Vegetable farmers"', add
label define cn90a_occ_lbl 614 `"Fruit, mulberry, and tea farmers"', add
label define cn90a_occ_lbl 619 `"Other agricultural workers"', add
label define cn90a_occ_lbl 621 `"Afforesting workers"', add
label define cn90a_occ_lbl 622 `"Lumbering laborers"', add
label define cn90a_occ_lbl 623 `"Forest rangers"', add
label define cn90a_occ_lbl 624 `"Float log workers"', add
label define cn90a_occ_lbl 629 `"Other forestry laborers"', add
label define cn90a_occ_lbl 631 `"Livestock-raising laborers"', add
label define cn90a_occ_lbl 632 `"Poultry-raising laborers"', add
label define cn90a_occ_lbl 633 `"Special animal raising laborers"', add
label define cn90a_occ_lbl 639 `"Other animal husbandry workers"', add
label define cn90a_occ_lbl 641 `"Aquatic product breeders"', add
label define cn90a_occ_lbl 642 `"Aquatic product fishing laborers"', add
label define cn90a_occ_lbl 643 `"Natural aquatic animal and plant collecting laborers"', add
label define cn90a_occ_lbl 644 `"Fishing-boat drivers"', add
label define cn90a_occ_lbl 649 `"Other fishery workers"', add
label define cn90a_occ_lbl 650 `"Hunters"', add
label define cn90a_occ_lbl 661 `"Tractor drivers"', add
label define cn90a_occ_lbl 669 `"Other operators of agricultural machines"', add
label define cn90a_occ_lbl 699 `"Other workers in farming, forestry, animal husbandry and fishery"', add
label define cn90a_occ_lbl 700 `"Section chiefs"', add
label define cn90a_occ_lbl 711 `"Mining and stone gathering workers"', add
label define cn90a_occ_lbl 712 `"Mineral and stone processing workers"', add
label define cn90a_occ_lbl 713 `"Oil and natural gas drilling workers"', add
label define cn90a_occ_lbl 714 `"Prospecting workers"', add
label define cn90a_occ_lbl 715 `"Salt mining workers"', add
label define cn90a_occ_lbl 719 `"Other mining, quarrying, exploring, well drilling and salt mining workers"', add
label define cn90a_occ_lbl 721 `"Metal melting workers"', add
label define cn90a_occ_lbl 722 `"Metal rolling and machine operators"', add
label define cn90a_occ_lbl 723 `"Metal casting workers"', add
label define cn90a_occ_lbl 724 `"Metal hot processing workers"', add
label define cn90a_occ_lbl 725 `"Metal drawing and extruding workers"', add
label define cn90a_occ_lbl 726 `"Metal surface handling workers"', add
label define cn90a_occ_lbl 729 `"Other metal smelting and processing workers"', add
label define cn90a_occ_lbl 731 `"Workers for production of basic chemical raw materials"', add
label define cn90a_occ_lbl 732 `"Workers making chemical fertilizer"', add
label define cn90a_occ_lbl 733 `"Workers making agricultural chemicals"', add
label define cn90a_occ_lbl 734 `"Daily chemical goods production workers"', add
label define cn90a_occ_lbl 735 `"Chemical fabrics production workers"', add
label define cn90a_occ_lbl 736 `"Oil refining workers"', add
label define cn90a_occ_lbl 737 `"Oil coking workers"', add
label define cn90a_occ_lbl 738 `"Pharmaceutical workers"', add
label define cn90a_occ_lbl 739 `"Other chemical workers"', add
label define cn90a_occ_lbl 741 `"Rubber machine operators"', add
label define cn90a_occ_lbl 742 `"Plastic machine operators"', add
label define cn90a_occ_lbl 743 `"Tire makers and sulphur suppliers"', add
label define cn90a_occ_lbl 749 `"Other workers for production of rubber and plastic products"', add
label define cn90a_occ_lbl 751 `"Fabrics pre-processing workers"', add
label define cn90a_occ_lbl 752 `"Spinning, screwing and twisting workers"', add
label define cn90a_occ_lbl 753 `"Workers for installation and maintenance of textile, sewing and dyeing equipment"', add
label define cn90a_occ_lbl 754 `"Weavers"', add
label define cn90a_occ_lbl 755 `"Knitting workers"', add
label define cn90a_occ_lbl 756 `"Textile printing and dyeing workers"', add
label define cn90a_occ_lbl 759 `"Other workers for textiles, knitting and dyeing"', add
label define cn90a_occ_lbl 761 `"Leather and fur manufacturing workers"', add
label define cn90a_occ_lbl 762 `"Leather product manufacturing workers"', add
label define cn90a_occ_lbl 763 `"Fur product manufacturing workers"', add
label define cn90a_occ_lbl 769 `"Other workers for production of leather and fur"', add
label define cn90a_occ_lbl 771 `"Workers for drawing and tailoring garments"', add
label define cn90a_occ_lbl 772 `"Sewing workers"', add
label define cn90a_occ_lbl 773 `"Shoes and hat manufacturing workers"', add
label define cn90a_occ_lbl 774 `"Embroidering workers"', add
label define cn90a_occ_lbl 779 `"Other tailoring and sewing workers"', add
label define cn90a_occ_lbl 781 `"Rice-grinding, power-grinding, and oil-extracting laborers"', add
label define cn90a_occ_lbl 782 `"Sugar producing workers"', add
label define cn90a_occ_lbl 783 `"Butchers and meat processing laborers"', add
label define cn90a_occ_lbl 784 `"Canned food producing and preserving laborers"', add
label define cn90a_occ_lbl 785 `"Dairy producing workers"', add
label define cn90a_occ_lbl 786 `"Bakers and workers for candy products"', add
label define cn90a_occ_lbl 787 `"Tea producing workers"', add
label define cn90a_occ_lbl 788 `"Wine, alcohol, and beverage brewers"', add
label define cn90a_occ_lbl 789 `"Other food and beverage production workers"', add
label define cn90a_occ_lbl 790 `"Tobacco production workers"', add
label define cn90a_occ_lbl 801 `"Timer processing workers"', add
label define cn90a_occ_lbl 802 `"Wood producing workers"', add
label define cn90a_occ_lbl 803 `"Furniture or construction wood manufacturing workers"', add
label define cn90a_occ_lbl 804 `"Bamboo, linen, rattan, straw product manufacturing workers"', add
label define cn90a_occ_lbl 809 `"Other workers for products of bamboo, hemp, cane, palm and straw"', add
label define cn90a_occ_lbl 811 `"Paper manufacturing workers"', add
label define cn90a_occ_lbl 812 `"Paper product manufacturing workers"', add
label define cn90a_occ_lbl 819 `"Other workers for manufacture of paper products"', add
label define cn90a_occ_lbl 821 `"Typesetting workers"', add
label define cn90a_occ_lbl 822 `"Plate making workers"', add
label define cn90a_occ_lbl 823 `"Printing workers"', add
label define cn90a_occ_lbl 824 `"Binding workers"', add
label define cn90a_occ_lbl 825 `"Photographing darkroom workers"', add
label define cn90a_occ_lbl 829 `"Other printing and the related workers"', add
label define cn90a_occ_lbl 831 `"Stone cutting and carving workers"', add
label define cn90a_occ_lbl 832 `"Artistic masons"', add
label define cn90a_occ_lbl 839 `"Other stone workers"', add
label define cn90a_occ_lbl 841 `"Blacksmith, forgers and forging press operators"', add
label define cn90a_occ_lbl 842 `"Bench workers"', add
label define cn90a_occ_lbl 843 `"Machine tool installers"', add
label define cn90a_occ_lbl 844 `"Metal cutting machine operators and blade grinding workers"', add
label define cn90a_occ_lbl 849 `"Other forgers, tool manufacturing workers and machine tool installation workers"', add
label define cn90a_occ_lbl 851 `"Machine assemblers"', add
label define cn90a_occ_lbl 852 `"Machine repairing workers"', add
label define cn90a_occ_lbl 853 `"Clocks, watch and precision instrument manufacturing workers"', add
label define cn90a_occ_lbl 859 `"Other machine assemblers and precision instrument manufacturing workers"', add
label define cn90a_occ_lbl 861 `"Electric equipment installing, repairing workers"', add
label define cn90a_occ_lbl 862 `"Electronic equipment installing, repairing workers"', add
label define cn90a_occ_lbl 863 `"Electric and electronic assembling workers"', add
label define cn90a_occ_lbl 864 `"Electrical engineering workers"', add
label define cn90a_occ_lbl 865 `"Telephone, telegraph equipment repairing workers"', add
label define cn90a_occ_lbl 869 `"Other installation, repair and electronic equipment assembly and related workers"', add
label define cn90a_occ_lbl 871 `"Projecting equipment operators"', add
label define cn90a_occ_lbl 872 `"Radio station sound recording equipment operators"', add
label define cn90a_occ_lbl 873 `"Movie projectionists"', add
label define cn90a_occ_lbl 881 `"Plumbers and piping workers"', add
label define cn90a_occ_lbl 882 `"Welders"', add
label define cn90a_occ_lbl 883 `"Cold forging workers"', add
label define cn90a_occ_lbl 884 `"Metal component installing workers"', add
label define cn90a_occ_lbl 891 `"Glass manufacturing workers"', add
label define cn90a_occ_lbl 892 `"Pottery manufacturing workers"', add
label define cn90a_occ_lbl 893 `"Enamel manufacturing workers"', add
label define cn90a_occ_lbl 901 `"Painters"', add
label define cn90a_occ_lbl 909 `"Other painters"', add
label define cn90a_occ_lbl 911 `"Cement manufacturing workers"', add
label define cn90a_occ_lbl 912 `"Asbestos manufacturing workers"', add
label define cn90a_occ_lbl 913 `"Brick and lime manufacturing workers"', add
label define cn90a_occ_lbl 914 `"Fire-proof material manufacturing workers"', add
label define cn90a_occ_lbl 915 `"Other non-metal mineral manufacturing workers"', add
label define cn90a_occ_lbl 916 `"Education and sport related article manufacturing workers"', add
label define cn90a_occ_lbl 917 `"Jewelry and gold ornament processing workers"', add
label define cn90a_occ_lbl 918 `"Art and handicraft article manufacturing workers"', add
label define cn90a_occ_lbl 919 `"Other production workers and related workers"', add
label define cn90a_occ_lbl 921 `"Bricklayers and plasterers"', add
label define cn90a_occ_lbl 922 `"Concrete mixing workers"', add
label define cn90a_occ_lbl 923 `"Reinforcing bar related workers"', add
label define cn90a_occ_lbl 924 `"Scaffolders"', add
label define cn90a_occ_lbl 925 `"Unskilled workers in construction"', add
label define cn90a_occ_lbl 929 `"Other construction workers"', add
label define cn90a_occ_lbl 931 `"Electric power equipment operators"', add
label define cn90a_occ_lbl 932 `"Electric power network operators"', add
label define cn90a_occ_lbl 933 `"Boiler workers"', add
label define cn90a_occ_lbl 939 `"Other operators of power plants"', add
label define cn90a_occ_lbl 941 `"Loaders and porters"', add
label define cn90a_occ_lbl 942 `"Crane operators"', add
label define cn90a_occ_lbl 943 `"Construction related equipment operators"', add
label define cn90a_occ_lbl 949 `"Other related equipment operators"', add
label define cn90a_occ_lbl 951 `"Ships crew"', add
label define cn90a_occ_lbl 952 `"Locomotive drivers and stokers"', add
label define cn90a_occ_lbl 953 `"Railway transportation workers"', add
label define cn90a_occ_lbl 954 `"Bus drivers"', add
label define cn90a_occ_lbl 955 `"Other motor vehicle drivers"', add
label define cn90a_occ_lbl 956 `"Animal-driven vehicle drivers"', add
label define cn90a_occ_lbl 959 `"Other operators of transportation equipment"', add
label define cn90a_occ_lbl 961 `"Examiners and inspectors"', add
label define cn90a_occ_lbl 962 `"Metrologists"', add
label define cn90a_occ_lbl 963 `"Experiment and testing staff"', add
label define cn90a_occ_lbl 964 `"Laboratory analysis staff"', add
label define cn90a_occ_lbl 965 `"Drawing and photocopying staff"', add
label define cn90a_occ_lbl 966 `"Computer paper hole recording staff"', add
label define cn90a_occ_lbl 991 `"Underwater operation workers"', add
label define cn90a_occ_lbl 992 `"Drawing and mapping workers"', add
label define cn90a_occ_lbl 993 `"Packing and wrapping workers"', add
label define cn90a_occ_lbl 994 `"Warehouse workers"', add
label define cn90a_occ_lbl 997 `"Other production, transportation and related workers"', add
label define cn90a_occ_lbl 998 `"Other workers not classified elsewhere"', add
label values cn90a_occ cn90a_occ_lbl

label define cn90a_unempst_lbl 0 `"NIU (not in universe)"'
label define cn90a_unempst_lbl 1 `"Student"', add
label define cn90a_unempst_lbl 2 `"Housekeeper"', add
label define cn90a_unempst_lbl 3 `"Awaiting school enrollment"', add
label define cn90a_unempst_lbl 4 `"Awaiting government job-assignment"', add
label define cn90a_unempst_lbl 5 `"Retired or resigned"', add
label define cn90a_unempst_lbl 6 `"Disabled"', add
label define cn90a_unempst_lbl 7 `"Others"', add
label values cn90a_unempst cn90a_unempst_lbl

label define cn90a_marst_lbl 0 `"NIU (not in universe)"'
label define cn90a_marst_lbl 1 `"Never married"', add
label define cn90a_marst_lbl 2 `"Married"', add
label define cn90a_marst_lbl 3 `"Widowed"', add
label define cn90a_marst_lbl 4 `"Divorced"', add
label values cn90a_marst cn90a_marst_lbl

label define cn90a_chbornm_lbl 00 `"0"'
label define cn90a_chbornm_lbl 01 `"1"', add
label define cn90a_chbornm_lbl 02 `"2"', add
label define cn90a_chbornm_lbl 03 `"3"', add
label define cn90a_chbornm_lbl 04 `"4"', add
label define cn90a_chbornm_lbl 05 `"5"', add
label define cn90a_chbornm_lbl 06 `"6"', add
label define cn90a_chbornm_lbl 07 `"7"', add
label define cn90a_chbornm_lbl 08 `"8"', add
label define cn90a_chbornm_lbl 09 `"9+"', add
label define cn90a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values cn90a_chbornm cn90a_chbornm_lbl

label define cn90a_chbornf_lbl 00 `"0"'
label define cn90a_chbornf_lbl 01 `"1"', add
label define cn90a_chbornf_lbl 02 `"2"', add
label define cn90a_chbornf_lbl 03 `"3"', add
label define cn90a_chbornf_lbl 04 `"4"', add
label define cn90a_chbornf_lbl 05 `"5"', add
label define cn90a_chbornf_lbl 06 `"6"', add
label define cn90a_chbornf_lbl 07 `"7"', add
label define cn90a_chbornf_lbl 08 `"8"', add
label define cn90a_chbornf_lbl 09 `"9+"', add
label define cn90a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values cn90a_chbornf cn90a_chbornf_lbl

label define cn90a_chsurvm_lbl 00 `"0"'
label define cn90a_chsurvm_lbl 01 `"1"', add
label define cn90a_chsurvm_lbl 02 `"2"', add
label define cn90a_chsurvm_lbl 03 `"3"', add
label define cn90a_chsurvm_lbl 04 `"4"', add
label define cn90a_chsurvm_lbl 05 `"5"', add
label define cn90a_chsurvm_lbl 06 `"6"', add
label define cn90a_chsurvm_lbl 07 `"7"', add
label define cn90a_chsurvm_lbl 08 `"8"', add
label define cn90a_chsurvm_lbl 09 `"9+"', add
label define cn90a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values cn90a_chsurvm cn90a_chsurvm_lbl

label define cn90a_chsurvf_lbl 00 `"0"'
label define cn90a_chsurvf_lbl 01 `"1"', add
label define cn90a_chsurvf_lbl 02 `"2"', add
label define cn90a_chsurvf_lbl 03 `"3"', add
label define cn90a_chsurvf_lbl 04 `"4"', add
label define cn90a_chsurvf_lbl 05 `"5"', add
label define cn90a_chsurvf_lbl 06 `"6"', add
label define cn90a_chsurvf_lbl 07 `"7"', add
label define cn90a_chsurvf_lbl 08 `"8"', add
label define cn90a_chsurvf_lbl 09 `"9+"', add
label define cn90a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values cn90a_chsurvf cn90a_chsurvf_lbl

label define cn90a_chb89_90_lbl 00 `"0 birth"'
label define cn90a_chb89_90_lbl 10 `"One male born first half of 1989"', add
label define cn90a_chb89_90_lbl 11 `"Two male borns first half of 1989"', add
label define cn90a_chb89_90_lbl 12 `"One male born and one female born first half of 1989"', add
label define cn90a_chb89_90_lbl 13 `"One male born first half of 1989 and one male born second half of 1989"', add
label define cn90a_chb89_90_lbl 14 `"One male born first half of 1989 and one female born second half of 1989"', add
label define cn90a_chb89_90_lbl 15 `"One male born first half of 1989 and one male born first half of 1990"', add
label define cn90a_chb89_90_lbl 16 `"One male born first half of 1989 and one female born first half of 1990"', add
label define cn90a_chb89_90_lbl 20 `"Female born first half of 1989"', add
label define cn90a_chb89_90_lbl 21 `"One female born and onemale born first half of 1989"', add
label define cn90a_chb89_90_lbl 22 `"Two female borns first half of 1989"', add
label define cn90a_chb89_90_lbl 23 `"One female born first half of 1989 and one male born second half of 1989"', add
label define cn90a_chb89_90_lbl 24 `"One female born first half of 1989 and one female born second half of 1989"', add
label define cn90a_chb89_90_lbl 25 `"One female born first half of 1989 and one male born first half of 1990"', add
label define cn90a_chb89_90_lbl 26 `"One female born first half of 1989 and one female born first half of 1990"', add
label define cn90a_chb89_90_lbl 30 `"Male born second half of 1989"', add
label define cn90a_chb89_90_lbl 31 `"One male born second half of 1989 and one male born first half of 1989"', add
label define cn90a_chb89_90_lbl 32 `"One male born second half of 1989 and one female born first half of 1989"', add
label define cn90a_chb89_90_lbl 33 `"Two male borns second half of 1989"', add
label define cn90a_chb89_90_lbl 34 `"One male born and one female born second half of 1989"', add
label define cn90a_chb89_90_lbl 35 `"One male born second half of 1989 and one male born first half of 1990"', add
label define cn90a_chb89_90_lbl 36 `"One male born second half of 1989 and one female born first half of 1990"', add
label define cn90a_chb89_90_lbl 40 `"Female born second half of 1989"', add
label define cn90a_chb89_90_lbl 41 `"One female born second half of 1989 and one male born first half of 1989"', add
label define cn90a_chb89_90_lbl 42 `"One female born second half of 1989 and one female born first half of 1989"', add
label define cn90a_chb89_90_lbl 43 `"One female born and onemale born second half of 1989"', add
label define cn90a_chb89_90_lbl 44 `"Two female borns second half of 1989"', add
label define cn90a_chb89_90_lbl 45 `"One female born second half of 1989 and one male born first half of 1990"', add
label define cn90a_chb89_90_lbl 46 `"One female born second half of 1989 and one female born first half of 1990"', add
label define cn90a_chb89_90_lbl 50 `"Male born first half of 1990"', add
label define cn90a_chb89_90_lbl 51 `"One male born first half of 1990 and one male born first half of 1989"', add
label define cn90a_chb89_90_lbl 52 `"One male born first half of 1990 and one female born first half of 1989"', add
label define cn90a_chb89_90_lbl 54 `"One male born first half of 1990 and one female born second half of 1989"', add
label define cn90a_chb89_90_lbl 55 `"Two male borns first half of 1990"', add
label define cn90a_chb89_90_lbl 56 `"One male born and one female born first half of 1990"', add
label define cn90a_chb89_90_lbl 60 `"Female born first half of 1990"', add
label define cn90a_chb89_90_lbl 61 `"One female born first half of 1990 and one male born first half of 1989"', add
label define cn90a_chb89_90_lbl 62 `"One female born first half of 1990 and one female born first half of 1989"', add
label define cn90a_chb89_90_lbl 63 `"One female born first half of 1990 and one male born second half of 1989"', add
label define cn90a_chb89_90_lbl 64 `"One female born first half of 1990 and one female born second half of 1989"', add
label define cn90a_chb89_90_lbl 65 `"One female born and one male born first half of 1990"', add
label define cn90a_chb89_90_lbl 66 `"Two female borns first half of 1990"', add
label define cn90a_chb89_90_lbl 99 `"NIU (not in universe)"', add
label values cn90a_chb89_90 cn90a_chb89_90_lbl

label define cn90a_hhtyap_lbl 0 `"NIU (not in universe)"'
label define cn90a_hhtyap_lbl 1 `"Agriculture"', add
label define cn90a_hhtyap_lbl 2 `"Non-agriculture"', add
label values cn90a_hhtyap cn90a_hhtyap_lbl

label define cn90a_age_lbl 000 `"Less than 1"'
label define cn90a_age_lbl 001 `"1"', add
label define cn90a_age_lbl 002 `"2"', add
label define cn90a_age_lbl 003 `"3"', add
label define cn90a_age_lbl 004 `"4"', add
label define cn90a_age_lbl 005 `"5"', add
label define cn90a_age_lbl 006 `"6"', add
label define cn90a_age_lbl 007 `"7"', add
label define cn90a_age_lbl 008 `"8"', add
label define cn90a_age_lbl 009 `"9"', add
label define cn90a_age_lbl 010 `"10"', add
label define cn90a_age_lbl 011 `"11"', add
label define cn90a_age_lbl 012 `"12"', add
label define cn90a_age_lbl 013 `"13"', add
label define cn90a_age_lbl 014 `"14"', add
label define cn90a_age_lbl 015 `"15"', add
label define cn90a_age_lbl 016 `"16"', add
label define cn90a_age_lbl 017 `"17"', add
label define cn90a_age_lbl 018 `"18"', add
label define cn90a_age_lbl 019 `"19"', add
label define cn90a_age_lbl 020 `"20"', add
label define cn90a_age_lbl 021 `"21"', add
label define cn90a_age_lbl 022 `"22"', add
label define cn90a_age_lbl 023 `"23"', add
label define cn90a_age_lbl 024 `"24"', add
label define cn90a_age_lbl 025 `"25"', add
label define cn90a_age_lbl 026 `"26"', add
label define cn90a_age_lbl 027 `"27"', add
label define cn90a_age_lbl 028 `"28"', add
label define cn90a_age_lbl 029 `"29"', add
label define cn90a_age_lbl 030 `"30"', add
label define cn90a_age_lbl 031 `"31"', add
label define cn90a_age_lbl 032 `"32"', add
label define cn90a_age_lbl 033 `"33"', add
label define cn90a_age_lbl 034 `"34"', add
label define cn90a_age_lbl 035 `"35"', add
label define cn90a_age_lbl 036 `"36"', add
label define cn90a_age_lbl 037 `"37"', add
label define cn90a_age_lbl 038 `"38"', add
label define cn90a_age_lbl 039 `"39"', add
label define cn90a_age_lbl 040 `"40"', add
label define cn90a_age_lbl 041 `"41"', add
label define cn90a_age_lbl 042 `"42"', add
label define cn90a_age_lbl 043 `"43"', add
label define cn90a_age_lbl 044 `"44"', add
label define cn90a_age_lbl 045 `"45"', add
label define cn90a_age_lbl 046 `"46"', add
label define cn90a_age_lbl 047 `"47"', add
label define cn90a_age_lbl 048 `"48"', add
label define cn90a_age_lbl 049 `"49"', add
label define cn90a_age_lbl 050 `"50"', add
label define cn90a_age_lbl 051 `"51"', add
label define cn90a_age_lbl 052 `"52"', add
label define cn90a_age_lbl 053 `"53"', add
label define cn90a_age_lbl 054 `"54"', add
label define cn90a_age_lbl 055 `"55"', add
label define cn90a_age_lbl 056 `"56"', add
label define cn90a_age_lbl 057 `"57"', add
label define cn90a_age_lbl 058 `"58"', add
label define cn90a_age_lbl 059 `"59"', add
label define cn90a_age_lbl 060 `"60"', add
label define cn90a_age_lbl 061 `"61"', add
label define cn90a_age_lbl 062 `"62"', add
label define cn90a_age_lbl 063 `"63"', add
label define cn90a_age_lbl 064 `"64"', add
label define cn90a_age_lbl 065 `"65"', add
label define cn90a_age_lbl 066 `"66"', add
label define cn90a_age_lbl 067 `"67"', add
label define cn90a_age_lbl 068 `"68"', add
label define cn90a_age_lbl 069 `"69"', add
label define cn90a_age_lbl 070 `"70"', add
label define cn90a_age_lbl 071 `"71"', add
label define cn90a_age_lbl 072 `"72"', add
label define cn90a_age_lbl 073 `"73"', add
label define cn90a_age_lbl 074 `"74"', add
label define cn90a_age_lbl 075 `"75"', add
label define cn90a_age_lbl 076 `"76"', add
label define cn90a_age_lbl 077 `"77"', add
label define cn90a_age_lbl 078 `"78"', add
label define cn90a_age_lbl 079 `"79"', add
label define cn90a_age_lbl 080 `"80"', add
label define cn90a_age_lbl 081 `"81"', add
label define cn90a_age_lbl 082 `"82"', add
label define cn90a_age_lbl 083 `"83"', add
label define cn90a_age_lbl 084 `"84"', add
label define cn90a_age_lbl 085 `"85"', add
label define cn90a_age_lbl 086 `"86"', add
label define cn90a_age_lbl 087 `"87"', add
label define cn90a_age_lbl 088 `"88"', add
label define cn90a_age_lbl 089 `"89"', add
label define cn90a_age_lbl 090 `"90"', add
label define cn90a_age_lbl 091 `"91"', add
label define cn90a_age_lbl 092 `"92"', add
label define cn90a_age_lbl 093 `"93"', add
label define cn90a_age_lbl 094 `"94"', add
label define cn90a_age_lbl 095 `"95"', add
label define cn90a_age_lbl 096 `"96"', add
label define cn90a_age_lbl 097 `"97"', add
label define cn90a_age_lbl 098 `"98"', add
label define cn90a_age_lbl 099 `"99"', add
label define cn90a_age_lbl 100 `"100"', add
label define cn90a_age_lbl 101 `"101"', add
label define cn90a_age_lbl 102 `"102"', add
label define cn90a_age_lbl 103 `"103"', add
label define cn90a_age_lbl 104 `"104"', add
label define cn90a_age_lbl 105 `"105"', add
label define cn90a_age_lbl 106 `"106"', add
label define cn90a_age_lbl 107 `"107"', add
label define cn90a_age_lbl 108 `"108"', add
label define cn90a_age_lbl 110 `"110"', add
label define cn90a_age_lbl 115 `"115"', add
label define cn90a_age_lbl 120 `"120"', add
label values cn90a_age cn90a_age_lbl


