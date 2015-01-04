* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  byte    uy11a_hhnum     22-23    ///
  byte    uy11a_hhn       24-25    ///
  byte    uy11a_pernd     26-27    ///
  byte    uy11a_pern      28-29    ///
  byte    uy11a_fbig      30-30    ///
  int     uy11a_fbig_nd   31-34    ///
  int     uy11a_fbig_nh   35-38    ///
  byte    uy11a_dept      39-40    ///
  long    uy11a_dwnmbr    41-47    ///
  byte    uy11a_hhnmbr    48-49    ///
  byte    uy11a_dwtype    50-51    ///
  byte    uy11a_occup     52-52    ///
  byte    uy11a_noncoll   53-53    ///
  byte    uy11a_walls     54-54    ///
  byte    uy11a_roof      55-55    ///
  byte    uy11a_floors    56-56    ///
  byte    uy11a_watsrc    57-57    ///
  byte    uy11a_watsup    58-58    ///
  byte    uy11a_electrc   59-59    ///
  byte    uy11a_multhh    60-60    ///
  byte    uy11a_nhhshare  61-62    ///
  byte    uy11a_dwcat     63-64    ///
  byte    uy11a_resident  65-65    ///
  byte    uy11a_owner     66-66    ///
  byte    uy11a_otype     67-67    ///
  byte    uy11a_usetype   68-68    ///
  byte    uy11a_rooms     69-70    ///
  byte    uy11a_bedrooms  71-72    ///
  byte    uy11a_bathdw    73-73    ///
  byte    uy11a_sharbath  74-74    ///
  byte    uy11a_sewer     75-75    ///
  byte    uy11a_kitchen   76-76    ///
  byte    uy11a_fuelck    77-77    ///
  byte    uy11a_fuelht    78-79    ///
  byte    uy11a_boilerht  80-80    ///
  byte    uy11a_wathtr    81-81    ///
  byte    uy11a_refridg   82-82    ///
  byte    uy11a_dryer     83-83    ///
  byte    uy11a_radio     84-84    ///
  byte    uy11a_colortv   85-85    ///
  byte    uy11a_phone     86-86    ///
  byte    uy11a_cellph    87-87    ///
  byte    uy11a_xoceibal  88-88    ///
  byte    uy11a_pc        89-89    ///
  byte    uy11a_internet  90-90    ///
  byte    uy11a_motorc    91-91    ///
  byte    uy11a_autos     92-92    ///
  byte    uy11a_hhtotal   93-94    ///
  byte    uy11a_hhmale    95-96    ///
  byte    uy11a_hhfem     97-98    ///
  int     pernum          99-101   ///
  float   wtper           102-109  ///
  byte    uy11a_pernum    110-111  ///
  byte    uy11a_perabs    112-112  ///
  byte    uy11a_sex       113-113  ///
  int     uy11a_age       114-116  ///
  byte    uy11a_birthmo   117-118  ///
  int     uy11a_birthyr   119-122  ///
  byte    uy11a_relate    123-124  ///
  byte    uy11a_father    125-125  ///
  byte    uy11a_ethnbl    126-126  ///
  byte    uy11a_ethnas    127-127  ///
  byte    uy11a_ethnwht   128-128  ///
  byte    uy11a_ethnid    129-129  ///
  byte    uy11a_ethnoth   130-130  ///
  byte    uy11a_ancestry  131-131  ///
  byte    uy11a_spousehh  132-132  ///
  byte    uy11a_union     133-133  ///
  byte    uy11a_marst     134-134  ///
  byte    uy11a_bplplace  135-135  ///
  byte    uy11a_bpldept   136-137  ///
  long    uy11a_bploth    138-142  ///
  byte    uy11a_bplctry   143-144  ///
  int     uy11a_arryr     145-148  ///
  byte    uy11a_restime   149-149  ///
  byte    uy11a_resdurr   150-151  ///
  byte    uy11a_prevres   152-152  ///
  byte    uy11a_prevdept  153-154  ///
  long    uy11a_prevloce  155-159  ///
  byte    uy11a_prevctry  160-161  ///
  byte    uy11a_res5      162-162  ///
  byte    uy11a_res5dept  163-164  ///
  long    uy11a_res5loce  165-169  ///
  byte    uy11a_res5ctry  170-171  ///
  byte    uy11a_edearly   172-172  ///
  byte    uy11a_school    173-173  ///
  byte    uy11a_schloc    174-174  ///
  byte    uy11a_schdept   175-176  ///
  byte    uy11a_schctry   177-178  ///
  byte    uy11a_edattend  179-180  ///
  byte    uy11a_edlevel   181-182  ///
  byte    uy11a_edlevcom  183-183  ///
  byte    uy11a_lit       184-184  ///
  byte    uy11a_worklw    185-185  ///
  byte    uy11a_wkagr     186-186  ///
  byte    uy11a_wkreturn  187-187  ///
  byte    uy11a_wklook    188-188  ///
  byte    uy11a_wkprev    189-189  ///
  byte    uy11a_wkloc     190-190  ///
  byte    uy11a_wkdept    191-192  ///
  byte    uy11a_retired   193-193  ///
  byte    uy11a_domhome   194-194  ///
  byte    uy11a_chborn    195-196  ///
  byte    uy11a_chborunk  197-197  ///
  byte    uy11a_chalive   198-199  ///
  byte    uy11a_chlivunk  200-200  ///
  int     uy11a_lstbyr    201-204  ///
  byte    uy11a_lstbmo    205-206  ///
  int     uy11a_frstbyr   207-210  ///
  byte    uy11a_dissee    211-211  ///
  byte    uy11a_dismob    212-212  ///
  byte    uy11a_disdev    213-213  ///
  byte    uy11a_edattan   214-215  ///
  byte    uy11a_empstat   216-216  ///
  byte    uy11a_chbornrc  217-218  ///
  byte    uy11a_chliverc  219-220  ///
  using `"ipumsi_00122.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var uy11a_hhnum    `"Household number (within dwelling)"'
label var uy11a_hhn      `"Number of households in dwelling"'
label var uy11a_pernd    `"Number of persons in dwelling"'
label var uy11a_pern     `"Number of persons in household"'
label var uy11a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var uy11a_fbig_nd  `"Number of persons in large dwelling before it was split"'
label var uy11a_fbig_nh  `"Number of persons in large household before it was split"'
label var uy11a_dept     `"Department"'
label var uy11a_dwnmbr   `"Dwelling number"'
label var uy11a_hhnmbr   `"Household number"'
label var uy11a_dwtype   `"Type of dwelling"'
label var uy11a_occup    `"Occupancy"'
label var uy11a_noncoll  `"Usual residents that do not belong to the collective household"'
label var uy11a_walls    `"Wall material"'
label var uy11a_roof     `"Roof material"'
label var uy11a_floors   `"Floor material"'
label var uy11a_watsrc   `"Source of water"'
label var uy11a_watsup   `"Water supply"'
label var uy11a_electrc  `"Electricity source"'
label var uy11a_multhh   `"Number of households in the dwelling"'
label var uy11a_nhhshare `"Number of households that share the dwelling"'
label var uy11a_dwcat    `"Dwelling category"'
label var uy11a_resident `"Absent resident"'
label var uy11a_owner    `"Tenure status"'
label var uy11a_otype    `"Homeowner type"'
label var uy11a_usetype  `"User or occupant type"'
label var uy11a_rooms    `"Total rooms"'
label var uy11a_bedrooms `"Bedrooms"'
label var uy11a_bathdw   `"Bathroom in the dwelling"'
label var uy11a_sharbath `"Shared use of bathroom"'
label var uy11a_sewer    `"Sewage disposal"'
label var uy11a_kitchen  `"Place for cooking"'
label var uy11a_fuelck   `"Cooking fuel"'
label var uy11a_fuelht   `"Heating fuel"'
label var uy11a_boilerht `"Water heater or boiler"'
label var uy11a_wathtr   `"Instant water heater"'
label var uy11a_refridg  `"Refrigerator or freezer"'
label var uy11a_dryer    `"Clothes dryer machine"'
label var uy11a_radio    `"Radio"'
label var uy11a_colortv  `"Color TV"'
label var uy11a_phone    `"Landline"'
label var uy11a_cellph   `"Cell phone"'
label var uy11a_xoceibal `"XO from Ceibal plan"'
label var uy11a_pc       `"PC or laptop"'
label var uy11a_internet `"Internet access"'
label var uy11a_motorc   `"Mopeds or motorcycles"'
label var uy11a_autos    `"Automobiles or trucks"'
label var uy11a_hhtotal  `"Total household members"'
label var uy11a_hhmale   `"Total male household members"'
label var uy11a_hhfem    `"Total female household members"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var uy11a_pernum   `"Person number (within household)"'
label var uy11a_perabs   `"Absent Resident"'
label var uy11a_sex      `"Sex"'
label var uy11a_age      `"Age (completed years)"'
label var uy11a_birthmo  `"Month of birth"'
label var uy11a_birthyr  `"Year of birth"'
label var uy11a_relate   `"Relationship to household head or reference person"'
label var uy11a_father   `"Father is household member"'
label var uy11a_ethnbl   `"Ethnicity: Afro or Black"'
label var uy11a_ethnas   `"Ethnicity: Asian or Yellow"'
label var uy11a_ethnwht  `"Ethnicity: White"'
label var uy11a_ethnid   `"Ethnicity: Indigenous"'
label var uy11a_ethnoth  `"Ethnicity: Other"'
label var uy11a_ancestry `"Main ethnicity"'
label var uy11a_spousehh `"Spouse or partner in the household"'
label var uy11a_union    `"Type of union"'
label var uy11a_marst    `"Marital status"'
label var uy11a_bplplace `"Place of birth"'
label var uy11a_bpldept  `"Department of birth"'
label var uy11a_bploth   `"Locality or area or birth in another department"'
label var uy11a_bplctry  `"Country of birth"'
label var uy11a_arryr    `"Year of arrival"'
label var uy11a_restime  `"Permanent residence in locality or area"'
label var uy11a_resdurr  `"Years of residence"'
label var uy11a_prevres  `"Previous place of residence"'
label var uy11a_prevdept `"Department of previous residence"'
label var uy11a_prevloce `"Locality or area of previous residence in another department"'
label var uy11a_prevctry `"Country of previous residence"'
label var uy11a_res5     `"Place of residence 5 years ago"'
label var uy11a_res5dept `"Department of residence 5 years ago"'
label var uy11a_res5loce `"Locality or area of residence 5 years ago in another department"'
label var uy11a_res5ctry `"Country of residence 5 years ago"'
label var uy11a_edearly  `"Attends early education or preschool"'
label var uy11a_school   `"Attends school"'
label var uy11a_schloc   `"Location of school"'
label var uy11a_schdept  `"Department of school"'
label var uy11a_schctry  `"Country of school"'
label var uy11a_edattend `"Level currently attending"'
label var uy11a_edlevel  `"Highest level attended"'
label var uy11a_edlevcom `"Level completed"'
label var uy11a_lit      `"Literacy"'
label var uy11a_worklw   `"Worked last week"'
label var uy11a_wkagr    `"Helped at home, in business, or taking care of animals or crops"'
label var uy11a_wkreturn `"Has work that will return to"'
label var uy11a_wklook   `"Looked for work during last 4 weeks"'
label var uy11a_wkprev   `"Has worked before"'
label var uy11a_wkloc    `"Location of workplace"'
label var uy11a_wkdept   `"Department of workplace"'
label var uy11a_retired  `"Retired or receiving pension"'
label var uy11a_domhome  `"Does domestic chores at home"'
label var uy11a_chborn   `"Number of children born alive"'
label var uy11a_chborunk `"Number of children born alive is unknown"'
label var uy11a_chalive  `"Number of children surviving"'
label var uy11a_chlivunk `"Number of children surviving is unknown"'
label var uy11a_lstbyr   `"Year of last birth"'
label var uy11a_lstbmo   `"Month of last birth"'
label var uy11a_frstbyr  `"Year of first birth"'
label var uy11a_dissee   `"Permanent difficulty seeing"'
label var uy11a_dismob   `"Permanent difficulty walking or going up stairs"'
label var uy11a_disdev   `"Permanent difficulty understanding or learning"'
label var uy11a_edattan  `"Highest education level attained"'
label var uy11a_empstat  `"Employment status"'
label var uy11a_chbornrc `"Number of children born alive"'
label var uy11a_chliverc `"Number of children surviving"'

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

label define uy11a_hhnum_lbl 01 `"1"'
label define uy11a_hhnum_lbl 02 `"2"', add
label define uy11a_hhnum_lbl 03 `"3"', add
label define uy11a_hhnum_lbl 04 `"4"', add
label define uy11a_hhnum_lbl 05 `"5"', add
label define uy11a_hhnum_lbl 06 `"6"', add
label define uy11a_hhnum_lbl 07 `"7"', add
label define uy11a_hhnum_lbl 08 `"8"', add
label define uy11a_hhnum_lbl 09 `"9"', add
label define uy11a_hhnum_lbl 10 `"10"', add
label define uy11a_hhnum_lbl 11 `"11"', add
label define uy11a_hhnum_lbl 12 `"12"', add
label define uy11a_hhnum_lbl 13 `"13"', add
label define uy11a_hhnum_lbl 14 `"14"', add
label define uy11a_hhnum_lbl 15 `"15"', add
label define uy11a_hhnum_lbl 16 `"16"', add
label define uy11a_hhnum_lbl 17 `"17"', add
label define uy11a_hhnum_lbl 18 `"18"', add
label define uy11a_hhnum_lbl 19 `"19"', add
label values uy11a_hhnum uy11a_hhnum_lbl

label define uy11a_hhn_lbl 01 `"1"'
label define uy11a_hhn_lbl 02 `"2"', add
label define uy11a_hhn_lbl 03 `"3"', add
label define uy11a_hhn_lbl 04 `"4"', add
label define uy11a_hhn_lbl 05 `"5"', add
label define uy11a_hhn_lbl 06 `"6"', add
label define uy11a_hhn_lbl 07 `"7"', add
label define uy11a_hhn_lbl 08 `"8"', add
label define uy11a_hhn_lbl 09 `"9"', add
label define uy11a_hhn_lbl 10 `"10"', add
label define uy11a_hhn_lbl 11 `"11"', add
label define uy11a_hhn_lbl 12 `"12"', add
label define uy11a_hhn_lbl 14 `"14"', add
label define uy11a_hhn_lbl 15 `"15"', add
label define uy11a_hhn_lbl 19 `"19"', add
label values uy11a_hhn uy11a_hhn_lbl

label define uy11a_pernd_lbl 01 `"1"'
label define uy11a_pernd_lbl 02 `"2"', add
label define uy11a_pernd_lbl 03 `"3"', add
label define uy11a_pernd_lbl 04 `"4"', add
label define uy11a_pernd_lbl 05 `"5"', add
label define uy11a_pernd_lbl 06 `"6"', add
label define uy11a_pernd_lbl 07 `"7"', add
label define uy11a_pernd_lbl 08 `"8"', add
label define uy11a_pernd_lbl 09 `"9"', add
label define uy11a_pernd_lbl 10 `"10"', add
label define uy11a_pernd_lbl 11 `"11"', add
label define uy11a_pernd_lbl 12 `"12"', add
label define uy11a_pernd_lbl 13 `"13"', add
label define uy11a_pernd_lbl 14 `"14"', add
label define uy11a_pernd_lbl 15 `"15"', add
label define uy11a_pernd_lbl 16 `"16"', add
label define uy11a_pernd_lbl 17 `"17"', add
label define uy11a_pernd_lbl 18 `"18"', add
label define uy11a_pernd_lbl 19 `"19"', add
label define uy11a_pernd_lbl 20 `"20"', add
label define uy11a_pernd_lbl 21 `"21"', add
label define uy11a_pernd_lbl 22 `"22"', add
label define uy11a_pernd_lbl 23 `"23"', add
label define uy11a_pernd_lbl 24 `"24"', add
label define uy11a_pernd_lbl 25 `"25"', add
label define uy11a_pernd_lbl 26 `"26"', add
label define uy11a_pernd_lbl 27 `"27"', add
label define uy11a_pernd_lbl 28 `"28"', add
label define uy11a_pernd_lbl 29 `"29"', add
label define uy11a_pernd_lbl 30 `"30"', add
label values uy11a_pernd uy11a_pernd_lbl

label define uy11a_pern_lbl 01 `"1"'
label define uy11a_pern_lbl 02 `"2"', add
label define uy11a_pern_lbl 03 `"3"', add
label define uy11a_pern_lbl 04 `"4"', add
label define uy11a_pern_lbl 05 `"5"', add
label define uy11a_pern_lbl 06 `"6"', add
label define uy11a_pern_lbl 07 `"7"', add
label define uy11a_pern_lbl 08 `"8"', add
label define uy11a_pern_lbl 09 `"9"', add
label define uy11a_pern_lbl 10 `"10"', add
label define uy11a_pern_lbl 11 `"11"', add
label define uy11a_pern_lbl 12 `"12"', add
label define uy11a_pern_lbl 13 `"13"', add
label define uy11a_pern_lbl 14 `"14"', add
label define uy11a_pern_lbl 15 `"15"', add
label define uy11a_pern_lbl 16 `"16"', add
label define uy11a_pern_lbl 17 `"17"', add
label define uy11a_pern_lbl 18 `"18"', add
label define uy11a_pern_lbl 19 `"19"', add
label define uy11a_pern_lbl 20 `"20"', add
label define uy11a_pern_lbl 21 `"21"', add
label define uy11a_pern_lbl 22 `"22"', add
label define uy11a_pern_lbl 23 `"23"', add
label define uy11a_pern_lbl 24 `"24"', add
label define uy11a_pern_lbl 25 `"25"', add
label define uy11a_pern_lbl 26 `"26"', add
label define uy11a_pern_lbl 27 `"27"', add
label define uy11a_pern_lbl 28 `"28"', add
label define uy11a_pern_lbl 29 `"29"', add
label define uy11a_pern_lbl 30 `"30"', add
label values uy11a_pern uy11a_pern_lbl

label define uy11a_fbig_lbl 0 `"No problem"'
label define uy11a_fbig_lbl 1 `"Yes: households within a large dwelling were split apart into separate dwellings"', add
label define uy11a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values uy11a_fbig uy11a_fbig_lbl

label define uy11a_fbig_nd_lbl 0000 `"Not split"'
label define uy11a_fbig_nd_lbl 0031 `"31"', add
label define uy11a_fbig_nd_lbl 0032 `"32"', add
label define uy11a_fbig_nd_lbl 0033 `"33"', add
label define uy11a_fbig_nd_lbl 0034 `"34"', add
label define uy11a_fbig_nd_lbl 0035 `"35"', add
label define uy11a_fbig_nd_lbl 0036 `"36"', add
label define uy11a_fbig_nd_lbl 0037 `"37"', add
label define uy11a_fbig_nd_lbl 0038 `"38"', add
label define uy11a_fbig_nd_lbl 0039 `"39"', add
label define uy11a_fbig_nd_lbl 0040 `"40"', add
label define uy11a_fbig_nd_lbl 0041 `"41"', add
label define uy11a_fbig_nd_lbl 0042 `"42"', add
label define uy11a_fbig_nd_lbl 0043 `"43"', add
label define uy11a_fbig_nd_lbl 0044 `"44"', add
label define uy11a_fbig_nd_lbl 0045 `"45"', add
label define uy11a_fbig_nd_lbl 0046 `"46"', add
label define uy11a_fbig_nd_lbl 0047 `"47"', add
label define uy11a_fbig_nd_lbl 0048 `"48"', add
label define uy11a_fbig_nd_lbl 0049 `"49"', add
label define uy11a_fbig_nd_lbl 0050 `"50"', add
label define uy11a_fbig_nd_lbl 0051 `"51"', add
label define uy11a_fbig_nd_lbl 0052 `"52"', add
label define uy11a_fbig_nd_lbl 0053 `"53"', add
label define uy11a_fbig_nd_lbl 0054 `"54"', add
label define uy11a_fbig_nd_lbl 0055 `"55"', add
label define uy11a_fbig_nd_lbl 0056 `"56"', add
label define uy11a_fbig_nd_lbl 0057 `"57"', add
label define uy11a_fbig_nd_lbl 0058 `"58"', add
label define uy11a_fbig_nd_lbl 0060 `"60"', add
label define uy11a_fbig_nd_lbl 0061 `"61"', add
label define uy11a_fbig_nd_lbl 0063 `"63"', add
label define uy11a_fbig_nd_lbl 0064 `"64"', add
label define uy11a_fbig_nd_lbl 0065 `"65"', add
label define uy11a_fbig_nd_lbl 0066 `"66"', add
label define uy11a_fbig_nd_lbl 0067 `"67"', add
label define uy11a_fbig_nd_lbl 0069 `"69"', add
label define uy11a_fbig_nd_lbl 0071 `"71"', add
label define uy11a_fbig_nd_lbl 0073 `"73"', add
label define uy11a_fbig_nd_lbl 0075 `"75"', add
label define uy11a_fbig_nd_lbl 0077 `"77"', add
label define uy11a_fbig_nd_lbl 0078 `"78"', add
label define uy11a_fbig_nd_lbl 0079 `"79"', add
label define uy11a_fbig_nd_lbl 0080 `"80"', add
label define uy11a_fbig_nd_lbl 0081 `"81"', add
label define uy11a_fbig_nd_lbl 0084 `"84"', add
label define uy11a_fbig_nd_lbl 0086 `"86"', add
label define uy11a_fbig_nd_lbl 0087 `"87"', add
label define uy11a_fbig_nd_lbl 0088 `"88"', add
label define uy11a_fbig_nd_lbl 0094 `"94"', add
label define uy11a_fbig_nd_lbl 0095 `"95"', add
label define uy11a_fbig_nd_lbl 0097 `"97"', add
label define uy11a_fbig_nd_lbl 0101 `"101"', add
label define uy11a_fbig_nd_lbl 0105 `"105"', add
label define uy11a_fbig_nd_lbl 0109 `"109"', add
label define uy11a_fbig_nd_lbl 0113 `"113"', add
label define uy11a_fbig_nd_lbl 0120 `"120"', add
label define uy11a_fbig_nd_lbl 0122 `"122"', add
label define uy11a_fbig_nd_lbl 0123 `"123"', add
label define uy11a_fbig_nd_lbl 0126 `"126"', add
label define uy11a_fbig_nd_lbl 0129 `"129"', add
label define uy11a_fbig_nd_lbl 0131 `"131"', add
label define uy11a_fbig_nd_lbl 0143 `"143"', add
label define uy11a_fbig_nd_lbl 0151 `"151"', add
label define uy11a_fbig_nd_lbl 0154 `"154"', add
label define uy11a_fbig_nd_lbl 0190 `"190"', add
label define uy11a_fbig_nd_lbl 0207 `"207"', add
label define uy11a_fbig_nd_lbl 0247 `"247"', add
label define uy11a_fbig_nd_lbl 0261 `"261"', add
label define uy11a_fbig_nd_lbl 0282 `"282"', add
label define uy11a_fbig_nd_lbl 0313 `"313"', add
label define uy11a_fbig_nd_lbl 0390 `"390"', add
label define uy11a_fbig_nd_lbl 0393 `"393"', add
label define uy11a_fbig_nd_lbl 0434 `"434"', add
label define uy11a_fbig_nd_lbl 0485 `"485"', add
label define uy11a_fbig_nd_lbl 1099 `"1099"', add
label define uy11a_fbig_nd_lbl 1118 `"1118"', add
label define uy11a_fbig_nd_lbl 3381 `"3381"', add
label values uy11a_fbig_nd uy11a_fbig_nd_lbl

