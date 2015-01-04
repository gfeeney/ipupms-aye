* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  long    lc91a_dwnum      22-26    ///
  byte    lc91a_pern       27-28    ///
  byte    lc91a_fbig       29-29    ///
  byte    lc91a_urban      30-30    ///
  byte    lc91a_dwtype     31-31    ///
  byte    lc91a_occup      32-32    ///
  byte    lc91a_owner      33-33    ///
  byte    lc91a_rooms      34-34    ///
  byte    lc91a_bedroom    35-35    ///
  byte    lc91a_kitch      36-36    ///
  byte    lc91a_toilet     37-37    ///
  byte    lc91a_toiletsh   38-38    ///
  byte    lc91a_kitchsh    39-39    ///
  byte    lc91a_roof       40-40    ///
  byte    lc91a_wall       41-41    ///
  byte    lc91a_watsup     42-42    ///
  byte    lc91a_builtyr    43-43    ///
  byte    lc91a_fuelck     44-44    ///
  byte    lc91a_light      45-45    ///
  byte    lc91a_phone      46-46    ///
  byte    lc91a_radios     47-47    ///
  byte    lc91a_tvs        48-48    ///
  byte    lc91a_videos     49-49    ///
  byte    lc91a_emign      50-50    ///
  int     pernum           51-53    ///
  float   wtper            54-61    ///
  byte    lc91a_pernum     62-63    ///
  byte    lc91a_age        64-65    ///
  byte    lc91a_where      66-66    ///
  byte    lc91a_marst      67-67    ///
  byte    lc91a_relate     68-68    ///
  byte    lc91a_sex        69-69    ///
  byte    lc91a_agechf     70-71    ///
  byte    lc91a_agemar     72-73    ///
  byte    lc91a_agechl     74-75    ///
  byte    lc91a_comlaw     76-76    ///
  byte    lc91a_legpar     77-77    ///
  byte    lc91a_partner    78-78    ///
  byte    lc91a_ethnic     79-80    ///
  byte    lc91a_relig      81-82    ///
  byte    lc91a_disab      83-83    ///
  byte    lc91a_bplc       84-84    ///
  byte    lc91a_bpl        85-86    ///
  byte    lc91a_ctry1      87-88    ///
  byte    lc91a_bplctry    89-90    ///
  byte    lc91a_resus      91-91    ///
  byte    lc91a_resprev    92-93    ///
  byte    lc91a_migyr      94-95    ///
  byte    lc91a_immigyr    96-97    ///
  byte    lc91a_schoolm    98-98    ///
  byte    lc91a_school     99-99    ///
  byte    lc91a_degree     100-101  ///
  byte    lc91a_edlev      102-102  ///
  byte    lc91a_schty      103-104  ///
  byte    lc91a_edgrade    105-105  ///
  byte    lc91a_empstat    106-107  ///
  byte    lc91a_empstatyr  108-109  ///
  byte    lc91a_classwk    110-110  ///
  byte    lc91a_worked     111-111  ///
  int     lc91a_workhr     112-114  ///
  int     lc91a_ind3       115-117  ///
  byte    lc91a_busmove    118-118  ///
  byte    lc91a_workmo     119-120  ///
  int     lc91a_occ        121-123  ///
  byte    lc91a_incothf    124-124  ///
  byte    lc91a_trainoth   125-125  ///
  byte    lc91a_payper     126-126  ///
  byte    lc91a_trainm     127-127  ///
  byte    lc91a_tourism    128-128  ///
  byte    lc91a_work       129-129  ///
  byte    lc91a_workyr     130-130  ///
  byte    lc91a_transwk    131-131  ///
  byte    lc91a_fertfilt   132-132  ///
  byte    lc91a_chborn     133-134  ///
  byte    lc91a_blastyr    135-135  ///
  byte    lc91a_dis1       136-136  ///
  byte    lc91a_dis2       137-137  ///
  byte    lc91a_dis3       138-138  ///
  byte    lc91a_dis4       139-139  ///
  byte    lc91a_dis5       140-140  ///
  byte    lc91a_dis6       141-141  ///
  byte    lc91a_dis7       142-142  ///
  byte    lc91a_dis8       143-143  ///
  byte    lc91a_dis9       144-144  ///
  byte    lc91a_lim1       145-145  ///
  byte    lc91a_lim2       146-146  ///
  byte    lc91a_lim3       147-147  ///
  byte    lc91a_lim4       148-148  ///
  byte    lc91a_lim5       149-149  ///
  byte    lc91a_lim6       150-150  ///
  using `"ipumsi_00106.dat"'

replace wtper           = wtper           / 100

format serial          %10.0f
format wtper           %8.2f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var lc91a_dwnum     `"Dwelling number"'
label var lc91a_pern      `"Number of persons in household"'
label var lc91a_fbig      `"Dwelling created by splitting apart a large dwelling or household"'
label var lc91a_urban     `"Urban"'
label var lc91a_dwtype    `"Type of dwelling"'
label var lc91a_occup     `"Land occupation"'
label var lc91a_owner     `"Type of ownership for dwelling"'
label var lc91a_rooms     `"Number of rooms"'
label var lc91a_bedroom   `"Number of bedrooms"'
label var lc91a_kitch     `"Kitchen"'
label var lc91a_toilet    `"Toilet facilities"'
label var lc91a_toiletsh  `"Shared toilet facilities"'
label var lc91a_kitchsh   `"Shared kitchen"'
label var lc91a_roof      `"Type of roof"'
label var lc91a_wall      `"Wall material"'
label var lc91a_watsup    `"Water supply"'
label var lc91a_builtyr   `"Year of building"'
label var lc91a_fuelck    `"Type of cooking fuel"'
label var lc91a_light     `"Type of lighting"'
label var lc91a_phone     `"Telephone"'
label var lc91a_radios    `"Number of radios"'
label var lc91a_tvs       `"Number of television sets"'
label var lc91a_videos    `"Number of video recorders"'
label var lc91a_emign     `"Number of emigrants in household"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var lc91a_pernum    `"Person number (within household)"'
label var lc91a_age       `"Age"'
label var lc91a_where     `"Residence on census night"'
label var lc91a_marst     `"Marital status"'
label var lc91a_relate    `"Relationship"'
label var lc91a_sex       `"Sex"'
label var lc91a_agechf    `"Age at first child"'
label var lc91a_agemar    `"Age at first union"'
label var lc91a_agechl    `"Age at last child"'
label var lc91a_comlaw    `"Ever lived in common law"'
label var lc91a_legpar    `"Living now with legal partner"'
label var lc91a_partner   `"Living with a partner now"'
label var lc91a_ethnic    `"Ethnic origin"'
label var lc91a_relig     `"Religion"'
label var lc91a_disab     `"Any disability"'
label var lc91a_bplc      `"Country of birth"'
label var lc91a_bpl       `"District of birth"'
label var lc91a_ctry1     `"Country last lived"'
label var lc91a_bplctry   `"Country of birth"'
label var lc91a_resus     `"Usual residence address"'
label var lc91a_resprev   `"District of previous residence"'
label var lc91a_migyr     `"Year moved to this town or district"'
label var lc91a_immigyr   `"Year of immigration"'
label var lc91a_schoolm   `"School attending mode"'
label var lc91a_school    `"Attend school"'
label var lc91a_degree    `"Certificate"'
label var lc91a_edlev     `"Education level"'
label var lc91a_schty     `"Type of school"'
label var lc91a_edgrade   `"Standard of education"'
label var lc91a_empstat   `"Activity last week"'
label var lc91a_empstatyr `"Activity last year"'
label var lc91a_classwk   `"Employment type"'
label var lc91a_worked    `"Ever worked"'
label var lc91a_workhr    `"Number of hours worked last week"'
label var lc91a_ind3      `"Industry, 2 digit"'
label var lc91a_busmove   `"Moving business"'
label var lc91a_workmo    `"Number of months worked last year"'
label var lc91a_occ       `"Occupation"'
label var lc91a_incothf   `"Any other income"'
label var lc91a_trainoth  `"Any other training"'
label var lc91a_payper    `"Pay period"'
label var lc91a_trainm    `"Mode of training"'
label var lc91a_tourism   `"Tourism activity"'
label var lc91a_work      `"Activity last week"'
label var lc91a_workyr    `"Any work last year"'
label var lc91a_transwk   `"Transport to work"'
label var lc91a_fertfilt  `"Fertility filter"'
label var lc91a_chborn    `"Number of live births"'
label var lc91a_blastyr   `"Birth last year"'
label var lc91a_dis1      `"Disability: sight"'
label var lc91a_dis2      `"Disability: hearing"'
label var lc91a_dis3      `"Disability: speech"'
label var lc91a_dis4      `"Disability: upper limb (arm)"'
label var lc91a_dis5      `"Disability: lower limb (legs)"'
label var lc91a_dis6      `"Disability: neck and spine"'
label var lc91a_dis7      `"Disability: slowness at learning"'
label var lc91a_dis8      `"Disability: mental retardation"'
label var lc91a_dis9      `"Disability: other"'
label var lc91a_lim1      `"Limitation: self-care"'
label var lc91a_lim2      `"Limitation: mobility"'
label var lc91a_lim3      `"Limitation: communication"'
label var lc91a_lim4      `"Limitation: schooling"'
label var lc91a_lim5      `"Limitation: employment"'
label var lc91a_lim6      `"Limitation: other"'

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

label define lc91a_pern_lbl 01 `"1"'
label define lc91a_pern_lbl 02 `"2"', add
label define lc91a_pern_lbl 03 `"3"', add
label define lc91a_pern_lbl 04 `"4"', add
label define lc91a_pern_lbl 05 `"5"', add
label define lc91a_pern_lbl 06 `"6"', add
label define lc91a_pern_lbl 07 `"7"', add
label define lc91a_pern_lbl 08 `"8"', add
label define lc91a_pern_lbl 09 `"9"', add
label define lc91a_pern_lbl 10 `"10"', add
label define lc91a_pern_lbl 11 `"11"', add
label define lc91a_pern_lbl 12 `"12"', add
label define lc91a_pern_lbl 13 `"13"', add
label define lc91a_pern_lbl 14 `"14"', add
label define lc91a_pern_lbl 15 `"15"', add
label values lc91a_pern lc91a_pern_lbl

