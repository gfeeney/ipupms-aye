* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  byte    ir06a_rectype   22-22    ///
  long    ir06a_dwnum     23-28    ///
  byte    ir06a_pern      29-30    ///
  byte    ir06a_fbig      31-31    ///
  byte    ir06a_fbig_nh   32-33    ///
  byte    ir06a_prov      34-35    ///
  byte    ir06a_urb       36-36    ///
  byte    ir06a_hhtype    37-37    ///
  byte    ir06a_motobike  38-38    ///
  byte    ir06a_auto      39-39    ///
  byte    ir06a_pc        40-40    ///
  byte    ir06a_internet  41-41    ///
  byte    ir06a_fuelcook  42-42    ///
  byte    ir06a_fuelheat  43-43    ///
  byte    ir06a_fuelwatr  44-44    ///
  byte    ir06a_watdrink  45-45    ///
  byte    ir06a_watcook   46-46    ///
  byte    ir06a_watother  47-47    ///
  byte    ir06a_dwtype    48-48    ///
  byte    ir06a_rooms     49-50    ///
  byte    ir06a_ownershp  51-51    ///
  byte    ir06a_electric  52-52    ///
  byte    ir06a_phone     53-53    ///
  byte    ir06a_phoneuse  54-54    ///
  byte    ir06a_pipewtr   55-55    ///
  byte    ir06a_pipewtru  56-56    ///
  byte    ir06a_pipegas   57-57    ///
  byte    ir06a_pipegasu  58-58    ///
  byte    ir06a_centheat  59-59    ///
  byte    ir06a_centair   60-60    ///
  byte    ir06a_kitchen   61-61    ///
  byte    ir06a_kitchenu  62-62    ///
  byte    ir06a_bath      63-63    ///
  byte    ir06a_bathuse   64-64    ///
  byte    ir06a_toilet    65-65    ///
  byte    ir06a_numhhs2   66-66    ///
  byte    ir06a_numhhs    67-68    ///
  byte    ir06a_roomshh   69-70    ///
  byte    ir06a_area      71-72    ///
  byte    ir06a_const     73-74    ///
  int     ir06a_yrbuilt   75-78    ///
  byte    ir06a_wastetoi  79-79    ///
  byte    ir06a_wastekit  80-80    ///
  byte    ir06a_wasteoth  81-81    ///
  byte    ir06a_persons   82-83    ///
  byte    ir06a_workerhh  84-85    ///
  byte    ir06a_unemphh   86-87    ///
  byte    ir06a_lithh     88-89    ///
  byte    ir06a_illithh   90-91    ///
  byte    ir06a_mstudhh   92-93    ///
  byte    ir06a_fstudhh   94-95    ///
  int     pernum          96-98    ///
  float   wtper           99-106   ///
  byte    ir06a_pernum    107-108  ///
  byte    ir06a_perno     109-110  ///
  byte    ir06a_relate    111-112  ///
  byte    ir06a_mother    113-113  ///
  byte    ir06a_momloc    114-115  ///
  byte    ir06a_resstat   116-116  ///
  byte    ir06a_birthmo   117-118  ///
  int     ir06a_birthyr   119-122  ///
  int     ir06a_age       123-125  ///
  byte    ir06a_bpl       126-126  ///
  byte    ir06a_relig     127-127  ///
  byte    ir06a_citiz     128-129  ///
  byte    ir06a_moved     130-130  ///
  byte    ir06a_durres    131-132  ///
  byte    ir06a_migreas   133-134  ///
  byte    ir06a_prevres   135-135  ///
  byte    ir06a_prevprov  136-137  ///
  byte    ir06a_school    138-138  ///
  byte    ir06a_lit       139-139  ///
  byte    ir06a_edlev     140-140  ///
  int     ir06a_edattain  141-143  ///
  int     ir06a_field3    144-146  ///
  byte    ir06a_empstat   147-148  ///
  int     ir06a_occ4      149-152  ///
  int     ir06a_occ3      153-155  ///
  int     ir06a_ind4      156-159  ///
  int     ir06a_ind3      160-162  ///
  byte    ir06a_classwk   163-163  ///
  byte    ir06a_workloc   164-164  ///
  byte    ir06a_marst     165-165  ///
  byte    ir06a_marrnum   166-167  ///
  byte    ir06a_everborn  168-168  ///
  byte    ir06a_chbornm   169-170  ///
  byte    ir06a_chbornf   171-172  ///
  byte    ir06a_chsurvm   173-174  ///
  byte    ir06a_chsurvf   175-176  ///
  byte    ir06a_brthyr    177-177  ///
  byte    ir06a_brthyrm   178-178  ///
  byte    ir06a_brthyrf   179-179  ///
  byte    ir06a_brthsurm  180-180  ///
  byte    ir06a_brthsurf  181-181  ///
  byte    ir06a_disab1    182-183  ///
  byte    ir06a_disab2    184-184  ///
  byte    ir06a_disab3    185-185  ///
  byte    ir06a_disabnum  186-186  ///
  int     ir06a_bpl2      187-189  ///
  int     ir06a_citiz2    190-192  ///
  using `"ipumsi_00079.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var ir06a_rectype  `"Record type"'
label var ir06a_dwnum    `"Dwelling number"'
label var ir06a_pern     `"Number of persons in household"'
label var ir06a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var ir06a_fbig_nh  `"Number of persons in large household before it was split"'
label var ir06a_prov     `"Province"'
label var ir06a_urb      `"Urban - rural status"'
label var ir06a_hhtype   `"Household type"'
label var ir06a_motobike `"Motorcycle (and moped)"'
label var ir06a_auto     `"Light automobile (car, pick-up, etc)"'
label var ir06a_pc       `"Computer"'
label var ir06a_internet `"Household member uses internet in residence"'
label var ir06a_fuelcook `"Fuel for cooking"'
label var ir06a_fuelheat `"Fuel for heating"'
label var ir06a_fuelwatr `"Fuel for hot water"'
label var ir06a_watdrink `"Water supply for drinking"'
label var ir06a_watcook  `"Water supply for cooking"'
label var ir06a_watother `"Water supply for other uses"'
label var ir06a_dwtype   `"Type of housing unit"'
label var ir06a_rooms    `"Number of rooms in the household"'
label var ir06a_ownershp `"Type of tenure of the housing unit"'
label var ir06a_electric `"Electricity"'
label var ir06a_phone    `"Fixed phone line"'
label var ir06a_phoneuse `"Fixed phone line use"'
label var ir06a_pipewtr  `"Piped water"'
label var ir06a_pipewtru `"Piped water use"'
label var ir06a_pipegas  `"Piped gas"'
label var ir06a_pipegasu `"Piped gas use"'
label var ir06a_centheat `"Central heating system"'
label var ir06a_centair  `"Central air conditioning system"'
label var ir06a_kitchen  `"Kitchen"'
label var ir06a_kitchenu `"Kitchen use"'
label var ir06a_bath     `"Bathroom"'
label var ir06a_bathuse  `"Bathroom use"'
label var ir06a_toilet   `"Water closet"'
label var ir06a_numhhs2  `"Multiple households residing in housing unit"'
label var ir06a_numhhs   `"Number of households residing in this unit"'
label var ir06a_roomshh  `"Number of rooms in the housing unit"'
label var ir06a_area     `"Housing unit's floor area (square meters)"'
label var ir06a_const    `"Construction materials"'
label var ir06a_yrbuilt  `"Year the construction of the housing unit was completed"'
label var ir06a_wastetoi `"Place of sewagedisposal for the housing unit: water closet"'
label var ir06a_wastekit `"Place of sewage disposal for the housing unit: kitchen"'
label var ir06a_wasteoth `"Place of sewage disposal for the housing unit: other"'
label var ir06a_persons  `"Number of individuals in the household"'
label var ir06a_workerhh `"Number of working people in the household"'
label var ir06a_unemphh  `"Number of unemployed in the household"'
label var ir06a_lithh    `"Number of literate individuals"'
label var ir06a_illithh  `"Number of illiterate individuals"'
label var ir06a_mstudhh  `"Number of male students"'
label var ir06a_fstudhh  `"Number of female students"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var ir06a_pernum   `"Person number (within household)"'
label var ir06a_perno    `"Person number"'
label var ir06a_relate   `"Relationship to the head of household"'
label var ir06a_mother   `"Person's mother is a member of the household"'
label var ir06a_momloc   `"Mother's position in the household"'
label var ir06a_resstat  `"Residential status"'
label var ir06a_birthmo  `"Month of birth"'
label var ir06a_birthyr  `"Year of birth, Hijri (Gregorian) calendar"'
label var ir06a_age      `"Age"'
label var ir06a_bpl      `"Place of birth"'
label var ir06a_relig    `"Religion"'
label var ir06a_citiz    `"Citizenship"'
label var ir06a_moved    `"Changed city/village of residence since October 1996"'
label var ir06a_durres   `"Duration of residence in this city/village"'
label var ir06a_migreas  `"Reason for migration"'
label var ir06a_prevres  `"Previous place of residence"'
label var ir06a_prevprov `"Province of previous residence"'
label var ir06a_school   `"Current school attendace"'
label var ir06a_lit      `"Literacy"'
label var ir06a_edlev    `"Educationlevel"'
label var ir06a_edattain `"Grade, course or degree"'
label var ir06a_field3   `"Field of study, 3 digits"'
label var ir06a_empstat  `"Work status"'
label var ir06a_occ4     `"Occupation"'
label var ir06a_occ3     `"Occupation, 3-digit"'
label var ir06a_ind4     `"Industry"'
label var ir06a_ind3     `"Industry, 3-digit"'
label var ir06a_classwk  `"Status in employment"'
label var ir06a_workloc  `"Place of work/education"'
label var ir06a_marst    `"Marital status"'
label var ir06a_marrnum  `"Number of changes in marital status"'
label var ir06a_everborn `"Ever given birth to live children"'
label var ir06a_chbornm  `"Number of  live-born boys"'
label var ir06a_chbornf  `"Number of  live-born girls"'
label var ir06a_chsurvm  `"Number of boys currently alive"'
label var ir06a_chsurvf  `"Number of girls currently alive"'
label var ir06a_brthyr   `"Has given birth to live children in the past 365 days"'
label var ir06a_brthyrm  `"Number of live-born boys in the past 365 days"'
label var ir06a_brthyrf  `"Number of live-born girls in the past 365 days"'
label var ir06a_brthsurm `"Boys born last year currently alive"'
label var ir06a_brthsurf `"Girls born last year currently alive"'
label var ir06a_disab1   `"Disability status (first)"'
label var ir06a_disab2   `"Disability status (second)"'
label var ir06a_disab3   `"Disability status (third)"'
label var ir06a_disabnum `"Number of disabilities"'
label var ir06a_bpl2     `"Place of birth code"'
label var ir06a_citiz2   `"Country of citizenship code"'

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

label define ir06a_rectype_lbl 1 `"Household"'
label define ir06a_rectype_lbl 2 `"Person"', add
label values ir06a_rectype ir06a_rectype_lbl

label define ir06a_pern_lbl 01 `"1"'
label define ir06a_pern_lbl 02 `"2"', add
label define ir06a_pern_lbl 03 `"3"', add
label define ir06a_pern_lbl 04 `"4"', add
label define ir06a_pern_lbl 05 `"5"', add
label define ir06a_pern_lbl 06 `"6"', add
label define ir06a_pern_lbl 07 `"7"', add
label define ir06a_pern_lbl 08 `"8"', add
label define ir06a_pern_lbl 09 `"9"', add
label define ir06a_pern_lbl 10 `"10"', add
label define ir06a_pern_lbl 11 `"11"', add
label define ir06a_pern_lbl 12 `"12"', add
label define ir06a_pern_lbl 13 `"13"', add
label define ir06a_pern_lbl 14 `"14"', add
label define ir06a_pern_lbl 15 `"15"', add
label define ir06a_pern_lbl 16 `"16"', add
label define ir06a_pern_lbl 17 `"17"', add
label define ir06a_pern_lbl 18 `"18"', add
label define ir06a_pern_lbl 19 `"19"', add
label define ir06a_pern_lbl 20 `"20"', add
label define ir06a_pern_lbl 21 `"21"', add
label define ir06a_pern_lbl 22 `"22"', add
label define ir06a_pern_lbl 24 `"24"', add
label define ir06a_pern_lbl 25 `"25"', add
label define ir06a_pern_lbl 27 `"27"', add
label define ir06a_pern_lbl 29 `"29"', add
label values ir06a_pern ir06a_pern_lbl

label define ir06a_fbig_lbl 0 `"No problem"'
label define ir06a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define ir06a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values ir06a_fbig ir06a_fbig_lbl

label define ir06a_fbig_nh_lbl 00 `"Not split"'
label define ir06a_fbig_nh_lbl 36 `"36"', add
label define ir06a_fbig_nh_lbl 39 `"39"', add
label define ir06a_fbig_nh_lbl 64 `"64"', add
label values ir06a_fbig_nh ir06a_fbig_nh_lbl

label define ir06a_prov_lbl 00 `"Markazi"'
label define ir06a_prov_lbl 01 `"Gilan"', add
label define ir06a_prov_lbl 02 `"Mazandaran"', add
label define ir06a_prov_lbl 03 `"East Azarbayejan"', add
label define ir06a_prov_lbl 04 `"West Azarbayejan"', add
label define ir06a_prov_lbl 05 `"Kermanshah"', add
label define ir06a_prov_lbl 06 `"Khuzestan"', add
label define ir06a_prov_lbl 07 `"Fars"', add
label define ir06a_prov_lbl 08 `"Kerman"', add
label define ir06a_prov_lbl 09 `"Khorasan-e- Razavi"', add
label define ir06a_prov_lbl 10 `"Esfahan"', add
label define ir06a_prov_lbl 11 `"Sistan and Baluchestan"', add
label define ir06a_prov_lbl 12 `"Kordestan"', add
label define ir06a_prov_lbl 13 `"Hamedan."', add
label define ir06a_prov_lbl 14 `"Chaharmahal and Bakhtiyari"', add
label define ir06a_prov_lbl 15 `"Lorestan"', add
label define ir06a_prov_lbl 16 `"Ilam"', add
label define ir06a_prov_lbl 17 `"Kohgiluyeh  and Boyerahmad"', add
label define ir06a_prov_lbl 18 `"Bushehr"', add
label define ir06a_prov_lbl 19 `"Zanjan"', add
label define ir06a_prov_lbl 20 `"Semnan"', add
label define ir06a_prov_lbl 21 `"Yazd"', add
label define ir06a_prov_lbl 22 `"Hormozgan"', add
label define ir06a_prov_lbl 23 `"Tehran"', add
label define ir06a_prov_lbl 24 `"Ardebil"', add
label define ir06a_prov_lbl 25 `"Qom"', add
label define ir06a_prov_lbl 26 `"Qazvin"', add
label define ir06a_prov_lbl 27 `"Golestan"', add
label define ir06a_prov_lbl 28 `"North Khorasan"', add
label define ir06a_prov_lbl 29 `"South Khorasan"', add
label values ir06a_prov ir06a_prov_lbl

label define ir06a_urb_lbl 1 `"Rural"'
label define ir06a_urb_lbl 2 `"Urban"', add
label values ir06a_urb ir06a_urb_lbl

label define ir06a_hhtype_lbl 1 `"Private"'
label define ir06a_hhtype_lbl 2 `"Collective"', add
label values ir06a_hhtype ir06a_hhtype_lbl

label define ir06a_motobike_lbl 1 `"No"'
label define ir06a_motobike_lbl 2 `"Yes"', add
label define ir06a_motobike_lbl 8 `"Unknown"', add
label define ir06a_motobike_lbl 9 `"NIU (not in universe)"', add
label values ir06a_motobike ir06a_motobike_lbl

label define ir06a_auto_lbl 1 `"No"'
label define ir06a_auto_lbl 2 `"Yes"', add
label define ir06a_auto_lbl 8 `"Unknown"', add
label define ir06a_auto_lbl 9 `"NIU (not in universe)"', add
label values ir06a_auto ir06a_auto_lbl

label define ir06a_pc_lbl 1 `"No"'
label define ir06a_pc_lbl 2 `"Yes"', add
label define ir06a_pc_lbl 8 `"Unknown"', add
label define ir06a_pc_lbl 9 `"NIU (not in universe)"', add
label values ir06a_pc ir06a_pc_lbl

label define ir06a_internet_lbl 1 `"No"'
label define ir06a_internet_lbl 2 `"Yes"', add
label define ir06a_internet_lbl 8 `"Unknown"', add
label define ir06a_internet_lbl 9 `"NIU (not in universe)"', add
label values ir06a_internet ir06a_internet_lbl

label define ir06a_fuelcook_lbl 1 `"Kerosene"'
label define ir06a_fuelcook_lbl 3 `"Liquid gas"', add
label define ir06a_fuelcook_lbl 4 `"Natural gas (public network)"', add
label define ir06a_fuelcook_lbl 5 `"Electricity"', add
label define ir06a_fuelcook_lbl 6 `"Solid fuel (firewood, charcoal)"', add
label define ir06a_fuelcook_lbl 7 `"Other"', add
label define ir06a_fuelcook_lbl 9 `"Unknown"', add
label values ir06a_fuelcook ir06a_fuelcook_lbl

label define ir06a_fuelheat_lbl 1 `"Kerosene"'
label define ir06a_fuelheat_lbl 2 `"Gas oil"', add
label define ir06a_fuelheat_lbl 3 `"Liquid gas"', add
label define ir06a_fuelheat_lbl 4 `"Natural gas (public network)"', add
label define ir06a_fuelheat_lbl 5 `"Electricity"', add
label define ir06a_fuelheat_lbl 6 `"Solid fuel (firewood, charcoal)"', add
label define ir06a_fuelheat_lbl 7 `"Other"', add
label define ir06a_fuelheat_lbl 8 `"None"', add
label define ir06a_fuelheat_lbl 9 `"Unknown"', add
label values ir06a_fuelheat ir06a_fuelheat_lbl

label define ir06a_fuelwatr_lbl 1 `"Kerosene"'
label define ir06a_fuelwatr_lbl 2 `"Gas oil"', add
label define ir06a_fuelwatr_lbl 3 `"Liquid gas"', add
label define ir06a_fuelwatr_lbl 4 `"Natural gas (public network)"', add
label define ir06a_fuelwatr_lbl 5 `"Electricity"', add
label define ir06a_fuelwatr_lbl 6 `"Solid fuel (firewood, charcoal)"', add
label define ir06a_fuelwatr_lbl 7 `"Other"', add
label define ir06a_fuelwatr_lbl 9 `"Unknown"', add
label values ir06a_fuelwatr ir06a_fuelwatr_lbl

label define ir06a_watdrink_lbl 1 `"Public water network in city / village"'
label define ir06a_watdrink_lbl 2 `"Improved well, spring, aqueduct, water reservoir"', add
label define ir06a_watdrink_lbl 3 `"Unimproved well, spring, aqueduct, water reservoir"', add
label define ir06a_watdrink_lbl 4 `"Water tank (fixed, mobile)"', add
label define ir06a_watdrink_lbl 5 `"Packed water (bottle, gallon)"', add
label define ir06a_watdrink_lbl 6 `"River, pond, brook, rain water"', add
label define ir06a_watdrink_lbl 7 `"Other"', add
label define ir06a_watdrink_lbl 9 `"Unknown"', add
label values ir06a_watdrink ir06a_watdrink_lbl

label define ir06a_watcook_lbl 1 `"Public water network in city / village"'
label define ir06a_watcook_lbl 2 `"Improved well, spring, aqueduct, water reservoir"', add
label define ir06a_watcook_lbl 3 `"Unimproved well, spring, aqueduct, water reservoir"', add
label define ir06a_watcook_lbl 4 `"Water tank (fixed, mobile)"', add
label define ir06a_watcook_lbl 5 `"Packed water (bottle, gallon)"', add
label define ir06a_watcook_lbl 6 `"River, pond, brook, rain water"', add
label define ir06a_watcook_lbl 7 `"Other"', add
label define ir06a_watcook_lbl 9 `"Unknown"', add
label values ir06a_watcook ir06a_watcook_lbl

label define ir06a_watother_lbl 1 `"Public water network in city / village"'
label define ir06a_watother_lbl 2 `"Improved well, spring, aqueduct, water reservoir"', add
label define ir06a_watother_lbl 3 `"Unimproved well, spring, aqueduct, water reservoir"', add
label define ir06a_watother_lbl 4 `"Water tank (fixed, mobile)"', add
label define ir06a_watother_lbl 6 `"River, pond, brook, rain water"', add
label define ir06a_watother_lbl 9 `"Unknown"', add
label values ir06a_watother ir06a_watother_lbl

label define ir06a_dwtype_lbl 1 `"Conventional residential unit"'
label define ir06a_dwtype_lbl 2 `"Tent"', add
label define ir06a_dwtype_lbl 3 `"Lodge"', add
label define ir06a_dwtype_lbl 4 `"Hut"', add
label define ir06a_dwtype_lbl 5 `"Slum or similar dwelling"', add
label values ir06a_dwtype ir06a_dwtype_lbl

label define ir06a_rooms_lbl 01 `"1"'
label define ir06a_rooms_lbl 02 `"2"', add
label define ir06a_rooms_lbl 03 `"3"', add
label define ir06a_rooms_lbl 04 `"4"', add
label define ir06a_rooms_lbl 05 `"5"', add
label define ir06a_rooms_lbl 06 `"6"', add
label define ir06a_rooms_lbl 07 `"7"', add
label define ir06a_rooms_lbl 08 `"8"', add
label define ir06a_rooms_lbl 09 `"9"', add
label define ir06a_rooms_lbl 10 `"10"', add
label define ir06a_rooms_lbl 11 `"11"', add
label define ir06a_rooms_lbl 12 `"12"', add
label define ir06a_rooms_lbl 13 `"13"', add
label define ir06a_rooms_lbl 14 `"14"', add
label define ir06a_rooms_lbl 15 `"15"', add
label define ir06a_rooms_lbl 16 `"16"', add
label define ir06a_rooms_lbl 17 `"17"', add
label define ir06a_rooms_lbl 18 `"18"', add
label define ir06a_rooms_lbl 19 `"19"', add
label define ir06a_rooms_lbl 20 `"20"', add
label define ir06a_rooms_lbl 22 `"22"', add
label define ir06a_rooms_lbl 25 `"25"', add
label define ir06a_rooms_lbl 98 `"Unknown"', add
label define ir06a_rooms_lbl 99 `"NIU (not in universe)"', add
label values ir06a_rooms ir06a_rooms_lbl