label define uy11a_fbig_nh_lbl 0000 `"Not split"'
label define uy11a_fbig_nh_lbl 0031 `"31"', add
label define uy11a_fbig_nh_lbl 0032 `"32"', add
label define uy11a_fbig_nh_lbl 0033 `"33"', add
label define uy11a_fbig_nh_lbl 0034 `"34"', add
label define uy11a_fbig_nh_lbl 0035 `"35"', add
label define uy11a_fbig_nh_lbl 0036 `"36"', add
label define uy11a_fbig_nh_lbl 0037 `"37"', add
label define uy11a_fbig_nh_lbl 0038 `"38"', add
label define uy11a_fbig_nh_lbl 0039 `"39"', add
label define uy11a_fbig_nh_lbl 0040 `"40"', add
label define uy11a_fbig_nh_lbl 0041 `"41"', add
label define uy11a_fbig_nh_lbl 0042 `"42"', add
label define uy11a_fbig_nh_lbl 0043 `"43"', add
label define uy11a_fbig_nh_lbl 0044 `"44"', add
label define uy11a_fbig_nh_lbl 0045 `"45"', add
label define uy11a_fbig_nh_lbl 0046 `"46"', add
label define uy11a_fbig_nh_lbl 0047 `"47"', add
label define uy11a_fbig_nh_lbl 0048 `"48"', add
label define uy11a_fbig_nh_lbl 0049 `"49"', add
label define uy11a_fbig_nh_lbl 0050 `"50"', add
label define uy11a_fbig_nh_lbl 0051 `"51"', add
label define uy11a_fbig_nh_lbl 0052 `"52"', add
label define uy11a_fbig_nh_lbl 0053 `"53"', add
label define uy11a_fbig_nh_lbl 0054 `"54"', add
label define uy11a_fbig_nh_lbl 0055 `"55"', add
label define uy11a_fbig_nh_lbl 0056 `"56"', add
label define uy11a_fbig_nh_lbl 0057 `"57"', add
label define uy11a_fbig_nh_lbl 0060 `"60"', add
label define uy11a_fbig_nh_lbl 0061 `"61"', add
label define uy11a_fbig_nh_lbl 0063 `"63"', add
label define uy11a_fbig_nh_lbl 0064 `"64"', add
label define uy11a_fbig_nh_lbl 0065 `"65"', add
label define uy11a_fbig_nh_lbl 0066 `"66"', add
label define uy11a_fbig_nh_lbl 0067 `"67"', add
label define uy11a_fbig_nh_lbl 0069 `"69"', add
label define uy11a_fbig_nh_lbl 0071 `"71"', add
label define uy11a_fbig_nh_lbl 0073 `"73"', add
label define uy11a_fbig_nh_lbl 0075 `"75"', add
label define uy11a_fbig_nh_lbl 0078 `"78"', add
label define uy11a_fbig_nh_lbl 0079 `"79"', add
label define uy11a_fbig_nh_lbl 0080 `"80"', add
label define uy11a_fbig_nh_lbl 0081 `"81"', add
label define uy11a_fbig_nh_lbl 0084 `"84"', add
label define uy11a_fbig_nh_lbl 0086 `"86"', add
label define uy11a_fbig_nh_lbl 0087 `"87"', add
label define uy11a_fbig_nh_lbl 0088 `"88"', add
label define uy11a_fbig_nh_lbl 0094 `"94"', add
label define uy11a_fbig_nh_lbl 0095 `"95"', add
label define uy11a_fbig_nh_lbl 0097 `"97"', add
label define uy11a_fbig_nh_lbl 0101 `"101"', add
label define uy11a_fbig_nh_lbl 0105 `"105"', add
label define uy11a_fbig_nh_lbl 0109 `"109"', add
label define uy11a_fbig_nh_lbl 0113 `"113"', add
label define uy11a_fbig_nh_lbl 0120 `"120"', add
label define uy11a_fbig_nh_lbl 0122 `"122"', add
label define uy11a_fbig_nh_lbl 0123 `"123"', add
label define uy11a_fbig_nh_lbl 0126 `"126"', add
label define uy11a_fbig_nh_lbl 0129 `"129"', add
label define uy11a_fbig_nh_lbl 0131 `"131"', add
label define uy11a_fbig_nh_lbl 0143 `"143"', add
label define uy11a_fbig_nh_lbl 0151 `"151"', add
label define uy11a_fbig_nh_lbl 0154 `"154"', add
label define uy11a_fbig_nh_lbl 0190 `"190"', add
label define uy11a_fbig_nh_lbl 0207 `"207"', add
label define uy11a_fbig_nh_lbl 0247 `"247"', add
label define uy11a_fbig_nh_lbl 0261 `"261"', add
label define uy11a_fbig_nh_lbl 0282 `"282"', add
label define uy11a_fbig_nh_lbl 0313 `"313"', add
label define uy11a_fbig_nh_lbl 0390 `"390"', add
label define uy11a_fbig_nh_lbl 0393 `"393"', add
label define uy11a_fbig_nh_lbl 0434 `"434"', add
label define uy11a_fbig_nh_lbl 0485 `"485"', add
label define uy11a_fbig_nh_lbl 1099 `"1099"', add
label define uy11a_fbig_nh_lbl 1118 `"1118"', add
label define uy11a_fbig_nh_lbl 3381 `"3381"', add
label values uy11a_fbig_nh uy11a_fbig_nh_lbl

label define uy11a_dept_lbl 01 `"Montevideo"'
label define uy11a_dept_lbl 02 `"Artigas"', add
label define uy11a_dept_lbl 03 `"Canelones"', add
label define uy11a_dept_lbl 04 `"Cerro Largo"', add
label define uy11a_dept_lbl 05 `"Colonia"', add
label define uy11a_dept_lbl 06 `"Durazno"', add
label define uy11a_dept_lbl 07 `"Flores"', add
label define uy11a_dept_lbl 08 `"Florida"', add
label define uy11a_dept_lbl 09 `"Lavalleja"', add
label define uy11a_dept_lbl 10 `"Maldonado"', add
label define uy11a_dept_lbl 11 `"Paysandú"', add
label define uy11a_dept_lbl 12 `"Río Negro"', add
label define uy11a_dept_lbl 13 `"Rivera"', add
label define uy11a_dept_lbl 14 `"Rocha"', add
label define uy11a_dept_lbl 15 `"Salto"', add
label define uy11a_dept_lbl 16 `"San Jose"', add
label define uy11a_dept_lbl 17 `"Soriano"', add
label define uy11a_dept_lbl 18 `"Tacuarembó"', add
label define uy11a_dept_lbl 19 `"Treinta Y Tres"', add
label values uy11a_dept uy11a_dept_lbl

label define uy11a_hhnmbr_lbl 01 `"1"'
label define uy11a_hhnmbr_lbl 02 `"2"', add
label define uy11a_hhnmbr_lbl 03 `"3"', add
label define uy11a_hhnmbr_lbl 04 `"4"', add
label define uy11a_hhnmbr_lbl 05 `"5"', add
label define uy11a_hhnmbr_lbl 06 `"6"', add
label define uy11a_hhnmbr_lbl 07 `"7"', add
label define uy11a_hhnmbr_lbl 08 `"8"', add
label define uy11a_hhnmbr_lbl 09 `"9"', add
label define uy11a_hhnmbr_lbl 10 `"10"', add
label define uy11a_hhnmbr_lbl 11 `"11"', add
label define uy11a_hhnmbr_lbl 12 `"12"', add
label define uy11a_hhnmbr_lbl 13 `"13"', add
label define uy11a_hhnmbr_lbl 14 `"14"', add
label define uy11a_hhnmbr_lbl 15 `"15"', add
label define uy11a_hhnmbr_lbl 16 `"16"', add
label define uy11a_hhnmbr_lbl 17 `"17"', add
label define uy11a_hhnmbr_lbl 18 `"18"', add
label define uy11a_hhnmbr_lbl 19 `"19"', add
label define uy11a_hhnmbr_lbl 20 `"20"', add
label define uy11a_hhnmbr_lbl 21 `"21"', add
label define uy11a_hhnmbr_lbl 22 `"22"', add
label define uy11a_hhnmbr_lbl 23 `"23"', add
label define uy11a_hhnmbr_lbl 24 `"24"', add
label define uy11a_hhnmbr_lbl 27 `"27"', add
label define uy11a_hhnmbr_lbl 28 `"28"', add
label define uy11a_hhnmbr_lbl 29 `"29"', add
label define uy11a_hhnmbr_lbl 30 `"30"', add
label define uy11a_hhnmbr_lbl 31 `"31"', add
label define uy11a_hhnmbr_lbl 32 `"32"', add
label define uy11a_hhnmbr_lbl 34 `"34"', add
label define uy11a_hhnmbr_lbl 44 `"44"', add
label values uy11a_hhnmbr uy11a_hhnmbr_lbl

label define uy11a_dwtype_lbl 01 `"House"'
label define uy11a_dwtype_lbl 02 `"Multi-level apartment building with elevator"', add
label define uy11a_dwtype_lbl 03 `"Multi-level apartment building without elevator"', add
label define uy11a_dwtype_lbl 04 `"One-level apartment building"', add
label define uy11a_dwtype_lbl 05 `"Apartment or room in a building or collective dwelling"', add
label define uy11a_dwtype_lbl 06 `"Premise not intended for habitation"', add
label define uy11a_dwtype_lbl 07 `"Other private dwelling"', add
label define uy11a_dwtype_lbl 09 `"Hotel, pension, or other guesthouse"', add
label define uy11a_dwtype_lbl 10 `"Hospital or sanatorium with boarding"', add
label define uy11a_dwtype_lbl 11 `"Residence for the elderly"', add
label define uy11a_dwtype_lbl 12 `"Student residence"', add
label define uy11a_dwtype_lbl 13 `"Workers' residence"', add
label define uy11a_dwtype_lbl 14 `"Religious institution"', add
label define uy11a_dwtype_lbl 15 `"Detention center"', add
label define uy11a_dwtype_lbl 16 `"Foster home or similar"', add
label define uy11a_dwtype_lbl 17 `"Military or police barracks"', add
label define uy11a_dwtype_lbl 18 `"Other collective dwelling"', add
label define uy11a_dwtype_lbl 19 `"Shelters"', add
label define uy11a_dwtype_lbl 20 `"Unknown"', add
label values uy11a_dwtype uy11a_dwtype_lbl

label define uy11a_occup_lbl 1 `"Occupied with present residents"'
label define uy11a_occup_lbl 2 `"Occupied with absent residents"', add
label values uy11a_occup uy11a_occup_lbl

label define uy11a_noncoll_lbl 0 `"NIU (not in universe)"'
label define uy11a_noncoll_lbl 1 `"Yes"', add
label define uy11a_noncoll_lbl 2 `"No"', add
label values uy11a_noncoll uy11a_noncoll_lbl

label define uy11a_walls_lbl 0 `"NIU (not in universe)"'
label define uy11a_walls_lbl 1 `"Masonry: bricks, slabs, stones, or blocks with finishing"', add
label define uy11a_walls_lbl 2 `"Masonry: bricks, slabs, stones, or blocks without finishing"', add
label define uy11a_walls_lbl 3 `"Lightweight materials (wood or sheets/plates) with finishing"', add
label define uy11a_walls_lbl 4 `"Lightweight materials (wood or sheets/plates) without finishing"', add
label define uy11a_walls_lbl 5 `"Clay (sod, adobe, or fajina)"', add
label define uy11a_walls_lbl 6 `"Waste materials"', add
label define uy11a_walls_lbl 7 `"Other"', add
label define uy11a_walls_lbl 9 `"Unknown"', add
label values uy11a_walls uy11a_walls_lbl

label define uy11a_roof_lbl 0 `"NIU (not in universe)"'
label define uy11a_roof_lbl 1 `"Concrete slabs or blocks with or without tiles"', add
label define uy11a_roof_lbl 2 `"Lightweight with ceiling"', add
label define uy11a_roof_lbl 3 `"Lightweight without ceiling"', add
label define uy11a_roof_lbl 4 `"Quincha"', add
label define uy11a_roof_lbl 5 `"Waste materials"', add
label define uy11a_roof_lbl 6 `"Other"', add
label define uy11a_roof_lbl 9 `"Unknown"', add
label values uy11a_roof uy11a_roof_lbl

label define uy11a_floors_lbl 0 `"NIU (not in universe)"'
label define uy11a_floors_lbl 1 `"Ceramic, tile, stone, wood, carpet, linoleum, or similar"', add
label define uy11a_floors_lbl 2 `"Sand and portland cement"', add
label define uy11a_floors_lbl 3 `"Only subfloor without floor"', add
label define uy11a_floors_lbl 4 `"Ground without floor or subfloor"', add
label define uy11a_floors_lbl 5 `"Other"', add
label define uy11a_floors_lbl 9 `"Unknown"', add
label values uy11a_floors uy11a_floors_lbl

label define uy11a_watsrc_lbl 0 `"NIU (not in universe)"'
label define uy11a_watsrc_lbl 1 `"OSE or general network"', add
label define uy11a_watsrc_lbl 2 `"Deep protected well"', add
label define uy11a_watsrc_lbl 3 `"Deep unprotected well"', add
label define uy11a_watsrc_lbl 4 `"Cistern"', add
label define uy11a_watsrc_lbl 5 `"Pipes"', add
label define uy11a_watsrc_lbl 6 `"Stream or river"', add
label define uy11a_watsrc_lbl 7 `"Other"', add
label define uy11a_watsrc_lbl 9 `"Unknown"', add
label values uy11a_watsrc uy11a_watsrc_lbl

label define uy11a_watsup_lbl 0 `"NIU (not in universe)"'
label define uy11a_watsup_lbl 1 `"Piped within the dwelling"', add
label define uy11a_watsup_lbl 2 `"Piped outside the dwelling, less than 100 meters away"', add
label define uy11a_watsup_lbl 3 `"Piped outside the dwelling, 100 meters or more away"', add
label define uy11a_watsup_lbl 4 `"Other means"', add
label define uy11a_watsup_lbl 9 `"Unknown"', add
label values uy11a_watsup uy11a_watsup_lbl

label define uy11a_electrc_lbl 0 `"NIU (not in universe)"'
label define uy11a_electrc_lbl 1 `"UTE or general network"', add
label define uy11a_electrc_lbl 2 `"Battery powered wind charger"', add
label define uy11a_electrc_lbl 3 `"Battery powered solar charger"', add
label define uy11a_electrc_lbl 4 `"Personal power generator"', add
label define uy11a_electrc_lbl 5 `"Other electric"', add
label define uy11a_electrc_lbl 6 `"No electricity"', add
label define uy11a_electrc_lbl 9 `"Unknown"', add
label values uy11a_electrc uy11a_electrc_lbl

label define uy11a_multhh_lbl 0 `"NIU (not in universe)"'
label define uy11a_multhh_lbl 1 `"Single household"', add
label define uy11a_multhh_lbl 2 `"More than one household"', add
label values uy11a_multhh uy11a_multhh_lbl

label define uy11a_nhhshare_lbl 00 `"NIU (not in universe)"'
label define uy11a_nhhshare_lbl 01 `"1"', add
label define uy11a_nhhshare_lbl 02 `"2"', add
label define uy11a_nhhshare_lbl 03 `"3"', add
label define uy11a_nhhshare_lbl 04 `"4"', add
label define uy11a_nhhshare_lbl 05 `"5"', add
label define uy11a_nhhshare_lbl 06 `"6"', add
label define uy11a_nhhshare_lbl 07 `"7"', add
label define uy11a_nhhshare_lbl 08 `"8"', add
label define uy11a_nhhshare_lbl 09 `"9"', add
label define uy11a_nhhshare_lbl 10 `"10+"', add
label values uy11a_nhhshare uy11a_nhhshare_lbl

label define uy11a_dwcat_lbl 00 `"NIU (not in universe)"'
label define uy11a_dwcat_lbl 01 `"Heavy materials in walls, resistant roof and floors"', add
label define uy11a_dwcat_lbl 02 `"Heavy materials in walls, lightweight roof, and resistant floors"', add
label define uy11a_dwcat_lbl 03 `"Heavy materials in walls, not resistant roof or floors"', add
label define uy11a_dwcat_lbl 04 `"Heavy materials in walls, lightweight roof, and not resistant floors"', add
label define uy11a_dwcat_lbl 05 `"Lightweight materials in walls, resistant roof and floors"', add
label define uy11a_dwcat_lbl 06 `"Lightweight materials in walls, not resistant roof or floors"', add
label define uy11a_dwcat_lbl 07 `"Clay or adobe walls, lightweight roof, and resistant floors"', add
label define uy11a_dwcat_lbl 08 `"Clay or adobe walls, lightweight roof, and not resistant floors"', add
label define uy11a_dwcat_lbl 09 `"Waste materials in walls or roof"', add
label define uy11a_dwcat_lbl 10 `"Other combinations of materials"', add
label values uy11a_dwcat uy11a_dwcat_lbl

label define uy11a_resident_lbl 0 `"No"'
label define uy11a_resident_lbl 1 `"Yes"', add
label values uy11a_resident uy11a_resident_lbl

label define uy11a_owner_lbl 0 `"NIU (not in universe)"'
label define uy11a_owner_lbl 1 `"Owner occupied"', add
label define uy11a_owner_lbl 2 `"Part of a housing cooperative"', add
label define uy11a_owner_lbl 3 `"Rented"', add
label define uy11a_owner_lbl 4 `"Used or occupied (rent free)"', add
label define uy11a_owner_lbl 9 `"Unknown"', add
label values uy11a_owner uy11a_owner_lbl

label define uy11a_otype_lbl 0 `"NIU (not in universe)"'
label define uy11a_otype_lbl 1 `"Owns dwelling and terrain, still paying"', add
label define uy11a_otype_lbl 2 `"Owns dwelling and terrain, paid off"', add
label define uy11a_otype_lbl 3 `"Owns only the dwelling, still paying"', add
label define uy11a_otype_lbl 4 `"Owns only the dwelling, paid off"', add
label define uy11a_otype_lbl 9 `"Unknown"', add
label values uy11a_otype uy11a_otype_lbl

label define uy11a_usetype_lbl 0 `"NIU (not in universe)"'
label define uy11a_usetype_lbl 1 `"Because of dependent (work) relation"', add
label define uy11a_usetype_lbl 2 `"Free, granted by the BPS"', add
label define uy11a_usetype_lbl 3 `"Free, borrowed or lent"', add
label define uy11a_usetype_lbl 4 `"Without permission from the homeowner"', add
label define uy11a_usetype_lbl 9 `"Unknown"', add
label values uy11a_usetype uy11a_usetype_lbl

label define uy11a_rooms_lbl 00 `"NIU (not in universe)"'
label define uy11a_rooms_lbl 01 `"1"', add
label define uy11a_rooms_lbl 02 `"2"', add
label define uy11a_rooms_lbl 03 `"3"', add
label define uy11a_rooms_lbl 04 `"4"', add
label define uy11a_rooms_lbl 05 `"5"', add
label define uy11a_rooms_lbl 06 `"6"', add
label define uy11a_rooms_lbl 07 `"7"', add
label define uy11a_rooms_lbl 08 `"8"', add
label define uy11a_rooms_lbl 09 `"9"', add
label define uy11a_rooms_lbl 10 `"10"', add
label define uy11a_rooms_lbl 11 `"11"', add
label define uy11a_rooms_lbl 12 `"12+"', add
label define uy11a_rooms_lbl 99 `"Unknown"', add
label values uy11a_rooms uy11a_rooms_lbl

label define uy11a_bedrooms_lbl 00 `"NIU (not in universe)"'
label define uy11a_bedrooms_lbl 01 `"1"', add
label define uy11a_bedrooms_lbl 02 `"2"', add
label define uy11a_bedrooms_lbl 03 `"3"', add
label define uy11a_bedrooms_lbl 04 `"4"', add
label define uy11a_bedrooms_lbl 05 `"5"', add
label define uy11a_bedrooms_lbl 06 `"6"', add
label define uy11a_bedrooms_lbl 07 `"7+"', add
label define uy11a_bedrooms_lbl 99 `"Unknown"', add
label values uy11a_bedrooms uy11a_bedrooms_lbl

label define uy11a_bathdw_lbl 0 `"NIU (not in universe)"'
label define uy11a_bathdw_lbl 1 `"Yes, with cistern"', add
label define uy11a_bathdw_lbl 2 `"Yes, without cistern"', add
label define uy11a_bathdw_lbl 3 `"No"', add
label define uy11a_bathdw_lbl 9 `"Unknown"', add
label values uy11a_bathdw uy11a_bathdw_lbl

label define uy11a_sharbath_lbl 0 `"NIU (not in universe)"'
label define uy11a_sharbath_lbl 1 `"Exclusive use"', add
label define uy11a_sharbath_lbl 2 `"Shared with other households"', add
label define uy11a_sharbath_lbl 9 `"Unknown"', add
label values uy11a_sharbath uy11a_sharbath_lbl

label define uy11a_sewer_lbl 0 `"NIU (not in universe)"'
label define uy11a_sewer_lbl 1 `"General network"', add
label define uy11a_sewer_lbl 2 `"Septic tank, cesspit"', add
label define uy11a_sewer_lbl 3 `"Piped towards gutter or stream"', add
label define uy11a_sewer_lbl 4 `"Other (surface, hole in ground)"', add
label define uy11a_sewer_lbl 9 `"Unknown"', add
label values uy11a_sewer uy11a_sewer_lbl

label define uy11a_kitchen_lbl 0 `"NIU (not in universe)"'
label define uy11a_kitchen_lbl 1 `"Yes, private"', add
label define uy11a_kitchen_lbl 2 `"Yes, shared with other households"', add
label define uy11a_kitchen_lbl 3 `"No"', add
label define uy11a_kitchen_lbl 9 `"Unknown"', add
label values uy11a_kitchen uy11a_kitchen_lbl

label define uy11a_fuelck_lbl 0 `"NIU (not in universe)"'
label define uy11a_fuelck_lbl 1 `"Electricity"', add
label define uy11a_fuelck_lbl 2 `"Piped gas"', add
label define uy11a_fuelck_lbl 3 `"Super-gas"', add
label define uy11a_fuelck_lbl 4 `"Kerosene"', add
label define uy11a_fuelck_lbl 5 `"Firewood or charcoal"', add
label define uy11a_fuelck_lbl 6 `"Other"', add
label define uy11a_fuelck_lbl 7 `"None, does not cook"', add
label define uy11a_fuelck_lbl 9 `"Unknown"', add
label values uy11a_fuelck uy11a_fuelck_lbl

label define uy11a_fuelht_lbl 00 `"NIU (not in universe)"'
label define uy11a_fuelht_lbl 01 `"Electricity"', add
label define uy11a_fuelht_lbl 02 `"Firewood"', add
label define uy11a_fuelht_lbl 03 `"Piped gas"', add
label define uy11a_fuelht_lbl 04 `"Super-gas"', add
label define uy11a_fuelht_lbl 05 `"Kerosene"', add
label define uy11a_fuelht_lbl 06 `"Gas oil"', add
label define uy11a_fuelht_lbl 07 `"Fuel oil"', add
label define uy11a_fuelht_lbl 08 `"Other"', add
label define uy11a_fuelht_lbl 09 `"None"', add
label define uy11a_fuelht_lbl 99 `"Unknown"', add
label values uy11a_fuelht uy11a_fuelht_lbl

label define uy11a_boilerht_lbl 0 `"NIU (not in universe)"'
label define uy11a_boilerht_lbl 1 `"Yes"', add
label define uy11a_boilerht_lbl 2 `"No"', add
label define uy11a_boilerht_lbl 9 `"Unknown"', add
label values uy11a_boilerht uy11a_boilerht_lbl

label define uy11a_wathtr_lbl 0 `"NIU (not in universe)"'
label define uy11a_wathtr_lbl 1 `"Yes"', add
label define uy11a_wathtr_lbl 2 `"No"', add
label define uy11a_wathtr_lbl 9 `"Unknown"', add
label values uy11a_wathtr uy11a_wathtr_lbl

label define uy11a_refridg_lbl 0 `"NIU (not in universe)"'
label define uy11a_refridg_lbl 1 `"Yes"', add
label define uy11a_refridg_lbl 2 `"No"', add
label define uy11a_refridg_lbl 9 `"Unknown"', add
label values uy11a_refridg uy11a_refridg_lbl

label define uy11a_dryer_lbl 0 `"NIU (not in universe)"'
label define uy11a_dryer_lbl 1 `"Yes"', add
label define uy11a_dryer_lbl 2 `"No"', add
label define uy11a_dryer_lbl 9 `"Unknown"', add
label values uy11a_dryer uy11a_dryer_lbl

label define uy11a_radio_lbl 0 `"NIU (not in universe)"'
label define uy11a_radio_lbl 1 `"Yes"', add
label define uy11a_radio_lbl 2 `"No"', add
label define uy11a_radio_lbl 9 `"Unknown"', add
label values uy11a_radio uy11a_radio_lbl

label define uy11a_colortv_lbl 0 `"0"'
label define uy11a_colortv_lbl 1 `"1"', add
label define uy11a_colortv_lbl 2 `"2"', add
label define uy11a_colortv_lbl 3 `"3"', add
label define uy11a_colortv_lbl 4 `"4"', add
label define uy11a_colortv_lbl 5 `"5"', add
label define uy11a_colortv_lbl 6 `"6+"', add
label define uy11a_colortv_lbl 9 `"NIU (not in universe)"', add
label values uy11a_colortv uy11a_colortv_lbl

label define uy11a_phone_lbl 0 `"NIU (not in universe)"'
label define uy11a_phone_lbl 1 `"Yes"', add
label define uy11a_phone_lbl 2 `"No"', add
label define uy11a_phone_lbl 9 `"Unknown"', add
label values uy11a_phone uy11a_phone_lbl

label define uy11a_cellph_lbl 0 `"NIU (not in universe)"'
label define uy11a_cellph_lbl 1 `"Yes"', add
label define uy11a_cellph_lbl 2 `"No"', add
label define uy11a_cellph_lbl 9 `"Unknown"', add
label values uy11a_cellph uy11a_cellph_lbl

label define uy11a_xoceibal_lbl 0 `"0"'
label define uy11a_xoceibal_lbl 1 `"1"', add
label define uy11a_xoceibal_lbl 2 `"2"', add
label define uy11a_xoceibal_lbl 3 `"3"', add
label define uy11a_xoceibal_lbl 4 `"4"', add
label define uy11a_xoceibal_lbl 5 `"5"', add
label define uy11a_xoceibal_lbl 6 `"6+"', add
label define uy11a_xoceibal_lbl 9 `"NIU (not in universe)"', add
label values uy11a_xoceibal uy11a_xoceibal_lbl

label define uy11a_pc_lbl 0 `"0"'
label define uy11a_pc_lbl 1 `"1"', add
label define uy11a_pc_lbl 2 `"2"', add
label define uy11a_pc_lbl 3 `"3"', add
label define uy11a_pc_lbl 4 `"4"', add
label define uy11a_pc_lbl 5 `"5"', add
label define uy11a_pc_lbl 6 `"6+"', add
label define uy11a_pc_lbl 9 `"NIU (not in universe)"', add
label values uy11a_pc uy11a_pc_lbl

label define uy11a_internet_lbl 0 `"NIU (not in universe)"'
label define uy11a_internet_lbl 1 `"Yes"', add
label define uy11a_internet_lbl 2 `"No"', add
label define uy11a_internet_lbl 9 `"Unknown"', add
label values uy11a_internet uy11a_internet_lbl

label define uy11a_motorc_lbl 0 `"0"'
label define uy11a_motorc_lbl 1 `"1"', add
label define uy11a_motorc_lbl 2 `"2"', add
label define uy11a_motorc_lbl 3 `"3"', add
label define uy11a_motorc_lbl 4 `"4"', add
label define uy11a_motorc_lbl 5 `"5"', add
label define uy11a_motorc_lbl 6 `"6+"', add
label define uy11a_motorc_lbl 8 `"Unknown"', add
label define uy11a_motorc_lbl 9 `"NIU (not in universe)"', add
label values uy11a_motorc uy11a_motorc_lbl

label define uy11a_autos_lbl 0 `"0"'
label define uy11a_autos_lbl 1 `"1"', add
label define uy11a_autos_lbl 2 `"2"', add
label define uy11a_autos_lbl 3 `"3"', add
label define uy11a_autos_lbl 4 `"4"', add
label define uy11a_autos_lbl 5 `"5"', add
label define uy11a_autos_lbl 6 `"6+"', add
label define uy11a_autos_lbl 8 `"Unknown"', add
label define uy11a_autos_lbl 9 `"NIU (not in universe)"', add
label values uy11a_autos uy11a_autos_lbl

