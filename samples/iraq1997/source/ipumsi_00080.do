* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    iq97a_dwnum     22-28    ///
  byte    iq97a_pern      29-30    ///
  byte    iq97a_fbig      31-31    ///
  byte    iq97a_gov       32-33    ///
  int     iq97a_qad       34-37    ///
  byte    iq97a_urban     38-38    ///
  byte    iq97a_hhno      39-40    ///
  byte    iq97a_roombed   41-42    ///
  byte    iq97a_owner     43-43    ///
  byte    iq97a_dwsize    44-44    ///
  long    iq97a_rent      45-50    ///
  byte    iq97a_dwtype    51-51    ///
  byte    iq97a_walls     52-52    ///
  byte    iq97a_rooms     53-54    ///
  byte    iq97a_bath      55-55    ///
  byte    iq97a_toilet    56-56    ///
  byte    iq97a_batht     57-57    ///
  byte    iq97a_kitch     58-58    ///
  byte    iq97a_elect     59-59    ///
  byte    iq97a_phone     60-60    ///
  byte    iq97a_watsrc    61-61    ///
  byte    iq97a_sewer     62-62    ///
  byte    iq97a_dwtyc     63-63    ///
  int     pernum          64-66    ///
  float   wtper           67-74    ///
  byte    resident        75-75    ///
  byte    iq97a_pernum    76-77    ///
  byte    iq97a_resstat   78-78    ///
  byte    iq97a_relate    79-80    ///
  byte    iq97a_sex       81-81    ///
  byte    iq97a_birthm    82-83    ///
  int     iq97a_birthy    84-87    ///
  byte    iq97a_marst     88-88    ///
  int     iq97a_maryr     89-92    ///
  byte    iq97a_marn      93-93    ///
  byte    iq97a_wives     94-94    ///
  byte    iq97a_mardur    95-96    ///
  byte    iq97a_chbornm   97-98    ///
  byte    iq97a_chbornf   99-100   ///
  byte    iq97a_chlivm    101-102  ///
  byte    iq97a_chlivf    103-104  ///
  byte    iq97a_chbornrm  105-105  ///
  byte    iq97a_chbornrf  106-106  ///
  byte    iq97a_empstat   107-107  ///
  int     iq97a_occ       108-110  ///
  int     iq97a_ind       111-113  ///
  byte    iq97a_classwk   114-114  ///
  byte    iq97a_sector    115-115  ///
  byte    iq97a_fulltime  116-116  ///
  byte    iq97a_incsrc    117-117  ///
  byte    iq97a_parliv    118-118  ///
  int     iq97a_bpl       119-121  ///
  byte    iq97a_resdur    122-122  ///
  byte    iq97a_resdury   123-124  ///
  int     iq97a_respr     125-127  ///
  byte    iq97a_respru    128-128  ///
  byte    iq97a_whymove   129-130  ///
  int     iq97a_res87     131-133  ///
  byte    iq97a_res87u    134-134  ///
  int     iq97a_nation    135-137  ///
  byte    iq97a_edlev1    138-139  ///
  byte    iq97a_edgrade   140-140  ///
  int     iq97a_edattan   141-143  ///
  byte    iq97a_lit       144-144  ///
  byte    iq97a_edlev2    145-146  ///
  byte    iq97a_handicap  147-148  ///
  int     iq97a_age       149-151  ///
  byte    iq97a_lang      152-153  ///
  using `"ipumsi_00080.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var iq97a_dwnum    `"Dwelling number"'
label var iq97a_pern     `"Number of persons in household"'
label var iq97a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var iq97a_gov      `"Governorate"'
label var iq97a_qad      `"District (Qadah)"'
label var iq97a_urban    `"Urban-rural"'
label var iq97a_hhno     `"Number of households in the residential unit"'
label var iq97a_roombed  `"Number of bedrooms"'
label var iq97a_owner    `"Ownership of the residential unit"'
label var iq97a_dwsize   `"Size of the rented residential unit"'
label var iq97a_rent     `"Monthly rent (Iraqi Dinar)"'
label var iq97a_dwtype   `"Type of residential unit"'
label var iq97a_walls    `"Wall construction material"'
label var iq97a_rooms    `"Total number of rooms"'
label var iq97a_bath     `"Bathroom in the living unit"'
label var iq97a_toilet   `"Water closet"'
label var iq97a_batht    `"Bathroom and water closet"'
label var iq97a_kitch    `"Kitchen"'
label var iq97a_elect    `"Electricity"'
label var iq97a_phone    `"Telephone"'
label var iq97a_watsrc   `"Source of drinking water"'
label var iq97a_sewer    `"Waste water"'
label var iq97a_dwtyc    `"Type of dwelling"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var resident       `"Residence status: de facto, de jure"'
label var iq97a_pernum   `"Person number (within household)"'
label var iq97a_resstat  `"Residential status"'
label var iq97a_relate   `"Relation to the head of the household"'
label var iq97a_sex      `"Sex"'
label var iq97a_birthm   `"Date of birth: month"'
label var iq97a_birthy   `"Year of birth"'
label var iq97a_marst    `"Marital status"'
label var iq97a_maryr    `"Year of first marriage"'
label var iq97a_marn     `"Number of marriages"'
label var iq97a_wives    `"Number of wives"'
label var iq97a_mardur   `"Duration of marriage"'
label var iq97a_chbornm  `"Number of live-born male children"'
label var iq97a_chbornf  `"Number of live-born female children"'
label var iq97a_chlivm   `"Numbe of male children still alive"'
label var iq97a_chlivf   `"Number of female children still alive"'
label var iq97a_chbornrm `"Number of male live births in the past year"'
label var iq97a_chbornrf `"Number of female live births in the past year"'
label var iq97a_empstat  `"Labor force status"'
label var iq97a_occ      `"Occupation"'
label var iq97a_ind      `"Industry"'
label var iq97a_classwk  `"Status in employment"'
label var iq97a_sector   `"Sector of employment"'
label var iq97a_fulltime `"Work time"'
label var iq97a_incsrc   `"Source of livelihood"'
label var iq97a_parliv   `"Vital status of parents"'
label var iq97a_bpl      `"Place of birth"'
label var iq97a_resdur   `"Period in current residential place"'
label var iq97a_resdury  `"Years in current residential place"'
label var iq97a_respr    `"Previous governorate or country of residence"'
label var iq97a_respru   `"Urban-rural status of previous residence"'
label var iq97a_whymove  `"Reason for changing place of residence"'
label var iq97a_res87    `"Residence before 1987 census"'
label var iq97a_res87u   `"Urban-rural status before 1987 census"'
label var iq97a_nation   `"Nationality"'
label var iq97a_edlev1   `"Education level studying"'
label var iq97a_edgrade  `"Class or level studying"'
label var iq97a_edattan  `"Educational level and grade studying"'
label var iq97a_lit      `"Literacy"'
label var iq97a_edlev2   `"Highest certificate"'
label var iq97a_handicap `"Kind of disability"'
label var iq97a_age      `"Age"'
label var iq97a_lang     `"Local and foreign languages spoken"'

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

label define iq97a_pern_lbl 01 `"1"'
label define iq97a_pern_lbl 02 `"2"', add
label define iq97a_pern_lbl 03 `"3"', add
label define iq97a_pern_lbl 04 `"4"', add
label define iq97a_pern_lbl 05 `"5"', add
label define iq97a_pern_lbl 06 `"6"', add
label define iq97a_pern_lbl 07 `"7"', add
label define iq97a_pern_lbl 08 `"8"', add
label define iq97a_pern_lbl 09 `"9"', add
label define iq97a_pern_lbl 10 `"10"', add
label define iq97a_pern_lbl 11 `"11"', add
label define iq97a_pern_lbl 12 `"12"', add
label define iq97a_pern_lbl 13 `"13"', add
label define iq97a_pern_lbl 14 `"14"', add
label define iq97a_pern_lbl 15 `"15"', add
label define iq97a_pern_lbl 16 `"16"', add
label define iq97a_pern_lbl 17 `"17"', add
label define iq97a_pern_lbl 18 `"18"', add
label define iq97a_pern_lbl 19 `"19"', add
label define iq97a_pern_lbl 20 `"20"', add
label define iq97a_pern_lbl 21 `"21"', add
label define iq97a_pern_lbl 22 `"22"', add
label define iq97a_pern_lbl 23 `"23"', add
label define iq97a_pern_lbl 24 `"24"', add
label define iq97a_pern_lbl 25 `"25"', add
label define iq97a_pern_lbl 26 `"26"', add
label define iq97a_pern_lbl 27 `"27"', add
label define iq97a_pern_lbl 28 `"28"', add
label define iq97a_pern_lbl 29 `"29"', add
label define iq97a_pern_lbl 30 `"30"', add
label values iq97a_pern iq97a_pern_lbl

label define iq97a_fbig_lbl 0 `"No problem"'
label define iq97a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define iq97a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values iq97a_fbig iq97a_fbig_lbl

label define iq97a_gov_lbl 11 `"Dhok"'
label define iq97a_gov_lbl 12 `"Nineveh"', add
label define iq97a_gov_lbl 13 `"Al-Sulaimaniya"', add
label define iq97a_gov_lbl 14 `"Al-Tameem"', add
label define iq97a_gov_lbl 15 `"Arbil"', add
label define iq97a_gov_lbl 21 `"Diala"', add
label define iq97a_gov_lbl 22 `"Al-Anbar"', add
label define iq97a_gov_lbl 23 `"Baghdad"', add
label define iq97a_gov_lbl 24 `"Babylon"', add
label define iq97a_gov_lbl 25 `"Kerbela"', add
label define iq97a_gov_lbl 26 `"Wasit"', add
label define iq97a_gov_lbl 27 `"Salah Al-Deen"', add
label define iq97a_gov_lbl 28 `"Al-Najaf"', add
label define iq97a_gov_lbl 31 `"Al-Qadisiya"', add
label define iq97a_gov_lbl 32 `"Al-Muthanna"', add
label define iq97a_gov_lbl 33 `"Thi-Qar"', add
label define iq97a_gov_lbl 34 `"Maysan"', add
label define iq97a_gov_lbl 35 `"Al-Basrah"', add
label values iq97a_gov iq97a_gov_lbl

label define iq97a_qad_lbl 1101 `"Dhok Qadah"'
label define iq97a_qad_lbl 1102 `"Al-Amadiya Qadah"', add
label define iq97a_qad_lbl 1103 `"Zakho Qadah"', add
label define iq97a_qad_lbl 1104 `"Sumail Qadah"', add
label define iq97a_qad_lbl 1201 `"Al-Mosul Qadah"', add
label define iq97a_qad_lbl 1203 `"Al-Hamdaniya Qadah"', add
label define iq97a_qad_lbl 1204 `"Tilkaif Qadah"', add
label define iq97a_qad_lbl 1205 `"Sinjar Qadah"', add
label define iq97a_qad_lbl 1206 `"Telafar Qadah"', add
label define iq97a_qad_lbl 1207 `"Al-Shikhan Qadah"', add
label define iq97a_qad_lbl 1208 `"Al-Hatra Qadah"', add
label define iq97a_qad_lbl 1209 `"Al-Baaj Qadah"', add
label define iq97a_qad_lbl 1210 `"Aqra Qadah"', add
label define iq97a_qad_lbl 1301 `"Al-Sulaimaniya Qadah"', add
label define iq97a_qad_lbl 1303 `"Suddamait Halabcha Qadah"', add
label define iq97a_qad_lbl 1305 `"Pishder Qadah"', add
label define iq97a_qad_lbl 1306 `"Rania Qadah"', add
label define iq97a_qad_lbl 1307 `"Dokan Qadah"', add
label define iq97a_qad_lbl 1308 `"Der Bendi Khan Qadah"', add
label define iq97a_qad_lbl 1309 `"Chamchamal Qadah"', add
label define iq97a_qad_lbl 1310 `"Kalar Qadah"', add
label define iq97a_qad_lbl 1401 `"Kirkuk Qadah"', add
label define iq97a_qad_lbl 1402 `"Al-Hawiga Qadah"', add
label define iq97a_qad_lbl 1403 `"Daquq Qadah"', add
label define iq97a_qad_lbl 1501 `"Arbil Qadah"', add
label define iq97a_qad_lbl 1502 `"Makhmour Qadah"', add
label define iq97a_qad_lbl 1504 `"Al-Siddiq Qadah"', add
label define iq97a_qad_lbl 1506 `"Shaqlawa Qadah"', add
label define iq97a_qad_lbl 2101 `"Baquba Qadah"', add
label define iq97a_qad_lbl 2102 `"Al-Muqdadiya Qadah"', add
label define iq97a_qad_lbl 2103 `"Al-Khalis Qadah"', add
label define iq97a_qad_lbl 2104 `"Khanaqin Qadah"', add
label define iq97a_qad_lbl 2105 `"Bladrooz Qadah"', add
label define iq97a_qad_lbl 2106 `"Kifri Qadah"', add
label define iq97a_qad_lbl 2201 `"Al-Anbar Qadah"', add
label define iq97a_qad_lbl 2202 `"Heet Qadah"', add
label define iq97a_qad_lbl 2203 `"Al-Falluja Qadah"', add
label define iq97a_qad_lbl 2204 `"Ana Qadah"', add
label define iq97a_qad_lbl 2205 `"Haditha Qadah"', add
label define iq97a_qad_lbl 2206 `"AL-Rutba Qadah"', add
label define iq97a_qad_lbl 2207 `"Al-Kaim Qadah"', add
label define iq97a_qad_lbl 2208 `"Suddamait Al-Tharthar Qadah"', add
label define iq97a_qad_lbl 2301 `"Al-Risafa Qadah"', add
label define iq97a_qad_lbl 2302 `"Al-Adhamiya Qadah"', add
label define iq97a_qad_lbl 2303 `"Saddam Qadah"', add
label define iq97a_qad_lbl 2305 `"Al-Karkh Qadah"', add
label define iq97a_qad_lbl 2306 `"Al-Kadhimiya Qadah"', add
label define iq97a_qad_lbl 2307 `"Al-Mahmudiya Qadah"', add
label define iq97a_qad_lbl 2308 `"Abu-Ghraib Qadah"', add
label define iq97a_qad_lbl 2310 `"Al-Madaain Qadah"', add
label define iq97a_qad_lbl 2401 `"Al-Hilla Qadah"', add
label define iq97a_qad_lbl 2402 `"Al-Mahawil Qadah"', add
label define iq97a_qad_lbl 2403 `"Al-Hashimiya Qadah"', add
label define iq97a_qad_lbl 2405 `"Al-Musayab Qadah"', add
label define iq97a_qad_lbl 2501 `"Kerbela Qadah"', add
label define iq97a_qad_lbl 2502 `"Ein Al-Tamur Qadah"', add
label define iq97a_qad_lbl 2503 `"Al-Hindiya Qadah"', add
label define iq97a_qad_lbl 2601 `"Al-Kut Qadah"', add
label define iq97a_qad_lbl 2602 `"Al-Naamaniya Qadah"', add
label define iq97a_qad_lbl 2603 `"Al-Hai Qadah"', add
label define iq97a_qad_lbl 2604 `"Badra Qadah"', add
label define iq97a_qad_lbl 2605 `"Al-Suwaira Qadah"', add
label define iq97a_qad_lbl 2701 `"Tikrit Qadah"', add
label define iq97a_qad_lbl 2702 `"Tooz Garmato Qadah"', add
label define iq97a_qad_lbl 2703 `"Samarra Qadah"', add
label define iq97a_qad_lbl 2704 `"Balad Qadah"', add
label define iq97a_qad_lbl 2705 `"Beygee Qadah"', add
label define iq97a_qad_lbl 2706 `"Al-Daur Qadah"', add
label define iq97a_qad_lbl 2707 `"Al-Shirqat Qadah"', add
label define iq97a_qad_lbl 2708 `"Al-Faris Qadah"', add
label define iq97a_qad_lbl 2801 `"Al-Najaf Qadah"', add
label define iq97a_qad_lbl 2802 `"Al-Kufa Qadah"', add
label define iq97a_qad_lbl 2803 `"Al-Manathera Qadah"', add
label define iq97a_qad_lbl 3101 `"Al-Diwaniya Qadah"', add
label define iq97a_qad_lbl 3102 `"Afaq Qadah"', add
label define iq97a_qad_lbl 3104 `"Al-Shamiya Qadah"', add
label define iq97a_qad_lbl 3105 `"Al-Hamza Qadah"', add
label define iq97a_qad_lbl 3201 `"Al-Samawa Qadah"', add
label define iq97a_qad_lbl 3202 `"Al-Rumatha Qadah"', add
label define iq97a_qad_lbl 3203 `"Al-Salman Qadah"', add
label define iq97a_qad_lbl 3204 `"Al-khidhir Qadah"', add
label define iq97a_qad_lbl 3301 `"Al-Nasiriya Qadah"', add
label define iq97a_qad_lbl 3302 `"Al-Rifai Qadah"', add
label define iq97a_qad_lbl 3303 `"Suq Al-Shoyokh Qadah"', add
label define iq97a_qad_lbl 3304 `"Al-Chibayish Qadah"', add
label define iq97a_qad_lbl 3305 `"Al-Shatra Qadah"', add
label define iq97a_qad_lbl 3401 `"Al-Amara Qadah"', add
label define iq97a_qad_lbl 3402 `"Ali Al-Gharbi Qadah"', add
label define iq97a_qad_lbl 3403 `"Al-Maimouna Qadah"', add
label define iq97a_qad_lbl 3404 `"Qalat Saleh Qadah"', add
label define iq97a_qad_lbl 3405 `"Al-Mejar Al-Kabir Qadah"', add
label define iq97a_qad_lbl 3406 `"Al-Kahla Qadah"', add
label define iq97a_qad_lbl 3501 `"Al-Basrah Qadah"', add
label define iq97a_qad_lbl 3502 `"Abu Al-Khaseeb Qadah"', add
label define iq97a_qad_lbl 3503 `"Al-Zubair Qadah"', add
label define iq97a_qad_lbl 3504 `"Al-Qurna Qadah"', add
label define iq97a_qad_lbl 3505 `"Al-Fao Qadah"', add
label define iq97a_qad_lbl 3506 `"Shat Al-Arab Qadah"', add
label define iq97a_qad_lbl 3507 `"Al-Midaina Qadah"', add
label define iq97a_qad_lbl 3508 `"Suddamait Al-Basrah Qadah"', add
label values iq97a_qad iq97a_qad_lbl

label define iq97a_urban_lbl 1 `"Urban"'
label define iq97a_urban_lbl 2 `"Rural"', add
label define iq97a_urban_lbl 9 `"Unknown"', add
label values iq97a_urban iq97a_urban_lbl