label define ir06a_ownershp_lbl 1 `"Owned land and building"'
label define ir06a_ownershp_lbl 2 `"Owned building"', add
label define ir06a_ownershp_lbl 3 `"Rented"', add
label define ir06a_ownershp_lbl 4 `"Against service"', add
label define ir06a_ownershp_lbl 5 `"Rent-free"', add
label define ir06a_ownershp_lbl 6 `"Other"', add
label define ir06a_ownershp_lbl 8 `"Unknown"', add
label define ir06a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values ir06a_ownershp ir06a_ownershp_lbl

label define ir06a_electric_lbl 0 `"No"'
label define ir06a_electric_lbl 1 `"Yes"', add
label values ir06a_electric ir06a_electric_lbl

label define ir06a_phone_lbl 0 `"No"'
label define ir06a_phone_lbl 1 `"Yes"', add
label define ir06a_phone_lbl 9 `"Unknown"', add
label values ir06a_phone ir06a_phone_lbl

label define ir06a_phoneuse_lbl 0 `"No"'
label define ir06a_phoneuse_lbl 1 `"Yes"', add
label define ir06a_phoneuse_lbl 9 `"Unknown"', add
label values ir06a_phoneuse ir06a_phoneuse_lbl

label define ir06a_pipewtr_lbl 0 `"No"'
label define ir06a_pipewtr_lbl 1 `"Yes"', add
label define ir06a_pipewtr_lbl 9 `"Unknown"', add
label values ir06a_pipewtr ir06a_pipewtr_lbl

label define ir06a_pipewtru_lbl 0 `"No"'
label define ir06a_pipewtru_lbl 1 `"Yes"', add
label values ir06a_pipewtru ir06a_pipewtru_lbl

label define ir06a_pipegas_lbl 0 `"No"'
label define ir06a_pipegas_lbl 1 `"Yes"', add
label values ir06a_pipegas ir06a_pipegas_lbl

label define ir06a_pipegasu_lbl 0 `"No"'
label define ir06a_pipegasu_lbl 1 `"Yes"', add
label values ir06a_pipegasu ir06a_pipegasu_lbl

label define ir06a_centheat_lbl 0 `"No"'
label define ir06a_centheat_lbl 1 `"Yes"', add
label define ir06a_centheat_lbl 9 `"Unknown"', add
label values ir06a_centheat ir06a_centheat_lbl

label define ir06a_centair_lbl 0 `"No"'
label define ir06a_centair_lbl 1 `"Yes"', add
label define ir06a_centair_lbl 9 `"Unknown"', add
label values ir06a_centair ir06a_centair_lbl

label define ir06a_kitchen_lbl 0 `"No"'
label define ir06a_kitchen_lbl 1 `"Yes"', add
label define ir06a_kitchen_lbl 9 `"Unknown"', add
label values ir06a_kitchen ir06a_kitchen_lbl

label define ir06a_kitchenu_lbl 0 `"No"'
label define ir06a_kitchenu_lbl 1 `"Yes"', add
label values ir06a_kitchenu ir06a_kitchenu_lbl

label define ir06a_bath_lbl 0 `"No"'
label define ir06a_bath_lbl 1 `"Yes"', add
label define ir06a_bath_lbl 9 `"Unknown"', add
label values ir06a_bath ir06a_bath_lbl

label define ir06a_bathuse_lbl 0 `"No"'
label define ir06a_bathuse_lbl 1 `"Yes"', add
label values ir06a_bathuse ir06a_bathuse_lbl

label define ir06a_toilet_lbl 0 `"No"'
label define ir06a_toilet_lbl 1 `"Yes"', add
label values ir06a_toilet ir06a_toilet_lbl

label define ir06a_numhhs2_lbl 0 `"More than one household"'
label define ir06a_numhhs2_lbl 1 `"One household"', add
label values ir06a_numhhs2 ir06a_numhhs2_lbl

label define ir06a_numhhs_lbl 01 `"1"'
label define ir06a_numhhs_lbl 02 `"2"', add
label define ir06a_numhhs_lbl 03 `"3"', add
label define ir06a_numhhs_lbl 04 `"4"', add
label define ir06a_numhhs_lbl 05 `"5"', add
label define ir06a_numhhs_lbl 06 `"6"', add
label define ir06a_numhhs_lbl 07 `"7"', add
label define ir06a_numhhs_lbl 08 `"8"', add
label define ir06a_numhhs_lbl 09 `"9"', add
label define ir06a_numhhs_lbl 10 `"10"', add
label define ir06a_numhhs_lbl 11 `"11"', add
label define ir06a_numhhs_lbl 12 `"12"', add
label define ir06a_numhhs_lbl 13 `"13"', add
label define ir06a_numhhs_lbl 14 `"14"', add
label define ir06a_numhhs_lbl 15 `"15"', add
label define ir06a_numhhs_lbl 16 `"16"', add
label define ir06a_numhhs_lbl 17 `"17"', add
label define ir06a_numhhs_lbl 18 `"18"', add
label define ir06a_numhhs_lbl 20 `"20"', add
label define ir06a_numhhs_lbl 99 `"NIU (not in universe)"', add
label values ir06a_numhhs ir06a_numhhs_lbl

label define ir06a_roomshh_lbl 01 `"1"'
label define ir06a_roomshh_lbl 02 `"2"', add
label define ir06a_roomshh_lbl 03 `"3"', add
label define ir06a_roomshh_lbl 04 `"4"', add
label define ir06a_roomshh_lbl 05 `"5"', add
label define ir06a_roomshh_lbl 06 `"6"', add
label define ir06a_roomshh_lbl 07 `"7"', add
label define ir06a_roomshh_lbl 08 `"8"', add
label define ir06a_roomshh_lbl 09 `"9"', add
label define ir06a_roomshh_lbl 10 `"10"', add
label define ir06a_roomshh_lbl 11 `"11"', add
label define ir06a_roomshh_lbl 12 `"12"', add
label define ir06a_roomshh_lbl 13 `"13"', add
label define ir06a_roomshh_lbl 14 `"14"', add
label define ir06a_roomshh_lbl 15 `"15"', add
label define ir06a_roomshh_lbl 16 `"16"', add
label define ir06a_roomshh_lbl 17 `"17"', add
label define ir06a_roomshh_lbl 18 `"18"', add
label define ir06a_roomshh_lbl 19 `"19"', add
label define ir06a_roomshh_lbl 20 `"20"', add
label define ir06a_roomshh_lbl 21 `"21"', add
label define ir06a_roomshh_lbl 22 `"22"', add
label define ir06a_roomshh_lbl 23 `"23"', add
label define ir06a_roomshh_lbl 24 `"24"', add
label define ir06a_roomshh_lbl 25 `"25"', add
label define ir06a_roomshh_lbl 98 `"Unknown"', add
label define ir06a_roomshh_lbl 99 `"NIU (not in universe)"', add
label values ir06a_roomshh ir06a_roomshh_lbl

label define ir06a_area_lbl 01 `"50 or fewer"'
label define ir06a_area_lbl 02 `"51 - 75"', add
label define ir06a_area_lbl 03 `"76 - 80"', add
label define ir06a_area_lbl 04 `"81 - 100"', add
label define ir06a_area_lbl 05 `"101 - 150"', add
label define ir06a_area_lbl 06 `"151 - 200"', add
label define ir06a_area_lbl 07 `"201 - 300"', add
label define ir06a_area_lbl 08 `"301 - 500"', add
label define ir06a_area_lbl 09 `"501 or more"', add
label define ir06a_area_lbl 99 `"NIU (not in universe)"', add
label values ir06a_area ir06a_area_lbl

label define ir06a_const_lbl 10 `"Metal"'
label define ir06a_const_lbl 20 `"Armed concrete"', add
label define ir06a_const_lbl 31 `"Brick and iron, or stone and iron"', add
label define ir06a_const_lbl 32 `"Brick and wood, or stone and wood"', add
label define ir06a_const_lbl 33 `"Concrete blocks (with any type of ceiling)"', add
label define ir06a_const_lbl 34 `"Bricks only, or stone and brick"', add
label define ir06a_const_lbl 35 `"Wood only"', add
label define ir06a_const_lbl 36 `"Sun-dried brick and wood"', add
label define ir06a_const_lbl 37 `"Sun-dried brick and clay"', add
label define ir06a_const_lbl 38 `"Other"', add
label define ir06a_const_lbl 98 `"Unknown"', add
label define ir06a_const_lbl 99 `"NIU (not in universe)"', add
label values ir06a_const ir06a_const_lbl

label define ir06a_yrbuilt_lbl 1965 `"Before 1966"'
label define ir06a_yrbuilt_lbl 1966 `"1966-1975"', add
label define ir06a_yrbuilt_lbl 1976 `"1976-1985"', add
label define ir06a_yrbuilt_lbl 1986 `"1986-1995"', add
label define ir06a_yrbuilt_lbl 1996 `"1996"', add
label define ir06a_yrbuilt_lbl 1997 `"1997"', add
label define ir06a_yrbuilt_lbl 1998 `"1998"', add
label define ir06a_yrbuilt_lbl 1999 `"1999"', add
label define ir06a_yrbuilt_lbl 2000 `"2000"', add
label define ir06a_yrbuilt_lbl 2001 `"2001"', add
label define ir06a_yrbuilt_lbl 2002 `"2002"', add
label define ir06a_yrbuilt_lbl 2003 `"2003"', add
label define ir06a_yrbuilt_lbl 2004 `"2004"', add
label define ir06a_yrbuilt_lbl 2005 `"2005"', add
label define ir06a_yrbuilt_lbl 2006 `"2006"', add
label define ir06a_yrbuilt_lbl 9998 `"Unknown"', add
label define ir06a_yrbuilt_lbl 9999 `"NIU (not in universe)"', add
label values ir06a_yrbuilt ir06a_yrbuilt_lbl

label define ir06a_wastetoi_lbl 1 `"Public sewage network"'
label define ir06a_wastetoi_lbl 2 `"Private network"', add
label define ir06a_wastetoi_lbl 3 `"Absorbing well"', add
label define ir06a_wastetoi_lbl 4 `"Specific sewage tank (septic tank)"', add
label define ir06a_wastetoi_lbl 5 `"Area around the unit"', add
label define ir06a_wastetoi_lbl 6 `"Other"', add
label define ir06a_wastetoi_lbl 9 `"Unknown"', add
label values ir06a_wastetoi ir06a_wastetoi_lbl

label define ir06a_wastekit_lbl 1 `"Public sewage network"'
label define ir06a_wastekit_lbl 2 `"Private network"', add
label define ir06a_wastekit_lbl 3 `"Absorbing well"', add
label define ir06a_wastekit_lbl 4 `"Specific sewage tank (septic tank)"', add
label define ir06a_wastekit_lbl 5 `"Area around the unit"', add
label define ir06a_wastekit_lbl 6 `"Other"', add
label define ir06a_wastekit_lbl 8 `"Unknown"', add
label define ir06a_wastekit_lbl 9 `"NIU (not in universe)"', add
label values ir06a_wastekit ir06a_wastekit_lbl

label define ir06a_wasteoth_lbl 1 `"Public sewage network"'
label define ir06a_wasteoth_lbl 2 `"Private network"', add
label define ir06a_wasteoth_lbl 3 `"Absorbing well"', add
label define ir06a_wasteoth_lbl 4 `"Specific sewage tank (septic tank)"', add
label define ir06a_wasteoth_lbl 5 `"Area around the unit"', add
label define ir06a_wasteoth_lbl 6 `"Other"', add
label define ir06a_wasteoth_lbl 8 `"Unknown"', add
label define ir06a_wasteoth_lbl 9 `"NIU (not in universe)"', add
label values ir06a_wasteoth ir06a_wasteoth_lbl

label define ir06a_persons_lbl 01 `"1"'
label define ir06a_persons_lbl 02 `"2"', add
label define ir06a_persons_lbl 03 `"3"', add
label define ir06a_persons_lbl 04 `"4"', add
label define ir06a_persons_lbl 05 `"5"', add
label define ir06a_persons_lbl 06 `"6"', add
label define ir06a_persons_lbl 07 `"7"', add
label define ir06a_persons_lbl 08 `"8"', add
label define ir06a_persons_lbl 09 `"9"', add
label define ir06a_persons_lbl 10 `"10"', add
label define ir06a_persons_lbl 11 `"11"', add
label define ir06a_persons_lbl 12 `"12"', add
label define ir06a_persons_lbl 13 `"13"', add
label define ir06a_persons_lbl 14 `"14"', add
label define ir06a_persons_lbl 15 `"15"', add
label define ir06a_persons_lbl 16 `"16"', add
label define ir06a_persons_lbl 17 `"17"', add
label define ir06a_persons_lbl 18 `"18"', add
label define ir06a_persons_lbl 19 `"19"', add
label define ir06a_persons_lbl 20 `"20"', add
label define ir06a_persons_lbl 21 `"21"', add
label define ir06a_persons_lbl 22 `"22"', add
label define ir06a_persons_lbl 24 `"24"', add
label define ir06a_persons_lbl 25 `"25"', add
label define ir06a_persons_lbl 27 `"27"', add
label define ir06a_persons_lbl 29 `"29"', add
label define ir06a_persons_lbl 36 `"36"', add
label define ir06a_persons_lbl 39 `"39"', add
label define ir06a_persons_lbl 64 `"64"', add
label values ir06a_persons ir06a_persons_lbl

label define ir06a_workerhh_lbl 00 `"No practitioners"'
label define ir06a_workerhh_lbl 01 `"1"', add
label define ir06a_workerhh_lbl 02 `"2"', add
label define ir06a_workerhh_lbl 03 `"3"', add
label define ir06a_workerhh_lbl 04 `"4"', add
label define ir06a_workerhh_lbl 05 `"5"', add
label define ir06a_workerhh_lbl 06 `"6"', add
label define ir06a_workerhh_lbl 07 `"7"', add
label define ir06a_workerhh_lbl 08 `"8"', add
label define ir06a_workerhh_lbl 09 `"9"', add
label define ir06a_workerhh_lbl 10 `"10"', add
label define ir06a_workerhh_lbl 11 `"11"', add
label define ir06a_workerhh_lbl 12 `"12"', add
label define ir06a_workerhh_lbl 13 `"13"', add
label define ir06a_workerhh_lbl 14 `"14"', add
label define ir06a_workerhh_lbl 15 `"15"', add
label define ir06a_workerhh_lbl 16 `"16"', add
label define ir06a_workerhh_lbl 17 `"17"', add
label define ir06a_workerhh_lbl 18 `"18"', add
label define ir06a_workerhh_lbl 19 `"19"', add
label define ir06a_workerhh_lbl 20 `"20"', add
label define ir06a_workerhh_lbl 21 `"21"', add
label define ir06a_workerhh_lbl 22 `"22"', add
label define ir06a_workerhh_lbl 29 `"29"', add
label define ir06a_workerhh_lbl 36 `"36"', add
label define ir06a_workerhh_lbl 64 `"64"', add
label values ir06a_workerhh ir06a_workerhh_lbl

label define ir06a_unemphh_lbl 00 `"No unemployed persons"'
label define ir06a_unemphh_lbl 01 `"1"', add
label define ir06a_unemphh_lbl 02 `"2"', add
label define ir06a_unemphh_lbl 03 `"3"', add
label define ir06a_unemphh_lbl 04 `"4"', add
label define ir06a_unemphh_lbl 05 `"5"', add
label define ir06a_unemphh_lbl 06 `"6"', add
label define ir06a_unemphh_lbl 07 `"7"', add
label define ir06a_unemphh_lbl 08 `"8"', add
label define ir06a_unemphh_lbl 09 `"9"', add
label define ir06a_unemphh_lbl 10 `"10"', add
label define ir06a_unemphh_lbl 11 `"11"', add
label values ir06a_unemphh ir06a_unemphh_lbl

label define ir06a_lithh_lbl 00 `"No literate persons"'
label define ir06a_lithh_lbl 01 `"1"', add
label define ir06a_lithh_lbl 02 `"2"', add
label define ir06a_lithh_lbl 03 `"3"', add
label define ir06a_lithh_lbl 04 `"4"', add
label define ir06a_lithh_lbl 05 `"5"', add
label define ir06a_lithh_lbl 06 `"6"', add
label define ir06a_lithh_lbl 07 `"7"', add
label define ir06a_lithh_lbl 08 `"8"', add
label define ir06a_lithh_lbl 09 `"9"', add
label define ir06a_lithh_lbl 10 `"10"', add
label define ir06a_lithh_lbl 11 `"11"', add
label define ir06a_lithh_lbl 12 `"12"', add
label define ir06a_lithh_lbl 13 `"13"', add
label define ir06a_lithh_lbl 14 `"14"', add
label define ir06a_lithh_lbl 15 `"15"', add
label define ir06a_lithh_lbl 16 `"16"', add
label define ir06a_lithh_lbl 17 `"17"', add
label define ir06a_lithh_lbl 18 `"18"', add
label define ir06a_lithh_lbl 19 `"19"', add
label define ir06a_lithh_lbl 20 `"20"', add
label define ir06a_lithh_lbl 21 `"21"', add
label define ir06a_lithh_lbl 22 `"22"', add
label define ir06a_lithh_lbl 25 `"25"', add
label define ir06a_lithh_lbl 27 `"27"', add
label define ir06a_lithh_lbl 29 `"29"', add
label define ir06a_lithh_lbl 36 `"36"', add
label define ir06a_lithh_lbl 62 `"62"', add
label values ir06a_lithh ir06a_lithh_lbl

label define ir06a_illithh_lbl 00 `"No illiterate persons"'
label define ir06a_illithh_lbl 01 `"1"', add
label define ir06a_illithh_lbl 02 `"2"', add
label define ir06a_illithh_lbl 03 `"3"', add
label define ir06a_illithh_lbl 04 `"4"', add
label define ir06a_illithh_lbl 05 `"5"', add
label define ir06a_illithh_lbl 06 `"6"', add
label define ir06a_illithh_lbl 07 `"7"', add
label define ir06a_illithh_lbl 08 `"8"', add
label define ir06a_illithh_lbl 09 `"9"', add
label define ir06a_illithh_lbl 10 `"10"', add
label define ir06a_illithh_lbl 11 `"11"', add
label define ir06a_illithh_lbl 12 `"12"', add
label define ir06a_illithh_lbl 13 `"13"', add
label define ir06a_illithh_lbl 14 `"14"', add
label define ir06a_illithh_lbl 15 `"15"', add
label define ir06a_illithh_lbl 17 `"17"', add
label define ir06a_illithh_lbl 20 `"20"', add
label define ir06a_illithh_lbl 21 `"21"', add
label define ir06a_illithh_lbl 22 `"22"', add
label values ir06a_illithh ir06a_illithh_lbl

label define ir06a_mstudhh_lbl 00 `"No male students"'
label define ir06a_mstudhh_lbl 01 `"1"', add
label define ir06a_mstudhh_lbl 02 `"2"', add
label define ir06a_mstudhh_lbl 03 `"3"', add
label define ir06a_mstudhh_lbl 04 `"4"', add
label define ir06a_mstudhh_lbl 05 `"5"', add
label define ir06a_mstudhh_lbl 06 `"6"', add
label define ir06a_mstudhh_lbl 07 `"7"', add
label define ir06a_mstudhh_lbl 08 `"8"', add
label define ir06a_mstudhh_lbl 09 `"9"', add
label define ir06a_mstudhh_lbl 10 `"10"', add
label define ir06a_mstudhh_lbl 11 `"11"', add
label define ir06a_mstudhh_lbl 12 `"12"', add
label values ir06a_mstudhh ir06a_mstudhh_lbl

label define ir06a_fstudhh_lbl 00 `"No female students"'
label define ir06a_fstudhh_lbl 01 `"1"', add
label define ir06a_fstudhh_lbl 02 `"2"', add
label define ir06a_fstudhh_lbl 03 `"3"', add
label define ir06a_fstudhh_lbl 04 `"4"', add
label define ir06a_fstudhh_lbl 05 `"5"', add
label define ir06a_fstudhh_lbl 06 `"6"', add
label define ir06a_fstudhh_lbl 07 `"7"', add
label define ir06a_fstudhh_lbl 08 `"8"', add
label define ir06a_fstudhh_lbl 09 `"9"', add
label define ir06a_fstudhh_lbl 11 `"11"', add
label define ir06a_fstudhh_lbl 12 `"12"', add
label define ir06a_fstudhh_lbl 27 `"27"', add
label values ir06a_fstudhh ir06a_fstudhh_lbl

label define ir06a_pernum_lbl 00 `"Household record"'
label define ir06a_pernum_lbl 01 `"1"', add
label define ir06a_pernum_lbl 02 `"2"', add
label define ir06a_pernum_lbl 03 `"3"', add
label define ir06a_pernum_lbl 04 `"4"', add
label define ir06a_pernum_lbl 05 `"5"', add
label define ir06a_pernum_lbl 06 `"6"', add
label define ir06a_pernum_lbl 07 `"7"', add
label define ir06a_pernum_lbl 08 `"8"', add
label define ir06a_pernum_lbl 09 `"9"', add
label define ir06a_pernum_lbl 10 `"10"', add
label define ir06a_pernum_lbl 11 `"11"', add
label define ir06a_pernum_lbl 12 `"12"', add
label define ir06a_pernum_lbl 13 `"13"', add
label define ir06a_pernum_lbl 14 `"14"', add
label define ir06a_pernum_lbl 15 `"15"', add
label define ir06a_pernum_lbl 16 `"16"', add
label define ir06a_pernum_lbl 17 `"17"', add
label define ir06a_pernum_lbl 18 `"18"', add
label define ir06a_pernum_lbl 19 `"19"', add
label define ir06a_pernum_lbl 20 `"20"', add
label define ir06a_pernum_lbl 21 `"21"', add
label define ir06a_pernum_lbl 22 `"22"', add
label define ir06a_pernum_lbl 23 `"23"', add
label define ir06a_pernum_lbl 24 `"24"', add
label define ir06a_pernum_lbl 25 `"25"', add
label define ir06a_pernum_lbl 26 `"26"', add
label define ir06a_pernum_lbl 27 `"27"', add
label define ir06a_pernum_lbl 28 `"28"', add
label define ir06a_pernum_lbl 29 `"29"', add
label values ir06a_pernum ir06a_pernum_lbl

