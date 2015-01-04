* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  long    pe07a_dwnum      22-28    ///
  byte    pe07a_hhnum      29-29    ///
  byte    pe07a_hhn        30-30    ///
  byte    pe07a_pernd      31-32    ///
  byte    pe07a_pern       33-34    ///
  byte    pe07a_fbig       35-35    ///
  byte    pe07a_dept       36-37    ///
  int     pe07a_prov       38-41    ///
  byte    pe07a_urban      42-42    ///
  byte    pe07a_numhho     43-43    ///
  byte    pe07a_typdwell   44-45    ///
  byte    pe07a_occup      46-46    ///
  byte    pe07a_wall       47-47    ///
  byte    pe07a_floor      48-48    ///
  byte    pe07a_watsrc     49-49    ///
  byte    pe07a_watdaily   50-50    ///
  byte    pe07a_wathrs     51-52    ///
  byte    pe07a_watdays    53-53    ///
  byte    pe07a_wathrs2    54-55    ///
  byte    pe07a_sewage     56-56    ///
  byte    pe07a_lighting   57-57    ///
  byte    pe07a_rooms      58-59    ///
  byte    pe07a_ownershp   60-60    ///
  byte    pe07a_radio      61-61    ///
  byte    pe07a_tv         62-62    ///
  byte    pe07a_stereo     63-63    ///
  byte    pe07a_washer     64-64    ///
  byte    pe07a_fridge     65-65    ///
  byte    pe07a_computr    66-66    ///
  byte    pe07a_noappl     67-67    ///
  byte    pe07a_phone      68-68    ///
  byte    pe07a_cell       69-69    ///
  byte    pe07a_internet   70-70    ///
  byte    pe07a_cabletv    71-71    ///
  byte    pe07a_noserv     72-72    ///
  byte    pe07a_fuelcook   73-73    ///
  byte    pe07a_chimney    74-74    ///
  byte    pe07a_migrants   75-76    ///
  byte    pe07a_disvis     77-77    ///
  byte    pe07a_dishear    78-78    ///
  byte    pe07a_disspk     79-79    ///
  byte    pe07a_dislimb    80-80    ///
  byte    pe07a_disother   81-81    ///
  byte    pe07a_disnone    82-82    ///
  int     pernum           83-85    ///
  float   wtper            86-93    ///
  byte    pe07a_pernum     94-95    ///
  byte    pe07a_relate     96-97    ///
  byte    pe07a_sex        98-98    ///
  byte    pe07a_age        99-100   ///
  byte    pe07a_agemonth   101-102  ///
  byte    pe07a_birthreg   103-103  ///
  byte    pe07a_resident   104-104  ///
  int     pe07a_resctry    105-108  ///
  int     pe07a_resprov    109-112  ///
  byte    pe07a_here5yr    113-113  ///
  int     pe07a_ctry5yr    114-117  ///
  byte    pe07a_dept5yr    118-119  ///
  int     pe07a_prov5yr    120-123  ///
  byte    pe07a_bplhere    124-124  ///
  int     pe07a_bplctry    125-128  ///
  int     pe07a_bplprov    129-132  ///
  byte    pe07a_insursis   133-133  ///
  byte    pe07a_insuress   134-134  ///
  byte    pe07a_insuroth   135-135  ///
  byte    pe07a_insurnon   136-136  ///
  byte    pe07a_mtong      137-137  ///
  byte    pe07a_lit        138-138  ///
  byte    pe07a_edlevel    139-139  ///
  byte    pe07a_edgrade    140-140  ///
  byte    pe07a_edyear     141-141  ///
  int     pe07a_edattain   142-144  ///
  byte    pe07a_schoolatt  145-145  ///
  byte    pe07a_worked     146-146  ///
  byte    pe07a_reasonwk   147-147  ///
  byte    pe07a_lastnowk   148-149  ///
  int     pe07a_ind        150-153  ///
  byte    pe07a_ind2       154-155  ///
  byte    pe07a_classwkr   156-156  ///
  byte    pe07a_empsize    157-157  ///
  byte    pe07a_religion   158-158  ///
  byte    pe07a_marst      159-159  ///
  byte    pe07a_chborn     160-161  ///
  byte    pe07a_chsurv     162-163  ///
  byte    pe07a_lstbthmo   164-165  ///
  int     pe07a_lstbthyr   166-169  ///
  byte    pe07a_agebirth   170-171  ///
  byte    pe07a_idcard     172-172  ///
  using `"ipumsi_00100.dat"'

replace wtper           = wtper           / 100

format serial          %10.0f
format wtper           %8.2f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var pe07a_dwnum     `"Dwelling number"'
label var pe07a_hhnum     `"Household number (within dwelling)"'
label var pe07a_hhn       `"Number of households in dwelling"'
label var pe07a_pernd     `"Number of persons in dwelling"'
label var pe07a_pern      `"Number of persons in household"'
label var pe07a_fbig      `"Dwelling created by splitting apart a large dwelling or household"'
label var pe07a_dept      `"Department"'
label var pe07a_prov      `"Province"'
label var pe07a_urban     `"Urban-rural"'
label var pe07a_numhho    `"Total households"'
label var pe07a_typdwell  `"Type of dwelling"'
label var pe07a_occup     `"Dwelling occupancy status"'
label var pe07a_wall      `"Predominant construction material of the walls"'
label var pe07a_floor     `"Predominant construction material of the floors"'
label var pe07a_watsrc    `"Source of water in the dwelling"'
label var pe07a_watdaily  `"Daily water service"'
label var pe07a_wathrs    `"Daily water service: hours a day"'
label var pe07a_watdays   `"Non-daily water service: days a week"'
label var pe07a_wathrs2   `"Non-daily water service: hours a day"'
label var pe07a_sewage    `"Dwelling's bathrooms or toilets are connected to system"'
label var pe07a_lighting  `"Electricity from the public network"'
label var pe07a_rooms     `"How many rooms does the dwelling have"'
label var pe07a_ownershp  `"Dwelling ownership"'
label var pe07a_radio     `"Radio"'
label var pe07a_tv        `"Color television"'
label var pe07a_stereo    `"Audio equipment"'
label var pe07a_washer    `"Washing machine"'
label var pe07a_fridge    `"Refrigerator or freezer"'
label var pe07a_computr   `"Computer"'
label var pe07a_noappl    `"Has any electrical appliances"'
label var pe07a_phone     `"Landline phone"'
label var pe07a_cell      `"Cell phone"'
label var pe07a_internet  `"Internet connection"'
label var pe07a_cabletv   `"CableTV connection"'
label var pe07a_noserv    `"Has phone, television or internet connection"'
label var pe07a_fuelcook  `"Most common energy source for cooking"'
label var pe07a_chimney   `"Kitchen has a chimney"'
label var pe07a_migrants  `"Number of people in another country"'
label var pe07a_disvis    `"Visual disability"'
label var pe07a_dishear   `"Auditory disability"'
label var pe07a_disspk    `"Speaking disability"'
label var pe07a_dislimb   `"Disability related to arms and hands, or legs and feet"'
label var pe07a_disother  `"Other disability (any other limitations)"'
label var pe07a_disnone   `"Has any disability"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var pe07a_pernum    `"Person number (within household)"'
label var pe07a_relate    `"Relationship to head of household"'
label var pe07a_sex       `"Sex"'
label var pe07a_age       `"Age in years"'
label var pe07a_agemonth  `"Age in months"'
label var pe07a_birthreg  `"Has birth certificate on file with civil registry office"'
label var pe07a_resident  `"Lives permanently in this district"'
label var pe07a_resctry   `"Country of residence"'
label var pe07a_resprov   `"Province of residence"'
label var pe07a_here5yr   `"Was living in this district five years ago"'
label var pe07a_ctry5yr   `"Country of residence 5 years ago"'
label var pe07a_dept5yr   `"Department of residence 5 years ago"'
label var pe07a_prov5yr   `"Province of residence 5 years ago"'
label var pe07a_bplhere   `"Born in this district"'
label var pe07a_bplctry   `"Country of birth"'
label var pe07a_bplprov   `"Province of birth"'
label var pe07a_insursis  `"Member of SIS insurance plan"'
label var pe07a_insuress  `"Member of ESSALUD"'
label var pe07a_insuroth  `"Membership in other plan"'
label var pe07a_insurnon  `"Has any insurance"'
label var pe07a_mtong     `"First language learned"'
label var pe07a_lit       `"Literacy"'
label var pe07a_edlevel   `"Highest educational level achieved"'
label var pe07a_edgrade   `"Education, grade passed"'
label var pe07a_edyear    `"Education, year passed"'
label var pe07a_edattain  `"Education level completed"'
label var pe07a_schoolatt `"Currently attending a high school, school, or university"'
label var pe07a_worked    `"Worked at least one hour last week for pay"'
label var pe07a_reasonwk  `"Activity last week"'
label var pe07a_lastnowk  `"Activity last week if not working"'
label var pe07a_ind       `"Economic activity (4 digits)"'
label var pe07a_ind2      `"Economic activity (2 digits)"'
label var pe07a_classwkr  `"Main employment occupational category"'
label var pe07a_empsize   `"Number of people working in place of employment"'
label var pe07a_religion  `"Religion"'
label var pe07a_marst     `"Civil or marital status"'
label var pe07a_chborn    `"Live-born children in total"'
label var pe07a_chsurv    `"Children still living"'
label var pe07a_lstbthmo  `"Month in which last child was born"'
label var pe07a_lstbthyr  `"Year in which last child was born"'
label var pe07a_agebirth  `"Age at which first child was born"'
label var pe07a_idcard    `"National id card"'

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

label define pe07a_hhnum_lbl 1 `"1"'
label define pe07a_hhnum_lbl 2 `"2"', add
label define pe07a_hhnum_lbl 3 `"3"', add
label define pe07a_hhnum_lbl 4 `"4"', add
label define pe07a_hhnum_lbl 5 `"5"', add
label values pe07a_hhnum pe07a_hhnum_lbl

label define pe07a_hhn_lbl 1 `"1"'
label define pe07a_hhn_lbl 2 `"2"', add
label define pe07a_hhn_lbl 3 `"3"', add
label define pe07a_hhn_lbl 4 `"4"', add
label define pe07a_hhn_lbl 5 `"5"', add
label values pe07a_hhn pe07a_hhn_lbl

label define pe07a_pernd_lbl 00 `"0"'
label define pe07a_pernd_lbl 01 `"1"', add
label define pe07a_pernd_lbl 02 `"2"', add
label define pe07a_pernd_lbl 03 `"3"', add
label define pe07a_pernd_lbl 04 `"4"', add
label define pe07a_pernd_lbl 05 `"5"', add
label define pe07a_pernd_lbl 06 `"6"', add
label define pe07a_pernd_lbl 07 `"7"', add
label define pe07a_pernd_lbl 08 `"8"', add
label define pe07a_pernd_lbl 09 `"9"', add
label define pe07a_pernd_lbl 10 `"10"', add
label define pe07a_pernd_lbl 11 `"11"', add
label define pe07a_pernd_lbl 12 `"12"', add
label define pe07a_pernd_lbl 13 `"13"', add
label define pe07a_pernd_lbl 14 `"14"', add
label define pe07a_pernd_lbl 15 `"15"', add
label define pe07a_pernd_lbl 16 `"16"', add
label define pe07a_pernd_lbl 17 `"17"', add
label define pe07a_pernd_lbl 18 `"18"', add
label define pe07a_pernd_lbl 19 `"19"', add
label define pe07a_pernd_lbl 20 `"20"', add
label define pe07a_pernd_lbl 21 `"21"', add
label define pe07a_pernd_lbl 22 `"22"', add
label define pe07a_pernd_lbl 23 `"23"', add
label define pe07a_pernd_lbl 24 `"24"', add
label define pe07a_pernd_lbl 25 `"25"', add
label define pe07a_pernd_lbl 26 `"26"', add
label define pe07a_pernd_lbl 27 `"27"', add
label define pe07a_pernd_lbl 28 `"28"', add
label define pe07a_pernd_lbl 29 `"29"', add
label define pe07a_pernd_lbl 30 `"30"', add
label values pe07a_pernd pe07a_pernd_lbl

label define pe07a_pern_lbl 00 `"0"'
label define pe07a_pern_lbl 01 `"1"', add
label define pe07a_pern_lbl 02 `"2"', add
label define pe07a_pern_lbl 03 `"3"', add
label define pe07a_pern_lbl 04 `"4"', add
label define pe07a_pern_lbl 05 `"5"', add
label define pe07a_pern_lbl 06 `"6"', add
label define pe07a_pern_lbl 07 `"7"', add
label define pe07a_pern_lbl 08 `"8"', add
label define pe07a_pern_lbl 09 `"9"', add
label define pe07a_pern_lbl 10 `"10"', add
label define pe07a_pern_lbl 11 `"11"', add
label define pe07a_pern_lbl 12 `"12"', add
label define pe07a_pern_lbl 13 `"13"', add
label define pe07a_pern_lbl 14 `"14"', add
label define pe07a_pern_lbl 15 `"15"', add
label define pe07a_pern_lbl 16 `"16"', add
label define pe07a_pern_lbl 17 `"17"', add
label define pe07a_pern_lbl 18 `"18"', add
label define pe07a_pern_lbl 19 `"19"', add
label define pe07a_pern_lbl 20 `"20"', add
label define pe07a_pern_lbl 21 `"21"', add
label define pe07a_pern_lbl 22 `"22"', add
label define pe07a_pern_lbl 23 `"23"', add
label define pe07a_pern_lbl 24 `"24"', add
label define pe07a_pern_lbl 25 `"25"', add
label define pe07a_pern_lbl 26 `"26"', add
label define pe07a_pern_lbl 27 `"27"', add
label define pe07a_pern_lbl 28 `"28"', add
label define pe07a_pern_lbl 29 `"29"', add
label define pe07a_pern_lbl 30 `"30"', add
label values pe07a_pern pe07a_pern_lbl

label define pe07a_fbig_lbl 0 `"No problem"'
label define pe07a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define pe07a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values pe07a_fbig pe07a_fbig_lbl

