* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    jo04a_dwnum     22-26    ///
  byte    jo04a_pern      27-28    ///
  byte    jo04a_govern    29-30    ///
  byte    jo04a_urban     31-31    ///
  byte    jo04a_gq1       32-32    ///
  byte    jo04a_disabhh   33-33    ///
  byte    jo04a_disabn    34-34    ///
  byte    jo04a_radio     35-35    ///
  byte    jo04a_radion    36-36    ///
  byte    jo04a_tv        37-37    ///
  byte    jo04a_tvn       38-38    ///
  byte    jo04a_satel     39-39    ///
  byte    jo04a_sateln    40-40    ///
  byte    jo04a_refrig    41-41    ///
  byte    jo04a_refrign   42-42    ///
  byte    jo04a_washer    43-43    ///
  byte    jo04a_washern   44-44    ///
  byte    jo04a_solar     45-45    ///
  byte    jo04a_solarn    46-46    ///
  byte    jo04a_gasck     47-47    ///
  byte    jo04a_gasckn    48-48    ///
  byte    jo04a_microwv   49-49    ///
  byte    jo04a_microwvn  50-50    ///
  byte    jo04a_car       51-51    ///
  byte    jo04a_carn      52-52    ///
  byte    jo04a_phone     53-53    ///
  byte    jo04a_cellph    54-54    ///
  byte    jo04a_cellphn   55-55    ///
  byte    jo04a_comp      56-56    ///
  byte    jo04a_compn     57-57    ///
  byte    jo04a_internet  58-58    ///
  byte    jo04a_gq2       59-59    ///
  byte    jo04a_pernom    60-61    ///
  byte    jo04a_pernof    62-63    ///
  byte    jo04a_perno     64-65    ///
  byte    jo04a_jormjor   66-67    ///
  byte    jo04a_jorfjor   68-69    ///
  byte    jo04a_jortjor   70-71    ///
  byte    jo04a_njormjor  72-73    ///
  byte    jo04a_njorfjor  74-75    ///
  byte    jo04a_njortjor  76-77    ///
  byte    jo04a_jormout   78-78    ///
  byte    jo04a_jorfout   79-79    ///
  byte    jo04a_jortout   80-81    ///
  byte    jo04a_deaf      82-82    ///
  byte    jo04a_phys      83-83    ///
  byte    jo04a_cerpalsy  84-84    ///
  byte    jo04a_mental    85-85    ///
  byte    jo04a_visual    86-86    ///
  byte    jo04a_multdis   87-87    ///
  byte    jo04a_othdis    88-88    ///
  byte    jo04a_hhtype    89-89    ///
  byte    jo04a_occtype   90-90    ///
  byte    jo04a_tenure    91-91    ///
  int     jo04a_rent      92-94    ///
  byte    jo04a_occdur    95-96    ///
  byte    jo04a_heat      97-97    ///
  byte    jo04a_watsrc    98-98    ///
  byte    jo04a_litsrc    99-99    ///
  int     jo04a_hsgsize   100-102  ///
  byte    jo04a_sewer     103-103  ///
  byte    jo04a_toilet    104-104  ///
  byte    jo04a_kitchen   105-105  ///
  byte    jo04a_room      106-107  ///
  byte    jo04a_roombd    108-108  ///
  byte    jo04a_hhno      109-109  ///
  byte    jo04a_perhu     110-111  ///
  byte    jo04a_firsthh   112-112  ///
  byte    jo04a_bldty1    113-113  ///
  int     jo04a_conyr     114-117  ///
  byte    jo04a_bldty2    118-118  ///
  byte    jo04a_wall      119-119  ///
  byte    jo04a_stories   120-121  ///
  byte    jo04a_elevat    122-122  ///
  byte    jo04a_hhunb     123-124  ///
  byte    jo04a_hhnb      125-126  ///
  int     jo04a_pernb     127-129  ///
  int     pernum          130-132  ///
  float   wtper           133-140  ///
  byte    jo04a_pernum    141-142  ///
  byte    jo04a_pernumo   143-144  ///
  byte    jo04a_relate    145-145  ///
  byte    jo04a_sex       146-146  ///
  byte    jo04a_birmon    147-148  ///
  int     jo04a_biryr     149-152  ///
  byte    jo04a_age       153-154  ///
  byte    jo04a_medins    155-155  ///
  byte    jo04a_insciv    156-156  ///
  byte    jo04a_insmil    157-157  ///
  byte    jo04a_insuniv   158-158  ///
  byte    jo04a_inspriv   159-159  ///
  byte    jo04a_instot    160-161  ///
  byte    jo04a_nation    162-163  ///
  byte    jo04a_natnum    164-164  ///
  byte    jo04a_resabr    165-165  ///
  byte    jo04a_resdur    166-167  ///
  byte    jo04a_school    168-168  ///
  byte    jo04a_edlev1    169-169  ///
  byte    jo04a_grade     170-171  ///
  int     jo04a_educ      172-174  ///
  byte    jo04a_edlev2    175-176  ///
  byte    jo04a_marst     177-177  ///
  byte    jo04a_work      178-178  ///
  byte    jo04a_wkabs     179-179  ///
  byte    jo04a_wkhour    180-181  ///
  byte    jo04a_wksect    182-182  ///
  int     jo04a_ind       183-186  ///
  byte    jo04a_claswk1   187-187  ///
  byte    jo04a_wkready   188-188  ///
  byte    jo04a_wkseek    189-189  ///
  byte    jo04a_claswk2   190-190  ///
  byte    jo04a_empstat   191-191  ///
  byte    jo04a_disab     192-192  ///
  using `"ipumsi_00085.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var jo04a_dwnum    `"Dwelling number"'
label var jo04a_pern     `"Number of persons in household"'
label var jo04a_govern   `"Governorate"'
label var jo04a_urban    `"Urban_Rural"'
label var jo04a_gq1      `"Sample type"'
label var jo04a_disabhh  `"Household member suffers from any handicap"'
label var jo04a_disabn   `"Number of handicapped persons"'
label var jo04a_radio    `"Radio/tape recorder"'
label var jo04a_radion   `"Number of radio/tape recorders"'
label var jo04a_tv       `"Television"'
label var jo04a_tvn      `"Number of televisions"'
label var jo04a_satel    `"Satellite dish"'
label var jo04a_sateln   `"Number of satellite dishes"'
label var jo04a_refrig   `"Refrigerator"'
label var jo04a_refrign  `"Number of refrigerators"'
label var jo04a_washer   `"Washing machine"'
label var jo04a_washern  `"Number of washing machines"'
label var jo04a_solar    `"Solar heater"'
label var jo04a_solarn   `"Number of solar heaters"'
label var jo04a_gasck    `"Gas cooker"'
label var jo04a_gasckn   `"Number of gas cookers"'
label var jo04a_microwv  `"Microwave oven"'
label var jo04a_microwvn `"Number of microwave ovens"'
label var jo04a_car      `"Private car/pickup"'
label var jo04a_carn     `"Number of private cars/pickups"'
label var jo04a_phone    `"Telephone"'
label var jo04a_cellph   `"Mobile telephone"'
label var jo04a_cellphn  `"Number of mobile telephones"'
label var jo04a_comp     `"Computer"'
label var jo04a_compn    `"Number of computers"'
label var jo04a_internet `"Internet access"'
label var jo04a_gq2      `"Type of household"'
label var jo04a_pernom   `"Number of males"'
label var jo04a_pernof   `"Number of females"'
label var jo04a_perno    `"Total number of household members"'
label var jo04a_jormjor  `"Jordanian males inside Jordan"'
label var jo04a_jorfjor  `"Jordanian females inside Jordan"'
label var jo04a_jortjor  `"Total Jordanians inside Jordan"'
label var jo04a_njormjor `"Non-Jordanian males inside Jordan"'
label var jo04a_njorfjor `"Non-Jordanian females inside Jordan"'
label var jo04a_njortjor `"Total non-Jordanians inside Jordan"'
label var jo04a_jormout  `"Jordanian males outside Jordan"'
label var jo04a_jorfout  `"Jordanian females outside Jordan"'
label var jo04a_jortout  `"Total number of Jordanians outside Jordan"'
label var jo04a_deaf     `"Deaf or dumb member in the household"'
label var jo04a_phys     `"Physically handicapped member in the household"'
label var jo04a_cerpalsy `"Members with cerebral palsy in the household"'
label var jo04a_mental   `"Mentally handicapped member in the household"'
label var jo04a_visual   `"Visually handicapped member in the household"'
label var jo04a_multdis  `"Multiply handicapped member in the household"'
label var jo04a_othdis   `"Other handicapped member in the household"'
label var jo04a_hhtype   `"Type of housing unit"'
label var jo04a_occtype  `"Type of occupancy"'
label var jo04a_tenure   `"Type of tenure"'
label var jo04a_rent     `"Monthly rent of housing unit"'
label var jo04a_occdur   `"Duration of occupancy of housing unit in years"'
label var jo04a_heat     `"Type of heating"'
label var jo04a_watsrc   `"Main source of drinking water"'
label var jo04a_litsrc   `"Source of lighting"'
label var jo04a_hsgsize  `"Housing unit area in square meters"'
label var jo04a_sewer    `"Type of sewage system"'
label var jo04a_toilet   `"Availability of toilet in the housing unit"'
label var jo04a_kitchen  `"Availability of independent kitchen in the housing unit"'
label var jo04a_room     `"Total number of rooms in the housing unit"'
label var jo04a_roombd   `"Total number of bedrooms in the housing unit"'
label var jo04a_hhno     `"Number of households in the housing unit"'
label var jo04a_perhu    `"Number of persons in the housing unit"'
label var jo04a_firsthh  `"First housing unit in the building"'
label var jo04a_bldty1   `"Type of building"'
label var jo04a_conyr    `"Year of laying foundation of the building"'
label var jo04a_bldty2   `"Type of occupancy"'
label var jo04a_wall     `"Dominant material of outside walls of the building"'
label var jo04a_stories  `"Number of floors"'
label var jo04a_elevat   `"Availability of elevator"'
label var jo04a_hhunb    `"Number of housing units in the building"'
label var jo04a_hhnb     `"Number of households in the building"'
label var jo04a_pernb    `"Number of persons in the building"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var jo04a_pernum   `"Person number (within household)"'
label var jo04a_pernumo  `"Serial number of person"'
label var jo04a_relate   `"Relationship to head of household"'
label var jo04a_sex      `"Sex"'
label var jo04a_birmon   `"Month of birth"'
label var jo04a_biryr    `"Year of birth"'
label var jo04a_age      `"Age in completed years"'
label var jo04a_medins   `"Medically insured"'
label var jo04a_insciv   `"Type of health insurance, civilian"'
label var jo04a_insmil   `"Type of health insurance, military"'
label var jo04a_insuniv  `"Type of health insurance, official universities"'
label var jo04a_inspriv  `"Type of health insurance, private"'
label var jo04a_instot   `"Type of health insurance, total"'
label var jo04a_nation   `"Nationality"'
label var jo04a_natnum   `"Has discrete national number"'
label var jo04a_resabr   `"Reason for residence in either Jordan or abroad"'
label var jo04a_resdur   `"Duration of residence in current place (Jordanians) and in Jordan (non-Jordanian"'
label var jo04a_school   `"Has ever been to school"'
label var jo04a_edlev1   `"Education level attending"'
label var jo04a_grade    `"Grade attending"'
label var jo04a_educ     `"Level and grade of current enrollment"'
label var jo04a_edlev2   `"Educational status"'
label var jo04a_marst    `"Marital status"'
label var jo04a_work     `"Worked during the week that ended in October 1, 2004"'
label var jo04a_wkabs    `"Had a job but did not practice it"'
label var jo04a_wkhour   `"Total number of hours worked in all jobs"'
label var jo04a_wksect   `"Type of establishment in which the person works"'
label var jo04a_ind      `"Major current economic activity of the establishment"'
label var jo04a_claswk1  `"Employment status"'
label var jo04a_wkready  `"Prepared to start the job if offered"'
label var jo04a_wkseek   `"Actively searched for work"'
label var jo04a_claswk2  `"Class of worker"'
label var jo04a_empstat  `"Economic situation"'
label var jo04a_disab    `"Kind of handicap"'

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

label define jo04a_pern_lbl 01 `"1"'
label define jo04a_pern_lbl 02 `"2"', add
label define jo04a_pern_lbl 03 `"3"', add
label define jo04a_pern_lbl 04 `"4"', add
label define jo04a_pern_lbl 05 `"5"', add
label define jo04a_pern_lbl 06 `"6"', add
label define jo04a_pern_lbl 07 `"7"', add
label define jo04a_pern_lbl 08 `"8"', add
label define jo04a_pern_lbl 09 `"9"', add
label define jo04a_pern_lbl 10 `"10"', add
label define jo04a_pern_lbl 11 `"11"', add
label define jo04a_pern_lbl 12 `"12"', add
label define jo04a_pern_lbl 13 `"13"', add
label define jo04a_pern_lbl 14 `"14"', add
label define jo04a_pern_lbl 15 `"15"', add
label define jo04a_pern_lbl 16 `"16"', add
label define jo04a_pern_lbl 17 `"17"', add
label define jo04a_pern_lbl 18 `"18"', add
label define jo04a_pern_lbl 19 `"19"', add
label define jo04a_pern_lbl 20 `"20"', add
label define jo04a_pern_lbl 21 `"21"', add
label define jo04a_pern_lbl 22 `"22"', add
label define jo04a_pern_lbl 23 `"23"', add
label define jo04a_pern_lbl 24 `"24"', add
label define jo04a_pern_lbl 25 `"25"', add
label define jo04a_pern_lbl 27 `"27"', add
label define jo04a_pern_lbl 28 `"28"', add
label values jo04a_pern jo04a_pern_lbl

label define jo04a_govern_lbl 11 `"Amman"'
label define jo04a_govern_lbl 12 `"Balqa"', add
label define jo04a_govern_lbl 13 `"Zarqa"', add
label define jo04a_govern_lbl 14 `"Madaba"', add
label define jo04a_govern_lbl 21 `"Irbid"', add
label define jo04a_govern_lbl 22 `"Mafraq"', add
label define jo04a_govern_lbl 23 `"Jarash"', add
label define jo04a_govern_lbl 24 `"Ajlun"', add
label define jo04a_govern_lbl 31 `"Karak"', add
label define jo04a_govern_lbl 32 `"Tafilah"', add
label define jo04a_govern_lbl 33 `"Ma'an"', add
label define jo04a_govern_lbl 34 `"Aqaba"', add
label values jo04a_govern jo04a_govern_lbl

label define jo04a_urban_lbl 1 `"Urban"'
label define jo04a_urban_lbl 2 `"Rural"', add
label values jo04a_urban jo04a_urban_lbl

label define jo04a_gq1_lbl 1 `"Private household sample"'
label define jo04a_gq1_lbl 2 `"Collective sample"', add
label values jo04a_gq1 jo04a_gq1_lbl

label define jo04a_disabhh_lbl 1 `"Yes"'
label define jo04a_disabhh_lbl 2 `"No"', add
label define jo04a_disabhh_lbl 3 `"Don't know"', add
label define jo04a_disabhh_lbl 8 `"Unknown"', add
label define jo04a_disabhh_lbl 9 `"NIU (not in universe)"', add
label values jo04a_disabhh jo04a_disabhh_lbl

