* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    sn02a_dwnum     22-28    ///
  byte    sn02a_pern      29-30    ///
  byte    sn02a_fbig      31-31    ///
  byte    sn02a_region    32-33    ///
  int     sn02a_dept      34-36    ///
  byte    sn02a_urban     37-37    ///
  byte    sn02a_dwtype    38-38    ///
  byte    sn02a_e02       39-40    ///
  byte    sn02a_owner     41-41    ///
  byte    sn02a_toilet    42-42    ///
  byte    sn02a_watsrc    43-43    ///
  byte    sn02a_light     44-44    ///
  byte    sn02a_fuelck    45-45    ///
  byte    sn02a_wall      46-46    ///
  byte    sn02a_roof      47-47    ///
  byte    sn02a_floor     48-48    ///
  byte    sn02a_radio     49-49    ///
  byte    sn02a_tv        50-50    ///
  byte    sn02a_vcr       51-51    ///
  byte    sn02a_refrig    52-52    ///
  byte    sn02a_phone     53-53    ///
  byte    sn02a_cooker    54-54    ///
  byte    sn02a_stove     55-55    ///
  byte    sn02a_aircond   56-56    ///
  byte    sn02a_sewmach   57-57    ///
  byte    sn02a_noamen    58-58    ///
  byte    sn02a_car       59-59    ///
  byte    sn02a_motorcy   60-60    ///
  byte    sn02a_bike      61-61    ///
  byte    sn02a_cart      62-62    ///
  byte    sn02a_boat      63-63    ///
  byte    sn02a_notran    64-64    ///
  byte    sn02a_hoem      65-65    ///
  byte    sn02a_cartm     66-66    ///
  byte    sn02a_animm     67-67    ///
  byte    sn02a_tractm    68-68    ///
  byte    sn02a_carm      69-69    ///
  byte    sn02a_motorcym  70-70    ///
  byte    sn02a_boatm     71-71    ///
  byte    sn02a_refrigm   72-72    ///
  byte    sn02a_sewmachm  73-73    ///
  byte    sn02a_musicm    74-74    ///
  byte    sn02a_stoolsm   75-75    ///
  byte    sn02a_phonem    76-76    ///
  byte    sn02a_copym     77-77    ///
  byte    sn02a_computrm  78-78    ///
  byte    sn02a_millm     79-79    ///
  byte    sn02a_cameram   80-80    ///
  byte    sn02a_landm     81-81    ///
  byte    sn02a_nomeans   82-82    ///
  byte    sn02a_garbage   83-83    ///
  byte    sn02a_sewage    84-84    ///
  byte    sn02a_mealsk    85-85    ///
  byte    sn02a_healthc   86-86    ///
  byte    sn02a_mign      87-87    ///
  byte    sn02a_mortn     88-88    ///
  int     pernum          89-91    ///
  float   wtper           92-99    ///
  byte    resident        100-100  ///
  byte    sn02a_pernum    101-102  ///
  byte    sn02a_relate    103-103  ///
  byte    sn02a_sex       104-104  ///
  byte    sn02a_age       105-106  ///
  byte    sn02a_bplreg    107-108  ///
  int     sn02a_bpldep    109-111  ///
  byte    sn02a_resstat   112-112  ///
  byte    sn02a_respr     113-114  ///
  int     sn02a_respa     115-118  ///
  int     sn02a_ethnic    119-121  ///
  int     sn02a_lang1     122-124  ///
  int     sn02a_lang2     125-127  ///
  byte    sn02a_disnone   128-128  ///
  byte    sn02a_disbli    129-129  ///
  byte    sn02a_disdeaf   130-130  ///
  byte    sn02a_dismute   131-131  ///
  byte    sn02a_dislow    132-132  ///
  byte    sn02a_disup     133-133  ///
  byte    sn02a_dismen    134-134  ///
  byte    sn02a_disalb    135-135  ///
  byte    sn02a_dislep    136-136  ///
  byte    sn02a_disoth    137-137  ///
  byte    sn02a_schno     138-138  ///
  byte    sn02a_schfr     139-139  ///
  byte    sn02a_schfrar   140-140  ///
  byte    sn02a_schar     141-141  ///
  byte    sn02a_schko     142-142  ///
  byte    sn02a_schoth    143-143  ///
  byte    sn02a_edlev     144-145  ///
  byte    sn02a_lit       146-146  ///
  byte    sn02a_litfr     147-147  ///
  byte    sn02a_litar     148-148  ///
  byte    sn02a_litpu     149-149  ///
  byte    sn02a_litse     150-150  ///
  byte    sn02a_litma     151-151  ///
  byte    sn02a_litdi     152-152  ///
  byte    sn02a_litso     153-153  ///
  byte    sn02a_litoth    154-154  ///
  byte    sn02a_empstat   155-156  ///
  int     sn02a_occ3      157-159  ///
  byte    sn02a_classwk   160-161  ///
  byte    sn02a_marst     162-162  ///
  byte    sn02a_chbornm   163-164  ///
  byte    sn02a_chbornf   165-166  ///
  byte    sn02a_chsurvm   167-168  ///
  byte    sn02a_chsurvf   169-170  ///
  byte    sn02a_bthlyrm   171-172  ///
  byte    sn02a_bthlyrf   173-174  ///
  int     sn02a_birthyr   175-178  ///
  byte    sn02a_edlevg    179-180  ///
  using `"ipumsi_00107.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var sn02a_dwnum    `"Dwelling number"'
label var sn02a_pern     `"Number of persons in household"'
label var sn02a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var sn02a_region   `"Region"'
label var sn02a_dept     `"Department"'
label var sn02a_urban    `"Urban"'
label var sn02a_dwtype   `"Type of dwelling unit"'
label var sn02a_e02      `"Number of living rooms"'
label var sn02a_owner    `"Ownership status"'
label var sn02a_toilet   `"Type of toilet facility"'
label var sn02a_watsrc   `"Source of water"'
label var sn02a_light    `"Main type of lighting"'
label var sn02a_fuelck   `"Main type of fuel for cooking"'
label var sn02a_wall     `"Type of wall"'
label var sn02a_roof     `"Type of roof"'
label var sn02a_floor    `"Type offloor"'
label var sn02a_radio    `"Radio"'
label var sn02a_tv       `"Television"'
label var sn02a_vcr      `"VCR / DVD player"'
label var sn02a_refrig   `"Refrigerator / freezer"'
label var sn02a_phone    `"Telephone"'
label var sn02a_cooker   `"Gas cooker / oven"'
label var sn02a_stove    `"Improved stove"'
label var sn02a_aircond  `"Air conditioner"'
label var sn02a_sewmach  `"Sewing machine"'
label var sn02a_noamen   `"No amenities"'
label var sn02a_car      `"Car"'
label var sn02a_motorcy  `"Motorcycle / scooter/ moped"'
label var sn02a_bike     `"Bicycle"'
label var sn02a_cart     `"Cart / barouche for transport"'
label var sn02a_boat     `"Pirogue / traditional boat for transport"'
label var sn02a_notran   `"No transportation"'
label var sn02a_hoem     `"Hoe / plough / sower"'
label var sn02a_cartm    `"Cart / barouche (means of production)"'
label var sn02a_animm    `"Draft animals (horses, oxen) (means of production)"'
label var sn02a_tractm   `"Tractor (means of production)"'
label var sn02a_carm     `"Car / truck (means of production)"'
label var sn02a_motorcym `"Motorcycle / scooter/ moped (means of production)"'
label var sn02a_boatm    `"Pirogue / traditional boat(means of production)"'
label var sn02a_refrigm  `"Refrigerator / freezer (means of production)"'
label var sn02a_sewmachm `"Sewing machine (means of production)"'
label var sn02a_musicm   `"Music instrument (means of production)"'
label var sn02a_stoolsm  `"Stools, canvas cover (means of production)"'
label var sn02a_phonem   `"Telephone / fax machine (means of production)"'
label var sn02a_copym    `"Photocopy machine (means of production)"'
label var sn02a_computrm `"Computer (means of production)"'
label var sn02a_millm    `"Mill / shelling machine (means of production)"'
label var sn02a_cameram  `"Photo camera / camcorder (means of production)"'
label var sn02a_landm    `"Land patch / building (means of production)"'
label var sn02a_nomeans  `"No means of production"'
label var sn02a_garbage  `"Main mode of disposal for household garbage"'
label var sn02a_sewage   `"Main mode of disposal for sewage water"'
label var sn02a_mealsk   `"Meal skipped"'
label var sn02a_healthc  `"Healthcare"'
label var sn02a_mign     `"Number of migration records"'
label var sn02a_mortn    `"Number of mortality records"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var resident       `"Residence status: de facto, de jure"'
label var sn02a_pernum   `"Person number (within household)"'
label var sn02a_relate   `"Relationship to head"'
label var sn02a_sex      `"Sex"'
label var sn02a_age      `"Age"'
label var sn02a_bplreg   `"Region of birth"'
label var sn02a_bpldep   `"Department of birth"'
label var sn02a_resstat  `"Residence status"'
label var sn02a_respr    `"Region of residence 5 years ago"'
label var sn02a_respa    `"District of residence 5 years ago"'
label var sn02a_ethnic   `"Ethnic group or nationality"'
label var sn02a_lang1    `"First language spoken"'
label var sn02a_lang2    `"Second language spoken"'
label var sn02a_disnone  `"Absence of disability or handicap"'
label var sn02a_disbli   `"Blindness"'
label var sn02a_disdeaf  `"Deafness"'
label var sn02a_dismute  `"Muteness"'
label var sn02a_dislow   `"Disability in the lower limbs"'
label var sn02a_disup    `"Disability in the upper limbs"'
label var sn02a_dismen   `"Mental deficiency"'
label var sn02a_disalb   `"Albinos"'
label var sn02a_dislep   `"Leper (with mutilations)"'
label var sn02a_disoth   `"Other disability or handicap"'
label var sn02a_schno    `"Never been to school"'
label var sn02a_schfr    `"Ever been to French school"'
label var sn02a_schfrar  `"Ever been to Franco-Arabic school"'
label var sn02a_schar    `"Ever been to Arabic school"'
label var sn02a_schko    `"Ever been to Koranic school"'
label var sn02a_schoth   `"Ever been to other type of school"'
label var sn02a_edlev    `"Level of education"'
label var sn02a_lit      `"Literacy"'
label var sn02a_litfr    `"Reads / writes in French"'
label var sn02a_litar    `"Reads / writes in Arabic"'
label var sn02a_litpu    `"Reads / writes in Pulaar"'
label var sn02a_litse    `"Reads / writes in Sereer"'
label var sn02a_litma    `"Reads / writes in Mandinka"'
label var sn02a_litdi    `"Reads / writes in Diola"'
label var sn02a_litso    `"Reads / writes in Soninke"'
label var sn02a_litoth   `"Reads / writes in other languages"'
label var sn02a_empstat  `"Employment status in the last 12 months"'
label var sn02a_occ3     `"Occupation, 3 digits"'
label var sn02a_classwk  `"Work status"'
label var sn02a_marst    `"Marital status"'
label var sn02a_chbornm  `"Number of male children ever born"'
label var sn02a_chbornf  `"Number of female children ever born"'
label var sn02a_chsurvm  `"Number of male children surviving"'
label var sn02a_chsurvf  `"Number of female children surviving"'
label var sn02a_bthlyrm  `"Number of male children born in the past 12 months"'
label var sn02a_bthlyrf  `"Number of female children born in the past 12 months"'
label var sn02a_birthyr  `"Year of birth"'
label var sn02a_edlevg   `"Level of education (grouped)"'

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

label define sn02a_pern_lbl 01 `"1"'
label define sn02a_pern_lbl 02 `"2"', add
label define sn02a_pern_lbl 03 `"3"', add
label define sn02a_pern_lbl 04 `"4"', add
label define sn02a_pern_lbl 05 `"5"', add
label define sn02a_pern_lbl 06 `"6"', add
label define sn02a_pern_lbl 07 `"7"', add
label define sn02a_pern_lbl 08 `"8"', add
label define sn02a_pern_lbl 09 `"9"', add
label define sn02a_pern_lbl 10 `"10"', add
label define sn02a_pern_lbl 11 `"11"', add
label define sn02a_pern_lbl 12 `"12"', add
label define sn02a_pern_lbl 13 `"13"', add
label define sn02a_pern_lbl 14 `"14"', add
label define sn02a_pern_lbl 15 `"15"', add
label define sn02a_pern_lbl 16 `"16"', add
label define sn02a_pern_lbl 17 `"17"', add
label define sn02a_pern_lbl 18 `"18"', add
label define sn02a_pern_lbl 19 `"19"', add
label define sn02a_pern_lbl 20 `"20"', add
label define sn02a_pern_lbl 21 `"21"', add
label define sn02a_pern_lbl 22 `"22"', add
label define sn02a_pern_lbl 23 `"23"', add
label define sn02a_pern_lbl 24 `"24"', add
label define sn02a_pern_lbl 25 `"25"', add
label define sn02a_pern_lbl 26 `"26"', add
label define sn02a_pern_lbl 27 `"27"', add
label define sn02a_pern_lbl 28 `"28"', add
label define sn02a_pern_lbl 29 `"29"', add
label define sn02a_pern_lbl 30 `"30"', add
label define sn02a_pern_lbl 31 `"31"', add
label define sn02a_pern_lbl 32 `"32"', add
label define sn02a_pern_lbl 33 `"33"', add
label define sn02a_pern_lbl 34 `"34"', add
label define sn02a_pern_lbl 35 `"35"', add
label define sn02a_pern_lbl 36 `"36"', add
label define sn02a_pern_lbl 37 `"37"', add
label define sn02a_pern_lbl 38 `"38"', add
label define sn02a_pern_lbl 39 `"39"', add
label define sn02a_pern_lbl 40 `"40"', add
label define sn02a_pern_lbl 41 `"41"', add
label define sn02a_pern_lbl 42 `"42"', add
label define sn02a_pern_lbl 43 `"43"', add
label define sn02a_pern_lbl 44 `"44"', add
label define sn02a_pern_lbl 45 `"45"', add
label define sn02a_pern_lbl 46 `"46"', add
label define sn02a_pern_lbl 47 `"47"', add
label define sn02a_pern_lbl 48 `"48"', add
label define sn02a_pern_lbl 49 `"49"', add
label define sn02a_pern_lbl 50 `"50"', add
label define sn02a_pern_lbl 51 `"51"', add
label define sn02a_pern_lbl 52 `"52"', add
label define sn02a_pern_lbl 53 `"53"', add
label define sn02a_pern_lbl 54 `"54"', add
label define sn02a_pern_lbl 55 `"55"', add
label define sn02a_pern_lbl 56 `"56"', add
label define sn02a_pern_lbl 57 `"57"', add
label define sn02a_pern_lbl 58 `"58"', add
label define sn02a_pern_lbl 59 `"59"', add
label define sn02a_pern_lbl 60 `"60"', add
label define sn02a_pern_lbl 61 `"61"', add
label define sn02a_pern_lbl 62 `"62"', add
label define sn02a_pern_lbl 63 `"63"', add
label define sn02a_pern_lbl 64 `"64"', add
label define sn02a_pern_lbl 65 `"65"', add
label define sn02a_pern_lbl 66 `"66"', add
label define sn02a_pern_lbl 67 `"67"', add
label define sn02a_pern_lbl 68 `"68"', add
label define sn02a_pern_lbl 69 `"69"', add
label define sn02a_pern_lbl 70 `"70"', add
label define sn02a_pern_lbl 71 `"71"', add
label define sn02a_pern_lbl 72 `"72"', add
label define sn02a_pern_lbl 73 `"73"', add
label define sn02a_pern_lbl 74 `"74"', add
label define sn02a_pern_lbl 75 `"75"', add
label define sn02a_pern_lbl 76 `"76"', add
label define sn02a_pern_lbl 77 `"77"', add
label define sn02a_pern_lbl 78 `"78"', add
label define sn02a_pern_lbl 79 `"79"', add
label define sn02a_pern_lbl 80 `"80"', add
label define sn02a_pern_lbl 81 `"81"', add
label define sn02a_pern_lbl 82 `"82"', add
label define sn02a_pern_lbl 83 `"83"', add
label define sn02a_pern_lbl 84 `"84"', add
label define sn02a_pern_lbl 85 `"85"', add
label define sn02a_pern_lbl 87 `"87"', add
label define sn02a_pern_lbl 88 `"88"', add
label define sn02a_pern_lbl 89 `"89"', add
label define sn02a_pern_lbl 90 `"90"', add
label define sn02a_pern_lbl 91 `"91"', add
label define sn02a_pern_lbl 93 `"93"', add
label define sn02a_pern_lbl 94 `"94"', add
label define sn02a_pern_lbl 95 `"95"', add
label define sn02a_pern_lbl 96 `"96"', add
label define sn02a_pern_lbl 97 `"97"', add
label define sn02a_pern_lbl 98 `"98"', add
label define sn02a_pern_lbl 99 `"99"', add
label values sn02a_pern sn02a_pern_lbl