label define iq97a_hhno_lbl 00 `"NIU (not in universe)"'
label define iq97a_hhno_lbl 01 `"1"', add
label define iq97a_hhno_lbl 02 `"2"', add
label define iq97a_hhno_lbl 03 `"3"', add
label define iq97a_hhno_lbl 04 `"4"', add
label define iq97a_hhno_lbl 05 `"5"', add
label define iq97a_hhno_lbl 06 `"6"', add
label define iq97a_hhno_lbl 07 `"7"', add
label define iq97a_hhno_lbl 08 `"8"', add
label define iq97a_hhno_lbl 09 `"9"', add
label define iq97a_hhno_lbl 10 `"10"', add
label define iq97a_hhno_lbl 11 `"11"', add
label define iq97a_hhno_lbl 12 `"12"', add
label define iq97a_hhno_lbl 13 `"13"', add
label define iq97a_hhno_lbl 14 `"14"', add
label define iq97a_hhno_lbl 15 `"15+"', add
label values iq97a_hhno iq97a_hhno_lbl

label define iq97a_roombed_lbl 00 `"0"'
label define iq97a_roombed_lbl 01 `"1"', add
label define iq97a_roombed_lbl 02 `"2"', add
label define iq97a_roombed_lbl 03 `"3"', add
label define iq97a_roombed_lbl 04 `"4"', add
label define iq97a_roombed_lbl 05 `"5"', add
label define iq97a_roombed_lbl 06 `"6"', add
label define iq97a_roombed_lbl 07 `"7"', add
label define iq97a_roombed_lbl 08 `"8"', add
label define iq97a_roombed_lbl 09 `"9"', add
label define iq97a_roombed_lbl 10 `"10"', add
label define iq97a_roombed_lbl 11 `"11"', add
label define iq97a_roombed_lbl 12 `"12"', add
label define iq97a_roombed_lbl 13 `"13"', add
label define iq97a_roombed_lbl 14 `"14+"', add
label define iq97a_roombed_lbl 99 `"NIU (not in universe)"', add
label values iq97a_roombed iq97a_roombed_lbl

label define iq97a_owner_lbl 1 `"Owned, private sector"'
label define iq97a_owner_lbl 2 `"Rent from private sector"', add
label define iq97a_owner_lbl 3 `"Other from private sector"', add
label define iq97a_owner_lbl 4 `"Rent from government sector"', add
label define iq97a_owner_lbl 5 `"Other from government sector"', add
label define iq97a_owner_lbl 8 `"Unknown"', add
label define iq97a_owner_lbl 9 `"NIU (not in universe)"', add
label values iq97a_owner iq97a_owner_lbl

label define iq97a_dwsize_lbl 1 `"All unit"'
label define iq97a_dwsize_lbl 2 `"One room"', add
label define iq97a_dwsize_lbl 3 `"Two rooms"', add
label define iq97a_dwsize_lbl 4 `"Three rooms and more"', add
label define iq97a_dwsize_lbl 8 `"Unknown"', add
label define iq97a_dwsize_lbl 9 `"NIU (not in universe)"', add
label values iq97a_dwsize iq97a_dwsize_lbl

label define iq97a_rent_lbl 000000 `"NIU (not in universe)"'
label define iq97a_rent_lbl 000001 `"1"', add
label define iq97a_rent_lbl 000002 `"2"', add
label define iq97a_rent_lbl 000003 `"3"', add
label define iq97a_rent_lbl 000004 `"4"', add
label define iq97a_rent_lbl 000005 `"5"', add
label define iq97a_rent_lbl 000006 `"6"', add
label define iq97a_rent_lbl 000007 `"7"', add
label define iq97a_rent_lbl 000008 `"8"', add
label define iq97a_rent_lbl 000009 `"9"', add
label define iq97a_rent_lbl 000010 `"10"', add
label define iq97a_rent_lbl 000011 `"11"', add
label define iq97a_rent_lbl 000012 `"12"', add
label define iq97a_rent_lbl 000013 `"13"', add
label define iq97a_rent_lbl 000014 `"14"', add
label define iq97a_rent_lbl 000015 `"15"', add
label define iq97a_rent_lbl 000016 `"16"', add
label define iq97a_rent_lbl 000017 `"17"', add
label define iq97a_rent_lbl 000018 `"18"', add
label define iq97a_rent_lbl 000019 `"19"', add
label define iq97a_rent_lbl 000020 `"20"', add
label define iq97a_rent_lbl 000021 `"21"', add
label define iq97a_rent_lbl 000022 `"22"', add
label define iq97a_rent_lbl 000023 `"23"', add
label define iq97a_rent_lbl 000024 `"24"', add
label define iq97a_rent_lbl 000025 `"25"', add
label define iq97a_rent_lbl 000026 `"26"', add
label define iq97a_rent_lbl 000027 `"27"', add
label define iq97a_rent_lbl 000028 `"28"', add
label define iq97a_rent_lbl 000029 `"29"', add
label define iq97a_rent_lbl 000030 `"30"', add
label define iq97a_rent_lbl 000031 `"31"', add
label define iq97a_rent_lbl 000032 `"32"', add
label define iq97a_rent_lbl 000033 `"33"', add
label define iq97a_rent_lbl 000034 `"34"', add
label define iq97a_rent_lbl 000035 `"35"', add
label define iq97a_rent_lbl 000036 `"36"', add
label define iq97a_rent_lbl 000037 `"37"', add
label define iq97a_rent_lbl 000038 `"38"', add
label define iq97a_rent_lbl 000039 `"39"', add
label define iq97a_rent_lbl 000040 `"40"', add
label define iq97a_rent_lbl 000041 `"41"', add
label define iq97a_rent_lbl 000042 `"42"', add
label define iq97a_rent_lbl 000043 `"43"', add
label define iq97a_rent_lbl 000044 `"44"', add
label define iq97a_rent_lbl 000045 `"45"', add
label define iq97a_rent_lbl 000046 `"46"', add
label define iq97a_rent_lbl 000047 `"47"', add
label define iq97a_rent_lbl 000048 `"48"', add
label define iq97a_rent_lbl 000050 `"50"', add
label define iq97a_rent_lbl 000051 `"51"', add
label define iq97a_rent_lbl 000052 `"52"', add
label define iq97a_rent_lbl 000053 `"53"', add
label define iq97a_rent_lbl 000054 `"54"', add
label define iq97a_rent_lbl 000055 `"55"', add
label define iq97a_rent_lbl 000056 `"56"', add
label define iq97a_rent_lbl 000057 `"57"', add
label define iq97a_rent_lbl 000058 `"58"', add
label define iq97a_rent_lbl 000059 `"59"', add
label define iq97a_rent_lbl 000060 `"60"', add
label define iq97a_rent_lbl 000062 `"62"', add
label define iq97a_rent_lbl 000063 `"63"', add
label define iq97a_rent_lbl 000065 `"65"', add
label define iq97a_rent_lbl 000066 `"66"', add
label define iq97a_rent_lbl 000067 `"67"', add
label define iq97a_rent_lbl 000068 `"68"', add
label define iq97a_rent_lbl 000069 `"69"', add
label define iq97a_rent_lbl 000070 `"70"', add
label define iq97a_rent_lbl 000071 `"71"', add
label define iq97a_rent_lbl 000072 `"72"', add
label define iq97a_rent_lbl 000073 `"73"', add
label define iq97a_rent_lbl 000074 `"74"', add
label define iq97a_rent_lbl 000075 `"75"', add
label define iq97a_rent_lbl 000076 `"76"', add
label define iq97a_rent_lbl 000077 `"77"', add
label define iq97a_rent_lbl 000078 `"78"', add
label define iq97a_rent_lbl 000080 `"80"', add
label define iq97a_rent_lbl 000081 `"81"', add
label define iq97a_rent_lbl 000082 `"82"', add
label define iq97a_rent_lbl 000083 `"83"', add
label define iq97a_rent_lbl 000084 `"84"', add
label define iq97a_rent_lbl 000085 `"85"', add
label define iq97a_rent_lbl 000086 `"86"', add
label define iq97a_rent_lbl 000087 `"87"', add
label define iq97a_rent_lbl 000088 `"88"', add
label define iq97a_rent_lbl 000089 `"89"', add
label define iq97a_rent_lbl 000090 `"90"', add
label define iq97a_rent_lbl 000091 `"91"', add
label define iq97a_rent_lbl 000094 `"94"', add
label define iq97a_rent_lbl 000095 `"95"', add
label define iq97a_rent_lbl 000096 `"96"', add
label define iq97a_rent_lbl 000098 `"98"', add
label define iq97a_rent_lbl 000100 `"100"', add
label define iq97a_rent_lbl 000101 `"101"', add
label define iq97a_rent_lbl 000102 `"102"', add
label define iq97a_rent_lbl 000103 `"103"', add
label define iq97a_rent_lbl 000104 `"104"', add
label define iq97a_rent_lbl 000105 `"105"', add
label define iq97a_rent_lbl 000106 `"106"', add
label define iq97a_rent_lbl 000107 `"107"', add
label define iq97a_rent_lbl 000108 `"108"', add
label define iq97a_rent_lbl 000109 `"109"', add
label define iq97a_rent_lbl 000110 `"110"', add
label define iq97a_rent_lbl 000112 `"112"', add
label define iq97a_rent_lbl 000113 `"113"', add
label define iq97a_rent_lbl 000114 `"114"', add
label define iq97a_rent_lbl 000115 `"115"', add
label define iq97a_rent_lbl 000116 `"116"', add
label define iq97a_rent_lbl 000117 `"117"', add
label define iq97a_rent_lbl 000118 `"118"', add
label define iq97a_rent_lbl 000119 `"119"', add
label define iq97a_rent_lbl 000120 `"120"', add
label define iq97a_rent_lbl 000121 `"121"', add
label define iq97a_rent_lbl 000122 `"122"', add
label define iq97a_rent_lbl 000123 `"123"', add
label define iq97a_rent_lbl 000124 `"124"', add
label define iq97a_rent_lbl 000125 `"125"', add
label define iq97a_rent_lbl 000126 `"126"', add
label define iq97a_rent_lbl 000127 `"127"', add
label define iq97a_rent_lbl 000128 `"128"', add
label define iq97a_rent_lbl 000129 `"129"', add
label define iq97a_rent_lbl 000130 `"130"', add
label define iq97a_rent_lbl 000132 `"132"', add
label define iq97a_rent_lbl 000133 `"133"', add
label define iq97a_rent_lbl 000135 `"135"', add
label define iq97a_rent_lbl 000136 `"136"', add
label define iq97a_rent_lbl 000138 `"138"', add
label define iq97a_rent_lbl 000139 `"139"', add
label define iq97a_rent_lbl 000140 `"140"', add
label define iq97a_rent_lbl 000141 `"141"', add
label define iq97a_rent_lbl 000143 `"143"', add
label define iq97a_rent_lbl 000144 `"144"', add
label define iq97a_rent_lbl 000145 `"145"', add
label define iq97a_rent_lbl 000146 `"146"', add
label define iq97a_rent_lbl 000147 `"147"', add
label define iq97a_rent_lbl 000148 `"148"', add
label define iq97a_rent_lbl 000150 `"150"', add
label define iq97a_rent_lbl 000151 `"151"', add
label define iq97a_rent_lbl 000152 `"152"', add
label define iq97a_rent_lbl 000153 `"153"', add
label define iq97a_rent_lbl 000154 `"154"', add
label define iq97a_rent_lbl 000155 `"155"', add
label define iq97a_rent_lbl 000156 `"156"', add
label define iq97a_rent_lbl 000157 `"157"', add
label define iq97a_rent_lbl 000158 `"158"', add
label define iq97a_rent_lbl 000160 `"160"', add
label define iq97a_rent_lbl 000163 `"163"', add
label define iq97a_rent_lbl 000164 `"164"', add
label define iq97a_rent_lbl 000165 `"165"', add
label define iq97a_rent_lbl 000166 `"166"', add
label define iq97a_rent_lbl 000168 `"168"', add
label define iq97a_rent_lbl 000170 `"170"', add
label define iq97a_rent_lbl 000171 `"171"', add
label define iq97a_rent_lbl 000173 `"173"', add
label define iq97a_rent_lbl 000174 `"174"', add
label define iq97a_rent_lbl 000175 `"175"', add
label define iq97a_rent_lbl 000176 `"176"', add
label define iq97a_rent_lbl 000177 `"177"', add
label define iq97a_rent_lbl 000178 `"178"', add
label define iq97a_rent_lbl 000179 `"179"', add
label define iq97a_rent_lbl 000180 `"180"', add
label define iq97a_rent_lbl 000181 `"181"', add
label define iq97a_rent_lbl 000182 `"182"', add
label define iq97a_rent_lbl 000185 `"185"', add
label define iq97a_rent_lbl 000186 `"186"', add
label define iq97a_rent_lbl 000187 `"187"', add
label define iq97a_rent_lbl 000188 `"188"', add
label define iq97a_rent_lbl 000190 `"190"', add
label define iq97a_rent_lbl 000191 `"191"', add
label define iq97a_rent_lbl 000195 `"195"', add
label define iq97a_rent_lbl 000196 `"196"', add
label define iq97a_rent_lbl 000197 `"197"', add
label define iq97a_rent_lbl 000198 `"198"', add
label define iq97a_rent_lbl 000199 `"199"', add
label define iq97a_rent_lbl 000200 `"200"', add
label define iq97a_rent_lbl 000201 `"201"', add
label define iq97a_rent_lbl 000205 `"205"', add
label define iq97a_rent_lbl 000206 `"206"', add
label define iq97a_rent_lbl 000207 `"207"', add
label define iq97a_rent_lbl 000209 `"209"', add
label define iq97a_rent_lbl 000210 `"210"', add
label define iq97a_rent_lbl 000211 `"211"', add
label define iq97a_rent_lbl 000212 `"212"', add
label define iq97a_rent_lbl 000213 `"213"', add
label define iq97a_rent_lbl 000215 `"215"', add
label define iq97a_rent_lbl 000216 `"216"', add
label define iq97a_rent_lbl 000217 `"217"', add
label define iq97a_rent_lbl 000218 `"218"', add
label define iq97a_rent_lbl 000219 `"219"', add
label define iq97a_rent_lbl 000220 `"220"', add
label define iq97a_rent_lbl 000221 `"221"', add
label define iq97a_rent_lbl 000225 `"225"', add
label define iq97a_rent_lbl 000226 `"226"', add
label define iq97a_rent_lbl 000230 `"230"', add
label define iq97a_rent_lbl 000233 `"233"', add
label define iq97a_rent_lbl 000235 `"235"', add
label define iq97a_rent_lbl 000240 `"240"', add
label define iq97a_rent_lbl 000245 `"245"', add
label define iq97a_rent_lbl 000250 `"250"', add
label define iq97a_rent_lbl 000251 `"251"', add
label define iq97a_rent_lbl 000255 `"255"', add
label define iq97a_rent_lbl 000260 `"260"', add
label define iq97a_rent_lbl 000265 `"265"', add
label define iq97a_rent_lbl 000270 `"270"', add
label define iq97a_rent_lbl 000273 `"273"', add
label define iq97a_rent_lbl 000275 `"275"', add
label define iq97a_rent_lbl 000279 `"279"', add
label define iq97a_rent_lbl 000280 `"280"', add
label define iq97a_rent_lbl 000281 `"281"', add
label define iq97a_rent_lbl 000285 `"285"', add
label define iq97a_rent_lbl 000290 `"290"', add
label define iq97a_rent_lbl 000294 `"294"', add
label define iq97a_rent_lbl 000295 `"295"', add
label define iq97a_rent_lbl 000296 `"296"', add
label define iq97a_rent_lbl 000300 `"300"', add
label define iq97a_rent_lbl 000305 `"305"', add
label define iq97a_rent_lbl 000310 `"310"', add
label define iq97a_rent_lbl 000311 `"311"', add
label define iq97a_rent_lbl 000314 `"314"', add
label define iq97a_rent_lbl 000315 `"315"', add
label define iq97a_rent_lbl 000320 `"320"', add
label define iq97a_rent_lbl 000330 `"330"', add
label define iq97a_rent_lbl 000333 `"333"', add
label define iq97a_rent_lbl 000334 `"334"', add
label define iq97a_rent_lbl 000343 `"343"', add
label define iq97a_rent_lbl 000350 `"350"', add
label define iq97a_rent_lbl 000351 `"351"', add
label define iq97a_rent_lbl 000353 `"353"', add
label define iq97a_rent_lbl 000355 `"355"', add
label define iq97a_rent_lbl 000360 `"360"', add
label define iq97a_rent_lbl 000365 `"365"', add
label define iq97a_rent_lbl 000370 `"370"', add
label define iq97a_rent_lbl 000375 `"375"', add
label define iq97a_rent_lbl 000376 `"376"', add
label define iq97a_rent_lbl 000377 `"377"', add
label define iq97a_rent_lbl 000380 `"380"', add
label define iq97a_rent_lbl 000391 `"391"', add
label define iq97a_rent_lbl 000400 `"400"', add
label define iq97a_rent_lbl 000417 `"417"', add
label define iq97a_rent_lbl 000420 `"420"', add
label define iq97a_rent_lbl 000430 `"430"', add
label define iq97a_rent_lbl 000432 `"432"', add
label define iq97a_rent_lbl 000439 `"439"', add
label define iq97a_rent_lbl 000440 `"440"', add
label define iq97a_rent_lbl 000441 `"441"', add
label define iq97a_rent_lbl 000443 `"443"', add
label define iq97a_rent_lbl 000450 `"450"', add
label define iq97a_rent_lbl 000453 `"453"', add
label define iq97a_rent_lbl 000460 `"460"', add
label define iq97a_rent_lbl 000467 `"467"', add
label define iq97a_rent_lbl 000470 `"470"', add
label define iq97a_rent_lbl 000480 `"480"', add
label define iq97a_rent_lbl 000490 `"490"', add
label define iq97a_rent_lbl 000500 `"500"', add
label define iq97a_rent_lbl 000506 `"506"', add
label define iq97a_rent_lbl 000520 `"520"', add
label define iq97a_rent_lbl 000525 `"525"', add
label define iq97a_rent_lbl 000540 `"540"', add
label define iq97a_rent_lbl 000549 `"549"', add
label define iq97a_rent_lbl 000550 `"550"', add
label define iq97a_rent_lbl 000563 `"563"', add
label define iq97a_rent_lbl 000570 `"570"', add
label define iq97a_rent_lbl 000580 `"580"', add
label define iq97a_rent_lbl 000584 `"584"', add
label define iq97a_rent_lbl 000590 `"590"', add
label define iq97a_rent_lbl 000600 `"600"', add
label define iq97a_rent_lbl 000605 `"605"', add
label define iq97a_rent_lbl 000625 `"625"', add
label define iq97a_rent_lbl 000633 `"633"', add
label define iq97a_rent_lbl 000650 `"650"', add
label define iq97a_rent_lbl 000665 `"665"', add
label define iq97a_rent_lbl 000675 `"675"', add
label define iq97a_rent_lbl 000690 `"690"', add
label define iq97a_rent_lbl 000700 `"700"', add
label define iq97a_rent_lbl 000750 `"750"', add
label define iq97a_rent_lbl 000780 `"780"', add
label define iq97a_rent_lbl 000800 `"800"', add
label define iq97a_rent_lbl 000823 `"823"', add
label define iq97a_rent_lbl 000850 `"850"', add
label define iq97a_rent_lbl 000875 `"875"', add
label define iq97a_rent_lbl 000890 `"890"', add
label define iq97a_rent_lbl 000900 `"900"', add
label define iq97a_rent_lbl 000920 `"920"', add
label define iq97a_rent_lbl 000945 `"945"', add
label define iq97a_rent_lbl 000950 `"950"', add
label define iq97a_rent_lbl 000952 `"952"', add
label define iq97a_rent_lbl 000970 `"970"', add
label define iq97a_rent_lbl 000975 `"975"', add
label define iq97a_rent_lbl 001000 `"1000"', add
label define iq97a_rent_lbl 001018 `"1018"', add
label define iq97a_rent_lbl 001020 `"1020"', add
label define iq97a_rent_lbl 001025 `"1025"', add
label define iq97a_rent_lbl 001100 `"1100"', add
label define iq97a_rent_lbl 001120 `"1120"', add
label define iq97a_rent_lbl 001125 `"1125"', add
label define iq97a_rent_lbl 001130 `"1130"', add
label define iq97a_rent_lbl 001150 `"1150"', add
label define iq97a_rent_lbl 001180 `"1180"', add
label define iq97a_rent_lbl 001200 `"1200"', add
label define iq97a_rent_lbl 001250 `"1250"', add
label define iq97a_rent_lbl 001300 `"1300"', add
label define iq97a_rent_lbl 001305 `"1305"', add
label define iq97a_rent_lbl 001350 `"1350"', add
label define iq97a_rent_lbl 001360 `"1360"', add
label define iq97a_rent_lbl 001400 `"1400"', add
label define iq97a_rent_lbl 001500 `"1500"', add
label define iq97a_rent_lbl 001530 `"1530"', add
label define iq97a_rent_lbl 001580 `"1580"', add
label define iq97a_rent_lbl 001600 `"1600"', add
label define iq97a_rent_lbl 001700 `"1700"', add
label define iq97a_rent_lbl 001750 `"1750"', add
label define iq97a_rent_lbl 001800 `"1800"', add
label define iq97a_rent_lbl 001850 `"1850"', add
label define iq97a_rent_lbl 001900 `"1900"', add
label define iq97a_rent_lbl 002000 `"2000"', add
label define iq97a_rent_lbl 002100 `"2100"', add
label define iq97a_rent_lbl 002120 `"2120"', add
label define iq97a_rent_lbl 002200 `"2200"', add
label define iq97a_rent_lbl 002250 `"2250"', add
label define iq97a_rent_lbl 002300 `"2300"', add
label define iq97a_rent_lbl 002350 `"2350"', add
label define iq97a_rent_lbl 002400 `"2400"', add
label define iq97a_rent_lbl 002500 `"2500"', add
label define iq97a_rent_lbl 002600 `"2600"', add
label define iq97a_rent_lbl 002633 `"2633"', add
label define iq97a_rent_lbl 002700 `"2700"', add
label define iq97a_rent_lbl 002750 `"2750"', add
label define iq97a_rent_lbl 002800 `"2800"', add
label define iq97a_rent_lbl 002850 `"2850"', add
label define iq97a_rent_lbl 002900 `"2900"', add
label define iq97a_rent_lbl 003000 `"3000"', add
label define iq97a_rent_lbl 003050 `"3050"', add
label define iq97a_rent_lbl 003100 `"3100"', add
label define iq97a_rent_lbl 003200 `"3200"', add
label define iq97a_rent_lbl 003250 `"3250"', add
label define iq97a_rent_lbl 003300 `"3300"', add
label define iq97a_rent_lbl 003400 `"3400"', add
label define iq97a_rent_lbl 003500 `"3500"', add
label define iq97a_rent_lbl 003600 `"3600"', add
label define iq97a_rent_lbl 003750 `"3750"', add
label define iq97a_rent_lbl 004000 `"4000"', add
label define iq97a_rent_lbl 004150 `"4150"', add
label define iq97a_rent_lbl 004200 `"4200"', add
label define iq97a_rent_lbl 004250 `"4250"', add
label define iq97a_rent_lbl 004500 `"4500"', add
label define iq97a_rent_lbl 004600 `"4600"', add
label define iq97a_rent_lbl 004800 `"4800"', add
label define iq97a_rent_lbl 005000 `"5000"', add
label define iq97a_rent_lbl 005050 `"5050"', add
label define iq97a_rent_lbl 005120 `"5120"', add
label define iq97a_rent_lbl 005250 `"5250"', add
label define iq97a_rent_lbl 005420 `"5420"', add
label define iq97a_rent_lbl 005500 `"5500"', add
label define iq97a_rent_lbl 005501 `"5501"', add
label define iq97a_rent_lbl 006000 `"6000"', add
label define iq97a_rent_lbl 006250 `"6250"', add
label define iq97a_rent_lbl 006500 `"6500"', add
label define iq97a_rent_lbl 006600 `"6600"', add
label define iq97a_rent_lbl 006725 `"6725"', add
label define iq97a_rent_lbl 007000 `"7000"', add
label define iq97a_rent_lbl 007200 `"7200"', add
label define iq97a_rent_lbl 007500 `"7500"', add
label define iq97a_rent_lbl 008000 `"8000"', add
label define iq97a_rent_lbl 008250 `"8250"', add
label define iq97a_rent_lbl 008500 `"8500"', add
label define iq97a_rent_lbl 008750 `"8750"', add
label define iq97a_rent_lbl 009000 `"9000"', add
label define iq97a_rent_lbl 009500 `"9500"', add
label define iq97a_rent_lbl 010000 `"10000"', add
label define iq97a_rent_lbl 010250 `"10250"', add
label define iq97a_rent_lbl 010500 `"10500"', add
label define iq97a_rent_lbl 011000 `"11000"', add
label define iq97a_rent_lbl 012000 `"12000"', add
label define iq97a_rent_lbl 012500 `"12500"', add
label define iq97a_rent_lbl 013000 `"13000"', add
label define iq97a_rent_lbl 014000 `"14000"', add
label define iq97a_rent_lbl 014167 `"14167"', add
label define iq97a_rent_lbl 014500 `"14500"', add
label define iq97a_rent_lbl 015000 `"15000"', add
label define iq97a_rent_lbl 015500 `"15500"', add
label define iq97a_rent_lbl 016000 `"16000"', add
label define iq97a_rent_lbl 016500 `"16500"', add
label define iq97a_rent_lbl 016600 `"16600"', add
label define iq97a_rent_lbl 016650 `"16650"', add
label define iq97a_rent_lbl 016750 `"16750"', add
label define iq97a_rent_lbl 017000 `"17000"', add
label define iq97a_rent_lbl 017500 `"17500"', add
label define iq97a_rent_lbl 018000 `"18000"', add
label define iq97a_rent_lbl 018750 `"18750"', add
label define iq97a_rent_lbl 019000 `"19000"', add
label define iq97a_rent_lbl 020000 `"20000"', add
label define iq97a_rent_lbl 020500 `"20500"', add
label define iq97a_rent_lbl 020800 `"20800"', add
label define iq97a_rent_lbl 021000 `"21000"', add
label define iq97a_rent_lbl 022000 `"22000"', add
label define iq97a_rent_lbl 022500 `"22500"', add
label define iq97a_rent_lbl 023000 `"23000"', add
label define iq97a_rent_lbl 024000 `"24000"', add
label define iq97a_rent_lbl 025000 `"25000"', add
label define iq97a_rent_lbl 026000 `"26000"', add
label define iq97a_rent_lbl 027000 `"27000"', add
label define iq97a_rent_lbl 027500 `"27500"', add
label define iq97a_rent_lbl 028000 `"28000"', add
label define iq97a_rent_lbl 028500 `"28500"', add
label define iq97a_rent_lbl 029000 `"29000"', add
label define iq97a_rent_lbl 030000 `"30000"', add
label define iq97a_rent_lbl 030375 `"30375"', add
label define iq97a_rent_lbl 031000 `"31000"', add
label define iq97a_rent_lbl 032000 `"32000"', add
label define iq97a_rent_lbl 032500 `"32500"', add
label define iq97a_rent_lbl 033000 `"33000"', add
label define iq97a_rent_lbl 033500 `"33500"', add
label define iq97a_rent_lbl 035000 `"35000"', add
label define iq97a_rent_lbl 035500 `"35500"', add
label define iq97a_rent_lbl 036000 `"36000"', add
label define iq97a_rent_lbl 037000 `"37000"', add
label define iq97a_rent_lbl 037500 `"37500"', add
label define iq97a_rent_lbl 038000 `"38000"', add
label define iq97a_rent_lbl 040000 `"40000"', add
label define iq97a_rent_lbl 041000 `"41000"', add
label define iq97a_rent_lbl 041500 `"41500"', add
label define iq97a_rent_lbl 041600 `"41600"', add
label define iq97a_rent_lbl 042000 `"42000"', add
label define iq97a_rent_lbl 042500 `"42500"', add
label define iq97a_rent_lbl 043000 `"43000"', add
label define iq97a_rent_lbl 045000 `"45000"', add
label define iq97a_rent_lbl 045833 `"45833"', add
label define iq97a_rent_lbl 046000 `"46000"', add
label define iq97a_rent_lbl 047000 `"47000"', add
label define iq97a_rent_lbl 048000 `"48000"', add
label define iq97a_rent_lbl 050000 `"50000"', add
label define iq97a_rent_lbl 050195 `"50195"', add
label define iq97a_rent_lbl 052000 `"52000"', add
label define iq97a_rent_lbl 052853 `"52853"', add
label define iq97a_rent_lbl 054000 `"54000"', add
label define iq97a_rent_lbl 055000 `"55000"', add
label define iq97a_rent_lbl 056000 `"56000"', add
label define iq97a_rent_lbl 058400 `"58400"', add
label define iq97a_rent_lbl 060000 `"60000"', add
label define iq97a_rent_lbl 062000 `"62000"', add
label define iq97a_rent_lbl 062500 `"62500"', add
label define iq97a_rent_lbl 063000 `"63000"', add
label define iq97a_rent_lbl 065000 `"65000"', add
label define iq97a_rent_lbl 066000 `"66000"', add
label define iq97a_rent_lbl 067000 `"67000"', add
label define iq97a_rent_lbl 068000 `"68000"', add
label define iq97a_rent_lbl 070000 `"70000"', add
label define iq97a_rent_lbl 073000 `"73000"', add
label define iq97a_rent_lbl 075000 `"75000"', add
label define iq97a_rent_lbl 080000 `"80000"', add
label define iq97a_rent_lbl 083000 `"83000"', add
label define iq97a_rent_lbl 084000 `"84000"', add
label define iq97a_rent_lbl 085000 `"85000"', add
label define iq97a_rent_lbl 090000 `"90000"', add
label define iq97a_rent_lbl 091500 `"91500"', add
label define iq97a_rent_lbl 100000 `"100000+"', add
label define iq97a_rent_lbl 999999 `"Unknown"', add
label values iq97a_rent iq97a_rent_lbl

