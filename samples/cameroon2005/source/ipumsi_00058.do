* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    cm05a_dwnum     22-28    ///
  byte    cm05a_province  29-30    ///
  byte    cm05a_dept      31-32    ///
  byte    cm05a_urban     33-33    ///
  byte    cm05a_typehh    34-35    ///
  int     cm05a_respres   36-38    ///
  byte    cm05a_resabs    39-40    ///
  byte    cm05a_visitors  41-42    ///
  byte    cm05a_disill    43-43    ///
  byte    cm05a_hhstruct  44-45    ///
  byte    cm05a_lodgetyp  46-46    ///
  byte    cm05a_structdw  47-47    ///
  byte    cm05a_walls     48-48    ///
  byte    cm05a_roof      49-49    ///
  byte    cm05a_floor     50-50    ///
  byte    cm05a_toilet    51-51    ///
  byte    cm05a_rooms     52-53    ///
  byte    cm05a_tenure    54-54    ///
  byte    cm05a_light     55-55    ///
  byte    cm05a_fuelck    56-56    ///
  byte    cm05a_watsrc    57-58    ///
  byte    cm05a_sewer     59-59    ///
  byte    cm05a_trash     60-60    ///
  byte    cm05a_dwsite    61-62    ///
  byte    cm05a_access    63-63    ///
  byte    cm05a_nmort     64-64    ///
  byte    cm05a_nmig      65-65    ///
  int     pernum          66-68    ///
  float   wtper           69-76    ///
  byte    resident        77-77    ///
  byte    cm05a_pernum    78-79    ///
  int     cm05a_edattan2  80-82    ///
  byte    cm05a_sleephml  83-83    ///
  byte    cm05a_whyhmls   84-84    ///
  byte    cm05a_resurnmd  85-85    ///
  byte    cm05a_actnomad  86-86    ///
  byte    cm05a_typehous  87-88    ///
  byte    cm05a_sex       89-89    ///
  byte    cm05a_relate    90-91    ///
  byte    cm05a_age       92-93    ///
  byte    cm05a_birthmo   94-95    ///
  int     cm05a_birthyr   96-99    ///
  byte    cm05a_bplurb    100-100  ///
  int     cm05a_bpl       101-103  ///
  int     cm05a_bplctry   104-106  ///
  byte    cm05a_marst     107-107  ///
  byte    cm05a_resident  108-108  ///
  byte    cm05a_visurb    109-109  ///
  int     cm05a_visures   110-112  ///
  byte    cm05a_urban5yr  113-113  ///
  int     cm05a_arrnd5yr  114-116  ///
  byte    cm05a_dept5yr   117-118  ///
  byte    cm05a_prov5yr   119-120  ///
  int     cm05a_cntry5yr  121-123  ///
  byte    cm05a_prevurb   124-124  ///
  int     cm05a_prevarrd  125-127  ///
  byte    cm05a_prevdept  128-129  ///
  byte    cm05a_prevprov  130-131  ///
  int     cm05a_prevctry  132-134  ///
  int     cm05a_resdur    135-137  ///
  int     cm05a_nation    138-140  ///
  byte    cm05a_religion  141-141  ///
  byte    cm05a_disab     142-143  ///
  byte    cm05a_chronic   144-145  ///
  byte    cm05a_mortfa    146-146  ///
  byte    cm05a_mortmo    147-147  ///
  byte    cm05a_language  148-149  ///
  byte    cm05a_readeng   150-150  ///
  byte    cm05a_writeeng  151-151  ///
  byte    cm05a_spkeng    152-152  ///
  byte    cm05a_readfrn   153-153  ///
  byte    cm05a_writfrn   154-154  ///
  byte    cm05a_spkfrn    155-155  ///
  byte    cm05a_everschl  156-156  ///
  byte    cm05a_school    157-157  ///
  byte    cm05a_edsect    158-158  ///
  int     cm05a_profesn   159-161  ///
  byte    cm05a_empstat   162-163  ///
  byte    cm05a_classwk   164-164  ///
  int     cm05a_occ       165-167  ///
  byte    cm05a_emptype   168-168  ///
  byte    cm05a_empsect   169-169  ///
  int     cm05a_ind       170-173  ///
  byte    cm05a_chbornm   174-175  ///
  byte    cm05a_chbornf   176-177  ///
  byte    cm05a_chsurvm   178-179  ///
  byte    cm05a_chsurvf   180-181  ///
  byte    cm05a_chbyrm    182-183  ///
  byte    cm05a_chbyrf    184-185  ///
  byte    cm05a_chborn    186-187  ///
  byte    cm05a_chsurv    188-189  ///
  byte    cm05a_chbyr     190-190  ///
  byte    cm05a_aidsknow  191-191  ///
  byte    cm05a_aidstran  192-193  ///
  using `"ipumsi_00058.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var cm05a_dwnum    `"Dwelling number"'
label var cm05a_province `"Province"'
label var cm05a_dept     `"Department or division"'
label var cm05a_urban    `"Urban"'
label var cm05a_typehh   `"Household type"'
label var cm05a_respres  `"Present residents"'
label var cm05a_resabs   `"Absent residents"'
label var cm05a_visitors `"Visitors"'
label var cm05a_disill   `"Incapacitating illness"'
label var cm05a_hhstruct `"Household type"'
label var cm05a_lodgetyp `"Lodging type"'
label var cm05a_structdw `"Type of structure"'
label var cm05a_walls    `"Wall material"'
label var cm05a_roof     `"Roof material"'
label var cm05a_floor    `"Floor material"'
label var cm05a_toilet   `"Toilet"'
label var cm05a_rooms    `"Bedrooms"'
label var cm05a_tenure   `"Mode of occupancy"'
label var cm05a_light    `"Light source"'
label var cm05a_fuelck   `"Cooking energy source"'
label var cm05a_watsrc   `"Source of drinking water"'
label var cm05a_sewer    `"Waste water disposal"'
label var cm05a_trash    `"Household waste"'
label var cm05a_dwsite   `"Site of dwelling"'
label var cm05a_access   `"Accessibility means"'
label var cm05a_nmort    `"Number of mortality records"'
label var cm05a_nmig     `"Number of migration records"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var resident       `"Residence status: de facto, de jure"'
label var cm05a_pernum   `"Person number (within household)"'
label var cm05a_edattan2 `"Last class attended (unedited)"'
label var cm05a_sleephml `"Sleeping place, homeless"'
label var cm05a_whyhmls  `"Main reason for being in the street"'
label var cm05a_resurnmd `"Type of residence nomads"'
label var cm05a_actnomad `"Primary activity nomad"'
label var cm05a_typehous `"Household type"'
label var cm05a_sex      `"Sex"'
label var cm05a_relate   `"Relationship to head of household"'
label var cm05a_age      `"Age"'
label var cm05a_birthmo  `"Month of birth"'
label var cm05a_birthyr  `"Year of birth"'
label var cm05a_bplurb   `"Urban or rural place of birth"'
label var cm05a_bpl      `"Arrondissement of birth"'
label var cm05a_bplctry  `"Country of birth"'
label var cm05a_marst    `"Marital Status"'
label var cm05a_resident `"Residential status"'
label var cm05a_visurb   `"Visitor's usual place of residence"'
label var cm05a_visures  `"Visitor's usual arrondissment or country of residence"'
label var cm05a_urban5yr `"Urban-rural status in 2000"'
label var cm05a_arrnd5yr `"Arrondissement of residence in 2000"'
label var cm05a_dept5yr  `"Department of residence in 2000"'
label var cm05a_prov5yr  `"Province of residence in 2000"'
label var cm05a_cntry5yr `"Country of residence in 2000"'
label var cm05a_prevurb  `"Urban-rural status of previous residence"'
label var cm05a_prevarrd `"Arrondissement of previous residence"'
label var cm05a_prevdept `"Department of previous residence"'
label var cm05a_prevprov `"Province of previous residence"'
label var cm05a_prevctry `"Country of previous residence"'
label var cm05a_resdur   `"Number of years in current place of residence"'
label var cm05a_nation   `"Nationality"'
label var cm05a_religion `"Religion"'
label var cm05a_disab    `"Disability"'
label var cm05a_chronic  `"Chronic disease"'
label var cm05a_mortfa   `"Father still alive"'
label var cm05a_mortmo   `"Mother still alive"'
label var cm05a_language `"Literacy in national languages"'
label var cm05a_readeng  `"Can read English"'
label var cm05a_writeeng `"Write English"'
label var cm05a_spkeng   `"Speak English"'
label var cm05a_readfrn  `"Read French"'
label var cm05a_writfrn  `"Write French"'
label var cm05a_spkfrn   `"Speak French"'
label var cm05a_everschl `"Ever attended school"'
label var cm05a_school   `"Present school attendence"'
label var cm05a_edsect   `"Educational sector"'
label var cm05a_profesn  `"Profession"'
label var cm05a_empstat  `"Employment status"'
label var cm05a_classwk  `"Class of worker"'
label var cm05a_occ      `"Occupation"'
label var cm05a_emptype  `"Type of employment"'
label var cm05a_empsect  `"Sector of employment"'
label var cm05a_ind      `"Industry"'
label var cm05a_chbornm  `"Number of male live births"'
label var cm05a_chbornf  `"Number of female live births"'
label var cm05a_chsurvm  `"Number of male children still living"'
label var cm05a_chsurvf  `"Number of female children still living"'
label var cm05a_chbyrm   `"Male live births in last 12 months"'
label var cm05a_chbyrf   `"Female live births in last 12 months"'
label var cm05a_chborn   `"Children born alive"'
label var cm05a_chsurv   `"Children still living"'
label var cm05a_chbyr    `"Children born in last 12 months"'
label var cm05a_aidsknow `"Heard of AIDS"'
label var cm05a_aidstran `"Transmission of AIDS"'

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

label define cm05a_province_lbl 01 `"Adamoua"'
label define cm05a_province_lbl 02 `"Centre"', add
label define cm05a_province_lbl 03 `"Est"', add
label define cm05a_province_lbl 04 `"Extrème Nord"', add
label define cm05a_province_lbl 05 `"Littoral"', add
label define cm05a_province_lbl 06 `"Nord"', add
label define cm05a_province_lbl 07 `"Nord Ouest"', add
label define cm05a_province_lbl 08 `"Ouest"', add
label define cm05a_province_lbl 09 `"Sud"', add
label define cm05a_province_lbl 10 `"Sud Ouest"', add
label values cm05a_province cm05a_province_lbl

label define cm05a_dept_lbl 01 `"Djerem"'
label define cm05a_dept_lbl 02 `"Faro et Deo"', add
label define cm05a_dept_lbl 03 `"Mayo Banyo"', add
label define cm05a_dept_lbl 04 `"Mbere"', add
label define cm05a_dept_lbl 05 `"Vina"', add
label define cm05a_dept_lbl 06 `"Haute Sanaga"', add
label define cm05a_dept_lbl 07 `"Lekié"', add
label define cm05a_dept_lbl 08 `"Mbam et Inoubou"', add
label define cm05a_dept_lbl 09 `"Mbam et Kim"', add
label define cm05a_dept_lbl 10 `"Mefou et Afamba"', add
label define cm05a_dept_lbl 11 `"Mefou et Akono"', add
label define cm05a_dept_lbl 12 `"Mfoundi"', add
label define cm05a_dept_lbl 13 `"Nyong et Kelle"', add
label define cm05a_dept_lbl 14 `"Nyong et Mfoumou"', add
label define cm05a_dept_lbl 15 `"Nyong et So'o"', add
label define cm05a_dept_lbl 16 `"Boumba et Ngoko"', add
label define cm05a_dept_lbl 17 `"Haut Nyong"', add
label define cm05a_dept_lbl 18 `"Kadey"', add
label define cm05a_dept_lbl 19 `"Lom et Djerem"', add
label define cm05a_dept_lbl 20 `"Diamare"', add
label define cm05a_dept_lbl 21 `"Logone et Chari"', add
label define cm05a_dept_lbl 22 `"Mayo Danay"', add
label define cm05a_dept_lbl 23 `"Mayo Kani"', add
label define cm05a_dept_lbl 24 `"Mayo Sava"', add
label define cm05a_dept_lbl 25 `"Mayo Tsanaga"', add
label define cm05a_dept_lbl 26 `"Moungo"', add
label define cm05a_dept_lbl 27 `"Nkam"', add
label define cm05a_dept_lbl 28 `"Sanaga Maritime"', add
label define cm05a_dept_lbl 29 `"Wouri"', add
label define cm05a_dept_lbl 30 `"Benoue"', add
label define cm05a_dept_lbl 31 `"Faro"', add
label define cm05a_dept_lbl 32 `"Mayo Louti"', add
label define cm05a_dept_lbl 33 `"Mayo Rey"', add
label define cm05a_dept_lbl 34 `"Boyo"', add
label define cm05a_dept_lbl 35 `"Bui"', add
label define cm05a_dept_lbl 36 `"Donga Mantung"', add
label define cm05a_dept_lbl 37 `"Menchum"', add
label define cm05a_dept_lbl 38 `"Mezam"', add
label define cm05a_dept_lbl 39 `"Momo"', add
label define cm05a_dept_lbl 40 `"Ngo Ketungja"', add
label define cm05a_dept_lbl 41 `"Bamboutos"', add
label define cm05a_dept_lbl 42 `"Haut Nkam"', add
label define cm05a_dept_lbl 43 `"Hauts Plateaux"', add
label define cm05a_dept_lbl 44 `"Koung Khi"', add
label define cm05a_dept_lbl 45 `"Menoua"', add
label define cm05a_dept_lbl 46 `"Mifi"', add
label define cm05a_dept_lbl 47 `"Nde"', add
label define cm05a_dept_lbl 48 `"Noun"', add
label define cm05a_dept_lbl 49 `"Dja et Lobo"', add
label define cm05a_dept_lbl 50 `"Mvilla"', add
label define cm05a_dept_lbl 51 `"Océan"', add
label define cm05a_dept_lbl 52 `"Vallée du Ntem"', add
label define cm05a_dept_lbl 53 `"Fako"', add
label define cm05a_dept_lbl 54 `"Koupe et Manengouba"', add
label define cm05a_dept_lbl 55 `"Lebialem"', add
label define cm05a_dept_lbl 56 `"Manyu"', add
label define cm05a_dept_lbl 57 `"Meme"', add
label define cm05a_dept_lbl 58 `"Ndian"', add
label values cm05a_dept cm05a_dept_lbl

label define cm05a_urban_lbl 1 `"Rural"'
label define cm05a_urban_lbl 2 `"Urban"', add
label values cm05a_urban cm05a_urban_lbl

label define cm05a_typehh_lbl 10 `"Ordinary household"'
label define cm05a_typehh_lbl 20 `"Other collective households"', add
label define cm05a_typehh_lbl 21 `"Boarding school"', add
label define cm05a_typehh_lbl 22 `"Hotel"', add
label define cm05a_typehh_lbl 23 `"Prison"', add
label define cm05a_typehh_lbl 24 `"Hospital"', add
label define cm05a_typehh_lbl 25 `"Religious institution"', add
label define cm05a_typehh_lbl 26 `"Military barracks"', add
label define cm05a_typehh_lbl 27 `"Orphanage, refugee camp, hospice"', add
label define cm05a_typehh_lbl 30 `"Nomadic household"', add
label define cm05a_typehh_lbl 40 `"Apparently homeless"', add
label values cm05a_typehh cm05a_typehh_lbl

label define cm05a_respres_lbl 000 `"0"'
label define cm05a_respres_lbl 001 `"1"', add
label define cm05a_respres_lbl 002 `"2"', add
label define cm05a_respres_lbl 003 `"3"', add
label define cm05a_respres_lbl 004 `"4"', add
label define cm05a_respres_lbl 005 `"5"', add
label define cm05a_respres_lbl 006 `"6"', add
label define cm05a_respres_lbl 007 `"7"', add
label define cm05a_respres_lbl 008 `"8"', add
label define cm05a_respres_lbl 009 `"9"', add
label define cm05a_respres_lbl 010 `"10"', add
label define cm05a_respres_lbl 011 `"11"', add
label define cm05a_respres_lbl 012 `"12"', add
label define cm05a_respres_lbl 013 `"13"', add
label define cm05a_respres_lbl 014 `"14"', add
label define cm05a_respres_lbl 015 `"15"', add
label define cm05a_respres_lbl 016 `"16"', add
label define cm05a_respres_lbl 017 `"17"', add
label define cm05a_respres_lbl 018 `"18"', add
label define cm05a_respres_lbl 019 `"19"', add
label define cm05a_respres_lbl 020 `"20"', add
label define cm05a_respres_lbl 021 `"21"', add
label define cm05a_respres_lbl 022 `"22"', add
label define cm05a_respres_lbl 023 `"23"', add
label define cm05a_respres_lbl 024 `"24"', add
label define cm05a_respres_lbl 025 `"25"', add
label define cm05a_respres_lbl 026 `"26"', add
label define cm05a_respres_lbl 027 `"27"', add
label define cm05a_respres_lbl 028 `"28"', add
label define cm05a_respres_lbl 029 `"29"', add
label define cm05a_respres_lbl 030 `"30+"', add
label define cm05a_respres_lbl 100 `"Unknown"', add
label values cm05a_respres cm05a_respres_lbl

label define cm05a_resabs_lbl 00 `"0"'
label define cm05a_resabs_lbl 01 `"1"', add
label define cm05a_resabs_lbl 02 `"2"', add
label define cm05a_resabs_lbl 03 `"3"', add
label define cm05a_resabs_lbl 04 `"4"', add
label define cm05a_resabs_lbl 05 `"5"', add
label define cm05a_resabs_lbl 06 `"6"', add
label define cm05a_resabs_lbl 07 `"7"', add
label define cm05a_resabs_lbl 08 `"8"', add
label define cm05a_resabs_lbl 09 `"9"', add
label define cm05a_resabs_lbl 10 `"10"', add
label define cm05a_resabs_lbl 11 `"11"', add
label define cm05a_resabs_lbl 12 `"12+"', add
label values cm05a_resabs cm05a_resabs_lbl

label define cm05a_visitors_lbl 00 `"0"'
label define cm05a_visitors_lbl 01 `"1"', add
label define cm05a_visitors_lbl 02 `"2"', add
label define cm05a_visitors_lbl 03 `"3"', add
label define cm05a_visitors_lbl 04 `"4"', add
label define cm05a_visitors_lbl 05 `"5"', add
label define cm05a_visitors_lbl 06 `"6"', add
label define cm05a_visitors_lbl 07 `"7"', add
label define cm05a_visitors_lbl 08 `"8"', add
label define cm05a_visitors_lbl 09 `"9"', add
label define cm05a_visitors_lbl 10 `"10"', add
label define cm05a_visitors_lbl 11 `"11"', add
label define cm05a_visitors_lbl 12 `"12"', add
label define cm05a_visitors_lbl 13 `"13"', add
label define cm05a_visitors_lbl 14 `"14"', add
label define cm05a_visitors_lbl 15 `"15+"', add
label define cm05a_visitors_lbl 98 `"Unknown"', add
label values cm05a_visitors cm05a_visitors_lbl

label define cm05a_disill_lbl 1 `"Yes"'
label define cm05a_disill_lbl 2 `"No"', add
label define cm05a_disill_lbl 8 `"Unknown"', add
label define cm05a_disill_lbl 9 `"NIU (not in universe)"', add
label values cm05a_disill cm05a_disill_lbl

label define cm05a_hhstruct_lbl 01 `"Singleton"'
label define cm05a_hhstruct_lbl 02 `"Simple monogamous nuclear family"', add
label define cm05a_hhstruct_lbl 03 `"Simple polygamous nuclear family"', add
label define cm05a_hhstruct_lbl 04 `"Enlarged nuclear family"', add
label define cm05a_hhstruct_lbl 05 `"Enlarged polygamous nuclear family"', add
label define cm05a_hhstruct_lbl 06 `"Extended monogamous nuclear family"', add
label define cm05a_hhstruct_lbl 07 `"Extended polygamous  nuclear family"', add
label define cm05a_hhstruct_lbl 08 `"Composite monogamous nuclear family"', add
label define cm05a_hhstruct_lbl 09 `"Composite polygamous nuclear family"', add
label define cm05a_hhstruct_lbl 10 `"Simple single-parent family"', add
label define cm05a_hhstruct_lbl 11 `"Enlarged single-parent family"', add
label define cm05a_hhstruct_lbl 12 `"Extended single-parent family"', add
label define cm05a_hhstruct_lbl 13 `"Composite single-parent family"', add
label define cm05a_hhstruct_lbl 14 `"Household of persons without core family"', add
label define cm05a_hhstruct_lbl 15 `"Composite household without core family"', add
label define cm05a_hhstruct_lbl 16 `"Complex household without core family"', add
label define cm05a_hhstruct_lbl 99 `"Other"', add
label values cm05a_hhstruct cm05a_hhstruct_lbl

label define cm05a_lodgetyp_lbl 1 `"Luxury housing"'
label define cm05a_lodgetyp_lbl 2 `"Mid-class housing"', add
label define cm05a_lodgetyp_lbl 3 `"Low standard housing"', add
label define cm05a_lodgetyp_lbl 4 `"Improved traditional housing"', add
label define cm05a_lodgetyp_lbl 5 `"Simple traditional housing"', add
label define cm05a_lodgetyp_lbl 6 `"Miserable housing"', add
label define cm05a_lodgetyp_lbl 7 `"Other types of housing"', add
label define cm05a_lodgetyp_lbl 8 `"Unclassifiable structures"', add
label define cm05a_lodgetyp_lbl 9 `"Not stated"', add
label values cm05a_lodgetyp cm05a_lodgetyp_lbl

label define cm05a_structdw_lbl 1 `"Isolated house"'
label define cm05a_structdw_lbl 2 `"Modern villa"', add
label define cm05a_structdw_lbl 3 `"Multiple dwelling"', add
label define cm05a_structdw_lbl 4 `"Building with many apartments"', add
label define cm05a_structdw_lbl 5 `"Compound or sare"', add
label define cm05a_structdw_lbl 6 `"Other"', add
label define cm05a_structdw_lbl 9 `"NIU (not in universe)"', add
label values cm05a_structdw cm05a_structdw_lbl

label define cm05a_walls_lbl 1 `"Concrete/cement block/stabilized brick"'
label define cm05a_walls_lbl 2 `"Stone"', add
label define cm05a_walls_lbl 3 `"Brick"', add
label define cm05a_walls_lbl 4 `"Plank"', add
label define cm05a_walls_lbl 5 `"Mud or straw"', add
label define cm05a_walls_lbl 6 `"Carabot (plywood)"', add
label define cm05a_walls_lbl 7 `"Other"', add
label define cm05a_walls_lbl 9 `"NIU (not in universe)"', add
label values cm05a_walls cm05a_walls_lbl

label define cm05a_roof_lbl 1 `"Zinc"'
label define cm05a_roof_lbl 2 `"Cement or concrete"', add
label define cm05a_roof_lbl 3 `"Thatch, grass, straw"', add
label define cm05a_roof_lbl 4 `"Tiles"', add
label define cm05a_roof_lbl 5 `"Earth"', add
label define cm05a_roof_lbl 6 `"Other"', add
label define cm05a_roof_lbl 9 `"NIU (not in universe)"', add
label values cm05a_roof cm05a_roof_lbl

label define cm05a_floor_lbl 1 `"Cement"'
label define cm05a_floor_lbl 2 `"Tiles"', add
label define cm05a_floor_lbl 3 `"Wood"', add
label define cm05a_floor_lbl 4 `"Earth"', add
label define cm05a_floor_lbl 5 `"Marble"', add
label define cm05a_floor_lbl 6 `"Other"', add
label define cm05a_floor_lbl 9 `"NIU (not in universe)"', add
label values cm05a_floor cm05a_floor_lbl

label define cm05a_toilet_lbl 1 `"Flushing WC inside"'
label define cm05a_toilet_lbl 2 `"Private flushing WC outside"', add
label define cm05a_toilet_lbl 3 `"Common flushing WC"', add
label define cm05a_toilet_lbl 4 `"Private latrine"', add
label define cm05a_toilet_lbl 5 `"Common latrine"', add
label define cm05a_toilet_lbl 6 `"Nature"', add
label define cm05a_toilet_lbl 7 `"Other"', add
label define cm05a_toilet_lbl 9 `"NIU (not in universe)"', add
label values cm05a_toilet cm05a_toilet_lbl

label define cm05a_rooms_lbl 01 `"1"'
label define cm05a_rooms_lbl 02 `"2"', add
label define cm05a_rooms_lbl 03 `"3"', add
label define cm05a_rooms_lbl 04 `"4"', add
label define cm05a_rooms_lbl 05 `"5"', add
label define cm05a_rooms_lbl 06 `"6"', add
label define cm05a_rooms_lbl 07 `"7"', add
label define cm05a_rooms_lbl 08 `"8"', add
label define cm05a_rooms_lbl 09 `"9"', add
label define cm05a_rooms_lbl 10 `"10"', add
label define cm05a_rooms_lbl 11 `"11"', add
label define cm05a_rooms_lbl 99 `"NIU (not in universe)"', add
label values cm05a_rooms cm05a_rooms_lbl

label define cm05a_tenure_lbl 1 `"Owner"'
label define cm05a_tenure_lbl 2 `"Renter"', add
label define cm05a_tenure_lbl 3 `"Hire-purchase"', add
label define cm05a_tenure_lbl 4 `"Lodged by employer"', add
label define cm05a_tenure_lbl 5 `"Lodged by parents or friends"', add
label define cm05a_tenure_lbl 6 `"Other"', add
label define cm05a_tenure_lbl 9 `"NIU (not in universe)"', add
label values cm05a_tenure cm05a_tenure_lbl

label define cm05a_light_lbl 1 `"Electricity"'
label define cm05a_light_lbl 2 `"Gas"', add
label define cm05a_light_lbl 3 `"Kerosene"', add
label define cm05a_light_lbl 4 `"Saw dust"', add
label define cm05a_light_lbl 5 `"Firewood or charcoal"', add
label define cm05a_light_lbl 6 `"Other"', add
label define cm05a_light_lbl 9 `"NIU (not in universe)"', add
label values cm05a_light cm05a_light_lbl

label define cm05a_fuelck_lbl 1 `"Electricity"'
label define cm05a_fuelck_lbl 2 `"Gas"', add
label define cm05a_fuelck_lbl 3 `"Kerosene"', add
label define cm05a_fuelck_lbl 4 `"Saw dust"', add
label define cm05a_fuelck_lbl 5 `"Firewood or charcoal"', add
label define cm05a_fuelck_lbl 6 `"Other"', add
label define cm05a_fuelck_lbl 9 `"NIU (not in universe)"', add
label values cm05a_fuelck cm05a_fuelck_lbl

label define cm05a_watsrc_lbl 01 `"Interior tap"'
label define cm05a_watsrc_lbl 02 `"Exterior tap"', add
label define cm05a_watsrc_lbl 03 `"Constructed well"', add
label define cm05a_watsrc_lbl 04 `"Natural well"', add
label define cm05a_watsrc_lbl 05 `"Paying public tap"', add
label define cm05a_watsrc_lbl 06 `"River or stream"', add
label define cm05a_watsrc_lbl 07 `"Borelide"', add
label define cm05a_watsrc_lbl 08 `"Mineral water"', add
label define cm05a_watsrc_lbl 09 `"Developped spring"', add
label define cm05a_watsrc_lbl 10 `"Undevelopped spring"', add
label define cm05a_watsrc_lbl 11 `"Lake/pond/marsh"', add
label define cm05a_watsrc_lbl 12 `"Other"', add
label define cm05a_watsrc_lbl 99 `"NIU (not in universe)"', add
label values cm05a_watsrc cm05a_watsrc_lbl

label define cm05a_sewer_lbl 1 `"Septic tank"'
label define cm05a_sewer_lbl 2 `"Courtyard"', add
label define cm05a_sewer_lbl 3 `"Roadside"', add
label define cm05a_sewer_lbl 4 `"Bush"', add
label define cm05a_sewer_lbl 5 `"River or stream"', add
label define cm05a_sewer_lbl 6 `"Other"', add
label define cm05a_sewer_lbl 9 `"NIU (not in universe)"', add
label values cm05a_sewer cm05a_sewer_lbl

label define cm05a_trash_lbl 1 `"Roadside"'
label define cm05a_trash_lbl 2 `"Public dustbin"', add
label define cm05a_trash_lbl 3 `"Bush"', add
label define cm05a_trash_lbl 4 `"River or stream"', add
label define cm05a_trash_lbl 5 `"Pits dug for this purpose"', add
label define cm05a_trash_lbl 6 `"Around the dwelling"', add
label define cm05a_trash_lbl 7 `"Burning"', add
label define cm05a_trash_lbl 8 `"Other"', add
label define cm05a_trash_lbl 9 `"NIU (not in universe)"', add
label values cm05a_trash cm05a_trash_lbl

label define cm05a_dwsite_lbl 01 `"Developed slope"'
label define cm05a_dwsite_lbl 02 `"Natural slope"', add
label define cm05a_dwsite_lbl 03 `"Valley"', add
label define cm05a_dwsite_lbl 04 `"Swampy valley"', add
label define cm05a_dwsite_lbl 05 `"Flat land"', add
label define cm05a_dwsite_lbl 06 `"Hilltop or summit"', add
label define cm05a_dwsite_lbl 07 `"Surrounded by petrol depots"', add
label define cm05a_dwsite_lbl 08 `"Surrounded by polluting factories"', add
label define cm05a_dwsite_lbl 09 `"surrounded by airport"', add
label define cm05a_dwsite_lbl 10 `"Surrounded by railway"', add
label define cm05a_dwsite_lbl 11 `"Reclaimed area"', add
label define cm05a_dwsite_lbl 12 `"Surrounded by mountains or volcanic lakes"', add
label define cm05a_dwsite_lbl 13 `"Surrounded by high tension poles"', add
label define cm05a_dwsite_lbl 14 `"Other"', add
label define cm05a_dwsite_lbl 99 `"NIU (not in universe)"', add
label values cm05a_dwsite cm05a_dwsite_lbl

label define cm05a_access_lbl 1 `"Tarred road"'
label define cm05a_access_lbl 2 `"Earth road"', add
label define cm05a_access_lbl 3 `"Track"', add
label define cm05a_access_lbl 4 `"Path"', add
label define cm05a_access_lbl 5 `"Other"', add
label define cm05a_access_lbl 9 `"NIU (not in universe)"', add
label values cm05a_access cm05a_access_lbl

label define cm05a_nmort_lbl 0 `"0"'
label define cm05a_nmort_lbl 1 `"1"', add
label define cm05a_nmort_lbl 2 `"2"', add
label define cm05a_nmort_lbl 3 `"3"', add
label define cm05a_nmort_lbl 4 `"4"', add
label define cm05a_nmort_lbl 5 `"5+"', add
label values cm05a_nmort cm05a_nmort_lbl

label define cm05a_nmig_lbl 0 `"0"'
label define cm05a_nmig_lbl 1 `"1"', add
label define cm05a_nmig_lbl 2 `"2"', add
label define cm05a_nmig_lbl 3 `"3"', add
label define cm05a_nmig_lbl 4 `"4"', add
label define cm05a_nmig_lbl 5 `"5"', add
label define cm05a_nmig_lbl 6 `"6"', add
label values cm05a_nmig cm05a_nmig_lbl

label define resident_lbl 1 `"Present resident"'
label define resident_lbl 2 `"Absent resident"', add
label define resident_lbl 3 `"Visitor/non-resident"', add
label define resident_lbl 4 `"De facto population (present persons)"', add
label define resident_lbl 9 `"Unknown/missing"', add
label values resident resident_lbl

