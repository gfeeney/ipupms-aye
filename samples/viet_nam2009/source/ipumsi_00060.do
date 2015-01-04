* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  byte    vn09a_rectype   22-22    ///
  long    vn09a_dwnum     23-29    ///
  byte    vn09a_pern      30-31    ///
  byte    vn09a_province  32-33    ///
  int     vn09a_district  34-36    ///
  byte    vn09a_urban     37-37    ///
  byte    vn09a_urbaniz   38-38    ///
  byte    vn09a_hhtype    39-39    ///
  byte    vn09a_hhsize    40-41    ///
  byte    vn09a_nmale     42-43    ///
  byte    vn09a_nfemale   44-45    ///
  byte    vn09a_hasdwell  46-46    ///
  byte    vn09a_shareh    47-47    ///
  byte    vn09a_rephouse  48-48    ///
  byte    vn09a_dwtype    49-49    ///
  byte    vn09a_rooms     50-51    ///
  byte    vn09a_bedroom   52-53    ///
  int     vn09a_flrspace  54-57    ///
  byte    vn09a_pier      58-58    ///
  byte    vn09a_roof      59-59    ///
  byte    vn09a_wall      60-60    ///
  byte    vn09a_useyear   61-61    ///
  byte    vn09a_beginyr   62-63    ///
  byte    vn09a_ownershp  64-64    ///
  byte    vn09a_light     65-65    ///
  byte    vn09a_fuelcook  66-66    ///
  byte    vn09a_watsrc    67-68    ///
  byte    vn09a_toilet    69-69    ///
  byte    vn09a_tv        70-70    ///
  byte    vn09a_radio     71-71    ///
  byte    vn09a_phone     72-72    ///
  byte    vn09a_computr   73-73    ///
  byte    vn09a_washer    74-74    ///
  byte    vn09a_refrig    75-75    ///
  byte    vn09a_aircon    76-76    ///
  byte    vn09a_moto      77-77    ///
  int     pernum          78-80    ///
  float   wtper           81-88    ///
  byte    vn09a_pernum    89-90    ///
  byte    vn09a_personno  91-92    ///
  byte    vn09a_relate    93-93    ///
  byte    vn09a_sex       94-94    ///
  byte    vn09a_age       95-96    ///
  byte    vn09a_mig       97-97    ///
  byte    vn09a_urbmig    98-98    ///
  byte    vn09a_educ      99-99    ///
  byte    vn09a_edattan   100-101  ///
  byte    vn09a_grade     102-103  ///
  int     vn09a_edattain  104-107  ///
  byte    vn09a_lit       108-108  ///
  byte    vn09a_marst     109-109  ///
  byte    vn09a_qualif    110-111  ///
  byte    vn09a_emp1      112-112  ///
  byte    vn09a_emp2      113-113  ///
  byte    vn09a_emp3      114-114  ///
  int     vn09a_occ       115-117  ///
  byte    vn09a_classwk   118-118  ///
  byte    vn09a_sector    119-119  ///
  int     vn09a_ind       120-122  ///
  byte    vn09a_unemp     123-123  ///
  byte    vn09a_unemp1    124-124  ///
  byte    vn09a_reasue    125-125  ///
  byte    vn09a_birthx    126-126  ///
  byte    vn09a_disvis    127-127  ///
  byte    vn09a_dishear   128-128  ///
  byte    vn09a_diswalk   129-129  ///
  byte    vn09a_disrem    130-130  ///
  byte    vn09a_nchhh     131-132  ///
  byte    vn09a_nchelse   133-134  ///
  byte    vn09a_nchdead   135-136  ///
  int     vn09a_lstbyr    137-140  ///
  byte    vn09a_lstbmo    141-142  ///
  byte    vn09a_lstbfem   143-143  ///
  byte    vn09a_lstbmale  144-144  ///
  byte    vn09a_month     145-146  ///
  int     vn09a_birthyr   147-150  ///
  byte    vn09a_ethnic    151-151  ///
  byte    vn09a_relig     152-152  ///
  int     vn09a_migdist   153-155  ///
  byte    vn09a_migprov   156-157  ///
  using `"ipumsi_00060.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var vn09a_rectype  `"Record type"'
label var vn09a_dwnum    `"Dwelling number"'
label var vn09a_pern     `"Number of persons in household"'
label var vn09a_province `"Province"'
label var vn09a_district `"District"'
label var vn09a_urban    `"Urban/rural"'
label var vn09a_urbaniz  `"Urbanization"'
label var vn09a_hhtype   `"Type of housing"'
label var vn09a_hhsize   `"Number of persons in household"'
label var vn09a_nmale    `"Number of males in household"'
label var vn09a_nfemale  `"Number of females in household"'
label var vn09a_hasdwell `"Household has dwelling"'
label var vn09a_shareh   `"Dwelling sharing status"'
label var vn09a_rephouse `"Representative household"'
label var vn09a_dwtype   `"Dwelling type"'
label var vn09a_rooms    `"Number of dwelling rooms"'
label var vn09a_bedroom  `"Number of bedrooms"'
label var vn09a_flrspace `"Floor space (square meters)"'
label var vn09a_pier     `"Material of the column or load-bearing wall"'
label var vn09a_roof     `"Material of the roof"'
label var vn09a_wall     `"Material of the outer walls"'
label var vn09a_useyear  `"Period the dwelling started to be used"'
label var vn09a_beginyr  `"Year the dwelling started to be used"'
label var vn09a_ownershp `"Ownership of dwelling"'
label var vn09a_light    `"Fuel using for lighting"'
label var vn09a_fuelcook `"Fuel using for cooking"'
label var vn09a_watsrc   `"Main source of cooking/drinking water"'
label var vn09a_toilet   `"Type of toilet"'
label var vn09a_tv       `"Television"'
label var vn09a_radio    `"Radio/radio cassette player"'
label var vn09a_phone    `"Telephone"'
label var vn09a_computr  `"Computer"'
label var vn09a_washer   `"Washing machine"'
label var vn09a_refrig   `"Refrigerator"'
label var vn09a_aircon   `"Air conditioner"'
label var vn09a_moto     `"Motorcycle/motorbike"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var vn09a_pernum   `"Person number (within household)"'
label var vn09a_personno `"Person number"'
label var vn09a_relate   `"Relationship to household head"'
label var vn09a_sex      `"Sex"'
label var vn09a_age      `"Age"'
label var vn09a_mig      `"Residence five years ago"'
label var vn09a_urbmig   `"Place of residence five years ago"'
label var vn09a_educ     `"School attendance"'
label var vn09a_edattan  `"Highest level of education"'
label var vn09a_grade    `"Highest grade/year within level of education"'
label var vn09a_edattain `"Educational attainment"'
label var vn09a_lit      `"Literacy"'
label var vn09a_marst    `"Marital status"'
label var vn09a_qualif   `"Qualification"'
label var vn09a_emp1     `"Income from employment"'
label var vn09a_emp2     `"Received salary without employment"'
label var vn09a_emp3     `"Has job to return to next 30 days"'
label var vn09a_occ      `"Occupation"'
label var vn09a_classwk  `"Position in employment"'
label var vn09a_sector   `"Economic sector of work organization"'
label var vn09a_ind      `"Industry"'
label var vn09a_unemp    `"Looked for work"'
label var vn09a_unemp1   `"Available for work"'
label var vn09a_reasue   `"Reason did not look for work"'
label var vn09a_birthx   `"Ever given birth"'
label var vn09a_disvis   `"Difficulty seeing"'
label var vn09a_dishear  `"Difficulty hearing"'
label var vn09a_diswalk  `"Difficulty walking"'
label var vn09a_disrem   `"Difficulty remembering or paying attention"'
label var vn09a_nchhh    `"Number of children still in the household"'
label var vn09a_nchelse  `"Number of children in another household"'
label var vn09a_nchdead  `"Number of children dead"'
label var vn09a_lstbyr   `"Year of the last birth"'
label var vn09a_lstbmo   `"Month of the last birth"'
label var vn09a_lstbfem  `"Number of daughters in the last birth"'
label var vn09a_lstbmale `"Number of sons in the last birth"'
label var vn09a_month    `"Month of birth"'
label var vn09a_birthyr  `"Year of birth"'
label var vn09a_ethnic   `"Ethnicity"'
label var vn09a_relig    `"Follows a religion"'
label var vn09a_migdist  `"District of residence five years ago"'
label var vn09a_migprov  `"Province of residence five years ago"'

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

label define vn09a_rectype_lbl 1 `"Household"'
label define vn09a_rectype_lbl 2 `"Person"', add
label values vn09a_rectype vn09a_rectype_lbl

label define vn09a_pern_lbl 01 `"1"'
label define vn09a_pern_lbl 02 `"2"', add
label define vn09a_pern_lbl 03 `"3"', add
label define vn09a_pern_lbl 04 `"4"', add
label define vn09a_pern_lbl 05 `"5"', add
label define vn09a_pern_lbl 06 `"6"', add
label define vn09a_pern_lbl 07 `"7"', add
label define vn09a_pern_lbl 08 `"8"', add
label define vn09a_pern_lbl 09 `"9"', add
label define vn09a_pern_lbl 10 `"10"', add
label define vn09a_pern_lbl 11 `"11"', add
label define vn09a_pern_lbl 12 `"12"', add
label define vn09a_pern_lbl 13 `"13"', add
label define vn09a_pern_lbl 14 `"14"', add
label define vn09a_pern_lbl 15 `"15"', add
label define vn09a_pern_lbl 16 `"16"', add
label define vn09a_pern_lbl 17 `"17"', add
label define vn09a_pern_lbl 18 `"18"', add
label define vn09a_pern_lbl 19 `"19"', add
label define vn09a_pern_lbl 20 `"20"', add
label define vn09a_pern_lbl 21 `"21"', add
label define vn09a_pern_lbl 22 `"22"', add
label define vn09a_pern_lbl 23 `"23"', add
label define vn09a_pern_lbl 24 `"24"', add
label define vn09a_pern_lbl 25 `"25"', add
label define vn09a_pern_lbl 26 `"26"', add
label define vn09a_pern_lbl 27 `"27"', add
label define vn09a_pern_lbl 28 `"28"', add
label define vn09a_pern_lbl 29 `"29"', add
label define vn09a_pern_lbl 30 `"30"', add
label define vn09a_pern_lbl 31 `"31"', add
label define vn09a_pern_lbl 32 `"32"', add
label define vn09a_pern_lbl 34 `"34"', add
label define vn09a_pern_lbl 35 `"35"', add
label define vn09a_pern_lbl 36 `"36"', add
label define vn09a_pern_lbl 37 `"37"', add
label define vn09a_pern_lbl 38 `"38"', add
label define vn09a_pern_lbl 42 `"42"', add
label define vn09a_pern_lbl 43 `"43"', add
label define vn09a_pern_lbl 45 `"45"', add
label define vn09a_pern_lbl 54 `"54"', add
label values vn09a_pern vn09a_pern_lbl

