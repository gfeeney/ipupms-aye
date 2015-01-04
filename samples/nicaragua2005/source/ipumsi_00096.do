* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  long    ni05a_dwnum      22-28    ///
  byte    ni05a_hhnum      29-30    ///
  byte    ni05a_hhn        31-32    ///
  byte    ni05a_pernd      33-34    ///
  byte    ni05a_pern       35-36    ///
  byte    ni05a_fbig       37-37    ///
  byte    ni05a_dept       38-39    ///
  int     ni05a_muni       40-43    ///
  byte    ni05a_urban      44-44    ///
  byte    ni05a_dwtype     45-46    ///
  byte    ni05a_occstat    47-47    ///
  byte    ni05a_walls      48-49    ///
  byte    ni05a_roof       50-50    ///
  byte    ni05a_floor      51-51    ///
  byte    ni05a_lighting   52-53    ///
  byte    ni05a_watsup     54-55    ///
  byte    ni05a_ownershp   56-56    ///
  int     ni05a_htlhkm     57-59    ///
  int     ni05a_hlthmet    60-63    ///
  byte    ni05a_hlthblk    64-65    ///
  int     ni05a_hlthvara   66-69    ///
  byte    ni05a_htimed     70-71    ///
  byte    ni05a_htimeh     72-73    ///
  int     ni05a_htimem     74-76    ///
  byte    ni05a_toilet     77-77    ///
  byte    ni05a_toilexc    78-78    ///
  byte    ni05a_bedrooms   79-80    ///
  byte    ni05a_kitchen    81-81    ///
  byte    ni05a_fuelcook   82-82    ///
  byte    ni05a_garbage    83-84    ///
  byte    ni05a_radcass    85-85    ///
  byte    ni05a_stereo     86-86    ///
  byte    ni05a_radio      87-87    ///
  byte    ni05a_kitfuel    88-88    ///
  byte    ni05a_refrig     89-89    ///
  byte    ni05a_fan        90-90    ///
  byte    ni05a_sewmach    91-91    ///
  byte    ni05a_iron       92-92    ///
  byte    ni05a_phone      93-93    ///
  byte    ni05a_cell       94-94    ///
  byte    ni05a_washer     95-95    ///
  byte    ni05a_aircon     96-96    ///
  byte    ni05a_cabletv    97-97    ///
  byte    ni05a_pc         98-98    ///
  byte    ni05a_internet   99-99    ///
  byte    ni05a_car        100-100  ///
  byte    ni05a_motocyc    101-101  ///
  byte    ni05a_bike       102-102  ///
  byte    ni05a_animal     103-103  ///
  byte    ni05a_canoe      104-104  ///
  byte    ni05a_motoboat   105-105  ///
  byte    ni05a_yacht      106-106  ///
  byte    ni05a_make       107-107  ///
  byte    ni05a_sell       108-108  ///
  byte    ni05a_service    109-109  ///
  byte    ni05a_agactiv    110-110  ///
  byte    ni05a_dissens    111-111  ///
  byte    ni05a_disphys    112-112  ///
  byte    ni05a_dismentl   113-113  ///
  byte    ni05a_remitt     114-114  ///
  byte    ni05a_abroad     115-115  ///
  byte    ni05a_nabroad    116-116  ///
  byte    ni05a_death      117-117  ///
  byte    ni05a_ndeath     118-118  ///
  byte    ni05a_nmale      119-120  ///
  byte    ni05a_nfemal     121-122  ///
  int     pernum           123-125  ///
  float   wtper            126-133  ///
  byte    ni05a_pernum     134-135  ///
  byte    ni05a_relate     136-137  ///
  byte    ni05a_sex        138-138  ///
  int     ni05a_age        139-141  ///
  byte    ni05a_birthmo    142-143  ///
  int     ni05a_birthyr    144-147  ///
  byte    ni05a_marst      148-148  ///
  byte    ni05a_indig      149-149  ///
  byte    ni05a_indiggrp   150-151  ///
  byte    ni05a_indlang    152-152  ///
  byte    ni05a_bplstat    153-153  ///
  byte    ni05a_bpldept    154-155  ///
  int     ni05a_yrimmig    156-159  ///
  byte    ni05a_bpltype    160-160  ///
  byte    ni05a_mig5yr     161-161  ///
  byte    ni05a_dept5yr    162-163  ///
  int     ni05a_immig5yr   164-167  ///
  byte    ni05a_pl5yrtype  168-168  ///
  byte    ni05a_relig      169-169  ///
  byte    ni05a_lit        170-170  ///
  byte    ni05a_school     171-171  ///
  byte    ni05a_edlevel    172-172  ///
  byte    ni05a_edattan    173-174  ///
  byte    ni05a_univtech   175-175  ///
  byte    ni05a_study2     176-177  ///
  byte    ni05a_worked     178-178  ///
  byte    ni05a_absent     179-179  ///
  byte    ni05a_work2wk    180-180  ///
  byte    ni05a_nolookwk   181-181  ///
  byte    ni05a_nonwork    182-182  ///
  byte    ni05a_workpast   183-183  ///
  byte    ni05a_othactiv   184-184  ///
  byte    ni05a_workhere   185-185  ///
  byte    ni05a_tempwork   186-186  ///
  int     ni05a_occ3       187-189  ///
  byte    ni05a_classwrk   190-190  ///
  int     ni05a_ind3       191-193  ///
  byte    ni05a_children   194-194  ///
  byte    ni05a_chborn     195-196  ///
  byte    ni05a_chbornm    197-198  ///
  byte    ni05a_chbornf    199-200  ///
  byte    ni05a_chsurv     201-202  ///
  byte    ni05a_chsurvm    203-204  ///
  byte    ni05a_chsurvf    205-206  ///
  byte    ni05a_bthmo      207-208  ///
  int     ni05a_bthyr      209-212  ///
  int     ni05a_bthyr      213-216  ///
  byte    ni05a_birthloc   217-217  ///
  byte    ni05a_bthcert    218-218  ///
  byte    ni05a_econ       219-220  ///
  using `"ipumsi_00096.dat"'

replace wtper           = wtper           / 100

format serial          %10.0f
format wtper           %8.2f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var ni05a_dwnum     `"Dwelling number"'
label var ni05a_hhnum     `"Household number (within dwelling)"'
label var ni05a_hhn       `"Number of households in dwelling"'
label var ni05a_pernd     `"Number of persons in dwelling"'
label var ni05a_pern      `"Number of persons in household"'
label var ni05a_fbig      `"Dwelling created by splitting apart a large dwelling or household"'
label var ni05a_dept      `"Department"'
label var ni05a_muni      `"Municipality"'
label var ni05a_urban     `"Urban-rural"'
label var ni05a_dwtype    `"Type of dwelling"'
label var ni05a_occstat   `"Dwelling occupancy status"'
label var ni05a_walls     `"Primary construction material of exterior walls"'
label var ni05a_roof      `"Primary construction material of the roof"'
label var ni05a_floor     `"Primary construction material of the floor"'
label var ni05a_lighting  `"Type of lighting"'
label var ni05a_watsup    `"Source of water supply"'
label var ni05a_ownershp  `"Dwelling ownership"'
label var ni05a_htlhkm    `"Distance to nearest health center or clinic, in kilometers"'
label var ni05a_hlthmet   `"Distance to nearest health center or clinic, in meters"'
label var ni05a_hlthblk   `"Distance to nearest health center or clinic, in blocks"'
label var ni05a_hlthvara  `"Distance to nearest health center or clinic, in varas"'
label var ni05a_htimed    `"Time to nearest health center or clinic, in days"'
label var ni05a_htimeh    `"Time to nearest health center or clinic, in hours"'
label var ni05a_htimem    `"Time to nearest health center or clinic, in minutes"'
label var ni05a_toilet    `"Type of toilet facility"'
label var ni05a_toilexc   `"Exclusive use of toilet facilities"'
label var ni05a_bedrooms  `"Rooms used only for sleeping"'
label var ni05a_kitchen   `"Room used only for cooking"'
label var ni05a_fuelcook  `"Primary fuel used for cooking"'
label var ni05a_garbage   `"Disposal method for majority of garbage"'
label var ni05a_radcass   `"Radio/cassette/CD player [boom box]"'
label var ni05a_stereo    `"Stereo equipment"'
label var ni05a_radio     `"Radio"'
label var ni05a_kitfuel   `"Stove (butane, electric)"'
label var ni05a_refrig    `"Refrigerator"'
label var ni05a_fan       `"Fan"'
label var ni05a_sewmach   `"Sewing machine"'
label var ni05a_iron      `"Electric iron"'
label var ni05a_phone     `"Land-line telephone"'
label var ni05a_cell      `"Cell phone"'
label var ni05a_washer    `"Washing machine"'
label var ni05a_aircon    `"Air conditioning"'
label var ni05a_cabletv   `"Cable TV service"'
label var ni05a_pc        `"Computer"'
label var ni05a_internet  `"Internet"'
label var ni05a_car       `"Car/station wagon/jeep"'
label var ni05a_motocyc   `"Motorcycle/scooter/ATV"'
label var ni05a_bike      `"Bicycle"'
label var ni05a_animal    `"Animal [for transport use]"'
label var ni05a_canoe     `"Canoe/rowboat"'
label var ni05a_motoboat  `"Motor boat"'
label var ni05a_yacht     `"Yacht"'
label var ni05a_make      `"Home-based industry, making products"'
label var ni05a_sell      `"Home-based industry, selling products"'
label var ni05a_service   `"Home-based industry, service"'
label var ni05a_agactiv   `"Agricultural activity by household member"'
label var ni05a_dissens   `"Household member with disability: deaf, mute, or blind"'
label var ni05a_disphys   `"Household member with disability: permanent difficulty walking, bathing, or dres"'
label var ni05a_dismentl  `"Household member with disability: permanent learning or social difficulty, menta"'
label var ni05a_remitt    `"Payments received by household from someone abroad in the last 12 months"'
label var ni05a_abroad    `"Household member currently living in another country"'
label var ni05a_nabroad   `"Number of household members living abroad"'
label var ni05a_death     `"Death of household member (since January 1st 2004)"'
label var ni05a_ndeath    `"Number of deaths (since January 1st 2004)"'
label var ni05a_nmale     `"Number of usual male residents of the household"'
label var ni05a_nfemal    `"Number of usual female residents of the household"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var ni05a_pernum    `"Person number (within household)"'
label var ni05a_relate    `"Relationship to household head"'
label var ni05a_sex       `"Sex"'
label var ni05a_age       `"Age"'
label var ni05a_birthmo   `"Month of birth"'
label var ni05a_birthyr   `"Year of birth"'
label var ni05a_marst     `"Marital status"'
label var ni05a_indig     `"Indigenous group (self-assessment)"'
label var ni05a_indiggrp  `"Indigenous or ethnic group"'
label var ni05a_indlang   `"Speaks indigenous language"'
label var ni05a_bplstat   `"Lives in municipality of birth"'
label var ni05a_bpldept   `"Department of birth"'
label var ni05a_yrimmig   `"Year of arrival to Nicaragua"'
label var ni05a_bpltype   `"Urban status of place of birth"'
label var ni05a_mig5yr    `"Lived in same municipality as 2000"'
label var ni05a_dept5yr   `"Department where lived in 2000"'
label var ni05a_immig5yr  `"Year arrived in Nicaragua (living abroad in 2000)"'
label var ni05a_pl5yrtype `"Urban status of place where lived in 2000"'
label var ni05a_relig     `"Religion"'
label var ni05a_lit       `"Literacy"'
label var ni05a_school    `"Currently attends school"'
label var ni05a_edlevel   `"Highest educational level completed"'
label var ni05a_edattan   `"Educational attainment"'
label var ni05a_univtech  `"Completed university or technical studies"'
label var ni05a_study2    `"Course of studies or major (2-digit)"'
label var ni05a_worked    `"Work status last week"'
label var ni05a_absent    `"Absent from job last week"'
label var ni05a_work2wk   `"Looking for work last two weeks"'
label var ni05a_nolookwk  `"Reason for not looking for work"'
label var ni05a_nonwork   `"Activity performed last week (inactive persons)"'
label var ni05a_workpast  `"Previous job"'
label var ni05a_othactiv  `"Informal work last week"'
label var ni05a_workhere  `"Workplace location"'
label var ni05a_tempwork  `"Permanent or temporary job"'
label var ni05a_occ3      `"Occupation (ISCO 88, 3 digits)"'
label var ni05a_classwrk  `"Class of worker"'
label var ni05a_ind3      `"Industry (ISIC 3.1, 3 digits))"'
label var ni05a_children  `"Has had live-born children"'
label var ni05a_chborn    `"Total live-born children"'
label var ni05a_chbornm   `"Total live-born males"'
label var ni05a_chbornf   `"Total live-born females"'
label var ni05a_chsurv    `"Total children currently alive"'
label var ni05a_chsurvm   `"Total males currently alive"'
label var ni05a_chsurvf   `"Total females currently alive"'
label var ni05a_bthmo     `"Month of birth of last live-born child"'
label var ni05a_bthyr     `"Year of birth of last live-born child"'
label var ni05a_bthyr     `"Year of birth of last live-born child"'
label var ni05a_birthloc  `"Location where last child was born"'
label var ni05a_bthcert   `"Certificate from Ministry of Health for last live-born child"'
label var ni05a_econ      `"Employment status"'

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

label define ni05a_hhnum_lbl 01 `"1"'
label define ni05a_hhnum_lbl 02 `"2"', add
label define ni05a_hhnum_lbl 03 `"3"', add
label define ni05a_hhnum_lbl 04 `"4"', add
label define ni05a_hhnum_lbl 05 `"5"', add
label define ni05a_hhnum_lbl 06 `"6"', add
label define ni05a_hhnum_lbl 07 `"7"', add
label define ni05a_hhnum_lbl 08 `"8"', add
label define ni05a_hhnum_lbl 09 `"9"', add
label define ni05a_hhnum_lbl 10 `"10"', add
label define ni05a_hhnum_lbl 11 `"11"', add
label values ni05a_hhnum ni05a_hhnum_lbl

label define ni05a_hhn_lbl 01 `"1"'
label define ni05a_hhn_lbl 02 `"2"', add
label define ni05a_hhn_lbl 03 `"3"', add
label define ni05a_hhn_lbl 04 `"4"', add
label define ni05a_hhn_lbl 05 `"5"', add
label define ni05a_hhn_lbl 06 `"6"', add
label define ni05a_hhn_lbl 07 `"7"', add
label define ni05a_hhn_lbl 08 `"8"', add
label define ni05a_hhn_lbl 09 `"9"', add
label define ni05a_hhn_lbl 11 `"11"', add
label values ni05a_hhn ni05a_hhn_lbl

label define ni05a_pernd_lbl 00 `"0"'
label define ni05a_pernd_lbl 01 `"1"', add
label define ni05a_pernd_lbl 02 `"2"', add
label define ni05a_pernd_lbl 03 `"3"', add
label define ni05a_pernd_lbl 04 `"4"', add
label define ni05a_pernd_lbl 05 `"5"', add
label define ni05a_pernd_lbl 06 `"6"', add
label define ni05a_pernd_lbl 07 `"7"', add
label define ni05a_pernd_lbl 08 `"8"', add
label define ni05a_pernd_lbl 09 `"9"', add
label define ni05a_pernd_lbl 10 `"10"', add
label define ni05a_pernd_lbl 11 `"11"', add
label define ni05a_pernd_lbl 12 `"12"', add
label define ni05a_pernd_lbl 13 `"13"', add
label define ni05a_pernd_lbl 14 `"14"', add
label define ni05a_pernd_lbl 15 `"15"', add
label define ni05a_pernd_lbl 16 `"16"', add
label define ni05a_pernd_lbl 17 `"17"', add
label define ni05a_pernd_lbl 18 `"18"', add
label define ni05a_pernd_lbl 19 `"19"', add
label define ni05a_pernd_lbl 20 `"20"', add
label define ni05a_pernd_lbl 21 `"21"', add
label define ni05a_pernd_lbl 22 `"22"', add
label define ni05a_pernd_lbl 23 `"23"', add
label define ni05a_pernd_lbl 24 `"24"', add
label define ni05a_pernd_lbl 25 `"25"', add
label define ni05a_pernd_lbl 26 `"26"', add
label define ni05a_pernd_lbl 27 `"27"', add
label define ni05a_pernd_lbl 28 `"28"', add
label define ni05a_pernd_lbl 29 `"29"', add
label define ni05a_pernd_lbl 30 `"30"', add
label values ni05a_pernd ni05a_pernd_lbl

label define ni05a_pern_lbl 00 `"0"'
label define ni05a_pern_lbl 01 `"1"', add
label define ni05a_pern_lbl 02 `"2"', add
label define ni05a_pern_lbl 03 `"3"', add
label define ni05a_pern_lbl 04 `"4"', add
label define ni05a_pern_lbl 05 `"5"', add
label define ni05a_pern_lbl 06 `"6"', add
label define ni05a_pern_lbl 07 `"7"', add
label define ni05a_pern_lbl 08 `"8"', add
label define ni05a_pern_lbl 09 `"9"', add
label define ni05a_pern_lbl 10 `"10"', add
label define ni05a_pern_lbl 11 `"11"', add
label define ni05a_pern_lbl 12 `"12"', add
label define ni05a_pern_lbl 13 `"13"', add
label define ni05a_pern_lbl 14 `"14"', add
label define ni05a_pern_lbl 15 `"15"', add
label define ni05a_pern_lbl 16 `"16"', add
label define ni05a_pern_lbl 17 `"17"', add
label define ni05a_pern_lbl 18 `"18"', add
label define ni05a_pern_lbl 19 `"19"', add
label define ni05a_pern_lbl 20 `"20"', add
label define ni05a_pern_lbl 21 `"21"', add
label define ni05a_pern_lbl 22 `"22"', add
label define ni05a_pern_lbl 23 `"23"', add
label define ni05a_pern_lbl 24 `"24"', add
label define ni05a_pern_lbl 25 `"25"', add
label define ni05a_pern_lbl 26 `"26"', add
label define ni05a_pern_lbl 27 `"27"', add
label define ni05a_pern_lbl 28 `"28"', add
label define ni05a_pern_lbl 29 `"29"', add
label define ni05a_pern_lbl 30 `"30"', add
label values ni05a_pern ni05a_pern_lbl

label define ni05a_fbig_lbl 0 `"No problem"'
label define ni05a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define ni05a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values ni05a_fbig ni05a_fbig_lbl

label define ni05a_dept_lbl 05 `"Nueva Segovia"'
label define ni05a_dept_lbl 10 `"Jinotega"', add
label define ni05a_dept_lbl 20 `"Madríz"', add
label define ni05a_dept_lbl 25 `"Estelí"', add
label define ni05a_dept_lbl 30 `"Chinandega"', add
label define ni05a_dept_lbl 35 `"León"', add
label define ni05a_dept_lbl 40 `"Matagalpa"', add
label define ni05a_dept_lbl 50 `"Boaco"', add
label define ni05a_dept_lbl 55 `"Managua"', add
label define ni05a_dept_lbl 60 `"Masaya"', add
label define ni05a_dept_lbl 65 `"Chontales"', add
label define ni05a_dept_lbl 70 `"Granada"', add
label define ni05a_dept_lbl 75 `"Carazo"', add
label define ni05a_dept_lbl 80 `"Rivas"', add
label define ni05a_dept_lbl 85 `"Río San Juan"', add
label define ni05a_dept_lbl 91 `"Atlantico Norte"', add
label define ni05a_dept_lbl 93 `"Atlantico Sur"', add
label values ni05a_dept ni05a_dept_lbl