label define ir06a_perno_lbl 01 `"1"'
label define ir06a_perno_lbl 02 `"2"', add
label define ir06a_perno_lbl 03 `"3"', add
label define ir06a_perno_lbl 04 `"4"', add
label define ir06a_perno_lbl 05 `"5"', add
label define ir06a_perno_lbl 06 `"6"', add
label define ir06a_perno_lbl 07 `"7"', add
label define ir06a_perno_lbl 08 `"8"', add
label define ir06a_perno_lbl 09 `"9"', add
label define ir06a_perno_lbl 10 `"10"', add
label define ir06a_perno_lbl 11 `"11"', add
label define ir06a_perno_lbl 12 `"12"', add
label define ir06a_perno_lbl 13 `"13"', add
label define ir06a_perno_lbl 14 `"14"', add
label define ir06a_perno_lbl 15 `"15"', add
label define ir06a_perno_lbl 16 `"16"', add
label define ir06a_perno_lbl 17 `"17"', add
label define ir06a_perno_lbl 18 `"18"', add
label define ir06a_perno_lbl 19 `"19"', add
label define ir06a_perno_lbl 20 `"20"', add
label define ir06a_perno_lbl 21 `"21"', add
label define ir06a_perno_lbl 22 `"22"', add
label define ir06a_perno_lbl 23 `"23"', add
label define ir06a_perno_lbl 24 `"24"', add
label define ir06a_perno_lbl 25 `"25"', add
label define ir06a_perno_lbl 26 `"26"', add
label define ir06a_perno_lbl 27 `"27"', add
label define ir06a_perno_lbl 28 `"28"', add
label define ir06a_perno_lbl 29 `"29"', add
label define ir06a_perno_lbl 30 `"30"', add
label define ir06a_perno_lbl 31 `"31"', add
label define ir06a_perno_lbl 32 `"32"', add
label define ir06a_perno_lbl 33 `"33"', add
label define ir06a_perno_lbl 34 `"34"', add
label define ir06a_perno_lbl 35 `"35"', add
label define ir06a_perno_lbl 36 `"36"', add
label define ir06a_perno_lbl 37 `"37"', add
label define ir06a_perno_lbl 38 `"38"', add
label define ir06a_perno_lbl 39 `"39"', add
label define ir06a_perno_lbl 40 `"40"', add
label define ir06a_perno_lbl 41 `"41"', add
label define ir06a_perno_lbl 42 `"42"', add
label define ir06a_perno_lbl 43 `"43"', add
label define ir06a_perno_lbl 44 `"44"', add
label define ir06a_perno_lbl 45 `"45"', add
label define ir06a_perno_lbl 46 `"46"', add
label define ir06a_perno_lbl 47 `"47"', add
label define ir06a_perno_lbl 48 `"48"', add
label define ir06a_perno_lbl 49 `"49"', add
label define ir06a_perno_lbl 50 `"50"', add
label define ir06a_perno_lbl 51 `"51"', add
label define ir06a_perno_lbl 52 `"52"', add
label define ir06a_perno_lbl 53 `"53"', add
label define ir06a_perno_lbl 54 `"54"', add
label define ir06a_perno_lbl 55 `"55"', add
label define ir06a_perno_lbl 56 `"56"', add
label define ir06a_perno_lbl 57 `"57"', add
label define ir06a_perno_lbl 58 `"58"', add
label define ir06a_perno_lbl 59 `"59"', add
label define ir06a_perno_lbl 60 `"60"', add
label define ir06a_perno_lbl 61 `"61"', add
label define ir06a_perno_lbl 62 `"62"', add
label define ir06a_perno_lbl 63 `"63"', add
label define ir06a_perno_lbl 64 `"64"', add
label values ir06a_perno ir06a_perno_lbl

label define ir06a_relate_lbl 01 `"Head of household"'
label define ir06a_relate_lbl 02 `"Spouse"', add
label define ir06a_relate_lbl 03 `"Son / daughter"', add
label define ir06a_relate_lbl 04 `"Son / daughter-in-law"', add
label define ir06a_relate_lbl 05 `"Grandchild / great grandchild"', add
label define ir06a_relate_lbl 06 `"Father / mother"', add
label define ir06a_relate_lbl 07 `"Brother / sister"', add
label define ir06a_relate_lbl 08 `"Father / mother-in-law"', add
label define ir06a_relate_lbl 09 `"Brother / sister-in-law"', add
label define ir06a_relate_lbl 10 `"Other relatives"', add
label define ir06a_relate_lbl 11 `"Non-relatives"', add
label define ir06a_relate_lbl 12 `"Collective household"', add
label define ir06a_relate_lbl 98 `"Unknown"', add
label values ir06a_relate ir06a_relate_lbl

label define ir06a_mother_lbl 1 `"No"'
label define ir06a_mother_lbl 2 `"Yes"', add
label define ir06a_mother_lbl 9 `"NIU (not in universe)"', add
label values ir06a_mother ir06a_mother_lbl

label define ir06a_momloc_lbl 01 `"1"'
label define ir06a_momloc_lbl 02 `"2"', add
label define ir06a_momloc_lbl 03 `"3"', add
label define ir06a_momloc_lbl 04 `"4"', add
label define ir06a_momloc_lbl 05 `"5"', add
label define ir06a_momloc_lbl 06 `"6"', add
label define ir06a_momloc_lbl 07 `"7"', add
label define ir06a_momloc_lbl 08 `"8"', add
label define ir06a_momloc_lbl 09 `"9"', add
label define ir06a_momloc_lbl 10 `"10"', add
label define ir06a_momloc_lbl 11 `"11"', add
label define ir06a_momloc_lbl 12 `"12"', add
label define ir06a_momloc_lbl 13 `"13"', add
label define ir06a_momloc_lbl 14 `"14"', add
label define ir06a_momloc_lbl 15 `"15"', add
label define ir06a_momloc_lbl 16 `"16"', add
label define ir06a_momloc_lbl 17 `"17"', add
label define ir06a_momloc_lbl 18 `"18"', add
label define ir06a_momloc_lbl 19 `"19"', add
label define ir06a_momloc_lbl 20 `"20"', add
label define ir06a_momloc_lbl 22 `"22"', add
label define ir06a_momloc_lbl 30 `"30"', add
label define ir06a_momloc_lbl 38 `"38"', add
label define ir06a_momloc_lbl 99 `"NIU (not in universe)"', add
label values ir06a_momloc ir06a_momloc_lbl

label define ir06a_resstat_lbl 1 `"Present"'
label define ir06a_resstat_lbl 2 `"Temporarily absent"', add
label define ir06a_resstat_lbl 3 `"Abroad (for work or study)"', add
label define ir06a_resstat_lbl 4 `"Other"', add
label define ir06a_resstat_lbl 9 `"Unknown"', add
label values ir06a_resstat ir06a_resstat_lbl

label define ir06a_birthmo_lbl 01 `"Farvardin (March-April)"'
label define ir06a_birthmo_lbl 02 `"Ordibehest (April-May)"', add
label define ir06a_birthmo_lbl 03 `"Xordad (May-June)"', add
label define ir06a_birthmo_lbl 04 `"Tir (June-July)"', add
label define ir06a_birthmo_lbl 05 `"Mordad (July-August)"', add
label define ir06a_birthmo_lbl 06 `"Shahrivar (August-September)"', add
label define ir06a_birthmo_lbl 07 `"Mehr (September-October)"', add
label define ir06a_birthmo_lbl 08 `"Aban (October-November)"', add
label define ir06a_birthmo_lbl 09 `"Azar (November-December)"', add
label define ir06a_birthmo_lbl 10 `"Dey (December-January)"', add
label define ir06a_birthmo_lbl 11 `"Bahman (January-February)"', add
label define ir06a_birthmo_lbl 12 `"Esfand (February-March)"', add
label define ir06a_birthmo_lbl 99 `"Unknown"', add
label values ir06a_birthmo ir06a_birthmo_lbl

label define ir06a_birthyr_lbl 1286 `"1286 (1907-08)"'
label define ir06a_birthyr_lbl 1287 `"1287 (1908-09)"', add
label define ir06a_birthyr_lbl 1288 `"1288 (1909-10)"', add
label define ir06a_birthyr_lbl 1289 `"1289 (1910-11)"', add
label define ir06a_birthyr_lbl 1290 `"1290 (1911-12)"', add
label define ir06a_birthyr_lbl 1291 `"1291 (1912-13)"', add
label define ir06a_birthyr_lbl 1292 `"1292 (1913-14)"', add
label define ir06a_birthyr_lbl 1293 `"1293 (1914-15)"', add
label define ir06a_birthyr_lbl 1294 `"1294 (1915-16)"', add
label define ir06a_birthyr_lbl 1295 `"1295 (1916-17)"', add
label define ir06a_birthyr_lbl 1296 `"1296 (1917-18)"', add
label define ir06a_birthyr_lbl 1297 `"1297 (1918-19)"', add
label define ir06a_birthyr_lbl 1298 `"1298 (1919-20)"', add
label define ir06a_birthyr_lbl 1299 `"1299 (1920-21)"', add
label define ir06a_birthyr_lbl 1300 `"1300 (1921-22)"', add
label define ir06a_birthyr_lbl 1301 `"1301 (1922-23)"', add
label define ir06a_birthyr_lbl 1302 `"1302 (1923-24)"', add
label define ir06a_birthyr_lbl 1303 `"1303 (1924-25)"', add
label define ir06a_birthyr_lbl 1304 `"1304 (1925-36)"', add
label define ir06a_birthyr_lbl 1305 `"1305 (1926-27)"', add
label define ir06a_birthyr_lbl 1306 `"1306 (1927-28)"', add
label define ir06a_birthyr_lbl 1307 `"1307 (1928-29)"', add
label define ir06a_birthyr_lbl 1308 `"1308 (1929-30)"', add
label define ir06a_birthyr_lbl 1309 `"1309 (1930-31)"', add
label define ir06a_birthyr_lbl 1310 `"1310 (1931-32)"', add
label define ir06a_birthyr_lbl 1311 `"1311 (1932-33)"', add
label define ir06a_birthyr_lbl 1312 `"1312 (1933-34)"', add
label define ir06a_birthyr_lbl 1313 `"1313 (1934-35)"', add
label define ir06a_birthyr_lbl 1314 `"1314 (1935-36)"', add
label define ir06a_birthyr_lbl 1315 `"1315 (1936-37)"', add
label define ir06a_birthyr_lbl 1316 `"1316 (1937-38)"', add
label define ir06a_birthyr_lbl 1317 `"1317 (1938-39)"', add
label define ir06a_birthyr_lbl 1318 `"1318 (1939-40)"', add
label define ir06a_birthyr_lbl 1319 `"1319 (1940-41)"', add
label define ir06a_birthyr_lbl 1320 `"1320 (1941-42)"', add
label define ir06a_birthyr_lbl 1321 `"1321 (1942-43)"', add
label define ir06a_birthyr_lbl 1322 `"1322 (1943-44)"', add
label define ir06a_birthyr_lbl 1323 `"1323 (1944-45)"', add
label define ir06a_birthyr_lbl 1324 `"1324 (1945-46)"', add
label define ir06a_birthyr_lbl 1325 `"1325 (1946-47)"', add
label define ir06a_birthyr_lbl 1326 `"1326 (1947-48)"', add
label define ir06a_birthyr_lbl 1327 `"1327 (1948-49)"', add
label define ir06a_birthyr_lbl 1328 `"1328 (1949-50)"', add
label define ir06a_birthyr_lbl 1329 `"1329 (1950-51)"', add
label define ir06a_birthyr_lbl 1330 `"1330 (1951-52)"', add
label define ir06a_birthyr_lbl 1331 `"1331 (1952-53)"', add
label define ir06a_birthyr_lbl 1332 `"1332 (1953-54)"', add
label define ir06a_birthyr_lbl 1333 `"1333 (1954-55)"', add
label define ir06a_birthyr_lbl 1334 `"1334 (1955-56)"', add
label define ir06a_birthyr_lbl 1335 `"1335 (1956-57)"', add
label define ir06a_birthyr_lbl 1336 `"1336 (1957-58)"', add
label define ir06a_birthyr_lbl 1337 `"1337 (1958-59)"', add
label define ir06a_birthyr_lbl 1338 `"1338 (1959-60)"', add
label define ir06a_birthyr_lbl 1339 `"1339 (1960-61)"', add
label define ir06a_birthyr_lbl 1340 `"1340 (1961-62)"', add
label define ir06a_birthyr_lbl 1341 `"1341 (1962-63)"', add
label define ir06a_birthyr_lbl 1342 `"1342 (1963-64)"', add
label define ir06a_birthyr_lbl 1343 `"1343 (1964-65)"', add
label define ir06a_birthyr_lbl 1344 `"1344 (1965-66)"', add
label define ir06a_birthyr_lbl 1345 `"1345 (1966-67)"', add
label define ir06a_birthyr_lbl 1346 `"1346 (1967-68)"', add
label define ir06a_birthyr_lbl 1347 `"1347 (1968-69)"', add
label define ir06a_birthyr_lbl 1348 `"1348 (1969-70)"', add
label define ir06a_birthyr_lbl 1349 `"1349 (1970-71)"', add
label define ir06a_birthyr_lbl 1350 `"1350 (1971-72)"', add
label define ir06a_birthyr_lbl 1351 `"1351 (1972-73)"', add
label define ir06a_birthyr_lbl 1352 `"1352 (1973-74)"', add
label define ir06a_birthyr_lbl 1353 `"1353 (1974-75)"', add
label define ir06a_birthyr_lbl 1354 `"1354 (1975-76)"', add
label define ir06a_birthyr_lbl 1355 `"1355 (1976-77)"', add
label define ir06a_birthyr_lbl 1356 `"1356 (1977-78)"', add
label define ir06a_birthyr_lbl 1357 `"1357 (1978-79)"', add
label define ir06a_birthyr_lbl 1358 `"1358 (1979-80)"', add
label define ir06a_birthyr_lbl 1359 `"1359 (1980-81)"', add
label define ir06a_birthyr_lbl 1360 `"1360 (1981-82)"', add
label define ir06a_birthyr_lbl 1361 `"1361 (1982-83)"', add
label define ir06a_birthyr_lbl 1362 `"1362 (1983-84)"', add
label define ir06a_birthyr_lbl 1363 `"1363 (1984-85)"', add
label define ir06a_birthyr_lbl 1364 `"1364 (1985-86)"', add
label define ir06a_birthyr_lbl 1365 `"1365 (1986-87)"', add
label define ir06a_birthyr_lbl 1366 `"1366 (1987-88)"', add
label define ir06a_birthyr_lbl 1367 `"1367 (1988-89)"', add
label define ir06a_birthyr_lbl 1368 `"1368 (1989-90)"', add
label define ir06a_birthyr_lbl 1369 `"1369 (1990-91)"', add
label define ir06a_birthyr_lbl 1370 `"1370 (1991-92)"', add
label define ir06a_birthyr_lbl 1371 `"1371 (1992-93)"', add
label define ir06a_birthyr_lbl 1372 `"1372 (1993-94)"', add
label define ir06a_birthyr_lbl 1373 `"1373 (1994-95)"', add
label define ir06a_birthyr_lbl 1374 `"1374 (1995-96)"', add
label define ir06a_birthyr_lbl 1375 `"1375 (1996-97)"', add
label define ir06a_birthyr_lbl 1376 `"1376 (1997-98)"', add
label define ir06a_birthyr_lbl 1377 `"1377 (1998-99)"', add
label define ir06a_birthyr_lbl 1378 `"1378 (1999-00)"', add
label define ir06a_birthyr_lbl 1379 `"1379 (2000-01)"', add
label define ir06a_birthyr_lbl 1380 `"1380 (2001-02)"', add
label define ir06a_birthyr_lbl 1381 `"1381 (2002-03)"', add
label define ir06a_birthyr_lbl 1382 `"1382 (2003-04)"', add
label define ir06a_birthyr_lbl 1383 `"1383 (2004-05)"', add
label define ir06a_birthyr_lbl 1384 `"1384 (2005-06)"', add
label define ir06a_birthyr_lbl 1385 `"1385 (2006)"', add
label define ir06a_birthyr_lbl 9998 `"Unknown"', add
label values ir06a_birthyr ir06a_birthyr_lbl

label define ir06a_age_lbl 000 `"Younger than 1 year"'
label define ir06a_age_lbl 001 `"1"', add
label define ir06a_age_lbl 002 `"2"', add
label define ir06a_age_lbl 003 `"3"', add
label define ir06a_age_lbl 004 `"4"', add
label define ir06a_age_lbl 005 `"5"', add
label define ir06a_age_lbl 006 `"6"', add
label define ir06a_age_lbl 007 `"7"', add
label define ir06a_age_lbl 008 `"8"', add
label define ir06a_age_lbl 009 `"9"', add
label define ir06a_age_lbl 010 `"10"', add
label define ir06a_age_lbl 011 `"11"', add
label define ir06a_age_lbl 012 `"12"', add
label define ir06a_age_lbl 013 `"13"', add
label define ir06a_age_lbl 014 `"14"', add
label define ir06a_age_lbl 015 `"15"', add
label define ir06a_age_lbl 016 `"16"', add
label define ir06a_age_lbl 017 `"17"', add
label define ir06a_age_lbl 018 `"18"', add
label define ir06a_age_lbl 019 `"19"', add
label define ir06a_age_lbl 020 `"20"', add
label define ir06a_age_lbl 021 `"21"', add
label define ir06a_age_lbl 022 `"22"', add
label define ir06a_age_lbl 023 `"23"', add
label define ir06a_age_lbl 024 `"24"', add
label define ir06a_age_lbl 025 `"25"', add
label define ir06a_age_lbl 026 `"26"', add
label define ir06a_age_lbl 027 `"27"', add
label define ir06a_age_lbl 028 `"28"', add
label define ir06a_age_lbl 029 `"29"', add
label define ir06a_age_lbl 030 `"30"', add
label define ir06a_age_lbl 031 `"31"', add
label define ir06a_age_lbl 032 `"32"', add
label define ir06a_age_lbl 033 `"33"', add
label define ir06a_age_lbl 034 `"34"', add
label define ir06a_age_lbl 035 `"35"', add
label define ir06a_age_lbl 036 `"36"', add
label define ir06a_age_lbl 037 `"37"', add
label define ir06a_age_lbl 038 `"38"', add
label define ir06a_age_lbl 039 `"39"', add
label define ir06a_age_lbl 040 `"40"', add
label define ir06a_age_lbl 041 `"41"', add
label define ir06a_age_lbl 042 `"42"', add
label define ir06a_age_lbl 043 `"43"', add
label define ir06a_age_lbl 044 `"44"', add
label define ir06a_age_lbl 045 `"45"', add
label define ir06a_age_lbl 046 `"46"', add
label define ir06a_age_lbl 047 `"47"', add
label define ir06a_age_lbl 048 `"48"', add
label define ir06a_age_lbl 049 `"49"', add
label define ir06a_age_lbl 050 `"50"', add
label define ir06a_age_lbl 051 `"51"', add
label define ir06a_age_lbl 052 `"52"', add
label define ir06a_age_lbl 053 `"53"', add
label define ir06a_age_lbl 054 `"54"', add
label define ir06a_age_lbl 055 `"55"', add
label define ir06a_age_lbl 056 `"56"', add
label define ir06a_age_lbl 057 `"57"', add
label define ir06a_age_lbl 058 `"58"', add
label define ir06a_age_lbl 059 `"59"', add
label define ir06a_age_lbl 060 `"60"', add
label define ir06a_age_lbl 061 `"61"', add
label define ir06a_age_lbl 062 `"62"', add
label define ir06a_age_lbl 063 `"63"', add
label define ir06a_age_lbl 064 `"64"', add
label define ir06a_age_lbl 065 `"65"', add
label define ir06a_age_lbl 066 `"66"', add
label define ir06a_age_lbl 067 `"67"', add
label define ir06a_age_lbl 068 `"68"', add
label define ir06a_age_lbl 069 `"69"', add
label define ir06a_age_lbl 070 `"70"', add
label define ir06a_age_lbl 071 `"71"', add
label define ir06a_age_lbl 072 `"72"', add
label define ir06a_age_lbl 073 `"73"', add
label define ir06a_age_lbl 074 `"74"', add
label define ir06a_age_lbl 075 `"75"', add
label define ir06a_age_lbl 076 `"76"', add
label define ir06a_age_lbl 077 `"77"', add
label define ir06a_age_lbl 078 `"78"', add
label define ir06a_age_lbl 079 `"79"', add
label define ir06a_age_lbl 080 `"80"', add
label define ir06a_age_lbl 081 `"81"', add
label define ir06a_age_lbl 082 `"82"', add
label define ir06a_age_lbl 083 `"83"', add
label define ir06a_age_lbl 084 `"84"', add
label define ir06a_age_lbl 085 `"85"', add
label define ir06a_age_lbl 086 `"86"', add
label define ir06a_age_lbl 087 `"87"', add
label define ir06a_age_lbl 088 `"88"', add
label define ir06a_age_lbl 089 `"89"', add
label define ir06a_age_lbl 090 `"90"', add
label define ir06a_age_lbl 091 `"91"', add
label define ir06a_age_lbl 092 `"92"', add
label define ir06a_age_lbl 093 `"93"', add
label define ir06a_age_lbl 094 `"94"', add
label define ir06a_age_lbl 095 `"95"', add
label define ir06a_age_lbl 096 `"96"', add
label define ir06a_age_lbl 097 `"97"', add
label define ir06a_age_lbl 098 `"98"', add
label define ir06a_age_lbl 099 `"99"', add
label define ir06a_age_lbl 100 `"100+"', add
label values ir06a_age ir06a_age_lbl

