* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                              ///
  int     cntry                   1-3      ///
  int     year                    4-7      ///
  int     sample                  8-11     ///
  double  serial                  12-21    ///
  long    it01a_dwnum             22-28    ///
  byte    it01a_pern              29-30    ///
  byte    it01a_region            31-32    ///
  byte    it01a_area              33-33    ///
  byte    it01a_perno             34-35    ///
  byte    it01a_ownershp          36-36    ///
  byte    it01a_whoowns           37-37    ///
  byte    it01a_isdwell           38-38    ///
  byte    it01a_rooms             39-39    ///
  byte    it01a_roomsp            40-40    ///
  byte    it01a_kitchr            41-41    ///
  byte    it01a_kitchet           42-42    ///
  byte    it01a_kitchcor          43-43    ///
  byte    it01a_stories           44-44    ///
  int     it01a_dwarea            45-47    ///
  byte    it01a_wataqua           48-48    ///
  byte    it01a_watwell           49-49    ///
  byte    it01a_watoth            50-50    ///
  byte    it01a_watnon            51-51    ///
  byte    it01a_showern           52-52    ///
  byte    it01a_toiletn           53-53    ///
  byte    it01a_bathhot           54-54    ///
  byte    it01a_sameheat          55-55    ///
  byte    it01a_hwmeth            56-56    ///
  byte    it01a_hwelect           57-57    ///
  byte    it01a_hwsolar           58-58    ///
  byte    it01a_hwoth             59-59    ///
  byte    it01a_cenheat           60-60    ///
  byte    it01a_indheat           61-61    ///
  byte    it01a_sinheat           62-62    ///
  byte    it01a_sinheatp          63-63    ///
  byte    it01a_noheat            64-64    ///
  byte    it01a_gasheat           65-65    ///
  byte    it01a_diesheat          66-66    ///
  byte    it01a_propheat          67-67    ///
  byte    it01a_woodheat          68-68    ///
  byte    it01a_elecheat          69-69    ///
  byte    it01a_oilheat           70-70    ///
  byte    it01a_coalheat          71-71    ///
  byte    it01a_solheat           72-72    ///
  byte    it01a_othheat           73-73    ///
  byte    it01a_syswork           74-74    ///
  byte    it01a_strwork           75-75    ///
  byte    it01a_nstrwork          76-76    ///
  byte    it01a_privpark          77-77    ///
  byte    it01a_covpark           78-78    ///
  byte    it01a_openpark          79-79    ///
  byte    it01a_phone             80-80    ///
  int     pernum                  81-83    ///
  float   wtper                   84-91    ///
  byte    it01a_pernum            92-93    ///
  byte    it01a_pernumo           94-95    ///
  byte    it01a_colltype          96-97    ///
  byte    it01a_collreas          98-99    ///
  byte    it01a_relate            100-101  ///
  byte    it01a_sex               102-102  ///
  byte    it01a_agegr             103-104  ///
  byte    it01a_bpl               105-105  ///
  byte    it01a_bplcont           106-107  ///
  byte    it01a_citiz             108-108  ///
  byte    it01a_citizcont         109-110  ///
  byte    it01a_citizital         111-111  ///
  int     it01a_italarriv         112-115  ///
  byte    it01a_whyhere           116-116  ///
  byte    it01a_marst             117-117  ///
  int     it01a_maryear           118-121  ///
  byte    it01a_marstpr           122-122  ///
  byte    it01a_present           123-123  ///
  byte    it01a_othracco          124-124  ///
  byte    it01a_dayotacc          125-125  ///
  byte    it01a_livotacc          126-126  ///
  byte    it01a_locotacc          127-127  ///
  byte    it01a_resotacc          128-128  ///
  byte    it01a_placsted          129-129  ///
  byte    it01a_provsted          130-130  ///
  byte    it01a_contsted          131-132  ///
  byte    it01a_preschl           133-133  ///
  byte    it01a_edattan           134-134  ///
  byte    it01a_eddur             135-135  ///
  byte    it01a_postuniv          136-136  ///
  byte    it01a_edabroad          137-137  ///
  byte    it01a_anni_tit_stud_es  138-139  ///
  byte    it01a_school            140-140  ///
  byte    it01a_voctrain          141-141  ///
  byte    it01a_course1           142-142  ///
  byte    it01a_course2           143-143  ///
  byte    it01a_course3           144-144  ///
  byte    it01a_empstat           145-146  ///
  byte    it01a_worked            147-147  ///
  byte    it01a_jobseek           148-148  ///
  byte    it01a_willwork          149-149  ///
  byte    it01a_hadjob            150-150  ///
  byte    it01a_workedoct         151-151  ///
  byte    it01a_whyworked         152-152  ///
  byte    it01a_hrworked          153-154  ///
  byte    it01a_wkfull            155-155  ///
  byte    it01a_classwkr          156-156  ///
  byte    it01a_paidwkr           157-157  ///
  byte    it01a_wrkcondi          158-158  ///
  byte    it01a_contract          159-159  ///
  byte    it01a_occ               160-161  ///
  byte    it01a_wrkplc1           162-162  ///
  byte    it01a_reenter           163-163  ///
  byte    it01a_wkpl              164-164  ///
  byte    it01a_regwkpl           165-166  ///
  byte    it01a_cntwkpl           167-168  ///
  byte    it01a_minlvhm           169-170  ///
  byte    it01a_timecomu          171-171  ///
  byte    it01a_trancomu          172-173  ///
  byte    it01a_occupied          174-174  ///
  using `"ipumsi_00083.dat"'

replace wtper                  = wtper                  / 100

format serial                 %10.0f
format wtper                  %8.2f

label var cntry                  `"Country"'
label var year                   `"Year"'
label var sample                 `"IPUMS sample identifier"'
label var serial                 `"Household serial number"'
label var it01a_dwnum            `"Dwelling number"'
label var it01a_pern             `"Number of persons in household"'
label var it01a_region           `"Region of residence"'
label var it01a_area             `"Geographic area of residence"'
label var it01a_perno            `"Person number"'
label var it01a_ownershp         `"Ownership and use of the dwelling"'
label var it01a_whoowns          `"Owner of the dwelling"'
label var it01a_isdwell          `"Type of accomodation"'
label var it01a_rooms            `"Total number of rooms"'
label var it01a_roomsp           `"Number of rooms for professional use"'
label var it01a_kitchr           `"Number of kitchens"'
label var it01a_kitchet          `"Kitchenette"'
label var it01a_kitchcor         `"Kitchen corner in a room with multiple functions"'
label var it01a_stories          `"Number of levels in the dwelling"'
label var it01a_dwarea           `"Surface area of the dwelling (sq meters)"'
label var it01a_wataqua          `"Potable water from an aqueduct"'
label var it01a_watwell          `"Potable water from a well"'
label var it01a_watoth           `"Potable water from another supply source"'
label var it01a_watnon           `"Non-potable waterin the dwelling"'
label var it01a_showern          `"Number of shower and bathtub systems"'
label var it01a_toiletn          `"Number of toilets (WC) in the dwelling"'
label var it01a_bathhot          `"Hot running water in the bathroom and/or kitchen in the dwelling"'
label var it01a_sameheat         `"Hot water produced by the same system used to heat the dwelling"'
label var it01a_hwmeth           `"Methane, natural gas used to heat water"'
label var it01a_hwelect          `"Electricity used to heat water"'
label var it01a_hwsolar          `"Solar energy used to heat water"'
label var it01a_hwoth            `"Other used to heat water"'
label var it01a_cenheat          `"Centralized heating system used by various dwellings"'
label var it01a_indheat          `"Fixed independent heating system for exclusive use of the dwelling"'
label var it01a_sinheat          `"Fixed single heating systems that heat all or most of the dwellings"'
label var it01a_sinheatp         `"Fixed single heating systems that heat only some parts of the dwelling"'
label var it01a_noheat           `"Heating system of some kind listed above"'
label var it01a_gasheat          `"Methane, natural gas fuels the heating system in the dwelling"'
label var it01a_diesheat         `"Diesel fuels the heating system in the dwelling"'
label var it01a_propheat         `"Liquid propane gas fuels the heating system in the dwelling"'
label var it01a_woodheat         `"Wood fuels the heating system in the dwelling"'
label var it01a_elecheat         `"Electricity feeds the heating system in the dwelling"'
label var it01a_oilheat          `"Fuel oil fuels the heating system in the dwelling"'
label var it01a_coalheat         `"Coal that fuels the heating system in the dwelling"'
label var it01a_solheat          `"Solar energy fuels the heating system in the dwelling"'
label var it01a_othheat          `"Other types of fuel or energy feeds the heating system in the dwelling"'
label var it01a_syswork          `"Work or interventions carried out to systems in the dwelling"'
label var it01a_strwork          `"Any work or interventions carried out to structural elements in the dwelling"'
label var it01a_nstrwork         `"Work or interventions carried out to non-structural elements in the dwelling"'
label var it01a_privpark         `"Private box available for car park"'
label var it01a_covpark          `"Covered parking available"'
label var it01a_openpark         `"Open personal and private parking available"'
label var it01a_phone            `"At least one active fixed telephone line in the dwelling"'
label var pernum                 `"Person number"'
label var wtper                  `"Person weight"'
label var it01a_pernum           `"Person number (within household)"'
label var it01a_pernumo          `"Person number, original"'
label var it01a_colltype         `"Type of collective"'
label var it01a_collreas         `"Main reason staying in collective"'
label var it01a_relate           `"Relationship through kinship or institutional household"'
label var it01a_sex              `"Sex"'
label var it01a_agegr            `"Age in categories"'
label var it01a_bpl              `"Place of birth"'
label var it01a_bplcont          `"Continent and area of birth"'
label var it01a_citiz            `"Citizenship"'
label var it01a_citizcont        `"Continent and area of citizenship"'
label var it01a_citizital        `"Italian citizenship"'
label var it01a_italarriv        `"Year moved to Italy"'
label var it01a_whyhere          `"Main reason for presence in Italy"'
label var it01a_marst            `"Marital status"'
label var it01a_maryear          `"Year of most recent marriage"'
label var it01a_marstpr          `"Marital status prior to last marriage"'
label var it01a_present          `"Person's location on the date of the Census (21 October 2001)"'
label var it01a_othracco         `"Lived in other accommodation or institutional household during the past 12 month"'
label var it01a_dayotacc         `"Number of days in which lived other than in the present accommodation or institu"'
label var it01a_livotacc         `"Currently living, even for a limited period of time, in one or more accommodatio"'
label var it01a_locotacc         `"Location of the accommodation or institutional household other than the present"'
label var it01a_resotacc         `"Main reason used other accommodation or institutional household"'
label var it01a_placsted         `"Place of habitual residence one year ago"'
label var it01a_provsted         `"Province of habitual residence one year ago"'
label var it01a_contsted         `"Continent of habitual residence one year ago"'
label var it01a_preschl          `"Preschool attendance"'
label var it01a_edattan          `"Highest educational degree obtained"'
label var it01a_eddur            `"Duration of course"'
label var it01a_postuniv         `"In possession of post-university specialization and/or research doctorate"'
label var it01a_edabroad         `"Highest educational certificate or degree was obtained abroad"'
label var it01a_anni_tit_stud_es `"Years needed to obtain this certificate/degree abroad"'
label var it01a_school           `"Enrolled in school or a post-diploma non-university course"'
label var it01a_voctrain         `"Attending a vocational training/updating course"'
label var it01a_course1          `"Type of course attended: professional training/updating course organized and/or "'
label var it01a_course2          `"Type of course attended: professional training course offered by the region, pro"'
label var it01a_course3          `"Type of course attended: private professional training course"'
label var it01a_empstat          `"Employment status"'
label var it01a_worked           `"Worked one or more hours of paid work, or as contributing family worker"'
label var it01a_jobseek          `"Actively tried to find a job or attempted to open own activity"'
label var it01a_willwork         `"Would be willing to start work within 2 weeks, should the opportunity arise"'
label var it01a_hadjob           `"Ever held a paid job or worked as a contributing family worker during their life"'
label var it01a_workedoct        `"Worked during the week of 14 to 20 October"'
label var it01a_whyworked        `"Reason did not work during the week of 14 to 20 October"'
label var it01a_hrworked         `"Number of hours worked during the week of 14 to 20 October"'
label var it01a_wkfull           `"Full-time or part-time work"'
label var it01a_classwkr         `"Class of worker"'
label var it01a_paidwkr          `"Have paid employees"'
label var it01a_wrkcondi         `"Indefinite or definite job"'
label var it01a_contract         `"Type of work contract"'
label var it01a_occ              `"Occupation"'
label var it01a_wrkplc1          `"Travel daily to place of study or work"'
label var it01a_reenter          `"Re-enters from his/her usual place of study or work to the accommodation every d"'
label var it01a_wkpl             `"Usual place of study or work"'
label var it01a_regwkpl          `"Region of usual place of study or work"'
label var it01a_cntwkpl          `"Continent of usual place of study or work"'
label var it01a_minlvhm          `"Minute person left the house for his/her usual place of study or work"'
label var it01a_timecomu         `"Time to go to the usual place of study or work (one way)"'
label var it01a_trancomu         `"Means of transportation used to cover the longest stretch of your trip to the us"'
label var it01a_occupied         `"Occupied"'

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

label define it01a_pern_lbl 01 `"1"'
label define it01a_pern_lbl 02 `"2"', add
label define it01a_pern_lbl 03 `"3"', add
label define it01a_pern_lbl 04 `"4"', add
label define it01a_pern_lbl 05 `"5"', add
label define it01a_pern_lbl 06 `"6"', add
label define it01a_pern_lbl 07 `"7"', add
label define it01a_pern_lbl 08 `"8"', add
label define it01a_pern_lbl 09 `"9"', add
label define it01a_pern_lbl 10 `"10"', add
label define it01a_pern_lbl 11 `"11"', add
label define it01a_pern_lbl 12 `"12"', add
label define it01a_pern_lbl 13 `"13"', add
label values it01a_pern it01a_pern_lbl

