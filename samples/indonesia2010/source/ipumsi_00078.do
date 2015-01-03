* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    id10a_dwnum     22-28    ///
  byte    id10a_pern      29-30    ///
  byte    id10a_fbig      31-31    ///
  byte    id10a_prov      32-33    ///
  int     id10a_dist      34-37    ///
  byte    id10a_urban     38-38    ///
  byte    id10a_hhdeath   39-39    ///
  byte    id10a_deathtot  40-40    ///
  byte    id10a_floor     41-41    ///
  int     id10a_area      42-45    ///
  byte    id10a_light     46-46    ///
  byte    id10a_fuelcook  47-47    ///
  byte    id10a_watdrink  48-49    ///
  byte    id10a_toilet    50-50    ///
  byte    id10a_septic    51-51    ///
  byte    id10a_phone     52-52    ///
  byte    id10a_internet  53-53    ///
  byte    id10a_tenure    54-54    ///
  byte    id10a_ownrshp   55-55    ///
  byte    id10a_ownproof  56-56    ///
  byte    id10a_doctype   57-57    ///
  int     pernum          58-60    ///
  float   wtper           61-68    ///
  byte    id10a_pernum    69-70    ///
  byte    id10a_relate    71-72    ///
  byte    id10a_sex       73-73    ///
  byte    id10a_birthmo   74-75    ///
  int     id10a_birthyr   76-79    ///
  byte    id10a_age       80-81    ///
  byte    id10a_bthprov   82-83    ///
  int     id10a_bthdist   84-87    ///
  byte    id10a_relig     88-88    ///
  byte    id10a_disblnd   89-89    ///
  byte    id10a_dishear   90-90    ///
  byte    id10a_disphys   91-91    ///
  byte    id10a_dismntl   92-92    ///
  byte    id10a_selfcare  93-93    ///
  int     id10a_ethnic    94-97    ///
  byte    id10a_foreign   98-99    ///
  byte    id10a_prov5     100-101  ///
  int     id10a_dist5     102-105  ///
  int     id10a_lang      106-109  ///
  byte    id10a_speakind  110-110  ///
  byte    id10a_school    111-111  ///
  byte    id10a_educ      112-113  ///
  byte    id10a_litlatin  114-114  ///
  byte    id10a_litother  115-115  ///
  byte    id10a_marst     116-116  ///
  byte    id10a_econact   117-117  ///
  byte    id10a_tempwork  118-118  ///
  byte    id10a_seekwork  119-119  ///
  byte    id10a_willwork  120-120  ///
  byte    id10a_ind       121-122  ///
  byte    id10a_classwk   123-123  ///
  byte    id10a_livebth   124-124  ///
  byte    id10a_homemale  125-126  ///
  byte    id10a_homefem   127-128  ///
  byte    id10a_awaymale  129-130  ///
  byte    id10a_awayfem   131-132  ///
  byte    id10a_chdiedm   133-134  ///
  byte    id10a_chdiedf   135-136  ///
  byte    id10a_bthlstyr  137-137  ///
  byte    id10a_doctypep  138-138  ///
  byte    id10a_chbornm   139-140  ///
  byte    id10a_chbornf   141-142  ///
  byte    id10a_chborn    143-144  ///
  byte    id10a_chsurvm   145-146  ///
  byte    id10a_chsurvf   147-148  ///
  byte    id10a_chsurv    149-150  ///
  using `"ipumsi_00078.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var id10a_dwnum    `"Dwelling number"'
label var id10a_pern     `"Number of persons in household"'
label var id10a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var id10a_prov     `"Province"'
label var id10a_dist     `"District (regency)"'
label var id10a_urban    `"Urban or rural area"'
label var id10a_hhdeath  `"Death occurred in household"'
label var id10a_deathtot `"Total deaths in household"'
label var id10a_floor    `"Floor"'
label var id10a_area     `"Floor area (square meters)"'
label var id10a_light    `"Lighting source"'
label var id10a_fuelcook `"Cooking fuel"'
label var id10a_watdrink `"Drinking water source"'
label var id10a_toilet   `"Toilet"'
label var id10a_septic   `"Sewage disposal"'
label var id10a_phone    `"Telephone"'
label var id10a_internet `"Internet"'
label var id10a_tenure   `"Tenure of dwelling unit"'
label var id10a_ownrshp  `"Land ownership"'
label var id10a_ownproof `"Proof of ownership of the dwelling"'
label var id10a_doctype  `"Census form"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var id10a_pernum   `"Person number (within household)"'
label var id10a_relate   `"Relationship to household head"'
label var id10a_sex      `"Sex"'
label var id10a_birthmo  `"Month of birth"'
label var id10a_birthyr  `"Year of birth"'
label var id10a_age      `"Age"'
label var id10a_bthprov  `"Province of birth"'
label var id10a_bthdist  `"District of birth"'
label var id10a_relig    `"Religion"'
label var id10a_disblnd  `"Seeing (even when wearing glasses)"'
label var id10a_dishear  `"Hearing"'
label var id10a_disphys  `"Hand and foot usage"'
label var id10a_dismntl  `"Concentrating"'
label var id10a_selfcare `"Self-care"'
label var id10a_ethnic   `"Ethnicity"'
label var id10a_foreign  `"Country of citizenship"'
label var id10a_prov5    `"Province of residence 5 years ago"'
label var id10a_dist5    `"District (regency) of residence 5 years ago"'
label var id10a_lang     `"Language spoken at home"'
label var id10a_speakind `"Speak Indonesian"'
label var id10a_school   `"School attendance"'
label var id10a_educ     `"Highest education level completed"'
label var id10a_litlatin `"Can read and write Latin characters"'
label var id10a_litother `"Can read and write other characters"'
label var id10a_marst    `"Marital status"'
label var id10a_econact  `"Working"'
label var id10a_tempwork `"Temporarily not working"'
label var id10a_seekwork `"Seeking work"'
label var id10a_willwork `"Available for work"'
label var id10a_ind      `"Industry"'
label var id10a_classwk  `"Status in employment"'
label var id10a_livebth  `"Ever had a live birth"'
label var id10a_homemale `"Number of male children ever born living in this household"'
label var id10a_homefem  `"Number of female children ever born living in this household"'
label var id10a_awaymale `"Number of male children ever born living elsewhere"'
label var id10a_awayfem  `"Number of female children ever born living elsewhere"'
label var id10a_chdiedm  `"Number of male children ever born who have died"'
label var id10a_chdiedf  `"Number of female children ever born who have died"'
label var id10a_bthlstyr `"Have given birth since January 1, 2009"'
label var id10a_doctypep `"Document type"'
label var id10a_chbornm  `"Number of male children ever born"'
label var id10a_chbornf  `"Number of female children ever born"'
label var id10a_chborn   `"Number of children ever born"'
label var id10a_chsurvm  `"Number of male children still alive"'
label var id10a_chsurvf  `"Number of female children still alive"'
label var id10a_chsurv   `"Number of children still alive"'

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

label define id10a_pern_lbl 01 `"1"'
label define id10a_pern_lbl 02 `"2"', add
label define id10a_pern_lbl 03 `"3"', add
label define id10a_pern_lbl 04 `"4"', add
label define id10a_pern_lbl 05 `"5"', add
label define id10a_pern_lbl 06 `"6"', add
label define id10a_pern_lbl 07 `"7"', add
label define id10a_pern_lbl 08 `"8"', add
label define id10a_pern_lbl 09 `"9"', add
label define id10a_pern_lbl 10 `"10"', add
label define id10a_pern_lbl 11 `"11"', add
label define id10a_pern_lbl 12 `"12"', add
label define id10a_pern_lbl 13 `"13"', add
label define id10a_pern_lbl 14 `"14"', add
label define id10a_pern_lbl 15 `"15"', add
label define id10a_pern_lbl 16 `"16"', add
label define id10a_pern_lbl 17 `"17"', add
label define id10a_pern_lbl 18 `"18"', add
label define id10a_pern_lbl 19 `"19"', add
label define id10a_pern_lbl 20 `"20"', add
label define id10a_pern_lbl 21 `"21"', add
label define id10a_pern_lbl 22 `"22"', add
label define id10a_pern_lbl 23 `"23"', add
label define id10a_pern_lbl 24 `"24"', add
label define id10a_pern_lbl 25 `"25"', add
label define id10a_pern_lbl 26 `"26"', add
label define id10a_pern_lbl 27 `"27"', add
label define id10a_pern_lbl 28 `"28"', add
label define id10a_pern_lbl 29 `"29"', add
label define id10a_pern_lbl 30 `"30"', add
label values id10a_pern id10a_pern_lbl

label define id10a_fbig_lbl 0 `"No problem"'
label define id10a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define id10a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values id10a_fbig id10a_fbig_lbl

label define id10a_prov_lbl 11 `"Nanggroe Aceh Darussalam"'
label define id10a_prov_lbl 12 `"Sumatera Utara"', add
label define id10a_prov_lbl 13 `"Sumatera Barat"', add
label define id10a_prov_lbl 14 `"Riau"', add
label define id10a_prov_lbl 15 `"Jambi"', add
label define id10a_prov_lbl 16 `"Sumatera Selatan"', add
label define id10a_prov_lbl 17 `"Bengkulu"', add
label define id10a_prov_lbl 18 `"Lampung"', add
label define id10a_prov_lbl 19 `"Bangka Belitung"', add
label define id10a_prov_lbl 21 `"Kepulauan Riau"', add
label define id10a_prov_lbl 31 `"DKI Jakarta"', add
label define id10a_prov_lbl 32 `"Jawa Barat"', add
label define id10a_prov_lbl 33 `"Jawa Tengah"', add
label define id10a_prov_lbl 34 `"DI Yogyakarta"', add
label define id10a_prov_lbl 35 `"Jawa Timur"', add
label define id10a_prov_lbl 36 `"Banten"', add
label define id10a_prov_lbl 51 `"Bali"', add
label define id10a_prov_lbl 52 `"Nusa Tenggara Barat"', add
label define id10a_prov_lbl 53 `"Nusa Tenggara Timur"', add
label define id10a_prov_lbl 61 `"Kalimantan Barat"', add
label define id10a_prov_lbl 62 `"Kalimantan Tengah"', add
label define id10a_prov_lbl 63 `"Kalimantan Selatan"', add
label define id10a_prov_lbl 64 `"Kalimantan Timur"', add
label define id10a_prov_lbl 71 `"Sulawesi Utara"', add
label define id10a_prov_lbl 72 `"Sulawesi Tengah"', add
label define id10a_prov_lbl 73 `"Sulawesi Selatan"', add
label define id10a_prov_lbl 74 `"Sulawesi Tenggara"', add
label define id10a_prov_lbl 75 `"Gorontalo"', add
label define id10a_prov_lbl 76 `"Sulawesi Barat"', add
label define id10a_prov_lbl 81 `"Maluku"', add
label define id10a_prov_lbl 82 `"Maluku Utara"', add
label define id10a_prov_lbl 91 `"Papua Barat"', add
label define id10a_prov_lbl 94 `"Papua"', add
label values id10a_prov id10a_prov_lbl

label define id10a_dist_lbl 1101 `"Simeulue"'
label define id10a_dist_lbl 1102 `"Aceh Singkil"', add
label define id10a_dist_lbl 1103 `"Aceh Selatan"', add
label define id10a_dist_lbl 1104 `"Aceh Tenggara"', add
label define id10a_dist_lbl 1105 `"Aceh Timur"', add
label define id10a_dist_lbl 1106 `"Aceh Tengah"', add
label define id10a_dist_lbl 1107 `"Aceh Barat"', add
label define id10a_dist_lbl 1108 `"Aceh Besar"', add
label define id10a_dist_lbl 1109 `"Pidie"', add
label define id10a_dist_lbl 1110 `"Bireuen"', add
label define id10a_dist_lbl 1111 `"Aceh Utara"', add
label define id10a_dist_lbl 1112 `"Aceh Barat Daya"', add
label define id10a_dist_lbl 1113 `"Gayo Lues"', add
label define id10a_dist_lbl 1114 `"Aceh Tamiang"', add
label define id10a_dist_lbl 1115 `"Nagan Raya"', add
label define id10a_dist_lbl 1116 `"Aceh Jaya"', add
label define id10a_dist_lbl 1117 `"Bener Meriah"', add
label define id10a_dist_lbl 1118 `"Pidie Jaya"', add
label define id10a_dist_lbl 1171 `"Kota Banda Aceh"', add
label define id10a_dist_lbl 1172 `"Kota Sabang"', add
label define id10a_dist_lbl 1173 `"Kota Langsa"', add
label define id10a_dist_lbl 1174 `"Kota Lhoksumawe"', add
label define id10a_dist_lbl 1175 `"Subulussalam"', add
label define id10a_dist_lbl 1201 `"Nias"', add
label define id10a_dist_lbl 1202 `"Mandailing Natal"', add
label define id10a_dist_lbl 1203 `"Tapanuli Selatan"', add
label define id10a_dist_lbl 1204 `"Tapanuli Tengah"', add
label define id10a_dist_lbl 1205 `"Tapanuli Utara"', add
label define id10a_dist_lbl 1206 `"Toba Samosir"', add
label define id10a_dist_lbl 1207 `"Labuhan Batu"', add
label define id10a_dist_lbl 1208 `"Asahan"', add
label define id10a_dist_lbl 1209 `"Simalungun"', add
label define id10a_dist_lbl 1210 `"Dairi"', add
label define id10a_dist_lbl 1211 `"Karo"', add
label define id10a_dist_lbl 1212 `"Deli Serdang"', add
label define id10a_dist_lbl 1213 `"Langkat"', add
label define id10a_dist_lbl 1214 `"Nias Selatan"', add
label define id10a_dist_lbl 1215 `"Humbang Hasundutan"', add
label define id10a_dist_lbl 1216 `"Papak Bharat"', add
label define id10a_dist_lbl 1217 `"Samosir"', add
label define id10a_dist_lbl 1218 `"Serdang Bedagai"', add
label define id10a_dist_lbl 1219 `"Batu Bara"', add
label define id10a_dist_lbl 1220 `"Padang Lawas Utara"', add
label define id10a_dist_lbl 1221 `"Padang Lawas"', add
label define id10a_dist_lbl 1222 `"Labuhan Batu Selatan"', add
label define id10a_dist_lbl 1223 `"Labuhan Batu Utara"', add
label define id10a_dist_lbl 1224 `"Nias Utara"', add
label define id10a_dist_lbl 1225 `"Nias Barat"', add
label define id10a_dist_lbl 1271 `"Kota Sibolga"', add
label define id10a_dist_lbl 1272 `"Tanjung Balai"', add
label define id10a_dist_lbl 1273 `"Kota Pematang Siantar"', add
label define id10a_dist_lbl 1274 `"Kota Tebing Tinggi"', add
label define id10a_dist_lbl 1275 `"Medan"', add
label define id10a_dist_lbl 1276 `"Kota Binjai"', add
label define id10a_dist_lbl 1277 `"Kota Padang Sidempuan"', add
label define id10a_dist_lbl 1278 `"Kota Gunungsitoli"', add
label define id10a_dist_lbl 1301 `"Kepulauan Mentawai"', add
label define id10a_dist_lbl 1302 `"Pesisir Selatan"', add
label define id10a_dist_lbl 1303 `"Solok"', add
label define id10a_dist_lbl 1304 `"Sawahlunto/Sijunjung"', add
label define id10a_dist_lbl 1305 `"Tanah Datar"', add
label define id10a_dist_lbl 1306 `"Padang Pariaman"', add
label define id10a_dist_lbl 1307 `"Agam"', add
label define id10a_dist_lbl 1308 `"Lima Puluh Koto"', add
label define id10a_dist_lbl 1309 `"Pasaman"', add
label define id10a_dist_lbl 1310 `"Solok Selatan"', add
label define id10a_dist_lbl 1311 `"Dharmasraya"', add
label define id10a_dist_lbl 1312 `"Pasaman Barat"', add
label define id10a_dist_lbl 1371 `"Kota Padang"', add
label define id10a_dist_lbl 1372 `"Kota Solok"', add
label define id10a_dist_lbl 1373 `"Kota Sawah Lunto"', add
label define id10a_dist_lbl 1374 `"Kota Padang Panjang"', add
label define id10a_dist_lbl 1375 `"Kota Bukittinggi"', add
label define id10a_dist_lbl 1376 `"Kota Payakumbuh"', add
label define id10a_dist_lbl 1377 `"Kota Pariaman"', add
label define id10a_dist_lbl 1401 `"Kuantan Singingi"', add
label define id10a_dist_lbl 1402 `"Indragiri Hulu"', add
label define id10a_dist_lbl 1403 `"Indragiri Hilir"', add
label define id10a_dist_lbl 1404 `"Pelalawan"', add
label define id10a_dist_lbl 1405 `"Siak"', add
label define id10a_dist_lbl 1406 `"Kampar"', add
label define id10a_dist_lbl 1407 `"Rokan Hulu"', add
label define id10a_dist_lbl 1408 `"Bengkalis"', add
label define id10a_dist_lbl 1409 `"Rokan Hilir"', add
label define id10a_dist_lbl 1410 `"Kepulauan Meranti"', add
label define id10a_dist_lbl 1471 `"Pekan Baru"', add
label define id10a_dist_lbl 1473 `"Dumai"', add
label define id10a_dist_lbl 1501 `"Kerinci"', add
label define id10a_dist_lbl 1502 `"Merangin"', add
label define id10a_dist_lbl 1503 `"Sarolangun"', add
label define id10a_dist_lbl 1504 `"Batanghari"', add
label define id10a_dist_lbl 1505 `"Muaro Jambi"', add
label define id10a_dist_lbl 1506 `"Tanjung Jabung Timur"', add
label define id10a_dist_lbl 1507 `"Tanjung Jabung Barat"', add
label define id10a_dist_lbl 1508 `"Tebo"', add
label define id10a_dist_lbl 1509 `"Bungo"', add
label define id10a_dist_lbl 1571 `"Jambi"', add
label define id10a_dist_lbl 1572 `"Kota Sungai Penuh"', add
label define id10a_dist_lbl 1601 `"Oku"', add
label define id10a_dist_lbl 1602 `"Oki"', add
label define id10a_dist_lbl 1603 `"Muara Enim"', add
label define id10a_dist_lbl 1604 `"Lahat"', add
label define id10a_dist_lbl 1605 `"Musi Rawas"', add
label define id10a_dist_lbl 1606 `"Musi Banyu Asin"', add
label define id10a_dist_lbl 1607 `"Banyu Asin"', add
label define id10a_dist_lbl 1608 `"Oku Selatan"', add
label define id10a_dist_lbl 1609 `"Oku Timur"', add
label define id10a_dist_lbl 1610 `"Ogan Ilir"', add
label define id10a_dist_lbl 1611 `"Empat Lawang"', add
label define id10a_dist_lbl 1671 `"Palembang"', add
label define id10a_dist_lbl 1672 `"Prabumulih"', add
label define id10a_dist_lbl 1673 `"Pagar Alam"', add
label define id10a_dist_lbl 1674 `"Lubuk Lingga"', add
label define id10a_dist_lbl 1701 `"Bengkulu Selatan"', add
label define id10a_dist_lbl 1702 `"Rejang Lebong"', add
label define id10a_dist_lbl 1703 `"Bengkulu Utara"', add
label define id10a_dist_lbl 1704 `"Kaur"', add
label define id10a_dist_lbl 1705 `"Seluma"', add
label define id10a_dist_lbl 1706 `"Mukomuko"', add
label define id10a_dist_lbl 1707 `"Lebong"', add
label define id10a_dist_lbl 1708 `"Kepahing"', add
label define id10a_dist_lbl 1709 `"Bengkulu Tengah"', add
label define id10a_dist_lbl 1771 `"Bengkulu"', add
label define id10a_dist_lbl 1801 `"Lampung Barat"', add
label define id10a_dist_lbl 1802 `"Tanggamus"', add
label define id10a_dist_lbl 1803 `"Lampung Selatan"', add
label define id10a_dist_lbl 1804 `"Lampung Timur"', add
label define id10a_dist_lbl 1805 `"Lampung Tengah"', add
label define id10a_dist_lbl 1806 `"Lampung Utara"', add
label define id10a_dist_lbl 1807 `"Way Kanan"', add
label define id10a_dist_lbl 1808 `"Tulang Bawang"', add
label define id10a_dist_lbl 1809 `"Pesawaran"', add
label define id10a_dist_lbl 1810 `"Pringsewu"', add
label define id10a_dist_lbl 1811 `"Mesuji"', add
label define id10a_dist_lbl 1812 `"Tulangbawang Barat"', add
label define id10a_dist_lbl 1871 `"Bandar Lampung"', add
label define id10a_dist_lbl 1872 `"Metro"', add
label define id10a_dist_lbl 1901 `"Bangka"', add
label define id10a_dist_lbl 1902 `"Belitung"', add
label define id10a_dist_lbl 1903 `"Bangka Barat"', add
label define id10a_dist_lbl 1904 `"Bangka Tengah"', add
label define id10a_dist_lbl 1905 `"Bangka Selatan"', add
label define id10a_dist_lbl 1906 `"Belitung Timur"', add
label define id10a_dist_lbl 1971 `"Pangkal Pinang"', add
label define id10a_dist_lbl 2101 `"Karimun"', add
label define id10a_dist_lbl 2102 `"Kepulauan Riau"', add
label define id10a_dist_lbl 2103 `"Natuna"', add
label define id10a_dist_lbl 2104 `"Lingga"', add
label define id10a_dist_lbl 2105 `"Kepulauan Anambas"', add
label define id10a_dist_lbl 2171 `"Batam"', add
label define id10a_dist_lbl 2172 `"Tanjung Pinang"', add
label define id10a_dist_lbl 3101 `"Kepulauan Seribu"', add
label define id10a_dist_lbl 3171 `"Jakarta Selatan"', add
label define id10a_dist_lbl 3172 `"Jakarta Timur"', add
label define id10a_dist_lbl 3173 `"Jakarta Pusat"', add
label define id10a_dist_lbl 3174 `"Jakarta Barat"', add
label define id10a_dist_lbl 3175 `"Jakarta Utara"', add
label define id10a_dist_lbl 3201 `"Bogor"', add
label define id10a_dist_lbl 3202 `"Sukabumi"', add
label define id10a_dist_lbl 3203 `"Cianjur"', add
label define id10a_dist_lbl 3204 `"Bandung"', add
label define id10a_dist_lbl 3205 `"Garut"', add
label define id10a_dist_lbl 3206 `"Tasikmalaya"', add
label define id10a_dist_lbl 3207 `"Ciamis"', add
label define id10a_dist_lbl 3208 `"Kuningan"', add
label define id10a_dist_lbl 3209 `"Cirebon"', add
label define id10a_dist_lbl 3210 `"Majalengka"', add
label define id10a_dist_lbl 3211 `"Sumedang"', add
label define id10a_dist_lbl 3212 `"Indramayu"', add
label define id10a_dist_lbl 3213 `"Subang"', add
label define id10a_dist_lbl 3214 `"Purwakarta"', add
label define id10a_dist_lbl 3215 `"Karawang"', add
label define id10a_dist_lbl 3216 `"Bekasi"', add
label define id10a_dist_lbl 3217 `"Bandung Barat"', add
label define id10a_dist_lbl 3271 `"Bogor"', add
label define id10a_dist_lbl 3272 `"Sukabumi"', add
label define id10a_dist_lbl 3273 `"Bandung"', add
label define id10a_dist_lbl 3274 `"Cirebon"', add
label define id10a_dist_lbl 3275 `"Bekasi"', add
label define id10a_dist_lbl 3276 `"Depok"', add
label define id10a_dist_lbl 3277 `"Cimahi"', add
label define id10a_dist_lbl 3278 `"Tasikmalaya"', add
label define id10a_dist_lbl 3279 `"Banjar"', add
label define id10a_dist_lbl 3301 `"Cilacap"', add
label define id10a_dist_lbl 3302 `"Banyumas"', add
label define id10a_dist_lbl 3303 `"Purbalingga"', add
label define id10a_dist_lbl 3304 `"Banjarnegara"', add
label define id10a_dist_lbl 3305 `"Kebumen"', add
label define id10a_dist_lbl 3306 `"Purworejo"', add
label define id10a_dist_lbl 3307 `"Wonosobo"', add
label define id10a_dist_lbl 3308 `"Magelang"', add
label define id10a_dist_lbl 3309 `"Boyolali"', add
label define id10a_dist_lbl 3310 `"Klaten"', add
label define id10a_dist_lbl 3311 `"Sukoharjo"', add
label define id10a_dist_lbl 3312 `"Wonogiri"', add
label define id10a_dist_lbl 3313 `"Karanganyar"', add
label define id10a_dist_lbl 3314 `"Sragen"', add
label define id10a_dist_lbl 3315 `"Grobogan"', add
label define id10a_dist_lbl 3316 `"Blora"', add
label define id10a_dist_lbl 3317 `"Rembang"', add
label define id10a_dist_lbl 3318 `"Pati"', add
label define id10a_dist_lbl 3319 `"Kudus"', add
label define id10a_dist_lbl 3320 `"Jepara"', add
label define id10a_dist_lbl 3321 `"Demak"', add
label define id10a_dist_lbl 3322 `"Semarang"', add
label define id10a_dist_lbl 3323 `"Temanggung"', add
label define id10a_dist_lbl 3324 `"Kendal"', add
label define id10a_dist_lbl 3325 `"Batang"', add
label define id10a_dist_lbl 3326 `"Pekalongan"', add
label define id10a_dist_lbl 3327 `"Pemalang"', add
label define id10a_dist_lbl 3328 `"Tegal"', add
label define id10a_dist_lbl 3329 `"Brebes"', add
label define id10a_dist_lbl 3371 `"Magelang"', add
label define id10a_dist_lbl 3372 `"Surakarta"', add
label define id10a_dist_lbl 3373 `"Salatiga"', add
label define id10a_dist_lbl 3374 `"Semarang"', add
label define id10a_dist_lbl 3375 `"Pekalongan"', add
label define id10a_dist_lbl 3376 `"Tegal"', add
label define id10a_dist_lbl 3401 `"Kulon Progo"', add
label define id10a_dist_lbl 3402 `"Bantul"', add
label define id10a_dist_lbl 3403 `"Gunung Kidul"', add
label define id10a_dist_lbl 3404 `"Sleman"', add
label define id10a_dist_lbl 3471 `"Yogyakarta"', add
label define id10a_dist_lbl 3501 `"Pacitan"', add
label define id10a_dist_lbl 3502 `"Ponorogo"', add
label define id10a_dist_lbl 3503 `"Trenggalek"', add
label define id10a_dist_lbl 3504 `"Tulungagung"', add
label define id10a_dist_lbl 3505 `"Kab. Blitar"', add
label define id10a_dist_lbl 3506 `"Kab. Kediri"', add
label define id10a_dist_lbl 3507 `"Kab. Malang"', add
label define id10a_dist_lbl 3508 `"Lumajang"', add
label define id10a_dist_lbl 3509 `"Jember"', add
label define id10a_dist_lbl 3510 `"Banyuwangi"', add
label define id10a_dist_lbl 3511 `"Bondowoso"', add
label define id10a_dist_lbl 3512 `"Situbondo"', add
label define id10a_dist_lbl 3513 `"Kab. Probolinggo"', add
label define id10a_dist_lbl 3514 `"Kab. Pasuruan"', add
label define id10a_dist_lbl 3515 `"Sidoarjo"', add
label define id10a_dist_lbl 3516 `"Kab. Mojokerto"', add
label define id10a_dist_lbl 3517 `"Jombang"', add
label define id10a_dist_lbl 3518 `"Nganjuk"', add
label define id10a_dist_lbl 3519 `"Kab. Madiun"', add
label define id10a_dist_lbl 3520 `"Magetan"', add
label define id10a_dist_lbl 3521 `"Ngawi"', add
label define id10a_dist_lbl 3522 `"Bojonegoro"', add
label define id10a_dist_lbl 3523 `"Tuban"', add
label define id10a_dist_lbl 3524 `"Lamongan"', add
label define id10a_dist_lbl 3525 `"Gresik"', add
label define id10a_dist_lbl 3526 `"Bangkalan"', add
label define id10a_dist_lbl 3527 `"Sampang"', add
label define id10a_dist_lbl 3528 `"Pamekasan"', add
label define id10a_dist_lbl 3529 `"Sumenep"', add
label define id10a_dist_lbl 3571 `"Kota Kediri"', add
label define id10a_dist_lbl 3572 `"Kota Blitar"', add
label define id10a_dist_lbl 3573 `"Kota Malang"', add
label define id10a_dist_lbl 3574 `"Kota Probolinggo"', add
label define id10a_dist_lbl 3575 `"Kota Pasuruan"', add
label define id10a_dist_lbl 3576 `"Kota Mojokerto"', add
label define id10a_dist_lbl 3577 `"Kota Madiun"', add
label define id10a_dist_lbl 3578 `"Surabaya"', add
label define id10a_dist_lbl 3579 `"Batu"', add
label define id10a_dist_lbl 3601 `"Pandeglang"', add
label define id10a_dist_lbl 3602 `"Lebak"', add
label define id10a_dist_lbl 3603 `"Tangerang"', add
label define id10a_dist_lbl 3604 `"Serang"', add
label define id10a_dist_lbl 3671 `"Tangerang"', add
label define id10a_dist_lbl 3672 `"Cilegon"', add
label define id10a_dist_lbl 3673 `"Serang"', add
label define id10a_dist_lbl 3674 `"Kota Tangerang Selatan"', add
label define id10a_dist_lbl 5101 `"Jembrana"', add
label define id10a_dist_lbl 5102 `"Tabanan"', add
label define id10a_dist_lbl 5103 `"Badung"', add
label define id10a_dist_lbl 5104 `"Gianyar"', add
label define id10a_dist_lbl 5105 `"Klungkung"', add
label define id10a_dist_lbl 5106 `"Bangli"', add
label define id10a_dist_lbl 5107 `"Karangasem"', add
label define id10a_dist_lbl 5108 `"Buleleng"', add
label define id10a_dist_lbl 5171 `"Denpasar"', add
label define id10a_dist_lbl 5201 `"Lombok Barat"', add
label define id10a_dist_lbl 5202 `"Lombok Tengah"', add
label define id10a_dist_lbl 5203 `"Lombok Timur"', add
label define id10a_dist_lbl 5204 `"Sumbawa"', add
label define id10a_dist_lbl 5205 `"Dompu"', add
label define id10a_dist_lbl 5206 `"Bima"', add
label define id10a_dist_lbl 5207 `"Sumbawa Barat"', add
label define id10a_dist_lbl 5208 `"Lombok Utara"', add
label define id10a_dist_lbl 5271 `"Mataram"', add
label define id10a_dist_lbl 5272 `"Bima"', add
label define id10a_dist_lbl 5301 `"Sumba Barat"', add
label define id10a_dist_lbl 5302 `"Sumba Timur"', add
label define id10a_dist_lbl 5303 `"Kupang"', add
label define id10a_dist_lbl 5304 `"Timor Tengah Selatan"', add
label define id10a_dist_lbl 5305 `"Timor Tengah Utara"', add
label define id10a_dist_lbl 5306 `"Belu"', add
label define id10a_dist_lbl 5307 `"Alor"', add
label define id10a_dist_lbl 5308 `"Lembata"', add
label define id10a_dist_lbl 5309 `"Flores Timur"', add
label define id10a_dist_lbl 5310 `"Sikka"', add
label define id10a_dist_lbl 5311 `"Ende"', add
label define id10a_dist_lbl 5312 `"Ngada"', add
label define id10a_dist_lbl 5313 `"Manggarai"', add
label define id10a_dist_lbl 5314 `"Rote Ndao"', add
label define id10a_dist_lbl 5315 `"Manggarai Barat"', add
label define id10a_dist_lbl 5316 `"Sumba Tengah"', add
label define id10a_dist_lbl 5317 `"Sumba Barat Daya"', add
label define id10a_dist_lbl 5318 `"Nagekeo"', add
label define id10a_dist_lbl 5319 `"Manggarai Timur"', add
label define id10a_dist_lbl 5320 `"Sabu Raijua"', add
label define id10a_dist_lbl 5371 `"Kupang"', add
label define id10a_dist_lbl 6101 `"Sambas"', add
label define id10a_dist_lbl 6102 `"Bengkayang"', add
label define id10a_dist_lbl 6103 `"Landak"', add
label define id10a_dist_lbl 6104 `"Pontianak"', add
label define id10a_dist_lbl 6105 `"Sanggau"', add
label define id10a_dist_lbl 6106 `"Ketapang"', add
label define id10a_dist_lbl 6107 `"Sintang"', add
label define id10a_dist_lbl 6108 `"Kapuas Hulu"', add
label define id10a_dist_lbl 6109 `"Sekadau"', add
label define id10a_dist_lbl 6110 `"Melawai"', add
label define id10a_dist_lbl 6111 `"Kayong Utara"', add
label define id10a_dist_lbl 6112 `"Kubu Raya"', add
label define id10a_dist_lbl 6171 `"Pontianak"', add
label define id10a_dist_lbl 6172 `"Singkawang"', add
label define id10a_dist_lbl 6201 `"Kotawaringin Barat"', add
label define id10a_dist_lbl 6202 `"Kotawaringin Timur"', add
label define id10a_dist_lbl 6203 `"Kapuas"', add
label define id10a_dist_lbl 6204 `"Barito Selatan"', add
label define id10a_dist_lbl 6205 `"Barito Utara"', add
label define id10a_dist_lbl 6206 `"Sukamara"', add
label define id10a_dist_lbl 6207 `"Lamandau"', add
label define id10a_dist_lbl 6208 `"Seruyan"', add
label define id10a_dist_lbl 6209 `"Katingan"', add
label define id10a_dist_lbl 6210 `"Pulang Pisau"', add
label define id10a_dist_lbl 6211 `"Gunung Mas"', add
label define id10a_dist_lbl 6212 `"Barito Timur"', add
label define id10a_dist_lbl 6213 `"Murung Raya"', add
label define id10a_dist_lbl 6271 `"Palangka Raya"', add
label define id10a_dist_lbl 6301 `"Tanah Laut"', add
label define id10a_dist_lbl 6302 `"Kotabaru"', add
label define id10a_dist_lbl 6303 `"Banjar"', add
label define id10a_dist_lbl 6304 `"Barito Kuala"', add
label define id10a_dist_lbl 6305 `"Tapin"', add
label define id10a_dist_lbl 6306 `"Hulu Sungai Selatan"', add
label define id10a_dist_lbl 6307 `"Hulu Sungai Tengah"', add
label define id10a_dist_lbl 6308 `"Hulu Sungai Utara"', add
label define id10a_dist_lbl 6309 `"Tabalong"', add
label define id10a_dist_lbl 6310 `"Tanah Bumbu"', add
label define id10a_dist_lbl 6311 `"Balangan"', add
label define id10a_dist_lbl 6371 `"Banjarmasin"', add
label define id10a_dist_lbl 6372 `"Banjarbaru"', add
label define id10a_dist_lbl 6401 `"Pasir"', add
label define id10a_dist_lbl 6402 `"Kutai Barat"', add
label define id10a_dist_lbl 6403 `"Kutai Kartanegara"', add
label define id10a_dist_lbl 6404 `"Kutai Timur"', add
label define id10a_dist_lbl 6405 `"Berau"', add
label define id10a_dist_lbl 6406 `"Malinau"', add
label define id10a_dist_lbl 6407 `"Bulongan"', add
label define id10a_dist_lbl 6408 `"Nunukan"', add
label define id10a_dist_lbl 6409 `"Penajam Paser Utara"', add
label define id10a_dist_lbl 6471 `"Balikpapan"', add
label define id10a_dist_lbl 6472 `"Samarinda"', add
label define id10a_dist_lbl 6473 `"Tarakan and Tana Tidung"', add
label define id10a_dist_lbl 6474 `"Bontang"', add
label define id10a_dist_lbl 7101 `"Bolaang Mongondow"', add
label define id10a_dist_lbl 7102 `"Minahasa"', add
label define id10a_dist_lbl 7103 `"Kepulauan Sangihe"', add
label define id10a_dist_lbl 7104 `"Kepualuan Talaud"', add
label define id10a_dist_lbl 7105 `"Minahasa Selatan"', add
label define id10a_dist_lbl 7106 `"Minahasa Utara"', add
label define id10a_dist_lbl 7107 `"Bolaang Mongondow Utara"', add
label define id10a_dist_lbl 7108 `"Siau Tagulandang Biaro"', add
label define id10a_dist_lbl 7109 `"Minahasa Tenggara"', add
label define id10a_dist_lbl 7110 `"Bolaang Mongondow Selatan"', add
label define id10a_dist_lbl 7111 `"Bolaang Mongondow Timur"', add
label define id10a_dist_lbl 7171 `"Manado"', add
label define id10a_dist_lbl 7172 `"Bitung"', add
label define id10a_dist_lbl 7173 `"Tomohon"', add
label define id10a_dist_lbl 7174 `"Kotamobagu"', add
label define id10a_dist_lbl 7201 `"Banggai Kepulauan"', add
label define id10a_dist_lbl 7202 `"Banggai"', add
label define id10a_dist_lbl 7203 `"Morowali"', add
label define id10a_dist_lbl 7204 `"Poso"', add
label define id10a_dist_lbl 7205 `"Donggala"', add
label define id10a_dist_lbl 7206 `"Toli-Toli"', add
label define id10a_dist_lbl 7207 `"Buol"', add
label define id10a_dist_lbl 7208 `"Parigi Moutong"', add
label define id10a_dist_lbl 7209 `"Tojo Una-Una"', add
label define id10a_dist_lbl 7210 `"Sigi"', add
label define id10a_dist_lbl 7271 `"Palu"', add
label define id10a_dist_lbl 7301 `"Selayar"', add
label define id10a_dist_lbl 7302 `"Bulukumba"', add
label define id10a_dist_lbl 7303 `"Bantaeng"', add
label define id10a_dist_lbl 7304 `"Jeneponto"', add
label define id10a_dist_lbl 7305 `"Takalar"', add
label define id10a_dist_lbl 7306 `"Gowa"', add
label define id10a_dist_lbl 7307 `"Sinjai"', add
label define id10a_dist_lbl 7308 `"Maros"', add
label define id10a_dist_lbl 7309 `"Pangkajene Kepulauan"', add
label define id10a_dist_lbl 7310 `"Barru"', add
label define id10a_dist_lbl 7311 `"Bone"', add
label define id10a_dist_lbl 7312 `"Soppeng"', add
label define id10a_dist_lbl 7313 `"Wajo"', add
label define id10a_dist_lbl 7314 `"Sidenreng Rappang"', add
label define id10a_dist_lbl 7315 `"Pinrang"', add
label define id10a_dist_lbl 7316 `"Enrekang"', add
label define id10a_dist_lbl 7317 `"Luwu"', add
label define id10a_dist_lbl 7318 `"Tana Toraja"', add
label define id10a_dist_lbl 7322 `"Luwu Utara"', add
label define id10a_dist_lbl 7325 `"Luwu Timur"', add
label define id10a_dist_lbl 7326 `"Toraja Utara"', add
label define id10a_dist_lbl 7371 `"Ujung Pandang"', add
label define id10a_dist_lbl 7372 `"Pare-Pare"', add
label define id10a_dist_lbl 7373 `"Palopo"', add
label define id10a_dist_lbl 7401 `"Buton"', add
label define id10a_dist_lbl 7402 `"Muna"', add
label define id10a_dist_lbl 7403 `"Konawe"', add
label define id10a_dist_lbl 7404 `"Kolaka"', add
label define id10a_dist_lbl 7405 `"Konawe Selatan"', add
label define id10a_dist_lbl 7406 `"Bombana"', add
label define id10a_dist_lbl 7407 `"Wakatobi"', add
label define id10a_dist_lbl 7408 `"Kolaka Utara"', add
label define id10a_dist_lbl 7409 `"Buton Utara"', add
label define id10a_dist_lbl 7410 `"Konawe Utara"', add
label define id10a_dist_lbl 7471 `"Kendari"', add
label define id10a_dist_lbl 7472 `"Bau Bau"', add
label define id10a_dist_lbl 7501 `"Boalemo"', add
label define id10a_dist_lbl 7502 `"Gorontalo"', add
label define id10a_dist_lbl 7503 `"Pohuwato"', add
label define id10a_dist_lbl 7504 `"Bone Bolango"', add
label define id10a_dist_lbl 7505 `"Gorontalo Utara"', add
label define id10a_dist_lbl 7571 `"Kota Gorontalo"', add
label define id10a_dist_lbl 7601 `"Majene"', add
label define id10a_dist_lbl 7602 `"Polewali Mandar"', add
label define id10a_dist_lbl 7603 `"Mamasa"', add
label define id10a_dist_lbl 7604 `"Mamuju"', add
label define id10a_dist_lbl 7605 `"Mamuju Utara"', add
label define id10a_dist_lbl 8101 `"Maluku Tenggara Barat"', add
label define id10a_dist_lbl 8102 `"Maluku Tenggara"', add
label define id10a_dist_lbl 8103 `"Maluku Tengah"', add
label define id10a_dist_lbl 8104 `"Buru"', add
label define id10a_dist_lbl 8105 `"Kepulauan Aru"', add
label define id10a_dist_lbl 8106 `"Seram Bagian Barat"', add
label define id10a_dist_lbl 8107 `"Seram Bagian Timur"', add
label define id10a_dist_lbl 8108 `"Maluku Barat Daya"', add
label define id10a_dist_lbl 8109 `"Buru Selatan"', add
label define id10a_dist_lbl 8171 `"Ambon"', add
label define id10a_dist_lbl 8172 `"Tual"', add
label define id10a_dist_lbl 8201 `"Halmahera Barat"', add
label define id10a_dist_lbl 8202 `"Halmahera Tengah"', add
label define id10a_dist_lbl 8203 `"Kepulauan Sula"', add
label define id10a_dist_lbl 8204 `"Halmahera Selatan"', add
label define id10a_dist_lbl 8205 `"Halmahera Utara"', add
label define id10a_dist_lbl 8206 `"Halmahera Timur"', add
label define id10a_dist_lbl 8207 `"Pulau Morotai"', add
label define id10a_dist_lbl 8271 `"Ternate"', add
label define id10a_dist_lbl 8272 `"Tidore Kepulauan"', add
label define id10a_dist_lbl 9101 `"Merauke"', add
label define id10a_dist_lbl 9102 `"Jayawijaya"', add
label define id10a_dist_lbl 9103 `"Jayapura (regency)"', add
label define id10a_dist_lbl 9104 `"Nabire"', add
label define id10a_dist_lbl 9108 `"Yapen Waropen"', add
label define id10a_dist_lbl 9109 `"Biak Numfor"', add
label define id10a_dist_lbl 9110 `"Paniai"', add
label define id10a_dist_lbl 9111 `"Puncak Jaya"', add
label define id10a_dist_lbl 9112 `"Mimika"', add
label define id10a_dist_lbl 9113 `"Boven Digoel"', add
label define id10a_dist_lbl 9114 `"Mappi"', add
label define id10a_dist_lbl 9115 `"Asmat"', add
label define id10a_dist_lbl 9116 `"Yahukimo"', add
label define id10a_dist_lbl 9117 `"Pegunungan Bintang"', add
label define id10a_dist_lbl 9118 `"Tolikara"', add
label define id10a_dist_lbl 9119 `"Sarmi"', add
label define id10a_dist_lbl 9120 `"Keerom"', add
label define id10a_dist_lbl 9126 `"Waropen"', add
label define id10a_dist_lbl 9127 `"Supiori and Mamberamo Raya"', add
label define id10a_dist_lbl 9129 `"Nduga"', add
label define id10a_dist_lbl 9130 `"Lanny Jaya"', add
label define id10a_dist_lbl 9131 `"Mamberano Tengah"', add
label define id10a_dist_lbl 9132 `"Yalimo"', add
label define id10a_dist_lbl 9133 `"Puncak"', add
label define id10a_dist_lbl 9134 `"Dogiyai"', add
label define id10a_dist_lbl 9135 `"Intan Jaya"', add
label define id10a_dist_lbl 9136 `"Deiyai"', add
label define id10a_dist_lbl 9171 `"Jayapura (municipality)"', add
label define id10a_dist_lbl 9401 `"Fakfak"', add
label define id10a_dist_lbl 9402 `"Kaimana"', add
label define id10a_dist_lbl 9403 `"Teluk Wondama"', add
label define id10a_dist_lbl 9404 `"Teluk Bintuni"', add
label define id10a_dist_lbl 9405 `"Manokwari"', add
label define id10a_dist_lbl 9406 `"Sorong Selatan"', add
label define id10a_dist_lbl 9407 `"Sorong and Tambrauw"', add
label define id10a_dist_lbl 9408 `"Raja Ampat"', add
label define id10a_dist_lbl 9410 `"Maybrat"', add
label define id10a_dist_lbl 9471 `"Sorong"', add
label values id10a_dist id10a_dist_lbl

label define id10a_urban_lbl 1 `"Urban"'
label define id10a_urban_lbl 2 `"Rural"', add
label values id10a_urban id10a_urban_lbl

label define id10a_hhdeath_lbl 1 `"Yes"'
label define id10a_hhdeath_lbl 2 `"No"', add
label define id10a_hhdeath_lbl 9 `"NIU (not in universe)"', add
label values id10a_hhdeath id10a_hhdeath_lbl