label define lc91a_fbig_lbl 0 `"No problem"'
label define lc91a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define lc91a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values lc91a_fbig lc91a_fbig_lbl

label define lc91a_urban_lbl 1 `"Urban"'
label define lc91a_urban_lbl 2 `"Rural"', add
label values lc91a_urban lc91a_urban_lbl

label define lc91a_dwtype_lbl 1 `"Undivided private house"'
label define lc91a_dwtype_lbl 2 `"Part of a private house"', add
label define lc91a_dwtype_lbl 3 `"Flat/apartment/condominium/townhouse"', add
label define lc91a_dwtype_lbl 5 `"Double house/duplex"', add
label define lc91a_dwtype_lbl 6 `"Combined business and dwelling"', add
label define lc91a_dwtype_lbl 8 `"Other"', add
label values lc91a_dwtype lc91a_dwtype_lbl

label define lc91a_occup_lbl 1 `"Freehold"'
label define lc91a_occup_lbl 2 `"Leasehold"', add
label define lc91a_occup_lbl 3 `"Rented"', add
label define lc91a_occup_lbl 4 `"Permission to work land"', add
label define lc91a_occup_lbl 6 `"Squatted"', add
label define lc91a_occup_lbl 7 `"Other"', add
label define lc91a_occup_lbl 8 `"Unknown"', add
label define lc91a_occup_lbl 9 `"NIU (not in universe)"', add
label values lc91a_occup lc91a_occup_lbl

label define lc91a_owner_lbl 1 `"Owned"'
label define lc91a_owner_lbl 3 `"Private rented"', add
label define lc91a_owner_lbl 4 `"Government rented"', add
label define lc91a_owner_lbl 6 `"Rent free"', add
label define lc91a_owner_lbl 7 `"Other"', add
label values lc91a_owner lc91a_owner_lbl

label define lc91a_rooms_lbl 1 `"1"'
label define lc91a_rooms_lbl 2 `"2"', add
label define lc91a_rooms_lbl 3 `"3"', add
label define lc91a_rooms_lbl 4 `"4"', add
label define lc91a_rooms_lbl 5 `"5"', add
label define lc91a_rooms_lbl 6 `"6"', add
label define lc91a_rooms_lbl 7 `"7"', add
label define lc91a_rooms_lbl 8 `"8+"', add
label values lc91a_rooms lc91a_rooms_lbl

label define lc91a_bedroom_lbl 0 `"0"'
label define lc91a_bedroom_lbl 1 `"1"', add
label define lc91a_bedroom_lbl 2 `"2"', add
label define lc91a_bedroom_lbl 3 `"3"', add
label define lc91a_bedroom_lbl 4 `"4"', add
label define lc91a_bedroom_lbl 5 `"5"', add
label define lc91a_bedroom_lbl 6 `"6+"', add
label values lc91a_bedroom lc91a_bedroom_lbl

label define lc91a_kitch_lbl 1 `"Indoors"'
label define lc91a_kitch_lbl 2 `"Outdoors"', add
label values lc91a_kitch lc91a_kitch_lbl

label define lc91a_toilet_lbl 1 `"Linked to sewer"'
label define lc91a_toilet_lbl 2 `"Septic tank"', add
label define lc91a_toilet_lbl 3 `"Pit latrine"', add
label define lc91a_toilet_lbl 4 `"Other"', add
label define lc91a_toilet_lbl 5 `"None"', add
label values lc91a_toilet lc91a_toilet_lbl

label define lc91a_toiletsh_lbl 1 `"Yes"'
label define lc91a_toiletsh_lbl 2 `"No"', add
label define lc91a_toiletsh_lbl 8 `"Unknown"', add
label define lc91a_toiletsh_lbl 9 `"NIU (not in universe)"', add
label values lc91a_toiletsh lc91a_toiletsh_lbl

label define lc91a_kitchsh_lbl 1 `"Shared"'
label define lc91a_kitchsh_lbl 2 `"Not shared"', add
label values lc91a_kitchsh lc91a_kitchsh_lbl

label define lc91a_roof_lbl 1 `"Sheet metal"'
label define lc91a_roof_lbl 2 `"Asphalt shingle"', add
label define lc91a_roof_lbl 6 `"Concrete"', add
label define lc91a_roof_lbl 8 `"Other or unknown"', add
label values lc91a_roof lc91a_roof_lbl

label define lc91a_wall_lbl 1 `"Wood"'
label define lc91a_wall_lbl 2 `"Concrete"', add
label define lc91a_wall_lbl 3 `"Wood and concrete"', add
label define lc91a_wall_lbl 8 `"Other or unknown"', add
label values lc91a_wall lc91a_wall_lbl

label define lc91a_watsup_lbl 1 `"Private, piped into dwelling"'
label define lc91a_watsup_lbl 2 `"Private catchment, not piped"', add
label define lc91a_watsup_lbl 3 `"Public, piped into dwelling"', add
label define lc91a_watsup_lbl 4 `"Public, piped into yard"', add
label define lc91a_watsup_lbl 5 `"Public standpipe"', add
label define lc91a_watsup_lbl 6 `"Public well or tank"', add
label define lc91a_watsup_lbl 7 `"Other"', add
label values lc91a_watsup lc91a_watsup_lbl

label define lc91a_builtyr_lbl 1 `"Before 1960"'
label define lc91a_builtyr_lbl 2 `"1960 to 1969"', add
label define lc91a_builtyr_lbl 3 `"1970 to 1979"', add
label define lc91a_builtyr_lbl 4 `"1980 or later"', add
label define lc91a_builtyr_lbl 9 `"Unknown"', add
label values lc91a_builtyr lc91a_builtyr_lbl

label define lc91a_fuelck_lbl 1 `"Coal"'
label define lc91a_fuelck_lbl 2 `"Wood"', add
label define lc91a_fuelck_lbl 3 `"Gas"', add
label define lc91a_fuelck_lbl 4 `"Kerosene"', add
label define lc91a_fuelck_lbl 5 `"Electricity"', add
label define lc91a_fuelck_lbl 6 `"Other"', add
label values lc91a_fuelck lc91a_fuelck_lbl