label define it01a_region_lbl 01 `"Piemonte-Valle d'Aosta"'
label define it01a_region_lbl 03 `"Lombardia"', add
label define it01a_region_lbl 04 `"Trentino-Alto Adige"', add
label define it01a_region_lbl 05 `"Veneto"', add
label define it01a_region_lbl 06 `"Friuli-Venezia Giulia"', add
label define it01a_region_lbl 07 `"Liguria"', add
label define it01a_region_lbl 08 `"Emilia-Romagna"', add
label define it01a_region_lbl 09 `"Toscana"', add
label define it01a_region_lbl 10 `"Umbria"', add
label define it01a_region_lbl 11 `"Marche"', add
label define it01a_region_lbl 12 `"Lazio"', add
label define it01a_region_lbl 13 `"Abruzzo"', add
label define it01a_region_lbl 14 `"Molise"', add
label define it01a_region_lbl 15 `"Campania"', add
label define it01a_region_lbl 16 `"Puglia"', add
label define it01a_region_lbl 17 `"Basilicata"', add
label define it01a_region_lbl 18 `"Calabria"', add
label define it01a_region_lbl 19 `"Sicilia"', add
label define it01a_region_lbl 20 `"Sardegna"', add
label values it01a_region it01a_region_lbl

label define it01a_area_lbl 1 `"Northwest (Piedmont, Aosta Valley, Liguria, Lombardy)"'
label define it01a_area_lbl 2 `"Northeast (Trentino-Alto-Adige, Veneto, Friuli-Venezia Giulia, Emilia-Romagna)"', add
label define it01a_area_lbl 3 `"Central (Tuscany, Umbria, Marche, Lazio)"', add
label define it01a_area_lbl 4 `"South (Abruzzo, Molise, Campania, Basilicata, Calabria)"', add
label define it01a_area_lbl 5 `"Island (Sicily, Sardinia)"', add
label values it01a_area it01a_area_lbl

label define it01a_perno_lbl 01 `"1"'
label define it01a_perno_lbl 02 `"2"', add
label define it01a_perno_lbl 03 `"3"', add
label define it01a_perno_lbl 04 `"4"', add
label define it01a_perno_lbl 05 `"5"', add
label define it01a_perno_lbl 06 `"6"', add
label define it01a_perno_lbl 07 `"7"', add
label define it01a_perno_lbl 08 `"8"', add
label define it01a_perno_lbl 09 `"9"', add
label define it01a_perno_lbl 10 `"10"', add
label define it01a_perno_lbl 11 `"11"', add
label define it01a_perno_lbl 12 `"12"', add
label define it01a_perno_lbl 13 `"13"', add
label define it01a_perno_lbl 99 `"NIU (not in universe -- collective)"', add
label values it01a_perno it01a_perno_lbl

label define it01a_ownershp_lbl 1 `"Property (fully or partially), life tenancy or redemption, of at least one of the persons that live therein"'
label define it01a_ownershp_lbl 2 `"Under rental to one or more of the persons residing therein"', add
label define it01a_ownershp_lbl 3 `"Inhabited free of charge (on free loan, etc.) in exchange for services (janitor, etc.) by one or more of the persons residing therein"', add
label define it01a_ownershp_lbl 8 `"Unknown"', add
label define it01a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values it01a_ownershp it01a_ownershp_lbl

label define it01a_whoowns_lbl 0 `"NIU (not in universe)"'
label define it01a_whoowns_lbl 1 `"A physical person (or more than one person in co-property)"', add
label define it01a_whoowns_lbl 2 `"A firm or company (insurance, bank, real-estate, building society, commercial, etc.)"', add
label define it01a_whoowns_lbl 3 `"A residential building cooperative"', add
label define it01a_whoowns_lbl 4 `"The state, region, province"', add
label define it01a_whoowns_lbl 5 `"The municipality"', add
label define it01a_whoowns_lbl 6 `"A Social Security Organization (INPS, INPDAP, etc.)"', add
label define it01a_whoowns_lbl 7 `"An Independent Institute for Settlement Homes (IACP) or Territorial Enterprise (ATER) or similar"', add
label define it01a_whoowns_lbl 8 `"Other"', add
label define it01a_whoowns_lbl 9 `"Unknown"', add
label values it01a_whoowns it01a_whoowns_lbl

label define it01a_isdwell_lbl 1 `"Dwelling"'
label define it01a_isdwell_lbl 2 `"Other type of lodging"', add
label define it01a_isdwell_lbl 8 `"Unknown"', add
label define it01a_isdwell_lbl 9 `"NIU (not in universe)"', add
label values it01a_isdwell it01a_isdwell_lbl

label define it01a_rooms_lbl 1 `"1"'
label define it01a_rooms_lbl 2 `"2"', add
label define it01a_rooms_lbl 3 `"3"', add
label define it01a_rooms_lbl 4 `"4 or more"', add
label define it01a_rooms_lbl 8 `"Unknown"', add
label define it01a_rooms_lbl 9 `"NIU (not in universe)"', add
label values it01a_rooms it01a_rooms_lbl

label define it01a_roomsp_lbl 0 `"0"'
label define it01a_roomsp_lbl 1 `"1"', add
label define it01a_roomsp_lbl 2 `"2"', add
label define it01a_roomsp_lbl 3 `"3"', add
label define it01a_roomsp_lbl 4 `"4 or more"', add
label define it01a_roomsp_lbl 8 `"Unknown"', add
label define it01a_roomsp_lbl 9 `"NIU (not in universe)"', add
label values it01a_roomsp it01a_roomsp_lbl

label define it01a_kitchr_lbl 0 `"0"'
label define it01a_kitchr_lbl 1 `"1"', add
label define it01a_kitchr_lbl 2 `"2 or more"', add
label define it01a_kitchr_lbl 8 `"Unknown"', add
label define it01a_kitchr_lbl 9 `"NIU (not in universe)"', add
label values it01a_kitchr it01a_kitchr_lbl

label define it01a_kitchet_lbl 1 `"Yes"'
label define it01a_kitchet_lbl 2 `"No"', add
label define it01a_kitchet_lbl 8 `"Unknown"', add
label define it01a_kitchet_lbl 9 `"NIU (not in universe)"', add
label values it01a_kitchet it01a_kitchet_lbl

label define it01a_kitchcor_lbl 1 `"Yes"'
label define it01a_kitchcor_lbl 2 `"No"', add
label define it01a_kitchcor_lbl 8 `"Unknown"', add
label define it01a_kitchcor_lbl 9 `"NIU (not in universe)"', add
label values it01a_kitchcor it01a_kitchcor_lbl

label define it01a_stories_lbl 1 `"1"'
label define it01a_stories_lbl 2 `"2"', add
label define it01a_stories_lbl 3 `"3"', add
label define it01a_stories_lbl 4 `"4+"', add
label define it01a_stories_lbl 8 `"Unknown"', add
label define it01a_stories_lbl 9 `"NIU (not in universe)"', add
label values it01a_stories it01a_stories_lbl