label define pe07a_dept_lbl 01 `"Amazonas"'
label define pe07a_dept_lbl 02 `"Ancash"', add
label define pe07a_dept_lbl 03 `"Apurimac"', add
label define pe07a_dept_lbl 04 `"Arequipa"', add
label define pe07a_dept_lbl 05 `"Ayacucho"', add
label define pe07a_dept_lbl 06 `"Cajamarca"', add
label define pe07a_dept_lbl 07 `"Callao"', add
label define pe07a_dept_lbl 08 `"Cusco"', add
label define pe07a_dept_lbl 09 `"Huancavelica"', add
label define pe07a_dept_lbl 10 `"Huanuco"', add
label define pe07a_dept_lbl 11 `"Ica"', add
label define pe07a_dept_lbl 12 `"Junin"', add
label define pe07a_dept_lbl 13 `"La libertad"', add
label define pe07a_dept_lbl 14 `"Lambayeque"', add
label define pe07a_dept_lbl 15 `"Lima"', add
label define pe07a_dept_lbl 16 `"Loreto"', add
label define pe07a_dept_lbl 17 `"Madre de dios"', add
label define pe07a_dept_lbl 18 `"Moquegua"', add
label define pe07a_dept_lbl 19 `"Pasco"', add
label define pe07a_dept_lbl 20 `"Piura"', add
label define pe07a_dept_lbl 21 `"Puno"', add
label define pe07a_dept_lbl 22 `"San martin"', add
label define pe07a_dept_lbl 23 `"Tacna"', add
label define pe07a_dept_lbl 24 `"Tumbes"', add
label define pe07a_dept_lbl 25 `"Ucayali"', add
label values pe07a_dept pe07a_dept_lbl

label define pe07a_prov_lbl 0101 `"Chachapoyas"'
label define pe07a_prov_lbl 0102 `"Bagua"', add
label define pe07a_prov_lbl 0103 `"Bongara"', add
label define pe07a_prov_lbl 0104 `"Condorcanqui"', add
label define pe07a_prov_lbl 0105 `"Luya"', add
label define pe07a_prov_lbl 0106 `"Rodriguez De Mendoza"', add
label define pe07a_prov_lbl 0107 `"Utcubamba"', add
label define pe07a_prov_lbl 0201 `"Huaraz"', add
label define pe07a_prov_lbl 0202 `"Aija"', add
label define pe07a_prov_lbl 0203 `"Antonio Raymondi"', add
label define pe07a_prov_lbl 0204 `"Asuncion"', add
label define pe07a_prov_lbl 0205 `"Bolognesi"', add
label define pe07a_prov_lbl 0206 `"Carhuaz"', add
label define pe07a_prov_lbl 0207 `"Carlos F. Fitzcarrald"', add
label define pe07a_prov_lbl 0208 `"Casma"', add
label define pe07a_prov_lbl 0209 `"Corongo"', add
label define pe07a_prov_lbl 0210 `"Huari"', add
label define pe07a_prov_lbl 0211 `"Huarmey"', add
label define pe07a_prov_lbl 0212 `"Huaylas"', add
label define pe07a_prov_lbl 0213 `"Mariscal Luzurriaga"', add
label define pe07a_prov_lbl 0214 `"Ocros"', add
label define pe07a_prov_lbl 0215 `"Pallasca"', add
label define pe07a_prov_lbl 0216 `"Pomabamba"', add
label define pe07a_prov_lbl 0217 `"Recuay"', add
label define pe07a_prov_lbl 0218 `"Santa"', add
label define pe07a_prov_lbl 0219 `"Sihuas"', add
label define pe07a_prov_lbl 0220 `"Yungay"', add
label define pe07a_prov_lbl 0301 `"Abancay"', add
label define pe07a_prov_lbl 0302 `"Andahuaylas"', add
label define pe07a_prov_lbl 0303 `"Antabamba"', add
label define pe07a_prov_lbl 0304 `"Aymaraes"', add
label define pe07a_prov_lbl 0305 `"Cotabambas"', add
label define pe07a_prov_lbl 0306 `"Chincheros"', add
label define pe07a_prov_lbl 0307 `"Grau"', add
label define pe07a_prov_lbl 0401 `"Arequipa"', add
label define pe07a_prov_lbl 0402 `"Camana"', add
label define pe07a_prov_lbl 0403 `"Caraveli"', add
label define pe07a_prov_lbl 0404 `"Castilla"', add
label define pe07a_prov_lbl 0405 `"Caylloma"', add
label define pe07a_prov_lbl 0406 `"Condesuyos"', add
label define pe07a_prov_lbl 0407 `"Islay"', add
label define pe07a_prov_lbl 0408 `"La Union"', add
label define pe07a_prov_lbl 0501 `"Huamanga"', add
label define pe07a_prov_lbl 0502 `"Cangallo"', add
label define pe07a_prov_lbl 0503 `"Huanca Sancos"', add
label define pe07a_prov_lbl 0504 `"Huanta"', add
label define pe07a_prov_lbl 0505 `"La Mar"', add
label define pe07a_prov_lbl 0506 `"Lucanas"', add
label define pe07a_prov_lbl 0507 `"Parinacochas"', add
label define pe07a_prov_lbl 0508 `"Paucar Del Sara Sara"', add
label define pe07a_prov_lbl 0509 `"Sucre"', add
label define pe07a_prov_lbl 0510 `"Victor Fajardo"', add
label define pe07a_prov_lbl 0511 `"Vilcashuaman"', add
label define pe07a_prov_lbl 0601 `"Cajamarca"', add
label define pe07a_prov_lbl 0602 `"Cajabamba"', add
label define pe07a_prov_lbl 0603 `"Celendin"', add
label define pe07a_prov_lbl 0604 `"Chota"', add
label define pe07a_prov_lbl 0605 `"Contumaza"', add
label define pe07a_prov_lbl 0606 `"Cutervo"', add
label define pe07a_prov_lbl 0607 `"Hualgayoc"', add
label define pe07a_prov_lbl 0608 `"Jaen"', add
label define pe07a_prov_lbl 0609 `"San Ignacio"', add
label define pe07a_prov_lbl 0610 `"San Marcos"', add
label define pe07a_prov_lbl 0611 `"San Miguel"', add
label define pe07a_prov_lbl 0612 `"San Pablo"', add
label define pe07a_prov_lbl 0613 `"Santa Cruz"', add
label define pe07a_prov_lbl 0701 `"Callao"', add
label define pe07a_prov_lbl 0801 `"Cusco"', add
label define pe07a_prov_lbl 0802 `"Acomaya"', add
label define pe07a_prov_lbl 0803 `"Anta"', add
label define pe07a_prov_lbl 0804 `"Calca"', add
label define pe07a_prov_lbl 0805 `"Canas"', add
label define pe07a_prov_lbl 0806 `"Canchis"', add
label define pe07a_prov_lbl 0807 `"Chumbivilcas"', add
label define pe07a_prov_lbl 0808 `"Espinar"', add
label define pe07a_prov_lbl 0809 `"La Convencion"', add
label define pe07a_prov_lbl 0810 `"Paruro"', add
label define pe07a_prov_lbl 0811 `"Paucartambo"', add
label define pe07a_prov_lbl 0812 `"Quispicanchis"', add
label define pe07a_prov_lbl 0813 `"Urubamba"', add
label define pe07a_prov_lbl 0901 `"Huancavelica"', add
label define pe07a_prov_lbl 0902 `"Acobamba"', add
label define pe07a_prov_lbl 0903 `"Angaraes"', add
label define pe07a_prov_lbl 0904 `"Castrovirreyna"', add
label define pe07a_prov_lbl 0905 `"Churcampa"', add
label define pe07a_prov_lbl 0906 `"Huaytara"', add
label define pe07a_prov_lbl 0907 `"Tayacaja"', add
label define pe07a_prov_lbl 1001 `"Huanuco"', add
label define pe07a_prov_lbl 1002 `"Ambo"', add
label define pe07a_prov_lbl 1003 `"Dos De Mayo"', add
label define pe07a_prov_lbl 1004 `"Huacaybamba"', add
label define pe07a_prov_lbl 1005 `"Huamalies"', add
label define pe07a_prov_lbl 1006 `"Leoncio Prado"', add
label define pe07a_prov_lbl 1007 `"Marañon"', add
label define pe07a_prov_lbl 1008 `"Pachitea"', add
label define pe07a_prov_lbl 1009 `"Puerto Inca"', add
label define pe07a_prov_lbl 1010 `"Lauricocha"', add
label define pe07a_prov_lbl 1011 `"Yarowilca"', add
label define pe07a_prov_lbl 1101 `"Ica"', add
label define pe07a_prov_lbl 1102 `"Chincha"', add
label define pe07a_prov_lbl 1103 `"Nazca"', add
label define pe07a_prov_lbl 1104 `"Palpa"', add
label define pe07a_prov_lbl 1105 `"Pisco"', add
label define pe07a_prov_lbl 1201 `"Huancayo"', add
label define pe07a_prov_lbl 1202 `"Concepcion"', add
label define pe07a_prov_lbl 1203 `"Chanchamayo"', add
label define pe07a_prov_lbl 1204 `"Jauja"', add
label define pe07a_prov_lbl 1205 `"Junin"', add
label define pe07a_prov_lbl 1206 `"Satipo"', add
label define pe07a_prov_lbl 1207 `"Tarma"', add
label define pe07a_prov_lbl 1208 `"Yauli"', add
label define pe07a_prov_lbl 1209 `"Chupaca"', add
label define pe07a_prov_lbl 1301 `"Trujillo"', add
label define pe07a_prov_lbl 1302 `"Ascope"', add
label define pe07a_prov_lbl 1303 `"Bolivar"', add
label define pe07a_prov_lbl 1304 `"Chepen"', add
label define pe07a_prov_lbl 1305 `"Julcan"', add
label define pe07a_prov_lbl 1306 `"Otuzco"', add
label define pe07a_prov_lbl 1307 `"Pacasmayo"', add
label define pe07a_prov_lbl 1308 `"Pataz"', add
label define pe07a_prov_lbl 1309 `"Sanchez Carrion"', add
label define pe07a_prov_lbl 1310 `"Santiago De Chuco"', add
label define pe07a_prov_lbl 1311 `"Gran Chimu"', add
label define pe07a_prov_lbl 1312 `"Viru"', add
label define pe07a_prov_lbl 1401 `"Chiclayo"', add
label define pe07a_prov_lbl 1402 `"Ferreñafe"', add
label define pe07a_prov_lbl 1403 `"Lambayeque"', add
label define pe07a_prov_lbl 1501 `"Lima"', add
label define pe07a_prov_lbl 1502 `"Barranca"', add
label define pe07a_prov_lbl 1503 `"Cajatambo"', add
label define pe07a_prov_lbl 1504 `"Canta"', add
label define pe07a_prov_lbl 1505 `"Cañete"', add
label define pe07a_prov_lbl 1506 `"Huaral"', add
label define pe07a_prov_lbl 1507 `"Huarochiri"', add
label define pe07a_prov_lbl 1508 `"Huaura"', add
label define pe07a_prov_lbl 1509 `"Oyon"', add
label define pe07a_prov_lbl 1510 `"Yauyos"', add
label define pe07a_prov_lbl 1601 `"Maynas"', add
label define pe07a_prov_lbl 1602 `"Alto Amazonas"', add
label define pe07a_prov_lbl 1603 `"Loreto"', add
label define pe07a_prov_lbl 1604 `"Mariscal Ramon Castilla"', add
label define pe07a_prov_lbl 1605 `"Requena"', add
label define pe07a_prov_lbl 1606 `"Ucayali"', add
label define pe07a_prov_lbl 1607 `"Datem del Marañon"', add
label define pe07a_prov_lbl 1701 `"Tambopata"', add
label define pe07a_prov_lbl 1702 `"Manu"', add
label define pe07a_prov_lbl 1703 `"Tahuamanu"', add
label define pe07a_prov_lbl 1801 `"Mariscal Nieto"', add
label define pe07a_prov_lbl 1802 `"Gral. Sanchez Cerro"', add
label define pe07a_prov_lbl 1803 `"Ilo"', add
label define pe07a_prov_lbl 1901 `"Pasco"', add
label define pe07a_prov_lbl 1902 `"Daniel Alcides Carrion"', add
label define pe07a_prov_lbl 1903 `"Oxapampa"', add
label define pe07a_prov_lbl 2001 `"Piura"', add
label define pe07a_prov_lbl 2002 `"Ayabaca"', add
label define pe07a_prov_lbl 2003 `"Huancabamba"', add
label define pe07a_prov_lbl 2004 `"Morropon"', add
label define pe07a_prov_lbl 2005 `"Paita"', add
label define pe07a_prov_lbl 2006 `"Sullana"', add
label define pe07a_prov_lbl 2007 `"Talara"', add
label define pe07a_prov_lbl 2008 `"Sechura"', add
label define pe07a_prov_lbl 2101 `"Puno"', add
label define pe07a_prov_lbl 2102 `"Azangaro"', add
label define pe07a_prov_lbl 2103 `"Carabaya"', add
label define pe07a_prov_lbl 2104 `"Chucuito"', add
label define pe07a_prov_lbl 2105 `"El Collao"', add
label define pe07a_prov_lbl 2106 `"Huancane"', add
label define pe07a_prov_lbl 2107 `"Lampa"', add
label define pe07a_prov_lbl 2108 `"Melgar"', add
label define pe07a_prov_lbl 2109 `"Moho"', add
label define pe07a_prov_lbl 2110 `"San Antonio De Putina"', add
label define pe07a_prov_lbl 2111 `"San Roman"', add
label define pe07a_prov_lbl 2112 `"Sandia"', add
label define pe07a_prov_lbl 2113 `"Yunguyo"', add
label define pe07a_prov_lbl 2201 `"Moyobamba"', add
label define pe07a_prov_lbl 2202 `"Bellavista"', add
label define pe07a_prov_lbl 2203 `"El Dorado"', add
label define pe07a_prov_lbl 2204 `"Huallaga"', add
label define pe07a_prov_lbl 2205 `"Lamas"', add
label define pe07a_prov_lbl 2206 `"Mariscal Caceres"', add
label define pe07a_prov_lbl 2207 `"Picota"', add
label define pe07a_prov_lbl 2208 `"Rioja"', add
label define pe07a_prov_lbl 2209 `"San Martin"', add
label define pe07a_prov_lbl 2210 `"Tocache"', add
label define pe07a_prov_lbl 2301 `"Tacna"', add
label define pe07a_prov_lbl 2302 `"Candarave"', add
label define pe07a_prov_lbl 2303 `"Jorge Basadre"', add
label define pe07a_prov_lbl 2304 `"Tarata"', add
label define pe07a_prov_lbl 2401 `"Tumbes"', add
label define pe07a_prov_lbl 2402 `"Contralmirante Villar"', add
label define pe07a_prov_lbl 2403 `"Zarumilla"', add
label define pe07a_prov_lbl 2501 `"Coronel Portillo"', add
label define pe07a_prov_lbl 2502 `"Atalaya"', add
label define pe07a_prov_lbl 2503 `"Padre Abad"', add
label define pe07a_prov_lbl 2504 `"Purus"', add
label values pe07a_prov pe07a_prov_lbl

label define pe07a_urban_lbl 1 `"Urban"'
label define pe07a_urban_lbl 2 `"Rural"', add
label values pe07a_urban pe07a_urban_lbl

label define pe07a_numhho_lbl 0 `"0"'
label define pe07a_numhho_lbl 1 `"1"', add
label define pe07a_numhho_lbl 2 `"2"', add
label define pe07a_numhho_lbl 3 `"3"', add
label define pe07a_numhho_lbl 4 `"4"', add
label define pe07a_numhho_lbl 5 `"5"', add
label define pe07a_numhho_lbl 9 `"NIU (not in universe)"', add
label values pe07a_numhho pe07a_numhho_lbl

label define pe07a_typdwell_lbl 01 `"Detached house"'
label define pe07a_typdwell_lbl 02 `"Apartment in a building"', add
label define pe07a_typdwell_lbl 03 `"Attached independent units"', add
label define pe07a_typdwell_lbl 04 `"Dwelling in a tenement"', add
label define pe07a_typdwell_lbl 05 `"Shack or cabin"', add
label define pe07a_typdwell_lbl 06 `"Improvised dwelling"', add
label define pe07a_typdwell_lbl 07 `"Premise not intended for habitation"', add
label define pe07a_typdwell_lbl 08 `"Other type of individual dwelling"', add
label define pe07a_typdwell_lbl 09 `"Hotel, hostel, lodging"', add
label define pe07a_typdwell_lbl 10 `"Boarding house"', add
label define pe07a_typdwell_lbl 11 `"Hospital, clinic"', add
label define pe07a_typdwell_lbl 12 `"Jail, rehabilitation center"', add
label define pe07a_typdwell_lbl 13 `"Retirement home"', add
label define pe07a_typdwell_lbl 14 `"Children's village, orphanage, etc."', add
label define pe07a_typdwell_lbl 15 `"Other type of collective dwelling"', add
label define pe07a_typdwell_lbl 16 `"In the street"', add
label values pe07a_typdwell pe07a_typdwell_lbl

label define pe07a_occup_lbl 1 `"Occupied, people present"'
label define pe07a_occup_lbl 2 `"Occupied, people absent"', add
label define pe07a_occup_lbl 3 `"Occupied, occasional use"', add
label define pe07a_occup_lbl 4 `"Unoccupied, for sale or rent"', add
label define pe07a_occup_lbl 5 `"Unoccupied, under construction or repair"', add
label define pe07a_occup_lbl 6 `"Unoccupied, abandoned or closed"', add
label define pe07a_occup_lbl 7 `"Unoccupied, other reason"', add
label define pe07a_occup_lbl 9 `"NIU (not in universe)"', add
label values pe07a_occup pe07a_occup_lbl

label define pe07a_wall_lbl 1 `"Brick or cement block"'
label define pe07a_wall_lbl 2 `"Adobe or mud wall"', add
label define pe07a_wall_lbl 3 `"Wood"', add
label define pe07a_wall_lbl 4 `"Cane sticks with clay"', add
label define pe07a_wall_lbl 5 `"Woven straw or reeds"', add
label define pe07a_wall_lbl 6 `"Stone with clay"', add
label define pe07a_wall_lbl 7 `"Limed or cemented stone or ashlar"', add
label define pe07a_wall_lbl 8 `"Other material"', add
label define pe07a_wall_lbl 9 `"NIU (not in universe)"', add
label values pe07a_wall pe07a_wall_lbl

label define pe07a_floor_lbl 1 `"Earth"'
label define pe07a_floor_lbl 2 `"Cement"', add
label define pe07a_floor_lbl 3 `"Paving stones, terrazzo, ceramic tile or similar"', add
label define pe07a_floor_lbl 4 `"Parquet or polished wood"', add
label define pe07a_floor_lbl 5 `"Wood"', add
label define pe07a_floor_lbl 6 `"Asphalt sheet, vinyl or similar"', add
label define pe07a_floor_lbl 7 `"Other"', add
label define pe07a_floor_lbl 9 `"NIU (not in universe)"', add
label values pe07a_floor pe07a_floor_lbl

label define pe07a_watsrc_lbl 1 `"Public network within the dwelling (potable water)"'
label define pe07a_watsrc_lbl 2 `"Public network outside the dwelling but within the building (potable water)"', add
label define pe07a_watsrc_lbl 3 `"Public tap (potable water)"', add
label define pe07a_watsrc_lbl 4 `"Water tanker or similar"', add
label define pe07a_watsrc_lbl 5 `"Well"', add
label define pe07a_watsrc_lbl 6 `"River, irrigation ditch, spring or similar"', add
label define pe07a_watsrc_lbl 7 `"Neighbor"', add
label define pe07a_watsrc_lbl 8 `"Other"', add
label define pe07a_watsrc_lbl 9 `"NIU (not in universe)"', add
label values pe07a_watsrc pe07a_watsrc_lbl

label define pe07a_watdaily_lbl 1 `"Yes, there is daily water service"'
label define pe07a_watdaily_lbl 2 `"No, there is not daily water service"', add
label define pe07a_watdaily_lbl 9 `"NIU (not in universe)"', add
label values pe07a_watdaily pe07a_watdaily_lbl

label define pe07a_wathrs_lbl 01 `"1"'
label define pe07a_wathrs_lbl 02 `"2"', add
label define pe07a_wathrs_lbl 03 `"3"', add
label define pe07a_wathrs_lbl 04 `"4"', add
label define pe07a_wathrs_lbl 05 `"5"', add
label define pe07a_wathrs_lbl 06 `"6"', add
label define pe07a_wathrs_lbl 07 `"7"', add
label define pe07a_wathrs_lbl 08 `"8"', add
label define pe07a_wathrs_lbl 09 `"9"', add
label define pe07a_wathrs_lbl 10 `"10"', add
label define pe07a_wathrs_lbl 11 `"11"', add
label define pe07a_wathrs_lbl 12 `"12"', add
label define pe07a_wathrs_lbl 13 `"13"', add
label define pe07a_wathrs_lbl 14 `"14"', add
label define pe07a_wathrs_lbl 15 `"15"', add
label define pe07a_wathrs_lbl 16 `"16"', add
label define pe07a_wathrs_lbl 17 `"17"', add
label define pe07a_wathrs_lbl 18 `"18"', add
label define pe07a_wathrs_lbl 19 `"19"', add
label define pe07a_wathrs_lbl 20 `"20"', add
label define pe07a_wathrs_lbl 21 `"21"', add
label define pe07a_wathrs_lbl 22 `"22"', add
label define pe07a_wathrs_lbl 23 `"23"', add
label define pe07a_wathrs_lbl 24 `"24"', add
label define pe07a_wathrs_lbl 99 `"NIU (not in universe)"', add
label values pe07a_wathrs pe07a_wathrs_lbl

label define pe07a_watdays_lbl 1 `"1"'
label define pe07a_watdays_lbl 2 `"2"', add
label define pe07a_watdays_lbl 3 `"3"', add
label define pe07a_watdays_lbl 4 `"4"', add
label define pe07a_watdays_lbl 5 `"5"', add
label define pe07a_watdays_lbl 6 `"6"', add
label define pe07a_watdays_lbl 9 `"NIU (not in universe)"', add
label values pe07a_watdays pe07a_watdays_lbl

label define pe07a_wathrs2_lbl 01 `"1"'
label define pe07a_wathrs2_lbl 02 `"2"', add
label define pe07a_wathrs2_lbl 03 `"3"', add
label define pe07a_wathrs2_lbl 04 `"4"', add
label define pe07a_wathrs2_lbl 05 `"5"', add
label define pe07a_wathrs2_lbl 06 `"6"', add
label define pe07a_wathrs2_lbl 07 `"7"', add
label define pe07a_wathrs2_lbl 08 `"8"', add
label define pe07a_wathrs2_lbl 09 `"9"', add
label define pe07a_wathrs2_lbl 10 `"10"', add
label define pe07a_wathrs2_lbl 11 `"11"', add
label define pe07a_wathrs2_lbl 12 `"12"', add
label define pe07a_wathrs2_lbl 13 `"13"', add
label define pe07a_wathrs2_lbl 14 `"14"', add
label define pe07a_wathrs2_lbl 15 `"15"', add
label define pe07a_wathrs2_lbl 16 `"16"', add
label define pe07a_wathrs2_lbl 17 `"17"', add
label define pe07a_wathrs2_lbl 18 `"18"', add
label define pe07a_wathrs2_lbl 19 `"19"', add
label define pe07a_wathrs2_lbl 20 `"20"', add
label define pe07a_wathrs2_lbl 21 `"21"', add
label define pe07a_wathrs2_lbl 22 `"22"', add
label define pe07a_wathrs2_lbl 23 `"23"', add
label define pe07a_wathrs2_lbl 24 `"24"', add
label define pe07a_wathrs2_lbl 99 `"NIU (not in universe)"', add
label values pe07a_wathrs2 pe07a_wathrs2_lbl

label define pe07a_sewage_lbl 1 `"Public sewer system within the dwelling"'
label define pe07a_sewage_lbl 2 `"Public sewer system outside the dwelling but within the building"', add
label define pe07a_sewage_lbl 3 `"Septic tank"', add
label define pe07a_sewage_lbl 4 `"Cesspit or latrine"', add
label define pe07a_sewage_lbl 5 `"River, drainage ditch or canal"', add
label define pe07a_sewage_lbl 6 `"Doesn't have"', add
label define pe07a_sewage_lbl 9 `"NIU (not in universe)"', add
label values pe07a_sewage pe07a_sewage_lbl

label define pe07a_lighting_lbl 1 `"Yes"'
label define pe07a_lighting_lbl 2 `"No"', add
label define pe07a_lighting_lbl 9 `"NIU (not in universe)"', add
label values pe07a_lighting pe07a_lighting_lbl

label define pe07a_rooms_lbl 01 `"1"'
label define pe07a_rooms_lbl 02 `"2"', add
label define pe07a_rooms_lbl 03 `"3"', add
label define pe07a_rooms_lbl 04 `"4"', add
label define pe07a_rooms_lbl 05 `"5"', add
label define pe07a_rooms_lbl 06 `"6"', add
label define pe07a_rooms_lbl 07 `"7"', add
label define pe07a_rooms_lbl 08 `"8"', add
label define pe07a_rooms_lbl 09 `"9"', add
label define pe07a_rooms_lbl 10 `"10"', add
label define pe07a_rooms_lbl 11 `"11"', add
label define pe07a_rooms_lbl 12 `"12"', add
label define pe07a_rooms_lbl 13 `"13"', add
label define pe07a_rooms_lbl 14 `"14"', add
label define pe07a_rooms_lbl 15 `"15"', add
label define pe07a_rooms_lbl 99 `"NIU (not in universe)"', add
label values pe07a_rooms pe07a_rooms_lbl

label define pe07a_ownershp_lbl 1 `"Rented"'
label define pe07a_ownershp_lbl 2 `"Owned, taken over"', add
label define pe07a_ownershp_lbl 3 `"Owned, paying off in installments"', add
label define pe07a_ownershp_lbl 4 `"Owned, completely paid for"', add
label define pe07a_ownershp_lbl 5 `"Given by job or another household/institution"', add
label define pe07a_ownershp_lbl 6 `"Other"', add
label define pe07a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values pe07a_ownershp pe07a_ownershp_lbl

label define pe07a_radio_lbl 1 `"Yes"'
label define pe07a_radio_lbl 2 `"No"', add
label define pe07a_radio_lbl 9 `"NIU (not in universe)"', add
label values pe07a_radio pe07a_radio_lbl

label define pe07a_tv_lbl 1 `"Yes"'
label define pe07a_tv_lbl 2 `"No"', add
label define pe07a_tv_lbl 9 `"NIU (not in universe)"', add
label values pe07a_tv pe07a_tv_lbl

label define pe07a_stereo_lbl 1 `"Yes"'
label define pe07a_stereo_lbl 2 `"No"', add
label define pe07a_stereo_lbl 9 `"NIU (not in universe)"', add
label values pe07a_stereo pe07a_stereo_lbl

label define pe07a_washer_lbl 1 `"Yes"'
label define pe07a_washer_lbl 2 `"No"', add
label define pe07a_washer_lbl 9 `"NIU (not in universe)"', add
label values pe07a_washer pe07a_washer_lbl

label define pe07a_fridge_lbl 1 `"Yes"'
label define pe07a_fridge_lbl 2 `"No"', add
label define pe07a_fridge_lbl 9 `"NIU (not in universe)"', add
label values pe07a_fridge pe07a_fridge_lbl

