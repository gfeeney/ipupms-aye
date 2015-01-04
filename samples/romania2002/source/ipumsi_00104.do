* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    ro02a_dwnum     22-27    ///
  byte    ro02a_pern      28-29    ///
  byte    ro02a_urban     30-30    ///
  byte    ro02a_region    31-31    ///
  byte    ro02a_county    32-33    ///
  byte    ro02a_hhnumo    34-34    ///
  byte    ro02a_desigb    35-35    ///
  int     ro02a_yrconst   36-39    ///
  byte    ro02a_walls     40-40    ///
  byte    ro02a_bldtype   41-41    ///
  byte    ro02a_roomsbb   42-43    ///
  long    ro02a_livareab  44-48    ///
  int     ro02a_busareab  49-51    ///
  byte    ro02a_dwnocc    52-53    ///
  byte    ro02a_unconvb   54-54    ///
  byte    ro02a_dwnbspsb  55-56    ///
  byte    ro02a_dwnbspsb  57-58    ///
  byte    ro02a_ownerps   59-59    ///
  byte    ro02a_ownerb    60-60    ///
  byte    ro02a_waterb    61-61    ///
  byte    ro02a_hotwatb   62-62    ///
  byte    ro02a_sewerb    63-63    ///
  byte    ro02a_electb    64-64    ///
  byte    ro02a_gasb      65-65    ///
  byte    ro02a_heatb     66-66    ///
  byte    ro02a_util      67-68    ///
  byte    ro02a_occup     69-69    ///
  byte    ro02a_tenureb   70-70    ///
  byte    ro02a_dwtyb     71-71    ///
  int     ro02a_bldage    72-74    ///
  byte    ro02a_hhno      75-75    ///
  byte    ro02a_dwtype    76-76    ///
  byte    ro02a_occupd    77-77    ///
  byte    ro02a_owntype   78-78    ///
  byte    ro02a_rooms     79-80    ///
  int     ro02a_livarea   81-83    ///
  byte    ro02a_roomsbus  84-84    ///
  byte    ro02a_busarea   85-86    ///
  byte    ro02a_kitch     87-87    ///
  byte    ro02a_kitarea   88-89    ///
  byte    ro02a_bathroom  90-90    ///
  byte    ro02a_toilet    91-91    ///
  byte    ro02a_water     92-92    ///
  byte    ro02a_hotwat    93-93    ///
  byte    ro02a_sewage    94-94    ///
  byte    ro02a_elect     95-95    ///
  byte    ro02a_fuelcook  96-96    ///
  byte    ro02a_heat      97-97    ///
  byte    ro02a_aircon    98-98    ///
  byte    ro02a_perndo    99-100   ///
  byte    ro02a_tenured   101-102  ///
  byte    ro02a_rooms2    103-104  ///
  int     ro02a_livarea2  105-107  ///
  byte    ro02a_hhtyped   108-108  ///
  byte    ro02a_hhtyped   109-109  ///
  byte    ro02a_famnd     110-110  ///
  byte    ro02a_pernho    111-112  ///
  byte    ro02a_emphh     113-114  ///
  byte    ro02a_activehh  115-116  ///
  byte    ro02a_dependhh  117-118  ///
  byte    ro02a_dependch  119-120  ///
  byte    ro02a_childnuc  121-122  ///
  byte    ro02a_empshh    123-123  ///
  int     ro02a_gener     124-126  ///
  byte    ro02a_famnuch   127-127  ///
  int     ro02a_relateh   128-130  ///
  byte    ro02a_hhtype    131-132  ///
  int     pernum          133-135  ///
  float   wtper           136-143  ///
  byte    ro02a_pernum    144-145  ///
  byte    ro02a_pernumo   146-147  ///
  byte    ro02a_relate    148-149  ///
  byte    ro02a_poploc    150-151  ///
  byte    ro02a_momloc    152-153  ///
  byte    ro02a_sploc     154-155  ///
  byte    ro02a_absent    156-156  ///
  byte    ro02a_absdur    157-157  ///
  byte    ro02a_abswhy    158-158  ///
  byte    ro02a_moved     159-159  ///
  byte    ro02a_prevres   160-161  ///
  int     ro02a_resyr     162-165  ///
  byte    ro02a_bpl       166-167  ///
  byte    ro02a_bpl2      168-168  ///
  byte    ro02a_sex       169-169  ///
  int     ro02a_birthyr   170-173  ///
  byte    ro02a_birthmo   174-175  ///
  byte    ro02a_marst     176-176  ///
  byte    ro02a_marstdef  177-177  ///
  int     ro02a_marryr    178-181  ///
  byte    ro02a_chborn    182-183  ///
  byte    ro02a_citiz     184-185  ///
  byte    ro02a_citiz2    186-187  ///
  byte    ro02a_ethnic    188-189  ///
  byte    ro02a_lang      190-191  ///
  byte    ro02a_relig     192-193  ///
  byte    ro02a_edattain  194-195  ///
  byte    ro02a_schtype1  196-196  ///
  byte    ro02a_edattend  197-198  ///
  byte    ro02a_schtype2  199-199  ///
  byte    ro02a_empstat   200-200  ///
  byte    ro02a_hrswork   201-202  ///
  byte    ro02a_occ1      203-203  ///
  byte    ro02a_occ2      204-205  ///
  int     ro02a_occ3      206-208  ///
  int     ro02a_occ4      209-212  ///
  byte    ro02a_classwk   213-213  ///
  byte    ro02a_ind       214-215  ///
  byte    ro02a_wkloc     216-216  ///
  byte    ro02a_wkown     217-217  ///
  byte    ro02a_durunemp  218-218  ///
  byte    ro02a_benunemp  219-219  ///
  byte    ro02a_empyear   220-220  ///
  byte    ro02a_empstatu  221-221  ///
  byte    ro02a_classwku  222-222  ///
  byte    ro02a_tenure    223-223  ///
  byte    ro02a_rent      224-224  ///
  byte    ro02a_age       225-226  ///
  byte    ro02a_relatef   227-227  ///
  byte    ro02a_famnum    228-228  ///
  byte    ro02a_famtype   229-229  ///
  byte    ro02a_reslegc   230-231  ///
  using `"ipumsi_00104.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var ro02a_dwnum    `"Dwelling number"'
label var ro02a_pern     `"Number of persons in household"'
label var ro02a_urban    `"Urban-rural"'
label var ro02a_region   `"Region"'
label var ro02a_county   `"County"'
label var ro02a_hhnumo   `"Order number of the household in the dwelling"'
label var ro02a_desigb   `"Designation of the building"'
label var ro02a_yrconst  `"Year of building construction"'
label var ro02a_walls    `"Material of outer walls"'
label var ro02a_bldtype  `"Type of building"'
label var ro02a_roomsbb  `"Number of rooms used only for business and professional purposes in building"'
label var ro02a_livareab `"Living area in building"'
label var ro02a_busareab `"Floor area of rooms in building used only for business and professional purposes"'
label var ro02a_dwnocc   `"Number of occupied dwellings in building"'
label var ro02a_unconvb  `"Number of non-conventional housing units in building"'
label var ro02a_dwnbspsb `"Number of permanent and seasonal dwellings with rooms used only for business and"'
label var ro02a_dwnbspsb `"Number of permanent and seasonal dwellings with rooms used only for business and"'
label var ro02a_ownerps  `"Type of ownership, conventional dwellings in building"'
label var ro02a_ownerb   `"Type of ownership, all dwellings in building"'
label var ro02a_waterb   `"Water supply system, building"'
label var ro02a_hotwatb  `"Hot water supply system, building"'
label var ro02a_sewerb   `"Sewage installation, building"'
label var ro02a_electb   `"Electric installation, building"'
label var ro02a_gasb     `"Piped gas from public network, building"'
label var ro02a_heatb    `"Thermal heating, building"'
label var ro02a_util     `"Installed utilities, building"'
label var ro02a_occup    `"Occupancy status"'
label var ro02a_tenureb  `"Tenure status of building by status of households"'
label var ro02a_dwtyb    `"Type of dwellings in building"'
label var ro02a_bldage   `"Age of building"'
label var ro02a_hhno     `"Number of the household within the dwelling"'
label var ro02a_dwtype   `"Type of dwelling"'
label var ro02a_occupd   `"Occupancy status of dwelling"'
label var ro02a_owntype  `"Type of ownership of dwelling"'
label var ro02a_rooms    `"Number of occupied rooms in dwelling"'
label var ro02a_livarea  `"Living area in dwelling"'
label var ro02a_roomsbus `"Number of rooms designated for professional/commercial purposes in dwelling"'
label var ro02a_busarea  `"Floor area of rooms designated for professional/commercial purposes in dwelling"'
label var ro02a_kitch    `"Location of kitchen"'
label var ro02a_kitarea  `"Floor area of kitchen"'
label var ro02a_bathroom `"Location of bathroom"'
label var ro02a_toilet   `"Location of flush toilet"'
label var ro02a_water    `"Water supply system"'
label var ro02a_hotwat   `"Hot water supply installation"'
label var ro02a_sewage   `"Sewage installation in the dwelling"'
label var ro02a_elect    `"Electrical installation"'
label var ro02a_fuelcook `"Cooking fuel"'
label var ro02a_heat     `"Main type of heating"'
label var ro02a_aircon   `"Dwelling has air conditioning"'
label var ro02a_perndo   `"Total persons in dwelling"'
label var ro02a_tenured  `"Tenure status of dwelling by tenure status of households"'
label var ro02a_rooms2   `"Rooms in dwelling, including kitchen"'
label var ro02a_livarea2 `"Living area of dwelling, including kitchen"'
label var ro02a_hhtyped  `"Type of households in dwellings"'
label var ro02a_hhtyped  `"Type of households in dwellings"'
label var ro02a_famnd    `"Number of family nuclei in dwelling"'
label var ro02a_pernho   `"Total number of persons in household"'
label var ro02a_emphh    `"Number of employed persons in household"'
label var ro02a_activehh `"Number of economically active persons in household"'
label var ro02a_dependhh `"Number of supported persons in household"'
label var ro02a_dependch `"Number of supported children in family nucleus"'
label var ro02a_childnuc `"Number of children in family nucleus"'
label var ro02a_empshh   `"Number of employees in household"'
label var ro02a_gener    `"Number and type of generations in household"'
label var ro02a_famnuch  `"Number of family nuclei in household"'
label var ro02a_relateh  `"Relationship of household members"'
label var ro02a_hhtype   `"Type of household"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var ro02a_pernum   `"Person number (within household)"'
label var ro02a_pernumo  `"Order number of the person in the household"'
label var ro02a_relate   `"Relationship to the household head"'
label var ro02a_poploc   `"Person number of the father"'
label var ro02a_momloc   `"Person number of the mother"'
label var ro02a_sploc    `"Person number of the spouse/cohabitant"'
label var ro02a_absent   `"Situation at the census moment"'
label var ro02a_absdur   `"Duration of absence"'
label var ro02a_abswhy   `"Reason for absence"'
label var ro02a_moved    `"Person permanently moved from legal residence"'
label var ro02a_prevres  `"County or country of previous residence"'
label var ro02a_resyr    `"Year of establishing actual legal residence"'
label var ro02a_bpl      `"County or country of birth"'
label var ro02a_bpl2     `"Place of birth in other locality"'
label var ro02a_sex      `"Sex"'
label var ro02a_birthyr  `"Year of birth"'
label var ro02a_birthmo  `"Month of birth"'
label var ro02a_marst    `"Marital status"'
label var ro02a_marstdef `"De facto marital status, living in consensual union"'
label var ro02a_marryr   `"Year of first marriage"'
label var ro02a_chborn   `"Number of children born alive"'
label var ro02a_citiz    `"Citizenship"'
label var ro02a_citiz2   `"Second citizenship"'
label var ro02a_ethnic   `"Ethnicity"'
label var ro02a_lang     `"Mother tongue"'
label var ro02a_relig    `"Religion"'
label var ro02a_edattain `"Highest level of schooling completed"'
label var ro02a_schtype1 `"Type of  ownership of the highest graduated school"'
label var ro02a_edattend `"Name and type of educational institution attended"'
label var ro02a_schtype2 `"Type of ownership of the educational institution attended"'
label var ro02a_empstat  `"Employment status in week of census"'
label var ro02a_hrswork  `"Number of hours worked on current activity during the reference period (March 11"'
label var ro02a_occ1     `"Occupation, 1 digit"'
label var ro02a_occ2     `"Occupation, 2 digits"'
label var ro02a_occ3     `"Occupation, 3 digits"'
label var ro02a_occ4     `"Occupation, 4 digits"'
label var ro02a_classwk  `"Class of worker"'
label var ro02a_ind      `"Industry"'
label var ro02a_wkloc    `"Location of the working place"'
label var ro02a_wkown    `"Ownership structure of working place"'
label var ro02a_durunemp `"Duration of unemployment"'
label var ro02a_benunemp `"Benefits related to being unemployed"'
label var ro02a_empyear  `"Employment status most of preceding year"'
label var ro02a_empstatu `"Usual employment status in preceding year"'
label var ro02a_classwku `"Usual class of worker during preceding year"'
label var ro02a_tenure   `"Tenure status of the households in dwellings"'
label var ro02a_rent     `"Monthly rent"'
label var ro02a_age      `"Age"'
label var ro02a_relatef  `"Relationship with the nucleus head"'
label var ro02a_famnum   `"Number of the family nucleus"'
label var ro02a_famtype  `"Type of the family nucleus"'
label var ro02a_reslegc  `"County of legal residence"'

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

label define ro02a_pern_lbl 01 `"1"'
label define ro02a_pern_lbl 02 `"2"', add
label define ro02a_pern_lbl 03 `"3"', add
label define ro02a_pern_lbl 04 `"4"', add
label define ro02a_pern_lbl 05 `"5"', add
label define ro02a_pern_lbl 06 `"6"', add
label define ro02a_pern_lbl 07 `"7"', add
label define ro02a_pern_lbl 08 `"8"', add
label define ro02a_pern_lbl 09 `"9"', add
label define ro02a_pern_lbl 10 `"10"', add
label define ro02a_pern_lbl 11 `"11"', add
label define ro02a_pern_lbl 12 `"12"', add
label define ro02a_pern_lbl 13 `"13"', add
label define ro02a_pern_lbl 14 `"14"', add
label define ro02a_pern_lbl 15 `"15"', add
label define ro02a_pern_lbl 16 `"16"', add
label define ro02a_pern_lbl 17 `"17"', add
label define ro02a_pern_lbl 18 `"18"', add
label define ro02a_pern_lbl 19 `"19"', add
label define ro02a_pern_lbl 20 `"20"', add
label define ro02a_pern_lbl 21 `"21"', add
label define ro02a_pern_lbl 24 `"24"', add
label values ro02a_pern ro02a_pern_lbl

label define ro02a_urban_lbl 1 `"Urban area"'
label define ro02a_urban_lbl 2 `"Rural area"', add
label values ro02a_urban ro02a_urban_lbl

label define ro02a_region_lbl 1 `"North-East"'
label define ro02a_region_lbl 2 `"South-East"', add
label define ro02a_region_lbl 3 `"South"', add
label define ro02a_region_lbl 4 `"South-West"', add
label define ro02a_region_lbl 5 `"West"', add
label define ro02a_region_lbl 6 `"North-West"', add
label define ro02a_region_lbl 7 `"Center"', add
label define ro02a_region_lbl 8 `"Bucharest"', add
label values ro02a_region ro02a_region_lbl

label define ro02a_county_lbl 01 `"Alba"'
label define ro02a_county_lbl 02 `"Arad"', add
label define ro02a_county_lbl 03 `"Arges"', add
label define ro02a_county_lbl 04 `"Bacau"', add
label define ro02a_county_lbl 05 `"Bihor"', add
label define ro02a_county_lbl 06 `"Bistrita Nasaud"', add
label define ro02a_county_lbl 07 `"Botosani"', add
label define ro02a_county_lbl 08 `"Brasov"', add
label define ro02a_county_lbl 09 `"Braila"', add
label define ro02a_county_lbl 10 `"Buzau"', add
label define ro02a_county_lbl 11 `"Caras Severin"', add
label define ro02a_county_lbl 12 `"Cluj"', add
label define ro02a_county_lbl 13 `"Constanta"', add
label define ro02a_county_lbl 14 `"Covasna"', add
label define ro02a_county_lbl 15 `"Dimbovita"', add
label define ro02a_county_lbl 16 `"Dolj"', add
label define ro02a_county_lbl 17 `"Galati"', add
label define ro02a_county_lbl 18 `"Gorj"', add
label define ro02a_county_lbl 19 `"Harghita"', add
label define ro02a_county_lbl 20 `"Hunedoara"', add
label define ro02a_county_lbl 21 `"Ialomita"', add
label define ro02a_county_lbl 22 `"Iasi"', add
label define ro02a_county_lbl 23 `"Ilfov"', add
label define ro02a_county_lbl 24 `"Maramures"', add
label define ro02a_county_lbl 25 `"Mehedinti"', add
label define ro02a_county_lbl 26 `"Mures"', add
label define ro02a_county_lbl 27 `"Neamt"', add
label define ro02a_county_lbl 28 `"Olt"', add
label define ro02a_county_lbl 29 `"Prahova"', add
label define ro02a_county_lbl 30 `"Satu Mare"', add
label define ro02a_county_lbl 31 `"Salaj"', add
label define ro02a_county_lbl 32 `"Sibiu"', add
label define ro02a_county_lbl 33 `"Suceava"', add
label define ro02a_county_lbl 34 `"Teleorman"', add
label define ro02a_county_lbl 35 `"Timis"', add
label define ro02a_county_lbl 36 `"Tulcea"', add
label define ro02a_county_lbl 37 `"Vaslui"', add
label define ro02a_county_lbl 38 `"Valcea"', add
label define ro02a_county_lbl 39 `"Vrancea"', add
label define ro02a_county_lbl 41 `"Bucharest Sector 1"', add
label define ro02a_county_lbl 42 `"Bucharest Sector 2"', add
label define ro02a_county_lbl 43 `"Bucharest Sector 3"', add
label define ro02a_county_lbl 44 `"Bucharest Sector 4"', add
label define ro02a_county_lbl 45 `"Bucharest Sector 5"', add
label define ro02a_county_lbl 46 `"Bucharest Sector 6"', add
label define ro02a_county_lbl 51 `"Calarasi"', add
label define ro02a_county_lbl 52 `"Giurgiu"', add
label values ro02a_county ro02a_county_lbl

label define ro02a_hhnumo_lbl 1 `"1"'
label define ro02a_hhnumo_lbl 2 `"2"', add
label define ro02a_hhnumo_lbl 3 `"3"', add
label define ro02a_hhnumo_lbl 4 `"4"', add
label define ro02a_hhnumo_lbl 5 `"5"', add
label define ro02a_hhnumo_lbl 6 `"6"', add
label define ro02a_hhnumo_lbl 7 `"7"', add
label define ro02a_hhnumo_lbl 8 `"8"', add
label define ro02a_hhnumo_lbl 9 `"9"', add
label values ro02a_hhnumo ro02a_hhnumo_lbl

label define ro02a_desigb_lbl 1 `"For living"'
label define ro02a_desigb_lbl 2 `"Other designation, but having dwellings"', add
label define ro02a_desigb_lbl 3 `"Collective housing units where dwellings exist"', add
label define ro02a_desigb_lbl 4 `"Building under construction, partially occupied"', add
label define ro02a_desigb_lbl 9 `"Non-conventional housing unit"', add
label values ro02a_desigb ro02a_desigb_lbl

label define ro02a_yrconst_lbl 1800 `"1800 or earlier"'
label define ro02a_yrconst_lbl 1801 `"1801"', add
label define ro02a_yrconst_lbl 1802 `"1802"', add
label define ro02a_yrconst_lbl 1803 `"1803"', add
label define ro02a_yrconst_lbl 1804 `"1804"', add
label define ro02a_yrconst_lbl 1805 `"1805"', add
label define ro02a_yrconst_lbl 1806 `"1806"', add
label define ro02a_yrconst_lbl 1807 `"1807"', add
label define ro02a_yrconst_lbl 1808 `"1808"', add
label define ro02a_yrconst_lbl 1809 `"1809"', add
label define ro02a_yrconst_lbl 1810 `"1810"', add
label define ro02a_yrconst_lbl 1811 `"1811"', add
label define ro02a_yrconst_lbl 1812 `"1812"', add
label define ro02a_yrconst_lbl 1813 `"1813"', add
label define ro02a_yrconst_lbl 1814 `"1814"', add
label define ro02a_yrconst_lbl 1815 `"1815"', add
label define ro02a_yrconst_lbl 1816 `"1816"', add
label define ro02a_yrconst_lbl 1817 `"1817"', add
label define ro02a_yrconst_lbl 1818 `"1818"', add
label define ro02a_yrconst_lbl 1819 `"1819"', add
label define ro02a_yrconst_lbl 1820 `"1820"', add
label define ro02a_yrconst_lbl 1821 `"1821"', add
label define ro02a_yrconst_lbl 1822 `"1822"', add
label define ro02a_yrconst_lbl 1823 `"1823"', add
label define ro02a_yrconst_lbl 1824 `"1824"', add
label define ro02a_yrconst_lbl 1825 `"1825"', add
label define ro02a_yrconst_lbl 1826 `"1826"', add
label define ro02a_yrconst_lbl 1827 `"1827"', add
label define ro02a_yrconst_lbl 1828 `"1828"', add
label define ro02a_yrconst_lbl 1829 `"1829"', add
label define ro02a_yrconst_lbl 1830 `"1830"', add
label define ro02a_yrconst_lbl 1831 `"1831"', add
label define ro02a_yrconst_lbl 1832 `"1832"', add
label define ro02a_yrconst_lbl 1833 `"1833"', add
label define ro02a_yrconst_lbl 1834 `"1834"', add
label define ro02a_yrconst_lbl 1835 `"1835"', add
label define ro02a_yrconst_lbl 1836 `"1836"', add
label define ro02a_yrconst_lbl 1837 `"1837"', add
label define ro02a_yrconst_lbl 1838 `"1838"', add
label define ro02a_yrconst_lbl 1839 `"1839"', add
label define ro02a_yrconst_lbl 1840 `"1840"', add
label define ro02a_yrconst_lbl 1841 `"1841"', add
label define ro02a_yrconst_lbl 1842 `"1842"', add
label define ro02a_yrconst_lbl 1843 `"1843"', add
label define ro02a_yrconst_lbl 1844 `"1844"', add
label define ro02a_yrconst_lbl 1845 `"1845"', add
label define ro02a_yrconst_lbl 1846 `"1846"', add
label define ro02a_yrconst_lbl 1847 `"1847"', add
label define ro02a_yrconst_lbl 1848 `"1848"', add
label define ro02a_yrconst_lbl 1849 `"1849"', add
label define ro02a_yrconst_lbl 1850 `"1850"', add
label define ro02a_yrconst_lbl 1851 `"1851"', add
label define ro02a_yrconst_lbl 1852 `"1852"', add
label define ro02a_yrconst_lbl 1853 `"1853"', add
label define ro02a_yrconst_lbl 1854 `"1854"', add
label define ro02a_yrconst_lbl 1855 `"1855"', add
label define ro02a_yrconst_lbl 1856 `"1856"', add
label define ro02a_yrconst_lbl 1857 `"1857"', add
label define ro02a_yrconst_lbl 1858 `"1858"', add
label define ro02a_yrconst_lbl 1859 `"1859"', add
label define ro02a_yrconst_lbl 1860 `"1860"', add
label define ro02a_yrconst_lbl 1861 `"1861"', add
label define ro02a_yrconst_lbl 1862 `"1862"', add
label define ro02a_yrconst_lbl 1863 `"1863"', add
label define ro02a_yrconst_lbl 1864 `"1864"', add
label define ro02a_yrconst_lbl 1865 `"1865"', add
label define ro02a_yrconst_lbl 1866 `"1866"', add
label define ro02a_yrconst_lbl 1867 `"1867"', add
label define ro02a_yrconst_lbl 1868 `"1868"', add
label define ro02a_yrconst_lbl 1869 `"1869"', add
label define ro02a_yrconst_lbl 1870 `"1870"', add
label define ro02a_yrconst_lbl 1871 `"1871"', add
label define ro02a_yrconst_lbl 1872 `"1872"', add
label define ro02a_yrconst_lbl 1873 `"1873"', add
label define ro02a_yrconst_lbl 1874 `"1874"', add
label define ro02a_yrconst_lbl 1875 `"1875"', add
label define ro02a_yrconst_lbl 1876 `"1876"', add
label define ro02a_yrconst_lbl 1877 `"1877"', add
label define ro02a_yrconst_lbl 1878 `"1878"', add
label define ro02a_yrconst_lbl 1879 `"1879"', add
label define ro02a_yrconst_lbl 1880 `"1880"', add
label define ro02a_yrconst_lbl 1881 `"1881"', add
label define ro02a_yrconst_lbl 1882 `"1882"', add
label define ro02a_yrconst_lbl 1883 `"1883"', add
label define ro02a_yrconst_lbl 1884 `"1884"', add
label define ro02a_yrconst_lbl 1885 `"1885"', add
label define ro02a_yrconst_lbl 1886 `"1886"', add
label define ro02a_yrconst_lbl 1887 `"1887"', add
label define ro02a_yrconst_lbl 1888 `"1888"', add
label define ro02a_yrconst_lbl 1889 `"1889"', add
label define ro02a_yrconst_lbl 1890 `"1890"', add
label define ro02a_yrconst_lbl 1891 `"1891"', add
label define ro02a_yrconst_lbl 1892 `"1892"', add
label define ro02a_yrconst_lbl 1893 `"1893"', add
label define ro02a_yrconst_lbl 1894 `"1894"', add
label define ro02a_yrconst_lbl 1895 `"1895"', add
label define ro02a_yrconst_lbl 1896 `"1896"', add
label define ro02a_yrconst_lbl 1897 `"1897"', add
label define ro02a_yrconst_lbl 1898 `"1898"', add
label define ro02a_yrconst_lbl 1899 `"1899"', add
label define ro02a_yrconst_lbl 1900 `"1900"', add
label define ro02a_yrconst_lbl 1901 `"1901"', add
label define ro02a_yrconst_lbl 1902 `"1902"', add
label define ro02a_yrconst_lbl 1903 `"1903"', add
label define ro02a_yrconst_lbl 1904 `"1904"', add
label define ro02a_yrconst_lbl 1905 `"1905"', add
label define ro02a_yrconst_lbl 1906 `"1906"', add
label define ro02a_yrconst_lbl 1907 `"1907"', add
label define ro02a_yrconst_lbl 1908 `"1908"', add
label define ro02a_yrconst_lbl 1909 `"1909"', add
label define ro02a_yrconst_lbl 1910 `"1910"', add
label define ro02a_yrconst_lbl 1911 `"1911"', add
label define ro02a_yrconst_lbl 1912 `"1912"', add
label define ro02a_yrconst_lbl 1913 `"1913"', add
label define ro02a_yrconst_lbl 1914 `"1914"', add
label define ro02a_yrconst_lbl 1915 `"1915"', add
label define ro02a_yrconst_lbl 1916 `"1916"', add
label define ro02a_yrconst_lbl 1917 `"1917"', add
label define ro02a_yrconst_lbl 1918 `"1918"', add
label define ro02a_yrconst_lbl 1919 `"1919"', add
label define ro02a_yrconst_lbl 1920 `"1920"', add
label define ro02a_yrconst_lbl 1921 `"1921"', add
label define ro02a_yrconst_lbl 1922 `"1922"', add
label define ro02a_yrconst_lbl 1923 `"1923"', add
label define ro02a_yrconst_lbl 1924 `"1924"', add
label define ro02a_yrconst_lbl 1925 `"1925"', add
label define ro02a_yrconst_lbl 1926 `"1926"', add
label define ro02a_yrconst_lbl 1927 `"1927"', add
label define ro02a_yrconst_lbl 1928 `"1928"', add
label define ro02a_yrconst_lbl 1929 `"1929"', add
label define ro02a_yrconst_lbl 1930 `"1930"', add
label define ro02a_yrconst_lbl 1931 `"1931"', add
label define ro02a_yrconst_lbl 1932 `"1932"', add
label define ro02a_yrconst_lbl 1933 `"1933"', add
label define ro02a_yrconst_lbl 1934 `"1934"', add
label define ro02a_yrconst_lbl 1935 `"1935"', add
label define ro02a_yrconst_lbl 1936 `"1936"', add
label define ro02a_yrconst_lbl 1937 `"1937"', add
label define ro02a_yrconst_lbl 1938 `"1938"', add
label define ro02a_yrconst_lbl 1939 `"1939"', add
label define ro02a_yrconst_lbl 1940 `"1940"', add
label define ro02a_yrconst_lbl 1941 `"1941"', add
label define ro02a_yrconst_lbl 1942 `"1942"', add
label define ro02a_yrconst_lbl 1943 `"1943"', add
label define ro02a_yrconst_lbl 1944 `"1944"', add
label define ro02a_yrconst_lbl 1945 `"1945"', add
label define ro02a_yrconst_lbl 1946 `"1946"', add
label define ro02a_yrconst_lbl 1947 `"1947"', add
label define ro02a_yrconst_lbl 1948 `"1948"', add
label define ro02a_yrconst_lbl 1949 `"1949"', add
label define ro02a_yrconst_lbl 1950 `"1950"', add
label define ro02a_yrconst_lbl 1951 `"1951"', add
label define ro02a_yrconst_lbl 1952 `"1952"', add
label define ro02a_yrconst_lbl 1953 `"1953"', add
label define ro02a_yrconst_lbl 1954 `"1954"', add
label define ro02a_yrconst_lbl 1955 `"1955"', add
label define ro02a_yrconst_lbl 1956 `"1956"', add
label define ro02a_yrconst_lbl 1957 `"1957"', add
label define ro02a_yrconst_lbl 1958 `"1958"', add
label define ro02a_yrconst_lbl 1959 `"1959"', add
label define ro02a_yrconst_lbl 1960 `"1960"', add
label define ro02a_yrconst_lbl 1961 `"1961"', add
label define ro02a_yrconst_lbl 1962 `"1962"', add
label define ro02a_yrconst_lbl 1963 `"1963"', add
label define ro02a_yrconst_lbl 1964 `"1964"', add
label define ro02a_yrconst_lbl 1965 `"1965"', add
label define ro02a_yrconst_lbl 1966 `"1966"', add
label define ro02a_yrconst_lbl 1967 `"1967"', add
label define ro02a_yrconst_lbl 1968 `"1968"', add
label define ro02a_yrconst_lbl 1969 `"1969"', add
label define ro02a_yrconst_lbl 1970 `"1970"', add
label define ro02a_yrconst_lbl 1971 `"1971"', add
label define ro02a_yrconst_lbl 1972 `"1972"', add
label define ro02a_yrconst_lbl 1973 `"1973"', add
label define ro02a_yrconst_lbl 1974 `"1974"', add
label define ro02a_yrconst_lbl 1975 `"1975"', add
label define ro02a_yrconst_lbl 1976 `"1976"', add
label define ro02a_yrconst_lbl 1977 `"1977"', add
label define ro02a_yrconst_lbl 1978 `"1978"', add
label define ro02a_yrconst_lbl 1979 `"1979"', add
label define ro02a_yrconst_lbl 1980 `"1980"', add
label define ro02a_yrconst_lbl 1981 `"1981"', add
label define ro02a_yrconst_lbl 1982 `"1982"', add
label define ro02a_yrconst_lbl 1983 `"1983"', add
label define ro02a_yrconst_lbl 1984 `"1984"', add
label define ro02a_yrconst_lbl 1985 `"1985"', add
label define ro02a_yrconst_lbl 1986 `"1986"', add
label define ro02a_yrconst_lbl 1987 `"1987"', add
label define ro02a_yrconst_lbl 1988 `"1988"', add
label define ro02a_yrconst_lbl 1989 `"1989"', add
label define ro02a_yrconst_lbl 1990 `"1990"', add
label define ro02a_yrconst_lbl 1991 `"1991"', add
label define ro02a_yrconst_lbl 1992 `"1992"', add
label define ro02a_yrconst_lbl 1993 `"1993"', add
label define ro02a_yrconst_lbl 1994 `"1994"', add
label define ro02a_yrconst_lbl 1995 `"1995"', add
label define ro02a_yrconst_lbl 1996 `"1996"', add
label define ro02a_yrconst_lbl 1997 `"1997"', add
label define ro02a_yrconst_lbl 1998 `"1998"', add
label define ro02a_yrconst_lbl 1999 `"1999"', add
label define ro02a_yrconst_lbl 2000 `"2000"', add
label define ro02a_yrconst_lbl 2001 `"2001"', add
label define ro02a_yrconst_lbl 2002 `"2002"', add
label define ro02a_yrconst_lbl 9998 `"Unknown"', add
label define ro02a_yrconst_lbl 9999 `"NIU (not in universe)"', add
label values ro02a_yrconst ro02a_yrconst_lbl

label define ro02a_walls_lbl 1 `"Reinforced concrete, precast concrete panels, or skeleton framed concrete"'
label define ro02a_walls_lbl 2 `"Brick, stone, or substitutes, with dividing panels between floors made of reinforced concrete (metallic beams)"', add
label define ro02a_walls_lbl 3 `"Brick, stone, or substitutes, with dividing panels between floors made of wood"', add
label define ro02a_walls_lbl 4 `"Wood (beams, logs etc.)"', add
label define ro02a_walls_lbl 5 `"Saplings plastered with wet clay, adobe, and other materials; wood pressed panels; rolled mud bricks; etc."', add
label define ro02a_walls_lbl 9 `"NIU (not in universe)"', add
label values ro02a_walls ro02a_walls_lbl