label define it01a_dwarea_lbl 010 `"10"'
label define it01a_dwarea_lbl 020 `"20"', add
label define it01a_dwarea_lbl 030 `"30"', add
label define it01a_dwarea_lbl 040 `"40"', add
label define it01a_dwarea_lbl 050 `"50"', add
label define it01a_dwarea_lbl 060 `"60"', add
label define it01a_dwarea_lbl 070 `"70"', add
label define it01a_dwarea_lbl 080 `"80"', add
label define it01a_dwarea_lbl 090 `"90"', add
label define it01a_dwarea_lbl 100 `"100"', add
label define it01a_dwarea_lbl 110 `"110"', add
label define it01a_dwarea_lbl 120 `"120"', add
label define it01a_dwarea_lbl 130 `"130"', add
label define it01a_dwarea_lbl 140 `"140"', add
label define it01a_dwarea_lbl 150 `"150 square meters or more"', add
label define it01a_dwarea_lbl 998 `"Unknown"', add
label define it01a_dwarea_lbl 999 `"NIU (not in universe)"', add
label values it01a_dwarea it01a_dwarea_lbl

label define it01a_wataqua_lbl 1 `"No"'
label define it01a_wataqua_lbl 2 `"Yes"', add
label define it01a_wataqua_lbl 8 `"Unknown"', add
label define it01a_wataqua_lbl 9 `"NIU (not in universe)"', add
label values it01a_wataqua it01a_wataqua_lbl

label define it01a_watwell_lbl 1 `"No"'
label define it01a_watwell_lbl 2 `"Yes"', add
label define it01a_watwell_lbl 8 `"Unknown"', add
label define it01a_watwell_lbl 9 `"NIU (not in universe)"', add
label values it01a_watwell it01a_watwell_lbl

label define it01a_watoth_lbl 1 `"No"'
label define it01a_watoth_lbl 2 `"Yes"', add
label define it01a_watoth_lbl 8 `"Unknown"', add
label define it01a_watoth_lbl 9 `"NIU (not in universe)"', add
label values it01a_watoth it01a_watoth_lbl

label define it01a_watnon_lbl 1 `"No"'
label define it01a_watnon_lbl 2 `"Yes"', add
label define it01a_watnon_lbl 8 `"Unknown"', add
label define it01a_watnon_lbl 9 `"NIU (not in universe)"', add
label values it01a_watnon it01a_watnon_lbl

label define it01a_showern_lbl 0 `"0"'
label define it01a_showern_lbl 1 `"1"', add
label define it01a_showern_lbl 2 `"2"', add
label define it01a_showern_lbl 3 `"3"', add
label define it01a_showern_lbl 4 `"4 or more"', add
label define it01a_showern_lbl 8 `"Unknown"', add
label define it01a_showern_lbl 9 `"NIU (not in universe)"', add
label values it01a_showern it01a_showern_lbl

label define it01a_toiletn_lbl 0 `"0"'
label define it01a_toiletn_lbl 1 `"1"', add
label define it01a_toiletn_lbl 2 `"2"', add
label define it01a_toiletn_lbl 3 `"3"', add
label define it01a_toiletn_lbl 4 `"4 or more"', add
label define it01a_toiletn_lbl 8 `"Unknown"', add
label define it01a_toiletn_lbl 9 `"NIU (not in universe)"', add
label values it01a_toiletn it01a_toiletn_lbl

label define it01a_bathhot_lbl 1 `"Yes"'
label define it01a_bathhot_lbl 2 `"No"', add
label define it01a_bathhot_lbl 8 `"Unknown"', add
label define it01a_bathhot_lbl 9 `"NIU (not in universe)"', add
label values it01a_bathhot it01a_bathhot_lbl

label define it01a_sameheat_lbl 1 `"Yes"'
label define it01a_sameheat_lbl 2 `"No"', add
label define it01a_sameheat_lbl 8 `"Unknown"', add
label define it01a_sameheat_lbl 9 `"NIU (not in universe)"', add
label values it01a_sameheat it01a_sameheat_lbl

label define it01a_hwmeth_lbl 1 `"Yes"'
label define it01a_hwmeth_lbl 2 `"No"', add
label define it01a_hwmeth_lbl 8 `"Unknown"', add
label define it01a_hwmeth_lbl 9 `"NIU (not in universe)"', add
label values it01a_hwmeth it01a_hwmeth_lbl

label define it01a_hwelect_lbl 1 `"Yes"'
label define it01a_hwelect_lbl 2 `"No"', add
label define it01a_hwelect_lbl 8 `"Unknown"', add
label define it01a_hwelect_lbl 9 `"NIU (not in universe)"', add
label values it01a_hwelect it01a_hwelect_lbl

label define it01a_hwsolar_lbl 1 `"Yes"'
label define it01a_hwsolar_lbl 2 `"No"', add
label define it01a_hwsolar_lbl 8 `"Unknown"', add
label define it01a_hwsolar_lbl 9 `"NIU (not in universe)"', add
label values it01a_hwsolar it01a_hwsolar_lbl

label define it01a_hwoth_lbl 1 `"Yes"'
label define it01a_hwoth_lbl 2 `"No"', add
label define it01a_hwoth_lbl 8 `"Unknown"', add
label define it01a_hwoth_lbl 9 `"NIU (not in universe)"', add
label values it01a_hwoth it01a_hwoth_lbl

label define it01a_cenheat_lbl 1 `"Yes"'
label define it01a_cenheat_lbl 2 `"No"', add
label define it01a_cenheat_lbl 8 `"Unknown"', add
label define it01a_cenheat_lbl 9 `"NIU (not in universe)"', add
label values it01a_cenheat it01a_cenheat_lbl

label define it01a_indheat_lbl 1 `"Yes"'
label define it01a_indheat_lbl 2 `"No"', add
label define it01a_indheat_lbl 8 `"Unknown"', add
label define it01a_indheat_lbl 9 `"NIU (not in universe)"', add
label values it01a_indheat it01a_indheat_lbl

label define it01a_sinheat_lbl 1 `"Yes"'
label define it01a_sinheat_lbl 2 `"No"', add
label define it01a_sinheat_lbl 8 `"Unknown"', add
label define it01a_sinheat_lbl 9 `"NIU (not in universe)"', add
label values it01a_sinheat it01a_sinheat_lbl

label define it01a_sinheatp_lbl 1 `"Yes"'
label define it01a_sinheatp_lbl 2 `"No"', add
label define it01a_sinheatp_lbl 8 `"Unknown"', add
label define it01a_sinheatp_lbl 9 `"NIU (not in universe)"', add
label values it01a_sinheatp it01a_sinheatp_lbl

label define it01a_noheat_lbl 1 `"Does not have heating system"'
label define it01a_noheat_lbl 2 `"Has heating system"', add
label define it01a_noheat_lbl 8 `"Unknown"', add
label define it01a_noheat_lbl 9 `"NIU (not in universe)"', add
label values it01a_noheat it01a_noheat_lbl

label define it01a_gasheat_lbl 1 `"Yes"'
label define it01a_gasheat_lbl 2 `"No"', add
label define it01a_gasheat_lbl 8 `"Unknown"', add
label define it01a_gasheat_lbl 9 `"NIU (not in universe)"', add
label values it01a_gasheat it01a_gasheat_lbl

label define it01a_diesheat_lbl 1 `"Yes"'
label define it01a_diesheat_lbl 2 `"No"', add
label define it01a_diesheat_lbl 8 `"Unknown"', add
label define it01a_diesheat_lbl 9 `"NIU (not in universe)"', add
label values it01a_diesheat it01a_diesheat_lbl

label define it01a_propheat_lbl 1 `"Yes"'
label define it01a_propheat_lbl 2 `"No"', add
label define it01a_propheat_lbl 8 `"Unknown"', add
label define it01a_propheat_lbl 9 `"NIU (not in universe)"', add
label values it01a_propheat it01a_propheat_lbl

label define it01a_woodheat_lbl 1 `"Yes"'
label define it01a_woodheat_lbl 2 `"No"', add
label define it01a_woodheat_lbl 8 `"Unknown"', add
label define it01a_woodheat_lbl 9 `"NIU (not in universe)"', add
label values it01a_woodheat it01a_woodheat_lbl

label define it01a_elecheat_lbl 1 `"Yes"'
label define it01a_elecheat_lbl 2 `"No"', add
label define it01a_elecheat_lbl 8 `"Unknown"', add
label define it01a_elecheat_lbl 9 `"NIU (not in universe)"', add
label values it01a_elecheat it01a_elecheat_lbl

label define it01a_oilheat_lbl 1 `"Yes"'
label define it01a_oilheat_lbl 2 `"No"', add
label define it01a_oilheat_lbl 8 `"Unknown"', add
label define it01a_oilheat_lbl 9 `"NIU (not in universe)"', add
label values it01a_oilheat it01a_oilheat_lbl

label define it01a_coalheat_lbl 1 `"Yes"'
label define it01a_coalheat_lbl 2 `"No"', add
label define it01a_coalheat_lbl 8 `"Unknown"', add
label define it01a_coalheat_lbl 9 `"NIU (not in universe)"', add
label values it01a_coalheat it01a_coalheat_lbl

label define it01a_solheat_lbl 1 `"Yes"'
label define it01a_solheat_lbl 2 `"No"', add
label define it01a_solheat_lbl 8 `"Unknown"', add
label define it01a_solheat_lbl 9 `"NIU (not in universe)"', add
label values it01a_solheat it01a_solheat_lbl

label define it01a_othheat_lbl 1 `"Yes"'
label define it01a_othheat_lbl 2 `"No"', add
label define it01a_othheat_lbl 8 `"Unknown"', add
label define it01a_othheat_lbl 9 `"NIU (not in universe)"', add
label values it01a_othheat it01a_othheat_lbl

label define it01a_syswork_lbl 1 `"Yes"'
label define it01a_syswork_lbl 2 `"No"', add
label define it01a_syswork_lbl 8 `"Unknown"', add
label define it01a_syswork_lbl 9 `"NIU (not in universe)"', add
label values it01a_syswork it01a_syswork_lbl

label define it01a_strwork_lbl 1 `"Yes"'
label define it01a_strwork_lbl 2 `"No"', add
label define it01a_strwork_lbl 8 `"Unknown"', add
label define it01a_strwork_lbl 9 `"NIU (not in universe)"', add
label values it01a_strwork it01a_strwork_lbl

label define it01a_nstrwork_lbl 1 `"Yes"'
label define it01a_nstrwork_lbl 2 `"No"', add
label define it01a_nstrwork_lbl 8 `"Unknown"', add
label define it01a_nstrwork_lbl 9 `"NIU (not in universe)"', add
label values it01a_nstrwork it01a_nstrwork_lbl

label define it01a_privpark_lbl 1 `"Yes"'
label define it01a_privpark_lbl 2 `"No"', add
label define it01a_privpark_lbl 8 `"Unknown"', add
label define it01a_privpark_lbl 9 `"NIU (not in universe)"', add
label values it01a_privpark it01a_privpark_lbl

label define it01a_covpark_lbl 1 `"Yes"'
label define it01a_covpark_lbl 2 `"No"', add
label define it01a_covpark_lbl 8 `"Unknown"', add
label define it01a_covpark_lbl 9 `"NIU (not in universe)"', add
label values it01a_covpark it01a_covpark_lbl

label define it01a_openpark_lbl 1 `"Yes"'
label define it01a_openpark_lbl 2 `"No"', add
label define it01a_openpark_lbl 8 `"Unknown"', add
label define it01a_openpark_lbl 9 `"NIU (not in universe)"', add
label values it01a_openpark it01a_openpark_lbl

label define it01a_phone_lbl 1 `"Yes"'
label define it01a_phone_lbl 2 `"No"', add
label define it01a_phone_lbl 8 `"Unknown"', add
label define it01a_phone_lbl 9 `"NIU (not in universe)"', add
label values it01a_phone it01a_phone_lbl

label define it01a_pernum_lbl 00 `"Household record"'
label define it01a_pernum_lbl 01 `"1"', add
label define it01a_pernum_lbl 02 `"2"', add
label define it01a_pernum_lbl 03 `"3"', add
label define it01a_pernum_lbl 04 `"4"', add
label define it01a_pernum_lbl 05 `"5"', add
label define it01a_pernum_lbl 06 `"6"', add
label define it01a_pernum_lbl 07 `"7"', add
label define it01a_pernum_lbl 08 `"8"', add
label define it01a_pernum_lbl 09 `"9"', add
label define it01a_pernum_lbl 10 `"10"', add
label define it01a_pernum_lbl 11 `"11"', add
label define it01a_pernum_lbl 12 `"12"', add
label define it01a_pernum_lbl 13 `"13"', add
label values it01a_pernum it01a_pernum_lbl

label define it01a_pernumo_lbl 01 `"1"'
label define it01a_pernumo_lbl 02 `"2"', add
label define it01a_pernumo_lbl 03 `"3"', add
label define it01a_pernumo_lbl 04 `"4"', add
label define it01a_pernumo_lbl 05 `"5"', add
label define it01a_pernumo_lbl 06 `"6"', add
label define it01a_pernumo_lbl 07 `"7"', add
label define it01a_pernumo_lbl 08 `"8"', add
label define it01a_pernumo_lbl 09 `"9"', add
label define it01a_pernumo_lbl 10 `"10"', add
label define it01a_pernumo_lbl 11 `"11"', add
label define it01a_pernumo_lbl 12 `"12"', add
label define it01a_pernumo_lbl 13 `"13"', add
label define it01a_pernumo_lbl 99 `"NIU (not in universe -- collective)"', add
label values it01a_pernumo it01a_pernumo_lbl

label define it01a_colltype_lbl 01 `"Education institutions (colleges, boarding schools, etc.)"'
label define it01a_colltype_lbl 02 `"Institutional care: residence for minors"', add
label define it01a_colltype_lbl 03 `"Institutional care for physical and mental disabilities or other institutional care (reception centers for drug addicts, dormitories, reception centers at night, etc.)"', add
label define it01a_colltype_lbl 04 `"Hospices, nursing homes for disabled adults and elderly"', add
label define it01a_colltype_lbl 05 `"Reception centers for immigrants"', add
label define it01a_colltype_lbl 06 `"Public care institutions"', add
label define it01a_colltype_lbl 07 `"Private care institutions"', add
label define it01a_colltype_lbl 08 `"Prison"', add
label define it01a_colltype_lbl 09 `"Church"', add
label define it01a_colltype_lbl 10 `"Military and other barracks; other cohabitation"', add
label define it01a_colltype_lbl 11 `"Hotels, guesthouses, inns"', add
label define it01a_colltype_lbl 12 `"Navy merchant"', add
label define it01a_colltype_lbl 99 `"NIU (not in universe)"', add
label values it01a_colltype it01a_colltype_lbl

