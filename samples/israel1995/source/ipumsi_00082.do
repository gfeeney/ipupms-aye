* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    il95a_dwnum     22-27    ///
  byte    il95a_pern      28-29    ///
  byte    il95a_dist      30-30    ///
  byte    il95a_subdist   31-32    ///
  int     il95a_region    33-35    ///
  byte    il95a_locty     36-37    ///
  byte    il95a_metro     38-39    ///
  byte    il95a_rooms     40-41    ///
  byte    il95a_conyr     42-42    ///
  byte    il95a_tenure    43-43    ///
  byte    il95a_landlord  44-44    ///
  byte    il95a_bath      45-45    ///
  byte    il95a_phone     46-46    ///
  byte    il95a_tv        47-47    ///
  byte    il95a_video     48-48    ///
  byte    il95a_washer    49-49    ///
  byte    il95a_micro     50-50    ///
  byte    il95a_dishwash  51-51    ///
  byte    il95a_pc        52-52    ///
  byte    il95a_aircond   53-53    ///
  byte    il95a_solar     54-54    ///
  byte    il95a_dryer     55-55    ///
  byte    il95a_cars      56-56    ///
  byte    il95a_carown    57-57    ///
  int     pernum          58-60    ///
  float   wtper           61-68    ///
  byte    il95a_pernum    69-70    ///
  byte    il95a_longform  71-71    ///
  byte    il95a_hhtypep   72-72    ///
  byte    il95a_relate    73-74    ///
  byte    il95a_sex       75-75    ///
  byte    il95a_ageg      76-77    ///
  byte    il95a_biryr     78-79    ///
  byte    il95a_marst     80-80    ///
  byte    il95a_bornisr   81-81    ///
  byte    il95a_immyr     82-83    ///
  int     il95a_bpl       84-86    ///
  byte    il95a_bplc      87-87    ///
  byte    il95a_bplmc     88-88    ///
  byte    il95a_bplfc     89-89    ///
  byte    il95a_origcf    90-90    ///
  byte    il95a_origcm    91-91    ///
  byte    il95a_relig     92-92    ///
  byte    il95a_specstat  93-93    ///
  byte    il95a_sch       94-94    ///
  byte    il95a_schyr     95-95    ///
  byte    il95a_schyry    96-96    ///
  byte    il95a_degree    97-98    ///
  byte    il95a_locsen    99-99    ///
  byte    il95a_locyr     100-101  ///
  byte    il95a_res5      102-103  ///
  int     il95a_metro5    104-106  ///
  byte    il95a_marrnum   107-107  ///
  byte    il95a_maryro    108-108  ///
  byte    il95a_maryrf    109-109  ///
  byte    il95a_maryrl    110-110  ///
  byte    il95a_chborn    111-111  ///
  byte    il95a_empstyr   112-112  ///
  byte    il95a_empstat   113-113  ///
  byte    il95a_wkmon1    114-114  ///
  byte    il95a_wkmon2    115-115  ///
  byte    il95a_wkhrs     116-117  ///
  byte    il95a_locw      118-119  ///
  int     il95a_metrow    120-122  ///
  byte    il95a_ind       123-124  ///
  byte    il95a_occ       125-126  ///
  byte    il95a_classwk   127-128  ///
  byte    il95a_transwk   129-130  ///
  byte    il95a_wktm1     131-131  ///
  byte    il95a_wktm2     132-133  ///
  byte    il95a_incw      134-135  ///
  byte    il95a_incse     136-137  ///
  byte    il95a_incin     138-138  ///
  byte    il95a_incnw     139-140  ///
  byte    il95a_inchh     141-142  ///
  using `"ipumsi_00082.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var il95a_dwnum    `"Dwelling number"'
label var il95a_pern     `"Number of persons in household"'
label var il95a_dist     `"District"'
label var il95a_subdist  `"Sub-district"'
label var il95a_region   `"Natural region"'
label var il95a_locty    `"Type of locality"'
label var il95a_metro    `"Metropolitan area"'
label var il95a_rooms    `"Number of rooms in dwelling"'
label var il95a_conyr    `"Year when construction completed"'
label var il95a_tenure   `"Ownership of dwelling"'
label var il95a_landlord `"Type of landlord"'
label var il95a_bath     `"Bath/shower"'
label var il95a_phone    `"Telephone"'
label var il95a_tv       `"Television"'
label var il95a_video    `"Video"'
label var il95a_washer   `"Washing machine"'
label var il95a_micro    `"Microwave"'
label var il95a_dishwash `"Dishwasher"'
label var il95a_pc       `"Computer"'
label var il95a_aircond  `"Air conditioner"'
label var il95a_solar    `"Solar heating system"'
label var il95a_dryer    `"Drying machine"'
label var il95a_cars     `"Number of cars"'
label var il95a_carown   `"Car owner"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var il95a_pernum   `"Person number (within household)"'
label var il95a_longform `"Filled extended questionnaire"'
label var il95a_hhtypep  `"Type of individual record"'
label var il95a_relate   `"Relationship to the head of the household"'
label var il95a_sex      `"Sex"'
label var il95a_ageg     `"Age, 5-year groups"'
label var il95a_biryr    `"Year of birth (grouped)"'
label var il95a_marst    `"Marital status"'
label var il95a_bornisr  `"Place of birth"'
label var il95a_immyr    `"Year of immigration"'
label var il95a_bpl      `"Country of birth"'
label var il95a_bplc     `"Continent of birth"'
label var il95a_bplmc    `"Continent mother was born in"'
label var il95a_bplfc    `"Continent father was born in"'
label var il95a_origcf   `"Continent of origin (by father)"'
label var il95a_origcm   `"Continent of origin (by mother)"'
label var il95a_relig    `"Religion"'
label var il95a_specstat `"Special status: new immigrant or foreign worker"'
label var il95a_sch      `"Current schooling"'
label var il95a_schyr    `"Years of schooling"'
label var il95a_schyry   `"Years studying at Yeshiva"'
label var il95a_degree   `"Highest certificate"'
label var il95a_locsen   `"Living in locality since birth"'
label var il95a_locyr    `"Year entered locality"'
label var il95a_res5     `"Place of residence 5 years ago"'
label var il95a_metro5   `"Metropolis or sub-district 5 years ago"'
label var il95a_marrnum  `"Times married"'
label var il95a_maryro   `"Year of only marriage"'
label var il95a_maryrf   `"Year of first marriage"'
label var il95a_maryrl   `"Year of last marriage"'
label var il95a_chborn   `"Number of children ever born"'
label var il95a_empstyr  `"Belongs to annual labor force"'
label var il95a_empstat  `"Belong to weekly labor force"'
label var il95a_wkmon1   `"Months worked last year, grouped"'
label var il95a_wkmon2   `"Months workedlast year"'
label var il95a_wkhrs    `"Hours of work per week"'
label var il95a_locw     `"Locality of workplace"'
label var il95a_metrow   `"Metropolis or sub-district of workplace"'
label var il95a_ind      `"Industry"'
label var il95a_occ      `"Occupation"'
label var il95a_classwk  `"Status at work"'
label var il95a_transwk  `"Transportation to work"'
label var il95a_wktm1    `"Time of work"'
label var il95a_wktm2    `"Time leave home for work"'
label var il95a_incw     `"Gross monthly income from salaried work (ILS)"'
label var il95a_incse    `"Gross monthly income from self-employed work (ILS)"'
label var il95a_incin    `"Total gross monthly income from national insurance (ILS)"'
label var il95a_incnw    `"Total gross household monthly income other than from work (ILS)"'
label var il95a_inchh    `"Total monthly household income (ILS)"'

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