label define ro02a_bldtype_lbl 0 `"Non conventional housing unit"'
label define ro02a_bldtype_lbl 1 `"For living with 1 dwelling"', add
label define ro02a_bldtype_lbl 2 `"For living with 2 or more dwellings"', add
label define ro02a_bldtype_lbl 3 `"For living - block"', add
label define ro02a_bldtype_lbl 4 `"With other designation, but having dwellings"', add
label define ro02a_bldtype_lbl 5 `"Collective housing units where dwellings are existing"', add
label values ro02a_bldtype ro02a_bldtype_lbl

label define ro02a_roomsbb_lbl 00 `"0"'
label define ro02a_roomsbb_lbl 01 `"1"', add
label define ro02a_roomsbb_lbl 02 `"2"', add
label define ro02a_roomsbb_lbl 03 `"3"', add
label define ro02a_roomsbb_lbl 04 `"4"', add
label define ro02a_roomsbb_lbl 05 `"5"', add
label define ro02a_roomsbb_lbl 06 `"6"', add
label define ro02a_roomsbb_lbl 07 `"7"', add
label define ro02a_roomsbb_lbl 08 `"8"', add
label define ro02a_roomsbb_lbl 09 `"9"', add
label define ro02a_roomsbb_lbl 10 `"10"', add
label define ro02a_roomsbb_lbl 11 `"11+"', add
label values ro02a_roomsbb ro02a_roomsbb_lbl

label define ro02a_livareab_lbl 00000 `"NIU (not in universe)"'
label values ro02a_livareab ro02a_livareab_lbl

label define ro02a_busareab_lbl 004 `"4"'
label define ro02a_busareab_lbl 005 `"5"', add
label define ro02a_busareab_lbl 006 `"6"', add
label define ro02a_busareab_lbl 007 `"7"', add
label define ro02a_busareab_lbl 008 `"8"', add
label define ro02a_busareab_lbl 009 `"9"', add
label define ro02a_busareab_lbl 010 `"10"', add
label define ro02a_busareab_lbl 011 `"11"', add
label define ro02a_busareab_lbl 012 `"12"', add
label define ro02a_busareab_lbl 013 `"13"', add
label define ro02a_busareab_lbl 014 `"14"', add
label define ro02a_busareab_lbl 015 `"15"', add
label define ro02a_busareab_lbl 016 `"16"', add
label define ro02a_busareab_lbl 017 `"17"', add
label define ro02a_busareab_lbl 018 `"18"', add
label define ro02a_busareab_lbl 019 `"19"', add
label define ro02a_busareab_lbl 020 `"20"', add
label define ro02a_busareab_lbl 021 `"21"', add
label define ro02a_busareab_lbl 022 `"22"', add
label define ro02a_busareab_lbl 023 `"23"', add
label define ro02a_busareab_lbl 024 `"24"', add
label define ro02a_busareab_lbl 025 `"25"', add
label define ro02a_busareab_lbl 026 `"26"', add
label define ro02a_busareab_lbl 027 `"27"', add
label define ro02a_busareab_lbl 028 `"28"', add
label define ro02a_busareab_lbl 029 `"29"', add
label define ro02a_busareab_lbl 030 `"30"', add
label define ro02a_busareab_lbl 031 `"31"', add
label define ro02a_busareab_lbl 032 `"32"', add
label define ro02a_busareab_lbl 033 `"33"', add
label define ro02a_busareab_lbl 034 `"34"', add
label define ro02a_busareab_lbl 035 `"35"', add
label define ro02a_busareab_lbl 036 `"36"', add
label define ro02a_busareab_lbl 037 `"37"', add
label define ro02a_busareab_lbl 038 `"38"', add
label define ro02a_busareab_lbl 039 `"39"', add
label define ro02a_busareab_lbl 040 `"40"', add
label define ro02a_busareab_lbl 041 `"41"', add
label define ro02a_busareab_lbl 042 `"42"', add
label define ro02a_busareab_lbl 043 `"43"', add
label define ro02a_busareab_lbl 044 `"44"', add
label define ro02a_busareab_lbl 045 `"45"', add
label define ro02a_busareab_lbl 046 `"46"', add
label define ro02a_busareab_lbl 047 `"47"', add
label define ro02a_busareab_lbl 048 `"48"', add
label define ro02a_busareab_lbl 049 `"49"', add
label define ro02a_busareab_lbl 050 `"50"', add
label define ro02a_busareab_lbl 051 `"51"', add
label define ro02a_busareab_lbl 052 `"52"', add
label define ro02a_busareab_lbl 053 `"53"', add
label define ro02a_busareab_lbl 054 `"54"', add
label define ro02a_busareab_lbl 055 `"55"', add
label define ro02a_busareab_lbl 056 `"56"', add
label define ro02a_busareab_lbl 057 `"57"', add
label define ro02a_busareab_lbl 058 `"58"', add
label define ro02a_busareab_lbl 059 `"59"', add
label define ro02a_busareab_lbl 060 `"60"', add
label define ro02a_busareab_lbl 061 `"61"', add
label define ro02a_busareab_lbl 062 `"62"', add
label define ro02a_busareab_lbl 063 `"63"', add
label define ro02a_busareab_lbl 064 `"64"', add
label define ro02a_busareab_lbl 065 `"65"', add
label define ro02a_busareab_lbl 066 `"66"', add
label define ro02a_busareab_lbl 067 `"67"', add
label define ro02a_busareab_lbl 068 `"68"', add
label define ro02a_busareab_lbl 069 `"69"', add
label define ro02a_busareab_lbl 070 `"70"', add
label define ro02a_busareab_lbl 071 `"71"', add
label define ro02a_busareab_lbl 072 `"72"', add
label define ro02a_busareab_lbl 073 `"73"', add
label define ro02a_busareab_lbl 074 `"74"', add
label define ro02a_busareab_lbl 075 `"75"', add
label define ro02a_busareab_lbl 076 `"76"', add
label define ro02a_busareab_lbl 077 `"77"', add
label define ro02a_busareab_lbl 078 `"78"', add
label define ro02a_busareab_lbl 079 `"79"', add
label define ro02a_busareab_lbl 080 `"80"', add
label define ro02a_busareab_lbl 081 `"81"', add
label define ro02a_busareab_lbl 082 `"82"', add
label define ro02a_busareab_lbl 083 `"83"', add
label define ro02a_busareab_lbl 084 `"84"', add
label define ro02a_busareab_lbl 085 `"85"', add
label define ro02a_busareab_lbl 086 `"86"', add
label define ro02a_busareab_lbl 087 `"87"', add
label define ro02a_busareab_lbl 088 `"88"', add
label define ro02a_busareab_lbl 089 `"89"', add
label define ro02a_busareab_lbl 090 `"90"', add
label define ro02a_busareab_lbl 091 `"91"', add
label define ro02a_busareab_lbl 092 `"92"', add
label define ro02a_busareab_lbl 093 `"93"', add
label define ro02a_busareab_lbl 094 `"94"', add
label define ro02a_busareab_lbl 095 `"95"', add
label define ro02a_busareab_lbl 096 `"96"', add
label define ro02a_busareab_lbl 097 `"97"', add
label define ro02a_busareab_lbl 098 `"98"', add
label define ro02a_busareab_lbl 099 `"99"', add
label define ro02a_busareab_lbl 100 `"100"', add
label define ro02a_busareab_lbl 101 `"101"', add
label define ro02a_busareab_lbl 102 `"102"', add
label define ro02a_busareab_lbl 103 `"103"', add
label define ro02a_busareab_lbl 104 `"104"', add
label define ro02a_busareab_lbl 105 `"105"', add
label define ro02a_busareab_lbl 106 `"106"', add
label define ro02a_busareab_lbl 107 `"107"', add
label define ro02a_busareab_lbl 108 `"108"', add
label define ro02a_busareab_lbl 110 `"110"', add
label define ro02a_busareab_lbl 112 `"112"', add
label define ro02a_busareab_lbl 113 `"113"', add
label define ro02a_busareab_lbl 114 `"114"', add
label define ro02a_busareab_lbl 115 `"115"', add
label define ro02a_busareab_lbl 117 `"117"', add
label define ro02a_busareab_lbl 118 `"118"', add
label define ro02a_busareab_lbl 119 `"119"', add
label define ro02a_busareab_lbl 120 `"120"', add
label define ro02a_busareab_lbl 125 `"125"', add
label define ro02a_busareab_lbl 126 `"126"', add
label define ro02a_busareab_lbl 128 `"128"', add
label define ro02a_busareab_lbl 130 `"130"', add
label define ro02a_busareab_lbl 132 `"132"', add
label define ro02a_busareab_lbl 133 `"133"', add
label define ro02a_busareab_lbl 134 `"134"', add
label define ro02a_busareab_lbl 135 `"135"', add
label define ro02a_busareab_lbl 136 `"136"', add
label define ro02a_busareab_lbl 137 `"137"', add
label define ro02a_busareab_lbl 138 `"138"', add
label define ro02a_busareab_lbl 139 `"139"', add
label define ro02a_busareab_lbl 140 `"140"', add
label define ro02a_busareab_lbl 142 `"142"', add
label define ro02a_busareab_lbl 143 `"143"', add
label define ro02a_busareab_lbl 145 `"145"', add
label define ro02a_busareab_lbl 146 `"146"', add
label define ro02a_busareab_lbl 150 `"150"', add
label define ro02a_busareab_lbl 153 `"153"', add
label define ro02a_busareab_lbl 155 `"155"', add
label define ro02a_busareab_lbl 157 `"157"', add
label define ro02a_busareab_lbl 160 `"160+"', add
label define ro02a_busareab_lbl 999 `"NIU (not in universe)"', add
label values ro02a_busareab ro02a_busareab_lbl

label define ro02a_dwnocc_lbl 01 `"1"'
label define ro02a_dwnocc_lbl 02 `"2"', add
label define ro02a_dwnocc_lbl 03 `"3"', add
label define ro02a_dwnocc_lbl 04 `"4"', add
label define ro02a_dwnocc_lbl 05 `"5"', add
label define ro02a_dwnocc_lbl 06 `"6"', add
label define ro02a_dwnocc_lbl 07 `"7"', add
label define ro02a_dwnocc_lbl 08 `"8"', add
label define ro02a_dwnocc_lbl 09 `"9"', add
label define ro02a_dwnocc_lbl 10 `"10"', add
label define ro02a_dwnocc_lbl 11 `"11"', add
label define ro02a_dwnocc_lbl 12 `"12"', add
label define ro02a_dwnocc_lbl 13 `"13"', add
label define ro02a_dwnocc_lbl 14 `"14"', add
label define ro02a_dwnocc_lbl 15 `"15"', add
label define ro02a_dwnocc_lbl 16 `"16"', add
label define ro02a_dwnocc_lbl 17 `"17"', add
label define ro02a_dwnocc_lbl 18 `"18"', add
label define ro02a_dwnocc_lbl 19 `"19"', add
label define ro02a_dwnocc_lbl 20 `"20"', add
label define ro02a_dwnocc_lbl 21 `"21"', add
label define ro02a_dwnocc_lbl 22 `"22"', add
label define ro02a_dwnocc_lbl 23 `"23"', add
label define ro02a_dwnocc_lbl 24 `"24"', add
label define ro02a_dwnocc_lbl 25 `"25"', add
label define ro02a_dwnocc_lbl 26 `"26"', add
label define ro02a_dwnocc_lbl 27 `"27"', add
label define ro02a_dwnocc_lbl 28 `"28"', add
label define ro02a_dwnocc_lbl 29 `"29"', add
label define ro02a_dwnocc_lbl 30 `"30+"', add
label values ro02a_dwnocc ro02a_dwnocc_lbl

label define ro02a_unconvb_lbl 0 `"0"'
label define ro02a_unconvb_lbl 1 `"1"', add
label define ro02a_unconvb_lbl 2 `"2"', add
label define ro02a_unconvb_lbl 3 `"3+"', add
label values ro02a_unconvb ro02a_unconvb_lbl

label define ro02a_dwnbspsb_lbl 00 `"0"'
label define ro02a_dwnbspsb_lbl 01 `"1"', add
label define ro02a_dwnbspsb_lbl 02 `"2"', add
label define ro02a_dwnbspsb_lbl 03 `"3"', add
label define ro02a_dwnbspsb_lbl 04 `"4"', add
label define ro02a_dwnbspsb_lbl 05 `"5"', add
label define ro02a_dwnbspsb_lbl 06 `"6"', add
label define ro02a_dwnbspsb_lbl 07 `"7"', add
label define ro02a_dwnbspsb_lbl 08 `"8"', add
label define ro02a_dwnbspsb_lbl 09 `"9"', add
label define ro02a_dwnbspsb_lbl 10 `"10+"', add
label values ro02a_dwnbspsb ro02a_dwnbspsb_lbl

label define ro02a_dwnbspsb_lbl 00 `"0"'
label define ro02a_dwnbspsb_lbl 01 `"1"', add
label define ro02a_dwnbspsb_lbl 02 `"2"', add
label define ro02a_dwnbspsb_lbl 03 `"3"', add
label define ro02a_dwnbspsb_lbl 04 `"4"', add
label define ro02a_dwnbspsb_lbl 05 `"5"', add
label define ro02a_dwnbspsb_lbl 06 `"6"', add
label define ro02a_dwnbspsb_lbl 07 `"7"', add
label define ro02a_dwnbspsb_lbl 08 `"8"', add
label define ro02a_dwnbspsb_lbl 09 `"9"', add
label define ro02a_dwnbspsb_lbl 10 `"10+"', add
label values ro02a_dwnbspsb ro02a_dwnbspsb_lbl

label define ro02a_ownerps_lbl 1 `"Private"'
label define ro02a_ownerps_lbl 2 `"Public"', add
label define ro02a_ownerps_lbl 3 `"Private group"', add
label define ro02a_ownerps_lbl 4 `"Religious cults"', add
label define ro02a_ownerps_lbl 5 `"Mixed"', add
label define ro02a_ownerps_lbl 9 `"NIU (not in universe)"', add
label values ro02a_ownerps ro02a_ownerps_lbl

label define ro02a_ownerb_lbl 1 `"Private"'
label define ro02a_ownerb_lbl 2 `"Public"', add
label define ro02a_ownerb_lbl 3 `"Private group"', add
label define ro02a_ownerb_lbl 4 `"Religious cults"', add
label define ro02a_ownerb_lbl 5 `"Mixed"', add
label values ro02a_ownerb ro02a_ownerb_lbl

label define ro02a_waterb_lbl 1 `"Public network"'
label define ro02a_waterb_lbl 2 `"Own system"', add
label define ro02a_waterb_lbl 3 `"Other situation (mixed)"', add
label define ro02a_waterb_lbl 4 `"Without water supply system"', add
label define ro02a_waterb_lbl 9 `"NIU (not in universe)"', add
label values ro02a_waterb ro02a_waterb_lbl

label define ro02a_hotwatb_lbl 1 `"Yes"'
label define ro02a_hotwatb_lbl 2 `"No"', add
label values ro02a_hotwatb ro02a_hotwatb_lbl

label define ro02a_sewerb_lbl 1 `"Public network"'
label define ro02a_sewerb_lbl 2 `"Own system"', add
label define ro02a_sewerb_lbl 3 `"Other situation (mixed)"', add
label define ro02a_sewerb_lbl 4 `"Mixed"', add
label define ro02a_sewerb_lbl 5 `"Without sewerage installation"', add
label define ro02a_sewerb_lbl 9 `"NIU (not in universe)"', add
label values ro02a_sewerb ro02a_sewerb_lbl

label define ro02a_electb_lbl 1 `"Yes"'
label define ro02a_electb_lbl 2 `"No"', add
label values ro02a_electb ro02a_electb_lbl

label define ro02a_gasb_lbl 1 `"Yes"'
label define ro02a_gasb_lbl 2 `"No"', add
label values ro02a_gasb ro02a_gasb_lbl

label define ro02a_heatb_lbl 1 `"Public or local heating"'
label define ro02a_heatb_lbl 2 `"Own thermal station with gas"', add
label define ro02a_heatb_lbl 3 `"Own thermal station with solid fuel"', add
label define ro02a_heatb_lbl 4 `"Own thermal station with liquid fuel"', add
label define ro02a_heatb_lbl 5 `"Mixed"', add
label define ro02a_heatb_lbl 6 `"Without thermal heating"', add
label define ro02a_heatb_lbl 9 `"Unknown"', add
label values ro02a_heatb ro02a_heatb_lbl

label define ro02a_util_lbl 01 `"Electric installation, piped gas from public network, water supply system, sewerage installation"'
label define ro02a_util_lbl 02 `"Electric installation, water supply system, sewerage installation"', add
label define ro02a_util_lbl 03 `"Piped gas from public network, water supply system, sewerage installation"', add
label define ro02a_util_lbl 04 `"Electric installation, piped gas from public network, water supply system"', add
label define ro02a_util_lbl 05 `"Electric installation, piped gas from public network, water supply system, sewerage installation"', add
label define ro02a_util_lbl 06 `"Water supply system, sewerage installation"', add
label define ro02a_util_lbl 07 `"Electric installation, water supply system"', add
label define ro02a_util_lbl 09 `"Electric installation, sewerage installation"', add
label define ro02a_util_lbl 10 `"Piped gas from public network, sewerage installation"', add
label define ro02a_util_lbl 11 `"Electric installation, piped gas from public network"', add
label define ro02a_util_lbl 12 `"Electric installation"', add
label define ro02a_util_lbl 13 `"Without installation facilities"', add
label define ro02a_util_lbl 14 `"Other situation/Response suppressed"', add
label define ro02a_util_lbl 99 `"NIU (not in universe)"', add
label values ro02a_util ro02a_util_lbl

label define ro02a_occup_lbl 0 `"NIU (not in universe)"'
label define ro02a_occup_lbl 1 `"Entirely occupied"', add
label define ro02a_occup_lbl 2 `"Partially occupied"', add
label define ro02a_occup_lbl 3 `"Entirely unoccupied"', add
label values ro02a_occup ro02a_occup_lbl

label define ro02a_tenureb_lbl 1 `"Owners"'
label define ro02a_tenureb_lbl 2 `"Owners and tenants"', add
label define ro02a_tenureb_lbl 3 `"Owners and other situations"', add
label define ro02a_tenureb_lbl 4 `"Owners, tenants and other situations"', add
label define ro02a_tenureb_lbl 5 `"Tenants"', add
label define ro02a_tenureb_lbl 6 `"Tenants and other situations"', add
label define ro02a_tenureb_lbl 7 `"Other situations"', add
label define ro02a_tenureb_lbl 8 `"Unknown"', add
label define ro02a_tenureb_lbl 9 `"NIU (not in universe)"', add
label values ro02a_tenureb ro02a_tenureb_lbl

label define ro02a_dwtyb_lbl 0 `"Only non-conventional housing units"'
label define ro02a_dwtyb_lbl 1 `"Permanent dwellings"', add
label define ro02a_dwtyb_lbl 2 `"Seasonal dwellings"', add
label define ro02a_dwtyb_lbl 3 `"Permanent and seasonal dwellings"', add
label define ro02a_dwtyb_lbl 4 `"Permanent dwellings and non conventional housing units"', add
label define ro02a_dwtyb_lbl 6 `"Permanent dwellings, seasonal dwellings and non conventional housing units"', add
label values ro02a_dwtyb ro02a_dwtyb_lbl

label define ro02a_bldage_lbl 000 `"Under 1 year"'
label define ro02a_bldage_lbl 001 `"1"', add
label define ro02a_bldage_lbl 002 `"2"', add
label define ro02a_bldage_lbl 003 `"3"', add
label define ro02a_bldage_lbl 004 `"4"', add
label define ro02a_bldage_lbl 005 `"5"', add
label define ro02a_bldage_lbl 006 `"6"', add
label define ro02a_bldage_lbl 007 `"7"', add
label define ro02a_bldage_lbl 008 `"8"', add
label define ro02a_bldage_lbl 009 `"9"', add
label define ro02a_bldage_lbl 010 `"10"', add
label define ro02a_bldage_lbl 011 `"11"', add
label define ro02a_bldage_lbl 012 `"12"', add
label define ro02a_bldage_lbl 013 `"13"', add
label define ro02a_bldage_lbl 014 `"14"', add
label define ro02a_bldage_lbl 015 `"15"', add
label define ro02a_bldage_lbl 016 `"16"', add
label define ro02a_bldage_lbl 017 `"17"', add
label define ro02a_bldage_lbl 018 `"18"', add
label define ro02a_bldage_lbl 019 `"19"', add
label define ro02a_bldage_lbl 020 `"20"', add
label define ro02a_bldage_lbl 021 `"21"', add
label define ro02a_bldage_lbl 022 `"22"', add
label define ro02a_bldage_lbl 023 `"23"', add
label define ro02a_bldage_lbl 024 `"24"', add
label define ro02a_bldage_lbl 025 `"25"', add
label define ro02a_bldage_lbl 026 `"26"', add
label define ro02a_bldage_lbl 027 `"27"', add
label define ro02a_bldage_lbl 028 `"28"', add
label define ro02a_bldage_lbl 029 `"29"', add
label define ro02a_bldage_lbl 030 `"30"', add
label define ro02a_bldage_lbl 031 `"31"', add
label define ro02a_bldage_lbl 032 `"32"', add
label define ro02a_bldage_lbl 033 `"33"', add
label define ro02a_bldage_lbl 034 `"34"', add
label define ro02a_bldage_lbl 035 `"35"', add
label define ro02a_bldage_lbl 036 `"36"', add
label define ro02a_bldage_lbl 037 `"37"', add
label define ro02a_bldage_lbl 038 `"38"', add
label define ro02a_bldage_lbl 039 `"39"', add
label define ro02a_bldage_lbl 040 `"40"', add
label define ro02a_bldage_lbl 041 `"41"', add
label define ro02a_bldage_lbl 042 `"42"', add
label define ro02a_bldage_lbl 043 `"43"', add
label define ro02a_bldage_lbl 044 `"44"', add
label define ro02a_bldage_lbl 045 `"45"', add
label define ro02a_bldage_lbl 046 `"46"', add
label define ro02a_bldage_lbl 047 `"47"', add
label define ro02a_bldage_lbl 048 `"48"', add
label define ro02a_bldage_lbl 049 `"49"', add
label define ro02a_bldage_lbl 050 `"50"', add
label define ro02a_bldage_lbl 051 `"51"', add
label define ro02a_bldage_lbl 052 `"52"', add
label define ro02a_bldage_lbl 053 `"53"', add
label define ro02a_bldage_lbl 054 `"54"', add
label define ro02a_bldage_lbl 055 `"55"', add
label define ro02a_bldage_lbl 056 `"56"', add
label define ro02a_bldage_lbl 057 `"57"', add
label define ro02a_bldage_lbl 058 `"58"', add
label define ro02a_bldage_lbl 059 `"59"', add
label define ro02a_bldage_lbl 060 `"60"', add
label define ro02a_bldage_lbl 061 `"61"', add
label define ro02a_bldage_lbl 062 `"62"', add
label define ro02a_bldage_lbl 063 `"63"', add
label define ro02a_bldage_lbl 064 `"64"', add
label define ro02a_bldage_lbl 065 `"65"', add
label define ro02a_bldage_lbl 066 `"66"', add
label define ro02a_bldage_lbl 067 `"67"', add
label define ro02a_bldage_lbl 068 `"68"', add
label define ro02a_bldage_lbl 069 `"69"', add
label define ro02a_bldage_lbl 070 `"70"', add
label define ro02a_bldage_lbl 071 `"71"', add
label define ro02a_bldage_lbl 072 `"72"', add
label define ro02a_bldage_lbl 073 `"73"', add
label define ro02a_bldage_lbl 074 `"74"', add
label define ro02a_bldage_lbl 075 `"75"', add
label define ro02a_bldage_lbl 076 `"76"', add
label define ro02a_bldage_lbl 077 `"77"', add
label define ro02a_bldage_lbl 078 `"78"', add
label define ro02a_bldage_lbl 079 `"79"', add
label define ro02a_bldage_lbl 080 `"80"', add
label define ro02a_bldage_lbl 081 `"81"', add
label define ro02a_bldage_lbl 082 `"82"', add
label define ro02a_bldage_lbl 083 `"83"', add
label define ro02a_bldage_lbl 084 `"84"', add
label define ro02a_bldage_lbl 085 `"85"', add
label define ro02a_bldage_lbl 086 `"86"', add
label define ro02a_bldage_lbl 087 `"87"', add
label define ro02a_bldage_lbl 088 `"88"', add
label define ro02a_bldage_lbl 089 `"89"', add
label define ro02a_bldage_lbl 090 `"90"', add
label define ro02a_bldage_lbl 091 `"91"', add
label define ro02a_bldage_lbl 092 `"92"', add
label define ro02a_bldage_lbl 093 `"93"', add
label define ro02a_bldage_lbl 094 `"94"', add
label define ro02a_bldage_lbl 095 `"95"', add
label define ro02a_bldage_lbl 096 `"96"', add
label define ro02a_bldage_lbl 097 `"97"', add
label define ro02a_bldage_lbl 098 `"98"', add
label define ro02a_bldage_lbl 099 `"99"', add
label define ro02a_bldage_lbl 100 `"100"', add
label define ro02a_bldage_lbl 101 `"101"', add
label define ro02a_bldage_lbl 102 `"102"', add
label define ro02a_bldage_lbl 103 `"103"', add
label define ro02a_bldage_lbl 104 `"104"', add
label define ro02a_bldage_lbl 105 `"105"', add
label define ro02a_bldage_lbl 106 `"106"', add
label define ro02a_bldage_lbl 107 `"107"', add
label define ro02a_bldage_lbl 108 `"108"', add
label define ro02a_bldage_lbl 109 `"109"', add
label define ro02a_bldage_lbl 110 `"110"', add
label define ro02a_bldage_lbl 111 `"111"', add
label define ro02a_bldage_lbl 112 `"112"', add
label define ro02a_bldage_lbl 113 `"113"', add
label define ro02a_bldage_lbl 114 `"114"', add
label define ro02a_bldage_lbl 115 `"115"', add
label define ro02a_bldage_lbl 116 `"116"', add
label define ro02a_bldage_lbl 117 `"117"', add
label define ro02a_bldage_lbl 118 `"118"', add
label define ro02a_bldage_lbl 119 `"119"', add
label define ro02a_bldage_lbl 120 `"120"', add
label define ro02a_bldage_lbl 121 `"121"', add
label define ro02a_bldage_lbl 122 `"122"', add
label define ro02a_bldage_lbl 123 `"123"', add
label define ro02a_bldage_lbl 124 `"124"', add
label define ro02a_bldage_lbl 125 `"125"', add
label define ro02a_bldage_lbl 126 `"126"', add
label define ro02a_bldage_lbl 127 `"127"', add
label define ro02a_bldage_lbl 128 `"128"', add
label define ro02a_bldage_lbl 129 `"129"', add
label define ro02a_bldage_lbl 130 `"130"', add
label define ro02a_bldage_lbl 131 `"131"', add
label define ro02a_bldage_lbl 132 `"132"', add
label define ro02a_bldage_lbl 133 `"133"', add
label define ro02a_bldage_lbl 134 `"134"', add
label define ro02a_bldage_lbl 135 `"135"', add
label define ro02a_bldage_lbl 136 `"136"', add
label define ro02a_bldage_lbl 137 `"137"', add
label define ro02a_bldage_lbl 138 `"138"', add
label define ro02a_bldage_lbl 139 `"139"', add
label define ro02a_bldage_lbl 140 `"140"', add
label define ro02a_bldage_lbl 141 `"141"', add
label define ro02a_bldage_lbl 142 `"142"', add
label define ro02a_bldage_lbl 143 `"143"', add
label define ro02a_bldage_lbl 144 `"144"', add
label define ro02a_bldage_lbl 145 `"145"', add
label define ro02a_bldage_lbl 146 `"146"', add
label define ro02a_bldage_lbl 147 `"147"', add
label define ro02a_bldage_lbl 148 `"148"', add
label define ro02a_bldage_lbl 149 `"149"', add
label define ro02a_bldage_lbl 150 `"150"', add
label define ro02a_bldage_lbl 151 `"151"', add
label define ro02a_bldage_lbl 152 `"152"', add
label define ro02a_bldage_lbl 153 `"153"', add
label define ro02a_bldage_lbl 154 `"154"', add
label define ro02a_bldage_lbl 155 `"155"', add
label define ro02a_bldage_lbl 156 `"156"', add
label define ro02a_bldage_lbl 157 `"157"', add
label define ro02a_bldage_lbl 158 `"158"', add
label define ro02a_bldage_lbl 159 `"159"', add
label define ro02a_bldage_lbl 160 `"160"', add
label define ro02a_bldage_lbl 161 `"161"', add
label define ro02a_bldage_lbl 162 `"162"', add
label define ro02a_bldage_lbl 163 `"163"', add
label define ro02a_bldage_lbl 164 `"164"', add
label define ro02a_bldage_lbl 165 `"165"', add
label define ro02a_bldage_lbl 166 `"166"', add
label define ro02a_bldage_lbl 167 `"167"', add
label define ro02a_bldage_lbl 168 `"168"', add
label define ro02a_bldage_lbl 169 `"169"', add
label define ro02a_bldage_lbl 170 `"170"', add
label define ro02a_bldage_lbl 171 `"171"', add
label define ro02a_bldage_lbl 172 `"172"', add
label define ro02a_bldage_lbl 173 `"173"', add
label define ro02a_bldage_lbl 174 `"174"', add
label define ro02a_bldage_lbl 175 `"175"', add
label define ro02a_bldage_lbl 176 `"176"', add
label define ro02a_bldage_lbl 177 `"177"', add
label define ro02a_bldage_lbl 178 `"178"', add
label define ro02a_bldage_lbl 179 `"179"', add
label define ro02a_bldage_lbl 180 `"180"', add
label define ro02a_bldage_lbl 181 `"181"', add
label define ro02a_bldage_lbl 182 `"182"', add
label define ro02a_bldage_lbl 183 `"183"', add
label define ro02a_bldage_lbl 184 `"184"', add
label define ro02a_bldage_lbl 185 `"185"', add
label define ro02a_bldage_lbl 186 `"186"', add
label define ro02a_bldage_lbl 187 `"187"', add
label define ro02a_bldage_lbl 188 `"188"', add
label define ro02a_bldage_lbl 189 `"189"', add
label define ro02a_bldage_lbl 190 `"190"', add
label define ro02a_bldage_lbl 191 `"191"', add
label define ro02a_bldage_lbl 192 `"192"', add
label define ro02a_bldage_lbl 193 `"193"', add
label define ro02a_bldage_lbl 194 `"194"', add
label define ro02a_bldage_lbl 195 `"195"', add
label define ro02a_bldage_lbl 196 `"196"', add
label define ro02a_bldage_lbl 197 `"197"', add
label define ro02a_bldage_lbl 198 `"198"', add
label define ro02a_bldage_lbl 199 `"199"', add
label define ro02a_bldage_lbl 200 `"200+"', add
label values ro02a_bldage ro02a_bldage_lbl

label define ro02a_hhno_lbl 1 `"1"'
label define ro02a_hhno_lbl 2 `"2"', add
label define ro02a_hhno_lbl 3 `"3"', add
label define ro02a_hhno_lbl 4 `"4"', add
label define ro02a_hhno_lbl 5 `"5"', add
label define ro02a_hhno_lbl 6 `"6"', add
label define ro02a_hhno_lbl 7 `"7"', add
label define ro02a_hhno_lbl 8 `"8"', add
label define ro02a_hhno_lbl 9 `"9"', add
label values ro02a_hhno ro02a_hhno_lbl

label define ro02a_dwtype_lbl 1 `"Permanent (main)"'
label define ro02a_dwtype_lbl 2 `"Seasonal/secondary"', add
label define ro02a_dwtype_lbl 3 `"Marginal housing unit"', add
label define ro02a_dwtype_lbl 4 `"Marginal housing unit (e.g. mobile units)"', add
label values ro02a_dwtype ro02a_dwtype_lbl

label define ro02a_occupd_lbl 1 `"Occupied dwelling"'
label define ro02a_occupd_lbl 2 `"Unoccupied dwelling"', add
label values ro02a_occupd ro02a_occupd_lbl

label define ro02a_owntype_lbl 1 `"Private"'
label define ro02a_owntype_lbl 2 `"State"', add
label define ro02a_owntype_lbl 3 `"Private group ownership"', add
label define ro02a_owntype_lbl 4 `"Religious"', add
label values ro02a_owntype ro02a_owntype_lbl

label define ro02a_rooms_lbl 01 `"1"'
label define ro02a_rooms_lbl 02 `"2"', add
label define ro02a_rooms_lbl 03 `"3"', add
label define ro02a_rooms_lbl 04 `"4"', add
label define ro02a_rooms_lbl 05 `"5"', add
label define ro02a_rooms_lbl 06 `"6"', add
label define ro02a_rooms_lbl 07 `"7"', add
label define ro02a_rooms_lbl 08 `"8"', add
label define ro02a_rooms_lbl 09 `"9"', add
label define ro02a_rooms_lbl 10 `"10"', add
label define ro02a_rooms_lbl 11 `"11"', add
label define ro02a_rooms_lbl 12 `"12+"', add
label values ro02a_rooms ro02a_rooms_lbl