label define it01a_collreas_lbl 01 `"Public care institutions"'
label define it01a_collreas_lbl 02 `"Health care officer (doctor, therapist, nurse, etc.) and social or psychological officer (social worker, teacher, psychologist, etc.)"', add
label define it01a_collreas_lbl 03 `"Administrative services or ordinary officer (administrator, accountant, personnel, etc.) or persons engaged in the maintenance and cleaning services (laborer, gardener, janitor, etc.)"', add
label define it01a_collreas_lbl 04 `"Religious (priest, nun, monk, etc.)"', add
label define it01a_collreas_lbl 05 `"Held with conviction"', add
label define it01a_collreas_lbl 06 `"Assisted in a reception center for immigrants"', add
label define it01a_collreas_lbl 07 `"Admitted in long-term care institution (hospital, clinic, etc.)"', add
label define it01a_collreas_lbl 08 `"Assisted in an institution for the elderly (hospice, rest home for the elderly, etc.)"', add
label define it01a_collreas_lbl 09 `"Assisted in an institution for children (orphanage, brefotrofio, institue for entrust, etc.)"', add
label define it01a_collreas_lbl 10 `"Professional soldier, similar agent, and assistant in other reception center"', add
label define it01a_collreas_lbl 99 `"NIU (not in universe)"', add
label values it01a_collreas it01a_collreas_lbl

label define it01a_relate_lbl 01 `"Holder of the household form"'
label define it01a_relate_lbl 02 `"Holder's spouse"', add
label define it01a_relate_lbl 03 `"Holder's partner"', add
label define it01a_relate_lbl 04 `"Holder's and spouse/partner's son/daughter"', add
label define it01a_relate_lbl 05 `"Son/daughter of householder only"', add
label define it01a_relate_lbl 06 `"Son/daughter of spouse/partner only"', add
label define it01a_relate_lbl 07 `"Holder's father/mother (or parent's spouse)"', add
label define it01a_relate_lbl 08 `"Holder's father-in-law/mother in-law"', add
label define it01a_relate_lbl 09 `"Holder's brother/sister"', add
label define it01a_relate_lbl 10 `"Holder's spouse/partner's brother/sister"', add
label define it01a_relate_lbl 11 `"Holder spouse's brother/sister or spouse's/partner's brother/sister"', add
label define it01a_relate_lbl 12 `"Son-in-law/daughter-in-law (spouse/partner of the son/daughter) of the Holder and/or spouse/partner"', add
label define it01a_relate_lbl 13 `"Grandchild of the Holder and/or the spouse/partner"', add
label define it01a_relate_lbl 14 `"Niece/nephew of the Holder and/or the spouse/partner"', add
label define it01a_relate_lbl 15 `"Other relatives of the Holder and/or spouse/partner"', add
label define it01a_relate_lbl 16 `"Other partner without ties of kinship"', add
label define it01a_relate_lbl 98 `"Unknown"', add
label define it01a_relate_lbl 99 `"NIU (not in universe)"', add
label values it01a_relate it01a_relate_lbl

label define it01a_sex_lbl 1 `"Male"'
label define it01a_sex_lbl 2 `"Female"', add
label values it01a_sex it01a_sex_lbl

label define it01a_agegr_lbl 01 `"0-4"'
label define it01a_agegr_lbl 02 `"5-9"', add
label define it01a_agegr_lbl 03 `"10-14"', add
label define it01a_agegr_lbl 04 `"15-19"', add
label define it01a_agegr_lbl 05 `"20-24"', add
label define it01a_agegr_lbl 06 `"25-29"', add
label define it01a_agegr_lbl 07 `"30-34"', add
label define it01a_agegr_lbl 08 `"35-39"', add
label define it01a_agegr_lbl 09 `"40-44"', add
label define it01a_agegr_lbl 10 `"45-49"', add
label define it01a_agegr_lbl 11 `"50-54"', add
label define it01a_agegr_lbl 12 `"55-59"', add
label define it01a_agegr_lbl 13 `"60-64"', add
label define it01a_agegr_lbl 14 `"65-69"', add
label define it01a_agegr_lbl 15 `"70-74"', add
label define it01a_agegr_lbl 16 `"75-79"', add
label define it01a_agegr_lbl 17 `"80-84"', add
label define it01a_agegr_lbl 18 `"85+"', add
label values it01a_agegr it01a_agegr_lbl

label define it01a_bpl_lbl 1 `"In this municipality"'
label define it01a_bpl_lbl 2 `"In another Italian municipality of the same Province"', add
label define it01a_bpl_lbl 3 `"In another province  of the same region"', add
label define it01a_bpl_lbl 4 `"In another region"', add
label define it01a_bpl_lbl 5 `"Abroad"', add
label values it01a_bpl it01a_bpl_lbl

label define it01a_bplcont_lbl 01 `"European Union 15"'
label define it01a_bplcont_lbl 02 `"Countries newly added to European Union"', add
label define it01a_bplcont_lbl 03 `"Central-Eastern Europe"', add
label define it01a_bplcont_lbl 04 `"Other European Countries"', add
label define it01a_bplcont_lbl 05 `"North Africa"', add
label define it01a_bplcont_lbl 06 `"West Africa"', add
label define it01a_bplcont_lbl 07 `"East Africa"', add
label define it01a_bplcont_lbl 08 `"Central and South Africa"', add
label define it01a_bplcont_lbl 09 `"East Asia"', add
label define it01a_bplcont_lbl 10 `"Central and South Asia"', add
label define it01a_bplcont_lbl 11 `"East Asia"', add
label define it01a_bplcont_lbl 12 `"North America"', add
label define it01a_bplcont_lbl 13 `"Central and South America"', add
label define it01a_bplcont_lbl 14 `"Oceania"', add
label define it01a_bplcont_lbl 99 `"NIU (not in universe)"', add
label values it01a_bplcont it01a_bplcont_lbl

label define it01a_citiz_lbl 1 `"Italian"'
label define it01a_citiz_lbl 2 `"Foreign"', add
label define it01a_citiz_lbl 3 `"Stateless (no citizenship )"', add
label values it01a_citiz it01a_citiz_lbl