label define cm05a_pernum_lbl 00 `"Household record"'
label define cm05a_pernum_lbl 01 `"1"', add
label define cm05a_pernum_lbl 02 `"2"', add
label define cm05a_pernum_lbl 03 `"3"', add
label define cm05a_pernum_lbl 04 `"4"', add
label define cm05a_pernum_lbl 05 `"5"', add
label define cm05a_pernum_lbl 06 `"6"', add
label define cm05a_pernum_lbl 07 `"7"', add
label define cm05a_pernum_lbl 08 `"8"', add
label define cm05a_pernum_lbl 09 `"9"', add
label define cm05a_pernum_lbl 10 `"10"', add
label define cm05a_pernum_lbl 11 `"11"', add
label define cm05a_pernum_lbl 12 `"12"', add
label define cm05a_pernum_lbl 13 `"13"', add
label define cm05a_pernum_lbl 14 `"14"', add
label define cm05a_pernum_lbl 15 `"15"', add
label define cm05a_pernum_lbl 16 `"16"', add
label define cm05a_pernum_lbl 17 `"17"', add
label define cm05a_pernum_lbl 18 `"18"', add
label define cm05a_pernum_lbl 19 `"19"', add
label define cm05a_pernum_lbl 20 `"20"', add
label define cm05a_pernum_lbl 21 `"21"', add
label define cm05a_pernum_lbl 22 `"22"', add
label define cm05a_pernum_lbl 23 `"23"', add
label define cm05a_pernum_lbl 24 `"24"', add
label define cm05a_pernum_lbl 25 `"25"', add
label define cm05a_pernum_lbl 26 `"26"', add
label define cm05a_pernum_lbl 27 `"27"', add
label define cm05a_pernum_lbl 28 `"28"', add
label define cm05a_pernum_lbl 29 `"29"', add
label define cm05a_pernum_lbl 30 `"30"', add
label define cm05a_pernum_lbl 31 `"31"', add
label define cm05a_pernum_lbl 32 `"32"', add
label define cm05a_pernum_lbl 33 `"33"', add
label define cm05a_pernum_lbl 34 `"34"', add
label define cm05a_pernum_lbl 35 `"35"', add
label define cm05a_pernum_lbl 36 `"36"', add
label define cm05a_pernum_lbl 37 `"37"', add
label define cm05a_pernum_lbl 38 `"38"', add
label define cm05a_pernum_lbl 39 `"39"', add
label define cm05a_pernum_lbl 40 `"40"', add
label define cm05a_pernum_lbl 41 `"41"', add
label define cm05a_pernum_lbl 42 `"42"', add
label define cm05a_pernum_lbl 43 `"43"', add
label define cm05a_pernum_lbl 44 `"44"', add
label define cm05a_pernum_lbl 45 `"45"', add
label define cm05a_pernum_lbl 46 `"46"', add
label define cm05a_pernum_lbl 47 `"47"', add
label define cm05a_pernum_lbl 48 `"48"', add
label define cm05a_pernum_lbl 49 `"49"', add
label define cm05a_pernum_lbl 50 `"50"', add
label define cm05a_pernum_lbl 51 `"51"', add
label define cm05a_pernum_lbl 52 `"52"', add
label define cm05a_pernum_lbl 53 `"53"', add
label define cm05a_pernum_lbl 54 `"54"', add
label define cm05a_pernum_lbl 55 `"55"', add
label define cm05a_pernum_lbl 56 `"56"', add
label define cm05a_pernum_lbl 57 `"57"', add
label define cm05a_pernum_lbl 58 `"58"', add
label define cm05a_pernum_lbl 59 `"59"', add
label define cm05a_pernum_lbl 60 `"60"', add
label define cm05a_pernum_lbl 61 `"61"', add
label define cm05a_pernum_lbl 62 `"62"', add
label define cm05a_pernum_lbl 63 `"63"', add
label define cm05a_pernum_lbl 64 `"64"', add
label define cm05a_pernum_lbl 65 `"65"', add
label define cm05a_pernum_lbl 66 `"66"', add
label define cm05a_pernum_lbl 67 `"67"', add
label define cm05a_pernum_lbl 68 `"68"', add
label define cm05a_pernum_lbl 69 `"69"', add
label define cm05a_pernum_lbl 70 `"70"', add
label define cm05a_pernum_lbl 71 `"71"', add
label define cm05a_pernum_lbl 72 `"72"', add
label define cm05a_pernum_lbl 73 `"73"', add
label define cm05a_pernum_lbl 74 `"74"', add
label define cm05a_pernum_lbl 75 `"75"', add
label define cm05a_pernum_lbl 76 `"76"', add
label define cm05a_pernum_lbl 77 `"77"', add
label define cm05a_pernum_lbl 78 `"78"', add
label define cm05a_pernum_lbl 79 `"79"', add
label define cm05a_pernum_lbl 80 `"80"', add
label define cm05a_pernum_lbl 81 `"81"', add
label define cm05a_pernum_lbl 82 `"82"', add
label define cm05a_pernum_lbl 83 `"83"', add
label define cm05a_pernum_lbl 84 `"84"', add
label define cm05a_pernum_lbl 85 `"85"', add
label define cm05a_pernum_lbl 86 `"86"', add
label define cm05a_pernum_lbl 87 `"87"', add
label define cm05a_pernum_lbl 88 `"88"', add
label define cm05a_pernum_lbl 89 `"89"', add
label define cm05a_pernum_lbl 90 `"90"', add
label define cm05a_pernum_lbl 91 `"91"', add
label define cm05a_pernum_lbl 92 `"92"', add
label define cm05a_pernum_lbl 93 `"93"', add
label define cm05a_pernum_lbl 94 `"94"', add
label define cm05a_pernum_lbl 95 `"95"', add
label define cm05a_pernum_lbl 96 `"96"', add
label define cm05a_pernum_lbl 97 `"97"', add
label define cm05a_pernum_lbl 98 `"98"', add
label define cm05a_pernum_lbl 99 `"99"', add
label values cm05a_pernum cm05a_pernum_lbl

label define cm05a_edattan2_lbl 000 `"No level"'
label define cm05a_edattan2_lbl 011 `"Koranic school year 1"', add
label define cm05a_edattan2_lbl 012 `"Koranic school year 2"', add
label define cm05a_edattan2_lbl 013 `"Koranic school year 3"', add
label define cm05a_edattan2_lbl 019 `"Koranic school, not specified"', add
label define cm05a_edattan2_lbl 021 `"Kindergarten year 1"', add
label define cm05a_edattan2_lbl 022 `"Kindergarten year 2"', add
label define cm05a_edattan2_lbl 023 `"Kindergarten year 3"', add
label define cm05a_edattan2_lbl 029 `"Kindergarten, not specified"', add
label define cm05a_edattan2_lbl 031 `"Primary school SIL"', add
label define cm05a_edattan2_lbl 032 `"Primary school CP1"', add
label define cm05a_edattan2_lbl 033 `"Primary school CP2/class 3"', add
label define cm05a_edattan2_lbl 034 `"Primary school CE1/class 4"', add
label define cm05a_edattan2_lbl 035 `"Primary school CE2/class 5"', add
label define cm05a_edattan2_lbl 036 `"Primary school CM1/class 6"', add
label define cm05a_edattan2_lbl 037 `"Primary school CMII/class 7"', add
label define cm05a_edattan2_lbl 039 `"Primary school not specified"', add
label define cm05a_edattan2_lbl 041 `"General secondary school 6ème/form 1"', add
label define cm05a_edattan2_lbl 042 `"General secondary school 5ème/form 2"', add
label define cm05a_edattan2_lbl 043 `"General secondary school 4ème/form 3"', add
label define cm05a_edattan2_lbl 044 `"General secondary school 3ème/form 4"', add
label define cm05a_edattan2_lbl 045 `"Form 5"', add
label define cm05a_edattan2_lbl 049 `"General secondary school not specified"', add
label define cm05a_edattan2_lbl 051 `"Technical secondary school year 1/form 1"', add
label define cm05a_edattan2_lbl 052 `"Technical secondary school year 2/form 2"', add
label define cm05a_edattan2_lbl 053 `"Technical secondary school year 3/form 3"', add
label define cm05a_edattan2_lbl 054 `"Technical secondary school year 4/form 4"', add
label define cm05a_edattan2_lbl 059 `"Technical secondary school, not specified"', add
label define cm05a_edattan2_lbl 061 `"Ttraining school CEPE, year 1"', add
label define cm05a_edattan2_lbl 062 `"Training school CEPE, year 2"', add
label define cm05a_edattan2_lbl 063 `"Training school CEPE, year 3"', add
label define cm05a_edattan2_lbl 069 `"Training school CEPE, not specified"', add
label define cm05a_edattan2_lbl 071 `"Post primary school year 1"', add
label define cm05a_edattan2_lbl 072 `"Post primary school year 2"', add
label define cm05a_edattan2_lbl 073 `"Post primary school year 3"', add
label define cm05a_edattan2_lbl 074 `"Post primary school year 4"', add
label define cm05a_edattan2_lbl 079 `"Post primary school not specified"', add
label define cm05a_edattan2_lbl 081 `"General secondary school seconde"', add
label define cm05a_edattan2_lbl 082 `"General secondary school première/lower 6"', add
label define cm05a_edattan2_lbl 083 `"General secondary school terminale/upper 6"', add
label define cm05a_edattan2_lbl 089 `"General secondary school not specified"', add
label define cm05a_edattan2_lbl 091 `"Technical school seconde/form 5"', add
label define cm05a_edattan2_lbl 092 `"Technical school première/lower 6"', add
label define cm05a_edattan2_lbl 093 `"Technical school terminale/upper 6"', add
label define cm05a_edattan2_lbl 099 `"Technical school not specified"', add
label define cm05a_edattan2_lbl 101 `"Training school BEPC year 1"', add
label define cm05a_edattan2_lbl 102 `"Training school BEPC year 2"', add
label define cm05a_edattan2_lbl 103 `"Training school BEPC year 3"', add
label define cm05a_edattan2_lbl 109 `"Training school BEPC not specified"', add
label define cm05a_edattan2_lbl 111 `"Training school probatoire year 1"', add
label define cm05a_edattan2_lbl 112 `"Training school probatoire year 2"', add
label define cm05a_edattan2_lbl 113 `"Training school probatoire year 3"', add
label define cm05a_edattan2_lbl 119 `"Training school probatoire not specified"', add
label define cm05a_edattan2_lbl 121 `"Higher education year 1"', add
label define cm05a_edattan2_lbl 122 `"Higher education year 2"', add
label define cm05a_edattan2_lbl 123 `"Higher education year 3"', add
label define cm05a_edattan2_lbl 124 `"Higher education year 4"', add
label define cm05a_edattan2_lbl 125 `"Higher education year 5"', add
label define cm05a_edattan2_lbl 126 `"Higher education year 6"', add
label define cm05a_edattan2_lbl 127 `"Higher education year 7"', add
label define cm05a_edattan2_lbl 128 `"Higher education year 8+"', add
label define cm05a_edattan2_lbl 129 `"Higher education not specified"', add
label define cm05a_edattan2_lbl 997 `"Not declared"', add
label define cm05a_edattan2_lbl 998 `"Unknown"', add
label define cm05a_edattan2_lbl 999 `"NIU (not in universe)"', add
label values cm05a_edattan2 cm05a_edattan2_lbl

label define cm05a_sleephml_lbl 1 `"Markets"'
label define cm05a_sleephml_lbl 2 `"Bus station, playground, abandoned building"', add
label define cm05a_sleephml_lbl 7 `"Other"', add
label define cm05a_sleephml_lbl 8 `"Unknown"', add
label define cm05a_sleephml_lbl 9 `"NIU (not in universe)"', add
label values cm05a_sleephml cm05a_sleephml_lbl

label define cm05a_whyhmls_lbl 1 `"Looking for freedom"'
label define cm05a_whyhmls_lbl 2 `"Parents unemployed"', add
label define cm05a_whyhmls_lbl 3 `"Other"', add
label define cm05a_whyhmls_lbl 8 `"Unknown"', add
label define cm05a_whyhmls_lbl 9 `"Non applicable"', add
label values cm05a_whyhmls cm05a_whyhmls_lbl

label define cm05a_resurnmd_lbl 1 `"Urban"'
label define cm05a_resurnmd_lbl 2 `"Rural"', add
label define cm05a_resurnmd_lbl 8 `"Unknown"', add
label define cm05a_resurnmd_lbl 9 `"NIU (not in universe)"', add
label values cm05a_resurnmd cm05a_resurnmd_lbl

label define cm05a_actnomad_lbl 1 `"Raising livestock"'
label define cm05a_actnomad_lbl 2 `"Other"', add
label define cm05a_actnomad_lbl 9 `"NIU (not in universe)"', add
label values cm05a_actnomad cm05a_actnomad_lbl

label define cm05a_typehous_lbl 10 `"Ordinary household"'
label define cm05a_typehous_lbl 20 `"Other collective households"', add
label define cm05a_typehous_lbl 21 `"Boarding school"', add
label define cm05a_typehous_lbl 22 `"Hotel"', add
label define cm05a_typehous_lbl 23 `"Prison"', add
label define cm05a_typehous_lbl 24 `"Hospital"', add
label define cm05a_typehous_lbl 25 `"Religious institution"', add
label define cm05a_typehous_lbl 26 `"Military barracks"', add
label define cm05a_typehous_lbl 27 `"Orphanage, refugee camp, or hospice"', add
label define cm05a_typehous_lbl 30 `"Nomadic household"', add
label define cm05a_typehous_lbl 40 `"Apparently homeless"', add
label values cm05a_typehous cm05a_typehous_lbl

label define cm05a_sex_lbl 1 `"Male"'
label define cm05a_sex_lbl 2 `"Female"', add
label values cm05a_sex cm05a_sex_lbl

label define cm05a_relate_lbl 10 `"Head of houshold"'
label define cm05a_relate_lbl 11 `"Unmarried child of household head (other parent not in household)"', add
label define cm05a_relate_lbl 20 `"Spouse of head of household"', add
label define cm05a_relate_lbl 21 `"Unmarried child of the head's spouse (head not biological parent)"', add
label define cm05a_relate_lbl 22 `"Unmarried child of the household head and his/her spouse"', add
label define cm05a_relate_lbl 23 `"Other single relatives of the head's spouse"', add
label define cm05a_relate_lbl 30 `"Parent of the head living in household with their spouse or child"', add
label define cm05a_relate_lbl 31 `"Spouse of head's mother or father"', add
label define cm05a_relate_lbl 32 `"Unmarried child of one or both members of this couple"', add
label define cm05a_relate_lbl 33 `"Other single persons related to one or both members of this couple"', add
label define cm05a_relate_lbl 40 `"Child of the houshold head or spouse, living in household with their spouse or child"', add
label define cm05a_relate_lbl 41 `"Spouse of household head's child"', add
label define cm05a_relate_lbl 42 `"Unmarried child of one or both members of this couple"', add
label define cm05a_relate_lbl 43 `"Child-in-law of head whose spouse does not live in household"', add
label define cm05a_relate_lbl 44 `"Other single relatives of this couple"', add
label define cm05a_relate_lbl 50 `"Brother or sister of the household head"', add
label define cm05a_relate_lbl 51 `"Spouse of brother or sister of head"', add
label define cm05a_relate_lbl 52 `"Unmarried child of head's brother/sister"', add
label define cm05a_relate_lbl 53 `"Head's brother- or sister-in-law (spouse not in household)"', add
label define cm05a_relate_lbl 54 `"Other relative of the head's brother- or sister-in-law"', add
label define cm05a_relate_lbl 60 `"Other relatives of the head"', add
label define cm05a_relate_lbl 61 `"Spouse of other relatives of the head"', add
label define cm05a_relate_lbl 62 `"Unmarried child of head's other relatives"', add
label define cm05a_relate_lbl 63 `"Other single relatives of head's other relatives"', add
label define cm05a_relate_lbl 70 `"Other relatives of head's spouse"', add
label define cm05a_relate_lbl 71 `"Spouse of head's parent-in-law"', add
label define cm05a_relate_lbl 72 `"Unmarried child of head's parent-in-law"', add
label define cm05a_relate_lbl 73 `"Other single relations of head's parent-in-law"', add
label define cm05a_relate_lbl 80 `"Persons with no relationship to head"', add
label define cm05a_relate_lbl 81 `"Spouse of a person with no relationship to head"', add
label define cm05a_relate_lbl 82 `"Unmarried child of persons with no relationship to head"', add
label define cm05a_relate_lbl 83 `"Other single relatives of person with no relationship to head"', add
label values cm05a_relate cm05a_relate_lbl

label define cm05a_age_lbl 00 `"0"'
label define cm05a_age_lbl 01 `"1"', add
label define cm05a_age_lbl 02 `"2"', add
label define cm05a_age_lbl 03 `"3"', add
label define cm05a_age_lbl 04 `"4"', add
label define cm05a_age_lbl 05 `"5"', add
label define cm05a_age_lbl 06 `"6"', add
label define cm05a_age_lbl 07 `"7"', add
label define cm05a_age_lbl 08 `"8"', add
label define cm05a_age_lbl 09 `"9"', add
label define cm05a_age_lbl 10 `"10"', add
label define cm05a_age_lbl 11 `"11"', add
label define cm05a_age_lbl 12 `"12"', add
label define cm05a_age_lbl 13 `"13"', add
label define cm05a_age_lbl 14 `"14"', add
label define cm05a_age_lbl 15 `"15"', add
label define cm05a_age_lbl 16 `"16"', add
label define cm05a_age_lbl 17 `"17"', add
label define cm05a_age_lbl 18 `"18"', add
label define cm05a_age_lbl 19 `"19"', add
label define cm05a_age_lbl 20 `"20"', add
label define cm05a_age_lbl 21 `"21"', add
label define cm05a_age_lbl 22 `"22"', add
label define cm05a_age_lbl 23 `"23"', add
label define cm05a_age_lbl 24 `"24"', add
label define cm05a_age_lbl 25 `"25"', add
label define cm05a_age_lbl 26 `"26"', add
label define cm05a_age_lbl 27 `"27"', add
label define cm05a_age_lbl 28 `"28"', add
label define cm05a_age_lbl 29 `"29"', add
label define cm05a_age_lbl 30 `"30"', add
label define cm05a_age_lbl 31 `"31"', add
label define cm05a_age_lbl 32 `"32"', add
label define cm05a_age_lbl 33 `"33"', add
label define cm05a_age_lbl 34 `"34"', add
label define cm05a_age_lbl 35 `"35"', add
label define cm05a_age_lbl 36 `"36"', add
label define cm05a_age_lbl 37 `"37"', add
label define cm05a_age_lbl 38 `"38"', add
label define cm05a_age_lbl 39 `"39"', add
label define cm05a_age_lbl 40 `"40"', add
label define cm05a_age_lbl 41 `"41"', add
label define cm05a_age_lbl 42 `"42"', add
label define cm05a_age_lbl 43 `"43"', add
label define cm05a_age_lbl 44 `"44"', add
label define cm05a_age_lbl 45 `"45"', add
label define cm05a_age_lbl 46 `"46"', add
label define cm05a_age_lbl 47 `"47"', add
label define cm05a_age_lbl 48 `"48"', add
label define cm05a_age_lbl 49 `"49"', add
label define cm05a_age_lbl 50 `"50"', add
label define cm05a_age_lbl 51 `"51"', add
label define cm05a_age_lbl 52 `"52"', add
label define cm05a_age_lbl 53 `"53"', add
label define cm05a_age_lbl 54 `"54"', add
label define cm05a_age_lbl 55 `"55"', add
label define cm05a_age_lbl 56 `"56"', add
label define cm05a_age_lbl 57 `"57"', add
label define cm05a_age_lbl 58 `"58"', add
label define cm05a_age_lbl 59 `"59"', add
label define cm05a_age_lbl 60 `"60"', add
label define cm05a_age_lbl 61 `"61"', add
label define cm05a_age_lbl 62 `"62"', add
label define cm05a_age_lbl 63 `"63"', add
label define cm05a_age_lbl 64 `"64"', add
label define cm05a_age_lbl 65 `"65"', add
label define cm05a_age_lbl 66 `"66"', add
label define cm05a_age_lbl 67 `"67"', add
label define cm05a_age_lbl 68 `"68"', add
label define cm05a_age_lbl 69 `"69"', add
label define cm05a_age_lbl 70 `"70"', add
label define cm05a_age_lbl 71 `"71"', add
label define cm05a_age_lbl 72 `"72"', add
label define cm05a_age_lbl 73 `"73"', add
label define cm05a_age_lbl 74 `"74"', add
label define cm05a_age_lbl 75 `"75"', add
label define cm05a_age_lbl 76 `"76"', add
label define cm05a_age_lbl 77 `"77"', add
label define cm05a_age_lbl 78 `"78"', add
label define cm05a_age_lbl 79 `"79"', add
label define cm05a_age_lbl 80 `"80"', add
label define cm05a_age_lbl 81 `"81"', add
label define cm05a_age_lbl 82 `"82"', add
label define cm05a_age_lbl 83 `"83"', add
label define cm05a_age_lbl 84 `"84"', add
label define cm05a_age_lbl 85 `"85"', add
label define cm05a_age_lbl 86 `"86"', add
label define cm05a_age_lbl 87 `"87"', add
label define cm05a_age_lbl 88 `"88"', add
label define cm05a_age_lbl 89 `"89"', add
label define cm05a_age_lbl 90 `"90"', add
label define cm05a_age_lbl 91 `"91"', add
label define cm05a_age_lbl 92 `"92"', add
label define cm05a_age_lbl 93 `"93"', add
label define cm05a_age_lbl 94 `"94"', add
label define cm05a_age_lbl 95 `"95"', add
label define cm05a_age_lbl 96 `"96"', add
label define cm05a_age_lbl 97 `"97"', add
label define cm05a_age_lbl 98 `"98+"', add
label values cm05a_age cm05a_age_lbl

label define cm05a_birthmo_lbl 01 `"1"'
label define cm05a_birthmo_lbl 02 `"2"', add
label define cm05a_birthmo_lbl 03 `"3"', add
label define cm05a_birthmo_lbl 04 `"4"', add
label define cm05a_birthmo_lbl 05 `"5"', add
label define cm05a_birthmo_lbl 06 `"6"', add
label define cm05a_birthmo_lbl 07 `"7"', add
label define cm05a_birthmo_lbl 08 `"8"', add
label define cm05a_birthmo_lbl 09 `"9"', add
label define cm05a_birthmo_lbl 10 `"10"', add
label define cm05a_birthmo_lbl 11 `"11"', add
label define cm05a_birthmo_lbl 12 `"12"', add
label values cm05a_birthmo cm05a_birthmo_lbl

label define cm05a_birthyr_lbl 1907 `"1907 or earlier"'
label define cm05a_birthyr_lbl 1908 `"1908"', add
label define cm05a_birthyr_lbl 1909 `"1909"', add
label define cm05a_birthyr_lbl 1910 `"1910"', add
label define cm05a_birthyr_lbl 1911 `"1911"', add
label define cm05a_birthyr_lbl 1912 `"1912"', add
label define cm05a_birthyr_lbl 1913 `"1913"', add
label define cm05a_birthyr_lbl 1914 `"1914"', add
label define cm05a_birthyr_lbl 1915 `"1915"', add
label define cm05a_birthyr_lbl 1916 `"1916"', add
label define cm05a_birthyr_lbl 1917 `"1917"', add
label define cm05a_birthyr_lbl 1918 `"1918"', add
label define cm05a_birthyr_lbl 1919 `"1919"', add
label define cm05a_birthyr_lbl 1920 `"1920"', add
label define cm05a_birthyr_lbl 1921 `"1921"', add
label define cm05a_birthyr_lbl 1922 `"1922"', add
label define cm05a_birthyr_lbl 1923 `"1923"', add
label define cm05a_birthyr_lbl 1924 `"1924"', add
label define cm05a_birthyr_lbl 1925 `"1925"', add
label define cm05a_birthyr_lbl 1926 `"1926"', add
label define cm05a_birthyr_lbl 1927 `"1927"', add
label define cm05a_birthyr_lbl 1928 `"1928"', add
label define cm05a_birthyr_lbl 1929 `"1929"', add
label define cm05a_birthyr_lbl 1930 `"1930"', add
label define cm05a_birthyr_lbl 1931 `"1931"', add
label define cm05a_birthyr_lbl 1932 `"1932"', add
label define cm05a_birthyr_lbl 1933 `"1933"', add
label define cm05a_birthyr_lbl 1934 `"1934"', add
label define cm05a_birthyr_lbl 1935 `"1935"', add
label define cm05a_birthyr_lbl 1936 `"1936"', add
label define cm05a_birthyr_lbl 1937 `"1937"', add
label define cm05a_birthyr_lbl 1938 `"1938"', add
label define cm05a_birthyr_lbl 1939 `"1939"', add
label define cm05a_birthyr_lbl 1940 `"1940"', add
label define cm05a_birthyr_lbl 1941 `"1941"', add
label define cm05a_birthyr_lbl 1942 `"1942"', add
label define cm05a_birthyr_lbl 1943 `"1943"', add
label define cm05a_birthyr_lbl 1944 `"1944"', add
label define cm05a_birthyr_lbl 1945 `"1945"', add
label define cm05a_birthyr_lbl 1946 `"1946"', add
label define cm05a_birthyr_lbl 1947 `"1947"', add
label define cm05a_birthyr_lbl 1948 `"1948"', add
label define cm05a_birthyr_lbl 1949 `"1949"', add
label define cm05a_birthyr_lbl 1950 `"1950"', add
label define cm05a_birthyr_lbl 1951 `"1951"', add
label define cm05a_birthyr_lbl 1952 `"1952"', add
label define cm05a_birthyr_lbl 1953 `"1953"', add
label define cm05a_birthyr_lbl 1954 `"1954"', add
label define cm05a_birthyr_lbl 1955 `"1955"', add
label define cm05a_birthyr_lbl 1956 `"1956"', add
label define cm05a_birthyr_lbl 1957 `"1957"', add
label define cm05a_birthyr_lbl 1958 `"1958"', add
label define cm05a_birthyr_lbl 1959 `"1959"', add
label define cm05a_birthyr_lbl 1960 `"1960"', add
label define cm05a_birthyr_lbl 1961 `"1961"', add
label define cm05a_birthyr_lbl 1962 `"1962"', add
label define cm05a_birthyr_lbl 1963 `"1963"', add
label define cm05a_birthyr_lbl 1964 `"1964"', add
label define cm05a_birthyr_lbl 1965 `"1965"', add
label define cm05a_birthyr_lbl 1966 `"1966"', add
label define cm05a_birthyr_lbl 1967 `"1967"', add
label define cm05a_birthyr_lbl 1968 `"1968"', add
label define cm05a_birthyr_lbl 1969 `"1969"', add
label define cm05a_birthyr_lbl 1970 `"1970"', add
label define cm05a_birthyr_lbl 1971 `"1971"', add
label define cm05a_birthyr_lbl 1972 `"1972"', add
label define cm05a_birthyr_lbl 1973 `"1973"', add
label define cm05a_birthyr_lbl 1974 `"1974"', add
label define cm05a_birthyr_lbl 1975 `"1975"', add
label define cm05a_birthyr_lbl 1976 `"1976"', add
label define cm05a_birthyr_lbl 1977 `"1977"', add
label define cm05a_birthyr_lbl 1978 `"1978"', add
label define cm05a_birthyr_lbl 1979 `"1979"', add
label define cm05a_birthyr_lbl 1980 `"1980"', add
label define cm05a_birthyr_lbl 1981 `"1981"', add
label define cm05a_birthyr_lbl 1982 `"1982"', add
label define cm05a_birthyr_lbl 1983 `"1983"', add
label define cm05a_birthyr_lbl 1984 `"1984"', add
label define cm05a_birthyr_lbl 1985 `"1985"', add
label define cm05a_birthyr_lbl 1986 `"1986"', add
label define cm05a_birthyr_lbl 1987 `"1987"', add
label define cm05a_birthyr_lbl 1988 `"1988"', add
label define cm05a_birthyr_lbl 1989 `"1989"', add
label define cm05a_birthyr_lbl 1990 `"1990"', add
label define cm05a_birthyr_lbl 1991 `"1991"', add
label define cm05a_birthyr_lbl 1992 `"1992"', add
label define cm05a_birthyr_lbl 1993 `"1993"', add
label define cm05a_birthyr_lbl 1994 `"1994"', add
label define cm05a_birthyr_lbl 1995 `"1995"', add
label define cm05a_birthyr_lbl 1996 `"1996"', add
label define cm05a_birthyr_lbl 1997 `"1997"', add
label define cm05a_birthyr_lbl 1998 `"1998"', add
label define cm05a_birthyr_lbl 1999 `"1999"', add
label define cm05a_birthyr_lbl 2000 `"2000"', add
label define cm05a_birthyr_lbl 2001 `"2001"', add
label define cm05a_birthyr_lbl 2002 `"2002"', add
label define cm05a_birthyr_lbl 2003 `"2003"', add
label define cm05a_birthyr_lbl 2004 `"2004"', add
label define cm05a_birthyr_lbl 2005 `"2005"', add
label values cm05a_birthyr cm05a_birthyr_lbl

label define cm05a_bplurb_lbl 1 `"Urban"'
label define cm05a_bplurb_lbl 2 `"Rural"', add
label define cm05a_bplurb_lbl 8 `"Unknown"', add
label values cm05a_bplurb cm05a_bplurb_lbl

