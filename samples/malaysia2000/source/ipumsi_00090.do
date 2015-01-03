* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                       ///
  int     cntry            1-3      ///
  int     year             4-7      ///
  int     sample           8-11     ///
  double  serial           12-21    ///
  byte    my00a_hhnum      22-23    ///
  byte    my00a_hhn        24-25    ///
  byte    my00a_pernd      26-27    ///
  byte    my00a_pern       28-29    ///
  byte    my00a_fbig_nd    30-31    ///
  byte    my00a_fbig_nh    32-33    ///
  byte    my00a_state      34-35    ///
  byte    my00a_urban      36-36    ///
  byte    my00a_perndo     37-38    ///
  byte    my00a_hhno       39-40    ///
  byte    my00a_dwtype     41-41    ///
  byte    my00a_walls      42-42    ///
  byte    my00a_owner      43-43    ///
  byte    my00a_bedroom    44-45    ///
  byte    my00a_watsrc     46-46    ///
  byte    my00a_elect      47-47    ///
  byte    my00a_toilet     48-48    ///
  byte    my00a_garbage    49-49    ///
  byte    my00a_hhnumo     50-51    ///
  byte    my00a_car1       52-52    ///
  byte    my00a_car2       53-53    ///
  byte    my00a_car3       54-54    ///
  byte    my00a_moto1      55-55    ///
  byte    my00a_moto2      56-56    ///
  byte    my00a_bike       57-57    ///
  byte    my00a_aircon     58-58    ///
  byte    my00a_washer     59-59    ///
  byte    my00a_refrig     60-60    ///
  byte    my00a_micro      61-61    ///
  byte    my00a_radio      62-62    ///
  byte    my00a_tv         63-63    ///
  byte    my00a_video      64-64    ///
  byte    my00a_phone      65-65    ///
  byte    my00a_phoneh     66-66    ///
  byte    my00a_computer   67-67    ///
  byte    my00a_internet   68-68    ///
  byte    my00a_hasnone    69-69    ///
  byte    my00a_tenure1    70-70    ///
  byte    my00a_tenure2    71-71    ///
  byte    my00a_renter     72-72    ///
  byte    my00a_rent       73-73    ///
  byte    my00a_perno      74-75    ///
  byte    my00a_hhtype     76-76    ///
  int     pernum           77-79    ///
  float   wtper            80-87    ///
  byte    my00a_pernum     88-89    ///
  byte    my00a_relate     90-91    ///
  byte    my00a_sex        92-92    ///
  byte    my00a_age        93-94    ///
  byte    my00a_marst      95-95    ///
  byte    my00a_bpl        96-96    ///
  byte    my00a_bpls       97-98    ///
  byte    my00a_bplc       99-100   ///
  byte    my00a_citizen1   101-101  ///
  byte    my00a_citizen2   102-103  ///
  byte    my00a_resp       104-104  ///
  byte    my00a_respst     105-106  ///
  int     my00a_respad     107-110  ///
  byte    my00a_school     111-111  ///
  byte    my00a_edlev      112-112  ///
  byte    my00a_degree     113-114  ///
  byte    my00a_edinst     115-115  ///
  byte    my00a_field      116-116  ///
  byte    my00a_lit        117-117  ///
  byte    my00a_working    118-118  ///
  byte    my00a_jobreturn  119-119  ///
  byte    my00a_seekwrk    120-120  ///
  byte    my00a_whynot     121-122  ///
  byte    my00a_occsect    123-123  ///
  byte    my00a_occ1       124-125  ///
  byte    my00a_occ2       126-127  ///
  int     my00a_occ3       128-130  ///
  byte    my00a_ind2       131-132  ///
  int     my00a_ind3       133-135  ///
  byte    my00a_empstat    136-136  ///
  byte    my00a_ethnic     137-137  ///
  byte    my00a_disable1   138-138  ///
  byte    my00a_disable2   139-139  ///
  byte    my00a_disable3   140-140  ///
  byte    my00a_relig      141-141  ///
  byte    my00a_migrant    142-142  ///
  using `"ipumsi_00090.dat"'

replace wtper           = wtper           / 100

format serial          %10.0f
format wtper           %8.2f

label var cntry           `"Country"'
label var year            `"Year"'
label var sample          `"IPUMS sample identifier"'
label var serial          `"Household serial number"'
label var my00a_hhnum     `"Household number (within dwelling)"'
label var my00a_hhn       `"Number of households in dwelling"'
label var my00a_pernd     `"Number of persons in dwelling"'
label var my00a_pern      `"Number of persons in household"'
label var my00a_fbig_nd   `"Number of persons in large dwelling before it was split"'
label var my00a_fbig_nh   `"Number of persons in large household before it was split"'
label var my00a_state     `"State"'
label var my00a_urban     `"Urban area"'
label var my00a_perndo    `"Number of persons in living quarters (de jure)"'
label var my00a_hhno      `"Number of households in living quarters  (de jure)"'
label var my00a_dwtype    `"Type of living quarters"'
label var my00a_walls     `"Construction material of walls"'
label var my00a_owner     `"Ownership"'
label var my00a_bedroom   `"Number of bedrooms"'
label var my00a_watsrc    `"Source of drinking water"'
label var my00a_elect     `"Electricity supply"'
label var my00a_toilet    `"Toilet facility"'
label var my00a_garbage   `"Garbage collection"'
label var my00a_hhnumo    `"Household number"'
label var my00a_car1      `"Motorcar - 1 unit"'
label var my00a_car2      `"Motorcar - 2 units"'
label var my00a_car3      `"Motorcar - 3 units and more"'
label var my00a_moto1     `"Motorcycle - 1 unit"'
label var my00a_moto2     `"Motorcycle - 2 units and more"'
label var my00a_bike      `"Bicycle"'
label var my00a_aircon    `"Air conditioner"'
label var my00a_washer    `"Washing machine"'
label var my00a_refrig    `"Refrigerator"'
label var my00a_micro     `"Microwave"'
label var my00a_radio     `"Radio/hi-fi"'
label var my00a_tv        `"Television"'
label var my00a_video     `"Video/VCR/DVD"'
label var my00a_phone     `"Land phone"'
label var my00a_phoneh    `"Mobile phone"'
label var my00a_computer  `"Personel computer"'
label var my00a_internet  `"Internet subscription"'
label var my00a_hasnone   `"None of the items mentioned above available"'
label var my00a_tenure1   `"Own present living quarter"'
label var my00a_tenure2   `"Own any other living quarter in Malaysia"'
label var my00a_renter    `"Renting"'
label var my00a_rent      `"Monthly rent payment"'
label var my00a_perno     `"Total number of people"'
label var my00a_hhtype    `"Household type"'
label var pernum          `"Person number"'
label var wtper           `"Person weight"'
label var my00a_pernum    `"Person number (within household)"'
label var my00a_relate    `"Relationship to household head"'
label var my00a_sex       `"Sex"'
label var my00a_age       `"Age (in completed years)"'
label var my00a_marst     `"Marital status"'
label var my00a_bpl       `"Born in Malaysia"'
label var my00a_bpls      `"State of birth"'
label var my00a_bplc      `"Country of birth"'
label var my00a_citizen1  `"Citizenship"'
label var my00a_citizen2  `"Country for non-Malaysian citizen"'
label var my00a_resp      `"Residence 5 years ago"'
label var my00a_respst    `"State or country of residence 5 years ago"'
label var my00a_respad    `"Administrative district or country of residence 5 years ago"'
label var my00a_school    `"Ever attended school"'
label var my00a_edlev     `"Highest education level"'
label var my00a_degree    `"Highest certificate/diploma/certificate obtained"'
label var my00a_edinst    `"Place obtained certificate/diploma/certificate"'
label var my00a_field     `"Field of study"'
label var my00a_lit       `"Reading and writing in any language"'
label var my00a_working   `"Worked during last 7 days for at least one hour"'
label var my00a_jobreturn `"Job to return to"'
label var my00a_seekwrk   `"Looking for work during the last 7 days"'
label var my00a_whynot    `"Reasons not seeking work"'
label var my00a_occsect   `"Occupation sector"'
label var my00a_occ1      `"Occupation - 1 digit"'
label var my00a_occ2      `"Occupation - 2 digits"'
label var my00a_occ3      `"Occupation -- 3 digits"'
label var my00a_ind2      `"Main industry - 2 digits"'
label var my00a_ind3      `"Main industry - 3 digits"'
label var my00a_empstat   `"Employment status"'
label var my00a_ethnic    `"Major ethnic group"'
label var my00a_disable1  `"Handicapped 1"'
label var my00a_disable2  `"Handicapped 2"'
label var my00a_disable3  `"Handicapped 3"'
label var my00a_relig     `"Religion"'
label var my00a_migrant   `"Migrant status"'

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

label define my00a_hhnum_lbl 01 `"1"'
label define my00a_hhnum_lbl 02 `"2"', add
label define my00a_hhnum_lbl 03 `"3"', add
label define my00a_hhnum_lbl 04 `"4"', add
label define my00a_hhnum_lbl 05 `"5"', add
label define my00a_hhnum_lbl 06 `"6"', add
label define my00a_hhnum_lbl 07 `"7"', add
label define my00a_hhnum_lbl 08 `"8"', add
label define my00a_hhnum_lbl 09 `"9"', add
label define my00a_hhnum_lbl 10 `"10"', add
label define my00a_hhnum_lbl 11 `"11"', add
label define my00a_hhnum_lbl 12 `"12"', add
label define my00a_hhnum_lbl 13 `"13"', add
label define my00a_hhnum_lbl 14 `"14"', add
label define my00a_hhnum_lbl 15 `"15"', add
label define my00a_hhnum_lbl 16 `"16"', add
label define my00a_hhnum_lbl 17 `"17"', add
label define my00a_hhnum_lbl 18 `"18"', add
label define my00a_hhnum_lbl 19 `"19"', add
label define my00a_hhnum_lbl 20 `"20"', add
label define my00a_hhnum_lbl 21 `"21"', add
label define my00a_hhnum_lbl 22 `"22"', add
label values my00a_hhnum my00a_hhnum_lbl

label define my00a_hhn_lbl 01 `"1"'
label define my00a_hhn_lbl 02 `"2"', add
label define my00a_hhn_lbl 03 `"3"', add
label define my00a_hhn_lbl 04 `"4"', add
label define my00a_hhn_lbl 05 `"5"', add
label define my00a_hhn_lbl 06 `"6"', add
label define my00a_hhn_lbl 07 `"7"', add
label define my00a_hhn_lbl 08 `"8"', add
label define my00a_hhn_lbl 09 `"9"', add
label define my00a_hhn_lbl 10 `"10"', add
label define my00a_hhn_lbl 11 `"11"', add
label define my00a_hhn_lbl 12 `"12"', add
label define my00a_hhn_lbl 13 `"13"', add
label define my00a_hhn_lbl 14 `"14"', add
label define my00a_hhn_lbl 16 `"16"', add
label define my00a_hhn_lbl 18 `"18"', add
label define my00a_hhn_lbl 22 `"22"', add
label values my00a_hhn my00a_hhn_lbl

label define my00a_pernd_lbl 01 `"1"'
label define my00a_pernd_lbl 02 `"2"', add
label define my00a_pernd_lbl 03 `"3"', add
label define my00a_pernd_lbl 04 `"4"', add
label define my00a_pernd_lbl 05 `"5"', add
label define my00a_pernd_lbl 06 `"6"', add
label define my00a_pernd_lbl 07 `"7"', add
label define my00a_pernd_lbl 08 `"8"', add
label define my00a_pernd_lbl 09 `"9"', add
label define my00a_pernd_lbl 10 `"10"', add
label define my00a_pernd_lbl 11 `"11"', add
label define my00a_pernd_lbl 12 `"12"', add
label define my00a_pernd_lbl 13 `"13"', add
label define my00a_pernd_lbl 14 `"14"', add
label define my00a_pernd_lbl 15 `"15"', add
label define my00a_pernd_lbl 16 `"16"', add
label define my00a_pernd_lbl 17 `"17"', add
label define my00a_pernd_lbl 18 `"18"', add
label define my00a_pernd_lbl 19 `"19"', add
label define my00a_pernd_lbl 20 `"20"', add
label define my00a_pernd_lbl 21 `"21"', add
label define my00a_pernd_lbl 22 `"22"', add
label define my00a_pernd_lbl 23 `"23"', add
label define my00a_pernd_lbl 24 `"24"', add
label define my00a_pernd_lbl 25 `"25"', add
label define my00a_pernd_lbl 26 `"26"', add
label define my00a_pernd_lbl 27 `"27"', add
label define my00a_pernd_lbl 29 `"29"', add
label values my00a_pernd my00a_pernd_lbl

label define my00a_pern_lbl 01 `"1"'
label define my00a_pern_lbl 02 `"2"', add
label define my00a_pern_lbl 03 `"3"', add
label define my00a_pern_lbl 04 `"4"', add
label define my00a_pern_lbl 05 `"5"', add
label define my00a_pern_lbl 06 `"6"', add
label define my00a_pern_lbl 07 `"7"', add
label define my00a_pern_lbl 08 `"8"', add
label define my00a_pern_lbl 09 `"9"', add
label define my00a_pern_lbl 10 `"10"', add
label define my00a_pern_lbl 11 `"11"', add
label define my00a_pern_lbl 12 `"12"', add
label define my00a_pern_lbl 13 `"13"', add
label define my00a_pern_lbl 14 `"14"', add
label define my00a_pern_lbl 15 `"15"', add
label define my00a_pern_lbl 16 `"16"', add
label define my00a_pern_lbl 17 `"17"', add
label define my00a_pern_lbl 18 `"18"', add
label define my00a_pern_lbl 19 `"19"', add
label define my00a_pern_lbl 20 `"20"', add
label define my00a_pern_lbl 21 `"21"', add
label define my00a_pern_lbl 22 `"22"', add
label define my00a_pern_lbl 24 `"24"', add
label define my00a_pern_lbl 25 `"25"', add
label define my00a_pern_lbl 27 `"27"', add
label values my00a_pern my00a_pern_lbl