label define vn09a_province_lbl 01 `"Ha Noi"'
label define vn09a_province_lbl 02 `"Ha Giang"', add
label define vn09a_province_lbl 04 `"Cao Bang"', add
label define vn09a_province_lbl 06 `"Bac Kan"', add
label define vn09a_province_lbl 08 `"Tuyen Quang"', add
label define vn09a_province_lbl 10 `"Lao Cai"', add
label define vn09a_province_lbl 11 `"Dien Bien"', add
label define vn09a_province_lbl 12 `"Lai Chau"', add
label define vn09a_province_lbl 14 `"Son La"', add
label define vn09a_province_lbl 15 `"Yen Bai"', add
label define vn09a_province_lbl 17 `"Hoa Binh"', add
label define vn09a_province_lbl 19 `"Thai Nguyen"', add
label define vn09a_province_lbl 20 `"Lang Son"', add
label define vn09a_province_lbl 22 `"Quang Ninh"', add
label define vn09a_province_lbl 24 `"Bac Giang"', add
label define vn09a_province_lbl 25 `"Phu Tho"', add
label define vn09a_province_lbl 26 `"Vinh Phuc"', add
label define vn09a_province_lbl 27 `"Bac Ninh"', add
label define vn09a_province_lbl 30 `"Hai Duong"', add
label define vn09a_province_lbl 31 `"Hai Phong city"', add
label define vn09a_province_lbl 33 `"Hung Yen"', add
label define vn09a_province_lbl 34 `"Thai Binh"', add
label define vn09a_province_lbl 35 `"Ha Nam"', add
label define vn09a_province_lbl 36 `"Nam Dinh"', add
label define vn09a_province_lbl 37 `"Ninh Binh"', add
label define vn09a_province_lbl 38 `"Thanh Hoa"', add
label define vn09a_province_lbl 40 `"Nghe An"', add
label define vn09a_province_lbl 42 `"Ha Tinh"', add
label define vn09a_province_lbl 44 `"Quang Binh"', add
label define vn09a_province_lbl 45 `"Quang Tri"', add
label define vn09a_province_lbl 46 `"Thua Thien Hue"', add
label define vn09a_province_lbl 48 `"Da Nang city"', add
label define vn09a_province_lbl 49 `"Quang Nam"', add
label define vn09a_province_lbl 51 `"Quang Ngai"', add
label define vn09a_province_lbl 52 `"Binh Dinh"', add
label define vn09a_province_lbl 54 `"Phu Yen"', add
label define vn09a_province_lbl 56 `"Khanh Hoa"', add
label define vn09a_province_lbl 58 `"Ninh Thuan"', add
label define vn09a_province_lbl 60 `"Binh Thuan"', add
label define vn09a_province_lbl 62 `"Kon Tum"', add
label define vn09a_province_lbl 64 `"Gia Lai"', add
label define vn09a_province_lbl 66 `"Dak Lak"', add
label define vn09a_province_lbl 67 `"Dak Nong"', add
label define vn09a_province_lbl 68 `"Lam Dong"', add
label define vn09a_province_lbl 70 `"Binh Phuoc"', add
label define vn09a_province_lbl 72 `"Tay Ninh"', add
label define vn09a_province_lbl 74 `"Binh Duong"', add
label define vn09a_province_lbl 75 `"Dong Nai"', add
label define vn09a_province_lbl 77 `"Ba Ria - Vung Tau"', add
label define vn09a_province_lbl 79 `"Ho Chi Minh city"', add
label define vn09a_province_lbl 80 `"Long An"', add
label define vn09a_province_lbl 82 `"Tien Giang"', add
label define vn09a_province_lbl 83 `"Ben Tre"', add
label define vn09a_province_lbl 84 `"Tra Vinh"', add
label define vn09a_province_lbl 86 `"Vinh Long"', add
label define vn09a_province_lbl 87 `"Dong Thap"', add
label define vn09a_province_lbl 89 `"An Giang"', add
label define vn09a_province_lbl 91 `"Kien Giang"', add
label define vn09a_province_lbl 92 `"Can Tho city"', add
label define vn09a_province_lbl 93 `"Hau Giang"', add
label define vn09a_province_lbl 94 `"Soc Trang"', add
label define vn09a_province_lbl 95 `"Bac Lieu"', add
label define vn09a_province_lbl 96 `"Ca Mau"', add
label values vn09a_province vn09a_province_lbl

label define vn09a_district_lbl 001 `"Ba Dinh"'
label define vn09a_district_lbl 002 `"Hoan Kiem"', add
label define vn09a_district_lbl 003 `"Tay Ho"', add
label define vn09a_district_lbl 004 `"Long Bien"', add
label define vn09a_district_lbl 005 `"Cau Giay"', add
label define vn09a_district_lbl 006 `"Dong Da"', add
label define vn09a_district_lbl 007 `"Hai Ba Trung"', add
label define vn09a_district_lbl 008 `"Hoang Mai"', add
label define vn09a_district_lbl 009 `"Thanh Xuan"', add
label define vn09a_district_lbl 016 `"Soc Son"', add
label define vn09a_district_lbl 017 `"Dong Anh"', add
label define vn09a_district_lbl 018 `"Gia Lam"', add
label define vn09a_district_lbl 019 `"Tu Liem"', add
label define vn09a_district_lbl 020 `"Thanh Tri"', add
label define vn09a_district_lbl 024 `"Ha Giang"', add
label define vn09a_district_lbl 026 `"Dong Van"', add
label define vn09a_district_lbl 027 `"Meo Vac"', add
label define vn09a_district_lbl 028 `"Yen Minh"', add
label define vn09a_district_lbl 029 `"Quan Ba"', add
label define vn09a_district_lbl 030 `"Vi Xuyen"', add
label define vn09a_district_lbl 031 `"Bac Me"', add
label define vn09a_district_lbl 032 `"Hoang Su Phi"', add
label define vn09a_district_lbl 033 `"Xin Man"', add
label define vn09a_district_lbl 034 `"Bac Quang"', add
label define vn09a_district_lbl 035 `"Quang Binh"', add
label define vn09a_district_lbl 040 `"Cao Bang"', add
label define vn09a_district_lbl 042 `"Bao Lam"', add
label define vn09a_district_lbl 043 `"Bao Lac"', add
label define vn09a_district_lbl 044 `"Thong Nong"', add
label define vn09a_district_lbl 045 `"Ha Quang"', add
label define vn09a_district_lbl 046 `"Tra Linh"', add
label define vn09a_district_lbl 047 `"Trung Khanh"', add
label define vn09a_district_lbl 048 `"Ha Lang"', add
label define vn09a_district_lbl 049 `"Quang Uyen"', add
label define vn09a_district_lbl 050 `"Phuc Hoa"', add
label define vn09a_district_lbl 051 `"Hoa An"', add
label define vn09a_district_lbl 052 `"Nguyen Binh"', add
label define vn09a_district_lbl 053 `"Thach An"', add
label define vn09a_district_lbl 058 `"Bac Kan"', add
label define vn09a_district_lbl 060 `"Pac Nam"', add
label define vn09a_district_lbl 061 `"Ba Be"', add
label define vn09a_district_lbl 062 `"Ngan Son"', add
label define vn09a_district_lbl 063 `"Bach Thong"', add
label define vn09a_district_lbl 064 `"Cho Don"', add
label define vn09a_district_lbl 065 `"Cho Moi"', add
label define vn09a_district_lbl 066 `"Na Ri"', add
label define vn09a_district_lbl 070 `"Tuyen Quang"', add
label define vn09a_district_lbl 072 `"Na Hang"', add
label define vn09a_district_lbl 073 `"Chiem Hoa"', add
label define vn09a_district_lbl 074 `"Ham Yen"', add
label define vn09a_district_lbl 075 `"Yen Son"', add
label define vn09a_district_lbl 076 `"Son Duong"', add
label define vn09a_district_lbl 080 `"Thanh pho Lao Cai"', add
label define vn09a_district_lbl 082 `"Bat Xat"', add
label define vn09a_district_lbl 083 `"Muong Khuong"', add
label define vn09a_district_lbl 084 `"Si Ma Cai"', add
label define vn09a_district_lbl 085 `"Bac Ha"', add
label define vn09a_district_lbl 086 `"Bao Thang"', add
label define vn09a_district_lbl 087 `"Bao Yen"', add
label define vn09a_district_lbl 088 `"Sa Pa"', add
label define vn09a_district_lbl 089 `"Van Ban"', add
label define vn09a_district_lbl 094 `"Thanh pho Dien Bien Phu"', add
label define vn09a_district_lbl 095 `"Muong Lay"', add
label define vn09a_district_lbl 096 `"Muong Nhe"', add
label define vn09a_district_lbl 097 `"Muong Cha"', add
label define vn09a_district_lbl 098 `"Tua Chua"', add
label define vn09a_district_lbl 099 `"Tuan Giao"', add
label define vn09a_district_lbl 100 `"Dien Bien"', add
label define vn09a_district_lbl 101 `"Dien Bien Dong"', add
label define vn09a_district_lbl 102 `"Muong ang"', add
label define vn09a_district_lbl 105 `"Lai Chau"', add
label define vn09a_district_lbl 106 `"Tam Duong"', add
label define vn09a_district_lbl 107 `"Muong Te"', add
label define vn09a_district_lbl 108 `"Sin Ho"', add
label define vn09a_district_lbl 109 `"Phong Tho"', add
label define vn09a_district_lbl 110 `"Than Uyen"', add
label define vn09a_district_lbl 111 `"Tan Uyen"', add
label define vn09a_district_lbl 116 `"Son La"', add
label define vn09a_district_lbl 118 `"Quynh Nhai"', add
label define vn09a_district_lbl 119 `"Thuan Chau"', add
label define vn09a_district_lbl 120 `"Muong La"', add
label define vn09a_district_lbl 121 `"Bac Yen"', add
label define vn09a_district_lbl 122 `"Phu Yen"', add
label define vn09a_district_lbl 123 `"Moc Chau"', add
label define vn09a_district_lbl 124 `"Yen Chau"', add
label define vn09a_district_lbl 125 `"Mai Son"', add
label define vn09a_district_lbl 126 `"Song Ma"', add
label define vn09a_district_lbl 127 `"Sop Cop"', add
label define vn09a_district_lbl 132 `"Thanh pho Yen Bai"', add
label define vn09a_district_lbl 133 `"Nghia Lo"', add
label define vn09a_district_lbl 135 `"Luc Yen"', add
label define vn09a_district_lbl 136 `"Van Yen"', add
label define vn09a_district_lbl 137 `"Mu Cang Chai"', add
label define vn09a_district_lbl 138 `"Tran Yen"', add
label define vn09a_district_lbl 139 `"Tram Tau"', add
label define vn09a_district_lbl 140 `"Van Chan"', add
label define vn09a_district_lbl 141 `"Yen Binh"', add
label define vn09a_district_lbl 148 `"Thanh pho Hoa Binh"', add
label define vn09a_district_lbl 150 `"Da Bac"', add
label define vn09a_district_lbl 151 `"Ky Son"', add
label define vn09a_district_lbl 152 `"Luong Son"', add
label define vn09a_district_lbl 153 `"Kim Boi"', add
label define vn09a_district_lbl 154 `"Cao Phong"', add
label define vn09a_district_lbl 155 `"Tan Lac"', add
label define vn09a_district_lbl 156 `"Mai Chau"', add
label define vn09a_district_lbl 157 `"Lac Son"', add
label define vn09a_district_lbl 158 `"Yen Thuy"', add
label define vn09a_district_lbl 159 `"Lac Thuy"', add
label define vn09a_district_lbl 164 `"Thanh pho Thai Nguyen"', add
label define vn09a_district_lbl 165 `"Song Cong"', add
label define vn09a_district_lbl 167 `"Dinh Hoa"', add
label define vn09a_district_lbl 168 `"Phu Luong"', add
label define vn09a_district_lbl 169 `"Dong Hy"', add
label define vn09a_district_lbl 170 `"Vo Nhai"', add
label define vn09a_district_lbl 171 `"Dai Tu"', add
label define vn09a_district_lbl 172 `"Pho Yen"', add
label define vn09a_district_lbl 173 `"Phu Binh"', add
label define vn09a_district_lbl 178 `"Thanh pho Lang Son"', add
label define vn09a_district_lbl 180 `"Trang Dinh"', add
label define vn09a_district_lbl 181 `"Binh Gia"', add
label define vn09a_district_lbl 182 `"Van Lang"', add
label define vn09a_district_lbl 183 `"Cao Loc"', add
label define vn09a_district_lbl 184 `"Van Quan"', add
label define vn09a_district_lbl 185 `"Bac Son"', add
label define vn09a_district_lbl 186 `"Huu Lung"', add
label define vn09a_district_lbl 187 `"Chi Lang"', add
label define vn09a_district_lbl 188 `"Loc Binh"', add
label define vn09a_district_lbl 189 `"Dinh Lap"', add
label define vn09a_district_lbl 193 `"Thanh pho Ha Long"', add
label define vn09a_district_lbl 194 `"Mong Cai"', add
label define vn09a_district_lbl 195 `"Cam Pha"', add
label define vn09a_district_lbl 196 `"Uong Bi"', add
label define vn09a_district_lbl 198 `"Binh Lieu"', add
label define vn09a_district_lbl 199 `"Tien Yen"', add
label define vn09a_district_lbl 200 `"Dam Ha"', add
label define vn09a_district_lbl 201 `"Hai Ha"', add
label define vn09a_district_lbl 202 `"Ba Che"', add
label define vn09a_district_lbl 203 `"Van Don"', add
label define vn09a_district_lbl 204 `"Hoanh Bo"', add
label define vn09a_district_lbl 205 `"Dong Trieu"', add
label define vn09a_district_lbl 206 `"Yen Hung"', add
label define vn09a_district_lbl 207 `"Co To"', add
label define vn09a_district_lbl 213 `"Thanh pho Bac Giang"', add
label define vn09a_district_lbl 215 `"Yen The"', add
label define vn09a_district_lbl 216 `"Tan Yen"', add
label define vn09a_district_lbl 217 `"Lang Giang"', add
label define vn09a_district_lbl 218 `"Luc Nam"', add
label define vn09a_district_lbl 219 `"Luc Ngan"', add
label define vn09a_district_lbl 220 `"Son Dong"', add
label define vn09a_district_lbl 221 `"Yen Dung"', add
label define vn09a_district_lbl 222 `"Viet Yen"', add
label define vn09a_district_lbl 223 `"Hiep Hoa"', add
label define vn09a_district_lbl 227 `"Thanh pho Viet Tri"', add
label define vn09a_district_lbl 228 `"Phu Tho"', add
label define vn09a_district_lbl 230 `"Doan Hung"', add
label define vn09a_district_lbl 231 `"Ha Hoa"', add
label define vn09a_district_lbl 232 `"Thanh Ba"', add
label define vn09a_district_lbl 233 `"Phu Ninh"', add
label define vn09a_district_lbl 234 `"Yen Lap"', add
label define vn09a_district_lbl 235 `"Cam Khe"', add
label define vn09a_district_lbl 236 `"Tam Nong"', add
label define vn09a_district_lbl 237 `"Lam Thao"', add
label define vn09a_district_lbl 238 `"Thanh Son"', add
label define vn09a_district_lbl 239 `"Thanh Thuy"', add
label define vn09a_district_lbl 240 `"Tan Son"', add
label define vn09a_district_lbl 243 `"Thanh pho Vinh Yen"', add
label define vn09a_district_lbl 244 `"Phuc Yen"', add
label define vn09a_district_lbl 246 `"Lap Thach"', add
label define vn09a_district_lbl 247 `"Tam Duong"', add
label define vn09a_district_lbl 248 `"Tam Dao"', add
label define vn09a_district_lbl 249 `"Binh Xuyen"', add
label define vn09a_district_lbl 250 `"Me Linh"', add
label define vn09a_district_lbl 251 `"Yen Lac"', add
label define vn09a_district_lbl 252 `"Vinh Tuong"', add
label define vn09a_district_lbl 253 `"Song Lo"', add
label define vn09a_district_lbl 256 `"Thanh pho Bac Ninh"', add
label define vn09a_district_lbl 258 `"Yen Phong"', add
label define vn09a_district_lbl 259 `"Que Vo"', add
label define vn09a_district_lbl 260 `"Tien Du"', add
label define vn09a_district_lbl 261 `"Tu Son"', add
label define vn09a_district_lbl 262 `"Thuan Thanh"', add
label define vn09a_district_lbl 263 `"Gia Binh"', add
label define vn09a_district_lbl 264 `"Luong Tai"', add
label define vn09a_district_lbl 268 `"Ha Dong"', add
label define vn09a_district_lbl 269 `"Son Tay"', add
label define vn09a_district_lbl 271 `"Ba Vi"', add
label define vn09a_district_lbl 272 `"Phuc Tho"', add
label define vn09a_district_lbl 273 `"Dan Phuong"', add
label define vn09a_district_lbl 274 `"Hoai Duc"', add
label define vn09a_district_lbl 275 `"Quoc Oai"', add
label define vn09a_district_lbl 276 `"Thach That"', add
label define vn09a_district_lbl 277 `"Chuong My"', add
label define vn09a_district_lbl 278 `"Thanh Oai"', add
label define vn09a_district_lbl 279 `"Thuong Tin"', add
label define vn09a_district_lbl 280 `"Phu Xuyen"', add
label define vn09a_district_lbl 281 `"ung Hoa"', add
label define vn09a_district_lbl 282 `"My Duc"', add
label define vn09a_district_lbl 288 `"Thanh pho Hai Duong"', add
label define vn09a_district_lbl 290 `"Chi Linh"', add
label define vn09a_district_lbl 291 `"Nam Sach"', add
label define vn09a_district_lbl 292 `"Kinh Mon"', add
label define vn09a_district_lbl 293 `"Kim Thanh"', add
label define vn09a_district_lbl 294 `"Thanh Ha"', add
label define vn09a_district_lbl 295 `"Cam Giang"', add
label define vn09a_district_lbl 296 `"Binh Giang"', add
label define vn09a_district_lbl 297 `"Gia Loc"', add
label define vn09a_district_lbl 298 `"Tu Ky"', add
label define vn09a_district_lbl 299 `"Ninh Giang"', add
label define vn09a_district_lbl 300 `"Thanh Mien"', add
label define vn09a_district_lbl 303 `"Hong Bang"', add
label define vn09a_district_lbl 304 `"Ngo Quyen"', add
label define vn09a_district_lbl 305 `"Le Chan"', add
label define vn09a_district_lbl 306 `"Hai An"', add
label define vn09a_district_lbl 307 `"Kien An"', add
label define vn09a_district_lbl 308 `"Do Son"', add
label define vn09a_district_lbl 309 `"Duong Kinh"', add
label define vn09a_district_lbl 311 `"Thuy Nguyen"', add
label define vn09a_district_lbl 312 `"An Duong"', add
label define vn09a_district_lbl 313 `"An Lao"', add
label define vn09a_district_lbl 314 `"Kien Thuy"', add
label define vn09a_district_lbl 315 `"Tien Lang"', add
label define vn09a_district_lbl 316 `"Vinh Bao"', add
label define vn09a_district_lbl 317 `"Cat Hai"', add
label define vn09a_district_lbl 318 `"Bach Long Vi"', add
label define vn09a_district_lbl 323 `"Hung Yen"', add
label define vn09a_district_lbl 325 `"Van Lam"', add
label define vn09a_district_lbl 326 `"Van Giang"', add
label define vn09a_district_lbl 327 `"Yen My"', add
label define vn09a_district_lbl 328 `"My Hao"', add
label define vn09a_district_lbl 329 `"An Thi"', add
label define vn09a_district_lbl 330 `"Khoai Chau"', add
label define vn09a_district_lbl 331 `"Kim Dong"', add
label define vn09a_district_lbl 332 `"Tien Lu"', add
label define vn09a_district_lbl 333 `"Phu Cu"', add
label define vn09a_district_lbl 336 `"Thanh pho Thai Binh"', add
label define vn09a_district_lbl 338 `"Quynh Phu"', add
label define vn09a_district_lbl 339 `"Hung Ha"', add
label define vn09a_district_lbl 340 `"Dong Hung"', add
label define vn09a_district_lbl 341 `"Thai Thuy"', add
label define vn09a_district_lbl 342 `"Tien Hai"', add
label define vn09a_district_lbl 343 `"Kien Xuong"', add
label define vn09a_district_lbl 344 `"Vu Thu"', add
label define vn09a_district_lbl 347 `"Thanh pho Phu Ly"', add
label define vn09a_district_lbl 349 `"Duy Tien"', add
label define vn09a_district_lbl 350 `"Kim Bang"', add
label define vn09a_district_lbl 351 `"Thanh Liem"', add
label define vn09a_district_lbl 352 `"Binh Luc"', add
label define vn09a_district_lbl 353 `"Ly Nhan"', add
label define vn09a_district_lbl 356 `"Thanh pho Nam Dinh"', add
label define vn09a_district_lbl 358 `"My Loc"', add
label define vn09a_district_lbl 359 `"Vu Ban"', add
label define vn09a_district_lbl 360 `"y Yen"', add
label define vn09a_district_lbl 361 `"Nghia Hung"', add
label define vn09a_district_lbl 362 `"Nam Truc"', add
label define vn09a_district_lbl 363 `"Truc Ninh"', add
label define vn09a_district_lbl 364 `"Xuan Truong"', add
label define vn09a_district_lbl 365 `"Giao Thuy"', add
label define vn09a_district_lbl 366 `"Hai Hau"', add
label define vn09a_district_lbl 369 `"Thanh pho Ninh Binh"', add
label define vn09a_district_lbl 370 `"Tam Diep"', add
label define vn09a_district_lbl 372 `"Nho Quan"', add
label define vn09a_district_lbl 373 `"Gia Vien"', add
label define vn09a_district_lbl 374 `"Hoa Lu"', add
label define vn09a_district_lbl 375 `"Yen Khanh"', add
label define vn09a_district_lbl 376 `"Kim Son"', add
label define vn09a_district_lbl 377 `"Yen Mo"', add
label define vn09a_district_lbl 380 `"Thanh pho Thanh Hoa"', add
label define vn09a_district_lbl 381 `"Bim Son"', add
label define vn09a_district_lbl 382 `"Sam Son"', add
label define vn09a_district_lbl 384 `"Muong Lat"', add
label define vn09a_district_lbl 385 `"Quan Hoa"', add
label define vn09a_district_lbl 386 `"Ba Thuoc"', add
label define vn09a_district_lbl 387 `"Quan Son"', add
label define vn09a_district_lbl 388 `"Lang Chanh"', add
label define vn09a_district_lbl 389 `"Ngoc Lac"', add
label define vn09a_district_lbl 390 `"Cam Thuy"', add
label define vn09a_district_lbl 391 `"Thach Thanh"', add
label define vn09a_district_lbl 392 `"Ha Trung"', add
label define vn09a_district_lbl 393 `"Vinh Loc"', add
label define vn09a_district_lbl 394 `"Yen Dinh"', add
label define vn09a_district_lbl 395 `"Tho Xuan"', add
label define vn09a_district_lbl 396 `"Thuong Xuan"', add
label define vn09a_district_lbl 397 `"Trieu Son"', add
label define vn09a_district_lbl 398 `"Thieu Hoa"', add
label define vn09a_district_lbl 399 `"Hoang Hoa"', add
label define vn09a_district_lbl 400 `"Hau Loc"', add
label define vn09a_district_lbl 401 `"Nga Son"', add
label define vn09a_district_lbl 402 `"Nhu Xuan"', add
label define vn09a_district_lbl 403 `"Nhu Thanh"', add
label define vn09a_district_lbl 404 `"Nong Cong"', add
label define vn09a_district_lbl 405 `"Dong Son"', add
label define vn09a_district_lbl 406 `"Quang Xuong"', add
label define vn09a_district_lbl 407 `"Tinh Gia"', add
label define vn09a_district_lbl 412 `"Thanh pho Vinh"', add
label define vn09a_district_lbl 413 `"Cua Lo"', add
label define vn09a_district_lbl 414 `"Thai Hoa"', add
label define vn09a_district_lbl 415 `"Que Phong"', add
label define vn09a_district_lbl 416 `"Quy Chau"', add
label define vn09a_district_lbl 417 `"Ky Son"', add
label define vn09a_district_lbl 418 `"Tuong Duong"', add
label define vn09a_district_lbl 419 `"Nghia Dan"', add
label define vn09a_district_lbl 420 `"Quy Hop"', add
label define vn09a_district_lbl 421 `"Quynh Luu"', add
label define vn09a_district_lbl 422 `"Con Cuong"', add
label define vn09a_district_lbl 423 `"Tan Ky"', add
label define vn09a_district_lbl 424 `"Anh Son"', add
label define vn09a_district_lbl 425 `"Dien Chau"', add
label define vn09a_district_lbl 426 `"Yen Thanh"', add
label define vn09a_district_lbl 427 `"Do Luong"', add
label define vn09a_district_lbl 428 `"Thanh Chuong"', add
label define vn09a_district_lbl 429 `"Nghi Loc"', add
label define vn09a_district_lbl 430 `"Nam Dan"', add
label define vn09a_district_lbl 431 `"Hung Nguyen"', add
label define vn09a_district_lbl 436 `"Thanh pho Ha Tinh"', add
label define vn09a_district_lbl 437 `"Hong Linh"', add
label define vn09a_district_lbl 439 `"Huong Son"', add
label define vn09a_district_lbl 440 `"Duc Tho"', add
label define vn09a_district_lbl 441 `"Vu Quang"', add
label define vn09a_district_lbl 442 `"Nghi Xuan"', add
label define vn09a_district_lbl 443 `"Can Loc"', add
label define vn09a_district_lbl 444 `"Huong Khe"', add
label define vn09a_district_lbl 445 `"Thach Ha"', add
label define vn09a_district_lbl 446 `"Cam Xuyen"', add
label define vn09a_district_lbl 447 `"Ky Anh"', add
label define vn09a_district_lbl 448 `"Loc Ha"', add
label define vn09a_district_lbl 450 `"Thanh Pho Dong Hoi"', add
label define vn09a_district_lbl 452 `"Minh Hoa"', add
label define vn09a_district_lbl 453 `"Tuyen Hoa"', add
label define vn09a_district_lbl 454 `"Quang Trach"', add
label define vn09a_district_lbl 455 `"Bo Trach"', add
label define vn09a_district_lbl 456 `"Quang Ninh"', add
label define vn09a_district_lbl 457 `"Le Thuy"', add
label define vn09a_district_lbl 461 `"Dong Ha"', add
label define vn09a_district_lbl 462 `"Quang Tri"', add
label define vn09a_district_lbl 464 `"Vinh Linh"', add
label define vn09a_district_lbl 465 `"Huong Hoa"', add
label define vn09a_district_lbl 466 `"Gio Linh"', add
label define vn09a_district_lbl 467 `"Da Krong"', add
label define vn09a_district_lbl 468 `"Cam Lo"', add
label define vn09a_district_lbl 469 `"Trieu Phong"', add
label define vn09a_district_lbl 470 `"Hai Lang"', add
label define vn09a_district_lbl 471 `"Con Co"', add
label define vn09a_district_lbl 474 `"Thanh pho Hue"', add
label define vn09a_district_lbl 476 `"Phong Dien"', add
label define vn09a_district_lbl 477 `"Quang Dien"', add
label define vn09a_district_lbl 478 `"Phu Vang"', add
label define vn09a_district_lbl 479 `"Huong Thuy"', add
label define vn09a_district_lbl 480 `"Huong Tra"', add
label define vn09a_district_lbl 481 `"A Luoi"', add
label define vn09a_district_lbl 482 `"Phu Loc"', add
label define vn09a_district_lbl 483 `"Nam Dong"', add
label define vn09a_district_lbl 490 `"Lien Chieu"', add
label define vn09a_district_lbl 491 `"Thanh Khe"', add
label define vn09a_district_lbl 492 `"Hai Chau"', add
label define vn09a_district_lbl 493 `"Son Tra"', add
label define vn09a_district_lbl 494 `"Ngu Hanh Son"', add
label define vn09a_district_lbl 495 `"Cam Le"', add
label define vn09a_district_lbl 497 `"Hoa Vang"', add
label define vn09a_district_lbl 498 `"Hoang Sa"', add
label define vn09a_district_lbl 502 `"Thanh Pho Tam Ky"', add
label define vn09a_district_lbl 503 `"Thanh pho Hoi An"', add
label define vn09a_district_lbl 504 `"Tay Giang"', add
label define vn09a_district_lbl 505 `"Dong Giang"', add
label define vn09a_district_lbl 506 `"Dai Loc"', add
label define vn09a_district_lbl 507 `"Dien Ban"', add
label define vn09a_district_lbl 508 `"Duy Xuyen"', add
label define vn09a_district_lbl 509 `"Que Son"', add
label define vn09a_district_lbl 510 `"Nam Giang"', add
label define vn09a_district_lbl 511 `"Phuoc Son"', add
label define vn09a_district_lbl 512 `"Hiep Duc"', add
label define vn09a_district_lbl 513 `"Thang Binh"', add
label define vn09a_district_lbl 514 `"Tien Phuoc"', add
label define vn09a_district_lbl 515 `"Bac Tra My"', add
label define vn09a_district_lbl 516 `"Nam Tra My"', add
label define vn09a_district_lbl 517 `"Nui Thanh"', add
label define vn09a_district_lbl 518 `"Phu Ninh"', add
label define vn09a_district_lbl 519 `"Nong Son"', add
label define vn09a_district_lbl 522 `"Thanh pho Quang Ngai"', add
label define vn09a_district_lbl 524 `"Binh Son"', add
label define vn09a_district_lbl 525 `"Tra Bong"', add
label define vn09a_district_lbl 526 `"Tay Tra"', add
label define vn09a_district_lbl 527 `"Son Tinh"', add
label define vn09a_district_lbl 528 `"Tu Nghia"', add
label define vn09a_district_lbl 529 `"Son Ha"', add
label define vn09a_district_lbl 530 `"Son Tay"', add
label define vn09a_district_lbl 531 `"Minh Long"', add
label define vn09a_district_lbl 532 `"Nghia Hanh"', add
label define vn09a_district_lbl 533 `"Mo Duc"', add
label define vn09a_district_lbl 534 `"Duc Pho"', add
label define vn09a_district_lbl 535 `"Ba To"', add
label define vn09a_district_lbl 536 `"Ly Son"', add
label define vn09a_district_lbl 540 `"Thanh pho Qui Nhon"', add
label define vn09a_district_lbl 542 `"An Lao"', add
label define vn09a_district_lbl 543 `"Hoai Nhon"', add
label define vn09a_district_lbl 544 `"Hoai An"', add
label define vn09a_district_lbl 545 `"Phu My"', add
label define vn09a_district_lbl 546 `"Vinh Thanh"', add
label define vn09a_district_lbl 547 `"Tay Son"', add
label define vn09a_district_lbl 548 `"Phu Cat"', add
label define vn09a_district_lbl 549 `"An Nhon"', add
label define vn09a_district_lbl 550 `"Tuy Ph?oc"', add
label define vn09a_district_lbl 551 `"Van Canh"', add
label define vn09a_district_lbl 555 `"Thanh pho Tuy Hoa"', add
label define vn09a_district_lbl 557 `"Song Cau"', add
label define vn09a_district_lbl 558 `"Dong Xuan"', add
label define vn09a_district_lbl 559 `"Tuy An"', add
label define vn09a_district_lbl 560 `"Son Hoa"', add
label define vn09a_district_lbl 561 `"Song Hinh"', add
label define vn09a_district_lbl 562 `"Tay Hoa"', add
label define vn09a_district_lbl 563 `"Phu Hoa"', add
label define vn09a_district_lbl 564 `"Dong Hoa"', add
label define vn09a_district_lbl 568 `"Thanh pho Nha Trang"', add
label define vn09a_district_lbl 569 `"Cam Ranh"', add
label define vn09a_district_lbl 570 `"Cam Lam"', add
label define vn09a_district_lbl 571 `"Van Ninh"', add
label define vn09a_district_lbl 572 `"Ninh Hoa"', add
label define vn09a_district_lbl 573 `"Khanh Vinh"', add
label define vn09a_district_lbl 574 `"Dien Khanh"', add
label define vn09a_district_lbl 575 `"Khanh Son"', add
label define vn09a_district_lbl 576 `"Truong Sa"', add
label define vn09a_district_lbl 582 `"Thanh pho Phan Rang-Thap Cham"', add
label define vn09a_district_lbl 584 `"Bac ai"', add
label define vn09a_district_lbl 585 `"Ninh Son"', add
label define vn09a_district_lbl 586 `"Ninh Hai"', add
label define vn09a_district_lbl 587 `"Ninh Phuoc"', add
label define vn09a_district_lbl 588 `"Thuan Bac"', add
label define vn09a_district_lbl 593 `"Thanh pho Phan Thiet"', add
label define vn09a_district_lbl 594 `"La Gi"', add
label define vn09a_district_lbl 595 `"Tuy Phong"', add
label define vn09a_district_lbl 596 `"Bac Binh"', add
label define vn09a_district_lbl 597 `"Ham Thuan Bac"', add
label define vn09a_district_lbl 598 `"Ham Thuan Nam"', add
label define vn09a_district_lbl 599 `"Tanh Linh"', add
label define vn09a_district_lbl 600 `"Duc Linh"', add
label define vn09a_district_lbl 601 `"Ham Tan"', add
label define vn09a_district_lbl 602 `"Phu Qui"', add
label define vn09a_district_lbl 608 `"Kon Tum"', add
label define vn09a_district_lbl 610 `"Dak Glei"', add
label define vn09a_district_lbl 611 `"Ngoc Hoi"', add
label define vn09a_district_lbl 612 `"Dak To"', add
label define vn09a_district_lbl 613 `"Kon Plong"', add
label define vn09a_district_lbl 614 `"Kon Ray"', add
label define vn09a_district_lbl 615 `"Dak Ha"', add
label define vn09a_district_lbl 616 `"Sa Thay"', add
label define vn09a_district_lbl 617 `"Tu Mo Rong"', add
label define vn09a_district_lbl 622 `"Thanh pho Pleiku"', add
label define vn09a_district_lbl 623 `"An Khe"', add
label define vn09a_district_lbl 624 `"Ayun Pa"', add
label define vn09a_district_lbl 625 `"KBang"', add
label define vn09a_district_lbl 626 `"Dak Doa"', add
label define vn09a_district_lbl 627 `"Chu Pah"', add
label define vn09a_district_lbl 628 `"Ia Grai"', add
label define vn09a_district_lbl 629 `"Mang Yang"', add
label define vn09a_district_lbl 630 `"Kong Chro"', add
label define vn09a_district_lbl 631 `"Duc Co"', add
label define vn09a_district_lbl 632 `"Chu Prong"', add
label define vn09a_district_lbl 633 `"Chu Se"', add
label define vn09a_district_lbl 634 `"Dak Po"', add
label define vn09a_district_lbl 635 `"Ia Pa"', add
label define vn09a_district_lbl 637 `"Krong Pa"', add
label define vn09a_district_lbl 638 `"Phu Thien"', add
label define vn09a_district_lbl 643 `"Thanh pho Buon Ma Thuot"', add
label define vn09a_district_lbl 644 `"Buon Ho"', add
label define vn09a_district_lbl 645 `"Ea H'leo"', add
label define vn09a_district_lbl 646 `"Ea Sup"', add
label define vn09a_district_lbl 647 `"Buon Don"', add
label define vn09a_district_lbl 648 `"Cu M'gar"', add
label define vn09a_district_lbl 649 `"Krong Buk"', add
label define vn09a_district_lbl 650 `"Krong Nang"', add
label define vn09a_district_lbl 651 `"Ea Kar"', add
label define vn09a_district_lbl 652 `"M'Drak"', add
label define vn09a_district_lbl 653 `"Krong Bong"', add
label define vn09a_district_lbl 654 `"Krong Pac"', add
label define vn09a_district_lbl 655 `"Krong A Na"', add
label define vn09a_district_lbl 656 `"Lak"', add
label define vn09a_district_lbl 657 `"Cu Kuin"', add
label define vn09a_district_lbl 660 `"Gia Nghia"', add
label define vn09a_district_lbl 661 `"Dak Glong"', add
label define vn09a_district_lbl 662 `"Cu Jut"', add
label define vn09a_district_lbl 663 `"Dak Mil"', add
label define vn09a_district_lbl 664 `"Krong No"', add
label define vn09a_district_lbl 665 `"Dak Song"', add
label define vn09a_district_lbl 666 `"Dak R'Lap"', add
label define vn09a_district_lbl 667 `"Tuy Duc"', add
label define vn09a_district_lbl 672 `"Thanh pho Da Lat"', add
label define vn09a_district_lbl 673 `"Bao Loc"', add
label define vn09a_district_lbl 674 `"Dam Rong"', add
label define vn09a_district_lbl 675 `"Lac Duong"', add
label define vn09a_district_lbl 676 `"Lam Ha"', add
label define vn09a_district_lbl 677 `"Don Duong"', add
label define vn09a_district_lbl 678 `"Duc Trong"', add
label define vn09a_district_lbl 679 `"Di Linh"', add
label define vn09a_district_lbl 680 `"Bao Lam"', add
label define vn09a_district_lbl 681 `"Da Huoai"', add
label define vn09a_district_lbl 682 `"Da Teh"', add
label define vn09a_district_lbl 683 `"Cat Tien"', add
label define vn09a_district_lbl 689 `"Dong Xoai"', add
label define vn09a_district_lbl 691 `"Phuoc Long"', add
label define vn09a_district_lbl 692 `"Loc Ninh"', add
label define vn09a_district_lbl 693 `"Bu Dop"', add
label define vn09a_district_lbl 694 `"Binh Long"', add
label define vn09a_district_lbl 695 `"Dong Phu"', add
label define vn09a_district_lbl 696 `"Bu Dang"', add
label define vn09a_district_lbl 697 `"Chon Thanh"', add
label define vn09a_district_lbl 703 `"Tay Ninh"', add
label define vn09a_district_lbl 705 `"Tan Bien"', add
label define vn09a_district_lbl 706 `"Tan Chau"', add
label define vn09a_district_lbl 707 `"Duong Minh Chau"', add
label define vn09a_district_lbl 708 `"Chau Thanh"', add
label define vn09a_district_lbl 709 `"Hoa Thanh"', add
label define vn09a_district_lbl 710 `"Go Dau"', add
label define vn09a_district_lbl 711 `"Ben Cau"', add
label define vn09a_district_lbl 712 `"Trang Bang"', add
label define vn09a_district_lbl 718 `"Thu Dau Mot"', add
label define vn09a_district_lbl 720 `"Dau Tieng"', add
label define vn09a_district_lbl 721 `"Ben Cat"', add
label define vn09a_district_lbl 722 `"Phu Giao"', add
label define vn09a_district_lbl 723 `"Tan Uyen"', add
label define vn09a_district_lbl 724 `"Di An"', add
label define vn09a_district_lbl 725 `"Thuan An"', add
label define vn09a_district_lbl 731 `"Thanh pho Bien Hoa"', add
label define vn09a_district_lbl 732 `"Long Khanh"', add
label define vn09a_district_lbl 734 `"Tan Phu"', add
label define vn09a_district_lbl 735 `"Vinh Cuu"', add
label define vn09a_district_lbl 736 `"Dinh Quan"', add
label define vn09a_district_lbl 737 `"Trang Bom"', add
label define vn09a_district_lbl 738 `"Thong Nhat"', add
label define vn09a_district_lbl 739 `"Cam My"', add
label define vn09a_district_lbl 740 `"Long Thanh"', add
label define vn09a_district_lbl 741 `"Xuan Loc"', add
label define vn09a_district_lbl 742 `"Nhon Trach"', add
label define vn09a_district_lbl 747 `"Thanh pho Vung Tau"', add
label define vn09a_district_lbl 748 `"Ba Ria"', add
label define vn09a_district_lbl 750 `"Chau Duc"', add
label define vn09a_district_lbl 751 `"Xuyen Moc"', add
label define vn09a_district_lbl 752 `"Long Dien"', add
label define vn09a_district_lbl 753 `"Dat Do"', add
label define vn09a_district_lbl 754 `"Tan Thanh"', add
label define vn09a_district_lbl 755 `"Con Dao"', add
label define vn09a_district_lbl 760 `"HCMC, District 1"', add
label define vn09a_district_lbl 761 `"HCMC, District 12"', add
label define vn09a_district_lbl 762 `"Thu Duc"', add
label define vn09a_district_lbl 763 `"HCMC, District 9"', add
label define vn09a_district_lbl 764 `"Go Vap"', add
label define vn09a_district_lbl 765 `"Binh Thanh"', add
label define vn09a_district_lbl 766 `"Tan Binh"', add
label define vn09a_district_lbl 767 `"Tan Phu"', add
label define vn09a_district_lbl 768 `"Phu Nhuan"', add
label define vn09a_district_lbl 769 `"HCMC, District 2"', add
label define vn09a_district_lbl 770 `"HCMC, District 3"', add
label define vn09a_district_lbl 771 `"HCMC, District 10"', add
label define vn09a_district_lbl 772 `"HCMC, District 11"', add
label define vn09a_district_lbl 773 `"HCMC, District 4"', add
label define vn09a_district_lbl 774 `"HCMC, District 5"', add
label define vn09a_district_lbl 775 `"HCMC, District 6"', add
label define vn09a_district_lbl 776 `"HCMC, District 8"', add
label define vn09a_district_lbl 777 `"Binh Tan"', add
label define vn09a_district_lbl 778 `"HCMC, District 7"', add
label define vn09a_district_lbl 783 `"Cu Chi"', add
label define vn09a_district_lbl 784 `"Hoc Mon"', add
label define vn09a_district_lbl 785 `"Binh Chanh"', add
label define vn09a_district_lbl 786 `"Nha Be"', add
label define vn09a_district_lbl 787 `"Can Gio"', add
label define vn09a_district_lbl 794 `"Tan An"', add
label define vn09a_district_lbl 796 `"Tan Hung"', add
label define vn09a_district_lbl 797 `"Vinh Hung"', add
label define vn09a_district_lbl 798 `"Moc Hoa"', add
label define vn09a_district_lbl 799 `"Tan Thanh"', add
label define vn09a_district_lbl 800 `"Thanh Hoa"', add
label define vn09a_district_lbl 801 `"Duc Hue"', add
label define vn09a_district_lbl 802 `"Duc Hoa"', add
label define vn09a_district_lbl 803 `"Ben Luc"', add
label define vn09a_district_lbl 804 `"Thu Thua"', add
label define vn09a_district_lbl 805 `"Tan Tru"', add
label define vn09a_district_lbl 806 `"Can Duoc"', add
label define vn09a_district_lbl 807 `"Can Giuoc"', add
label define vn09a_district_lbl 808 `"Chau Thanh"', add
label define vn09a_district_lbl 815 `"Thanh pho My Tho"', add
label define vn09a_district_lbl 816 `"Go Cong"', add
label define vn09a_district_lbl 818 `"Tan Phuoc"', add
label define vn09a_district_lbl 819 `"Cai Be"', add
label define vn09a_district_lbl 820 `"Cai Lay"', add
label define vn09a_district_lbl 821 `"Chau Thanh"', add
label define vn09a_district_lbl 822 `"Cho Gao"', add
label define vn09a_district_lbl 823 `"Go Cong Tay"', add
label define vn09a_district_lbl 824 `"Go Cong Dong"', add
label define vn09a_district_lbl 825 `"Tan Phu Dong"', add
label define vn09a_district_lbl 829 `"Ben Tre"', add
label define vn09a_district_lbl 831 `"Chau Thanh"', add
label define vn09a_district_lbl 832 `"Cho Lach"', add
label define vn09a_district_lbl 833 `"Mo Cay"', add
label define vn09a_district_lbl 834 `"Giong Trom"', add
label define vn09a_district_lbl 835 `"Binh Dai"', add
label define vn09a_district_lbl 836 `"Ba Tri"', add
label define vn09a_district_lbl 837 `"Thanh Phu"', add
label define vn09a_district_lbl 842 `"Tra Vinh"', add
label define vn09a_district_lbl 844 `"Cang Long"', add
label define vn09a_district_lbl 845 `"Cau Ke"', add
label define vn09a_district_lbl 846 `"Tieu Can"', add
label define vn09a_district_lbl 847 `"Chau Thanh"', add
label define vn09a_district_lbl 848 `"Cau Ngang"', add
label define vn09a_district_lbl 849 `"Tra Cu"', add
label define vn09a_district_lbl 850 `"Duyen Hai"', add
label define vn09a_district_lbl 855 `"Vinh Long"', add
label define vn09a_district_lbl 857 `"Long Ho"', add
label define vn09a_district_lbl 858 `"Mang Thit"', add
label define vn09a_district_lbl 859 `"Vung Liem"', add
label define vn09a_district_lbl 860 `"Tam Binh"', add
label define vn09a_district_lbl 861 `"Binh Minh"', add
label define vn09a_district_lbl 862 `"Tra On"', add
label define vn09a_district_lbl 863 `"Binh Tan"', add
label define vn09a_district_lbl 866 `"Thanh pho Cao Lanh"', add
label define vn09a_district_lbl 867 `"Sa Dec"', add
label define vn09a_district_lbl 868 `"Hong Ngu"', add
label define vn09a_district_lbl 869 `"Tan Hong"', add
label define vn09a_district_lbl 870 `"Hong Ngu"', add
label define vn09a_district_lbl 871 `"Tam Nong"', add
label define vn09a_district_lbl 872 `"Thap Muoi"', add
label define vn09a_district_lbl 873 `"Cao Lanh"', add
label define vn09a_district_lbl 874 `"Thanh Binh"', add
label define vn09a_district_lbl 875 `"Lap Vo"', add
label define vn09a_district_lbl 876 `"Lai Vung"', add
label define vn09a_district_lbl 877 `"Chau Thanh"', add
label define vn09a_district_lbl 883 `"Thanh pho Long Xuyen"', add
label define vn09a_district_lbl 884 `"Chau Doc"', add
label define vn09a_district_lbl 886 `"An Phu"', add
label define vn09a_district_lbl 887 `"Tan Chau"', add
label define vn09a_district_lbl 888 `"Phu Tan"', add
label define vn09a_district_lbl 889 `"Chau Phu"', add
label define vn09a_district_lbl 890 `"Tinh Bien"', add
label define vn09a_district_lbl 891 `"Tri Ton"', add
label define vn09a_district_lbl 892 `"Chau Thanh"', add
label define vn09a_district_lbl 893 `"Cho Moi"', add
label define vn09a_district_lbl 894 `"Thoai Son"', add
label define vn09a_district_lbl 899 `"Thanh pho Rach Gia"', add
label define vn09a_district_lbl 900 `"Ha Tien"', add
label define vn09a_district_lbl 902 `"Kien Luong"', add
label define vn09a_district_lbl 903 `"Hon Dat"', add
label define vn09a_district_lbl 904 `"Tan Hiep"', add
label define vn09a_district_lbl 905 `"Chau Thanh"', add
label define vn09a_district_lbl 906 `"Giong Rieng"', add
label define vn09a_district_lbl 907 `"Go Quao"', add
label define vn09a_district_lbl 908 `"An Bien"', add
label define vn09a_district_lbl 909 `"An Minh"', add
label define vn09a_district_lbl 910 `"Vinh Thuan"', add
label define vn09a_district_lbl 911 `"Phu Quoc"', add
label define vn09a_district_lbl 912 `"Kien Hai"', add
label define vn09a_district_lbl 913 `"U Minh Thuong"', add
label define vn09a_district_lbl 916 `"Ninh Kieu"', add
label define vn09a_district_lbl 917 `"O Mon"', add
label define vn09a_district_lbl 918 `"Binh Thuy"', add
label define vn09a_district_lbl 919 `"Cai Rang"', add
label define vn09a_district_lbl 923 `"Thot Not"', add
label define vn09a_district_lbl 924 `"Vinh Thanh"', add
label define vn09a_district_lbl 925 `"Co Do"', add
label define vn09a_district_lbl 926 `"Phong Dien"', add
label define vn09a_district_lbl 927 `"Thoi Lai"', add
label define vn09a_district_lbl 930 `"Vi Thanh"', add
label define vn09a_district_lbl 931 `"Nga Bay"', add
label define vn09a_district_lbl 932 `"Chau Thanh A"', add
label define vn09a_district_lbl 933 `"Chau Thanh"', add
label define vn09a_district_lbl 934 `"Phung Hiep"', add
label define vn09a_district_lbl 935 `"Vi Thuy"', add
label define vn09a_district_lbl 936 `"Long My"', add
label define vn09a_district_lbl 941 `"Thanh pho Soc Trang"', add
label define vn09a_district_lbl 942 `"Chau Thanh"', add
label define vn09a_district_lbl 943 `"Ke Sach"', add
label define vn09a_district_lbl 944 `"My Tu"', add
label define vn09a_district_lbl 945 `"Cu Lao Dung"', add
label define vn09a_district_lbl 946 `"Long Phu"', add
label define vn09a_district_lbl 947 `"My Xuyen"', add
label define vn09a_district_lbl 948 `"Nga Nam"', add
label define vn09a_district_lbl 949 `"Thanh Tri"', add
label define vn09a_district_lbl 950 `"Vinh Chau"', add
label define vn09a_district_lbl 954 `"Bac Lieu"', add
label define vn09a_district_lbl 956 `"Hong Dan"', add
label define vn09a_district_lbl 957 `"Phuoc Long"', add
label define vn09a_district_lbl 958 `"Vinh Loi"', add
label define vn09a_district_lbl 959 `"Gia Rai"', add
label define vn09a_district_lbl 960 `"Dong Hai"', add
label define vn09a_district_lbl 961 `"Hoa Binh"', add
label define vn09a_district_lbl 964 `"Thanh pho Ca Mau"', add
label define vn09a_district_lbl 966 `"U Minh"', add
label define vn09a_district_lbl 967 `"Thoi Binh"', add
label define vn09a_district_lbl 968 `"Tran Van Thoi"', add
label define vn09a_district_lbl 969 `"Cai Nuoc"', add
label define vn09a_district_lbl 970 `"Dam Doi"', add
label define vn09a_district_lbl 971 `"Nam Can"', add
label define vn09a_district_lbl 972 `"Phu Tan"', add
label define vn09a_district_lbl 973 `"Ngoc Hien"', add
label values vn09a_district vn09a_district_lbl

label define vn09a_urban_lbl 1 `"Urban"'
label define vn09a_urban_lbl 2 `"Rural"', add
label values vn09a_urban vn09a_urban_lbl

label define vn09a_urbaniz_lbl 1 `"Urban special area"'
label define vn09a_urbaniz_lbl 2 `"Urban grade 1 [most urban]"', add
label define vn09a_urbaniz_lbl 3 `"Urban grade 2"', add
label define vn09a_urbaniz_lbl 4 `"Urban grade 3"', add
label define vn09a_urbaniz_lbl 5 `"Urban grade 4 [least urban, but still ward/district town]"', add
label define vn09a_urbaniz_lbl 6 `"Rural"', add
label values vn09a_urbaniz vn09a_urbaniz_lbl

label define vn09a_hhtype_lbl 1 `"Permanent"'
label define vn09a_hhtype_lbl 2 `"Semi-permanent"', add
label define vn09a_hhtype_lbl 3 `"Temporary"', add
label define vn09a_hhtype_lbl 4 `"Simple"', add
label define vn09a_hhtype_lbl 8 `"Unknown"', add
label define vn09a_hhtype_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_hhtype vn09a_hhtype_lbl