label define sn02a_fbig_lbl 0 `"No problem"'
label define sn02a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define sn02a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values sn02a_fbig sn02a_fbig_lbl

label define sn02a_region_lbl 01 `"Dakar"'
label define sn02a_region_lbl 02 `"Diourbel"', add
label define sn02a_region_lbl 03 `"Fatick"', add
label define sn02a_region_lbl 04 `"Kaolack"', add
label define sn02a_region_lbl 05 `"Kolda"', add
label define sn02a_region_lbl 06 `"Louga"', add
label define sn02a_region_lbl 07 `"Matam"', add
label define sn02a_region_lbl 08 `"Saint Louis"', add
label define sn02a_region_lbl 09 `"Tambacounda"', add
label define sn02a_region_lbl 10 `"Thies"', add
label define sn02a_region_lbl 11 `"Ziguinchor"', add
label values sn02a_region sn02a_region_lbl

label define sn02a_dept_lbl 011 `"Dakar"'
label define sn02a_dept_lbl 012 `"Guédiawaye"', add
label define sn02a_dept_lbl 013 `"Pikine"', add
label define sn02a_dept_lbl 014 `"Rufisque"', add
label define sn02a_dept_lbl 021 `"Bambey"', add
label define sn02a_dept_lbl 022 `"Diourbel"', add
label define sn02a_dept_lbl 023 `"Mbacké"', add
label define sn02a_dept_lbl 031 `"Fatick"', add
label define sn02a_dept_lbl 032 `"Foundiougne"', add
label define sn02a_dept_lbl 033 `"Gossas"', add
label define sn02a_dept_lbl 041 `"Kaffrine"', add
label define sn02a_dept_lbl 042 `"Kaolack"', add
label define sn02a_dept_lbl 043 `"Nioro"', add
label define sn02a_dept_lbl 051 `"Kolda"', add
label define sn02a_dept_lbl 052 `"Sédhiou"', add
label define sn02a_dept_lbl 053 `"Vélingara"', add
label define sn02a_dept_lbl 061 `"Kébémer"', add
label define sn02a_dept_lbl 062 `"Linguère"', add
label define sn02a_dept_lbl 063 `"Louga"', add
label define sn02a_dept_lbl 071 `"Kanel"', add
label define sn02a_dept_lbl 072 `"Matam"', add
label define sn02a_dept_lbl 073 `"Ferlo"', add
label define sn02a_dept_lbl 081 `"Dagana"', add
label define sn02a_dept_lbl 082 `"Podor"', add
label define sn02a_dept_lbl 083 `"Saint-Louis"', add
label define sn02a_dept_lbl 091 `"Bakel"', add
label define sn02a_dept_lbl 092 `"Kédougou"', add
label define sn02a_dept_lbl 093 `"Tambacounda"', add
label define sn02a_dept_lbl 101 `"Mbour"', add
label define sn02a_dept_lbl 102 `"Thiès"', add
label define sn02a_dept_lbl 103 `"Tivaoune"', add
label define sn02a_dept_lbl 111 `"Bignona"', add
label define sn02a_dept_lbl 112 `"Oussouye"', add
label define sn02a_dept_lbl 113 `"Ziguinchor"', add
label values sn02a_dept sn02a_dept_lbl

label define sn02a_urban_lbl 1 `"Urban"'
label define sn02a_urban_lbl 2 `"Rural"', add
label define sn02a_urban_lbl 9 `"Not stated"', add
label values sn02a_urban sn02a_urban_lbl

label define sn02a_dwtype_lbl 1 `"Hut"'
label define sn02a_dwtype_lbl 2 `"Shack"', add
label define sn02a_dwtype_lbl 3 `"House, no floor"', add
label define sn02a_dwtype_lbl 4 `"House, with floors"', add
label define sn02a_dwtype_lbl 5 `"Flat in apartment building"', add
label define sn02a_dwtype_lbl 6 `"Other"', add
label values sn02a_dwtype sn02a_dwtype_lbl

label define sn02a_e02_lbl 01 `"1"'
label define sn02a_e02_lbl 02 `"2"', add
label define sn02a_e02_lbl 03 `"3"', add
label define sn02a_e02_lbl 04 `"4"', add
label define sn02a_e02_lbl 05 `"5"', add
label define sn02a_e02_lbl 06 `"6"', add
label define sn02a_e02_lbl 07 `"7"', add
label define sn02a_e02_lbl 08 `"8"', add
label define sn02a_e02_lbl 09 `"9"', add
label define sn02a_e02_lbl 10 `"10"', add
label define sn02a_e02_lbl 11 `"11"', add
label define sn02a_e02_lbl 12 `"12"', add
label define sn02a_e02_lbl 13 `"13"', add
label define sn02a_e02_lbl 14 `"14"', add
label define sn02a_e02_lbl 15 `"15"', add
label define sn02a_e02_lbl 16 `"16"', add
label define sn02a_e02_lbl 17 `"17"', add
label define sn02a_e02_lbl 18 `"18"', add
label define sn02a_e02_lbl 19 `"19"', add
label define sn02a_e02_lbl 20 `"20"', add
label define sn02a_e02_lbl 21 `"21"', add
label define sn02a_e02_lbl 22 `"22"', add
label define sn02a_e02_lbl 23 `"23"', add
label define sn02a_e02_lbl 24 `"24"', add
label define sn02a_e02_lbl 25 `"25"', add
label define sn02a_e02_lbl 26 `"26"', add
label define sn02a_e02_lbl 27 `"27"', add
label define sn02a_e02_lbl 28 `"28"', add
label define sn02a_e02_lbl 29 `"29"', add
label define sn02a_e02_lbl 30 `"30"', add
label define sn02a_e02_lbl 31 `"31"', add
label define sn02a_e02_lbl 32 `"32"', add
label define sn02a_e02_lbl 33 `"33"', add
label define sn02a_e02_lbl 34 `"34"', add
label define sn02a_e02_lbl 35 `"35+"', add
label values sn02a_e02 sn02a_e02_lbl

label define sn02a_owner_lbl 1 `"Landlord"'
label define sn02a_owner_lbl 2 `"Condominium (co-tenant)"', add
label define sn02a_owner_lbl 3 `"Tenant"', add
label define sn02a_owner_lbl 4 `"Paid by employer"', add
label define sn02a_owner_lbl 5 `"Free family lodging"', add
label define sn02a_owner_lbl 6 `"Other"', add
label values sn02a_owner sn02a_owner_lbl

label define sn02a_toilet_lbl 1 `"Water closet, connected to sewage"'
label define sn02a_toilet_lbl 2 `"Water closet, septic tank"', add
label define sn02a_toilet_lbl 3 `"Cesspool, latrine"', add
label define sn02a_toilet_lbl 4 `"Public toilet facility"', add
label define sn02a_toilet_lbl 5 `"In the wild"', add
label define sn02a_toilet_lbl 6 `"Other cases"', add
label values sn02a_toilet sn02a_toilet_lbl

label define sn02a_watsrc_lbl 1 `"Well inside house"'
label define sn02a_watsrc_lbl 2 `"Well outside house"', add
label define sn02a_watsrc_lbl 3 `"Tap, inside house"', add
label define sn02a_watsrc_lbl 4 `"Tap, outside house"', add
label define sn02a_watsrc_lbl 5 `"Deep well, pump"', add
label define sn02a_watsrc_lbl 6 `"Water truck / water dealer"', add
label define sn02a_watsrc_lbl 7 `"Spring, river"', add
label define sn02a_watsrc_lbl 8 `"Other"', add
label values sn02a_watsrc sn02a_watsrc_lbl

label define sn02a_light_lbl 1 `"Electricity"'
label define sn02a_light_lbl 2 `"Solar energy"', add
label define sn02a_light_lbl 3 `"Generator"', add
label define sn02a_light_lbl 4 `"Gas lamp"', add
label define sn02a_light_lbl 5 `"Kerosene lantern"', add
label define sn02a_light_lbl 6 `"Petrol lamp"', add
label define sn02a_light_lbl 7 `"Candle"', add
label define sn02a_light_lbl 8 `"Wood"', add
label define sn02a_light_lbl 9 `"Other"', add
label values sn02a_light sn02a_light_lbl

label define sn02a_fuelck_lbl 1 `"Wood"'
label define sn02a_fuelck_lbl 2 `"Coal / charcoal"', add
label define sn02a_fuelck_lbl 3 `"Gas"', add
label define sn02a_fuelck_lbl 4 `"Electricity"', add
label define sn02a_fuelck_lbl 5 `"Other"', add
label values sn02a_fuelck sn02a_fuelck_lbl