label define il95a_pern_lbl 01 `"1"'
label define il95a_pern_lbl 02 `"2"', add
label define il95a_pern_lbl 03 `"3"', add
label define il95a_pern_lbl 04 `"4"', add
label define il95a_pern_lbl 05 `"5"', add
label define il95a_pern_lbl 06 `"6"', add
label define il95a_pern_lbl 07 `"7"', add
label define il95a_pern_lbl 08 `"8"', add
label define il95a_pern_lbl 09 `"9"', add
label define il95a_pern_lbl 10 `"10"', add
label define il95a_pern_lbl 11 `"11"', add
label define il95a_pern_lbl 12 `"12"', add
label define il95a_pern_lbl 13 `"13"', add
label define il95a_pern_lbl 14 `"14"', add
label define il95a_pern_lbl 15 `"15"', add
label define il95a_pern_lbl 16 `"16"', add
label define il95a_pern_lbl 17 `"17"', add
label define il95a_pern_lbl 18 `"18"', add
label define il95a_pern_lbl 19 `"19"', add
label define il95a_pern_lbl 20 `"20"', add
label define il95a_pern_lbl 23 `"23"', add
label define il95a_pern_lbl 24 `"24"', add
label define il95a_pern_lbl 26 `"26"', add
label values il95a_pern il95a_pern_lbl

label define il95a_dist_lbl 1 `"Jerusalem"'
label define il95a_dist_lbl 2 `"Northern"', add
label define il95a_dist_lbl 3 `"Haifa"', add
label define il95a_dist_lbl 4 `"Central"', add
label define il95a_dist_lbl 5 `"Tel-Aviv"', add
label define il95a_dist_lbl 6 `"Southern"', add
label define il95a_dist_lbl 9 `"Judea, Sammaria and Gaza areas"', add
label values il95a_dist il95a_dist_lbl

label define il95a_subdist_lbl 11 `"Jerusalem"'
label define il95a_subdist_lbl 21 `"Zefat"', add
label define il95a_subdist_lbl 22 `"Kinneret"', add
label define il95a_subdist_lbl 23 `"Yizreel (Afula)"', add
label define il95a_subdist_lbl 24 `"Akko"', add
label define il95a_subdist_lbl 29 `"Golan"', add
label define il95a_subdist_lbl 31 `"Haifa"', add
label define il95a_subdist_lbl 32 `"Hadera"', add
label define il95a_subdist_lbl 41 `"Sharon"', add
label define il95a_subdist_lbl 42 `"Petach-Tikva"', add
label define il95a_subdist_lbl 43 `"Ramla"', add
label define il95a_subdist_lbl 44 `"Rehovot"', add
label define il95a_subdist_lbl 51 `"Tel-Aviv"', add
label define il95a_subdist_lbl 52 `"Ramat-Gan"', add
label define il95a_subdist_lbl 53 `"Hulon"', add
label define il95a_subdist_lbl 61 `"Ashkelon"', add
label define il95a_subdist_lbl 62 `"Beer Sheva"', add
label define il95a_subdist_lbl 99 `"Judea, Samaria and Gaza areas"', add
label values il95a_subdist il95a_subdist_lbl

label define il95a_region_lbl 111 `"Judea mountains"'
label define il95a_region_lbl 237 `"Nazareth Tir an mountains"', add
label define il95a_region_lbl 241 `"Shefar am"', add
label define il95a_region_lbl 311 `"Haifa"', add
label define il95a_region_lbl 324 `"Hadera"', add
label define il95a_region_lbl 411 `"Western Sharon"', add
label define il95a_region_lbl 421 `"Southern Sharon"', add
label define il95a_region_lbl 422 `"Petach-Tikva"', add
label define il95a_region_lbl 431 `"Lod"', add
label define il95a_region_lbl 441 `"Rehovot"', add
label define il95a_region_lbl 442 `"Rishon Letsion"', add
label define il95a_region_lbl 511 `"Tel Aviv"', add
label define il95a_region_lbl 521 `"Ramat-Gan"', add
label define il95a_region_lbl 531 `"Hulon"', add
label define il95a_region_lbl 613 `"Ashdod"', add
label define il95a_region_lbl 614 `"Ashkelon"', add
label define il95a_region_lbl 623 `"Beer Sheva"', add
label define il95a_region_lbl 997 `"Response suppressed"', add
label define il95a_region_lbl 998 `"Unknown, for Judea, Samaria and Gaza strict"', add
label define il95a_region_lbl 999 `"Unknown"', add
label values il95a_region il95a_region_lbl

label define il95a_locty_lbl 11 `"Jerusalem"'
label define il95a_locty_lbl 12 `"Tel Aviv"', add
label define il95a_locty_lbl 13 `"Haifa"', add
label define il95a_locty_lbl 14 `"100,000 - 199,999 residents, Jews"', add
label define il95a_locty_lbl 15 `"50,000 - 99,999 residents, Jews"', add
label define il95a_locty_lbl 16 `"20,000 - 49,999 residents, Jews"', add
label define il95a_locty_lbl 17 `"10,000 - 19,999 residents, Jews"', add
label define il95a_locty_lbl 18 `"2,000 - 9,999 residents, Jews"', add
label define il95a_locty_lbl 25 `"50,000 - 99,000 residents, Arabs and others"', add
label define il95a_locty_lbl 26 `"20,000 - 49,999 residents, Arabs and others"', add
label define il95a_locty_lbl 27 `"10,000 - 19,999 residents, Arabs and others"', add
label define il95a_locty_lbl 28 `"2,000 - 9,999 residents, Arabs and others"', add
label define il95a_locty_lbl 31 `"Moshavim"', add
label define il95a_locty_lbl 33 `"Kibbutzim"', add
label define il95a_locty_lbl 34 `"Other rural localities"', add
label values il95a_locty il95a_locty_lbl

label define il95a_metro_lbl 10 `"Tel-Aviv - core"'
label define il95a_metro_lbl 21 `"Tel-Aviv - inner ring - Northern sector"', add
label define il95a_metro_lbl 22 `"Tel-Aviv - inner ring - Eastern sector"', add
label define il95a_metro_lbl 23 `"Tel-Aviv - inner ring - Southern sector"', add
label define il95a_metro_lbl 31 `"Tel-Aviv - middle ring - Northern sector"', add
label define il95a_metro_lbl 32 `"Tel-Aviv - middle ring - Eastern sector"', add
label define il95a_metro_lbl 33 `"Tel-Aviv - middle ring - Southern sector"', add
label define il95a_metro_lbl 41 `"Tel-Aviv - outer ring - Northern sector"', add
label define il95a_metro_lbl 42 `"Tel-Aviv - outer ring - Eastern sector"', add
label define il95a_metro_lbl 43 `"Tel-Aviv - outer ring - Southern sector"', add
label define il95a_metro_lbl 50 `"Haifa - core"', add
label define il95a_metro_lbl 61 `"Haifa - inner ring - Northern sector"', add
label define il95a_metro_lbl 62 `"Haifa -inner ring - Eastern sector"', add
label define il95a_metro_lbl 63 `"Haifa -inner ring - Southern sector"', add
label define il95a_metro_lbl 71 `"Haifa -outer ring - Northern sector"', add
label define il95a_metro_lbl 72 `"Haifa -outer ring - Eastern sector"', add
label define il95a_metro_lbl 73 `"Haifa -outer ring - Southern sector"', add
label define il95a_metro_lbl 99 `"Not in metropolitan area"', add
label values il95a_metro il95a_metro_lbl

label define il95a_rooms_lbl 01 `"1 room"'
label define il95a_rooms_lbl 02 `"1.5 rooms"', add
label define il95a_rooms_lbl 03 `"2 rooms"', add
label define il95a_rooms_lbl 04 `"2.5 rooms"', add
label define il95a_rooms_lbl 05 `"3 rooms"', add
label define il95a_rooms_lbl 06 `"3.5 rooms"', add
label define il95a_rooms_lbl 07 `"4 rooms"', add
label define il95a_rooms_lbl 08 `"4.5 rooms"', add
label define il95a_rooms_lbl 09 `"5+ rooms"', add
label define il95a_rooms_lbl 98 `"Unknown"', add
label define il95a_rooms_lbl 99 `"NIU (not in universe)"', add
label values il95a_rooms il95a_rooms_lbl