label define ro02a_livarea_lbl 004 `"4"'
label define ro02a_livarea_lbl 005 `"5"', add
label define ro02a_livarea_lbl 006 `"6"', add
label define ro02a_livarea_lbl 007 `"7"', add
label define ro02a_livarea_lbl 008 `"8"', add
label define ro02a_livarea_lbl 009 `"9"', add
label define ro02a_livarea_lbl 010 `"10"', add
label define ro02a_livarea_lbl 011 `"11"', add
label define ro02a_livarea_lbl 012 `"12"', add
label define ro02a_livarea_lbl 013 `"13"', add
label define ro02a_livarea_lbl 014 `"14"', add
label define ro02a_livarea_lbl 015 `"15"', add
label define ro02a_livarea_lbl 016 `"16"', add
label define ro02a_livarea_lbl 017 `"17"', add
label define ro02a_livarea_lbl 018 `"18"', add
label define ro02a_livarea_lbl 019 `"19"', add
label define ro02a_livarea_lbl 020 `"20"', add
label define ro02a_livarea_lbl 021 `"21"', add
label define ro02a_livarea_lbl 022 `"22"', add
label define ro02a_livarea_lbl 023 `"23"', add
label define ro02a_livarea_lbl 024 `"24"', add
label define ro02a_livarea_lbl 025 `"25"', add
label define ro02a_livarea_lbl 026 `"26"', add
label define ro02a_livarea_lbl 027 `"27"', add
label define ro02a_livarea_lbl 028 `"28"', add
label define ro02a_livarea_lbl 029 `"29"', add
label define ro02a_livarea_lbl 030 `"30"', add
label define ro02a_livarea_lbl 031 `"31"', add
label define ro02a_livarea_lbl 032 `"32"', add
label define ro02a_livarea_lbl 033 `"33"', add
label define ro02a_livarea_lbl 034 `"34"', add
label define ro02a_livarea_lbl 035 `"35"', add
label define ro02a_livarea_lbl 036 `"36"', add
label define ro02a_livarea_lbl 037 `"37"', add
label define ro02a_livarea_lbl 038 `"38"', add
label define ro02a_livarea_lbl 039 `"39"', add
label define ro02a_livarea_lbl 040 `"40"', add
label define ro02a_livarea_lbl 041 `"41"', add
label define ro02a_livarea_lbl 042 `"42"', add
label define ro02a_livarea_lbl 043 `"43"', add
label define ro02a_livarea_lbl 044 `"44"', add
label define ro02a_livarea_lbl 045 `"45"', add
label define ro02a_livarea_lbl 046 `"46"', add
label define ro02a_livarea_lbl 047 `"47"', add
label define ro02a_livarea_lbl 048 `"48"', add
label define ro02a_livarea_lbl 049 `"49"', add
label define ro02a_livarea_lbl 050 `"50"', add
label define ro02a_livarea_lbl 051 `"51"', add
label define ro02a_livarea_lbl 052 `"52"', add
label define ro02a_livarea_lbl 053 `"53"', add
label define ro02a_livarea_lbl 054 `"54"', add
label define ro02a_livarea_lbl 055 `"55"', add
label define ro02a_livarea_lbl 056 `"56"', add
label define ro02a_livarea_lbl 057 `"57"', add
label define ro02a_livarea_lbl 058 `"58"', add
label define ro02a_livarea_lbl 059 `"59"', add
label define ro02a_livarea_lbl 060 `"60"', add
label define ro02a_livarea_lbl 061 `"61"', add
label define ro02a_livarea_lbl 062 `"62"', add
label define ro02a_livarea_lbl 063 `"63"', add
label define ro02a_livarea_lbl 064 `"64"', add
label define ro02a_livarea_lbl 065 `"65"', add
label define ro02a_livarea_lbl 066 `"66"', add
label define ro02a_livarea_lbl 067 `"67"', add
label define ro02a_livarea_lbl 068 `"68"', add
label define ro02a_livarea_lbl 069 `"69"', add
label define ro02a_livarea_lbl 070 `"70"', add
label define ro02a_livarea_lbl 071 `"71"', add
label define ro02a_livarea_lbl 072 `"72"', add
label define ro02a_livarea_lbl 073 `"73"', add
label define ro02a_livarea_lbl 074 `"74"', add
label define ro02a_livarea_lbl 075 `"75"', add
label define ro02a_livarea_lbl 076 `"76"', add
label define ro02a_livarea_lbl 077 `"77"', add
label define ro02a_livarea_lbl 078 `"78"', add
label define ro02a_livarea_lbl 079 `"79"', add
label define ro02a_livarea_lbl 080 `"80"', add
label define ro02a_livarea_lbl 081 `"81"', add
label define ro02a_livarea_lbl 082 `"82"', add
label define ro02a_livarea_lbl 083 `"83"', add
label define ro02a_livarea_lbl 084 `"84"', add
label define ro02a_livarea_lbl 085 `"85"', add
label define ro02a_livarea_lbl 086 `"86"', add
label define ro02a_livarea_lbl 087 `"87"', add
label define ro02a_livarea_lbl 088 `"88"', add
label define ro02a_livarea_lbl 089 `"89"', add
label define ro02a_livarea_lbl 090 `"90"', add
label define ro02a_livarea_lbl 091 `"91"', add
label define ro02a_livarea_lbl 092 `"92"', add
label define ro02a_livarea_lbl 093 `"93"', add
label define ro02a_livarea_lbl 094 `"94"', add
label define ro02a_livarea_lbl 095 `"95"', add
label define ro02a_livarea_lbl 096 `"96"', add
label define ro02a_livarea_lbl 097 `"97"', add
label define ro02a_livarea_lbl 098 `"98"', add
label define ro02a_livarea_lbl 099 `"99"', add
label define ro02a_livarea_lbl 100 `"100"', add
label define ro02a_livarea_lbl 101 `"101"', add
label define ro02a_livarea_lbl 102 `"102"', add
label define ro02a_livarea_lbl 103 `"103"', add
label define ro02a_livarea_lbl 104 `"104"', add
label define ro02a_livarea_lbl 105 `"105"', add
label define ro02a_livarea_lbl 106 `"106"', add
label define ro02a_livarea_lbl 107 `"107"', add
label define ro02a_livarea_lbl 108 `"108"', add
label define ro02a_livarea_lbl 109 `"109"', add
label define ro02a_livarea_lbl 110 `"110"', add
label define ro02a_livarea_lbl 111 `"111"', add
label define ro02a_livarea_lbl 112 `"112"', add
label define ro02a_livarea_lbl 113 `"113"', add
label define ro02a_livarea_lbl 114 `"114"', add
label define ro02a_livarea_lbl 115 `"115"', add
label define ro02a_livarea_lbl 116 `"116"', add
label define ro02a_livarea_lbl 117 `"117"', add
label define ro02a_livarea_lbl 118 `"118"', add
label define ro02a_livarea_lbl 119 `"119"', add
label define ro02a_livarea_lbl 120 `"120"', add
label define ro02a_livarea_lbl 121 `"121"', add
label define ro02a_livarea_lbl 122 `"122"', add
label define ro02a_livarea_lbl 123 `"123"', add
label define ro02a_livarea_lbl 124 `"124"', add
label define ro02a_livarea_lbl 125 `"125"', add
label define ro02a_livarea_lbl 126 `"126"', add
label define ro02a_livarea_lbl 127 `"127"', add
label define ro02a_livarea_lbl 128 `"128"', add
label define ro02a_livarea_lbl 129 `"129"', add
label define ro02a_livarea_lbl 130 `"130"', add
label define ro02a_livarea_lbl 131 `"131"', add
label define ro02a_livarea_lbl 132 `"132"', add
label define ro02a_livarea_lbl 133 `"133"', add
label define ro02a_livarea_lbl 134 `"134"', add
label define ro02a_livarea_lbl 135 `"135"', add
label define ro02a_livarea_lbl 136 `"136"', add
label define ro02a_livarea_lbl 137 `"137"', add
label define ro02a_livarea_lbl 138 `"138"', add
label define ro02a_livarea_lbl 139 `"139"', add
label define ro02a_livarea_lbl 140 `"140"', add
label define ro02a_livarea_lbl 141 `"141"', add
label define ro02a_livarea_lbl 142 `"142"', add
label define ro02a_livarea_lbl 143 `"143"', add
label define ro02a_livarea_lbl 144 `"144"', add
label define ro02a_livarea_lbl 145 `"145"', add
label define ro02a_livarea_lbl 146 `"146"', add
label define ro02a_livarea_lbl 147 `"147"', add
label define ro02a_livarea_lbl 148 `"148"', add
label define ro02a_livarea_lbl 149 `"149"', add
label define ro02a_livarea_lbl 150 `"150"', add
label define ro02a_livarea_lbl 151 `"151"', add
label define ro02a_livarea_lbl 152 `"152"', add
label define ro02a_livarea_lbl 153 `"153"', add
label define ro02a_livarea_lbl 154 `"154"', add
label define ro02a_livarea_lbl 155 `"155"', add
label define ro02a_livarea_lbl 156 `"156"', add
label define ro02a_livarea_lbl 157 `"157"', add
label define ro02a_livarea_lbl 158 `"158"', add
label define ro02a_livarea_lbl 159 `"159"', add
label define ro02a_livarea_lbl 160 `"160"', add
label define ro02a_livarea_lbl 161 `"161"', add
label define ro02a_livarea_lbl 162 `"162"', add
label define ro02a_livarea_lbl 163 `"163"', add
label define ro02a_livarea_lbl 164 `"164"', add
label define ro02a_livarea_lbl 165 `"165"', add
label define ro02a_livarea_lbl 166 `"166"', add
label define ro02a_livarea_lbl 167 `"167"', add
label define ro02a_livarea_lbl 168 `"168"', add
label define ro02a_livarea_lbl 169 `"169"', add
label define ro02a_livarea_lbl 170 `"170"', add
label define ro02a_livarea_lbl 171 `"171"', add
label define ro02a_livarea_lbl 172 `"172"', add
label define ro02a_livarea_lbl 173 `"173"', add
label define ro02a_livarea_lbl 174 `"174"', add
label define ro02a_livarea_lbl 175 `"175"', add
label define ro02a_livarea_lbl 176 `"176"', add
label define ro02a_livarea_lbl 177 `"177"', add
label define ro02a_livarea_lbl 178 `"178"', add
label define ro02a_livarea_lbl 179 `"179"', add
label define ro02a_livarea_lbl 180 `"180"', add
label define ro02a_livarea_lbl 181 `"181"', add
label define ro02a_livarea_lbl 182 `"182"', add
label define ro02a_livarea_lbl 183 `"183"', add
label define ro02a_livarea_lbl 184 `"184"', add
label define ro02a_livarea_lbl 185 `"185"', add
label define ro02a_livarea_lbl 186 `"186"', add
label define ro02a_livarea_lbl 187 `"187"', add
label define ro02a_livarea_lbl 188 `"188"', add
label define ro02a_livarea_lbl 189 `"189"', add
label define ro02a_livarea_lbl 190 `"190"', add
label define ro02a_livarea_lbl 191 `"191"', add
label define ro02a_livarea_lbl 192 `"192"', add
label define ro02a_livarea_lbl 193 `"193"', add
label define ro02a_livarea_lbl 194 `"194"', add
label define ro02a_livarea_lbl 195 `"195"', add
label define ro02a_livarea_lbl 196 `"196"', add
label define ro02a_livarea_lbl 197 `"197"', add
label define ro02a_livarea_lbl 198 `"198"', add
label define ro02a_livarea_lbl 199 `"199"', add
label define ro02a_livarea_lbl 200 `"200"', add
label define ro02a_livarea_lbl 201 `"201"', add
label define ro02a_livarea_lbl 202 `"202"', add
label define ro02a_livarea_lbl 204 `"204"', add
label define ro02a_livarea_lbl 205 `"205"', add
label define ro02a_livarea_lbl 206 `"206"', add
label define ro02a_livarea_lbl 207 `"207"', add
label define ro02a_livarea_lbl 208 `"208"', add
label define ro02a_livarea_lbl 209 `"209"', add
label define ro02a_livarea_lbl 210 `"210"', add
label define ro02a_livarea_lbl 211 `"211"', add
label define ro02a_livarea_lbl 212 `"212"', add
label define ro02a_livarea_lbl 213 `"213"', add
label define ro02a_livarea_lbl 215 `"215"', add
label define ro02a_livarea_lbl 216 `"216"', add
label define ro02a_livarea_lbl 217 `"217"', add
label define ro02a_livarea_lbl 220 `"220"', add
label define ro02a_livarea_lbl 222 `"222"', add
label define ro02a_livarea_lbl 223 `"223"', add
label define ro02a_livarea_lbl 224 `"224"', add
label define ro02a_livarea_lbl 225 `"225"', add
label define ro02a_livarea_lbl 226 `"226"', add
label define ro02a_livarea_lbl 228 `"228"', add
label define ro02a_livarea_lbl 229 `"229"', add
label define ro02a_livarea_lbl 230 `"230"', add
label define ro02a_livarea_lbl 231 `"231"', add
label define ro02a_livarea_lbl 232 `"232"', add
label define ro02a_livarea_lbl 233 `"233"', add
label define ro02a_livarea_lbl 234 `"234"', add
label define ro02a_livarea_lbl 235 `"235"', add
label define ro02a_livarea_lbl 236 `"236"', add
label define ro02a_livarea_lbl 237 `"237"', add
label define ro02a_livarea_lbl 238 `"238"', add
label define ro02a_livarea_lbl 240 `"240"', add
label define ro02a_livarea_lbl 242 `"242"', add
label define ro02a_livarea_lbl 243 `"243"', add
label define ro02a_livarea_lbl 244 `"244"', add
label define ro02a_livarea_lbl 245 `"245"', add
label define ro02a_livarea_lbl 246 `"246"', add
label define ro02a_livarea_lbl 247 `"247"', add
label define ro02a_livarea_lbl 249 `"249"', add
label define ro02a_livarea_lbl 250 `"250"', add
label define ro02a_livarea_lbl 252 `"252"', add
label define ro02a_livarea_lbl 255 `"255"', add
label define ro02a_livarea_lbl 258 `"258"', add
label define ro02a_livarea_lbl 260 `"260"', add
label define ro02a_livarea_lbl 264 `"264"', add
label define ro02a_livarea_lbl 265 `"265"', add
label define ro02a_livarea_lbl 267 `"267"', add
label define ro02a_livarea_lbl 270 `"270"', add
label define ro02a_livarea_lbl 272 `"272"', add
label define ro02a_livarea_lbl 274 `"274"', add
label define ro02a_livarea_lbl 275 `"275"', add
label define ro02a_livarea_lbl 280 `"280"', add
label define ro02a_livarea_lbl 283 `"283"', add
label define ro02a_livarea_lbl 288 `"288"', add
label define ro02a_livarea_lbl 290 `"290"', add
label define ro02a_livarea_lbl 292 `"292"', add
label define ro02a_livarea_lbl 294 `"294"', add
label define ro02a_livarea_lbl 295 `"295"', add
label define ro02a_livarea_lbl 296 `"296"', add
label define ro02a_livarea_lbl 300 `"300+"', add
label values ro02a_livarea ro02a_livarea_lbl

label define ro02a_roomsbus_lbl 0 `"0"'
label define ro02a_roomsbus_lbl 1 `"1"', add
label define ro02a_roomsbus_lbl 2 `"2"', add
label define ro02a_roomsbus_lbl 3 `"3"', add
label define ro02a_roomsbus_lbl 4 `"4+"', add
label values ro02a_roomsbus ro02a_roomsbus_lbl

label define ro02a_busarea_lbl 00 `"0"'
label define ro02a_busarea_lbl 04 `"4"', add
label define ro02a_busarea_lbl 05 `"5"', add
label define ro02a_busarea_lbl 06 `"6"', add
label define ro02a_busarea_lbl 07 `"7"', add
label define ro02a_busarea_lbl 08 `"8"', add
label define ro02a_busarea_lbl 09 `"9"', add
label define ro02a_busarea_lbl 10 `"10"', add
label define ro02a_busarea_lbl 11 `"11"', add
label define ro02a_busarea_lbl 12 `"12"', add
label define ro02a_busarea_lbl 13 `"13"', add
label define ro02a_busarea_lbl 14 `"14"', add
label define ro02a_busarea_lbl 15 `"15"', add
label define ro02a_busarea_lbl 16 `"16"', add
label define ro02a_busarea_lbl 17 `"17"', add
label define ro02a_busarea_lbl 18 `"18"', add
label define ro02a_busarea_lbl 19 `"19"', add
label define ro02a_busarea_lbl 20 `"20"', add
label define ro02a_busarea_lbl 21 `"21"', add
label define ro02a_busarea_lbl 22 `"22"', add
label define ro02a_busarea_lbl 23 `"23"', add
label define ro02a_busarea_lbl 24 `"24"', add
label define ro02a_busarea_lbl 25 `"25"', add
label define ro02a_busarea_lbl 26 `"26"', add
label define ro02a_busarea_lbl 27 `"27"', add
label define ro02a_busarea_lbl 28 `"28"', add
label define ro02a_busarea_lbl 29 `"29"', add
label define ro02a_busarea_lbl 30 `"30"', add
label define ro02a_busarea_lbl 31 `"31"', add
label define ro02a_busarea_lbl 32 `"32"', add
label define ro02a_busarea_lbl 33 `"33"', add
label define ro02a_busarea_lbl 34 `"34"', add
label define ro02a_busarea_lbl 35 `"35"', add
label define ro02a_busarea_lbl 36 `"36"', add
label define ro02a_busarea_lbl 37 `"37"', add
label define ro02a_busarea_lbl 38 `"38"', add
label define ro02a_busarea_lbl 39 `"39"', add
label define ro02a_busarea_lbl 40 `"40"', add
label define ro02a_busarea_lbl 41 `"41"', add
label define ro02a_busarea_lbl 42 `"42"', add
label define ro02a_busarea_lbl 43 `"43"', add
label define ro02a_busarea_lbl 44 `"44"', add
label define ro02a_busarea_lbl 45 `"45"', add
label define ro02a_busarea_lbl 46 `"46"', add
label define ro02a_busarea_lbl 47 `"47"', add
label define ro02a_busarea_lbl 48 `"48"', add
label define ro02a_busarea_lbl 49 `"49"', add
label define ro02a_busarea_lbl 50 `"50"', add
label define ro02a_busarea_lbl 51 `"51"', add
label define ro02a_busarea_lbl 52 `"52"', add
label define ro02a_busarea_lbl 53 `"53"', add
label define ro02a_busarea_lbl 54 `"54"', add
label define ro02a_busarea_lbl 55 `"55"', add
label define ro02a_busarea_lbl 56 `"56"', add
label define ro02a_busarea_lbl 57 `"57"', add
label define ro02a_busarea_lbl 58 `"58"', add
label define ro02a_busarea_lbl 60 `"60+"', add
label values ro02a_busarea ro02a_busarea_lbl

label define ro02a_kitch_lbl 1 `"Inside the dwelling"'
label define ro02a_kitch_lbl 2 `"Outside the dwelling"', add
label define ro02a_kitch_lbl 3 `"No kitchen"', add
label values ro02a_kitch ro02a_kitch_lbl

label define ro02a_kitarea_lbl 00 `"0"'
label define ro02a_kitarea_lbl 01 `"1"', add
label define ro02a_kitarea_lbl 02 `"2"', add
label define ro02a_kitarea_lbl 03 `"3"', add
label define ro02a_kitarea_lbl 04 `"4"', add
label define ro02a_kitarea_lbl 05 `"5"', add
label define ro02a_kitarea_lbl 06 `"6"', add
label define ro02a_kitarea_lbl 07 `"7"', add
label define ro02a_kitarea_lbl 08 `"8"', add
label define ro02a_kitarea_lbl 09 `"9"', add
label define ro02a_kitarea_lbl 10 `"10"', add
label define ro02a_kitarea_lbl 11 `"11"', add
label define ro02a_kitarea_lbl 12 `"12"', add
label define ro02a_kitarea_lbl 13 `"13"', add
label define ro02a_kitarea_lbl 14 `"14"', add
label define ro02a_kitarea_lbl 15 `"15"', add
label define ro02a_kitarea_lbl 16 `"16"', add
label define ro02a_kitarea_lbl 17 `"17"', add
label define ro02a_kitarea_lbl 18 `"18"', add
label define ro02a_kitarea_lbl 19 `"19"', add
label define ro02a_kitarea_lbl 20 `"20"', add
label define ro02a_kitarea_lbl 21 `"21"', add
label define ro02a_kitarea_lbl 22 `"22"', add
label define ro02a_kitarea_lbl 23 `"23"', add
label define ro02a_kitarea_lbl 24 `"24"', add
label define ro02a_kitarea_lbl 25 `"25"', add
label define ro02a_kitarea_lbl 26 `"26"', add
label define ro02a_kitarea_lbl 27 `"27"', add
label define ro02a_kitarea_lbl 28 `"28"', add
label define ro02a_kitarea_lbl 29 `"29"', add
label define ro02a_kitarea_lbl 30 `"30"', add
label define ro02a_kitarea_lbl 31 `"31"', add
label define ro02a_kitarea_lbl 32 `"32"', add
label define ro02a_kitarea_lbl 33 `"33"', add
label define ro02a_kitarea_lbl 34 `"34"', add
label define ro02a_kitarea_lbl 35 `"35"', add
label define ro02a_kitarea_lbl 36 `"36"', add
label define ro02a_kitarea_lbl 37 `"37"', add
label define ro02a_kitarea_lbl 38 `"38"', add
label define ro02a_kitarea_lbl 39 `"39"', add
label define ro02a_kitarea_lbl 40 `"40+"', add
label values ro02a_kitarea ro02a_kitarea_lbl

label define ro02a_bathroom_lbl 1 `"Inside the dwelling"'
label define ro02a_bathroom_lbl 2 `"Outside the dwelling"', add
label define ro02a_bathroom_lbl 3 `"No bathroom"', add
label values ro02a_bathroom ro02a_bathroom_lbl

label define ro02a_toilet_lbl 1 `"Within the dwelling"'
label define ro02a_toilet_lbl 2 `"Outside the dwelling"', add
label define ro02a_toilet_lbl 3 `"No flush toilet"', add
label values ro02a_toilet ro02a_toilet_lbl

label define ro02a_water_lbl 1 `"Inside the dwelling-from the public network"'
label define ro02a_water_lbl 2 `"Inside the dwelling-from own system"', add
label define ro02a_water_lbl 3 `"Outside the dwelling-inside the building-from the public network"', add
label define ro02a_water_lbl 4 `"Outside the dwelling-inside the building-from own system"', add
label define ro02a_water_lbl 5 `"Outside the dwelling-outside the building-from the public network"', add
label define ro02a_water_lbl 6 `"Outside the dwelling-outside the building-from own system"', add
label define ro02a_water_lbl 7 `"Without  water supply installation"', add
label values ro02a_water ro02a_water_lbl

label define ro02a_hotwat_lbl 1 `"Inside the dwelling- from the public network"'
label define ro02a_hotwat_lbl 2 `"Inside the dwelling- from own system"', add
label define ro02a_hotwat_lbl 3 `"Outside the dwelling but within the building"', add
label define ro02a_hotwat_lbl 4 `"Without hot water"', add
label values ro02a_hotwat ro02a_hotwat_lbl

label define ro02a_sewage_lbl 1 `"Waste water empties into a piped system connected to a public sewage disposal"'
label define ro02a_sewage_lbl 2 `"Own system"', add
label define ro02a_sewage_lbl 3 `"Other situation"', add
label define ro02a_sewage_lbl 4 `"Without sewage installation"', add
label values ro02a_sewage ro02a_sewage_lbl

label define ro02a_elect_lbl 1 `"Yes"'
label define ro02a_elect_lbl 2 `"No"', add
label values ro02a_elect ro02a_elect_lbl

label define ro02a_fuelcook_lbl 1 `"Piped gas from public network"'
label define ro02a_fuelcook_lbl 2 `"Liquefied gas"', add
label define ro02a_fuelcook_lbl 3 `"Solid fuel"', add
label define ro02a_fuelcook_lbl 4 `"Electricity"', add
label define ro02a_fuelcook_lbl 5 `"Other fuel"', add
label values ro02a_fuelcook ro02a_fuelcook_lbl

label define ro02a_heat_lbl 1 `"Heating center for building"'
label define ro02a_heat_lbl 2 `"Own domestic heating system using as fuel- natural gas"', add
label define ro02a_heat_lbl 3 `"Own domestic heating system using as fuel- solid fuel"', add
label define ro02a_heat_lbl 4 `"Own domestic heating system using as fuel- liquid fuel"', add
label define ro02a_heat_lbl 5 `"Stove using as fuel- natural gas"', add
label define ro02a_heat_lbl 6 `"Stove using as fuel- solid fuel"', add
label define ro02a_heat_lbl 7 `"Stove using as fuel- liquid fuel"', add
label define ro02a_heat_lbl 8 `"Other types of heating"', add
label values ro02a_heat ro02a_heat_lbl

label define ro02a_aircon_lbl 1 `"Yes"'
label define ro02a_aircon_lbl 2 `"No"', add
label values ro02a_aircon ro02a_aircon_lbl

label define ro02a_perndo_lbl 01 `"1"'
label define ro02a_perndo_lbl 02 `"2"', add
label define ro02a_perndo_lbl 03 `"3"', add
label define ro02a_perndo_lbl 04 `"4"', add
label define ro02a_perndo_lbl 05 `"5"', add
label define ro02a_perndo_lbl 06 `"6"', add
label define ro02a_perndo_lbl 07 `"7"', add
label define ro02a_perndo_lbl 08 `"8"', add
label define ro02a_perndo_lbl 09 `"9"', add
label define ro02a_perndo_lbl 10 `"10"', add
label define ro02a_perndo_lbl 11 `"11"', add
label define ro02a_perndo_lbl 12 `"12"', add
label define ro02a_perndo_lbl 13 `"13"', add
label define ro02a_perndo_lbl 14 `"14"', add
label define ro02a_perndo_lbl 15 `"15"', add
label define ro02a_perndo_lbl 16 `"16"', add
label define ro02a_perndo_lbl 17 `"17"', add
label define ro02a_perndo_lbl 18 `"18"', add
label define ro02a_perndo_lbl 19 `"19"', add
label define ro02a_perndo_lbl 20 `"20"', add
label define ro02a_perndo_lbl 21 `"21"', add
label define ro02a_perndo_lbl 22 `"22"', add
label define ro02a_perndo_lbl 23 `"23"', add
label define ro02a_perndo_lbl 24 `"24"', add
label define ro02a_perndo_lbl 25 `"25"', add
label define ro02a_perndo_lbl 26 `"26"', add
label define ro02a_perndo_lbl 27 `"27"', add
label define ro02a_perndo_lbl 28 `"28"', add
label define ro02a_perndo_lbl 32 `"32"', add
label values ro02a_perndo ro02a_perndo_lbl

label define ro02a_tenured_lbl 11 `"1 household in dwelling-owner"'
label define ro02a_tenured_lbl 12 `"1 household in dwelling-tenant to the state"', add
label define ro02a_tenured_lbl 13 `"1 household in dwelling-. tenant to the individual private owner"', add
label define ro02a_tenured_lbl 14 `"1 household in dwelling-tenant to the private company"', add
label define ro02a_tenured_lbl 15 `"1 household in dwelling-other situation"', add
label define ro02a_tenured_lbl 21 `"2 or more households in dwelling-owners"', add
label define ro02a_tenured_lbl 22 `"2 or more households in dwelling-owners and tenants"', add
label define ro02a_tenured_lbl 23 `"2 or more households in dwelling-owners and other situations"', add
label define ro02a_tenured_lbl 24 `"2 or more households in dwelling-owners, tenants and other situations"', add
label define ro02a_tenured_lbl 25 `"2 or more households in dwelling-tenants"', add
label define ro02a_tenured_lbl 26 `"2 or more households in dwelling-tenants and other situations"', add
label define ro02a_tenured_lbl 27 `"2 or more households in dwelling-other situations"', add
label values ro02a_tenured ro02a_tenured_lbl

label define ro02a_rooms2_lbl 01 `"1"'
label define ro02a_rooms2_lbl 02 `"2"', add
label define ro02a_rooms2_lbl 03 `"3"', add
label define ro02a_rooms2_lbl 04 `"4"', add
label define ro02a_rooms2_lbl 05 `"5"', add
label define ro02a_rooms2_lbl 06 `"6"', add
label define ro02a_rooms2_lbl 07 `"7"', add
label define ro02a_rooms2_lbl 08 `"8"', add
label define ro02a_rooms2_lbl 09 `"9"', add
label define ro02a_rooms2_lbl 10 `"10"', add
label define ro02a_rooms2_lbl 11 `"11"', add
label define ro02a_rooms2_lbl 12 `"12"', add
label define ro02a_rooms2_lbl 13 `"13+"', add
label values ro02a_rooms2 ro02a_rooms2_lbl