label define id10a_deathtot_lbl 0 `"0"'
label define id10a_deathtot_lbl 1 `"1"', add
label define id10a_deathtot_lbl 2 `"2"', add
label define id10a_deathtot_lbl 3 `"3+"', add
label define id10a_deathtot_lbl 8 `"Unknown"', add
label define id10a_deathtot_lbl 9 `"NIU (not in universe)"', add
label values id10a_deathtot id10a_deathtot_lbl

label define id10a_floor_lbl 1 `"Ceramic tiles"'
label define id10a_floor_lbl 2 `"Tiles"', add
label define id10a_floor_lbl 3 `"Cement or brick"', add
label define id10a_floor_lbl 4 `"Wood or board"', add
label define id10a_floor_lbl 5 `"Bamboo"', add
label define id10a_floor_lbl 6 `"Dirt"', add
label define id10a_floor_lbl 7 `"Other"', add
label define id10a_floor_lbl 9 `"NIU (not in universe)"', add
label values id10a_floor id10a_floor_lbl

label define id10a_area_lbl 9998 `"Unknown"'
label define id10a_area_lbl 9999 `"NIU (not in universe)"', add
label values id10a_area id10a_area_lbl

label define id10a_light_lbl 1 `"Electricity, with meter"'
label define id10a_light_lbl 2 `"Electricity, without meter"', add
label define id10a_light_lbl 3 `"Electricity, not from State Electricity Company"', add
label define id10a_light_lbl 4 `"No electricity"', add
label define id10a_light_lbl 9 `"NIU (not in universe)"', add
label values id10a_light id10a_light_lbl

label define id10a_fuelcook_lbl 1 `"Electricity"'
label define id10a_fuelcook_lbl 2 `"Gas"', add
label define id10a_fuelcook_lbl 3 `"Kerosene"', add
label define id10a_fuelcook_lbl 4 `"Charcoal"', add
label define id10a_fuelcook_lbl 5 `"Wood"', add
label define id10a_fuelcook_lbl 6 `"Other"', add
label define id10a_fuelcook_lbl 7 `"None"', add
label define id10a_fuelcook_lbl 9 `"NIU (not in universe)"', add
label values id10a_fuelcook id10a_fuelcook_lbl

label define id10a_watdrink_lbl 01 `"Bottled water"'
label define id10a_watdrink_lbl 02 `"In-house piped water system"', add
label define id10a_watdrink_lbl 03 `"Piped water through retail"', add
label define id10a_watdrink_lbl 04 `"In-house pump"', add
label define id10a_watdrink_lbl 05 `"Covered well"', add
label define id10a_watdrink_lbl 06 `"Open uncovered well"', add
label define id10a_watdrink_lbl 07 `"Protected spring"', add
label define id10a_watdrink_lbl 08 `"Unprotected spring"', add
label define id10a_watdrink_lbl 09 `"River"', add
label define id10a_watdrink_lbl 10 `"Rain water"', add
label define id10a_watdrink_lbl 11 `"Other"', add
label define id10a_watdrink_lbl 99 `"NIU (not in universe)"', add
label values id10a_watdrink id10a_watdrink_lbl

label define id10a_toilet_lbl 1 `"Private toilet"'
label define id10a_toilet_lbl 2 `"Shared toilet"', add
label define id10a_toilet_lbl 3 `"Public toilet"', add
label define id10a_toilet_lbl 4 `"No toilet facility"', add
label define id10a_toilet_lbl 9 `"NIU (not in universe)"', add
label values id10a_toilet id10a_toilet_lbl

label define id10a_septic_lbl 1 `"With septic tank"'
label define id10a_septic_lbl 2 `"Without septic tank"', add
label define id10a_septic_lbl 3 `"No disposal facility"', add
label define id10a_septic_lbl 9 `"NIU (not in universe)"', add
label values id10a_septic id10a_septic_lbl

label define id10a_phone_lbl 1 `"Landline phone"'
label define id10a_phone_lbl 2 `"Cellular phone"', add
label define id10a_phone_lbl 3 `"Both landline and cellular phone"', add
label define id10a_phone_lbl 4 `"No telephone"', add
label define id10a_phone_lbl 9 `"NIU (not in universe)"', add
label values id10a_phone id10a_phone_lbl

label define id10a_internet_lbl 1 `"Yes"'
label define id10a_internet_lbl 2 `"No"', add
label define id10a_internet_lbl 9 `"NIU (not in universe)"', add
label values id10a_internet id10a_internet_lbl

label define id10a_tenure_lbl 1 `"Owned"'
label define id10a_tenure_lbl 2 `"Rented"', add
label define id10a_tenure_lbl 3 `"Leased"', add
label define id10a_tenure_lbl 4 `"Other"', add
label define id10a_tenure_lbl 9 `"NIU (not in universe)"', add
label values id10a_tenure id10a_tenure_lbl

label define id10a_ownrshp_lbl 1 `"Yes"'
label define id10a_ownrshp_lbl 2 `"No"', add
label define id10a_ownrshp_lbl 9 `"NIU (not in universe)"', add
label values id10a_ownrshp id10a_ownrshp_lbl

label define id10a_ownproof_lbl 1 `"Ownership certificate (SHM) belonging to household member"'
label define id10a_ownproof_lbl 2 `"Ownership certificate (SHM) not belonging to household member"', add
label define id10a_ownproof_lbl 3 `"Other certificate (SHGB, SHP, SSRS)"', add
label define id10a_ownproof_lbl 4 `"Others (Girik, Akte Jual Beli Notaris/PPAT, etc.)"', add
label define id10a_ownproof_lbl 9 `"NIU (not in universe)"', add
label values id10a_ownproof id10a_ownproof_lbl

label define id10a_doctype_lbl 1 `"C1 (Households in <regular> enumeration areas)"'
label define id10a_doctype_lbl 2 `"C2 General (Special/remote islands, people living in boats, etc.)"', add
label define id10a_doctype_lbl 3 `"C2 Apartment (Special, remote or difficult to access apartments)"', add
label define id10a_doctype_lbl 4 `"L2 (Non-permanent residences including homeless, ship crews, etc.)"', add
label define id10a_doctype_lbl 5 `"Other non-household dwellings"', add
label define id10a_doctype_lbl 6 `"C2 Diplomat"', add
label values id10a_doctype id10a_doctype_lbl

label define id10a_pernum_lbl 00 `"Household record"'
label define id10a_pernum_lbl 01 `"1"', add
label define id10a_pernum_lbl 02 `"2"', add
label define id10a_pernum_lbl 03 `"3"', add
label define id10a_pernum_lbl 04 `"4"', add
label define id10a_pernum_lbl 05 `"5"', add
label define id10a_pernum_lbl 06 `"6"', add
label define id10a_pernum_lbl 07 `"7"', add
label define id10a_pernum_lbl 08 `"8"', add
label define id10a_pernum_lbl 09 `"9"', add
label define id10a_pernum_lbl 10 `"10"', add
label define id10a_pernum_lbl 11 `"11"', add
label define id10a_pernum_lbl 12 `"12"', add
label define id10a_pernum_lbl 13 `"13"', add
label define id10a_pernum_lbl 14 `"14"', add
label define id10a_pernum_lbl 15 `"15"', add
label define id10a_pernum_lbl 16 `"16"', add
label define id10a_pernum_lbl 17 `"17"', add
label define id10a_pernum_lbl 18 `"18"', add
label define id10a_pernum_lbl 19 `"19"', add
label define id10a_pernum_lbl 20 `"20"', add
label define id10a_pernum_lbl 21 `"21"', add
label define id10a_pernum_lbl 22 `"22"', add
label define id10a_pernum_lbl 23 `"23"', add
label define id10a_pernum_lbl 24 `"24"', add
label define id10a_pernum_lbl 25 `"25"', add
label define id10a_pernum_lbl 26 `"26"', add
label define id10a_pernum_lbl 27 `"27"', add
label define id10a_pernum_lbl 28 `"28"', add
label define id10a_pernum_lbl 29 `"29"', add
label define id10a_pernum_lbl 30 `"30"', add
label values id10a_pernum id10a_pernum_lbl

label define id10a_relate_lbl 01 `"Head"'
label define id10a_relate_lbl 02 `"Spouse"', add
label define id10a_relate_lbl 03 `"Own child"', add
label define id10a_relate_lbl 04 `"Adopted/step child"', add
label define id10a_relate_lbl 05 `"Son/daughter-in-law"', add
label define id10a_relate_lbl 06 `"Grandchild"', add
label define id10a_relate_lbl 07 `"Parent/parent-in-law"', add
label define id10a_relate_lbl 08 `"Other relative"', add
label define id10a_relate_lbl 09 `"Household worker/maid"', add
label define id10a_relate_lbl 10 `"Other non-relative"', add
label define id10a_relate_lbl 99 `"Homeless, refugees, other non-household members"', add
label values id10a_relate id10a_relate_lbl

label define id10a_sex_lbl 1 `"Male"'
label define id10a_sex_lbl 2 `"Female"', add
label values id10a_sex id10a_sex_lbl

label define id10a_birthmo_lbl 01 `"January"'
label define id10a_birthmo_lbl 02 `"February"', add
label define id10a_birthmo_lbl 03 `"March"', add
label define id10a_birthmo_lbl 04 `"April"', add
label define id10a_birthmo_lbl 05 `"May"', add
label define id10a_birthmo_lbl 06 `"June"', add
label define id10a_birthmo_lbl 07 `"July"', add
label define id10a_birthmo_lbl 08 `"August"', add
label define id10a_birthmo_lbl 09 `"September"', add
label define id10a_birthmo_lbl 10 `"October"', add
label define id10a_birthmo_lbl 11 `"November"', add
label define id10a_birthmo_lbl 12 `"December"', add
label define id10a_birthmo_lbl 99 `"NIU (not in universe)"', add
label values id10a_birthmo id10a_birthmo_lbl

label define id10a_birthyr_lbl 1912 `"1912 or before"'
label define id10a_birthyr_lbl 1913 `"1913"', add
label define id10a_birthyr_lbl 1914 `"1914"', add
label define id10a_birthyr_lbl 1915 `"1915"', add
label define id10a_birthyr_lbl 1916 `"1916"', add
label define id10a_birthyr_lbl 1917 `"1917"', add
label define id10a_birthyr_lbl 1918 `"1918"', add
label define id10a_birthyr_lbl 1919 `"1919"', add
label define id10a_birthyr_lbl 1920 `"1920"', add
label define id10a_birthyr_lbl 1921 `"1921"', add
label define id10a_birthyr_lbl 1922 `"1922"', add
label define id10a_birthyr_lbl 1923 `"1923"', add
label define id10a_birthyr_lbl 1924 `"1924"', add
label define id10a_birthyr_lbl 1925 `"1925"', add
label define id10a_birthyr_lbl 1926 `"1926"', add
label define id10a_birthyr_lbl 1927 `"1927"', add
label define id10a_birthyr_lbl 1928 `"1928"', add
label define id10a_birthyr_lbl 1929 `"1929"', add
label define id10a_birthyr_lbl 1930 `"1930"', add
label define id10a_birthyr_lbl 1931 `"1931"', add
label define id10a_birthyr_lbl 1932 `"1932"', add
label define id10a_birthyr_lbl 1933 `"1933"', add
label define id10a_birthyr_lbl 1934 `"1934"', add
label define id10a_birthyr_lbl 1935 `"1935"', add
label define id10a_birthyr_lbl 1936 `"1936"', add
label define id10a_birthyr_lbl 1937 `"1937"', add
label define id10a_birthyr_lbl 1938 `"1938"', add
label define id10a_birthyr_lbl 1939 `"1939"', add
label define id10a_birthyr_lbl 1940 `"1940"', add
label define id10a_birthyr_lbl 1941 `"1941"', add
label define id10a_birthyr_lbl 1942 `"1942"', add
label define id10a_birthyr_lbl 1943 `"1943"', add
label define id10a_birthyr_lbl 1944 `"1944"', add
label define id10a_birthyr_lbl 1945 `"1945"', add
label define id10a_birthyr_lbl 1946 `"1946"', add
label define id10a_birthyr_lbl 1947 `"1947"', add
label define id10a_birthyr_lbl 1948 `"1948"', add
label define id10a_birthyr_lbl 1949 `"1949"', add
label define id10a_birthyr_lbl 1950 `"1950"', add
label define id10a_birthyr_lbl 1951 `"1951"', add
label define id10a_birthyr_lbl 1952 `"1952"', add
label define id10a_birthyr_lbl 1953 `"1953"', add
label define id10a_birthyr_lbl 1954 `"1954"', add
label define id10a_birthyr_lbl 1955 `"1955"', add
label define id10a_birthyr_lbl 1956 `"1956"', add
label define id10a_birthyr_lbl 1957 `"1957"', add
label define id10a_birthyr_lbl 1958 `"1958"', add
label define id10a_birthyr_lbl 1959 `"1959"', add
label define id10a_birthyr_lbl 1960 `"1960"', add
label define id10a_birthyr_lbl 1961 `"1961"', add
label define id10a_birthyr_lbl 1962 `"1962"', add
label define id10a_birthyr_lbl 1963 `"1963"', add
label define id10a_birthyr_lbl 1964 `"1964"', add
label define id10a_birthyr_lbl 1965 `"1965"', add
label define id10a_birthyr_lbl 1966 `"1966"', add
label define id10a_birthyr_lbl 1967 `"1967"', add
label define id10a_birthyr_lbl 1968 `"1968"', add
label define id10a_birthyr_lbl 1969 `"1969"', add
label define id10a_birthyr_lbl 1970 `"1970"', add
label define id10a_birthyr_lbl 1971 `"1971"', add
label define id10a_birthyr_lbl 1972 `"1972"', add
label define id10a_birthyr_lbl 1973 `"1973"', add
label define id10a_birthyr_lbl 1974 `"1974"', add
label define id10a_birthyr_lbl 1975 `"1975"', add
label define id10a_birthyr_lbl 1976 `"1976"', add
label define id10a_birthyr_lbl 1977 `"1977"', add
label define id10a_birthyr_lbl 1978 `"1978"', add
label define id10a_birthyr_lbl 1979 `"1979"', add
label define id10a_birthyr_lbl 1980 `"1980"', add
label define id10a_birthyr_lbl 1981 `"1981"', add
label define id10a_birthyr_lbl 1982 `"1982"', add
label define id10a_birthyr_lbl 1983 `"1983"', add
label define id10a_birthyr_lbl 1984 `"1984"', add
label define id10a_birthyr_lbl 1985 `"1985"', add
label define id10a_birthyr_lbl 1986 `"1986"', add
label define id10a_birthyr_lbl 1987 `"1987"', add
label define id10a_birthyr_lbl 1988 `"1988"', add
label define id10a_birthyr_lbl 1989 `"1989"', add
label define id10a_birthyr_lbl 1990 `"1990"', add
label define id10a_birthyr_lbl 1991 `"1991"', add
label define id10a_birthyr_lbl 1992 `"1992"', add
label define id10a_birthyr_lbl 1993 `"1993"', add
label define id10a_birthyr_lbl 1994 `"1994"', add
label define id10a_birthyr_lbl 1995 `"1995"', add
label define id10a_birthyr_lbl 1996 `"1996"', add
label define id10a_birthyr_lbl 1997 `"1997"', add
label define id10a_birthyr_lbl 1998 `"1998"', add
label define id10a_birthyr_lbl 1999 `"1999"', add
label define id10a_birthyr_lbl 2000 `"2000"', add
label define id10a_birthyr_lbl 2001 `"2001"', add
label define id10a_birthyr_lbl 2002 `"2002"', add
label define id10a_birthyr_lbl 2003 `"2003"', add
label define id10a_birthyr_lbl 2004 `"2004"', add
label define id10a_birthyr_lbl 2005 `"2005"', add
label define id10a_birthyr_lbl 2006 `"2006"', add
label define id10a_birthyr_lbl 2007 `"2007"', add
label define id10a_birthyr_lbl 2008 `"2008"', add
label define id10a_birthyr_lbl 2009 `"2009"', add
label define id10a_birthyr_lbl 2010 `"2010"', add
label values id10a_birthyr id10a_birthyr_lbl

label define id10a_age_lbl 00 `"0"'
label define id10a_age_lbl 01 `"1"', add
label define id10a_age_lbl 02 `"2"', add
label define id10a_age_lbl 03 `"3"', add
label define id10a_age_lbl 04 `"4"', add
label define id10a_age_lbl 05 `"5"', add
label define id10a_age_lbl 06 `"6"', add
label define id10a_age_lbl 07 `"7"', add
label define id10a_age_lbl 08 `"8"', add
label define id10a_age_lbl 09 `"9"', add
label define id10a_age_lbl 10 `"10"', add
label define id10a_age_lbl 11 `"11"', add
label define id10a_age_lbl 12 `"12"', add
label define id10a_age_lbl 13 `"13"', add
label define id10a_age_lbl 14 `"14"', add
label define id10a_age_lbl 15 `"15"', add
label define id10a_age_lbl 16 `"16"', add
label define id10a_age_lbl 17 `"17"', add
label define id10a_age_lbl 18 `"18"', add
label define id10a_age_lbl 19 `"19"', add
label define id10a_age_lbl 20 `"20"', add
label define id10a_age_lbl 21 `"21"', add
label define id10a_age_lbl 22 `"22"', add
label define id10a_age_lbl 23 `"23"', add
label define id10a_age_lbl 24 `"24"', add
label define id10a_age_lbl 25 `"25"', add
label define id10a_age_lbl 26 `"26"', add
label define id10a_age_lbl 27 `"27"', add
label define id10a_age_lbl 28 `"28"', add
label define id10a_age_lbl 29 `"29"', add
label define id10a_age_lbl 30 `"30"', add
label define id10a_age_lbl 31 `"31"', add
label define id10a_age_lbl 32 `"32"', add
label define id10a_age_lbl 33 `"33"', add
label define id10a_age_lbl 34 `"34"', add
label define id10a_age_lbl 35 `"35"', add
label define id10a_age_lbl 36 `"36"', add
label define id10a_age_lbl 37 `"37"', add
label define id10a_age_lbl 38 `"38"', add
label define id10a_age_lbl 39 `"39"', add
label define id10a_age_lbl 40 `"40"', add
label define id10a_age_lbl 41 `"41"', add
label define id10a_age_lbl 42 `"42"', add
label define id10a_age_lbl 43 `"43"', add
label define id10a_age_lbl 44 `"44"', add
label define id10a_age_lbl 45 `"45"', add
label define id10a_age_lbl 46 `"46"', add
label define id10a_age_lbl 47 `"47"', add
label define id10a_age_lbl 48 `"48"', add
label define id10a_age_lbl 49 `"49"', add
label define id10a_age_lbl 50 `"50"', add
label define id10a_age_lbl 51 `"51"', add
label define id10a_age_lbl 52 `"52"', add
label define id10a_age_lbl 53 `"53"', add
label define id10a_age_lbl 54 `"54"', add
label define id10a_age_lbl 55 `"55"', add
label define id10a_age_lbl 56 `"56"', add
label define id10a_age_lbl 57 `"57"', add
label define id10a_age_lbl 58 `"58"', add
label define id10a_age_lbl 59 `"59"', add
label define id10a_age_lbl 60 `"60"', add
label define id10a_age_lbl 61 `"61"', add
label define id10a_age_lbl 62 `"62"', add
label define id10a_age_lbl 63 `"63"', add
label define id10a_age_lbl 64 `"64"', add
label define id10a_age_lbl 65 `"65"', add
label define id10a_age_lbl 66 `"66"', add
label define id10a_age_lbl 67 `"67"', add
label define id10a_age_lbl 68 `"68"', add
label define id10a_age_lbl 69 `"69"', add
label define id10a_age_lbl 70 `"70"', add
label define id10a_age_lbl 71 `"71"', add
label define id10a_age_lbl 72 `"72"', add
label define id10a_age_lbl 73 `"73"', add
label define id10a_age_lbl 74 `"74"', add
label define id10a_age_lbl 75 `"75"', add
label define id10a_age_lbl 76 `"76"', add
label define id10a_age_lbl 77 `"77"', add
label define id10a_age_lbl 78 `"78"', add
label define id10a_age_lbl 79 `"79"', add
label define id10a_age_lbl 80 `"80"', add
label define id10a_age_lbl 81 `"81"', add
label define id10a_age_lbl 82 `"82"', add
label define id10a_age_lbl 83 `"83"', add
label define id10a_age_lbl 84 `"84"', add
label define id10a_age_lbl 85 `"85"', add
label define id10a_age_lbl 86 `"86"', add
label define id10a_age_lbl 87 `"87"', add
label define id10a_age_lbl 88 `"88"', add
label define id10a_age_lbl 89 `"89"', add
label define id10a_age_lbl 90 `"90"', add
label define id10a_age_lbl 91 `"91"', add
label define id10a_age_lbl 92 `"92"', add
label define id10a_age_lbl 93 `"93"', add
label define id10a_age_lbl 94 `"94"', add
label define id10a_age_lbl 95 `"95"', add
label define id10a_age_lbl 96 `"96"', add
label define id10a_age_lbl 97 `"97"', add
label define id10a_age_lbl 98 `"98+"', add
label values id10a_age id10a_age_lbl