label define lc91a_light_lbl 1 `"Kerosene"'
label define lc91a_light_lbl 2 `"Electricity"', add
label define lc91a_light_lbl 3 `"Other"', add
label values lc91a_light lc91a_light_lbl

label define lc91a_phone_lbl 1 `"Yes"'
label define lc91a_phone_lbl 2 `"No"', add
label values lc91a_phone lc91a_phone_lbl

label define lc91a_radios_lbl 0 `"0"'
label define lc91a_radios_lbl 1 `"1"', add
label define lc91a_radios_lbl 2 `"2"', add
label define lc91a_radios_lbl 3 `"3"', add
label define lc91a_radios_lbl 4 `"4+"', add
label values lc91a_radios lc91a_radios_lbl

label define lc91a_tvs_lbl 0 `"0"'
label define lc91a_tvs_lbl 1 `"1"', add
label define lc91a_tvs_lbl 2 `"2"', add
label define lc91a_tvs_lbl 3 `"3+"', add
label values lc91a_tvs lc91a_tvs_lbl

label define lc91a_videos_lbl 0 `"0"'
label define lc91a_videos_lbl 1 `"1"', add
label define lc91a_videos_lbl 2 `"2+"', add
label values lc91a_videos lc91a_videos_lbl

label define lc91a_emign_lbl 1 `"1"'
label define lc91a_emign_lbl 2 `"2+"', add
label define lc91a_emign_lbl 9 `"NIU (not in universe)"', add
label values lc91a_emign lc91a_emign_lbl

label define lc91a_pernum_lbl 00 `"Household record"'
label define lc91a_pernum_lbl 01 `"1"', add
label define lc91a_pernum_lbl 02 `"2"', add
label define lc91a_pernum_lbl 03 `"3"', add
label define lc91a_pernum_lbl 04 `"4"', add
label define lc91a_pernum_lbl 05 `"5"', add
label define lc91a_pernum_lbl 06 `"6"', add
label define lc91a_pernum_lbl 07 `"7"', add
label define lc91a_pernum_lbl 08 `"8"', add
label define lc91a_pernum_lbl 09 `"9"', add
label define lc91a_pernum_lbl 10 `"10"', add
label define lc91a_pernum_lbl 11 `"11"', add
label define lc91a_pernum_lbl 12 `"12"', add
label define lc91a_pernum_lbl 13 `"13"', add
label define lc91a_pernum_lbl 14 `"14"', add
label define lc91a_pernum_lbl 15 `"15"', add
label values lc91a_pernum lc91a_pernum_lbl

label define lc91a_age_lbl 00 `"0"'
label define lc91a_age_lbl 01 `"1"', add
label define lc91a_age_lbl 02 `"2"', add
label define lc91a_age_lbl 03 `"3"', add
label define lc91a_age_lbl 04 `"4"', add
label define lc91a_age_lbl 05 `"5"', add
label define lc91a_age_lbl 06 `"6"', add
label define lc91a_age_lbl 07 `"7"', add
label define lc91a_age_lbl 08 `"8"', add
label define lc91a_age_lbl 09 `"9"', add
label define lc91a_age_lbl 10 `"10"', add
label define lc91a_age_lbl 11 `"11"', add
label define lc91a_age_lbl 12 `"12"', add
label define lc91a_age_lbl 13 `"13"', add
label define lc91a_age_lbl 14 `"14"', add
label define lc91a_age_lbl 15 `"15"', add
label define lc91a_age_lbl 16 `"16"', add
label define lc91a_age_lbl 17 `"17"', add
label define lc91a_age_lbl 18 `"18"', add
label define lc91a_age_lbl 19 `"19"', add
label define lc91a_age_lbl 20 `"20"', add
label define lc91a_age_lbl 21 `"21"', add
label define lc91a_age_lbl 22 `"22"', add
label define lc91a_age_lbl 23 `"23"', add
label define lc91a_age_lbl 24 `"24"', add
label define lc91a_age_lbl 25 `"25"', add
label define lc91a_age_lbl 26 `"26"', add
label define lc91a_age_lbl 27 `"27"', add
label define lc91a_age_lbl 28 `"28"', add
label define lc91a_age_lbl 29 `"29"', add
label define lc91a_age_lbl 30 `"30"', add
label define lc91a_age_lbl 31 `"31"', add
label define lc91a_age_lbl 32 `"32"', add
label define lc91a_age_lbl 33 `"33"', add
label define lc91a_age_lbl 34 `"34"', add
label define lc91a_age_lbl 35 `"35"', add
label define lc91a_age_lbl 36 `"36"', add
label define lc91a_age_lbl 37 `"37"', add
label define lc91a_age_lbl 38 `"38"', add
label define lc91a_age_lbl 39 `"39"', add
label define lc91a_age_lbl 40 `"40"', add
label define lc91a_age_lbl 41 `"41"', add
label define lc91a_age_lbl 42 `"42"', add
label define lc91a_age_lbl 43 `"43"', add
label define lc91a_age_lbl 44 `"44"', add
label define lc91a_age_lbl 45 `"45"', add
label define lc91a_age_lbl 46 `"46"', add
label define lc91a_age_lbl 47 `"47"', add
label define lc91a_age_lbl 48 `"48"', add
label define lc91a_age_lbl 49 `"49"', add
label define lc91a_age_lbl 50 `"50"', add
label define lc91a_age_lbl 51 `"51"', add
label define lc91a_age_lbl 52 `"52"', add
label define lc91a_age_lbl 53 `"53"', add
label define lc91a_age_lbl 54 `"54"', add
label define lc91a_age_lbl 55 `"55"', add
label define lc91a_age_lbl 56 `"56"', add
label define lc91a_age_lbl 57 `"57"', add
label define lc91a_age_lbl 58 `"58"', add
label define lc91a_age_lbl 59 `"59"', add
label define lc91a_age_lbl 60 `"60"', add
label define lc91a_age_lbl 61 `"61"', add
label define lc91a_age_lbl 62 `"62"', add
label define lc91a_age_lbl 63 `"63"', add
label define lc91a_age_lbl 64 `"64"', add
label define lc91a_age_lbl 65 `"65"', add
label define lc91a_age_lbl 66 `"66"', add
label define lc91a_age_lbl 67 `"67"', add
label define lc91a_age_lbl 68 `"68"', add
label define lc91a_age_lbl 69 `"69"', add
label define lc91a_age_lbl 70 `"70"', add
label define lc91a_age_lbl 71 `"71"', add
label define lc91a_age_lbl 72 `"72"', add
label define lc91a_age_lbl 73 `"73"', add
label define lc91a_age_lbl 74 `"74"', add
label define lc91a_age_lbl 75 `"75"', add
label define lc91a_age_lbl 76 `"76"', add
label define lc91a_age_lbl 77 `"77"', add
label define lc91a_age_lbl 78 `"78"', add
label define lc91a_age_lbl 79 `"79"', add
label define lc91a_age_lbl 80 `"80+"', add
label values lc91a_age lc91a_age_lbl

label define lc91a_where_lbl 1 `"This address"'
label define lc91a_where_lbl 2 `"Elsewhere"', add
label define lc91a_where_lbl 3 `"Abroad"', add
label values lc91a_where lc91a_where_lbl