label define sn02a_wall_lbl 1 `"Cement"'
label define sn02a_wall_lbl 2 `"Wood"', add
label define sn02a_wall_lbl 3 `"Adobe bricks"', add
label define sn02a_wall_lbl 4 `"Straw, thatch"', add
label define sn02a_wall_lbl 5 `"Other"', add
label values sn02a_wall sn02a_wall_lbl

label define sn02a_roof_lbl 1 `"Cement, concrete"'
label define sn02a_roof_lbl 2 `"Tiles, slates"', add
label define sn02a_roof_lbl 3 `"Zinc sheets, iron sheets"', add
label define sn02a_roof_lbl 4 `"Straw, thatch"', add
label define sn02a_roof_lbl 5 `"Other"', add
label values sn02a_roof sn02a_roof_lbl

label define sn02a_floor_lbl 1 `"Ceramic tiles"'
label define sn02a_floor_lbl 2 `"Cement"', add
label define sn02a_floor_lbl 3 `"Earth, Adobe"', add
label define sn02a_floor_lbl 4 `"Sand"', add
label define sn02a_floor_lbl 5 `"Other"', add
label values sn02a_floor sn02a_floor_lbl

label define sn02a_radio_lbl 1 `"No"'
label define sn02a_radio_lbl 2 `"Yes"', add
label values sn02a_radio sn02a_radio_lbl

label define sn02a_tv_lbl 1 `"No"'
label define sn02a_tv_lbl 2 `"Yes"', add
label values sn02a_tv sn02a_tv_lbl

label define sn02a_vcr_lbl 1 `"No"'
label define sn02a_vcr_lbl 2 `"Yes"', add
label values sn02a_vcr sn02a_vcr_lbl

label define sn02a_refrig_lbl 1 `"No"'
label define sn02a_refrig_lbl 2 `"Yes"', add
label values sn02a_refrig sn02a_refrig_lbl

label define sn02a_phone_lbl 1 `"No"'
label define sn02a_phone_lbl 2 `"Yes"', add
label values sn02a_phone sn02a_phone_lbl

label define sn02a_cooker_lbl 1 `"No"'
label define sn02a_cooker_lbl 2 `"Yes"', add
label values sn02a_cooker sn02a_cooker_lbl

label define sn02a_stove_lbl 1 `"No"'
label define sn02a_stove_lbl 2 `"Yes"', add
label values sn02a_stove sn02a_stove_lbl

label define sn02a_aircond_lbl 1 `"No"'
label define sn02a_aircond_lbl 2 `"Yes"', add
label values sn02a_aircond sn02a_aircond_lbl

label define sn02a_sewmach_lbl 1 `"No"'
label define sn02a_sewmach_lbl 2 `"Yes"', add
label values sn02a_sewmach sn02a_sewmach_lbl

label define sn02a_noamen_lbl 1 `"Has amenities"'
label define sn02a_noamen_lbl 2 `"No amenities"', add
label values sn02a_noamen sn02a_noamen_lbl

label define sn02a_car_lbl 1 `"No"'
label define sn02a_car_lbl 2 `"Yes"', add
label values sn02a_car sn02a_car_lbl

label define sn02a_motorcy_lbl 1 `"No"'
label define sn02a_motorcy_lbl 2 `"Yes"', add
label values sn02a_motorcy sn02a_motorcy_lbl

label define sn02a_bike_lbl 1 `"No"'
label define sn02a_bike_lbl 2 `"Yes"', add
label values sn02a_bike sn02a_bike_lbl

label define sn02a_cart_lbl 1 `"No"'
label define sn02a_cart_lbl 2 `"Yes"', add
label values sn02a_cart sn02a_cart_lbl

label define sn02a_boat_lbl 1 `"No"'
label define sn02a_boat_lbl 2 `"Yes"', add
label values sn02a_boat sn02a_boat_lbl

label define sn02a_notran_lbl 1 `"Has transportation"'
label define sn02a_notran_lbl 2 `"No transportation"', add
label values sn02a_notran sn02a_notran_lbl

label define sn02a_hoem_lbl 1 `"No"'
label define sn02a_hoem_lbl 2 `"Yes"', add
label values sn02a_hoem sn02a_hoem_lbl

label define sn02a_cartm_lbl 1 `"No"'
label define sn02a_cartm_lbl 2 `"Yes"', add
label values sn02a_cartm sn02a_cartm_lbl

label define sn02a_animm_lbl 1 `"No"'
label define sn02a_animm_lbl 2 `"Yes"', add
label values sn02a_animm sn02a_animm_lbl

label define sn02a_tractm_lbl 1 `"No"'
label define sn02a_tractm_lbl 2 `"Yes"', add
label values sn02a_tractm sn02a_tractm_lbl

label define sn02a_carm_lbl 1 `"No"'
label define sn02a_carm_lbl 2 `"Yes"', add
label values sn02a_carm sn02a_carm_lbl

label define sn02a_motorcym_lbl 1 `"No"'
label define sn02a_motorcym_lbl 2 `"Yes"', add
label values sn02a_motorcym sn02a_motorcym_lbl

label define sn02a_boatm_lbl 1 `"No"'
label define sn02a_boatm_lbl 2 `"Yes"', add
label values sn02a_boatm sn02a_boatm_lbl

label define sn02a_refrigm_lbl 1 `"No"'
label define sn02a_refrigm_lbl 2 `"Yes"', add
label values sn02a_refrigm sn02a_refrigm_lbl

label define sn02a_sewmachm_lbl 1 `"No"'
label define sn02a_sewmachm_lbl 2 `"Yes"', add
label values sn02a_sewmachm sn02a_sewmachm_lbl

label define sn02a_musicm_lbl 1 `"No"'
label define sn02a_musicm_lbl 2 `"Yes"', add
label values sn02a_musicm sn02a_musicm_lbl

label define sn02a_stoolsm_lbl 1 `"No"'
label define sn02a_stoolsm_lbl 2 `"Yes"', add
label values sn02a_stoolsm sn02a_stoolsm_lbl

label define sn02a_phonem_lbl 1 `"No"'
label define sn02a_phonem_lbl 2 `"Yes"', add
label values sn02a_phonem sn02a_phonem_lbl

label define sn02a_copym_lbl 1 `"No"'
label define sn02a_copym_lbl 2 `"Yes"', add
label values sn02a_copym sn02a_copym_lbl

label define sn02a_computrm_lbl 1 `"No"'
label define sn02a_computrm_lbl 2 `"Yes"', add
label values sn02a_computrm sn02a_computrm_lbl

label define sn02a_millm_lbl 1 `"No"'
label define sn02a_millm_lbl 2 `"Yes"', add
label values sn02a_millm sn02a_millm_lbl

label define sn02a_cameram_lbl 1 `"No"'
label define sn02a_cameram_lbl 2 `"Yes"', add
label values sn02a_cameram sn02a_cameram_lbl

label define sn02a_landm_lbl 1 `"No"'
label define sn02a_landm_lbl 2 `"Yes"', add
label values sn02a_landm sn02a_landm_lbl

label define sn02a_nomeans_lbl 1 `"Has means of production"'
label define sn02a_nomeans_lbl 2 `"No means of production"', add
label values sn02a_nomeans sn02a_nomeans_lbl

label define sn02a_garbage_lbl 1 `"Garbage truck"'
label define sn02a_garbage_lbl 2 `"Garbage cart"', add
label define sn02a_garbage_lbl 3 `"Garbage dump, authorized"', add
label define sn02a_garbage_lbl 4 `"Garbage dump, illegal (wild)"', add
label define sn02a_garbage_lbl 5 `"Buried"', add
label define sn02a_garbage_lbl 6 `"Burned"', add
label define sn02a_garbage_lbl 7 `"Other"', add
label values sn02a_garbage sn02a_garbage_lbl

label define sn02a_sewage_lbl 1 `"Sewage network"'
label define sn02a_sewage_lbl 2 `"Covered canal"', add
label define sn02a_sewage_lbl 3 `"Open canal"', add
label define sn02a_sewage_lbl 4 `"Grate / swallowing inlet"', add
label define sn02a_sewage_lbl 5 `"In the sea, in large river"', add
label define sn02a_sewage_lbl 6 `"In small river"', add
label define sn02a_sewage_lbl 7 `"Hole dug in soil"', add
label define sn02a_sewage_lbl 8 `"In the street / in the wild"', add
label define sn02a_sewage_lbl 9 `"Other"', add
label values sn02a_sewage sn02a_sewage_lbl

label define sn02a_mealsk_lbl 1 `"Yes"'
label define sn02a_mealsk_lbl 2 `"No"', add
label values sn02a_mealsk sn02a_mealsk_lbl

label define sn02a_healthc_lbl 1 `"Yes"'
label define sn02a_healthc_lbl 2 `"No"', add
label define sn02a_healthc_lbl 3 `"NIU (not in universe)"', add
label values sn02a_healthc sn02a_healthc_lbl

label define sn02a_mign_lbl 0 `"0"'
label define sn02a_mign_lbl 1 `"1"', add
label define sn02a_mign_lbl 2 `"2"', add
label define sn02a_mign_lbl 3 `"3"', add
label define sn02a_mign_lbl 4 `"4"', add
label define sn02a_mign_lbl 5 `"5"', add
label define sn02a_mign_lbl 6 `"6"', add
label values sn02a_mign sn02a_mign_lbl

label define sn02a_mortn_lbl 0 `"0"'
label define sn02a_mortn_lbl 1 `"1"', add
label define sn02a_mortn_lbl 2 `"2"', add
label define sn02a_mortn_lbl 3 `"3"', add
label define sn02a_mortn_lbl 4 `"4"', add
label define sn02a_mortn_lbl 5 `"5"', add
label define sn02a_mortn_lbl 6 `"6"', add
label values sn02a_mortn sn02a_mortn_lbl