label define il95a_conyr_lbl 1 `"Before 1948"'
label define il95a_conyr_lbl 2 `"1948-1954"', add
label define il95a_conyr_lbl 3 `"1955-1964"', add
label define il95a_conyr_lbl 4 `"1965-1974"', add
label define il95a_conyr_lbl 5 `"1975-1984"', add
label define il95a_conyr_lbl 6 `"1985-1989"', add
label define il95a_conyr_lbl 7 `"1990 +"', add
label define il95a_conyr_lbl 8 `"Unknown"', add
label define il95a_conyr_lbl 9 `"NIU (not in universe)"', add
label values il95a_conyr il95a_conyr_lbl

label define il95a_tenure_lbl 1 `"Family owned"'
label define il95a_tenure_lbl 2 `"Rented - key-money rights"', add
label define il95a_tenure_lbl 3 `"Rented - no key-money rights"', add
label define il95a_tenure_lbl 4 `"Other"', add
label define il95a_tenure_lbl 8 `"Unknown"', add
label define il95a_tenure_lbl 9 `"NIU (not in universe)"', add
label values il95a_tenure il95a_tenure_lbl

label define il95a_landlord_lbl 1 `"Private"'
label define il95a_landlord_lbl 2 `"Public company"', add
label define il95a_landlord_lbl 3 `"Other"', add
label define il95a_landlord_lbl 8 `"Unknown"', add
label define il95a_landlord_lbl 9 `"NIU (not in universe)"', add
label values il95a_landlord il95a_landlord_lbl

label define il95a_bath_lbl 1 `"Bath"'
label define il95a_bath_lbl 2 `"Shower only"', add
label define il95a_bath_lbl 3 `"No bath/shower"', add
label define il95a_bath_lbl 8 `"Unknown"', add
label define il95a_bath_lbl 9 `"NIU (not in universe)"', add
label values il95a_bath il95a_bath_lbl

label define il95a_phone_lbl 1 `"Yes"'
label define il95a_phone_lbl 2 `"No"', add
label define il95a_phone_lbl 8 `"Unknown"', add
label define il95a_phone_lbl 9 `"NIU (not in universe)"', add
label values il95a_phone il95a_phone_lbl

label define il95a_tv_lbl 1 `"Yes"'
label define il95a_tv_lbl 2 `"No"', add
label define il95a_tv_lbl 8 `"Unknown"', add
label define il95a_tv_lbl 9 `"NIU (not in universe)"', add
label values il95a_tv il95a_tv_lbl

label define il95a_video_lbl 1 `"Yes"'
label define il95a_video_lbl 2 `"No"', add
label define il95a_video_lbl 8 `"Unknown"', add
label define il95a_video_lbl 9 `"NIU (not in universe)"', add
label values il95a_video il95a_video_lbl

label define il95a_washer_lbl 1 `"Yes"'
label define il95a_washer_lbl 2 `"No"', add
label define il95a_washer_lbl 8 `"Unknown"', add
label define il95a_washer_lbl 9 `"NIU (not in universe)"', add
label values il95a_washer il95a_washer_lbl

label define il95a_micro_lbl 1 `"Yes"'
label define il95a_micro_lbl 2 `"No"', add
label define il95a_micro_lbl 8 `"Unknown"', add
label define il95a_micro_lbl 9 `"NIU (not in universe)"', add
label values il95a_micro il95a_micro_lbl

label define il95a_dishwash_lbl 1 `"Yes"'
label define il95a_dishwash_lbl 2 `"No"', add
label define il95a_dishwash_lbl 8 `"Unknown"', add
label define il95a_dishwash_lbl 9 `"NIU (not in universe)"', add
label values il95a_dishwash il95a_dishwash_lbl

label define il95a_pc_lbl 1 `"Yes"'
label define il95a_pc_lbl 2 `"No"', add
label define il95a_pc_lbl 8 `"Unknown"', add
label define il95a_pc_lbl 9 `"NIU (not in universe)"', add
label values il95a_pc il95a_pc_lbl

label define il95a_aircond_lbl 1 `"Yes"'
label define il95a_aircond_lbl 2 `"No"', add
label define il95a_aircond_lbl 8 `"Unknown"', add
label define il95a_aircond_lbl 9 `"NIU (not in universe)"', add
label values il95a_aircond il95a_aircond_lbl

label define il95a_solar_lbl 1 `"Yes"'
label define il95a_solar_lbl 2 `"No"', add
label define il95a_solar_lbl 8 `"Unknown"', add
label define il95a_solar_lbl 9 `"NIU (not in universe)"', add
label values il95a_solar il95a_solar_lbl

label define il95a_dryer_lbl 1 `"Yes"'
label define il95a_dryer_lbl 2 `"No"', add
label define il95a_dryer_lbl 8 `"Unknown"', add
label define il95a_dryer_lbl 9 `"NIU (not in universe)"', add
label values il95a_dryer il95a_dryer_lbl

label define il95a_cars_lbl 1 `"No car"'
label define il95a_cars_lbl 2 `"1"', add
label define il95a_cars_lbl 3 `"2 or more"', add
label define il95a_cars_lbl 8 `"Unknown"', add
label define il95a_cars_lbl 9 `"NIU (not in universe)"', add
label values il95a_cars il95a_cars_lbl

label define il95a_carown_lbl 1 `"Family owned"'
label define il95a_carown_lbl 2 `"Employer/company owned"', add
label define il95a_carown_lbl 3 `"Part family owned, part employer owned"', add
label define il95a_carown_lbl 4 `"Other"', add
label define il95a_carown_lbl 8 `"Unknown"', add
label define il95a_carown_lbl 9 `"NIU (not in universe)"', add
label values il95a_carown il95a_carown_lbl

label define il95a_pernum_lbl 00 `"Household record"'
label define il95a_pernum_lbl 01 `"1"', add
label define il95a_pernum_lbl 02 `"2"', add
label define il95a_pernum_lbl 03 `"3"', add
label define il95a_pernum_lbl 04 `"4"', add
label define il95a_pernum_lbl 05 `"5"', add
label define il95a_pernum_lbl 06 `"6"', add
label define il95a_pernum_lbl 07 `"7"', add
label define il95a_pernum_lbl 08 `"8"', add
label define il95a_pernum_lbl 09 `"9"', add
label define il95a_pernum_lbl 10 `"10"', add
label define il95a_pernum_lbl 11 `"11"', add
label define il95a_pernum_lbl 12 `"12"', add
label define il95a_pernum_lbl 13 `"13"', add
label define il95a_pernum_lbl 14 `"14"', add
label define il95a_pernum_lbl 15 `"15"', add
label define il95a_pernum_lbl 16 `"16"', add
label define il95a_pernum_lbl 17 `"17"', add
label define il95a_pernum_lbl 18 `"18"', add
label define il95a_pernum_lbl 19 `"19"', add
label define il95a_pernum_lbl 20 `"20"', add
label define il95a_pernum_lbl 21 `"21"', add
label define il95a_pernum_lbl 22 `"22"', add
label define il95a_pernum_lbl 23 `"23"', add
label define il95a_pernum_lbl 24 `"24"', add
label define il95a_pernum_lbl 25 `"25"', add
label define il95a_pernum_lbl 26 `"26"', add
label values il95a_pernum il95a_pernum_lbl

label define il95a_longform_lbl 1 `"Yes (age 15+)"'
label define il95a_longform_lbl 2 `"No (age 5-14)"', add
label define il95a_longform_lbl 3 `"No (age 0-4)"', add
label values il95a_longform il95a_longform_lbl