label define ni05a_muni_lbl 0505 `"Jalapa"'
label define ni05a_muni_lbl 0515 `"El Jícaro"', add
label define ni05a_muni_lbl 0545 `"Ocotal"', add
label define ni05a_muni_lbl 0555 `"Quilalí"', add
label define ni05a_muni_lbl 0599 `"Rest of Nueva Segovia department"', add
label define ni05a_muni_lbl 1005 `"Wiwilí (Jinotega)"', add
label define ni05a_muni_lbl 1010 `"El Cuá"', add
label define ni05a_muni_lbl 1012 `"San José Bocay"', add
label define ni05a_muni_lbl 1015 `"Santa María de Pantasma"', add
label define ni05a_muni_lbl 1025 `"San Sebastián de Yalí"', add
label define ni05a_muni_lbl 1035 `"Jinotega"', add
label define ni05a_muni_lbl 1099 `"Rest of Jinotego department"', add
label define ni05a_muni_lbl 2005 `"Somoto"', add
label define ni05a_muni_lbl 2099 `"Rest of Madríz department"', add
label define ni05a_muni_lbl 2505 `"Pueblo Nuevo"', add
label define ni05a_muni_lbl 2510 `"Condega"', add
label define ni05a_muni_lbl 2515 `"Estelí"', add
label define ni05a_muni_lbl 2525 `"La Trinidad"', add
label define ni05a_muni_lbl 2599 `"Rest of Estelí department"', add
label define ni05a_muni_lbl 3025 `"El Viejo"', add
label define ni05a_muni_lbl 3035 `"Somotillo"', add
label define ni05a_muni_lbl 3040 `"Villanueva"', add
label define ni05a_muni_lbl 3045 `"Chinandega"', add
label define ni05a_muni_lbl 3055 `"Corinto"', add
label define ni05a_muni_lbl 3060 `"Chichigalpa"', add
label define ni05a_muni_lbl 3099 `"Rest of Chinandega department"', add
label define ni05a_muni_lbl 3510 `"El Sauce"', add
label define ni05a_muni_lbl 3525 `"Larreynaga"', add
label define ni05a_muni_lbl 3530 `"Telica"', add
label define ni05a_muni_lbl 3540 `"León"', add
label define ni05a_muni_lbl 3545 `"La Paz Centro"', add
label define ni05a_muni_lbl 3550 `"Nagarote"', add
label define ni05a_muni_lbl 3599 `"Rest of León department"', add
label define ni05a_muni_lbl 4005 `"Rancho Grande"', add
label define ni05a_muni_lbl 4010 `"Río Blanco"', add
label define ni05a_muni_lbl 4015 `"Tuma-La Dalia"', add
label define ni05a_muni_lbl 4025 `"Sébaco"', add
label define ni05a_muni_lbl 4030 `"Matagalpa"', add
label define ni05a_muni_lbl 4035 `"San Ramón"', add
label define ni05a_muni_lbl 4040 `"Matiguás"', add
label define ni05a_muni_lbl 4065 `"Ciudad Darío"', add
label define ni05a_muni_lbl 4099 `"Rest of Matagalpa department"', add
label define ni05a_muni_lbl 5010 `"Boaco"', add
label define ni05a_muni_lbl 5015 `"Camoapa"', add
label define ni05a_muni_lbl 5025 `"Teustepe"', add
label define ni05a_muni_lbl 5030 `"San Lorenzo"', add
label define ni05a_muni_lbl 5099 `"Rest of Boaco department"', add
label define ni05a_muni_lbl 5510 `"Tipitapa"', add
label define ni05a_muni_lbl 5515 `"Mateare"', add
label define ni05a_muni_lbl 5520 `"Villa El Carmen"', add
label define ni05a_muni_lbl 5522 `"Ciudad Sandino"', add
label define ni05a_muni_lbl 5525 `"Managua"', add
label define ni05a_muni_lbl 5530 `"Ticuantepe"', add
label define ni05a_muni_lbl 5535 `"San Rafael del Sur"', add
label define ni05a_muni_lbl 5599 `"Rest of Managua department"', add
label define ni05a_muni_lbl 6005 `"Nindirí"', add
label define ni05a_muni_lbl 6010 `"Masaya"', add
label define ni05a_muni_lbl 6020 `"La Concepción"', add
label define ni05a_muni_lbl 6025 `"Masatepe"', add
label define ni05a_muni_lbl 6099 `"Rest of Masaya department"', add
label define ni05a_muni_lbl 6510 `"Juigalpa"', add
label define ni05a_muni_lbl 6505 `"Comalapa"', add
label define ni05a_muni_lbl 6599 `"Rest of Chontales department"', add
label define ni05a_muni_lbl 7015 `"Granada"', add
label define ni05a_muni_lbl 7020 `"Nandaime"', add
label define ni05a_muni_lbl 7099 `"Rest of Granada department"', add
label define ni05a_muni_lbl 7505 `"San Marcos"', add
label define ni05a_muni_lbl 7510 `"Jinotepe"', add
label define ni05a_muni_lbl 7520 `"Diriamba"', add
label define ni05a_muni_lbl 7599 `"Rest of Carazo department"', add
label define ni05a_muni_lbl 8005 `"Tola"', add
label define ni05a_muni_lbl 8040 `"Rivas"', add
label define ni05a_muni_lbl 8099 `"Rest of Rivas department"', add
label define ni05a_muni_lbl 8520 `"San Carlos"', add
label define ni05a_muni_lbl 8525 `"El Castillo"', add
label define ni05a_muni_lbl 8599 `"Rest of Río San Juan department"', add
label define ni05a_muni_lbl 9105 `"Waspán"', add
label define ni05a_muni_lbl 9110 `"Puerto Cabezas"', add
label define ni05a_muni_lbl 9115 `"Rosita"', add
label define ni05a_muni_lbl 9125 `"Waslala"', add
label define ni05a_muni_lbl 9127 `"Mulukuku"', add
label define ni05a_muni_lbl 9130 `"Siuna"', add
label define ni05a_muni_lbl 9199 `"Rest of Atlantico Norte department"', add
label define ni05a_muni_lbl 9305 `"Paiwás"', add
label define ni05a_muni_lbl 9310 `"La Cruz de Río Grande"', add
label define ni05a_muni_lbl 9320 `"El Rama"', add
label define ni05a_muni_lbl 9325 `"Muelle de los Bueyes"', add
label define ni05a_muni_lbl 9340 `"Bluefields"', add
label define ni05a_muni_lbl 9345 `"Nueva Guinea"', add
label define ni05a_muni_lbl 9399 `"Rest of Atlantico Sur department"', add
label values ni05a_muni ni05a_muni_lbl

label define ni05a_urban_lbl 1 `"Urban"'
label define ni05a_urban_lbl 2 `"Semi-urban"', add
label define ni05a_urban_lbl 3 `"Rural"', add
label values ni05a_urban ni05a_urban_lbl

label define ni05a_dwtype_lbl 01 `"House"'
label define ni05a_dwtype_lbl 02 `"Villa/country house"', add
label define ni05a_dwtype_lbl 03 `"Apartment"', add
label define ni05a_dwtype_lbl 04 `"Room in a tenement"', add
label define ni05a_dwtype_lbl 05 `"Rural ranch house or shack"', add
label define ni05a_dwtype_lbl 06 `"Improvised dwelling"', add
label define ni05a_dwtype_lbl 07 `"Commercial site used as a dwelling"', add
label define ni05a_dwtype_lbl 08 `"Hotel"', add
label define ni05a_dwtype_lbl 09 `"Boarding house/motel/hostel"', add
label define ni05a_dwtype_lbl 10 `"Guest house"', add
label define ni05a_dwtype_lbl 13 `"Asylum/shelter"', add
label define ni05a_dwtype_lbl 14 `"Orphanage"', add
label define ni05a_dwtype_lbl 15 `"Religious institution/boarding school"', add
label define ni05a_dwtype_lbl 16 `"Jail or juvenile detention center"', add
label define ni05a_dwtype_lbl 18 `"Other"', add
label define ni05a_dwtype_lbl 19 `"Homeless"', add
label values ni05a_dwtype ni05a_dwtype_lbl

label define ni05a_occstat_lbl 0 `"NIU (not in universe)"'
label define ni05a_occstat_lbl 1 `"With inhabitants present"', add
label define ni05a_occstat_lbl 2 `"With inhabitants absent"', add
label define ni05a_occstat_lbl 3 `"For sale or rent"', add
label define ni05a_occstat_lbl 4 `"For temporary/seasonal use"', add
label define ni05a_occstat_lbl 5 `"Under construction"', add
label define ni05a_occstat_lbl 6 `"Undergoing repairs"', add
label define ni05a_occstat_lbl 7 `"Temporarily unoccupied"', add
label define ni05a_occstat_lbl 8 `"Abandoned"', add
label define ni05a_occstat_lbl 9 `"In ruins or destroyed"', add
label values ni05a_occstat ni05a_occstat_lbl

label define ni05a_walls_lbl 01 `"Cement or concrete blocks"'
label define ni05a_walls_lbl 02 `"Quarried stone"', add
label define ni05a_walls_lbl 03 `"Reinforced concrete"', add
label define ni05a_walls_lbl 04 `"Concrete slab"', add
label define ni05a_walls_lbl 05 `"Covintec panels [wire mesh over expanded foam covered with plaster]"', add
label define ni05a_walls_lbl 07 `"Plycem/Nicalit sheeting [sheeting of wood or other fiber]"', add
label define ni05a_walls_lbl 08 `"Concrete and wood (mini-skirted)"', add
label define ni05a_walls_lbl 09 `"Concrete and other materials"', add
label define ni05a_walls_lbl 10 `"Brick or clay block"', add
label define ni05a_walls_lbl 11 `"Adobe or taquezal [building material similar to adobe]"', add
label define ni05a_walls_lbl 12 `"Wood"', add
label define ni05a_walls_lbl 13 `"Zinc"', add
label define ni05a_walls_lbl 14 `"Bamboo/[barul]/cane/palm"', add
label define ni05a_walls_lbl 15 `"Rubble or discarded materials"', add
label define ni05a_walls_lbl 16 `"Other"', add
label define ni05a_walls_lbl 98 `"Unknown"', add
label define ni05a_walls_lbl 99 `"NIU (not in universe)"', add
label values ni05a_walls ni05a_walls_lbl

label define ni05a_roof_lbl 1 `"Zinc"'
label define ni05a_roof_lbl 2 `"Plycem/Nicalit sheeting [sheeting of wood or other fiber]"', add
label define ni05a_roof_lbl 3 `"Clay or cement tiles"', add
label define ni05a_roof_lbl 4 `"Reinforced concrete panels"', add
label define ni05a_roof_lbl 5 `"Straw, palm and similar materials"', add
label define ni05a_roof_lbl 6 `"Rubble or discarded materials"', add
label define ni05a_roof_lbl 7 `"Other"', add
label define ni05a_roof_lbl 8 `"Unknown"', add
label define ni05a_roof_lbl 9 `"NIU (not in universe)"', add
label values ni05a_roof ni05a_roof_lbl

label define ni05a_floor_lbl 1 `"Cement block or stone/mosaic/ceramic tile"'
label define ni05a_floor_lbl 2 `"Concrete tile"', add
label define ni05a_floor_lbl 3 `"Clay block"', add
label define ni05a_floor_lbl 4 `"Wood (wood planks)"', add
label define ni05a_floor_lbl 5 `"Dirt"', add
label define ni05a_floor_lbl 6 `"Other"', add
label define ni05a_floor_lbl 8 `"Unknown"', add
label define ni05a_floor_lbl 9 `"NIU (not in universe)"', add
label values ni05a_floor ni05a_floor_lbl

label define ni05a_lighting_lbl 01 `"Electrical lighting"'
label define ni05a_lighting_lbl 02 `"Electrical motor or generator"', add
label define ni05a_lighting_lbl 03 `"Solar panel"', add
label define ni05a_lighting_lbl 04 `"Automobile battery"', add
label define ni05a_lighting_lbl 05 `"Kerosene gas (lamp)"', add
label define ni05a_lighting_lbl 06 `"Candle"', add
label define ni05a_lighting_lbl 07 `"Ocote [oil-rich local wood]"', add
label define ni05a_lighting_lbl 08 `"Other"', add
label define ni05a_lighting_lbl 09 `"None"', add
label define ni05a_lighting_lbl 98 `"Unknown"', add
label define ni05a_lighting_lbl 99 `"NIU (not in universe)"', add
label values ni05a_lighting ni05a_lighting_lbl

label define ni05a_watsup_lbl 01 `"Pipes inside the dwelling"'
label define ni05a_watsup_lbl 02 `"Pipes outside the dwelling but on the property"', add
label define ni05a_watsup_lbl 03 `"Public faucet"', add
label define ni05a_watsup_lbl 04 `"Private well"', add
label define ni05a_watsup_lbl 05 `"Public well"', add
label define ni05a_watsup_lbl 06 `"Natural spring or falls"', add
label define ni05a_watsup_lbl 07 `"River/stream/creek"', add
label define ni05a_watsup_lbl 08 `"Truck/cart/tanks"', add
label define ni05a_watsup_lbl 09 `"From another dwelling/neighbor/business"', add
label define ni05a_watsup_lbl 10 `"Other"', add
label define ni05a_watsup_lbl 98 `"Unknown"', add
label define ni05a_watsup_lbl 99 `"NIU (not in universe)"', add
label values ni05a_watsup ni05a_watsup_lbl

label define ni05a_ownershp_lbl 1 `"Rented"'
label define ni05a_ownershp_lbl 2 `"Allotted or lent for free"', add
label define ni05a_ownershp_lbl 3 `"Being paid in installments or mortgaged"', add
label define ni05a_ownershp_lbl 4 `"Borrowed"', add
label define ni05a_ownershp_lbl 5 `"Owned without legal contract"', add
label define ni05a_ownershp_lbl 6 `"Owned with legal contract"', add
label define ni05a_ownershp_lbl 7 `"Other"', add
label define ni05a_ownershp_lbl 8 `"Unknown"', add
label define ni05a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values ni05a_ownershp ni05a_ownershp_lbl