label define id10a_bthprov_lbl 11 `"Nanggroe Aceh Darussalam"'
label define id10a_bthprov_lbl 12 `"Sumatera Utara"', add
label define id10a_bthprov_lbl 13 `"Sumatera Barat"', add
label define id10a_bthprov_lbl 14 `"Riau"', add
label define id10a_bthprov_lbl 15 `"Jambi"', add
label define id10a_bthprov_lbl 16 `"Sumatera Selatan"', add
label define id10a_bthprov_lbl 17 `"Bengkulu"', add
label define id10a_bthprov_lbl 18 `"Lampung"', add
label define id10a_bthprov_lbl 19 `"Bangka Belitung"', add
label define id10a_bthprov_lbl 21 `"Kepulauan Riau"', add
label define id10a_bthprov_lbl 31 `"DKI Jakarta"', add
label define id10a_bthprov_lbl 32 `"Jawa Barat"', add
label define id10a_bthprov_lbl 33 `"Jawa Tengah"', add
label define id10a_bthprov_lbl 34 `"DI Yogyakarta"', add
label define id10a_bthprov_lbl 35 `"Jawa Timur"', add
label define id10a_bthprov_lbl 36 `"Banten"', add
label define id10a_bthprov_lbl 51 `"Bali"', add
label define id10a_bthprov_lbl 52 `"Nusa Tenggara Barat"', add
label define id10a_bthprov_lbl 53 `"Nusa Tenggara Timur"', add
label define id10a_bthprov_lbl 61 `"Kalimantan Barat"', add
label define id10a_bthprov_lbl 62 `"Kalimantan Tengah"', add
label define id10a_bthprov_lbl 63 `"Kalimantan Selatan"', add
label define id10a_bthprov_lbl 64 `"Kalimantan Timur"', add
label define id10a_bthprov_lbl 71 `"Sulawesi Utara"', add
label define id10a_bthprov_lbl 72 `"Sulawesi Tengah"', add
label define id10a_bthprov_lbl 73 `"Sulawesi Selatan"', add
label define id10a_bthprov_lbl 74 `"Sulawesi Tenggara"', add
label define id10a_bthprov_lbl 75 `"Gorontalo"', add
label define id10a_bthprov_lbl 76 `"Sulawesi Barat"', add
label define id10a_bthprov_lbl 81 `"Maluku"', add
label define id10a_bthprov_lbl 82 `"Maluku Utara"', add
label define id10a_bthprov_lbl 91 `"Papua Barat"', add
label define id10a_bthprov_lbl 94 `"Papua"', add
label define id10a_bthprov_lbl 98 `"Abroad"', add
label define id10a_bthprov_lbl 99 `"Unknown"', add
label values id10a_bthprov id10a_bthprov_lbl

label define id10a_bthdist_lbl 1101 `"Simeuleu"'
label define id10a_bthdist_lbl 1102 `"Aceh Singkil"', add
label define id10a_bthdist_lbl 1103 `"Aceh Selatan"', add
label define id10a_bthdist_lbl 1104 `"Aceh Tenggara"', add
label define id10a_bthdist_lbl 1105 `"Aceh Timur"', add
label define id10a_bthdist_lbl 1106 `"Aceh Tengah"', add
label define id10a_bthdist_lbl 1107 `"Aceh Barat"', add
label define id10a_bthdist_lbl 1108 `"Aceh Besar"', add
label define id10a_bthdist_lbl 1109 `"Pidie"', add
label define id10a_bthdist_lbl 1110 `"Bireun"', add
label define id10a_bthdist_lbl 1111 `"Aceh Utara"', add
label define id10a_bthdist_lbl 1112 `"Aceh Barat Daya"', add
label define id10a_bthdist_lbl 1113 `"Gayo Lues"', add
label define id10a_bthdist_lbl 1114 `"Aceh Tamiang"', add
label define id10a_bthdist_lbl 1115 `"Nagan Raya"', add
label define id10a_bthdist_lbl 1116 `"Aceh Jaya"', add
label define id10a_bthdist_lbl 1117 `"Bener Meriah"', add
label define id10a_bthdist_lbl 1118 `"Pidie Jaya"', add
label define id10a_bthdist_lbl 1171 `"Banda Aceh"', add
label define id10a_bthdist_lbl 1172 `"Sabang"', add
label define id10a_bthdist_lbl 1173 `"Langsa"', add
label define id10a_bthdist_lbl 1174 `"Lhokseumawe"', add
label define id10a_bthdist_lbl 1175 `"Subulussalam"', add
label define id10a_bthdist_lbl 1201 `"Nias"', add
label define id10a_bthdist_lbl 1202 `"Mandailing Natal"', add
label define id10a_bthdist_lbl 1203 `"Tapanuli Selatan"', add
label define id10a_bthdist_lbl 1204 `"Tapanuli Tengah"', add
label define id10a_bthdist_lbl 1205 `"Tapanuli Utara"', add
label define id10a_bthdist_lbl 1206 `"Toba Samosir"', add
label define id10a_bthdist_lbl 1207 `"Labuhan Batu"', add
label define id10a_bthdist_lbl 1208 `"Asahan"', add
label define id10a_bthdist_lbl 1209 `"Simalungun"', add
label define id10a_bthdist_lbl 1210 `"Dairi"', add
label define id10a_bthdist_lbl 1211 `"Karo"', add
label define id10a_bthdist_lbl 1212 `"Deli Serdang"', add
label define id10a_bthdist_lbl 1213 `"Langkat"', add
label define id10a_bthdist_lbl 1214 `"Nias Selatan"', add
label define id10a_bthdist_lbl 1215 `"Humbang Hasundutan"', add
label define id10a_bthdist_lbl 1216 `"Pakpak Bharat"', add
label define id10a_bthdist_lbl 1217 `"Samosir"', add
label define id10a_bthdist_lbl 1218 `"Serdang Bedagai"', add
label define id10a_bthdist_lbl 1219 `"Batu Bara"', add
label define id10a_bthdist_lbl 1220 `"Padang Lawas Utara"', add
label define id10a_bthdist_lbl 1221 `"Padang Lawas"', add
label define id10a_bthdist_lbl 1222 `"Labuhan Batu Selatan"', add
label define id10a_bthdist_lbl 1223 `"Labuhan Batu Utara"', add
label define id10a_bthdist_lbl 1224 `"Nias Utara"', add
label define id10a_bthdist_lbl 1225 `"Nias Barat"', add
label define id10a_bthdist_lbl 1271 `"Sibolga"', add
label define id10a_bthdist_lbl 1272 `"Tanjung Balai"', add
label define id10a_bthdist_lbl 1273 `"Pematang Siantar"', add
label define id10a_bthdist_lbl 1274 `"Tebing Tinggi"', add
label define id10a_bthdist_lbl 1275 `"Medan"', add
label define id10a_bthdist_lbl 1276 `"Binjai"', add
label define id10a_bthdist_lbl 1277 `"Padangsidimpuan"', add
label define id10a_bthdist_lbl 1278 `"Kota Gunungsitoli"', add
label define id10a_bthdist_lbl 1301 `"Kepulauan Mentawai"', add
label define id10a_bthdist_lbl 1302 `"Pesisir Selatan"', add
label define id10a_bthdist_lbl 1303 `"Solok"', add
label define id10a_bthdist_lbl 1304 `"Sawahlunto/Sijunjung"', add
label define id10a_bthdist_lbl 1305 `"Tanah Datar"', add
label define id10a_bthdist_lbl 1306 `"Padang Pariaman"', add
label define id10a_bthdist_lbl 1307 `"Agam"', add
label define id10a_bthdist_lbl 1308 `"Lima Puluh Koto"', add
label define id10a_bthdist_lbl 1309 `"Pasaman"', add
label define id10a_bthdist_lbl 1310 `"Solok Selatan"', add
label define id10a_bthdist_lbl 1311 `"Dharmasraya"', add
label define id10a_bthdist_lbl 1312 `"Pasaman Barat"', add
label define id10a_bthdist_lbl 1371 `"Kota Padang"', add
label define id10a_bthdist_lbl 1372 `"Kota Solok"', add
label define id10a_bthdist_lbl 1373 `"Kota Sawah Lunto"', add
label define id10a_bthdist_lbl 1374 `"Kota Padang Panjang"', add
label define id10a_bthdist_lbl 1375 `"Kota Bukittinggi"', add
label define id10a_bthdist_lbl 1376 `"Kota Payakumbuh"', add
label define id10a_bthdist_lbl 1377 `"Kota Pariaman"', add
label define id10a_bthdist_lbl 1401 `"Kuantan Singingi"', add
label define id10a_bthdist_lbl 1402 `"Indragiri Hulu"', add
label define id10a_bthdist_lbl 1403 `"Indragiri Hilir"', add
label define id10a_bthdist_lbl 1404 `"Pelalawan"', add
label define id10a_bthdist_lbl 1405 `"Siak"', add
label define id10a_bthdist_lbl 1406 `"Kampar"', add
label define id10a_bthdist_lbl 1407 `"Rokan Hulu"', add
label define id10a_bthdist_lbl 1408 `"Bengkalis"', add
label define id10a_bthdist_lbl 1409 `"Rokan Hilir"', add
label define id10a_bthdist_lbl 1410 `"Kepulauan Meranti"', add
label define id10a_bthdist_lbl 1471 `"Pekan Baru"', add
label define id10a_bthdist_lbl 1473 `"Dumai"', add
label define id10a_bthdist_lbl 1501 `"Kerinci"', add
label define id10a_bthdist_lbl 1502 `"Merangin"', add
label define id10a_bthdist_lbl 1503 `"Sarolangun"', add
label define id10a_bthdist_lbl 1504 `"Batang Hari"', add
label define id10a_bthdist_lbl 1505 `"Muaro Jambi"', add
label define id10a_bthdist_lbl 1506 `"Tanjung Jabung Timur"', add
label define id10a_bthdist_lbl 1507 `"Tanjung Jabung Barat"', add
label define id10a_bthdist_lbl 1508 `"Tebo"', add
label define id10a_bthdist_lbl 1509 `"Bungo"', add
label define id10a_bthdist_lbl 1571 `"Jambi"', add
label define id10a_bthdist_lbl 1572 `"Kota Sungai Penuh"', add
label define id10a_bthdist_lbl 1601 `"Ogan Komering Ulu"', add
label define id10a_bthdist_lbl 1602 `"Ogan Komering Ilir"', add
label define id10a_bthdist_lbl 1603 `"Muara Enim"', add
label define id10a_bthdist_lbl 1604 `"Lahat"', add
label define id10a_bthdist_lbl 1605 `"Musi Rawas"', add
label define id10a_bthdist_lbl 1606 `"Musi Banyuasin"', add
label define id10a_bthdist_lbl 1607 `"Banyu Asin"', add
label define id10a_bthdist_lbl 1608 `"Ogan Komering Ulu Selatan"', add
label define id10a_bthdist_lbl 1609 `"Ogan Komering Ulu Timur"', add
label define id10a_bthdist_lbl 1610 `"Ogan Ilir"', add
label define id10a_bthdist_lbl 1611 `"Empat Lawang"', add
label define id10a_bthdist_lbl 1671 `"Palembang"', add
label define id10a_bthdist_lbl 1672 `"Prabumulih"', add
label define id10a_bthdist_lbl 1673 `"Pagar Alam"', add
label define id10a_bthdist_lbl 1674 `"Lubuklinggau"', add
label define id10a_bthdist_lbl 1701 `"Bengkulu Selatan"', add
label define id10a_bthdist_lbl 1702 `"Rejang Lebong"', add
label define id10a_bthdist_lbl 1703 `"Bengkulu Utara"', add
label define id10a_bthdist_lbl 1704 `"Kaur"', add
label define id10a_bthdist_lbl 1705 `"Seluma"', add
label define id10a_bthdist_lbl 1706 `"Mukomuko"', add
label define id10a_bthdist_lbl 1707 `"Lebong"', add
label define id10a_bthdist_lbl 1708 `"Kepahiang"', add
label define id10a_bthdist_lbl 1709 `"Bengkulu Tengah"', add
label define id10a_bthdist_lbl 1771 `"Bengkulu"', add
label define id10a_bthdist_lbl 1801 `"Lampung Barat"', add
label define id10a_bthdist_lbl 1802 `"Tanggamus"', add
label define id10a_bthdist_lbl 1803 `"Lampung Selatan"', add
label define id10a_bthdist_lbl 1804 `"Lampung Timur"', add
label define id10a_bthdist_lbl 1805 `"Lampung Tengah"', add
label define id10a_bthdist_lbl 1806 `"Lampung Utara"', add
label define id10a_bthdist_lbl 1807 `"Way Kanan"', add
label define id10a_bthdist_lbl 1808 `"Tulangbawang"', add
label define id10a_bthdist_lbl 1809 `"Pesawaran"', add
label define id10a_bthdist_lbl 1810 `"Pringsewu"', add
label define id10a_bthdist_lbl 1811 `"Mesuji"', add
label define id10a_bthdist_lbl 1812 `"Tulangbawang Barat"', add
label define id10a_bthdist_lbl 1871 `"Bandar Lampung"', add
label define id10a_bthdist_lbl 1872 `"Metro"', add
label define id10a_bthdist_lbl 1901 `"Bangka"', add
label define id10a_bthdist_lbl 1902 `"Belitung"', add
label define id10a_bthdist_lbl 1903 `"Bangka Barat"', add
label define id10a_bthdist_lbl 1904 `"Bangka Tengah"', add
label define id10a_bthdist_lbl 1905 `"Bangka Selatan"', add
label define id10a_bthdist_lbl 1906 `"Belitung Timur"', add
label define id10a_bthdist_lbl 1971 `"Pangkal Pinang"', add
label define id10a_bthdist_lbl 2101 `"Karimun"', add
label define id10a_bthdist_lbl 2102 `"Bintan"', add
label define id10a_bthdist_lbl 2103 `"Natuna"', add
label define id10a_bthdist_lbl 2104 `"Lingga"', add
label define id10a_bthdist_lbl 2105 `"Kepulauan Anambas"', add
label define id10a_bthdist_lbl 2171 `"Batam"', add
label define id10a_bthdist_lbl 2172 `"Tanjung Pinang"', add
label define id10a_bthdist_lbl 3101 `"Kepulauan Seribu"', add
label define id10a_bthdist_lbl 3171 `"Jakarta Selatan"', add
label define id10a_bthdist_lbl 3172 `"Jakarta Timur"', add
label define id10a_bthdist_lbl 3173 `"Jakarta Pusat"', add
label define id10a_bthdist_lbl 3174 `"Jakarta Barat"', add
label define id10a_bthdist_lbl 3175 `"Jakarta Utara"', add
label define id10a_bthdist_lbl 3201 `"Bogor"', add
label define id10a_bthdist_lbl 3202 `"Sukabumi"', add
label define id10a_bthdist_lbl 3203 `"Cianjur"', add
label define id10a_bthdist_lbl 3204 `"Bandung"', add
label define id10a_bthdist_lbl 3205 `"Garut"', add
label define id10a_bthdist_lbl 3206 `"Tasikmalaya"', add
label define id10a_bthdist_lbl 3207 `"Ciamis"', add
label define id10a_bthdist_lbl 3208 `"Kuningan"', add
label define id10a_bthdist_lbl 3209 `"Cirebon"', add
label define id10a_bthdist_lbl 3210 `"Majalengka"', add
label define id10a_bthdist_lbl 3211 `"Sumedang"', add
label define id10a_bthdist_lbl 3212 `"Indramayu"', add
label define id10a_bthdist_lbl 3213 `"Subang"', add
label define id10a_bthdist_lbl 3214 `"Purwakarta"', add
label define id10a_bthdist_lbl 3215 `"Karawang"', add
label define id10a_bthdist_lbl 3216 `"Bekasi"', add
label define id10a_bthdist_lbl 3217 `"Bandung Barat"', add
label define id10a_bthdist_lbl 3271 `"Bogor"', add
label define id10a_bthdist_lbl 3272 `"Sukabumi"', add
label define id10a_bthdist_lbl 3273 `"Bandung"', add
label define id10a_bthdist_lbl 3274 `"Cirebon"', add
label define id10a_bthdist_lbl 3275 `"Bekasi"', add
label define id10a_bthdist_lbl 3276 `"Depok"', add
label define id10a_bthdist_lbl 3277 `"Cimahi"', add
label define id10a_bthdist_lbl 3278 `"Tasikmalaya"', add
label define id10a_bthdist_lbl 3279 `"Banjar"', add
label define id10a_bthdist_lbl 3301 `"Cilacap"', add
label define id10a_bthdist_lbl 3302 `"Banyumas"', add
label define id10a_bthdist_lbl 3303 `"Purbalingga"', add
label define id10a_bthdist_lbl 3304 `"Banjarnegara"', add
label define id10a_bthdist_lbl 3305 `"Kebumen"', add
label define id10a_bthdist_lbl 3306 `"Purworejo"', add
label define id10a_bthdist_lbl 3307 `"Wonosobo"', add
label define id10a_bthdist_lbl 3308 `"Magelang"', add
label define id10a_bthdist_lbl 3309 `"Boyolali"', add
label define id10a_bthdist_lbl 3310 `"Klaten"', add
label define id10a_bthdist_lbl 3311 `"Sukoharjo"', add
label define id10a_bthdist_lbl 3312 `"Wonogiri"', add
label define id10a_bthdist_lbl 3313 `"Karanganyar"', add
label define id10a_bthdist_lbl 3314 `"Sragen"', add
label define id10a_bthdist_lbl 3315 `"Grobogan"', add
label define id10a_bthdist_lbl 3316 `"Blora"', add
label define id10a_bthdist_lbl 3317 `"Rembang"', add
label define id10a_bthdist_lbl 3318 `"Pati"', add
label define id10a_bthdist_lbl 3319 `"Kudus"', add
label define id10a_bthdist_lbl 3320 `"Jepara"', add
label define id10a_bthdist_lbl 3321 `"Demak"', add
label define id10a_bthdist_lbl 3322 `"Semarang"', add
label define id10a_bthdist_lbl 3323 `"Temanggung"', add
label define id10a_bthdist_lbl 3324 `"Kendal"', add
label define id10a_bthdist_lbl 3325 `"Batang"', add
label define id10a_bthdist_lbl 3326 `"Pekalongan"', add
label define id10a_bthdist_lbl 3327 `"Pemalang"', add
label define id10a_bthdist_lbl 3328 `"Tegal"', add
label define id10a_bthdist_lbl 3329 `"Brebes"', add
label define id10a_bthdist_lbl 3371 `"Magelang"', add
label define id10a_bthdist_lbl 3372 `"Surakarta"', add
label define id10a_bthdist_lbl 3373 `"Salatiga"', add
label define id10a_bthdist_lbl 3374 `"Semarang"', add
label define id10a_bthdist_lbl 3375 `"Pekalongan"', add
label define id10a_bthdist_lbl 3376 `"Tegal"', add
label define id10a_bthdist_lbl 3401 `"Kulon Progo"', add
label define id10a_bthdist_lbl 3402 `"Bantul"', add
label define id10a_bthdist_lbl 3403 `"Gunung Kidul"', add
label define id10a_bthdist_lbl 3404 `"Sleman"', add
label define id10a_bthdist_lbl 3471 `"Yogyakarta"', add
label define id10a_bthdist_lbl 3501 `"Pacitan"', add
label define id10a_bthdist_lbl 3502 `"Ponorogo"', add
label define id10a_bthdist_lbl 3503 `"Trenggalek"', add
label define id10a_bthdist_lbl 3504 `"Tulungagung"', add
label define id10a_bthdist_lbl 3505 `"Blitar"', add
label define id10a_bthdist_lbl 3506 `"Kediri"', add
label define id10a_bthdist_lbl 3507 `"Malang"', add
label define id10a_bthdist_lbl 3508 `"Lumajang"', add
label define id10a_bthdist_lbl 3509 `"Jember"', add
label define id10a_bthdist_lbl 3510 `"Banyuwangi"', add
label define id10a_bthdist_lbl 3511 `"Bondowoso"', add
label define id10a_bthdist_lbl 3512 `"Situbondo"', add
label define id10a_bthdist_lbl 3513 `"Probolinggo"', add
label define id10a_bthdist_lbl 3514 `"Pasuruan"', add
label define id10a_bthdist_lbl 3515 `"Sidoarjo"', add
label define id10a_bthdist_lbl 3516 `"Mojokerto"', add
label define id10a_bthdist_lbl 3517 `"Jombang"', add
label define id10a_bthdist_lbl 3518 `"Nganjuk"', add
label define id10a_bthdist_lbl 3519 `"Madiun"', add
label define id10a_bthdist_lbl 3520 `"Magetan"', add
label define id10a_bthdist_lbl 3521 `"Ngawi"', add
label define id10a_bthdist_lbl 3522 `"Bojonegoro"', add
label define id10a_bthdist_lbl 3523 `"Tuban"', add
label define id10a_bthdist_lbl 3524 `"Lamongan"', add
label define id10a_bthdist_lbl 3525 `"Gresik"', add
label define id10a_bthdist_lbl 3526 `"Bangkalan"', add
label define id10a_bthdist_lbl 3527 `"Sampang"', add
label define id10a_bthdist_lbl 3528 `"Pamekasan"', add
label define id10a_bthdist_lbl 3529 `"Sumenep"', add
label define id10a_bthdist_lbl 3571 `"Kediri"', add
label define id10a_bthdist_lbl 3572 `"Blitar"', add
label define id10a_bthdist_lbl 3573 `"Malang"', add
label define id10a_bthdist_lbl 3574 `"Probolinggo"', add
label define id10a_bthdist_lbl 3575 `"Pasuruan"', add
label define id10a_bthdist_lbl 3576 `"Mojokerto"', add
label define id10a_bthdist_lbl 3577 `"Madiun"', add
label define id10a_bthdist_lbl 3578 `"Surabaya"', add
label define id10a_bthdist_lbl 3579 `"Batu"', add
label define id10a_bthdist_lbl 3601 `"Pandeglang"', add
label define id10a_bthdist_lbl 3602 `"Lebak"', add
label define id10a_bthdist_lbl 3603 `"Tangerang"', add
label define id10a_bthdist_lbl 3604 `"Serang"', add
label define id10a_bthdist_lbl 3671 `"Tangerang"', add
label define id10a_bthdist_lbl 3672 `"Cilegon"', add
label define id10a_bthdist_lbl 3673 `"Serang"', add
label define id10a_bthdist_lbl 3674 `"Kota Tangerang Selatan"', add
label define id10a_bthdist_lbl 5101 `"Jembrana"', add
label define id10a_bthdist_lbl 5102 `"Tabanan"', add
label define id10a_bthdist_lbl 5103 `"Badung"', add
label define id10a_bthdist_lbl 5104 `"Gianyar"', add
label define id10a_bthdist_lbl 5105 `"Klungkung"', add
label define id10a_bthdist_lbl 5106 `"Bangli"', add
label define id10a_bthdist_lbl 5107 `"Karang Asem"', add
label define id10a_bthdist_lbl 5108 `"Buleleng"', add
label define id10a_bthdist_lbl 5171 `"Denpasar"', add
label define id10a_bthdist_lbl 5201 `"Lombok Barat"', add
label define id10a_bthdist_lbl 5202 `"Lombok Tengah"', add
label define id10a_bthdist_lbl 5203 `"Lombok Timur"', add
label define id10a_bthdist_lbl 5204 `"Sumbawa"', add
label define id10a_bthdist_lbl 5205 `"Dompu"', add
label define id10a_bthdist_lbl 5206 `"Bima"', add
label define id10a_bthdist_lbl 5207 `"Sumbawa Barat"', add
label define id10a_bthdist_lbl 5208 `"Lombok Utara"', add
label define id10a_bthdist_lbl 5271 `"Mataram"', add
label define id10a_bthdist_lbl 5272 `"Bima"', add
label define id10a_bthdist_lbl 5301 `"Sumba Barat"', add
label define id10a_bthdist_lbl 5302 `"Sumba Timur"', add
label define id10a_bthdist_lbl 5303 `"Kupang"', add
label define id10a_bthdist_lbl 5304 `"Timor Tengah Selatan"', add
label define id10a_bthdist_lbl 5305 `"Timor Tengah Utara"', add
label define id10a_bthdist_lbl 5306 `"Belu"', add
label define id10a_bthdist_lbl 5307 `"Alor"', add
label define id10a_bthdist_lbl 5308 `"Lembata"', add
label define id10a_bthdist_lbl 5309 `"Flores Timur"', add
label define id10a_bthdist_lbl 5310 `"Sikka"', add
label define id10a_bthdist_lbl 5311 `"Ende"', add
label define id10a_bthdist_lbl 5312 `"Ngada"', add
label define id10a_bthdist_lbl 5313 `"Manggarai"', add
label define id10a_bthdist_lbl 5314 `"Rote Ndao"', add
label define id10a_bthdist_lbl 5315 `"Manggarai Barat"', add
label define id10a_bthdist_lbl 5316 `"Sumba Tengah"', add
label define id10a_bthdist_lbl 5317 `"Sumba Barat Daya"', add
label define id10a_bthdist_lbl 5318 `"Nagekeo"', add
label define id10a_bthdist_lbl 5319 `"Manggarai Timur"', add
label define id10a_bthdist_lbl 5320 `"Sabu Raijua"', add
label define id10a_bthdist_lbl 5371 `"Kupang"', add
label define id10a_bthdist_lbl 6101 `"Sambas"', add
label define id10a_bthdist_lbl 6102 `"Bengkayang"', add
label define id10a_bthdist_lbl 6103 `"Landak"', add
label define id10a_bthdist_lbl 6104 `"Pontianak"', add
label define id10a_bthdist_lbl 6105 `"Sanggau"', add
label define id10a_bthdist_lbl 6106 `"Ketapang"', add
label define id10a_bthdist_lbl 6107 `"Sintang"', add
label define id10a_bthdist_lbl 6108 `"Kapuas Hulu"', add
label define id10a_bthdist_lbl 6109 `"Sekadau"', add
label define id10a_bthdist_lbl 6110 `"Melawi"', add
label define id10a_bthdist_lbl 6111 `"Kayong Utara"', add
label define id10a_bthdist_lbl 6112 `"Kubu Raya"', add
label define id10a_bthdist_lbl 6171 `"Pontianak"', add
label define id10a_bthdist_lbl 6172 `"Singkawang"', add
label define id10a_bthdist_lbl 6201 `"Kotawaringin Barat"', add
label define id10a_bthdist_lbl 6202 `"Kotawaringin Timur"', add
label define id10a_bthdist_lbl 6203 `"Kapuas"', add
label define id10a_bthdist_lbl 6204 `"Barito Selatan"', add
label define id10a_bthdist_lbl 6205 `"Barito Utara"', add
label define id10a_bthdist_lbl 6206 `"Sukamara"', add
label define id10a_bthdist_lbl 6207 `"Lamandau"', add
label define id10a_bthdist_lbl 6208 `"Seruyan"', add
label define id10a_bthdist_lbl 6209 `"Katingan"', add
label define id10a_bthdist_lbl 6210 `"Pulang Pisau"', add
label define id10a_bthdist_lbl 6211 `"Gunung Mas"', add
label define id10a_bthdist_lbl 6212 `"Barito Timur"', add
label define id10a_bthdist_lbl 6213 `"Murung Raya"', add
label define id10a_bthdist_lbl 6271 `"Palangka Raya"', add
label define id10a_bthdist_lbl 6301 `"Tanah Laut"', add
label define id10a_bthdist_lbl 6302 `"Kota Baru"', add
label define id10a_bthdist_lbl 6303 `"Banjar"', add
label define id10a_bthdist_lbl 6304 `"Barito Kuala"', add
label define id10a_bthdist_lbl 6305 `"Tapin"', add
label define id10a_bthdist_lbl 6306 `"Hulu Sungai Selatan"', add
label define id10a_bthdist_lbl 6307 `"Hulu Sungai Tengah"', add
label define id10a_bthdist_lbl 6308 `"Hulu Sungai Utara"', add
label define id10a_bthdist_lbl 6309 `"Tabalong"', add
label define id10a_bthdist_lbl 6310 `"Tanah Bumbu"', add
label define id10a_bthdist_lbl 6311 `"Balangan"', add
label define id10a_bthdist_lbl 6371 `"Banjarmasin"', add
label define id10a_bthdist_lbl 6372 `"Banjar Baru"', add
label define id10a_bthdist_lbl 6401 `"Pasir"', add
label define id10a_bthdist_lbl 6402 `"Kutai Barat"', add
label define id10a_bthdist_lbl 6403 `"Kutai Kartanegara"', add
label define id10a_bthdist_lbl 6404 `"Kutai Timur"', add
label define id10a_bthdist_lbl 6405 `"Berau"', add
label define id10a_bthdist_lbl 6406 `"Malinau"', add
label define id10a_bthdist_lbl 6407 `"Bulungan"', add
label define id10a_bthdist_lbl 6408 `"Nunukan"', add
label define id10a_bthdist_lbl 6409 `"Penajam Paser Utara"', add
label define id10a_bthdist_lbl 6410 `"Tana Tidung"', add
label define id10a_bthdist_lbl 6471 `"Balikpapan"', add
label define id10a_bthdist_lbl 6472 `"Samarinda"', add
label define id10a_bthdist_lbl 6473 `"Tarakan"', add
label define id10a_bthdist_lbl 6474 `"Bontang"', add
label define id10a_bthdist_lbl 7101 `"Bolaang Mongondow"', add
label define id10a_bthdist_lbl 7102 `"Minahasa"', add
label define id10a_bthdist_lbl 7103 `"Kepulauan Sangihe"', add
label define id10a_bthdist_lbl 7104 `"Kepulauan Talaud"', add
label define id10a_bthdist_lbl 7105 `"Minahasa Selatan"', add
label define id10a_bthdist_lbl 7106 `"Minahasa Utara"', add
label define id10a_bthdist_lbl 7107 `"Bolaang Mongondow Utara"', add
label define id10a_bthdist_lbl 7108 `"Siau Tagulandang Biaro"', add
label define id10a_bthdist_lbl 7109 `"Minahasa Tenggara"', add
label define id10a_bthdist_lbl 7110 `"Bolaang Mongondow Selatan"', add
label define id10a_bthdist_lbl 7111 `"Bolaang Mongondow Timur"', add
label define id10a_bthdist_lbl 7171 `"Manado"', add
label define id10a_bthdist_lbl 7172 `"Bitung"', add
label define id10a_bthdist_lbl 7173 `"Tomohon"', add
label define id10a_bthdist_lbl 7174 `"Kotamobagu"', add
label define id10a_bthdist_lbl 7201 `"Banggai Kepulauan"', add
label define id10a_bthdist_lbl 7202 `"Banggai"', add
label define id10a_bthdist_lbl 7203 `"Morowali"', add
label define id10a_bthdist_lbl 7204 `"Poso"', add
label define id10a_bthdist_lbl 7205 `"Donggala"', add
label define id10a_bthdist_lbl 7206 `"Toli-Toli"', add
label define id10a_bthdist_lbl 7207 `"Buol"', add
label define id10a_bthdist_lbl 7208 `"Parigi Moutong"', add
label define id10a_bthdist_lbl 7209 `"Tojo Una-Una"', add
label define id10a_bthdist_lbl 7210 `"Sigi"', add
label define id10a_bthdist_lbl 7271 `"Palu"', add
label define id10a_bthdist_lbl 7301 `"Selayar"', add
label define id10a_bthdist_lbl 7302 `"Bulukumba"', add
label define id10a_bthdist_lbl 7303 `"Bantaeng"', add
label define id10a_bthdist_lbl 7304 `"Jeneponto"', add
label define id10a_bthdist_lbl 7305 `"Takalar"', add
label define id10a_bthdist_lbl 7306 `"Gowa"', add
label define id10a_bthdist_lbl 7307 `"Sinjai"', add
label define id10a_bthdist_lbl 7308 `"Maros"', add
label define id10a_bthdist_lbl 7309 `"Pangkajene Dan Kepulauan"', add
label define id10a_bthdist_lbl 7310 `"Barru"', add
label define id10a_bthdist_lbl 7311 `"Bone"', add
label define id10a_bthdist_lbl 7312 `"Soppeng"', add
label define id10a_bthdist_lbl 7313 `"Wajo"', add
label define id10a_bthdist_lbl 7314 `"Sidenreng Rappang"', add
label define id10a_bthdist_lbl 7315 `"Pinrang"', add
label define id10a_bthdist_lbl 7316 `"Enrekang"', add
label define id10a_bthdist_lbl 7317 `"Luwu"', add
label define id10a_bthdist_lbl 7318 `"Tana Toraja"', add
label define id10a_bthdist_lbl 7322 `"Luwu Utara"', add
label define id10a_bthdist_lbl 7325 `"Luwu Timur"', add
label define id10a_bthdist_lbl 7326 `"Toraja Utara"', add
label define id10a_bthdist_lbl 7371 `"Makassar"', add
label define id10a_bthdist_lbl 7372 `"Pare-Pare"', add
label define id10a_bthdist_lbl 7373 `"Palopo"', add
label define id10a_bthdist_lbl 7401 `"Buton"', add
label define id10a_bthdist_lbl 7402 `"Muna"', add
label define id10a_bthdist_lbl 7403 `"Konawe"', add
label define id10a_bthdist_lbl 7404 `"Kolaka"', add
label define id10a_bthdist_lbl 7405 `"Konawe Selatan"', add
label define id10a_bthdist_lbl 7406 `"Bombana"', add
label define id10a_bthdist_lbl 7407 `"Wakatobi"', add
label define id10a_bthdist_lbl 7408 `"Kolaka Utara"', add
label define id10a_bthdist_lbl 7409 `"Buton Utara"', add
label define id10a_bthdist_lbl 7410 `"Konawe Utara"', add
label define id10a_bthdist_lbl 7471 `"Kendari"', add
label define id10a_bthdist_lbl 7472 `"Bau-Bau"', add
label define id10a_bthdist_lbl 7501 `"Boalemo"', add
label define id10a_bthdist_lbl 7502 `"Kab. Gorontalo"', add
label define id10a_bthdist_lbl 7503 `"Pohuwato"', add
label define id10a_bthdist_lbl 7504 `"Bone Bolango"', add
label define id10a_bthdist_lbl 7505 `"Gorontalo Utara"', add
label define id10a_bthdist_lbl 7571 `"Kota Gorontalo"', add
label define id10a_bthdist_lbl 7601 `"Majene"', add
label define id10a_bthdist_lbl 7602 `"Polewali Mandar"', add
label define id10a_bthdist_lbl 7603 `"Mamasa"', add
label define id10a_bthdist_lbl 7604 `"Mamuju"', add
label define id10a_bthdist_lbl 7605 `"Mamuju Utara"', add
label define id10a_bthdist_lbl 8101 `"Maluku Tenggara Barat"', add
label define id10a_bthdist_lbl 8102 `"Maluku Tenggara"', add
label define id10a_bthdist_lbl 8103 `"Maluku tengah"', add
label define id10a_bthdist_lbl 8104 `"Buru"', add
label define id10a_bthdist_lbl 8105 `"Kepulauan Aru"', add
label define id10a_bthdist_lbl 8106 `"Seram Bagian Barat"', add
label define id10a_bthdist_lbl 8107 `"Seram Bagian Timur"', add
label define id10a_bthdist_lbl 8108 `"Maluku Barat Daya"', add
label define id10a_bthdist_lbl 8109 `"Buru Selatan"', add
label define id10a_bthdist_lbl 8171 `"Ambon"', add
label define id10a_bthdist_lbl 8172 `"Tual"', add
label define id10a_bthdist_lbl 8201 `"Halmahera Barat"', add
label define id10a_bthdist_lbl 8202 `"Halmahera Tengah"', add
label define id10a_bthdist_lbl 8203 `"Kepulauan Sula"', add
label define id10a_bthdist_lbl 8204 `"Halmahera Selatan"', add
label define id10a_bthdist_lbl 8205 `"Halmahera Utara"', add
label define id10a_bthdist_lbl 8206 `"Halmahera Timur"', add
label define id10a_bthdist_lbl 8207 `"Pulau Morotai"', add
label define id10a_bthdist_lbl 8271 `"Ternate"', add
label define id10a_bthdist_lbl 8272 `"Tidore Kepulauan"', add
label define id10a_bthdist_lbl 9101 `"Fakfak"', add
label define id10a_bthdist_lbl 9102 `"Kaimana"', add
label define id10a_bthdist_lbl 9103 `"Teluk Wondama"', add
label define id10a_bthdist_lbl 9104 `"Teluk Bintuni"', add
label define id10a_bthdist_lbl 9105 `"Manokwari"', add
label define id10a_bthdist_lbl 9106 `"Sorong Selatan"', add
label define id10a_bthdist_lbl 9107 `"Sorong"', add
label define id10a_bthdist_lbl 9108 `"Raja Ampat"', add
label define id10a_bthdist_lbl 9109 `"Tambrauw"', add
label define id10a_bthdist_lbl 9110 `"Maybrat"', add
label define id10a_bthdist_lbl 9171 `"Sorong"', add
label define id10a_bthdist_lbl 9401 `"Merauke"', add
label define id10a_bthdist_lbl 9402 `"Jayawijaya"', add
label define id10a_bthdist_lbl 9403 `"Jayapura (regency)"', add
label define id10a_bthdist_lbl 9404 `"Nabire"', add
label define id10a_bthdist_lbl 9408 `"Yapen Waropen"', add
label define id10a_bthdist_lbl 9409 `"Biak Numfor"', add
label define id10a_bthdist_lbl 9410 `"Paniai"', add
label define id10a_bthdist_lbl 9411 `"Puncak Jaya"', add
label define id10a_bthdist_lbl 9412 `"Mimika"', add
label define id10a_bthdist_lbl 9413 `"Boven Digoel"', add
label define id10a_bthdist_lbl 9414 `"Mappi"', add
label define id10a_bthdist_lbl 9415 `"Asmat"', add
label define id10a_bthdist_lbl 9416 `"Yahukimo"', add
label define id10a_bthdist_lbl 9417 `"Pegunungan Bintang"', add
label define id10a_bthdist_lbl 9418 `"Tolikara"', add
label define id10a_bthdist_lbl 9419 `"Sarmi"', add
label define id10a_bthdist_lbl 9420 `"Keerom"', add
label define id10a_bthdist_lbl 9426 `"Waropen"', add
label define id10a_bthdist_lbl 9427 `"Supiori"', add
label define id10a_bthdist_lbl 9428 `"Mamberamo Raya"', add
label define id10a_bthdist_lbl 9429 `"Nduga"', add
label define id10a_bthdist_lbl 9430 `"Lanny Jaya"', add
label define id10a_bthdist_lbl 9431 `"Mamberano Tengah"', add
label define id10a_bthdist_lbl 9432 `"Yalimo"', add
label define id10a_bthdist_lbl 9433 `"Puncak"', add
label define id10a_bthdist_lbl 9434 `"Dogiyai"', add
label define id10a_bthdist_lbl 9435 `"Intan Jaya"', add
label define id10a_bthdist_lbl 9436 `"Deiyai"', add
label define id10a_bthdist_lbl 9471 `"Jayapura (municipality)"', add
label define id10a_bthdist_lbl 9801 `"Southeast Asia"', add
label define id10a_bthdist_lbl 9802 `"China"', add
label define id10a_bthdist_lbl 9803 `"South Asia"', add
label define id10a_bthdist_lbl 9804 `"Japan"', add
label define id10a_bthdist_lbl 9805 `"South Korea"', add
label define id10a_bthdist_lbl 9806 `"Middle East"', add
label define id10a_bthdist_lbl 9807 `"Other Asian country"', add
label define id10a_bthdist_lbl 9808 `"Australia"', add
label define id10a_bthdist_lbl 9809 `"South Pacific"', add
label define id10a_bthdist_lbl 9810 `"United States"', add
label define id10a_bthdist_lbl 9812 `"Central America"', add
label define id10a_bthdist_lbl 9813 `"South America"', add
label define id10a_bthdist_lbl 9814 `"Canada"', add
label define id10a_bthdist_lbl 9815 `"East Africa"', add
label define id10a_bthdist_lbl 9816 `"Central Africa"', add
label define id10a_bthdist_lbl 9817 `"North Africa"', add
label define id10a_bthdist_lbl 9818 `"South Africa"', add
label define id10a_bthdist_lbl 9819 `"West Africa"', add
label define id10a_bthdist_lbl 9820 `"Netherlands"', add
label define id10a_bthdist_lbl 9821 `"Other Western European country"', add
label define id10a_bthdist_lbl 9822 `"Other Easten European country"', add
label define id10a_bthdist_lbl 9823 `"Other foreign country"', add
label define id10a_bthdist_lbl 9999 `"Unknown"', add
label values id10a_bthdist id10a_bthdist_lbl

label define id10a_relig_lbl 1 `"Islam"'
label define id10a_relig_lbl 2 `"Christian"', add
label define id10a_relig_lbl 3 `"Catholic"', add
label define id10a_relig_lbl 4 `"Hindu"', add
label define id10a_relig_lbl 5 `"Buddhist"', add
label define id10a_relig_lbl 6 `"Confucian"', add
label define id10a_relig_lbl 7 `"Other"', add
label define id10a_relig_lbl 8 `"Unknown"', add
label define id10a_relig_lbl 9 `"NIU (not in universe)"', add
label values id10a_relig id10a_relig_lbl

label define id10a_disblnd_lbl 1 `"No difficulty"'
label define id10a_disblnd_lbl 2 `"Slight"', add
label define id10a_disblnd_lbl 3 `"Severe"', add
label define id10a_disblnd_lbl 9 `"NIU (not in universe)"', add
label values id10a_disblnd id10a_disblnd_lbl

label define id10a_dishear_lbl 1 `"No difficulty"'
label define id10a_dishear_lbl 2 `"Slight"', add
label define id10a_dishear_lbl 3 `"Severe"', add
label define id10a_dishear_lbl 9 `"NIU (not in universe)"', add
label values id10a_dishear id10a_dishear_lbl

label define id10a_disphys_lbl 1 `"No difficulty"'
label define id10a_disphys_lbl 2 `"Slight"', add
label define id10a_disphys_lbl 3 `"Severe"', add
label define id10a_disphys_lbl 9 `"NIU (not in universe)"', add
label values id10a_disphys id10a_disphys_lbl

label define id10a_dismntl_lbl 1 `"No difficulty"'
label define id10a_dismntl_lbl 2 `"Slight"', add
label define id10a_dismntl_lbl 3 `"Severe"', add
label define id10a_dismntl_lbl 9 `"NIU (not in universe)"', add
label values id10a_dismntl id10a_dismntl_lbl

label define id10a_selfcare_lbl 1 `"No difficulty"'
label define id10a_selfcare_lbl 2 `"Slight"', add
label define id10a_selfcare_lbl 3 `"Severe"', add
label define id10a_selfcare_lbl 9 `"NIU (not in universe)"', add
label values id10a_selfcare id10a_selfcare_lbl