label define il95a_hhtypep_lbl 1 `"Ordinary household"'
label define il95a_hhtypep_lbl 2 `"Household in kibbutz"', add
label define il95a_hhtypep_lbl 3 `"Other household (collective)"', add
label values il95a_hhtypep il95a_hhtypep_lbl

label define il95a_relate_lbl 01 `"Head of the household"'
label define il95a_relate_lbl 02 `"Spouse"', add
label define il95a_relate_lbl 03 `"Son/Daughter"', add
label define il95a_relate_lbl 04 `"Father/Mother"', add
label define il95a_relate_lbl 05 `"Son/Daughter in law"', add
label define il95a_relate_lbl 06 `"Father/Mother in law"', add
label define il95a_relate_lbl 07 `"Grand child"', add
label define il95a_relate_lbl 08 `"Other relation"', add
label define il95a_relate_lbl 09 `"Unrelated"', add
label define il95a_relate_lbl 99 `"Unknown"', add
label values il95a_relate il95a_relate_lbl

label define il95a_sex_lbl 1 `"Male"'
label define il95a_sex_lbl 2 `"Female"', add
label values il95a_sex il95a_sex_lbl

label define il95a_ageg_lbl 00 `"0 to 4"'
label define il95a_ageg_lbl 05 `"5 to 9"', add
label define il95a_ageg_lbl 10 `"10 to 14"', add
label define il95a_ageg_lbl 15 `"15 to 17"', add
label define il95a_ageg_lbl 18 `"18 to 19"', add
label define il95a_ageg_lbl 20 `"20 to 24"', add
label define il95a_ageg_lbl 25 `"25 to 29"', add
label define il95a_ageg_lbl 30 `"30 to 34"', add
label define il95a_ageg_lbl 35 `"35 to 39"', add
label define il95a_ageg_lbl 40 `"40 to 44"', add
label define il95a_ageg_lbl 45 `"45 to 49"', add
label define il95a_ageg_lbl 50 `"50 to 54"', add
label define il95a_ageg_lbl 55 `"55 to 59"', add
label define il95a_ageg_lbl 60 `"60 to 64"', add
label define il95a_ageg_lbl 65 `"65 to 69"', add
label define il95a_ageg_lbl 70 `"70 to 74"', add
label define il95a_ageg_lbl 75 `"75 to 79"', add
label define il95a_ageg_lbl 80 `"80+"', add
label values il95a_ageg il95a_ageg_lbl

label define il95a_biryr_lbl 01 `"1991-1995"'
label define il95a_biryr_lbl 02 `"1986-1990"', add
label define il95a_biryr_lbl 03 `"1981-1985"', add
label define il95a_biryr_lbl 04 `"1978-1980"', add
label define il95a_biryr_lbl 05 `"1976-1977"', add
label define il95a_biryr_lbl 06 `"1971-1975"', add
label define il95a_biryr_lbl 07 `"1966-1970"', add
label define il95a_biryr_lbl 08 `"1961-1965"', add
label define il95a_biryr_lbl 09 `"1956-1960"', add
label define il95a_biryr_lbl 10 `"1951-1955"', add
label define il95a_biryr_lbl 11 `"1946-1950"', add
label define il95a_biryr_lbl 12 `"1941-1945"', add
label define il95a_biryr_lbl 13 `"1936-1940"', add
label define il95a_biryr_lbl 14 `"1931-1935"', add
label define il95a_biryr_lbl 15 `"1926-1930"', add
label define il95a_biryr_lbl 16 `"1921-1925"', add
label define il95a_biryr_lbl 17 `"1916-1920"', add
label define il95a_biryr_lbl 18 `"Until 1915"', add
label values il95a_biryr il95a_biryr_lbl

label define il95a_marst_lbl 1 `"Married"'
label define il95a_marst_lbl 2 `"Divorced"', add
label define il95a_marst_lbl 3 `"Widowed"', add
label define il95a_marst_lbl 4 `"Single"', add
label values il95a_marst il95a_marst_lbl

label define il95a_bornisr_lbl 1 `"Born in Israel"'
label define il95a_bornisr_lbl 2 `"Born abroad"', add
label values il95a_bornisr il95a_bornisr_lbl

label define il95a_immyr_lbl 01 `"1992-1995"'
label define il95a_immyr_lbl 02 `"1990-1991"', add
label define il95a_immyr_lbl 03 `"1980-1989"', add
label define il95a_immyr_lbl 04 `"1975-1979"', add
label define il95a_immyr_lbl 05 `"1972-1974"', add
label define il95a_immyr_lbl 06 `"1965-1971"', add
label define il95a_immyr_lbl 07 `"1961-1964"', add
label define il95a_immyr_lbl 08 `"1955-1960"', add
label define il95a_immyr_lbl 09 `"1948-1955"', add
label define il95a_immyr_lbl 10 `"Until 1947"', add
label define il95a_immyr_lbl 99 `"NIU (not in universe)"', add
label values il95a_immyr il95a_immyr_lbl

label define il95a_bpl_lbl 001 `"Rest of USSR in Asia"'
label define il95a_bpl_lbl 002 `"Rest of Asia"', add
label define il95a_bpl_lbl 003 `"Rest of Africa"', add
label define il95a_bpl_lbl 004 `"Rest of Europe (not-including former USSR)"', add
label define il95a_bpl_lbl 005 `"Rest of USSR in Europe"', add
label define il95a_bpl_lbl 006 `"Latin America"', add
label define il95a_bpl_lbl 008 `"North America / Oceania"', add
label define il95a_bpl_lbl 015 `"Turkey"', add
label define il95a_bpl_lbl 050 `"Iraq"', add
label define il95a_bpl_lbl 070 `"Yemen"', add
label define il95a_bpl_lbl 090 `"Iran"', add
label define il95a_bpl_lbl 200 `"Morocco"', add
label define il95a_bpl_lbl 230 `"Libya"', add
label define il95a_bpl_lbl 240 `"Egypt"', add
label define il95a_bpl_lbl 250 `"Ethiopia"', add
label define il95a_bpl_lbl 305 `"Ukraine"', add
label define il95a_bpl_lbl 306 `"Russia"', add
label define il95a_bpl_lbl 308 `"Georgia"', add
label define il95a_bpl_lbl 310 `"Poland"', add
label define il95a_bpl_lbl 315 `"Uzbekistan"', add
label define il95a_bpl_lbl 400 `"Romania"', add
label define il95a_bpl_lbl 640 `"France"', add
label define il95a_bpl_lbl 960 `"India or Pakistan"', add
label define il95a_bpl_lbl 970 `"Algeria or Tunisia"', add
label define il95a_bpl_lbl 980 `"Bulgaria or Greece"', add
label define il95a_bpl_lbl 981 `"Germany or Austria"', add
label define il95a_bpl_lbl 999 `"NIU (not in universe)"', add
label values il95a_bpl il95a_bpl_lbl

label define il95a_bplc_lbl 2 `"Asia"'
label define il95a_bplc_lbl 3 `"Africa"', add
label define il95a_bplc_lbl 4 `"Europe (including born in former USSR who didn't specify the republic)"', add
label define il95a_bplc_lbl 8 `"America or Oceania"', add
label define il95a_bplc_lbl 9 `"NIU (not in universe)"', add
label values il95a_bplc il95a_bplc_lbl

label define il95a_bplmc_lbl 1 `"Israel"'
label define il95a_bplmc_lbl 2 `"Asia"', add
label define il95a_bplmc_lbl 3 `"Africa"', add
label define il95a_bplmc_lbl 4 `"Europe (including born in former USSR who didn't specify the republic)"', add
label define il95a_bplmc_lbl 8 `"America or Oceania"', add
label define il95a_bplmc_lbl 9 `"NIU (not in universe)"', add
label values il95a_bplmc il95a_bplmc_lbl

label define il95a_bplfc_lbl 1 `"Israel"'
label define il95a_bplfc_lbl 2 `"Asia"', add
label define il95a_bplfc_lbl 3 `"Africa"', add
label define il95a_bplfc_lbl 4 `"Europe (including born in former USSR who didn't specify the republic)"', add
label define il95a_bplfc_lbl 8 `"America or Oceania"', add
label define il95a_bplfc_lbl 9 `"NIU (not in universe)"', add
label values il95a_bplfc il95a_bplfc_lbl

label define il95a_origcf_lbl 1 `"Israel"'
label define il95a_origcf_lbl 2 `"Asia"', add
label define il95a_origcf_lbl 3 `"Africa"', add
label define il95a_origcf_lbl 4 `"Europe"', add
label define il95a_origcf_lbl 8 `"America or Oceania"', add
label values il95a_origcf il95a_origcf_lbl

label define il95a_origcm_lbl 1 `"Israel"'
label define il95a_origcm_lbl 2 `"Asia"', add
label define il95a_origcm_lbl 3 `"Africa"', add
label define il95a_origcm_lbl 4 `"Europe"', add
label define il95a_origcm_lbl 8 `"America or Oceania"', add
label values il95a_origcm il95a_origcm_lbl

label define il95a_relig_lbl 1 `"Jewish"'
label define il95a_relig_lbl 2 `"Moslem"', add
label define il95a_relig_lbl 3 `"Christian"', add
label define il95a_relig_lbl 4 `"Druze"', add
label define il95a_relig_lbl 5 `"Others and unknown"', add
label values il95a_relig il95a_relig_lbl

label define il95a_specstat_lbl 1 `"New immigrant"'
label define il95a_specstat_lbl 2 `"Foreign worker"', add
label define il95a_specstat_lbl 3 `"Other"', add
label values il95a_specstat il95a_specstat_lbl