label define jo04a_disabn_lbl 1 `"1"'
label define jo04a_disabn_lbl 2 `"2"', add
label define jo04a_disabn_lbl 3 `"3"', add
label define jo04a_disabn_lbl 4 `"4+"', add
label define jo04a_disabn_lbl 9 `"NIU (not in universe)"', add
label values jo04a_disabn jo04a_disabn_lbl

label define jo04a_radio_lbl 1 `"Yes"'
label define jo04a_radio_lbl 2 `"No"', add
label define jo04a_radio_lbl 8 `"Unknown"', add
label define jo04a_radio_lbl 9 `"NIU (not in universe)"', add
label values jo04a_radio jo04a_radio_lbl

label define jo04a_radion_lbl 1 `"1"'
label define jo04a_radion_lbl 2 `"2"', add
label define jo04a_radion_lbl 3 `"3"', add
label define jo04a_radion_lbl 4 `"4"', add
label define jo04a_radion_lbl 5 `"5+"', add
label define jo04a_radion_lbl 9 `"NIU (not in universe)"', add
label values jo04a_radion jo04a_radion_lbl

label define jo04a_tv_lbl 1 `"Yes"'
label define jo04a_tv_lbl 2 `"No"', add
label define jo04a_tv_lbl 8 `"Unknown"', add
label define jo04a_tv_lbl 9 `"NIU (not in universe)"', add
label values jo04a_tv jo04a_tv_lbl

label define jo04a_tvn_lbl 1 `"1"'
label define jo04a_tvn_lbl 2 `"2"', add
label define jo04a_tvn_lbl 3 `"3"', add
label define jo04a_tvn_lbl 4 `"4+"', add
label define jo04a_tvn_lbl 9 `"NIU (not in universe)"', add
label values jo04a_tvn jo04a_tvn_lbl

label define jo04a_satel_lbl 1 `"Yes"'
label define jo04a_satel_lbl 2 `"No"', add
label define jo04a_satel_lbl 8 `"Unknown"', add
label define jo04a_satel_lbl 9 `"NIU (not in universe)"', add
label values jo04a_satel jo04a_satel_lbl

label define jo04a_sateln_lbl 1 `"1"'
label define jo04a_sateln_lbl 2 `"2"', add
label define jo04a_sateln_lbl 3 `"3+"', add
label define jo04a_sateln_lbl 9 `"NIU (not in universe)"', add
label values jo04a_sateln jo04a_sateln_lbl

label define jo04a_refrig_lbl 1 `"Yes"'
label define jo04a_refrig_lbl 2 `"No"', add
label define jo04a_refrig_lbl 8 `"Unknown"', add
label define jo04a_refrig_lbl 9 `"NIU (not in universe)"', add
label values jo04a_refrig jo04a_refrig_lbl

label define jo04a_refrign_lbl 1 `"1"'
label define jo04a_refrign_lbl 2 `"2"', add
label define jo04a_refrign_lbl 3 `"3+"', add
label define jo04a_refrign_lbl 9 `"NIU (not in universe)"', add
label values jo04a_refrign jo04a_refrign_lbl

label define jo04a_washer_lbl 1 `"Yes"'
label define jo04a_washer_lbl 2 `"No"', add
label define jo04a_washer_lbl 8 `"Unknown"', add
label define jo04a_washer_lbl 9 `"NIU (not in universe)"', add
label values jo04a_washer jo04a_washer_lbl

label define jo04a_washern_lbl 1 `"1"'
label define jo04a_washern_lbl 2 `"2"', add
label define jo04a_washern_lbl 3 `"3+"', add
label define jo04a_washern_lbl 9 `"NIU (not in universe)"', add
label values jo04a_washern jo04a_washern_lbl

label define jo04a_solar_lbl 1 `"Yes"'
label define jo04a_solar_lbl 2 `"No"', add
label define jo04a_solar_lbl 8 `"Unknown"', add
label define jo04a_solar_lbl 9 `"NIU (not in universe)"', add
label values jo04a_solar jo04a_solar_lbl

label define jo04a_solarn_lbl 1 `"1"'
label define jo04a_solarn_lbl 2 `"2+"', add
label define jo04a_solarn_lbl 9 `"NIU (not in universe)"', add
label values jo04a_solarn jo04a_solarn_lbl

label define jo04a_gasck_lbl 1 `"Yes"'
label define jo04a_gasck_lbl 2 `"No"', add
label define jo04a_gasck_lbl 8 `"Unknown"', add
label define jo04a_gasck_lbl 9 `"NIU (not in universe)"', add
label values jo04a_gasck jo04a_gasck_lbl

label define jo04a_gasckn_lbl 1 `"1"'
label define jo04a_gasckn_lbl 2 `"2"', add
label define jo04a_gasckn_lbl 3 `"3+"', add
label define jo04a_gasckn_lbl 9 `"NIU (not in universe)"', add
label values jo04a_gasckn jo04a_gasckn_lbl

label define jo04a_microwv_lbl 1 `"Yes"'
label define jo04a_microwv_lbl 2 `"No"', add
label define jo04a_microwv_lbl 8 `"Unknown"', add
label define jo04a_microwv_lbl 9 `"NIU (not in universe)"', add
label values jo04a_microwv jo04a_microwv_lbl

label define jo04a_microwvn_lbl 1 `"1"'
label define jo04a_microwvn_lbl 2 `"2"', add
label define jo04a_microwvn_lbl 9 `"NIU (not in universe)"', add
label values jo04a_microwvn jo04a_microwvn_lbl

label define jo04a_car_lbl 1 `"Yes"'
label define jo04a_car_lbl 2 `"No"', add
label define jo04a_car_lbl 8 `"Unknown"', add
label define jo04a_car_lbl 9 `"NIU (not in universe)"', add
label values jo04a_car jo04a_car_lbl

label define jo04a_carn_lbl 1 `"1"'
label define jo04a_carn_lbl 2 `"2"', add
label define jo04a_carn_lbl 3 `"3"', add
label define jo04a_carn_lbl 4 `"4+"', add
label define jo04a_carn_lbl 9 `"NIU (not in universe)"', add
label values jo04a_carn jo04a_carn_lbl

label define jo04a_phone_lbl 1 `"Yes"'
label define jo04a_phone_lbl 2 `"No"', add
label define jo04a_phone_lbl 8 `"Unknown"', add
label define jo04a_phone_lbl 9 `"NIU (not in universe)"', add
label values jo04a_phone jo04a_phone_lbl

label define jo04a_cellph_lbl 1 `"Yes"'
label define jo04a_cellph_lbl 2 `"No"', add
label define jo04a_cellph_lbl 8 `"Unknown"', add
label define jo04a_cellph_lbl 9 `"NIU (not in universe)"', add
label values jo04a_cellph jo04a_cellph_lbl

label define jo04a_cellphn_lbl 1 `"1"'
label define jo04a_cellphn_lbl 2 `"2"', add
label define jo04a_cellphn_lbl 3 `"3"', add
label define jo04a_cellphn_lbl 4 `"4"', add
label define jo04a_cellphn_lbl 5 `"5"', add
label define jo04a_cellphn_lbl 6 `"6"', add
label define jo04a_cellphn_lbl 7 `"7"', add
label define jo04a_cellphn_lbl 8 `"8+"', add
label define jo04a_cellphn_lbl 9 `"NIU (not in universe)"', add
label values jo04a_cellphn jo04a_cellphn_lbl

label define jo04a_comp_lbl 1 `"Yes"'
label define jo04a_comp_lbl 2 `"No"', add
label define jo04a_comp_lbl 8 `"Unknown"', add
label define jo04a_comp_lbl 9 `"NIU (not in universe)"', add
label values jo04a_comp jo04a_comp_lbl

label define jo04a_compn_lbl 1 `"1"'
label define jo04a_compn_lbl 2 `"2"', add
label define jo04a_compn_lbl 3 `"3+"', add
label define jo04a_compn_lbl 9 `"NIU (not in universe)"', add
label values jo04a_compn jo04a_compn_lbl

label define jo04a_internet_lbl 1 `"Yes"'
label define jo04a_internet_lbl 2 `"No"', add
label define jo04a_internet_lbl 8 `"Unknown"', add
label define jo04a_internet_lbl 9 `"NIU (not in universe)"', add
label values jo04a_internet jo04a_internet_lbl

label define jo04a_gq2_lbl 1 `"Private household"'
label define jo04a_gq2_lbl 2 `"Collective household"', add
label define jo04a_gq2_lbl 3 `"Hotels"', add
label values jo04a_gq2 jo04a_gq2_lbl

label define jo04a_pernom_lbl 00 `"0"'
label define jo04a_pernom_lbl 01 `"1"', add
label define jo04a_pernom_lbl 02 `"2"', add
label define jo04a_pernom_lbl 03 `"3"', add
label define jo04a_pernom_lbl 04 `"4"', add
label define jo04a_pernom_lbl 05 `"5"', add
label define jo04a_pernom_lbl 06 `"6"', add
label define jo04a_pernom_lbl 07 `"7"', add
label define jo04a_pernom_lbl 08 `"8"', add
label define jo04a_pernom_lbl 09 `"9"', add
label define jo04a_pernom_lbl 10 `"10"', add
label define jo04a_pernom_lbl 11 `"11"', add
label define jo04a_pernom_lbl 12 `"12+"', add
label define jo04a_pernom_lbl 99 `"Unknown and zero"', add
label values jo04a_pernom jo04a_pernom_lbl

label define jo04a_pernof_lbl 00 `"0"'
label define jo04a_pernof_lbl 01 `"1"', add
label define jo04a_pernof_lbl 02 `"2"', add
label define jo04a_pernof_lbl 03 `"3"', add
label define jo04a_pernof_lbl 04 `"4"', add
label define jo04a_pernof_lbl 05 `"5"', add
label define jo04a_pernof_lbl 06 `"6"', add
label define jo04a_pernof_lbl 07 `"7"', add
label define jo04a_pernof_lbl 08 `"8"', add
label define jo04a_pernof_lbl 09 `"9"', add
label define jo04a_pernof_lbl 10 `"10"', add
label define jo04a_pernof_lbl 11 `"11"', add
label define jo04a_pernof_lbl 12 `"12+"', add
label define jo04a_pernof_lbl 99 `"Unknown and zero"', add
label values jo04a_pernof jo04a_pernof_lbl

label define jo04a_perno_lbl 01 `"1"'
label define jo04a_perno_lbl 02 `"2"', add
label define jo04a_perno_lbl 03 `"3"', add
label define jo04a_perno_lbl 04 `"4"', add
label define jo04a_perno_lbl 05 `"5"', add
label define jo04a_perno_lbl 06 `"6"', add
label define jo04a_perno_lbl 07 `"7"', add
label define jo04a_perno_lbl 08 `"8"', add
label define jo04a_perno_lbl 09 `"9"', add
label define jo04a_perno_lbl 10 `"10"', add
label define jo04a_perno_lbl 11 `"11"', add
label define jo04a_perno_lbl 12 `"12"', add
label define jo04a_perno_lbl 13 `"13"', add
label define jo04a_perno_lbl 14 `"14"', add
label define jo04a_perno_lbl 15 `"15"', add
label define jo04a_perno_lbl 16 `"16"', add
label define jo04a_perno_lbl 17 `"17"', add
label define jo04a_perno_lbl 18 `"18"', add
label define jo04a_perno_lbl 19 `"19"', add
label define jo04a_perno_lbl 20 `"20+"', add
label define jo04a_perno_lbl 99 `"Unknown"', add
label values jo04a_perno jo04a_perno_lbl

label define jo04a_jormjor_lbl 00 `"0"'
label define jo04a_jormjor_lbl 01 `"1"', add
label define jo04a_jormjor_lbl 02 `"2"', add
label define jo04a_jormjor_lbl 03 `"3"', add
label define jo04a_jormjor_lbl 04 `"4"', add
label define jo04a_jormjor_lbl 05 `"5"', add
label define jo04a_jormjor_lbl 06 `"6"', add
label define jo04a_jormjor_lbl 07 `"7"', add
label define jo04a_jormjor_lbl 08 `"8"', add
label define jo04a_jormjor_lbl 09 `"9"', add
label define jo04a_jormjor_lbl 10 `"10"', add
label define jo04a_jormjor_lbl 11 `"11+"', add
label define jo04a_jormjor_lbl 99 `"Unknown and zero"', add
label values jo04a_jormjor jo04a_jormjor_lbl

label define jo04a_jorfjor_lbl 00 `"0"'
label define jo04a_jorfjor_lbl 01 `"1"', add
label define jo04a_jorfjor_lbl 02 `"2"', add
label define jo04a_jorfjor_lbl 03 `"3"', add
label define jo04a_jorfjor_lbl 04 `"4"', add
label define jo04a_jorfjor_lbl 05 `"5"', add
label define jo04a_jorfjor_lbl 06 `"6"', add
label define jo04a_jorfjor_lbl 07 `"7"', add
label define jo04a_jorfjor_lbl 08 `"8"', add
label define jo04a_jorfjor_lbl 09 `"9"', add
label define jo04a_jorfjor_lbl 10 `"10"', add
label define jo04a_jorfjor_lbl 11 `"11+"', add
label define jo04a_jorfjor_lbl 99 `"Unknown and zero"', add
label values jo04a_jorfjor jo04a_jorfjor_lbl

label define jo04a_jortjor_lbl 00 `"0"'
label define jo04a_jortjor_lbl 01 `"1"', add
label define jo04a_jortjor_lbl 02 `"2"', add
label define jo04a_jortjor_lbl 03 `"3"', add
label define jo04a_jortjor_lbl 04 `"4"', add
label define jo04a_jortjor_lbl 05 `"5"', add
label define jo04a_jortjor_lbl 06 `"6"', add
label define jo04a_jortjor_lbl 07 `"7"', add
label define jo04a_jortjor_lbl 08 `"8"', add
label define jo04a_jortjor_lbl 09 `"9"', add
label define jo04a_jortjor_lbl 10 `"10"', add
label define jo04a_jortjor_lbl 11 `"11"', add
label define jo04a_jortjor_lbl 12 `"12"', add
label define jo04a_jortjor_lbl 13 `"13"', add
label define jo04a_jortjor_lbl 14 `"14"', add
label define jo04a_jortjor_lbl 15 `"15"', add
label define jo04a_jortjor_lbl 16 `"16"', add
label define jo04a_jortjor_lbl 17 `"17"', add
label define jo04a_jortjor_lbl 18 `"18"', add
label define jo04a_jortjor_lbl 19 `"19"', add
label define jo04a_jortjor_lbl 20 `"20+"', add
label define jo04a_jortjor_lbl 99 `"Unknown"', add
label values jo04a_jortjor jo04a_jortjor_lbl

label define jo04a_njormjor_lbl 00 `"0"'
label define jo04a_njormjor_lbl 01 `"1"', add
label define jo04a_njormjor_lbl 02 `"2"', add
label define jo04a_njormjor_lbl 03 `"3"', add
label define jo04a_njormjor_lbl 04 `"4"', add
label define jo04a_njormjor_lbl 05 `"5"', add
label define jo04a_njormjor_lbl 06 `"6"', add
label define jo04a_njormjor_lbl 07 `"7"', add
label define jo04a_njormjor_lbl 08 `"8"', add
label define jo04a_njormjor_lbl 09 `"9+"', add
label define jo04a_njormjor_lbl 99 `"Unknown and zero"', add
label values jo04a_njormjor jo04a_njormjor_lbl

label define jo04a_njorfjor_lbl 00 `"0"'
label define jo04a_njorfjor_lbl 01 `"1"', add
label define jo04a_njorfjor_lbl 02 `"2"', add
label define jo04a_njorfjor_lbl 03 `"3"', add
label define jo04a_njorfjor_lbl 04 `"4"', add
label define jo04a_njorfjor_lbl 05 `"5"', add
label define jo04a_njorfjor_lbl 06 `"6"', add
label define jo04a_njorfjor_lbl 07 `"7"', add
label define jo04a_njorfjor_lbl 08 `"8"', add
label define jo04a_njorfjor_lbl 09 `"9+"', add
label define jo04a_njorfjor_lbl 99 `"Unknown and zero"', add
label values jo04a_njorfjor jo04a_njorfjor_lbl