label define cm05a_bpl_lbl 001 `"Ngaoundal"'
label define cm05a_bpl_lbl 002 `"Tibati"', add
label define cm05a_bpl_lbl 003 `"Galim Tignere"', add
label define cm05a_bpl_lbl 004 `"Mayo Baleo"', add
label define cm05a_bpl_lbl 005 `"Kontcha"', add
label define cm05a_bpl_lbl 006 `"Tignere"', add
label define cm05a_bpl_lbl 007 `"Bankim"', add
label define cm05a_bpl_lbl 008 `"Banyo"', add
label define cm05a_bpl_lbl 009 `"Mayo Darlé"', add
label define cm05a_bpl_lbl 010 `"Dir"', add
label define cm05a_bpl_lbl 011 `"Djohong"', add
label define cm05a_bpl_lbl 012 `"Ngaoui"', add
label define cm05a_bpl_lbl 013 `"Meiganga"', add
label define cm05a_bpl_lbl 014 `"Belel"', add
label define cm05a_bpl_lbl 015 `"Mbe"', add
label define cm05a_bpl_lbl 016 `"Ngaoundéré"', add
label define cm05a_bpl_lbl 017 `"Mbandjock"', add
label define cm05a_bpl_lbl 018 `"Minta"', add
label define cm05a_bpl_lbl 019 `"Nanga Eboko"', add
label define cm05a_bpl_lbl 020 `"Bibey"', add
label define cm05a_bpl_lbl 021 `"Lembe Yezoum"', add
label define cm05a_bpl_lbl 022 `"Nsem"', add
label define cm05a_bpl_lbl 023 `"Nkoteng"', add
label define cm05a_bpl_lbl 024 `"Ebebda"', add
label define cm05a_bpl_lbl 025 `"Elig Mfomo"', add
label define cm05a_bpl_lbl 026 `"Evodoula"', add
label define cm05a_bpl_lbl 027 `"Monatele"', add
label define cm05a_bpl_lbl 028 `"Obala"', add
label define cm05a_bpl_lbl 029 `"Batchenga"', add
label define cm05a_bpl_lbl 030 `"Okola"', add
label define cm05a_bpl_lbl 031 `"Lobo"', add
label define cm05a_bpl_lbl 032 `"SAA"', add
label define cm05a_bpl_lbl 033 `"Bafia"', add
label define cm05a_bpl_lbl 034 `"Bokito"', add
label define cm05a_bpl_lbl 035 `"Deuk"', add
label define cm05a_bpl_lbl 036 `"Makenene"', add
label define cm05a_bpl_lbl 037 `"Ndikinimiki"', add
label define cm05a_bpl_lbl 038 `"Nitoukou"', add
label define cm05a_bpl_lbl 039 `"Ombessa"', add
label define cm05a_bpl_lbl 040 `"Mbangassina"', add
label define cm05a_bpl_lbl 041 `"Ngambe Tikar"', add
label define cm05a_bpl_lbl 042 `"Ngoro"', add
label define cm05a_bpl_lbl 043 `"Ntui"', add
label define cm05a_bpl_lbl 044 `"Yoko"', add
label define cm05a_bpl_lbl 045 `"Awae"', add
label define cm05a_bpl_lbl 046 `"Assamba"', add
label define cm05a_bpl_lbl 047 `"Esse"', add
label define cm05a_bpl_lbl 048 `"Afanloum"', add
label define cm05a_bpl_lbl 049 `"Edzendouan"', add
label define cm05a_bpl_lbl 050 `"Mfou"', add
label define cm05a_bpl_lbl 051 `"Nkolafamba"', add
label define cm05a_bpl_lbl 052 `"Soa"', add
label define cm05a_bpl_lbl 053 `"Akono"', add
label define cm05a_bpl_lbl 054 `"Bikok"', add
label define cm05a_bpl_lbl 055 `"Mbankomo"', add
label define cm05a_bpl_lbl 056 `"Ngoumou"', add
label define cm05a_bpl_lbl 057 `"Yaounde I"', add
label define cm05a_bpl_lbl 058 `"Yaounde II"', add
label define cm05a_bpl_lbl 059 `"Yaounde III"', add
label define cm05a_bpl_lbl 060 `"Yaounde IV"', add
label define cm05a_bpl_lbl 061 `"Yaounde V"', add
label define cm05a_bpl_lbl 062 `"Yaounde VI"', add
label define cm05a_bpl_lbl 063 `"Bot Makak"', add
label define cm05a_bpl_lbl 064 `"Nguibassal"', add
label define cm05a_bpl_lbl 065 `"Dibang"', add
label define cm05a_bpl_lbl 066 `"Eseka"', add
label define cm05a_bpl_lbl 067 `"Makak"', add
label define cm05a_bpl_lbl 068 `"Bondjock"', add
label define cm05a_bpl_lbl 069 `"Matomb"', add
label define cm05a_bpl_lbl 070 `"Messondo"', add
label define cm05a_bpl_lbl 071 `"Biyouha"', add
label define cm05a_bpl_lbl 072 `"Ngok Mapubi"', add
label define cm05a_bpl_lbl 073 `"Akonolinga"', add
label define cm05a_bpl_lbl 074 `"Mengang"', add
label define cm05a_bpl_lbl 075 `"Ayos"', add
label define cm05a_bpl_lbl 076 `"Nyakombo"', add
label define cm05a_bpl_lbl 077 `"Endom"', add
label define cm05a_bpl_lbl 078 `"Dzeng"', add
label define cm05a_bpl_lbl 079 `"Mbalmayo"', add
label define cm05a_bpl_lbl 080 `"Akoeman"', add
label define cm05a_bpl_lbl 081 `"Mengueme"', add
label define cm05a_bpl_lbl 082 `"Nkolmetet"', add
label define cm05a_bpl_lbl 083 `"Ngomedzap"', add
label define cm05a_bpl_lbl 084 `"Gari Gombo"', add
label define cm05a_bpl_lbl 085 `"Moloundou"', add
label define cm05a_bpl_lbl 086 `"Salapoumbe"', add
label define cm05a_bpl_lbl 087 `"Yokadouma"', add
label define cm05a_bpl_lbl 088 `"Abong Mbang"', add
label define cm05a_bpl_lbl 089 `"Bebeng"', add
label define cm05a_bpl_lbl 090 `"Dja"', add
label define cm05a_bpl_lbl 091 `"Mboanz"', add
label define cm05a_bpl_lbl 092 `"Dimako"', add
label define cm05a_bpl_lbl 093 `"Doume"', add
label define cm05a_bpl_lbl 094 `"Doumaintang"', add
label define cm05a_bpl_lbl 095 `"Lomie"', add
label define cm05a_bpl_lbl 096 `"Messok"', add
label define cm05a_bpl_lbl 097 `"Messamena"', add
label define cm05a_bpl_lbl 098 `"Salalomo"', add
label define cm05a_bpl_lbl 099 `"Ngoyla"', add
label define cm05a_bpl_lbl 100 `"Nguelemedouka"', add
label define cm05a_bpl_lbl 101 `"Mboma"', add
label define cm05a_bpl_lbl 102 `"Batouri"', add
label define cm05a_bpl_lbl 103 `"Ndem-Nam"', add
label define cm05a_bpl_lbl 104 `"Kette"', add
label define cm05a_bpl_lbl 105 `"Mbotoro"', add
label define cm05a_bpl_lbl 106 `"Mbang"', add
label define cm05a_bpl_lbl 107 `"Ndelele"', add
label define cm05a_bpl_lbl 108 `"Bombe"', add
label define cm05a_bpl_lbl 109 `"Belabo"', add
label define cm05a_bpl_lbl 110 `"Bétaré-Oya"', add
label define cm05a_bpl_lbl 111 `"Ngoura"', add
label define cm05a_bpl_lbl 112 `"Bertoua"', add
label define cm05a_bpl_lbl 113 `"Diang"', add
label define cm05a_bpl_lbl 114 `"Garoua-Boulaï"', add
label define cm05a_bpl_lbl 115 `"Bogo"', add
label define cm05a_bpl_lbl 116 `"Gazawa"', add
label define cm05a_bpl_lbl 117 `"Maroua"', add
label define cm05a_bpl_lbl 118 `"Dargala"', add
label define cm05a_bpl_lbl 119 `"Ndoukoula"', add
label define cm05a_bpl_lbl 120 `"Meri"', add
label define cm05a_bpl_lbl 121 `"Pette"', add
label define cm05a_bpl_lbl 122 `"Blangoua"', add
label define cm05a_bpl_lbl 123 `"Darak"', add
label define cm05a_bpl_lbl 124 `"Fotokol"', add
label define cm05a_bpl_lbl 125 `"Goulfey"', add
label define cm05a_bpl_lbl 126 `"Hile-Halifa"', add
label define cm05a_bpl_lbl 127 `"Kousseri"', add
label define cm05a_bpl_lbl 128 `"Logone-Birni"', add
label define cm05a_bpl_lbl 129 `"Zina"', add
label define cm05a_bpl_lbl 130 `"Makari"', add
label define cm05a_bpl_lbl 131 `"Waza"', add
label define cm05a_bpl_lbl 132 `"Datcheka"', add
label define cm05a_bpl_lbl 133 `"Gobo"', add
label define cm05a_bpl_lbl 134 `"Guere"', add
label define cm05a_bpl_lbl 135 `"Kaïkaï"', add
label define cm05a_bpl_lbl 136 `"Kalfou"', add
label define cm05a_bpl_lbl 137 `"Kar-Hay"', add
label define cm05a_bpl_lbl 138 `"Maga"', add
label define cm05a_bpl_lbl 139 `"Tchatibali"', add
label define cm05a_bpl_lbl 140 `"Vele"', add
label define cm05a_bpl_lbl 141 `"Wina"', add
label define cm05a_bpl_lbl 142 `"Yagoua"', add
label define cm05a_bpl_lbl 143 `"Guidiguis"', add
label define cm05a_bpl_lbl 144 `"Kaele"', add
label define cm05a_bpl_lbl 145 `"Mindif"', add
label define cm05a_bpl_lbl 146 `"Moulvoudaye"', add
label define cm05a_bpl_lbl 147 `"Moutourwa"', add
label define cm05a_bpl_lbl 148 `"Porhi"', add
label define cm05a_bpl_lbl 149 `"Taïbong"', add
label define cm05a_bpl_lbl 150 `"Kolofata"', add
label define cm05a_bpl_lbl 151 `"Mora"', add
label define cm05a_bpl_lbl 152 `"Tokombere"', add
label define cm05a_bpl_lbl 153 `"Bourrha"', add
label define cm05a_bpl_lbl 154 `"Hina"', add
label define cm05a_bpl_lbl 155 `"Koza"', add
label define cm05a_bpl_lbl 156 `"Mayo-Moskota"', add
label define cm05a_bpl_lbl 157 `"Mogode"', add
label define cm05a_bpl_lbl 158 `"Mokolo"', add
label define cm05a_bpl_lbl 159 `"Soulede Roua"', add
label define cm05a_bpl_lbl 160 `"Bare-Bakem"', add
label define cm05a_bpl_lbl 161 `"Dibombari"', add
label define cm05a_bpl_lbl 162 `"Fiko"', add
label define cm05a_bpl_lbl 163 `"Loum"', add
label define cm05a_bpl_lbl 164 `"Manjo"', add
label define cm05a_bpl_lbl 165 `"Mbanga"', add
label define cm05a_bpl_lbl 166 `"Mombo"', add
label define cm05a_bpl_lbl 167 `"Melong"', add
label define cm05a_bpl_lbl 168 `"Njombe-Penja"', add
label define cm05a_bpl_lbl 169 `"Nkongsamba"', add
label define cm05a_bpl_lbl 170 `"Nlonako"', add
label define cm05a_bpl_lbl 171 `"Nkondjock"', add
label define cm05a_bpl_lbl 172 `"Nord-Makombe"', add
label define cm05a_bpl_lbl 173 `"Yabassi"', add
label define cm05a_bpl_lbl 174 `"Yingui"', add
label define cm05a_bpl_lbl 175 `"Dizangue"', add
label define cm05a_bpl_lbl 176 `"Edéa"', add
label define cm05a_bpl_lbl 177 `"Mouanko"', add
label define cm05a_bpl_lbl 178 `"Ndom"', add
label define cm05a_bpl_lbl 179 `"Nyanon"', add
label define cm05a_bpl_lbl 180 `"Ngambe"', add
label define cm05a_bpl_lbl 181 `"Massok-Songloulou"', add
label define cm05a_bpl_lbl 182 `"Pouma"', add
label define cm05a_bpl_lbl 183 `"Douala 1"', add
label define cm05a_bpl_lbl 184 `"Douala 2"', add
label define cm05a_bpl_lbl 185 `"Douala 3"', add
label define cm05a_bpl_lbl 186 `"Douala 4"', add
label define cm05a_bpl_lbl 187 `"Douala 5"', add
label define cm05a_bpl_lbl 188 `"Manoka"', add
label define cm05a_bpl_lbl 189 `"Bibemi"', add
label define cm05a_bpl_lbl 190 `"Dembo"', add
label define cm05a_bpl_lbl 191 `"Lagdo"', add
label define cm05a_bpl_lbl 192 `"Garoua"', add
label define cm05a_bpl_lbl 193 `"Bascheo"', add
label define cm05a_bpl_lbl 194 `"Demsa"', add
label define cm05a_bpl_lbl 195 `"Touroua"', add
label define cm05a_bpl_lbl 196 `"Pitoua"', add
label define cm05a_bpl_lbl 197 `"Tcheboa"', add
label define cm05a_bpl_lbl 198 `"Beka"', add
label define cm05a_bpl_lbl 199 `"Poli"', add
label define cm05a_bpl_lbl 200 `"Figuil"', add
label define cm05a_bpl_lbl 201 `"Guider"', add
label define cm05a_bpl_lbl 202 `"Mayo-Oulo"', add
label define cm05a_bpl_lbl 203 `"Rey-Bouba"', add
label define cm05a_bpl_lbl 204 `"Tcholliré"', add
label define cm05a_bpl_lbl 205 `"Madingring"', add
label define cm05a_bpl_lbl 206 `"Touboro"', add
label define cm05a_bpl_lbl 207 `"Belo"', add
label define cm05a_bpl_lbl 208 `"Bum"', add
label define cm05a_bpl_lbl 209 `"Fundong"', add
label define cm05a_bpl_lbl 210 `"Njinikom"', add
label define cm05a_bpl_lbl 211 `"Jakiri"', add
label define cm05a_bpl_lbl 212 `"Kumbo"', add
label define cm05a_bpl_lbl 213 `"Mbven"', add
label define cm05a_bpl_lbl 214 `"Noni"', add
label define cm05a_bpl_lbl 215 `"Oku"', add
label define cm05a_bpl_lbl 216 `"Ako"', add
label define cm05a_bpl_lbl 217 `"Misaje"', add
label define cm05a_bpl_lbl 218 `"Ndu"', add
label define cm05a_bpl_lbl 219 `"Nkambe"', add
label define cm05a_bpl_lbl 220 `"Nwa"', add
label define cm05a_bpl_lbl 221 `"Fungom"', add
label define cm05a_bpl_lbl 222 `"Furu-Awa"', add
label define cm05a_bpl_lbl 223 `"Menchum-Valley"', add
label define cm05a_bpl_lbl 224 `"Wum"', add
label define cm05a_bpl_lbl 225 `"Bafut"', add
label define cm05a_bpl_lbl 226 `"Bali"', add
label define cm05a_bpl_lbl 227 `"bamenda"', add
label define cm05a_bpl_lbl 228 `"Santa"', add
label define cm05a_bpl_lbl 229 `"Tubah"', add
label define cm05a_bpl_lbl 230 `"Batibo"', add
label define cm05a_bpl_lbl 231 `"Mbengwi"', add
label define cm05a_bpl_lbl 232 `"Ngie"', add
label define cm05a_bpl_lbl 233 `"Njikwa"', add
label define cm05a_bpl_lbl 234 `"Widikum-Menka"', add
label define cm05a_bpl_lbl 235 `"Babessi"', add
label define cm05a_bpl_lbl 236 `"Balikumbat"', add
label define cm05a_bpl_lbl 237 `"Ndop"', add
label define cm05a_bpl_lbl 238 `"Babadjou"', add
label define cm05a_bpl_lbl 239 `"Batcham"', add
label define cm05a_bpl_lbl 240 `"Galim"', add
label define cm05a_bpl_lbl 241 `"Mbouda"', add
label define cm05a_bpl_lbl 242 `"Bafang"', add
label define cm05a_bpl_lbl 243 `"Bakou"', add
label define cm05a_bpl_lbl 244 `"Bana"', add
label define cm05a_bpl_lbl 245 `"Bandja"', add
label define cm05a_bpl_lbl 246 `"Kekem"', add
label define cm05a_bpl_lbl 247 `"Banwa"', add
label define cm05a_bpl_lbl 248 `"Baham"', add
label define cm05a_bpl_lbl 249 `"Bamendjou"', add
label define cm05a_bpl_lbl 250 `"Batie"', add
label define cm05a_bpl_lbl 251 `"Bangou"', add
label define cm05a_bpl_lbl 252 `"Bayangam"', add
label define cm05a_bpl_lbl 253 `"Poumougne"', add
label define cm05a_bpl_lbl 254 `"Djebem"', add
label define cm05a_bpl_lbl 255 `"Dschang"', add
label define cm05a_bpl_lbl 256 `"Fokoue"', add
label define cm05a_bpl_lbl 257 `"Nkong-Ni"', add
label define cm05a_bpl_lbl 258 `"Penka-Michel"', add
label define cm05a_bpl_lbl 259 `"Santchou"', add
label define cm05a_bpl_lbl 260 `"Bafoussam"', add
label define cm05a_bpl_lbl 261 `"Baleng"', add
label define cm05a_bpl_lbl 262 `"Bamougoum"', add
label define cm05a_bpl_lbl 263 `"Bangangte"', add
label define cm05a_bpl_lbl 264 `"Bassamba"', add
label define cm05a_bpl_lbl 265 `"Bazou"', add
label define cm05a_bpl_lbl 266 `"Tonga"', add
label define cm05a_bpl_lbl 267 `"Bangourain"', add
label define cm05a_bpl_lbl 268 `"Foumban"', add
label define cm05a_bpl_lbl 269 `"Foumbot"', add
label define cm05a_bpl_lbl 270 `"Kouoptamo"', add
label define cm05a_bpl_lbl 271 `"Koutaba"', add
label define cm05a_bpl_lbl 272 `"Magba"', add
label define cm05a_bpl_lbl 273 `"Malentouen"', add
label define cm05a_bpl_lbl 274 `"Massangan"', add
label define cm05a_bpl_lbl 275 `"Bengbis"', add
label define cm05a_bpl_lbl 276 `"Djoum"', add
label define cm05a_bpl_lbl 277 `"Meyomessala"', add
label define cm05a_bpl_lbl 278 `"Mintom"', add
label define cm05a_bpl_lbl 279 `"Oveng"', add
label define cm05a_bpl_lbl 280 `"Sangmelima"', add
label define cm05a_bpl_lbl 281 `"Zoetele"', add
label define cm05a_bpl_lbl 282 `"Biwong-Bane"', add
label define cm05a_bpl_lbl 283 `"Ebolowa"', add
label define cm05a_bpl_lbl 284 `"Mengong"', add
label define cm05a_bpl_lbl 285 `"Mvangan"', add
label define cm05a_bpl_lbl 286 `"Ngoulemakong"', add
label define cm05a_bpl_lbl 287 `"Akom II"', add
label define cm05a_bpl_lbl 288 `"Niete"', add
label define cm05a_bpl_lbl 289 `"Bipindi"', add
label define cm05a_bpl_lbl 290 `"Campo"', add
label define cm05a_bpl_lbl 291 `"Kribi"', add
label define cm05a_bpl_lbl 292 `"Lolodorf"', add
label define cm05a_bpl_lbl 293 `"Mvengue"', add
label define cm05a_bpl_lbl 294 `"Ambam"', add
label define cm05a_bpl_lbl 295 `"Ma'an"', add
label define cm05a_bpl_lbl 296 `"Olamze"', add
label define cm05a_bpl_lbl 297 `"Buea"', add
label define cm05a_bpl_lbl 298 `"West-Coast"', add
label define cm05a_bpl_lbl 299 `"Limbe"', add
label define cm05a_bpl_lbl 300 `"Muyuka"', add
label define cm05a_bpl_lbl 301 `"Tiko"', add
label define cm05a_bpl_lbl 302 `"Banguem"', add
label define cm05a_bpl_lbl 303 `"Nguti"', add
label define cm05a_bpl_lbl 304 `"Tombel"', add
label define cm05a_bpl_lbl 305 `"Alou"', add
label define cm05a_bpl_lbl 306 `"Fontem"', add
label define cm05a_bpl_lbl 307 `"Wabane"', add
label define cm05a_bpl_lbl 308 `"Akwaya"', add
label define cm05a_bpl_lbl 309 `"Eyumodjock"', add
label define cm05a_bpl_lbl 310 `"Mamfe"', add
label define cm05a_bpl_lbl 311 `"Upper Bayang"', add
label define cm05a_bpl_lbl 312 `"Kumba"', add
label define cm05a_bpl_lbl 313 `"Konye"', add
label define cm05a_bpl_lbl 314 `"Mbonge"', add
label define cm05a_bpl_lbl 315 `"Bamusso"', add
label define cm05a_bpl_lbl 316 `"Ekondo Titi"', add
label define cm05a_bpl_lbl 317 `"Dikome-Balue"', add
label define cm05a_bpl_lbl 318 `"Idabato"', add
label define cm05a_bpl_lbl 319 `"Isanguele"', add
label define cm05a_bpl_lbl 320 `"Kombo Abedimo"', add
label define cm05a_bpl_lbl 321 `"Kombo-Itindi"', add
label define cm05a_bpl_lbl 322 `"Mumdemba"', add
label define cm05a_bpl_lbl 323 `"Toko"', add
label define cm05a_bpl_lbl 399 `"Unknown arrondissement"', add
label define cm05a_bpl_lbl 999 `"Abroad"', add
label values cm05a_bpl cm05a_bpl_lbl

label define cm05a_bplctry_lbl 001 `"Cameroon"'
label define cm05a_bplctry_lbl 404 `"Morocco"', add
label define cm05a_bplctry_lbl 406 `"Tunisia"', add
label define cm05a_bplctry_lbl 407 `"Benin"', add
label define cm05a_bplctry_lbl 408 `"Burkina Faso"', add
label define cm05a_bplctry_lbl 410 `"Ivory Coast"', add
label define cm05a_bplctry_lbl 411 `"Gambia"', add
label define cm05a_bplctry_lbl 412 `"Ghana"', add
label define cm05a_bplctry_lbl 413 `"Guinea"', add
label define cm05a_bplctry_lbl 415 `"Liberia"', add
label define cm05a_bplctry_lbl 416 `"Mali"', add
label define cm05a_bplctry_lbl 418 `"Niger"', add
label define cm05a_bplctry_lbl 419 `"Nigeria"', add
label define cm05a_bplctry_lbl 420 `"Senegal"', add
label define cm05a_bplctry_lbl 421 `"Sierra Leone"', add
label define cm05a_bplctry_lbl 422 `"Togo"', add
label define cm05a_bplctry_lbl 423 `"Burundi"', add
label define cm05a_bplctry_lbl 434 `"Rwanda"', add
label define cm05a_bplctry_lbl 442 `"Congo"', add
label define cm05a_bplctry_lbl 443 `"Democratic Republic of Congo"', add
label define cm05a_bplctry_lbl 444 `"Gabon"', add
label define cm05a_bplctry_lbl 445 `"Equatorial Guinea"', add
label define cm05a_bplctry_lbl 446 `"Central African Republic"', add
label define cm05a_bplctry_lbl 448 `"Chad"', add
label define cm05a_bplctry_lbl 449 `"South Africa"', add
label define cm05a_bplctry_lbl 499 `"Other Africa"', add
label define cm05a_bplctry_lbl 501 `"Canada"', add
label define cm05a_bplctry_lbl 502 `"USA"', add
label define cm05a_bplctry_lbl 511 `"Grenada"', add
label define cm05a_bplctry_lbl 599 `"Other Americas"', add
label define cm05a_bplctry_lbl 601 `"Afganistan"', add
label define cm05a_bplctry_lbl 602 `"Saudi Arabia"', add
label define cm05a_bplctry_lbl 609 `"China"', add
label define cm05a_bplctry_lbl 611 `"North Korea"', add
label define cm05a_bplctry_lbl 615 `"India"', add
label define cm05a_bplctry_lbl 621 `"Jordan"', add
label define cm05a_bplctry_lbl 626 `"Lebanon"', add
label define cm05a_bplctry_lbl 699 `"Other Asia"', add
label define cm05a_bplctry_lbl 702 `"Germany"', add
label define cm05a_bplctry_lbl 704 `"England"', add
label define cm05a_bplctry_lbl 708 `"Belgium"', add
label define cm05a_bplctry_lbl 715 `"Spain"', add
label define cm05a_bplctry_lbl 718 `"France"', add
label define cm05a_bplctry_lbl 720 `"Greece"', add
label define cm05a_bplctry_lbl 725 `"Italy"', add
label define cm05a_bplctry_lbl 739 `"Russia"', add
label define cm05a_bplctry_lbl 745 `"Switzerland"', add
label define cm05a_bplctry_lbl 799 `"Other Europe"', add
label define cm05a_bplctry_lbl 899 `"Oceania"', add
label define cm05a_bplctry_lbl 999 `"Unknown foreign country"', add
label values cm05a_bplctry cm05a_bplctry_lbl

label define cm05a_marst_lbl 0 `"Single"'
label define cm05a_marst_lbl 1 `"Man married to 1 spouse or woman married to 1 man having 1 spouse"', add
label define cm05a_marst_lbl 2 `"Man married to 2 women or woman married to 1 man having 2 spouses"', add
label define cm05a_marst_lbl 3 `"Man married to 3 women or woman married to 1 man having 3 spouses"', add
label define cm05a_marst_lbl 4 `"Man married to 4 women or woman married to 1 man having 4 spouses"', add
label define cm05a_marst_lbl 5 `"Man married to 5 or more women or woman married to 1 man having 5 or more wives"', add
label define cm05a_marst_lbl 6 `"Cohabitation"', add
label define cm05a_marst_lbl 7 `"Separated"', add
label define cm05a_marst_lbl 8 `"Divorced"', add
label define cm05a_marst_lbl 9 `"Widowed"', add
label values cm05a_marst cm05a_marst_lbl

label define cm05a_resident_lbl 1 `"Present resident"'
label define cm05a_resident_lbl 2 `"Absent resident"', add
label define cm05a_resident_lbl 3 `"Visitor"', add
label values cm05a_resident cm05a_resident_lbl

