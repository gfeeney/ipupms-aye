* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    ma04a_dwnum     22-27    ///
  byte    ma04a_pern      28-29    ///
  byte    ma04a_region    30-31    ///
  int     ma04a_prov      32-34    ///
  byte    ma04a_recordty  35-35    ///
  byte    ma04a_tents     36-36    ///
  byte    ma04a_light     37-37    ///
  byte    ma04a_cattle    38-38    ///
  byte    ma04a_sheep     39-39    ///
  byte    ma04a_occup     40-40    ///
  byte    ma04a_constrty  41-42    ///
  byte    ma04a_ownershp  43-43    ///
  byte    ma04a_dwellage  44-44    ///
  byte    ma04a_rooms     45-46    ///
  byte    ma04a_kitchuse  47-47    ///
  byte    ma04a_toilet    48-48    ///
  byte    ma04a_bath      49-49    ///
  byte    ma04a_bathtrad  50-50    ///
  byte    ma04a_watuse    51-51    ///
  byte    ma04a_elect     52-52    ///
  byte    ma04a_ltpetrol  53-53    ///
  byte    ma04a_ltgas     54-54    ///
  byte    ma04a_ltcandle  55-55    ///
  byte    ma04a_ltsolar   56-56    ///
  byte    ma04a_ltgener   57-57    ///
  byte    ma04a_ltother   58-58    ///
  byte    ma04a_watwell   59-59    ///
  byte    ma04a_watsprng  60-60    ///
  byte    ma04a_watfount  61-61    ///
  byte    ma04a_watother  62-62    ///
  byte    ma04a_sewage    63-63    ///
  byte    ma04a_septic    64-64    ///
  byte    ma04a_pit       65-65    ///
  byte    ma04a_othtoil   66-66    ///
  byte    ma04a_tv        67-67    ///
  byte    ma04a_tvdish    68-68    ///
  byte    ma04a_phone     69-69    ///
  int     ma04a_distroad  70-72    ///
  int     pernum          73-75    ///
  float   wtper           76-83    ///
  byte    ma04a_pernum    84-85    ///
  byte    ma04a_lineno    86-87    ///
  byte    ma04a_resident  88-88    ///
  byte    ma04a_nation    89-90    ///
  byte    ma04a_relate    91-92    ///
  byte    ma04a_sex       93-93    ///
  byte    ma04a_birthmo   94-95    ///
  int     ma04a_birthyrg  96-99    ///
  int     ma04a_birthyrh  100-103  ///
  byte    ma04a_age       104-105  ///
  byte    ma04a_marst     106-106  ///
  byte    ma04a_chhome    107-108  ///
  byte    ma04a_chaway    109-110  ///
  byte    ma04a_chdead    111-112  ///
  byte    ma04a_chbornyr  113-113  ///
  byte    ma04a_chdeadyr  114-114  ///
  byte    ma04a_lit       115-115  ///
  byte    ma04a_edlevel   116-116  ///
  byte    ma04a_edlevel2  117-118  ///
  byte    ma04a_schoolty  119-119  ///
  byte    ma04a_lang1     120-120  ///
  byte    ma04a_lang2     121-121  ///
  byte    ma04a_disab     122-122  ///
  byte    ma04a_empstat   123-123  ///
  byte    ma04a_classwk   124-125  ///
  int     ma04a_occ3      126-128  ///
  byte    ma04a_occ1      129-130  ///
  int     ma04a_occ2      131-133  ///
  int     ma04a_ind3      134-136  ///
  int     ma04a_ind2      137-139  ///
  byte    ma04a_degree2   140-141  ///
  int     ma04a_degree3   142-144  ///
  int     ma04a_prevprov  145-147  ///
  byte    ma04a_prevregn  148-149  ///
  byte    ma04a_durres    150-151  ///
  int     ma04a_prov5yr   152-154  ///
  byte    ma04a_regn5yr   155-156  ///
  using `"ipumsi_00094.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var ma04a_dwnum    `"Dwelling number"'
label var ma04a_pern     `"Number of persons in household"'
label var ma04a_region   `"Region"'
label var ma04a_prov     `"Province"'
label var ma04a_recordty `"Record type"'
label var ma04a_tents    `"Tents"'
label var ma04a_light    `"Light source"'
label var ma04a_cattle   `"Own cattle"'
label var ma04a_sheep    `"Own sheep"'
label var ma04a_occup    `"Dwelling occupation status"'
label var ma04a_constrty `"Type of construction"'
label var ma04a_ownershp `"Tenant status"'
label var ma04a_dwellage `"Age of construction / dwelling"'
label var ma04a_rooms    `"Number of rooms"'
label var ma04a_kitchuse `"Kitchen (utilization)"'
label var ma04a_toilet   `"Use of toilet or W.C."'
label var ma04a_bath     `"Bathroom / shower (modern)"'
label var ma04a_bathtrad `"Bathroom (traditional)"'
label var ma04a_watuse   `"Water supply (utilization)"'
label var ma04a_elect    `"Electricity (utilization)"'
label var ma04a_ltpetrol `"Lighting: petrol"'
label var ma04a_ltgas    `"Lighting: gas"'
label var ma04a_ltcandle `"Lighting: candle"'
label var ma04a_ltsolar  `"Lighting: solar"'
label var ma04a_ltgener  `"Lighting: generator"'
label var ma04a_ltother  `"Lighting: other cases"'
label var ma04a_watwell  `"Source of water: well"'
label var ma04a_watsprng `"Source of water: spring"'
label var ma04a_watfount `"Source of water: fountain"'
label var ma04a_watother `"Source of water: other cases"'
label var ma04a_sewage   `"Toilet facility: sewer / public"'
label var ma04a_septic   `"Toilet facility: septic tank"'
label var ma04a_pit      `"Toilet facility: pit"'
label var ma04a_othtoil  `"Toilet facility: other cases"'
label var ma04a_tv       `"Television"'
label var ma04a_tvdish   `"Satellite TV dish"'
label var ma04a_phone    `"Fixed telephone"'
label var ma04a_distroad `"Distance to nearest paved road, in kilometres"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var ma04a_pernum   `"Person number (within household)"'
label var ma04a_lineno   `"Line number"'
label var ma04a_resident `"Residence status"'
label var ma04a_nation   `"Country of citizenship (nationality)"'
label var ma04a_relate   `"Relationship to head of household"'
label var ma04a_sex      `"Sex"'
label var ma04a_birthmo  `"Month of birth"'
label var ma04a_birthyrg `"Year of birth (Gregorian calendar)"'
label var ma04a_birthyrh `"Year of birth (Hegirian calendar)"'
label var ma04a_age      `"Age in years"'
label var ma04a_marst    `"Marital status"'
label var ma04a_chhome   `"Children living in household"'
label var ma04a_chaway   `"Children living elsewhere"'
label var ma04a_chdead   `"Children who died"'
label var ma04a_chbornyr `"Children born in the last 12 months"'
label var ma04a_chdeadyr `"Children born in the last 12 months who died"'
label var ma04a_lit      `"Literacy"'
label var ma04a_edlevel  `"Level of education (grouped)"'
label var ma04a_edlevel2 `"Level of education (detailed)"'
label var ma04a_schoolty `"Type of school"'
label var ma04a_lang1    `"Dialect (first local language)"'
label var ma04a_lang2    `"Dialect (second local language)"'
label var ma04a_disab    `"Type of handicap or disability"'
label var ma04a_empstat  `"Employment status"'
label var ma04a_classwk  `"Work status"'
label var ma04a_occ3     `"Occupation (3-digit)"'
label var ma04a_occ1     `"Occupation (1-digit)"'
label var ma04a_occ2     `"Occupation (2-digit)"'
label var ma04a_ind3     `"Sector of economic activity (3 digit)"'
label var ma04a_ind2     `"Sector of economic activity (2-digit)"'
label var ma04a_degree2  `"Highest-earned diploma (grouped)"'
label var ma04a_degree3  `"Diploma (grouped)"'
label var ma04a_prevprov `"Previous province of residence"'
label var ma04a_prevregn `"Region of previous residence"'
label var ma04a_durres   `"Duration at current residence, in years"'
label var ma04a_prov5yr  `"Province of residence 5 years ago"'
label var ma04a_regn5yr  `"Region of residence 5 years ago"'

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

label define ma04a_pern_lbl 00 `"0"'
label define ma04a_pern_lbl 01 `"1"', add
label define ma04a_pern_lbl 02 `"2"', add
label define ma04a_pern_lbl 03 `"3"', add
label define ma04a_pern_lbl 04 `"4"', add
label define ma04a_pern_lbl 05 `"5"', add
label define ma04a_pern_lbl 06 `"6"', add
label define ma04a_pern_lbl 07 `"7"', add
label define ma04a_pern_lbl 08 `"8"', add
label define ma04a_pern_lbl 09 `"9"', add
label define ma04a_pern_lbl 10 `"10"', add
label define ma04a_pern_lbl 11 `"11"', add
label define ma04a_pern_lbl 12 `"12"', add
label define ma04a_pern_lbl 13 `"13"', add
label define ma04a_pern_lbl 14 `"14"', add
label define ma04a_pern_lbl 15 `"15"', add
label define ma04a_pern_lbl 16 `"16"', add
label define ma04a_pern_lbl 17 `"17"', add
label define ma04a_pern_lbl 18 `"18"', add
label define ma04a_pern_lbl 19 `"19"', add
label define ma04a_pern_lbl 20 `"20"', add
label define ma04a_pern_lbl 21 `"21"', add
label define ma04a_pern_lbl 22 `"22"', add
label define ma04a_pern_lbl 23 `"23"', add
label define ma04a_pern_lbl 24 `"24"', add
label define ma04a_pern_lbl 25 `"25"', add
label define ma04a_pern_lbl 26 `"26"', add
label define ma04a_pern_lbl 27 `"27"', add
label define ma04a_pern_lbl 28 `"28"', add
label define ma04a_pern_lbl 29 `"29"', add
label define ma04a_pern_lbl 30 `"30"', add
label define ma04a_pern_lbl 31 `"31"', add
label define ma04a_pern_lbl 32 `"32"', add
label define ma04a_pern_lbl 33 `"33"', add
label define ma04a_pern_lbl 34 `"34"', add
label define ma04a_pern_lbl 35 `"35"', add
label define ma04a_pern_lbl 36 `"36"', add
label define ma04a_pern_lbl 38 `"38"', add
label define ma04a_pern_lbl 40 `"40"', add
label define ma04a_pern_lbl 41 `"41"', add
label define ma04a_pern_lbl 43 `"43"', add
label define ma04a_pern_lbl 46 `"46"', add
label define ma04a_pern_lbl 49 `"49"', add
label define ma04a_pern_lbl 52 `"52"', add
label define ma04a_pern_lbl 53 `"53"', add
label values ma04a_pern ma04a_pern_lbl

label define ma04a_region_lbl 01 `"Oued-Ed-Dahab-Lagouira"'
label define ma04a_region_lbl 02 `"Laayoune-Boujdour-Sakia El Hamra"', add
label define ma04a_region_lbl 03 `"Guelmin-Es-Samara"', add
label define ma04a_region_lbl 04 `"Souss-Massa-Draa"', add
label define ma04a_region_lbl 05 `"Charb-Chrarda-Beni Hssen"', add
label define ma04a_region_lbl 06 `"Chaouia-Ouardigha"', add
label define ma04a_region_lbl 07 `"Marrakech-Tensift-Al Haouz"', add
label define ma04a_region_lbl 08 `"Oriental"', add
label define ma04a_region_lbl 09 `"Grand-Casablanca"', add
label define ma04a_region_lbl 10 `"Rabat-Salé-Zemmour-Zaer"', add
label define ma04a_region_lbl 11 `"Doukala Abda"', add
label define ma04a_region_lbl 12 `"Tadla Azilal"', add
label define ma04a_region_lbl 13 `"Meknes-Tafilalet"', add
label define ma04a_region_lbl 14 `"Fès-Boulemane"', add
label define ma04a_region_lbl 15 `"Taza-Al Heiceima-Taounate"', add
label define ma04a_region_lbl 16 `"Tanger-Tétouan"', add
label values ma04a_region ma04a_region_lbl

label define ma04a_prov_lbl 001 `"Agadir-Ida Ou Tan "'
label define ma04a_prov_lbl 041 `"Al Haouz"', add
label define ma04a_prov_lbl 051 `"Al Hoceima"', add
label define ma04a_prov_lbl 061 `"Meknès"', add
label define ma04a_prov_lbl 071 `"Assa-Zag "', add
label define ma04a_prov_lbl 081 `"Azilal"', add
label define ma04a_prov_lbl 091 `"Beni Mellal"', add
label define ma04a_prov_lbl 111 `"Benslimane"', add
label define ma04a_prov_lbl 113 `"Berkane"', add
label define ma04a_prov_lbl 131 `"Boulemane"', add
label define ma04a_prov_lbl 141 `"Casablanca"', add
label define ma04a_prov_lbl 151 `"Chefchaouen"', add
label define ma04a_prov_lbl 161 `"Chicaoua"', add
label define ma04a_prov_lbl 163 `"Chtouka- Ait Baha "', add
label define ma04a_prov_lbl 171 `"El Hajeb"', add
label define ma04a_prov_lbl 181 `"El-Jadida"', add
label define ma04a_prov_lbl 191 `"El Kelaa Des Sragh"', add
label define ma04a_prov_lbl 201 `"Errachidia"', add
label define ma04a_prov_lbl 211 `"Essaouira"', add
label define ma04a_prov_lbl 227 `"Fahs-Anjra"', add
label define ma04a_prov_lbl 231 `"Fès"', add
label define ma04a_prov_lbl 251 `"Figuig"', add
label define ma04a_prov_lbl 261 `"Guelmim "', add
label define ma04a_prov_lbl 221 `"Es-Semara "', add
label define ma04a_prov_lbl 271 `"Ifrane"', add
label define ma04a_prov_lbl 273 `"Inezgane- Ait Mell"', add
label define ma04a_prov_lbl 275 `"Jerada"', add
label define ma04a_prov_lbl 281 `"Kénitra"', add
label define ma04a_prov_lbl 291 `"Khemisset"', add
label define ma04a_prov_lbl 301 `"Khenifra"', add
label define ma04a_prov_lbl 311 `"Khouribga"', add
label define ma04a_prov_lbl 321 `"Laayoune"', add
label define ma04a_prov_lbl 121 `"Boujdour"', add
label define ma04a_prov_lbl 331 `"Larache"', add
label define ma04a_prov_lbl 351 `"Marrakech"', add
label define ma04a_prov_lbl 355 `"Mediouna"', add
label define ma04a_prov_lbl 371 `"Mohammedia"', add
label define ma04a_prov_lbl 381 `"Nador"', add
label define ma04a_prov_lbl 385 `"Nouaceur"', add
label define ma04a_prov_lbl 391 `"Oued-Ed-Dahab and Aousserd"', add
label define ma04a_prov_lbl 401 `"Ouarzazate "', add
label define ma04a_prov_lbl 411 `"Oujda-Angad"', add
label define ma04a_prov_lbl 421 `"Rabat"', add
label define ma04a_prov_lbl 431 `"Safi"', add
label define ma04a_prov_lbl 441 `"Salé"', add
label define ma04a_prov_lbl 451 `"Sefrou"', add
label define ma04a_prov_lbl 461 `"Settat"', add
label define ma04a_prov_lbl 481 `"Sidi-Kacem"', add
label define ma04a_prov_lbl 501 `"Skhirate-Temara"', add
label define ma04a_prov_lbl 511 `"Tanger-Assilah"', add
label define ma04a_prov_lbl 521 `"Tan-Tan"', add
label define ma04a_prov_lbl 531 `"Taounate"', add
label define ma04a_prov_lbl 533 `"Taourirt"', add
label define ma04a_prov_lbl 541 `"Taroudannt"', add
label define ma04a_prov_lbl 551 `"Tata"', add
label define ma04a_prov_lbl 561 `"Taza"', add
label define ma04a_prov_lbl 571 `"Tetouan"', add
label define ma04a_prov_lbl 581 `"Tiznit"', add
label define ma04a_prov_lbl 587 `"Zagora"', add
label define ma04a_prov_lbl 591 `"Moulay Yacoub"', add
label values ma04a_prov ma04a_prov_lbl

label define ma04a_recordty_lbl 1 `"Individual"'
label define ma04a_recordty_lbl 2 `"Household"', add
label define ma04a_recordty_lbl 3 `"Tent"', add
label values ma04a_recordty ma04a_recordty_lbl

label define ma04a_tents_lbl 1 `"Yes"'
label define ma04a_tents_lbl 2 `"No"', add
label values ma04a_tents ma04a_tents_lbl

label define ma04a_light_lbl 1 `"Gas or petrol"'
label define ma04a_light_lbl 2 `"Other (including traditional candle lamp)"', add
label define ma04a_light_lbl 3 `"None"', add
label define ma04a_light_lbl 9 `"NIU (not in universe)"', add
label values ma04a_light ma04a_light_lbl

label define ma04a_cattle_lbl 1 `"Yes"'
label define ma04a_cattle_lbl 2 `"No"', add
label define ma04a_cattle_lbl 9 `"NIU (not in universe)"', add
label values ma04a_cattle ma04a_cattle_lbl

label define ma04a_sheep_lbl 1 `"Yes"'
label define ma04a_sheep_lbl 2 `"No"', add
label define ma04a_sheep_lbl 9 `"NIU (not in universe)"', add
label values ma04a_sheep ma04a_sheep_lbl

label define ma04a_occup_lbl 1 `"Occupied, present"'
label define ma04a_occup_lbl 2 `"Occupied, absent"', add
label define ma04a_occup_lbl 3 `"Empty / vacant"', add
label define ma04a_occup_lbl 4 `"Seasonal occupation"', add
label define ma04a_occup_lbl 5 `"Under construction"', add
label define ma04a_occup_lbl 6 `"Homeless"', add
label define ma04a_occup_lbl 8 `"Unknown"', add
label define ma04a_occup_lbl 9 `"NIU (not in universe)"', add
label values ma04a_occup ma04a_occup_lbl

label define ma04a_constrty_lbl 01 `"Villa"'
label define ma04a_constrty_lbl 02 `"Apartment, flat"', add
label define ma04a_constrty_lbl 03 `"Traditional house"', add
label define ma04a_constrty_lbl 04 `"Modern house"', add
label define ma04a_constrty_lbl 05 `"One room in institution"', add
label define ma04a_constrty_lbl 06 `"Informal building / shack"', add
label define ma04a_constrty_lbl 07 `"Premises not designed for dwelling"', add
label define ma04a_constrty_lbl 08 `"Rural dwelling"', add
label define ma04a_constrty_lbl 09 `"Other"', add
label define ma04a_constrty_lbl 98 `"Unknown"', add
label define ma04a_constrty_lbl 99 `"NIU (not in universe)"', add
label values ma04a_constrty ma04a_constrty_lbl

label define ma04a_ownershp_lbl 1 `"Landlord / owner"'
label define ma04a_ownershp_lbl 2 `"In process of becoming owner"', add
label define ma04a_ownershp_lbl 3 `"Tenant"', add
label define ma04a_ownershp_lbl 4 `"Paid by employer"', add
label define ma04a_ownershp_lbl 5 `"Free lodging"', add
label define ma04a_ownershp_lbl 6 `"Other"', add
label define ma04a_ownershp_lbl 8 `"Unknown"', add
label define ma04a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values ma04a_ownershp ma04a_ownershp_lbl