label define jo04a_njortjor_lbl 00 `"0"'
label define jo04a_njortjor_lbl 01 `"1"', add
label define jo04a_njortjor_lbl 02 `"2"', add
label define jo04a_njortjor_lbl 03 `"3"', add
label define jo04a_njortjor_lbl 04 `"4"', add
label define jo04a_njortjor_lbl 05 `"5"', add
label define jo04a_njortjor_lbl 06 `"6"', add
label define jo04a_njortjor_lbl 07 `"7"', add
label define jo04a_njortjor_lbl 08 `"8"', add
label define jo04a_njortjor_lbl 09 `"9"', add
label define jo04a_njortjor_lbl 10 `"10"', add
label define jo04a_njortjor_lbl 11 `"11"', add
label define jo04a_njortjor_lbl 12 `"12+"', add
label define jo04a_njortjor_lbl 99 `"Unknown and zero"', add
label values jo04a_njortjor jo04a_njortjor_lbl

label define jo04a_jormout_lbl 0 `"0"'
label define jo04a_jormout_lbl 1 `"1"', add
label define jo04a_jormout_lbl 2 `"2"', add
label define jo04a_jormout_lbl 3 `"3+"', add
label define jo04a_jormout_lbl 9 `"Unknown and zero"', add
label values jo04a_jormout jo04a_jormout_lbl

label define jo04a_jorfout_lbl 0 `"0"'
label define jo04a_jorfout_lbl 1 `"1"', add
label define jo04a_jorfout_lbl 2 `"2"', add
label define jo04a_jorfout_lbl 3 `"3+"', add
label define jo04a_jorfout_lbl 9 `"Unknown and zero"', add
label values jo04a_jorfout jo04a_jorfout_lbl

label define jo04a_jortout_lbl 00 `"0"'
label define jo04a_jortout_lbl 01 `"1"', add
label define jo04a_jortout_lbl 02 `"2"', add
label define jo04a_jortout_lbl 03 `"3"', add
label define jo04a_jortout_lbl 04 `"4"', add
label define jo04a_jortout_lbl 05 `"5+"', add
label define jo04a_jortout_lbl 99 `"Unknown and zero"', add
label values jo04a_jortout jo04a_jortout_lbl

label define jo04a_deaf_lbl 1 `"Yes"'
label define jo04a_deaf_lbl 2 `"No"', add
label values jo04a_deaf jo04a_deaf_lbl

label define jo04a_phys_lbl 1 `"Yes"'
label define jo04a_phys_lbl 2 `"No"', add
label values jo04a_phys jo04a_phys_lbl

label define jo04a_cerpalsy_lbl 1 `"Yes"'
label define jo04a_cerpalsy_lbl 2 `"No"', add
label values jo04a_cerpalsy jo04a_cerpalsy_lbl

label define jo04a_mental_lbl 1 `"Yes"'
label define jo04a_mental_lbl 2 `"No"', add
label values jo04a_mental jo04a_mental_lbl

label define jo04a_visual_lbl 1 `"Yes"'
label define jo04a_visual_lbl 2 `"No"', add
label values jo04a_visual jo04a_visual_lbl

label define jo04a_multdis_lbl 1 `"Yes"'
label define jo04a_multdis_lbl 2 `"No"', add
label values jo04a_multdis jo04a_multdis_lbl

label define jo04a_othdis_lbl 1 `"Yes"'
label define jo04a_othdis_lbl 2 `"No"', add
label values jo04a_othdis jo04a_othdis_lbl

label define jo04a_hhtype_lbl 1 `"Dar"'
label define jo04a_hhtype_lbl 2 `"Apartment"', add
label define jo04a_hhtype_lbl 3 `"Villa"', add
label define jo04a_hhtype_lbl 4 `"Barracks"', add
label define jo04a_hhtype_lbl 5 `"Tent / Hair tent"', add
label define jo04a_hhtype_lbl 6 `"Establishment/ work place"', add
label define jo04a_hhtype_lbl 8 `"Other"', add
label define jo04a_hhtype_lbl 9 `"Unknown"', add
label values jo04a_hhtype jo04a_hhtype_lbl

label define jo04a_occtype_lbl 1 `"Private household"'
label define jo04a_occtype_lbl 2 `"Collective household"', add
label define jo04a_occtype_lbl 3 `"Hotel"', add
label define jo04a_occtype_lbl 4 `"Public housing unit"', add
label define jo04a_occtype_lbl 9 `"Unknown"', add
label values jo04a_occtype jo04a_occtype_lbl

label define jo04a_tenure_lbl 1 `"Owned by household or members"'
label define jo04a_tenure_lbl 2 `"Rented unfurnished"', add
label define jo04a_tenure_lbl 3 `"Rented furnished"', add
label define jo04a_tenure_lbl 4 `"Owned by relative"', add
label define jo04a_tenure_lbl 5 `"For work"', add
label define jo04a_tenure_lbl 6 `"Free"', add
label define jo04a_tenure_lbl 7 `"Other"', add
label define jo04a_tenure_lbl 8 `"Unknown"', add
label define jo04a_tenure_lbl 9 `"NIU (not in universe)"', add
label values jo04a_tenure jo04a_tenure_lbl

label define jo04a_rent_lbl 000 `"NIU (not in universe)"'
label define jo04a_rent_lbl 010 `"10 or less"', add
label define jo04a_rent_lbl 011 `"11"', add
label define jo04a_rent_lbl 012 `"12"', add
label define jo04a_rent_lbl 013 `"13"', add
label define jo04a_rent_lbl 014 `"14"', add
label define jo04a_rent_lbl 015 `"15"', add
label define jo04a_rent_lbl 016 `"16"', add
label define jo04a_rent_lbl 017 `"17"', add
label define jo04a_rent_lbl 018 `"18"', add
label define jo04a_rent_lbl 019 `"19"', add
label define jo04a_rent_lbl 020 `"20"', add
label define jo04a_rent_lbl 021 `"21"', add
label define jo04a_rent_lbl 022 `"22"', add
label define jo04a_rent_lbl 023 `"23"', add
label define jo04a_rent_lbl 024 `"24"', add
label define jo04a_rent_lbl 025 `"25"', add
label define jo04a_rent_lbl 026 `"26"', add
label define jo04a_rent_lbl 027 `"27"', add
label define jo04a_rent_lbl 028 `"28"', add
label define jo04a_rent_lbl 029 `"29"', add
label define jo04a_rent_lbl 030 `"30"', add
label define jo04a_rent_lbl 031 `"31"', add
label define jo04a_rent_lbl 032 `"32"', add
label define jo04a_rent_lbl 033 `"33"', add
label define jo04a_rent_lbl 034 `"34"', add
label define jo04a_rent_lbl 035 `"35"', add
label define jo04a_rent_lbl 036 `"36"', add
label define jo04a_rent_lbl 037 `"37"', add
label define jo04a_rent_lbl 038 `"38"', add
label define jo04a_rent_lbl 040 `"40"', add
label define jo04a_rent_lbl 041 `"41"', add
label define jo04a_rent_lbl 042 `"42"', add
label define jo04a_rent_lbl 043 `"43"', add
label define jo04a_rent_lbl 044 `"44"', add
label define jo04a_rent_lbl 045 `"45"', add
label define jo04a_rent_lbl 046 `"46"', add
label define jo04a_rent_lbl 047 `"47"', add
label define jo04a_rent_lbl 048 `"48"', add
label define jo04a_rent_lbl 049 `"49"', add
label define jo04a_rent_lbl 050 `"50"', add
label define jo04a_rent_lbl 051 `"51"', add
label define jo04a_rent_lbl 052 `"52"', add
label define jo04a_rent_lbl 053 `"53"', add
label define jo04a_rent_lbl 054 `"54"', add
label define jo04a_rent_lbl 055 `"55"', add
label define jo04a_rent_lbl 056 `"56"', add
label define jo04a_rent_lbl 057 `"57"', add
label define jo04a_rent_lbl 058 `"58"', add
label define jo04a_rent_lbl 059 `"59"', add
label define jo04a_rent_lbl 060 `"60"', add
label define jo04a_rent_lbl 061 `"61"', add
label define jo04a_rent_lbl 062 `"62"', add
label define jo04a_rent_lbl 063 `"63"', add
label define jo04a_rent_lbl 064 `"64"', add
label define jo04a_rent_lbl 065 `"65"', add
label define jo04a_rent_lbl 066 `"66"', add
label define jo04a_rent_lbl 067 `"67"', add
label define jo04a_rent_lbl 068 `"68"', add
label define jo04a_rent_lbl 069 `"69"', add
label define jo04a_rent_lbl 070 `"70"', add
label define jo04a_rent_lbl 071 `"71"', add
label define jo04a_rent_lbl 072 `"72"', add
label define jo04a_rent_lbl 073 `"73"', add
label define jo04a_rent_lbl 074 `"74"', add
label define jo04a_rent_lbl 075 `"75"', add
label define jo04a_rent_lbl 076 `"76"', add
label define jo04a_rent_lbl 077 `"77"', add
label define jo04a_rent_lbl 078 `"78"', add
label define jo04a_rent_lbl 079 `"79"', add
label define jo04a_rent_lbl 080 `"80"', add
label define jo04a_rent_lbl 081 `"81"', add
label define jo04a_rent_lbl 082 `"82"', add
label define jo04a_rent_lbl 083 `"83"', add
label define jo04a_rent_lbl 084 `"84"', add
label define jo04a_rent_lbl 085 `"85"', add
label define jo04a_rent_lbl 086 `"86"', add
label define jo04a_rent_lbl 087 `"87"', add
label define jo04a_rent_lbl 088 `"88"', add
label define jo04a_rent_lbl 090 `"90"', add
label define jo04a_rent_lbl 091 `"91"', add
label define jo04a_rent_lbl 092 `"92"', add
label define jo04a_rent_lbl 093 `"93"', add
label define jo04a_rent_lbl 095 `"95"', add
label define jo04a_rent_lbl 097 `"97"', add
label define jo04a_rent_lbl 098 `"98"', add
label define jo04a_rent_lbl 099 `"99"', add
label define jo04a_rent_lbl 100 `"100"', add
label define jo04a_rent_lbl 102 `"102"', add
label define jo04a_rent_lbl 103 `"103"', add
label define jo04a_rent_lbl 104 `"104"', add
label define jo04a_rent_lbl 105 `"105"', add
label define jo04a_rent_lbl 108 `"108"', add
label define jo04a_rent_lbl 109 `"109"', add
label define jo04a_rent_lbl 110 `"110"', add
label define jo04a_rent_lbl 113 `"113"', add
label define jo04a_rent_lbl 114 `"114"', add
label define jo04a_rent_lbl 115 `"115"', add
label define jo04a_rent_lbl 116 `"116"', add
label define jo04a_rent_lbl 117 `"117"', add
label define jo04a_rent_lbl 120 `"120"', add
label define jo04a_rent_lbl 122 `"122"', add
label define jo04a_rent_lbl 125 `"125"', add
label define jo04a_rent_lbl 126 `"126"', add
label define jo04a_rent_lbl 130 `"130"', add
label define jo04a_rent_lbl 132 `"132"', add
label define jo04a_rent_lbl 133 `"133"', add
label define jo04a_rent_lbl 134 `"134"', add
label define jo04a_rent_lbl 135 `"135"', add
label define jo04a_rent_lbl 137 `"137"', add
label define jo04a_rent_lbl 140 `"140"', add
label define jo04a_rent_lbl 142 `"142"', add
label define jo04a_rent_lbl 143 `"143"', add
label define jo04a_rent_lbl 145 `"145"', add
label define jo04a_rent_lbl 150 `"150"', add
label define jo04a_rent_lbl 154 `"154"', add
label define jo04a_rent_lbl 155 `"155"', add
label define jo04a_rent_lbl 158 `"158"', add
label define jo04a_rent_lbl 160 `"160"', add
label define jo04a_rent_lbl 161 `"161"', add
label define jo04a_rent_lbl 165 `"165"', add
label define jo04a_rent_lbl 166 `"166"', add
label define jo04a_rent_lbl 167 `"167"', add
label define jo04a_rent_lbl 170 `"170"', add
label define jo04a_rent_lbl 171 `"171"', add
label define jo04a_rent_lbl 175 `"175"', add
label define jo04a_rent_lbl 180 `"180"', add
label define jo04a_rent_lbl 183 `"183"', add
label define jo04a_rent_lbl 185 `"185"', add
label define jo04a_rent_lbl 190 `"190"', add
label define jo04a_rent_lbl 191 `"191"', add
label define jo04a_rent_lbl 195 `"195"', add
label define jo04a_rent_lbl 196 `"196"', add
label define jo04a_rent_lbl 197 `"197"', add
label define jo04a_rent_lbl 198 `"198"', add
label define jo04a_rent_lbl 200 `"200"', add
label define jo04a_rent_lbl 205 `"205"', add
label define jo04a_rent_lbl 208 `"208"', add
label define jo04a_rent_lbl 210 `"210"', add
label define jo04a_rent_lbl 212 `"212"', add
label define jo04a_rent_lbl 215 `"215"', add
label define jo04a_rent_lbl 216 `"216"', add
label define jo04a_rent_lbl 217 `"217"', add
label define jo04a_rent_lbl 220 `"220"', add
label define jo04a_rent_lbl 222 `"222"', add
label define jo04a_rent_lbl 225 `"225"', add
label define jo04a_rent_lbl 230 `"230"', add
label define jo04a_rent_lbl 235 `"235"', add
label define jo04a_rent_lbl 240 `"240"', add
label define jo04a_rent_lbl 250 `"250"', add
label define jo04a_rent_lbl 260 `"260"', add
label define jo04a_rent_lbl 267 `"267"', add
label define jo04a_rent_lbl 270 `"270"', add
label define jo04a_rent_lbl 275 `"275"', add
label define jo04a_rent_lbl 280 `"280"', add
label define jo04a_rent_lbl 285 `"285"', add
label define jo04a_rent_lbl 290 `"290"', add
label define jo04a_rent_lbl 291 `"291"', add
label define jo04a_rent_lbl 292 `"292"', add
label define jo04a_rent_lbl 300 `"300"', add
label define jo04a_rent_lbl 315 `"315"', add
label define jo04a_rent_lbl 320 `"320"', add
label define jo04a_rent_lbl 330 `"330"', add
label define jo04a_rent_lbl 333 `"333"', add
label define jo04a_rent_lbl 335 `"335"', add
label define jo04a_rent_lbl 340 `"340"', add
label define jo04a_rent_lbl 350 `"350 or more"', add
label define jo04a_rent_lbl 999 `"Unknown"', add
label values jo04a_rent jo04a_rent_lbl

label define jo04a_occdur_lbl 00 `"0"'
label define jo04a_occdur_lbl 01 `"1"', add
label define jo04a_occdur_lbl 02 `"2"', add
label define jo04a_occdur_lbl 03 `"3"', add
label define jo04a_occdur_lbl 04 `"4"', add
label define jo04a_occdur_lbl 05 `"5"', add
label define jo04a_occdur_lbl 06 `"6"', add
label define jo04a_occdur_lbl 07 `"7"', add
label define jo04a_occdur_lbl 08 `"8"', add
label define jo04a_occdur_lbl 09 `"9"', add
label define jo04a_occdur_lbl 10 `"10"', add
label define jo04a_occdur_lbl 11 `"11"', add
label define jo04a_occdur_lbl 12 `"12"', add
label define jo04a_occdur_lbl 13 `"13"', add
label define jo04a_occdur_lbl 14 `"14"', add
label define jo04a_occdur_lbl 15 `"15"', add
label define jo04a_occdur_lbl 16 `"16"', add
label define jo04a_occdur_lbl 17 `"17"', add
label define jo04a_occdur_lbl 18 `"18"', add
label define jo04a_occdur_lbl 19 `"19"', add
label define jo04a_occdur_lbl 20 `"20"', add
label define jo04a_occdur_lbl 21 `"21"', add
label define jo04a_occdur_lbl 22 `"22"', add
label define jo04a_occdur_lbl 23 `"23"', add
label define jo04a_occdur_lbl 24 `"24"', add
label define jo04a_occdur_lbl 25 `"25"', add
label define jo04a_occdur_lbl 26 `"26"', add
label define jo04a_occdur_lbl 27 `"27"', add
label define jo04a_occdur_lbl 28 `"28"', add
label define jo04a_occdur_lbl 29 `"29"', add
label define jo04a_occdur_lbl 30 `"30"', add
label define jo04a_occdur_lbl 31 `"31"', add
label define jo04a_occdur_lbl 32 `"32"', add
label define jo04a_occdur_lbl 33 `"33"', add
label define jo04a_occdur_lbl 34 `"34"', add
label define jo04a_occdur_lbl 35 `"35"', add
label define jo04a_occdur_lbl 36 `"36"', add
label define jo04a_occdur_lbl 37 `"37"', add
label define jo04a_occdur_lbl 38 `"38"', add
label define jo04a_occdur_lbl 39 `"39"', add
label define jo04a_occdur_lbl 40 `"40"', add
label define jo04a_occdur_lbl 41 `"41"', add
label define jo04a_occdur_lbl 42 `"42"', add
label define jo04a_occdur_lbl 43 `"43"', add
label define jo04a_occdur_lbl 44 `"44"', add
label define jo04a_occdur_lbl 45 `"45"', add
label define jo04a_occdur_lbl 46 `"46"', add
label define jo04a_occdur_lbl 47 `"47"', add
label define jo04a_occdur_lbl 48 `"48"', add
label define jo04a_occdur_lbl 49 `"49"', add
label define jo04a_occdur_lbl 50 `"50"', add
label define jo04a_occdur_lbl 51 `"51"', add
label define jo04a_occdur_lbl 52 `"52"', add
label define jo04a_occdur_lbl 53 `"53"', add
label define jo04a_occdur_lbl 54 `"54"', add
label define jo04a_occdur_lbl 55 `"55"', add
label define jo04a_occdur_lbl 56 `"56"', add
label define jo04a_occdur_lbl 57 `"57"', add
label define jo04a_occdur_lbl 59 `"59"', add
label define jo04a_occdur_lbl 60 `"60+"', add
label define jo04a_occdur_lbl 98 `"Unknown"', add
label define jo04a_occdur_lbl 99 `"NIU (not in universe)"', add
label values jo04a_occdur jo04a_occdur_lbl

label define jo04a_heat_lbl 1 `"Central heating"'
label define jo04a_heat_lbl 2 `"Kerosene / diesel heater"', add
label define jo04a_heat_lbl 3 `"Electricity"', add
label define jo04a_heat_lbl 4 `"Gas Heater"', add
label define jo04a_heat_lbl 5 `"Coal / wood"', add
label define jo04a_heat_lbl 6 `"Other"', add
label define jo04a_heat_lbl 7 `"None"', add
label define jo04a_heat_lbl 9 `"NIU (not in universe)"', add
label values jo04a_heat jo04a_heat_lbl

label define jo04a_watsrc_lbl 1 `"Public network"'
label define jo04a_watsrc_lbl 2 `"Public tap"', add
label define jo04a_watsrc_lbl 3 `"Tanker"', add
label define jo04a_watsrc_lbl 4 `"Well/rain water"', add
label define jo04a_watsrc_lbl 5 `"Bottled water"', add
label define jo04a_watsrc_lbl 6 `"Artestian well"', add
label define jo04a_watsrc_lbl 7 `"Spring"', add
label define jo04a_watsrc_lbl 8 `"Other"', add
label define jo04a_watsrc_lbl 9 `"NIU (not in universe)"', add
label values jo04a_watsrc jo04a_watsrc_lbl