label define iq97a_dwtype_lbl 1 `"House"'
label define iq97a_dwtype_lbl 2 `"Flat"', add
label define iq97a_dwtype_lbl 3 `"Mud house or hut"', add
label define iq97a_dwtype_lbl 4 `"Tent"', add
label define iq97a_dwtype_lbl 5 `"Caravan"', add
label define iq97a_dwtype_lbl 6 `"Other"', add
label define iq97a_dwtype_lbl 8 `"Unknown"', add
label define iq97a_dwtype_lbl 9 `"NIU (not in universe)"', add
label values iq97a_dwtype iq97a_dwtype_lbl

label define iq97a_walls_lbl 1 `"Bricks"'
label define iq97a_walls_lbl 2 `"Stone"', add
label define iq97a_walls_lbl 3 `"Blocks"', add
label define iq97a_walls_lbl 4 `"Concrete blocks"', add
label define iq97a_walls_lbl 5 `"Mud"', add
label define iq97a_walls_lbl 6 `"Other"', add
label define iq97a_walls_lbl 8 `"Unknown"', add
label define iq97a_walls_lbl 9 `"NIU (not in universe)"', add
label values iq97a_walls iq97a_walls_lbl

label define iq97a_rooms_lbl 00 `"0"'
label define iq97a_rooms_lbl 01 `"1"', add
label define iq97a_rooms_lbl 02 `"2"', add
label define iq97a_rooms_lbl 03 `"3"', add
label define iq97a_rooms_lbl 04 `"4"', add
label define iq97a_rooms_lbl 05 `"5"', add
label define iq97a_rooms_lbl 06 `"6"', add
label define iq97a_rooms_lbl 07 `"7"', add
label define iq97a_rooms_lbl 08 `"8"', add
label define iq97a_rooms_lbl 09 `"9"', add
label define iq97a_rooms_lbl 10 `"10"', add
label define iq97a_rooms_lbl 11 `"11"', add
label define iq97a_rooms_lbl 12 `"12"', add
label define iq97a_rooms_lbl 13 `"13"', add
label define iq97a_rooms_lbl 14 `"14"', add
label define iq97a_rooms_lbl 15 `"15"', add
label define iq97a_rooms_lbl 16 `"16"', add
label define iq97a_rooms_lbl 17 `"17"', add
label define iq97a_rooms_lbl 18 `"18"', add
label define iq97a_rooms_lbl 19 `"19"', add
label define iq97a_rooms_lbl 20 `"20+"', add
label define iq97a_rooms_lbl 99 `"NIU (not in universe)"', add
label values iq97a_rooms iq97a_rooms_lbl

label define iq97a_bath_lbl 1 `"Yes"'
label define iq97a_bath_lbl 2 `"No"', add
label define iq97a_bath_lbl 8 `"Unknown"', add
label define iq97a_bath_lbl 9 `"NIU (not in universe)"', add
label values iq97a_bath iq97a_bath_lbl

label define iq97a_toilet_lbl 1 `"Yes"'
label define iq97a_toilet_lbl 2 `"No"', add
label define iq97a_toilet_lbl 8 `"Unknown"', add
label define iq97a_toilet_lbl 9 `"NIU (not in universe)"', add
label values iq97a_toilet iq97a_toilet_lbl

label define iq97a_batht_lbl 1 `"Yes"'
label define iq97a_batht_lbl 2 `"No"', add
label define iq97a_batht_lbl 8 `"Unknown"', add
label define iq97a_batht_lbl 9 `"NIU (not in universe)"', add
label values iq97a_batht iq97a_batht_lbl

label define iq97a_kitch_lbl 1 `"Yes"'
label define iq97a_kitch_lbl 2 `"No"', add
label define iq97a_kitch_lbl 8 `"Unknown"', add
label define iq97a_kitch_lbl 9 `"NIU (not in universe)"', add
label values iq97a_kitch iq97a_kitch_lbl

label define iq97a_elect_lbl 1 `"Yes"'
label define iq97a_elect_lbl 2 `"No"', add
label define iq97a_elect_lbl 8 `"Unknown"', add
label define iq97a_elect_lbl 9 `"NIU (not in universe)"', add
label values iq97a_elect iq97a_elect_lbl

label define iq97a_phone_lbl 1 `"Yes"'
label define iq97a_phone_lbl 2 `"No"', add
label define iq97a_phone_lbl 8 `"Unknown"', add
label define iq97a_phone_lbl 9 `"NIU (not in universe)"', add
label values iq97a_phone iq97a_phone_lbl

label define iq97a_watsrc_lbl 1 `"Water nets"'
label define iq97a_watsrc_lbl 2 `"Public tap"', add
label define iq97a_watsrc_lbl 3 `"Well"', add
label define iq97a_watsrc_lbl 4 `"River or waterwheel"', add
label define iq97a_watsrc_lbl 5 `"Other"', add
label define iq97a_watsrc_lbl 8 `"Unknown"', add
label define iq97a_watsrc_lbl 9 `"NIU (not in universe)"', add
label values iq97a_watsrc iq97a_watsrc_lbl

label define iq97a_sewer_lbl 1 `"Public drainage"'
label define iq97a_sewer_lbl 2 `"Setting tank"', add
label define iq97a_sewer_lbl 3 `"Others"', add
label define iq97a_sewer_lbl 8 `"Unknown"', add
label define iq97a_sewer_lbl 9 `"NIU (not in universe)"', add
label values iq97a_sewer iq97a_sewer_lbl

label define iq97a_dwtyc_lbl 0 `"Private households"'
label define iq97a_dwtyc_lbl 1 `"Hotel"', add
label define iq97a_dwtyc_lbl 2 `"Hostel for students"', add
label define iq97a_dwtyc_lbl 3 `"Building for social care"', add
label define iq97a_dwtyc_lbl 4 `"Medical establishment"', add
label define iq97a_dwtyc_lbl 5 `"Mosque and church"', add
label define iq97a_dwtyc_lbl 6 `"Prisons, police stations, etc."', add
label define iq97a_dwtyc_lbl 7 `"Residential units engaged with persons"', add
label define iq97a_dwtyc_lbl 8 `"Others"', add
label define iq97a_dwtyc_lbl 9 `"Unknown"', add
label values iq97a_dwtyc iq97a_dwtyc_lbl