label define lc91a_marst_lbl 1 `"Married"'
label define lc91a_marst_lbl 2 `"Widowed"', add
label define lc91a_marst_lbl 3 `"Divorced"', add
label define lc91a_marst_lbl 4 `"Separated legal"', add
label define lc91a_marst_lbl 5 `"Never married"', add
label define lc91a_marst_lbl 8 `"Unknown"', add
label define lc91a_marst_lbl 9 `"NIU (not in universe)"', add
label values lc91a_marst lc91a_marst_lbl

label define lc91a_relate_lbl 1 `"Head"'
label define lc91a_relate_lbl 2 `"Spouse partner"', add
label define lc91a_relate_lbl 3 `"Child"', add
label define lc91a_relate_lbl 4 `"Son/daughter in-law"', add
label define lc91a_relate_lbl 5 `"Grandchild"', add
label define lc91a_relate_lbl 6 `"Parent/parent-in-law"', add
label define lc91a_relate_lbl 7 `"Other-relative"', add
label define lc91a_relate_lbl 8 `"Non-relative"', add
label values lc91a_relate lc91a_relate_lbl

label define lc91a_sex_lbl 1 `"Male"'
label define lc91a_sex_lbl 2 `"Female"', add
label values lc91a_sex lc91a_sex_lbl

label define lc91a_agechf_lbl 15 `"15 or younger"'
label define lc91a_agechf_lbl 16 `"16"', add
label define lc91a_agechf_lbl 17 `"17"', add
label define lc91a_agechf_lbl 18 `"18"', add
label define lc91a_agechf_lbl 19 `"19"', add
label define lc91a_agechf_lbl 20 `"20"', add
label define lc91a_agechf_lbl 21 `"21"', add
label define lc91a_agechf_lbl 22 `"22"', add
label define lc91a_agechf_lbl 23 `"23"', add
label define lc91a_agechf_lbl 24 `"24"', add
label define lc91a_agechf_lbl 25 `"25"', add
label define lc91a_agechf_lbl 26 `"26"', add
label define lc91a_agechf_lbl 27 `"27"', add
label define lc91a_agechf_lbl 28 `"28"', add
label define lc91a_agechf_lbl 29 `"29"', add
label define lc91a_agechf_lbl 30 `"30+"', add
label define lc91a_agechf_lbl 98 `"Unknown"', add
label define lc91a_agechf_lbl 99 `"NIU (not in universe)"', add
label values lc91a_agechf lc91a_agechf_lbl

label define lc91a_agemar_lbl 15 `"15 or younger"'
label define lc91a_agemar_lbl 16 `"16"', add
label define lc91a_agemar_lbl 17 `"17"', add
label define lc91a_agemar_lbl 18 `"18"', add
label define lc91a_agemar_lbl 19 `"19"', add
label define lc91a_agemar_lbl 20 `"20"', add
label define lc91a_agemar_lbl 21 `"21"', add
label define lc91a_agemar_lbl 22 `"22"', add
label define lc91a_agemar_lbl 23 `"23"', add
label define lc91a_agemar_lbl 24 `"24"', add
label define lc91a_agemar_lbl 25 `"25"', add
label define lc91a_agemar_lbl 26 `"26"', add
label define lc91a_agemar_lbl 27 `"27"', add
label define lc91a_agemar_lbl 28 `"28"', add
label define lc91a_agemar_lbl 29 `"29"', add
label define lc91a_agemar_lbl 30 `"30"', add
label define lc91a_agemar_lbl 31 `"31"', add
label define lc91a_agemar_lbl 32 `"32"', add
label define lc91a_agemar_lbl 33 `"33"', add
label define lc91a_agemar_lbl 34 `"34"', add
label define lc91a_agemar_lbl 35 `"35"', add
label define lc91a_agemar_lbl 36 `"36"', add
label define lc91a_agemar_lbl 37 `"37"', add
label define lc91a_agemar_lbl 38 `"38"', add
label define lc91a_agemar_lbl 39 `"39"', add
label define lc91a_agemar_lbl 40 `"40+"', add
label define lc91a_agemar_lbl 98 `"Unknown"', add
label define lc91a_agemar_lbl 99 `"NIU (not in universe)"', add
label values lc91a_agemar lc91a_agemar_lbl

label define lc91a_agechl_lbl 14 `"14"'
label define lc91a_agechl_lbl 15 `"15"', add
label define lc91a_agechl_lbl 16 `"16"', add
label define lc91a_agechl_lbl 17 `"17"', add
label define lc91a_agechl_lbl 18 `"18"', add
label define lc91a_agechl_lbl 19 `"19"', add
label define lc91a_agechl_lbl 20 `"20"', add
label define lc91a_agechl_lbl 21 `"21"', add
label define lc91a_agechl_lbl 22 `"22"', add
label define lc91a_agechl_lbl 23 `"23"', add
label define lc91a_agechl_lbl 24 `"24"', add
label define lc91a_agechl_lbl 25 `"25"', add
label define lc91a_agechl_lbl 26 `"26"', add
label define lc91a_agechl_lbl 27 `"27"', add
label define lc91a_agechl_lbl 28 `"28"', add
label define lc91a_agechl_lbl 29 `"29"', add
label define lc91a_agechl_lbl 30 `"30"', add
label define lc91a_agechl_lbl 31 `"31"', add
label define lc91a_agechl_lbl 32 `"32"', add
label define lc91a_agechl_lbl 33 `"33"', add
label define lc91a_agechl_lbl 34 `"34"', add
label define lc91a_agechl_lbl 35 `"35"', add
label define lc91a_agechl_lbl 36 `"36"', add
label define lc91a_agechl_lbl 37 `"37"', add
label define lc91a_agechl_lbl 38 `"38"', add
label define lc91a_agechl_lbl 39 `"39"', add
label define lc91a_agechl_lbl 40 `"40"', add
label define lc91a_agechl_lbl 41 `"41"', add
label define lc91a_agechl_lbl 42 `"42"', add
label define lc91a_agechl_lbl 43 `"43"', add
label define lc91a_agechl_lbl 44 `"44+"', add
label define lc91a_agechl_lbl 98 `"Unknown"', add
label define lc91a_agechl_lbl 99 `"NIU (not in universe)"', add
label values lc91a_agechl lc91a_agechl_lbl

label define lc91a_comlaw_lbl 1 `"Yes"'
label define lc91a_comlaw_lbl 2 `"No"', add
label define lc91a_comlaw_lbl 8 `"Unknown"', add
label define lc91a_comlaw_lbl 9 `"NIU (not in universe)"', add
label values lc91a_comlaw lc91a_comlaw_lbl

label define lc91a_legpar_lbl 1 `"Yes"'
label define lc91a_legpar_lbl 2 `"No"', add
label define lc91a_legpar_lbl 9 `"NIU (not in universe)"', add
label values lc91a_legpar lc91a_legpar_lbl

label define lc91a_partner_lbl 1 `"Yes"'
label define lc91a_partner_lbl 2 `"No"', add
label define lc91a_partner_lbl 8 `"Unknown"', add
label define lc91a_partner_lbl 9 `"NIU (not in universe)"', add
label values lc91a_partner lc91a_partner_lbl

label define lc91a_ethnic_lbl 01 `"African/Negro/Black"'
label define lc91a_ethnic_lbl 02 `"American Indian/Caribbean"', add
label define lc91a_ethnic_lbl 03 `"East Indian"', add
label define lc91a_ethnic_lbl 07 `"White"', add
label define lc91a_ethnic_lbl 08 `"Mixed"', add
label define lc91a_ethnic_lbl 09 `"Other"', add
label define lc91a_ethnic_lbl 99 `"Unknown"', add
label values lc91a_ethnic lc91a_ethnic_lbl

label define lc91a_relig_lbl 01 `"Anglican"'
label define lc91a_relig_lbl 02 `"Baptist (Spiritual)"', add
label define lc91a_relig_lbl 04 `"Church of God"', add
label define lc91a_relig_lbl 05 `"Jehovah Witness"', add
label define lc91a_relig_lbl 06 `"Methodist"', add
label define lc91a_relig_lbl 08 `"Pentecostal"', add
label define lc91a_relig_lbl 10 `"Roman Catholic"', add
label define lc91a_relig_lbl 12 `"Seventh Day Adventist"', add
label define lc91a_relig_lbl 15 `"Rastafarian"', add
label define lc91a_relig_lbl 16 `"Other"', add
label define lc91a_relig_lbl 17 `"None"', add
label define lc91a_relig_lbl 99 `"Unknown"', add
label values lc91a_relig lc91a_relig_lbl

label define lc91a_disab_lbl 1 `"Yes"'
label define lc91a_disab_lbl 2 `"No"', add
label values lc91a_disab lc91a_disab_lbl