label define ma04a_dwellage_lbl 1 `"Fewer than 10 years"'
label define ma04a_dwellage_lbl 2 `"10-19 years"', add
label define ma04a_dwellage_lbl 3 `"20-49 years"', add
label define ma04a_dwellage_lbl 4 `"50 years or more"', add
label define ma04a_dwellage_lbl 8 `"Unknown"', add
label define ma04a_dwellage_lbl 9 `"NIU (not in universe)"', add
label values ma04a_dwellage ma04a_dwellage_lbl

label define ma04a_rooms_lbl 01 `"1"'
label define ma04a_rooms_lbl 02 `"2"', add
label define ma04a_rooms_lbl 03 `"3"', add
label define ma04a_rooms_lbl 04 `"4"', add
label define ma04a_rooms_lbl 05 `"5"', add
label define ma04a_rooms_lbl 06 `"6"', add
label define ma04a_rooms_lbl 07 `"7"', add
label define ma04a_rooms_lbl 08 `"8"', add
label define ma04a_rooms_lbl 09 `"9"', add
label define ma04a_rooms_lbl 10 `"10"', add
label define ma04a_rooms_lbl 11 `"11"', add
label define ma04a_rooms_lbl 12 `"12"', add
label define ma04a_rooms_lbl 13 `"13"', add
label define ma04a_rooms_lbl 14 `"14"', add
label define ma04a_rooms_lbl 15 `"15"', add
label define ma04a_rooms_lbl 16 `"16"', add
label define ma04a_rooms_lbl 17 `"17"', add
label define ma04a_rooms_lbl 18 `"18"', add
label define ma04a_rooms_lbl 19 `"19"', add
label define ma04a_rooms_lbl 20 `"20+"', add
label define ma04a_rooms_lbl 98 `"Unknown"', add
label define ma04a_rooms_lbl 99 `"NIU (not in universe)"', add
label values ma04a_rooms ma04a_rooms_lbl

label define ma04a_kitchuse_lbl 1 `"Yes, private"'
label define ma04a_kitchuse_lbl 2 `"Yes, communal (shared)"', add
label define ma04a_kitchuse_lbl 3 `"None"', add
label define ma04a_kitchuse_lbl 8 `"Unknown"', add
label define ma04a_kitchuse_lbl 9 `"NIU (not in universe)"', add
label values ma04a_kitchuse ma04a_kitchuse_lbl

label define ma04a_toilet_lbl 1 `"Yes, private"'
label define ma04a_toilet_lbl 2 `"Yes, communal (shared)"', add
label define ma04a_toilet_lbl 3 `"None"', add
label define ma04a_toilet_lbl 8 `"Unknown"', add
label define ma04a_toilet_lbl 9 `"NIU (not in universe)"', add
label values ma04a_toilet ma04a_toilet_lbl

label define ma04a_bath_lbl 1 `"Yes, private"'
label define ma04a_bath_lbl 2 `"Yes, communal (shared)"', add
label define ma04a_bath_lbl 3 `"None"', add
label define ma04a_bath_lbl 8 `"Unknown"', add
label define ma04a_bath_lbl 9 `"NIU (not in universe)"', add
label values ma04a_bath ma04a_bath_lbl

label define ma04a_bathtrad_lbl 1 `"Yes, private"'
label define ma04a_bathtrad_lbl 2 `"Yes, communal (shared)"', add
label define ma04a_bathtrad_lbl 3 `"None"', add
label define ma04a_bathtrad_lbl 8 `"Unknown"', add
label define ma04a_bathtrad_lbl 9 `"NIU (not in universe)"', add
label values ma04a_bathtrad ma04a_bathtrad_lbl

label define ma04a_watuse_lbl 1 `"Yes, private"'
label define ma04a_watuse_lbl 2 `"Yes, communal (shared)"', add
label define ma04a_watuse_lbl 3 `"None"', add
label define ma04a_watuse_lbl 8 `"Unknown"', add
label define ma04a_watuse_lbl 9 `"NIU (not in universe)"', add
label values ma04a_watuse ma04a_watuse_lbl

label define ma04a_elect_lbl 1 `"Yes, private"'
label define ma04a_elect_lbl 2 `"Yes, communal (shared)"', add
label define ma04a_elect_lbl 3 `"None"', add
label define ma04a_elect_lbl 8 `"Unknown"', add
label define ma04a_elect_lbl 9 `"NIU (not in universe)"', add
label values ma04a_elect ma04a_elect_lbl

label define ma04a_ltpetrol_lbl 1 `"No"'
label define ma04a_ltpetrol_lbl 2 `"Yes"', add
label define ma04a_ltpetrol_lbl 8 `"Unknown"', add
label define ma04a_ltpetrol_lbl 9 `"NIU (not in universe)"', add
label values ma04a_ltpetrol ma04a_ltpetrol_lbl

label define ma04a_ltgas_lbl 1 `"No"'
label define ma04a_ltgas_lbl 2 `"Yes"', add
label define ma04a_ltgas_lbl 9 `"NIU (not in universe)"', add
label values ma04a_ltgas ma04a_ltgas_lbl

label define ma04a_ltcandle_lbl 1 `"No"'
label define ma04a_ltcandle_lbl 2 `"Yes"', add
label define ma04a_ltcandle_lbl 9 `"NIU (not in universe)"', add
label values ma04a_ltcandle ma04a_ltcandle_lbl

label define ma04a_ltsolar_lbl 1 `"No"'
label define ma04a_ltsolar_lbl 2 `"Yes"', add
label define ma04a_ltsolar_lbl 9 `"NIU (not in universe)"', add
label values ma04a_ltsolar ma04a_ltsolar_lbl

label define ma04a_ltgener_lbl 1 `"No"'
label define ma04a_ltgener_lbl 2 `"Yes"', add
label define ma04a_ltgener_lbl 9 `"NIU (not in universe)"', add
label values ma04a_ltgener ma04a_ltgener_lbl

label define ma04a_ltother_lbl 1 `"No"'
label define ma04a_ltother_lbl 2 `"Yes"', add
label define ma04a_ltother_lbl 8 `"Unknown"', add
label define ma04a_ltother_lbl 9 `"NIU (not in universe)"', add
label values ma04a_ltother ma04a_ltother_lbl

label define ma04a_watwell_lbl 1 `"No"'
label define ma04a_watwell_lbl 2 `"Yes"', add
label define ma04a_watwell_lbl 8 `"Unknown"', add
label define ma04a_watwell_lbl 9 `"NIU (not in universe)"', add
label values ma04a_watwell ma04a_watwell_lbl

label define ma04a_watsprng_lbl 1 `"No"'
label define ma04a_watsprng_lbl 2 `"Yes"', add
label define ma04a_watsprng_lbl 8 `"Unknown"', add
label define ma04a_watsprng_lbl 9 `"NIU (not in universe)"', add
label values ma04a_watsprng ma04a_watsprng_lbl

label define ma04a_watfount_lbl 1 `"No"'
label define ma04a_watfount_lbl 2 `"Yes"', add
label define ma04a_watfount_lbl 9 `"NIU (not in universe)"', add
label values ma04a_watfount ma04a_watfount_lbl

label define ma04a_watother_lbl 1 `"No"'
label define ma04a_watother_lbl 2 `"Yes"', add
label define ma04a_watother_lbl 8 `"Unknown"', add
label define ma04a_watother_lbl 9 `"NIU (not in universe)"', add
label values ma04a_watother ma04a_watother_lbl

label define ma04a_sewage_lbl 1 `"No"'
label define ma04a_sewage_lbl 2 `"Yes"', add
label define ma04a_sewage_lbl 8 `"Unknown"', add
label define ma04a_sewage_lbl 9 `"NIU (not in universe)"', add
label values ma04a_sewage ma04a_sewage_lbl

label define ma04a_septic_lbl 1 `"No"'
label define ma04a_septic_lbl 2 `"Yes"', add
label define ma04a_septic_lbl 8 `"Unknown"', add
label define ma04a_septic_lbl 9 `"NIU (not in universe)"', add
label values ma04a_septic ma04a_septic_lbl

label define ma04a_pit_lbl 1 `"No"'
label define ma04a_pit_lbl 2 `"Yes"', add
label define ma04a_pit_lbl 8 `"Unknown"', add
label define ma04a_pit_lbl 9 `"NIU (not in universe)"', add
label values ma04a_pit ma04a_pit_lbl

label define ma04a_othtoil_lbl 1 `"No"'
label define ma04a_othtoil_lbl 2 `"Yes"', add
label define ma04a_othtoil_lbl 8 `"Unknown"', add
label define ma04a_othtoil_lbl 9 `"NIU (not in universe)"', add
label values ma04a_othtoil ma04a_othtoil_lbl

label define ma04a_tv_lbl 1 `"No"'
label define ma04a_tv_lbl 2 `"Yes"', add
label define ma04a_tv_lbl 8 `"Unknown"', add
label define ma04a_tv_lbl 9 `"NIU (not in universe)"', add
label values ma04a_tv ma04a_tv_lbl

label define ma04a_tvdish_lbl 1 `"No"'
label define ma04a_tvdish_lbl 2 `"Yes"', add
label define ma04a_tvdish_lbl 8 `"Unknown"', add
label define ma04a_tvdish_lbl 9 `"NIU (not in universe)"', add
label values ma04a_tvdish ma04a_tvdish_lbl

label define ma04a_phone_lbl 1 `"No"'
label define ma04a_phone_lbl 2 `"Yes"', add
label define ma04a_phone_lbl 8 `"Unknown"', add
label define ma04a_phone_lbl 9 `"NIU (not in universe)"', add
label values ma04a_phone ma04a_phone_lbl

label define ma04a_distroad_lbl 000 `"Less than 1 kilometer"'
label define ma04a_distroad_lbl 001 `"1"', add
label define ma04a_distroad_lbl 002 `"2"', add
label define ma04a_distroad_lbl 003 `"3"', add
label define ma04a_distroad_lbl 004 `"4"', add
label define ma04a_distroad_lbl 005 `"5"', add
label define ma04a_distroad_lbl 006 `"6"', add
label define ma04a_distroad_lbl 007 `"7"', add
label define ma04a_distroad_lbl 008 `"8"', add
label define ma04a_distroad_lbl 009 `"9"', add
label define ma04a_distroad_lbl 010 `"10"', add
label define ma04a_distroad_lbl 011 `"11"', add
label define ma04a_distroad_lbl 012 `"12"', add
label define ma04a_distroad_lbl 013 `"13"', add
label define ma04a_distroad_lbl 014 `"14"', add
label define ma04a_distroad_lbl 015 `"15"', add
label define ma04a_distroad_lbl 016 `"16"', add
label define ma04a_distroad_lbl 017 `"17"', add
label define ma04a_distroad_lbl 018 `"18"', add
label define ma04a_distroad_lbl 019 `"19"', add
label define ma04a_distroad_lbl 020 `"20"', add
label define ma04a_distroad_lbl 021 `"21"', add
label define ma04a_distroad_lbl 022 `"22"', add
label define ma04a_distroad_lbl 023 `"23"', add
label define ma04a_distroad_lbl 024 `"24"', add
label define ma04a_distroad_lbl 025 `"25"', add
label define ma04a_distroad_lbl 026 `"26"', add
label define ma04a_distroad_lbl 027 `"27"', add
label define ma04a_distroad_lbl 028 `"28"', add
label define ma04a_distroad_lbl 029 `"29"', add
label define ma04a_distroad_lbl 030 `"30"', add
label define ma04a_distroad_lbl 031 `"31"', add
label define ma04a_distroad_lbl 032 `"32"', add
label define ma04a_distroad_lbl 033 `"33"', add
label define ma04a_distroad_lbl 034 `"34"', add
label define ma04a_distroad_lbl 035 `"35"', add
label define ma04a_distroad_lbl 036 `"36"', add
label define ma04a_distroad_lbl 037 `"37"', add
label define ma04a_distroad_lbl 038 `"38"', add
label define ma04a_distroad_lbl 039 `"39"', add
label define ma04a_distroad_lbl 040 `"40"', add
label define ma04a_distroad_lbl 041 `"41"', add
label define ma04a_distroad_lbl 042 `"42"', add
label define ma04a_distroad_lbl 043 `"43"', add
label define ma04a_distroad_lbl 044 `"44"', add
label define ma04a_distroad_lbl 045 `"45"', add
label define ma04a_distroad_lbl 046 `"46"', add
label define ma04a_distroad_lbl 047 `"47"', add
label define ma04a_distroad_lbl 048 `"48"', add
label define ma04a_distroad_lbl 049 `"49"', add
label define ma04a_distroad_lbl 050 `"50"', add
label define ma04a_distroad_lbl 051 `"51"', add
label define ma04a_distroad_lbl 052 `"52"', add
label define ma04a_distroad_lbl 053 `"53"', add
label define ma04a_distroad_lbl 054 `"54"', add
label define ma04a_distroad_lbl 055 `"55"', add
label define ma04a_distroad_lbl 056 `"56"', add
label define ma04a_distroad_lbl 057 `"57"', add
label define ma04a_distroad_lbl 058 `"58"', add
label define ma04a_distroad_lbl 059 `"59"', add
label define ma04a_distroad_lbl 060 `"60"', add
label define ma04a_distroad_lbl 061 `"61"', add
label define ma04a_distroad_lbl 062 `"62"', add
label define ma04a_distroad_lbl 063 `"63"', add
label define ma04a_distroad_lbl 064 `"64"', add
label define ma04a_distroad_lbl 065 `"65"', add
label define ma04a_distroad_lbl 066 `"66"', add
label define ma04a_distroad_lbl 067 `"67"', add
label define ma04a_distroad_lbl 068 `"68"', add
label define ma04a_distroad_lbl 069 `"69"', add
label define ma04a_distroad_lbl 070 `"70"', add
label define ma04a_distroad_lbl 071 `"71"', add
label define ma04a_distroad_lbl 072 `"72"', add
label define ma04a_distroad_lbl 073 `"73"', add
label define ma04a_distroad_lbl 074 `"74"', add
label define ma04a_distroad_lbl 075 `"75"', add
label define ma04a_distroad_lbl 076 `"76"', add
label define ma04a_distroad_lbl 077 `"77"', add
label define ma04a_distroad_lbl 078 `"78"', add
label define ma04a_distroad_lbl 079 `"79"', add
label define ma04a_distroad_lbl 080 `"80"', add
label define ma04a_distroad_lbl 081 `"81"', add
label define ma04a_distroad_lbl 082 `"82"', add
label define ma04a_distroad_lbl 083 `"83"', add
label define ma04a_distroad_lbl 084 `"84"', add
label define ma04a_distroad_lbl 085 `"85"', add
label define ma04a_distroad_lbl 086 `"86"', add
label define ma04a_distroad_lbl 087 `"87"', add
label define ma04a_distroad_lbl 088 `"88"', add
label define ma04a_distroad_lbl 090 `"90"', add
label define ma04a_distroad_lbl 091 `"91"', add
label define ma04a_distroad_lbl 092 `"92"', add
label define ma04a_distroad_lbl 093 `"93"', add
label define ma04a_distroad_lbl 094 `"94"', add
label define ma04a_distroad_lbl 095 `"95"', add
label define ma04a_distroad_lbl 096 `"96"', add
label define ma04a_distroad_lbl 098 `"98 or more"', add
label define ma04a_distroad_lbl 998 `"Unknown"', add
label define ma04a_distroad_lbl 999 `"NIU (not in universe)"', add
label values ma04a_distroad ma04a_distroad_lbl

label define ma04a_pernum_lbl 00 `"Household record"'
label define ma04a_pernum_lbl 01 `"1"', add
label define ma04a_pernum_lbl 02 `"2"', add
label define ma04a_pernum_lbl 03 `"3"', add
label define ma04a_pernum_lbl 04 `"4"', add
label define ma04a_pernum_lbl 05 `"5"', add
label define ma04a_pernum_lbl 06 `"6"', add
label define ma04a_pernum_lbl 07 `"7"', add
label define ma04a_pernum_lbl 08 `"8"', add
label define ma04a_pernum_lbl 09 `"9"', add
label define ma04a_pernum_lbl 10 `"10"', add
label define ma04a_pernum_lbl 11 `"11"', add
label define ma04a_pernum_lbl 12 `"12"', add
label define ma04a_pernum_lbl 13 `"13"', add
label define ma04a_pernum_lbl 14 `"14"', add
label define ma04a_pernum_lbl 15 `"15"', add
label define ma04a_pernum_lbl 16 `"16"', add
label define ma04a_pernum_lbl 17 `"17"', add
label define ma04a_pernum_lbl 18 `"18"', add
label define ma04a_pernum_lbl 19 `"19"', add
label define ma04a_pernum_lbl 20 `"20"', add
label define ma04a_pernum_lbl 21 `"21"', add
label define ma04a_pernum_lbl 22 `"22"', add
label define ma04a_pernum_lbl 23 `"23"', add
label define ma04a_pernum_lbl 24 `"24"', add
label define ma04a_pernum_lbl 25 `"25"', add
label define ma04a_pernum_lbl 26 `"26"', add
label define ma04a_pernum_lbl 27 `"27"', add
label define ma04a_pernum_lbl 28 `"28"', add
label define ma04a_pernum_lbl 29 `"29"', add
label define ma04a_pernum_lbl 30 `"30"', add
label define ma04a_pernum_lbl 31 `"31"', add
label define ma04a_pernum_lbl 32 `"32"', add
label define ma04a_pernum_lbl 33 `"33"', add
label define ma04a_pernum_lbl 34 `"34"', add
label define ma04a_pernum_lbl 35 `"35"', add
label define ma04a_pernum_lbl 36 `"36"', add
label define ma04a_pernum_lbl 37 `"37"', add
label define ma04a_pernum_lbl 38 `"38"', add
label define ma04a_pernum_lbl 39 `"39"', add
label define ma04a_pernum_lbl 40 `"40"', add
label define ma04a_pernum_lbl 41 `"41"', add
label define ma04a_pernum_lbl 42 `"42"', add
label define ma04a_pernum_lbl 43 `"43"', add
label define ma04a_pernum_lbl 44 `"44"', add
label define ma04a_pernum_lbl 45 `"45"', add
label define ma04a_pernum_lbl 46 `"46"', add
label define ma04a_pernum_lbl 47 `"47"', add
label define ma04a_pernum_lbl 48 `"48"', add
label define ma04a_pernum_lbl 49 `"49"', add
label define ma04a_pernum_lbl 50 `"50"', add
label define ma04a_pernum_lbl 51 `"51"', add
label define ma04a_pernum_lbl 52 `"52"', add
label define ma04a_pernum_lbl 53 `"53"', add
label values ma04a_pernum ma04a_pernum_lbl

label define ma04a_lineno_lbl 01 `"1"'
label define ma04a_lineno_lbl 02 `"2"', add
label define ma04a_lineno_lbl 03 `"3"', add
label define ma04a_lineno_lbl 04 `"4"', add
label define ma04a_lineno_lbl 05 `"5"', add
label define ma04a_lineno_lbl 06 `"6"', add
label define ma04a_lineno_lbl 07 `"7"', add
label define ma04a_lineno_lbl 08 `"8"', add
label define ma04a_lineno_lbl 09 `"9"', add
label define ma04a_lineno_lbl 99 `"Unknown"', add
label values ma04a_lineno ma04a_lineno_lbl

label define ma04a_resident_lbl 1 `"Resident, present"'
label define ma04a_resident_lbl 2 `"Resident, absent"', add
label values ma04a_resident ma04a_resident_lbl