label define resident_lbl 1 `"Present resident"'
label define resident_lbl 2 `"Absent resident"', add
label define resident_lbl 3 `"Visitor/non-resident"', add
label define resident_lbl 4 `"De facto population (present persons)"', add
label define resident_lbl 9 `"Unknown/missing"', add
label values resident resident_lbl

label define iq97a_pernum_lbl 00 `"Household record"'
label define iq97a_pernum_lbl 01 `"1"', add
label define iq97a_pernum_lbl 02 `"2"', add
label define iq97a_pernum_lbl 03 `"3"', add
label define iq97a_pernum_lbl 04 `"4"', add
label define iq97a_pernum_lbl 05 `"5"', add
label define iq97a_pernum_lbl 06 `"6"', add
label define iq97a_pernum_lbl 07 `"7"', add
label define iq97a_pernum_lbl 08 `"8"', add
label define iq97a_pernum_lbl 09 `"9"', add
label define iq97a_pernum_lbl 10 `"10"', add
label define iq97a_pernum_lbl 11 `"11"', add
label define iq97a_pernum_lbl 12 `"12"', add
label define iq97a_pernum_lbl 13 `"13"', add
label define iq97a_pernum_lbl 14 `"14"', add
label define iq97a_pernum_lbl 15 `"15"', add
label define iq97a_pernum_lbl 16 `"16"', add
label define iq97a_pernum_lbl 17 `"17"', add
label define iq97a_pernum_lbl 18 `"18"', add
label define iq97a_pernum_lbl 19 `"19"', add
label define iq97a_pernum_lbl 20 `"20"', add
label define iq97a_pernum_lbl 21 `"21"', add
label define iq97a_pernum_lbl 22 `"22"', add
label define iq97a_pernum_lbl 23 `"23"', add
label define iq97a_pernum_lbl 24 `"24"', add
label define iq97a_pernum_lbl 25 `"25"', add
label define iq97a_pernum_lbl 26 `"26"', add
label define iq97a_pernum_lbl 27 `"27"', add
label define iq97a_pernum_lbl 28 `"28"', add
label define iq97a_pernum_lbl 29 `"29"', add
label define iq97a_pernum_lbl 30 `"30"', add
label values iq97a_pernum iq97a_pernum_lbl

label define iq97a_resstat_lbl 1 `"Resident present"'
label define iq97a_resstat_lbl 2 `"Visitor present"', add
label define iq97a_resstat_lbl 3 `"Absent inside Iraq"', add
label define iq97a_resstat_lbl 4 `"Absent abroad"', add
label define iq97a_resstat_lbl 5 `"Prisoner"', add
label define iq97a_resstat_lbl 6 `"Lost"', add
label define iq97a_resstat_lbl 9 `"Unknown"', add
label values iq97a_resstat iq97a_resstat_lbl

label define iq97a_relate_lbl 01 `"Head of the household"'
label define iq97a_relate_lbl 02 `"Spouse"', add
label define iq97a_relate_lbl 03 `"Son or daughter"', add
label define iq97a_relate_lbl 04 `"Daughter/son in law"', add
label define iq97a_relate_lbl 05 `"Grand son/daughter"', add
label define iq97a_relate_lbl 06 `"Parents"', add
label define iq97a_relate_lbl 07 `"Brother or sister"', add
label define iq97a_relate_lbl 08 `"Other relatives"', add
label define iq97a_relate_lbl 09 `"No relatives"', add
label define iq97a_relate_lbl 99 `"Unknown"', add
label values iq97a_relate iq97a_relate_lbl

label define iq97a_sex_lbl 1 `"Male"'
label define iq97a_sex_lbl 2 `"Female"', add
label define iq97a_sex_lbl 9 `"Unknown"', add
label values iq97a_sex iq97a_sex_lbl

label define iq97a_birthm_lbl 01 `"1"'
label define iq97a_birthm_lbl 02 `"2"', add
label define iq97a_birthm_lbl 03 `"3"', add
label define iq97a_birthm_lbl 04 `"4"', add
label define iq97a_birthm_lbl 05 `"5"', add
label define iq97a_birthm_lbl 06 `"6"', add
label define iq97a_birthm_lbl 07 `"7"', add
label define iq97a_birthm_lbl 08 `"8"', add
label define iq97a_birthm_lbl 09 `"9"', add
label define iq97a_birthm_lbl 10 `"10"', add
label define iq97a_birthm_lbl 11 `"11"', add
label define iq97a_birthm_lbl 12 `"12"', add
label define iq97a_birthm_lbl 99 `"Unknown"', add
label values iq97a_birthm iq97a_birthm_lbl

label define iq97a_birthy_lbl 1897 `"1897 or earlier"'
label define iq97a_birthy_lbl 1898 `"1898"', add
label define iq97a_birthy_lbl 1899 `"1899"', add
label define iq97a_birthy_lbl 1900 `"1900"', add
label define iq97a_birthy_lbl 1901 `"1901"', add
label define iq97a_birthy_lbl 1902 `"1902"', add
label define iq97a_birthy_lbl 1903 `"1903"', add
label define iq97a_birthy_lbl 1904 `"1904"', add
label define iq97a_birthy_lbl 1905 `"1905"', add
label define iq97a_birthy_lbl 1906 `"1906"', add
label define iq97a_birthy_lbl 1907 `"1907"', add
label define iq97a_birthy_lbl 1908 `"1908"', add
label define iq97a_birthy_lbl 1909 `"1909"', add
label define iq97a_birthy_lbl 1910 `"1910"', add
label define iq97a_birthy_lbl 1911 `"1911"', add
label define iq97a_birthy_lbl 1912 `"1912"', add
label define iq97a_birthy_lbl 1913 `"1913"', add
label define iq97a_birthy_lbl 1914 `"1914"', add
label define iq97a_birthy_lbl 1915 `"1915"', add
label define iq97a_birthy_lbl 1916 `"1916"', add
label define iq97a_birthy_lbl 1917 `"1917"', add
label define iq97a_birthy_lbl 1918 `"1918"', add
label define iq97a_birthy_lbl 1919 `"1919"', add
label define iq97a_birthy_lbl 1920 `"1920"', add
label define iq97a_birthy_lbl 1921 `"1921"', add
label define iq97a_birthy_lbl 1922 `"1922"', add
label define iq97a_birthy_lbl 1923 `"1923"', add
label define iq97a_birthy_lbl 1924 `"1924"', add
label define iq97a_birthy_lbl 1925 `"1925"', add
label define iq97a_birthy_lbl 1926 `"1926"', add
label define iq97a_birthy_lbl 1927 `"1927"', add
label define iq97a_birthy_lbl 1928 `"1928"', add
label define iq97a_birthy_lbl 1929 `"1929"', add
label define iq97a_birthy_lbl 1930 `"1930"', add
label define iq97a_birthy_lbl 1931 `"1931"', add
label define iq97a_birthy_lbl 1932 `"1932"', add
label define iq97a_birthy_lbl 1933 `"1933"', add
label define iq97a_birthy_lbl 1934 `"1934"', add
label define iq97a_birthy_lbl 1935 `"1935"', add
label define iq97a_birthy_lbl 1936 `"1936"', add
label define iq97a_birthy_lbl 1937 `"1937"', add
label define iq97a_birthy_lbl 1938 `"1938"', add
label define iq97a_birthy_lbl 1939 `"1939"', add
label define iq97a_birthy_lbl 1940 `"1940"', add
label define iq97a_birthy_lbl 1941 `"1941"', add
label define iq97a_birthy_lbl 1942 `"1942"', add
label define iq97a_birthy_lbl 1943 `"1943"', add
label define iq97a_birthy_lbl 1944 `"1944"', add
label define iq97a_birthy_lbl 1945 `"1945"', add
label define iq97a_birthy_lbl 1946 `"1946"', add
label define iq97a_birthy_lbl 1947 `"1947"', add
label define iq97a_birthy_lbl 1948 `"1948"', add
label define iq97a_birthy_lbl 1949 `"1949"', add
label define iq97a_birthy_lbl 1950 `"1950"', add
label define iq97a_birthy_lbl 1951 `"1951"', add
label define iq97a_birthy_lbl 1952 `"1952"', add
label define iq97a_birthy_lbl 1953 `"1953"', add
label define iq97a_birthy_lbl 1954 `"1954"', add
label define iq97a_birthy_lbl 1955 `"1955"', add
label define iq97a_birthy_lbl 1956 `"1956"', add
label define iq97a_birthy_lbl 1957 `"1957"', add
label define iq97a_birthy_lbl 1958 `"1958"', add
label define iq97a_birthy_lbl 1959 `"1959"', add
label define iq97a_birthy_lbl 1960 `"1960"', add
label define iq97a_birthy_lbl 1961 `"1961"', add
label define iq97a_birthy_lbl 1962 `"1962"', add
label define iq97a_birthy_lbl 1963 `"1963"', add
label define iq97a_birthy_lbl 1964 `"1964"', add
label define iq97a_birthy_lbl 1965 `"1965"', add
label define iq97a_birthy_lbl 1966 `"1966"', add
label define iq97a_birthy_lbl 1967 `"1967"', add
label define iq97a_birthy_lbl 1968 `"1968"', add
label define iq97a_birthy_lbl 1969 `"1969"', add
label define iq97a_birthy_lbl 1970 `"1970"', add
label define iq97a_birthy_lbl 1971 `"1971"', add
label define iq97a_birthy_lbl 1972 `"1972"', add
label define iq97a_birthy_lbl 1973 `"1973"', add
label define iq97a_birthy_lbl 1974 `"1974"', add
label define iq97a_birthy_lbl 1975 `"1975"', add
label define iq97a_birthy_lbl 1976 `"1976"', add
label define iq97a_birthy_lbl 1977 `"1977"', add
label define iq97a_birthy_lbl 1978 `"1978"', add
label define iq97a_birthy_lbl 1979 `"1979"', add
label define iq97a_birthy_lbl 1980 `"1980"', add
label define iq97a_birthy_lbl 1981 `"1981"', add
label define iq97a_birthy_lbl 1982 `"1982"', add
label define iq97a_birthy_lbl 1983 `"1983"', add
label define iq97a_birthy_lbl 1984 `"1984"', add
label define iq97a_birthy_lbl 1985 `"1985"', add
label define iq97a_birthy_lbl 1986 `"1986"', add
label define iq97a_birthy_lbl 1987 `"1987"', add
label define iq97a_birthy_lbl 1988 `"1988"', add
label define iq97a_birthy_lbl 1989 `"1989"', add
label define iq97a_birthy_lbl 1990 `"1990"', add
label define iq97a_birthy_lbl 1991 `"1991"', add
label define iq97a_birthy_lbl 1992 `"1992"', add
label define iq97a_birthy_lbl 1993 `"1993"', add
label define iq97a_birthy_lbl 1994 `"1994"', add
label define iq97a_birthy_lbl 1995 `"1995"', add
label define iq97a_birthy_lbl 1996 `"1996"', add
label define iq97a_birthy_lbl 1997 `"1997"', add
label define iq97a_birthy_lbl 9999 `"Unknown"', add
label values iq97a_birthy iq97a_birthy_lbl

label define iq97a_marst_lbl 1 `"Never married"'
label define iq97a_marst_lbl 2 `"Married"', add
label define iq97a_marst_lbl 3 `"Divorced"', add
label define iq97a_marst_lbl 4 `"Widowed"', add
label define iq97a_marst_lbl 8 `"Unknown"', add
label define iq97a_marst_lbl 9 `"NIU (not in universe)"', add
label values iq97a_marst iq97a_marst_lbl

label define iq97a_maryr_lbl 0000 `"NIU (not in universe)"'
label define iq97a_maryr_lbl 1887 `"1887"', add
label define iq97a_maryr_lbl 1890 `"1890"', add
label define iq97a_maryr_lbl 1892 `"1892"', add
label define iq97a_maryr_lbl 1895 `"1895"', add
label define iq97a_maryr_lbl 1896 `"1896"', add
label define iq97a_maryr_lbl 1897 `"1897"', add
label define iq97a_maryr_lbl 1900 `"1900"', add
label define iq97a_maryr_lbl 1901 `"1901"', add
label define iq97a_maryr_lbl 1902 `"1902"', add
label define iq97a_maryr_lbl 1903 `"1903"', add
label define iq97a_maryr_lbl 1904 `"1904"', add
label define iq97a_maryr_lbl 1905 `"1905"', add
label define iq97a_maryr_lbl 1906 `"1906"', add
label define iq97a_maryr_lbl 1907 `"1907"', add
label define iq97a_maryr_lbl 1908 `"1908"', add
label define iq97a_maryr_lbl 1909 `"1909"', add
label define iq97a_maryr_lbl 1910 `"1910"', add
label define iq97a_maryr_lbl 1911 `"1911"', add
label define iq97a_maryr_lbl 1912 `"1912"', add
label define iq97a_maryr_lbl 1913 `"1913"', add
label define iq97a_maryr_lbl 1914 `"1914"', add
label define iq97a_maryr_lbl 1915 `"1915"', add
label define iq97a_maryr_lbl 1916 `"1916"', add
label define iq97a_maryr_lbl 1917 `"1917"', add
label define iq97a_maryr_lbl 1918 `"1918"', add
label define iq97a_maryr_lbl 1919 `"1919"', add
label define iq97a_maryr_lbl 1920 `"1920"', add
label define iq97a_maryr_lbl 1921 `"1921"', add
label define iq97a_maryr_lbl 1922 `"1922"', add
label define iq97a_maryr_lbl 1923 `"1923"', add
label define iq97a_maryr_lbl 1924 `"1924"', add
label define iq97a_maryr_lbl 1925 `"1925"', add
label define iq97a_maryr_lbl 1926 `"1926"', add
label define iq97a_maryr_lbl 1927 `"1927"', add
label define iq97a_maryr_lbl 1928 `"1928"', add
label define iq97a_maryr_lbl 1929 `"1929"', add
label define iq97a_maryr_lbl 1930 `"1930"', add
label define iq97a_maryr_lbl 1931 `"1931"', add
label define iq97a_maryr_lbl 1932 `"1932"', add
label define iq97a_maryr_lbl 1933 `"1933"', add
label define iq97a_maryr_lbl 1934 `"1934"', add
label define iq97a_maryr_lbl 1935 `"1935"', add
label define iq97a_maryr_lbl 1936 `"1936"', add
label define iq97a_maryr_lbl 1937 `"1937"', add
label define iq97a_maryr_lbl 1938 `"1938"', add
label define iq97a_maryr_lbl 1939 `"1939"', add
label define iq97a_maryr_lbl 1940 `"1940"', add
label define iq97a_maryr_lbl 1941 `"1941"', add
label define iq97a_maryr_lbl 1942 `"1942"', add
label define iq97a_maryr_lbl 1943 `"1943"', add
label define iq97a_maryr_lbl 1944 `"1944"', add
label define iq97a_maryr_lbl 1945 `"1945"', add
label define iq97a_maryr_lbl 1946 `"1946"', add
label define iq97a_maryr_lbl 1947 `"1947"', add
label define iq97a_maryr_lbl 1948 `"1948"', add
label define iq97a_maryr_lbl 1949 `"1949"', add
label define iq97a_maryr_lbl 1950 `"1950"', add
label define iq97a_maryr_lbl 1951 `"1951"', add
label define iq97a_maryr_lbl 1952 `"1952"', add
label define iq97a_maryr_lbl 1953 `"1953"', add
label define iq97a_maryr_lbl 1954 `"1954"', add
label define iq97a_maryr_lbl 1955 `"1955"', add
label define iq97a_maryr_lbl 1956 `"1956"', add
label define iq97a_maryr_lbl 1957 `"1957"', add
label define iq97a_maryr_lbl 1958 `"1958"', add
label define iq97a_maryr_lbl 1959 `"1959"', add
label define iq97a_maryr_lbl 1960 `"1960"', add
label define iq97a_maryr_lbl 1961 `"1961"', add
label define iq97a_maryr_lbl 1962 `"1962"', add
label define iq97a_maryr_lbl 1963 `"1963"', add
label define iq97a_maryr_lbl 1964 `"1964"', add
label define iq97a_maryr_lbl 1965 `"1965"', add
label define iq97a_maryr_lbl 1966 `"1966"', add
label define iq97a_maryr_lbl 1967 `"1967"', add
label define iq97a_maryr_lbl 1968 `"1968"', add
label define iq97a_maryr_lbl 1969 `"1969"', add
label define iq97a_maryr_lbl 1970 `"1970"', add
label define iq97a_maryr_lbl 1971 `"1971"', add
label define iq97a_maryr_lbl 1972 `"1972"', add
label define iq97a_maryr_lbl 1973 `"1973"', add
label define iq97a_maryr_lbl 1974 `"1974"', add
label define iq97a_maryr_lbl 1975 `"1975"', add
label define iq97a_maryr_lbl 1976 `"1976"', add
label define iq97a_maryr_lbl 1977 `"1977"', add
label define iq97a_maryr_lbl 1978 `"1978"', add
label define iq97a_maryr_lbl 1979 `"1979"', add
label define iq97a_maryr_lbl 1980 `"1980"', add
label define iq97a_maryr_lbl 1981 `"1981"', add
label define iq97a_maryr_lbl 1982 `"1982"', add
label define iq97a_maryr_lbl 1983 `"1983"', add
label define iq97a_maryr_lbl 1984 `"1984"', add
label define iq97a_maryr_lbl 1985 `"1985"', add
label define iq97a_maryr_lbl 1986 `"1986"', add
label define iq97a_maryr_lbl 1987 `"1987"', add
label define iq97a_maryr_lbl 1988 `"1988"', add
label define iq97a_maryr_lbl 1989 `"1989"', add
label define iq97a_maryr_lbl 1990 `"1990"', add
label define iq97a_maryr_lbl 1991 `"1991"', add
label define iq97a_maryr_lbl 1992 `"1992"', add
label define iq97a_maryr_lbl 1993 `"1993"', add
label define iq97a_maryr_lbl 1994 `"1994"', add
label define iq97a_maryr_lbl 1995 `"1995"', add
label define iq97a_maryr_lbl 1996 `"1996"', add
label define iq97a_maryr_lbl 1997 `"1997"', add
label define iq97a_maryr_lbl 9999 `"Unknown"', add
label values iq97a_maryr iq97a_maryr_lbl

label define iq97a_marn_lbl 0 `"0"'
label define iq97a_marn_lbl 1 `"1"', add
label define iq97a_marn_lbl 2 `"2"', add
label define iq97a_marn_lbl 3 `"3"', add
label define iq97a_marn_lbl 4 `"4"', add
label define iq97a_marn_lbl 5 `"5"', add
label define iq97a_marn_lbl 6 `"6+"', add
label define iq97a_marn_lbl 9 `"Unknown"', add
label values iq97a_marn iq97a_marn_lbl

label define iq97a_wives_lbl 0 `"NIU (not in universe)"'
label define iq97a_wives_lbl 1 `"1"', add
label define iq97a_wives_lbl 2 `"2"', add
label define iq97a_wives_lbl 3 `"3"', add
label define iq97a_wives_lbl 4 `"4"', add
label define iq97a_wives_lbl 9 `"Unknown"', add
label values iq97a_wives iq97a_wives_lbl

label define iq97a_mardur_lbl 00 `"Less than 1 year"'
label define iq97a_mardur_lbl 01 `"1"', add
label define iq97a_mardur_lbl 02 `"2"', add
label define iq97a_mardur_lbl 03 `"3"', add
label define iq97a_mardur_lbl 04 `"4"', add
label define iq97a_mardur_lbl 05 `"5"', add
label define iq97a_mardur_lbl 06 `"6"', add
label define iq97a_mardur_lbl 07 `"7"', add
label define iq97a_mardur_lbl 08 `"8"', add
label define iq97a_mardur_lbl 09 `"9"', add
label define iq97a_mardur_lbl 10 `"10"', add
label define iq97a_mardur_lbl 11 `"11"', add
label define iq97a_mardur_lbl 12 `"12"', add
label define iq97a_mardur_lbl 13 `"13"', add
label define iq97a_mardur_lbl 14 `"14"', add
label define iq97a_mardur_lbl 15 `"15"', add
label define iq97a_mardur_lbl 16 `"16"', add
label define iq97a_mardur_lbl 17 `"17"', add
label define iq97a_mardur_lbl 18 `"18"', add
label define iq97a_mardur_lbl 19 `"19"', add
label define iq97a_mardur_lbl 20 `"20"', add
label define iq97a_mardur_lbl 21 `"21"', add
label define iq97a_mardur_lbl 22 `"22"', add
label define iq97a_mardur_lbl 23 `"23"', add
label define iq97a_mardur_lbl 24 `"24"', add
label define iq97a_mardur_lbl 25 `"25"', add
label define iq97a_mardur_lbl 26 `"26"', add
label define iq97a_mardur_lbl 27 `"27"', add
label define iq97a_mardur_lbl 28 `"28"', add
label define iq97a_mardur_lbl 29 `"29"', add
label define iq97a_mardur_lbl 30 `"30"', add
label define iq97a_mardur_lbl 31 `"31"', add
label define iq97a_mardur_lbl 32 `"32"', add
label define iq97a_mardur_lbl 33 `"33"', add
label define iq97a_mardur_lbl 34 `"34"', add
label define iq97a_mardur_lbl 35 `"35"', add
label define iq97a_mardur_lbl 36 `"36"', add
label define iq97a_mardur_lbl 37 `"37"', add
label define iq97a_mardur_lbl 38 `"38"', add
label define iq97a_mardur_lbl 39 `"39"', add
label define iq97a_mardur_lbl 40 `"40"', add
label define iq97a_mardur_lbl 41 `"41"', add
label define iq97a_mardur_lbl 42 `"42"', add
label define iq97a_mardur_lbl 43 `"43"', add
label define iq97a_mardur_lbl 44 `"44"', add
label define iq97a_mardur_lbl 45 `"45"', add
label define iq97a_mardur_lbl 46 `"46"', add
label define iq97a_mardur_lbl 47 `"47"', add
label define iq97a_mardur_lbl 48 `"48"', add
label define iq97a_mardur_lbl 49 `"49"', add
label define iq97a_mardur_lbl 50 `"50"', add
label define iq97a_mardur_lbl 51 `"51"', add
label define iq97a_mardur_lbl 52 `"52"', add
label define iq97a_mardur_lbl 53 `"53"', add
label define iq97a_mardur_lbl 54 `"54"', add
label define iq97a_mardur_lbl 55 `"55"', add
label define iq97a_mardur_lbl 56 `"56"', add
label define iq97a_mardur_lbl 57 `"57"', add
label define iq97a_mardur_lbl 58 `"58"', add
label define iq97a_mardur_lbl 59 `"59"', add
label define iq97a_mardur_lbl 60 `"60"', add
label define iq97a_mardur_lbl 61 `"61"', add
label define iq97a_mardur_lbl 62 `"62"', add
label define iq97a_mardur_lbl 63 `"63"', add
label define iq97a_mardur_lbl 64 `"64"', add
label define iq97a_mardur_lbl 65 `"65"', add
label define iq97a_mardur_lbl 66 `"66"', add
label define iq97a_mardur_lbl 67 `"67"', add
label define iq97a_mardur_lbl 68 `"68"', add
label define iq97a_mardur_lbl 69 `"69"', add
label define iq97a_mardur_lbl 70 `"70+"', add
label define iq97a_mardur_lbl 98 `"Unknown"', add
label define iq97a_mardur_lbl 99 `"NIU (not in universe)"', add
label values iq97a_mardur iq97a_mardur_lbl