label define cm05a_visurb_lbl 1 `"Urban"'
label define cm05a_visurb_lbl 2 `"Rural"', add
label define cm05a_visurb_lbl 9 `"NIU (not in universe)"', add
label values cm05a_visurb cm05a_visurb_lbl

label define cm05a_visures_lbl 001 `"Ngaoundal"'
label define cm05a_visures_lbl 002 `"Tibati"', add
label define cm05a_visures_lbl 003 `"Galim Tignere"', add
label define cm05a_visures_lbl 004 `"Mayo Baleo and Kontcha"', add
label define cm05a_visures_lbl 006 `"Tignere"', add
label define cm05a_visures_lbl 007 `"Bankim"', add
label define cm05a_visures_lbl 008 `"Banyo and Mayo Darlé"', add
label define cm05a_visures_lbl 010 `"Dir"', add
label define cm05a_visures_lbl 011 `"Djohong and Ngaoui"', add
label define cm05a_visures_lbl 013 `"Meiganga"', add
label define cm05a_visures_lbl 014 `"Belel"', add
label define cm05a_visures_lbl 015 `"Mbe"', add
label define cm05a_visures_lbl 016 `"Ngaoundéré"', add
label define cm05a_visures_lbl 017 `"Mbandjock"', add
label define cm05a_visures_lbl 018 `"Minta"', add
label define cm05a_visures_lbl 019 `"Nanga Eboko"', add
label define cm05a_visures_lbl 020 `"Bibey"', add
label define cm05a_visures_lbl 021 `"Lembe Yezoum and Nsem"', add
label define cm05a_visures_lbl 023 `"Nkoteng"', add
label define cm05a_visures_lbl 024 `"Ebebda"', add
label define cm05a_visures_lbl 025 `"Elig Mfomo"', add
label define cm05a_visures_lbl 026 `"Evodoula"', add
label define cm05a_visures_lbl 027 `"Monatele"', add
label define cm05a_visures_lbl 028 `"Obala"', add
label define cm05a_visures_lbl 029 `"Batchenga and Lobo"', add
label define cm05a_visures_lbl 030 `"Okola"', add
label define cm05a_visures_lbl 032 `"SAA"', add
label define cm05a_visures_lbl 033 `"Bafia"', add
label define cm05a_visures_lbl 034 `"Bokito"', add
label define cm05a_visures_lbl 037 `"Ndikinimiki"', add
label define cm05a_visures_lbl 038 `"Deuk, Makenene, and Nitoukou"', add
label define cm05a_visures_lbl 039 `"Ombessa"', add
label define cm05a_visures_lbl 040 `"Mbangassina"', add
label define cm05a_visures_lbl 041 `"Ngambe Tikar"', add
label define cm05a_visures_lbl 042 `"Ngoro"', add
label define cm05a_visures_lbl 043 `"Ntui"', add
label define cm05a_visures_lbl 044 `"Yoko"', add
label define cm05a_visures_lbl 045 `"Awae and Assamba"', add
label define cm05a_visures_lbl 047 `"Esse, Afanloum, and Edzendouan"', add
label define cm05a_visures_lbl 050 `"Mfou"', add
label define cm05a_visures_lbl 051 `"Nkolafamba"', add
label define cm05a_visures_lbl 052 `"Soa"', add
label define cm05a_visures_lbl 053 `"Akono"', add
label define cm05a_visures_lbl 054 `"Bikok"', add
label define cm05a_visures_lbl 055 `"Mbankomo"', add
label define cm05a_visures_lbl 056 `"Ngoumou"', add
label define cm05a_visures_lbl 057 `"Yaounde I"', add
label define cm05a_visures_lbl 058 `"Yaounde II"', add
label define cm05a_visures_lbl 059 `"Yaounde III"', add
label define cm05a_visures_lbl 060 `"Yaounde IV"', add
label define cm05a_visures_lbl 061 `"Yaounde V"', add
label define cm05a_visures_lbl 062 `"Yaounde VI"', add
label define cm05a_visures_lbl 063 `"Bot Makak"', add
label define cm05a_visures_lbl 066 `"Eseka"', add
label define cm05a_visures_lbl 067 `"Makak"', add
label define cm05a_visures_lbl 068 `"Other arrondissement in Nyong et Kelle department"', add
label define cm05a_visures_lbl 069 `"Matomb"', add
label define cm05a_visures_lbl 073 `"Akonolinga and Mengang"', add
label define cm05a_visures_lbl 075 `"Ayos"', add
label define cm05a_visures_lbl 076 `"Nyakombo"', add
label define cm05a_visures_lbl 077 `"Endom"', add
label define cm05a_visures_lbl 078 `"Dzeng"', add
label define cm05a_visures_lbl 079 `"Mbalmayo"', add
label define cm05a_visures_lbl 080 `"Akoeman, Mengueme and Nkolmetet"', add
label define cm05a_visures_lbl 083 `"Ngomedzap"', add
label define cm05a_visures_lbl 084 `"Gari Gombo"', add
label define cm05a_visures_lbl 085 `"Moloundou"', add
label define cm05a_visures_lbl 086 `"Salapoumbe"', add
label define cm05a_visures_lbl 087 `"Yokadouma"', add
label define cm05a_visures_lbl 088 `"Abong Mbang"', add
label define cm05a_visures_lbl 092 `"Dimako"', add
label define cm05a_visures_lbl 093 `"Doume"', add
label define cm05a_visures_lbl 094 `"Other arrondissement in Haut Nyong department"', add
label define cm05a_visures_lbl 095 `"Lomie"', add
label define cm05a_visures_lbl 097 `"Messamena"', add
label define cm05a_visures_lbl 102 `"Batouri"', add
label define cm05a_visures_lbl 104 `"Kette"', add
label define cm05a_visures_lbl 106 `"Mbang"', add
label define cm05a_visures_lbl 107 `"Ndelele"', add
label define cm05a_visures_lbl 108 `"Other arrondissement in Kadey departemnt"', add
label define cm05a_visures_lbl 109 `"Belabo"', add
label define cm05a_visures_lbl 110 `"Bétaré-Oya"', add
label define cm05a_visures_lbl 111 `"Ngoura"', add
label define cm05a_visures_lbl 112 `"Bertoua"', add
label define cm05a_visures_lbl 114 `"Garoua-Boulaï and Diang"', add
label define cm05a_visures_lbl 115 `"Bogo"', add
label define cm05a_visures_lbl 117 `"Maroua"', add
label define cm05a_visures_lbl 118 `"Dargala"', add
label define cm05a_visures_lbl 120 `"Meri"', add
label define cm05a_visures_lbl 121 `"Gazawa, Ndoukoula, and Pette"', add
label define cm05a_visures_lbl 122 `"Blangoua"', add
label define cm05a_visures_lbl 125 `"Goulfey"', add
label define cm05a_visures_lbl 127 `"Kousseri"', add
label define cm05a_visures_lbl 128 `"Logone-Birni"', add
label define cm05a_visures_lbl 130 `"Makari"', add
label define cm05a_visures_lbl 131 `"Other arrondissement in Logone et Chari department"', add
label define cm05a_visures_lbl 133 `"Gobo"', add
label define cm05a_visures_lbl 134 `"Guere"', add
label define cm05a_visures_lbl 135 `"Kaïkaï"', add
label define cm05a_visures_lbl 137 `"Kar-Hay"', add
label define cm05a_visures_lbl 138 `"Maga"', add
label define cm05a_visures_lbl 139 `"Datcheka, Kalfou, and Tchatibali"', add
label define cm05a_visures_lbl 140 `"Vele"', add
label define cm05a_visures_lbl 141 `"Wina"', add
label define cm05a_visures_lbl 142 `"Yagoua"', add
label define cm05a_visures_lbl 143 `"Guidiguis"', add
label define cm05a_visures_lbl 144 `"Kaele"', add
label define cm05a_visures_lbl 145 `"Mindif"', add
label define cm05a_visures_lbl 146 `"Moulvoudaye"', add
label define cm05a_visures_lbl 147 `"Moutourwa"', add
label define cm05a_visures_lbl 148 `"Porhi and Taïbong"', add
label define cm05a_visures_lbl 150 `"Kolofata"', add
label define cm05a_visures_lbl 151 `"Mora"', add
label define cm05a_visures_lbl 152 `"Tokombere"', add
label define cm05a_visures_lbl 153 `"Bourrha and Mayo-Moskota"', add
label define cm05a_visures_lbl 154 `"Hina"', add
label define cm05a_visures_lbl 155 `"Koza"', add
label define cm05a_visures_lbl 157 `"Mogode"', add
label define cm05a_visures_lbl 158 `"Mokolo"', add
label define cm05a_visures_lbl 159 `"Soulede Roua"', add
label define cm05a_visures_lbl 160 `"Bare-Bakem"', add
label define cm05a_visures_lbl 161 `"Dibombari"', add
label define cm05a_visures_lbl 162 `"Fiko"', add
label define cm05a_visures_lbl 163 `"Loum"', add
label define cm05a_visures_lbl 164 `"Manjo"', add
label define cm05a_visures_lbl 165 `"Mbanga and Mombo"', add
label define cm05a_visures_lbl 167 `"Melong"', add
label define cm05a_visures_lbl 168 `"Njombe-Penja"', add
label define cm05a_visures_lbl 169 `"Nkongsamba and Nlonako"', add
label define cm05a_visures_lbl 171 `"Nkam Department"', add
label define cm05a_visures_lbl 175 `"Dizangue"', add
label define cm05a_visures_lbl 176 `"Edéa"', add
label define cm05a_visures_lbl 178 `"Ndom"', add
label define cm05a_visures_lbl 180 `"Ngambe"', add
label define cm05a_visures_lbl 181 `"Other arrondissement in Sanaga Maritime department"', add
label define cm05a_visures_lbl 182 `"Pouma"', add
label define cm05a_visures_lbl 183 `"Douala 1"', add
label define cm05a_visures_lbl 184 `"Douala 2"', add
label define cm05a_visures_lbl 185 `"Douala 3"', add
label define cm05a_visures_lbl 186 `"Douala 4"', add
label define cm05a_visures_lbl 187 `"Douala 5 and Manoka"', add
label define cm05a_visures_lbl 189 `"Bibemi"', add
label define cm05a_visures_lbl 191 `"Lagdo"', add
label define cm05a_visures_lbl 192 `"Garoua"', add
label define cm05a_visures_lbl 195 `"Other arrondissement in Benoue department"', add
label define cm05a_visures_lbl 196 `"Pitoua"', add
label define cm05a_visures_lbl 197 `"Tcheboa"', add
label define cm05a_visures_lbl 199 `"Faro department"', add
label define cm05a_visures_lbl 200 `"Figuil"', add
label define cm05a_visures_lbl 201 `"Guider"', add
label define cm05a_visures_lbl 202 `"Mayo-Oulo"', add
label define cm05a_visures_lbl 203 `"Rey-Bouba"', add
label define cm05a_visures_lbl 204 `"Tcholliré"', add
label define cm05a_visures_lbl 205 `"Madingring"', add
label define cm05a_visures_lbl 206 `"Touboro"', add
label define cm05a_visures_lbl 207 `"Belo and Bum"', add
label define cm05a_visures_lbl 209 `"Fundong"', add
label define cm05a_visures_lbl 210 `"Njinikom"', add
label define cm05a_visures_lbl 211 `"Jakiri"', add
label define cm05a_visures_lbl 212 `"Kumbo"', add
label define cm05a_visures_lbl 213 `"Mbven"', add
label define cm05a_visures_lbl 214 `"Noni"', add
label define cm05a_visures_lbl 215 `"Oku"', add
label define cm05a_visures_lbl 216 `"Ako"', add
label define cm05a_visures_lbl 217 `"Misaje"', add
label define cm05a_visures_lbl 218 `"Ndu"', add
label define cm05a_visures_lbl 219 `"Nkambe"', add
label define cm05a_visures_lbl 220 `"Nwa"', add
label define cm05a_visures_lbl 221 `"Fungom and Furu-Awa"', add
label define cm05a_visures_lbl 223 `"Menchum-Valley"', add
label define cm05a_visures_lbl 224 `"Wum"', add
label define cm05a_visures_lbl 225 `"Bafut"', add
label define cm05a_visures_lbl 226 `"Bali"', add
label define cm05a_visures_lbl 227 `"Bamenda"', add
label define cm05a_visures_lbl 228 `"Santa"', add
label define cm05a_visures_lbl 229 `"Tubah"', add
label define cm05a_visures_lbl 230 `"Batibo"', add
label define cm05a_visures_lbl 231 `"Mbengwi and Ngie"', add
label define cm05a_visures_lbl 233 `"Njikwa"', add
label define cm05a_visures_lbl 234 `"Widikum-Menka"', add
label define cm05a_visures_lbl 235 `"Babessi"', add
label define cm05a_visures_lbl 236 `"Balikumbat"', add
label define cm05a_visures_lbl 237 `"Ndop"', add
label define cm05a_visures_lbl 239 `"Batcham and Babadjou"', add
label define cm05a_visures_lbl 240 `"Galim"', add
label define cm05a_visures_lbl 241 `"Mbouda"', add
label define cm05a_visures_lbl 242 `"Bafang"', add
label define cm05a_visures_lbl 245 `"Bandja"', add
label define cm05a_visures_lbl 246 `"Kekem"', add
label define cm05a_visures_lbl 247 `"Other arrondissement in Haut Nkam department"', add
label define cm05a_visures_lbl 248 `"Baham"', add
label define cm05a_visures_lbl 249 `"Bamendjou"', add
label define cm05a_visures_lbl 250 `"Batie and Bangou"', add
label define cm05a_visures_lbl 252 `"Bayangam and Djebem"', add
label define cm05a_visures_lbl 253 `"Poumougne"', add
label define cm05a_visures_lbl 255 `"Dschang"', add
label define cm05a_visures_lbl 256 `"Fokoue"', add
label define cm05a_visures_lbl 257 `"Nkong-Ni"', add
label define cm05a_visures_lbl 258 `"Penka-Michel and Santchou"', add
label define cm05a_visures_lbl 260 `"Bafoussam"', add
label define cm05a_visures_lbl 261 `"Baleng"', add
label define cm05a_visures_lbl 262 `"Bamougoum"', add
label define cm05a_visures_lbl 263 `"Bangangte"', add
label define cm05a_visures_lbl 265 `"Other arrondissement in Nde department"', add
label define cm05a_visures_lbl 267 `"Bangourain"', add
label define cm05a_visures_lbl 268 `"Foumban"', add
label define cm05a_visures_lbl 269 `"Foumbot"', add
label define cm05a_visures_lbl 270 `"Kouoptamo"', add
label define cm05a_visures_lbl 271 `"Koutaba"', add
label define cm05a_visures_lbl 272 `"Magba"', add
label define cm05a_visures_lbl 273 `"Malentouen"', add
label define cm05a_visures_lbl 274 `"Massangan"', add
label define cm05a_visures_lbl 275 `"Bengbis"', add
label define cm05a_visures_lbl 276 `"Djoum"', add
label define cm05a_visures_lbl 277 `"Meyomessala"', add
label define cm05a_visures_lbl 278 `"Mintom"', add
label define cm05a_visures_lbl 279 `"Oveng"', add
label define cm05a_visures_lbl 280 `"Sangmelima"', add
label define cm05a_visures_lbl 281 `"Zoetele"', add
label define cm05a_visures_lbl 282 `"Biwong-Bane"', add
label define cm05a_visures_lbl 283 `"Ebolowa"', add
label define cm05a_visures_lbl 285 `"Mvangan and Mengong"', add
label define cm05a_visures_lbl 286 `"Ngoulemakong"', add
label define cm05a_visures_lbl 287 `"Akom II"', add
label define cm05a_visures_lbl 288 `"Niete and Campo"', add
label define cm05a_visures_lbl 289 `"Bipindi"', add
label define cm05a_visures_lbl 291 `"Kribi"', add
label define cm05a_visures_lbl 292 `"Lolodorf"', add
label define cm05a_visures_lbl 293 `"Mvengue"', add
label define cm05a_visures_lbl 294 `"Ambam"', add
label define cm05a_visures_lbl 295 `"Ma'an"', add
label define cm05a_visures_lbl 296 `"Olamze"', add
label define cm05a_visures_lbl 297 `"Buea"', add
label define cm05a_visures_lbl 299 `"Limbe and West-Coast"', add
label define cm05a_visures_lbl 300 `"Muyuka"', add
label define cm05a_visures_lbl 301 `"Tiko"', add
label define cm05a_visures_lbl 302 `"Banguem"', add
label define cm05a_visures_lbl 303 `"Nguti"', add
label define cm05a_visures_lbl 304 `"Tombel"', add
label define cm05a_visures_lbl 305 `"Alou"', add
label define cm05a_visures_lbl 306 `"Fontem"', add
label define cm05a_visures_lbl 307 `"Wabane"', add
label define cm05a_visures_lbl 308 `"Akwaya"', add
label define cm05a_visures_lbl 309 `"Eyumodjock"', add
label define cm05a_visures_lbl 310 `"Mamfe"', add
label define cm05a_visures_lbl 311 `"Upper Bayang"', add
label define cm05a_visures_lbl 312 `"Kumba"', add
label define cm05a_visures_lbl 313 `"Konye"', add
label define cm05a_visures_lbl 314 `"Mbonge"', add
label define cm05a_visures_lbl 316 `"Ekondo Titi"', add
label define cm05a_visures_lbl 322 `"Mumdemba"', add
label define cm05a_visures_lbl 323 `"Other arrondissement in Ndian department"', add
label define cm05a_visures_lbl 399 `"Cameroon, unknown arrondissement"', add
label define cm05a_visures_lbl 419 `"Nigeria"', add
label define cm05a_visures_lbl 444 `"Gabon"', add
label define cm05a_visures_lbl 446 `"Central African Republic"', add
label define cm05a_visures_lbl 448 `"Chad"', add
label define cm05a_visures_lbl 499 `"Other Africa"', add
label define cm05a_visures_lbl 718 `"France"', add
label define cm05a_visures_lbl 799 `"Other Europe"', add
label define cm05a_visures_lbl 899 `"Other Abroad"', add
label define cm05a_visures_lbl 999 `"NIU (not in universe)"', add
label values cm05a_visures cm05a_visures_lbl

label define cm05a_urban5yr_lbl 1 `"Urban"'
label define cm05a_urban5yr_lbl 2 `"Rural"', add
label define cm05a_urban5yr_lbl 8 `"Unknown"', add
label define cm05a_urban5yr_lbl 9 `"NIU (not in universe)"', add
label values cm05a_urban5yr cm05a_urban5yr_lbl

label define cm05a_arrnd5yr_lbl 001 `"Ngaoundal"'
label define cm05a_arrnd5yr_lbl 002 `"Tibati"', add
label define cm05a_arrnd5yr_lbl 003 `"Galim Tignere"', add
label define cm05a_arrnd5yr_lbl 004 `"Mayo Baleo"', add
label define cm05a_arrnd5yr_lbl 005 `"Kontcha"', add
label define cm05a_arrnd5yr_lbl 006 `"Tignere"', add
label define cm05a_arrnd5yr_lbl 007 `"Bankim"', add
label define cm05a_arrnd5yr_lbl 008 `"Banyo"', add
label define cm05a_arrnd5yr_lbl 009 `"Mayo Darlé"', add
label define cm05a_arrnd5yr_lbl 010 `"Dir"', add
label define cm05a_arrnd5yr_lbl 011 `"Djohong"', add
label define cm05a_arrnd5yr_lbl 012 `"Ngaoui"', add
label define cm05a_arrnd5yr_lbl 013 `"Meiganga"', add
label define cm05a_arrnd5yr_lbl 014 `"Belel"', add
label define cm05a_arrnd5yr_lbl 015 `"Mbe"', add
label define cm05a_arrnd5yr_lbl 016 `"Ngaoundéré"', add
label define cm05a_arrnd5yr_lbl 017 `"Mbandjock"', add
label define cm05a_arrnd5yr_lbl 018 `"Minta"', add
label define cm05a_arrnd5yr_lbl 019 `"Nanga Eboko"', add
label define cm05a_arrnd5yr_lbl 020 `"Bibey"', add
label define cm05a_arrnd5yr_lbl 021 `"Lembe Yezoum"', add
label define cm05a_arrnd5yr_lbl 022 `"Nsem"', add
label define cm05a_arrnd5yr_lbl 023 `"Nkoteng"', add
label define cm05a_arrnd5yr_lbl 024 `"Ebebda"', add
label define cm05a_arrnd5yr_lbl 025 `"Elig Mfomo"', add
label define cm05a_arrnd5yr_lbl 026 `"Evodoula"', add
label define cm05a_arrnd5yr_lbl 027 `"Monatele"', add
label define cm05a_arrnd5yr_lbl 028 `"Obala"', add
label define cm05a_arrnd5yr_lbl 029 `"Batchenga"', add
label define cm05a_arrnd5yr_lbl 030 `"Okola"', add
label define cm05a_arrnd5yr_lbl 031 `"Lobo"', add
label define cm05a_arrnd5yr_lbl 032 `"SAA"', add
label define cm05a_arrnd5yr_lbl 033 `"Bafia"', add
label define cm05a_arrnd5yr_lbl 034 `"Bokito"', add
label define cm05a_arrnd5yr_lbl 035 `"Deuk"', add
label define cm05a_arrnd5yr_lbl 036 `"Makenene"', add
label define cm05a_arrnd5yr_lbl 037 `"Ndikinimiki"', add
label define cm05a_arrnd5yr_lbl 038 `"Nitoukou"', add
label define cm05a_arrnd5yr_lbl 039 `"Ombessa"', add
label define cm05a_arrnd5yr_lbl 040 `"Mbangassina"', add
label define cm05a_arrnd5yr_lbl 041 `"Ngambe Tikar"', add
label define cm05a_arrnd5yr_lbl 042 `"Ngoro"', add
label define cm05a_arrnd5yr_lbl 043 `"Ntui"', add
label define cm05a_arrnd5yr_lbl 044 `"Yoko"', add
label define cm05a_arrnd5yr_lbl 045 `"Awae"', add
label define cm05a_arrnd5yr_lbl 046 `"Assamba"', add
label define cm05a_arrnd5yr_lbl 047 `"Esse"', add
label define cm05a_arrnd5yr_lbl 048 `"Afanloum"', add
label define cm05a_arrnd5yr_lbl 049 `"Edzendouan"', add
label define cm05a_arrnd5yr_lbl 050 `"Mfou"', add
label define cm05a_arrnd5yr_lbl 051 `"Nkolafamba"', add
label define cm05a_arrnd5yr_lbl 052 `"Soa"', add
label define cm05a_arrnd5yr_lbl 053 `"Akono"', add
label define cm05a_arrnd5yr_lbl 054 `"Bikok"', add
label define cm05a_arrnd5yr_lbl 055 `"Mbankomo"', add
label define cm05a_arrnd5yr_lbl 056 `"Ngoumou"', add
label define cm05a_arrnd5yr_lbl 057 `"Yaounde I"', add
label define cm05a_arrnd5yr_lbl 058 `"Yaounde II"', add
label define cm05a_arrnd5yr_lbl 059 `"Yaounde III"', add
label define cm05a_arrnd5yr_lbl 060 `"Yaounde IV"', add
label define cm05a_arrnd5yr_lbl 061 `"Yaounde V"', add
label define cm05a_arrnd5yr_lbl 062 `"Yaounde VI"', add
label define cm05a_arrnd5yr_lbl 063 `"Bot Makak"', add
label define cm05a_arrnd5yr_lbl 064 `"Nguibassal"', add
label define cm05a_arrnd5yr_lbl 065 `"Dibang"', add
label define cm05a_arrnd5yr_lbl 066 `"Eseka"', add
label define cm05a_arrnd5yr_lbl 067 `"Makak"', add
label define cm05a_arrnd5yr_lbl 068 `"Bondjock"', add
label define cm05a_arrnd5yr_lbl 069 `"Matomb"', add
label define cm05a_arrnd5yr_lbl 070 `"Messondo"', add
label define cm05a_arrnd5yr_lbl 071 `"Biyouha"', add
label define cm05a_arrnd5yr_lbl 072 `"Ngok Mapubi"', add
label define cm05a_arrnd5yr_lbl 073 `"Akonolinga"', add
label define cm05a_arrnd5yr_lbl 074 `"Mengang"', add
label define cm05a_arrnd5yr_lbl 075 `"Ayos"', add
label define cm05a_arrnd5yr_lbl 076 `"Nyakombo"', add
label define cm05a_arrnd5yr_lbl 077 `"Endom"', add
label define cm05a_arrnd5yr_lbl 078 `"Dzeng"', add
label define cm05a_arrnd5yr_lbl 079 `"Mbalmayo"', add
label define cm05a_arrnd5yr_lbl 080 `"Akoeman"', add
label define cm05a_arrnd5yr_lbl 081 `"Mengueme"', add
label define cm05a_arrnd5yr_lbl 082 `"Nkolmetet"', add
label define cm05a_arrnd5yr_lbl 083 `"Ngomedzap"', add
label define cm05a_arrnd5yr_lbl 084 `"Gari Gombo"', add
label define cm05a_arrnd5yr_lbl 085 `"Moloundou"', add
label define cm05a_arrnd5yr_lbl 086 `"Salapoumbe"', add
label define cm05a_arrnd5yr_lbl 087 `"Yokadouma"', add
label define cm05a_arrnd5yr_lbl 088 `"Abong Mbang"', add
label define cm05a_arrnd5yr_lbl 089 `"Bebeng"', add
label define cm05a_arrnd5yr_lbl 090 `"Dja"', add
label define cm05a_arrnd5yr_lbl 091 `"Mboanz"', add
label define cm05a_arrnd5yr_lbl 092 `"Dimako"', add
label define cm05a_arrnd5yr_lbl 093 `"Doume"', add
label define cm05a_arrnd5yr_lbl 094 `"Doumaintang"', add
label define cm05a_arrnd5yr_lbl 095 `"Lomie"', add
label define cm05a_arrnd5yr_lbl 096 `"Messok"', add
label define cm05a_arrnd5yr_lbl 097 `"Messamena"', add
label define cm05a_arrnd5yr_lbl 098 `"Salalomo"', add
label define cm05a_arrnd5yr_lbl 099 `"Ngoyla"', add
label define cm05a_arrnd5yr_lbl 100 `"Nguelemedouka"', add
label define cm05a_arrnd5yr_lbl 101 `"Mboma"', add
label define cm05a_arrnd5yr_lbl 102 `"Batouri"', add
label define cm05a_arrnd5yr_lbl 103 `"Ndem-Nam"', add
label define cm05a_arrnd5yr_lbl 104 `"Kette"', add
label define cm05a_arrnd5yr_lbl 105 `"Mbotoro"', add
label define cm05a_arrnd5yr_lbl 106 `"Mbang"', add
label define cm05a_arrnd5yr_lbl 107 `"Ndelele"', add
label define cm05a_arrnd5yr_lbl 108 `"Bombe"', add
label define cm05a_arrnd5yr_lbl 109 `"Belabo"', add
label define cm05a_arrnd5yr_lbl 110 `"Bétaré-Oya"', add
label define cm05a_arrnd5yr_lbl 111 `"Ngoura"', add
label define cm05a_arrnd5yr_lbl 112 `"Bertoua"', add
label define cm05a_arrnd5yr_lbl 113 `"Diang"', add
label define cm05a_arrnd5yr_lbl 114 `"Garoua-Boulaï"', add
label define cm05a_arrnd5yr_lbl 115 `"Bogo"', add
label define cm05a_arrnd5yr_lbl 116 `"Gazawa"', add
label define cm05a_arrnd5yr_lbl 117 `"Maroua"', add
label define cm05a_arrnd5yr_lbl 118 `"Dargala"', add
label define cm05a_arrnd5yr_lbl 119 `"Ndoukoula"', add
label define cm05a_arrnd5yr_lbl 120 `"Meri"', add
label define cm05a_arrnd5yr_lbl 121 `"Pette"', add
label define cm05a_arrnd5yr_lbl 122 `"Blangoua"', add
label define cm05a_arrnd5yr_lbl 123 `"Darak"', add
label define cm05a_arrnd5yr_lbl 124 `"Fotokol"', add
label define cm05a_arrnd5yr_lbl 125 `"Goulfey"', add
label define cm05a_arrnd5yr_lbl 126 `"Hile-Halifa"', add
label define cm05a_arrnd5yr_lbl 127 `"Kousseri"', add
label define cm05a_arrnd5yr_lbl 128 `"Logone-Birni"', add
label define cm05a_arrnd5yr_lbl 129 `"Zina"', add
label define cm05a_arrnd5yr_lbl 130 `"Makari"', add
label define cm05a_arrnd5yr_lbl 131 `"Waza"', add
label define cm05a_arrnd5yr_lbl 132 `"Datcheka"', add
label define cm05a_arrnd5yr_lbl 133 `"Gobo"', add
label define cm05a_arrnd5yr_lbl 134 `"Guere"', add
label define cm05a_arrnd5yr_lbl 135 `"Kaïkaï"', add
label define cm05a_arrnd5yr_lbl 136 `"Kalfou"', add
label define cm05a_arrnd5yr_lbl 137 `"Kar-Hay"', add
label define cm05a_arrnd5yr_lbl 138 `"Maga"', add
label define cm05a_arrnd5yr_lbl 139 `"Tchatibali"', add
label define cm05a_arrnd5yr_lbl 140 `"Vele"', add
label define cm05a_arrnd5yr_lbl 141 `"Wina"', add
label define cm05a_arrnd5yr_lbl 142 `"Yagoua"', add
label define cm05a_arrnd5yr_lbl 143 `"Guidiguis"', add
label define cm05a_arrnd5yr_lbl 144 `"Kaele"', add
label define cm05a_arrnd5yr_lbl 145 `"Mindif"', add
label define cm05a_arrnd5yr_lbl 146 `"Moulvoudaye"', add
label define cm05a_arrnd5yr_lbl 147 `"Moutourwa"', add
label define cm05a_arrnd5yr_lbl 148 `"Porhi"', add
label define cm05a_arrnd5yr_lbl 149 `"Taïbong"', add
label define cm05a_arrnd5yr_lbl 150 `"Kolofata"', add
label define cm05a_arrnd5yr_lbl 151 `"Mora"', add
label define cm05a_arrnd5yr_lbl 152 `"Tokombere"', add
label define cm05a_arrnd5yr_lbl 153 `"Bourrha"', add
label define cm05a_arrnd5yr_lbl 154 `"Hina"', add
label define cm05a_arrnd5yr_lbl 155 `"Koza"', add
label define cm05a_arrnd5yr_lbl 156 `"Mayo-Moskota"', add
label define cm05a_arrnd5yr_lbl 157 `"Mogode"', add
label define cm05a_arrnd5yr_lbl 158 `"Mokolo"', add
label define cm05a_arrnd5yr_lbl 159 `"Soulede Roua"', add
label define cm05a_arrnd5yr_lbl 160 `"Bare-Bakem"', add
label define cm05a_arrnd5yr_lbl 161 `"Dibombari"', add
label define cm05a_arrnd5yr_lbl 162 `"Fiko"', add
label define cm05a_arrnd5yr_lbl 163 `"Loum"', add
label define cm05a_arrnd5yr_lbl 164 `"Manjo"', add
label define cm05a_arrnd5yr_lbl 165 `"Mbanga"', add
label define cm05a_arrnd5yr_lbl 166 `"Mombo"', add
label define cm05a_arrnd5yr_lbl 167 `"Melong"', add
label define cm05a_arrnd5yr_lbl 168 `"Njombe-Penja"', add
label define cm05a_arrnd5yr_lbl 169 `"Nkongsamba"', add
label define cm05a_arrnd5yr_lbl 170 `"Nlonako"', add
label define cm05a_arrnd5yr_lbl 171 `"Nkondjock"', add
label define cm05a_arrnd5yr_lbl 172 `"Nord-Makombe"', add
label define cm05a_arrnd5yr_lbl 173 `"Yabassi"', add
label define cm05a_arrnd5yr_lbl 174 `"Yingui"', add
label define cm05a_arrnd5yr_lbl 175 `"Dizangue"', add
label define cm05a_arrnd5yr_lbl 176 `"Edéa"', add
label define cm05a_arrnd5yr_lbl 177 `"Mouanko"', add
label define cm05a_arrnd5yr_lbl 178 `"Ndom"', add
label define cm05a_arrnd5yr_lbl 179 `"Nyanon"', add
label define cm05a_arrnd5yr_lbl 180 `"Ngambe"', add
label define cm05a_arrnd5yr_lbl 181 `"Massok-Songloulou"', add
label define cm05a_arrnd5yr_lbl 182 `"Pouma"', add
label define cm05a_arrnd5yr_lbl 183 `"Douala 1"', add
label define cm05a_arrnd5yr_lbl 184 `"Douala 2"', add
label define cm05a_arrnd5yr_lbl 185 `"Douala 3"', add
label define cm05a_arrnd5yr_lbl 186 `"Douala 4"', add
label define cm05a_arrnd5yr_lbl 187 `"Douala 5"', add
label define cm05a_arrnd5yr_lbl 188 `"Manoka"', add
label define cm05a_arrnd5yr_lbl 189 `"Bibemi"', add
label define cm05a_arrnd5yr_lbl 190 `"Dembo"', add
label define cm05a_arrnd5yr_lbl 191 `"Lagdo"', add
label define cm05a_arrnd5yr_lbl 192 `"Garoua"', add
label define cm05a_arrnd5yr_lbl 193 `"Bascheo"', add
label define cm05a_arrnd5yr_lbl 194 `"Demsa"', add
label define cm05a_arrnd5yr_lbl 195 `"Touroua"', add
label define cm05a_arrnd5yr_lbl 196 `"Pitoua"', add
label define cm05a_arrnd5yr_lbl 197 `"Tcheboa"', add
label define cm05a_arrnd5yr_lbl 198 `"Beka"', add
label define cm05a_arrnd5yr_lbl 199 `"Poli"', add
label define cm05a_arrnd5yr_lbl 200 `"Figuil"', add
label define cm05a_arrnd5yr_lbl 201 `"Guider"', add
label define cm05a_arrnd5yr_lbl 202 `"Mayo-Oulo"', add
label define cm05a_arrnd5yr_lbl 203 `"Rey-Bouba"', add
label define cm05a_arrnd5yr_lbl 204 `"Tcholliré"', add
label define cm05a_arrnd5yr_lbl 205 `"Madingring"', add
label define cm05a_arrnd5yr_lbl 206 `"Touboro"', add
label define cm05a_arrnd5yr_lbl 207 `"Belo"', add
label define cm05a_arrnd5yr_lbl 208 `"Bum"', add
label define cm05a_arrnd5yr_lbl 209 `"Fundong"', add
label define cm05a_arrnd5yr_lbl 210 `"Njinikom"', add
label define cm05a_arrnd5yr_lbl 211 `"Jakiri"', add
label define cm05a_arrnd5yr_lbl 212 `"Kumbo"', add
label define cm05a_arrnd5yr_lbl 213 `"Mbven"', add
label define cm05a_arrnd5yr_lbl 214 `"Noni"', add
label define cm05a_arrnd5yr_lbl 215 `"Oku"', add
label define cm05a_arrnd5yr_lbl 216 `"Ako"', add
label define cm05a_arrnd5yr_lbl 217 `"Misaje"', add
label define cm05a_arrnd5yr_lbl 218 `"Ndu"', add
label define cm05a_arrnd5yr_lbl 219 `"Nkambe"', add
label define cm05a_arrnd5yr_lbl 220 `"Nwa"', add
label define cm05a_arrnd5yr_lbl 221 `"Fungom"', add
label define cm05a_arrnd5yr_lbl 222 `"Furu-Awa"', add
label define cm05a_arrnd5yr_lbl 223 `"Menchum-Valley"', add
label define cm05a_arrnd5yr_lbl 224 `"Wum"', add
label define cm05a_arrnd5yr_lbl 225 `"Bafut"', add
label define cm05a_arrnd5yr_lbl 226 `"Bali"', add
label define cm05a_arrnd5yr_lbl 227 `"bamenda"', add
label define cm05a_arrnd5yr_lbl 228 `"Santa"', add
label define cm05a_arrnd5yr_lbl 229 `"Tubah"', add
label define cm05a_arrnd5yr_lbl 230 `"Batibo"', add
label define cm05a_arrnd5yr_lbl 231 `"Mbengwi"', add
label define cm05a_arrnd5yr_lbl 232 `"Ngie"', add
label define cm05a_arrnd5yr_lbl 233 `"Njikwa"', add
label define cm05a_arrnd5yr_lbl 234 `"Widikum-Menka"', add
label define cm05a_arrnd5yr_lbl 235 `"Babessi"', add
label define cm05a_arrnd5yr_lbl 236 `"Balikumbat"', add
label define cm05a_arrnd5yr_lbl 237 `"Ndop"', add
label define cm05a_arrnd5yr_lbl 238 `"Babadjou"', add
label define cm05a_arrnd5yr_lbl 239 `"Batcham"', add
label define cm05a_arrnd5yr_lbl 240 `"Galim"', add
label define cm05a_arrnd5yr_lbl 241 `"Mbouda"', add
label define cm05a_arrnd5yr_lbl 242 `"Bafang"', add
label define cm05a_arrnd5yr_lbl 243 `"Bakou"', add
label define cm05a_arrnd5yr_lbl 244 `"Bana"', add
label define cm05a_arrnd5yr_lbl 245 `"Bandja"', add
label define cm05a_arrnd5yr_lbl 246 `"Kekem"', add
label define cm05a_arrnd5yr_lbl 247 `"Banwa"', add
label define cm05a_arrnd5yr_lbl 248 `"Baham"', add
label define cm05a_arrnd5yr_lbl 249 `"Bamendjou"', add
label define cm05a_arrnd5yr_lbl 250 `"Batie"', add
label define cm05a_arrnd5yr_lbl 251 `"Bangou"', add
label define cm05a_arrnd5yr_lbl 252 `"Bayangam"', add
label define cm05a_arrnd5yr_lbl 253 `"Poumougne"', add
label define cm05a_arrnd5yr_lbl 254 `"Djebem"', add
label define cm05a_arrnd5yr_lbl 255 `"Dschang"', add
label define cm05a_arrnd5yr_lbl 256 `"Fokoue"', add
label define cm05a_arrnd5yr_lbl 257 `"Nkong-Ni"', add
label define cm05a_arrnd5yr_lbl 258 `"Penka-Michel"', add
label define cm05a_arrnd5yr_lbl 259 `"Santchou"', add
label define cm05a_arrnd5yr_lbl 260 `"Bafoussam"', add
label define cm05a_arrnd5yr_lbl 261 `"Baleng"', add
label define cm05a_arrnd5yr_lbl 262 `"Bamougoum"', add
label define cm05a_arrnd5yr_lbl 263 `"Bangangte"', add
label define cm05a_arrnd5yr_lbl 264 `"Bassamba"', add
label define cm05a_arrnd5yr_lbl 265 `"Bazou"', add
label define cm05a_arrnd5yr_lbl 266 `"Tonga"', add
label define cm05a_arrnd5yr_lbl 267 `"Bangourain"', add
label define cm05a_arrnd5yr_lbl 268 `"Foumban"', add
label define cm05a_arrnd5yr_lbl 269 `"Foumbot"', add
label define cm05a_arrnd5yr_lbl 270 `"Kouoptamo"', add
label define cm05a_arrnd5yr_lbl 271 `"Koutaba"', add
label define cm05a_arrnd5yr_lbl 272 `"Magba"', add
label define cm05a_arrnd5yr_lbl 273 `"Malentouen"', add
label define cm05a_arrnd5yr_lbl 274 `"Massangan"', add
label define cm05a_arrnd5yr_lbl 275 `"Bengbis"', add
label define cm05a_arrnd5yr_lbl 276 `"Djoum"', add
label define cm05a_arrnd5yr_lbl 277 `"Meyomessala"', add
label define cm05a_arrnd5yr_lbl 278 `"Mintom"', add
label define cm05a_arrnd5yr_lbl 279 `"Oveng"', add
label define cm05a_arrnd5yr_lbl 280 `"Sangmelima"', add
label define cm05a_arrnd5yr_lbl 281 `"Zoetele"', add
label define cm05a_arrnd5yr_lbl 282 `"Biwong-Bane"', add
label define cm05a_arrnd5yr_lbl 283 `"Ebolowa"', add
label define cm05a_arrnd5yr_lbl 284 `"Mengong"', add
label define cm05a_arrnd5yr_lbl 285 `"Mvangan"', add
label define cm05a_arrnd5yr_lbl 286 `"Ngoulemakong"', add
label define cm05a_arrnd5yr_lbl 287 `"Akom II"', add
label define cm05a_arrnd5yr_lbl 288 `"Niete"', add
label define cm05a_arrnd5yr_lbl 289 `"Bipindi"', add
label define cm05a_arrnd5yr_lbl 290 `"Campo"', add
label define cm05a_arrnd5yr_lbl 291 `"Kribi"', add
label define cm05a_arrnd5yr_lbl 292 `"Lolodorf"', add
label define cm05a_arrnd5yr_lbl 293 `"Mvengue"', add
label define cm05a_arrnd5yr_lbl 294 `"Ambam"', add
label define cm05a_arrnd5yr_lbl 295 `"Ma'an"', add
label define cm05a_arrnd5yr_lbl 296 `"Olamze"', add
label define cm05a_arrnd5yr_lbl 297 `"Buea"', add
label define cm05a_arrnd5yr_lbl 298 `"West-Coast"', add
label define cm05a_arrnd5yr_lbl 299 `"Limbe"', add
label define cm05a_arrnd5yr_lbl 300 `"Muyuka"', add
label define cm05a_arrnd5yr_lbl 301 `"Tiko"', add
label define cm05a_arrnd5yr_lbl 302 `"Banguem"', add
label define cm05a_arrnd5yr_lbl 303 `"Nguti"', add
label define cm05a_arrnd5yr_lbl 304 `"Tombel"', add
label define cm05a_arrnd5yr_lbl 305 `"Alou"', add
label define cm05a_arrnd5yr_lbl 306 `"Fontem"', add
label define cm05a_arrnd5yr_lbl 307 `"Wabane"', add
label define cm05a_arrnd5yr_lbl 308 `"Akwaya"', add
label define cm05a_arrnd5yr_lbl 309 `"Eyumodjock"', add
label define cm05a_arrnd5yr_lbl 310 `"Mamfe"', add
label define cm05a_arrnd5yr_lbl 311 `"Upper Bayang"', add
label define cm05a_arrnd5yr_lbl 312 `"Kumba"', add
label define cm05a_arrnd5yr_lbl 313 `"Konye"', add
label define cm05a_arrnd5yr_lbl 314 `"Mbonge"', add
label define cm05a_arrnd5yr_lbl 315 `"Bamusso"', add
label define cm05a_arrnd5yr_lbl 316 `"Ekondo Titi"', add
label define cm05a_arrnd5yr_lbl 317 `"Dikome-Balue"', add
label define cm05a_arrnd5yr_lbl 318 `"Idabato"', add
label define cm05a_arrnd5yr_lbl 319 `"Isanguele"', add
label define cm05a_arrnd5yr_lbl 320 `"Kombo Abedimo"', add
label define cm05a_arrnd5yr_lbl 321 `"Kombo-Itindi"', add
label define cm05a_arrnd5yr_lbl 322 `"Mumdemba"', add
label define cm05a_arrnd5yr_lbl 323 `"Toko"', add
label define cm05a_arrnd5yr_lbl 399 `"Unknown arrondissement"', add
label define cm05a_arrnd5yr_lbl 400 `"Abroad"', add
label define cm05a_arrnd5yr_lbl 998 `"Unknown"', add
label define cm05a_arrnd5yr_lbl 999 `"NIU (not in universe)"', add
label values cm05a_arrnd5yr cm05a_arrnd5yr_lbl