label define jo04a_litsrc_lbl 1 `"Public network"'
label define jo04a_litsrc_lbl 2 `"Private generator"', add
label define jo04a_litsrc_lbl 3 `"Gas"', add
label define jo04a_litsrc_lbl 4 `"Kerosene"', add
label define jo04a_litsrc_lbl 5 `"Other"', add
label define jo04a_litsrc_lbl 9 `"NIU (not in universe)"', add
label values jo04a_litsrc jo04a_litsrc_lbl

label define jo04a_hsgsize_lbl 998 `"Unknown"'
label define jo04a_hsgsize_lbl 999 `"NIU (not in universe)"', add
label values jo04a_hsgsize jo04a_hsgsize_lbl

label define jo04a_sewer_lbl 1 `"Public network"'
label define jo04a_sewer_lbl 2 `"Cess pool"', add
label define jo04a_sewer_lbl 3 `"Other"', add
label define jo04a_sewer_lbl 4 `"None"', add
label define jo04a_sewer_lbl 9 `"NIU (not in universe)"', add
label values jo04a_sewer jo04a_sewer_lbl

label define jo04a_toilet_lbl 1 `"Yes"'
label define jo04a_toilet_lbl 2 `"No"', add
label define jo04a_toilet_lbl 9 `"NIU (not in universe)"', add
label values jo04a_toilet jo04a_toilet_lbl

label define jo04a_kitchen_lbl 1 `"Yes"'
label define jo04a_kitchen_lbl 2 `"No"', add
label define jo04a_kitchen_lbl 9 `"NIU (not in universe)"', add
label values jo04a_kitchen jo04a_kitchen_lbl

label define jo04a_room_lbl 01 `"1"'
label define jo04a_room_lbl 02 `"2"', add
label define jo04a_room_lbl 03 `"3"', add
label define jo04a_room_lbl 04 `"4"', add
label define jo04a_room_lbl 05 `"5"', add
label define jo04a_room_lbl 06 `"6"', add
label define jo04a_room_lbl 07 `"7"', add
label define jo04a_room_lbl 08 `"8"', add
label define jo04a_room_lbl 09 `"9"', add
label define jo04a_room_lbl 10 `"10+"', add
label define jo04a_room_lbl 98 `"Unknown"', add
label define jo04a_room_lbl 99 `"NIU (not in universe)"', add
label values jo04a_room jo04a_room_lbl

label define jo04a_roombd_lbl 0 `"NIU (not in universe)"'
label define jo04a_roombd_lbl 1 `"1"', add
label define jo04a_roombd_lbl 2 `"2"', add
label define jo04a_roombd_lbl 3 `"3"', add
label define jo04a_roombd_lbl 4 `"4"', add
label define jo04a_roombd_lbl 5 `"5"', add
label define jo04a_roombd_lbl 6 `"6+"', add
label define jo04a_roombd_lbl 9 `"9"', add
label values jo04a_roombd jo04a_roombd_lbl

label define jo04a_hhno_lbl 1 `"1"'
label define jo04a_hhno_lbl 2 `"2"', add
label define jo04a_hhno_lbl 3 `"3"', add
label define jo04a_hhno_lbl 4 `"4+"', add
label define jo04a_hhno_lbl 9 `"Unknown"', add
label values jo04a_hhno jo04a_hhno_lbl

label define jo04a_perhu_lbl 01 `"1"'
label define jo04a_perhu_lbl 02 `"2"', add
label define jo04a_perhu_lbl 03 `"3"', add
label define jo04a_perhu_lbl 04 `"4"', add
label define jo04a_perhu_lbl 05 `"5"', add
label define jo04a_perhu_lbl 06 `"6"', add
label define jo04a_perhu_lbl 07 `"7"', add
label define jo04a_perhu_lbl 08 `"8"', add
label define jo04a_perhu_lbl 09 `"9"', add
label define jo04a_perhu_lbl 10 `"10"', add
label define jo04a_perhu_lbl 11 `"11"', add
label define jo04a_perhu_lbl 12 `"12"', add
label define jo04a_perhu_lbl 13 `"13"', add
label define jo04a_perhu_lbl 14 `"14"', add
label define jo04a_perhu_lbl 15 `"15"', add
label define jo04a_perhu_lbl 16 `"16"', add
label define jo04a_perhu_lbl 17 `"17"', add
label define jo04a_perhu_lbl 18 `"18"', add
label define jo04a_perhu_lbl 19 `"19"', add
label define jo04a_perhu_lbl 20 `"20+"', add
label define jo04a_perhu_lbl 99 `"Unknown"', add
label values jo04a_perhu jo04a_perhu_lbl

label define jo04a_firsthh_lbl 1 `"Yes"'
label define jo04a_firsthh_lbl 2 `"No"', add
label define jo04a_firsthh_lbl 9 `"Unknown"', add
label values jo04a_firsthh jo04a_firsthh_lbl

label define jo04a_bldty1_lbl 1 `"Amarah"'
label define jo04a_bldty1_lbl 2 `"Dar"', add
label define jo04a_bldty1_lbl 3 `"Villa"', add
label define jo04a_bldty1_lbl 4 `"Barracks"', add
label define jo04a_bldty1_lbl 5 `"Tent / hair tent"', add
label define jo04a_bldty1_lbl 6 `"Establishment"', add
label define jo04a_bldty1_lbl 8 `"Other"', add
label define jo04a_bldty1_lbl 9 `"Unknown"', add
label values jo04a_bldty1 jo04a_bldty1_lbl

label define jo04a_conyr_lbl 1920 `"1920 or earlier"'
label define jo04a_conyr_lbl 1921 `"1921"', add
label define jo04a_conyr_lbl 1922 `"1922"', add
label define jo04a_conyr_lbl 1923 `"1923"', add
label define jo04a_conyr_lbl 1924 `"1924"', add
label define jo04a_conyr_lbl 1925 `"1925"', add
label define jo04a_conyr_lbl 1926 `"1926"', add
label define jo04a_conyr_lbl 1927 `"1927"', add
label define jo04a_conyr_lbl 1928 `"1928"', add
label define jo04a_conyr_lbl 1929 `"1929"', add
label define jo04a_conyr_lbl 1930 `"1930"', add
label define jo04a_conyr_lbl 1931 `"1931"', add
label define jo04a_conyr_lbl 1932 `"1932"', add
label define jo04a_conyr_lbl 1933 `"1933"', add
label define jo04a_conyr_lbl 1934 `"1934"', add
label define jo04a_conyr_lbl 1935 `"1935"', add
label define jo04a_conyr_lbl 1936 `"1936"', add
label define jo04a_conyr_lbl 1937 `"1937"', add
label define jo04a_conyr_lbl 1938 `"1938"', add
label define jo04a_conyr_lbl 1939 `"1939"', add
label define jo04a_conyr_lbl 1940 `"1940"', add
label define jo04a_conyr_lbl 1941 `"1941"', add
label define jo04a_conyr_lbl 1942 `"1942"', add
label define jo04a_conyr_lbl 1943 `"1943"', add
label define jo04a_conyr_lbl 1944 `"1944"', add
label define jo04a_conyr_lbl 1945 `"1945"', add
label define jo04a_conyr_lbl 1946 `"1946"', add
label define jo04a_conyr_lbl 1947 `"1947"', add
label define jo04a_conyr_lbl 1948 `"1948"', add
label define jo04a_conyr_lbl 1949 `"1949"', add
label define jo04a_conyr_lbl 1950 `"1950"', add
label define jo04a_conyr_lbl 1951 `"1951"', add
label define jo04a_conyr_lbl 1952 `"1952"', add
label define jo04a_conyr_lbl 1953 `"1953"', add
label define jo04a_conyr_lbl 1954 `"1954"', add
label define jo04a_conyr_lbl 1955 `"1955"', add
label define jo04a_conyr_lbl 1956 `"1956"', add
label define jo04a_conyr_lbl 1957 `"1957"', add
label define jo04a_conyr_lbl 1958 `"1958"', add
label define jo04a_conyr_lbl 1959 `"1959"', add
label define jo04a_conyr_lbl 1960 `"1960"', add
label define jo04a_conyr_lbl 1961 `"1961"', add
label define jo04a_conyr_lbl 1962 `"1962"', add
label define jo04a_conyr_lbl 1963 `"1963"', add
label define jo04a_conyr_lbl 1964 `"1964"', add
label define jo04a_conyr_lbl 1965 `"1965"', add
label define jo04a_conyr_lbl 1966 `"1966"', add
label define jo04a_conyr_lbl 1967 `"1967"', add
label define jo04a_conyr_lbl 1968 `"1968"', add
label define jo04a_conyr_lbl 1969 `"1969"', add
label define jo04a_conyr_lbl 1970 `"1970"', add
label define jo04a_conyr_lbl 1971 `"1971"', add
label define jo04a_conyr_lbl 1972 `"1972"', add
label define jo04a_conyr_lbl 1973 `"1973"', add
label define jo04a_conyr_lbl 1974 `"1974"', add
label define jo04a_conyr_lbl 1975 `"1975"', add
label define jo04a_conyr_lbl 1976 `"1976"', add
label define jo04a_conyr_lbl 1977 `"1977"', add
label define jo04a_conyr_lbl 1978 `"1978"', add
label define jo04a_conyr_lbl 1979 `"1979"', add
label define jo04a_conyr_lbl 1980 `"1980"', add
label define jo04a_conyr_lbl 1981 `"1981"', add
label define jo04a_conyr_lbl 1982 `"1982"', add
label define jo04a_conyr_lbl 1983 `"1983"', add
label define jo04a_conyr_lbl 1984 `"1984"', add
label define jo04a_conyr_lbl 1985 `"1985"', add
label define jo04a_conyr_lbl 1986 `"1986"', add
label define jo04a_conyr_lbl 1987 `"1987"', add
label define jo04a_conyr_lbl 1988 `"1988"', add
label define jo04a_conyr_lbl 1989 `"1989"', add
label define jo04a_conyr_lbl 1990 `"1990"', add
label define jo04a_conyr_lbl 1991 `"1991"', add
label define jo04a_conyr_lbl 1992 `"1992"', add
label define jo04a_conyr_lbl 1993 `"1993"', add
label define jo04a_conyr_lbl 1994 `"1994"', add
label define jo04a_conyr_lbl 1995 `"1995"', add
label define jo04a_conyr_lbl 1996 `"1996"', add
label define jo04a_conyr_lbl 1997 `"1997"', add
label define jo04a_conyr_lbl 1998 `"1998"', add
label define jo04a_conyr_lbl 1999 `"1999"', add
label define jo04a_conyr_lbl 2000 `"2000"', add
label define jo04a_conyr_lbl 2001 `"2001"', add
label define jo04a_conyr_lbl 2002 `"2002"', add
label define jo04a_conyr_lbl 2003 `"2003"', add
label define jo04a_conyr_lbl 2004 `"2004"', add
label define jo04a_conyr_lbl 9999 `"Unknown"', add
label values jo04a_conyr jo04a_conyr_lbl

label define jo04a_bldty2_lbl 1 `"Residential only"'
label define jo04a_bldty2_lbl 2 `"Business only"', add
label define jo04a_bldty2_lbl 5 `"Multipurpose"', add
label define jo04a_bldty2_lbl 9 `"Unknown"', add
label values jo04a_bldty2 jo04a_bldty2_lbl

label define jo04a_wall_lbl 1 `"Cut stone"'
label define jo04a_wall_lbl 2 `"Cut stone and concrete"', add
label define jo04a_wall_lbl 3 `"Concrete"', add
label define jo04a_wall_lbl 4 `"Cement bricks"', add
label define jo04a_wall_lbl 5 `"Mud bricks and rubble"', add
label define jo04a_wall_lbl 6 `"Asbestos, zink, wood"', add
label define jo04a_wall_lbl 7 `"Hair, wool, cloth"', add
label define jo04a_wall_lbl 8 `"Other"', add
label define jo04a_wall_lbl 9 `"Unknown"', add
label values jo04a_wall jo04a_wall_lbl

label define jo04a_stories_lbl 01 `"1"'
label define jo04a_stories_lbl 02 `"2"', add
label define jo04a_stories_lbl 03 `"3"', add
label define jo04a_stories_lbl 04 `"4"', add
label define jo04a_stories_lbl 05 `"5"', add
label define jo04a_stories_lbl 06 `"6"', add
label define jo04a_stories_lbl 07 `"7"', add
label define jo04a_stories_lbl 08 `"8"', add
label define jo04a_stories_lbl 09 `"9+"', add
label define jo04a_stories_lbl 99 `"Unknown"', add
label values jo04a_stories jo04a_stories_lbl

label define jo04a_elevat_lbl 1 `"With elevator"'
label define jo04a_elevat_lbl 2 `"Without elevator"', add
label define jo04a_elevat_lbl 9 `"Unknown"', add
label values jo04a_elevat jo04a_elevat_lbl