label define resident_lbl 1 `"Present resident"'
label define resident_lbl 2 `"Absent resident"', add
label define resident_lbl 3 `"Visitor/non-resident"', add
label define resident_lbl 4 `"De facto population (present persons)"', add
label define resident_lbl 9 `"Unknown/missing"', add
label values resident resident_lbl

label define sn02a_pernum_lbl 00 `"Household record"'
label define sn02a_pernum_lbl 01 `"1"', add
label define sn02a_pernum_lbl 02 `"2"', add
label define sn02a_pernum_lbl 03 `"3"', add
label define sn02a_pernum_lbl 04 `"4"', add
label define sn02a_pernum_lbl 05 `"5"', add
label define sn02a_pernum_lbl 06 `"6"', add
label define sn02a_pernum_lbl 07 `"7"', add
label define sn02a_pernum_lbl 08 `"8"', add
label define sn02a_pernum_lbl 09 `"9"', add
label define sn02a_pernum_lbl 10 `"10"', add
label define sn02a_pernum_lbl 11 `"11"', add
label define sn02a_pernum_lbl 12 `"12"', add
label define sn02a_pernum_lbl 13 `"13"', add
label define sn02a_pernum_lbl 14 `"14"', add
label define sn02a_pernum_lbl 15 `"15"', add
label define sn02a_pernum_lbl 16 `"16"', add
label define sn02a_pernum_lbl 17 `"17"', add
label define sn02a_pernum_lbl 18 `"18"', add
label define sn02a_pernum_lbl 19 `"19"', add
label define sn02a_pernum_lbl 20 `"20"', add
label define sn02a_pernum_lbl 21 `"21"', add
label define sn02a_pernum_lbl 22 `"22"', add
label define sn02a_pernum_lbl 23 `"23"', add
label define sn02a_pernum_lbl 24 `"24"', add
label define sn02a_pernum_lbl 25 `"25"', add
label define sn02a_pernum_lbl 26 `"26"', add
label define sn02a_pernum_lbl 27 `"27"', add
label define sn02a_pernum_lbl 28 `"28"', add
label define sn02a_pernum_lbl 29 `"29"', add
label define sn02a_pernum_lbl 30 `"30"', add
label define sn02a_pernum_lbl 31 `"31"', add
label define sn02a_pernum_lbl 32 `"32"', add
label define sn02a_pernum_lbl 33 `"33"', add
label define sn02a_pernum_lbl 34 `"34"', add
label define sn02a_pernum_lbl 35 `"35"', add
label define sn02a_pernum_lbl 36 `"36"', add
label define sn02a_pernum_lbl 37 `"37"', add
label define sn02a_pernum_lbl 38 `"38"', add
label define sn02a_pernum_lbl 39 `"39"', add
label define sn02a_pernum_lbl 40 `"40"', add
label define sn02a_pernum_lbl 41 `"41"', add
label define sn02a_pernum_lbl 42 `"42"', add
label define sn02a_pernum_lbl 43 `"43"', add
label define sn02a_pernum_lbl 44 `"44"', add
label define sn02a_pernum_lbl 45 `"45"', add
label define sn02a_pernum_lbl 46 `"46"', add
label define sn02a_pernum_lbl 47 `"47"', add
label define sn02a_pernum_lbl 48 `"48"', add
label define sn02a_pernum_lbl 49 `"49"', add
label define sn02a_pernum_lbl 50 `"50"', add
label define sn02a_pernum_lbl 51 `"51"', add
label define sn02a_pernum_lbl 52 `"52"', add
label define sn02a_pernum_lbl 53 `"53"', add
label define sn02a_pernum_lbl 54 `"54"', add
label define sn02a_pernum_lbl 55 `"55"', add
label define sn02a_pernum_lbl 56 `"56"', add
label define sn02a_pernum_lbl 57 `"57"', add
label define sn02a_pernum_lbl 58 `"58"', add
label define sn02a_pernum_lbl 59 `"59"', add
label define sn02a_pernum_lbl 60 `"60"', add
label define sn02a_pernum_lbl 61 `"61"', add
label define sn02a_pernum_lbl 62 `"62"', add
label define sn02a_pernum_lbl 63 `"63"', add
label define sn02a_pernum_lbl 64 `"64"', add
label define sn02a_pernum_lbl 65 `"65"', add
label define sn02a_pernum_lbl 66 `"66"', add
label define sn02a_pernum_lbl 67 `"67"', add
label define sn02a_pernum_lbl 68 `"68"', add
label define sn02a_pernum_lbl 69 `"69"', add
label define sn02a_pernum_lbl 70 `"70"', add
label define sn02a_pernum_lbl 71 `"71"', add
label define sn02a_pernum_lbl 72 `"72"', add
label define sn02a_pernum_lbl 73 `"73"', add
label define sn02a_pernum_lbl 74 `"74"', add
label define sn02a_pernum_lbl 75 `"75"', add
label define sn02a_pernum_lbl 76 `"76"', add
label define sn02a_pernum_lbl 77 `"77"', add
label define sn02a_pernum_lbl 78 `"78"', add
label define sn02a_pernum_lbl 79 `"79"', add
label define sn02a_pernum_lbl 80 `"80"', add
label define sn02a_pernum_lbl 81 `"81"', add
label define sn02a_pernum_lbl 82 `"82"', add
label define sn02a_pernum_lbl 83 `"83"', add
label define sn02a_pernum_lbl 84 `"84"', add
label define sn02a_pernum_lbl 85 `"85"', add
label define sn02a_pernum_lbl 86 `"86"', add
label define sn02a_pernum_lbl 87 `"87"', add
label define sn02a_pernum_lbl 88 `"88"', add
label define sn02a_pernum_lbl 89 `"89"', add
label define sn02a_pernum_lbl 90 `"90"', add
label define sn02a_pernum_lbl 91 `"91"', add
label define sn02a_pernum_lbl 92 `"92"', add
label define sn02a_pernum_lbl 93 `"93"', add
label define sn02a_pernum_lbl 94 `"94"', add
label define sn02a_pernum_lbl 95 `"95"', add
label define sn02a_pernum_lbl 96 `"96"', add
label define sn02a_pernum_lbl 97 `"97"', add
label define sn02a_pernum_lbl 98 `"98"', add
label define sn02a_pernum_lbl 99 `"99"', add
label values sn02a_pernum sn02a_pernum_lbl

label define sn02a_relate_lbl 1 `"Head of household"'
label define sn02a_relate_lbl 2 `"Spouse (husband / wife)"', add
label define sn02a_relate_lbl 3 `"Child (son / daughter)"', add
label define sn02a_relate_lbl 4 `"Parent (father / mother)"', add
label define sn02a_relate_lbl 5 `"Grandparent (grandfather / grandmother)"', add
label define sn02a_relate_lbl 6 `"Brother / sister"', add
label define sn02a_relate_lbl 7 `"Grandchild (grandson, granddaughter)"', add
label define sn02a_relate_lbl 8 `"Other relatives"', add
label define sn02a_relate_lbl 9 `"No kin relationship / not related"', add
label values sn02a_relate sn02a_relate_lbl

label define sn02a_sex_lbl 1 `"Male"'
label define sn02a_sex_lbl 2 `"Female"', add
label values sn02a_sex sn02a_sex_lbl

label define sn02a_age_lbl 00 `"0"'
label define sn02a_age_lbl 01 `"1"', add
label define sn02a_age_lbl 02 `"2"', add
label define sn02a_age_lbl 03 `"3"', add
label define sn02a_age_lbl 04 `"4"', add
label define sn02a_age_lbl 05 `"5"', add
label define sn02a_age_lbl 06 `"6"', add
label define sn02a_age_lbl 07 `"7"', add
label define sn02a_age_lbl 08 `"8"', add
label define sn02a_age_lbl 09 `"9"', add
label define sn02a_age_lbl 10 `"10"', add
label define sn02a_age_lbl 11 `"11"', add
label define sn02a_age_lbl 12 `"12"', add
label define sn02a_age_lbl 13 `"13"', add
label define sn02a_age_lbl 14 `"14"', add
label define sn02a_age_lbl 15 `"15"', add
label define sn02a_age_lbl 16 `"16"', add
label define sn02a_age_lbl 17 `"17"', add
label define sn02a_age_lbl 18 `"18"', add
label define sn02a_age_lbl 19 `"19"', add
label define sn02a_age_lbl 20 `"20"', add
label define sn02a_age_lbl 21 `"21"', add
label define sn02a_age_lbl 22 `"22"', add
label define sn02a_age_lbl 23 `"23"', add
label define sn02a_age_lbl 24 `"24"', add
label define sn02a_age_lbl 25 `"25"', add
label define sn02a_age_lbl 26 `"26"', add
label define sn02a_age_lbl 27 `"27"', add
label define sn02a_age_lbl 28 `"28"', add
label define sn02a_age_lbl 29 `"29"', add
label define sn02a_age_lbl 30 `"30"', add
label define sn02a_age_lbl 31 `"31"', add
label define sn02a_age_lbl 32 `"32"', add
label define sn02a_age_lbl 33 `"33"', add
label define sn02a_age_lbl 34 `"34"', add
label define sn02a_age_lbl 35 `"35"', add
label define sn02a_age_lbl 36 `"36"', add
label define sn02a_age_lbl 37 `"37"', add
label define sn02a_age_lbl 38 `"38"', add
label define sn02a_age_lbl 39 `"39"', add
label define sn02a_age_lbl 40 `"40"', add
label define sn02a_age_lbl 41 `"41"', add
label define sn02a_age_lbl 42 `"42"', add
label define sn02a_age_lbl 43 `"43"', add
label define sn02a_age_lbl 44 `"44"', add
label define sn02a_age_lbl 45 `"45"', add
label define sn02a_age_lbl 46 `"46"', add
label define sn02a_age_lbl 47 `"47"', add
label define sn02a_age_lbl 48 `"48"', add
label define sn02a_age_lbl 49 `"49"', add
label define sn02a_age_lbl 50 `"50"', add
label define sn02a_age_lbl 51 `"51"', add
label define sn02a_age_lbl 52 `"52"', add
label define sn02a_age_lbl 53 `"53"', add
label define sn02a_age_lbl 54 `"54"', add
label define sn02a_age_lbl 55 `"55"', add
label define sn02a_age_lbl 56 `"56"', add
label define sn02a_age_lbl 57 `"57"', add
label define sn02a_age_lbl 58 `"58"', add
label define sn02a_age_lbl 59 `"59"', add
label define sn02a_age_lbl 60 `"60"', add
label define sn02a_age_lbl 61 `"61"', add
label define sn02a_age_lbl 62 `"62"', add
label define sn02a_age_lbl 63 `"63"', add
label define sn02a_age_lbl 64 `"64"', add
label define sn02a_age_lbl 65 `"65"', add
label define sn02a_age_lbl 66 `"66"', add
label define sn02a_age_lbl 67 `"67"', add
label define sn02a_age_lbl 68 `"68"', add
label define sn02a_age_lbl 69 `"69"', add
label define sn02a_age_lbl 70 `"70"', add
label define sn02a_age_lbl 71 `"71"', add
label define sn02a_age_lbl 72 `"72"', add
label define sn02a_age_lbl 73 `"73"', add
label define sn02a_age_lbl 74 `"74"', add
label define sn02a_age_lbl 75 `"75"', add
label define sn02a_age_lbl 76 `"76"', add
label define sn02a_age_lbl 77 `"77"', add
label define sn02a_age_lbl 78 `"78"', add
label define sn02a_age_lbl 79 `"79"', add
label define sn02a_age_lbl 80 `"80"', add
label define sn02a_age_lbl 81 `"81"', add
label define sn02a_age_lbl 82 `"82"', add
label define sn02a_age_lbl 83 `"83"', add
label define sn02a_age_lbl 84 `"84"', add
label define sn02a_age_lbl 85 `"85"', add
label define sn02a_age_lbl 86 `"86"', add
label define sn02a_age_lbl 87 `"87"', add
label define sn02a_age_lbl 88 `"88"', add
label define sn02a_age_lbl 89 `"89"', add
label define sn02a_age_lbl 90 `"90"', add
label define sn02a_age_lbl 91 `"91"', add
label define sn02a_age_lbl 92 `"92"', add
label define sn02a_age_lbl 93 `"93"', add
label define sn02a_age_lbl 94 `"94"', add
label define sn02a_age_lbl 95 `"95"', add
label define sn02a_age_lbl 96 `"96"', add
label define sn02a_age_lbl 97 `"97"', add
label define sn02a_age_lbl 98 `"98+"', add
label values sn02a_age sn02a_age_lbl

label define sn02a_bplreg_lbl 00 `"Foreign countries"'
label define sn02a_bplreg_lbl 01 `"Dakar"', add
label define sn02a_bplreg_lbl 02 `"Diourbel"', add
label define sn02a_bplreg_lbl 03 `"Fatick"', add
label define sn02a_bplreg_lbl 04 `"Kaolack"', add
label define sn02a_bplreg_lbl 05 `"Kolda"', add
label define sn02a_bplreg_lbl 06 `"Louga"', add
label define sn02a_bplreg_lbl 07 `"Matam"', add
label define sn02a_bplreg_lbl 08 `"Saint Louis"', add
label define sn02a_bplreg_lbl 09 `"Tambacounda"', add
label define sn02a_bplreg_lbl 10 `"Thies"', add
label define sn02a_bplreg_lbl 11 `"Ziguinchor"', add
label values sn02a_bplreg sn02a_bplreg_lbl

label define sn02a_bpldep_lbl 000 `"Foreign countries"'
label define sn02a_bpldep_lbl 011 `"Dakar"', add
label define sn02a_bpldep_lbl 012 `"Guédiawaye"', add
label define sn02a_bpldep_lbl 013 `"Pikine"', add
label define sn02a_bpldep_lbl 014 `"Rufisque"', add
label define sn02a_bpldep_lbl 021 `"Bambey"', add
label define sn02a_bpldep_lbl 022 `"Diourbel"', add
label define sn02a_bpldep_lbl 023 `"Mbacké"', add
label define sn02a_bpldep_lbl 031 `"Fatick"', add
label define sn02a_bpldep_lbl 032 `"Foundiougne"', add
label define sn02a_bpldep_lbl 033 `"Gossas"', add
label define sn02a_bpldep_lbl 041 `"Kaffrine"', add
label define sn02a_bpldep_lbl 042 `"Kaolack"', add
label define sn02a_bpldep_lbl 043 `"Nioro"', add
label define sn02a_bpldep_lbl 051 `"Kolda"', add
label define sn02a_bpldep_lbl 052 `"Sédhiou"', add
label define sn02a_bpldep_lbl 053 `"Vélingara"', add
label define sn02a_bpldep_lbl 061 `"Kébémer"', add
label define sn02a_bpldep_lbl 062 `"Linguère"', add
label define sn02a_bpldep_lbl 063 `"Louga"', add
label define sn02a_bpldep_lbl 071 `"Kanel"', add
label define sn02a_bpldep_lbl 072 `"Matam"', add
label define sn02a_bpldep_lbl 073 `"Ferlo"', add
label define sn02a_bpldep_lbl 081 `"Dagana"', add
label define sn02a_bpldep_lbl 082 `"Podor"', add
label define sn02a_bpldep_lbl 083 `"Saint-Louis"', add
label define sn02a_bpldep_lbl 091 `"Bakel"', add
label define sn02a_bpldep_lbl 092 `"Kédougou"', add
label define sn02a_bpldep_lbl 093 `"Tambacounda"', add
label define sn02a_bpldep_lbl 101 `"Mbour"', add
label define sn02a_bpldep_lbl 102 `"Thiès"', add
label define sn02a_bpldep_lbl 103 `"Tivaoune"', add
label define sn02a_bpldep_lbl 111 `"Bignona"', add
label define sn02a_bpldep_lbl 112 `"Oussouye"', add
label define sn02a_bpldep_lbl 113 `"Ziguinchor"', add
label values sn02a_bpldep sn02a_bpldep_lbl