label define cm05a_dept5yr_lbl 01 `"Djerem"'
label define cm05a_dept5yr_lbl 02 `"Faro et Deo"', add
label define cm05a_dept5yr_lbl 03 `"Mayo Banyo"', add
label define cm05a_dept5yr_lbl 04 `"Mbere"', add
label define cm05a_dept5yr_lbl 05 `"Vina"', add
label define cm05a_dept5yr_lbl 06 `"Haute Sanaga"', add
label define cm05a_dept5yr_lbl 07 `"Lekie"', add
label define cm05a_dept5yr_lbl 08 `"Mbam et Inubou"', add
label define cm05a_dept5yr_lbl 09 `"Mbam et Kim"', add
label define cm05a_dept5yr_lbl 10 `"Mefou et Afamba"', add
label define cm05a_dept5yr_lbl 11 `"Mefou et Akono"', add
label define cm05a_dept5yr_lbl 12 `"Mfoundi"', add
label define cm05a_dept5yr_lbl 13 `"Nyong et Kelle"', add
label define cm05a_dept5yr_lbl 14 `"Nyong et Mfoumou"', add
label define cm05a_dept5yr_lbl 15 `"Nyong et So'o"', add
label define cm05a_dept5yr_lbl 16 `"Bouba et Ngoko"', add
label define cm05a_dept5yr_lbl 17 `"Haut Nyong"', add
label define cm05a_dept5yr_lbl 18 `"Kadey"', add
label define cm05a_dept5yr_lbl 19 `"Lom et Kjerem"', add
label define cm05a_dept5yr_lbl 20 `"Diamare"', add
label define cm05a_dept5yr_lbl 21 `"Logone et Chari"', add
label define cm05a_dept5yr_lbl 22 `"Mayo Danay"', add
label define cm05a_dept5yr_lbl 23 `"Mayo Kani"', add
label define cm05a_dept5yr_lbl 24 `"Mayo Sava"', add
label define cm05a_dept5yr_lbl 25 `"Mayo Tsanaga"', add
label define cm05a_dept5yr_lbl 26 `"Moungo"', add
label define cm05a_dept5yr_lbl 27 `"Nkam"', add
label define cm05a_dept5yr_lbl 28 `"Sanaga Maritime"', add
label define cm05a_dept5yr_lbl 29 `"Wouri"', add
label define cm05a_dept5yr_lbl 30 `"Benoue"', add
label define cm05a_dept5yr_lbl 31 `"Faro"', add
label define cm05a_dept5yr_lbl 32 `"Mayo Louti"', add
label define cm05a_dept5yr_lbl 33 `"Mayo Rey"', add
label define cm05a_dept5yr_lbl 34 `"Boyo"', add
label define cm05a_dept5yr_lbl 35 `"Bui"', add
label define cm05a_dept5yr_lbl 36 `"Donga Mantun"', add
label define cm05a_dept5yr_lbl 37 `"Menchum"', add
label define cm05a_dept5yr_lbl 38 `"Mezam"', add
label define cm05a_dept5yr_lbl 39 `"Momo"', add
label define cm05a_dept5yr_lbl 40 `"Ngo Ketungja"', add
label define cm05a_dept5yr_lbl 41 `"Bamboutos"', add
label define cm05a_dept5yr_lbl 42 `"Haut Nkam"', add
label define cm05a_dept5yr_lbl 43 `"Hauts Plateaux"', add
label define cm05a_dept5yr_lbl 44 `"Koung Khi"', add
label define cm05a_dept5yr_lbl 45 `"Menoua"', add
label define cm05a_dept5yr_lbl 46 `"Mifi"', add
label define cm05a_dept5yr_lbl 47 `"Nde"', add
label define cm05a_dept5yr_lbl 48 `"Noun"', add
label define cm05a_dept5yr_lbl 49 `"Dja et Lobo"', add
label define cm05a_dept5yr_lbl 50 `"Mvilla"', add
label define cm05a_dept5yr_lbl 51 `"Ocean"', add
label define cm05a_dept5yr_lbl 52 `"Valle du Ntem"', add
label define cm05a_dept5yr_lbl 53 `"Fako"', add
label define cm05a_dept5yr_lbl 54 `"Koupe et Manengouba"', add
label define cm05a_dept5yr_lbl 55 `"Lebialem"', add
label define cm05a_dept5yr_lbl 56 `"Manyu"', add
label define cm05a_dept5yr_lbl 57 `"Meme"', add
label define cm05a_dept5yr_lbl 58 `"Ndian"', add
label define cm05a_dept5yr_lbl 96 `"Unknown department"', add
label define cm05a_dept5yr_lbl 97 `"Abroad"', add
label define cm05a_dept5yr_lbl 98 `"Unknown"', add
label define cm05a_dept5yr_lbl 99 `"NIU (not in universe)"', add
label values cm05a_dept5yr cm05a_dept5yr_lbl

label define cm05a_prov5yr_lbl 01 `"Adamoua"'
label define cm05a_prov5yr_lbl 02 `"Centre"', add
label define cm05a_prov5yr_lbl 03 `"Est"', add
label define cm05a_prov5yr_lbl 04 `"Extrème Nord"', add
label define cm05a_prov5yr_lbl 05 `"Littoral"', add
label define cm05a_prov5yr_lbl 06 `"Nord"', add
label define cm05a_prov5yr_lbl 07 `"Nord Ouest"', add
label define cm05a_prov5yr_lbl 08 `"Ouest"', add
label define cm05a_prov5yr_lbl 09 `"Sud"', add
label define cm05a_prov5yr_lbl 10 `"Sud Ouest"', add
label define cm05a_prov5yr_lbl 96 `"Unknown province"', add
label define cm05a_prov5yr_lbl 97 `"Abroad"', add
label define cm05a_prov5yr_lbl 98 `"Unknown"', add
label define cm05a_prov5yr_lbl 99 `"NIU (not in universe)"', add
label values cm05a_prov5yr cm05a_prov5yr_lbl

label define cm05a_cntry5yr_lbl 001 `"Cameroon"'
label define cm05a_cntry5yr_lbl 407 `"Benin"', add
label define cm05a_cntry5yr_lbl 408 `"Burkina Faso"', add
label define cm05a_cntry5yr_lbl 410 `"Ivory Coast"', add
label define cm05a_cntry5yr_lbl 411 `"Gambia"', add
label define cm05a_cntry5yr_lbl 412 `"Ghana"', add
label define cm05a_cntry5yr_lbl 413 `"Guinea"', add
label define cm05a_cntry5yr_lbl 416 `"Mali"', add
label define cm05a_cntry5yr_lbl 418 `"Niger"', add
label define cm05a_cntry5yr_lbl 419 `"Nigeria"', add
label define cm05a_cntry5yr_lbl 420 `"Senegal"', add
label define cm05a_cntry5yr_lbl 421 `"Sierra Leone"', add
label define cm05a_cntry5yr_lbl 422 `"Togo"', add
label define cm05a_cntry5yr_lbl 442 `"Congo"', add
label define cm05a_cntry5yr_lbl 443 `"Democratic Republic of Congo"', add
label define cm05a_cntry5yr_lbl 444 `"Gabon"', add
label define cm05a_cntry5yr_lbl 445 `"Equatorial Guinea"', add
label define cm05a_cntry5yr_lbl 446 `"Central African Republic"', add
label define cm05a_cntry5yr_lbl 448 `"Chad"', add
label define cm05a_cntry5yr_lbl 449 `"South Africa"', add
label define cm05a_cntry5yr_lbl 499 `"Other Africa"', add
label define cm05a_cntry5yr_lbl 501 `"Canada"', add
label define cm05a_cntry5yr_lbl 502 `"USA"', add
label define cm05a_cntry5yr_lbl 511 `"Grenada"', add
label define cm05a_cntry5yr_lbl 599 `"Other Americas"', add
label define cm05a_cntry5yr_lbl 601 `"Afganistan"', add
label define cm05a_cntry5yr_lbl 602 `"Saudi Arabia"', add
label define cm05a_cntry5yr_lbl 609 `"China"', add
label define cm05a_cntry5yr_lbl 612 `"South Korea"', add
label define cm05a_cntry5yr_lbl 620 `"Japan"', add
label define cm05a_cntry5yr_lbl 621 `"Jordan"', add
label define cm05a_cntry5yr_lbl 699 `"Other Asia"', add
label define cm05a_cntry5yr_lbl 799 `"Other Europe"', add
label define cm05a_cntry5yr_lbl 702 `"Germany"', add
label define cm05a_cntry5yr_lbl 704 `"England"', add
label define cm05a_cntry5yr_lbl 715 `"Spain"', add
label define cm05a_cntry5yr_lbl 718 `"France"', add
label define cm05a_cntry5yr_lbl 725 `"Italy"', add
label define cm05a_cntry5yr_lbl 739 `"Russia"', add
label define cm05a_cntry5yr_lbl 745 `"Switzerland"', add
label define cm05a_cntry5yr_lbl 899 `"Oceania"', add
label define cm05a_cntry5yr_lbl 998 `"Unknown"', add
label define cm05a_cntry5yr_lbl 999 `"NIU (not in universe)"', add
label values cm05a_cntry5yr cm05a_cntry5yr_lbl

label define cm05a_prevurb_lbl 1 `"Urban"'
label define cm05a_prevurb_lbl 2 `"Rural"', add
label define cm05a_prevurb_lbl 8 `"Unknown"', add
label define cm05a_prevurb_lbl 9 `"NIU (not in universe)"', add
label values cm05a_prevurb cm05a_prevurb_lbl

label define cm05a_prevarrd_lbl 001 `"Ngaoundal"'
label define cm05a_prevarrd_lbl 002 `"Tibati"', add
label define cm05a_prevarrd_lbl 003 `"Galim Tignere"', add
label define cm05a_prevarrd_lbl 004 `"Mayo Baleo"', add
label define cm05a_prevarrd_lbl 005 `"Kontcha"', add
label define cm05a_prevarrd_lbl 006 `"Tignere"', add
label define cm05a_prevarrd_lbl 007 `"Bankim"', add
label define cm05a_prevarrd_lbl 008 `"Banyo"', add
label define cm05a_prevarrd_lbl 009 `"Mayo Darlé"', add
label define cm05a_prevarrd_lbl 010 `"Dir"', add
label define cm05a_prevarrd_lbl 011 `"Djohong"', add
label define cm05a_prevarrd_lbl 012 `"Ngaoui"', add
label define cm05a_prevarrd_lbl 013 `"Meiganga"', add
label define cm05a_prevarrd_lbl 014 `"Belel"', add
label define cm05a_prevarrd_lbl 015 `"Mbe"', add
label define cm05a_prevarrd_lbl 016 `"Ngaoundéré"', add
label define cm05a_prevarrd_lbl 017 `"Mbandjock"', add
label define cm05a_prevarrd_lbl 018 `"Minta"', add
label define cm05a_prevarrd_lbl 019 `"Nanga Eboko"', add
label define cm05a_prevarrd_lbl 020 `"Bibey"', add
label define cm05a_prevarrd_lbl 021 `"Lembe Yezoum"', add
label define cm05a_prevarrd_lbl 022 `"Nsem"', add
label define cm05a_prevarrd_lbl 023 `"Nkoteng"', add
label define cm05a_prevarrd_lbl 024 `"Ebebda"', add
label define cm05a_prevarrd_lbl 025 `"Elig Mfomo"', add
label define cm05a_prevarrd_lbl 026 `"Evodoula"', add
label define cm05a_prevarrd_lbl 027 `"Monatele"', add
label define cm05a_prevarrd_lbl 028 `"Obala"', add
label define cm05a_prevarrd_lbl 029 `"Batchenga"', add
label define cm05a_prevarrd_lbl 030 `"Okola"', add
label define cm05a_prevarrd_lbl 031 `"Lobo"', add
label define cm05a_prevarrd_lbl 032 `"SAA"', add
label define cm05a_prevarrd_lbl 033 `"Bafia"', add
label define cm05a_prevarrd_lbl 034 `"Bokito"', add
label define cm05a_prevarrd_lbl 035 `"Deuk"', add
label define cm05a_prevarrd_lbl 036 `"Makenene"', add
label define cm05a_prevarrd_lbl 037 `"Ndikinimiki"', add
label define cm05a_prevarrd_lbl 038 `"Nitoukou"', add
label define cm05a_prevarrd_lbl 039 `"Ombessa"', add
label define cm05a_prevarrd_lbl 040 `"Mbangassina"', add
label define cm05a_prevarrd_lbl 041 `"Ngambe Tikar"', add
label define cm05a_prevarrd_lbl 042 `"Ngoro"', add
label define cm05a_prevarrd_lbl 043 `"Ntui"', add
label define cm05a_prevarrd_lbl 044 `"Yoko"', add
label define cm05a_prevarrd_lbl 045 `"Awae"', add
label define cm05a_prevarrd_lbl 046 `"Assamba"', add
label define cm05a_prevarrd_lbl 047 `"Esse"', add
label define cm05a_prevarrd_lbl 048 `"Afanloum"', add
label define cm05a_prevarrd_lbl 049 `"Edzendouan"', add
label define cm05a_prevarrd_lbl 050 `"Mfou"', add
label define cm05a_prevarrd_lbl 051 `"Nkolafamba"', add
label define cm05a_prevarrd_lbl 052 `"Soa"', add
label define cm05a_prevarrd_lbl 053 `"Akono"', add
label define cm05a_prevarrd_lbl 054 `"Bikok"', add
label define cm05a_prevarrd_lbl 055 `"Mbankomo"', add
label define cm05a_prevarrd_lbl 056 `"Ngoumou"', add
label define cm05a_prevarrd_lbl 057 `"Yaounde I"', add
label define cm05a_prevarrd_lbl 058 `"Yaounde II"', add
label define cm05a_prevarrd_lbl 059 `"Yaounde III"', add
label define cm05a_prevarrd_lbl 060 `"Yaounde IV"', add
label define cm05a_prevarrd_lbl 061 `"Yaounde V"', add
label define cm05a_prevarrd_lbl 062 `"Yaounde VI"', add
label define cm05a_prevarrd_lbl 063 `"Bot Makak"', add
label define cm05a_prevarrd_lbl 064 `"Nguibassal"', add
label define cm05a_prevarrd_lbl 065 `"Dibang"', add
label define cm05a_prevarrd_lbl 066 `"Eseka"', add
label define cm05a_prevarrd_lbl 067 `"Makak"', add
label define cm05a_prevarrd_lbl 068 `"Bondjock"', add
label define cm05a_prevarrd_lbl 069 `"Matomb"', add
label define cm05a_prevarrd_lbl 070 `"Messondo"', add
label define cm05a_prevarrd_lbl 071 `"Biyouha"', add
label define cm05a_prevarrd_lbl 072 `"Ngok Mapubi"', add
label define cm05a_prevarrd_lbl 073 `"Akonolinga"', add
label define cm05a_prevarrd_lbl 074 `"Mengang"', add
label define cm05a_prevarrd_lbl 075 `"Ayos"', add
label define cm05a_prevarrd_lbl 076 `"Nyakombo"', add
label define cm05a_prevarrd_lbl 077 `"Endom"', add
label define cm05a_prevarrd_lbl 078 `"Dzeng"', add
label define cm05a_prevarrd_lbl 079 `"Mbalmayo"', add
label define cm05a_prevarrd_lbl 080 `"Akoeman"', add
label define cm05a_prevarrd_lbl 081 `"Mengueme"', add
label define cm05a_prevarrd_lbl 082 `"Nkolmetet"', add
label define cm05a_prevarrd_lbl 083 `"Ngomedzap"', add
label define cm05a_prevarrd_lbl 084 `"Gari Gombo"', add
label define cm05a_prevarrd_lbl 085 `"Moloundou"', add
label define cm05a_prevarrd_lbl 086 `"Salapoumbe"', add
label define cm05a_prevarrd_lbl 087 `"Yokadouma"', add
label define cm05a_prevarrd_lbl 088 `"Abong Mbang"', add
label define cm05a_prevarrd_lbl 089 `"Bebeng"', add
label define cm05a_prevarrd_lbl 090 `"Dja"', add
label define cm05a_prevarrd_lbl 091 `"Mboanz"', add
label define cm05a_prevarrd_lbl 092 `"Dimako"', add
label define cm05a_prevarrd_lbl 093 `"Doume"', add
label define cm05a_prevarrd_lbl 094 `"Doumaintang"', add
label define cm05a_prevarrd_lbl 095 `"Lomie"', add
label define cm05a_prevarrd_lbl 096 `"Messok"', add
label define cm05a_prevarrd_lbl 097 `"Messamena"', add
label define cm05a_prevarrd_lbl 098 `"Salalomo"', add
label define cm05a_prevarrd_lbl 099 `"Ngoyla"', add
label define cm05a_prevarrd_lbl 100 `"Nguelemedouka"', add
label define cm05a_prevarrd_lbl 101 `"Mboma"', add
label define cm05a_prevarrd_lbl 102 `"Batouri"', add
label define cm05a_prevarrd_lbl 103 `"Ndem-Nam"', add
label define cm05a_prevarrd_lbl 104 `"Kette"', add
label define cm05a_prevarrd_lbl 105 `"Mbotoro"', add
label define cm05a_prevarrd_lbl 106 `"Mbang"', add
label define cm05a_prevarrd_lbl 107 `"Ndelele"', add
label define cm05a_prevarrd_lbl 108 `"Bombe"', add
label define cm05a_prevarrd_lbl 109 `"Belabo"', add
label define cm05a_prevarrd_lbl 110 `"Bétaré-Oya"', add
label define cm05a_prevarrd_lbl 111 `"Ngoura"', add
label define cm05a_prevarrd_lbl 112 `"Bertoua"', add
label define cm05a_prevarrd_lbl 113 `"Diang"', add
label define cm05a_prevarrd_lbl 114 `"Garoua-Boulaï"', add
label define cm05a_prevarrd_lbl 115 `"Bogo"', add
label define cm05a_prevarrd_lbl 116 `"Gazawa"', add
label define cm05a_prevarrd_lbl 117 `"Maroua"', add
label define cm05a_prevarrd_lbl 118 `"Dargala"', add
label define cm05a_prevarrd_lbl 119 `"Ndoukoula"', add
label define cm05a_prevarrd_lbl 120 `"Meri"', add
label define cm05a_prevarrd_lbl 121 `"Pette"', add
label define cm05a_prevarrd_lbl 122 `"Blangoua"', add
label define cm05a_prevarrd_lbl 123 `"Darak"', add
label define cm05a_prevarrd_lbl 124 `"Fotokol"', add
label define cm05a_prevarrd_lbl 125 `"Goulfey"', add
label define cm05a_prevarrd_lbl 126 `"Hile-Halifa"', add
label define cm05a_prevarrd_lbl 127 `"Kousseri"', add
label define cm05a_prevarrd_lbl 128 `"Logone-Birni"', add
label define cm05a_prevarrd_lbl 129 `"Zina"', add
label define cm05a_prevarrd_lbl 130 `"Makari"', add
label define cm05a_prevarrd_lbl 131 `"Waza"', add
label define cm05a_prevarrd_lbl 132 `"Datcheka"', add
label define cm05a_prevarrd_lbl 133 `"Gobo"', add
label define cm05a_prevarrd_lbl 134 `"Guere"', add
label define cm05a_prevarrd_lbl 135 `"Kaïkaï"', add
label define cm05a_prevarrd_lbl 136 `"Kalfou"', add
label define cm05a_prevarrd_lbl 137 `"Kar-Hay"', add
label define cm05a_prevarrd_lbl 138 `"Maga"', add
label define cm05a_prevarrd_lbl 139 `"Tchatibali"', add
label define cm05a_prevarrd_lbl 140 `"Vele"', add
label define cm05a_prevarrd_lbl 141 `"Wina"', add
label define cm05a_prevarrd_lbl 142 `"Yagoua"', add
label define cm05a_prevarrd_lbl 143 `"Guidiguis"', add
label define cm05a_prevarrd_lbl 144 `"Kaele"', add
label define cm05a_prevarrd_lbl 145 `"Mindif"', add
label define cm05a_prevarrd_lbl 146 `"Moulvoudaye"', add
label define cm05a_prevarrd_lbl 147 `"Moutourwa"', add
label define cm05a_prevarrd_lbl 148 `"Porhi"', add
label define cm05a_prevarrd_lbl 149 `"Taïbong"', add
label define cm05a_prevarrd_lbl 150 `"Kolofata"', add
label define cm05a_prevarrd_lbl 151 `"Mora"', add
label define cm05a_prevarrd_lbl 152 `"Tokombere"', add
label define cm05a_prevarrd_lbl 153 `"Bourrha"', add
label define cm05a_prevarrd_lbl 154 `"Hina"', add
label define cm05a_prevarrd_lbl 155 `"Koza"', add
label define cm05a_prevarrd_lbl 156 `"Mayo-Moskota"', add
label define cm05a_prevarrd_lbl 157 `"Mogode"', add
label define cm05a_prevarrd_lbl 158 `"Mokolo"', add
label define cm05a_prevarrd_lbl 159 `"Soulede Roua"', add
label define cm05a_prevarrd_lbl 160 `"Bare-Bakem"', add
label define cm05a_prevarrd_lbl 161 `"Dibombari"', add
label define cm05a_prevarrd_lbl 162 `"Fiko"', add
label define cm05a_prevarrd_lbl 163 `"Loum"', add
label define cm05a_prevarrd_lbl 164 `"Manjo"', add
label define cm05a_prevarrd_lbl 165 `"Mbanga"', add
label define cm05a_prevarrd_lbl 166 `"Mombo"', add
label define cm05a_prevarrd_lbl 167 `"Melong"', add
label define cm05a_prevarrd_lbl 168 `"Njombe-Penja"', add
label define cm05a_prevarrd_lbl 169 `"Nkongsamba"', add
label define cm05a_prevarrd_lbl 170 `"Nlonako"', add
label define cm05a_prevarrd_lbl 171 `"Nkondjock"', add
label define cm05a_prevarrd_lbl 172 `"Nord-Makombe"', add
label define cm05a_prevarrd_lbl 173 `"Yabassi"', add
label define cm05a_prevarrd_lbl 174 `"Yingui"', add
label define cm05a_prevarrd_lbl 175 `"Dizangue"', add
label define cm05a_prevarrd_lbl 176 `"Edéa"', add
label define cm05a_prevarrd_lbl 177 `"Mouanko"', add
label define cm05a_prevarrd_lbl 178 `"Ndom"', add
label define cm05a_prevarrd_lbl 179 `"Nyanon"', add
label define cm05a_prevarrd_lbl 180 `"Ngambe"', add
label define cm05a_prevarrd_lbl 181 `"Massok-Songloulou"', add
label define cm05a_prevarrd_lbl 182 `"Pouma"', add
label define cm05a_prevarrd_lbl 183 `"Douala 1"', add
label define cm05a_prevarrd_lbl 184 `"Douala 2"', add
label define cm05a_prevarrd_lbl 185 `"Douala 3"', add
label define cm05a_prevarrd_lbl 186 `"Douala 4"', add
label define cm05a_prevarrd_lbl 187 `"Douala 5"', add
label define cm05a_prevarrd_lbl 188 `"Manoka"', add
label define cm05a_prevarrd_lbl 189 `"Bibemi"', add
label define cm05a_prevarrd_lbl 190 `"Dembo"', add
label define cm05a_prevarrd_lbl 191 `"Lagdo"', add
label define cm05a_prevarrd_lbl 192 `"Garoua"', add
label define cm05a_prevarrd_lbl 193 `"Bascheo"', add
label define cm05a_prevarrd_lbl 194 `"Demsa"', add
label define cm05a_prevarrd_lbl 195 `"Touroua"', add
label define cm05a_prevarrd_lbl 196 `"Pitoua"', add
label define cm05a_prevarrd_lbl 197 `"Tcheboa"', add
label define cm05a_prevarrd_lbl 198 `"Beka"', add
label define cm05a_prevarrd_lbl 199 `"Poli"', add
label define cm05a_prevarrd_lbl 200 `"Figuil"', add
label define cm05a_prevarrd_lbl 201 `"Guider"', add
label define cm05a_prevarrd_lbl 202 `"Mayo-Oulo"', add
label define cm05a_prevarrd_lbl 203 `"Rey-Bouba"', add
label define cm05a_prevarrd_lbl 204 `"Tcholliré"', add
label define cm05a_prevarrd_lbl 205 `"Madingring"', add
label define cm05a_prevarrd_lbl 206 `"Touboro"', add
label define cm05a_prevarrd_lbl 207 `"Belo"', add
label define cm05a_prevarrd_lbl 208 `"Bum"', add
label define cm05a_prevarrd_lbl 209 `"Fundong"', add
label define cm05a_prevarrd_lbl 210 `"Njinikom"', add
label define cm05a_prevarrd_lbl 211 `"Jakiri"', add
label define cm05a_prevarrd_lbl 212 `"Kumbo"', add
label define cm05a_prevarrd_lbl 213 `"Mbven"', add
label define cm05a_prevarrd_lbl 214 `"Noni"', add
label define cm05a_prevarrd_lbl 215 `"Oku"', add
label define cm05a_prevarrd_lbl 216 `"Ako"', add
label define cm05a_prevarrd_lbl 217 `"Misaje"', add
label define cm05a_prevarrd_lbl 218 `"Ndu"', add
label define cm05a_prevarrd_lbl 219 `"Nkambe"', add
label define cm05a_prevarrd_lbl 220 `"Nwa"', add
label define cm05a_prevarrd_lbl 221 `"Fungom"', add
label define cm05a_prevarrd_lbl 222 `"Furu-Awa"', add
label define cm05a_prevarrd_lbl 223 `"Menchum-Valley"', add
label define cm05a_prevarrd_lbl 224 `"Wum"', add
label define cm05a_prevarrd_lbl 225 `"Bafut"', add
label define cm05a_prevarrd_lbl 226 `"Bali"', add
label define cm05a_prevarrd_lbl 227 `"bamenda"', add
label define cm05a_prevarrd_lbl 228 `"Santa"', add
label define cm05a_prevarrd_lbl 229 `"Tubah"', add
label define cm05a_prevarrd_lbl 230 `"Batibo"', add
label define cm05a_prevarrd_lbl 231 `"Mbengwi"', add
label define cm05a_prevarrd_lbl 232 `"Ngie"', add
label define cm05a_prevarrd_lbl 233 `"Njikwa"', add
label define cm05a_prevarrd_lbl 234 `"Widikum-Menka"', add
label define cm05a_prevarrd_lbl 235 `"Babessi"', add
label define cm05a_prevarrd_lbl 236 `"Balikumbat"', add
label define cm05a_prevarrd_lbl 237 `"Ndop"', add
label define cm05a_prevarrd_lbl 238 `"Babadjou"', add
label define cm05a_prevarrd_lbl 239 `"Batcham"', add
label define cm05a_prevarrd_lbl 240 `"Galim"', add
label define cm05a_prevarrd_lbl 241 `"Mbouda"', add
label define cm05a_prevarrd_lbl 242 `"Bafang"', add
label define cm05a_prevarrd_lbl 243 `"Bakou"', add
label define cm05a_prevarrd_lbl 244 `"Bana"', add
label define cm05a_prevarrd_lbl 245 `"Bandja"', add
label define cm05a_prevarrd_lbl 246 `"Kekem"', add
label define cm05a_prevarrd_lbl 247 `"Banwa"', add
label define cm05a_prevarrd_lbl 248 `"Baham"', add
label define cm05a_prevarrd_lbl 249 `"Bamendjou"', add
label define cm05a_prevarrd_lbl 250 `"Batie"', add
label define cm05a_prevarrd_lbl 251 `"Bangou"', add
label define cm05a_prevarrd_lbl 252 `"Bayangam"', add
label define cm05a_prevarrd_lbl 253 `"Poumougne"', add
label define cm05a_prevarrd_lbl 254 `"Djebem"', add
label define cm05a_prevarrd_lbl 255 `"Dschang"', add
label define cm05a_prevarrd_lbl 256 `"Fokoue"', add
label define cm05a_prevarrd_lbl 257 `"Nkong-Ni"', add
label define cm05a_prevarrd_lbl 258 `"Penka-Michel"', add
label define cm05a_prevarrd_lbl 259 `"Santchou"', add
label define cm05a_prevarrd_lbl 260 `"Bafoussam"', add
label define cm05a_prevarrd_lbl 261 `"Baleng"', add
label define cm05a_prevarrd_lbl 262 `"Bamougoum"', add
label define cm05a_prevarrd_lbl 263 `"Bangangte"', add
label define cm05a_prevarrd_lbl 264 `"Bassamba"', add
label define cm05a_prevarrd_lbl 265 `"Bazou"', add
label define cm05a_prevarrd_lbl 266 `"Tonga"', add
label define cm05a_prevarrd_lbl 267 `"Bangourain"', add
label define cm05a_prevarrd_lbl 268 `"Foumban"', add
label define cm05a_prevarrd_lbl 269 `"Foumbot"', add
label define cm05a_prevarrd_lbl 270 `"Kouoptamo"', add
label define cm05a_prevarrd_lbl 271 `"Koutaba"', add
label define cm05a_prevarrd_lbl 272 `"Magba"', add
label define cm05a_prevarrd_lbl 273 `"Malentouen"', add
label define cm05a_prevarrd_lbl 274 `"Massangan"', add
label define cm05a_prevarrd_lbl 275 `"Bengbis"', add
label define cm05a_prevarrd_lbl 276 `"Djoum"', add
label define cm05a_prevarrd_lbl 277 `"Meyomessala"', add
label define cm05a_prevarrd_lbl 278 `"Mintom"', add
label define cm05a_prevarrd_lbl 279 `"Oveng"', add
label define cm05a_prevarrd_lbl 280 `"Sangmelima"', add
label define cm05a_prevarrd_lbl 281 `"Zoetele"', add
label define cm05a_prevarrd_lbl 282 `"Biwong-Bane"', add
label define cm05a_prevarrd_lbl 283 `"Ebolowa"', add
label define cm05a_prevarrd_lbl 284 `"Mengong"', add
label define cm05a_prevarrd_lbl 285 `"Mvangan"', add
label define cm05a_prevarrd_lbl 286 `"Ngoulemakong"', add
label define cm05a_prevarrd_lbl 287 `"Akom II"', add
label define cm05a_prevarrd_lbl 288 `"Niete"', add
label define cm05a_prevarrd_lbl 289 `"Bipindi"', add
label define cm05a_prevarrd_lbl 290 `"Campo"', add
label define cm05a_prevarrd_lbl 291 `"Kribi"', add
label define cm05a_prevarrd_lbl 292 `"Lolodorf"', add
label define cm05a_prevarrd_lbl 293 `"Mvengue"', add
label define cm05a_prevarrd_lbl 294 `"Ambam"', add
label define cm05a_prevarrd_lbl 295 `"Ma'an"', add
label define cm05a_prevarrd_lbl 296 `"Olamze"', add
label define cm05a_prevarrd_lbl 297 `"Buea"', add
label define cm05a_prevarrd_lbl 298 `"West-Coast"', add
label define cm05a_prevarrd_lbl 299 `"Limbe"', add
label define cm05a_prevarrd_lbl 300 `"Muyuka"', add
label define cm05a_prevarrd_lbl 301 `"Tiko"', add
label define cm05a_prevarrd_lbl 302 `"Banguem"', add
label define cm05a_prevarrd_lbl 303 `"Nguti"', add
label define cm05a_prevarrd_lbl 304 `"Tombel"', add
label define cm05a_prevarrd_lbl 305 `"Alou"', add
label define cm05a_prevarrd_lbl 306 `"Fontem"', add
label define cm05a_prevarrd_lbl 307 `"Wabane"', add
label define cm05a_prevarrd_lbl 308 `"Akwaya"', add
label define cm05a_prevarrd_lbl 309 `"Eyumodjock"', add
label define cm05a_prevarrd_lbl 310 `"Mamfe"', add
label define cm05a_prevarrd_lbl 311 `"Upper Bayang"', add
label define cm05a_prevarrd_lbl 312 `"Kumba"', add
label define cm05a_prevarrd_lbl 313 `"Konye"', add
label define cm05a_prevarrd_lbl 314 `"Mbonge"', add
label define cm05a_prevarrd_lbl 315 `"Bamusso"', add
label define cm05a_prevarrd_lbl 316 `"Ekondo Titi"', add
label define cm05a_prevarrd_lbl 317 `"Dikome-Balue"', add
label define cm05a_prevarrd_lbl 318 `"Idabato"', add
label define cm05a_prevarrd_lbl 319 `"Isanguele"', add
label define cm05a_prevarrd_lbl 320 `"Kombo Abedimo"', add
label define cm05a_prevarrd_lbl 321 `"Kombo-Itindi"', add
label define cm05a_prevarrd_lbl 322 `"Mumdemba"', add
label define cm05a_prevarrd_lbl 323 `"Toko"', add
label define cm05a_prevarrd_lbl 399 `"Unknown arrondissement"', add
label define cm05a_prevarrd_lbl 400 `"Abroad"', add
label define cm05a_prevarrd_lbl 998 `"Unknown"', add
label define cm05a_prevarrd_lbl 999 `"NIU (not in universe)"', add
label values cm05a_prevarrd cm05a_prevarrd_lbl