label define vn09a_hhsize_lbl 01 `"1"'
label define vn09a_hhsize_lbl 02 `"2"', add
label define vn09a_hhsize_lbl 03 `"3"', add
label define vn09a_hhsize_lbl 04 `"4"', add
label define vn09a_hhsize_lbl 05 `"5"', add
label define vn09a_hhsize_lbl 06 `"6"', add
label define vn09a_hhsize_lbl 07 `"7"', add
label define vn09a_hhsize_lbl 08 `"8"', add
label define vn09a_hhsize_lbl 09 `"9"', add
label define vn09a_hhsize_lbl 10 `"10"', add
label define vn09a_hhsize_lbl 11 `"11"', add
label define vn09a_hhsize_lbl 12 `"12"', add
label define vn09a_hhsize_lbl 13 `"13"', add
label define vn09a_hhsize_lbl 14 `"14"', add
label define vn09a_hhsize_lbl 15 `"15"', add
label define vn09a_hhsize_lbl 16 `"16"', add
label define vn09a_hhsize_lbl 17 `"17"', add
label define vn09a_hhsize_lbl 18 `"18"', add
label define vn09a_hhsize_lbl 19 `"19"', add
label define vn09a_hhsize_lbl 20 `"20"', add
label define vn09a_hhsize_lbl 21 `"21"', add
label define vn09a_hhsize_lbl 22 `"22"', add
label define vn09a_hhsize_lbl 23 `"23"', add
label define vn09a_hhsize_lbl 24 `"24"', add
label define vn09a_hhsize_lbl 25 `"25"', add
label define vn09a_hhsize_lbl 26 `"26"', add
label define vn09a_hhsize_lbl 27 `"27"', add
label define vn09a_hhsize_lbl 28 `"28"', add
label define vn09a_hhsize_lbl 29 `"29"', add
label define vn09a_hhsize_lbl 30 `"30"', add
label define vn09a_hhsize_lbl 31 `"31"', add
label define vn09a_hhsize_lbl 32 `"32"', add
label define vn09a_hhsize_lbl 34 `"34"', add
label define vn09a_hhsize_lbl 35 `"35"', add
label define vn09a_hhsize_lbl 36 `"36"', add
label define vn09a_hhsize_lbl 37 `"37"', add
label define vn09a_hhsize_lbl 38 `"38"', add
label define vn09a_hhsize_lbl 42 `"42"', add
label define vn09a_hhsize_lbl 43 `"43"', add
label define vn09a_hhsize_lbl 45 `"45"', add
label define vn09a_hhsize_lbl 54 `"54"', add
label values vn09a_hhsize vn09a_hhsize_lbl

label define vn09a_nmale_lbl 00 `"0"'
label define vn09a_nmale_lbl 01 `"1"', add
label define vn09a_nmale_lbl 02 `"2"', add
label define vn09a_nmale_lbl 03 `"3"', add
label define vn09a_nmale_lbl 04 `"4"', add
label define vn09a_nmale_lbl 05 `"5"', add
label define vn09a_nmale_lbl 06 `"6"', add
label define vn09a_nmale_lbl 07 `"7"', add
label define vn09a_nmale_lbl 08 `"8"', add
label define vn09a_nmale_lbl 09 `"9"', add
label define vn09a_nmale_lbl 10 `"10"', add
label define vn09a_nmale_lbl 11 `"11"', add
label define vn09a_nmale_lbl 12 `"12"', add
label define vn09a_nmale_lbl 13 `"13"', add
label define vn09a_nmale_lbl 14 `"14"', add
label define vn09a_nmale_lbl 15 `"15"', add
label define vn09a_nmale_lbl 16 `"16"', add
label define vn09a_nmale_lbl 17 `"17"', add
label define vn09a_nmale_lbl 18 `"18"', add
label define vn09a_nmale_lbl 19 `"19"', add
label define vn09a_nmale_lbl 20 `"20"', add
label define vn09a_nmale_lbl 21 `"21"', add
label define vn09a_nmale_lbl 22 `"22"', add
label define vn09a_nmale_lbl 23 `"23"', add
label define vn09a_nmale_lbl 24 `"24"', add
label define vn09a_nmale_lbl 25 `"25"', add
label define vn09a_nmale_lbl 26 `"26"', add
label define vn09a_nmale_lbl 27 `"27"', add
label define vn09a_nmale_lbl 28 `"28"', add
label define vn09a_nmale_lbl 29 `"29"', add
label define vn09a_nmale_lbl 30 `"30"', add
label define vn09a_nmale_lbl 31 `"31"', add
label define vn09a_nmale_lbl 34 `"34"', add
label define vn09a_nmale_lbl 35 `"35"', add
label define vn09a_nmale_lbl 36 `"36"', add
label define vn09a_nmale_lbl 38 `"38"', add
label define vn09a_nmale_lbl 40 `"40"', add
label define vn09a_nmale_lbl 42 `"42"', add
label define vn09a_nmale_lbl 54 `"54"', add
label values vn09a_nmale vn09a_nmale_lbl

label define vn09a_nfemale_lbl 00 `"0"'
label define vn09a_nfemale_lbl 01 `"1"', add
label define vn09a_nfemale_lbl 02 `"2"', add
label define vn09a_nfemale_lbl 03 `"3"', add
label define vn09a_nfemale_lbl 04 `"4"', add
label define vn09a_nfemale_lbl 05 `"5"', add
label define vn09a_nfemale_lbl 06 `"6"', add
label define vn09a_nfemale_lbl 07 `"7"', add
label define vn09a_nfemale_lbl 08 `"8"', add
label define vn09a_nfemale_lbl 09 `"9"', add
label define vn09a_nfemale_lbl 10 `"10"', add
label define vn09a_nfemale_lbl 11 `"11"', add
label define vn09a_nfemale_lbl 12 `"12"', add
label define vn09a_nfemale_lbl 13 `"13"', add
label define vn09a_nfemale_lbl 14 `"14"', add
label define vn09a_nfemale_lbl 15 `"15"', add
label define vn09a_nfemale_lbl 16 `"16"', add
label define vn09a_nfemale_lbl 17 `"17"', add
label define vn09a_nfemale_lbl 18 `"18"', add
label define vn09a_nfemale_lbl 19 `"19"', add
label define vn09a_nfemale_lbl 21 `"21"', add
label define vn09a_nfemale_lbl 22 `"22"', add
label define vn09a_nfemale_lbl 23 `"23"', add
label define vn09a_nfemale_lbl 30 `"30"', add
label values vn09a_nfemale vn09a_nfemale_lbl

label define vn09a_hasdwell_lbl 1 `"Yes"'
label define vn09a_hasdwell_lbl 2 `"No"', add
label define vn09a_hasdwell_lbl 9 `"Unknown"', add
label values vn09a_hasdwell vn09a_hasdwell_lbl

label define vn09a_shareh_lbl 1 `"Yes"'
label define vn09a_shareh_lbl 2 `"No"', add
label define vn09a_shareh_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_shareh vn09a_shareh_lbl

label define vn09a_rephouse_lbl 1 `"Representative household"'
label define vn09a_rephouse_lbl 2 `"Be recorded with other household"', add
label define vn09a_rephouse_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_rephouse vn09a_rephouse_lbl

label define vn09a_dwtype_lbl 1 `"Apartment building"'
label define vn09a_dwtype_lbl 2 `"Single detached house"', add
label define vn09a_dwtype_lbl 8 `"Unknown"', add
label define vn09a_dwtype_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_dwtype vn09a_dwtype_lbl

label define vn09a_rooms_lbl 01 `"1"'
label define vn09a_rooms_lbl 02 `"2"', add
label define vn09a_rooms_lbl 03 `"3"', add
label define vn09a_rooms_lbl 04 `"4"', add
label define vn09a_rooms_lbl 05 `"5"', add
label define vn09a_rooms_lbl 06 `"6"', add
label define vn09a_rooms_lbl 07 `"7"', add
label define vn09a_rooms_lbl 08 `"8"', add
label define vn09a_rooms_lbl 09 `"9"', add
label define vn09a_rooms_lbl 10 `"10"', add
label define vn09a_rooms_lbl 11 `"11"', add
label define vn09a_rooms_lbl 12 `"12"', add
label define vn09a_rooms_lbl 13 `"13"', add
label define vn09a_rooms_lbl 14 `"14"', add
label define vn09a_rooms_lbl 15 `"15"', add
label define vn09a_rooms_lbl 16 `"16"', add
label define vn09a_rooms_lbl 17 `"17"', add
label define vn09a_rooms_lbl 18 `"18"', add
label define vn09a_rooms_lbl 19 `"19"', add
label define vn09a_rooms_lbl 20 `"20"', add
label define vn09a_rooms_lbl 21 `"21"', add
label define vn09a_rooms_lbl 22 `"22"', add
label define vn09a_rooms_lbl 23 `"23"', add
label define vn09a_rooms_lbl 24 `"24"', add
label define vn09a_rooms_lbl 25 `"25"', add
label define vn09a_rooms_lbl 26 `"26"', add
label define vn09a_rooms_lbl 27 `"27"', add
label define vn09a_rooms_lbl 28 `"28"', add
label define vn09a_rooms_lbl 29 `"29"', add
label define vn09a_rooms_lbl 30 `"30"', add
label define vn09a_rooms_lbl 34 `"34"', add
label define vn09a_rooms_lbl 40 `"40"', add
label define vn09a_rooms_lbl 41 `"41"', add
label define vn09a_rooms_lbl 44 `"44"', add
label define vn09a_rooms_lbl 45 `"45"', add
label define vn09a_rooms_lbl 46 `"46"', add
label define vn09a_rooms_lbl 49 `"49"', add
label define vn09a_rooms_lbl 52 `"52"', add
label define vn09a_rooms_lbl 54 `"54"', add
label define vn09a_rooms_lbl 58 `"58"', add
label define vn09a_rooms_lbl 70 `"70"', add
label define vn09a_rooms_lbl 72 `"72"', add
label define vn09a_rooms_lbl 98 `"Unknown"', add
label define vn09a_rooms_lbl 99 `"NIU (not in the universe)"', add
label values vn09a_rooms vn09a_rooms_lbl

label define vn09a_bedroom_lbl 01 `"1"'
label define vn09a_bedroom_lbl 02 `"2"', add
label define vn09a_bedroom_lbl 03 `"3"', add
label define vn09a_bedroom_lbl 04 `"4"', add
label define vn09a_bedroom_lbl 05 `"5"', add
label define vn09a_bedroom_lbl 06 `"6"', add
label define vn09a_bedroom_lbl 07 `"7"', add
label define vn09a_bedroom_lbl 08 `"8"', add
label define vn09a_bedroom_lbl 09 `"9"', add
label define vn09a_bedroom_lbl 10 `"10"', add
label define vn09a_bedroom_lbl 11 `"11"', add
label define vn09a_bedroom_lbl 12 `"12"', add
label define vn09a_bedroom_lbl 13 `"13"', add
label define vn09a_bedroom_lbl 14 `"14"', add
label define vn09a_bedroom_lbl 15 `"15"', add
label define vn09a_bedroom_lbl 16 `"16"', add
label define vn09a_bedroom_lbl 17 `"17"', add
label define vn09a_bedroom_lbl 18 `"18"', add
label define vn09a_bedroom_lbl 19 `"19"', add
label define vn09a_bedroom_lbl 20 `"20"', add
label define vn09a_bedroom_lbl 21 `"21"', add
label define vn09a_bedroom_lbl 22 `"22"', add
label define vn09a_bedroom_lbl 23 `"23"', add
label define vn09a_bedroom_lbl 24 `"24"', add
label define vn09a_bedroom_lbl 25 `"25"', add
label define vn09a_bedroom_lbl 26 `"26"', add
label define vn09a_bedroom_lbl 27 `"27"', add
label define vn09a_bedroom_lbl 28 `"28"', add
label define vn09a_bedroom_lbl 29 `"29"', add
label define vn09a_bedroom_lbl 30 `"30"', add
label define vn09a_bedroom_lbl 34 `"34"', add
label define vn09a_bedroom_lbl 36 `"36"', add
label define vn09a_bedroom_lbl 39 `"39"', add
label define vn09a_bedroom_lbl 43 `"43"', add
label define vn09a_bedroom_lbl 44 `"44"', add
label define vn09a_bedroom_lbl 45 `"45"', add
label define vn09a_bedroom_lbl 52 `"52"', add
label define vn09a_bedroom_lbl 72 `"72"', add
label define vn09a_bedroom_lbl 98 `"Unknown"', add
label define vn09a_bedroom_lbl 99 `"NIU (not in the universe)"', add
label values vn09a_bedroom vn09a_bedroom_lbl

label define vn09a_flrspace_lbl 9998 `"Unknown"'
label define vn09a_flrspace_lbl 9999 `"NIU (not in the universe)"', add
label values vn09a_flrspace vn09a_flrspace_lbl

label define vn09a_pier_lbl 1 `"Concrete"'
label define vn09a_pier_lbl 2 `"Brick/stone"', add
label define vn09a_pier_lbl 3 `"Steel/iron/durable wood"', add
label define vn09a_pier_lbl 4 `"Wood of low quality/bamboo"', add
label define vn09a_pier_lbl 5 `"Other"', add
label define vn09a_pier_lbl 8 `"Unknown"', add
label define vn09a_pier_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_pier vn09a_pier_lbl

label define vn09a_roof_lbl 1 `"Concrete"'
label define vn09a_roof_lbl 2 `"Tile (cement, terra-cotta)"', add
label define vn09a_roof_lbl 3 `"Slab (cement, metal)"', add
label define vn09a_roof_lbl 4 `"Leaf/straw/oil paper"', add
label define vn09a_roof_lbl 5 `"Other"', add
label define vn09a_roof_lbl 8 `"Unknown"', add
label define vn09a_roof_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_roof vn09a_roof_lbl

label define vn09a_wall_lbl 1 `"Concrete"'
label define vn09a_wall_lbl 2 `"Brick/stone"', add
label define vn09a_wall_lbl 3 `"Wood/metal"', add
label define vn09a_wall_lbl 4 `"Clay/straw"', add
label define vn09a_wall_lbl 5 `"Wattle/plywood"', add
label define vn09a_wall_lbl 6 `"Other"', add
label define vn09a_wall_lbl 8 `"Unknown"', add
label define vn09a_wall_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_wall vn09a_wall_lbl

label define vn09a_useyear_lbl 1 `"Before 1975"'
label define vn09a_useyear_lbl 2 `"From 1975 to 1999"', add
label define vn09a_useyear_lbl 3 `"From 2000 to now"', add
label define vn09a_useyear_lbl 8 `"Unknown"', add
label define vn09a_useyear_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_useyear vn09a_useyear_lbl

label define vn09a_beginyr_lbl 00 `"2000"'
label define vn09a_beginyr_lbl 01 `"2001"', add
label define vn09a_beginyr_lbl 02 `"2002"', add
label define vn09a_beginyr_lbl 03 `"2003"', add
label define vn09a_beginyr_lbl 04 `"2004"', add
label define vn09a_beginyr_lbl 05 `"2005"', add
label define vn09a_beginyr_lbl 06 `"2006"', add
label define vn09a_beginyr_lbl 07 `"2007"', add
label define vn09a_beginyr_lbl 08 `"2008"', add
label define vn09a_beginyr_lbl 09 `"2009"', add
label define vn09a_beginyr_lbl 98 `"Unknown"', add
label define vn09a_beginyr_lbl 99 `"NIU (not in the universe)"', add
label values vn09a_beginyr vn09a_beginyr_lbl

label define vn09a_ownershp_lbl 1 `"Household owned"'
label define vn09a_ownershp_lbl 2 `"Rented/borrowed from the state"', add
label define vn09a_ownershp_lbl 3 `"Rented/borrowed from the private sector"', add
label define vn09a_ownershp_lbl 4 `"Collective"', add
label define vn09a_ownershp_lbl 5 `"Religious organization"', add
label define vn09a_ownershp_lbl 6 `"Joint state and individual"', add
label define vn09a_ownershp_lbl 7 `"Unclear ownership"', add
label define vn09a_ownershp_lbl 8 `"Unknown"', add
label define vn09a_ownershp_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_ownershp vn09a_ownershp_lbl

label define vn09a_light_lbl 1 `"Electricity"'
label define vn09a_light_lbl 2 `"Electric generator"', add
label define vn09a_light_lbl 3 `"Kerosene"', add
label define vn09a_light_lbl 4 `"Gas"', add
label define vn09a_light_lbl 5 `"Other"', add
label define vn09a_light_lbl 9 `"Unknown"', add
label values vn09a_light vn09a_light_lbl

label define vn09a_fuelcook_lbl 1 `"Electricity"'
label define vn09a_fuelcook_lbl 2 `"Paraffin"', add
label define vn09a_fuelcook_lbl 3 `"Gas"', add
label define vn09a_fuelcook_lbl 4 `"Coal"', add
label define vn09a_fuelcook_lbl 5 `"Firewood"', add
label define vn09a_fuelcook_lbl 6 `"Other"', add
label define vn09a_fuelcook_lbl 7 `"Not using fuel"', add
label define vn09a_fuelcook_lbl 9 `"Unknown"', add
label values vn09a_fuelcook vn09a_fuelcook_lbl

label define vn09a_watsrc_lbl 01 `"Indoors tap water"'
label define vn09a_watsrc_lbl 02 `"Public tap water"', add
label define vn09a_watsrc_lbl 03 `"Drilled well"', add
label define vn09a_watsrc_lbl 04 `"Protected dig well"', add
label define vn09a_watsrc_lbl 05 `"Unprotected dig well"', add
label define vn09a_watsrc_lbl 06 `"Protected slot water"', add
label define vn09a_watsrc_lbl 07 `"Unprotected slot water"', add
label define vn09a_watsrc_lbl 08 `"Rain water"', add
label define vn09a_watsrc_lbl 09 `"Other"', add
label define vn09a_watsrc_lbl 99 `"Unknown"', add
label values vn09a_watsrc vn09a_watsrc_lbl

label define vn09a_toilet_lbl 1 `"Indoor flush/semi-flush toilet"'
label define vn09a_toilet_lbl 2 `"Outdoor flush/semi-flush toilet"', add
label define vn09a_toilet_lbl 3 `"Other"', add
label define vn09a_toilet_lbl 4 `"No toilet"', add
label define vn09a_toilet_lbl 9 `"Unknown"', add
label values vn09a_toilet vn09a_toilet_lbl

label define vn09a_tv_lbl 1 `"Yes"'
label define vn09a_tv_lbl 2 `"No"', add
label define vn09a_tv_lbl 9 `"Unknown"', add
label values vn09a_tv vn09a_tv_lbl

label define vn09a_radio_lbl 1 `"Yes"'
label define vn09a_radio_lbl 2 `"No"', add
label define vn09a_radio_lbl 9 `"Unknown"', add
label values vn09a_radio vn09a_radio_lbl

label define vn09a_phone_lbl 1 `"Yes"'
label define vn09a_phone_lbl 2 `"No"', add
label define vn09a_phone_lbl 9 `"Unknown"', add
label values vn09a_phone vn09a_phone_lbl

label define vn09a_computr_lbl 1 `"Yes"'
label define vn09a_computr_lbl 2 `"No"', add
label define vn09a_computr_lbl 9 `"Unknown"', add
label values vn09a_computr vn09a_computr_lbl

label define vn09a_washer_lbl 1 `"Yes"'
label define vn09a_washer_lbl 2 `"No"', add
label define vn09a_washer_lbl 9 `"Unknown"', add
label values vn09a_washer vn09a_washer_lbl

label define vn09a_refrig_lbl 1 `"Yes"'
label define vn09a_refrig_lbl 2 `"No"', add
label define vn09a_refrig_lbl 9 `"Unknown"', add
label values vn09a_refrig vn09a_refrig_lbl

label define vn09a_aircon_lbl 1 `"Yes"'
label define vn09a_aircon_lbl 2 `"No"', add
label define vn09a_aircon_lbl 9 `"Unknown"', add
label values vn09a_aircon vn09a_aircon_lbl

label define vn09a_moto_lbl 1 `"Yes"'
label define vn09a_moto_lbl 2 `"No"', add
label define vn09a_moto_lbl 9 `"Unknown"', add
label values vn09a_moto vn09a_moto_lbl