label define pe07a_computr_lbl 1 `"Yes"'
label define pe07a_computr_lbl 2 `"No"', add
label define pe07a_computr_lbl 9 `"NIU (not in universe)"', add
label values pe07a_computr pe07a_computr_lbl

label define pe07a_noappl_lbl 1 `"Yes, has electrical appliances"'
label define pe07a_noappl_lbl 2 `"No, doesn't have electrical appliances"', add
label define pe07a_noappl_lbl 9 `"NIU (not in universe)"', add
label values pe07a_noappl pe07a_noappl_lbl

label define pe07a_phone_lbl 1 `"Yes"'
label define pe07a_phone_lbl 2 `"No"', add
label define pe07a_phone_lbl 9 `"NIU (not in universe)"', add
label values pe07a_phone pe07a_phone_lbl

label define pe07a_cell_lbl 1 `"Yes"'
label define pe07a_cell_lbl 2 `"No"', add
label define pe07a_cell_lbl 9 `"NIU (not in universe)"', add
label values pe07a_cell pe07a_cell_lbl

label define pe07a_internet_lbl 1 `"Yes"'
label define pe07a_internet_lbl 2 `"No"', add
label define pe07a_internet_lbl 9 `"NIU (not in universe)"', add
label values pe07a_internet pe07a_internet_lbl

label define pe07a_cabletv_lbl 1 `"Yes"'
label define pe07a_cabletv_lbl 2 `"No"', add
label define pe07a_cabletv_lbl 9 `"NIU (not in universe)"', add
label values pe07a_cabletv pe07a_cabletv_lbl

label define pe07a_noserv_lbl 1 `"Yes, at least one service"'
label define pe07a_noserv_lbl 2 `"No, doesn't have these services"', add
label define pe07a_noserv_lbl 9 `"NIU (not in universe)"', add
label values pe07a_noserv pe07a_noserv_lbl

label define pe07a_fuelcook_lbl 1 `"Electricity"'
label define pe07a_fuelcook_lbl 2 `"Gas"', add
label define pe07a_fuelcook_lbl 3 `"Kerosene"', add
label define pe07a_fuelcook_lbl 4 `"Coal"', add
label define pe07a_fuelcook_lbl 5 `"Wood"', add
label define pe07a_fuelcook_lbl 6 `"Manure"', add
label define pe07a_fuelcook_lbl 7 `"Other"', add
label define pe07a_fuelcook_lbl 8 `"Do not cook"', add
label define pe07a_fuelcook_lbl 9 `"NIU (not in universe)"', add
label values pe07a_fuelcook pe07a_fuelcook_lbl

label define pe07a_chimney_lbl 1 `"Yes, has"'
label define pe07a_chimney_lbl 2 `"No"', add
label define pe07a_chimney_lbl 8 `"Unknown"', add
label define pe07a_chimney_lbl 9 `"NIU (not in universe)"', add
label values pe07a_chimney pe07a_chimney_lbl

label define pe07a_migrants_lbl 00 `"0"'
label define pe07a_migrants_lbl 01 `"1"', add
label define pe07a_migrants_lbl 02 `"2"', add
label define pe07a_migrants_lbl 03 `"3"', add
label define pe07a_migrants_lbl 04 `"4"', add
label define pe07a_migrants_lbl 05 `"5"', add
label define pe07a_migrants_lbl 06 `"6"', add
label define pe07a_migrants_lbl 07 `"7"', add
label define pe07a_migrants_lbl 08 `"8"', add
label define pe07a_migrants_lbl 09 `"9"', add
label define pe07a_migrants_lbl 99 `"NIU (not in universe)"', add
label values pe07a_migrants pe07a_migrants_lbl

label define pe07a_disvis_lbl 1 `"Yes"'
label define pe07a_disvis_lbl 2 `"No"', add
label define pe07a_disvis_lbl 9 `"NIU (not in universe)"', add
label values pe07a_disvis pe07a_disvis_lbl

label define pe07a_dishear_lbl 1 `"Yes"'
label define pe07a_dishear_lbl 2 `"No"', add
label define pe07a_dishear_lbl 9 `"NIU (not in universe)"', add
label values pe07a_dishear pe07a_dishear_lbl

label define pe07a_disspk_lbl 1 `"Yes"'
label define pe07a_disspk_lbl 2 `"No"', add
label define pe07a_disspk_lbl 9 `"NIU (not in universe)"', add
label values pe07a_disspk pe07a_disspk_lbl

label define pe07a_dislimb_lbl 1 `"Yes"'
label define pe07a_dislimb_lbl 2 `"No"', add
label define pe07a_dislimb_lbl 9 `"NIU (not in universe)"', add
label values pe07a_dislimb pe07a_dislimb_lbl

label define pe07a_disother_lbl 1 `"Yes"'
label define pe07a_disother_lbl 2 `"No"', add
label define pe07a_disother_lbl 9 `"NIU (not in universe)"', add
label values pe07a_disother pe07a_disother_lbl

label define pe07a_disnone_lbl 1 `"Yes, has a disability"'
label define pe07a_disnone_lbl 2 `"No, doesn't have any disability"', add
label define pe07a_disnone_lbl 9 `"NIU (not in universe)"', add
label values pe07a_disnone pe07a_disnone_lbl

label define pe07a_pernum_lbl 00 `"Household record"'
label define pe07a_pernum_lbl 01 `"1"', add
label define pe07a_pernum_lbl 02 `"2"', add
label define pe07a_pernum_lbl 03 `"3"', add
label define pe07a_pernum_lbl 04 `"4"', add
label define pe07a_pernum_lbl 05 `"5"', add
label define pe07a_pernum_lbl 06 `"6"', add
label define pe07a_pernum_lbl 07 `"7"', add
label define pe07a_pernum_lbl 08 `"8"', add
label define pe07a_pernum_lbl 09 `"9"', add
label define pe07a_pernum_lbl 10 `"10"', add
label define pe07a_pernum_lbl 11 `"11"', add
label define pe07a_pernum_lbl 12 `"12"', add
label define pe07a_pernum_lbl 13 `"13"', add
label define pe07a_pernum_lbl 14 `"14"', add
label define pe07a_pernum_lbl 15 `"15"', add
label define pe07a_pernum_lbl 16 `"16"', add
label define pe07a_pernum_lbl 17 `"17"', add
label define pe07a_pernum_lbl 18 `"18"', add
label define pe07a_pernum_lbl 19 `"19"', add
label define pe07a_pernum_lbl 20 `"20"', add
label define pe07a_pernum_lbl 21 `"21"', add
label define pe07a_pernum_lbl 22 `"22"', add
label define pe07a_pernum_lbl 23 `"23"', add
label define pe07a_pernum_lbl 24 `"24"', add
label define pe07a_pernum_lbl 25 `"25"', add
label define pe07a_pernum_lbl 26 `"26"', add
label define pe07a_pernum_lbl 27 `"27"', add
label define pe07a_pernum_lbl 28 `"28"', add
label define pe07a_pernum_lbl 29 `"29"', add
label define pe07a_pernum_lbl 30 `"30"', add
label values pe07a_pernum pe07a_pernum_lbl

label define pe07a_relate_lbl 01 `"Head of household"'
label define pe07a_relate_lbl 02 `"Spouse or partner"', add
label define pe07a_relate_lbl 03 `"Child/stepchild"', add
label define pe07a_relate_lbl 04 `"Son-in-law/daughter-in-law"', add
label define pe07a_relate_lbl 05 `"Grandchild"', add
label define pe07a_relate_lbl 06 `"Parents/In-laws"', add
label define pe07a_relate_lbl 07 `"Other relative"', add
label define pe07a_relate_lbl 08 `"Household worker"', add
label define pe07a_relate_lbl 09 `"Boarder"', add
label define pe07a_relate_lbl 10 `"Other unrelated person"', add
label define pe07a_relate_lbl 11 `"Person in a collective dwelling"', add
label values pe07a_relate pe07a_relate_lbl

label define pe07a_sex_lbl 1 `"Male"'
label define pe07a_sex_lbl 2 `"Female"', add
label values pe07a_sex pe07a_sex_lbl

label define pe07a_age_lbl 00 `"0"'
label define pe07a_age_lbl 01 `"1"', add
label define pe07a_age_lbl 02 `"2"', add
label define pe07a_age_lbl 03 `"3"', add
label define pe07a_age_lbl 04 `"4"', add
label define pe07a_age_lbl 05 `"5"', add
label define pe07a_age_lbl 06 `"6"', add
label define pe07a_age_lbl 07 `"7"', add
label define pe07a_age_lbl 08 `"8"', add
label define pe07a_age_lbl 09 `"9"', add
label define pe07a_age_lbl 10 `"10"', add
label define pe07a_age_lbl 11 `"11"', add
label define pe07a_age_lbl 12 `"12"', add
label define pe07a_age_lbl 13 `"13"', add
label define pe07a_age_lbl 14 `"14"', add
label define pe07a_age_lbl 15 `"15"', add
label define pe07a_age_lbl 16 `"16"', add
label define pe07a_age_lbl 17 `"17"', add
label define pe07a_age_lbl 18 `"18"', add
label define pe07a_age_lbl 19 `"19"', add
label define pe07a_age_lbl 20 `"20"', add
label define pe07a_age_lbl 21 `"21"', add
label define pe07a_age_lbl 22 `"22"', add
label define pe07a_age_lbl 23 `"23"', add
label define pe07a_age_lbl 24 `"24"', add
label define pe07a_age_lbl 25 `"25"', add
label define pe07a_age_lbl 26 `"26"', add
label define pe07a_age_lbl 27 `"27"', add
label define pe07a_age_lbl 28 `"28"', add
label define pe07a_age_lbl 29 `"29"', add
label define pe07a_age_lbl 30 `"30"', add
label define pe07a_age_lbl 31 `"31"', add
label define pe07a_age_lbl 32 `"32"', add
label define pe07a_age_lbl 33 `"33"', add
label define pe07a_age_lbl 34 `"34"', add
label define pe07a_age_lbl 35 `"35"', add
label define pe07a_age_lbl 36 `"36"', add
label define pe07a_age_lbl 37 `"37"', add
label define pe07a_age_lbl 38 `"38"', add
label define pe07a_age_lbl 39 `"39"', add
label define pe07a_age_lbl 40 `"40"', add
label define pe07a_age_lbl 41 `"41"', add
label define pe07a_age_lbl 42 `"42"', add
label define pe07a_age_lbl 43 `"43"', add
label define pe07a_age_lbl 44 `"44"', add
label define pe07a_age_lbl 45 `"45"', add
label define pe07a_age_lbl 46 `"46"', add
label define pe07a_age_lbl 47 `"47"', add
label define pe07a_age_lbl 48 `"48"', add
label define pe07a_age_lbl 49 `"49"', add
label define pe07a_age_lbl 50 `"50"', add
label define pe07a_age_lbl 51 `"51"', add
label define pe07a_age_lbl 52 `"52"', add
label define pe07a_age_lbl 53 `"53"', add
label define pe07a_age_lbl 54 `"54"', add
label define pe07a_age_lbl 55 `"55"', add
label define pe07a_age_lbl 56 `"56"', add
label define pe07a_age_lbl 57 `"57"', add
label define pe07a_age_lbl 58 `"58"', add
label define pe07a_age_lbl 59 `"59"', add
label define pe07a_age_lbl 60 `"60"', add
label define pe07a_age_lbl 61 `"61"', add
label define pe07a_age_lbl 62 `"62"', add
label define pe07a_age_lbl 63 `"63"', add
label define pe07a_age_lbl 64 `"64"', add
label define pe07a_age_lbl 65 `"65"', add
label define pe07a_age_lbl 66 `"66"', add
label define pe07a_age_lbl 67 `"67"', add
label define pe07a_age_lbl 68 `"68"', add
label define pe07a_age_lbl 69 `"69"', add
label define pe07a_age_lbl 70 `"70"', add
label define pe07a_age_lbl 71 `"71"', add
label define pe07a_age_lbl 72 `"72"', add
label define pe07a_age_lbl 73 `"73"', add
label define pe07a_age_lbl 74 `"74"', add
label define pe07a_age_lbl 75 `"75"', add
label define pe07a_age_lbl 76 `"76"', add
label define pe07a_age_lbl 77 `"77"', add
label define pe07a_age_lbl 78 `"78"', add
label define pe07a_age_lbl 79 `"79"', add
label define pe07a_age_lbl 80 `"80"', add
label define pe07a_age_lbl 81 `"81"', add
label define pe07a_age_lbl 82 `"82"', add
label define pe07a_age_lbl 83 `"83"', add
label define pe07a_age_lbl 84 `"84"', add
label define pe07a_age_lbl 85 `"85"', add
label define pe07a_age_lbl 86 `"86"', add
label define pe07a_age_lbl 87 `"87"', add
label define pe07a_age_lbl 88 `"88"', add
label define pe07a_age_lbl 89 `"89"', add
label define pe07a_age_lbl 90 `"90"', add
label define pe07a_age_lbl 91 `"91"', add
label define pe07a_age_lbl 92 `"92"', add
label define pe07a_age_lbl 93 `"93"', add
label define pe07a_age_lbl 94 `"94"', add
label define pe07a_age_lbl 95 `"95"', add
label define pe07a_age_lbl 96 `"96"', add
label define pe07a_age_lbl 97 `"97"', add
label define pe07a_age_lbl 98 `"98 or more years"', add
label values pe07a_age pe07a_age_lbl

label define pe07a_agemonth_lbl 00 `"Less than 1"'
label define pe07a_agemonth_lbl 01 `"1"', add
label define pe07a_agemonth_lbl 02 `"2"', add
label define pe07a_agemonth_lbl 03 `"3"', add
label define pe07a_agemonth_lbl 04 `"4"', add
label define pe07a_agemonth_lbl 05 `"5"', add
label define pe07a_agemonth_lbl 06 `"6"', add
label define pe07a_agemonth_lbl 07 `"7"', add
label define pe07a_agemonth_lbl 08 `"8"', add
label define pe07a_agemonth_lbl 09 `"9"', add
label define pe07a_agemonth_lbl 10 `"10"', add
label define pe07a_agemonth_lbl 11 `"11"', add
label define pe07a_agemonth_lbl 99 `"NIU (not in universe)"', add
label values pe07a_agemonth pe07a_agemonth_lbl

label define pe07a_birthreg_lbl 1 `"Yes"'
label define pe07a_birthreg_lbl 2 `"No"', add
label define pe07a_birthreg_lbl 9 `"Unknown"', add
label values pe07a_birthreg pe07a_birthreg_lbl

label define pe07a_resident_lbl 1 `"Yes"'
label define pe07a_resident_lbl 2 `"No"', add
label values pe07a_resident pe07a_resident_lbl

label define pe07a_resctry_lbl 4002 `"Argentina"'
label define pe07a_resctry_lbl 4006 `"Bolivia"', add
label define pe07a_resctry_lbl 4007 `"Brazil"', add
label define pe07a_resctry_lbl 4008 `"Canada"', add
label define pe07a_resctry_lbl 4009 `"Chile"', add
label define pe07a_resctry_lbl 4010 `"Colombia"', add
label define pe07a_resctry_lbl 4014 `"Ecuador"', add
label define pe07a_resctry_lbl 4016 `"United States"', add
label define pe07a_resctry_lbl 4024 `"Mexico"', add
label define pe07a_resctry_lbl 4037 `"Venezuela"', add
label define pe07a_resctry_lbl 4099 `"Other American countries"', add
label define pe07a_resctry_lbl 5019 `"Israel"', add
label define pe07a_resctry_lbl 5020 `"Japan"', add
label define pe07a_resctry_lbl 5099 `"Other Asian countries"', add
label define pe07a_resctry_lbl 6002 `"Germany"', add
label define pe07a_resctry_lbl 6005 `"Belgium"', add
label define pe07a_resctry_lbl 6009 `"Spain"', add
label define pe07a_resctry_lbl 6011 `"France"', add
label define pe07a_resctry_lbl 6016 `"Italy"', add
label define pe07a_resctry_lbl 6022 `"Netherlands"', add
label define pe07a_resctry_lbl 6025 `"United Kingdom"', add
label define pe07a_resctry_lbl 6028 `"Sweden"', add
label define pe07a_resctry_lbl 6029 `"Switzerland"', add
label define pe07a_resctry_lbl 6099 `"Other European countries"', add
label define pe07a_resctry_lbl 7001 `"Australia"', add
label define pe07a_resctry_lbl 8000 `"Other countries"', add
label define pe07a_resctry_lbl 9998 `"Unknown"', add
label define pe07a_resctry_lbl 9999 `"NIU (not in universe)"', add
label values pe07a_resctry pe07a_resctry_lbl