label define ir06a_bpl_lbl 1 `"This city or village"'
label define ir06a_bpl_lbl 2 `"Other city"', add
label define ir06a_bpl_lbl 3 `"Other village"', add
label define ir06a_bpl_lbl 4 `"Abroad"', add
label define ir06a_bpl_lbl 9 `"Unknown"', add
label values ir06a_bpl ir06a_bpl_lbl

label define ir06a_relig_lbl 1 `"Muslim"'
label define ir06a_relig_lbl 2 `"Christian: Assyrian or Chaldean"', add
label define ir06a_relig_lbl 3 `"Christian: Armenian"', add
label define ir06a_relig_lbl 4 `"Other Christians"', add
label define ir06a_relig_lbl 5 `"Jewish"', add
label define ir06a_relig_lbl 6 `"Zoroastrian"', add
label define ir06a_relig_lbl 7 `"Other"', add
label define ir06a_relig_lbl 9 `"Unknown"', add
label values ir06a_relig ir06a_relig_lbl

label define ir06a_citiz_lbl 01 `"Iran"'
label define ir06a_citiz_lbl 02 `"Afghanistan"', add
label define ir06a_citiz_lbl 03 `"Iraq"', add
label define ir06a_citiz_lbl 04 `"Pakistan"', add
label define ir06a_citiz_lbl 05 `"Turkey"', add
label define ir06a_citiz_lbl 06 `"Turkmenistan"', add
label define ir06a_citiz_lbl 07 `"Azerbaijan"', add
label define ir06a_citiz_lbl 08 `"Armenia"', add
label define ir06a_citiz_lbl 09 `"Other countries"', add
label define ir06a_citiz_lbl 99 `"Unknown"', add
label values ir06a_citiz ir06a_citiz_lbl

label define ir06a_moved_lbl 2 `"No"'
label define ir06a_moved_lbl 1 `"Yes"', add
label define ir06a_moved_lbl 0 `"NIU (not in universe)"', add
label values ir06a_moved ir06a_moved_lbl

label define ir06a_durres_lbl 01 `"1"'
label define ir06a_durres_lbl 02 `"2"', add
label define ir06a_durres_lbl 03 `"3"', add
label define ir06a_durres_lbl 04 `"4"', add
label define ir06a_durres_lbl 05 `"5"', add
label define ir06a_durres_lbl 06 `"6"', add
label define ir06a_durres_lbl 07 `"7"', add
label define ir06a_durres_lbl 08 `"8"', add
label define ir06a_durres_lbl 09 `"9"', add
label define ir06a_durres_lbl 10 `"10+"', add
label define ir06a_durres_lbl 98 `"Unknown"', add
label define ir06a_durres_lbl 99 `"NIU (not in universe)"', add
label values ir06a_durres ir06a_durres_lbl

label define ir06a_migreas_lbl 01 `"Seeking job"'
label define ir06a_migreas_lbl 02 `"Seeking better job"', add
label define ir06a_migreas_lbl 03 `"Job transfer"', add
label define ir06a_migreas_lbl 04 `"Education"', add
label define ir06a_migreas_lbl 05 `"End of education"', add
label define ir06a_migreas_lbl 06 `"In military service"', add
label define ir06a_migreas_lbl 07 `"End of military service"', add
label define ir06a_migreas_lbl 08 `"Accompanying the family"', add
label define ir06a_migreas_lbl 09 `"Other"', add
label define ir06a_migreas_lbl 98 `"Unknown"', add
label define ir06a_migreas_lbl 99 `"NIU (not in universe)"', add
label values ir06a_migreas ir06a_migreas_lbl

label define ir06a_prevres_lbl 1 `"Another city in this county"'
label define ir06a_prevres_lbl 2 `"Another village in this county"', add
label define ir06a_prevres_lbl 3 `"Another city in another county"', add
label define ir06a_prevres_lbl 4 `"Another village in another county"', add
label define ir06a_prevres_lbl 5 `"Abroad"', add
label define ir06a_prevres_lbl 8 `"Unknown"', add
label define ir06a_prevres_lbl 9 `"NIU (not in universe)"', add
label values ir06a_prevres ir06a_prevres_lbl

label define ir06a_prevprov_lbl 00 `"0"'
label define ir06a_prevprov_lbl 01 `"1"', add
label define ir06a_prevprov_lbl 02 `"2"', add
label define ir06a_prevprov_lbl 03 `"3"', add
label define ir06a_prevprov_lbl 04 `"4"', add
label define ir06a_prevprov_lbl 05 `"5"', add
label define ir06a_prevprov_lbl 06 `"6"', add
label define ir06a_prevprov_lbl 07 `"7"', add
label define ir06a_prevprov_lbl 08 `"8"', add
label define ir06a_prevprov_lbl 09 `"9"', add
label define ir06a_prevprov_lbl 10 `"10"', add
label define ir06a_prevprov_lbl 11 `"11"', add
label define ir06a_prevprov_lbl 12 `"12"', add
label define ir06a_prevprov_lbl 13 `"13"', add
label define ir06a_prevprov_lbl 14 `"14"', add
label define ir06a_prevprov_lbl 15 `"15"', add
label define ir06a_prevprov_lbl 16 `"16"', add
label define ir06a_prevprov_lbl 17 `"17"', add
label define ir06a_prevprov_lbl 18 `"18"', add
label define ir06a_prevprov_lbl 19 `"19"', add
label define ir06a_prevprov_lbl 20 `"20"', add
label define ir06a_prevprov_lbl 21 `"21"', add
label define ir06a_prevprov_lbl 22 `"22"', add
label define ir06a_prevprov_lbl 23 `"23"', add
label define ir06a_prevprov_lbl 24 `"24"', add
label define ir06a_prevprov_lbl 25 `"25"', add
label define ir06a_prevprov_lbl 26 `"26"', add
label define ir06a_prevprov_lbl 27 `"27"', add
label define ir06a_prevprov_lbl 28 `"28"', add
label define ir06a_prevprov_lbl 29 `"29"', add
label define ir06a_prevprov_lbl 30 `"30"', add
label define ir06a_prevprov_lbl 31 `"31"', add
label define ir06a_prevprov_lbl 32 `"32"', add
label define ir06a_prevprov_lbl 33 `"33"', add
label define ir06a_prevprov_lbl 34 `"34"', add
label define ir06a_prevprov_lbl 35 `"35"', add
label define ir06a_prevprov_lbl 36 `"36"', add
label define ir06a_prevprov_lbl 37 `"37"', add
label define ir06a_prevprov_lbl 38 `"38"', add
label define ir06a_prevprov_lbl 39 `"39"', add
label define ir06a_prevprov_lbl 99 `"99"', add
label values ir06a_prevprov ir06a_prevprov_lbl

label define ir06a_school_lbl 1 `"Yes, in Iran"'
label define ir06a_school_lbl 2 `"Yes, abroad"', add
label define ir06a_school_lbl 3 `"No"', add
label define ir06a_school_lbl 9 `"NIU (not in universe)"', add
label values ir06a_school ir06a_school_lbl

label define ir06a_lit_lbl 1 `"Literate"'
label define ir06a_lit_lbl 2 `"Illiterate"', add
label define ir06a_lit_lbl 9 `"NIU (not in universe)"', add
label values ir06a_lit ir06a_lit_lbl

label define ir06a_edlev_lbl 1 `"Level one (elementary)"'
label define ir06a_edlev_lbl 2 `"Level two (middle school)"', add
label define ir06a_edlev_lbl 3 `"Level three (high school)"', add
label define ir06a_edlev_lbl 5 `"Level five (higher education, undergraduate and graduate)"', add
label define ir06a_edlev_lbl 6 `"Level six (higher education, doctorate)"', add
label define ir06a_edlev_lbl 7 `"Other (unspecified, uncategorized)"', add
label define ir06a_edlev_lbl 8 `"Unknown"', add
label define ir06a_edlev_lbl 9 `"NIU (not in universe)"', add
label values ir06a_edlev ir06a_edlev_lbl