label define it01a_citizcont_lbl 01 `"European Union 15"'
label define it01a_citizcont_lbl 02 `"Countries newly added to European Union"', add
label define it01a_citizcont_lbl 03 `"Central-Eastern Europe"', add
label define it01a_citizcont_lbl 04 `"Other European Countries"', add
label define it01a_citizcont_lbl 05 `"North Africa"', add
label define it01a_citizcont_lbl 06 `"West Africa"', add
label define it01a_citizcont_lbl 07 `"East Africa"', add
label define it01a_citizcont_lbl 08 `"Central and South Africa"', add
label define it01a_citizcont_lbl 09 `"West Asia"', add
label define it01a_citizcont_lbl 10 `"Central and South Asia"', add
label define it01a_citizcont_lbl 11 `"East Asia"', add
label define it01a_citizcont_lbl 12 `"North America"', add
label define it01a_citizcont_lbl 13 `"Central and South America"', add
label define it01a_citizcont_lbl 14 `"Oceania"', add
label define it01a_citizcont_lbl 15 `"Stateless"', add
label define it01a_citizcont_lbl 99 `"NIU (not in universe)"', add
label values it01a_citizcont it01a_citizcont_lbl

label define it01a_citizital_lbl 1 `"From birth"'
label define it01a_citizital_lbl 2 `"Acquired"', add
label define it01a_citizital_lbl 9 `"NIU (not in universe)"', add
label values it01a_citizital it01a_citizital_lbl

label define it01a_italarriv_lbl 1904 `"1904"'
label define it01a_italarriv_lbl 1910 `"1910"', add
label define it01a_italarriv_lbl 1912 `"1912"', add
label define it01a_italarriv_lbl 1913 `"1913"', add
label define it01a_italarriv_lbl 1914 `"1914"', add
label define it01a_italarriv_lbl 1915 `"1915"', add
label define it01a_italarriv_lbl 1916 `"1916"', add
label define it01a_italarriv_lbl 1917 `"1917"', add
label define it01a_italarriv_lbl 1918 `"1918"', add
label define it01a_italarriv_lbl 1919 `"1919"', add
label define it01a_italarriv_lbl 1921 `"1921"', add
label define it01a_italarriv_lbl 1922 `"1922"', add
label define it01a_italarriv_lbl 1923 `"1923"', add
label define it01a_italarriv_lbl 1924 `"1924"', add
label define it01a_italarriv_lbl 1925 `"1925"', add
label define it01a_italarriv_lbl 1926 `"1926"', add
label define it01a_italarriv_lbl 1927 `"1927"', add
label define it01a_italarriv_lbl 1928 `"1928"', add
label define it01a_italarriv_lbl 1929 `"1929"', add
label define it01a_italarriv_lbl 1930 `"1930"', add
label define it01a_italarriv_lbl 1931 `"1931"', add
label define it01a_italarriv_lbl 1932 `"1932"', add
label define it01a_italarriv_lbl 1933 `"1933"', add
label define it01a_italarriv_lbl 1934 `"1934"', add
label define it01a_italarriv_lbl 1935 `"1935"', add
label define it01a_italarriv_lbl 1936 `"1936"', add
label define it01a_italarriv_lbl 1937 `"1937"', add
label define it01a_italarriv_lbl 1938 `"1938"', add
label define it01a_italarriv_lbl 1939 `"1939"', add
label define it01a_italarriv_lbl 1940 `"1940"', add
label define it01a_italarriv_lbl 1941 `"1941"', add
label define it01a_italarriv_lbl 1942 `"1942"', add
label define it01a_italarriv_lbl 1943 `"1943"', add
label define it01a_italarriv_lbl 1944 `"1944"', add
label define it01a_italarriv_lbl 1945 `"1945"', add
label define it01a_italarriv_lbl 1946 `"1946"', add
label define it01a_italarriv_lbl 1947 `"1947"', add
label define it01a_italarriv_lbl 1948 `"1948"', add
label define it01a_italarriv_lbl 1949 `"1949"', add
label define it01a_italarriv_lbl 1950 `"1950"', add
label define it01a_italarriv_lbl 1951 `"1951"', add
label define it01a_italarriv_lbl 1952 `"1952"', add
label define it01a_italarriv_lbl 1953 `"1953"', add
label define it01a_italarriv_lbl 1954 `"1954"', add
label define it01a_italarriv_lbl 1955 `"1955"', add
label define it01a_italarriv_lbl 1956 `"1956"', add
label define it01a_italarriv_lbl 1957 `"1957"', add
label define it01a_italarriv_lbl 1958 `"1958"', add
label define it01a_italarriv_lbl 1959 `"1959"', add
label define it01a_italarriv_lbl 1960 `"1960"', add
label define it01a_italarriv_lbl 1961 `"1961"', add
label define it01a_italarriv_lbl 1962 `"1962"', add
label define it01a_italarriv_lbl 1963 `"1963"', add
label define it01a_italarriv_lbl 1964 `"1964"', add
label define it01a_italarriv_lbl 1965 `"1965"', add
label define it01a_italarriv_lbl 1966 `"1966"', add
label define it01a_italarriv_lbl 1967 `"1967"', add
label define it01a_italarriv_lbl 1968 `"1968"', add
label define it01a_italarriv_lbl 1969 `"1969"', add
label define it01a_italarriv_lbl 1970 `"1970"', add
label define it01a_italarriv_lbl 1971 `"1971"', add
label define it01a_italarriv_lbl 1972 `"1972"', add
label define it01a_italarriv_lbl 1973 `"1973"', add
label define it01a_italarriv_lbl 1974 `"1974"', add
label define it01a_italarriv_lbl 1975 `"1975"', add
label define it01a_italarriv_lbl 1976 `"1976"', add
label define it01a_italarriv_lbl 1977 `"1977"', add
label define it01a_italarriv_lbl 1978 `"1978"', add
label define it01a_italarriv_lbl 1979 `"1979"', add
label define it01a_italarriv_lbl 1980 `"1980"', add
label define it01a_italarriv_lbl 1981 `"1981"', add
label define it01a_italarriv_lbl 1982 `"1982"', add
label define it01a_italarriv_lbl 1983 `"1983"', add
label define it01a_italarriv_lbl 1984 `"1984"', add
label define it01a_italarriv_lbl 1985 `"1985"', add
label define it01a_italarriv_lbl 1986 `"1986"', add
label define it01a_italarriv_lbl 1987 `"1987"', add
label define it01a_italarriv_lbl 1988 `"1988"', add
label define it01a_italarriv_lbl 1989 `"1989"', add
label define it01a_italarriv_lbl 1990 `"1990"', add
label define it01a_italarriv_lbl 1991 `"1991"', add
label define it01a_italarriv_lbl 1992 `"1992"', add
label define it01a_italarriv_lbl 1993 `"1993"', add
label define it01a_italarriv_lbl 1994 `"1994"', add
label define it01a_italarriv_lbl 1995 `"1995"', add
label define it01a_italarriv_lbl 1996 `"1996"', add
label define it01a_italarriv_lbl 1997 `"1997"', add
label define it01a_italarriv_lbl 1998 `"1998"', add
label define it01a_italarriv_lbl 1999 `"1999"', add
label define it01a_italarriv_lbl 2000 `"2000"', add
label define it01a_italarriv_lbl 2001 `"2001"', add
label define it01a_italarriv_lbl 9999 `"NIU (not in universe)"', add
label values it01a_italarriv it01a_italarriv_lbl

label define it01a_whyhere_lbl 1 `"Work"'
label define it01a_whyhere_lbl 2 `"Study"', add
label define it01a_whyhere_lbl 3 `"Presence of relatives"', add
label define it01a_whyhere_lbl 4 `"Other"', add
label define it01a_whyhere_lbl 9 `"NIU (not in universe)"', add
label values it01a_whyhere it01a_whyhere_lbl

label define it01a_marst_lbl 1 `"Single"'
label define it01a_marst_lbl 2 `"Married"', add
label define it01a_marst_lbl 3 `"De facto separated"', add
label define it01a_marst_lbl 4 `"Legally separated"', add
label define it01a_marst_lbl 5 `"Divorced"', add
label define it01a_marst_lbl 6 `"Widow/er"', add
label values it01a_marst it01a_marst_lbl

label define it01a_maryear_lbl 1913 `"1913"'
label define it01a_maryear_lbl 1918 `"1918"', add
label define it01a_maryear_lbl 1919 `"1919"', add
label define it01a_maryear_lbl 1920 `"1920"', add
label define it01a_maryear_lbl 1921 `"1921"', add
label define it01a_maryear_lbl 1922 `"1922"', add
label define it01a_maryear_lbl 1923 `"1923"', add
label define it01a_maryear_lbl 1924 `"1924"', add
label define it01a_maryear_lbl 1925 `"1925"', add
label define it01a_maryear_lbl 1926 `"1926"', add
label define it01a_maryear_lbl 1927 `"1927"', add
label define it01a_maryear_lbl 1928 `"1928"', add
label define it01a_maryear_lbl 1929 `"1929"', add
label define it01a_maryear_lbl 1930 `"1930"', add
label define it01a_maryear_lbl 1931 `"1931"', add
label define it01a_maryear_lbl 1932 `"1932"', add
label define it01a_maryear_lbl 1933 `"1933"', add
label define it01a_maryear_lbl 1934 `"1934"', add
label define it01a_maryear_lbl 1935 `"1935"', add
label define it01a_maryear_lbl 1936 `"1936"', add
label define it01a_maryear_lbl 1937 `"1937"', add
label define it01a_maryear_lbl 1938 `"1938"', add
label define it01a_maryear_lbl 1939 `"1939"', add
label define it01a_maryear_lbl 1940 `"1940"', add
label define it01a_maryear_lbl 1941 `"1941"', add
label define it01a_maryear_lbl 1942 `"1942"', add
label define it01a_maryear_lbl 1943 `"1943"', add
label define it01a_maryear_lbl 1944 `"1944"', add
label define it01a_maryear_lbl 1945 `"1945"', add
label define it01a_maryear_lbl 1946 `"1946"', add
label define it01a_maryear_lbl 1947 `"1947"', add
label define it01a_maryear_lbl 1948 `"1948"', add
label define it01a_maryear_lbl 1949 `"1949"', add
label define it01a_maryear_lbl 1950 `"1950"', add
label define it01a_maryear_lbl 1951 `"1951"', add
label define it01a_maryear_lbl 1952 `"1952"', add
label define it01a_maryear_lbl 1953 `"1953"', add
label define it01a_maryear_lbl 1954 `"1954"', add
label define it01a_maryear_lbl 1955 `"1955"', add
label define it01a_maryear_lbl 1956 `"1956"', add
label define it01a_maryear_lbl 1957 `"1957"', add
label define it01a_maryear_lbl 1958 `"1958"', add
label define it01a_maryear_lbl 1959 `"1959"', add
label define it01a_maryear_lbl 1960 `"1960"', add
label define it01a_maryear_lbl 1961 `"1961"', add
label define it01a_maryear_lbl 1962 `"1962"', add
label define it01a_maryear_lbl 1963 `"1963"', add
label define it01a_maryear_lbl 1964 `"1964"', add
label define it01a_maryear_lbl 1965 `"1965"', add
label define it01a_maryear_lbl 1966 `"1966"', add
label define it01a_maryear_lbl 1967 `"1967"', add
label define it01a_maryear_lbl 1968 `"1968"', add
label define it01a_maryear_lbl 1969 `"1969"', add
label define it01a_maryear_lbl 1970 `"1970"', add
label define it01a_maryear_lbl 1971 `"1971"', add
label define it01a_maryear_lbl 1972 `"1972"', add
label define it01a_maryear_lbl 1973 `"1973"', add
label define it01a_maryear_lbl 1974 `"1974"', add
label define it01a_maryear_lbl 1975 `"1975"', add
label define it01a_maryear_lbl 1976 `"1976"', add
label define it01a_maryear_lbl 1977 `"1977"', add
label define it01a_maryear_lbl 1978 `"1978"', add
label define it01a_maryear_lbl 1979 `"1979"', add
label define it01a_maryear_lbl 1980 `"1980"', add
label define it01a_maryear_lbl 1981 `"1981"', add
label define it01a_maryear_lbl 1982 `"1982"', add
label define it01a_maryear_lbl 1983 `"1983"', add
label define it01a_maryear_lbl 1984 `"1984"', add
label define it01a_maryear_lbl 1985 `"1985"', add
label define it01a_maryear_lbl 1986 `"1986"', add
label define it01a_maryear_lbl 1987 `"1987"', add
label define it01a_maryear_lbl 1988 `"1988"', add
label define it01a_maryear_lbl 1989 `"1989"', add
label define it01a_maryear_lbl 1990 `"1990"', add
label define it01a_maryear_lbl 1991 `"1991"', add
label define it01a_maryear_lbl 1992 `"1992"', add
label define it01a_maryear_lbl 1993 `"1993"', add
label define it01a_maryear_lbl 1994 `"1994"', add
label define it01a_maryear_lbl 1995 `"1995"', add
label define it01a_maryear_lbl 1996 `"1996"', add
label define it01a_maryear_lbl 1997 `"1997"', add
label define it01a_maryear_lbl 1998 `"1998"', add
label define it01a_maryear_lbl 1999 `"1999"', add
label define it01a_maryear_lbl 2000 `"2000"', add
label define it01a_maryear_lbl 2001 `"2001"', add
label define it01a_maryear_lbl 9999 `"NIU (not in universe)"', add
label values it01a_maryear it01a_maryear_lbl