label define pe07a_resprov_lbl 0101 `"Chachapoyas"'
label define pe07a_resprov_lbl 0102 `"Bagua"', add
label define pe07a_resprov_lbl 0103 `"Bongara"', add
label define pe07a_resprov_lbl 0104 `"Condorcanqui"', add
label define pe07a_resprov_lbl 0105 `"Luya"', add
label define pe07a_resprov_lbl 0106 `"Rodriguez De Mendoza"', add
label define pe07a_resprov_lbl 0107 `"Utcubamba"', add
label define pe07a_resprov_lbl 0199 `"Department of Amazonas, province not specified"', add
label define pe07a_resprov_lbl 0201 `"Huaraz"', add
label define pe07a_resprov_lbl 0202 `"Aija"', add
label define pe07a_resprov_lbl 0203 `"Antonio Raymondi"', add
label define pe07a_resprov_lbl 0204 `"Asuncion"', add
label define pe07a_resprov_lbl 0205 `"Bolognesi"', add
label define pe07a_resprov_lbl 0206 `"Carhuaz"', add
label define pe07a_resprov_lbl 0207 `"Carlos F. Fitzcarrald"', add
label define pe07a_resprov_lbl 0208 `"Casma"', add
label define pe07a_resprov_lbl 0210 `"Huari"', add
label define pe07a_resprov_lbl 0211 `"Huarmey"', add
label define pe07a_resprov_lbl 0212 `"Huaylas"', add
label define pe07a_resprov_lbl 0213 `"Mariscal Luzurriaga"', add
label define pe07a_resprov_lbl 0214 `"Ocros"', add
label define pe07a_resprov_lbl 0215 `"Pallasca"', add
label define pe07a_resprov_lbl 0216 `"Pomabamba"', add
label define pe07a_resprov_lbl 0217 `"Recuay"', add
label define pe07a_resprov_lbl 0218 `"Santa"', add
label define pe07a_resprov_lbl 0219 `"Sihuas"', add
label define pe07a_resprov_lbl 0220 `"Yungay"', add
label define pe07a_resprov_lbl 0299 `"Department of Ancash, province not specified"', add
label define pe07a_resprov_lbl 0301 `"Abancay"', add
label define pe07a_resprov_lbl 0302 `"Andahuaylas"', add
label define pe07a_resprov_lbl 0303 `"Antabamba"', add
label define pe07a_resprov_lbl 0304 `"Aymaraes"', add
label define pe07a_resprov_lbl 0305 `"Cotabambas"', add
label define pe07a_resprov_lbl 0306 `"Chincheros"', add
label define pe07a_resprov_lbl 0307 `"Grau"', add
label define pe07a_resprov_lbl 0399 `"Department of Apurimac, province not specified"', add
label define pe07a_resprov_lbl 0401 `"Arequipa"', add
label define pe07a_resprov_lbl 0402 `"Camana"', add
label define pe07a_resprov_lbl 0403 `"Caraveli"', add
label define pe07a_resprov_lbl 0404 `"Castilla"', add
label define pe07a_resprov_lbl 0405 `"Caylloma"', add
label define pe07a_resprov_lbl 0406 `"Condesuyos"', add
label define pe07a_resprov_lbl 0407 `"Islay"', add
label define pe07a_resprov_lbl 0408 `"La Union"', add
label define pe07a_resprov_lbl 0499 `"Department of Arequipa, province not specified"', add
label define pe07a_resprov_lbl 0501 `"Huamanga"', add
label define pe07a_resprov_lbl 0502 `"Cangallo"', add
label define pe07a_resprov_lbl 0503 `"Huanca Sancos"', add
label define pe07a_resprov_lbl 0504 `"Huanta"', add
label define pe07a_resprov_lbl 0505 `"La Mar"', add
label define pe07a_resprov_lbl 0506 `"Lucanas"', add
label define pe07a_resprov_lbl 0507 `"Parinacochas"', add
label define pe07a_resprov_lbl 0508 `"Paucar Del Sara Sara"', add
label define pe07a_resprov_lbl 0509 `"Sucre"', add
label define pe07a_resprov_lbl 0510 `"Victor Fajardo"', add
label define pe07a_resprov_lbl 0511 `"Vilcashuaman"', add
label define pe07a_resprov_lbl 0599 `"Department of Ayacucho, province not specified"', add
label define pe07a_resprov_lbl 0601 `"Cajamarca"', add
label define pe07a_resprov_lbl 0602 `"Cajabamba"', add
label define pe07a_resprov_lbl 0603 `"Celendin"', add
label define pe07a_resprov_lbl 0604 `"Chota"', add
label define pe07a_resprov_lbl 0605 `"Contumaza"', add
label define pe07a_resprov_lbl 0606 `"Cutervo"', add
label define pe07a_resprov_lbl 0607 `"Hualgayoc"', add
label define pe07a_resprov_lbl 0608 `"Jaen"', add
label define pe07a_resprov_lbl 0609 `"San Ignacio"', add
label define pe07a_resprov_lbl 0610 `"San Marcos"', add
label define pe07a_resprov_lbl 0611 `"San Miguel"', add
label define pe07a_resprov_lbl 0612 `"San Pablo"', add
label define pe07a_resprov_lbl 0613 `"Santa Cruz"', add
label define pe07a_resprov_lbl 0699 `"Department of Cajamarca, province not specified"', add
label define pe07a_resprov_lbl 0701 `"Callao"', add
label define pe07a_resprov_lbl 0801 `"Cusco"', add
label define pe07a_resprov_lbl 0802 `"Acomaya"', add
label define pe07a_resprov_lbl 0803 `"Anta"', add
label define pe07a_resprov_lbl 0804 `"Calca"', add
label define pe07a_resprov_lbl 0805 `"Canas"', add
label define pe07a_resprov_lbl 0806 `"Canchis"', add
label define pe07a_resprov_lbl 0807 `"Chumbivilcas"', add
label define pe07a_resprov_lbl 0808 `"Espinar"', add
label define pe07a_resprov_lbl 0809 `"La Convencion"', add
label define pe07a_resprov_lbl 0810 `"Paruro"', add
label define pe07a_resprov_lbl 0811 `"Paucartambo"', add
label define pe07a_resprov_lbl 0812 `"Quispicanchis"', add
label define pe07a_resprov_lbl 0813 `"Urubamba"', add
label define pe07a_resprov_lbl 0899 `"Department of Cusco, province not specified"', add
label define pe07a_resprov_lbl 0901 `"Huancavelica"', add
label define pe07a_resprov_lbl 0902 `"Acobamba"', add
label define pe07a_resprov_lbl 0903 `"Angaraes"', add
label define pe07a_resprov_lbl 0904 `"Castrovirreyna"', add
label define pe07a_resprov_lbl 0905 `"Churcampa"', add
label define pe07a_resprov_lbl 0906 `"Huaytara"', add
label define pe07a_resprov_lbl 0907 `"Tayacaja"', add
label define pe07a_resprov_lbl 0999 `"Department of Huancavelica, province not specified"', add
label define pe07a_resprov_lbl 1001 `"Huanuco"', add
label define pe07a_resprov_lbl 1002 `"Ambo"', add
label define pe07a_resprov_lbl 1003 `"Dos De Mayo"', add
label define pe07a_resprov_lbl 1004 `"Huacaybamba"', add
label define pe07a_resprov_lbl 1005 `"Huamalies"', add
label define pe07a_resprov_lbl 1006 `"Leoncio Prado"', add
label define pe07a_resprov_lbl 1007 `"Marañon"', add
label define pe07a_resprov_lbl 1008 `"Pachitea"', add
label define pe07a_resprov_lbl 1009 `"Puerto Inca"', add
label define pe07a_resprov_lbl 1010 `"Lauricocha"', add
label define pe07a_resprov_lbl 1011 `"Yarowilca"', add
label define pe07a_resprov_lbl 1099 `"Department of Huanuco, province not specified"', add
label define pe07a_resprov_lbl 1101 `"Ica"', add
label define pe07a_resprov_lbl 1102 `"Chincha"', add
label define pe07a_resprov_lbl 1103 `"Nazca"', add
label define pe07a_resprov_lbl 1104 `"Palpa"', add
label define pe07a_resprov_lbl 1105 `"Pisco"', add
label define pe07a_resprov_lbl 1199 `"Department of Ica, province not specified"', add
label define pe07a_resprov_lbl 1201 `"Huancayo"', add
label define pe07a_resprov_lbl 1202 `"Concepcion"', add
label define pe07a_resprov_lbl 1203 `"Chanchamayo"', add
label define pe07a_resprov_lbl 1204 `"Jauja"', add
label define pe07a_resprov_lbl 1205 `"Junin"', add
label define pe07a_resprov_lbl 1206 `"Satipo"', add
label define pe07a_resprov_lbl 1207 `"Tarma"', add
label define pe07a_resprov_lbl 1208 `"Yauli"', add
label define pe07a_resprov_lbl 1209 `"Chupaca"', add
label define pe07a_resprov_lbl 1299 `"Department of Junin, province not specified"', add
label define pe07a_resprov_lbl 1301 `"Trujillo"', add
label define pe07a_resprov_lbl 1302 `"Ascope"', add
label define pe07a_resprov_lbl 1303 `"Bolivar"', add
label define pe07a_resprov_lbl 1304 `"Chepen"', add
label define pe07a_resprov_lbl 1305 `"Julcan"', add
label define pe07a_resprov_lbl 1306 `"Otuzco"', add
label define pe07a_resprov_lbl 1307 `"Pacasmayo"', add
label define pe07a_resprov_lbl 1308 `"Pataz"', add
label define pe07a_resprov_lbl 1309 `"Sanchez Carrion"', add
label define pe07a_resprov_lbl 1310 `"Santiago De Chuco"', add
label define pe07a_resprov_lbl 1311 `"Gran Chimu"', add
label define pe07a_resprov_lbl 1312 `"Viru"', add
label define pe07a_resprov_lbl 1399 `"Department of La Libertad, province not specified"', add
label define pe07a_resprov_lbl 1401 `"Chiclayo"', add
label define pe07a_resprov_lbl 1402 `"Ferreñafe"', add
label define pe07a_resprov_lbl 1403 `"Lambayeque"', add
label define pe07a_resprov_lbl 1499 `"Department of Lambayeque, province not specified"', add
label define pe07a_resprov_lbl 1501 `"Lima"', add
label define pe07a_resprov_lbl 1502 `"Barranca"', add
label define pe07a_resprov_lbl 1503 `"Cajatambo"', add
label define pe07a_resprov_lbl 1504 `"Canta"', add
label define pe07a_resprov_lbl 1505 `"Cañete"', add
label define pe07a_resprov_lbl 1506 `"Huaral"', add
label define pe07a_resprov_lbl 1507 `"Huarochiri"', add
label define pe07a_resprov_lbl 1508 `"Huaura"', add
label define pe07a_resprov_lbl 1509 `"Oyon"', add
label define pe07a_resprov_lbl 1510 `"Yauyos"', add
label define pe07a_resprov_lbl 1599 `"Department of Lima, province not specified"', add
label define pe07a_resprov_lbl 1601 `"Maynas"', add
label define pe07a_resprov_lbl 1602 `"Alto Amazonas"', add
label define pe07a_resprov_lbl 1603 `"Loreto"', add
label define pe07a_resprov_lbl 1604 `"Mariscal Ramon Castilla"', add
label define pe07a_resprov_lbl 1605 `"Requena"', add
label define pe07a_resprov_lbl 1606 `"Ucayali"', add
label define pe07a_resprov_lbl 1607 `"Datem del Marañon"', add
label define pe07a_resprov_lbl 1699 `"Department of Loreto, province not specified"', add
label define pe07a_resprov_lbl 1701 `"Tambopata"', add
label define pe07a_resprov_lbl 1702 `"Manu"', add
label define pe07a_resprov_lbl 1703 `"Tahuamanu"', add
label define pe07a_resprov_lbl 1799 `"Department of Madre de Dios, province not specified"', add
label define pe07a_resprov_lbl 1801 `"Mariscal Nieto"', add
label define pe07a_resprov_lbl 1802 `"Gral. Sanchez Cerro"', add
label define pe07a_resprov_lbl 1803 `"Ilo"', add
label define pe07a_resprov_lbl 1899 `"Department of Moquegua, province not specified"', add
label define pe07a_resprov_lbl 1901 `"Pasco"', add
label define pe07a_resprov_lbl 1902 `"Daniel Alcides Carrion"', add
label define pe07a_resprov_lbl 1903 `"Oxapampa"', add
label define pe07a_resprov_lbl 1999 `"Department of Pasco, province not specified"', add
label define pe07a_resprov_lbl 2001 `"Piura"', add
label define pe07a_resprov_lbl 2002 `"Ayabaca"', add
label define pe07a_resprov_lbl 2003 `"Huancabamba"', add
label define pe07a_resprov_lbl 2004 `"Morropon"', add
label define pe07a_resprov_lbl 2005 `"Paita"', add
label define pe07a_resprov_lbl 2006 `"Sullana"', add
label define pe07a_resprov_lbl 2007 `"Talara"', add
label define pe07a_resprov_lbl 2008 `"Sechura"', add
label define pe07a_resprov_lbl 2099 `"Department of Piura, province not specified"', add
label define pe07a_resprov_lbl 2101 `"Puno"', add
label define pe07a_resprov_lbl 2102 `"Azangaro"', add
label define pe07a_resprov_lbl 2103 `"Carabaya"', add
label define pe07a_resprov_lbl 2104 `"Chucuito"', add
label define pe07a_resprov_lbl 2105 `"El Collao"', add
label define pe07a_resprov_lbl 2106 `"Huancane"', add
label define pe07a_resprov_lbl 2107 `"Lampa"', add
label define pe07a_resprov_lbl 2108 `"Melgar"', add
label define pe07a_resprov_lbl 2109 `"Moho"', add
label define pe07a_resprov_lbl 2110 `"San Antonio De Putina"', add
label define pe07a_resprov_lbl 2111 `"San Roman"', add
label define pe07a_resprov_lbl 2112 `"Sandia"', add
label define pe07a_resprov_lbl 2113 `"Yunguyo"', add
label define pe07a_resprov_lbl 2199 `"Department of Puno, province not specified"', add
label define pe07a_resprov_lbl 2201 `"Moyobamba"', add
label define pe07a_resprov_lbl 2202 `"Bellavista"', add
label define pe07a_resprov_lbl 2203 `"El Dorado"', add
label define pe07a_resprov_lbl 2204 `"Huallaga"', add
label define pe07a_resprov_lbl 2205 `"Lamas"', add
label define pe07a_resprov_lbl 2206 `"Mariscal Caceres"', add
label define pe07a_resprov_lbl 2207 `"Picota"', add
label define pe07a_resprov_lbl 2208 `"Rioja"', add
label define pe07a_resprov_lbl 2209 `"San Martin"', add
label define pe07a_resprov_lbl 2210 `"Tocache"', add
label define pe07a_resprov_lbl 2299 `"Department of San Martin, province not specified"', add
label define pe07a_resprov_lbl 2301 `"Tacna"', add
label define pe07a_resprov_lbl 2302 `"Candarave"', add
label define pe07a_resprov_lbl 2303 `"Jorge Basadre"', add
label define pe07a_resprov_lbl 2304 `"Tarata"', add
label define pe07a_resprov_lbl 2399 `"Department of Tacna, province not specified"', add
label define pe07a_resprov_lbl 2401 `"Tumbes"', add
label define pe07a_resprov_lbl 2402 `"Contralmirante Villar"', add
label define pe07a_resprov_lbl 2403 `"Zarumilla"', add
label define pe07a_resprov_lbl 2499 `"Department of Tumbes, province not specified"', add
label define pe07a_resprov_lbl 2501 `"Coronel Portillo"', add
label define pe07a_resprov_lbl 2502 `"Atalaya"', add
label define pe07a_resprov_lbl 2503 `"Padre Abad"', add
label define pe07a_resprov_lbl 2504 `"Purus"', add
label define pe07a_resprov_lbl 2599 `"Department of Ucayali, province not specified"', add
label define pe07a_resprov_lbl 9998 `"Unknown"', add
label define pe07a_resprov_lbl 9999 `"NIU (not in universe)"', add
label values pe07a_resprov pe07a_resprov_lbl