label define iq97a_chbornm_lbl 00 `"0"'
label define iq97a_chbornm_lbl 01 `"1"', add
label define iq97a_chbornm_lbl 02 `"2"', add
label define iq97a_chbornm_lbl 03 `"3"', add
label define iq97a_chbornm_lbl 04 `"4"', add
label define iq97a_chbornm_lbl 05 `"5"', add
label define iq97a_chbornm_lbl 06 `"6"', add
label define iq97a_chbornm_lbl 07 `"7"', add
label define iq97a_chbornm_lbl 08 `"8"', add
label define iq97a_chbornm_lbl 09 `"9"', add
label define iq97a_chbornm_lbl 10 `"10"', add
label define iq97a_chbornm_lbl 11 `"11"', add
label define iq97a_chbornm_lbl 12 `"12+"', add
label define iq97a_chbornm_lbl 98 `"Unknown"', add
label define iq97a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values iq97a_chbornm iq97a_chbornm_lbl

label define iq97a_chbornf_lbl 00 `"0"'
label define iq97a_chbornf_lbl 01 `"1"', add
label define iq97a_chbornf_lbl 02 `"2"', add
label define iq97a_chbornf_lbl 03 `"3"', add
label define iq97a_chbornf_lbl 04 `"4"', add
label define iq97a_chbornf_lbl 05 `"5"', add
label define iq97a_chbornf_lbl 06 `"6"', add
label define iq97a_chbornf_lbl 07 `"7"', add
label define iq97a_chbornf_lbl 08 `"8"', add
label define iq97a_chbornf_lbl 09 `"9"', add
label define iq97a_chbornf_lbl 10 `"10"', add
label define iq97a_chbornf_lbl 11 `"11"', add
label define iq97a_chbornf_lbl 12 `"12+"', add
label define iq97a_chbornf_lbl 98 `"Unknown"', add
label define iq97a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values iq97a_chbornf iq97a_chbornf_lbl

label define iq97a_chlivm_lbl 00 `"0"'
label define iq97a_chlivm_lbl 01 `"1"', add
label define iq97a_chlivm_lbl 02 `"2"', add
label define iq97a_chlivm_lbl 03 `"3"', add
label define iq97a_chlivm_lbl 04 `"4"', add
label define iq97a_chlivm_lbl 05 `"5"', add
label define iq97a_chlivm_lbl 06 `"6"', add
label define iq97a_chlivm_lbl 07 `"7"', add
label define iq97a_chlivm_lbl 08 `"8"', add
label define iq97a_chlivm_lbl 09 `"9"', add
label define iq97a_chlivm_lbl 10 `"10"', add
label define iq97a_chlivm_lbl 11 `"11+"', add
label define iq97a_chlivm_lbl 98 `"Unknown"', add
label define iq97a_chlivm_lbl 99 `"NIU (not in universe)"', add
label values iq97a_chlivm iq97a_chlivm_lbl

label define iq97a_chlivf_lbl 00 `"0"'
label define iq97a_chlivf_lbl 01 `"1"', add
label define iq97a_chlivf_lbl 02 `"2"', add
label define iq97a_chlivf_lbl 03 `"3"', add
label define iq97a_chlivf_lbl 04 `"4"', add
label define iq97a_chlivf_lbl 05 `"5"', add
label define iq97a_chlivf_lbl 06 `"6"', add
label define iq97a_chlivf_lbl 07 `"7"', add
label define iq97a_chlivf_lbl 08 `"8"', add
label define iq97a_chlivf_lbl 09 `"9"', add
label define iq97a_chlivf_lbl 10 `"10"', add
label define iq97a_chlivf_lbl 11 `"11+"', add
label define iq97a_chlivf_lbl 98 `"Unknown"', add
label define iq97a_chlivf_lbl 99 `"NIU (not in universe)"', add
label values iq97a_chlivf iq97a_chlivf_lbl