label define my00a_fbig_nd_lbl 00 `"Not split"'
label define my00a_fbig_nd_lbl 31 `"31"', add
label define my00a_fbig_nd_lbl 32 `"32"', add
label define my00a_fbig_nd_lbl 34 `"34"', add
label define my00a_fbig_nd_lbl 35 `"35"', add
label define my00a_fbig_nd_lbl 53 `"53"', add
label values my00a_fbig_nd my00a_fbig_nd_lbl

label define my00a_fbig_nh_lbl 00 `"Not split"'
label define my00a_fbig_nh_lbl 32 `"32"', add
label define my00a_fbig_nh_lbl 35 `"35"', add
label values my00a_fbig_nh my00a_fbig_nh_lbl

label define my00a_state_lbl 01 `"Johor"'
label define my00a_state_lbl 02 `"Kedah"', add
label define my00a_state_lbl 03 `"Kelantan"', add
label define my00a_state_lbl 04 `"Melaka"', add
label define my00a_state_lbl 05 `"Negeri Sembilan"', add
label define my00a_state_lbl 06 `"Pahang"', add
label define my00a_state_lbl 07 `"Pulau Pinang"', add
label define my00a_state_lbl 08 `"Perak"', add
label define my00a_state_lbl 09 `"Perlis"', add
label define my00a_state_lbl 10 `"Selangor"', add
label define my00a_state_lbl 11 `"Terengganu"', add
label define my00a_state_lbl 12 `"Sabah"', add
label define my00a_state_lbl 13 `"Sarawak"', add
label define my00a_state_lbl 14 `"Kuala Lumpur Federal Territory"', add
label define my00a_state_lbl 15 `"Labuan Federal Territory"', add
label values my00a_state my00a_state_lbl

label define my00a_urban_lbl 1 `"Metropolitan urban (towns + built-up area with 75,000 persons and above)"'
label define my00a_urban_lbl 2 `"Urban large (towns + built-up area with 10,000 - 74,999 persons)"', add
label define my00a_urban_lbl 3 `"Urban small (towns with 1,000 - 9,999 persons)"', add
label define my00a_urban_lbl 4 `"Rural towns (999 persons or less) + other areas"', add
label values my00a_urban my00a_urban_lbl

label define my00a_perndo_lbl 00 `"0"'
label define my00a_perndo_lbl 01 `"1"', add
label define my00a_perndo_lbl 02 `"2"', add
label define my00a_perndo_lbl 03 `"3"', add
label define my00a_perndo_lbl 04 `"4"', add
label define my00a_perndo_lbl 05 `"5"', add
label define my00a_perndo_lbl 06 `"6"', add
label define my00a_perndo_lbl 07 `"7"', add
label define my00a_perndo_lbl 08 `"8"', add
label define my00a_perndo_lbl 09 `"9"', add
label define my00a_perndo_lbl 10 `"10"', add
label define my00a_perndo_lbl 11 `"11"', add
label define my00a_perndo_lbl 12 `"12"', add
label define my00a_perndo_lbl 13 `"13"', add
label define my00a_perndo_lbl 14 `"14"', add
label define my00a_perndo_lbl 15 `"15"', add
label define my00a_perndo_lbl 16 `"16"', add
label define my00a_perndo_lbl 17 `"17"', add
label define my00a_perndo_lbl 18 `"18"', add
label define my00a_perndo_lbl 19 `"19"', add
label define my00a_perndo_lbl 20 `"20"', add
label define my00a_perndo_lbl 21 `"21"', add
label define my00a_perndo_lbl 22 `"22"', add
label define my00a_perndo_lbl 23 `"23"', add
label define my00a_perndo_lbl 24 `"24"', add
label define my00a_perndo_lbl 25 `"25"', add
label define my00a_perndo_lbl 26 `"26"', add
label define my00a_perndo_lbl 27 `"27"', add
label define my00a_perndo_lbl 29 `"29"', add
label define my00a_perndo_lbl 31 `"31"', add
label define my00a_perndo_lbl 32 `"32"', add
label define my00a_perndo_lbl 34 `"34"', add
label define my00a_perndo_lbl 35 `"35"', add
label define my00a_perndo_lbl 53 `"53"', add
label define my00a_perndo_lbl 60 `"60+"', add
label values my00a_perndo my00a_perndo_lbl

label define my00a_hhno_lbl 01 `"1"'
label define my00a_hhno_lbl 02 `"2"', add
label define my00a_hhno_lbl 03 `"3"', add
label define my00a_hhno_lbl 04 `"4"', add
label define my00a_hhno_lbl 05 `"5"', add
label define my00a_hhno_lbl 06 `"6"', add
label define my00a_hhno_lbl 07 `"7"', add
label define my00a_hhno_lbl 08 `"8"', add
label define my00a_hhno_lbl 09 `"9"', add
label define my00a_hhno_lbl 10 `"10"', add
label define my00a_hhno_lbl 11 `"11"', add
label define my00a_hhno_lbl 12 `"12"', add
label define my00a_hhno_lbl 13 `"13"', add
label define my00a_hhno_lbl 14 `"14"', add
label define my00a_hhno_lbl 16 `"16"', add
label define my00a_hhno_lbl 18 `"18"', add
label define my00a_hhno_lbl 22 `"22"', add
label values my00a_hhno my00a_hhno_lbl

label define my00a_dwtype_lbl 1 `"Detached"'
label define my00a_dwtype_lbl 2 `"Semi-detached"', add
label define my00a_dwtype_lbl 3 `"Terrace, row or link, townhouse"', add
label define my00a_dwtype_lbl 4 `"Longhouse (Sabah and Sarawak)"', add
label define my00a_dwtype_lbl 5 `"Flat/apartment/condominium/"', add
label define my00a_dwtype_lbl 6 `"Shophouse, Office"', add
label define my00a_dwtype_lbl 7 `"Room (having direct access)"', add
label define my00a_dwtype_lbl 8 `"Makeshift, improvised hut, etc."', add
label define my00a_dwtype_lbl 9 `"Others (e.g. mobile units)"', add
label values my00a_dwtype my00a_dwtype_lbl

label define my00a_walls_lbl 1 `"Brick"'
label define my00a_walls_lbl 2 `"Outer wall plank"', add
label define my00a_walls_lbl 3 `"Brick and plank"', add
label define my00a_walls_lbl 4 `"Others"', add
label define my00a_walls_lbl 9 `"Unknown"', add
label values my00a_walls my00a_walls_lbl

label define my00a_owner_lbl 1 `"Individual owner"'
label define my00a_owner_lbl 2 `"Government / statutory body"', add
label define my00a_owner_lbl 3 `"Private sector"', add
label define my00a_owner_lbl 4 `"Others"', add
label define my00a_owner_lbl 9 `"Unknown"', add
label values my00a_owner my00a_owner_lbl

label define my00a_bedroom_lbl 00 `"None"'
label define my00a_bedroom_lbl 01 `"1"', add
label define my00a_bedroom_lbl 02 `"2"', add
label define my00a_bedroom_lbl 03 `"3"', add
label define my00a_bedroom_lbl 04 `"4"', add
label define my00a_bedroom_lbl 05 `"5"', add
label define my00a_bedroom_lbl 06 `"6"', add
label define my00a_bedroom_lbl 07 `"7"', add
label define my00a_bedroom_lbl 08 `"8"', add
label define my00a_bedroom_lbl 09 `"9"', add
label define my00a_bedroom_lbl 10 `"10"', add
label define my00a_bedroom_lbl 11 `"11"', add
label define my00a_bedroom_lbl 12 `"12"', add
label define my00a_bedroom_lbl 13 `"13+"', add
label define my00a_bedroom_lbl 98 `"Unknown"', add
label values my00a_bedroom my00a_bedroom_lbl

label define my00a_watsrc_lbl 1 `"Treated water supply"'
label define my00a_watsrc_lbl 2 `"Other sources"', add
label values my00a_watsrc my00a_watsrc_lbl

label define my00a_elect_lbl 1 `"24 hours a day"'
label define my00a_elect_lbl 2 `"Less than 24 hours a day"', add
label define my00a_elect_lbl 3 `"Self-owned generator"', add
label define my00a_elect_lbl 4 `"None"', add
label values my00a_elect my00a_elect_lbl

label define my00a_toilet_lbl 1 `"Flush (mechanical)"'
label define my00a_toilet_lbl 2 `"Pour flush"', add
label define my00a_toilet_lbl 3 `"Pit"', add
label define my00a_toilet_lbl 4 `"Enclosed space over water"', add
label define my00a_toilet_lbl 5 `"None"', add
label values my00a_toilet my00a_toilet_lbl

label define my00a_garbage_lbl 1 `"To the living quarters"'
label define my00a_garbage_lbl 2 `"To the area"', add
label define my00a_garbage_lbl 3 `"None"', add
label values my00a_garbage my00a_garbage_lbl

label define my00a_hhnumo_lbl 00 `"Unknown"'
label define my00a_hhnumo_lbl 01 `"1"', add
label define my00a_hhnumo_lbl 02 `"2"', add
label define my00a_hhnumo_lbl 03 `"3"', add
label define my00a_hhnumo_lbl 04 `"4"', add
label define my00a_hhnumo_lbl 05 `"5"', add
label define my00a_hhnumo_lbl 06 `"6"', add
label define my00a_hhnumo_lbl 07 `"7"', add
label define my00a_hhnumo_lbl 08 `"8"', add
label define my00a_hhnumo_lbl 09 `"9"', add
label define my00a_hhnumo_lbl 10 `"10"', add
label define my00a_hhnumo_lbl 11 `"11"', add
label define my00a_hhnumo_lbl 12 `"12"', add
label define my00a_hhnumo_lbl 13 `"13"', add
label define my00a_hhnumo_lbl 14 `"14"', add
label define my00a_hhnumo_lbl 15 `"15"', add
label define my00a_hhnumo_lbl 16 `"16"', add
label define my00a_hhnumo_lbl 17 `"17"', add
label define my00a_hhnumo_lbl 18 `"18"', add
label define my00a_hhnumo_lbl 19 `"19"', add
label define my00a_hhnumo_lbl 20 `"20"', add
label define my00a_hhnumo_lbl 21 `"21"', add
label define my00a_hhnumo_lbl 22 `"22"', add
label define my00a_hhnumo_lbl 23 `"23"', add
label values my00a_hhnumo my00a_hhnumo_lbl

label define my00a_car1_lbl 1 `"No"'
label define my00a_car1_lbl 2 `"Yes"', add
label define my00a_car1_lbl 9 `"Unknown"', add
label values my00a_car1 my00a_car1_lbl

label define my00a_car2_lbl 1 `"No"'
label define my00a_car2_lbl 2 `"Yes"', add
label define my00a_car2_lbl 9 `"Unknown"', add
label values my00a_car2 my00a_car2_lbl

label define my00a_car3_lbl 1 `"No"'
label define my00a_car3_lbl 2 `"Yes"', add
label define my00a_car3_lbl 9 `"Unknown"', add
label values my00a_car3 my00a_car3_lbl

label define my00a_moto1_lbl 1 `"No"'
label define my00a_moto1_lbl 2 `"Yes"', add
label define my00a_moto1_lbl 9 `"Unknown"', add
label values my00a_moto1 my00a_moto1_lbl

label define my00a_moto2_lbl 1 `"No"'
label define my00a_moto2_lbl 2 `"Yes"', add
label define my00a_moto2_lbl 9 `"Unknown"', add
label values my00a_moto2 my00a_moto2_lbl

label define my00a_bike_lbl 1 `"No"'
label define my00a_bike_lbl 2 `"Yes"', add
label define my00a_bike_lbl 9 `"Unknown"', add
label values my00a_bike my00a_bike_lbl