label define it01a_marstpr_lbl 1 `"Single"'
label define it01a_marstpr_lbl 2 `"Married"', add
label define it01a_marstpr_lbl 3 `"Widow/er"', add
label define it01a_marstpr_lbl 9 `"NIU (not in universe)"', add
label values it01a_marstpr it01a_marstpr_lbl

label define it01a_present_lbl 1 `"In the accommodation"'
label define it01a_present_lbl 2 `"In this municipality, but in other accommodation or institutional household (e.g. relatives or friends house, barracks, hospital)"', add
label define it01a_present_lbl 3 `"In another Italian municipality"', add
label define it01a_present_lbl 4 `"Abroad"', add
label values it01a_present it01a_present_lbl

label define it01a_othracco_lbl 1 `"Yes"'
label define it01a_othracco_lbl 2 `"No"', add
label values it01a_othracco it01a_othracco_lbl

label define it01a_dayotacc_lbl 1 `"Up to 90 days"'
label define it01a_dayotacc_lbl 2 `"From 91 to 180 days"', add
label define it01a_dayotacc_lbl 3 `"From 181 to 270 days"', add
label define it01a_dayotacc_lbl 4 `"From 271 to 365 days"', add
label define it01a_dayotacc_lbl 9 `"NIU (not in universe)"', add
label values it01a_dayotacc it01a_dayotacc_lbl

label define it01a_livotacc_lbl 1 `"Yes"'
label define it01a_livotacc_lbl 2 `"No"', add
label define it01a_livotacc_lbl 9 `"NIU (not in universe)"', add
label values it01a_livotacc it01a_livotacc_lbl

label define it01a_locotacc_lbl 1 `"In this municipality"'
label define it01a_locotacc_lbl 2 `"In another Italian municipality"', add
label define it01a_locotacc_lbl 3 `"Abroad"', add
label define it01a_locotacc_lbl 9 `"NIU (not in universe)"', add
label values it01a_locotacc it01a_locotacc_lbl

label define it01a_resotacc_lbl 1 `"Work"'
label define it01a_resotacc_lbl 2 `"Study"', add
label define it01a_resotacc_lbl 3 `"Presence of relatives"', add
label define it01a_resotacc_lbl 4 `"Vacation"', add
label define it01a_resotacc_lbl 5 `"Previous usual accommodation (transfer of residence)"', add
label define it01a_resotacc_lbl 6 `"Other"', add
label define it01a_resotacc_lbl 9 `"NIU (not in universe)"', add
label values it01a_resotacc it01a_resotacc_lbl

label define it01a_placsted_lbl 1 `"In the same accommodation"'
label define it01a_placsted_lbl 2 `"In this municipality, but in other accommodation or institutional household"', add
label define it01a_placsted_lbl 3 `"In another Italian municipality"', add
label define it01a_placsted_lbl 4 `"Abroad"', add
label define it01a_placsted_lbl 9 `"NIU (not in universe)"', add
label values it01a_placsted it01a_placsted_lbl

label define it01a_provsted_lbl 1 `"In the same municipality as the residence"'
label define it01a_provsted_lbl 2 `"In other municipality in the same province"', add
label define it01a_provsted_lbl 3 `"In other province of the same region"', add
label define it01a_provsted_lbl 4 `"In other region"', add
label define it01a_provsted_lbl 5 `"Abroad"', add
label define it01a_provsted_lbl 9 `"NIU (not in universe)"', add
label values it01a_provsted it01a_provsted_lbl

label define it01a_contsted_lbl 01 `"European Union 15"'
label define it01a_contsted_lbl 02 `"Countries newly added to European Union"', add
label define it01a_contsted_lbl 03 `"Central-Eastern Europe"', add
label define it01a_contsted_lbl 04 `"Other European Countries"', add
label define it01a_contsted_lbl 05 `"North Africa"', add
label define it01a_contsted_lbl 06 `"West Africa"', add
label define it01a_contsted_lbl 07 `"East Africa"', add
label define it01a_contsted_lbl 08 `"Central and South Africa"', add
label define it01a_contsted_lbl 09 `"East Asia"', add
label define it01a_contsted_lbl 10 `"Central and South Asia"', add
label define it01a_contsted_lbl 11 `"East Asia"', add
label define it01a_contsted_lbl 12 `"North America"', add
label define it01a_contsted_lbl 13 `"Central and South America"', add
label define it01a_contsted_lbl 14 `"Oceania"', add
label define it01a_contsted_lbl 99 `"NIU (not in universe)"', add
label values it01a_contsted it01a_contsted_lbl

label define it01a_preschl_lbl 1 `"Day nurseries"'
label define it01a_preschl_lbl 2 `"Nursery school"', add
label define it01a_preschl_lbl 3 `"Neither one"', add
label define it01a_preschl_lbl 8 `"Unknown"', add
label define it01a_preschl_lbl 9 `"NIU (not in universe)"', add
label values it01a_preschl it01a_preschl_lbl

label define it01a_edattan_lbl 0 `"NIU (not in universe)"'
label define it01a_edattan_lbl 1 `"No educational degree, cannot read nor write"', add
label define it01a_edattan_lbl 2 `"No educational degree, but can read and write"', add
label define it01a_edattan_lbl 3 `"Primary school certificate"', add
label define it01a_edattan_lbl 4 `"Lower secondary school certificate"', add
label define it01a_edattan_lbl 5 `"Upper secondary, vocational diploma: 2-3 year course"', add
label define it01a_edattan_lbl 6 `"Upper secondary, all types: 4-5 year course"', add
label define it01a_edattan_lbl 7 `"Post-secondary, non-university diploma of specialization (2-3 years)"', add
label define it01a_edattan_lbl 8 `"University diploma (2-3 year)"', add
label define it01a_edattan_lbl 9 `"Bachelor's degree (4-5 years or more)"', add
label values it01a_edattan it01a_edattan_lbl

label define it01a_eddur_lbl 1 `"2-3 years"'
label define it01a_eddur_lbl 2 `"4-5 years"', add
label define it01a_eddur_lbl 9 `"NIU (not in universe)"', add
label values it01a_eddur it01a_eddur_lbl

label define it01a_postuniv_lbl 1 `"Yes"'
label define it01a_postuniv_lbl 2 `"No"', add
label define it01a_postuniv_lbl 9 `"NIU (not in universe)"', add
label values it01a_postuniv it01a_postuniv_lbl

label define it01a_edabroad_lbl 1 `"Yes"'
label define it01a_edabroad_lbl 2 `"No"', add
label define it01a_edabroad_lbl 9 `"NIU (not in universe)"', add
label values it01a_edabroad it01a_edabroad_lbl

label define it01a_anni_tit_stud_es_lbl 05 `"5"'
label define it01a_anni_tit_stud_es_lbl 08 `"8"', add
label define it01a_anni_tit_stud_es_lbl 10 `"10"', add
label define it01a_anni_tit_stud_es_lbl 11 `"11"', add
label define it01a_anni_tit_stud_es_lbl 12 `"12"', add
label define it01a_anni_tit_stud_es_lbl 13 `"13"', add
label define it01a_anni_tit_stud_es_lbl 14 `"14"', add
label define it01a_anni_tit_stud_es_lbl 15 `"15"', add
label define it01a_anni_tit_stud_es_lbl 16 `"16"', add
label define it01a_anni_tit_stud_es_lbl 17 `"17"', add
label define it01a_anni_tit_stud_es_lbl 18 `"18"', add
label define it01a_anni_tit_stud_es_lbl 19 `"19"', add
label define it01a_anni_tit_stud_es_lbl 20 `"20"', add
label define it01a_anni_tit_stud_es_lbl 21 `"21"', add
label define it01a_anni_tit_stud_es_lbl 22 `"22"', add
label define it01a_anni_tit_stud_es_lbl 23 `"23"', add
label define it01a_anni_tit_stud_es_lbl 24 `"24"', add
label define it01a_anni_tit_stud_es_lbl 99 `"NIU (not in universe)"', add
label values it01a_anni_tit_stud_es it01a_anni_tit_stud_es_lbl

label define it01a_school_lbl 1 `"Yes"'
label define it01a_school_lbl 2 `"No"', add
label define it01a_school_lbl 9 `"NIU (not in universe)"', add
label values it01a_school it01a_school_lbl