label define uy11a_hhtotal_lbl 01 `"1"'
label define uy11a_hhtotal_lbl 02 `"2"', add
label define uy11a_hhtotal_lbl 03 `"3"', add
label define uy11a_hhtotal_lbl 04 `"4"', add
label define uy11a_hhtotal_lbl 05 `"5"', add
label define uy11a_hhtotal_lbl 06 `"6"', add
label define uy11a_hhtotal_lbl 07 `"7"', add
label define uy11a_hhtotal_lbl 08 `"8"', add
label define uy11a_hhtotal_lbl 09 `"9"', add
label define uy11a_hhtotal_lbl 10 `"10"', add
label define uy11a_hhtotal_lbl 11 `"11"', add
label define uy11a_hhtotal_lbl 12 `"12"', add
label define uy11a_hhtotal_lbl 13 `"13"', add
label define uy11a_hhtotal_lbl 14 `"14"', add
label define uy11a_hhtotal_lbl 15 `"15+"', add
label values uy11a_hhtotal uy11a_hhtotal_lbl

label define uy11a_hhmale_lbl 00 `"0"'
label define uy11a_hhmale_lbl 01 `"1"', add
label define uy11a_hhmale_lbl 02 `"2"', add
label define uy11a_hhmale_lbl 03 `"3"', add
label define uy11a_hhmale_lbl 04 `"4"', add
label define uy11a_hhmale_lbl 05 `"5"', add
label define uy11a_hhmale_lbl 06 `"6"', add
label define uy11a_hhmale_lbl 07 `"7"', add
label define uy11a_hhmale_lbl 08 `"8"', add
label define uy11a_hhmale_lbl 09 `"9"', add
label define uy11a_hhmale_lbl 10 `"10+"', add
label values uy11a_hhmale uy11a_hhmale_lbl

label define uy11a_hhfem_lbl 00 `"0"'
label define uy11a_hhfem_lbl 01 `"1"', add
label define uy11a_hhfem_lbl 02 `"2"', add
label define uy11a_hhfem_lbl 03 `"3"', add
label define uy11a_hhfem_lbl 04 `"4"', add
label define uy11a_hhfem_lbl 05 `"5"', add
label define uy11a_hhfem_lbl 06 `"6"', add
label define uy11a_hhfem_lbl 07 `"7"', add
label define uy11a_hhfem_lbl 08 `"8"', add
label define uy11a_hhfem_lbl 09 `"9"', add
label define uy11a_hhfem_lbl 10 `"10+"', add
label values uy11a_hhfem uy11a_hhfem_lbl

label define uy11a_pernum_lbl 00 `"Household record"'
label define uy11a_pernum_lbl 01 `"1"', add
label define uy11a_pernum_lbl 02 `"2"', add
label define uy11a_pernum_lbl 03 `"3"', add
label define uy11a_pernum_lbl 04 `"4"', add
label define uy11a_pernum_lbl 05 `"5"', add
label define uy11a_pernum_lbl 06 `"6"', add
label define uy11a_pernum_lbl 07 `"7"', add
label define uy11a_pernum_lbl 08 `"8"', add
label define uy11a_pernum_lbl 09 `"9"', add
label define uy11a_pernum_lbl 10 `"10"', add
label define uy11a_pernum_lbl 11 `"11"', add
label define uy11a_pernum_lbl 12 `"12"', add
label define uy11a_pernum_lbl 13 `"13"', add
label define uy11a_pernum_lbl 14 `"14"', add
label define uy11a_pernum_lbl 15 `"15"', add
label define uy11a_pernum_lbl 16 `"16"', add
label define uy11a_pernum_lbl 17 `"17"', add
label define uy11a_pernum_lbl 18 `"18"', add
label define uy11a_pernum_lbl 19 `"19"', add
label define uy11a_pernum_lbl 20 `"20"', add
label define uy11a_pernum_lbl 21 `"21"', add
label define uy11a_pernum_lbl 22 `"22"', add
label define uy11a_pernum_lbl 23 `"23"', add
label define uy11a_pernum_lbl 24 `"24"', add
label define uy11a_pernum_lbl 25 `"25"', add
label define uy11a_pernum_lbl 26 `"26"', add
label define uy11a_pernum_lbl 27 `"27"', add
label define uy11a_pernum_lbl 28 `"28"', add
label define uy11a_pernum_lbl 29 `"29"', add
label define uy11a_pernum_lbl 30 `"30"', add
label values uy11a_pernum uy11a_pernum_lbl

label define uy11a_perabs_lbl 0 `"No"'
label define uy11a_perabs_lbl 1 `"Yes"', add
label values uy11a_perabs uy11a_perabs_lbl

label define uy11a_sex_lbl 1 `"Male"'
label define uy11a_sex_lbl 2 `"Female"', add
label values uy11a_sex uy11a_sex_lbl

label define uy11a_age_lbl 000 `"0"'
label define uy11a_age_lbl 001 `"1"', add
label define uy11a_age_lbl 002 `"2"', add
label define uy11a_age_lbl 003 `"3"', add
label define uy11a_age_lbl 004 `"4"', add
label define uy11a_age_lbl 005 `"5"', add
label define uy11a_age_lbl 006 `"6"', add
label define uy11a_age_lbl 007 `"7"', add
label define uy11a_age_lbl 008 `"8"', add
label define uy11a_age_lbl 009 `"9"', add
label define uy11a_age_lbl 010 `"10"', add
label define uy11a_age_lbl 011 `"11"', add
label define uy11a_age_lbl 012 `"12"', add
label define uy11a_age_lbl 013 `"13"', add
label define uy11a_age_lbl 014 `"14"', add
label define uy11a_age_lbl 015 `"15"', add
label define uy11a_age_lbl 016 `"16"', add
label define uy11a_age_lbl 017 `"17"', add
label define uy11a_age_lbl 018 `"18"', add
label define uy11a_age_lbl 019 `"19"', add
label define uy11a_age_lbl 020 `"20"', add
label define uy11a_age_lbl 021 `"21"', add
label define uy11a_age_lbl 022 `"22"', add
label define uy11a_age_lbl 023 `"23"', add
label define uy11a_age_lbl 024 `"24"', add
label define uy11a_age_lbl 025 `"25"', add
label define uy11a_age_lbl 026 `"26"', add
label define uy11a_age_lbl 027 `"27"', add
label define uy11a_age_lbl 028 `"28"', add
label define uy11a_age_lbl 029 `"29"', add
label define uy11a_age_lbl 030 `"30"', add
label define uy11a_age_lbl 031 `"31"', add
label define uy11a_age_lbl 032 `"32"', add
label define uy11a_age_lbl 033 `"33"', add
label define uy11a_age_lbl 034 `"34"', add
label define uy11a_age_lbl 035 `"35"', add
label define uy11a_age_lbl 036 `"36"', add
label define uy11a_age_lbl 037 `"37"', add
label define uy11a_age_lbl 038 `"38"', add
label define uy11a_age_lbl 039 `"39"', add
label define uy11a_age_lbl 040 `"40"', add
label define uy11a_age_lbl 041 `"41"', add
label define uy11a_age_lbl 042 `"42"', add
label define uy11a_age_lbl 043 `"43"', add
label define uy11a_age_lbl 044 `"44"', add
label define uy11a_age_lbl 045 `"45"', add
label define uy11a_age_lbl 046 `"46"', add
label define uy11a_age_lbl 047 `"47"', add
label define uy11a_age_lbl 048 `"48"', add
label define uy11a_age_lbl 049 `"49"', add
label define uy11a_age_lbl 050 `"50"', add
label define uy11a_age_lbl 051 `"51"', add
label define uy11a_age_lbl 052 `"52"', add
label define uy11a_age_lbl 053 `"53"', add
label define uy11a_age_lbl 054 `"54"', add
label define uy11a_age_lbl 055 `"55"', add
label define uy11a_age_lbl 056 `"56"', add
label define uy11a_age_lbl 057 `"57"', add
label define uy11a_age_lbl 058 `"58"', add
label define uy11a_age_lbl 059 `"59"', add
label define uy11a_age_lbl 060 `"60"', add
label define uy11a_age_lbl 061 `"61"', add
label define uy11a_age_lbl 062 `"62"', add
label define uy11a_age_lbl 063 `"63"', add
label define uy11a_age_lbl 064 `"64"', add
label define uy11a_age_lbl 065 `"65"', add
label define uy11a_age_lbl 066 `"66"', add
label define uy11a_age_lbl 067 `"67"', add
label define uy11a_age_lbl 068 `"68"', add
label define uy11a_age_lbl 069 `"69"', add
label define uy11a_age_lbl 070 `"70"', add
label define uy11a_age_lbl 071 `"71"', add
label define uy11a_age_lbl 072 `"72"', add
label define uy11a_age_lbl 073 `"73"', add
label define uy11a_age_lbl 074 `"74"', add
label define uy11a_age_lbl 075 `"75"', add
label define uy11a_age_lbl 076 `"76"', add
label define uy11a_age_lbl 077 `"77"', add
label define uy11a_age_lbl 078 `"78"', add
label define uy11a_age_lbl 079 `"79"', add
label define uy11a_age_lbl 080 `"80"', add
label define uy11a_age_lbl 081 `"81"', add
label define uy11a_age_lbl 082 `"82"', add
label define uy11a_age_lbl 083 `"83"', add
label define uy11a_age_lbl 084 `"84"', add
label define uy11a_age_lbl 085 `"85"', add
label define uy11a_age_lbl 086 `"86"', add
label define uy11a_age_lbl 087 `"87"', add
label define uy11a_age_lbl 088 `"88"', add
label define uy11a_age_lbl 089 `"89"', add
label define uy11a_age_lbl 090 `"90"', add
label define uy11a_age_lbl 091 `"91"', add
label define uy11a_age_lbl 092 `"92"', add
label define uy11a_age_lbl 093 `"93"', add
label define uy11a_age_lbl 094 `"94"', add
label define uy11a_age_lbl 095 `"95"', add
label define uy11a_age_lbl 096 `"96"', add
label define uy11a_age_lbl 097 `"97"', add
label define uy11a_age_lbl 098 `"98"', add
label define uy11a_age_lbl 099 `"99"', add
label define uy11a_age_lbl 100 `"100+"', add
label values uy11a_age uy11a_age_lbl

label define uy11a_birthmo_lbl 01 `"January"'
label define uy11a_birthmo_lbl 02 `"February"', add
label define uy11a_birthmo_lbl 03 `"March"', add
label define uy11a_birthmo_lbl 04 `"April"', add
label define uy11a_birthmo_lbl 05 `"May"', add
label define uy11a_birthmo_lbl 06 `"June"', add
label define uy11a_birthmo_lbl 07 `"July"', add
label define uy11a_birthmo_lbl 08 `"August"', add
label define uy11a_birthmo_lbl 09 `"September"', add
label define uy11a_birthmo_lbl 10 `"October"', add
label define uy11a_birthmo_lbl 11 `"November"', add
label define uy11a_birthmo_lbl 12 `"December"', add
label define uy11a_birthmo_lbl 99 `"Unknown"', add
label values uy11a_birthmo uy11a_birthmo_lbl

label define uy11a_birthyr_lbl 1911 `"1911 or earlier"'
label define uy11a_birthyr_lbl 1912 `"1912"', add
label define uy11a_birthyr_lbl 1913 `"1913"', add
label define uy11a_birthyr_lbl 1914 `"1914"', add
label define uy11a_birthyr_lbl 1915 `"1915"', add
label define uy11a_birthyr_lbl 1916 `"1916"', add
label define uy11a_birthyr_lbl 1917 `"1917"', add
label define uy11a_birthyr_lbl 1918 `"1918"', add
label define uy11a_birthyr_lbl 1919 `"1919"', add
label define uy11a_birthyr_lbl 1920 `"1920"', add
label define uy11a_birthyr_lbl 1921 `"1921"', add
label define uy11a_birthyr_lbl 1922 `"1922"', add
label define uy11a_birthyr_lbl 1923 `"1923"', add
label define uy11a_birthyr_lbl 1924 `"1924"', add
label define uy11a_birthyr_lbl 1925 `"1925"', add
label define uy11a_birthyr_lbl 1926 `"1926"', add
label define uy11a_birthyr_lbl 1927 `"1927"', add
label define uy11a_birthyr_lbl 1928 `"1928"', add
label define uy11a_birthyr_lbl 1929 `"1929"', add
label define uy11a_birthyr_lbl 1930 `"1930"', add
label define uy11a_birthyr_lbl 1931 `"1931"', add
label define uy11a_birthyr_lbl 1932 `"1932"', add
label define uy11a_birthyr_lbl 1933 `"1933"', add
label define uy11a_birthyr_lbl 1934 `"1934"', add
label define uy11a_birthyr_lbl 1935 `"1935"', add
label define uy11a_birthyr_lbl 1936 `"1936"', add
label define uy11a_birthyr_lbl 1937 `"1937"', add
label define uy11a_birthyr_lbl 1938 `"1938"', add
label define uy11a_birthyr_lbl 1939 `"1939"', add
label define uy11a_birthyr_lbl 1940 `"1940"', add
label define uy11a_birthyr_lbl 1941 `"1941"', add
label define uy11a_birthyr_lbl 1942 `"1942"', add
label define uy11a_birthyr_lbl 1943 `"1943"', add
label define uy11a_birthyr_lbl 1944 `"1944"', add
label define uy11a_birthyr_lbl 1945 `"1945"', add
label define uy11a_birthyr_lbl 1946 `"1946"', add
label define uy11a_birthyr_lbl 1947 `"1947"', add
label define uy11a_birthyr_lbl 1948 `"1948"', add
label define uy11a_birthyr_lbl 1949 `"1949"', add
label define uy11a_birthyr_lbl 1950 `"1950"', add
label define uy11a_birthyr_lbl 1951 `"1951"', add
label define uy11a_birthyr_lbl 1952 `"1952"', add
label define uy11a_birthyr_lbl 1953 `"1953"', add
label define uy11a_birthyr_lbl 1954 `"1954"', add
label define uy11a_birthyr_lbl 1955 `"1955"', add
label define uy11a_birthyr_lbl 1956 `"1956"', add
label define uy11a_birthyr_lbl 1957 `"1957"', add
label define uy11a_birthyr_lbl 1958 `"1958"', add
label define uy11a_birthyr_lbl 1959 `"1959"', add
label define uy11a_birthyr_lbl 1960 `"1960"', add
label define uy11a_birthyr_lbl 1961 `"1961"', add
label define uy11a_birthyr_lbl 1962 `"1962"', add
label define uy11a_birthyr_lbl 1963 `"1963"', add
label define uy11a_birthyr_lbl 1964 `"1964"', add
label define uy11a_birthyr_lbl 1965 `"1965"', add
label define uy11a_birthyr_lbl 1966 `"1966"', add
label define uy11a_birthyr_lbl 1967 `"1967"', add
label define uy11a_birthyr_lbl 1968 `"1968"', add
label define uy11a_birthyr_lbl 1969 `"1969"', add
label define uy11a_birthyr_lbl 1970 `"1970"', add
label define uy11a_birthyr_lbl 1971 `"1971"', add
label define uy11a_birthyr_lbl 1972 `"1972"', add
label define uy11a_birthyr_lbl 1973 `"1973"', add
label define uy11a_birthyr_lbl 1974 `"1974"', add
label define uy11a_birthyr_lbl 1975 `"1975"', add
label define uy11a_birthyr_lbl 1976 `"1976"', add
label define uy11a_birthyr_lbl 1977 `"1977"', add
label define uy11a_birthyr_lbl 1978 `"1978"', add
label define uy11a_birthyr_lbl 1979 `"1979"', add
label define uy11a_birthyr_lbl 1980 `"1980"', add
label define uy11a_birthyr_lbl 1981 `"1981"', add
label define uy11a_birthyr_lbl 1982 `"1982"', add
label define uy11a_birthyr_lbl 1983 `"1983"', add
label define uy11a_birthyr_lbl 1984 `"1984"', add
label define uy11a_birthyr_lbl 1985 `"1985"', add
label define uy11a_birthyr_lbl 1986 `"1986"', add
label define uy11a_birthyr_lbl 1987 `"1987"', add
label define uy11a_birthyr_lbl 1988 `"1988"', add
label define uy11a_birthyr_lbl 1989 `"1989"', add
label define uy11a_birthyr_lbl 1990 `"1990"', add
label define uy11a_birthyr_lbl 1991 `"1991"', add
label define uy11a_birthyr_lbl 1992 `"1992"', add
label define uy11a_birthyr_lbl 1993 `"1993"', add
label define uy11a_birthyr_lbl 1994 `"1994"', add
label define uy11a_birthyr_lbl 1995 `"1995"', add
label define uy11a_birthyr_lbl 1996 `"1996"', add
label define uy11a_birthyr_lbl 1997 `"1997"', add
label define uy11a_birthyr_lbl 1998 `"1998"', add
label define uy11a_birthyr_lbl 1999 `"1999"', add
label define uy11a_birthyr_lbl 2000 `"2000"', add
label define uy11a_birthyr_lbl 2001 `"2001"', add
label define uy11a_birthyr_lbl 2002 `"2002"', add
label define uy11a_birthyr_lbl 2003 `"2003"', add
label define uy11a_birthyr_lbl 2004 `"2004"', add
label define uy11a_birthyr_lbl 2005 `"2005"', add
label define uy11a_birthyr_lbl 2006 `"2006"', add
label define uy11a_birthyr_lbl 2007 `"2007"', add
label define uy11a_birthyr_lbl 2008 `"2008"', add
label define uy11a_birthyr_lbl 2009 `"2009"', add
label define uy11a_birthyr_lbl 2010 `"2010"', add
label define uy11a_birthyr_lbl 2011 `"2011"', add
label define uy11a_birthyr_lbl 9999 `"Unknown"', add
label values uy11a_birthyr uy11a_birthyr_lbl

label define uy11a_relate_lbl 01 `"Head or reference person"'
label define uy11a_relate_lbl 02 `"Spouse or partner"', add
label define uy11a_relate_lbl 03 `"Child of the couple"', add
label define uy11a_relate_lbl 04 `"Child of the head"', add
label define uy11a_relate_lbl 05 `"Child of the spouse"', add
label define uy11a_relate_lbl 06 `"Son or daughter in law"', add
label define uy11a_relate_lbl 07 `"Parent"', add
label define uy11a_relate_lbl 08 `"Parent-in-law"', add
label define uy11a_relate_lbl 09 `"Sibling"', add
label define uy11a_relate_lbl 10 `"Sibling-in-law"', add
label define uy11a_relate_lbl 11 `"Grandchild"', add
label define uy11a_relate_lbl 12 `"Other relative"', add
label define uy11a_relate_lbl 13 `"Other non-relative"', add
label define uy11a_relate_lbl 14 `"Domestic or household service person"', add
label define uy11a_relate_lbl 15 `"Member of a collective household"', add
label define uy11a_relate_lbl 99 `"Unknown"', add
label values uy11a_relate uy11a_relate_lbl

label define uy11a_father_lbl 0 `"NIU (not in universe)"'
label define uy11a_father_lbl 1 `"Yes"', add
label define uy11a_father_lbl 2 `"No"', add
label define uy11a_father_lbl 9 `"Unknown"', add
label values uy11a_father uy11a_father_lbl

label define uy11a_ethnbl_lbl 1 `"Yes"'
label define uy11a_ethnbl_lbl 2 `"No"', add
label define uy11a_ethnbl_lbl 9 `"Unknown"', add
label values uy11a_ethnbl uy11a_ethnbl_lbl

label define uy11a_ethnas_lbl 1 `"Yes"'
label define uy11a_ethnas_lbl 2 `"No"', add
label define uy11a_ethnas_lbl 9 `"Unknown"', add
label values uy11a_ethnas uy11a_ethnas_lbl

label define uy11a_ethnwht_lbl 1 `"Yes"'
label define uy11a_ethnwht_lbl 2 `"No"', add
label define uy11a_ethnwht_lbl 9 `"Unknown"', add
label values uy11a_ethnwht uy11a_ethnwht_lbl

label define uy11a_ethnid_lbl 1 `"Yes"'
label define uy11a_ethnid_lbl 2 `"No"', add
label define uy11a_ethnid_lbl 9 `"Unknown"', add
label values uy11a_ethnid uy11a_ethnid_lbl

label define uy11a_ethnoth_lbl 1 `"Yes"'
label define uy11a_ethnoth_lbl 2 `"No"', add
label define uy11a_ethnoth_lbl 9 `"Unknown"', add
label values uy11a_ethnoth uy11a_ethnoth_lbl

label define uy11a_ancestry_lbl 1 `"Afro or Black"'
label define uy11a_ancestry_lbl 2 `"Asian or Yellow"', add
label define uy11a_ancestry_lbl 3 `"White"', add
label define uy11a_ancestry_lbl 4 `"Indigenous"', add
label define uy11a_ancestry_lbl 5 `"Other"', add
label define uy11a_ancestry_lbl 6 `"No principal ancestry"', add
label define uy11a_ancestry_lbl 9 `"Unknown"', add
label values uy11a_ancestry uy11a_ancestry_lbl

label define uy11a_spousehh_lbl 0 `"NIU (not in universe)"'
label define uy11a_spousehh_lbl 1 `"Yes"', add
label define uy11a_spousehh_lbl 2 `"No"', add
label define uy11a_spousehh_lbl 9 `"Unknown"', add
label values uy11a_spousehh uy11a_spousehh_lbl

label define uy11a_union_lbl 0 `"NIU (not in universe)"'
label define uy11a_union_lbl 1 `"Civil marriage"', add
label define uy11a_union_lbl 2 `"Consensual union with partner of opposite sex"', add
label define uy11a_union_lbl 3 `"Consensual union with partner of same sex"', add
label define uy11a_union_lbl 9 `"Unknown"', add
label values uy11a_union uy11a_union_lbl

label define uy11a_marst_lbl 0 `"NIU (not in universe)"'
label define uy11a_marst_lbl 1 `"Separated from a consensual union"', add
label define uy11a_marst_lbl 2 `"Divorced"', add
label define uy11a_marst_lbl 3 `"Married (including separated and not yet divorced)"', add
label define uy11a_marst_lbl 4 `"Widowed (of marriage)"', add
label define uy11a_marst_lbl 5 `"Widowed (of consensual union)"', add
label define uy11a_marst_lbl 6 `"Single (never married nor lived in free union)"', add
label define uy11a_marst_lbl 9 `"Unknown"', add
label values uy11a_marst uy11a_marst_lbl

label define uy11a_bplplace_lbl 1 `"In this locality or area"'
label define uy11a_bplplace_lbl 2 `"In another locality or area of this department"', add
label define uy11a_bplplace_lbl 3 `"In another department"', add
label define uy11a_bplplace_lbl 4 `"In another country"', add
label define uy11a_bplplace_lbl 9 `"Unknown"', add
label values uy11a_bplplace uy11a_bplplace_lbl

label define uy11a_bpldept_lbl 00 `"NIU (not in universe)"'
label define uy11a_bpldept_lbl 01 `"Montevideo"', add
label define uy11a_bpldept_lbl 02 `"Artigas"', add
label define uy11a_bpldept_lbl 03 `"Canelones"', add
label define uy11a_bpldept_lbl 04 `"Cerro Largo"', add
label define uy11a_bpldept_lbl 05 `"Colonia"', add
label define uy11a_bpldept_lbl 06 `"Durazno"', add
label define uy11a_bpldept_lbl 07 `"Flores"', add
label define uy11a_bpldept_lbl 08 `"Florida"', add
label define uy11a_bpldept_lbl 09 `"Lavalleja"', add
label define uy11a_bpldept_lbl 10 `"Maldonado"', add
label define uy11a_bpldept_lbl 11 `"Paysandu"', add
label define uy11a_bpldept_lbl 12 `"Rio Negro"', add
label define uy11a_bpldept_lbl 13 `"Rivera"', add
label define uy11a_bpldept_lbl 14 `"Rocha"', add
label define uy11a_bpldept_lbl 15 `"Salto"', add
label define uy11a_bpldept_lbl 16 `"San Jose"', add
label define uy11a_bpldept_lbl 17 `"Soriano"', add
label define uy11a_bpldept_lbl 18 `"Tacuarembo"', add
label define uy11a_bpldept_lbl 19 `"Treinta y Tres"', add
label values uy11a_bpldept uy11a_bpldept_lbl