label define ir06a_edattain_lbl 100 `"Unspecified elementary school grade"'
label define ir06a_edattain_lbl 101 `"1st grade in elementary school"', add
label define ir06a_edattain_lbl 102 `"2nd grade in elementary school"', add
label define ir06a_edattain_lbl 103 `"3rd grade in elementary school"', add
label define ir06a_edattain_lbl 104 `"4th grade in elementary school"', add
label define ir06a_edattain_lbl 105 `"5th grade in elementary school"', add
label define ir06a_edattain_lbl 106 `"Obtained 6-year elementary school degree or equivalent"', add
label define ir06a_edattain_lbl 107 `"Primary adult literacy"', add
label define ir06a_edattain_lbl 108 `"Obtained adult literacy degree"', add
label define ir06a_edattain_lbl 109 `"Adult literacy program student - unspecified degree"', add
label define ir06a_edattain_lbl 210 `"Unspecified middle school grade"', add
label define ir06a_edattain_lbl 211 `"1st grade in middle school"', add
label define ir06a_edattain_lbl 212 `"2nd grade in middle school"', add
label define ir06a_edattain_lbl 213 `"3rd grade in middle school"', add
label define ir06a_edattain_lbl 214 `"Obtained middle school - 3rd grade middle school degree"', add
label define ir06a_edattain_lbl 215 `"7th or 8th grade in 6-year system"', add
label define ir06a_edattain_lbl 216 `"9th grade in 6-year system"', add
label define ir06a_edattain_lbl 217 `"Rural teacher training"', add
label define ir06a_edattain_lbl 220 `"Nomadic teacher's college"', add
label define ir06a_edattain_lbl 221 `"1st or 2nd grade preliminary professional school in 6-year system"', add
label define ir06a_edattain_lbl 222 `"3rd grade preliminary professional school in 6-year-system"', add
label define ir06a_edattain_lbl 300 `"High school - unspecified system"', add
label define ir06a_edattain_lbl 301 `"High school and its diploma - unspecified field (credited system)"', add
label define ir06a_edattain_lbl 302 `"High school and its diploma - unspecified field (4-year system)"', add
label define ir06a_edattain_lbl 303 `"High school and its diploma - unspecified field (6-year system)"', add
label define ir06a_edattain_lbl 310 `"Preliminary theology"', add
label define ir06a_edattain_lbl 311 `"1st grade high school"', add
label define ir06a_edattain_lbl 312 `"2nd or 3rd grade high school"', add
label define ir06a_edattain_lbl 313 `"High school diploma"', add
label define ir06a_edattain_lbl 314 `"Pre-college student"', add
label define ir06a_edattain_lbl 315 `"Pre-college graduate"', add
label define ir06a_edattain_lbl 316 `"1st grade secondary in 4 years-system"', add
label define ir06a_edattain_lbl 317 `"Secondary diploma in 4 years-system"', add
label define ir06a_edattain_lbl 318 `"Student in 6-year system"', add
label define ir06a_edattain_lbl 319 `"Obtained diploma in 6-year system"', add
label define ir06a_edattain_lbl 321 `"2nd or 3rd grade vocational in credited system"', add
label define ir06a_edattain_lbl 322 `"Obtained vocational diploma in credited system"', add
label define ir06a_edattain_lbl 323 `"Training and mastership / credited system"', add
label define ir06a_edattain_lbl 324 `"Obtained training and mastership diploma / credited system"', add
label define ir06a_edattain_lbl 325 `"1st grade vocational in 4-year system"', add
label define ir06a_edattain_lbl 326 `"Obtained vocational diploma in 4-year system"', add
label define ir06a_edattain_lbl 327 `"Vocational in 6-year system"', add
label define ir06a_edattain_lbl 328 `"Obtained vocational diploma in 6-year system"', add
label define ir06a_edattain_lbl 331 `"General education, no higher education - short"', add
label define ir06a_edattain_lbl 333 `"Pre-vocational or pre-technical education - short"', add
label define ir06a_edattain_lbl 334 `"Vocational or technical education, theoretically oriented - short"', add
label define ir06a_edattain_lbl 335 `"Vocational or technical education, practically oriented - short"', add
label define ir06a_edattain_lbl 341 `"General education, no higher education - long"', add
label define ir06a_edattain_lbl 343 `"Pre-vocational or pre-technical education - long"', add
label define ir06a_edattain_lbl 344 `"Vocational or technical education - long"', add
label define ir06a_edattain_lbl 510 `"Theology in 2nd level Shiism"', add
label define ir06a_edattain_lbl 511 `"College student"', add
label define ir06a_edattain_lbl 512 `"College graduate"', add
label define ir06a_edattain_lbl 513 `"Master's student"', add
label define ir06a_edattain_lbl 514 `"Master's degree"', add
label define ir06a_edattain_lbl 515 `"Theology in 3rd level Shiism"', add
label define ir06a_edattain_lbl 516 `"Medical profession - student"', add
label define ir06a_edattain_lbl 517 `"Medical profession - graduate"', add
label define ir06a_edattain_lbl 520 `"Theology in 1st level Shiism"', add
label define ir06a_edattain_lbl 521 `"Community college student"', add
label define ir06a_edattain_lbl 522 `"Obtained community college degree"', add
label define ir06a_edattain_lbl 601 `"Doctorate student"', add
label define ir06a_edattain_lbl 602 `"Doctoral degree"', add
label define ir06a_edattain_lbl 603 `"Post doctoral - student"', add
label define ir06a_edattain_lbl 604 `"Post doctoral - graduate"', add
label define ir06a_edattain_lbl 605 `"Theology in seminary school in 1st level"', add
label define ir06a_edattain_lbl 606 `"Theology in seminary school in 2nd level"', add
label define ir06a_edattain_lbl 901 `"Unofficial education"', add
label define ir06a_edattain_lbl 902 `"Unspecified education"', add
label define ir06a_edattain_lbl 903 `"Undeclared education"', add
label define ir06a_edattain_lbl 904 `"Undeclared college education"', add
label define ir06a_edattain_lbl 905 `"Sunni theology"', add
label define ir06a_edattain_lbl 906 `"Other sects theology"', add
label define ir06a_edattain_lbl 907 `"Other religions theology"', add
label define ir06a_edattain_lbl 908 `"Unspecified theology"', add
label define ir06a_edattain_lbl 998 `"Unknown"', add
label define ir06a_edattain_lbl 999 `"NIU (not in universe)"', add
label values ir06a_edattain ir06a_edattain_lbl

label define ir06a_field3_lbl 000 `"General program"'
label define ir06a_field3_lbl 010 `"General program, basic/extended"', add
label define ir06a_field3_lbl 140 `"Teacher education and educational science"', add
label define ir06a_field3_lbl 142 `"Education science"', add
label define ir06a_field3_lbl 143 `"Training for pre-school teachers"', add
label define ir06a_field3_lbl 144 `"Training for teachers at basic levels"', add
label define ir06a_field3_lbl 145 `"Training for teachers with subject specialisation"', add
label define ir06a_field3_lbl 146 `"Training for teachers of vocational subjects"', add
label define ir06a_field3_lbl 211 `"Fine arts"', add
label define ir06a_field3_lbl 212 `"Music and performing arts"', add
label define ir06a_field3_lbl 213 `"Audio-visual techniques and media production"', add
label define ir06a_field3_lbl 214 `"Design"', add
label define ir06a_field3_lbl 215 `"Craft skills"', add
label define ir06a_field3_lbl 220 `"Humanities"', add
label define ir06a_field3_lbl 221 `"Religion"', add
label define ir06a_field3_lbl 222 `"Foreign languages"', add
label define ir06a_field3_lbl 223 `"Mother tongue"', add
label define ir06a_field3_lbl 225 `"History and archaeology"', add
label define ir06a_field3_lbl 226 `"Philosophy and ethics"', add
label define ir06a_field3_lbl 311 `"Psychology"', add
label define ir06a_field3_lbl 312 `"Sociology and cultural studies"', add
label define ir06a_field3_lbl 313 `"Political science and civics"', add
label define ir06a_field3_lbl 314 `"Economics"', add
label define ir06a_field3_lbl 321 `"Journalism and reporting"', add
label define ir06a_field3_lbl 322 `"Library, information, archive"', add
label define ir06a_field3_lbl 341 `"Wholesale and retail sales"', add
label define ir06a_field3_lbl 342 `"Marketing and advertising"', add
label define ir06a_field3_lbl 343 `"Finance, banking, insurance"', add
label define ir06a_field3_lbl 344 `"Accounting and taxation"', add
label define ir06a_field3_lbl 345 `"Management and administration"', add
label define ir06a_field3_lbl 346 `"Secretarial and office work"', add
label define ir06a_field3_lbl 380 `"Law"', add
label define ir06a_field3_lbl 420 `"Life science"', add
label define ir06a_field3_lbl 421 `"Biology and biochemistry"', add
label define ir06a_field3_lbl 441 `"Biology and biochemistry"', add
label define ir06a_field3_lbl 442 `"Environmental science"', add
label define ir06a_field3_lbl 443 `"Earth science"', add
label define ir06a_field3_lbl 461 `"Mathematics"', add
label define ir06a_field3_lbl 462 `"Statistics"', add
label define ir06a_field3_lbl 482 `"Computer use"', add
label define ir06a_field3_lbl 520 `"Engineering and engineering trades"', add
label define ir06a_field3_lbl 521 `"Mechanics and metal work"', add
label define ir06a_field3_lbl 522 `"Electricity and energy"', add
label define ir06a_field3_lbl 523 `"Electronics and automation"', add
label define ir06a_field3_lbl 524 `"Chemical and process"', add
label define ir06a_field3_lbl 525 `"Motor vehicles, ships and aircraft"', add
label define ir06a_field3_lbl 541 `"Food processing"', add
label define ir06a_field3_lbl 542 `"Textiles, clothes, footwear, leather"', add
label define ir06a_field3_lbl 543 `"Materials (wood, paper, plastic, glass)"', add
label define ir06a_field3_lbl 544 `"Mining and extraction"', add
label define ir06a_field3_lbl 581 `"Architecture and town planning"', add
label define ir06a_field3_lbl 582 `"Building and civil engineering"', add
label define ir06a_field3_lbl 621 `"Crop and livestock production"', add
label define ir06a_field3_lbl 622 `"Horticulture"', add
label define ir06a_field3_lbl 623 `"Forestry"', add
label define ir06a_field3_lbl 624 `"Fisheries"', add
label define ir06a_field3_lbl 640 `"Veterinary"', add
label define ir06a_field3_lbl 721 `"Medicine"', add
label define ir06a_field3_lbl 723 `"Nursing and caring"', add
label define ir06a_field3_lbl 724 `"Dental studies"', add
label define ir06a_field3_lbl 725 `"Medical diagnostic and treatment technology"', add
label define ir06a_field3_lbl 726 `"Therapy and rehabilitation"', add
label define ir06a_field3_lbl 727 `"Pharmacy"', add
label define ir06a_field3_lbl 761 `"Child care and youth services"', add
label define ir06a_field3_lbl 762 `"Social work and counselling"', add
label define ir06a_field3_lbl 811 `"Hotel, restaurant and catering"', add
label define ir06a_field3_lbl 812 `"Travel, tourism and leisure"', add
label define ir06a_field3_lbl 813 `"Sports"', add
label define ir06a_field3_lbl 814 `"Domestic services"', add
label define ir06a_field3_lbl 815 `"Hair and beauty services"', add
label define ir06a_field3_lbl 840 `"Transport services"', add
label define ir06a_field3_lbl 851 `"Environmental protection technology"', add
label define ir06a_field3_lbl 852 `"Natural environments and wildlife"', add
label define ir06a_field3_lbl 853 `"Community sanitation services"', add
label define ir06a_field3_lbl 861 `"Protection of persons and property"', add
label define ir06a_field3_lbl 862 `"Occupational health and safety"', add
label define ir06a_field3_lbl 863 `"Military and defence"', add
label define ir06a_field3_lbl 999 `"NIU (not in universe)"', add
label values ir06a_field3 ir06a_field3_lbl

label define ir06a_empstat_lbl 01 `"Worked at least 1 hour in the past 7 days"'
label define ir06a_empstat_lbl 02 `"Has a job, but has not worked in the past 7 days"', add
label define ir06a_empstat_lbl 03 `"Has been seeking for a job in the past 30 days and is available to work"', add
label define ir06a_empstat_lbl 04 `"Waiting for a new job to begin or to return to an old job, and is available to work"', add
label define ir06a_empstat_lbl 05 `"Student"', add
label define ir06a_empstat_lbl 06 `"Has an income but no job"', add
label define ir06a_empstat_lbl 07 `"Housekeeper"', add
label define ir06a_empstat_lbl 08 `"Other"', add
label define ir06a_empstat_lbl 98 `"Unknown"', add
label define ir06a_empstat_lbl 99 `"NIU (not in universe)"', add
label values ir06a_empstat ir06a_empstat_lbl

label define ir06a_occ4_lbl 0111 `"Legislators"'
label define ir06a_occ4_lbl 0112 `"Senior government officials"', add
label define ir06a_occ4_lbl 1100 `"Officers in the army"', add
label define ir06a_occ4_lbl 1130 `"Traditional chiefs and heads of villages"', add
label define ir06a_occ4_lbl 1142 `"Senior officials of employers', workers' and other economic-interest organisations"', add
label define ir06a_occ4_lbl 1143 `"Senior officials of humanitarian and other special-interest organisations"', add
label define ir06a_occ4_lbl 1429 `"Legislators and senior officials n.e.c."', add
label define ir06a_occ4_lbl 2111 `"Physicists and astronomers"', add
label define ir06a_occ4_lbl 2112 `"Meteorologists"', add
label define ir06a_occ4_lbl 2113 `"Chemists"', add
label define ir06a_occ4_lbl 2114 `"Geologists and geophysicists"', add
label define ir06a_occ4_lbl 2121 `"Mathematicians and related professionals"', add
label define ir06a_occ4_lbl 2122 `"Statisticians"', add
label define ir06a_occ4_lbl 2131 `"Computer systems designers and analysts"', add
label define ir06a_occ4_lbl 2132 `"Computer programmers"', add
label define ir06a_occ4_lbl 2139 `"Computing professionals not elsewhere classified"', add
label define ir06a_occ4_lbl 2141 `"Architects, town and traffic planners"', add
label define ir06a_occ4_lbl 2142 `"Civil engineers"', add
label define ir06a_occ4_lbl 2143 `"Electrical engineers"', add
label define ir06a_occ4_lbl 2144 `"Electronics and telecommunications engineers"', add
label define ir06a_occ4_lbl 2145 `"Mechanical engineers"', add
label define ir06a_occ4_lbl 2146 `"Chemical engineers"', add
label define ir06a_occ4_lbl 2147 `"Mining engineers, metallurgists and related professionals"', add
label define ir06a_occ4_lbl 2148 `"Cartographers and surveyors"', add
label define ir06a_occ4_lbl 2149 `"Architects, engineers and related professionals not elsewhere classified"', add
label define ir06a_occ4_lbl 2211 `"Biologists, botanists, zoologists and related professionals"', add
label define ir06a_occ4_lbl 2212 `"Pharmacologists, pathologists and related professionals"', add
label define ir06a_occ4_lbl 2213 `"Agronomists and related professionals"', add
label define ir06a_occ4_lbl 2221 `"Medical doctors"', add
label define ir06a_occ4_lbl 2222 `"Dentists"', add
label define ir06a_occ4_lbl 2223 `"Veterinarians"', add
label define ir06a_occ4_lbl 2224 `"Pharmacists"', add
label define ir06a_occ4_lbl 2229 `"Health professionals (except nursing) not elsewhere classified"', add
label define ir06a_occ4_lbl 2230 `"Nursing and midwifery professionals"', add
label define ir06a_occ4_lbl 2310 `"College, university and higher education teaching professionals"', add
label define ir06a_occ4_lbl 2320 `"Secondary education teaching professionals"', add
label define ir06a_occ4_lbl 2331 `"Primary education teaching professionals"', add
label define ir06a_occ4_lbl 2332 `"Pre-primary education teaching professionals"', add
label define ir06a_occ4_lbl 2340 `"Special education teaching professionals"', add
label define ir06a_occ4_lbl 2351 `"Education methods specialists"', add
label define ir06a_occ4_lbl 2352 `"School inspectors"', add
label define ir06a_occ4_lbl 2359 `"Other teaching professionals not elsewhere classified"', add
label define ir06a_occ4_lbl 2411 `"Accountants"', add
label define ir06a_occ4_lbl 2412 `"Personnel and careers professionals"', add
label define ir06a_occ4_lbl 2421 `"Lawyers"', add
label define ir06a_occ4_lbl 2422 `"Judges"', add
label define ir06a_occ4_lbl 2429 `"Legal professionals not elsewhere classified"', add
label define ir06a_occ4_lbl 2431 `"Archivists and curators"', add
label define ir06a_occ4_lbl 2432 `"Librarians and related information professionals"', add
label define ir06a_occ4_lbl 2441 `"Economists"', add
label define ir06a_occ4_lbl 2442 `"Sociologists, anthropologists and related professionals"', add
label define ir06a_occ4_lbl 2443 `"Philosophers, historians and political scientists"', add
label define ir06a_occ4_lbl 2444 `"Philologists, translators and interpreters"', add
label define ir06a_occ4_lbl 2445 `"Psychologists"', add
label define ir06a_occ4_lbl 2451 `"Authors, journalists and other writers"', add
label define ir06a_occ4_lbl 2452 `"Sculptors, painters and related artists"', add
label define ir06a_occ4_lbl 2453 `"Composers, musicians and singers"', add
label define ir06a_occ4_lbl 2455 `"Film, stage and related actors and directors"', add
label define ir06a_occ4_lbl 2460 `"Religious professionals"', add
label define ir06a_occ4_lbl 2490 `"Other professionals, not elsewhere classified"', add
label define ir06a_occ4_lbl 3111 `"Chemical and physical science technicians"', add
label define ir06a_occ4_lbl 3112 `"Civil engineering technicians"', add
label define ir06a_occ4_lbl 3113 `"Electrical engineering technicians"', add
label define ir06a_occ4_lbl 3114 `"Electronics and telecommunications engineering technicians"', add
label define ir06a_occ4_lbl 3115 `"Mechanical engineering technicians"', add
label define ir06a_occ4_lbl 3116 `"Chemical engineering technicians"', add
label define ir06a_occ4_lbl 3117 `"Mining and metallurgical technicians"', add
label define ir06a_occ4_lbl 3118 `"Draughtspersons"', add
label define ir06a_occ4_lbl 3119 `"Physical and engineering science technicians not elsewhere classified"', add
label define ir06a_occ4_lbl 3121 `"Computer assistants"', add
label define ir06a_occ4_lbl 3122 `"Computer equipment operators"', add
label define ir06a_occ4_lbl 3134 `"Electronics technicians"', add
label define ir06a_occ4_lbl 3135 `"Telecommunications and telephone technicians"', add
label define ir06a_occ4_lbl 3136 `"Adjustments and instrumentation technicians"', add
label define ir06a_occ4_lbl 3137 `"Photonics technicians"', add
label define ir06a_occ4_lbl 3141 `"Ships' engineers"', add
label define ir06a_occ4_lbl 3142 `"Ships' deck officers and pilots"', add
label define ir06a_occ4_lbl 3143 `"Aircraft pilots and related associate professionals"', add
label define ir06a_occ4_lbl 3144 `"Air traffic controllers"', add
label define ir06a_occ4_lbl 3145 `"Air traffic safety technicians"', add
label define ir06a_occ4_lbl 3151 `"Building and fire inspectors"', add
label define ir06a_occ4_lbl 3152 `"Safety, health and quality inspectors"', add
label define ir06a_occ4_lbl 3211 `"Life science technicians"', add
label define ir06a_occ4_lbl 3212 `"Agronomy and forestry technicians"', add
label define ir06a_occ4_lbl 3213 `"Farming and forestry advisers"', add
label define ir06a_occ4_lbl 3221 `"Medical assistants"', add
label define ir06a_occ4_lbl 3222 `"Hygienists, health and environmental officers"', add
label define ir06a_occ4_lbl 3223 `"Dieticians and nutritionists"', add
label define ir06a_occ4_lbl 3224 `"Optometrists and opticians"', add
label define ir06a_occ4_lbl 3225 `"Dental assistants"', add
label define ir06a_occ4_lbl 3226 `"Physiotherapists and related associate professionals"', add
label define ir06a_occ4_lbl 3227 `"Veterinary assistants"', add
label define ir06a_occ4_lbl 3228 `"Pharmaceutical assistants"', add
label define ir06a_occ4_lbl 3229 `"Health associate professionals (except nursing) not elsewhere classified"', add
label define ir06a_occ4_lbl 3231 `"Nursing associate professionals"', add
label define ir06a_occ4_lbl 3232 `"Midwifery associate professionals"', add
label define ir06a_occ4_lbl 3240 `"Traditional medicine practitioners and faith healers"', add
label define ir06a_occ4_lbl 3310 `"Primary education teaching associate professionals"', add
label define ir06a_occ4_lbl 3320 `"Pre-primary education teaching associate professionals"', add
label define ir06a_occ4_lbl 3330 `"Special education teaching associate professionals"', add
label define ir06a_occ4_lbl 3340 `"Other teaching associate professionals"', add
label define ir06a_occ4_lbl 3411 `"Securities and finance dealers and brokers"', add
label define ir06a_occ4_lbl 3412 `"Insurance representatives"', add
label define ir06a_occ4_lbl 3413 `"Estate agents"', add
label define ir06a_occ4_lbl 3415 `"Technical and commercial sales representatives"', add
label define ir06a_occ4_lbl 3416 `"Buyers"', add
label define ir06a_occ4_lbl 3417 `"Appraisers, valuers and auctioneers"', add
label define ir06a_occ4_lbl 3419 `"Finance and sales associate professionals not elsewhere classified"', add
label define ir06a_occ4_lbl 3421 `"Trade brokers"', add
label define ir06a_occ4_lbl 3422 `"Clearing and forwarding agents"', add
label define ir06a_occ4_lbl 3423 `"Employment agents and labour contractors"', add
label define ir06a_occ4_lbl 3429 `"Business services agents and trade brokers not elsewhere classified"', add
label define ir06a_occ4_lbl 3431 `"Administrative secretaries and related associate professionals"', add
label define ir06a_occ4_lbl 3432 `"Legal and related business associate professionals"', add
label define ir06a_occ4_lbl 3434 `"Statistical, mathematical and related associate professionals"', add
label define ir06a_occ4_lbl 3439 `"Administrative associate professionals n.e.c."', add
label define ir06a_occ4_lbl 3441 `"Customs and border inspectors"', add
label define ir06a_occ4_lbl 3442 `"Government tax and excise officials"', add
label define ir06a_occ4_lbl 3443 `"Government social benefits officials"', add
label define ir06a_occ4_lbl 3444 `"Government licensing officials"', add
label define ir06a_occ4_lbl 3449 `"Customs, tax and related government associate professionals not elsewhere classified"', add
label define ir06a_occ4_lbl 3460 `"Social work associate professionals"', add
label define ir06a_occ4_lbl 3471 `"Decorators and commercial designers"', add
label define ir06a_occ4_lbl 3472 `"Radio, television and other announcers"', add
label define ir06a_occ4_lbl 3473 `"Street, night-club and related musicians, singers and dancers"', add
label define ir06a_occ4_lbl 3475 `"Athletes, sportspersons and related associate professionals"', add
label define ir06a_occ4_lbl 3480 `"Religious associate professionals"', add
label define ir06a_occ4_lbl 4111 `"Stenographers and typists"', add
label define ir06a_occ4_lbl 4112 `"Word-processor and related operators"', add
label define ir06a_occ4_lbl 4113 `"Data entry operators"', add
label define ir06a_occ4_lbl 4115 `"Secretaries"', add
label define ir06a_occ4_lbl 4121 `"Accounting and bookkeeping clerks"', add
label define ir06a_occ4_lbl 4122 `"Statistical and finance clerks"', add
label define ir06a_occ4_lbl 4133 `"Transport clerks"', add
label define ir06a_occ4_lbl 4134 `"Firewood cutters and collectors"', add
label define ir06a_occ4_lbl 4141 `"Library and filing clerks"', add
label define ir06a_occ4_lbl 4142 `"Mail carriers and sorting clerks"', add
label define ir06a_occ4_lbl 4143 `"Coding, proof-reading, and related clerks"', add
label define ir06a_occ4_lbl 4144 `"Scribes and related workers"', add
label define ir06a_occ4_lbl 4190 `"Other office clerks"', add
label define ir06a_occ4_lbl 4211 `"Cashiers and ticket clerks"', add
label define ir06a_occ4_lbl 4212 `"Tellers and other counter clerks"', add
label define ir06a_occ4_lbl 4214 `"Pawnbrokers and moneylenders"', add
label define ir06a_occ4_lbl 4215 `"Debt-collectors and related workers"', add
label define ir06a_occ4_lbl 4221 `"Travel agency and related clerks"', add
label define ir06a_occ4_lbl 4222 `"Receptionists and information clerks"', add
label define ir06a_occ4_lbl 4223 `"Telephone switchboard operators"', add
label define ir06a_occ4_lbl 5111 `"Travel attendants and travel stewards"', add
label define ir06a_occ4_lbl 5112 `"Transport conductors"', add
label define ir06a_occ4_lbl 5113 `"Travel guides"', add
label define ir06a_occ4_lbl 5122 `"Cooks"', add
label define ir06a_occ4_lbl 5123 `"Waiters, waitresses and bartenders"', add
label define ir06a_occ4_lbl 5130 `"Personal care and related workers"', add
label define ir06a_occ4_lbl 5141 `"Hairdressers, barbers, beauticians and related workers"', add
label define ir06a_occ4_lbl 5143 `"Undertakers and embalmers"', add
label define ir06a_occ4_lbl 5149 `"Other personal services workers not elsewhere classified"', add
label define ir06a_occ4_lbl 5161 `"Fire-fighters"', add
label define ir06a_occ4_lbl 5162 `"Police officers"', add
label define ir06a_occ4_lbl 5163 `"Prison guards"', add
label define ir06a_occ4_lbl 5169 `"Protective services workers not elsewhere classified"', add
label define ir06a_occ4_lbl 5210 `"Fashion and other models"', add
label define ir06a_occ4_lbl 5220 `"Shop, stall and merket salespersons and demonstrators"', add
label define ir06a_occ4_lbl 5230 `"Stall and market salespersons"', add
label define ir06a_occ4_lbl 6111 `"Field crop and vegetable growers"', add
label define ir06a_occ4_lbl 6112 `"Gardeners, horticultural and nursery growers"', add
label define ir06a_occ4_lbl 6113 `"Mushroom planter"', add
label define ir06a_occ4_lbl 6114 `"Mixed agricultural crops growers"', add
label define ir06a_occ4_lbl 6121 `"Dairy and livestock producers"', add
label define ir06a_occ4_lbl 6122 `"Poultry producers"', add
label define ir06a_occ4_lbl 6123 `"Silkworm breeding laboratory technician"', add
label define ir06a_occ4_lbl 6124 `"Stock-breeders"', add
label define ir06a_occ4_lbl 6129 `"Animal producers and related workers not elsewhere classified"', add
label define ir06a_occ4_lbl 6130 `"Crop and animal producers"', add
label define ir06a_occ4_lbl 6141 `"Forestry workers and loggers"', add
label define ir06a_occ4_lbl 6142 `"Charcoal burners and related workers"', add
label define ir06a_occ4_lbl 6154 `"Hunters and trappers"', add
label define ir06a_occ4_lbl 6155 `"Fishery workers, hunters and trappers n.e.c."', add
label define ir06a_occ4_lbl 7111 `"Miners and quarry workers"', add
label define ir06a_occ4_lbl 7112 `"Shotfirers and blasters"', add
label define ir06a_occ4_lbl 7113 `"Stone splitters, cutters and carvers"', add
label define ir06a_occ4_lbl 7121 `"Builders"', add
label define ir06a_occ4_lbl 7122 `"Bricklayers and stonemasons"', add
label define ir06a_occ4_lbl 7123 `"Concrete placers, concrete finishers and related workers"', add
label define ir06a_occ4_lbl 7124 `"Carpenters and joiners"', add
label define ir06a_occ4_lbl 7125 `"Building frame and related trades workers n.e.c."', add
label define ir06a_occ4_lbl 7131 `"Roofers"', add
label define ir06a_occ4_lbl 7132 `"Floor layers and tile setters"', add
label define ir06a_occ4_lbl 7133 `"Plasterers"', add
label define ir06a_occ4_lbl 7134 `"Insulation workers"', add
label define ir06a_occ4_lbl 7135 `"Glaziers"', add
label define ir06a_occ4_lbl 7136 `"Plumbers and pipe fitters"', add
label define ir06a_occ4_lbl 7137 `"Building and related electricians"', add
label define ir06a_occ4_lbl 7141 `"Painters and related workers"', add
label define ir06a_occ4_lbl 7142 `"Varnishers and related painters"', add
label define ir06a_occ4_lbl 7143 `"Parquetry workers and floor layers"', add
label define ir06a_occ4_lbl 7211 `"Metal moulders and coremakers"', add
label define ir06a_occ4_lbl 7212 `"Welders and flamecutters"', add
label define ir06a_occ4_lbl 7214 `"Structural-metal preparers and erectors"', add
label define ir06a_occ4_lbl 7215 `"Riggers and cable splicers"', add
label define ir06a_occ4_lbl 7216 `"Underwater workers"', add
label define ir06a_occ4_lbl 7217 `"Trucker"', add
label define ir06a_occ4_lbl 7218 `"Metal moulders,welders, sheet-metalworkers, structural-metal preparers and related trades workers"', add
label define ir06a_occ4_lbl 7221 `"Blacksmiths, hammer-smiths and forging-press workers"', add
label define ir06a_occ4_lbl 7222 `"Tool-makers and related workers"', add
label define ir06a_occ4_lbl 7223 `"Machine-tool setters and setter-operators"', add
label define ir06a_occ4_lbl 7224 `"Metal wheel-grinders, polishers and tool sharpeners"', add
label define ir06a_occ4_lbl 7231 `"Motor vehicle mechanics and fitters"', add
label define ir06a_occ4_lbl 7232 `"Aircraft engine mechanics and fitters"', add
label define ir06a_occ4_lbl 7233 `"Agricultural- or industrial-machinery mechanics and fitters"', add
label define ir06a_occ4_lbl 7241 `"Electrical mechanics and fitters"', add
label define ir06a_occ4_lbl 7242 `"Electronics mechanics, fitters and servicers"', add
label define ir06a_occ4_lbl 7243 `"Printing engravers and etchers"', add
label define ir06a_occ4_lbl 7244 `"Telegraph and telephone installers and servicers"', add
label define ir06a_occ4_lbl 7245 `"Electrical line installers, repairers and cable jointers"', add
label define ir06a_occ4_lbl 7311 `"Precision-instrument makers and repairers"', add
label define ir06a_occ4_lbl 7312 `"Musical instrument makers and tuners"', add
label define ir06a_occ4_lbl 7313 `"Jewellery and precious-metal workers"', add
label define ir06a_occ4_lbl 7324 `"Glass, ceramics and related decorative painters"', add
label define ir06a_occ4_lbl 7325 `"Potters, glass-makers and related trades workers n.e.c."', add
label define ir06a_occ4_lbl 7331 `"Handicraft workers in wood and related materials"', add
label define ir06a_occ4_lbl 7333 `"Chiseller of objects of art"', add
label define ir06a_occ4_lbl 7341 `"Compositors, typesetters and related workers"', add
label define ir06a_occ4_lbl 7342 `"Stereotypers and electrotypers"', add
label define ir06a_occ4_lbl 7344 `"Photographic and related workers"', add
label define ir06a_occ4_lbl 7345 `"Bookbinders and related workers"', add
label define ir06a_occ4_lbl 7346 `"Silk-screen, block and textile printers"', add
label define ir06a_occ4_lbl 7411 `"Butchers, fishmongers and related food preparers"', add
label define ir06a_occ4_lbl 7413 `"Dairy-products makers"', add
label define ir06a_occ4_lbl 7414 `"Fruit, vegetable and related preservers"', add
label define ir06a_occ4_lbl 7415 `"Food and beverage tasters and graders"', add
label define ir06a_occ4_lbl 7416 `"Tobacco preparers and tobacco products makers"', add
label define ir06a_occ4_lbl 7417 `"Food processing and related trades workers n.e.c."', add
label define ir06a_occ4_lbl 7421 `"Wood treaters"', add
label define ir06a_occ4_lbl 7422 `"Cabinet-makers and related workers"', add
label define ir06a_occ4_lbl 7423 `"Woodworking machine setters and setter-operators"', add
label define ir06a_occ4_lbl 7424 `"Basketry weavers, brush makers and related workers"', add
label define ir06a_occ4_lbl 7431 `"Fibre preparers"', add
label define ir06a_occ4_lbl 7433 `"Tailors, dressmakers and hatters"', add
label define ir06a_occ4_lbl 7435 `"Textile, leather and related pattern-makers and cutters"', add
label define ir06a_occ4_lbl 7436 `"Sewers, embroiderers and related workers"', add
label define ir06a_occ4_lbl 7437 `"Upholsterers and related workers"', add
label define ir06a_occ4_lbl 7438 `"Net maker"', add
label define ir06a_occ4_lbl 7441 `"Pelt dressers, tanners and fellmongers"', add
label define ir06a_occ4_lbl 7442 `"Shoe-makers and related workers"', add
label define ir06a_occ4_lbl 7450 `"Dust chamber cleaner"', add
label define ir06a_occ4_lbl 7501 `"Craft and related workers n.e.c"', add
label define ir06a_occ4_lbl 8111 `"Mining-plant operators"', add
label define ir06a_occ4_lbl 8112 `"Mineral-ore- and stone-processing-plant operators"', add
label define ir06a_occ4_lbl 8113 `"Well drillers and borers and related workers"', add
label define ir06a_occ4_lbl 8123 `"Metal-heat-treating-plant operators"', add
label define ir06a_occ4_lbl 8124 `"Metal drawers and extruders"', add
label define ir06a_occ4_lbl 8125 `"Metal powder equipment operator"', add
label define ir06a_occ4_lbl 8132 `"Bulb tubulator"', add
label define ir06a_occ4_lbl 8133 `"Operator of equipment for reinforcement of sanitary building products"', add
label define ir06a_occ4_lbl 8134 `"Boxman of walling and matrix materials"', add
label define ir06a_occ4_lbl 8139 `"Glass, ceramics and related plant operators not elsewhere classified"', add
label define ir06a_occ4_lbl 8141 `"Wood-processing-plant operators"', add
label define ir06a_occ4_lbl 8142 `"Paper-pulp plant operators"', add
label define ir06a_occ4_lbl 8143 `"Papermaking-plant operators"', add
label define ir06a_occ4_lbl 8151 `"Crushing-, grinding- and chemical-mixing-machinery operators"', add
label define ir06a_occ4_lbl 8152 `"Chemical-heat-treating-plant operators"', add
label define ir06a_occ4_lbl 8153 `"Chemical-filtering- and separating-equipment operators"', add
label define ir06a_occ4_lbl 8154 `"Chemical-still and reactor operators (except petroleum and natural gas)"', add
label define ir06a_occ4_lbl 8155 `"Petroleum- and natural-gas-refining-plant operators"', add
label define ir06a_occ4_lbl 8159 `"Chemical-processing-plant operators not elsewhere classified"', add
label define ir06a_occ4_lbl 8161 `"Power-production plant operators"', add
label define ir06a_occ4_lbl 8162 `"Steam-engine and boiler operators"', add
label define ir06a_occ4_lbl 8163 `"Incinerator, water-treatment and related plant operators"', add
label define ir06a_occ4_lbl 8171 `"Automated assembly-line operators"', add
label define ir06a_occ4_lbl 8211 `"Machine-tool operators"', add
label define ir06a_occ4_lbl 8212 `"Cement and other mineral products machine operators"', add
label define ir06a_occ4_lbl 8221 `"Pharmaceutical- and toiletry-products machine operators"', add
label define ir06a_occ4_lbl 8222 `"Ammunition- and explosive-products machine operators"', add
label define ir06a_occ4_lbl 8223 `"Metal finishing-, plating- and coating-machine operators"', add
label define ir06a_occ4_lbl 8229 `"Chemical-products machine operators not elsewhere classified"', add
label define ir06a_occ4_lbl 8231 `"Rubber-products machine operators"', add
label define ir06a_occ4_lbl 8232 `"Plastic-products machine operators"', add
label define ir06a_occ4_lbl 8240 `"Wood-products machine operators"', add
label define ir06a_occ4_lbl 8251 `"Printing-machine operators"', add
label define ir06a_occ4_lbl 8252 `"Bookbinding-machine operators"', add
label define ir06a_occ4_lbl 8253 `"Paper-products machine operators"', add
label define ir06a_occ4_lbl 8261 `"Fibre-preparing-, spinning- and winding-machine operators"', add
label define ir06a_occ4_lbl 8262 `"Weaving- and knitting-machine operators"', add
label define ir06a_occ4_lbl 8263 `"Sewing-machine operators"', add
label define ir06a_occ4_lbl 8265 `"Fur- and leather-preparing-machine operators"', add
label define ir06a_occ4_lbl 8266 `"Shoemaking- and related machine operators"', add
label define ir06a_occ4_lbl 8267 `"Operator of tire running machine"', add
label define ir06a_occ4_lbl 8268 `"Textile-, fur- and leather-products machine operators n.e.c."', add
label define ir06a_occ4_lbl 8271 `"Meat- and fish-processing-machine operators"', add
label define ir06a_occ4_lbl 8272 `"Dairy-products machine operators"', add
label define ir06a_occ4_lbl 8273 `"Grain- and spice-milling-machine operators"', add
label define ir06a_occ4_lbl 8274 `"Baked-goods, cereal and chocolate-products machine operators"', add
label define ir06a_occ4_lbl 8275 `"Fruit-, vegetable- and nut-processing-machine operators"', add
label define ir06a_occ4_lbl 8276 `"Sugar production machine operators"', add
label define ir06a_occ4_lbl 8277 `"Tea-, coffee-, and cocoa-processing-machine operators"', add
label define ir06a_occ4_lbl 8278 `"Brewers, wine and other beverage machine operators"', add
label define ir06a_occ4_lbl 8279 `"Tobacco production machine operators"', add
label define ir06a_occ4_lbl 8281 `"Mechanical-machinery assemblers"', add
label define ir06a_occ4_lbl 8282 `"Electrical-equipment assemblers"', add
label define ir06a_occ4_lbl 8283 `"Electronic-equipment assemblers"', add
label define ir06a_occ4_lbl 8285 `"Wood and related products assemblers"', add
label define ir06a_occ4_lbl 8290 `"Other machine operators not elsewhere classified"', add
label define ir06a_occ4_lbl 8311 `"Locomotive-engine drivers"', add
label define ir06a_occ4_lbl 8312 `"Railway brakers, signallers and shunters"', add
label define ir06a_occ4_lbl 8321 `"Motor-cycle drivers"', add
label define ir06a_occ4_lbl 8322 `"Car, taxi and van drivers"', add
label define ir06a_occ4_lbl 8323 `"Bus and tram drivers"', add
label define ir06a_occ4_lbl 8324 `"Heavy-truck and lorry drivers"', add
label define ir06a_occ4_lbl 8331 `"Motorised farm and forestry plant operators"', add
label define ir06a_occ4_lbl 8332 `"Earth-moving- and related plant operators"', add
label define ir06a_occ4_lbl 8333 `"Crane, hoist and related plant operators"', add
label define ir06a_occ4_lbl 8334 `"Lifting-truck operators"', add
label define ir06a_occ4_lbl 8340 `"Ships' deck crews and related workers"', add
label define ir06a_occ4_lbl 9111 `"Street vendors"', add
label define ir06a_occ4_lbl 9112 `"Newsman"', add
label define ir06a_occ4_lbl 9113 `"Door-to-door and telephone salespersons"', add
label define ir06a_occ4_lbl 9120 `"Shoe cleaning and other street services elementary occupations"', add
label define ir06a_occ4_lbl 9131 `"Domestic helpers and cleaners"', add
label define ir06a_occ4_lbl 9132 `"Helpers and cleaners in offices, hotels and other establishments"', add
label define ir06a_occ4_lbl 9133 `"Hand-launderers and pressers"', add
label define ir06a_occ4_lbl 9141 `"Building caretakers"', add
label define ir06a_occ4_lbl 9142 `"Vehicle, window and related cleaners"', add
label define ir06a_occ4_lbl 9151 `"Messengers, package and luggage porters and deliverers"', add
label define ir06a_occ4_lbl 9152 `"Doorkeepers, watchpersons and related workers"', add
label define ir06a_occ4_lbl 9153 `"Vending-machine money collectors, meter readers and related workers"', add
label define ir06a_occ4_lbl 9160 `"Garbage collectors and related laboure"', add
label define ir06a_occ4_lbl 9211 `"Farm-hands and labourers"', add
label define ir06a_occ4_lbl 9213 `"Fishery, hunting and trapping labourers"', add
label define ir06a_occ4_lbl 9311 `"Mining and quarrying labourers"', add
label define ir06a_occ4_lbl 9314 `"Mining and construction labourers n.e.c."', add
label define ir06a_occ4_lbl 9320 `"Manufacturing labourers"', add
label define ir06a_occ4_lbl 9331 `"Water-jetting vehicle servicer"', add
label define ir06a_occ4_lbl 9332 `"Water dispenser in port"', add
label define ir06a_occ4_lbl 9333 `"Drivers and operators of animal drawn vehicles"', add
label define ir06a_occ4_lbl 9998 `"Workers not classified under other headings"', add
label define ir06a_occ4_lbl 9999 `"NIU (not in universe)"', add
label values ir06a_occ4 ir06a_occ4_lbl

label define ir06a_occ3_lbl 011 `"Armed forces and police officers"'
label define ir06a_occ3_lbl 110 `"Legislators and senior officials"', add
label define ir06a_occ3_lbl 113 `"Traditional chiefs and heads of villages"', add
label define ir06a_occ3_lbl 114 `"Managers and administrators of specialized organizations"', add
label define ir06a_occ3_lbl 141 `"School supervisors and principals"', add
label define ir06a_occ3_lbl 142 `"Transport and communications service supervisors"', add
label define ir06a_occ3_lbl 211 `"Physicists, chemists and related professionals"', add
label define ir06a_occ3_lbl 212 `"Mathematicians, statisticians and related professionals"', add
label define ir06a_occ3_lbl 213 `"Computing professionals"', add
label define ir06a_occ3_lbl 214 `"Architects, engineers and related professionals"', add
label define ir06a_occ3_lbl 221 `"Life science professionals"', add
label define ir06a_occ3_lbl 222 `"Health professionals (except nursing)"', add
label define ir06a_occ3_lbl 223 `"Nursing and midwifery professionals"', add
label define ir06a_occ3_lbl 231 `"College, university and higher education teaching professionals"', add
label define ir06a_occ3_lbl 232 `"Secondary vocational, lower and upper secondary education teachi"', add
label define ir06a_occ3_lbl 233 `"Primary and Pre-primary education teaching professionals"', add
label define ir06a_occ3_lbl 234 `"Special education teaching professionals (teach physically or me"', add
label define ir06a_occ3_lbl 235 `"Other teaching professionals"', add
label define ir06a_occ3_lbl 241 `"Business professionals"', add
label define ir06a_occ3_lbl 242 `"Legal professionals"', add
label define ir06a_occ3_lbl 243 `"Archivists, librarians and related information professionals"', add
label define ir06a_occ3_lbl 244 `"Social science and related professionals"', add
label define ir06a_occ3_lbl 245 `"Writers and creative or performing artists"', add
label define ir06a_occ3_lbl 246 `"Religious professionals"', add
label define ir06a_occ3_lbl 249 `"Other professionals, not elsewhere classified"', add
label define ir06a_occ3_lbl 311 `"Physical and engineering science technicians"', add
label define ir06a_occ3_lbl 312 `"Computer associate professionals"', add
label define ir06a_occ3_lbl 313 `"Optical and electronic equipment operators"', add
label define ir06a_occ3_lbl 314 `"Ship and aircraft controllers and technicians"', add
label define ir06a_occ3_lbl 315 `"Safety and quality inspectors"', add
label define ir06a_occ3_lbl 321 `"Life science technicians and related associate professionals"', add
label define ir06a_occ3_lbl 322 `"Modern health associate professionals (except nursing)"', add
label define ir06a_occ3_lbl 323 `"Nursing and midwifery associate professionals"', add
label define ir06a_occ3_lbl 324 `"Traditional medicine practitioners and faith healers"', add
label define ir06a_occ3_lbl 331 `"Primary education teaching associate professionals"', add
label define ir06a_occ3_lbl 332 `"Pre-primary education teaching associate professionals"', add
label define ir06a_occ3_lbl 333 `"Special education teaching associate professionals (teach physic of"', add
label define ir06a_occ3_lbl 334 `"Other teaching associate professionals"', add
label define ir06a_occ3_lbl 341 `"Finance and sales associate professionals"', add
label define ir06a_occ3_lbl 342 `"Business services agents and trade brokers"', add
label define ir06a_occ3_lbl 343 `"Administrative associate professionals"', add
label define ir06a_occ3_lbl 344 `"Customs, tax and related government associate professionals"', add
label define ir06a_occ3_lbl 346 `"Social work associate professionals"', add
label define ir06a_occ3_lbl 347 `"Artistic, entertainment and sports associate professionals"', add
label define ir06a_occ3_lbl 348 `"Religious associate professionals"', add
label define ir06a_occ3_lbl 411 `"Secretaries and keyboard-operating clerks"', add
label define ir06a_occ3_lbl 412 `"Numerical clerks"', add
label define ir06a_occ3_lbl 413 `"Material-recording and transport clerks"', add
label define ir06a_occ3_lbl 414 `"Library, mail and related clerks"', add
label define ir06a_occ3_lbl 419 `"Other office clerks"', add
label define ir06a_occ3_lbl 421 `"Cashiers, tellers and related clerks"', add
label define ir06a_occ3_lbl 422 `"Client information clerks"', add
label define ir06a_occ3_lbl 511 `"Travel attendants and related workers"', add
label define ir06a_occ3_lbl 512 `"Housekeeping and restaurant services workers"', add
label define ir06a_occ3_lbl 513 `"Personal care and related workers"', add
label define ir06a_occ3_lbl 514 `"Other personal services workers"', add
label define ir06a_occ3_lbl 516 `"Protective services workers"', add
label define ir06a_occ3_lbl 521 `"Fashion and other models"', add
label define ir06a_occ3_lbl 522 `"Shop salespersons and demonstrators"', add
label define ir06a_occ3_lbl 523 `"Stall and market salespersons"', add
label define ir06a_occ3_lbl 611 `"Market gardeners and crop growers"', add
label define ir06a_occ3_lbl 612 `"Market-oriented animal producers and related workers"', add
label define ir06a_occ3_lbl 613 `"Market-oriented crop and animal producers"', add
label define ir06a_occ3_lbl 614 `"Forestry and related workers"', add
label define ir06a_occ3_lbl 615 `"Fishery workers, hunters and trappers"', add
label define ir06a_occ3_lbl 711 `"Miners, set-off-mine workers, stone cutters and carvers"', add
label define ir06a_occ3_lbl 712 `"Building frame and related trades workers"', add
label define ir06a_occ3_lbl 713 `"Building finishers and related trades workers"', add
label define ir06a_occ3_lbl 714 `"Painters, building structure cleaners and related trades workers"', add
label define ir06a_occ3_lbl 721 `"Metal moulders, welders, sheet-metal workers, structural-metal p"', add
label define ir06a_occ3_lbl 722 `"Blacksmiths, tool-makers and related trades workers"', add
label define ir06a_occ3_lbl 723 `"Machinery mechanics and fitters"', add
label define ir06a_occ3_lbl 724 `"Electrical and electronic equipment mechanics and fitters"', add
label define ir06a_occ3_lbl 731 `"Precision workers in metal and related materials"', add
label define ir06a_occ3_lbl 732 `"Potters, glass-makers and related trades workers"', add
label define ir06a_occ3_lbl 733 `"Handicraft workers in wood, textile, leather and related materia"', add
label define ir06a_occ3_lbl 734 `"Printing and related trades workers"', add
label define ir06a_occ3_lbl 741 `"Food processing and related trades workers"', add
label define ir06a_occ3_lbl 742 `"Wood treaters, cabinet-makers and related trades workers"', add
label define ir06a_occ3_lbl 743 `"Textile, garment and related trades workers"', add
label define ir06a_occ3_lbl 744 `"Pelt, leather and shoemaking trades workers"', add
label define ir06a_occ3_lbl 745 `"Electronics mechanics, fitters and servicers"', add
label define ir06a_occ3_lbl 750 `"Supervisors of jewelry, glass blowing, ceramics and the like"', add
label define ir06a_occ3_lbl 811 `"Mining and mineral-processing-plant operators"', add
label define ir06a_occ3_lbl 812 `"Metal-processing-plant operators"', add
label define ir06a_occ3_lbl 813 `"Glass, ceramics and related plant operators"', add
label define ir06a_occ3_lbl 814 `"Wood-processing and papermaking-plant operators"', add
label define ir06a_occ3_lbl 815 `"Chemical-processing-plant operators"', add
label define ir06a_occ3_lbl 816 `"Power-production and related plant operators"', add
label define ir06a_occ3_lbl 817 `"Automated-assembly-line and industrial-robot operators"', add
label define ir06a_occ3_lbl 821 `"Metal and mineral-products machine operators"', add
label define ir06a_occ3_lbl 822 `"Chemical-products machine operators"', add
label define ir06a_occ3_lbl 823 `"Rubber- and plastic-products machine operators"', add
label define ir06a_occ3_lbl 824 `"Wood-products machine operators"', add
label define ir06a_occ3_lbl 825 `"Printing-, binding- and paper-products machine operators"', add
label define ir06a_occ3_lbl 826 `"Textile-, fur- and leather-products machine operators"', add
label define ir06a_occ3_lbl 827 `"Food and related products machine operators"', add
label define ir06a_occ3_lbl 828 `"Assemblers"', add
label define ir06a_occ3_lbl 829 `"Other machine operators and assemblers"', add
label define ir06a_occ3_lbl 831 `"Locomotive-engine drivers and related workers"', add
label define ir06a_occ3_lbl 832 `"Motor-vehicle drivers"', add
label define ir06a_occ3_lbl 833 `"Agricultural and other mobile-plant operators"', add
label define ir06a_occ3_lbl 834 `"Ship deck crews and related workers"', add
label define ir06a_occ3_lbl 911 `"Street vendors and related workers"', add
label define ir06a_occ3_lbl 912 `"Shoe cleaning and other street services elementary occupations"', add
label define ir06a_occ3_lbl 913 `"Domestic and related helpers, cleaners and launderers"', add
label define ir06a_occ3_lbl 914 `"Building caretakers, window and related cleaners"', add
label define ir06a_occ3_lbl 915 `"Messengers, porters, doorkeepers and related workers"', add
label define ir06a_occ3_lbl 916 `"Garbage collectors and related labourers"', add
label define ir06a_occ3_lbl 921 `"Agricultural, fishery and related labourers"', add
label define ir06a_occ3_lbl 931 `"Mining and construction labourers"', add
label define ir06a_occ3_lbl 932 `"Manufacturing labourers"', add
label define ir06a_occ3_lbl 933 `"Transport labourers and freight handlers"', add
label define ir06a_occ3_lbl 998 `"Workers not classified under other headings"', add
label define ir06a_occ3_lbl 999 `"NIU (not in universe)"', add
label values ir06a_occ3 ir06a_occ3_lbl