label define my00a_aircon_lbl 1 `"No"'
label define my00a_aircon_lbl 2 `"Yes"', add
label define my00a_aircon_lbl 9 `"Unknown"', add
label values my00a_aircon my00a_aircon_lbl

label define my00a_washer_lbl 1 `"No"'
label define my00a_washer_lbl 2 `"Yes"', add
label define my00a_washer_lbl 9 `"Unknown"', add
label values my00a_washer my00a_washer_lbl

label define my00a_refrig_lbl 1 `"No"'
label define my00a_refrig_lbl 2 `"Yes"', add
label define my00a_refrig_lbl 9 `"Unknown"', add
label values my00a_refrig my00a_refrig_lbl

label define my00a_micro_lbl 1 `"No"'
label define my00a_micro_lbl 2 `"Yes"', add
label define my00a_micro_lbl 9 `"Unknown"', add
label values my00a_micro my00a_micro_lbl

label define my00a_radio_lbl 1 `"No"'
label define my00a_radio_lbl 2 `"Yes"', add
label define my00a_radio_lbl 9 `"Unknown"', add
label values my00a_radio my00a_radio_lbl

label define my00a_tv_lbl 1 `"No"'
label define my00a_tv_lbl 2 `"Yes"', add
label define my00a_tv_lbl 9 `"Unknown"', add
label values my00a_tv my00a_tv_lbl

label define my00a_video_lbl 1 `"No"'
label define my00a_video_lbl 2 `"Yes"', add
label define my00a_video_lbl 9 `"Unknown"', add
label values my00a_video my00a_video_lbl

label define my00a_phone_lbl 1 `"No"'
label define my00a_phone_lbl 2 `"Yes"', add
label define my00a_phone_lbl 9 `"Unknown"', add
label values my00a_phone my00a_phone_lbl

label define my00a_phoneh_lbl 1 `"No"'
label define my00a_phoneh_lbl 2 `"Yes"', add
label define my00a_phoneh_lbl 9 `"Unknown"', add
label values my00a_phoneh my00a_phoneh_lbl

label define my00a_computer_lbl 1 `"No"'
label define my00a_computer_lbl 2 `"Yes"', add
label define my00a_computer_lbl 9 `"Unknown"', add
label values my00a_computer my00a_computer_lbl

label define my00a_internet_lbl 1 `"No"'
label define my00a_internet_lbl 2 `"Yes"', add
label define my00a_internet_lbl 9 `"Unknown"', add
label values my00a_internet my00a_internet_lbl

label define my00a_hasnone_lbl 1 `"Yes"'
label define my00a_hasnone_lbl 2 `"No"', add
label define my00a_hasnone_lbl 9 `"Unknown"', add
label values my00a_hasnone my00a_hasnone_lbl

label define my00a_tenure1_lbl 1 `"Yes"'
label define my00a_tenure1_lbl 2 `"No"', add
label define my00a_tenure1_lbl 9 `"Unknown"', add
label values my00a_tenure1 my00a_tenure1_lbl

label define my00a_tenure2_lbl 0 `"NIU (not in universe)"'
label define my00a_tenure2_lbl 1 `"Yes"', add
label define my00a_tenure2_lbl 2 `"No"', add
label define my00a_tenure2_lbl 9 `"Unknown"', add
label values my00a_tenure2 my00a_tenure2_lbl

label define my00a_renter_lbl 0 `"NIU (not in universe)"'
label define my00a_renter_lbl 1 `"Yes, furnished"', add
label define my00a_renter_lbl 2 `"Yes, not furnished"', add
label define my00a_renter_lbl 3 `"No"', add
label define my00a_renter_lbl 9 `"Unknown"', add
label values my00a_renter my00a_renter_lbl

label define my00a_rent_lbl 0 `"NIU (not in universe)"'
label define my00a_rent_lbl 1 `"Less than RM 100"', add
label define my00a_rent_lbl 2 `"RM 100 - 249"', add
label define my00a_rent_lbl 3 `"RM 250 - 499"', add
label define my00a_rent_lbl 4 `"RM 500 - 749"', add
label define my00a_rent_lbl 5 `"RM 750 - 999"', add
label define my00a_rent_lbl 6 `"RM 1000 and more"', add
label define my00a_rent_lbl 9 `"Unknown"', add
label values my00a_rent my00a_rent_lbl

label define my00a_perno_lbl 01 `"1"'
label define my00a_perno_lbl 02 `"2"', add
label define my00a_perno_lbl 03 `"3"', add
label define my00a_perno_lbl 04 `"4"', add
label define my00a_perno_lbl 05 `"5"', add
label define my00a_perno_lbl 06 `"6"', add
label define my00a_perno_lbl 07 `"7"', add
label define my00a_perno_lbl 08 `"8"', add
label define my00a_perno_lbl 09 `"9"', add
label define my00a_perno_lbl 10 `"10"', add
label define my00a_perno_lbl 11 `"11"', add
label define my00a_perno_lbl 12 `"12"', add
label define my00a_perno_lbl 13 `"13"', add
label define my00a_perno_lbl 14 `"14"', add
label define my00a_perno_lbl 15 `"15"', add
label define my00a_perno_lbl 16 `"16"', add
label define my00a_perno_lbl 17 `"17"', add
label define my00a_perno_lbl 18 `"18"', add
label define my00a_perno_lbl 19 `"19"', add
label define my00a_perno_lbl 20 `"20"', add
label define my00a_perno_lbl 21 `"21"', add
label define my00a_perno_lbl 22 `"22"', add
label define my00a_perno_lbl 24 `"24"', add
label define my00a_perno_lbl 25 `"25"', add
label define my00a_perno_lbl 27 `"27"', add
label define my00a_perno_lbl 32 `"32"', add
label define my00a_perno_lbl 35 `"35"', add
label define my00a_perno_lbl 99 `"Unknown"', add
label values my00a_perno my00a_perno_lbl

label define my00a_hhtype_lbl 0 `"Unknown"'
label define my00a_hhtype_lbl 1 `"One person household"', add
label define my00a_hhtype_lbl 2 `"Unrelated persons household"', add
label define my00a_hhtype_lbl 3 `"Married couple only"', add
label define my00a_hhtype_lbl 4 `"Married couple / children"', add
label define my00a_hhtype_lbl 5 `"Single parent with unmarried children"', add
label define my00a_hhtype_lbl 6 `"Married couple and one parent"', add
label define my00a_hhtype_lbl 7 `"Parents and married children"', add
label define my00a_hhtype_lbl 8 `"Other extended families household"', add
label define my00a_hhtype_lbl 9 `"Related members"', add
label values my00a_hhtype my00a_hhtype_lbl

label define my00a_pernum_lbl 00 `"Household record"'
label define my00a_pernum_lbl 01 `"1"', add
label define my00a_pernum_lbl 02 `"2"', add
label define my00a_pernum_lbl 03 `"3"', add
label define my00a_pernum_lbl 04 `"4"', add
label define my00a_pernum_lbl 05 `"5"', add
label define my00a_pernum_lbl 06 `"6"', add
label define my00a_pernum_lbl 07 `"7"', add
label define my00a_pernum_lbl 08 `"8"', add
label define my00a_pernum_lbl 09 `"9"', add
label define my00a_pernum_lbl 10 `"10"', add
label define my00a_pernum_lbl 11 `"11"', add
label define my00a_pernum_lbl 12 `"12"', add
label define my00a_pernum_lbl 13 `"13"', add
label define my00a_pernum_lbl 14 `"14"', add
label define my00a_pernum_lbl 15 `"15"', add
label define my00a_pernum_lbl 16 `"16"', add
label define my00a_pernum_lbl 17 `"17"', add
label define my00a_pernum_lbl 18 `"18"', add
label define my00a_pernum_lbl 19 `"19"', add
label define my00a_pernum_lbl 20 `"20"', add
label define my00a_pernum_lbl 21 `"21"', add
label define my00a_pernum_lbl 22 `"22"', add
label define my00a_pernum_lbl 23 `"23"', add
label define my00a_pernum_lbl 24 `"24"', add
label define my00a_pernum_lbl 25 `"25"', add
label define my00a_pernum_lbl 26 `"26"', add
label define my00a_pernum_lbl 27 `"27"', add
label values my00a_pernum my00a_pernum_lbl

label define my00a_relate_lbl 01 `"Head"'
label define my00a_relate_lbl 02 `"Spouse"', add
label define my00a_relate_lbl 03 `"Unmarried child"', add
label define my00a_relate_lbl 04 `"Married child"', add
label define my00a_relate_lbl 05 `"Daughter-in-law/son-in-law"', add
label define my00a_relate_lbl 06 `"Grandchild"', add
label define my00a_relate_lbl 07 `"Father/mother of head or spouse"', add
label define my00a_relate_lbl 08 `"Brother/sister of head or spouse"', add
label define my00a_relate_lbl 09 `"Other relative of head or spouse"', add
label define my00a_relate_lbl 10 `"Other who are not related to head or spouse"', add
label values my00a_relate my00a_relate_lbl

label define my00a_sex_lbl 1 `"Male"'
label define my00a_sex_lbl 2 `"Female"', add
label values my00a_sex my00a_sex_lbl

label define my00a_age_lbl 00 `"0"'
label define my00a_age_lbl 01 `"1"', add
label define my00a_age_lbl 02 `"2"', add
label define my00a_age_lbl 03 `"3"', add
label define my00a_age_lbl 04 `"4"', add
label define my00a_age_lbl 05 `"5"', add
label define my00a_age_lbl 06 `"6"', add
label define my00a_age_lbl 07 `"7"', add
label define my00a_age_lbl 08 `"8"', add
label define my00a_age_lbl 09 `"9"', add
label define my00a_age_lbl 10 `"10"', add
label define my00a_age_lbl 11 `"11"', add
label define my00a_age_lbl 12 `"12"', add
label define my00a_age_lbl 13 `"13"', add
label define my00a_age_lbl 14 `"14"', add
label define my00a_age_lbl 15 `"15"', add
label define my00a_age_lbl 16 `"16"', add
label define my00a_age_lbl 17 `"17"', add
label define my00a_age_lbl 18 `"18"', add
label define my00a_age_lbl 19 `"19"', add
label define my00a_age_lbl 20 `"20"', add
label define my00a_age_lbl 21 `"21"', add
label define my00a_age_lbl 22 `"22"', add
label define my00a_age_lbl 23 `"23"', add
label define my00a_age_lbl 24 `"24"', add
label define my00a_age_lbl 25 `"25"', add
label define my00a_age_lbl 26 `"26"', add
label define my00a_age_lbl 27 `"27"', add
label define my00a_age_lbl 28 `"28"', add
label define my00a_age_lbl 29 `"29"', add
label define my00a_age_lbl 30 `"30"', add
label define my00a_age_lbl 31 `"31"', add
label define my00a_age_lbl 32 `"32"', add
label define my00a_age_lbl 33 `"33"', add
label define my00a_age_lbl 34 `"34"', add
label define my00a_age_lbl 35 `"35"', add
label define my00a_age_lbl 36 `"36"', add
label define my00a_age_lbl 37 `"37"', add
label define my00a_age_lbl 38 `"38"', add
label define my00a_age_lbl 39 `"39"', add
label define my00a_age_lbl 40 `"40"', add
label define my00a_age_lbl 41 `"41"', add
label define my00a_age_lbl 42 `"42"', add
label define my00a_age_lbl 43 `"43"', add
label define my00a_age_lbl 44 `"44"', add
label define my00a_age_lbl 45 `"45"', add
label define my00a_age_lbl 46 `"46"', add
label define my00a_age_lbl 47 `"47"', add
label define my00a_age_lbl 48 `"48"', add
label define my00a_age_lbl 49 `"49"', add
label define my00a_age_lbl 50 `"50"', add
label define my00a_age_lbl 51 `"51"', add
label define my00a_age_lbl 52 `"52"', add
label define my00a_age_lbl 53 `"53"', add
label define my00a_age_lbl 54 `"54"', add
label define my00a_age_lbl 55 `"55"', add
label define my00a_age_lbl 56 `"56"', add
label define my00a_age_lbl 57 `"57"', add
label define my00a_age_lbl 58 `"58"', add
label define my00a_age_lbl 59 `"59"', add
label define my00a_age_lbl 60 `"60"', add
label define my00a_age_lbl 61 `"61"', add
label define my00a_age_lbl 62 `"62"', add
label define my00a_age_lbl 63 `"63"', add
label define my00a_age_lbl 64 `"64"', add
label define my00a_age_lbl 65 `"65"', add
label define my00a_age_lbl 66 `"66"', add
label define my00a_age_lbl 67 `"67"', add
label define my00a_age_lbl 68 `"68"', add
label define my00a_age_lbl 69 `"69"', add
label define my00a_age_lbl 70 `"70"', add
label define my00a_age_lbl 71 `"71"', add
label define my00a_age_lbl 72 `"72"', add
label define my00a_age_lbl 73 `"73"', add
label define my00a_age_lbl 74 `"74"', add
label define my00a_age_lbl 75 `"75"', add
label define my00a_age_lbl 76 `"76"', add
label define my00a_age_lbl 77 `"77"', add
label define my00a_age_lbl 78 `"78"', add
label define my00a_age_lbl 79 `"79"', add
label define my00a_age_lbl 80 `"80"', add
label define my00a_age_lbl 81 `"81"', add
label define my00a_age_lbl 82 `"82"', add
label define my00a_age_lbl 83 `"83"', add
label define my00a_age_lbl 84 `"84"', add
label define my00a_age_lbl 85 `"85"', add
label define my00a_age_lbl 86 `"86"', add
label define my00a_age_lbl 87 `"87"', add
label define my00a_age_lbl 88 `"88"', add
label define my00a_age_lbl 89 `"89"', add
label define my00a_age_lbl 90 `"90"', add
label define my00a_age_lbl 91 `"91"', add
label define my00a_age_lbl 92 `"92"', add
label define my00a_age_lbl 93 `"93"', add
label define my00a_age_lbl 94 `"94"', add
label define my00a_age_lbl 95 `"95"', add
label define my00a_age_lbl 96 `"96"', add
label define my00a_age_lbl 97 `"97"', add
label define my00a_age_lbl 98 `"98"', add
label define my00a_age_lbl 99 `"99 +"', add
label values my00a_age my00a_age_lbl