label define uy11a_bploth_lbl 00000 `"NIU (not in universe)"'
label define uy11a_bploth_lbl 01020 `"Montevideo"', add
label define uy11a_bploth_lbl 01621 `"Abayubá"', add
label define uy11a_bploth_lbl 01622 `"Santiago Vázquez"', add
label define uy11a_bploth_lbl 01721 `"Pajas Blancas"', add
label define uy11a_bploth_lbl 01900 `"Department of Montevideo, rural areas"', add
label define uy11a_bploth_lbl 01999 `"Department of Montevideo, locality not specified"', add
label define uy11a_bploth_lbl 02220 `"Artigas"', add
label define uy11a_bploth_lbl 02521 `"Bella Unión"', add
label define uy11a_bploth_lbl 02522 `"Tomás Gomensoro"', add
label define uy11a_bploth_lbl 02621 `"Baltasar Brum"', add
label define uy11a_bploth_lbl 02725 `"Sequeira"', add
label define uy11a_bploth_lbl 02999 `"Department of Artigas, locality not specified"', add
label define uy11a_bploth_lbl 03030 `"Ciudad de la Costa"', add
label define uy11a_bploth_lbl 03221 `"Las Piedras"', add
label define uy11a_bploth_lbl 03320 `"Canelones"', add
label define uy11a_bploth_lbl 03321 `"La Paz"', add
label define uy11a_bploth_lbl 03322 `"Pando"', add
label define uy11a_bploth_lbl 03323 `"Santa Lucía"', add
label define uy11a_bploth_lbl 03421 `"Progreso"', add
label define uy11a_bploth_lbl 03422 `"San Ramón"', add
label define uy11a_bploth_lbl 03524 `"Joaquín Suárez"', add
label define uy11a_bploth_lbl 03525 `"Paso Carrasco"', add
label define uy11a_bploth_lbl 03526 `"Santa Rosa"', add
label define uy11a_bploth_lbl 03527 `"Sauce"', add
label define uy11a_bploth_lbl 03528 `"Tala"', add
label define uy11a_bploth_lbl 03621 `"Atlántida"', add
label define uy11a_bploth_lbl 03624 `"Cerrillos"', add
label define uy11a_bploth_lbl 03625 `"Empalme Olmos"', add
label define uy11a_bploth_lbl 03626 `"Migues"', add
label define uy11a_bploth_lbl 03627 `"Parque del Plata"', add
label define uy11a_bploth_lbl 03628 `"San Bautista"', add
label define uy11a_bploth_lbl 03629 `"San Jacinto"', add
label define uy11a_bploth_lbl 03631 `"Toledo"', add
label define uy11a_bploth_lbl 03632 `"Montes"', add
label define uy11a_bploth_lbl 03634 `"Fracc. sobre R.74"', add
label define uy11a_bploth_lbl 03730 `"San Antonio"', add
label define uy11a_bploth_lbl 03732 `"Solymar"', add
label define uy11a_bploth_lbl 03828 `"El Pinar"', add
label define uy11a_bploth_lbl 03831 `"Lagomar"', add
label define uy11a_bploth_lbl 03835 `"Shangrilá"', add
label define uy11a_bploth_lbl 03900 `"Department of Canelones, rural areas"', add
label define uy11a_bploth_lbl 03955 `"Los Cerrillos"', add
label define uy11a_bploth_lbl 03999 `"Department of Canelones, locality not specified"', add
label define uy11a_bploth_lbl 04220 `"Melo"', add
label define uy11a_bploth_lbl 04521 `"Fraile Muerto"', add
label define uy11a_bploth_lbl 04522 `"Río Branco"', add
label define uy11a_bploth_lbl 04621 `"Tupambaé"', add
label define uy11a_bploth_lbl 04821 `"Aceguá"', add
label define uy11a_bploth_lbl 04826 `"Paso Pereira"', add
label define uy11a_bploth_lbl 04900 `"Department of Cerro Largo, rural areas"', add
label define uy11a_bploth_lbl 04999 `"Department of Cerro Largo, locality not specified"', add
label define uy11a_bploth_lbl 05320 `"Colonia del Sacramento"', add
label define uy11a_bploth_lbl 05321 `"Carmelo"', add
label define uy11a_bploth_lbl 05323 `"Juan Lacaze"', add
label define uy11a_bploth_lbl 05421 `"Nueva Helvecia"', add
label define uy11a_bploth_lbl 05422 `"Rosario"', add
label define uy11a_bploth_lbl 05423 `"Nueva Palmira"', add
label define uy11a_bploth_lbl 05521 `"Ombúes de Lavalle"', add
label define uy11a_bploth_lbl 05522 `"Tarariras"', add
label define uy11a_bploth_lbl 05621 `"Colonia Valdense"', add
label define uy11a_bploth_lbl 05622 `"Florencio Sánchez"', add
label define uy11a_bploth_lbl 05721 `"Conchillas"', add
label define uy11a_bploth_lbl 05822 `"Buena Hora"', add
label define uy11a_bploth_lbl 05900 `"Department of Colonia, rural areas"', add
label define uy11a_bploth_lbl 05999 `"Department of Colonia, locality not specified"', add
label define uy11a_bploth_lbl 06220 `"Durazno"', add
label define uy11a_bploth_lbl 06421 `"Sarandí del Yí"', add
label define uy11a_bploth_lbl 06521 `"Carmen"', add
label define uy11a_bploth_lbl 06621 `"Blanquillo"', add
label define uy11a_bploth_lbl 06622 `"La Paloma"', add
label define uy11a_bploth_lbl 06721 `"Carlos Reyles"', add
label define uy11a_bploth_lbl 06722 `"Centenario"', add
label define uy11a_bploth_lbl 06724 `"Santa Bernardina"', add
label define uy11a_bploth_lbl 06790 `"Cerro Chato"', add
label define uy11a_bploth_lbl 06900 `"Department of Durazno, rural areas"', add
label define uy11a_bploth_lbl 06923 `"Chileno"', add
label define uy11a_bploth_lbl 06930 `"Carpintería"', add
label define uy11a_bploth_lbl 06941 `"Fonseca"', add
label define uy11a_bploth_lbl 06945 `"Los Agüero"', add
label define uy11a_bploth_lbl 06947 `"Los Rojas"', add
label define uy11a_bploth_lbl 06957 `"Reynolds"', add
label define uy11a_bploth_lbl 06962 `"Salinas"', add
label define uy11a_bploth_lbl 06964 `"San Jorge"', add
label define uy11a_bploth_lbl 06999 `"Department of Durazno, locality not specified"', add
label define uy11a_bploth_lbl 07320 `"Trinidad"', add
label define uy11a_bploth_lbl 07721 `"Ismael Cortinas"', add
label define uy11a_bploth_lbl 07900 `"Department of Flores, rural areas"', add
label define uy11a_bploth_lbl 07923 `"Colonia Alemana"', add
label define uy11a_bploth_lbl 07926 `"Pueblito Piedra"', add
label define uy11a_bploth_lbl 07929 `"Puntas de Corral de Piedra"', add
label define uy11a_bploth_lbl 07935 `"Santa Elena"', add
label define uy11a_bploth_lbl 07999 `"Department of Flores, locality not specified"', add
label define uy11a_bploth_lbl 08220 `"Florida"', add
label define uy11a_bploth_lbl 08421 `"Sarandí Grande"', add
label define uy11a_bploth_lbl 08521 `"Casupá"', add
label define uy11a_bploth_lbl 08621 `"Cardal"', add
label define uy11a_bploth_lbl 08622 `"Fray Marcos"', add
label define uy11a_bploth_lbl 08623 `"Veinticinco de Agosto"', add
label define uy11a_bploth_lbl 08624 `"Veinticinco de Mayo"', add
label define uy11a_bploth_lbl 08721 `"Alejandro Gallinal"', add
label define uy11a_bploth_lbl 08722 `"Capilla del Sauce"', add
label define uy11a_bploth_lbl 08723 `"La Cruz"', add
label define uy11a_bploth_lbl 08724 `"Nico Pérez"', add
label define uy11a_bploth_lbl 08821 `"Chamizo"', add
label define uy11a_bploth_lbl 08823 `"Mendoza"', add
label define uy11a_bploth_lbl 08825 `"Reboledo"', add
label define uy11a_bploth_lbl 08900 `"Department of Florida, rural areas"', add
label define uy11a_bploth_lbl 08928 `"Estación Palermo"', add
label define uy11a_bploth_lbl 08929 `"Estación Urioste"', add
label define uy11a_bploth_lbl 08950 `"Villa Hípica"', add
label define uy11a_bploth_lbl 08992 `"Caserío La Fundación"', add
label define uy11a_bploth_lbl 08999 `"Department of Florida, locality not specified"', add
label define uy11a_bploth_lbl 09220 `"Minas"', add
label define uy11a_bploth_lbl 09521 `"José Batlle y Ordóñez"', add
label define uy11a_bploth_lbl 09522 `"José Pedro Varela"', add
label define uy11a_bploth_lbl 09621 `"Mariscala"', add
label define uy11a_bploth_lbl 09622 `"Solís de Mataojo"', add
label define uy11a_bploth_lbl 09721 `"Pirarajá"', add
label define uy11a_bploth_lbl 09722 `"Zapicán"', add
label define uy11a_bploth_lbl 09821 `"Colón"', add
label define uy11a_bploth_lbl 09900 `"Department of Lavalleja, rural areas"', add
label define uy11a_bploth_lbl 09921 `"Aguas Blancas"', add
label define uy11a_bploth_lbl 09938 `"Marco de los Reyes"', add
label define uy11a_bploth_lbl 09940 `"Molles de Gutiérrez"', add
label define uy11a_bploth_lbl 09941 `"Poblado Larrosa"', add
label define uy11a_bploth_lbl 09947 `"Rincón de Mariscala"', add
label define uy11a_bploth_lbl 09949 `"Ruta 40 Km 25"', add
label define uy11a_bploth_lbl 09954 `"Velázquez"', add
label define uy11a_bploth_lbl 09999 `"Department of Lavalleja, locality not specified"', add
label define uy11a_bploth_lbl 10320 `"Maldonado"', add
label define uy11a_bploth_lbl 10321 `"San Carlos"', add
label define uy11a_bploth_lbl 10521 `"Aiguá"', add
label define uy11a_bploth_lbl 10522 `"Pan de Azúcar"', add
label define uy11a_bploth_lbl 10523 `"Piriápolis"', add
label define uy11a_bploth_lbl 10524 `"Punta del Este"', add
label define uy11a_bploth_lbl 10823 `"Gerona"', add
label define uy11a_bploth_lbl 10831 `"Chihuahua"', add
label define uy11a_bploth_lbl 10833 `"San Rafael - El Placer"', add
label define uy11a_bploth_lbl 10919 `"Islas"', add
label define uy11a_bploth_lbl 10923 `"Barra del Sauce"', add
label define uy11a_bploth_lbl 10927 `"Buenos Aires"', add
label define uy11a_bploth_lbl 10928 `"Calera Ramos"', add
label define uy11a_bploth_lbl 10929 `"Canteras de Marelli"', add
label define uy11a_bploth_lbl 10933 `"Edén Rock"', add
label define uy11a_bploth_lbl 10934 `"El Chorro"', add
label define uy11a_bploth_lbl 10936 `"El Tesoro"', add
label define uy11a_bploth_lbl 10938 `"Faro José Ignacio"', add
label define uy11a_bploth_lbl 10941 `"Guardia Vieja"', add
label define uy11a_bploth_lbl 10944 `"La Capuera"', add
label define uy11a_bploth_lbl 10946 `"Los Ceibos"', add
label define uy11a_bploth_lbl 10950 `"Partido Oeste"', add
label define uy11a_bploth_lbl 10951 `"Paso de los Talas"', add
label define uy11a_bploth_lbl 10958 `"Punta Colorada"', add
label define uy11a_bploth_lbl 10959 `"Punta Negra"', add
label define uy11a_bploth_lbl 10960 `"Puntas de San Ignacio"', add
label define uy11a_bploth_lbl 10966 `"San Juan del Este"', add
label define uy11a_bploth_lbl 10967 `"Santa Mónica"', add
label define uy11a_bploth_lbl 10973 `"Balneario Buenos Aires"', add
label define uy11a_bploth_lbl 10974 `"De Lobos"', add
label define uy11a_bploth_lbl 10983 `"Edén Rock"', add
label define uy11a_bploth_lbl 10986 `"La Sonrisa"', add
label define uy11a_bploth_lbl 10999 `"Department of Maldonado, locality not specified"', add
label define uy11a_bploth_lbl 11120 `"Paysandú"', add
label define uy11a_bploth_lbl 11521 `"Guichón"', add
label define uy11a_bploth_lbl 11621 `"Quebracho"', add
label define uy11a_bploth_lbl 11695 `"Tambores"', add
label define uy11a_bploth_lbl 11722 `"Merinos"', add
label define uy11a_bploth_lbl 11723 `"Porvenir"', add
label define uy11a_bploth_lbl 11822 `"Beisso"', add
label define uy11a_bploth_lbl 11827 `"Piedras Coloradas"', add
label define uy11a_bploth_lbl 11830 `"San Félix"', add
label define uy11a_bploth_lbl 11900 `"Department of Paysandu, rural areas"', add
label define uy11a_bploth_lbl 11921 `"Alonso"', add
label define uy11a_bploth_lbl 11926 `"Chapicuy"', add
label define uy11a_bploth_lbl 11928 `"El Chaco"', add
label define uy11a_bploth_lbl 11930 `"El Horno"', add
label define uy11a_bploth_lbl 11942 `"Ruta 90 Km 36"', add
label define uy11a_bploth_lbl 11943 `"Sacachispas"', add
label define uy11a_bploth_lbl 11944 `"Sauce de Abajo"', add
label define uy11a_bploth_lbl 11950 `"Zeballos"', add
label define uy11a_bploth_lbl 11957 `"Pueblo Alonzo"', add
label define uy11a_bploth_lbl 11999 `"Department of Paysandu, locality not specified"', add
label define uy11a_bploth_lbl 12320 `"Fray Bentos"', add
label define uy11a_bploth_lbl 12421 `"Young"', add
label define uy11a_bploth_lbl 12621 `"Nuevo Berlín"', add
label define uy11a_bploth_lbl 12622 `"San Javier"', add
label define uy11a_bploth_lbl 12723 `"Grecco"', add
label define uy11a_bploth_lbl 12797 `"Algorta"', add
label define uy11a_bploth_lbl 12823 `"Paso de los Mellizos"', add
label define uy11a_bploth_lbl 12824 `"Sarandí de Navarro"', add
label define uy11a_bploth_lbl 12900 `"Department of Rio Negro, rural areas"', add
label define uy11a_bploth_lbl 12919 `"Islas"', add
label define uy11a_bploth_lbl 12921 `"Abrigo"', add
label define uy11a_bploth_lbl 12927 `"La Ilera"', add
label define uy11a_bploth_lbl 12928 `"La Unión"', add
label define uy11a_bploth_lbl 12931 `"Mataojo"', add
label define uy11a_bploth_lbl 12999 `"Department of Rio Negro, locality not specified"', add
label define uy11a_bploth_lbl 13220 `"Rivera"', add
label define uy11a_bploth_lbl 13521 `"Minas de Corrales"', add
label define uy11a_bploth_lbl 13522 `"Tranqueras"', add
label define uy11a_bploth_lbl 13621 `"Vichadero"', add
label define uy11a_bploth_lbl 13835 `"San Gregorio"', add
label define uy11a_bploth_lbl 13838 `"Lagunón"', add
label define uy11a_bploth_lbl 13900 `"Department of Rivera, rural areas"', add
label define uy11a_bploth_lbl 13927 `"Carpintería"', add
label define uy11a_bploth_lbl 13929 `"Cerrillada"', add
label define uy11a_bploth_lbl 13938 `"Guaviyú"', add
label define uy11a_bploth_lbl 13940 `"Lagos del Norte"', add
label define uy11a_bploth_lbl 13950 `"Paso de Tapado"', add
label define uy11a_bploth_lbl 13956 `"Rincón de Roland"', add
label define uy11a_bploth_lbl 13964 `"Zanja Honda 02"', add
label define uy11a_bploth_lbl 13999 `"Department of Rivera, locality not specified"', add
label define uy11a_bploth_lbl 14320 `"Rocha"', add
label define uy11a_bploth_lbl 14421 `"Castillos"', add
label define uy11a_bploth_lbl 14422 `"Lascano"', add
label define uy11a_bploth_lbl 14521 `"Chuy"', add
label define uy11a_bploth_lbl 14621 `"Cebollatí"', add
label define uy11a_bploth_lbl 14622 `"Velázquez"', add
label define uy11a_bploth_lbl 14721 `"18 de Julio"', add
label define uy11a_bploth_lbl 14722 `"La Paloma"', add
label define uy11a_bploth_lbl 14723 `"San Luis al Medio"', add
label define uy11a_bploth_lbl 14919 `"Isla"', add
label define uy11a_bploth_lbl 14926 `"Barrio Torres"', add
label define uy11a_bploth_lbl 14927 `"Buena Vista"', add
label define uy11a_bploth_lbl 14934 `"El Canelón"', add
label define uy11a_bploth_lbl 14936 `"El Ceibo"', add
label define uy11a_bploth_lbl 14937 `"El Chimango"', add
label define uy11a_bploth_lbl 14938 `"Estero Pelotas Arrocera"', add
label define uy11a_bploth_lbl 14939 `"Estiva de Chafalote"', add
label define uy11a_bploth_lbl 14944 `"La Garzas"', add
label define uy11a_bploth_lbl 14946 `"Mena"', add
label define uy11a_bploth_lbl 14947 `"Palmar"', add
label define uy11a_bploth_lbl 14951 `"Picada Techera Arrocera"', add
label define uy11a_bploth_lbl 14953 `"Puerto de los Botes"', add
label define uy11a_bploth_lbl 14955 `"Rincón de Nieto"', add
label define uy11a_bploth_lbl 14956 `"Rincón de los Olivera"', add
label define uy11a_bploth_lbl 14957 `"Puimayen"', add
label define uy11a_bploth_lbl 14958 `"Tres Islas"', add
label define uy11a_bploth_lbl 14963 `"Palmares de la Coronilla"', add
label define uy11a_bploth_lbl 14964 `"La Ribiera"', add
label define uy11a_bploth_lbl 14999 `"Department of Rocha, locality not specified"', add
label define uy11a_bploth_lbl 15120 `"Salto"', add
label define uy11a_bploth_lbl 15522 `"Belén"', add
label define uy11a_bploth_lbl 15523 `"Constitución"', add
label define uy11a_bploth_lbl 15722 `"San Antonio"', add
label define uy11a_bploth_lbl 15831 `"Sarandí del Arapey"', add
label define uy11a_bploth_lbl 15900 `"Department of Salto, rural areas"', add
label define uy11a_bploth_lbl 15927 `"Cancela"', add
label define uy11a_bploth_lbl 15928 `"Cancela o Varesse"', add
label define uy11a_bploth_lbl 15930 `"Casco"', add
label define uy11a_bploth_lbl 15931 `"Celeste"', add
label define uy11a_bploth_lbl 15932 `"Cerrillada"', add
label define uy11a_bploth_lbl 15933 `"Cerrillada de Saucedo"', add
label define uy11a_bploth_lbl 15947 `"Mario Rubio"', add
label define uy11a_bploth_lbl 15948 `"Mataojito"', add
label define uy11a_bploth_lbl 15949 `"Migliaro"', add
label define uy11a_bploth_lbl 15953 `"Paso del Tropero"', add
label define uy11a_bploth_lbl 15954 `"Paso del Tapado"', add
label define uy11a_bploth_lbl 15955 `"Paso Nuevo del Arapey"', add
label define uy11a_bploth_lbl 15967 `"Santa Ana"', add
label define uy11a_bploth_lbl 15972 `"Russo"', add
label define uy11a_bploth_lbl 15999 `"Department of Salto, locality not specified"', add
label define uy11a_bploth_lbl 16220 `"San José de Mayo"', add
label define uy11a_bploth_lbl 16421 `"Libertad"', add
label define uy11a_bploth_lbl 16521 `"Delta del Tigre y Villas"', add
label define uy11a_bploth_lbl 16621 `"Rodríguez"', add
label define uy11a_bploth_lbl 16721 `"Ituzaingó"', add
label define uy11a_bploth_lbl 16793 `"Ismael Cortinas"', add
label define uy11a_bploth_lbl 16824 `"Playa Pascual"', add
label define uy11a_bploth_lbl 16900 `"Department of San Jose, rural areas"', add
label define uy11a_bploth_lbl 16925 `"Capurro"', add
label define uy11a_bploth_lbl 16929 `"Ecilda Paullier"', add
label define uy11a_bploth_lbl 16935 `"La Candelaria"', add
label define uy11a_bploth_lbl 16936 `"La Cuchilla"', add
label define uy11a_bploth_lbl 16942 `"Rapetti"', add
label define uy11a_bploth_lbl 16943 `"Rincón de Nazaret"', add
label define uy11a_bploth_lbl 16944 `"Rincón de Buschental"', add
label define uy11a_bploth_lbl 16945 `"Rincón del Pino"', add
label define uy11a_bploth_lbl 16947 `"Scavino"', add
label define uy11a_bploth_lbl 16960 `"Cerámicas del Sur"', add
label define uy11a_bploth_lbl 16961 `"Radial"', add
label define uy11a_bploth_lbl 16962 `"Cololó - Tinosa"', add
label define uy11a_bploth_lbl 16963 `"Mangrullo"', add
label define uy11a_bploth_lbl 16964 `"Carreta Quemada"', add
label define uy11a_bploth_lbl 16965 `"Costas de Pereira"', add
label define uy11a_bploth_lbl 16999 `"Department of San Jose, locality not specified"', add
label define uy11a_bploth_lbl 17220 `"Mercedes"', add
label define uy11a_bploth_lbl 17321 `"Dolores"', add
label define uy11a_bploth_lbl 17521 `"Cardona"', add
label define uy11a_bploth_lbl 17621 `"José Enrique Rodó"', add
label define uy11a_bploth_lbl 17622 `"Palmitas"', add
label define uy11a_bploth_lbl 17623 `"Villa Soriano"', add
label define uy11a_bploth_lbl 17721 `"Egaña"', add
label define uy11a_bploth_lbl 17722 `"Santa Catalina"', add
label define uy11a_bploth_lbl 17798 `"Agraciada"', add
label define uy11a_bploth_lbl 17821 `"Cañada Paraguaya"', add
label define uy11a_bploth_lbl 17823 `"Risso"', add
label define uy11a_bploth_lbl 17825 `"Cañada Nieto"', add
label define uy11a_bploth_lbl 17900 `"Department of Soriano, rural areas"', add
label define uy11a_bploth_lbl 17919 `"Islas"', add
label define uy11a_bploth_lbl 17923 `"Bequeló Ruta 14 Km 7"', add
label define uy11a_bploth_lbl 17925 `"Calvo"', add
label define uy11a_bploth_lbl 17926 `"Colonia Díaz"', add
label define uy11a_bploth_lbl 17927 `"Cuchilla del Perdido"', add
label define uy11a_bploth_lbl 17930 `"La Concordia"', add
label define uy11a_bploth_lbl 17931 `"La Loma"', add
label define uy11a_bploth_lbl 17999 `"Department of Soriano, locality not specified"', add
label define uy11a_bploth_lbl 18220 `"Tacuarembó"', add
label define uy11a_bploth_lbl 18321 `"Paso de los Toros"', add
label define uy11a_bploth_lbl 18521 `"San Gregorio de Polanco"', add
label define uy11a_bploth_lbl 18695 `"Tambores"', add
label define uy11a_bploth_lbl 18721 `"Achar"', add
label define uy11a_bploth_lbl 18722 `"Ansina"', add
label define uy11a_bploth_lbl 18723 `"Curtina"', add
label define uy11a_bploth_lbl 18724 `"Paso del Cerro"', add
label define uy11a_bploth_lbl 18725 `"Rincón de Martinote"', add
label define uy11a_bploth_lbl 18824 `"Cuchilla de Caraguatá"', add
label define uy11a_bploth_lbl 18828 `"Las Toscas"', add
label define uy11a_bploth_lbl 18853 `"Los Rodríguez"', add
label define uy11a_bploth_lbl 18900 `"Department of Tacuarembo, rural areas"', add
label define uy11a_bploth_lbl 18929 `"Colman"', add
label define uy11a_bploth_lbl 18932 `"Heriberto"', add
label define uy11a_bploth_lbl 18935 `"La Bolsa 02"', add
label define uy11a_bploth_lbl 18940 `"Larrayos"', add
label define uy11a_bploth_lbl 18948 `"Los García"', add
label define uy11a_bploth_lbl 18950 `"Los Magariños"', add
label define uy11a_bploth_lbl 18951 `"Los Novillos"', add
label define uy11a_bploth_lbl 18952 `"Laureles"', add
label define uy11a_bploth_lbl 18956 `"Los Semper"', add
label define uy11a_bploth_lbl 18957 `"Los Vázquez"', add
label define uy11a_bploth_lbl 18958 `"Laura"', add
label define uy11a_bploth_lbl 18963 `"Montevideo Chico"', add
label define uy11a_bploth_lbl 18973 `"Rincón de Giloca"', add
label define uy11a_bploth_lbl 18975 `"Rincón de Freitas"', add
label define uy11a_bploth_lbl 18976 `"Rivera Chico"', add
label define uy11a_bploth_lbl 18979 `"Santander"', add
label define uy11a_bploth_lbl 18987 `"Valle Eden"', add
label define uy11a_bploth_lbl 18999 `"Department of Tacuarembo, locality not specified"', add
label define uy11a_bploth_lbl 19220 `"Treinta y Tres"', add
label define uy11a_bploth_lbl 19521 `"Santa Clara de Olimar"', add
label define uy11a_bploth_lbl 19522 `"Vergara"', add
label define uy11a_bploth_lbl 19721 `"Arrozal Treinta y Tres"', add
label define uy11a_bploth_lbl 19722 `"Gral. Enrique Martínez"', add
label define uy11a_bploth_lbl 19790 `"Cerro Chato"', add
label define uy11a_bploth_lbl 19822 `"Isla Patrulla (María Isabel)"', add
label define uy11a_bploth_lbl 19823 `"Picada Techera"', add
label define uy11a_bploth_lbl 19900 `"Department of Treinta y Tres, rural areas"', add
label define uy11a_bploth_lbl 19923 `"Arrozal Florencio Barreto"', add
label define uy11a_bploth_lbl 19933 `"Costa del Arroyo Malo"', add
label define uy11a_bploth_lbl 19937 `"La Calavera"', add
label define uy11a_bploth_lbl 19943 `"Paso de Píriz"', add
label define uy11a_bploth_lbl 19945 `"Poblado Medina"', add
label define uy11a_bploth_lbl 19950 `"San Juan"', add
label define uy11a_bploth_lbl 19960 `"El Bellaco"', add
label define uy11a_bploth_lbl 19999 `"Department of Treinta y Tres, locality not specified"', add
label values uy11a_bploth uy11a_bploth_lbl