label define ni05a_htlhkm_lbl 001 `"1"'
label define ni05a_htlhkm_lbl 002 `"2"', add
label define ni05a_htlhkm_lbl 003 `"3"', add
label define ni05a_htlhkm_lbl 004 `"4"', add
label define ni05a_htlhkm_lbl 005 `"5"', add
label define ni05a_htlhkm_lbl 006 `"6"', add
label define ni05a_htlhkm_lbl 007 `"7"', add
label define ni05a_htlhkm_lbl 008 `"8"', add
label define ni05a_htlhkm_lbl 009 `"9"', add
label define ni05a_htlhkm_lbl 010 `"10"', add
label define ni05a_htlhkm_lbl 011 `"11"', add
label define ni05a_htlhkm_lbl 012 `"12"', add
label define ni05a_htlhkm_lbl 013 `"13"', add
label define ni05a_htlhkm_lbl 014 `"14"', add
label define ni05a_htlhkm_lbl 015 `"15"', add
label define ni05a_htlhkm_lbl 016 `"16"', add
label define ni05a_htlhkm_lbl 017 `"17"', add
label define ni05a_htlhkm_lbl 018 `"18"', add
label define ni05a_htlhkm_lbl 019 `"19"', add
label define ni05a_htlhkm_lbl 020 `"20"', add
label define ni05a_htlhkm_lbl 021 `"21"', add
label define ni05a_htlhkm_lbl 022 `"22"', add
label define ni05a_htlhkm_lbl 023 `"23"', add
label define ni05a_htlhkm_lbl 024 `"24"', add
label define ni05a_htlhkm_lbl 025 `"25"', add
label define ni05a_htlhkm_lbl 026 `"26"', add
label define ni05a_htlhkm_lbl 027 `"27"', add
label define ni05a_htlhkm_lbl 028 `"28"', add
label define ni05a_htlhkm_lbl 029 `"29"', add
label define ni05a_htlhkm_lbl 030 `"30"', add
label define ni05a_htlhkm_lbl 031 `"31"', add
label define ni05a_htlhkm_lbl 032 `"32"', add
label define ni05a_htlhkm_lbl 033 `"33"', add
label define ni05a_htlhkm_lbl 034 `"34"', add
label define ni05a_htlhkm_lbl 035 `"35"', add
label define ni05a_htlhkm_lbl 036 `"36"', add
label define ni05a_htlhkm_lbl 037 `"37"', add
label define ni05a_htlhkm_lbl 038 `"38"', add
label define ni05a_htlhkm_lbl 039 `"39"', add
label define ni05a_htlhkm_lbl 040 `"40"', add
label define ni05a_htlhkm_lbl 041 `"41"', add
label define ni05a_htlhkm_lbl 042 `"42"', add
label define ni05a_htlhkm_lbl 043 `"43"', add
label define ni05a_htlhkm_lbl 044 `"44"', add
label define ni05a_htlhkm_lbl 045 `"45"', add
label define ni05a_htlhkm_lbl 046 `"46"', add
label define ni05a_htlhkm_lbl 048 `"48"', add
label define ni05a_htlhkm_lbl 050 `"50+"', add
label define ni05a_htlhkm_lbl 997 `"Answer in other measurement unit"', add
label define ni05a_htlhkm_lbl 998 `"Unknown"', add
label define ni05a_htlhkm_lbl 999 `"NIU (not in universe)"', add
label values ni05a_htlhkm ni05a_htlhkm_lbl

label define ni05a_hlthmet_lbl 0010 `"10 or less"'
label define ni05a_hlthmet_lbl 0012 `"12"', add
label define ni05a_hlthmet_lbl 0015 `"15"', add
label define ni05a_hlthmet_lbl 0017 `"17"', add
label define ni05a_hlthmet_lbl 0018 `"18"', add
label define ni05a_hlthmet_lbl 0019 `"19"', add
label define ni05a_hlthmet_lbl 0020 `"20"', add
label define ni05a_hlthmet_lbl 0022 `"22"', add
label define ni05a_hlthmet_lbl 0025 `"25"', add
label define ni05a_hlthmet_lbl 0027 `"27"', add
label define ni05a_hlthmet_lbl 0030 `"30"', add
label define ni05a_hlthmet_lbl 0031 `"31"', add
label define ni05a_hlthmet_lbl 0033 `"33"', add
label define ni05a_hlthmet_lbl 0035 `"35"', add
label define ni05a_hlthmet_lbl 0040 `"40"', add
label define ni05a_hlthmet_lbl 0042 `"42"', add
label define ni05a_hlthmet_lbl 0045 `"45"', add
label define ni05a_hlthmet_lbl 0048 `"48"', add
label define ni05a_hlthmet_lbl 0050 `"50"', add
label define ni05a_hlthmet_lbl 0052 `"52"', add
label define ni05a_hlthmet_lbl 0055 `"55"', add
label define ni05a_hlthmet_lbl 0060 `"60"', add
label define ni05a_hlthmet_lbl 0063 `"63"', add
label define ni05a_hlthmet_lbl 0065 `"65"', add
label define ni05a_hlthmet_lbl 0070 `"70"', add
label define ni05a_hlthmet_lbl 0072 `"72"', add
label define ni05a_hlthmet_lbl 0075 `"75"', add
label define ni05a_hlthmet_lbl 0077 `"77"', add
label define ni05a_hlthmet_lbl 0080 `"80"', add
label define ni05a_hlthmet_lbl 0083 `"83"', add
label define ni05a_hlthmet_lbl 0085 `"85"', add
label define ni05a_hlthmet_lbl 0090 `"90"', add
label define ni05a_hlthmet_lbl 0092 `"92"', add
label define ni05a_hlthmet_lbl 0095 `"95"', add
label define ni05a_hlthmet_lbl 0096 `"96"', add
label define ni05a_hlthmet_lbl 0097 `"97"', add
label define ni05a_hlthmet_lbl 0098 `"98"', add
label define ni05a_hlthmet_lbl 0100 `"100"', add
label define ni05a_hlthmet_lbl 0101 `"101"', add
label define ni05a_hlthmet_lbl 0102 `"102"', add
label define ni05a_hlthmet_lbl 0105 `"105"', add
label define ni05a_hlthmet_lbl 0110 `"110"', add
label define ni05a_hlthmet_lbl 0118 `"118"', add
label define ni05a_hlthmet_lbl 0120 `"120"', add
label define ni05a_hlthmet_lbl 0122 `"122"', add
label define ni05a_hlthmet_lbl 0124 `"124"', add
label define ni05a_hlthmet_lbl 0125 `"125"', add
label define ni05a_hlthmet_lbl 0126 `"126"', add
label define ni05a_hlthmet_lbl 0128 `"128"', add
label define ni05a_hlthmet_lbl 0130 `"130"', add
label define ni05a_hlthmet_lbl 0140 `"140"', add
label define ni05a_hlthmet_lbl 0145 `"145"', add
label define ni05a_hlthmet_lbl 0150 `"150"', add
label define ni05a_hlthmet_lbl 0160 `"160"', add
label define ni05a_hlthmet_lbl 0162 `"162"', add
label define ni05a_hlthmet_lbl 0165 `"165"', add
label define ni05a_hlthmet_lbl 0170 `"170"', add
label define ni05a_hlthmet_lbl 0175 `"175"', add
label define ni05a_hlthmet_lbl 0180 `"180"', add
label define ni05a_hlthmet_lbl 0190 `"190"', add
label define ni05a_hlthmet_lbl 0200 `"200"', add
label define ni05a_hlthmet_lbl 0202 `"202"', add
label define ni05a_hlthmet_lbl 0205 `"205"', add
label define ni05a_hlthmet_lbl 0210 `"210"', add
label define ni05a_hlthmet_lbl 0220 `"220"', add
label define ni05a_hlthmet_lbl 0225 `"225"', add
label define ni05a_hlthmet_lbl 0230 `"230"', add
label define ni05a_hlthmet_lbl 0240 `"240"', add
label define ni05a_hlthmet_lbl 0248 `"248"', add
label define ni05a_hlthmet_lbl 0250 `"250"', add
label define ni05a_hlthmet_lbl 0260 `"260"', add
label define ni05a_hlthmet_lbl 0265 `"265"', add
label define ni05a_hlthmet_lbl 0270 `"270"', add
label define ni05a_hlthmet_lbl 0275 `"275"', add
label define ni05a_hlthmet_lbl 0280 `"280"', add
label define ni05a_hlthmet_lbl 0284 `"284"', add
label define ni05a_hlthmet_lbl 0290 `"290"', add
label define ni05a_hlthmet_lbl 0295 `"295"', add
label define ni05a_hlthmet_lbl 0298 `"298"', add
label define ni05a_hlthmet_lbl 0300 `"300"', add
label define ni05a_hlthmet_lbl 0305 `"305"', add
label define ni05a_hlthmet_lbl 0308 `"308"', add
label define ni05a_hlthmet_lbl 0309 `"309"', add
label define ni05a_hlthmet_lbl 0310 `"310"', add
label define ni05a_hlthmet_lbl 0312 `"312"', add
label define ni05a_hlthmet_lbl 0320 `"320"', add
label define ni05a_hlthmet_lbl 0330 `"330"', add
label define ni05a_hlthmet_lbl 0335 `"335"', add
label define ni05a_hlthmet_lbl 0340 `"340"', add
label define ni05a_hlthmet_lbl 0350 `"350"', add
label define ni05a_hlthmet_lbl 0355 `"355"', add
label define ni05a_hlthmet_lbl 0360 `"360"', add
label define ni05a_hlthmet_lbl 0370 `"370"', add
label define ni05a_hlthmet_lbl 0380 `"380"', add
label define ni05a_hlthmet_lbl 0381 `"381"', add
label define ni05a_hlthmet_lbl 0390 `"390"', add
label define ni05a_hlthmet_lbl 0400 `"400"', add
label define ni05a_hlthmet_lbl 0406 `"406"', add
label define ni05a_hlthmet_lbl 0410 `"410"', add
label define ni05a_hlthmet_lbl 0415 `"415"', add
label define ni05a_hlthmet_lbl 0420 `"420"', add
label define ni05a_hlthmet_lbl 0425 `"425"', add
label define ni05a_hlthmet_lbl 0427 `"427"', add
label define ni05a_hlthmet_lbl 0430 `"430"', add
label define ni05a_hlthmet_lbl 0440 `"440"', add
label define ni05a_hlthmet_lbl 0450 `"450"', add
label define ni05a_hlthmet_lbl 0455 `"455"', add
label define ni05a_hlthmet_lbl 0460 `"460"', add
label define ni05a_hlthmet_lbl 0465 `"465"', add
label define ni05a_hlthmet_lbl 0470 `"470"', add
label define ni05a_hlthmet_lbl 0475 `"475"', add
label define ni05a_hlthmet_lbl 0480 `"480"', add
label define ni05a_hlthmet_lbl 0490 `"490"', add
label define ni05a_hlthmet_lbl 0498 `"498"', add
label define ni05a_hlthmet_lbl 0500 `"500"', add
label define ni05a_hlthmet_lbl 0501 `"501"', add
label define ni05a_hlthmet_lbl 0503 `"503"', add
label define ni05a_hlthmet_lbl 0505 `"505"', add
label define ni05a_hlthmet_lbl 0510 `"510"', add
label define ni05a_hlthmet_lbl 0515 `"515"', add
label define ni05a_hlthmet_lbl 0520 `"520"', add
label define ni05a_hlthmet_lbl 0530 `"530"', add
label define ni05a_hlthmet_lbl 0534 `"534"', add
label define ni05a_hlthmet_lbl 0535 `"535"', add
label define ni05a_hlthmet_lbl 0538 `"538"', add
label define ni05a_hlthmet_lbl 0540 `"540"', add
label define ni05a_hlthmet_lbl 0550 `"550"', add
label define ni05a_hlthmet_lbl 0560 `"560"', add
label define ni05a_hlthmet_lbl 0568 `"568"', add
label define ni05a_hlthmet_lbl 0570 `"570"', add
label define ni05a_hlthmet_lbl 0580 `"580"', add
label define ni05a_hlthmet_lbl 0592 `"592"', add
label define ni05a_hlthmet_lbl 0595 `"595"', add
label define ni05a_hlthmet_lbl 0600 `"600"', add
label define ni05a_hlthmet_lbl 0605 `"605"', add
label define ni05a_hlthmet_lbl 0620 `"620"', add
label define ni05a_hlthmet_lbl 0630 `"630"', add
label define ni05a_hlthmet_lbl 0650 `"650"', add
label define ni05a_hlthmet_lbl 0660 `"660"', add
label define ni05a_hlthmet_lbl 0670 `"670"', add
label define ni05a_hlthmet_lbl 0680 `"680"', add
label define ni05a_hlthmet_lbl 0700 `"700"', add
label define ni05a_hlthmet_lbl 0710 `"710"', add
label define ni05a_hlthmet_lbl 0720 `"720"', add
label define ni05a_hlthmet_lbl 0730 `"730"', add
label define ni05a_hlthmet_lbl 0740 `"740"', add
label define ni05a_hlthmet_lbl 0745 `"745"', add
label define ni05a_hlthmet_lbl 0750 `"750"', add
label define ni05a_hlthmet_lbl 0760 `"760"', add
label define ni05a_hlthmet_lbl 0780 `"780"', add
label define ni05a_hlthmet_lbl 0800 `"800"', add
label define ni05a_hlthmet_lbl 0801 `"801"', add
label define ni05a_hlthmet_lbl 0810 `"810"', add
label define ni05a_hlthmet_lbl 0820 `"820"', add
label define ni05a_hlthmet_lbl 0830 `"830"', add
label define ni05a_hlthmet_lbl 0832 `"832"', add
label define ni05a_hlthmet_lbl 0840 `"840"', add
label define ni05a_hlthmet_lbl 0846 `"846"', add
label define ni05a_hlthmet_lbl 0850 `"850"', add
label define ni05a_hlthmet_lbl 0860 `"860"', add
label define ni05a_hlthmet_lbl 0870 `"870"', add
label define ni05a_hlthmet_lbl 0880 `"880"', add
label define ni05a_hlthmet_lbl 0898 `"898"', add
label define ni05a_hlthmet_lbl 0900 `"900+"', add
label define ni05a_hlthmet_lbl 9997 `"Answer in other measurement unit"', add
label define ni05a_hlthmet_lbl 9998 `"Unknown"', add
label define ni05a_hlthmet_lbl 9999 `"NIU (not in universe)"', add
label values ni05a_hlthmet ni05a_hlthmet_lbl

label define ni05a_hlthblk_lbl 01 `"1"'
label define ni05a_hlthblk_lbl 02 `"2"', add
label define ni05a_hlthblk_lbl 03 `"3"', add
label define ni05a_hlthblk_lbl 04 `"4"', add
label define ni05a_hlthblk_lbl 05 `"5"', add
label define ni05a_hlthblk_lbl 06 `"6"', add
label define ni05a_hlthblk_lbl 07 `"7"', add
label define ni05a_hlthblk_lbl 08 `"8"', add
label define ni05a_hlthblk_lbl 09 `"9"', add
label define ni05a_hlthblk_lbl 10 `"10"', add
label define ni05a_hlthblk_lbl 11 `"11"', add
label define ni05a_hlthblk_lbl 12 `"12"', add
label define ni05a_hlthblk_lbl 13 `"13"', add
label define ni05a_hlthblk_lbl 14 `"14"', add
label define ni05a_hlthblk_lbl 15 `"15"', add
label define ni05a_hlthblk_lbl 16 `"16"', add
label define ni05a_hlthblk_lbl 17 `"17"', add
label define ni05a_hlthblk_lbl 18 `"18"', add
label define ni05a_hlthblk_lbl 19 `"19"', add
label define ni05a_hlthblk_lbl 20 `"20"', add
label define ni05a_hlthblk_lbl 21 `"21"', add
label define ni05a_hlthblk_lbl 22 `"22"', add
label define ni05a_hlthblk_lbl 23 `"23"', add
label define ni05a_hlthblk_lbl 24 `"24"', add
label define ni05a_hlthblk_lbl 25 `"25"', add
label define ni05a_hlthblk_lbl 26 `"26"', add
label define ni05a_hlthblk_lbl 28 `"28"', add
label define ni05a_hlthblk_lbl 29 `"29"', add
label define ni05a_hlthblk_lbl 30 `"30+"', add
label define ni05a_hlthblk_lbl 97 `"Answer in other measurement unit"', add
label define ni05a_hlthblk_lbl 98 `"Unknown"', add
label define ni05a_hlthblk_lbl 99 `"NIU (not in universe)"', add
label values ni05a_hlthblk ni05a_hlthblk_lbl

label define ni05a_hlthvara_lbl 0010 `"10 or less"'
label define ni05a_hlthvara_lbl 0011 `"11"', add
label define ni05a_hlthvara_lbl 0012 `"12"', add
label define ni05a_hlthvara_lbl 0013 `"13"', add
label define ni05a_hlthvara_lbl 0015 `"15"', add
label define ni05a_hlthvara_lbl 0017 `"17"', add
label define ni05a_hlthvara_lbl 0018 `"18"', add
label define ni05a_hlthvara_lbl 0020 `"20"', add
label define ni05a_hlthvara_lbl 0025 `"25"', add
label define ni05a_hlthvara_lbl 0027 `"27"', add
label define ni05a_hlthvara_lbl 0030 `"30"', add
label define ni05a_hlthvara_lbl 0032 `"32"', add
label define ni05a_hlthvara_lbl 0035 `"35"', add
label define ni05a_hlthvara_lbl 0038 `"38"', add
label define ni05a_hlthvara_lbl 0040 `"40"', add
label define ni05a_hlthvara_lbl 0045 `"45"', add
label define ni05a_hlthvara_lbl 0050 `"50"', add
label define ni05a_hlthvara_lbl 0052 `"52"', add
label define ni05a_hlthvara_lbl 0058 `"58"', add
label define ni05a_hlthvara_lbl 0059 `"59"', add
label define ni05a_hlthvara_lbl 0060 `"60"', add
label define ni05a_hlthvara_lbl 0065 `"65"', add
label define ni05a_hlthvara_lbl 0070 `"70"', add
label define ni05a_hlthvara_lbl 0075 `"75"', add
label define ni05a_hlthvara_lbl 0079 `"79"', add
label define ni05a_hlthvara_lbl 0080 `"80"', add
label define ni05a_hlthvara_lbl 0081 `"81"', add
label define ni05a_hlthvara_lbl 0085 `"85"', add
label define ni05a_hlthvara_lbl 0088 `"88"', add
label define ni05a_hlthvara_lbl 0090 `"90"', add
label define ni05a_hlthvara_lbl 0099 `"99"', add
label define ni05a_hlthvara_lbl 0100 `"100"', add
label define ni05a_hlthvara_lbl 0101 `"101"', add
label define ni05a_hlthvara_lbl 0105 `"105"', add
label define ni05a_hlthvara_lbl 0110 `"110"', add
label define ni05a_hlthvara_lbl 0115 `"115"', add
label define ni05a_hlthvara_lbl 0120 `"120"', add
label define ni05a_hlthvara_lbl 0125 `"125"', add
label define ni05a_hlthvara_lbl 0130 `"130"', add
label define ni05a_hlthvara_lbl 0140 `"140"', add
label define ni05a_hlthvara_lbl 0150 `"150"', add
label define ni05a_hlthvara_lbl 0160 `"160"', add
label define ni05a_hlthvara_lbl 0170 `"170"', add
label define ni05a_hlthvara_lbl 0175 `"175"', add
label define ni05a_hlthvara_lbl 0180 `"180"', add
label define ni05a_hlthvara_lbl 0190 `"190"', add
label define ni05a_hlthvara_lbl 0200 `"200"', add
label define ni05a_hlthvara_lbl 0220 `"220"', add
label define ni05a_hlthvara_lbl 0225 `"225"', add
label define ni05a_hlthvara_lbl 0230 `"230"', add
label define ni05a_hlthvara_lbl 0250 `"250"', add
label define ni05a_hlthvara_lbl 0260 `"260"', add
label define ni05a_hlthvara_lbl 0270 `"270"', add
label define ni05a_hlthvara_lbl 0275 `"275"', add
label define ni05a_hlthvara_lbl 0280 `"280"', add
label define ni05a_hlthvara_lbl 0300 `"300"', add
label define ni05a_hlthvara_lbl 0305 `"305"', add
label define ni05a_hlthvara_lbl 0308 `"308"', add
label define ni05a_hlthvara_lbl 0310 `"310"', add
label define ni05a_hlthvara_lbl 0315 `"315"', add
label define ni05a_hlthvara_lbl 0320 `"320"', add
label define ni05a_hlthvara_lbl 0325 `"325"', add
label define ni05a_hlthvara_lbl 0330 `"330"', add
label define ni05a_hlthvara_lbl 0340 `"340"', add
label define ni05a_hlthvara_lbl 0350 `"350"', add
label define ni05a_hlthvara_lbl 0360 `"360"', add
label define ni05a_hlthvara_lbl 0365 `"365"', add
label define ni05a_hlthvara_lbl 0370 `"370"', add
label define ni05a_hlthvara_lbl 0400 `"400"', add
label define ni05a_hlthvara_lbl 0410 `"410"', add
label define ni05a_hlthvara_lbl 0415 `"415"', add
label define ni05a_hlthvara_lbl 0420 `"420"', add
label define ni05a_hlthvara_lbl 0430 `"430"', add
label define ni05a_hlthvara_lbl 0440 `"440"', add
label define ni05a_hlthvara_lbl 0450 `"450"', add
label define ni05a_hlthvara_lbl 0451 `"451"', add
label define ni05a_hlthvara_lbl 0475 `"475"', add
label define ni05a_hlthvara_lbl 0480 `"480"', add
label define ni05a_hlthvara_lbl 0500 `"500"', add
label define ni05a_hlthvara_lbl 0520 `"520"', add
label define ni05a_hlthvara_lbl 0525 `"525"', add
label define ni05a_hlthvara_lbl 0530 `"530"', add
label define ni05a_hlthvara_lbl 0550 `"550"', add
label define ni05a_hlthvara_lbl 0580 `"580"', add
label define ni05a_hlthvara_lbl 0590 `"590"', add
label define ni05a_hlthvara_lbl 0600 `"600"', add
label define ni05a_hlthvara_lbl 0630 `"630"', add
label define ni05a_hlthvara_lbl 0640 `"640"', add
label define ni05a_hlthvara_lbl 0650 `"650"', add
label define ni05a_hlthvara_lbl 0700 `"700"', add
label define ni05a_hlthvara_lbl 0705 `"705"', add
label define ni05a_hlthvara_lbl 0720 `"720"', add
label define ni05a_hlthvara_lbl 0750 `"750"', add
label define ni05a_hlthvara_lbl 0800 `"800"', add
label define ni05a_hlthvara_lbl 0810 `"810"', add
label define ni05a_hlthvara_lbl 0820 `"820"', add
label define ni05a_hlthvara_lbl 0830 `"830"', add
label define ni05a_hlthvara_lbl 0835 `"835"', add
label define ni05a_hlthvara_lbl 0850 `"850"', add
label define ni05a_hlthvara_lbl 0900 `"900+"', add
label define ni05a_hlthvara_lbl 9997 `"Answer in other measurement unit"', add
label define ni05a_hlthvara_lbl 9998 `"Unknown"', add
label define ni05a_hlthvara_lbl 9999 `"NIU (not in universe)"', add
label values ni05a_hlthvara ni05a_hlthvara_lbl

label define ni05a_htimed_lbl 01 `"1"'
label define ni05a_htimed_lbl 02 `"2"', add
label define ni05a_htimed_lbl 03 `"3 or more"', add
label define ni05a_htimed_lbl 97 `"Answer in other time unit"', add
label define ni05a_htimed_lbl 98 `"Unknown"', add
label define ni05a_htimed_lbl 99 `"NIU (not in universe)"', add
label values ni05a_htimed ni05a_htimed_lbl

label define ni05a_htimeh_lbl 01 `"1"'
label define ni05a_htimeh_lbl 02 `"2"', add
label define ni05a_htimeh_lbl 03 `"3"', add
label define ni05a_htimeh_lbl 04 `"4"', add
label define ni05a_htimeh_lbl 05 `"5"', add
label define ni05a_htimeh_lbl 06 `"6"', add
label define ni05a_htimeh_lbl 07 `"7"', add
label define ni05a_htimeh_lbl 08 `"8"', add
label define ni05a_htimeh_lbl 09 `"9"', add
label define ni05a_htimeh_lbl 10 `"10"', add
label define ni05a_htimeh_lbl 11 `"11"', add
label define ni05a_htimeh_lbl 12 `"12 or more"', add
label define ni05a_htimeh_lbl 97 `"Answer in other time unit"', add
label define ni05a_htimeh_lbl 98 `"Unknown"', add
label define ni05a_htimeh_lbl 99 `"NIU (not in universe)"', add
label values ni05a_htimeh ni05a_htimeh_lbl