label define vn09a_pernum_lbl 00 `"Household record"'
label define vn09a_pernum_lbl 01 `"1"', add
label define vn09a_pernum_lbl 02 `"2"', add
label define vn09a_pernum_lbl 03 `"3"', add
label define vn09a_pernum_lbl 04 `"4"', add
label define vn09a_pernum_lbl 05 `"5"', add
label define vn09a_pernum_lbl 06 `"6"', add
label define vn09a_pernum_lbl 07 `"7"', add
label define vn09a_pernum_lbl 08 `"8"', add
label define vn09a_pernum_lbl 09 `"9"', add
label define vn09a_pernum_lbl 10 `"10"', add
label define vn09a_pernum_lbl 11 `"11"', add
label define vn09a_pernum_lbl 12 `"12"', add
label define vn09a_pernum_lbl 13 `"13"', add
label define vn09a_pernum_lbl 14 `"14"', add
label define vn09a_pernum_lbl 15 `"15"', add
label define vn09a_pernum_lbl 16 `"16"', add
label define vn09a_pernum_lbl 17 `"17"', add
label define vn09a_pernum_lbl 18 `"18"', add
label define vn09a_pernum_lbl 19 `"19"', add
label define vn09a_pernum_lbl 20 `"20"', add
label define vn09a_pernum_lbl 21 `"21"', add
label define vn09a_pernum_lbl 22 `"22"', add
label define vn09a_pernum_lbl 23 `"23"', add
label define vn09a_pernum_lbl 24 `"24"', add
label define vn09a_pernum_lbl 25 `"25"', add
label define vn09a_pernum_lbl 26 `"26"', add
label define vn09a_pernum_lbl 27 `"27"', add
label define vn09a_pernum_lbl 28 `"28"', add
label define vn09a_pernum_lbl 29 `"29"', add
label define vn09a_pernum_lbl 30 `"30"', add
label define vn09a_pernum_lbl 31 `"31"', add
label define vn09a_pernum_lbl 32 `"32"', add
label define vn09a_pernum_lbl 33 `"33"', add
label define vn09a_pernum_lbl 34 `"34"', add
label define vn09a_pernum_lbl 35 `"35"', add
label define vn09a_pernum_lbl 36 `"36"', add
label define vn09a_pernum_lbl 37 `"37"', add
label define vn09a_pernum_lbl 38 `"38"', add
label define vn09a_pernum_lbl 39 `"39"', add
label define vn09a_pernum_lbl 40 `"40"', add
label define vn09a_pernum_lbl 41 `"41"', add
label define vn09a_pernum_lbl 42 `"42"', add
label define vn09a_pernum_lbl 43 `"43"', add
label define vn09a_pernum_lbl 44 `"44"', add
label define vn09a_pernum_lbl 45 `"45"', add
label define vn09a_pernum_lbl 46 `"46"', add
label define vn09a_pernum_lbl 47 `"47"', add
label define vn09a_pernum_lbl 48 `"48"', add
label define vn09a_pernum_lbl 49 `"49"', add
label define vn09a_pernum_lbl 50 `"50"', add
label define vn09a_pernum_lbl 51 `"51"', add
label define vn09a_pernum_lbl 52 `"52"', add
label define vn09a_pernum_lbl 53 `"53"', add
label define vn09a_pernum_lbl 54 `"54"', add
label values vn09a_pernum vn09a_pernum_lbl

label define vn09a_personno_lbl 01 `"1"'
label define vn09a_personno_lbl 02 `"2"', add
label define vn09a_personno_lbl 03 `"3"', add
label define vn09a_personno_lbl 04 `"4"', add
label define vn09a_personno_lbl 05 `"5"', add
label define vn09a_personno_lbl 06 `"6"', add
label define vn09a_personno_lbl 07 `"7"', add
label define vn09a_personno_lbl 08 `"8"', add
label define vn09a_personno_lbl 09 `"9"', add
label define vn09a_personno_lbl 10 `"10"', add
label define vn09a_personno_lbl 11 `"11"', add
label define vn09a_personno_lbl 12 `"12"', add
label define vn09a_personno_lbl 13 `"13"', add
label define vn09a_personno_lbl 14 `"14"', add
label define vn09a_personno_lbl 15 `"15"', add
label define vn09a_personno_lbl 16 `"16"', add
label define vn09a_personno_lbl 17 `"17"', add
label define vn09a_personno_lbl 18 `"18"', add
label define vn09a_personno_lbl 19 `"19"', add
label define vn09a_personno_lbl 20 `"20"', add
label define vn09a_personno_lbl 21 `"21"', add
label define vn09a_personno_lbl 22 `"22"', add
label define vn09a_personno_lbl 23 `"23"', add
label define vn09a_personno_lbl 24 `"24"', add
label define vn09a_personno_lbl 25 `"25"', add
label define vn09a_personno_lbl 26 `"26"', add
label define vn09a_personno_lbl 27 `"27"', add
label define vn09a_personno_lbl 28 `"28"', add
label define vn09a_personno_lbl 29 `"29"', add
label define vn09a_personno_lbl 30 `"30"', add
label define vn09a_personno_lbl 31 `"31"', add
label define vn09a_personno_lbl 32 `"32"', add
label define vn09a_personno_lbl 33 `"33"', add
label define vn09a_personno_lbl 34 `"34"', add
label define vn09a_personno_lbl 35 `"35"', add
label define vn09a_personno_lbl 36 `"36"', add
label define vn09a_personno_lbl 37 `"37"', add
label define vn09a_personno_lbl 38 `"38"', add
label define vn09a_personno_lbl 39 `"39"', add
label define vn09a_personno_lbl 40 `"40"', add
label define vn09a_personno_lbl 41 `"41"', add
label define vn09a_personno_lbl 42 `"42"', add
label define vn09a_personno_lbl 43 `"43"', add
label define vn09a_personno_lbl 44 `"44"', add
label define vn09a_personno_lbl 45 `"45"', add
label define vn09a_personno_lbl 46 `"46"', add
label define vn09a_personno_lbl 47 `"47"', add
label define vn09a_personno_lbl 48 `"48"', add
label define vn09a_personno_lbl 49 `"49"', add
label define vn09a_personno_lbl 50 `"50"', add
label define vn09a_personno_lbl 51 `"51"', add
label define vn09a_personno_lbl 52 `"52"', add
label define vn09a_personno_lbl 53 `"53"', add
label define vn09a_personno_lbl 54 `"54"', add
label values vn09a_personno vn09a_personno_lbl

label define vn09a_relate_lbl 1 `"Household head"'
label define vn09a_relate_lbl 2 `"Spouse"', add
label define vn09a_relate_lbl 3 `"Biological child"', add
label define vn09a_relate_lbl 4 `"Grandchild"', add
label define vn09a_relate_lbl 5 `"Parent (including father-in-law/mother-in-law)"', add
label define vn09a_relate_lbl 6 `"Other relative or non-relative"', add
label define vn09a_relate_lbl 9 `"Unknown"', add
label values vn09a_relate vn09a_relate_lbl

label define vn09a_sex_lbl 1 `"Male"'
label define vn09a_sex_lbl 2 `"Female"', add
label values vn09a_sex vn09a_sex_lbl

label define vn09a_age_lbl 00 `"Less than year"'
label define vn09a_age_lbl 01 `"1"', add
label define vn09a_age_lbl 02 `"2"', add
label define vn09a_age_lbl 03 `"3"', add
label define vn09a_age_lbl 04 `"4"', add
label define vn09a_age_lbl 05 `"5"', add
label define vn09a_age_lbl 06 `"6"', add
label define vn09a_age_lbl 07 `"7"', add
label define vn09a_age_lbl 08 `"8"', add
label define vn09a_age_lbl 09 `"9"', add
label define vn09a_age_lbl 10 `"10"', add
label define vn09a_age_lbl 11 `"11"', add
label define vn09a_age_lbl 12 `"12"', add
label define vn09a_age_lbl 13 `"13"', add
label define vn09a_age_lbl 14 `"14"', add
label define vn09a_age_lbl 15 `"15"', add
label define vn09a_age_lbl 16 `"16"', add
label define vn09a_age_lbl 17 `"17"', add
label define vn09a_age_lbl 18 `"18"', add
label define vn09a_age_lbl 19 `"19"', add
label define vn09a_age_lbl 20 `"20"', add
label define vn09a_age_lbl 21 `"21"', add
label define vn09a_age_lbl 22 `"22"', add
label define vn09a_age_lbl 23 `"23"', add
label define vn09a_age_lbl 24 `"24"', add
label define vn09a_age_lbl 25 `"25"', add
label define vn09a_age_lbl 26 `"26"', add
label define vn09a_age_lbl 27 `"27"', add
label define vn09a_age_lbl 28 `"28"', add
label define vn09a_age_lbl 29 `"29"', add
label define vn09a_age_lbl 30 `"30"', add
label define vn09a_age_lbl 31 `"31"', add
label define vn09a_age_lbl 32 `"32"', add
label define vn09a_age_lbl 33 `"33"', add
label define vn09a_age_lbl 34 `"34"', add
label define vn09a_age_lbl 35 `"35"', add
label define vn09a_age_lbl 36 `"36"', add
label define vn09a_age_lbl 37 `"37"', add
label define vn09a_age_lbl 38 `"38"', add
label define vn09a_age_lbl 39 `"39"', add
label define vn09a_age_lbl 40 `"40"', add
label define vn09a_age_lbl 41 `"41"', add
label define vn09a_age_lbl 42 `"42"', add
label define vn09a_age_lbl 43 `"43"', add
label define vn09a_age_lbl 44 `"44"', add
label define vn09a_age_lbl 45 `"45"', add
label define vn09a_age_lbl 46 `"46"', add
label define vn09a_age_lbl 47 `"47"', add
label define vn09a_age_lbl 48 `"48"', add
label define vn09a_age_lbl 49 `"49"', add
label define vn09a_age_lbl 50 `"50"', add
label define vn09a_age_lbl 51 `"51"', add
label define vn09a_age_lbl 52 `"52"', add
label define vn09a_age_lbl 53 `"53"', add
label define vn09a_age_lbl 54 `"54"', add
label define vn09a_age_lbl 55 `"55"', add
label define vn09a_age_lbl 56 `"56"', add
label define vn09a_age_lbl 57 `"57"', add
label define vn09a_age_lbl 58 `"58"', add
label define vn09a_age_lbl 59 `"59"', add
label define vn09a_age_lbl 60 `"60"', add
label define vn09a_age_lbl 61 `"61"', add
label define vn09a_age_lbl 62 `"62"', add
label define vn09a_age_lbl 63 `"63"', add
label define vn09a_age_lbl 64 `"64"', add
label define vn09a_age_lbl 65 `"65"', add
label define vn09a_age_lbl 66 `"66"', add
label define vn09a_age_lbl 67 `"67"', add
label define vn09a_age_lbl 68 `"68"', add
label define vn09a_age_lbl 69 `"69"', add
label define vn09a_age_lbl 70 `"70"', add
label define vn09a_age_lbl 71 `"71"', add
label define vn09a_age_lbl 72 `"72"', add
label define vn09a_age_lbl 73 `"73"', add
label define vn09a_age_lbl 74 `"74"', add
label define vn09a_age_lbl 75 `"75"', add
label define vn09a_age_lbl 76 `"76"', add
label define vn09a_age_lbl 77 `"77"', add
label define vn09a_age_lbl 78 `"78"', add
label define vn09a_age_lbl 79 `"79"', add
label define vn09a_age_lbl 80 `"80"', add
label define vn09a_age_lbl 81 `"81"', add
label define vn09a_age_lbl 82 `"82"', add
label define vn09a_age_lbl 83 `"83"', add
label define vn09a_age_lbl 84 `"84"', add
label define vn09a_age_lbl 85 `"85"', add
label define vn09a_age_lbl 86 `"86"', add
label define vn09a_age_lbl 87 `"87"', add
label define vn09a_age_lbl 88 `"88"', add
label define vn09a_age_lbl 89 `"89"', add
label define vn09a_age_lbl 90 `"90"', add
label define vn09a_age_lbl 91 `"91"', add
label define vn09a_age_lbl 92 `"92"', add
label define vn09a_age_lbl 93 `"93"', add
label define vn09a_age_lbl 94 `"94"', add
label define vn09a_age_lbl 95 `"95+"', add
label values vn09a_age vn09a_age_lbl

label define vn09a_mig_lbl 1 `"Same commune/ward"'
label define vn09a_mig_lbl 2 `"Another commune/ward in same district/quarter"', add
label define vn09a_mig_lbl 3 `"Another district/quarter in same province"', add
label define vn09a_mig_lbl 4 `"Another province/city"', add
label define vn09a_mig_lbl 5 `"Abroad"', add
label define vn09a_mig_lbl 8 `"Unknown"', add
label define vn09a_mig_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_mig vn09a_mig_lbl

label define vn09a_urbmig_lbl 1 `"Ward/district town [urban]"'
label define vn09a_urbmig_lbl 2 `"Commune [rural]"', add
label define vn09a_urbmig_lbl 8 `"Unknown"', add
label define vn09a_urbmig_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_urbmig vn09a_urbmig_lbl

label define vn09a_educ_lbl 1 `"Attending"'
label define vn09a_educ_lbl 2 `"Ever attended"', add
label define vn09a_educ_lbl 3 `"Never attended"', add
label define vn09a_educ_lbl 8 `"Unknown"', add
label define vn09a_educ_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_educ vn09a_educ_lbl

label define vn09a_edattan_lbl 01 `"Pre-school"'
label define vn09a_edattan_lbl 02 `"Primary"', add
label define vn09a_edattan_lbl 03 `"Lower secondary"', add
label define vn09a_edattan_lbl 04 `"Short-term training"', add
label define vn09a_edattan_lbl 05 `"Higher secondary"', add
label define vn09a_edattan_lbl 06 `"Vocational training"', add
label define vn09a_edattan_lbl 07 `"Vocational education"', add
label define vn09a_edattan_lbl 08 `"Trade college"', add
label define vn09a_edattan_lbl 09 `"College"', add
label define vn09a_edattan_lbl 10 `"University"', add
label define vn09a_edattan_lbl 11 `"Master"', add
label define vn09a_edattan_lbl 12 `"Doctorate"', add
label define vn09a_edattan_lbl 98 `"Unknown"', add
label define vn09a_edattan_lbl 99 `"NIU (not in the universe)"', add
label values vn09a_edattan vn09a_edattan_lbl

label define vn09a_grade_lbl 00 `"0"'
label define vn09a_grade_lbl 01 `"1"', add
label define vn09a_grade_lbl 02 `"2"', add
label define vn09a_grade_lbl 03 `"3"', add
label define vn09a_grade_lbl 04 `"4"', add
label define vn09a_grade_lbl 05 `"5"', add
label define vn09a_grade_lbl 06 `"6"', add
label define vn09a_grade_lbl 07 `"7"', add
label define vn09a_grade_lbl 08 `"8"', add
label define vn09a_grade_lbl 09 `"9"', add
label define vn09a_grade_lbl 10 `"10"', add
label define vn09a_grade_lbl 11 `"11"', add
label define vn09a_grade_lbl 12 `"12"', add
label define vn09a_grade_lbl 98 `"Unknown"', add
label define vn09a_grade_lbl 99 `"NIU (not in the universe)"', add
label values vn09a_grade vn09a_grade_lbl

label define vn09a_edattain_lbl 0100 `"Primary less than a year"'
label define vn09a_edattain_lbl 0101 `"Primary grade 1"', add
label define vn09a_edattain_lbl 0102 `"Primary grade 2"', add
label define vn09a_edattain_lbl 0103 `"Primary grade 3"', add
label define vn09a_edattain_lbl 0104 `"Primary grade 4"', add
label define vn09a_edattain_lbl 0105 `"Primary grade 5"', add
label define vn09a_edattain_lbl 0199 `"Primary, grade unknown"', add
label define vn09a_edattain_lbl 0205 `"Secondary grade 5"', add
label define vn09a_edattain_lbl 0206 `"Lower secondary grade 6"', add
label define vn09a_edattain_lbl 0207 `"Lower secondary grade 7"', add
label define vn09a_edattain_lbl 0208 `"Lower secondary grade 8"', add
label define vn09a_edattain_lbl 0209 `"Lower secondary grade 9"', add
label define vn09a_edattain_lbl 0299 `"Lower secondary, grade unknown"', add
label define vn09a_edattain_lbl 0300 `"Short-term training"', add
label define vn09a_edattain_lbl 0399 `"Short-term training"', add
label define vn09a_edattain_lbl 0409 `"Higher secondary grade 9"', add
label define vn09a_edattain_lbl 0410 `"Higher secondary grade 10"', add
label define vn09a_edattain_lbl 0411 `"Higher secondary grade 11"', add
label define vn09a_edattain_lbl 0412 `"Higher secondary grade 12"', add
label define vn09a_edattain_lbl 0499 `"Higher secondary, grade unknown"', add
label define vn09a_edattain_lbl 0500 `"Vocational training less than a year"', add
label define vn09a_edattain_lbl 0501 `"Vocational training year 1"', add
label define vn09a_edattain_lbl 0502 `"Vocational training year 2"', add
label define vn09a_edattain_lbl 0503 `"Vocational training year 3"', add
label define vn09a_edattain_lbl 0504 `"Vocational training year 4"', add
label define vn09a_edattain_lbl 0509 `"Vocational training year 9"', add
label define vn09a_edattain_lbl 0512 `"Vocational training year 12"', add
label define vn09a_edattain_lbl 0599 `"Vocational training, year unknown"', add
label define vn09a_edattain_lbl 0600 `"Vocational education less than a year"', add
label define vn09a_edattain_lbl 0601 `"Vocational education year 1"', add
label define vn09a_edattain_lbl 0602 `"Vocational education year 2"', add
label define vn09a_edattain_lbl 0603 `"Vocational education year 3"', add
label define vn09a_edattain_lbl 0604 `"Vocational education year 4"', add
label define vn09a_edattain_lbl 0609 `"Vocational education year 9"', add
label define vn09a_edattain_lbl 0612 `"Vocational education year 12"', add
label define vn09a_edattain_lbl 0699 `"Vocational education, year unknown"', add
label define vn09a_edattain_lbl 0700 `"Trade college less than a year"', add
label define vn09a_edattain_lbl 0701 `"Trade college year 1"', add
label define vn09a_edattain_lbl 0702 `"Trade college year 2"', add
label define vn09a_edattain_lbl 0703 `"Trade college year 3"', add
label define vn09a_edattain_lbl 0704 `"Trade college year 4"', add
label define vn09a_edattain_lbl 0706 `"Trade college year 6"', add
label define vn09a_edattain_lbl 0799 `"Trade college, year unknown"', add
label define vn09a_edattain_lbl 0800 `"College less than a year"', add
label define vn09a_edattain_lbl 0801 `"College year 1"', add
label define vn09a_edattain_lbl 0802 `"College year 2"', add
label define vn09a_edattain_lbl 0803 `"College year 3"', add
label define vn09a_edattain_lbl 0804 `"College year 4"', add
label define vn09a_edattain_lbl 0899 `"College, year unknown"', add
label define vn09a_edattain_lbl 0900 `"University less than a year"', add
label define vn09a_edattain_lbl 0901 `"University year 1"', add
label define vn09a_edattain_lbl 0902 `"University year 2"', add
label define vn09a_edattain_lbl 0903 `"University year 3"', add
label define vn09a_edattain_lbl 0904 `"University year 4"', add
label define vn09a_edattain_lbl 0905 `"University year 5"', add
label define vn09a_edattain_lbl 0906 `"University year 6"', add
label define vn09a_edattain_lbl 0907 `"University year 7"', add
label define vn09a_edattain_lbl 0908 `"University year 8"', add
label define vn09a_edattain_lbl 0909 `"University year 9"', add
label define vn09a_edattain_lbl 0999 `"University, year unknown"', add
label define vn09a_edattain_lbl 1000 `"Master's less than a year"', add
label define vn09a_edattain_lbl 1001 `"Master's year 1"', add
label define vn09a_edattain_lbl 1002 `"Master's year 2"', add
label define vn09a_edattain_lbl 1003 `"Master's year 3"', add
label define vn09a_edattain_lbl 1004 `"Master's year 4"', add
label define vn09a_edattain_lbl 1005 `"Master's year 5"', add
label define vn09a_edattain_lbl 1006 `"Master's year 6"', add
label define vn09a_edattain_lbl 1007 `"Master's year 7"', add
label define vn09a_edattain_lbl 1008 `"Master's year 8"', add
label define vn09a_edattain_lbl 1009 `"Master's year 9"', add
label define vn09a_edattain_lbl 1099 `"Master's, year unknown"', add
label define vn09a_edattain_lbl 1101 `"Doctorate year 1"', add
label define vn09a_edattain_lbl 1102 `"Doctorate year 2"', add
label define vn09a_edattain_lbl 1103 `"Doctorate year 3"', add
label define vn09a_edattain_lbl 1104 `"Doctorate year 4"', add
label define vn09a_edattain_lbl 1105 `"Doctorate year 5"', add
label define vn09a_edattain_lbl 1108 `"Doctorate year 8"', add
label define vn09a_edattain_lbl 1199 `"Doctorate, year unknown"', add
label define vn09a_edattain_lbl 9999 `"NIU (not in the universe)"', add
label values vn09a_edattain vn09a_edattain_lbl

label define vn09a_lit_lbl 1 `"Yes"'
label define vn09a_lit_lbl 2 `"No"', add
label define vn09a_lit_lbl 8 `"Unknown"', add
label define vn09a_lit_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_lit vn09a_lit_lbl

label define vn09a_marst_lbl 1 `"Never married"'
label define vn09a_marst_lbl 2 `"Married"', add
label define vn09a_marst_lbl 3 `"Widowed"', add
label define vn09a_marst_lbl 4 `"Divorced"', add
label define vn09a_marst_lbl 5 `"Separated"', add
label define vn09a_marst_lbl 8 `"Unknown"', add
label define vn09a_marst_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_marst vn09a_marst_lbl

label define vn09a_qualif_lbl 01 `"No qualification"'
label define vn09a_qualif_lbl 02 `"Short-term training"', add
label define vn09a_qualif_lbl 03 `"Trade vocational school"', add
label define vn09a_qualif_lbl 04 `"Vocational school"', add
label define vn09a_qualif_lbl 05 `"Trade college"', add
label define vn09a_qualif_lbl 06 `"College"', add
label define vn09a_qualif_lbl 07 `"University"', add
label define vn09a_qualif_lbl 08 `"Master"', add
label define vn09a_qualif_lbl 09 `"Doctorate"', add
label define vn09a_qualif_lbl 98 `"Unknown"', add
label define vn09a_qualif_lbl 99 `"NIU (not in the universe)"', add
label values vn09a_qualif vn09a_qualif_lbl

label define vn09a_emp1_lbl 1 `"Yes"'
label define vn09a_emp1_lbl 2 `"No"', add
label define vn09a_emp1_lbl 8 `"Unknown"', add
label define vn09a_emp1_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_emp1 vn09a_emp1_lbl