label define my00a_marst_lbl 1 `"Never married"'
label define my00a_marst_lbl 2 `"Currently married"', add
label define my00a_marst_lbl 3 `"Widowed"', add
label define my00a_marst_lbl 4 `"Divorced/permanently separated"', add
label values my00a_marst my00a_marst_lbl

label define my00a_bpl_lbl 1 `"Born In Malaysia"'
label define my00a_bpl_lbl 2 `"Born outside Malaysia"', add
label values my00a_bpl my00a_bpl_lbl

label define my00a_bpls_lbl 00 `"NIU (not in universe)"'
label define my00a_bpls_lbl 01 `"Johor"', add
label define my00a_bpls_lbl 02 `"Kedah"', add
label define my00a_bpls_lbl 03 `"Kelantan"', add
label define my00a_bpls_lbl 04 `"Melaka"', add
label define my00a_bpls_lbl 05 `"Negeri Sembilan"', add
label define my00a_bpls_lbl 06 `"Pahang"', add
label define my00a_bpls_lbl 07 `"Pulau Pinang"', add
label define my00a_bpls_lbl 08 `"Perak"', add
label define my00a_bpls_lbl 09 `"Perlis"', add
label define my00a_bpls_lbl 10 `"Selangor"', add
label define my00a_bpls_lbl 11 `"Terengganu"', add
label define my00a_bpls_lbl 12 `"Sabah"', add
label define my00a_bpls_lbl 13 `"Sarawak"', add
label define my00a_bpls_lbl 14 `"Wilayah Persekutuan Kuala Lumpur"', add
label define my00a_bpls_lbl 15 `"Wilayah Persekutuan Labuan"', add
label define my00a_bpls_lbl 99 `"Unknown"', add
label values my00a_bpls my00a_bpls_lbl

label define my00a_bplc_lbl 00 `"NIU (not in universe)"'
label define my00a_bplc_lbl 16 `"Singapore"', add
label define my00a_bplc_lbl 17 `"Indonesia"', add
label define my00a_bplc_lbl 18 `"Philippines"', add
label define my00a_bplc_lbl 19 `"Thailand"', add
label define my00a_bplc_lbl 20 `"Brunei Darussalam"', add
label define my00a_bplc_lbl 21 `"Myanmar"', add
label define my00a_bplc_lbl 22 `"China / Hong Kong"', add
label define my00a_bplc_lbl 23 `"Taiwan"', add
label define my00a_bplc_lbl 24 `"India"', add
label define my00a_bplc_lbl 25 `"Pakistan"', add
label define my00a_bplc_lbl 26 `"Bangladesh"', add
label define my00a_bplc_lbl 27 `"Sri Lanka"', add
label define my00a_bplc_lbl 28 `"Korea"', add
label define my00a_bplc_lbl 29 `"Japan"', add
label define my00a_bplc_lbl 30 `"Other Asian Countries (including - Middle East)"', add
label define my00a_bplc_lbl 31 `"United Kingdom"', add
label define my00a_bplc_lbl 32 `"Other Europe Countries"', add
label define my00a_bplc_lbl 33 `"North America (U.S.A. / Canada)"', add
label define my00a_bplc_lbl 34 `"Central and South America"', add
label define my00a_bplc_lbl 35 `"African Countries"', add
label define my00a_bplc_lbl 36 `"Australia"', add
label define my00a_bplc_lbl 37 `"New Zealand"', add
label define my00a_bplc_lbl 38 `"Others"', add
label define my00a_bplc_lbl 99 `"Unknown"', add
label values my00a_bplc my00a_bplc_lbl

label define my00a_citizen1_lbl 1 `"Malaysian citizen"'
label define my00a_citizen1_lbl 2 `"Permanent resident"', add
label define my00a_citizen1_lbl 3 `"Expatriate"', add
label define my00a_citizen1_lbl 4 `"Foreign visitor"', add
label define my00a_citizen1_lbl 5 `"Foreign student"', add
label define my00a_citizen1_lbl 6 `"Foreign worker"', add
label define my00a_citizen1_lbl 7 `"Others"', add
label values my00a_citizen1 my00a_citizen1_lbl

label define my00a_citizen2_lbl 00 `"NIU (not in universe)"'
label define my00a_citizen2_lbl 16 `"Singapore"', add
label define my00a_citizen2_lbl 17 `"Indonesia"', add
label define my00a_citizen2_lbl 18 `"Philippines"', add
label define my00a_citizen2_lbl 19 `"Thailand"', add
label define my00a_citizen2_lbl 20 `"Brunei Darussalam"', add
label define my00a_citizen2_lbl 21 `"Myanmar"', add
label define my00a_citizen2_lbl 22 `"China / Hong Kong"', add
label define my00a_citizen2_lbl 23 `"Taiwan"', add
label define my00a_citizen2_lbl 24 `"India"', add
label define my00a_citizen2_lbl 25 `"Pakistan"', add
label define my00a_citizen2_lbl 26 `"Bangladesh"', add
label define my00a_citizen2_lbl 27 `"Sri Lanka"', add
label define my00a_citizen2_lbl 28 `"Korea"', add
label define my00a_citizen2_lbl 29 `"Japan"', add
label define my00a_citizen2_lbl 30 `"Other Asia countries (including Middle East)"', add
label define my00a_citizen2_lbl 31 `"United Kingdom"', add
label define my00a_citizen2_lbl 32 `"Other Europe countries"', add
label define my00a_citizen2_lbl 33 `"North America (U.S.A. / Canada)"', add
label define my00a_citizen2_lbl 34 `"Central and South America"', add
label define my00a_citizen2_lbl 35 `"African countries"', add
label define my00a_citizen2_lbl 36 `"Australia"', add
label define my00a_citizen2_lbl 37 `"New Zealand"', add
label define my00a_citizen2_lbl 38 `"Others"', add
label define my00a_citizen2_lbl 99 `"Unknown"', add
label values my00a_citizen2 my00a_citizen2_lbl