label define ro02a_livarea2_lbl 004 `"4"'
label define ro02a_livarea2_lbl 005 `"5"', add
label define ro02a_livarea2_lbl 006 `"6"', add
label define ro02a_livarea2_lbl 007 `"7"', add
label define ro02a_livarea2_lbl 008 `"8"', add
label define ro02a_livarea2_lbl 009 `"9"', add
label define ro02a_livarea2_lbl 010 `"10"', add
label define ro02a_livarea2_lbl 011 `"11"', add
label define ro02a_livarea2_lbl 012 `"12"', add
label define ro02a_livarea2_lbl 013 `"13"', add
label define ro02a_livarea2_lbl 014 `"14"', add
label define ro02a_livarea2_lbl 015 `"15"', add
label define ro02a_livarea2_lbl 016 `"16"', add
label define ro02a_livarea2_lbl 017 `"17"', add
label define ro02a_livarea2_lbl 018 `"18"', add
label define ro02a_livarea2_lbl 019 `"19"', add
label define ro02a_livarea2_lbl 020 `"20"', add
label define ro02a_livarea2_lbl 021 `"21"', add
label define ro02a_livarea2_lbl 022 `"22"', add
label define ro02a_livarea2_lbl 023 `"23"', add
label define ro02a_livarea2_lbl 024 `"24"', add
label define ro02a_livarea2_lbl 025 `"25"', add
label define ro02a_livarea2_lbl 026 `"26"', add
label define ro02a_livarea2_lbl 027 `"27"', add
label define ro02a_livarea2_lbl 028 `"28"', add
label define ro02a_livarea2_lbl 029 `"29"', add
label define ro02a_livarea2_lbl 030 `"30"', add
label define ro02a_livarea2_lbl 031 `"31"', add
label define ro02a_livarea2_lbl 032 `"32"', add
label define ro02a_livarea2_lbl 033 `"33"', add
label define ro02a_livarea2_lbl 034 `"34"', add
label define ro02a_livarea2_lbl 035 `"35"', add
label define ro02a_livarea2_lbl 036 `"36"', add
label define ro02a_livarea2_lbl 037 `"37"', add
label define ro02a_livarea2_lbl 038 `"38"', add
label define ro02a_livarea2_lbl 039 `"39"', add
label define ro02a_livarea2_lbl 040 `"40"', add
label define ro02a_livarea2_lbl 041 `"41"', add
label define ro02a_livarea2_lbl 042 `"42"', add
label define ro02a_livarea2_lbl 043 `"43"', add
label define ro02a_livarea2_lbl 044 `"44"', add
label define ro02a_livarea2_lbl 045 `"45"', add
label define ro02a_livarea2_lbl 046 `"46"', add
label define ro02a_livarea2_lbl 047 `"47"', add
label define ro02a_livarea2_lbl 048 `"48"', add
label define ro02a_livarea2_lbl 049 `"49"', add
label define ro02a_livarea2_lbl 050 `"50"', add
label define ro02a_livarea2_lbl 051 `"51"', add
label define ro02a_livarea2_lbl 052 `"52"', add
label define ro02a_livarea2_lbl 053 `"53"', add
label define ro02a_livarea2_lbl 054 `"54"', add
label define ro02a_livarea2_lbl 055 `"55"', add
label define ro02a_livarea2_lbl 056 `"56"', add
label define ro02a_livarea2_lbl 057 `"57"', add
label define ro02a_livarea2_lbl 058 `"58"', add
label define ro02a_livarea2_lbl 059 `"59"', add
label define ro02a_livarea2_lbl 060 `"60"', add
label define ro02a_livarea2_lbl 061 `"61"', add
label define ro02a_livarea2_lbl 062 `"62"', add
label define ro02a_livarea2_lbl 063 `"63"', add
label define ro02a_livarea2_lbl 064 `"64"', add
label define ro02a_livarea2_lbl 065 `"65"', add
label define ro02a_livarea2_lbl 066 `"66"', add
label define ro02a_livarea2_lbl 067 `"67"', add
label define ro02a_livarea2_lbl 068 `"68"', add
label define ro02a_livarea2_lbl 069 `"69"', add
label define ro02a_livarea2_lbl 070 `"70"', add
label define ro02a_livarea2_lbl 071 `"71"', add
label define ro02a_livarea2_lbl 072 `"72"', add
label define ro02a_livarea2_lbl 073 `"73"', add
label define ro02a_livarea2_lbl 074 `"74"', add
label define ro02a_livarea2_lbl 075 `"75"', add
label define ro02a_livarea2_lbl 076 `"76"', add
label define ro02a_livarea2_lbl 077 `"77"', add
label define ro02a_livarea2_lbl 078 `"78"', add
label define ro02a_livarea2_lbl 079 `"79"', add
label define ro02a_livarea2_lbl 080 `"80"', add
label define ro02a_livarea2_lbl 081 `"81"', add
label define ro02a_livarea2_lbl 082 `"82"', add
label define ro02a_livarea2_lbl 083 `"83"', add
label define ro02a_livarea2_lbl 084 `"84"', add
label define ro02a_livarea2_lbl 085 `"85"', add
label define ro02a_livarea2_lbl 086 `"86"', add
label define ro02a_livarea2_lbl 087 `"87"', add
label define ro02a_livarea2_lbl 088 `"88"', add
label define ro02a_livarea2_lbl 089 `"89"', add
label define ro02a_livarea2_lbl 090 `"90"', add
label define ro02a_livarea2_lbl 091 `"91"', add
label define ro02a_livarea2_lbl 092 `"92"', add
label define ro02a_livarea2_lbl 093 `"93"', add
label define ro02a_livarea2_lbl 094 `"94"', add
label define ro02a_livarea2_lbl 095 `"95"', add
label define ro02a_livarea2_lbl 096 `"96"', add
label define ro02a_livarea2_lbl 097 `"97"', add
label define ro02a_livarea2_lbl 098 `"98"', add
label define ro02a_livarea2_lbl 099 `"99"', add
label define ro02a_livarea2_lbl 100 `"100"', add
label define ro02a_livarea2_lbl 101 `"101"', add
label define ro02a_livarea2_lbl 102 `"102"', add
label define ro02a_livarea2_lbl 103 `"103"', add
label define ro02a_livarea2_lbl 104 `"104"', add
label define ro02a_livarea2_lbl 105 `"105"', add
label define ro02a_livarea2_lbl 106 `"106"', add
label define ro02a_livarea2_lbl 107 `"107"', add
label define ro02a_livarea2_lbl 108 `"108"', add
label define ro02a_livarea2_lbl 109 `"109"', add
label define ro02a_livarea2_lbl 110 `"110"', add
label define ro02a_livarea2_lbl 111 `"111"', add
label define ro02a_livarea2_lbl 112 `"112"', add
label define ro02a_livarea2_lbl 113 `"113"', add
label define ro02a_livarea2_lbl 114 `"114"', add
label define ro02a_livarea2_lbl 115 `"115"', add
label define ro02a_livarea2_lbl 116 `"116"', add
label define ro02a_livarea2_lbl 117 `"117"', add
label define ro02a_livarea2_lbl 118 `"118"', add
label define ro02a_livarea2_lbl 119 `"119"', add
label define ro02a_livarea2_lbl 120 `"120"', add
label define ro02a_livarea2_lbl 121 `"121"', add
label define ro02a_livarea2_lbl 122 `"122"', add
label define ro02a_livarea2_lbl 123 `"123"', add
label define ro02a_livarea2_lbl 124 `"124"', add
label define ro02a_livarea2_lbl 125 `"125"', add
label define ro02a_livarea2_lbl 126 `"126"', add
label define ro02a_livarea2_lbl 127 `"127"', add
label define ro02a_livarea2_lbl 128 `"128"', add
label define ro02a_livarea2_lbl 129 `"129"', add
label define ro02a_livarea2_lbl 130 `"130"', add
label define ro02a_livarea2_lbl 131 `"131"', add
label define ro02a_livarea2_lbl 132 `"132"', add
label define ro02a_livarea2_lbl 133 `"133"', add
label define ro02a_livarea2_lbl 134 `"134"', add
label define ro02a_livarea2_lbl 135 `"135"', add
label define ro02a_livarea2_lbl 136 `"136"', add
label define ro02a_livarea2_lbl 137 `"137"', add
label define ro02a_livarea2_lbl 138 `"138"', add
label define ro02a_livarea2_lbl 139 `"139"', add
label define ro02a_livarea2_lbl 140 `"140"', add
label define ro02a_livarea2_lbl 141 `"141"', add
label define ro02a_livarea2_lbl 142 `"142"', add
label define ro02a_livarea2_lbl 143 `"143"', add
label define ro02a_livarea2_lbl 144 `"144"', add
label define ro02a_livarea2_lbl 145 `"145"', add
label define ro02a_livarea2_lbl 146 `"146"', add
label define ro02a_livarea2_lbl 147 `"147"', add
label define ro02a_livarea2_lbl 148 `"148"', add
label define ro02a_livarea2_lbl 149 `"149"', add
label define ro02a_livarea2_lbl 150 `"150"', add
label define ro02a_livarea2_lbl 151 `"151"', add
label define ro02a_livarea2_lbl 152 `"152"', add
label define ro02a_livarea2_lbl 153 `"153"', add
label define ro02a_livarea2_lbl 154 `"154"', add
label define ro02a_livarea2_lbl 155 `"155"', add
label define ro02a_livarea2_lbl 156 `"156"', add
label define ro02a_livarea2_lbl 157 `"157"', add
label define ro02a_livarea2_lbl 158 `"158"', add
label define ro02a_livarea2_lbl 159 `"159"', add
label define ro02a_livarea2_lbl 160 `"160"', add
label define ro02a_livarea2_lbl 161 `"161"', add
label define ro02a_livarea2_lbl 162 `"162"', add
label define ro02a_livarea2_lbl 163 `"163"', add
label define ro02a_livarea2_lbl 164 `"164"', add
label define ro02a_livarea2_lbl 165 `"165"', add
label define ro02a_livarea2_lbl 166 `"166"', add
label define ro02a_livarea2_lbl 167 `"167"', add
label define ro02a_livarea2_lbl 168 `"168"', add
label define ro02a_livarea2_lbl 169 `"169"', add
label define ro02a_livarea2_lbl 170 `"170"', add
label define ro02a_livarea2_lbl 171 `"171"', add
label define ro02a_livarea2_lbl 172 `"172"', add
label define ro02a_livarea2_lbl 173 `"173"', add
label define ro02a_livarea2_lbl 174 `"174"', add
label define ro02a_livarea2_lbl 175 `"175"', add
label define ro02a_livarea2_lbl 176 `"176"', add
label define ro02a_livarea2_lbl 177 `"177"', add
label define ro02a_livarea2_lbl 178 `"178"', add
label define ro02a_livarea2_lbl 179 `"179"', add
label define ro02a_livarea2_lbl 180 `"180"', add
label define ro02a_livarea2_lbl 181 `"181"', add
label define ro02a_livarea2_lbl 182 `"182"', add
label define ro02a_livarea2_lbl 183 `"183"', add
label define ro02a_livarea2_lbl 184 `"184"', add
label define ro02a_livarea2_lbl 185 `"185"', add
label define ro02a_livarea2_lbl 186 `"186"', add
label define ro02a_livarea2_lbl 187 `"187"', add
label define ro02a_livarea2_lbl 188 `"188"', add
label define ro02a_livarea2_lbl 189 `"189"', add
label define ro02a_livarea2_lbl 190 `"190"', add
label define ro02a_livarea2_lbl 191 `"191"', add
label define ro02a_livarea2_lbl 192 `"192"', add
label define ro02a_livarea2_lbl 193 `"193"', add
label define ro02a_livarea2_lbl 194 `"194"', add
label define ro02a_livarea2_lbl 195 `"195"', add
label define ro02a_livarea2_lbl 196 `"196"', add
label define ro02a_livarea2_lbl 197 `"197"', add
label define ro02a_livarea2_lbl 198 `"198"', add
label define ro02a_livarea2_lbl 199 `"199"', add
label define ro02a_livarea2_lbl 200 `"200"', add
label define ro02a_livarea2_lbl 201 `"201"', add
label define ro02a_livarea2_lbl 202 `"202"', add
label define ro02a_livarea2_lbl 203 `"203"', add
label define ro02a_livarea2_lbl 204 `"204"', add
label define ro02a_livarea2_lbl 205 `"205"', add
label define ro02a_livarea2_lbl 206 `"206"', add
label define ro02a_livarea2_lbl 207 `"207"', add
label define ro02a_livarea2_lbl 208 `"208"', add
label define ro02a_livarea2_lbl 209 `"209"', add
label define ro02a_livarea2_lbl 210 `"210"', add
label define ro02a_livarea2_lbl 211 `"211"', add
label define ro02a_livarea2_lbl 212 `"212"', add
label define ro02a_livarea2_lbl 213 `"213"', add
label define ro02a_livarea2_lbl 214 `"214"', add
label define ro02a_livarea2_lbl 215 `"215"', add
label define ro02a_livarea2_lbl 216 `"216"', add
label define ro02a_livarea2_lbl 217 `"217"', add
label define ro02a_livarea2_lbl 218 `"218"', add
label define ro02a_livarea2_lbl 219 `"219"', add
label define ro02a_livarea2_lbl 220 `"220+"', add
label values ro02a_livarea2 ro02a_livarea2_lbl

label define ro02a_hhtyped_lbl 1 `"Only family households"'
label define ro02a_hhtyped_lbl 2 `"Only non family households"', add
label define ro02a_hhtyped_lbl 3 `"Mixed"', add
label values ro02a_hhtyped ro02a_hhtyped_lbl

label define ro02a_hhtyped_lbl 1 `"Only family households"'
label define ro02a_hhtyped_lbl 2 `"Only non family households"', add
label define ro02a_hhtyped_lbl 3 `"Mixed"', add
label values ro02a_hhtyped ro02a_hhtyped_lbl

label define ro02a_famnd_lbl 1 `"1 family nucleus"'
label define ro02a_famnd_lbl 2 `"2 family nuclei"', add
label define ro02a_famnd_lbl 3 `"3 family nuclei and over"', add
label define ro02a_famnd_lbl 4 `"Without family nuclei"', add
label values ro02a_famnd ro02a_famnd_lbl

label define ro02a_pernho_lbl 01 `"1"'
label define ro02a_pernho_lbl 02 `"2"', add
label define ro02a_pernho_lbl 03 `"3"', add
label define ro02a_pernho_lbl 04 `"4"', add
label define ro02a_pernho_lbl 05 `"5"', add
label define ro02a_pernho_lbl 06 `"6"', add
label define ro02a_pernho_lbl 07 `"7"', add
label define ro02a_pernho_lbl 08 `"8"', add
label define ro02a_pernho_lbl 09 `"9"', add
label define ro02a_pernho_lbl 10 `"10"', add
label define ro02a_pernho_lbl 11 `"11"', add
label define ro02a_pernho_lbl 12 `"12"', add
label define ro02a_pernho_lbl 13 `"13"', add
label define ro02a_pernho_lbl 14 `"14"', add
label define ro02a_pernho_lbl 15 `"15"', add
label define ro02a_pernho_lbl 16 `"16"', add
label define ro02a_pernho_lbl 17 `"17"', add
label define ro02a_pernho_lbl 18 `"18"', add
label define ro02a_pernho_lbl 19 `"19"', add
label define ro02a_pernho_lbl 20 `"20"', add
label define ro02a_pernho_lbl 21 `"21"', add
label define ro02a_pernho_lbl 24 `"24"', add
label values ro02a_pernho ro02a_pernho_lbl

label define ro02a_emphh_lbl 00 `"0"'
label define ro02a_emphh_lbl 01 `"1"', add
label define ro02a_emphh_lbl 02 `"2"', add
label define ro02a_emphh_lbl 03 `"3"', add
label define ro02a_emphh_lbl 04 `"4"', add
label define ro02a_emphh_lbl 05 `"5"', add
label define ro02a_emphh_lbl 06 `"6"', add
label define ro02a_emphh_lbl 07 `"7"', add
label define ro02a_emphh_lbl 08 `"8"', add
label define ro02a_emphh_lbl 09 `"9"', add
label define ro02a_emphh_lbl 10 `"10"', add
label define ro02a_emphh_lbl 11 `"11"', add
label define ro02a_emphh_lbl 12 `"12"', add
label define ro02a_emphh_lbl 13 `"13"', add
label values ro02a_emphh ro02a_emphh_lbl

label define ro02a_activehh_lbl 00 `"0"'
label define ro02a_activehh_lbl 01 `"1"', add
label define ro02a_activehh_lbl 02 `"2"', add
label define ro02a_activehh_lbl 03 `"3"', add
label define ro02a_activehh_lbl 04 `"4"', add
label define ro02a_activehh_lbl 05 `"5"', add
label define ro02a_activehh_lbl 06 `"6"', add
label define ro02a_activehh_lbl 07 `"7"', add
label define ro02a_activehh_lbl 08 `"8"', add
label define ro02a_activehh_lbl 09 `"9"', add
label define ro02a_activehh_lbl 10 `"10"', add
label define ro02a_activehh_lbl 11 `"11"', add
label define ro02a_activehh_lbl 12 `"12"', add
label define ro02a_activehh_lbl 13 `"13"', add
label values ro02a_activehh ro02a_activehh_lbl

label define ro02a_dependhh_lbl 00 `"0"'
label define ro02a_dependhh_lbl 01 `"1"', add
label define ro02a_dependhh_lbl 02 `"2"', add
label define ro02a_dependhh_lbl 03 `"3"', add
label define ro02a_dependhh_lbl 04 `"4"', add
label define ro02a_dependhh_lbl 05 `"5"', add
label define ro02a_dependhh_lbl 06 `"6"', add
label define ro02a_dependhh_lbl 07 `"7"', add
label define ro02a_dependhh_lbl 08 `"8"', add
label define ro02a_dependhh_lbl 09 `"9"', add
label define ro02a_dependhh_lbl 10 `"10"', add
label define ro02a_dependhh_lbl 11 `"11"', add
label define ro02a_dependhh_lbl 12 `"12"', add
label define ro02a_dependhh_lbl 13 `"13"', add
label define ro02a_dependhh_lbl 14 `"14"', add
label define ro02a_dependhh_lbl 15 `"15"', add
label define ro02a_dependhh_lbl 16 `"16"', add
label define ro02a_dependhh_lbl 17 `"17"', add
label define ro02a_dependhh_lbl 18 `"18"', add
label define ro02a_dependhh_lbl 20 `"20"', add
label values ro02a_dependhh ro02a_dependhh_lbl

label define ro02a_dependch_lbl 00 `"0"'
label define ro02a_dependch_lbl 01 `"1"', add
label define ro02a_dependch_lbl 02 `"2"', add
label define ro02a_dependch_lbl 03 `"3"', add
label define ro02a_dependch_lbl 04 `"4"', add
label define ro02a_dependch_lbl 05 `"5"', add
label define ro02a_dependch_lbl 06 `"6"', add
label define ro02a_dependch_lbl 07 `"7"', add
label define ro02a_dependch_lbl 08 `"8"', add
label define ro02a_dependch_lbl 09 `"9"', add
label define ro02a_dependch_lbl 10 `"10"', add
label define ro02a_dependch_lbl 11 `"11"', add
label define ro02a_dependch_lbl 12 `"12"', add
label define ro02a_dependch_lbl 13 `"13"', add
label define ro02a_dependch_lbl 14 `"14"', add
label define ro02a_dependch_lbl 15 `"15"', add
label values ro02a_dependch ro02a_dependch_lbl

label define ro02a_childnuc_lbl 00 `"0"'
label define ro02a_childnuc_lbl 01 `"1"', add
label define ro02a_childnuc_lbl 02 `"2"', add
label define ro02a_childnuc_lbl 03 `"3"', add
label define ro02a_childnuc_lbl 04 `"4"', add
label define ro02a_childnuc_lbl 05 `"5"', add
label define ro02a_childnuc_lbl 06 `"6"', add
label define ro02a_childnuc_lbl 07 `"7"', add
label define ro02a_childnuc_lbl 08 `"8"', add
label define ro02a_childnuc_lbl 09 `"9"', add
label define ro02a_childnuc_lbl 10 `"10"', add
label define ro02a_childnuc_lbl 11 `"11"', add
label define ro02a_childnuc_lbl 12 `"12"', add
label define ro02a_childnuc_lbl 13 `"13"', add
label define ro02a_childnuc_lbl 14 `"14"', add
label define ro02a_childnuc_lbl 15 `"15"', add
label define ro02a_childnuc_lbl 16 `"16"', add
label values ro02a_childnuc ro02a_childnuc_lbl

label define ro02a_empshh_lbl 0 `"0"'
label define ro02a_empshh_lbl 1 `"1"', add
label define ro02a_empshh_lbl 2 `"2"', add
label define ro02a_empshh_lbl 3 `"3"', add
label define ro02a_empshh_lbl 4 `"4"', add
label define ro02a_empshh_lbl 5 `"5"', add
label define ro02a_empshh_lbl 6 `"6"', add
label define ro02a_empshh_lbl 7 `"7"', add
label define ro02a_empshh_lbl 8 `"8"', add
label define ro02a_empshh_lbl 9 `"9"', add
label values ro02a_empshh ro02a_empshh_lbl

label define ro02a_gener_lbl 101 `"One single person"'
label define ro02a_gener_lbl 102 `"One single married couple only"', add
label define ro02a_gener_lbl 103 `"One single cohabiting couple only"', add
label define ro02a_gener_lbl 201 `"Household head and other persons"', add
label define ro02a_gener_lbl 202 `"Married couple and other persons"', add
label define ro02a_gener_lbl 203 `"Cohabiting couple and other persons"', add
label define ro02a_gener_lbl 301 `"Household head with children"', add
label define ro02a_gener_lbl 302 `"Household head with parents"', add
label define ro02a_gener_lbl 303 `"Household head with grandchildren"', add
label define ro02a_gener_lbl 304 `"Household head with grandparents"', add
label define ro02a_gener_lbl 305 `"Household head, spouse and children"', add
label define ro02a_gener_lbl 306 `"Household head, spose and parents"', add
label define ro02a_gener_lbl 307 `"Household head, spose and grandchildren"', add
label define ro02a_gener_lbl 308 `"Household head, spose and grandparents"', add
label define ro02a_gener_lbl 309 `"Household head,  cohabitant and children"', add
label define ro02a_gener_lbl 310 `"Household head,  cohabitant and parents"', add
label define ro02a_gener_lbl 311 `"Household head,  cohabitant and grandchildren"', add
label define ro02a_gener_lbl 312 `"Household head,  cohabitant and grandparents"', add
label define ro02a_gener_lbl 401 `"Household head, children and other persons"', add
label define ro02a_gener_lbl 402 `"Household head, parents and other persons"', add
label define ro02a_gener_lbl 403 `"Household head, grandchildren and other persons"', add
label define ro02a_gener_lbl 404 `"Household head, grandparents and other persons"', add
label define ro02a_gener_lbl 405 `"Household head, spouse, children and other persons"', add
label define ro02a_gener_lbl 406 `"Household head, spouse, parents and other persons"', add
label define ro02a_gener_lbl 407 `"Household head, spouse, grandchildren and other persons"', add
label define ro02a_gener_lbl 408 `"Household head, spouse, grandparents and other persons"', add
label define ro02a_gener_lbl 409 `"Household head, cohabitant, children and other persons"', add
label define ro02a_gener_lbl 410 `"Household head, cohabitant, parents and other persons"', add
label define ro02a_gener_lbl 411 `"Household head, cohabitant, grandchildren and other persons"', add
label define ro02a_gener_lbl 412 `"Household head, cohabitant, grandparents and other persons"', add
label define ro02a_gener_lbl 501 `"Household head, children and parents"', add
label define ro02a_gener_lbl 502 `"Household head, children and grandchildren"', add
label define ro02a_gener_lbl 503 `"Household head, children and grandparents"', add
label define ro02a_gener_lbl 504 `"Household head, parents and grandparents"', add
label define ro02a_gener_lbl 505 `"Household head, parents and grandchildren"', add
label define ro02a_gener_lbl 506 `"Household head, grandchildren and grandparents"', add
label define ro02a_gener_lbl 507 `"Household head, spouse, children and parents"', add
label define ro02a_gener_lbl 508 `"Household head, spouse, children and grandchildren"', add
label define ro02a_gener_lbl 509 `"Household head, spouse, children and grandparents"', add
label define ro02a_gener_lbl 510 `"Household head, spouse, parents and grandparents"', add
label define ro02a_gener_lbl 511 `"Household head, spouse, parents and grandchildren"', add
label define ro02a_gener_lbl 512 `"Household head, spouse, grandchildren and grandparents"', add
label define ro02a_gener_lbl 513 `"Household head, cohabitant, children and parents"', add
label define ro02a_gener_lbl 514 `"Household head, cohabitant, children and grandchildren"', add
label define ro02a_gener_lbl 515 `"Household head, cohabitant, children and grandparents"', add
label define ro02a_gener_lbl 516 `"Household head, cohabitant, parents and grandparents"', add
label define ro02a_gener_lbl 517 `"Household head, cohabitant, parents and grandchildren"', add
label define ro02a_gener_lbl 518 `"Household head, cohabitant, grandchildren and grandparents"', add
label define ro02a_gener_lbl 601 `"Household head, children, parents and other persons"', add
label define ro02a_gener_lbl 602 `"Household head, children, grandchildren and other persons"', add
label define ro02a_gener_lbl 603 `"Household head, children, grandparents and other persons"', add
label define ro02a_gener_lbl 604 `"Household head, parents, grandparents and other persons"', add
label define ro02a_gener_lbl 605 `"Household head, parents, grandchildren and other persons"', add
label define ro02a_gener_lbl 606 `"Household head, grandchildren, grandparents and other persons"', add
label define ro02a_gener_lbl 607 `"Household head, spouse, children, parents and other persons"', add
label define ro02a_gener_lbl 608 `"Household head, spouse, children, grandchildren and other persons"', add
label define ro02a_gener_lbl 609 `"Household head, spouse, children, grandparents and other persons"', add
label define ro02a_gener_lbl 610 `"Household head, spouse, parents, grandparents and other persons"', add
label define ro02a_gener_lbl 611 `"Household head, spouse, parents, grandchildren and other persons"', add
label define ro02a_gener_lbl 612 `"Household head, spouse, grandchildren, grandparents and other persons"', add
label define ro02a_gener_lbl 613 `"Household head, cohabitant, children, parents and other persons"', add
label define ro02a_gener_lbl 614 `"Household head, cohabitant, children, grandchildren and other persons"', add
label define ro02a_gener_lbl 615 `"Household head, cohabitant, children, grandparents and other persons"', add
label define ro02a_gener_lbl 616 `"Household head, cohabitant, parents, grandparents and other persons"', add
label define ro02a_gener_lbl 617 `"Household head, cohabitant, parents, grandchildren and other persons"', add
label define ro02a_gener_lbl 618 `"Household head, cohabitant, grandchildren, grandparents and other persons"', add
label define ro02a_gener_lbl 701 `"Household head, children, parents and grandchildren"', add
label define ro02a_gener_lbl 702 `"Household head, children, parents and grandparents"', add
label define ro02a_gener_lbl 703 `"Household head, children, grandchildren and grandparents"', add
label define ro02a_gener_lbl 704 `"Household head, parents, grandchildren and grandparents"', add
label define ro02a_gener_lbl 705 `"Household head, spouse, children, parents and grandchildren"', add
label define ro02a_gener_lbl 706 `"Household head, spouse, children, parents and grandparents"', add
label define ro02a_gener_lbl 707 `"Household head, spouse, children, grandchildren and grandparents"', add
label define ro02a_gener_lbl 708 `"Household head, spouse, parents, grandchildren and grandparents"', add
label define ro02a_gener_lbl 709 `"Household head, cohabitant, children, parents and grandchildren"', add
label define ro02a_gener_lbl 710 `"Household head, cohabitant, children, parents and grandparents"', add
label define ro02a_gener_lbl 711 `"Household head, cohabitant, children, grandchildren and grandparents"', add
label define ro02a_gener_lbl 712 `"Household head, cohabitant, parents, grandchildren and grandparents"', add
label define ro02a_gener_lbl 713 `"Household head, children, parents, grandchildren and grandparents"', add
label define ro02a_gener_lbl 714 `"Household head, spouse, children, parents, grandchildren and grandparents"', add
label define ro02a_gener_lbl 715 `"Household head, cohabitant, children, parents, grandchildren and grandparents"', add
label define ro02a_gener_lbl 801 `"Household head, children, parents, grandchildren and other persons"', add
label define ro02a_gener_lbl 802 `"Household head, children, parents, grandparents and other persons"', add
label define ro02a_gener_lbl 803 `"Household head, children, grandchildren, grandparents and other persons"', add
label define ro02a_gener_lbl 804 `"Household head, parents, grandchildren, grandparents and other persons"', add
label define ro02a_gener_lbl 805 `"Household head, spouse, children, parents, grandchildren and other persons"', add
label define ro02a_gener_lbl 806 `"Household head, spouse, children, parents, grandparents and other persons"', add
label define ro02a_gener_lbl 807 `"Household head, spouse, children, grandchildren, grandparents and other persons"', add
label define ro02a_gener_lbl 808 `"Household head, spouse, parents, grandchildren, grandparents and other persons"', add
label define ro02a_gener_lbl 809 `"Household head, cohabitant, children, parents, grandchildren and other persons"', add
label define ro02a_gener_lbl 810 `"Household head, cohabitant, children, parents, grandparents and other persons"', add
label define ro02a_gener_lbl 811 `"Household head, cohabitant, children, grandchildren, grandparents and other persons"', add
label define ro02a_gener_lbl 812 `"Household head, cohabitant, parents, grandchildren, grandparents and other persons"', add
label define ro02a_gener_lbl 813 `"Household head, children, parents, grandchildren, grandparents and other persons"', add
label define ro02a_gener_lbl 814 `"Household head, spouse, children, parents, grandchildren, grandparents and other persons"', add
label define ro02a_gener_lbl 815 `"Household head, cohabitant, children, parents, grandchildren, grandparents and other persons"', add
label define ro02a_gener_lbl 000 `"Unknown"', add
label values ro02a_gener ro02a_gener_lbl

label define ro02a_famnuch_lbl 0 `"0"'
label define ro02a_famnuch_lbl 1 `"1"', add
label define ro02a_famnuch_lbl 2 `"2"', add
label define ro02a_famnuch_lbl 3 `"3"', add
label define ro02a_famnuch_lbl 4 `"4"', add
label define ro02a_famnuch_lbl 5 `"5"', add
label define ro02a_famnuch_lbl 6 `"6"', add
label values ro02a_famnuch ro02a_famnuch_lbl

label define ro02a_relateh_lbl 401 `"One single person"'
label define ro02a_relateh_lbl 402 `"Two or more related persons without any family nucleus"', add
label define ro02a_relateh_lbl 403 `"Two or more non-related persons without any family nucleus"', add
label define ro02a_relateh_lbl 404 `"Two or more related and non-related persons without any family nucleus"', add
label define ro02a_relateh_lbl 101 `"Married couple only"', add
label define ro02a_relateh_lbl 102 `"Married couple without children with other related persons"', add
label define ro02a_relateh_lbl 103 `"Married couple without children with other non-related persons"', add
label define ro02a_relateh_lbl 104 `"Married couple without children with other related and non-related persons"', add
label define ro02a_relateh_lbl 105 `"Married couple with at least one child without other persons"', add
label define ro02a_relateh_lbl 106 `"Married couple with at least one child and other related persons"', add
label define ro02a_relateh_lbl 107 `"Married couple with at least one child and other non-related persons"', add
label define ro02a_relateh_lbl 108 `"Married couple with at least one child and other related and non-related persons"', add
label define ro02a_relateh_lbl 109 `"Cohabiting couple only"', add
label define ro02a_relateh_lbl 110 `"Cohabiting couple with other related persons"', add
label define ro02a_relateh_lbl 111 `"Cohabiting couple with other non-related persons"', add
label define ro02a_relateh_lbl 112 `"Cohabiting couple with other related and non-related persons"', add
label define ro02a_relateh_lbl 113 `"Cohabiting couple with at least one child without other persons"', add
label define ro02a_relateh_lbl 114 `"Cohabiting couple with at least one child and other related persons"', add
label define ro02a_relateh_lbl 115 `"Cohabiting couple with at least one child and other non-related persons"', add
label define ro02a_relateh_lbl 116 `"Cohabiting couple with at least one child and other related and non-related persons"', add
label define ro02a_relateh_lbl 117 `"Lone father with at least one child without other persons"', add
label define ro02a_relateh_lbl 118 `"Lone father with at least one child and other related persons"', add
label define ro02a_relateh_lbl 119 `"Lone father with at least one child and other non-related persons"', add
label define ro02a_relateh_lbl 120 `"Lone father with at least one child and other related and non-related persons"', add
label define ro02a_relateh_lbl 121 `"Lone mother with at least one child without other persons"', add
label define ro02a_relateh_lbl 122 `"Lone mother with at least one child and other related persons"', add
label define ro02a_relateh_lbl 123 `"Lone mother with at least one child and other non-related persons"', add
label define ro02a_relateh_lbl 124 `"Lone mother with at least one child and other related and non-related persons"', add
label define ro02a_relateh_lbl 201 `"Two related family nuclei only"', add
label define ro02a_relateh_lbl 202 `"Two related family nuclei with other persons"', add
label define ro02a_relateh_lbl 203 `"Two non-related family nuclei only"', add
label define ro02a_relateh_lbl 204 `"Two non-related family nuclei with other persons"', add
label define ro02a_relateh_lbl 301 `"Three family nuclei and over of which at least two related family nuclei,  without other persons"', add
label define ro02a_relateh_lbl 302 `"Three family nuclei and over of which at least two related family nuclei, with other persons"', add
label define ro02a_relateh_lbl 303 `"Three non-related family nuclei and over without other persons"', add
label define ro02a_relateh_lbl 304 `"Three non-related family nuclei and over with other persons"', add
label values ro02a_relateh ro02a_relateh_lbl

label define ro02a_hhtype_lbl 11 `"Household with 1 family nucleus -- married couple without children"'
label define ro02a_hhtype_lbl 12 `"Household with 1 family nucleus -- not legally married couple without children"', add
label define ro02a_hhtype_lbl 13 `"Household with 1 family nucleus--married couple with children"', add
label define ro02a_hhtype_lbl 14 `"Household with 1 family nucleus--- not legally married couple with children"', add
label define ro02a_hhtype_lbl 15 `"Household with 1 family nucleus - alone father with children"', add
label define ro02a_hhtype_lbl 16 `"Household with 1 family nucleus - alone mother with children"', add
label define ro02a_hhtype_lbl 20 `"Household with 2 family nuclei"', add
label define ro02a_hhtype_lbl 30 `"Household with 3 family nuclei and over"', add
label define ro02a_hhtype_lbl 41 `"Household with 1 person"', add
label define ro02a_hhtype_lbl 42 `"Household with 2 or more persons  without any family nucleus"', add
label values ro02a_hhtype ro02a_hhtype_lbl

label define ro02a_pernum_lbl 00 `"Household record"'
label define ro02a_pernum_lbl 01 `"1"', add
label define ro02a_pernum_lbl 02 `"2"', add
label define ro02a_pernum_lbl 03 `"3"', add
label define ro02a_pernum_lbl 04 `"4"', add
label define ro02a_pernum_lbl 05 `"5"', add
label define ro02a_pernum_lbl 06 `"6"', add
label define ro02a_pernum_lbl 07 `"7"', add
label define ro02a_pernum_lbl 08 `"8"', add
label define ro02a_pernum_lbl 09 `"9"', add
label define ro02a_pernum_lbl 10 `"10"', add
label define ro02a_pernum_lbl 11 `"11"', add
label define ro02a_pernum_lbl 12 `"12"', add
label define ro02a_pernum_lbl 13 `"13"', add
label define ro02a_pernum_lbl 14 `"14"', add
label define ro02a_pernum_lbl 15 `"15"', add
label define ro02a_pernum_lbl 16 `"16"', add
label define ro02a_pernum_lbl 17 `"17"', add
label define ro02a_pernum_lbl 18 `"18"', add
label define ro02a_pernum_lbl 19 `"19"', add
label define ro02a_pernum_lbl 20 `"20"', add
label define ro02a_pernum_lbl 21 `"21"', add
label define ro02a_pernum_lbl 22 `"22"', add
label define ro02a_pernum_lbl 23 `"23"', add
label define ro02a_pernum_lbl 24 `"24"', add
label values ro02a_pernum ro02a_pernum_lbl

label define ro02a_pernumo_lbl 01 `"1"'
label define ro02a_pernumo_lbl 02 `"2"', add
label define ro02a_pernumo_lbl 03 `"3"', add
label define ro02a_pernumo_lbl 04 `"4"', add
label define ro02a_pernumo_lbl 05 `"5"', add
label define ro02a_pernumo_lbl 06 `"6"', add
label define ro02a_pernumo_lbl 07 `"7"', add
label define ro02a_pernumo_lbl 08 `"8"', add
label define ro02a_pernumo_lbl 09 `"9"', add
label define ro02a_pernumo_lbl 10 `"10"', add
label define ro02a_pernumo_lbl 11 `"11"', add
label define ro02a_pernumo_lbl 12 `"12"', add
label define ro02a_pernumo_lbl 13 `"13"', add
label define ro02a_pernumo_lbl 14 `"14"', add
label define ro02a_pernumo_lbl 15 `"15"', add
label define ro02a_pernumo_lbl 16 `"16"', add
label define ro02a_pernumo_lbl 17 `"17"', add
label define ro02a_pernumo_lbl 18 `"18"', add
label define ro02a_pernumo_lbl 19 `"19"', add
label define ro02a_pernumo_lbl 20 `"20"', add
label define ro02a_pernumo_lbl 21 `"21"', add
label define ro02a_pernumo_lbl 22 `"22"', add
label define ro02a_pernumo_lbl 23 `"23"', add
label define ro02a_pernumo_lbl 24 `"24"', add
label values ro02a_pernumo ro02a_pernumo_lbl

label define ro02a_relate_lbl 01 `"Household head"'
label define ro02a_relate_lbl 02 `"Husband / wife"', add
label define ro02a_relate_lbl 03 `"Cohabitant"', add
label define ro02a_relate_lbl 04 `"Son /  daughter"', add
label define ro02a_relate_lbl 05 `"Son in law / daughter in law"', add
label define ro02a_relate_lbl 06 `"Grandson / granddaughter"', add
label define ro02a_relate_lbl 07 `"Father / mother"', add
label define ro02a_relate_lbl 08 `"Grandfather / grandmother"', add
label define ro02a_relate_lbl 09 `"Brother / sister"', add
label define ro02a_relate_lbl 10 `"Brother in law / sister in law"', add
label define ro02a_relate_lbl 11 `"Father in law / mother in law"', add
label define ro02a_relate_lbl 12 `"Other relative"', add
label define ro02a_relate_lbl 13 `"Non-related person"', add
label values ro02a_relate ro02a_relate_lbl