label define il95a_sch_lbl 1 `"Studying currently"'
label define il95a_sch_lbl 2 `"Studied in the past"', add
label define il95a_sch_lbl 3 `"Never studied"', add
label define il95a_sch_lbl 8 `"Unknown"', add
label define il95a_sch_lbl 9 `"NIU (not in universe)"', add
label values il95a_sch il95a_sch_lbl

label define il95a_schyr_lbl 0 `"NIU (not in universe)"'
label define il95a_schyr_lbl 1 `"1-4"', add
label define il95a_schyr_lbl 2 `"5-8"', add
label define il95a_schyr_lbl 3 `"9-10"', add
label define il95a_schyr_lbl 4 `"11-12"', add
label define il95a_schyr_lbl 5 `"13-15"', add
label define il95a_schyr_lbl 6 `"16+"', add
label define il95a_schyr_lbl 9 `"Unknown"', add
label values il95a_schyr il95a_schyr_lbl

label define il95a_schyry_lbl 0 `"Did not study at Yeshiva"'
label define il95a_schyry_lbl 1 `"1-4"', add
label define il95a_schyry_lbl 2 `"5-8"', add
label define il95a_schyry_lbl 3 `"9-10"', add
label define il95a_schyry_lbl 4 `"11-12"', add
label define il95a_schyry_lbl 5 `"13-15"', add
label define il95a_schyry_lbl 6 `"16+"', add
label define il95a_schyry_lbl 8 `"Studied, number of years unknown"', add
label define il95a_schyry_lbl 9 `"NIU (not in universe)"', add
label values il95a_schyry il95a_schyry_lbl

label define il95a_degree_lbl 01 `"Did not get any certificate"'
label define il95a_degree_lbl 02 `"Primary or intermediate school"', add
label define il95a_degree_lbl 03 `"Secondary school"', add
label define il95a_degree_lbl 04 `"Matriculation (Bagrut)"', add
label define il95a_degree_lbl 05 `"Post-secondary certificate (not academic)"', add
label define il95a_degree_lbl 06 `"Academic degree - bachelors"', add
label define il95a_degree_lbl 07 `"Academic degree - masters or above"', add
label define il95a_degree_lbl 08 `"Another post-secondary certificate"', add
label define il95a_degree_lbl 98 `"Unknown"', add
label define il95a_degree_lbl 99 `"NIU (not in universe)"', add
label values il95a_degree il95a_degree_lbl

label define il95a_locsen_lbl 1 `"Lives in locality from birth"'
label define il95a_locsen_lbl 2 `"Does not live in locality from birth"', add
label define il95a_locsen_lbl 8 `"Unknown"', add
label define il95a_locsen_lbl 9 `"NIU (not in universe)"', add
label values il95a_locsen il95a_locsen_lbl

label define il95a_locyr_lbl 01 `"Before 1947"'
label define il95a_locyr_lbl 02 `"1948-1954"', add
label define il95a_locyr_lbl 03 `"1955-1964"', add
label define il95a_locyr_lbl 04 `"1965-1971"', add
label define il95a_locyr_lbl 05 `"1972-1974"', add
label define il95a_locyr_lbl 06 `"1975-1979"', add
label define il95a_locyr_lbl 07 `"1980-1983"', add
label define il95a_locyr_lbl 08 `"1984-1989"', add
label define il95a_locyr_lbl 09 `"1990+"', add
label define il95a_locyr_lbl 98 `"Unknown"', add
label define il95a_locyr_lbl 99 `"NIU (not in universe)"', add
label values il95a_locyr il95a_locyr_lbl

label define il95a_res5_lbl 01 `"Lived abroad"'
label define il95a_res5_lbl 02 `"Same address (did not change)"', add
label define il95a_res5_lbl 03 `"Changed: same locality"', add
label define il95a_res5_lbl 04 `"Changed: same natural area"', add
label define il95a_res5_lbl 05 `"Changed: another natural area, same sub-district"', add
label define il95a_res5_lbl 06 `"Changed: another sub-district, same district"', add
label define il95a_res5_lbl 07 `"Changed: another district"', add
label define il95a_res5_lbl 08 `"5 years ago live on ship, military camp"', add
label define il95a_res5_lbl 09 `"Changed: from another unknown locality"', add
label define il95a_res5_lbl 98 `"Unknown"', add
label define il95a_res5_lbl 99 `"NIU (not in universe)"', add
label values il95a_res5 il95a_res5_lbl

label define il95a_metro5_lbl 001 `"Lived abroad"'
label define il95a_metro5_lbl 002 `"Same address"', add
label define il95a_metro5_lbl 003 `"Another address, same locality"', add
label define il95a_metro5_lbl 007 `"Lived on ship, in military camp"', add
label define il95a_metro5_lbl 008 `"Another uknown locality"', add
label define il95a_metro5_lbl 010 `"Tel-Aviv - Core - Another locality"', add
label define il95a_metro5_lbl 021 `"Tel-Aviv - Another locality, Inner ring, Northern sector"', add
label define il95a_metro5_lbl 022 `"Tel-Aviv - Another locality, Inner ring, Eastern sector"', add
label define il95a_metro5_lbl 023 `"Tel-Aviv - Another locality, Inner ring, Southern sector"', add
label define il95a_metro5_lbl 031 `"Tel-Aviv - Another locality, Middle ring, Northern sector"', add
label define il95a_metro5_lbl 032 `"Tel-Aviv - Another locality, Middle ring, Eastern sector"', add
label define il95a_metro5_lbl 033 `"Tel-Aviv - Another locality, Middle ring, Southern sector"', add
label define il95a_metro5_lbl 041 `"Tel-Aviv - Another locality, Outer ring, Northern sector"', add
label define il95a_metro5_lbl 042 `"Tel-Aviv - Another locality, Outer ring, Eastern sector"', add
label define il95a_metro5_lbl 043 `"Tel-Aviv - Another locality, Outer ring, Southern sector"', add
label define il95a_metro5_lbl 050 `"Haifa Core, Another locality"', add
label define il95a_metro5_lbl 061 `"Haifa, Another locality, Inner ring, Northern sector"', add
label define il95a_metro5_lbl 062 `"Haifa, Another locality, Inner ring, Eastern sector"', add
label define il95a_metro5_lbl 063 `"Haifa, Another locality, Inner ring, Southern sector"', add
label define il95a_metro5_lbl 071 `"Haifa, Another locality, Outer ring, Northern sector"', add
label define il95a_metro5_lbl 072 `"Haifa, Another locality, Outer ring, Eastern sector"', add
label define il95a_metro5_lbl 073 `"Haifa, Another locality, Outer ring, Southern sector"', add
label define il95a_metro5_lbl 110 `"Sub-district Jerusalem"', add
label define il95a_metro5_lbl 210 `"Sub-district Zefat"', add
label define il95a_metro5_lbl 220 `"Sub-district Kinneret"', add
label define il95a_metro5_lbl 230 `"Sub-district Yizreel (Afula)"', add
label define il95a_metro5_lbl 240 `"Sub-district Akko"', add
label define il95a_metro5_lbl 250 `"Sub-district Nazeret"', add
label define il95a_metro5_lbl 290 `"Sub-district Golan"', add
label define il95a_metro5_lbl 320 `"Sub-district Hadera"', add
label define il95a_metro5_lbl 610 `"Sub-district Ashkelon"', add
label define il95a_metro5_lbl 620 `"Sub-district Beer Sheva"', add
label define il95a_metro5_lbl 990 `"Another locality, Judea, Samaria, Gaza"', add
label define il95a_metro5_lbl 998 `"Unknown"', add
label define il95a_metro5_lbl 999 `"NIU (not in universe)"', add
label values il95a_metro5 il95a_metro5_lbl

label define il95a_marrnum_lbl 1 `"Never"'
label define il95a_marrnum_lbl 2 `"Once"', add
label define il95a_marrnum_lbl 3 `"More than once"', add
label define il95a_marrnum_lbl 4 `"Does not know how many times"', add
label define il95a_marrnum_lbl 8 `"Unknown"', add
label define il95a_marrnum_lbl 9 `"NIU (not in universe)"', add
label values il95a_marrnum il95a_marrnum_lbl

label define il95a_maryro_lbl 1 `"Before 1948"'
label define il95a_maryro_lbl 2 `"1949-1963"', add
label define il95a_maryro_lbl 3 `"1964-1973"', add
label define il95a_maryro_lbl 4 `"1974-1978"', add
label define il95a_maryro_lbl 5 `"1979-1983"', add
label define il95a_maryro_lbl 6 `"1984-1989"', add
label define il95a_maryro_lbl 7 `"1990+"', add
label define il95a_maryro_lbl 8 `"Unknown"', add
label define il95a_maryro_lbl 9 `"NIU (not in universe)"', add
label values il95a_maryro il95a_maryro_lbl