label define my00a_resp_lbl 1 `"This house"'
label define my00a_resp_lbl 2 `"Different house"', add
label define my00a_resp_lbl 9 `"Unknown"', add
label values my00a_resp my00a_resp_lbl

label define my00a_respst_lbl 01 `"Johor"'
label define my00a_respst_lbl 02 `"Kedah"', add
label define my00a_respst_lbl 03 `"Kelantan"', add
label define my00a_respst_lbl 04 `"Melaka"', add
label define my00a_respst_lbl 05 `"Negeri Sembilan"', add
label define my00a_respst_lbl 06 `"Pahang"', add
label define my00a_respst_lbl 07 `"Pulau Pinang"', add
label define my00a_respst_lbl 08 `"Perak"', add
label define my00a_respst_lbl 09 `"Perlis"', add
label define my00a_respst_lbl 10 `"Selangor"', add
label define my00a_respst_lbl 11 `"Terengganu"', add
label define my00a_respst_lbl 12 `"Sabah"', add
label define my00a_respst_lbl 13 `"Sarawak"', add
label define my00a_respst_lbl 14 `"Wilayah Persekutuan Kuala Lumpur"', add
label define my00a_respst_lbl 15 `"Wilayah Persekutuan Labuan"', add
label define my00a_respst_lbl 16 `"Singapore"', add
label define my00a_respst_lbl 17 `"Indonesia"', add
label define my00a_respst_lbl 18 `"Philippines"', add
label define my00a_respst_lbl 19 `"Thailand"', add
label define my00a_respst_lbl 20 `"Brunei Darussalam"', add
label define my00a_respst_lbl 21 `"Myanmar"', add
label define my00a_respst_lbl 22 `"China / Hong Kong"', add
label define my00a_respst_lbl 23 `"Taiwan"', add
label define my00a_respst_lbl 24 `"India"', add
label define my00a_respst_lbl 25 `"Pakistan"', add
label define my00a_respst_lbl 26 `"Bangladesh"', add
label define my00a_respst_lbl 27 `"Sri Lanka"', add
label define my00a_respst_lbl 28 `"Korea"', add
label define my00a_respst_lbl 29 `"Japan"', add
label define my00a_respst_lbl 30 `"Other Asia countries (including Middle East)"', add
label define my00a_respst_lbl 31 `"United Kingdom"', add
label define my00a_respst_lbl 32 `"Other Europe Countries"', add
label define my00a_respst_lbl 33 `"North America (U.S.A. / Canada)"', add
label define my00a_respst_lbl 35 `"African Countries"', add
label define my00a_respst_lbl 36 `"Australia"', add
label define my00a_respst_lbl 37 `"New Zealand"', add
label define my00a_respst_lbl 38 `"Others"', add
label define my00a_respst_lbl 99 `"Unknown"', add
label values my00a_respst my00a_respst_lbl

label define my00a_respad_lbl 0101 `"Batu Pahat"'
label define my00a_respad_lbl 0102 `"Johor Bahru"', add
label define my00a_respad_lbl 0103 `"Kluang"', add
label define my00a_respad_lbl 0104 `"Kota Tinggi"', add
label define my00a_respad_lbl 0105 `"Mersing"', add
label define my00a_respad_lbl 0106 `"Muar"', add
label define my00a_respad_lbl 0107 `"Pontian"', add
label define my00a_respad_lbl 0108 `"Segamat"', add
label define my00a_respad_lbl 0199 `"Johore- unknown"', add
label define my00a_respad_lbl 0201 `"Baling"', add
label define my00a_respad_lbl 0202 `"Bandar Baharu"', add
label define my00a_respad_lbl 0203 `"Kota Setar"', add
label define my00a_respad_lbl 0204 `"Kuala Muda"', add
label define my00a_respad_lbl 0205 `"Kubang Pasu"', add
label define my00a_respad_lbl 0206 `"Kulim"', add
label define my00a_respad_lbl 0207 `"Langkawi"', add
label define my00a_respad_lbl 0208 `"Padang Terap"', add
label define my00a_respad_lbl 0209 `"Sik"', add
label define my00a_respad_lbl 0210 `"Yan"', add
label define my00a_respad_lbl 0211 `"Pendang"', add
label define my00a_respad_lbl 0299 `"Kedah-unknown"', add
label define my00a_respad_lbl 0301 `"Bachok"', add
label define my00a_respad_lbl 0302 `"Kota Bharu"', add
label define my00a_respad_lbl 0303 `"Machang"', add
label define my00a_respad_lbl 0304 `"Pasir Mas"', add
label define my00a_respad_lbl 0305 `"Pasir Puteh"', add
label define my00a_respad_lbl 0306 `"Tanah Merah"', add
label define my00a_respad_lbl 0307 `"Tumpat"', add
label define my00a_respad_lbl 0308 `"Gua Musang"', add
label define my00a_respad_lbl 0309 `"Kuala Krai"', add
label define my00a_respad_lbl 0310 `"Jeli"', add
label define my00a_respad_lbl 0399 `"Kelantan-unknown"', add
label define my00a_respad_lbl 0401 `"Alor Gajah"', add
label define my00a_respad_lbl 0402 `"Jasin"', add
label define my00a_respad_lbl 0403 `"Melaka Tengah"', add
label define my00a_respad_lbl 0499 `"Melaka-unknown"', add
label define my00a_respad_lbl 0501 `"Jelebu"', add
label define my00a_respad_lbl 0502 `"Kuala Pilah"', add
label define my00a_respad_lbl 0503 `"Port Dickson"', add
label define my00a_respad_lbl 0504 `"Rembau"', add
label define my00a_respad_lbl 0505 `"Seremban"', add
label define my00a_respad_lbl 0506 `"Tampin"', add
label define my00a_respad_lbl 0507 `"Jempol"', add
label define my00a_respad_lbl 0599 `"Negeri Sembilan-unknown"', add
label define my00a_respad_lbl 0601 `"Bentong"', add
label define my00a_respad_lbl 0602 `"Cameron Highlands"', add
label define my00a_respad_lbl 0603 `"Jerantut"', add
label define my00a_respad_lbl 0604 `"Kuantan"', add
label define my00a_respad_lbl 0605 `"Lipis"', add
label define my00a_respad_lbl 0606 `"Pekan"', add
label define my00a_respad_lbl 0607 `"Raub"', add
label define my00a_respad_lbl 0608 `"Temerloh"', add
label define my00a_respad_lbl 0609 `"Rompin"', add
label define my00a_respad_lbl 0610 `"Maran"', add
label define my00a_respad_lbl 0611 `"Bera"', add
label define my00a_respad_lbl 0699 `"Pahang-unknown"', add
label define my00a_respad_lbl 0701 `"S.P. Tengah"', add
label define my00a_respad_lbl 0702 `"S.P. Utara"', add
label define my00a_respad_lbl 0703 `"S.P.Selatan"', add
label define my00a_respad_lbl 0704 `"Timur Laut"', add
label define my00a_respad_lbl 0705 `"Barat Daya"', add
label define my00a_respad_lbl 0799 `"Penang-unknown"', add
label define my00a_respad_lbl 0801 `"Batang Padang"', add
label define my00a_respad_lbl 0802 `"Manjung (Dinding)"', add
label define my00a_respad_lbl 0803 `"Kinta"', add
label define my00a_respad_lbl 0804 `"Kerian"', add
label define my00a_respad_lbl 0805 `"Kuala Kangsar"', add
label define my00a_respad_lbl 0806 `"Larut Dan Matang"', add
label define my00a_respad_lbl 0807 `"Hilir Perak"', add
label define my00a_respad_lbl 0808 `"Ulu Perak"', add
label define my00a_respad_lbl 0809 `"Perak Tengah"', add
label define my00a_respad_lbl 0899 `"Perak-unknown"', add
label define my00a_respad_lbl 0901 `"Perlis"', add
label define my00a_respad_lbl 0999 `"Perlis-unknown"', add
label define my00a_respad_lbl 1001 `"Gombak"', add
label define my00a_respad_lbl 1002 `"Klang"', add
label define my00a_respad_lbl 1003 `"Kuala Langat"', add
label define my00a_respad_lbl 1004 `"Kuala Selangor"', add
label define my00a_respad_lbl 1005 `"Petaling"', add
label define my00a_respad_lbl 1006 `"Sabak Bernam"', add
label define my00a_respad_lbl 1007 `"Sepang"', add
label define my00a_respad_lbl 1008 `"Ulu Langat"', add
label define my00a_respad_lbl 1009 `"Ulu Selangor"', add
label define my00a_respad_lbl 1099 `"Selangor-unknown"', add
label define my00a_respad_lbl 1101 `"Besut"', add
label define my00a_respad_lbl 1102 `"Dungun"', add
label define my00a_respad_lbl 1103 `"Kemaman"', add
label define my00a_respad_lbl 1104 `"Kuala Terengganu"', add
label define my00a_respad_lbl 1105 `"Marang"', add
label define my00a_respad_lbl 1106 `"Hulu Terengganu"', add
label define my00a_respad_lbl 1107 `"Setiu"', add
label define my00a_respad_lbl 1199 `"Terengganu-unknown"', add
label define my00a_respad_lbl 1201 `"Tawau"', add
label define my00a_respad_lbl 1202 `"Lahad Datu"', add
label define my00a_respad_lbl 1203 `"Semporna"', add
label define my00a_respad_lbl 1204 `"Sandakan"', add
label define my00a_respad_lbl 1205 `"Kinabatangan"', add
label define my00a_respad_lbl 1206 `"Beluran"', add
label define my00a_respad_lbl 1207 `"Kota Kinabalu"', add
label define my00a_respad_lbl 1208 `"Ranau"', add
label define my00a_respad_lbl 1209 `"Kota Belud"', add
label define my00a_respad_lbl 1210 `"Tuaran"', add
label define my00a_respad_lbl 1211 `"Penampang"', add
label define my00a_respad_lbl 1212 `"Papar"', add
label define my00a_respad_lbl 1213 `"Kudat"', add
label define my00a_respad_lbl 1214 `"Kota Marudu"', add
label define my00a_respad_lbl 1215 `"Pitas"', add
label define my00a_respad_lbl 1216 `"Beaufort"', add
label define my00a_respad_lbl 1217 `"Kuala Penyu"', add
label define my00a_respad_lbl 1218 `"Sipitang"', add
label define my00a_respad_lbl 1219 `"Tenom"', add
label define my00a_respad_lbl 1220 `"Nabawan"', add
label define my00a_respad_lbl 1221 `"Keningau"', add
label define my00a_respad_lbl 1222 `"Tambunan"', add
label define my00a_respad_lbl 1223 `"Kunak"', add
label define my00a_respad_lbl 1224 `"Tongod"', add
label define my00a_respad_lbl 1299 `"Sabah-unknown"', add
label define my00a_respad_lbl 1301 `"Kuching"', add
label define my00a_respad_lbl 1302 `"Bau"', add
label define my00a_respad_lbl 1303 `"Lundu"', add
label define my00a_respad_lbl 1304 `"Samarahan"', add
label define my00a_respad_lbl 1305 `"Serian"', add
label define my00a_respad_lbl 1306 `"Simunjan"', add
label define my00a_respad_lbl 1307 `"Sri Aman"', add
label define my00a_respad_lbl 1308 `"Lubok Antu"', add
label define my00a_respad_lbl 1309 `"Betong"', add
label define my00a_respad_lbl 1310 `"Saratok"', add
label define my00a_respad_lbl 1311 `"Sarikei"', add
label define my00a_respad_lbl 1312 `"Meradong"', add
label define my00a_respad_lbl 1313 `"Daro"', add
label define my00a_respad_lbl 1314 `"Julau"', add
label define my00a_respad_lbl 1315 `"Sibu"', add
label define my00a_respad_lbl 1316 `"Dalat"', add
label define my00a_respad_lbl 1317 `"Mukah"', add
label define my00a_respad_lbl 1318 `"Kanowit"', add
label define my00a_respad_lbl 1319 `"Bintulu"', add
label define my00a_respad_lbl 1320 `"Tatau"', add
label define my00a_respad_lbl 1321 `"Kapit"', add
label define my00a_respad_lbl 1322 `"Song"', add
label define my00a_respad_lbl 1323 `"Belaga"', add
label define my00a_respad_lbl 1324 `"Miri"', add
label define my00a_respad_lbl 1325 `"Marudi"', add
label define my00a_respad_lbl 1326 `"Limbang"', add
label define my00a_respad_lbl 1327 `"Lawas"', add
label define my00a_respad_lbl 1328 `"Matu"', add
label define my00a_respad_lbl 1329 `"Asajaya"', add
label define my00a_respad_lbl 1399 `"Sarawak-unknown"', add
label define my00a_respad_lbl 1401 `"WP. Kuala Lumpur"', add
label define my00a_respad_lbl 1499 `"Wilayah Persekutuan Kuala Lumpur-unknown"', add
label define my00a_respad_lbl 1501 `"W.P. Labuan"', add
label define my00a_respad_lbl 1599 `"Wilayah Persekututan Labuan-unknown"', add
label define my00a_respad_lbl 1600 `"Singapore"', add
label define my00a_respad_lbl 1700 `"Indonesia"', add
label define my00a_respad_lbl 1800 `"Philippines"', add
label define my00a_respad_lbl 1900 `"Thailand"', add
label define my00a_respad_lbl 2000 `"Brunei Darussalam"', add
label define my00a_respad_lbl 2100 `"Myanmar"', add
label define my00a_respad_lbl 2200 `"China / Hong Kong"', add
label define my00a_respad_lbl 2300 `"Taiwan"', add
label define my00a_respad_lbl 2400 `"India"', add
label define my00a_respad_lbl 2500 `"Pakistan"', add
label define my00a_respad_lbl 2600 `"Bangladesh"', add
label define my00a_respad_lbl 2700 `"Sri Lanka"', add
label define my00a_respad_lbl 2800 `"Korea"', add
label define my00a_respad_lbl 2900 `"Japan"', add
label define my00a_respad_lbl 3000 `"Other Asia countries (including Middle East)"', add
label define my00a_respad_lbl 3100 `"United Kingdom"', add
label define my00a_respad_lbl 3200 `"Other Europe Countries"', add
label define my00a_respad_lbl 3300 `"North America (U.S.A. / Canada)"', add
label define my00a_respad_lbl 3500 `"African Countries"', add
label define my00a_respad_lbl 3600 `"Australia"', add
label define my00a_respad_lbl 3700 `"New Zealand"', add
label define my00a_respad_lbl 3800 `"Others"', add
label define my00a_respad_lbl 9999 `"Unknown"', add
label values my00a_respad my00a_respad_lbl

label define my00a_school_lbl 1 `"Currently in school (full time)"'
label define my00a_school_lbl 2 `"Currently in school (part time)"', add
label define my00a_school_lbl 3 `"Completed schooling"', add
label define my00a_school_lbl 4 `"Not yet schooling (too young)"', add
label define my00a_school_lbl 5 `"Never attended school"', add
label values my00a_school my00a_school_lbl

label define my00a_edlev_lbl 0 `"No schooling"'
label define my00a_edlev_lbl 1 `"Pre-school"', add
label define my00a_edlev_lbl 2 `"Primary school (Standard / Year 1 till 6)"', add
label define my00a_edlev_lbl 3 `"Lower secondary (Remove / Form 1 till 3)"', add
label define my00a_edlev_lbl 4 `"Upper secondary (Form 4 till 5, GCE O Level)"', add
label define my00a_edlev_lbl 5 `"Vocational /technical (Form 4 till 5)"', add
label define my00a_edlev_lbl 6 `"Trade and technical skills institution"', add
label define my00a_edlev_lbl 7 `"Post secondary (Form 6, GCE A Level, Matriculation)"', add
label define my00a_edlev_lbl 8 `"Tertiary (Polytechnic / College / University)"', add
label define my00a_edlev_lbl 9 `"Unknown"', add
label values my00a_edlev my00a_edlev_lbl

label define my00a_degree_lbl 00 `"NIU (not in universe)"'
label define my00a_degree_lbl 01 `"None"', add
label define my00a_degree_lbl 02 `"PMR / SRP / LCE"', add
label define my00a_degree_lbl 03 `"SPM / MCE / SC / GCE O Level"', add
label define my00a_degree_lbl 04 `"STPM / HSC / STA / 4 Thanawi / GCE A level"', add
label define my00a_degree_lbl 05 `"SPVM / SPM (V) / MCVE"', add
label define my00a_degree_lbl 06 `"Certificate / Diploma in trade or technical skills"', add
label define my00a_degree_lbl 07 `"Certificate (Polytechnic / College)"', add
label define my00a_degree_lbl 08 `"Diploma (Polytechnic / College)"', add
label define my00a_degree_lbl 09 `"Degree / Advanced diploma"', add
label define my00a_degree_lbl 10 `"Post-graduate certificate / Diploma"', add
label define my00a_degree_lbl 11 `"Post-graduate degree"', add
label define my00a_degree_lbl 99 `"Unknown"', add
label values my00a_degree my00a_degree_lbl

label define my00a_edinst_lbl 0 `"NIU (not in universe)"'
label define my00a_edinst_lbl 1 `"Public institution"', add
label define my00a_edinst_lbl 2 `"Private institution"', add
label define my00a_edinst_lbl 3 `"Overseas institution"', add
label define my00a_edinst_lbl 9 `"Unknown"', add
label values my00a_edinst my00a_edinst_lbl

label define my00a_field_lbl 0 `"NIU (not in universe)"'
label define my00a_field_lbl 1 `"Education"', add
label define my00a_field_lbl 2 `"Arts and humanities"', add
label define my00a_field_lbl 3 `"Social sciences, business and law"', add
label define my00a_field_lbl 4 `"Science"', add
label define my00a_field_lbl 5 `"Engineering, construction and skill training"', add
label define my00a_field_lbl 6 `"Agriculture, forestry and fishery"', add
label define my00a_field_lbl 7 `"Health and welfare"', add
label define my00a_field_lbl 8 `"Services"', add
label define my00a_field_lbl 9 `"Unknown"', add
label values my00a_field my00a_field_lbl