label define ni05a_htimem_lbl 001 `"1"'
label define ni05a_htimem_lbl 002 `"2"', add
label define ni05a_htimem_lbl 003 `"3"', add
label define ni05a_htimem_lbl 004 `"4"', add
label define ni05a_htimem_lbl 005 `"5"', add
label define ni05a_htimem_lbl 006 `"6"', add
label define ni05a_htimem_lbl 007 `"7"', add
label define ni05a_htimem_lbl 008 `"8"', add
label define ni05a_htimem_lbl 009 `"9"', add
label define ni05a_htimem_lbl 010 `"10"', add
label define ni05a_htimem_lbl 011 `"11"', add
label define ni05a_htimem_lbl 012 `"12"', add
label define ni05a_htimem_lbl 013 `"13"', add
label define ni05a_htimem_lbl 014 `"14"', add
label define ni05a_htimem_lbl 015 `"15"', add
label define ni05a_htimem_lbl 016 `"16"', add
label define ni05a_htimem_lbl 017 `"17"', add
label define ni05a_htimem_lbl 018 `"18"', add
label define ni05a_htimem_lbl 019 `"19"', add
label define ni05a_htimem_lbl 020 `"20"', add
label define ni05a_htimem_lbl 021 `"21"', add
label define ni05a_htimem_lbl 022 `"22"', add
label define ni05a_htimem_lbl 023 `"23"', add
label define ni05a_htimem_lbl 024 `"24"', add
label define ni05a_htimem_lbl 025 `"25"', add
label define ni05a_htimem_lbl 026 `"26"', add
label define ni05a_htimem_lbl 027 `"27"', add
label define ni05a_htimem_lbl 028 `"28"', add
label define ni05a_htimem_lbl 029 `"29"', add
label define ni05a_htimem_lbl 030 `"30"', add
label define ni05a_htimem_lbl 031 `"31"', add
label define ni05a_htimem_lbl 032 `"32"', add
label define ni05a_htimem_lbl 033 `"33"', add
label define ni05a_htimem_lbl 034 `"34"', add
label define ni05a_htimem_lbl 035 `"35"', add
label define ni05a_htimem_lbl 036 `"36"', add
label define ni05a_htimem_lbl 037 `"37"', add
label define ni05a_htimem_lbl 038 `"38"', add
label define ni05a_htimem_lbl 039 `"39"', add
label define ni05a_htimem_lbl 040 `"40"', add
label define ni05a_htimem_lbl 041 `"41"', add
label define ni05a_htimem_lbl 042 `"42"', add
label define ni05a_htimem_lbl 043 `"43"', add
label define ni05a_htimem_lbl 044 `"44"', add
label define ni05a_htimem_lbl 045 `"45"', add
label define ni05a_htimem_lbl 046 `"46"', add
label define ni05a_htimem_lbl 047 `"47"', add
label define ni05a_htimem_lbl 048 `"48"', add
label define ni05a_htimem_lbl 049 `"49"', add
label define ni05a_htimem_lbl 050 `"50"', add
label define ni05a_htimem_lbl 051 `"51"', add
label define ni05a_htimem_lbl 052 `"52"', add
label define ni05a_htimem_lbl 053 `"53"', add
label define ni05a_htimem_lbl 054 `"54"', add
label define ni05a_htimem_lbl 055 `"55"', add
label define ni05a_htimem_lbl 056 `"56"', add
label define ni05a_htimem_lbl 057 `"57"', add
label define ni05a_htimem_lbl 058 `"58"', add
label define ni05a_htimem_lbl 059 `"59"', add
label define ni05a_htimem_lbl 060 `"60"', add
label define ni05a_htimem_lbl 061 `"61"', add
label define ni05a_htimem_lbl 062 `"62"', add
label define ni05a_htimem_lbl 063 `"63"', add
label define ni05a_htimem_lbl 064 `"64"', add
label define ni05a_htimem_lbl 065 `"65"', add
label define ni05a_htimem_lbl 066 `"66"', add
label define ni05a_htimem_lbl 070 `"70"', add
label define ni05a_htimem_lbl 072 `"72"', add
label define ni05a_htimem_lbl 075 `"75"', add
label define ni05a_htimem_lbl 076 `"76"', add
label define ni05a_htimem_lbl 079 `"79"', add
label define ni05a_htimem_lbl 080 `"80"', add
label define ni05a_htimem_lbl 082 `"82"', add
label define ni05a_htimem_lbl 083 `"83"', add
label define ni05a_htimem_lbl 085 `"85"', add
label define ni05a_htimem_lbl 090 `"90 or more"', add
label define ni05a_htimem_lbl 997 `"Answer in other time unit"', add
label define ni05a_htimem_lbl 998 `"Unknown"', add
label define ni05a_htimem_lbl 999 `"NIU (not in universe)"', add
label values ni05a_htimem ni05a_htimem_lbl

label define ni05a_toilet_lbl 1 `"Outhouse or latrine"'
label define ni05a_toilet_lbl 2 `"Toilet that drains into pipes for black/waste water"', add
label define ni05a_toilet_lbl 3 `"Toilet that drains into sewer drain, sinkhole, or septic tank"', add
label define ni05a_toilet_lbl 4 `"Toilet that drains into river or stream"', add
label define ni05a_toilet_lbl 5 `"None"', add
label define ni05a_toilet_lbl 8 `"Unknown"', add
label define ni05a_toilet_lbl 9 `"NIU (not in universe)"', add
label values ni05a_toilet ni05a_toilet_lbl

label define ni05a_toilexc_lbl 1 `"Yes"'
label define ni05a_toilexc_lbl 2 `"No"', add
label define ni05a_toilexc_lbl 9 `"NIU (not in universe)"', add
label values ni05a_toilexc ni05a_toilexc_lbl

label define ni05a_bedrooms_lbl 00 `"0"'
label define ni05a_bedrooms_lbl 01 `"1"', add
label define ni05a_bedrooms_lbl 02 `"2"', add
label define ni05a_bedrooms_lbl 03 `"3"', add
label define ni05a_bedrooms_lbl 04 `"4"', add
label define ni05a_bedrooms_lbl 05 `"5"', add
label define ni05a_bedrooms_lbl 06 `"6"', add
label define ni05a_bedrooms_lbl 07 `"7"', add
label define ni05a_bedrooms_lbl 08 `"8"', add
label define ni05a_bedrooms_lbl 09 `"9"', add
label define ni05a_bedrooms_lbl 10 `"10+"', add
label define ni05a_bedrooms_lbl 98 `"Unknown"', add
label define ni05a_bedrooms_lbl 99 `"NIU (not in universe)"', add
label values ni05a_bedrooms ni05a_bedrooms_lbl

label define ni05a_kitchen_lbl 1 `"Yes"'
label define ni05a_kitchen_lbl 2 `"No"', add
label define ni05a_kitchen_lbl 8 `"Unknown"', add
label define ni05a_kitchen_lbl 9 `"NIU (not in universe)"', add
label values ni05a_kitchen ni05a_kitchen_lbl

label define ni05a_fuelcook_lbl 1 `"Butane or propane gas (cylinder)"'
label define ni05a_fuelcook_lbl 2 `"Wood"', add
label define ni05a_fuelcook_lbl 3 `"Coal/charcoal"', add
label define ni05a_fuelcook_lbl 4 `"Kerosene gas"', add
label define ni05a_fuelcook_lbl 5 `"Electricity"', add
label define ni05a_fuelcook_lbl 6 `"Other"', add
label define ni05a_fuelcook_lbl 7 `"Don't cook"', add
label define ni05a_fuelcook_lbl 8 `"Unknown"', add
label define ni05a_fuelcook_lbl 9 `"NIU (not in universe)"', add
label values ni05a_fuelcook ni05a_fuelcook_lbl

label define ni05a_garbage_lbl 01 `"Removed by garbage truck"'
label define ni05a_garbage_lbl 02 `"Authorized garbage collector or dumpster"', add
label define ni05a_garbage_lbl 03 `"Burned"', add
label define ni05a_garbage_lbl 04 `"Buried"', add
label define ni05a_garbage_lbl 05 `"Thrown into an empty lot, ditch or street"', add
label define ni05a_garbage_lbl 06 `"Thrown into a river, lagoon, or creek"', add
label define ni05a_garbage_lbl 07 `"Thrown away by paid person"', add
label define ni05a_garbage_lbl 08 `"Organic fertilizer"', add
label define ni05a_garbage_lbl 09 `"Other"', add
label define ni05a_garbage_lbl 98 `"Unknown"', add
label define ni05a_garbage_lbl 99 `"NIU (not in universe)"', add
label values ni05a_garbage ni05a_garbage_lbl

label define ni05a_radcass_lbl 1 `"Yes"'
label define ni05a_radcass_lbl 2 `"No"', add
label define ni05a_radcass_lbl 8 `"Unknown"', add
label define ni05a_radcass_lbl 9 `"NIU (not in universe)"', add
label values ni05a_radcass ni05a_radcass_lbl

label define ni05a_stereo_lbl 1 `"Yes"'
label define ni05a_stereo_lbl 2 `"No"', add
label define ni05a_stereo_lbl 8 `"Unknown"', add
label define ni05a_stereo_lbl 9 `"NIU (not in universe)"', add
label values ni05a_stereo ni05a_stereo_lbl

label define ni05a_radio_lbl 1 `"Yes"'
label define ni05a_radio_lbl 2 `"No"', add
label define ni05a_radio_lbl 8 `"Unknown"', add
label define ni05a_radio_lbl 9 `"NIU (not in universe)"', add
label values ni05a_radio ni05a_radio_lbl

label define ni05a_kitfuel_lbl 1 `"Yes"'
label define ni05a_kitfuel_lbl 2 `"No"', add
label define ni05a_kitfuel_lbl 8 `"Unknown"', add
label define ni05a_kitfuel_lbl 9 `"NIU (not in universe)"', add
label values ni05a_kitfuel ni05a_kitfuel_lbl

label define ni05a_refrig_lbl 1 `"Yes"'
label define ni05a_refrig_lbl 2 `"No"', add
label define ni05a_refrig_lbl 8 `"Unknown"', add
label define ni05a_refrig_lbl 9 `"NIU (not in universe)"', add
label values ni05a_refrig ni05a_refrig_lbl

label define ni05a_fan_lbl 1 `"Yes"'
label define ni05a_fan_lbl 2 `"No"', add
label define ni05a_fan_lbl 8 `"Unknown"', add
label define ni05a_fan_lbl 9 `"NIU (not in universe)"', add
label values ni05a_fan ni05a_fan_lbl

label define ni05a_sewmach_lbl 1 `"Yes"'
label define ni05a_sewmach_lbl 2 `"No"', add
label define ni05a_sewmach_lbl 8 `"Unknown"', add
label define ni05a_sewmach_lbl 9 `"NIU (not in universe)"', add
label values ni05a_sewmach ni05a_sewmach_lbl

label define ni05a_iron_lbl 1 `"Yes"'
label define ni05a_iron_lbl 2 `"No"', add
label define ni05a_iron_lbl 8 `"Unknown"', add
label define ni05a_iron_lbl 9 `"NIU (not in universe)"', add
label values ni05a_iron ni05a_iron_lbl

label define ni05a_phone_lbl 1 `"Yes"'
label define ni05a_phone_lbl 2 `"No"', add
label define ni05a_phone_lbl 8 `"Unknown"', add
label define ni05a_phone_lbl 9 `"NIU (not in universe)"', add
label values ni05a_phone ni05a_phone_lbl

label define ni05a_cell_lbl 1 `"Yes"'
label define ni05a_cell_lbl 2 `"No"', add
label define ni05a_cell_lbl 8 `"Unknown"', add
label define ni05a_cell_lbl 9 `"NIU (not in universe)"', add
label values ni05a_cell ni05a_cell_lbl

label define ni05a_washer_lbl 1 `"Yes"'
label define ni05a_washer_lbl 2 `"No"', add
label define ni05a_washer_lbl 8 `"Unknown"', add
label define ni05a_washer_lbl 9 `"NIU (not in universe)"', add
label values ni05a_washer ni05a_washer_lbl

label define ni05a_aircon_lbl 1 `"Yes"'
label define ni05a_aircon_lbl 2 `"No"', add
label define ni05a_aircon_lbl 8 `"Unknown"', add
label define ni05a_aircon_lbl 9 `"NIU (not in universe)"', add
label values ni05a_aircon ni05a_aircon_lbl

label define ni05a_cabletv_lbl 1 `"Yes"'
label define ni05a_cabletv_lbl 2 `"No"', add
label define ni05a_cabletv_lbl 8 `"Unknown"', add
label define ni05a_cabletv_lbl 9 `"NIU (not in universe)"', add
label values ni05a_cabletv ni05a_cabletv_lbl

label define ni05a_pc_lbl 1 `"Yes"'
label define ni05a_pc_lbl 2 `"No"', add
label define ni05a_pc_lbl 8 `"Unknown"', add
label define ni05a_pc_lbl 9 `"NIU (not in universe)"', add
label values ni05a_pc ni05a_pc_lbl

label define ni05a_internet_lbl 1 `"Yes"'
label define ni05a_internet_lbl 2 `"No"', add
label define ni05a_internet_lbl 8 `"Unknown"', add
label define ni05a_internet_lbl 9 `"NIU (not in universe)"', add
label values ni05a_internet ni05a_internet_lbl

label define ni05a_car_lbl 1 `"Yes"'
label define ni05a_car_lbl 2 `"No"', add
label define ni05a_car_lbl 8 `"Unknown"', add
label define ni05a_car_lbl 9 `"NIU (not in universe)"', add
label values ni05a_car ni05a_car_lbl

label define ni05a_motocyc_lbl 1 `"Yes"'
label define ni05a_motocyc_lbl 2 `"No"', add
label define ni05a_motocyc_lbl 8 `"Unknown"', add
label define ni05a_motocyc_lbl 9 `"NIU (not in universe)"', add
label values ni05a_motocyc ni05a_motocyc_lbl

label define ni05a_bike_lbl 1 `"Yes"'
label define ni05a_bike_lbl 2 `"No"', add
label define ni05a_bike_lbl 8 `"Unknown"', add
label define ni05a_bike_lbl 9 `"NIU (not in universe)"', add
label values ni05a_bike ni05a_bike_lbl

label define ni05a_animal_lbl 1 `"Yes"'
label define ni05a_animal_lbl 2 `"No"', add
label define ni05a_animal_lbl 8 `"Unknown"', add
label define ni05a_animal_lbl 9 `"NIU (not in universe)"', add
label values ni05a_animal ni05a_animal_lbl

label define ni05a_canoe_lbl 1 `"Yes"'
label define ni05a_canoe_lbl 2 `"No"', add
label define ni05a_canoe_lbl 8 `"Unknown"', add
label define ni05a_canoe_lbl 9 `"NIU (not in universe)"', add
label values ni05a_canoe ni05a_canoe_lbl

label define ni05a_motoboat_lbl 1 `"Yes"'
label define ni05a_motoboat_lbl 2 `"No"', add
label define ni05a_motoboat_lbl 8 `"Unknown"', add
label define ni05a_motoboat_lbl 9 `"NIU (not in universe)"', add
label values ni05a_motoboat ni05a_motoboat_lbl

label define ni05a_yacht_lbl 1 `"Yes"'
label define ni05a_yacht_lbl 2 `"No"', add
label define ni05a_yacht_lbl 8 `"Unknown"', add
label define ni05a_yacht_lbl 9 `"NIU (not in universe)"', add
label values ni05a_yacht ni05a_yacht_lbl

label define ni05a_make_lbl 1 `"Yes"'
label define ni05a_make_lbl 2 `"No"', add
label define ni05a_make_lbl 8 `"Unknown"', add
label define ni05a_make_lbl 9 `"NIU (not in universe)"', add
label values ni05a_make ni05a_make_lbl

label define ni05a_sell_lbl 1 `"Yes"'
label define ni05a_sell_lbl 2 `"No"', add
label define ni05a_sell_lbl 8 `"Unknown"', add
label define ni05a_sell_lbl 9 `"NIU (not in universe)"', add
label values ni05a_sell ni05a_sell_lbl

label define ni05a_service_lbl 1 `"Yes"'
label define ni05a_service_lbl 2 `"No"', add
label define ni05a_service_lbl 8 `"Unknown"', add
label define ni05a_service_lbl 9 `"NIU (not in universe)"', add
label values ni05a_service ni05a_service_lbl

label define ni05a_agactiv_lbl 1 `"Yes"'
label define ni05a_agactiv_lbl 2 `"No"', add
label define ni05a_agactiv_lbl 8 `"Unknown"', add
label define ni05a_agactiv_lbl 9 `"NIU (not in universe)"', add
label values ni05a_agactiv ni05a_agactiv_lbl

label define ni05a_dissens_lbl 1 `"Yes"'
label define ni05a_dissens_lbl 2 `"No"', add
label define ni05a_dissens_lbl 8 `"Unknown"', add
label define ni05a_dissens_lbl 9 `"NIU (not in universe)"', add
label values ni05a_dissens ni05a_dissens_lbl

label define ni05a_disphys_lbl 1 `"Yes"'
label define ni05a_disphys_lbl 2 `"No"', add
label define ni05a_disphys_lbl 8 `"Unknown"', add
label define ni05a_disphys_lbl 9 `"NIU (not in universe)"', add
label values ni05a_disphys ni05a_disphys_lbl

label define ni05a_dismentl_lbl 1 `"Yes"'
label define ni05a_dismentl_lbl 2 `"No"', add
label define ni05a_dismentl_lbl 8 `"Unknown"', add
label define ni05a_dismentl_lbl 9 `"NIU (not in universe)"', add
label values ni05a_dismentl ni05a_dismentl_lbl

label define ni05a_remitt_lbl 1 `"Yes"'
label define ni05a_remitt_lbl 2 `"No"', add
label define ni05a_remitt_lbl 8 `"Unknown"', add
label define ni05a_remitt_lbl 9 `"NIU (not in universe)"', add
label values ni05a_remitt ni05a_remitt_lbl

label define ni05a_abroad_lbl 1 `"Yes"'
label define ni05a_abroad_lbl 2 `"No"', add
label define ni05a_abroad_lbl 8 `"Unknown"', add
label define ni05a_abroad_lbl 9 `"NIU (not in universe)"', add
label values ni05a_abroad ni05a_abroad_lbl

label define ni05a_nabroad_lbl 1 `"1"'
label define ni05a_nabroad_lbl 2 `"2"', add
label define ni05a_nabroad_lbl 3 `"3"', add
label define ni05a_nabroad_lbl 4 `"4"', add
label define ni05a_nabroad_lbl 5 `"5"', add
label define ni05a_nabroad_lbl 6 `"6 or more"', add
label define ni05a_nabroad_lbl 9 `"NIU (not in universe)"', add
label values ni05a_nabroad ni05a_nabroad_lbl

label define ni05a_death_lbl 1 `"Yes"'
label define ni05a_death_lbl 2 `"No"', add
label define ni05a_death_lbl 8 `"Unknown"', add
label define ni05a_death_lbl 9 `"NIU (not in universe)"', add
label values ni05a_death ni05a_death_lbl

label define ni05a_ndeath_lbl 1 `"1"'
label define ni05a_ndeath_lbl 2 `"2 or more"', add
label define ni05a_ndeath_lbl 9 `"NIU (not in universe)"', add
label values ni05a_ndeath ni05a_ndeath_lbl