label define il95a_maryrf_lbl 1 `"Before 1948"'
label define il95a_maryrf_lbl 2 `"1949-1963"', add
label define il95a_maryrf_lbl 3 `"1964-1973"', add
label define il95a_maryrf_lbl 4 `"1974-1978"', add
label define il95a_maryrf_lbl 5 `"1979-1983"', add
label define il95a_maryrf_lbl 6 `"1984-1989"', add
label define il95a_maryrf_lbl 7 `"1990+"', add
label define il95a_maryrf_lbl 8 `"Unknown"', add
label define il95a_maryrf_lbl 9 `"NIU (not in universe)"', add
label values il95a_maryrf il95a_maryrf_lbl

label define il95a_maryrl_lbl 1 `"Before 1948"'
label define il95a_maryrl_lbl 2 `"1949-1963"', add
label define il95a_maryrl_lbl 3 `"1964-1973"', add
label define il95a_maryrl_lbl 4 `"1974-1978"', add
label define il95a_maryrl_lbl 5 `"1979-1983"', add
label define il95a_maryrl_lbl 6 `"1984-1989"', add
label define il95a_maryrl_lbl 7 `"1990+"', add
label define il95a_maryrl_lbl 8 `"Unknown"', add
label define il95a_maryrl_lbl 9 `"NIU (not in universe)"', add
label values il95a_maryrl il95a_maryrl_lbl

label define il95a_chborn_lbl 0 `"0"'
label define il95a_chborn_lbl 1 `"1"', add
label define il95a_chborn_lbl 2 `"2"', add
label define il95a_chborn_lbl 3 `"3-4"', add
label define il95a_chborn_lbl 4 `"5-7"', add
label define il95a_chborn_lbl 5 `"8+"', add
label define il95a_chborn_lbl 8 `"Unknown"', add
label define il95a_chborn_lbl 9 `"NIU (not in universe)"', add
label values il95a_chborn il95a_chborn_lbl

label define il95a_empstyr_lbl 1 `"No"'
label define il95a_empstyr_lbl 2 `"Yes"', add
label define il95a_empstyr_lbl 8 `"Unknown"', add
label define il95a_empstyr_lbl 9 `"NIU (not in universe)"', add
label values il95a_empstyr il95a_empstyr_lbl

label define il95a_empstat_lbl 1 `"No"'
label define il95a_empstat_lbl 2 `"Yes"', add
label define il95a_empstat_lbl 3 `"Yes, but did not work"', add
label define il95a_empstat_lbl 8 `"Unknown"', add
label define il95a_empstat_lbl 9 `"NIU (not in universe)"', add
label values il95a_empstat il95a_empstat_lbl

label define il95a_wkmon1_lbl 1 `"Never worked"'
label define il95a_wkmon1_lbl 2 `"Worked all 12 months"', add
label define il95a_wkmon1_lbl 3 `"Worker less than 12 months"', add
label define il95a_wkmon1_lbl 4 `"Worked,  months unknown"', add
label define il95a_wkmon1_lbl 7 `"Regular military service"', add
label define il95a_wkmon1_lbl 8 `"Unknown"', add
label define il95a_wkmon1_lbl 9 `"NIU (not in universe)"', add
label values il95a_wkmon1 il95a_wkmon1_lbl

label define il95a_wkmon2_lbl 0 `"Did not work"'
label define il95a_wkmon2_lbl 1 `"1-3 months"', add
label define il95a_wkmon2_lbl 2 `"4-6"', add
label define il95a_wkmon2_lbl 3 `"7-9"', add
label define il95a_wkmon2_lbl 4 `"10-11"', add
label define il95a_wkmon2_lbl 5 `"12"', add
label define il95a_wkmon2_lbl 7 `"Regular military service"', add
label define il95a_wkmon2_lbl 8 `"Unknown"', add
label define il95a_wkmon2_lbl 9 `"NIU (not in universe)"', add
label values il95a_wkmon2 il95a_wkmon2_lbl

label define il95a_wkhrs_lbl 01 `"1-4 hours"'
label define il95a_wkhrs_lbl 02 `"5-9"', add
label define il95a_wkhrs_lbl 03 `"10-14"', add
label define il95a_wkhrs_lbl 04 `"15-19"', add
label define il95a_wkhrs_lbl 05 `"20-24"', add
label define il95a_wkhrs_lbl 06 `"25-29"', add
label define il95a_wkhrs_lbl 07 `"30-34"', add
label define il95a_wkhrs_lbl 08 `"35-39"', add
label define il95a_wkhrs_lbl 09 `"40-44"', add
label define il95a_wkhrs_lbl 10 `"45+"', add
label define il95a_wkhrs_lbl 98 `"Unknown"', add
label define il95a_wkhrs_lbl 99 `"NIU (not in universe)"', add
label values il95a_wkhrs il95a_wkhrs_lbl

label define il95a_locw_lbl 01 `"Works at home"'
label define il95a_locw_lbl 02 `"Same as residence"', add
label define il95a_locw_lbl 03 `"Another locality, same natural region"', add
label define il95a_locw_lbl 04 `"Another natural region, same sub-district"', add
label define il95a_locw_lbl 05 `"Another sub-district, same district"', add
label define il95a_locw_lbl 06 `"Another district"', add
label define il95a_locw_lbl 07 `"Ship or camp"', add
label define il95a_locw_lbl 98 `"Unknown"', add
label define il95a_locw_lbl 99 `"NIU (not in universe)"', add
label values il95a_locw il95a_locw_lbl