label define pe07a_here5yr_lbl 1 `"Under age 5"'
label define pe07a_here5yr_lbl 2 `"Yes"', add
label define pe07a_here5yr_lbl 3 `"No"', add
label values pe07a_here5yr pe07a_here5yr_lbl

label define pe07a_ctry5yr_lbl 3099 `"African countries"'
label define pe07a_ctry5yr_lbl 4002 `"Argentina"', add
label define pe07a_ctry5yr_lbl 4006 `"Bolivia"', add
label define pe07a_ctry5yr_lbl 4007 `"Brazil"', add
label define pe07a_ctry5yr_lbl 4008 `"Canada"', add
label define pe07a_ctry5yr_lbl 4009 `"Chile"', add
label define pe07a_ctry5yr_lbl 4010 `"Colombia"', add
label define pe07a_ctry5yr_lbl 4011 `"Costa Rica"', add
label define pe07a_ctry5yr_lbl 4012 `"Cuba"', add
label define pe07a_ctry5yr_lbl 4014 `"Ecuador"', add
label define pe07a_ctry5yr_lbl 4016 `"United States"', add
label define pe07a_ctry5yr_lbl 4024 `"Mexico"', add
label define pe07a_ctry5yr_lbl 4026 `"Panama"', add
label define pe07a_ctry5yr_lbl 4027 `"Paraguay"', add
label define pe07a_ctry5yr_lbl 4036 `"Uruguay"', add
label define pe07a_ctry5yr_lbl 4037 `"Venezuela"', add
label define pe07a_ctry5yr_lbl 4099 `"Other American countries"', add
label define pe07a_ctry5yr_lbl 5008 `"People's Republic of China"', add
label define pe07a_ctry5yr_lbl 5010 `"South Korea"', add
label define pe07a_ctry5yr_lbl 5019 `"Israel"', add
label define pe07a_ctry5yr_lbl 5020 `"Japan"', add
label define pe07a_ctry5yr_lbl 5099 `"Other Asian countries"', add
label define pe07a_ctry5yr_lbl 6002 `"Germany"', add
label define pe07a_ctry5yr_lbl 6005 `"Belgium"', add
label define pe07a_ctry5yr_lbl 6009 `"Spain"', add
label define pe07a_ctry5yr_lbl 6011 `"France"', add
label define pe07a_ctry5yr_lbl 6016 `"Italy"', add
label define pe07a_ctry5yr_lbl 6022 `"Netherlands"', add
label define pe07a_ctry5yr_lbl 6025 `"United Kingdom"', add
label define pe07a_ctry5yr_lbl 6028 `"Sweden"', add
label define pe07a_ctry5yr_lbl 6029 `"Switzerland"', add
label define pe07a_ctry5yr_lbl 6038 `"Russia"', add
label define pe07a_ctry5yr_lbl 6099 `"Other European countries"', add
label define pe07a_ctry5yr_lbl 7001 `"Australia"', add
label define pe07a_ctry5yr_lbl 8000 `"Other countries"', add
label define pe07a_ctry5yr_lbl 9999 `"NIU (not in universe)"', add
label values pe07a_ctry5yr pe07a_ctry5yr_lbl

label define pe07a_dept5yr_lbl 01 `"Amazonas"'
label define pe07a_dept5yr_lbl 02 `"Ancash"', add
label define pe07a_dept5yr_lbl 03 `"Apurimac"', add
label define pe07a_dept5yr_lbl 04 `"Arequipa"', add
label define pe07a_dept5yr_lbl 05 `"Ayacucho"', add
label define pe07a_dept5yr_lbl 06 `"Cajamarca"', add
label define pe07a_dept5yr_lbl 07 `"Callao"', add
label define pe07a_dept5yr_lbl 08 `"Cusco"', add
label define pe07a_dept5yr_lbl 09 `"Huancavelica"', add
label define pe07a_dept5yr_lbl 10 `"Huanuco"', add
label define pe07a_dept5yr_lbl 11 `"Ica"', add
label define pe07a_dept5yr_lbl 12 `"Junin"', add
label define pe07a_dept5yr_lbl 13 `"La libertad"', add
label define pe07a_dept5yr_lbl 14 `"Lambayeque"', add
label define pe07a_dept5yr_lbl 15 `"Lima"', add
label define pe07a_dept5yr_lbl 16 `"Loreto"', add
label define pe07a_dept5yr_lbl 17 `"Madre de dios"', add
label define pe07a_dept5yr_lbl 18 `"Moquegua"', add
label define pe07a_dept5yr_lbl 19 `"Pasco"', add
label define pe07a_dept5yr_lbl 20 `"Piura"', add
label define pe07a_dept5yr_lbl 21 `"Puno"', add
label define pe07a_dept5yr_lbl 22 `"San martin"', add
label define pe07a_dept5yr_lbl 23 `"Tacna"', add
label define pe07a_dept5yr_lbl 24 `"Tumbes"', add
label define pe07a_dept5yr_lbl 25 `"Ucayali"', add
label define pe07a_dept5yr_lbl 99 `"NIU (not in universe)"', add
label values pe07a_dept5yr pe07a_dept5yr_lbl

label define pe07a_prov5yr_lbl 0101 `"Chachapoyas"'
label define pe07a_prov5yr_lbl 0102 `"Bagua"', add
label define pe07a_prov5yr_lbl 0103 `"Bongara"', add
label define pe07a_prov5yr_lbl 0104 `"Condorcanqui"', add
label define pe07a_prov5yr_lbl 0105 `"Luya"', add
label define pe07a_prov5yr_lbl 0106 `"Rodriguez De Mendoza"', add
label define pe07a_prov5yr_lbl 0107 `"Utcubamba"', add
label define pe07a_prov5yr_lbl 0199 `"Department of Amazonas, province not specified"', add
label define pe07a_prov5yr_lbl 0201 `"Huaraz"', add
label define pe07a_prov5yr_lbl 0202 `"Aija"', add
label define pe07a_prov5yr_lbl 0203 `"Antonio Raymondi"', add
label define pe07a_prov5yr_lbl 0204 `"Asuncion"', add
label define pe07a_prov5yr_lbl 0205 `"Bolognesi"', add
label define pe07a_prov5yr_lbl 0206 `"Carhuaz"', add
label define pe07a_prov5yr_lbl 0207 `"Carlos F. Fitzcarrald"', add
label define pe07a_prov5yr_lbl 0208 `"Casma"', add
label define pe07a_prov5yr_lbl 0209 `"Corongo"', add
label define pe07a_prov5yr_lbl 0210 `"Huari"', add
label define pe07a_prov5yr_lbl 0211 `"Huarmey"', add
label define pe07a_prov5yr_lbl 0212 `"Huaylas"', add
label define pe07a_prov5yr_lbl 0213 `"Mariscal Luzurriaga"', add
label define pe07a_prov5yr_lbl 0214 `"Ocros"', add
label define pe07a_prov5yr_lbl 0215 `"Pallasca"', add
label define pe07a_prov5yr_lbl 0216 `"Pomabamba"', add
label define pe07a_prov5yr_lbl 0217 `"Recuay"', add
label define pe07a_prov5yr_lbl 0218 `"Santa"', add
label define pe07a_prov5yr_lbl 0219 `"Sihuas"', add
label define pe07a_prov5yr_lbl 0220 `"Yungay"', add
label define pe07a_prov5yr_lbl 0299 `"Department of Ancash, province not specified"', add
label define pe07a_prov5yr_lbl 0301 `"Abancay"', add
label define pe07a_prov5yr_lbl 0302 `"Andahuaylas"', add
label define pe07a_prov5yr_lbl 0303 `"Antabamba"', add
label define pe07a_prov5yr_lbl 0304 `"Aymaraes"', add
label define pe07a_prov5yr_lbl 0305 `"Cotabambas"', add
label define pe07a_prov5yr_lbl 0306 `"Chincheros"', add
label define pe07a_prov5yr_lbl 0307 `"Grau"', add
label define pe07a_prov5yr_lbl 0399 `"Department of Apurimac, province not specified"', add
label define pe07a_prov5yr_lbl 0401 `"Arequipa"', add
label define pe07a_prov5yr_lbl 0402 `"Camana"', add
label define pe07a_prov5yr_lbl 0403 `"Caraveli"', add
label define pe07a_prov5yr_lbl 0404 `"Castilla"', add
label define pe07a_prov5yr_lbl 0405 `"Caylloma"', add
label define pe07a_prov5yr_lbl 0406 `"Condesuyos"', add
label define pe07a_prov5yr_lbl 0407 `"Islay"', add
label define pe07a_prov5yr_lbl 0408 `"La Union"', add
label define pe07a_prov5yr_lbl 0499 `"Department of Arequipa, province not specified"', add
label define pe07a_prov5yr_lbl 0501 `"Huamanga"', add
label define pe07a_prov5yr_lbl 0502 `"Cangallo"', add
label define pe07a_prov5yr_lbl 0503 `"Huanca Sancos"', add
label define pe07a_prov5yr_lbl 0504 `"Huanta"', add
label define pe07a_prov5yr_lbl 0505 `"La Mar"', add
label define pe07a_prov5yr_lbl 0506 `"Lucanas"', add
label define pe07a_prov5yr_lbl 0507 `"Parinacochas"', add
label define pe07a_prov5yr_lbl 0508 `"Paucar Del Sara Sara"', add
label define pe07a_prov5yr_lbl 0509 `"Sucre"', add
label define pe07a_prov5yr_lbl 0510 `"Victor Fajardo"', add
label define pe07a_prov5yr_lbl 0511 `"Vilcashuaman"', add
label define pe07a_prov5yr_lbl 0599 `"Department of Ayacucho, province not specified"', add
label define pe07a_prov5yr_lbl 0601 `"Cajamarca"', add
label define pe07a_prov5yr_lbl 0602 `"Cajabamba"', add
label define pe07a_prov5yr_lbl 0603 `"Celendin"', add
label define pe07a_prov5yr_lbl 0604 `"Chota"', add
label define pe07a_prov5yr_lbl 0605 `"Contumaza"', add
label define pe07a_prov5yr_lbl 0606 `"Cutervo"', add
label define pe07a_prov5yr_lbl 0607 `"Hualgayoc"', add
label define pe07a_prov5yr_lbl 0608 `"Jaen"', add
label define pe07a_prov5yr_lbl 0609 `"San Ignacio"', add
label define pe07a_prov5yr_lbl 0610 `"San Marcos"', add
label define pe07a_prov5yr_lbl 0611 `"San Miguel"', add
label define pe07a_prov5yr_lbl 0612 `"San Pablo"', add
label define pe07a_prov5yr_lbl 0613 `"Santa Cruz"', add
label define pe07a_prov5yr_lbl 0699 `"Department of Cajamarca, province not specified"', add
label define pe07a_prov5yr_lbl 0701 `"Callao"', add
label define pe07a_prov5yr_lbl 0801 `"Cusco"', add
label define pe07a_prov5yr_lbl 0802 `"Acomaya"', add
label define pe07a_prov5yr_lbl 0803 `"Anta"', add
label define pe07a_prov5yr_lbl 0804 `"Calca"', add
label define pe07a_prov5yr_lbl 0805 `"Canas"', add
label define pe07a_prov5yr_lbl 0806 `"Canchis"', add
label define pe07a_prov5yr_lbl 0807 `"Chumbivilcas"', add
label define pe07a_prov5yr_lbl 0808 `"Espinar"', add
label define pe07a_prov5yr_lbl 0809 `"La Convencion"', add
label define pe07a_prov5yr_lbl 0810 `"Paruro"', add
label define pe07a_prov5yr_lbl 0811 `"Paucartambo"', add
label define pe07a_prov5yr_lbl 0812 `"Quispicanchis"', add
label define pe07a_prov5yr_lbl 0813 `"Urubamba"', add
label define pe07a_prov5yr_lbl 0899 `"Department of Cusco, province not specified"', add
label define pe07a_prov5yr_lbl 0901 `"Huancavelica"', add
label define pe07a_prov5yr_lbl 0902 `"Acobamba"', add
label define pe07a_prov5yr_lbl 0903 `"Angaraes"', add
label define pe07a_prov5yr_lbl 0904 `"Castrovirreyna"', add
label define pe07a_prov5yr_lbl 0905 `"Churcampa"', add
label define pe07a_prov5yr_lbl 0906 `"Huaytara"', add
label define pe07a_prov5yr_lbl 0907 `"Tayacaja"', add
label define pe07a_prov5yr_lbl 0999 `"Department of Huancavelica, province not specified"', add
label define pe07a_prov5yr_lbl 1001 `"Huanuco"', add
label define pe07a_prov5yr_lbl 1002 `"Ambo"', add
label define pe07a_prov5yr_lbl 1003 `"Dos De Mayo"', add
label define pe07a_prov5yr_lbl 1004 `"Huacaybamba"', add
label define pe07a_prov5yr_lbl 1005 `"Huamalies"', add
label define pe07a_prov5yr_lbl 1006 `"Leoncio Prado"', add
label define pe07a_prov5yr_lbl 1007 `"Marañon"', add
label define pe07a_prov5yr_lbl 1008 `"Pachitea"', add
label define pe07a_prov5yr_lbl 1009 `"Puerto Inca"', add
label define pe07a_prov5yr_lbl 1010 `"Lauricocha"', add
label define pe07a_prov5yr_lbl 1011 `"Yarowilca"', add
label define pe07a_prov5yr_lbl 1099 `"Department of Huanuco, province not specified"', add
label define pe07a_prov5yr_lbl 1101 `"Ica"', add
label define pe07a_prov5yr_lbl 1102 `"Chincha"', add
label define pe07a_prov5yr_lbl 1103 `"Nazca"', add
label define pe07a_prov5yr_lbl 1104 `"Palpa"', add
label define pe07a_prov5yr_lbl 1105 `"Pisco"', add
label define pe07a_prov5yr_lbl 1199 `"Department of Ica, province not specified"', add
label define pe07a_prov5yr_lbl 1201 `"Huancayo"', add
label define pe07a_prov5yr_lbl 1202 `"Concepcion"', add
label define pe07a_prov5yr_lbl 1203 `"Chanchamayo"', add
label define pe07a_prov5yr_lbl 1204 `"Jauja"', add
label define pe07a_prov5yr_lbl 1205 `"Junin"', add
label define pe07a_prov5yr_lbl 1206 `"Satipo"', add
label define pe07a_prov5yr_lbl 1207 `"Tarma"', add
label define pe07a_prov5yr_lbl 1208 `"Yauli"', add
label define pe07a_prov5yr_lbl 1209 `"Chupaca"', add
label define pe07a_prov5yr_lbl 1299 `"Department of Junin, province not specified"', add
label define pe07a_prov5yr_lbl 1301 `"Trujillo"', add
label define pe07a_prov5yr_lbl 1302 `"Ascope"', add
label define pe07a_prov5yr_lbl 1303 `"Bolivar"', add
label define pe07a_prov5yr_lbl 1304 `"Chepen"', add
label define pe07a_prov5yr_lbl 1305 `"Julcan"', add
label define pe07a_prov5yr_lbl 1306 `"Otuzco"', add
label define pe07a_prov5yr_lbl 1307 `"Pacasmayo"', add
label define pe07a_prov5yr_lbl 1308 `"Pataz"', add
label define pe07a_prov5yr_lbl 1309 `"Sanchez Carrion"', add
label define pe07a_prov5yr_lbl 1310 `"Santiago De Chuco"', add
label define pe07a_prov5yr_lbl 1311 `"Gran Chimu"', add
label define pe07a_prov5yr_lbl 1312 `"Viru"', add
label define pe07a_prov5yr_lbl 1399 `"Department of La Libertad, province not specified"', add
label define pe07a_prov5yr_lbl 1401 `"Chiclayo"', add
label define pe07a_prov5yr_lbl 1402 `"Ferrenafe"', add
label define pe07a_prov5yr_lbl 1403 `"Lambayeque"', add
label define pe07a_prov5yr_lbl 1499 `"Department of Lambayeque, province not specified"', add
label define pe07a_prov5yr_lbl 1501 `"Lima"', add
label define pe07a_prov5yr_lbl 1502 `"Barranca"', add
label define pe07a_prov5yr_lbl 1503 `"Cajatambo"', add
label define pe07a_prov5yr_lbl 1504 `"Canta"', add
label define pe07a_prov5yr_lbl 1505 `"Canete"', add
label define pe07a_prov5yr_lbl 1506 `"Huaral"', add
label define pe07a_prov5yr_lbl 1507 `"Huarochiri"', add
label define pe07a_prov5yr_lbl 1508 `"Huaura"', add
label define pe07a_prov5yr_lbl 1509 `"Oyon"', add
label define pe07a_prov5yr_lbl 1510 `"Yauyos"', add
label define pe07a_prov5yr_lbl 1599 `"Department of Lima, province not specified"', add
label define pe07a_prov5yr_lbl 1601 `"Maynas"', add
label define pe07a_prov5yr_lbl 1602 `"Alto Amazonas"', add
label define pe07a_prov5yr_lbl 1603 `"Loreto"', add
label define pe07a_prov5yr_lbl 1604 `"Mariscal Ramon Castilla"', add
label define pe07a_prov5yr_lbl 1605 `"Requena"', add
label define pe07a_prov5yr_lbl 1606 `"Ucayali"', add
label define pe07a_prov5yr_lbl 1607 `"Datem del Marañon"', add
label define pe07a_prov5yr_lbl 1699 `"Department of Loreto, province not specified"', add
label define pe07a_prov5yr_lbl 1701 `"Tambopata"', add
label define pe07a_prov5yr_lbl 1702 `"Manu"', add
label define pe07a_prov5yr_lbl 1703 `"Tahuamanu"', add
label define pe07a_prov5yr_lbl 1799 `"Department of Madre de Dios, province not specified"', add
label define pe07a_prov5yr_lbl 1801 `"Mariscal Nieto"', add
label define pe07a_prov5yr_lbl 1802 `"Gral. Sanchez Cerro"', add
label define pe07a_prov5yr_lbl 1803 `"Ilo"', add
label define pe07a_prov5yr_lbl 1899 `"Department of Moquegua, province not specified"', add
label define pe07a_prov5yr_lbl 1901 `"Pasco"', add
label define pe07a_prov5yr_lbl 1902 `"Daniel Alcides Carrion"', add
label define pe07a_prov5yr_lbl 1903 `"Oxapampa"', add
label define pe07a_prov5yr_lbl 1999 `"Department of Pasco, province not specified"', add
label define pe07a_prov5yr_lbl 2001 `"Piura"', add
label define pe07a_prov5yr_lbl 2002 `"Ayabaca"', add
label define pe07a_prov5yr_lbl 2003 `"Huancabamba"', add
label define pe07a_prov5yr_lbl 2004 `"Morropon"', add
label define pe07a_prov5yr_lbl 2005 `"Paita"', add
label define pe07a_prov5yr_lbl 2006 `"Sullana"', add
label define pe07a_prov5yr_lbl 2007 `"Talara"', add
label define pe07a_prov5yr_lbl 2008 `"Sechura"', add
label define pe07a_prov5yr_lbl 2099 `"Department of Piura, province not specified"', add
label define pe07a_prov5yr_lbl 2101 `"Puno"', add
label define pe07a_prov5yr_lbl 2102 `"Azangaro"', add
label define pe07a_prov5yr_lbl 2103 `"Carabaya"', add
label define pe07a_prov5yr_lbl 2104 `"Chucuito"', add
label define pe07a_prov5yr_lbl 2105 `"El Collao"', add
label define pe07a_prov5yr_lbl 2106 `"Huancane"', add
label define pe07a_prov5yr_lbl 2107 `"Lampa"', add
label define pe07a_prov5yr_lbl 2108 `"Melgar"', add
label define pe07a_prov5yr_lbl 2109 `"Moho"', add
label define pe07a_prov5yr_lbl 2110 `"San Antonio De Putina"', add
label define pe07a_prov5yr_lbl 2111 `"San Roman"', add
label define pe07a_prov5yr_lbl 2112 `"Sandia"', add
label define pe07a_prov5yr_lbl 2113 `"Yunguyo"', add
label define pe07a_prov5yr_lbl 2199 `"Department of Puno, province not specified"', add
label define pe07a_prov5yr_lbl 2201 `"Moyobamba"', add
label define pe07a_prov5yr_lbl 2202 `"Bellavista"', add
label define pe07a_prov5yr_lbl 2203 `"El Dorado"', add
label define pe07a_prov5yr_lbl 2204 `"Huallaga"', add
label define pe07a_prov5yr_lbl 2205 `"Lamas"', add
label define pe07a_prov5yr_lbl 2206 `"Mariscal Caceres"', add
label define pe07a_prov5yr_lbl 2207 `"Picota"', add
label define pe07a_prov5yr_lbl 2208 `"Rioja"', add
label define pe07a_prov5yr_lbl 2209 `"San Martin"', add
label define pe07a_prov5yr_lbl 2210 `"Tocache"', add
label define pe07a_prov5yr_lbl 2299 `"Department of San Martin, province not specified"', add
label define pe07a_prov5yr_lbl 2301 `"Tacna"', add
label define pe07a_prov5yr_lbl 2302 `"Candarave"', add
label define pe07a_prov5yr_lbl 2303 `"Jorge Basadre"', add
label define pe07a_prov5yr_lbl 2304 `"Tarata"', add
label define pe07a_prov5yr_lbl 2399 `"Department of Tacna, province not specified"', add
label define pe07a_prov5yr_lbl 2401 `"Tumbes"', add
label define pe07a_prov5yr_lbl 2402 `"Contralmirante Villar"', add
label define pe07a_prov5yr_lbl 2403 `"Zarumilla"', add
label define pe07a_prov5yr_lbl 2499 `"Department of Tumbes, province not specified"', add
label define pe07a_prov5yr_lbl 2501 `"Coronel Portillo"', add
label define pe07a_prov5yr_lbl 2502 `"Atalaya"', add
label define pe07a_prov5yr_lbl 2503 `"Padre Abad"', add
label define pe07a_prov5yr_lbl 2504 `"Purus"', add
label define pe07a_prov5yr_lbl 2599 `"Department of Ucayali, province not specified"', add
label define pe07a_prov5yr_lbl 9999 `"NIU (not in universe)"', add
label values pe07a_prov5yr pe07a_prov5yr_lbl

label define pe07a_bplhere_lbl 1 `"Yes"'
label define pe07a_bplhere_lbl 2 `"No"', add
label values pe07a_bplhere pe07a_bplhere_lbl

label define pe07a_bplctry_lbl 3099 `"African countries"'
label define pe07a_bplctry_lbl 4002 `"Argentina"', add
label define pe07a_bplctry_lbl 4006 `"Bolivia"', add
label define pe07a_bplctry_lbl 4007 `"Brazil"', add
label define pe07a_bplctry_lbl 4008 `"Canada"', add
label define pe07a_bplctry_lbl 4009 `"Chile"', add
label define pe07a_bplctry_lbl 4010 `"Colombia"', add
label define pe07a_bplctry_lbl 4012 `"Cuba"', add
label define pe07a_bplctry_lbl 4014 `"Ecuador"', add
label define pe07a_bplctry_lbl 4016 `"United States"', add
label define pe07a_bplctry_lbl 4024 `"Mexico"', add
label define pe07a_bplctry_lbl 4025 `"Nicaragua"', add
label define pe07a_bplctry_lbl 4026 `"Panama"', add
label define pe07a_bplctry_lbl 4027 `"Paraguay"', add
label define pe07a_bplctry_lbl 4036 `"Uruguay"', add
label define pe07a_bplctry_lbl 4037 `"Venezuela"', add
label define pe07a_bplctry_lbl 4099 `"Other American countries"', add
label define pe07a_bplctry_lbl 5008 `"People's Republic of China"', add
label define pe07a_bplctry_lbl 5010 `"South Korea"', add
label define pe07a_bplctry_lbl 5019 `"Israel"', add
label define pe07a_bplctry_lbl 5020 `"Japan"', add
label define pe07a_bplctry_lbl 5099 `"Other Asian countries"', add
label define pe07a_bplctry_lbl 6002 `"Germany"', add
label define pe07a_bplctry_lbl 6005 `"Belgium"', add
label define pe07a_bplctry_lbl 6009 `"Spain"', add
label define pe07a_bplctry_lbl 6011 `"France"', add
label define pe07a_bplctry_lbl 6016 `"Italy"', add
label define pe07a_bplctry_lbl 6022 `"Netherlands"', add
label define pe07a_bplctry_lbl 6025 `"United Kingdom"', add
label define pe07a_bplctry_lbl 6028 `"Sweden"', add
label define pe07a_bplctry_lbl 6029 `"Switzerland"', add
label define pe07a_bplctry_lbl 6038 `"Russia"', add
label define pe07a_bplctry_lbl 6099 `"Other European countries"', add
label define pe07a_bplctry_lbl 7001 `"Australia"', add
label define pe07a_bplctry_lbl 8000 `"Other countries"', add
label define pe07a_bplctry_lbl 9997 `"Born abroad, country not specified"', add
label define pe07a_bplctry_lbl 9998 `"Unknown"', add
label define pe07a_bplctry_lbl 9999 `"NIU (not in universe)"', add
label values pe07a_bplctry pe07a_bplctry_lbl

label define pe07a_bplprov_lbl 0101 `"Chachapoyas"'
label define pe07a_bplprov_lbl 0102 `"Bagua"', add
label define pe07a_bplprov_lbl 0103 `"Bongara"', add
label define pe07a_bplprov_lbl 0104 `"Condorcanqui"', add
label define pe07a_bplprov_lbl 0105 `"Luya"', add
label define pe07a_bplprov_lbl 0106 `"Rodriguez De Mendoza"', add
label define pe07a_bplprov_lbl 0107 `"Utcubamba"', add
label define pe07a_bplprov_lbl 0199 `"Department of Amazonas, province not specified"', add
label define pe07a_bplprov_lbl 0201 `"Huaraz"', add
label define pe07a_bplprov_lbl 0202 `"Aija"', add
label define pe07a_bplprov_lbl 0203 `"Antonio Raymondi"', add
label define pe07a_bplprov_lbl 0204 `"Asuncion"', add
label define pe07a_bplprov_lbl 0205 `"Bolognesi"', add
label define pe07a_bplprov_lbl 0206 `"Carhuaz"', add
label define pe07a_bplprov_lbl 0207 `"Carlos F. Fitzcarrald"', add
label define pe07a_bplprov_lbl 0208 `"Casma"', add
label define pe07a_bplprov_lbl 0209 `"Corongo"', add
label define pe07a_bplprov_lbl 0210 `"Huari"', add
label define pe07a_bplprov_lbl 0211 `"Huarmey"', add
label define pe07a_bplprov_lbl 0212 `"Huaylas"', add
label define pe07a_bplprov_lbl 0213 `"Mariscal Luzurriaga"', add
label define pe07a_bplprov_lbl 0214 `"Ocros"', add
label define pe07a_bplprov_lbl 0215 `"Pallasca"', add
label define pe07a_bplprov_lbl 0216 `"Pomabamba"', add
label define pe07a_bplprov_lbl 0217 `"Recuay"', add
label define pe07a_bplprov_lbl 0218 `"Santa"', add
label define pe07a_bplprov_lbl 0219 `"Sihuas"', add
label define pe07a_bplprov_lbl 0220 `"Yungay"', add
label define pe07a_bplprov_lbl 0299 `"Department of Ancash, province not specified"', add
label define pe07a_bplprov_lbl 0301 `"Abancay"', add
label define pe07a_bplprov_lbl 0302 `"Andahuaylas"', add
label define pe07a_bplprov_lbl 0303 `"Antabamba"', add
label define pe07a_bplprov_lbl 0304 `"Aymaraes"', add
label define pe07a_bplprov_lbl 0305 `"Cotabambas"', add
label define pe07a_bplprov_lbl 0306 `"Chincheros"', add
label define pe07a_bplprov_lbl 0307 `"Grau"', add
label define pe07a_bplprov_lbl 0399 `"Department of Apurimac, province not specified"', add
label define pe07a_bplprov_lbl 0401 `"Arequipa"', add
label define pe07a_bplprov_lbl 0402 `"Camana"', add
label define pe07a_bplprov_lbl 0403 `"Caraveli"', add
label define pe07a_bplprov_lbl 0404 `"Castilla"', add
label define pe07a_bplprov_lbl 0405 `"Caylloma"', add
label define pe07a_bplprov_lbl 0406 `"Condesuyos"', add
label define pe07a_bplprov_lbl 0407 `"Islay"', add
label define pe07a_bplprov_lbl 0408 `"La Union"', add
label define pe07a_bplprov_lbl 0499 `"Department of Arequipa, province not specified"', add
label define pe07a_bplprov_lbl 0501 `"Huamanga"', add
label define pe07a_bplprov_lbl 0502 `"Cangallo"', add
label define pe07a_bplprov_lbl 0503 `"Huanca Sancos"', add
label define pe07a_bplprov_lbl 0504 `"Huanta"', add
label define pe07a_bplprov_lbl 0505 `"La Mar"', add
label define pe07a_bplprov_lbl 0506 `"Lucanas"', add
label define pe07a_bplprov_lbl 0507 `"Parinacochas"', add
label define pe07a_bplprov_lbl 0508 `"Paucar Del Sara Sara"', add
label define pe07a_bplprov_lbl 0509 `"Sucre"', add
label define pe07a_bplprov_lbl 0510 `"Victor Fajardo"', add
label define pe07a_bplprov_lbl 0511 `"Vilcashuaman"', add
label define pe07a_bplprov_lbl 0599 `"Department of Ayacucho, province not specified"', add
label define pe07a_bplprov_lbl 0601 `"Cajamarca"', add
label define pe07a_bplprov_lbl 0602 `"Cajabamba"', add
label define pe07a_bplprov_lbl 0603 `"Celendin"', add
label define pe07a_bplprov_lbl 0604 `"Chota"', add
label define pe07a_bplprov_lbl 0605 `"Contumaza"', add
label define pe07a_bplprov_lbl 0606 `"Cutervo"', add
label define pe07a_bplprov_lbl 0607 `"Hualgayoc"', add
label define pe07a_bplprov_lbl 0608 `"Jaen"', add
label define pe07a_bplprov_lbl 0609 `"San Ignacio"', add
label define pe07a_bplprov_lbl 0610 `"San Marcos"', add
label define pe07a_bplprov_lbl 0611 `"San Miguel"', add
label define pe07a_bplprov_lbl 0612 `"San Pablo"', add
label define pe07a_bplprov_lbl 0613 `"Santa Cruz"', add
label define pe07a_bplprov_lbl 0699 `"Department of Cajamarca, province not specified"', add
label define pe07a_bplprov_lbl 0701 `"Callao"', add
label define pe07a_bplprov_lbl 0801 `"Cusco"', add
label define pe07a_bplprov_lbl 0802 `"Acomaya"', add
label define pe07a_bplprov_lbl 0803 `"Anta"', add
label define pe07a_bplprov_lbl 0804 `"Calca"', add
label define pe07a_bplprov_lbl 0805 `"Canas"', add
label define pe07a_bplprov_lbl 0806 `"Canchis"', add
label define pe07a_bplprov_lbl 0807 `"Chumbivilcas"', add
label define pe07a_bplprov_lbl 0808 `"Espinar"', add
label define pe07a_bplprov_lbl 0809 `"La Convencion"', add
label define pe07a_bplprov_lbl 0810 `"Paruro"', add
label define pe07a_bplprov_lbl 0811 `"Paucartambo"', add
label define pe07a_bplprov_lbl 0812 `"Quispicanchis"', add
label define pe07a_bplprov_lbl 0813 `"Urubamba"', add
label define pe07a_bplprov_lbl 0899 `"Department of Cusco, province not specified"', add
label define pe07a_bplprov_lbl 0901 `"Huancavelica"', add
label define pe07a_bplprov_lbl 0902 `"Acobamba"', add
label define pe07a_bplprov_lbl 0903 `"Angaraes"', add
label define pe07a_bplprov_lbl 0904 `"Castrovirreyna"', add
label define pe07a_bplprov_lbl 0905 `"Churcampa"', add
label define pe07a_bplprov_lbl 0906 `"Huaytara"', add
label define pe07a_bplprov_lbl 0907 `"Tayacaja"', add
label define pe07a_bplprov_lbl 0999 `"Department of Huancavelica, province not specified"', add
label define pe07a_bplprov_lbl 1001 `"Huanuco"', add
label define pe07a_bplprov_lbl 1002 `"Ambo"', add
label define pe07a_bplprov_lbl 1003 `"Dos De Mayo"', add
label define pe07a_bplprov_lbl 1004 `"Huacaybamba"', add
label define pe07a_bplprov_lbl 1005 `"Huamalies"', add
label define pe07a_bplprov_lbl 1006 `"Leoncio Prado"', add
label define pe07a_bplprov_lbl 1007 `"Marañon"', add
label define pe07a_bplprov_lbl 1008 `"Pachitea"', add
label define pe07a_bplprov_lbl 1009 `"Puerto Inca"', add
label define pe07a_bplprov_lbl 1010 `"Lauricocha"', add
label define pe07a_bplprov_lbl 1011 `"Yarowilca"', add
label define pe07a_bplprov_lbl 1099 `"Department of Huanuco, province not specified"', add
label define pe07a_bplprov_lbl 1101 `"Ica"', add
label define pe07a_bplprov_lbl 1102 `"Chincha"', add
label define pe07a_bplprov_lbl 1103 `"Nazca"', add
label define pe07a_bplprov_lbl 1104 `"Palpa"', add
label define pe07a_bplprov_lbl 1105 `"Pisco"', add
label define pe07a_bplprov_lbl 1199 `"Department of Ica, province not specified"', add
label define pe07a_bplprov_lbl 1201 `"Huancayo"', add
label define pe07a_bplprov_lbl 1202 `"Concepcion"', add
label define pe07a_bplprov_lbl 1203 `"Chanchamayo"', add
label define pe07a_bplprov_lbl 1204 `"Jauja"', add
label define pe07a_bplprov_lbl 1205 `"Junin"', add
label define pe07a_bplprov_lbl 1206 `"Satipo"', add
label define pe07a_bplprov_lbl 1207 `"Tarma"', add
label define pe07a_bplprov_lbl 1208 `"Yauli"', add
label define pe07a_bplprov_lbl 1209 `"Chupaca"', add
label define pe07a_bplprov_lbl 1299 `"Department of Junin, province not specified"', add
label define pe07a_bplprov_lbl 1301 `"Trujillo"', add
label define pe07a_bplprov_lbl 1302 `"Ascope"', add
label define pe07a_bplprov_lbl 1303 `"Bolivar"', add
label define pe07a_bplprov_lbl 1304 `"Chepen"', add
label define pe07a_bplprov_lbl 1305 `"Julcan"', add
label define pe07a_bplprov_lbl 1306 `"Otuzco"', add
label define pe07a_bplprov_lbl 1307 `"Pacasmayo"', add
label define pe07a_bplprov_lbl 1308 `"Pataz"', add
label define pe07a_bplprov_lbl 1309 `"Sanchez Carrion"', add
label define pe07a_bplprov_lbl 1310 `"Santiago De Chuco"', add
label define pe07a_bplprov_lbl 1311 `"Gran Chimu"', add
label define pe07a_bplprov_lbl 1312 `"Viru"', add
label define pe07a_bplprov_lbl 1399 `"Department of La Libertad, province not specified"', add
label define pe07a_bplprov_lbl 1401 `"Chiclayo"', add
label define pe07a_bplprov_lbl 1402 `"Ferreñafe"', add
label define pe07a_bplprov_lbl 1403 `"Lambayeque"', add
label define pe07a_bplprov_lbl 1499 `"Department of Lambayeque, province not specified"', add
label define pe07a_bplprov_lbl 1501 `"Lima"', add
label define pe07a_bplprov_lbl 1502 `"Barranca"', add
label define pe07a_bplprov_lbl 1503 `"Cajatambo"', add
label define pe07a_bplprov_lbl 1504 `"Canta"', add
label define pe07a_bplprov_lbl 1505 `"Cañete"', add
label define pe07a_bplprov_lbl 1506 `"Huaral"', add
label define pe07a_bplprov_lbl 1507 `"Huarochiri"', add
label define pe07a_bplprov_lbl 1508 `"Huaura"', add
label define pe07a_bplprov_lbl 1509 `"Oyon"', add
label define pe07a_bplprov_lbl 1510 `"Yauyos"', add
label define pe07a_bplprov_lbl 1599 `"Department of Lima, province not specified"', add
label define pe07a_bplprov_lbl 1601 `"Maynas"', add
label define pe07a_bplprov_lbl 1602 `"Alto Amazonas"', add
label define pe07a_bplprov_lbl 1603 `"Loreto"', add
label define pe07a_bplprov_lbl 1604 `"Mariscal Ramon Castilla"', add
label define pe07a_bplprov_lbl 1605 `"Requena"', add
label define pe07a_bplprov_lbl 1606 `"Ucayali"', add
label define pe07a_bplprov_lbl 1607 `"Datem del Marañon"', add
label define pe07a_bplprov_lbl 1699 `"Department of Loreto, province not specified"', add
label define pe07a_bplprov_lbl 1701 `"Tambopata"', add
label define pe07a_bplprov_lbl 1702 `"Manu"', add
label define pe07a_bplprov_lbl 1703 `"Tahuamanu"', add
label define pe07a_bplprov_lbl 1799 `"Department of Madre de Dios, province not specified"', add
label define pe07a_bplprov_lbl 1801 `"Mariscal Nieto"', add
label define pe07a_bplprov_lbl 1802 `"Gral. Sanchez Cerro"', add
label define pe07a_bplprov_lbl 1803 `"Ilo"', add
label define pe07a_bplprov_lbl 1899 `"Department of Moquegua, province not specified"', add
label define pe07a_bplprov_lbl 1901 `"Pasco"', add
label define pe07a_bplprov_lbl 1902 `"Daniel Alcides Carrion"', add
label define pe07a_bplprov_lbl 1903 `"Oxapampa"', add
label define pe07a_bplprov_lbl 1999 `"Department of Pasco, province not specified"', add
label define pe07a_bplprov_lbl 2001 `"Piura"', add
label define pe07a_bplprov_lbl 2002 `"Ayabaca"', add
label define pe07a_bplprov_lbl 2003 `"Huancabamba"', add
label define pe07a_bplprov_lbl 2004 `"Morropon"', add
label define pe07a_bplprov_lbl 2005 `"Paita"', add
label define pe07a_bplprov_lbl 2006 `"Sullana"', add
label define pe07a_bplprov_lbl 2007 `"Talara"', add
label define pe07a_bplprov_lbl 2008 `"Sechura"', add
label define pe07a_bplprov_lbl 2099 `"Department of Piura, province not specified"', add
label define pe07a_bplprov_lbl 2101 `"Puno"', add
label define pe07a_bplprov_lbl 2102 `"Azangaro"', add
label define pe07a_bplprov_lbl 2103 `"Carabaya"', add
label define pe07a_bplprov_lbl 2104 `"Chucuito"', add
label define pe07a_bplprov_lbl 2105 `"El Collao"', add
label define pe07a_bplprov_lbl 2106 `"Huancane"', add
label define pe07a_bplprov_lbl 2107 `"Lampa"', add
label define pe07a_bplprov_lbl 2108 `"Melgar"', add
label define pe07a_bplprov_lbl 2109 `"Moho"', add
label define pe07a_bplprov_lbl 2110 `"San Antonio De Putina"', add
label define pe07a_bplprov_lbl 2111 `"San Roman"', add
label define pe07a_bplprov_lbl 2112 `"Sandia"', add
label define pe07a_bplprov_lbl 2113 `"Yunguyo"', add
label define pe07a_bplprov_lbl 2199 `"Department of Puno, province not specified"', add
label define pe07a_bplprov_lbl 2201 `"Moyobamba"', add
label define pe07a_bplprov_lbl 2202 `"Bellavista"', add
label define pe07a_bplprov_lbl 2203 `"El Dorado"', add
label define pe07a_bplprov_lbl 2204 `"Huallaga"', add
label define pe07a_bplprov_lbl 2205 `"Lamas"', add
label define pe07a_bplprov_lbl 2206 `"Mariscal Caceres"', add
label define pe07a_bplprov_lbl 2207 `"Picota"', add
label define pe07a_bplprov_lbl 2208 `"Rioja"', add
label define pe07a_bplprov_lbl 2209 `"San Martin"', add
label define pe07a_bplprov_lbl 2210 `"Tocache"', add
label define pe07a_bplprov_lbl 2299 `"Department of San Martin, province not specified"', add
label define pe07a_bplprov_lbl 2301 `"Tacna"', add
label define pe07a_bplprov_lbl 2302 `"Candarave"', add
label define pe07a_bplprov_lbl 2303 `"Jorge Basadre"', add
label define pe07a_bplprov_lbl 2304 `"Tarata"', add
label define pe07a_bplprov_lbl 2399 `"Department of Tacna, province not specified"', add
label define pe07a_bplprov_lbl 2401 `"Tumbes"', add
label define pe07a_bplprov_lbl 2402 `"Contralmirante Villar"', add
label define pe07a_bplprov_lbl 2403 `"Zarumilla"', add
label define pe07a_bplprov_lbl 2499 `"Department of Tumbes, province not specified"', add
label define pe07a_bplprov_lbl 2501 `"Coronel Portillo"', add
label define pe07a_bplprov_lbl 2502 `"Atalaya"', add
label define pe07a_bplprov_lbl 2503 `"Padre Abad"', add
label define pe07a_bplprov_lbl 2504 `"Purus"', add
label define pe07a_bplprov_lbl 2599 `"Department of Ucayali, province not specified"', add
label define pe07a_bplprov_lbl 9998 `"Unknown"', add
label define pe07a_bplprov_lbl 9999 `"NIU (not in universe)"', add
label values pe07a_bplprov pe07a_bplprov_lbl