label define uy11a_bplctry_lbl 00 `"NIU (not in universe)"'
label define uy11a_bplctry_lbl 05 `"Cuba"', add
label define uy11a_bplctry_lbl 10 `"Mexico"', add
label define uy11a_bplctry_lbl 20 `"Argentina"', add
label define uy11a_bplctry_lbl 21 `"Bolivia"', add
label define uy11a_bplctry_lbl 22 `"Brazil"', add
label define uy11a_bplctry_lbl 23 `"Chile"', add
label define uy11a_bplctry_lbl 24 `"Colombia"', add
label define uy11a_bplctry_lbl 26 `"Paraguay"', add
label define uy11a_bplctry_lbl 27 `"Peru"', add
label define uy11a_bplctry_lbl 29 `"Venezuela"', add
label define uy11a_bplctry_lbl 31 `"France"', add
label define uy11a_bplctry_lbl 32 `"Germany"', add
label define uy11a_bplctry_lbl 33 `"Italy"', add
label define uy11a_bplctry_lbl 35 `"Poland"', add
label define uy11a_bplctry_lbl 36 `"Portugal"', add
label define uy11a_bplctry_lbl 37 `"Spain"', add
label define uy11a_bplctry_lbl 38 `"Sweden"', add
label define uy11a_bplctry_lbl 60 `"Canada"', add
label define uy11a_bplctry_lbl 61 `"United States"', add
label define uy11a_bplctry_lbl 80 `"Australia"', add
label define uy11a_bplctry_lbl 90 `"Other Caribbean"', add
label define uy11a_bplctry_lbl 91 `"Other Central America"', add
label define uy11a_bplctry_lbl 92 `"Other South America"', add
label define uy11a_bplctry_lbl 93 `"Other Europe"', add
label define uy11a_bplctry_lbl 94 `"Other Africa"', add
label define uy11a_bplctry_lbl 95 `"Other Asia"', add
label define uy11a_bplctry_lbl 99 `"Unknown"', add
label values uy11a_bplctry uy11a_bplctry_lbl

label define uy11a_arryr_lbl 0000 `"NIU (not in universe)"'
label define uy11a_arryr_lbl 1945 `"1945 or earlier"', add
label define uy11a_arryr_lbl 1946 `"1946"', add
label define uy11a_arryr_lbl 1947 `"1947"', add
label define uy11a_arryr_lbl 1948 `"1948"', add
label define uy11a_arryr_lbl 1949 `"1949"', add
label define uy11a_arryr_lbl 1950 `"1950"', add
label define uy11a_arryr_lbl 1951 `"1951"', add
label define uy11a_arryr_lbl 1952 `"1952"', add
label define uy11a_arryr_lbl 1953 `"1953"', add
label define uy11a_arryr_lbl 1954 `"1954"', add
label define uy11a_arryr_lbl 1955 `"1955"', add
label define uy11a_arryr_lbl 1956 `"1956"', add
label define uy11a_arryr_lbl 1957 `"1957"', add
label define uy11a_arryr_lbl 1958 `"1958"', add
label define uy11a_arryr_lbl 1959 `"1959"', add
label define uy11a_arryr_lbl 1960 `"1960"', add
label define uy11a_arryr_lbl 1961 `"1961"', add
label define uy11a_arryr_lbl 1962 `"1962"', add
label define uy11a_arryr_lbl 1963 `"1963"', add
label define uy11a_arryr_lbl 1964 `"1964"', add
label define uy11a_arryr_lbl 1965 `"1965"', add
label define uy11a_arryr_lbl 1966 `"1966"', add
label define uy11a_arryr_lbl 1967 `"1967"', add
label define uy11a_arryr_lbl 1968 `"1968"', add
label define uy11a_arryr_lbl 1969 `"1969"', add
label define uy11a_arryr_lbl 1970 `"1970"', add
label define uy11a_arryr_lbl 1971 `"1971"', add
label define uy11a_arryr_lbl 1972 `"1972"', add
label define uy11a_arryr_lbl 1973 `"1973"', add
label define uy11a_arryr_lbl 1974 `"1974"', add
label define uy11a_arryr_lbl 1975 `"1975"', add
label define uy11a_arryr_lbl 1976 `"1976"', add
label define uy11a_arryr_lbl 1977 `"1977"', add
label define uy11a_arryr_lbl 1978 `"1978"', add
label define uy11a_arryr_lbl 1979 `"1979"', add
label define uy11a_arryr_lbl 1980 `"1980"', add
label define uy11a_arryr_lbl 1981 `"1981"', add
label define uy11a_arryr_lbl 1982 `"1982"', add
label define uy11a_arryr_lbl 1983 `"1983"', add
label define uy11a_arryr_lbl 1984 `"1984"', add
label define uy11a_arryr_lbl 1985 `"1985"', add
label define uy11a_arryr_lbl 1986 `"1986"', add
label define uy11a_arryr_lbl 1987 `"1987"', add
label define uy11a_arryr_lbl 1988 `"1988"', add
label define uy11a_arryr_lbl 1989 `"1989"', add
label define uy11a_arryr_lbl 1990 `"1990"', add
label define uy11a_arryr_lbl 1991 `"1991"', add
label define uy11a_arryr_lbl 1992 `"1992"', add
label define uy11a_arryr_lbl 1993 `"1993"', add
label define uy11a_arryr_lbl 1994 `"1994"', add
label define uy11a_arryr_lbl 1995 `"1995"', add
label define uy11a_arryr_lbl 1996 `"1996"', add
label define uy11a_arryr_lbl 1997 `"1997"', add
label define uy11a_arryr_lbl 1998 `"1998"', add
label define uy11a_arryr_lbl 1999 `"1999"', add
label define uy11a_arryr_lbl 2000 `"2000"', add
label define uy11a_arryr_lbl 2001 `"2001"', add
label define uy11a_arryr_lbl 2002 `"2002"', add
label define uy11a_arryr_lbl 2003 `"2003"', add
label define uy11a_arryr_lbl 2004 `"2004"', add
label define uy11a_arryr_lbl 2005 `"2005"', add
label define uy11a_arryr_lbl 2006 `"2006"', add
label define uy11a_arryr_lbl 2007 `"2007"', add
label define uy11a_arryr_lbl 2008 `"2008"', add
label define uy11a_arryr_lbl 2009 `"2009"', add
label define uy11a_arryr_lbl 2010 `"2010"', add
label define uy11a_arryr_lbl 2011 `"2011"', add
label define uy11a_arryr_lbl 9999 `"Unknown"', add
label values uy11a_arryr uy11a_arryr_lbl

label define uy11a_restime_lbl 1 `"Has always resided here"'
label define uy11a_restime_lbl 2 `"Has not always resided here"', add
label define uy11a_restime_lbl 9 `"Unknown"', add
label values uy11a_restime uy11a_restime_lbl

label define uy11a_resdurr_lbl 00 `"0"'
label define uy11a_resdurr_lbl 01 `"1"', add
label define uy11a_resdurr_lbl 02 `"2"', add
label define uy11a_resdurr_lbl 03 `"3"', add
label define uy11a_resdurr_lbl 04 `"4"', add
label define uy11a_resdurr_lbl 05 `"5"', add
label define uy11a_resdurr_lbl 06 `"6"', add
label define uy11a_resdurr_lbl 07 `"7"', add
label define uy11a_resdurr_lbl 08 `"8"', add
label define uy11a_resdurr_lbl 09 `"9"', add
label define uy11a_resdurr_lbl 10 `"10"', add
label define uy11a_resdurr_lbl 11 `"11"', add
label define uy11a_resdurr_lbl 12 `"12"', add
label define uy11a_resdurr_lbl 13 `"13"', add
label define uy11a_resdurr_lbl 14 `"14"', add
label define uy11a_resdurr_lbl 15 `"15"', add
label define uy11a_resdurr_lbl 16 `"16"', add
label define uy11a_resdurr_lbl 17 `"17"', add
label define uy11a_resdurr_lbl 18 `"18"', add
label define uy11a_resdurr_lbl 19 `"19"', add
label define uy11a_resdurr_lbl 20 `"20"', add
label define uy11a_resdurr_lbl 21 `"21"', add
label define uy11a_resdurr_lbl 22 `"22"', add
label define uy11a_resdurr_lbl 23 `"23"', add
label define uy11a_resdurr_lbl 24 `"24"', add
label define uy11a_resdurr_lbl 25 `"25"', add
label define uy11a_resdurr_lbl 26 `"26"', add
label define uy11a_resdurr_lbl 27 `"27"', add
label define uy11a_resdurr_lbl 28 `"28"', add
label define uy11a_resdurr_lbl 29 `"29"', add
label define uy11a_resdurr_lbl 30 `"30 or more years"', add
label define uy11a_resdurr_lbl 98 `"Unknown"', add
label define uy11a_resdurr_lbl 99 `"NIU (not in universe)"', add
label values uy11a_resdurr uy11a_resdurr_lbl

label define uy11a_prevres_lbl 0 `"NIU (not in universe)"'
label define uy11a_prevres_lbl 1 `"In another locality or area of this department"', add
label define uy11a_prevres_lbl 2 `"In another department"', add
label define uy11a_prevres_lbl 3 `"In another country"', add
label define uy11a_prevres_lbl 8 `"Unknown"', add
label values uy11a_prevres uy11a_prevres_lbl

label define uy11a_prevdept_lbl 00 `"NIU (not in universe)"'
label define uy11a_prevdept_lbl 01 `"Montevideo"', add
label define uy11a_prevdept_lbl 02 `"Artigas"', add
label define uy11a_prevdept_lbl 03 `"Canelones"', add
label define uy11a_prevdept_lbl 04 `"Cerro Largo"', add
label define uy11a_prevdept_lbl 05 `"Colonia"', add
label define uy11a_prevdept_lbl 06 `"Durazno"', add
label define uy11a_prevdept_lbl 07 `"Flores"', add
label define uy11a_prevdept_lbl 08 `"Florida"', add
label define uy11a_prevdept_lbl 09 `"Lavalleja"', add
label define uy11a_prevdept_lbl 10 `"Maldonado"', add
label define uy11a_prevdept_lbl 11 `"Paysandú"', add
label define uy11a_prevdept_lbl 12 `"Río Negro"', add
label define uy11a_prevdept_lbl 13 `"Rivera"', add
label define uy11a_prevdept_lbl 14 `"Rocha"', add
label define uy11a_prevdept_lbl 15 `"Salto"', add
label define uy11a_prevdept_lbl 16 `"San Jose"', add
label define uy11a_prevdept_lbl 17 `"Soriano"', add
label define uy11a_prevdept_lbl 18 `"Tacuarembó"', add
label define uy11a_prevdept_lbl 19 `"Treinta Y Tres"', add
label values uy11a_prevdept uy11a_prevdept_lbl

label define uy11a_prevloce_lbl 00000 `"NIU (not in universe)"'
label define uy11a_prevloce_lbl 01020 `"Montevideo"', add
label define uy11a_prevloce_lbl 01621 `"Abayubá"', add
label define uy11a_prevloce_lbl 01622 `"Santiago Vázquez"', add
label define uy11a_prevloce_lbl 01721 `"Pajas Blancas"', add
label define uy11a_prevloce_lbl 01900 `"Department of Montevideo, rural areas"', add
label define uy11a_prevloce_lbl 01999 `"Department of Montevideo, locality not specified"', add
label define uy11a_prevloce_lbl 02220 `"Artigas"', add
label define uy11a_prevloce_lbl 02521 `"Bella Unión"', add
label define uy11a_prevloce_lbl 02522 `"Tomás Gomensoro"', add
label define uy11a_prevloce_lbl 02621 `"Baltasar Brum"', add
label define uy11a_prevloce_lbl 02725 `"Sequeira"', add
label define uy11a_prevloce_lbl 02999 `"Department of Artigas, locality not specified"', add
label define uy11a_prevloce_lbl 03030 `"Ciudad de la Costa"', add
label define uy11a_prevloce_lbl 03221 `"Las Piedras"', add
label define uy11a_prevloce_lbl 03320 `"Canelones"', add
label define uy11a_prevloce_lbl 03321 `"La Paz"', add
label define uy11a_prevloce_lbl 03322 `"Pando"', add
label define uy11a_prevloce_lbl 03323 `"Santa Lucía"', add
label define uy11a_prevloce_lbl 03421 `"Progreso"', add
label define uy11a_prevloce_lbl 03422 `"San Ramón"', add
label define uy11a_prevloce_lbl 03521 `"Barros Blancos"', add
label define uy11a_prevloce_lbl 03523 `"Colonia Nicolich"', add
label define uy11a_prevloce_lbl 03524 `"Joaquín Suárez"', add
label define uy11a_prevloce_lbl 03525 `"Paso Carrasco"', add
label define uy11a_prevloce_lbl 03526 `"Santa Rosa"', add
label define uy11a_prevloce_lbl 03527 `"Sauce"', add
label define uy11a_prevloce_lbl 03528 `"Tala"', add
label define uy11a_prevloce_lbl 03621 `"Atlántida"', add
label define uy11a_prevloce_lbl 03624 `"Cerrillos"', add
label define uy11a_prevloce_lbl 03625 `"Empalme Olmos"', add
label define uy11a_prevloce_lbl 03626 `"Migues"', add
label define uy11a_prevloce_lbl 03627 `"Parque del Plata"', add
label define uy11a_prevloce_lbl 03628 `"San Bautista"', add
label define uy11a_prevloce_lbl 03629 `"San Jacinto"', add
label define uy11a_prevloce_lbl 03631 `"Toledo"', add
label define uy11a_prevloce_lbl 03632 `"Montes"', add
label define uy11a_prevloce_lbl 03633 `"San José de Carrasco"', add
label define uy11a_prevloce_lbl 03722 `"Barra de Carrasco"', add
label define uy11a_prevloce_lbl 03723 `"Juanicó"', add
label define uy11a_prevloce_lbl 03724 `"La Floresta"', add
label define uy11a_prevloce_lbl 03726 `"Las Toscas"', add
label define uy11a_prevloce_lbl 03729 `"Salinas"', add
label define uy11a_prevloce_lbl 03730 `"San Antonio"', add
label define uy11a_prevloce_lbl 03731 `"International airport of Carrasco"', add
label define uy11a_prevloce_lbl 03732 `"Solymar"', add
label define uy11a_prevloce_lbl 03828 `"El Pinar"', add
label define uy11a_prevloce_lbl 03830 `"Pinamar - Pinepark"', add
label define uy11a_prevloce_lbl 03831 `"Lagomar"', add
label define uy11a_prevloce_lbl 03834 `"San Luis"', add
label define uy11a_prevloce_lbl 03835 `"Shangrilá"', add
label define uy11a_prevloce_lbl 03900 `"Department of Canelones, rural areas"', add
label define uy11a_prevloce_lbl 03953 `"Lomas de Solymar"', add
label define uy11a_prevloce_lbl 03959 `"Neptunia"', add
label define uy11a_prevloce_lbl 03999 `"""', add
label define uy11a_prevloce_lbl 04220 `"Melo"', add
label define uy11a_prevloce_lbl 04521 `"Fraile Muerto"', add
label define uy11a_prevloce_lbl 04522 `"Río Branco"', add
label define uy11a_prevloce_lbl 04621 `"Tupambaé"', add
label define uy11a_prevloce_lbl 04821 `"Aceguá"', add
label define uy11a_prevloce_lbl 04900 `"Department of Cerro Largo, rural areas"', add
label define uy11a_prevloce_lbl 04999 `"Department of Cerro Largo, locality not specified"', add
label define uy11a_prevloce_lbl 05320 `"Colonia del Sacramento"', add
label define uy11a_prevloce_lbl 05321 `"Carmelo"', add
label define uy11a_prevloce_lbl 05323 `"Juan Lacaze"', add
label define uy11a_prevloce_lbl 05421 `"Nueva Helvecia"', add
label define uy11a_prevloce_lbl 05422 `"Rosario"', add
label define uy11a_prevloce_lbl 05423 `"Nueva Palmira"', add
label define uy11a_prevloce_lbl 05521 `"Ombúes de Lavalle"', add
label define uy11a_prevloce_lbl 05522 `"Tarariras"', add
label define uy11a_prevloce_lbl 05621 `"Colonia Valdense"', add
label define uy11a_prevloce_lbl 05622 `"Florencio Sánchez"', add
label define uy11a_prevloce_lbl 05721 `"Conchillas"', add
label define uy11a_prevloce_lbl 05999 `"Department of Colonia, locality not specified"', add
label define uy11a_prevloce_lbl 06220 `"Durazno"', add
label define uy11a_prevloce_lbl 06421 `"Sarandí del Yí"', add
label define uy11a_prevloce_lbl 06521 `"Carmen"', add
label define uy11a_prevloce_lbl 06621 `"Blanquillo"', add
label define uy11a_prevloce_lbl 06622 `"La Paloma"', add
label define uy11a_prevloce_lbl 06721 `"Carlos Reyles"', add
label define uy11a_prevloce_lbl 06722 `"Centenario"', add
label define uy11a_prevloce_lbl 06790 `"Cerro Chato"', add
label define uy11a_prevloce_lbl 06900 `"Department of Durazno, rural areas"', add
label define uy11a_prevloce_lbl 06923 `"Chileno"', add
label define uy11a_prevloce_lbl 06999 `"Department of Durazno, locality not specified"', add
label define uy11a_prevloce_lbl 07320 `"Trinidad"', add
label define uy11a_prevloce_lbl 07721 `"Ismael Cortinas"', add
label define uy11a_prevloce_lbl 07999 `"Department of Flores, locality not specified"', add
label define uy11a_prevloce_lbl 08220 `"Florida"', add
label define uy11a_prevloce_lbl 08421 `"Sarandí Grande"', add
label define uy11a_prevloce_lbl 08521 `"Casupá"', add
label define uy11a_prevloce_lbl 08621 `"Cardal"', add
label define uy11a_prevloce_lbl 08622 `"Fray Marcos"', add
label define uy11a_prevloce_lbl 08623 `"Veinticinco de Agosto"', add
label define uy11a_prevloce_lbl 08624 `"Veinticinco de Mayo"', add
label define uy11a_prevloce_lbl 08721 `"Alejandro Gallinal"', add
label define uy11a_prevloce_lbl 08722 `"Capilla del Sauce"', add
label define uy11a_prevloce_lbl 08723 `"La Cruz"', add
label define uy11a_prevloce_lbl 08724 `"Nico Pérez"', add
label define uy11a_prevloce_lbl 08821 `"Chamizo"', add
label define uy11a_prevloce_lbl 08823 `"Mendoza"', add
label define uy11a_prevloce_lbl 08900 `"Department of Florida, rural areas"', add
label define uy11a_prevloce_lbl 08999 `"Department of Florida, locality not specified"', add
label define uy11a_prevloce_lbl 09220 `"Minas"', add
label define uy11a_prevloce_lbl 09521 `"José Batlle y Ordóñez"', add
label define uy11a_prevloce_lbl 09522 `"José Pedro Varela"', add
label define uy11a_prevloce_lbl 09621 `"Mariscala"', add
label define uy11a_prevloce_lbl 09622 `"Solís de Mataojo"', add
label define uy11a_prevloce_lbl 09721 `"Pirarajá"', add
label define uy11a_prevloce_lbl 09722 `"Zapicán"', add
label define uy11a_prevloce_lbl 09821 `"Colón"', add
label define uy11a_prevloce_lbl 09900 `"Department of Lavalleja, rural areas"', add
label define uy11a_prevloce_lbl 09999 `"Department of Lavalleja, locality not specified"', add
label define uy11a_prevloce_lbl 10320 `"Maldonado"', add
label define uy11a_prevloce_lbl 10321 `"San Carlos"', add
label define uy11a_prevloce_lbl 10521 `"Aiguá"', add
label define uy11a_prevloce_lbl 10522 `"Pan de Azúcar"', add
label define uy11a_prevloce_lbl 10523 `"Piriápolis"', add
label define uy11a_prevloce_lbl 10524 `"Punta del Este"', add
label define uy11a_prevloce_lbl 10940 `"Gregorio Aznárez"', add
label define uy11a_prevloce_lbl 10999 `"Department of Maldonado, locality not specified"', add
label define uy11a_prevloce_lbl 11120 `"Paysandú"', add
label define uy11a_prevloce_lbl 11521 `"Guichón"', add
label define uy11a_prevloce_lbl 11621 `"Quebracho"', add
label define uy11a_prevloce_lbl 11695 `"Tambores"', add
label define uy11a_prevloce_lbl 11723 `"Porvenir"', add
label define uy11a_prevloce_lbl 11827 `"Piedras Coloradas"', add
label define uy11a_prevloce_lbl 11900 `"Department of Paysandu, rural areas"', add
label define uy11a_prevloce_lbl 11926 `"Chapicuy"', add
label define uy11a_prevloce_lbl 11999 `"Department of Paysandu, locality not specified"', add
label define uy11a_prevloce_lbl 12320 `"Fray Bentos"', add
label define uy11a_prevloce_lbl 12421 `"Young"', add
label define uy11a_prevloce_lbl 12621 `"Nuevo Berlín"', add
label define uy11a_prevloce_lbl 12622 `"San Javier"', add
label define uy11a_prevloce_lbl 12723 `"Grecco"', add
label define uy11a_prevloce_lbl 12797 `"Algorta"', add
label define uy11a_prevloce_lbl 12900 `"Department of Rio Negro, rural areas"', add
label define uy11a_prevloce_lbl 12999 `"Department of Rio Negro, locality not specified"', add
label define uy11a_prevloce_lbl 13220 `"Rivera"', add
label define uy11a_prevloce_lbl 13521 `"Minas de Corrales"', add
label define uy11a_prevloce_lbl 13522 `"Tranqueras"', add
label define uy11a_prevloce_lbl 13621 `"Vichadero"', add
label define uy11a_prevloce_lbl 13900 `"Department of Rivera, rural areas"', add
label define uy11a_prevloce_lbl 13999 `"Department of Rivera, locality not specified"', add
label define uy11a_prevloce_lbl 14320 `"Rocha"', add
label define uy11a_prevloce_lbl 14421 `"Castillos"', add
label define uy11a_prevloce_lbl 14422 `"Lascano"', add
label define uy11a_prevloce_lbl 14521 `"Chuy"', add
label define uy11a_prevloce_lbl 14621 `"Cebollatí"', add
label define uy11a_prevloce_lbl 14622 `"Velázquez"', add
label define uy11a_prevloce_lbl 14721 `"18 de Julio"', add
label define uy11a_prevloce_lbl 14722 `"La Paloma"', add
label define uy11a_prevloce_lbl 14923 `"Barra del Chuy"', add
label define uy11a_prevloce_lbl 14999 `"Department of Rocha, locality not specified"', add
label define uy11a_prevloce_lbl 15120 `"Salto"', add
label define uy11a_prevloce_lbl 15522 `"Belén"', add
label define uy11a_prevloce_lbl 15523 `"Constitución"', add
label define uy11a_prevloce_lbl 15722 `"San Antonio"', add
label define uy11a_prevloce_lbl 15831 `"Sarandí del Arapey"', add
label define uy11a_prevloce_lbl 15948 `"Mataojito"', add
label define uy11a_prevloce_lbl 15949 `"Migliaro"', add
label define uy11a_prevloce_lbl 15999 `"Department of Salto, locality not specified"', add
label define uy11a_prevloce_lbl 16220 `"San José de Mayo"', add
label define uy11a_prevloce_lbl 16421 `"Libertad"', add
label define uy11a_prevloce_lbl 16521 `"Delta del Tigre y Villas"', add
label define uy11a_prevloce_lbl 16621 `"Rodríguez"', add
label define uy11a_prevloce_lbl 16721 `"Ituzaingó"', add
label define uy11a_prevloce_lbl 16824 `"Playa Pascual"', add
label define uy11a_prevloce_lbl 16900 `"Department of San Jose, rural areas"', add
label define uy11a_prevloce_lbl 16925 `"Capurro"', add
label define uy11a_prevloce_lbl 16929 `"Ecilda Paullier"', add
label define uy11a_prevloce_lbl 16945 `"Rincón del Pino"', add
label define uy11a_prevloce_lbl 16964 `"Carreta Quemada"', add
label define uy11a_prevloce_lbl 16999 `"Department of San Jose, locality not specified"', add
label define uy11a_prevloce_lbl 17220 `"Mercedes"', add
label define uy11a_prevloce_lbl 17321 `"Dolores"', add
label define uy11a_prevloce_lbl 17521 `"Cardona"', add
label define uy11a_prevloce_lbl 17621 `"José Enrique Rodó"', add
label define uy11a_prevloce_lbl 17622 `"Palmitas"', add
label define uy11a_prevloce_lbl 17623 `"Villa Soriano"', add
label define uy11a_prevloce_lbl 17624 `"Palmar"', add
label define uy11a_prevloce_lbl 17721 `"Egaña"', add
label define uy11a_prevloce_lbl 17722 `"Santa Catalina"', add
label define uy11a_prevloce_lbl 17798 `"Agraciada"', add
label define uy11a_prevloce_lbl 17823 `"Risso"', add
label define uy11a_prevloce_lbl 17900 `"Department of Soriano, rural areas"', add
label define uy11a_prevloce_lbl 17999 `"Department of Soriano, locality not specified"', add
label define uy11a_prevloce_lbl 18220 `"Tacuarembó"', add
label define uy11a_prevloce_lbl 18321 `"Paso de los Toros"', add
label define uy11a_prevloce_lbl 18521 `"San Gregorio de Polanco"', add
label define uy11a_prevloce_lbl 18695 `"Tambores"', add
label define uy11a_prevloce_lbl 18721 `"Achar"', add
label define uy11a_prevloce_lbl 18722 `"Ansina"', add
label define uy11a_prevloce_lbl 18723 `"Curtina"', add
label define uy11a_prevloce_lbl 18724 `"Paso del Cerro"', add
label define uy11a_prevloce_lbl 18824 `"Cuchilla de Caraguatá"', add
label define uy11a_prevloce_lbl 18828 `"Las Toscas"', add
label define uy11a_prevloce_lbl 18900 `"Department of Tacuarembo, rural areas"', add
label define uy11a_prevloce_lbl 18952 `"Laureles"', add
label define uy11a_prevloce_lbl 18999 `"Department of Tacuarembo, locality not specified"', add
label define uy11a_prevloce_lbl 19220 `"Treinta y Tres"', add
label define uy11a_prevloce_lbl 19521 `"Santa Clara de Olimar"', add
label define uy11a_prevloce_lbl 19522 `"Vergara"', add
label define uy11a_prevloce_lbl 19790 `"Cerro Chato"', add
label define uy11a_prevloce_lbl 19900 `"Department of Treinta y Tres, rural areas"', add
label define uy11a_prevloce_lbl 19999 `"Department of Treinta y Tres, locality not specified"', add
label values uy11a_prevloce uy11a_prevloce_lbl