label define vn09a_emp2_lbl 1 `"Yes"'
label define vn09a_emp2_lbl 2 `"No"', add
label define vn09a_emp2_lbl 8 `"Unknown"', add
label define vn09a_emp2_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_emp2 vn09a_emp2_lbl

label define vn09a_emp3_lbl 1 `"Yes"'
label define vn09a_emp3_lbl 2 `"No"', add
label define vn09a_emp3_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_emp3 vn09a_emp3_lbl

label define vn09a_occ_lbl 000 `"Armed forces occupations"'
label define vn09a_occ_lbl 010 `"Commissioned armed forces officers"', add
label define vn09a_occ_lbl 020 `"Non-commissioned armed forces officers"', add
label define vn09a_occ_lbl 030 `"Other armed forces occupations"', add
label define vn09a_occ_lbl 100 `"Leaders, managers and administrators of branches, levels and organizations"', add
label define vn09a_occ_lbl 111 `"Vietnam communist party leaders at national level"', add
label define vn09a_occ_lbl 112 `"Vietnam communist party leaders of province level"', add
label define vn09a_occ_lbl 113 `"Vietnam communist party leaders of district level"', add
label define vn09a_occ_lbl 114 `"Vietnam communist party leaders of commune level"', add
label define vn09a_occ_lbl 115 `"Vietnam communist party leaders at enterprises and organizations"', add
label define vn09a_occ_lbl 121 `"Leaders of the national assembly (full time)"', add
label define vn09a_occ_lbl 122 `"Leaders of office of the country's president"', add
label define vn09a_occ_lbl 131 `"Leaders of government"', add
label define vn09a_occ_lbl 132 `"Leaders of government ministries, branches and equivalent"', add
label define vn09a_occ_lbl 133 `"Leaders of general offices under ministries"', add
label define vn09a_occ_lbl 140 `"Leaders of people's court and procuracy, unspecified"', add
label define vn09a_occ_lbl 141 `"Leaders of people's supreme court and procuracy"', add
label define vn09a_occ_lbl 142 `"Leaders of people's local court and procuracy"', add
label define vn09a_occ_lbl 143 `"Leaders of other courts (excluding army court ) in accordance with the law"', add
label define vn09a_occ_lbl 150 `"Leaders of local people's council and people's committee (including local specialized office, excluding justice and union offices), unspecified"', add
label define vn09a_occ_lbl 151 `"Leaders of people's council (full time)"', add
label define vn09a_occ_lbl 152 `"Leaders of people's committee (including specialized offices)"', add
label define vn09a_occ_lbl 160 `"Leaders of unions: fatherland front, labour union, women union, farmer union, communist youth union, war veteran union, unspecified"', add
label define vn09a_occ_lbl 161 `"Leaders of unions (excluding labour union) (full time)"', add
label define vn09a_occ_lbl 162 `"Leaders of labour union (full time)"', add
label define vn09a_occ_lbl 171 `"Leaders of trade union (full time)"', add
label define vn09a_occ_lbl 172 `"Leaders of humanity organizations and for other special interests (full time)"', add
label define vn09a_occ_lbl 181 `"Chairmen, deputy chairmen of board of directors, directors general, deputy directors general, rectors, deputy rectors of big universities"', add
label define vn09a_occ_lbl 182 `"Directors, deputy directors of production and implementation units belong to corporations, head of company, big university and equivalent"', add
label define vn09a_occ_lbl 183 `"Directors, deputy directors of management units belong to corporations, head of company, big university and equivalent"', add
label define vn09a_occ_lbl 184 `"Directors, deputy directors of company, enterprise, factory; rectors, deputy rectors of small colleges"', add
label define vn09a_occ_lbl 210 `"Science and technical professionals, unspecified"', add
label define vn09a_occ_lbl 211 `"Physical and earth science professionals"', add
label define vn09a_occ_lbl 212 `"Mathematics and statistics professionals"', add
label define vn09a_occ_lbl 213 `"Life science and health professionals"', add
label define vn09a_occ_lbl 214 `"Technical professionals (excluding electrical technique)"', add
label define vn09a_occ_lbl 215 `"Electrical engineers"', add
label define vn09a_occ_lbl 216 `"Architects, engineers and related professionals"', add
label define vn09a_occ_lbl 220 `"Life science and health professionals, unspecified"', add
label define vn09a_occ_lbl 221 `"Health professionals (excluding nursing)"', add
label define vn09a_occ_lbl 222 `"Nursing and midwifery professionals"', add
label define vn09a_occ_lbl 223 `"Traditional medicine and aid medicine professionals"', add
label define vn09a_occ_lbl 224 `"Assistant doctor professionals"', add
label define vn09a_occ_lbl 225 `"Veterinary professionals"', add
label define vn09a_occ_lbl 226 `"Other health professionals"', add
label define vn09a_occ_lbl 230 `"Teaching professionals, unspecified"', add
label define vn09a_occ_lbl 231 `"College, university and higher education teaching professionals"', add
label define vn09a_occ_lbl 232 `"Trade teaching professionals"', add
label define vn09a_occ_lbl 233 `"Secondary education teaching professionals"', add
label define vn09a_occ_lbl 234 `"Primary and pre-primary education teaching professionals"', add
label define vn09a_occ_lbl 235 `"Other teaching professionals not elsewhere classified (new)"', add
label define vn09a_occ_lbl 240 `"Business and management professionals, unspecified"', add
label define vn09a_occ_lbl 241 `"Financial professionals"', add
label define vn09a_occ_lbl 242 `"Management professionals"', add
label define vn09a_occ_lbl 243 `"Sales, marketing and public relations professionals"', add
label define vn09a_occ_lbl 244 `"Government adjustment professionals"', add
label define vn09a_occ_lbl 250 `"Information technology and telecommunications professionals, unspecified"', add
label define vn09a_occ_lbl 251 `"Analysis and development software and applications professionals"', add
label define vn09a_occ_lbl 252 `"Database and network professionals"', add
label define vn09a_occ_lbl 260 `"Legal, social and cultural professionals, unspecified"', add
label define vn09a_occ_lbl 261 `"Legal professionals"', add
label define vn09a_occ_lbl 262 `"Archivists, librarians and related information professionals"', add
label define vn09a_occ_lbl 263 `"Social and religion professionals"', add
label define vn09a_occ_lbl 264 `"Writers, journalists and linguists"', add
label define vn09a_occ_lbl 265 `"Creative and performing artists"', add
label define vn09a_occ_lbl 310 `"Science and engineering associate professionals, unspecified"', add
label define vn09a_occ_lbl 311 `"Physical science and engineering associate professionals"', add
label define vn09a_occ_lbl 312 `"Mining, manufacturing and building inspectors"', add
label define vn09a_occ_lbl 313 `"Checking, operating and controlling procedure technicians"', add
label define vn09a_occ_lbl 314 `"Life sciences and related technicians"', add
label define vn09a_occ_lbl 315 `"Ship and aircraft controllers and technicians"', add
label define vn09a_occ_lbl 320 `"Health associate professionals, unspecified"', add
label define vn09a_occ_lbl 321 `"Health and pharmaceutics associate professionals"', add
label define vn09a_occ_lbl 322 `"Nursing and midwifery associate professionals"', add
label define vn09a_occ_lbl 323 `"Traditional medicine practitioners and related technicians"', add
label define vn09a_occ_lbl 324 `"Veterinary associate professionals and related technicians"', add
label define vn09a_occ_lbl 325 `"Other health associate professionals"', add
label define vn09a_occ_lbl 330 `"Business and management associate professionals, unspecified"', add
label define vn09a_occ_lbl 331 `"Applied mathematics and finance associate professionals"', add
label define vn09a_occ_lbl 332 `"Sales and trade agents and brokers"', add
label define vn09a_occ_lbl 333 `"Business services employee agents"', add
label define vn09a_occ_lbl 334 `"Administrative associate professionals"', add
label define vn09a_occ_lbl 335 `"Government adjustment associate professionals"', add
label define vn09a_occ_lbl 340 `"Legal, social and cultural associate professionals, unspecified"', add
label define vn09a_occ_lbl 341 `"Legal, social and religion associate professionals"', add
label define vn09a_occ_lbl 342 `"Sports and sports training associate professionals"', add
label define vn09a_occ_lbl 343 `"Fine art, culture and cooking associate professionals"', add
label define vn09a_occ_lbl 350 `"Information technology and telecommunications associate professionals, unspecified"', add
label define vn09a_occ_lbl 351 `"User and operator assistant associate professionals in information technology and telecommunications"', add
label define vn09a_occ_lbl 352 `"Telecom and television technicians"', add
label define vn09a_occ_lbl 360 `"Teaching associate professionals, unspecified"', add
label define vn09a_occ_lbl 361 `"Primary education teaching associate professionals"', add
label define vn09a_occ_lbl 362 `"Pre-primary education teaching associate professionals"', add
label define vn09a_occ_lbl 363 `"Special education teaching associate professionals"', add
label define vn09a_occ_lbl 364 `"Other teaching associate professionals"', add
label define vn09a_occ_lbl 400 `"Clerks, unspecified"', add
label define vn09a_occ_lbl 410 `"Office clerks, unspecified"', add
label define vn09a_occ_lbl 411 `"General office clerks"', add
label define vn09a_occ_lbl 412 `"Secretaries (general)"', add
label define vn09a_occ_lbl 413 `"Keyboard operating clerks"', add
label define vn09a_occ_lbl 420 `"Customer services clerks, unspecified"', add
label define vn09a_occ_lbl 421 `"Cashiers, tellers and related clerks"', add
label define vn09a_occ_lbl 422 `"Client information clerks"', add
label define vn09a_occ_lbl 430 `"Data and note-taking clerks, unspecified"', add
label define vn09a_occ_lbl 431 `"Data clerks and related clerks"', add
label define vn09a_occ_lbl 432 `"Note-taking clerks"', add
label define vn09a_occ_lbl 440 `"Other office clerks"', add
label define vn09a_occ_lbl 500 `"Service workers and market sales workers"', add
label define vn09a_occ_lbl 510 `"Personal services workers, unspecified"', add
label define vn09a_occ_lbl 511 `"Travel attendants and guides"', add
label define vn09a_occ_lbl 512 `"Cooks"', add
label define vn09a_occ_lbl 513 `"Waiters and bartenders"', add
label define vn09a_occ_lbl 514 `"Hairdressers, barbers, beauticians and related workers"', add
label define vn09a_occ_lbl 515 `"House stewards and housekeepers"', add
label define vn09a_occ_lbl 516 `"Other personal services workers"', add
label define vn09a_occ_lbl 520 `"Salespersons, unspecified"', add
label define vn09a_occ_lbl 521 `"Street and market salespersons"', add
label define vn09a_occ_lbl 522 `"Shop salespersons"', add
label define vn09a_occ_lbl 523 `"Cashier, tellers and related clerks"', add
label define vn09a_occ_lbl 524 `"Other salespersons"', add
label define vn09a_occ_lbl 530 `"Personal care services workers, unspecified"', add
label define vn09a_occ_lbl 531 `"Child care workers and associate teachers"', add
label define vn09a_occ_lbl 532 `"Nursing and personal health care workers"', add
label define vn09a_occ_lbl 540 `"Protective services workers, unspecified"', add
label define vn09a_occ_lbl 600 `"Skilled agricultural, forestry and fishery workers"', add
label define vn09a_occ_lbl 610 `"Commercial skilled agricultural workers, unspecified"', add
label define vn09a_occ_lbl 611 `"Commercial gardeners and crop growers"', add
label define vn09a_occ_lbl 612 `"Commercial animal producers"', add
label define vn09a_occ_lbl 613 `"Commercial crop and animal producers"', add
label define vn09a_occ_lbl 620 `"Commercial skilled forestry, fishery and hunting workers, unspecified"', add
label define vn09a_occ_lbl 621 `"Commercial skilled forestry and related workers"', add
label define vn09a_occ_lbl 622 `"Commercial skilled fishery and hunting workers"', add
label define vn09a_occ_lbl 630 `"Subsistence agricultural, fishery, hunting and gathering workers, unspecified"', add
label define vn09a_occ_lbl 631 `"Subsistence agricultural workers"', add
label define vn09a_occ_lbl 632 `"Subsistence animal producers"', add
label define vn09a_occ_lbl 633 `"Subsistence crop and animal producers"', add
label define vn09a_occ_lbl 634 `"Subsistence fishery, hunting,  trapping and gathering workers"', add
label define vn09a_occ_lbl 710 `"Building trades workers and related workers (excluding electricians), unspecified"', add
label define vn09a_occ_lbl 711 `"Building frame and related trades workers"', add
label define vn09a_occ_lbl 712 `"Building finishers and related trades workers"', add
label define vn09a_occ_lbl 713 `"Painters, building structure cleaners and related workers"', add
label define vn09a_occ_lbl 720 `"Metal and machinery trades workers, unspecified"', add
label define vn09a_occ_lbl 721 `"Metal molders, welders, sheet-metal workers, structural metal prepares, and related workers"', add
label define vn09a_occ_lbl 722 `"Blacksmiths, toolmakers and related workers"', add
label define vn09a_occ_lbl 723 `"Machinery mechanics and fitters"', add
label define vn09a_occ_lbl 730 `"Precision, handicraft, printing and related trades workers, unspecified"', add
label define vn09a_occ_lbl 731 `"Handicraft workers"', add
label define vn09a_occ_lbl 732 `"Printing and related trades workers"', add
label define vn09a_occ_lbl 740 `"Electrical and electronic workers, unspecified"', add
label define vn09a_occ_lbl 741 `"Electrical instrument repairers and fitters"', add
label define vn09a_occ_lbl 742 `"Telecommunication instrument repairers and fitters"', add
label define vn09a_occ_lbl 750 `"Food, wood, textile, garment and related products processing trades workers, unspecified"', add
label define vn09a_occ_lbl 751 `"Food and related products processing trades workers"', add
label define vn09a_occ_lbl 752 `"Wood, wood products and related processing trades workers"', add
label define vn09a_occ_lbl 753 `"Textile, garment and related products processing trades workers"', add
label define vn09a_occ_lbl 754 `"Other handicraft and related trades workers"', add
label define vn09a_occ_lbl 800 `"Plant, machine operators and assemblers"', add
label define vn09a_occ_lbl 810 `"Stationary instrument and machine operators, unspecified"', add
label define vn09a_occ_lbl 811 `"Mineral products processing machine operators"', add
label define vn09a_occ_lbl 812 `"Metal products processing machine operators"', add
label define vn09a_occ_lbl 813 `"Chemical, photographic and film products machine operators"', add
label define vn09a_occ_lbl 814 `"Paper,  plastic and rubber products machine operators"', add
label define vn09a_occ_lbl 815 `"Textile material, leather, animal feather products machine operators"', add
label define vn09a_occ_lbl 816 `"Food and related products processing machine operators"', add
label define vn09a_occ_lbl 817 `"Paper and wood products machine operators"', add
label define vn09a_occ_lbl 818 `"Other machine and instrument operators"', add
label define vn09a_occ_lbl 820 `"Assemblers"', add
label define vn09a_occ_lbl 830 `"Drivers and mobile machinery operators, unspecified"', add
label define vn09a_occ_lbl 831 `"Railway engine drivers and related workers"', add
label define vn09a_occ_lbl 832 `"Passenger car, van and motorcycle drivers"', add
label define vn09a_occ_lbl 833 `"Middle lorry, heavy truck and bus drivers"', add
label define vn09a_occ_lbl 834 `"Mobile machinery operators"', add
label define vn09a_occ_lbl 835 `"Ships’ deck crews and related workers"', add
label define vn09a_occ_lbl 900 `"Elementary occupations"', add
label define vn09a_occ_lbl 910 `"Domestic helpers and cleaners and related workers, unspecified"', add
label define vn09a_occ_lbl 911 `"Domestic, hotel, office helpers and cleaners"', add
label define vn09a_occ_lbl 912 `"Car, window cleaners, laundry persons and related workers using hands"', add
label define vn09a_occ_lbl 920 `"Agricultural, forestry, fishery labourers"', add
label define vn09a_occ_lbl 930 `"Labourers in mining, construction, manufacturing and transport, unspecified"', add
label define vn09a_occ_lbl 931 `"Labourers in mining and construction"', add
label define vn09a_occ_lbl 932 `"Labourers in manufacturing"', add
label define vn09a_occ_lbl 933 `"Labourers in transport and warehouse"', add
label define vn09a_occ_lbl 940 `"Helpers in food preparing"', add
label define vn09a_occ_lbl 950 `"Sales and services elementary occupations, unspecified"', add
label define vn09a_occ_lbl 951 `"Labourers in street and related labourers"', add
label define vn09a_occ_lbl 952 `"Street vendors, other products (excluding street food vendors)"', add
label define vn09a_occ_lbl 960 `"Garbage collectors and other elementary labourers, unspecified"', add
label define vn09a_occ_lbl 961 `"Garbage collectors and related labourers"', add
label define vn09a_occ_lbl 962 `"Other elementary labourers"', add
label define vn09a_occ_lbl 998 `"Unknown"', add
label define vn09a_occ_lbl 999 `"NIU (not in the universe)"', add
label values vn09a_occ vn09a_occ_lbl

label define vn09a_classwk_lbl 1 `"Family worker"'
label define vn09a_classwk_lbl 2 `"Employee"', add
label define vn09a_classwk_lbl 3 `"Others"', add
label define vn09a_classwk_lbl 8 `"Unknown"', add
label define vn09a_classwk_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_classwk vn09a_classwk_lbl

label define vn09a_sector_lbl 1 `"Individual"'
label define vn09a_sector_lbl 2 `"Household of individual production and trade"', add
label define vn09a_sector_lbl 3 `"Collective"', add
label define vn09a_sector_lbl 4 `"Private"', add
label define vn09a_sector_lbl 5 `"State"', add
label define vn09a_sector_lbl 6 `"Foreign investment"', add
label define vn09a_sector_lbl 8 `"Unknown"', add
label define vn09a_sector_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_sector vn09a_sector_lbl

label define vn09a_ind_lbl 010 `"Agriculture and related service activities, unspecified"'
label define vn09a_ind_lbl 011 `"Growing of annual plants"', add
label define vn09a_ind_lbl 012 `"Growing of perennial plants"', add
label define vn09a_ind_lbl 013 `"Multiplying and growing of industrial crops"', add
label define vn09a_ind_lbl 014 `"Farming of animals"', add
label define vn09a_ind_lbl 015 `"Growing of crops combined with farming of animals"', add
label define vn09a_ind_lbl 016 `"Agricultural service activities"', add
label define vn09a_ind_lbl 017 `"Hunting, trapping and related activities"', add
label define vn09a_ind_lbl 020 `"Forestry and related activities, unspecified"', add
label define vn09a_ind_lbl 021 `"Forestation and growing forests"', add
label define vn09a_ind_lbl 022 `"Logging and exploiting of other forest products"', add
label define vn09a_ind_lbl 023 `"Gathering other non-wood and non-forest products"', add
label define vn09a_ind_lbl 024 `"Forestry service activities"', add
label define vn09a_ind_lbl 030 `"Fishing and fish farming, unspecified"', add
label define vn09a_ind_lbl 031 `"Fishing"', add
label define vn09a_ind_lbl 032 `"Fish farming"', add
label define vn09a_ind_lbl 050 `"Mining of hard coal and lignite, unspecified"', add
label define vn09a_ind_lbl 051 `"Mining and agglomeration of hard coal"', add
label define vn09a_ind_lbl 052 `"Mining and agglomeration of lignite"', add
label define vn09a_ind_lbl 060 `"Extraction of crude petroleum and natural gas, unspecified"', add
label define vn09a_ind_lbl 061 `"Extraction of crude petroleum"', add
label define vn09a_ind_lbl 062 `"Extraction of natural gas"', add
label define vn09a_ind_lbl 070 `"Mining of metal ores, unspecified"', add
label define vn09a_ind_lbl 071 `"Mining of iron ores"', add
label define vn09a_ind_lbl 072 `"Mining of non-ferrous metal ores (except valuable and rare iron ores)"', add
label define vn09a_ind_lbl 073 `"Mining of valuable and rare iron ores"', add
label define vn09a_ind_lbl 080 `"Other mining and quarrying, unspecified"', add
label define vn09a_ind_lbl 081 `"Quarrying of stone, sand, gravel and clay"', add
label define vn09a_ind_lbl 089 `"Mining and quarrying not elsewhere classified"', add
label define vn09a_ind_lbl 090 `"Mining and quarrying support service activities, unspecified"', add
label define vn09a_ind_lbl 091 `"Crude petroleum and natural gas mining support service activities"', add
label define vn09a_ind_lbl 099 `"Other mining and quarrying support service activities"', add
label define vn09a_ind_lbl 100 `"Manufacturing of food products, unspecified"', add
label define vn09a_ind_lbl 101 `"Production, processing and preservation of meat and meat products"', add
label define vn09a_ind_lbl 102 `"Production, processing and preservation of fish and fish products"', add
label define vn09a_ind_lbl 103 `"Production, processing and preservation of fruits and vegetables"', add
label define vn09a_ind_lbl 104 `"Manufacturing of vegetable and animal oils and fats"', add
label define vn09a_ind_lbl 105 `"Manufacturing of dairy products"', add
label define vn09a_ind_lbl 106 `"Manufacturing and milling of starches"', add
label define vn09a_ind_lbl 107 `"Manufacturing of other food products"', add
label define vn09a_ind_lbl 108 `"Manufacturing of prepared livestock, poultry and fish feeds"', add
label define vn09a_ind_lbl 110 `"Manufacturing of beverages"', add
label define vn09a_ind_lbl 120 `"Manufacturing of tobacco products"', add
label define vn09a_ind_lbl 130 `"Manufacturing of textiles, unspecified"', add
label define vn09a_ind_lbl 131 `"Spinning, weaving and finishing of textiles"', add
label define vn09a_ind_lbl 132 `"Manufacturing of other textiles"', add
label define vn09a_ind_lbl 140 `"Manufacturing of clothing apparel, unspecified"', add
label define vn09a_ind_lbl 141 `"Manufacture of clothing apparel (except fur)"', add
label define vn09a_ind_lbl 142 `"Manufacturing of articles of fur"', add
label define vn09a_ind_lbl 143 `"Manufacturing of knitwear"', add
label define vn09a_ind_lbl 150 `"Manufacturing of leather and related products, unspecified"', add
label define vn09a_ind_lbl 151 `"Tanning, leather processing, manufacturing of luggage, handbags, saddle, harness, processing and dyeing of fur"', add
label define vn09a_ind_lbl 152 `"Manufacturing of footwear"', add
label define vn09a_ind_lbl 160 `"Manufacturing of wood and products of wood (except furniture), cork and straw and weaving materials, unspecified"', add
label define vn09a_ind_lbl 161 `"Sawmilling and planing of wood"', add
label define vn09a_ind_lbl 162 `"Manufacturing of products of wood, bamboo, neohouzeaua (except furniture), and straw and weaving materials"', add
label define vn09a_ind_lbl 170 `"Manufacturing of paper and paper products"', add
label define vn09a_ind_lbl 180 `"Printing and reproduction of recorded media, unspecified"', add
label define vn09a_ind_lbl 181 `"Printing and services activities related to printing"', add
label define vn09a_ind_lbl 182 `"Reproduction of recorded media"', add
label define vn09a_ind_lbl 190 `"Manufacturing of coke and refined petroleum products, unspecified"', add
label define vn09a_ind_lbl 191 `"Manufacturing of coke products"', add
label define vn09a_ind_lbl 192 `"Manufacturing of refined petroleum products"', add
label define vn09a_ind_lbl 200 `"Manufacturing of chemicals and chemical products, unspecified"', add
label define vn09a_ind_lbl 201 `"Manufacturing of basic chemicals, fertilizers, nitrogen compounds, plastics and synthetic rubber in primary form"', add
label define vn09a_ind_lbl 202 `"Manufacturing of other chemical products"', add
label define vn09a_ind_lbl 203 `"Manufacturing of man-made fibres"', add
label define vn09a_ind_lbl 210 `"Manufacturing of medicines, pharmaceutical chemistry, and pharmaceuticals"', add
label define vn09a_ind_lbl 220 `"Manufacturing of rubber and plastic products, unspecified"', add
label define vn09a_ind_lbl 221 `"Manufacturing of rubber products"', add
label define vn09a_ind_lbl 222 `"Manufacturing of plastic products"', add
label define vn09a_ind_lbl 230 `"Manufacturing of other non-metallic mineral products, unspecified"', add
label define vn09a_ind_lbl 231 `"Manufacturing of glass and glass products"', add
label define vn09a_ind_lbl 239 `"Manufacturing of non-metallic mineral products not elsewhere classified"', add
label define vn09a_ind_lbl 240 `"Manufacturing of metals, unspecified"', add
label define vn09a_ind_lbl 241 `"Manufacturing of iron, steel and pig-iron"', add
label define vn09a_ind_lbl 242 `"Manufacturing of non-ferrous and precious metals"', add
label define vn09a_ind_lbl 243 `"Casting of metals"', add
label define vn09a_ind_lbl 250 `"Manufacturing of fabricated metals products (except machinery and equipment), unspecified"', add
label define vn09a_ind_lbl 251 `"Manufacturing of metal structural components, tanks, reservoirs and steam generators"', add
label define vn09a_ind_lbl 252 `"Manufacturing of weapons and ammunitions"', add
label define vn09a_ind_lbl 259 `"Manufacturing of other metal products; metal processing service activities"', add
label define vn09a_ind_lbl 260 `"Manufacturing of electronic products, computers, optical products, unspecified"', add
label define vn09a_ind_lbl 261 `"Manufacturing of electronic components"', add
label define vn09a_ind_lbl 262 `"Manufacturing of computers and peripheral equipment"', add
label define vn09a_ind_lbl 263 `"Manufacturing of communication equipment"', add
label define vn09a_ind_lbl 264 `"Manufacturing of civil electronic products"', add
label define vn09a_ind_lbl 265 `"Manufacturing of instruments and appliances for measuring, checking, testing, navigating and controlling; manufacturing of watches"', add
label define vn09a_ind_lbl 266 `"Manufacturing of radiant equipments, electronic medical instruments and electrotherapeutics"', add
label define vn09a_ind_lbl 267 `"Manufacturing of optical equipment"', add
label define vn09a_ind_lbl 268 `"Manufacturing of magnetic tapes, magnetic and optical discs"', add
label define vn09a_ind_lbl 270 `"Manufacturing of electrical equipment, unspecified"', add
label define vn09a_ind_lbl 271 `"Manufacturing of motors, generators, transformers, electricity distributors and control apparatuses"', add
label define vn09a_ind_lbl 272 `"Manufacturing of batteries and accumulators"', add
label define vn09a_ind_lbl 273 `"Manufacturing of wire and cable"', add
label define vn09a_ind_lbl 274 `"Manufacturing of electric lighting equipment"', add
label define vn09a_ind_lbl 275 `"Manufacturing of civil electric equipment"', add
label define vn09a_ind_lbl 279 `"Manufacturing of other electrical equipment"', add
label define vn09a_ind_lbl 280 `"Manufacturing of other equipment and machinery not elsewhere classified, unspecified"', add
label define vn09a_ind_lbl 281 `"Manufacturing of general purpose machinery"', add
label define vn09a_ind_lbl 282 `"Manufacturing of special purpose machinery"', add
label define vn09a_ind_lbl 290 `"Manufacturing of motor vehicle trailers and semi-trailers, unspecified"', add
label define vn09a_ind_lbl 291 `"Manufacturing of motor vehicles"', add
label define vn09a_ind_lbl 292 `"Manufacturing of bodies for motor vehicles, trailers and semi-trailers"', add
label define vn09a_ind_lbl 293 `"Manufacturing of accessories and repair parts for motor vehicles"', add
label define vn09a_ind_lbl 300 `"Manufacturing of other transport equipment, unspecified"', add
label define vn09a_ind_lbl 301 `"Building of ships and boats"', add
label define vn09a_ind_lbl 302 `"Manufacturing of railway, tramway locomotives and carriages"', add
label define vn09a_ind_lbl 303 `"Manufacturing of aircrafts, spacecrafts and related machines"', add
label define vn09a_ind_lbl 304 `"Manufacturing of fighting army motor vehicles"', add
label define vn09a_ind_lbl 309 `"Manufacturing of transport equipments not elsewhere classified"', add
label define vn09a_ind_lbl 310 `"Manufacturing of furniture (beds, wardrobes, tables, chairs), unspecified"', add
label define vn09a_ind_lbl 320 `"Other manufacturing industries, unspecified"', add
label define vn09a_ind_lbl 321 `"Manufacturing of jewelry and related articles"', add
label define vn09a_ind_lbl 322 `"Manufacturing of musical instruments"', add
label define vn09a_ind_lbl 323 `"Manufacturing of sporting goods"', add
label define vn09a_ind_lbl 324 `"Manufacturing of toys and games"', add
label define vn09a_ind_lbl 325 `"Manufacturing of medical, dental, orthopedic and rehabilitation equipment and instruments"', add
label define vn09a_ind_lbl 329 `"Other manufacturing not elsewhere classified"', add
label define vn09a_ind_lbl 330 `"Repairing, maintaining, installing of equipment and machineries, unspecified"', add
label define vn09a_ind_lbl 331 `"Repairing and maintaining of equipments, instruments and fabricated metal products"', add
label define vn09a_ind_lbl 332 `"Installing of industrial equipments and machineries"', add
label define vn09a_ind_lbl 350 `"Production and distribution of electricity, gas, heat and steam, water and air-conditioning, unspecified"', add
label define vn09a_ind_lbl 351 `"Production, transmittance and distribution of electricity"', add
label define vn09a_ind_lbl 352 `"Manufacturing of gas; distribution of gaseous fuels through mains"', add
label define vn09a_ind_lbl 353 `"Production and distribution of heat and steam, water and air-conditioning and ice"', add
label define vn09a_ind_lbl 360 `"Collection, purification and distribution of water"', add
label define vn09a_ind_lbl 370 `"Sewerage and processing of waste water"', add
label define vn09a_ind_lbl 380 `"Collecting, processing, scrapping and recycling of waste, unspecified"', add
label define vn09a_ind_lbl 381 `"Collecting of waste"', add
label define vn09a_ind_lbl 382 `"Processing and scrapping of waste"', add
label define vn09a_ind_lbl 383 `"Recycling of waste"', add
label define vn09a_ind_lbl 390 `"Processing of pollution and other waste management activities"', add
label define vn09a_ind_lbl 410 `"Building of constructions"', add
label define vn09a_ind_lbl 420 `"Civil engineering, unspecified"', add
label define vn09a_ind_lbl 421 `"Building of rail and road constructions"', add
label define vn09a_ind_lbl 422 `"Building of public benefit constructions"', add
label define vn09a_ind_lbl 429 `"Other civil engineering"', add
label define vn09a_ind_lbl 430 `"Specialized construction, unspecified"', add
label define vn09a_ind_lbl 431 `"Site preparation"', add
label define vn09a_ind_lbl 432 `"Installation of electrical and water supply system and other construction installations"', add
label define vn09a_ind_lbl 433 `"Building completion"', add
label define vn09a_ind_lbl 439 `"Other specialized constructions"', add
label define vn09a_ind_lbl 450 `"Sale and repair of cars, motorcycles and other motor vehicles, unspecified"', add
label define vn09a_ind_lbl 451 `"Car and other motor vehicle sales"', add
label define vn09a_ind_lbl 452 `"Maintenance and repair of cars and other motor vehicles"', add
label define vn09a_ind_lbl 453 `"Sale of motor vehicle parts and accessories"', add
label define vn09a_ind_lbl 454 `"Sale, maintenance and repair of motorcycles and related parts and accessories"', add
label define vn09a_ind_lbl 460 `"Wholesale trade (except cars, motorcycles and other motor vehicles), unspecified"', add
label define vn09a_ind_lbl 461 `"Agents, intermediaries, auctioning"', add
label define vn09a_ind_lbl 462 `"Wholesale of agricultural raw materials (except wood, bamboo) and live animals"', add
label define vn09a_ind_lbl 463 `"Wholesale of rice, food, beverages and tobacco products"', add
label define vn09a_ind_lbl 464 `"Wholesale of household goods"', add
label define vn09a_ind_lbl 465 `"Wholesale of machinery, equipment and supplies"', add
label define vn09a_ind_lbl 466 `"Other specialized wholesale trade"', add
label define vn09a_ind_lbl 469 `"General wholesale trade"', add
label define vn09a_ind_lbl 470 `"Retail trade (except cars, motorcycles and other motor vehicles), unspecified"', add
label define vn09a_ind_lbl 471 `"Retail trade in general stores"', add
label define vn09a_ind_lbl 472 `"Retail sale of food, beverages and tobacco in specialized stores"', add
label define vn09a_ind_lbl 473 `"Retail sale of fuel in specialized stores"', add
label define vn09a_ind_lbl 474 `"Retail sale of information and communication equipment in specialized stores"', add
label define vn09a_ind_lbl 475 `"Retail sale of household goods in specialized stores"', add
label define vn09a_ind_lbl 476 `"Retail sale of cultural and entertainment goods in specialized stores"', add
label define vn09a_ind_lbl 477 `"Retail sale of other goods in specialized stores"', add
label define vn09a_ind_lbl 478 `"Retail sale in markets and mobile retailers"', add
label define vn09a_ind_lbl 479 `"Other retail sale (except retail sale in stores, mobile retailers and markets)"', add
label define vn09a_ind_lbl 490 `"Transport via railway, road and pipeline, unspecified"', add
label define vn09a_ind_lbl 491 `"Transport via railway"', add
label define vn09a_ind_lbl 492 `"Transportation by buses"', add
label define vn09a_ind_lbl 493 `"Other land transport"', add
label define vn09a_ind_lbl 494 `"Pipeline transport"', add
label define vn09a_ind_lbl 500 `"Water transport, unspecified"', add
label define vn09a_ind_lbl 501 `"Sea and coastal water transport"', add
label define vn09a_ind_lbl 502 `"Inland water transport"', add
label define vn09a_ind_lbl 510 `"Air transport,  unspecified"', add
label define vn09a_ind_lbl 511 `"Air passenger transport"', add
label define vn09a_ind_lbl 512 `"Air cargo transport"', add
label define vn09a_ind_lbl 520 `"Storage and transport supporting activities,  unspecified"', add
label define vn09a_ind_lbl 521 `"Storage and warehousing"', add
label define vn09a_ind_lbl 522 `"Transport supporting service activities"', add
label define vn09a_ind_lbl 530 `"Post and courier,  unspecified"', add
label define vn09a_ind_lbl 531 `"Post"', add
label define vn09a_ind_lbl 532 `"Courier"', add
label define vn09a_ind_lbl 550 `"Accommodation services,  unspecified"', add
label define vn09a_ind_lbl 551 `"Short-stay accommodation services"', add
label define vn09a_ind_lbl 559 `"Other accommodation"', add
label define vn09a_ind_lbl 560 `"Food services"', add
label define vn09a_ind_lbl 561 `"Restaurants and mobile catering services"', add
label define vn09a_ind_lbl 562 `"Providing irregular catering services under contract and other food services"', add
label define vn09a_ind_lbl 563 `"Beverage services"', add
label define vn09a_ind_lbl 581 `"Publishing of books, periodicals and other publishing"', add
label define vn09a_ind_lbl 582 `"Production software"', add
label define vn09a_ind_lbl 590 `"Cinematographic works, television programme production, recording and music production, unspecified"', add
label define vn09a_ind_lbl 591 `"Cinematographic works and television programme production"', add
label define vn09a_ind_lbl 592 `"Recording and music production activities"', add
label define vn09a_ind_lbl 600 `"Radio and  television broadcasting activities, unspecified"', add
label define vn09a_ind_lbl 601 `"Radio broadcasting activities"', add
label define vn09a_ind_lbl 602 `"Television activities and provision of subscriber programme"', add
label define vn09a_ind_lbl 610 `"Telecommunication, unspecified"', add
label define vn09a_ind_lbl 611 `"Wired telecommunication activities"', add
label define vn09a_ind_lbl 612 `"Wireless telecommunication activities"', add
label define vn09a_ind_lbl 613 `"Satellite telecommunication activities"', add
label define vn09a_ind_lbl 619 `"Other telecommunication activities"', add
label define vn09a_ind_lbl 620 `"Computer programming, consultancy services and computer related activities"', add
label define vn09a_ind_lbl 630 `"Information service activities, unspecified"', add
label define vn09a_ind_lbl 631 `"Data processing, renting and related activities, information portals"', add
label define vn09a_ind_lbl 632 `"Other information services"', add
label define vn09a_ind_lbl 640 `"Financial intermediation (except insurance and social insurance), unspecified"', add
label define vn09a_ind_lbl 641 `"Monetary intermediation"', add
label define vn09a_ind_lbl 642 `"Property holding company activities"', add
label define vn09a_ind_lbl 643 `"Credit activities, credit granting and other financial organizations"', add
label define vn09a_ind_lbl 649 `"Other financial intermediation (except insurance and social insurance)"', add
label define vn09a_ind_lbl 650 `"Insurance, reinsurance and social insurance (except compulsory social security), unspecified"', add
label define vn09a_ind_lbl 651 `"Insurance"', add
label define vn09a_ind_lbl 652 `"Reinsurance"', add
label define vn09a_ind_lbl 653 `"Social insurance"', add
label define vn09a_ind_lbl 661 `"Activities auxiliary to financial intermediation (except insurance and social insurance)"', add
label define vn09a_ind_lbl 662 `"Activities auxiliary to insurance and social insurance"', add
label define vn09a_ind_lbl 663 `"Fund management activities"', add
label define vn09a_ind_lbl 680 `"Real estate activities, unspecified"', add
label define vn09a_ind_lbl 681 `"Real estate activities with owned or leased property"', add
label define vn09a_ind_lbl 682 `"Real estate consultant, brokers, property auction"', add
label define vn09a_ind_lbl 690 `"Legal, accounting and auditing activities, unspecified"', add
label define vn09a_ind_lbl 691 `"Legal activities"', add
label define vn09a_ind_lbl 692 `"Activities related to accounting, auditing and tax consultancy"', add
label define vn09a_ind_lbl 701 `"Activities in office buildings"', add
label define vn09a_ind_lbl 702 `"Management consultancy activities"', add
label define vn09a_ind_lbl 710 `"Architectural activities: technical testing and analysis activities, unspecified"', add
label define vn09a_ind_lbl 711 `"Architectural and related technical consultancy activities"', add
label define vn09a_ind_lbl 712 `"Technical testing and analysis activities"', add
label define vn09a_ind_lbl 720 `"Scientific research and development, unspecified"', add
label define vn09a_ind_lbl 721 `"Research and development on natural sciences and technologies"', add
label define vn09a_ind_lbl 722 `"Research and development on social sciences and humanities"', add
label define vn09a_ind_lbl 730 `"Advertising and market research, unspecified"', add
label define vn09a_ind_lbl 731 `"Advertising"', add
label define vn09a_ind_lbl 732 `"Market research and public opinion surveying"', add
label define vn09a_ind_lbl 740 `"Other technological, scientific and specialized activities, unspecified"', add
label define vn09a_ind_lbl 741 `"Specialized design activities"', add
label define vn09a_ind_lbl 742 `"Photographic activities"', add
label define vn09a_ind_lbl 749 `"Other technological, scientific and specialized activities not elsewhere classified"', add
label define vn09a_ind_lbl 750 `"Veterinary activities"', add
label define vn09a_ind_lbl 771 `"Renting of motor vehicles"', add
label define vn09a_ind_lbl 772 `"Renting of personal belongings and household goods"', add
label define vn09a_ind_lbl 773 `"Renting of equipment, machinery and other visible goods"', add
label define vn09a_ind_lbl 774 `"Renting of non-financial intangible assets"', add
label define vn09a_ind_lbl 780 `"Labour and employment service activities, unspecified"', add
label define vn09a_ind_lbl 781 `"Activities of labour, employment, consultancy and labour intermediary centers/agencies"', add
label define vn09a_ind_lbl 782 `"Temporary labor supply"', add
label define vn09a_ind_lbl 783 `"Labor supply and management"', add
label define vn09a_ind_lbl 790 `"Activities of travel agencies and tour operators, supporting services related to tourism promotion and tour operation, unspecified"', add
label define vn09a_ind_lbl 791 `"Activities of travel agencies and tour operators"', add
label define vn09a_ind_lbl 792 `"Supporting and auxiliary services related to tourism promotion and tour operation services"', add
label define vn09a_ind_lbl 800 `"Investigation and security activities, unspecified"', add
label define vn09a_ind_lbl 801 `"Personal security activities"', add
label define vn09a_ind_lbl 802 `"Security system services"', add
label define vn09a_ind_lbl 803 `"Investigation services"', add
label define vn09a_ind_lbl 810 `"Building and landscape sanitary services"', add
label define vn09a_ind_lbl 811 `"General supporting services"', add
label define vn09a_ind_lbl 812 `"Sanitary services"', add
label define vn09a_ind_lbl 813 `"Botanical garden and landscape reserve service activities"', add
label define vn09a_ind_lbl 820 `"Administrative activities, office supporting and other business supporting activities, unspecified"', add
label define vn09a_ind_lbl 821 `"Administrative and office supporting activities"', add
label define vn09a_ind_lbl 822 `"Telephone calling and related service activities"', add
label define vn09a_ind_lbl 823 `"Trade introduction and promotion organizing activities"', add
label define vn09a_ind_lbl 829 `"Other business supporting activities not elsewhere classified"', add
label define vn09a_ind_lbl 840 `"Activities of communist party, social-political organizations, governmental management, national defence security; compulsory social security, unspecified"', add
label define vn09a_ind_lbl 841 `"Activities of communist party, social-political organizations, governmental management, socio-economic policy management"', add
label define vn09a_ind_lbl 842 `"Activities serving all countries"', add
label define vn09a_ind_lbl 843 `"Mandatory social insurance activities"', add
label define vn09a_ind_lbl 850 `"Training and education, unspecified"', add
label define vn09a_ind_lbl 851 `"Pre-school education"', add
label define vn09a_ind_lbl 852 `"Primary education"', add
label define vn09a_ind_lbl 853 `"Secondary education"', add
label define vn09a_ind_lbl 854 `"College, university and higher education"', add
label define vn09a_ind_lbl 855 `"Other education"', add
label define vn09a_ind_lbl 856 `"Supporting education services"', add
label define vn09a_ind_lbl 860 `"Human health activities, unspecified"', add
label define vn09a_ind_lbl 861 `"Hospital, health care center activities"', add
label define vn09a_ind_lbl 862 `"Activities of medical consultation; specialized and dental clinics"', add
label define vn09a_ind_lbl 869 `"Other human health activities"', add
label define vn09a_ind_lbl 870 `"Home-caring and nursing activities, unspecified"', add
label define vn09a_ind_lbl 871 `"Food-providing and nursing activities"', add
label define vn09a_ind_lbl 872 `"Activities of home-caring for physically and mentally disabled and drug addicted persons"', add
label define vn09a_ind_lbl 873 `"Activities of home-caring for veterans and old and invalid persons"', add
label define vn09a_ind_lbl 879 `"Other home-caring health care activities"', add
label define vn09a_ind_lbl 881 `"Non-home-caring activities of caring for veterans, old, invalid and disabled persons"', add
label define vn09a_ind_lbl 889 `"Other non-home-caring health care activities"', add
label define vn09a_ind_lbl 900 `"Composing, art and recreational activities"', add
label define vn09a_ind_lbl 910 `"Library, archives, museums and other cultural activities"', add
label define vn09a_ind_lbl 920 `"Lottery, betting and gambling activities"', add
label define vn09a_ind_lbl 930 `"Sport, recreational and entertainment activities, unspecified"', add
label define vn09a_ind_lbl 931 `"Sport activities"', add
label define vn09a_ind_lbl 932 `"Other recreational and entertainment activities"', add
label define vn09a_ind_lbl 940 `"Activities of other unions and organizations, unspecified"', add
label define vn09a_ind_lbl 941 `"Activities of business and occupational unions"', add
label define vn09a_ind_lbl 942 `"Activities of trade unions"', add
label define vn09a_ind_lbl 949 `"Activities of other unions"', add
label define vn09a_ind_lbl 950 `"Activities of repairing computer, personal and household belongings, unspecified"', add
label define vn09a_ind_lbl 951 `"Activities of repairing computers, communication equipment"', add
label define vn09a_ind_lbl 952 `"Activities of repairing personal and household belongings"', add
label define vn09a_ind_lbl 960 `"Other personal service activities, unspecified"', add
label define vn09a_ind_lbl 961 `"Sauna, massage and other recreational activities (excluding sport activities)"', add
label define vn09a_ind_lbl 962 `"Washing and dry-cleaning of textile and fur products"', add
label define vn09a_ind_lbl 963 `"Other personal service activities not elsewhere classified"', add
label define vn09a_ind_lbl 970 `"Activities of domestic hired labourers in households"', add
label define vn09a_ind_lbl 980 `"Activities of household-producing products and services consumed by own household, unspecified"', add
label define vn09a_ind_lbl 981 `"Activities of household-producing products consumed by own household"', add
label define vn09a_ind_lbl 982 `"Activities of household-producing services consumed by own household"', add
label define vn09a_ind_lbl 990 `"Extra-territorial organizations and bodies"', add
label define vn09a_ind_lbl 998 `"Unknown"', add
label define vn09a_ind_lbl 999 `"NIU (not in the universe)"', add
label values vn09a_ind vn09a_ind_lbl