label define lc91a_bplc_lbl 1 `"In this country"'
label define lc91a_bplc_lbl 2 `"Abroad"', add
label define lc91a_bplc_lbl 8 `"Unknown"', add
label values lc91a_bplc lc91a_bplc_lbl

label define lc91a_bpl_lbl 01 `"Castries city"'
label define lc91a_bpl_lbl 02 `"Castries suburban"', add
label define lc91a_bpl_lbl 03 `"Castries rural"', add
label define lc91a_bpl_lbl 04 `"Anse-la-raye"', add
label define lc91a_bpl_lbl 05 `"Canaries"', add
label define lc91a_bpl_lbl 06 `"Soufriere"', add
label define lc91a_bpl_lbl 07 `"Choiseul"', add
label define lc91a_bpl_lbl 08 `"Laborie"', add
label define lc91a_bpl_lbl 09 `"Vieux-fort"', add
label define lc91a_bpl_lbl 10 `"Micoud"', add
label define lc91a_bpl_lbl 11 `"Dennery"', add
label define lc91a_bpl_lbl 12 `"Gros-islet"', add
label define lc91a_bpl_lbl 98 `"Unknown"', add
label define lc91a_bpl_lbl 99 `"NIU (not in universe)"', add
label values lc91a_bpl lc91a_bpl_lbl

label define lc91a_ctry1_lbl 00 `"Always lived in Saint Lucia"'
label define lc91a_ctry1_lbl 01 `"Antigua and Barbuda"', add
label define lc91a_ctry1_lbl 03 `"Barbados"', add
label define lc91a_ctry1_lbl 04 `"Belize"', add
label define lc91a_ctry1_lbl 09 `"Guyana"', add
label define lc91a_ctry1_lbl 10 `"Jamaica"', add
label define lc91a_ctry1_lbl 14 `"St Vincent and the Grenadines"', add
label define lc91a_ctry1_lbl 15 `"Trinidad and Tobago"', add
label define lc91a_ctry1_lbl 16 `"Turks and Caicos"', add
label define lc91a_ctry1_lbl 17 `"St Croix"', add
label define lc91a_ctry1_lbl 19 `"Other English Speaking Caribbean Islands"', add
label define lc91a_ctry1_lbl 27 `"Martinique"', add
label define lc91a_ctry1_lbl 29 `"Other Caribbean Islands"', add
label define lc91a_ctry1_lbl 32 `"Canada"', add
label define lc91a_ctry1_lbl 38 `"United Kingdom"', add
label define lc91a_ctry1_lbl 41 `"United States"', add
label define lc91a_ctry1_lbl 46 `"French Guyana"', add
label define lc91a_ctry1_lbl 91 `"Other countries"', add
label define lc91a_ctry1_lbl 98 `"Unknown"', add
label values lc91a_ctry1 lc91a_ctry1_lbl

label define lc91a_bplctry_lbl 03 `"Barbados"'
label define lc91a_bplctry_lbl 09 `"Guyana"', add
label define lc91a_bplctry_lbl 15 `"Trinidad and Tobago"', add
label define lc91a_bplctry_lbl 19 `"Other English Speaking Caribbean Islands"', add
label define lc91a_bplctry_lbl 27 `"Martinique"', add
label define lc91a_bplctry_lbl 29 `"Other Caribbean Islands"', add
label define lc91a_bplctry_lbl 38 `"United Kingdom"', add
label define lc91a_bplctry_lbl 41 `"United States"', add
label define lc91a_bplctry_lbl 46 `"French Guyana"', add
label define lc91a_bplctry_lbl 91 `"Other countries"', add
label define lc91a_bplctry_lbl 98 `"Unknown"', add
label define lc91a_bplctry_lbl 99 `"NIU (not in universe)"', add
label values lc91a_bplctry lc91a_bplctry_lbl

label define lc91a_resus_lbl 1 `"This address"'
label define lc91a_resus_lbl 2 `"Elsewhere"', add
label define lc91a_resus_lbl 3 `"Abroad"', add
label define lc91a_resus_lbl 8 `"Unknown"', add
label define lc91a_resus_lbl 9 `"NIU (not in universe)"', add
label values lc91a_resus lc91a_resus_lbl

label define lc91a_resprev_lbl 00 `"Never moved"'
label define lc91a_resprev_lbl 01 `"Castries city"', add
label define lc91a_resprev_lbl 02 `"Castries suburban"', add
label define lc91a_resprev_lbl 03 `"Castries rural"', add
label define lc91a_resprev_lbl 04 `"Anse-la-raye"', add
label define lc91a_resprev_lbl 05 `"Canaries"', add
label define lc91a_resprev_lbl 06 `"Soufriere"', add
label define lc91a_resprev_lbl 07 `"Choiseul"', add
label define lc91a_resprev_lbl 08 `"Laborie"', add
label define lc91a_resprev_lbl 09 `"Vieux-fort"', add
label define lc91a_resprev_lbl 10 `"Micoud"', add
label define lc91a_resprev_lbl 11 `"Dennery"', add
label define lc91a_resprev_lbl 12 `"Gros-islet"', add
label define lc91a_resprev_lbl 98 `"Unknown"', add
label values lc91a_resprev lc91a_resprev_lbl

label define lc91a_migyr_lbl 60 `"1960 or earlier"'
label define lc91a_migyr_lbl 61 `"1961"', add
label define lc91a_migyr_lbl 62 `"1962"', add
label define lc91a_migyr_lbl 63 `"1963"', add
label define lc91a_migyr_lbl 64 `"1964"', add
label define lc91a_migyr_lbl 65 `"1965"', add
label define lc91a_migyr_lbl 66 `"1966"', add
label define lc91a_migyr_lbl 67 `"1967"', add
label define lc91a_migyr_lbl 68 `"1968"', add
label define lc91a_migyr_lbl 69 `"1969"', add
label define lc91a_migyr_lbl 70 `"1970"', add
label define lc91a_migyr_lbl 71 `"1971"', add
label define lc91a_migyr_lbl 72 `"1972"', add
label define lc91a_migyr_lbl 73 `"1973"', add
label define lc91a_migyr_lbl 74 `"1974"', add
label define lc91a_migyr_lbl 75 `"1975"', add
label define lc91a_migyr_lbl 76 `"1976"', add
label define lc91a_migyr_lbl 77 `"1977"', add
label define lc91a_migyr_lbl 78 `"1978"', add
label define lc91a_migyr_lbl 79 `"1979"', add
label define lc91a_migyr_lbl 80 `"1980"', add
label define lc91a_migyr_lbl 81 `"1981"', add
label define lc91a_migyr_lbl 82 `"1982"', add
label define lc91a_migyr_lbl 83 `"1983"', add
label define lc91a_migyr_lbl 84 `"1984"', add
label define lc91a_migyr_lbl 85 `"1985"', add
label define lc91a_migyr_lbl 86 `"1986"', add
label define lc91a_migyr_lbl 87 `"1987"', add
label define lc91a_migyr_lbl 88 `"1988"', add
label define lc91a_migyr_lbl 89 `"1989"', add
label define lc91a_migyr_lbl 90 `"1990"', add
label define lc91a_migyr_lbl 91 `"1991"', add
label define lc91a_migyr_lbl 98 `"Unknown"', add
label define lc91a_migyr_lbl 99 `"NIU (not in universe)"', add
label values lc91a_migyr lc91a_migyr_lbl

label define lc91a_immigyr_lbl 85 `"1985 or earlier"'
label define lc91a_immigyr_lbl 86 `"1986"', add
label define lc91a_immigyr_lbl 87 `"1987"', add
label define lc91a_immigyr_lbl 88 `"1988"', add
label define lc91a_immigyr_lbl 89 `"1989"', add
label define lc91a_immigyr_lbl 90 `"1990"', add
label define lc91a_immigyr_lbl 91 `"1991"', add
label define lc91a_immigyr_lbl 98 `"Unknown"', add
label define lc91a_immigyr_lbl 99 `"NIU (not in universe)"', add
label values lc91a_immigyr lc91a_immigyr_lbl

label define lc91a_schoolm_lbl 1 `"Full-time"'
label define lc91a_schoolm_lbl 2 `"Part-time"', add
label define lc91a_schoolm_lbl 8 `"Unknown"', add
label define lc91a_schoolm_lbl 9 `"NIU (not in universe)"', add
label values lc91a_schoolm lc91a_schoolm_lbl

label define lc91a_school_lbl 1 `"Yes"'
label define lc91a_school_lbl 2 `"No"', add
label define lc91a_school_lbl 8 `"Unknown"', add
label values lc91a_school lc91a_school_lbl

label define lc91a_degree_lbl 01 `"None"'
label define lc91a_degree_lbl 02 `"School leaving"', add
label define lc91a_degree_lbl 03 `"Cambridge"', add
label define lc91a_degree_lbl 04 `"'O' level GCE or CXC"', add
label define lc91a_degree_lbl 05 `"'A' level GCE"', add
label define lc91a_degree_lbl 06 `"High school"', add
label define lc91a_degree_lbl 07 `"Diploma"', add
label define lc91a_degree_lbl 08 `"Degree"', add
label define lc91a_degree_lbl 09 `"Other"', add
label define lc91a_degree_lbl 98 `"Unknown"', add
label define lc91a_degree_lbl 99 `"NIU (not in universe)"', add
label values lc91a_degree lc91a_degree_lbl