label define ma04a_nation_lbl 01 `"Morocco"'
label define ma04a_nation_lbl 02 `"Algeria"', add
label define ma04a_nation_lbl 03 `"Tunisia"', add
label define ma04a_nation_lbl 05 `"Ivory Coast"', add
label define ma04a_nation_lbl 06 `"Djibouti"', add
label define ma04a_nation_lbl 07 `"Egypt"', add
label define ma04a_nation_lbl 08 `"Gabon"', add
label define ma04a_nation_lbl 09 `"Guinea"', add
label define ma04a_nation_lbl 10 `"Libya"', add
label define ma04a_nation_lbl 11 `"Mali"', add
label define ma04a_nation_lbl 12 `"Mauritania"', add
label define ma04a_nation_lbl 14 `"Senegal"', add
label define ma04a_nation_lbl 15 `"Somalia"', add
label define ma04a_nation_lbl 16 `"Sudan"', add
label define ma04a_nation_lbl 18 `"Congo Brazzaville"', add
label define ma04a_nation_lbl 20 `"Other African countries"', add
label define ma04a_nation_lbl 40 `"France"', add
label define ma04a_nation_lbl 41 `"Spain"', add
label define ma04a_nation_lbl 42 `"Belgium"', add
label define ma04a_nation_lbl 43 `"Bulgaria"', add
label define ma04a_nation_lbl 49 `"Italy"', add
label define ma04a_nation_lbl 53 `"Portugal"', add
label define ma04a_nation_lbl 54 `"Germany"', add
label define ma04a_nation_lbl 55 `"Romania"', add
label define ma04a_nation_lbl 56 `"Switzerland"', add
label define ma04a_nation_lbl 58 `"England/United Kingdom"', add
label define ma04a_nation_lbl 59 `"Russia"', add
label define ma04a_nation_lbl 61 `"Other European countries"', add
label define ma04a_nation_lbl 21 `"Saudi Arabia"', add
label define ma04a_nation_lbl 24 `"China"', add
label define ma04a_nation_lbl 26 `"India"', add
label define ma04a_nation_lbl 27 `"Iraq"', add
label define ma04a_nation_lbl 28 `"Jordania"', add
label define ma04a_nation_lbl 30 `"Lebanon"', add
label define ma04a_nation_lbl 34 `"Syria"', add
label define ma04a_nation_lbl 37 `"Palestine"', add
label define ma04a_nation_lbl 39 `"Other Middle Eastern and Asian countries"', add
label define ma04a_nation_lbl 71 `"United States of America (USA)"', add
label define ma04a_nation_lbl 79 `"Other Americas"', add
label define ma04a_nation_lbl 80 `"Australia"', add
label define ma04a_nation_lbl 98 `"Unknown"', add
label values ma04a_nation ma04a_nation_lbl

label define ma04a_relate_lbl 01 `"Head of household"'
label define ma04a_relate_lbl 02 `"Spouse of household head"', add
label define ma04a_relate_lbl 03 `"Spouse (imputed)"', add
label define ma04a_relate_lbl 04 `"Son, daughter of household head"', add
label define ma04a_relate_lbl 05 `"Grandson/daughter of household head"', add
label define ma04a_relate_lbl 06 `"Mother, father of household head"', add
label define ma04a_relate_lbl 07 `"Brother, sister of household head"', add
label define ma04a_relate_lbl 08 `"Son/daughter-in-law of household head"', add
label define ma04a_relate_lbl 09 `"Other relative of household head"', add
label define ma04a_relate_lbl 10 `"Servant"', add
label define ma04a_relate_lbl 11 `"No relationship with household head"', add
label values ma04a_relate ma04a_relate_lbl

label define ma04a_sex_lbl 1 `"Male"'
label define ma04a_sex_lbl 2 `"Female"', add
label values ma04a_sex ma04a_sex_lbl

label define ma04a_birthmo_lbl 01 `"January"'
label define ma04a_birthmo_lbl 02 `"February"', add
label define ma04a_birthmo_lbl 03 `"March"', add
label define ma04a_birthmo_lbl 04 `"April"', add
label define ma04a_birthmo_lbl 05 `"May"', add
label define ma04a_birthmo_lbl 06 `"June"', add
label define ma04a_birthmo_lbl 07 `"July"', add
label define ma04a_birthmo_lbl 08 `"August"', add
label define ma04a_birthmo_lbl 09 `"September"', add
label define ma04a_birthmo_lbl 10 `"October"', add
label define ma04a_birthmo_lbl 11 `"November"', add
label define ma04a_birthmo_lbl 12 `"December"', add
label define ma04a_birthmo_lbl 99 `"Unknown"', add
label values ma04a_birthmo ma04a_birthmo_lbl

label define ma04a_birthyrg_lbl 1900 `"1900"'
label define ma04a_birthyrg_lbl 1901 `"1901"', add
label define ma04a_birthyrg_lbl 1902 `"1902"', add
label define ma04a_birthyrg_lbl 1903 `"1903"', add
label define ma04a_birthyrg_lbl 1904 `"1904"', add
label define ma04a_birthyrg_lbl 1905 `"1905"', add
label define ma04a_birthyrg_lbl 1906 `"1906"', add
label define ma04a_birthyrg_lbl 1907 `"1907"', add
label define ma04a_birthyrg_lbl 1908 `"1908"', add
label define ma04a_birthyrg_lbl 1909 `"1909"', add
label define ma04a_birthyrg_lbl 1910 `"1910"', add
label define ma04a_birthyrg_lbl 1911 `"1911"', add
label define ma04a_birthyrg_lbl 1912 `"1912"', add
label define ma04a_birthyrg_lbl 1913 `"1913"', add
label define ma04a_birthyrg_lbl 1914 `"1914"', add
label define ma04a_birthyrg_lbl 1915 `"1915"', add
label define ma04a_birthyrg_lbl 1916 `"1916"', add
label define ma04a_birthyrg_lbl 1917 `"1917"', add
label define ma04a_birthyrg_lbl 1918 `"1918"', add
label define ma04a_birthyrg_lbl 1919 `"1919"', add
label define ma04a_birthyrg_lbl 1920 `"1920"', add
label define ma04a_birthyrg_lbl 1921 `"1921"', add
label define ma04a_birthyrg_lbl 1922 `"1922"', add
label define ma04a_birthyrg_lbl 1923 `"1923"', add
label define ma04a_birthyrg_lbl 1924 `"1924"', add
label define ma04a_birthyrg_lbl 1925 `"1925"', add
label define ma04a_birthyrg_lbl 1926 `"1926"', add
label define ma04a_birthyrg_lbl 1927 `"1927"', add
label define ma04a_birthyrg_lbl 1928 `"1928"', add
label define ma04a_birthyrg_lbl 1929 `"1929"', add
label define ma04a_birthyrg_lbl 1930 `"1930"', add
label define ma04a_birthyrg_lbl 1931 `"1931"', add
label define ma04a_birthyrg_lbl 1932 `"1932"', add
label define ma04a_birthyrg_lbl 1933 `"1933"', add
label define ma04a_birthyrg_lbl 1934 `"1934"', add
label define ma04a_birthyrg_lbl 1935 `"1935"', add
label define ma04a_birthyrg_lbl 1936 `"1936"', add
label define ma04a_birthyrg_lbl 1937 `"1937"', add
label define ma04a_birthyrg_lbl 1938 `"1938"', add
label define ma04a_birthyrg_lbl 1939 `"1939"', add
label define ma04a_birthyrg_lbl 1940 `"1940"', add
label define ma04a_birthyrg_lbl 1941 `"1941"', add
label define ma04a_birthyrg_lbl 1942 `"1942"', add
label define ma04a_birthyrg_lbl 1943 `"1943"', add
label define ma04a_birthyrg_lbl 1944 `"1944"', add
label define ma04a_birthyrg_lbl 1945 `"1945"', add
label define ma04a_birthyrg_lbl 1946 `"1946"', add
label define ma04a_birthyrg_lbl 1947 `"1947"', add
label define ma04a_birthyrg_lbl 1948 `"1948"', add
label define ma04a_birthyrg_lbl 1949 `"1949"', add
label define ma04a_birthyrg_lbl 1950 `"1950"', add
label define ma04a_birthyrg_lbl 1951 `"1951"', add
label define ma04a_birthyrg_lbl 1952 `"1952"', add
label define ma04a_birthyrg_lbl 1953 `"1953"', add
label define ma04a_birthyrg_lbl 1954 `"1954"', add
label define ma04a_birthyrg_lbl 1955 `"1955"', add
label define ma04a_birthyrg_lbl 1956 `"1956"', add
label define ma04a_birthyrg_lbl 1957 `"1957"', add
label define ma04a_birthyrg_lbl 1958 `"1958"', add
label define ma04a_birthyrg_lbl 1959 `"1959"', add
label define ma04a_birthyrg_lbl 1960 `"1960"', add
label define ma04a_birthyrg_lbl 1961 `"1961"', add
label define ma04a_birthyrg_lbl 1962 `"1962"', add
label define ma04a_birthyrg_lbl 1963 `"1963"', add
label define ma04a_birthyrg_lbl 1964 `"1964"', add
label define ma04a_birthyrg_lbl 1965 `"1965"', add
label define ma04a_birthyrg_lbl 1966 `"1966"', add
label define ma04a_birthyrg_lbl 1967 `"1967"', add
label define ma04a_birthyrg_lbl 1968 `"1968"', add
label define ma04a_birthyrg_lbl 1969 `"1969"', add
label define ma04a_birthyrg_lbl 1970 `"1970"', add
label define ma04a_birthyrg_lbl 1971 `"1971"', add
label define ma04a_birthyrg_lbl 1972 `"1972"', add
label define ma04a_birthyrg_lbl 1973 `"1973"', add
label define ma04a_birthyrg_lbl 1974 `"1974"', add
label define ma04a_birthyrg_lbl 1975 `"1975"', add
label define ma04a_birthyrg_lbl 1976 `"1976"', add
label define ma04a_birthyrg_lbl 1977 `"1977"', add
label define ma04a_birthyrg_lbl 1978 `"1978"', add
label define ma04a_birthyrg_lbl 1979 `"1979"', add
label define ma04a_birthyrg_lbl 1980 `"1980"', add
label define ma04a_birthyrg_lbl 1981 `"1981"', add
label define ma04a_birthyrg_lbl 1982 `"1982"', add
label define ma04a_birthyrg_lbl 1983 `"1983"', add
label define ma04a_birthyrg_lbl 1984 `"1984"', add
label define ma04a_birthyrg_lbl 1985 `"1985"', add
label define ma04a_birthyrg_lbl 1986 `"1986"', add
label define ma04a_birthyrg_lbl 1987 `"1987"', add
label define ma04a_birthyrg_lbl 1988 `"1988"', add
label define ma04a_birthyrg_lbl 1989 `"1989"', add
label define ma04a_birthyrg_lbl 1990 `"1990"', add
label define ma04a_birthyrg_lbl 1991 `"1991"', add
label define ma04a_birthyrg_lbl 1992 `"1992"', add
label define ma04a_birthyrg_lbl 1993 `"1993"', add
label define ma04a_birthyrg_lbl 1994 `"1994"', add
label define ma04a_birthyrg_lbl 1995 `"1995"', add
label define ma04a_birthyrg_lbl 1996 `"1996"', add
label define ma04a_birthyrg_lbl 1997 `"1997"', add
label define ma04a_birthyrg_lbl 1998 `"1998"', add
label define ma04a_birthyrg_lbl 1999 `"1999"', add
label define ma04a_birthyrg_lbl 2000 `"2000"', add
label define ma04a_birthyrg_lbl 2001 `"2001"', add
label define ma04a_birthyrg_lbl 2002 `"2002"', add
label define ma04a_birthyrg_lbl 2003 `"2003"', add
label define ma04a_birthyrg_lbl 2004 `"2004"', add
label define ma04a_birthyrg_lbl 9999 `"Unknown"', add
label values ma04a_birthyrg ma04a_birthyrg_lbl

label define ma04a_birthyrh_lbl 1317 `"1317"'
label define ma04a_birthyrh_lbl 1319 `"1319"', add
label define ma04a_birthyrh_lbl 1320 `"1320"', add
label define ma04a_birthyrh_lbl 1321 `"1321"', add
label define ma04a_birthyrh_lbl 1322 `"1322"', add
label define ma04a_birthyrh_lbl 1323 `"1323"', add
label define ma04a_birthyrh_lbl 1324 `"1324"', add
label define ma04a_birthyrh_lbl 1325 `"1325"', add
label define ma04a_birthyrh_lbl 1326 `"1326"', add
label define ma04a_birthyrh_lbl 1327 `"1327"', add
label define ma04a_birthyrh_lbl 1328 `"1328"', add
label define ma04a_birthyrh_lbl 1329 `"1329"', add
label define ma04a_birthyrh_lbl 1330 `"1330"', add
label define ma04a_birthyrh_lbl 1331 `"1331"', add
label define ma04a_birthyrh_lbl 1333 `"1333"', add
label define ma04a_birthyrh_lbl 1334 `"1334"', add
label define ma04a_birthyrh_lbl 1335 `"1335"', add
label define ma04a_birthyrh_lbl 1336 `"1336"', add
label define ma04a_birthyrh_lbl 1337 `"1337"', add
label define ma04a_birthyrh_lbl 1338 `"1338"', add
label define ma04a_birthyrh_lbl 1339 `"1339"', add
label define ma04a_birthyrh_lbl 1340 `"1340"', add
label define ma04a_birthyrh_lbl 1341 `"1341"', add
label define ma04a_birthyrh_lbl 1342 `"1342"', add
label define ma04a_birthyrh_lbl 1343 `"1343"', add
label define ma04a_birthyrh_lbl 1344 `"1344"', add
label define ma04a_birthyrh_lbl 1345 `"1345"', add
label define ma04a_birthyrh_lbl 1346 `"1346"', add
label define ma04a_birthyrh_lbl 1347 `"1347"', add
label define ma04a_birthyrh_lbl 1348 `"1348"', add
label define ma04a_birthyrh_lbl 1349 `"1349"', add
label define ma04a_birthyrh_lbl 1350 `"1350"', add
label define ma04a_birthyrh_lbl 1351 `"1351"', add
label define ma04a_birthyrh_lbl 1352 `"1352"', add
label define ma04a_birthyrh_lbl 1353 `"1353"', add
label define ma04a_birthyrh_lbl 1354 `"1354"', add
label define ma04a_birthyrh_lbl 1355 `"1355"', add
label define ma04a_birthyrh_lbl 1356 `"1356"', add
label define ma04a_birthyrh_lbl 1357 `"1357"', add
label define ma04a_birthyrh_lbl 1359 `"1359"', add
label define ma04a_birthyrh_lbl 1360 `"1360"', add
label define ma04a_birthyrh_lbl 1361 `"1361"', add
label define ma04a_birthyrh_lbl 1362 `"1362"', add
label define ma04a_birthyrh_lbl 1363 `"1363"', add
label define ma04a_birthyrh_lbl 1364 `"1364"', add
label define ma04a_birthyrh_lbl 1365 `"1365"', add
label define ma04a_birthyrh_lbl 1366 `"1366"', add
label define ma04a_birthyrh_lbl 1367 `"1367"', add
label define ma04a_birthyrh_lbl 1368 `"1368"', add
label define ma04a_birthyrh_lbl 1369 `"1369"', add
label define ma04a_birthyrh_lbl 1370 `"1370"', add
label define ma04a_birthyrh_lbl 1371 `"1371"', add
label define ma04a_birthyrh_lbl 1372 `"1372"', add
label define ma04a_birthyrh_lbl 1373 `"1373"', add
label define ma04a_birthyrh_lbl 1374 `"1374"', add
label define ma04a_birthyrh_lbl 1375 `"1375"', add
label define ma04a_birthyrh_lbl 1376 `"1376"', add
label define ma04a_birthyrh_lbl 1377 `"1377"', add
label define ma04a_birthyrh_lbl 1378 `"1378"', add
label define ma04a_birthyrh_lbl 1379 `"1379"', add
label define ma04a_birthyrh_lbl 1380 `"1380"', add
label define ma04a_birthyrh_lbl 1381 `"1381"', add
label define ma04a_birthyrh_lbl 1382 `"1382"', add
label define ma04a_birthyrh_lbl 1383 `"1383"', add
label define ma04a_birthyrh_lbl 1384 `"1384"', add
label define ma04a_birthyrh_lbl 1385 `"1385"', add
label define ma04a_birthyrh_lbl 1386 `"1386"', add
label define ma04a_birthyrh_lbl 1387 `"1387"', add
label define ma04a_birthyrh_lbl 1388 `"1388"', add
label define ma04a_birthyrh_lbl 1389 `"1389"', add
label define ma04a_birthyrh_lbl 1390 `"1390"', add
label define ma04a_birthyrh_lbl 1391 `"1391"', add
label define ma04a_birthyrh_lbl 1392 `"1392"', add
label define ma04a_birthyrh_lbl 1393 `"1393"', add
label define ma04a_birthyrh_lbl 1394 `"1394"', add
label define ma04a_birthyrh_lbl 1395 `"1395"', add
label define ma04a_birthyrh_lbl 1396 `"1396"', add
label define ma04a_birthyrh_lbl 1398 `"1397"', add
label define ma04a_birthyrh_lbl 1399 `"1399"', add
label define ma04a_birthyrh_lbl 1400 `"1400"', add
label define ma04a_birthyrh_lbl 1401 `"1401"', add
label define ma04a_birthyrh_lbl 1402 `"1402"', add
label define ma04a_birthyrh_lbl 1403 `"1403"', add
label define ma04a_birthyrh_lbl 1404 `"1404"', add
label define ma04a_birthyrh_lbl 1405 `"1405"', add
label define ma04a_birthyrh_lbl 1406 `"1406"', add
label define ma04a_birthyrh_lbl 1407 `"1407"', add
label define ma04a_birthyrh_lbl 1408 `"1408"', add
label define ma04a_birthyrh_lbl 1409 `"1409"', add
label define ma04a_birthyrh_lbl 1410 `"1410"', add
label define ma04a_birthyrh_lbl 1411 `"1411"', add
label define ma04a_birthyrh_lbl 1412 `"1412"', add
label define ma04a_birthyrh_lbl 1413 `"1413"', add
label define ma04a_birthyrh_lbl 1414 `"1414"', add
label define ma04a_birthyrh_lbl 1415 `"1415"', add
label define ma04a_birthyrh_lbl 1416 `"1416"', add
label define ma04a_birthyrh_lbl 1417 `"1417"', add
label define ma04a_birthyrh_lbl 1418 `"1418"', add
label define ma04a_birthyrh_lbl 1419 `"1419"', add
label define ma04a_birthyrh_lbl 1420 `"1420"', add
label define ma04a_birthyrh_lbl 1421 `"1421"', add
label define ma04a_birthyrh_lbl 1422 `"1422"', add
label define ma04a_birthyrh_lbl 1423 `"1423"', add
label define ma04a_birthyrh_lbl 1424 `"1424"', add
label define ma04a_birthyrh_lbl 1425 `"1425"', add
label define ma04a_birthyrh_lbl 9999 `"Unknown"', add
label values ma04a_birthyrh ma04a_birthyrh_lbl

label define ma04a_age_lbl 00 `"0"'
label define ma04a_age_lbl 01 `"1"', add
label define ma04a_age_lbl 02 `"2"', add
label define ma04a_age_lbl 03 `"3"', add
label define ma04a_age_lbl 04 `"4"', add
label define ma04a_age_lbl 05 `"5"', add
label define ma04a_age_lbl 06 `"6"', add
label define ma04a_age_lbl 07 `"7"', add
label define ma04a_age_lbl 08 `"8"', add
label define ma04a_age_lbl 09 `"9"', add
label define ma04a_age_lbl 10 `"10"', add
label define ma04a_age_lbl 11 `"11"', add
label define ma04a_age_lbl 12 `"12"', add
label define ma04a_age_lbl 13 `"13"', add
label define ma04a_age_lbl 14 `"14"', add
label define ma04a_age_lbl 15 `"15"', add
label define ma04a_age_lbl 16 `"16"', add
label define ma04a_age_lbl 17 `"17"', add
label define ma04a_age_lbl 18 `"18"', add
label define ma04a_age_lbl 19 `"19"', add
label define ma04a_age_lbl 20 `"20"', add
label define ma04a_age_lbl 21 `"21"', add
label define ma04a_age_lbl 22 `"22"', add
label define ma04a_age_lbl 23 `"23"', add
label define ma04a_age_lbl 24 `"24"', add
label define ma04a_age_lbl 25 `"25"', add
label define ma04a_age_lbl 26 `"26"', add
label define ma04a_age_lbl 27 `"27"', add
label define ma04a_age_lbl 28 `"28"', add
label define ma04a_age_lbl 29 `"29"', add
label define ma04a_age_lbl 30 `"30"', add
label define ma04a_age_lbl 31 `"31"', add
label define ma04a_age_lbl 32 `"32"', add
label define ma04a_age_lbl 33 `"33"', add
label define ma04a_age_lbl 34 `"34"', add
label define ma04a_age_lbl 35 `"35"', add
label define ma04a_age_lbl 36 `"36"', add
label define ma04a_age_lbl 37 `"37"', add
label define ma04a_age_lbl 38 `"38"', add
label define ma04a_age_lbl 39 `"39"', add
label define ma04a_age_lbl 40 `"40"', add
label define ma04a_age_lbl 41 `"41"', add
label define ma04a_age_lbl 42 `"42"', add
label define ma04a_age_lbl 43 `"43"', add
label define ma04a_age_lbl 44 `"44"', add
label define ma04a_age_lbl 45 `"45"', add
label define ma04a_age_lbl 46 `"46"', add
label define ma04a_age_lbl 47 `"47"', add
label define ma04a_age_lbl 48 `"48"', add
label define ma04a_age_lbl 49 `"49"', add
label define ma04a_age_lbl 50 `"50"', add
label define ma04a_age_lbl 51 `"51"', add
label define ma04a_age_lbl 52 `"52"', add
label define ma04a_age_lbl 53 `"53"', add
label define ma04a_age_lbl 54 `"54"', add
label define ma04a_age_lbl 55 `"55"', add
label define ma04a_age_lbl 56 `"56"', add
label define ma04a_age_lbl 57 `"57"', add
label define ma04a_age_lbl 58 `"58"', add
label define ma04a_age_lbl 59 `"59"', add
label define ma04a_age_lbl 60 `"60"', add
label define ma04a_age_lbl 61 `"61"', add
label define ma04a_age_lbl 62 `"62"', add
label define ma04a_age_lbl 63 `"63"', add
label define ma04a_age_lbl 64 `"64"', add
label define ma04a_age_lbl 65 `"65"', add
label define ma04a_age_lbl 66 `"66"', add
label define ma04a_age_lbl 67 `"67"', add
label define ma04a_age_lbl 68 `"68"', add
label define ma04a_age_lbl 69 `"69"', add
label define ma04a_age_lbl 70 `"70"', add
label define ma04a_age_lbl 71 `"71"', add
label define ma04a_age_lbl 72 `"72"', add
label define ma04a_age_lbl 73 `"73"', add
label define ma04a_age_lbl 74 `"74"', add
label define ma04a_age_lbl 75 `"75"', add
label define ma04a_age_lbl 76 `"76"', add
label define ma04a_age_lbl 77 `"77"', add
label define ma04a_age_lbl 78 `"78"', add
label define ma04a_age_lbl 79 `"79"', add
label define ma04a_age_lbl 80 `"80"', add
label define ma04a_age_lbl 81 `"81"', add
label define ma04a_age_lbl 82 `"82"', add
label define ma04a_age_lbl 83 `"83"', add
label define ma04a_age_lbl 84 `"84"', add
label define ma04a_age_lbl 85 `"85"', add
label define ma04a_age_lbl 86 `"86"', add
label define ma04a_age_lbl 87 `"87"', add
label define ma04a_age_lbl 88 `"88"', add
label define ma04a_age_lbl 89 `"89"', add
label define ma04a_age_lbl 90 `"90"', add
label define ma04a_age_lbl 91 `"91"', add
label define ma04a_age_lbl 92 `"92"', add
label define ma04a_age_lbl 93 `"93"', add
label define ma04a_age_lbl 94 `"94"', add
label define ma04a_age_lbl 95 `"95"', add
label define ma04a_age_lbl 96 `"96"', add
label define ma04a_age_lbl 97 `"97"', add
label define ma04a_age_lbl 98 `"98+"', add
label define ma04a_age_lbl 99 `"Unknown"', add
label values ma04a_age ma04a_age_lbl

label define ma04a_marst_lbl 1 `"Single"'
label define ma04a_marst_lbl 2 `"Married"', add
label define ma04a_marst_lbl 3 `"Divorced"', add
label define ma04a_marst_lbl 4 `"Widowed"', add
label values ma04a_marst ma04a_marst_lbl

label define ma04a_chhome_lbl 00 `"0"'
label define ma04a_chhome_lbl 01 `"1"', add
label define ma04a_chhome_lbl 02 `"2"', add
label define ma04a_chhome_lbl 03 `"3"', add
label define ma04a_chhome_lbl 04 `"4"', add
label define ma04a_chhome_lbl 05 `"5"', add
label define ma04a_chhome_lbl 06 `"6"', add
label define ma04a_chhome_lbl 07 `"7"', add
label define ma04a_chhome_lbl 08 `"8"', add
label define ma04a_chhome_lbl 09 `"9"', add
label define ma04a_chhome_lbl 10 `"10"', add
label define ma04a_chhome_lbl 11 `"11"', add
label define ma04a_chhome_lbl 12 `"12"', add
label define ma04a_chhome_lbl 13 `"13+"', add
label define ma04a_chhome_lbl 98 `"Unknown"', add
label define ma04a_chhome_lbl 99 `"NIU (not in universe)"', add
label values ma04a_chhome ma04a_chhome_lbl

label define ma04a_chaway_lbl 00 `"0"'
label define ma04a_chaway_lbl 01 `"1"', add
label define ma04a_chaway_lbl 02 `"2"', add
label define ma04a_chaway_lbl 03 `"3"', add
label define ma04a_chaway_lbl 04 `"4"', add
label define ma04a_chaway_lbl 05 `"5"', add
label define ma04a_chaway_lbl 06 `"6"', add
label define ma04a_chaway_lbl 07 `"7"', add
label define ma04a_chaway_lbl 08 `"8"', add
label define ma04a_chaway_lbl 09 `"9"', add
label define ma04a_chaway_lbl 10 `"10"', add
label define ma04a_chaway_lbl 11 `"11"', add
label define ma04a_chaway_lbl 12 `"12"', add
label define ma04a_chaway_lbl 13 `"13+"', add
label define ma04a_chaway_lbl 98 `"Unknown"', add
label define ma04a_chaway_lbl 99 `"NIU (not in universe)"', add
label values ma04a_chaway ma04a_chaway_lbl

label define ma04a_chdead_lbl 00 `"0"'
label define ma04a_chdead_lbl 01 `"1"', add
label define ma04a_chdead_lbl 02 `"2"', add
label define ma04a_chdead_lbl 03 `"3"', add
label define ma04a_chdead_lbl 04 `"4"', add
label define ma04a_chdead_lbl 05 `"5"', add
label define ma04a_chdead_lbl 06 `"6"', add
label define ma04a_chdead_lbl 07 `"7"', add
label define ma04a_chdead_lbl 08 `"8"', add
label define ma04a_chdead_lbl 09 `"9"', add
label define ma04a_chdead_lbl 10 `"10"', add
label define ma04a_chdead_lbl 11 `"11"', add
label define ma04a_chdead_lbl 12 `"12"', add
label define ma04a_chdead_lbl 13 `"13"', add
label define ma04a_chdead_lbl 98 `"Unknown"', add
label define ma04a_chdead_lbl 99 `"NIU (not in universe)"', add
label values ma04a_chdead ma04a_chdead_lbl

label define ma04a_chbornyr_lbl 0 `"0"'
label define ma04a_chbornyr_lbl 1 `"1"', add
label define ma04a_chbornyr_lbl 2 `"2 or more"', add
label define ma04a_chbornyr_lbl 8 `"Unknown"', add
label define ma04a_chbornyr_lbl 9 `"NIU (not in universe)"', add
label values ma04a_chbornyr ma04a_chbornyr_lbl