label define ir06a_ind4_lbl 0111 `"Agricultural production"'
label define ir06a_ind4_lbl 0112 `"Agricultural services"', add
label define ir06a_ind4_lbl 0113 `"Ordinary hunting and trap hunting; animal repopulation"', add
label define ir06a_ind4_lbl 0123 `"Breeding of domestic animals"', add
label define ir06a_ind4_lbl 0124 `"Breeding of domestic animals"', add
label define ir06a_ind4_lbl 0129 `"Other agricultural services"', add
label define ir06a_ind4_lbl 0130 `"Agricultural crop production in combination with domestic animal breeding (mixed production)"', add
label define ir06a_ind4_lbl 0140 `"Agricultural service activities, except veterinary activities"', add
label define ir06a_ind4_lbl 0150 `"Ordinary hunting and hunting with traps and repopulation of hunting animals, including related activities"', add
label define ir06a_ind4_lbl 0201 `"Forestry, lumber extraction and related service activities"', add
label define ir06a_ind4_lbl 0203 `"Forestry, logging and related activities n.e.c."', add
label define ir06a_ind4_lbl 0501 `"Fishing, production in fish breeding enterprises and fish farms; service activities related to fishing"', add
label define ir06a_ind4_lbl 0502 `"Fishing, production in fish breeding enterprises and fish farms; service activities related to fishing"', add
label define ir06a_ind4_lbl 1010 `"Extraction and collection of mineral coal"', add
label define ir06a_ind4_lbl 1030 `"Extraction and collection of peat"', add
label define ir06a_ind4_lbl 1110 `"Extraction of crude petroleum and natural gas"', add
label define ir06a_ind4_lbl 1120 `"Service activities related to the extraction of petroleum and gas; except prospecting activities"', add
label define ir06a_ind4_lbl 1200 `"Mining of uranium and thorium ores"', add
label define ir06a_ind4_lbl 1310 `"Extraction of iron minerals"', add
label define ir06a_ind4_lbl 1320 `"Extraction of non-ferrous metallic minerals except the minerals uranium and thorium"', add
label define ir06a_ind4_lbl 1410 `"Stone, sand, and clay quarrying"', add
label define ir06a_ind4_lbl 1421 `"Extraction from mines and quarries not included elsewhere"', add
label define ir06a_ind4_lbl 1422 `"Extraction from mines and quarries not included elsewhere"', add
label define ir06a_ind4_lbl 1429 `"Extraction from mines and quarries not included elsewhere"', add
label define ir06a_ind4_lbl 1512 `"Production, manufacture, and conservation of meat, fish, fruits, vegetables, beans, horticulture products, oils, and fats"', add
label define ir06a_ind4_lbl 1519 `"Production, processing and preserving of meat and meat products n.e.c."', add
label define ir06a_ind4_lbl 1520 `"Manufacture of dairy products"', add
label define ir06a_ind4_lbl 1531 `"Manufacture of milled products, starches and products derived from starches, and prepared animal feeds"', add
label define ir06a_ind4_lbl 1542 `"Manufacture of other food products"', add
label define ir06a_ind4_lbl 1545 `"Manufacture of vegetable and animal oils and fats n.e.c."', add
label define ir06a_ind4_lbl 1551 `"Manufacture of beverages"', add
label define ir06a_ind4_lbl 1555 `"Manufacture of dairy products"', add
label define ir06a_ind4_lbl 1600 `"Manufacture of tobacco products"', add
label define ir06a_ind4_lbl 1711 `"Bobbin winding, weaving, and finishing textile products"', add
label define ir06a_ind4_lbl 1721 `"Manufacture of other textile products"', add
label define ir06a_ind4_lbl 1724 `"Weaving of textiles n.e.c."', add
label define ir06a_ind4_lbl 1729 `"Manufacture of other textile products"', add
label define ir06a_ind4_lbl 1731 `"Finishing of textiles"', add
label define ir06a_ind4_lbl 1810 `"Manufacture of leather wearing apparel"', add
label define ir06a_ind4_lbl 1820 `"Curing and dyeing skins; manufacture of leather articles"', add
label define ir06a_ind4_lbl 1911 `"Tanning and curing skins; manufacture of suitcases, handbags; articles of leatherworks and harness making; footwear"', add
label define ir06a_ind4_lbl 1920 `"Manufacture of luggage, handbags, saddlery and harness"', add
label define ir06a_ind4_lbl 2010 `"Sawmills and lumber finishing"', add
label define ir06a_ind4_lbl 2021 `"Manufacture of products made of wood, cork, straw and braided materials"', add
label define ir06a_ind4_lbl 2101 `"Manufacture of paper and paper products"', add
label define ir06a_ind4_lbl 2211 `"Editing activities"', add
label define ir06a_ind4_lbl 2221 `"Printing activities and related service activities"', add
label define ir06a_ind4_lbl 2230 `"Reproduction of recorded materials"', add
label define ir06a_ind4_lbl 2310 `"Manufacture of products of coke ovens"', add
label define ir06a_ind4_lbl 2320 `"Manufacture of petroleum refinery products"', add
label define ir06a_ind4_lbl 2330 `"Manufacture of nuclear fuel"', add
label define ir06a_ind4_lbl 2411 `"Manufacture of basic chemical substances"', add
label define ir06a_ind4_lbl 2421 `"Manufacture of other chemical products"', add
label define ir06a_ind4_lbl 2430 `"Manufacture of synthetic or artificial fibers"', add
label define ir06a_ind4_lbl 2511 `"Manufacture of rubber products"', add
label define ir06a_ind4_lbl 2520 `"Manufacture of other plastic products"', add
label define ir06a_ind4_lbl 2611 `"Manufacture of glass and glass products"', add
label define ir06a_ind4_lbl 2691 `"Manufacture of non-metallic mineral products, not included elsewhere"', add
label define ir06a_ind4_lbl 2699 `"Manufacture of non-metallic mineral products, not included elsewhere"', add
label define ir06a_ind4_lbl 2710 `"Manufacture of raw iron and steel products"', add
label define ir06a_ind4_lbl 2721 `"Manufacture of paper and cardboard bags and wrappers"', add
label define ir06a_ind4_lbl 2722 `"Manufacture of paper and office items"', add
label define ir06a_ind4_lbl 2723 `"Manufacture of other paper and cardboard items"', add
label define ir06a_ind4_lbl 2731 `"Metal foundry"', add
label define ir06a_ind4_lbl 2811 `"Manufacture of metallic products for structural use, tanks, deposits (water tanks), and vapor generators"', add
label define ir06a_ind4_lbl 2899 `"Manufacture of other products made of metal; service activities provided to manufacturers of products made of metal"', add
label define ir06a_ind4_lbl 2911 `"Manufacture of engines and turbines, except aircraft, vehicle and bikes"', add
label define ir06a_ind4_lbl 2929 `"Manufacture of other general-purpose machinery"', add
label define ir06a_ind4_lbl 2930 `"Manufacture of household appliances, not included elsewhere"', add
label define ir06a_ind4_lbl 3000 `"Manufacture of office, accounting, and informatics machinery"', add
label define ir06a_ind4_lbl 3110 `"Manufacture of motors, generators, and electrical transformers"', add
label define ir06a_ind4_lbl 3120 `"Manufacture of appliances for distribution and control of electrical energy"', add
label define ir06a_ind4_lbl 3130 `"Manufacture of insulated wires and cables"', add
label define ir06a_ind4_lbl 3140 `"Manufacture of cell-batteries, batteries, and primary batteries"', add
label define ir06a_ind4_lbl 3150 `"Manufacture of electrical lamps"', add
label define ir06a_ind4_lbl 3190 `"Manufacture of other types of electrical equipment not included elsewhere"', add
label define ir06a_ind4_lbl 3210 `"Manufacture of electronic tubes and valves and other electronic components"', add
label define ir06a_ind4_lbl 3220 `"Manufacture of radio and television transmitters and appliances for telephone and telegraph services with wires"', add
label define ir06a_ind4_lbl 3230 `"Manufacture of radio and television receptors and related consumer products"', add
label define ir06a_ind4_lbl 3311 `"Manufacture of medical appliances and instruments and appliances for measuring, verifying, testing, navigating and other uses, except optical instruments"', add
label define ir06a_ind4_lbl 3320 `"Manufacture of optical instruments and photographic equipment"', add
label define ir06a_ind4_lbl 3330 `"Clock manufacturing"', add
label define ir06a_ind4_lbl 3410 `"Manufacture of automobile vehicles"', add
label define ir06a_ind4_lbl 3420 `"Manufacture of chassis for automobile vehicles; Manufacture or tractors and tractor-trailers"', add
label define ir06a_ind4_lbl 3430 `"Manufacture of parts, pieces, and accessories for automobile vehicles and their motors"', add
label define ir06a_ind4_lbl 3511 `"Ship construction and repair"', add
label define ir06a_ind4_lbl 3520 `"Manufacture of locomotives and wheeled materials for railroads and trolleys"', add
label define ir06a_ind4_lbl 3530 `"Manufacture of airplanes and spaceships"', add
label define ir06a_ind4_lbl 3599 `"Manufacture of other types of transportation equipment not included elsewhere"', add
label define ir06a_ind4_lbl 3610 `"Making of objects from mud, china and porcelain objects"', add
label define ir06a_ind4_lbl 3699 `"Manufacturing industries not included elsewhere"', add
label define ir06a_ind4_lbl 3710 `"Recycling of metallic waste and discarded materials"', add
label define ir06a_ind4_lbl 3720 `"Recycling of non-metallic waste and discarded materials"', add
label define ir06a_ind4_lbl 3800 `"Construction and repairing of transportation material"', add
label define ir06a_ind4_lbl 4010 `"Generation, transmission, and distribution of electrical energy"', add
label define ir06a_ind4_lbl 4020 `"Manufacture of gas; distribution of gaseous fuels via pipelines"', add
label define ir06a_ind4_lbl 4100 `"Water collection, purification, and distribution"', add
label define ir06a_ind4_lbl 4510 `"Land preparation"', add
label define ir06a_ind4_lbl 4521 `"Construction of complete buildings or parts of buildings; civil engineering jobs"', add
label define ir06a_ind4_lbl 4531 `"Building installation"', add
label define ir06a_ind4_lbl 4540 `"Finishing buildings"', add
label define ir06a_ind4_lbl 4550 `"Rental of construction or demolition equipment with operators"', add
label define ir06a_ind4_lbl 5010 `"Sale of motor vehicles"', add
label define ir06a_ind4_lbl 5020 `"Maintenance and repair of motor vehicles"', add
label define ir06a_ind4_lbl 5030 `"Sale of motor vehicles parts and accessories"', add
label define ir06a_ind4_lbl 5040 `"Sale, maintenance and repair of motorcycles and related parts and accessories"', add
label define ir06a_ind4_lbl 5050 `"Retail sale of automotive fuel"', add
label define ir06a_ind4_lbl 5110 `"Wholesale sales in exchange for payment or by contract"', add
label define ir06a_ind4_lbl 5129 `"Agricultural raw materials and live animals"', add
label define ir06a_ind4_lbl 5131 `"Wholesale sales of personal goods, household items and diverse consumer products"', add
label define ir06a_ind4_lbl 5133 `"Food, beverages and tobacco"', add
label define ir06a_ind4_lbl 5141 `"Wholesale sales of intermediate products, non-agricultural waste and discarded materials"', add
label define ir06a_ind4_lbl 5144 `"Household goods"', add
label define ir06a_ind4_lbl 5151 `"Non-agricultural intermediate products , waste and scrap"', add
label define ir06a_ind4_lbl 5190 `"Wholesale sales of other products"', add
label define ir06a_ind4_lbl 5219 `"Non-specialized retail commerce"', add
label define ir06a_ind4_lbl 5221 `"Water supply, purification and distribution"', add
label define ir06a_ind4_lbl 5222 `"Retail sale of food, beverages and tobacco in specialized stores"', add
label define ir06a_ind4_lbl 5231 `"Retail commerce of other new products in specialized stores"', add
label define ir06a_ind4_lbl 5235 `"Retail sale of pharmaceutical and medical goods, cosmetic and toilet"', add
label define ir06a_ind4_lbl 5240 `"Retail sales in used-goods stores"', add
label define ir06a_ind4_lbl 5252 `"Retail commerce not carried out in stores"', add
label define ir06a_ind4_lbl 5260 `"Repair of personal goods and household items"', add
label define ir06a_ind4_lbl 5511 `"Hotels"', add
label define ir06a_ind4_lbl 5521 `"Camping sites and other provision of short-stay accommodation"', add
label define ir06a_ind4_lbl 6010 `"Railway transportation"', add
label define ir06a_ind4_lbl 6021 `"Other types of land transportation"', add
label define ir06a_ind4_lbl 6030 `"Transportation via pipelines"', add
label define ir06a_ind4_lbl 6110 `"Maritime and coastal transportation"', add
label define ir06a_ind4_lbl 6120 `"Transportation via interior navigation"', add
label define ir06a_ind4_lbl 6210 `"Regular transportation via air"', add
label define ir06a_ind4_lbl 6309 `"Complementary and auxiliary activities for transportation; activities of travel agencies"', add
label define ir06a_ind4_lbl 6411 `"Air transportation"', add
label define ir06a_ind4_lbl 6421 `"Telecommunications"', add
label define ir06a_ind4_lbl 6511 `"Financial intermediation, except financing insurance and pension plans"', add
label define ir06a_ind4_lbl 6591 `"Real estate activities"', add
label define ir06a_ind4_lbl 6601 `"Rental of machinery and equipment without operators and rental of personal goods and household items"', add
label define ir06a_ind4_lbl 6711 `"Auxiliary activities for financial intermediation, except financing insurance plans and pension plans"', add
label define ir06a_ind4_lbl 6720 `"Auxiliary activities for financial intermediation, not included elsewhere"', add
label define ir06a_ind4_lbl 7011 `"Real estate activities carried out with one's own properties, rental properties, or properties owned by third parties"', add
label define ir06a_ind4_lbl 7020 `"Real estate renting activities with own or leased property"', add
label define ir06a_ind4_lbl 7111 `"Rental of transportation equipment"', add
label define ir06a_ind4_lbl 7129 `"Rental of other types of machinery and equipment"', add
label define ir06a_ind4_lbl 7130 `"Renting of other machinery and equipment"', add
label define ir06a_ind4_lbl 7210 `"Consultants in informatics equipment"', add
label define ir06a_ind4_lbl 7221 `"Software consultancy and supply"', add
label define ir06a_ind4_lbl 7230 `"Data processing"', add
label define ir06a_ind4_lbl 7240 `"Activities related to data bases"', add
label define ir06a_ind4_lbl 7250 `"Maintenance and repair of office, accounting, and informatics machinery"', add
label define ir06a_ind4_lbl 7290 `"Other informatics activities"', add
label define ir06a_ind4_lbl 7310 `"Research and development in natural sciences"', add
label define ir06a_ind4_lbl 7320 `"Research and development in social sciences and humanities"', add
label define ir06a_ind4_lbl 7411 `"Other business activities"', add
label define ir06a_ind4_lbl 7421 `"Activities of architecture and engineering and other technical activities"', add
label define ir06a_ind4_lbl 7430 `"Publicity"', add
label define ir06a_ind4_lbl 7491 `"Activities in services for private companies, not elsewhere classified"', add
label define ir06a_ind4_lbl 7511 `"State administration and application of economic politics and social community politics"', add
label define ir06a_ind4_lbl 7521 `"Activities of maintaining public order and security"', add
label define ir06a_ind4_lbl 7530 `"Activities of insurance plans with obligatory enrollment"', add
label define ir06a_ind4_lbl 8011 `"Primary education"', add
label define ir06a_ind4_lbl 8021 `"Secondary education"', add
label define ir06a_ind4_lbl 8031 `"Higher education"', add
label define ir06a_ind4_lbl 8090 `"Adult education and other types of education"', add
label define ir06a_ind4_lbl 8511 `"Activities related to human health"', add
label define ir06a_ind4_lbl 8520 `"Veterinary activities"', add
label define ir06a_ind4_lbl 8531 `"Social services activities"', add
label define ir06a_ind4_lbl 9001 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define ir06a_ind4_lbl 9111 `"Activities of business, professional, and employers associations"', add
label define ir06a_ind4_lbl 9120 `"Union activities"', add
label define ir06a_ind4_lbl 9199 `"Other sanitation services, not elsewhere classified"', add
label define ir06a_ind4_lbl 9211 `"Cinematographic, radio and television activities and other entertainment activities"', add
label define ir06a_ind4_lbl 9220 `"Activities of news reporting agencies"', add
label define ir06a_ind4_lbl 9231 `"Activities of libraries, archives and museums and other cultural activities"', add
label define ir06a_ind4_lbl 9241 `"Sports activities and other recreational activities"', add
label define ir06a_ind4_lbl 9301 `"Other service activities"', add
label define ir06a_ind4_lbl 9400 `"Religious services by organizations or individuals"', add
label define ir06a_ind4_lbl 9500 `"Private homes with domestic service"', add
label define ir06a_ind4_lbl 9800 `"Extraterritorial organizations and organisms"', add
label define ir06a_ind4_lbl 9900 `"Activities not clearly specified"', add
label define ir06a_ind4_lbl 9999 `"NIU (not in universe)"', add
label values ir06a_ind4 ir06a_ind4_lbl

label define ir06a_ind3_lbl 011 `"Growing of cereals and other crops not elsewhere classified"'
label define ir06a_ind3_lbl 012 `"Growing of vegetables, horticultural specialties and nursery products"', add
label define ir06a_ind3_lbl 013 `"Growing of fruits, vineyards, raisin vineyards, beverage and spice crops"', add
label define ir06a_ind3_lbl 014 `"Farming of animals"', add
label define ir06a_ind3_lbl 015 `"Growing of crops combined with farming of animals (mixed agricultural and animal farming activities)"', add
label define ir06a_ind3_lbl 020 `"Forestry, logging and related activities"', add
label define ir06a_ind3_lbl 050 `"Fishing, aquaculture and service activities incidental to fishing"', add
label define ir06a_ind3_lbl 101 `"Mining and agglomeration of hard coal"', add
label define ir06a_ind3_lbl 103 `"Extraction and agglomeration of peat"', add
label define ir06a_ind3_lbl 111 `"Extraction of crude petroleum and natural gas"', add
label define ir06a_ind3_lbl 112 `"Service activities incidental to oil and gas extraction excluding surveying"', add
label define ir06a_ind3_lbl 120 `"Mining of uranium and thorium ores"', add
label define ir06a_ind3_lbl 131 `"Mining of iron ores"', add
label define ir06a_ind3_lbl 132 `"Mining of non-ferrous metal ores, except uranium and thorium ores"', add
label define ir06a_ind3_lbl 141 `"Quarrying of stone"', add
label define ir06a_ind3_lbl 142 `"Quarrying of sand and clay"', add
label define ir06a_ind3_lbl 151 `"Production, processing and preserving of meat and meat products"', add
label define ir06a_ind3_lbl 152 `"Processing and preserving of fish and fish products"', add
label define ir06a_ind3_lbl 153 `"Processing and preserving of fruit and vegetables"', add
label define ir06a_ind3_lbl 154 `"Manufacture of vegetable and animal oils and fats"', add
label define ir06a_ind3_lbl 155 `"Manufacture of dairy products"', add
label define ir06a_ind3_lbl 160 `"Manufacture of tobacco products"', add
label define ir06a_ind3_lbl 171 `"Preparation and spinning of textile fibres"', add
label define ir06a_ind3_lbl 172 `"Weaving of textiles"', add
label define ir06a_ind3_lbl 173 `"Finishing of textiles"', add
label define ir06a_ind3_lbl 181 `"Manufacture of leather wearing apparel"', add
label define ir06a_ind3_lbl 182 `"Manufacture of other wearing apparel and related articles"', add
label define ir06a_ind3_lbl 191 `"Tanning and dressing of leather"', add
label define ir06a_ind3_lbl 192 `"Manufacture of luggage, handbags, saddlery and harness"', add
label define ir06a_ind3_lbl 201 `"Sawmilling and planning of wood"', add
label define ir06a_ind3_lbl 202 `"Manufacture of veneer sheets, plywood and other panels and boards"', add
label define ir06a_ind3_lbl 210 `"Coal mining operations"', add
label define ir06a_ind3_lbl 221 `"Publishing"', add
label define ir06a_ind3_lbl 222 `"Printing and related activities"', add
label define ir06a_ind3_lbl 223 `"Reproduction of recorded media"', add
label define ir06a_ind3_lbl 231 `"Manufacture of coke oven products"', add
label define ir06a_ind3_lbl 232 `"Manufacture of refined petroleum products"', add
label define ir06a_ind3_lbl 233 `"Processing of nuclear fuel"', add
label define ir06a_ind3_lbl 241 `"Manufacture of basic chemicals"', add
label define ir06a_ind3_lbl 242 `"Manufacture of pesticides and other agrochemical products"', add
label define ir06a_ind3_lbl 243 `"Manufacture of paints, varnishes and similar coatings, printing ink and putty"', add
label define ir06a_ind3_lbl 251 `"Manufacture of rubber products"', add
label define ir06a_ind3_lbl 252 `"Manufacture of plastics products"', add
label define ir06a_ind3_lbl 261 `"Manufacture of glass and glass products"', add
label define ir06a_ind3_lbl 269 `"Production of mineral non-ferrous products (not elsewhere classified)"', add
label define ir06a_ind3_lbl 271 `"Manufacture of basic iron and steel and ferrous metals"', add
label define ir06a_ind3_lbl 272 `"Manufacture of pipes"', add
label define ir06a_ind3_lbl 273 `"Extruding operations to make"', add
label define ir06a_ind3_lbl 281 `"Manufacture of structural metal products"', add
label define ir06a_ind3_lbl 289 `"Manufacture of other fabricated metal products; metal working service activities"', add
label define ir06a_ind3_lbl 291 `"Manufacture of engines and turbines, except aircraft, vehicle and bikes"', add
label define ir06a_ind3_lbl 292 `"Manufacture of other general-purpose machinery"', add
label define ir06a_ind3_lbl 293 `"Manufacture of agricultural and forestry machinery"', add
label define ir06a_ind3_lbl 300 `"Manufacture of office and computing machinery"', add
label define ir06a_ind3_lbl 311 `"Manufacture of electric motors, generators and transformers"', add
label define ir06a_ind3_lbl 312 `"Manufacture of electricity distribution and control apparatus"', add
label define ir06a_ind3_lbl 313 `"Manufacture of insulated wire and cable"', add
label define ir06a_ind3_lbl 314 `"Manufacture of accumulators, primary cells and primary batteries"', add
label define ir06a_ind3_lbl 315 `"Manufacture of electric lamps and lighting equipment"', add
label define ir06a_ind3_lbl 319 `"Manufacture of diverse chemical products"', add
label define ir06a_ind3_lbl 321 `"Manufacture of electronic valves and other electronic components"', add
label define ir06a_ind3_lbl 322 `"Manufacture of television and radio transmitters and apparatus for line telephony and line telegraphy"', add
label define ir06a_ind3_lbl 323 `"Manufacture of television and radio receivers, sound recording or reproducing apparatus and associated goods"', add
label define ir06a_ind3_lbl 331 `"Manufacture of medical and surgical equipment and orthopedic apparatus"', add
label define ir06a_ind3_lbl 332 `"Manufacture of instruments and appliances for measuring, checking, navigating and other purposes except industrial process equipment"', add
label define ir06a_ind3_lbl 333 `"Manufacture of industrial process control equipment"', add
label define ir06a_ind3_lbl 341 `"Manufacture of motor vehicles"', add
label define ir06a_ind3_lbl 342 `"Manufacture of bodies (coachwork) for motor vehicles, manufacture of trailers and semi-trailers"', add
label define ir06a_ind3_lbl 343 `"Manufacture of parts and accessories for motor vehicles and their engines"', add
label define ir06a_ind3_lbl 351 `"Building and repairing of ships and boats"', add
label define ir06a_ind3_lbl 352 `"Manufacture of railway and tramway locomotives and rolling stock"', add
label define ir06a_ind3_lbl 353 `"Manufacture of aircraft and spacecraft"', add
label define ir06a_ind3_lbl 359 `"Manufacture of office, accounting and computing machinery"', add
label define ir06a_ind3_lbl 361 `"Manufacture of furniture"', add
label define ir06a_ind3_lbl 369 `"Manufacturing n.e.c."', add
label define ir06a_ind3_lbl 371 `"Recycling of metal waste and scrap"', add
label define ir06a_ind3_lbl 372 `"Recycling of non-metal waste and scrap"', add
label define ir06a_ind3_lbl 380 `"Construction and repairing of transportation material"', add
label define ir06a_ind3_lbl 401 `"Production and distribution of electricity"', add
label define ir06a_ind3_lbl 402 `"Manufacture of gas; distribution of gaseous fuels through mains"', add
label define ir06a_ind3_lbl 410 `"Collection, purification and distribution of water"', add
label define ir06a_ind3_lbl 451 `"Site preparation"', add
label define ir06a_ind3_lbl 452 `"Building of complete constructions or parts thereof; civil engineering"', add
label define ir06a_ind3_lbl 453 `"Building installation"', add
label define ir06a_ind3_lbl 454 `"Building completion"', add
label define ir06a_ind3_lbl 455 `"Renting of construction or demolition equipment with operator"', add
label define ir06a_ind3_lbl 501 `"Sale of motor vehicles"', add
label define ir06a_ind3_lbl 502 `"Maintenance and repair of motor vehicles"', add
label define ir06a_ind3_lbl 503 `"Sale of motor vehicles parts and accessories"', add
label define ir06a_ind3_lbl 504 `"Sale, maintenance and repair of motorcycles and related parts and accessories"', add
label define ir06a_ind3_lbl 505 `"Retail sale of automotive fuel"', add
label define ir06a_ind3_lbl 511 `"On a fee or contract basis"', add
label define ir06a_ind3_lbl 512 `"Agricultural raw materials and live animals"', add
label define ir06a_ind3_lbl 513 `"Food, beverages and tobacco"', add
label define ir06a_ind3_lbl 514 `"Household goods"', add
label define ir06a_ind3_lbl 515 `"Non-agricultural intermediate products , waste and scrap"', add
label define ir06a_ind3_lbl 519 `"Wholesale business, other types"', add
label define ir06a_ind3_lbl 521 `"Non-specialized retail trade in stores"', add
label define ir06a_ind3_lbl 522 `"Retail sale of food, beverages and tobacco in specialized stores"', add
label define ir06a_ind3_lbl 523 `"Retail sale of pharmaceutical and medical goods, cosmetic and toilet"', add
label define ir06a_ind3_lbl 524 `"Retail sale of textiles"', add
label define ir06a_ind3_lbl 525 `"Other retail trade of new goods in specialized stores"', add
label define ir06a_ind3_lbl 526 `"Retail sale of second-hand goods in stores"', add
label define ir06a_ind3_lbl 551 `"Hotels"', add
label define ir06a_ind3_lbl 552 `"Camping sites and other provision of short-stay accommodation"', add
label define ir06a_ind3_lbl 601 `"Transport via railways"', add
label define ir06a_ind3_lbl 602 `"Other land transport"', add
label define ir06a_ind3_lbl 603 `"Transport via pipelines"', add
label define ir06a_ind3_lbl 611 `"Sea and coastal water transport"', add
label define ir06a_ind3_lbl 612 `"Motor vehicle dealers"', add
label define ir06a_ind3_lbl 621 `"Scheduled air transport"', add
label define ir06a_ind3_lbl 630 `"Shipping"', add
label define ir06a_ind3_lbl 641 `"Post activities"', add
label define ir06a_ind3_lbl 642 `"Telecommunications"', add
label define ir06a_ind3_lbl 651 `"Monetary intermediation"', add
label define ir06a_ind3_lbl 659 `"Real estate activities"', add
label define ir06a_ind3_lbl 660 `"Insurance and pension funding except compulsory social security"', add
label define ir06a_ind3_lbl 671 `"Activities auxiliary to financial intermediation except insurance and pension funding"', add
label define ir06a_ind3_lbl 672 `"Activities auxiliary to insurance and pension funding"', add
label define ir06a_ind3_lbl 701 `"Real estate managing activities with own or leased property"', add
label define ir06a_ind3_lbl 702 `"Real estate renting activities with own or leased property"', add
label define ir06a_ind3_lbl 711 `"Renting of cars"', add
label define ir06a_ind3_lbl 712 `"Renting of transport equipment"', add
label define ir06a_ind3_lbl 713 `"Renting of other machinery and equipment"', add
label define ir06a_ind3_lbl 721 `"Hardware consultancy"', add
label define ir06a_ind3_lbl 722 `"Software consultancy and supply"', add
label define ir06a_ind3_lbl 723 `"Data processing"', add
label define ir06a_ind3_lbl 724 `"Database activities"', add
label define ir06a_ind3_lbl 725 `"Maintenance and repair of office, accounting and computer machinery"', add
label define ir06a_ind3_lbl 729 `"Other informatics activities"', add
label define ir06a_ind3_lbl 731 `"Research and experimental development on natural sciences and engineering"', add
label define ir06a_ind3_lbl 732 `"Research and experimental development on social sciences and humanities"', add
label define ir06a_ind3_lbl 741 `"Legal, accounting, bookkeeping and auditing activities, tax consultancy, market research and**"', add
label define ir06a_ind3_lbl 742 `"Architectural and engineering activities and related technical consultancy"', add
label define ir06a_ind3_lbl 743 `"Technical testing and analysis"', add
label define ir06a_ind3_lbl 749 `"Activities in services for private companies, not elsewhere classified"', add
label define ir06a_ind3_lbl 751 `"Administration of the State and the economic and social policy"', add
label define ir06a_ind3_lbl 752 `"Provision of services to the community as a whole"', add
label define ir06a_ind3_lbl 753 `"Activities in compulsory social security"', add
label define ir06a_ind3_lbl 801 `"Primary education"', add
label define ir06a_ind3_lbl 802 `"Secondary education"', add
label define ir06a_ind3_lbl 803 `"Higher education"', add
label define ir06a_ind3_lbl 809 `"Education for adults and other types of education"', add
label define ir06a_ind3_lbl 851 `"Human health activities"', add
label define ir06a_ind3_lbl 852 `"Veterinary health activities"', add
label define ir06a_ind3_lbl 853 `"Social care activities"', add
label define ir06a_ind3_lbl 900 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define ir06a_ind3_lbl 911 `"Activities of business, employers and professional organizations"', add
label define ir06a_ind3_lbl 912 `"Activities of trade unions"', add
label define ir06a_ind3_lbl 919 `"Other sanitation services, not elsewhere classified"', add
label define ir06a_ind3_lbl 921 `"Motion picture and video activities"', add
label define ir06a_ind3_lbl 922 `"Radio and television activities"', add
label define ir06a_ind3_lbl 923 `"Other entertainment activities"', add
label define ir06a_ind3_lbl 924 `"News agency activities"', add
label define ir06a_ind3_lbl 930 `"Other service activities"', add
label define ir06a_ind3_lbl 940 `"Religious services by organizations or individuals"', add
label define ir06a_ind3_lbl 950 `"Activities of private households as employers of domestic staff"', add
label define ir06a_ind3_lbl 980 `"International and other extra territorial bodies"', add
label define ir06a_ind3_lbl 990 `"Extraterritorial organizations and bodies"', add
label define ir06a_ind3_lbl 999 `"NIU (not in universe)"', add
label values ir06a_ind3 ir06a_ind3_lbl