label define vn09a_unemp_lbl 1 `"Yes"'
label define vn09a_unemp_lbl 2 `"No"', add
label define vn09a_unemp_lbl 8 `"Unknown"', add
label define vn09a_unemp_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_unemp vn09a_unemp_lbl

label define vn09a_unemp1_lbl 1 `"Yes"'
label define vn09a_unemp1_lbl 2 `"No"', add
label define vn09a_unemp1_lbl 8 `"Unknown"', add
label define vn09a_unemp1_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_unemp1 vn09a_unemp1_lbl

label define vn09a_reasue_lbl 0 `"NIU (not in the universe)"'
label define vn09a_reasue_lbl 1 `"No suitable work/do not know where"', add
label define vn09a_reasue_lbl 2 `"Illness/personal matter/wait for job application's result"', add
label define vn09a_reasue_lbl 3 `"Bad weather/off season"', add
label define vn09a_reasue_lbl 4 `"Attending school"', add
label define vn09a_reasue_lbl 5 `"Housework"', add
label define vn09a_reasue_lbl 6 `"Disabled"', add
label define vn09a_reasue_lbl 7 `"Not willing to work"', add
label define vn09a_reasue_lbl 8 `"Other"', add
label define vn09a_reasue_lbl 9 `"Unknown"', add
label values vn09a_reasue vn09a_reasue_lbl

label define vn09a_birthx_lbl 1 `"Yes"'
label define vn09a_birthx_lbl 2 `"No"', add
label define vn09a_birthx_lbl 8 `"Unknown"', add
label define vn09a_birthx_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_birthx vn09a_birthx_lbl

label define vn09a_disvis_lbl 1 `"No difficulty"'
label define vn09a_disvis_lbl 2 `"A little difficulty"', add
label define vn09a_disvis_lbl 3 `"Very difficult"', add
label define vn09a_disvis_lbl 4 `"Unable to see"', add
label define vn09a_disvis_lbl 8 `"Unknown"', add
label define vn09a_disvis_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_disvis vn09a_disvis_lbl

label define vn09a_dishear_lbl 1 `"No difficulty"'
label define vn09a_dishear_lbl 2 `"A little difficulty"', add
label define vn09a_dishear_lbl 3 `"Very difficult"', add
label define vn09a_dishear_lbl 4 `"Unable to hear"', add
label define vn09a_dishear_lbl 8 `"Unknown"', add
label define vn09a_dishear_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_dishear vn09a_dishear_lbl

label define vn09a_diswalk_lbl 1 `"No difficulty"'
label define vn09a_diswalk_lbl 2 `"A little difficulty"', add
label define vn09a_diswalk_lbl 3 `"Very difficult"', add
label define vn09a_diswalk_lbl 4 `"Unable to walk"', add
label define vn09a_diswalk_lbl 8 `"Unknown"', add
label define vn09a_diswalk_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_diswalk vn09a_diswalk_lbl

label define vn09a_disrem_lbl 1 `"No difficulty"'
label define vn09a_disrem_lbl 2 `"A little difficulty"', add
label define vn09a_disrem_lbl 3 `"Very difficult"', add
label define vn09a_disrem_lbl 4 `"Unable to remember or pay attention"', add
label define vn09a_disrem_lbl 8 `"Unknown"', add
label define vn09a_disrem_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_disrem vn09a_disrem_lbl

label define vn09a_nchhh_lbl 00 `"0"'
label define vn09a_nchhh_lbl 01 `"1"', add
label define vn09a_nchhh_lbl 02 `"2"', add
label define vn09a_nchhh_lbl 03 `"3"', add
label define vn09a_nchhh_lbl 04 `"4"', add
label define vn09a_nchhh_lbl 05 `"5"', add
label define vn09a_nchhh_lbl 06 `"6"', add
label define vn09a_nchhh_lbl 07 `"7"', add
label define vn09a_nchhh_lbl 08 `"8"', add
label define vn09a_nchhh_lbl 09 `"9"', add
label define vn09a_nchhh_lbl 10 `"10"', add
label define vn09a_nchhh_lbl 11 `"11"', add
label define vn09a_nchhh_lbl 12 `"12"', add
label define vn09a_nchhh_lbl 13 `"13"', add
label define vn09a_nchhh_lbl 98 `"Unknown"', add
label define vn09a_nchhh_lbl 99 `"NIU (not in the universe)"', add
label values vn09a_nchhh vn09a_nchhh_lbl

label define vn09a_nchelse_lbl 00 `"0"'
label define vn09a_nchelse_lbl 01 `"1"', add
label define vn09a_nchelse_lbl 02 `"2"', add
label define vn09a_nchelse_lbl 03 `"3"', add
label define vn09a_nchelse_lbl 04 `"4"', add
label define vn09a_nchelse_lbl 05 `"5"', add
label define vn09a_nchelse_lbl 06 `"6"', add
label define vn09a_nchelse_lbl 07 `"7"', add
label define vn09a_nchelse_lbl 08 `"8"', add
label define vn09a_nchelse_lbl 09 `"9"', add
label define vn09a_nchelse_lbl 10 `"10"', add
label define vn09a_nchelse_lbl 11 `"11"', add
label define vn09a_nchelse_lbl 12 `"12"', add
label define vn09a_nchelse_lbl 13 `"13"', add
label define vn09a_nchelse_lbl 98 `"Unknown"', add
label define vn09a_nchelse_lbl 99 `"NIU (not in the universe)"', add
label values vn09a_nchelse vn09a_nchelse_lbl

label define vn09a_nchdead_lbl 00 `"0"'
label define vn09a_nchdead_lbl 01 `"1"', add
label define vn09a_nchdead_lbl 02 `"2"', add
label define vn09a_nchdead_lbl 03 `"3"', add
label define vn09a_nchdead_lbl 04 `"4"', add
label define vn09a_nchdead_lbl 05 `"5"', add
label define vn09a_nchdead_lbl 06 `"6"', add
label define vn09a_nchdead_lbl 07 `"7"', add
label define vn09a_nchdead_lbl 08 `"8"', add
label define vn09a_nchdead_lbl 09 `"9"', add
label define vn09a_nchdead_lbl 10 `"10"', add
label define vn09a_nchdead_lbl 98 `"Unknown"', add
label define vn09a_nchdead_lbl 99 `"NIU (not in the universe)"', add
label values vn09a_nchdead vn09a_nchdead_lbl

label define vn09a_lstbyr_lbl 1972 `"1972"'
label define vn09a_lstbyr_lbl 1973 `"1973"', add
label define vn09a_lstbyr_lbl 1974 `"1974"', add
label define vn09a_lstbyr_lbl 1975 `"1975"', add
label define vn09a_lstbyr_lbl 1976 `"1976"', add
label define vn09a_lstbyr_lbl 1977 `"1977"', add
label define vn09a_lstbyr_lbl 1978 `"1978"', add
label define vn09a_lstbyr_lbl 1979 `"1979"', add
label define vn09a_lstbyr_lbl 1980 `"1980"', add
label define vn09a_lstbyr_lbl 1981 `"1981"', add
label define vn09a_lstbyr_lbl 1982 `"1982"', add
label define vn09a_lstbyr_lbl 1983 `"1983"', add
label define vn09a_lstbyr_lbl 1984 `"1984"', add
label define vn09a_lstbyr_lbl 1985 `"1985"', add
label define vn09a_lstbyr_lbl 1986 `"1986"', add
label define vn09a_lstbyr_lbl 1987 `"1987"', add
label define vn09a_lstbyr_lbl 1988 `"1988"', add
label define vn09a_lstbyr_lbl 1989 `"1989"', add
label define vn09a_lstbyr_lbl 1990 `"1990"', add
label define vn09a_lstbyr_lbl 1991 `"1991"', add
label define vn09a_lstbyr_lbl 1992 `"1992"', add
label define vn09a_lstbyr_lbl 1993 `"1993"', add
label define vn09a_lstbyr_lbl 1994 `"1994"', add
label define vn09a_lstbyr_lbl 1995 `"1995"', add
label define vn09a_lstbyr_lbl 1996 `"1996"', add
label define vn09a_lstbyr_lbl 1997 `"1997"', add
label define vn09a_lstbyr_lbl 1998 `"1998"', add
label define vn09a_lstbyr_lbl 1999 `"1999"', add
label define vn09a_lstbyr_lbl 2000 `"2000"', add
label define vn09a_lstbyr_lbl 2001 `"2001"', add
label define vn09a_lstbyr_lbl 2002 `"2002"', add
label define vn09a_lstbyr_lbl 2003 `"2003"', add
label define vn09a_lstbyr_lbl 2004 `"2004"', add
label define vn09a_lstbyr_lbl 2005 `"2005"', add
label define vn09a_lstbyr_lbl 2006 `"2006"', add
label define vn09a_lstbyr_lbl 2007 `"2007"', add
label define vn09a_lstbyr_lbl 2008 `"2008"', add
label define vn09a_lstbyr_lbl 2009 `"2009"', add
label define vn09a_lstbyr_lbl 9998 `"Unknowm"', add
label define vn09a_lstbyr_lbl 9999 `"NIU (not in the universe)"', add
label values vn09a_lstbyr vn09a_lstbyr_lbl

label define vn09a_lstbmo_lbl 01 `"January"'
label define vn09a_lstbmo_lbl 02 `"February"', add
label define vn09a_lstbmo_lbl 03 `"March"', add
label define vn09a_lstbmo_lbl 04 `"April"', add
label define vn09a_lstbmo_lbl 05 `"May"', add
label define vn09a_lstbmo_lbl 06 `"June"', add
label define vn09a_lstbmo_lbl 07 `"July"', add
label define vn09a_lstbmo_lbl 08 `"August"', add
label define vn09a_lstbmo_lbl 09 `"September"', add
label define vn09a_lstbmo_lbl 10 `"October"', add
label define vn09a_lstbmo_lbl 11 `"November"', add
label define vn09a_lstbmo_lbl 12 `"December"', add
label define vn09a_lstbmo_lbl 98 `"Unknown"', add
label define vn09a_lstbmo_lbl 99 `"NIU (not in the universe)"', add
label values vn09a_lstbmo vn09a_lstbmo_lbl

label define vn09a_lstbfem_lbl 0 `"0"'
label define vn09a_lstbfem_lbl 1 `"1"', add
label define vn09a_lstbfem_lbl 2 `"2"', add
label define vn09a_lstbfem_lbl 3 `"3"', add
label define vn09a_lstbfem_lbl 8 `"Unknown"', add
label define vn09a_lstbfem_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_lstbfem vn09a_lstbfem_lbl

label define vn09a_lstbmale_lbl 0 `"0"'
label define vn09a_lstbmale_lbl 1 `"1"', add
label define vn09a_lstbmale_lbl 2 `"2"', add
label define vn09a_lstbmale_lbl 3 `"3"', add
label define vn09a_lstbmale_lbl 8 `"Unknown"', add
label define vn09a_lstbmale_lbl 9 `"NIU (not in the universe)"', add
label values vn09a_lstbmale vn09a_lstbmale_lbl

label define vn09a_month_lbl 01 `"January"'
label define vn09a_month_lbl 02 `"February"', add
label define vn09a_month_lbl 03 `"March"', add
label define vn09a_month_lbl 04 `"April"', add
label define vn09a_month_lbl 05 `"May"', add
label define vn09a_month_lbl 06 `"June"', add
label define vn09a_month_lbl 07 `"July"', add
label define vn09a_month_lbl 08 `"August"', add
label define vn09a_month_lbl 09 `"September"', add
label define vn09a_month_lbl 10 `"October"', add
label define vn09a_month_lbl 11 `"November"', add
label define vn09a_month_lbl 12 `"December"', add
label define vn09a_month_lbl 99 `"Unknown"', add
label values vn09a_month vn09a_month_lbl

label define vn09a_birthyr_lbl 1890 `"1890"'
label define vn09a_birthyr_lbl 1896 `"1896"', add
label define vn09a_birthyr_lbl 1897 `"1897"', add
label define vn09a_birthyr_lbl 1898 `"1898"', add
label define vn09a_birthyr_lbl 1899 `"1899"', add
label define vn09a_birthyr_lbl 1900 `"1900"', add
label define vn09a_birthyr_lbl 1901 `"1901"', add
label define vn09a_birthyr_lbl 1902 `"1902"', add
label define vn09a_birthyr_lbl 1903 `"1903"', add
label define vn09a_birthyr_lbl 1904 `"1904"', add
label define vn09a_birthyr_lbl 1905 `"1905"', add
label define vn09a_birthyr_lbl 1906 `"1906"', add
label define vn09a_birthyr_lbl 1907 `"1907"', add
label define vn09a_birthyr_lbl 1908 `"1908"', add
label define vn09a_birthyr_lbl 1909 `"1909"', add
label define vn09a_birthyr_lbl 1910 `"1910"', add
label define vn09a_birthyr_lbl 1911 `"1911"', add
label define vn09a_birthyr_lbl 1912 `"1912"', add
label define vn09a_birthyr_lbl 1913 `"1913"', add
label define vn09a_birthyr_lbl 1914 `"1914"', add
label define vn09a_birthyr_lbl 1915 `"1915"', add
label define vn09a_birthyr_lbl 1916 `"1916"', add
label define vn09a_birthyr_lbl 1917 `"1917"', add
label define vn09a_birthyr_lbl 1918 `"1918"', add
label define vn09a_birthyr_lbl 1919 `"1919"', add
label define vn09a_birthyr_lbl 1920 `"1920"', add
label define vn09a_birthyr_lbl 1921 `"1921"', add
label define vn09a_birthyr_lbl 1922 `"1922"', add
label define vn09a_birthyr_lbl 1923 `"1923"', add
label define vn09a_birthyr_lbl 1924 `"1924"', add
label define vn09a_birthyr_lbl 1925 `"1925"', add
label define vn09a_birthyr_lbl 1926 `"1926"', add
label define vn09a_birthyr_lbl 1927 `"1927"', add
label define vn09a_birthyr_lbl 1928 `"1928"', add
label define vn09a_birthyr_lbl 1929 `"1929"', add
label define vn09a_birthyr_lbl 1930 `"1930"', add
label define vn09a_birthyr_lbl 1931 `"1931"', add
label define vn09a_birthyr_lbl 1932 `"1932"', add
label define vn09a_birthyr_lbl 1933 `"1933"', add
label define vn09a_birthyr_lbl 1934 `"1934"', add
label define vn09a_birthyr_lbl 1935 `"1935"', add
label define vn09a_birthyr_lbl 1936 `"1936"', add
label define vn09a_birthyr_lbl 1937 `"1937"', add
label define vn09a_birthyr_lbl 1938 `"1938"', add
label define vn09a_birthyr_lbl 1939 `"1939"', add
label define vn09a_birthyr_lbl 1940 `"1940"', add
label define vn09a_birthyr_lbl 1941 `"1941"', add
label define vn09a_birthyr_lbl 1942 `"1942"', add
label define vn09a_birthyr_lbl 1943 `"1943"', add
label define vn09a_birthyr_lbl 1944 `"1944"', add
label define vn09a_birthyr_lbl 1945 `"1945"', add
label define vn09a_birthyr_lbl 1946 `"1946"', add
label define vn09a_birthyr_lbl 1947 `"1947"', add
label define vn09a_birthyr_lbl 1948 `"1948"', add
label define vn09a_birthyr_lbl 1949 `"1949"', add
label define vn09a_birthyr_lbl 1950 `"1950"', add
label define vn09a_birthyr_lbl 1951 `"1951"', add
label define vn09a_birthyr_lbl 1952 `"1952"', add
label define vn09a_birthyr_lbl 1953 `"1953"', add
label define vn09a_birthyr_lbl 1954 `"1954"', add
label define vn09a_birthyr_lbl 1955 `"1955"', add
label define vn09a_birthyr_lbl 1956 `"1956"', add
label define vn09a_birthyr_lbl 1957 `"1957"', add
label define vn09a_birthyr_lbl 1958 `"1958"', add
label define vn09a_birthyr_lbl 1959 `"1959"', add
label define vn09a_birthyr_lbl 1960 `"1960"', add
label define vn09a_birthyr_lbl 1961 `"1961"', add
label define vn09a_birthyr_lbl 1962 `"1962"', add
label define vn09a_birthyr_lbl 1963 `"1963"', add
label define vn09a_birthyr_lbl 1964 `"1964"', add
label define vn09a_birthyr_lbl 1965 `"1965"', add
label define vn09a_birthyr_lbl 1966 `"1966"', add
label define vn09a_birthyr_lbl 1967 `"1967"', add
label define vn09a_birthyr_lbl 1968 `"1968"', add
label define vn09a_birthyr_lbl 1969 `"1969"', add
label define vn09a_birthyr_lbl 1970 `"1970"', add
label define vn09a_birthyr_lbl 1971 `"1971"', add
label define vn09a_birthyr_lbl 1972 `"1972"', add
label define vn09a_birthyr_lbl 1973 `"1973"', add
label define vn09a_birthyr_lbl 1974 `"1974"', add
label define vn09a_birthyr_lbl 1975 `"1975"', add
label define vn09a_birthyr_lbl 1976 `"1976"', add
label define vn09a_birthyr_lbl 1977 `"1977"', add
label define vn09a_birthyr_lbl 1978 `"1978"', add
label define vn09a_birthyr_lbl 1979 `"1979"', add
label define vn09a_birthyr_lbl 1980 `"1980"', add
label define vn09a_birthyr_lbl 1981 `"1981"', add
label define vn09a_birthyr_lbl 1982 `"1982"', add
label define vn09a_birthyr_lbl 1983 `"1983"', add
label define vn09a_birthyr_lbl 1984 `"1984"', add
label define vn09a_birthyr_lbl 1985 `"1985"', add
label define vn09a_birthyr_lbl 1986 `"1986"', add
label define vn09a_birthyr_lbl 1987 `"1987"', add
label define vn09a_birthyr_lbl 1988 `"1988"', add
label define vn09a_birthyr_lbl 1989 `"1989"', add
label define vn09a_birthyr_lbl 1990 `"1990"', add
label define vn09a_birthyr_lbl 1991 `"1991"', add
label define vn09a_birthyr_lbl 1992 `"1992"', add
label define vn09a_birthyr_lbl 1993 `"1993"', add
label define vn09a_birthyr_lbl 1994 `"1994"', add
label define vn09a_birthyr_lbl 1995 `"1995"', add
label define vn09a_birthyr_lbl 1996 `"1996"', add
label define vn09a_birthyr_lbl 1997 `"1997"', add
label define vn09a_birthyr_lbl 1998 `"1998"', add
label define vn09a_birthyr_lbl 1999 `"1999"', add
label define vn09a_birthyr_lbl 2000 `"2000"', add
label define vn09a_birthyr_lbl 2001 `"2001"', add
label define vn09a_birthyr_lbl 2002 `"2002"', add
label define vn09a_birthyr_lbl 2003 `"2003"', add
label define vn09a_birthyr_lbl 2004 `"2004"', add
label define vn09a_birthyr_lbl 2005 `"2005"', add
label define vn09a_birthyr_lbl 2006 `"2006"', add
label define vn09a_birthyr_lbl 2007 `"2007"', add
label define vn09a_birthyr_lbl 2008 `"2008"', add
label define vn09a_birthyr_lbl 2009 `"2009"', add
label define vn09a_birthyr_lbl 9999 `"Unknown"', add
label values vn09a_birthyr vn09a_birthyr_lbl