label define jo04a_hhunb_lbl 01 `"1"'
label define jo04a_hhunb_lbl 02 `"2"', add
label define jo04a_hhunb_lbl 03 `"3"', add
label define jo04a_hhunb_lbl 04 `"4"', add
label define jo04a_hhunb_lbl 05 `"5"', add
label define jo04a_hhunb_lbl 06 `"6"', add
label define jo04a_hhunb_lbl 07 `"7"', add
label define jo04a_hhunb_lbl 08 `"8"', add
label define jo04a_hhunb_lbl 09 `"9"', add
label define jo04a_hhunb_lbl 10 `"10"', add
label define jo04a_hhunb_lbl 11 `"11"', add
label define jo04a_hhunb_lbl 12 `"12"', add
label define jo04a_hhunb_lbl 13 `"13"', add
label define jo04a_hhunb_lbl 14 `"14"', add
label define jo04a_hhunb_lbl 15 `"15"', add
label define jo04a_hhunb_lbl 16 `"16"', add
label define jo04a_hhunb_lbl 17 `"17"', add
label define jo04a_hhunb_lbl 18 `"18"', add
label define jo04a_hhunb_lbl 19 `"19"', add
label define jo04a_hhunb_lbl 20 `"20+"', add
label define jo04a_hhunb_lbl 99 `"Unknown"', add
label values jo04a_hhunb jo04a_hhunb_lbl

label define jo04a_hhnb_lbl 01 `"1"'
label define jo04a_hhnb_lbl 02 `"2"', add
label define jo04a_hhnb_lbl 03 `"3"', add
label define jo04a_hhnb_lbl 04 `"4"', add
label define jo04a_hhnb_lbl 05 `"5"', add
label define jo04a_hhnb_lbl 06 `"6"', add
label define jo04a_hhnb_lbl 07 `"7"', add
label define jo04a_hhnb_lbl 08 `"8"', add
label define jo04a_hhnb_lbl 09 `"9"', add
label define jo04a_hhnb_lbl 10 `"10"', add
label define jo04a_hhnb_lbl 11 `"11"', add
label define jo04a_hhnb_lbl 12 `"12"', add
label define jo04a_hhnb_lbl 13 `"13"', add
label define jo04a_hhnb_lbl 14 `"14"', add
label define jo04a_hhnb_lbl 15 `"15"', add
label define jo04a_hhnb_lbl 16 `"16"', add
label define jo04a_hhnb_lbl 17 `"17"', add
label define jo04a_hhnb_lbl 18 `"18"', add
label define jo04a_hhnb_lbl 19 `"19"', add
label define jo04a_hhnb_lbl 20 `"20+"', add
label define jo04a_hhnb_lbl 99 `"Unknown"', add
label values jo04a_hhnb jo04a_hhnb_lbl

label define jo04a_pernb_lbl 001 `"1"'
label define jo04a_pernb_lbl 002 `"2"', add
label define jo04a_pernb_lbl 003 `"3"', add
label define jo04a_pernb_lbl 004 `"4"', add
label define jo04a_pernb_lbl 005 `"5"', add
label define jo04a_pernb_lbl 006 `"6"', add
label define jo04a_pernb_lbl 007 `"7"', add
label define jo04a_pernb_lbl 008 `"8"', add
label define jo04a_pernb_lbl 009 `"9"', add
label define jo04a_pernb_lbl 010 `"10"', add
label define jo04a_pernb_lbl 011 `"11"', add
label define jo04a_pernb_lbl 012 `"12"', add
label define jo04a_pernb_lbl 013 `"13"', add
label define jo04a_pernb_lbl 014 `"14"', add
label define jo04a_pernb_lbl 015 `"15"', add
label define jo04a_pernb_lbl 016 `"16"', add
label define jo04a_pernb_lbl 017 `"17"', add
label define jo04a_pernb_lbl 018 `"18"', add
label define jo04a_pernb_lbl 019 `"19"', add
label define jo04a_pernb_lbl 020 `"20"', add
label define jo04a_pernb_lbl 021 `"21"', add
label define jo04a_pernb_lbl 022 `"22"', add
label define jo04a_pernb_lbl 023 `"23"', add
label define jo04a_pernb_lbl 024 `"24"', add
label define jo04a_pernb_lbl 025 `"25"', add
label define jo04a_pernb_lbl 026 `"26"', add
label define jo04a_pernb_lbl 027 `"27"', add
label define jo04a_pernb_lbl 028 `"28"', add
label define jo04a_pernb_lbl 029 `"29"', add
label define jo04a_pernb_lbl 030 `"30"', add
label define jo04a_pernb_lbl 031 `"31"', add
label define jo04a_pernb_lbl 032 `"32"', add
label define jo04a_pernb_lbl 033 `"33"', add
label define jo04a_pernb_lbl 034 `"34"', add
label define jo04a_pernb_lbl 035 `"35"', add
label define jo04a_pernb_lbl 036 `"36"', add
label define jo04a_pernb_lbl 037 `"37"', add
label define jo04a_pernb_lbl 038 `"38"', add
label define jo04a_pernb_lbl 039 `"39"', add
label define jo04a_pernb_lbl 040 `"40"', add
label define jo04a_pernb_lbl 041 `"41"', add
label define jo04a_pernb_lbl 042 `"42"', add
label define jo04a_pernb_lbl 043 `"43"', add
label define jo04a_pernb_lbl 044 `"44"', add
label define jo04a_pernb_lbl 045 `"45"', add
label define jo04a_pernb_lbl 046 `"46"', add
label define jo04a_pernb_lbl 047 `"47"', add
label define jo04a_pernb_lbl 048 `"48"', add
label define jo04a_pernb_lbl 049 `"49"', add
label define jo04a_pernb_lbl 050 `"50"', add
label define jo04a_pernb_lbl 051 `"51"', add
label define jo04a_pernb_lbl 052 `"52"', add
label define jo04a_pernb_lbl 053 `"53"', add
label define jo04a_pernb_lbl 054 `"54"', add
label define jo04a_pernb_lbl 055 `"55"', add
label define jo04a_pernb_lbl 056 `"56"', add
label define jo04a_pernb_lbl 057 `"57"', add
label define jo04a_pernb_lbl 058 `"58"', add
label define jo04a_pernb_lbl 059 `"59"', add
label define jo04a_pernb_lbl 060 `"60"', add
label define jo04a_pernb_lbl 061 `"61"', add
label define jo04a_pernb_lbl 062 `"62"', add
label define jo04a_pernb_lbl 063 `"63"', add
label define jo04a_pernb_lbl 064 `"64"', add
label define jo04a_pernb_lbl 065 `"65"', add
label define jo04a_pernb_lbl 066 `"66"', add
label define jo04a_pernb_lbl 067 `"67"', add
label define jo04a_pernb_lbl 068 `"68"', add
label define jo04a_pernb_lbl 069 `"69"', add
label define jo04a_pernb_lbl 070 `"70+"', add
label define jo04a_pernb_lbl 999 `"Unknown"', add
label values jo04a_pernb jo04a_pernb_lbl

label define jo04a_pernum_lbl 00 `"Household record"'
label define jo04a_pernum_lbl 01 `"1"', add
label define jo04a_pernum_lbl 02 `"2"', add
label define jo04a_pernum_lbl 03 `"3"', add
label define jo04a_pernum_lbl 04 `"4"', add
label define jo04a_pernum_lbl 05 `"5"', add
label define jo04a_pernum_lbl 06 `"6"', add
label define jo04a_pernum_lbl 07 `"7"', add
label define jo04a_pernum_lbl 08 `"8"', add
label define jo04a_pernum_lbl 09 `"9"', add
label define jo04a_pernum_lbl 10 `"10"', add
label define jo04a_pernum_lbl 11 `"11"', add
label define jo04a_pernum_lbl 12 `"12"', add
label define jo04a_pernum_lbl 13 `"13"', add
label define jo04a_pernum_lbl 14 `"14"', add
label define jo04a_pernum_lbl 15 `"15"', add
label define jo04a_pernum_lbl 16 `"16"', add
label define jo04a_pernum_lbl 17 `"17"', add
label define jo04a_pernum_lbl 18 `"18"', add
label define jo04a_pernum_lbl 19 `"19"', add
label define jo04a_pernum_lbl 20 `"20"', add
label define jo04a_pernum_lbl 21 `"21"', add
label define jo04a_pernum_lbl 22 `"22"', add
label define jo04a_pernum_lbl 23 `"23"', add
label define jo04a_pernum_lbl 24 `"24"', add
label define jo04a_pernum_lbl 25 `"25"', add
label define jo04a_pernum_lbl 26 `"26"', add
label define jo04a_pernum_lbl 27 `"27"', add
label define jo04a_pernum_lbl 28 `"28"', add
label values jo04a_pernum jo04a_pernum_lbl

label define jo04a_pernumo_lbl 01 `"1"'
label define jo04a_pernumo_lbl 02 `"2"', add
label define jo04a_pernumo_lbl 03 `"3"', add
label define jo04a_pernumo_lbl 04 `"4"', add
label define jo04a_pernumo_lbl 05 `"5"', add
label define jo04a_pernumo_lbl 06 `"6"', add
label define jo04a_pernumo_lbl 07 `"7"', add
label define jo04a_pernumo_lbl 08 `"8"', add
label define jo04a_pernumo_lbl 09 `"9"', add
label define jo04a_pernumo_lbl 10 `"10"', add
label define jo04a_pernumo_lbl 11 `"11"', add
label define jo04a_pernumo_lbl 12 `"12"', add
label define jo04a_pernumo_lbl 13 `"13"', add
label define jo04a_pernumo_lbl 14 `"14"', add
label define jo04a_pernumo_lbl 15 `"15"', add
label define jo04a_pernumo_lbl 16 `"16"', add
label define jo04a_pernumo_lbl 17 `"17"', add
label define jo04a_pernumo_lbl 18 `"18"', add
label define jo04a_pernumo_lbl 19 `"19"', add
label define jo04a_pernumo_lbl 20 `"20"', add
label define jo04a_pernumo_lbl 21 `"21"', add
label define jo04a_pernumo_lbl 22 `"22"', add
label define jo04a_pernumo_lbl 23 `"23"', add
label define jo04a_pernumo_lbl 24 `"24"', add
label define jo04a_pernumo_lbl 25 `"25"', add
label define jo04a_pernumo_lbl 26 `"26"', add
label define jo04a_pernumo_lbl 27 `"27"', add
label define jo04a_pernumo_lbl 28 `"28"', add
label values jo04a_pernumo jo04a_pernumo_lbl

label define jo04a_relate_lbl 0 `"Head"'
label define jo04a_relate_lbl 1 `"Husband/wife"', add
label define jo04a_relate_lbl 2 `"Son/daughter"', add
label define jo04a_relate_lbl 3 `"Father/mother"', add
label define jo04a_relate_lbl 4 `"Grandson/granddaughter"', add
label define jo04a_relate_lbl 5 `"Brother/sistrer"', add
label define jo04a_relate_lbl 6 `"Other relatives"', add
label define jo04a_relate_lbl 7 `"Maid"', add
label define jo04a_relate_lbl 8 `"Others"', add
label values jo04a_relate jo04a_relate_lbl

label define jo04a_sex_lbl 1 `"Male"'
label define jo04a_sex_lbl 2 `"Female"', add
label values jo04a_sex jo04a_sex_lbl

label define jo04a_birmon_lbl 01 `"January"'
label define jo04a_birmon_lbl 02 `"February"', add
label define jo04a_birmon_lbl 03 `"March"', add
label define jo04a_birmon_lbl 04 `"April"', add
label define jo04a_birmon_lbl 05 `"May"', add
label define jo04a_birmon_lbl 06 `"June"', add
label define jo04a_birmon_lbl 07 `"July"', add
label define jo04a_birmon_lbl 08 `"August"', add
label define jo04a_birmon_lbl 09 `"September"', add
label define jo04a_birmon_lbl 10 `"October"', add
label define jo04a_birmon_lbl 11 `"November"', add
label define jo04a_birmon_lbl 12 `"December"', add
label define jo04a_birmon_lbl 99 `"Unknown"', add
label values jo04a_birmon jo04a_birmon_lbl

label define jo04a_biryr_lbl 1910 `"1910 or earlier"'
label define jo04a_biryr_lbl 1911 `"1911"', add
label define jo04a_biryr_lbl 1912 `"1912"', add
label define jo04a_biryr_lbl 1913 `"1913"', add
label define jo04a_biryr_lbl 1914 `"1914"', add
label define jo04a_biryr_lbl 1915 `"1915"', add
label define jo04a_biryr_lbl 1916 `"1916"', add
label define jo04a_biryr_lbl 1917 `"1917"', add
label define jo04a_biryr_lbl 1918 `"1918"', add
label define jo04a_biryr_lbl 1919 `"1919"', add
label define jo04a_biryr_lbl 1920 `"1920"', add
label define jo04a_biryr_lbl 1921 `"1921"', add
label define jo04a_biryr_lbl 1922 `"1922"', add
label define jo04a_biryr_lbl 1923 `"1923"', add
label define jo04a_biryr_lbl 1924 `"1924"', add
label define jo04a_biryr_lbl 1925 `"1925"', add
label define jo04a_biryr_lbl 1926 `"1926"', add
label define jo04a_biryr_lbl 1927 `"1927"', add
label define jo04a_biryr_lbl 1928 `"1928"', add
label define jo04a_biryr_lbl 1929 `"1929"', add
label define jo04a_biryr_lbl 1930 `"1930"', add
label define jo04a_biryr_lbl 1931 `"1931"', add
label define jo04a_biryr_lbl 1932 `"1932"', add
label define jo04a_biryr_lbl 1933 `"1933"', add
label define jo04a_biryr_lbl 1934 `"1934"', add
label define jo04a_biryr_lbl 1935 `"1935"', add
label define jo04a_biryr_lbl 1936 `"1936"', add
label define jo04a_biryr_lbl 1937 `"1937"', add
label define jo04a_biryr_lbl 1938 `"1938"', add
label define jo04a_biryr_lbl 1939 `"1939"', add
label define jo04a_biryr_lbl 1940 `"1940"', add
label define jo04a_biryr_lbl 1941 `"1941"', add
label define jo04a_biryr_lbl 1942 `"1942"', add
label define jo04a_biryr_lbl 1943 `"1943"', add
label define jo04a_biryr_lbl 1944 `"1944"', add
label define jo04a_biryr_lbl 1945 `"1945"', add
label define jo04a_biryr_lbl 1946 `"1946"', add
label define jo04a_biryr_lbl 1947 `"1947"', add
label define jo04a_biryr_lbl 1948 `"1948"', add
label define jo04a_biryr_lbl 1949 `"1949"', add
label define jo04a_biryr_lbl 1950 `"1950"', add
label define jo04a_biryr_lbl 1951 `"1951"', add
label define jo04a_biryr_lbl 1952 `"1952"', add
label define jo04a_biryr_lbl 1953 `"1953"', add
label define jo04a_biryr_lbl 1954 `"1954"', add
label define jo04a_biryr_lbl 1955 `"1955"', add
label define jo04a_biryr_lbl 1956 `"1956"', add
label define jo04a_biryr_lbl 1957 `"1957"', add
label define jo04a_biryr_lbl 1958 `"1958"', add
label define jo04a_biryr_lbl 1959 `"1959"', add
label define jo04a_biryr_lbl 1960 `"1960"', add
label define jo04a_biryr_lbl 1961 `"1961"', add
label define jo04a_biryr_lbl 1962 `"1962"', add
label define jo04a_biryr_lbl 1963 `"1963"', add
label define jo04a_biryr_lbl 1964 `"1964"', add
label define jo04a_biryr_lbl 1965 `"1965"', add
label define jo04a_biryr_lbl 1966 `"1966"', add
label define jo04a_biryr_lbl 1967 `"1967"', add
label define jo04a_biryr_lbl 1968 `"1968"', add
label define jo04a_biryr_lbl 1969 `"1969"', add
label define jo04a_biryr_lbl 1970 `"1970"', add
label define jo04a_biryr_lbl 1971 `"1971"', add
label define jo04a_biryr_lbl 1972 `"1972"', add
label define jo04a_biryr_lbl 1973 `"1973"', add
label define jo04a_biryr_lbl 1974 `"1974"', add
label define jo04a_biryr_lbl 1975 `"1975"', add
label define jo04a_biryr_lbl 1976 `"1976"', add
label define jo04a_biryr_lbl 1977 `"1977"', add
label define jo04a_biryr_lbl 1978 `"1978"', add
label define jo04a_biryr_lbl 1979 `"1979"', add
label define jo04a_biryr_lbl 1980 `"1980"', add
label define jo04a_biryr_lbl 1981 `"1981"', add
label define jo04a_biryr_lbl 1982 `"1982"', add
label define jo04a_biryr_lbl 1983 `"1983"', add
label define jo04a_biryr_lbl 1984 `"1984"', add
label define jo04a_biryr_lbl 1985 `"1985"', add
label define jo04a_biryr_lbl 1986 `"1986"', add
label define jo04a_biryr_lbl 1987 `"1987"', add
label define jo04a_biryr_lbl 1988 `"1988"', add
label define jo04a_biryr_lbl 1989 `"1989"', add
label define jo04a_biryr_lbl 1990 `"1990"', add
label define jo04a_biryr_lbl 1991 `"1991"', add
label define jo04a_biryr_lbl 1992 `"1992"', add
label define jo04a_biryr_lbl 1993 `"1993"', add
label define jo04a_biryr_lbl 1994 `"1994"', add
label define jo04a_biryr_lbl 1995 `"1995"', add
label define jo04a_biryr_lbl 1996 `"1996"', add
label define jo04a_biryr_lbl 1997 `"1997"', add
label define jo04a_biryr_lbl 1998 `"1998"', add
label define jo04a_biryr_lbl 1999 `"1999"', add
label define jo04a_biryr_lbl 2000 `"2000"', add
label define jo04a_biryr_lbl 2001 `"2001"', add
label define jo04a_biryr_lbl 2002 `"2002"', add
label define jo04a_biryr_lbl 2003 `"2003"', add
label define jo04a_biryr_lbl 2004 `"2004"', add
label define jo04a_biryr_lbl 9999 `"Unknown"', add
label values jo04a_biryr jo04a_biryr_lbl