label define sn02a_resstat_lbl 1 `"Resident present"'
label define sn02a_resstat_lbl 2 `"Resident absent"', add
label define sn02a_resstat_lbl 3 `"Visitor"', add
label values sn02a_resstat sn02a_resstat_lbl

label define sn02a_respr_lbl 00 `"Foreign countries"'
label define sn02a_respr_lbl 01 `"Dakar"', add
label define sn02a_respr_lbl 02 `"Diourbel"', add
label define sn02a_respr_lbl 03 `"Fatick"', add
label define sn02a_respr_lbl 04 `"Kaolack"', add
label define sn02a_respr_lbl 05 `"Kolda"', add
label define sn02a_respr_lbl 06 `"Louga"', add
label define sn02a_respr_lbl 07 `"Matam"', add
label define sn02a_respr_lbl 08 `"Saint Louis"', add
label define sn02a_respr_lbl 09 `"Tambacounda"', add
label define sn02a_respr_lbl 10 `"Thies"', add
label define sn02a_respr_lbl 11 `"Ziguinchor"', add
label values sn02a_respr sn02a_respr_lbl

label define sn02a_respa_lbl 0000 `"Foreign countries"'
label define sn02a_respa_lbl 0111 `"Dakar Plateau"', add
label define sn02a_respa_lbl 0112 `"Grand Dakar"', add
label define sn02a_respa_lbl 0113 `"Almadies"', add
label define sn02a_respa_lbl 0114 `"Parcelles Assainies"', add
label define sn02a_respa_lbl 0119 `"Dakar department, not elsewhere classified"', add
label define sn02a_respa_lbl 0121 `"Guediawaye"', add
label define sn02a_respa_lbl 0131 `"Niayes"', add
label define sn02a_respa_lbl 0132 `"Pikine Dagoudane"', add
label define sn02a_respa_lbl 0133 `"Thiaroye"', add
label define sn02a_respa_lbl 0139 `"Pikine department, not elsewhere classified"', add
label define sn02a_respa_lbl 0141 `"Rufisque"', add
label define sn02a_respa_lbl 0142 `"Sangalkam"', add
label define sn02a_respa_lbl 0148 `"Bargny"', add
label define sn02a_respa_lbl 0149 `"Rufisque department, not elsewhere classified"', add
label define sn02a_respa_lbl 0211 `"Baba-Garage"', add
label define sn02a_respa_lbl 0212 `"Lambaye"', add
label define sn02a_respa_lbl 0213 `"Ngoye"', add
label define sn02a_respa_lbl 0219 `"Bambey department, not elsewhere classified"', add
label define sn02a_respa_lbl 0220 `"Bambey urban"', add
label define sn02a_respa_lbl 0221 `"Dindy"', add
label define sn02a_respa_lbl 0222 `"Ndoulo"', add
label define sn02a_respa_lbl 0228 `"Diourbel urban"', add
label define sn02a_respa_lbl 0229 `"""', add
label define sn02a_respa_lbl 0231 `"Kael"', add
label define sn02a_respa_lbl 0232 `"Ndame"', add
label define sn02a_respa_lbl 0233 `"Taif"', add
label define sn02a_respa_lbl 0238 `"Mbacke urban"', add
label define sn02a_respa_lbl 0239 `"Mbacké department, not elsewhere classified"', add
label define sn02a_respa_lbl 0311 `"Diakhao"', add
label define sn02a_respa_lbl 0312 `"Fimela"', add
label define sn02a_respa_lbl 0313 `"Niakhar"', add
label define sn02a_respa_lbl 0314 `"Tattaguine"', add
label define sn02a_respa_lbl 0318 `"Fatick urban"', add
label define sn02a_respa_lbl 0319 `"Fatick department, not elsewhere classified"', add
label define sn02a_respa_lbl 0321 `"Djilor"', add
label define sn02a_respa_lbl 0322 `"Niodior"', add
label define sn02a_respa_lbl 0323 `"Toubacouta"', add
label define sn02a_respa_lbl 0328 `"Foundiougne urban"', add
label define sn02a_respa_lbl 0329 `"Foundiougne department, not elsewhere classified"', add
label define sn02a_respa_lbl 0331 `"Colobane"', add
label define sn02a_respa_lbl 0332 `"Mbadakhoune"', add
label define sn02a_respa_lbl 0333 `"Ouadiour"', add
label define sn02a_respa_lbl 0338 `"Gossas urban"', add
label define sn02a_respa_lbl 0339 `"Gossas department, not elsewhere classified"', add
label define sn02a_respa_lbl 0411 `"Birkelane"', add
label define sn02a_respa_lbl 0412 `"Maka Yop"', add
label define sn02a_respa_lbl 0413 `"Malem Hoddar"', add
label define sn02a_respa_lbl 0414 `"Nganda"', add
label define sn02a_respa_lbl 0418 `"Kaffrine urban"', add
label define sn02a_respa_lbl 0419 `"Kaffrine department, not elsewhere classified"', add
label define sn02a_respa_lbl 0421 `"Koumbal"', add
label define sn02a_respa_lbl 0422 `"Ndiedieng"', add
label define sn02a_respa_lbl 0423 `"Sibassor"', add
label define sn02a_respa_lbl 0428 `"Kaolack urban"', add
label define sn02a_respa_lbl 0429 `"Kaolack department, not elsewhere classified"', add
label define sn02a_respa_lbl 0431 `"Medina Sbbakh"', add
label define sn02a_respa_lbl 0432 `"Paoskoto"', add
label define sn02a_respa_lbl 0433 `"Wack Ngouna"', add
label define sn02a_respa_lbl 0438 `"Nioro urban"', add
label define sn02a_respa_lbl 0439 `"Nioro department, not elsewhere classified"', add
label define sn02a_respa_lbl 0511 `"Dabo"', add
label define sn02a_respa_lbl 0512 `"Dioulacoulon"', add
label define sn02a_respa_lbl 0513 `"Medina Yoro Foulah"', add
label define sn02a_respa_lbl 0518 `"Kolda urban"', add
label define sn02a_respa_lbl 0519 `"Kolda department, not elsewhere classified"', add
label define sn02a_respa_lbl 0521 `"Bounkiling"', add
label define sn02a_respa_lbl 0522 `"Diattacounda"', add
label define sn02a_respa_lbl 0523 `"Diende"', add
label define sn02a_respa_lbl 0524 `"Djibabouya"', add
label define sn02a_respa_lbl 0525 `"Tanaff"', add
label define sn02a_respa_lbl 0528 `"Sedhiou urban"', add
label define sn02a_respa_lbl 0529 `"Sédhiou department, not elsewhere classified"', add
label define sn02a_respa_lbl 0531 `"Bonconto"', add
label define sn02a_respa_lbl 0532 `"Kounkane"', add
label define sn02a_respa_lbl 0533 `"Pakour"', add
label define sn02a_respa_lbl 0538 `"Velingara urban"', add
label define sn02a_respa_lbl 0539 `"Vélingara department, not elsewhere classified"', add
label define sn02a_respa_lbl 0611 `"Darou Mousty"', add
label define sn02a_respa_lbl 0612 `"Ndande"', add
label define sn02a_respa_lbl 0613 `"Sagatta"', add
label define sn02a_respa_lbl 0618 `"Kebemer urban"', add
label define sn02a_respa_lbl 0619 `"Kébémer department, not elsewhere classified"', add
label define sn02a_respa_lbl 0621 `"Barkedji"', add
label define sn02a_respa_lbl 0622 `"Dodji"', add
label define sn02a_respa_lbl 0623 `"Sagatta Djoloff"', add
label define sn02a_respa_lbl 0624 `"Yang-Yang"', add
label define sn02a_respa_lbl 0628 `"Linguere urban"', add
label define sn02a_respa_lbl 0629 `"Linguère department, not elsewhere classified"', add
label define sn02a_respa_lbl 0631 `"Coki"', add
label define sn02a_respa_lbl 0632 `"Keur Momar Sarr"', add
label define sn02a_respa_lbl 0633 `"Mbediene"', add
label define sn02a_respa_lbl 0634 `"Sakal"', add
label define sn02a_respa_lbl 0638 `"Louga urban"', add
label define sn02a_respa_lbl 0639 `"Louga department, not elsewhere classified"', add
label define sn02a_respa_lbl 0711 `"Orkadiere"', add
label define sn02a_respa_lbl 0712 `"Sinthiou Bamambe"', add
label define sn02a_respa_lbl 0718 `"Kanel urban"', add
label define sn02a_respa_lbl 0719 `"Kanel department, not elsewhere classified"', add
label define sn02a_respa_lbl 0721 `"Agham-Civol"', add
label define sn02a_respa_lbl 0722 `"Ogo"', add
label define sn02a_respa_lbl 0728 `"Matam urban"', add
label define sn02a_respa_lbl 0729 `"Matam department, not elsewhere classified"', add
label define sn02a_respa_lbl 0731 `"Velingara"', add
label define sn02a_respa_lbl 0738 `"Ranerou urban"', add
label define sn02a_respa_lbl 0739 `"Ferlo department, not elsewhere classified"', add
label define sn02a_respa_lbl 0811 `"Mbane"', add
label define sn02a_respa_lbl 0812 `"Ross-Bethio"', add
label define sn02a_respa_lbl 0818 `"Dagana urban"', add
label define sn02a_respa_lbl 0819 `"Dagana department, not elsewhere classified"', add
label define sn02a_respa_lbl 0821 `"Cas-Cas"', add
label define sn02a_respa_lbl 0822 `"Gmadji Sarre"', add
label define sn02a_respa_lbl 0828 `"Podor urban"', add
label define sn02a_respa_lbl 0829 `"Podor department, not elsewhere classified"', add
label define sn02a_respa_lbl 0831 `"Rao"', add
label define sn02a_respa_lbl 0839 `"Saint-Louis department, not elsewhere classified"', add
label define sn02a_respa_lbl 0911 `"Bala"', add
label define sn02a_respa_lbl 0912 `"Goudiry"', add
label define sn02a_respa_lbl 0913 `"Keniaba"', add
label define sn02a_respa_lbl 0914 `"Kidira"', add
label define sn02a_respa_lbl 0915 `"Moudery"', add
label define sn02a_respa_lbl 0918 `"Bakel urban"', add
label define sn02a_respa_lbl 0919 `"Bakel department, not elsewhere classified"', add
label define sn02a_respa_lbl 0921 `"Bandafassi"', add
label define sn02a_respa_lbl 0922 `"Fonguelembi"', add
label define sn02a_respa_lbl 0923 `"Salemata"', add
label define sn02a_respa_lbl 0924 `"Saraya"', add
label define sn02a_respa_lbl 0928 `"Kedougou urban"', add
label define sn02a_respa_lbl 0929 `"Kédougou department, not elsewhere classified"', add
label define sn02a_respa_lbl 0931 `"Koumpentoum"', add
label define sn02a_respa_lbl 0932 `"Koussanar"', add
label define sn02a_respa_lbl 0933 `"Makakoule"', add
label define sn02a_respa_lbl 0934 `"Missirah"', add
label define sn02a_respa_lbl 0938 `"Tambacounda urban"', add
label define sn02a_respa_lbl 0939 `"Tambacounda department, not elsewhere classified"', add
label define sn02a_respa_lbl 1011 `"Fissel"', add
label define sn02a_respa_lbl 1012 `"Sessene"', add
label define sn02a_respa_lbl 1013 `"Sindia"', add
label define sn02a_respa_lbl 1018 `"Mbour urban"', add
label define sn02a_respa_lbl 1019 `"Mbour department, not elsewhere classified"', add
label define sn02a_respa_lbl 1021 `"Keur Moussa"', add
label define sn02a_respa_lbl 1022 `"Notto"', add
label define sn02a_respa_lbl 1023 `"Fhienaba"', add
label define sn02a_respa_lbl 1028 `"Thiès urban"', add
label define sn02a_respa_lbl 1029 `"Thiès department, not elsewhere classified"', add
label define sn02a_respa_lbl 1031 `"Meouane"', add
label define sn02a_respa_lbl 1032 `"Merina Dakhar"', add
label define sn02a_respa_lbl 1033 `"Niakhene"', add
label define sn02a_respa_lbl 1034 `"Pambal"', add
label define sn02a_respa_lbl 1038 `"Tivaoune urban"', add
label define sn02a_respa_lbl 1039 `"Tivaoune department, not elsewhere classified"', add
label define sn02a_respa_lbl 1111 `"Dioulou"', add
label define sn02a_respa_lbl 1112 `"Sindian"', add
label define sn02a_respa_lbl 1113 `"Tendouck"', add
label define sn02a_respa_lbl 1114 `"Tenghory"', add
label define sn02a_respa_lbl 1118 `"Bignona urban"', add
label define sn02a_respa_lbl 1119 `"Bignona department, not elsewhere classified"', add
label define sn02a_respa_lbl 1121 `"Colobane"', add
label define sn02a_respa_lbl 1122 `"Loudia-Ouoloff"', add
label define sn02a_respa_lbl 1128 `"Oussouye urban"', add
label define sn02a_respa_lbl 1129 `"Oussouye department, not elsewhere classified"', add
label define sn02a_respa_lbl 1131 `"Niagus"', add
label define sn02a_respa_lbl 1132 `"Niassia"', add
label define sn02a_respa_lbl 1138 `"Ziguinchor urban"', add
label define sn02a_respa_lbl 1139 `"Ziguinchor department, not elsewhere classified"', add
label values sn02a_respa sn02a_respa_lbl