label define id10a_ethnic_lbl 0001 `"Aceh/Achin/Akhir/Asji/A-Tse/Ureung Aceh"'
label define id10a_ethnic_lbl 0002 `"Alas"', add
label define id10a_ethnic_lbl 0003 `"Aneuk Jamee"', add
label define id10a_ethnic_lbl 0004 `"Gayo"', add
label define id10a_ethnic_lbl 0005 `"Gayo Lut"', add
label define id10a_ethnic_lbl 0006 `"Gayo Luwes"', add
label define id10a_ethnic_lbl 0007 `"Gayo Serbe Jadi"', add
label define id10a_ethnic_lbl 0008 `"Kluet"', add
label define id10a_ethnic_lbl 0009 `"Sigulai"', add
label define id10a_ethnic_lbl 0010 `"Simeulue"', add
label define id10a_ethnic_lbl 0011 `"Singkil"', add
label define id10a_ethnic_lbl 0012 `"Tamiang"', add
label define id10a_ethnic_lbl 0013 `"Asahan"', add
label define id10a_ethnic_lbl 0014 `"Batak Angkola"', add
label define id10a_ethnic_lbl 0015 `"Batak Karo"', add
label define id10a_ethnic_lbl 0016 `"Batak Mandailing"', add
label define id10a_ethnic_lbl 0017 `"Batak Pakpak Dairi"', add
label define id10a_ethnic_lbl 0018 `"Batak Simalungun"', add
label define id10a_ethnic_lbl 0019 `"Batak Tapanuli"', add
label define id10a_ethnic_lbl 0020 `"Batak Toba"', add
label define id10a_ethnic_lbl 0021 `"Dairi"', add
label define id10a_ethnic_lbl 0022 `"Lubu"', add
label define id10a_ethnic_lbl 0023 `"Melayu Asahan"', add
label define id10a_ethnic_lbl 0024 `"Melayu Deli"', add
label define id10a_ethnic_lbl 0025 `"Nias"', add
label define id10a_ethnic_lbl 0026 `"Pesisir"', add
label define id10a_ethnic_lbl 0027 `"Siberut"', add
label define id10a_ethnic_lbl 0028 `"Siladang"', add
label define id10a_ethnic_lbl 0029 `"Ulu Muara Sipongi"', add
label define id10a_ethnic_lbl 0030 `"Kerinci"', add
label define id10a_ethnic_lbl 0031 `"Mentawai"', add
label define id10a_ethnic_lbl 0032 `"Minangkabau"', add
label define id10a_ethnic_lbl 0033 `"Akik/Akit"', add
label define id10a_ethnic_lbl 0034 `"Bonai"', add
label define id10a_ethnic_lbl 0035 `"Hutan"', add
label define id10a_ethnic_lbl 0036 `"Kuala"', add
label define id10a_ethnic_lbl 0037 `"Melayu Riau"', add
label define id10a_ethnic_lbl 0038 `"Rawa"', add
label define id10a_ethnic_lbl 0039 `"Sakai"', add
label define id10a_ethnic_lbl 0040 `"Talang Mamak"', add
label define id10a_ethnic_lbl 0041 `"Anak Dalam/Anak Rimbo"', add
label define id10a_ethnic_lbl 0042 `"Batin"', add
label define id10a_ethnic_lbl 0043 `"Jambi"', add
label define id10a_ethnic_lbl 0044 `"Kubu"', add
label define id10a_ethnic_lbl 0045 `"Penghulu"', add
label define id10a_ethnic_lbl 0046 `"Pindah"', add
label define id10a_ethnic_lbl 0047 `"Daya"', add
label define id10a_ethnic_lbl 0048 `"Enim"', add
label define id10a_ethnic_lbl 0049 `"Gumai"', add
label define id10a_ethnic_lbl 0050 `"Kayu Agung"', add
label define id10a_ethnic_lbl 0051 `"Kikim"', add
label define id10a_ethnic_lbl 0052 `"Kisam"', add
label define id10a_ethnic_lbl 0053 `"Komering"', add
label define id10a_ethnic_lbl 0054 `"Langkat/Melayu Langkat"', add
label define id10a_ethnic_lbl 0055 `"Lematang"', add
label define id10a_ethnic_lbl 0056 `"Lintang"', add
label define id10a_ethnic_lbl 0057 `"Lom/Mapur/Sekak"', add
label define id10a_ethnic_lbl 0058 `"Melayu Banyu Asin"', add
label define id10a_ethnic_lbl 0059 `"Melayu Lahat"', add
label define id10a_ethnic_lbl 0060 `"Meranjat"', add
label define id10a_ethnic_lbl 0061 `"Musi Banyuasin"', add
label define id10a_ethnic_lbl 0062 `"Musi Sekayu/Sekayu"', add
label define id10a_ethnic_lbl 0063 `"Ogan"', add
label define id10a_ethnic_lbl 0065 `"Palembang"', add
label define id10a_ethnic_lbl 0066 `"Pasemah"', add
label define id10a_ethnic_lbl 0067 `"Pedamaran"', add
label define id10a_ethnic_lbl 0068 `"Pegagan"', add
label define id10a_ethnic_lbl 0069 `"Rambang"', add
label define id10a_ethnic_lbl 0070 `"Ranau"', add
label define id10a_ethnic_lbl 0071 `"Rawas"', add
label define id10a_ethnic_lbl 0072 `"Saling"', add
label define id10a_ethnic_lbl 0073 `"Semendo"', add
label define id10a_ethnic_lbl 0074 `"Teloko"', add
label define id10a_ethnic_lbl 0075 `"Ulu"', add
label define id10a_ethnic_lbl 0076 `"Bengkulu"', add
label define id10a_ethnic_lbl 0077 `"Enggano"', add
label define id10a_ethnic_lbl 0078 `"Kaur"', add
label define id10a_ethnic_lbl 0079 `"Lembak"', add
label define id10a_ethnic_lbl 0080 `"Muko-Muko"', add
label define id10a_ethnic_lbl 0081 `"Pekal"', add
label define id10a_ethnic_lbl 0082 `"Rejang"', add
label define id10a_ethnic_lbl 0083 `"Serawai"', add
label define id10a_ethnic_lbl 0084 `"Abung/Bunga Mayang/Sembilan Marga/Siwo Megou"', add
label define id10a_ethnic_lbl 0085 `"Belalau"', add
label define id10a_ethnic_lbl 0086 `"Buay Lima"', add
label define id10a_ethnic_lbl 0087 `"Krui"', add
label define id10a_ethnic_lbl 0088 `"Lampung"', add
label define id10a_ethnic_lbl 0089 `"Megau Pak Tulang Bawang"', add
label define id10a_ethnic_lbl 0090 `"Melayu semendo"', add
label define id10a_ethnic_lbl 0091 `"Melintang Rajabasa-Peminggir MR"', add
label define id10a_ethnic_lbl 0093 `"Peminggir Semangka/Skala Brak/Teluk"', add
label define id10a_ethnic_lbl 0094 `"Pepaduan"', add
label define id10a_ethnic_lbl 0095 `"Pubian/Pubian Telu Suku/Pubiyan"', add
label define id10a_ethnic_lbl 0096 `"Seibatin"', add
label define id10a_ethnic_lbl 0098 `"Bangka"', add
label define id10a_ethnic_lbl 0099 `"Belitung"', add
label define id10a_ethnic_lbl 0100 `"Anak Laut/Laut"', add
label define id10a_ethnic_lbl 0101 `"Mantang"', add
label define id10a_ethnic_lbl 0102 `"Belom"', add
label define id10a_ethnic_lbl 0104 `"Keme"', add
label define id10a_ethnic_lbl 0105 `"Lambai/Lamuri"', add
label define id10a_ethnic_lbl 0106 `"Lingga"', add
label define id10a_ethnic_lbl 0107 `"Melayu"', add
label define id10a_ethnic_lbl 0108 `"Pagai"', add
label define id10a_ethnic_lbl 0109 `"Sawang"', add
label define id10a_ethnic_lbl 0110 `"Suban"', add
label define id10a_ethnic_lbl 0111 `"Betawi"', add
label define id10a_ethnic_lbl 0112 `"Cirebon"', add
label define id10a_ethnic_lbl 0113 `"Sunda"', add
label define id10a_ethnic_lbl 0114 `"Jawa"', add
label define id10a_ethnic_lbl 0115 `"Samin"', add
label define id10a_ethnic_lbl 0116 `"Bawean/Boyan"', add
label define id10a_ethnic_lbl 0117 `"Naga"', add
label define id10a_ethnic_lbl 0118 `"Nagaring"', add
label define id10a_ethnic_lbl 0119 `"Osing/Using"', add
label define id10a_ethnic_lbl 0120 `"Tengger"', add
label define id10a_ethnic_lbl 0121 `"Madura"', add
label define id10a_ethnic_lbl 0122 `"Badui/Baduy"', add
label define id10a_ethnic_lbl 0123 `"Banten"', add
label define id10a_ethnic_lbl 0124 `"Bali/Bali Hindu"', add
label define id10a_ethnic_lbl 0125 `"Bali Majapahit"', add
label define id10a_ethnic_lbl 0126 `"Bali Aga"', add
label define id10a_ethnic_lbl 0127 `"Bima"', add
label define id10a_ethnic_lbl 0128 `"Dompu"', add
label define id10a_ethnic_lbl 0129 `"Sasak"', add
label define id10a_ethnic_lbl 0130 `"Semawa/Sumbawa"', add
label define id10a_ethnic_lbl 0131 `"Abui"', add
label define id10a_ethnic_lbl 0133 `"Alor/Belagar/Kelong/Manete/Mauta/Seboda/Wersin"', add
label define id10a_ethnic_lbl 0134 `"Atanfui/Atani/Atoni/Atoni Meto/Dawan"', add
label define id10a_ethnic_lbl 0135 `"Babui"', add
label define id10a_ethnic_lbl 0136 `"Bajawa"', add
label define id10a_ethnic_lbl 0140 `"Belu"', add
label define id10a_ethnic_lbl 0141 `"Blagar"', add
label define id10a_ethnic_lbl 0143 `"Bunak/Marae"', add
label define id10a_ethnic_lbl 0144 `"Dadua"', add
label define id10a_ethnic_lbl 0145 `"Deing"', add
label define id10a_ethnic_lbl 0146 `"Dongo"', add
label define id10a_ethnic_lbl 0147 `"Ende"', add
label define id10a_ethnic_lbl 0148 `"Fataluku"', add
label define id10a_ethnic_lbl 0149 `"Faun"', add
label define id10a_ethnic_lbl 0150 `"Flores"', add
label define id10a_ethnic_lbl 0151 `"Gunung-Orang Gunung"', add
label define id10a_ethnic_lbl 0152 `"Hahak"', add
label define id10a_ethnic_lbl 0153 `"Hawu/Sabu"', add
label define id10a_ethnic_lbl 0154 `"Helong"', add
label define id10a_ethnic_lbl 0156 `"Kabola"', add
label define id10a_ethnic_lbl 0159 `"Kedang"', add
label define id10a_ethnic_lbl 0160 `"Kemak"', add
label define id10a_ethnic_lbl 0161 `"Kemang"', add
label define id10a_ethnic_lbl 0162 `"Keo"', add
label define id10a_ethnic_lbl 0163 `"Kolana"', add
label define id10a_ethnic_lbl 0164 `"Kore"', add
label define id10a_ethnic_lbl 0166 `"Krowe Muhang"', add
label define id10a_ethnic_lbl 0167 `"Kui"', add
label define id10a_ethnic_lbl 0168 `"Kupang"', add
label define id10a_ethnic_lbl 0169 `"Labala"', add
label define id10a_ethnic_lbl 0170 `"Lamahot/Lamholot/Lamkolot"', add
label define id10a_ethnic_lbl 0171 `"Larantuka"', add
label define id10a_ethnic_lbl 0172 `"Lemma"', add
label define id10a_ethnic_lbl 0173 `"Lio"', add
label define id10a_ethnic_lbl 0174 `"Loloan"', add
label define id10a_ethnic_lbl 0175 `"Lomblem"', add
label define id10a_ethnic_lbl 0177 `"Manggarai"', add
label define id10a_ethnic_lbl 0179 `"Mbojo"', add
label define id10a_ethnic_lbl 0180 `"Mela"', add
label define id10a_ethnic_lbl 0181 `"Modo"', add
label define id10a_ethnic_lbl 0182 `"Muhang"', add
label define id10a_ethnic_lbl 0183 `"Na Ueti"', add
label define id10a_ethnic_lbl 0184 `"Nage/Ngada"', add
label define id10a_ethnic_lbl 0185 `"Nagekeo"', add
label define id10a_ethnic_lbl 0187 `"Palue"', add
label define id10a_ethnic_lbl 0188 `"Pantar"', add
label define id10a_ethnic_lbl 0189 `"Rai"', add
label define id10a_ethnic_lbl 0190 `"Riung"', add
label define id10a_ethnic_lbl 0191 `"Rote/Roti"', add
label define id10a_ethnic_lbl 0192 `"Sikka"', add
label define id10a_ethnic_lbl 0193 `"Solor/Solot"', add
label define id10a_ethnic_lbl 0194 `"To Uluuwai"', add
label define id10a_ethnic_lbl 0196 `"Tokodede"', add
label define id10a_ethnic_lbl 0197 `"Baliaga"', add
label define id10a_ethnic_lbl 0198 `"Bayan"', add
label define id10a_ethnic_lbl 0200 `"Idate"', add
label define id10a_ethnic_lbl 0204 `"Makasai"', add
label define id10a_ethnic_lbl 0206 `"Mambai"', add
label define id10a_ethnic_lbl 0209 `"Dayak Abai"', add
label define id10a_ethnic_lbl 0210 `"Dayak Air Durian/Dayak Air Upas/Dayak Batu Payung/Dayak Belaban/Dayak Kendawangan/Dayak Membulu'/Dayak Menggaling/Dayak Pelanjau/Dayak Sekakai/Dayak Sempadian"', add
label define id10a_ethnic_lbl 0211 `"Dayak Air Tabun/Dayak Banjur/Dayak Begelang/Dayak Demam/Dayak Embarak/Dayak Ketungau-sesae'/Dayak Kumpang/Dayak Mandau/Dayak Merakai/Dayak Sebaru'/Dayak Sekalau/Dayak Sekapat/Dayak Senangan/Dayak Senangkan/Dayak Senangkatn"', add
label define id10a_ethnic_lbl 0212 `"Dayak Alau'/Dayak Lau'"', add
label define id10a_ethnic_lbl 0213 `"Dayak Angan"', add
label define id10a_ethnic_lbl 0214 `"Dayak Angkabakng/Dayak Banokng/Dayak Banyuke/Dayak Banyuke-Angkabang/Dayak Banyuke-Banokng/Dayak Banyuke-Moro Batukng/Dayak Banyuke-Sakanis/Dayak Banyuke-Satolo/Dayak Banyuke-Satona/Dayak Banyuke-Songga Batukng/Dayak Moro Batukng/Dayak Sakanis/"', add
label define id10a_ethnic_lbl 0215 `"Dayak Apalin"', add
label define id10a_ethnic_lbl 0216 `"Dayak Apoyan"', add
label define id10a_ethnic_lbl 0217 `"Dayak Babak"', add
label define id10a_ethnic_lbl 0218 `"Dayak Badat"', add
label define id10a_ethnic_lbl 0219 `"Dayak Bahau"', add
label define id10a_ethnic_lbl 0220 `"Dayak Bakati' Kanayatn Satango/Dayak Bakati' Kuma/Dayak Bakati' Lape/Dayak Bakati' Lumar/Dayak Bakati' Palayo/Dayak Bakati' Payutn/Dayak Bakati' Rara/Dayak Bakati' Riok/Dayak Bakati' Sara/Dayak Bakati' Sebiha'/Dayak Bakati' Subah/Dayak Bakati'"', add
label define id10a_ethnic_lbl 0221 `"Dayak Balantiatn"', add
label define id10a_ethnic_lbl 0222 `"Dayak Balau/Dayak Daya/Dayak Hivan/Dayak Iban/Dayak Neban"', add
label define id10a_ethnic_lbl 0224 `"Dayak Banyadu'"', add
label define id10a_ethnic_lbl 0225 `"Dayak Banyur/Dayak Kualatn/Dayak Sajan/Dayak Semanakng/Dayak Simpakng"', add
label define id10a_ethnic_lbl 0226 `"Dayak Barai"', add
label define id10a_ethnic_lbl 0227 `"Dayak Bassap"', add
label define id10a_ethnic_lbl 0228 `"Dayak Batu Entawa'"', add
label define id10a_ethnic_lbl 0229 `"Dayak Batu Tajam/Dayak Kekura'/Dayak Kengkubang/Dayak Marau/Dayak Pesaguan/Dayak Pesaguan Hulu/Dayak Pesaguan Kanan/Dayak Sepauhan"', add
label define id10a_ethnic_lbl 0230 `"Dayak Bauk"', add
label define id10a_ethnic_lbl 0231 `"Dayak Baya"', add
label define id10a_ethnic_lbl 0232 `"Dayak Beah/Dayak Begeleng/Dayak Beginci"', add
label define id10a_ethnic_lbl 0233 `"Dayak Behe/Dayak Benane"', add
label define id10a_ethnic_lbl 0234 `"Dayak Benatu/Dayak Jalai/Dayak Penyarang/Dayak Perigi/Dayak Pringkunyit/Dayak Riam/Dayak Sumanjawat/Dayak Tanjung/Dayak Tembiruhan"', add
label define id10a_ethnic_lbl 0235 `"Dayak Benawas"', add
label define id10a_ethnic_lbl 0236 `"Dayak Bentian"', add
label define id10a_ethnic_lbl 0237 `"Dayak Benuaq"', add
label define id10a_ethnic_lbl 0238 `"Dayak BI Somu"', add
label define id10a_ethnic_lbl 0239 `"Dayak Biatah/Dayak Bidayuh"', add
label define id10a_ethnic_lbl 0240 `"Dayak Bihak"', add
label define id10a_ethnic_lbl 0241 `"Dayak Brusu"', add
label define id10a_ethnic_lbl 0243 `"Dayak Bugau"', add
label define id10a_ethnic_lbl 0244 `"Dayak Bukat/Dayak Buket/Dayak Bukit/Dayak Bukut/Dayak Ukit"', add
label define id10a_ethnic_lbl 0245 `"Dayak Bukit Talaga"', add
label define id10a_ethnic_lbl 0247 `"Dayak Butok"', add
label define id10a_ethnic_lbl 0248 `"Dayak Cempedak"', add
label define id10a_ethnic_lbl 0249 `"Dayak Da'/Dayak Kayan"', add
label define id10a_ethnic_lbl 0250 `"Dayak Dait"', add
label define id10a_ethnic_lbl 0251 `"Dayak Dalam"', add
label define id10a_ethnic_lbl 0252 `"Dayak Dalang/Dayak Kaluas/Dayak Kayu Bunga"', add
label define id10a_ethnic_lbl 0254 `"Dayak Darat"', add
label define id10a_ethnic_lbl 0255 `"Dayak Daro'"', add
label define id10a_ethnic_lbl 0256 `"Dayak Darok"', add
label define id10a_ethnic_lbl 0258 `"Dayak Desa"', add
label define id10a_ethnic_lbl 0259 `"Dayak Dosan/Dayak Dusun"', add
label define id10a_ethnic_lbl 0261 `"Dayak Dsa"', add
label define id10a_ethnic_lbl 0262 `"Dayak Ella"', add
label define id10a_ethnic_lbl 0263 `"Dayak Embaloh/Dayak Maloh/Dayak Mbaloh/Dayak Taman Ba"', add
label define id10a_ethnic_lbl 0264 `"Dayak Empayuh"', add
label define id10a_ethnic_lbl 0265 `"Dayak En Silat"', add
label define id10a_ethnic_lbl 0266 `"Dayak Engkarong"', add
label define id10a_ethnic_lbl 0267 `"Dayak Engkode"', add
label define id10a_ethnic_lbl 0268 `"Dayak Ensanang"', add
label define id10a_ethnic_lbl 0269 `"Dayak Ensilat"', add
label define id10a_ethnic_lbl 0271 `"Dayak Entuka"', add
label define id10a_ethnic_lbl 0273 `"Dayak Gali/Dayak Galik"', add
label define id10a_ethnic_lbl 0274 `"Dayak Gerai"', add
label define id10a_ethnic_lbl 0275 `"Dayak Gerunggang"', add
label define id10a_ethnic_lbl 0276 `"Dayak Golik"', add
label define id10a_ethnic_lbl 0277 `"Dayak Goneh"', add
label define id10a_ethnic_lbl 0279 `"Dayak Hibun"', add
label define id10a_ethnic_lbl 0281 `"Dayak Inggar Silat"', add
label define id10a_ethnic_lbl 0282 `"Dayak Jagoi"', add
label define id10a_ethnic_lbl 0283 `"Dayak Jalan/Dayak Ka-Lepo Ka"', add
label define id10a_ethnic_lbl 0284 `"Dayak Jangkang/Dayak Jangkang Benua/Dayak Jangkang Engkarong/Dayak Jangkang Jungur Tanjung/Dayak Jangkang Kopa"', add
label define id10a_ethnic_lbl 0285 `"Dayak Jawan"', add
label define id10a_ethnic_lbl 0286 `"Dayak Jawatn"', add
label define id10a_ethnic_lbl 0287 `"Dayak Jelai"', add
label define id10a_ethnic_lbl 0289 `"Dayak Kalis"', add
label define id10a_ethnic_lbl 0290 `"Dayak Kanayan"', add
label define id10a_ethnic_lbl 0291 `"Dayak Kanayatn/Dayak Kanayatn Capala/Dayak Kanayatn-Ambawang-Mampawah/Dayak Kanayatn-Banana'-Mampawah-Barabas/Dayak Kanayatn-Banana'-Mampawah-Pulo Padak/Dayak Kanayatn-Banana'-Mampawah-Sabawis/Dayak Kanayatn-Banana'-Mampawal-Salutukng/Dayak Kan"', add
label define id10a_ethnic_lbl 0292 `"Dayak Kancikng"', add
label define id10a_ethnic_lbl 0293 `"Dayak Kantu'/Dayak Kantuk"', add
label define id10a_ethnic_lbl 0294 `"Dayak Kayaan"', add
label define id10a_ethnic_lbl 0295 `"Dayak Kayanath"', add
label define id10a_ethnic_lbl 0296 `"Dayak Kayong"', add
label define id10a_ethnic_lbl 0297 `"Dayak Kayung"', add
label define id10a_ethnic_lbl 0298 `"Dayak Kebahan"', add
label define id10a_ethnic_lbl 0299 `"Dayak Kebuai/Dayak Pangkalan Suka/Dayak Suka Maju/Dayak Tayap"', add
label define id10a_ethnic_lbl 0300 `"Dayak Kede"', add
label define id10a_ethnic_lbl 0303 `"Dayak Keluas"', add
label define id10a_ethnic_lbl 0304 `"Dayak Keneles"', add
label define id10a_ethnic_lbl 0305 `"Dayak Keninjal"', add
label define id10a_ethnic_lbl 0306 `"Dayak Kenyah"', add
label define id10a_ethnic_lbl 0307 `"Dayak Kenyilu"', add
label define id10a_ethnic_lbl 0308 `"Dayak Kepuas"', add
label define id10a_ethnic_lbl 0309 `"Dayak Kerabat"', add
label define id10a_ethnic_lbl 0310 `"Dayak Keramai/Dayak Keramay"', add
label define id10a_ethnic_lbl 0311 `"Dayak Ketior/Dayak Ketiur"', add
label define id10a_ethnic_lbl 0312 `"Dayak Ketungau/Dayak Ketungau Air Tabun/Dayak Ketungau Banjur/Dayak Ketungau Begelang/Dayak Ketungau Demam/Dayak Ketungau Embarak/Dayak Ketungau Kumpang/Dayak Ketungau Mandau/Dayak Ketungau Merakai/Dayak Ketungau Sebaru'/Dayak Ketungau Sekalau/"', add
label define id10a_ethnic_lbl 0314 `"Dayak Kodatn"', add
label define id10a_ethnic_lbl 0315 `"Dayak Koman"', add
label define id10a_ethnic_lbl 0317 `"Dayak Kopak"', add
label define id10a_ethnic_lbl 0322 `"Dayak Krio"', add
label define id10a_ethnic_lbl 0323 `"Dayak Kubitn"', add
label define id10a_ethnic_lbl 0325 `"Dayak Laman Tuha/Dayak Lamantawa"', add
label define id10a_ethnic_lbl 0326 `"Dayak Lara"', add
label define id10a_ethnic_lbl 0327 `"Dayak Laur"', add
label define id10a_ethnic_lbl 0328 `"Dayak Laut"', add
label define id10a_ethnic_lbl 0329 `"Dayak Lawangan"', add
label define id10a_ethnic_lbl 0331 `"Dayak Lebang"', add
label define id10a_ethnic_lbl 0332 `"Dayak Lebong"', add
label define id10a_ethnic_lbl 0333 `"Dayak Lemandau"', add
label define id10a_ethnic_lbl 0335 `"Dayak Limbai"', add
label define id10a_ethnic_lbl 0336 `"Dayak Linoh"', add
label define id10a_ethnic_lbl 0337 `"Dayak Lomur"', add
label define id10a_ethnic_lbl 0338 `"Dayak Mahap"', add
label define id10a_ethnic_lbl 0339 `"Dayak Mali"', add
label define id10a_ethnic_lbl 0340 `"Dayak Manyan"', add
label define id10a_ethnic_lbl 0341 `"Dayak Mayan"', add
label define id10a_ethnic_lbl 0342 `"Dayak Mayau"', add
label define id10a_ethnic_lbl 0343 `"Dayak Melahoi"', add
label define id10a_ethnic_lbl 0344 `"Dayak Melanau"', add
label define id10a_ethnic_lbl 0345 `"Dayak Melayu Pontianak"', add
label define id10a_ethnic_lbl 0346 `"Dayak Melayu Sambas"', add
label define id10a_ethnic_lbl 0347 `"Dayak Mentebah"', add
label define id10a_ethnic_lbl 0349 `"Dayak Menterap Kabut"', add
label define id10a_ethnic_lbl 0350 `"Dayak Menterap Sekado"', add
label define id10a_ethnic_lbl 0351 `"Dayak Mentuka'"', add
label define id10a_ethnic_lbl 0354 `"Dayak Menyuke"', add
label define id10a_ethnic_lbl 0355 `"Dayak Merau"', add
label define id10a_ethnic_lbl 0356 `"Dayak Mobui"', add
label define id10a_ethnic_lbl 0357 `"Dayak Modang"', add
label define id10a_ethnic_lbl 0358 `"Dayak Mualang"', add
label define id10a_ethnic_lbl 0359 `"Dayak Muara"', add
label define id10a_ethnic_lbl 0360 `"Dayak Mudu'"', add
label define id10a_ethnic_lbl 0363 `"Dayak Nahaya'"', add
label define id10a_ethnic_lbl 0364 `"Dayak Nanga"', add
label define id10a_ethnic_lbl 0365 `"Dayak Ngabang"', add
label define id10a_ethnic_lbl 0369 `"Dayak Nonguh"', add
label define id10a_ethnic_lbl 0370 `"Dayak Nyadupm"', add
label define id10a_ethnic_lbl 0371 `"Dayak Oruung da'an"', add
label define id10a_ethnic_lbl 0372 `"Dayak Ot Danum"', add
label define id10a_ethnic_lbl 0373 `"Dayak Pampang"', add
label define id10a_ethnic_lbl 0374 `"Dayak Pandu"', add
label define id10a_ethnic_lbl 0375 `"Dayak Pangin"', add
label define id10a_ethnic_lbl 0376 `"Dayak Pangkodan/Dayak Pengkedang"', add
label define id10a_ethnic_lbl 0377 `"Dayak Pantu"', add
label define id10a_ethnic_lbl 0379 `"Dayak Papak"', add
label define id10a_ethnic_lbl 0380 `"Dayak Pasir"', add
label define id10a_ethnic_lbl 0381 `"Dayak Paus"', add
label define id10a_ethnic_lbl 0382 `"Dayak Pawan"', add
label define id10a_ethnic_lbl 0383 `"Dayak Pawatn"', add
label define id10a_ethnic_lbl 0384 `"Dayak Paya'"', add
label define id10a_ethnic_lbl 0385 `"Dayak Penihing"', add
label define id10a_ethnic_lbl 0386 `"Dayak Peruan"', add
label define id10a_ethnic_lbl 0387 `"Dayak Pompakng"', add
label define id10a_ethnic_lbl 0388 `"Dayak Pompang"', add
label define id10a_ethnic_lbl 0389 `"Dayak Ponan/Dayak Punan/Dayak Punang"', add
label define id10a_ethnic_lbl 0390 `"Dayak Ponti/Dayak Punti"', add
label define id10a_ethnic_lbl 0391 `"Dayak Pos"', add
label define id10a_ethnic_lbl 0392 `"Dayak Pruna'"', add
label define id10a_ethnic_lbl 0393 `"Dayak Pruwan"', add
label define id10a_ethnic_lbl 0394 `"Dayak Putuk"', add
label define id10a_ethnic_lbl 0395 `"Dayak Randu'"', add
label define id10a_ethnic_lbl 0396 `"Dayak Randuk/Dayak Ronduk"', add
label define id10a_ethnic_lbl 0397 `"Dayak Ransa"', add
label define id10a_ethnic_lbl 0398 `"Dayak Rantawan"', add
label define id10a_ethnic_lbl 0399 `"Dayak Raut"', add
label define id10a_ethnic_lbl 0401 `"Dayak Ribun"', add
label define id10a_ethnic_lbl 0402 `"Dayak Salako/Dayak Salako Badamea-Gajekng/Dayak Salako Garantukng Sakawokng"', add
label define id10a_ethnic_lbl 0403 `"Dayak Sambas"', add
label define id10a_ethnic_lbl 0404 `"Dayak Sami"', add
label define id10a_ethnic_lbl 0405 `"Dayak Samihin"', add
label define id10a_ethnic_lbl 0406 `"Dayak Sampit"', add
label define id10a_ethnic_lbl 0407 `"Dayak Sane"', add
label define id10a_ethnic_lbl 0408 `"Dayak Sanggau"', add
label define id10a_ethnic_lbl 0409 `"Dayak Sangku'"', add
label define id10a_ethnic_lbl 0410 `"Dayak Sapatoi"', add
label define id10a_ethnic_lbl 0411 `"Dayak Sawai"', add
label define id10a_ethnic_lbl 0412 `"Dayak Sawe"', add
label define id10a_ethnic_lbl 0413 `"Dayak Sebaruk"', add
label define id10a_ethnic_lbl 0414 `"Dayak Seberuang"', add
label define id10a_ethnic_lbl 0415 `"Dayak Segai"', add
label define id10a_ethnic_lbl 0416 `"Dayak Sekajang"', add
label define id10a_ethnic_lbl 0417 `"Dayak Sekubang"', add
label define id10a_ethnic_lbl 0418 `"Dayak Sekujam"', add
label define id10a_ethnic_lbl 0420 `"Dayak Selayang"', add
label define id10a_ethnic_lbl 0421 `"Dayak Selibong"', add
label define id10a_ethnic_lbl 0424 `"Dayak Sengkunang"', add
label define id10a_ethnic_lbl 0428 `"Dayak Silatn Muntak"', add
label define id10a_ethnic_lbl 0429 `"Dayak Sintang"', add
label define id10a_ethnic_lbl 0430 `"Dayak Sisang"', add
label define id10a_ethnic_lbl 0431 `"Dayak Sontas"', add
label define id10a_ethnic_lbl 0432 `"Dayak Suaid"', add
label define id10a_ethnic_lbl 0433 `"Dayak Suhaid"', add
label define id10a_ethnic_lbl 0434 `"Dayak Sum/Dayak Sum Daruk"', add
label define id10a_ethnic_lbl 0435 `"Dayak Sungkung"', add
label define id10a_ethnic_lbl 0436 `"Dayak Suruh/Dayak Suruk"', add
label define id10a_ethnic_lbl 0437 `"Dayak Suti"', add
label define id10a_ethnic_lbl 0438 `"Dayak Taba"', add
label define id10a_ethnic_lbl 0439 `"Dayak Tabuas"', add
label define id10a_ethnic_lbl 0440 `"Dayak Tadietn"', add
label define id10a_ethnic_lbl 0441 `"Dayak Tagel"', add
label define id10a_ethnic_lbl 0442 `"Dayak Tamambalo"', add
label define id10a_ethnic_lbl 0443 `"Dayak Taman"', add
label define id10a_ethnic_lbl 0444 `"Dayak Taman Sekado"', add
label define id10a_ethnic_lbl 0447 `"Dayak Tebang"', add
label define id10a_ethnic_lbl 0448 `"Dayak Tebidah"', add
label define id10a_ethnic_lbl 0449 `"Dayak Tenggalan"', add
label define id10a_ethnic_lbl 0450 `"Dayak Tengon"', add
label define id10a_ethnic_lbl 0453 `"Dayak Tinying"', add
label define id10a_ethnic_lbl 0454 `"Dayak Tobak"', add
label define id10a_ethnic_lbl 0455 `"Dayak Tola'"', add
label define id10a_ethnic_lbl 0457 `"Dayak Tunjung"', add
label define id10a_ethnic_lbl 0459 `"Dayak Uheng Kereho"', add
label define id10a_ethnic_lbl 0460 `"Dayak Ulu Ai'/Dayak Ulu Air"', add
label define id10a_ethnic_lbl 0461 `"Dayak Ulu Sekadau"', add
label define id10a_ethnic_lbl 0464 `"Dayak Undau"', add
label define id10a_ethnic_lbl 0466 `"Dayak Uud Danum"', add
label define id10a_ethnic_lbl 0467 `"Dayak Uud Danum Cihie"', add
label define id10a_ethnic_lbl 0468 `"Dayak Uud Danum Dohoi"', add
label define id10a_ethnic_lbl 0469 `"Dayak Aoheng"', add
label define id10a_ethnic_lbl 0471 `"Dayak Bakumpai"', add
label define id10a_ethnic_lbl 0472 `"Bara Dia"', add
label define id10a_ethnic_lbl 0474 `"Gaat"', add
label define id10a_ethnic_lbl 0476 `"Katingan/Ngaju"', add
label define id10a_ethnic_lbl 0477 `"Kendayan"', add
label define id10a_ethnic_lbl 0478 `"Lawangan"', add
label define id10a_ethnic_lbl 0479 `"Lepo Bakung/Lepo Jalan/Lepo Tukung/LepoTepu"', add
label define id10a_ethnic_lbl 0480 `"Maanyan Benua Lima/Maanyan Paju Lima"', add
label define id10a_ethnic_lbl 0481 `"Maanyan Dayu"', add
label define id10a_ethnic_lbl 0482 `"Maanyan Paju Epat"', add
label define id10a_ethnic_lbl 0483 `"Maanyan Paju Sepuluh"', add
label define id10a_ethnic_lbl 0484 `"Maanyan Paku"', add
label define id10a_ethnic_lbl 0485 `"Medang"', add
label define id10a_ethnic_lbl 0486 `"Murung"', add
label define id10a_ethnic_lbl 0488 `"Sarbas/Saribas/Sebayau"', add
label define id10a_ethnic_lbl 0489 `"Sekadau"', add
label define id10a_ethnic_lbl 0490 `"Siak Murung/Siang Murung"', add
label define id10a_ethnic_lbl 0491 `"Siang"', add
label define id10a_ethnic_lbl 0492 `"Tabuyan"', add
label define id10a_ethnic_lbl 0493 `"Tamuan"', add
label define id10a_ethnic_lbl 0494 `"Tomun"', add
label define id10a_ethnic_lbl 0495 `"Arkais/Dayak Bakumpai/Kota Waringin Barat/Sampit"', add
label define id10a_ethnic_lbl 0496 `"Dayak Bawo/Mangkatip/Taboyan"', add
label define id10a_ethnic_lbl 0497 `"Abal"', add
label define id10a_ethnic_lbl 0498 `"Balangan"', add
label define id10a_ethnic_lbl 0499 `"Banjar Kuala/Batang Banyu/Pahuluan"', add
label define id10a_ethnic_lbl 0500 `"Barangas"', add
label define id10a_ethnic_lbl 0502 `"Bugis Pagatan"', add
label define id10a_ethnic_lbl 0504 `"Dusun Deyah"', add
label define id10a_ethnic_lbl 0507 `"Maanyan"', add
label define id10a_ethnic_lbl 0508 `"Pagatan"', add
label define id10a_ethnic_lbl 0509 `"Pitap"', add
label define id10a_ethnic_lbl 0513 `"Mandar"', add
label define id10a_ethnic_lbl 0514 `"Abai/Tidung/Tingalan/Tudung"', add
label define id10a_ethnic_lbl 0515 `"Ahe"', add
label define id10a_ethnic_lbl 0516 `"Ayus/Bentian/Karau/Lemper/Leo Arak"', add
label define id10a_ethnic_lbl 0517 `"Badeng"', add
label define id10a_ethnic_lbl 0518 `"Bahau"', add
label define id10a_ethnic_lbl 0520 `"Banjar"', add
label define id10a_ethnic_lbl 0521 `"Banjau"', add
label define id10a_ethnic_lbl 0522 `"Basap"', add
label define id10a_ethnic_lbl 0524 `"Benuak"', add
label define id10a_ethnic_lbl 0525 `"Berau/Merau"', add
label define id10a_ethnic_lbl 0526 `"Berusu"', add
label define id10a_ethnic_lbl 0527 `"Bulungan/Murut"', add
label define id10a_ethnic_lbl 0530 `"Kutai"', add
label define id10a_ethnic_lbl 0531 `"Lapo Bakung/Lapo Bem/Lapo Ke/Lapo Kulit/Lapo Maut/Lapo Ngibun/Lapo Timai/Lapo Tukung"', add
label define id10a_ethnic_lbl 0532 `"Long Gelat/Paka"', add
label define id10a_ethnic_lbl 0533 `"Lundayeh"', add
label define id10a_ethnic_lbl 0534 `"Mangku Anam/Nyumit/Pauk/Purui/Singa Rasi/Tungku"', add
label define id10a_ethnic_lbl 0535 `"Merab"', add
label define id10a_ethnic_lbl 0537 `"Pasir"', add
label define id10a_ethnic_lbl 0538 `"Penihing"', add
label define id10a_ethnic_lbl 0542 `"Tagel/Tagol"', add
label define id10a_ethnic_lbl 0545 `"Tunjung"', add
label define id10a_ethnic_lbl 0546 `"Umaq Alim/Umaq Baka/Umaq Bakaq/Umaq Baqaq/Umaq Jalan/Umaq Lasan/Umaq Pramuka/Umaq Suling/Umaq Tau"', add
label define id10a_ethnic_lbl 0547 `"Umaq Badang/Umaq Kulit/Umaq Lokan"', add
label define id10a_ethnic_lbl 0549 `"Kajang/Kejin/Kenyah"', add
label define id10a_ethnic_lbl 0550 `"Anas/Toi"', add
label define id10a_ethnic_lbl 0554 `"Baka"', add
label define id10a_ethnic_lbl 0555 `"Bantai"', add
label define id10a_ethnic_lbl 0557 `"Bawo"', add
label define id10a_ethnic_lbl 0559 `"Bungan"', add
label define id10a_ethnic_lbl 0560 `"Cika"', add
label define id10a_ethnic_lbl 0561 `"Dawam/Rawan"', add
label define id10a_ethnic_lbl 0563 `"Humba/Sumba/Tau Humba"', add
label define id10a_ethnic_lbl 0567 `"Klemantan"', add
label define id10a_ethnic_lbl 0569 `"Lepo Tau"', add
label define id10a_ethnic_lbl 0570 `"Long Paka"', add
label define id10a_ethnic_lbl 0571 `"Malang"', add
label define id10a_ethnic_lbl 0572 `"Medan/Modang"', add
label define id10a_ethnic_lbl 0573 `"Nganayath"', add
label define id10a_ethnic_lbl 0577 `"Oloh masih"', add
label define id10a_ethnic_lbl 0578 `"Orang Gunung"', add
label define id10a_ethnic_lbl 0580 `"Rai Hawu/Savu/Sawu"', add
label define id10a_ethnic_lbl 0581 `"Rangga"', add
label define id10a_ethnic_lbl 0586 `"Sekayang"', add
label define id10a_ethnic_lbl 0588 `"Seru/Serul/Srul"', add
label define id10a_ethnic_lbl 0591 `"Tana'"', add
label define id10a_ethnic_lbl 0593 `"Timai"', add
label define id10a_ethnic_lbl 0600 `"Bantik"', add
label define id10a_ethnic_lbl 0601 `"Bintauna"', add
label define id10a_ethnic_lbl 0602 `"Bolaang Itang"', add
label define id10a_ethnic_lbl 0603 `"Bolaang Mongondow/Itang"', add
label define id10a_ethnic_lbl 0604 `"Bolaang Uki"', add
label define id10a_ethnic_lbl 0605 `"Borgo"', add
label define id10a_ethnic_lbl 0606 `"Kaidipang"', add
label define id10a_ethnic_lbl 0607 `"Kodipiang"', add
label define id10a_ethnic_lbl 0609 `"Minahasa"', add
label define id10a_ethnic_lbl 0610 `"Pasan/Ratahan"', add
label define id10a_ethnic_lbl 0611 `"Ponosakan"', add
label define id10a_ethnic_lbl 0612 `"Sangir"', add
label define id10a_ethnic_lbl 0613 `"Talaud"', add
label define id10a_ethnic_lbl 0614 `"Tombulu"', add
label define id10a_ethnic_lbl 0615 `"Tonsawang"', add
label define id10a_ethnic_lbl 0616 `"Tonsea/Tosawang"', add
label define id10a_ethnic_lbl 0617 `"Tonteboan"', add
label define id10a_ethnic_lbl 0618 `"Totembuan"', add
label define id10a_ethnic_lbl 0619 `"Toulour"', add
label define id10a_ethnic_lbl 0620 `"Tugutil"', add
label define id10a_ethnic_lbl 0621 `"Ampana"', add
label define id10a_ethnic_lbl 0622 `"Babongko/Bobangko"', add
label define id10a_ethnic_lbl 0623 `"Bada/Lore/Napu"', add
label define id10a_ethnic_lbl 0624 `"Bajao/Bajau/Bajo/Bayo/Wajo"', add
label define id10a_ethnic_lbl 0625 `"Balaesang"', add
label define id10a_ethnic_lbl 0626 `"Balantak/Tanutor"', add
label define id10a_ethnic_lbl 0627 `"Balesang"', add
label define id10a_ethnic_lbl 0628 `"Balinggi/Baluase/Bangga/Banggakoro/Kaili/Kulawi/Susu"', add
label define id10a_ethnic_lbl 0629 `"Bancea"', add
label define id10a_ethnic_lbl 0630 `"Banggai/Mian Banggai/Mian Sea-Sea"', add
label define id10a_ethnic_lbl 0631 `"Bare'e"', add
label define id10a_ethnic_lbl 0632 `"Besoa"', add
label define id10a_ethnic_lbl 0633 `"Binimaru/Lindu/Tosigi"', add
label define id10a_ethnic_lbl 0634 `"Bungku/Tobungku"', add
label define id10a_ethnic_lbl 0635 `"Buol"', add
label define id10a_ethnic_lbl 0638 `"Dampelas"', add
label define id10a_ethnic_lbl 0639 `"Dolo/Todolo"', add
label define id10a_ethnic_lbl 0640 `"Dondo"', add
label define id10a_ethnic_lbl 0641 `"Kadambuku"', add
label define id10a_ethnic_lbl 0643 `"Kalae"', add
label define id10a_ethnic_lbl 0644 `"Kaliki"', add
label define id10a_ethnic_lbl 0645 `"Kasimbar/Moutong/Patapa/Tinombo"', add
label define id10a_ethnic_lbl 0646 `"Lage/Tolage"', add
label define id10a_ethnic_lbl 0649 `"Lamusa/Lembo"', add
label define id10a_ethnic_lbl 0650 `"Lauje"', add
label define id10a_ethnic_lbl 0651 `"Ledo"', add
label define id10a_ethnic_lbl 0653 `"Marobo"', add
label define id10a_ethnic_lbl 0654 `"Masama"', add
label define id10a_ethnic_lbl 0655 `"Mian/Sea-sea"', add
label define id10a_ethnic_lbl 0659 `"Pada/Pakambia/Palende/Payapi/Pebato"', add
label define id10a_ethnic_lbl 0660 `"Palu/Parigi/Sigi/Tamungkolowi/Tokaili/Toraja Barat"', add
label define id10a_ethnic_lbl 0661 `"Pamona"', add
label define id10a_ethnic_lbl 0662 `"Pipikoro"', add
label define id10a_ethnic_lbl 0663 `"Poso"', add
label define id10a_ethnic_lbl 0664 `"Pu'umboto/Pu'umnana/Puumbato"', add
label define id10a_ethnic_lbl 0665 `"Raranggonau/Sibalaya/Sidondo/Toraja"', add
label define id10a_ethnic_lbl 0666 `"Rau/Tanandoa/Tawi/Unda'e"', add
label define id10a_ethnic_lbl 0667 `"Saluan"', add
label define id10a_ethnic_lbl 0668 `"Ta'a"', add
label define id10a_ethnic_lbl 0669 `"Tajio/Ta'jio"', add
label define id10a_ethnic_lbl 0670 `"Tialo"', add
label define id10a_ethnic_lbl 0671 `"To Bada"', add
label define id10a_ethnic_lbl 0672 `"To Molioa"', add
label define id10a_ethnic_lbl 0674 `"Togian"', add
label define id10a_ethnic_lbl 0676 `"Tojo"', add
label define id10a_ethnic_lbl 0677 `"Tolalaeo"', add
label define id10a_ethnic_lbl 0678 `"Toli Toli"', add
label define id10a_ethnic_lbl 0680 `"Tomenui/Tomini"', add
label define id10a_ethnic_lbl 0683 `"Tonandoa"', add
label define id10a_ethnic_lbl 0684 `"Umalasa"', add
label define id10a_ethnic_lbl 0685 `"Una-una"', add
label define id10a_ethnic_lbl 0686 `"Wana"', add
label define id10a_ethnic_lbl 0687 `"Wotu"', add
label define id10a_ethnic_lbl 0688 `"Amatoa/Ammatowa/Orang Kajang"', add
label define id10a_ethnic_lbl 0691 `"Benggaulu"', add
label define id10a_ethnic_lbl 0694 `"Bonerate"', add
label define id10a_ethnic_lbl 0695 `"Bugis"', add
label define id10a_ethnic_lbl 0697 `"Duri"', add
label define id10a_ethnic_lbl 0698 `"Galumpang/Kalumpang"', add
label define id10a_ethnic_lbl 0702 `"Kola"', add
label define id10a_ethnic_lbl 0703 `"Kompane"', add
label define id10a_ethnic_lbl 0704 `"Lorang"', add
label define id10a_ethnic_lbl 0705 `"Luwu"', add
label define id10a_ethnic_lbl 0706 `"Makassar"', add
label define id10a_ethnic_lbl 0707 `"Manombai"', add
label define id10a_ethnic_lbl 0708 `"Masen Rempulu"', add
label define id10a_ethnic_lbl 0709 `"Mautong"', add
label define id10a_ethnic_lbl 0710 `"Pado'e"', add
label define id10a_ethnic_lbl 0711 `"Pasir Laburan"', add
label define id10a_ethnic_lbl 0712 `"Rongkong"', add
label define id10a_ethnic_lbl 0714 `"Selayar"', add
label define id10a_ethnic_lbl 0718 `"Tobada"', add
label define id10a_ethnic_lbl 0720 `"Tobana"', add
label define id10a_ethnic_lbl 0725 `"Tomembuni/Tominbun/Topembuni"', add
label define id10a_ethnic_lbl 0728 `"Torampi"', add
label define id10a_ethnic_lbl 0734 `"Birumaru/Tobirumaru"', add
label define id10a_ethnic_lbl 0736 `"Bubis"', add
label define id10a_ethnic_lbl 0737 `"Bune"', add
label define id10a_ethnic_lbl 0738 `"Buton/Butong/Butung"', add
label define id10a_ethnic_lbl 0740 `"Ereke"', add
label define id10a_ethnic_lbl 0741 `"Gamkonora"', add
label define id10a_ethnic_lbl 0743 `"Kamarian"', add
label define id10a_ethnic_lbl 0744 `"Karey"', add
label define id10a_ethnic_lbl 0745 `"Kayeli"', add
label define id10a_ethnic_lbl 0747 `"Koba"', add
label define id10a_ethnic_lbl 0749 `"Laba"', add
label define id10a_ethnic_lbl 0752 `"Laha"', add
label define id10a_ethnic_lbl 0755 `"Laloda/Loloda"', add
label define id10a_ethnic_lbl 0759 `"Luang"', add
label define id10a_ethnic_lbl 0760 `"Luhu"', add
label define id10a_ethnic_lbl 0761 `"Makian"', add
label define id10a_ethnic_lbl 0762 `"Manusela"', add
label define id10a_ethnic_lbl 0763 `"Mare"', add
label define id10a_ethnic_lbl 0767 `"mekongga/Tolaki/Wiwirano"', add
label define id10a_ethnic_lbl 0768 `"Memale"', add
label define id10a_ethnic_lbl 0769 `"Moa"', add
label define id10a_ethnic_lbl 0770 `"Modole"', add
label define id10a_ethnic_lbl 0771 `"Moronene"', add
label define id10a_ethnic_lbl 0773 `"Muna"', add
label define id10a_ethnic_lbl 0775 `"Pasir Adang"', add
label define id10a_ethnic_lbl 0776 `"Pasir Balik"', add
label define id10a_ethnic_lbl 0780 `"Pasir Pematang"', add
label define id10a_ethnic_lbl 0783 `"Pasir Tajur"', add
label define id10a_ethnic_lbl 0784 `"Pasir Telake"', add
label define id10a_ethnic_lbl 0785 `"Pinihing"', add
label define id10a_ethnic_lbl 0786 `"Polahi"', add
label define id10a_ethnic_lbl 0791 `"Tanoturan"', add
label define id10a_ethnic_lbl 0793 `"To Ala Tanomanae"', add
label define id10a_ethnic_lbl 0794 `"Tofuti"', add
label define id10a_ethnic_lbl 0795 `"Tolaa"', add
label define id10a_ethnic_lbl 0796 `"Tolaki mekongga"', add
label define id10a_ethnic_lbl 0798 `"Tombelala"', add
label define id10a_ethnic_lbl 0799 `"Tomia"', add
label define id10a_ethnic_lbl 0800 `"Toridolo"', add
label define id10a_ethnic_lbl 0801 `"Toroda"', add
label define id10a_ethnic_lbl 0802 `"Wakatobi"', add
label define id10a_ethnic_lbl 0803 `"Wawonii"', add
label define id10a_ethnic_lbl 0804 `"Wolio"', add
label define id10a_ethnic_lbl 0805 `"Mariri/Molio/Mori Atas/Mori Bawah"', add
label define id10a_ethnic_lbl 0806 `"Atinggola"', add
label define id10a_ethnic_lbl 0807 `"Gorontalo"', add
label define id10a_ethnic_lbl 0808 `"Suwawa"', add
label define id10a_ethnic_lbl 0809 `"Mamasa"', add
label define id10a_ethnic_lbl 0810 `"Mamuju"', add
label define id10a_ethnic_lbl 0811 `"Pattae"', add
label define id10a_ethnic_lbl 0813 `"Towala-wala"', add
label define id10a_ethnic_lbl 0814 `"Towara"', add
label define id10a_ethnic_lbl 0815 `"Towatu"', add
label define id10a_ethnic_lbl 0818 `"Alfuru"', add
label define id10a_ethnic_lbl 0819 `"Alune"', add
label define id10a_ethnic_lbl 0820 `"Amahai"', add
label define id10a_ethnic_lbl 0821 `"Ambelau"', add
label define id10a_ethnic_lbl 0822 `"Ambon"', add
label define id10a_ethnic_lbl 0823 `"Aputai"', add
label define id10a_ethnic_lbl 0824 `"Aru"', add
label define id10a_ethnic_lbl 0825 `"Asilulu"', add
label define id10a_ethnic_lbl 0826 `"Babar"', add
label define id10a_ethnic_lbl 0827 `"Banda"', add
label define id10a_ethnic_lbl 0828 `"Barakai"', add
label define id10a_ethnic_lbl 0829 `"Bati"', add
label define id10a_ethnic_lbl 0830 `"Batuley"', add
label define id10a_ethnic_lbl 0833 `"Buru"', add
label define id10a_ethnic_lbl 0835 `"Dai"', add
label define id10a_ethnic_lbl 0836 `"Damar"', add
label define id10a_ethnic_lbl 0837 `"Dawelor"', add
label define id10a_ethnic_lbl 0838 `"Dawera"', add
label define id10a_ethnic_lbl 0840 `"Dobel"', add
label define id10a_ethnic_lbl 0841 `"Eli Elat"', add
label define id10a_ethnic_lbl 0844 `"Evav"', add
label define id10a_ethnic_lbl 0845 `"Fordata"', add
label define id10a_ethnic_lbl 0846 `"Geser-Gorom"', add
label define id10a_ethnic_lbl 0847 `"Haruku"', add
label define id10a_ethnic_lbl 0848 `"Hitu"', add
label define id10a_ethnic_lbl 0849 `"Hoti"', add
label define id10a_ethnic_lbl 0850 `"Huaulu"', add
label define id10a_ethnic_lbl 0851 `"Hulung"', add
label define id10a_ethnic_lbl 0852 `"Iliun"', add
label define id10a_ethnic_lbl 0853 `"Imroing"', add
label define id10a_ethnic_lbl 0854 `"Jailolo"', add
label define id10a_ethnic_lbl 0855 `"Kaibobo"', add
label define id10a_ethnic_lbl 0856 `"Kei"', add
label define id10a_ethnic_lbl 0857 `"Kisar"', add
label define id10a_ethnic_lbl 0858 `"Larike-Wakasihu"', add
label define id10a_ethnic_lbl 0860 `"Leti"', add
label define id10a_ethnic_lbl 0861 `"Lisabata-Nuniali"', add
label define id10a_ethnic_lbl 0862 `"Loa/Wai Apu"', add
label define id10a_ethnic_lbl 0863 `"Lumoli"', add
label define id10a_ethnic_lbl 0864 `"Mafa"', add
label define id10a_ethnic_lbl 0867 `"Naulu/Nuahunai/Nuaulu"', add
label define id10a_ethnic_lbl 0868 `"Nember/Orang Timur Laut"', add
label define id10a_ethnic_lbl 0869 `"Nila"', add
label define id10a_ethnic_lbl 0870 `"Nusalaut"', add
label define id10a_ethnic_lbl 0871 `"Oirata"', add
label define id10a_ethnic_lbl 0872 `"Pagu"', add
label define id10a_ethnic_lbl 0874 `"Pelauw"', add
label define id10a_ethnic_lbl 0875 `"Perai"', add
label define id10a_ethnic_lbl 0876 `"Piru"', add
label define id10a_ethnic_lbl 0877 `"Rana"', add
label define id10a_ethnic_lbl 0878 `"Roma/Romang/Ruma"', add
label define id10a_ethnic_lbl 0881 `"Saparua"', add
label define id10a_ethnic_lbl 0882 `"Seith-Kaitetu"', add
label define id10a_ethnic_lbl 0883 `"Selaru"', add
label define id10a_ethnic_lbl 0885 `"Sepa"', add
label define id10a_ethnic_lbl 0886 `"Seram"', add
label define id10a_ethnic_lbl 0888 `"Serua"', add
label define id10a_ethnic_lbl 0889 `"Seti-Liana"', add
label define id10a_ethnic_lbl 0890 `"Talur"', add
label define id10a_ethnic_lbl 0891 `"Tanimbar"', add
label define id10a_ethnic_lbl 0892 `"Tarangan"', add
label define id10a_ethnic_lbl 0894 `"Watubela"', add
label define id10a_ethnic_lbl 0895 `"Wemale"', add
label define id10a_ethnic_lbl 0896 `"Yalahatan"', add
label define id10a_ethnic_lbl 0897 `"Yamdena"', add
label define id10a_ethnic_lbl 0898 `"Boano/Buano"', add
label define id10a_ethnic_lbl 0899 `"Sula"', add
label define id10a_ethnic_lbl 0901 `"Bacan"', add
label define id10a_ethnic_lbl 0902 `"Biyoli/Waioli/Waoli"', add
label define id10a_ethnic_lbl 0903 `"Buli"', add
label define id10a_ethnic_lbl 0904 `"Galela"', add
label define id10a_ethnic_lbl 0906 `"Gane/Gani"', add
label define id10a_ethnic_lbl 0908 `"Halmahera"', add
label define id10a_ethnic_lbl 0909 `"Ibu"', add
label define id10a_ethnic_lbl 0910 `"Kadai"', add
label define id10a_ethnic_lbl 0911 `"Kao/Kau"', add
label define id10a_ethnic_lbl 0912 `"Kayoa"', add
label define id10a_ethnic_lbl 0913 `"Maba"', add
label define id10a_ethnic_lbl 0914 `"Makian Barat"', add
label define id10a_ethnic_lbl 0915 `"Makian Timur"', add
label define id10a_ethnic_lbl 0916 `"Mangole"', add
label define id10a_ethnic_lbl 0917 `"Manipa"', add
label define id10a_ethnic_lbl 0919 `"Morotai"', add
label define id10a_ethnic_lbl 0920 `"Patani"', add
label define id10a_ethnic_lbl 0921 `"Pugu"', add
label define id10a_ethnic_lbl 0922 `"Sa'u/Sahu"', add
label define id10a_ethnic_lbl 0923 `"Siboyo"', add
label define id10a_ethnic_lbl 0924 `"Tabayama"', add
label define id10a_ethnic_lbl 0925 `"Taliabu"', add
label define id10a_ethnic_lbl 0926 `"Ternate"', add
label define id10a_ethnic_lbl 0927 `"Tidore"', add
label define id10a_ethnic_lbl 0928 `"Tobaru"', add
label define id10a_ethnic_lbl 0929 `"Tobelo"', add
label define id10a_ethnic_lbl 0930 `"Weda"', add
label define id10a_ethnic_lbl 0931 `"Abau"', add
label define id10a_ethnic_lbl 0932 `"Abra"', add
label define id10a_ethnic_lbl 0933 `"Adora"', add
label define id10a_ethnic_lbl 0935 `"Aiso"', add
label define id10a_ethnic_lbl 0936 `"Amabai"', add
label define id10a_ethnic_lbl 0938 `"Amberbaken"', add
label define id10a_ethnic_lbl 0939 `"Arandai"', add
label define id10a_ethnic_lbl 0940 `"Arguni"', add
label define id10a_ethnic_lbl 0942 `"Atam/Hatam"', add
label define id10a_ethnic_lbl 0943 `"Atori"', add
label define id10a_ethnic_lbl 0944 `"Baham"', add
label define id10a_ethnic_lbl 0948 `"Biga"', add
label define id10a_ethnic_lbl 0950 `"Busami"', add
label define id10a_ethnic_lbl 0952 `"Iha/Kapaur"', add
label define id10a_ethnic_lbl 0953 `"Inanwatan"', add
label define id10a_ethnic_lbl 0954 `"Irahutu/Irarutu"', add
label define id10a_ethnic_lbl 0955 `"Kais"', add
label define id10a_ethnic_lbl 0956 `"Kamberau/Kambrau/Lambrau"', add
label define id10a_ethnic_lbl 0957 `"Karas"', add
label define id10a_ethnic_lbl 0958 `"Karon"', add
label define id10a_ethnic_lbl 0959 `"Kawe"', add
label define id10a_ethnic_lbl 0962 `"Kokoda"', add
label define id10a_ethnic_lbl 0963 `"Kuri"', add
label define id10a_ethnic_lbl 0964 `"Madik"', add
label define id10a_ethnic_lbl 0965 `"Mairasi"', add
label define id10a_ethnic_lbl 0967 `"Meibarat"', add
label define id10a_ethnic_lbl 0968 `"Meoswar"', add
label define id10a_ethnic_lbl 0970 `"Meyah/Meyak"', add
label define id10a_ethnic_lbl 0971 `"Moi/Mooi"', add
label define id10a_ethnic_lbl 0973 `"Onin"', add
label define id10a_ethnic_lbl 0974 `"Roon"', add
label define id10a_ethnic_lbl 0975 `"Seget"', add
label define id10a_ethnic_lbl 0977 `"Semini"', add
label define id10a_ethnic_lbl 0978 `"Sough"', add
label define id10a_ethnic_lbl 0980 `"Tabla"', add
label define id10a_ethnic_lbl 0982 `"Tehid/Tehit/Tehiyit"', add
label define id10a_ethnic_lbl 0984 `"Waigeo"', add
label define id10a_ethnic_lbl 0985 `"Wandamen"', add
label define id10a_ethnic_lbl 0991 `"Air Mati/Kwerba/Nabuk"', add
label define id10a_ethnic_lbl 0995 `"Ambai"', add
label define id10a_ethnic_lbl 0997 `"Amungme"', add
label define id10a_ethnic_lbl 0999 `"Ansus"', add
label define id10a_ethnic_lbl 1000 `"Anu/Anus"', add
label define id10a_ethnic_lbl 1002 `"Arfak/Ayfat"', add
label define id10a_ethnic_lbl 1003 `"Arui/Serui/Serui Laut"', add
label define id10a_ethnic_lbl 1004 `"Asmat/Betch-Mbup"', add
label define id10a_ethnic_lbl 1005 `"Atogoim/Autohwaim"', add
label define id10a_ethnic_lbl 1006 `"Auwye/Ekagi/Ekari/Kapauku/Me Mana/Simori/Tapiro/Yabi"', add
label define id10a_ethnic_lbl 1007 `"Auyu"', add
label define id10a_ethnic_lbl 1008 `"Away/Awyu"', add
label define id10a_ethnic_lbl 1009 `"Awye/Awyi"', add
label define id10a_ethnic_lbl 1010 `"Ayamaru"', add
label define id10a_ethnic_lbl 1011 `"Babe"', add
label define id10a_ethnic_lbl 1013 `"Bagusa"', add
label define id10a_ethnic_lbl 1015 `"Baso"', add
label define id10a_ethnic_lbl 1016 `"Baudi/Bauji/Bauri/Bazi"', add
label define id10a_ethnic_lbl 1017 `"Bausi"', add
label define id10a_ethnic_lbl 1020 `"Berik"', add
label define id10a_ethnic_lbl 1021 `"Betaf"', add
label define id10a_ethnic_lbl 1022 `"Bgu/Bonggo"', add
label define id10a_ethnic_lbl 1023 `"Biak-Numfor/Mafoorsch/Noefor"', add
label define id10a_ethnic_lbl 1026 `"Bipim/Biplim"', add
label define id10a_ethnic_lbl 1027 `"Bira"', add
label define id10a_ethnic_lbl 1028 `"Bismam"', add
label define id10a_ethnic_lbl 1029 `"Bonefa"', add
label define id10a_ethnic_lbl 1032 `"Borapasi"', add
label define id10a_ethnic_lbl 1034 `"Brazza/Cicak/Citak Mitak"', add
label define id10a_ethnic_lbl 1037 `"Burate"', add
label define id10a_ethnic_lbl 1038 `"Dabra"', add
label define id10a_ethnic_lbl 1039 `"Damal"', add
label define id10a_ethnic_lbl 1040 `"Dani/Ndani"', add
label define id10a_ethnic_lbl 1041 `"Dauwa/Nduga/Ndugwa"', add
label define id10a_ethnic_lbl 1042 `"Dem/Lem"', add
label define id10a_ethnic_lbl 1043 `"Demba"', add
label define id10a_ethnic_lbl 1045 `"Demta"', add
label define id10a_ethnic_lbl 1049 `"Dubu"', add
label define id10a_ethnic_lbl 1050 `"Edopi"', add
label define id10a_ethnic_lbl 1056 `"Faoau"', add
label define id10a_ethnic_lbl 1059 `"Foau"', add
label define id10a_ethnic_lbl 1060 `"Foya"', add
label define id10a_ethnic_lbl 1061 `"Gebe"', add
label define id10a_ethnic_lbl 1062 `"Gressi/Gressik"', add
label define id10a_ethnic_lbl 1063 `"Hambai"', add
label define id10a_ethnic_lbl 1067 `"Hupla"', add
label define id10a_ethnic_lbl 1069 `"Ina"', add
label define id10a_ethnic_lbl 1074 `"Isirawa/Okwasar"', add
label define id10a_ethnic_lbl 1077 `"Jaban"', add
label define id10a_ethnic_lbl 1078 `"Jair"', add
label define id10a_ethnic_lbl 1081 `"Joerat"', add
label define id10a_ethnic_lbl 1084 `"Kaigir/Kayagar/Kayigi"', add
label define id10a_ethnic_lbl 1086 `"Kalabra"', add
label define id10a_ethnic_lbl 1087 `"Kaladar/Kimagama"', add
label define id10a_ethnic_lbl 1088 `"Kamoro"', add
label define id10a_ethnic_lbl 1090 `"Kanum"', add
label define id10a_ethnic_lbl 1091 `"Kaokonau/Komora/Lakahia/Maswena/Nagramadu/Neferipi/Umari"', add
label define id10a_ethnic_lbl 1093 `"Kapauri/Kapori"', add
label define id10a_ethnic_lbl 1095 `"Kaptiau"', add
label define id10a_ethnic_lbl 1098 `"Kasueri"', add
label define id10a_ethnic_lbl 1102 `"Kaureh"', add
label define id10a_ethnic_lbl 1105 `"Kayu Batu/Kayu Pulau"', add
label define id10a_ethnic_lbl 1106 `"Keder"', add
label define id10a_ethnic_lbl 1107 `"Kendate"', add
label define id10a_ethnic_lbl 1108 `"Kerom"', add
label define id10a_ethnic_lbl 1110 `"Ketengban"', add
label define id10a_ethnic_lbl 1111 `"Kiamorep"', add
label define id10a_ethnic_lbl 1113 `"Kimyal"', add
label define id10a_ethnic_lbl 1114 `"Kiri-kiri"', add
label define id10a_ethnic_lbl 1116 `"Kokonau"', add
label define id10a_ethnic_lbl 1117 `"Kombai"', add
label define id10a_ethnic_lbl 1120 `"Korowai"', add
label define id10a_ethnic_lbl 1121 `"Korufa"', add
label define id10a_ethnic_lbl 1123 `"Kotogut"', add
label define id10a_ethnic_lbl 1126 `"Kurudu"', add
label define id10a_ethnic_lbl 1128 `"Kwesten"', add
label define id10a_ethnic_lbl 1130 `"Lani"', add
label define id10a_ethnic_lbl 1131 `"Lani Barat"', add
label define id10a_ethnic_lbl 1132 `"Lani Lembah"', add
label define id10a_ethnic_lbl 1133 `"Lau"', add
label define id10a_ethnic_lbl 1135 `"Liki"', add
label define id10a_ethnic_lbl 1136 `"Maden"', add
label define id10a_ethnic_lbl 1137 `"Madidwana"', add
label define id10a_ethnic_lbl 1138 `"Maklew"', add
label define id10a_ethnic_lbl 1139 `"Mander"', add
label define id10a_ethnic_lbl 1140 `"Mandobo"', add
label define id10a_ethnic_lbl 1141 `"Manem"', add
label define id10a_ethnic_lbl 1145 `"Mapi"', add
label define id10a_ethnic_lbl 1146 `"Marembori"', add
label define id10a_ethnic_lbl 1148 `"Marin"', add
label define id10a_ethnic_lbl 1149 `"Marind Anim"', add
label define id10a_ethnic_lbl 1153 `"Mee"', add
label define id10a_ethnic_lbl 1158 `"Mey Brat"', add
label define id10a_ethnic_lbl 1159 `"Mimika"', add
label define id10a_ethnic_lbl 1160 `"Mintamani"', add
label define id10a_ethnic_lbl 1161 `"Mire"', add
label define id10a_ethnic_lbl 1162 `"Modan"', add
label define id10a_ethnic_lbl 1163 `"Moire"', add
label define id10a_ethnic_lbl 1164 `"Molof"', add
label define id10a_ethnic_lbl 1165 `"Mombum"', add
label define id10a_ethnic_lbl 1166 `"Momuna"', add
label define id10a_ethnic_lbl 1167 `"Moni"', add
label define id10a_ethnic_lbl 1168 `"Mor"', add
label define id10a_ethnic_lbl 1171 `"Morwap"', add
label define id10a_ethnic_lbl 1173 `"Mosena"', add
label define id10a_ethnic_lbl 1174 `"Mukamuga"', add
label define id10a_ethnic_lbl 1176 `"Muri"', add
label define id10a_ethnic_lbl 1177 `"Murop"', add
label define id10a_ethnic_lbl 1178 `"Muyu"', add
label define id10a_ethnic_lbl 1179 `"Nafri"', add
label define id10a_ethnic_lbl 1181 `"Nambrung/Nimboran"', add
label define id10a_ethnic_lbl 1186 `"Nerigo"', add
label define id10a_ethnic_lbl 1187 `"Ngalik/Yali/Yalik"', add
label define id10a_ethnic_lbl 1188 `"Ngalum"', add
label define id10a_ethnic_lbl 1191 `"Nisa"', add
label define id10a_ethnic_lbl 1193 `"Okparimen"', add
label define id10a_ethnic_lbl 1194 `"Oria/Uria"', add
label define id10a_ethnic_lbl 1195 `"Ormu"', add
label define id10a_ethnic_lbl 1197 `"Otodema"', add
label define id10a_ethnic_lbl 1199 `"Palata"', add
label define id10a_ethnic_lbl 1200 `"Papasena"', add
label define id10a_ethnic_lbl 1201 `"Papuma"', add
label define id10a_ethnic_lbl 1202 `"Patimuni"', add
label define id10a_ethnic_lbl 1203 `"Pesekhem"', add
label define id10a_ethnic_lbl 1204 `"Pisa"', add
label define id10a_ethnic_lbl 1205 `"Podena"', add
label define id10a_ethnic_lbl 1206 `"Pom"', add
label define id10a_ethnic_lbl 1208 `"Riantana"', add
label define id10a_ethnic_lbl 1209 `"Safan"', add
label define id10a_ethnic_lbl 1210 `"Sailolof"', add
label define id10a_ethnic_lbl 1211 `"Samarokena"', add
label define id10a_ethnic_lbl 1212 `"Sangke"', add
label define id10a_ethnic_lbl 1214 `"Sarmi"', add
label define id10a_ethnic_lbl 1216 `"Sauri"', add
label define id10a_ethnic_lbl 1217 `"Sause"', add
label define id10a_ethnic_lbl 1220 `"Saweh"', add
label define id10a_ethnic_lbl 1221 `"Sawi"', add
label define id10a_ethnic_lbl 1225 `"Seka/Seko/Sko"', add
label define id10a_ethnic_lbl 1228 `"Senggi"', add
label define id10a_ethnic_lbl 1229 `"Sentani"', add
label define id10a_ethnic_lbl 1234 `"Simai"', add
label define id10a_ethnic_lbl 1237 `"Skouw"', add
label define id10a_ethnic_lbl 1238 `"Sobei"', add
label define id10a_ethnic_lbl 1240 `"Sota"', add
label define id10a_ethnic_lbl 1241 `"Sowei"', add
label define id10a_ethnic_lbl 1243 `"Sumaghaghe Tabati"', add
label define id10a_ethnic_lbl 1246 `"Tabati"', add
label define id10a_ethnic_lbl 1247 `"Tabu"', add
label define id10a_ethnic_lbl 1250 `"Tamagario"', add
label define id10a_ethnic_lbl 1251 `"Tamnim"', add
label define id10a_ethnic_lbl 1252 `"Taori"', add
label define id10a_ethnic_lbl 1253 `"Tapuma"', add
label define id10a_ethnic_lbl 1254 `"Tarfia/Tarpia"', add
label define id10a_ethnic_lbl 1257 `"Tause"', add
label define id10a_ethnic_lbl 1258 `"Timorini"', add
label define id10a_ethnic_lbl 1262 `"Tunggare"', add
label define id10a_ethnic_lbl 1263 `"Turu"', add
label define id10a_ethnic_lbl 1266 `"Una"', add
label define id10a_ethnic_lbl 1273 `"Usku"', add
label define id10a_ethnic_lbl 1275 `"Waina"', add
label define id10a_ethnic_lbl 1277 `"Waipu"', add
label define id10a_ethnic_lbl 1280 `"Walak"', add
label define id10a_ethnic_lbl 1281 `"Walsa"', add
label define id10a_ethnic_lbl 1282 `"Wambon"', add
label define id10a_ethnic_lbl 1283 `"Wamesa"', add
label define id10a_ethnic_lbl 1286 `"Wanggo/Wanggom"', add
label define id10a_ethnic_lbl 1287 `"Wano"', add
label define id10a_ethnic_lbl 1288 `"Warembori"', add
label define id10a_ethnic_lbl 1290 `"Waris"', add
label define id10a_ethnic_lbl 1292 `"Waropen/Worpen"', add
label define id10a_ethnic_lbl 1295 `"Woda/Wodani/Wolani"', add
label define id10a_ethnic_lbl 1297 `"Woi"', add
label define id10a_ethnic_lbl 1298 `"Woriasi"', add
label define id10a_ethnic_lbl 1299 `"Yaban"', add
label define id10a_ethnic_lbl 1301 `"Yaghay"', add
label define id10a_ethnic_lbl 1304 `"Yaly"', add
label define id10a_ethnic_lbl 1306 `"Yanggon"', add
label define id10a_ethnic_lbl 1308 `"Yansu"', add
label define id10a_ethnic_lbl 1309 `"Yapen"', add
label define id10a_ethnic_lbl 1311 `"Yaur"', add
label define id10a_ethnic_lbl 1313 `"Yey"', add
label define id10a_ethnic_lbl 1314 `"Aiduma/Kaiwai/Kayumerah/Koiwai/Namatota"', add
label define id10a_ethnic_lbl 1315 `"Kemtuik/Kemtuk"', add
label define id10a_ethnic_lbl 2000 `"Other tribes of Sumatra"', add
label define id10a_ethnic_lbl 3000 `"Other tribes of Java"', add
label define id10a_ethnic_lbl 9000 `"Other tribes"', add
label define id10a_ethnic_lbl 4000 `"Other tribes of Bali and Nusa Tenggara"', add
label define id10a_ethnic_lbl 5000 `"Other tribes of Kalimantan"', add
label define id10a_ethnic_lbl 6000 `"Other tribes of Sulawesi"', add
label define id10a_ethnic_lbl 7000 `"Other tribes of Maluku"', add
label define id10a_ethnic_lbl 8000 `"Other tribes of Papua"', add
label define id10a_ethnic_lbl 9100 `"American"', add
label define id10a_ethnic_lbl 9110 `"Arab"', add
label define id10a_ethnic_lbl 9121 `"Chinese"', add
label define id10a_ethnic_lbl 9122 `"Chinese PRC"', add
label define id10a_ethnic_lbl 9123 `"Chinese Taiwan"', add
label define id10a_ethnic_lbl 9130 `"Indian"', add
label define id10a_ethnic_lbl 9140 `"English"', add
label define id10a_ethnic_lbl 9150 `"Japanese"', add
label define id10a_ethnic_lbl 9160 `"Korean"', add
label define id10a_ethnic_lbl 9170 `"Malaysian"', add
label define id10a_ethnic_lbl 9180 `"Pakistani"', add
label define id10a_ethnic_lbl 9190 `"Filipino"', add
label define id10a_ethnic_lbl 9200 `"Thai"', add
label define id10a_ethnic_lbl 9210 `"Dutch"', add
label define id10a_ethnic_lbl 9999 `"NIU (not in universe)"', add
label values id10a_ethnic id10a_ethnic_lbl