label define it01a_voctrain_lbl 1 `"Yes"'
label define it01a_voctrain_lbl 2 `"No"', add
label define it01a_voctrain_lbl 9 `"NIU (not in universe)"', add
label values it01a_voctrain it01a_voctrain_lbl

label define it01a_course1_lbl 1 `"No"'
label define it01a_course1_lbl 2 `"Yes"', add
label define it01a_course1_lbl 9 `"NIU (not in universe)"', add
label values it01a_course1 it01a_course1_lbl

label define it01a_course2_lbl 1 `"No"'
label define it01a_course2_lbl 2 `"Yes"', add
label define it01a_course2_lbl 9 `"NIU (not in universe)"', add
label values it01a_course2 it01a_course2_lbl

label define it01a_course3_lbl 1 `"No"'
label define it01a_course3_lbl 2 `"Yes"', add
label define it01a_course3_lbl 9 `"NIU (not in universe)"', add
label values it01a_course3 it01a_course3_lbl

label define it01a_empstat_lbl 01 `"Employed"'
label define it01a_empstat_lbl 02 `"Looking for first employment"', add
label define it01a_empstat_lbl 03 `"Unemployed (looking for a new job)"', add
label define it01a_empstat_lbl 04 `"Waiting to begin a job already obtained"', add
label define it01a_empstat_lbl 05 `"Student"', add
label define it01a_empstat_lbl 06 `"Looking after home/household"', add
label define it01a_empstat_lbl 07 `"Retired"', add
label define it01a_empstat_lbl 08 `"On national military service or substitute civil service"', add
label define it01a_empstat_lbl 09 `"Disabled for work"', add
label define it01a_empstat_lbl 10 `"Other conditions"', add
label define it01a_empstat_lbl 99 `"NIU (not in universe)"', add
label values it01a_empstat it01a_empstat_lbl

label define it01a_worked_lbl 1 `"Yes"'
label define it01a_worked_lbl 2 `"No"', add
label define it01a_worked_lbl 9 `"NIU (not in universe)"', add
label values it01a_worked it01a_worked_lbl

label define it01a_jobseek_lbl 1 `"Yes"'
label define it01a_jobseek_lbl 2 `"No"', add
label define it01a_jobseek_lbl 9 `"NIU (not in universe)"', add
label values it01a_jobseek it01a_jobseek_lbl

label define it01a_willwork_lbl 1 `"Yes"'
label define it01a_willwork_lbl 2 `"No"', add
label define it01a_willwork_lbl 9 `"NIU (not in universe)"', add
label values it01a_willwork it01a_willwork_lbl

label define it01a_hadjob_lbl 1 `"Yes"'
label define it01a_hadjob_lbl 2 `"No"', add
label define it01a_hadjob_lbl 9 `"NIU (not in universe)"', add
label values it01a_hadjob it01a_hadjob_lbl

label define it01a_workedoct_lbl 1 `"None"'
label define it01a_workedoct_lbl 2 `"One or more hours of work"', add
label define it01a_workedoct_lbl 9 `"NIU (not in universe)"', add
label values it01a_workedoct it01a_workedoct_lbl

label define it01a_whyworked_lbl 1 `"Vacation"'
label define it01a_whyworked_lbl 2 `"Illness"', add
label define it01a_whyworked_lbl 3 `"Maternity leave"', add
label define it01a_whyworked_lbl 4 `"Leave of absence"', add
label define it01a_whyworked_lbl 5 `"Income support"', add
label define it01a_whyworked_lbl 6 `"Lack of orders"', add
label define it01a_whyworked_lbl 7 `"Other"', add
label define it01a_whyworked_lbl 9 `"NIU (not in universe)"', add
label values it01a_whyworked it01a_whyworked_lbl

label define it01a_hrworked_lbl 01 `"1"'
label define it01a_hrworked_lbl 02 `"2"', add
label define it01a_hrworked_lbl 03 `"3"', add
label define it01a_hrworked_lbl 04 `"4"', add
label define it01a_hrworked_lbl 05 `"5"', add
label define it01a_hrworked_lbl 06 `"6"', add
label define it01a_hrworked_lbl 07 `"7"', add
label define it01a_hrworked_lbl 08 `"8"', add
label define it01a_hrworked_lbl 09 `"9"', add
label define it01a_hrworked_lbl 10 `"10"', add
label define it01a_hrworked_lbl 11 `"11"', add
label define it01a_hrworked_lbl 12 `"12"', add
label define it01a_hrworked_lbl 13 `"13"', add
label define it01a_hrworked_lbl 14 `"14"', add
label define it01a_hrworked_lbl 15 `"15"', add
label define it01a_hrworked_lbl 16 `"16"', add
label define it01a_hrworked_lbl 17 `"17"', add
label define it01a_hrworked_lbl 18 `"18"', add
label define it01a_hrworked_lbl 19 `"19"', add
label define it01a_hrworked_lbl 20 `"20"', add
label define it01a_hrworked_lbl 21 `"21"', add
label define it01a_hrworked_lbl 22 `"22"', add
label define it01a_hrworked_lbl 23 `"23"', add
label define it01a_hrworked_lbl 24 `"24"', add
label define it01a_hrworked_lbl 25 `"25"', add
label define it01a_hrworked_lbl 26 `"26"', add
label define it01a_hrworked_lbl 27 `"27"', add
label define it01a_hrworked_lbl 28 `"28"', add
label define it01a_hrworked_lbl 29 `"29"', add
label define it01a_hrworked_lbl 30 `"30"', add
label define it01a_hrworked_lbl 31 `"31"', add
label define it01a_hrworked_lbl 32 `"32"', add
label define it01a_hrworked_lbl 33 `"33"', add
label define it01a_hrworked_lbl 34 `"34"', add
label define it01a_hrworked_lbl 35 `"35"', add
label define it01a_hrworked_lbl 36 `"36"', add
label define it01a_hrworked_lbl 37 `"37"', add
label define it01a_hrworked_lbl 38 `"38"', add
label define it01a_hrworked_lbl 39 `"39"', add
label define it01a_hrworked_lbl 40 `"40"', add
label define it01a_hrworked_lbl 41 `"41"', add
label define it01a_hrworked_lbl 42 `"42"', add
label define it01a_hrworked_lbl 43 `"43"', add
label define it01a_hrworked_lbl 44 `"44"', add
label define it01a_hrworked_lbl 45 `"45"', add
label define it01a_hrworked_lbl 46 `"46"', add
label define it01a_hrworked_lbl 47 `"47"', add
label define it01a_hrworked_lbl 48 `"48"', add
label define it01a_hrworked_lbl 49 `"49"', add
label define it01a_hrworked_lbl 50 `"50"', add
label define it01a_hrworked_lbl 51 `"51"', add
label define it01a_hrworked_lbl 52 `"52"', add
label define it01a_hrworked_lbl 53 `"53"', add
label define it01a_hrworked_lbl 54 `"54"', add
label define it01a_hrworked_lbl 55 `"55"', add
label define it01a_hrworked_lbl 56 `"56"', add
label define it01a_hrworked_lbl 57 `"57"', add
label define it01a_hrworked_lbl 58 `"58"', add
label define it01a_hrworked_lbl 59 `"59"', add
label define it01a_hrworked_lbl 60 `"60"', add
label define it01a_hrworked_lbl 61 `"61"', add
label define it01a_hrworked_lbl 62 `"62"', add
label define it01a_hrworked_lbl 63 `"63"', add
label define it01a_hrworked_lbl 64 `"64"', add
label define it01a_hrworked_lbl 65 `"65"', add
label define it01a_hrworked_lbl 66 `"66"', add
label define it01a_hrworked_lbl 67 `"67"', add
label define it01a_hrworked_lbl 68 `"68"', add
label define it01a_hrworked_lbl 69 `"69"', add
label define it01a_hrworked_lbl 70 `"70"', add
label define it01a_hrworked_lbl 71 `"71"', add
label define it01a_hrworked_lbl 99 `"NIU (not in universe)"', add
label values it01a_hrworked it01a_hrworked_lbl

label define it01a_wkfull_lbl 1 `"Full time"'
label define it01a_wkfull_lbl 2 `"Part time"', add
label define it01a_wkfull_lbl 9 `"NIU (not in universe)"', add
label values it01a_wkfull it01a_wkfull_lbl

label define it01a_classwkr_lbl 1 `"Employee or other subordinate position"'
label define it01a_classwkr_lbl 2 `"Entrepreneur"', add
label define it01a_classwkr_lbl 3 `"Professional"', add
label define it01a_classwkr_lbl 4 `"Own-account worker"', add
label define it01a_classwkr_lbl 5 `"Member of producers and/or services cooperative"', add
label define it01a_classwkr_lbl 6 `"Contributing family worker"', add
label define it01a_classwkr_lbl 9 `"NIU (not in universe)"', add
label values it01a_classwkr it01a_classwkr_lbl

label define it01a_paidwkr_lbl 1 `"Yes"'
label define it01a_paidwkr_lbl 2 `"No"', add
label define it01a_paidwkr_lbl 9 `"NIU (not in universe)"', add
label values it01a_paidwkr it01a_paidwkr_lbl

label define it01a_wrkcondi_lbl 1 `"Indefinite"'
label define it01a_wrkcondi_lbl 2 `"Definite"', add
label define it01a_wrkcondi_lbl 9 `"NIU (not in universe)"', add
label values it01a_wrkcondi it01a_wrkcondi_lbl