label define my00a_lit_lbl 0 `"NIU (not in universe)"'
label define my00a_lit_lbl 1 `"Yes"', add
label define my00a_lit_lbl 2 `"No"', add
label values my00a_lit my00a_lit_lbl

label define my00a_working_lbl 0 `"NIU (not in universe)"'
label define my00a_working_lbl 1 `"Yes"', add
label define my00a_working_lbl 2 `"No"', add
label define my00a_working_lbl 9 `"Unknown"', add
label values my00a_working my00a_working_lbl

label define my00a_jobreturn_lbl 0 `"NIU (not in universe)"'
label define my00a_jobreturn_lbl 1 `"Yes"', add
label define my00a_jobreturn_lbl 2 `"No"', add
label define my00a_jobreturn_lbl 9 `"Unknown"', add
label values my00a_jobreturn my00a_jobreturn_lbl

label define my00a_seekwrk_lbl 0 `"NIU (not in universe)"'
label define my00a_seekwrk_lbl 1 `"Yes"', add
label define my00a_seekwrk_lbl 2 `"No"', add
label define my00a_seekwrk_lbl 9 `"Unknown"', add
label values my00a_seekwrk my00a_seekwrk_lbl

label define my00a_whynot_lbl 00 `"NIU (not in universe)"'
label define my00a_whynot_lbl 01 `"Believe no suitable job available/ bad weather /sick / confinement / will start new job / waiting for answers to job application / no qualification"', add
label define my00a_whynot_lbl 02 `"Housewife"', add
label define my00a_whynot_lbl 03 `"Still schooling"', add
label define my00a_whynot_lbl 04 `"Going for further studies"', add
label define my00a_whynot_lbl 05 `"Handicapped / disabled"', add
label define my00a_whynot_lbl 06 `"Not interested"', add
label define my00a_whynot_lbl 07 `"Retired / too old"', add
label define my00a_whynot_lbl 08 `"Too young"', add
label define my00a_whynot_lbl 09 `"Others"', add
label define my00a_whynot_lbl 99 `"Unknown"', add
label values my00a_whynot my00a_whynot_lbl

label define my00a_occsect_lbl 0 `"NIU (not in universe)"'
label define my00a_occsect_lbl 1 `"Government"', add
label define my00a_occsect_lbl 2 `"Private"', add
label define my00a_occsect_lbl 3 `"Own business"', add
label define my00a_occsect_lbl 9 `"Unknown"', add
label values my00a_occsect my00a_occsect_lbl

label define my00a_occ1_lbl 00 `"NIU (not in universe)"'
label define my00a_occ1_lbl 01 `"Legislators, senior officials and managers"', add
label define my00a_occ1_lbl 02 `"Professionals"', add
label define my00a_occ1_lbl 03 `"Technicians and associate professionals"', add
label define my00a_occ1_lbl 04 `"Clerical workers"', add
label define my00a_occ1_lbl 05 `"Service workers and shop and market sales workers"', add
label define my00a_occ1_lbl 06 `"Skilled agricultural and fishery workers"', add
label define my00a_occ1_lbl 07 `"Craft and related trades workers"', add
label define my00a_occ1_lbl 08 `"Plant and machine-operators and assemblers"', add
label define my00a_occ1_lbl 09 `"Elementary occupations"', add
label define my00a_occ1_lbl 99 `"Unknown"', add
label values my00a_occ1 my00a_occ1_lbl

label define my00a_occ2_lbl 00 `"NIU (not in universe)"'
label define my00a_occ2_lbl 11 `"Legislators and senior officials"', add
label define my00a_occ2_lbl 12 `"Directors and specialised managers"', add
label define my00a_occ2_lbl 13 `"General managers (medium/small enterprises)"', add
label define my00a_occ2_lbl 21 `"Physical, mathematical and engineering science"', add
label define my00a_occ2_lbl 22 `"Life science and health professionals"', add
label define my00a_occ2_lbl 23 `"Teaching professionals"', add
label define my00a_occ2_lbl 24 `"Business professionals"', add
label define my00a_occ2_lbl 25 `"Legal professionals"', add
label define my00a_occ2_lbl 29 `"Professionals not elsewhere classified"', add
label define my00a_occ2_lbl 31 `"Physical and engineering science associate"', add
label define my00a_occ2_lbl 32 `"Life science and health associate professionals"', add
label define my00a_occ2_lbl 33 `"Teaching associate professionals"', add
label define my00a_occ2_lbl 34 `"Finance, sales and related business associate"', add
label define my00a_occ2_lbl 35 `"Supervisors"', add
label define my00a_occ2_lbl 39 `"Associate professionals not elsewhere classified"', add
label define my00a_occ2_lbl 41 `"Office clerks"', add
label define my00a_occ2_lbl 42 `"Customer services clerks"', add
label define my00a_occ2_lbl 43 `"Mail distribution clerks"', add
label define my00a_occ2_lbl 44 `"Transport clerks"', add
label define my00a_occ2_lbl 49 `"Clerical workers not elsewhere classified"', add
label define my00a_occ2_lbl 51 `"Personal and protective services workers"', add
label define my00a_occ2_lbl 52 `"Sales workers, demonstrators and models"', add
label define my00a_occ2_lbl 61 `"Agricultural and related workers"', add
label define my00a_occ2_lbl 62 `"Fishery workers, hunters and trappers and gatherers"', add
label define my00a_occ2_lbl 71 `"Extraction and construction trades workers"', add
label define my00a_occ2_lbl 72 `"Metal, machinery and related trades workers"', add
label define my00a_occ2_lbl 73 `"Precision, printing and related trades workers"', add
label define my00a_occ2_lbl 74 `"Food processing, woodworking, textile, leather and related trades workers"', add
label define my00a_occ2_lbl 81 `"Stationary plant and related operators"', add
label define my00a_occ2_lbl 82 `"Machine-operators and assemblers"', add
label define my00a_occ2_lbl 83 `"Drivers and mobile plant operators"', add
label define my00a_occ2_lbl 91 `"Sales and services elementary occupations"', add
label define my00a_occ2_lbl 92 `"Messengers, porters, attendants and related workers"', add
label define my00a_occ2_lbl 93 `"Labourers and related workers"', add
label define my00a_occ2_lbl 99 `"Unknown"', add
label values my00a_occ2 my00a_occ2_lbl

label define my00a_occ3_lbl 111 `"Legislators"'
label define my00a_occ3_lbl 112 `"Senior government and statutory board officials"', add
label define my00a_occ3_lbl 113 `"Traditional chiefs and heads of villages"', add
label define my00a_occ3_lbl 114 `"Senior officials of special-interest organizations"', add
label define my00a_occ3_lbl 121 `"Company directors"', add
label define my00a_occ3_lbl 122 `"Production and operation department managers"', add
label define my00a_occ3_lbl 123 `"Specialized department managers"', add
label define my00a_occ3_lbl 130 `"General managers"', add
label define my00a_occ3_lbl 211 `"Physical science professionals"', add
label define my00a_occ3_lbl 212 `"Mathematicians, statisticians and related professionals"', add
label define my00a_occ3_lbl 213 `"Computing professionals"', add
label define my00a_occ3_lbl 214 `"Architects, engineers and related professionals"', add
label define my00a_occ3_lbl 221 `"Life science professionals"', add
label define my00a_occ3_lbl 222 `"Health professionals (except nursing)"', add
label define my00a_occ3_lbl 231 `"University, polytechnic and higher education teaching professionals"', add
label define my00a_occ3_lbl 232 `"Pre-university and secondary education teaching professionals"', add
label define my00a_occ3_lbl 233 `"Special education teaching professionals"', add
label define my00a_occ3_lbl 239 `"Teaching professionals not elsewhere classified"', add
label define my00a_occ3_lbl 241 `"Accountants and auditors"', add
label define my00a_occ3_lbl 242 `"Financial analysts and related professionals"', add
label define my00a_occ3_lbl 243 `"Personnel and careers professionals"', add
label define my00a_occ3_lbl 249 `"Business professionals not elsewhere classified"', add
label define my00a_occ3_lbl 250 `"Legal professionals"', add
label define my00a_occ3_lbl 291 `"Archivists, curators and librarians"', add
label define my00a_occ3_lbl 292 `"Social science and related professionals"', add
label define my00a_occ3_lbl 293 `"Writers and creative or performing artists"', add
label define my00a_occ3_lbl 294 `"Religious professionals"', add
label define my00a_occ3_lbl 311 `"Physical science and engineering technicians"', add
label define my00a_occ3_lbl 312 `"Computer support technicians"', add
label define my00a_occ3_lbl 313 `"Optical and electronic equipment operators"', add
label define my00a_occ3_lbl 314 `"Transport controllers and technicians"', add
label define my00a_occ3_lbl 315 `"Building, public health and safety and quality inspectors"', add
label define my00a_occ3_lbl 321 `"Life science technicians and related associate professionals"', add
label define my00a_occ3_lbl 322 `"Modern health associate professionals (except nursing)"', add
label define my00a_occ3_lbl 323 `"Nursing and midwifery associate professionals"', add
label define my00a_occ3_lbl 324 `"Traditional medicine practitioners and faith healers"', add
label define my00a_occ3_lbl 331 `"Primary education teachers"', add
label define my00a_occ3_lbl 332 `"Pre-primary education teachers"', add
label define my00a_occ3_lbl 339 `"Teaching associate professionals not elsewhere classified"', add
label define my00a_occ3_lbl 341 `"Finance and sales associate professionals"', add
label define my00a_occ3_lbl 342 `"Business services agents and trade brokers"', add
label define my00a_occ3_lbl 350 `"Supervisors"', add
label define my00a_occ3_lbl 391 `"Government associate professionals"', add
label define my00a_occ3_lbl 392 `"Statistical, administrative and related associate professionals"', add
label define my00a_occ3_lbl 393 `"Social work associate professionals"', add
label define my00a_occ3_lbl 394 `"Philologists, translators and interpreters"', add
label define my00a_occ3_lbl 395 `"Artistic, entertainment and sports associate professionals"', add
label define my00a_occ3_lbl 396 `"Religious associate professionals"', add
label define my00a_occ3_lbl 411 `"Secretaries and keyboard operating clerks"', add
label define my00a_occ3_lbl 412 `"Administrative clerks"', add
label define my00a_occ3_lbl 413 `"Accounting and finance clerks"', add
label define my00a_occ3_lbl 414 `"Statistical clerks and computer operators"', add
label define my00a_occ3_lbl 415 `"Material recording clerks"', add
label define my00a_occ3_lbl 421 `"Cashiers, tellers and related clerks"', add
label define my00a_occ3_lbl 422 `"Client information clerks"', add
label define my00a_occ3_lbl 430 `"Mail distribution clerks"', add
label define my00a_occ3_lbl 440 `"Transport clerks"', add
label define my00a_occ3_lbl 490 `"Clerical workers not elsewhere classified"', add
label define my00a_occ3_lbl 511 `"Travel attendants and related workers"', add
label define my00a_occ3_lbl 512 `"Housekeeping and catering services workers"', add
label define my00a_occ3_lbl 513 `"Personal care and related workers"', add
label define my00a_occ3_lbl 514 `"Protective service and related workers"', add
label define my00a_occ3_lbl 521 `"Shop sales workers and demonstrators"', add
label define my00a_occ3_lbl 522 `"Stall and market sales workers"', add
label define my00a_occ3_lbl 523 `"Fashion and other models"', add
label define my00a_occ3_lbl 611 `"Mixed farming workers"', add
label define my00a_occ3_lbl 612 `"Plantation workers"', add
label define my00a_occ3_lbl 613 `"Specialized farming workers"', add
label define my00a_occ3_lbl 614 `"Forestry workers and loggers"', add
label define my00a_occ3_lbl 621 `"Fishery workers"', add
label define my00a_occ3_lbl 622 `"Hunters and trappers and gatherers"', add
label define my00a_occ3_lbl 711 `"Miners, shotfirers, stone cutters and carvers"', add
label define my00a_occ3_lbl 712 `"Building frame and related trades workers"', add
label define my00a_occ3_lbl 713 `"Building finishers and related trades workers"', add
label define my00a_occ3_lbl 714 `"Painters, building structure cleaners and related trades workers"', add
label define my00a_occ3_lbl 721 `"Metal molders, welders, sheet metal workers, structural metal preparers and related trades workers"', add
label define my00a_occ3_lbl 722 `"Blacksmiths, toolmakers and related trades workers"', add
label define my00a_occ3_lbl 723 `"Machinery mechanics and fitters"', add
label define my00a_occ3_lbl 724 `"Electrical and electronic equipment mechanics and fitters"', add
label define my00a_occ3_lbl 731 `"Precision workers in metal and related materials"', add
label define my00a_occ3_lbl 732 `"Potters, glass makers and related trades workers"', add
label define my00a_occ3_lbl 733 `"Printing and related trades workers"', add
label define my00a_occ3_lbl 741 `"Food processing and related trades workers"', add
label define my00a_occ3_lbl 742 `"Wood treaters, cabinet makers and related trades workers"', add
label define my00a_occ3_lbl 743 `"Textile, garment and related trades workers"', add
label define my00a_occ3_lbl 744 `"Pelt, leather and shoemaking trades workers"', add
label define my00a_occ3_lbl 811 `"Mining and mineral processing plant operators"', add
label define my00a_occ3_lbl 812 `"Metal processing plant operators"', add
label define my00a_occ3_lbl 813 `"Glass, ceramics and related plant operators"', add
label define my00a_occ3_lbl 814 `"Wood processing and papermaking plant operators"', add
label define my00a_occ3_lbl 815 `"Chemical processing plant operators"', add
label define my00a_occ3_lbl 816 `"Power generating and related plant operators"', add
label define my00a_occ3_lbl 817 `"Automated assembly line and industrial robot operators"', add
label define my00a_occ3_lbl 821 `"Metal and mineral products machine operators"', add
label define my00a_occ3_lbl 822 `"Chemical products machine operators"', add
label define my00a_occ3_lbl 823 `"Rubber and plastic products machine operators"', add
label define my00a_occ3_lbl 824 `"Wood products machine operators"', add
label define my00a_occ3_lbl 825 `"Printing, binding and paper products machine operators"', add
label define my00a_occ3_lbl 826 `"Textile products machine operators"', add
label define my00a_occ3_lbl 827 `"Food and related products machine operators"', add
label define my00a_occ3_lbl 828 `"Assemblers"', add
label define my00a_occ3_lbl 829 `"Machine operators not elsewhere classified"', add
label define my00a_occ3_lbl 831 `"Railway engine drivers and related workers"', add
label define my00a_occ3_lbl 832 `"Motor vehicle drivers"', add
label define my00a_occ3_lbl 833 `"Agricultural and other mobile plant operators"', add
label define my00a_occ3_lbl 834 `"Ship's deck crews and related workers"', add
label define my00a_occ3_lbl 911 `"Street vendors and related workers"', add
label define my00a_occ3_lbl 912 `"Domestic and related helpers, cleaners and launderers"', add
label define my00a_occ3_lbl 913 `"Building caretakers, window and related cleaners"', add
label define my00a_occ3_lbl 914 `"Garbage collectors and related workers"', add
label define my00a_occ3_lbl 920 `"Messengers, porters, attendants and related workers"', add
label define my00a_occ3_lbl 931 `"Agricultural and fishery laborers and related workers"', add
label define my00a_occ3_lbl 932 `"Manufacturing laborers and related workers"', add
label define my00a_occ3_lbl 933 `"Mining and construction laborers and related workers"', add
label define my00a_occ3_lbl 934 `"Transport laborers and related workers"', add
label define my00a_occ3_lbl 995 `"Activities inadequately described or response suppressed"', add
label define my00a_occ3_lbl 998 `"Unknown"', add
label define my00a_occ3_lbl 999 `"NIU (not in universe)"', add
label values my00a_occ3 my00a_occ3_lbl