label define pe07a_insursis_lbl 1 `"Yes, has SIS"'
label define pe07a_insursis_lbl 2 `"No, doesn't have SIS"', add
label values pe07a_insursis pe07a_insursis_lbl

label define pe07a_insuress_lbl 1 `"Yes, has ESSALUD"'
label define pe07a_insuress_lbl 2 `"No, doesn't have ESSALUD"', add
label values pe07a_insuress pe07a_insuress_lbl

label define pe07a_insuroth_lbl 1 `"Yes, has other insurance"'
label define pe07a_insuroth_lbl 2 `"No, doesn't have other insurance"', add
label values pe07a_insuroth pe07a_insuroth_lbl

label define pe07a_insurnon_lbl 1 `"No, does not have insurance"'
label define pe07a_insurnon_lbl 2 `"Yes, has insurance"', add
label values pe07a_insurnon pe07a_insurnon_lbl

label define pe07a_mtong_lbl 1 `"Quechua"'
label define pe07a_mtong_lbl 2 `"Aymará"', add
label define pe07a_mtong_lbl 3 `"Asháninka"', add
label define pe07a_mtong_lbl 4 `"Other indigenous language"', add
label define pe07a_mtong_lbl 5 `"Spanish"', add
label define pe07a_mtong_lbl 6 `"Foreign language"', add
label define pe07a_mtong_lbl 7 `"Is deaf-mute"', add
label define pe07a_mtong_lbl 9 `"NIU (not in universe)"', add
label values pe07a_mtong pe07a_mtong_lbl

label define pe07a_lit_lbl 1 `"Yes, reads and writes"'
label define pe07a_lit_lbl 2 `"No, neither reads nor writes"', add
label define pe07a_lit_lbl 9 `"NIU (not in universe)"', add
label values pe07a_lit pe07a_lit_lbl

label define pe07a_edlevel_lbl 1 `"No Level"'
label define pe07a_edlevel_lbl 2 `"Initial education"', add
label define pe07a_edlevel_lbl 3 `"Primary"', add
label define pe07a_edlevel_lbl 4 `"Secondary"', add
label define pe07a_edlevel_lbl 5 `"Non-university higher education-incomplete"', add
label define pe07a_edlevel_lbl 6 `"Non-university higher education-completed"', add
label define pe07a_edlevel_lbl 7 `"University higher education-incomplete"', add
label define pe07a_edlevel_lbl 8 `"University higher education-completed"', add
label define pe07a_edlevel_lbl 9 `"NIU (not in universe)"', add
label values pe07a_edlevel pe07a_edlevel_lbl

label define pe07a_edgrade_lbl 1 `"First grade"'
label define pe07a_edgrade_lbl 2 `"Second grade"', add
label define pe07a_edgrade_lbl 3 `"Third grade"', add
label define pe07a_edgrade_lbl 4 `"Fourth grade"', add
label define pe07a_edgrade_lbl 5 `"Fifth grade"', add
label define pe07a_edgrade_lbl 6 `"Sixth grade"', add
label define pe07a_edgrade_lbl 8 `"Primary level, answered year passed"', add
label define pe07a_edgrade_lbl 9 `"NIU (not in universe)"', add
label values pe07a_edgrade pe07a_edgrade_lbl

label define pe07a_edyear_lbl 0 `"No year"'
label define pe07a_edyear_lbl 1 `"First year"', add
label define pe07a_edyear_lbl 2 `"Second year"', add
label define pe07a_edyear_lbl 3 `"Third year"', add
label define pe07a_edyear_lbl 4 `"Fourth year"', add
label define pe07a_edyear_lbl 5 `"Fifth year"', add
label define pe07a_edyear_lbl 6 `"Sixth year"', add
label define pe07a_edyear_lbl 8 `"Primary level, answered grade passed"', add
label define pe07a_edyear_lbl 9 `"NIU (not in universe)"', add
label values pe07a_edyear pe07a_edyear_lbl

label define pe07a_edattain_lbl 000 `"No Level"'
label define pe07a_edattain_lbl 100 `"Pre-primary [educación inicial]"', add
label define pe07a_edattain_lbl 201 `"Primary, first grade"', add
label define pe07a_edattain_lbl 202 `"Primary, second grade"', add
label define pe07a_edattain_lbl 203 `"Primary, third grade"', add
label define pe07a_edattain_lbl 204 `"Primary, fourth grade"', add
label define pe07a_edattain_lbl 205 `"Primary, fifth grade"', add
label define pe07a_edattain_lbl 206 `"Primary, sixth grade"', add
label define pe07a_edattain_lbl 210 `"Primary, no year"', add
label define pe07a_edattain_lbl 211 `"Primary, first year"', add
label define pe07a_edattain_lbl 212 `"Primary, second year"', add
label define pe07a_edattain_lbl 213 `"Primary, third year"', add
label define pe07a_edattain_lbl 214 `"Primary, fourth year"', add
label define pe07a_edattain_lbl 215 `"Primary, fifth year"', add
label define pe07a_edattain_lbl 301 `"Secondary, first year"', add
label define pe07a_edattain_lbl 302 `"Secondary, second year"', add
label define pe07a_edattain_lbl 303 `"Secondary, third year"', add
label define pe07a_edattain_lbl 304 `"Secondary, fourth year"', add
label define pe07a_edattain_lbl 305 `"Secondary, fifth year"', add
label define pe07a_edattain_lbl 306 `"Secondary, sixth year"', add
label define pe07a_edattain_lbl 400 `"Non-university higher education-incomplete"', add
label define pe07a_edattain_lbl 500 `"Non-university higher education-completed"', add
label define pe07a_edattain_lbl 600 `"University higher education-incomplete"', add
label define pe07a_edattain_lbl 700 `"University higher education-completed"', add
label define pe07a_edattain_lbl 999 `"NIU (not in universe)"', add
label values pe07a_edattain pe07a_edattain_lbl

label define pe07a_schoolatt_lbl 1 `"Yes"'
label define pe07a_schoolatt_lbl 2 `"No"', add
label define pe07a_schoolatt_lbl 9 `"NIU (not in universe)"', add
label values pe07a_schoolatt pe07a_schoolatt_lbl

label define pe07a_worked_lbl 1 `"Yes"'
label define pe07a_worked_lbl 2 `"No"', add
label define pe07a_worked_lbl 9 `"NIU (not in universe)"', add
label values pe07a_worked pe07a_worked_lbl

label define pe07a_reasonwk_lbl 1 `"Did not work, though you had a job"'
label define pe07a_reasonwk_lbl 2 `"Have your own business, though you did not work"', add
label define pe07a_reasonwk_lbl 3 `"Do some odd job for payment in cash or kind"', add
label define pe07a_reasonwk_lbl 4 `"Help out on the farm or in the store or business of a family member without receiving pay"', add
label define pe07a_reasonwk_lbl 5 `"Didn't work"', add
label define pe07a_reasonwk_lbl 9 `"NIU (not in universe)"', add
label values pe07a_reasonwk pe07a_reasonwk_lbl

label define pe07a_lastnowk_lbl 01 `"Looking for work and have worked before"'
label define pe07a_lastnowk_lbl 02 `"Looking for work for the first time"', add
label define pe07a_lastnowk_lbl 03 `"Studying and did not work"', add
label define pe07a_lastnowk_lbl 04 `"Living off a pension or retirement income and did not work"', add
label define pe07a_lastnowk_lbl 05 `"Living off investment income and did not work"', add
label define pe07a_lastnowk_lbl 06 `"Taking care of the house and did not work"', add
label define pe07a_lastnowk_lbl 07 `"Other"', add
label define pe07a_lastnowk_lbl 08 `"Due to age (elderly or underage)"', add
label define pe07a_lastnowk_lbl 09 `"Was traveling"', add
label define pe07a_lastnowk_lbl 10 `"Due to disability"', add
label define pe07a_lastnowk_lbl 11 `"Due to military service"', add
label define pe07a_lastnowk_lbl 99 `"NIU (not in universe)"', add
label values pe07a_lastnowk pe07a_lastnowk_lbl