label define it01a_contract_lbl 1 `"Work and training contract"'
label define it01a_contract_lbl 2 `"Apprentice contract"', add
label define it01a_contract_lbl 3 `"Interim contract"', add
label define it01a_contract_lbl 4 `"Other"', add
label define it01a_contract_lbl 9 `"NIU (not in universe)"', add
label values it01a_contract it01a_contract_lbl

label define it01a_occ_lbl 00 `"Work as officer, non-commissioned officer, cadet or volunteer in the Armed Forces - Army, Navy, Air Force, Carabinieri (Lieutenant General, Colonel Medical Corp, Sargent, Carabinieri cadet)"'
label define it01a_occ_lbl 01 `"Direct business or manage the work of complex organizational structures (Businessman, public or private Manager, Head of clinical, Schoolmaster, Merchant)"', add
label define it01a_occ_lbl 02 `"Work in an organizational, technical, intellectual, scientific or artistic field requiring a high level of qualification (Cardiologist, University professor, Grade school or Secondary school professor, Engineer, Chemist, Procedural analyst, Res"', add
label define it01a_occ_lbl 03 `"Work in a technical, administrative, sporting or artistic field requiring an average level of qualification (Physiotherapist, Accountant, Electronic technician, Computer technician, Athlete, Elementary school teacher, Sales representative)"', add
label define it01a_occ_lbl 04 `"Work as non-technical office worker (Clerk, Typist, Bank teller, Switchboard operator)"', add
label define it01a_occ_lbl 05 `"Sale to the public or provide services to people (Sales clerk, Traffic policeman, Hairdresser, Cook, Waiter, Customs officer)"', add
label define it01a_occ_lbl 06 `"Grow plants and/or raise animals (Farmer, Fruit grower, Cattle breeder)"', add
label define it01a_occ_lbl 07 `"Work as specialized laborer (Mason, Mechanic, Air Conditioning technician, Shoemaker, Taylor, Carpenter)"', add
label define it01a_occ_lbl 08 `"Work on fixed manufacturing systems, machinery, assembly lines or drive vehicles (Fork lift driver, Assembly of electronic equipment, Truck driver, Taxi driver)"', add
label define it01a_occ_lbl 09 `"Work as laborer or non-specialized service (Farmhand, Janitor, Building laborer, Domestic servant, Mailman, Concierge, Porter, Travelling salesman)"', add
label define it01a_occ_lbl 99 `"NIU (not in universe)"', add
label values it01a_occ it01a_occ_lbl

label define it01a_wrkplc1_lbl 1 `"Yes, he/she reaches the place of study (including kindergarten, nursery school and professional training course"'
label define it01a_wrkplc1_lbl 2 `"Yes, he/she reaches the place of work"', add
label define it01a_wrkplc1_lbl 3 `"No, because he/she studies at home"', add
label define it01a_wrkplc1_lbl 4 `"No, because he/she works at home"', add
label define it01a_wrkplc1_lbl 5 `"No, because he/she does not have a steady work place (travelling salesman, representatives, etc)"', add
label define it01a_wrkplc1_lbl 6 `"No, because he/she does not work, study nor attend professional"', add
label define it01a_wrkplc1_lbl 8 `"Unknown"', add
label define it01a_wrkplc1_lbl 9 `"NIU (not in universe)"', add
label values it01a_wrkplc1 it01a_wrkplc1_lbl

label define it01a_reenter_lbl 1 `"Yes"'
label define it01a_reenter_lbl 2 `"No"', add
label define it01a_reenter_lbl 9 `"NIU (not in universe)"', add
label values it01a_reenter it01a_reenter_lbl

label define it01a_wkpl_lbl 1 `"In this Municipality"'
label define it01a_wkpl_lbl 2 `"In another Italian Municipality of the same Province"', add
label define it01a_wkpl_lbl 3 `"In another Province  of the same Region"', add
label define it01a_wkpl_lbl 4 `"In another Region"', add
label define it01a_wkpl_lbl 5 `"Abroad"', add
label define it01a_wkpl_lbl 9 `"NIU (not in universe)"', add
label values it01a_wkpl it01a_wkpl_lbl

label define it01a_regwkpl_lbl 01 `"Piedmont"'
label define it01a_regwkpl_lbl 03 `"Lombardy"', add
label define it01a_regwkpl_lbl 04 `"Trentino-Alto Adije"', add
label define it01a_regwkpl_lbl 05 `"Veneto"', add
label define it01a_regwkpl_lbl 06 `"Friuli-Venezia Giulia"', add
label define it01a_regwkpl_lbl 07 `"Liguria"', add
label define it01a_regwkpl_lbl 08 `"Emilia-Romagna"', add
label define it01a_regwkpl_lbl 09 `"Tuscany"', add
label define it01a_regwkpl_lbl 10 `"Umbria"', add
label define it01a_regwkpl_lbl 11 `"Marche"', add
label define it01a_regwkpl_lbl 12 `"Lazio"', add
label define it01a_regwkpl_lbl 13 `"Abruzzo"', add
label define it01a_regwkpl_lbl 14 `"Molise"', add
label define it01a_regwkpl_lbl 15 `"Campania"', add
label define it01a_regwkpl_lbl 16 `"Apulia"', add
label define it01a_regwkpl_lbl 17 `"Basilicata"', add
label define it01a_regwkpl_lbl 18 `"Calabria"', add
label define it01a_regwkpl_lbl 19 `"Sicily"', add
label define it01a_regwkpl_lbl 20 `"Sardinia"', add
label define it01a_regwkpl_lbl 99 `"NIU (not in universe)"', add
label values it01a_regwkpl it01a_regwkpl_lbl

label define it01a_cntwkpl_lbl 01 `"European Union 15"'
label define it01a_cntwkpl_lbl 02 `"Countries newly added to European Union"', add
label define it01a_cntwkpl_lbl 03 `"Central-Eastern Europe"', add
label define it01a_cntwkpl_lbl 04 `"Other European Countries"', add
label define it01a_cntwkpl_lbl 99 `"NIU (not in universe)"', add
label values it01a_cntwkpl it01a_cntwkpl_lbl

label define it01a_minlvhm_lbl 00 `"0"'
label define it01a_minlvhm_lbl 01 `"1"', add
label define it01a_minlvhm_lbl 02 `"2"', add
label define it01a_minlvhm_lbl 03 `"3"', add
label define it01a_minlvhm_lbl 04 `"4"', add
label define it01a_minlvhm_lbl 05 `"5"', add
label define it01a_minlvhm_lbl 06 `"6"', add
label define it01a_minlvhm_lbl 07 `"7"', add
label define it01a_minlvhm_lbl 08 `"8"', add
label define it01a_minlvhm_lbl 09 `"9"', add
label define it01a_minlvhm_lbl 10 `"10"', add
label define it01a_minlvhm_lbl 11 `"11"', add
label define it01a_minlvhm_lbl 12 `"12"', add
label define it01a_minlvhm_lbl 13 `"13"', add
label define it01a_minlvhm_lbl 14 `"14"', add
label define it01a_minlvhm_lbl 15 `"15"', add
label define it01a_minlvhm_lbl 16 `"16"', add
label define it01a_minlvhm_lbl 17 `"17"', add
label define it01a_minlvhm_lbl 18 `"18"', add
label define it01a_minlvhm_lbl 19 `"19"', add
label define it01a_minlvhm_lbl 20 `"20"', add
label define it01a_minlvhm_lbl 21 `"21"', add
label define it01a_minlvhm_lbl 22 `"22"', add
label define it01a_minlvhm_lbl 23 `"23"', add
label define it01a_minlvhm_lbl 24 `"24"', add
label define it01a_minlvhm_lbl 25 `"25"', add
label define it01a_minlvhm_lbl 26 `"26"', add
label define it01a_minlvhm_lbl 27 `"27"', add
label define it01a_minlvhm_lbl 28 `"28"', add
label define it01a_minlvhm_lbl 29 `"29"', add
label define it01a_minlvhm_lbl 30 `"30"', add
label define it01a_minlvhm_lbl 31 `"31"', add
label define it01a_minlvhm_lbl 32 `"32"', add
label define it01a_minlvhm_lbl 33 `"33"', add
label define it01a_minlvhm_lbl 34 `"34"', add
label define it01a_minlvhm_lbl 35 `"35"', add
label define it01a_minlvhm_lbl 36 `"36"', add
label define it01a_minlvhm_lbl 37 `"37"', add
label define it01a_minlvhm_lbl 38 `"38"', add
label define it01a_minlvhm_lbl 39 `"39"', add
label define it01a_minlvhm_lbl 40 `"40"', add
label define it01a_minlvhm_lbl 41 `"41"', add
label define it01a_minlvhm_lbl 42 `"42"', add
label define it01a_minlvhm_lbl 43 `"43"', add
label define it01a_minlvhm_lbl 44 `"44"', add
label define it01a_minlvhm_lbl 45 `"45"', add
label define it01a_minlvhm_lbl 46 `"46"', add
label define it01a_minlvhm_lbl 47 `"47"', add
label define it01a_minlvhm_lbl 48 `"48"', add
label define it01a_minlvhm_lbl 49 `"49"', add
label define it01a_minlvhm_lbl 50 `"50"', add
label define it01a_minlvhm_lbl 51 `"51"', add
label define it01a_minlvhm_lbl 52 `"52"', add
label define it01a_minlvhm_lbl 53 `"53"', add
label define it01a_minlvhm_lbl 54 `"54"', add
label define it01a_minlvhm_lbl 55 `"55"', add
label define it01a_minlvhm_lbl 56 `"56"', add
label define it01a_minlvhm_lbl 57 `"57"', add
label define it01a_minlvhm_lbl 58 `"58"', add
label define it01a_minlvhm_lbl 59 `"59"', add
label define it01a_minlvhm_lbl 99 `"NIU (not in universe)"', add
label values it01a_minlvhm it01a_minlvhm_lbl

label define it01a_timecomu_lbl 1 `"Up to 15 minutes"'
label define it01a_timecomu_lbl 2 `"From 16 to 30 minutes"', add
label define it01a_timecomu_lbl 3 `"From 31 to 45 minutes"', add
label define it01a_timecomu_lbl 4 `"From 46 to 60 minutes"', add
label define it01a_timecomu_lbl 5 `"Over 60 minutes"', add
label define it01a_timecomu_lbl 9 `"NIU (not in universe)"', add
label values it01a_timecomu it01a_timecomu_lbl

label define it01a_trancomu_lbl 01 `"Train"'
label define it01a_trancomu_lbl 02 `"Tram"', add
label define it01a_trancomu_lbl 03 `"Subway"', add
label define it01a_trancomu_lbl 04 `"City bus, trolley bus"', add
label define it01a_trancomu_lbl 05 `"Bus, suburban bus line"', add
label define it01a_trancomu_lbl 06 `"Company or school bus"', add
label define it01a_trancomu_lbl 07 `"Private Automobile (as driver)"', add
label define it01a_trancomu_lbl 08 `"Private Automobile (as passenger)"', add
label define it01a_trancomu_lbl 09 `"Motorcycle, moped, scooter"', add
label define it01a_trancomu_lbl 10 `"Bicycle"', add
label define it01a_trancomu_lbl 11 `"Other means (boat, cable cat, etc.)"', add
label define it01a_trancomu_lbl 12 `"By foot"', add
label define it01a_trancomu_lbl 99 `"NIU (not in universe)"', add
label values it01a_trancomu it01a_trancomu_lbl

label define it01a_occupied_lbl 1 `"No"'
label define it01a_occupied_lbl 2 `"Yes"', add
label define it01a_occupied_lbl 9 `"NIU (not in universe)"', add
label values it01a_occupied it01a_occupied_lbl