label define id10a_foreign_lbl 01 `"Southeast Asia"'
label define id10a_foreign_lbl 02 `"China"', add
label define id10a_foreign_lbl 03 `"South Asia"', add
label define id10a_foreign_lbl 04 `"Japan"', add
label define id10a_foreign_lbl 05 `"South Korea"', add
label define id10a_foreign_lbl 06 `"Middle East"', add
label define id10a_foreign_lbl 07 `"Other Asia"', add
label define id10a_foreign_lbl 08 `"Australia"', add
label define id10a_foreign_lbl 09 `"South Pacific"', add
label define id10a_foreign_lbl 10 `"United States"', add
label define id10a_foreign_lbl 11 `"Caribbean"', add
label define id10a_foreign_lbl 12 `"Central and South America"', add
label define id10a_foreign_lbl 14 `"Canada"', add
label define id10a_foreign_lbl 15 `"Africa"', add
label define id10a_foreign_lbl 20 `"Netherlands"', add
label define id10a_foreign_lbl 21 `"Other European country"', add
label define id10a_foreign_lbl 23 `"Other"', add
label define id10a_foreign_lbl 24 `"Stateless"', add
label define id10a_foreign_lbl 99 `"NIU (not in universe)"', add
label values id10a_foreign id10a_foreign_lbl

label define id10a_prov5_lbl 11 `"Nanggroe Aceh Darussalam"'
label define id10a_prov5_lbl 12 `"Sumatera Utara"', add
label define id10a_prov5_lbl 13 `"Sumatera Barat"', add
label define id10a_prov5_lbl 14 `"Riau"', add
label define id10a_prov5_lbl 15 `"Jambi"', add
label define id10a_prov5_lbl 16 `"Sumatera Selatan"', add
label define id10a_prov5_lbl 17 `"Bengkulu"', add
label define id10a_prov5_lbl 18 `"Lampung"', add
label define id10a_prov5_lbl 19 `"Bangka Belitung"', add
label define id10a_prov5_lbl 21 `"Kepulauan Riau"', add
label define id10a_prov5_lbl 31 `"DKI Jakarta"', add
label define id10a_prov5_lbl 32 `"Jawa Barat"', add
label define id10a_prov5_lbl 33 `"Jawa Tengah"', add
label define id10a_prov5_lbl 34 `"DI Yogyakarta"', add
label define id10a_prov5_lbl 35 `"Jawa Timur"', add
label define id10a_prov5_lbl 36 `"Banten"', add
label define id10a_prov5_lbl 51 `"Bali"', add
label define id10a_prov5_lbl 52 `"Nusa Tenggara Barat"', add
label define id10a_prov5_lbl 53 `"Nusa Tenggara Timur"', add
label define id10a_prov5_lbl 61 `"Kalimantan Barat"', add
label define id10a_prov5_lbl 62 `"Kalimantan Tengah"', add
label define id10a_prov5_lbl 63 `"Kalimantan Selatan"', add
label define id10a_prov5_lbl 64 `"Kalimantan Timur"', add
label define id10a_prov5_lbl 71 `"Sulawesi Utara"', add
label define id10a_prov5_lbl 72 `"Sulawesi Tengah"', add
label define id10a_prov5_lbl 73 `"Sulawesi Selatan"', add
label define id10a_prov5_lbl 74 `"Sulawesi Tenggara"', add
label define id10a_prov5_lbl 75 `"Gorontalo"', add
label define id10a_prov5_lbl 76 `"Sulawesi Barat"', add
label define id10a_prov5_lbl 81 `"Maluku"', add
label define id10a_prov5_lbl 82 `"Maluku Utara"', add
label define id10a_prov5_lbl 91 `"Papua Barat"', add
label define id10a_prov5_lbl 94 `"Papua"', add
label define id10a_prov5_lbl 98 `"Abroad"', add
label define id10a_prov5_lbl 99 `"NIU (not in universe)"', add
label values id10a_prov5 id10a_prov5_lbl