label define ro02a_poploc_lbl 00 `"0"'
label define ro02a_poploc_lbl 01 `"1"', add
label define ro02a_poploc_lbl 02 `"2"', add
label define ro02a_poploc_lbl 03 `"3"', add
label define ro02a_poploc_lbl 04 `"4"', add
label define ro02a_poploc_lbl 05 `"5"', add
label define ro02a_poploc_lbl 06 `"6"', add
label define ro02a_poploc_lbl 07 `"7"', add
label define ro02a_poploc_lbl 08 `"8"', add
label define ro02a_poploc_lbl 09 `"9"', add
label define ro02a_poploc_lbl 10 `"10"', add
label define ro02a_poploc_lbl 11 `"11"', add
label define ro02a_poploc_lbl 12 `"12"', add
label define ro02a_poploc_lbl 13 `"13"', add
label define ro02a_poploc_lbl 14 `"14"', add
label define ro02a_poploc_lbl 15 `"15"', add
label define ro02a_poploc_lbl 16 `"16"', add
label define ro02a_poploc_lbl 17 `"17"', add
label define ro02a_poploc_lbl 18 `"18"', add
label values ro02a_poploc ro02a_poploc_lbl

label define ro02a_momloc_lbl 00 `"0"'
label define ro02a_momloc_lbl 01 `"1"', add
label define ro02a_momloc_lbl 02 `"2"', add
label define ro02a_momloc_lbl 03 `"3"', add
label define ro02a_momloc_lbl 04 `"4"', add
label define ro02a_momloc_lbl 05 `"5"', add
label define ro02a_momloc_lbl 06 `"6"', add
label define ro02a_momloc_lbl 07 `"7"', add
label define ro02a_momloc_lbl 08 `"8"', add
label define ro02a_momloc_lbl 09 `"9"', add
label define ro02a_momloc_lbl 10 `"10"', add
label define ro02a_momloc_lbl 11 `"11"', add
label define ro02a_momloc_lbl 12 `"12"', add
label define ro02a_momloc_lbl 13 `"13"', add
label define ro02a_momloc_lbl 14 `"14"', add
label define ro02a_momloc_lbl 15 `"15"', add
label define ro02a_momloc_lbl 16 `"16"', add
label define ro02a_momloc_lbl 17 `"17"', add
label define ro02a_momloc_lbl 19 `"19"', add
label values ro02a_momloc ro02a_momloc_lbl

label define ro02a_sploc_lbl 00 `"0"'
label define ro02a_sploc_lbl 01 `"1"', add
label define ro02a_sploc_lbl 02 `"2"', add
label define ro02a_sploc_lbl 03 `"3"', add
label define ro02a_sploc_lbl 04 `"4"', add
label define ro02a_sploc_lbl 05 `"5"', add
label define ro02a_sploc_lbl 06 `"6"', add
label define ro02a_sploc_lbl 07 `"7"', add
label define ro02a_sploc_lbl 08 `"8"', add
label define ro02a_sploc_lbl 09 `"9"', add
label define ro02a_sploc_lbl 10 `"10"', add
label define ro02a_sploc_lbl 11 `"11"', add
label define ro02a_sploc_lbl 12 `"12"', add
label define ro02a_sploc_lbl 13 `"13"', add
label define ro02a_sploc_lbl 14 `"14"', add
label define ro02a_sploc_lbl 15 `"15"', add
label define ro02a_sploc_lbl 16 `"16"', add
label define ro02a_sploc_lbl 17 `"17"', add
label define ro02a_sploc_lbl 18 `"18"', add
label define ro02a_sploc_lbl 19 `"19"', add
label values ro02a_sploc ro02a_sploc_lbl

label define ro02a_absent_lbl 1 `"Present"'
label define ro02a_absent_lbl 2 `"Absent, person who left the household to another locality of the country"', add
label define ro02a_absent_lbl 3 `"Absent, person who left the household to go abroad"', add
label values ro02a_absent ro02a_absent_lbl

label define ro02a_absdur_lbl 1 `"Less than 6 months"'
label define ro02a_absdur_lbl 2 `"Between 6-12 months"', add
label define ro02a_absdur_lbl 3 `"More than 12 months"', add
label define ro02a_absdur_lbl 9 `"NIU (not in universe)"', add
label values ro02a_absdur ro02a_absdur_lbl

label define ro02a_abswhy_lbl 1 `"For work"'
label define ro02a_abswhy_lbl 2 `"For studies"', add
label define ro02a_abswhy_lbl 3 `"For business"', add
label define ro02a_abswhy_lbl 4 `"Other reason"', add
label define ro02a_abswhy_lbl 9 `"NIU (not in universe)"', add
label values ro02a_abswhy ro02a_abswhy_lbl

label define ro02a_moved_lbl 1 `"Yes"'
label define ro02a_moved_lbl 2 `"No"', add
label define ro02a_moved_lbl 9 `"NIU (not in universe)"', add
label values ro02a_moved ro02a_moved_lbl

label define ro02a_prevres_lbl 01 `"Alba"'
label define ro02a_prevres_lbl 02 `"Arad"', add
label define ro02a_prevres_lbl 03 `"Arges"', add
label define ro02a_prevres_lbl 04 `"Bacau"', add
label define ro02a_prevres_lbl 05 `"Bihor"', add
label define ro02a_prevres_lbl 06 `"Bistrita Nasaud"', add
label define ro02a_prevres_lbl 07 `"Botosani"', add
label define ro02a_prevres_lbl 08 `"Brasov"', add
label define ro02a_prevres_lbl 09 `"Braila"', add
label define ro02a_prevres_lbl 10 `"Buzau"', add
label define ro02a_prevres_lbl 11 `"Caras Severin"', add
label define ro02a_prevres_lbl 12 `"Cluj"', add
label define ro02a_prevres_lbl 13 `"Constanta"', add
label define ro02a_prevres_lbl 14 `"Covasna"', add
label define ro02a_prevres_lbl 15 `"Dimbovita"', add
label define ro02a_prevres_lbl 16 `"Dolj"', add
label define ro02a_prevres_lbl 17 `"Galati"', add
label define ro02a_prevres_lbl 18 `"Gorj"', add
label define ro02a_prevres_lbl 19 `"Harghita"', add
label define ro02a_prevres_lbl 20 `"Hunedoara"', add
label define ro02a_prevres_lbl 21 `"Ialomita"', add
label define ro02a_prevres_lbl 22 `"Iasi"', add
label define ro02a_prevres_lbl 23 `"Ilfov"', add
label define ro02a_prevres_lbl 24 `"Maramures"', add
label define ro02a_prevres_lbl 25 `"Mehedinti"', add
label define ro02a_prevres_lbl 26 `"Mures"', add
label define ro02a_prevres_lbl 27 `"Neamt"', add
label define ro02a_prevres_lbl 28 `"Olt"', add
label define ro02a_prevres_lbl 29 `"Prahova"', add
label define ro02a_prevres_lbl 30 `"Satu Mare"', add
label define ro02a_prevres_lbl 31 `"Salaj"', add
label define ro02a_prevres_lbl 32 `"Sibiu"', add
label define ro02a_prevres_lbl 33 `"Suceava"', add
label define ro02a_prevres_lbl 34 `"Teleorman"', add
label define ro02a_prevres_lbl 35 `"Timis"', add
label define ro02a_prevres_lbl 36 `"Tulcea"', add
label define ro02a_prevres_lbl 37 `"Vaslui"', add
label define ro02a_prevres_lbl 38 `"Valcea"', add
label define ro02a_prevres_lbl 39 `"Vrancea"', add
label define ro02a_prevres_lbl 40 `"Bucharest"', add
label define ro02a_prevres_lbl 41 `"Bucharest Sector 1"', add
label define ro02a_prevres_lbl 42 `"Bucharest Sector 2"', add
label define ro02a_prevres_lbl 43 `"Bucharest Sector 3"', add
label define ro02a_prevres_lbl 44 `"Bucharest Sector 4"', add
label define ro02a_prevres_lbl 45 `"Bucharest Sector 5"', add
label define ro02a_prevres_lbl 46 `"Bucharest Sector 6"', add
label define ro02a_prevres_lbl 51 `"Calarasi"', add
label define ro02a_prevres_lbl 52 `"Giurgiu"', add
label define ro02a_prevres_lbl 54 `"Austria"', add
label define ro02a_prevres_lbl 57 `"Bulgaria"', add
label define ro02a_prevres_lbl 58 `"Czech Republic"', add
label define ro02a_prevres_lbl 59 `"China"', add
label define ro02a_prevres_lbl 63 `"France"', add
label define ro02a_prevres_lbl 64 `"Germany"', add
label define ro02a_prevres_lbl 65 `"Greece"', add
label define ro02a_prevres_lbl 66 `"Jordan"', add
label define ro02a_prevres_lbl 67 `"Iraq"', add
label define ro02a_prevres_lbl 68 `"Iran"', add
label define ro02a_prevres_lbl 70 `"Israel"', add
label define ro02a_prevres_lbl 71 `"Italy"', add
label define ro02a_prevres_lbl 72 `"Yugoslavia"', add
label define ro02a_prevres_lbl 73 `"Lebanon"', add
label define ro02a_prevres_lbl 74 `"Macedonia"', add
label define ro02a_prevres_lbl 75 `"Moldova"', add
label define ro02a_prevres_lbl 77 `"Poland"', add
label define ro02a_prevres_lbl 79 `"Russian Federation"', add
label define ro02a_prevres_lbl 80 `"Syria"', add
label define ro02a_prevres_lbl 85 `"U.S.A."', add
label define ro02a_prevres_lbl 86 `"Turkey"', add
label define ro02a_prevres_lbl 87 `"Ukraine"', add
label define ro02a_prevres_lbl 88 `"United Kingdom"', add
label define ro02a_prevres_lbl 89 `"Hungary"', add
label define ro02a_prevres_lbl 91 `"Other European countries"', add
label define ro02a_prevres_lbl 92 `"Countries from other continents"', add
label define ro02a_prevres_lbl 98 `"Response suppressed"', add
label define ro02a_prevres_lbl 99 `"No response"', add
label values ro02a_prevres ro02a_prevres_lbl

label define ro02a_resyr_lbl 0000 `"NIU (not in universe)"'
label define ro02a_resyr_lbl 1919 `"1919 or earlier"', add
label define ro02a_resyr_lbl 1920 `"1920"', add
label define ro02a_resyr_lbl 1921 `"1921"', add
label define ro02a_resyr_lbl 1922 `"1922"', add
label define ro02a_resyr_lbl 1923 `"1923"', add
label define ro02a_resyr_lbl 1924 `"1924"', add
label define ro02a_resyr_lbl 1925 `"1925"', add
label define ro02a_resyr_lbl 1926 `"1926"', add
label define ro02a_resyr_lbl 1927 `"1927"', add
label define ro02a_resyr_lbl 1928 `"1928"', add
label define ro02a_resyr_lbl 1929 `"1929"', add
label define ro02a_resyr_lbl 1930 `"1930"', add
label define ro02a_resyr_lbl 1931 `"1931"', add
label define ro02a_resyr_lbl 1932 `"1932"', add
label define ro02a_resyr_lbl 1933 `"1933"', add
label define ro02a_resyr_lbl 1934 `"1934"', add
label define ro02a_resyr_lbl 1935 `"1935"', add
label define ro02a_resyr_lbl 1936 `"1936"', add
label define ro02a_resyr_lbl 1937 `"1937"', add
label define ro02a_resyr_lbl 1938 `"1938"', add
label define ro02a_resyr_lbl 1939 `"1939"', add
label define ro02a_resyr_lbl 1940 `"1940"', add
label define ro02a_resyr_lbl 1941 `"1941"', add
label define ro02a_resyr_lbl 1942 `"1942"', add
label define ro02a_resyr_lbl 1943 `"1943"', add
label define ro02a_resyr_lbl 1944 `"1944"', add
label define ro02a_resyr_lbl 1945 `"1945"', add
label define ro02a_resyr_lbl 1946 `"1946"', add
label define ro02a_resyr_lbl 1947 `"1947"', add
label define ro02a_resyr_lbl 1948 `"1948"', add
label define ro02a_resyr_lbl 1949 `"1949"', add
label define ro02a_resyr_lbl 1950 `"1950"', add
label define ro02a_resyr_lbl 1951 `"1951"', add
label define ro02a_resyr_lbl 1952 `"1952"', add
label define ro02a_resyr_lbl 1953 `"1953"', add
label define ro02a_resyr_lbl 1954 `"1954"', add
label define ro02a_resyr_lbl 1955 `"1955"', add
label define ro02a_resyr_lbl 1956 `"1956"', add
label define ro02a_resyr_lbl 1957 `"1957"', add
label define ro02a_resyr_lbl 1958 `"1958"', add
label define ro02a_resyr_lbl 1959 `"1959"', add
label define ro02a_resyr_lbl 1960 `"1960"', add
label define ro02a_resyr_lbl 1961 `"1961"', add
label define ro02a_resyr_lbl 1962 `"1962"', add
label define ro02a_resyr_lbl 1963 `"1963"', add
label define ro02a_resyr_lbl 1964 `"1964"', add
label define ro02a_resyr_lbl 1965 `"1965"', add
label define ro02a_resyr_lbl 1966 `"1966"', add
label define ro02a_resyr_lbl 1967 `"1967"', add
label define ro02a_resyr_lbl 1968 `"1968"', add
label define ro02a_resyr_lbl 1969 `"1969"', add
label define ro02a_resyr_lbl 1970 `"1970"', add
label define ro02a_resyr_lbl 1971 `"1971"', add
label define ro02a_resyr_lbl 1972 `"1972"', add
label define ro02a_resyr_lbl 1973 `"1973"', add
label define ro02a_resyr_lbl 1974 `"1974"', add
label define ro02a_resyr_lbl 1975 `"1975"', add
label define ro02a_resyr_lbl 1976 `"1976"', add
label define ro02a_resyr_lbl 1977 `"1977"', add
label define ro02a_resyr_lbl 1978 `"1978"', add
label define ro02a_resyr_lbl 1979 `"1979"', add
label define ro02a_resyr_lbl 1980 `"1980"', add
label define ro02a_resyr_lbl 1981 `"1981"', add
label define ro02a_resyr_lbl 1982 `"1982"', add
label define ro02a_resyr_lbl 1983 `"1983"', add
label define ro02a_resyr_lbl 1984 `"1984"', add
label define ro02a_resyr_lbl 1985 `"1985"', add
label define ro02a_resyr_lbl 1986 `"1986"', add
label define ro02a_resyr_lbl 1987 `"1987"', add
label define ro02a_resyr_lbl 1988 `"1988"', add
label define ro02a_resyr_lbl 1989 `"1989"', add
label define ro02a_resyr_lbl 1990 `"1990"', add
label define ro02a_resyr_lbl 1991 `"1991"', add
label define ro02a_resyr_lbl 1992 `"1992"', add
label define ro02a_resyr_lbl 1993 `"1993"', add
label define ro02a_resyr_lbl 1994 `"1994"', add
label define ro02a_resyr_lbl 1995 `"1995"', add
label define ro02a_resyr_lbl 1996 `"1996"', add
label define ro02a_resyr_lbl 1997 `"1997"', add
label define ro02a_resyr_lbl 1998 `"1998"', add
label define ro02a_resyr_lbl 1999 `"1999"', add
label define ro02a_resyr_lbl 2000 `"2000"', add
label define ro02a_resyr_lbl 2001 `"2001"', add
label define ro02a_resyr_lbl 2002 `"2002"', add
label values ro02a_resyr ro02a_resyr_lbl

label define ro02a_bpl_lbl 01 `"Alba"'
label define ro02a_bpl_lbl 02 `"Arad"', add
label define ro02a_bpl_lbl 03 `"Arges"', add
label define ro02a_bpl_lbl 04 `"Bacau"', add
label define ro02a_bpl_lbl 05 `"Bihor"', add
label define ro02a_bpl_lbl 06 `"Bistrita Nasaud"', add
label define ro02a_bpl_lbl 07 `"Botosani"', add
label define ro02a_bpl_lbl 08 `"Brasov"', add
label define ro02a_bpl_lbl 09 `"Braila"', add
label define ro02a_bpl_lbl 10 `"Buzau"', add
label define ro02a_bpl_lbl 11 `"Caras Severin"', add
label define ro02a_bpl_lbl 12 `"Cluj"', add
label define ro02a_bpl_lbl 13 `"Constanta"', add
label define ro02a_bpl_lbl 14 `"Covasna"', add
label define ro02a_bpl_lbl 15 `"Dimbovita"', add
label define ro02a_bpl_lbl 16 `"Dolj"', add
label define ro02a_bpl_lbl 17 `"Galati"', add
label define ro02a_bpl_lbl 18 `"Gorj"', add
label define ro02a_bpl_lbl 19 `"Harghita"', add
label define ro02a_bpl_lbl 20 `"Hunedoara"', add
label define ro02a_bpl_lbl 21 `"Ialomita"', add
label define ro02a_bpl_lbl 22 `"Iasi"', add
label define ro02a_bpl_lbl 23 `"Ilfov"', add
label define ro02a_bpl_lbl 24 `"Maramures"', add
label define ro02a_bpl_lbl 25 `"Mehedinti"', add
label define ro02a_bpl_lbl 26 `"Mures"', add
label define ro02a_bpl_lbl 27 `"Neamt"', add
label define ro02a_bpl_lbl 28 `"Olt"', add
label define ro02a_bpl_lbl 29 `"Prahova"', add
label define ro02a_bpl_lbl 30 `"Satu Mare"', add
label define ro02a_bpl_lbl 31 `"Salaj"', add
label define ro02a_bpl_lbl 32 `"Sibiu"', add
label define ro02a_bpl_lbl 33 `"Suceava"', add
label define ro02a_bpl_lbl 34 `"Teleorman"', add
label define ro02a_bpl_lbl 35 `"Timis"', add
label define ro02a_bpl_lbl 36 `"Tulcea"', add
label define ro02a_bpl_lbl 37 `"Vaslui"', add
label define ro02a_bpl_lbl 38 `"Valcea"', add
label define ro02a_bpl_lbl 39 `"Vrancea"', add
label define ro02a_bpl_lbl 40 `"Bucharest"', add
label define ro02a_bpl_lbl 41 `"Bucharest Sector 1"', add
label define ro02a_bpl_lbl 42 `"Bucharest Sector 2"', add
label define ro02a_bpl_lbl 43 `"Bucharest Sector 3"', add
label define ro02a_bpl_lbl 44 `"Bucharest Sector 4"', add
label define ro02a_bpl_lbl 45 `"Bucharest Sector 5"', add
label define ro02a_bpl_lbl 46 `"Bucharest Sector 6"', add
label define ro02a_bpl_lbl 51 `"Calarasi"', add
label define ro02a_bpl_lbl 52 `"Giurgiu"', add
label define ro02a_bpl_lbl 53 `"Albania"', add
label define ro02a_bpl_lbl 54 `"Austria"', add
label define ro02a_bpl_lbl 57 `"Bulgaria"', add
label define ro02a_bpl_lbl 58 `"Czech Republic"', add
label define ro02a_bpl_lbl 59 `"China"', add
label define ro02a_bpl_lbl 60 `"Croatia"', add
label define ro02a_bpl_lbl 63 `"France"', add
label define ro02a_bpl_lbl 64 `"Germany"', add
label define ro02a_bpl_lbl 65 `"Greece"', add
label define ro02a_bpl_lbl 66 `"Jordan"', add
label define ro02a_bpl_lbl 67 `"Iraq"', add
label define ro02a_bpl_lbl 68 `"Iran"', add
label define ro02a_bpl_lbl 70 `"Israel"', add
label define ro02a_bpl_lbl 71 `"Italy"', add
label define ro02a_bpl_lbl 72 `"Yugoslavia"', add
label define ro02a_bpl_lbl 73 `"Lebanon"', add
label define ro02a_bpl_lbl 74 `"Macedonia"', add
label define ro02a_bpl_lbl 75 `"Moldova"', add
label define ro02a_bpl_lbl 76 `"Netherlands"', add
label define ro02a_bpl_lbl 77 `"Poland"', add
label define ro02a_bpl_lbl 79 `"Russian Federation"', add
label define ro02a_bpl_lbl 80 `"Syria"', add
label define ro02a_bpl_lbl 81 `"Slovakia"', add
label define ro02a_bpl_lbl 85 `"U.S.A."', add
label define ro02a_bpl_lbl 86 `"Turkey"', add
label define ro02a_bpl_lbl 87 `"Ukraine"', add
label define ro02a_bpl_lbl 88 `"United Kingdom"', add
label define ro02a_bpl_lbl 89 `"Hungary"', add
label define ro02a_bpl_lbl 90 `"In the census enumeration locality"', add
label define ro02a_bpl_lbl 91 `"Other European countries"', add
label define ro02a_bpl_lbl 92 `"Countries from other continents"', add
label define ro02a_bpl_lbl 99 `"Response suppressed"', add
label values ro02a_bpl ro02a_bpl_lbl

label define ro02a_bpl2_lbl 1 `"Municipality/town"'
label define ro02a_bpl2_lbl 2 `"Commune"', add
label define ro02a_bpl2_lbl 9 `"NIU (not in universe)"', add
label values ro02a_bpl2 ro02a_bpl2_lbl

label define ro02a_sex_lbl 1 `"Male"'
label define ro02a_sex_lbl 2 `"Female"', add
label values ro02a_sex ro02a_sex_lbl

label define ro02a_birthyr_lbl 1903 `"1903 or earlier"'
label define ro02a_birthyr_lbl 1904 `"1904"', add
label define ro02a_birthyr_lbl 1905 `"1905"', add
label define ro02a_birthyr_lbl 1906 `"1906"', add
label define ro02a_birthyr_lbl 1907 `"1907"', add
label define ro02a_birthyr_lbl 1908 `"1908"', add
label define ro02a_birthyr_lbl 1909 `"1909"', add
label define ro02a_birthyr_lbl 1910 `"1910"', add
label define ro02a_birthyr_lbl 1911 `"1911"', add
label define ro02a_birthyr_lbl 1912 `"1912"', add
label define ro02a_birthyr_lbl 1913 `"1913"', add
label define ro02a_birthyr_lbl 1914 `"1914"', add
label define ro02a_birthyr_lbl 1915 `"1915"', add
label define ro02a_birthyr_lbl 1916 `"1916"', add
label define ro02a_birthyr_lbl 1917 `"1917"', add
label define ro02a_birthyr_lbl 1918 `"1918"', add
label define ro02a_birthyr_lbl 1919 `"1919"', add
label define ro02a_birthyr_lbl 1920 `"1920"', add
label define ro02a_birthyr_lbl 1921 `"1921"', add
label define ro02a_birthyr_lbl 1922 `"1922"', add
label define ro02a_birthyr_lbl 1923 `"1923"', add
label define ro02a_birthyr_lbl 1924 `"1924"', add
label define ro02a_birthyr_lbl 1925 `"1925"', add
label define ro02a_birthyr_lbl 1926 `"1926"', add
label define ro02a_birthyr_lbl 1927 `"1927"', add
label define ro02a_birthyr_lbl 1928 `"1928"', add
label define ro02a_birthyr_lbl 1929 `"1929"', add
label define ro02a_birthyr_lbl 1930 `"1930"', add
label define ro02a_birthyr_lbl 1931 `"1931"', add
label define ro02a_birthyr_lbl 1932 `"1932"', add
label define ro02a_birthyr_lbl 1933 `"1933"', add
label define ro02a_birthyr_lbl 1934 `"1934"', add
label define ro02a_birthyr_lbl 1935 `"1935"', add
label define ro02a_birthyr_lbl 1936 `"1936"', add
label define ro02a_birthyr_lbl 1937 `"1937"', add
label define ro02a_birthyr_lbl 1938 `"1938"', add
label define ro02a_birthyr_lbl 1939 `"1939"', add
label define ro02a_birthyr_lbl 1940 `"1940"', add
label define ro02a_birthyr_lbl 1941 `"1941"', add
label define ro02a_birthyr_lbl 1942 `"1942"', add
label define ro02a_birthyr_lbl 1943 `"1943"', add
label define ro02a_birthyr_lbl 1944 `"1944"', add
label define ro02a_birthyr_lbl 1945 `"1945"', add
label define ro02a_birthyr_lbl 1946 `"1946"', add
label define ro02a_birthyr_lbl 1947 `"1947"', add
label define ro02a_birthyr_lbl 1948 `"1948"', add
label define ro02a_birthyr_lbl 1949 `"1949"', add
label define ro02a_birthyr_lbl 1950 `"1950"', add
label define ro02a_birthyr_lbl 1951 `"1951"', add
label define ro02a_birthyr_lbl 1952 `"1952"', add
label define ro02a_birthyr_lbl 1953 `"1953"', add
label define ro02a_birthyr_lbl 1954 `"1954"', add
label define ro02a_birthyr_lbl 1955 `"1955"', add
label define ro02a_birthyr_lbl 1956 `"1956"', add
label define ro02a_birthyr_lbl 1957 `"1957"', add
label define ro02a_birthyr_lbl 1958 `"1958"', add
label define ro02a_birthyr_lbl 1959 `"1959"', add
label define ro02a_birthyr_lbl 1960 `"1960"', add
label define ro02a_birthyr_lbl 1961 `"1961"', add
label define ro02a_birthyr_lbl 1962 `"1962"', add
label define ro02a_birthyr_lbl 1963 `"1963"', add
label define ro02a_birthyr_lbl 1964 `"1964"', add
label define ro02a_birthyr_lbl 1965 `"1965"', add
label define ro02a_birthyr_lbl 1966 `"1966"', add
label define ro02a_birthyr_lbl 1967 `"1967"', add
label define ro02a_birthyr_lbl 1968 `"1968"', add
label define ro02a_birthyr_lbl 1969 `"1969"', add
label define ro02a_birthyr_lbl 1970 `"1970"', add
label define ro02a_birthyr_lbl 1971 `"1971"', add
label define ro02a_birthyr_lbl 1972 `"1972"', add
label define ro02a_birthyr_lbl 1973 `"1973"', add
label define ro02a_birthyr_lbl 1974 `"1974"', add
label define ro02a_birthyr_lbl 1975 `"1975"', add
label define ro02a_birthyr_lbl 1976 `"1976"', add
label define ro02a_birthyr_lbl 1977 `"1977"', add
label define ro02a_birthyr_lbl 1978 `"1978"', add
label define ro02a_birthyr_lbl 1979 `"1979"', add
label define ro02a_birthyr_lbl 1980 `"1980"', add
label define ro02a_birthyr_lbl 1981 `"1981"', add
label define ro02a_birthyr_lbl 1982 `"1982"', add
label define ro02a_birthyr_lbl 1983 `"1983"', add
label define ro02a_birthyr_lbl 1984 `"1984"', add
label define ro02a_birthyr_lbl 1985 `"1985"', add
label define ro02a_birthyr_lbl 1986 `"1986"', add
label define ro02a_birthyr_lbl 1987 `"1987"', add
label define ro02a_birthyr_lbl 1988 `"1988"', add
label define ro02a_birthyr_lbl 1989 `"1989"', add
label define ro02a_birthyr_lbl 1990 `"1990"', add
label define ro02a_birthyr_lbl 1991 `"1991"', add
label define ro02a_birthyr_lbl 1992 `"1992"', add
label define ro02a_birthyr_lbl 1993 `"1993"', add
label define ro02a_birthyr_lbl 1994 `"1994"', add
label define ro02a_birthyr_lbl 1995 `"1995"', add
label define ro02a_birthyr_lbl 1996 `"1996"', add
label define ro02a_birthyr_lbl 1997 `"1997"', add
label define ro02a_birthyr_lbl 1998 `"1998"', add
label define ro02a_birthyr_lbl 1999 `"1999"', add
label define ro02a_birthyr_lbl 2000 `"2000"', add
label define ro02a_birthyr_lbl 2001 `"2001"', add
label define ro02a_birthyr_lbl 2002 `"2002"', add
label values ro02a_birthyr ro02a_birthyr_lbl

label define ro02a_birthmo_lbl 01 `"January"'
label define ro02a_birthmo_lbl 02 `"February"', add
label define ro02a_birthmo_lbl 03 `"March"', add
label define ro02a_birthmo_lbl 04 `"April"', add
label define ro02a_birthmo_lbl 05 `"May"', add
label define ro02a_birthmo_lbl 06 `"June"', add
label define ro02a_birthmo_lbl 07 `"July"', add
label define ro02a_birthmo_lbl 08 `"August"', add
label define ro02a_birthmo_lbl 09 `"September"', add
label define ro02a_birthmo_lbl 10 `"October"', add
label define ro02a_birthmo_lbl 11 `"November"', add
label define ro02a_birthmo_lbl 12 `"December"', add
label define ro02a_birthmo_lbl 99 `"Unknown"', add
label values ro02a_birthmo ro02a_birthmo_lbl

label define ro02a_marst_lbl 1 `"Single"'
label define ro02a_marst_lbl 2 `"Married"', add
label define ro02a_marst_lbl 3 `"Divorced"', add
label define ro02a_marst_lbl 4 `"Widowed"', add
label values ro02a_marst ro02a_marst_lbl

label define ro02a_marstdef_lbl 1 `"Yes"'
label define ro02a_marstdef_lbl 2 `"No"', add
label values ro02a_marstdef ro02a_marstdef_lbl

label define ro02a_marryr_lbl 1932 `"1932 or earlier"'
label define ro02a_marryr_lbl 1933 `"1933"', add
label define ro02a_marryr_lbl 1934 `"1934"', add
label define ro02a_marryr_lbl 1935 `"1935"', add
label define ro02a_marryr_lbl 1936 `"1936"', add
label define ro02a_marryr_lbl 1937 `"1937"', add
label define ro02a_marryr_lbl 1938 `"1938"', add
label define ro02a_marryr_lbl 1939 `"1939"', add
label define ro02a_marryr_lbl 1940 `"1940"', add
label define ro02a_marryr_lbl 1941 `"1941"', add
label define ro02a_marryr_lbl 1942 `"1942"', add
label define ro02a_marryr_lbl 1943 `"1943"', add
label define ro02a_marryr_lbl 1944 `"1944"', add
label define ro02a_marryr_lbl 1945 `"1945"', add
label define ro02a_marryr_lbl 1946 `"1946"', add
label define ro02a_marryr_lbl 1947 `"1947"', add
label define ro02a_marryr_lbl 1948 `"1948"', add
label define ro02a_marryr_lbl 1949 `"1949"', add
label define ro02a_marryr_lbl 1950 `"1950"', add
label define ro02a_marryr_lbl 1951 `"1951"', add
label define ro02a_marryr_lbl 1952 `"1952"', add
label define ro02a_marryr_lbl 1953 `"1953"', add
label define ro02a_marryr_lbl 1954 `"1954"', add
label define ro02a_marryr_lbl 1955 `"1955"', add
label define ro02a_marryr_lbl 1956 `"1956"', add
label define ro02a_marryr_lbl 1957 `"1957"', add
label define ro02a_marryr_lbl 1958 `"1958"', add
label define ro02a_marryr_lbl 1959 `"1959"', add
label define ro02a_marryr_lbl 1960 `"1960"', add
label define ro02a_marryr_lbl 1961 `"1961"', add
label define ro02a_marryr_lbl 1962 `"1962"', add
label define ro02a_marryr_lbl 1963 `"1963"', add
label define ro02a_marryr_lbl 1964 `"1964"', add
label define ro02a_marryr_lbl 1965 `"1965"', add
label define ro02a_marryr_lbl 1966 `"1966"', add
label define ro02a_marryr_lbl 1967 `"1967"', add
label define ro02a_marryr_lbl 1968 `"1968"', add
label define ro02a_marryr_lbl 1969 `"1969"', add
label define ro02a_marryr_lbl 1970 `"1970"', add
label define ro02a_marryr_lbl 1971 `"1971"', add
label define ro02a_marryr_lbl 1972 `"1972"', add
label define ro02a_marryr_lbl 1973 `"1973"', add
label define ro02a_marryr_lbl 1974 `"1974"', add
label define ro02a_marryr_lbl 1975 `"1975"', add
label define ro02a_marryr_lbl 1976 `"1976"', add
label define ro02a_marryr_lbl 1977 `"1977"', add
label define ro02a_marryr_lbl 1978 `"1978"', add
label define ro02a_marryr_lbl 1979 `"1979"', add
label define ro02a_marryr_lbl 1980 `"1980"', add
label define ro02a_marryr_lbl 1981 `"1981"', add
label define ro02a_marryr_lbl 1982 `"1982"', add
label define ro02a_marryr_lbl 1983 `"1983"', add
label define ro02a_marryr_lbl 1984 `"1984"', add
label define ro02a_marryr_lbl 1985 `"1985"', add
label define ro02a_marryr_lbl 1986 `"1986"', add
label define ro02a_marryr_lbl 1987 `"1987"', add
label define ro02a_marryr_lbl 1988 `"1988"', add
label define ro02a_marryr_lbl 1989 `"1989"', add
label define ro02a_marryr_lbl 1990 `"1990"', add
label define ro02a_marryr_lbl 1991 `"1991"', add
label define ro02a_marryr_lbl 1992 `"1992"', add
label define ro02a_marryr_lbl 1993 `"1993"', add
label define ro02a_marryr_lbl 1994 `"1994"', add
label define ro02a_marryr_lbl 1995 `"1995"', add
label define ro02a_marryr_lbl 1996 `"1996"', add
label define ro02a_marryr_lbl 1997 `"1997"', add
label define ro02a_marryr_lbl 1998 `"1998"', add
label define ro02a_marryr_lbl 1999 `"1999"', add
label define ro02a_marryr_lbl 2000 `"2000"', add
label define ro02a_marryr_lbl 2001 `"2001"', add
label define ro02a_marryr_lbl 2002 `"2002"', add
label define ro02a_marryr_lbl 9998 `"Unknown"', add
label define ro02a_marryr_lbl 9999 `"NIU (not in universe)"', add
label values ro02a_marryr ro02a_marryr_lbl

label define ro02a_chborn_lbl 00 `"0"'
label define ro02a_chborn_lbl 01 `"1"', add
label define ro02a_chborn_lbl 02 `"2"', add
label define ro02a_chborn_lbl 03 `"3"', add
label define ro02a_chborn_lbl 04 `"4"', add
label define ro02a_chborn_lbl 05 `"5"', add
label define ro02a_chborn_lbl 06 `"6"', add
label define ro02a_chborn_lbl 07 `"7"', add
label define ro02a_chborn_lbl 08 `"8"', add
label define ro02a_chborn_lbl 09 `"9"', add
label define ro02a_chborn_lbl 10 `"10"', add
label define ro02a_chborn_lbl 11 `"11"', add
label define ro02a_chborn_lbl 12 `"12"', add
label define ro02a_chborn_lbl 13 `"13"', add
label define ro02a_chborn_lbl 14 `"14"', add
label define ro02a_chborn_lbl 15 `"15"', add
label define ro02a_chborn_lbl 16 `"16+"', add
label define ro02a_chborn_lbl 99 `"NIU (not in universe)"', add
label values ro02a_chborn ro02a_chborn_lbl

label define ro02a_citiz_lbl 10 `"Romanian"'
label define ro02a_citiz_lbl 59 `"China"', add
label define ro02a_citiz_lbl 63 `"France"', add
label define ro02a_citiz_lbl 64 `"Germany"', add
label define ro02a_citiz_lbl 65 `"Greece"', add
label define ro02a_citiz_lbl 66 `"Jordan"', add
label define ro02a_citiz_lbl 67 `"Iraq"', add
label define ro02a_citiz_lbl 68 `"Iran"', add
label define ro02a_citiz_lbl 70 `"Israel"', add
label define ro02a_citiz_lbl 71 `"Italy"', add
label define ro02a_citiz_lbl 73 `"Lebanon"', add
label define ro02a_citiz_lbl 75 `"Moldova"', add
label define ro02a_citiz_lbl 80 `"Syria"', add
label define ro02a_citiz_lbl 85 `"U.S.A."', add
label define ro02a_citiz_lbl 86 `"Turkey"', add
label define ro02a_citiz_lbl 88 `"United Kingdom"', add
label define ro02a_citiz_lbl 91 `"Other European countries"', add
label define ro02a_citiz_lbl 92 `"Countries from other continents"', add
label define ro02a_citiz_lbl 98 `"Response suppressed"', add
label define ro02a_citiz_lbl 99 `"Unknown"', add
label values ro02a_citiz ro02a_citiz_lbl

label define ro02a_citiz2_lbl 59 `"China"'
label define ro02a_citiz2_lbl 60 `"Croatia"', add
label define ro02a_citiz2_lbl 63 `"France"', add
label define ro02a_citiz2_lbl 64 `"Germany"', add
label define ro02a_citiz2_lbl 65 `"Greece"', add
label define ro02a_citiz2_lbl 66 `"Jordan"', add
label define ro02a_citiz2_lbl 68 `"Iran"', add
label define ro02a_citiz2_lbl 70 `"Israel"', add
label define ro02a_citiz2_lbl 71 `"Italy"', add
label define ro02a_citiz2_lbl 72 `"Yugoslavia"', add
label define ro02a_citiz2_lbl 73 `"Lebanon"', add
label define ro02a_citiz2_lbl 74 `"Macedonia"', add
label define ro02a_citiz2_lbl 75 `"Moldova"', add
label define ro02a_citiz2_lbl 80 `"Syria"', add
label define ro02a_citiz2_lbl 85 `"U.S.A."', add
label define ro02a_citiz2_lbl 86 `"Turkey"', add
label define ro02a_citiz2_lbl 87 `"Ukraine"', add
label define ro02a_citiz2_lbl 88 `"United Kingdom"', add
label define ro02a_citiz2_lbl 89 `"Hungary"', add
label define ro02a_citiz2_lbl 91 `"Other European countries"', add
label define ro02a_citiz2_lbl 92 `"Countries from other continents"', add
label define ro02a_citiz2_lbl 98 `"Response suppressed"', add
label define ro02a_citiz2_lbl 99 `"Persons with one citizenship"', add
label values ro02a_citiz2 ro02a_citiz2_lbl