label define ir06a_classwk_lbl 1 `"Employer"'
label define ir06a_classwk_lbl 2 `"Freelance work"', add
label define ir06a_classwk_lbl 3 `"Public sector salaried"', add
label define ir06a_classwk_lbl 4 `"Private sector salaried"', add
label define ir06a_classwk_lbl 5 `"Unpaid family worker"', add
label define ir06a_classwk_lbl 8 `"Other"', add
label define ir06a_classwk_lbl 9 `"NIU (not in universe)"', add
label values ir06a_classwk ir06a_classwk_lbl

label define ir06a_workloc_lbl 1 `"Current city or village"'
label define ir06a_workloc_lbl 2 `"Another city"', add
label define ir06a_workloc_lbl 3 `"Another village"', add
label define ir06a_workloc_lbl 8 `"Unknown"', add
label define ir06a_workloc_lbl 9 `"NIU (not in universe)"', add
label values ir06a_workloc ir06a_workloc_lbl

label define ir06a_marst_lbl 1 `"Married"'
label define ir06a_marst_lbl 2 `"Widowed"', add
label define ir06a_marst_lbl 3 `"Divorced"', add
label define ir06a_marst_lbl 4 `"Never married"', add
label define ir06a_marst_lbl 8 `"Unknown"', add
label define ir06a_marst_lbl 9 `"NIU (not in universe)"', add
label values ir06a_marst ir06a_marst_lbl