label define id10a_dist5_lbl 1101 `"Simeuleu"'
label define id10a_dist5_lbl 1102 `"Aceh Singkil"', add
label define id10a_dist5_lbl 1103 `"Aceh Selatan"', add
label define id10a_dist5_lbl 1104 `"Aceh Tenggara"', add
label define id10a_dist5_lbl 1105 `"Aceh Timur"', add
label define id10a_dist5_lbl 1106 `"Aceh Tengah"', add
label define id10a_dist5_lbl 1107 `"Aceh Barat"', add
label define id10a_dist5_lbl 1108 `"Aceh Besar"', add
label define id10a_dist5_lbl 1109 `"Pidie"', add
label define id10a_dist5_lbl 1110 `"Bireun"', add
label define id10a_dist5_lbl 1111 `"Aceh Utara"', add
label define id10a_dist5_lbl 1112 `"Aceh Barat Daya"', add
label define id10a_dist5_lbl 1113 `"Gayo Lues"', add
label define id10a_dist5_lbl 1114 `"Aceh Tamiang"', add
label define id10a_dist5_lbl 1115 `"Nagan Raya"', add
label define id10a_dist5_lbl 1116 `"Aceh Jaya"', add
label define id10a_dist5_lbl 1117 `"Bener Meriah"', add
label define id10a_dist5_lbl 1118 `"Pidie Jaya"', add
label define id10a_dist5_lbl 1171 `"Banda Aceh"', add
label define id10a_dist5_lbl 1172 `"Sabang"', add
label define id10a_dist5_lbl 1173 `"Langsa"', add
label define id10a_dist5_lbl 1174 `"Lhokseumawe"', add
label define id10a_dist5_lbl 1175 `"Subulussalam"', add
label define id10a_dist5_lbl 1201 `"Nias"', add
label define id10a_dist5_lbl 1202 `"Mandailing Natal"', add
label define id10a_dist5_lbl 1203 `"Tapanuli Selatan"', add
label define id10a_dist5_lbl 1204 `"Tapanuli Tengah"', add
label define id10a_dist5_lbl 1205 `"Tapanuli Utara"', add
label define id10a_dist5_lbl 1206 `"Toba Samosir"', add
label define id10a_dist5_lbl 1207 `"Labuhan Batu"', add
label define id10a_dist5_lbl 1208 `"Asahan"', add
label define id10a_dist5_lbl 1209 `"Simalungun"', add
label define id10a_dist5_lbl 1210 `"Dairi"', add
label define id10a_dist5_lbl 1211 `"Karo"', add
label define id10a_dist5_lbl 1212 `"Deli Serdang"', add
label define id10a_dist5_lbl 1213 `"Langkat"', add
label define id10a_dist5_lbl 1214 `"Nias Selatan"', add
label define id10a_dist5_lbl 1215 `"Humbang Hasundutan"', add
label define id10a_dist5_lbl 1216 `"Pakpak Bharat"', add
label define id10a_dist5_lbl 1217 `"Samosir"', add
label define id10a_dist5_lbl 1218 `"Serdang Bedagai"', add
label define id10a_dist5_lbl 1219 `"Batu Bara"', add
label define id10a_dist5_lbl 1220 `"Padang Lawas Utara"', add
label define id10a_dist5_lbl 1221 `"Padang Lawas"', add
label define id10a_dist5_lbl 1222 `"Labuhan Batu Selatan"', add
label define id10a_dist5_lbl 1223 `"Labuhan Batu Utara"', add
label define id10a_dist5_lbl 1224 `"Nias Utara"', add
label define id10a_dist5_lbl 1225 `"Nias Barat"', add
label define id10a_dist5_lbl 1271 `"Sibolga"', add
label define id10a_dist5_lbl 1272 `"Tanjung Balai"', add
label define id10a_dist5_lbl 1273 `"Pematang Siantar"', add
label define id10a_dist5_lbl 1274 `"Tebing Tinggi"', add
label define id10a_dist5_lbl 1275 `"Medan"', add
label define id10a_dist5_lbl 1276 `"Binjai"', add
label define id10a_dist5_lbl 1277 `"Padangsidimpuan"', add
label define id10a_dist5_lbl 1278 `"Kota Gunungsitoli"', add
label define id10a_dist5_lbl 1301 `"Kepulauan Mentawai"', add
label define id10a_dist5_lbl 1302 `"Pesisir Selatan"', add
label define id10a_dist5_lbl 1303 `"Solok"', add
label define id10a_dist5_lbl 1304 `"Sawahlunto/Sijunjung"', add
label define id10a_dist5_lbl 1305 `"Tanah Datar"', add
label define id10a_dist5_lbl 1306 `"Padang Pariaman"', add
label define id10a_dist5_lbl 1307 `"Agam"', add
label define id10a_dist5_lbl 1308 `"Lima Puluh Koto"', add
label define id10a_dist5_lbl 1309 `"Pasaman"', add
label define id10a_dist5_lbl 1310 `"Solok Selatan"', add
label define id10a_dist5_lbl 1311 `"Dharmasraya"', add
label define id10a_dist5_lbl 1312 `"Pasaman Barat"', add
label define id10a_dist5_lbl 1371 `"Kota Padang"', add
label define id10a_dist5_lbl 1372 `"Kota Solok"', add
label define id10a_dist5_lbl 1373 `"Kota Sawah Lunto"', add
label define id10a_dist5_lbl 1374 `"Kota Padang Panjang"', add
label define id10a_dist5_lbl 1375 `"Kota Bukittinggi"', add
label define id10a_dist5_lbl 1376 `"Kota Payakumbuh"', add
label define id10a_dist5_lbl 1377 `"Kota Pariaman"', add
label define id10a_dist5_lbl 1401 `"Kuantan Singingi"', add
label define id10a_dist5_lbl 1402 `"Indragiri Hulu"', add
label define id10a_dist5_lbl 1403 `"Indragiri Hilir"', add
label define id10a_dist5_lbl 1404 `"Pelalawan"', add
label define id10a_dist5_lbl 1405 `"Siak"', add
label define id10a_dist5_lbl 1406 `"Kampar"', add
label define id10a_dist5_lbl 1407 `"Rokan Hulu"', add
label define id10a_dist5_lbl 1408 `"Bengkalis"', add
label define id10a_dist5_lbl 1409 `"Rokan Hilir"', add
label define id10a_dist5_lbl 1410 `"Kepulauan Meranti"', add
label define id10a_dist5_lbl 1471 `"Pekan Baru"', add
label define id10a_dist5_lbl 1473 `"Dumai"', add
label define id10a_dist5_lbl 1501 `"Kerinci"', add
label define id10a_dist5_lbl 1502 `"Merangin"', add
label define id10a_dist5_lbl 1503 `"Sarolangun"', add
label define id10a_dist5_lbl 1504 `"Batang Hari"', add
label define id10a_dist5_lbl 1505 `"Muaro Jambi"', add
label define id10a_dist5_lbl 1506 `"Tanjung Jabung Timur"', add
label define id10a_dist5_lbl 1507 `"Tanjung Jabung Barat"', add
label define id10a_dist5_lbl 1508 `"Tebo"', add
label define id10a_dist5_lbl 1509 `"Bungo"', add
label define id10a_dist5_lbl 1571 `"Jambi"', add
label define id10a_dist5_lbl 1572 `"Kota Sungai Penuh"', add
label define id10a_dist5_lbl 1601 `"Ogan Komering Ulu"', add
label define id10a_dist5_lbl 1602 `"Ogan Komering Ilir"', add
label define id10a_dist5_lbl 1603 `"Muara Enim"', add
label define id10a_dist5_lbl 1604 `"Lahat"', add
label define id10a_dist5_lbl 1605 `"Musi Rawas"', add
label define id10a_dist5_lbl 1606 `"Musi Banyuasin"', add
label define id10a_dist5_lbl 1607 `"Banyu Asin"', add
label define id10a_dist5_lbl 1608 `"Ogan Komering Ulu Selatan"', add
label define id10a_dist5_lbl 1609 `"Ogan Komering Ulu Timur"', add
label define id10a_dist5_lbl 1610 `"Ogan Ilir"', add
label define id10a_dist5_lbl 1611 `"Empat Lawang"', add
label define id10a_dist5_lbl 1671 `"Palembang"', add
label define id10a_dist5_lbl 1672 `"Prabumulih"', add
label define id10a_dist5_lbl 1673 `"Pagar Alam"', add
label define id10a_dist5_lbl 1674 `"Lubuklinggau"', add
label define id10a_dist5_lbl 1701 `"Bengkulu Selatan"', add
label define id10a_dist5_lbl 1702 `"Rejang Lebong"', add
label define id10a_dist5_lbl 1703 `"Bengkulu Utara"', add
label define id10a_dist5_lbl 1704 `"Kaur"', add
label define id10a_dist5_lbl 1705 `"Seluma"', add
label define id10a_dist5_lbl 1706 `"Mukomuko"', add
label define id10a_dist5_lbl 1707 `"Lebong"', add
label define id10a_dist5_lbl 1708 `"Kepahiang"', add
label define id10a_dist5_lbl 1709 `"Bengkulu Tengah"', add
label define id10a_dist5_lbl 1771 `"Bengkulu"', add
label define id10a_dist5_lbl 1801 `"Lampung Barat"', add
label define id10a_dist5_lbl 1802 `"Tanggamus"', add
label define id10a_dist5_lbl 1803 `"Lampung Selatan"', add
label define id10a_dist5_lbl 1804 `"Lampung Timur"', add
label define id10a_dist5_lbl 1805 `"Lampung Tengah"', add
label define id10a_dist5_lbl 1806 `"Lampung Utara"', add
label define id10a_dist5_lbl 1807 `"Way Kanan"', add
label define id10a_dist5_lbl 1808 `"Tulangbawang"', add
label define id10a_dist5_lbl 1809 `"Pesawaran"', add
label define id10a_dist5_lbl 1810 `"Pringsewu"', add
label define id10a_dist5_lbl 1811 `"Mesuji"', add
label define id10a_dist5_lbl 1812 `"Tulangbawang Barat"', add
label define id10a_dist5_lbl 1871 `"Bandar Lampung"', add
label define id10a_dist5_lbl 1872 `"Metro"', add
label define id10a_dist5_lbl 1901 `"Bangka"', add
label define id10a_dist5_lbl 1902 `"Belitung"', add
label define id10a_dist5_lbl 1903 `"Bangka Barat"', add
label define id10a_dist5_lbl 1904 `"Bangka Tengah"', add
label define id10a_dist5_lbl 1905 `"Bangka Selatan"', add
label define id10a_dist5_lbl 1906 `"Belitung Timur"', add
label define id10a_dist5_lbl 1971 `"Pangkal Pinang"', add
label define id10a_dist5_lbl 2101 `"Karimun"', add
label define id10a_dist5_lbl 2102 `"Bintan"', add
label define id10a_dist5_lbl 2103 `"Natuna"', add
label define id10a_dist5_lbl 2104 `"Lingga"', add
label define id10a_dist5_lbl 2105 `"Kepulauan Anambas"', add
label define id10a_dist5_lbl 2171 `"Batam"', add
label define id10a_dist5_lbl 2172 `"Tanjung Pinang"', add
label define id10a_dist5_lbl 3101 `"Kepulauan Seribu"', add
label define id10a_dist5_lbl 3171 `"Jakarta Selatan"', add
label define id10a_dist5_lbl 3172 `"Jakarta Timur"', add
label define id10a_dist5_lbl 3173 `"Jakarta Pusat"', add
label define id10a_dist5_lbl 3174 `"Jakarta Barat"', add
label define id10a_dist5_lbl 3175 `"Jakarta Utara"', add
label define id10a_dist5_lbl 3201 `"Bogor"', add
label define id10a_dist5_lbl 3202 `"Sukabumi"', add
label define id10a_dist5_lbl 3203 `"Cianjur"', add
label define id10a_dist5_lbl 3204 `"Bandung"', add
label define id10a_dist5_lbl 3205 `"Garut"', add
label define id10a_dist5_lbl 3206 `"Tasikmalaya"', add
label define id10a_dist5_lbl 3207 `"Ciamis"', add
label define id10a_dist5_lbl 3208 `"Kuningan"', add
label define id10a_dist5_lbl 3209 `"Cirebon"', add
label define id10a_dist5_lbl 3210 `"Majalengka"', add
label define id10a_dist5_lbl 3211 `"Sumedang"', add
label define id10a_dist5_lbl 3212 `"Indramayu"', add
label define id10a_dist5_lbl 3213 `"Subang"', add
label define id10a_dist5_lbl 3214 `"Purwakarta"', add
label define id10a_dist5_lbl 3215 `"Karawang"', add
label define id10a_dist5_lbl 3216 `"Bekasi"', add
label define id10a_dist5_lbl 3217 `"Bandung Barat"', add
label define id10a_dist5_lbl 3271 `"Bogor"', add
label define id10a_dist5_lbl 3272 `"Sukabumi"', add
label define id10a_dist5_lbl 3273 `"Bandung"', add
label define id10a_dist5_lbl 3274 `"Cirebon"', add
label define id10a_dist5_lbl 3275 `"Bekasi"', add
label define id10a_dist5_lbl 3276 `"Depok"', add
label define id10a_dist5_lbl 3277 `"Cimahi"', add
label define id10a_dist5_lbl 3278 `"Tasikmalaya"', add
label define id10a_dist5_lbl 3279 `"Banjar"', add
label define id10a_dist5_lbl 3301 `"Cilacap"', add
label define id10a_dist5_lbl 3302 `"Banyumas"', add
label define id10a_dist5_lbl 3303 `"Purbalingga"', add
label define id10a_dist5_lbl 3304 `"Banjarnegara"', add
label define id10a_dist5_lbl 3305 `"Kebumen"', add
label define id10a_dist5_lbl 3306 `"Purworejo"', add
label define id10a_dist5_lbl 3307 `"Wonosobo"', add
label define id10a_dist5_lbl 3308 `"Magelang"', add
label define id10a_dist5_lbl 3309 `"Boyolali"', add
label define id10a_dist5_lbl 3310 `"Klaten"', add
label define id10a_dist5_lbl 3311 `"Sukoharjo"', add
label define id10a_dist5_lbl 3312 `"Wonogiri"', add
label define id10a_dist5_lbl 3313 `"Karanganyar"', add
label define id10a_dist5_lbl 3314 `"Sragen"', add
label define id10a_dist5_lbl 3315 `"Grobogan"', add
label define id10a_dist5_lbl 3316 `"Blora"', add
label define id10a_dist5_lbl 3317 `"Rembang"', add
label define id10a_dist5_lbl 3318 `"Pati"', add
label define id10a_dist5_lbl 3319 `"Kudus"', add
label define id10a_dist5_lbl 3320 `"Jepara"', add
label define id10a_dist5_lbl 3321 `"Demak"', add
label define id10a_dist5_lbl 3322 `"Semarang"', add
label define id10a_dist5_lbl 3323 `"Temanggung"', add
label define id10a_dist5_lbl 3324 `"Kendal"', add
label define id10a_dist5_lbl 3325 `"Batang"', add
label define id10a_dist5_lbl 3326 `"Pekalongan"', add
label define id10a_dist5_lbl 3327 `"Pemalang"', add
label define id10a_dist5_lbl 3328 `"Tegal"', add
label define id10a_dist5_lbl 3329 `"Brebes"', add
label define id10a_dist5_lbl 3371 `"Magelang"', add
label define id10a_dist5_lbl 3372 `"Surakarta"', add
label define id10a_dist5_lbl 3373 `"Salatiga"', add
label define id10a_dist5_lbl 3374 `"Semarang"', add
label define id10a_dist5_lbl 3375 `"Pekalongan"', add
label define id10a_dist5_lbl 3376 `"Tegal"', add
label define id10a_dist5_lbl 3401 `"Kulon Progo"', add
label define id10a_dist5_lbl 3402 `"Bantul"', add
label define id10a_dist5_lbl 3403 `"Gunung Kidul"', add
label define id10a_dist5_lbl 3404 `"Sleman"', add
label define id10a_dist5_lbl 3471 `"Yogyakarta"', add
label define id10a_dist5_lbl 3501 `"Pacitan"', add
label define id10a_dist5_lbl 3502 `"Ponorogo"', add
label define id10a_dist5_lbl 3503 `"Trenggalek"', add
label define id10a_dist5_lbl 3504 `"Tulungagung"', add
label define id10a_dist5_lbl 3505 `"Blitar"', add
label define id10a_dist5_lbl 3506 `"Kediri"', add
label define id10a_dist5_lbl 3507 `"Malang"', add
label define id10a_dist5_lbl 3508 `"Lumajang"', add
label define id10a_dist5_lbl 3509 `"Jember"', add
label define id10a_dist5_lbl 3510 `"Banyuwangi"', add
label define id10a_dist5_lbl 3511 `"Bondowoso"', add
label define id10a_dist5_lbl 3512 `"Situbondo"', add
label define id10a_dist5_lbl 3513 `"Probolinggo"', add
label define id10a_dist5_lbl 3514 `"Pasuruan"', add
label define id10a_dist5_lbl 3515 `"Sidoarjo"', add
label define id10a_dist5_lbl 3516 `"Mojokerto"', add
label define id10a_dist5_lbl 3517 `"Jombang"', add
label define id10a_dist5_lbl 3518 `"Nganjuk"', add
label define id10a_dist5_lbl 3519 `"Madiun"', add
label define id10a_dist5_lbl 3520 `"Magetan"', add
label define id10a_dist5_lbl 3521 `"Ngawi"', add
label define id10a_dist5_lbl 3522 `"Bojonegoro"', add
label define id10a_dist5_lbl 3523 `"Tuban"', add
label define id10a_dist5_lbl 3524 `"Lamongan"', add
label define id10a_dist5_lbl 3525 `"Gresik"', add
label define id10a_dist5_lbl 3526 `"Bangkalan"', add
label define id10a_dist5_lbl 3527 `"Sampang"', add
label define id10a_dist5_lbl 3528 `"Pamekasan"', add
label define id10a_dist5_lbl 3529 `"Sumenep"', add
label define id10a_dist5_lbl 3571 `"Kediri"', add
label define id10a_dist5_lbl 3572 `"Blitar"', add
label define id10a_dist5_lbl 3573 `"Malang"', add
label define id10a_dist5_lbl 3574 `"Probolinggo"', add
label define id10a_dist5_lbl 3575 `"Pasuruan"', add
label define id10a_dist5_lbl 3576 `"Mojokerto"', add
label define id10a_dist5_lbl 3577 `"Madiun"', add
label define id10a_dist5_lbl 3578 `"Surabaya"', add
label define id10a_dist5_lbl 3579 `"Batu"', add
label define id10a_dist5_lbl 3601 `"Pandeglang"', add
label define id10a_dist5_lbl 3602 `"Lebak"', add
label define id10a_dist5_lbl 3603 `"Tangerang"', add
label define id10a_dist5_lbl 3604 `"Serang"', add
label define id10a_dist5_lbl 3671 `"Tangerang"', add
label define id10a_dist5_lbl 3672 `"Cilegon"', add
label define id10a_dist5_lbl 3673 `"Serang"', add
label define id10a_dist5_lbl 3674 `"Kota Tangerang Selatan"', add
label define id10a_dist5_lbl 5101 `"Jembrana"', add
label define id10a_dist5_lbl 5102 `"Tabanan"', add
label define id10a_dist5_lbl 5103 `"Badung"', add
label define id10a_dist5_lbl 5104 `"Gianyar"', add
label define id10a_dist5_lbl 5105 `"Klungkung"', add
label define id10a_dist5_lbl 5106 `"Bangli"', add
label define id10a_dist5_lbl 5107 `"Karang Asem"', add
label define id10a_dist5_lbl 5108 `"Buleleng"', add
label define id10a_dist5_lbl 5171 `"Denpasar"', add
label define id10a_dist5_lbl 5201 `"Lombok Barat"', add
label define id10a_dist5_lbl 5202 `"Lombok Tengah"', add
label define id10a_dist5_lbl 5203 `"Lombok Timur"', add
label define id10a_dist5_lbl 5204 `"Sumbawa"', add
label define id10a_dist5_lbl 5205 `"Dompu"', add
label define id10a_dist5_lbl 5206 `"Bima"', add
label define id10a_dist5_lbl 5207 `"Sumbawa Barat"', add
label define id10a_dist5_lbl 5208 `"Lombok Utara"', add
label define id10a_dist5_lbl 5271 `"Mataram"', add
label define id10a_dist5_lbl 5272 `"Bima"', add
label define id10a_dist5_lbl 5301 `"Sumba Barat"', add
label define id10a_dist5_lbl 5302 `"Sumba Timur"', add
label define id10a_dist5_lbl 5303 `"Kupang"', add
label define id10a_dist5_lbl 5304 `"Timor Tengah Selatan"', add
label define id10a_dist5_lbl 5305 `"Timor Tengah Utara"', add
label define id10a_dist5_lbl 5306 `"Belu"', add
label define id10a_dist5_lbl 5307 `"Alor"', add
label define id10a_dist5_lbl 5308 `"Lembata"', add
label define id10a_dist5_lbl 5309 `"Flores Timur"', add
label define id10a_dist5_lbl 5310 `"Sikka"', add
label define id10a_dist5_lbl 5311 `"Ende"', add
label define id10a_dist5_lbl 5312 `"Ngada"', add
label define id10a_dist5_lbl 5313 `"Manggarai"', add
label define id10a_dist5_lbl 5314 `"Rote Ndao"', add
label define id10a_dist5_lbl 5315 `"Manggarai Barat"', add
label define id10a_dist5_lbl 5316 `"Sumba Tengah"', add
label define id10a_dist5_lbl 5317 `"Sumba Barat Daya"', add
label define id10a_dist5_lbl 5318 `"Nagekeo"', add
label define id10a_dist5_lbl 5319 `"Manggarai Timur"', add
label define id10a_dist5_lbl 5320 `"Sabu Raijua"', add
label define id10a_dist5_lbl 5371 `"Kupang"', add
label define id10a_dist5_lbl 6101 `"Sambas"', add
label define id10a_dist5_lbl 6102 `"Bengkayang"', add
label define id10a_dist5_lbl 6103 `"Landak"', add
label define id10a_dist5_lbl 6104 `"Pontianak"', add
label define id10a_dist5_lbl 6105 `"Sanggau"', add
label define id10a_dist5_lbl 6106 `"Ketapang"', add
label define id10a_dist5_lbl 6107 `"Sintang"', add
label define id10a_dist5_lbl 6108 `"Kapuas Hulu"', add
label define id10a_dist5_lbl 6109 `"Sekadau"', add
label define id10a_dist5_lbl 6110 `"Melawi"', add
label define id10a_dist5_lbl 6111 `"Kayong Utara"', add
label define id10a_dist5_lbl 6112 `"Kubu Raya"', add
label define id10a_dist5_lbl 6171 `"Pontianak"', add
label define id10a_dist5_lbl 6172 `"Singkawang"', add
label define id10a_dist5_lbl 6201 `"Kotawaringin Barat"', add
label define id10a_dist5_lbl 6202 `"Kotawaringin Timur"', add
label define id10a_dist5_lbl 6203 `"Kapuas"', add
label define id10a_dist5_lbl 6204 `"Barito Selatan"', add
label define id10a_dist5_lbl 6205 `"Barito Utara"', add
label define id10a_dist5_lbl 6206 `"Sukamara"', add
label define id10a_dist5_lbl 6207 `"Lamandau"', add
label define id10a_dist5_lbl 6208 `"Seruyan"', add
label define id10a_dist5_lbl 6209 `"Katingan"', add
label define id10a_dist5_lbl 6210 `"Pulang Pisau"', add
label define id10a_dist5_lbl 6211 `"Gunung Mas"', add
label define id10a_dist5_lbl 6212 `"Barito Timur"', add
label define id10a_dist5_lbl 6213 `"Murung Raya"', add
label define id10a_dist5_lbl 6271 `"Palangka Raya"', add
label define id10a_dist5_lbl 6301 `"Tanah Laut"', add
label define id10a_dist5_lbl 6302 `"Kota Baru"', add
label define id10a_dist5_lbl 6303 `"Banjar"', add
label define id10a_dist5_lbl 6304 `"Barito Kuala"', add
label define id10a_dist5_lbl 6305 `"Tapin"', add
label define id10a_dist5_lbl 6306 `"Hulu Sungai Selatan"', add
label define id10a_dist5_lbl 6307 `"Hulu Sungai Tengah"', add
label define id10a_dist5_lbl 6308 `"Hulu Sungai Utara"', add
label define id10a_dist5_lbl 6309 `"Tabalong"', add
label define id10a_dist5_lbl 6310 `"Tanah Bumbu"', add
label define id10a_dist5_lbl 6311 `"Balangan"', add
label define id10a_dist5_lbl 6371 `"Banjarmasin"', add
label define id10a_dist5_lbl 6372 `"Banjar Baru"', add
label define id10a_dist5_lbl 6401 `"Pasir"', add
label define id10a_dist5_lbl 6402 `"Kutai Barat"', add
label define id10a_dist5_lbl 6403 `"Kutai Kartanegara"', add
label define id10a_dist5_lbl 6404 `"Kutai Timur"', add
label define id10a_dist5_lbl 6405 `"Berau"', add
label define id10a_dist5_lbl 6406 `"Malinau"', add
label define id10a_dist5_lbl 6407 `"Bulungan"', add
label define id10a_dist5_lbl 6408 `"Nunukan"', add
label define id10a_dist5_lbl 6409 `"Penajam Paser Utara"', add
label define id10a_dist5_lbl 6410 `"Tana Tidung"', add
label define id10a_dist5_lbl 6471 `"Balikpapan"', add
label define id10a_dist5_lbl 6472 `"Samarinda"', add
label define id10a_dist5_lbl 6473 `"Tarakan"', add
label define id10a_dist5_lbl 6474 `"Bontang"', add
label define id10a_dist5_lbl 7101 `"Bolaang Mongondow"', add
label define id10a_dist5_lbl 7102 `"Minahasa"', add
label define id10a_dist5_lbl 7103 `"Kepulauan Sangihe"', add
label define id10a_dist5_lbl 7104 `"Kepulauan Talaud"', add
label define id10a_dist5_lbl 7105 `"Minahasa Selatan"', add
label define id10a_dist5_lbl 7106 `"Minahasa Utara"', add
label define id10a_dist5_lbl 7107 `"Bolaang Mongondow Utara"', add
label define id10a_dist5_lbl 7108 `"Siau Tagulandang Biaro"', add
label define id10a_dist5_lbl 7109 `"Minahasa Tenggara"', add
label define id10a_dist5_lbl 7110 `"Bolaang Mongondow Selatan"', add
label define id10a_dist5_lbl 7111 `"Bolaang Mongondow Timur"', add
label define id10a_dist5_lbl 7171 `"Manado"', add
label define id10a_dist5_lbl 7172 `"Bitung"', add
label define id10a_dist5_lbl 7173 `"Tomohon"', add
label define id10a_dist5_lbl 7174 `"Kotamobagu"', add
label define id10a_dist5_lbl 7201 `"Banggai Kepulauan"', add
label define id10a_dist5_lbl 7202 `"Banggai"', add
label define id10a_dist5_lbl 7203 `"Morowali"', add
label define id10a_dist5_lbl 7204 `"Poso"', add
label define id10a_dist5_lbl 7205 `"Donggala"', add
label define id10a_dist5_lbl 7206 `"Toli-Toli"', add
label define id10a_dist5_lbl 7207 `"Buol"', add
label define id10a_dist5_lbl 7208 `"Parigi Moutong"', add
label define id10a_dist5_lbl 7209 `"Tojo Una-Una"', add
label define id10a_dist5_lbl 7210 `"Sigi"', add
label define id10a_dist5_lbl 7271 `"Palu"', add
label define id10a_dist5_lbl 7301 `"Selayar"', add
label define id10a_dist5_lbl 7302 `"Bulukumba"', add
label define id10a_dist5_lbl 7303 `"Bantaeng"', add
label define id10a_dist5_lbl 7304 `"Jeneponto"', add
label define id10a_dist5_lbl 7305 `"Takalar"', add
label define id10a_dist5_lbl 7306 `"Gowa"', add
label define id10a_dist5_lbl 7307 `"Sinjai"', add
label define id10a_dist5_lbl 7308 `"Maros"', add
label define id10a_dist5_lbl 7309 `"Pangkajene Dan Kepulauan"', add
label define id10a_dist5_lbl 7310 `"Barru"', add
label define id10a_dist5_lbl 7311 `"Bone"', add
label define id10a_dist5_lbl 7312 `"Soppeng"', add
label define id10a_dist5_lbl 7313 `"Wajo"', add
label define id10a_dist5_lbl 7314 `"Sidenreng Rappang"', add
label define id10a_dist5_lbl 7315 `"Pinrang"', add
label define id10a_dist5_lbl 7316 `"Enrekang"', add
label define id10a_dist5_lbl 7317 `"Luwu"', add
label define id10a_dist5_lbl 7318 `"Tana Toraja"', add
label define id10a_dist5_lbl 7322 `"Luwu Utara"', add
label define id10a_dist5_lbl 7325 `"Luwu Timur"', add
label define id10a_dist5_lbl 7326 `"Toraja Utara"', add
label define id10a_dist5_lbl 7371 `"Makassar"', add
label define id10a_dist5_lbl 7372 `"Pare-Pare"', add
label define id10a_dist5_lbl 7373 `"Palopo"', add
label define id10a_dist5_lbl 7401 `"Buton"', add
label define id10a_dist5_lbl 7402 `"Muna"', add
label define id10a_dist5_lbl 7403 `"Konawe"', add
label define id10a_dist5_lbl 7404 `"Kolaka"', add
label define id10a_dist5_lbl 7405 `"Konawe Selatan"', add
label define id10a_dist5_lbl 7406 `"Bombana"', add
label define id10a_dist5_lbl 7407 `"Wakatobi"', add
label define id10a_dist5_lbl 7408 `"Kolaka Utara"', add
label define id10a_dist5_lbl 7409 `"Buton Utara"', add
label define id10a_dist5_lbl 7410 `"Konawe Utara"', add
label define id10a_dist5_lbl 7471 `"Kendari"', add
label define id10a_dist5_lbl 7472 `"Bau-Bau"', add
label define id10a_dist5_lbl 7501 `"Boalemo"', add
label define id10a_dist5_lbl 7502 `"Kab. Gorontalo"', add
label define id10a_dist5_lbl 7503 `"Pohuwato"', add
label define id10a_dist5_lbl 7504 `"Bone Bolango"', add
label define id10a_dist5_lbl 7505 `"Gorontalo Utara"', add
label define id10a_dist5_lbl 7571 `"Kota Gorontalo"', add
label define id10a_dist5_lbl 7601 `"Majene"', add
label define id10a_dist5_lbl 7602 `"Polewali Mandar"', add
label define id10a_dist5_lbl 7603 `"Mamasa"', add
label define id10a_dist5_lbl 7604 `"Mamuju"', add
label define id10a_dist5_lbl 7605 `"Mamuju Utara"', add
label define id10a_dist5_lbl 8101 `"Maluku Tenggara Barat"', add
label define id10a_dist5_lbl 8102 `"Maluku Tenggara"', add
label define id10a_dist5_lbl 8103 `"Maluku Tengah"', add
label define id10a_dist5_lbl 8104 `"Buru"', add
label define id10a_dist5_lbl 8105 `"Kepulauan Aru"', add
label define id10a_dist5_lbl 8106 `"Seram Bagian Barat"', add
label define id10a_dist5_lbl 8107 `"Seram Bagian Timur"', add
label define id10a_dist5_lbl 8108 `"Maluku Barat Daya"', add
label define id10a_dist5_lbl 8109 `"Buru Selatan"', add
label define id10a_dist5_lbl 8171 `"Ambon"', add
label define id10a_dist5_lbl 8172 `"Tual"', add
label define id10a_dist5_lbl 8201 `"Halmahera Barat"', add
label define id10a_dist5_lbl 8202 `"Halmahera Tengah"', add
label define id10a_dist5_lbl 8203 `"Kepulauan Sula"', add
label define id10a_dist5_lbl 8204 `"Halmahera Selatan"', add
label define id10a_dist5_lbl 8205 `"Halmahera Utara"', add
label define id10a_dist5_lbl 8206 `"Halmahera Timur"', add
label define id10a_dist5_lbl 8207 `"Pulau Morotai"', add
label define id10a_dist5_lbl 8271 `"Ternate"', add
label define id10a_dist5_lbl 8272 `"Tidore Kepulauan"', add
label define id10a_dist5_lbl 9101 `"Fakfak"', add
label define id10a_dist5_lbl 9102 `"Kaimana"', add
label define id10a_dist5_lbl 9103 `"Teluk Wondama"', add
label define id10a_dist5_lbl 9104 `"Teluk Bintuni"', add
label define id10a_dist5_lbl 9105 `"Manokwari"', add
label define id10a_dist5_lbl 9106 `"Sorong Selatan"', add
label define id10a_dist5_lbl 9107 `"Sorong"', add
label define id10a_dist5_lbl 9108 `"Raja Ampat"', add
label define id10a_dist5_lbl 9109 `"Tambrauw"', add
label define id10a_dist5_lbl 9110 `"Maybrat"', add
label define id10a_dist5_lbl 9171 `"Sorong"', add
label define id10a_dist5_lbl 9401 `"Merauke"', add
label define id10a_dist5_lbl 9402 `"Jayawijaya"', add
label define id10a_dist5_lbl 9403 `"Jayapura (regency)"', add
label define id10a_dist5_lbl 9404 `"Nabire"', add
label define id10a_dist5_lbl 9408 `"Yapen Waropen"', add
label define id10a_dist5_lbl 9409 `"Biak Numfor"', add
label define id10a_dist5_lbl 9410 `"Paniai"', add
label define id10a_dist5_lbl 9411 `"Puncak Jaya"', add
label define id10a_dist5_lbl 9412 `"Mimika"', add
label define id10a_dist5_lbl 9413 `"Boven Digoel"', add
label define id10a_dist5_lbl 9414 `"Mappi"', add
label define id10a_dist5_lbl 9415 `"Asmat"', add
label define id10a_dist5_lbl 9416 `"Yahukimo"', add
label define id10a_dist5_lbl 9417 `"Pegunungan Bintang"', add
label define id10a_dist5_lbl 9418 `"Tolikara"', add
label define id10a_dist5_lbl 9419 `"Sarmi"', add
label define id10a_dist5_lbl 9420 `"Keerom"', add
label define id10a_dist5_lbl 9426 `"Waropen"', add
label define id10a_dist5_lbl 9427 `"Supiori"', add
label define id10a_dist5_lbl 9428 `"Mamberamo Raya"', add
label define id10a_dist5_lbl 9429 `"Nduga"', add
label define id10a_dist5_lbl 9430 `"Lanny Jaya"', add
label define id10a_dist5_lbl 9431 `"Mamberano Tengah"', add
label define id10a_dist5_lbl 9432 `"Yalimo"', add
label define id10a_dist5_lbl 9433 `"Puncak"', add
label define id10a_dist5_lbl 9434 `"Dogiyai"', add
label define id10a_dist5_lbl 9435 `"Intan Jaya"', add
label define id10a_dist5_lbl 9436 `"Deiyai"', add
label define id10a_dist5_lbl 9471 `"Jayapura (municipality)"', add
label define id10a_dist5_lbl 9800 `"Abroad"', add
label define id10a_dist5_lbl 9999 `"NIU (not in universe)"', add
label values id10a_dist5 id10a_dist5_lbl

label define id10a_lang_lbl 0001 `"Aceh/Acheh/Achi"'
label define id10a_lang_lbl 0002 `"Aceh Aneuk"', add
label define id10a_lang_lbl 0003 `"Aceh Hulu Singkil"', add
label define id10a_lang_lbl 0004 `"Aceh Jamee"', add
label define id10a_lang_lbl 0005 `"Aceh Kluet"', add
label define id10a_lang_lbl 0006 `"Aceh Pulau Banyak"', add
label define id10a_lang_lbl 0007 `"Aceh Simeleu Barat"', add
label define id10a_lang_lbl 0008 `"Aceh Simeleu Tengah"', add
label define id10a_lang_lbl 0009 `"Alas"', add
label define id10a_lang_lbl 0010 `"Gajo/Gayo"', add
label define id10a_lang_lbl 0011 `"Long Bano/Simalur/Simeuloe/Simeulue/Simulul"', add
label define id10a_lang_lbl 0012 `"Melayu Banda"', add
label define id10a_lang_lbl 0014 `"Tamiang"', add
label define id10a_lang_lbl 0015 `"Alas-Kluet Batak/Batak Alas-Kluet"', add
label define id10a_lang_lbl 0016 `"Anakola/Angkola/Batak Angkola"', add
label define id10a_lang_lbl 0017 `"Batak Dairi/Dairi/Pakpak/Pakpak Dairi"', add
label define id10a_lang_lbl 0018 `"Batak Karo/Karo Batak"', add
label define id10a_lang_lbl 0019 `"Batak Mandailing/Mandailing Batak"', add
label define id10a_lang_lbl 0020 `"Batak Pak-Pak"', add
label define id10a_lang_lbl 0021 `"Batak Pesisir"', add
label define id10a_lang_lbl 0022 `"Batak Samosir"', add
label define id10a_lang_lbl 0023 `"Batak Simalungun/Simelungan Timur"', add
label define id10a_lang_lbl 0024 `"Batak Toba/Batta/Toba Batak"', add
label define id10a_lang_lbl 0025 `"Batu/Nias"', add
label define id10a_lang_lbl 0026 `"Kerinchi/Kerinci/Kinchai"', add
label define id10a_lang_lbl 0027 `"Mentawai/Mentawei/Mentawi"', add
label define id10a_lang_lbl 0028 `"Minang/Minangkabau/Padang"', add
label define id10a_lang_lbl 0029 `"Bagan Siapi-Api"', add
label define id10a_lang_lbl 0030 `"Bahasa Melayu/Malayu/Melayu"', add
label define id10a_lang_lbl 0031 `"Bakinang"', add
label define id10a_lang_lbl 0032 `"Bonai"', add
label define id10a_lang_lbl 0033 `"Duano"', add
label define id10a_lang_lbl 0034 `"Kuantan"', add
label define id10a_lang_lbl 0036 `"Melayu Riau"', add
label define id10a_lang_lbl 0037 `"Sakai"', add
label define id10a_lang_lbl 0038 `"Siak Sri Indrapura"', add
label define id10a_lang_lbl 0039 `"Talang Mamak"', add
label define id10a_lang_lbl 0040 `"Anak Dalam/Kubu/Orang Hutan/Orang Rimba"', add
label define id10a_lang_lbl 0041 `"Batin/Djambi/Melayu Jambi"', add
label define id10a_lang_lbl 0042 `"Aji/Haji"', add
label define id10a_lang_lbl 0043 `"Banyu Asin"', add
label define id10a_lang_lbl 0044 `"Belido/Bilide"', add
label define id10a_lang_lbl 0045 `"Bengkulu/Besemah/Lintang/Melayu Tengah/Ogan/Pasemah/Semendo"', add
label define id10a_lang_lbl 0046 `"Col/Cul/Sindang"', add
label define id10a_lang_lbl 0047 `"Enim"', add
label define id10a_lang_lbl 0048 `"Kikim"', add
label define id10a_lang_lbl 0049 `"Komering/Kumoring"', add
label define id10a_lang_lbl 0050 `"Lematang"', add
label define id10a_lang_lbl 0051 `"Melayu Palembang"', add
label define id10a_lang_lbl 0052 `"Musi/Palembang/Sekayu"', add
label define id10a_lang_lbl 0053 `"Penasak/Penesak"', add
label define id10a_lang_lbl 0054 `"Rambang"', add
label define id10a_lang_lbl 0055 `"Ranau"', add
label define id10a_lang_lbl 0056 `"Rawas"', add
label define id10a_lang_lbl 0057 `"Saling"', add
label define id10a_lang_lbl 0058 `"Semende"', add
label define id10a_lang_lbl 0059 `"Bintuhan/Ka'ur/Kaur/Mulak"', add
label define id10a_lang_lbl 0060 `"Enggan/Enggano"', add
label define id10a_lang_lbl 0061 `"Krui"', add
label define id10a_lang_lbl 0062 `"Lambak/Lembak"', add
label define id10a_lang_lbl 0063 `"Melayu Bengkulu"', add
label define id10a_lang_lbl 0064 `"Muko-Muko"', add
label define id10a_lang_lbl 0065 `"Pekal"', add
label define id10a_lang_lbl 0066 `"Red Jang/Rejang"', add
label define id10a_lang_lbl 0067 `"Rejang Lebong"', add
label define id10a_lang_lbl 0068 `"Serawai"', add
label define id10a_lang_lbl 0069 `"Abung"', add
label define id10a_lang_lbl 0070 `"Api/Lampong/Lampung Api/Lampung Pesisir"', add
label define id10a_lang_lbl 0071 `"Lampung"', add
label define id10a_lang_lbl 0072 `"Lampung Nyo"', add
label define id10a_lang_lbl 0073 `"Pesisir Selatan"', add
label define id10a_lang_lbl 0074 `"Bangka"', add
label define id10a_lang_lbl 0075 `"Belitong/Belitung"', add
label define id10a_lang_lbl 0076 `"Lom/Mapur"', add
label define id10a_lang_lbl 0078 `"Mentok"', add
label define id10a_lang_lbl 0080 `"Orang Laut"', add
label define id10a_lang_lbl 0081 `"Semang"', add
label define id10a_lang_lbl 0082 `"Batavi/Batawi/Betawi/Melayu Betawi/Melayu Jakarta/Melayu Jakarte"', add
label define id10a_lang_lbl 0083 `"Pecok/Petjo/Petjoh"', add
label define id10a_lang_lbl 0084 `"Cirebon"', add
label define id10a_lang_lbl 0085 `"Dermayon/Indramayu"', add
label define id10a_lang_lbl 0086 `"Priangan/Sunda"', add
label define id10a_lang_lbl 0087 `"Javindo/Krontjong"', add
label define id10a_lang_lbl 0088 `"Jawa"', add
label define id10a_lang_lbl 0089 `"Samin"', add
label define id10a_lang_lbl 0090 `"Banyuwangi/Osing"', add
label define id10a_lang_lbl 0091 `"Basa Mathura/Madhura/Madura/Madure"', add
label define id10a_lang_lbl 0092 `"Kangean"', add
label define id10a_lang_lbl 0093 `"Tengger"', add
label define id10a_lang_lbl 0094 `"Badui"', add
label define id10a_lang_lbl 0095 `"Banten"', add
label define id10a_lang_lbl 0096 `"Bali"', add
label define id10a_lang_lbl 0098 `"Melayu Bali"', add
label define id10a_lang_lbl 0099 `"Adabe"', add
label define id10a_lang_lbl 0100 `"Bima"', add
label define id10a_lang_lbl 0101 `"Hilu Humba/Humba/Oost-Sumbaas"', add
label define id10a_lang_lbl 0102 `"Semawa"', add
label define id10a_lang_lbl 0103 `"Abui/Barawahing/Barue/Namatalaki"', add
label define id10a_lang_lbl 0104 `"Adang"', add
label define id10a_lang_lbl 0105 `"Adonara/Sagu/Vaiverang/Waiwerang"', add
label define id10a_lang_lbl 0106 `"Aku/Li'o/Lio/Lion/Tanah Kunu"', add
label define id10a_lang_lbl 0107 `"Alor"', add
label define id10a_lang_lbl 0108 `"Amarasi/Timor Amarasi"', add
label define id10a_lang_lbl 0110 `"Anakalang/Anakalangu"', add
label define id10a_lang_lbl 0111 `"Atoni/Meto/Orang Gunung/Rawan/Timol/Timor Dawan/Timor Uab Atoni Pah Meto/Timoreesch/Timoreezen/Uab Meto/Uab Pah Meto"', add
label define id10a_lang_lbl 0112 `"Ba'a/Baa/Lole/Loleh/Rote Tengah/Roti"', add
label define id10a_lang_lbl 0113 `"Babar/Wetan"', add
label define id10a_lang_lbl 0114 `"Badjava/Bajava/Bajawa/Nad'a/Nga'da/Ngad'a/Ngada/Ngadha/Rokka"', add
label define id10a_lang_lbl 0115 `"Bahasa Nagi/Melayu Ende/Melayu Larantuka/Nagi"', add
label define id10a_lang_lbl 0116 `"Balungada/Nedebang/Nedebang"', add
label define id10a_lang_lbl 0117 `"Basa Kupang/Kupang/Melayu Kupang"', add
label define id10a_lang_lbl 0118 `"Belagar/Blagar/Tarang"', add
label define id10a_lang_lbl 0119 `"Belo/Fehan/Teto/Tettum/Tetu/Tetum/Tetun/Tetun Belu/Tetung"', add
label define id10a_lang_lbl 0120 `"Belubaa/Bilba/Bilbaa"', add
label define id10a_lang_lbl 0121 `"Bunak"', add
label define id10a_lang_lbl 0122 `"Damar"', add
label define id10a_lang_lbl 0123 `"Damar Barat"', add
label define id10a_lang_lbl 0124 `"Damar Timur"', add
label define id10a_lang_lbl 0125 `"Dang/Kdang/Kedang/Kedang"', add
label define id10a_lang_lbl 0126 `"Dawan"', add
label define id10a_lang_lbl 0127 `"Dela-Oenale/Delha/Oe Nale"', add
label define id10a_lang_lbl 0128 `"Dengka"', add
label define id10a_lang_lbl 0129 `"Dhao/Ndaonese/Ndaundau"', add
label define id10a_lang_lbl 0130 `"Ema/Kemak"', add
label define id10a_lang_lbl 0131 `"Ende/Endeh"', add
label define id10a_lang_lbl 0132 `"Manggarai Timur/Riung"', add
label define id10a_lang_lbl 0133 `"Hamap"', add
label define id10a_lang_lbl 0134 `"Havunese/Hawu/Sabu/Savu"', add
label define id10a_lang_lbl 0135 `"Helon/Helong"', add
label define id10a_lang_lbl 0136 `"Ile Ape/Nusa Tadon"', add
label define id10a_lang_lbl 0137 `"Kabola"', add
label define id10a_lang_lbl 0139 `"Kalong/Kelon/Kelong"', add
label define id10a_lang_lbl 0140 `"Kamang/Waisika"', add
label define id10a_lang_lbl 0141 `"Kambera/Sumba"', add
label define id10a_lang_lbl 0142 `"Kawela/Lamalera/Lebatukan/Mulan"', add
label define id10a_lang_lbl 0143 `"Ke'o"', add
label define id10a_lang_lbl 0144 `"Kepo'/Kepoq"', add
label define id10a_lang_lbl 0146 `"Kodi/Kudi"', add
label define id10a_lang_lbl 0147 `"Kolana/Kolana-Wersin/Warsina/Wersin/Wersing"', add
label define id10a_lang_lbl 0148 `"Komodo"', add
label define id10a_lang_lbl 0149 `"Krowe/Maumere/Sara Sikka/Sika"', add
label define id10a_lang_lbl 0150 `"Kui/Lerabain"', add
label define id10a_lang_lbl 0151 `"Kula/Lamtoka/Lantoka/Tanglapui"', add
label define id10a_lang_lbl 0152 `"Labalekan/Lembata Barat/Mingar"', add
label define id10a_lang_lbl 0153 `"Lamaholot"', add
label define id10a_lang_lbl 0154 `"Lamaholot Barat Daya/Lewotobi"', add
label define id10a_lang_lbl 0155 `"Lamatoka/Lamatuka"', add
label define id10a_lang_lbl 0156 `"Lamboya"', add
label define id10a_lang_lbl 0157 `"Lamma/Lamma'/Lemma/Mauta"', add
label define id10a_lang_lbl 0158 `"Laora/Laura"', add
label define id10a_lang_lbl 0159 `"Lembata/Levuka/Lewokukun/Lewuka/Painara"', add
label define id10a_lang_lbl 0160 `"Lembata Selatan"', add
label define id10a_lang_lbl 0162 `"Lewo Eleng"', add
label define id10a_lang_lbl 0164 `"Lombok/Sasak"', add
label define id10a_lang_lbl 0165 `"Lu'a/Palu'e/Palue/Paluqe"', add
label define id10a_lang_lbl 0166 `"Makasai"', add
label define id10a_lang_lbl 0167 `"Maku'a/Pataluku"', add
label define id10a_lang_lbl 0168 `"Mamboru/Memboro"', add
label define id10a_lang_lbl 0169 `"Manggarai"', add
label define id10a_lang_lbl 0170 `"Mbojo"', add
label define id10a_lang_lbl 0172 `"Nage/Nage/Nage-Keo"', add
label define id10a_lang_lbl 0173 `"Nasal"', add
label define id10a_lang_lbl 0174 `"Ndao"', add
label define id10a_lang_lbl 0175 `"Ngad'a Timur/Ngada Tenggara"', add
label define id10a_lang_lbl 0176 `"Pa'da/Termanu"', add
label define id10a_lang_lbl 0177 `"Pantar"', add
label define id10a_lang_lbl 0178 `"Portugis"', add
label define id10a_lang_lbl 0179 `"Rajong/Razong"', add
label define id10a_lang_lbl 0180 `"Rembong"', add
label define id10a_lang_lbl 0181 `"Retta"', add
label define id10a_lang_lbl 0182 `"Rikou/Ringgou/Rote Barat/Rote Timur/Rotinese"', add
label define id10a_lang_lbl 0183 `"Rongga"', add
label define id10a_lang_lbl 0184 `"Rote"', add
label define id10a_lang_lbl 0185 `"Samawa"', add
label define id10a_lang_lbl 0186 `"Sawila"', add
label define id10a_lang_lbl 0187 `"Sikka"', add
label define id10a_lang_lbl 0188 `"So'a/Soa"', add
label define id10a_lang_lbl 0189 `"Sumba Barat/Veveva/Waidjewa/Wajewa/Wejewa/Wewewa/Wewjewa/Weyewa"', add
label define id10a_lang_lbl 0190 `"Sumbawa"', add
label define id10a_lang_lbl 0191 `"Tereweng"', add
label define id10a_lang_lbl 0192 `"Tewa"', add
label define id10a_lang_lbl 0193 `"Thie/Ti/Tii"', add
label define id10a_lang_lbl 0194 `"Wae Rana/Waerana"', add
label define id10a_lang_lbl 0195 `"Wanokaka/Wanukaka"', add
label define id10a_lang_lbl 0199 `"Abon/Kubitn"', add
label define id10a_lang_lbl 0200 `"Air Durian"', add
label define id10a_lang_lbl 0201 `"Air Upas"', add
label define id10a_lang_lbl 0203 `"Ba'ahe/Banana'"', add
label define id10a_lang_lbl 0204 `"Ba'aje'/Rantawan"', add
label define id10a_lang_lbl 0206 `"Baampape/Banyuke"', add
label define id10a_lang_lbl 0207 `"Badamea"', add
label define id10a_lang_lbl 0208 `"Badat"', add
label define id10a_lang_lbl 0209 `"Badeneh/Bubung"', add
label define id10a_lang_lbl 0210 `"Baicit/Damea/Kendayan/Kendayan Dayak/Kendayan-Ambawang"', add
label define id10a_lang_lbl 0211 `"Bakambai"', add
label define id10a_lang_lbl 0212 `"Bakati Nyam/Bakati Riok/Bakati'/Bakatiq/Bekati"', add
label define id10a_lang_lbl 0213 `"Bakati' Rara/Bekati' Kendayan/Bekati' Nyam-Pelayo/Bekatiq/Lara'/Luru"', add
label define id10a_lang_lbl 0214 `"Bakati' Sara/Riok/Sara"', add
label define id10a_lang_lbl 0215 `"Balangitn"', add
label define id10a_lang_lbl 0216 `"Balantian/Balantiang/Benyadu'/Njadu/Nyadu"', add
label define id10a_lang_lbl 0218 `"Bamak/Selibong"', add
label define id10a_lang_lbl 0219 `"Bangae' Moro"', add
label define id10a_lang_lbl 0220 `"Banyadu'"', add
label define id10a_lang_lbl 0221 `"Banyur"', add
label define id10a_lang_lbl 0222 `"Barai/Bekotu' Bekoya'"', add
label define id10a_lang_lbl 0223 `"Batu Entawa'"', add
label define id10a_lang_lbl 0225 `"Batu Tajam"', add
label define id10a_lang_lbl 0226 `"Baya"', add
label define id10a_lang_lbl 0229 `"Beape-ape/Ella"', add
label define id10a_lang_lbl 0230 `"Beginci"', add
label define id10a_lang_lbl 0231 `"Bekay/Keneles"', add
label define id10a_lang_lbl 0232 `"Belaban"', add
label define id10a_lang_lbl 0233 `"Benadai"', add
label define id10a_lang_lbl 0234 `"Benaday/Iban"', add
label define id10a_lang_lbl 0236 `"Benawas"', add
label define id10a_lang_lbl 0237 `"Benyupm/Cempede"', add
label define id10a_lang_lbl 0238 `"Bi Somu"', add
label define id10a_lang_lbl 0239 `"Bidoi'/Jagoi"', add
label define id10a_lang_lbl 0241 `"Bukat"', add
label define id10a_lang_lbl 0244 `"Cihie"', add
label define id10a_lang_lbl 0245 `"Daro'"', add
label define id10a_lang_lbl 0246 `"Dayak Kaninjal/Kaninjal/Kaninjal Dayak/Keninjal"', add
label define id10a_lang_lbl 0247 `"Dayak Laut/Heban"', add
label define id10a_lang_lbl 0248 `"Dayak Taman/Taman/Taman Dayak"', add
label define id10a_lang_lbl 0249 `"Desa"', add
label define id10a_lang_lbl 0250 `"Dohoi"', add
label define id10a_lang_lbl 0251 `"Dosatn"', add
label define id10a_lang_lbl 0252 `"Dsa"', add
label define id10a_lang_lbl 0253 `"Ensilat"', add
label define id10a_lang_lbl 0255 `"Gerai"', add
label define id10a_lang_lbl 0256 `"Gerunggang"', add
label define id10a_lang_lbl 0257 `"Golik"', add
label define id10a_lang_lbl 0258 `"Gun"', add
label define id10a_lang_lbl 0259 `"Hibun"', add
label define id10a_lang_lbl 0260 `"Hovongan/Punan Bungan"', add
label define id10a_lang_lbl 0261 `"Inggar Silat"', add
label define id10a_lang_lbl 0262 `"Jangkang"', add
label define id10a_lang_lbl 0263 `"Jawatn"', add
label define id10a_lang_lbl 0264 `"Kalis"', add
label define id10a_lang_lbl 0265 `"Kancikng"', add
label define id10a_lang_lbl 0266 `"Kantu'"', add
label define id10a_lang_lbl 0267 `"Karambai/Kembayan"', add
label define id10a_lang_lbl 0268 `"Kayaan"', add
label define id10a_lang_lbl 0269 `"Kayan Mendalam/Mendalam Kajan"', add
label define id10a_lang_lbl 0270 `"Kayong"', add
label define id10a_lang_lbl 0272 `"Kekura'"', add
label define id10a_lang_lbl 0273 `"Keluas"', add
label define id10a_lang_lbl 0275 `"Kenyilu"', add
label define id10a_lang_lbl 0276 `"Kepuas"', add
label define id10a_lang_lbl 0277 `"Kerabat"', add
label define id10a_lang_lbl 0278 `"Keramay"', add
label define id10a_lang_lbl 0279 `"Ketior"', add
label define id10a_lang_lbl 0280 `"Ketungau Sesae'"', add
label define id10a_lang_lbl 0281 `"Kodatn"', add
label define id10a_lang_lbl 0282 `"Koman"', add
label define id10a_lang_lbl 0284 `"Krio"', add
label define id10a_lang_lbl 0285 `"Kualatn"', add
label define id10a_lang_lbl 0286 `"Lamantawa"', add
label define id10a_lang_lbl 0287 `"Lau'"', add
label define id10a_lang_lbl 0289 `"Laya"', add
label define id10a_lang_lbl 0290 `"Lemandau"', add
label define id10a_lang_lbl 0291 `"Liboy"', add
label define id10a_lang_lbl 0292 `"Limbai"', add
label define id10a_lang_lbl 0293 `"Linoh"', add
label define id10a_lang_lbl 0294 `"Mahap"', add
label define id10a_lang_lbl 0295 `"Mali"', add
label define id10a_lang_lbl 0296 `"Mayan"', add
label define id10a_lang_lbl 0297 `"Mayau"', add
label define id10a_lang_lbl 0298 `"Melahoi"', add
label define id10a_lang_lbl 0299 `"Membulu'"', add
label define id10a_lang_lbl 0301 `"Mentebah"', add
label define id10a_lang_lbl 0303 `"Menterap Sekado"', add
label define id10a_lang_lbl 0304 `"Mentuka'"', add
label define id10a_lang_lbl 0305 `"Mualang"', add
label define id10a_lang_lbl 0306 `"Muara"', add
label define id10a_lang_lbl 0307 `"Mudu'"', add
label define id10a_lang_lbl 0308 `"Nado/Nto"', add
label define id10a_lang_lbl 0309 `"Nahaya'"', add
label define id10a_lang_lbl 0310 `"Oruung Da'an"', add
label define id10a_lang_lbl 0311 `"Pangin"', add
label define id10a_lang_lbl 0312 `"Pangkalan Suka"', add
label define id10a_lang_lbl 0313 `"Pantau Bamak"', add
label define id10a_lang_lbl 0314 `"Panu"', add
label define id10a_lang_lbl 0315 `"Paus"', add
label define id10a_lang_lbl 0318 `"Penyarang"', add
label define id10a_lang_lbl 0319 `"Perigi"', add
label define id10a_lang_lbl 0320 `"Pesaguan Hulu"', add
label define id10a_lang_lbl 0322 `"Pompakng"', add
label define id10a_lang_lbl 0325 `"Punan"', add
label define id10a_lang_lbl 0328 `"Randu'"', add
label define id10a_lang_lbl 0329 `"Ransa"', add
label define id10a_lang_lbl 0331 `"Riam"', add
label define id10a_lang_lbl 0332 `"Ribun"', add
label define id10a_lang_lbl 0333 `"Sajan"', add
label define id10a_lang_lbl 0334 `"Salako"', add
label define id10a_lang_lbl 0335 `"Sami"', add
label define id10a_lang_lbl 0336 `"Sane"', add
label define id10a_lang_lbl 0337 `"Sanggau"', add
label define id10a_lang_lbl 0338 `"Sangku'"', add
label define id10a_lang_lbl 0339 `"Sapatoi"', add
label define id10a_lang_lbl 0341 `"Sebaru'"', add
label define id10a_lang_lbl 0342 `"Seberuang"', add
label define id10a_lang_lbl 0343 `"Sekajang"', add
label define id10a_lang_lbl 0344 `"Sekakai"', add
label define id10a_lang_lbl 0345 `"Sekapat"', add
label define id10a_lang_lbl 0346 `"Sekubang"', add
label define id10a_lang_lbl 0347 `"Sekujam"', add
label define id10a_lang_lbl 0349 `"Semanakng"', add
label define id10a_lang_lbl 0351 `"Senangkatn"', add
label define id10a_lang_lbl 0352 `"Senduruhan"', add
label define id10a_lang_lbl 0356 `"Sisang"', add
label define id10a_lang_lbl 0358 `"Suaid"', add
label define id10a_lang_lbl 0359 `"Suka Maju"', add
label define id10a_lang_lbl 0360 `"Sum"', add
label define id10a_lang_lbl 0362 `"Suru' ilir"', add
label define id10a_lang_lbl 0363 `"Suru' Ulu"', add
label define id10a_lang_lbl 0364 `"Suruh"', add
label define id10a_lang_lbl 0365 `"Suti Bamayo"', add
label define id10a_lang_lbl 0366 `"Taba"', add
label define id10a_lang_lbl 0369 `"Tamambalo"', add
label define id10a_lang_lbl 0370 `"Taman Sekado"', add
label define id10a_lang_lbl 0372 `"Tanjung"', add
label define id10a_lang_lbl 0374 `"Tebang/Tobak"', add
label define id10a_lang_lbl 0377 `"Tinying"', add
label define id10a_lang_lbl 0378 `"Tola'"', add
label define id10a_lang_lbl 0379 `"Ulu Sekado"', add
label define id10a_lang_lbl 0380 `"Undau"', add
label define id10a_lang_lbl 0381 `"Bahasa Seruyan/Kohin/Seruyan"', add
label define id10a_lang_lbl 0382 `"Bakau/Paku"', add
label define id10a_lang_lbl 0383 `"Bakumpai/Bara-Jida"', add
label define id10a_lang_lbl 0384 `"Balai"', add
label define id10a_lang_lbl 0385 `"Banjar/Labuhan/Melayu Banjar"', add
label define id10a_lang_lbl 0387 `"Barito Barat Daya/Biadju/Ngadju/Ngaja/Ngaju Dayak"', add
label define id10a_lang_lbl 0388 `"Barito Utara/Lawangan/Luwangan"', add
label define id10a_lang_lbl 0389 `"Bayan"', add
label define id10a_lang_lbl 0390 `"Bulik"', add
label define id10a_lang_lbl 0392 `"Dayak Dohoi/Siang"', add
label define id10a_lang_lbl 0393 `"Dayak Dusun"', add
label define id10a_lang_lbl 0394 `"Dayak Katingan/Ngaju"', add
label define id10a_lang_lbl 0395 `"Dayak Manyan"', add
label define id10a_lang_lbl 0396 `"Dayak Ngaju"', add
label define id10a_lang_lbl 0398 `"Dusun Bayan"', add
label define id10a_lang_lbl 0399 `"Dusun Kalahien"', add
label define id10a_lang_lbl 0400 `"Dusun Lawanngan"', add
label define id10a_lang_lbl 0401 `"Dusun Malang"', add
label define id10a_lang_lbl 0403 `"Dusun Witu"', add
label define id10a_lang_lbl 0404 `"Kadoreh"', add
label define id10a_lang_lbl 0405 `"Katingan"', add
label define id10a_lang_lbl 0406 `"Kotawaringin"', add
label define id10a_lang_lbl 0407 `"Malahoi/Ot Danum/Uud Danum/Uut Danum"', add
label define id10a_lang_lbl 0408 `"Manyan"', add
label define id10a_lang_lbl 0410 `"Melayu Dayak"', add
label define id10a_lang_lbl 0411 `"Mendawai"', add
label define id10a_lang_lbl 0413 `"Pembuang"', add
label define id10a_lang_lbl 0416 `"Rejang Hilir"', add
label define id10a_lang_lbl 0417 `"Sampit"', add
label define id10a_lang_lbl 0418 `"Tabojan/Tabojan Tongka/Tabuyan/Tawoyan/Tawoyan Dayak/Tewoyan"', add
label define id10a_lang_lbl 0419 `"Taboyan"', add
label define id10a_lang_lbl 0420 `"Tamuan"', add
label define id10a_lang_lbl 0423 `"Deah/Dejah/Dusun Deyah"', add
label define id10a_lang_lbl 0425 `"Aoheng/Penihing"', add
label define id10a_lang_lbl 0427 `"Bahasa Sama-Bajau"', add
label define id10a_lang_lbl 0428 `"Bahau/Dayak Kenyah"', add
label define id10a_lang_lbl 0429 `"Bamayo/Bumayoh"', add
label define id10a_lang_lbl 0430 `"Basap"', add
label define id10a_lang_lbl 0431 `"Berau"', add
label define id10a_lang_lbl 0432 `"Berusuh/Bulusu/Burusu"', add
label define id10a_lang_lbl 0434 `"Bukit/Melayu Bukit/Meratus"', add
label define id10a_lang_lbl 0435 `"Bulungan"', add
label define id10a_lang_lbl 0436 `"Busang/Kajan/Kayan Busang"', add
label define id10a_lang_lbl 0437 `"Segayi/Ga'ay/Segai"', add
label define id10a_lang_lbl 0439 `"Dayak Bakau"', add
label define id10a_lang_lbl 0440 `"Dayak Darat/Dayak Klemautan"', add
label define id10a_lang_lbl 0442 `"Dayak Punan"', add
label define id10a_lang_lbl 0445 `"Kayan"', add
label define id10a_lang_lbl 0448 `"Kayan Sungai Kayan"', add
label define id10a_lang_lbl 0449 `"Kayan Wahau/Wahau Kajan"', add
label define id10a_lang_lbl 0450 `"Kenyah/Kenyah Tanah Tinggi/Usun Apau Kenyah"', add
label define id10a_lang_lbl 0451 `"Kenyah Barat/Uma' Lasan"', add
label define id10a_lang_lbl 0452 `"Kenyah Wahau/Lebu' Kulit/Wahau Kenya"', add
label define id10a_lang_lbl 0453 `"Kereho/Keriau Punan"', add
label define id10a_lang_lbl 0454 `"Kolod/Kolour/Kolur/Okolod/Okolod Murut"', add
label define id10a_lang_lbl 0455 `"Kutai"', add
label define id10a_lang_lbl 0457 `"Lun Bawang/Lun Daya/Lun Dayah/Lun Daye/Lun Dayoh/Lundaya Putuk/Murut Selatan"', add
label define id10a_lang_lbl 0458 `"Lundayeh"', add
label define id10a_lang_lbl 0462 `"Merap"', add
label define id10a_lang_lbl 0464 `"Milano"', add
label define id10a_lang_lbl 0465 `"Modang"', add
label define id10a_lang_lbl 0467 `"Oma Longh/Uma' Lung"', add
label define id10a_lang_lbl 0468 `"Punan Tubu"', add
label define id10a_lang_lbl 0469 `"Putoh/Putuk"', add
label define id10a_lang_lbl 0471 `"Selungai Murut"', add
label define id10a_lang_lbl 0473 `"Tagol"', add
label define id10a_lang_lbl 0474 `"Tidung"', add
label define id10a_lang_lbl 0475 `"Tunjung/Tunjung Dayak"', add
label define id10a_lang_lbl 0476 `"Uheng Kereho"', add
label define id10a_lang_lbl 0478 `"Biatah/Bidayuh Biatah/Bideyu/Landu/Lundu/Pueh/Siburan"', add
label define id10a_lang_lbl 0480 `"Dayak Ahe"', add
label define id10a_lang_lbl 0481 `"Embaloh/Malo/Maloh/Matoh/Mbaloh/Memaloh/Palin/Pari/Sangau"', add
label define id10a_lang_lbl 0482 `"Kualan-Semandang/Semandang"', add
label define id10a_lang_lbl 0483 `"Ma'anjan/Ma'anyan/Maanyak Dayak"', add
label define id10a_lang_lbl 0486 `"Bantik"', add
label define id10a_lang_lbl 0487 `"Bentenan/Pasan/Ratahan"', add
label define id10a_lang_lbl 0488 `"Bola'ang-Mongondow/Bolaang Mongondow/Minahassa/Mongondou/Mongondow"', add
label define id10a_lang_lbl 0489 `"Lolak"', add
label define id10a_lang_lbl 0490 `"Melayu Manado"', add
label define id10a_lang_lbl 0491 `"Minahasa"', add
label define id10a_lang_lbl 0492 `"Minhasa/Tombalu/Tombula/Tombulu/Tombulu'/Toumbulu"', add
label define id10a_lang_lbl 0493 `"Pakewa/Tontemboan/Tountemboan"', add
label define id10a_lang_lbl 0495 `"Sangi/Sangih/Sangihe/Sangir"', add
label define id10a_lang_lbl 0496 `"Talaud/Talaut/Talodda"', add
label define id10a_lang_lbl 0497 `"Tolou/Tolour/Tondano/Tondanou/Toulour"', add
label define id10a_lang_lbl 0498 `"Tombatu"', add
label define id10a_lang_lbl 0500 `"Tonsawang"', add
label define id10a_lang_lbl 0501 `"Tonsea/Tonsea'"', add
label define id10a_lang_lbl 0503 `"Adjio/Ta'adjio/Tadjio/Tajio"', add
label define id10a_lang_lbl 0505 `"Andio/Andio'o/Imbao'o/Masama"', add
label define id10a_lang_lbl 0506 `"Bada/Tobada"', add
label define id10a_lang_lbl 0507 `"Bada'/Tobada'"', add
label define id10a_lang_lbl 0508 `"Baha/Batui"', add
label define id10a_lang_lbl 0509 `"Bahonsuai"', add
label define id10a_lang_lbl 0510 `"Balaesan/Balaesang/Balaisang/Pajo"', add
label define id10a_lang_lbl 0511 `"Balantak/Kosian"', add
label define id10a_lang_lbl 0512 `"Banava/Banawa/Kaili Unde"', add
label define id10a_lang_lbl 0513 `"Banggai"', add
label define id10a_lang_lbl 0514 `"Bare'e/Baree"', add
label define id10a_lang_lbl 0515 `"Baria/Bela/Belala/Mbelala/Tombelala"', add
label define id10a_lang_lbl 0516 `"Behoa/Besoa"', add
label define id10a_lang_lbl 0517 `"Bobongko"', add
label define id10a_lang_lbl 0518 `"Bolano"', add
label define id10a_lang_lbl 0519 `"Bual/Buol/Bwo'ol/Bwool/Dia"', add
label define id10a_lang_lbl 0520 `"Bunggu/Da'a/Kaili Da'a"', add
label define id10a_lang_lbl 0521 `"Bungku"', add
label define id10a_lang_lbl 0523 `"Dampelas/Dampelasa/Dian"', add
label define id10a_lang_lbl 0524 `"Dondo/Toli-Toli"', add
label define id10a_lang_lbl 0525 `"Gage/Tolitoli/Tontoli/Totoli"', add
label define id10a_lang_lbl 0526 `"Kaili"', add
label define id10a_lang_lbl 0527 `"Kaili Ledo/Ledo/Paloesch/Palu"', add
label define id10a_lang_lbl 0529 `"Koro/Oema/Pipikoro/Uma"', add
label define id10a_lang_lbl 0530 `"Koroni"', add
label define id10a_lang_lbl 0531 `"Kulawi/Momabu"', add
label define id10a_lang_lbl 0532 `"Lauje/Tinombo"', add
label define id10a_lang_lbl 0533 `"Lindu/Linduan/Tado"', add
label define id10a_lang_lbl 0534 `"Loinang/Loindang/Madi/Mondono/Saluan"', add
label define id10a_lang_lbl 0535 `"Moma"', add
label define id10a_lang_lbl 0536 `"Mori"', add
label define id10a_lang_lbl 0537 `"Mori Atas/Mori Barat"', add
label define id10a_lang_lbl 0538 `"Mori Bawah/Mori Timur"', add
label define id10a_lang_lbl 0539 `"Mouton/Tiadje/Tialo/Tomini"', add
label define id10a_lang_lbl 0540 `"Napu/Pekurehua"', add
label define id10a_lang_lbl 0541 `"Ndaoe/Ndau/Pendau/Umalasa"', add
label define id10a_lang_lbl 0542 `"Pamona/Poso"', add
label define id10a_lang_lbl 0543 `"Petapa/Taje"', add
label define id10a_lang_lbl 0544 `"Sedoa/Tawaelia/Tawailia/Topobaria"', add
label define id10a_lang_lbl 0546 `"Alalao/Mori Selatan/Padoe/Padoe"', add
label define id10a_lang_lbl 0547 `"Andian/Mandar/Mandharsche/Manjar"', add
label define id10a_lang_lbl 0549 `"Baebunta/Lemolang/Limola"', add
label define id10a_lang_lbl 0552 `"Bentong/Dentong"', add
label define id10a_lang_lbl 0554 `"Bugi/Bugis/De'/Rappang Bugi/Ugi"', add
label define id10a_lang_lbl 0555 `"Duri"', add
label define id10a_lang_lbl 0556 `"Endekan/Endekan Timur/Enrekang"', add
label define id10a_lang_lbl 0557 `"Goa/Makasar/Makassa/Makassar/Mangasara/Mengkasara/Taena/Tena"', add
label define id10a_lang_lbl 0558 `"Ha'uwa/Leboni/Rampi/Rampi-Leboni"', add
label define id10a_lang_lbl 0559 `"Kajang/konjo"', add
label define id10a_lang_lbl 0560 `"Kondjo/Konjo Pesisir/Tiro"', add
label define id10a_lang_lbl 0562 `"Konjo Pegunungan/Konjo Tanah Tinggi/Konyo"', add
label define id10a_lang_lbl 0563 `"Luwu"', add
label define id10a_lang_lbl 0564 `"Luwu'/Toala/Toala'/Toala-Palili"', add
label define id10a_lang_lbl 0565 `"Maiwa/Masenrempulu"', add
label define id10a_lang_lbl 0566 `"Malimpung"', add
label define id10a_lang_lbl 0567 `"Massenrempulu"', add
label define id10a_lang_lbl 0568 `"Melayu Makassar"', add
label define id10a_lang_lbl 0569 `"Melayu Minahasa"', add
label define id10a_lang_lbl 0570 `"Palopo"', add
label define id10a_lang_lbl 0571 `"Pattinjo"', add
label define id10a_lang_lbl 0572 `"Pewanean/Pewaneang/Pohoneang/Seko Tengah"', add
label define id10a_lang_lbl 0575 `"Rongkong/Rongkong Kanandede/Sada/Sangangalla'/Tae'/Tae' Tae'/Taeq/To Rongkong/Toraja Timur/Toware"', add
label define id10a_lang_lbl 0577 `"Sa'dan/Sa'dansche/Sadan/Sadang/South Toraja/Ta'e/Toradja/Toraja/Toraja-Sa'dan"', add
label define id10a_lang_lbl 0578 `"Salajar/Salayar/Salayer/Saleier/Selayar/Siladja/Silajara"', add
label define id10a_lang_lbl 0580 `"Seko"', add
label define id10a_lang_lbl 0581 `"Seko Padang/Sua Tu Padang/Wono"', add
label define id10a_lang_lbl 0585 `"Akido/Pancana/Pantjana"', add
label define id10a_lang_lbl 0586 `"Badjaw/Badjo/Bajao/Bajau Indonesian/Bajo/Bayo/Gaj/Luaan/Lutaos/Lutayaos/Sama/Turije'ne'"', add
label define id10a_lang_lbl 0587 `"Bajau"', add
label define id10a_lang_lbl 0588 `"Baruta"', add
label define id10a_lang_lbl 0589 `"Baubau/Wolio"', add
label define id10a_lang_lbl 0590 `"Boetoneezen/Buton Selatan/Butonese/Butung selatan/Cia-Cia"', add
label define id10a_lang_lbl 0591 `"Bonerate"', add
label define id10a_lang_lbl 0592 `"Bosoa/Busoa"', add
label define id10a_lang_lbl 0593 `"Buton"', add
label define id10a_lang_lbl 0595 `"Kaimbulawa"', add
label define id10a_lang_lbl 0597 `"Kalisusu/Kolensusu/Kolinsusu/Kulisusu"', add
label define id10a_lang_lbl 0598 `"Kamaru"', add
label define id10a_lang_lbl 0599 `"Kambowa"', add
label define id10a_lang_lbl 0601 `"Kioko"', add
label define id10a_lang_lbl 0603 `"Kumbewaha/Umbewaha"', add
label define id10a_lang_lbl 0604 `"Laki/Lolaki/To'olaki/Tokia/Tolaki/Tololaki"', add
label define id10a_lang_lbl 0605 `"Lasalimu"', add
label define id10a_lang_lbl 0609 `"Maronene/Moronene/Nahina"', add
label define id10a_lang_lbl 0610 `"Mekongga"', add
label define id10a_lang_lbl 0611 `"Muna"', add
label define id10a_lang_lbl 0612 `"Noihe/Rahambuu/Wiaoe/Wiau"', add
label define id10a_lang_lbl 0613 `"Taloki/Taluki"', add
label define id10a_lang_lbl 0614 `"Todanga"', add
label define id10a_lang_lbl 0616 `"Wawonii/Wowonii"', add
label define id10a_lang_lbl 0617 `"Bintauna"', add
label define id10a_lang_lbl 0618 `"Bolango/Bulanga-Uki/Diu"', add
label define id10a_lang_lbl 0619 `"Bonda/Bunda/Bune/Suwawa/Suwawa-Bunda"', add
label define id10a_lang_lbl 0621 `"Dio/Kaidipan/Kaidipang/Kodipang"', add
label define id10a_lang_lbl 0622 `"Gorongtalo/Gorontalo/Guarantala/Gunongtello/Holontalo/Hulontalo"', add
label define id10a_lang_lbl 0623 `"Aralle/Mambi/Tabulahan"', add
label define id10a_lang_lbl 0624 `"Awo-Sumakuyu/Botteng-Tappalang/Kado/Oeloemanda/Tubbi/Ulumanda'/Ulumandak/Ulunda"', add
label define id10a_lang_lbl 0625 `"Bambam/Pitu Ulunna Salu"', add
label define id10a_lang_lbl 0626 `"Bambang"', add
label define id10a_lang_lbl 0627 `"Campalagian/Tallumpanuae/Tasing/Tjampalagian"', add
label define id10a_lang_lbl 0628 `"Dakka"', add
label define id10a_lang_lbl 0629 `"Doda'/Sarudu"', add
label define id10a_lang_lbl 0630 `"Galumpang/Kalumpang/Ma'ki/Maki/Mangki/Mangkir"', add
label define id10a_lang_lbl 0631 `"Makki"', add
label define id10a_lang_lbl 0632 `"Mamasa"', add
label define id10a_lang_lbl 0633 `"Mamoedjoe/Mamoedjoesch/Mamudju/Mamuju/Udai"', add
label define id10a_lang_lbl 0634 `"Pakkado"', add
label define id10a_lang_lbl 0635 `"Panasuan/To Pamosean/To Panasean"', add
label define id10a_lang_lbl 0636 `"Pannei/Tapango"', add
label define id10a_lang_lbl 0638 `"Talondo'"', add
label define id10a_lang_lbl 0639 `"Topoiyo"', add
label define id10a_lang_lbl 0641 `"Alakamat/Bahasa Asli/Huaulu"', add
label define id10a_lang_lbl 0642 `"Alune/Patasiwa Alfoeren/Sapalewa"', add
label define id10a_lang_lbl 0645 `"Ambelau/Amblau"', add
label define id10a_lang_lbl 0646 `"Ambon"', add
label define id10a_lang_lbl 0647 `"Ambon Tengah/Laha"', add
label define id10a_lang_lbl 0648 `"Ambon Timur Laut/Tulehu"', add
label define id10a_lang_lbl 0649 `"Ambong/Malayu Ambon/Melayu Ambon"', add
label define id10a_lang_lbl 0651 `"Aru"', add
label define id10a_lang_lbl 0652 `"Asilulu"', add
label define id10a_lang_lbl 0653 `"Atamanu/Awaiya/Jahalatan/Jahalatane/Yalahatan"', add
label define id10a_lang_lbl 0656 `"Bacan"', add
label define id10a_lang_lbl 0659 `"Banda"', add
label define id10a_lang_lbl 0660 `"Barakai/Workai"', add
label define id10a_lang_lbl 0661 `"Bati/Gah"', add
label define id10a_lang_lbl 0662 `"Batjan/Melayu Bacan"', add
label define id10a_lang_lbl 0663 `"Batuley/Gwataley/Watulai"', add
label define id10a_lang_lbl 0664 `"Belu"', add
label define id10a_lang_lbl 0665 `"Benggoi/Bengoi/Isal/Kobi-Benggoi/Uhei-Kaclakin/Uhei-Kahlakim"', add
label define id10a_lang_lbl 0666 `"Bicoli/Bitjoli/Ingli/Maba"', add
label define id10a_lang_lbl 0667 `"Boano/Buano/Djidja"', add
label define id10a_lang_lbl 0668 `"Boeroe/Buru"', add
label define id10a_lang_lbl 0670 `"Buli"', add
label define id10a_lang_lbl 0679 `"Dobel/Doibel/Kobro'or/Kobroor/Sersifar Tannin"', add
label define id10a_lang_lbl 0682 `"Esiriun/Kasiui/Kasui/Kesui/Matabello/Snabi Watubela/Watubela/Wesi"', add
label define id10a_lang_lbl 0683 `"Fatakai/Nuaulu/Nuaulu selatan/Patakai"', add
label define id10a_lang_lbl 0684 `"Fordata/Larat/Vai Fordata/Vai Tnebar/Vaidida"', add
label define id10a_lang_lbl 0685 `"Galela"', add
label define id10a_lang_lbl 0687 `"Gamkonora"', add
label define id10a_lang_lbl 0688 `"Gane/Gani/Giman"', add
label define id10a_lang_lbl 0689 `"Gebe/Gebi"', add
label define id10a_lang_lbl 0691 `"Gesa/Geser/Geser-Gorom/Goran/Gorom/Gorong/Seram/Seran/Seran Laut"', add
label define id10a_lang_lbl 0693 `"Gorap"', add
label define id10a_lang_lbl 0694 `"Hahutan/Hahutau/Ili'uun/Iliun/Ilmaumau/Limera"', add
label define id10a_lang_lbl 0695 `"Halmahera Selatan"', add
label define id10a_lang_lbl 0699 `"Hila-Kaitetu/Seit-Kaitetu"', add
label define id10a_lang_lbl 0700 `"Hitu"', add
label define id10a_lang_lbl 0705 `"Ibu"', add
label define id10a_lang_lbl 0706 `"Imroin/Imroing"', add
label define id10a_lang_lbl 0707 `"Jamden/Jamdena/Yamdena"', add
label define id10a_lang_lbl 0709 `"Kadai"', add
label define id10a_lang_lbl 0710 `"Kai/Kei"', add
label define id10a_lang_lbl 0714 `"Kao/Kau"', add
label define id10a_lang_lbl 0715 `"Karey/Kerei/Krei"', add
label define id10a_lang_lbl 0717 `"Kedi/Laba/Loloda Selatan"', add
label define id10a_lang_lbl 0718 `"Kisar/Meher/Yotowawa"', add
label define id10a_lang_lbl 0719 `"Koba"', add
label define id10a_lang_lbl 0720 `"Kola/Kulaha/Marlasi/Warilau"', add
label define id10a_lang_lbl 0721 `"Komfana/Kompane/Kongampani"', add
label define id10a_lang_lbl 0723 `"Kur"', add
label define id10a_lang_lbl 0724 `"Lain"', add
label define id10a_lang_lbl 0725 `"Larike-Wakasihu"', add
label define id10a_lang_lbl 0728 `"Leti"', add
label define id10a_lang_lbl 0729 `"Letri Lgona/Lgona/Literi Lagona/Luang"', add
label define id10a_lang_lbl 0734 `"Loda/Loloda/Loloda Utara"', add
label define id10a_lang_lbl 0738 `"Luhu"', add
label define id10a_lang_lbl 0740 `"Madole/Modole"', add
label define id10a_lang_lbl 0742 `"Mairiri/Mariri"', add
label define id10a_lang_lbl 0743 `"Makian Barat/Makian Luar"', add
label define id10a_lang_lbl 0744 `"Makian Dalam/Makian Timur"', add
label define id10a_lang_lbl 0746 `"Mangole/Mangoli/Sula Mangoli"', add
label define id10a_lang_lbl 0748 `"Manobai/Manombai/Wamar/Wokam"', add
label define id10a_lang_lbl 0749 `"Manusela/Wahinama"', add
label define id10a_lang_lbl 0752 `"Masbuar-Tela/Tela'a/Tela-Masbuar"', add
label define id10a_lang_lbl 0755 `"Melayu Ternate/Melayu Utara Moluccan"', add
label define id10a_lang_lbl 0759 `"Nusa Laut/Nusalaut"', add
label define id10a_lang_lbl 0761 `"Pago/Pagoe/Pagu"', add
label define id10a_lang_lbl 0762 `"Patani"', add
label define id10a_lang_lbl 0766 `"Roma/Romang"', add
label define id10a_lang_lbl 0767 `"Sa'u/Sahu/Sahu'u/Sau"', add
label define id10a_lang_lbl 0768 `"Salaru/Selaru"', add
label define id10a_lang_lbl 0769 `"Sanana/Sula"', add
label define id10a_lang_lbl 0770 `"Saparua"', add
label define id10a_lang_lbl 0771 `"Saumlaki/Veveu Evav"', add
label define id10a_lang_lbl 0772 `"Sawai/Weda/Weda-Sawai/Were"', add
label define id10a_lang_lbl 0773 `"Seluwasan/Selvasa/Selwasa"', add
label define id10a_lang_lbl 0774 `"Sepa/Tamilouw"', add
label define id10a_lang_lbl 0776 `"Seram Timur"', add
label define id10a_lang_lbl 0779 `"Seti-Liana"', add
label define id10a_lang_lbl 0780 `"Silen/Taluti/Tehoru/Teluti/Tihoru/Wolu"', add
label define id10a_lang_lbl 0782 `"Solor"', add
label define id10a_lang_lbl 0783 `"Tabaru/Tobaru"', add
label define id10a_lang_lbl 0785 `"Taliabo/Taliabu"', add
label define id10a_lang_lbl 0786 `"Tanibar"', add
label define id10a_lang_lbl 0787 `"Tarangan Barat/Trangan Barat"', add
label define id10a_lang_lbl 0788 `"Tarangan Timur/Trangan Timur"', add
label define id10a_lang_lbl 0790 `"Teor/Tio'or"', add
label define id10a_lang_lbl 0791 `"Ternate"', add
label define id10a_lang_lbl 0793 `"Tidore"', add
label define id10a_lang_lbl 0794 `"Timor"', add
label define id10a_lang_lbl 0795 `"Tobelo"', add
label define id10a_lang_lbl 0797 `"Tukang Besi selatan/Wakatobi"', add
label define id10a_lang_lbl 0800 `"Waioli/Wajoli/Wayoli"', add
label define id10a_lang_lbl 0801 `"A Nden/Abun/Karon/Manif/Yimbun"', add
label define id10a_lang_lbl 0802 `"Abendago/Yali Barat/Yali Pegunungan/Yaly"', add
label define id10a_lang_lbl 0803 `"Abinomn/Avinomen/Foja/Foya"', add
label define id10a_lang_lbl 0804 `"Adi/Aiduma/Kaiwai/Kajumerah/Kayumerah/Koiwai/Kowiai/Kuiwai/Namatota/Namatote"', add
label define id10a_lang_lbl 0805 `"Adihup/Atam/Borai/Hatam/Hattam/Mansim/Miriei/Tinam/Uran"', add
label define id10a_lang_lbl 0807 `"Aejauroh/Sawi/Sawuy"', add
label define id10a_lang_lbl 0810 `"Aikwakai/Araikurioko/Sikari/Sikaritai/Tori/Tori Aikwakai"', add
label define id10a_lang_lbl 0811 `"Aipki/Kimgi/Kimki/Sukubatom/Sukubatong"', add
label define id10a_lang_lbl 0812 `"Airmati/Armati/Kwerba/Mataweja/Naibedj/Segar Tor/Serikenam/Tekutameso"', add
label define id10a_lang_lbl 0814 `"Ajamaru/Atinjo/Mai Brat/Maite/Majbrat/Maybrat/Mey Brat"', add
label define id10a_lang_lbl 0815 `"Ajau/Auyu/Avio/Awju/Awya/Awyu Tengah/Nohon"', add
label define id10a_lang_lbl 0817 `"Ambai/Ambai-Menawi"', add
label define id10a_lang_lbl 0818 `"Ambel/Amber/Amberi/Waigeo/Waigiu"', add
label define id10a_lang_lbl 0819 `"Amberbaken/Kebar"', add
label define id10a_lang_lbl 0820 `"Ampas/Molof/Poule"', add
label define id10a_lang_lbl 0821 `"Amung/Amung Kal/Amungme/Amuy/Damal/Hamung/Oehoendoeni"', add
label define id10a_lang_lbl 0822 `"Anasi"', add
label define id10a_lang_lbl 0823 `"Angguruk/Northern Yali/Yali Angguruk/Yalimo"', add
label define id10a_lang_lbl 0826 `"Ansus"', add
label define id10a_lang_lbl 0828 `"Arandai/Dombano/Jaban/Sebyar/Yaban"', add
label define id10a_lang_lbl 0829 `"Arfak/Mansibaber/Meah/Mejach/Mejah/Meyach/Meyah"', add
label define id10a_lang_lbl 0831 `"Arguni Bay/Irahutu/Irarutu/Irutu/Kaitero/Kasira"', add
label define id10a_lang_lbl 0833 `"Aropen/Waropen/Wonti/Worpen"', add
label define id10a_lang_lbl 0835 `"Arui/Serui-Laut"', add
label define id10a_lang_lbl 0838 `"Asmat Darat/Citak Tamnim/Tamnim"', add
label define id10a_lang_lbl 0839 `"Asmat Pantai Casuarina/Kaweinag"', add
label define id10a_lang_lbl 0840 `"Asmat Tengah/Jas/Manowee/Yas"', add
label define id10a_lang_lbl 0841 `"Asmat Utara/Keenok"', add
label define id10a_lang_lbl 0844 `"Atohwaim/Kaugat"', add
label define id10a_lang_lbl 0845 `"Atori"', add
label define id10a_lang_lbl 0846 `"Austronesian Mor/Mor/Mor2"', add
label define id10a_lang_lbl 0848 `"Auye"', add
label define id10a_lang_lbl 0852 `"Awje/Awji/Awye/Awyi/Njao/Nyao"', add
label define id10a_lang_lbl 0853 `"Awyu/Yair"', add
label define id10a_lang_lbl 0855 `"Awyu Edera"', add
label define id10a_lang_lbl 0856 `"Awyu Jair"', add
label define id10a_lang_lbl 0859 `"Ayamaru/Brat/Maibrat"', add
label define id10a_lang_lbl 0863 `"Baham/Patimuni"', add
label define id10a_lang_lbl 0864 `"Baibai/Kwomtari"', add
label define id10a_lang_lbl 0866 `"Barapasi"', add
label define id10a_lang_lbl 0870 `"Baudi/Baudji/Baudzi/Bauri/Bauzi"', add
label define id10a_lang_lbl 0875 `"Bentoeni/Bentuni/Bintuni/Wamesa/Wandamen/Wandamen-Windesi/Windesi/Windessi"', add
label define id10a_lang_lbl 0876 `"Beraur/Kalabra"', add
label define id10a_lang_lbl 0877 `"Berick/Berik/Berrik/Sewan Teteris/Upper Tor"', add
label define id10a_lang_lbl 0881 `"Biak/Biak-Numfor/Mafoor/Mafoorsch/Mefoor/Myfoorsch/Noefoor/Noefoorsch/Nufoor"', add
label define id10a_lang_lbl 0882 `"Biaksi/Inisine/Yetfa"', add
label define id10a_lang_lbl 0883 `"Bian/Boven-Mbian/Marind Barat laut/Marind Bian"', add
label define id10a_lang_lbl 0884 `"Biga"', add
label define id10a_lang_lbl 0886 `"Bipim/Warkay/Yagay"', add
label define id10a_lang_lbl 0888 `"Biri/Biritai"', add
label define id10a_lang_lbl 0894 `"Boromeso/Borumesso/Burmeso/Burumeso/Manau/Monao/Monau/Taurap"', add
label define id10a_lang_lbl 0897 `"Busami"', add
label define id10a_lang_lbl 0898 `"Buyaka/Sentani"', add
label define id10a_lang_lbl 0899 `"Cicak/Citak/Kaunak/Tjitak/Tjitjak"', add
label define id10a_lang_lbl 0901 `"Dabra"', add
label define id10a_lang_lbl 0902 `"Dani"', add
label define id10a_lang_lbl 0903 `"Dani Barat/Ilaga Barat Dani/Laany/Lani/Oeringoep/Timorini"', add
label define id10a_lang_lbl 0904 `"Dani Lembah Atas"', add
label define id10a_lang_lbl 0905 `"Dani Lembah Bawah"', add
label define id10a_lang_lbl 0909 `"Dauwa/Dawa/Ndauwa/Nduga/Ndugwa/Pesecham/Pesechem/Pesegem"', add
label define id10a_lang_lbl 0910 `"Dekwambre/Ekware/Mpur"', add
label define id10a_lang_lbl 0911 `"Dem/Lem/Ndem"', add
label define id10a_lang_lbl 0914 `"Demisa/Desawa"', add
label define id10a_lang_lbl 0920 `"Djanggu/Elseng/Janggu"', add
label define id10a_lang_lbl 0921 `"Djonggunu/Jonggunu/Migani/Moni"', add
label define id10a_lang_lbl 0922 `"Dosobou/Dou/Doufou/Edopi/Elopi/Foi/Urundi/Ururi/Yau"', add
label define id10a_lang_lbl 0923 `"Doutai"', add
label define id10a_lang_lbl 0924 `"Dra/Kamberataro"', add
label define id10a_lang_lbl 0925 `"Dubu"', add
label define id10a_lang_lbl 0926 `"Dumut/Kaeti/Mandabo"', add
label define id10a_lang_lbl 0931 `"Ekagi/Ekari/Kapauku/Me Mana/Mee Mana/Tapiro"', add
label define id10a_lang_lbl 0932 `"Emem/Imimkal/Kiamerop"', add
label define id10a_lang_lbl 0940 `"Faranyao/Kaniran/Mairasi"', add
label define id10a_lang_lbl 0942 `"Fayu"', add
label define id10a_lang_lbl 0944 `"Gabe/Laganyan"', add
label define id10a_lang_lbl 0945 `"Gawir/Marind/Marind Tenggara/Tugeri"', add
label define id10a_lang_lbl 0946 `"Geresi/Glesi/Gresi/Gresik/Klesi"', add
label define id10a_lang_lbl 0947 `"Goliath/Kosarek/Mek"', add
label define id10a_lang_lbl 0949 `"Hmanggona/Hmonono/Kimjal/Kimyal/Nalca/Naltje/Naltya"', add
label define id10a_lang_lbl 0950 `"Hupla/Soba"', add
label define id10a_lang_lbl 0951 `"Iagu/Inanwatan/Mirabo/Suabau/Suabo"', add
label define id10a_lang_lbl 0952 `"Iau/Iaw"', add
label define id10a_lang_lbl 0953 `"Iha"', add
label define id10a_lang_lbl 0955 `"Imasi/Sobei"', add
label define id10a_lang_lbl 0957 `"Iria/Kamberau/Kamkbrau/Kamrau"', add
label define id10a_lang_lbl 0958 `"Isirawa/Okwasar/Saweri"', add
label define id10a_lang_lbl 0962 `"Jahadian/Nerigo/Yabin Yahadian/Yahadian"', add
label define id10a_lang_lbl 0964 `"Jakari/Tabi/Tabla/Tanah Merah/Tepera"', add
label define id10a_lang_lbl 0965 `"Jale/Jaly/Ngalik Utara/Ninia/Yali Ninia/Yali Selatan"', add
label define id10a_lang_lbl 0967 `"Jaur/Yaur"', add
label define id10a_lang_lbl 0969 `"Jeti/Manem/Skofro/Wembi/Yeti"', add
label define id10a_lang_lbl 0972 `"Kabera/Kaowerawedj/Kauwera/Kauwerawec/Kauwerawetj/Kawera/Koassa"', add
label define id10a_lang_lbl 0974 `"Kaibus/Tahit/Tehid/Tehit/Teminabuan"', add
label define id10a_lang_lbl 0975 `"Kais/Kampung Baru"', add
label define id10a_lang_lbl 0977 `"Kajagar/Kayagar/Kaygi/Kaygir"', add
label define id10a_lang_lbl 0979 `"Kaladdarsch/Kimaama/Kimaghama/Kimaghima/Teri-Kalwasch"', add
label define id10a_lang_lbl 0982 `"Kamora/Kamoro/Kaokonau/Lakahia/Mimika/Mukamuga/Nafarpi/Nagramadu/Nefarpi/Neferipi/Umar/Umari"', add
label define id10a_lang_lbl 0983 `"Kamtuk/Kemtuik/Kemtuk"', add
label define id10a_lang_lbl 0984 `"Kanum/Tonda"', add
label define id10a_lang_lbl 0988 `"Kanum Sota"', add
label define id10a_lang_lbl 0991 `"Kapitiauw/Kaptiau/Kaptiauw"', add
label define id10a_lang_lbl 0995 `"Karfasia/Samarkena/Samarokena/Tamaja/Tamaya"', add
label define id10a_lang_lbl 0998 `"Kasuweri/Kokoda/Komudago/Nebes/Oderago/Samalek/Tarof"', add
label define id10a_lang_lbl 1001 `"Kaure/Kaureh"', add
label define id10a_lang_lbl 1006 `"Kembra"', add
label define id10a_lang_lbl 1007 `"Kemelom/Kemelomsch/Komolom/Mombum"', add
label define id10a_lang_lbl 1008 `"Kerema/Nisa"', add
label define id10a_lang_lbl 1009 `"Ketengban/Kupel/Oktengban"', add
label define id10a_lang_lbl 1011 `"Kimaam/Riantana"', add
label define id10a_lang_lbl 1016 `"Kolufaup/Korowai"', add
label define id10a_lang_lbl 1017 `"Kombai/Komboy"', add
label define id10a_lang_lbl 1021 `"Kopka/Kopkaka"', add
label define id10a_lang_lbl 1023 `"Kotogüt/Tsaukambo/Tsokwambo"', add
label define id10a_lang_lbl 1026 `"Kuri"', add
label define id10a_lang_lbl 1030 `"Kwem/Mandobbo/Mandobo Atas/Nub"', add
label define id10a_lang_lbl 1034 `"Kwesten"', add
label define id10a_lang_lbl 1035 `"Langda/Mt.Goliath/Una"', add
label define id10a_lang_lbl 1038 `"Lepki"', add
label define id10a_lang_lbl 1040 `"Llaga/Saberi"', add
label define id10a_lang_lbl 1041 `"Lower Pyramid/Walak/Wodo"', add
label define id10a_lang_lbl 1042 `"Ma'ya/Sailolof/Salawati/Samate"', add
label define id10a_lang_lbl 1043 `"Maden/Saparan/Sapran"', add
label define id10a_lang_lbl 1044 `"Madidwana/Sabakor"', add
label define id10a_lang_lbl 1045 `"Makleu/Maklew"', add
label define id10a_lang_lbl 1046 `"Mander"', add
label define id10a_lang_lbl 1048 `"Manikion/Mantion/Sogh/Sougb"', add
label define id10a_lang_lbl 1049 `"Mantembu/Mora/Yapanani/Yava/Yawa"', add
label define id10a_lang_lbl 1050 `"Mapia/Mapian"', add
label define id10a_lang_lbl 1056 `"Matbat/Me"', add
label define id10a_lang_lbl 1060 `"Melayu Papua"', add
label define id10a_lang_lbl 1061 `"Meningo/Moskona/Sabena"', add
label define id10a_lang_lbl 1062 `"Meoswar/War"', add
label define id10a_lang_lbl 1067 `"Mogao/Puragi"', add
label define id10a_lang_lbl 1068 `"Moi"', add
label define id10a_lang_lbl 1069 `"Moile"', add
label define id10a_lang_lbl 1071 `"Momuna/Somage/Sumohai"', add
label define id10a_lang_lbl 1074 `"Morwap/Sawa/Tabu"', add
label define id10a_lang_lbl 1078 `"Muyu"', add
label define id10a_lang_lbl 1081 `"Nambrong/Nimboran"', add
label define id10a_lang_lbl 1087 `"Ngalik Selatan/Paiyage/Silimo/Usak/Wulik"', add
label define id10a_lang_lbl 1088 `"Ngalum/Sibil"', add
label define id10a_lang_lbl 1089 `"Nggem"', add
label define id10a_lang_lbl 1092 `"Onim/Onin"', add
label define id10a_lang_lbl 1094 `"Oria/Orya/Warpok/Warpu"', add
label define id10a_lang_lbl 1097 `"Papasena"', add
label define id10a_lang_lbl 1098 `"Papua"', add
label define id10a_lang_lbl 1099 `"Papuma"', add
label define id10a_lang_lbl 1104 `"Pom"', add
label define id10a_lang_lbl 1107 `"Ron/Roon"', add
label define id10a_lang_lbl 1110 `"Sarwar Use/Saweru"', add
label define id10a_lang_lbl 1114 `"Seget"', add
label define id10a_lang_lbl 1116 `"Sekar"', add
label define id10a_lang_lbl 1124 `"Sumuri"', add
label define id10a_lang_lbl 1125 `"Sunum"', add
label define id10a_lang_lbl 1127 `"Tamagario/Tamaraw/Wagow/Wiyagar"', add
label define id10a_lang_lbl 1130 `"Taori-Kei/Taori-So"', add
label define id10a_lang_lbl 1136 `"Trimuris"', add
label define id10a_lang_lbl 1137 `"Turu"', add
label define id10a_lang_lbl 1139 `"Waano/Wano"', add
label define id10a_lang_lbl 1142 `"Walsa/Waris"', add
label define id10a_lang_lbl 1143 `"Wambon"', add
label define id10a_lang_lbl 1149 `"Wo'oi/Woi"', add
label define id10a_lang_lbl 1150 `"Woda/Woda-Mo/Wodani/Wolani"', add
label define id10a_lang_lbl 1153 `"Yakai"', add
label define id10a_lang_lbl 1154 `"Yali Lembah"', add
label define id10a_lang_lbl 1157 `"Yoki"', add
label define id10a_lang_lbl 1159 `"Arabian language"', add
label define id10a_lang_lbl 1160 `"Sign language"', add
label define id10a_lang_lbl 1161 `"Chinese Hakka"', add
label define id10a_lang_lbl 1162 `"China Mandarin"', add
label define id10a_lang_lbl 1163 `"Chinese Min Dong"', add
label define id10a_lang_lbl 1164 `"Chinese Min Nan"', add
label define id10a_lang_lbl 1165 `"Chinese Yue"', add
label define id10a_lang_lbl 1166 `"Indian language"', add
label define id10a_lang_lbl 1167 `"Indonesian"', add
label define id10a_lang_lbl 1168 `"Indonesia Peranakan"', add
label define id10a_lang_lbl 1169 `"English"', add
label define id10a_lang_lbl 1170 `"French"', add
label define id10a_lang_lbl 1174 `"Chinese"', add
label define id10a_lang_lbl 1175 `"Chinese Hokkien"', add
label define id10a_lang_lbl 1176 `"Melayu Selimbau"', add
label define id10a_lang_lbl 1177 `"Melayu Putusibau-Semitau-Nang"', add
label define id10a_lang_lbl 1178 `"Melayu Nanga Bunut"', add
label define id10a_lang_lbl 1179 `"Melayu Boyan"', add
label define id10a_lang_lbl 1180 `"Melayu Embau"', add
label define id10a_lang_lbl 1181 `"Melayu Ulu Gurung"', add
label define id10a_lang_lbl 1183 `"Melayu Semangut"', add
label define id10a_lang_lbl 1184 `"Melayu Pinoh"', add
label define id10a_lang_lbl 1185 `"Melayu Sokan"', add
label define id10a_lang_lbl 1186 `"Melayu Kota Baru"', add
label define id10a_lang_lbl 1187 `"Melayu Sayan"', add
label define id10a_lang_lbl 1188 `"Melayu Ela Hilir"', add
label define id10a_lang_lbl 1189 `"Melayu Sintang"', add
label define id10a_lang_lbl 1190 `"Melayu Sekadau"', add
label define id10a_lang_lbl 1191 `"Melayu Sanggau"', add
label define id10a_lang_lbl 1194 `"Melayu Landak"', add
label define id10a_lang_lbl 1195 `"Melayu Sambas (bejalan)"', add
label define id10a_lang_lbl 1196 `"Melayu Merabuan (bejolon)"', add
label define id10a_lang_lbl 1197 `"Melayu Ketapang"', add
label define id10a_lang_lbl 1199 `"Melayu Tumbang Titi"', add
label define id10a_lang_lbl 1200 `"Melayu Pebihingan"', add
label define id10a_lang_lbl 1203 `"Melayu Pontianak"', add
label define id10a_lang_lbl 1204 `"Menui"', add
label define id10a_lang_lbl 1500 `"Other"', add
label define id10a_lang_lbl 2000 `"Languages from Sumatera"', add
label define id10a_lang_lbl 3000 `"Languages from Java"', add
label define id10a_lang_lbl 5000 `"Languages from Bali or Nusa Tenggara"', add
label define id10a_lang_lbl 6000 `"Languages from Kalimantan"', add
label define id10a_lang_lbl 7000 `"Languages from Sulawesi"', add
label define id10a_lang_lbl 8000 `"Languages from Maluku"', add
label define id10a_lang_lbl 9000 `"Languages from Papua"', add
label define id10a_lang_lbl 9999 `"NIU (not in universe)"', add
label values id10a_lang id10a_lang_lbl

label define id10a_speakind_lbl 1 `"Speaks Indonesian"'
label define id10a_speakind_lbl 2 `"Cannot speak Indonesian"', add
label define id10a_speakind_lbl 9 `"NIU (not in universe)"', add
label values id10a_speakind id10a_speakind_lbl