label define ni05a_nmale_lbl 00 `"0"'
label define ni05a_nmale_lbl 01 `"1"', add
label define ni05a_nmale_lbl 02 `"2"', add
label define ni05a_nmale_lbl 03 `"3"', add
label define ni05a_nmale_lbl 04 `"4"', add
label define ni05a_nmale_lbl 05 `"5"', add
label define ni05a_nmale_lbl 06 `"6"', add
label define ni05a_nmale_lbl 07 `"7"', add
label define ni05a_nmale_lbl 08 `"8"', add
label define ni05a_nmale_lbl 09 `"9"', add
label define ni05a_nmale_lbl 10 `"10"', add
label define ni05a_nmale_lbl 11 `"11"', add
label define ni05a_nmale_lbl 12 `"12"', add
label define ni05a_nmale_lbl 13 `"13+"', add
label define ni05a_nmale_lbl 98 `"Unknown"', add
label define ni05a_nmale_lbl 99 `"NIU (not in universe)"', add
label values ni05a_nmale ni05a_nmale_lbl

label define ni05a_nfemal_lbl 00 `"0"'
label define ni05a_nfemal_lbl 01 `"1"', add
label define ni05a_nfemal_lbl 02 `"2"', add
label define ni05a_nfemal_lbl 03 `"3"', add
label define ni05a_nfemal_lbl 04 `"4"', add
label define ni05a_nfemal_lbl 05 `"5"', add
label define ni05a_nfemal_lbl 06 `"6"', add
label define ni05a_nfemal_lbl 07 `"7"', add
label define ni05a_nfemal_lbl 08 `"8"', add
label define ni05a_nfemal_lbl 09 `"9"', add
label define ni05a_nfemal_lbl 10 `"10"', add
label define ni05a_nfemal_lbl 11 `"11"', add
label define ni05a_nfemal_lbl 12 `"12"', add
label define ni05a_nfemal_lbl 13 `"13+"', add
label define ni05a_nfemal_lbl 98 `"Unknown"', add
label define ni05a_nfemal_lbl 99 `"NIU (not in universe)"', add
label values ni05a_nfemal ni05a_nfemal_lbl

label define ni05a_pernum_lbl 00 `"Household record"'
label define ni05a_pernum_lbl 01 `"1"', add
label define ni05a_pernum_lbl 02 `"2"', add
label define ni05a_pernum_lbl 03 `"3"', add
label define ni05a_pernum_lbl 04 `"4"', add
label define ni05a_pernum_lbl 05 `"5"', add
label define ni05a_pernum_lbl 06 `"6"', add
label define ni05a_pernum_lbl 07 `"7"', add
label define ni05a_pernum_lbl 08 `"8"', add
label define ni05a_pernum_lbl 09 `"9"', add
label define ni05a_pernum_lbl 10 `"10"', add
label define ni05a_pernum_lbl 11 `"11"', add
label define ni05a_pernum_lbl 12 `"12"', add
label define ni05a_pernum_lbl 13 `"13"', add
label define ni05a_pernum_lbl 14 `"14"', add
label define ni05a_pernum_lbl 15 `"15"', add
label define ni05a_pernum_lbl 16 `"16"', add
label define ni05a_pernum_lbl 17 `"17"', add
label define ni05a_pernum_lbl 18 `"18"', add
label define ni05a_pernum_lbl 19 `"19"', add
label define ni05a_pernum_lbl 20 `"20"', add
label define ni05a_pernum_lbl 21 `"21"', add
label define ni05a_pernum_lbl 22 `"22"', add
label define ni05a_pernum_lbl 23 `"23"', add
label define ni05a_pernum_lbl 24 `"24"', add
label define ni05a_pernum_lbl 25 `"25"', add
label define ni05a_pernum_lbl 26 `"26"', add
label define ni05a_pernum_lbl 27 `"27"', add
label define ni05a_pernum_lbl 28 `"28"', add
label define ni05a_pernum_lbl 29 `"29"', add
label define ni05a_pernum_lbl 30 `"30"', add
label values ni05a_pernum ni05a_pernum_lbl

label define ni05a_relate_lbl 01 `"Head of household"'
label define ni05a_relate_lbl 02 `"Spouse or partner"', add
label define ni05a_relate_lbl 03 `"Child"', add
label define ni05a_relate_lbl 04 `"Step-child"', add
label define ni05a_relate_lbl 05 `"Child-in-law"', add
label define ni05a_relate_lbl 06 `"Grandchild"', add
label define ni05a_relate_lbl 07 `"Great grandchild"', add
label define ni05a_relate_lbl 08 `"Parent"', add
label define ni05a_relate_lbl 09 `"Grandparent"', add
label define ni05a_relate_lbl 10 `"Parent-in-law"', add
label define ni05a_relate_lbl 11 `"Sibling"', add
label define ni05a_relate_lbl 12 `"Other relative"', add
label define ni05a_relate_lbl 13 `"No family relationship"', add
label define ni05a_relate_lbl 14 `"Domestic employee"', add
label define ni05a_relate_lbl 15 `"Person in collective dwelling"', add
label define ni05a_relate_lbl 16 `"Homeless person"', add
label values ni05a_relate ni05a_relate_lbl

label define ni05a_sex_lbl 1 `"Male"'
label define ni05a_sex_lbl 2 `"Female"', add
label values ni05a_sex ni05a_sex_lbl

label define ni05a_age_lbl 000 `"0"'
label define ni05a_age_lbl 001 `"1"', add
label define ni05a_age_lbl 002 `"2"', add
label define ni05a_age_lbl 003 `"3"', add
label define ni05a_age_lbl 004 `"4"', add
label define ni05a_age_lbl 005 `"5"', add
label define ni05a_age_lbl 006 `"6"', add
label define ni05a_age_lbl 007 `"7"', add
label define ni05a_age_lbl 008 `"8"', add
label define ni05a_age_lbl 009 `"9"', add
label define ni05a_age_lbl 010 `"10"', add
label define ni05a_age_lbl 011 `"11"', add
label define ni05a_age_lbl 012 `"12"', add
label define ni05a_age_lbl 013 `"13"', add
label define ni05a_age_lbl 014 `"14"', add
label define ni05a_age_lbl 015 `"15"', add
label define ni05a_age_lbl 016 `"16"', add
label define ni05a_age_lbl 017 `"17"', add
label define ni05a_age_lbl 018 `"18"', add
label define ni05a_age_lbl 019 `"19"', add
label define ni05a_age_lbl 020 `"20"', add
label define ni05a_age_lbl 021 `"21"', add
label define ni05a_age_lbl 022 `"22"', add
label define ni05a_age_lbl 023 `"23"', add
label define ni05a_age_lbl 024 `"24"', add
label define ni05a_age_lbl 025 `"25"', add
label define ni05a_age_lbl 026 `"26"', add
label define ni05a_age_lbl 027 `"27"', add
label define ni05a_age_lbl 028 `"28"', add
label define ni05a_age_lbl 029 `"29"', add
label define ni05a_age_lbl 030 `"30"', add
label define ni05a_age_lbl 031 `"31"', add
label define ni05a_age_lbl 032 `"32"', add
label define ni05a_age_lbl 033 `"33"', add
label define ni05a_age_lbl 034 `"34"', add
label define ni05a_age_lbl 035 `"35"', add
label define ni05a_age_lbl 036 `"36"', add
label define ni05a_age_lbl 037 `"37"', add
label define ni05a_age_lbl 038 `"38"', add
label define ni05a_age_lbl 039 `"39"', add
label define ni05a_age_lbl 040 `"40"', add
label define ni05a_age_lbl 041 `"41"', add
label define ni05a_age_lbl 042 `"42"', add
label define ni05a_age_lbl 043 `"43"', add
label define ni05a_age_lbl 044 `"44"', add
label define ni05a_age_lbl 045 `"45"', add
label define ni05a_age_lbl 046 `"46"', add
label define ni05a_age_lbl 047 `"47"', add
label define ni05a_age_lbl 048 `"48"', add
label define ni05a_age_lbl 049 `"49"', add
label define ni05a_age_lbl 050 `"50"', add
label define ni05a_age_lbl 051 `"51"', add
label define ni05a_age_lbl 052 `"52"', add
label define ni05a_age_lbl 053 `"53"', add
label define ni05a_age_lbl 054 `"54"', add
label define ni05a_age_lbl 055 `"55"', add
label define ni05a_age_lbl 056 `"56"', add
label define ni05a_age_lbl 057 `"57"', add
label define ni05a_age_lbl 058 `"58"', add
label define ni05a_age_lbl 059 `"59"', add
label define ni05a_age_lbl 060 `"60"', add
label define ni05a_age_lbl 061 `"61"', add
label define ni05a_age_lbl 062 `"62"', add
label define ni05a_age_lbl 063 `"63"', add
label define ni05a_age_lbl 064 `"64"', add
label define ni05a_age_lbl 065 `"65"', add
label define ni05a_age_lbl 066 `"66"', add
label define ni05a_age_lbl 067 `"67"', add
label define ni05a_age_lbl 068 `"68"', add
label define ni05a_age_lbl 069 `"69"', add
label define ni05a_age_lbl 070 `"70"', add
label define ni05a_age_lbl 071 `"71"', add
label define ni05a_age_lbl 072 `"72"', add
label define ni05a_age_lbl 073 `"73"', add
label define ni05a_age_lbl 074 `"74"', add
label define ni05a_age_lbl 075 `"75"', add
label define ni05a_age_lbl 076 `"76"', add
label define ni05a_age_lbl 077 `"77"', add
label define ni05a_age_lbl 078 `"78"', add
label define ni05a_age_lbl 079 `"79"', add
label define ni05a_age_lbl 080 `"80"', add
label define ni05a_age_lbl 081 `"81"', add
label define ni05a_age_lbl 082 `"82"', add
label define ni05a_age_lbl 083 `"83"', add
label define ni05a_age_lbl 084 `"84"', add
label define ni05a_age_lbl 085 `"85"', add
label define ni05a_age_lbl 086 `"86"', add
label define ni05a_age_lbl 087 `"87"', add
label define ni05a_age_lbl 088 `"88"', add
label define ni05a_age_lbl 089 `"89"', add
label define ni05a_age_lbl 090 `"90"', add
label define ni05a_age_lbl 091 `"91"', add
label define ni05a_age_lbl 092 `"92"', add
label define ni05a_age_lbl 093 `"93"', add
label define ni05a_age_lbl 094 `"94"', add
label define ni05a_age_lbl 095 `"95"', add
label define ni05a_age_lbl 096 `"96"', add
label define ni05a_age_lbl 097 `"97"', add
label define ni05a_age_lbl 098 `"98"', add
label define ni05a_age_lbl 099 `"99"', add
label define ni05a_age_lbl 100 `"100+"', add
label values ni05a_age ni05a_age_lbl

label define ni05a_birthmo_lbl 01 `"January"'
label define ni05a_birthmo_lbl 02 `"February"', add
label define ni05a_birthmo_lbl 03 `"March"', add
label define ni05a_birthmo_lbl 04 `"April"', add
label define ni05a_birthmo_lbl 05 `"May"', add
label define ni05a_birthmo_lbl 06 `"June"', add
label define ni05a_birthmo_lbl 07 `"July"', add
label define ni05a_birthmo_lbl 08 `"August"', add
label define ni05a_birthmo_lbl 09 `"September"', add
label define ni05a_birthmo_lbl 10 `"October"', add
label define ni05a_birthmo_lbl 11 `"November"', add
label define ni05a_birthmo_lbl 12 `"December"', add
label define ni05a_birthmo_lbl 99 `"Unknown"', add
label values ni05a_birthmo ni05a_birthmo_lbl

label define ni05a_birthyr_lbl 1905 `"1905 or earlier"'
label define ni05a_birthyr_lbl 1906 `"1906"', add
label define ni05a_birthyr_lbl 1907 `"1907"', add
label define ni05a_birthyr_lbl 1908 `"1908"', add
label define ni05a_birthyr_lbl 1909 `"1909"', add
label define ni05a_birthyr_lbl 1910 `"1910"', add
label define ni05a_birthyr_lbl 1911 `"1911"', add
label define ni05a_birthyr_lbl 1912 `"1912"', add
label define ni05a_birthyr_lbl 1913 `"1913"', add
label define ni05a_birthyr_lbl 1914 `"1914"', add
label define ni05a_birthyr_lbl 1915 `"1915"', add
label define ni05a_birthyr_lbl 1916 `"1916"', add
label define ni05a_birthyr_lbl 1917 `"1917"', add
label define ni05a_birthyr_lbl 1918 `"1918"', add
label define ni05a_birthyr_lbl 1919 `"1919"', add
label define ni05a_birthyr_lbl 1920 `"1920"', add
label define ni05a_birthyr_lbl 1921 `"1921"', add
label define ni05a_birthyr_lbl 1922 `"1922"', add
label define ni05a_birthyr_lbl 1923 `"1923"', add
label define ni05a_birthyr_lbl 1924 `"1924"', add
label define ni05a_birthyr_lbl 1925 `"1925"', add
label define ni05a_birthyr_lbl 1926 `"1926"', add
label define ni05a_birthyr_lbl 1927 `"1927"', add
label define ni05a_birthyr_lbl 1928 `"1928"', add
label define ni05a_birthyr_lbl 1929 `"1929"', add
label define ni05a_birthyr_lbl 1930 `"1930"', add
label define ni05a_birthyr_lbl 1931 `"1931"', add
label define ni05a_birthyr_lbl 1932 `"1932"', add
label define ni05a_birthyr_lbl 1933 `"1933"', add
label define ni05a_birthyr_lbl 1934 `"1934"', add
label define ni05a_birthyr_lbl 1935 `"1935"', add
label define ni05a_birthyr_lbl 1936 `"1936"', add
label define ni05a_birthyr_lbl 1937 `"1937"', add
label define ni05a_birthyr_lbl 1938 `"1938"', add
label define ni05a_birthyr_lbl 1939 `"1939"', add
label define ni05a_birthyr_lbl 1940 `"1940"', add
label define ni05a_birthyr_lbl 1941 `"1941"', add
label define ni05a_birthyr_lbl 1942 `"1942"', add
label define ni05a_birthyr_lbl 1943 `"1943"', add
label define ni05a_birthyr_lbl 1944 `"1944"', add
label define ni05a_birthyr_lbl 1945 `"1945"', add
label define ni05a_birthyr_lbl 1946 `"1946"', add
label define ni05a_birthyr_lbl 1947 `"1947"', add
label define ni05a_birthyr_lbl 1948 `"1948"', add
label define ni05a_birthyr_lbl 1949 `"1949"', add
label define ni05a_birthyr_lbl 1950 `"1950"', add
label define ni05a_birthyr_lbl 1951 `"1951"', add
label define ni05a_birthyr_lbl 1952 `"1952"', add
label define ni05a_birthyr_lbl 1953 `"1953"', add
label define ni05a_birthyr_lbl 1954 `"1954"', add
label define ni05a_birthyr_lbl 1955 `"1955"', add
label define ni05a_birthyr_lbl 1956 `"1956"', add
label define ni05a_birthyr_lbl 1957 `"1957"', add
label define ni05a_birthyr_lbl 1958 `"1958"', add
label define ni05a_birthyr_lbl 1959 `"1959"', add
label define ni05a_birthyr_lbl 1960 `"1960"', add
label define ni05a_birthyr_lbl 1961 `"1961"', add
label define ni05a_birthyr_lbl 1962 `"1962"', add
label define ni05a_birthyr_lbl 1963 `"1963"', add
label define ni05a_birthyr_lbl 1964 `"1964"', add
label define ni05a_birthyr_lbl 1965 `"1965"', add
label define ni05a_birthyr_lbl 1966 `"1966"', add
label define ni05a_birthyr_lbl 1967 `"1967"', add
label define ni05a_birthyr_lbl 1968 `"1968"', add
label define ni05a_birthyr_lbl 1969 `"1969"', add
label define ni05a_birthyr_lbl 1970 `"1970"', add
label define ni05a_birthyr_lbl 1971 `"1971"', add
label define ni05a_birthyr_lbl 1972 `"1972"', add
label define ni05a_birthyr_lbl 1973 `"1973"', add
label define ni05a_birthyr_lbl 1974 `"1974"', add
label define ni05a_birthyr_lbl 1975 `"1975"', add
label define ni05a_birthyr_lbl 1976 `"1976"', add
label define ni05a_birthyr_lbl 1977 `"1977"', add
label define ni05a_birthyr_lbl 1978 `"1978"', add
label define ni05a_birthyr_lbl 1979 `"1979"', add
label define ni05a_birthyr_lbl 1980 `"1980"', add
label define ni05a_birthyr_lbl 1981 `"1981"', add
label define ni05a_birthyr_lbl 1982 `"1982"', add
label define ni05a_birthyr_lbl 1983 `"1983"', add
label define ni05a_birthyr_lbl 1984 `"1984"', add
label define ni05a_birthyr_lbl 1985 `"1985"', add
label define ni05a_birthyr_lbl 1986 `"1986"', add
label define ni05a_birthyr_lbl 1987 `"1987"', add
label define ni05a_birthyr_lbl 1988 `"1988"', add
label define ni05a_birthyr_lbl 1989 `"1989"', add
label define ni05a_birthyr_lbl 1990 `"1990"', add
label define ni05a_birthyr_lbl 1991 `"1991"', add
label define ni05a_birthyr_lbl 1992 `"1992"', add
label define ni05a_birthyr_lbl 1993 `"1993"', add
label define ni05a_birthyr_lbl 1994 `"1994"', add
label define ni05a_birthyr_lbl 1995 `"1995"', add
label define ni05a_birthyr_lbl 1996 `"1996"', add
label define ni05a_birthyr_lbl 1997 `"1997"', add
label define ni05a_birthyr_lbl 1998 `"1998"', add
label define ni05a_birthyr_lbl 1999 `"1999"', add
label define ni05a_birthyr_lbl 2000 `"2000"', add
label define ni05a_birthyr_lbl 2001 `"2001"', add
label define ni05a_birthyr_lbl 2002 `"2002"', add
label define ni05a_birthyr_lbl 2003 `"2003"', add
label define ni05a_birthyr_lbl 2004 `"2004"', add
label define ni05a_birthyr_lbl 2005 `"2005"', add
label values ni05a_birthyr ni05a_birthyr_lbl

label define ni05a_marst_lbl 1 `"Younger than 12"'
label define ni05a_marst_lbl 2 `"Cohabiting/partnered"', add
label define ni05a_marst_lbl 3 `"Married"', add
label define ni05a_marst_lbl 4 `"Separated"', add
label define ni05a_marst_lbl 5 `"Divorced"', add
label define ni05a_marst_lbl 6 `"Widowed"', add
label define ni05a_marst_lbl 7 `"Single"', add
label values ni05a_marst ni05a_marst_lbl

label define ni05a_indig_lbl 1 `"Yes"'
label define ni05a_indig_lbl 2 `"No"', add
label define ni05a_indig_lbl 9 `"Unknown"', add
label values ni05a_indig ni05a_indig_lbl