label define ro02a_ethnic_lbl 10 `"Romanian"'
label define ro02a_ethnic_lbl 11 `"Hungarian"', add
label define ro02a_ethnic_lbl 12 `"Gypsy"', add
label define ro02a_ethnic_lbl 13 `"German"', add
label define ro02a_ethnic_lbl 14 `"Ukrainian"', add
label define ro02a_ethnic_lbl 15 `"Serbian"', add
label define ro02a_ethnic_lbl 16 `"Turk"', add
label define ro02a_ethnic_lbl 17 `"Tartar"', add
label define ro02a_ethnic_lbl 18 `"Slovakian"', add
label define ro02a_ethnic_lbl 19 `"Jewish"', add
label define ro02a_ethnic_lbl 20 `"Russian"', add
label define ro02a_ethnic_lbl 21 `"Lipovan"', add
label define ro02a_ethnic_lbl 22 `"Bulgarian"', add
label define ro02a_ethnic_lbl 23 `"Czech"', add
label define ro02a_ethnic_lbl 24 `"Croat"', add
label define ro02a_ethnic_lbl 25 `"Greek"', add
label define ro02a_ethnic_lbl 26 `"Polish"', add
label define ro02a_ethnic_lbl 27 `"Armenian"', add
label define ro02a_ethnic_lbl 29 `"Saxon"', add
label define ro02a_ethnic_lbl 30 `"Swabian"', add
label define ro02a_ethnic_lbl 31 `"Macedoromanian"', add
label define ro02a_ethnic_lbl 32 `"Aromanian"', add
label define ro02a_ethnic_lbl 33 `"Szekler"', add
label define ro02a_ethnic_lbl 34 `"Ruthenian (Rusyn)"', add
label define ro02a_ethnic_lbl 36 `"Italian"', add
label define ro02a_ethnic_lbl 37 `"Chinese"', add
label define ro02a_ethnic_lbl 38 `"Albanian"', add
label define ro02a_ethnic_lbl 40 `"Macedonian"', add
label define ro02a_ethnic_lbl 41 `"Csango"', add
label define ro02a_ethnic_lbl 42 `"Rudari"', add
label define ro02a_ethnic_lbl 43 `"Moldovan"', add
label define ro02a_ethnic_lbl 50 `"Other ethnic group from European Union"', add
label define ro02a_ethnic_lbl 60 `"Other ethnic group from Europe"', add
label define ro02a_ethnic_lbl 70 `"Other ethnic group from other continents"', add
label define ro02a_ethnic_lbl 98 `"Response suppressed"', add
label define ro02a_ethnic_lbl 99 `"Unknown"', add
label values ro02a_ethnic ro02a_ethnic_lbl

label define ro02a_lang_lbl 10 `"Romanian"'
label define ro02a_lang_lbl 11 `"Hungarian"', add
label define ro02a_lang_lbl 12 `"Gypsy"', add
label define ro02a_lang_lbl 13 `"German"', add
label define ro02a_lang_lbl 14 `"Ukrainian"', add
label define ro02a_lang_lbl 15 `"Serbian"', add
label define ro02a_lang_lbl 16 `"Turkish"', add
label define ro02a_lang_lbl 17 `"Tartar"', add
label define ro02a_lang_lbl 18 `"Slovakian"', add
label define ro02a_lang_lbl 19 `"Yiddish"', add
label define ro02a_lang_lbl 20 `"Russian"', add
label define ro02a_lang_lbl 21 `"Lipovenian"', add
label define ro02a_lang_lbl 22 `"Bulgarian"', add
label define ro02a_lang_lbl 23 `"Czech"', add
label define ro02a_lang_lbl 24 `"Croatian"', add
label define ro02a_lang_lbl 25 `"Greek"', add
label define ro02a_lang_lbl 26 `"Polish"', add
label define ro02a_lang_lbl 27 `"Armenian"', add
label define ro02a_lang_lbl 29 `"Saxonian"', add
label define ro02a_lang_lbl 30 `"Swabian"', add
label define ro02a_lang_lbl 31 `"Macedoromanian"', add
label define ro02a_lang_lbl 32 `"Aromanian"', add
label define ro02a_lang_lbl 36 `"Italian"', add
label define ro02a_lang_lbl 37 `"Chinese"', add
label define ro02a_lang_lbl 40 `"Macedonian"', add
label define ro02a_lang_lbl 50 `"Other from European Union"', add
label define ro02a_lang_lbl 60 `"Other from Europe"', add
label define ro02a_lang_lbl 70 `"Other from other continents"', add
label define ro02a_lang_lbl 98 `"Response suppressed"', add
label define ro02a_lang_lbl 99 `"Unknown"', add
label values ro02a_lang ro02a_lang_lbl

label define ro02a_relig_lbl 10 `"Orthodox"'
label define ro02a_relig_lbl 11 `"Roman Catholic"', add
label define ro02a_relig_lbl 12 `"Greek Catholic"', add
label define ro02a_relig_lbl 13 `"Reformed church"', add
label define ro02a_relig_lbl 14 `"Evangelic of Augustan Confession"', add
label define ro02a_relig_lbl 15 `"Evangelic Lutheran Presbyterian Synod"', add
label define ro02a_relig_lbl 16 `"Unitarian"', add
label define ro02a_relig_lbl 17 `"Armenian"', add
label define ro02a_relig_lbl 18 `"Christian of Old Rite"', add
label define ro02a_relig_lbl 19 `"Baptist"', add
label define ro02a_relig_lbl 20 `"Pentecostal"', add
label define ro02a_relig_lbl 21 `"Seventh-day Adventist"', add
label define ro02a_relig_lbl 22 `"Christian by Gospel"', add
label define ro02a_relig_lbl 23 `"Evangelic"', add
label define ro02a_relig_lbl 24 `"Muslim"', add
label define ro02a_relig_lbl 25 `"Jewish"', add
label define ro02a_relig_lbl 26 `"Others"', add
label define ro02a_relig_lbl 27 `"Without religion"', add
label define ro02a_relig_lbl 28 `"Atheists"', add
label define ro02a_relig_lbl 99 `"Undeclared"', add
label values ro02a_relig ro02a_relig_lbl

label define ro02a_edattain_lbl 00 `"NIU (not in universe)"'
label define ro02a_edattain_lbl 01 `"Mining"', add
label define ro02a_edattain_lbl 02 `"Petroleum and geology"', add
label define ro02a_edattain_lbl 03 `"Electric power and electro-technics"', add
label define ro02a_edattain_lbl 04 `"Metallurgy"', add
label define ro02a_edattain_lbl 05 `"Electrical engineering"', add
label define ro02a_edattain_lbl 06 `"Electromechanical engineering"', add
label define ro02a_edattain_lbl 07 `"Mechanical and other technical engineering"', add
label define ro02a_edattain_lbl 08 `"Chemical technology"', add
label define ro02a_edattain_lbl 09 `"Wood and building materials industry"', add
label define ro02a_edattain_lbl 10 `"Light industry"', add
label define ro02a_edattain_lbl 11 `"Food industry"', add
label define ro02a_edattain_lbl 12 `"Construction and survey"', add
label define ro02a_edattain_lbl 13 `"Architecture and town planning"', add
label define ro02a_edattain_lbl 14 `"Agriculture"', add
label define ro02a_edattain_lbl 15 `"Zootechnical"', add
label define ro02a_edattain_lbl 16 `"Veterinary medicine"', add
label define ro02a_edattain_lbl 17 `"Silviculture"', add
label define ro02a_edattain_lbl 18 `"Transport and telecommunication"', add
label define ro02a_edattain_lbl 20 `"Other technical specializations"', add
label define ro02a_edattain_lbl 21 `"Univ. Education: chemistry, mathematics, physics"', add
label define ro02a_edattain_lbl 22 `"Univ. Education: biology, geography, history, philosophy"', add
label define ro02a_edattain_lbl 23 `"Univ. Education: philology, journalism"', add
label define ro02a_edattain_lbl 24 `"Univ. Education: sociology, psychology"', add
label define ro02a_edattain_lbl 25 `"Univ. Education: political and administrative sciences"', add
label define ro02a_edattain_lbl 26 `"Univ. Education: physical education and sport"', add
label define ro02a_edattain_lbl 27 `"Univ. Education: pedagogy"', add
label define ro02a_edattain_lbl 28 `"Univ. Education: theology"', add
label define ro02a_edattain_lbl 29 `"Economic education"', add
label define ro02a_edattain_lbl 30 `"Juridical education"', add
label define ro02a_edattain_lbl 31 `"Pharmaceutical"', add
label define ro02a_edattain_lbl 32 `"General medicine"', add
label define ro02a_edattain_lbl 33 `"Stomatology"', add
label define ro02a_edattain_lbl 34 `"Fine and decorative art"', add
label define ro02a_edattain_lbl 35 `"Music"', add
label define ro02a_edattain_lbl 36 `"Drama, cinematography, television"', add
label define ro02a_edattain_lbl 37 `"Other third level institutions"', add
label define ro02a_edattain_lbl 38 `"Short term: mining, petroleum, geology and chemical technology"', add
label define ro02a_edattain_lbl 39 `"Short term: electrical and electrotechnical engineering"', add
label define ro02a_edattain_lbl 40 `"Short term: metallurgy and engineering"', add
label define ro02a_edattain_lbl 41 `"Short term: wood and building materials industry, light, food, transport and telecommunications industries"', add
label define ro02a_edattain_lbl 42 `"Short term: architecture and constructions"', add
label define ro02a_edattain_lbl 43 `"Short term: agriculture and silviculture"', add
label define ro02a_edattain_lbl 44 `"Short term: political and administrative sciences education"', add
label define ro02a_edattain_lbl 45 `"Short term: economic education"', add
label define ro02a_edattain_lbl 46 `"Short term: medicine and pharmacy education"', add
label define ro02a_edattain_lbl 47 `"Short term: physical education and sport"', add
label define ro02a_edattain_lbl 48 `"Short term: juridical education (including security services)"', add
label define ro02a_edattain_lbl 49 `"Short term: colleges (other profiles, including informatics)"', add
label define ro02a_edattain_lbl 50 `"Post high schools: industry"', add
label define ro02a_edattain_lbl 51 `"Post high schools: construction and architecture"', add
label define ro02a_edattain_lbl 52 `"Post high schools: industryagriculture"', add
label define ro02a_edattain_lbl 53 `"Post high schools: industry silviculture"', add
label define ro02a_edattain_lbl 54 `"Post high schools: industry transport and telecommunications"', add
label define ro02a_edattain_lbl 55 `"Post high schools: industry other"', add
label define ro02a_edattain_lbl 56 `"Post high schools with profile: informatics"', add
label define ro02a_edattain_lbl 57 `"Post high schools with profile: economic, administrative, trade, co operation and services"', add
label define ro02a_edattain_lbl 58 `"Post high schools with profile: pedagogy"', add
label define ro02a_edattain_lbl 59 `"Post high schools with profile: sanitary"', add
label define ro02a_edattain_lbl 60 `"Post high schools with profile: artistic, physical education and sport"', add
label define ro02a_edattain_lbl 61 `"Post high schools theological seminaries"', add
label define ro02a_edattain_lbl 63 `"Theoretical high schools:  theoretical profiles"', add
label define ro02a_edattain_lbl 64 `"Theoretical high schools: informatics"', add
label define ro02a_edattain_lbl 65 `"Technological high schools:  industry (including metrology)"', add
label define ro02a_edattain_lbl 66 `"Technological high schools: architecture and constructions"', add
label define ro02a_edattain_lbl 67 `"Technological high schools: transport and telecommunications"', add
label define ro02a_edattain_lbl 68 `"Technological high schools:  other"', add
label define ro02a_edattain_lbl 69 `"Technological high schools: agromountain"', add
label define ro02a_edattain_lbl 70 `"Technological high schools: agriculture, pisciculture and veterinary"', add
label define ro02a_edattain_lbl 71 `"Technological high schools: silviculture"', add
label define ro02a_edattain_lbl 72 `"Technological high schools: economic, administrative, juridical, trade, cooperation, finance, statistics, services"', add
label define ro02a_edattain_lbl 73 `"Technological high schools: other technological profiles"', add
label define ro02a_edattain_lbl 74 `"Vocational high schools: sports"', add
label define ro02a_edattain_lbl 75 `"Vocational high schools: vocational high schools: art (fine arts, music and choreography)"', add
label define ro02a_edattain_lbl 76 `"Vocational high schools: pedagogy"', add
label define ro02a_edattain_lbl 77 `"Vocational high schools: military"', add
label define ro02a_edattain_lbl 78 `"Vocational high schools: theological"', add
label define ro02a_edattain_lbl 79 `"Vocational high schools: sanitary"', add
label define ro02a_edattain_lbl 80 `"Vocational high schools: other vocational profiles"', add
label define ro02a_edattain_lbl 81 `"Technical vocational upper secondary schools:  industry"', add
label define ro02a_edattain_lbl 82 `"Technical vocational upper secondary schools:  constructions"', add
label define ro02a_edattain_lbl 83 `"Technical vocational upper secondary schools: agriculture"', add
label define ro02a_edattain_lbl 84 `"Technical vocational upper secondary schools: silviculture"', add
label define ro02a_edattain_lbl 85 `"Technical vocational upper secondary schools: transport and telecommunications"', add
label define ro02a_edattain_lbl 86 `"Technical vocational upper secondary schools: economic, administrative, co operation and services vocational schools"', add
label define ro02a_edattain_lbl 87 `"Technical vocational upper secondary schools: sanitary vocational schools"', add
label define ro02a_edattain_lbl 88 `"Technical vocational upper secondary schools: art vocational schools"', add
label define ro02a_edattain_lbl 89 `"Technical vocational upper secondary schools: other vocational schools"', add
label define ro02a_edattain_lbl 90 `"Lower secondary (gymnasium):general"', add
label define ro02a_edattain_lbl 91 `"Lower secondary (gymnasium):special"', add
label define ro02a_edattain_lbl 92 `"Primary education: general"', add
label define ro02a_edattain_lbl 93 `"Primary education: special"', add
label define ro02a_edattain_lbl 94 `"Primary education: literacy courses"', add
label define ro02a_edattain_lbl 95 `"Illiterate:  can read and write"', add
label define ro02a_edattain_lbl 96 `"Illiterate: read only"', add
label define ro02a_edattain_lbl 97 `"Illiterate: not read and not write"', add
label define ro02a_edattain_lbl 99 `"Unknown"', add
label values ro02a_edattain ro02a_edattain_lbl

label define ro02a_schtype1_lbl 1 `"Public (state)"'
label define ro02a_schtype1_lbl 2 `"Private"', add
label define ro02a_schtype1_lbl 9 `"NIU (not in universe)"', add
label values ro02a_schtype1 ro02a_schtype1_lbl

label define ro02a_edattend_lbl 00 `"NIU (not in universe)"'
label define ro02a_edattend_lbl 01 `"Mining"', add
label define ro02a_edattend_lbl 02 `"Petroleum and geology"', add
label define ro02a_edattend_lbl 03 `"Electric power and electro-technics"', add
label define ro02a_edattend_lbl 04 `"Metallurgy"', add
label define ro02a_edattend_lbl 05 `"Electrical engineering"', add
label define ro02a_edattend_lbl 06 `"Electromechanical engineering"', add
label define ro02a_edattend_lbl 07 `"Mechanical and other technical engineering"', add
label define ro02a_edattend_lbl 08 `"Chemical technology"', add
label define ro02a_edattend_lbl 09 `"Wood and building materials industry"', add
label define ro02a_edattend_lbl 10 `"Light industry"', add
label define ro02a_edattend_lbl 11 `"Food industry"', add
label define ro02a_edattend_lbl 12 `"Construction and survey"', add
label define ro02a_edattend_lbl 13 `"Architecture and town planning"', add
label define ro02a_edattend_lbl 14 `"Agriculture"', add
label define ro02a_edattend_lbl 15 `"Zootechnical"', add
label define ro02a_edattend_lbl 16 `"Veterinary medicine"', add
label define ro02a_edattend_lbl 17 `"Silviculture"', add
label define ro02a_edattend_lbl 18 `"Transport and telecommunication"', add
label define ro02a_edattend_lbl 20 `"Other technical specializations"', add
label define ro02a_edattend_lbl 21 `"Univ. Education: chemistry, mathematics, physics"', add
label define ro02a_edattend_lbl 22 `"Univ. Education: biology, geography, history, philosophy"', add
label define ro02a_edattend_lbl 23 `"Univ. Education: philology, journalism"', add
label define ro02a_edattend_lbl 24 `"Univ. Education: sociology, psychology"', add
label define ro02a_edattend_lbl 25 `"Univ. Education: political and administrative sciences"', add
label define ro02a_edattend_lbl 26 `"Univ. Education: physical education and sport"', add
label define ro02a_edattend_lbl 27 `"Univ. Education: pedagogy"', add
label define ro02a_edattend_lbl 28 `"Univ. Education: theology"', add
label define ro02a_edattend_lbl 29 `"Economic education"', add
label define ro02a_edattend_lbl 30 `"Juridical education"', add
label define ro02a_edattend_lbl 31 `"Pharmaceutical"', add
label define ro02a_edattend_lbl 32 `"General medicine"', add
label define ro02a_edattend_lbl 33 `"Stomatology"', add
label define ro02a_edattend_lbl 34 `"Fine and decorative art"', add
label define ro02a_edattend_lbl 35 `"Music"', add
label define ro02a_edattend_lbl 36 `"Drama, cinematography, television"', add
label define ro02a_edattend_lbl 37 `"Other third level institutions"', add
label define ro02a_edattend_lbl 38 `"Short term: mining, petroleum, geology and chemical technology"', add
label define ro02a_edattend_lbl 39 `"Short term: electrical and electrotechnical engineering"', add
label define ro02a_edattend_lbl 40 `"Short term: metallurgy and engineering"', add
label define ro02a_edattend_lbl 41 `"Short term: wood and building materials industry, light, food, transport and telecommunications industries"', add
label define ro02a_edattend_lbl 42 `"Short term: architecture and constructions"', add
label define ro02a_edattend_lbl 43 `"Short term: agriculture and silviculture"', add
label define ro02a_edattend_lbl 44 `"Short term: political and administrative sciences education"', add
label define ro02a_edattend_lbl 45 `"Short term: economic education"', add
label define ro02a_edattend_lbl 46 `"Short term: medicine and pharmacy education"', add
label define ro02a_edattend_lbl 47 `"Short term: physical education and sport"', add
label define ro02a_edattend_lbl 48 `"Short term: juridical education (including security services)"', add
label define ro02a_edattend_lbl 49 `"Short term: colleges (other profiles, including informatics)"', add
label define ro02a_edattend_lbl 50 `"Post high schools: industry"', add
label define ro02a_edattend_lbl 51 `"Post high schools: construction and architecture"', add
label define ro02a_edattend_lbl 52 `"Post high schools: industryagriculture"', add
label define ro02a_edattend_lbl 53 `"Post high schools: industry silviculture"', add
label define ro02a_edattend_lbl 54 `"Post high schools: industry transport and telecommunications"', add
label define ro02a_edattend_lbl 55 `"Post high schools: industry other"', add
label define ro02a_edattend_lbl 56 `"Post high schools with profile: informatics"', add
label define ro02a_edattend_lbl 57 `"Post high schools with profile: economic, administrative, trade, co operation and services"', add
label define ro02a_edattend_lbl 58 `"Post high schools with profile: pedagogy"', add
label define ro02a_edattend_lbl 59 `"Post high schools with profile: sanitary"', add
label define ro02a_edattend_lbl 60 `"Post high schools with profile: artistic, physical education and sport"', add
label define ro02a_edattend_lbl 61 `"Post high schools theological seminaries"', add
label define ro02a_edattend_lbl 63 `"Theoretical high schools:  theoretical profiles"', add
label define ro02a_edattend_lbl 64 `"Theoretical high schools: informatics"', add
label define ro02a_edattend_lbl 65 `"Technological high schools:  industry (including metrology)"', add
label define ro02a_edattend_lbl 66 `"Technological high schools: architecture and constructions"', add
label define ro02a_edattend_lbl 67 `"Technological high schools: transport and telecommunications"', add
label define ro02a_edattend_lbl 68 `"Technological high schools:  other"', add
label define ro02a_edattend_lbl 69 `"Technological high schools: agromountain"', add
label define ro02a_edattend_lbl 70 `"Technological high schools: agriculture, pisciculture and veterinary"', add
label define ro02a_edattend_lbl 71 `"Technological high schools: silviculture"', add
label define ro02a_edattend_lbl 72 `"Technological high schools: economic, administrative, juridical, trade, cooperation, finance, statistics, services"', add
label define ro02a_edattend_lbl 73 `"Technological high schools: other technological profiles"', add
label define ro02a_edattend_lbl 74 `"Vocational high schools: sports"', add
label define ro02a_edattend_lbl 75 `"Vocational high schools: vocational high schools: art (fine arts, music and choreography)"', add
label define ro02a_edattend_lbl 76 `"Vocational high schools: pedagogy"', add
label define ro02a_edattend_lbl 77 `"Vocational high schools: military"', add
label define ro02a_edattend_lbl 78 `"Vocational high schools: theological"', add
label define ro02a_edattend_lbl 79 `"Vocational high schools: sanitary"', add
label define ro02a_edattend_lbl 80 `"Vocational high schools: other vocational profiles"', add
label define ro02a_edattend_lbl 81 `"Technical vocational upper secondary schools:  industry"', add
label define ro02a_edattend_lbl 82 `"Technical vocational upper secondary schools:  constructions"', add
label define ro02a_edattend_lbl 83 `"Technical vocational upper secondary schools: agriculture"', add
label define ro02a_edattend_lbl 84 `"Technical vocational upper secondary schools: silviculture"', add
label define ro02a_edattend_lbl 85 `"Technical vocational upper secondary schools: transport and telecommunications"', add
label define ro02a_edattend_lbl 86 `"Technical vocational upper secondary schools: economic, administrative, co operation and services vocational schools"', add
label define ro02a_edattend_lbl 87 `"Technical vocational upper secondary schools: sanitary vocational schools"', add
label define ro02a_edattend_lbl 88 `"Technical vocational upper secondary schools: art vocational schools"', add
label define ro02a_edattend_lbl 89 `"Technical vocational upper secondary schools: other vocational schools"', add
label define ro02a_edattend_lbl 90 `"Lower secondary (gymnasium):general"', add
label define ro02a_edattend_lbl 91 `"Lower secondary (gymnasium):special"', add
label define ro02a_edattend_lbl 92 `"Primary education: general"', add
label define ro02a_edattend_lbl 93 `"Primary education: special"', add
label define ro02a_edattend_lbl 99 `"Unknown"', add
label values ro02a_edattend ro02a_edattend_lbl

label define ro02a_schtype2_lbl 1 `"Public"'
label define ro02a_schtype2_lbl 2 `"Private"', add
label define ro02a_schtype2_lbl 9 `"NIU (not in universe)"', add
label values ro02a_schtype2 ro02a_schtype2_lbl