label define jo04a_age_lbl 00 `"Less than 1 year"'
label define jo04a_age_lbl 01 `"1"', add
label define jo04a_age_lbl 02 `"2"', add
label define jo04a_age_lbl 03 `"3"', add
label define jo04a_age_lbl 04 `"4"', add
label define jo04a_age_lbl 05 `"5"', add
label define jo04a_age_lbl 06 `"6"', add
label define jo04a_age_lbl 07 `"7"', add
label define jo04a_age_lbl 08 `"8"', add
label define jo04a_age_lbl 09 `"9"', add
label define jo04a_age_lbl 10 `"10"', add
label define jo04a_age_lbl 11 `"11"', add
label define jo04a_age_lbl 12 `"12"', add
label define jo04a_age_lbl 13 `"13"', add
label define jo04a_age_lbl 14 `"14"', add
label define jo04a_age_lbl 15 `"15"', add
label define jo04a_age_lbl 16 `"16"', add
label define jo04a_age_lbl 17 `"17"', add
label define jo04a_age_lbl 18 `"18"', add
label define jo04a_age_lbl 19 `"19"', add
label define jo04a_age_lbl 20 `"20"', add
label define jo04a_age_lbl 21 `"21"', add
label define jo04a_age_lbl 22 `"22"', add
label define jo04a_age_lbl 23 `"23"', add
label define jo04a_age_lbl 24 `"24"', add
label define jo04a_age_lbl 25 `"25"', add
label define jo04a_age_lbl 26 `"26"', add
label define jo04a_age_lbl 27 `"27"', add
label define jo04a_age_lbl 28 `"28"', add
label define jo04a_age_lbl 29 `"29"', add
label define jo04a_age_lbl 30 `"30"', add
label define jo04a_age_lbl 31 `"31"', add
label define jo04a_age_lbl 32 `"32"', add
label define jo04a_age_lbl 33 `"33"', add
label define jo04a_age_lbl 34 `"34"', add
label define jo04a_age_lbl 35 `"35"', add
label define jo04a_age_lbl 36 `"36"', add
label define jo04a_age_lbl 37 `"37"', add
label define jo04a_age_lbl 38 `"38"', add
label define jo04a_age_lbl 39 `"39"', add
label define jo04a_age_lbl 40 `"40"', add
label define jo04a_age_lbl 41 `"41"', add
label define jo04a_age_lbl 42 `"42"', add
label define jo04a_age_lbl 43 `"43"', add
label define jo04a_age_lbl 44 `"44"', add
label define jo04a_age_lbl 45 `"45"', add
label define jo04a_age_lbl 46 `"46"', add
label define jo04a_age_lbl 47 `"47"', add
label define jo04a_age_lbl 48 `"48"', add
label define jo04a_age_lbl 49 `"49"', add
label define jo04a_age_lbl 50 `"50"', add
label define jo04a_age_lbl 51 `"51"', add
label define jo04a_age_lbl 52 `"52"', add
label define jo04a_age_lbl 53 `"53"', add
label define jo04a_age_lbl 54 `"54"', add
label define jo04a_age_lbl 55 `"55"', add
label define jo04a_age_lbl 56 `"56"', add
label define jo04a_age_lbl 57 `"57"', add
label define jo04a_age_lbl 58 `"58"', add
label define jo04a_age_lbl 59 `"59"', add
label define jo04a_age_lbl 60 `"60"', add
label define jo04a_age_lbl 61 `"61"', add
label define jo04a_age_lbl 62 `"62"', add
label define jo04a_age_lbl 63 `"63"', add
label define jo04a_age_lbl 64 `"64"', add
label define jo04a_age_lbl 65 `"65"', add
label define jo04a_age_lbl 66 `"66"', add
label define jo04a_age_lbl 67 `"67"', add
label define jo04a_age_lbl 68 `"68"', add
label define jo04a_age_lbl 69 `"69"', add
label define jo04a_age_lbl 70 `"70"', add
label define jo04a_age_lbl 71 `"71"', add
label define jo04a_age_lbl 72 `"72"', add
label define jo04a_age_lbl 73 `"73"', add
label define jo04a_age_lbl 74 `"74"', add
label define jo04a_age_lbl 75 `"75"', add
label define jo04a_age_lbl 76 `"76"', add
label define jo04a_age_lbl 77 `"77"', add
label define jo04a_age_lbl 78 `"78"', add
label define jo04a_age_lbl 79 `"79"', add
label define jo04a_age_lbl 80 `"80"', add
label define jo04a_age_lbl 81 `"81"', add
label define jo04a_age_lbl 82 `"82"', add
label define jo04a_age_lbl 83 `"83"', add
label define jo04a_age_lbl 84 `"84"', add
label define jo04a_age_lbl 85 `"85"', add
label define jo04a_age_lbl 86 `"86"', add
label define jo04a_age_lbl 87 `"87"', add
label define jo04a_age_lbl 88 `"88"', add
label define jo04a_age_lbl 89 `"89"', add
label define jo04a_age_lbl 90 `"90"', add
label define jo04a_age_lbl 91 `"91"', add
label define jo04a_age_lbl 92 `"92"', add
label define jo04a_age_lbl 93 `"93"', add
label define jo04a_age_lbl 94 `"94"', add
label define jo04a_age_lbl 95 `"95"', add
label define jo04a_age_lbl 96 `"96"', add
label define jo04a_age_lbl 97 `"97+"', add
label define jo04a_age_lbl 99 `"Unknown"', add
label values jo04a_age jo04a_age_lbl

label define jo04a_medins_lbl 1 `"Yes"'
label define jo04a_medins_lbl 2 `"No"', add
label define jo04a_medins_lbl 3 `"Respondent did not know"', add
label define jo04a_medins_lbl 9 `"Unknown"', add
label values jo04a_medins jo04a_medins_lbl

label define jo04a_insciv_lbl 1 `"Yes"'
label define jo04a_insciv_lbl 2 `"No"', add
label define jo04a_insciv_lbl 9 `"NIU (not in universe)"', add
label values jo04a_insciv jo04a_insciv_lbl

label define jo04a_insmil_lbl 1 `"Yes"'
label define jo04a_insmil_lbl 2 `"No"', add
label define jo04a_insmil_lbl 9 `"NIU (not in universe)"', add
label values jo04a_insmil jo04a_insmil_lbl

label define jo04a_insuniv_lbl 1 `"Yes"'
label define jo04a_insuniv_lbl 2 `"No"', add
label define jo04a_insuniv_lbl 9 `"NIU (not in universe)"', add
label values jo04a_insuniv jo04a_insuniv_lbl

label define jo04a_inspriv_lbl 1 `"Yes"'
label define jo04a_inspriv_lbl 2 `"No"', add
label define jo04a_inspriv_lbl 9 `"NIU (not in universe)"', add
label values jo04a_inspriv jo04a_inspriv_lbl

label define jo04a_instot_lbl 01 `"Civilian"'
label define jo04a_instot_lbl 02 `"Military"', add
label define jo04a_instot_lbl 03 `"Civilian and military"', add
label define jo04a_instot_lbl 04 `"Official universities"', add
label define jo04a_instot_lbl 05 `"Civilian and official universities"', add
label define jo04a_instot_lbl 06 `"Official universities and military"', add
label define jo04a_instot_lbl 07 `"Civilian, military and offical universities"', add
label define jo04a_instot_lbl 08 `"Private"', add
label define jo04a_instot_lbl 09 `"Civilian and private"', add
label define jo04a_instot_lbl 10 `"Military and private"', add
label define jo04a_instot_lbl 11 `"Civilian, military and private"', add
label define jo04a_instot_lbl 12 `"Official universities and private"', add
label define jo04a_instot_lbl 13 `"Other"', add
label define jo04a_instot_lbl 98 `"Unknown"', add
label define jo04a_instot_lbl 99 `"NIU (not in universe)"', add
label values jo04a_instot jo04a_instot_lbl

label define jo04a_nation_lbl 01 `"Jordanian"'
label define jo04a_nation_lbl 02 `"Arab Asian countries"', add
label define jo04a_nation_lbl 03 `"Non-Arab Asian countries"', add
label define jo04a_nation_lbl 04 `"Arab African countries"', add
label define jo04a_nation_lbl 05 `"Non-Arab African countries"', add
label define jo04a_nation_lbl 06 `"Western Europe countries"', add
label define jo04a_nation_lbl 08 `"Eastern Europe countries"', add
label define jo04a_nation_lbl 09 `"Other Eastern Europe countries"', add
label define jo04a_nation_lbl 10 `"American countries"', add
label define jo04a_nation_lbl 99 `"Unknown"', add
label values jo04a_nation jo04a_nation_lbl

label define jo04a_natnum_lbl 1 `"Yes"'
label define jo04a_natnum_lbl 2 `"No"', add
label define jo04a_natnum_lbl 9 `"NIU (not in universe)"', add
label values jo04a_natnum jo04a_natnum_lbl

label define jo04a_resabr_lbl 1 `"Work"'
label define jo04a_resabr_lbl 2 `"Study"', add
label define jo04a_resabr_lbl 3 `"Accompaniment"', add
label define jo04a_resabr_lbl 4 `"Tourism"', add
label define jo04a_resabr_lbl 5 `"Treatment"', add
label define jo04a_resabr_lbl 6 `"Other"', add
label define jo04a_resabr_lbl 8 `"Unknown"', add
label define jo04a_resabr_lbl 9 `"NIU (not in universe)"', add
label values jo04a_resabr jo04a_resabr_lbl

label define jo04a_resdur_lbl 00 `"Less than one year"'
label define jo04a_resdur_lbl 01 `"1"', add
label define jo04a_resdur_lbl 02 `"2"', add
label define jo04a_resdur_lbl 03 `"3"', add
label define jo04a_resdur_lbl 04 `"4"', add
label define jo04a_resdur_lbl 05 `"5"', add
label define jo04a_resdur_lbl 06 `"6"', add
label define jo04a_resdur_lbl 07 `"7"', add
label define jo04a_resdur_lbl 08 `"8"', add
label define jo04a_resdur_lbl 09 `"9"', add
label define jo04a_resdur_lbl 10 `"10"', add
label define jo04a_resdur_lbl 11 `"11"', add
label define jo04a_resdur_lbl 12 `"12"', add
label define jo04a_resdur_lbl 13 `"13"', add
label define jo04a_resdur_lbl 14 `"14"', add
label define jo04a_resdur_lbl 15 `"15"', add
label define jo04a_resdur_lbl 16 `"16"', add
label define jo04a_resdur_lbl 17 `"17"', add
label define jo04a_resdur_lbl 18 `"18"', add
label define jo04a_resdur_lbl 19 `"19"', add
label define jo04a_resdur_lbl 20 `"20"', add
label define jo04a_resdur_lbl 21 `"21"', add
label define jo04a_resdur_lbl 22 `"22"', add
label define jo04a_resdur_lbl 23 `"23"', add
label define jo04a_resdur_lbl 24 `"24"', add
label define jo04a_resdur_lbl 25 `"25"', add
label define jo04a_resdur_lbl 26 `"26"', add
label define jo04a_resdur_lbl 27 `"27"', add
label define jo04a_resdur_lbl 28 `"28"', add
label define jo04a_resdur_lbl 29 `"29"', add
label define jo04a_resdur_lbl 30 `"30"', add
label define jo04a_resdur_lbl 31 `"31"', add
label define jo04a_resdur_lbl 32 `"32"', add
label define jo04a_resdur_lbl 33 `"33"', add
label define jo04a_resdur_lbl 34 `"34"', add
label define jo04a_resdur_lbl 35 `"35"', add
label define jo04a_resdur_lbl 36 `"36"', add
label define jo04a_resdur_lbl 37 `"37"', add
label define jo04a_resdur_lbl 38 `"38"', add
label define jo04a_resdur_lbl 39 `"39"', add
label define jo04a_resdur_lbl 40 `"40"', add
label define jo04a_resdur_lbl 41 `"41"', add
label define jo04a_resdur_lbl 42 `"42"', add
label define jo04a_resdur_lbl 43 `"43"', add
label define jo04a_resdur_lbl 44 `"44"', add
label define jo04a_resdur_lbl 45 `"45"', add
label define jo04a_resdur_lbl 46 `"46"', add
label define jo04a_resdur_lbl 47 `"47"', add
label define jo04a_resdur_lbl 48 `"48"', add
label define jo04a_resdur_lbl 49 `"49"', add
label define jo04a_resdur_lbl 50 `"50"', add
label define jo04a_resdur_lbl 51 `"51"', add
label define jo04a_resdur_lbl 52 `"52"', add
label define jo04a_resdur_lbl 53 `"53"', add
label define jo04a_resdur_lbl 54 `"54"', add
label define jo04a_resdur_lbl 55 `"55"', add
label define jo04a_resdur_lbl 56 `"56"', add
label define jo04a_resdur_lbl 57 `"57"', add
label define jo04a_resdur_lbl 58 `"58"', add
label define jo04a_resdur_lbl 59 `"59"', add
label define jo04a_resdur_lbl 60 `"60"', add
label define jo04a_resdur_lbl 61 `"61"', add
label define jo04a_resdur_lbl 62 `"62"', add
label define jo04a_resdur_lbl 63 `"63"', add
label define jo04a_resdur_lbl 64 `"64"', add
label define jo04a_resdur_lbl 65 `"65"', add
label define jo04a_resdur_lbl 66 `"66"', add
label define jo04a_resdur_lbl 67 `"67"', add
label define jo04a_resdur_lbl 68 `"68"', add
label define jo04a_resdur_lbl 69 `"69"', add
label define jo04a_resdur_lbl 70 `"70"', add
label define jo04a_resdur_lbl 71 `"71"', add
label define jo04a_resdur_lbl 72 `"72"', add
label define jo04a_resdur_lbl 73 `"73"', add
label define jo04a_resdur_lbl 74 `"74"', add
label define jo04a_resdur_lbl 75 `"75"', add
label define jo04a_resdur_lbl 76 `"76"', add
label define jo04a_resdur_lbl 77 `"77"', add
label define jo04a_resdur_lbl 78 `"78"', add
label define jo04a_resdur_lbl 79 `"79"', add
label define jo04a_resdur_lbl 80 `"80"', add
label define jo04a_resdur_lbl 81 `"81"', add
label define jo04a_resdur_lbl 82 `"82"', add
label define jo04a_resdur_lbl 83 `"83"', add
label define jo04a_resdur_lbl 84 `"84"', add
label define jo04a_resdur_lbl 85 `"85"', add
label define jo04a_resdur_lbl 86 `"86"', add
label define jo04a_resdur_lbl 87 `"87"', add
label define jo04a_resdur_lbl 88 `"88"', add
label define jo04a_resdur_lbl 89 `"89"', add
label define jo04a_resdur_lbl 90 `"90+"', add
label define jo04a_resdur_lbl 99 `"Unknown"', add
label values jo04a_resdur jo04a_resdur_lbl

label define jo04a_school_lbl 1 `"Yes currently enrolled"'
label define jo04a_school_lbl 2 `"Yes previously enrolled"', add
label define jo04a_school_lbl 3 `"No"', add
label define jo04a_school_lbl 8 `"Unknown"', add
label define jo04a_school_lbl 9 `"NIU (not in universe)"', add
label values jo04a_school jo04a_school_lbl