label define id10a_school_lbl 1 `"No/never went to school"'
label define id10a_school_lbl 2 `"Attending school"', add
label define id10a_school_lbl 3 `"No longer attending school"', add
label define id10a_school_lbl 9 `"NIU (not in universe)"', add
label values id10a_school id10a_school_lbl

label define id10a_educ_lbl 00 `"No/never went to school"'
label define id10a_educ_lbl 01 `"Not yet completed primary school"', add
label define id10a_educ_lbl 02 `"Primary school"', add
label define id10a_educ_lbl 03 `"Junior high school"', add
label define id10a_educ_lbl 04 `"Senior high school"', add
label define id10a_educ_lbl 05 `"Vocational high school"', add
label define id10a_educ_lbl 06 `"Diploma I/II"', add
label define id10a_educ_lbl 07 `"Diploma III/academy"', add
label define id10a_educ_lbl 08 `"Diploma IV/undergraduate"', add
label define id10a_educ_lbl 09 `"Postgraduate"', add
label define id10a_educ_lbl 99 `"NIU (not in universe)"', add
label values id10a_educ id10a_educ_lbl

label define id10a_litlatin_lbl 1 `"Yes"'
label define id10a_litlatin_lbl 2 `"No"', add
label define id10a_litlatin_lbl 9 `"NIU (not in universe)"', add
label values id10a_litlatin id10a_litlatin_lbl