label define ni05a_indiggrp_lbl 01 `"Rama"'
label define ni05a_indiggrp_lbl 02 `"Garífuna"', add
label define ni05a_indiggrp_lbl 03 `"Mayagna-Sumu"', add
label define ni05a_indiggrp_lbl 04 `"Miskitu"', add
label define ni05a_indiggrp_lbl 05 `"Ulwa"', add
label define ni05a_indiggrp_lbl 06 `"Creole (Kriol)"', add
label define ni05a_indiggrp_lbl 07 `"Mestizo from the Caribbean coast"', add
label define ni05a_indiggrp_lbl 08 `"Xiu-Sutiaba"', add
label define ni05a_indiggrp_lbl 09 `"Nahoas-Nicarao"', add
label define ni05a_indiggrp_lbl 10 `"Chorotega-Nahua-Mange"', add
label define ni05a_indiggrp_lbl 11 `"Cacaopera-Matagalpa"', add
label define ni05a_indiggrp_lbl 12 `"Other"', add
label define ni05a_indiggrp_lbl 13 `"Doesn't know"', add
label define ni05a_indiggrp_lbl 98 `"Unknown"', add
label define ni05a_indiggrp_lbl 99 `"NIU (not in universe)"', add
label values ni05a_indiggrp ni05a_indiggrp_lbl

label define ni05a_indlang_lbl 1 `"Yes"'
label define ni05a_indlang_lbl 2 `"No"', add
label define ni05a_indlang_lbl 8 `"Unknown"', add
label define ni05a_indlang_lbl 9 `"NIU (not in universe)"', add
label values ni05a_indlang ni05a_indlang_lbl

label define ni05a_bplstat_lbl 1 `"Yes, born in this municipality"'
label define ni05a_bplstat_lbl 2 `"No, born in another municipality"', add
label define ni05a_bplstat_lbl 3 `"No, born in another country"', add
label values ni05a_bplstat ni05a_bplstat_lbl

label define ni05a_bpldept_lbl 00 `"Foreign country"'
label define ni05a_bpldept_lbl 05 `"Nueva Segovia"', add
label define ni05a_bpldept_lbl 10 `"Jinotega"', add
label define ni05a_bpldept_lbl 20 `"Madríz"', add
label define ni05a_bpldept_lbl 25 `"Estelí"', add
label define ni05a_bpldept_lbl 30 `"Chinandega"', add
label define ni05a_bpldept_lbl 35 `"León"', add
label define ni05a_bpldept_lbl 40 `"Matagalpa"', add
label define ni05a_bpldept_lbl 50 `"Boaco"', add
label define ni05a_bpldept_lbl 55 `"Managua"', add
label define ni05a_bpldept_lbl 60 `"Masaya"', add
label define ni05a_bpldept_lbl 65 `"Chontales"', add
label define ni05a_bpldept_lbl 70 `"Granada"', add
label define ni05a_bpldept_lbl 75 `"Carazo"', add
label define ni05a_bpldept_lbl 80 `"Rivas"', add
label define ni05a_bpldept_lbl 85 `"Río San Juan"', add
label define ni05a_bpldept_lbl 91 `"Atlantico Norte"', add
label define ni05a_bpldept_lbl 93 `"Atlantico Sur"', add
label define ni05a_bpldept_lbl 99 `"Unknown"', add
label values ni05a_bpldept ni05a_bpldept_lbl

label define ni05a_yrimmig_lbl 1979 `"1979 or earlier"'
label define ni05a_yrimmig_lbl 1980 `"1980"', add
label define ni05a_yrimmig_lbl 1981 `"1981"', add
label define ni05a_yrimmig_lbl 1982 `"1982"', add
label define ni05a_yrimmig_lbl 1983 `"1983"', add
label define ni05a_yrimmig_lbl 1984 `"1984"', add
label define ni05a_yrimmig_lbl 1985 `"1985"', add
label define ni05a_yrimmig_lbl 1986 `"1986"', add
label define ni05a_yrimmig_lbl 1987 `"1987"', add
label define ni05a_yrimmig_lbl 1988 `"1988"', add
label define ni05a_yrimmig_lbl 1989 `"1989"', add
label define ni05a_yrimmig_lbl 1990 `"1990"', add
label define ni05a_yrimmig_lbl 1991 `"1991"', add
label define ni05a_yrimmig_lbl 1992 `"1992"', add
label define ni05a_yrimmig_lbl 1993 `"1993"', add
label define ni05a_yrimmig_lbl 1994 `"1994"', add
label define ni05a_yrimmig_lbl 1995 `"1995"', add
label define ni05a_yrimmig_lbl 1996 `"1996"', add
label define ni05a_yrimmig_lbl 1997 `"1997"', add
label define ni05a_yrimmig_lbl 1998 `"1998"', add
label define ni05a_yrimmig_lbl 1999 `"1999"', add
label define ni05a_yrimmig_lbl 2000 `"2000"', add
label define ni05a_yrimmig_lbl 2001 `"2001"', add
label define ni05a_yrimmig_lbl 2002 `"2002"', add
label define ni05a_yrimmig_lbl 2003 `"2003"', add
label define ni05a_yrimmig_lbl 2004 `"2004"', add
label define ni05a_yrimmig_lbl 2005 `"2005"', add
label define ni05a_yrimmig_lbl 9998 `"Unknown"', add
label define ni05a_yrimmig_lbl 9999 `"NIU (not in universe)"', add
label values ni05a_yrimmig ni05a_yrimmig_lbl

label define ni05a_bpltype_lbl 1 `"Farm/village/comarca"'
label define ni05a_bpltype_lbl 2 `"City"', add
label define ni05a_bpltype_lbl 8 `"Unknown"', add
label define ni05a_bpltype_lbl 9 `"NIU (not in universe)"', add
label values ni05a_bpltype ni05a_bpltype_lbl

label define ni05a_mig5yr_lbl 1 `"Yes, in this municipality"'
label define ni05a_mig5yr_lbl 2 `"No, another municipality"', add
label define ni05a_mig5yr_lbl 3 `"No, another country"', add
label define ni05a_mig5yr_lbl 9 `"NIU (not in universe)"', add
label values ni05a_mig5yr ni05a_mig5yr_lbl

label define ni05a_dept5yr_lbl 00 `"Foreign country"'
label define ni05a_dept5yr_lbl 05 `"Nueva Segovia"', add
label define ni05a_dept5yr_lbl 10 `"Jinotega"', add
label define ni05a_dept5yr_lbl 20 `"Madríz"', add
label define ni05a_dept5yr_lbl 25 `"Estelí"', add
label define ni05a_dept5yr_lbl 30 `"Chinandega"', add
label define ni05a_dept5yr_lbl 35 `"León"', add
label define ni05a_dept5yr_lbl 40 `"Matagalpa"', add
label define ni05a_dept5yr_lbl 50 `"Boaco"', add
label define ni05a_dept5yr_lbl 55 `"Managua"', add
label define ni05a_dept5yr_lbl 60 `"Masaya"', add
label define ni05a_dept5yr_lbl 65 `"Chontales"', add
label define ni05a_dept5yr_lbl 70 `"Granada"', add
label define ni05a_dept5yr_lbl 75 `"Carazo"', add
label define ni05a_dept5yr_lbl 80 `"Rivas"', add
label define ni05a_dept5yr_lbl 85 `"Río San Juan"', add
label define ni05a_dept5yr_lbl 91 `"Atlantico Norte"', add
label define ni05a_dept5yr_lbl 93 `"Atlantico Sur"', add
label define ni05a_dept5yr_lbl 98 `"Unknown"', add
label define ni05a_dept5yr_lbl 99 `"NIU (not in universe)"', add
label values ni05a_dept5yr ni05a_dept5yr_lbl

label define ni05a_immig5yr_lbl 1999 `"Before 2000"'
label define ni05a_immig5yr_lbl 2000 `"2000"', add
label define ni05a_immig5yr_lbl 2001 `"2001"', add
label define ni05a_immig5yr_lbl 2002 `"2002"', add
label define ni05a_immig5yr_lbl 2003 `"2003"', add
label define ni05a_immig5yr_lbl 2004 `"2004"', add
label define ni05a_immig5yr_lbl 2005 `"2005"', add
label define ni05a_immig5yr_lbl 9998 `"Unknown"', add
label define ni05a_immig5yr_lbl 9999 `"NIU (not in universe)"', add
label values ni05a_immig5yr ni05a_immig5yr_lbl

label define ni05a_pl5yrtype_lbl 1 `"Farm/village/comarca [traditional administrative region]"'
label define ni05a_pl5yrtype_lbl 2 `"City"', add
label define ni05a_pl5yrtype_lbl 8 `"Unknown"', add
label define ni05a_pl5yrtype_lbl 9 `"NIU (not in universe)"', add
label values ni05a_pl5yrtype ni05a_pl5yrtype_lbl

label define ni05a_relig_lbl 1 `"None"'
label define ni05a_relig_lbl 2 `"Catholic"', add
label define ni05a_relig_lbl 3 `"Evangelical"', add
label define ni05a_relig_lbl 4 `"Moravian"', add
label define ni05a_relig_lbl 5 `"Jehovah's Witness"', add
label define ni05a_relig_lbl 7 `"Muslim"', add
label define ni05a_relig_lbl 8 `"Other"', add
label define ni05a_relig_lbl 9 `"NIU (not in universe)"', add
label values ni05a_relig ni05a_relig_lbl

label define ni05a_lit_lbl 1 `"Can read and write"'
label define ni05a_lit_lbl 2 `"Can read only"', add
label define ni05a_lit_lbl 3 `"Cannot read or write"', add
label define ni05a_lit_lbl 9 `"NIU (not in universe)"', add
label values ni05a_lit ni05a_lit_lbl

label define ni05a_school_lbl 1 `"Yes"'
label define ni05a_school_lbl 2 `"No"', add
label define ni05a_school_lbl 9 `"NIU (not in universe)"', add
label values ni05a_school ni05a_school_lbl

label define ni05a_edlevel_lbl 0 `"None"'
label define ni05a_edlevel_lbl 1 `"Preschool"', add
label define ni05a_edlevel_lbl 2 `"Primary"', add
label define ni05a_edlevel_lbl 3 `"Secondary"', add
label define ni05a_edlevel_lbl 4 `"Basic technical"', add
label define ni05a_edlevel_lbl 5 `"Middle technical"', add
label define ni05a_edlevel_lbl 6 `"Advanced technical"', add
label define ni05a_edlevel_lbl 7 `"University degree"', add
label define ni05a_edlevel_lbl 8 `"Unknown"', add
label define ni05a_edlevel_lbl 9 `"NIU (not in universe)"', add
label values ni05a_edlevel ni05a_edlevel_lbl

label define ni05a_edattan_lbl 00 `"None"'
label define ni05a_edattan_lbl 11 `"Preschool, year 1"', add
label define ni05a_edattan_lbl 12 `"Preschool, year 2"', add
label define ni05a_edattan_lbl 13 `"Preschool, year 3"', add
label define ni05a_edattan_lbl 21 `"Primary, grade 1"', add
label define ni05a_edattan_lbl 22 `"Primary, grade 2"', add
label define ni05a_edattan_lbl 23 `"Primary, grade 3"', add
label define ni05a_edattan_lbl 24 `"Primary, grade 4"', add
label define ni05a_edattan_lbl 25 `"Primary, grade 5"', add
label define ni05a_edattan_lbl 26 `"Primary, grade 6"', add
label define ni05a_edattan_lbl 31 `"Secondary, grade 1"', add
label define ni05a_edattan_lbl 32 `"Secondary, grade 2"', add
label define ni05a_edattan_lbl 33 `"Secondary, grade 3"', add
label define ni05a_edattan_lbl 34 `"Secondary, grade 4"', add
label define ni05a_edattan_lbl 35 `"Secondary, grade 5"', add
label define ni05a_edattan_lbl 36 `"Secondary, grade 6"', add
label define ni05a_edattan_lbl 41 `"Basic technical, grade 1"', add
label define ni05a_edattan_lbl 42 `"Basic technical, grade 2"', add
label define ni05a_edattan_lbl 43 `"Basic technical, grade 3"', add
label define ni05a_edattan_lbl 44 `"Basic technical, grade 4 or more"', add
label define ni05a_edattan_lbl 51 `"Middle technical, grade 1"', add
label define ni05a_edattan_lbl 52 `"Middle technical, grade 2"', add
label define ni05a_edattan_lbl 53 `"Middle technical, grade 3"', add
label define ni05a_edattan_lbl 54 `"Middle technical, grade 4"', add
label define ni05a_edattan_lbl 55 `"Middle technical, grade 5 or more"', add
label define ni05a_edattan_lbl 61 `"Advanced technical, grade 1"', add
label define ni05a_edattan_lbl 62 `"Advanced technical, grade 2"', add
label define ni05a_edattan_lbl 63 `"Advanced technical, grade 3"', add
label define ni05a_edattan_lbl 64 `"Advanced technical, grade 4"', add
label define ni05a_edattan_lbl 65 `"Advanced technical, grade 5 or more"', add
label define ni05a_edattan_lbl 71 `"University degree, year 1"', add
label define ni05a_edattan_lbl 72 `"University degree, year 2"', add
label define ni05a_edattan_lbl 73 `"University degree, year 3"', add
label define ni05a_edattan_lbl 74 `"University degree, year 4"', add
label define ni05a_edattan_lbl 75 `"University degree, year 5"', add
label define ni05a_edattan_lbl 76 `"University degree, year 6"', add
label define ni05a_edattan_lbl 77 `"University degree, year 7"', add
label define ni05a_edattan_lbl 98 `"Unknown"', add
label define ni05a_edattan_lbl 99 `"NIU (not in universe)"', add
label values ni05a_edattan ni05a_edattan_lbl

label define ni05a_univtech_lbl 1 `"Yes"'
label define ni05a_univtech_lbl 2 `"No"', add
label define ni05a_univtech_lbl 9 `"NIU (not in universe)"', add
label values ni05a_univtech ni05a_univtech_lbl

label define ni05a_study2_lbl 10 `"Basic technical studies in agricultural sciences and forestry"'
label define ni05a_study2_lbl 11 `"Basic technical studies in industry and carpentry"', add
label define ni05a_study2_lbl 12 `"Basic technical studies in mechanics, communications, and construction"', add
label define ni05a_study2_lbl 13 `"Basic technical studies in management, accounting, secretarial studies, design, and gastronomy"', add
label define ni05a_study2_lbl 19 `"Basic technical studies nec"', add
label define ni05a_study2_lbl 20 `"Intermediate technical studies in agricultural sciences and forestry"', add
label define ni05a_study2_lbl 21 `"Intermediate technical studies in refrigeration and in industrial, car, and computers repair and maintenance"', add
label define ni05a_study2_lbl 22 `"Intermediate technical studies in electricity and construction"', add
label define ni05a_study2_lbl 23 `"Intermediate technical studies in management, accounting, and secretarial studies"', add
label define ni05a_study2_lbl 24 `"Intermediate technical studies in electronics, computers, education, and health"', add
label define ni05a_study2_lbl 29 `"Intermediate technical studies nec"', add
label define ni05a_study2_lbl 30 `"Higher technical studies in agriculture, management, economics, and secretarial studies"', add
label define ni05a_study2_lbl 31 `"Higher technical studies in teaching, legal studies, technology, medicine, sociology, theology, health, arts, and university bachelor degrees"', add
label define ni05a_study2_lbl 39 `"Higher technical studies nec"', add
label define ni05a_study2_lbl 40 `"University studies in agriculture, livestock breeding, veterinary, forestry, ecology, geodesy, and geology"', add
label define ni05a_study2_lbl 41 `"University studies in life sciences, environment, chemistry, mathematics, physics, medicine, nursing, computer sciences, and computers"', add
label define ni05a_study2_lbl 42 `"University studies in economics, management, marketing, tourism, finance, trade, civil engineering and other related, and diplomas"', add
label define ni05a_study2_lbl 43 `"University studies in industrial engineering, mechanical engineering, navigation and fisheries, telematics and telecommunications, history, philosophy, antropology and geography, law, philology and linguistics, and English"', add
label define ni05a_study2_lbl 44 `"University studies in political sciences, communications, psicology, sociology, social sciences, history, geography, natural sciences, biology, physics, chemistry, mathematics, Spanish, education and pedagogy"', add
label define ni05a_study2_lbl 45 `"University studies in liberal arts, design, and food"', add
label define ni05a_study2_lbl 49 `"University studies nec"', add
label define ni05a_study2_lbl 98 `"Unknown"', add
label define ni05a_study2_lbl 99 `"NIU (not in universe)"', add
label values ni05a_study2 ni05a_study2_lbl

label define ni05a_worked_lbl 1 `"Worked during the reference week"'
label define ni05a_worked_lbl 2 `"Did not work during the reference week"', add
label define ni05a_worked_lbl 3 `"Inactive in institutional dwelling"', add
label define ni05a_worked_lbl 9 `"NIU (not in universe)"', add
label values ni05a_worked ni05a_worked_lbl

label define ni05a_absent_lbl 1 `"Was on leave/vacation"'
label define ni05a_absent_lbl 2 `"Was not on leave/vacation"', add
label define ni05a_absent_lbl 9 `"NIU (not in universe)"', add
label values ni05a_absent ni05a_absent_lbl

label define ni05a_work2wk_lbl 1 `"Looked for work"'
label define ni05a_work2wk_lbl 2 `"Did not look for work"', add
label define ni05a_work2wk_lbl 9 `"NIU (not in universe)"', add
label values ni05a_work2wk ni05a_work2wk_lbl

label define ni05a_nolookwk_lbl 1 `"Expects to continue agricultural/fishing activities"'
label define ni05a_nolookwk_lbl 2 `"Already found employment"', add
label define ni05a_nolookwk_lbl 3 `"Waiting for an answer from an employer"', add
label define ni05a_nolookwk_lbl 4 `"Doesn't know where to look for work"', add
label define ni05a_nolookwk_lbl 5 `"Tired of looking for work"', add
label define ni05a_nolookwk_lbl 6 `"There is no work"', add
label define ni05a_nolookwk_lbl 7 `"Other"', add
label define ni05a_nolookwk_lbl 9 `"NIU (not in universe)"', add
label values ni05a_nolookwk ni05a_nolookwk_lbl

label define ni05a_nonwork_lbl 1 `"Studies only"'
label define ni05a_nonwork_lbl 2 `"Housework"', add
label define ni05a_nonwork_lbl 3 `"Pensioned/retired/collects rent or investment income"', add
label define ni05a_nonwork_lbl 4 `"Permanently disabled"', add
label define ni05a_nonwork_lbl 5 `"Elderly"', add
label define ni05a_nonwork_lbl 6 `"Other"', add
label define ni05a_nonwork_lbl 8 `"Inactive in institutional dwelling"', add
label define ni05a_nonwork_lbl 9 `"NIU (not in universe)"', add
label values ni05a_nonwork ni05a_nonwork_lbl

label define ni05a_workpast_lbl 1 `"Has worked before"'
label define ni05a_workpast_lbl 2 `"Has not worked before"', add
label define ni05a_workpast_lbl 9 `"NIU (not in universe)"', add
label values ni05a_workpast ni05a_workpast_lbl

label define ni05a_othactiv_lbl 1 `"Sells at a fixed or mobile stand"'
label define ni05a_othactiv_lbl 2 `"Wash, iron, sew for other persons, or similar"', add
label define ni05a_othactiv_lbl 3 `"Make and sell bread, tortillas, candy, artesanal goods, or similar"', add
label define ni05a_othactiv_lbl 4 `"Helper or apprentice"', add
label define ni05a_othactiv_lbl 5 `"Field work (planting and harvesting)"', add
label define ni05a_othactiv_lbl 6 `"Other paid activity"', add
label define ni05a_othactiv_lbl 7 `"No paid activity"', add
label define ni05a_othactiv_lbl 9 `"NIU (not in universe)"', add
label values ni05a_othactiv ni05a_othactiv_lbl