label define jo04a_edlev1_lbl 0 `"NIU (not in universe)"'
label define jo04a_edlev1_lbl 1 `"Basic education"', add
label define jo04a_edlev1_lbl 2 `"Vocational apprenticeship"', add
label define jo04a_edlev1_lbl 3 `"Secondary"', add
label define jo04a_edlev1_lbl 4 `"Intermediate diploma"', add
label define jo04a_edlev1_lbl 5 `"B.A., B.Sc"', add
label define jo04a_edlev1_lbl 6 `"Higher Diploma"', add
label define jo04a_edlev1_lbl 7 `"M.A., MSc"', add
label define jo04a_edlev1_lbl 8 `"Ph.D"', add
label define jo04a_edlev1_lbl 9 `"Unknown"', add
label values jo04a_edlev1 jo04a_edlev1_lbl

label define jo04a_grade_lbl 01 `"1"'
label define jo04a_grade_lbl 02 `"2"', add
label define jo04a_grade_lbl 03 `"3"', add
label define jo04a_grade_lbl 04 `"4"', add
label define jo04a_grade_lbl 05 `"5"', add
label define jo04a_grade_lbl 06 `"6"', add
label define jo04a_grade_lbl 07 `"7"', add
label define jo04a_grade_lbl 08 `"8"', add
label define jo04a_grade_lbl 09 `"9"', add
label define jo04a_grade_lbl 10 `"10"', add
label define jo04a_grade_lbl 98 `"Unknown"', add
label define jo04a_grade_lbl 99 `"NIU (not in universe)"', add
label values jo04a_grade jo04a_grade_lbl

label define jo04a_educ_lbl 101 `"Basic education, grade 1"'
label define jo04a_educ_lbl 102 `"Basic education, grade 2"', add
label define jo04a_educ_lbl 103 `"Basic education, grade 3"', add
label define jo04a_educ_lbl 104 `"Basic education, grade 4"', add
label define jo04a_educ_lbl 105 `"Basic education, grade 5"', add
label define jo04a_educ_lbl 106 `"Basic education, grade 6"', add
label define jo04a_educ_lbl 107 `"Basic education, grade 7"', add
label define jo04a_educ_lbl 108 `"Basic education, grade 8"', add
label define jo04a_educ_lbl 109 `"Basic education, grade 9"', add
label define jo04a_educ_lbl 110 `"Basic education, grade 10"', add
label define jo04a_educ_lbl 201 `"Vocational apprenticeship, grade 1"', add
label define jo04a_educ_lbl 202 `"Vocational apprenticeship, grade 2"', add
label define jo04a_educ_lbl 301 `"Secondary, grade 1"', add
label define jo04a_educ_lbl 302 `"Secondary, grade 2"', add
label define jo04a_educ_lbl 401 `"Intermediate Diploma, grade 1"', add
label define jo04a_educ_lbl 402 `"Intermediate Diploma, grade 2"', add
label define jo04a_educ_lbl 501 `"B.A. B.Sc, year 1"', add
label define jo04a_educ_lbl 502 `"B.A. B.Sc, year 2"', add
label define jo04a_educ_lbl 503 `"B.A. B.Sc, year 3"', add
label define jo04a_educ_lbl 504 `"B.A. B.Sc, year 4"', add
label define jo04a_educ_lbl 505 `"B.A. B.Sc, year 5"', add
label define jo04a_educ_lbl 601 `"Higher Diploma, year 1"', add
label define jo04a_educ_lbl 602 `"Higher Diploma, year 2"', add
label define jo04a_educ_lbl 701 `"M.A.MSc, year 1"', add
label define jo04a_educ_lbl 702 `"M.A.MSc, year 2"', add
label define jo04a_educ_lbl 703 `"M.A.MSc, year 3"', add
label define jo04a_educ_lbl 801 `"Ph.D, year 1"', add
label define jo04a_educ_lbl 802 `"Ph.D, year 2"', add
label define jo04a_educ_lbl 803 `"Ph.D, year 3"', add
label define jo04a_educ_lbl 998 `"Unknown"', add
label define jo04a_educ_lbl 999 `"NIU (not in universe)"', add
label values jo04a_educ jo04a_educ_lbl

label define jo04a_edlev2_lbl 01 `"Illiterate"'
label define jo04a_edlev2_lbl 02 `"Read and write"', add
label define jo04a_edlev2_lbl 03 `"Elementary"', add
label define jo04a_edlev2_lbl 04 `"Preparatory"', add
label define jo04a_edlev2_lbl 05 `"Basic education"', add
label define jo04a_edlev2_lbl 06 `"Vocational apprenticeship"', add
label define jo04a_edlev2_lbl 07 `"Secondary"', add
label define jo04a_edlev2_lbl 08 `"Intermediate diploma"', add
label define jo04a_edlev2_lbl 09 `"B.A."', add
label define jo04a_edlev2_lbl 10 `"Higher diploma"', add
label define jo04a_edlev2_lbl 11 `"M.A."', add
label define jo04a_edlev2_lbl 12 `"Ph.D."', add
label define jo04a_edlev2_lbl 98 `"Unknown"', add
label define jo04a_edlev2_lbl 99 `"NIU (not in universe)"', add
label values jo04a_edlev2 jo04a_edlev2_lbl

label define jo04a_marst_lbl 1 `"Never married"'
label define jo04a_marst_lbl 2 `"Married"', add
label define jo04a_marst_lbl 3 `"Divorced"', add
label define jo04a_marst_lbl 4 `"Widowed"', add
label define jo04a_marst_lbl 5 `"Separated"', add
label define jo04a_marst_lbl 8 `"Unknown"', add
label define jo04a_marst_lbl 9 `"NIU (not in universe)"', add
label values jo04a_marst jo04a_marst_lbl

label define jo04a_work_lbl 1 `"Yes"'
label define jo04a_work_lbl 2 `"No"', add
label define jo04a_work_lbl 8 `"Unknown"', add
label define jo04a_work_lbl 9 `"NIU (not in universe)"', add
label values jo04a_work jo04a_work_lbl

label define jo04a_wkabs_lbl 1 `"Yes"'
label define jo04a_wkabs_lbl 2 `"No"', add
label define jo04a_wkabs_lbl 8 `"Unknown"', add
label define jo04a_wkabs_lbl 9 `"NIU (not in universe)"', add
label values jo04a_wkabs jo04a_wkabs_lbl

label define jo04a_wkhour_lbl 01 `"1"'
label define jo04a_wkhour_lbl 02 `"2"', add
label define jo04a_wkhour_lbl 03 `"3"', add
label define jo04a_wkhour_lbl 04 `"4"', add
label define jo04a_wkhour_lbl 05 `"5"', add
label define jo04a_wkhour_lbl 06 `"6"', add
label define jo04a_wkhour_lbl 07 `"7"', add
label define jo04a_wkhour_lbl 08 `"8"', add
label define jo04a_wkhour_lbl 09 `"9"', add
label define jo04a_wkhour_lbl 10 `"10"', add
label define jo04a_wkhour_lbl 11 `"11"', add
label define jo04a_wkhour_lbl 12 `"12"', add
label define jo04a_wkhour_lbl 13 `"13"', add
label define jo04a_wkhour_lbl 14 `"14"', add
label define jo04a_wkhour_lbl 15 `"15"', add
label define jo04a_wkhour_lbl 16 `"16"', add
label define jo04a_wkhour_lbl 17 `"17"', add
label define jo04a_wkhour_lbl 18 `"18"', add
label define jo04a_wkhour_lbl 19 `"19"', add
label define jo04a_wkhour_lbl 20 `"20"', add
label define jo04a_wkhour_lbl 21 `"21"', add
label define jo04a_wkhour_lbl 22 `"22"', add
label define jo04a_wkhour_lbl 23 `"23"', add
label define jo04a_wkhour_lbl 24 `"24"', add
label define jo04a_wkhour_lbl 25 `"25"', add
label define jo04a_wkhour_lbl 26 `"26"', add
label define jo04a_wkhour_lbl 27 `"27"', add
label define jo04a_wkhour_lbl 28 `"28"', add
label define jo04a_wkhour_lbl 29 `"29"', add
label define jo04a_wkhour_lbl 30 `"30"', add
label define jo04a_wkhour_lbl 31 `"31"', add
label define jo04a_wkhour_lbl 32 `"32"', add
label define jo04a_wkhour_lbl 33 `"33"', add
label define jo04a_wkhour_lbl 34 `"34"', add
label define jo04a_wkhour_lbl 35 `"35"', add
label define jo04a_wkhour_lbl 36 `"36"', add
label define jo04a_wkhour_lbl 37 `"37"', add
label define jo04a_wkhour_lbl 38 `"38"', add
label define jo04a_wkhour_lbl 39 `"39"', add
label define jo04a_wkhour_lbl 40 `"40"', add
label define jo04a_wkhour_lbl 41 `"41"', add
label define jo04a_wkhour_lbl 42 `"42"', add
label define jo04a_wkhour_lbl 43 `"43"', add
label define jo04a_wkhour_lbl 44 `"44"', add
label define jo04a_wkhour_lbl 45 `"45"', add
label define jo04a_wkhour_lbl 46 `"46"', add
label define jo04a_wkhour_lbl 47 `"47"', add
label define jo04a_wkhour_lbl 48 `"48"', add
label define jo04a_wkhour_lbl 49 `"49"', add
label define jo04a_wkhour_lbl 50 `"50"', add
label define jo04a_wkhour_lbl 51 `"51"', add
label define jo04a_wkhour_lbl 52 `"52"', add
label define jo04a_wkhour_lbl 53 `"53"', add
label define jo04a_wkhour_lbl 54 `"54"', add
label define jo04a_wkhour_lbl 55 `"55"', add
label define jo04a_wkhour_lbl 56 `"56"', add
label define jo04a_wkhour_lbl 57 `"57"', add
label define jo04a_wkhour_lbl 58 `"58"', add
label define jo04a_wkhour_lbl 59 `"59"', add
label define jo04a_wkhour_lbl 60 `"60"', add
label define jo04a_wkhour_lbl 61 `"61"', add
label define jo04a_wkhour_lbl 62 `"62"', add
label define jo04a_wkhour_lbl 63 `"63"', add
label define jo04a_wkhour_lbl 64 `"64"', add
label define jo04a_wkhour_lbl 65 `"65"', add
label define jo04a_wkhour_lbl 66 `"66"', add
label define jo04a_wkhour_lbl 67 `"67"', add
label define jo04a_wkhour_lbl 68 `"68"', add
label define jo04a_wkhour_lbl 69 `"69"', add
label define jo04a_wkhour_lbl 70 `"70"', add
label define jo04a_wkhour_lbl 71 `"71"', add
label define jo04a_wkhour_lbl 72 `"72"', add
label define jo04a_wkhour_lbl 73 `"73"', add
label define jo04a_wkhour_lbl 74 `"74"', add
label define jo04a_wkhour_lbl 75 `"75"', add
label define jo04a_wkhour_lbl 76 `"76"', add
label define jo04a_wkhour_lbl 77 `"77"', add
label define jo04a_wkhour_lbl 78 `"78"', add
label define jo04a_wkhour_lbl 79 `"79"', add
label define jo04a_wkhour_lbl 80 `"80"', add
label define jo04a_wkhour_lbl 81 `"81"', add
label define jo04a_wkhour_lbl 82 `"82"', add
label define jo04a_wkhour_lbl 83 `"83"', add
label define jo04a_wkhour_lbl 84 `"84"', add
label define jo04a_wkhour_lbl 85 `"85"', add
label define jo04a_wkhour_lbl 86 `"86"', add
label define jo04a_wkhour_lbl 87 `"87"', add
label define jo04a_wkhour_lbl 88 `"88"', add
label define jo04a_wkhour_lbl 89 `"89"', add
label define jo04a_wkhour_lbl 90 `"90"', add
label define jo04a_wkhour_lbl 91 `"91"', add
label define jo04a_wkhour_lbl 92 `"92"', add
label define jo04a_wkhour_lbl 93 `"93"', add
label define jo04a_wkhour_lbl 94 `"94"', add
label define jo04a_wkhour_lbl 95 `"95"', add
label define jo04a_wkhour_lbl 96 `"96"', add
label define jo04a_wkhour_lbl 97 `"97+"', add
label define jo04a_wkhour_lbl 98 `"Unknown"', add
label define jo04a_wkhour_lbl 99 `"NIU (not in universe)"', add
label values jo04a_wkhour jo04a_wkhour_lbl

label define jo04a_wksect_lbl 1 `"Public"'
label define jo04a_wksect_lbl 2 `"Private"', add
label define jo04a_wksect_lbl 3 `"Other"', add
label define jo04a_wksect_lbl 8 `"Unknown"', add
label define jo04a_wksect_lbl 9 `"NIU (not in universe)"', add
label values jo04a_wksect jo04a_wksect_lbl