label define ma04a_chdeadyr_lbl 0 `"0"'
label define ma04a_chdeadyr_lbl 1 `"1"', add
label define ma04a_chdeadyr_lbl 2 `"2 or more"', add
label define ma04a_chdeadyr_lbl 8 `"Unknown"', add
label define ma04a_chdeadyr_lbl 9 `"NIU (not in universe)"', add
label values ma04a_chdeadyr ma04a_chdeadyr_lbl

label define ma04a_lit_lbl 1 `"Does not know how to read and write"'
label define ma04a_lit_lbl 2 `"Arabic only"', add
label define ma04a_lit_lbl 3 `"Arabic and French"', add
label define ma04a_lit_lbl 4 `"Arabic, French, and another"', add
label define ma04a_lit_lbl 5 `"Arabic and another (not French)"', add
label define ma04a_lit_lbl 6 `"Other cases"', add
label define ma04a_lit_lbl 8 `"Unknown"', add
label define ma04a_lit_lbl 9 `"NIU (not in universe)"', add
label values ma04a_lit ma04a_lit_lbl

label define ma04a_edlevel_lbl 0 `"None"'
label define ma04a_edlevel_lbl 1 `"Pre-school"', add
label define ma04a_edlevel_lbl 2 `"Basic education"', add
label define ma04a_edlevel_lbl 3 `"Secondary"', add
label define ma04a_edlevel_lbl 4 `"Higher education"', add
label define ma04a_edlevel_lbl 8 `"Unknown"', add
label values ma04a_edlevel ma04a_edlevel_lbl

label define ma04a_edlevel2_lbl 00 `"None"'
label define ma04a_edlevel2_lbl 01 `"Pre-school, not specified"', add
label define ma04a_edlevel2_lbl 02 `"Kindergarten"', add
label define ma04a_edlevel2_lbl 03 `"Koranic school"', add
label define ma04a_edlevel2_lbl 10 `"Basic education, first grade"', add
label define ma04a_edlevel2_lbl 11 `"Basic education, second grade"', add
label define ma04a_edlevel2_lbl 12 `"Basic education, third grade"', add
label define ma04a_edlevel2_lbl 13 `"Basic education, fourth grade"', add
label define ma04a_edlevel2_lbl 14 `"Basic education, fifth grade"', add
label define ma04a_edlevel2_lbl 15 `"Basic education, sixth grade"', add
label define ma04a_edlevel2_lbl 16 `"Basic education, seventh grade"', add
label define ma04a_edlevel2_lbl 17 `"Basic education, eighth grade"', add
label define ma04a_edlevel2_lbl 18 `"Basic education, ninth grade"', add
label define ma04a_edlevel2_lbl 19 `"Basic education, grade unknown"', add
label define ma04a_edlevel2_lbl 21 `"Secondary school, first year"', add
label define ma04a_edlevel2_lbl 22 `"Secondary school, second year"', add
label define ma04a_edlevel2_lbl 23 `"Secondary school, third year"', add
label define ma04a_edlevel2_lbl 29 `"Secondary school, year unknown"', add
label define ma04a_edlevel2_lbl 31 `"Higher education, 1 year"', add
label define ma04a_edlevel2_lbl 32 `"Higher education, 2 years"', add
label define ma04a_edlevel2_lbl 33 `"Higher education, 3 years"', add
label define ma04a_edlevel2_lbl 34 `"Higher education, 4 years"', add
label define ma04a_edlevel2_lbl 35 `"Higher education, 5 years"', add
label define ma04a_edlevel2_lbl 36 `"Higher education, 6 years"', add
label define ma04a_edlevel2_lbl 37 `"Higher education, 7 years"', add
label define ma04a_edlevel2_lbl 38 `"Higher education, 8 years"', add
label define ma04a_edlevel2_lbl 39 `"Higher education, 9 years"', add
label define ma04a_edlevel2_lbl 98 `"Unknown"', add
label values ma04a_edlevel2 ma04a_edlevel2_lbl

label define ma04a_schoolty_lbl 1 `"None"'
label define ma04a_schoolty_lbl 2 `"Public sector"', add
label define ma04a_schoolty_lbl 3 `"Private sector"', add
label define ma04a_schoolty_lbl 9 `"Unknown"', add
label values ma04a_schoolty ma04a_schoolty_lbl

label define ma04a_lang1_lbl 1 `"Arabic (colloquial)"'
label define ma04a_lang1_lbl 2 `"Tachalhit"', add
label define ma04a_lang1_lbl 3 `"Tamazight"', add
label define ma04a_lang1_lbl 4 `"Tarifite"', add
label define ma04a_lang1_lbl 5 `"Hassania"', add
label define ma04a_lang1_lbl 8 `"Unknown"', add
label values ma04a_lang1 ma04a_lang1_lbl

label define ma04a_lang2_lbl 0 `"None"'
label define ma04a_lang2_lbl 1 `"Arabic (colloquial)"', add
label define ma04a_lang2_lbl 2 `"Tachalhit"', add
label define ma04a_lang2_lbl 3 `"Tamazight"', add
label define ma04a_lang2_lbl 4 `"Tarifite"', add
label define ma04a_lang2_lbl 5 `"Hassania"', add
label values ma04a_lang2 ma04a_lang2_lbl

label define ma04a_disab_lbl 1 `"None"'
label define ma04a_disab_lbl 2 `"Mobility (limbs)"', add
label define ma04a_disab_lbl 3 `"Visual (blind)"', add
label define ma04a_disab_lbl 4 `"Hearing (deaf)"', add
label define ma04a_disab_lbl 5 `"Vocal (mute)"', add
label define ma04a_disab_lbl 6 `"Mental disorder"', add
label define ma04a_disab_lbl 7 `"Chronic disease"', add
label values ma04a_disab ma04a_disab_lbl

label define ma04a_empstat_lbl 0 `"Employed"'
label define ma04a_empstat_lbl 1 `"Unemployed, never worked"', add
label define ma04a_empstat_lbl 2 `"Unemployed, worked before"', add
label define ma04a_empstat_lbl 3 `"House wife"', add
label define ma04a_empstat_lbl 4 `"Student, pupil"', add
label define ma04a_empstat_lbl 5 `"Person with private means"', add
label define ma04a_empstat_lbl 6 `"Retired"', add
label define ma04a_empstat_lbl 7 `"Disabled/impaired/sick"', add
label define ma04a_empstat_lbl 8 `"Children (too young to work)"', add
label define ma04a_empstat_lbl 9 `"Other"', add
label values ma04a_empstat ma04a_empstat_lbl

label define ma04a_classwk_lbl 01 `"Employer"'
label define ma04a_classwk_lbl 02 `"Self-employed, locally"', add
label define ma04a_classwk_lbl 03 `"Self-employed, at home"', add
label define ma04a_classwk_lbl 04 `"Self-employed, no premises"', add
label define ma04a_classwk_lbl 05 `"Salaried, public sector"', add
label define ma04a_classwk_lbl 06 `"Salaried, private sector"', add
label define ma04a_classwk_lbl 07 `"Family aid"', add
label define ma04a_classwk_lbl 08 `"Apprentice"', add
label define ma04a_classwk_lbl 98 `"Unknown"', add
label define ma04a_classwk_lbl 99 `"NIU (not in universe)"', add
label values ma04a_classwk ma04a_classwk_lbl