label define uy11a_prevctry_lbl 00 `"NIU (not in universe)"'
label define uy11a_prevctry_lbl 05 `"Cuba"', add
label define uy11a_prevctry_lbl 10 `"Mexico"', add
label define uy11a_prevctry_lbl 20 `"Argentina"', add
label define uy11a_prevctry_lbl 21 `"Bolivia"', add
label define uy11a_prevctry_lbl 22 `"Brazil"', add
label define uy11a_prevctry_lbl 23 `"Chile"', add
label define uy11a_prevctry_lbl 24 `"Colombia"', add
label define uy11a_prevctry_lbl 25 `"Ecuador"', add
label define uy11a_prevctry_lbl 26 `"Paraguay"', add
label define uy11a_prevctry_lbl 27 `"Peru"', add
label define uy11a_prevctry_lbl 29 `"Venezuela"', add
label define uy11a_prevctry_lbl 30 `"England"', add
label define uy11a_prevctry_lbl 31 `"France"', add
label define uy11a_prevctry_lbl 32 `"Germany"', add
label define uy11a_prevctry_lbl 33 `"Italy"', add
label define uy11a_prevctry_lbl 34 `"Netherlands"', add
label define uy11a_prevctry_lbl 35 `"Poland"', add
label define uy11a_prevctry_lbl 37 `"Spain"', add
label define uy11a_prevctry_lbl 38 `"Sweden"', add
label define uy11a_prevctry_lbl 39 `"Switzerland"', add
label define uy11a_prevctry_lbl 60 `"Canada"', add
label define uy11a_prevctry_lbl 61 `"United States"', add
label define uy11a_prevctry_lbl 70 `"Israel"', add
label define uy11a_prevctry_lbl 80 `"Australia"', add
label define uy11a_prevctry_lbl 81 `"New Zealand"', add
label define uy11a_prevctry_lbl 90 `"Other Caribbean"', add
label define uy11a_prevctry_lbl 91 `"Other Central America"', add
label define uy11a_prevctry_lbl 92 `"Other South America"', add
label define uy11a_prevctry_lbl 93 `"Other Europe"', add
label define uy11a_prevctry_lbl 94 `"Other Africa"', add
label define uy11a_prevctry_lbl 95 `"Other Asia"', add
label define uy11a_prevctry_lbl 99 `"Unknown"', add
label values uy11a_prevctry uy11a_prevctry_lbl

label define uy11a_res5_lbl 0 `"NIU (not in universe)"'
label define uy11a_res5_lbl 1 `"In this locality or area"', add
label define uy11a_res5_lbl 2 `"In another locality or area of this department"', add
label define uy11a_res5_lbl 3 `"In another department"', add
label define uy11a_res5_lbl 4 `"In another country"', add
label define uy11a_res5_lbl 9 `"Unknown"', add
label values uy11a_res5 uy11a_res5_lbl

label define uy11a_res5dept_lbl 00 `"NIU (not in universe)"'
label define uy11a_res5dept_lbl 01 `"Montevideo"', add
label define uy11a_res5dept_lbl 02 `"Artigas"', add
label define uy11a_res5dept_lbl 03 `"Canelones"', add
label define uy11a_res5dept_lbl 04 `"Cerro Largo"', add
label define uy11a_res5dept_lbl 05 `"Colonia"', add
label define uy11a_res5dept_lbl 06 `"Durazno"', add
label define uy11a_res5dept_lbl 07 `"Flores"', add
label define uy11a_res5dept_lbl 08 `"Florida"', add
label define uy11a_res5dept_lbl 09 `"Lavalleja"', add
label define uy11a_res5dept_lbl 10 `"Maldonado"', add
label define uy11a_res5dept_lbl 11 `"Paysandu"', add
label define uy11a_res5dept_lbl 12 `"Rio Negro"', add
label define uy11a_res5dept_lbl 13 `"Rivera"', add
label define uy11a_res5dept_lbl 14 `"Rocha"', add
label define uy11a_res5dept_lbl 15 `"Salto"', add
label define uy11a_res5dept_lbl 16 `"San Jose"', add
label define uy11a_res5dept_lbl 17 `"Soriano"', add
label define uy11a_res5dept_lbl 18 `"Tacuarembo"', add
label define uy11a_res5dept_lbl 19 `"Treinta y Tres"', add
label values uy11a_res5dept uy11a_res5dept_lbl

label define uy11a_res5loce_lbl 00000 `"NIU (not in universe)"'
label define uy11a_res5loce_lbl 01020 `"Montevideo"', add
label define uy11a_res5loce_lbl 01999 `"Department of Montevideo, locality not specified"', add
label define uy11a_res5loce_lbl 02220 `"Artigas"', add
label define uy11a_res5loce_lbl 02521 `"Bella Unión"', add
label define uy11a_res5loce_lbl 02621 `"Baltasar Brum"', add
label define uy11a_res5loce_lbl 02822 `"Coronado"', add
label define uy11a_res5loce_lbl 02824 `"Cuaró"', add
label define uy11a_res5loce_lbl 02825 `"Guayubira"', add
label define uy11a_res5loce_lbl 02826 `"Javier de Viana"', add
label define uy11a_res5loce_lbl 02827 `"La Bolsa"', add
label define uy11a_res5loce_lbl 02828 `"Las Piedras"', add
label define uy11a_res5loce_lbl 02830 `"Pintadito"', add
label define uy11a_res5loce_lbl 02831 `"Port. de Hierro y Campodónico"', add
label define uy11a_res5loce_lbl 02832 `"Tamandua"', add
label define uy11a_res5loce_lbl 02833 `"Mones Quintela"', add
label define uy11a_res5loce_lbl 02921 `"Arrocera Riusa"', add
label define uy11a_res5loce_lbl 02928 `"Catalán Grande"', add
label define uy11a_res5loce_lbl 02932 `"Colonia Palma"', add
label define uy11a_res5loce_lbl 02935 `"Estiva"', add
label define uy11a_res5loce_lbl 02940 `"Palma Sola"', add
label define uy11a_res5loce_lbl 02945 `"Paso Farías"', add
label define uy11a_res5loce_lbl 02948 `"Piedra Pintada"', add
label define uy11a_res5loce_lbl 02949 `"Pintado Grande"', add
label define uy11a_res5loce_lbl 02950 `"Puntas de Tres Cruces"', add
label define uy11a_res5loce_lbl 02952 `"Rincón de Pacheco"', add
label define uy11a_res5loce_lbl 02953 `"Rincón de Pintado"', add
label define uy11a_res5loce_lbl 02954 `"Sarandí de Cuaró"', add
label define uy11a_res5loce_lbl 02956 `"Taruman"', add
label define uy11a_res5loce_lbl 02957 `"Topador"', add
label define uy11a_res5loce_lbl 02958 `"Cerro Ejido"', add
label define uy11a_res5loce_lbl 02959 `"Colonia Palma"', add
label define uy11a_res5loce_lbl 02999 `"Department of Artigas, locality not specified"', add
label define uy11a_res5loce_lbl 03030 `"Ciudad de la Costa"', add
label define uy11a_res5loce_lbl 03221 `"Las Piedras"', add
label define uy11a_res5loce_lbl 03320 `"Canelones"', add
label define uy11a_res5loce_lbl 03321 `"La Paz"', add
label define uy11a_res5loce_lbl 03322 `"Pando"', add
label define uy11a_res5loce_lbl 03323 `"Santa Lucía"', add
label define uy11a_res5loce_lbl 03421 `"Progreso"', add
label define uy11a_res5loce_lbl 03422 `"San Ramón"', add
label define uy11a_res5loce_lbl 03522 `"Fracc. Cno. Maldonado"', add
label define uy11a_res5loce_lbl 03527 `"Sauce"', add
label define uy11a_res5loce_lbl 03528 `"Tala"', add
label define uy11a_res5loce_lbl 03530 `"Fracc. Cno.del Andaluz y R.84"', add
label define uy11a_res5loce_lbl 03621 `"Atlántida"', add
label define uy11a_res5loce_lbl 03622 `"Estación Atlántida"', add
label define uy11a_res5loce_lbl 03627 `"Parque del Plata"', add
label define uy11a_res5loce_lbl 03631 `"Toledo"', add
label define uy11a_res5loce_lbl 03634 `"Fracc. sobre R.74"', add
label define uy11a_res5loce_lbl 03729 `"Salinas"', add
label define uy11a_res5loce_lbl 03732 `"Solymar"', add
label define uy11a_res5loce_lbl 03733 `"Villa Aeroparque"', add
label define uy11a_res5loce_lbl 03828 `"El Pinar"', add
label define uy11a_res5loce_lbl 03831 `"Lagomar"', add
label define uy11a_res5loce_lbl 03832 `"Olmos"', add
label define uy11a_res5loce_lbl 03833 `"Parada Cabrera"', add
label define uy11a_res5loce_lbl 03835 `"Shangrilá"', add
label define uy11a_res5loce_lbl 03880 `"Villa San Felipe"', add
label define uy11a_res5loce_lbl 03910 `"City Golf"', add
label define uy11a_res5loce_lbl 03913 `"Jardines de Pando"', add
label define uy11a_res5loce_lbl 03922 `"Argentino"', add
label define uy11a_res5loce_lbl 03924 `"Barrancas Coloradas"', add
label define uy11a_res5loce_lbl 03928 `"Campo Militar"', add
label define uy11a_res5loce_lbl 03929 `"Capilla de Cella"', add
label define uy11a_res5loce_lbl 03931 `"Cerrillos al Sur"', add
label define uy11a_res5loce_lbl 03932 `"Costa de Pando"', add
label define uy11a_res5loce_lbl 03934 `"Cruz de los Caminos"', add
label define uy11a_res5loce_lbl 03936 `"Cuchilla Verde"', add
label define uy11a_res5loce_lbl 03938 `"Echevarría"', add
label define uy11a_res5loce_lbl 03939 `"El Bosque"', add
label define uy11a_res5loce_lbl 03942 `"Estación Pedrera"', add
label define uy11a_res5loce_lbl 03943 `"Fortín de Santa Rosa"', add
label define uy11a_res5loce_lbl 03947 `"La Capilla"', add
label define uy11a_res5loce_lbl 03948 `"La Lucha"', add
label define uy11a_res5loce_lbl 03949 `"La Montañesa"', add
label define uy11a_res5loce_lbl 03950 `"La Palmita"', add
label define uy11a_res5loce_lbl 03951 `"La Paloma"', add
label define uy11a_res5loce_lbl 03954 `"Las Barreras"', add
label define uy11a_res5loce_lbl 03972 `"Puntas de Pantanoso"', add
label define uy11a_res5loce_lbl 03973 `"San Pedro"', add
label define uy11a_res5loce_lbl 03975 `"Santa Lucía del Este"', add
label define uy11a_res5loce_lbl 03983 `"Villa Nueva"', add
label define uy11a_res5loce_lbl 03986 `"Guazú - Virá"', add
label define uy11a_res5loce_lbl 03987 `"Colinas de Solymar"', add
label define uy11a_res5loce_lbl 03988 `"Barrio Remanso"', add
label define uy11a_res5loce_lbl 03989 `"Villa El Tato"', add
label define uy11a_res5loce_lbl 03992 `"Colinas de Carrasco"', add
label define uy11a_res5loce_lbl 03993 `"Lomas de Carrasco"', add
label define uy11a_res5loce_lbl 03997 `"Altos de la Tahona"', add
label define uy11a_res5loce_lbl 03999 `"Department of Canelones, locality not specified"', add
label define uy11a_res5loce_lbl 04220 `"Melo"', add
label define uy11a_res5loce_lbl 04521 `"Fraile Muerto"', add
label define uy11a_res5loce_lbl 04522 `"Río Branco"', add
label define uy11a_res5loce_lbl 04825 `"Hipódromo"', add
label define uy11a_res5loce_lbl 04829 `"Tres Islas"', add
label define uy11a_res5loce_lbl 04900 `"Department of Cerro Largo, rural areas"', add
label define uy11a_res5loce_lbl 04921 `"Aguirre"', add
label define uy11a_res5loce_lbl 04923 `"Arbolito"', add
label define uy11a_res5loce_lbl 04926 `"Buena Vista"', add
label define uy11a_res5loce_lbl 04929 `"Cañada Grande"', add
label define uy11a_res5loce_lbl 04935 `"Cuchilla de Melo"', add
label define uy11a_res5loce_lbl 04936 `"Cuchilla del Carmen"', add
label define uy11a_res5loce_lbl 04940 `"Esperanza"', add
label define uy11a_res5loce_lbl 04947 `"La Micaela"', add
label define uy11a_res5loce_lbl 04948 `"La Pedrera"', add
label define uy11a_res5loce_lbl 04950 `"Laguna del Junco"', add
label define uy11a_res5loce_lbl 04951 `"Las Limas"', add
label define uy11a_res5loce_lbl 04952 `"Mangrullo"', add
label define uy11a_res5loce_lbl 04953 `"María Isabel"', add
label define uy11a_res5loce_lbl 04955 `"Montecito"', add
label define uy11a_res5loce_lbl 04962 `"Piedra Alta"', add
label define uy11a_res5loce_lbl 04964 `"Puente del Chuy"', add
label define uy11a_res5loce_lbl 04965 `"Puntas de Tacuarí"', add
label define uy11a_res5loce_lbl 04966 `"Quebracho"', add
label define uy11a_res5loce_lbl 04968 `"Ramón Trigo"', add
label define uy11a_res5loce_lbl 04971 `"Rincón de los Coroneles"', add
label define uy11a_res5loce_lbl 04972 `"Rincón de los Montana"', add
label define uy11a_res5loce_lbl 04974 `"Rincón de Py"', add
label define uy11a_res5loce_lbl 04976 `"San Diego"', add
label define uy11a_res5loce_lbl 04979 `"Sarandí de Aceguá"', add
label define uy11a_res5loce_lbl 04982 `"Tres Boliches"', add
label define uy11a_res5loce_lbl 04985 `"Arrozal Casarone"', add
label define uy11a_res5loce_lbl 04988 `"Arachania"', add
label define uy11a_res5loce_lbl 04999 `"Department of Cerro Largo, locality not specified"', add
label define uy11a_res5loce_lbl 05320 `"Colonia del Sacramento"', add
label define uy11a_res5loce_lbl 05321 `"Carmelo"', add
label define uy11a_res5loce_lbl 05323 `"Juan Lacaze"', add
label define uy11a_res5loce_lbl 05421 `"Nueva Helvecia"', add
label define uy11a_res5loce_lbl 05422 `"Rosario"', add
label define uy11a_res5loce_lbl 05423 `"Nueva Palmira"', add
label define uy11a_res5loce_lbl 05452 `"Paso Antolín"', add
label define uy11a_res5loce_lbl 05522 `"Tarariras"', add
label define uy11a_res5loce_lbl 05723 `"El General"', add
label define uy11a_res5loce_lbl 05724 `"La Paz"', add
label define uy11a_res5loce_lbl 05791 `"Ismael Cortinas"', add
label define uy11a_res5loce_lbl 05826 `"El Semillero"', add
label define uy11a_res5loce_lbl 05829 `"Cerros de San Juan"', add
label define uy11a_res5loce_lbl 05830 `"Martín Chico"', add
label define uy11a_res5loce_lbl 05833 `"Piedra de los Indios"', add
label define uy11a_res5loce_lbl 05923 `"Campana"', add
label define uy11a_res5loce_lbl 05925 `"Barker"', add
label define uy11a_res5loce_lbl 05930 `"Belgrano Sur"', add
label define uy11a_res5loce_lbl 05931 `"Blanca Arena"', add
label define uy11a_res5loce_lbl 05932 `"Brisas del Plata"', add
label define uy11a_res5loce_lbl 05933 `"Campana"', add
label define uy11a_res5loce_lbl 05936 `"Cerros Negros"', add
label define uy11a_res5loce_lbl 05937 `"Colonia Arrue"', add
label define uy11a_res5loce_lbl 05940 `"Paraje Minuano"', add
label define uy11a_res5loce_lbl 05945 `"El Cuadro"', add
label define uy11a_res5loce_lbl 05948 `"Lagunita"', add
label define uy11a_res5loce_lbl 05950 `"Las Flores"', add
label define uy11a_res5loce_lbl 05951 `"Los Pinos"', add
label define uy11a_res5loce_lbl 05955 `"Chico Torino"', add
label define uy11a_res5loce_lbl 05962 `"Playa Fomento"', add
label define uy11a_res5loce_lbl 05966 `"Punta de Arenales"', add
label define uy11a_res5loce_lbl 05968 `"Puntas del Rosario (Zunin)"', add
label define uy11a_res5loce_lbl 05969 `"Radial Hernández"', add
label define uy11a_res5loce_lbl 05977 `"San Pedro"', add
label define uy11a_res5loce_lbl 05978 `"San Roque"', add
label define uy11a_res5loce_lbl 05981 `"Santa Rosa"', add
label define uy11a_res5loce_lbl 05983 `"Terminal - Artilleros"', add
label define uy11a_res5loce_lbl 05984 `"Tres Esquinas"', add
label define uy11a_res5loce_lbl 05989 `"Arrivillaga"', add
label define uy11a_res5loce_lbl 05992 `"Palo Solo"', add
label define uy11a_res5loce_lbl 05999 `"Department of Colonia, locality not specified"', add
label define uy11a_res5loce_lbl 06220 `"Durazno"', add
label define uy11a_res5loce_lbl 06421 `"Sarandí del Yí"', add
label define uy11a_res5loce_lbl 06921 `"Abella"', add
label define uy11a_res5loce_lbl 06925 `"Barrancas Coloradas"', add
label define uy11a_res5loce_lbl 06928 `"Blanquillo al Oeste"', add
label define uy11a_res5loce_lbl 06929 `"Capilla Farruco"', add
label define uy11a_res5loce_lbl 06930 `"Carpintería"', add
label define uy11a_res5loce_lbl 06934 `"Costa de Cuadra"', add
label define uy11a_res5loce_lbl 06937 `"El Pescado"', add
label define uy11a_res5loce_lbl 06938 `"Estación Chileno"', add
label define uy11a_res5loce_lbl 06939 `"Estación Parish"', add
label define uy11a_res5loce_lbl 06940 `"Feliciano"', add
label define uy11a_res5loce_lbl 06943 `"La Mazamorra"', add
label define uy11a_res5loce_lbl 06946 `"Las Cañas"', add
label define uy11a_res5loce_lbl 06949 `"María Cejas"', add
label define uy11a_res5loce_lbl 06952 `"Parada Sur Km 265"', add
label define uy11a_res5loce_lbl 06956 `"Puntas de Herrera"', add
label define uy11a_res5loce_lbl 06960 `"Rossell y Rius"', add
label define uy11a_res5loce_lbl 06965 `"San José de las Cañas"', add
label define uy11a_res5loce_lbl 06967 `"Sarandí del Río Negro"', add
label define uy11a_res5loce_lbl 06971 `"Las Cañas"', add
label define uy11a_res5loce_lbl 06999 `"Department of Durazno, locality not specified"', add
label define uy11a_res5loce_lbl 07320 `"Trinidad"', add
label define uy11a_res5loce_lbl 07921 `"Andresito"', add
label define uy11a_res5loce_lbl 07922 `"Arenal Chico"', add
label define uy11a_res5loce_lbl 07923 `"Colonia Alemana"', add
label define uy11a_res5loce_lbl 07925 `"Juan José Castro"', add
label define uy11a_res5loce_lbl 07926 `"Pueblito Piedra"', add
label define uy11a_res5loce_lbl 07927 `"Pueblo Pintos"', add
label define uy11a_res5loce_lbl 07928 `"Puntas de Chamanga"', add
label define uy11a_res5loce_lbl 07929 `"Puntas de Corral de Piedra"', add
label define uy11a_res5loce_lbl 07932 `"Puntas del Sauce"', add
label define uy11a_res5loce_lbl 07933 `"San Gregorio"', add
label define uy11a_res5loce_lbl 07934 `"Santa Adelaida"', add
label define uy11a_res5loce_lbl 07936 `"Talas de Maciel"', add
label define uy11a_res5loce_lbl 07938 `"Cerro Colorado"', add
label define uy11a_res5loce_lbl 07999 `"Department of Flores, locality not specified"', add
label define uy11a_res5loce_lbl 08220 `"Florida"', add
label define uy11a_res5loce_lbl 08421 `"Sarandí Grande"', add
label define uy11a_res5loce_lbl 08822 `"Goñi"', add
label define uy11a_res5loce_lbl 08896 `"Valentines"', add
label define uy11a_res5loce_lbl 08922 `"Arrayán"', add
label define uy11a_res5loce_lbl 08924 `"Chamizo Chico"', add
label define uy11a_res5loce_lbl 08925 `"Chingolas"', add
label define uy11a_res5loce_lbl 08926 `"Colonia Sánchez"', add
label define uy11a_res5loce_lbl 08929 `"Estación Urioste"', add
label define uy11a_res5loce_lbl 08931 `"Frigorífico Modelo"', add
label define uy11a_res5loce_lbl 08935 `"Las Chilcas"', add
label define uy11a_res5loce_lbl 08937 `"Molles del Pescado"', add
label define uy11a_res5loce_lbl 08938 `"Montecoral"', add
label define uy11a_res5loce_lbl 08939 `"Paso de los Novillos"', add
label define uy11a_res5loce_lbl 08951 `"Villa Vieja"', add
label define uy11a_res5loce_lbl 08992 `"Caserío La Fundación"', add
label define uy11a_res5loce_lbl 08993 `"La Macana"', add
label define uy11a_res5loce_lbl 08994 `"Estación Capilla del Sauce"', add
label define uy11a_res5loce_lbl 08999 `"Department of Florida, locality not specified"', add
label define uy11a_res5loce_lbl 09220 `"Minas"', add
label define uy11a_res5loce_lbl 09522 `"José Pedro Varela"', add
label define uy11a_res5loce_lbl 09821 `"Colón"', add
label define uy11a_res5loce_lbl 09823 `"Poblado Aramendía"', add
label define uy11a_res5loce_lbl 09824 `"Ruta 40 Km 27,5"', add
label define uy11a_res5loce_lbl 09922 `"Alonso"', add
label define uy11a_res5loce_lbl 09923 `"Andreoni"', add
label define uy11a_res5loce_lbl 09925 `"Carnales"', add
label define uy11a_res5loce_lbl 09926 `"Cerro Pelado"', add
label define uy11a_res5loce_lbl 09929 `"El Soldado"', add
label define uy11a_res5loce_lbl 09931 `"Estación Solís"', add
label define uy11a_res5loce_lbl 09932 `"Gaetán"', add
label define uy11a_res5loce_lbl 09933 `"Godoy"', add
label define uy11a_res5loce_lbl 09939 `"Marmarajá"', add
label define uy11a_res5loce_lbl 09940 `"Molles de Gutiérrez"', add
label define uy11a_res5loce_lbl 09942 `"Polanco Norte"', add
label define uy11a_res5loce_lbl 09944 `"Puntas de Barriga Negra"', add
label define uy11a_res5loce_lbl 09946 `"Retamosa"', add
label define uy11a_res5loce_lbl 09947 `"Rincón de Mariscala"', add
label define uy11a_res5loce_lbl 09948 `"Rincón de Cebollatí"', add
label define uy11a_res5loce_lbl 09956 `"Villa Serrana"', add
label define uy11a_res5loce_lbl 09991 `"Illescas"', add
label define uy11a_res5loce_lbl 09999 `"Department of Lavalleja, locality not specified"', add
label define uy11a_res5loce_lbl 10320 `"Maldonado"', add
label define uy11a_res5loce_lbl 10321 `"San Carlos"', add
label define uy11a_res5loce_lbl 10523 `"Piriápolis"', add
label define uy11a_res5loce_lbl 10524 `"Punta del Este"', add
label define uy11a_res5loce_lbl 10822 `"Garzón"', add
label define uy11a_res5loce_lbl 10823 `"Gerona"', add
label define uy11a_res5loce_lbl 10825 `"Las Flores - Estación"', add
label define uy11a_res5loce_lbl 10826 `"Los Talas"', add
label define uy11a_res5loce_lbl 10832 `"Villa Delia"', add
label define uy11a_res5loce_lbl 10833 `"San Rafael - El Placer"', add
label define uy11a_res5loce_lbl 10921 `"Abra de Castellanos"', add
label define uy11a_res5loce_lbl 10922 `"Abra de Perdomo"', add
label define uy11a_res5loce_lbl 10923 `"Barra del Sauce"', add
label define uy11a_res5loce_lbl 10925 `"Barrio Los Aromos"', add
label define uy11a_res5loce_lbl 10926 `"Bella Vista"', add
label define uy11a_res5loce_lbl 10928 `"Calera Ramos"', add
label define uy11a_res5loce_lbl 10930 `"Carapé"', add
label define uy11a_res5loce_lbl 10931 `"Cerros Azules"', add
label define uy11a_res5loce_lbl 10932 `"Coronilla"', add
label define uy11a_res5loce_lbl 10934 `"El Chorro"', add
label define uy11a_res5loce_lbl 10935 `"El Edén"', add
label define uy11a_res5loce_lbl 10936 `"El Tesoro"', add
label define uy11a_res5loce_lbl 10939 `"Faro José Ignacio"', add
label define uy11a_res5loce_lbl 10944 `"La Capuera"', add
label define uy11a_res5loce_lbl 10946 `"Los Ceibos"', add
label define uy11a_res5loce_lbl 10949 `"Partido Norte"', add
label define uy11a_res5loce_lbl 10955 `"Playa Verde"', add
label define uy11a_res5loce_lbl 10958 `"Punta Colorada"', add
label define uy11a_res5loce_lbl 10959 `"Punta Negra"', add
label define uy11a_res5loce_lbl 10960 `"Puntas de San Ignacio"', add
label define uy11a_res5loce_lbl 10965 `"Salamanca"', add
label define uy11a_res5loce_lbl 10967 `"Santa Mónica"', add
label define uy11a_res5loce_lbl 10973 `"Balneario Buenos Aires"', add
label define uy11a_res5loce_lbl 10982 `"Santa Mónica"', add
label define uy11a_res5loce_lbl 10984 `"Parque Medina"', add
label define uy11a_res5loce_lbl 10985 `"Arenas de José Ignacio"', add
label define uy11a_res5loce_lbl 10986 `"La Sonrisa"', add
label define uy11a_res5loce_lbl 10999 `"Department of Maldonado, locality not specified"', add
label define uy11a_res5loce_lbl 11120 `"Paysandú"', add
label define uy11a_res5loce_lbl 11521 `"Guichón"', add
label define uy11a_res5loce_lbl 11621 `"Quebracho"', add
label define uy11a_res5loce_lbl 11797 `"Algorta"', add
label define uy11a_res5loce_lbl 11829 `"Puntas de Buricayupí"', add
label define uy11a_res5loce_lbl 11830 `"San Félix"', add
label define uy11a_res5loce_lbl 11894 `"Piedra Sola"', add
label define uy11a_res5loce_lbl 11922 `"Araújo"', add
label define uy11a_res5loce_lbl 11929 `"El Eucaliptus"', add
label define uy11a_res5loce_lbl 11930 `"El Horno"', add
label define uy11a_res5loce_lbl 11933 `"Guayabos"', add
label define uy11a_res5loce_lbl 11937 `"Orgoroso"', add
label define uy11a_res5loce_lbl 11938 `"Palmar del Quebracho"', add
label define uy11a_res5loce_lbl 11939 `"Pandule"', add
label define uy11a_res5loce_lbl 11944 `"Sauce de Abajo"', add
label define uy11a_res5loce_lbl 11949 `"Valdez"', add
label define uy11a_res5loce_lbl 11950 `"Zeballos"', add
label define uy11a_res5loce_lbl 11951 `"Chacras de Paysandú"', add
label define uy11a_res5loce_lbl 11952 `"Rivas"', add
label define uy11a_res5loce_lbl 11954 `"Puntas de Arroyo Negro"', add
label define uy11a_res5loce_lbl 11955 `"Estación Porvenir"', add
label define uy11a_res5loce_lbl 11956 `"Cuchilla de Fuego"', add
label define uy11a_res5loce_lbl 11958 `"Queguayar"', add
label define uy11a_res5loce_lbl 11999 `"Department of Paysandu, locality not specified"', add
label define uy11a_res5loce_lbl 12320 `"Fray Bentos"', add
label define uy11a_res5loce_lbl 12421 `"Young"', add
label define uy11a_res5loce_lbl 12822 `"Los Ranchos"', add
label define uy11a_res5loce_lbl 12825 `"Sauce"', add
label define uy11a_res5loce_lbl 12826 `"Villa General Borges"', add
label define uy11a_res5loce_lbl 12919 `"Islas"', add
label define uy11a_res5loce_lbl 12921 `"Abrigo"', add
label define uy11a_res5loce_lbl 12923 `"Bellaco"', add
label define uy11a_res5loce_lbl 12924 `"Islas de Arguello"', add
label define uy11a_res5loce_lbl 12926 `"la Florida"', add
label define uy11a_res5loce_lbl 12932 `"Menafra"', add
label define uy11a_res5loce_lbl 12934 `"Paso Arroyo Don Esteban"', add
label define uy11a_res5loce_lbl 12935 `"Paso de los Cobres"', add
label define uy11a_res5loce_lbl 12937 `"Rolón"', add
label define uy11a_res5loce_lbl 12938 `"Sánchez Chico"', add
label define uy11a_res5loce_lbl 12942 `"Sarandí Chico"', add
label define uy11a_res5loce_lbl 12943 `"Tres Bocas"', add
label define uy11a_res5loce_lbl 12945 `"Tres Quintas"', add
label define uy11a_res5loce_lbl 12999 `"Department of Rio Negro, locality not specified"', add
label define uy11a_res5loce_lbl 13220 `"Rivera"', add
label define uy11a_res5loce_lbl 13521 `"Minas de Corrales"', add
label define uy11a_res5loce_lbl 13522 `"Tranqueras"', add
label define uy11a_res5loce_lbl 13621 `"Vichadero"', add
label define uy11a_res5loce_lbl 13822 `"Arroyo Blanco"', add
label define uy11a_res5loce_lbl 13824 `"Cerro Pelado"', add
label define uy11a_res5loce_lbl 13825 `"Cerro Caqueiro"', add
label define uy11a_res5loce_lbl 13826 `"Chilca de Caraguatá"', add
label define uy11a_res5loce_lbl 13827 `"Cortume"', add
label define uy11a_res5loce_lbl 13828 `"Curticeiras"', add
label define uy11a_res5loce_lbl 13830 `"Paso Hospital"', add
label define uy11a_res5loce_lbl 13831 `"Lapuente"', add
label define uy11a_res5loce_lbl 13833 `"Moirones"', add
label define uy11a_res5loce_lbl 13835 `"San Gregorio"', add
label define uy11a_res5loce_lbl 13838 `"Lagunón"', add
label define uy11a_res5loce_lbl 13921 `"Alborada"', add
label define uy11a_res5loce_lbl 13922 `"Amarillo"', add
label define uy11a_res5loce_lbl 13923 `"Batoví"', add
label define uy11a_res5loce_lbl 13924 `"Berruti"', add
label define uy11a_res5loce_lbl 13925 `"Blanquillos"', add
label define uy11a_res5loce_lbl 13928 `"Carpintería de Yaguarí"', add
label define uy11a_res5loce_lbl 13930 `"Cerro Alegre"', add
label define uy11a_res5loce_lbl 13931 `"Cerros de la Calera"', add
label define uy11a_res5loce_lbl 13933 `"Coronilla"', add
label define uy11a_res5loce_lbl 13935 `"Cruz de San Pedro"', add
label define uy11a_res5loce_lbl 13936 `"Cuchilla de Tres Cerros"', add
label define uy11a_res5loce_lbl 13939 `"La Chilca"', add
label define uy11a_res5loce_lbl 13940 `"Lagos del Norte"', add
label define uy11a_res5loce_lbl 13941 `"Laureles"', add
label define uy11a_res5loce_lbl 13945 `"Minas de Zapucay"', add
label define uy11a_res5loce_lbl 13946 `"Parada Medina"', add
label define uy11a_res5loce_lbl 13947 `"Paso de Amarillo"', add
label define uy11a_res5loce_lbl 13951 `"Paso del Parque"', add
label define uy11a_res5loce_lbl 13955 `"Rincón de Rodríguez"', add
label define uy11a_res5loce_lbl 13957 `"Rincón los Tres Cerros"', add
label define uy11a_res5loce_lbl 13958 `"Rubio Chico"', add
label define uy11a_res5loce_lbl 13959 `"Sarandí de Río Negro"', add
label define uy11a_res5loce_lbl 13962 `"Yaguarí"', add
label define uy11a_res5loce_lbl 13963 `"Zanja Honda 01"', add
label define uy11a_res5loce_lbl 13964 `"Zanja Honda 02"', add
label define uy11a_res5loce_lbl 13999 `"Department of Rivera, locality not specified"', add
label define uy11a_res5loce_lbl 14320 `"Rocha"', add
label define uy11a_res5loce_lbl 14421 `"Castillos"', add
label define uy11a_res5loce_lbl 14422 `"Lascano"', add
label define uy11a_res5loce_lbl 14521 `"Chuy"', add
label define uy11a_res5loce_lbl 14721 `"18 de Julio"', add
label define uy11a_res5loce_lbl 14821 `"La Aguada y Costa Azul"', add
label define uy11a_res5loce_lbl 14822 `"Diecinueve de Abril"', add
label define uy11a_res5loce_lbl 14825 `"Paso Barrancas"', add
label define uy11a_res5loce_lbl 14926 `"Barrio Torres"', add
label define uy11a_res5loce_lbl 14927 `"Buena Vista"', add
label define uy11a_res5loce_lbl 14928 `"Cabo Polonio"', add
label define uy11a_res5loce_lbl 14932 `"Cuchilla de Garzón"', add
label define uy11a_res5loce_lbl 14933 `"Cuchilla de India Muerta"', add
label define uy11a_res5loce_lbl 14934 `"El Canelón"', add
label define uy11a_res5loce_lbl 14935 `"El Caracol"', add
label define uy11a_res5loce_lbl 14948 `"Parallé"', add
label define uy11a_res5loce_lbl 14951 `"Picada Techera Arrocera"', add
label define uy11a_res5loce_lbl 14959 `"Arachania"', add
label define uy11a_res5loce_lbl 14960 `"Pta. Rubia y Sta. Isabel de la Pedrera"', add
label define uy11a_res5loce_lbl 14999 `"Department of Rocha, locality not specified"', add
label define uy11a_res5loce_lbl 15120 `"Salto"', add
label define uy11a_res5loce_lbl 15722 `"San Antonio"', add
label define uy11a_res5loce_lbl 15723 `"Chacras de Belén"', add
label define uy11a_res5loce_lbl 15724 `"Itapebí"', add
label define uy11a_res5loce_lbl 15823 `"Campo de Todos"', add
label define uy11a_res5loce_lbl 15825 `"Cuchilla de Guaviyú"', add
label define uy11a_res5loce_lbl 15828 `"Palomas"', add
label define uy11a_res5loce_lbl 15830 `"Quintana"', add
label define uy11a_res5loce_lbl 15832 `"Saucedo"', add
label define uy11a_res5loce_lbl 15922 `"Alvez"', add
label define uy11a_res5loce_lbl 15925 `"Baltasar Brum"', add
label define uy11a_res5loce_lbl 15927 `"Cancela"', add
label define uy11a_res5loce_lbl 15932 `"Cerrillada"', add
label define uy11a_res5loce_lbl 15935 `"Cerros de Vera"', add
label define uy11a_res5loce_lbl 15936 `"El Espinillar"', add
label define uy11a_res5loce_lbl 15939 `"Garibaldi"', add
label define uy11a_res5loce_lbl 15943 `"Termas del Arapey"', add
label define uy11a_res5loce_lbl 15945 `"Laureles"', add
label define uy11a_res5loce_lbl 15947 `"Mario Rubio"', add
label define uy11a_res5loce_lbl 15948 `"Mataojito"', add
label define uy11a_res5loce_lbl 15951 `"Parada Herrería"', add
label define uy11a_res5loce_lbl 15953 `"Paso del Tropero"', add
label define uy11a_res5loce_lbl 15956 `"Pepe Núñez"', add
label define uy11a_res5loce_lbl 15957 `"Paso de las Piedras de Arerunguá"', add
label define uy11a_res5loce_lbl 15961 `"Sarandí"', add
label define uy11a_res5loce_lbl 15962 `"Sauce Chico"', add
label define uy11a_res5loce_lbl 15965 `"Rincón de Valentín"', add
label define uy11a_res5loce_lbl 15968 `"Arapey"', add
label define uy11a_res5loce_lbl 15969 `"Parque José Luis"', add
label define uy11a_res5loce_lbl 15972 `"Russo"', add
label define uy11a_res5loce_lbl 15973 `"Paso Cementerio"', add
label define uy11a_res5loce_lbl 15999 `"Department of Salto, locality not specified"', add
label define uy11a_res5loce_lbl 16220 `"San José de Mayo"', add
label define uy11a_res5loce_lbl 16421 `"Libertad"', add
label define uy11a_res5loce_lbl 16722 `"Santa Mónica"', add
label define uy11a_res5loce_lbl 16793 `"Ismael Cortinas"', add
label define uy11a_res5loce_lbl 16822 `"González"', add
label define uy11a_res5loce_lbl 16824 `"Playa Pascual"', add
label define uy11a_res5loce_lbl 16825 `"18 de Julio (Pueblo Nuevo)"', add
label define uy11a_res5loce_lbl 16829 `"Safici (Parque Postel)"', add
label define uy11a_res5loce_lbl 16921 `"Arroyo Llano"', add
label define uy11a_res5loce_lbl 16922 `"Bella Vista"', add
label define uy11a_res5loce_lbl 16924 `"Bocas del Cufré"', add
label define uy11a_res5loce_lbl 16928 `"Cuchilla del Vichadero"', add
label define uy11a_res5loce_lbl 16930 `"Escudero"', add
label define uy11a_res5loce_lbl 16931 `"Fajina"', add
label define uy11a_res5loce_lbl 16933 `"La Boyada"', add
label define uy11a_res5loce_lbl 16934 `"La Boyada Ruta1 Km 91,2"', add
label define uy11a_res5loce_lbl 16939 `"Cañada Grande"', add
label define uy11a_res5loce_lbl 16940 `"Puntas de Gregorio"', add
label define uy11a_res5loce_lbl 16948 `"Tropas Viejas"', add
label define uy11a_res5loce_lbl 16951 `"Aguas Corrientes"', add
label define uy11a_res5loce_lbl 16960 `"Cerámicas del Sur"', add
label define uy11a_res5loce_lbl 16965 `"Costas de Pereira"', add
label define uy11a_res5loce_lbl 16999 `"Department of San Jose, locality not specified"', add
label define uy11a_res5loce_lbl 17220 `"Mercedes"', add
label define uy11a_res5loce_lbl 17321 `"Dolores"', add
label define uy11a_res5loce_lbl 17521 `"Cardona"', add
label define uy11a_res5loce_lbl 17793 `"Ismael Cortinas"', add
label define uy11a_res5loce_lbl 17821 `"Cañada Paraguaya"', add
label define uy11a_res5loce_lbl 17822 `"Castillos"', add
label define uy11a_res5loce_lbl 17921 `"Arroyo Grande"', add
label define uy11a_res5loce_lbl 17923 `"Bequeló Ruta 14 Km 7"', add
label define uy11a_res5loce_lbl 17924 `"Bizcocho"', add
label define uy11a_res5loce_lbl 17928 `"El Tala"', add
label define uy11a_res5loce_lbl 17929 `"Jackson"', add
label define uy11a_res5loce_lbl 17930 `"La Concordia"', add
label define uy11a_res5loce_lbl 17932 `"Olivera"', add
label define uy11a_res5loce_lbl 17933 `"Pamer"', add
label define uy11a_res5loce_lbl 17935 `"San Dios"', add
label define uy11a_res5loce_lbl 17937 `"Sarandí Chico"', add
label define uy11a_res5loce_lbl 17939 `"Palo Solo"', add
label define uy11a_res5loce_lbl 17999 `"Department of Soriano, locality not specified"', add
label define uy11a_res5loce_lbl 18220 `"Tacuarembó"', add
label define uy11a_res5loce_lbl 18321 `"Paso de los Toros"', add
label define uy11a_res5loce_lbl 18521 `"San Gregorio de Polanco"', add
label define uy11a_res5loce_lbl 18724 `"Paso del Cerro"', add
label define uy11a_res5loce_lbl 18823 `"Clavijo"', add
label define uy11a_res5loce_lbl 18825 `"Cuchilla del Ombú"', add
label define uy11a_res5loce_lbl 18831 `"Pueblo del Barro"', add
label define uy11a_res5loce_lbl 18835 `"Zapará"', add
label define uy11a_res5loce_lbl 18921 `"Aldea San Joaquín"', add
label define uy11a_res5loce_lbl 18922 `"Ataques"', add
label define uy11a_res5loce_lbl 18926 `"Cardozo Chico"', add
label define uy11a_res5loce_lbl 18928 `"Chamberlain"', add
label define uy11a_res5loce_lbl 18929 `"Colman"', add
label define uy11a_res5loce_lbl 18930 `"Cuchilla de la Palma"', add
label define uy11a_res5loce_lbl 18931 `"Cuchilla de Peralta"', add
label define uy11a_res5loce_lbl 18933 `"La Aldea"', add
label define uy11a_res5loce_lbl 18934 `"La Bolsa 01"', add
label define uy11a_res5loce_lbl 18936 `"La Humedad"', add
label define uy11a_res5loce_lbl 18937 `"La Pedrera"', add
label define uy11a_res5loce_lbl 18939 `"Lambaré"', add
label define uy11a_res5loce_lbl 18941 `"Las Arenas"', add
label define uy11a_res5loce_lbl 18945 `"Los Feos"', add
label define uy11a_res5loce_lbl 18946 `"Los Ferreira"', add
label define uy11a_res5loce_lbl 18955 `"Los Rosas"', add
label define uy11a_res5loce_lbl 18958 `"Laura"', add
label define uy11a_res5loce_lbl 18960 `"Matutina"', add
label define uy11a_res5loce_lbl 18963 `"Montevideo Chico"', add
label define uy11a_res5loce_lbl 18964 `"Paso de Ceferino"', add
label define uy11a_res5loce_lbl 18968 `"Picada de Cuello"', add
label define uy11a_res5loce_lbl 18970 `"Quiebra Yugos"', add
label define uy11a_res5loce_lbl 18971 `"Cerro de Pastoreo"', add
label define uy11a_res5loce_lbl 18972 `"Rincón de la Laguna"', add
label define uy11a_res5loce_lbl 18973 `"Rincón de Giloca"', add
label define uy11a_res5loce_lbl 18978 `"Santa Rita"', add
label define uy11a_res5loce_lbl 18979 `"Santander"', add
label define uy11a_res5loce_lbl 18984 `"Treinta y Tres ó Cañas"', add
label define uy11a_res5loce_lbl 18988 `"Zapucay"', add
label define uy11a_res5loce_lbl 18990 `"Puntas de Cinco Sauces"', add
label define uy11a_res5loce_lbl 18991 `"Rincón de Pereira"', add
label define uy11a_res5loce_lbl 18999 `"Department of Tacuarembo, locality not specified"', add
label define uy11a_res5loce_lbl 19220 `"Treinta y Tres"', add
label define uy11a_res5loce_lbl 19521 `"Santa Clara de Olimar"', add
label define uy11a_res5loce_lbl 19522 `"Vergara"', add
label define uy11a_res5loce_lbl 19821 `"Estación Rincón"', add
label define uy11a_res5loce_lbl 19822 `"Isla Patrulla (María Isabel)"', add
label define uy11a_res5loce_lbl 19823 `"Picada Techera"', add
label define uy11a_res5loce_lbl 19921 `"Acosta"', add
label define uy11a_res5loce_lbl 19923 `"Arrozal Florencio Barreto"', add
label define uy11a_res5loce_lbl 19927 `"Cañada Chica"', add
label define uy11a_res5loce_lbl 19928 `"Cañada de los Cuervos"', add
label define uy11a_res5loce_lbl 19931 `"Cipa Olimar"', add
label define uy11a_res5loce_lbl 19936 `"Julio María Sanz"', add
label define uy11a_res5loce_lbl 19938 `"La Lata"', add
label define uy11a_res5loce_lbl 19939 `"Lechiguana de Corrales"', add
label define uy11a_res5loce_lbl 19940 `"Arrocera Los Ceibos"', add
label define uy11a_res5loce_lbl 19941 `"María Albina"', add
label define uy11a_res5loce_lbl 19947 `"Puntas del Parao"', add
label define uy11a_res5loce_lbl 19948 `"Rincón de Gadea"', add
label define uy11a_res5loce_lbl 19951 `"Sierra del Yerbal"', add
label define uy11a_res5loce_lbl 19953 `"Tres Bocas"', add
label define uy11a_res5loce_lbl 19999 `"Department of Treinta y Tres, locality not specified"', add
label values uy11a_res5loce uy11a_res5loce_lbl