label define sn02a_ethnic_lbl 101 `"Bainouk"'
label define sn02a_ethnic_lbl 102 `"Badiaranke"', add
label define sn02a_ethnic_lbl 103 `"Balante"', add
label define sn02a_ethnic_lbl 104 `"Bambara"', add
label define sn02a_ethnic_lbl 105 `"Bassari"', add
label define sn02a_ethnic_lbl 106 `"Bedick"', add
label define sn02a_ethnic_lbl 107 `"Coniagui"', add
label define sn02a_ethnic_lbl 108 `"Creole"', add
label define sn02a_ethnic_lbl 109 `"Diakhanke"', add
label define sn02a_ethnic_lbl 110 `"Dialonke"', add
label define sn02a_ethnic_lbl 111 `"Diola"', add
label define sn02a_ethnic_lbl 112 `"Fulani"', add
label define sn02a_ethnic_lbl 113 `"Wolof"', add
label define sn02a_ethnic_lbl 114 `"Laobe"', add
label define sn02a_ethnic_lbl 115 `"Lebou"', add
label define sn02a_ethnic_lbl 116 `"Malinke"', add
label define sn02a_ethnic_lbl 117 `"Mancagne"', add
label define sn02a_ethnic_lbl 118 `"Mandinka"', add
label define sn02a_ethnic_lbl 119 `"Manjago"', add
label define sn02a_ethnic_lbl 120 `"Mauritanian"', add
label define sn02a_ethnic_lbl 121 `"Pulaar"', add
label define sn02a_ethnic_lbl 122 `"Peul"', add
label define sn02a_ethnic_lbl 123 `"Sarakole"', add
label define sn02a_ethnic_lbl 124 `"Serer"', add
label define sn02a_ethnic_lbl 125 `"Soce"', add
label define sn02a_ethnic_lbl 126 `"Soninke"', add
label define sn02a_ethnic_lbl 127 `"Soussou"', add
label define sn02a_ethnic_lbl 128 `"Tandanke"', add
label define sn02a_ethnic_lbl 129 `"Toucouleur"', add
label define sn02a_ethnic_lbl 130 `"Wolof"', add
label define sn02a_ethnic_lbl 139 `"Other Senegalese (including naturalized)"', add
label define sn02a_ethnic_lbl 205 `"Other country in the world / undetermined / does not know"', add
label define sn02a_ethnic_lbl 206 `"Other country in eastern Africa"', add
label define sn02a_ethnic_lbl 207 `"Other country in southern Africa"', add
label define sn02a_ethnic_lbl 208 `"Other country in western Africa"', add
label define sn02a_ethnic_lbl 209 `"Other country in central Africa"', add
label define sn02a_ethnic_lbl 210 `"Other country in northern Africa"', add
label define sn02a_ethnic_lbl 211 `"Other country in central or southern America"', add
label define sn02a_ethnic_lbl 213 `"Other country in Europe"', add
label define sn02a_ethnic_lbl 215 `"Other country in Asia"', add
label define sn02a_ethnic_lbl 216 `"Algeria"', add
label define sn02a_ethnic_lbl 217 `"Benin"', add
label define sn02a_ethnic_lbl 219 `"Burkina"', add
label define sn02a_ethnic_lbl 221 `"Cameroon"', add
label define sn02a_ethnic_lbl 223 `"Cape-Verde"', add
label define sn02a_ethnic_lbl 225 `"Congo (Brazzaville)"', add
label define sn02a_ethnic_lbl 226 `"Ivory Coast"', add
label define sn02a_ethnic_lbl 229 `"France"', add
label define sn02a_ethnic_lbl 230 `"Gabon"', add
label define sn02a_ethnic_lbl 231 `"Gambia"', add
label define sn02a_ethnic_lbl 232 `"Ghana"', add
label define sn02a_ethnic_lbl 233 `"Guinea-Bissau"', add
label define sn02a_ethnic_lbl 234 `"Guinea-Conakry"', add
label define sn02a_ethnic_lbl 242 `"Lebanon"', add
label define sn02a_ethnic_lbl 245 `"Mali"', add
label define sn02a_ethnic_lbl 246 `"Morocco"', add
label define sn02a_ethnic_lbl 247 `"Mauritania"', add
label define sn02a_ethnic_lbl 248 `"Niger"', add
label define sn02a_ethnic_lbl 249 `"Nigeria"', add
label define sn02a_ethnic_lbl 253 `"Portugal"', add
label define sn02a_ethnic_lbl 259 `"Sierra Leone"', add
label define sn02a_ethnic_lbl 262 `"Chad"', add
label define sn02a_ethnic_lbl 263 `"Togo"', add
label define sn02a_ethnic_lbl 266 `"U.S.A"', add
label define sn02a_ethnic_lbl 999 `"Unknown, no response"', add
label values sn02a_ethnic sn02a_ethnic_lbl

label define sn02a_lang1_lbl 101 `"Bainouk"'
label define sn02a_lang1_lbl 102 `"Badiaranke"', add
label define sn02a_lang1_lbl 103 `"Balante"', add
label define sn02a_lang1_lbl 104 `"Bambara"', add
label define sn02a_lang1_lbl 105 `"Bassari"', add
label define sn02a_lang1_lbl 106 `"Bedick"', add
label define sn02a_lang1_lbl 107 `"Coniagui"', add
label define sn02a_lang1_lbl 108 `"Creole"', add
label define sn02a_lang1_lbl 109 `"Diakhanke"', add
label define sn02a_lang1_lbl 110 `"Dialonke"', add
label define sn02a_lang1_lbl 111 `"Diola"', add
label define sn02a_lang1_lbl 112 `"Fulani"', add
label define sn02a_lang1_lbl 113 `"Khassonke"', add
label define sn02a_lang1_lbl 114 `"Laobe"', add
label define sn02a_lang1_lbl 115 `"Lebou"', add
label define sn02a_lang1_lbl 116 `"Malinke"', add
label define sn02a_lang1_lbl 117 `"Mancagne"', add
label define sn02a_lang1_lbl 118 `"Mandinka"', add
label define sn02a_lang1_lbl 119 `"Manjaag"', add
label define sn02a_lang1_lbl 120 `"Mauritanian"', add
label define sn02a_lang1_lbl 121 `"Peul"', add
label define sn02a_lang1_lbl 122 `"Pulaar"', add
label define sn02a_lang1_lbl 123 `"Sarakhole"', add
label define sn02a_lang1_lbl 124 `"Serer"', add
label define sn02a_lang1_lbl 125 `"Soce"', add
label define sn02a_lang1_lbl 126 `"Soninke"', add
label define sn02a_lang1_lbl 127 `"Soussou"', add
label define sn02a_lang1_lbl 129 `"Toucouleur"', add
label define sn02a_lang1_lbl 130 `"Wolof"', add
label define sn02a_lang1_lbl 139 `"Other Senegalese languages"', add
label define sn02a_lang1_lbl 144 `"Hausa"', add
label define sn02a_lang1_lbl 149 `"Other African languages"', add
label define sn02a_lang1_lbl 152 `"English"', add
label define sn02a_lang1_lbl 153 `"Arabic"', add
label define sn02a_lang1_lbl 154 `"Chinese"', add
label define sn02a_lang1_lbl 156 `"French"', add
label define sn02a_lang1_lbl 159 `"Portuguese"', add
label define sn02a_lang1_lbl 169 `"Other non-African languages"', add
label define sn02a_lang1_lbl 999 `"Unknown"', add
label values sn02a_lang1 sn02a_lang1_lbl

label define sn02a_lang2_lbl 101 `"Bainouk"'
label define sn02a_lang2_lbl 102 `"Badiaranke"', add
label define sn02a_lang2_lbl 103 `"Balante"', add
label define sn02a_lang2_lbl 104 `"Bambara"', add
label define sn02a_lang2_lbl 105 `"Bassari"', add
label define sn02a_lang2_lbl 108 `"Creole"', add
label define sn02a_lang2_lbl 109 `"Diakhanke"', add
label define sn02a_lang2_lbl 111 `"Diola"', add
label define sn02a_lang2_lbl 113 `"Khassonke"', add
label define sn02a_lang2_lbl 114 `"Laobe"', add
label define sn02a_lang2_lbl 115 `"Lebou"', add
label define sn02a_lang2_lbl 116 `"Malinke"', add
label define sn02a_lang2_lbl 117 `"Mancagne"', add
label define sn02a_lang2_lbl 118 `"Mandinka"', add
label define sn02a_lang2_lbl 119 `"Manjaago"', add
label define sn02a_lang2_lbl 120 `"Mauritanian"', add
label define sn02a_lang2_lbl 121 `"Peul"', add
label define sn02a_lang2_lbl 122 `"Pulaar"', add
label define sn02a_lang2_lbl 123 `"Sarakhole"', add
label define sn02a_lang2_lbl 124 `"Serer"', add
label define sn02a_lang2_lbl 125 `"Soce"', add
label define sn02a_lang2_lbl 126 `"Soninke"', add
label define sn02a_lang2_lbl 127 `"Soussou"', add
label define sn02a_lang2_lbl 129 `"Toucouleur"', add
label define sn02a_lang2_lbl 130 `"Wolof"', add
label define sn02a_lang2_lbl 139 `"Other Senegalese languages"', add
label define sn02a_lang2_lbl 144 `"Hausa"', add
label define sn02a_lang2_lbl 149 `"Other African languages"', add
label define sn02a_lang2_lbl 152 `"English"', add
label define sn02a_lang2_lbl 153 `"Arabic"', add
label define sn02a_lang2_lbl 154 `"Chinese"', add
label define sn02a_lang2_lbl 155 `"Spanish"', add
label define sn02a_lang2_lbl 156 `"French"', add
label define sn02a_lang2_lbl 158 `"Japanese"', add
label define sn02a_lang2_lbl 159 `"Portuguese"', add
label define sn02a_lang2_lbl 169 `"Other non-African languages"', add
label define sn02a_lang2_lbl 998 `"Unknown"', add
label define sn02a_lang2_lbl 999 `"NIU (not in universe)"', add
label values sn02a_lang2 sn02a_lang2_lbl

label define sn02a_disnone_lbl 1 `"Disabled"'
label define sn02a_disnone_lbl 2 `"Not disabled"', add
label values sn02a_disnone sn02a_disnone_lbl

label define sn02a_disbli_lbl 1 `"None"'
label define sn02a_disbli_lbl 2 `"Yes"', add
label values sn02a_disbli sn02a_disbli_lbl

label define sn02a_disdeaf_lbl 1 `"None"'
label define sn02a_disdeaf_lbl 2 `"Yes"', add
label values sn02a_disdeaf sn02a_disdeaf_lbl

label define sn02a_dismute_lbl 1 `"None"'
label define sn02a_dismute_lbl 2 `"Yes"', add
label values sn02a_dismute sn02a_dismute_lbl

label define sn02a_dislow_lbl 1 `"None"'
label define sn02a_dislow_lbl 2 `"Yes"', add
label values sn02a_dislow sn02a_dislow_lbl

label define sn02a_disup_lbl 1 `"None"'
label define sn02a_disup_lbl 2 `"Yes"', add
label values sn02a_disup sn02a_disup_lbl

label define sn02a_dismen_lbl 1 `"None"'
label define sn02a_dismen_lbl 2 `"Yes"', add
label values sn02a_dismen sn02a_dismen_lbl

label define sn02a_disalb_lbl 1 `"None"'
label define sn02a_disalb_lbl 2 `"Yes"', add
label values sn02a_disalb sn02a_disalb_lbl

label define sn02a_dislep_lbl 1 `"None"'
label define sn02a_dislep_lbl 2 `"Yes"', add
label values sn02a_dislep sn02a_dislep_lbl

label define sn02a_disoth_lbl 1 `"None"'
label define sn02a_disoth_lbl 2 `"Yes"', add
label values sn02a_disoth sn02a_disoth_lbl

label define sn02a_schno_lbl 1 `"No"'
label define sn02a_schno_lbl 2 `"Yes"', add
label define sn02a_schno_lbl 9 `"NIU (not in universe)"', add
label values sn02a_schno sn02a_schno_lbl

label define sn02a_schfr_lbl 1 `"No"'
label define sn02a_schfr_lbl 2 `"Yes"', add
label define sn02a_schfr_lbl 9 `"NIU (not in universe)"', add
label values sn02a_schfr sn02a_schfr_lbl

label define sn02a_schfrar_lbl 1 `"No"'
label define sn02a_schfrar_lbl 2 `"Yes"', add
label define sn02a_schfrar_lbl 9 `"NIU (not in universe)"', add
label values sn02a_schfrar sn02a_schfrar_lbl

label define sn02a_schar_lbl 1 `"No"'
label define sn02a_schar_lbl 2 `"Yes"', add
label define sn02a_schar_lbl 9 `"NIU (not in universe)"', add
label values sn02a_schar sn02a_schar_lbl