label define ma04a_occ3_lbl 011 `"Managers of the central public administration"'
label define ma04a_occ3_lbl 012 `"Members of the diplomatic corps"', add
label define ma04a_occ3_lbl 021 `"Managers of the local territorial administration"', add
label define ma04a_occ3_lbl 022 `"Managers of exterior services department"', add
label define ma04a_occ3_lbl 031 `"Directors, deputy directors of public non-profit and commercial public establishments, and similar"', add
label define ma04a_occ3_lbl 032 `"Heads of departments, heads of divisions and heads of departments of public non-profit and commercial public establishments, and similar"', add
label define ma04a_occ3_lbl 039 `"Other managers of non-profit agencies and commercial public establishments nec"', add
label define ma04a_occ3_lbl 041 `"Managers of higher education institutions"', add
label define ma04a_occ3_lbl 042 `"Managers of secondary education"', add
label define ma04a_occ3_lbl 043 `"Managers of basic education institutions and preschools"', add
label define ma04a_occ3_lbl 044 `"Managers of educational institutions"', add
label define ma04a_occ3_lbl 049 `"Other managers of educational institutions nec"', add
label define ma04a_occ3_lbl 051 `"Department head, director of hospitals, clinics, health centers and similar"', add
label define ma04a_occ3_lbl 052 `"Heads of medical and paramedical departments and program managers"', add
label define ma04a_occ3_lbl 059 `"Other executives of hospitals, clinics, health centers and similar nec"', add
label define ma04a_occ3_lbl 061 `"MPs, parliamentary and municipal councilors and party leaders"', add
label define ma04a_occ3_lbl 063 `"Managers and executives of organizations for economic purposes, including trade unions"', add
label define ma04a_occ3_lbl 064 `"Managers and executives of non-profit organizations for sporting, cultural and social events"', add
label define ma04a_occ3_lbl 071 `"Executives of companies in agriculture and forestry"', add
label define ma04a_occ3_lbl 072 `"Executives of fishing company"', add
label define ma04a_occ3_lbl 073 `"Executives of construction companies"', add
label define ma04a_occ3_lbl 074 `"Executives of industrial companies"', add
label define ma04a_occ3_lbl 075 `"Executives of mining companies"', add
label define ma04a_occ3_lbl 076 `"Executives of specialized corporate service companies"', add
label define ma04a_occ3_lbl 079 `"Executives of companies or quasi-corporation"', add
label define ma04a_occ3_lbl 081 `"Owners of enterprises not organized in companies or quasi-corporations"', add
label define ma04a_occ3_lbl 111 `"Physicists, astronomers, chemists, geophysicists, mathematicians and similar"', add
label define ma04a_occ3_lbl 112 `"Senior information technology executives"', add
label define ma04a_occ3_lbl 113 `"Organizational, meteorology engineers, and other engineers"', add
label define ma04a_occ3_lbl 114 `"Biologists, botanists, zoologists, pharmacologists, bacteriologists, and similar"', add
label define ma04a_occ3_lbl 115 `"Senior health executives, including general practitioners, surgeons, and surgery dentists"', add
label define ma04a_occ3_lbl 121 `"Social scientists and similar professionals"', add
label define ma04a_occ3_lbl 124 `"Legal advisers, political scientists and similar"', add
label define ma04a_occ3_lbl 125 `"Linguists, translators, interpreters, novelists, writers and literary professionals"', add
label define ma04a_occ3_lbl 141 `"Higher education professors"', add
label define ma04a_occ3_lbl 142 `"Teachers in secondary education and vocational training (technical training) and similar"', add
label define ma04a_occ3_lbl 151 `"Lawyers or legal advisors"', add
label define ma04a_occ3_lbl 152 `"Attorneys and judges"', add
label define ma04a_occ3_lbl 153 `"Notaries, tax advisors, solicitors, adouls and other executive level lawyers"', add
label define ma04a_occ3_lbl 161 `"Archivists, research workers, and librarians"', add
label define ma04a_occ3_lbl 162 `"Journalists, television and radio reporters, and similar"', add
label define ma04a_occ3_lbl 171 `"Executive administrators"', add
label define ma04a_occ3_lbl 172 `"Financial and management executives"', add
label define ma04a_occ3_lbl 181 `"Sculptors, painters, cartoonists, theater and film decorators, advertising, fashion, and poster designers, models and similar"', add
label define ma04a_occ3_lbl 182 `"Composers, musicians, singers, choreographers, dancers, actors, producers and directors of film; and other performance artists"', add
label define ma04a_occ3_lbl 184 `"Other performance artists nec"', add
label define ma04a_occ3_lbl 211 `"Technicians in industry and energy"', add
label define ma04a_occ3_lbl 212 `"Construction and public works technicians"', add
label define ma04a_occ3_lbl 221 `"Electrical engineering technicians for electrical and electromechanical appliances"', add
label define ma04a_occ3_lbl 222 `"Optical and electronic equipment technicians"', add
label define ma04a_occ3_lbl 229 `"Electrical engineering technicians in electronics and telecommunications nec"', add
label define ma04a_occ3_lbl 231 `"Technicians specialized in crops"', add
label define ma04a_occ3_lbl 233 `"Agricultural technology specialized technicians and agricultural advisors"', add
label define ma04a_occ3_lbl 234 `"Water and forestry technicians"', add
label define ma04a_occ3_lbl 235 `"Agricultural research, water affairs and forestry research, animal production research and related technicians"', add
label define ma04a_occ3_lbl 236 `"Land conservation technicians, assistants, supervisors and technicians treated land legislation"', add
label define ma04a_occ3_lbl 239 `"Agriculture, livestock and forest technicians nec"', add
label define ma04a_occ3_lbl 241 `"Intermediate professionals in modern healthcare (except nursing)"', add
label define ma04a_occ3_lbl 242 `"Nurses and registered midwifes"', add
label define ma04a_occ3_lbl 243 `"Paramedic technicians and related workers"', add
label define ma04a_occ3_lbl 249 `"Technicians, nec"', add
label define ma04a_occ3_lbl 251 `"Second cycle teachers of basic education"', add
label define ma04a_occ3_lbl 252 `"First cycle teachers of basic education"', add
label define ma04a_occ3_lbl 253 `"Preschool education teachers"', add
label define ma04a_occ3_lbl 254 `"Vocational training center teachers (qualification and specialization level)"', add
label define ma04a_occ3_lbl 259 `"Other teachers in basic education, preschool, and vocational training centers (qualification and specialization level) and similar nec"', add
label define ma04a_occ3_lbl 261 `"Middle level executives of public and local services, and public and semi-public businesses"', add
label define ma04a_occ3_lbl 262 `"Sales managers, buyers, sales representative and middle-level trade professionals"', add
label define ma04a_occ3_lbl 263 `"Middle-level professionals in finance and management"', add
label define ma04a_occ3_lbl 264 `"Computer technicians, programmers, statistical technicians and similar middle-level executives"', add
label define ma04a_occ3_lbl 269 `"Middle-level executives in trade, finance, and management, middle-level executives in computer and statistics, middle-level executives in legal professions and similar nec"', add
label define ma04a_occ3_lbl 271 `"Social services technicians, social workers and related middle-level executives specializing in social and human sciences"', add
label define ma04a_occ3_lbl 272 `"Middle-level professionals in entertainment and sports"', add
label define ma04a_occ3_lbl 273 `"Middle-level professionals in tourism and hospitality"', add
label define ma04a_occ3_lbl 279 `"Middle-level professionals in information science and communications, middle-level professionals in the social sciences, middle-level professionals in the arts, sports and entertainment, and other services nec"', add
label define ma04a_occ3_lbl 281 `"Deck and sea fishing technicians: shift supervisor in fishing, second deck officer, skipper, naval engineering technicians and similar"', add
label define ma04a_occ3_lbl 282 `"Professional aircraft and helicopter pilots, flight instructors; air traffic controllers; aviation and air telecommunications security technicians and related professionals"', add
label define ma04a_occ3_lbl 289 `"Sea and air transport vehicle technicians, meteorologists, and related technicians"', add
label define ma04a_occ3_lbl 292 `"Hygiene safety standards and quality controllers, and similar"', add
label define ma04a_occ3_lbl 293 `"Mechanical technicians (repair and maintenance only)"', add
label define ma04a_occ3_lbl 299 `"Technicians and middle-level staff nec"', add
label define ma04a_occ3_lbl 311 `"Clerical work"', add
label define ma04a_occ3_lbl 312 `"Administrative employees in direct contact with the population"', add
label define ma04a_occ3_lbl 321 `"Sales clerks, shop assistants and demonstrators nec, sales by mail, service station employee, and similar"', add
label define ma04a_occ3_lbl 331 `"Travel attendants, guides and other related personnel"', add
label define ma04a_occ3_lbl 332 `"Employees in food services"', add
label define ma04a_occ3_lbl 341 `"Babysitters, aides and similar"', add
label define ma04a_occ3_lbl 342 `"Qualified employees in domestic services"', add
label define ma04a_occ3_lbl 351 `"Security services personnel"', add
label define ma04a_occ3_lbl 369 `"Religious personnel (including leaders and employees)"', add
label define ma04a_occ3_lbl 391 `"Other employees nec"', add
label define ma04a_occ3_lbl 410 `"Wholesale or discount vendors of agricultural, forest, fishing product"', add
label define ma04a_occ3_lbl 411 `"Wholesale or discount vendors of capital and intermediate pieces"', add
label define ma04a_occ3_lbl 412 `"Wholesale or discount vendors in drugstores, hardware stores, and building materials"', add
label define ma04a_occ3_lbl 413 `"Wholesale or discount vendors of home and office equipment"', add
label define ma04a_occ3_lbl 414 `"Wholesale or discount vendors of textiles, leather and footwear"', add
label define ma04a_occ3_lbl 415 `"Wholesale or discount vendors of chemical products, specialty chemicals, hydrocarbons, and minerals"', add
label define ma04a_occ3_lbl 417 `"Wholesale or discount vendors of various recreational, hobby, and personal items"', add
label define ma04a_occ3_lbl 419 `"Wholesale or discount vendors nec"', add
label define ma04a_occ3_lbl 421 `"Grocers"', add
label define ma04a_occ3_lbl 422 `"Retailer for food products"', add
label define ma04a_occ3_lbl 423 `"Retailers for agricultural, forest, and sea products"', add
label define ma04a_occ3_lbl 424 `"Retailers for combustibles"', add
label define ma04a_occ3_lbl 425 `"Retailer for textiles, footwear and leather goods"', add
label define ma04a_occ3_lbl 426 `"Retailer for furniture and décor products"', add
label define ma04a_occ3_lbl 427 `"Retailer for household appliances and goods"', add
label define ma04a_occ3_lbl 428 `"Retailer in drugstores, and for hardware and building materials"', add
label define ma04a_occ3_lbl 431 `"Retailer for cosmetic, perfume, beauty, entertainment products and similar"', add
label define ma04a_occ3_lbl 432 `"Retailer for intermediate goods (equipment and supplies), vehicles, motorcycles and bicycles"', add
label define ma04a_occ3_lbl 433 `"Retailer for paper, book, newspapers, periodicals and similar"', add
label define ma04a_occ3_lbl 434 `"Retailer for watches, jewelry, various recreational, hobby, and personal items"', add
label define ma04a_occ3_lbl 435 `"Itinerant souk retailers of various products"', add
label define ma04a_occ3_lbl 436 `"Retailers for various artisan, bazar products and similar"', add
label define ma04a_occ3_lbl 439 `"Retailers nec"', add
label define ma04a_occ3_lbl 441 `"Insurance agents and insurance brokers"', add
label define ma04a_occ3_lbl 442 `"Real estate agents"', add
label define ma04a_occ3_lbl 444 `"Advertising agents"', add
label define ma04a_occ3_lbl 446 `"Managing owners of travel agencies"', add
label define ma04a_occ3_lbl 447 `"Other trade agents for business services"', add
label define ma04a_occ3_lbl 449 `"Traders and financial agents nec"', add
label define ma04a_occ3_lbl 511 `"Operators specialized in agriculture"', add
label define ma04a_occ3_lbl 512 `"Operators specializing in breeding, poultry, apiculture and sericulture"', add
label define ma04a_occ3_lbl 513 `"Farming operators in related crop and livestock (various fellahs)"', add
label define ma04a_occ3_lbl 521 `"Fishing operators"', add
label define ma04a_occ3_lbl 522 `"Traditional independent fishermen"', add
label define ma04a_occ3_lbl 531 `"Loggers for charcoal, wood joinery and related"', add
label define ma04a_occ3_lbl 539 `"Foresters, hunters, independent loggers, and related operators nec"', add
label define ma04a_occ3_lbl 601 `"Miners, skilled workers and laborer in mineral processing and similar"', add
label define ma04a_occ3_lbl 602 `"Carriers, skilled workers and laborer in stone and marble treatment, stone polishers, engravers, tracers, and similar"', add
label define ma04a_occ3_lbl 603 `"Diggers, well drillers, and similar"', add
label define ma04a_occ3_lbl 611 `"Skilled workers and laborer in large construction works and similar"', add
label define ma04a_occ3_lbl 612 `"Skilled workers and laborer in secondary construction works"', add
label define ma04a_occ3_lbl 613 `"Daubers, building painters, building plasterers, paperhangers, and other craftsmen and skilled workers"', add
label define ma04a_occ3_lbl 621 `"Moulders, welders, and sheet metal workers"', add
label define ma04a_occ3_lbl 622 `"Galvanizers, chromers, silver platers, and similar"', add
label define ma04a_occ3_lbl 623 `"Blacksmiths and toolmakers"', add
label define ma04a_occ3_lbl 624 `"Metal objects manufacturers"', add
label define ma04a_occ3_lbl 631 `"Repair and maintenance mechanics for machinery and vehicles"', add
label define ma04a_occ3_lbl 632 `"Electricity and electronics assembly, repair and installation craftsmen and skilled workers"', add
label define ma04a_occ3_lbl 641 `"Precision mechanics for metal, watch, clock, jewelry and similar materials"', add
label define ma04a_occ3_lbl 642 `"Glass makers, potters and related workers"', add
label define ma04a_occ3_lbl 643 `"Craftsmen and skilled workers in printing"', add
label define ma04a_occ3_lbl 651 `"Craftsmen and skilled workers for wood and paper manufacturing preparation"', add
label define ma04a_occ3_lbl 652 `"Carpenters and manufacturers of wooden objects"', add
label define ma04a_occ3_lbl 653 `"Manufacturers of alfa, palms, reeds, cork objects, paper, cardboard products and similar"', add
label define ma04a_occ3_lbl 661 `"Artisans of food, beverages and tobacco"', add
label define ma04a_occ3_lbl 671 `"Artisans and skilled workers in catering and hospitality"', add
label define ma04a_occ3_lbl 672 `"Launderers, cleaners, degreasers, ironers, artisans and skilled workers in dyeing, and similar"', add
label define ma04a_occ3_lbl 673 `"Beauty specialists and related workers"', add
label define ma04a_occ3_lbl 674 `"Practitioners of traditional medicine"', add
label define ma04a_occ3_lbl 679 `"Other craft and skilled service professions nec"', add
label define ma04a_occ3_lbl 681 `"Craftsmen and skilled textile workers"', add
label define ma04a_occ3_lbl 682 `"Tailors, dressmakers, sewers, upholsterers and related workers"', add
label define ma04a_occ3_lbl 683 `"Wool shearer, skinners, tanners, hides processors and similar"', add
label define ma04a_occ3_lbl 684 `"Clothing, leather goods, and footwear manufacturers"', add
label define ma04a_occ3_lbl 691 `"Other craftsmen and skilled trades laborers nec"', add
label define ma04a_occ3_lbl 711 `"Skilled or specialized workers"', add
label define ma04a_occ3_lbl 712 `"Skilled or specialized workers in fishing; deck and mechanic sailors"', add
label define ma04a_occ3_lbl 713 `"Skilled or specialized workers in forestry and hunting"', add
label define ma04a_occ3_lbl 721 `"Crop workers and laborers"', add
label define ma04a_occ3_lbl 722 `"Workers and laborers in livestock raising: sheep, cattle, goats"', add
label define ma04a_occ3_lbl 723 `"Agricultural workers and laborers in various combinations of crops and livestock"', add
label define ma04a_occ3_lbl 731 `"Fishermen and related"', add
label define ma04a_occ3_lbl 741 `"Forestry worker"', add
label define ma04a_occ3_lbl 811 `"Plant operators of mining and mineral extraction"', add
label define ma04a_occ3_lbl 812 `"Operators in metal facilities"', add
label define ma04a_occ3_lbl 814 `"Plant operators for wood transformation or paper manufacturing"', add
label define ma04a_occ3_lbl 815 `"Plant operators for chemical processing, power generation, water processing or similar"', add
label define ma04a_occ3_lbl 819 `"Fixed plant and equipment operators similar nec"', add
label define ma04a_occ3_lbl 821 `"Machine operators for metals and mineral production"', add
label define ma04a_occ3_lbl 822 `"Machine operators for pharmaceutical, cosmetic and chemical product manufacturing"', add
label define ma04a_occ3_lbl 823 `"Machine operators for rubber and plastic product manufacturing"', add
label define ma04a_occ3_lbl 825 `"Machine operators for printing and stationery"', add
label define ma04a_occ3_lbl 826 `"Textile-, fur- and leather-products machine operators"', add
label define ma04a_occ3_lbl 827 `"Machine operators for food and related products  manufacturing"', add
label define ma04a_occ3_lbl 828 `"Mechanical , electrical-equipment, electronic-equipment, metal, rubber and plastic products assembler"', add
label define ma04a_occ3_lbl 829 `"Other machine operators and assemblers nec"', add
label define ma04a_occ3_lbl 831 `"Railway maneuvering workers"', add
label define ma04a_occ3_lbl 832 `"Motor-cycle driver"', add
label define ma04a_occ3_lbl 833 `"Agricultural machinery, earthmoving, cranes and maintenance mobile machinery drivers"', add
label define ma04a_occ3_lbl 834 `"Drivers of motorized vehicles"', add
label define ma04a_occ3_lbl 911 `"Street vendors"', add
label define ma04a_occ3_lbl 912 `"Business laborers"', add
label define ma04a_occ3_lbl 913 `"Service laborers"', add
label define ma04a_occ3_lbl 914 `"Laborers in shows (Halki hosts)"', add
label define ma04a_occ3_lbl 921 `"Artisans for metal production and processing"', add
label define ma04a_occ3_lbl 922 `"Laborers in handcrafted mechanics, printing and similar"', add
label define ma04a_occ3_lbl 923 `"Laborers in handcrafted ceramics, glass, baskets, brushes and similar"', add
label define ma04a_occ3_lbl 924 `"Laborers in handcrafted carving, carpentry, wood preparation and similar"', add
label define ma04a_occ3_lbl 925 `"Laborers in handcrafted food and beverages"', add
label define ma04a_occ3_lbl 926 `"Laborers in the hospitality, catering, hairdressing and beauty  industry"', add
label define ma04a_occ3_lbl 927 `"Laborers in handcrafted clothing, leather, footwork and textile products"', add
label define ma04a_occ3_lbl 929 `"Laborers in handcrafted professions nec"', add
label define ma04a_occ3_lbl 931 `"Laborers and maintenance workers for mines"', add
label define ma04a_occ3_lbl 941 `"Laborers and maintenance workers for construction and maintenance of roads, dams, ports, airports and similar 
"', add
label define ma04a_occ3_lbl 942 `"Laborers and maintenance workers for building construction"', add
label define ma04a_occ3_lbl 951 `"Laborers in the food industry"', add
label define ma04a_occ3_lbl 952 `"Laborers in the textile and leather industry"', add
label define ma04a_occ3_lbl 953 `"Laborers in other manufacturing industries nec"', add
label define ma04a_occ3_lbl 961 `"Laborers and maintenance workers for ports and sea transportation"', add
label define ma04a_occ3_lbl 962 `"Laborers and maintenance workers for land and air transportation"', add
label define ma04a_occ3_lbl 963 `"Animal-driven vehicle drivers"', add
label define ma04a_occ3_lbl 971 `"Occasional laborers for national projects"', add
label define ma04a_occ3_lbl 991 `"Other laborers in elementary occupations nec"', add
label define ma04a_occ3_lbl 998 `"Unknown"', add
label define ma04a_occ3_lbl 999 `"NIU (not in universe)"', add
label values ma04a_occ3 ma04a_occ3_lbl

label define ma04a_occ1_lbl 00 `"Locally elective legislators, public administration, directors, and chief business officers"'
label define ma04a_occ1_lbl 01 `"Executive management and professionals"', add
label define ma04a_occ1_lbl 02 `"Middle management"', add
label define ma04a_occ1_lbl 03 `"Employees"', add
label define ma04a_occ1_lbl 04 `"Service workers, and shop and market sales"', add
label define ma04a_occ1_lbl 05 `"Agriculture, fishery, forestry, hunting workers"', add
label define ma04a_occ1_lbl 06 `"Crafts and related trades workers"', add
label define ma04a_occ1_lbl 07 `"Skilled agricultural and fishery workers"', add
label define ma04a_occ1_lbl 08 `"Plant and machine operators and assemblers"', add
label define ma04a_occ1_lbl 09 `"Elementary occupations"', add
label define ma04a_occ1_lbl 98 `"Unknown"', add
label define ma04a_occ1_lbl 99 `"NIU (not in universe)"', add
label values ma04a_occ1 ma04a_occ1_lbl