label define uy11a_res5ctry_lbl 00 `"NIU (not in universe)"'
label define uy11a_res5ctry_lbl 05 `"Cuba"', add
label define uy11a_res5ctry_lbl 10 `"Mexico"', add
label define uy11a_res5ctry_lbl 20 `"Argentina"', add
label define uy11a_res5ctry_lbl 22 `"Brazil"', add
label define uy11a_res5ctry_lbl 23 `"Chile"', add
label define uy11a_res5ctry_lbl 24 `"Colombia"', add
label define uy11a_res5ctry_lbl 26 `"Paraguay"', add
label define uy11a_res5ctry_lbl 27 `"Peru"', add
label define uy11a_res5ctry_lbl 29 `"Venezuela"', add
label define uy11a_res5ctry_lbl 30 `"England"', add
label define uy11a_res5ctry_lbl 31 `"France"', add
label define uy11a_res5ctry_lbl 32 `"Germany"', add
label define uy11a_res5ctry_lbl 33 `"Italy"', add
label define uy11a_res5ctry_lbl 37 `"Spain"', add
label define uy11a_res5ctry_lbl 60 `"Canada"', add
label define uy11a_res5ctry_lbl 61 `"United States"', add
label define uy11a_res5ctry_lbl 90 `"Other Caribbean"', add
label define uy11a_res5ctry_lbl 91 `"Other Central America"', add
label define uy11a_res5ctry_lbl 92 `"Other South America"', add
label define uy11a_res5ctry_lbl 93 `"Other Europe"', add
label define uy11a_res5ctry_lbl 94 `"Other Africa"', add
label define uy11a_res5ctry_lbl 95 `"Other Asia"', add
label define uy11a_res5ctry_lbl 96 `"Other Oceania"', add
label define uy11a_res5ctry_lbl 99 `"Unknown"', add
label values uy11a_res5ctry uy11a_res5ctry_lbl

label define uy11a_edearly_lbl 0 `"NIU (not in universe)"'
label define uy11a_edearly_lbl 1 `"Yes, attends a public center"', add
label define uy11a_edearly_lbl 2 `"Yes, attends a CAIF"', add
label define uy11a_edearly_lbl 3 `"Yes, attends a private center"', add
label define uy11a_edearly_lbl 4 `"Does not attend"', add
label define uy11a_edearly_lbl 9 `"Unknown"', add
label values uy11a_edearly uy11a_edearly_lbl

label define uy11a_school_lbl 0 `"NIU (not in universe)"'
label define uy11a_school_lbl 1 `"Yes, attends a public establishment"', add
label define uy11a_school_lbl 2 `"Yes, attends a private establishment"', add
label define uy11a_school_lbl 3 `"Does not attend, but has attended"', add
label define uy11a_school_lbl 4 `"Never attended"', add
label define uy11a_school_lbl 9 `"Unknown"', add
label values uy11a_school uy11a_school_lbl

label define uy11a_schloc_lbl 0 `"NIU (not in universe)"'
label define uy11a_schloc_lbl 1 `"In this locality or area"', add
label define uy11a_schloc_lbl 2 `"In another locality or area of this department"', add
label define uy11a_schloc_lbl 3 `"In another department"', add
label define uy11a_schloc_lbl 4 `"In another country"', add
label define uy11a_schloc_lbl 5 `"Does not apply (distance learning)"', add
label values uy11a_schloc uy11a_schloc_lbl

label define uy11a_schdept_lbl 00 `"NIU (not in universe)"'
label define uy11a_schdept_lbl 01 `"Montevideo"', add
label define uy11a_schdept_lbl 03 `"Canelones"', add
label define uy11a_schdept_lbl 05 `"Colonia"', add
label define uy11a_schdept_lbl 06 `"Durazno"', add
label define uy11a_schdept_lbl 08 `"Florida"', add
label define uy11a_schdept_lbl 09 `"Lavalleja"', add
label define uy11a_schdept_lbl 10 `"Maldonado"', add
label define uy11a_schdept_lbl 11 `"Paysandú"', add
label define uy11a_schdept_lbl 15 `"Salto"', add
label define uy11a_schdept_lbl 17 `"Soriano"', add
label define uy11a_schdept_lbl 18 `"Tacuarembó"', add
label define uy11a_schdept_lbl 19 `"Treinta Y Tres"', add
label define uy11a_schdept_lbl 20 `"Other department"', add
label values uy11a_schdept uy11a_schdept_lbl

label define uy11a_schctry_lbl 00 `"NIU (not in universe)"'
label define uy11a_schctry_lbl 20 `"Argentina"', add
label define uy11a_schctry_lbl 22 `"Brazil"', add
label define uy11a_schctry_lbl 99 `"Unknown"', add
label values uy11a_schctry uy11a_schctry_lbl

label define uy11a_edattend_lbl 00 `"NIU (not in universe)"'
label define uy11a_edattend_lbl 01 `"Preschool"', add
label define uy11a_edattend_lbl 02 `"Elementary school"', add
label define uy11a_edattend_lbl 03 `"Elementary school, special education"', add
label define uy11a_edattend_lbl 04 `"Junior high school, grades 1 to 3"', add
label define uy11a_edattend_lbl 05 `"Junior high school UTU, grades 1 to 3"', add
label define uy11a_edattend_lbl 06 `"High school, grades 4 to 6"', add
label define uy11a_edattend_lbl 07 `"High school UTU, grades 4 to 6"', add
label define uy11a_edattend_lbl 08 `"Technical school or professional formation UTU"', add
label define uy11a_edattend_lbl 09 `"Teacher training"', add
label define uy11a_edattend_lbl 10 `"Post-secondary non-university education"', add
label define uy11a_edattend_lbl 11 `"University or college institute (bachelor's degree)"', add
label define uy11a_edattend_lbl 12 `"Graduate studies (diploma, master's degree, or doctorate)"', add
label define uy11a_edattend_lbl 99 `"Unknown"', add
label values uy11a_edattend uy11a_edattend_lbl

label define uy11a_edlevel_lbl 00 `"NIU (not in universe)"'
label define uy11a_edlevel_lbl 01 `"Preschool"', add
label define uy11a_edlevel_lbl 02 `"Elementary school"', add
label define uy11a_edlevel_lbl 03 `"Elementary school, special education"', add
label define uy11a_edlevel_lbl 04 `"Junior high school, grades 1 to 3"', add
label define uy11a_edlevel_lbl 05 `"Junior high school UTU, grades 1 to 3"', add
label define uy11a_edlevel_lbl 06 `"High school, grades 4 to 6"', add
label define uy11a_edlevel_lbl 07 `"High school UTU, grades 4 to 6"', add
label define uy11a_edlevel_lbl 08 `"Technical school or professional formation UTU"', add
label define uy11a_edlevel_lbl 09 `"Teacher training"', add
label define uy11a_edlevel_lbl 10 `"Post-secondary non-university education"', add
label define uy11a_edlevel_lbl 11 `"University or college institute (bachelor's degree)"', add
label define uy11a_edlevel_lbl 12 `"Graduate studies (diploma, master's degree, or doctorate)"', add
label values uy11a_edlevel uy11a_edlevel_lbl