label define my00a_ind2_lbl 01 `"Agriculture, hunting and related service activities"'
label define my00a_ind2_lbl 02 `"Forestry, logging and related service activities"', add
label define my00a_ind2_lbl 05 `"Fishing, operation of fish  hatcheries and fish farms; service activities incidental to fishing"', add
label define my00a_ind2_lbl 10 `"Mining of coal and lignite; extraction of peat"', add
label define my00a_ind2_lbl 11 `"Extraction of crude oil and natural gas; natural gas extraction excluding surveying service activities incidental to crude oil and natural gas extraction excluding surveying"', add
label define my00a_ind2_lbl 12 `"Mining of uranium and thorium ores"', add
label define my00a_ind2_lbl 13 `"Mining of metal ores"', add
label define my00a_ind2_lbl 14 `"Other mining and quarrying"', add
label define my00a_ind2_lbl 15 `"Manufacture of food products and beverages"', add
label define my00a_ind2_lbl 16 `"Manufacture of tobacco products"', add
label define my00a_ind2_lbl 17 `"Manufacture of textiles"', add
label define my00a_ind2_lbl 18 `"Manufacture of wearing apparel; dressing and dyeing of fur"', add
label define my00a_ind2_lbl 19 `"Tanning and dressing of leather; manufacture of luggage, handbags, saddlery, harness and footwear"', add
label define my00a_ind2_lbl 20 `"Manufacture of wood and of products of wood and cork, except furniture; manufacture of articles of straw and plaiting materials"', add
label define my00a_ind2_lbl 21 `"Manufacture of paper and paper products"', add
label define my00a_ind2_lbl 22 `"Publishing, printing and reproduction of recorded media"', add
label define my00a_ind2_lbl 23 `"Manufacture of coke, refined petroleum products and nuclear fuel"', add
label define my00a_ind2_lbl 24 `"Manufacture of chemicals and chemical products"', add
label define my00a_ind2_lbl 25 `"Manufacture of rubber and plastic products"', add
label define my00a_ind2_lbl 26 `"Manufacture of other non-metallic mineral products"', add
label define my00a_ind2_lbl 27 `"Manufacture of basic metals"', add
label define my00a_ind2_lbl 28 `"Manufacture of fabricated metal products, except machinery and equipment"', add
label define my00a_ind2_lbl 29 `"Manufacture of machinery and equipment not elsewhere classified"', add
label define my00a_ind2_lbl 30 `"Manufacture of office, accounting and computing machinery"', add
label define my00a_ind2_lbl 31 `"Manufacture of electrical machinery and apparatus not elsewhere classified"', add
label define my00a_ind2_lbl 32 `"Manufacture of radio, television and communication equipment and apparatus"', add
label define my00a_ind2_lbl 33 `"Manufacture of medical, precision and optical instruments, watches and clocks"', add
label define my00a_ind2_lbl 34 `"Manufacture of motor vehicles, trailers and semi-trailers"', add
label define my00a_ind2_lbl 35 `"Manufacture of other transport equipment"', add
label define my00a_ind2_lbl 36 `"Manufacture of furniture; manufacturing not elsewhere classified"', add
label define my00a_ind2_lbl 37 `"Recycling"', add
label define my00a_ind2_lbl 40 `"Electricity, gas, steam and hot water supply"', add
label define my00a_ind2_lbl 41 `"Collection, purification and distribution of water"', add
label define my00a_ind2_lbl 45 `"Construction"', add
label define my00a_ind2_lbl 50 `"Sale,  maintenance  and  repair  of motor vehicles and motorcycles; retail sale of automotive fuel"', add
label define my00a_ind2_lbl 51 `"Wholesale trade and commission trade, except of motor vehicles and otorcycles"', add
label define my00a_ind2_lbl 52 `"Retail trade, except of motor vehicles and motorcycles,  repair of personal and household goods"', add
label define my00a_ind2_lbl 55 `"Hotels and restaurants"', add
label define my00a_ind2_lbl 60 `"Land transport; transport via pipelines"', add
label define my00a_ind2_lbl 61 `"Water transport"', add
label define my00a_ind2_lbl 62 `"Air transport"', add
label define my00a_ind2_lbl 63 `"Supporting  and  auxiliary  transport activities; activities of  travel agencies"', add
label define my00a_ind2_lbl 64 `"Post and telecommunications"', add
label define my00a_ind2_lbl 65 `"Finance except insurance and pension funding"', add
label define my00a_ind2_lbl 66 `"Insurance and pension funding, except compulsory social security"', add
label define my00a_ind2_lbl 67 `"Activities auxiliary to finance"', add
label define my00a_ind2_lbl 70 `"Real estate activities"', add
label define my00a_ind2_lbl 71 `"Renting of machinery and equipment without operator and of personal and household goods"', add
label define my00a_ind2_lbl 72 `"Computer and related activities"', add
label define my00a_ind2_lbl 73 `"Research and development"', add
label define my00a_ind2_lbl 74 `"Other business activities"', add
label define my00a_ind2_lbl 75 `"Public administration and defence; compulsory social security"', add
label define my00a_ind2_lbl 80 `"Education"', add
label define my00a_ind2_lbl 85 `"Health and social work"', add
label define my00a_ind2_lbl 90 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define my00a_ind2_lbl 91 `"Activities of membership organisations not elsewhere classified"', add
label define my00a_ind2_lbl 92 `"Recreational, cultural and sporting activities"', add
label define my00a_ind2_lbl 93 `"Other service activities"', add
label define my00a_ind2_lbl 95 `"Private households with employed persons"', add
label define my00a_ind2_lbl 97 `"Extra-territorial organisations and bodies"', add
label define my00a_ind2_lbl 98 `"Unknown"', add
label define my00a_ind2_lbl 99 `"NIU (not in universe)"', add
label values my00a_ind2 my00a_ind2_lbl

label define my00a_ind3_lbl 011 `"Growing of crops, market gardening and horticulture"'
label define my00a_ind3_lbl 012 `"Livestock farming"', add
label define my00a_ind3_lbl 013 `"Mixed farming : growing of crops combined with farming of livestock"', add
label define my00a_ind3_lbl 014 `"Agricultural and animal husbandry service activities, except veterinary"', add
label define my00a_ind3_lbl 015 `"Hunting, trapping and game propagation including related service activities"', add
label define my00a_ind3_lbl 020 `"Forestry, logging and related service activities"', add
label define my00a_ind3_lbl 050 `"Fishing and service activities incidental to fishing"', add
label define my00a_ind3_lbl 101 `"Mining of coal and lignite; extraction of peat"', add
label define my00a_ind3_lbl 111 `"Extraction of crude oil and natural gas"', add
label define my00a_ind3_lbl 112 `"Service activities incidental to crude oil and natural gas extraction excluding surveying"', add
label define my00a_ind3_lbl 120 `"Mining of uranium and thorium ores"', add
label define my00a_ind3_lbl 132 `"Mining of non-ferrous metal ores, except uranium and thorium ores"', add
label define my00a_ind3_lbl 141 `"Mining or quarrying of stone/ rock, sand and clay"', add
label define my00a_ind3_lbl 142 `"Mining and quarrying not elsewhere classified"', add
label define my00a_ind3_lbl 151 `"Production, processing and preservation of meat, fish, fruit, vegetables, oils and fats"', add
label define my00a_ind3_lbl 152 `"Manufacture  of  dairy  products"', add
label define my00a_ind3_lbl 153 `"Manufacture of grain mill products, starches and starch products, and prepared animal feeds"', add
label define my00a_ind3_lbl 154 `"Manufacture of other food products"', add
label define my00a_ind3_lbl 155 `"Manufacture of beverages"', add
label define my00a_ind3_lbl 160 `"Manufacture of tobacco products"', add
label define my00a_ind3_lbl 171 `"Spinning, weaving and finishing of textiles"', add
label define my00a_ind3_lbl 172 `"Manufacture of other textiles"', add
label define my00a_ind3_lbl 173 `"Manufacture of knitted and crocheted fabrics and articles"', add
label define my00a_ind3_lbl 181 `"Manufacture of wearing apparel, except fur apparel"', add
label define my00a_ind3_lbl 191 `"Tanning and dressing of leather; manufacture of luggage, handbags, saddlery and harness"', add
label define my00a_ind3_lbl 192 `"Manufacture of footwear"', add
label define my00a_ind3_lbl 201 `"Sawmilling and planing of wood"', add
label define my00a_ind3_lbl 202 `"Manufacture of products of wood, cork, straw and plaiting materials"', add
label define my00a_ind3_lbl 210 `"Manufacture of paper and paper products"', add
label define my00a_ind3_lbl 221 `"Publishing"', add
label define my00a_ind3_lbl 222 `"Printing and service activities related to printing"', add
label define my00a_ind3_lbl 223 `"Reproduction of recorded media"', add
label define my00a_ind3_lbl 231 `"Manufacture of coke oven products"', add
label define my00a_ind3_lbl 232 `"Manufacture of refined petroleum products"', add
label define my00a_ind3_lbl 241 `"Manufacture of basic chemicals"', add
label define my00a_ind3_lbl 242 `"Manufacture of other chemical products"', add
label define my00a_ind3_lbl 243 `"Manufacture of man-made fibres"', add
label define my00a_ind3_lbl 251 `"Manufacture of rubber products"', add
label define my00a_ind3_lbl 252 `"Manufacture  of  plastic  products"', add
label define my00a_ind3_lbl 261 `"Manufacture of glass and glass products"', add
label define my00a_ind3_lbl 269 `"Manufacture  of  non-metallic  mineral products  not elsewhere classified"', add
label define my00a_ind3_lbl 271 `"Manufacture of basic iron and steel"', add
label define my00a_ind3_lbl 272 `"Manufacture of basic precious and non-ferrous metals"', add
label define my00a_ind3_lbl 273 `"Casting of metals"', add
label define my00a_ind3_lbl 281 `"Manufacture of structural metal products, tanks, reservoirs and steam generators"', add
label define my00a_ind3_lbl 289 `"Manufacture of other fabricated metal products; metal working service activities"', add
label define my00a_ind3_lbl 291 `"Manufacture of general purpose machinery"', add
label define my00a_ind3_lbl 292 `"Manufacture of special purpose machinery"', add
label define my00a_ind3_lbl 293 `"Manufacture of domestic appliances not elsewhere classified"', add
label define my00a_ind3_lbl 300 `"Manufacture of office, accounting and computing machinery"', add
label define my00a_ind3_lbl 311 `"Manufacture of electrical motors,generators and transformers"', add
label define my00a_ind3_lbl 312 `"Manufacture  of  electricity  distribution and control apparatus"', add
label define my00a_ind3_lbl 313 `"Manufacture of insulated wire and cable"', add
label define my00a_ind3_lbl 314 `"Manufacture  of  accumulators,  primary cells and  primary  batteries"', add
label define my00a_ind3_lbl 315 `"Manufacture of electric lamps and lighting equipment"', add
label define my00a_ind3_lbl 319 `"Manufacture of other electrical"', add
label define my00a_ind3_lbl 321 `"Manufacture of electronic valves and tubes and other electronic components"', add
label define my00a_ind3_lbl 322 `"Manufacture of television and radio transmitters and apparatus for line telephony and line telegraphy"', add
label define my00a_ind3_lbl 323 `"Manufacture  of  television  and  radio receivers, sound or  video  recording or reproducing apparatus, and associated goods"', add
label define my00a_ind3_lbl 331 `"Manufacture of medical appliances and instruments and appliances for measuring,"', add
label define my00a_ind3_lbl 332 `"Manufacture of optical instruments and photographic equipment"', add
label define my00a_ind3_lbl 333 `"Manufacture of watches and clocks"', add
label define my00a_ind3_lbl 341 `"Manufacture of motor vehicles"', add
label define my00a_ind3_lbl 342 `"Manufacture of bodies (coachwork) for motor vehicles; manufacture of trailers and semi-trailers"', add
label define my00a_ind3_lbl 343 `"Manufacture of parts and accessories for motor vehicles and their engines"', add
label define my00a_ind3_lbl 351 `"Building and repairing of ships and boats"', add
label define my00a_ind3_lbl 352 `"Manufacture of railway and tramway locomotives and rolling stock"', add
label define my00a_ind3_lbl 353 `"Manufacture of aircraft and spacecraft"', add
label define my00a_ind3_lbl 359 `"Manufacture of transport equipment not elsewhere classified"', add
label define my00a_ind3_lbl 361 `"Manufacture  of  furniture"', add
label define my00a_ind3_lbl 369 `"Manufacturing not elsewhere classified"', add
label define my00a_ind3_lbl 371 `"Recycling of metal waste and scrap"', add
label define my00a_ind3_lbl 372 `"Recycling of non-metal waste and scrap"', add
label define my00a_ind3_lbl 401 `"Production, collection and distribution of electricity, gas and steam"', add
label define my00a_ind3_lbl 402 `"Manufacture of gas, distribution of gaseous fuels through mains"', add
label define my00a_ind3_lbl 403 `"Steam and hot water supply"', add
label define my00a_ind3_lbl 410 `"Collection, purification and distribution of water"', add
label define my00a_ind3_lbl 451 `"Site preparation"', add
label define my00a_ind3_lbl 452 `"Building of complete constructions or parts thereof; civil engineering"', add
label define my00a_ind3_lbl 453 `"Building installation (including repairs)"', add
label define my00a_ind3_lbl 454 `"Building completion (including repairs)"', add
label define my00a_ind3_lbl 455 `"Renting of construction or demolition equipment with operator"', add
label define my00a_ind3_lbl 501 `"Sale of motor vehicles"', add
label define my00a_ind3_lbl 502 `"Maintenance and repair of motor vehicles"', add
label define my00a_ind3_lbl 503 `"Sale of motor vehicle parts and accessories"', add
label define my00a_ind3_lbl 504 `"Sale, maintenance and repair of motorcycles and related parts and accessories"', add
label define my00a_ind3_lbl 505 `"Retail sale of automotive fuel"', add
label define my00a_ind3_lbl 511 `"Wholesale on a fee or contract basis"', add
label define my00a_ind3_lbl 512 `"Wholesale of agricultural raw materials"', add
label define my00a_ind3_lbl 513 `"Wholesale  of  household  goods"', add
label define my00a_ind3_lbl 514 `"Wholesale of non-agricultural intermediate products, waste and scrap"', add
label define my00a_ind3_lbl 515 `"Wholesale of machinery, equipment and supplies"', add
label define my00a_ind3_lbl 519 `"Other wholesale"', add
label define my00a_ind3_lbl 521 `"Non-specialized retail trade in stores"', add
label define my00a_ind3_lbl 522 `"Retail sale of food, beverages and tobacco in specialized stores"', add
label define my00a_ind3_lbl 523 `"Other retail trade of new goods in specialized stores"', add
label define my00a_ind3_lbl 524 `"Retail sale of second-hand goods in stores"', add
label define my00a_ind3_lbl 525 `"Retail trade not in stores"', add
label define my00a_ind3_lbl 526 `"Repair of personal and household goods"', add
label define my00a_ind3_lbl 551 `"Hotels; camping sites and other provision of short-stay accommodation"', add
label define my00a_ind3_lbl 552 `"Restaurants, bars and canteens"', add
label define my00a_ind3_lbl 601 `"Transport via railways"', add
label define my00a_ind3_lbl 602 `"Other land transport"', add
label define my00a_ind3_lbl 611 `"Sea and coastal water transport"', add
label define my00a_ind3_lbl 612 `"Inland water transport"', add
label define my00a_ind3_lbl 621 `"Scheduled air transport"', add
label define my00a_ind3_lbl 622 `"Non-scheduled air transport"', add
label define my00a_ind3_lbl 630 `"Supporting and auxiliary transport activities; activities of travel agencies"', add
label define my00a_ind3_lbl 641 `"Post and courier activities"', add
label define my00a_ind3_lbl 642 `"Telecommunications"', add
label define my00a_ind3_lbl 651 `"Monetary intermediation"', add
label define my00a_ind3_lbl 659 `"Other financial intermediation"', add
label define my00a_ind3_lbl 660 `"Insurance and pension funding, except compulsory social security"', add
label define my00a_ind3_lbl 671 `"Activities auxiliary to finance, except"', add
label define my00a_ind3_lbl 672 `"Activities auxiliary to insurance and pension funding"', add
label define my00a_ind3_lbl 701 `"Real estate activities with own or leased property"', add
label define my00a_ind3_lbl 702 `"Real estate activities on a fee or contract basis"', add
label define my00a_ind3_lbl 711 `"Rental of transport equipment"', add
label define my00a_ind3_lbl 712 `"Rental of other machinery and equipment"', add
label define my00a_ind3_lbl 713 `"Rental of personal and household goods not elsewhere classified"', add
label define my00a_ind3_lbl 721 `"Hardware consultancy"', add
label define my00a_ind3_lbl 722 `"Software consultancy and supply"', add
label define my00a_ind3_lbl 723 `"Data processing services"', add
label define my00a_ind3_lbl 724 `"Data  base activities"', add
label define my00a_ind3_lbl 725 `"Maintenance and repair of office, accounting and computing machinery"', add
label define my00a_ind3_lbl 729 `"Other computer related activities"', add
label define my00a_ind3_lbl 731 `"Research and experimental development on natural sciences and engineering (NSE)"', add
label define my00a_ind3_lbl 732 `"Research and experimental development on social sciences and humanities (SSH)"', add
label define my00a_ind3_lbl 741 `"Legal, accounting, book-keeping and auditing activities; tax consultancy; market research and public opinion polling; business and management consultancy"', add
label define my00a_ind3_lbl 742 `"Architectural, engineering and other technical  activities"', add
label define my00a_ind3_lbl 743 `"Advertising"', add
label define my00a_ind3_lbl 749 `"Business activities not elsewhere classified"', add
label define my00a_ind3_lbl 751 `"Administration of the state and the economic and social policy of the community"', add
label define my00a_ind3_lbl 752 `"Provision of services to the community as a whole"', add
label define my00a_ind3_lbl 753 `"Compulsory social security activities"', add
label define my00a_ind3_lbl 801 `"Primary education"', add
label define my00a_ind3_lbl 802 `"Secondary education"', add
label define my00a_ind3_lbl 803 `"Higher education"', add
label define my00a_ind3_lbl 809 `"Adult and other education"', add
label define my00a_ind3_lbl 851 `"Human health activities"', add
label define my00a_ind3_lbl 852 `"Veterinary activities"', add
label define my00a_ind3_lbl 853 `"Social work activities"', add
label define my00a_ind3_lbl 900 `"Sewage and refuse disposal, sanitation and similar activities"', add
label define my00a_ind3_lbl 911 `"Activities of business, employers and professional organisations"', add
label define my00a_ind3_lbl 912 `"Activities of trade unions"', add
label define my00a_ind3_lbl 919 `"Activities of other membership organisations"', add
label define my00a_ind3_lbl 921 `"Motion picture, radio, television and other entertainment activities"', add
label define my00a_ind3_lbl 922 `"News agency activities"', add
label define my00a_ind3_lbl 923 `"Library, archives, museums and other cultural activities"', add
label define my00a_ind3_lbl 924 `"Sporting and other recreational activities"', add
label define my00a_ind3_lbl 930 `"Other service activities"', add
label define my00a_ind3_lbl 950 `"Private households with employed persons persons"', add
label define my00a_ind3_lbl 990 `"Extra-territorial organisations and bodies"', add
label define my00a_ind3_lbl 995 `"Activities inadequately described or response suppressed"', add
label define my00a_ind3_lbl 998 `"Unknown"', add
label define my00a_ind3_lbl 999 `"NIU (not in universe)"', add
label values my00a_ind3 my00a_ind3_lbl

label define my00a_empstat_lbl 0 `"NIU (not in universe)"'
label define my00a_empstat_lbl 1 `"Employed - at work"', add
label define my00a_empstat_lbl 2 `"Employed - not at work"', add
label define my00a_empstat_lbl 3 `"Active unemployed"', add
label define my00a_empstat_lbl 4 `"Inactive unemployed"', add
label define my00a_empstat_lbl 5 `"Outside labour force"', add
label define my00a_empstat_lbl 9 `"Unknown"', add
label values my00a_empstat my00a_empstat_lbl