label define ma04a_occ2_lbl 001 `"Public administration  managers (central ministries) and members of the diplomatic corps"'
label define ma04a_occ2_lbl 002 `"Territorial administration and local field service department managers"', add
label define ma04a_occ2_lbl 003 `"Nonprofit agency and public institution managers of commercial nature"', add
label define ma04a_occ2_lbl 004 `"Responsible for education institutions (public and private)"', add
label define ma04a_occ2_lbl 005 `"Hospitals, clinics, health centers and similar managers"', add
label define ma04a_occ2_lbl 006 `"Members of elected bodies and leaders of political organizations, unions and associations"', add
label define ma04a_occ2_lbl 007 `"Directors and executives of companies or quasi-corporation (including public and semi-public)"', add
label define ma04a_occ2_lbl 008 `"Business owners in unorganized society or quasi-corporation."', add
label define ma04a_occ2_lbl 011 `"Executives specializing in scientific and technical occupations"', add
label define ma04a_occ2_lbl 012 `"Social science and humanities specialists"', add
label define ma04a_occ2_lbl 014 `"Teachers in higher secondary education"', add
label define ma04a_occ2_lbl 015 `"Lawyers, judges and other legal professionals"', add
label define ma04a_occ2_lbl 016 `"Information and communications sciences specialists"', add
label define ma04a_occ2_lbl 017 `"Senior administration personnel without hierarchy responsibility, business, financial, and management executives"', add
label define ma04a_occ2_lbl 018 `"Artists of fine arts and entertainment"', add
label define ma04a_occ2_lbl 021 `"Technicians in industry, construction and public works, mining and energy"', add
label define ma04a_occ2_lbl 022 `"Electrical technicians, electronics and telecommunications (construction, repair, and maintenance)"', add
label define ma04a_occ2_lbl 023 `"Technicians in agriculture, livestock and forest"', add
label define ma04a_occ2_lbl 024 `"Technicians and associate professionals of health and human services"', add
label define ma04a_occ2_lbl 025 `"Professors and teachers of primary education, preschool teachers, and vocational training centers (qualification and specialization levels)"', add
label define ma04a_occ2_lbl 026 `"Middle management, middle management of trade, finance, management, and associate professionals in IT and statistics, middle management for legal profession and similar"', add
label define ma04a_occ2_lbl 027 `"Middle-level professionals in the sciences information and communications, specialized middle management in the social sciences, arts and associate professionals, sports and entertainment and other services nec"', add
label define ma04a_occ2_lbl 028 `"Technicians of sea and air transport"', add
label define ma04a_occ2_lbl 029 `"General technicians and associate professionals nec"', add
label define ma04a_occ2_lbl 031 `"Administrative employee"', add
label define ma04a_occ2_lbl 032 `"Commercial employee"', add
label define ma04a_occ2_lbl 033 `"Worker for hotel, catering and similar"', add
label define ma04a_occ2_lbl 034 `"Worker for personal and household services"', add
label define ma04a_occ2_lbl 035 `"Security service personnel"', add
label define ma04a_occ2_lbl 036 `"Religious institution personnel"', add
label define ma04a_occ2_lbl 039 `"Employee nec"', add
label define ma04a_occ2_lbl 041 `"Wholesalers and semi-wholesale (including exports-imports)"', add
label define ma04a_occ2_lbl 042 `"Grocers and retailers"', add
label define ma04a_occ2_lbl 044 `"Traders and financial intermediators"', add
label define ma04a_occ2_lbl 049 `"Service workers, and shop and market sales nec"', add
label define ma04a_occ2_lbl 051 `"Farmers"', add
label define ma04a_occ2_lbl 052 `"Fishermen and similar"', add
label define ma04a_occ2_lbl 053 `"Foresters, hunters and similar"', add
label define ma04a_occ2_lbl 060 `"Artisans and skilled workers in mining extraction"', add
label define ma04a_occ2_lbl 061 `"Artisans and skilled workers for construction and public works"', add
label define ma04a_occ2_lbl 062 `"Artisans and skilled workers in metal production and processing"', add
label define ma04a_occ2_lbl 063 `"Artisans and skilled workers of mechanics, assembling and electrical and electronic installation"', add
label define ma04a_occ2_lbl 064 `"Skilled trade workers in the precision engineering, arts and crafts, printing, and similar works"', add
label define ma04a_occ2_lbl 065 `"Artisans and skilled workers in carpentry"', add
label define ma04a_occ2_lbl 066 `"Food, beverage, and tobacco artisans"', add
label define ma04a_occ2_lbl 067 `"Artisans and skilled workers of services"', add
label define ma04a_occ2_lbl 068 `"Artisans and skilled workers in textiles, leather, footwear and clothing"', add
label define ma04a_occ2_lbl 069 `"Other craftsmen and skilled workers in trades nec"', add
label define ma04a_occ2_lbl 071 `"Skilled agricultural, forestry and fishery graduates of vocational training (qualification or specialization level)"', add
label define ma04a_occ2_lbl 072 `"Workers and farm laborers"', add
label define ma04a_occ2_lbl 073 `"Workers and fishery laborers"', add
label define ma04a_occ2_lbl 074 `"Forestry workers, and hunting laborers and workers"', add
label define ma04a_occ2_lbl 081 `"Plant and equipment operators and similar"', add
label define ma04a_occ2_lbl 082 `"Machine operators and assemblers"', add
label define ma04a_occ2_lbl 083 `"Maneuvering and lifting machinery and vehicle operators"', add
label define ma04a_occ2_lbl 091 `"Trade and services labourers"', add
label define ma04a_occ2_lbl 092 `"Craftsmen nec"', add
label define ma04a_occ2_lbl 093 `"Mining labourers and maintenance workers"', add
label define ma04a_occ2_lbl 094 `"Construction labourers and maintenance workers"', add
label define ma04a_occ2_lbl 095 `"Industry labourers and maintenance workers"', add
label define ma04a_occ2_lbl 096 `"Transportation labourers and maintenance workers"', add
label define ma04a_occ2_lbl 097 `"Occasional national promotion labourers"', add
label define ma04a_occ2_lbl 099 `"Other labourers and workers in smaller occupations"', add
label define ma04a_occ2_lbl 995 `"Persons seeking their first employment"', add
label define ma04a_occ2_lbl 996 `"Inaccurate or insufficient statement"', add
label define ma04a_occ2_lbl 998 `"Unknown"', add
label define ma04a_occ2_lbl 999 `"NIU (not in universe)"', add
label values ma04a_occ2 ma04a_occ2_lbl

label define ma04a_ind3_lbl 011 `"Crop farming"'
label define ma04a_ind3_lbl 012 `"Tree farming"', add
label define ma04a_ind3_lbl 013 `"Livestock breeding"', add
label define ma04a_ind3_lbl 014 `"Crop farming and livestock breeding"', add
label define ma04a_ind3_lbl 015 `"Services related to agriculture or hunting"', add
label define ma04a_ind3_lbl 020 `"Sylviculture, forestry, similar services"', add
label define ma04a_ind3_lbl 050 `"Fishing, aquaculture"', add
label define ma04a_ind3_lbl 100 `"Lignite, coal, peat extraction"', add
label define ma04a_ind3_lbl 111 `"Hydrocarbon extraction"', add
label define ma04a_ind3_lbl 112 `"Services related to hydrocarbon extraction"', add
label define ma04a_ind3_lbl 131 `"Iron ore mining"', add
label define ma04a_ind3_lbl 132 `"Mining for nonferrous metals"', add
label define ma04a_ind3_lbl 141 `"Stone quarrying"', add
label define ma04a_ind3_lbl 142 `"Sand and clay quarrying"', add
label define ma04a_ind3_lbl 143 `"Extraction of natural phosphates"', add
label define ma04a_ind3_lbl 144 `"Extraction of other ores"', add
label define ma04a_ind3_lbl 151 `"Meat industry"', add
label define ma04a_ind3_lbl 152 `"Fish industry"', add
label define ma04a_ind3_lbl 153 `"Fruit and vegetable industry"', add
label define ma04a_ind3_lbl 154 `"Fats and oils industry"', add
label define ma04a_ind3_lbl 155 `"Dairy products industry"', add
label define ma04a_ind3_lbl 156 `"Feed production and processing of grains and starches"', add
label define ma04a_ind3_lbl 157 `"White and fine wheat flour production"', add
label define ma04a_ind3_lbl 158 `"Other foods industry"', add
label define ma04a_ind3_lbl 159 `"Beverage industry"', add
label define ma04a_ind3_lbl 160 `"Tobacco industry"', add
label define ma04a_ind3_lbl 171 `"Textile spinning"', add
label define ma04a_ind3_lbl 172 `"Weaving"', add
label define ma04a_ind3_lbl 173 `"Textile finishing"', add
label define ma04a_ind3_lbl 174 `"Textile manufacturing"', add
label define ma04a_ind3_lbl 175 `"Tapestry manufacturing and other textile industries"', add
label define ma04a_ind3_lbl 176 `"Manufacturing of knitted and crocheted fabrics"', add
label define ma04a_ind3_lbl 177 `"Manufacturing of knitted and crocheted goods"', add
label define ma04a_ind3_lbl 181 `"Manufacturing of leather clothing"', add
label define ma04a_ind3_lbl 182 `"Manufacturing of textile clothing"', add
label define ma04a_ind3_lbl 191 `"Tanning and finishing of leather"', add
label define ma04a_ind3_lbl 192 `"Manufacturing of luggage and leather goods"', add
label define ma04a_ind3_lbl 193 `"Manufacturing of shoes"', add
label define ma04a_ind3_lbl 201 `"Sawing, planing and impregnation of wood"', add
label define ma04a_ind3_lbl 202 `"Manufacturing of wood panels"', add
label define ma04a_ind3_lbl 203 `"Manufacturing of building frameworks, woodwork, and wood packaging"', add
label define ma04a_ind3_lbl 205 `"Manufacturing of diverse wooden, cork, or wicker objects"', add
label define ma04a_ind3_lbl 206 `"Woodwork and wood products production nec"', add
label define ma04a_ind3_lbl 211 `"Manufacturing of paper pulp, paper and cardboard"', add
label define ma04a_ind3_lbl 212 `"Manufacturing of paper or cardboard goods"', add
label define ma04a_ind3_lbl 221 `"Publishing"', add
label define ma04a_ind3_lbl 222 `"Printing"', add
label define ma04a_ind3_lbl 223 `"Reproduction of records"', add
label define ma04a_ind3_lbl 239 `"Coking and oil refining"', add
label define ma04a_ind3_lbl 241 `"Basic chemical industry"', add
label define ma04a_ind3_lbl 242 `"Manufacturing of agro-chemical products"', add
label define ma04a_ind3_lbl 243 `"Manufacturing of paints and varnishes"', add
label define ma04a_ind3_lbl 244 `"Pharmaceutical industry"', add
label define ma04a_ind3_lbl 245 `"Manufacturing of soaps, perfumes and cleaning products"', add
label define ma04a_ind3_lbl 246 `"Manufacturing of other chemical products"', add
label define ma04a_ind3_lbl 251 `"Rubber industry"', add
label define ma04a_ind3_lbl 252 `"Processing of plastic materials"', add
label define ma04a_ind3_lbl 261 `"Manufacturing of glass and glass goods"', add
label define ma04a_ind3_lbl 262 `"Manufacturing of ceramic products"', add
label define ma04a_ind3_lbl 263 `"Manufacturing of ceramic tiles"', add
label define ma04a_ind3_lbl 264 `"Manufacturing of tile and clay bricks"', add
label define ma04a_ind3_lbl 265 `"Manufacturing of cement, whitewash and plaster"', add
label define ma04a_ind3_lbl 266 `"Manufacturing of concrete or plaster goods"', add
label define ma04a_ind3_lbl 267 `"Stone work"', add
label define ma04a_ind3_lbl 268 `"Manufacturing of various mineral products"', add
label define ma04a_ind3_lbl 271 `"Steel industry and production of iron alloys"', add
label define ma04a_ind3_lbl 272 `"Manufacturing of cast iron or steel tubes"', add
label define ma04a_ind3_lbl 274 `"Processing of non-ferrous metals"', add
label define ma04a_ind3_lbl 275 `"Smelting"', add
label define ma04a_ind3_lbl 281 `"Manufacturing of metals for building purposes"', add
label define ma04a_ind3_lbl 282 `"Manufacturing of metallic reservoirs and boilers for central heating"', add
label define ma04a_ind3_lbl 284 `"Forging, pressing, stamping and metallurgy of powders"', add
label define ma04a_ind3_lbl 285 `"Processing of general, mechanical metals"', add
label define ma04a_ind3_lbl 286 `"Manufacturing of cutlery, tools and hardware"', add
label define ma04a_ind3_lbl 287 `"Manufacturing of other metal works"', add
label define ma04a_ind3_lbl 291 `"Manufacturing of mechanical equipment"', add
label define ma04a_ind3_lbl 292 `"Manufacturing of machines for general use"', add
label define ma04a_ind3_lbl 293 `"Manufacturing of farming machines"', add
label define ma04a_ind3_lbl 294 `"Manufacturing of machinery tools"', add
label define ma04a_ind3_lbl 295 `"Manufacturing of other machines for specific uses"', add
label define ma04a_ind3_lbl 297 `"Manufacturing of domestic appliances"', add
label define ma04a_ind3_lbl 300 `"Office machine and informatics materials manufacturing"', add
label define ma04a_ind3_lbl 311 `"Manufacturing of motors, generators and electric transmitters"', add
label define ma04a_ind3_lbl 312 `"Manufacturing of distribution equipment and electric control apparatuses, wires and cables"', add
label define ma04a_ind3_lbl 314 `"Manufacturing of accumulators and electric batteries"', add
label define ma04a_ind3_lbl 315 `"Manufacturing of lamps and lighting appliances"', add
label define ma04a_ind3_lbl 316 `"Manufacturing of other electric materials"', add
label define ma04a_ind3_lbl 321 `"Manufacturing of electric components"', add
label define ma04a_ind3_lbl 329 `"Manufacturing of equipment and instruments, nec"', add
label define ma04a_ind3_lbl 331 `"Manufacturing of medical, surgical and orthopedic equipment"', add
label define ma04a_ind3_lbl 334 `"Manufacturing of optical and photographic instruments"', add
label define ma04a_ind3_lbl 341 `"Manufacturing of motor vehicles"', add
label define ma04a_ind3_lbl 342 `"Manufacturing of car bodies and trailers"', add
label define ma04a_ind3_lbl 343 `"Manufacturing of motor vehicle parts"', add
label define ma04a_ind3_lbl 351 `"Shipbuilding"', add
label define ma04a_ind3_lbl 355 `"Manufacturing of transport equipment, nec"', add
label define ma04a_ind3_lbl 354 `"Manufacturing of motorcycles and bicycles"', add
label define ma04a_ind3_lbl 361 `"Manufacturing of furniture"', add
label define ma04a_ind3_lbl 362 `"Jewelry making"', add
label define ma04a_ind3_lbl 366 `"Manufacturing in other various industries"', add
label define ma04a_ind3_lbl 401 `"Production and distribution of electricity"', add
label define ma04a_ind3_lbl 402 `"Production and distribution of gaseous fuels and heat"', add
label define ma04a_ind3_lbl 410 `"Water collection, treatment and supply"', add
label define ma04a_ind3_lbl 451 `"Site preparation"', add
label define ma04a_ind3_lbl 452 `"Building construction or civil engineering"', add
label define ma04a_ind3_lbl 453 `"Installation work"', add
label define ma04a_ind3_lbl 454 `"Finishing work"', add
label define ma04a_ind3_lbl 501 `"Selling of motor vehicles"', add
label define ma04a_ind3_lbl 502 `"Maintenance and repair of motor vehicles"', add
label define ma04a_ind3_lbl 503 `"Selling automobile equipment"', add
label define ma04a_ind3_lbl 504 `"Selling and repair of motorcycles"', add
label define ma04a_ind3_lbl 505 `"Selling of fuels"', add
label define ma04a_ind3_lbl 511 `"Wholesale intermediaries"', add
label define ma04a_ind3_lbl 512 `"Wholesaling of raw agricultural products"', add
label define ma04a_ind3_lbl 513 `"Wholesaling of food products"', add
label define ma04a_ind3_lbl 514 `"Wholesaling of non-food consumer goods"', add
label define ma04a_ind3_lbl 515 `"Wholesaling of non-agricultural intermediary products"', add
label define ma04a_ind3_lbl 516 `"Wholesaling of industrial equipment"', add
label define ma04a_ind3_lbl 517 `"Wholesaling of any other products"', add
label define ma04a_ind3_lbl 521 `"Retail in non-specialized stores"', add
label define ma04a_ind3_lbl 522 `"Retail in specialized food stores"', add
label define ma04a_ind3_lbl 523 `"Retail of personal goods"', add
label define ma04a_ind3_lbl 524 `"Retail of household goods"', add
label define ma04a_ind3_lbl 525 `"Retail of second-hand goods in stores"', add
label define ma04a_ind3_lbl 526 `"Retail outside of a store"', add
label define ma04a_ind3_lbl 527 `"Repair of personal and household goods"', add
label define ma04a_ind3_lbl 528 `"Retail sale and repair of domestic objects nec"', add
label define ma04a_ind3_lbl 551 `"Hotels"', add
label define ma04a_ind3_lbl 552 `"Other means of short-duration accommodation"', add
label define ma04a_ind3_lbl 553 `"Restaurants"', add
label define ma04a_ind3_lbl 554 `"Licensed beverage vending"', add
label define ma04a_ind3_lbl 601 `"Rail transportation"', add
label define ma04a_ind3_lbl 602 `"Urban road transportation"', add
label define ma04a_ind3_lbl 603 `"Inner-city road transportation"', add
label define ma04a_ind3_lbl 604 `"Touristic transportation"', add
label define ma04a_ind3_lbl 605 `"Municipal road transportation"', add
label define ma04a_ind3_lbl 606 `"International road transportation"', add
label define ma04a_ind3_lbl 608 `"Land transportation nec"', add
label define ma04a_ind3_lbl 611 `"Maritime transportation"', add
label define ma04a_ind3_lbl 612 `"Coastal transportation"', add
label define ma04a_ind3_lbl 621 `"Air transportation"', add
label define ma04a_ind3_lbl 631 `"Handling and storage"', add
label define ma04a_ind3_lbl 632 `"Management and transportation infrastructure"', add
label define ma04a_ind3_lbl 633 `"Travel agencies"', add
label define ma04a_ind3_lbl 634 `"Organization of cargo transportation"', add
label define ma04a_ind3_lbl 641 `"Postal and courier activities"', add
label define ma04a_ind3_lbl 642 `"Telecommunications"', add
label define ma04a_ind3_lbl 651 `"Monetary intermediation"', add
label define ma04a_ind3_lbl 652 `"Other financial intermediation"', add
label define ma04a_ind3_lbl 660 `"Insurance"', add
label define ma04a_ind3_lbl 671 `"Financial and insurance auxiliaries"', add
label define ma04a_ind3_lbl 701 `"Real estate activities on one's own account"', add
label define ma04a_ind3_lbl 702 `"Renting of real estate assets"', add
label define ma04a_ind3_lbl 703 `"Real estate activities on behalf of third parties"', add
label define ma04a_ind3_lbl 711 `"Renting of motor vehicles"', add
label define ma04a_ind3_lbl 712 `"Renting of other transportation materials"', add
label define ma04a_ind3_lbl 713 `"Renting of machinery and equipment"', add
label define ma04a_ind3_lbl 714 `"Renting of personal and household assets"', add
label define ma04a_ind3_lbl 721 `"Information technology related activities"', add
label define ma04a_ind3_lbl 725 `"Maintenance and repair of office machinery and computers"', add
label define ma04a_ind3_lbl 726 `"Other activities related to information technology"', add
label define ma04a_ind3_lbl 731 `"Research and development sciences, humanities and social sciences"', add
label define ma04a_ind3_lbl 741 `"Legal, accounting and management consulting"', add
label define ma04a_ind3_lbl 742 `"Architectural and engineering activities"', add
label define ma04a_ind3_lbl 743 `"Technical testing and analysis activities"', add
label define ma04a_ind3_lbl 744 `"Advertising"', add
label define ma04a_ind3_lbl 745 `"Selection and supply of personnel"', add
label define ma04a_ind3_lbl 746 `"Investigation and security activities"', add
label define ma04a_ind3_lbl 747 `"Cleaning activities"', add
label define ma04a_ind3_lbl 748 `"Miscellaneous business activities"', add
label define ma04a_ind3_lbl 751 `"General economic and social public administration"', add
label define ma04a_ind3_lbl 752 `"Sovereignty public services"', add
label define ma04a_ind3_lbl 753 `"Obligatory social security public administration"', add
label define ma04a_ind3_lbl 801 `"Preschool teaching"', add
label define ma04a_ind3_lbl 802 `"Basic education teaching"', add
label define ma04a_ind3_lbl 803 `"Secondary school teaching"', add
label define ma04a_ind3_lbl 804 `"Higher education teaching"', add
label define ma04a_ind3_lbl 805 `"Vocational teaching"', add
label define ma04a_ind3_lbl 806 `"Other teaching activities"', add
label define ma04a_ind3_lbl 851 `"Other activities for human health"', add
label define ma04a_ind3_lbl 852 `"Veterinary services"', add
label define ma04a_ind3_lbl 853 `"Social work"', add
label define ma04a_ind3_lbl 900 `"Sewage and waste management"', add
label define ma04a_ind3_lbl 911 `"Economic associations"', add
label define ma04a_ind3_lbl 913 `"Other member-driven associations"', add
label define ma04a_ind3_lbl 921 `"Cinematography and video activities"', add
label define ma04a_ind3_lbl 922 `"Radio and television activities"', add
label define ma04a_ind3_lbl 923 `"Other entertainment activities"', add
label define ma04a_ind3_lbl 924 `"Members of the press"', add
label define ma04a_ind3_lbl 925 `"Other cultural activities"', add
label define ma04a_ind3_lbl 926 `"Sports-related activities"', add
label define ma04a_ind3_lbl 927 `"Recreational activities"', add
label define ma04a_ind3_lbl 930 `"Personal services"', add
label define ma04a_ind3_lbl 950 `"Domestic services"', add
label define ma04a_ind3_lbl 990 `"Extra-territorial activities"', add
label define ma04a_ind3_lbl 998 `"Unknown"', add
label define ma04a_ind3_lbl 999 `"NIU (not in universe)"', add
label values ma04a_ind3 ma04a_ind3_lbl