label define cm05a_prevdept_lbl 01 `"Djerem"'
label define cm05a_prevdept_lbl 02 `"Faro et Deo"', add
label define cm05a_prevdept_lbl 03 `"Mayo Banyo"', add
label define cm05a_prevdept_lbl 04 `"Mbere"', add
label define cm05a_prevdept_lbl 05 `"Vina"', add
label define cm05a_prevdept_lbl 06 `"Haute Sanaga"', add
label define cm05a_prevdept_lbl 07 `"Lekié"', add
label define cm05a_prevdept_lbl 08 `"Mbam et Inoubou"', add
label define cm05a_prevdept_lbl 09 `"Mbam et Kim"', add
label define cm05a_prevdept_lbl 10 `"Mefou et Afamba"', add
label define cm05a_prevdept_lbl 11 `"Mefou et Akono"', add
label define cm05a_prevdept_lbl 12 `"Mfoundi"', add
label define cm05a_prevdept_lbl 13 `"Nyong et Kelle"', add
label define cm05a_prevdept_lbl 14 `"Nyong et Mfoumou"', add
label define cm05a_prevdept_lbl 15 `"Nyong et So'o"', add
label define cm05a_prevdept_lbl 16 `"Boumba et Ngoko"', add
label define cm05a_prevdept_lbl 17 `"Haut Nyong"', add
label define cm05a_prevdept_lbl 18 `"Kadey"', add
label define cm05a_prevdept_lbl 19 `"Lom et Djerem"', add
label define cm05a_prevdept_lbl 20 `"Diamare"', add
label define cm05a_prevdept_lbl 21 `"Logone et Chari"', add
label define cm05a_prevdept_lbl 22 `"Mayo Danay"', add
label define cm05a_prevdept_lbl 23 `"Mayo Kani"', add
label define cm05a_prevdept_lbl 24 `"Mayo Sava"', add
label define cm05a_prevdept_lbl 25 `"Mayo Tsanaga"', add
label define cm05a_prevdept_lbl 26 `"Moungo"', add
label define cm05a_prevdept_lbl 27 `"Nkam"', add
label define cm05a_prevdept_lbl 28 `"Sanaga Maritime"', add
label define cm05a_prevdept_lbl 29 `"Wouri"', add
label define cm05a_prevdept_lbl 30 `"Benoue"', add
label define cm05a_prevdept_lbl 31 `"Faro"', add
label define cm05a_prevdept_lbl 32 `"Mayo Louti"', add
label define cm05a_prevdept_lbl 33 `"Mayo Rey"', add
label define cm05a_prevdept_lbl 34 `"Boyo"', add
label define cm05a_prevdept_lbl 35 `"Bui"', add
label define cm05a_prevdept_lbl 36 `"Donga Mantung"', add
label define cm05a_prevdept_lbl 37 `"Menchum"', add
label define cm05a_prevdept_lbl 38 `"Mezam"', add
label define cm05a_prevdept_lbl 39 `"Momo"', add
label define cm05a_prevdept_lbl 40 `"Ngo Ketungja"', add
label define cm05a_prevdept_lbl 41 `"Bamboutos"', add
label define cm05a_prevdept_lbl 42 `"Haut Nkam"', add
label define cm05a_prevdept_lbl 43 `"Hauts Plateaux"', add
label define cm05a_prevdept_lbl 44 `"Koung Khi"', add
label define cm05a_prevdept_lbl 45 `"Menoua"', add
label define cm05a_prevdept_lbl 46 `"Mifi"', add
label define cm05a_prevdept_lbl 47 `"Nde"', add
label define cm05a_prevdept_lbl 48 `"Noun"', add
label define cm05a_prevdept_lbl 49 `"Dja et Lobo"', add
label define cm05a_prevdept_lbl 50 `"Mvilla"', add
label define cm05a_prevdept_lbl 51 `"Océan"', add
label define cm05a_prevdept_lbl 52 `"Vallée du Ntem"', add
label define cm05a_prevdept_lbl 53 `"Fako"', add
label define cm05a_prevdept_lbl 54 `"Koupe et Manengouba"', add
label define cm05a_prevdept_lbl 55 `"MISSING-GF"', add
label define cm05a_prevdept_lbl 56 `"Lebialem"', add
label define cm05a_prevdept_lbl 57 `"Meme"', add
label define cm05a_prevdept_lbl 58 `"Ndian"', add
label define cm05a_prevdept_lbl 97 `"Abroad"', add
label define cm05a_prevdept_lbl 98 `"Unknown"', add
label define cm05a_prevdept_lbl 99 `"NIU (not in universe)"', add
label values cm05a_prevdept cm05a_prevdept_lbl

label define cm05a_prevprov_lbl 01 `"Adamoua"'
label define cm05a_prevprov_lbl 02 `"Centre"', add
label define cm05a_prevprov_lbl 03 `"Est"', add
label define cm05a_prevprov_lbl 04 `"Extrème Nord"', add
label define cm05a_prevprov_lbl 05 `"Littoral"', add
label define cm05a_prevprov_lbl 06 `"Nord"', add
label define cm05a_prevprov_lbl 07 `"Nord Ouest"', add
label define cm05a_prevprov_lbl 08 `"Ouest"', add
label define cm05a_prevprov_lbl 09 `"Sud"', add
label define cm05a_prevprov_lbl 10 `"Sud Ouest"', add
label define cm05a_prevprov_lbl 97 `"Abroad"', add
label define cm05a_prevprov_lbl 98 `"Unknown"', add
label define cm05a_prevprov_lbl 99 `"NIU (not in universe)"', add
label values cm05a_prevprov cm05a_prevprov_lbl

label define cm05a_prevctry_lbl 001 `"Cameroon"'
label define cm05a_prevctry_lbl 402 `"Egypt"', add
label define cm05a_prevctry_lbl 403 `"Libya"', add
label define cm05a_prevctry_lbl 404 `"Morocco"', add
label define cm05a_prevctry_lbl 407 `"Benin"', add
label define cm05a_prevctry_lbl 408 `"Burkina Faso"', add
label define cm05a_prevctry_lbl 410 `"Ivory Coast"', add
label define cm05a_prevctry_lbl 412 `"Ghana"', add
label define cm05a_prevctry_lbl 413 `"Guinea"', add
label define cm05a_prevctry_lbl 415 `"Liberia"', add
label define cm05a_prevctry_lbl 416 `"Mali"', add
label define cm05a_prevctry_lbl 418 `"Niger"', add
label define cm05a_prevctry_lbl 419 `"Nigeria"', add
label define cm05a_prevctry_lbl 420 `"Senegal"', add
label define cm05a_prevctry_lbl 422 `"Togo"', add
label define cm05a_prevctry_lbl 434 `"Rwanda"', add
label define cm05a_prevctry_lbl 440 `"Angola"', add
label define cm05a_prevctry_lbl 442 `"Congo"', add
label define cm05a_prevctry_lbl 443 `"Democratic Republic of Congo"', add
label define cm05a_prevctry_lbl 444 `"Gabon"', add
label define cm05a_prevctry_lbl 445 `"Equatorial Guinea"', add
label define cm05a_prevctry_lbl 446 `"Central African Republic"', add
label define cm05a_prevctry_lbl 448 `"Chad"', add
label define cm05a_prevctry_lbl 449 `"South Africa"', add
label define cm05a_prevctry_lbl 450 `"Botswana"', add
label define cm05a_prevctry_lbl 499 `"Other Africa"', add
label define cm05a_prevctry_lbl 501 `"Canada"', add
label define cm05a_prevctry_lbl 502 `"USA"', add
label define cm05a_prevctry_lbl 599 `"Other Americas"', add
label define cm05a_prevctry_lbl 602 `"Saudi Arabia"', add
label define cm05a_prevctry_lbl 609 `"China"', add
label define cm05a_prevctry_lbl 611 `"North Korea"', add
label define cm05a_prevctry_lbl 615 `"India"', add
label define cm05a_prevctry_lbl 626 `"Lebanon"', add
label define cm05a_prevctry_lbl 644 `"East Timor"', add
label define cm05a_prevctry_lbl 699 `"Other Asia"', add
label define cm05a_prevctry_lbl 702 `"Germany"', add
label define cm05a_prevctry_lbl 704 `"England"', add
label define cm05a_prevctry_lbl 708 `"Belgium"', add
label define cm05a_prevctry_lbl 715 `"Spain"', add
label define cm05a_prevctry_lbl 718 `"France"', add
label define cm05a_prevctry_lbl 720 `"Greece"', add
label define cm05a_prevctry_lbl 725 `"Italy"', add
label define cm05a_prevctry_lbl 735 `"Netherlands"', add
label define cm05a_prevctry_lbl 739 `"Russia"', add
label define cm05a_prevctry_lbl 745 `"Switzerland"', add
label define cm05a_prevctry_lbl 799 `"Other Europe"', add
label define cm05a_prevctry_lbl 899 `"Oceania"', add
label define cm05a_prevctry_lbl 998 `"Unknown"', add
label define cm05a_prevctry_lbl 999 `"NIU (not in universe)"', add
label values cm05a_prevctry cm05a_prevctry_lbl

label define cm05a_resdur_lbl 000 `"0"'
label define cm05a_resdur_lbl 001 `"1"', add
label define cm05a_resdur_lbl 002 `"2"', add
label define cm05a_resdur_lbl 003 `"3"', add
label define cm05a_resdur_lbl 004 `"4"', add
label define cm05a_resdur_lbl 005 `"5"', add
label define cm05a_resdur_lbl 006 `"6"', add
label define cm05a_resdur_lbl 007 `"7"', add
label define cm05a_resdur_lbl 008 `"8"', add
label define cm05a_resdur_lbl 009 `"9"', add
label define cm05a_resdur_lbl 010 `"10"', add
label define cm05a_resdur_lbl 011 `"11"', add
label define cm05a_resdur_lbl 012 `"12"', add
label define cm05a_resdur_lbl 013 `"13"', add
label define cm05a_resdur_lbl 014 `"14"', add
label define cm05a_resdur_lbl 015 `"15"', add
label define cm05a_resdur_lbl 016 `"16"', add
label define cm05a_resdur_lbl 017 `"17"', add
label define cm05a_resdur_lbl 018 `"18"', add
label define cm05a_resdur_lbl 019 `"19"', add
label define cm05a_resdur_lbl 020 `"20"', add
label define cm05a_resdur_lbl 021 `"21"', add
label define cm05a_resdur_lbl 022 `"22"', add
label define cm05a_resdur_lbl 023 `"23"', add
label define cm05a_resdur_lbl 024 `"24"', add
label define cm05a_resdur_lbl 025 `"25"', add
label define cm05a_resdur_lbl 026 `"26"', add
label define cm05a_resdur_lbl 027 `"27"', add
label define cm05a_resdur_lbl 028 `"28"', add
label define cm05a_resdur_lbl 029 `"29"', add
label define cm05a_resdur_lbl 030 `"30"', add
label define cm05a_resdur_lbl 031 `"31"', add
label define cm05a_resdur_lbl 032 `"32"', add
label define cm05a_resdur_lbl 033 `"33"', add
label define cm05a_resdur_lbl 034 `"34"', add
label define cm05a_resdur_lbl 035 `"35"', add
label define cm05a_resdur_lbl 036 `"36"', add
label define cm05a_resdur_lbl 037 `"37"', add
label define cm05a_resdur_lbl 038 `"38"', add
label define cm05a_resdur_lbl 039 `"39"', add
label define cm05a_resdur_lbl 040 `"40"', add
label define cm05a_resdur_lbl 041 `"41"', add
label define cm05a_resdur_lbl 042 `"42"', add
label define cm05a_resdur_lbl 043 `"43"', add
label define cm05a_resdur_lbl 044 `"44"', add
label define cm05a_resdur_lbl 045 `"45"', add
label define cm05a_resdur_lbl 046 `"46"', add
label define cm05a_resdur_lbl 047 `"47"', add
label define cm05a_resdur_lbl 048 `"48"', add
label define cm05a_resdur_lbl 049 `"49"', add
label define cm05a_resdur_lbl 050 `"50"', add
label define cm05a_resdur_lbl 051 `"51"', add
label define cm05a_resdur_lbl 052 `"52"', add
label define cm05a_resdur_lbl 053 `"53"', add
label define cm05a_resdur_lbl 054 `"54"', add
label define cm05a_resdur_lbl 055 `"55"', add
label define cm05a_resdur_lbl 056 `"56"', add
label define cm05a_resdur_lbl 057 `"57"', add
label define cm05a_resdur_lbl 058 `"58"', add
label define cm05a_resdur_lbl 059 `"59"', add
label define cm05a_resdur_lbl 060 `"60"', add
label define cm05a_resdur_lbl 061 `"61"', add
label define cm05a_resdur_lbl 062 `"62"', add
label define cm05a_resdur_lbl 063 `"63"', add
label define cm05a_resdur_lbl 064 `"64"', add
label define cm05a_resdur_lbl 065 `"65"', add
label define cm05a_resdur_lbl 066 `"66"', add
label define cm05a_resdur_lbl 067 `"67"', add
label define cm05a_resdur_lbl 068 `"68"', add
label define cm05a_resdur_lbl 069 `"69"', add
label define cm05a_resdur_lbl 070 `"70"', add
label define cm05a_resdur_lbl 071 `"71"', add
label define cm05a_resdur_lbl 072 `"72"', add
label define cm05a_resdur_lbl 073 `"73"', add
label define cm05a_resdur_lbl 074 `"74"', add
label define cm05a_resdur_lbl 075 `"75"', add
label define cm05a_resdur_lbl 076 `"76"', add
label define cm05a_resdur_lbl 077 `"77"', add
label define cm05a_resdur_lbl 078 `"78"', add
label define cm05a_resdur_lbl 079 `"79"', add
label define cm05a_resdur_lbl 080 `"80"', add
label define cm05a_resdur_lbl 081 `"81"', add
label define cm05a_resdur_lbl 082 `"82"', add
label define cm05a_resdur_lbl 083 `"83"', add
label define cm05a_resdur_lbl 084 `"84"', add
label define cm05a_resdur_lbl 085 `"85"', add
label define cm05a_resdur_lbl 086 `"86"', add
label define cm05a_resdur_lbl 087 `"87"', add
label define cm05a_resdur_lbl 088 `"88"', add
label define cm05a_resdur_lbl 089 `"89"', add
label define cm05a_resdur_lbl 090 `"90"', add
label define cm05a_resdur_lbl 091 `"91"', add
label define cm05a_resdur_lbl 092 `"92"', add
label define cm05a_resdur_lbl 093 `"93"', add
label define cm05a_resdur_lbl 094 `"94"', add
label define cm05a_resdur_lbl 095 `"95"', add
label define cm05a_resdur_lbl 096 `"96"', add
label define cm05a_resdur_lbl 097 `"97"', add
label define cm05a_resdur_lbl 098 `"98"', add
label define cm05a_resdur_lbl 099 `"99"', add
label define cm05a_resdur_lbl 999 `"NIU (not in universe)"', add
label values cm05a_resdur cm05a_resdur_lbl

label define cm05a_nation_lbl 407 `"Benin"'
label define cm05a_nation_lbl 408 `"Burkina Faso"', add
label define cm05a_nation_lbl 410 `"Ivory Coast"', add
label define cm05a_nation_lbl 412 `"Ghana"', add
label define cm05a_nation_lbl 413 `"Guinea"', add
label define cm05a_nation_lbl 415 `"Liberia"', add
label define cm05a_nation_lbl 416 `"Mali"', add
label define cm05a_nation_lbl 417 `"Mauritania"', add
label define cm05a_nation_lbl 418 `"Niger"', add
label define cm05a_nation_lbl 419 `"Nigeria"', add
label define cm05a_nation_lbl 420 `"Senegal"', add
label define cm05a_nation_lbl 422 `"Togo"', add
label define cm05a_nation_lbl 434 `"Rwanda"', add
label define cm05a_nation_lbl 440 `"Angola"', add
label define cm05a_nation_lbl 441 `"Cameroon"', add
label define cm05a_nation_lbl 442 `"Congo"', add
label define cm05a_nation_lbl 443 `"Democratic Republic of Congo"', add
label define cm05a_nation_lbl 444 `"Gabon"', add
label define cm05a_nation_lbl 445 `"Equatorial Guinea"', add
label define cm05a_nation_lbl 446 `"Central African Republic"', add
label define cm05a_nation_lbl 447 `"Sao Tome and Principe"', add
label define cm05a_nation_lbl 448 `"Chad"', add
label define cm05a_nation_lbl 499 `"Other African"', add
label define cm05a_nation_lbl 502 `"USA"', add
label define cm05a_nation_lbl 599 `"Other nations in the Americas"', add
label define cm05a_nation_lbl 609 `"China"', add
label define cm05a_nation_lbl 615 `"India"', add
label define cm05a_nation_lbl 626 `"Lebanon"', add
label define cm05a_nation_lbl 699 `"Other Asian and Oceanian"', add
label define cm05a_nation_lbl 702 `"Germany"', add
label define cm05a_nation_lbl 704 `"England"', add
label define cm05a_nation_lbl 715 `"Spain"', add
label define cm05a_nation_lbl 718 `"France"', add
label define cm05a_nation_lbl 720 `"Greece"', add
label define cm05a_nation_lbl 725 `"Italy"', add
label define cm05a_nation_lbl 744 `"Sweden"', add
label define cm05a_nation_lbl 799 `"Other European"', add
label define cm05a_nation_lbl 998 `"Unknown"', add
label define cm05a_nation_lbl 999 `"NIU (not in universe)"', add
label values cm05a_nation cm05a_nation_lbl

label define cm05a_religion_lbl 0 `"NIU (not in universe)"'
label define cm05a_religion_lbl 1 `"Catholic"', add
label define cm05a_religion_lbl 2 `"Orthodox"', add
label define cm05a_religion_lbl 3 `"Protestant"', add
label define cm05a_religion_lbl 4 `"Other Christian"', add
label define cm05a_religion_lbl 5 `"Muslim"', add
label define cm05a_religion_lbl 6 `"Animist"', add
label define cm05a_religion_lbl 7 `"Other religion"', add
label define cm05a_religion_lbl 8 `"Free thinker"', add
label define cm05a_religion_lbl 9 `"Unknown"', add
label values cm05a_religion cm05a_religion_lbl

label define cm05a_disab_lbl 00 `"No handicap"'
label define cm05a_disab_lbl 01 `"Deaf"', add
label define cm05a_disab_lbl 02 `"Mute"', add
label define cm05a_disab_lbl 03 `"Deaf and mute"', add
label define cm05a_disab_lbl 04 `"Blind"', add
label define cm05a_disab_lbl 05 `"Blind and deaf"', add
label define cm05a_disab_lbl 06 `"Blind and mute"', add
label define cm05a_disab_lbl 07 `"Leper"', add
label define cm05a_disab_lbl 08 `"Upper limb diability"', add
label define cm05a_disab_lbl 09 `"Lower limb disability"', add
label define cm05a_disab_lbl 10 `"Mental deficiency"', add
label define cm05a_disab_lbl 11 `"Albino"', add
label define cm05a_disab_lbl 12 `"Other handicap"', add
label define cm05a_disab_lbl 99 `"NIU (not in universe)"', add
label values cm05a_disab cm05a_disab_lbl

label define cm05a_chronic_lbl 00 `"No chronic disease"'
label define cm05a_chronic_lbl 01 `"Diabetes"', add
label define cm05a_chronic_lbl 02 `"Hypertension"', add
label define cm05a_chronic_lbl 03 `"Diabetes and Hypertension"', add
label define cm05a_chronic_lbl 04 `"Cancer"', add
label define cm05a_chronic_lbl 05 `"Cancer with other combinations of Hypertension and Diabetes"', add
label define cm05a_chronic_lbl 08 `"Asthma"', add
label define cm05a_chronic_lbl 10 `"Asthma and Hypertension"', add
label define cm05a_chronic_lbl 11 `"Asthma, Diabetes and Hypertention"', add
label define cm05a_chronic_lbl 12 `"Asthma and Cancer"', add
label define cm05a_chronic_lbl 15 `"Asthma and other disease, n.e.c."', add
label define cm05a_chronic_lbl 16 `"Tuberculosis"', add
label define cm05a_chronic_lbl 20 `"Tuberculosis and Cancer"', add
label define cm05a_chronic_lbl 21 `"Tuberculosis, Cancer and Diabetes"', add
label define cm05a_chronic_lbl 22 `"Tuberculosis, Cancer and Hypertension"', add
label define cm05a_chronic_lbl 30 `"Tuberculosis, Asthma, Cancer and Hypertension"', add
label define cm05a_chronic_lbl 31 `"Tuberculosis with other diseases or disease combinations, n.e.c."', add
label define cm05a_chronic_lbl 32 `"Sickle cell"', add
label define cm05a_chronic_lbl 40 `"Sickle cell and Asthma"', add
label define cm05a_chronic_lbl 41 `"Sickle cell, Asthma and Diabetes"', add
label define cm05a_chronic_lbl 44 `"Sickle cell, Asthma and Cancer"', add
label define cm05a_chronic_lbl 48 `"Sickle cell and Tuberculosis"', add
label define cm05a_chronic_lbl 50 `"Sickle cell, Tuberculosis and Hypertension"', add
label define cm05a_chronic_lbl 60 `"Sickle cell, Tuberculosis, Asthma and Cancer"', add
label define cm05a_chronic_lbl 63 `"Sickle cell and other diseases or disease combinations, n.e.c."', add
label define cm05a_chronic_lbl 64 `"Epilepsy"', add
label define cm05a_chronic_lbl 99 `"NIU (not in universe)"', add
label values cm05a_chronic cm05a_chronic_lbl

label define cm05a_mortfa_lbl 1 `"Yes"'
label define cm05a_mortfa_lbl 2 `"No"', add
label define cm05a_mortfa_lbl 8 `"Unknown"', add
label define cm05a_mortfa_lbl 9 `"NIU (not in universe)"', add
label values cm05a_mortfa cm05a_mortfa_lbl

label define cm05a_mortmo_lbl 1 `"Yes"'
label define cm05a_mortmo_lbl 2 `"No"', add
label define cm05a_mortmo_lbl 8 `"Unknown"', add
label define cm05a_mortmo_lbl 9 `"NIU (not in universe)"', add
label values cm05a_mortmo cm05a_mortmo_lbl

label define cm05a_language_lbl 00 `"No national language"'
label define cm05a_language_lbl 01 `"Akoose"', add
label define cm05a_language_lbl 02 `"Arabe"', add
label define cm05a_language_lbl 03 `"Bafaw-Balong"', add
label define cm05a_language_lbl 04 `"Bafia"', add
label define cm05a_language_lbl 05 `"Bafut"', add
label define cm05a_language_lbl 06 `"Baka"', add
label define cm05a_language_lbl 07 `"Bakossi"', add
label define cm05a_language_lbl 08 `"Bakweri"', add
label define cm05a_language_lbl 09 `"Bali"', add
label define cm05a_language_lbl 10 `"Bamoun"', add
label define cm05a_language_lbl 11 `"Bana"', add
label define cm05a_language_lbl 12 `"Bangolan"', add
label define cm05a_language_lbl 13 `"Bassaa"', add
label define cm05a_language_lbl 14 `"Beti"', add
label define cm05a_language_lbl 15 `"Buduma"', add
label define cm05a_language_lbl 16 `"Bulu"', add
label define cm05a_language_lbl 18 `"Daba"', add
label define cm05a_language_lbl 19 `"Denya"', add
label define cm05a_language_lbl 20 `"Dii"', add
label define cm05a_language_lbl 21 `"Doyayo"', add
label define cm05a_language_lbl 22 `"Duala"', add
label define cm05a_language_lbl 23 `"Ejagham"', add
label define cm05a_language_lbl 24 `"Eton"', add
label define cm05a_language_lbl 25 `"Ewondo"', add
label define cm05a_language_lbl 26 `"South Fali"', add
label define cm05a_language_lbl 27 `"Fefe"', add
label define cm05a_language_lbl 28 `"Fufulde"', add
label define cm05a_language_lbl 29 `"Gbaya (north east)"', add
label define cm05a_language_lbl 30 `"Gbaya (south west)"', add
label define cm05a_language_lbl 31 `"Ghomala"', add
label define cm05a_language_lbl 32 `"South giziga"', add
label define cm05a_language_lbl 33 `"Gude"', add
label define cm05a_language_lbl 34 `"Gyele (Bagvele)"', add
label define cm05a_language_lbl 35 `"Haoussa"', add
label define cm05a_language_lbl 37 `"Kako"', add
label define cm05a_language_lbl 38 `"Karang (East Mbum)"', add
label define cm05a_language_lbl 40 `"Kenyang"', add
label define cm05a_language_lbl 42 `"Kom"', add
label define cm05a_language_lbl 43 `"Koozime"', add
label define cm05a_language_lbl 44 `"Kuo"', add
label define cm05a_language_lbl 45 `"Lamnso"', add
label define cm05a_language_lbl 46 `"Limbum"', add
label define cm05a_language_lbl 48 `"Mafa"', add
label define cm05a_language_lbl 49 `"Makaa"', add
label define cm05a_language_lbl 50 `"Mambila"', add
label define cm05a_language_lbl 51 `"Masana"', add
label define cm05a_language_lbl 53 `"Mbembe Tigon"', add
label define cm05a_language_lbl 54 `"Mbo"', add
label define cm05a_language_lbl 55 `"Medumba"', add
label define cm05a_language_lbl 59 `"Meta"', add
label define cm05a_language_lbl 60 `"Mofo Gudur (south mofu)"', add
label define cm05a_language_lbl 62 `"Mundani"', add
label define cm05a_language_lbl 63 `"Musgum"', add
label define cm05a_language_lbl 64 `"Ngiemboon"', add
label define cm05a_language_lbl 65 `"Nguemba"', add
label define cm05a_language_lbl 67 `"Noone"', add
label define cm05a_language_lbl 68 `"Ntoumou"', add
label define cm05a_language_lbl 69 `"Nugunu"', add
label define cm05a_language_lbl 70 `"Oku"', add
label define cm05a_language_lbl 72 `"Tikar"', add
label define cm05a_language_lbl 73 `"Tunen"', add
label define cm05a_language_lbl 74 `"Tupuri"', add
label define cm05a_language_lbl 76 `"Vute"', add
label define cm05a_language_lbl 77 `"Wandala"', add
label define cm05a_language_lbl 80 `"Yamba"', add
label define cm05a_language_lbl 81 `"Yambeta"', add
label define cm05a_language_lbl 82 `"Yemba"', add
label define cm05a_language_lbl 83 `"Mundang"', add
label define cm05a_language_lbl 84 `"Mbum"', add
label define cm05a_language_lbl 97 `"Other languages, suppressed for confidentiality"', add
label define cm05a_language_lbl 98 `"Unknown"', add
label define cm05a_language_lbl 99 `"NIU (not in universe)"', add
label values cm05a_language cm05a_language_lbl

label define cm05a_readeng_lbl 1 `"Yes"'
label define cm05a_readeng_lbl 2 `"No"', add
label define cm05a_readeng_lbl 9 `"NIU (not in universe)"', add
label values cm05a_readeng cm05a_readeng_lbl

label define cm05a_writeeng_lbl 1 `"Yes"'
label define cm05a_writeeng_lbl 2 `"No"', add
label define cm05a_writeeng_lbl 9 `"NIU (not in universe)"', add
label values cm05a_writeeng cm05a_writeeng_lbl

label define cm05a_spkeng_lbl 1 `"Yes"'
label define cm05a_spkeng_lbl 2 `"No"', add
label define cm05a_spkeng_lbl 9 `"NIU (not in universe)"', add
label values cm05a_spkeng cm05a_spkeng_lbl

label define cm05a_readfrn_lbl 1 `"Yes"'
label define cm05a_readfrn_lbl 2 `"No"', add
label define cm05a_readfrn_lbl 9 `"NIU (not in universe)"', add
label values cm05a_readfrn cm05a_readfrn_lbl

label define cm05a_writfrn_lbl 1 `"Yes"'
label define cm05a_writfrn_lbl 2 `"No"', add
label define cm05a_writfrn_lbl 9 `"NIU (not in universe)"', add
label values cm05a_writfrn cm05a_writfrn_lbl

label define cm05a_spkfrn_lbl 1 `"Yes"'
label define cm05a_spkfrn_lbl 2 `"No"', add
label define cm05a_spkfrn_lbl 9 `"NIU (not in universe)"', add
label values cm05a_spkfrn cm05a_spkfrn_lbl

