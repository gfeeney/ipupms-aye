* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    mw08a_dwnum     22-28    ///
  int     mw08a_pern      29-31    ///
  byte    mw08a_fbig      32-32    ///
  byte    mw08a_region    33-33    ///
  int     mw08a_district  34-36    ///
  int     mw08a_ta2       37-39    ///
  byte    mw08a_hhtype    40-40    ///
  byte    mw08a_struct    41-41    ///
  byte    mw08a_tenure    42-42    ///
  byte    mw08a_roof      43-43    ///
  byte    mw08a_walls     44-44    ///
  byte    mw08a_floor     45-46    ///
  byte    mw08a_rooms     47-48    ///
  byte    mw08a_bedrooms  49-50    ///
  byte    mw08a_occupnts  51-52    ///
  byte    mw08a_watrdry   53-54    ///
  byte    mw08a_watrwet   55-56    ///
  byte    mw08a_toilet    57-57    ///
  byte    mw08a_lighting  58-58    ///
  byte    mw08a_fuelcook  59-59    ///
  byte    mw08a_radio     60-60    ///
  byte    mw08a_tv        61-61    ///
  byte    mw08a_refridge  62-62    ///
  byte    mw08a_hotplate  63-63    ///
  byte    mw08a_bicycle   64-64    ///
  byte    mw08a_motocyc   65-65    ///
  byte    mw08a_car       66-66    ///
  byte    mw08a_phone     67-67    ///
  byte    mw08a_oxcart    68-68    ///
  byte    mw08a_mosqnet   69-69    ///
  byte    mw08a_emighh    70-70    ///
  byte    mw08a_remitt    71-71    ///
  byte    mw08a_regremit  72-72    ///
  byte    mw08a_deathhh   73-73    ///
  byte    mw08a_resmale   74-75    ///
  byte    mw08a_resfem    76-77    ///
  byte    mw08a_restotal  78-79    ///
  byte    mw08a_vismale   80-80    ///
  byte    mw08a_visfem    81-81    ///
  byte    mw08a_vistot    82-82    ///
  byte    mw08a_enummale  83-84    ///
  byte    mw08a_enumfem   85-86    ///
  byte    mw08a_enumtot   87-88    ///
  byte    mw08a_urban     89-89    ///
  byte    mw08a_nmort     90-90    ///
  byte    mw08a_nmig      91-91    ///
  int     pernum          92-94    ///
  float   wtper           95-102   ///
  byte    resident        103-103  ///
  int     mw08a_pernum    104-106  ///
  byte    mw08a_relate    107-107  ///
  byte    mw08a_sex       108-108  ///
  byte    mw08a_birthmo   109-110  ///
  int     mw08a_birthyr   111-114  ///
  byte    mw08a_malawi    115-115  ///
  int     mw08a_nation    116-118  ///
  byte    mw08a_resstat   119-119  ///
  byte    mw08a_tribe     120-121  ///
  int     mw08a_prevres   122-124  ///
  int     mw08a_resdur    125-127  ///
  byte    mw08a_disab1    128-128  ///
  byte    mw08a_discaus1  129-129  ///
  byte    mw08a_disab2    130-130  ///
  byte    mw08a_discaus2  131-131  ///
  byte    mw08a_disab3    132-132  ///
  byte    mw08a_discaus3  133-133  ///
  byte    mw08a_mothlive  134-134  ///
  byte    mw08a_mothhh    135-135  ///
  byte    mw08a_fathlive  136-136  ///
  byte    mw08a_fathhh    137-137  ///
  byte    mw08a_bthcert   138-138  ///
  byte    mw08a_chichewa  139-139  ///
  byte    mw08a_othlang   140-140  ///
  byte    mw08a_litlangs  141-141  ///
  byte    mw08a_edattain  142-143  ///
  byte    mw08a_edlevel   144-144  ///
  byte    mw08a_edgrade   145-146  ///
  byte    mw08a_edqualif  147-148  ///
  byte    mw08a_empstat   149-149  ///
  byte    mw08a_nowork    150-150  ///
  byte    mw08a_subsist   151-151  ///
  byte    mw08a_looking   152-152  ///
  int     mw08a_occ2      153-155  ///
  byte    mw08a_classwk   156-156  ///
  byte    mw08a_classwk   157-157  ///
  int     mw08a_ind2      158-160  ///
  byte    mw08a_marst     161-161  ///
  byte    mw08a_agemarr   162-163  ///
  byte    mw08a_chbornm   164-165  ///
  byte    mw08a_chsurvm   166-167  ///
  byte    mw08a_chsurvf   168-169  ///
  byte    mw08a_blstyrm   170-170  ///
  byte    mw08a_blstyrf   171-171  ///
  byte    mw08a_blivem    172-172  ///
  byte    mw08a_blivef    173-173  ///
  byte    mw08a_qrelate   174-174  ///
  byte    mw08a_qsex      175-175  ///
  byte    mw08a_qage      176-176  ///
  byte    mw08a_qmalawi   177-177  ///
  byte    mw08a_qnation   178-178  ///
  byte    mw08a_qrelig    179-179  ///
  byte    mw08a_qtribe    180-180  ///
  byte    mw08a_qmothliv  181-181  ///
  byte    mw08a_qfathliv  182-182  ///
  byte    mw08a_qmarst    183-183  ///
  byte    mw08a_qchbornm  184-184  ///
  byte    mw08a_qchbornf  185-185  ///
  byte    mw08a_qchsurvm  186-186  ///
  byte    mw08a_qchsurvf  187-187  ///
  byte    mw08a_qblstyrm  188-188  ///
  byte    mw08a_qblstyrf  189-189  ///
  byte    mw08a_qmlstliv  190-190  ///
  byte    mw08a_qflstliv  191-191  ///
  byte    mw08a_chborn    192-193  ///
  byte    mw08a_chsurv    194-195  ///
  byte    mw08a_bthlstyr  196-196  ///
  byte    mw08a_blive     197-197  ///
  using `"ipumsi_00089.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var mw08a_dwnum    `"Dwelling number"'
label var mw08a_pern     `"Number of persons in household"'
label var mw08a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var mw08a_region   `"Region"'
label var mw08a_district `"District"'
label var mw08a_ta2      `"Town (traditional authority)"'
label var mw08a_hhtype   `"Type of household"'
label var mw08a_struct   `"Type of dwelling structure"'
label var mw08a_tenure   `"Tenure of the dwelling"'
label var mw08a_roof     `"Main material of the roof"'
label var mw08a_walls    `"Main material of the walls"'
label var mw08a_floor    `"Main material of the floor"'
label var mw08a_rooms    `"Number of rooms"'
label var mw08a_bedrooms `"Number of rooms for sleeping"'
label var mw08a_occupnts `"Number of occupants"'
label var mw08a_watrdry  `"Main source of drinking water in dry season"'
label var mw08a_watrwet  `"Main source of drinking water in wet season"'
label var mw08a_toilet   `"Type of toilet facility"'
label var mw08a_lighting `"Main source of energy for lighting"'
label var mw08a_fuelcook `"Main source of energy for cooking"'
label var mw08a_radio    `"Owned a radio"'
label var mw08a_tv       `"Owned a television"'
label var mw08a_refridge `"Owned a refrigerator/deep freezer"'
label var mw08a_hotplate `"Owned a cooker/hot plate"'
label var mw08a_bicycle  `"Owned a bicycle"'
label var mw08a_motocyc  `"Owned a motorcycle"'
label var mw08a_car      `"Owned a car or truck"'
label var mw08a_phone    `"Owned a telephone"'
label var mw08a_oxcart   `"Owned an ox-cart"'
label var mw08a_mosqnet  `"Owned an ITN (insecticide-treated net)"'
label var mw08a_emighh   `"Household had emigrant member(s)"'
label var mw08a_remitt   `"Household received remittances"'
label var mw08a_regremit `"Regularity of remittances"'
label var mw08a_deathhh  `"Household had deaths in last 12 months"'
label var mw08a_resmale  `"Present residents - male"'
label var mw08a_resfem   `"Present residents - female"'
label var mw08a_restotal `"Present residents - total"'
label var mw08a_vismale  `"Visitors - male"'
label var mw08a_visfem   `"Visitors - female"'
label var mw08a_vistot   `"Visitors - total"'
label var mw08a_enummale `"Total enumerated - male"'
label var mw08a_enumfem  `"Total enumerated - female"'
label var mw08a_enumtot  `"Total enumerated - total"'
label var mw08a_urban    `"Urban/rural status"'
label var mw08a_nmort    `"Number of deaths in last year"'
label var mw08a_nmig     `"Number of emigrants in last ten years"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var resident       `"Residence status: de facto, de jure"'
label var mw08a_pernum   `"Person number (within household)"'
label var mw08a_relate   `"Relationship to head of household"'
label var mw08a_sex      `"Sex"'
label var mw08a_birthmo  `"Month of birth"'
label var mw08a_birthyr  `"Year of birth"'
label var mw08a_malawi   `"Malawian"'
label var mw08a_nation   `"Nationality"'
label var mw08a_resstat  `"Residence status"'
label var mw08a_tribe    `"Tribe"'
label var mw08a_prevres  `"District or country of previous residence"'
label var mw08a_resdur   `"Duration of residence (years)"'
label var mw08a_disab1   `"Type of disability, first"'
label var mw08a_discaus1 `"Cause of disability, first"'
label var mw08a_disab2   `"Type of disability, second"'
label var mw08a_discaus2 `"Cause of disability, second"'
label var mw08a_disab3   `"Type of disability, third"'
label var mw08a_discaus3 `"Cause of disability, third"'
label var mw08a_mothlive `"Mother alive"'
label var mw08a_mothhh   `"Mother in house"'
label var mw08a_fathlive `"Father alive"'
label var mw08a_fathhh   `"Father in house"'
label var mw08a_bthcert  `"Has birth certificate"'
label var mw08a_chichewa `"Literate in Chichewa"'
label var mw08a_othlang  `"Literate in other language"'
label var mw08a_litlangs `"Literacy, detailed"'
label var mw08a_edattain `"Highest school level and grade attended"'
label var mw08a_edlevel  `"Highest school level attended"'
label var mw08a_edgrade  `"Highest school years or grade attended"'
label var mw08a_edqualif `"Highest education qualification attained"'
label var mw08a_empstat  `"Economically active"'
label var mw08a_nowork   `"Reason for not working"'
label var mw08a_subsist  `"Subsistence work"'
label var mw08a_looking  `"Looking for work"'
label var mw08a_occ2     `"Occupation (2 digits)"'
label var mw08a_classwk  `"Class of worker"'
label var mw08a_classwk  `"Class of worker"'
label var mw08a_ind2     `"Main industry"'
label var mw08a_marst    `"Marital status"'
label var mw08a_agemarr  `"Age at first marriage or union"'
label var mw08a_chbornm  `"Male children ever born"'
label var mw08a_chsurvm  `"Male children surviving"'
label var mw08a_chsurvf  `"Female children surviving"'
label var mw08a_blstyrm  `"Males born last year"'
label var mw08a_blstyrf  `"Females born last year"'
label var mw08a_blivem   `"Males born last year surviving"'
label var mw08a_blivef   `"Females born last year surviving"'
label var mw08a_qrelate  `"Relationship flag"'
label var mw08a_qsex     `"Sex flag"'
label var mw08a_qage     `"Age flag"'
label var mw08a_qmalawi  `"Malawian (Yes/No) flag"'
label var mw08a_qnation  `"Nationality flag"'
label var mw08a_qrelig   `"Religion flag"'
label var mw08a_qtribe   `"Tribe flag"'
label var mw08a_qmothliv `"Mother alive flag"'
label var mw08a_qfathliv `"Father alive flag"'
label var mw08a_qmarst   `"Marital status flag"'
label var mw08a_qchbornm `"Male children ever born flag"'
label var mw08a_qchbornf `"Female children ever born flag"'
label var mw08a_qchsurvm `"Male children surviving flag"'
label var mw08a_qchsurvf `"Female children surviving flag"'
label var mw08a_qblstyrm `"Males born last year flag"'
label var mw08a_qblstyrf `"Females born last year flag"'
label var mw08a_qmlstliv `"Males born last year surviving flag"'
label var mw08a_qflstliv `"Females born last year surviving flag"'
label var mw08a_chborn   `"Children ever born"'
label var mw08a_chsurv   `"Children surviving"'
label var mw08a_bthlstyr `"Children born last year"'
label var mw08a_blive    `"Children born last year surviving"'

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

label define mw08a_pern_lbl 001 `"1"'
label define mw08a_pern_lbl 002 `"2"', add
label define mw08a_pern_lbl 003 `"3"', add
label define mw08a_pern_lbl 004 `"4"', add
label define mw08a_pern_lbl 005 `"5"', add
label define mw08a_pern_lbl 006 `"6"', add
label define mw08a_pern_lbl 007 `"7"', add
label define mw08a_pern_lbl 008 `"8"', add
label define mw08a_pern_lbl 009 `"9"', add
label define mw08a_pern_lbl 010 `"10"', add
label define mw08a_pern_lbl 011 `"11"', add
label define mw08a_pern_lbl 012 `"12"', add
label define mw08a_pern_lbl 013 `"13"', add
label define mw08a_pern_lbl 014 `"14"', add
label define mw08a_pern_lbl 015 `"15"', add
label define mw08a_pern_lbl 016 `"16"', add
label define mw08a_pern_lbl 017 `"17"', add
label define mw08a_pern_lbl 018 `"18"', add
label define mw08a_pern_lbl 019 `"19"', add
label define mw08a_pern_lbl 020 `"20"', add
label define mw08a_pern_lbl 021 `"21"', add
label define mw08a_pern_lbl 022 `"22"', add
label define mw08a_pern_lbl 023 `"23"', add
label define mw08a_pern_lbl 024 `"24"', add
label define mw08a_pern_lbl 025 `"25"', add
label define mw08a_pern_lbl 026 `"26"', add
label define mw08a_pern_lbl 027 `"27"', add
label define mw08a_pern_lbl 028 `"28"', add
label define mw08a_pern_lbl 029 `"29"', add
label define mw08a_pern_lbl 030 `"30"', add
label define mw08a_pern_lbl 031 `"31"', add
label define mw08a_pern_lbl 032 `"32"', add
label define mw08a_pern_lbl 033 `"33"', add
label define mw08a_pern_lbl 034 `"34"', add
label define mw08a_pern_lbl 035 `"35"', add
label define mw08a_pern_lbl 036 `"36"', add
label define mw08a_pern_lbl 037 `"37"', add
label define mw08a_pern_lbl 038 `"38"', add
label define mw08a_pern_lbl 039 `"39"', add
label define mw08a_pern_lbl 040 `"40"', add
label define mw08a_pern_lbl 041 `"41"', add
label define mw08a_pern_lbl 042 `"42"', add
label define mw08a_pern_lbl 043 `"43"', add
label define mw08a_pern_lbl 044 `"44"', add
label define mw08a_pern_lbl 045 `"45"', add
label define mw08a_pern_lbl 047 `"47"', add
label define mw08a_pern_lbl 048 `"48"', add
label define mw08a_pern_lbl 051 `"51"', add
label define mw08a_pern_lbl 052 `"52"', add
label define mw08a_pern_lbl 053 `"53"', add
label define mw08a_pern_lbl 055 `"55"', add
label define mw08a_pern_lbl 056 `"56"', add
label define mw08a_pern_lbl 057 `"57"', add
label define mw08a_pern_lbl 059 `"59"', add
label define mw08a_pern_lbl 060 `"60"', add
label define mw08a_pern_lbl 061 `"61"', add
label define mw08a_pern_lbl 062 `"62"', add
label define mw08a_pern_lbl 063 `"63"', add
label define mw08a_pern_lbl 064 `"64"', add
label define mw08a_pern_lbl 066 `"66"', add
label define mw08a_pern_lbl 069 `"69"', add
label define mw08a_pern_lbl 070 `"70"', add
label define mw08a_pern_lbl 071 `"71"', add
label define mw08a_pern_lbl 072 `"72"', add
label define mw08a_pern_lbl 073 `"73"', add
label define mw08a_pern_lbl 074 `"74"', add
label define mw08a_pern_lbl 075 `"75"', add
label define mw08a_pern_lbl 077 `"77"', add
label define mw08a_pern_lbl 078 `"78"', add
label define mw08a_pern_lbl 082 `"82"', add
label define mw08a_pern_lbl 084 `"84"', add
label define mw08a_pern_lbl 085 `"85"', add
label define mw08a_pern_lbl 087 `"87"', add
label define mw08a_pern_lbl 088 `"88"', add
label define mw08a_pern_lbl 090 `"90"', add
label define mw08a_pern_lbl 091 `"91"', add
label define mw08a_pern_lbl 092 `"92"', add
label define mw08a_pern_lbl 095 `"95"', add
label define mw08a_pern_lbl 096 `"96"', add
label define mw08a_pern_lbl 097 `"97"', add
label define mw08a_pern_lbl 100 `"100"', add
label values mw08a_pern mw08a_pern_lbl