label define jo04a_ind_lbl 0111 `"Growing of cereals and other crops n.e.c."'
label define jo04a_ind_lbl 0112 `"Growing of vegetables, horticultural specialties and nursery products"', add
label define jo04a_ind_lbl 0113 `"Growing of fruit, nuts, beverage and spice crops"', add
label define jo04a_ind_lbl 0121 `"Farming of cattle, sheep, goats, horses, asses, mules and hinnies; dairy farming"', add
label define jo04a_ind_lbl 0122 `"Other animal farming; production of animal products n.e.c."', add
label define jo04a_ind_lbl 0140 `"Agricultural and animal husbandry service activities, except veterinary activities"', add
label define jo04a_ind_lbl 1410 `"Quarrying of stone, sand and clay"', add
label define jo04a_ind_lbl 1421 `"Mining of chemical and fertilizer minerals"', add
label define jo04a_ind_lbl 1422 `"Extraction of salt"', add
label define jo04a_ind_lbl 1511 `"Production, processing and preserving of meat and meat products"', add
label define jo04a_ind_lbl 1513 `"Processing and preserving of fruit and vegetables"', add
label define jo04a_ind_lbl 1514 `"Manufacture of vegetable and animal oils and fats"', add
label define jo04a_ind_lbl 1520 `"Manufacture of dairy products"', add
label define jo04a_ind_lbl 1531 `"Manufacture of grain mill products"', add
label define jo04a_ind_lbl 1533 `"Manufacture of prepared animal feeds"', add
label define jo04a_ind_lbl 1541 `"Manufacture of bakery products"', add
label define jo04a_ind_lbl 1543 `"Manufacture of cocoa, chocolate and sugar confectionery"', add
label define jo04a_ind_lbl 1544 `"Manufacture of macaroni, noodles, couscous and similar farinaceous products"', add
label define jo04a_ind_lbl 1549 `"Manufacture of other food products n.e.c."', add
label define jo04a_ind_lbl 1554 `"Manufacture of soft drinks; production of mineral waters"', add
label define jo04a_ind_lbl 1600 `"Manufacture of tobacco products"', add
label define jo04a_ind_lbl 1711 `"Preparation and spinning of textile fibres; weaving of textiles"', add
label define jo04a_ind_lbl 1712 `"Finishing of textiles"', add
label define jo04a_ind_lbl 1722 `"Manufacture of carpets and rugs"', add
label define jo04a_ind_lbl 1730 `"Manufacture of knitted and crocheted fabrics and articles"', add
label define jo04a_ind_lbl 1810 `"Manufacture of wearing apparel, except fur apparel"', add
label define jo04a_ind_lbl 1911 `"Tanning and dressing of leather"', add
label define jo04a_ind_lbl 1912 `"Manufacture of luggage, handbags and the like, saddlery and harness"', add
label define jo04a_ind_lbl 1920 `"Manufacture of footwear"', add
label define jo04a_ind_lbl 2023 `"Manufacture of wooden containers"', add
label define jo04a_ind_lbl 2101 `"Manufacture of pulp, paper and paperboard"', add
label define jo04a_ind_lbl 2102 `"Manufacture of corrugated paper and paperboard and of containers of paper and paperboard"', add
label define jo04a_ind_lbl 2109 `"Manufacture of other articles of paper and paperboard"', add
label define jo04a_ind_lbl 2212 `"Publishing of newspapers, journals and periodicals"', add
label define jo04a_ind_lbl 2219 `"Other publishing"', add
label define jo04a_ind_lbl 2221 `"Printing"', add
label define jo04a_ind_lbl 2320 `"Manufacture of refined petroleum products"', add
label define jo04a_ind_lbl 2412 `"Manufacture of fertilizers and nitrogen compounds"', add
label define jo04a_ind_lbl 2421 `"Manufacture of pesticides and other agro-chemical products"', add
label define jo04a_ind_lbl 2422 `"Manufacture of paints, varnishes and similar coatings, printing ink and mastics"', add
label define jo04a_ind_lbl 2423 `"Manufacture of pharmaceuticals, medicinal chemicals and botanical products"', add
label define jo04a_ind_lbl 2424 `"Manufacture of soap and detergents, cleaning and polishing preparations, perfumes and toilet preparations"', add
label define jo04a_ind_lbl 2429 `"Manufacture of other chemical products n.e.c."', add
label define jo04a_ind_lbl 2520 `"Manufacture of plastics products"', add
label define jo04a_ind_lbl 2610 `"Manufacture of glass and glass products"', add
label define jo04a_ind_lbl 2693 `"Manufacture of structural non-refractory clay and ceramic products"', add
label define jo04a_ind_lbl 2694 `"Manufacture of cement, lime and plaster"', add
label define jo04a_ind_lbl 2696 `"Cutting, shaping and finishing of stone"', add
label define jo04a_ind_lbl 2710 `"Manufacture of basic iron and steel"', add
label define jo04a_ind_lbl 2811 `"Manufacture of structural metal products"', add
label define jo04a_ind_lbl 2812 `"Manufacture of tanks, reservoirs and containers of metal"', add
label define jo04a_ind_lbl 2912 `"Manufacture of pumps, compressors, taps and valves"', add
label define jo04a_ind_lbl 2915 `"Manufacture of lifting and handling equipment"', add
label define jo04a_ind_lbl 2930 `"Manufacture of domestic appliances n.e.c."', add
label define jo04a_ind_lbl 3130 `"Manufacture of insulated wire and cable"', add
label define jo04a_ind_lbl 3311 `"Manufacture of medical and surgical equipment and orthopaedic appliances"', add
label define jo04a_ind_lbl 3410 `"Manufacture of motor vehicles"', add
label define jo04a_ind_lbl 3430 `"Manufacture of parts and accessories for motor vehicles and their engines"', add
label define jo04a_ind_lbl 3610 `"Manufacture of furniture"', add
label define jo04a_ind_lbl 3691 `"Manufacture of jewellery and related articles"', add
label define jo04a_ind_lbl 3699 `"Other manufacturing n.e.c."', add
label define jo04a_ind_lbl 4010 `"Production, collection and distribution of electricity"', add
label define jo04a_ind_lbl 4020 `"Manufacture of gas; distribution of gaseous fuels through mains"', add
label define jo04a_ind_lbl 4100 `"Collection, purification and distribution of water"', add
label define jo04a_ind_lbl 4510 `"Site preparation"', add
label define jo04a_ind_lbl 4520 `"Building of complete constructions or parts thereof; civil engineering"', add
label define jo04a_ind_lbl 4530 `"Building installation"', add
label define jo04a_ind_lbl 4540 `"Building completion"', add
label define jo04a_ind_lbl 5010 `"Sale of motor vehicles"', add
label define jo04a_ind_lbl 5020 `"Maintenance and repair of motor vehicles"', add
label define jo04a_ind_lbl 5030 `"Sale of motor vehicle parts and accessories"', add
label define jo04a_ind_lbl 5050 `"Retail sale of automotive fuel"', add
label define jo04a_ind_lbl 5121 `"Wholesale of agricultural raw materials and live animals"', add
label define jo04a_ind_lbl 5122 `"Wholesale of food, beverages and tobacco"', add
label define jo04a_ind_lbl 5131 `"Wholesale of textiles, clothing  and footwear"', add
label define jo04a_ind_lbl 5139 `"Wholesale of other household goods"', add
label define jo04a_ind_lbl 5143 `"Wholesale of construction materials, hardware, plumbing and heating equipment and supplies"', add
label define jo04a_ind_lbl 5150 `"Wholesale of machinery, equipment and supplies"', add
label define jo04a_ind_lbl 5190 `"Other wholesale"', add
label define jo04a_ind_lbl 5211 `"Retail sale in non-specialized stores with food, beverages or tobacco predominating"', add
label define jo04a_ind_lbl 5220 `"Retail sale of food, beverages and tobacco in specialized stores"', add
label define jo04a_ind_lbl 5231 `"Retail sale of pharmaceutical and medical goods, cosmetic and toilet articles"', add
label define jo04a_ind_lbl 5232 `"Retail sale of textiles, clothing, footwear and leather goods"', add
label define jo04a_ind_lbl 5233 `"Retail sale of household appliances, articles and equipment"', add
label define jo04a_ind_lbl 5234 `"Retail sale of hardware, paint and glass"', add
label define jo04a_ind_lbl 5239 `"Other retail sale in specialized stores"', add
label define jo04a_ind_lbl 5240 `"Retail sale of second-hand goods in stores"', add
label define jo04a_ind_lbl 5252 `"Retail sale via stalls and markets"', add
label define jo04a_ind_lbl 5260 `"Repair of personal and household goods"', add
label define jo04a_ind_lbl 5510 `"Hotels; camping sites and other provision of short-stay accommodation"', add
label define jo04a_ind_lbl 5520 `"Restaurants, bars and canteens"', add
label define jo04a_ind_lbl 6010 `"Transport via railways"', add
label define jo04a_ind_lbl 6022 `"Other non-scheduled passenger land transport"', add
label define jo04a_ind_lbl 6023 `"Freight transport by road"', add
label define jo04a_ind_lbl 6110 `"Sea and coastal water transport"', add
label define jo04a_ind_lbl 6210 `"Scheduled air transport"', add
label define jo04a_ind_lbl 6302 `"Storage and warehousing"', add
label define jo04a_ind_lbl 6304 `"Activities of travel agencies and tour operators; tourist assistance activities n.e.c."', add
label define jo04a_ind_lbl 6309 `"Activities of other transport agencies"', add
label define jo04a_ind_lbl 6411 `"National post activities"', add
label define jo04a_ind_lbl 6420 `"Telecommunications"', add
label define jo04a_ind_lbl 6499 `"Transpor, storage, and communications, n.e.c."', add
label define jo04a_ind_lbl 6511 `"Central banking"', add
label define jo04a_ind_lbl 6519 `"Other monetary intermediation"', add
label define jo04a_ind_lbl 6599 `"Other financial intermediation n.e.c."', add
label define jo04a_ind_lbl 6603 `"Non-life insurance"', add
label define jo04a_ind_lbl 6711 `"Administration of financial markets"', add
label define jo04a_ind_lbl 7010 `"Real estate activities with own or leased property"', add
label define jo04a_ind_lbl 7111 `"Renting of land transport equipment"', add
label define jo04a_ind_lbl 7130 `"Renting of personal and household goods n.e.c."', add
label define jo04a_ind_lbl 7220 `"Software consultancy and supply"', add
label define jo04a_ind_lbl 7250 `"Maintenance and repair of office, accounting and computing machinery"', add
label define jo04a_ind_lbl 7290 `"Other computer related activities"', add
label define jo04a_ind_lbl 7310 `"Research and experimental development on natural sciences and engineering (NSE)"', add
label define jo04a_ind_lbl 7411 `"Legal activities"', add
label define jo04a_ind_lbl 7412 `"Accounting, book-keeping and auditing activities; tax consultancy"', add
label define jo04a_ind_lbl 7414 `"Business and management consultancy activities"', add
label define jo04a_ind_lbl 7421 `"Architectural and engineering activities and related technical consultancy"', add
label define jo04a_ind_lbl 7430 `"Advertising"', add
label define jo04a_ind_lbl 7492 `"Investigation and security activities"', add
label define jo04a_ind_lbl 7493 `"Building-cleaning activities"', add
label define jo04a_ind_lbl 7494 `"Photographic activities"', add
label define jo04a_ind_lbl 7495 `"Packaging activities"', add
label define jo04a_ind_lbl 7499 `"Other business activities n.e.c."', add
label define jo04a_ind_lbl 7511 `"General (Over-all) public service activities"', add
label define jo04a_ind_lbl 7512 `"Regulation of the activities of agencies that provide health care, education, cultural services and other social services excluding social security"', add
label define jo04a_ind_lbl 7513 `"Regulation of and contribution to more efficient operation of business"', add
label define jo04a_ind_lbl 7522 `"Defence activities"', add
label define jo04a_ind_lbl 7523 `"Public order and safety activities"', add
label define jo04a_ind_lbl 7530 `"Compulsory social security activities"', add
label define jo04a_ind_lbl 8010 `"Primary education"', add
label define jo04a_ind_lbl 8021 `"General secondary education"', add
label define jo04a_ind_lbl 8022 `"Technical and vocational secondary education"', add
label define jo04a_ind_lbl 8030 `"Higher education"', add
label define jo04a_ind_lbl 8090 `"Adult and other education"', add
label define jo04a_ind_lbl 8511 `"Hospital activities"', add
label define jo04a_ind_lbl 8512 `"Medical and dental practice activities"', add
label define jo04a_ind_lbl 8519 `"Other human health activities"', add
label define jo04a_ind_lbl 8532 `"Social work without accommodation"', add
label define jo04a_ind_lbl 9000 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define jo04a_ind_lbl 9112 `"Activities of professional organizations"', add
label define jo04a_ind_lbl 9120 `"Activities of trade unions"', add
label define jo04a_ind_lbl 9191 `"Activities of religious organizations"', add
label define jo04a_ind_lbl 9211 `"Motion picture and video production and distribution"', add
label define jo04a_ind_lbl 9213 `"Radio and television activities"', add
label define jo04a_ind_lbl 9219 `"Other entertainment activities n.e.c."', add
label define jo04a_ind_lbl 9220 `"News agency activities"', add
label define jo04a_ind_lbl 9232 `"Museums activities and preservation of historical sites and buildings"', add
label define jo04a_ind_lbl 9241 `"Sporting activities"', add
label define jo04a_ind_lbl 9249 `"Other recreational activities"', add
label define jo04a_ind_lbl 9301 `"Washing, and (dry-) cleaning of textile and fur products"', add
label define jo04a_ind_lbl 9302 `"Hairdressing and other beauty treatment"', add
label define jo04a_ind_lbl 9309 `"Other service activities n.e.c."', add
label define jo04a_ind_lbl 9500 `"Private households with employed persons"', add
label define jo04a_ind_lbl 9900 `"Extra-territorial organizations and bodies"', add
label define jo04a_ind_lbl 9950 `"Industry response suppressed"', add
label define jo04a_ind_lbl 9998 `"Unknown"', add
label define jo04a_ind_lbl 9999 `"NIU (not in universe)"', add
label values jo04a_ind jo04a_ind_lbl

label define jo04a_claswk1_lbl 1 `"Paid employee"'
label define jo04a_claswk1_lbl 2 `"Employer"', add
label define jo04a_claswk1_lbl 3 `"Own-account worker"', add
label define jo04a_claswk1_lbl 4 `"Unpaid family worker"', add
label define jo04a_claswk1_lbl 5 `"Unpaid worker"', add
label define jo04a_claswk1_lbl 8 `"Unknown"', add
label define jo04a_claswk1_lbl 9 `"NIU (not in universe)"', add
label values jo04a_claswk1 jo04a_claswk1_lbl

label define jo04a_wkready_lbl 1 `"Yes"'
label define jo04a_wkready_lbl 2 `"No"', add
label define jo04a_wkready_lbl 8 `"Unknown"', add
label define jo04a_wkready_lbl 9 `"NIU (not in universe)"', add
label values jo04a_wkready jo04a_wkready_lbl

label define jo04a_wkseek_lbl 1 `"Yes"'
label define jo04a_wkseek_lbl 2 `"No"', add
label define jo04a_wkseek_lbl 8 `"Unknown"', add
label define jo04a_wkseek_lbl 9 `"NIU (not in universe)"', add
label values jo04a_wkseek jo04a_wkseek_lbl

label define jo04a_claswk2_lbl 1 `"Student"'
label define jo04a_claswk2_lbl 2 `"Housemaker"', add
label define jo04a_claswk2_lbl 3 `"With means"', add
label define jo04a_claswk2_lbl 4 `"Disabled"', add
label define jo04a_claswk2_lbl 5 `"Other"', add
label define jo04a_claswk2_lbl 8 `"Unknown"', add
label define jo04a_claswk2_lbl 9 `"NIU (not in universe)"', add
label values jo04a_claswk2 jo04a_claswk2_lbl

label define jo04a_empstat_lbl 1 `"Employed"'
label define jo04a_empstat_lbl 2 `"Unemployed"', add
label define jo04a_empstat_lbl 3 `"Student"', add
label define jo04a_empstat_lbl 4 `"Housemaker"', add
label define jo04a_empstat_lbl 5 `"With means"', add
label define jo04a_empstat_lbl 6 `"Disabled"', add
label define jo04a_empstat_lbl 7 `"Other"', add
label define jo04a_empstat_lbl 8 `"Unknown"', add
label define jo04a_empstat_lbl 9 `"NIU (not in universe)"', add
label values jo04a_empstat jo04a_empstat_lbl

label define jo04a_disab_lbl 0 `"Not handicapped"'
label define jo04a_disab_lbl 1 `"Deaf or dumb"', add
label define jo04a_disab_lbl 2 `"Physical"', add
label define jo04a_disab_lbl 3 `"Cerebral palsy"', add
label define jo04a_disab_lbl 4 `"Mental"', add
label define jo04a_disab_lbl 5 `"Visual"', add
label define jo04a_disab_lbl 6 `"Multiple handicap"', add
label define jo04a_disab_lbl 7 `"Other"', add
label define jo04a_disab_lbl 9 `"Unknown"', add
label values jo04a_disab jo04a_disab_lbl