label define pe07a_ind_lbl 0111 `"Growing of cereals and other crops n.e.c."'
label define pe07a_ind_lbl 0112 `"Growing of vegetables, horticultural specialties and nursery products"', add
label define pe07a_ind_lbl 0113 `"Growing of fruit, nuts, beverage and spice crops"', add
label define pe07a_ind_lbl 0121 `"Farming of cattle, sheep, goats, horses, asses, mules and hinnies; dairy farming"', add
label define pe07a_ind_lbl 0122 `"Other animal farming; production of animal products n.e.c."', add
label define pe07a_ind_lbl 0130 `"Growing of crops combined with farming of animals (mixed farming)"', add
label define pe07a_ind_lbl 0140 `"Agricultural and animal husbandry service activities, except veterinary activities"', add
label define pe07a_ind_lbl 0200 `"Forestry, logging and related service activities"', add
label define pe07a_ind_lbl 0500 `"Fishing, operation of fish hatcheries and fish farms; service activities incidental to fishing"', add
label define pe07a_ind_lbl 1010 `"Mining and agglomeration of hard coal"', add
label define pe07a_ind_lbl 1110 `"Extraction of crude petroleum and natural gas"', add
label define pe07a_ind_lbl 1120 `"Service activities incidental to oil and gas extraction excluding surveying"', add
label define pe07a_ind_lbl 1310 `"Mining of iron ores"', add
label define pe07a_ind_lbl 1320 `"Mining of non-ferrous metal ores, except uranium and thorium ores"', add
label define pe07a_ind_lbl 1410 `"Quarrying of stone, sand, and clay"', add
label define pe07a_ind_lbl 1422 `"Extraction of salt"', add
label define pe07a_ind_lbl 1429 `"Other mining and quarrying n.e.c."', add
label define pe07a_ind_lbl 1511 `"Production, processing, and preserving of meat and meat products"', add
label define pe07a_ind_lbl 1512 `"Processing and preserving of fish and fish products"', add
label define pe07a_ind_lbl 1513 `"Processing and preserving of fruit and vegetables"', add
label define pe07a_ind_lbl 1514 `"Manufacture of vegetable and animal oils and fats"', add
label define pe07a_ind_lbl 1520 `"Manufacture of dairy products"', add
label define pe07a_ind_lbl 1531 `"Manufacture of grain mill products"', add
label define pe07a_ind_lbl 1533 `"Manufacture of prepared animal feeds"', add
label define pe07a_ind_lbl 1541 `"Manufacture of bakery products"', add
label define pe07a_ind_lbl 1542 `"Manufacture of sugar"', add
label define pe07a_ind_lbl 1543 `"Manufacture of cocoa, chocolate, and sugar confectionery"', add
label define pe07a_ind_lbl 1544 `"Manufacture of macaroni, noodles, couscous, and similar farinaceous products"', add
label define pe07a_ind_lbl 1549 `"Manufacture of other food products n.e.c."', add
label define pe07a_ind_lbl 1551 `"Distilling, rectifying, and blending of spirits; ethyl alcohol production from fermented materials"', add
label define pe07a_ind_lbl 1552 `"Manufacture of wines"', add
label define pe07a_ind_lbl 1553 `"Manufacture of malt liquors and malt"', add
label define pe07a_ind_lbl 1554 `"Manufacture of soft drinks; production of mineral waters"', add
label define pe07a_ind_lbl 1600 `"Manufacture of tobacco products"', add
label define pe07a_ind_lbl 1711 `"Preparation and spinning of textile fibres; weaving of textiles"', add
label define pe07a_ind_lbl 1712 `"Finishing of textiles"', add
label define pe07a_ind_lbl 1721 `"Manufacture of made-up textile articles, except apparel"', add
label define pe07a_ind_lbl 1722 `"Manufacture of carpets and rugs"', add
label define pe07a_ind_lbl 1723 `"Manufacture of cordage, rope, twine, and netting"', add
label define pe07a_ind_lbl 1729 `"Manufacture of other textiles n.e.c."', add
label define pe07a_ind_lbl 1730 `"Manufacture of knitted and crocheted fabrics and articles"', add
label define pe07a_ind_lbl 1810 `"Manufacture of wearing apparel, except fur apparel"', add
label define pe07a_ind_lbl 1820 `"Dressing and dyeing of fur; manufacture of articles of fur"', add
label define pe07a_ind_lbl 1911 `"Tanning and dressing of leather"', add
label define pe07a_ind_lbl 1912 `"Manufacture of luggage, handbags and the like, saddlery, and harness"', add
label define pe07a_ind_lbl 1920 `"Manufacture of footwear"', add
label define pe07a_ind_lbl 2010 `"Sawmilling and planing of wood"', add
label define pe07a_ind_lbl 2021 `"Manufacture of veneer sheets; manufacture of plywood, laminboard, particle board, and other panels and boards"', add
label define pe07a_ind_lbl 2022 `"Manufacture of builders' carpentry and joinery"', add
label define pe07a_ind_lbl 2023 `"Manufacture of wooden containers"', add
label define pe07a_ind_lbl 2029 `"Manufacture of other products of wood; manufacture of articles of cork, straw, and plaiting materials"', add
label define pe07a_ind_lbl 2101 `"Manufacture of pulp, paper, and paperboard"', add
label define pe07a_ind_lbl 2102 `"Manufacture of corrugated paper and paperboard and of containers of paper and paperboard"', add
label define pe07a_ind_lbl 2109 `"Manufacture of other articles of paper and paperboard"', add
label define pe07a_ind_lbl 2211 `"Publishing of books, brochures, musical books, and other publications"', add
label define pe07a_ind_lbl 2212 `"Publishing of newspapers, journals, and periodicals"', add
label define pe07a_ind_lbl 2219 `"Other publishing"', add
label define pe07a_ind_lbl 2221 `"Printing"', add
label define pe07a_ind_lbl 2222 `"Service activities related to printing"', add
label define pe07a_ind_lbl 2320 `"Manufacture of refined petroleum products"', add
label define pe07a_ind_lbl 2411 `"Manufacture of basic chemicals, except fertilizers, and nitrogen compounds"', add
label define pe07a_ind_lbl 2413 `"Manufacture of plastics in primary forms and of synthetic rubber"', add
label define pe07a_ind_lbl 2421 `"Manufacture of pesticides and other agro-chemical products"', add
label define pe07a_ind_lbl 2422 `"Manufacture of paints, varnishes and similar coatings, printing ink and mastics"', add
label define pe07a_ind_lbl 2423 `"Manufacture of pharmaceuticals, medicinal chemicals, and botanical products"', add
label define pe07a_ind_lbl 2424 `"Manufacture of soap and detergents, cleaning and polishing preparations, perfumes and toilet preparations"', add
label define pe07a_ind_lbl 2429 `"Manufacture of other chemical products n.e.c."', add
label define pe07a_ind_lbl 2511 `"Manufacture of rubber tires and tubes; retreading and rebuilding of rubber tires"', add
label define pe07a_ind_lbl 2519 `"Manufacture of other rubber products"', add
label define pe07a_ind_lbl 2520 `"Manufacture of plastics products"', add
label define pe07a_ind_lbl 2610 `"Manufacture of glass and glass products"', add
label define pe07a_ind_lbl 2691 `"Manufacture of non-structural non-refractory ceramic ware"', add
label define pe07a_ind_lbl 2692 `"Manufacture of refractory ceramic products"', add
label define pe07a_ind_lbl 2693 `"Manufacture of structural non-refractory clay and ceramic products"', add
label define pe07a_ind_lbl 2694 `"Manufacture of cement, lime and plaster"', add
label define pe07a_ind_lbl 2695 `"Manufacture of articles of concrete, cement, and plaster"', add
label define pe07a_ind_lbl 2696 `"Cutting, shaping, and finishing of stone"', add
label define pe07a_ind_lbl 2710 `"Manufacture of basic iron and steel"', add
label define pe07a_ind_lbl 2720 `"Manufacture of basic precious and non-ferrous metals"', add
label define pe07a_ind_lbl 2731 `"Casting of iron and steel"', add
label define pe07a_ind_lbl 2732 `"Casting of non-ferrous metals"', add
label define pe07a_ind_lbl 2811 `"Manufacture of structural metal products"', add
label define pe07a_ind_lbl 2812 `"Manufacture of tanks, reservoirs, and containers of metal"', add
label define pe07a_ind_lbl 2892 `"Treatment and coating of metals; general mechanical engineering on a fee or contract basis"', add
label define pe07a_ind_lbl 2893 `"Manufacture of cutlery, hand tools, and general hardware"', add
label define pe07a_ind_lbl 2899 `"Manufacture of other fabricated metal products n.e.c."', add
label define pe07a_ind_lbl 2911 `"Manufacture of engines and turbines, except aircraft, vehicle, and cycle engines"', add
label define pe07a_ind_lbl 2912 `"Manufacture of pumps, compressors, taps ,and valves"', add
label define pe07a_ind_lbl 2919 `"Manufacture of other general purpose machinery"', add
label define pe07a_ind_lbl 2921 `"Manufacture of agricultural and forestry machinery"', add
label define pe07a_ind_lbl 2924 `"Manufacture of machinery for mining, quarrying, and construction"', add
label define pe07a_ind_lbl 2925 `"Manufacture of machinery for food, beverage, and tobacco processing"', add
label define pe07a_ind_lbl 2929 `"Manufacture of other special purpose machinery"', add
label define pe07a_ind_lbl 2930 `"Manufacture of domestic appliances n.e.c."', add
label define pe07a_ind_lbl 3110 `"Manufacture of electric motors, generators, and transformers"', add
label define pe07a_ind_lbl 3130 `"Manufacture of insulated wire and cable"', add
label define pe07a_ind_lbl 3140 `"Manufacture of accumulators, primary cells, and primary batteries"', add
label define pe07a_ind_lbl 3150 `"Manufacture of electric lamps and lighting equipment"', add
label define pe07a_ind_lbl 3190 `"Manufacture of other electrical equipment n.e.c."', add
label define pe07a_ind_lbl 3311 `"Manufacture of medical and surgical equipment and orthopedic appliances"', add
label define pe07a_ind_lbl 3320 `"Manufacture of optical instruments and photographic equipment"', add
label define pe07a_ind_lbl 3420 `"Manufacture of bodies (coachwork) for motor vehicles; manufacture of trailers and semi-trailers"', add
label define pe07a_ind_lbl 3430 `"Manufacture of parts and accessories for motor vehicles and their engines"', add
label define pe07a_ind_lbl 3511 `"Building and repairing of ships"', add
label define pe07a_ind_lbl 3512 `"Building and repairing of pleasure and sporting boats"', add
label define pe07a_ind_lbl 3530 `"Manufacture of aircraft and spacecraft"', add
label define pe07a_ind_lbl 3610 `"Manufacture of furniture"', add
label define pe07a_ind_lbl 3691 `"Manufacture of jewellery and related articles"', add
label define pe07a_ind_lbl 3692 `"Manufacture of musical instruments"', add
label define pe07a_ind_lbl 3694 `"Manufacture of games and toys"', add
label define pe07a_ind_lbl 3699 `"Other manufacturing n.e.c."', add
label define pe07a_ind_lbl 3700 `"Recycling"', add
label define pe07a_ind_lbl 4010 `"Production, collection, and distribution of electricity"', add
label define pe07a_ind_lbl 4020 `"Manufacture of gas; distribution of gaseous fuels through mains"', add
label define pe07a_ind_lbl 4100 `"Collection, purification, and distribution of water"', add
label define pe07a_ind_lbl 4510 `"Site preparation"', add
label define pe07a_ind_lbl 4520 `"Building of complete constructions or parts thereof; civil engineering"', add
label define pe07a_ind_lbl 4530 `"Building installation"', add
label define pe07a_ind_lbl 4540 `"Building completion"', add
label define pe07a_ind_lbl 4550 `"Renting of construction or demolition equipment with operator"', add
label define pe07a_ind_lbl 5010 `"Sale of motor vehicles"', add
label define pe07a_ind_lbl 5020 `"Maintenance and repair of motor vehicles"', add
label define pe07a_ind_lbl 5030 `"Sale of motor vehicle parts and accessories"', add
label define pe07a_ind_lbl 5040 `"Sale, maintenance and repair of motorcycles and related parts and accessories"', add
label define pe07a_ind_lbl 5050 `"Retail sale of automotive fuel"', add
label define pe07a_ind_lbl 5110 `"Wholesale on a fee or contract basis"', add
label define pe07a_ind_lbl 5121 `"Wholesale of agricultural raw materials and live animals"', add
label define pe07a_ind_lbl 5122 `"Wholesale of food, beverages, and tobacco"', add
label define pe07a_ind_lbl 5131 `"Wholesale of textiles, clothing,  and footwear"', add
label define pe07a_ind_lbl 5139 `"Wholesale of other household goods"', add
label define pe07a_ind_lbl 5141 `"Wholesale of solid, liquid, and gaseous fuels and related products"', add
label define pe07a_ind_lbl 5142 `"Wholesale of metals and metal ores"', add
label define pe07a_ind_lbl 5143 `"Wholesale of construction materials, hardware, plumbing, and heating equipment and supplies"', add
label define pe07a_ind_lbl 5149 `"Wholesale of other intermediate products, waste, and scrap"', add
label define pe07a_ind_lbl 5150 `"Wholesale of machinery, equipment, and supplies"', add
label define pe07a_ind_lbl 5190 `"Other wholesale"', add
label define pe07a_ind_lbl 5211 `"Retail sale in non-specialized stores with food, beverages, or tobacco predominating"', add
label define pe07a_ind_lbl 5219 `"Other retail sale in non-specialized stores"', add
label define pe07a_ind_lbl 5220 `"Retail sale of food, beverages, and tobacco in specialized stores"', add
label define pe07a_ind_lbl 5231 `"Retail sale of pharmaceutical and medical goods, cosmetic and toilet articles"', add
label define pe07a_ind_lbl 5232 `"Retail sale of textiles, clothing, footwear, and leather goods"', add
label define pe07a_ind_lbl 5233 `"Retail sale of household appliances, articles, and equipment"', add
label define pe07a_ind_lbl 5234 `"Retail sale of hardware, paint, and glass"', add
label define pe07a_ind_lbl 5239 `"Other retail sale in specialized stores"', add
label define pe07a_ind_lbl 5240 `"Retail sale of second-hand goods in stores"', add
label define pe07a_ind_lbl 5252 `"Retail sale via stalls and markets"', add
label define pe07a_ind_lbl 5259 `"Other non-store retail sale"', add
label define pe07a_ind_lbl 5260 `"Repair of personal and household goods"', add
label define pe07a_ind_lbl 5510 `"Hotels; camping sites and other provision of short-stay accommodation"', add
label define pe07a_ind_lbl 5520 `"Restaurants, bars, and canteens"', add
label define pe07a_ind_lbl 6010 `"Transport via railways"', add
label define pe07a_ind_lbl 6021 `"Other scheduled passenger land transport"', add
label define pe07a_ind_lbl 6022 `"Other non-scheduled passenger land transport"', add
label define pe07a_ind_lbl 6023 `"Freight transport by road"', add
label define pe07a_ind_lbl 6110 `"Sea and coastal water transport"', add
label define pe07a_ind_lbl 6120 `"Inland water transport"', add
label define pe07a_ind_lbl 6210 `"Scheduled air transport"', add
label define pe07a_ind_lbl 6301 `"Cargo handling"', add
label define pe07a_ind_lbl 6302 `"Storage and warehousing"', add
label define pe07a_ind_lbl 6303 `"Other supporting transport activities"', add
label define pe07a_ind_lbl 6304 `"Activities of travel agencies and tour operators; tourist assistance activities n.e.c."', add
label define pe07a_ind_lbl 6309 `"Activities of other transport agencies"', add
label define pe07a_ind_lbl 6411 `"National post activities"', add
label define pe07a_ind_lbl 6412 `"Courier activities other than national post activities"', add
label define pe07a_ind_lbl 6420 `"Telecommunications"', add
label define pe07a_ind_lbl 6511 `"Central banking"', add
label define pe07a_ind_lbl 6519 `"Other monetary intermediation"', add
label define pe07a_ind_lbl 6592 `"Other credit granting"', add
label define pe07a_ind_lbl 6599 `"Other financial intermediation n.e.c."', add
label define pe07a_ind_lbl 6601 `"Life insurance"', add
label define pe07a_ind_lbl 6602 `"Pension funding"', add
label define pe07a_ind_lbl 6603 `"Non-life insurance"', add
label define pe07a_ind_lbl 6711 `"Administration of financial markets"', add
label define pe07a_ind_lbl 6719 `"Activities auxiliary to financial intermediation n.e.c."', add
label define pe07a_ind_lbl 6720 `"Activities auxiliary to insurance and pension funding"', add
label define pe07a_ind_lbl 7010 `"Real estate activities with own or leased property"', add
label define pe07a_ind_lbl 7020 `"Real estate activities on a fee or contract basis"', add
label define pe07a_ind_lbl 7111 `"Renting of land transport equipment"', add
label define pe07a_ind_lbl 7121 `"Renting of agricultural machinery and equipment"', add
label define pe07a_ind_lbl 7122 `"Renting of construction and civil engineering machinery and equipment"', add
label define pe07a_ind_lbl 7129 `"Renting of other machinery and equipment n.e.c."', add
label define pe07a_ind_lbl 7130 `"Renting of personal and household goods n.e.c."', add
label define pe07a_ind_lbl 7210 `"Hardware consultancy"', add
label define pe07a_ind_lbl 7220 `"Software consultancy and supply"', add
label define pe07a_ind_lbl 7230 `"Data processing"', add
label define pe07a_ind_lbl 7240 `"Data base activities"', add
label define pe07a_ind_lbl 7250 `"Maintenance and repair of office, accounting, and computing machinery"', add
label define pe07a_ind_lbl 7290 `"Other computer related activities"', add
label define pe07a_ind_lbl 7310 `"Research and experimental development on natural sciences and engineering (NSE)"', add
label define pe07a_ind_lbl 7320 `"Research and experimental development on social sciences and humanities (SSH)"', add
label define pe07a_ind_lbl 7411 `"Legal activities"', add
label define pe07a_ind_lbl 7412 `"Accounting, book-keeping, and auditing activities; tax consultancy"', add
label define pe07a_ind_lbl 7413 `"Market research and public opinion polling"', add
label define pe07a_ind_lbl 7414 `"Business and management consultancy activities"', add
label define pe07a_ind_lbl 7421 `"Architectural and engineering activities and related technical consultancy"', add
label define pe07a_ind_lbl 7422 `"Technical testing and analysis"', add
label define pe07a_ind_lbl 7430 `"Advertising"', add
label define pe07a_ind_lbl 7491 `"Labour recruitment and provision of personnel"', add
label define pe07a_ind_lbl 7492 `"Investigation and security activities"', add
label define pe07a_ind_lbl 7493 `"Building-cleaning activities"', add
label define pe07a_ind_lbl 7494 `"Photographic activities"', add
label define pe07a_ind_lbl 7495 `"Packaging activities"', add
label define pe07a_ind_lbl 7499 `"Other business activities n.e.c."', add
label define pe07a_ind_lbl 7511 `"General (Over-all) public service activities"', add
label define pe07a_ind_lbl 7512 `"Regulation of the activities of agencies that provide health care, education, cultural services, and other social services, excluding social security"', add
label define pe07a_ind_lbl 7513 `"Regulation of and contribution to more efficient operation of business"', add
label define pe07a_ind_lbl 7514 `"Ancillary service activities for the government as a whole"', add
label define pe07a_ind_lbl 7521 `"Foreign affairs"', add
label define pe07a_ind_lbl 7522 `"Defence activities"', add
label define pe07a_ind_lbl 7523 `"Public order and safety activities"', add
label define pe07a_ind_lbl 7530 `"Compulsory social security activities"', add
label define pe07a_ind_lbl 8010 `"Primary education"', add
label define pe07a_ind_lbl 8021 `"General secondary education"', add
label define pe07a_ind_lbl 8022 `"Technical and vocational secondary education"', add
label define pe07a_ind_lbl 8030 `"Higher education"', add
label define pe07a_ind_lbl 8090 `"Adult and other education"', add
label define pe07a_ind_lbl 8511 `"Hospital activities"', add
label define pe07a_ind_lbl 8512 `"Medical and dental practice activities"', add
label define pe07a_ind_lbl 8519 `"Other human health activities"', add
label define pe07a_ind_lbl 8520 `"Veterinary activities"', add
label define pe07a_ind_lbl 8531 `"Social work with accommodation"', add
label define pe07a_ind_lbl 8532 `"Social work without accommodation"', add
label define pe07a_ind_lbl 9000 `"Sewage and refuse disposal, sanitation, and similar activities"', add
label define pe07a_ind_lbl 9111 `"Activities of business and employers organizations"', add
label define pe07a_ind_lbl 9112 `"Activities of professional organizations"', add
label define pe07a_ind_lbl 9191 `"Activities of religious organizations"', add
label define pe07a_ind_lbl 9199 `"Activities of other membership organizations n.e.c."', add
label define pe07a_ind_lbl 9211 `"Motion picture and video production and distribution"', add
label define pe07a_ind_lbl 9212 `"Motion picture projection"', add
label define pe07a_ind_lbl 9213 `"Radio and television activities"', add
label define pe07a_ind_lbl 9214 `"Dramatic arts, music, and other arts activities"', add
label define pe07a_ind_lbl 9219 `"Other entertainment activities n.e.c."', add
label define pe07a_ind_lbl 9231 `"Library and archives activities"', add
label define pe07a_ind_lbl 9232 `"Museums activities and preservation of historical sites and buildings"', add
label define pe07a_ind_lbl 9233 `"Botanical and zoological gardens and nature reserves activities"', add
label define pe07a_ind_lbl 9241 `"Sporting activities"', add
label define pe07a_ind_lbl 9249 `"Other recreational activities"', add
label define pe07a_ind_lbl 9301 `"Washing, and (dry-) cleaning of textile and fur products"', add
label define pe07a_ind_lbl 9302 `"Hairdressing and other beauty treatment"', add
label define pe07a_ind_lbl 9303 `"Funeral and related activities"', add
label define pe07a_ind_lbl 9309 `"Other service activities n.e.c."', add
label define pe07a_ind_lbl 9500 `"Private households with employed persons"', add
label define pe07a_ind_lbl 9900 `"Extra-territorial organizations and bodies"', add
label define pe07a_ind_lbl 9998 `"Other activities not elsewhere classified"', add
label define pe07a_ind_lbl 9999 `"NIU (not in universe)"', add
label values pe07a_ind pe07a_ind_lbl

label define pe07a_ind2_lbl 01 `"Agriculture, hunting, and related service activities"'
label define pe07a_ind2_lbl 02 `"Forestry, logging, and related service activities"', add
label define pe07a_ind2_lbl 05 `"Fishing, operation of fish hatcheries and fish farms; service activities incidental to fishing"', add
label define pe07a_ind2_lbl 10 `"Mining of coal and lignite; extraction of peat"', add
label define pe07a_ind2_lbl 11 `"Extraction of crude petroleum and natural gas; service activities incidental to oil and gas extraction, excluding surveying"', add
label define pe07a_ind2_lbl 12 `"Mining of uranium and thorium ores"', add
label define pe07a_ind2_lbl 13 `"Mining of metal ores"', add
label define pe07a_ind2_lbl 14 `"Other mining and quarrying"', add
label define pe07a_ind2_lbl 15 `"Manufacture of food products and beverages"', add
label define pe07a_ind2_lbl 16 `"Manufacture of tobacco product"', add
label define pe07a_ind2_lbl 17 `"Manufacture of textiles"', add
label define pe07a_ind2_lbl 18 `"Manufacture of wearing apparel; dressing and dyeing of fur"', add
label define pe07a_ind2_lbl 19 `"Tanning and dressing of leather; manufacture of luggage, handbags, saddlery, harness, and footwear"', add
label define pe07a_ind2_lbl 20 `"Manufacture of wood and of products of wood and cork, except furniture; manufacture of articles of straw and plaiting materials"', add
label define pe07a_ind2_lbl 21 `"Manufacture of paper and paper products"', add
label define pe07a_ind2_lbl 22 `"Publishing, printing, and reproduction of recorded media"', add
label define pe07a_ind2_lbl 23 `"Manufacture of coke, refined petroleum products, and nuclear fuel"', add
label define pe07a_ind2_lbl 24 `"Manufacture of chemicals and chemical products"', add
label define pe07a_ind2_lbl 25 `"Manufacture of rubber and plastic products"', add
label define pe07a_ind2_lbl 26 `"Manufacture of other non-metallic mineral products"', add
label define pe07a_ind2_lbl 27 `"Manufacture of basic metals"', add
label define pe07a_ind2_lbl 28 `"Manufacture of fabricated metal products, except machinery and equipment"', add
label define pe07a_ind2_lbl 29 `"Manufacture of machinery and equipment NEC (not elsewhere classified)"', add
label define pe07a_ind2_lbl 31 `"Manufacture of electrical machinery and apparatus NEC"', add
label define pe07a_ind2_lbl 32 `"Manufacture of radio, television, and communication equipment and apparatus"', add
label define pe07a_ind2_lbl 33 `"Manufacture of medical, precision and optical instruments, watches and clocks"', add
label define pe07a_ind2_lbl 34 `"Manufacture of motor vehicles, trailers and semi-trailers"', add
label define pe07a_ind2_lbl 35 `"Manufacture of other transport equipment"', add
label define pe07a_ind2_lbl 36 `"Manufacturing NEC"', add
label define pe07a_ind2_lbl 37 `"Recycling"', add
label define pe07a_ind2_lbl 40 `"Electricity, gas, steam, and hot-water supply"', add
label define pe07a_ind2_lbl 41 `"Collection, purification, and distribution of water"', add
label define pe07a_ind2_lbl 45 `"Construction"', add
label define pe07a_ind2_lbl 50 `"Sale, maintenance and repair of motor vehicles and motorcycles; retail sale of automotive fuel"', add
label define pe07a_ind2_lbl 51 `"Wholesale trade and commission trade, except of motor vehicles and motorcycles"', add
label define pe07a_ind2_lbl 52 `"Retail trade, except of motor vehicles and motorcycles; repair of personal and household goods"', add
label define pe07a_ind2_lbl 55 `"Hotels and restaurants"', add
label define pe07a_ind2_lbl 60 `"Land transport; transport via pipelines"', add
label define pe07a_ind2_lbl 61 `"Water transport"', add
label define pe07a_ind2_lbl 62 `"Air transport"', add
label define pe07a_ind2_lbl 63 `"Supporting and auxiliary transport activities; activities of travel agencies"', add
label define pe07a_ind2_lbl 64 `"Post and telecommunications"', add
label define pe07a_ind2_lbl 65 `"Financial intermediation, except insurance and pension funding"', add
label define pe07a_ind2_lbl 66 `"Insurance and pension funding, except compulsory social security"', add
label define pe07a_ind2_lbl 67 `"Activities auxiliary to financial intermediation"', add
label define pe07a_ind2_lbl 70 `"Real estate activities"', add
label define pe07a_ind2_lbl 71 `"Renting of machinery and equipment without operator and of personal and household goods"', add
label define pe07a_ind2_lbl 72 `"Computer and related activities"', add
label define pe07a_ind2_lbl 73 `"Research and development"', add
label define pe07a_ind2_lbl 74 `"Other business activities"', add
label define pe07a_ind2_lbl 75 `"Public administration and defence; compulsory social security"', add
label define pe07a_ind2_lbl 80 `"Education"', add
label define pe07a_ind2_lbl 85 `"Health and social work"', add
label define pe07a_ind2_lbl 90 `"Sewage and refuse disposal, sanitation, and similar activities"', add
label define pe07a_ind2_lbl 91 `"Activities and membership organizations NEC"', add
label define pe07a_ind2_lbl 92 `"Recreational, cultural, and sporting activities"', add
label define pe07a_ind2_lbl 93 `"Other service activities"', add
label define pe07a_ind2_lbl 95 `"Private households with employed persons"', add
label define pe07a_ind2_lbl 97 `"Extra-territorial organizations and bodies"', add
label define pe07a_ind2_lbl 98 `"Other activities not elsewhere classified"', add
label define pe07a_ind2_lbl 99 `"NIU (not in universe)"', add
label values pe07a_ind2 pe07a_ind2_lbl