label define mw08a_fbig_lbl 0 `"No problem"'
label define mw08a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define mw08a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values mw08a_fbig mw08a_fbig_lbl

label define mw08a_region_lbl 1 `"Northern"'
label define mw08a_region_lbl 2 `"Central"', add
label define mw08a_region_lbl 3 `"Southern"', add
label values mw08a_region mw08a_region_lbl

label define mw08a_district_lbl 101 `"Chitipa"'
label define mw08a_district_lbl 102 `"Karonga"', add
label define mw08a_district_lbl 103 `"Nkhata Bay and Likoma"', add
label define mw08a_district_lbl 104 `"Rumphi"', add
label define mw08a_district_lbl 105 `"Mzimba"', add
label define mw08a_district_lbl 107 `"Mzuzu City"', add
label define mw08a_district_lbl 201 `"Kasungu"', add
label define mw08a_district_lbl 202 `"Nkhota Kota"', add
label define mw08a_district_lbl 203 `"Ntchisi"', add
label define mw08a_district_lbl 204 `"Dowa"', add
label define mw08a_district_lbl 205 `"Salima"', add
label define mw08a_district_lbl 206 `"Lilongwe"', add
label define mw08a_district_lbl 207 `"Mchinji"', add
label define mw08a_district_lbl 208 `"Dedza"', add
label define mw08a_district_lbl 209 `"Ntcheu"', add
label define mw08a_district_lbl 210 `"Lilongwe City"', add
label define mw08a_district_lbl 301 `"Mangochi"', add
label define mw08a_district_lbl 302 `"Machinga"', add
label define mw08a_district_lbl 303 `"Zomba"', add
label define mw08a_district_lbl 304 `"Chiradzulu"', add
label define mw08a_district_lbl 305 `"Blantyre"', add
label define mw08a_district_lbl 306 `"Mwanza"', add
label define mw08a_district_lbl 307 `"Thyolo"', add
label define mw08a_district_lbl 308 `"Mulanje"', add
label define mw08a_district_lbl 309 `"Phalombe"', add
label define mw08a_district_lbl 310 `"Chikwawa"', add
label define mw08a_district_lbl 311 `"Nsanje"', add
label define mw08a_district_lbl 312 `"Balaka"', add
label define mw08a_district_lbl 313 `"Neno"', add
label define mw08a_district_lbl 314 `"Zomba City"', add
label define mw08a_district_lbl 315 `"Blantyre City"', add
label values mw08a_district mw08a_district_lbl

label define mw08a_ta2_lbl 000 `"0"'
label define mw08a_ta2_lbl 001 `"1"', add
label define mw08a_ta2_lbl 002 `"2"', add
label define mw08a_ta2_lbl 003 `"3"', add
label define mw08a_ta2_lbl 004 `"4"', add
label define mw08a_ta2_lbl 005 `"5"', add
label define mw08a_ta2_lbl 006 `"6"', add
label define mw08a_ta2_lbl 007 `"7"', add
label define mw08a_ta2_lbl 008 `"8"', add
label define mw08a_ta2_lbl 009 `"9"', add
label define mw08a_ta2_lbl 010 `"10"', add
label define mw08a_ta2_lbl 011 `"11"', add
label define mw08a_ta2_lbl 012 `"12"', add
label define mw08a_ta2_lbl 013 `"13"', add
label define mw08a_ta2_lbl 014 `"14"', add
label define mw08a_ta2_lbl 015 `"15"', add
label define mw08a_ta2_lbl 016 `"16"', add
label define mw08a_ta2_lbl 017 `"17"', add
label define mw08a_ta2_lbl 018 `"18"', add
label define mw08a_ta2_lbl 019 `"19"', add
label define mw08a_ta2_lbl 020 `"20"', add
label define mw08a_ta2_lbl 021 `"21"', add
label define mw08a_ta2_lbl 022 `"22"', add
label define mw08a_ta2_lbl 023 `"23"', add
label define mw08a_ta2_lbl 024 `"24"', add
label define mw08a_ta2_lbl 025 `"25"', add
label define mw08a_ta2_lbl 026 `"26"', add
label define mw08a_ta2_lbl 027 `"27"', add
label define mw08a_ta2_lbl 028 `"28"', add
label define mw08a_ta2_lbl 029 `"29"', add
label define mw08a_ta2_lbl 030 `"30"', add
label define mw08a_ta2_lbl 031 `"31"', add
label define mw08a_ta2_lbl 032 `"32"', add
label define mw08a_ta2_lbl 033 `"33"', add
label define mw08a_ta2_lbl 034 `"34"', add
label define mw08a_ta2_lbl 035 `"35"', add
label define mw08a_ta2_lbl 036 `"36"', add
label define mw08a_ta2_lbl 037 `"37"', add
label define mw08a_ta2_lbl 038 `"38"', add
label define mw08a_ta2_lbl 039 `"39"', add
label define mw08a_ta2_lbl 040 `"40"', add
label define mw08a_ta2_lbl 041 `"41"', add
label define mw08a_ta2_lbl 042 `"42"', add
label define mw08a_ta2_lbl 043 `"43"', add
label define mw08a_ta2_lbl 044 `"44"', add
label define mw08a_ta2_lbl 045 `"45"', add
label define mw08a_ta2_lbl 046 `"46"', add
label define mw08a_ta2_lbl 047 `"47"', add
label define mw08a_ta2_lbl 048 `"48"', add
label define mw08a_ta2_lbl 049 `"49"', add
label define mw08a_ta2_lbl 050 `"50"', add
label define mw08a_ta2_lbl 051 `"51"', add
label define mw08a_ta2_lbl 052 `"52"', add
label define mw08a_ta2_lbl 053 `"53"', add
label define mw08a_ta2_lbl 054 `"54"', add
label define mw08a_ta2_lbl 055 `"55"', add
label define mw08a_ta2_lbl 056 `"56"', add
label define mw08a_ta2_lbl 057 `"57"', add
label define mw08a_ta2_lbl 058 `"58"', add
label define mw08a_ta2_lbl 059 `"59"', add
label define mw08a_ta2_lbl 060 `"60"', add
label define mw08a_ta2_lbl 061 `"61"', add
label define mw08a_ta2_lbl 062 `"62"', add
label define mw08a_ta2_lbl 063 `"63"', add
label define mw08a_ta2_lbl 064 `"64"', add
label define mw08a_ta2_lbl 065 `"65"', add
label define mw08a_ta2_lbl 066 `"66"', add
label define mw08a_ta2_lbl 067 `"67"', add
label define mw08a_ta2_lbl 068 `"68"', add
label define mw08a_ta2_lbl 069 `"69"', add
label define mw08a_ta2_lbl 070 `"70"', add
label define mw08a_ta2_lbl 071 `"71"', add
label define mw08a_ta2_lbl 072 `"72"', add
label define mw08a_ta2_lbl 073 `"73"', add
label define mw08a_ta2_lbl 074 `"74"', add
label define mw08a_ta2_lbl 075 `"75"', add
label define mw08a_ta2_lbl 076 `"76"', add
label define mw08a_ta2_lbl 077 `"77"', add
label define mw08a_ta2_lbl 078 `"78"', add
label define mw08a_ta2_lbl 079 `"79"', add
label define mw08a_ta2_lbl 080 `"80"', add
label define mw08a_ta2_lbl 081 `"81"', add
label define mw08a_ta2_lbl 082 `"82"', add
label define mw08a_ta2_lbl 083 `"83"', add
label define mw08a_ta2_lbl 084 `"84"', add
label define mw08a_ta2_lbl 085 `"85"', add
label define mw08a_ta2_lbl 086 `"86"', add
label define mw08a_ta2_lbl 087 `"87"', add
label define mw08a_ta2_lbl 088 `"88"', add
label define mw08a_ta2_lbl 089 `"89"', add
label define mw08a_ta2_lbl 090 `"90"', add
label define mw08a_ta2_lbl 091 `"91"', add
label define mw08a_ta2_lbl 092 `"92"', add
label define mw08a_ta2_lbl 093 `"93"', add
label define mw08a_ta2_lbl 094 `"94"', add
label define mw08a_ta2_lbl 095 `"95"', add
label define mw08a_ta2_lbl 096 `"96"', add
label define mw08a_ta2_lbl 097 `"97"', add
label define mw08a_ta2_lbl 098 `"98"', add
label define mw08a_ta2_lbl 099 `"99"', add
label define mw08a_ta2_lbl 100 `"100"', add
label define mw08a_ta2_lbl 101 `"101"', add
label define mw08a_ta2_lbl 102 `"102"', add
label define mw08a_ta2_lbl 103 `"103"', add
label define mw08a_ta2_lbl 104 `"104"', add
label define mw08a_ta2_lbl 105 `"105"', add
label define mw08a_ta2_lbl 106 `"106"', add
label define mw08a_ta2_lbl 107 `"107"', add
label define mw08a_ta2_lbl 108 `"108"', add
label define mw08a_ta2_lbl 109 `"109"', add
label define mw08a_ta2_lbl 110 `"110"', add
label define mw08a_ta2_lbl 111 `"111"', add
label define mw08a_ta2_lbl 112 `"112"', add
label define mw08a_ta2_lbl 113 `"113"', add
label define mw08a_ta2_lbl 114 `"114"', add
label define mw08a_ta2_lbl 115 `"115"', add
label define mw08a_ta2_lbl 116 `"116"', add
label define mw08a_ta2_lbl 117 `"117"', add
label define mw08a_ta2_lbl 118 `"118"', add
label define mw08a_ta2_lbl 119 `"119"', add
label define mw08a_ta2_lbl 120 `"120"', add
label define mw08a_ta2_lbl 121 `"121"', add
label define mw08a_ta2_lbl 122 `"122"', add
label define mw08a_ta2_lbl 123 `"123"', add
label define mw08a_ta2_lbl 124 `"124"', add
label define mw08a_ta2_lbl 125 `"125"', add
label define mw08a_ta2_lbl 126 `"126"', add
label define mw08a_ta2_lbl 127 `"127"', add
label define mw08a_ta2_lbl 128 `"128"', add
label define mw08a_ta2_lbl 129 `"129"', add
label define mw08a_ta2_lbl 130 `"130"', add
label define mw08a_ta2_lbl 131 `"131"', add
label define mw08a_ta2_lbl 132 `"132"', add
label define mw08a_ta2_lbl 133 `"133"', add
label define mw08a_ta2_lbl 134 `"134"', add
label define mw08a_ta2_lbl 135 `"135"', add
label define mw08a_ta2_lbl 136 `"136"', add
label define mw08a_ta2_lbl 137 `"137"', add
label define mw08a_ta2_lbl 138 `"138"', add
label define mw08a_ta2_lbl 139 `"139"', add
label define mw08a_ta2_lbl 140 `"140"', add
label define mw08a_ta2_lbl 141 `"141"', add
label define mw08a_ta2_lbl 142 `"142"', add
label define mw08a_ta2_lbl 143 `"143"', add
label define mw08a_ta2_lbl 144 `"144"', add
label define mw08a_ta2_lbl 145 `"145"', add
label define mw08a_ta2_lbl 146 `"146"', add
label define mw08a_ta2_lbl 147 `"147"', add
label define mw08a_ta2_lbl 148 `"148"', add
label define mw08a_ta2_lbl 149 `"149"', add
label define mw08a_ta2_lbl 150 `"150"', add
label define mw08a_ta2_lbl 151 `"151"', add
label define mw08a_ta2_lbl 152 `"152"', add
label define mw08a_ta2_lbl 153 `"153"', add
label define mw08a_ta2_lbl 154 `"154"', add
label define mw08a_ta2_lbl 155 `"155"', add
label define mw08a_ta2_lbl 156 `"156"', add
label define mw08a_ta2_lbl 157 `"157"', add
label define mw08a_ta2_lbl 158 `"158"', add
label define mw08a_ta2_lbl 159 `"159"', add
label define mw08a_ta2_lbl 160 `"160"', add
label define mw08a_ta2_lbl 161 `"161"', add
label define mw08a_ta2_lbl 162 `"162"', add
label define mw08a_ta2_lbl 163 `"163"', add
label define mw08a_ta2_lbl 164 `"164"', add
label define mw08a_ta2_lbl 165 `"165"', add
label define mw08a_ta2_lbl 166 `"166"', add
label define mw08a_ta2_lbl 167 `"167"', add
label define mw08a_ta2_lbl 168 `"168"', add
label define mw08a_ta2_lbl 169 `"169"', add
label define mw08a_ta2_lbl 170 `"170"', add
label define mw08a_ta2_lbl 171 `"171"', add
label define mw08a_ta2_lbl 172 `"172"', add
label define mw08a_ta2_lbl 173 `"173"', add
label define mw08a_ta2_lbl 174 `"174"', add
label define mw08a_ta2_lbl 175 `"175"', add
label define mw08a_ta2_lbl 176 `"176"', add
label define mw08a_ta2_lbl 177 `"177"', add
label define mw08a_ta2_lbl 178 `"178"', add
label define mw08a_ta2_lbl 179 `"179"', add
label define mw08a_ta2_lbl 180 `"180"', add
label define mw08a_ta2_lbl 181 `"181"', add
label define mw08a_ta2_lbl 182 `"182"', add
label define mw08a_ta2_lbl 183 `"183"', add
label define mw08a_ta2_lbl 184 `"184"', add
label define mw08a_ta2_lbl 185 `"185"', add
label define mw08a_ta2_lbl 186 `"186"', add
label define mw08a_ta2_lbl 187 `"187"', add
label define mw08a_ta2_lbl 188 `"188"', add
label define mw08a_ta2_lbl 189 `"189"', add
label define mw08a_ta2_lbl 190 `"190"', add
label define mw08a_ta2_lbl 191 `"191"', add
label define mw08a_ta2_lbl 192 `"192"', add
label define mw08a_ta2_lbl 193 `"193"', add
label define mw08a_ta2_lbl 194 `"194"', add
label define mw08a_ta2_lbl 195 `"195"', add
label define mw08a_ta2_lbl 196 `"196"', add
label define mw08a_ta2_lbl 197 `"197"', add
label define mw08a_ta2_lbl 198 `"198"', add
label define mw08a_ta2_lbl 199 `"199"', add
label define mw08a_ta2_lbl 200 `"200"', add
label define mw08a_ta2_lbl 201 `"201"', add
label define mw08a_ta2_lbl 202 `"202"', add
label define mw08a_ta2_lbl 203 `"203"', add
label define mw08a_ta2_lbl 204 `"204"', add
label define mw08a_ta2_lbl 205 `"205"', add
label define mw08a_ta2_lbl 206 `"206"', add
label define mw08a_ta2_lbl 207 `"207"', add
label define mw08a_ta2_lbl 208 `"208"', add
label define mw08a_ta2_lbl 209 `"209"', add
label define mw08a_ta2_lbl 210 `"210"', add
label define mw08a_ta2_lbl 211 `"211"', add
label define mw08a_ta2_lbl 212 `"212"', add
label define mw08a_ta2_lbl 213 `"213"', add
label define mw08a_ta2_lbl 214 `"214"', add
label define mw08a_ta2_lbl 215 `"215"', add
label define mw08a_ta2_lbl 216 `"216"', add
label define mw08a_ta2_lbl 217 `"217"', add
label define mw08a_ta2_lbl 218 `"218"', add
label define mw08a_ta2_lbl 219 `"219"', add
label define mw08a_ta2_lbl 220 `"220"', add
label define mw08a_ta2_lbl 221 `"221"', add
label define mw08a_ta2_lbl 222 `"222"', add
label define mw08a_ta2_lbl 223 `"223"', add
label define mw08a_ta2_lbl 224 `"224"', add
label values mw08a_ta2 mw08a_ta2_lbl