label define ro02a_empstat_lbl 1 `"Employed"'
label define ro02a_empstat_lbl 2 `"Unemployed- seeking another work place"', add
label define ro02a_empstat_lbl 3 `"Unemployed- seeking work for first time"', add
label define ro02a_empstat_lbl 4 `"Pupil / student"', add
label define ro02a_empstat_lbl 5 `"Retired"', add
label define ro02a_empstat_lbl 6 `"Homemaker"', add
label define ro02a_empstat_lbl 7 `"Dependent on a supporter"', add
label define ro02a_empstat_lbl 8 `"Receiving public aid or private organization's support"', add
label define ro02a_empstat_lbl 9 `"Other"', add
label values ro02a_empstat ro02a_empstat_lbl

label define ro02a_hrswork_lbl 01 `"1"'
label define ro02a_hrswork_lbl 02 `"2"', add
label define ro02a_hrswork_lbl 03 `"3"', add
label define ro02a_hrswork_lbl 04 `"4"', add
label define ro02a_hrswork_lbl 05 `"5"', add
label define ro02a_hrswork_lbl 06 `"6"', add
label define ro02a_hrswork_lbl 07 `"7"', add
label define ro02a_hrswork_lbl 08 `"8"', add
label define ro02a_hrswork_lbl 09 `"9"', add
label define ro02a_hrswork_lbl 10 `"10"', add
label define ro02a_hrswork_lbl 11 `"11"', add
label define ro02a_hrswork_lbl 12 `"12"', add
label define ro02a_hrswork_lbl 13 `"13"', add
label define ro02a_hrswork_lbl 14 `"14"', add
label define ro02a_hrswork_lbl 15 `"15"', add
label define ro02a_hrswork_lbl 16 `"16"', add
label define ro02a_hrswork_lbl 17 `"17"', add
label define ro02a_hrswork_lbl 18 `"18"', add
label define ro02a_hrswork_lbl 19 `"19"', add
label define ro02a_hrswork_lbl 20 `"20"', add
label define ro02a_hrswork_lbl 21 `"21"', add
label define ro02a_hrswork_lbl 22 `"22"', add
label define ro02a_hrswork_lbl 23 `"23"', add
label define ro02a_hrswork_lbl 24 `"24"', add
label define ro02a_hrswork_lbl 25 `"25"', add
label define ro02a_hrswork_lbl 26 `"26"', add
label define ro02a_hrswork_lbl 27 `"27"', add
label define ro02a_hrswork_lbl 28 `"28"', add
label define ro02a_hrswork_lbl 29 `"29"', add
label define ro02a_hrswork_lbl 30 `"30"', add
label define ro02a_hrswork_lbl 31 `"31"', add
label define ro02a_hrswork_lbl 32 `"32"', add
label define ro02a_hrswork_lbl 33 `"33"', add
label define ro02a_hrswork_lbl 34 `"34"', add
label define ro02a_hrswork_lbl 35 `"35"', add
label define ro02a_hrswork_lbl 36 `"36"', add
label define ro02a_hrswork_lbl 37 `"37"', add
label define ro02a_hrswork_lbl 38 `"38"', add
label define ro02a_hrswork_lbl 39 `"39"', add
label define ro02a_hrswork_lbl 40 `"40"', add
label define ro02a_hrswork_lbl 41 `"41"', add
label define ro02a_hrswork_lbl 42 `"42"', add
label define ro02a_hrswork_lbl 43 `"43"', add
label define ro02a_hrswork_lbl 44 `"44"', add
label define ro02a_hrswork_lbl 45 `"45"', add
label define ro02a_hrswork_lbl 46 `"46"', add
label define ro02a_hrswork_lbl 47 `"47"', add
label define ro02a_hrswork_lbl 48 `"48"', add
label define ro02a_hrswork_lbl 49 `"49"', add
label define ro02a_hrswork_lbl 50 `"50"', add
label define ro02a_hrswork_lbl 51 `"51"', add
label define ro02a_hrswork_lbl 52 `"52"', add
label define ro02a_hrswork_lbl 53 `"53"', add
label define ro02a_hrswork_lbl 54 `"54"', add
label define ro02a_hrswork_lbl 55 `"55"', add
label define ro02a_hrswork_lbl 56 `"56"', add
label define ro02a_hrswork_lbl 57 `"57"', add
label define ro02a_hrswork_lbl 58 `"58"', add
label define ro02a_hrswork_lbl 59 `"59"', add
label define ro02a_hrswork_lbl 60 `"60"', add
label define ro02a_hrswork_lbl 61 `"61"', add
label define ro02a_hrswork_lbl 62 `"62"', add
label define ro02a_hrswork_lbl 63 `"63"', add
label define ro02a_hrswork_lbl 64 `"64"', add
label define ro02a_hrswork_lbl 65 `"65"', add
label define ro02a_hrswork_lbl 66 `"66"', add
label define ro02a_hrswork_lbl 67 `"67"', add
label define ro02a_hrswork_lbl 68 `"68"', add
label define ro02a_hrswork_lbl 69 `"69"', add
label define ro02a_hrswork_lbl 70 `"70"', add
label define ro02a_hrswork_lbl 71 `"71"', add
label define ro02a_hrswork_lbl 72 `"72"', add
label define ro02a_hrswork_lbl 73 `"73"', add
label define ro02a_hrswork_lbl 74 `"74"', add
label define ro02a_hrswork_lbl 75 `"75"', add
label define ro02a_hrswork_lbl 76 `"76"', add
label define ro02a_hrswork_lbl 77 `"77"', add
label define ro02a_hrswork_lbl 78 `"78"', add
label define ro02a_hrswork_lbl 79 `"79"', add
label define ro02a_hrswork_lbl 80 `"80"', add
label define ro02a_hrswork_lbl 81 `"81"', add
label define ro02a_hrswork_lbl 82 `"82"', add
label define ro02a_hrswork_lbl 83 `"83"', add
label define ro02a_hrswork_lbl 84 `"84"', add
label define ro02a_hrswork_lbl 85 `"85"', add
label define ro02a_hrswork_lbl 86 `"86"', add
label define ro02a_hrswork_lbl 87 `"87"', add
label define ro02a_hrswork_lbl 88 `"88"', add
label define ro02a_hrswork_lbl 89 `"89"', add
label define ro02a_hrswork_lbl 90 `"90"', add
label define ro02a_hrswork_lbl 91 `"91"', add
label define ro02a_hrswork_lbl 92 `"92"', add
label define ro02a_hrswork_lbl 93 `"93"', add
label define ro02a_hrswork_lbl 94 `"94"', add
label define ro02a_hrswork_lbl 95 `"95"', add
label define ro02a_hrswork_lbl 96 `"Undocumented"', add
label define ro02a_hrswork_lbl 98 `"Absent from the working place, but having formal attachment to their job"', add
label define ro02a_hrswork_lbl 99 `"NIU (not in universe)"', add
label values ro02a_hrswork ro02a_hrswork_lbl

label define ro02a_occ1_lbl 1 `"Legislators, senior officials and managers"'
label define ro02a_occ1_lbl 2 `"Professionals"', add
label define ro02a_occ1_lbl 3 `"Technicians and associate professionals"', add
label define ro02a_occ1_lbl 4 `"Clerks"', add
label define ro02a_occ1_lbl 5 `"Service workers and shop and market sales workers"', add
label define ro02a_occ1_lbl 6 `"Skilled agricultural and fishery workers"', add
label define ro02a_occ1_lbl 7 `"Craft and related trades workers"', add
label define ro02a_occ1_lbl 8 `"Plant and machine operators and assemblers"', add
label define ro02a_occ1_lbl 9 `"Elementary occupations"', add
label define ro02a_occ1_lbl 0 `"NIU (not in universe)"', add
label values ro02a_occ1 ro02a_occ1_lbl

label define ro02a_occ2_lbl 11 `"Legislators and senior officials"'
label define ro02a_occ2_lbl 12 `"Corporate managers"', add
label define ro02a_occ2_lbl 13 `"Managers of small enterprises"', add
label define ro02a_occ2_lbl 21 `"Physical, mathematical and engineering science professionals"', add
label define ro02a_occ2_lbl 22 `"Life science and health professionals"', add
label define ro02a_occ2_lbl 23 `"Teaching professionals"', add
label define ro02a_occ2_lbl 24 `"Other professionals"', add
label define ro02a_occ2_lbl 25 `"Informatics researchers and assistant researchers"', add
label define ro02a_occ2_lbl 31 `"Physical and engineering science associate professionals"', add
label define ro02a_occ2_lbl 32 `"Life science and health associate professionals"', add
label define ro02a_occ2_lbl 33 `"Teaching associate professionals"', add
label define ro02a_occ2_lbl 34 `"Other associate professionals"', add
label define ro02a_occ2_lbl 41 `"Office clerks"', add
label define ro02a_occ2_lbl 42 `"Customer services clerks"', add
label define ro02a_occ2_lbl 51 `"Personal and protective services workers"', add
label define ro02a_occ2_lbl 52 `"Models, salespersons and demonstrators"', add
label define ro02a_occ2_lbl 61 `"Skilled agricultural and fishery workers"', add
label define ro02a_occ2_lbl 71 `"Extraction and building trades workers"', add
label define ro02a_occ2_lbl 72 `"Metal, machinery and related trades workers"', add
label define ro02a_occ2_lbl 73 `"Precision, handicraft, printing and related trades workers"', add
label define ro02a_occ2_lbl 74 `"Other craft and related trades workers"', add
label define ro02a_occ2_lbl 81 `"Stationary-plant and related operators"', add
label define ro02a_occ2_lbl 82 `"Machine operators and assemblers"', add
label define ro02a_occ2_lbl 83 `"Drivers and mobile-plant operators"', add
label define ro02a_occ2_lbl 88 `"Undocumented (Armed forces???)"', add
label define ro02a_occ2_lbl 91 `"Sales and services elementary occupations"', add
label define ro02a_occ2_lbl 92 `"Agricultural, fishery and related labourers"', add
label define ro02a_occ2_lbl 93 `"Labourers in mining, construction, manufacturing and transport"', add
label define ro02a_occ2_lbl 98 `"Unknown"', add
label define ro02a_occ2_lbl 99 `"NIU (not in universe)"', add
label values ro02a_occ2 ro02a_occ2_lbl

label define ro02a_occ3_lbl 111 `"Legislators and senior government officials"'
label define ro02a_occ3_lbl 114 `"Senior officials of special-interest organisations"', add
label define ro02a_occ3_lbl 121 `"Directors and chief executives"', add
label define ro02a_occ3_lbl 122 `"Production and operations managers"', add
label define ro02a_occ3_lbl 123 `"Other specialist managers"', add
label define ro02a_occ3_lbl 131 `"Managers of small enterprises"', add
label define ro02a_occ3_lbl 211 `"Physicists, chemists and related professionals"', add
label define ro02a_occ3_lbl 212 `"Mathematicians, statisticians and related professionals"', add
label define ro02a_occ3_lbl 213 `"Computing professionals"', add
label define ro02a_occ3_lbl 214 `"Architects, engineers and related professionals"', add
label define ro02a_occ3_lbl 215 `"Textile, leather and food industry engineers"', add
label define ro02a_occ3_lbl 216 `"Wood working, glass, ceramic, pulp, paper and other construction materials industry engineers"', add
label define ro02a_occ3_lbl 221 `"Life science professionals"', add
label define ro02a_occ3_lbl 222 `"Health professionals (except nursing)"', add
label define ro02a_occ3_lbl 231 `"College, university and higher education teaching professionals"', add
label define ro02a_occ3_lbl 232 `"Secondary education teaching professionals"', add
label define ro02a_occ3_lbl 233 `"Primary and pre-primary education teaching professionals"', add
label define ro02a_occ3_lbl 234 `"Special education teaching professionals"', add
label define ro02a_occ3_lbl 235 `"Other teaching professionals"', add
label define ro02a_occ3_lbl 241 `"Business professionals"', add
label define ro02a_occ3_lbl 242 `"Legal professionals"', add
label define ro02a_occ3_lbl 243 `"Archivists, librarians and related information professionals"', add
label define ro02a_occ3_lbl 244 `"Social science and related professionals"', add
label define ro02a_occ3_lbl 245 `"Writers and creative or performing artists"', add
label define ro02a_occ3_lbl 246 `"Religious professionals"', add
label define ro02a_occ3_lbl 247 `"Public service administrative professionals"', add
label define ro02a_occ3_lbl 248 `"Physical and chemical sciences researchers and assistant researchers"', add
label define ro02a_occ3_lbl 251 `"Technical sciences researchers, engineer and assistant researchers"', add
label define ro02a_occ3_lbl 254 `"Life science researchers, engineer and assistant researchers"', add
label define ro02a_occ3_lbl 258 `"Economic, social and humanist sciences researchers and assistant researchers"', add
label define ro02a_occ3_lbl 311 `"Physical and engineering science technicians"', add
label define ro02a_occ3_lbl 312 `"Computer associate professionals"', add
label define ro02a_occ3_lbl 313 `"Optical and electronic equipment operators"', add
label define ro02a_occ3_lbl 314 `"Ship and aircraft controllers and technicians"', add
label define ro02a_occ3_lbl 315 `"Safety and quality inspectors"', add
label define ro02a_occ3_lbl 316 `"Textile, leather and food industry technicians"', add
label define ro02a_occ3_lbl 317 `"Wood working, glass, ceramic, pulp, paper and construction materials industry technicians"', add
label define ro02a_occ3_lbl 321 `"Life science technicians and related associate professionals"', add
label define ro02a_occ3_lbl 322 `"Health associate professionals (except nursing)"', add
label define ro02a_occ3_lbl 323 `"Nursing and midwifery associate professionals"', add
label define ro02a_occ3_lbl 331 `"Primary education teaching associate professionals"', add
label define ro02a_occ3_lbl 332 `"Pre-primary education teaching associate professionals"', add
label define ro02a_occ3_lbl 333 `"Special education teaching associate professionals"', add
label define ro02a_occ3_lbl 334 `"Other teaching associate professionals"', add
label define ro02a_occ3_lbl 341 `"Finance and sales associate professionals"', add
label define ro02a_occ3_lbl 342 `"Business services agents and trade brokers"', add
label define ro02a_occ3_lbl 343 `"Administrative associate professionals"', add
label define ro02a_occ3_lbl 344 `"Customs, tax and related government associate professionals"', add
label define ro02a_occ3_lbl 345 `"Police inspectors and detectives"', add
label define ro02a_occ3_lbl 346 `"Social work associate professionals"', add
label define ro02a_occ3_lbl 347 `"Artistic, entertainment and sports associate professionals"', add
label define ro02a_occ3_lbl 348 `"Religious associate professionals"', add
label define ro02a_occ3_lbl 411 `"Secretaries and keyboard-operating clerks"', add
label define ro02a_occ3_lbl 412 `"Numerical clerks"', add
label define ro02a_occ3_lbl 413 `"Material-recording and transport clerks"', add
label define ro02a_occ3_lbl 414 `"Library, mail and related clerks"', add
label define ro02a_occ3_lbl 419 `"Other office clerks"', add
label define ro02a_occ3_lbl 421 `"Cashiers, tellers and related clerks"', add
label define ro02a_occ3_lbl 422 `"Client information clerks"', add
label define ro02a_occ3_lbl 511 `"Travel attendants and related workers"', add
label define ro02a_occ3_lbl 512 `"Housekeeping and restaurant services workers"', add
label define ro02a_occ3_lbl 513 `"Personal care and related workers"', add
label define ro02a_occ3_lbl 514 `"Other personal services workers"', add
label define ro02a_occ3_lbl 516 `"Protective services workers"', add
label define ro02a_occ3_lbl 522 `"Shop, stall and market salespersons and demonstrators"', add
label define ro02a_occ3_lbl 611 `"Market gardeners and crop growers"', add
label define ro02a_occ3_lbl 612 `"Animal producers and related workers"', add
label define ro02a_occ3_lbl 613 `"Crop and animal producers"', add
label define ro02a_occ3_lbl 614 `"Forestry and related workers"', add
label define ro02a_occ3_lbl 615 `"Fishery workers, hunters and trappers"', add
label define ro02a_occ3_lbl 711 `"Miners, shotfirers, stone cutters and carvers"', add
label define ro02a_occ3_lbl 712 `"Building frame and related trades workers"', add
label define ro02a_occ3_lbl 713 `"Building finishers and related trades workers"', add
label define ro02a_occ3_lbl 714 `"Painters, building structure cleaners and related trades workers"', add
label define ro02a_occ3_lbl 721 `"Metal moulders, welders, sheet-metal workers, structural-metal preparers, and related trades workers"', add
label define ro02a_occ3_lbl 722 `"Blacksmiths, tool-makers and related trades workers"', add
label define ro02a_occ3_lbl 723 `"Machinery mechanics and fitters"', add
label define ro02a_occ3_lbl 724 `"Electrical and electronic equipment mechanics and fitters"', add
label define ro02a_occ3_lbl 731 `"Precision workers in metal and related materials"', add
label define ro02a_occ3_lbl 732 `"Potters, glass-makers and related trades workers"', add
label define ro02a_occ3_lbl 733 `"Handicraft workers in wood, textile, leather and related materials"', add
label define ro02a_occ3_lbl 734 `"Craft printing and related trades workers"', add
label define ro02a_occ3_lbl 741 `"Food processing and related trades workers"', add
label define ro02a_occ3_lbl 742 `"Wood treaters, cabinet-makers and related trades workers"', add
label define ro02a_occ3_lbl 743 `"Textile, garment and related trades workers"', add
label define ro02a_occ3_lbl 744 `"Pelt, leather and shoemaking trades workers"', add
label define ro02a_occ3_lbl 811 `"Mining- and mineral-processing-plant operators"', add
label define ro02a_occ3_lbl 812 `"Metal-processing-plant operators"', add
label define ro02a_occ3_lbl 813 `"Glass, ceramics and related plant operators"', add
label define ro02a_occ3_lbl 814 `"Wood-processing- and papermaking-plant operators"', add
label define ro02a_occ3_lbl 815 `"Chemical-processing-plant operators"', add
label define ro02a_occ3_lbl 816 `"Power-production and related plant operators"', add
label define ro02a_occ3_lbl 817 `"Industrial-robot operators"', add
label define ro02a_occ3_lbl 821 `"Metal- and mineral-products machine operators"', add
label define ro02a_occ3_lbl 822 `"Chemical-products machine operators"', add
label define ro02a_occ3_lbl 823 `"Rubber- and plastic-products machine operators"', add
label define ro02a_occ3_lbl 824 `"Wood-products machine operators"', add
label define ro02a_occ3_lbl 825 `"Printing-, binding- and paper-products machine operators"', add
label define ro02a_occ3_lbl 826 `"Textile-, fur- and leather-products machine operators"', add
label define ro02a_occ3_lbl 827 `"Food and related products machine operators"', add
label define ro02a_occ3_lbl 828 `"Assemblers"', add
label define ro02a_occ3_lbl 829 `"Other machine operators not elsewhere classified"', add
label define ro02a_occ3_lbl 831 `"Locomotive-engine drivers and related workers"', add
label define ro02a_occ3_lbl 832 `"Motor-vehicle drivers"', add
label define ro02a_occ3_lbl 833 `"Agricultural and other mobile-plant operators"', add
label define ro02a_occ3_lbl 834 `"Ships' deck crews and related workers"', add
label define ro02a_occ3_lbl 888 `"Armed forces"', add
label define ro02a_occ3_lbl 911 `"Street vendors and related workers"', add
label define ro02a_occ3_lbl 912 `"Shoe cleaning and other street services elementary occupations"', add
label define ro02a_occ3_lbl 913 `"Domestic and related helpers, cleaners and launderers"', add
label define ro02a_occ3_lbl 914 `"Building caretakers, window and related cleaners"', add
label define ro02a_occ3_lbl 915 `"Messengers, porters, doorkeepers and related workers"', add
label define ro02a_occ3_lbl 916 `"Garbage collectors and related laborers"', add
label define ro02a_occ3_lbl 921 `"Agricultural, fishery and related laborers"', add
label define ro02a_occ3_lbl 931 `"Mining and construction laborers"', add
label define ro02a_occ3_lbl 932 `"Manufacturing laborers"', add
label define ro02a_occ3_lbl 933 `"Transport labourers and freight handlers"', add
label define ro02a_occ3_lbl 997 `"Response suppressed"', add
label define ro02a_occ3_lbl 998 `"Unknown"', add
label define ro02a_occ3_lbl 999 `"NIU"', add
label values ro02a_occ3 ro02a_occ3_lbl

label define ro02a_occ4_lbl 1110 `"Legislators and senior government officials"'
label define ro02a_occ4_lbl 1142 `"Senior officials of employers', workers' and other economic-interest organisations"', add
label define ro02a_occ4_lbl 1210 `"Directors and chief executives"', add
label define ro02a_occ4_lbl 1221 `"Production and operations managers in agriculture, hunting, forestry and fishing"', add
label define ro02a_occ4_lbl 1222 `"Production and operations managers in manufacturing"', add
label define ro02a_occ4_lbl 1223 `"Production and operations managers in construction"', add
label define ro02a_occ4_lbl 1224 `"Production and operations managers in wholesale and retail trade"', add
label define ro02a_occ4_lbl 1225 `"Production and operations managers in restaurants and hotels"', add
label define ro02a_occ4_lbl 1226 `"Production and operations managers in transport, storage and communications"', add
label define ro02a_occ4_lbl 1227 `"Production and operations managers in business services"', add
label define ro02a_occ4_lbl 1228 `"Production and operations managers in personal care, cleaning and related services"', add
label define ro02a_occ4_lbl 1229 `"Production and operations managers not elsewhere classified"', add
label define ro02a_occ4_lbl 1231 `"Finance and administration managers"', add
label define ro02a_occ4_lbl 1232 `"Personnel and industrial relations managers"', add
label define ro02a_occ4_lbl 1233 `"Sales and marketing managers"', add
label define ro02a_occ4_lbl 1234 `"Advertising and public relations managers"', add
label define ro02a_occ4_lbl 1235 `"Supply and distribution managers"', add
label define ro02a_occ4_lbl 1236 `"Computing services managers"', add
label define ro02a_occ4_lbl 1237 `"Research and development managers"', add
label define ro02a_occ4_lbl 1239 `"Other specialist managers not elsewhere classified"', add
label define ro02a_occ4_lbl 1311 `"Managers of small enterprises in agriculture, hunting, forestry and fishing"', add
label define ro02a_occ4_lbl 1312 `"Managers of small enterprises in manufacturing"', add
label define ro02a_occ4_lbl 1313 `"Managers of small enterprises in construction"', add
label define ro02a_occ4_lbl 1314 `"Managers of small enterprises in wholesale and retail trade"', add
label define ro02a_occ4_lbl 1315 `"Managers of small enterprises of restaurants and hotels"', add
label define ro02a_occ4_lbl 1316 `"Managers of small enterprises in transport, storage and communications"', add
label define ro02a_occ4_lbl 1317 `"Managers of small enterprises of business services"', add
label define ro02a_occ4_lbl 1318 `"Managers of small enterprises in personal care, cleaning and related services"', add
label define ro02a_occ4_lbl 1319 `"Managers of small enterprises not elsewhere classified"', add
label define ro02a_occ4_lbl 2111 `"Physicists and astronomers"', add
label define ro02a_occ4_lbl 2112 `"Meteorologists"', add
label define ro02a_occ4_lbl 2113 `"Chemists"', add
label define ro02a_occ4_lbl 2114 `"Geologists and geophysicists"', add
label define ro02a_occ4_lbl 2121 `"Mathematicians and related professionals"', add
label define ro02a_occ4_lbl 2122 `"Statisticians"', add
label define ro02a_occ4_lbl 2131 `"Computer systems designers and analysts"', add
label define ro02a_occ4_lbl 2139 `"Computing professionals not elsewhere classified"', add
label define ro02a_occ4_lbl 2141 `"Architects, town and traffic planners"', add
label define ro02a_occ4_lbl 2142 `"Civil engineers"', add
label define ro02a_occ4_lbl 2143 `"Electrical engineers"', add
label define ro02a_occ4_lbl 2144 `"Electronics and telecommunications engineers"', add
label define ro02a_occ4_lbl 2145 `"Mechanical engineers"', add
label define ro02a_occ4_lbl 2146 `"Chemical engineers"', add
label define ro02a_occ4_lbl 2147 `"Mining engineers, metallurgists and related professionals"', add
label define ro02a_occ4_lbl 2148 `"Cartographers and surveyors"', add
label define ro02a_occ4_lbl 2149 `"Architects, engineers and related professionals not elsewhere classified"', add
label define ro02a_occ4_lbl 2151 `"Textile and leather industry engineers"', add
label define ro02a_occ4_lbl 2152 `"Food industry engineers"', add
label define ro02a_occ4_lbl 2161 `"Wood working industry engineers"', add
label define ro02a_occ4_lbl 2162 `"Glass, ceramic and construction materials industry engineers"', add
label define ro02a_occ4_lbl 2211 `"Biologists, botanists, zoologists and related professionals"', add
label define ro02a_occ4_lbl 2212 `"Pharmacologists, pathologists and related professionals"', add
label define ro02a_occ4_lbl 2213 `"Agronomists and related professionals"', add
label define ro02a_occ4_lbl 2221 `"Medical doctors"', add
label define ro02a_occ4_lbl 2222 `"Dentists"', add
label define ro02a_occ4_lbl 2223 `"Veterinarians"', add
label define ro02a_occ4_lbl 2224 `"Pharmacists"', add
label define ro02a_occ4_lbl 2229 `"Health professionals (except nursing) not elsewhere classified"', add
label define ro02a_occ4_lbl 2310 `"College, university and higher education teaching professionals"', add
label define ro02a_occ4_lbl 2321 `"High school, post high school, vocational and foremen education teaching professionals"', add
label define ro02a_occ4_lbl 2322 `"Gymnasium education teaching professionals"', add
label define ro02a_occ4_lbl 2331 `"Primary education teaching professionals"', add
label define ro02a_occ4_lbl 2332 `"Pre-primary education teaching professionals"', add
label define ro02a_occ4_lbl 2340 `"Special education teaching professionals"', add
label define ro02a_occ4_lbl 2352 `"School inspectors"', add
label define ro02a_occ4_lbl 2359 `"Other teaching professionals not elsewhere classified"', add
label define ro02a_occ4_lbl 2411 `"Accountants"', add
label define ro02a_occ4_lbl 2412 `"Personnel and careers professionals"', add
label define ro02a_occ4_lbl 2419 `"Business professionals not elsewhere classified"', add
label define ro02a_occ4_lbl 2421 `"Lawyers"', add
label define ro02a_occ4_lbl 2422 `"Judges"', add
label define ro02a_occ4_lbl 2423 `"Standards, audit and conformity evaluation professionals"', add
label define ro02a_occ4_lbl 2429 `"Legal professionals not elsewhere classified"', add
label define ro02a_occ4_lbl 2431 `"Archivists and curators"', add
label define ro02a_occ4_lbl 2432 `"Librarians and related information professionals"', add
label define ro02a_occ4_lbl 2441 `"Economists"', add
label define ro02a_occ4_lbl 2442 `"Sociologists, anthropologists and related professionals"', add
label define ro02a_occ4_lbl 2443 `"Philosophers, historians and political scientists"', add
label define ro02a_occ4_lbl 2444 `"Philologists, translators and interpreters"', add
label define ro02a_occ4_lbl 2445 `"Psychologists"', add
label define ro02a_occ4_lbl 2446 `"Social work professionals"', add
label define ro02a_occ4_lbl 2447 `"Public relations professionals"', add
label define ro02a_occ4_lbl 2451 `"Authors, journalists and other writers"', add
label define ro02a_occ4_lbl 2452 `"Sculptors, painters and related artists"', add
label define ro02a_occ4_lbl 2453 `"Composers, musicians and singers"', add
label define ro02a_occ4_lbl 2454 `"Choreographers and dancers"', add
label define ro02a_occ4_lbl 2455 `"Film, stage and related actors and directors"', add
label define ro02a_occ4_lbl 2460 `"Religious professionals"', add
label define ro02a_occ4_lbl 2470 `"Public service administrative professionals"', add
label define ro02a_occ4_lbl 2481 `"Physicists and astronomers researchers"', add
label define ro02a_occ4_lbl 2483 `"Chemists researchers"', add
label define ro02a_occ4_lbl 2512 `"Civil engineering researchers"', add
label define ro02a_occ4_lbl 2513 `"Electrical and energetics engineer researchers"', add
label define ro02a_occ4_lbl 2514 `"Electronics, transport and telecommunications engineer researchers"', add
label define ro02a_occ4_lbl 2515 `"Mechanical engineer researchers"', add
label define ro02a_occ4_lbl 2516 `"Oil and chemical engineer researchers"', add
label define ro02a_occ4_lbl 2517 `"Mining, petroleum and metallurgy engineer researchers"', add
label define ro02a_occ4_lbl 2541 `"Bacteriologist, botanist, zoologist, microbiologist and ecologist engineer researchers"', add
label define ro02a_occ4_lbl 2543 `"Agriculture, zootechnicians and silviculture engineer researchers"', add
label define ro02a_occ4_lbl 3111 `"Chemical and physical science technicians"', add
label define ro02a_occ4_lbl 3112 `"Civil engineering technicians"', add
label define ro02a_occ4_lbl 3113 `"Electrical engineering technicians"', add
label define ro02a_occ4_lbl 3114 `"Electronics and telecommunications engineering technicians"', add
label define ro02a_occ4_lbl 3115 `"Mechanical engineering technicians"', add
label define ro02a_occ4_lbl 3116 `"Chemical engineering technicians"', add
label define ro02a_occ4_lbl 3117 `"Mining and metallurgical technicians"', add
label define ro02a_occ4_lbl 3118 `"Draughtspersons"', add
label define ro02a_occ4_lbl 3119 `"Physical and engineering science technicians not elsewhere classified"', add
label define ro02a_occ4_lbl 3121 `"Computer assistants"', add
label define ro02a_occ4_lbl 3122 `"Computer equipment operators"', add
label define ro02a_occ4_lbl 3131 `"Photographers and image and sound recording equipment operators"', add
label define ro02a_occ4_lbl 3132 `"Broadcasting and telecommunications equipment operators"', add
label define ro02a_occ4_lbl 3133 `"Medical equipment operators"', add
label define ro02a_occ4_lbl 3141 `"Ships' engineers"', add
label define ro02a_occ4_lbl 3142 `"Ships' deck officers and pilots"', add
label define ro02a_occ4_lbl 3143 `"Aircraft pilots and related associate professionals"', add
label define ro02a_occ4_lbl 3144 `"Air traffic controllers"', add
label define ro02a_occ4_lbl 3145 `"Air traffic safety technicians"', add
label define ro02a_occ4_lbl 3151 `"Building and fire inspectors"', add
label define ro02a_occ4_lbl 3152 `"Safety, health and quality inspectors"', add
label define ro02a_occ4_lbl 3161 `"Textile and leather industry technicians"', add
label define ro02a_occ4_lbl 3162 `"Food industry technicians"', add
label define ro02a_occ4_lbl 3171 `"Wood working industry technicians"', add
label define ro02a_occ4_lbl 3172 `"Glass, ceramic and construction materials industry technicians"', add
label define ro02a_occ4_lbl 3173 `"Pulp and paper industry technicians"', add
label define ro02a_occ4_lbl 3211 `"Life science technicians"', add
label define ro02a_occ4_lbl 3212 `"Agronomy and forestry technicians"', add
label define ro02a_occ4_lbl 3213 `"Farming and forestry advisers"', add
label define ro02a_occ4_lbl 3221 `"Medical assistants"', add
label define ro02a_occ4_lbl 3222 `"Hygienists, health and environmental officers"', add
label define ro02a_occ4_lbl 3224 `"Optometrists and opticians"', add
label define ro02a_occ4_lbl 3225 `"Dental assistants"', add
label define ro02a_occ4_lbl 3226 `"Physiotherapists and related associate professionals"', add
label define ro02a_occ4_lbl 3227 `"Veterinary assistants"', add
label define ro02a_occ4_lbl 3228 `"Pharmaceutical assistants"', add
label define ro02a_occ4_lbl 3229 `"Health associate professionals (except nursing) not elsewhere classified"', add
label define ro02a_occ4_lbl 3231 `"Nursing associate professionals"', add
label define ro02a_occ4_lbl 3232 `"Midwifery associate professionals"', add
label define ro02a_occ4_lbl 3310 `"Primary education teaching associate professionals"', add
label define ro02a_occ4_lbl 3320 `"Pre-primary education teaching associate professionals"', add
label define ro02a_occ4_lbl 3330 `"Special education teaching associate professionals"', add
label define ro02a_occ4_lbl 3340 `"Other teaching associate professionals"', add
label define ro02a_occ4_lbl 3411 `"Securities and finance dealers and brokers"', add
label define ro02a_occ4_lbl 3412 `"Insurance representatives"', add
label define ro02a_occ4_lbl 3413 `"Estate agents"', add
label define ro02a_occ4_lbl 3414 `"Travel consultants and organisers"', add
label define ro02a_occ4_lbl 3415 `"Technical and commercial sales representatives"', add
label define ro02a_occ4_lbl 3416 `"Buyers"', add
label define ro02a_occ4_lbl 3419 `"Finance and sales associate professionals not elsewhere classified"', add
label define ro02a_occ4_lbl 3421 `"Trade brokers"', add
label define ro02a_occ4_lbl 3422 `"Clearing and forwarding agents"', add
label define ro02a_occ4_lbl 3423 `"Employment agents and labour contractors"', add
label define ro02a_occ4_lbl 3429 `"Business services agents and trade brokers not elsewhere classified"', add
label define ro02a_occ4_lbl 3431 `"Administrative secretaries and related associate professionals"', add
label define ro02a_occ4_lbl 3432 `"Legal and related business associate professionals"', add
label define ro02a_occ4_lbl 3433 `"Bookkeepers"', add
label define ro02a_occ4_lbl 3434 `"Statistical, mathematical and related associate professionals"', add
label define ro02a_occ4_lbl 3441 `"Customs and border inspectors"', add
label define ro02a_occ4_lbl 3442 `"Government tax and excise officials"', add
label define ro02a_occ4_lbl 3443 `"Government social benefits officials"', add
label define ro02a_occ4_lbl 3444 `"Government licensing officials"', add
label define ro02a_occ4_lbl 3449 `"Customs, tax and related government associate professionals not elsewhere classified"', add
label define ro02a_occ4_lbl 3450 `"Police inspectors and detectives"', add
label define ro02a_occ4_lbl 3460 `"Social work associate professionals"', add
label define ro02a_occ4_lbl 3471 `"Decorators and commercial designers"', add
label define ro02a_occ4_lbl 3472 `"Radio, television and other announcers"', add
label define ro02a_occ4_lbl 3473 `"Street, night-club and related musicians, singers and dancers"', add
label define ro02a_occ4_lbl 3474 `"Clowns, magicians, acrobats and related associate professionals"', add
label define ro02a_occ4_lbl 3475 `"Athletes, sportspersons and related associate professionals"', add
label define ro02a_occ4_lbl 3480 `"Religious associate professionals"', add
label define ro02a_occ4_lbl 4111 `"Stenographers and typists"', add
label define ro02a_occ4_lbl 4112 `"Word-processor and related operators"', add
label define ro02a_occ4_lbl 4113 `"Data entry operators"', add
label define ro02a_occ4_lbl 4114 `"Calculating-machine operators"', add
label define ro02a_occ4_lbl 4115 `"Secretaries"', add
label define ro02a_occ4_lbl 4121 `"Accounting and bookkeeping clerks"', add
label define ro02a_occ4_lbl 4122 `"Statistical and finance clerks"', add
label define ro02a_occ4_lbl 4131 `"Stock clerks"', add
label define ro02a_occ4_lbl 4132 `"Production clerks"', add
label define ro02a_occ4_lbl 4133 `"Transport clerks"', add
label define ro02a_occ4_lbl 4141 `"Library and filing clerks"', add
label define ro02a_occ4_lbl 4142 `"Mail carriers and sorting clerks"', add
label define ro02a_occ4_lbl 4190 `"Other office clerks"', add
label define ro02a_occ4_lbl 4211 `"Cashiers and ticket clerks"', add
label define ro02a_occ4_lbl 4212 `"Tellers and other counter clerks"', add
label define ro02a_occ4_lbl 4213 `"Bookmakers and croupiers"', add
label define ro02a_occ4_lbl 4215 `"Debt-collectors and related workers"', add
label define ro02a_occ4_lbl 4221 `"Travel agency and related clerks"', add
label define ro02a_occ4_lbl 4222 `"Receptionists and information clerks"', add
label define ro02a_occ4_lbl 4223 `"Telephone switchboard operators"', add
label define ro02a_occ4_lbl 5111 `"Travel attendants and travel stewards"', add
label define ro02a_occ4_lbl 5112 `"Transport conductors"', add
label define ro02a_occ4_lbl 5113 `"Travel guides"', add
label define ro02a_occ4_lbl 5121 `"Housekeepers and related workers"', add
label define ro02a_occ4_lbl 5122 `"Cooks"', add
label define ro02a_occ4_lbl 5123 `"Waiters, waitresses and bartenders"', add
label define ro02a_occ4_lbl 5131 `"Child-care workers"', add
label define ro02a_occ4_lbl 5132 `"Institution-based personal care workers"', add
label define ro02a_occ4_lbl 5133 `"Home-based personal care workers"', add
label define ro02a_occ4_lbl 5139 `"Personal care and related workers not elsewhere classified"', add
label define ro02a_occ4_lbl 5141 `"Hairdressers, barbers, beauticians and related workers"', add
label define ro02a_occ4_lbl 5142 `"Companions and valets"', add
label define ro02a_occ4_lbl 5149 `"Other personal services workers not elsewhere classified"', add
label define ro02a_occ4_lbl 5161 `"Fire-fighters"', add
label define ro02a_occ4_lbl 5163 `"Prison guards"', add
label define ro02a_occ4_lbl 5169 `"Protective services workers not elsewhere classified"', add
label define ro02a_occ4_lbl 5220 `"Shop, stall and merket salespersons and demonstrators"', add
label define ro02a_occ4_lbl 6111 `"Field crop and vegetable growers"', add
label define ro02a_occ4_lbl 6112 `"Gardeners, horticultural and nursery growers"', add
label define ro02a_occ4_lbl 6115 `"Wine and tree growers"', add
label define ro02a_occ4_lbl 6121 `"Dairy and livestock producers"', add
label define ro02a_occ4_lbl 6122 `"Poultry producers"', add
label define ro02a_occ4_lbl 6123 `"Beekeepers and silk worm breeders"', add
label define ro02a_occ4_lbl 6124 `"Horse breeders"', add
label define ro02a_occ4_lbl 6125 `"Small animals breeders"', add
label define ro02a_occ4_lbl 6130 `"Crop and animal producers"', add
label define ro02a_occ4_lbl 6141 `"Forestry workers and loggers"', add
label define ro02a_occ4_lbl 6151 `"Aquatic-life cultivation workers"', add
label define ro02a_occ4_lbl 6152 `"Inland and coastal waters fishery workers"', add
label define ro02a_occ4_lbl 7111 `"Miners and quarry workers"', add
label define ro02a_occ4_lbl 7112 `"Shotfirers and blasters"', add
label define ro02a_occ4_lbl 7113 `"Stone splitters, cutters and carvers"', add
label define ro02a_occ4_lbl 7121 `"Builders"', add
label define ro02a_occ4_lbl 7122 `"Bricklayers and stonemasons"', add
label define ro02a_occ4_lbl 7123 `"Concrete placers, concrete finishers and related workers"', add
label define ro02a_occ4_lbl 7124 `"Carpenters and joiners"', add
label define ro02a_occ4_lbl 7129 `"Building frame and related trades workers not elsewhere classified"', add
label define ro02a_occ4_lbl 7131 `"Roofers"', add
label define ro02a_occ4_lbl 7132 `"Floor layers and tile setters"', add
label define ro02a_occ4_lbl 7133 `"Plasterers"', add
label define ro02a_occ4_lbl 7134 `"Insulation workers"', add
label define ro02a_occ4_lbl 7135 `"Glaziers"', add
label define ro02a_occ4_lbl 7136 `"Plumbers and pipe fitters"', add
label define ro02a_occ4_lbl 7137 `"Building and related electricians"', add
label define ro02a_occ4_lbl 7141 `"Painters and related workers"', add
label define ro02a_occ4_lbl 7143 `"Varnishers and related painters"', add
label define ro02a_occ4_lbl 7211 `"Metal moulders and coremakers"', add
label define ro02a_occ4_lbl 7212 `"Welders and flamecutters"', add
label define ro02a_occ4_lbl 7213 `"Sheet metal workers"', add
label define ro02a_occ4_lbl 7214 `"Structural-metal preparers and erectors"', add
label define ro02a_occ4_lbl 7215 `"Riggers and cable splicers"', add
label define ro02a_occ4_lbl 7221 `"Blacksmiths, hammer-smiths and forging-press workers"', add
label define ro02a_occ4_lbl 7222 `"Tool-makers and related workers"', add
label define ro02a_occ4_lbl 7223 `"Machine-tool setters and setter-operators"', add
label define ro02a_occ4_lbl 7224 `"Metal wheel-grinders, polishers and tool sharpeners"', add
label define ro02a_occ4_lbl 7231 `"Motor vehicle mechanics and fitters"', add
label define ro02a_occ4_lbl 7232 `"Aircraft engine mechanics and fitters"', add
label define ro02a_occ4_lbl 7233 `"Agricultural- or industrial-machinery mechanics and fitters"', add
label define ro02a_occ4_lbl 7241 `"Electrical mechanics and fitters"', add
label define ro02a_occ4_lbl 7242 `"Electronics mechanics, fitters and servicers"', add
label define ro02a_occ4_lbl 7244 `"Telegraph and telephone installers and servicers"', add
label define ro02a_occ4_lbl 7245 `"Electrical line installers, repairers and cable jointers"', add
label define ro02a_occ4_lbl 7311 `"Precision-instrument makers and repairers"', add
label define ro02a_occ4_lbl 7312 `"Musical instrument makers and tuners"', add
label define ro02a_occ4_lbl 7313 `"Jewellery and precious-metal workers"', add
label define ro02a_occ4_lbl 7321 `"Abrasive wheel formers, potters and related workers"', add
label define ro02a_occ4_lbl 7322 `"Glass makers, cutters, grinders and finishers"', add
label define ro02a_occ4_lbl 7323 `"Glass engravers and etchers"', add
label define ro02a_occ4_lbl 7324 `"Glass, ceramics and related decorative painters"', add
label define ro02a_occ4_lbl 7331 `"Handicraft workers in wood and related materials"', add
label define ro02a_occ4_lbl 7332 `"Handicraft workers in textile, leather and related materials"', add
label define ro02a_occ4_lbl 7341 `"Compositors, typesetters and related workers"', add
label define ro02a_occ4_lbl 7345 `"Bookbinders and related workers"', add
label define ro02a_occ4_lbl 7346 `"Silk-screen, block and textile printers"', add
label define ro02a_occ4_lbl 7411 `"Butchers, fishmongers and related food preparers"', add
label define ro02a_occ4_lbl 7412 `"Bakers, pastry-cooks and confectionery makers"', add
label define ro02a_occ4_lbl 7413 `"Dairy-products makers"', add
label define ro02a_occ4_lbl 7414 `"Fruit, vegetable and related preservers"', add
label define ro02a_occ4_lbl 7421 `"Wood treaters"', add
label define ro02a_occ4_lbl 7422 `"Cabinet-makers and related workers"', add
label define ro02a_occ4_lbl 7423 `"Woodworking machine setters and setter-operators"', add
label define ro02a_occ4_lbl 7424 `"Basketry weavers, brush makers and related workers"', add
label define ro02a_occ4_lbl 7431 `"Fibre preparers"', add
label define ro02a_occ4_lbl 7432 `"Weavers, knitters and related workers"', add
label define ro02a_occ4_lbl 7433 `"Tailors, dressmakers and hatters"', add
label define ro02a_occ4_lbl 7434 `"Furriers and related workers"', add
label define ro02a_occ4_lbl 7435 `"Textile, leather and related pattern-makers and cutters"', add
label define ro02a_occ4_lbl 7436 `"Sewers, embroiderers and related workers"', add
label define ro02a_occ4_lbl 7437 `"Upholsterers and related workers"', add
label define ro02a_occ4_lbl 7441 `"Pelt dressers, tanners and fellmongers"', add
label define ro02a_occ4_lbl 7442 `"Shoe-makers and related workers"', add
label define ro02a_occ4_lbl 8111 `"Mining-plant operators"', add
label define ro02a_occ4_lbl 8112 `"Mineral-ore- and stone-processing-plant operators"', add
label define ro02a_occ4_lbl 8113 `"Well drillers and borers and related workers"', add
label define ro02a_occ4_lbl 8121 `"Ore and metal furnace operators"', add
label define ro02a_occ4_lbl 8122 `"Metal melters, casters and rolling-mill operators"', add
label define ro02a_occ4_lbl 8123 `"Metal-heat-treating-plant operators"', add
label define ro02a_occ4_lbl 8124 `"Metal drawers and extruders"', add
label define ro02a_occ4_lbl 8131 `"Glass and ceramics kiln and related machine operators"', add
label define ro02a_occ4_lbl 8139 `"Glass, ceramics and related plant operators not elsewhere classified"', add
label define ro02a_occ4_lbl 8141 `"Wood-processing-plant operators"', add
label define ro02a_occ4_lbl 8142 `"Paper-pulp plant operators"', add
label define ro02a_occ4_lbl 8143 `"Papermaking-plant operators"', add
label define ro02a_occ4_lbl 8151 `"Crushing-, grinding- and chemical-mixing-machinery operators"', add
label define ro02a_occ4_lbl 8152 `"Chemical-heat-treating-plant operators"', add
label define ro02a_occ4_lbl 8153 `"Chemical-filtering- and separating-equipment operators"', add
label define ro02a_occ4_lbl 8154 `"Chemical-still and reactor operators (except petroleum and natural gas)"', add
label define ro02a_occ4_lbl 8155 `"Petroleum- and natural-gas-refining-plant operators"', add
label define ro02a_occ4_lbl 8159 `"Chemical-processing-plant operators not elsewhere classified"', add
label define ro02a_occ4_lbl 8161 `"Power-production plant operators"', add
label define ro02a_occ4_lbl 8162 `"Steam-engine and boiler operators"', add
label define ro02a_occ4_lbl 8163 `"Incinerator, water-treatment and related plant operators"', add
label define ro02a_occ4_lbl 8170 `"Industrial-robot operators"', add
label define ro02a_occ4_lbl 8211 `"Machine-tool operators"', add
label define ro02a_occ4_lbl 8212 `"Cement and other mineral products machine operators"', add
label define ro02a_occ4_lbl 8221 `"Pharmaceutical- and toiletry-products machine operators"', add
label define ro02a_occ4_lbl 8222 `"Ammunition- and explosive-products machine operators"', add
label define ro02a_occ4_lbl 8223 `"Metal finishing-, plating- and coating-machine operators"', add
label define ro02a_occ4_lbl 8224 `"Photographic-products machine operators"', add
label define ro02a_occ4_lbl 8229 `"Chemical-products machine operators not elsewhere classified"', add
label define ro02a_occ4_lbl 8231 `"Rubber-products machine operators"', add
label define ro02a_occ4_lbl 8232 `"Plastic-products machine operators"', add
label define ro02a_occ4_lbl 8240 `"Wood-products machine operators"', add
label define ro02a_occ4_lbl 8251 `"Printing-machine operators"', add
label define ro02a_occ4_lbl 8252 `"Bookbinding-machine operators"', add
label define ro02a_occ4_lbl 8253 `"Paper-products machine operators"', add
label define ro02a_occ4_lbl 8261 `"Fibre-preparing-, spinning- and winding-machine operators"', add
label define ro02a_occ4_lbl 8262 `"Weaving- and knitting-machine operators"', add
label define ro02a_occ4_lbl 8263 `"Sewing-machine operators"', add
label define ro02a_occ4_lbl 8264 `"Bleaching-, dyeing- and cleaning-machine operators"', add
label define ro02a_occ4_lbl 8265 `"Fur- and leather-preparing-machine operators"', add
label define ro02a_occ4_lbl 8266 `"Shoemaking- and related machine operators"', add
label define ro02a_occ4_lbl 8269 `"Textile-, fur- and leather-products machine operators not elsewhere classified"', add
label define ro02a_occ4_lbl 8271 `"Meat- and fish-processing-machine operators"', add
label define ro02a_occ4_lbl 8272 `"Dairy-products machine operators"', add
label define ro02a_occ4_lbl 8273 `"Grain- and spice-milling-machine operators"', add
label define ro02a_occ4_lbl 8274 `"Baked-goods, cereal and chocolate-products machine operators"', add
label define ro02a_occ4_lbl 8275 `"Fruit-, vegetable- and nut-processing-machine operators"', add
label define ro02a_occ4_lbl 8276 `"Sugar production machine operators"', add
label define ro02a_occ4_lbl 8278 `"Brewers, wine and other beverage machine operators"', add
label define ro02a_occ4_lbl 8279 `"Tobacco production machine operators"', add
label define ro02a_occ4_lbl 8281 `"Mechanical-machinery assemblers"', add
label define ro02a_occ4_lbl 8282 `"Electrical-equipment assemblers"', add
label define ro02a_occ4_lbl 8283 `"Electronic-equipment assemblers"', add
label define ro02a_occ4_lbl 8284 `"Metal-, rubber- and plastic-products assemblers"', add
label define ro02a_occ4_lbl 8285 `"Wood and related products assemblers"', add
label define ro02a_occ4_lbl 8286 `"Paperboard, textile and related products assemblers"', add
label define ro02a_occ4_lbl 8287 `"Composite products assemblers"', add
label define ro02a_occ4_lbl 8290 `"Other machine operators not elsewhere classified"', add
label define ro02a_occ4_lbl 8311 `"Locomotive-engine drivers"', add
label define ro02a_occ4_lbl 8312 `"Railway brakers, signallers and shunters"', add
label define ro02a_occ4_lbl 8321 `"Motor-cycle drivers"', add
label define ro02a_occ4_lbl 8322 `"Car, taxi and van drivers"', add
label define ro02a_occ4_lbl 8323 `"Bus and tram drivers"', add
label define ro02a_occ4_lbl 8324 `"Heavy-truck and lorry drivers"', add
label define ro02a_occ4_lbl 8331 `"Motorised farm and forestry plant operators"', add
label define ro02a_occ4_lbl 8332 `"Earth-moving- and related plant operators"', add
label define ro02a_occ4_lbl 8333 `"Crane, hoist and related plant operators"', add
label define ro02a_occ4_lbl 8334 `"Lifting-truck operators"', add
label define ro02a_occ4_lbl 8340 `"Ships' deck crews and related workers"', add
label define ro02a_occ4_lbl 8888 `"Armed forces"', add
label define ro02a_occ4_lbl 9111 `"Street vendors"', add
label define ro02a_occ4_lbl 9120 `"Shoe cleaning and other street services elementary occupations"', add
label define ro02a_occ4_lbl 9131 `"Domestic helpers and cleaners"', add
label define ro02a_occ4_lbl 9132 `"Helpers and cleaners in offices, hotels and other establishments"', add
label define ro02a_occ4_lbl 9133 `"Hand-launderers and pressers"', add
label define ro02a_occ4_lbl 9141 `"Building caretakers"', add
label define ro02a_occ4_lbl 9142 `"Vehicle, window and related cleaners"', add
label define ro02a_occ4_lbl 9151 `"Messengers, package and luggage porters and deliverers"', add
label define ro02a_occ4_lbl 9152 `"Doorkeepers, watchpersons and related workers"', add
label define ro02a_occ4_lbl 9153 `"Vending-machine money collectors, meter readers and related workers"', add
label define ro02a_occ4_lbl 9161 `"Garbage collectors"', add
label define ro02a_occ4_lbl 9162 `"Sweepers and related labourers"', add
label define ro02a_occ4_lbl 9211 `"Farm-hands and labourers"', add
label define ro02a_occ4_lbl 9212 `"Forestry labourers"', add
label define ro02a_occ4_lbl 9311 `"Mining and quarrying labourers"', add
label define ro02a_occ4_lbl 9312 `"Construction and maintenance labourers: roads, dams and similar constructions"', add
label define ro02a_occ4_lbl 9313 `"Building construction labourers"', add
label define ro02a_occ4_lbl 9320 `"Manufacturing labourers"', add
label define ro02a_occ4_lbl 9330 `"Transport labourers and freight handlers"', add
label define ro02a_occ4_lbl 9997 `"Response suppressed"', add
label define ro02a_occ4_lbl 9998 `"Unknown"', add
label define ro02a_occ4_lbl 9999 `"NIU (not in universe)"', add
label values ro02a_occ4 ro02a_occ4_lbl