label define sn02a_schko_lbl 1 `"No"'
label define sn02a_schko_lbl 2 `"Yes"', add
label define sn02a_schko_lbl 9 `"NIU (not in universe)"', add
label values sn02a_schko sn02a_schko_lbl

label define sn02a_schoth_lbl 1 `"No"'
label define sn02a_schoth_lbl 2 `"Yes"', add
label define sn02a_schoth_lbl 9 `"NIU (not in universe)"', add
label values sn02a_schoth sn02a_schoth_lbl

label define sn02a_edlev_lbl 00 `"None"'
label define sn02a_edlev_lbl 01 `"Pre-school / kindergarten"', add
label define sn02a_edlev_lbl 02 `"Initiation"', add
label define sn02a_edlev_lbl 03 `"First grade"', add
label define sn02a_edlev_lbl 04 `"Second grade"', add
label define sn02a_edlev_lbl 05 `"Third grade"', add
label define sn02a_edlev_lbl 06 `"Fourth grade"', add
label define sn02a_edlev_lbl 07 `"Fifth grade"', add
label define sn02a_edlev_lbl 08 `"Sixth grade"', add
label define sn02a_edlev_lbl 09 `"Seventh grade"', add
label define sn02a_edlev_lbl 10 `"Eighth grade"', add
label define sn02a_edlev_lbl 11 `"Ninth grade"', add
label define sn02a_edlev_lbl 12 `"Tenth grade"', add
label define sn02a_edlev_lbl 13 `"Eleventh grade"', add
label define sn02a_edlev_lbl 14 `"Twelfth grade"', add
label define sn02a_edlev_lbl 15 `"Higher, first year"', add
label define sn02a_edlev_lbl 16 `"Higher, second year"', add
label define sn02a_edlev_lbl 17 `"Higher, third year"', add
label define sn02a_edlev_lbl 18 `"Higher, fourth year"', add
label define sn02a_edlev_lbl 19 `"Higher, fifth year or more"', add
label define sn02a_edlev_lbl 98 `"Unknown"', add
label define sn02a_edlev_lbl 99 `"NIU (not in universe)"', add
label values sn02a_edlev sn02a_edlev_lbl

label define sn02a_lit_lbl 1 `"No"'
label define sn02a_lit_lbl 2 `"Yes"', add
label define sn02a_lit_lbl 9 `"NIU (not in universe)"', add
label values sn02a_lit sn02a_lit_lbl

label define sn02a_litfr_lbl 1 `"No"'
label define sn02a_litfr_lbl 2 `"Yes"', add
label define sn02a_litfr_lbl 9 `"NIU (not in universe)"', add
label values sn02a_litfr sn02a_litfr_lbl

label define sn02a_litar_lbl 1 `"No"'
label define sn02a_litar_lbl 2 `"Yes"', add
label define sn02a_litar_lbl 9 `"NIU (not in universe)"', add
label values sn02a_litar sn02a_litar_lbl

label define sn02a_litpu_lbl 1 `"No"'
label define sn02a_litpu_lbl 2 `"Yes"', add
label define sn02a_litpu_lbl 9 `"NIU (not in universe)"', add
label values sn02a_litpu sn02a_litpu_lbl

label define sn02a_litse_lbl 1 `"No"'
label define sn02a_litse_lbl 2 `"Yes"', add
label define sn02a_litse_lbl 9 `"NIU (not in universe)"', add
label values sn02a_litse sn02a_litse_lbl

label define sn02a_litma_lbl 1 `"No"'
label define sn02a_litma_lbl 2 `"Yes"', add
label define sn02a_litma_lbl 9 `"NIU (not in universe)"', add
label values sn02a_litma sn02a_litma_lbl

label define sn02a_litdi_lbl 1 `"No"'
label define sn02a_litdi_lbl 2 `"Yes"', add
label define sn02a_litdi_lbl 9 `"NIU (not in universe)"', add
label values sn02a_litdi sn02a_litdi_lbl

label define sn02a_litso_lbl 1 `"No"'
label define sn02a_litso_lbl 2 `"Yes"', add
label define sn02a_litso_lbl 9 `"NIU (not in universe)"', add
label values sn02a_litso sn02a_litso_lbl

label define sn02a_litoth_lbl 1 `"No"'
label define sn02a_litoth_lbl 2 `"Yes"', add
label define sn02a_litoth_lbl 9 `"NIU (not in universe)"', add
label values sn02a_litoth sn02a_litoth_lbl

label define sn02a_empstat_lbl 01 `"Employed"'
label define sn02a_empstat_lbl 02 `"Jobless"', add
label define sn02a_empstat_lbl 03 `"Student / pupil"', add
label define sn02a_empstat_lbl 04 `"Housewife"', add
label define sn02a_empstat_lbl 05 `"Retired, pensioned"', add
label define sn02a_empstat_lbl 06 `"Elderly"', add
label define sn02a_empstat_lbl 07 `"Accident / illness"', add
label define sn02a_empstat_lbl 08 `"Beggar"', add
label define sn02a_empstat_lbl 09 `"Other cases"', add
label define sn02a_empstat_lbl 99 `"NIU (not in universe)"', add
label values sn02a_empstat sn02a_empstat_lbl

label define sn02a_occ3_lbl 110 `"Military personnel"'
label define sn02a_occ3_lbl 111 `"Legislators"', add
label define sn02a_occ3_lbl 112 `"Senior government officials, including village heads and chiefs"', add
label define sn02a_occ3_lbl 121 `"Directors and chief executives"', add
label define sn02a_occ3_lbl 122 `"Production and operations department managers"', add
label define sn02a_occ3_lbl 131 `"General managers"', add
label define sn02a_occ3_lbl 211 `"Physicists, chemists and related professionals"', add
label define sn02a_occ3_lbl 212 `"Mathematicians, statisticians and related professionals"', add
label define sn02a_occ3_lbl 213 `"Computing professionals"', add
label define sn02a_occ3_lbl 214 `"Architects, engineers and related professionals"', add
label define sn02a_occ3_lbl 220 `"Life science and health professionals"', add
label define sn02a_occ3_lbl 230 `"Teaching professionals"', add
label define sn02a_occ3_lbl 221 `"Life science professionals"', add
label define sn02a_occ3_lbl 222 `"Health professionals (except nursing)"', add
label define sn02a_occ3_lbl 223 `"Nursing and midwifery professionals"', add
label define sn02a_occ3_lbl 231 `"Higher education administrators and political leaders"', add
label define sn02a_occ3_lbl 232 `"Secondary education teaching professionals"', add
label define sn02a_occ3_lbl 233 `"Primary and pre-primary education teaching professionals"', add
label define sn02a_occ3_lbl 234 `"Special education teaching professionals"', add
label define sn02a_occ3_lbl 235 `"Other teaching professionals"', add
label define sn02a_occ3_lbl 241 `"Business professionals"', add
label define sn02a_occ3_lbl 242 `"Legal professionals"', add
label define sn02a_occ3_lbl 243 `"Archivists, librarians and related information professionals"', add
label define sn02a_occ3_lbl 244 `"Social science and related professionals"', add
label define sn02a_occ3_lbl 245 `"Writers and creative or performing artists"', add
label define sn02a_occ3_lbl 246 `"Religious professionals"', add
label define sn02a_occ3_lbl 310 `"Soldiers and public service"', add
label define sn02a_occ3_lbl 311 `"Physical and engineering science technicians"', add
label define sn02a_occ3_lbl 312 `"Technicians and volunteers"', add
label define sn02a_occ3_lbl 313 `"Broadcasting and other electronic equipment operators"', add
label define sn02a_occ3_lbl 314 `"Ship and aircraft controllers and technicians"', add
label define sn02a_occ3_lbl 321 `"Life science technicians and related associate professionals"', add
label define sn02a_occ3_lbl 322 `"Modern health associate professionals (except nursing)"', add
label define sn02a_occ3_lbl 323 `"Nursing and midwifery associate professionals"', add
label define sn02a_occ3_lbl 324 `"Traditional medicine practitioners and faith healers"', add
label define sn02a_occ3_lbl 341 `"Finance and sales associate professionals"', add
label define sn02a_occ3_lbl 342 `"Business services agents and trade brokers"', add
label define sn02a_occ3_lbl 343 `"Administrative associate professionals"', add
label define sn02a_occ3_lbl 344 `"Customs, tax and related government associate professionals"', add
label define sn02a_occ3_lbl 345 `"Police inspectors and detectives"', add
label define sn02a_occ3_lbl 346 `"Social work associate professionals"', add
label define sn02a_occ3_lbl 347 `"Artistic, entertainment and sports associate professionals"', add
label define sn02a_occ3_lbl 411 `"Secretaries and keyboard-operating clerks"', add
label define sn02a_occ3_lbl 412 `"Numerical clerks"', add
label define sn02a_occ3_lbl 413 `"Material-recording and transport clerks"', add
label define sn02a_occ3_lbl 414 `"Library, mail and related clerks"', add
label define sn02a_occ3_lbl 421 `"Cashiers, tellers and related clerks"', add
label define sn02a_occ3_lbl 422 `"Client information clerks"', add
label define sn02a_occ3_lbl 511 `"Travel attendants and related workers"', add
label define sn02a_occ3_lbl 512 `"Housekeeping and restaurant services workers"', add
label define sn02a_occ3_lbl 513 `"Personal care and related workers"', add
label define sn02a_occ3_lbl 514 `"Other personal services workers"', add
label define sn02a_occ3_lbl 515 `"Astrologers, fortune-tellers and related workers"', add
label define sn02a_occ3_lbl 516 `"Protective services workers"', add
label define sn02a_occ3_lbl 522 `"Shop salespersons and demonstrators"', add
label define sn02a_occ3_lbl 523 `"Stall and market salespersons"', add
label define sn02a_occ3_lbl 611 `"Market gardeners and crop growers"', add
label define sn02a_occ3_lbl 612 `"Market-oriented animal producers and related workers"', add
label define sn02a_occ3_lbl 614 `"Forestry and related workers"', add
label define sn02a_occ3_lbl 615 `"Fishery workers, hunters and trappers"', add
label define sn02a_occ3_lbl 621 `"Subsistence agricultural and fishery workers"', add
label define sn02a_occ3_lbl 711 `"Miners, shot firers, stone cutters and carvers"', add
label define sn02a_occ3_lbl 712 `"Building frame and related trades workers"', add
label define sn02a_occ3_lbl 713 `"Building finishers and related trades workers"', add
label define sn02a_occ3_lbl 714 `"Painters, building structure cleaners and related trades workers"', add
label define sn02a_occ3_lbl 721 `"Metal molders, welders, sheet-metal workers, structural- metal preparers, and related trades workers"', add
label define sn02a_occ3_lbl 722 `"Blacksmiths, tool-makers and related trades workers"', add
label define sn02a_occ3_lbl 723 `"Machinery mechanics and fitters"', add
label define sn02a_occ3_lbl 724 `"Electrical and electronic equipment mechanics and fitters"', add
label define sn02a_occ3_lbl 731 `"Precision workers in metal and related materials"', add
label define sn02a_occ3_lbl 732 `"Potters, glass-makers and related trades workers"', add
label define sn02a_occ3_lbl 734 `"Printing and related trades workers"', add
label define sn02a_occ3_lbl 741 `"Food processing and related trades workers"', add
label define sn02a_occ3_lbl 742 `"Wood treaters, cabinet-makers and related trades workers"', add
label define sn02a_occ3_lbl 743 `"Textile, garment and related trades workers"', add
label define sn02a_occ3_lbl 744 `"Pelt, leather and shoemaking trades workers"', add
label define sn02a_occ3_lbl 811 `"Mining- and mineral-processing-plant operators"', add
label define sn02a_occ3_lbl 821 `"Machine operators and plant operators"', add
label define sn02a_occ3_lbl 831 `"Locomotive-engine drivers and related workers"', add
label define sn02a_occ3_lbl 832 `"Motor-vehicle drivers"', add
label define sn02a_occ3_lbl 833 `"Agricultural and other mobile-plant operators"', add
label define sn02a_occ3_lbl 834 `"Ships' deck crews and related workers"', add
label define sn02a_occ3_lbl 911 `"Street vendors and related workers"', add
label define sn02a_occ3_lbl 912 `"Shoe cleaning and other street services elementary occupations"', add
label define sn02a_occ3_lbl 913 `"Domestic and related helpers, cleaners and launderers"', add
label define sn02a_occ3_lbl 914 `"Building caretakers, window and related cleaners"', add
label define sn02a_occ3_lbl 915 `"Messengers, porters, doorkeepers and related workers"', add
label define sn02a_occ3_lbl 916 `"Garbage collectors and related laborers"', add
label define sn02a_occ3_lbl 997 `"Other workers, not elsewhere classified"', add
label define sn02a_occ3_lbl 998 `"Unknown"', add
label define sn02a_occ3_lbl 999 `"NIU (not in universe)"', add
label values sn02a_occ3 sn02a_occ3_lbl