label define mw08a_hhtype_lbl 1 `"Regular"'
label define mw08a_hhtype_lbl 2 `"Hospital / hotel / lodge"', add
label define mw08a_hhtype_lbl 3 `"Other collective"', add
label define mw08a_hhtype_lbl 4 `"Homeless"', add
label values mw08a_hhtype mw08a_hhtype_lbl

label define mw08a_struct_lbl 1 `"Permanent"'
label define mw08a_struct_lbl 2 `"Semi-permanent"', add
label define mw08a_struct_lbl 3 `"Traditional"', add
label define mw08a_struct_lbl 9 `"NIU (not in universe)"', add
label values mw08a_struct mw08a_struct_lbl

label define mw08a_tenure_lbl 1 `"Owner/family occupied"'
label define mw08a_tenure_lbl 2 `"Rented"', add
label define mw08a_tenure_lbl 3 `"Other"', add
label define mw08a_tenure_lbl 9 `"NIU (not in universe)"', add
label values mw08a_tenure mw08a_tenure_lbl

label define mw08a_roof_lbl 1 `"Grass thatch"'
label define mw08a_roof_lbl 2 `"Iron sheets"', add
label define mw08a_roof_lbl 3 `"Iron/tiles"', add
label define mw08a_roof_lbl 4 `"Asbestos"', add
label define mw08a_roof_lbl 5 `"Cement"', add
label define mw08a_roof_lbl 6 `"Other"', add
label define mw08a_roof_lbl 9 `"NIU (not in universe)"', add
label values mw08a_roof mw08a_roof_lbl

label define mw08a_walls_lbl 1 `"Burnt bricks"'
label define mw08a_walls_lbl 2 `"Unburnt bricks"', add
label define mw08a_walls_lbl 3 `"Concrete"', add
label define mw08a_walls_lbl 4 `"Mud/wattle/dung"', add
label define mw08a_walls_lbl 5 `"Reeds/straw"', add
label define mw08a_walls_lbl 6 `"Wood/planks"', add
label define mw08a_walls_lbl 7 `"Other"', add
label define mw08a_walls_lbl 9 `"NIU (not in universe)"', add
label values mw08a_walls mw08a_walls_lbl

label define mw08a_floor_lbl 01 `"Earth/sand"'
label define mw08a_floor_lbl 02 `"Dung"', add
label define mw08a_floor_lbl 03 `"Wood planks"', add
label define mw08a_floor_lbl 04 `"Palm/bamboo"', add
label define mw08a_floor_lbl 05 `"Broken bricks"', add
label define mw08a_floor_lbl 06 `"Parquet or polished wood"', add
label define mw08a_floor_lbl 08 `"Ceramic tiles"', add
label define mw08a_floor_lbl 09 `"Cement"', add
label define mw08a_floor_lbl 10 `"Bricks"', add
label define mw08a_floor_lbl 11 `"Other"', add
label define mw08a_floor_lbl 99 `"NIU (not in universe)"', add
label values mw08a_floor mw08a_floor_lbl