label define uy11a_edlevcom_lbl 0 `"NIU (not in universe)"'
label define uy11a_edlevcom_lbl 1 `"Yes"', add
label define uy11a_edlevcom_lbl 2 `"No"', add
label define uy11a_edlevcom_lbl 9 `"Unknown"', add
label values uy11a_edlevcom uy11a_edlevcom_lbl

label define uy11a_lit_lbl 0 `"NIU (not in universe)"'
label define uy11a_lit_lbl 1 `"Yes"', add
label define uy11a_lit_lbl 2 `"No"', add
label define uy11a_lit_lbl 9 `"Unknown"', add
label values uy11a_lit uy11a_lit_lbl

label define uy11a_worklw_lbl 0 `"NIU (not in universe)"'
label define uy11a_worklw_lbl 1 `"Yes"', add
label define uy11a_worklw_lbl 2 `"No"', add
label define uy11a_worklw_lbl 9 `"Unknown"', add
label values uy11a_worklw uy11a_worklw_lbl

label define uy11a_wkagr_lbl 0 `"NIU (not in universe)"'
label define uy11a_wkagr_lbl 1 `"Yes"', add
label define uy11a_wkagr_lbl 2 `"No"', add
label define uy11a_wkagr_lbl 9 `"Unknown"', add
label values uy11a_wkagr uy11a_wkagr_lbl

label define uy11a_wkreturn_lbl 0 `"NIU (not in universe)"'
label define uy11a_wkreturn_lbl 1 `"Yes"', add
label define uy11a_wkreturn_lbl 2 `"No"', add
label define uy11a_wkreturn_lbl 9 `"Unknown"', add
label values uy11a_wkreturn uy11a_wkreturn_lbl

label define uy11a_wklook_lbl 0 `"NIU (not in universe)"'
label define uy11a_wklook_lbl 1 `"Yes"', add
label define uy11a_wklook_lbl 2 `"No"', add
label define uy11a_wklook_lbl 9 `"Unknown"', add
label values uy11a_wklook uy11a_wklook_lbl

label define uy11a_wkprev_lbl 0 `"NIU (not in universe)"'
label define uy11a_wkprev_lbl 1 `"Yes"', add
label define uy11a_wkprev_lbl 2 `"No"', add
label define uy11a_wkprev_lbl 9 `"Unknown"', add
label values uy11a_wkprev uy11a_wkprev_lbl

label define uy11a_wkloc_lbl 0 `"NIU (not in universe)"'
label define uy11a_wkloc_lbl 1 `"In this locality or area and inside this dwelling"', add
label define uy11a_wkloc_lbl 2 `"In this locality or area and outside this dwelling"', add
label define uy11a_wkloc_lbl 3 `"In another locality or area of this department"', add
label define uy11a_wkloc_lbl 4 `"In another department"', add
label define uy11a_wkloc_lbl 5 `"In another country"', add
label define uy11a_wkloc_lbl 6 `"Itinerant work (in more than one locality)"', add
label define uy11a_wkloc_lbl 9 `"Unknown"', add
label values uy11a_wkloc uy11a_wkloc_lbl

label define uy11a_wkdept_lbl 00 `"NIU (not in universe)"'
label define uy11a_wkdept_lbl 01 `"Montevideo"', add
label define uy11a_wkdept_lbl 02 `"Artigas"', add
label define uy11a_wkdept_lbl 03 `"Canelones"', add
label define uy11a_wkdept_lbl 04 `"Cerro Largo"', add
label define uy11a_wkdept_lbl 05 `"Colonia"', add
label define uy11a_wkdept_lbl 06 `"Durazno"', add
label define uy11a_wkdept_lbl 07 `"Flores"', add
label define uy11a_wkdept_lbl 08 `"Florida"', add
label define uy11a_wkdept_lbl 09 `"Lavalleja"', add
label define uy11a_wkdept_lbl 10 `"Maldonado"', add
label define uy11a_wkdept_lbl 11 `"Paysandú"', add
label define uy11a_wkdept_lbl 12 `"Río Negro"', add
label define uy11a_wkdept_lbl 13 `"Rivera"', add
label define uy11a_wkdept_lbl 14 `"Rocha"', add
label define uy11a_wkdept_lbl 15 `"Salto"', add
label define uy11a_wkdept_lbl 16 `"San Jose"', add
label define uy11a_wkdept_lbl 17 `"Soriano"', add
label define uy11a_wkdept_lbl 18 `"Tacuarembó"', add
label define uy11a_wkdept_lbl 19 `"Treinta Y Tres"', add
label values uy11a_wkdept uy11a_wkdept_lbl

label define uy11a_retired_lbl 0 `"NIU (not in universe)"'
label define uy11a_retired_lbl 1 `"Yes"', add
label define uy11a_retired_lbl 2 `"No"', add
label define uy11a_retired_lbl 9 `"Unknown"', add
label values uy11a_retired uy11a_retired_lbl

label define uy11a_domhome_lbl 0 `"NIU (not in universe)"'
label define uy11a_domhome_lbl 1 `"Yes"', add
label define uy11a_domhome_lbl 2 `"No"', add
label define uy11a_domhome_lbl 9 `"Unknown"', add
label values uy11a_domhome uy11a_domhome_lbl

label define uy11a_chborn_lbl 00 `"0"'
label define uy11a_chborn_lbl 01 `"1"', add
label define uy11a_chborn_lbl 02 `"2"', add
label define uy11a_chborn_lbl 03 `"3"', add
label define uy11a_chborn_lbl 04 `"4"', add
label define uy11a_chborn_lbl 05 `"5"', add
label define uy11a_chborn_lbl 06 `"6"', add
label define uy11a_chborn_lbl 07 `"7"', add
label define uy11a_chborn_lbl 08 `"8"', add
label define uy11a_chborn_lbl 09 `"9"', add
label define uy11a_chborn_lbl 10 `"10"', add
label define uy11a_chborn_lbl 11 `"11"', add
label define uy11a_chborn_lbl 12 `"12"', add
label define uy11a_chborn_lbl 13 `"13"', add
label define uy11a_chborn_lbl 14 `"14"', add
label define uy11a_chborn_lbl 15 `"15+"', add
label define uy11a_chborn_lbl 98 `"Unknown"', add
label define uy11a_chborn_lbl 99 `"NIU (not in universe)"', add
label values uy11a_chborn uy11a_chborn_lbl

label define uy11a_chborunk_lbl 0 `"NIU (not in universe)"'
label define uy11a_chborunk_lbl 1 `"Yes"', add
label define uy11a_chborunk_lbl 2 `"No"', add
label define uy11a_chborunk_lbl 9 `"Unknown"', add
label values uy11a_chborunk uy11a_chborunk_lbl

label define uy11a_chalive_lbl 00 `"0"'
label define uy11a_chalive_lbl 01 `"1"', add
label define uy11a_chalive_lbl 02 `"2"', add
label define uy11a_chalive_lbl 03 `"3"', add
label define uy11a_chalive_lbl 04 `"4"', add
label define uy11a_chalive_lbl 05 `"5"', add
label define uy11a_chalive_lbl 06 `"6"', add
label define uy11a_chalive_lbl 07 `"7"', add
label define uy11a_chalive_lbl 08 `"8"', add
label define uy11a_chalive_lbl 09 `"9"', add
label define uy11a_chalive_lbl 10 `"10"', add
label define uy11a_chalive_lbl 11 `"11"', add
label define uy11a_chalive_lbl 12 `"12"', add
label define uy11a_chalive_lbl 13 `"13"', add
label define uy11a_chalive_lbl 14 `"14"', add
label define uy11a_chalive_lbl 15 `"15+"', add
label define uy11a_chalive_lbl 98 `"Unknown"', add
label define uy11a_chalive_lbl 99 `"NIU (not in universe)"', add
label values uy11a_chalive uy11a_chalive_lbl

label define uy11a_chlivunk_lbl 0 `"NIU (not in universe)"'
label define uy11a_chlivunk_lbl 1 `"Yes"', add
label define uy11a_chlivunk_lbl 2 `"No"', add
label define uy11a_chlivunk_lbl 9 `"Unknown"', add
label values uy11a_chlivunk uy11a_chlivunk_lbl

label define uy11a_lstbyr_lbl 0000 `"NIU (not in universe)"'
label define uy11a_lstbyr_lbl 1940 `"1940 or earlier"', add
label define uy11a_lstbyr_lbl 1941 `"1941"', add
label define uy11a_lstbyr_lbl 1942 `"1942"', add
label define uy11a_lstbyr_lbl 1943 `"1943"', add
label define uy11a_lstbyr_lbl 1944 `"1944"', add
label define uy11a_lstbyr_lbl 1945 `"1945"', add
label define uy11a_lstbyr_lbl 1946 `"1946"', add
label define uy11a_lstbyr_lbl 1947 `"1947"', add
label define uy11a_lstbyr_lbl 1948 `"1948"', add
label define uy11a_lstbyr_lbl 1949 `"1949"', add
label define uy11a_lstbyr_lbl 1950 `"1950"', add
label define uy11a_lstbyr_lbl 1951 `"1951"', add
label define uy11a_lstbyr_lbl 1952 `"1952"', add
label define uy11a_lstbyr_lbl 1953 `"1953"', add
label define uy11a_lstbyr_lbl 1954 `"1954"', add
label define uy11a_lstbyr_lbl 1955 `"1955"', add
label define uy11a_lstbyr_lbl 1956 `"1956"', add
label define uy11a_lstbyr_lbl 1957 `"1957"', add
label define uy11a_lstbyr_lbl 1958 `"1958"', add
label define uy11a_lstbyr_lbl 1959 `"1959"', add
label define uy11a_lstbyr_lbl 1960 `"1960"', add
label define uy11a_lstbyr_lbl 1961 `"1961"', add
label define uy11a_lstbyr_lbl 1962 `"1962"', add
label define uy11a_lstbyr_lbl 1963 `"1963"', add
label define uy11a_lstbyr_lbl 1964 `"1964"', add
label define uy11a_lstbyr_lbl 1965 `"1965"', add
label define uy11a_lstbyr_lbl 1966 `"1966"', add
label define uy11a_lstbyr_lbl 1967 `"1967"', add
label define uy11a_lstbyr_lbl 1968 `"1968"', add
label define uy11a_lstbyr_lbl 1969 `"1969"', add
label define uy11a_lstbyr_lbl 1970 `"1970"', add
label define uy11a_lstbyr_lbl 1971 `"1971"', add
label define uy11a_lstbyr_lbl 1972 `"1972"', add
label define uy11a_lstbyr_lbl 1973 `"1973"', add
label define uy11a_lstbyr_lbl 1974 `"1974"', add
label define uy11a_lstbyr_lbl 1975 `"1975"', add
label define uy11a_lstbyr_lbl 1976 `"1976"', add
label define uy11a_lstbyr_lbl 1977 `"1977"', add
label define uy11a_lstbyr_lbl 1978 `"1978"', add
label define uy11a_lstbyr_lbl 1979 `"1979"', add
label define uy11a_lstbyr_lbl 1980 `"1980"', add
label define uy11a_lstbyr_lbl 1981 `"1981"', add
label define uy11a_lstbyr_lbl 1982 `"1982"', add
label define uy11a_lstbyr_lbl 1983 `"1983"', add
label define uy11a_lstbyr_lbl 1984 `"1984"', add
label define uy11a_lstbyr_lbl 1985 `"1985"', add
label define uy11a_lstbyr_lbl 1986 `"1986"', add
label define uy11a_lstbyr_lbl 1987 `"1987"', add
label define uy11a_lstbyr_lbl 1988 `"1988"', add
label define uy11a_lstbyr_lbl 1989 `"1989"', add
label define uy11a_lstbyr_lbl 1990 `"1990"', add
label define uy11a_lstbyr_lbl 1991 `"1991"', add
label define uy11a_lstbyr_lbl 1992 `"1992"', add
label define uy11a_lstbyr_lbl 1993 `"1993"', add
label define uy11a_lstbyr_lbl 1994 `"1994"', add
label define uy11a_lstbyr_lbl 1995 `"1995"', add
label define uy11a_lstbyr_lbl 1996 `"1996"', add
label define uy11a_lstbyr_lbl 1997 `"1997"', add
label define uy11a_lstbyr_lbl 1998 `"1998"', add
label define uy11a_lstbyr_lbl 1999 `"1999"', add
label define uy11a_lstbyr_lbl 2000 `"2000"', add
label define uy11a_lstbyr_lbl 2001 `"2001"', add
label define uy11a_lstbyr_lbl 2002 `"2002"', add
label define uy11a_lstbyr_lbl 2003 `"2003"', add
label define uy11a_lstbyr_lbl 2004 `"2004"', add
label define uy11a_lstbyr_lbl 2005 `"2005"', add
label define uy11a_lstbyr_lbl 2006 `"2006"', add
label define uy11a_lstbyr_lbl 2007 `"2007"', add
label define uy11a_lstbyr_lbl 2008 `"2008"', add
label define uy11a_lstbyr_lbl 2009 `"2009"', add
label define uy11a_lstbyr_lbl 2010 `"2010"', add
label define uy11a_lstbyr_lbl 2011 `"2011"', add
label define uy11a_lstbyr_lbl 9999 `"Unknown"', add
label values uy11a_lstbyr uy11a_lstbyr_lbl

label define uy11a_lstbmo_lbl 00 `"NIU (not in universe)"'
label define uy11a_lstbmo_lbl 01 `"January"', add
label define uy11a_lstbmo_lbl 02 `"February"', add
label define uy11a_lstbmo_lbl 03 `"March"', add
label define uy11a_lstbmo_lbl 04 `"April"', add
label define uy11a_lstbmo_lbl 05 `"May"', add
label define uy11a_lstbmo_lbl 06 `"June"', add
label define uy11a_lstbmo_lbl 07 `"July"', add
label define uy11a_lstbmo_lbl 08 `"August"', add
label define uy11a_lstbmo_lbl 09 `"September"', add
label define uy11a_lstbmo_lbl 10 `"October"', add
label define uy11a_lstbmo_lbl 11 `"November"', add
label define uy11a_lstbmo_lbl 12 `"December"', add
label define uy11a_lstbmo_lbl 99 `"Unknown"', add
label values uy11a_lstbmo uy11a_lstbmo_lbl

label define uy11a_frstbyr_lbl 0000 `"NIU (not in universe)"'
label define uy11a_frstbyr_lbl 1935 `"1935 or earlier"', add
label define uy11a_frstbyr_lbl 1936 `"1936"', add
label define uy11a_frstbyr_lbl 1937 `"1937"', add
label define uy11a_frstbyr_lbl 1938 `"1938"', add
label define uy11a_frstbyr_lbl 1939 `"1939"', add
label define uy11a_frstbyr_lbl 1940 `"1940"', add
label define uy11a_frstbyr_lbl 1941 `"1941"', add
label define uy11a_frstbyr_lbl 1942 `"1942"', add
label define uy11a_frstbyr_lbl 1943 `"1943"', add
label define uy11a_frstbyr_lbl 1944 `"1944"', add
label define uy11a_frstbyr_lbl 1945 `"1945"', add
label define uy11a_frstbyr_lbl 1946 `"1946"', add
label define uy11a_frstbyr_lbl 1947 `"1947"', add
label define uy11a_frstbyr_lbl 1948 `"1948"', add
label define uy11a_frstbyr_lbl 1949 `"1949"', add
label define uy11a_frstbyr_lbl 1950 `"1950"', add
label define uy11a_frstbyr_lbl 1951 `"1951"', add
label define uy11a_frstbyr_lbl 1952 `"1952"', add
label define uy11a_frstbyr_lbl 1953 `"1953"', add
label define uy11a_frstbyr_lbl 1954 `"1954"', add
label define uy11a_frstbyr_lbl 1955 `"1955"', add
label define uy11a_frstbyr_lbl 1956 `"1956"', add
label define uy11a_frstbyr_lbl 1957 `"1957"', add
label define uy11a_frstbyr_lbl 1958 `"1958"', add
label define uy11a_frstbyr_lbl 1959 `"1959"', add
label define uy11a_frstbyr_lbl 1960 `"1960"', add
label define uy11a_frstbyr_lbl 1961 `"1961"', add
label define uy11a_frstbyr_lbl 1962 `"1962"', add
label define uy11a_frstbyr_lbl 1963 `"1963"', add
label define uy11a_frstbyr_lbl 1964 `"1964"', add
label define uy11a_frstbyr_lbl 1965 `"1965"', add
label define uy11a_frstbyr_lbl 1966 `"1966"', add
label define uy11a_frstbyr_lbl 1967 `"1967"', add
label define uy11a_frstbyr_lbl 1968 `"1968"', add
label define uy11a_frstbyr_lbl 1969 `"1969"', add
label define uy11a_frstbyr_lbl 1970 `"1970"', add
label define uy11a_frstbyr_lbl 1971 `"1971"', add
label define uy11a_frstbyr_lbl 1972 `"1972"', add
label define uy11a_frstbyr_lbl 1973 `"1973"', add
label define uy11a_frstbyr_lbl 1974 `"1974"', add
label define uy11a_frstbyr_lbl 1975 `"1975"', add
label define uy11a_frstbyr_lbl 1976 `"1976"', add
label define uy11a_frstbyr_lbl 1977 `"1977"', add
label define uy11a_frstbyr_lbl 1978 `"1978"', add
label define uy11a_frstbyr_lbl 1979 `"1979"', add
label define uy11a_frstbyr_lbl 1980 `"1980"', add
label define uy11a_frstbyr_lbl 1981 `"1981"', add
label define uy11a_frstbyr_lbl 1982 `"1982"', add
label define uy11a_frstbyr_lbl 1983 `"1983"', add
label define uy11a_frstbyr_lbl 1984 `"1984"', add
label define uy11a_frstbyr_lbl 1985 `"1985"', add
label define uy11a_frstbyr_lbl 1986 `"1986"', add
label define uy11a_frstbyr_lbl 1987 `"1987"', add
label define uy11a_frstbyr_lbl 1988 `"1988"', add
label define uy11a_frstbyr_lbl 1989 `"1989"', add
label define uy11a_frstbyr_lbl 1990 `"1990"', add
label define uy11a_frstbyr_lbl 1991 `"1991"', add
label define uy11a_frstbyr_lbl 1992 `"1992"', add
label define uy11a_frstbyr_lbl 1993 `"1993"', add
label define uy11a_frstbyr_lbl 1994 `"1994"', add
label define uy11a_frstbyr_lbl 1995 `"1995"', add
label define uy11a_frstbyr_lbl 1996 `"1996"', add
label define uy11a_frstbyr_lbl 1997 `"1997"', add
label define uy11a_frstbyr_lbl 1998 `"1998"', add
label define uy11a_frstbyr_lbl 1999 `"1999"', add
label define uy11a_frstbyr_lbl 2000 `"2000"', add
label define uy11a_frstbyr_lbl 2001 `"2001"', add
label define uy11a_frstbyr_lbl 2002 `"2002"', add
label define uy11a_frstbyr_lbl 2003 `"2003"', add
label define uy11a_frstbyr_lbl 2004 `"2004"', add
label define uy11a_frstbyr_lbl 2005 `"2005"', add
label define uy11a_frstbyr_lbl 2006 `"2006"', add
label define uy11a_frstbyr_lbl 2007 `"2007"', add
label define uy11a_frstbyr_lbl 2008 `"2008"', add
label define uy11a_frstbyr_lbl 2009 `"2009"', add
label define uy11a_frstbyr_lbl 2010 `"2010"', add
label define uy11a_frstbyr_lbl 2011 `"2011"', add
label define uy11a_frstbyr_lbl 9999 `"Unknown"', add
label values uy11a_frstbyr uy11a_frstbyr_lbl

label define uy11a_dissee_lbl 1 `"No difficulty"'
label define uy11a_dissee_lbl 2 `"Yes, some difficulty"', add
label define uy11a_dissee_lbl 3 `"Yes, much difficulty"', add
label define uy11a_dissee_lbl 4 `"Yes, cannot see"', add
label define uy11a_dissee_lbl 9 `"Unknown"', add
label values uy11a_dissee uy11a_dissee_lbl

label define uy11a_dismob_lbl 1 `"No difficulty"'
label define uy11a_dismob_lbl 2 `"Yes, some difficulty"', add
label define uy11a_dismob_lbl 3 `"Yes, much difficulty"', add
label define uy11a_dismob_lbl 4 `"Yes, cannot walk or go up stairs"', add
label define uy11a_dismob_lbl 9 `"Unknown"', add
label values uy11a_dismob uy11a_dismob_lbl

label define uy11a_disdev_lbl 1 `"No difficulty"'
label define uy11a_disdev_lbl 2 `"Yes, some difficulty"', add
label define uy11a_disdev_lbl 3 `"Yes, much difficulty"', add
label define uy11a_disdev_lbl 4 `"Yes, cannot understand or learn"', add
label define uy11a_disdev_lbl 9 `"Unknown"', add
label values uy11a_disdev uy11a_disdev_lbl

label define uy11a_edattan_lbl 00 `"NIU (not in universe)"'
label define uy11a_edattan_lbl 01 `"Preschool"', add
label define uy11a_edattan_lbl 02 `"Elementary school"', add
label define uy11a_edattan_lbl 03 `"Elementary school, special education"', add
label define uy11a_edattan_lbl 04 `"Junior high school"', add
label define uy11a_edattan_lbl 05 `"High school"', add
label define uy11a_edattan_lbl 06 `"Technical school or profesional formation UTU"', add
label define uy11a_edattan_lbl 07 `"Teacher training"', add
label define uy11a_edattan_lbl 08 `"Post-secondary non-university education"', add
label define uy11a_edattan_lbl 09 `"University or similar"', add
label define uy11a_edattan_lbl 10 `"Graduate studies (diploma, master's degree, or doctorate)"', add
label define uy11a_edattan_lbl 11 `"Post-secondary not specified"', add
label define uy11a_edattan_lbl 12 `"Never attended"', add
label define uy11a_edattan_lbl 99 `"Unknown"', add
label values uy11a_edattan uy11a_edattan_lbl

label define uy11a_empstat_lbl 0 `"NIU (not in universe)"'
label define uy11a_empstat_lbl 1 `"Employed"', add
label define uy11a_empstat_lbl 2 `"Seeking first job"', add
label define uy11a_empstat_lbl 3 `"Unemployed"', add
label define uy11a_empstat_lbl 4 `"Inactive, retired or receiving pension"', add
label define uy11a_empstat_lbl 5 `"Inactive, other reasons"', add
label define uy11a_empstat_lbl 9 `"Unknown"', add
label values uy11a_empstat uy11a_empstat_lbl

label define uy11a_chbornrc_lbl 00 `"0"'
label define uy11a_chbornrc_lbl 01 `"1"', add
label define uy11a_chbornrc_lbl 02 `"2"', add
label define uy11a_chbornrc_lbl 03 `"3"', add
label define uy11a_chbornrc_lbl 04 `"4"', add
label define uy11a_chbornrc_lbl 05 `"5"', add
label define uy11a_chbornrc_lbl 06 `"6"', add
label define uy11a_chbornrc_lbl 07 `"7"', add
label define uy11a_chbornrc_lbl 08 `"8"', add
label define uy11a_chbornrc_lbl 09 `"9"', add
label define uy11a_chbornrc_lbl 10 `"10"', add
label define uy11a_chbornrc_lbl 11 `"11"', add
label define uy11a_chbornrc_lbl 12 `"12"', add
label define uy11a_chbornrc_lbl 13 `"13"', add
label define uy11a_chbornrc_lbl 14 `"14"', add
label define uy11a_chbornrc_lbl 15 `"15+"', add
label define uy11a_chbornrc_lbl 98 `"Unknown"', add
label define uy11a_chbornrc_lbl 99 `"NIU (not in universe)"', add
label values uy11a_chbornrc uy11a_chbornrc_lbl

label define uy11a_chliverc_lbl 00 `"0"'
label define uy11a_chliverc_lbl 01 `"1"', add
label define uy11a_chliverc_lbl 02 `"2"', add
label define uy11a_chliverc_lbl 03 `"3"', add
label define uy11a_chliverc_lbl 04 `"4"', add
label define uy11a_chliverc_lbl 05 `"5"', add
label define uy11a_chliverc_lbl 06 `"6"', add
label define uy11a_chliverc_lbl 07 `"7"', add
label define uy11a_chliverc_lbl 08 `"8"', add
label define uy11a_chliverc_lbl 09 `"9"', add
label define uy11a_chliverc_lbl 10 `"10"', add
label define uy11a_chliverc_lbl 11 `"11"', add
label define uy11a_chliverc_lbl 12 `"12"', add
label define uy11a_chliverc_lbl 13 `"13"', add
label define uy11a_chliverc_lbl 14 `"14"', add
label define uy11a_chliverc_lbl 15 `"15+"', add
label define uy11a_chliverc_lbl 98 `"Unknown"', add
label define uy11a_chliverc_lbl 99 `"NIU (not in universe)"', add
label values uy11a_chliverc uy11a_chliverc_lbl