label define ir06a_marrnum_lbl 01 `"1"'
label define ir06a_marrnum_lbl 02 `"2"', add
label define ir06a_marrnum_lbl 03 `"3"', add
label define ir06a_marrnum_lbl 04 `"4"', add
label define ir06a_marrnum_lbl 05 `"5"', add
label define ir06a_marrnum_lbl 06 `"6"', add
label define ir06a_marrnum_lbl 07 `"7"', add
label define ir06a_marrnum_lbl 08 `"8"', add
label define ir06a_marrnum_lbl 09 `"9"', add
label define ir06a_marrnum_lbl 98 `"Unknown"', add
label define ir06a_marrnum_lbl 99 `"NIU (not in universe)"', add
label values ir06a_marrnum ir06a_marrnum_lbl

label define ir06a_everborn_lbl 1 `"Yes"'
label define ir06a_everborn_lbl 2 `"No"', add
label define ir06a_everborn_lbl 8 `"Unknown"', add
label define ir06a_everborn_lbl 9 `"NIU (not in universe)"', add
label values ir06a_everborn ir06a_everborn_lbl

label define ir06a_chbornm_lbl 00 `"No live-born boys"'
label define ir06a_chbornm_lbl 01 `"1"', add
label define ir06a_chbornm_lbl 02 `"2"', add
label define ir06a_chbornm_lbl 03 `"3"', add
label define ir06a_chbornm_lbl 04 `"4"', add
label define ir06a_chbornm_lbl 05 `"5"', add
label define ir06a_chbornm_lbl 06 `"6"', add
label define ir06a_chbornm_lbl 07 `"7"', add
label define ir06a_chbornm_lbl 08 `"8"', add
label define ir06a_chbornm_lbl 09 `"9"', add
label define ir06a_chbornm_lbl 10 `"10"', add
label define ir06a_chbornm_lbl 11 `"11"', add
label define ir06a_chbornm_lbl 12 `"12"', add
label define ir06a_chbornm_lbl 13 `"13"', add
label define ir06a_chbornm_lbl 14 `"14"', add
label define ir06a_chbornm_lbl 15 `"15"', add
label define ir06a_chbornm_lbl 16 `"16"', add
label define ir06a_chbornm_lbl 17 `"17"', add
label define ir06a_chbornm_lbl 98 `"Unknown"', add
label define ir06a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values ir06a_chbornm ir06a_chbornm_lbl

label define ir06a_chbornf_lbl 00 `"No live-born girls"'
label define ir06a_chbornf_lbl 01 `"1"', add
label define ir06a_chbornf_lbl 02 `"2"', add
label define ir06a_chbornf_lbl 03 `"3"', add
label define ir06a_chbornf_lbl 04 `"4"', add
label define ir06a_chbornf_lbl 05 `"5"', add
label define ir06a_chbornf_lbl 06 `"6"', add
label define ir06a_chbornf_lbl 07 `"7"', add
label define ir06a_chbornf_lbl 08 `"8"', add
label define ir06a_chbornf_lbl 09 `"9"', add
label define ir06a_chbornf_lbl 10 `"10"', add
label define ir06a_chbornf_lbl 11 `"11"', add
label define ir06a_chbornf_lbl 12 `"12"', add
label define ir06a_chbornf_lbl 13 `"13"', add
label define ir06a_chbornf_lbl 14 `"14"', add
label define ir06a_chbornf_lbl 15 `"15"', add
label define ir06a_chbornf_lbl 16 `"16"', add
label define ir06a_chbornf_lbl 98 `"Unknown"', add
label define ir06a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values ir06a_chbornf ir06a_chbornf_lbl

label define ir06a_chsurvm_lbl 00 `"No children surviving"'
label define ir06a_chsurvm_lbl 01 `"1"', add
label define ir06a_chsurvm_lbl 02 `"2"', add
label define ir06a_chsurvm_lbl 03 `"3"', add
label define ir06a_chsurvm_lbl 04 `"4"', add
label define ir06a_chsurvm_lbl 05 `"5"', add
label define ir06a_chsurvm_lbl 06 `"6"', add
label define ir06a_chsurvm_lbl 07 `"7"', add
label define ir06a_chsurvm_lbl 08 `"8"', add
label define ir06a_chsurvm_lbl 09 `"9"', add
label define ir06a_chsurvm_lbl 10 `"10"', add
label define ir06a_chsurvm_lbl 11 `"11"', add
label define ir06a_chsurvm_lbl 12 `"12"', add
label define ir06a_chsurvm_lbl 13 `"13"', add
label define ir06a_chsurvm_lbl 14 `"14"', add
label define ir06a_chsurvm_lbl 15 `"15"', add
label define ir06a_chsurvm_lbl 16 `"16"', add
label define ir06a_chsurvm_lbl 98 `"Unknown"', add
label define ir06a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values ir06a_chsurvm ir06a_chsurvm_lbl

label define ir06a_chsurvf_lbl 00 `"No children surviving"'
label define ir06a_chsurvf_lbl 01 `"1"', add
label define ir06a_chsurvf_lbl 02 `"2"', add
label define ir06a_chsurvf_lbl 03 `"3"', add
label define ir06a_chsurvf_lbl 04 `"4"', add
label define ir06a_chsurvf_lbl 05 `"5"', add
label define ir06a_chsurvf_lbl 06 `"6"', add
label define ir06a_chsurvf_lbl 07 `"7"', add
label define ir06a_chsurvf_lbl 08 `"8"', add
label define ir06a_chsurvf_lbl 09 `"9"', add
label define ir06a_chsurvf_lbl 10 `"10"', add
label define ir06a_chsurvf_lbl 11 `"11"', add
label define ir06a_chsurvf_lbl 12 `"12"', add
label define ir06a_chsurvf_lbl 13 `"13"', add
label define ir06a_chsurvf_lbl 14 `"14"', add
label define ir06a_chsurvf_lbl 98 `"Unknown"', add
label define ir06a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values ir06a_chsurvf ir06a_chsurvf_lbl

label define ir06a_brthyr_lbl 1 `"Yes"'
label define ir06a_brthyr_lbl 2 `"No"', add
label define ir06a_brthyr_lbl 8 `"Unknown"', add
label define ir06a_brthyr_lbl 9 `"NIU (not in universe)"', add
label values ir06a_brthyr ir06a_brthyr_lbl

label define ir06a_brthyrm_lbl 0 `"No live-born boys"'
label define ir06a_brthyrm_lbl 1 `"1"', add
label define ir06a_brthyrm_lbl 2 `"2"', add
label define ir06a_brthyrm_lbl 3 `"3"', add
label define ir06a_brthyrm_lbl 4 `"4"', add
label define ir06a_brthyrm_lbl 5 `"5"', add
label define ir06a_brthyrm_lbl 8 `"Unknown"', add
label define ir06a_brthyrm_lbl 9 `"NIU (not in universe)"', add
label values ir06a_brthyrm ir06a_brthyrm_lbl

label define ir06a_brthyrf_lbl 0 `"No live-born girls"'
label define ir06a_brthyrf_lbl 1 `"1"', add
label define ir06a_brthyrf_lbl 2 `"2"', add
label define ir06a_brthyrf_lbl 3 `"3"', add
label define ir06a_brthyrf_lbl 4 `"4"', add
label define ir06a_brthyrf_lbl 5 `"5"', add
label define ir06a_brthyrf_lbl 8 `"Unknown"', add
label define ir06a_brthyrf_lbl 9 `"NIU (not in universe)"', add
label values ir06a_brthyrf ir06a_brthyrf_lbl

label define ir06a_brthsurm_lbl 0 `"No boys alive"'
label define ir06a_brthsurm_lbl 1 `"1"', add
label define ir06a_brthsurm_lbl 2 `"2"', add
label define ir06a_brthsurm_lbl 3 `"3"', add
label define ir06a_brthsurm_lbl 4 `"4"', add
label define ir06a_brthsurm_lbl 8 `"Unknown"', add
label define ir06a_brthsurm_lbl 9 `"NIU (not in universe)"', add
label values ir06a_brthsurm ir06a_brthsurm_lbl

label define ir06a_brthsurf_lbl 0 `"No girls alive"'
label define ir06a_brthsurf_lbl 1 `"1"', add
label define ir06a_brthsurf_lbl 2 `"2"', add
label define ir06a_brthsurf_lbl 3 `"3"', add
label define ir06a_brthsurf_lbl 4 `"4"', add
label define ir06a_brthsurf_lbl 5 `"5"', add
label define ir06a_brthsurf_lbl 8 `"Unknown"', add
label define ir06a_brthsurf_lbl 9 `"NIU (not in universe)"', add
label values ir06a_brthsurf ir06a_brthsurf_lbl

label define ir06a_disab1_lbl 00 `"None"'
label define ir06a_disab1_lbl 01 `"Blind"', add
label define ir06a_disab1_lbl 02 `"Deaf"', add
label define ir06a_disab1_lbl 03 `"Speech and voice disorder"', add
label define ir06a_disab1_lbl 04 `"Hand amputation"', add
label define ir06a_disab1_lbl 05 `"Hand impairment"', add
label define ir06a_disab1_lbl 06 `"Leg amputation"', add
label define ir06a_disab1_lbl 07 `"Leg impairment"', add
label define ir06a_disab1_lbl 08 `"Torso impairment"', add
label define ir06a_disab1_lbl 09 `"Mental disorder"', add
label define ir06a_disab1_lbl 99 `"Unknown"', add
label values ir06a_disab1 ir06a_disab1_lbl

label define ir06a_disab2_lbl 0 `"None"'
label define ir06a_disab2_lbl 1 `"Blind"', add
label define ir06a_disab2_lbl 2 `"Deaf"', add
label define ir06a_disab2_lbl 3 `"Speech and voice disorder"', add
label define ir06a_disab2_lbl 4 `"Hand amputation"', add
label define ir06a_disab2_lbl 5 `"Hand impairment"', add
label define ir06a_disab2_lbl 6 `"Leg amputation"', add
label define ir06a_disab2_lbl 7 `"Leg impairment"', add
label define ir06a_disab2_lbl 8 `"Torso impairment"', add
label define ir06a_disab2_lbl 9 `"Mental disorder"', add
label values ir06a_disab2 ir06a_disab2_lbl

label define ir06a_disab3_lbl 0 `"None"'
label define ir06a_disab3_lbl 1 `"Blind"', add
label define ir06a_disab3_lbl 2 `"Deaf"', add
label define ir06a_disab3_lbl 3 `"Speech and voice disorder"', add
label define ir06a_disab3_lbl 4 `"Hand amputation"', add
label define ir06a_disab3_lbl 5 `"Hand impairment"', add
label define ir06a_disab3_lbl 6 `"Leg amputation"', add
label define ir06a_disab3_lbl 7 `"Leg impairment"', add
label define ir06a_disab3_lbl 8 `"Torso impairment"', add
label define ir06a_disab3_lbl 9 `"Mental disorder"', add
label values ir06a_disab3 ir06a_disab3_lbl

label define ir06a_disabnum_lbl 0 `"None"'
label define ir06a_disabnum_lbl 1 `"1"', add
label define ir06a_disabnum_lbl 2 `"2"', add
label define ir06a_disabnum_lbl 3 `"3"', add
label define ir06a_disabnum_lbl 9 `"Unknown"', add
label values ir06a_disabnum ir06a_disabnum_lbl

label define ir06a_bpl2_lbl 004 `"[no label]"'
label define ir06a_bpl2_lbl 031 `"[no label]"', add
label define ir06a_bpl2_lbl 036 `"[no label]"', add
label define ir06a_bpl2_lbl 048 `"[no label]"', add
label define ir06a_bpl2_lbl 050 `"[no label]"', add
label define ir06a_bpl2_lbl 051 `"[no label]"', add
label define ir06a_bpl2_lbl 076 `"[no label]"', add
label define ir06a_bpl2_lbl 092 `"[no label]"', add
label define ir06a_bpl2_lbl 124 `"[no label]"', add
label define ir06a_bpl2_lbl 191 `"[no label]"', add
label define ir06a_bpl2_lbl 192 `"[no label]"', add
label define ir06a_bpl2_lbl 204 `"[no label]"', add
label define ir06a_bpl2_lbl 208 `"[no label]"', add
label define ir06a_bpl2_lbl 250 `"[no label]"', add
label define ir06a_bpl2_lbl 275 `"[no label]"', add
label define ir06a_bpl2_lbl 276 `"[no label]"', add
label define ir06a_bpl2_lbl 300 `"[no label]"', add
label define ir06a_bpl2_lbl 340 `"[no label]"', add
label define ir06a_bpl2_lbl 356 `"[no label]"', add
label define ir06a_bpl2_lbl 360 `"[no label]"', add
label define ir06a_bpl2_lbl 364 `"[no label]"', add
label define ir06a_bpl2_lbl 368 `"[no label]"', add
label define ir06a_bpl2_lbl 380 `"[no label]"', add
label define ir06a_bpl2_lbl 392 `"[no label]"', add
label define ir06a_bpl2_lbl 414 `"[no label]"', add
label define ir06a_bpl2_lbl 422 `"[no label]"', add
label define ir06a_bpl2_lbl 512 `"[no label]"', add
label define ir06a_bpl2_lbl 528 `"[no label]"', add
label define ir06a_bpl2_lbl 586 `"[no label]"', add
label define ir06a_bpl2_lbl 608 `"[no label]"', add
label define ir06a_bpl2_lbl 616 `"[no label]"', add
label define ir06a_bpl2_lbl 634 `"[no label]"', add
label define ir06a_bpl2_lbl 642 `"[no label]"', add
label define ir06a_bpl2_lbl 643 `"[no label]"', add
label define ir06a_bpl2_lbl 682 `"[no label]"', add
label define ir06a_bpl2_lbl 710 `"[no label]"', add
label define ir06a_bpl2_lbl 736 `"[no label]"', add
label define ir06a_bpl2_lbl 760 `"[no label]"', add
label define ir06a_bpl2_lbl 762 `"[no label]"', add
label define ir06a_bpl2_lbl 764 `"[no label]"', add
label define ir06a_bpl2_lbl 784 `"[no label]"', add
label define ir06a_bpl2_lbl 792 `"[no label]"', add
label define ir06a_bpl2_lbl 795 `"[no label]"', add
label define ir06a_bpl2_lbl 826 `"[no label]"', add
label define ir06a_bpl2_lbl 840 `"[no label]"', add
label define ir06a_bpl2_lbl 860 `"[no label]"', add
label define ir06a_bpl2_lbl 862 `"[no label]"', add
label define ir06a_bpl2_lbl 887 `"[no label]"', add
label define ir06a_bpl2_lbl 891 `"[no label]"', add
label define ir06a_bpl2_lbl 900 `"[no label]"', add
label define ir06a_bpl2_lbl 000 `"[no label]"', add
label values ir06a_bpl2 ir06a_bpl2_lbl

label define ir06a_citiz2_lbl 004 `"[no label]"'
label define ir06a_citiz2_lbl 048 `"[no label]"', add
label define ir06a_citiz2_lbl 050 `"[no label]"', add
label define ir06a_citiz2_lbl 124 `"[no label]"', add
label define ir06a_citiz2_lbl 275 `"[no label]"', add
label define ir06a_citiz2_lbl 340 `"[no label]"', add
label define ir06a_citiz2_lbl 348 `"[no label]"', add
label define ir06a_citiz2_lbl 356 `"[no label]"', add
label define ir06a_citiz2_lbl 360 `"[no label]"', add
label define ir06a_citiz2_lbl 364 `"[no label]"', add
label define ir06a_citiz2_lbl 368 `"[no label]"', add
label define ir06a_citiz2_lbl 398 `"[no label]"', add
label define ir06a_citiz2_lbl 414 `"[no label]"', add
label define ir06a_citiz2_lbl 422 `"[no label]"', add
label define ir06a_citiz2_lbl 586 `"[no label]"', add
label define ir06a_citiz2_lbl 616 `"[no label]"', add
label define ir06a_citiz2_lbl 634 `"[no label]"', add
label define ir06a_citiz2_lbl 643 `"[no label]"', add
label define ir06a_citiz2_lbl 682 `"[no label]"', add
label define ir06a_citiz2_lbl 762 `"[no label]"', add
label define ir06a_citiz2_lbl 784 `"[no label]"', add
label define ir06a_citiz2_lbl 804 `"[no label]"', add
label define ir06a_citiz2_lbl 826 `"[no label]"', add
label define ir06a_citiz2_lbl 862 `"[no label]"', add
label define ir06a_citiz2_lbl 887 `"[no label]"', add
label define ir06a_citiz2_lbl 891 `"[no label]"', add
label define ir06a_citiz2_lbl 900 `"[no label]"', add
label define ir06a_citiz2_lbl 000 `"[no label]"', add
label values ir06a_citiz2 ir06a_citiz2_lbl