label define vn09a_ethnic_lbl 1 `"Kinh"'
label define vn09a_ethnic_lbl 2 `"Other ethnic group"', add
label define vn09a_ethnic_lbl 9 `"Unknown"', add
label values vn09a_ethnic vn09a_ethnic_lbl

label define vn09a_relig_lbl 1 `"Yes"'
label define vn09a_relig_lbl 2 `"No"', add
label define vn09a_relig_lbl 9 `"Unknown"', add
label values vn09a_relig vn09a_relig_lbl

label define vn09a_migdist_lbl 001 `"Ba Dinh"'
label define vn09a_migdist_lbl 002 `"Hoan Kiem"', add
label define vn09a_migdist_lbl 003 `"Tay Ho"', add
label define vn09a_migdist_lbl 004 `"Long Bien"', add
label define vn09a_migdist_lbl 005 `"Cau Giay"', add
label define vn09a_migdist_lbl 006 `"Dong Da"', add
label define vn09a_migdist_lbl 007 `"Hai Ba Trung"', add
label define vn09a_migdist_lbl 008 `"Hoang Mai"', add
label define vn09a_migdist_lbl 009 `"Thanh Xuan"', add
label define vn09a_migdist_lbl 016 `"Soc Son"', add
label define vn09a_migdist_lbl 017 `"Dong Anh"', add
label define vn09a_migdist_lbl 018 `"Gia Lam"', add
label define vn09a_migdist_lbl 019 `"Tu Liem"', add
label define vn09a_migdist_lbl 020 `"Thanh Tri"', add
label define vn09a_migdist_lbl 024 `"Ha Giang Town"', add
label define vn09a_migdist_lbl 026 `"Dong Van"', add
label define vn09a_migdist_lbl 027 `"Meo Vac"', add
label define vn09a_migdist_lbl 028 `"Yen Minh"', add
label define vn09a_migdist_lbl 029 `"Quan Ba"', add
label define vn09a_migdist_lbl 030 `"Vi Xuyen"', add
label define vn09a_migdist_lbl 031 `"Bac Me"', add
label define vn09a_migdist_lbl 032 `"Hoang Su Phi"', add
label define vn09a_migdist_lbl 033 `"Xin Man"', add
label define vn09a_migdist_lbl 034 `"Bac Quang"', add
label define vn09a_migdist_lbl 035 `"Quang Binh"', add
label define vn09a_migdist_lbl 040 `"Cao Bang town"', add
label define vn09a_migdist_lbl 042 `"Bao Lam"', add
label define vn09a_migdist_lbl 043 `"Bao Lac"', add
label define vn09a_migdist_lbl 044 `"Thong Nong"', add
label define vn09a_migdist_lbl 045 `"Ha Quang"', add
label define vn09a_migdist_lbl 046 `"Tra Linh"', add
label define vn09a_migdist_lbl 047 `"Trung Khanh"', add
label define vn09a_migdist_lbl 048 `"Ha Lang"', add
label define vn09a_migdist_lbl 049 `"Quang Uyen"', add
label define vn09a_migdist_lbl 050 `"Phuc Hoa"', add
label define vn09a_migdist_lbl 051 `"Hoa An"', add
label define vn09a_migdist_lbl 052 `"Nguyen Binh"', add
label define vn09a_migdist_lbl 053 `"Thach An"', add
label define vn09a_migdist_lbl 058 `"Bac Kan town"', add
label define vn09a_migdist_lbl 060 `"Pac Nam"', add
label define vn09a_migdist_lbl 061 `"Ba Be"', add
label define vn09a_migdist_lbl 062 `"Ngan Son"', add
label define vn09a_migdist_lbl 063 `"Bach Thong"', add
label define vn09a_migdist_lbl 064 `"Cho Don"', add
label define vn09a_migdist_lbl 065 `"Cho Moi"', add
label define vn09a_migdist_lbl 066 `"Na Ri"', add
label define vn09a_migdist_lbl 070 `"Thi Tuyen Quang"', add
label define vn09a_migdist_lbl 072 `"Na Hang"', add
label define vn09a_migdist_lbl 073 `"Chiem Hoa"', add
label define vn09a_migdist_lbl 074 `"Ham Yen"', add
label define vn09a_migdist_lbl 075 `"Yen Son"', add
label define vn09a_migdist_lbl 076 `"Son Duong"', add
label define vn09a_migdist_lbl 080 `"Lao Cai town"', add
label define vn09a_migdist_lbl 082 `"Bat Xat"', add
label define vn09a_migdist_lbl 083 `"Muong Khuong"', add
label define vn09a_migdist_lbl 084 `"Si Ma Cai"', add
label define vn09a_migdist_lbl 085 `"Bac Ha"', add
label define vn09a_migdist_lbl 086 `"Bao Thang"', add
label define vn09a_migdist_lbl 087 `"Bao Yen"', add
label define vn09a_migdist_lbl 088 `"Sa Pa"', add
label define vn09a_migdist_lbl 089 `"Van Ban"', add
label define vn09a_migdist_lbl 094 `"Dien Bien Phu town"', add
label define vn09a_migdist_lbl 095 `"Muong Lay"', add
label define vn09a_migdist_lbl 096 `"Muong Nhe"', add
label define vn09a_migdist_lbl 097 `"Muong Cha"', add
label define vn09a_migdist_lbl 098 `"Tua Chua"', add
label define vn09a_migdist_lbl 099 `"Tuan Giao"', add
label define vn09a_migdist_lbl 100 `"Dien Bien"', add
label define vn09a_migdist_lbl 101 `"Dien Bien Dong"', add
label define vn09a_migdist_lbl 102 `"Muong Ang"', add
label define vn09a_migdist_lbl 105 `"Lai Chau town"', add
label define vn09a_migdist_lbl 106 `"Tam Duong"', add
label define vn09a_migdist_lbl 107 `"Muong Te"', add
label define vn09a_migdist_lbl 108 `"Sin Ho"', add
label define vn09a_migdist_lbl 109 `"Phong Tho"', add
label define vn09a_migdist_lbl 110 `"Than Uyen"', add
label define vn09a_migdist_lbl 111 `"Tan Uyen"', add
label define vn09a_migdist_lbl 116 `"Son La town"', add
label define vn09a_migdist_lbl 118 `"Quynh Nhai"', add
label define vn09a_migdist_lbl 119 `"Thuan Chau"', add
label define vn09a_migdist_lbl 120 `"Muong La"', add
label define vn09a_migdist_lbl 121 `"Bac Yen"', add
label define vn09a_migdist_lbl 122 `"Phu Yen"', add
label define vn09a_migdist_lbl 123 `"Moc Chau"', add
label define vn09a_migdist_lbl 124 `"Yen Chau"', add
label define vn09a_migdist_lbl 125 `"Mai Son"', add
label define vn09a_migdist_lbl 126 `"Song Ma"', add
label define vn09a_migdist_lbl 127 `"Sop Cop"', add
label define vn09a_migdist_lbl 132 `"Yen Bai town"', add
label define vn09a_migdist_lbl 133 `"Nghia Lo"', add
label define vn09a_migdist_lbl 135 `"Luc Yen"', add
label define vn09a_migdist_lbl 136 `"Van Yen"', add
label define vn09a_migdist_lbl 137 `"Mu Cang Chai"', add
label define vn09a_migdist_lbl 138 `"Tran Yen"', add
label define vn09a_migdist_lbl 139 `"Tram Tau"', add
label define vn09a_migdist_lbl 140 `"Van Chan"', add
label define vn09a_migdist_lbl 141 `"Yen Binh"', add
label define vn09a_migdist_lbl 148 `"Hoa Binh town"', add
label define vn09a_migdist_lbl 150 `"Da Bac"', add
label define vn09a_migdist_lbl 151 `"Ky Son"', add
label define vn09a_migdist_lbl 152 `"Luong Son"', add
label define vn09a_migdist_lbl 153 `"Kim Boi"', add
label define vn09a_migdist_lbl 154 `"Cao Phong"', add
label define vn09a_migdist_lbl 155 `"Tan Lac"', add
label define vn09a_migdist_lbl 156 `"Mai Chau"', add
label define vn09a_migdist_lbl 157 `"Lac Son"', add
label define vn09a_migdist_lbl 158 `"Yen Thuy"', add
label define vn09a_migdist_lbl 159 `"Lac Thuy"', add
label define vn09a_migdist_lbl 164 `"Thai Nguyen town"', add
label define vn09a_migdist_lbl 165 `"Song Cong"', add
label define vn09a_migdist_lbl 167 `"Dinh Hoa"', add
label define vn09a_migdist_lbl 168 `"Phu Luong"', add
label define vn09a_migdist_lbl 169 `"Dong Hy"', add
label define vn09a_migdist_lbl 170 `"VoNhai"', add
label define vn09a_migdist_lbl 171 `"Dai Tu"', add
label define vn09a_migdist_lbl 172 `"Pho Yen"', add
label define vn09a_migdist_lbl 173 `"Phu Binh"', add
label define vn09a_migdist_lbl 178 `"Lang Son town"', add
label define vn09a_migdist_lbl 180 `"Trang Dinh"', add
label define vn09a_migdist_lbl 181 `"Binh Gia"', add
label define vn09a_migdist_lbl 182 `"Van Lang"', add
label define vn09a_migdist_lbl 183 `"Cao Loc"', add
label define vn09a_migdist_lbl 184 `"Van Quan"', add
label define vn09a_migdist_lbl 185 `"Bac Son"', add
label define vn09a_migdist_lbl 186 `"Huu Lung"', add
label define vn09a_migdist_lbl 187 `"Chi Lang"', add
label define vn09a_migdist_lbl 188 `"Loc Binh"', add
label define vn09a_migdist_lbl 189 `"Dinh Lap"', add
label define vn09a_migdist_lbl 193 `"Ha Long"', add
label define vn09a_migdist_lbl 194 `"Mong Cai"', add
label define vn09a_migdist_lbl 195 `"Cam Pha"', add
label define vn09a_migdist_lbl 196 `"Uong Bi"', add
label define vn09a_migdist_lbl 198 `"Binh Lieu"', add
label define vn09a_migdist_lbl 199 `"Tien Yen"', add
label define vn09a_migdist_lbl 200 `"Dam Ha"', add
label define vn09a_migdist_lbl 201 `"Hai Ha"', add
label define vn09a_migdist_lbl 202 `"Ba Che"', add
label define vn09a_migdist_lbl 203 `"Van Don"', add
label define vn09a_migdist_lbl 204 `"Hoanh Bo"', add
label define vn09a_migdist_lbl 205 `"Dong Trieu"', add
label define vn09a_migdist_lbl 206 `"Yen Hung"', add
label define vn09a_migdist_lbl 207 `"Co To"', add
label define vn09a_migdist_lbl 213 `"Bac Giang town"', add
label define vn09a_migdist_lbl 215 `"Yen The"', add
label define vn09a_migdist_lbl 216 `"Tan Yen"', add
label define vn09a_migdist_lbl 217 `"Lang Giang"', add
label define vn09a_migdist_lbl 218 `"Luc Nam"', add
label define vn09a_migdist_lbl 219 `"Luc Ngan"', add
label define vn09a_migdist_lbl 220 `"Son Dong"', add
label define vn09a_migdist_lbl 221 `"Yen Dung"', add
label define vn09a_migdist_lbl 222 `"Viet Yen"', add
label define vn09a_migdist_lbl 223 `"Hiep Hoa"', add
label define vn09a_migdist_lbl 227 `"Viet Tri"', add
label define vn09a_migdist_lbl 228 `"Phu Tho town"', add
label define vn09a_migdist_lbl 230 `"Doan Hung"', add
label define vn09a_migdist_lbl 231 `"Ha Hoa"', add
label define vn09a_migdist_lbl 232 `"Thanh Ba"', add
label define vn09a_migdist_lbl 233 `"Phu Ninh"', add
label define vn09a_migdist_lbl 234 `"Yen Lap"', add
label define vn09a_migdist_lbl 235 `"Cam Khe"', add
label define vn09a_migdist_lbl 236 `"Tam Nong"', add
label define vn09a_migdist_lbl 237 `"Lam Thao"', add
label define vn09a_migdist_lbl 238 `"Thanh Son"', add
label define vn09a_migdist_lbl 239 `"Thanh Thuy"', add
label define vn09a_migdist_lbl 240 `"Tan Son"', add
label define vn09a_migdist_lbl 243 `"Vinh Yen"', add
label define vn09a_migdist_lbl 244 `"Phuc Yen"', add
label define vn09a_migdist_lbl 246 `"Lap Thach"', add
label define vn09a_migdist_lbl 247 `"Tam Duong"', add
label define vn09a_migdist_lbl 248 `"Tam Dao"', add
label define vn09a_migdist_lbl 249 `"Binh Xuyen"', add
label define vn09a_migdist_lbl 250 `"Me Linh"', add
label define vn09a_migdist_lbl 251 `"Yen Lac"', add
label define vn09a_migdist_lbl 252 `"Vinh Tuong"', add
label define vn09a_migdist_lbl 253 `"Song Lo"', add
label define vn09a_migdist_lbl 256 `"Bac Ninh town"', add
label define vn09a_migdist_lbl 258 `"Yen Phong"', add
label define vn09a_migdist_lbl 259 `"Que Vo"', add
label define vn09a_migdist_lbl 260 `"Tien Du"', add
label define vn09a_migdist_lbl 261 `"Tu Son"', add
label define vn09a_migdist_lbl 262 `"Thuan Thanh"', add
label define vn09a_migdist_lbl 263 `"Gia Binh"', add
label define vn09a_migdist_lbl 264 `"Luong Tai"', add
label define vn09a_migdist_lbl 268 `"Ha Dong"', add
label define vn09a_migdist_lbl 269 `"Son Tay"', add
label define vn09a_migdist_lbl 271 `"Ba Vi"', add
label define vn09a_migdist_lbl 272 `"Phuc Tho"', add
label define vn09a_migdist_lbl 273 `"Dan Phuong"', add
label define vn09a_migdist_lbl 274 `"Hoai Duc"', add
label define vn09a_migdist_lbl 275 `"Quoc Oai"', add
label define vn09a_migdist_lbl 276 `"Thach That"', add
label define vn09a_migdist_lbl 277 `"Chuong My"', add
label define vn09a_migdist_lbl 278 `"Thanh Oai"', add
label define vn09a_migdist_lbl 279 `"Thuong Tin"', add
label define vn09a_migdist_lbl 280 `"Phu Xuyen"', add
label define vn09a_migdist_lbl 281 `"Ung Hoa"', add
label define vn09a_migdist_lbl 282 `"My Duc"', add
label define vn09a_migdist_lbl 288 `"Hai Duong town"', add
label define vn09a_migdist_lbl 290 `"Chi Linh"', add
label define vn09a_migdist_lbl 291 `"Nam Sach"', add
label define vn09a_migdist_lbl 292 `"Kinh Mon"', add
label define vn09a_migdist_lbl 293 `"Kim Thanh"', add
label define vn09a_migdist_lbl 294 `"Thanh Ha"', add
label define vn09a_migdist_lbl 295 `"Cam Giang"', add
label define vn09a_migdist_lbl 296 `"Binh Giang"', add
label define vn09a_migdist_lbl 297 `"Gia Loc"', add
label define vn09a_migdist_lbl 298 `"Tu Ky"', add
label define vn09a_migdist_lbl 299 `"Ninh Giang"', add
label define vn09a_migdist_lbl 300 `"Thanh Mien"', add
label define vn09a_migdist_lbl 303 `"Hong Bang"', add
label define vn09a_migdist_lbl 304 `"Ngo Quyen"', add
label define vn09a_migdist_lbl 305 `"Le Chan"', add
label define vn09a_migdist_lbl 306 `"Hai An"', add
label define vn09a_migdist_lbl 307 `"Kien An"', add
label define vn09a_migdist_lbl 308 `"Do Son"', add
label define vn09a_migdist_lbl 309 `"Duong Kinh"', add
label define vn09a_migdist_lbl 311 `"Thuy Nguyen"', add
label define vn09a_migdist_lbl 312 `"An Duong"', add
label define vn09a_migdist_lbl 313 `"An Lao"', add
label define vn09a_migdist_lbl 314 `"Kien Thu?"', add
label define vn09a_migdist_lbl 315 `"Tien Lang"', add
label define vn09a_migdist_lbl 316 `"Vinh Bao"', add
label define vn09a_migdist_lbl 317 `"Cat Hai"', add
label define vn09a_migdist_lbl 318 `"Bach Long Vi"', add
label define vn09a_migdist_lbl 323 `"Hung Yen town"', add
label define vn09a_migdist_lbl 325 `"Van Lam"', add
label define vn09a_migdist_lbl 326 `"Van Giang"', add
label define vn09a_migdist_lbl 327 `"Yen My"', add
label define vn09a_migdist_lbl 328 `"My Hao"', add
label define vn09a_migdist_lbl 329 `"An Thi"', add
label define vn09a_migdist_lbl 330 `"Khoai Chau"', add
label define vn09a_migdist_lbl 331 `"Kim Dong"', add
label define vn09a_migdist_lbl 332 `"Tien Lu"', add
label define vn09a_migdist_lbl 333 `"Phu Cu"', add
label define vn09a_migdist_lbl 336 `"Thai Binh town"', add
label define vn09a_migdist_lbl 338 `"Quynh Phu"', add
label define vn09a_migdist_lbl 339 `"Hung Ha"', add
label define vn09a_migdist_lbl 340 `"Dong Hung"', add
label define vn09a_migdist_lbl 341 `"Thai Thuy"', add
label define vn09a_migdist_lbl 342 `"Tien Hai"', add
label define vn09a_migdist_lbl 343 `"Kien Xuong"', add
label define vn09a_migdist_lbl 344 `"Vu Thu"', add
label define vn09a_migdist_lbl 347 `"Phu Ly"', add
label define vn09a_migdist_lbl 349 `"Duy Tien"', add
label define vn09a_migdist_lbl 350 `"Kim Bang"', add
label define vn09a_migdist_lbl 351 `"Thanh Liem"', add
label define vn09a_migdist_lbl 352 `"Binh Luc"', add
label define vn09a_migdist_lbl 353 `"Ly Nhan"', add
label define vn09a_migdist_lbl 356 `"Nam Dinh town"', add
label define vn09a_migdist_lbl 358 `"My Loc"', add
label define vn09a_migdist_lbl 359 `"Vu Ban"', add
label define vn09a_migdist_lbl 360 `"Y Yen"', add
label define vn09a_migdist_lbl 361 `"Nghia Hung"', add
label define vn09a_migdist_lbl 362 `"Nam Truc"', add
label define vn09a_migdist_lbl 363 `"Truc Ninh"', add
label define vn09a_migdist_lbl 364 `"Xuan Truong"', add
label define vn09a_migdist_lbl 365 `"Giao Thuy"', add
label define vn09a_migdist_lbl 366 `"Hai Hau"', add
label define vn09a_migdist_lbl 369 `"Ninh Binh town"', add
label define vn09a_migdist_lbl 370 `"Tam Diep"', add
label define vn09a_migdist_lbl 372 `"Nho Quan"', add
label define vn09a_migdist_lbl 373 `"Gia Vien"', add
label define vn09a_migdist_lbl 374 `"Hoa Lu"', add
label define vn09a_migdist_lbl 375 `"Yen Khanh"', add
label define vn09a_migdist_lbl 376 `"Kim Son"', add
label define vn09a_migdist_lbl 377 `"Yen Mo"', add
label define vn09a_migdist_lbl 380 `"Thanh Hoa town"', add
label define vn09a_migdist_lbl 381 `"Bim Son"', add
label define vn09a_migdist_lbl 382 `"Sam Son"', add
label define vn09a_migdist_lbl 384 `"Muong Lat"', add
label define vn09a_migdist_lbl 385 `"Quan Hoa"', add
label define vn09a_migdist_lbl 386 `"Ba Thuoc"', add
label define vn09a_migdist_lbl 387 `"Quan Son"', add
label define vn09a_migdist_lbl 388 `"Lang Chanh"', add
label define vn09a_migdist_lbl 389 `"Ngoc Lac"', add
label define vn09a_migdist_lbl 390 `"Cam Thuy"', add
label define vn09a_migdist_lbl 391 `"Thach Thanh"', add
label define vn09a_migdist_lbl 392 `"Ha Trung"', add
label define vn09a_migdist_lbl 393 `"Vinh Loc"', add
label define vn09a_migdist_lbl 394 `"Yen Dinh"', add
label define vn09a_migdist_lbl 395 `"Tho Xuan"', add
label define vn09a_migdist_lbl 396 `"Thuong Xuan"', add
label define vn09a_migdist_lbl 397 `"Trieu Son"', add
label define vn09a_migdist_lbl 398 `"Thieu Hoa"', add
label define vn09a_migdist_lbl 399 `"Hoang Hoa"', add
label define vn09a_migdist_lbl 400 `"Hau Loc"', add
label define vn09a_migdist_lbl 401 `"Nga Son"', add
label define vn09a_migdist_lbl 402 `"Nhu Xuan"', add
label define vn09a_migdist_lbl 403 `"Nhu Thanh"', add
label define vn09a_migdist_lbl 404 `"Nong Cong"', add
label define vn09a_migdist_lbl 405 `"Dong Son"', add
label define vn09a_migdist_lbl 406 `"Quang Xuong"', add
label define vn09a_migdist_lbl 407 `"Tinh Gia"', add
label define vn09a_migdist_lbl 412 `"Vinh"', add
label define vn09a_migdist_lbl 413 `"Cua Lo"', add
label define vn09a_migdist_lbl 414 `"Thai Hoa"', add
label define vn09a_migdist_lbl 415 `"Que Phong"', add
label define vn09a_migdist_lbl 416 `"Quy Chau"', add
label define vn09a_migdist_lbl 417 `"Ky Son"', add
label define vn09a_migdist_lbl 418 `"Tuong Duong"', add
label define vn09a_migdist_lbl 419 `"Nghia Dan"', add
label define vn09a_migdist_lbl 420 `"Quy Hop"', add
label define vn09a_migdist_lbl 421 `"Quynh Luu"', add
label define vn09a_migdist_lbl 422 `"Con Cuong"', add
label define vn09a_migdist_lbl 423 `"Tan Ky"', add
label define vn09a_migdist_lbl 424 `"Anh Son"', add
label define vn09a_migdist_lbl 425 `"Dien Chau"', add
label define vn09a_migdist_lbl 426 `"Yen Thanh"', add
label define vn09a_migdist_lbl 427 `"Do Luong"', add
label define vn09a_migdist_lbl 428 `"Thanh Chuong"', add
label define vn09a_migdist_lbl 429 `"Nghi Loc"', add
label define vn09a_migdist_lbl 430 `"Nam Dan"', add
label define vn09a_migdist_lbl 431 `"Hung Nguyen"', add
label define vn09a_migdist_lbl 436 `"Ha Tinh town"', add
label define vn09a_migdist_lbl 437 `"Hong Linh"', add
label define vn09a_migdist_lbl 439 `"Huong Son"', add
label define vn09a_migdist_lbl 440 `"Duc Tho"', add
label define vn09a_migdist_lbl 441 `"Vu Quang"', add
label define vn09a_migdist_lbl 442 `"Nghi Xuan"', add
label define vn09a_migdist_lbl 443 `"Can Loc"', add
label define vn09a_migdist_lbl 444 `"Huong Khe"', add
label define vn09a_migdist_lbl 445 `"Thach Ha"', add
label define vn09a_migdist_lbl 446 `"Cam Xuyen"', add
label define vn09a_migdist_lbl 447 `"Ky Anh"', add
label define vn09a_migdist_lbl 448 `"Loc Ha"', add
label define vn09a_migdist_lbl 450 `"Dong Hoi"', add
label define vn09a_migdist_lbl 452 `"Minh Hoa"', add
label define vn09a_migdist_lbl 453 `"Tuyen Hoa"', add
label define vn09a_migdist_lbl 454 `"Quang Trach"', add
label define vn09a_migdist_lbl 455 `"Bo Trach"', add
label define vn09a_migdist_lbl 456 `"Quang Ninh"', add
label define vn09a_migdist_lbl 457 `"Le Thuy"', add
label define vn09a_migdist_lbl 461 `"Dong Ha"', add
label define vn09a_migdist_lbl 462 `"Quang Tri town"', add
label define vn09a_migdist_lbl 464 `"Vinh Linh"', add
label define vn09a_migdist_lbl 465 `"Huong Hoa"', add
label define vn09a_migdist_lbl 466 `"Gio Linh"', add
label define vn09a_migdist_lbl 467 `"Da Krong"', add
label define vn09a_migdist_lbl 468 `"Cam Lo"', add
label define vn09a_migdist_lbl 469 `"Trieu Phong"', add
label define vn09a_migdist_lbl 470 `"Hai Lang"', add
label define vn09a_migdist_lbl 471 `"Con Co"', add
label define vn09a_migdist_lbl 474 `"Hue"', add
label define vn09a_migdist_lbl 476 `"Phong Dien"', add
label define vn09a_migdist_lbl 477 `"Quang Dien"', add
label define vn09a_migdist_lbl 478 `"Phu Vang"', add
label define vn09a_migdist_lbl 479 `"Huong Thuy"', add
label define vn09a_migdist_lbl 480 `"Huong Tra"', add
label define vn09a_migdist_lbl 481 `"A Luoi"', add
label define vn09a_migdist_lbl 482 `"Phu Loc"', add
label define vn09a_migdist_lbl 483 `"Nam Dong"', add
label define vn09a_migdist_lbl 490 `"Lien Chieu"', add
label define vn09a_migdist_lbl 491 `"Thanh Khe"', add
label define vn09a_migdist_lbl 492 `"Hai Chau"', add
label define vn09a_migdist_lbl 493 `"Son Tra"', add
label define vn09a_migdist_lbl 494 `"Ngu Hanh Son"', add
label define vn09a_migdist_lbl 495 `"Cam Le"', add
label define vn09a_migdist_lbl 497 `"Hoa Vang"', add
label define vn09a_migdist_lbl 498 `"Hoang Sa"', add
label define vn09a_migdist_lbl 502 `"Tam Ky"', add
label define vn09a_migdist_lbl 503 `"Hoi An"', add
label define vn09a_migdist_lbl 504 `"Tay Giang"', add
label define vn09a_migdist_lbl 505 `"Dong Giang"', add
label define vn09a_migdist_lbl 506 `"Dai Loc"', add
label define vn09a_migdist_lbl 507 `"Dien Ban"', add
label define vn09a_migdist_lbl 508 `"Duy Xuyen"', add
label define vn09a_migdist_lbl 509 `"Que Son"', add
label define vn09a_migdist_lbl 510 `"Nam Giang"', add
label define vn09a_migdist_lbl 511 `"Phuoc Son"', add
label define vn09a_migdist_lbl 512 `"Hiep Duc"', add
label define vn09a_migdist_lbl 513 `"Thang Binh"', add
label define vn09a_migdist_lbl 514 `"Tien Phuoc"', add
label define vn09a_migdist_lbl 515 `"Bac Tra My"', add
label define vn09a_migdist_lbl 516 `"Nam Tra My"', add
label define vn09a_migdist_lbl 517 `"Nui Thanh"', add
label define vn09a_migdist_lbl 518 `"Phu Ninh"', add
label define vn09a_migdist_lbl 519 `"Nong Son"', add
label define vn09a_migdist_lbl 522 `"Quang Ngai town"', add
label define vn09a_migdist_lbl 524 `"Binh Son"', add
label define vn09a_migdist_lbl 525 `"Tra Bong"', add
label define vn09a_migdist_lbl 526 `"Tay Tra"', add
label define vn09a_migdist_lbl 527 `"Son Tinh"', add
label define vn09a_migdist_lbl 528 `"Tu Nghia"', add
label define vn09a_migdist_lbl 529 `"Son Ha"', add
label define vn09a_migdist_lbl 530 `"Son Tay"', add
label define vn09a_migdist_lbl 531 `"Minh Long"', add
label define vn09a_migdist_lbl 532 `"Nghia Hanh"', add
label define vn09a_migdist_lbl 533 `"Mo Duc"', add
label define vn09a_migdist_lbl 534 `"Duc Pho"', add
label define vn09a_migdist_lbl 535 `"Ba To"', add
label define vn09a_migdist_lbl 536 `"Ly Son"', add
label define vn09a_migdist_lbl 540 `"Qui Nhon"', add
label define vn09a_migdist_lbl 542 `"An Lao"', add
label define vn09a_migdist_lbl 543 `"Hoai Nhon"', add
label define vn09a_migdist_lbl 544 `"Hoai an"', add
label define vn09a_migdist_lbl 545 `"Phu My"', add
label define vn09a_migdist_lbl 546 `"Vinh Thanh"', add
label define vn09a_migdist_lbl 547 `"Tay Son"', add
label define vn09a_migdist_lbl 548 `"Phu Cat"', add
label define vn09a_migdist_lbl 549 `"An Nhon"', add
label define vn09a_migdist_lbl 550 `"Tuy Phuoc"', add
label define vn09a_migdist_lbl 551 `"Van Canh"', add
label define vn09a_migdist_lbl 555 `"Tuy Hoa"', add
label define vn09a_migdist_lbl 557 `"Song Cau"', add
label define vn09a_migdist_lbl 558 `"Dong Xuan"', add
label define vn09a_migdist_lbl 559 `"Tuy An"', add
label define vn09a_migdist_lbl 560 `"Son Hoa"', add
label define vn09a_migdist_lbl 561 `"Song Hinh"', add
label define vn09a_migdist_lbl 562 `"Tay Hoa"', add
label define vn09a_migdist_lbl 563 `"Phu Hoa"', add
label define vn09a_migdist_lbl 564 `"Dong Hoa"', add
label define vn09a_migdist_lbl 568 `"Nha Trang"', add
label define vn09a_migdist_lbl 569 `"Cam Ranh"', add
label define vn09a_migdist_lbl 570 `"Cam Lam"', add
label define vn09a_migdist_lbl 571 `"Van Ninh"', add
label define vn09a_migdist_lbl 572 `"Ninh Hoa"', add
label define vn09a_migdist_lbl 573 `"Khanh Vinh"', add
label define vn09a_migdist_lbl 574 `"Dien Khanh"', add
label define vn09a_migdist_lbl 575 `"Khanh Son"', add
label define vn09a_migdist_lbl 576 `"Truong Sa"', add
label define vn09a_migdist_lbl 582 `"Phan Rang-Thap Cham"', add
label define vn09a_migdist_lbl 584 `"Bac Ai"', add
label define vn09a_migdist_lbl 585 `"Ninh Son"', add
label define vn09a_migdist_lbl 586 `"Ninh Hai"', add
label define vn09a_migdist_lbl 587 `"Ninh Phuoc"', add
label define vn09a_migdist_lbl 588 `"Thuan Bac"', add
label define vn09a_migdist_lbl 593 `"Phan Thiet"', add
label define vn09a_migdist_lbl 594 `"La Gi"', add
label define vn09a_migdist_lbl 595 `"Tuy Phong"', add
label define vn09a_migdist_lbl 596 `"Bac Binh"', add
label define vn09a_migdist_lbl 597 `"Ham Thuan Bac"', add
label define vn09a_migdist_lbl 598 `"Ham Thuan Nam"', add
label define vn09a_migdist_lbl 599 `"Tanh Linh"', add
label define vn09a_migdist_lbl 600 `"Duc Linh"', add
label define vn09a_migdist_lbl 601 `"Ham Tan"', add
label define vn09a_migdist_lbl 602 `"Phu Qui"', add
label define vn09a_migdist_lbl 608 `"Kon Tum town"', add
label define vn09a_migdist_lbl 610 `"Dak Glei"', add
label define vn09a_migdist_lbl 611 `"Ngoc Hoi"', add
label define vn09a_migdist_lbl 612 `"Dak To"', add
label define vn09a_migdist_lbl 613 `"Kon Plong"', add
label define vn09a_migdist_lbl 614 `"Kon Ray"', add
label define vn09a_migdist_lbl 615 `"Dak Ha"', add
label define vn09a_migdist_lbl 616 `"Sa Thay"', add
label define vn09a_migdist_lbl 617 `"Tu Mo Rong"', add
label define vn09a_migdist_lbl 622 `"Pleiku"', add
label define vn09a_migdist_lbl 623 `"An Khe"', add
label define vn09a_migdist_lbl 624 `"Ayun Pa"', add
label define vn09a_migdist_lbl 625 `"KBang"', add
label define vn09a_migdist_lbl 626 `"Dak Doa"', add
label define vn09a_migdist_lbl 627 `"Chu Pah"', add
label define vn09a_migdist_lbl 628 `"Ia Grai"', add
label define vn09a_migdist_lbl 629 `"Mang Yang"', add
label define vn09a_migdist_lbl 630 `"Kong Chro"', add
label define vn09a_migdist_lbl 631 `"Duc Co"', add
label define vn09a_migdist_lbl 632 `"Chu Prong"', add
label define vn09a_migdist_lbl 633 `"Chu Se"', add
label define vn09a_migdist_lbl 634 `"Dak Po"', add
label define vn09a_migdist_lbl 635 `"Ia Pa"', add
label define vn09a_migdist_lbl 637 `"Krong Pa"', add
label define vn09a_migdist_lbl 638 `"Phu Thien"', add
label define vn09a_migdist_lbl 643 `"Buon Ma Thuot"', add
label define vn09a_migdist_lbl 644 `"Buon Ho"', add
label define vn09a_migdist_lbl 645 `"Ea H'leo"', add
label define vn09a_migdist_lbl 646 `"Ea Sup"', add
label define vn09a_migdist_lbl 647 `"Buon Don"', add
label define vn09a_migdist_lbl 648 `"Cu M'gar"', add
label define vn09a_migdist_lbl 649 `"Krong Buk"', add
label define vn09a_migdist_lbl 650 `"Krong Nang"', add
label define vn09a_migdist_lbl 651 `"Ea Kar"', add
label define vn09a_migdist_lbl 652 `"M'Drak"', add
label define vn09a_migdist_lbl 653 `"Krong Bong"', add
label define vn09a_migdist_lbl 654 `"Krong Pac"', add
label define vn09a_migdist_lbl 655 `"Krong A Na"', add
label define vn09a_migdist_lbl 656 `"Lak"', add
label define vn09a_migdist_lbl 657 `"Cu Kuin"', add
label define vn09a_migdist_lbl 660 `"Gia Nghia"', add
label define vn09a_migdist_lbl 661 `"Dak Glong"', add
label define vn09a_migdist_lbl 662 `"Cu Jut"', add
label define vn09a_migdist_lbl 663 `"Dak Mil"', add
label define vn09a_migdist_lbl 664 `"Krong No"', add
label define vn09a_migdist_lbl 665 `"Dak Song"', add
label define vn09a_migdist_lbl 666 `"Dak R'Lap"', add
label define vn09a_migdist_lbl 667 `"Tuy Duc"', add
label define vn09a_migdist_lbl 672 `"Da Lat"', add
label define vn09a_migdist_lbl 673 `"Bao Loc"', add
label define vn09a_migdist_lbl 674 `"Dam Rong"', add
label define vn09a_migdist_lbl 675 `"Lac Duong"', add
label define vn09a_migdist_lbl 676 `"Lam Ha"', add
label define vn09a_migdist_lbl 677 `"Don Duong"', add
label define vn09a_migdist_lbl 678 `"Duc Trong"', add
label define vn09a_migdist_lbl 679 `"Di Linh"', add
label define vn09a_migdist_lbl 680 `"Bao Lam"', add
label define vn09a_migdist_lbl 681 `"Da Huoai"', add
label define vn09a_migdist_lbl 682 `"Da Teh"', add
label define vn09a_migdist_lbl 683 `"Cat Tien"', add
label define vn09a_migdist_lbl 689 `"Dong Xoai"', add
label define vn09a_migdist_lbl 691 `"Phuoc Long"', add
label define vn09a_migdist_lbl 692 `"Loc Ninh"', add
label define vn09a_migdist_lbl 693 `"Bu Dop"', add
label define vn09a_migdist_lbl 694 `"Binh Long"', add
label define vn09a_migdist_lbl 695 `"Dong Phu"', add
label define vn09a_migdist_lbl 696 `"Bu Dang"', add
label define vn09a_migdist_lbl 697 `"Chon Thanh"', add
label define vn09a_migdist_lbl 703 `"Tay Ninh town"', add
label define vn09a_migdist_lbl 705 `"Tan Bien"', add
label define vn09a_migdist_lbl 706 `"Tan Chau"', add
label define vn09a_migdist_lbl 707 `"Duong Minh Chau"', add
label define vn09a_migdist_lbl 708 `"Chau Thanh"', add
label define vn09a_migdist_lbl 709 `"Hoa Thanh"', add
label define vn09a_migdist_lbl 710 `"Go Dau"', add
label define vn09a_migdist_lbl 711 `"Ben Cau"', add
label define vn09a_migdist_lbl 712 `"Trang Bang"', add
label define vn09a_migdist_lbl 718 `"Thu Dau Mot"', add
label define vn09a_migdist_lbl 720 `"Dau Tieng"', add
label define vn09a_migdist_lbl 721 `"Ben Cat"', add
label define vn09a_migdist_lbl 722 `"Phu Giao"', add
label define vn09a_migdist_lbl 723 `"Tan Uyen"', add
label define vn09a_migdist_lbl 724 `"Di An"', add
label define vn09a_migdist_lbl 725 `"Thuan An"', add
label define vn09a_migdist_lbl 731 `"Bien Hoa"', add
label define vn09a_migdist_lbl 732 `"Long Khanh"', add
label define vn09a_migdist_lbl 734 `"Tan Phu"', add
label define vn09a_migdist_lbl 735 `"Vinh Cuu"', add
label define vn09a_migdist_lbl 736 `"Dinh Quan"', add
label define vn09a_migdist_lbl 737 `"Trang Bom"', add
label define vn09a_migdist_lbl 738 `"Thong Nhat"', add
label define vn09a_migdist_lbl 739 `"Cam My"', add
label define vn09a_migdist_lbl 740 `"Long Thanh"', add
label define vn09a_migdist_lbl 741 `"Xuan Loc"', add
label define vn09a_migdist_lbl 742 `"Nhon Trach"', add
label define vn09a_migdist_lbl 747 `"Vung Tau"', add
label define vn09a_migdist_lbl 748 `"Ba Ria"', add
label define vn09a_migdist_lbl 750 `"Chau Duc"', add
label define vn09a_migdist_lbl 751 `"Xuyen Moc"', add
label define vn09a_migdist_lbl 752 `"Long Dien"', add
label define vn09a_migdist_lbl 753 `"Dat Do"', add
label define vn09a_migdist_lbl 754 `"Tan Thanh"', add
label define vn09a_migdist_lbl 755 `"Con Dao"', add
label define vn09a_migdist_lbl 760 `"District 1"', add
label define vn09a_migdist_lbl 761 `"District 12"', add
label define vn09a_migdist_lbl 762 `"Thu Duc"', add
label define vn09a_migdist_lbl 763 `"District 9"', add
label define vn09a_migdist_lbl 764 `"Go Vap"', add
label define vn09a_migdist_lbl 765 `"Binh Thanh"', add
label define vn09a_migdist_lbl 766 `"Tan Binh"', add
label define vn09a_migdist_lbl 767 `"Tan Phu"', add
label define vn09a_migdist_lbl 768 `"Phu Nhuan"', add
label define vn09a_migdist_lbl 769 `"District 2"', add
label define vn09a_migdist_lbl 770 `"District 3"', add
label define vn09a_migdist_lbl 771 `"District 10"', add
label define vn09a_migdist_lbl 772 `"District 11"', add
label define vn09a_migdist_lbl 773 `"District 4"', add
label define vn09a_migdist_lbl 774 `"District 5"', add
label define vn09a_migdist_lbl 775 `"District 6"', add
label define vn09a_migdist_lbl 776 `"District 8"', add
label define vn09a_migdist_lbl 777 `"Binh Tan"', add
label define vn09a_migdist_lbl 778 `"District 7"', add
label define vn09a_migdist_lbl 783 `"Cu Chi"', add
label define vn09a_migdist_lbl 784 `"Hoc Mon"', add
label define vn09a_migdist_lbl 785 `"Binh Chanh"', add
label define vn09a_migdist_lbl 786 `"Nha Be"', add
label define vn09a_migdist_lbl 787 `"Can Gio"', add
label define vn09a_migdist_lbl 794 `"Tan An"', add
label define vn09a_migdist_lbl 796 `"Tan Hung"', add
label define vn09a_migdist_lbl 797 `"Vinh Hung"', add
label define vn09a_migdist_lbl 798 `"Moc Hoa"', add
label define vn09a_migdist_lbl 799 `"Tan Thanh"', add
label define vn09a_migdist_lbl 800 `"Thanh Hoa"', add
label define vn09a_migdist_lbl 801 `"Duc Hue"', add
label define vn09a_migdist_lbl 802 `"Duc Hoa"', add
label define vn09a_migdist_lbl 803 `"Ben Luc"', add
label define vn09a_migdist_lbl 804 `"Thu Thua"', add
label define vn09a_migdist_lbl 805 `"Tan Tru"', add
label define vn09a_migdist_lbl 806 `"Can Duoc"', add
label define vn09a_migdist_lbl 807 `"Can Giuoc"', add
label define vn09a_migdist_lbl 808 `"Chau Thanh"', add
label define vn09a_migdist_lbl 815 `"My Tho"', add
label define vn09a_migdist_lbl 816 `"Go Cong"', add
label define vn09a_migdist_lbl 818 `"Tan Phuoc"', add
label define vn09a_migdist_lbl 819 `"Cai Be"', add
label define vn09a_migdist_lbl 820 `"Cai Lay"', add
label define vn09a_migdist_lbl 821 `"Chau Thanh"', add
label define vn09a_migdist_lbl 822 `"Cho Gao"', add
label define vn09a_migdist_lbl 823 `"Go Cong Tay"', add
label define vn09a_migdist_lbl 824 `"Go Cong Dong"', add
label define vn09a_migdist_lbl 825 `"Tan Phu Dong"', add
label define vn09a_migdist_lbl 829 `"Ben Tre town"', add
label define vn09a_migdist_lbl 831 `"Chau Thanh"', add
label define vn09a_migdist_lbl 832 `"Cho Lach"', add
label define vn09a_migdist_lbl 833 `"Mo Cay"', add
label define vn09a_migdist_lbl 834 `"Giong Trom"', add
label define vn09a_migdist_lbl 835 `"Binh Dai"', add
label define vn09a_migdist_lbl 836 `"Ba Tri"', add
label define vn09a_migdist_lbl 837 `"Thanh Phu"', add
label define vn09a_migdist_lbl 842 `"Tra Vinh town"', add
label define vn09a_migdist_lbl 844 `"Cang Long"', add
label define vn09a_migdist_lbl 845 `"Cau Ke"', add
label define vn09a_migdist_lbl 846 `"Tieu Can"', add
label define vn09a_migdist_lbl 847 `"Chau Thanh"', add
label define vn09a_migdist_lbl 848 `"Cau Ngang"', add
label define vn09a_migdist_lbl 849 `"Tra Cu"', add
label define vn09a_migdist_lbl 850 `"Duyen Hai"', add
label define vn09a_migdist_lbl 855 `"Vinh Long town"', add
label define vn09a_migdist_lbl 857 `"Long Ho"', add
label define vn09a_migdist_lbl 858 `"Mang Thit"', add
label define vn09a_migdist_lbl 859 `"Vung Liem"', add
label define vn09a_migdist_lbl 860 `"Tam Binh"', add
label define vn09a_migdist_lbl 861 `"Binh Minh"', add
label define vn09a_migdist_lbl 862 `"Tra on"', add
label define vn09a_migdist_lbl 863 `"Binh Tan"', add
label define vn09a_migdist_lbl 866 `"Cao Lanh"', add
label define vn09a_migdist_lbl 867 `"Sa Dec"', add
label define vn09a_migdist_lbl 868 `"Hong Ngu"', add
label define vn09a_migdist_lbl 869 `"Tan Hong"', add
label define vn09a_migdist_lbl 870 `"Hong Ngu"', add
label define vn09a_migdist_lbl 871 `"Tam Nong"', add
label define vn09a_migdist_lbl 872 `"Thap Muoi"', add
label define vn09a_migdist_lbl 873 `"Cao Lanh"', add
label define vn09a_migdist_lbl 874 `"Thanh Binh"', add
label define vn09a_migdist_lbl 875 `"Lap Vo"', add
label define vn09a_migdist_lbl 876 `"Lai Vung"', add
label define vn09a_migdist_lbl 877 `"Chau Thanh"', add
label define vn09a_migdist_lbl 883 `"Long Xuyen"', add
label define vn09a_migdist_lbl 884 `"Chau Doc"', add
label define vn09a_migdist_lbl 886 `"An Phu"', add
label define vn09a_migdist_lbl 887 `"Tan Chau"', add
label define vn09a_migdist_lbl 888 `"Phu Tan"', add
label define vn09a_migdist_lbl 889 `"Chau Phu"', add
label define vn09a_migdist_lbl 890 `"Tinh Bien"', add
label define vn09a_migdist_lbl 891 `"Tri Ton"', add
label define vn09a_migdist_lbl 892 `"Chau Thanh"', add
label define vn09a_migdist_lbl 893 `"Cho Moi"', add
label define vn09a_migdist_lbl 894 `"Thoai Son"', add
label define vn09a_migdist_lbl 899 `"Rach Gia"', add
label define vn09a_migdist_lbl 900 `"Ha Tien"', add
label define vn09a_migdist_lbl 902 `"Kien Luong"', add
label define vn09a_migdist_lbl 903 `"Hon Dat"', add
label define vn09a_migdist_lbl 904 `"Tan Hiep"', add
label define vn09a_migdist_lbl 905 `"Chau Thanh"', add
label define vn09a_migdist_lbl 906 `"Giong Rieng"', add
label define vn09a_migdist_lbl 907 `"Go Quao"', add
label define vn09a_migdist_lbl 908 `"An Bien"', add
label define vn09a_migdist_lbl 909 `"An Minh"', add
label define vn09a_migdist_lbl 910 `"Vinh Thuan"', add
label define vn09a_migdist_lbl 911 `"Phu Quoc"', add
label define vn09a_migdist_lbl 912 `"Kien Hai"', add
label define vn09a_migdist_lbl 913 `"U Minh Thuong"', add
label define vn09a_migdist_lbl 916 `"Ninh Kieu"', add
label define vn09a_migdist_lbl 917 `"O Mon"', add
label define vn09a_migdist_lbl 918 `"Binh Thuy"', add
label define vn09a_migdist_lbl 919 `"Cai Rang"', add
label define vn09a_migdist_lbl 923 `"Thot Not"', add
label define vn09a_migdist_lbl 924 `"Vinh Thanh"', add
label define vn09a_migdist_lbl 925 `"Co Do"', add
label define vn09a_migdist_lbl 926 `"Phong Dien"', add
label define vn09a_migdist_lbl 927 `"Thoi Lai"', add
label define vn09a_migdist_lbl 930 `"Vi Thanh"', add
label define vn09a_migdist_lbl 931 `"Nga Bay"', add
label define vn09a_migdist_lbl 932 `"Chau Thanh A"', add
label define vn09a_migdist_lbl 933 `"Chau Thanh"', add
label define vn09a_migdist_lbl 934 `"Phung Hiep"', add
label define vn09a_migdist_lbl 935 `"Vi Thuy"', add
label define vn09a_migdist_lbl 936 `"Long My"', add
label define vn09a_migdist_lbl 941 `"Soc Trang town"', add
label define vn09a_migdist_lbl 942 `"Chau Thanh"', add
label define vn09a_migdist_lbl 943 `"Ke Sach"', add
label define vn09a_migdist_lbl 944 `"My Tu"', add
label define vn09a_migdist_lbl 945 `"Cu Lao Dung"', add
label define vn09a_migdist_lbl 946 `"Long Phu"', add
label define vn09a_migdist_lbl 947 `"My Xuyen"', add
label define vn09a_migdist_lbl 948 `"Nga Nam"', add
label define vn09a_migdist_lbl 949 `"Thanh Tri"', add
label define vn09a_migdist_lbl 950 `"Vinh Chau"', add
label define vn09a_migdist_lbl 954 `"Bac Lieu town"', add
label define vn09a_migdist_lbl 956 `"Hong Dan"', add
label define vn09a_migdist_lbl 957 `"Phuoc Long"', add
label define vn09a_migdist_lbl 958 `"Vinh Loi"', add
label define vn09a_migdist_lbl 959 `"Gia Rai"', add
label define vn09a_migdist_lbl 960 `"Dong Hai"', add
label define vn09a_migdist_lbl 961 `"Hoa Binh"', add
label define vn09a_migdist_lbl 964 `"Ca Mau town"', add
label define vn09a_migdist_lbl 966 `"U Minh"', add
label define vn09a_migdist_lbl 967 `"Thoi Binh"', add
label define vn09a_migdist_lbl 968 `"Tran Van Thoi"', add
label define vn09a_migdist_lbl 969 `"Cai Nuoc"', add
label define vn09a_migdist_lbl 970 `"Dam Doi"', add
label define vn09a_migdist_lbl 971 `"Nam Can"', add
label define vn09a_migdist_lbl 972 `"Phu Tan"', add
label define vn09a_migdist_lbl 973 `"Ngoc Hien"', add
label define vn09a_migdist_lbl 998 `"Unknown"', add
label define vn09a_migdist_lbl 999 `"NIU (not in the universe)"', add
label values vn09a_migdist vn09a_migdist_lbl