label define il95a_metrow_lbl 001 `"Works at home"'
label define il95a_metrow_lbl 002 `"Same locality as residence"', add
label define il95a_metrow_lbl 007 `"Ship or camp"', add
label define il95a_metrow_lbl 010 `"Tel-Aviv - Core - Another locality"', add
label define il95a_metrow_lbl 021 `"Tel-Aviv - Another locality, Inner ring, Northern sector"', add
label define il95a_metrow_lbl 022 `"Tel-Aviv - Another locality, Inner ring, Eastern sector"', add
label define il95a_metrow_lbl 023 `"Tel-Aviv - Another locality, Inner ring, Southern sector"', add
label define il95a_metrow_lbl 031 `"Tel-Aviv - Another locality, Middle ring, Northern sector"', add
label define il95a_metrow_lbl 032 `"Tel-Aviv - Another locality, Middle ring, Eastern sector"', add
label define il95a_metrow_lbl 033 `"Tel-Aviv - Another locality, Middle ring, Southern sector"', add
label define il95a_metrow_lbl 041 `"Tel-Aviv - Another locality, Outer ring, Northern sector"', add
label define il95a_metrow_lbl 042 `"Tel-Aviv - Another locality, Outer ring, Eastern sector"', add
label define il95a_metrow_lbl 043 `"Tel-Aviv - Another locality, Outer ring, Southern sector"', add
label define il95a_metrow_lbl 050 `"Haifa Core, Another locality"', add
label define il95a_metrow_lbl 061 `"Haifa, Another locality, Inner ring, Northern sector"', add
label define il95a_metrow_lbl 062 `"Haifa, Another locality, Inner ring, Eastern sector"', add
label define il95a_metrow_lbl 063 `"Haifa, Another locality, Inner ring, Southern sector"', add
label define il95a_metrow_lbl 071 `"Haifa, Another locality, Outer ring, Northern sector"', add
label define il95a_metrow_lbl 072 `"Haifa, Another locality, Outer ring, Eastern sector"', add
label define il95a_metrow_lbl 073 `"Haifa, Another locality, Outer ring, Southern sector"', add
label define il95a_metrow_lbl 110 `"Sub-district Jerusalem"', add
label define il95a_metrow_lbl 210 `"Sub-district Zefat"', add
label define il95a_metrow_lbl 220 `"Sub-district Kinneret"', add
label define il95a_metrow_lbl 230 `"Sub-district Yizreel (Afula)"', add
label define il95a_metrow_lbl 240 `"Sub-district Akko"', add
label define il95a_metrow_lbl 250 `"Sub-district Nazeret"', add
label define il95a_metrow_lbl 290 `"Sub-district Golan"', add
label define il95a_metrow_lbl 310 `"Sub-district Haifa"', add
label define il95a_metrow_lbl 320 `"Sub-district Hadera"', add
label define il95a_metrow_lbl 410 `"Sub-district Sharon"', add
label define il95a_metrow_lbl 420 `"Sub-district Petach-Tikva"', add
label define il95a_metrow_lbl 430 `"Sub-district Ramla"', add
label define il95a_metrow_lbl 440 `"Sub-district Rehovot"', add
label define il95a_metrow_lbl 510 `"Sub-district Tel-Aviv"', add
label define il95a_metrow_lbl 520 `"Sub-district Ramat Gan"', add
label define il95a_metrow_lbl 530 `"Sub-district Holon"', add
label define il95a_metrow_lbl 610 `"Sub-district Ashkelon"', add
label define il95a_metrow_lbl 620 `"Sub-district Beer Sheva"', add
label define il95a_metrow_lbl 990 `"Another locality, Judea, Samaria, Gaza"', add
label define il95a_metrow_lbl 998 `"Unknown"', add
label define il95a_metrow_lbl 999 `"NIU (not in universe)"', add
label values il95a_metrow il95a_metrow_lbl

label define il95a_ind_lbl 01 `"Agriculture"'
label define il95a_ind_lbl 02 `"Manufacturing"', add
label define il95a_ind_lbl 03 `"Electricity and water supply"', add
label define il95a_ind_lbl 04 `"Construction"', add
label define il95a_ind_lbl 05 `"Wholesale and retail trade"', add
label define il95a_ind_lbl 06 `"Accommodation services and restaurants"', add
label define il95a_ind_lbl 07 `"Transport, storage and communication"', add
label define il95a_ind_lbl 08 `"Banking, insurance"', add
label define il95a_ind_lbl 09 `"Real estate, renting and business activities"', add
label define il95a_ind_lbl 10 `"Public administration"', add
label define il95a_ind_lbl 11 `"Education"', add
label define il95a_ind_lbl 12 `"Health services, welfare, social work"', add
label define il95a_ind_lbl 13 `"Community, social and other services"', add
label define il95a_ind_lbl 14 `"Private households with domestic personnel"', add
label define il95a_ind_lbl 15 `"Extra-territorial organizations and bodies"', add
label define il95a_ind_lbl 98 `"Unknown"', add
label define il95a_ind_lbl 99 `"NIU (not in universe)"', add
label values il95a_ind il95a_ind_lbl

label define il95a_occ_lbl 00 `"Academic professionals"'
label define il95a_occ_lbl 01 `"Associate professionals and technicians"', add
label define il95a_occ_lbl 02 `"Managers"', add
label define il95a_occ_lbl 03 `"Clerical workers"', add
label define il95a_occ_lbl 04 `"Agents, sales workers and service workers"', add
label define il95a_occ_lbl 05 `"Skilled agricultural workers"', add
label define il95a_occ_lbl 06 `"Skilled workers in industry, construction and other skilled workers"', add
label define il95a_occ_lbl 07 `"Unskilled workers"', add
label define il95a_occ_lbl 98 `"Unknown"', add
label define il95a_occ_lbl 99 `"NIU (not in universe)"', add
label values il95a_occ il95a_occ_lbl

label define il95a_classwk_lbl 01 `"Salaried worker/Member of cooperative"'
label define il95a_classwk_lbl 02 `"Self-employed with no salaried workers"', add
label define il95a_classwk_lbl 03 `"Self-employed with 1-2 salaried workers"', add
label define il95a_classwk_lbl 04 `"Self-employed with 3-9 salaried workers"', add
label define il95a_classwk_lbl 05 `"Self-employed with 10 + salaried workers"', add
label define il95a_classwk_lbl 07 `"Kibbutz member (not salaried worker)"', add
label define il95a_classwk_lbl 08 `"Unpaid family member in family business"', add
label define il95a_classwk_lbl 09 `"Self-employed with unknown number of salaried workers"', add
label define il95a_classwk_lbl 98 `"Unknown"', add
label define il95a_classwk_lbl 99 `"NIU (not in universe)"', add
label values il95a_classwk il95a_classwk_lbl

label define il95a_transwk_lbl 01 `"Works at home"'
label define il95a_transwk_lbl 02 `"Walks"', add
label define il95a_transwk_lbl 03 `"Bicycle"', add
label define il95a_transwk_lbl 04 `"Motorcycle/scooter/motorbike"', add
label define il95a_transwk_lbl 05 `"Organized transportation by employer"', add
label define il95a_transwk_lbl 06 `"Private car - driver"', add
label define il95a_transwk_lbl 07 `"Private car - passenger"', add
label define il95a_transwk_lbl 08 `"Bus using one bus-line"', add
label define il95a_transwk_lbl 09 `"Bus using more than one bus-lines"', add
label define il95a_transwk_lbl 10 `"Train"', add
label define il95a_transwk_lbl 11 `"Taxi"', add
label define il95a_transwk_lbl 12 `"Other vehicle"', add
label define il95a_transwk_lbl 98 `"Unknown"', add
label define il95a_transwk_lbl 99 `"NIU (not in universe)"', add
label values il95a_transwk il95a_transwk_lbl