label define ni05a_workhere_lbl 1 `"This municipality"'
label define ni05a_workhere_lbl 2 `"Another municipality"', add
label define ni05a_workhere_lbl 3 `"Various municipalities"', add
label define ni05a_workhere_lbl 4 `"Another country"', add
label define ni05a_workhere_lbl 9 `"NIU (not in universe)"', add
label values ni05a_workhere ni05a_workhere_lbl

label define ni05a_tempwork_lbl 1 `"Temporary"'
label define ni05a_tempwork_lbl 2 `"Permanent"', add
label define ni05a_tempwork_lbl 8 `"Unknown"', add
label define ni05a_tempwork_lbl 9 `"NIU (not in universe)"', add
label values ni05a_tempwork ni05a_tempwork_lbl

label define ni05a_occ3_lbl 011 `"Armed forces"'
label define ni05a_occ3_lbl 111 `"Legislators"', add
label define ni05a_occ3_lbl 112 `"Senior government officials"', add
label define ni05a_occ3_lbl 114 `"Senior officials of special-interest organisations"', add
label define ni05a_occ3_lbl 121 `"Directors and chief executives"', add
label define ni05a_occ3_lbl 122 `"Production and operations department managers"', add
label define ni05a_occ3_lbl 123 `"Other department managers"', add
label define ni05a_occ3_lbl 131 `"General managers"', add
label define ni05a_occ3_lbl 211 `"Physicists, chemists and related professionals"', add
label define ni05a_occ3_lbl 212 `"Mathematicians, statisticians and related professionals"', add
label define ni05a_occ3_lbl 213 `"Computing professionals"', add
label define ni05a_occ3_lbl 214 `"Architects, engineers and related professionals"', add
label define ni05a_occ3_lbl 221 `"Life science professionals"', add
label define ni05a_occ3_lbl 222 `"Health professionals (except nursing)"', add
label define ni05a_occ3_lbl 223 `"Nursing and midwifery professionals"', add
label define ni05a_occ3_lbl 231 `"College, university and higher education teaching professionals"', add
label define ni05a_occ3_lbl 232 `"Secondary education teaching professionals"', add
label define ni05a_occ3_lbl 233 `"Primary and pre-primary education teaching professionals"', add
label define ni05a_occ3_lbl 235 `"Other teaching professionals"', add
label define ni05a_occ3_lbl 241 `"Business professionals"', add
label define ni05a_occ3_lbl 242 `"Legal professionals"', add
label define ni05a_occ3_lbl 243 `"Archivists, librarians and related information professionals"', add
label define ni05a_occ3_lbl 244 `"Social science and related professionals"', add
label define ni05a_occ3_lbl 245 `"Writers and creative or performing artists"', add
label define ni05a_occ3_lbl 246 `"Religious professionals"', add
label define ni05a_occ3_lbl 311 `"Physical and engineering science technicians"', add
label define ni05a_occ3_lbl 312 `"Computer associate professionals"', add
label define ni05a_occ3_lbl 313 `"Optical and electronic equipment operators"', add
label define ni05a_occ3_lbl 314 `"Ship and aircraft controllers and technicians"', add
label define ni05a_occ3_lbl 315 `"Safety and quality inspectors"', add
label define ni05a_occ3_lbl 321 `"Life science technicians and related associate professionals"', add
label define ni05a_occ3_lbl 322 `"Modern health associate professionals (except nursing)"', add
label define ni05a_occ3_lbl 323 `"Nursing and midwifery associate professionals"', add
label define ni05a_occ3_lbl 324 `"Traditional medicine practitioners and faith healers"', add
label define ni05a_occ3_lbl 331 `"Primary education teaching associate professionals"', add
label define ni05a_occ3_lbl 332 `"Pre-primary education teaching associate professionals"', add
label define ni05a_occ3_lbl 333 `"Special education teaching associate professionals"', add
label define ni05a_occ3_lbl 334 `"Other teaching associate professionals"', add
label define ni05a_occ3_lbl 341 `"Finance and sales associate professionals"', add
label define ni05a_occ3_lbl 342 `"Business services agents and trade brokers"', add
label define ni05a_occ3_lbl 343 `"Administrative associate professionals"', add
label define ni05a_occ3_lbl 344 `"Customs, tax and related government associate professionals"', add
label define ni05a_occ3_lbl 345 `"Police inspectors and detectives"', add
label define ni05a_occ3_lbl 346 `"Social work associate professionals"', add
label define ni05a_occ3_lbl 347 `"Artistic, entertainment and sports associate professionals"', add
label define ni05a_occ3_lbl 411 `"Secretaries and keyboard-operating clerks"', add
label define ni05a_occ3_lbl 412 `"Numerical clerks"', add
label define ni05a_occ3_lbl 413 `"Material-recording and transport clerks"', add
label define ni05a_occ3_lbl 414 `"Library, mail and related clerks"', add
label define ni05a_occ3_lbl 419 `"Other office clerks"', add
label define ni05a_occ3_lbl 421 `"Cashiers, tellers and related clerks"', add
label define ni05a_occ3_lbl 422 `"Client information clerks"', add
label define ni05a_occ3_lbl 511 `"Travel attendants and related workers"', add
label define ni05a_occ3_lbl 512 `"Housekeeping and restaurant services workers"', add
label define ni05a_occ3_lbl 513 `"Personal care and related workers"', add
label define ni05a_occ3_lbl 514 `"Other personal services workers"', add
label define ni05a_occ3_lbl 516 `"Protective services workers"', add
label define ni05a_occ3_lbl 522 `"Shop salespersons and demonstrators"', add
label define ni05a_occ3_lbl 523 `"Stall and market salespersons"', add
label define ni05a_occ3_lbl 611 `"Market gardeners and crop growers"', add
label define ni05a_occ3_lbl 612 `"Market-oriented animal producers and related workers"', add
label define ni05a_occ3_lbl 613 `"Market-oriented crop and animal producers"', add
label define ni05a_occ3_lbl 614 `"Forestry and related workers"', add
label define ni05a_occ3_lbl 615 `"Fishery workers, hunters and trappers"', add
label define ni05a_occ3_lbl 621 `"Subsistence agricultural and fishery workers"', add
label define ni05a_occ3_lbl 711 `"Miners, shotfirers, stone cutters and carvers"', add
label define ni05a_occ3_lbl 712 `"Building frame and related trades workers"', add
label define ni05a_occ3_lbl 713 `"Building finishers and related trades workers"', add
label define ni05a_occ3_lbl 714 `"Painters, building structure cleaners and related trades workers"', add
label define ni05a_occ3_lbl 721 `"Metal moulders, welders, sheet-metal workers, structural- metal preparers, and related trades workers"', add
label define ni05a_occ3_lbl 722 `"Blacksmiths, tool-makers and related trades workers"', add
label define ni05a_occ3_lbl 723 `"Machinery mechanics and fitters"', add
label define ni05a_occ3_lbl 724 `"Electrical and electronic equipment mechanics and fitters"', add
label define ni05a_occ3_lbl 731 `"Precision workers in metal and related materials"', add
label define ni05a_occ3_lbl 732 `"Potters, glass-makers and related trades workers"', add
label define ni05a_occ3_lbl 733 `"Handicraft workers in wood,textile, leather and related materials"', add
label define ni05a_occ3_lbl 734 `"Printing and related trades workers"', add
label define ni05a_occ3_lbl 741 `"Food processing and related trades workers"', add
label define ni05a_occ3_lbl 742 `"Wood treaters, cabinet-makers and related trades workers"', add
label define ni05a_occ3_lbl 743 `"Textile, garment and related trades workers"', add
label define ni05a_occ3_lbl 744 `"Pelt, leather and shoemaking trades workers"', add
label define ni05a_occ3_lbl 811 `"Mining- and mineral-processing-plant operators"', add
label define ni05a_occ3_lbl 812 `"Metal-processing-plant operators"', add
label define ni05a_occ3_lbl 813 `"Glass, ceramics and related plant operators"', add
label define ni05a_occ3_lbl 814 `"Wood-processing- and papermaking-plant operators"', add
label define ni05a_occ3_lbl 815 `"Chemical-processing-plant operators"', add
label define ni05a_occ3_lbl 816 `"Power-production and related plant operators"', add
label define ni05a_occ3_lbl 821 `"Metal- and mineral-products machine operators"', add
label define ni05a_occ3_lbl 822 `"Chemical-products machine operators"', add
label define ni05a_occ3_lbl 823 `"Rubber- and plastic-products machine operators"', add
label define ni05a_occ3_lbl 824 `"Wood-products machine operators"', add
label define ni05a_occ3_lbl 825 `"Printing-, binding- and paper-products machine operators"', add
label define ni05a_occ3_lbl 826 `"Textile-, fur- and leather-products machine operators"', add
label define ni05a_occ3_lbl 827 `"Food and related products machine operators"', add
label define ni05a_occ3_lbl 828 `"Assemblers"', add
label define ni05a_occ3_lbl 829 `"Other machine operators and assemblers"', add
label define ni05a_occ3_lbl 832 `"Motor-vehicle drivers"', add
label define ni05a_occ3_lbl 833 `"Agricultural and other mobile-plant operators"', add
label define ni05a_occ3_lbl 834 `"Ships' deck crews and related workers"', add
label define ni05a_occ3_lbl 911 `"Street vendors and related workers"', add
label define ni05a_occ3_lbl 912 `"Shoe cleaning and other street services elementary occupations"', add
label define ni05a_occ3_lbl 913 `"Domestic and related helpers, cleaners and launderers"', add
label define ni05a_occ3_lbl 914 `"Building caretakers, window and related cleaners"', add
label define ni05a_occ3_lbl 915 `"Messengers, porters, doorkeepers and related workers"', add
label define ni05a_occ3_lbl 916 `"Garbage collectors and related labourers"', add
label define ni05a_occ3_lbl 921 `"Agricultural, fishery and related labourers"', add
label define ni05a_occ3_lbl 931 `"Mining and construction labourers"', add
label define ni05a_occ3_lbl 932 `"Manufacturing labourers"', add
label define ni05a_occ3_lbl 933 `"Transport labourers and freight handlers"', add
label define ni05a_occ3_lbl 941 `"Assistant, not specified"', add
label define ni05a_occ3_lbl 990 `"Response suppressed"', add
label define ni05a_occ3_lbl 998 `"Unknown"', add
label define ni05a_occ3_lbl 999 `"NIU (not in universe)"', add
label values ni05a_occ3 ni05a_occ3_lbl

label define ni05a_classwrk_lbl 1 `"Employee / worker"'
label define ni05a_classwrk_lbl 2 `"Day laborer / farmhand"', add
label define ni05a_classwrk_lbl 3 `"Unpaid worker"', add
label define ni05a_classwrk_lbl 4 `"Employer / business owner"', add
label define ni05a_classwrk_lbl 5 `"Self-employed"', add
label define ni05a_classwrk_lbl 6 `"Member of a cooperative"', add
label define ni05a_classwrk_lbl 7 `"Other"', add
label define ni05a_classwrk_lbl 8 `"Unknown"', add
label define ni05a_classwrk_lbl 9 `"NIU (not in universe)"', add
label values ni05a_classwrk ni05a_classwrk_lbl

label define ni05a_ind3_lbl 011 `"Growing of crops, market gardening, horticulture"'
label define ni05a_ind3_lbl 012 `"Farming of animals"', add
label define ni05a_ind3_lbl 013 `"Growing of crops combined with farming of animals (mixed farming)"', add
label define ni05a_ind3_lbl 014 `"Agricultural and animal husbandry service activities, except veterinary activities"', add
label define ni05a_ind3_lbl 020 `"Forestry, logging and related service activities"', add
label define ni05a_ind3_lbl 050 `"Fishing, aquaculture and service activities incidental to fishing"', add
label define ni05a_ind3_lbl 132 `"Mining of non-ferrous metal ores, except uranium and thorium ores"', add
label define ni05a_ind3_lbl 141 `"Quarrying of stone, sand and clay"', add
label define ni05a_ind3_lbl 142 `"Mining and quarrying nec"', add
label define ni05a_ind3_lbl 151 `"Production, processing and preservation of meat, fish, fruit, vegetables, oils and fats"', add
label define ni05a_ind3_lbl 152 `"Manufacture of dairy products"', add
label define ni05a_ind3_lbl 153 `"Manufacture of grain mill products, starches and starch products, and prepared animal feeds"', add
label define ni05a_ind3_lbl 154 `"Manufacture of other food products"', add
label define ni05a_ind3_lbl 155 `"Manufacture of beverages"', add
label define ni05a_ind3_lbl 160 `"Manufacture of tobacco products"', add
label define ni05a_ind3_lbl 171 `"Spinning, weaving and finishing of textiles"', add
label define ni05a_ind3_lbl 172 `"Manufacture of other textiles"', add
label define ni05a_ind3_lbl 181 `"Manufacture of wearing apparel, except fur apparel"', add
label define ni05a_ind3_lbl 191 `"Tanning and dressing of leather, manufacture of luggage, handbags, saddlery and harness"', add
label define ni05a_ind3_lbl 192 `"Manufacture of footwear"', add
label define ni05a_ind3_lbl 201 `"Sawmilling and planing of wood"', add
label define ni05a_ind3_lbl 202 `"Manufacture of products of wood, cork, straw and plaiting materials"', add
label define ni05a_ind3_lbl 210 `"Manufacture of paper and paper products"', add
label define ni05a_ind3_lbl 221 `"Publishing"', add
label define ni05a_ind3_lbl 222 `"Printing and service activities related to printing"', add
label define ni05a_ind3_lbl 232 `"Manufacture of refined petroleum products"', add
label define ni05a_ind3_lbl 242 `"Manufacture of other chemical products"', add
label define ni05a_ind3_lbl 252 `"Manufacture of plastics products"', add
label define ni05a_ind3_lbl 261 `"Manufacture of glass and glass products"', add
label define ni05a_ind3_lbl 269 `"Manufacture of non-metallic mineral products nec"', add
label define ni05a_ind3_lbl 273 `"Casting of metals"', add
label define ni05a_ind3_lbl 281 `"Manufacture of structural metal products, tanks, reservoirs and steam generators"', add
label define ni05a_ind3_lbl 289 `"Manufacture of other fabricated metal products, metalworking service activities"', add
label define ni05a_ind3_lbl 319 `"Manufacture of other electrical equipment nec"', add
label define ni05a_ind3_lbl 351 `"Building and repairing of ships and boats"', add
label define ni05a_ind3_lbl 361 `"Manufacture of furniture"', add
label define ni05a_ind3_lbl 369 `"Manufacturing nec"', add
label define ni05a_ind3_lbl 371 `"Recycling of waste metal and non-metal"', add
label define ni05a_ind3_lbl 401 `"Production, transmission and distribution of electricity"', add
label define ni05a_ind3_lbl 410 `"Collection, purification and distribution of water"', add
label define ni05a_ind3_lbl 451 `"Site preparation"', add
label define ni05a_ind3_lbl 452 `"Building of complete constructions or parts thereof, civil engineering"', add
label define ni05a_ind3_lbl 453 `"Building installation"', add
label define ni05a_ind3_lbl 454 `"Building completion"', add
label define ni05a_ind3_lbl 501 `"Sale of motor vehicles"', add
label define ni05a_ind3_lbl 502 `"Maintenance and repair of motor vehicles"', add
label define ni05a_ind3_lbl 503 `"Sale of motor vehicle parts and accessories"', add
label define ni05a_ind3_lbl 504 `"Sale, maintenance and repair of motorcycles and related parts and accessories"', add
label define ni05a_ind3_lbl 505 `"Retail sale of automotive fuel"', add
label define ni05a_ind3_lbl 506 `"Sale, maintenance, and repair of human and animal traction vehicles and related parts and accessories"', add
label define ni05a_ind3_lbl 511 `"Wholesale on a fee or contract basis"', add
label define ni05a_ind3_lbl 512 `"Wholesale of agricultural raw materials, live animals, food, beverages and tobacco"', add
label define ni05a_ind3_lbl 513 `"Wholesale of household goods"', add
label define ni05a_ind3_lbl 514 `"Wholesale of non-agricultural intermediate products, waste and scrap"', add
label define ni05a_ind3_lbl 515 `"Wholesale of machinery, equipment and supplies"', add
label define ni05a_ind3_lbl 519 `"Other wholesale"', add
label define ni05a_ind3_lbl 521 `"Non-specialized retail trade in stores"', add
label define ni05a_ind3_lbl 522 `"Retail sale of food, beverages and tobacco in specialized stores"', add
label define ni05a_ind3_lbl 523 `"Other retail trade of new goods in specialized stores"', add
label define ni05a_ind3_lbl 524 `"Retail sale of second-hand goods in stores"', add
label define ni05a_ind3_lbl 525 `"Retail trade not in stores"', add
label define ni05a_ind3_lbl 526 `"Repair of personal and household goods"', add
label define ni05a_ind3_lbl 527 `"Retail trade of machinery and equipment"', add
label define ni05a_ind3_lbl 551 `"Hotels, camping sites and other provision of short-stay accommodation"', add
label define ni05a_ind3_lbl 552 `"Restaurants, bars and canteens"', add
label define ni05a_ind3_lbl 602 `"Other land transport"', add
label define ni05a_ind3_lbl 611 `"Sea and coastal water transport"', add
label define ni05a_ind3_lbl 621 `"Scheduled air transport"', add
label define ni05a_ind3_lbl 630 `"Supporting and auxiliary transport activities, activities of travel agencies"', add
label define ni05a_ind3_lbl 641 `"Post and courier activities"', add
label define ni05a_ind3_lbl 642 `"Telecommunications"', add
label define ni05a_ind3_lbl 651 `"Monetary intermediation"', add
label define ni05a_ind3_lbl 659 `"Other financial intermediation"', add
label define ni05a_ind3_lbl 660 `"Insurance and pension funding, except compulsory social security"', add
label define ni05a_ind3_lbl 671 `"Activities auxiliary to financial intermediation, except insurance and pension funding"', add
label define ni05a_ind3_lbl 701 `"Real estate activities with own or leased property"', add
label define ni05a_ind3_lbl 711 `"Renting of transport equipment"', add
label define ni05a_ind3_lbl 713 `"Renting of personal and household goods nec"', add
label define ni05a_ind3_lbl 723 `"Data processing"', add
label define ni05a_ind3_lbl 725 `"Maintenance and repair of office, accounting and computing machinery"', add
label define ni05a_ind3_lbl 731 `"Research and experimental development on natural sciences and engineering (NSE)"', add
label define ni05a_ind3_lbl 741 `"Legal, accounting, bookkeeping and auditing activities, tax consultancy, market research and public opinion polling, business and management consultancy"', add
label define ni05a_ind3_lbl 742 `"Architectural, engineering and other technical activities"', add
label define ni05a_ind3_lbl 743 `"Advertising"', add
label define ni05a_ind3_lbl 749 `"Business activities nec"', add
label define ni05a_ind3_lbl 751 `"Administration of the State and the economic and social policy of the community"', add
label define ni05a_ind3_lbl 752 `"Provision of services to the community as a whole"', add
label define ni05a_ind3_lbl 753 `"Compulsory social security activities"', add
label define ni05a_ind3_lbl 801 `"Primary education"', add
label define ni05a_ind3_lbl 802 `"Secondary education"', add
label define ni05a_ind3_lbl 803 `"Higher education"', add
label define ni05a_ind3_lbl 809 `"Other education"', add
label define ni05a_ind3_lbl 851 `"Human health activities"', add
label define ni05a_ind3_lbl 852 `"Veterinary activities"', add
label define ni05a_ind3_lbl 853 `"Social work activities"', add
label define ni05a_ind3_lbl 900 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define ni05a_ind3_lbl 911 `"Activities of business, employers and professional organizations"', add
label define ni05a_ind3_lbl 919 `"Activities of other membership organizations"', add
label define ni05a_ind3_lbl 921 `"Motion picture, radio, television and other entertainment activities"', add
label define ni05a_ind3_lbl 922 `"News agency activities"', add
label define ni05a_ind3_lbl 923 `"Library, archives, museums and other cultural activities"', add
label define ni05a_ind3_lbl 924 `"Sporting and other recreational activities"', add
label define ni05a_ind3_lbl 930 `"Other service activities"', add
label define ni05a_ind3_lbl 950 `"Activities of private households as employers of domestic staff"', add
label define ni05a_ind3_lbl 960 `"Undifferentiated goods-producing activities of private households for own use"', add
label define ni05a_ind3_lbl 980 `"Extraterritorial organizations and bodies"', add
label define ni05a_ind3_lbl 990 `"Other non-specified activities"', add
label define ni05a_ind3_lbl 995 `"Response suppressed"', add
label define ni05a_ind3_lbl 998 `"Unknown"', add
label define ni05a_ind3_lbl 999 `"NIU (not in universe)"', add
label values ni05a_ind3 ni05a_ind3_lbl