label define ma04a_ind2_lbl 001 `"Agriculture, hunting, and similar services"'
label define ma04a_ind2_lbl 002 `"Sylviculture, forestry, similar services"', add
label define ma04a_ind2_lbl 005 `"Fishing, aquaculture"', add
label define ma04a_ind2_lbl 010 `"Lignite, coal, peat extraction"', add
label define ma04a_ind2_lbl 011 `"Hydrocarbon extraction, and similar services"', add
label define ma04a_ind2_lbl 013 `"Metallic mineral extraction, working and enrichment"', add
label define ma04a_ind2_lbl 014 `"Other extraction industries"', add
label define ma04a_ind2_lbl 015 `"Food industry"', add
label define ma04a_ind2_lbl 016 `"Tobacco industry"', add
label define ma04a_ind2_lbl 017 `"Textile industry"', add
label define ma04a_ind2_lbl 018 `"Clothing and fur industry"', add
label define ma04a_ind2_lbl 019 `"Leather and shoe industry"', add
label define ma04a_ind2_lbl 020 `"Woodwork and wood products production"', add
label define ma04a_ind2_lbl 021 `"Paper and carton production"', add
label define ma04a_ind2_lbl 022 `"Publishing, printing, reproduction"', add
label define ma04a_ind2_lbl 023 `"Coke, refinery, nuclear industry"', add
label define ma04a_ind2_lbl 024 `"Chemical industry"', add
label define ma04a_ind2_lbl 025 `"Rubber and plastic industry"', add
label define ma04a_ind2_lbl 026 `"Other non-metallic mineral products manufacturing"', add
label define ma04a_ind2_lbl 027 `"Metallurgy"', add
label define ma04a_ind2_lbl 028 `"Metal works"', add
label define ma04a_ind2_lbl 029 `"Machine and equipment manufacturing"', add
label define ma04a_ind2_lbl 030 `"Office machine and informatics materials manufacturing"', add
label define ma04a_ind2_lbl 031 `"Machine and electric appliances manufacturing"', add
label define ma04a_ind2_lbl 032 `"Television and radio appliances manufacturing"', add
label define ma04a_ind2_lbl 033 `"Medical, precision, and optic instruments manufacturing"', add
label define ma04a_ind2_lbl 034 `"Motor vehicle industry"', add
label define ma04a_ind2_lbl 035 `"Other transportation materials manufacturing"', add
label define ma04a_ind2_lbl 036 `"Furniture and various industries manufacturing"', add
label define ma04a_ind2_lbl 040 `"Electricity, gas, heating production and distribution"', add
label define ma04a_ind2_lbl 041 `"Water collection, treatment and supply"', add
label define ma04a_ind2_lbl 045 `"Construction and public works"', add
label define ma04a_ind2_lbl 050 `"Motor vehicle sale and repair"', add
label define ma04a_ind2_lbl 051 `"Wholesale and intermediate trade"', add
label define ma04a_ind2_lbl 052 `"Retail sale and repair of domestic objects"', add
label define ma04a_ind2_lbl 055 `"Hotels and restaurants"', add
label define ma04a_ind2_lbl 060 `"Land transportation"', add
label define ma04a_ind2_lbl 061 `"Water transportation"', add
label define ma04a_ind2_lbl 062 `"Air transportation"', add
label define ma04a_ind2_lbl 063 `"Other transportation services"', add
label define ma04a_ind2_lbl 064 `"Postal system and telecommunications"', add
label define ma04a_ind2_lbl 065 `"Finance intermediate"', add
label define ma04a_ind2_lbl 066 `"Insurance"', add
label define ma04a_ind2_lbl 067 `"Other finance and insurance activities"', add
label define ma04a_ind2_lbl 070 `"Real estate"', add
label define ma04a_ind2_lbl 071 `"No-operator rental"', add
label define ma04a_ind2_lbl 072 `"Informatics"', add
label define ma04a_ind2_lbl 073 `"Research and development"', add
label define ma04a_ind2_lbl 074 `"Business-oriented services"', add
label define ma04a_ind2_lbl 075 `"Public administration"', add
label define ma04a_ind2_lbl 080 `"Education"', add
label define ma04a_ind2_lbl 085 `"Health and social work"', add
label define ma04a_ind2_lbl 090 `"Sewage and waste management"', add
label define ma04a_ind2_lbl 091 `"Activities in associations"', add
label define ma04a_ind2_lbl 092 `"Entertainment, cultural, sport activities"', add
label define ma04a_ind2_lbl 093 `"Personal services"', add
label define ma04a_ind2_lbl 095 `"Domestic services"', add
label define ma04a_ind2_lbl 099 `"Extra-territorial activities"', add
label define ma04a_ind2_lbl 998 `"Unknown"', add
label define ma04a_ind2_lbl 999 `"NIU (not in universe)"', add
label values ma04a_ind2 ma04a_ind2_lbl

label define ma04a_degree2_lbl 01 `"Diplomas and certificates of basic education"'
label define ma04a_degree2_lbl 02 `"Diplomas of secondary education"', add
label define ma04a_degree2_lbl 03 `"Advanced degrees awarded by the departments"', add
label define ma04a_degree2_lbl 04 `"Advanced degrees awarded by high schools and colleges"', add
label define ma04a_degree2_lbl 05 `"Qualifications for technicians and middle managers"', add
label define ma04a_degree2_lbl 06 `"Higher technical diplomas"', add
label define ma04a_degree2_lbl 07 `"Degrees in vocational qualification"', add
label define ma04a_degree2_lbl 08 `"Professional specialization certificates"', add
label define ma04a_degree2_lbl 09 `"Certificates in professional initiation"', add
label define ma04a_degree2_lbl 99 `"NIU (not in universe)"', add
label values ma04a_degree2 ma04a_degree2_lbl

label define ma04a_degree3_lbl 011 `"Diplomas and certificates of basic education"'
label define ma04a_degree3_lbl 021 `"Diplomas of secondary education"', add
label define ma04a_degree3_lbl 031 `"Advanced degrees in letters and the social sciences"', add
label define ma04a_degree3_lbl 032 `"Advanced degrees in the hard sciences"', add
label define ma04a_degree3_lbl 033 `"Advanced degrees of technical education"', add
label define ma04a_degree3_lbl 039 `"Other advanced degrees awarded by the departments"', add
label define ma04a_degree3_lbl 040 `"Degrees in administration, management, finances, and business"', add
label define ma04a_degree3_lbl 041 `"Degrees in tourism, hospitality, catering"', add
label define ma04a_degree3_lbl 042 `"Degrees in social services for the collective"', add
label define ma04a_degree3_lbl 043 `"Degrees in information science"', add
label define ma04a_degree3_lbl 044 `"Degrees in the social sciences and humanities"', add
label define ma04a_degree3_lbl 045 `"Degrees in transportation and telecommunications"', add
label define ma04a_degree3_lbl 046 `"Degrees in agriculture, forestry, and sea fishing"', add
label define ma04a_degree3_lbl 047 `"Degrees in industry"', add
label define ma04a_degree3_lbl 048 `"Degrees in construction and public works"', add
label define ma04a_degree3_lbl 049 `"Other advanced degrees awarded by high schools and colleges"', add
label define ma04a_degree3_lbl 050 `"Degrees in administration, management, finances, and business"', add
label define ma04a_degree3_lbl 051 `"Degrees in tourism, hospitality, catering"', add
label define ma04a_degree3_lbl 052 `"Degrees in social services for the collective"', add
label define ma04a_degree3_lbl 053 `"Degrees in information science"', add
label define ma04a_degree3_lbl 054 `"Degrees in the social sciences and humanities"', add
label define ma04a_degree3_lbl 055 `"Degrees in transportation and telecommunications"', add
label define ma04a_degree3_lbl 056 `"Degrees in agriculture, forestry, and sea fishing"', add
label define ma04a_degree3_lbl 057 `"Degrees in industry"', add
label define ma04a_degree3_lbl 058 `"Degrees in construction and public works"', add
label define ma04a_degree3_lbl 059 `"Other degrees for  technicians and middle managers"', add
label define ma04a_degree3_lbl 061 `"Degrees in administration, management, finances, and business"', add
label define ma04a_degree3_lbl 067 `"Degrees in agriculture, forestry, and sea fishing"', add
label define ma04a_degree3_lbl 068 `"Degrees in industry"', add
label define ma04a_degree3_lbl 069 `"Other higher technical diplomas"', add
label define ma04a_degree3_lbl 070 `"Degrees in administration, management, finances, and business"', add
label define ma04a_degree3_lbl 071 `"Degrees in tourism, hospitality, catering"', add
label define ma04a_degree3_lbl 072 `"Degrees in social services for the collective"', add
label define ma04a_degree3_lbl 073 `"Degrees in information science"', add
label define ma04a_degree3_lbl 074 `"Degrees in transportation and telecommunications"', add
label define ma04a_degree3_lbl 076 `"Degrees in agriculture, forestry, and sea fishing"', add
label define ma04a_degree3_lbl 077 `"Degrees in industry"', add
label define ma04a_degree3_lbl 078 `"Degrees in construction and public works"', add
label define ma04a_degree3_lbl 079 `"Other degrees in vocational qualification"', add
label define ma04a_degree3_lbl 083 `"Degrees in social services for the collective"', add
label define ma04a_degree3_lbl 087 `"Degrees in industry"', add
label define ma04a_degree3_lbl 088 `"Degrees in construction and public works"', add
label define ma04a_degree3_lbl 089 `"Other professional specialization certificates"', add
label define ma04a_degree3_lbl 093 `"Degrees in social services for the collective"', add
label define ma04a_degree3_lbl 098 `"Degrees in industry"', add
label define ma04a_degree3_lbl 099 `"Other certificates in professional initiation"', add
label define ma04a_degree3_lbl 996 `"No diploma"', add
label define ma04a_degree3_lbl 997 `"Not concerned"', add
label define ma04a_degree3_lbl 998 `"Unknown"', add
label define ma04a_degree3_lbl 999 `"NIU (not in universe)"', add
label values ma04a_degree3 ma04a_degree3_lbl

label define ma04a_prevprov_lbl 000 `"Agadir-Ida Ou Tan"'
label define ma04a_prevprov_lbl 001 `"Aousserd"', add
label define ma04a_prevprov_lbl 002 `"Berkane"', add
label define ma04a_prevprov_lbl 003 `"Chouka-Ait Baha"', add
label define ma04a_prevprov_lbl 004 `"Al Haouz"', add
label define ma04a_prevprov_lbl 005 `"Al Hoceima"', add
label define ma04a_prevprov_lbl 006 `"Meknes"', add
label define ma04a_prevprov_lbl 007 `"Assa-Zag"', add
label define ma04a_prevprov_lbl 008 `"Azilal"', add
label define ma04a_prevprov_lbl 009 `"Beni Mellal"', add
label define ma04a_prevprov_lbl 011 `"Benslimane"', add
label define ma04a_prevprov_lbl 012 `"Boujdour"', add
label define ma04a_prevprov_lbl 013 `"Boulemane"', add
label define ma04a_prevprov_lbl 014 `"Casablanca"', add
label define ma04a_prevprov_lbl 015 `"Chefchaouen"', add
label define ma04a_prevprov_lbl 016 `"Chichaoua"', add
label define ma04a_prevprov_lbl 017 `"El Hajeb"', add
label define ma04a_prevprov_lbl 018 `"El Jadida"', add
label define ma04a_prevprov_lbl 019 `"El Kelfa Des Sraghna"', add
label define ma04a_prevprov_lbl 020 `"Errachidia"', add
label define ma04a_prevprov_lbl 021 `"Essaouira"', add
label define ma04a_prevprov_lbl 022 `"Es-Semara"', add
label define ma04a_prevprov_lbl 023 `"Fes"', add
label define ma04a_prevprov_lbl 025 `"Figuig"', add
label define ma04a_prevprov_lbl 026 `"Guelmim"', add
label define ma04a_prevprov_lbl 027 `"Ifrane"', add
label define ma04a_prevprov_lbl 028 `"Kenitra"', add
label define ma04a_prevprov_lbl 029 `"Khemisset"', add
label define ma04a_prevprov_lbl 030 `"Khenifra"', add
label define ma04a_prevprov_lbl 031 `"Khouribga"', add
label define ma04a_prevprov_lbl 032 `"Laayoune"', add
label define ma04a_prevprov_lbl 033 `"Larache"', add
label define ma04a_prevprov_lbl 034 `"Inezgane-Ait Melloul"', add
label define ma04a_prevprov_lbl 035 `"Marrakech"', add
label define ma04a_prevprov_lbl 037 `"Mohammedia"', add
label define ma04a_prevprov_lbl 038 `"Nador"', add
label define ma04a_prevprov_lbl 039 `"Oued-Ed-Dahab"', add
label define ma04a_prevprov_lbl 040 `"Ouarzazate"', add
label define ma04a_prevprov_lbl 041 `"Ouajda-Angad"', add
label define ma04a_prevprov_lbl 042 `"Rabat"', add
label define ma04a_prevprov_lbl 043 `"Safi"', add
label define ma04a_prevprov_lbl 044 `"Sale"', add
label define ma04a_prevprov_lbl 045 `"Sefrou"', add
label define ma04a_prevprov_lbl 046 `"Settat"', add
label define ma04a_prevprov_lbl 047 `"Jerada"', add
label define ma04a_prevprov_lbl 048 `"Sidi Kacem"', add
label define ma04a_prevprov_lbl 049 `"Mediouna"', add
label define ma04a_prevprov_lbl 050 `"Skhirate-Temara"', add
label define ma04a_prevprov_lbl 051 `"Tanger-Assilah"', add
label define ma04a_prevprov_lbl 052 `"Tan-Tan"', add
label define ma04a_prevprov_lbl 053 `"Taounate"', add
label define ma04a_prevprov_lbl 054 `"Taroudannt"', add
label define ma04a_prevprov_lbl 055 `"Tata"', add
label define ma04a_prevprov_lbl 056 `"Taza"', add
label define ma04a_prevprov_lbl 057 `"Tetouan"', add
label define ma04a_prevprov_lbl 058 `"Tiznit"', add
label define ma04a_prevprov_lbl 059 `"Moulay Yacoub"', add
label define ma04a_prevprov_lbl 060 `"Nouaceur"', add
label define ma04a_prevprov_lbl 061 `"Taourirt"', add
label define ma04a_prevprov_lbl 062 `"Zagora"', add
label define ma04a_prevprov_lbl 078 `"Egypt"', add
label define ma04a_prevprov_lbl 088 `"Gabon"', add
label define ma04a_prevprov_lbl 098 `"Guinea"', add
label define ma04a_prevprov_lbl 108 `"Libya"', add
label define ma04a_prevprov_lbl 118 `"Mali"', add
label define ma04a_prevprov_lbl 128 `"Mauritania"', add
label define ma04a_prevprov_lbl 148 `"Senegal"', add
label define ma04a_prevprov_lbl 188 `"Congo Brazzaville"', add
label define ma04a_prevprov_lbl 208 `"Other African countries"', add
label define ma04a_prevprov_lbl 218 `"Saudi Arabia"', add
label define ma04a_prevprov_lbl 248 `"China"', add
label define ma04a_prevprov_lbl 258 `"United Arab Emirates"', add
label define ma04a_prevprov_lbl 268 `"India"', add
label define ma04a_prevprov_lbl 278 `"Iraq"', add
label define ma04a_prevprov_lbl 288 `"Jordan"', add
label define ma04a_prevprov_lbl 298 `"Kuwait"', add
label define ma04a_prevprov_lbl 308 `"Lebanon"', add
label define ma04a_prevprov_lbl 318 `"Oman"', add
label define ma04a_prevprov_lbl 348 `"Syria"', add
label define ma04a_prevprov_lbl 398 `"Other Middle Eastern or Asian countries"', add
label define ma04a_prevprov_lbl 408 `"France"', add
label define ma04a_prevprov_lbl 418 `"Spain"', add
label define ma04a_prevprov_lbl 428 `"Belgium"', add
label define ma04a_prevprov_lbl 438 `"Bulgaria"', add
label define ma04a_prevprov_lbl 468 `"Gibraltar"', add
label define ma04a_prevprov_lbl 488 `"Netherlands"', add
label define ma04a_prevprov_lbl 498 `"Italy"', add
label define ma04a_prevprov_lbl 518 `"Norway"', add
label define ma04a_prevprov_lbl 538 `"Portugal"', add
label define ma04a_prevprov_lbl 548 `"Germany"', add
label define ma04a_prevprov_lbl 558 `"Romania"', add
label define ma04a_prevprov_lbl 568 `"Switzerland"', add
label define ma04a_prevprov_lbl 588 `"England / United Kingdom"', add
label define ma04a_prevprov_lbl 598 `"Russia"', add
label define ma04a_prevprov_lbl 618 `"Other European countries"', add
label define ma04a_prevprov_lbl 708 `"Canada"', add
label define ma04a_prevprov_lbl 718 `"United States of America (USA)"', add
label define ma04a_prevprov_lbl 988 `"Other foreign countries"', add
label define ma04a_prevprov_lbl 100 `"Did not move"', add
label define ma04a_prevprov_lbl 999 `"Unknown"', add
label values ma04a_prevprov ma04a_prevprov_lbl