label define cm05a_everschl_lbl 1 `"English and French"'
label define cm05a_everschl_lbl 2 `"French"', add
label define cm05a_everschl_lbl 3 `"English"', add
label define cm05a_everschl_lbl 4 `"Other system"', add
label define cm05a_everschl_lbl 5 `"Never attended"', add
label define cm05a_everschl_lbl 8 `"Unknown"', add
label define cm05a_everschl_lbl 9 `"NIU (not in universe)"', add
label values cm05a_everschl cm05a_everschl_lbl

label define cm05a_school_lbl 1 `"English and French"'
label define cm05a_school_lbl 2 `"French"', add
label define cm05a_school_lbl 3 `"English"', add
label define cm05a_school_lbl 4 `"Other system"', add
label define cm05a_school_lbl 5 `"Does not attend school"', add
label define cm05a_school_lbl 8 `"Unknown"', add
label define cm05a_school_lbl 9 `"NIU (not in universe)"', add
label values cm05a_school cm05a_school_lbl

label define cm05a_edsect_lbl 1 `"Public"'
label define cm05a_edsect_lbl 2 `"Private denominational"', add
label define cm05a_edsect_lbl 3 `"Private non-denominational"', add
label define cm05a_edsect_lbl 8 `"Unknown"', add
label define cm05a_edsect_lbl 9 `"NIU (not in universe)"', add
label values cm05a_edsect cm05a_edsect_lbl

label define cm05a_profesn_lbl 011 `"Armed forces"'
label define cm05a_profesn_lbl 012 `"Gendarmery (military force charged with police duties)"', add
label define cm05a_profesn_lbl 013 `"Police"', add
label define cm05a_profesn_lbl 014 `"Armed forces n.e.c"', add
label define cm05a_profesn_lbl 111 `"Members of the executive and legislative bodies"', add
label define cm05a_profesn_lbl 112 `"Senior executives of public administration"', add
label define cm05a_profesn_lbl 113 `"Traditional chiefs and heads of villages"', add
label define cm05a_profesn_lbl 114 `"Executives of public and semi-public"', add
label define cm05a_profesn_lbl 115 `"Heads of mission diplomatic and international organizations"', add
label define cm05a_profesn_lbl 117 `"Officers and directors of organizations of employers or workers"', add
label define cm05a_profesn_lbl 119 `"Other members of the executive and legislative bodies, and senior government n.e.c"', add
label define cm05a_profesn_lbl 121 `"Ceos and directors of companies and private corporations modern"', add
label define cm05a_profesn_lbl 122 `"Senior management, production and operations enterprises and companies in the modern sector"', add
label define cm05a_profesn_lbl 123 `"Senior management companies and corporations in the modern sector"', add
label define cm05a_profesn_lbl 131 `"Managers of small and medium enterprise (SME PMI)"', add
label define cm05a_profesn_lbl 139 `"Other leaders and managers n.e.c"', add
label define cm05a_profesn_lbl 211 `"Physicists, geologists, meteorologists, astronomers, and similar geophysicists"', add
label define cm05a_profesn_lbl 212 `"Mathematicians, statisticians and assimilated"', add
label define cm05a_profesn_lbl 213 `"Techies engineer, engineer cyberneticians engineer telecommunications engineer and assimilated"', add
label define cm05a_profesn_lbl 214 `"Engineer, architects, planners, surveyors and assimilated"', add
label define cm05a_profesn_lbl 215 `"Civil engineers, engineer of public works, civil engineer pavement, cartographers engineer, engineer surveyors, engineers surveyors"', add
label define cm05a_profesn_lbl 216 `"Electrical engineers, electronics engineers, electricians engineers"', add
label define cm05a_profesn_lbl 217 `"Agronomist, agriculture engineer, engineer of rural engineering, engineer and engineer zootechnician assimilated"', add
label define cm05a_profesn_lbl 218 `"Engineer air navigation drivers aircraft commanders and assimilated"', add
label define cm05a_profesn_lbl 219 `"Engineer n.e.c"', add
label define cm05a_profesn_lbl 221 `"Biologist, zoologist, botanist, agronomist, bacteriologist, pharmacologist"', add
label define cm05a_profesn_lbl 222 `"Physicians, dentists, pharmacists, veterinarians"', add
label define cm05a_profesn_lbl 223 `"Senior nurses and midwives"', add
label define cm05a_profesn_lbl 229 `"Other medical scientists and life sciences"', add
label define cm05a_profesn_lbl 231 `"College, university and higher education institutions"', add
label define cm05a_profesn_lbl 232 `"Professor of secondary education"', add
label define cm05a_profesn_lbl 233 `"Teacher of primary and pre-primary"', add
label define cm05a_profesn_lbl 234 `"Teachers specialized in the education of disabled"', add
label define cm05a_profesn_lbl 239 `"Other teaching professionals"', add
label define cm05a_profesn_lbl 241 `"Administrative and commercial enterprises specialists"', add
label define cm05a_profesn_lbl 242 `"Legal professionals (lawyers, magistrates and the like)"', add
label define cm05a_profesn_lbl 243 `"Archivists, librarians, documentalists"', add
label define cm05a_profesn_lbl 244 `"Social science (economist, sociologist, anthropologist, demographer, philosopher, psychologist, historian, linguist, translator, interpreter, specialist in political science, social work specialists)"', add
label define cm05a_profesn_lbl 245 `"Writers and creative artists (author, journalist, editors and other specialists information processing, composer, singers, choreographers, sculptor, painters and assimilated)"', add
label define cm05a_profesn_lbl 246 `"Clergy"', add
label define cm05a_profesn_lbl 249 `"Other professionals intellectual and scientific"', add
label define cm05a_profesn_lbl 311 `"Techniques of physical and engineering science"', add
label define cm05a_profesn_lbl 312 `"Console operators and other operators of computer hardware technicians"', add
label define cm05a_profesn_lbl 313 `"Optical and electronic equipment"', add
label define cm05a_profesn_lbl 314 `"Technicians means of sea and air transport"', add
label define cm05a_profesn_lbl 315 `"Inspector of buildings, safety, hygiene and quality"', add
label define cm05a_profesn_lbl 316 `"Intermediate professions and related statistical work"', add
label define cm05a_profesn_lbl 317 `"Social science associate professionals"', add
label define cm05a_profesn_lbl 319 `"Other associate professionals physical and technical"', add
label define cm05a_profesn_lbl 321 `"Technicians and related life sciences and health"', add
label define cm05a_profesn_lbl 322 `"Intermediate occupations of modern medicine (except nursing) classified 223"', add
label define cm05a_profesn_lbl 323 `"Nursing and midwifery (intermediate level)"', add
label define cm05a_profesn_lbl 324 `"Traditional medicine practitioners and healers"', add
label define cm05a_profesn_lbl 329 `"Other associate professionals life science and health"', add
label define cm05a_profesn_lbl 331 `"Intermediate occupations in primary education"', add
label define cm05a_profesn_lbl 332 `"Professionals pre-primary education"', add
label define cm05a_profesn_lbl 333 `"Professions intermediate education for the disabled"', add
label define cm05a_profesn_lbl 339 `"Other teaching associate professionals"', add
label define cm05a_profesn_lbl 341 `"Associate professionals  finance and sales"', add
label define cm05a_profesn_lbl 342 `"Agents and trade brokers"', add
label define cm05a_profesn_lbl 343 `"Administrative associate professionals"', add
label define cm05a_profesn_lbl 344 `"Intermediate occupations of government customs and taxes, and similar"', add
label define cm05a_profesn_lbl 345 `"Inspectors of police and detectives"', add
label define cm05a_profesn_lbl 346 `"Intermediate professions of social work"', add
label define cm05a_profesn_lbl 347 `"Associate professionals  artistic, entertainment and sports"', add
label define cm05a_profesn_lbl 348 `"Religious associate"', add
label define cm05a_profesn_lbl 349 `"Other associate professionals n.e.c."', add
label define cm05a_profesn_lbl 411 `"Secretaries and keyboard-operating"', add
label define cm05a_profesn_lbl 412 `"Employees of accounting and financial services"', add
label define cm05a_profesn_lbl 413 `"Employees procurement, scheduling and transport"', add
label define cm05a_profesn_lbl 414 `"Library, mail service and similar"', add
label define cm05a_profesn_lbl 419 `"Other office clerks"', add
label define cm05a_profesn_lbl 421 `"Cashiers, tellers and related clerks"', add
label define cm05a_profesn_lbl 422 `"Employees receiving and customer information"', add
label define cm05a_profesn_lbl 429 `"Other employees receiving, cashiers, tellers n.e.c"', add
label define cm05a_profesn_lbl 511 `"Travel attendants and related"', add
label define cm05a_profesn_lbl 512 `"Housekeeping and restaurant services"', add
label define cm05a_profesn_lbl 513 `"Personal care and related"', add
label define cm05a_profesn_lbl 514 `"Other personal services to individuals (hairdressers, specialist beauty treatments and related workers, company staff and valets, agents undertakers and embalmers)"', add
label define cm05a_profesn_lbl 515 `"Astrologers, fortune-tellers and related workers"', add
label define cm05a_profesn_lbl 516 `"Personal protective services and security"', add
label define cm05a_profesn_lbl 517 `"Staff cyber café and call box and related workers"', add
label define cm05a_profesn_lbl 519 `"Other personal services workers n.e.c"', add
label define cm05a_profesn_lbl 521 `"Fashion and other models"', add
label define cm05a_profesn_lbl 522 `"Shop salespersons and demonstrators"', add
label define cm05a_profesn_lbl 523 `"Sellers miscellaneous items (textiles, footwear, clothing, hardware and household products stall and market"', add
label define cm05a_profesn_lbl 524 `"Bayam sellam"', add
label define cm05a_profesn_lbl 525 `"Sellers live animals and poultry products (eggs)"', add
label define cm05a_profesn_lbl 526 `"Sellers food from agricultural stall and market"', add
label define cm05a_profesn_lbl 527 `"Sellers food animal stall and market"', add
label define cm05a_profesn_lbl 528 `"Seller's stall or market food"', add
label define cm05a_profesn_lbl 529 `"Other n.e.c salespersons and demonstrators"', add
label define cm05a_profesn_lbl 611 `"Farmers and skilled workers of crops for market"', add
label define cm05a_profesn_lbl 612 `"Breeders and  skilled workers for livestock markets and similar"', add
label define cm05a_profesn_lbl 613 `"Farmers and skilled workers polyculture and animal producers"', add
label define cm05a_profesn_lbl 614 `"Occupations forestage, palm wine tapper you raffia and similar workers"', add
label define cm05a_profesn_lbl 615 `"Fishery workers, hunters and trappers"', add
label define cm05a_profesn_lbl 619 `"Other farmers and workers skilled agricultural and fishery markets for"', add
label define cm05a_profesn_lbl 621 `"Farmers and skilled workers polyculture and animal producers"', add
label define cm05a_profesn_lbl 629 `"Other farmers and workers in agriculture and subsistence fishing"', add
label define cm05a_profesn_lbl 711 `"Miners, shotfirers and stonemasons"', add
label define cm05a_profesn_lbl 712 `"Construction workers (shell) and similar"', add
label define cm05a_profesn_lbl 713 `"Construction workers (finishes) and similar"', add
label define cm05a_profesn_lbl 714 `"Painters, building structure cleaners and related"', add
label define cm05a_profesn_lbl 719 `"Other craft and related trades workers mining and construction"', add
label define cm05a_profesn_lbl 721 `"Metal moulders, welders, sheet-metal workers, ironworkers and similar"', add
label define cm05a_profesn_lbl 722 `"Blacksmiths, toolmakers and related"', add
label define cm05a_profesn_lbl 723 `"Machinery mechanics and fitters"', add
label define cm05a_profesn_lbl 724 `"Mechanics and fitters electrical and electronic equipment"', add
label define cm05a_profesn_lbl 729 `"Other craft and related trades workers metallurgy, mechanical engineering and related n.e.c"', add
label define cm05a_profesn_lbl 731 `"Precision workers in metal and related materials"', add
label define cm05a_profesn_lbl 732 `"Potters, glass-makers and related"', add
label define cm05a_profesn_lbl 733 `"Handicraft workers in wood, textile, leather and related materials"', add
label define cm05a_profesn_lbl 734 `"Trades workers printing and related"', add
label define cm05a_profesn_lbl 739 `"Other craft and related workers in the precision engineering, crafts, printing and related"', add
label define cm05a_profesn_lbl 741 `"Trades workers food and allied"', add
label define cm05a_profesn_lbl 742 `"Artisans and workers woodworking, cabinet and similar"', add
label define cm05a_profesn_lbl 743 `"Artisans and trades workers textile and skillfully treated and"', add
label define cm05a_profesn_lbl 744 `"Trades workers work skins and leather shoe"', add
label define cm05a_profesn_lbl 749 `"Other craft and related trades workers n.e.c craft"', add
label define cm05a_profesn_lbl 814 `"Plant operators woodworking and papermaking"', add
label define cm05a_profesn_lbl 816 `"Plant operators and related energy"', add
label define cm05a_profesn_lbl 823 `"Drivers machines for manufacturing rubber products and plastic materials"', add
label define cm05a_profesn_lbl 824 `"Machine operators wood"', add
label define cm05a_profesn_lbl 825 `"Drivers printing machines, binding machines and paper machines"', add
label define cm05a_profesn_lbl 827 `"Machine operators for the manufacture of food and related products"', add
label define cm05a_profesn_lbl 829 `"Other machine operators and assembly workers"', add
label define cm05a_profesn_lbl 831 `"Locomotive engine drivers and related"', add
label define cm05a_profesn_lbl 832 `"Drivers of motor vehicles including taxi drivers and bus"', add
label define cm05a_profesn_lbl 833 `"Operators of mobile equipment and other agricultural mobile machinery"', add
label define cm05a_profesn_lbl 834 `"Deckhands and similar"', add
label define cm05a_profesn_lbl 835 `"Motorbike taxi drivers"', add
label define cm05a_profesn_lbl 836 `"Driver of motor skiff or paddle"', add
label define cm05a_profesn_lbl 839 `"Other vehicle drivers and heavy equipment lifting and maneuvering"', add
label define cm05a_profesn_lbl 899 `"Other operators not elsewhere classified"', add
label define cm05a_profesn_lbl 911 `"Street vendors and related"', add
label define cm05a_profesn_lbl 912 `"Shoe cleaning and other workers"', add
label define cm05a_profesn_lbl 913 `"Aids and other household helpers, cleaners and launderers"', add
label define cm05a_profesn_lbl 914 `"Personnel service building caretakers, window and related cleaners"', add
label define cm05a_profesn_lbl 915 `"Messengers, porters, doorkeepers, chargers in bus stations and allied workers"', add
label define cm05a_profesn_lbl 916 `"Garbage collectors and related laborers"', add
label define cm05a_profesn_lbl 919 `"Other unskilled services and sales"', add
label define cm05a_profesn_lbl 921 `"Labourers in agriculture, fishery and related"', add
label define cm05a_profesn_lbl 929 `"Other operations of the agriculture, fisheries and allied"', add
label define cm05a_profesn_lbl 931 `"Labourers in mining, construction and public works"', add
label define cm05a_profesn_lbl 932 `"Manufacturing laborers"', add
label define cm05a_profesn_lbl 933 `"Transport laborers and freight handlers"', add
label define cm05a_profesn_lbl 939 `"Other labourers in mining, construction and public works, manufacturing and transport n.e.c"', add
label define cm05a_profesn_lbl 990 `"Other profession, response suppressed"', add
label define cm05a_profesn_lbl 998 `"Professional activities not adequately defined or unclassifiable"', add
label define cm05a_profesn_lbl 999 `"NIU (not in universe)"', add
label values cm05a_profesn cm05a_profesn_lbl

label define cm05a_empstat_lbl 01 `"Working"'
label define cm05a_empstat_lbl 02 `"Not working, but worked in past"', add
label define cm05a_empstat_lbl 03 `"Looking for first job"', add
label define cm05a_empstat_lbl 04 `"Housewife"', add
label define cm05a_empstat_lbl 05 `"Student"', add
label define cm05a_empstat_lbl 06 `"Pensioner"', add
label define cm05a_empstat_lbl 07 `"Retired"', add
label define cm05a_empstat_lbl 08 `"Elderly"', add
label define cm05a_empstat_lbl 09 `"Disabled"', add
label define cm05a_empstat_lbl 10 `"Inactive"', add
label define cm05a_empstat_lbl 99 `"NIU (not in universe)"', add
label values cm05a_empstat cm05a_empstat_lbl

label define cm05a_classwk_lbl 1 `"Permanent salary earner"'
label define cm05a_classwk_lbl 2 `"Temporary salary earner"', add
label define cm05a_classwk_lbl 3 `"Employer"', add
label define cm05a_classwk_lbl 4 `"Independent or self-employed worker"', add
label define cm05a_classwk_lbl 5 `"Family helper"', add
label define cm05a_classwk_lbl 6 `"Wage-earning apprentice"', add
label define cm05a_classwk_lbl 7 `"Non-wage-earning apprentice"', add
label define cm05a_classwk_lbl 9 `"NIU (not in universe)"', add
label values cm05a_classwk cm05a_classwk_lbl

label define cm05a_occ_lbl 011 `"Armed forces"'
label define cm05a_occ_lbl 012 `"Gendarmery (military force charged with police duties)"', add
label define cm05a_occ_lbl 013 `"Police"', add
label define cm05a_occ_lbl 014 `"Armed forces n.e.c."', add
label define cm05a_occ_lbl 111 `"Members of the executive and legislative bodies"', add
label define cm05a_occ_lbl 112 `"Senior executives of public administration"', add
label define cm05a_occ_lbl 113 `"Traditional chiefs and heads of villages"', add
label define cm05a_occ_lbl 114 `"Executives of public and semi-public"', add
label define cm05a_occ_lbl 115 `"Heads of mission diplomatic and international organizations"', add
label define cm05a_occ_lbl 117 `"Officers and directors of organizations of employers or workers"', add
label define cm05a_occ_lbl 119 `"Other members of the executive and legislative bodies, and senior government n.e.c"', add
label define cm05a_occ_lbl 121 `"Ceos and directors of companies and private corporations modern"', add
label define cm05a_occ_lbl 122 `"Senior management, production and operations enterprises and companies in the modern sector"', add
label define cm05a_occ_lbl 123 `"Senior management companies and corporations in the modern sector"', add
label define cm05a_occ_lbl 131 `"Managers of small and medium enterprise (sme pmi)"', add
label define cm05a_occ_lbl 139 `"Other leaders and managers n.e.c"', add
label define cm05a_occ_lbl 211 `"Physicists, geologists, meteorologists, astronomers, and similar geophysicists"', add
label define cm05a_occ_lbl 212 `"Mathematicians, statisticians and assimilated"', add
label define cm05a_occ_lbl 213 `"Techies engineer, engineer cyberneticians engineer telecommunications engineer and assimilated"', add
label define cm05a_occ_lbl 214 `"Engineer, architects, planners, surveyors and assimilated"', add
label define cm05a_occ_lbl 215 `"Civil engineers, engineer of public works, civil engineer pavement, cartographers engineer, engineer surveyors, engineers surveyors"', add
label define cm05a_occ_lbl 216 `"Electrical engineers, electronics engineers, electricians engineers"', add
label define cm05a_occ_lbl 217 `"Agronomist, agriculture engineer, engineer of rural engineering, engineer and engineer zootechnician assimilated"', add
label define cm05a_occ_lbl 218 `"Engineer air navigation drivers aircraft commanders and assimilated"', add
label define cm05a_occ_lbl 219 `"Engineer n.e.c"', add
label define cm05a_occ_lbl 221 `"Biologist, zoologist, botanist, agronomist, bacteriologist, pharmacologist"', add
label define cm05a_occ_lbl 222 `"Physicians, dentists, pharmacists, veterinarians."', add
label define cm05a_occ_lbl 223 `"Senior nurses and midwives"', add
label define cm05a_occ_lbl 229 `"Other medical scientists and life sciences"', add
label define cm05a_occ_lbl 231 `"College, university and higher education institutions"', add
label define cm05a_occ_lbl 232 `"Professor of secondary education"', add
label define cm05a_occ_lbl 233 `"Teacher of primary and pre-primary"', add
label define cm05a_occ_lbl 234 `"Teachers specialized in the education of disabled"', add
label define cm05a_occ_lbl 239 `"Other teaching professionals"', add
label define cm05a_occ_lbl 241 `"Administrative and commercial enterprises specialists"', add
label define cm05a_occ_lbl 242 `"Legal professionals (lawyers, magistrates and the like)"', add
label define cm05a_occ_lbl 243 `"Archivists, librarians, documentalists"', add
label define cm05a_occ_lbl 244 `"Social science (economist, sociologist, anthropologist, demographer, philosopher, psychologist, historian, linguist, translator, interpreter, specialist in political science, social work specialists)"', add
label define cm05a_occ_lbl 245 `"Writers and creative artists (author, journalist, editors and other specialists information processing, composer, singers, choreographers, sculptor, painters and assimilated)"', add
label define cm05a_occ_lbl 246 `"Clergy"', add
label define cm05a_occ_lbl 249 `"Other professionals intellectual and scientific"', add
label define cm05a_occ_lbl 311 `"Techniques of physical and engineering science"', add
label define cm05a_occ_lbl 312 `"Console operators and other operators of computer hardware technicians"', add
label define cm05a_occ_lbl 313 `"Optical and electronic equipment"', add
label define cm05a_occ_lbl 314 `"Technicians means of sea and air transport"', add
label define cm05a_occ_lbl 315 `"Inspector of buildings, safety, hygiene and quality"', add
label define cm05a_occ_lbl 316 `"Intermediate professions and related statistical work"', add
label define cm05a_occ_lbl 319 `"Other associate professionals physical and technical"', add
label define cm05a_occ_lbl 321 `"Technicians and related life sciences and health"', add
label define cm05a_occ_lbl 322 `"Intermediate occupations of modern medicine (except nursing) classified 223"', add
label define cm05a_occ_lbl 323 `"Nursing and midwifery (intermediate level)"', add
label define cm05a_occ_lbl 324 `"Traditional medicine practitioners and healers"', add
label define cm05a_occ_lbl 329 `"Other associate professionals life science and health"', add
label define cm05a_occ_lbl 331 `"Intermediate occupations in primary education"', add
label define cm05a_occ_lbl 332 `"Professionals pre-primary education"', add
label define cm05a_occ_lbl 333 `"Professions intermediate education for the disabled"', add
label define cm05a_occ_lbl 339 `"Other teaching associate professionals"', add
label define cm05a_occ_lbl 341 `"Associate professionals  finance and sales"', add
label define cm05a_occ_lbl 342 `"Agents and trade brokers"', add
label define cm05a_occ_lbl 343 `"Administrative associate professionals"', add
label define cm05a_occ_lbl 344 `"Intermediate occupations of government customs and taxes, and similar"', add
label define cm05a_occ_lbl 345 `"Inspectors of police and detectives"', add
label define cm05a_occ_lbl 346 `"Intermediate professions of social work"', add
label define cm05a_occ_lbl 347 `"Associate professionals  artistic, entertainment and sports"', add
label define cm05a_occ_lbl 348 `"Religious associate"', add
label define cm05a_occ_lbl 349 `"Other associate professionals n.e.c."', add
label define cm05a_occ_lbl 411 `"Secretaries and keyboard-operating"', add
label define cm05a_occ_lbl 412 `"Employees of accounting and financial services"', add
label define cm05a_occ_lbl 413 `"Employees procurement, scheduling and transport"', add
label define cm05a_occ_lbl 414 `"Library, mail service and similar"', add
label define cm05a_occ_lbl 419 `"Other office clerks"', add
label define cm05a_occ_lbl 421 `"Cashiers, tellers and related clerks"', add
label define cm05a_occ_lbl 422 `"Employees receiving and customer information"', add
label define cm05a_occ_lbl 429 `"Other employees receiving, cashiers, tellers nec"', add
label define cm05a_occ_lbl 511 `"Travel attendants and related"', add
label define cm05a_occ_lbl 512 `"Housekeeping and restaurant services"', add
label define cm05a_occ_lbl 513 `"Personal care and related"', add
label define cm05a_occ_lbl 514 `"Other personal services to individuals (hairdressers, specialist beauty treatments and related workers, company staff and valets, agents undertakers and embalmers)"', add
label define cm05a_occ_lbl 515 `"Astrologers, fortune-tellers and related workers"', add
label define cm05a_occ_lbl 516 `"Personal protective services and security"', add
label define cm05a_occ_lbl 517 `"Staff cyber café and call box and related workers"', add
label define cm05a_occ_lbl 519 `"Other personal services workers nec"', add
label define cm05a_occ_lbl 521 `"Fashion and other models"', add
label define cm05a_occ_lbl 522 `"Shop salespersons and demonstrators"', add
label define cm05a_occ_lbl 523 `"Sellers miscellaneous items (textiles, footwear, clothing, hardware and household products stall and market"', add
label define cm05a_occ_lbl 524 `"Bayam sellam"', add
label define cm05a_occ_lbl 525 `"Sellers live animals and poultry products (eggs)"', add
label define cm05a_occ_lbl 526 `"Sellers food from agricultural stall and market"', add
label define cm05a_occ_lbl 527 `"Sellers food animal stall and market"', add
label define cm05a_occ_lbl 528 `"Seller's stall or market food"', add
label define cm05a_occ_lbl 529 `"Other n.e.c salespersons and demonstrators"', add
label define cm05a_occ_lbl 611 `"Farmers and skilled workers of crops for market"', add
label define cm05a_occ_lbl 612 `"Breeders and  skilled workers for livestock markets and similar"', add
label define cm05a_occ_lbl 613 `"Farmers and skilled workers polyculture and animal producers"', add
label define cm05a_occ_lbl 614 `"Occupations forestage, palm wine tapper you raffia and similar workers"', add
label define cm05a_occ_lbl 615 `"Fishery workers, hunters and trappers"', add
label define cm05a_occ_lbl 619 `"Other farmers and workers skilled agricultural and fishery markets for"', add
label define cm05a_occ_lbl 621 `"Farmers and skilled workers polyculture and animal producers"', add
label define cm05a_occ_lbl 629 `"Other farmers and workers in agriculture and subsistence fishing"', add
label define cm05a_occ_lbl 711 `"Miners, shotfirers and stonemasons"', add
label define cm05a_occ_lbl 712 `"Construction workers (shell) and similar"', add
label define cm05a_occ_lbl 713 `"Construction workers (finishes) and similar"', add
label define cm05a_occ_lbl 714 `"Painters, building structure cleaners and related"', add
label define cm05a_occ_lbl 719 `"Other craft and related trades workers mining and construction"', add
label define cm05a_occ_lbl 721 `"Metal moulders, welders, sheet-metal workers, ironworkers and similar"', add
label define cm05a_occ_lbl 722 `"Blacksmiths, toolmakers and related"', add
label define cm05a_occ_lbl 723 `"Machinery mechanics and fitters"', add
label define cm05a_occ_lbl 724 `"Mechanics and fitters electrical and electronic equipment"', add
label define cm05a_occ_lbl 729 `"Other craft and related trades workers metallurgy, mechanical engineering and related n.e.c"', add
label define cm05a_occ_lbl 731 `"Precision workers in metal and related materials"', add
label define cm05a_occ_lbl 732 `"Potters, glass-makers and related"', add
label define cm05a_occ_lbl 733 `"Handicraft workers in wood, textile, leather and related materials"', add
label define cm05a_occ_lbl 734 `"Trades workers printing and related"', add
label define cm05a_occ_lbl 739 `"Other craft and related workers in the precision engineering, crafts, printing and related"', add
label define cm05a_occ_lbl 741 `"Trades workers food and allied"', add
label define cm05a_occ_lbl 742 `"Artisans and workers woodworking, cabinet and similar"', add
label define cm05a_occ_lbl 743 `"Artisans and trades workers textile and skillfully treated and"', add
label define cm05a_occ_lbl 744 `"Trades workers work skins and leather shoe"', add
label define cm05a_occ_lbl 749 `"Other craft and related trades workers n.e.c craft"', add
label define cm05a_occ_lbl 814 `"Plant operators woodworking and papermaking"', add
label define cm05a_occ_lbl 816 `"Plant operators and related energy"', add
label define cm05a_occ_lbl 823 `"Drivers machines for manufacturing rubber products and plastic materials"', add
label define cm05a_occ_lbl 824 `"Machine operators wood"', add
label define cm05a_occ_lbl 825 `"Drivers printing machines, binding machines and paper machines"', add
label define cm05a_occ_lbl 827 `"Machine operators for the manufacture of food and related products"', add
label define cm05a_occ_lbl 829 `"Other machine operators and assembly workers"', add
label define cm05a_occ_lbl 831 `"Locomotive engine drivers and related"', add
label define cm05a_occ_lbl 832 `"Drivers of motor vehicles including taxi drivers and bus"', add
label define cm05a_occ_lbl 833 `"Operators of mobile equipment and other agricultural mobile machinery"', add
label define cm05a_occ_lbl 834 `"Deckhands and similar"', add
label define cm05a_occ_lbl 835 `"Motorbike taxi drivers"', add
label define cm05a_occ_lbl 836 `"Driver of motor skiff or paddle"', add
label define cm05a_occ_lbl 839 `"Other vehicle drivers and heavy equipment lifting and maneuvering"', add
label define cm05a_occ_lbl 899 `"Other operators not elsewhere classified"', add
label define cm05a_occ_lbl 911 `"Street vendors and related"', add
label define cm05a_occ_lbl 912 `"Shoe cleaning and other workers"', add
label define cm05a_occ_lbl 913 `"Aids and other household helpers, cleaners and launderers"', add
label define cm05a_occ_lbl 914 `"Personnel service building caretakers, window and related cleaners"', add
label define cm05a_occ_lbl 915 `"Messengers, porters, doorkeepers, chargers in bus stations and allied workers"', add
label define cm05a_occ_lbl 916 `"Garbage collectors and related laborers"', add
label define cm05a_occ_lbl 919 `"Other unskilled services and sales"', add
label define cm05a_occ_lbl 921 `"Labourers in agriculture, fishery and related"', add
label define cm05a_occ_lbl 929 `"Other operations of the agriculture, fisheries and allied"', add
label define cm05a_occ_lbl 931 `"Labourers in mining, construction and public works"', add
label define cm05a_occ_lbl 932 `"Manufacturing laborers"', add
label define cm05a_occ_lbl 933 `"Transport laborers and freight handlers"', add
label define cm05a_occ_lbl 939 `"Other labourers in mining, construction and public works, manufacturing and transport nec"', add
label define cm05a_occ_lbl 990 `"Other occupation, response suppressed"', add
label define cm05a_occ_lbl 998 `"Professional activities not adequately defined or unclassifiable"', add
label define cm05a_occ_lbl 999 `"NIU (not in universe)"', add
label values cm05a_occ cm05a_occ_lbl

label define cm05a_emptype_lbl 1 `"Liberal employment"'
label define cm05a_emptype_lbl 2 `"Employment with written contract for indeterminate duration"', add
label define cm05a_emptype_lbl 3 `"Employment with written contract for a specified period of time"', add
label define cm05a_emptype_lbl 4 `"Entry-level job, testing"', add
label define cm05a_emptype_lbl 5 `"Permanent job without contract"', add
label define cm05a_emptype_lbl 6 `"Termporary employment with verbal agreement"', add
label define cm05a_emptype_lbl 7 `"Seasonal worker (agricultural and livestock)"', add
label define cm05a_emptype_lbl 8 `"Occasional, unstable employment (informal sector)"', add
label define cm05a_emptype_lbl 9 `"NIU (not in universe)"', add
label values cm05a_emptype cm05a_emptype_lbl

label define cm05a_empsect_lbl 0 `"NIU (not in universe)"'
label define cm05a_empsect_lbl 1 `"Modern"', add
label define cm05a_empsect_lbl 2 `"Informal artisanal production"', add
label define cm05a_empsect_lbl 3 `"Informal public works and buildings"', add
label define cm05a_empsect_lbl 4 `"Informal mechanics and repairs"', add
label define cm05a_empsect_lbl 5 `"Informal communication and transportation"', add
label define cm05a_empsect_lbl 6 `"Informal small business and product manufacturing"', add
label define cm05a_empsect_lbl 7 `"Informal food-selling and catering"', add
label define cm05a_empsect_lbl 8 `"Informal personal services"', add
label define cm05a_empsect_lbl 9 `"Traditional activities, such as agriculture, hunting, fishing and foraging"', add
label values cm05a_empsect cm05a_empsect_lbl