label define sn02a_classwk_lbl 01 `"Employer"'
label define sn02a_classwk_lbl 02 `"Self-employed"', add
label define sn02a_classwk_lbl 03 `"Salaried"', add
label define sn02a_classwk_lbl 04 `"Trainee"', add
label define sn02a_classwk_lbl 05 `"Family aid"', add
label define sn02a_classwk_lbl 06 `"Apprentice"', add
label define sn02a_classwk_lbl 07 `"Other cases"', add
label define sn02a_classwk_lbl 98 `"Unknown"', add
label define sn02a_classwk_lbl 99 `"NIU (not in universe)"', add
label values sn02a_classwk sn02a_classwk_lbl

label define sn02a_marst_lbl 1 `"Married, monogamy"'
label define sn02a_marst_lbl 2 `"Polygamy first wife"', add
label define sn02a_marst_lbl 3 `"Polygamy, second wife / polygamy 2 wives"', add
label define sn02a_marst_lbl 4 `"Polygamy, third+ wife / polygamy 3+ wives"', add
label define sn02a_marst_lbl 5 `"Single"', add
label define sn02a_marst_lbl 6 `"Widowed"', add
label define sn02a_marst_lbl 7 `"Divorced"', add
label define sn02a_marst_lbl 8 `"Other cases"', add
label define sn02a_marst_lbl 9 `"NIU (not in universe)"', add
label values sn02a_marst sn02a_marst_lbl

label define sn02a_chbornm_lbl 00 `"No males"'
label define sn02a_chbornm_lbl 01 `"1"', add
label define sn02a_chbornm_lbl 02 `"2"', add
label define sn02a_chbornm_lbl 03 `"3"', add
label define sn02a_chbornm_lbl 04 `"4"', add
label define sn02a_chbornm_lbl 05 `"5"', add
label define sn02a_chbornm_lbl 06 `"6"', add
label define sn02a_chbornm_lbl 07 `"7"', add
label define sn02a_chbornm_lbl 08 `"8"', add
label define sn02a_chbornm_lbl 09 `"9"', add
label define sn02a_chbornm_lbl 10 `"10"', add
label define sn02a_chbornm_lbl 11 `"11"', add
label define sn02a_chbornm_lbl 12 `"12+"', add
label define sn02a_chbornm_lbl 98 `"Unknown"', add
label define sn02a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values sn02a_chbornm sn02a_chbornm_lbl

label define sn02a_chbornf_lbl 00 `"No females"'
label define sn02a_chbornf_lbl 01 `"1"', add
label define sn02a_chbornf_lbl 02 `"2"', add
label define sn02a_chbornf_lbl 03 `"3"', add
label define sn02a_chbornf_lbl 04 `"4"', add
label define sn02a_chbornf_lbl 05 `"5"', add
label define sn02a_chbornf_lbl 06 `"6"', add
label define sn02a_chbornf_lbl 07 `"7"', add
label define sn02a_chbornf_lbl 08 `"8"', add
label define sn02a_chbornf_lbl 09 `"9"', add
label define sn02a_chbornf_lbl 10 `"10"', add
label define sn02a_chbornf_lbl 11 `"11"', add
label define sn02a_chbornf_lbl 12 `"12+"', add
label define sn02a_chbornf_lbl 98 `"Unknown"', add
label define sn02a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values sn02a_chbornf sn02a_chbornf_lbl

label define sn02a_chsurvm_lbl 00 `"0"'
label define sn02a_chsurvm_lbl 01 `"1"', add
label define sn02a_chsurvm_lbl 02 `"2"', add
label define sn02a_chsurvm_lbl 03 `"3"', add
label define sn02a_chsurvm_lbl 04 `"4"', add
label define sn02a_chsurvm_lbl 05 `"5"', add
label define sn02a_chsurvm_lbl 06 `"6"', add
label define sn02a_chsurvm_lbl 07 `"7"', add
label define sn02a_chsurvm_lbl 08 `"8"', add
label define sn02a_chsurvm_lbl 09 `"9"', add
label define sn02a_chsurvm_lbl 10 `"10+"', add
label define sn02a_chsurvm_lbl 98 `"Unknown"', add
label define sn02a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values sn02a_chsurvm sn02a_chsurvm_lbl

label define sn02a_chsurvf_lbl 00 `"0"'
label define sn02a_chsurvf_lbl 01 `"1"', add
label define sn02a_chsurvf_lbl 02 `"2"', add
label define sn02a_chsurvf_lbl 03 `"3"', add
label define sn02a_chsurvf_lbl 04 `"4"', add
label define sn02a_chsurvf_lbl 05 `"5"', add
label define sn02a_chsurvf_lbl 06 `"6"', add
label define sn02a_chsurvf_lbl 07 `"7"', add
label define sn02a_chsurvf_lbl 08 `"8"', add
label define sn02a_chsurvf_lbl 09 `"9"', add
label define sn02a_chsurvf_lbl 10 `"10+"', add
label define sn02a_chsurvf_lbl 98 `"Unknown"', add
label define sn02a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values sn02a_chsurvf sn02a_chsurvf_lbl

label define sn02a_bthlyrm_lbl 00 `"0"'
label define sn02a_bthlyrm_lbl 01 `"1"', add
label define sn02a_bthlyrm_lbl 02 `"2"', add
label define sn02a_bthlyrm_lbl 03 `"3"', add
label define sn02a_bthlyrm_lbl 04 `"4+"', add
label define sn02a_bthlyrm_lbl 98 `"Unknown"', add
label define sn02a_bthlyrm_lbl 99 `"NIU (not in universe)"', add
label values sn02a_bthlyrm sn02a_bthlyrm_lbl

label define sn02a_bthlyrf_lbl 00 `"0"'
label define sn02a_bthlyrf_lbl 01 `"1"', add
label define sn02a_bthlyrf_lbl 02 `"2"', add
label define sn02a_bthlyrf_lbl 03 `"3"', add
label define sn02a_bthlyrf_lbl 04 `"4+"', add
label define sn02a_bthlyrf_lbl 98 `"Unknown"', add
label define sn02a_bthlyrf_lbl 99 `"NIU (not in universe)"', add
label values sn02a_bthlyrf sn02a_bthlyrf_lbl

label define sn02a_birthyr_lbl 1910 `"1910 or earlier"'
label define sn02a_birthyr_lbl 1911 `"1911"', add
label define sn02a_birthyr_lbl 1912 `"1912"', add
label define sn02a_birthyr_lbl 1913 `"1913"', add
label define sn02a_birthyr_lbl 1914 `"1914"', add
label define sn02a_birthyr_lbl 1915 `"1915"', add
label define sn02a_birthyr_lbl 1916 `"1916"', add
label define sn02a_birthyr_lbl 1917 `"1917"', add
label define sn02a_birthyr_lbl 1918 `"1918"', add
label define sn02a_birthyr_lbl 1919 `"1919"', add
label define sn02a_birthyr_lbl 1920 `"1920"', add
label define sn02a_birthyr_lbl 1921 `"1921"', add
label define sn02a_birthyr_lbl 1922 `"1922"', add
label define sn02a_birthyr_lbl 1923 `"1923"', add
label define sn02a_birthyr_lbl 1924 `"1924"', add
label define sn02a_birthyr_lbl 1925 `"1925"', add
label define sn02a_birthyr_lbl 1926 `"1926"', add
label define sn02a_birthyr_lbl 1927 `"1927"', add
label define sn02a_birthyr_lbl 1928 `"1928"', add
label define sn02a_birthyr_lbl 1929 `"1929"', add
label define sn02a_birthyr_lbl 1930 `"1930"', add
label define sn02a_birthyr_lbl 1931 `"1931"', add
label define sn02a_birthyr_lbl 1932 `"1932"', add
label define sn02a_birthyr_lbl 1933 `"1933"', add
label define sn02a_birthyr_lbl 1934 `"1934"', add
label define sn02a_birthyr_lbl 1935 `"1935"', add
label define sn02a_birthyr_lbl 1936 `"1936"', add
label define sn02a_birthyr_lbl 1937 `"1937"', add
label define sn02a_birthyr_lbl 1938 `"1938"', add
label define sn02a_birthyr_lbl 1939 `"1939"', add
label define sn02a_birthyr_lbl 1940 `"1940"', add
label define sn02a_birthyr_lbl 1941 `"1941"', add
label define sn02a_birthyr_lbl 1942 `"1942"', add
label define sn02a_birthyr_lbl 1943 `"1943"', add
label define sn02a_birthyr_lbl 1944 `"1944"', add
label define sn02a_birthyr_lbl 1945 `"1945"', add
label define sn02a_birthyr_lbl 1946 `"1946"', add
label define sn02a_birthyr_lbl 1947 `"1947"', add
label define sn02a_birthyr_lbl 1948 `"1948"', add
label define sn02a_birthyr_lbl 1949 `"1949"', add
label define sn02a_birthyr_lbl 1950 `"1950"', add
label define sn02a_birthyr_lbl 1951 `"1951"', add
label define sn02a_birthyr_lbl 1952 `"1952"', add
label define sn02a_birthyr_lbl 1953 `"1953"', add
label define sn02a_birthyr_lbl 1954 `"1954"', add
label define sn02a_birthyr_lbl 1955 `"1955"', add
label define sn02a_birthyr_lbl 1956 `"1956"', add
label define sn02a_birthyr_lbl 1957 `"1957"', add
label define sn02a_birthyr_lbl 1958 `"1958"', add
label define sn02a_birthyr_lbl 1959 `"1959"', add
label define sn02a_birthyr_lbl 1960 `"1960"', add
label define sn02a_birthyr_lbl 1961 `"1961"', add
label define sn02a_birthyr_lbl 1962 `"1962"', add
label define sn02a_birthyr_lbl 1963 `"1963"', add
label define sn02a_birthyr_lbl 1964 `"1964"', add
label define sn02a_birthyr_lbl 1965 `"1965"', add
label define sn02a_birthyr_lbl 1966 `"1966"', add
label define sn02a_birthyr_lbl 1967 `"1967"', add
label define sn02a_birthyr_lbl 1968 `"1968"', add
label define sn02a_birthyr_lbl 1969 `"1969"', add
label define sn02a_birthyr_lbl 1970 `"1970"', add
label define sn02a_birthyr_lbl 1971 `"1971"', add
label define sn02a_birthyr_lbl 1972 `"1972"', add
label define sn02a_birthyr_lbl 1973 `"1973"', add
label define sn02a_birthyr_lbl 1974 `"1974"', add
label define sn02a_birthyr_lbl 1975 `"1975"', add
label define sn02a_birthyr_lbl 1976 `"1976"', add
label define sn02a_birthyr_lbl 1977 `"1977"', add
label define sn02a_birthyr_lbl 1978 `"1978"', add
label define sn02a_birthyr_lbl 1979 `"1979"', add
label define sn02a_birthyr_lbl 1980 `"1980"', add
label define sn02a_birthyr_lbl 1981 `"1981"', add
label define sn02a_birthyr_lbl 1982 `"1982"', add
label define sn02a_birthyr_lbl 1983 `"1983"', add
label define sn02a_birthyr_lbl 1984 `"1984"', add
label define sn02a_birthyr_lbl 1985 `"1985"', add
label define sn02a_birthyr_lbl 1986 `"1986"', add
label define sn02a_birthyr_lbl 1987 `"1987"', add
label define sn02a_birthyr_lbl 1988 `"1988"', add
label define sn02a_birthyr_lbl 1989 `"1989"', add
label define sn02a_birthyr_lbl 1990 `"1990"', add
label define sn02a_birthyr_lbl 1991 `"1991"', add
label define sn02a_birthyr_lbl 1992 `"1992"', add
label define sn02a_birthyr_lbl 1993 `"1993"', add
label define sn02a_birthyr_lbl 1994 `"1994"', add
label define sn02a_birthyr_lbl 1995 `"1995"', add
label define sn02a_birthyr_lbl 1996 `"1996"', add
label define sn02a_birthyr_lbl 1997 `"1997"', add
label define sn02a_birthyr_lbl 1998 `"1998"', add
label define sn02a_birthyr_lbl 1999 `"1999"', add
label define sn02a_birthyr_lbl 2000 `"2000"', add
label define sn02a_birthyr_lbl 2001 `"2001"', add
label define sn02a_birthyr_lbl 2002 `"2002"', add
label define sn02a_birthyr_lbl 9999 `"Unknown"', add
label values sn02a_birthyr sn02a_birthyr_lbl

label define sn02a_edlevg_lbl 00 `"None"'
label define sn02a_edlevg_lbl 01 `"Primary"', add
label define sn02a_edlevg_lbl 02 `"Secondary, first cycle"', add
label define sn02a_edlevg_lbl 03 `"Secondary, second cycle"', add
label define sn02a_edlevg_lbl 04 `"Higher education"', add
label define sn02a_edlevg_lbl 08 `"Unknown"', add
label define sn02a_edlevg_lbl 99 `"NIU (not in universe)"', add
label values sn02a_edlevg sn02a_edlevg_lbl