label define iq97a_chbornrm_lbl 0 `"0"'
label define iq97a_chbornrm_lbl 1 `"1"', add
label define iq97a_chbornrm_lbl 2 `"2"', add
label define iq97a_chbornrm_lbl 3 `"3"', add
label define iq97a_chbornrm_lbl 4 `"4"', add
label define iq97a_chbornrm_lbl 8 `"Unknown"', add
label define iq97a_chbornrm_lbl 9 `"NIU (not in universe)"', add
label values iq97a_chbornrm iq97a_chbornrm_lbl

label define iq97a_chbornrf_lbl 0 `"0"'
label define iq97a_chbornrf_lbl 1 `"1"', add
label define iq97a_chbornrf_lbl 2 `"2"', add
label define iq97a_chbornrf_lbl 3 `"3+"', add
label define iq97a_chbornrf_lbl 8 `"Unknown"', add
label define iq97a_chbornrf_lbl 9 `"NIU (not in universe)"', add
label values iq97a_chbornrf iq97a_chbornrf_lbl

label define iq97a_empstat_lbl 0 `"NIU (not in universe)"'
label define iq97a_empstat_lbl 1 `"Working"', add
label define iq97a_empstat_lbl 2 `"Unemployed seeking work"', add
label define iq97a_empstat_lbl 3 `"Housewife with part time work"', add
label define iq97a_empstat_lbl 4 `"Full time student"', add
label define iq97a_empstat_lbl 5 `"Housewife"', add
label define iq97a_empstat_lbl 6 `"Pensioner"', add
label define iq97a_empstat_lbl 7 `"Have income but not work"', add
label define iq97a_empstat_lbl 8 `"Others"', add
label define iq97a_empstat_lbl 9 `"Unknown"', add
label values iq97a_empstat iq97a_empstat_lbl

label define iq97a_occ_lbl 000 `"NIU (not in universe)"'
label define iq97a_occ_lbl 011 `"Chemists"', add
label define iq97a_occ_lbl 012 `"Physicists"', add
label define iq97a_occ_lbl 013 `"Physical scientists not elsewhere classified"', add
label define iq97a_occ_lbl 014 `"Physical science technicians"', add
label define iq97a_occ_lbl 021 `"Architects and town planners"', add
label define iq97a_occ_lbl 022 `"Civil engineers"', add
label define iq97a_occ_lbl 023 `"Electrical and electronics engineers"', add
label define iq97a_occ_lbl 024 `"Mechanical engineers"', add
label define iq97a_occ_lbl 025 `"Chemical engineers"', add
label define iq97a_occ_lbl 027 `"Mining engineers"', add
label define iq97a_occ_lbl 028 `"Industrial engineers"', add
label define iq97a_occ_lbl 029 `"Engineers not elsewhere classified"', add
label define iq97a_occ_lbl 031 `"Surveyors"', add
label define iq97a_occ_lbl 032 `"Draughts men"', add
label define iq97a_occ_lbl 033 `"Civil engineering technicians"', add
label define iq97a_occ_lbl 034 `"Electrical and electronics engineering technicians"', add
label define iq97a_occ_lbl 035 `"Mechanical engineering technicians"', add
label define iq97a_occ_lbl 036 `"Chemical engineering technicians"', add
label define iq97a_occ_lbl 038 `"Mining technicians"', add
label define iq97a_occ_lbl 039 `"Engineering technicians not elsewhere classified"', add
label define iq97a_occ_lbl 041 `"Aircraft pilots navigator and flight engineers"', add
label define iq97a_occ_lbl 042 `"Ships deck officers and pilots"', add
label define iq97a_occ_lbl 043 `"Ships engineers"', add
label define iq97a_occ_lbl 052 `"Bacteriologists, pharmacologists and related scientists"', add
label define iq97a_occ_lbl 053 `"Agronomists and related scientists"', add
label define iq97a_occ_lbl 054 `"Life sciences technicians"', add
label define iq97a_occ_lbl 061 `"Medical doctors"', add
label define iq97a_occ_lbl 062 `"Medical and protection assistance"', add
label define iq97a_occ_lbl 063 `"Dentists"', add
label define iq97a_occ_lbl 065 `"Veterinarians"', add
label define iq97a_occ_lbl 066 `"Veterinary assistants"', add
label define iq97a_occ_lbl 067 `"Pharmacists"', add
label define iq97a_occ_lbl 068 `"Pharmaceutical assistants"', add
label define iq97a_occ_lbl 071 `"Professional nurses"', add
label define iq97a_occ_lbl 074 `"Midwifery not elsewhere classified"', add
label define iq97a_occ_lbl 075 `"Optometrists and opticians"', add
label define iq97a_occ_lbl 077 `"Medical x-ray technicians"', add
label define iq97a_occ_lbl 079 `"Medical, dental , veterinary and related workers not elsewhere classified"', add
label define iq97a_occ_lbl 081 `"Statisticians"', add
label define iq97a_occ_lbl 083 `"Systems analysts"', add
label define iq97a_occ_lbl 084 `"Computer programmers, machinations and statistical technicians"', add
label define iq97a_occ_lbl 090 `"Economists"', add
label define iq97a_occ_lbl 110 `"Accountants"', add
label define iq97a_occ_lbl 121 `"Lawyers and juror"', add
label define iq97a_occ_lbl 122 `"Judges and investigators"', add
label define iq97a_occ_lbl 129 `"Jurists not elsewhere classified"', add
label define iq97a_occ_lbl 131 `"University and higher education teachers"', add
label define iq97a_occ_lbl 132 `"Secondary education teachers"', add
label define iq97a_occ_lbl 133 `"Primary education teacher"', add
label define iq97a_occ_lbl 134 `"Pre-primary education teachers"', add
label define iq97a_occ_lbl 135 `"Special education teachers"', add
label define iq97a_occ_lbl 139 `"Teachers not elsewhere classified"', add
label define iq97a_occ_lbl 140 `"Workers in religions"', add
label define iq97a_occ_lbl 159 `"Authors, journalists and related writers not elsewhere classified"', add
label define iq97a_occ_lbl 161 `"Sculptors, painters and related artists"', add
label define iq97a_occ_lbl 162 `"Designers and commercial artists"', add
label define iq97a_occ_lbl 163 `"Photographers and cameramen"', add
label define iq97a_occ_lbl 171 `"Composers, musicians and singers"', add
label define iq97a_occ_lbl 172 `"Choreographers and dancers"', add
label define iq97a_occ_lbl 173 `"Actors and stage directors"', add
label define iq97a_occ_lbl 180 `"Athletes, sportsmen and related workers"', add
label define iq97a_occ_lbl 191 `"Librarians, archivists and curators"', add
label define iq97a_occ_lbl 193 `"Social workers"', add
label define iq97a_occ_lbl 194 `"Personnel and occupational  specialist"', add
label define iq97a_occ_lbl 195 `"Philologists translators and interpreters"', add
label define iq97a_occ_lbl 202 `"Government administrators"', add
label define iq97a_occ_lbl 211 `"General managers"', add
label define iq97a_occ_lbl 212 `"Production managers (except farm)"', add
label define iq97a_occ_lbl 219 `"Managers not elsewhere classified"', add
label define iq97a_occ_lbl 300 `"Clerical supervisors"', add
label define iq97a_occ_lbl 310 `"Government executive officials"', add
label define iq97a_occ_lbl 321 `"Stenographers, typists and teletypists"', add
label define iq97a_occ_lbl 331 `"Bookkeepers , cashiers"', add
label define iq97a_occ_lbl 339 `"Bookkeepers , cashiers and related workers not elsewhere classified"', add
label define iq97a_occ_lbl 342 `"Automatic data processing machine operators"', add
label define iq97a_occ_lbl 359 `"Transport and communications supervisors not elsewhere classified"', add
label define iq97a_occ_lbl 360 `"Transport conductors"', add
label define iq97a_occ_lbl 370 `"Mail distribution clerks"', add
label define iq97a_occ_lbl 380 `"Telegraph and telephone operators"', add
label define iq97a_occ_lbl 391 `"Stock clerks"', add
label define iq97a_occ_lbl 392 `"Material and production planning clerks"', add
label define iq97a_occ_lbl 393 `"Correspondence and reporting clerk"', add
label define iq97a_occ_lbl 394 `"Receptionists and travel agency clerk"', add
label define iq97a_occ_lbl 395 `"Library and filing clerks"', add
label define iq97a_occ_lbl 399 `"Clerks not elsewhere classified"', add
label define iq97a_occ_lbl 400 `"Managers (wholesale and retail trade)"', add
label define iq97a_occ_lbl 410 `"Working proprietors wholesale and retail trade"', add
label define iq97a_occ_lbl 421 `"Sales supervisor"', add
label define iq97a_occ_lbl 422 `"Buyers"', add
label define iq97a_occ_lbl 441 `"Insurance real estate, securities salesmen"', add
label define iq97a_occ_lbl 442 `"Business services salesmen"', add
label define iq97a_occ_lbl 443 `"Auctioneers"', add
label define iq97a_occ_lbl 451 `"Salesmen, shop assistants and demonstrators"', add
label define iq97a_occ_lbl 452 `"Street vendors, canvassers and newsvendors"', add
label define iq97a_occ_lbl 490 `"Sales workers not elsewhere classified"', add
label define iq97a_occ_lbl 500 `"Managers (catering and loading services)"', add
label define iq97a_occ_lbl 510 `"Working proprietors (catering and loading services)"', add
label define iq97a_occ_lbl 531 `"Cooks"', add
label define iq97a_occ_lbl 532 `"Waiters, bartenders"', add
label define iq97a_occ_lbl 540 `"Maids and related housekeeping service workers not elsewhere classified"', add
label define iq97a_occ_lbl 551 `"Building care takers, cleaners and related workers"', add
label define iq97a_occ_lbl 560 `"Launderers, dry-cleaners and pressers"', add
label define iq97a_occ_lbl 570 `"Hairdressers, barbers, beauticians and related workers"', add
label define iq97a_occ_lbl 581 `"Fire-fighters"', add
label define iq97a_occ_lbl 582 `"Policemen and detectives"', add
label define iq97a_occ_lbl 589 `"Protective service workers not elsewhere classified"', add
label define iq97a_occ_lbl 592 `"Undertakers and embalmers"', add
label define iq97a_occ_lbl 599 `"Other service workers"', add
label define iq97a_occ_lbl 600 `"Farm managers and supervisors"', add
label define iq97a_occ_lbl 611 `"General farmers"', add
label define iq97a_occ_lbl 612 `"Specialized farmers"', add
label define iq97a_occ_lbl 621 `"General farmer workers"', add
label define iq97a_occ_lbl 622 `"Crops and vegetables workers"', add
label define iq97a_occ_lbl 623 `"Orchard workers"', add
label define iq97a_occ_lbl 624 `"Live stock workers"', add
label define iq97a_occ_lbl 625 `"Dairy farm workers"', add
label define iq97a_occ_lbl 626 `"Poultry farm workers"', add
label define iq97a_occ_lbl 627 `"Gardeners and nursery workers"', add
label define iq97a_occ_lbl 628 `"Farm machinery operators"', add
label define iq97a_occ_lbl 631 `"Loggers"', add
label define iq97a_occ_lbl 632 `"Forestry workers (except logging)"', add
label define iq97a_occ_lbl 641 `"Fishermen"', add
label define iq97a_occ_lbl 649 `"Fishermen, hunters and related workers not elsewhere classified"', add
label define iq97a_occ_lbl 700 `"Production supervisors and heads foremen"', add
label define iq97a_occ_lbl 713 `"Well drillers, borers and related workers"', add
label define iq97a_occ_lbl 725 `"Metal molders and core makers"', add
label define iq97a_occ_lbl 734 `"Paper makers"', add
label define iq97a_occ_lbl 741 `"Crushers, grinders and mixers"', add
label define iq97a_occ_lbl 742 `"Cookers, roasters and related heat treaters"', add
label define iq97a_occ_lbl 745 `"Petroleum refining"', add
label define iq97a_occ_lbl 749 `"Chemical processors and related workers not elsewhere classified"', add
label define iq97a_occ_lbl 751 `"Fiber preparers"', add
label define iq97a_occ_lbl 752 `"Spinners and winders"', add
label define iq97a_occ_lbl 753 `"Weaving and knitting-machine setters and pattern-card preparers"', add
label define iq97a_occ_lbl 754 `"Weavers and related workers"', add
label define iq97a_occ_lbl 755 `"Knitters"', add
label define iq97a_occ_lbl 756 `"Bleachers, dyers and textile product finishers"', add
label define iq97a_occ_lbl 759 `"Spinners, weavers, knitters, dyers and related workers not elsewhere classified"', add
label define iq97a_occ_lbl 760 `"Tanners and fell mongers"', add
label define iq97a_occ_lbl 771 `"Grain millers and related workers"', add
label define iq97a_occ_lbl 772 `"Sugar processors and refiners"', add
label define iq97a_occ_lbl 773 `"Butchers and meat preparers"', add
label define iq97a_occ_lbl 774 `"Food preservers"', add
label define iq97a_occ_lbl 775 `"Dairy product processors"', add
label define iq97a_occ_lbl 776 `"Bakers, pastry cooks and confectionery makers"', add
label define iq97a_occ_lbl 778 `"Brewers, wine and beverage makers"', add
label define iq97a_occ_lbl 779 `"Food and beverage processors not elsewhere classified"', add
label define iq97a_occ_lbl 781 `"Tobacco preparers"', add
label define iq97a_occ_lbl 783 `"Cigarette makers"', add
label define iq97a_occ_lbl 791 `"Tailors and dressmakers"', add
label define iq97a_occ_lbl 794 `"Patternmakers and cutters"', add
label define iq97a_occ_lbl 795 `"Sewers and embroiderers"', add
label define iq97a_occ_lbl 796 `"Upholsterers and related workers"', add
label define iq97a_occ_lbl 801 `"Shoemakers and shoe repairers"', add
label define iq97a_occ_lbl 802 `"Shoe cutters, lasters, sewers and related workers"', add
label define iq97a_occ_lbl 803 `"Leather goods makers"', add
label define iq97a_occ_lbl 811 `"Cabinetmakers"', add
label define iq97a_occ_lbl 819 `"Cabinetmakers and related woodworkers not elsewhere classified"', add
label define iq97a_occ_lbl 831 `"Blacksmiths, hammer smiths an forging press operator"', add
label define iq97a_occ_lbl 833 `"Machine tool setter operator"', add
label define iq97a_occ_lbl 839 `"Blacksmiths, toolmakers and machine tool operators not elsewhere classified"', add
label define iq97a_occ_lbl 841 `"Machinery fitters and machine assemblers"', add
label define iq97a_occ_lbl 842 `"Watch, clock and precision instrument makers"', add
label define iq97a_occ_lbl 843 `"Motor vehicle mechanics"', add
label define iq97a_occ_lbl 849 `"Machinery fitters, machine assemblers and precision instrument makers (except electrical) not elsewhere classified"', add
label define iq97a_occ_lbl 851 `"Electrical fitters"', add
label define iq97a_occ_lbl 852 `"Electronics fitters"', add
label define iq97a_occ_lbl 853 `"Electrical and electronic equipment assemblers"', add
label define iq97a_occ_lbl 854 `"Radio and television repairmen"', add
label define iq97a_occ_lbl 855 `"Electrical wiremen"', add
label define iq97a_occ_lbl 857 `"Electric linemen and cable jointers"', add
label define iq97a_occ_lbl 859 `"Electrical fitters and related electrical and electronics workers not elsewhere classified"', add
label define iq97a_occ_lbl 871 `"Plumbers and pipe fitters"', add
label define iq97a_occ_lbl 872 `"Welders and flame-cutters"', add
label define iq97a_occ_lbl 873 `"Sheet-metal workers"', add
label define iq97a_occ_lbl 874 `"Structural metal preparers and erectors"', add
label define iq97a_occ_lbl 880 `"Jewelry and precious metal workers"', add
label define iq97a_occ_lbl 891 `"Glass formers, cutters, grinders and finishers"', add
label define iq97a_occ_lbl 892 `"Potters and related clay and abrasive formers"', add
label define iq97a_occ_lbl 893 `"Glass and ceramics kiln men"', add
label define iq97a_occ_lbl 894 `"Glass engravers and etchers"', add
label define iq97a_occ_lbl 895 `"Glass and ceramics painters and decorators"', add
label define iq97a_occ_lbl 899 `"Glass formers, potters and related workers not elsewhere classified"', add
label define iq97a_occ_lbl 901 `"Rubber and plastics product makers (except tire makers and tire vulcanizers)"', add
label define iq97a_occ_lbl 902 `"Tire makers and vulcanizers"', add
label define iq97a_occ_lbl 903 `"Tire makers and tire vulcanizers"', add
label define iq97a_occ_lbl 921 `"Compositors and type-setters"', add
label define iq97a_occ_lbl 922 `"Printing pressmen"', add
label define iq97a_occ_lbl 931 `"Painters, construction"', add
label define iq97a_occ_lbl 939 `"Painters not elsewhere classified"', add
label define iq97a_occ_lbl 942 `"Basketry weavers and brush makers"', add
label define iq97a_occ_lbl 943 `"Non-metallic mineral product makers"', add
label define iq97a_occ_lbl 949 `"Other production and related workers"', add
label define iq97a_occ_lbl 951 `"Bricklayers, stonemasons and tile setters"', add
label define iq97a_occ_lbl 952 `"Reinforced concreters cement finishers and terrazzo workers"', add
label define iq97a_occ_lbl 954 `"Carpenters, joiners and parquetry workers"', add
label define iq97a_occ_lbl 955 `"Plasterers"', add
label define iq97a_occ_lbl 957 `"Glaziers"', add
label define iq97a_occ_lbl 959 `"Construction workers not elsewhere classified"', add
label define iq97a_occ_lbl 969 `"Stationary engine and related equipment operators not elsewhere classified"', add
label define iq97a_occ_lbl 971 `"Dockers and freight handlers"', add
label define iq97a_occ_lbl 973 `"Crane and hoist operator"', add
label define iq97a_occ_lbl 974 `"Earth-moving and related machinery operator"', add
label define iq97a_occ_lbl 979 `"Material handling equipment operators not elsewhere classified"', add
label define iq97a_occ_lbl 981 `"Ships deck ratings, barge crews and boatmen"', add
label define iq97a_occ_lbl 983 `"Railway engine drivers and firemen"', add
label define iq97a_occ_lbl 984 `"Railway brakemen, signalmen and shunters"', add
label define iq97a_occ_lbl 985 `"Motor-vehicle drivers"', add
label define iq97a_occ_lbl 986 `"Animal and animal-drawn vehicle drivers"', add
label define iq97a_occ_lbl 989 `"Transport equipment operator not elsewhere classified"', add
label define iq97a_occ_lbl 990 `"Laborers not elsewhere classified"', add
label define iq97a_occ_lbl 995 `"Response suppressed"', add
label define iq97a_occ_lbl 999 `"Unknown"', add
label values iq97a_occ iq97a_occ_lbl

label define iq97a_ind_lbl 000 `"NIU (not in universe)"'
label define iq97a_ind_lbl 011 `"Growing of crops; market gardening; horticulture"', add
label define iq97a_ind_lbl 012 `"Farming of animals"', add
label define iq97a_ind_lbl 013 `"Growing of crops combined with farming of animals (mixed farming)"', add
label define iq97a_ind_lbl 014 `"Agricultural and animal husbandry service activities, except veterinary activities"', add
label define iq97a_ind_lbl 015 `"Hunting, trapping and game propagation including related service activities"', add
label define iq97a_ind_lbl 050 `"Fishing, operation of fish hatcheries and fish farms; services incidental to fishing"', add
label define iq97a_ind_lbl 101 `"Mining and agglomeration of hard coal"', add
label define iq97a_ind_lbl 111 `"Extraction of crude petroleum and natural gas"', add
label define iq97a_ind_lbl 112 `"Service activities incidental to oil and gas extraction excluding surveying"', add
label define iq97a_ind_lbl 141 `"Quarrying of stone , sand and clay"', add
label define iq97a_ind_lbl 142 `"Mining and quarrying n.e.c."', add
label define iq97a_ind_lbl 151 `"Production, processing and preservation of meat, fish, fruit, vegetables, oils 7 fats"', add
label define iq97a_ind_lbl 152 `"Manufacture of dairy products"', add
label define iq97a_ind_lbl 153 `"Manufacture of grain mill products, starches and starch product, and prepared animal feeds"', add
label define iq97a_ind_lbl 154 `"Manufacture of other food products"', add
label define iq97a_ind_lbl 155 `"Manufacture of beverages"', add
label define iq97a_ind_lbl 160 `"Manufacture of tobacco products"', add
label define iq97a_ind_lbl 171 `"Spinning, weaving and finishing of textiles"', add
label define iq97a_ind_lbl 172 `"Manufacture of other textiles"', add
label define iq97a_ind_lbl 173 `"Manufacture of knitted and crocheted fabrics and articles"', add
label define iq97a_ind_lbl 181 `"Manufacture of wearing apparel, except fur apparel"', add
label define iq97a_ind_lbl 182 `"Dressing and dyeing of fur ; manufacture of articles of fur"', add
label define iq97a_ind_lbl 191 `"Tanning and dressing of leather; manufacture of luggage, handbags, saddlery, harness and footwear"', add
label define iq97a_ind_lbl 192 `"Manufacture of footwear"', add
label define iq97a_ind_lbl 201 `"Sawmilling and planning of wood"', add
label define iq97a_ind_lbl 202 `"Manufacture of products of wood, cork, straw and plaiting materials"', add
label define iq97a_ind_lbl 210 `"Manufacture of paper and paper products"', add
label define iq97a_ind_lbl 221 `"Publishing"', add
label define iq97a_ind_lbl 222 `"Printing and service activities related to printing"', add
label define iq97a_ind_lbl 232 `"Manufacture of refined petroleum products"', add
label define iq97a_ind_lbl 233 `"Processing of nuclear fuel"', add
label define iq97a_ind_lbl 241 `"Manufacture of basic chemicals"', add
label define iq97a_ind_lbl 242 `"Manufacture of other chemicals products"', add
label define iq97a_ind_lbl 251 `"Manufacture of rubber products"', add
label define iq97a_ind_lbl 252 `"Manufacture of plastic products"', add
label define iq97a_ind_lbl 261 `"Manufacture of glass and glass products"', add
label define iq97a_ind_lbl 269 `"Manufacture of non-metallic mineral products n.e.c."', add
label define iq97a_ind_lbl 271 `"Manufacture of basic iron and steel"', add
label define iq97a_ind_lbl 272 `"Manufacture of basic precious and non-ferrous metals"', add
label define iq97a_ind_lbl 273 `"Casting of metals"', add
label define iq97a_ind_lbl 281 `"Manufacture of structural metal products, tanks, reservoirs and steam generators"', add
label define iq97a_ind_lbl 289 `"Manufacture of other fabricated metal products; metal working service activities"', add
label define iq97a_ind_lbl 291 `"Manufacture of general purpose machinery"', add
label define iq97a_ind_lbl 292 `"Manufacture of special purpose machinery"', add
label define iq97a_ind_lbl 293 `"Manufacture of domestic appliances n.e.c."', add
label define iq97a_ind_lbl 300 `"Manufacture of office, accounting and computing machinery"', add
label define iq97a_ind_lbl 311 `"Manufacture of electric motors, generators and transformers"', add
label define iq97a_ind_lbl 313 `"Manufacture of insulated wire and cable"', add
label define iq97a_ind_lbl 314 `"Manufacture of accumulators, primary cells and primary batteries"', add
label define iq97a_ind_lbl 315 `"Manufacture of electric lamps and lighting equipment"', add
label define iq97a_ind_lbl 321 `"Manufacture of electronic valves and tubes and other electronic components"', add
label define iq97a_ind_lbl 332 `"Manufacture of optical instruments and photographic equipment"', add
label define iq97a_ind_lbl 361 `"Manufacture of furniture"', add
label define iq97a_ind_lbl 369 `"Manufacturing n.e.c."', add
label define iq97a_ind_lbl 401 `"Production, collection and distribution of electricity"', add
label define iq97a_ind_lbl 402 `"Manufacture of gas; distribution of gaseous fuels through mains"', add
label define iq97a_ind_lbl 410 `"Collection, purification and distribution of water"', add
label define iq97a_ind_lbl 451 `"Site preparation"', add
label define iq97a_ind_lbl 452 `"Building of complete construction or parts thereof; civil engineering"', add
label define iq97a_ind_lbl 453 `"Building installation"', add
label define iq97a_ind_lbl 454 `"Building completion"', add
label define iq97a_ind_lbl 501 `"Sale of motor vehicles"', add
label define iq97a_ind_lbl 502 `"Maintenance and repair of motor vehicles"', add
label define iq97a_ind_lbl 503 `"Sale of motor vehicle parts and accessories"', add
label define iq97a_ind_lbl 504 `"Sale, maintenance and repair of motorcycles and related parts and accessories"', add
label define iq97a_ind_lbl 505 `"Retail sale of automotive fuel"', add
label define iq97a_ind_lbl 511 `"Wholesale on a fee or contract basis"', add
label define iq97a_ind_lbl 512 `"Wholesale of agricultural raw materials, live animals, food, beverages and tobacco"', add
label define iq97a_ind_lbl 513 `"Wholesale of household goods"', add
label define iq97a_ind_lbl 514 `"Wholesale of non-agricultural intermediate products, waste and scrap"', add
label define iq97a_ind_lbl 515 `"Wholesale of machinery, equipment and supplies"', add
label define iq97a_ind_lbl 519 `"Other wholesale"', add
label define iq97a_ind_lbl 521 `"Non-specialized retail trade in stores"', add
label define iq97a_ind_lbl 522 `"Retail sale of food, beverages and tobacco in specialized stores"', add
label define iq97a_ind_lbl 523 `"Other retail trade of new goods in specialized stores"', add
label define iq97a_ind_lbl 524 `"Retail sale of second-hand goods in stores"', add
label define iq97a_ind_lbl 525 `"Retail trade not in stores"', add
label define iq97a_ind_lbl 526 `"Repair of personal and household goods"', add
label define iq97a_ind_lbl 551 `"Hotels, camping sites and other provision of short-stay accommodation"', add
label define iq97a_ind_lbl 552 `"Restaurants, bars and canteens"', add
label define iq97a_ind_lbl 601 `"Transport via railways"', add
label define iq97a_ind_lbl 602 `"Other land transport"', add
label define iq97a_ind_lbl 603 `"Transport via pipelines"', add
label define iq97a_ind_lbl 611 `"Sea and coastal water transport"', add
label define iq97a_ind_lbl 612 `"Inland water transport"', add
label define iq97a_ind_lbl 621 `"Scheduled air transport"', add
label define iq97a_ind_lbl 630 `"Supporting and auxiliary transport activities, activities of travel agencies"', add
label define iq97a_ind_lbl 641 `"Post and courier activities"', add
label define iq97a_ind_lbl 642 `"Telecommunications"', add
label define iq97a_ind_lbl 651 `"Monetary intermediation"', add
label define iq97a_ind_lbl 660 `"Insurance and pension funding, except compulsory social security"', add
label define iq97a_ind_lbl 701 `"Real estate activities with own or leased property"', add
label define iq97a_ind_lbl 702 `"Real estate activities on a fee or contract basis"', add
label define iq97a_ind_lbl 712 `"Renting of other machinery and equipment"', add
label define iq97a_ind_lbl 741 `"Legal, accounting, book-keeping and auditing activities; tax consultancy; market research and public opinion polling; business and management consultancy"', add
label define iq97a_ind_lbl 742 `"Architectural and engineering activities and related technical consultancy technical consultancy; technical testing and analysis"', add
label define iq97a_ind_lbl 743 `"Advertising"', add
label define iq97a_ind_lbl 749 `"Business activities n.e.c."', add
label define iq97a_ind_lbl 751 `"Administration of the state and the economic and social policy of the community"', add
label define iq97a_ind_lbl 752 `"Provision of services to the community as a whole"', add
label define iq97a_ind_lbl 753 `"Compulsory social security activities"', add
label define iq97a_ind_lbl 801 `"Primary education"', add
label define iq97a_ind_lbl 802 `"General secondary education, technical and vocational secondary education"', add
label define iq97a_ind_lbl 803 `"Higher education"', add
label define iq97a_ind_lbl 851 `"Human health activities"', add
label define iq97a_ind_lbl 852 `"Veterinary activities"', add
label define iq97a_ind_lbl 853 `"Social work activities"', add
label define iq97a_ind_lbl 900 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define iq97a_ind_lbl 911 `"Activities of business, employers and professional organization"', add
label define iq97a_ind_lbl 912 `"Activities of trade unions"', add
label define iq97a_ind_lbl 919 `"Activities of other membership organizations"', add
label define iq97a_ind_lbl 921 `"Motion picture, radio, television and other entertainment activities entertainment activities"', add
label define iq97a_ind_lbl 922 `"News agency activities"', add
label define iq97a_ind_lbl 923 `"Library, archives, museums and other cultural activities"', add
label define iq97a_ind_lbl 924 `"Sporting and other recreational activities"', add
label define iq97a_ind_lbl 930 `"Other service activities"', add
label define iq97a_ind_lbl 950 `"Private households with employed persons"', add
label define iq97a_ind_lbl 990 `"Extra- territorial organizations and bodies"', add
label define iq97a_ind_lbl 995 `"Response suppressed"', add
label define iq97a_ind_lbl 999 `"Unknown"', add
label values iq97a_ind iq97a_ind_lbl

label define iq97a_classwk_lbl 0 `"NIU (not in universe)"'
label define iq97a_classwk_lbl 1 `"Employer"', add
label define iq97a_classwk_lbl 2 `"Own-account worker"', add
label define iq97a_classwk_lbl 3 `"Employee"', add
label define iq97a_classwk_lbl 4 `"Unpaid family worker"', add
label define iq97a_classwk_lbl 9 `"Unknown"', add
label values iq97a_classwk iq97a_classwk_lbl

label define iq97a_sector_lbl 0 `"NIU (not in universe)"'
label define iq97a_sector_lbl 1 `"Governmental"', add
label define iq97a_sector_lbl 2 `"Mixed"', add
label define iq97a_sector_lbl 3 `"Cooperative"', add
label define iq97a_sector_lbl 4 `"Private"', add
label define iq97a_sector_lbl 5 `"Arabic"', add
label define iq97a_sector_lbl 6 `"Foreigner"', add
label define iq97a_sector_lbl 9 `"Unknown"', add
label values iq97a_sector iq97a_sector_lbl

label define iq97a_fulltime_lbl 0 `"NIU (not in universe)"'
label define iq97a_fulltime_lbl 1 `"Full time"', add
label define iq97a_fulltime_lbl 2 `"Part time"', add
label define iq97a_fulltime_lbl 9 `"Unknown"', add
label values iq97a_fulltime iq97a_fulltime_lbl

label define iq97a_incsrc_lbl 1 `"From work"'
label define iq97a_incsrc_lbl 2 `"Retirement (all kinds of pension)"', add
label define iq97a_incsrc_lbl 3 `"Scholarship"', add
label define iq97a_incsrc_lbl 4 `"Gifts and assistance"', add
label define iq97a_incsrc_lbl 5 `"Estate and investment"', add
label define iq97a_incsrc_lbl 6 `"Dependency by other person"', add
label define iq97a_incsrc_lbl 7 `"Welfare"', add
label define iq97a_incsrc_lbl 9 `"Unknown"', add
label values iq97a_incsrc iq97a_incsrc_lbl

label define iq97a_parliv_lbl 1 `"The father is dead"'
label define iq97a_parliv_lbl 2 `"The mother is dead"', add
label define iq97a_parliv_lbl 3 `"The parents dead"', add
label define iq97a_parliv_lbl 4 `"The parents are alive"', add
label define iq97a_parliv_lbl 9 `"Unknown"', add
label values iq97a_parliv iq97a_parliv_lbl