label define ro02a_classwk_lbl 1 `"Employee"'
label define ro02a_classwk_lbl 2 `"Employer, private enterprise owner"', add
label define ro02a_classwk_lbl 3 `"Own account worker"', add
label define ro02a_classwk_lbl 4 `"Member of an agricultural company"', add
label define ro02a_classwk_lbl 5 `"Contributing family worker to own household (unpaid)"', add
label define ro02a_classwk_lbl 6 `"Other"', add
label define ro02a_classwk_lbl 8 `"Unknown"', add
label define ro02a_classwk_lbl 9 `"NIU (not in universe)"', add
label values ro02a_classwk ro02a_classwk_lbl

label define ro02a_ind_lbl 01 `"Agriculture and related service activities"'
label define ro02a_ind_lbl 02 `"Forestry, logging and related service activities"', add
label define ro02a_ind_lbl 03 `"Hunting and related service activities"', add
label define ro02a_ind_lbl 05 `"Fishing,  fish farming and related service activities"', add
label define ro02a_ind_lbl 10 `"Mining of coal and lignite; extraction of peat"', add
label define ro02a_ind_lbl 11 `"Extraction of crude petroleum and natural gas; service activities incidental to oil and gas extraction, excluding surveying"', add
label define ro02a_ind_lbl 12 `"Mining of uranium and thorium ores"', add
label define ro02a_ind_lbl 13 `"Mining of metal ores"', add
label define ro02a_ind_lbl 14 `"Other mining and quarrying"', add
label define ro02a_ind_lbl 15 `"Manufacture of food products and beverages"', add
label define ro02a_ind_lbl 16 `"Manufacture of tobacco products"', add
label define ro02a_ind_lbl 17 `"Manufacture of textiles"', add
label define ro02a_ind_lbl 18 `"Manufacture of wearing apparel; dressing and dyeing of fur"', add
label define ro02a_ind_lbl 19 `"Tanning and dressing of leather; manufacture of luggage, handbags, saddlery, harness and footwear"', add
label define ro02a_ind_lbl 20 `"Manufacture of wood and of products of wood and cork, except furniture; manufacture of articles of straw and plaiting materials"', add
label define ro02a_ind_lbl 21 `"Manufacture of pulp, paper and paper products"', add
label define ro02a_ind_lbl 22 `"Publishing, printing and reproduction of recorded media"', add
label define ro02a_ind_lbl 23 `"Manufacture of coke, refined petroleum products and nuclear fuel"', add
label define ro02a_ind_lbl 24 `"Manufacture of chemicals and chemical products"', add
label define ro02a_ind_lbl 25 `"Manufacture of rubber and plastic products"', add
label define ro02a_ind_lbl 26 `"Manufacture of other non-metallic mineral products"', add
label define ro02a_ind_lbl 27 `"Manufacture of basic metals"', add
label define ro02a_ind_lbl 28 `"Manufacture of fabricated metal products, except machinery and equipment"', add
label define ro02a_ind_lbl 29 `"Manufacture of machinery and equipment n.e.c."', add
label define ro02a_ind_lbl 30 `"Manufacture of office machinery and computers"', add
label define ro02a_ind_lbl 31 `"Manufacture of electrical machinery and apparatus n.e.c."', add
label define ro02a_ind_lbl 32 `"Manufacture of radio, television and communication equipment and apparatus"', add
label define ro02a_ind_lbl 33 `"Manufacture of medical, precision and optical instruments, watches and clocks"', add
label define ro02a_ind_lbl 34 `"Manufacture of motor vehicles, trailers and semi-trailers"', add
label define ro02a_ind_lbl 35 `"Manufacture of other transport equipment"', add
label define ro02a_ind_lbl 36 `"Manufacture of furniture; manufacturing n.e.c."', add
label define ro02a_ind_lbl 37 `"Recycling"', add
label define ro02a_ind_lbl 40 `"Electricity, gas, steam and hot water supply"', add
label define ro02a_ind_lbl 41 `"Collection, purification and distribution of water"', add
label define ro02a_ind_lbl 45 `"Construction"', add
label define ro02a_ind_lbl 50 `"Sale, maintenance and repair of motor vehicles and motorcycles; retail sale of automotive fuel"', add
label define ro02a_ind_lbl 51 `"Wholesale trade and commission trade, except of motor vehicles and motorcycles"', add
label define ro02a_ind_lbl 52 `"Retail trade, except of motor vehicles and motorcycles; repair of personal and household goods"', add
label define ro02a_ind_lbl 55 `"Hotels and restaurants"', add
label define ro02a_ind_lbl 60 `"Land transport; transport via pipelines"', add
label define ro02a_ind_lbl 61 `"Water transport"', add
label define ro02a_ind_lbl 62 `"Air transport"', add
label define ro02a_ind_lbl 63 `"Supporting and auxiliary transport activities; activities of travel agencies"', add
label define ro02a_ind_lbl 64 `"Post and telecommunications"', add
label define ro02a_ind_lbl 65 `"Financial intermediation, except insurance and pension funding"', add
label define ro02a_ind_lbl 66 `"Insurance and pension funding, except compulsory social security"', add
label define ro02a_ind_lbl 67 `"Activities auxiliary to financial intermediation"', add
label define ro02a_ind_lbl 70 `"Real estate activities"', add
label define ro02a_ind_lbl 71 `"Renting of machinery and equipment without operator and of personal and household goods"', add
label define ro02a_ind_lbl 72 `"Computer and related activities"', add
label define ro02a_ind_lbl 73 `"Research and development"', add
label define ro02a_ind_lbl 74 `"Other business activities"', add
label define ro02a_ind_lbl 75 `"Public administration and defense; compulsory social security"', add
label define ro02a_ind_lbl 80 `"Education"', add
label define ro02a_ind_lbl 85 `"Health and social work"', add
label define ro02a_ind_lbl 90 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define ro02a_ind_lbl 91 `"Activities of membership organizations n.e.c."', add
label define ro02a_ind_lbl 92 `"Recreational, cultural and sporting activities"', add
label define ro02a_ind_lbl 93 `"Other service activities"', add
label define ro02a_ind_lbl 95 `"Activities of households as employers of domestic staff"', add
label define ro02a_ind_lbl 96 `"Extra-territorial organizations and bodies"', add
label define ro02a_ind_lbl 98 `"Unknown"', add
label define ro02a_ind_lbl 99 `"NIU (not in universe)"', add
label values ro02a_ind ro02a_ind_lbl

label define ro02a_wkloc_lbl 1 `"The same locality"'
label define ro02a_wkloc_lbl 2 `"Other place in the same county-urban"', add
label define ro02a_wkloc_lbl 3 `"Other place in the same county-rural"', add
label define ro02a_wkloc_lbl 4 `"Other county-urban"', add
label define ro02a_wkloc_lbl 5 `"Other county-rural"', add
label define ro02a_wkloc_lbl 6 `"Other country"', add
label define ro02a_wkloc_lbl 8 `"Unknown"', add
label define ro02a_wkloc_lbl 9 `"NIU (not in universe)"', add
label values ro02a_wkloc ro02a_wkloc_lbl

label define ro02a_wkown_lbl 1 `"Public (state)"'
label define ro02a_wkown_lbl 2 `"Private"', add
label define ro02a_wkown_lbl 3 `"Mixed structure"', add
label define ro02a_wkown_lbl 4 `"Worked for own household"', add
label define ro02a_wkown_lbl 5 `"Workd for other households"', add
label define ro02a_wkown_lbl 8 `"Unknown"', add
label define ro02a_wkown_lbl 9 `"NIU (not in universe)"', add
label values ro02a_wkown ro02a_wkown_lbl

label define ro02a_durunemp_lbl 1 `"Less than 6 months"'
label define ro02a_durunemp_lbl 2 `"6 to 9 months"', add
label define ro02a_durunemp_lbl 3 `"9 to 27 months"', add
label define ro02a_durunemp_lbl 4 `"27 months and over"', add
label define ro02a_durunemp_lbl 9 `"NIU (not in universe)"', add
label values ro02a_durunemp ro02a_durunemp_lbl

label define ro02a_benunemp_lbl 0 `"NIU (not in universe)"'
label define ro02a_benunemp_lbl 1 `"Unemployment aid"', add
label define ro02a_benunemp_lbl 2 `"Benefits related to professional integration"', add
label define ro02a_benunemp_lbl 3 `"Support allowances"', add
label define ro02a_benunemp_lbl 4 `"Not receiving any benefits"', add
label define ro02a_benunemp_lbl 9 `"Unknown"', add
label values ro02a_benunemp ro02a_benunemp_lbl

label define ro02a_empyear_lbl 1 `"The same economic status as during census moment"'
label define ro02a_empyear_lbl 2 `"Other"', add
label define ro02a_empyear_lbl 9 `"NIU (not in universe)"', add
label values ro02a_empyear ro02a_empyear_lbl

label define ro02a_empstatu_lbl 1 `"Employed"'
label define ro02a_empstatu_lbl 2 `"Unemployed-seeking another job"', add
label define ro02a_empstatu_lbl 3 `"Unemployed- first time job-seeker"', add
label define ro02a_empstatu_lbl 4 `"Pupil / student"', add
label define ro02a_empstatu_lbl 5 `"Retired"', add
label define ro02a_empstatu_lbl 6 `"Homemaker"', add
label define ro02a_empstatu_lbl 7 `"Dependent on a supporter"', add
label define ro02a_empstatu_lbl 8 `"Receiving public aid or private organization's support"', add
label define ro02a_empstatu_lbl 9 `"Other status"', add
label define ro02a_empstatu_lbl 0 `"NIU (not in universe)"', add
label values ro02a_empstatu ro02a_empstatu_lbl

label define ro02a_classwku_lbl 1 `"Employee"'
label define ro02a_classwku_lbl 2 `"Employer, private enterprise owner"', add
label define ro02a_classwku_lbl 3 `"Own account worker"', add
label define ro02a_classwku_lbl 5 `"Contributing family worker to own household"', add
label define ro02a_classwku_lbl 6 `"Others, and response suppressed"', add
label define ro02a_classwku_lbl 9 `"NIU (not in universe)"', add
label values ro02a_classwku ro02a_classwku_lbl

label define ro02a_tenure_lbl 1 `"Owner"'
label define ro02a_tenure_lbl 2 `"Tenant to the state"', add
label define ro02a_tenure_lbl 3 `"Tenant to the individual private owner"', add
label define ro02a_tenure_lbl 4 `"Tenant to the private company"', add
label define ro02a_tenure_lbl 5 `"Other"', add
label define ro02a_tenure_lbl 9 `"NIU (not in universe)"', add
label values ro02a_tenure ro02a_tenure_lbl

label define ro02a_rent_lbl 1 `"Below 500 thousand lei"'
label define ro02a_rent_lbl 2 `"500 thousand lei and below 1 million lei"', add
label define ro02a_rent_lbl 3 `"1 million lei and below 2 million lei"', add
label define ro02a_rent_lbl 4 `"2 million lei and below 3 million lei"', add
label define ro02a_rent_lbl 5 `"3 million lei and over"', add
label define ro02a_rent_lbl 9 `"NIU (not in universe)"', add
label values ro02a_rent ro02a_rent_lbl

label define ro02a_age_lbl 00 `"0"'
label define ro02a_age_lbl 01 `"1"', add
label define ro02a_age_lbl 02 `"2"', add
label define ro02a_age_lbl 03 `"3"', add
label define ro02a_age_lbl 04 `"4"', add
label define ro02a_age_lbl 05 `"5"', add
label define ro02a_age_lbl 06 `"6"', add
label define ro02a_age_lbl 07 `"7"', add
label define ro02a_age_lbl 08 `"8"', add
label define ro02a_age_lbl 09 `"9"', add
label define ro02a_age_lbl 10 `"10"', add
label define ro02a_age_lbl 11 `"11"', add
label define ro02a_age_lbl 12 `"12"', add
label define ro02a_age_lbl 13 `"13"', add
label define ro02a_age_lbl 14 `"14"', add
label define ro02a_age_lbl 15 `"15"', add
label define ro02a_age_lbl 16 `"16"', add
label define ro02a_age_lbl 17 `"17"', add
label define ro02a_age_lbl 18 `"18"', add
label define ro02a_age_lbl 19 `"19"', add
label define ro02a_age_lbl 20 `"20"', add
label define ro02a_age_lbl 21 `"21"', add
label define ro02a_age_lbl 22 `"22"', add
label define ro02a_age_lbl 23 `"23"', add
label define ro02a_age_lbl 24 `"24"', add
label define ro02a_age_lbl 25 `"25"', add
label define ro02a_age_lbl 26 `"26"', add
label define ro02a_age_lbl 27 `"27"', add
label define ro02a_age_lbl 28 `"28"', add
label define ro02a_age_lbl 29 `"29"', add
label define ro02a_age_lbl 30 `"30"', add
label define ro02a_age_lbl 31 `"31"', add
label define ro02a_age_lbl 32 `"32"', add
label define ro02a_age_lbl 33 `"33"', add
label define ro02a_age_lbl 34 `"34"', add
label define ro02a_age_lbl 35 `"35"', add
label define ro02a_age_lbl 36 `"36"', add
label define ro02a_age_lbl 37 `"37"', add
label define ro02a_age_lbl 38 `"38"', add
label define ro02a_age_lbl 39 `"39"', add
label define ro02a_age_lbl 40 `"40"', add
label define ro02a_age_lbl 41 `"41"', add
label define ro02a_age_lbl 42 `"42"', add
label define ro02a_age_lbl 43 `"43"', add
label define ro02a_age_lbl 44 `"44"', add
label define ro02a_age_lbl 45 `"45"', add
label define ro02a_age_lbl 46 `"46"', add
label define ro02a_age_lbl 47 `"47"', add
label define ro02a_age_lbl 48 `"48"', add
label define ro02a_age_lbl 49 `"49"', add
label define ro02a_age_lbl 50 `"50"', add
label define ro02a_age_lbl 51 `"51"', add
label define ro02a_age_lbl 52 `"52"', add
label define ro02a_age_lbl 53 `"53"', add
label define ro02a_age_lbl 54 `"54"', add
label define ro02a_age_lbl 55 `"55"', add
label define ro02a_age_lbl 56 `"56"', add
label define ro02a_age_lbl 57 `"57"', add
label define ro02a_age_lbl 58 `"58"', add
label define ro02a_age_lbl 59 `"59"', add
label define ro02a_age_lbl 60 `"60"', add
label define ro02a_age_lbl 61 `"61"', add
label define ro02a_age_lbl 62 `"62"', add
label define ro02a_age_lbl 63 `"63"', add
label define ro02a_age_lbl 64 `"64"', add
label define ro02a_age_lbl 65 `"65"', add
label define ro02a_age_lbl 66 `"66"', add
label define ro02a_age_lbl 67 `"67"', add
label define ro02a_age_lbl 68 `"68"', add
label define ro02a_age_lbl 69 `"69"', add
label define ro02a_age_lbl 70 `"70"', add
label define ro02a_age_lbl 71 `"71"', add
label define ro02a_age_lbl 72 `"72"', add
label define ro02a_age_lbl 73 `"73"', add
label define ro02a_age_lbl 74 `"74"', add
label define ro02a_age_lbl 75 `"75"', add
label define ro02a_age_lbl 76 `"76"', add
label define ro02a_age_lbl 77 `"77"', add
label define ro02a_age_lbl 78 `"78"', add
label define ro02a_age_lbl 79 `"79"', add
label define ro02a_age_lbl 80 `"80"', add
label define ro02a_age_lbl 81 `"81"', add
label define ro02a_age_lbl 82 `"82"', add
label define ro02a_age_lbl 83 `"83"', add
label define ro02a_age_lbl 84 `"84"', add
label define ro02a_age_lbl 85 `"85"', add
label define ro02a_age_lbl 86 `"86"', add
label define ro02a_age_lbl 87 `"87"', add
label define ro02a_age_lbl 88 `"88"', add
label define ro02a_age_lbl 89 `"89"', add
label define ro02a_age_lbl 90 `"90"', add
label define ro02a_age_lbl 91 `"91"', add
label define ro02a_age_lbl 92 `"92"', add
label define ro02a_age_lbl 93 `"93"', add
label define ro02a_age_lbl 94 `"94"', add
label define ro02a_age_lbl 95 `"95"', add
label define ro02a_age_lbl 96 `"96"', add
label define ro02a_age_lbl 97 `"97"', add
label define ro02a_age_lbl 98 `"98+"', add
label values ro02a_age ro02a_age_lbl

label define ro02a_relatef_lbl 0 `"Person without any family nucleus"'
label define ro02a_relatef_lbl 1 `"Nucleus head (male)"', add
label define ro02a_relatef_lbl 2 `"Wife"', add
label define ro02a_relatef_lbl 3 `"Cohabitant"', add
label define ro02a_relatef_lbl 4 `"Child"', add
label values ro02a_relatef ro02a_relatef_lbl

label define ro02a_famnum_lbl 0 `"person without any family nucleus"'
label define ro02a_famnum_lbl 1 `"1"', add
label define ro02a_famnum_lbl 2 `"2"', add
label define ro02a_famnum_lbl 3 `"3"', add
label define ro02a_famnum_lbl 4 `"4"', add
label define ro02a_famnum_lbl 5 `"5"', add
label define ro02a_famnum_lbl 6 `"6"', add
label values ro02a_famnum ro02a_famnum_lbl

label define ro02a_famtype_lbl 1 `"Married couple without children"'
label define ro02a_famtype_lbl 2 `"Married couple with children"', add
label define ro02a_famtype_lbl 3 `"Not legally married couple without children"', add
label define ro02a_famtype_lbl 4 `"Not legally married couple with children"', add
label define ro02a_famtype_lbl 5 `"Lone father with children"', add
label define ro02a_famtype_lbl 6 `"Lone mother with children"', add
label define ro02a_famtype_lbl 7 `"Person without any family nucleus"', add
label values ro02a_famtype ro02a_famtype_lbl

label define ro02a_reslegc_lbl 01 `"Alba"'
label define ro02a_reslegc_lbl 02 `"Arad"', add
label define ro02a_reslegc_lbl 03 `"Arges"', add
label define ro02a_reslegc_lbl 04 `"Bacau"', add
label define ro02a_reslegc_lbl 05 `"Bihor"', add
label define ro02a_reslegc_lbl 06 `"Bistrita Nasaud"', add
label define ro02a_reslegc_lbl 07 `"Botosani"', add
label define ro02a_reslegc_lbl 08 `"Brasov"', add
label define ro02a_reslegc_lbl 09 `"Braila"', add
label define ro02a_reslegc_lbl 10 `"Buzau"', add
label define ro02a_reslegc_lbl 11 `"Caras Severin"', add
label define ro02a_reslegc_lbl 12 `"Cluj"', add
label define ro02a_reslegc_lbl 13 `"Constanta"', add
label define ro02a_reslegc_lbl 14 `"Covasna"', add
label define ro02a_reslegc_lbl 15 `"Dimbovita"', add
label define ro02a_reslegc_lbl 16 `"Dolj"', add
label define ro02a_reslegc_lbl 17 `"Galati"', add
label define ro02a_reslegc_lbl 18 `"Gorj"', add
label define ro02a_reslegc_lbl 19 `"Harghita"', add
label define ro02a_reslegc_lbl 20 `"Hunedoara"', add
label define ro02a_reslegc_lbl 21 `"Ialomita"', add
label define ro02a_reslegc_lbl 22 `"Iasi"', add
label define ro02a_reslegc_lbl 23 `"Ilfov"', add
label define ro02a_reslegc_lbl 24 `"Maramures"', add
label define ro02a_reslegc_lbl 25 `"Mehedinti"', add
label define ro02a_reslegc_lbl 26 `"Mures"', add
label define ro02a_reslegc_lbl 27 `"Neamt"', add
label define ro02a_reslegc_lbl 28 `"Olt"', add
label define ro02a_reslegc_lbl 29 `"Prahova"', add
label define ro02a_reslegc_lbl 30 `"Satu Mare"', add
label define ro02a_reslegc_lbl 31 `"Salaj"', add
label define ro02a_reslegc_lbl 32 `"Sibiu"', add
label define ro02a_reslegc_lbl 33 `"Suceava"', add
label define ro02a_reslegc_lbl 34 `"Teleorman"', add
label define ro02a_reslegc_lbl 35 `"Timis"', add
label define ro02a_reslegc_lbl 36 `"Tulcea"', add
label define ro02a_reslegc_lbl 37 `"Vaslui"', add
label define ro02a_reslegc_lbl 38 `"Valcea"', add
label define ro02a_reslegc_lbl 39 `"Vrancea"', add
label define ro02a_reslegc_lbl 40 `"Bucharest Municipality"', add
label define ro02a_reslegc_lbl 41 `"Bucharest Sector 1"', add
label define ro02a_reslegc_lbl 42 `"Bucharest Sector 2"', add
label define ro02a_reslegc_lbl 43 `"Bucharest Sector 3"', add
label define ro02a_reslegc_lbl 44 `"Bucharest Sector 4"', add
label define ro02a_reslegc_lbl 45 `"Bucharest Sector 5"', add
label define ro02a_reslegc_lbl 46 `"Bucharest Sector 6"', add
label define ro02a_reslegc_lbl 51 `"Calarasi"', add
label define ro02a_reslegc_lbl 52 `"Giurgiu"', add
label define ro02a_reslegc_lbl 99 `"NIU (not in universe)"', add
label values ro02a_reslegc ro02a_reslegc_lbl