label define id10a_litother_lbl 1 `"Yes"'
label define id10a_litother_lbl 2 `"No"', add
label define id10a_litother_lbl 9 `"NIU (not in universe)"', add
label values id10a_litother id10a_litother_lbl

label define id10a_marst_lbl 1 `"Single"'
label define id10a_marst_lbl 2 `"Married"', add
label define id10a_marst_lbl 3 `"Divorced"', add
label define id10a_marst_lbl 4 `"Widowed"', add
label define id10a_marst_lbl 9 `"NIU (not in universe)"', add
label values id10a_marst id10a_marst_lbl

label define id10a_econact_lbl 1 `"Works"'
label define id10a_econact_lbl 2 `"Does not work"', add
label define id10a_econact_lbl 9 `"NIU (not in universe)"', add
label values id10a_econact id10a_econact_lbl

label define id10a_tempwork_lbl 1 `"Yes"'
label define id10a_tempwork_lbl 2 `"No"', add
label define id10a_tempwork_lbl 9 `"NIU (not in universe)"', add
label values id10a_tempwork id10a_tempwork_lbl

label define id10a_seekwork_lbl 1 `"Yes"'
label define id10a_seekwork_lbl 2 `"No"', add
label define id10a_seekwork_lbl 9 `"NIU (not in universe)"', add
label values id10a_seekwork id10a_seekwork_lbl

label define id10a_willwork_lbl 1 `"Yes"'
label define id10a_willwork_lbl 2 `"No"', add
label define id10a_willwork_lbl 9 `"NIU (not in universe)"', add
label values id10a_willwork id10a_willwork_lbl

label define id10a_ind_lbl 01 `"Agriculture, rice, corn, other grains"'
label define id10a_ind_lbl 02 `"Agriculture, horticulture (vegetables, fruits, etc.)"', add
label define id10a_ind_lbl 03 `"Agriculture, estate (palm, tea, tobacco, rubber, etc.)"', add
label define id10a_ind_lbl 04 `"Agriculture, fishery (fishing, fish cultivation, etc.)"', add
label define id10a_ind_lbl 05 `"Agriculture, animal husbandry (animals farming, dairy, etc.)"', add
label define id10a_ind_lbl 06 `"Agriculture, other (forestry, hunting, etc.)"', add
label define id10a_ind_lbl 07 `"Mining and quarrying"', add
label define id10a_ind_lbl 08 `"Manufacturing"', add
label define id10a_ind_lbl 09 `"Electricity and gas"', add
label define id10a_ind_lbl 10 `"Construction (buildings, roads, bridges, etc.)"', add
label define id10a_ind_lbl 11 `"Trade (wholesale and retail)"', add
label define id10a_ind_lbl 12 `"Hotel and restaurant"', add
label define id10a_ind_lbl 13 `"Transportation and storage"', add
label define id10a_ind_lbl 14 `"Information and communications"', add
label define id10a_ind_lbl 15 `"Finance and insurance"', add
label define id10a_ind_lbl 16 `"Educational services"', add
label define id10a_ind_lbl 17 `"Health services"', add
label define id10a_ind_lbl 18 `"Other services (government, private, and individual)"', add
label define id10a_ind_lbl 19 `"Others (real estate, water supply, etc.)"', add
label define id10a_ind_lbl 99 `"NIU (not in universe)"', add
label values id10a_ind id10a_ind_lbl

label define id10a_classwk_lbl 1 `"Self-employed"'
label define id10a_classwk_lbl 2 `"Self-employed assisted by temporary/unpaid help"', add
label define id10a_classwk_lbl 3 `"Employer, with permanent employees"', add
label define id10a_classwk_lbl 4 `"Worker/employee"', add
label define id10a_classwk_lbl 5 `"Casual worker"', add
label define id10a_classwk_lbl 6 `"Unpaid family worker"', add
label define id10a_classwk_lbl 9 `"NIU (not in universe)"', add
label values id10a_classwk id10a_classwk_lbl

label define id10a_livebth_lbl 1 `"Yes"'
label define id10a_livebth_lbl 2 `"No"', add
label define id10a_livebth_lbl 9 `"NIU (not in universe)"', add
label values id10a_livebth id10a_livebth_lbl

label define id10a_homemale_lbl 00 `"0"'
label define id10a_homemale_lbl 01 `"1"', add
label define id10a_homemale_lbl 02 `"2"', add
label define id10a_homemale_lbl 03 `"3"', add
label define id10a_homemale_lbl 04 `"4"', add
label define id10a_homemale_lbl 05 `"5"', add
label define id10a_homemale_lbl 06 `"6"', add
label define id10a_homemale_lbl 07 `"7"', add
label define id10a_homemale_lbl 08 `"8"', add
label define id10a_homemale_lbl 09 `"9"', add
label define id10a_homemale_lbl 10 `"10"', add
label define id10a_homemale_lbl 11 `"11+"', add
label define id10a_homemale_lbl 99 `"NIU (not in universe)"', add
label values id10a_homemale id10a_homemale_lbl

label define id10a_homefem_lbl 00 `"0"'
label define id10a_homefem_lbl 01 `"1"', add
label define id10a_homefem_lbl 02 `"2"', add
label define id10a_homefem_lbl 03 `"3"', add
label define id10a_homefem_lbl 04 `"4"', add
label define id10a_homefem_lbl 05 `"5"', add
label define id10a_homefem_lbl 06 `"6"', add
label define id10a_homefem_lbl 07 `"7"', add
label define id10a_homefem_lbl 08 `"8"', add
label define id10a_homefem_lbl 09 `"9"', add
label define id10a_homefem_lbl 10 `"10"', add
label define id10a_homefem_lbl 11 `"11+"', add
label define id10a_homefem_lbl 99 `"NIU (not in universe)"', add
label values id10a_homefem id10a_homefem_lbl

label define id10a_awaymale_lbl 00 `"0"'
label define id10a_awaymale_lbl 01 `"1"', add
label define id10a_awaymale_lbl 02 `"2"', add
label define id10a_awaymale_lbl 03 `"3"', add
label define id10a_awaymale_lbl 04 `"4"', add
label define id10a_awaymale_lbl 05 `"5"', add
label define id10a_awaymale_lbl 06 `"6"', add
label define id10a_awaymale_lbl 07 `"7"', add
label define id10a_awaymale_lbl 08 `"8"', add
label define id10a_awaymale_lbl 09 `"9"', add
label define id10a_awaymale_lbl 10 `"10"', add
label define id10a_awaymale_lbl 11 `"11"', add
label define id10a_awaymale_lbl 12 `"12"', add
label define id10a_awaymale_lbl 13 `"13+"', add
label define id10a_awaymale_lbl 99 `"NIU (not in universe)"', add
label values id10a_awaymale id10a_awaymale_lbl

label define id10a_awayfem_lbl 00 `"0"'
label define id10a_awayfem_lbl 01 `"1"', add
label define id10a_awayfem_lbl 02 `"2"', add
label define id10a_awayfem_lbl 03 `"3"', add
label define id10a_awayfem_lbl 04 `"4"', add
label define id10a_awayfem_lbl 05 `"5"', add
label define id10a_awayfem_lbl 06 `"6"', add
label define id10a_awayfem_lbl 07 `"7"', add
label define id10a_awayfem_lbl 08 `"8"', add
label define id10a_awayfem_lbl 09 `"9"', add
label define id10a_awayfem_lbl 10 `"10"', add
label define id10a_awayfem_lbl 11 `"11"', add
label define id10a_awayfem_lbl 12 `"12"', add
label define id10a_awayfem_lbl 13 `"13+"', add
label define id10a_awayfem_lbl 99 `"NIU (not in universe)"', add
label values id10a_awayfem id10a_awayfem_lbl

label define id10a_chdiedm_lbl 00 `"0"'
label define id10a_chdiedm_lbl 01 `"1"', add
label define id10a_chdiedm_lbl 02 `"2"', add
label define id10a_chdiedm_lbl 03 `"3"', add
label define id10a_chdiedm_lbl 04 `"4"', add
label define id10a_chdiedm_lbl 05 `"5"', add
label define id10a_chdiedm_lbl 06 `"6"', add
label define id10a_chdiedm_lbl 07 `"7"', add
label define id10a_chdiedm_lbl 08 `"8"', add
label define id10a_chdiedm_lbl 09 `"9"', add
label define id10a_chdiedm_lbl 10 `"10"', add
label define id10a_chdiedm_lbl 11 `"11"', add
label define id10a_chdiedm_lbl 12 `"12+"', add
label define id10a_chdiedm_lbl 99 `"NIU (not in universe)"', add
label values id10a_chdiedm id10a_chdiedm_lbl

label define id10a_chdiedf_lbl 00 `"0"'
label define id10a_chdiedf_lbl 01 `"1"', add
label define id10a_chdiedf_lbl 02 `"2"', add
label define id10a_chdiedf_lbl 03 `"3"', add
label define id10a_chdiedf_lbl 04 `"4"', add
label define id10a_chdiedf_lbl 05 `"5"', add
label define id10a_chdiedf_lbl 06 `"6"', add
label define id10a_chdiedf_lbl 07 `"7"', add
label define id10a_chdiedf_lbl 08 `"8"', add
label define id10a_chdiedf_lbl 09 `"9"', add
label define id10a_chdiedf_lbl 10 `"10"', add
label define id10a_chdiedf_lbl 11 `"11"', add
label define id10a_chdiedf_lbl 12 `"12+"', add
label define id10a_chdiedf_lbl 99 `"NIU (not in universe)"', add
label values id10a_chdiedf id10a_chdiedf_lbl

label define id10a_bthlstyr_lbl 1 `"Yes"'
label define id10a_bthlstyr_lbl 2 `"No"', add
label define id10a_bthlstyr_lbl 9 `"NIU (not in universe)"', add
label values id10a_bthlstyr id10a_bthlstyr_lbl

label define id10a_doctypep_lbl 1 `"SP2010-C1"'
label define id10a_doctypep_lbl 2 `"SP2010-C2 general"', add
label define id10a_doctypep_lbl 3 `"SP2010-C2 apartment"', add
label define id10a_doctypep_lbl 4 `"SP2010-L2 (homeless, boat people, refugees, barrack dwellers)"', add
label define id10a_doctypep_lbl 5 `"SP2010-C2 diplomat"', add
label values id10a_doctypep id10a_doctypep_lbl

label define id10a_chbornm_lbl 00 `"0"'
label define id10a_chbornm_lbl 01 `"1"', add
label define id10a_chbornm_lbl 02 `"2"', add
label define id10a_chbornm_lbl 03 `"3"', add
label define id10a_chbornm_lbl 04 `"4"', add
label define id10a_chbornm_lbl 05 `"5"', add
label define id10a_chbornm_lbl 06 `"6"', add
label define id10a_chbornm_lbl 07 `"7"', add
label define id10a_chbornm_lbl 08 `"8"', add
label define id10a_chbornm_lbl 09 `"9"', add
label define id10a_chbornm_lbl 10 `"10"', add
label define id10a_chbornm_lbl 11 `"11"', add
label define id10a_chbornm_lbl 12 `"12"', add
label define id10a_chbornm_lbl 13 `"13"', add
label define id10a_chbornm_lbl 14 `"14"', add
label define id10a_chbornm_lbl 15 `"15+"', add
label define id10a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values id10a_chbornm id10a_chbornm_lbl

label define id10a_chbornf_lbl 00 `"0"'
label define id10a_chbornf_lbl 01 `"1"', add
label define id10a_chbornf_lbl 02 `"2"', add
label define id10a_chbornf_lbl 03 `"3"', add
label define id10a_chbornf_lbl 04 `"4"', add
label define id10a_chbornf_lbl 05 `"5"', add
label define id10a_chbornf_lbl 06 `"6"', add
label define id10a_chbornf_lbl 07 `"7"', add
label define id10a_chbornf_lbl 08 `"8"', add
label define id10a_chbornf_lbl 09 `"9"', add
label define id10a_chbornf_lbl 10 `"10"', add
label define id10a_chbornf_lbl 11 `"11"', add
label define id10a_chbornf_lbl 12 `"12"', add
label define id10a_chbornf_lbl 13 `"13"', add
label define id10a_chbornf_lbl 14 `"14"', add
label define id10a_chbornf_lbl 15 `"15+"', add
label define id10a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values id10a_chbornf id10a_chbornf_lbl

label define id10a_chborn_lbl 00 `"0 children"'
label define id10a_chborn_lbl 01 `"1 children"', add
label define id10a_chborn_lbl 02 `"2 children"', add
label define id10a_chborn_lbl 03 `"3 children"', add
label define id10a_chborn_lbl 04 `"4 children"', add
label define id10a_chborn_lbl 05 `"5 children"', add
label define id10a_chborn_lbl 06 `"6 children"', add
label define id10a_chborn_lbl 07 `"7 children"', add
label define id10a_chborn_lbl 08 `"8 children"', add
label define id10a_chborn_lbl 09 `"9 children"', add
label define id10a_chborn_lbl 10 `"10 children"', add
label define id10a_chborn_lbl 11 `"11 children"', add
label define id10a_chborn_lbl 12 `"12 children"', add
label define id10a_chborn_lbl 13 `"13 children"', add
label define id10a_chborn_lbl 14 `"14 children"', add
label define id10a_chborn_lbl 15 `"15 children"', add
label define id10a_chborn_lbl 16 `"16 children"', add
label define id10a_chborn_lbl 17 `"17 children"', add
label define id10a_chborn_lbl 18 `"18 children"', add
label define id10a_chborn_lbl 99 `"NIU (not in universe)"', add
label values id10a_chborn id10a_chborn_lbl

label define id10a_chsurvm_lbl 00 `"0"'
label define id10a_chsurvm_lbl 01 `"1"', add
label define id10a_chsurvm_lbl 02 `"2"', add
label define id10a_chsurvm_lbl 03 `"3"', add
label define id10a_chsurvm_lbl 04 `"4"', add
label define id10a_chsurvm_lbl 05 `"5"', add
label define id10a_chsurvm_lbl 06 `"6"', add
label define id10a_chsurvm_lbl 07 `"7"', add
label define id10a_chsurvm_lbl 08 `"8"', add
label define id10a_chsurvm_lbl 09 `"9"', add
label define id10a_chsurvm_lbl 10 `"10"', add
label define id10a_chsurvm_lbl 11 `"11"', add
label define id10a_chsurvm_lbl 12 `"12"', add
label define id10a_chsurvm_lbl 13 `"13"', add
label define id10a_chsurvm_lbl 14 `"14+"', add
label define id10a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values id10a_chsurvm id10a_chsurvm_lbl

label define id10a_chsurvf_lbl 00 `"0"'
label define id10a_chsurvf_lbl 01 `"1"', add
label define id10a_chsurvf_lbl 02 `"2"', add
label define id10a_chsurvf_lbl 03 `"3"', add
label define id10a_chsurvf_lbl 04 `"4"', add
label define id10a_chsurvf_lbl 05 `"5"', add
label define id10a_chsurvf_lbl 06 `"6"', add
label define id10a_chsurvf_lbl 07 `"7"', add
label define id10a_chsurvf_lbl 08 `"8"', add
label define id10a_chsurvf_lbl 09 `"9"', add
label define id10a_chsurvf_lbl 10 `"10"', add
label define id10a_chsurvf_lbl 11 `"11"', add
label define id10a_chsurvf_lbl 12 `"12"', add
label define id10a_chsurvf_lbl 13 `"13"', add
label define id10a_chsurvf_lbl 14 `"14+"', add
label define id10a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values id10a_chsurvf id10a_chsurvf_lbl

label define id10a_chsurv_lbl 00 `"0 children"'
label define id10a_chsurv_lbl 01 `"1 children"', add
label define id10a_chsurv_lbl 02 `"2 children"', add
label define id10a_chsurv_lbl 03 `"3 children"', add
label define id10a_chsurv_lbl 04 `"4 children"', add
label define id10a_chsurv_lbl 05 `"5 children"', add
label define id10a_chsurv_lbl 06 `"6 children"', add
label define id10a_chsurv_lbl 07 `"7 children"', add
label define id10a_chsurv_lbl 08 `"8 children"', add
label define id10a_chsurv_lbl 09 `"9 children"', add
label define id10a_chsurv_lbl 10 `"10 children"', add
label define id10a_chsurv_lbl 11 `"11 children"', add
label define id10a_chsurv_lbl 12 `"12 children"', add
label define id10a_chsurv_lbl 13 `"13 children"', add
label define id10a_chsurv_lbl 14 `"14 children"', add
label define id10a_chsurv_lbl 15 `"15 children"', add
label define id10a_chsurv_lbl 16 `"16 children"', add
label define id10a_chsurv_lbl 17 `"17 or more children"', add
label define id10a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values id10a_chsurv id10a_chsurv_lbl