label define pe07a_classwkr_lbl 1 `"White-collar or professional employee"'
label define pe07a_classwkr_lbl 2 `"Laborer"', add
label define pe07a_classwkr_lbl 3 `"Self-employed worker"', add
label define pe07a_classwkr_lbl 4 `"Employer"', add
label define pe07a_classwkr_lbl 5 `"Unpaid family worker"', add
label define pe07a_classwkr_lbl 6 `"Domestic employee"', add
label define pe07a_classwkr_lbl 9 `"NIU (not in universe)"', add
label values pe07a_classwkr pe07a_classwkr_lbl

label define pe07a_empsize_lbl 1 `"From 01-05 persons"'
label define pe07a_empsize_lbl 2 `"From 06-10 person"', add
label define pe07a_empsize_lbl 3 `"From 11-50 persons"', add
label define pe07a_empsize_lbl 4 `"51 or More persons"', add
label define pe07a_empsize_lbl 9 `"NIU (not in universe)"', add
label values pe07a_empsize pe07a_empsize_lbl

label define pe07a_religion_lbl 1 `"Catholic"'
label define pe07a_religion_lbl 2 `"Christian or evangelical"', add
label define pe07a_religion_lbl 3 `"Other"', add
label define pe07a_religion_lbl 4 `"None"', add
label define pe07a_religion_lbl 9 `"NIU (not in universe)"', add
label values pe07a_religion pe07a_religion_lbl

label define pe07a_marst_lbl 1 `"Cohabiting"'
label define pe07a_marst_lbl 2 `"Separated"', add
label define pe07a_marst_lbl 3 `"Married"', add
label define pe07a_marst_lbl 4 `"Widowed"', add
label define pe07a_marst_lbl 5 `"Divorced"', add
label define pe07a_marst_lbl 6 `"Single"', add
label define pe07a_marst_lbl 9 `"NIU (not in universe)"', add
label values pe07a_marst pe07a_marst_lbl

label define pe07a_chborn_lbl 00 `"None"'
label define pe07a_chborn_lbl 01 `"1"', add
label define pe07a_chborn_lbl 02 `"2"', add
label define pe07a_chborn_lbl 03 `"3"', add
label define pe07a_chborn_lbl 04 `"4"', add
label define pe07a_chborn_lbl 05 `"5"', add
label define pe07a_chborn_lbl 06 `"6"', add
label define pe07a_chborn_lbl 07 `"7"', add
label define pe07a_chborn_lbl 08 `"8"', add
label define pe07a_chborn_lbl 09 `"9"', add
label define pe07a_chborn_lbl 10 `"10"', add
label define pe07a_chborn_lbl 11 `"11"', add
label define pe07a_chborn_lbl 12 `"12"', add
label define pe07a_chborn_lbl 13 `"13"', add
label define pe07a_chborn_lbl 14 `"14"', add
label define pe07a_chborn_lbl 15 `"15"', add
label define pe07a_chborn_lbl 16 `"16"', add
label define pe07a_chborn_lbl 17 `"17"', add
label define pe07a_chborn_lbl 18 `"18"', add
label define pe07a_chborn_lbl 98 `"Unknown"', add
label define pe07a_chborn_lbl 99 `"NIU (not in universe)"', add
label values pe07a_chborn pe07a_chborn_lbl

label define pe07a_chsurv_lbl 00 `"None"'
label define pe07a_chsurv_lbl 01 `"1"', add
label define pe07a_chsurv_lbl 02 `"2"', add
label define pe07a_chsurv_lbl 03 `"3"', add
label define pe07a_chsurv_lbl 04 `"4"', add
label define pe07a_chsurv_lbl 05 `"5"', add
label define pe07a_chsurv_lbl 06 `"6"', add
label define pe07a_chsurv_lbl 07 `"7"', add
label define pe07a_chsurv_lbl 08 `"8"', add
label define pe07a_chsurv_lbl 09 `"9"', add
label define pe07a_chsurv_lbl 10 `"10"', add
label define pe07a_chsurv_lbl 11 `"11"', add
label define pe07a_chsurv_lbl 12 `"12"', add
label define pe07a_chsurv_lbl 13 `"13"', add
label define pe07a_chsurv_lbl 14 `"14"', add
label define pe07a_chsurv_lbl 15 `"15+"', add
label define pe07a_chsurv_lbl 98 `"Unknown"', add
label define pe07a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values pe07a_chsurv pe07a_chsurv_lbl

label define pe07a_lstbthmo_lbl 01 `"January"'
label define pe07a_lstbthmo_lbl 02 `"February"', add
label define pe07a_lstbthmo_lbl 03 `"March"', add
label define pe07a_lstbthmo_lbl 04 `"April"', add
label define pe07a_lstbthmo_lbl 05 `"May"', add
label define pe07a_lstbthmo_lbl 06 `"June"', add
label define pe07a_lstbthmo_lbl 07 `"July"', add
label define pe07a_lstbthmo_lbl 08 `"August"', add
label define pe07a_lstbthmo_lbl 09 `"September"', add
label define pe07a_lstbthmo_lbl 10 `"October"', add
label define pe07a_lstbthmo_lbl 11 `"November"', add
label define pe07a_lstbthmo_lbl 12 `"December"', add
label define pe07a_lstbthmo_lbl 98 `"Unknown"', add
label define pe07a_lstbthmo_lbl 99 `"NIU (not in universe)"', add
label values pe07a_lstbthmo pe07a_lstbthmo_lbl

label define pe07a_lstbthyr_lbl 1940 `"1940 or earlier"'
label define pe07a_lstbthyr_lbl 1941 `"1941"', add
label define pe07a_lstbthyr_lbl 1942 `"1942"', add
label define pe07a_lstbthyr_lbl 1943 `"1943"', add
label define pe07a_lstbthyr_lbl 1944 `"1944"', add
label define pe07a_lstbthyr_lbl 1945 `"1945"', add
label define pe07a_lstbthyr_lbl 1946 `"1946"', add
label define pe07a_lstbthyr_lbl 1947 `"1947"', add
label define pe07a_lstbthyr_lbl 1948 `"1948"', add
label define pe07a_lstbthyr_lbl 1949 `"1949"', add
label define pe07a_lstbthyr_lbl 1950 `"1950"', add
label define pe07a_lstbthyr_lbl 1951 `"1951"', add
label define pe07a_lstbthyr_lbl 1952 `"1952"', add
label define pe07a_lstbthyr_lbl 1953 `"1953"', add
label define pe07a_lstbthyr_lbl 1954 `"1954"', add
label define pe07a_lstbthyr_lbl 1955 `"1955"', add
label define pe07a_lstbthyr_lbl 1956 `"1956"', add
label define pe07a_lstbthyr_lbl 1957 `"1957"', add
label define pe07a_lstbthyr_lbl 1958 `"1958"', add
label define pe07a_lstbthyr_lbl 1959 `"1959"', add
label define pe07a_lstbthyr_lbl 1960 `"1960"', add
label define pe07a_lstbthyr_lbl 1961 `"1961"', add
label define pe07a_lstbthyr_lbl 1962 `"1962"', add
label define pe07a_lstbthyr_lbl 1963 `"1963"', add
label define pe07a_lstbthyr_lbl 1964 `"1964"', add
label define pe07a_lstbthyr_lbl 1965 `"1965"', add
label define pe07a_lstbthyr_lbl 1966 `"1966"', add
label define pe07a_lstbthyr_lbl 1967 `"1967"', add
label define pe07a_lstbthyr_lbl 1968 `"1968"', add
label define pe07a_lstbthyr_lbl 1969 `"1969"', add
label define pe07a_lstbthyr_lbl 1970 `"1970"', add
label define pe07a_lstbthyr_lbl 1971 `"1971"', add
label define pe07a_lstbthyr_lbl 1972 `"1972"', add
label define pe07a_lstbthyr_lbl 1973 `"1973"', add
label define pe07a_lstbthyr_lbl 1974 `"1974"', add
label define pe07a_lstbthyr_lbl 1975 `"1975"', add
label define pe07a_lstbthyr_lbl 1976 `"1976"', add
label define pe07a_lstbthyr_lbl 1977 `"1977"', add
label define pe07a_lstbthyr_lbl 1978 `"1978"', add
label define pe07a_lstbthyr_lbl 1979 `"1979"', add
label define pe07a_lstbthyr_lbl 1980 `"1980"', add
label define pe07a_lstbthyr_lbl 1981 `"1981"', add
label define pe07a_lstbthyr_lbl 1982 `"1982"', add
label define pe07a_lstbthyr_lbl 1983 `"1983"', add
label define pe07a_lstbthyr_lbl 1984 `"1984"', add
label define pe07a_lstbthyr_lbl 1985 `"1985"', add
label define pe07a_lstbthyr_lbl 1986 `"1986"', add
label define pe07a_lstbthyr_lbl 1987 `"1987"', add
label define pe07a_lstbthyr_lbl 1988 `"1988"', add
label define pe07a_lstbthyr_lbl 1989 `"1989"', add
label define pe07a_lstbthyr_lbl 1990 `"1990"', add
label define pe07a_lstbthyr_lbl 1991 `"1991"', add
label define pe07a_lstbthyr_lbl 1992 `"1992"', add
label define pe07a_lstbthyr_lbl 1993 `"1993"', add
label define pe07a_lstbthyr_lbl 1994 `"1994"', add
label define pe07a_lstbthyr_lbl 1995 `"1995"', add
label define pe07a_lstbthyr_lbl 1996 `"1996"', add
label define pe07a_lstbthyr_lbl 1997 `"1997"', add
label define pe07a_lstbthyr_lbl 1998 `"1998"', add
label define pe07a_lstbthyr_lbl 1999 `"1999"', add
label define pe07a_lstbthyr_lbl 2000 `"2000"', add
label define pe07a_lstbthyr_lbl 2001 `"2001"', add
label define pe07a_lstbthyr_lbl 2002 `"2002"', add
label define pe07a_lstbthyr_lbl 2003 `"2003"', add
label define pe07a_lstbthyr_lbl 2004 `"2004"', add
label define pe07a_lstbthyr_lbl 2005 `"2005"', add
label define pe07a_lstbthyr_lbl 2006 `"2006"', add
label define pe07a_lstbthyr_lbl 2007 `"2007"', add
label define pe07a_lstbthyr_lbl 9998 `"Unknown"', add
label define pe07a_lstbthyr_lbl 9999 `"NIU (not in universe)"', add
label values pe07a_lstbthyr pe07a_lstbthyr_lbl

label define pe07a_agebirth_lbl 10 `"10"'
label define pe07a_agebirth_lbl 11 `"11"', add
label define pe07a_agebirth_lbl 12 `"12"', add
label define pe07a_agebirth_lbl 13 `"13"', add
label define pe07a_agebirth_lbl 14 `"14"', add
label define pe07a_agebirth_lbl 15 `"15"', add
label define pe07a_agebirth_lbl 16 `"16"', add
label define pe07a_agebirth_lbl 17 `"17"', add
label define pe07a_agebirth_lbl 18 `"18"', add
label define pe07a_agebirth_lbl 19 `"19"', add
label define pe07a_agebirth_lbl 20 `"20"', add
label define pe07a_agebirth_lbl 21 `"21"', add
label define pe07a_agebirth_lbl 22 `"22"', add
label define pe07a_agebirth_lbl 23 `"23"', add
label define pe07a_agebirth_lbl 24 `"24"', add
label define pe07a_agebirth_lbl 25 `"25"', add
label define pe07a_agebirth_lbl 26 `"26"', add
label define pe07a_agebirth_lbl 27 `"27"', add
label define pe07a_agebirth_lbl 28 `"28"', add
label define pe07a_agebirth_lbl 29 `"29"', add
label define pe07a_agebirth_lbl 30 `"30"', add
label define pe07a_agebirth_lbl 31 `"31"', add
label define pe07a_agebirth_lbl 32 `"32"', add
label define pe07a_agebirth_lbl 33 `"33"', add
label define pe07a_agebirth_lbl 34 `"34"', add
label define pe07a_agebirth_lbl 35 `"35"', add
label define pe07a_agebirth_lbl 36 `"36"', add
label define pe07a_agebirth_lbl 37 `"37"', add
label define pe07a_agebirth_lbl 38 `"38"', add
label define pe07a_agebirth_lbl 39 `"39"', add
label define pe07a_agebirth_lbl 40 `"40"', add
label define pe07a_agebirth_lbl 41 `"41"', add
label define pe07a_agebirth_lbl 42 `"42"', add
label define pe07a_agebirth_lbl 43 `"43"', add
label define pe07a_agebirth_lbl 44 `"44"', add
label define pe07a_agebirth_lbl 45 `"45"', add
label define pe07a_agebirth_lbl 46 `"46"', add
label define pe07a_agebirth_lbl 47 `"47"', add
label define pe07a_agebirth_lbl 48 `"48"', add
label define pe07a_agebirth_lbl 49 `"49"', add
label define pe07a_agebirth_lbl 98 `"Unknown"', add
label define pe07a_agebirth_lbl 99 `"NIU (not in universe)"', add
label values pe07a_agebirth pe07a_agebirth_lbl

label define pe07a_idcard_lbl 1 `"Yes, has"'
label define pe07a_idcard_lbl 2 `"No, does not have"', add
label define pe07a_idcard_lbl 9 `"NIU (not in universe)"', add
label values pe07a_idcard pe07a_idcard_lbl