label define lc91a_edlev_lbl 1 `"None"'
label define lc91a_edlev_lbl 2 `"Nursery kindergarten"', add
label define lc91a_edlev_lbl 3 `"Primary"', add
label define lc91a_edlev_lbl 4 `"Secondary"', add
label define lc91a_edlev_lbl 5 `"Pre-university"', add
label define lc91a_edlev_lbl 6 `"University"', add
label define lc91a_edlev_lbl 7 `"Other"', add
label define lc91a_edlev_lbl 8 `"Unknown"', add
label values lc91a_edlev lc91a_edlev_lbl

label define lc91a_schty_lbl 01 `"Nursery-infant"'
label define lc91a_schty_lbl 02 `"Primary"', add
label define lc91a_schty_lbl 03 `"Senior school"', add
label define lc91a_schty_lbl 04 `"Junior school"', add
label define lc91a_schty_lbl 05 `"Secondary school"', add
label define lc91a_schty_lbl 06 `"Trade school"', add
label define lc91a_schty_lbl 08 `"Community college"', add
label define lc91a_schty_lbl 09 `"University or technical institute"', add
label define lc91a_schty_lbl 10 `"Other"', add
label define lc91a_schty_lbl 98 `"Unknown"', add
label define lc91a_schty_lbl 99 `"NIU (not in universe)"', add
label values lc91a_schty lc91a_schty_lbl

label define lc91a_edgrade_lbl 1 `"First standard"'
label define lc91a_edgrade_lbl 2 `"Second standard"', add
label define lc91a_edgrade_lbl 3 `"Third standard"', add
label define lc91a_edgrade_lbl 4 `"Fourth standard"', add
label define lc91a_edgrade_lbl 5 `"Fifth standard"', add
label define lc91a_edgrade_lbl 6 `"Sixth standard"', add
label define lc91a_edgrade_lbl 7 `"Seventh standard"', add
label define lc91a_edgrade_lbl 8 `"Unknown"', add
label define lc91a_edgrade_lbl 9 `"NIU (not in universe)"', add
label values lc91a_edgrade lc91a_edgrade_lbl

label define lc91a_empstat_lbl 01 `"Worked"'
label define lc91a_empstat_lbl 02 `"Had a job but did not work"', add
label define lc91a_empstat_lbl 03 `"Looked for work"', add
label define lc91a_empstat_lbl 04 `"Wanted work and available"', add
label define lc91a_empstat_lbl 05 `"Home duties"', add
label define lc91a_empstat_lbl 06 `"Attended school"', add
label define lc91a_empstat_lbl 07 `"Retired"', add
label define lc91a_empstat_lbl 08 `"Disabled"', add
label define lc91a_empstat_lbl 09 `"Other"', add
label define lc91a_empstat_lbl 98 `"Unknown"', add
label define lc91a_empstat_lbl 99 `"NIU (not in universe)"', add
label values lc91a_empstat lc91a_empstat_lbl

label define lc91a_empstatyr_lbl 01 `"Worked"'
label define lc91a_empstatyr_lbl 02 `"Had a job but did not work"', add
label define lc91a_empstatyr_lbl 03 `"Looked for work"', add
label define lc91a_empstatyr_lbl 04 `"Wanted work"', add
label define lc91a_empstatyr_lbl 05 `"Home duties"', add
label define lc91a_empstatyr_lbl 06 `"Attended school"', add
label define lc91a_empstatyr_lbl 07 `"Retired"', add
label define lc91a_empstatyr_lbl 08 `"Disabled"', add
label define lc91a_empstatyr_lbl 09 `"Other"', add
label define lc91a_empstatyr_lbl 98 `"Unknown"', add
label define lc91a_empstatyr_lbl 99 `"NIU (not in universe)"', add
label values lc91a_empstatyr lc91a_empstatyr_lbl