label define iq97a_bpl_lbl 001 `"In this governorate"'
label define iq97a_bpl_lbl 002 `"In other governorate, unknown"', add
label define iq97a_bpl_lbl 011 `"Dhok"', add
label define iq97a_bpl_lbl 012 `"Nineveh"', add
label define iq97a_bpl_lbl 013 `"Al-Sulaimaniya"', add
label define iq97a_bpl_lbl 014 `"Al-Tameem"', add
label define iq97a_bpl_lbl 015 `"Arbil"', add
label define iq97a_bpl_lbl 021 `"Diala"', add
label define iq97a_bpl_lbl 022 `"Al-Anbar"', add
label define iq97a_bpl_lbl 023 `"Baghdad"', add
label define iq97a_bpl_lbl 024 `"Babylon"', add
label define iq97a_bpl_lbl 025 `"Kerbela"', add
label define iq97a_bpl_lbl 026 `"Wasit"', add
label define iq97a_bpl_lbl 027 `"Salah Al-Deen"', add
label define iq97a_bpl_lbl 028 `"Al-Najaf"', add
label define iq97a_bpl_lbl 031 `"Al-Qadisiya"', add
label define iq97a_bpl_lbl 032 `"Al-Muthanna"', add
label define iq97a_bpl_lbl 033 `"Thi-Qar"', add
label define iq97a_bpl_lbl 034 `"Maysan"', add
label define iq97a_bpl_lbl 035 `"Al-Basrah"', add
label define iq97a_bpl_lbl 101 `"Egypt"', add
label define iq97a_bpl_lbl 102 `"Syrian A. repiblic"', add
label define iq97a_bpl_lbl 103 `"Jordan"', add
label define iq97a_bpl_lbl 104 `"Kuwait"', add
label define iq97a_bpl_lbl 105 `"Sudan"', add
label define iq97a_bpl_lbl 106 `"Lebanon"', add
label define iq97a_bpl_lbl 107 `"Saudi Arabia Kingdom"', add
label define iq97a_bpl_lbl 111 `"United Arab Emirates"', add
label define iq97a_bpl_lbl 112 `"National Yemen"', add
label define iq97a_bpl_lbl 113 `"Yemen Arabic Jammahiriah"', add
label define iq97a_bpl_lbl 115 `"Tunisia"', add
label define iq97a_bpl_lbl 116 `"Algeria"', add
label define iq97a_bpl_lbl 117 `"Morroca"', add
label define iq97a_bpl_lbl 121 `"Palestine"', add
label define iq97a_bpl_lbl 201 `"United kingdom"', add
label define iq97a_bpl_lbl 206 `"Germany"', add
label define iq97a_bpl_lbl 309 `"Russia Fedration"', add
label define iq97a_bpl_lbl 503 `"Turkey"', add
label define iq97a_bpl_lbl 505 `"Iran"', add
label define iq97a_bpl_lbl 506 `"India"', add
label define iq97a_bpl_lbl 515 `"Pakistan"', add
label define iq97a_bpl_lbl 701 `"United States of America"', add
label define iq97a_bpl_lbl 900 `"Abroad, country unknown"', add
label define iq97a_bpl_lbl 999 `"Unknown"', add
label values iq97a_bpl iq97a_bpl_lbl

label define iq97a_resdur_lbl 1 `"From birth"'
label define iq97a_resdur_lbl 2 `"Less than 1 year"', add
label define iq97a_resdur_lbl 3 `"1 year and more"', add
label define iq97a_resdur_lbl 9 `"Unknown"', add
label values iq97a_resdur iq97a_resdur_lbl

label define iq97a_resdury_lbl 00 `"Less than 1 year"'
label define iq97a_resdury_lbl 01 `"1"', add
label define iq97a_resdury_lbl 02 `"2"', add
label define iq97a_resdury_lbl 03 `"3"', add
label define iq97a_resdury_lbl 04 `"4"', add
label define iq97a_resdury_lbl 05 `"5"', add
label define iq97a_resdury_lbl 06 `"6"', add
label define iq97a_resdury_lbl 07 `"7"', add
label define iq97a_resdury_lbl 08 `"8"', add
label define iq97a_resdury_lbl 09 `"9"', add
label define iq97a_resdury_lbl 10 `"10"', add
label define iq97a_resdury_lbl 11 `"11"', add
label define iq97a_resdury_lbl 12 `"12"', add
label define iq97a_resdury_lbl 13 `"13"', add
label define iq97a_resdury_lbl 14 `"14"', add
label define iq97a_resdury_lbl 15 `"15"', add
label define iq97a_resdury_lbl 16 `"16"', add
label define iq97a_resdury_lbl 17 `"17"', add
label define iq97a_resdury_lbl 18 `"18"', add
label define iq97a_resdury_lbl 19 `"19"', add
label define iq97a_resdury_lbl 20 `"20"', add
label define iq97a_resdury_lbl 21 `"21"', add
label define iq97a_resdury_lbl 22 `"22"', add
label define iq97a_resdury_lbl 23 `"23"', add
label define iq97a_resdury_lbl 24 `"24"', add
label define iq97a_resdury_lbl 25 `"25"', add
label define iq97a_resdury_lbl 26 `"26"', add
label define iq97a_resdury_lbl 27 `"27"', add
label define iq97a_resdury_lbl 28 `"28"', add
label define iq97a_resdury_lbl 29 `"29"', add
label define iq97a_resdury_lbl 30 `"30"', add
label define iq97a_resdury_lbl 31 `"31"', add
label define iq97a_resdury_lbl 32 `"32"', add
label define iq97a_resdury_lbl 33 `"33"', add
label define iq97a_resdury_lbl 34 `"34"', add
label define iq97a_resdury_lbl 35 `"35"', add
label define iq97a_resdury_lbl 36 `"36"', add
label define iq97a_resdury_lbl 37 `"37"', add
label define iq97a_resdury_lbl 38 `"38"', add
label define iq97a_resdury_lbl 39 `"39"', add
label define iq97a_resdury_lbl 40 `"40"', add
label define iq97a_resdury_lbl 41 `"41"', add
label define iq97a_resdury_lbl 42 `"42"', add
label define iq97a_resdury_lbl 43 `"43"', add
label define iq97a_resdury_lbl 44 `"44"', add
label define iq97a_resdury_lbl 45 `"45"', add
label define iq97a_resdury_lbl 46 `"46"', add
label define iq97a_resdury_lbl 47 `"47"', add
label define iq97a_resdury_lbl 48 `"48"', add
label define iq97a_resdury_lbl 49 `"49"', add
label define iq97a_resdury_lbl 50 `"50"', add
label define iq97a_resdury_lbl 51 `"51"', add
label define iq97a_resdury_lbl 52 `"52"', add
label define iq97a_resdury_lbl 53 `"53"', add
label define iq97a_resdury_lbl 54 `"54"', add
label define iq97a_resdury_lbl 55 `"55"', add
label define iq97a_resdury_lbl 56 `"56"', add
label define iq97a_resdury_lbl 57 `"57"', add
label define iq97a_resdury_lbl 58 `"58"', add
label define iq97a_resdury_lbl 59 `"59"', add
label define iq97a_resdury_lbl 60 `"60"', add
label define iq97a_resdury_lbl 61 `"61"', add
label define iq97a_resdury_lbl 62 `"62"', add
label define iq97a_resdury_lbl 63 `"63"', add
label define iq97a_resdury_lbl 64 `"64"', add
label define iq97a_resdury_lbl 65 `"65"', add
label define iq97a_resdury_lbl 66 `"66"', add
label define iq97a_resdury_lbl 67 `"67"', add
label define iq97a_resdury_lbl 68 `"68"', add
label define iq97a_resdury_lbl 69 `"69"', add
label define iq97a_resdury_lbl 70 `"70+"', add
label define iq97a_resdury_lbl 98 `"Unknown"', add
label define iq97a_resdury_lbl 99 `"NIU (not in universe)"', add
label values iq97a_resdury iq97a_resdury_lbl

label define iq97a_respr_lbl 000 `"NIU (not in universe)"'
label define iq97a_respr_lbl 001 `"In this governorate"', add
label define iq97a_respr_lbl 002 `"In other governorate, unknown"', add
label define iq97a_respr_lbl 011 `"Dhok"', add
label define iq97a_respr_lbl 012 `"Nineveh"', add
label define iq97a_respr_lbl 013 `"Al-Sulaimaniya"', add
label define iq97a_respr_lbl 014 `"Al-Tameem"', add
label define iq97a_respr_lbl 015 `"Arbil"', add
label define iq97a_respr_lbl 021 `"Diala"', add
label define iq97a_respr_lbl 022 `"Al-Anbar"', add
label define iq97a_respr_lbl 023 `"Baghdad"', add
label define iq97a_respr_lbl 024 `"Babylon"', add
label define iq97a_respr_lbl 025 `"Kerbela"', add
label define iq97a_respr_lbl 026 `"Wasit"', add
label define iq97a_respr_lbl 027 `"Salah Al-Deen"', add
label define iq97a_respr_lbl 028 `"Al-Najaf"', add
label define iq97a_respr_lbl 031 `"Al-Qadisiya"', add
label define iq97a_respr_lbl 032 `"Al-Muthanna"', add
label define iq97a_respr_lbl 033 `"Thi-Qar"', add
label define iq97a_respr_lbl 034 `"Maysan"', add
label define iq97a_respr_lbl 035 `"Al-Basrah"', add
label define iq97a_respr_lbl 101 `"Egypt"', add
label define iq97a_respr_lbl 102 `"Syrian A. repiblic"', add
label define iq97a_respr_lbl 103 `"Jordan"', add
label define iq97a_respr_lbl 104 `"Kuwait"', add
label define iq97a_respr_lbl 105 `"Sudan"', add
label define iq97a_respr_lbl 106 `"Lebanon"', add
label define iq97a_respr_lbl 107 `"Saudi Arabia Kingdom"', add
label define iq97a_respr_lbl 111 `"United Arab Emirates"', add
label define iq97a_respr_lbl 112 `"National Yemen"', add
label define iq97a_respr_lbl 113 `"Yemen Arabic Jammahiriah"', add
label define iq97a_respr_lbl 114 `"Libiyan Arabic Jammahiriah"', add
label define iq97a_respr_lbl 115 `"Tunisia"', add
label define iq97a_respr_lbl 116 `"Algeria"', add
label define iq97a_respr_lbl 117 `"Morroca"', add
label define iq97a_respr_lbl 121 `"Palestine"', add
label define iq97a_respr_lbl 199 `"Other Arab Countries"', add
label define iq97a_respr_lbl 201 `"United kingdom"', add
label define iq97a_respr_lbl 202 `"France"', add
label define iq97a_respr_lbl 206 `"Germany"', add
label define iq97a_respr_lbl 299 `"Other western European countries"', add
label define iq97a_respr_lbl 306 `"Romania"', add
label define iq97a_respr_lbl 309 `"Russia Federation"', add
label define iq97a_respr_lbl 399 `"Other eastern European countries"', add
label define iq97a_respr_lbl 503 `"Turkey"', add
label define iq97a_respr_lbl 505 `"Iran"', add
label define iq97a_respr_lbl 515 `"Pakistan"', add
label define iq97a_respr_lbl 599 `"Other Asia"', add
label define iq97a_respr_lbl 701 `"United State of  America"', add
label define iq97a_respr_lbl 899 `"Other countries not elsewhere classified"', add
label define iq97a_respr_lbl 999 `"Unknown"', add
label values iq97a_respr iq97a_respr_lbl

label define iq97a_respru_lbl 0 `"NIU (not in universe)"'
label define iq97a_respru_lbl 1 `"Urban"', add
label define iq97a_respru_lbl 2 `"Rural"', add
label define iq97a_respru_lbl 9 `"Unknown"', add
label values iq97a_respru iq97a_respru_lbl