label define vn09a_migprov_lbl 01 `"Ha Noi city"'
label define vn09a_migprov_lbl 02 `"Ha Giang"', add
label define vn09a_migprov_lbl 04 `"Cao Bang"', add
label define vn09a_migprov_lbl 06 `"Bac Kan"', add
label define vn09a_migprov_lbl 08 `"Tuyen Quang"', add
label define vn09a_migprov_lbl 10 `"Lao Cai"', add
label define vn09a_migprov_lbl 11 `"Dien Bien"', add
label define vn09a_migprov_lbl 12 `"Lai Chau"', add
label define vn09a_migprov_lbl 14 `"Son La"', add
label define vn09a_migprov_lbl 15 `"Yen Bai"', add
label define vn09a_migprov_lbl 17 `"Hoa Binh"', add
label define vn09a_migprov_lbl 19 `"Thai Nguyen"', add
label define vn09a_migprov_lbl 20 `"Lang Son"', add
label define vn09a_migprov_lbl 22 `"Quang Ninh"', add
label define vn09a_migprov_lbl 24 `"Bac Giang"', add
label define vn09a_migprov_lbl 25 `"Phu Tho"', add
label define vn09a_migprov_lbl 26 `"Vinh Phuc"', add
label define vn09a_migprov_lbl 27 `"Bac Ninh"', add
label define vn09a_migprov_lbl 30 `"Hai Duong"', add
label define vn09a_migprov_lbl 31 `"Hai Phong city"', add
label define vn09a_migprov_lbl 33 `"Hung Yen"', add
label define vn09a_migprov_lbl 34 `"Thai Binh"', add
label define vn09a_migprov_lbl 35 `"Ha Nam"', add
label define vn09a_migprov_lbl 36 `"Nam Dinh"', add
label define vn09a_migprov_lbl 37 `"Ninh Binh"', add
label define vn09a_migprov_lbl 38 `"Thanh Hoa"', add
label define vn09a_migprov_lbl 40 `"Nghe An"', add
label define vn09a_migprov_lbl 42 `"Ha Tinh"', add
label define vn09a_migprov_lbl 44 `"Quang Binh"', add
label define vn09a_migprov_lbl 45 `"Quang Tri"', add
label define vn09a_migprov_lbl 46 `"Thua Thien Hue"', add
label define vn09a_migprov_lbl 48 `"Da Nang"', add
label define vn09a_migprov_lbl 49 `"Quang Nam"', add
label define vn09a_migprov_lbl 51 `"Quang Ngai"', add
label define vn09a_migprov_lbl 52 `"Binh Dinh"', add
label define vn09a_migprov_lbl 54 `"Phu Yen"', add
label define vn09a_migprov_lbl 56 `"Khanh Hoa"', add
label define vn09a_migprov_lbl 58 `"Ninh Thuan"', add
label define vn09a_migprov_lbl 60 `"Binh Thuan"', add
label define vn09a_migprov_lbl 62 `"Kon Tum"', add
label define vn09a_migprov_lbl 64 `"Gia Lai"', add
label define vn09a_migprov_lbl 66 `"Dak Lak"', add
label define vn09a_migprov_lbl 67 `"Dak Nong"', add
label define vn09a_migprov_lbl 68 `"Lam Dong"', add
label define vn09a_migprov_lbl 70 `"Binh Phuoc"', add
label define vn09a_migprov_lbl 72 `"Tay Ninh"', add
label define vn09a_migprov_lbl 74 `"Binh Duong"', add
label define vn09a_migprov_lbl 75 `"Dong Nai"', add
label define vn09a_migprov_lbl 77 `"Ba Ria - Vung Tau"', add
label define vn09a_migprov_lbl 79 `"Ho Chi Minh city"', add
label define vn09a_migprov_lbl 80 `"Long An"', add
label define vn09a_migprov_lbl 82 `"Tien Giang"', add
label define vn09a_migprov_lbl 83 `"Ben Tre"', add
label define vn09a_migprov_lbl 84 `"Tra Vinh"', add
label define vn09a_migprov_lbl 86 `"Vinh Long"', add
label define vn09a_migprov_lbl 87 `"Dong Thap"', add
label define vn09a_migprov_lbl 89 `"An Giang"', add
label define vn09a_migprov_lbl 91 `"Kien Giang"', add
label define vn09a_migprov_lbl 92 `"Can Tho city"', add
label define vn09a_migprov_lbl 93 `"Hau Giang"', add
label define vn09a_migprov_lbl 94 `"Soc Trang"', add
label define vn09a_migprov_lbl 95 `"Bac Lieu"', add
label define vn09a_migprov_lbl 96 `"Ca Mau"', add
label define vn09a_migprov_lbl 98 `"Unknown"', add
label define vn09a_migprov_lbl 99 `"NIU (not in the universe)"', add
label values vn09a_migprov vn09a_migprov_lbl