label define mw08a_rooms_lbl 01 `"1"'
label define mw08a_rooms_lbl 02 `"2"', add
label define mw08a_rooms_lbl 03 `"3"', add
label define mw08a_rooms_lbl 04 `"4"', add
label define mw08a_rooms_lbl 05 `"5"', add
label define mw08a_rooms_lbl 06 `"6"', add
label define mw08a_rooms_lbl 07 `"7"', add
label define mw08a_rooms_lbl 08 `"8"', add
label define mw08a_rooms_lbl 09 `"9"', add
label define mw08a_rooms_lbl 10 `"10"', add
label define mw08a_rooms_lbl 11 `"11"', add
label define mw08a_rooms_lbl 12 `"12"', add
label define mw08a_rooms_lbl 13 `"13"', add
label define mw08a_rooms_lbl 14 `"14+"', add
label define mw08a_rooms_lbl 99 `"NIU (not in universe)"', add
label values mw08a_rooms mw08a_rooms_lbl

label define mw08a_bedrooms_lbl 00 `"0"'
label define mw08a_bedrooms_lbl 01 `"1"', add
label define mw08a_bedrooms_lbl 02 `"2"', add
label define mw08a_bedrooms_lbl 03 `"3"', add
label define mw08a_bedrooms_lbl 04 `"4"', add
label define mw08a_bedrooms_lbl 05 `"5"', add
label define mw08a_bedrooms_lbl 06 `"6"', add
label define mw08a_bedrooms_lbl 07 `"7"', add
label define mw08a_bedrooms_lbl 08 `"8"', add
label define mw08a_bedrooms_lbl 09 `"9"', add
label define mw08a_bedrooms_lbl 10 `"10+"', add
label define mw08a_bedrooms_lbl 99 `"NIU (not in universe)"', add
label values mw08a_bedrooms mw08a_bedrooms_lbl

label define mw08a_occupnts_lbl 00 `"0"'
label define mw08a_occupnts_lbl 01 `"1"', add
label define mw08a_occupnts_lbl 02 `"2"', add
label define mw08a_occupnts_lbl 03 `"3"', add
label define mw08a_occupnts_lbl 04 `"4"', add
label define mw08a_occupnts_lbl 05 `"5"', add
label define mw08a_occupnts_lbl 06 `"6"', add
label define mw08a_occupnts_lbl 07 `"7"', add
label define mw08a_occupnts_lbl 08 `"8"', add
label define mw08a_occupnts_lbl 09 `"9"', add
label define mw08a_occupnts_lbl 10 `"10"', add
label define mw08a_occupnts_lbl 11 `"11"', add
label define mw08a_occupnts_lbl 12 `"12"', add
label define mw08a_occupnts_lbl 13 `"13"', add
label define mw08a_occupnts_lbl 14 `"14"', add
label define mw08a_occupnts_lbl 15 `"15"', add
label define mw08a_occupnts_lbl 16 `"16"', add
label define mw08a_occupnts_lbl 17 `"17+"', add
label define mw08a_occupnts_lbl 32 `"""', add
label define mw08a_occupnts_lbl 37 `"""', add
label define mw08a_occupnts_lbl 40 `"""', add
label define mw08a_occupnts_lbl 41 `"""', add
label define mw08a_occupnts_lbl 44 `"""', add
label define mw08a_occupnts_lbl 45 `"""', add
label define mw08a_occupnts_lbl 56 `"""', add
label define mw08a_occupnts_lbl 70 `"""', add
label define mw08a_occupnts_lbl 71 `"""', add
label define mw08a_occupnts_lbl 82 `"""', add
label define mw08a_occupnts_lbl 98 `"Unknown"', add
label define mw08a_occupnts_lbl 99 `"NIU (not in universe)"', add
label values mw08a_occupnts mw08a_occupnts_lbl

label define mw08a_watrdry_lbl 01 `"Piped into dwelling"'
label define mw08a_watrdry_lbl 02 `"Piped into yard/plot"', add
label define mw08a_watrdry_lbl 03 `"Community stand pipe"', add
label define mw08a_watrdry_lbl 04 `"Unprotected well"', add
label define mw08a_watrdry_lbl 05 `"Protected well"', add
label define mw08a_watrdry_lbl 06 `"Borehole"', add
label define mw08a_watrdry_lbl 07 `"Spring"', add
label define mw08a_watrdry_lbl 08 `"River/stream"', add
label define mw08a_watrdry_lbl 09 `"Pond/lake"', add
label define mw08a_watrdry_lbl 10 `"Dam"', add
label define mw08a_watrdry_lbl 12 `"Tanker truck/bowser"', add
label define mw08a_watrdry_lbl 14 `"Other"', add
label define mw08a_watrdry_lbl 99 `"NIU (not in universe)"', add
label values mw08a_watrdry mw08a_watrdry_lbl

label define mw08a_watrwet_lbl 01 `"Piped into dwelling"'
label define mw08a_watrwet_lbl 02 `"Piped into yard/plot"', add
label define mw08a_watrwet_lbl 03 `"Community stand pipe"', add
label define mw08a_watrwet_lbl 04 `"Unprotected well"', add
label define mw08a_watrwet_lbl 05 `"Protected well"', add
label define mw08a_watrwet_lbl 06 `"Borehole"', add
label define mw08a_watrwet_lbl 07 `"Spring"', add
label define mw08a_watrwet_lbl 08 `"River/stream"', add
label define mw08a_watrwet_lbl 09 `"Pond/lake"', add
label define mw08a_watrwet_lbl 10 `"Dam"', add
label define mw08a_watrwet_lbl 11 `"Rain water"', add
label define mw08a_watrwet_lbl 12 `"Tanker truck/bowser"', add
label define mw08a_watrwet_lbl 14 `"Other"', add
label define mw08a_watrwet_lbl 99 `"NIU (not in universe)"', add
label values mw08a_watrwet mw08a_watrwet_lbl

label define mw08a_toilet_lbl 1 `"Flush toilet"'
label define mw08a_toilet_lbl 2 `"Traditional pit toilet"', add
label define mw08a_toilet_lbl 3 `"Ventilated improved pit (VIP) latrine"', add
label define mw08a_toilet_lbl 4 `"No facility"', add
label define mw08a_toilet_lbl 5 `"Other"', add
label define mw08a_toilet_lbl 9 `"NIU (not in universe)"', add
label values mw08a_toilet mw08a_toilet_lbl

label define mw08a_lighting_lbl 1 `"Electricity"'
label define mw08a_lighting_lbl 2 `"Paraffin"', add
label define mw08a_lighting_lbl 3 `"Candles"', add
label define mw08a_lighting_lbl 4 `"Firewood"', add
label define mw08a_lighting_lbl 5 `"Other"', add
label define mw08a_lighting_lbl 9 `"NIU (not in universe)"', add
label values mw08a_lighting mw08a_lighting_lbl

label define mw08a_fuelcook_lbl 1 `"Electricity"'
label define mw08a_fuelcook_lbl 2 `"Paraffin"', add
label define mw08a_fuelcook_lbl 3 `"Gas"', add
label define mw08a_fuelcook_lbl 4 `"Charcoal"', add
label define mw08a_fuelcook_lbl 5 `"Firewood"', add
label define mw08a_fuelcook_lbl 6 `"Straw"', add
label define mw08a_fuelcook_lbl 7 `"Other"', add
label define mw08a_fuelcook_lbl 9 `"NIU (not in universe)"', add
label values mw08a_fuelcook mw08a_fuelcook_lbl

label define mw08a_radio_lbl 1 `"Yes"'
label define mw08a_radio_lbl 2 `"No"', add
label define mw08a_radio_lbl 9 `"NIU (not in universe)"', add
label values mw08a_radio mw08a_radio_lbl

label define mw08a_tv_lbl 1 `"Yes"'
label define mw08a_tv_lbl 2 `"No"', add
label define mw08a_tv_lbl 9 `"NIU (not in universe)"', add
label values mw08a_tv mw08a_tv_lbl

label define mw08a_refridge_lbl 1 `"Yes"'
label define mw08a_refridge_lbl 2 `"No"', add
label define mw08a_refridge_lbl 9 `"NIU (not in universe)"', add
label values mw08a_refridge mw08a_refridge_lbl

label define mw08a_hotplate_lbl 1 `"Yes"'
label define mw08a_hotplate_lbl 2 `"No"', add
label define mw08a_hotplate_lbl 9 `"NIU (not in universe)"', add
label values mw08a_hotplate mw08a_hotplate_lbl

label define mw08a_bicycle_lbl 1 `"Yes"'
label define mw08a_bicycle_lbl 2 `"No"', add
label define mw08a_bicycle_lbl 9 `"NIU (not in universe)"', add
label values mw08a_bicycle mw08a_bicycle_lbl

label define mw08a_motocyc_lbl 1 `"Yes"'
label define mw08a_motocyc_lbl 2 `"No"', add
label define mw08a_motocyc_lbl 9 `"NIU (not in universe)"', add
label values mw08a_motocyc mw08a_motocyc_lbl

label define mw08a_car_lbl 1 `"Yes"'
label define mw08a_car_lbl 2 `"No"', add
label define mw08a_car_lbl 9 `"NIU (not in universe)"', add
label values mw08a_car mw08a_car_lbl

label define mw08a_phone_lbl 1 `"Yes"'
label define mw08a_phone_lbl 2 `"No"', add
label define mw08a_phone_lbl 9 `"NIU (not in universe)"', add
label values mw08a_phone mw08a_phone_lbl

label define mw08a_oxcart_lbl 1 `"Yes"'
label define mw08a_oxcart_lbl 2 `"No"', add
label define mw08a_oxcart_lbl 9 `"NIU (not in universe)"', add
label values mw08a_oxcart mw08a_oxcart_lbl

label define mw08a_mosqnet_lbl 1 `"Yes"'
label define mw08a_mosqnet_lbl 2 `"No"', add
label define mw08a_mosqnet_lbl 9 `"NIU (not in universe)"', add
label values mw08a_mosqnet mw08a_mosqnet_lbl

label define mw08a_emighh_lbl 1 `"Yes"'
label define mw08a_emighh_lbl 2 `"No"', add
label values mw08a_emighh mw08a_emighh_lbl

label define mw08a_remitt_lbl 0 `"No"'
label define mw08a_remitt_lbl 1 `"Yes, remittances - money"', add
label define mw08a_remitt_lbl 2 `"Yes, remittances - goods"', add
label define mw08a_remitt_lbl 8 `"Unknown"', add
label define mw08a_remitt_lbl 9 `"NIU (not in universe)"', add
label values mw08a_remitt mw08a_remitt_lbl

label define mw08a_regremit_lbl 1 `"Quite regular"'
label define mw08a_regremit_lbl 2 `"Somewhat regular"', add
label define mw08a_regremit_lbl 3 `"From time to time"', add
label define mw08a_regremit_lbl 4 `"Rarely"', add
label define mw08a_regremit_lbl 9 `"NIU (not in universe)"', add
label values mw08a_regremit mw08a_regremit_lbl

label define mw08a_deathhh_lbl 1 `"Yes"'
label define mw08a_deathhh_lbl 2 `"No"', add
label define mw08a_deathhh_lbl 8 `"Unknown"', add
label define mw08a_deathhh_lbl 9 `"NIU (not in universe)"', add
label values mw08a_deathhh mw08a_deathhh_lbl

label define mw08a_resmale_lbl 00 `"0"'
label define mw08a_resmale_lbl 01 `"1"', add
label define mw08a_resmale_lbl 02 `"2"', add
label define mw08a_resmale_lbl 03 `"3"', add
label define mw08a_resmale_lbl 04 `"4"', add
label define mw08a_resmale_lbl 05 `"5"', add
label define mw08a_resmale_lbl 06 `"6"', add
label define mw08a_resmale_lbl 07 `"7"', add
label define mw08a_resmale_lbl 08 `"8"', add
label define mw08a_resmale_lbl 09 `"9"', add
label define mw08a_resmale_lbl 10 `"10"', add
label define mw08a_resmale_lbl 11 `"11"', add
label define mw08a_resmale_lbl 12 `"12"', add
label define mw08a_resmale_lbl 13 `"13+"', add
label values mw08a_resmale mw08a_resmale_lbl

label define mw08a_resfem_lbl 00 `"0"'
label define mw08a_resfem_lbl 01 `"1"', add
label define mw08a_resfem_lbl 02 `"2"', add
label define mw08a_resfem_lbl 03 `"3"', add
label define mw08a_resfem_lbl 04 `"4"', add
label define mw08a_resfem_lbl 05 `"5"', add
label define mw08a_resfem_lbl 06 `"6"', add
label define mw08a_resfem_lbl 07 `"7"', add
label define mw08a_resfem_lbl 08 `"8"', add
label define mw08a_resfem_lbl 09 `"9"', add
label define mw08a_resfem_lbl 10 `"10"', add
label define mw08a_resfem_lbl 11 `"11"', add
label define mw08a_resfem_lbl 12 `"12"', add
label define mw08a_resfem_lbl 13 `"13+"', add
label values mw08a_resfem mw08a_resfem_lbl

label define mw08a_restotal_lbl 00 `"0"'
label define mw08a_restotal_lbl 01 `"1"', add
label define mw08a_restotal_lbl 02 `"2"', add
label define mw08a_restotal_lbl 03 `"3"', add
label define mw08a_restotal_lbl 04 `"4"', add
label define mw08a_restotal_lbl 05 `"5"', add
label define mw08a_restotal_lbl 06 `"6"', add
label define mw08a_restotal_lbl 07 `"7"', add
label define mw08a_restotal_lbl 08 `"8"', add
label define mw08a_restotal_lbl 09 `"9"', add
label define mw08a_restotal_lbl 10 `"10"', add
label define mw08a_restotal_lbl 11 `"11"', add
label define mw08a_restotal_lbl 12 `"12"', add
label define mw08a_restotal_lbl 13 `"13"', add
label define mw08a_restotal_lbl 14 `"14"', add
label define mw08a_restotal_lbl 15 `"15"', add
label define mw08a_restotal_lbl 16 `"16"', add
label define mw08a_restotal_lbl 17 `"17"', add
label define mw08a_restotal_lbl 18 `"18"', add
label define mw08a_restotal_lbl 19 `"19"', add
label define mw08a_restotal_lbl 20 `"20+"', add
label values mw08a_restotal mw08a_restotal_lbl

label define mw08a_vismale_lbl 0 `"0"'
label define mw08a_vismale_lbl 1 `"1"', add
label define mw08a_vismale_lbl 2 `"2"', add
label define mw08a_vismale_lbl 3 `"3"', add
label define mw08a_vismale_lbl 4 `"4"', add
label define mw08a_vismale_lbl 5 `"5"', add
label define mw08a_vismale_lbl 6 `"6"', add
label define mw08a_vismale_lbl 7 `"7"', add
label define mw08a_vismale_lbl 8 `"8"', add
label define mw08a_vismale_lbl 9 `"9+"', add
label values mw08a_vismale mw08a_vismale_lbl

label define mw08a_visfem_lbl 0 `"0"'
label define mw08a_visfem_lbl 1 `"1"', add
label define mw08a_visfem_lbl 2 `"2"', add
label define mw08a_visfem_lbl 3 `"3"', add
label define mw08a_visfem_lbl 4 `"4"', add
label define mw08a_visfem_lbl 5 `"5"', add
label define mw08a_visfem_lbl 6 `"6"', add
label define mw08a_visfem_lbl 7 `"7"', add
label define mw08a_visfem_lbl 8 `"8"', add
label define mw08a_visfem_lbl 9 `"9+"', add
label values mw08a_visfem mw08a_visfem_lbl

label define mw08a_vistot_lbl 0 `"0"'
label define mw08a_vistot_lbl 1 `"1"', add
label define mw08a_vistot_lbl 2 `"2"', add
label define mw08a_vistot_lbl 3 `"3"', add
label define mw08a_vistot_lbl 4 `"4"', add
label define mw08a_vistot_lbl 5 `"5"', add
label define mw08a_vistot_lbl 6 `"6"', add
label define mw08a_vistot_lbl 7 `"7"', add
label define mw08a_vistot_lbl 8 `"8"', add
label define mw08a_vistot_lbl 9 `"9+"', add
label values mw08a_vistot mw08a_vistot_lbl

label define mw08a_enummale_lbl 00 `"0"'
label define mw08a_enummale_lbl 01 `"1"', add
label define mw08a_enummale_lbl 02 `"2"', add
label define mw08a_enummale_lbl 03 `"3"', add
label define mw08a_enummale_lbl 04 `"4"', add
label define mw08a_enummale_lbl 05 `"5"', add
label define mw08a_enummale_lbl 06 `"6"', add
label define mw08a_enummale_lbl 07 `"7"', add
label define mw08a_enummale_lbl 08 `"8"', add
label define mw08a_enummale_lbl 09 `"9"', add
label define mw08a_enummale_lbl 10 `"10"', add
label define mw08a_enummale_lbl 11 `"11"', add
label define mw08a_enummale_lbl 12 `"12+"', add
label values mw08a_enummale mw08a_enummale_lbl

label define mw08a_enumfem_lbl 00 `"0"'
label define mw08a_enumfem_lbl 01 `"1"', add
label define mw08a_enumfem_lbl 02 `"2"', add
label define mw08a_enumfem_lbl 03 `"3"', add
label define mw08a_enumfem_lbl 04 `"4"', add
label define mw08a_enumfem_lbl 05 `"5"', add
label define mw08a_enumfem_lbl 06 `"6"', add
label define mw08a_enumfem_lbl 07 `"7"', add
label define mw08a_enumfem_lbl 08 `"8"', add
label define mw08a_enumfem_lbl 09 `"9"', add
label define mw08a_enumfem_lbl 10 `"10"', add
label define mw08a_enumfem_lbl 11 `"11"', add
label define mw08a_enumfem_lbl 12 `"12+"', add
label values mw08a_enumfem mw08a_enumfem_lbl

label define mw08a_enumtot_lbl 00 `"0"'
label define mw08a_enumtot_lbl 01 `"1"', add
label define mw08a_enumtot_lbl 02 `"2"', add
label define mw08a_enumtot_lbl 03 `"3"', add
label define mw08a_enumtot_lbl 04 `"4"', add
label define mw08a_enumtot_lbl 05 `"5"', add
label define mw08a_enumtot_lbl 06 `"6"', add
label define mw08a_enumtot_lbl 07 `"7"', add
label define mw08a_enumtot_lbl 08 `"8"', add
label define mw08a_enumtot_lbl 09 `"9"', add
label define mw08a_enumtot_lbl 10 `"10"', add
label define mw08a_enumtot_lbl 11 `"11"', add
label define mw08a_enumtot_lbl 12 `"12"', add
label define mw08a_enumtot_lbl 13 `"13"', add
label define mw08a_enumtot_lbl 14 `"14"', add
label define mw08a_enumtot_lbl 15 `"15"', add
label define mw08a_enumtot_lbl 16 `"16"', add
label define mw08a_enumtot_lbl 17 `"17"', add
label define mw08a_enumtot_lbl 18 `"18"', add
label define mw08a_enumtot_lbl 19 `"19"', add
label define mw08a_enumtot_lbl 20 `"20+"', add
label values mw08a_enumtot mw08a_enumtot_lbl

label define mw08a_urban_lbl 1 `"Urban"'
label define mw08a_urban_lbl 2 `"Rural"', add
label define mw08a_urban_lbl 9 `"Unknown"', add
label values mw08a_urban mw08a_urban_lbl

label define mw08a_nmort_lbl 0 `"0"'
label define mw08a_nmort_lbl 1 `"1"', add
label define mw08a_nmort_lbl 2 `"2"', add
label define mw08a_nmort_lbl 3 `"3"', add
label define mw08a_nmort_lbl 4 `"4"', add
label define mw08a_nmort_lbl 5 `"5"', add
label define mw08a_nmort_lbl 6 `"6+"', add
label values mw08a_nmort mw08a_nmort_lbl

label define mw08a_nmig_lbl 0 `"0"'
label define mw08a_nmig_lbl 1 `"1"', add
label define mw08a_nmig_lbl 2 `"2"', add
label define mw08a_nmig_lbl 3 `"3"', add
label define mw08a_nmig_lbl 4 `"4"', add
label define mw08a_nmig_lbl 5 `"5+"', add
label values mw08a_nmig mw08a_nmig_lbl

label define resident_lbl 1 `"Present resident"'
label define resident_lbl 2 `"Absent resident"', add
label define resident_lbl 3 `"Visitor/non-resident"', add
label define resident_lbl 4 `"De facto population (present persons)"', add
label define resident_lbl 9 `"Unknown/missing"', add
label values resident resident_lbl

label define mw08a_pernum_lbl 000 `"Household record"'
label define mw08a_pernum_lbl 001 `"1"', add
label define mw08a_pernum_lbl 002 `"2"', add
label define mw08a_pernum_lbl 003 `"3"', add
label define mw08a_pernum_lbl 004 `"4"', add
label define mw08a_pernum_lbl 005 `"5"', add
label define mw08a_pernum_lbl 006 `"6"', add
label define mw08a_pernum_lbl 007 `"7"', add
label define mw08a_pernum_lbl 008 `"8"', add
label define mw08a_pernum_lbl 009 `"9"', add
label define mw08a_pernum_lbl 010 `"10"', add
label define mw08a_pernum_lbl 011 `"11"', add
label define mw08a_pernum_lbl 012 `"12"', add
label define mw08a_pernum_lbl 013 `"13"', add
label define mw08a_pernum_lbl 014 `"14"', add
label define mw08a_pernum_lbl 015 `"15"', add
label define mw08a_pernum_lbl 016 `"16"', add
label define mw08a_pernum_lbl 017 `"17"', add
label define mw08a_pernum_lbl 018 `"18"', add
label define mw08a_pernum_lbl 019 `"19"', add
label define mw08a_pernum_lbl 020 `"20"', add
label define mw08a_pernum_lbl 021 `"21"', add
label define mw08a_pernum_lbl 022 `"22"', add
label define mw08a_pernum_lbl 023 `"23"', add
label define mw08a_pernum_lbl 024 `"24"', add
label define mw08a_pernum_lbl 025 `"25"', add
label define mw08a_pernum_lbl 026 `"26"', add
label define mw08a_pernum_lbl 027 `"27"', add
label define mw08a_pernum_lbl 028 `"28"', add
label define mw08a_pernum_lbl 029 `"29"', add
label define mw08a_pernum_lbl 030 `"30"', add
label define mw08a_pernum_lbl 031 `"31"', add
label define mw08a_pernum_lbl 032 `"32"', add
label define mw08a_pernum_lbl 033 `"33"', add
label define mw08a_pernum_lbl 034 `"34"', add
label define mw08a_pernum_lbl 035 `"35"', add
label define mw08a_pernum_lbl 036 `"36"', add
label define mw08a_pernum_lbl 037 `"37"', add
label define mw08a_pernum_lbl 038 `"38"', add
label define mw08a_pernum_lbl 039 `"39"', add
label define mw08a_pernum_lbl 040 `"40"', add
label define mw08a_pernum_lbl 041 `"41"', add
label define mw08a_pernum_lbl 042 `"42"', add
label define mw08a_pernum_lbl 043 `"43"', add
label define mw08a_pernum_lbl 044 `"44"', add
label define mw08a_pernum_lbl 045 `"45"', add
label define mw08a_pernum_lbl 046 `"46"', add
label define mw08a_pernum_lbl 047 `"47"', add
label define mw08a_pernum_lbl 048 `"48"', add
label define mw08a_pernum_lbl 049 `"49"', add
label define mw08a_pernum_lbl 050 `"50"', add
label define mw08a_pernum_lbl 051 `"51"', add
label define mw08a_pernum_lbl 052 `"52"', add
label define mw08a_pernum_lbl 053 `"53"', add
label define mw08a_pernum_lbl 054 `"54"', add
label define mw08a_pernum_lbl 055 `"55"', add
label define mw08a_pernum_lbl 056 `"56"', add
label define mw08a_pernum_lbl 057 `"57"', add
label define mw08a_pernum_lbl 058 `"58"', add
label define mw08a_pernum_lbl 059 `"59"', add
label define mw08a_pernum_lbl 060 `"60"', add
label define mw08a_pernum_lbl 061 `"61"', add
label define mw08a_pernum_lbl 062 `"62"', add
label define mw08a_pernum_lbl 063 `"63"', add
label define mw08a_pernum_lbl 064 `"64"', add
label define mw08a_pernum_lbl 065 `"65"', add
label define mw08a_pernum_lbl 066 `"66"', add
label define mw08a_pernum_lbl 067 `"67"', add
label define mw08a_pernum_lbl 068 `"68"', add
label define mw08a_pernum_lbl 069 `"69"', add
label define mw08a_pernum_lbl 070 `"70"', add
label define mw08a_pernum_lbl 071 `"71"', add
label define mw08a_pernum_lbl 072 `"72"', add
label define mw08a_pernum_lbl 073 `"73"', add
label define mw08a_pernum_lbl 074 `"74"', add
label define mw08a_pernum_lbl 075 `"75"', add
label define mw08a_pernum_lbl 076 `"76"', add
label define mw08a_pernum_lbl 077 `"77"', add
label define mw08a_pernum_lbl 078 `"78"', add
label define mw08a_pernum_lbl 079 `"79"', add
label define mw08a_pernum_lbl 080 `"80"', add
label define mw08a_pernum_lbl 081 `"81"', add
label define mw08a_pernum_lbl 082 `"82"', add
label define mw08a_pernum_lbl 083 `"83"', add
label define mw08a_pernum_lbl 084 `"84"', add
label define mw08a_pernum_lbl 085 `"85"', add
label define mw08a_pernum_lbl 086 `"86"', add
label define mw08a_pernum_lbl 087 `"87"', add
label define mw08a_pernum_lbl 088 `"88"', add
label define mw08a_pernum_lbl 089 `"89"', add
label define mw08a_pernum_lbl 090 `"90"', add
label define mw08a_pernum_lbl 091 `"91"', add
label define mw08a_pernum_lbl 092 `"92"', add
label define mw08a_pernum_lbl 093 `"93"', add
label define mw08a_pernum_lbl 094 `"94"', add
label define mw08a_pernum_lbl 095 `"95"', add
label define mw08a_pernum_lbl 096 `"96"', add
label define mw08a_pernum_lbl 097 `"97"', add
label define mw08a_pernum_lbl 098 `"98"', add
label define mw08a_pernum_lbl 099 `"99"', add
label define mw08a_pernum_lbl 100 `"100"', add
label values mw08a_pernum mw08a_pernum_lbl

label define mw08a_relate_lbl 1 `"Head of household"'
label define mw08a_relate_lbl 2 `"Wife/husband"', add
label define mw08a_relate_lbl 3 `"Biological son/daughter"', add
label define mw08a_relate_lbl 4 `"Other relative"', add
label define mw08a_relate_lbl 5 `"Non-relative"', add
label values mw08a_relate mw08a_relate_lbl

label define mw08a_sex_lbl 1 `"Male"'
label define mw08a_sex_lbl 2 `"Female"', add
label values mw08a_sex mw08a_sex_lbl

label define mw08a_birthmo_lbl 01 `"January"'
label define mw08a_birthmo_lbl 02 `"February"', add
label define mw08a_birthmo_lbl 03 `"March"', add
label define mw08a_birthmo_lbl 04 `"April"', add
label define mw08a_birthmo_lbl 05 `"May"', add
label define mw08a_birthmo_lbl 06 `"June"', add
label define mw08a_birthmo_lbl 07 `"July"', add
label define mw08a_birthmo_lbl 08 `"August"', add
label define mw08a_birthmo_lbl 09 `"September"', add
label define mw08a_birthmo_lbl 10 `"October"', add
label define mw08a_birthmo_lbl 11 `"November"', add
label define mw08a_birthmo_lbl 12 `"December"', add
label values mw08a_birthmo mw08a_birthmo_lbl

label define mw08a_birthyr_lbl 1909 `"1909"'
label define mw08a_birthyr_lbl 1910 `"1910"', add
label define mw08a_birthyr_lbl 1911 `"1911"', add
label define mw08a_birthyr_lbl 1912 `"1912"', add
label define mw08a_birthyr_lbl 1913 `"1913"', add
label define mw08a_birthyr_lbl 1914 `"1914"', add
label define mw08a_birthyr_lbl 1915 `"1915"', add
label define mw08a_birthyr_lbl 1916 `"1916"', add
label define mw08a_birthyr_lbl 1917 `"1917"', add
label define mw08a_birthyr_lbl 1918 `"1918"', add
label define mw08a_birthyr_lbl 1919 `"1919"', add
label define mw08a_birthyr_lbl 1920 `"1920"', add
label define mw08a_birthyr_lbl 1921 `"1921"', add
label define mw08a_birthyr_lbl 1922 `"1922"', add
label define mw08a_birthyr_lbl 1923 `"1923"', add
label define mw08a_birthyr_lbl 1924 `"1924"', add
label define mw08a_birthyr_lbl 1925 `"1925"', add
label define mw08a_birthyr_lbl 1926 `"1926"', add
label define mw08a_birthyr_lbl 1927 `"1927"', add
label define mw08a_birthyr_lbl 1928 `"1928"', add
label define mw08a_birthyr_lbl 1929 `"1929"', add
label define mw08a_birthyr_lbl 1930 `"1930"', add
label define mw08a_birthyr_lbl 1931 `"1931"', add
label define mw08a_birthyr_lbl 1932 `"1932"', add
label define mw08a_birthyr_lbl 1933 `"1933"', add
label define mw08a_birthyr_lbl 1934 `"1934"', add
label define mw08a_birthyr_lbl 1935 `"1935"', add
label define mw08a_birthyr_lbl 1936 `"1936"', add
label define mw08a_birthyr_lbl 1937 `"1937"', add
label define mw08a_birthyr_lbl 1938 `"1938"', add
label define mw08a_birthyr_lbl 1939 `"1939"', add
label define mw08a_birthyr_lbl 1940 `"1940"', add
label define mw08a_birthyr_lbl 1941 `"1941"', add
label define mw08a_birthyr_lbl 1942 `"1942"', add
label define mw08a_birthyr_lbl 1943 `"1943"', add
label define mw08a_birthyr_lbl 1944 `"1944"', add
label define mw08a_birthyr_lbl 1945 `"1945"', add
label define mw08a_birthyr_lbl 1946 `"1946"', add
label define mw08a_birthyr_lbl 1947 `"1947"', add
label define mw08a_birthyr_lbl 1948 `"1948"', add
label define mw08a_birthyr_lbl 1949 `"1949"', add
label define mw08a_birthyr_lbl 1950 `"1950"', add
label define mw08a_birthyr_lbl 1951 `"1951"', add
label define mw08a_birthyr_lbl 1952 `"1952"', add
label define mw08a_birthyr_lbl 1953 `"1953"', add
label define mw08a_birthyr_lbl 1954 `"1954"', add
label define mw08a_birthyr_lbl 1955 `"1955"', add
label define mw08a_birthyr_lbl 1956 `"1956"', add
label define mw08a_birthyr_lbl 1957 `"1957"', add
label define mw08a_birthyr_lbl 1958 `"1958"', add
label define mw08a_birthyr_lbl 1959 `"1959"', add
label define mw08a_birthyr_lbl 1960 `"1960"', add
label define mw08a_birthyr_lbl 1961 `"1961"', add
label define mw08a_birthyr_lbl 1962 `"1962"', add
label define mw08a_birthyr_lbl 1963 `"1963"', add
label define mw08a_birthyr_lbl 1964 `"1964"', add
label define mw08a_birthyr_lbl 1965 `"1965"', add
label define mw08a_birthyr_lbl 1966 `"1966"', add
label define mw08a_birthyr_lbl 1967 `"1967"', add
label define mw08a_birthyr_lbl 1968 `"1968"', add
label define mw08a_birthyr_lbl 1969 `"1969"', add
label define mw08a_birthyr_lbl 1970 `"1970"', add
label define mw08a_birthyr_lbl 1971 `"1971"', add
label define mw08a_birthyr_lbl 1972 `"1972"', add
label define mw08a_birthyr_lbl 1973 `"1973"', add
label define mw08a_birthyr_lbl 1974 `"1974"', add
label define mw08a_birthyr_lbl 1975 `"1975"', add
label define mw08a_birthyr_lbl 1976 `"1976"', add
label define mw08a_birthyr_lbl 1977 `"1977"', add
label define mw08a_birthyr_lbl 1978 `"1978"', add
label define mw08a_birthyr_lbl 1979 `"1979"', add
label define mw08a_birthyr_lbl 1980 `"1980"', add
label define mw08a_birthyr_lbl 1981 `"1981"', add
label define mw08a_birthyr_lbl 1982 `"1982"', add
label define mw08a_birthyr_lbl 1983 `"1983"', add
label define mw08a_birthyr_lbl 1984 `"1984"', add
label define mw08a_birthyr_lbl 1985 `"1985"', add
label define mw08a_birthyr_lbl 1986 `"1986"', add
label define mw08a_birthyr_lbl 1987 `"1987"', add
label define mw08a_birthyr_lbl 1988 `"1988"', add
label define mw08a_birthyr_lbl 1989 `"1989"', add
label define mw08a_birthyr_lbl 1990 `"1990"', add
label define mw08a_birthyr_lbl 1991 `"1991"', add
label define mw08a_birthyr_lbl 1992 `"1992"', add
label define mw08a_birthyr_lbl 1993 `"1993"', add
label define mw08a_birthyr_lbl 1994 `"1994"', add
label define mw08a_birthyr_lbl 1995 `"1995"', add
label define mw08a_birthyr_lbl 1996 `"1996"', add
label define mw08a_birthyr_lbl 1997 `"1997"', add
label define mw08a_birthyr_lbl 1998 `"1998"', add
label define mw08a_birthyr_lbl 1999 `"1999"', add
label define mw08a_birthyr_lbl 2000 `"2000"', add
label define mw08a_birthyr_lbl 2001 `"2001"', add
label define mw08a_birthyr_lbl 2002 `"2002"', add
label define mw08a_birthyr_lbl 2003 `"2003"', add
label define mw08a_birthyr_lbl 2004 `"2004"', add
label define mw08a_birthyr_lbl 2005 `"2005"', add
label define mw08a_birthyr_lbl 2006 `"2006"', add
label define mw08a_birthyr_lbl 2007 `"2007"', add
label define mw08a_birthyr_lbl 2008 `"2008"', add
label values mw08a_birthyr mw08a_birthyr_lbl

label define mw08a_malawi_lbl 1 `"Malawian"'
label define mw08a_malawi_lbl 2 `"Foreigner"', add
label values mw08a_malawi mw08a_malawi_lbl

label define mw08a_nation_lbl 429 `"Burundi"'
label define mw08a_nation_lbl 444 `"Congo/Brazzaville"', add
label define mw08a_nation_lbl 445 `"Zaire/Congo"', add
label define mw08a_nation_lbl 456 `"Ethiopia"', add
label define mw08a_nation_lbl 472 `"Germany"', add
label define mw08a_nation_lbl 486 `"India"', add
label define mw08a_nation_lbl 498 `"Kenya"', add
label define mw08a_nation_lbl 526 `"Mozambique"', add
label define mw08a_nation_lbl 539 `"Nigeria"', add
label define mw08a_nation_lbl 547 `"Pakistan"', add
label define mw08a_nation_lbl 563 `"Rwanda"', add
label define mw08a_nation_lbl 581 `"South Africa"', add
label define mw08a_nation_lbl 582 `"Zimbabwe"', add
label define mw08a_nation_lbl 608 `"United Kingdom"', add
label define mw08a_nation_lbl 611 `"Tanzania"', add
label define mw08a_nation_lbl 612 `"United States"', add
label define mw08a_nation_lbl 622 `"Zambia"', add
label define mw08a_nation_lbl 990 `"Other country (response suppressed)"', add
label define mw08a_nation_lbl 999 `"NIU (not in universe)"', add
label values mw08a_nation mw08a_nation_lbl

label define mw08a_resstat_lbl 1 `"Present resident"'
label define mw08a_resstat_lbl 2 `"Absent resident"', add
label define mw08a_resstat_lbl 3 `"Visitor"', add
label values mw08a_resstat mw08a_resstat_lbl

label define mw08a_tribe_lbl 01 `"Chewa"'
label define mw08a_tribe_lbl 02 `"Nyanja"', add
label define mw08a_tribe_lbl 03 `"Yao"', add
label define mw08a_tribe_lbl 04 `"Tumbuka"', add
label define mw08a_tribe_lbl 05 `"Lomwe"', add
label define mw08a_tribe_lbl 06 `"Ngonde"', add
label define mw08a_tribe_lbl 07 `"Ngoni"', add
label define mw08a_tribe_lbl 08 `"Sena"', add
label define mw08a_tribe_lbl 09 `"Tonga"', add
label define mw08a_tribe_lbl 10 `"Nyakyusa"', add
label define mw08a_tribe_lbl 11 `"Lambya"', add
label define mw08a_tribe_lbl 12 `"Senga"', add
label define mw08a_tribe_lbl 13 `"Other"', add
label define mw08a_tribe_lbl 99 `"NIU (not in universe)"', add
label values mw08a_tribe mw08a_tribe_lbl

label define mw08a_prevres_lbl 101 `"Chitipa"'
label define mw08a_prevres_lbl 102 `"Karonga"', add
label define mw08a_prevres_lbl 103 `"Nkhata Bay"', add
label define mw08a_prevres_lbl 104 `"Rumphi"', add
label define mw08a_prevres_lbl 105 `"Mzimba"', add
label define mw08a_prevres_lbl 106 `"Likoma"', add
label define mw08a_prevres_lbl 107 `"Mzuzu City"', add
label define mw08a_prevres_lbl 201 `"Kasunga"', add
label define mw08a_prevres_lbl 202 `"Nkhota Kota"', add
label define mw08a_prevres_lbl 203 `"Nthisi"', add
label define mw08a_prevres_lbl 204 `"Dowa"', add
label define mw08a_prevres_lbl 205 `"Salima"', add
label define mw08a_prevres_lbl 206 `"Lilongwe"', add
label define mw08a_prevres_lbl 207 `"Mchinji"', add
label define mw08a_prevres_lbl 208 `"Dedza"', add
label define mw08a_prevres_lbl 209 `"Ntcheu"', add
label define mw08a_prevres_lbl 210 `"Lilongwe city"', add
label define mw08a_prevres_lbl 301 `"Mangochi"', add
label define mw08a_prevres_lbl 302 `"Machinga"', add
label define mw08a_prevres_lbl 303 `"Zomba"', add
label define mw08a_prevres_lbl 304 `"Chiradzulu"', add
label define mw08a_prevres_lbl 305 `"Blantyre"', add
label define mw08a_prevres_lbl 306 `"Mwanza"', add
label define mw08a_prevres_lbl 307 `"Thyolo"', add
label define mw08a_prevres_lbl 308 `"Mulanje"', add
label define mw08a_prevres_lbl 309 `"Phalombe"', add
label define mw08a_prevres_lbl 310 `"Chikwawa"', add
label define mw08a_prevres_lbl 311 `"Nsanje"', add
label define mw08a_prevres_lbl 312 `"Balaka"', add
label define mw08a_prevres_lbl 313 `"Neno"', add
label define mw08a_prevres_lbl 314 `"Zomba City"', add
label define mw08a_prevres_lbl 315 `"Blantyre City"', add
label define mw08a_prevres_lbl 401 `"Afghanistan"', add
label define mw08a_prevres_lbl 402 `"Albania"', add
label define mw08a_prevres_lbl 403 `"Algeria"', add
label define mw08a_prevres_lbl 404 `"American Samoa"', add
label define mw08a_prevres_lbl 405 `"Andorra"', add
label define mw08a_prevres_lbl 406 `"Angola"', add
label define mw08a_prevres_lbl 407 `"Antigua/Barbuda"', add
label define mw08a_prevres_lbl 408 `"Azerbaijan"', add
label define mw08a_prevres_lbl 409 `"Argentina"', add
label define mw08a_prevres_lbl 410 `"Australia"', add
label define mw08a_prevres_lbl 411 `"Austria"', add
label define mw08a_prevres_lbl 412 `"Bahamas"', add
label define mw08a_prevres_lbl 413 `"Bahrain"', add
label define mw08a_prevres_lbl 414 `"Bangladesh"', add
label define mw08a_prevres_lbl 415 `"Armenia"', add
label define mw08a_prevres_lbl 416 `"Barbados"', add
label define mw08a_prevres_lbl 418 `"Bermuda"', add
label define mw08a_prevres_lbl 422 `"Botswana"', add
label define mw08a_prevres_lbl 428 `"Bulgaria"', add
label define mw08a_prevres_lbl 429 `"Burundi"', add
label define mw08a_prevres_lbl 432 `"Cameroun"', add
label define mw08a_prevres_lbl 444 `"Congo/Brazzaville"', add
label define mw08a_prevres_lbl 445 `"Zaire/Congo"', add
label define mw08a_prevres_lbl 451 `"Dominica"', add
label define mw08a_prevres_lbl 452 `"Dominican Republic"', add
label define mw08a_prevres_lbl 453 `"Ecuador"', add
label define mw08a_prevres_lbl 456 `"Ethiopia"', add
label define mw08a_prevres_lbl 460 `"Falkland Islands"', add
label define mw08a_prevres_lbl 464 `"French Guiana"', add
label define mw08a_prevres_lbl 467 `"Gabon"', add
label define mw08a_prevres_lbl 470 `"Gaza Strip"', add
label define mw08a_prevres_lbl 472 `"Germany"', add
label define mw08a_prevres_lbl 475 `"Greece"', add
label define mw08a_prevres_lbl 476 `"Guam"', add
label define mw08a_prevres_lbl 477 `"Guatemala"', add
label define mw08a_prevres_lbl 480 `"Haiti"', add
label define mw08a_prevres_lbl 481 `"Holy See"', add
label define mw08a_prevres_lbl 482 `"Honduras"', add
label define mw08a_prevres_lbl 483 `"Hong Kong"', add
label define mw08a_prevres_lbl 486 `"India"', add
label define mw08a_prevres_lbl 498 `"Kenya"', add
label define mw08a_prevres_lbl 526 `"Mozambique"', add
label define mw08a_prevres_lbl 539 `"Nigeria"', add
label define mw08a_prevres_lbl 563 `"Rwanda"', add
label define mw08a_prevres_lbl 581 `"South Africa"', add
label define mw08a_prevres_lbl 582 `"Zimbabwe"', add
label define mw08a_prevres_lbl 608 `"United Kingdom"', add
label define mw08a_prevres_lbl 611 `"Tanzania"', add
label define mw08a_prevres_lbl 612 `"United States"', add
label define mw08a_prevres_lbl 622 `"Zambia"', add
label define mw08a_prevres_lbl 990 `"Other country (response suppressed)"', add
label define mw08a_prevres_lbl 999 `"NIU (not in universe)"', add
label values mw08a_prevres mw08a_prevres_lbl

label define mw08a_resdur_lbl 000 `"0"'
label define mw08a_resdur_lbl 001 `"1"', add
label define mw08a_resdur_lbl 002 `"2"', add
label define mw08a_resdur_lbl 003 `"3"', add
label define mw08a_resdur_lbl 004 `"4"', add
label define mw08a_resdur_lbl 005 `"5"', add
label define mw08a_resdur_lbl 006 `"6"', add
label define mw08a_resdur_lbl 007 `"7"', add
label define mw08a_resdur_lbl 008 `"8"', add
label define mw08a_resdur_lbl 009 `"9"', add
label define mw08a_resdur_lbl 010 `"10"', add
label define mw08a_resdur_lbl 011 `"11"', add
label define mw08a_resdur_lbl 012 `"12"', add
label define mw08a_resdur_lbl 013 `"13"', add
label define mw08a_resdur_lbl 014 `"14"', add
label define mw08a_resdur_lbl 015 `"15"', add
label define mw08a_resdur_lbl 016 `"16"', add
label define mw08a_resdur_lbl 017 `"17"', add
label define mw08a_resdur_lbl 018 `"18"', add
label define mw08a_resdur_lbl 019 `"19"', add
label define mw08a_resdur_lbl 020 `"20"', add
label define mw08a_resdur_lbl 021 `"21"', add
label define mw08a_resdur_lbl 022 `"22"', add
label define mw08a_resdur_lbl 023 `"23"', add
label define mw08a_resdur_lbl 024 `"24"', add
label define mw08a_resdur_lbl 025 `"25"', add
label define mw08a_resdur_lbl 026 `"26"', add
label define mw08a_resdur_lbl 027 `"27"', add
label define mw08a_resdur_lbl 028 `"28"', add
label define mw08a_resdur_lbl 029 `"29"', add
label define mw08a_resdur_lbl 030 `"30"', add
label define mw08a_resdur_lbl 031 `"31"', add
label define mw08a_resdur_lbl 032 `"32"', add
label define mw08a_resdur_lbl 033 `"33"', add
label define mw08a_resdur_lbl 034 `"34"', add
label define mw08a_resdur_lbl 035 `"35"', add
label define mw08a_resdur_lbl 036 `"36"', add
label define mw08a_resdur_lbl 037 `"37"', add
label define mw08a_resdur_lbl 038 `"38"', add
label define mw08a_resdur_lbl 039 `"39"', add
label define mw08a_resdur_lbl 040 `"40"', add
label define mw08a_resdur_lbl 041 `"41"', add
label define mw08a_resdur_lbl 042 `"42"', add
label define mw08a_resdur_lbl 043 `"43"', add
label define mw08a_resdur_lbl 044 `"44"', add
label define mw08a_resdur_lbl 045 `"45"', add
label define mw08a_resdur_lbl 046 `"46"', add
label define mw08a_resdur_lbl 047 `"47"', add
label define mw08a_resdur_lbl 048 `"48"', add
label define mw08a_resdur_lbl 049 `"49"', add
label define mw08a_resdur_lbl 050 `"50"', add
label define mw08a_resdur_lbl 051 `"51"', add
label define mw08a_resdur_lbl 052 `"52"', add
label define mw08a_resdur_lbl 053 `"53"', add
label define mw08a_resdur_lbl 054 `"54"', add
label define mw08a_resdur_lbl 055 `"55"', add
label define mw08a_resdur_lbl 056 `"56"', add
label define mw08a_resdur_lbl 057 `"57"', add
label define mw08a_resdur_lbl 058 `"58"', add
label define mw08a_resdur_lbl 059 `"59"', add
label define mw08a_resdur_lbl 060 `"60"', add
label define mw08a_resdur_lbl 061 `"61"', add
label define mw08a_resdur_lbl 062 `"62"', add
label define mw08a_resdur_lbl 063 `"63"', add
label define mw08a_resdur_lbl 064 `"64"', add
label define mw08a_resdur_lbl 065 `"65"', add
label define mw08a_resdur_lbl 066 `"66"', add
label define mw08a_resdur_lbl 067 `"67"', add
label define mw08a_resdur_lbl 068 `"68"', add
label define mw08a_resdur_lbl 069 `"69"', add
label define mw08a_resdur_lbl 070 `"70"', add
label define mw08a_resdur_lbl 071 `"71"', add
label define mw08a_resdur_lbl 072 `"72"', add
label define mw08a_resdur_lbl 073 `"73"', add
label define mw08a_resdur_lbl 074 `"74"', add
label define mw08a_resdur_lbl 075 `"75"', add
label define mw08a_resdur_lbl 076 `"76"', add
label define mw08a_resdur_lbl 077 `"77"', add
label define mw08a_resdur_lbl 078 `"78"', add
label define mw08a_resdur_lbl 079 `"79"', add
label define mw08a_resdur_lbl 080 `"80"', add
label define mw08a_resdur_lbl 081 `"81"', add
label define mw08a_resdur_lbl 082 `"82"', add
label define mw08a_resdur_lbl 083 `"83"', add
label define mw08a_resdur_lbl 084 `"84"', add
label define mw08a_resdur_lbl 085 `"85"', add
label define mw08a_resdur_lbl 086 `"86"', add
label define mw08a_resdur_lbl 087 `"87"', add
label define mw08a_resdur_lbl 088 `"88"', add
label define mw08a_resdur_lbl 089 `"89"', add
label define mw08a_resdur_lbl 090 `"90"', add
label define mw08a_resdur_lbl 091 `"91"', add
label define mw08a_resdur_lbl 092 `"92"', add
label define mw08a_resdur_lbl 093 `"93"', add
label define mw08a_resdur_lbl 094 `"94"', add
label define mw08a_resdur_lbl 095 `"95"', add
label define mw08a_resdur_lbl 096 `"96"', add
label define mw08a_resdur_lbl 097 `"97"', add
label define mw08a_resdur_lbl 098 `"98"', add
label define mw08a_resdur_lbl 099 `"More than 98 years"', add
label define mw08a_resdur_lbl 999 `"NIU (not in universe)"', add
label values mw08a_resdur mw08a_resdur_lbl

label define mw08a_disab1_lbl 0 `"None"'
label define mw08a_disab1_lbl 1 `"Seeing"', add
label define mw08a_disab1_lbl 2 `"Hearing"', add
label define mw08a_disab1_lbl 3 `"Speaking"', add
label define mw08a_disab1_lbl 4 `"Walking"', add
label define mw08a_disab1_lbl 5 `"Other"', add
label define mw08a_disab1_lbl 9 `"NIU (not in universe)"', add
label values mw08a_disab1 mw08a_disab1_lbl

label define mw08a_discaus1_lbl 1 `"Congenital"'
label define mw08a_discaus1_lbl 2 `"Disease"', add
label define mw08a_discaus1_lbl 3 `"Injury"', add
label define mw08a_discaus1_lbl 4 `"Not known"', add
label define mw08a_discaus1_lbl 5 `"Other"', add
label define mw08a_discaus1_lbl 9 `"NIU (not in universe)"', add
label values mw08a_discaus1 mw08a_discaus1_lbl

label define mw08a_disab2_lbl 1 `"Seeing"'
label define mw08a_disab2_lbl 2 `"Hearing"', add
label define mw08a_disab2_lbl 3 `"Speaking"', add
label define mw08a_disab2_lbl 4 `"Walking"', add
label define mw08a_disab2_lbl 5 `"Other"', add
label define mw08a_disab2_lbl 9 `"NIU (not in universe)"', add
label values mw08a_disab2 mw08a_disab2_lbl

label define mw08a_discaus2_lbl 1 `"Congenital"'
label define mw08a_discaus2_lbl 2 `"Disease"', add
label define mw08a_discaus2_lbl 3 `"Injury"', add
label define mw08a_discaus2_lbl 4 `"Not known"', add
label define mw08a_discaus2_lbl 5 `"Other"', add
label define mw08a_discaus2_lbl 9 `"NIU (not in universe)"', add
label values mw08a_discaus2 mw08a_discaus2_lbl

label define mw08a_disab3_lbl 1 `"Seeing, hearing, or speaking"'
label define mw08a_disab3_lbl 4 `"Walking"', add
label define mw08a_disab3_lbl 5 `"Other"', add
label define mw08a_disab3_lbl 8 `"Unknown"', add
label define mw08a_disab3_lbl 9 `"NIU (not in universe)"', add
label values mw08a_disab3 mw08a_disab3_lbl

label define mw08a_discaus3_lbl 5 `"Other (not specified)"'
label define mw08a_discaus3_lbl 8 `"Unknown"', add
label define mw08a_discaus3_lbl 9 `"NIU (not in universe)"', add
label values mw08a_discaus3 mw08a_discaus3_lbl

label define mw08a_mothlive_lbl 1 `"Yes"'
label define mw08a_mothlive_lbl 2 `"No"', add
label define mw08a_mothlive_lbl 9 `"NIU (not in universe)"', add
label values mw08a_mothlive mw08a_mothlive_lbl

label define mw08a_mothhh_lbl 1 `"Yes"'
label define mw08a_mothhh_lbl 2 `"No"', add
label define mw08a_mothhh_lbl 9 `"NIU (not in universe)"', add
label values mw08a_mothhh mw08a_mothhh_lbl

label define mw08a_fathlive_lbl 1 `"Yes"'
label define mw08a_fathlive_lbl 2 `"No"', add
label define mw08a_fathlive_lbl 9 `"NIU (not in universe)"', add
label values mw08a_fathlive mw08a_fathlive_lbl

label define mw08a_fathhh_lbl 1 `"Yes"'
label define mw08a_fathhh_lbl 2 `"No"', add
label define mw08a_fathhh_lbl 9 `"NIU (not in universe)"', add
label values mw08a_fathhh mw08a_fathhh_lbl

label define mw08a_bthcert_lbl 1 `"Yes, seen"'
label define mw08a_bthcert_lbl 2 `"Yes, but not seen"', add
label define mw08a_bthcert_lbl 3 `"No"', add
label define mw08a_bthcert_lbl 4 `"Don't know"', add
label define mw08a_bthcert_lbl 9 `"NIU (not in universe)"', add
label values mw08a_bthcert mw08a_bthcert_lbl

label define mw08a_chichewa_lbl 1 `"Yes"'
label define mw08a_chichewa_lbl 2 `"No"', add
label define mw08a_chichewa_lbl 9 `"NIU (not in universe)"', add
label values mw08a_chichewa mw08a_chichewa_lbl

label define mw08a_othlang_lbl 1 `"Yes"'
label define mw08a_othlang_lbl 2 `"No"', add
label define mw08a_othlang_lbl 9 `"NIU (not in universe)"', add
label values mw08a_othlang mw08a_othlang_lbl

label define mw08a_litlangs_lbl 0 `"Not literate"'
label define mw08a_litlangs_lbl 1 `"English only"', add
label define mw08a_litlangs_lbl 2 `"Chichewa only"', add
label define mw08a_litlangs_lbl 3 `"English and Chichewa"', add
label define mw08a_litlangs_lbl 4 `"Other language only"', add
label define mw08a_litlangs_lbl 5 `"Other and English"', add
label define mw08a_litlangs_lbl 6 `"Other and Chichewa"', add
label define mw08a_litlangs_lbl 7 `"English, Chichewa and other"', add
label define mw08a_litlangs_lbl 9 `"NIU (not in universe)"', add
label values mw08a_litlangs mw08a_litlangs_lbl

label define mw08a_edattain_lbl 00 `"Preschool"'
label define mw08a_edattain_lbl 10 `"Primary, grade unspecified"', add
label define mw08a_edattain_lbl 11 `"Primary, grade 1"', add
label define mw08a_edattain_lbl 12 `"Primary, grade 2"', add
label define mw08a_edattain_lbl 13 `"Primary, grade 3"', add
label define mw08a_edattain_lbl 14 `"Primary, grade 4"', add
label define mw08a_edattain_lbl 15 `"Primary, grade 5"', add
label define mw08a_edattain_lbl 16 `"Primary, grade 6"', add
label define mw08a_edattain_lbl 17 `"Primary, grade 7"', add
label define mw08a_edattain_lbl 18 `"Primary, grade 8"', add
label define mw08a_edattain_lbl 20 `"Secondary, grade unspecified"', add
label define mw08a_edattain_lbl 21 `"Secondary, grade 1"', add
label define mw08a_edattain_lbl 22 `"Secondary, grade 2"', add
label define mw08a_edattain_lbl 23 `"Secondary, grade 3"', add
label define mw08a_edattain_lbl 24 `"Secondary, grade 4"', add
label define mw08a_edattain_lbl 25 `"Secondary, grade 5"', add
label define mw08a_edattain_lbl 26 `"Secondary, grade 6"', add
label define mw08a_edattain_lbl 27 `"Secondary, grade 7"', add
label define mw08a_edattain_lbl 28 `"Secondary, grade 8"', add
label define mw08a_edattain_lbl 30 `"University, level unspecified"', add
label define mw08a_edattain_lbl 31 `"University, level 1"', add
label define mw08a_edattain_lbl 32 `"University, level 2"', add
label define mw08a_edattain_lbl 33 `"University, level 3"', add
label define mw08a_edattain_lbl 34 `"University, level 4"', add
label define mw08a_edattain_lbl 35 `"University, level 5"', add
label define mw08a_edattain_lbl 36 `"University, level 6"', add
label define mw08a_edattain_lbl 37 `"University, level 7"', add
label define mw08a_edattain_lbl 38 `"University, level 8"', add
label define mw08a_edattain_lbl 40 `"Other education level, year unspecified"', add
label define mw08a_edattain_lbl 41 `"Other education level, year 1"', add
label define mw08a_edattain_lbl 42 `"Other education level, year 2"', add
label define mw08a_edattain_lbl 43 `"Other education level, year 3"', add
label define mw08a_edattain_lbl 44 `"Other education level, year 4"', add
label define mw08a_edattain_lbl 45 `"Other education level, year 5"', add
label define mw08a_edattain_lbl 46 `"Other education level, year 6"', add
label define mw08a_edattain_lbl 47 `"Other education level, year 7"', add
label define mw08a_edattain_lbl 48 `"Other education level, year 8"', add
label define mw08a_edattain_lbl 98 `"Unknown"', add
label define mw08a_edattain_lbl 99 `"NIU (not in universe)"', add
label values mw08a_edattain mw08a_edattain_lbl

label define mw08a_edlevel_lbl 0 `"Preschool"'
label define mw08a_edlevel_lbl 1 `"Primary"', add
label define mw08a_edlevel_lbl 2 `"Secondary"', add
label define mw08a_edlevel_lbl 3 `"University"', add
label define mw08a_edlevel_lbl 4 `"Other education level"', add
label define mw08a_edlevel_lbl 8 `"Unknown"', add
label define mw08a_edlevel_lbl 9 `"NIU (not in universe)"', add
label values mw08a_edlevel mw08a_edlevel_lbl

label define mw08a_edgrade_lbl 00 `"0"'
label define mw08a_edgrade_lbl 01 `"1"', add
label define mw08a_edgrade_lbl 02 `"2"', add
label define mw08a_edgrade_lbl 03 `"3"', add
label define mw08a_edgrade_lbl 04 `"4"', add
label define mw08a_edgrade_lbl 05 `"5"', add
label define mw08a_edgrade_lbl 06 `"6"', add
label define mw08a_edgrade_lbl 07 `"7"', add
label define mw08a_edgrade_lbl 08 `"8"', add
label define mw08a_edgrade_lbl 98 `"Unknown"', add
label define mw08a_edgrade_lbl 99 `"NIU (not in universe)"', add
label values mw08a_edgrade mw08a_edgrade_lbl

label define mw08a_edqualif_lbl 00 `"None"'
label define mw08a_edqualif_lbl 01 `"Primary school leaving certificate"', add
label define mw08a_edqualif_lbl 02 `"Junior certificate"', add
label define mw08a_edqualif_lbl 03 `"MSCE/GCE"', add
label define mw08a_edqualif_lbl 04 `"A level"', add
label define mw08a_edqualif_lbl 05 `"Diploma"', add
label define mw08a_edqualif_lbl 06 `"Degree"', add
label define mw08a_edqualif_lbl 07 `"Masters"', add
label define mw08a_edqualif_lbl 08 `"PhD"', add
label define mw08a_edqualif_lbl 98 `"Unknown"', add
label define mw08a_edqualif_lbl 99 `"NIU (not in universe)"', add
label values mw08a_edqualif mw08a_edqualif_lbl

label define mw08a_empstat_lbl 1 `"Yes, worked in last 7 days"'
label define mw08a_empstat_lbl 2 `"No, didn't work in last 7 days"', add
label define mw08a_empstat_lbl 8 `"Unknown"', add
label define mw08a_empstat_lbl 9 `"NIU (not in universe)"', add
label values mw08a_empstat mw08a_empstat_lbl

label define mw08a_nowork_lbl 0 `"Homeworker"'
label define mw08a_nowork_lbl 1 `"Non-worker (never worked)"', add
label define mw08a_nowork_lbl 2 `"On leave, but has a job"', add
label define mw08a_nowork_lbl 3 `"Retired"', add
label define mw08a_nowork_lbl 4 `"Student"', add
label define mw08a_nowork_lbl 5 `"Other"', add
label define mw08a_nowork_lbl 9 `"NIU (not in universe)"', add
label values mw08a_nowork mw08a_nowork_lbl

label define mw08a_subsist_lbl 1 `"Farming/rearing"'
label define mw08a_subsist_lbl 2 `"Production/services/selling"', add
label define mw08a_subsist_lbl 3 `"Houseworker at someone's house"', add
label define mw08a_subsist_lbl 4 `"Homeworker at own house"', add
label define mw08a_subsist_lbl 5 `"None"', add
label define mw08a_subsist_lbl 9 `"NIU (not in universe)"', add
label values mw08a_subsist mw08a_subsist_lbl

label define mw08a_looking_lbl 0 `"No"'
label define mw08a_looking_lbl 1 `"Yes, first job"', add
label define mw08a_looking_lbl 2 `"Yes, new job"', add
label define mw08a_looking_lbl 9 `"NIU (not in universe)"', add
label values mw08a_looking mw08a_looking_lbl

label define mw08a_occ2_lbl 001 `"Physical scientists and related technicians"'
label define mw08a_occ2_lbl 002 `"Architects"', add
label define mw08a_occ2_lbl 003 `"Engineers"', add
label define mw08a_occ2_lbl 005 `"Life scientists and related technicians"', add
label define mw08a_occ2_lbl 006 `"Medical workers"', add
label define mw08a_occ2_lbl 007 `"Veterinary"', add
label define mw08a_occ2_lbl 008 `"Mathematicians, statisticians and related technicians"', add
label define mw08a_occ2_lbl 011 `"Accountants"', add
label define mw08a_occ2_lbl 012 `"Jurists"', add
label define mw08a_occ2_lbl 013 `"Teachers"', add
label define mw08a_occ2_lbl 014 `"Religious workers"', add
label define mw08a_occ2_lbl 015 `"Writers"', add
label define mw08a_occ2_lbl 016 `"Artists"', add
label define mw08a_occ2_lbl 017 `"Musicians"', add
label define mw08a_occ2_lbl 018 `"Athletes"', add
label define mw08a_occ2_lbl 019 `"Professional, technical and related workers not elsewhere classified"', add
label define mw08a_occ2_lbl 020 `"Legislative officials and government administrators"', add
label define mw08a_occ2_lbl 021 `"Managers"', add
label define mw08a_occ2_lbl 030 `"Clerical supervisors"', add
label define mw08a_occ2_lbl 031 `"Government executive officials"', add
label define mw08a_occ2_lbl 032 `"Stenographers, typists and card and tape punching machine operators"', add
label define mw08a_occ2_lbl 033 `"Bookkeepers, cashiers and related workers"', add
label define mw08a_occ2_lbl 034 `"Computing machine operaters"', add
label define mw08a_occ2_lbl 035 `"Transport and communications supervisors"', add
label define mw08a_occ2_lbl 036 `"Transport conductors"', add
label define mw08a_occ2_lbl 037 `"Mail distribution clerks"', add
label define mw08a_occ2_lbl 038 `"Telephone and telegraph operators"', add
label define mw08a_occ2_lbl 039 `"Clerical and related workers not elsewhere classified"', add
label define mw08a_occ2_lbl 040 `"Managers"', add
label define mw08a_occ2_lbl 041 `"Working proprietors"', add
label define mw08a_occ2_lbl 042 `"Sales supervisors and buyers"', add
label define mw08a_occ2_lbl 043 `"Salesmen"', add
label define mw08a_occ2_lbl 044 `"Auctioneers"', add
label define mw08a_occ2_lbl 045 `"Salesmen, shop assistants and related workers"', add
label define mw08a_occ2_lbl 050 `"Managers (catering and lodging services)"', add
label define mw08a_occ2_lbl 051 `"Working proprietors (catering and lodging services)"', add
label define mw08a_occ2_lbl 052 `"Housekeeping and related service supervisors"', add
label define mw08a_occ2_lbl 053 `"Cooks, waiters, bartenders and relaters workers"', add
label define mw08a_occ2_lbl 054 `"Maids and related housekeeping service workers not elsewhere classified"', add
label define mw08a_occ2_lbl 055 `"Building caretakers, charworkers, cleaners and related workers"', add
label define mw08a_occ2_lbl 056 `"Launderers, dry-cleaners and pressers"', add
label define mw08a_occ2_lbl 057 `"Hairdressers, barbers, beauticians and related workers"', add
label define mw08a_occ2_lbl 058 `"Protective service workers"', add
label define mw08a_occ2_lbl 059 `"Service workers not elsewhere classified"', add
label define mw08a_occ2_lbl 060 `"Farm managers and supervisors"', add
label define mw08a_occ2_lbl 061 `"Farmers"', add
label define mw08a_occ2_lbl 062 `"Agricultural and animal husbandry workers"', add
label define mw08a_occ2_lbl 063 `"Forestry workers"', add
label define mw08a_occ2_lbl 064 `"Fishermen, hunters and related workers"', add
label define mw08a_occ2_lbl 070 `"Production supervisors and general foremen"', add
label define mw08a_occ2_lbl 071 `"Miners, quarrymen, well drillers and related workers"', add
label define mw08a_occ2_lbl 073 `"Wood preparation workers and paper makers"', add
label define mw08a_occ2_lbl 074 `"Chemical processers and related workers"', add
label define mw08a_occ2_lbl 075 `"Spinners, weavers, knitters, dyers and related workers"', add
label define mw08a_occ2_lbl 077 `"Food and beverage processers"', add
label define mw08a_occ2_lbl 078 `"Tobacco preparers and tobacco product makers"', add
label define mw08a_occ2_lbl 079 `"Tailors, dressmakers, sewers, upholsterers and related workers"', add
label define mw08a_occ2_lbl 080 `"Shoemakers and leather goods makers"', add
label define mw08a_occ2_lbl 083 `"Blacksmiths, toolmakers and machine-tool operators"', add
label define mw08a_occ2_lbl 084 `"Machinery fitters, machine assemblers and precision instrument makers (except electrical)"', add
label define mw08a_occ2_lbl 085 `"Electrical fitters and related electrical and electronics workers"', add
label define mw08a_occ2_lbl 086 `"Broadcasting station and sound equipment operators and cinema projectionists"', add
label define mw08a_occ2_lbl 087 `"Plumbers, welders, sheet metal and structural metal preparers and erectors"', add
label define mw08a_occ2_lbl 089 `"Glass formers, potters and related workers"', add
label define mw08a_occ2_lbl 090 `"Rubber and plastics product makers"', add
label define mw08a_occ2_lbl 092 `"Printers and related workers"', add
label define mw08a_occ2_lbl 093 `"Painters construction"', add
label define mw08a_occ2_lbl 094 `"Production and related workers not elsewhere classified"', add
label define mw08a_occ2_lbl 095 `"Bricklayers, carpenters and other construction workers"', add
label define mw08a_occ2_lbl 096 `"Stationary engine and related equipment operators"', add
label define mw08a_occ2_lbl 097 `"Material-handling and related equipment operators, dockers and freight handlers"', add
label define mw08a_occ2_lbl 098 `"Transport equipment operators"', add
label define mw08a_occ2_lbl 099 `"Other occupation, response suppressed"', add
label define mw08a_occ2_lbl 998 `"Unknown"', add
label define mw08a_occ2_lbl 999 `"NIU (not in universe)"', add
label values mw08a_occ2 mw08a_occ2_lbl

label define mw08a_classwk_lbl 1 `"Employer"'
label define mw08a_classwk_lbl 2 `"Self-employed"', add
label define mw08a_classwk_lbl 3 `"Public service"', add
label define mw08a_classwk_lbl 4 `"Private sector"', add
label define mw08a_classwk_lbl 5 `"Family farm/business"', add
label define mw08a_classwk_lbl 6 `"Other"', add
label define mw08a_classwk_lbl 8 `"Unknown"', add
label define mw08a_classwk_lbl 9 `"NIU (not in universe)"', add
label values mw08a_classwk mw08a_classwk_lbl

label define mw08a_classwk_lbl 1 `"Employer"'
label define mw08a_classwk_lbl 2 `"Self-employed"', add
label define mw08a_classwk_lbl 3 `"Public service"', add
label define mw08a_classwk_lbl 4 `"Private sector"', add
label define mw08a_classwk_lbl 5 `"Family farm/business"', add
label define mw08a_classwk_lbl 6 `"Other"', add
label define mw08a_classwk_lbl 8 `"Unknown"', add
label define mw08a_classwk_lbl 9 `"NIU (not in universe)"', add
label values mw08a_classwk mw08a_classwk_lbl

label define mw08a_ind2_lbl 001 `"Crop and animal production, hunting and related service activities"'
label define mw08a_ind2_lbl 002 `"Forestry and logging"', add
label define mw08a_ind2_lbl 003 `"Fishing and aquaculture"', add
label define mw08a_ind2_lbl 005 `"Mining of coal and lignite"', add
label define mw08a_ind2_lbl 007 `"Mining of metal ores"', add
label define mw08a_ind2_lbl 008 `"Other mining and quarrying"', add
label define mw08a_ind2_lbl 010 `"Manufacture of food products"', add
label define mw08a_ind2_lbl 011 `"Manufacture of beverages"', add
label define mw08a_ind2_lbl 012 `"Manufacture of tobacco products"', add
label define mw08a_ind2_lbl 013 `"Manufacture of textiles"', add
label define mw08a_ind2_lbl 014 `"Manufacture of wearing apparel"', add
label define mw08a_ind2_lbl 016 `"Manufacture of wood and of products of wood and cork, except furniture; manufacture of articles of straw and plaiting materials"', add
label define mw08a_ind2_lbl 018 `"Printing and reproduction of recorded media"', add
label define mw08a_ind2_lbl 020 `"Manufacture of chemicals and chemical products"', add
label define mw08a_ind2_lbl 022 `"Manufacture of rubber and plastics products"', add
label define mw08a_ind2_lbl 023 `"Manufacture of other non-metallic mineral products"', add
label define mw08a_ind2_lbl 025 `"Manufacture of fabricated metal products, except machinery and equipment"', add
label define mw08a_ind2_lbl 028 `"Manufacture of machinery and equipment n.e.c."', add
label define mw08a_ind2_lbl 031 `"Manufacture of furniture"', add
label define mw08a_ind2_lbl 032 `"Other manufacturing"', add
label define mw08a_ind2_lbl 033 `"Repair and installation of machinery and equipment"', add
label define mw08a_ind2_lbl 035 `"Electricity, gas, steam and air conditioning supply"', add
label define mw08a_ind2_lbl 036 `"Water collection, treatment and supply"', add
label define mw08a_ind2_lbl 041 `"Construction of buildings"', add
label define mw08a_ind2_lbl 042 `"Civil engineering"', add
label define mw08a_ind2_lbl 043 `"Specialized construction activities"', add
label define mw08a_ind2_lbl 045 `"Wholesale and retail trade and repair of motor vehicles and motorcycles"', add
label define mw08a_ind2_lbl 046 `"Wholesale trade, except of motor vehicles and motorcycles"', add
label define mw08a_ind2_lbl 047 `"Retail trade, except of motor vehicles and motorcycles"', add
label define mw08a_ind2_lbl 049 `"Land transport and transport via pipelines"', add
label define mw08a_ind2_lbl 050 `"Water transport"', add
label define mw08a_ind2_lbl 051 `"Air transport"', add
label define mw08a_ind2_lbl 052 `"Warehousing and support activities for transportation"', add
label define mw08a_ind2_lbl 053 `"Postal and courier activities"', add
label define mw08a_ind2_lbl 055 `"Accommodation"', add
label define mw08a_ind2_lbl 056 `"Food and beverage service activities"', add
label define mw08a_ind2_lbl 058 `"Publishing activities"', add
label define mw08a_ind2_lbl 059 `"Motion picture, video and television programme production, sound recording and music publishing activities"', add
label define mw08a_ind2_lbl 060 `"Programming and broadcasting activities"', add
label define mw08a_ind2_lbl 061 `"Telecommunications"', add
label define mw08a_ind2_lbl 062 `"Computer programming, consultancy and related activities"', add
label define mw08a_ind2_lbl 063 `"Information service activities"', add
label define mw08a_ind2_lbl 064 `"Financial service activities, except insurance and pension funding"', add
label define mw08a_ind2_lbl 065 `"Insurance, reinsurance and pension funding, except compulsory social security"', add
label define mw08a_ind2_lbl 068 `"Real estate activities"', add
label define mw08a_ind2_lbl 069 `"Legal and accounting activities"', add
label define mw08a_ind2_lbl 070 `"Activities of head offices; management consultancy activities"', add
label define mw08a_ind2_lbl 071 `"Architectural and engineering activities; technical testing and analysis"', add
label define mw08a_ind2_lbl 072 `"Scientific research and development"', add
label define mw08a_ind2_lbl 073 `"Advertising and market research"', add
label define mw08a_ind2_lbl 074 `"Other professional, scientific and technical activities"', add
label define mw08a_ind2_lbl 075 `"Veterinary activities"', add
label define mw08a_ind2_lbl 077 `"Rental and leasing activities"', add
label define mw08a_ind2_lbl 079 `"Travel agency, tour operator, reservation service and related activities"', add
label define mw08a_ind2_lbl 080 `"Security and investigation activities"', add
label define mw08a_ind2_lbl 081 `"Services to buildings and landscape activities"', add
label define mw08a_ind2_lbl 082 `"Office administrative, office support and other business support activities"', add
label define mw08a_ind2_lbl 084 `"Public administration and defence; compulsory social security"', add
label define mw08a_ind2_lbl 085 `"Education"', add
label define mw08a_ind2_lbl 086 `"Human health activities"', add
label define mw08a_ind2_lbl 087 `"Residential care activities"', add
label define mw08a_ind2_lbl 088 `"Social work activities without accommodation"', add
label define mw08a_ind2_lbl 090 `"Creative, arts and entertainment activities"', add
label define mw08a_ind2_lbl 091 `"Libraries, archives, museums and other cultural activities"', add
label define mw08a_ind2_lbl 093 `"Sports activities and amusement and recreation activities"', add
label define mw08a_ind2_lbl 094 `"Activities of membership organizations"', add
label define mw08a_ind2_lbl 095 `"Repair of computers and personal and household goods"', add
label define mw08a_ind2_lbl 096 `"Other personal service activities"', add
label define mw08a_ind2_lbl 097 `"Activities of households as employers of domestic personnel"', add
label define mw08a_ind2_lbl 099 `"Activities of extraterritorial organizations and bodies"', add
label define mw08a_ind2_lbl 990 `"Other industry, response suppressed"', add
label define mw08a_ind2_lbl 998 `"Unknown"', add
label define mw08a_ind2_lbl 999 `"NIU (not in universe)"', add
label values mw08a_ind2 mw08a_ind2_lbl

label define mw08a_marst_lbl 1 `"Never married"'
label define mw08a_marst_lbl 2 `"Married"', add
label define mw08a_marst_lbl 3 `"Divorced/Separated"', add
label define mw08a_marst_lbl 4 `"Widowed"', add
label define mw08a_marst_lbl 9 `"NIU (not in universe)"', add
label values mw08a_marst mw08a_marst_lbl

label define mw08a_agemarr_lbl 11 `"11"'
label define mw08a_agemarr_lbl 12 `"12"', add
label define mw08a_agemarr_lbl 13 `"13"', add
label define mw08a_agemarr_lbl 14 `"14"', add
label define mw08a_agemarr_lbl 15 `"15"', add
label define mw08a_agemarr_lbl 16 `"16"', add
label define mw08a_agemarr_lbl 17 `"17"', add
label define mw08a_agemarr_lbl 18 `"18"', add
label define mw08a_agemarr_lbl 19 `"19"', add
label define mw08a_agemarr_lbl 20 `"20"', add
label define mw08a_agemarr_lbl 21 `"21"', add
label define mw08a_agemarr_lbl 22 `"22"', add
label define mw08a_agemarr_lbl 23 `"23"', add
label define mw08a_agemarr_lbl 24 `"24"', add
label define mw08a_agemarr_lbl 25 `"25"', add
label define mw08a_agemarr_lbl 26 `"26"', add
label define mw08a_agemarr_lbl 27 `"27"', add
label define mw08a_agemarr_lbl 28 `"28"', add
label define mw08a_agemarr_lbl 29 `"29"', add
label define mw08a_agemarr_lbl 30 `"30"', add
label define mw08a_agemarr_lbl 31 `"31"', add
label define mw08a_agemarr_lbl 32 `"32"', add
label define mw08a_agemarr_lbl 33 `"33"', add
label define mw08a_agemarr_lbl 34 `"34"', add
label define mw08a_agemarr_lbl 35 `"35"', add
label define mw08a_agemarr_lbl 36 `"36"', add
label define mw08a_agemarr_lbl 37 `"37"', add
label define mw08a_agemarr_lbl 38 `"38"', add
label define mw08a_agemarr_lbl 39 `"39"', add
label define mw08a_agemarr_lbl 40 `"40"', add
label define mw08a_agemarr_lbl 41 `"41"', add
label define mw08a_agemarr_lbl 42 `"42"', add
label define mw08a_agemarr_lbl 43 `"43"', add
label define mw08a_agemarr_lbl 44 `"44"', add
label define mw08a_agemarr_lbl 45 `"45"', add
label define mw08a_agemarr_lbl 46 `"46"', add
label define mw08a_agemarr_lbl 47 `"47"', add
label define mw08a_agemarr_lbl 48 `"48"', add
label define mw08a_agemarr_lbl 49 `"49"', add
label define mw08a_agemarr_lbl 50 `"50"', add
label define mw08a_agemarr_lbl 51 `"51"', add
label define mw08a_agemarr_lbl 52 `"52"', add
label define mw08a_agemarr_lbl 53 `"53"', add
label define mw08a_agemarr_lbl 54 `"54"', add
label define mw08a_agemarr_lbl 55 `"55"', add
label define mw08a_agemarr_lbl 99 `"NIU (not in universe)"', add
label values mw08a_agemarr mw08a_agemarr_lbl

label define mw08a_chbornm_lbl 00 `"0"'
label define mw08a_chbornm_lbl 01 `"1"', add
label define mw08a_chbornm_lbl 02 `"2"', add
label define mw08a_chbornm_lbl 03 `"3"', add
label define mw08a_chbornm_lbl 04 `"4"', add
label define mw08a_chbornm_lbl 05 `"5"', add
label define mw08a_chbornm_lbl 06 `"6"', add
label define mw08a_chbornm_lbl 07 `"7"', add
label define mw08a_chbornm_lbl 08 `"8"', add
label define mw08a_chbornm_lbl 09 `"9"', add
label define mw08a_chbornm_lbl 98 `"Unknown"', add
label define mw08a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values mw08a_chbornm mw08a_chbornm_lbl

label define mw08a_chsurvm_lbl 00 `"0"'
label define mw08a_chsurvm_lbl 01 `"1"', add
label define mw08a_chsurvm_lbl 02 `"2"', add
label define mw08a_chsurvm_lbl 03 `"3"', add
label define mw08a_chsurvm_lbl 04 `"4"', add
label define mw08a_chsurvm_lbl 05 `"5"', add
label define mw08a_chsurvm_lbl 06 `"6"', add
label define mw08a_chsurvm_lbl 07 `"7"', add
label define mw08a_chsurvm_lbl 08 `"8"', add
label define mw08a_chsurvm_lbl 09 `"9"', add
label define mw08a_chsurvm_lbl 98 `"Unknown"', add
label define mw08a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values mw08a_chsurvm mw08a_chsurvm_lbl

label define mw08a_chsurvf_lbl 00 `"0"'
label define mw08a_chsurvf_lbl 01 `"1"', add
label define mw08a_chsurvf_lbl 02 `"2"', add
label define mw08a_chsurvf_lbl 03 `"3"', add
label define mw08a_chsurvf_lbl 04 `"4"', add
label define mw08a_chsurvf_lbl 05 `"5"', add
label define mw08a_chsurvf_lbl 06 `"6"', add
label define mw08a_chsurvf_lbl 07 `"7"', add
label define mw08a_chsurvf_lbl 08 `"8"', add
label define mw08a_chsurvf_lbl 09 `"9"', add
label define mw08a_chsurvf_lbl 98 `"Unknown"', add
label define mw08a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values mw08a_chsurvf mw08a_chsurvf_lbl

label define mw08a_blstyrm_lbl 0 `"None"'
label define mw08a_blstyrm_lbl 1 `"1"', add
label define mw08a_blstyrm_lbl 2 `"2"', add
label define mw08a_blstyrm_lbl 8 `"Unknown"', add
label define mw08a_blstyrm_lbl 9 `"NIU (not in universe)"', add
label values mw08a_blstyrm mw08a_blstyrm_lbl

label define mw08a_blstyrf_lbl 0 `"None"'
label define mw08a_blstyrf_lbl 1 `"1"', add
label define mw08a_blstyrf_lbl 2 `"2"', add
label define mw08a_blstyrf_lbl 8 `"Unknown"', add
label define mw08a_blstyrf_lbl 9 `"NIU (not in universe)"', add
label values mw08a_blstyrf mw08a_blstyrf_lbl

label define mw08a_blivem_lbl 0 `"None"'
label define mw08a_blivem_lbl 1 `"1"', add
label define mw08a_blivem_lbl 2 `"2"', add
label define mw08a_blivem_lbl 8 `"Unknown"', add
label define mw08a_blivem_lbl 9 `"NIU (not in universe)"', add
label values mw08a_blivem mw08a_blivem_lbl

label define mw08a_blivef_lbl 0 `"None"'
label define mw08a_blivef_lbl 1 `"1"', add
label define mw08a_blivef_lbl 2 `"2"', add
label define mw08a_blivef_lbl 8 `"Unknown"', add
label define mw08a_blivef_lbl 9 `"NIU (not in universe)"', add
label values mw08a_blivef mw08a_blivef_lbl

label define mw08a_qrelate_lbl 0 `"No imputation"'
label define mw08a_qrelate_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qrelate_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qrelate_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qrelate_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qrelate mw08a_qrelate_lbl

label define mw08a_qsex_lbl 0 `"No imputation"'
label define mw08a_qsex_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qsex_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qsex_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qsex_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qsex mw08a_qsex_lbl

label define mw08a_qage_lbl 0 `"No imputation"'
label define mw08a_qage_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qage_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qage_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qage_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qage mw08a_qage_lbl

label define mw08a_qmalawi_lbl 0 `"No imputation"'
label define mw08a_qmalawi_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qmalawi_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qmalawi_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qmalawi_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qmalawi mw08a_qmalawi_lbl

label define mw08a_qnation_lbl 0 `"No imputation"'
label define mw08a_qnation_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qnation_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qnation_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qnation_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qnation mw08a_qnation_lbl

label define mw08a_qrelig_lbl 0 `"No imputation"'
label define mw08a_qrelig_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qrelig_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qrelig_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qrelig_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qrelig mw08a_qrelig_lbl

label define mw08a_qtribe_lbl 0 `"No imputation"'
label define mw08a_qtribe_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qtribe_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qtribe_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qtribe_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qtribe mw08a_qtribe_lbl

label define mw08a_qmothliv_lbl 0 `"No imputation"'
label define mw08a_qmothliv_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qmothliv_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qmothliv_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qmothliv_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qmothliv mw08a_qmothliv_lbl

label define mw08a_qfathliv_lbl 0 `"No imputation"'
label define mw08a_qfathliv_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qfathliv_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qfathliv_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qfathliv_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qfathliv mw08a_qfathliv_lbl

label define mw08a_qmarst_lbl 0 `"No imputation"'
label define mw08a_qmarst_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qmarst_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qmarst_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qmarst_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qmarst mw08a_qmarst_lbl

label define mw08a_qchbornm_lbl 0 `"No imputation"'
label define mw08a_qchbornm_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qchbornm_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qchbornm_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qchbornm_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qchbornm mw08a_qchbornm_lbl

label define mw08a_qchbornf_lbl 0 `"No imputation"'
label define mw08a_qchbornf_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qchbornf_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qchbornf_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qchbornf_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qchbornf mw08a_qchbornf_lbl

label define mw08a_qchsurvm_lbl 0 `"No imputation"'
label define mw08a_qchsurvm_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qchsurvm_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qchsurvm_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qchsurvm_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qchsurvm mw08a_qchsurvm_lbl

label define mw08a_qchsurvf_lbl 0 `"No imputation"'
label define mw08a_qchsurvf_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qchsurvf_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qchsurvf_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qchsurvf_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qchsurvf mw08a_qchsurvf_lbl

label define mw08a_qblstyrm_lbl 0 `"No imputation"'
label define mw08a_qblstyrm_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qblstyrm_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qblstyrm_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qblstyrm_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qblstyrm mw08a_qblstyrm_lbl

label define mw08a_qblstyrf_lbl 0 `"No imputation"'
label define mw08a_qblstyrf_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qblstyrf_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qblstyrf_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qblstyrf_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qblstyrf mw08a_qblstyrf_lbl

label define mw08a_qmlstliv_lbl 0 `"No imputation"'
label define mw08a_qmlstliv_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qmlstliv_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qmlstliv_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qmlstliv_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qmlstliv mw08a_qmlstliv_lbl

label define mw08a_qflstliv_lbl 0 `"No imputation"'
label define mw08a_qflstliv_lbl 1 `"Logical imputation (from blank)"', add
label define mw08a_qflstliv_lbl 2 `"Logical imputation (non-blank)"', add
label define mw08a_qflstliv_lbl 3 `"Hot deck imputation (from blank)"', add
label define mw08a_qflstliv_lbl 4 `"Hot deck imputation (non-blank)"', add
label values mw08a_qflstliv mw08a_qflstliv_lbl

label define mw08a_chborn_lbl 00 `"0"'
label define mw08a_chborn_lbl 01 `"1"', add
label define mw08a_chborn_lbl 02 `"2"', add
label define mw08a_chborn_lbl 03 `"3"', add
label define mw08a_chborn_lbl 04 `"4"', add
label define mw08a_chborn_lbl 05 `"5"', add
label define mw08a_chborn_lbl 06 `"6"', add
label define mw08a_chborn_lbl 07 `"7"', add
label define mw08a_chborn_lbl 08 `"8"', add
label define mw08a_chborn_lbl 09 `"9"', add
label define mw08a_chborn_lbl 10 `"10"', add
label define mw08a_chborn_lbl 11 `"11"', add
label define mw08a_chborn_lbl 12 `"12"', add
label define mw08a_chborn_lbl 13 `"13"', add
label define mw08a_chborn_lbl 14 `"14"', add
label define mw08a_chborn_lbl 15 `"15"', add
label define mw08a_chborn_lbl 16 `"16"', add
label define mw08a_chborn_lbl 17 `"17+"', add
label define mw08a_chborn_lbl 98 `"Unknown"', add
label define mw08a_chborn_lbl 99 `"NIU (not in universe)"', add
label values mw08a_chborn mw08a_chborn_lbl

label define mw08a_chsurv_lbl 00 `"0"'
label define mw08a_chsurv_lbl 01 `"1"', add
label define mw08a_chsurv_lbl 02 `"2"', add
label define mw08a_chsurv_lbl 03 `"3"', add
label define mw08a_chsurv_lbl 04 `"4"', add
label define mw08a_chsurv_lbl 05 `"5"', add
label define mw08a_chsurv_lbl 06 `"6"', add
label define mw08a_chsurv_lbl 07 `"7"', add
label define mw08a_chsurv_lbl 08 `"8"', add
label define mw08a_chsurv_lbl 09 `"9"', add
label define mw08a_chsurv_lbl 10 `"10"', add
label define mw08a_chsurv_lbl 11 `"11"', add
label define mw08a_chsurv_lbl 12 `"12"', add
label define mw08a_chsurv_lbl 13 `"13+"', add
label define mw08a_chsurv_lbl 98 `"Unknown"', add
label define mw08a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values mw08a_chsurv mw08a_chsurv_lbl

label define mw08a_bthlstyr_lbl 0 `"0"'
label define mw08a_bthlstyr_lbl 1 `"1"', add
label define mw08a_bthlstyr_lbl 2 `"2"', add
label define mw08a_bthlstyr_lbl 3 `"3"', add
label define mw08a_bthlstyr_lbl 4 `"4"', add
label define mw08a_bthlstyr_lbl 8 `"Unknown"', add
label define mw08a_bthlstyr_lbl 9 `"NIU (not in universe)"', add
label values mw08a_bthlstyr mw08a_bthlstyr_lbl

label define mw08a_blive_lbl 0 `"0"'
label define mw08a_blive_lbl 1 `"1"', add
label define mw08a_blive_lbl 2 `"2"', add
label define mw08a_blive_lbl 3 `"3"', add
label define mw08a_blive_lbl 4 `"4"', add
label define mw08a_blive_lbl 8 `"Unknown"', add
label define mw08a_blive_lbl 9 `"NIU (not in universe)"', add
label values mw08a_blive mw08a_blive_lbl