label define lc91a_classwk_lbl 1 `"Paid employee, government"'
label define lc91a_classwk_lbl 2 `"Paid employee, private"', add
label define lc91a_classwk_lbl 3 `"Unpaid worker"', add
label define lc91a_classwk_lbl 4 `"Employer"', add
label define lc91a_classwk_lbl 5 `"Own account"', add
label define lc91a_classwk_lbl 8 `"Unknown"', add
label define lc91a_classwk_lbl 9 `"NIU (not in universe)"', add
label values lc91a_classwk lc91a_classwk_lbl

label define lc91a_worked_lbl 1 `"Yes"'
label define lc91a_worked_lbl 2 `"No"', add
label define lc91a_worked_lbl 8 `"Unknown"', add
label define lc91a_worked_lbl 9 `"NIU (not in universe)"', add
label values lc91a_worked lc91a_worked_lbl

label define lc91a_workhr_lbl 001 `"1"'
label define lc91a_workhr_lbl 002 `"2"', add
label define lc91a_workhr_lbl 003 `"3"', add
label define lc91a_workhr_lbl 004 `"4"', add
label define lc91a_workhr_lbl 005 `"5"', add
label define lc91a_workhr_lbl 006 `"6"', add
label define lc91a_workhr_lbl 007 `"7"', add
label define lc91a_workhr_lbl 008 `"8"', add
label define lc91a_workhr_lbl 009 `"9"', add
label define lc91a_workhr_lbl 010 `"10"', add
label define lc91a_workhr_lbl 011 `"11"', add
label define lc91a_workhr_lbl 012 `"12"', add
label define lc91a_workhr_lbl 013 `"13"', add
label define lc91a_workhr_lbl 014 `"14"', add
label define lc91a_workhr_lbl 015 `"15"', add
label define lc91a_workhr_lbl 016 `"16"', add
label define lc91a_workhr_lbl 017 `"17"', add
label define lc91a_workhr_lbl 018 `"18"', add
label define lc91a_workhr_lbl 019 `"19"', add
label define lc91a_workhr_lbl 020 `"20"', add
label define lc91a_workhr_lbl 021 `"21"', add
label define lc91a_workhr_lbl 022 `"22"', add
label define lc91a_workhr_lbl 023 `"23"', add
label define lc91a_workhr_lbl 024 `"24"', add
label define lc91a_workhr_lbl 025 `"25"', add
label define lc91a_workhr_lbl 026 `"26"', add
label define lc91a_workhr_lbl 027 `"27"', add
label define lc91a_workhr_lbl 028 `"28"', add
label define lc91a_workhr_lbl 029 `"29"', add
label define lc91a_workhr_lbl 030 `"30"', add
label define lc91a_workhr_lbl 031 `"31"', add
label define lc91a_workhr_lbl 032 `"32"', add
label define lc91a_workhr_lbl 033 `"33"', add
label define lc91a_workhr_lbl 034 `"34"', add
label define lc91a_workhr_lbl 035 `"35"', add
label define lc91a_workhr_lbl 036 `"36"', add
label define lc91a_workhr_lbl 037 `"37"', add
label define lc91a_workhr_lbl 038 `"38"', add
label define lc91a_workhr_lbl 039 `"39"', add
label define lc91a_workhr_lbl 040 `"40"', add
label define lc91a_workhr_lbl 041 `"41"', add
label define lc91a_workhr_lbl 042 `"42"', add
label define lc91a_workhr_lbl 043 `"43"', add
label define lc91a_workhr_lbl 044 `"44"', add
label define lc91a_workhr_lbl 045 `"45"', add
label define lc91a_workhr_lbl 046 `"46"', add
label define lc91a_workhr_lbl 047 `"47"', add
label define lc91a_workhr_lbl 048 `"48"', add
label define lc91a_workhr_lbl 049 `"49"', add
label define lc91a_workhr_lbl 050 `"50"', add
label define lc91a_workhr_lbl 051 `"51"', add
label define lc91a_workhr_lbl 052 `"52"', add
label define lc91a_workhr_lbl 053 `"53"', add
label define lc91a_workhr_lbl 054 `"54"', add
label define lc91a_workhr_lbl 055 `"55"', add
label define lc91a_workhr_lbl 056 `"56"', add
label define lc91a_workhr_lbl 057 `"57"', add
label define lc91a_workhr_lbl 058 `"58"', add
label define lc91a_workhr_lbl 059 `"59"', add
label define lc91a_workhr_lbl 060 `"60"', add
label define lc91a_workhr_lbl 061 `"61"', add
label define lc91a_workhr_lbl 062 `"62"', add
label define lc91a_workhr_lbl 063 `"63"', add
label define lc91a_workhr_lbl 064 `"64"', add
label define lc91a_workhr_lbl 065 `"65"', add
label define lc91a_workhr_lbl 066 `"66"', add
label define lc91a_workhr_lbl 067 `"67"', add
label define lc91a_workhr_lbl 068 `"68"', add
label define lc91a_workhr_lbl 069 `"69"', add
label define lc91a_workhr_lbl 070 `"70"', add
label define lc91a_workhr_lbl 072 `"72"', add
label define lc91a_workhr_lbl 073 `"73"', add
label define lc91a_workhr_lbl 074 `"74"', add
label define lc91a_workhr_lbl 075 `"75"', add
label define lc91a_workhr_lbl 076 `"76"', add
label define lc91a_workhr_lbl 077 `"77"', add
label define lc91a_workhr_lbl 078 `"78"', add
label define lc91a_workhr_lbl 079 `"79"', add
label define lc91a_workhr_lbl 080 `"80"', add
label define lc91a_workhr_lbl 081 `"81"', add
label define lc91a_workhr_lbl 082 `"82"', add
label define lc91a_workhr_lbl 083 `"83"', add
label define lc91a_workhr_lbl 084 `"84"', add
label define lc91a_workhr_lbl 085 `"85"', add
label define lc91a_workhr_lbl 086 `"86"', add
label define lc91a_workhr_lbl 087 `"87"', add
label define lc91a_workhr_lbl 088 `"88"', add
label define lc91a_workhr_lbl 090 `"90"', add
label define lc91a_workhr_lbl 091 `"91"', add
label define lc91a_workhr_lbl 095 `"95"', add
label define lc91a_workhr_lbl 998 `"Unknown"', add
label define lc91a_workhr_lbl 999 `"NIU (not in universe)"', add
label values lc91a_workhr lc91a_workhr_lbl

label define lc91a_ind3_lbl 001 `"Agriculture, hunting, and related"'
label define lc91a_ind3_lbl 015 `"Manufacture of food products and beverages"', add
label define lc91a_ind3_lbl 018 `"Manufacture of wearing apparel"', add
label define lc91a_ind3_lbl 020 `"Manufacture of wood and wood products, except furniture"', add
label define lc91a_ind3_lbl 022 `"Publishing, printing and reproduction of recorded media"', add
label define lc91a_ind3_lbl 032 `"Manufacture of radio, television and communication equipment"', add
label define lc91a_ind3_lbl 036 `"Manufacture of furniture"', add
label define lc91a_ind3_lbl 039 `"Other manufacturing n.e.c."', add
label define lc91a_ind3_lbl 040 `"Electricity, gas, steam and hot water supply"', add
label define lc91a_ind3_lbl 041 `"Collection, purification and distribution of water"', add
label define lc91a_ind3_lbl 045 `"Construction"', add
label define lc91a_ind3_lbl 050 `"Sale, maintenance and repair of motor vehicles"', add
label define lc91a_ind3_lbl 051 `"Wholesale trade and commission trade, except motor vehicles"', add
label define lc91a_ind3_lbl 052 `"Retail trade, except of motor vehicles"', add
label define lc91a_ind3_lbl 055 `"Hotels and restaurants"', add
label define lc91a_ind3_lbl 060 `"Land transport"', add
label define lc91a_ind3_lbl 061 `"Water transport"', add
label define lc91a_ind3_lbl 062 `"Air transport"', add
label define lc91a_ind3_lbl 063 `"Supporting and auxiliary transport activities"', add
label define lc91a_ind3_lbl 064 `"Post and telecommunications"', add
label define lc91a_ind3_lbl 065 `"Financial intermediation, except insurance and pension funding"', add
label define lc91a_ind3_lbl 066 `"Insurance and pension funding, except compulsory social security"', add
label define lc91a_ind3_lbl 074 `"Other business activities"', add
label define lc91a_ind3_lbl 075 `"Public administration and defense"', add
label define lc91a_ind3_lbl 080 `"Education"', add
label define lc91a_ind3_lbl 085 `"Health and social work"', add
label define lc91a_ind3_lbl 090 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define lc91a_ind3_lbl 092 `"Recreational, cultural and sporting activities"', add
label define lc91a_ind3_lbl 093 `"Other service activities"', add
label define lc91a_ind3_lbl 095 `"Private households with employed persons"', add
label define lc91a_ind3_lbl 099 `"Other industries, not elsewhere classified"', add
label define lc91a_ind3_lbl 998 `"Unknown"', add
label define lc91a_ind3_lbl 999 `"NIU (not in universe)"', add
label values lc91a_ind3 lc91a_ind3_lbl

label define lc91a_busmove_lbl 1 `"Yes"'
label define lc91a_busmove_lbl 2 `"No"', add
label define lc91a_busmove_lbl 9 `"NIU (not in universe)"', add
label values lc91a_busmove lc91a_busmove_lbl

label define lc91a_workmo_lbl 01 `"1"'
label define lc91a_workmo_lbl 02 `"2"', add
label define lc91a_workmo_lbl 03 `"3"', add
label define lc91a_workmo_lbl 04 `"4"', add
label define lc91a_workmo_lbl 05 `"5"', add
label define lc91a_workmo_lbl 06 `"6"', add
label define lc91a_workmo_lbl 07 `"7"', add
label define lc91a_workmo_lbl 08 `"8"', add
label define lc91a_workmo_lbl 09 `"9"', add
label define lc91a_workmo_lbl 10 `"10"', add
label define lc91a_workmo_lbl 11 `"11"', add
label define lc91a_workmo_lbl 12 `"12"', add
label define lc91a_workmo_lbl 99 `"NIU (not in universe)"', add
label values lc91a_workmo lc91a_workmo_lbl

label define lc91a_occ_lbl 012 `"Corporate managers"'
label define lc91a_occ_lbl 013 `"General managers"', add
label define lc91a_occ_lbl 019 `"Legislators, officials and managers, not elsewhere specified"', add
label define lc91a_occ_lbl 021 `"Physical, mathematical and engineering science professionals"', add
label define lc91a_occ_lbl 023 `"Teaching professionals"', add
label define lc91a_occ_lbl 024 `"Other professionals"', add
label define lc91a_occ_lbl 031 `"Physical and engineering science associate professionals"', add
label define lc91a_occ_lbl 032 `"Life science and health associate professionals"', add
label define lc91a_occ_lbl 033 `"Teaching associate professionals"', add
label define lc91a_occ_lbl 034 `"Other associate professionals"', add
label define lc91a_occ_lbl 041 `"Office clerks"', add
label define lc91a_occ_lbl 042 `"Customer service clerks"', add
label define lc91a_occ_lbl 051 `"Personal and protective service workers"', add
label define lc91a_occ_lbl 052 `"Models, salespersons and demonstrators"', add
label define lc91a_occ_lbl 061 `"Market-oriented skilled agricultural and workers"', add
label define lc91a_occ_lbl 064 `"Aqua-farm workers"', add
label define lc91a_occ_lbl 071 `"Extraction and building trades workers"', add
label define lc91a_occ_lbl 072 `"Metal, machinery and related trades workers"', add
label define lc91a_occ_lbl 073 `"Precision, handicraft, printing and related trades workers"', add
label define lc91a_occ_lbl 074 `"Other craft and related trades workers"', add
label define lc91a_occ_lbl 082 `"Machine operators and assemblers"', add
label define lc91a_occ_lbl 083 `"Drivers and mobile-plant operators"', add
label define lc91a_occ_lbl 091 `"Sales and services elementary workers"', add
label define lc91a_occ_lbl 092 `"Agricultural, fishery and related laborers"', add
label define lc91a_occ_lbl 093 `"Laborers in mining, construction, manufacturing and transport"', add
label define lc91a_occ_lbl 094 `"Other laborers n.e.c."', add
label define lc91a_occ_lbl 099 `"Other occupations, not elsewhere classified"', add
label define lc91a_occ_lbl 997 `"Occupations not adequately described"', add
label define lc91a_occ_lbl 998 `"Unknown"', add
label define lc91a_occ_lbl 999 `"NIU (not in universe)"', add
label values lc91a_occ lc91a_occ_lbl

label define lc91a_incothf_lbl 1 `"Yes"'
label define lc91a_incothf_lbl 2 `"No"', add
label define lc91a_incothf_lbl 8 `"Unknown"', add
label define lc91a_incothf_lbl 9 `"NIU (not in universe)"', add
label values lc91a_incothf lc91a_incothf_lbl

label define lc91a_trainoth_lbl 1 `"Yes"'
label define lc91a_trainoth_lbl 2 `"No"', add
label define lc91a_trainoth_lbl 8 `"Unknown"', add
label define lc91a_trainoth_lbl 9 `"NIU (not in universe)"', add
label values lc91a_trainoth lc91a_trainoth_lbl

label define lc91a_payper_lbl 1 `"Weekly"'
label define lc91a_payper_lbl 2 `"Fortnightly"', add
label define lc91a_payper_lbl 3 `"Monthly"', add
label define lc91a_payper_lbl 4 `"Quarterly"', add
label define lc91a_payper_lbl 5 `"Annually"', add
label define lc91a_payper_lbl 6 `"Other"', add
label define lc91a_payper_lbl 7 `"None"', add
label define lc91a_payper_lbl 8 `"Unknown"', add
label define lc91a_payper_lbl 9 `"NIU (not in universe)"', add
label values lc91a_payper lc91a_payper_lbl