label define il95a_wktm1_lbl 1 `"Morning"'
label define il95a_wktm1_lbl 2 `"Afternoon"', add
label define il95a_wktm1_lbl 3 `"Works at home"', add
label define il95a_wktm1_lbl 8 `"Unknown"', add
label define il95a_wktm1_lbl 9 `"NIU (not in universe)"', add
label values il95a_wktm1 il95a_wktm1_lbl

label define il95a_wktm2_lbl 01 `"01:00-04:59"'
label define il95a_wktm2_lbl 02 `"5:00"', add
label define il95a_wktm2_lbl 03 `"05:01-05:29"', add
label define il95a_wktm2_lbl 04 `"05:30-05:59"', add
label define il95a_wktm2_lbl 05 `"6:00"', add
label define il95a_wktm2_lbl 06 `"06:01-06:29"', add
label define il95a_wktm2_lbl 07 `"06:30-06:59"', add
label define il95a_wktm2_lbl 08 `"7:00"', add
label define il95a_wktm2_lbl 09 `"07:01-07:29"', add
label define il95a_wktm2_lbl 10 `"07:30-07:59"', add
label define il95a_wktm2_lbl 11 `"8:00"', add
label define il95a_wktm2_lbl 12 `"08:01-08:29"', add
label define il95a_wktm2_lbl 13 `"08:30-08:59"', add
label define il95a_wktm2_lbl 14 `"9:00"', add
label define il95a_wktm2_lbl 15 `"09:01-09:59"', add
label define il95a_wktm2_lbl 16 `"10:00"', add
label define il95a_wktm2_lbl 17 `"10:01-10:59"', add
label define il95a_wktm2_lbl 18 `"11:00"', add
label define il95a_wktm2_lbl 19 `"11:01-11:59"', add
label define il95a_wktm2_lbl 20 `"12:00"', add
label define il95a_wktm2_lbl 21 `"12:01-12:59"', add
label define il95a_wktm2_lbl 22 `"13:00"', add
label define il95a_wktm2_lbl 23 `"13:01-13:59"', add
label define il95a_wktm2_lbl 24 `"14:00"', add
label define il95a_wktm2_lbl 25 `"14:01-14:59"', add
label define il95a_wktm2_lbl 26 `"15:00"', add
label define il95a_wktm2_lbl 27 `"15:01-15:59"', add
label define il95a_wktm2_lbl 28 `"16:00"', add
label define il95a_wktm2_lbl 29 `"16:01-16:59"', add
label define il95a_wktm2_lbl 30 `"17:00"', add
label define il95a_wktm2_lbl 31 `"17:01-17:59"', add
label define il95a_wktm2_lbl 32 `"18:00"', add
label define il95a_wktm2_lbl 33 `"18:01-18:59"', add
label define il95a_wktm2_lbl 34 `"19:00"', add
label define il95a_wktm2_lbl 35 `"19:01-19:59"', add
label define il95a_wktm2_lbl 36 `"20:00"', add
label define il95a_wktm2_lbl 37 `"20:01-20:59"', add
label define il95a_wktm2_lbl 38 `"21:00"', add
label define il95a_wktm2_lbl 39 `"21:01-21:59"', add
label define il95a_wktm2_lbl 40 `"22:00"', add
label define il95a_wktm2_lbl 41 `"22:01-22:59"', add
label define il95a_wktm2_lbl 42 `"23:00"', add
label define il95a_wktm2_lbl 43 `"23:01-23:59"', add
label define il95a_wktm2_lbl 44 `"24:00"', add
label define il95a_wktm2_lbl 45 `"24:01-24:59"', add
label define il95a_wktm2_lbl 94 `"Work at home"', add
label define il95a_wktm2_lbl 98 `"Unknown"', add
label define il95a_wktm2_lbl 99 `"NIU (not in universe)"', add
label values il95a_wktm2 il95a_wktm2_lbl

label define il95a_incw_lbl 00 `"No income"'
label define il95a_incw_lbl 01 `"100-1999 ILS (New Israeli sheqel)"', add
label define il95a_incw_lbl 02 `"2000-2499 ILS"', add
label define il95a_incw_lbl 03 `"2500-2999 ILS"', add
label define il95a_incw_lbl 04 `"3000-3999 ILS"', add
label define il95a_incw_lbl 05 `"4000-4999 ILS"', add
label define il95a_incw_lbl 06 `"5000-5999 ILS"', add
label define il95a_incw_lbl 07 `"6000-6999 ILS"', add
label define il95a_incw_lbl 08 `"7000-7999 ILS"', add
label define il95a_incw_lbl 09 `"8000-8999 ILS"', add
label define il95a_incw_lbl 10 `"9000-9999 ILS"', add
label define il95a_incw_lbl 11 `"10000-10999 ILS"', add
label define il95a_incw_lbl 12 `"11000-11999 ILS"', add
label define il95a_incw_lbl 13 `"12000-12999 ILS"', add
label define il95a_incw_lbl 14 `"13000-13999 ILS"', add
label define il95a_incw_lbl 15 `"14000-14999 ILS"', add
label define il95a_incw_lbl 16 `"15000-15999 ILS"', add
label define il95a_incw_lbl 17 `"16000-16999 ILS"', add
label define il95a_incw_lbl 18 `"17000-17999 ILS"', add
label define il95a_incw_lbl 19 `"18000-18999 ILS"', add
label define il95a_incw_lbl 20 `"19000-19999 ILS"', add
label define il95a_incw_lbl 21 `"20000+ ILS"', add
label define il95a_incw_lbl 98 `"Unknown"', add
label define il95a_incw_lbl 99 `"NIU (not in universe)"', add
label values il95a_incw il95a_incw_lbl

label define il95a_incse_lbl 00 `"No income"'
label define il95a_incse_lbl 01 `"100-1999 ILS (New Israeli sheqel)"', add
label define il95a_incse_lbl 02 `"2000-24999 ILS"', add
label define il95a_incse_lbl 03 `"2500-2999 ILS"', add
label define il95a_incse_lbl 04 `"3000-3999 ILS"', add
label define il95a_incse_lbl 05 `"4000-4999 ILS"', add
label define il95a_incse_lbl 06 `"5000-5999 ILS"', add
label define il95a_incse_lbl 07 `"6000-6999 ILS"', add
label define il95a_incse_lbl 08 `"7000-7999 ILS"', add
label define il95a_incse_lbl 09 `"8000-8999 ILS"', add
label define il95a_incse_lbl 10 `"9000-9999 ILS"', add
label define il95a_incse_lbl 11 `"10000-10999 ILS"', add
label define il95a_incse_lbl 12 `"11000-11999 ILS"', add
label define il95a_incse_lbl 13 `"12000-12999 ILS"', add
label define il95a_incse_lbl 14 `"13000-14999 ILS"', add
label define il95a_incse_lbl 15 `"15000-16999 ILS"', add
label define il95a_incse_lbl 16 `"17000-19999 ILS"', add
label define il95a_incse_lbl 17 `"20000-26999 ILS"', add
label define il95a_incse_lbl 18 `"27000-39999 ILS"', add
label define il95a_incse_lbl 19 `"40000+ ILS"', add
label define il95a_incse_lbl 98 `"Unknown"', add
label define il95a_incse_lbl 99 `"NIU (not in universe)"', add
label values il95a_incse il95a_incse_lbl

label define il95a_incin_lbl 0 `"No income"'
label define il95a_incin_lbl 1 `"100-249 ILS (New Israeli sheqel)"', add
label define il95a_incin_lbl 2 `"250-499 ILS"', add
label define il95a_incin_lbl 3 `"500-749 ILS"', add
label define il95a_incin_lbl 4 `"750-999 ILS"', add
label define il95a_incin_lbl 5 `"1000-1499 ILS"', add
label define il95a_incin_lbl 6 `"1500-1999 ILS"', add
label define il95a_incin_lbl 7 `"2000-2999 ILS"', add
label define il95a_incin_lbl 8 `"3000+ ILS"', add
label define il95a_incin_lbl 9 `"Unknown"', add
label values il95a_incin il95a_incin_lbl

label define il95a_incnw_lbl 00 `"No income"'
label define il95a_incnw_lbl 01 `"100-250 ILS (New Israeli sheqel)"', add
label define il95a_incnw_lbl 02 `"251-500 ILS"', add
label define il95a_incnw_lbl 03 `"501-750 ILS"', add
label define il95a_incnw_lbl 04 `"751-1000 ILS"', add
label define il95a_incnw_lbl 05 `"1001-1500 ILS"', add
label define il95a_incnw_lbl 06 `"1501-2000 ILS"', add
label define il95a_incnw_lbl 07 `"2001-3000 ILS"', add
label define il95a_incnw_lbl 08 `"3001-5000 ILS"', add
label define il95a_incnw_lbl 09 `"5001-10000 ILS"', add
label define il95a_incnw_lbl 10 `"10001+ ILS"', add
label define il95a_incnw_lbl 99 `"Unknown"', add
label values il95a_incnw il95a_incnw_lbl

label define il95a_inchh_lbl 00 `"No income"'
label define il95a_inchh_lbl 01 `"100-499 ILS"', add
label define il95a_inchh_lbl 02 `"500-999 ILS"', add
label define il95a_inchh_lbl 03 `"1000-1499 ILS"', add
label define il95a_inchh_lbl 04 `"1500-1999 ILS"', add
label define il95a_inchh_lbl 05 `"2000-2499 ILS"', add
label define il95a_inchh_lbl 06 `"2500-2999 ILS"', add
label define il95a_inchh_lbl 07 `"3000-3999 ILS"', add
label define il95a_inchh_lbl 08 `"4000-4999 ILS"', add
label define il95a_inchh_lbl 09 `"5000-5999 ILS"', add
label define il95a_inchh_lbl 10 `"6000-6999 ILS"', add
label define il95a_inchh_lbl 11 `"7000-7999 ILS"', add
label define il95a_inchh_lbl 12 `"8000-8999 ILS"', add
label define il95a_inchh_lbl 13 `"9000-9999 ILS"', add
label define il95a_inchh_lbl 14 `"10000-10999 ILS"', add
label define il95a_inchh_lbl 15 `"11000-11999 ILS"', add
label define il95a_inchh_lbl 16 `"12000-13999 ILS"', add
label define il95a_inchh_lbl 17 `"14000-15999 ILS"', add
label define il95a_inchh_lbl 18 `"18000-19999 ILS"', add
label define il95a_inchh_lbl 19 `"20000-24999 ILS"', add
label define il95a_inchh_lbl 21 `"25000 + ILS"', add
label define il95a_inchh_lbl 98 `"Unknown"', add
label define il95a_inchh_lbl 99 `"NIU (not in universe)"', add
label values il95a_inchh il95a_inchh_lbl