label define iq97a_whymove_lbl 00 `"NIU (not in universe)"'
label define iq97a_whymove_lbl 01 `"Job"', add
label define iq97a_whymove_lbl 02 `"Transfer or posting"', add
label define iq97a_whymove_lbl 03 `"Appointment"', add
label define iq97a_whymove_lbl 04 `"War"', add
label define iq97a_whymove_lbl 05 `"Marriage or divorce or widowed"', add
label define iq97a_whymove_lbl 06 `"Study or finishing study"', add
label define iq97a_whymove_lbl 07 `"Accompanying family"', add
label define iq97a_whymove_lbl 08 `"Better living"', add
label define iq97a_whymove_lbl 09 `"Others"', add
label define iq97a_whymove_lbl 99 `"Unknown"', add
label values iq97a_whymove iq97a_whymove_lbl

label define iq97a_res87_lbl 000 `"NIU (not in universe)"'
label define iq97a_res87_lbl 001 `"In this governorate"', add
label define iq97a_res87_lbl 002 `"In other governorate, unknown"', add
label define iq97a_res87_lbl 003 `"Abroad, country unknown"', add
label define iq97a_res87_lbl 011 `"Dhok"', add
label define iq97a_res87_lbl 012 `"Nineveh"', add
label define iq97a_res87_lbl 013 `"Al-Sulaimaniya"', add
label define iq97a_res87_lbl 014 `"Al-Tameem"', add
label define iq97a_res87_lbl 015 `"Arbil"', add
label define iq97a_res87_lbl 021 `"Diala"', add
label define iq97a_res87_lbl 022 `"Al-Anbar"', add
label define iq97a_res87_lbl 023 `"Baghdad"', add
label define iq97a_res87_lbl 024 `"Babylon"', add
label define iq97a_res87_lbl 025 `"Kerbela"', add
label define iq97a_res87_lbl 026 `"Wasit"', add
label define iq97a_res87_lbl 027 `"Salah Al-Deen"', add
label define iq97a_res87_lbl 028 `"Al-Najaf"', add
label define iq97a_res87_lbl 031 `"Al-Qadisiya"', add
label define iq97a_res87_lbl 032 `"Al-Muthanna"', add
label define iq97a_res87_lbl 033 `"Thi-Qar"', add
label define iq97a_res87_lbl 034 `"Maysan"', add
label define iq97a_res87_lbl 035 `"Al-Basrah"', add
label define iq97a_res87_lbl 101 `"Egypt"', add
label define iq97a_res87_lbl 102 `"Syrian A. repiblic"', add
label define iq97a_res87_lbl 103 `"Jordan"', add
label define iq97a_res87_lbl 104 `"Kuwait"', add
label define iq97a_res87_lbl 105 `"Sudan"', add
label define iq97a_res87_lbl 106 `"Lebanon"', add
label define iq97a_res87_lbl 107 `"Saudi Arabia Kingdom"', add
label define iq97a_res87_lbl 111 `"United Arab Emirates"', add
label define iq97a_res87_lbl 112 `"National Yemen"', add
label define iq97a_res87_lbl 113 `"Yemen Arabic Jammahiriah"', add
label define iq97a_res87_lbl 121 `"Palestine"', add
label define iq97a_res87_lbl 199 `"Other Arab countries"', add
label define iq97a_res87_lbl 201 `"United kingdom"', add
label define iq97a_res87_lbl 299 `"Other European countries"', add
label define iq97a_res87_lbl 505 `"Iran"', add
label define iq97a_res87_lbl 515 `"Pakistan"', add
label define iq97a_res87_lbl 900 `"Other countries not elsewhere classified"', add
label define iq97a_res87_lbl 999 `"Unknown"', add
label values iq97a_res87 iq97a_res87_lbl

label define iq97a_res87u_lbl 0 `"NIU (not in universe)"'
label define iq97a_res87u_lbl 1 `"Urban"', add
label define iq97a_res87u_lbl 2 `"Rural"', add
label define iq97a_res87u_lbl 9 `"Unknown"', add
label values iq97a_res87u iq97a_res87u_lbl

label define iq97a_nation_lbl 001 `"Iraqi"'
label define iq97a_nation_lbl 002 `"Arabic or foreigner (nationality recorded)"', add
label define iq97a_nation_lbl 101 `"Egypt"', add
label define iq97a_nation_lbl 102 `"Syrian A. repiblic"', add
label define iq97a_nation_lbl 103 `"Jordan"', add
label define iq97a_nation_lbl 104 `"Kuwait"', add
label define iq97a_nation_lbl 105 `"Sudan"', add
label define iq97a_nation_lbl 106 `"Lebanon"', add
label define iq97a_nation_lbl 107 `"Saudi Arabia Kingdom"', add
label define iq97a_nation_lbl 111 `"United Arab Emirates"', add
label define iq97a_nation_lbl 112 `"National Yemen"', add
label define iq97a_nation_lbl 113 `"Yemen Arabic Jammahiriah"', add
label define iq97a_nation_lbl 115 `"Tunisia"', add
label define iq97a_nation_lbl 117 `"Morroca"', add
label define iq97a_nation_lbl 118 `"Somalia"', add
label define iq97a_nation_lbl 119 `"Mauritania"', add
label define iq97a_nation_lbl 121 `"Palestine"', add
label define iq97a_nation_lbl 199 `"Other Arab Countries"', add
label define iq97a_nation_lbl 309 `"Russian Federation"', add
label define iq97a_nation_lbl 399 `"Other European countries"', add
label define iq97a_nation_lbl 503 `"Turkey"', add
label define iq97a_nation_lbl 505 `"Iran"', add
label define iq97a_nation_lbl 506 `"India"', add
label define iq97a_nation_lbl 515 `"Pakistan"', add
label define iq97a_nation_lbl 516 `"Afghanistan"', add
label define iq97a_nation_lbl 900 `"Other countries not elsewhere classified"', add
label define iq97a_nation_lbl 999 `"Unknown"', add
label values iq97a_nation iq97a_nation_lbl

label define iq97a_edlev1_lbl 00 `"NIU (not in universe)"'
label define iq97a_edlev1_lbl 01 `"Primary"', add
label define iq97a_edlev1_lbl 02 `"Intermediate or preparatory"', add
label define iq97a_edlev1_lbl 03 `"Vocational schools"', add
label define iq97a_edlev1_lbl 04 `"Institutes"', add
label define iq97a_edlev1_lbl 05 `"College or university"', add
label define iq97a_edlev1_lbl 06 `"High diploma"', add
label define iq97a_edlev1_lbl 07 `"Master degree"', add
label define iq97a_edlev1_lbl 08 `"Ph D"', add
label define iq97a_edlev1_lbl 09 `"Highest professional degree"', add
label define iq97a_edlev1_lbl 10 `"Others"', add
label define iq97a_edlev1_lbl 99 `"Unknown"', add
label values iq97a_edlev1 iq97a_edlev1_lbl

label define iq97a_edgrade_lbl 0 `"NIU (not in universe)"'
label define iq97a_edgrade_lbl 1 `"1"', add
label define iq97a_edgrade_lbl 2 `"2"', add
label define iq97a_edgrade_lbl 3 `"3"', add
label define iq97a_edgrade_lbl 4 `"4"', add
label define iq97a_edgrade_lbl 5 `"5"', add
label define iq97a_edgrade_lbl 6 `"6"', add
label define iq97a_edgrade_lbl 9 `"Unknown"', add
label values iq97a_edgrade iq97a_edgrade_lbl

label define iq97a_edattan_lbl 000 `"NIU (not in universe)"'
label define iq97a_edattan_lbl 011 `"Primary Level 1"', add
label define iq97a_edattan_lbl 012 `"Primary Level 2"', add
label define iq97a_edattan_lbl 013 `"Primary Level 3"', add
label define iq97a_edattan_lbl 014 `"Primary Level 4"', add
label define iq97a_edattan_lbl 015 `"Primary Level 5"', add
label define iq97a_edattan_lbl 016 `"Primary Level 6"', add
label define iq97a_edattan_lbl 021 `"Intermediate or preparatory Level 1"', add
label define iq97a_edattan_lbl 022 `"Intermediate or preparatory Level 2"', add
label define iq97a_edattan_lbl 023 `"Intermediate or preparatory Level 3"', add
label define iq97a_edattan_lbl 024 `"Intermediate or preparatory Level 4"', add
label define iq97a_edattan_lbl 025 `"Intermediate or preparatory Level 5"', add
label define iq97a_edattan_lbl 026 `"Intermediate or preparatory Level 6"', add
label define iq97a_edattan_lbl 031 `"Vocational schools Level 1"', add
label define iq97a_edattan_lbl 032 `"Vocational schools Level 2"', add
label define iq97a_edattan_lbl 033 `"Vocational schools Level 3"', add
label define iq97a_edattan_lbl 034 `"Vocational schools Level 4"', add
label define iq97a_edattan_lbl 035 `"Vocational schools Level 5"', add
label define iq97a_edattan_lbl 036 `"Vocational schools Level 6"', add
label define iq97a_edattan_lbl 041 `"Institutes Level 1"', add
label define iq97a_edattan_lbl 042 `"Institutes Level 2"', add
label define iq97a_edattan_lbl 043 `"Institutes Level 3"', add
label define iq97a_edattan_lbl 044 `"Institutes Level 4"', add
label define iq97a_edattan_lbl 045 `"Institutes Level 5 and 6"', add
label define iq97a_edattan_lbl 051 `"College or university Level 1"', add
label define iq97a_edattan_lbl 052 `"College or university Level 2"', add
label define iq97a_edattan_lbl 053 `"College or university Level 3"', add
label define iq97a_edattan_lbl 054 `"College or university Level 4"', add
label define iq97a_edattan_lbl 055 `"College or university Level 5"', add
label define iq97a_edattan_lbl 056 `"College or university Level 6"', add
label define iq97a_edattan_lbl 060 `"High diploma"', add
label define iq97a_edattan_lbl 070 `"Master degree"', add
label define iq97a_edattan_lbl 080 `"Ph D"', add
label define iq97a_edattan_lbl 090 `"Highest professional degree"', add
label define iq97a_edattan_lbl 100 `"Others"', add
label define iq97a_edattan_lbl 999 `"Unknown"', add
label values iq97a_edattan iq97a_edattan_lbl

label define iq97a_lit_lbl 0 `"NIU (not in universe)"'
label define iq97a_lit_lbl 1 `"Reading and writing"', add
label define iq97a_lit_lbl 2 `"Reading only"', add
label define iq97a_lit_lbl 3 `"Illiterate"', add
label define iq97a_lit_lbl 9 `"Unknown"', add
label values iq97a_lit iq97a_lit_lbl

label define iq97a_edlev2_lbl 00 `"NIU (not in universe)"'
label define iq97a_edlev2_lbl 01 `"Primary"', add
label define iq97a_edlev2_lbl 02 `"Intermediate or preparatory"', add
label define iq97a_edlev2_lbl 03 `"Secondary"', add
label define iq97a_edlev2_lbl 04 `"Vocational schools"', add
label define iq97a_edlev2_lbl 05 `"Diploma (2 or 3 years after secondary)"', add
label define iq97a_edlev2_lbl 06 `"B.Sc."', add
label define iq97a_edlev2_lbl 07 `"Higher diploma"', add
label define iq97a_edlev2_lbl 08 `"M.Sc."', add
label define iq97a_edlev2_lbl 09 `"Ph.D"', add
label define iq97a_edlev2_lbl 10 `"Highest professional degree"', add
label define iq97a_edlev2_lbl 97 `"Others"', add
label define iq97a_edlev2_lbl 99 `"Unknown"', add
label values iq97a_edlev2 iq97a_edlev2_lbl

label define iq97a_handicap_lbl 00 `"Not handicapped"'
label define iq97a_handicap_lbl 01 `"Not hearing"', add
label define iq97a_handicap_lbl 02 `"Dumb"', add
label define iq97a_handicap_lbl 03 `"Lost one eye"', add
label define iq97a_handicap_lbl 04 `"Lost two eyes"', add
label define iq97a_handicap_lbl 05 `"Deaf (not hearing and dumb)"', add
label define iq97a_handicap_lbl 06 `"Lost one leg"', add
label define iq97a_handicap_lbl 07 `"Lost two legs"', add
label define iq97a_handicap_lbl 08 `"Lost one hand"', add
label define iq97a_handicap_lbl 09 `"Lost two hands"', add
label define iq97a_handicap_lbl 10 `"Mad"', add
label define iq97a_handicap_lbl 11 `"Paralysis"', add
label define iq97a_handicap_lbl 20 `"Other"', add
label define iq97a_handicap_lbl 99 `"Unknown"', add
label values iq97a_handicap iq97a_handicap_lbl

label define iq97a_age_lbl 000 `"0"'
label define iq97a_age_lbl 001 `"1"', add
label define iq97a_age_lbl 002 `"2"', add
label define iq97a_age_lbl 003 `"3"', add
label define iq97a_age_lbl 004 `"4"', add
label define iq97a_age_lbl 005 `"5"', add
label define iq97a_age_lbl 006 `"6"', add
label define iq97a_age_lbl 007 `"7"', add
label define iq97a_age_lbl 008 `"8"', add
label define iq97a_age_lbl 009 `"9"', add
label define iq97a_age_lbl 010 `"10"', add
label define iq97a_age_lbl 011 `"11"', add
label define iq97a_age_lbl 012 `"12"', add
label define iq97a_age_lbl 013 `"13"', add
label define iq97a_age_lbl 014 `"14"', add
label define iq97a_age_lbl 015 `"15"', add
label define iq97a_age_lbl 016 `"16"', add
label define iq97a_age_lbl 017 `"17"', add
label define iq97a_age_lbl 018 `"18"', add
label define iq97a_age_lbl 019 `"19"', add
label define iq97a_age_lbl 020 `"20"', add
label define iq97a_age_lbl 021 `"21"', add
label define iq97a_age_lbl 022 `"22"', add
label define iq97a_age_lbl 023 `"23"', add
label define iq97a_age_lbl 024 `"24"', add
label define iq97a_age_lbl 025 `"25"', add
label define iq97a_age_lbl 026 `"26"', add
label define iq97a_age_lbl 027 `"27"', add
label define iq97a_age_lbl 028 `"28"', add
label define iq97a_age_lbl 029 `"29"', add
label define iq97a_age_lbl 030 `"30"', add
label define iq97a_age_lbl 031 `"31"', add
label define iq97a_age_lbl 032 `"32"', add
label define iq97a_age_lbl 033 `"33"', add
label define iq97a_age_lbl 034 `"34"', add
label define iq97a_age_lbl 035 `"35"', add
label define iq97a_age_lbl 036 `"36"', add
label define iq97a_age_lbl 037 `"37"', add
label define iq97a_age_lbl 038 `"38"', add
label define iq97a_age_lbl 039 `"39"', add
label define iq97a_age_lbl 040 `"40"', add
label define iq97a_age_lbl 041 `"41"', add
label define iq97a_age_lbl 042 `"42"', add
label define iq97a_age_lbl 043 `"43"', add
label define iq97a_age_lbl 044 `"44"', add
label define iq97a_age_lbl 045 `"45"', add
label define iq97a_age_lbl 046 `"46"', add
label define iq97a_age_lbl 047 `"47"', add
label define iq97a_age_lbl 048 `"48"', add
label define iq97a_age_lbl 049 `"49"', add
label define iq97a_age_lbl 050 `"50"', add
label define iq97a_age_lbl 051 `"51"', add
label define iq97a_age_lbl 052 `"52"', add
label define iq97a_age_lbl 053 `"53"', add
label define iq97a_age_lbl 054 `"54"', add
label define iq97a_age_lbl 055 `"55"', add
label define iq97a_age_lbl 056 `"56"', add
label define iq97a_age_lbl 057 `"57"', add
label define iq97a_age_lbl 058 `"58"', add
label define iq97a_age_lbl 059 `"59"', add
label define iq97a_age_lbl 060 `"60"', add
label define iq97a_age_lbl 061 `"61"', add
label define iq97a_age_lbl 062 `"62"', add
label define iq97a_age_lbl 063 `"63"', add
label define iq97a_age_lbl 064 `"64"', add
label define iq97a_age_lbl 065 `"65"', add
label define iq97a_age_lbl 066 `"66"', add
label define iq97a_age_lbl 067 `"67"', add
label define iq97a_age_lbl 068 `"68"', add
label define iq97a_age_lbl 069 `"69"', add
label define iq97a_age_lbl 070 `"70"', add
label define iq97a_age_lbl 071 `"71"', add
label define iq97a_age_lbl 072 `"72"', add
label define iq97a_age_lbl 073 `"73"', add
label define iq97a_age_lbl 074 `"74"', add
label define iq97a_age_lbl 075 `"75"', add
label define iq97a_age_lbl 076 `"76"', add
label define iq97a_age_lbl 077 `"77"', add
label define iq97a_age_lbl 078 `"78"', add
label define iq97a_age_lbl 079 `"79"', add
label define iq97a_age_lbl 080 `"80"', add
label define iq97a_age_lbl 081 `"81"', add
label define iq97a_age_lbl 082 `"82"', add
label define iq97a_age_lbl 083 `"83"', add
label define iq97a_age_lbl 084 `"84"', add
label define iq97a_age_lbl 085 `"85"', add
label define iq97a_age_lbl 086 `"86"', add
label define iq97a_age_lbl 087 `"87"', add
label define iq97a_age_lbl 088 `"88"', add
label define iq97a_age_lbl 089 `"89"', add
label define iq97a_age_lbl 090 `"90"', add
label define iq97a_age_lbl 091 `"91"', add
label define iq97a_age_lbl 092 `"92"', add
label define iq97a_age_lbl 093 `"93"', add
label define iq97a_age_lbl 094 `"94"', add
label define iq97a_age_lbl 095 `"95"', add
label define iq97a_age_lbl 096 `"96"', add
label define iq97a_age_lbl 097 `"97"', add
label define iq97a_age_lbl 098 `"98"', add
label define iq97a_age_lbl 099 `"99"', add
label define iq97a_age_lbl 100 `"100"', add
label define iq97a_age_lbl 101 `"101"', add
label define iq97a_age_lbl 102 `"102"', add
label define iq97a_age_lbl 103 `"103"', add
label define iq97a_age_lbl 104 `"104"', add
label define iq97a_age_lbl 105 `"105"', add
label define iq97a_age_lbl 106 `"106"', add
label define iq97a_age_lbl 107 `"107"', add
label define iq97a_age_lbl 108 `"108"', add
label define iq97a_age_lbl 109 `"109"', add
label define iq97a_age_lbl 110 `"110+"', add
label define iq97a_age_lbl 999 `"Unknown"', add
label values iq97a_age iq97a_age_lbl

label define iq97a_lang_lbl 00 `"NIU (not in universe)"'
label define iq97a_lang_lbl 01 `"Al-Arabia"', add
label define iq97a_lang_lbl 02 `"Al-Kurdia"', add
label define iq97a_lang_lbl 03 `"Al-Turkomania"', add
label define iq97a_lang_lbl 04 `"Al-Armania"', add
label define iq97a_lang_lbl 05 `"Al-Syriania"', add
label define iq97a_lang_lbl 06 `"Al-Chaldeania"', add
label define iq97a_lang_lbl 09 `"Other Local Language"', add
label define iq97a_lang_lbl 10 `"Undocumented"', add
label define iq97a_lang_lbl 11 `"English"', add
label define iq97a_lang_lbl 12 `"French"', add
label define iq97a_lang_lbl 13 `"Russian"', add
label define iq97a_lang_lbl 14 `"German"', add
label define iq97a_lang_lbl 15 `"TurKish"', add
label define iq97a_lang_lbl 16 `"Persian"', add
label define iq97a_lang_lbl 17 `"Chineas"', add
label define iq97a_lang_lbl 19 `"Polanies"', add
label define iq97a_lang_lbl 20 `"Hingarian"', add
label define iq97a_lang_lbl 21 `"Japanies"', add
label define iq97a_lang_lbl 22 `"Italian"', add
label define iq97a_lang_lbl 23 `"Spanish"', add
label define iq97a_lang_lbl 25 `"Bulgaria"', add
label define iq97a_lang_lbl 30 `"Afghanistan"', add
label define iq97a_lang_lbl 31 `"Pakistan"', add
label define iq97a_lang_lbl 98 `"Other Languages"', add
label define iq97a_lang_lbl 99 `"Unknown"', add
label values iq97a_lang iq97a_lang_lbl