label define lc91a_trainm_lbl 1 `"Correspondence"'
label define lc91a_trainm_lbl 2 `"On the job"', add
label define lc91a_trainm_lbl 3 `"Apprenticeship"', add
label define lc91a_trainm_lbl 4 `"Institution"', add
label define lc91a_trainm_lbl 5 `"Other"', add
label define lc91a_trainm_lbl 8 `"Unknown"', add
label define lc91a_trainm_lbl 9 `"NIU (not in universe)"', add
label values lc91a_trainm lc91a_trainm_lbl

label define lc91a_tourism_lbl 1 `"Completely dependent"'
label define lc91a_tourism_lbl 2 `"Partially dependent"', add
label define lc91a_tourism_lbl 3 `"Not dependent"', add
label define lc91a_tourism_lbl 8 `"Unknown"', add
label define lc91a_tourism_lbl 9 `"NIU (not in universe)"', add
label values lc91a_tourism lc91a_tourism_lbl

label define lc91a_work_lbl 1 `"Yes"'
label define lc91a_work_lbl 2 `"No"', add
label define lc91a_work_lbl 9 `"NIU (not in universe)"', add
label values lc91a_work lc91a_work_lbl

label define lc91a_workyr_lbl 1 `"Yes"'
label define lc91a_workyr_lbl 2 `"No"', add
label define lc91a_workyr_lbl 8 `"Unknown"', add
label define lc91a_workyr_lbl 9 `"NIU (not in universe)"', add
label values lc91a_workyr lc91a_workyr_lbl

label define lc91a_transwk_lbl 1 `"Work at home"'
label define lc91a_transwk_lbl 2 `"Walk"', add
label define lc91a_transwk_lbl 4 `"Private vehicle"', add
label define lc91a_transwk_lbl 5 `"Public vehicle"', add
label define lc91a_transwk_lbl 6 `"Hired transport"', add
label define lc91a_transwk_lbl 7 `"Other"', add
label define lc91a_transwk_lbl 8 `"Unknown"', add
label define lc91a_transwk_lbl 9 `"NIU (not in universe)"', add
label values lc91a_transwk lc91a_transwk_lbl

label define lc91a_fertfilt_lbl 1 `"Male"'
label define lc91a_fertfilt_lbl 2 `"Female over 65"', add
label define lc91a_fertfilt_lbl 3 `"School female"', add
label define lc91a_fertfilt_lbl 4 `"Non-school female under 65"', add
label define lc91a_fertfilt_lbl 9 `"NIU (not in universe)"', add
label values lc91a_fertfilt lc91a_fertfilt_lbl

label define lc91a_chborn_lbl 00 `"0"'
label define lc91a_chborn_lbl 01 `"1"', add
label define lc91a_chborn_lbl 02 `"2"', add
label define lc91a_chborn_lbl 03 `"3"', add
label define lc91a_chborn_lbl 04 `"4"', add
label define lc91a_chborn_lbl 05 `"5"', add
label define lc91a_chborn_lbl 06 `"6"', add
label define lc91a_chborn_lbl 07 `"7"', add
label define lc91a_chborn_lbl 08 `"8"', add
label define lc91a_chborn_lbl 09 `"9"', add
label define lc91a_chborn_lbl 10 `"10"', add
label define lc91a_chborn_lbl 11 `"11"', add
label define lc91a_chborn_lbl 12 `"12+"', add
label define lc91a_chborn_lbl 98 `"Unknown"', add
label define lc91a_chborn_lbl 99 `"NIU (not in universe)"', add
label values lc91a_chborn lc91a_chborn_lbl

label define lc91a_blastyr_lbl 1 `"No"'
label define lc91a_blastyr_lbl 2 `"Yes"', add
label define lc91a_blastyr_lbl 8 `"Unknown"', add
label define lc91a_blastyr_lbl 9 `"NIU (not in universe)"', add
label values lc91a_blastyr lc91a_blastyr_lbl

label define lc91a_dis1_lbl 1 `"Yes"'
label define lc91a_dis1_lbl 2 `"No"', add
label values lc91a_dis1 lc91a_dis1_lbl

label define lc91a_dis2_lbl 1 `"Yes"'
label define lc91a_dis2_lbl 2 `"No"', add
label values lc91a_dis2 lc91a_dis2_lbl

label define lc91a_dis3_lbl 1 `"Yes"'
label define lc91a_dis3_lbl 2 `"No"', add
label values lc91a_dis3 lc91a_dis3_lbl

label define lc91a_dis4_lbl 1 `"Yes"'
label define lc91a_dis4_lbl 2 `"No"', add
label values lc91a_dis4 lc91a_dis4_lbl

label define lc91a_dis5_lbl 1 `"Yes"'
label define lc91a_dis5_lbl 2 `"No"', add
label values lc91a_dis5 lc91a_dis5_lbl

label define lc91a_dis6_lbl 1 `"Yes"'
label define lc91a_dis6_lbl 2 `"No"', add
label values lc91a_dis6 lc91a_dis6_lbl

label define lc91a_dis7_lbl 1 `"Yes"'
label define lc91a_dis7_lbl 2 `"No"', add
label values lc91a_dis7 lc91a_dis7_lbl

label define lc91a_dis8_lbl 1 `"Yes"'
label define lc91a_dis8_lbl 2 `"No"', add
label values lc91a_dis8 lc91a_dis8_lbl

label define lc91a_dis9_lbl 1 `"Yes"'
label define lc91a_dis9_lbl 2 `"No"', add
label values lc91a_dis9 lc91a_dis9_lbl

label define lc91a_lim1_lbl 1 `"Yes"'
label define lc91a_lim1_lbl 2 `"No"', add
label values lc91a_lim1 lc91a_lim1_lbl

label define lc91a_lim2_lbl 1 `"Yes"'
label define lc91a_lim2_lbl 2 `"No"', add
label values lc91a_lim2 lc91a_lim2_lbl

label define lc91a_lim3_lbl 1 `"Yes"'
label define lc91a_lim3_lbl 2 `"No"', add
label values lc91a_lim3 lc91a_lim3_lbl

label define lc91a_lim4_lbl 1 `"Yes"'
label define lc91a_lim4_lbl 2 `"No"', add
label values lc91a_lim4 lc91a_lim4_lbl

label define lc91a_lim5_lbl 1 `"Yes"'
label define lc91a_lim5_lbl 2 `"No"', add
label values lc91a_lim5 lc91a_lim5_lbl

label define lc91a_lim6_lbl 1 `"Yes"'
label define lc91a_lim6_lbl 2 `"No"', add
label values lc91a_lim6 lc91a_lim6_lbl