label define ma04a_prevregn_lbl 01 `"Oued-Ed-Dahab-Lagouira"'
label define ma04a_prevregn_lbl 02 `"Laayoune-Boujdour-Sakia El Hamra"', add
label define ma04a_prevregn_lbl 03 `"Guelmin-Es-Samara"', add
label define ma04a_prevregn_lbl 04 `"Souss-Massa-Draa"', add
label define ma04a_prevregn_lbl 05 `"Charb-Chrarda-Beni Hssen"', add
label define ma04a_prevregn_lbl 06 `"Chaouia-Ouardigha"', add
label define ma04a_prevregn_lbl 07 `"Marrakech-Tensift-Al Haouz"', add
label define ma04a_prevregn_lbl 08 `"Oriental"', add
label define ma04a_prevregn_lbl 09 `"Grand-Casablanca"', add
label define ma04a_prevregn_lbl 10 `"Rabat-Salé-Zemmour-Zaer"', add
label define ma04a_prevregn_lbl 11 `"Doukala Abda"', add
label define ma04a_prevregn_lbl 12 `"Tadla Azilal"', add
label define ma04a_prevregn_lbl 13 `"Meknes-Tafilalet"', add
label define ma04a_prevregn_lbl 14 `"Fès-Boulemane"', add
label define ma04a_prevregn_lbl 15 `"Taza-Al Heiceima-Taounate"', add
label define ma04a_prevregn_lbl 16 `"Tanger-Tétouan"', add
label define ma04a_prevregn_lbl 30 `"Algeria"', add
label define ma04a_prevregn_lbl 31 `"Tunisia"', add
label define ma04a_prevregn_lbl 32 `"Ivory Coast"', add
label define ma04a_prevregn_lbl 33 `"Egypt"', add
label define ma04a_prevregn_lbl 34 `"Gabon"', add
label define ma04a_prevregn_lbl 35 `"Guinea"', add
label define ma04a_prevregn_lbl 36 `"Libya"', add
label define ma04a_prevregn_lbl 37 `"Mali"', add
label define ma04a_prevregn_lbl 38 `"Mauritania"', add
label define ma04a_prevregn_lbl 39 `"Senegal"', add
label define ma04a_prevregn_lbl 40 `"Congo Brazzaville"', add
label define ma04a_prevregn_lbl 41 `"Other African countries"', add
label define ma04a_prevregn_lbl 42 `"Saudi Arabia"', add
label define ma04a_prevregn_lbl 43 `"China"', add
label define ma04a_prevregn_lbl 44 `"United Arab Emirates"', add
label define ma04a_prevregn_lbl 45 `"India"', add
label define ma04a_prevregn_lbl 46 `"Iraq"', add
label define ma04a_prevregn_lbl 47 `"Jordan"', add
label define ma04a_prevregn_lbl 48 `"Kuwait"', add
label define ma04a_prevregn_lbl 49 `"Lebanon"', add
label define ma04a_prevregn_lbl 50 `"Oman"', add
label define ma04a_prevregn_lbl 51 `"Syria"', add
label define ma04a_prevregn_lbl 52 `"Other Middle Eastern or Asian countries"', add
label define ma04a_prevregn_lbl 53 `"France"', add
label define ma04a_prevregn_lbl 54 `"Spain"', add
label define ma04a_prevregn_lbl 55 `"Belgium"', add
label define ma04a_prevregn_lbl 56 `"Bulgaria"', add
label define ma04a_prevregn_lbl 57 `"Gibraltar"', add
label define ma04a_prevregn_lbl 58 `"Netherlands"', add
label define ma04a_prevregn_lbl 59 `"Italy"', add
label define ma04a_prevregn_lbl 60 `"Norway"', add
label define ma04a_prevregn_lbl 61 `"Portugal"', add
label define ma04a_prevregn_lbl 62 `"Germany"', add
label define ma04a_prevregn_lbl 63 `"Romania"', add
label define ma04a_prevregn_lbl 64 `"Switzerland"', add
label define ma04a_prevregn_lbl 65 `"England / United Kingdom"', add
label define ma04a_prevregn_lbl 66 `"Russia"', add
label define ma04a_prevregn_lbl 67 `"Other European countries"', add
label define ma04a_prevregn_lbl 68 `"Canada"', add
label define ma04a_prevregn_lbl 69 `"United States of America (USA)"', add
label define ma04a_prevregn_lbl 70 `"Other foreign countries"', add
label define ma04a_prevregn_lbl 90 `"Did not move"', add
label define ma04a_prevregn_lbl 99 `"Unknown"', add
label values ma04a_prevregn ma04a_prevregn_lbl

label define ma04a_durres_lbl 00 `"0"'
label define ma04a_durres_lbl 01 `"1"', add
label define ma04a_durres_lbl 02 `"2"', add
label define ma04a_durres_lbl 03 `"3"', add
label define ma04a_durres_lbl 04 `"4"', add
label define ma04a_durres_lbl 05 `"5"', add
label define ma04a_durres_lbl 06 `"6"', add
label define ma04a_durres_lbl 07 `"7"', add
label define ma04a_durres_lbl 08 `"8"', add
label define ma04a_durres_lbl 09 `"9"', add
label define ma04a_durres_lbl 10 `"10"', add
label define ma04a_durres_lbl 11 `"11"', add
label define ma04a_durres_lbl 12 `"12"', add
label define ma04a_durres_lbl 13 `"13"', add
label define ma04a_durres_lbl 14 `"14"', add
label define ma04a_durres_lbl 15 `"15"', add
label define ma04a_durres_lbl 16 `"16"', add
label define ma04a_durres_lbl 17 `"17"', add
label define ma04a_durres_lbl 18 `"18"', add
label define ma04a_durres_lbl 19 `"19"', add
label define ma04a_durres_lbl 20 `"20"', add
label define ma04a_durres_lbl 21 `"21"', add
label define ma04a_durres_lbl 22 `"22"', add
label define ma04a_durres_lbl 23 `"23"', add
label define ma04a_durres_lbl 24 `"24"', add
label define ma04a_durres_lbl 25 `"25"', add
label define ma04a_durres_lbl 26 `"26"', add
label define ma04a_durres_lbl 27 `"27"', add
label define ma04a_durres_lbl 28 `"28"', add
label define ma04a_durres_lbl 29 `"29"', add
label define ma04a_durres_lbl 30 `"30"', add
label define ma04a_durres_lbl 31 `"31"', add
label define ma04a_durres_lbl 32 `"32"', add
label define ma04a_durres_lbl 33 `"33"', add
label define ma04a_durres_lbl 34 `"34"', add
label define ma04a_durres_lbl 35 `"35"', add
label define ma04a_durres_lbl 36 `"36"', add
label define ma04a_durres_lbl 37 `"37"', add
label define ma04a_durres_lbl 38 `"38"', add
label define ma04a_durres_lbl 39 `"39"', add
label define ma04a_durres_lbl 40 `"40"', add
label define ma04a_durres_lbl 41 `"41"', add
label define ma04a_durres_lbl 42 `"42"', add
label define ma04a_durres_lbl 43 `"43"', add
label define ma04a_durres_lbl 44 `"44"', add
label define ma04a_durres_lbl 45 `"45"', add
label define ma04a_durres_lbl 46 `"46"', add
label define ma04a_durres_lbl 47 `"47"', add
label define ma04a_durres_lbl 48 `"48"', add
label define ma04a_durres_lbl 49 `"49"', add
label define ma04a_durres_lbl 50 `"50"', add
label define ma04a_durres_lbl 51 `"51"', add
label define ma04a_durres_lbl 52 `"52"', add
label define ma04a_durres_lbl 53 `"53"', add
label define ma04a_durres_lbl 54 `"54"', add
label define ma04a_durres_lbl 55 `"55"', add
label define ma04a_durres_lbl 56 `"56"', add
label define ma04a_durres_lbl 57 `"57"', add
label define ma04a_durres_lbl 58 `"58"', add
label define ma04a_durres_lbl 59 `"59"', add
label define ma04a_durres_lbl 60 `"60"', add
label define ma04a_durres_lbl 61 `"61"', add
label define ma04a_durres_lbl 62 `"62"', add
label define ma04a_durres_lbl 63 `"63"', add
label define ma04a_durres_lbl 64 `"64"', add
label define ma04a_durres_lbl 65 `"65"', add
label define ma04a_durres_lbl 66 `"66"', add
label define ma04a_durres_lbl 67 `"67"', add
label define ma04a_durres_lbl 68 `"68"', add
label define ma04a_durres_lbl 69 `"69"', add
label define ma04a_durres_lbl 70 `"70"', add
label define ma04a_durres_lbl 71 `"71"', add
label define ma04a_durres_lbl 72 `"72"', add
label define ma04a_durres_lbl 73 `"73"', add
label define ma04a_durres_lbl 74 `"74"', add
label define ma04a_durres_lbl 75 `"75"', add
label define ma04a_durres_lbl 76 `"76"', add
label define ma04a_durres_lbl 77 `"77"', add
label define ma04a_durres_lbl 78 `"78"', add
label define ma04a_durres_lbl 79 `"79"', add
label define ma04a_durres_lbl 80 `"80+"', add
label define ma04a_durres_lbl 98 `"Unknown"', add
label define ma04a_durres_lbl 99 `"Did not move"', add
label values ma04a_durres ma04a_durres_lbl

label define ma04a_prov5yr_lbl 000 `"Agadir-Ida Ou Tan"'
label define ma04a_prov5yr_lbl 002 `"Berkane"', add
label define ma04a_prov5yr_lbl 003 `"Chouka-Ait Baha"', add
label define ma04a_prov5yr_lbl 004 `"Al Haouz"', add
label define ma04a_prov5yr_lbl 005 `"Al Hoceima"', add
label define ma04a_prov5yr_lbl 006 `"Meknes"', add
label define ma04a_prov5yr_lbl 007 `"Assa-Zag"', add
label define ma04a_prov5yr_lbl 008 `"Azilal"', add
label define ma04a_prov5yr_lbl 009 `"Beni Mellal"', add
label define ma04a_prov5yr_lbl 011 `"Benslimane"', add
label define ma04a_prov5yr_lbl 012 `"Boujdour"', add
label define ma04a_prov5yr_lbl 013 `"Boulemane"', add
label define ma04a_prov5yr_lbl 014 `"Casablanca"', add
label define ma04a_prov5yr_lbl 015 `"Chefchaouen"', add
label define ma04a_prov5yr_lbl 016 `"Chichaoua"', add
label define ma04a_prov5yr_lbl 017 `"El Hajeb"', add
label define ma04a_prov5yr_lbl 018 `"El Jadida"', add
label define ma04a_prov5yr_lbl 019 `"El Kelfa Des Sraghna"', add
label define ma04a_prov5yr_lbl 020 `"Errachidia"', add
label define ma04a_prov5yr_lbl 021 `"Essaouira"', add
label define ma04a_prov5yr_lbl 022 `"Es-Semara"', add
label define ma04a_prov5yr_lbl 023 `"Fes"', add
label define ma04a_prov5yr_lbl 025 `"Figuig"', add
label define ma04a_prov5yr_lbl 026 `"Guelmim"', add
label define ma04a_prov5yr_lbl 027 `"Ifrane"', add
label define ma04a_prov5yr_lbl 028 `"Kenitra"', add
label define ma04a_prov5yr_lbl 029 `"Khemisset"', add
label define ma04a_prov5yr_lbl 030 `"Khenifra"', add
label define ma04a_prov5yr_lbl 031 `"Khouribga"', add
label define ma04a_prov5yr_lbl 032 `"Laayoune"', add
label define ma04a_prov5yr_lbl 033 `"Larache"', add
label define ma04a_prov5yr_lbl 034 `"Inezgane-Ait Melloul"', add
label define ma04a_prov5yr_lbl 035 `"Marrakech"', add
label define ma04a_prov5yr_lbl 037 `"Mohammedia"', add
label define ma04a_prov5yr_lbl 038 `"Nador"', add
label define ma04a_prov5yr_lbl 039 `"Oued-Ed-Dahab or Aousserd"', add
label define ma04a_prov5yr_lbl 040 `"Ouarzazate"', add
label define ma04a_prov5yr_lbl 041 `"Ouajda-Angad"', add
label define ma04a_prov5yr_lbl 042 `"Rabat"', add
label define ma04a_prov5yr_lbl 043 `"Safi"', add
label define ma04a_prov5yr_lbl 044 `"Sale"', add
label define ma04a_prov5yr_lbl 045 `"Sefrou"', add
label define ma04a_prov5yr_lbl 046 `"Settat"', add
label define ma04a_prov5yr_lbl 047 `"Jerada"', add
label define ma04a_prov5yr_lbl 048 `"Sidi Kacem"', add
label define ma04a_prov5yr_lbl 049 `"Mediouna"', add
label define ma04a_prov5yr_lbl 050 `"Skhirate-Temara"', add
label define ma04a_prov5yr_lbl 051 `"Tanger-Assilah"', add
label define ma04a_prov5yr_lbl 052 `"Tan-Tan"', add
label define ma04a_prov5yr_lbl 053 `"Taounate"', add
label define ma04a_prov5yr_lbl 054 `"Taroudannt"', add
label define ma04a_prov5yr_lbl 055 `"Tata"', add
label define ma04a_prov5yr_lbl 056 `"Taza"', add
label define ma04a_prov5yr_lbl 057 `"Tetouan"', add
label define ma04a_prov5yr_lbl 058 `"Tiznit"', add
label define ma04a_prov5yr_lbl 059 `"Moulay Yacoub"', add
label define ma04a_prov5yr_lbl 060 `"Nouaceur"', add
label define ma04a_prov5yr_lbl 061 `"Taourirt"', add
label define ma04a_prov5yr_lbl 062 `"Zagora"', add
label define ma04a_prov5yr_lbl 078 `"Egypt"', add
label define ma04a_prov5yr_lbl 088 `"Gabon"', add
label define ma04a_prov5yr_lbl 098 `"Guinea"', add
label define ma04a_prov5yr_lbl 108 `"Libya"', add
label define ma04a_prov5yr_lbl 128 `"Mauritania"', add
label define ma04a_prov5yr_lbl 148 `"Senegal"', add
label define ma04a_prov5yr_lbl 188 `"Congo Brazzaville"', add
label define ma04a_prov5yr_lbl 208 `"Other African countries"', add
label define ma04a_prov5yr_lbl 408 `"France"', add
label define ma04a_prov5yr_lbl 418 `"Spain"', add
label define ma04a_prov5yr_lbl 428 `"Belgium"', add
label define ma04a_prov5yr_lbl 488 `"Netherlands"', add
label define ma04a_prov5yr_lbl 498 `"Italy"', add
label define ma04a_prov5yr_lbl 518 `"Norway"', add
label define ma04a_prov5yr_lbl 538 `"Portugal"', add
label define ma04a_prov5yr_lbl 548 `"Germany"', add
label define ma04a_prov5yr_lbl 568 `"Switzerland"', add
label define ma04a_prov5yr_lbl 588 `"England / United Kingdom"', add
label define ma04a_prov5yr_lbl 598 `"Russia"', add
label define ma04a_prov5yr_lbl 618 `"Other European countries"', add
label define ma04a_prov5yr_lbl 218 `"Saudi Arabia"', add
label define ma04a_prov5yr_lbl 248 `"China"', add
label define ma04a_prov5yr_lbl 258 `"United Arab Emirates"', add
label define ma04a_prov5yr_lbl 278 `"Iraq"', add
label define ma04a_prov5yr_lbl 308 `"Lebanon"', add
label define ma04a_prov5yr_lbl 318 `"Oman"', add
label define ma04a_prov5yr_lbl 348 `"Syria"', add
label define ma04a_prov5yr_lbl 398 `"Other Middle Eastern and Asian countries"', add
label define ma04a_prov5yr_lbl 708 `"Canada"', add
label define ma04a_prov5yr_lbl 718 `"United States of America (USA)"', add
label define ma04a_prov5yr_lbl 988 `"Other foreign countries"', add
label define ma04a_prov5yr_lbl 990 `"Did not move"', add
label define ma04a_prov5yr_lbl 999 `"Unknown"', add
label values ma04a_prov5yr ma04a_prov5yr_lbl

label define ma04a_regn5yr_lbl 01 `"Oued-Ed-Dahab-Lagouira"'
label define ma04a_regn5yr_lbl 02 `"Laayoune-Boujdour-Sakia El Hamra"', add
label define ma04a_regn5yr_lbl 03 `"Guelmin-Es-Samara"', add
label define ma04a_regn5yr_lbl 04 `"Souss-Massa-Draa"', add
label define ma04a_regn5yr_lbl 05 `"Charb-Chrarda-Beni Hssen"', add
label define ma04a_regn5yr_lbl 06 `"Chaouia-Ouardigha"', add
label define ma04a_regn5yr_lbl 07 `"Marrakech-Tensift-Al Haouz"', add
label define ma04a_regn5yr_lbl 08 `"Oriental"', add
label define ma04a_regn5yr_lbl 09 `"Grand-Casablanca"', add
label define ma04a_regn5yr_lbl 10 `"Rabat-Salé-Zemmour-Zaer"', add
label define ma04a_regn5yr_lbl 11 `"Doukala Abda"', add
label define ma04a_regn5yr_lbl 12 `"Tadla Azilal"', add
label define ma04a_regn5yr_lbl 13 `"Meknes-Tafilalet"', add
label define ma04a_regn5yr_lbl 14 `"Fès-Boulemane"', add
label define ma04a_regn5yr_lbl 15 `"Taza-Al Heiceima-Taounate"', add
label define ma04a_regn5yr_lbl 16 `"Tanger-Tétouan"', add
label define ma04a_regn5yr_lbl 20 `"Algeria"', add
label define ma04a_regn5yr_lbl 21 `"Tunisia"', add
label define ma04a_regn5yr_lbl 22 `"Ivory Coast"', add
label define ma04a_regn5yr_lbl 23 `"Egypt"', add
label define ma04a_regn5yr_lbl 24 `"Gabon"', add
label define ma04a_regn5yr_lbl 25 `"Guinea"', add
label define ma04a_regn5yr_lbl 26 `"Libya"', add
label define ma04a_regn5yr_lbl 27 `"Mauritania"', add
label define ma04a_regn5yr_lbl 28 `"Senegal"', add
label define ma04a_regn5yr_lbl 29 `"Congo Brazzaville"', add
label define ma04a_regn5yr_lbl 30 `"Other African countries"', add
label define ma04a_regn5yr_lbl 31 `"France"', add
label define ma04a_regn5yr_lbl 32 `"Spain"', add
label define ma04a_regn5yr_lbl 33 `"Belgium"', add
label define ma04a_regn5yr_lbl 34 `"Netherlands"', add
label define ma04a_regn5yr_lbl 35 `"Italy"', add
label define ma04a_regn5yr_lbl 36 `"Norway"', add
label define ma04a_regn5yr_lbl 37 `"Portugal"', add
label define ma04a_regn5yr_lbl 38 `"Germany"', add
label define ma04a_regn5yr_lbl 39 `"Switzerland"', add
label define ma04a_regn5yr_lbl 40 `"England / United Kingdom"', add
label define ma04a_regn5yr_lbl 41 `"Russia"', add
label define ma04a_regn5yr_lbl 42 `"Other European countries"', add
label define ma04a_regn5yr_lbl 43 `"Saudi Arabia"', add
label define ma04a_regn5yr_lbl 44 `"China"', add
label define ma04a_regn5yr_lbl 45 `"United Arab Emirates"', add
label define ma04a_regn5yr_lbl 46 `"Iraq"', add
label define ma04a_regn5yr_lbl 47 `"Lebanon"', add
label define ma04a_regn5yr_lbl 48 `"Oman"', add
label define ma04a_regn5yr_lbl 49 `"Syria"', add
label define ma04a_regn5yr_lbl 50 `"Other Middle Eastern and Asian countries"', add
label define ma04a_regn5yr_lbl 51 `"Canada"', add
label define ma04a_regn5yr_lbl 52 `"United States of America (USA)"', add
label define ma04a_regn5yr_lbl 53 `"Other foreign countries"', add
label define ma04a_regn5yr_lbl 90 `"Did not move"', add
label define ma04a_regn5yr_lbl 99 `"Unknown"', add
label values ma04a_regn5yr ma04a_regn5yr_lbl