label define cm05a_ind_lbl 0100 `"Millet and sorghum"'
label define cm05a_ind_lbl 0101 `"Corn"', add
label define cm05a_ind_lbl 0109 `"Cereals n.e.c. other than rice and wheat"', add
label define cm05a_ind_lbl 0110 `"Cassava"', add
label define cm05a_ind_lbl 0111 `"Yams"', add
label define cm05a_ind_lbl 0112 `"Potatos"', add
label define cm05a_ind_lbl 0113 `"Sweet potatoes"', add
label define cm05a_ind_lbl 0114 `"Cocoyam or taro"', add
label define cm05a_ind_lbl 0119 `"Starchy roots and tubers n.e.c."', add
label define cm05a_ind_lbl 0120 `"Peanut for local consumption"', add
label define cm05a_ind_lbl 0122 `"Coconut"', add
label define cm05a_ind_lbl 0123 `"Sesame seeds"', add
label define cm05a_ind_lbl 0129 `"Other oil seeds and oleaginous fruits n.e.c."', add
label define cm05a_ind_lbl 0130 `"Citrus fruits (oranges, tangerines, lemons, grapefruits)"', add
label define cm05a_ind_lbl 0131 `"Papaya"', add
label define cm05a_ind_lbl 0133 `"Cola nuts"', add
label define cm05a_ind_lbl 0134 `"Pineapple"', add
label define cm05a_ind_lbl 0136 `"Temperate fruits (apples, pears, fresh fruit kernel, fresh berries etc.)"', add
label define cm05a_ind_lbl 0139 `"Tropical fruits n.e.c. (guava, cashew, cashew nuts)"', add
label define cm05a_ind_lbl 0140 `"Tomatos"', add
label define cm05a_ind_lbl 0141 `"Leafy vegetables of local origin"', add
label define cm05a_ind_lbl 0142 `"Leafy vegetables, stems, roots or fruiits"', add
label define cm05a_ind_lbl 0143 `"Bulbs, onions, garlic, leeks"', add
label define cm05a_ind_lbl 0144 `"Legumes and pulses (peas, beans, lenilles, voandzou)"', add
label define cm05a_ind_lbl 0149 `"Vegetables, n.e.c."', add
label define cm05a_ind_lbl 0150 `"Plantain crops"', add
label define cm05a_ind_lbl 0160 `"Peppers"', add
label define cm05a_ind_lbl 0169 `"Other condiments"', add
label define cm05a_ind_lbl 0199 `"Other crops for human consumption"', add
label define cm05a_ind_lbl 0200 `"Cocoa"', add
label define cm05a_ind_lbl 0201 `"Coffee"', add
label define cm05a_ind_lbl 0202 `"Cotton"', add
label define cm05a_ind_lbl 0203 `"Tobacco"', add
label define cm05a_ind_lbl 0204 `"Sweet banana"', add
label define cm05a_ind_lbl 0209 `"Other agricultural products for export"', add
label define cm05a_ind_lbl 0210 `"Palm"', add
label define cm05a_ind_lbl 0211 `"Latex rubber and harvesting"', add
label define cm05a_ind_lbl 0212 `"Sugar cane"', add
label define cm05a_ind_lbl 0213 `"Tea"', add
label define cm05a_ind_lbl 0216 `"Rice paddy"', add
label define cm05a_ind_lbl 0219 `"Other agricultural products for industry"', add
label define cm05a_ind_lbl 0290 `"Ornamental plants or flowers (ornamental gardens, outdoor decoration)"', add
label define cm05a_ind_lbl 0299 `"Other activities related to industrial agriculture (treatment of plants or contract spraying)"', add
label define cm05a_ind_lbl 0300 `"Cattle breeding"', add
label define cm05a_ind_lbl 0301 `"Sheep and goats breeding"', add
label define cm05a_ind_lbl 0302 `"Porcine breeding"', add
label define cm05a_ind_lbl 0303 `"Poultry farm"', add
label define cm05a_ind_lbl 0304 `"Donkeys and horses breeding"', add
label define cm05a_ind_lbl 0309 `"Animal breeding, n.e.c."', add
label define cm05a_ind_lbl 0310 `"Production of fresh milk"', add
label define cm05a_ind_lbl 0312 `"Production of honey"', add
label define cm05a_ind_lbl 0319 `"Production of other livestock products, n.e.c."', add
label define cm05a_ind_lbl 0320 `"Hunting and trapping"', add
label define cm05a_ind_lbl 0390 `"Other livestock activities"', add
label define cm05a_ind_lbl 0400 `"Sea fishing"', add
label define cm05a_ind_lbl 0410 `"Lake and river fishing"', add
label define cm05a_ind_lbl 0420 `"Pisciculture"', add
label define cm05a_ind_lbl 0490 `"Activities related to fishing"', add
label define cm05a_ind_lbl 0500 `"Operating cuts (extended for wood to be cut) and nursery"', add
label define cm05a_ind_lbl 0501 `"Afforestation, reforestation and forest conservation"', add
label define cm05a_ind_lbl 0503 `"Cutting and collecting firewood"', add
label define cm05a_ind_lbl 0504 `"Non-timber products (vines, rattan, bark)"', add
label define cm05a_ind_lbl 0509 `"Other wood-related activities n.e.c."', add
label define cm05a_ind_lbl 0610 `"Extraction of crude petroleum oils and bituminous minerals"', add
label define cm05a_ind_lbl 0611 `"Extraction of natural gas"', add
label define cm05a_ind_lbl 0613 `"Extraction of mineral oil"', add
label define cm05a_ind_lbl 0630 `"Ore mining precious metals (platinum, gold, silver) and radioactive"', add
label define cm05a_ind_lbl 0640 `"Extraction of building stone and gravel"', add
label define cm05a_ind_lbl 0641 `"Sand extraction"', add
label define cm05a_ind_lbl 0690 `"Mining and quarrying, n.e.c."', add
label define cm05a_ind_lbl 0730 `"Manufacturing cornmeal"', add
label define cm05a_ind_lbl 0739 `"Manufacture of other flours, n.e.c."', add
label define cm05a_ind_lbl 0801 `"Chocolate manufacture"', add
label define cm05a_ind_lbl 0830 `"Sugar industry"', add
label define cm05a_ind_lbl 0850 `"Canning fruits and vegetables"', add
label define cm05a_ind_lbl 0890 `"Manufacture of other food products n.e.c. agricultural"', add
label define cm05a_ind_lbl 0900 `"Manufacture of bread and cake"', add
label define cm05a_ind_lbl 0902 `"Manufacture of donuts"', add
label define cm05a_ind_lbl 0910 `"Manufacture of farinaceous products"', add
label define cm05a_ind_lbl 0990 `"Manufacture of food products made ??from flour, n.e.c."', add
label define cm05a_ind_lbl 1000 `"Slaughterhouse"', add
label define cm05a_ind_lbl 1010 `"Dairy Industry"', add
label define cm05a_ind_lbl 1030 `"Production of vegetable oils and fats"', add
label define cm05a_ind_lbl 1040 `"Manufacture of food products, n.e.c."', add
label define cm05a_ind_lbl 1050 `"Manufacture of products for animal feed"', add
label define cm05a_ind_lbl 1100 `"Industrial beer production"', add
label define cm05a_ind_lbl 1101 `"Manufacture of homemade beer"', add
label define cm05a_ind_lbl 1110 `"Manufacture of soft drinks and syrups"', add
label define cm05a_ind_lbl 1112 `"Manufacture of homemade soft drink"', add
label define cm05a_ind_lbl 1130 `"Wine industry and unmalted alcoholic beverages"', add
label define cm05a_ind_lbl 1140 `"Manufacture of cigarettes"', add
label define cm05a_ind_lbl 1200 `"Preparation of vegetable textile fibers before spinning: sanding, retting, scutching, scouring, carding and carbonizing"', add
label define cm05a_ind_lbl 1201 `"Throwing, spinning textile fibers"', add
label define cm05a_ind_lbl 1203 `"Manufacture of carpets and rugs"', add
label define cm05a_ind_lbl 1204 `"Manufacture of fabric, with the exception of clothing (linen and furnishings) (ISIC 3212)"', add
label define cm05a_ind_lbl 1209 `"Manufacture of other textiles, n.e.c. (cushioning, stuffing and other)"', add
label define cm05a_ind_lbl 1210 `"Hosiery"', add
label define cm05a_ind_lbl 1211 `"Manufacture of wearing apparel except footwear"', add
label define cm05a_ind_lbl 1300 `"Footwear manufacturing excluding rubber and plastic shoes"', add
label define cm05a_ind_lbl 1310 `"Tannery and tawing"', add
label define cm05a_ind_lbl 1311 `"Manufacture of leather except footwear and wearing apparel (bags, trunks, handbags, wallets, saddlery)"', add
label define cm05a_ind_lbl 1400 `"Sawmill and other wood excluding plated"', add
label define cm05a_ind_lbl 1410 `"Veneer, plywood, wood paneling and particle"', add
label define cm05a_ind_lbl 1420 `"Manufacture of wooden emblems"', add
label define cm05a_ind_lbl 1430 `"Basketry"', add
label define cm05a_ind_lbl 1440 `"Manufacture of furniture and accessories, with the exception of those primarily of metal (furniture, cabinets, boxes, wooden beds, mattresses, box springs and pillows filled spring)"', add
label define cm05a_ind_lbl 1509 `"Manufacture of articles of paper pulp, paper and paperboard n.c.e"', add
label define cm05a_ind_lbl 1510 `"Printing, binding, and engraving"', add
label define cm05a_ind_lbl 1511 `"Desktop publishing, Photogravure, Publishing (newspapers, books, maps, directories)"', add
label define cm05a_ind_lbl 1512 `"Service activities related to printing (edition, photocopies, etc)"', add
label define cm05a_ind_lbl 1600 `"Manufacture of basic chemicals, except fertilizer"', add
label define cm05a_ind_lbl 1612 `"Manufacture of soap and detergents"', add
label define cm05a_ind_lbl 1613 `"Manufacture of perfums, cosmetics and other toilet products"', add
label define cm05a_ind_lbl 1619 `"Manufacture of chemical products n.c.e (wax, disinfectants, explosives, adhesives, glues, matches, candles and inks)"', add
label define cm05a_ind_lbl 1620 `"Petroleum refineries"', add
label define cm05a_ind_lbl 1700 `"Treatment of rubber latex (shredding, mixing, rolling, cutting and other operations that are not performed in plantations or forests)"', add
label define cm05a_ind_lbl 1709 `"Manufacture of other miscellaneous products"', add
label define cm05a_ind_lbl 1711 `"Manufacture of plastic packaging"', add
label define cm05a_ind_lbl 1712 `"Manufacture of other household and plastic products (excluding shoes)"', add
label define cm05a_ind_lbl 1800 `"Manufacture of cement"', add
label define cm05a_ind_lbl 1840 `"Manufacture of terracotta construction materials"', add
label define cm05a_ind_lbl 1850 `"Manufacture of concrete and stone products"', add
label define cm05a_ind_lbl 1851 `"Gravel and lateritic crushing"', add
label define cm05a_ind_lbl 1900 `"Manufacture and procesing aluminium"', add
label define cm05a_ind_lbl 1910 `"Manufacture of basic aluminium (rolling, drawing, molding)"', add
label define cm05a_ind_lbl 1920 `"Maufacture of basic iron and steel"', add
label define cm05a_ind_lbl 2000 `"Manufacture of metallic furniture, kitchens, and carpentry"', add
label define cm05a_ind_lbl 2001 `"Manufacture of iron and steel hardware (cutlery, armory, screws, nails)"', add
label define cm05a_ind_lbl 2006 `"Metal construction"', add
label define cm05a_ind_lbl 2009 `"Manufacture of other metallic devices"', add
label define cm05a_ind_lbl 2022 `"Manufacture of electromechanical devices"', add
label define cm05a_ind_lbl 2023 `"Manufacture of computers and other electronic devices"', add
label define cm05a_ind_lbl 2090 `"Manufacture of other mechanical and electronic devices"', add
label define cm05a_ind_lbl 2100 `"Building and reparation of ships"', add
label define cm05a_ind_lbl 2130 `"Manufacture of motor vehicles"', add
label define cm05a_ind_lbl 2140 `"Manufacture of cycles and motorcycles"', add
label define cm05a_ind_lbl 2230 `"Manufacture of jewellery and bijouterie with precious metals"', add
label define cm05a_ind_lbl 2240 `"Craftsmen: engravers, sculptors, potters"', add
label define cm05a_ind_lbl 2290 `"Manufacturing n.c.e"', add
label define cm05a_ind_lbl 2291 `"Manufacture of non plastic plates and utensils"', add
label define cm05a_ind_lbl 2300 `"Electric power generation, transmission and distribution"', add
label define cm05a_ind_lbl 2310 `"Water collection and distribution"', add
label define cm05a_ind_lbl 2320 `"Production of gas in cilinders"', add
label define cm05a_ind_lbl 2400 `"Construction of dams"', add
label define cm05a_ind_lbl 2401 `"Construction of ports and dredging"', add
label define cm05a_ind_lbl 2410 `"Construction of roads, bridges, and airports"', add
label define cm05a_ind_lbl 2420 `"Construction of railways"', add
label define cm05a_ind_lbl 2430 `"Construction and installation of electric, telephonone and radio transmission lines"', add
label define cm05a_ind_lbl 2440 `"Building construction in solid materials"', add
label define cm05a_ind_lbl 2441 `"Building construction in semi-solid materials"', add
label define cm05a_ind_lbl 2450 `"Construction painting"', add
label define cm05a_ind_lbl 2451 `"Plumbing and other construction installation activities"', add
label define cm05a_ind_lbl 2452 `"Installation of mirrors and windows"', add
label define cm05a_ind_lbl 2453 `"Installation of metal or wood work"', add
label define cm05a_ind_lbl 2460 `"Electrical installation activities"', add
label define cm05a_ind_lbl 2470 `"Site preparation for agriculture"', add
label define cm05a_ind_lbl 2481 `"Site preparation for construction"', add
label define cm05a_ind_lbl 2500 `"Wood"', add
label define cm05a_ind_lbl 2501 `"Coffee"', add
label define cm05a_ind_lbl 2502 `"Cocoa"', add
label define cm05a_ind_lbl 2503 `"Sweet plantains"', add
label define cm05a_ind_lbl 2506 `"Oil and palm kernel"', add
label define cm05a_ind_lbl 2509 `"Other products (peanuts, etc.)"', add
label define cm05a_ind_lbl 2510 `"Sale of automotive fuel and lubricants"', add
label define cm05a_ind_lbl 2511 `"Sale of motor vehicles, machinery and tyres"', add
label define cm05a_ind_lbl 2513 `"Sale of construction materials and hardware"', add
label define cm05a_ind_lbl 2514 `"Sale of pharmaceutical and cosmetic products"', add
label define cm05a_ind_lbl 2515 `"Sale of food beverages and tobacco"', add
label define cm05a_ind_lbl 2516 `"Sale of clothing, footwear and leather articles"', add
label define cm05a_ind_lbl 2517 `"Sale of information and communications equipment"', add
label define cm05a_ind_lbl 2518 `"Sale of books and stationary"', add
label define cm05a_ind_lbl 2519 `"Trade n.e.c."', add
label define cm05a_ind_lbl 2520 `"Fresh food"', add
label define cm05a_ind_lbl 2521 `"Meat (fresh or smoked)"', add
label define cm05a_ind_lbl 2522 `"Fish (fresh or smoked)"', add
label define cm05a_ind_lbl 2523 `"Livestock and poultry"', add
label define cm05a_ind_lbl 2524 `"Crafts"', add
label define cm05a_ind_lbl 2525 `"Wood work"', add
label define cm05a_ind_lbl 2530 `"Sale of energy and lubricants"', add
label define cm05a_ind_lbl 2531 `"Sale of motor vehicles, machinery and tyres"', add
label define cm05a_ind_lbl 2532 `"Sale of machinery, raw materials and semi-finished products"', add
label define cm05a_ind_lbl 2533 `"Sale of construction materials and hardware"', add
label define cm05a_ind_lbl 2534 `"Sale of pharmaceutical and cosmetic products"', add
label define cm05a_ind_lbl 2535 `"Sale of food beverages and tobacco"', add
label define cm05a_ind_lbl 2536 `"Sale of clothing, footwear and leather articles"', add
label define cm05a_ind_lbl 2537 `"Sale of information and communications equipment"', add
label define cm05a_ind_lbl 2538 `"Sale of books and stationary"', add
label define cm05a_ind_lbl 2539 `"Trade n.e.c."', add
label define cm05a_ind_lbl 2590 `"Sale of scrap"', add
label define cm05a_ind_lbl 2591 `"Sales representatives"', add
label define cm05a_ind_lbl 2600 `"Restaurants  and other food service activities"', add
label define cm05a_ind_lbl 2603 `"Street selling of food"', add
label define cm05a_ind_lbl 2610 `"Hotels"', add
label define cm05a_ind_lbl 2611 `"Hostels, motels"', add
label define cm05a_ind_lbl 2612 `"Guest houses"', add
label define cm05a_ind_lbl 2619 `"Other accommodation"', add
label define cm05a_ind_lbl 2700 `"Transport via railways"', add
label define cm05a_ind_lbl 2701 `"Urban passenger land transport (autobus, taxis and mototaxis)"', add
label define cm05a_ind_lbl 2702 `"Suburban passenger land transport"', add
label define cm05a_ind_lbl 2703 `"Freight transport by road"', add
label define cm05a_ind_lbl 2704 `"Sea transport"', add
label define cm05a_ind_lbl 2705 `"Inland and coastal transport"', add
label define cm05a_ind_lbl 2706 `"Air transport"', add
label define cm05a_ind_lbl 2707 `"Taxi"', add
label define cm05a_ind_lbl 2708 `"Transport of funds"', add
label define cm05a_ind_lbl 2709 `"Transport n.e.c."', add
label define cm05a_ind_lbl 2710 `"Travel agencies"', add
label define cm05a_ind_lbl 2711 `"Forwarders and shipping agents"', add
label define cm05a_ind_lbl 2712 `"Car and truck rentals"', add
label define cm05a_ind_lbl 2713 `"Operation of airports"', add
label define cm05a_ind_lbl 2714 `"Operation of ports"', add
label define cm05a_ind_lbl 2719 `"Other transportation services n.e.c"', add
label define cm05a_ind_lbl 2720 `"Warehousing and storage - Oil"', add
label define cm05a_ind_lbl 2729 `"Warehousing and storage - Other products"', add
label define cm05a_ind_lbl 2730 `"Telecommunications (INTELCAM,  CAMTEL, ORANGE CAMEROUN, MTN CAMEROON…)"', add
label define cm05a_ind_lbl 2731 `"Provision of access to networks (Internet, telephone, etc.)"', add
label define cm05a_ind_lbl 2732 `"Telecommunications community service centers"', add
label define cm05a_ind_lbl 2733 `"Public access telephones"', add
label define cm05a_ind_lbl 2734 `"Television and telemonitoring"', add
label define cm05a_ind_lbl 2735 `"Publishing of newspapers, journals, and periodicals"', add
label define cm05a_ind_lbl 2736 `"Post and courier activities"', add
label define cm05a_ind_lbl 2800 `"Banking"', add
label define cm05a_ind_lbl 2801 `"Finance"', add
label define cm05a_ind_lbl 2802 `"Microfinance and credit cooperatives"', add
label define cm05a_ind_lbl 2803 `"Money transfer and foreign exchange"', add
label define cm05a_ind_lbl 2809 `"Other financial activities"', add
label define cm05a_ind_lbl 2810 `"Insurance and reinsurance"', add
label define cm05a_ind_lbl 2811 `"Insurance related activities"', add
label define cm05a_ind_lbl 2900 `"Real state (including property rentals)"', add
label define cm05a_ind_lbl 2910 `"Legal activities"', add
label define cm05a_ind_lbl 2911 `"Accounting, auditing, and bookkeeping"', add
label define cm05a_ind_lbl 2912 `"Data processing"', add
label define cm05a_ind_lbl 2913 `"Architectural and engineering activities and related technical consultancy"', add
label define cm05a_ind_lbl 2914 `"Advertising"', add
label define cm05a_ind_lbl 2930 `"Protection and security services (Africa Security, DAK…)"', add
label define cm05a_ind_lbl 2990 `"Other services for enterpises n.e.c"', add
label define cm05a_ind_lbl 3000 `"Waste removal and disposal"', add
label define cm05a_ind_lbl 3001 `"Sewage and septic tanks maintenance"', add
label define cm05a_ind_lbl 3002 `"Extermination and disinfestation services"', add
label define cm05a_ind_lbl 3013 `"Other education activities"', add
label define cm05a_ind_lbl 3015 `"Other medical, dental, and human health activities"', add
label define cm05a_ind_lbl 3029 `"Other amusement and recreation activities n.e.c"', add
label define cm05a_ind_lbl 3030 `"Repair of footwear and leather goods"', add
label define cm05a_ind_lbl 3031 `"Repair of household appliances and consumer electronics"', add
label define cm05a_ind_lbl 3032 `"Repair of motor vehicles and motorcycles"', add
label define cm05a_ind_lbl 3033 `"Rapair of watches, clocks, and jewellery"', add
label define cm05a_ind_lbl 3034 `"Rapair and unlock cellphones, computers, and their accessories"', add
label define cm05a_ind_lbl 3035 `"Repair of motor vehicles and motorcycles"', add
label define cm05a_ind_lbl 3040 `"Cleaning of cars and motorcycles"', add
label define cm05a_ind_lbl 3041 `"Funeral and related services"', add
label define cm05a_ind_lbl 3042 `"Photographic and video services"', add
label define cm05a_ind_lbl 3043 `"Video and cineclubs services"', add
label define cm05a_ind_lbl 3044 `"Cable services"', add
label define cm05a_ind_lbl 3045 `"Hairdressing and other beauty treatment"', add
label define cm05a_ind_lbl 3046 `"Wahing and (dry-) cleaning of textile products"', add
label define cm05a_ind_lbl 3047 `"Dyeing and screen printing"', add
label define cm05a_ind_lbl 3049 `"Other personal and household services"', add
label define cm05a_ind_lbl 3100 `"Administration of the State and the economic and social policies"', add
label define cm05a_ind_lbl 3101 `"Activities of pubic prerogative (foreign affairs, defense activities)"', add
label define cm05a_ind_lbl 3102 `"Regional and local governments"', add
label define cm05a_ind_lbl 3109 `"Other public administration services n.c.e"', add
label define cm05a_ind_lbl 3120 `"Activities of extraterritorial organizations and bodies"', add
label define cm05a_ind_lbl 3130 `"Domestic services"', add
label define cm05a_ind_lbl 3140 `"Religious institutions"', add
label define cm05a_ind_lbl 2402 `"Construction of hydro-agricultural facilities"', add
label define cm05a_ind_lbl 2592 `"Recycling of metal and non-metal waste and scrap"', add
label define cm05a_ind_lbl 3016 `"Veterinary services"', add
label define cm05a_ind_lbl 3017 `"Social work and charitable activities"', add
label define cm05a_ind_lbl 3019 `"Activities of religious organizations"', add
label define cm05a_ind_lbl 3022 `"Radio and television activities"', add
label define cm05a_ind_lbl 3026 `"Sports and leisure centers"', add
label define cm05a_ind_lbl 9998 `"Activities not adequately defined or unclassifiable"', add
label define cm05a_ind_lbl 9999 `"NIU (not in universe)"', add
label values cm05a_ind cm05a_ind_lbl

label define cm05a_chbornm_lbl 00 `"0"'
label define cm05a_chbornm_lbl 01 `"1"', add
label define cm05a_chbornm_lbl 02 `"2"', add
label define cm05a_chbornm_lbl 03 `"3"', add
label define cm05a_chbornm_lbl 04 `"4"', add
label define cm05a_chbornm_lbl 05 `"5"', add
label define cm05a_chbornm_lbl 06 `"6"', add
label define cm05a_chbornm_lbl 07 `"7"', add
label define cm05a_chbornm_lbl 08 `"8"', add
label define cm05a_chbornm_lbl 09 `"9"', add
label define cm05a_chbornm_lbl 10 `"10"', add
label define cm05a_chbornm_lbl 11 `"11"', add
label define cm05a_chbornm_lbl 12 `"12"', add
label define cm05a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values cm05a_chbornm cm05a_chbornm_lbl

label define cm05a_chbornf_lbl 00 `"0"'
label define cm05a_chbornf_lbl 01 `"1"', add
label define cm05a_chbornf_lbl 02 `"2"', add
label define cm05a_chbornf_lbl 03 `"3"', add
label define cm05a_chbornf_lbl 04 `"4"', add
label define cm05a_chbornf_lbl 05 `"5"', add
label define cm05a_chbornf_lbl 06 `"6"', add
label define cm05a_chbornf_lbl 07 `"7"', add
label define cm05a_chbornf_lbl 08 `"8"', add
label define cm05a_chbornf_lbl 09 `"9"', add
label define cm05a_chbornf_lbl 10 `"10"', add
label define cm05a_chbornf_lbl 11 `"11"', add
label define cm05a_chbornf_lbl 12 `"12"', add
label define cm05a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values cm05a_chbornf cm05a_chbornf_lbl

label define cm05a_chsurvm_lbl 00 `"0"'
label define cm05a_chsurvm_lbl 01 `"1"', add
label define cm05a_chsurvm_lbl 02 `"2"', add
label define cm05a_chsurvm_lbl 03 `"3"', add
label define cm05a_chsurvm_lbl 04 `"4"', add
label define cm05a_chsurvm_lbl 05 `"5"', add
label define cm05a_chsurvm_lbl 06 `"6"', add
label define cm05a_chsurvm_lbl 07 `"7"', add
label define cm05a_chsurvm_lbl 08 `"8"', add
label define cm05a_chsurvm_lbl 09 `"9"', add
label define cm05a_chsurvm_lbl 10 `"10+"', add
label define cm05a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values cm05a_chsurvm cm05a_chsurvm_lbl

label define cm05a_chsurvf_lbl 00 `"0"'
label define cm05a_chsurvf_lbl 01 `"1"', add
label define cm05a_chsurvf_lbl 02 `"2"', add
label define cm05a_chsurvf_lbl 03 `"3"', add
label define cm05a_chsurvf_lbl 04 `"4"', add
label define cm05a_chsurvf_lbl 05 `"5"', add
label define cm05a_chsurvf_lbl 06 `"6"', add
label define cm05a_chsurvf_lbl 07 `"7"', add
label define cm05a_chsurvf_lbl 08 `"8"', add
label define cm05a_chsurvf_lbl 09 `"9"', add
label define cm05a_chsurvf_lbl 10 `"10+"', add
label define cm05a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values cm05a_chsurvf cm05a_chsurvf_lbl

label define cm05a_chbyrm_lbl 00 `"0"'
label define cm05a_chbyrm_lbl 01 `"1"', add
label define cm05a_chbyrm_lbl 02 `"2"', add
label define cm05a_chbyrm_lbl 03 `"3+"', add
label define cm05a_chbyrm_lbl 98 `"Unknown"', add
label define cm05a_chbyrm_lbl 99 `"NIU (not in universe)"', add
label values cm05a_chbyrm cm05a_chbyrm_lbl

label define cm05a_chbyrf_lbl 00 `"0"'
label define cm05a_chbyrf_lbl 01 `"1"', add
label define cm05a_chbyrf_lbl 02 `"2"', add
label define cm05a_chbyrf_lbl 03 `"3+"', add
label define cm05a_chbyrf_lbl 98 `"Unknown"', add
label define cm05a_chbyrf_lbl 99 `"NIU (not in universe)"', add
label values cm05a_chbyrf cm05a_chbyrf_lbl

label define cm05a_chborn_lbl 00 `"0"'
label define cm05a_chborn_lbl 01 `"1"', add
label define cm05a_chborn_lbl 02 `"2"', add
label define cm05a_chborn_lbl 03 `"3"', add
label define cm05a_chborn_lbl 04 `"4"', add
label define cm05a_chborn_lbl 05 `"5"', add
label define cm05a_chborn_lbl 06 `"6"', add
label define cm05a_chborn_lbl 07 `"7"', add
label define cm05a_chborn_lbl 08 `"8"', add
label define cm05a_chborn_lbl 09 `"9"', add
label define cm05a_chborn_lbl 10 `"10"', add
label define cm05a_chborn_lbl 11 `"11"', add
label define cm05a_chborn_lbl 12 `"12"', add
label define cm05a_chborn_lbl 13 `"13"', add
label define cm05a_chborn_lbl 14 `"14"', add
label define cm05a_chborn_lbl 15 `"15"', add
label define cm05a_chborn_lbl 16 `"16"', add
label define cm05a_chborn_lbl 17 `"17"', add
label define cm05a_chborn_lbl 18 `"18+"', add
label define cm05a_chborn_lbl 98 `"Unknown"', add
label define cm05a_chborn_lbl 99 `"NIU (not in universe)"', add
label values cm05a_chborn cm05a_chborn_lbl

label define cm05a_chsurv_lbl 00 `"0"'
label define cm05a_chsurv_lbl 01 `"1"', add
label define cm05a_chsurv_lbl 02 `"2"', add
label define cm05a_chsurv_lbl 03 `"3"', add
label define cm05a_chsurv_lbl 04 `"4"', add
label define cm05a_chsurv_lbl 05 `"5"', add
label define cm05a_chsurv_lbl 06 `"6"', add
label define cm05a_chsurv_lbl 07 `"7"', add
label define cm05a_chsurv_lbl 08 `"8"', add
label define cm05a_chsurv_lbl 09 `"9"', add
label define cm05a_chsurv_lbl 10 `"10"', add
label define cm05a_chsurv_lbl 11 `"11"', add
label define cm05a_chsurv_lbl 12 `"12"', add
label define cm05a_chsurv_lbl 13 `"13"', add
label define cm05a_chsurv_lbl 14 `"14"', add
label define cm05a_chsurv_lbl 15 `"15+"', add
label define cm05a_chsurv_lbl 98 `"Unknown"', add
label define cm05a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values cm05a_chsurv cm05a_chsurv_lbl

label define cm05a_chbyr_lbl 0 `"0"'
label define cm05a_chbyr_lbl 1 `"1"', add
label define cm05a_chbyr_lbl 2 `"2"', add
label define cm05a_chbyr_lbl 3 `"3"', add
label define cm05a_chbyr_lbl 4 `"4+"', add
label define cm05a_chbyr_lbl 8 `"Unknown"', add
label define cm05a_chbyr_lbl 9 `"NIU (not in universe)"', add
label values cm05a_chbyr cm05a_chbyr_lbl

label define cm05a_aidsknow_lbl 1 `"Yes"'
label define cm05a_aidsknow_lbl 2 `"No"', add
label define cm05a_aidsknow_lbl 9 `"NIU (not in universe)"', add
label values cm05a_aidsknow cm05a_aidsknow_lbl

label define cm05a_aidstran_lbl 01 `"Through blood"'
label define cm05a_aidstran_lbl 02 `"Sexual transmission"', add
label define cm05a_aidstran_lbl 03 `"Through blood/Sexual transmDirty instrumentssion"', add
label define cm05a_aidstran_lbl 04 `"Mother-to-child"', add
label define cm05a_aidstran_lbl 05 `"Through blood/Mother-to-child"', add
label define cm05a_aidstran_lbl 06 `"Sexual transmDirty instrumentssion/Mother-to-child"', add
label define cm05a_aidstran_lbl 07 `"Through blood/Sexual transmDirty instrumentssion/Mother-to-child"', add
label define cm05a_aidstran_lbl 08 `"Dirty instruments"', add
label define cm05a_aidstran_lbl 09 `"Through blood/Dirty instruments"', add
label define cm05a_aidstran_lbl 98 `"Unknown"', add
label define cm05a_aidstran_lbl 99 `"NIU (not in universe)"', add
label values cm05a_aidstran cm05a_aidstran_lbl