label define my00a_ethnic_lbl 1 `"Malay"'
label define my00a_ethnic_lbl 2 `"Other Bumiputera"', add
label define my00a_ethnic_lbl 3 `"Chinese"', add
label define my00a_ethnic_lbl 4 `"Indians"', add
label define my00a_ethnic_lbl 5 `"Others"', add
label define my00a_ethnic_lbl 6 `"Non-citizens"', add
label values my00a_ethnic my00a_ethnic_lbl

label define my00a_disable1_lbl 0 `"No handicap and unknown"'
label define my00a_disable1_lbl 1 `"Sight"', add
label define my00a_disable1_lbl 2 `"Hearing"', add
label define my00a_disable1_lbl 3 `"Speech"', add
label define my00a_disable1_lbl 4 `"Limbs"', add
label define my00a_disable1_lbl 5 `"Mental"', add
label define my00a_disable1_lbl 6 `"Others"', add
label values my00a_disable1 my00a_disable1_lbl

label define my00a_disable2_lbl 0 `"No second handicap reported"'
label define my00a_disable2_lbl 1 `"Sight"', add
label define my00a_disable2_lbl 2 `"Hearing"', add
label define my00a_disable2_lbl 3 `"Speech"', add
label define my00a_disable2_lbl 4 `"Limbs"', add
label define my00a_disable2_lbl 5 `"Mental"', add
label define my00a_disable2_lbl 6 `"Others"', add
label values my00a_disable2 my00a_disable2_lbl

label define my00a_disable3_lbl 0 `"No third handicap reported"'
label define my00a_disable3_lbl 1 `"Sight"', add
label define my00a_disable3_lbl 2 `"Hearing"', add
label define my00a_disable3_lbl 3 `"Speech"', add
label define my00a_disable3_lbl 4 `"Limbs"', add
label define my00a_disable3_lbl 5 `"Mental"', add
label define my00a_disable3_lbl 6 `"Others"', add
label values my00a_disable3 my00a_disable3_lbl

label define my00a_relig_lbl 1 `"Islam"'
label define my00a_relig_lbl 2 `"Christian"', add
label define my00a_relig_lbl 3 `"Hindu"', add
label define my00a_relig_lbl 4 `"Buddhism"', add
label define my00a_relig_lbl 5 `"Confucianism / Taoism / Traditional Chinese religion"', add
label define my00a_relig_lbl 6 `"Tribal/Folk Religion"', add
label define my00a_relig_lbl 7 `"Others"', add
label define my00a_relig_lbl 8 `"No Religion"', add
label define my00a_relig_lbl 9 `"Unknown"', add
label values my00a_relig my00a_relig_lbl

label define my00a_migrant_lbl 1 `"Non-migrant"'
label define my00a_migrant_lbl 2 `"Internal migrant"', add
label define my00a_migrant_lbl 3 `"External migrant"', add
label define my00a_migrant_lbl 4 `"Intra-district migrant"', add
label define my00a_migrant_lbl 9 `"Unknown"', add
label values my00a_migrant my00a_migrant_lbl