label define ni05a_children_lbl 1 `"Yes"'
label define ni05a_children_lbl 2 `"No"', add
label define ni05a_children_lbl 8 `"Unknown"', add
label define ni05a_children_lbl 9 `"NIU (not in universe)"', add
label values ni05a_children ni05a_children_lbl

label define ni05a_chborn_lbl 01 `"1"'
label define ni05a_chborn_lbl 02 `"2"', add
label define ni05a_chborn_lbl 03 `"3"', add
label define ni05a_chborn_lbl 04 `"4"', add
label define ni05a_chborn_lbl 05 `"5"', add
label define ni05a_chborn_lbl 06 `"6"', add
label define ni05a_chborn_lbl 07 `"7"', add
label define ni05a_chborn_lbl 08 `"8"', add
label define ni05a_chborn_lbl 09 `"9"', add
label define ni05a_chborn_lbl 10 `"10"', add
label define ni05a_chborn_lbl 11 `"11"', add
label define ni05a_chborn_lbl 12 `"12"', add
label define ni05a_chborn_lbl 13 `"13"', add
label define ni05a_chborn_lbl 14 `"14"', add
label define ni05a_chborn_lbl 15 `"15"', add
label define ni05a_chborn_lbl 16 `"16"', add
label define ni05a_chborn_lbl 17 `"17"', add
label define ni05a_chborn_lbl 18 `"18"', add
label define ni05a_chborn_lbl 19 `"19"', add
label define ni05a_chborn_lbl 20 `"20+"', add
label define ni05a_chborn_lbl 98 `"Unknown"', add
label define ni05a_chborn_lbl 99 `"NIU (not in universe)"', add
label values ni05a_chborn ni05a_chborn_lbl

label define ni05a_chbornm_lbl 00 `"0"'
label define ni05a_chbornm_lbl 01 `"1"', add
label define ni05a_chbornm_lbl 02 `"2"', add
label define ni05a_chbornm_lbl 03 `"3"', add
label define ni05a_chbornm_lbl 04 `"4"', add
label define ni05a_chbornm_lbl 05 `"5"', add
label define ni05a_chbornm_lbl 06 `"6"', add
label define ni05a_chbornm_lbl 07 `"7"', add
label define ni05a_chbornm_lbl 08 `"8"', add
label define ni05a_chbornm_lbl 09 `"9"', add
label define ni05a_chbornm_lbl 10 `"10"', add
label define ni05a_chbornm_lbl 11 `"11"', add
label define ni05a_chbornm_lbl 12 `"12"', add
label define ni05a_chbornm_lbl 13 `"13+"', add
label define ni05a_chbornm_lbl 98 `"Unknown"', add
label define ni05a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values ni05a_chbornm ni05a_chbornm_lbl

label define ni05a_chbornf_lbl 00 `"0"'
label define ni05a_chbornf_lbl 01 `"1"', add
label define ni05a_chbornf_lbl 02 `"2"', add
label define ni05a_chbornf_lbl 03 `"3"', add
label define ni05a_chbornf_lbl 04 `"4"', add
label define ni05a_chbornf_lbl 05 `"5"', add
label define ni05a_chbornf_lbl 06 `"6"', add
label define ni05a_chbornf_lbl 07 `"7"', add
label define ni05a_chbornf_lbl 08 `"8"', add
label define ni05a_chbornf_lbl 09 `"9"', add
label define ni05a_chbornf_lbl 10 `"10"', add
label define ni05a_chbornf_lbl 11 `"11"', add
label define ni05a_chbornf_lbl 12 `"12"', add
label define ni05a_chbornf_lbl 13 `"13+"', add
label define ni05a_chbornf_lbl 98 `"Unknown"', add
label define ni05a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values ni05a_chbornf ni05a_chbornf_lbl

label define ni05a_chsurv_lbl 00 `"0"'
label define ni05a_chsurv_lbl 01 `"1"', add
label define ni05a_chsurv_lbl 02 `"2"', add
label define ni05a_chsurv_lbl 03 `"3"', add
label define ni05a_chsurv_lbl 04 `"4"', add
label define ni05a_chsurv_lbl 05 `"5"', add
label define ni05a_chsurv_lbl 06 `"6"', add
label define ni05a_chsurv_lbl 07 `"7"', add
label define ni05a_chsurv_lbl 08 `"8"', add
label define ni05a_chsurv_lbl 09 `"9"', add
label define ni05a_chsurv_lbl 10 `"10"', add
label define ni05a_chsurv_lbl 11 `"11"', add
label define ni05a_chsurv_lbl 12 `"12"', add
label define ni05a_chsurv_lbl 13 `"13"', add
label define ni05a_chsurv_lbl 14 `"14"', add
label define ni05a_chsurv_lbl 15 `"15+"', add
label define ni05a_chsurv_lbl 98 `"Unknown"', add
label define ni05a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values ni05a_chsurv ni05a_chsurv_lbl

label define ni05a_chsurvm_lbl 00 `"0"'
label define ni05a_chsurvm_lbl 01 `"1"', add
label define ni05a_chsurvm_lbl 02 `"2"', add
label define ni05a_chsurvm_lbl 03 `"3"', add
label define ni05a_chsurvm_lbl 04 `"4"', add
label define ni05a_chsurvm_lbl 05 `"5"', add
label define ni05a_chsurvm_lbl 06 `"6"', add
label define ni05a_chsurvm_lbl 07 `"7"', add
label define ni05a_chsurvm_lbl 08 `"8"', add
label define ni05a_chsurvm_lbl 09 `"9"', add
label define ni05a_chsurvm_lbl 10 `"10+"', add
label define ni05a_chsurvm_lbl 98 `"Unknown"', add
label define ni05a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values ni05a_chsurvm ni05a_chsurvm_lbl

label define ni05a_chsurvf_lbl 00 `"0"'
label define ni05a_chsurvf_lbl 01 `"1"', add
label define ni05a_chsurvf_lbl 02 `"2"', add
label define ni05a_chsurvf_lbl 03 `"3"', add
label define ni05a_chsurvf_lbl 04 `"4"', add
label define ni05a_chsurvf_lbl 05 `"5"', add
label define ni05a_chsurvf_lbl 06 `"6"', add
label define ni05a_chsurvf_lbl 07 `"7"', add
label define ni05a_chsurvf_lbl 08 `"8"', add
label define ni05a_chsurvf_lbl 09 `"9"', add
label define ni05a_chsurvf_lbl 10 `"10+"', add
label define ni05a_chsurvf_lbl 98 `"Unknown"', add
label define ni05a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values ni05a_chsurvf ni05a_chsurvf_lbl

label define ni05a_bthmo_lbl 01 `"January"'
label define ni05a_bthmo_lbl 02 `"February"', add
label define ni05a_bthmo_lbl 03 `"March"', add
label define ni05a_bthmo_lbl 04 `"April"', add
label define ni05a_bthmo_lbl 05 `"May"', add
label define ni05a_bthmo_lbl 06 `"June"', add
label define ni05a_bthmo_lbl 07 `"July"', add
label define ni05a_bthmo_lbl 08 `"August"', add
label define ni05a_bthmo_lbl 09 `"September"', add
label define ni05a_bthmo_lbl 10 `"October"', add
label define ni05a_bthmo_lbl 11 `"November"', add
label define ni05a_bthmo_lbl 12 `"December"', add
label define ni05a_bthmo_lbl 98 `"Unknown"', add
label define ni05a_bthmo_lbl 99 `"NIU (not in universe)"', add
label values ni05a_bthmo ni05a_bthmo_lbl

label define ni05a_bthyr_lbl 1940 `"1940 or earlier"'
label define ni05a_bthyr_lbl 1941 `"1941"', add
label define ni05a_bthyr_lbl 1942 `"1942"', add
label define ni05a_bthyr_lbl 1943 `"1943"', add
label define ni05a_bthyr_lbl 1944 `"1944"', add
label define ni05a_bthyr_lbl 1945 `"1945"', add
label define ni05a_bthyr_lbl 1946 `"1946"', add
label define ni05a_bthyr_lbl 1947 `"1947"', add
label define ni05a_bthyr_lbl 1948 `"1948"', add
label define ni05a_bthyr_lbl 1949 `"1949"', add
label define ni05a_bthyr_lbl 1950 `"1950"', add
label define ni05a_bthyr_lbl 1951 `"1951"', add
label define ni05a_bthyr_lbl 1952 `"1952"', add
label define ni05a_bthyr_lbl 1953 `"1953"', add
label define ni05a_bthyr_lbl 1954 `"1954"', add
label define ni05a_bthyr_lbl 1955 `"1955"', add
label define ni05a_bthyr_lbl 1956 `"1956"', add
label define ni05a_bthyr_lbl 1957 `"1957"', add
label define ni05a_bthyr_lbl 1958 `"1958"', add
label define ni05a_bthyr_lbl 1959 `"1959"', add
label define ni05a_bthyr_lbl 1960 `"1960"', add
label define ni05a_bthyr_lbl 1961 `"1961"', add
label define ni05a_bthyr_lbl 1962 `"1962"', add
label define ni05a_bthyr_lbl 1963 `"1963"', add
label define ni05a_bthyr_lbl 1964 `"1964"', add
label define ni05a_bthyr_lbl 1965 `"1965"', add
label define ni05a_bthyr_lbl 1966 `"1966"', add
label define ni05a_bthyr_lbl 1967 `"1967"', add
label define ni05a_bthyr_lbl 1968 `"1968"', add
label define ni05a_bthyr_lbl 1969 `"1969"', add
label define ni05a_bthyr_lbl 1970 `"1970"', add
label define ni05a_bthyr_lbl 1971 `"1971"', add
label define ni05a_bthyr_lbl 1972 `"1972"', add
label define ni05a_bthyr_lbl 1973 `"1973"', add
label define ni05a_bthyr_lbl 1974 `"1974"', add
label define ni05a_bthyr_lbl 1975 `"1975"', add
label define ni05a_bthyr_lbl 1976 `"1976"', add
label define ni05a_bthyr_lbl 1977 `"1977"', add
label define ni05a_bthyr_lbl 1978 `"1978"', add
label define ni05a_bthyr_lbl 1979 `"1979"', add
label define ni05a_bthyr_lbl 1980 `"1980"', add
label define ni05a_bthyr_lbl 1981 `"1981"', add
label define ni05a_bthyr_lbl 1982 `"1982"', add
label define ni05a_bthyr_lbl 1983 `"1983"', add
label define ni05a_bthyr_lbl 1984 `"1984"', add
label define ni05a_bthyr_lbl 1985 `"1985"', add
label define ni05a_bthyr_lbl 1986 `"1986"', add
label define ni05a_bthyr_lbl 1987 `"1987"', add
label define ni05a_bthyr_lbl 1988 `"1988"', add
label define ni05a_bthyr_lbl 1989 `"1989"', add
label define ni05a_bthyr_lbl 1990 `"1990"', add
label define ni05a_bthyr_lbl 1991 `"1991"', add
label define ni05a_bthyr_lbl 1992 `"1992"', add
label define ni05a_bthyr_lbl 1993 `"1993"', add
label define ni05a_bthyr_lbl 1994 `"1994"', add
label define ni05a_bthyr_lbl 1995 `"1995"', add
label define ni05a_bthyr_lbl 1996 `"1996"', add
label define ni05a_bthyr_lbl 1997 `"1997"', add
label define ni05a_bthyr_lbl 1998 `"1998"', add
label define ni05a_bthyr_lbl 1999 `"1999"', add
label define ni05a_bthyr_lbl 2000 `"2000"', add
label define ni05a_bthyr_lbl 2001 `"2001"', add
label define ni05a_bthyr_lbl 2002 `"2002"', add
label define ni05a_bthyr_lbl 2003 `"2003"', add
label define ni05a_bthyr_lbl 2004 `"2004"', add
label define ni05a_bthyr_lbl 2005 `"2005"', add
label define ni05a_bthyr_lbl 9998 `"Unknown"', add
label define ni05a_bthyr_lbl 9999 `"NIU (not in universe)"', add
label values ni05a_bthyr ni05a_bthyr_lbl

label define ni05a_bthyr_lbl 1940 `"1940 or earlier"'
label define ni05a_bthyr_lbl 1941 `"1941"', add
label define ni05a_bthyr_lbl 1942 `"1942"', add
label define ni05a_bthyr_lbl 1943 `"1943"', add
label define ni05a_bthyr_lbl 1944 `"1944"', add
label define ni05a_bthyr_lbl 1945 `"1945"', add
label define ni05a_bthyr_lbl 1946 `"1946"', add
label define ni05a_bthyr_lbl 1947 `"1947"', add
label define ni05a_bthyr_lbl 1948 `"1948"', add
label define ni05a_bthyr_lbl 1949 `"1949"', add
label define ni05a_bthyr_lbl 1950 `"1950"', add
label define ni05a_bthyr_lbl 1951 `"1951"', add
label define ni05a_bthyr_lbl 1952 `"1952"', add
label define ni05a_bthyr_lbl 1953 `"1953"', add
label define ni05a_bthyr_lbl 1954 `"1954"', add
label define ni05a_bthyr_lbl 1955 `"1955"', add
label define ni05a_bthyr_lbl 1956 `"1956"', add
label define ni05a_bthyr_lbl 1957 `"1957"', add
label define ni05a_bthyr_lbl 1958 `"1958"', add
label define ni05a_bthyr_lbl 1959 `"1959"', add
label define ni05a_bthyr_lbl 1960 `"1960"', add
label define ni05a_bthyr_lbl 1961 `"1961"', add
label define ni05a_bthyr_lbl 1962 `"1962"', add
label define ni05a_bthyr_lbl 1963 `"1963"', add
label define ni05a_bthyr_lbl 1964 `"1964"', add
label define ni05a_bthyr_lbl 1965 `"1965"', add
label define ni05a_bthyr_lbl 1966 `"1966"', add
label define ni05a_bthyr_lbl 1967 `"1967"', add
label define ni05a_bthyr_lbl 1968 `"1968"', add
label define ni05a_bthyr_lbl 1969 `"1969"', add
label define ni05a_bthyr_lbl 1970 `"1970"', add
label define ni05a_bthyr_lbl 1971 `"1971"', add
label define ni05a_bthyr_lbl 1972 `"1972"', add
label define ni05a_bthyr_lbl 1973 `"1973"', add
label define ni05a_bthyr_lbl 1974 `"1974"', add
label define ni05a_bthyr_lbl 1975 `"1975"', add
label define ni05a_bthyr_lbl 1976 `"1976"', add
label define ni05a_bthyr_lbl 1977 `"1977"', add
label define ni05a_bthyr_lbl 1978 `"1978"', add
label define ni05a_bthyr_lbl 1979 `"1979"', add
label define ni05a_bthyr_lbl 1980 `"1980"', add
label define ni05a_bthyr_lbl 1981 `"1981"', add
label define ni05a_bthyr_lbl 1982 `"1982"', add
label define ni05a_bthyr_lbl 1983 `"1983"', add
label define ni05a_bthyr_lbl 1984 `"1984"', add
label define ni05a_bthyr_lbl 1985 `"1985"', add
label define ni05a_bthyr_lbl 1986 `"1986"', add
label define ni05a_bthyr_lbl 1987 `"1987"', add
label define ni05a_bthyr_lbl 1988 `"1988"', add
label define ni05a_bthyr_lbl 1989 `"1989"', add
label define ni05a_bthyr_lbl 1990 `"1990"', add
label define ni05a_bthyr_lbl 1991 `"1991"', add
label define ni05a_bthyr_lbl 1992 `"1992"', add
label define ni05a_bthyr_lbl 1993 `"1993"', add
label define ni05a_bthyr_lbl 1994 `"1994"', add
label define ni05a_bthyr_lbl 1995 `"1995"', add
label define ni05a_bthyr_lbl 1996 `"1996"', add
label define ni05a_bthyr_lbl 1997 `"1997"', add
label define ni05a_bthyr_lbl 1998 `"1998"', add
label define ni05a_bthyr_lbl 1999 `"1999"', add
label define ni05a_bthyr_lbl 2000 `"2000"', add
label define ni05a_bthyr_lbl 2001 `"2001"', add
label define ni05a_bthyr_lbl 2002 `"2002"', add
label define ni05a_bthyr_lbl 2003 `"2003"', add
label define ni05a_bthyr_lbl 2004 `"2004"', add
label define ni05a_bthyr_lbl 2005 `"2005"', add
label define ni05a_bthyr_lbl 9998 `"Unknown"', add
label define ni05a_bthyr_lbl 9999 `"NIU (not in universe)"', add
label values ni05a_bthyr ni05a_bthyr_lbl

label define ni05a_birthloc_lbl 1 `"In a health establishment"'
label define ni05a_birthloc_lbl 2 `"In a private home"', add
label define ni05a_birthloc_lbl 3 `"In another place"', add
label define ni05a_birthloc_lbl 8 `"Unknown"', add
label define ni05a_birthloc_lbl 9 `"NIU (not in universe)"', add
label values ni05a_birthloc ni05a_birthloc_lbl

label define ni05a_bthcert_lbl 1 `"Yes"'
label define ni05a_bthcert_lbl 2 `"No"', add
label define ni05a_bthcert_lbl 8 `"Unknown"', add
label define ni05a_bthcert_lbl 9 `"NIU (not in universe)"', add
label values ni05a_bthcert ni05a_bthcert_lbl

label define ni05a_econ_lbl 11 `"Employed"'
label define ni05a_econ_lbl 12 `"Casual/informal"', add
label define ni05a_econ_lbl 21 `"Unemployed"', add
label define ni05a_econ_lbl 22 `"Looking for work for the first time"', add
label define ni05a_econ_lbl 31 `"Waiting for agricultural employment"', add
label define ni05a_econ_lbl 32 `"Waiting for an answer"', add
label define ni05a_econ_lbl 33 `"Already found employment"', add
label define ni05a_econ_lbl 41 `"Inactive: student"', add
label define ni05a_econ_lbl 42 `"Inactive: doing housework"', add
label define ni05a_econ_lbl 43 `"Inactive: pensioned, retired, or collects rent or investment income"', add
label define ni05a_econ_lbl 44 `"Inactive: permanently disabled"', add
label define ni05a_econ_lbl 45 `"Inactive: elderly"', add
label define ni05a_econ_lbl 46 `"Inactive: other"', add
label define ni05a_econ_lbl 47 `"Inactive in institutional dwelling"', add
label define ni05a_econ_lbl 99 `"NIU (not in universe)"', add
label values ni05a_econ ni05a_econ_lbl


