* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

set more off

clear
quietly infix                      ///
  int     cntry           1-3      ///
  int     year            4-7      ///
  int     sample          8-11     ///
  double  serial          12-21    ///
  long    gh10a_dwnum     22-28    ///
  byte    gh10a_pern      29-30    ///
  byte    gh10a_fbig      31-31    ///
  byte    gh10a_region    32-33    ///
  int     gh10a_district  34-37    ///
  byte    gh10a_distype   38-38    ///
  byte    gh10a_restype   39-40    ///
  byte    gh10a_emig6mo   41-41    ///
  byte    gh10a_deaths    42-42    ///
  byte    gh10a_phone     43-43    ///
  byte    gh10a_computr   44-44    ///
  byte    gh10a_agcrop    45-45    ///
  byte    gh10a_agtree    46-46    ///
  byte    gh10a_aglivest  47-47    ///
  byte    gh10a_agfish    48-48    ///
  byte    gh10a_agmale    49-50    ///
  byte    gh10a_agfemale  51-52    ///
  byte    gh10a_dwtype    53-54    ///
  byte    gh10a_wall      55-56    ///
  byte    gh10a_floor     57-58    ///
  byte    gh10a_roof      59-60    ///
  byte    gh10a_tenancy   61-61    ///
  byte    gh10a_ownershp  62-62    ///
  byte    gh10a_rooms     63-64    ///
  byte    gh10a_bedrooms  65-66    ///
  byte    gh10a_bedshare  67-67    ///
  byte    gh10a_bedrmnhh  68-68    ///
  byte    gh10a_light     69-70    ///
  byte    gh10a_watdrink  71-72    ///
  byte    gh10a_watsrc    73-74    ///
  byte    gh10a_fuelck    75-76    ///
  byte    gh10a_cookspac  77-78    ///
  byte    gh10a_bathrm    79-80    ///
  byte    gh10a_toilet    81-82    ///
  byte    gh10a_toilshar  83-84    ///
  byte    gh10a_toiltnhh  85-85    ///
  byte    gh10a_trash     86-86    ///
  byte    gh10a_sewer     87-87    ///
  byte    gh10a_urban     88-88    ///
  byte    gh10a_houses    89-89    ///
  byte    gh10a_aghouse   90-90    ///
  byte    gh10a_famtype   91-91    ///
  byte    gh10a_famnuc    92-92    ///
  byte    gh10a_sexhd     93-93    ///
  byte    gh10a_agehd     94-95    ///
  byte    gh10a_agpopn    96-97    ///
  int     pernum          98-100   ///
  float   wtper           101-108  ///
  byte    gh10a_relate    109-110  ///
  byte    gh10a_sex       111-111  ///
  byte    gh10a_age       112-113  ///
  byte    gh10a_nation    114-115  ///
  byte    gh10a_ethnic    116-117  ///
  byte    gh10a_bplhere   118-118  ///
  byte    gh10a_bpl       119-120  ///
  byte    gh10a_sincebth  121-121  ///
  byte    gh10a_yrshere   122-123  ///
  byte    gh10a_relig     124-124  ///
  byte    gh10a_marst     125-125  ///
  byte    gh10a_lit       126-126  ///
  byte    gh10a_school    127-127  ///
  byte    gh10a_edlevel   128-129  ///
  int     gh10a_edattan   130-132  ///
  byte    gh10a_empstat   133-133  ///
  byte    gh10a_activity  134-134  ///
  byte    gh10a_whynowk   135-135  ///
  byte    gh10a_occ       136-137  ///
  byte    gh10a_ind       138-139  ///
  byte    gh10a_classwk   140-140  ///
  byte    gh10a_empsect   141-141  ///
  byte    gh10a_dissight  142-142  ///
  byte    gh10a_dishear   143-143  ///
  byte    gh10a_dismute   144-144  ///
  byte    gh10a_disphys   145-145  ///
  byte    gh10a_disdev    146-146  ///
  byte    gh10a_disemot   147-147  ///
  byte    gh10a_cellphon  148-148  ///
  byte    gh10a_internet  149-149  ///
  byte    gh10a_chbornm   150-151  ///
  byte    gh10a_chbornf   152-153  ///
  byte    gh10a_chsurvm   154-155  ///
  byte    gh10a_chsurvf   156-157  ///
  byte    gh10a_birth12f  158-158  ///
  byte    gh10a_chborn    159-160  ///
  byte    gh10a_chsurv    161-162  ///
  byte    gh10a_bthlstyr  163-164  ///
  byte    gh10a_econact   165-165  ///
  using `"ipumsi_00073.dat"'

replace wtper          = wtper          / 100

format serial         %10.0f
format wtper          %8.2f

label var cntry          `"Country"'
label var year           `"Year"'
label var sample         `"IPUMS sample identifier"'
label var serial         `"Household serial number"'
label var gh10a_dwnum    `"Dwelling number"'
label var gh10a_pern     `"Number of persons in household"'
label var gh10a_fbig     `"Dwelling created by splitting apart a large dwelling or household"'
label var gh10a_region   `"Region"'
label var gh10a_district `"District"'
label var gh10a_distype  `"District type"'
label var gh10a_restype  `"Type of residence"'
label var gh10a_emig6mo  `"Former household members 15+ living outside for 6+ months"'
label var gh10a_deaths   `"Any deaths in the past 12 months"'
label var gh10a_phone    `"Fixed phone line"'
label var gh10a_computr  `"Desktop or laptop computer"'
label var gh10a_agcrop   `"Crop farming"'
label var gh10a_agtree   `"Tree growing"'
label var gh10a_aglivest `"Livestock raising"'
label var gh10a_agfish   `"Fishing"'
label var gh10a_agmale   `"Number of male household members engaged in agricultural activity"'
label var gh10a_agfemale `"Number of female household members engaged in agricultural activity"'
label var gh10a_dwtype   `"Type of dwelling"'
label var gh10a_wall     `"Main material used for outer wall"'
label var gh10a_floor    `"Main material used for floor of dwelling"'
label var gh10a_roof     `"Main material used for roof"'
label var gh10a_tenancy  `"Present holding or tenancy arrangement"'
label var gh10a_ownershp `"Dwelling ownership"'
label var gh10a_rooms    `"Number of rooms in the household"'
label var gh10a_bedrooms `"Bedrooms"'
label var gh10a_bedshare `"Sharing sleeping room"'
label var gh10a_bedrmnhh `"Number of households sharing a sleeping room"'
label var gh10a_light    `"Main source of lighting"'
label var gh10a_watdrink `"Main source of drinking water"'
label var gh10a_watsrc   `"Main source of water for domestic purposes"'
label var gh10a_fuelck   `"Main source of cooking fuel"'
label var gh10a_cookspac `"Cooking space"'
label var gh10a_bathrm   `"Bathing"'
label var gh10a_toilet   `"Toilet"'
label var gh10a_toilshar `"Sharing toilet with other households"'
label var gh10a_toiltnhh `"Number of households using toilet facility"'
label var gh10a_trash    `"Method of rubbish disposal"'
label var gh10a_sewer    `"Method of liquid waste disposal"'
label var gh10a_urban    `"Urban"'
label var gh10a_houses   `"Unit structure"'
label var gh10a_aghouse  `"Agricultural household"'
label var gh10a_famtype  `"Family type"'
label var gh10a_famnuc   `"Family nucleus"'
label var gh10a_sexhd    `"Sex of household head"'
label var gh10a_agehd    `"Age of household head"'
label var gh10a_agpopn   `"Number of household members engaged in agricultural activity"'
label var pernum         `"Person number"'
label var wtper          `"Person weight"'
label var gh10a_relate   `"Relationship"'
label var gh10a_sex      `"Sex"'
label var gh10a_age      `"Age"'
label var gh10a_nation   `"Nationality"'
label var gh10a_ethnic   `"Ethnicity"'
label var gh10a_bplhere  `"Birth in place of enumeration"'
label var gh10a_bpl      `"Region or country of birth"'
label var gh10a_sincebth `"Living in place of enumeration since birth"'
label var gh10a_yrshere  `"Number of years lived at place of enumeration"'
label var gh10a_relig    `"Religious affiliation"'
label var gh10a_marst    `"Marital status"'
label var gh10a_lit      `"Literacy"'
label var gh10a_school   `"School attendance"'
label var gh10a_edlevel  `"Highest level of school attended or attending"'
label var gh10a_edattan  `"Highest educational level and grade completed"'
label var gh10a_empstat  `"Worked for pay, profit, or family gain"'
label var gh10a_activity `"Activity status (if not working)"'
label var gh10a_whynowk  `"Reason for not seeking work"'
label var gh10a_occ      `"Occupation (major groups)"'
label var gh10a_ind      `"Industry (major groups)"'
label var gh10a_classwk  `"Class of worker"'
label var gh10a_empsect  `"Employment sector"'
label var gh10a_dissight `"Sight disability"'
label var gh10a_dishear  `"Hearing disability"'
label var gh10a_dismute  `"Speech disability"'
label var gh10a_disphys  `"Physical disability"'
label var gh10a_disdev   `"Intellectual disability"'
label var gh10a_disemot  `"Emotional disability"'
label var gh10a_cellphon `"Mobile phone"'
label var gh10a_internet `"Internet"'
label var gh10a_chbornm  `"Male children ever born"'
label var gh10a_chbornf  `"Female children ever born"'
label var gh10a_chsurvm  `"Male children surviving"'
label var gh10a_chsurvf  `"Female children surviving"'
label var gh10a_birth12f `"Female births in the last 12 months"'
label var gh10a_chborn   `"Children ever born"'
label var gh10a_chsurv   `"Children surviving"'
label var gh10a_bthlstyr `"Births last year"'
label var gh10a_econact  `"Economic activity"'

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

label define gh10a_pern_lbl 01 `"1"'
label define gh10a_pern_lbl 02 `"2"', add
label define gh10a_pern_lbl 03 `"3"', add
label define gh10a_pern_lbl 04 `"4"', add
label define gh10a_pern_lbl 05 `"5"', add
label define gh10a_pern_lbl 06 `"6"', add
label define gh10a_pern_lbl 07 `"7"', add
label define gh10a_pern_lbl 08 `"8"', add
label define gh10a_pern_lbl 09 `"9"', add
label define gh10a_pern_lbl 10 `"10"', add
label define gh10a_pern_lbl 11 `"11"', add
label define gh10a_pern_lbl 12 `"12"', add
label define gh10a_pern_lbl 13 `"13"', add
label define gh10a_pern_lbl 14 `"14"', add
label define gh10a_pern_lbl 15 `"15"', add
label define gh10a_pern_lbl 16 `"16"', add
label define gh10a_pern_lbl 17 `"17"', add
label define gh10a_pern_lbl 18 `"18"', add
label define gh10a_pern_lbl 19 `"19"', add
label define gh10a_pern_lbl 20 `"20"', add
label define gh10a_pern_lbl 21 `"21"', add
label define gh10a_pern_lbl 22 `"22"', add
label define gh10a_pern_lbl 23 `"23"', add
label define gh10a_pern_lbl 24 `"24"', add
label define gh10a_pern_lbl 25 `"25"', add
label define gh10a_pern_lbl 26 `"26"', add
label define gh10a_pern_lbl 27 `"27"', add
label define gh10a_pern_lbl 28 `"28"', add
label define gh10a_pern_lbl 29 `"29"', add
label define gh10a_pern_lbl 30 `"30"', add
label define gh10a_pern_lbl 31 `"31"', add
label define gh10a_pern_lbl 32 `"32"', add
label define gh10a_pern_lbl 33 `"33"', add
label define gh10a_pern_lbl 34 `"34"', add
label define gh10a_pern_lbl 35 `"35"', add
label define gh10a_pern_lbl 36 `"36"', add
label define gh10a_pern_lbl 37 `"37"', add
label define gh10a_pern_lbl 38 `"38"', add
label define gh10a_pern_lbl 39 `"39"', add
label define gh10a_pern_lbl 40 `"40"', add
label define gh10a_pern_lbl 41 `"41"', add
label define gh10a_pern_lbl 42 `"42"', add
label define gh10a_pern_lbl 43 `"43"', add
label define gh10a_pern_lbl 44 `"44"', add
label define gh10a_pern_lbl 45 `"45"', add
label define gh10a_pern_lbl 46 `"46"', add
label define gh10a_pern_lbl 47 `"47"', add
label define gh10a_pern_lbl 48 `"48"', add
label define gh10a_pern_lbl 49 `"49"', add
label define gh10a_pern_lbl 50 `"50"', add
label values gh10a_pern gh10a_pern_lbl

label define gh10a_fbig_lbl 0 `"No problem"'
label define gh10a_fbig_lbl 2 `"Yes: persons within a large household were split apart into separate dwellings"', add
label values gh10a_fbig gh10a_fbig_lbl

label define gh10a_region_lbl 01 `"Western"'
label define gh10a_region_lbl 02 `"Central"', add
label define gh10a_region_lbl 03 `"Greater Accra"', add
label define gh10a_region_lbl 04 `"Volta"', add
label define gh10a_region_lbl 05 `"Eastern"', add
label define gh10a_region_lbl 06 `"Ashanti"', add
label define gh10a_region_lbl 07 `"Brong Ahafo"', add
label define gh10a_region_lbl 08 `"Northern"', add
label define gh10a_region_lbl 09 `"Upper East"', add
label define gh10a_region_lbl 10 `"Upper West"', add
label values gh10a_region gh10a_region_lbl

label define gh10a_district_lbl 0101 `"Jomoro"'
label define gh10a_district_lbl 0102 `"Ellembelle"', add
label define gh10a_district_lbl 0103 `"Nzema East"', add
label define gh10a_district_lbl 0104 `"Ahanta West"', add
label define gh10a_district_lbl 0105 `"Sekondi-Takoradi"', add
label define gh10a_district_lbl 0106 `"Shama"', add
label define gh10a_district_lbl 0107 `"Mpohor-Wassa East"', add
label define gh10a_district_lbl 0108 `"Tarkwa Nsuaem"', add
label define gh10a_district_lbl 0109 `"Prestea or Huni Valley"', add
label define gh10a_district_lbl 0110 `"Wassa Amenfi East"', add
label define gh10a_district_lbl 0111 `"Wassa Amenfi West"', add
label define gh10a_district_lbl 0112 `"Aowin or Suaman"', add
label define gh10a_district_lbl 0113 `"Sefwi-Akontombra"', add
label define gh10a_district_lbl 0114 `"Sefwi-Wiawso"', add
label define gh10a_district_lbl 0115 `"Sefwi-Bibiani-Ahwiaso-Bekwai"', add
label define gh10a_district_lbl 0116 `"Juabeso"', add
label define gh10a_district_lbl 0117 `"Bia"', add
label define gh10a_district_lbl 0201 `"Komenda, Edina, Eguafo, Abirem"', add
label define gh10a_district_lbl 0202 `"Cape Coast"', add
label define gh10a_district_lbl 0203 `"Abura, Asebu, Kwamankese"', add
label define gh10a_district_lbl 0204 `"Mfantsiman"', add
label define gh10a_district_lbl 0205 `"Ajumako, Enyan, Essiam"', add
label define gh10a_district_lbl 0206 `"Gomoa West"', add
label define gh10a_district_lbl 0207 `"Effutu"', add
label define gh10a_district_lbl 0208 `"Gomoa East"', add
label define gh10a_district_lbl 0209 `"Awutu Senya"', add
label define gh10a_district_lbl 0210 `"Agona East"', add
label define gh10a_district_lbl 0211 `"Agona West"', add
label define gh10a_district_lbl 0212 `"Asikuma, Odoben , Brakwa"', add
label define gh10a_district_lbl 0213 `"Assin South"', add
label define gh10a_district_lbl 0214 `"Assin North"', add
label define gh10a_district_lbl 0215 `"Twifo, Heman, Lower Denkyira"', add
label define gh10a_district_lbl 0216 `"Upper Denkyira East"', add
label define gh10a_district_lbl 0217 `"Upper Denkyira West"', add
label define gh10a_district_lbl 0301 `"Weija (Ga South)"', add
label define gh10a_district_lbl 0302 `"Ga West"', add
label define gh10a_district_lbl 0303 `"Ga East"', add
label define gh10a_district_lbl 0304 `"A M A"', add
label define gh10a_district_lbl 0305 `"Adenta"', add
label define gh10a_district_lbl 0306 `"Ledzokuku or Krowor"', add
label define gh10a_district_lbl 0307 `"Ashaiman"', add
label define gh10a_district_lbl 0308 `"Tema"', add
label define gh10a_district_lbl 0309 `"Dangme West"', add
label define gh10a_district_lbl 0310 `"Dangme East"', add
label define gh10a_district_lbl 0401 `"South Tongu"', add
label define gh10a_district_lbl 0402 `"Keta Municipal"', add
label define gh10a_district_lbl 0403 `"Ketu South"', add
label define gh10a_district_lbl 0404 `"Ketu North"', add
label define gh10a_district_lbl 0405 `"Akatsi"', add
label define gh10a_district_lbl 0406 `"North Tongu"', add
label define gh10a_district_lbl 0407 `"Adaklu Anyigbe"', add
label define gh10a_district_lbl 0408 `"Ho"', add
label define gh10a_district_lbl 0409 `"South Dayi"', add
label define gh10a_district_lbl 0410 `"North Dayi"', add
label define gh10a_district_lbl 0411 `"Hohoe"', add
label define gh10a_district_lbl 0412 `"Biakoye"', add
label define gh10a_district_lbl 0413 `"Jasikan"', add
label define gh10a_district_lbl 0414 `"Kadjebi"', add
label define gh10a_district_lbl 0415 `"Krachi East"', add
label define gh10a_district_lbl 0416 `"Krachi West"', add
label define gh10a_district_lbl 0417 `"Nkwanta South"', add
label define gh10a_district_lbl 0418 `"Nkwanta North"', add
label define gh10a_district_lbl 0501 `"Birim South"', add
label define gh10a_district_lbl 0502 `"Birim Central Municipal"', add
label define gh10a_district_lbl 0503 `"West Akim"', add
label define gh10a_district_lbl 0504 `"Suhum, Kraboa Coaltar"', add
label define gh10a_district_lbl 0505 `"Akwapim South"', add
label define gh10a_district_lbl 0506 `"Akwapim North"', add
label define gh10a_district_lbl 0507 `"New Juaben Municipal"', add
label define gh10a_district_lbl 0508 `"Yilo Krobo"', add
label define gh10a_district_lbl 0509 `"Lower Manya Krobo"', add
label define gh10a_district_lbl 0510 `"Asuogyaman"', add
label define gh10a_district_lbl 0511 `"Upper Manya Krobo"', add
label define gh10a_district_lbl 0512 `"Fanteakwa"', add
label define gh10a_district_lbl 0513 `"East Akim"', add
label define gh10a_district_lbl 0514 `"Kwaebibirem"', add
label define gh10a_district_lbl 0515 `"Akyemansa"', add
label define gh10a_district_lbl 0516 `"Birim North"', add
label define gh10a_district_lbl 0517 `"Atiwa"', add
label define gh10a_district_lbl 0518 `"Kwahu West"', add
label define gh10a_district_lbl 0519 `"Kwahu South"', add
label define gh10a_district_lbl 0520 `"Kwahu East"', add
label define gh10a_district_lbl 0521 `"Kwahu North (Afram Plains)"', add
label define gh10a_district_lbl 0601 `"Atwima Mponua"', add
label define gh10a_district_lbl 0602 `"Amansie West"', add
label define gh10a_district_lbl 0603 `"Amansie Central"', add
label define gh10a_district_lbl 0604 `"Adansi South"', add
label define gh10a_district_lbl 0605 `"Obuasi Municipal"', add
label define gh10a_district_lbl 0606 `"Adansi North"', add
label define gh10a_district_lbl 0607 `"Bekwai Municipal"', add
label define gh10a_district_lbl 0608 `"Bosome Freho"', add
label define gh10a_district_lbl 0609 `"Asante Akim South"', add
label define gh10a_district_lbl 0610 `"Asante Akim North"', add
label define gh10a_district_lbl 0611 `"Ejisu Juaben"', add
label define gh10a_district_lbl 0612 `"Bosumtwi"', add
label define gh10a_district_lbl 0613 `"Atwima Kwanwoma"', add
label define gh10a_district_lbl 0614 `"Kumasi Metropolitan Assembly (KMA)"', add
label define gh10a_district_lbl 0615 `"Atwima Nwabiagya"', add
label define gh10a_district_lbl 0616 `"Ahafo Ano South"', add
label define gh10a_district_lbl 0617 `"Ahafo Ano North"', add
label define gh10a_district_lbl 0618 `"Offinso Municipal"', add
label define gh10a_district_lbl 0619 `"Afigya Kwabre"', add
label define gh10a_district_lbl 0620 `"Kwabre  East"', add
label define gh10a_district_lbl 0621 `"Sekyere South"', add
label define gh10a_district_lbl 0622 `"Mampong Municipal"', add
label define gh10a_district_lbl 0623 `"Sekyere East"', add
label define gh10a_district_lbl 0624 `"Sekyere Afram Plains"', add
label define gh10a_district_lbl 0625 `"Sekyere Central"', add
label define gh10a_district_lbl 0626 `"Ejura Sekye Dumasi"', add
label define gh10a_district_lbl 0627 `"Offinso North"', add
label define gh10a_district_lbl 0701 `"Asunafo South"', add
label define gh10a_district_lbl 0702 `"Asunafo North"', add
label define gh10a_district_lbl 0703 `"Asutifi"', add
label define gh10a_district_lbl 0704 `"Dormaa Municipal"', add
label define gh10a_district_lbl 0705 `"Dormaa East"', add
label define gh10a_district_lbl 0706 `"Tano South"', add
label define gh10a_district_lbl 0707 `"Tano North"', add
label define gh10a_district_lbl 0708 `"Sunyani Municipal"', add
label define gh10a_district_lbl 0709 `"Sunyani West"', add
label define gh10a_district_lbl 0710 `"Berekum"', add
label define gh10a_district_lbl 0711 `"Jaman South"', add
label define gh10a_district_lbl 0712 `"Jaman North"', add
label define gh10a_district_lbl 0713 `"Tain"', add
label define gh10a_district_lbl 0714 `"Wenchi"', add
label define gh10a_district_lbl 0715 `"Techiman"', add
label define gh10a_district_lbl 0716 `"Nkoranza South"', add
label define gh10a_district_lbl 0717 `"Nkoranza North"', add
label define gh10a_district_lbl 0718 `"Atebubu"', add
label define gh10a_district_lbl 0719 `"Sene"', add
label define gh10a_district_lbl 0720 `"Pru"', add
label define gh10a_district_lbl 0721 `"Kintampo South"', add
label define gh10a_district_lbl 0722 `"Kintampo North"', add
label define gh10a_district_lbl 0801 `"Bole"', add
label define gh10a_district_lbl 0802 `"Sawla, Tuna, Kalba"', add
label define gh10a_district_lbl 0803 `"West Gonja"', add
label define gh10a_district_lbl 0804 `"Gonja Central"', add
label define gh10a_district_lbl 0805 `"East Gonja"', add
label define gh10a_district_lbl 0806 `"Kpandai"', add
label define gh10a_district_lbl 0807 `"Nanumba South"', add
label define gh10a_district_lbl 0808 `"Nanumba North"', add
label define gh10a_district_lbl 0809 `"Zabzugu Tatali"', add
label define gh10a_district_lbl 0810 `"Yendi"', add
label define gh10a_district_lbl 0811 `"Tamale Metro"', add
label define gh10a_district_lbl 0812 `"Tolon Kumbugu"', add
label define gh10a_district_lbl 0813 `"Savelugu Nanton"', add
label define gh10a_district_lbl 0814 `"Karaga"', add
label define gh10a_district_lbl 0815 `"Gushiegu"', add
label define gh10a_district_lbl 0816 `"Saboba"', add
label define gh10a_district_lbl 0817 `"Chereponi"', add
label define gh10a_district_lbl 0818 `"Bunkpurugu Yonyo"', add
label define gh10a_district_lbl 0819 `"Mamprusi East"', add
label define gh10a_district_lbl 0820 `"Mamprusi  West"', add
label define gh10a_district_lbl 0901 `"Builsa"', add
label define gh10a_district_lbl 0902 `"Kasena Nankana West"', add
label define gh10a_district_lbl 0903 `"Kasena Nankana East"', add
label define gh10a_district_lbl 0904 `"Bolgatanga Municipal"', add
label define gh10a_district_lbl 0905 `"Talensi Nabdam"', add
label define gh10a_district_lbl 0906 `"Bongo"', add
label define gh10a_district_lbl 0907 `"Bawku West"', add
label define gh10a_district_lbl 0908 `"Garu Tempane"', add
label define gh10a_district_lbl 0909 `"Bawku Municipal"', add
label define gh10a_district_lbl 1001 `"Wa West"', add
label define gh10a_district_lbl 1002 `"Wa Municipal"', add
label define gh10a_district_lbl 1003 `"Wa East"', add
label define gh10a_district_lbl 1004 `"Sissala East"', add
label define gh10a_district_lbl 1005 `"Nadowli"', add
label define gh10a_district_lbl 1006 `"Jirapa"', add
label define gh10a_district_lbl 1007 `"Sissala West"', add
label define gh10a_district_lbl 1008 `"Lambussie"', add
label define gh10a_district_lbl 1009 `"Lawra"', add
label values gh10a_district gh10a_district_lbl

label define gh10a_distype_lbl 1 `"District"'
label define gh10a_distype_lbl 2 `"Municipal"', add
label define gh10a_distype_lbl 3 `"Metropolitan"', add
label values gh10a_distype gh10a_distype_lbl

label define gh10a_restype_lbl 01 `"Occupied housing unit"'
label define gh10a_restype_lbl 04 `"School, college, university, seminary"', add
label define gh10a_restype_lbl 05 `"Children's home, orphanage, destitute's home"', add
label define gh10a_restype_lbl 06 `"Hospital, herbalist establishments, infirmary"', add
label define gh10a_restype_lbl 07 `"Prison, bostal institute, remand home"', add
label define gh10a_restype_lbl 08 `"Service barracks, army camps, police depot"', add
label define gh10a_restype_lbl 09 `"Mining, road, rarm, refugee camps"', add
label define gh10a_restype_lbl 10 `"Hotel, rest house, transit quarters, transit post, railway stations, border stations"', add
label define gh10a_restype_lbl 12 `"Lorry park, market place"', add
label define gh10a_restype_lbl 13 `"Other location of outdoor sleepers"', add
label values gh10a_restype gh10a_restype_lbl

label define gh10a_emig6mo_lbl 1 `"Yes"'
label define gh10a_emig6mo_lbl 2 `"No"', add
label define gh10a_emig6mo_lbl 9 `"NIU (not in universe)"', add
label values gh10a_emig6mo gh10a_emig6mo_lbl

label define gh10a_deaths_lbl 1 `"Yes"'
label define gh10a_deaths_lbl 2 `"No"', add
label define gh10a_deaths_lbl 9 `"NIU (not in universe)"', add
label values gh10a_deaths gh10a_deaths_lbl

label define gh10a_phone_lbl 1 `"Yes"'
label define gh10a_phone_lbl 2 `"No"', add
label define gh10a_phone_lbl 9 `"NIU (not in universe)"', add
label values gh10a_phone gh10a_phone_lbl

label define gh10a_computr_lbl 1 `"Yes"'
label define gh10a_computr_lbl 2 `"No"', add
label define gh10a_computr_lbl 9 `"NIU (not in universe)"', add
label values gh10a_computr gh10a_computr_lbl

label define gh10a_agcrop_lbl 1 `"Yes"'
label define gh10a_agcrop_lbl 2 `"No"', add
label define gh10a_agcrop_lbl 9 `"NIU (not in universe)"', add
label values gh10a_agcrop gh10a_agcrop_lbl

label define gh10a_agtree_lbl 1 `"Yes"'
label define gh10a_agtree_lbl 2 `"No"', add
label define gh10a_agtree_lbl 9 `"NIU (not in universe)"', add
label values gh10a_agtree gh10a_agtree_lbl

label define gh10a_aglivest_lbl 1 `"Yes"'
label define gh10a_aglivest_lbl 2 `"No"', add
label define gh10a_aglivest_lbl 9 `"NIU (not in universe)"', add
label values gh10a_aglivest gh10a_aglivest_lbl

label define gh10a_agfish_lbl 1 `"Yes"'
label define gh10a_agfish_lbl 2 `"No"', add
label define gh10a_agfish_lbl 9 `"NIU (not in universe)"', add
label values gh10a_agfish gh10a_agfish_lbl

label define gh10a_agmale_lbl 00 `"0"'
label define gh10a_agmale_lbl 01 `"1"', add
label define gh10a_agmale_lbl 02 `"2"', add
label define gh10a_agmale_lbl 03 `"3"', add
label define gh10a_agmale_lbl 04 `"4"', add
label define gh10a_agmale_lbl 05 `"5"', add
label define gh10a_agmale_lbl 06 `"6"', add
label define gh10a_agmale_lbl 07 `"7"', add
label define gh10a_agmale_lbl 08 `"8"', add
label define gh10a_agmale_lbl 09 `"9"', add
label define gh10a_agmale_lbl 10 `"10+"', add
label define gh10a_agmale_lbl 99 `"NIU (not in universe)"', add
label values gh10a_agmale gh10a_agmale_lbl

label define gh10a_agfemale_lbl 00 `"0"'
label define gh10a_agfemale_lbl 01 `"1"', add
label define gh10a_agfemale_lbl 02 `"2"', add
label define gh10a_agfemale_lbl 03 `"3"', add
label define gh10a_agfemale_lbl 04 `"4"', add
label define gh10a_agfemale_lbl 05 `"5"', add
label define gh10a_agfemale_lbl 06 `"6"', add
label define gh10a_agfemale_lbl 07 `"7"', add
label define gh10a_agfemale_lbl 08 `"8"', add
label define gh10a_agfemale_lbl 09 `"9"', add
label define gh10a_agfemale_lbl 10 `"10+"', add
label define gh10a_agfemale_lbl 99 `"NIU (not in universe)"', add
label values gh10a_agfemale gh10a_agfemale_lbl

label define gh10a_dwtype_lbl 01 `"Separate house"'
label define gh10a_dwtype_lbl 02 `"Semi-detached house"', add
label define gh10a_dwtype_lbl 03 `"Flat, apartment"', add
label define gh10a_dwtype_lbl 04 `"Compound house (rooms)"', add
label define gh10a_dwtype_lbl 05 `"Huts, buildings (same compound)"', add
label define gh10a_dwtype_lbl 06 `"Huts, buildings (different compound)"', add
label define gh10a_dwtype_lbl 07 `"Tent"', add
label define gh10a_dwtype_lbl 08 `"Improvised home (kiosk, container,others)"', add
label define gh10a_dwtype_lbl 09 `"Living quarters attached to office, shop"', add
label define gh10a_dwtype_lbl 10 `"Uncompleted building"', add
label define gh10a_dwtype_lbl 11 `"Other"', add
label define gh10a_dwtype_lbl 99 `"NIU (not in universe)"', add
label values gh10a_dwtype gh10a_dwtype_lbl

label define gh10a_wall_lbl 01 `"Mud brick, earth"'
label define gh10a_wall_lbl 02 `"Wood"', add
label define gh10a_wall_lbl 03 `"Metal sheet, slate, asbestos"', add
label define gh10a_wall_lbl 04 `"Stone"', add
label define gh10a_wall_lbl 05 `"Burnt bricks"', add
label define gh10a_wall_lbl 06 `"Cement blocks, concrete"', add
label define gh10a_wall_lbl 07 `"Landcrete"', add
label define gh10a_wall_lbl 08 `"Bamboo"', add
label define gh10a_wall_lbl 09 `"Palm leaf, thatch (grass), raffia"', add
label define gh10a_wall_lbl 10 `"Other"', add
label define gh10a_wall_lbl 99 `"NIU (not in universe)"', add
label values gh10a_wall gh10a_wall_lbl

label define gh10a_floor_lbl 01 `"Earth, mud"'
label define gh10a_floor_lbl 02 `"Cement, concrete"', add
label define gh10a_floor_lbl 03 `"Stone"', add
label define gh10a_floor_lbl 04 `"Burnt brick"', add
label define gh10a_floor_lbl 05 `"Wood"', add
label define gh10a_floor_lbl 06 `"Vinyl tiles"', add
label define gh10a_floor_lbl 07 `"Ceramic, porcelain, granite, marble tiles"', add
label define gh10a_floor_lbl 08 `"Terrazzo, terrazzo tiles"', add
label define gh10a_floor_lbl 09 `"Other"', add
label define gh10a_floor_lbl 99 `"NIU (not in universe)"', add
label values gh10a_floor gh10a_floor_lbl

label define gh10a_roof_lbl 01 `"Mud, mud bricks, earth"'
label define gh10a_roof_lbl 02 `"Wood"', add
label define gh10a_roof_lbl 03 `"Metal sheet"', add
label define gh10a_roof_lbl 04 `"Slate, asbestos"', add
label define gh10a_roof_lbl 05 `"Cement, concrete"', add
label define gh10a_roof_lbl 06 `"Roofing tile"', add
label define gh10a_roof_lbl 07 `"Bamboo"', add
label define gh10a_roof_lbl 08 `"Thatch, palm leaf or raffia"', add
label define gh10a_roof_lbl 09 `"Other"', add
label define gh10a_roof_lbl 99 `"NIU (not in universe)"', add
label values gh10a_roof gh10a_roof_lbl

label define gh10a_tenancy_lbl 1 `"Owner occupied"'
label define gh10a_tenancy_lbl 2 `"Renting"', add
label define gh10a_tenancy_lbl 3 `"Rent-free"', add
label define gh10a_tenancy_lbl 4 `"Perching"', add
label define gh10a_tenancy_lbl 5 `"Squatting"', add
label define gh10a_tenancy_lbl 6 `"Other"', add
label define gh10a_tenancy_lbl 9 `"NIU (not in universe)"', add
label values gh10a_tenancy gh10a_tenancy_lbl

label define gh10a_ownershp_lbl 1 `"Owned by household member"'
label define gh10a_ownershp_lbl 2 `"Being purchased (e.g. mortgage)"', add
label define gh10a_ownershp_lbl 3 `"Relative, not a household member"', add
label define gh10a_ownershp_lbl 4 `"Other private individual"', add
label define gh10a_ownershp_lbl 5 `"Private employer"', add
label define gh10a_ownershp_lbl 6 `"Other private agency"', add
label define gh10a_ownershp_lbl 7 `"Public, government ownership"', add
label define gh10a_ownershp_lbl 8 `"Other"', add
label define gh10a_ownershp_lbl 9 `"NIU (not in universe)"', add
label values gh10a_ownershp gh10a_ownershp_lbl

label define gh10a_rooms_lbl 01 `"1"'
label define gh10a_rooms_lbl 02 `"2"', add
label define gh10a_rooms_lbl 03 `"3"', add
label define gh10a_rooms_lbl 04 `"4"', add
label define gh10a_rooms_lbl 05 `"5"', add
label define gh10a_rooms_lbl 06 `"6"', add
label define gh10a_rooms_lbl 07 `"7"', add
label define gh10a_rooms_lbl 08 `"8"', add
label define gh10a_rooms_lbl 09 `"9"', add
label define gh10a_rooms_lbl 10 `"10"', add
label define gh10a_rooms_lbl 11 `"11"', add
label define gh10a_rooms_lbl 12 `"12"', add
label define gh10a_rooms_lbl 13 `"13"', add
label define gh10a_rooms_lbl 14 `"14"', add
label define gh10a_rooms_lbl 15 `"15"', add
label define gh10a_rooms_lbl 16 `"16"', add
label define gh10a_rooms_lbl 17 `"17"', add
label define gh10a_rooms_lbl 18 `"18"', add
label define gh10a_rooms_lbl 19 `"19"', add
label define gh10a_rooms_lbl 20 `"20+"', add
label define gh10a_rooms_lbl 99 `"NIU (not in universe)"', add
label values gh10a_rooms gh10a_rooms_lbl

label define gh10a_bedrooms_lbl 01 `"1"'
label define gh10a_bedrooms_lbl 02 `"2"', add
label define gh10a_bedrooms_lbl 03 `"3"', add
label define gh10a_bedrooms_lbl 04 `"4"', add
label define gh10a_bedrooms_lbl 05 `"5"', add
label define gh10a_bedrooms_lbl 06 `"6"', add
label define gh10a_bedrooms_lbl 07 `"7"', add
label define gh10a_bedrooms_lbl 08 `"8"', add
label define gh10a_bedrooms_lbl 09 `"9"', add
label define gh10a_bedrooms_lbl 10 `"10"', add
label define gh10a_bedrooms_lbl 11 `"11"', add
label define gh10a_bedrooms_lbl 12 `"12"', add
label define gh10a_bedrooms_lbl 13 `"13"', add
label define gh10a_bedrooms_lbl 14 `"14"', add
label define gh10a_bedrooms_lbl 15 `"15"', add
label define gh10a_bedrooms_lbl 16 `"16"', add
label define gh10a_bedrooms_lbl 17 `"17"', add
label define gh10a_bedrooms_lbl 18 `"18"', add
label define gh10a_bedrooms_lbl 19 `"19"', add
label define gh10a_bedrooms_lbl 20 `"20+"', add
label define gh10a_bedrooms_lbl 99 `"NIU (not in universe)"', add
label values gh10a_bedrooms gh10a_bedrooms_lbl

label define gh10a_bedshare_lbl 1 `"Yes, one sleeping room and sharing"'
label define gh10a_bedshare_lbl 2 `"No, one sleeping room but not sharing"', add
label define gh10a_bedshare_lbl 3 `"More than one sleeping room"', add
label define gh10a_bedshare_lbl 9 `"NIU (not in universe)"', add
label values gh10a_bedshare gh10a_bedshare_lbl

label define gh10a_bedrmnhh_lbl 0 `"NIU (not in universe)"'
label define gh10a_bedrmnhh_lbl 2 `"2 households sharing"', add
label define gh10a_bedrmnhh_lbl 3 `"3 households sharing"', add
label define gh10a_bedrmnhh_lbl 4 `"4 households sharing"', add
label define gh10a_bedrmnhh_lbl 5 `"5 households sharing"', add
label values gh10a_bedrmnhh gh10a_bedrmnhh_lbl

label define gh10a_light_lbl 01 `"Electricity (mains)"'
label define gh10a_light_lbl 02 `"Electricity (private generator)"', add
label define gh10a_light_lbl 03 `"Kerosene lamp"', add
label define gh10a_light_lbl 04 `"Gas lamp"', add
label define gh10a_light_lbl 05 `"Solar energy"', add
label define gh10a_light_lbl 06 `"Candle"', add
label define gh10a_light_lbl 07 `"Flashlight, torch"', add
label define gh10a_light_lbl 08 `"Firewood"', add
label define gh10a_light_lbl 09 `"Crop residue"', add
label define gh10a_light_lbl 10 `"Other"', add
label define gh10a_light_lbl 99 `"NIU (not in universe)"', add
label values gh10a_light gh10a_light_lbl

label define gh10a_watdrink_lbl 01 `"Pipe-borne inside dwelling"'
label define gh10a_watdrink_lbl 02 `"Pipe-borne outside dwelling"', add
label define gh10a_watdrink_lbl 03 `"Public tap, standpipe"', add
label define gh10a_watdrink_lbl 04 `"Bore-hole, pump, tube well"', add
label define gh10a_watdrink_lbl 05 `"Protected well"', add
label define gh10a_watdrink_lbl 06 `"Rain water"', add
label define gh10a_watdrink_lbl 07 `"Protected spring"', add
label define gh10a_watdrink_lbl 08 `"Bottled water"', add
label define gh10a_watdrink_lbl 09 `"Satchet water"', add
label define gh10a_watdrink_lbl 10 `"Tanker supply, vendor provided"', add
label define gh10a_watdrink_lbl 11 `"Unprotected well"', add
label define gh10a_watdrink_lbl 12 `"Unprotected spring"', add
label define gh10a_watdrink_lbl 13 `"River, stream"', add
label define gh10a_watdrink_lbl 14 `"Dugout, pond, lake, dam, canal"', add
label define gh10a_watdrink_lbl 15 `"Other"', add
label define gh10a_watdrink_lbl 99 `"NIU (not in universe)"', add
label values gh10a_watdrink gh10a_watdrink_lbl

label define gh10a_watsrc_lbl 01 `"Pipe-borne inside dwelling"'
label define gh10a_watsrc_lbl 02 `"Pipe-borne outside dwelling"', add
label define gh10a_watsrc_lbl 03 `"Public tap, standpipe"', add
label define gh10a_watsrc_lbl 04 `"Bore-hole, pump, tube well"', add
label define gh10a_watsrc_lbl 05 `"Protected well"', add
label define gh10a_watsrc_lbl 06 `"Rain water"', add
label define gh10a_watsrc_lbl 07 `"Protected spring"', add
label define gh10a_watsrc_lbl 08 `"Tanker supply, vendor provided"', add
label define gh10a_watsrc_lbl 09 `"Unprotected well"', add
label define gh10a_watsrc_lbl 10 `"Unprotected spring"', add
label define gh10a_watsrc_lbl 11 `"River, Stream"', add
label define gh10a_watsrc_lbl 12 `"Dugout, pond, lake, dam, canal"', add
label define gh10a_watsrc_lbl 13 `"Other"', add
label define gh10a_watsrc_lbl 99 `"NIU (not in universe)"', add
label values gh10a_watsrc gh10a_watsrc_lbl

label define gh10a_fuelck_lbl 01 `"None, no cooking"'
label define gh10a_fuelck_lbl 02 `"Wood"', add
label define gh10a_fuelck_lbl 03 `"Gas"', add
label define gh10a_fuelck_lbl 04 `"Electricity"', add
label define gh10a_fuelck_lbl 05 `"Kerosene"', add
label define gh10a_fuelck_lbl 06 `"Charcoal"', add
label define gh10a_fuelck_lbl 07 `"Crop residue"', add
label define gh10a_fuelck_lbl 08 `"Saw dust"', add
label define gh10a_fuelck_lbl 09 `"Animal waste"', add
label define gh10a_fuelck_lbl 10 `"Other"', add
label define gh10a_fuelck_lbl 99 `"NIU (not in universe)"', add
label values gh10a_fuelck gh10a_fuelck_lbl

label define gh10a_cookspac_lbl 01 `"No cooking space"'
label define gh10a_cookspac_lbl 02 `"Separate room for exclusive use of household"', add
label define gh10a_cookspac_lbl 03 `"Separate room shared with other household(s)"', add
label define gh10a_cookspac_lbl 04 `"Enclosure without roof"', add
label define gh10a_cookspac_lbl 05 `"Structure with roof but without walls"', add
label define gh10a_cookspac_lbl 06 `"Bedroom, hall, living room"', add
label define gh10a_cookspac_lbl 07 `"Verandah"', add
label define gh10a_cookspac_lbl 08 `"Open space in compound"', add
label define gh10a_cookspac_lbl 09 `"Other"', add
label define gh10a_cookspac_lbl 99 `"NIU (not in universe)"', add
label values gh10a_cookspac gh10a_cookspac_lbl

label define gh10a_bathrm_lbl 01 `"Own bathroom for exclusive use"'
label define gh10a_bathrm_lbl 02 `"Shared separate bathroom in the same house"', add
label define gh10a_bathrm_lbl 03 `"Private open cubicle"', add
label define gh10a_bathrm_lbl 04 `"Shared open cubicle"', add
label define gh10a_bathrm_lbl 05 `"Public bath house"', add
label define gh10a_bathrm_lbl 06 `"Bathroom in another house"', add
label define gh10a_bathrm_lbl 07 `"Open space around house"', add
label define gh10a_bathrm_lbl 08 `"River, pond, lake, dam"', add
label define gh10a_bathrm_lbl 09 `"Other"', add
label define gh10a_bathrm_lbl 99 `"NIU (not in universe)"', add
label values gh10a_bathrm gh10a_bathrm_lbl

label define gh10a_toilet_lbl 01 `"No facilities (bush, beach, field)"'
label define gh10a_toilet_lbl 02 `"WC"', add
label define gh10a_toilet_lbl 03 `"Pit latrine"', add
label define gh10a_toilet_lbl 04 `"KVIP (ventilated improved pit latrine)"', add
label define gh10a_toilet_lbl 05 `"Bucket, pan"', add
label define gh10a_toilet_lbl 06 `"Public toilet (WC, KVIP, pit, pan, etc.)"', add
label define gh10a_toilet_lbl 07 `"Other"', add
label define gh10a_toilet_lbl 99 `"NIU (not in universe)"', add
label values gh10a_toilet gh10a_toilet_lbl

label define gh10a_toilshar_lbl 01 `"Yes, with other household(s) in same house"'
label define gh10a_toilshar_lbl 02 `"Yes, with other household(s) in different house"', add
label define gh10a_toilshar_lbl 03 `"Yes, with other household(s) and located in different house"', add
label define gh10a_toilshar_lbl 04 `"No"', add
label define gh10a_toilshar_lbl 99 `"NIU (not in universe)"', add
label values gh10a_toilshar gh10a_toilshar_lbl

label define gh10a_toiltnhh_lbl 2 `"2"'
label define gh10a_toiltnhh_lbl 3 `"3"', add
label define gh10a_toiltnhh_lbl 4 `"4"', add
label define gh10a_toiltnhh_lbl 5 `"5"', add
label define gh10a_toiltnhh_lbl 6 `"6"', add
label define gh10a_toiltnhh_lbl 7 `"7"', add
label define gh10a_toiltnhh_lbl 8 `"8"', add
label define gh10a_toiltnhh_lbl 9 `"NIU (not in universe)"', add
label values gh10a_toiltnhh gh10a_toiltnhh_lbl

label define gh10a_trash_lbl 1 `"Collected"'
label define gh10a_trash_lbl 2 `"Burned by household"', add
label define gh10a_trash_lbl 3 `"Public dump (container)"', add
label define gh10a_trash_lbl 4 `"Public dump (open space)"', add
label define gh10a_trash_lbl 5 `"Dumped indiscriminately"', add
label define gh10a_trash_lbl 6 `"Buried by household"', add
label define gh10a_trash_lbl 7 `"Other"', add
label define gh10a_trash_lbl 9 `"NIU (not in universe)"', add
label values gh10a_trash gh10a_trash_lbl

label define gh10a_sewer_lbl 1 `"Through the sewerage system"'
label define gh10a_sewer_lbl 2 `"Through drainage system into a gutter"', add
label define gh10a_sewer_lbl 3 `"Through drainage into a pit (soak away)"', add
label define gh10a_sewer_lbl 4 `"Thrown onto the street, outside"', add
label define gh10a_sewer_lbl 5 `"Thrown into gutter"', add
label define gh10a_sewer_lbl 6 `"Thrown onto compound"', add
label define gh10a_sewer_lbl 7 `"Other"', add
label define gh10a_sewer_lbl 9 `"NIU (not in universe)"', add
label values gh10a_sewer gh10a_sewer_lbl

label define gh10a_urban_lbl 1 `"Urban"'
label define gh10a_urban_lbl 2 `"Rural"', add
label values gh10a_urban gh10a_urban_lbl

label define gh10a_houses_lbl 0 `"Not multiple unit"'
label define gh10a_houses_lbl 1 `"First unit in a structure"', add
label define gh10a_houses_lbl 2 `"Subsequent unit"', add
label values gh10a_houses gh10a_houses_lbl

label define gh10a_aghouse_lbl 1 `"Agriculture household"'
label define gh10a_aghouse_lbl 2 `"Non-agriculture household"', add
label define gh10a_aghouse_lbl 9 `"NIU (not in universe)"', add
label values gh10a_aghouse gh10a_aghouse_lbl

label define gh10a_famtype_lbl 1 `"Married couple family, male head"'
label define gh10a_famtype_lbl 2 `"Married couple family, female head"', add
label define gh10a_famtype_lbl 3 `"Non-married couple family, male head"', add
label define gh10a_famtype_lbl 4 `"Non-married couple family, female head"', add
label define gh10a_famtype_lbl 5 `"Non-family, male head"', add
label define gh10a_famtype_lbl 6 `"Non-family, female head"', add
label define gh10a_famtype_lbl 7 `"Male living alone"', add
label define gh10a_famtype_lbl 8 `"Female living alone"', add
label define gh10a_famtype_lbl 9 `"NIU (not in universe)"', add
label values gh10a_famtype gh10a_famtype_lbl

label define gh10a_famnuc_lbl 1 `"Married couple, no unmarried children"'
label define gh10a_famnuc_lbl 2 `"Married couple, with unmarried children"', add
label define gh10a_famnuc_lbl 3 `"Father alone, with unmarried children"', add
label define gh10a_famnuc_lbl 4 `"Mother alone, with unmarried children"', add
label define gh10a_famnuc_lbl 5 `"All others"', add
label define gh10a_famnuc_lbl 9 `"NIU (not in universe)"', add
label values gh10a_famnuc gh10a_famnuc_lbl

label define gh10a_sexhd_lbl 1 `"Male"'
label define gh10a_sexhd_lbl 2 `"Female"', add
label define gh10a_sexhd_lbl 9 `"NIU (not in universe)"', add
label values gh10a_sexhd gh10a_sexhd_lbl

label define gh10a_agehd_lbl 15 `"15"'
label define gh10a_agehd_lbl 16 `"16"', add
label define gh10a_agehd_lbl 17 `"17"', add
label define gh10a_agehd_lbl 18 `"18"', add
label define gh10a_agehd_lbl 19 `"19"', add
label define gh10a_agehd_lbl 20 `"20"', add
label define gh10a_agehd_lbl 21 `"21"', add
label define gh10a_agehd_lbl 22 `"22"', add
label define gh10a_agehd_lbl 23 `"23"', add
label define gh10a_agehd_lbl 24 `"24"', add
label define gh10a_agehd_lbl 25 `"25"', add
label define gh10a_agehd_lbl 26 `"26"', add
label define gh10a_agehd_lbl 27 `"27"', add
label define gh10a_agehd_lbl 28 `"28"', add
label define gh10a_agehd_lbl 29 `"29"', add
label define gh10a_agehd_lbl 30 `"30"', add
label define gh10a_agehd_lbl 31 `"31"', add
label define gh10a_agehd_lbl 32 `"32"', add
label define gh10a_agehd_lbl 33 `"33"', add
label define gh10a_agehd_lbl 34 `"34"', add
label define gh10a_agehd_lbl 35 `"35"', add
label define gh10a_agehd_lbl 36 `"36"', add
label define gh10a_agehd_lbl 37 `"37"', add
label define gh10a_agehd_lbl 38 `"38"', add
label define gh10a_agehd_lbl 39 `"39"', add
label define gh10a_agehd_lbl 40 `"40"', add
label define gh10a_agehd_lbl 41 `"41"', add
label define gh10a_agehd_lbl 42 `"42"', add
label define gh10a_agehd_lbl 43 `"43"', add
label define gh10a_agehd_lbl 44 `"44"', add
label define gh10a_agehd_lbl 45 `"45"', add
label define gh10a_agehd_lbl 46 `"46"', add
label define gh10a_agehd_lbl 47 `"47"', add
label define gh10a_agehd_lbl 48 `"48"', add
label define gh10a_agehd_lbl 49 `"49"', add
label define gh10a_agehd_lbl 50 `"50"', add
label define gh10a_agehd_lbl 51 `"51"', add
label define gh10a_agehd_lbl 52 `"52"', add
label define gh10a_agehd_lbl 53 `"53"', add
label define gh10a_agehd_lbl 54 `"54"', add
label define gh10a_agehd_lbl 55 `"55"', add
label define gh10a_agehd_lbl 56 `"56"', add
label define gh10a_agehd_lbl 57 `"57"', add
label define gh10a_agehd_lbl 58 `"58"', add
label define gh10a_agehd_lbl 59 `"59"', add
label define gh10a_agehd_lbl 60 `"60"', add
label define gh10a_agehd_lbl 61 `"61"', add
label define gh10a_agehd_lbl 62 `"62"', add
label define gh10a_agehd_lbl 63 `"63"', add
label define gh10a_agehd_lbl 64 `"64"', add
label define gh10a_agehd_lbl 65 `"65"', add
label define gh10a_agehd_lbl 66 `"66"', add
label define gh10a_agehd_lbl 67 `"67"', add
label define gh10a_agehd_lbl 68 `"68"', add
label define gh10a_agehd_lbl 69 `"69"', add
label define gh10a_agehd_lbl 70 `"70"', add
label define gh10a_agehd_lbl 71 `"71"', add
label define gh10a_agehd_lbl 72 `"72"', add
label define gh10a_agehd_lbl 73 `"73"', add
label define gh10a_agehd_lbl 74 `"74"', add
label define gh10a_agehd_lbl 75 `"75"', add
label define gh10a_agehd_lbl 76 `"76"', add
label define gh10a_agehd_lbl 77 `"77"', add
label define gh10a_agehd_lbl 78 `"78"', add
label define gh10a_agehd_lbl 79 `"79"', add
label define gh10a_agehd_lbl 80 `"80"', add
label define gh10a_agehd_lbl 81 `"81"', add
label define gh10a_agehd_lbl 82 `"82"', add
label define gh10a_agehd_lbl 83 `"83"', add
label define gh10a_agehd_lbl 84 `"84"', add
label define gh10a_agehd_lbl 85 `"85"', add
label define gh10a_agehd_lbl 86 `"86"', add
label define gh10a_agehd_lbl 87 `"87"', add
label define gh10a_agehd_lbl 88 `"88"', add
label define gh10a_agehd_lbl 89 `"89"', add
label define gh10a_agehd_lbl 90 `"90"', add
label define gh10a_agehd_lbl 91 `"91"', add
label define gh10a_agehd_lbl 92 `"92"', add
label define gh10a_agehd_lbl 93 `"93"', add
label define gh10a_agehd_lbl 94 `"94"', add
label define gh10a_agehd_lbl 95 `"95"', add
label define gh10a_agehd_lbl 96 `"96"', add
label define gh10a_agehd_lbl 97 `"97"', add
label define gh10a_agehd_lbl 98 `"98"', add
label define gh10a_agehd_lbl 99 `"NIU (not in universe)"', add
label values gh10a_agehd gh10a_agehd_lbl

label define gh10a_agpopn_lbl 00 `"0"'
label define gh10a_agpopn_lbl 01 `"1"', add
label define gh10a_agpopn_lbl 02 `"2"', add
label define gh10a_agpopn_lbl 03 `"3"', add
label define gh10a_agpopn_lbl 04 `"4"', add
label define gh10a_agpopn_lbl 05 `"5"', add
label define gh10a_agpopn_lbl 06 `"6"', add
label define gh10a_agpopn_lbl 07 `"7"', add
label define gh10a_agpopn_lbl 08 `"8"', add
label define gh10a_agpopn_lbl 09 `"9"', add
label define gh10a_agpopn_lbl 10 `"10"', add
label define gh10a_agpopn_lbl 11 `"11"', add
label define gh10a_agpopn_lbl 12 `"12"', add
label define gh10a_agpopn_lbl 13 `"13"', add
label define gh10a_agpopn_lbl 14 `"14"', add
label define gh10a_agpopn_lbl 15 `"15"', add
label define gh10a_agpopn_lbl 16 `"16"', add
label define gh10a_agpopn_lbl 17 `"17"', add
label define gh10a_agpopn_lbl 18 `"18"', add
label define gh10a_agpopn_lbl 19 `"19"', add
label define gh10a_agpopn_lbl 20 `"20+"', add
label define gh10a_agpopn_lbl 99 `"NIU (not in universe)"', add
label values gh10a_agpopn gh10a_agpopn_lbl

label define gh10a_relate_lbl 01 `"Head"'
label define gh10a_relate_lbl 02 `"Spouse (wife, husband)"', add
label define gh10a_relate_lbl 03 `"Child (son, daughter)"', add
label define gh10a_relate_lbl 04 `"Parent, parent in-law"', add
label define gh10a_relate_lbl 05 `"Son, daughter in-law"', add
label define gh10a_relate_lbl 06 `"Grandchild"', add
label define gh10a_relate_lbl 07 `"Brother, sister"', add
label define gh10a_relate_lbl 08 `"Step child"', add
label define gh10a_relate_lbl 09 `"Adopted, foster child"', add
label define gh10a_relate_lbl 10 `"Other relative"', add
label define gh10a_relate_lbl 11 `"Non-relative"', add
label define gh10a_relate_lbl 12 `"Group quarters, outdoor sleeper"', add
label values gh10a_relate gh10a_relate_lbl

label define gh10a_sex_lbl 1 `"Male"'
label define gh10a_sex_lbl 2 `"Female"', add
label values gh10a_sex gh10a_sex_lbl

label define gh10a_age_lbl 00 `"0"'
label define gh10a_age_lbl 01 `"1"', add
label define gh10a_age_lbl 02 `"2"', add
label define gh10a_age_lbl 03 `"3"', add
label define gh10a_age_lbl 04 `"4"', add
label define gh10a_age_lbl 05 `"5"', add
label define gh10a_age_lbl 06 `"6"', add
label define gh10a_age_lbl 07 `"7"', add
label define gh10a_age_lbl 08 `"8"', add
label define gh10a_age_lbl 09 `"9"', add
label define gh10a_age_lbl 10 `"10"', add
label define gh10a_age_lbl 11 `"11"', add
label define gh10a_age_lbl 12 `"12"', add
label define gh10a_age_lbl 13 `"13"', add
label define gh10a_age_lbl 14 `"14"', add
label define gh10a_age_lbl 15 `"15"', add
label define gh10a_age_lbl 16 `"16"', add
label define gh10a_age_lbl 17 `"17"', add
label define gh10a_age_lbl 18 `"18"', add
label define gh10a_age_lbl 19 `"19"', add
label define gh10a_age_lbl 20 `"20"', add
label define gh10a_age_lbl 21 `"21"', add
label define gh10a_age_lbl 22 `"22"', add
label define gh10a_age_lbl 23 `"23"', add
label define gh10a_age_lbl 24 `"24"', add
label define gh10a_age_lbl 25 `"25"', add
label define gh10a_age_lbl 26 `"26"', add
label define gh10a_age_lbl 27 `"27"', add
label define gh10a_age_lbl 28 `"28"', add
label define gh10a_age_lbl 29 `"29"', add
label define gh10a_age_lbl 30 `"30"', add
label define gh10a_age_lbl 31 `"31"', add
label define gh10a_age_lbl 32 `"32"', add
label define gh10a_age_lbl 33 `"33"', add
label define gh10a_age_lbl 34 `"34"', add
label define gh10a_age_lbl 35 `"35"', add
label define gh10a_age_lbl 36 `"36"', add
label define gh10a_age_lbl 37 `"37"', add
label define gh10a_age_lbl 38 `"38"', add
label define gh10a_age_lbl 39 `"39"', add
label define gh10a_age_lbl 40 `"40"', add
label define gh10a_age_lbl 41 `"41"', add
label define gh10a_age_lbl 42 `"42"', add
label define gh10a_age_lbl 43 `"43"', add
label define gh10a_age_lbl 44 `"44"', add
label define gh10a_age_lbl 45 `"45"', add
label define gh10a_age_lbl 46 `"46"', add
label define gh10a_age_lbl 47 `"47"', add
label define gh10a_age_lbl 48 `"48"', add
label define gh10a_age_lbl 49 `"49"', add
label define gh10a_age_lbl 50 `"50"', add
label define gh10a_age_lbl 51 `"51"', add
label define gh10a_age_lbl 52 `"52"', add
label define gh10a_age_lbl 53 `"53"', add
label define gh10a_age_lbl 54 `"54"', add
label define gh10a_age_lbl 55 `"55"', add
label define gh10a_age_lbl 56 `"56"', add
label define gh10a_age_lbl 57 `"57"', add
label define gh10a_age_lbl 58 `"58"', add
label define gh10a_age_lbl 59 `"59"', add
label define gh10a_age_lbl 60 `"60"', add
label define gh10a_age_lbl 61 `"61"', add
label define gh10a_age_lbl 62 `"62"', add
label define gh10a_age_lbl 63 `"63"', add
label define gh10a_age_lbl 64 `"64"', add
label define gh10a_age_lbl 65 `"65"', add
label define gh10a_age_lbl 66 `"66"', add
label define gh10a_age_lbl 67 `"67"', add
label define gh10a_age_lbl 68 `"68"', add
label define gh10a_age_lbl 69 `"69"', add
label define gh10a_age_lbl 70 `"70"', add
label define gh10a_age_lbl 71 `"71"', add
label define gh10a_age_lbl 72 `"72"', add
label define gh10a_age_lbl 73 `"73"', add
label define gh10a_age_lbl 74 `"74"', add
label define gh10a_age_lbl 75 `"75"', add
label define gh10a_age_lbl 76 `"76"', add
label define gh10a_age_lbl 77 `"77"', add
label define gh10a_age_lbl 78 `"78"', add
label define gh10a_age_lbl 79 `"79"', add
label define gh10a_age_lbl 80 `"80"', add
label define gh10a_age_lbl 81 `"81"', add
label define gh10a_age_lbl 82 `"82"', add
label define gh10a_age_lbl 83 `"83"', add
label define gh10a_age_lbl 84 `"84"', add
label define gh10a_age_lbl 85 `"85"', add
label define gh10a_age_lbl 86 `"86"', add
label define gh10a_age_lbl 87 `"87"', add
label define gh10a_age_lbl 88 `"88"', add
label define gh10a_age_lbl 89 `"89"', add
label define gh10a_age_lbl 90 `"90"', add
label define gh10a_age_lbl 91 `"91"', add
label define gh10a_age_lbl 92 `"92"', add
label define gh10a_age_lbl 93 `"93"', add
label define gh10a_age_lbl 94 `"94"', add
label define gh10a_age_lbl 95 `"95"', add
label define gh10a_age_lbl 96 `"96"', add
label define gh10a_age_lbl 97 `"97"', add
label define gh10a_age_lbl 98 `"98"', add
label values gh10a_age gh10a_age_lbl

label define gh10a_nation_lbl 01 `"Ghanaian by birth"'
label define gh10a_nation_lbl 02 `"Dual nationality (Ghanaian and other)"', add
label define gh10a_nation_lbl 03 `"Ghanaian by naturalisation"', add
label define gh10a_nation_lbl 04 `"Nigerian"', add
label define gh10a_nation_lbl 05 `"Liberian"', add
label define gh10a_nation_lbl 06 `"Sierra Leonean"', add
label define gh10a_nation_lbl 07 `"Gambian"', add
label define gh10a_nation_lbl 08 `"Togolese"', add
label define gh10a_nation_lbl 09 `"Burkinabe"', add
label define gh10a_nation_lbl 10 `"Ivorian"', add
label define gh10a_nation_lbl 11 `"Other ECOWAS states"', add
label define gh10a_nation_lbl 12 `"African, other than ECOWAS"', add
label define gh10a_nation_lbl 13 `"European"', add
label define gh10a_nation_lbl 14 `"Americas (North, South, Caribbean)"', add
label define gh10a_nation_lbl 15 `"Asian"', add
label define gh10a_nation_lbl 16 `"Oceanian"', add
label values gh10a_nation gh10a_nation_lbl

label define gh10a_ethnic_lbl 00 `"Akan"'
label define gh10a_ethnic_lbl 01 `"Agona"', add
label define gh10a_ethnic_lbl 02 `"Ahafo"', add
label define gh10a_ethnic_lbl 03 `"Ahanta"', add
label define gh10a_ethnic_lbl 04 `"Akuapem"', add
label define gh10a_ethnic_lbl 05 `"Akwamu"', add
label define gh10a_ethnic_lbl 06 `"Akyem"', add
label define gh10a_ethnic_lbl 07 `"Aowin"', add
label define gh10a_ethnic_lbl 08 `"Asante"', add
label define gh10a_ethnic_lbl 09 `"Asen (Assin)"', add
label define gh10a_ethnic_lbl 10 `"Boron (Brong) (including Banda)"', add
label define gh10a_ethnic_lbl 11 `"Chokosi (Anufor)"', add
label define gh10a_ethnic_lbl 12 `"Denkyira, Twifo"', add
label define gh10a_ethnic_lbl 13 `"Evalue"', add
label define gh10a_ethnic_lbl 14 `"Fante"', add
label define gh10a_ethnic_lbl 15 `"Kwahu"', add
label define gh10a_ethnic_lbl 16 `"Nzema"', add
label define gh10a_ethnic_lbl 17 `"Sefwi"', add
label define gh10a_ethnic_lbl 18 `"Wasa"', add
label define gh10a_ethnic_lbl 19 `"Bawle"', add
label define gh10a_ethnic_lbl 20 `"Ga-Dangme"', add
label define gh10a_ethnic_lbl 21 `"Dangme (Ada, Shai, Krobo, Osudoku,Ningo)"', add
label define gh10a_ethnic_lbl 22 `"Ga"', add
label define gh10a_ethnic_lbl 30 `"Ewe"', add
label define gh10a_ethnic_lbl 40 `"Guan"', add
label define gh10a_ethnic_lbl 41 `"Akpafu, Lolobi, Likpe, Bowiri, Buem, Santrokofi, Akposo"', add
label define gh10a_ethnic_lbl 42 `"Avatime, Nyongbo, Tafi, Logba"', add
label define gh10a_ethnic_lbl 43 `"Awutu, Efutu, Senya, Breku"', add
label define gh10a_ethnic_lbl 44 `"Cherepong, Larteh, Anum-Boso"', add
label define gh10a_ethnic_lbl 45 `"Gonja"', add
label define gh10a_ethnic_lbl 46 `"Nkonya"', add
label define gh10a_ethnic_lbl 47 `"Yeji, Nchumuru, Krachi, Nawuri, Bassa Achode"', add
label define gh10a_ethnic_lbl 48 `"Nkomi, Wiase, Dwan"', add
label define gh10a_ethnic_lbl 50 `"Gurma"', add
label define gh10a_ethnic_lbl 51 `"Bimoba"', add
label define gh10a_ethnic_lbl 52 `"Kokomba"', add
label define gh10a_ethnic_lbl 53 `"Basare (Kyamba)"', add
label define gh10a_ethnic_lbl 54 `"Pilapila"', add
label define gh10a_ethnic_lbl 55 `"Salfalba (Sabulaba)"', add
label define gh10a_ethnic_lbl 56 `"Kotokoli"', add
label define gh10a_ethnic_lbl 57 `"Chamba (Kyamba)"', add
label define gh10a_ethnic_lbl 59 `"Wali (Wala)"', add
label define gh10a_ethnic_lbl 60 `"Mole-Dagbani"', add
label define gh10a_ethnic_lbl 61 `"Builsa (Kangyaga or Kanjaga)"', add
label define gh10a_ethnic_lbl 62 `"Dagarte (Dagaba), Lobi , Wali (Wala)"', add
label define gh10a_ethnic_lbl 63 `"Dagomba"', add
label define gh10a_ethnic_lbl 64 `"Kusasi"', add
label define gh10a_ethnic_lbl 65 `"Mamprusi"', add
label define gh10a_ethnic_lbl 66 `"Namnam (Nabdom)"', add
label define gh10a_ethnic_lbl 67 `"Nankansi, Talensi, and Gurense (Frafra)"', add
label define gh10a_ethnic_lbl 68 `"Nanumba"', add
label define gh10a_ethnic_lbl 69 `"Mosi"', add
label define gh10a_ethnic_lbl 70 `"Grusi"', add
label define gh10a_ethnic_lbl 71 `"Kasena (Paga)"', add
label define gh10a_ethnic_lbl 72 `"Mo"', add
label define gh10a_ethnic_lbl 73 `"Sisala"', add
label define gh10a_ethnic_lbl 74 `"Vagala"', add
label define gh10a_ethnic_lbl 75 `"Other Grusi (e.g. Lela, Templensi, Birifor, Yangala, Miwo)"', add
label define gh10a_ethnic_lbl 80 `"Mande"', add
label define gh10a_ethnic_lbl 81 `"Busanga"', add
label define gh10a_ethnic_lbl 82 `"Wangara (Bambara, Madingo, and Dyula)"', add
label define gh10a_ethnic_lbl 90 `"All other tribes"', add
label define gh10a_ethnic_lbl 91 `"All other tribes originating from Ghana"', add
label define gh10a_ethnic_lbl 92 `"Other tribes originating from outside Ghana (Hausa, Fulani, Zabrama, etc.)"', add
label define gh10a_ethnic_lbl 93 `"Fulani"', add
label define gh10a_ethnic_lbl 94 `"Zabrama"', add
label define gh10a_ethnic_lbl 97 `"Foreigner"', add
label values gh10a_ethnic gh10a_ethnic_lbl

label define gh10a_bplhere_lbl 1 `"Yes"'
label define gh10a_bplhere_lbl 2 `"No"', add
label values gh10a_bplhere gh10a_bplhere_lbl

label define gh10a_bpl_lbl 01 `"Western"'
label define gh10a_bpl_lbl 02 `"Central"', add
label define gh10a_bpl_lbl 03 `"Greater Accra"', add
label define gh10a_bpl_lbl 04 `"Volta"', add
label define gh10a_bpl_lbl 05 `"Eastern"', add
label define gh10a_bpl_lbl 06 `"Ashanti"', add
label define gh10a_bpl_lbl 07 `"Brong Ahafo"', add
label define gh10a_bpl_lbl 08 `"Northern"', add
label define gh10a_bpl_lbl 09 `"Upper East"', add
label define gh10a_bpl_lbl 10 `"Upper West"', add
label define gh10a_bpl_lbl 11 `"Nigeria"', add
label define gh10a_bpl_lbl 12 `"Liberia"', add
label define gh10a_bpl_lbl 13 `"Sierra Leone"', add
label define gh10a_bpl_lbl 14 `"Gambia"', add
label define gh10a_bpl_lbl 15 `"Togo"', add
label define gh10a_bpl_lbl 16 `"Burkina Faso"', add
label define gh10a_bpl_lbl 17 `"Cote d'Ivoire"', add
label define gh10a_bpl_lbl 18 `"Other ECOWAS states"', add
label define gh10a_bpl_lbl 19 `"African, other than ECOWAS"', add
label define gh10a_bpl_lbl 20 `"Europe"', add
label define gh10a_bpl_lbl 21 `"Americas (North, South, Caribbean)"', add
label define gh10a_bpl_lbl 22 `"Asia"', add
label define gh10a_bpl_lbl 23 `"Oceania"', add
label values gh10a_bpl gh10a_bpl_lbl

label define gh10a_sincebth_lbl 1 `"Yes, born here and still here"'
label define gh10a_sincebth_lbl 2 `"No, but born in the village"', add
label define gh10a_sincebth_lbl 3 `"No, born outside the village"', add
label values gh10a_sincebth gh10a_sincebth_lbl

label define gh10a_yrshere_lbl 00 `"0"'
label define gh10a_yrshere_lbl 01 `"1"', add
label define gh10a_yrshere_lbl 02 `"2"', add
label define gh10a_yrshere_lbl 03 `"3"', add
label define gh10a_yrshere_lbl 04 `"4"', add
label define gh10a_yrshere_lbl 05 `"5"', add
label define gh10a_yrshere_lbl 06 `"6"', add
label define gh10a_yrshere_lbl 07 `"7"', add
label define gh10a_yrshere_lbl 08 `"8"', add
label define gh10a_yrshere_lbl 09 `"9"', add
label define gh10a_yrshere_lbl 10 `"10"', add
label define gh10a_yrshere_lbl 11 `"11"', add
label define gh10a_yrshere_lbl 12 `"12"', add
label define gh10a_yrshere_lbl 13 `"13"', add
label define gh10a_yrshere_lbl 14 `"14"', add
label define gh10a_yrshere_lbl 15 `"15"', add
label define gh10a_yrshere_lbl 16 `"16"', add
label define gh10a_yrshere_lbl 17 `"17"', add
label define gh10a_yrshere_lbl 18 `"18"', add
label define gh10a_yrshere_lbl 19 `"19"', add
label define gh10a_yrshere_lbl 20 `"20"', add
label define gh10a_yrshere_lbl 21 `"21"', add
label define gh10a_yrshere_lbl 22 `"22"', add
label define gh10a_yrshere_lbl 23 `"23"', add
label define gh10a_yrshere_lbl 24 `"24"', add
label define gh10a_yrshere_lbl 25 `"25"', add
label define gh10a_yrshere_lbl 26 `"26"', add
label define gh10a_yrshere_lbl 27 `"27"', add
label define gh10a_yrshere_lbl 28 `"28"', add
label define gh10a_yrshere_lbl 29 `"29"', add
label define gh10a_yrshere_lbl 30 `"30"', add
label define gh10a_yrshere_lbl 31 `"31"', add
label define gh10a_yrshere_lbl 32 `"32"', add
label define gh10a_yrshere_lbl 33 `"33"', add
label define gh10a_yrshere_lbl 34 `"34"', add
label define gh10a_yrshere_lbl 35 `"35"', add
label define gh10a_yrshere_lbl 36 `"36"', add
label define gh10a_yrshere_lbl 37 `"37"', add
label define gh10a_yrshere_lbl 38 `"38"', add
label define gh10a_yrshere_lbl 39 `"39"', add
label define gh10a_yrshere_lbl 40 `"40"', add
label define gh10a_yrshere_lbl 41 `"41"', add
label define gh10a_yrshere_lbl 42 `"42"', add
label define gh10a_yrshere_lbl 43 `"43"', add
label define gh10a_yrshere_lbl 44 `"44"', add
label define gh10a_yrshere_lbl 45 `"45"', add
label define gh10a_yrshere_lbl 46 `"46"', add
label define gh10a_yrshere_lbl 47 `"47"', add
label define gh10a_yrshere_lbl 48 `"48"', add
label define gh10a_yrshere_lbl 49 `"49"', add
label define gh10a_yrshere_lbl 50 `"50"', add
label define gh10a_yrshere_lbl 51 `"51"', add
label define gh10a_yrshere_lbl 52 `"52"', add
label define gh10a_yrshere_lbl 53 `"53"', add
label define gh10a_yrshere_lbl 54 `"54"', add
label define gh10a_yrshere_lbl 55 `"55"', add
label define gh10a_yrshere_lbl 56 `"56"', add
label define gh10a_yrshere_lbl 57 `"57"', add
label define gh10a_yrshere_lbl 58 `"58"', add
label define gh10a_yrshere_lbl 59 `"59"', add
label define gh10a_yrshere_lbl 60 `"60"', add
label define gh10a_yrshere_lbl 61 `"61"', add
label define gh10a_yrshere_lbl 62 `"62"', add
label define gh10a_yrshere_lbl 63 `"63"', add
label define gh10a_yrshere_lbl 64 `"64"', add
label define gh10a_yrshere_lbl 65 `"65"', add
label define gh10a_yrshere_lbl 66 `"66"', add
label define gh10a_yrshere_lbl 67 `"67"', add
label define gh10a_yrshere_lbl 68 `"68"', add
label define gh10a_yrshere_lbl 69 `"69"', add
label define gh10a_yrshere_lbl 70 `"70"', add
label define gh10a_yrshere_lbl 71 `"71"', add
label define gh10a_yrshere_lbl 72 `"72"', add
label define gh10a_yrshere_lbl 73 `"73"', add
label define gh10a_yrshere_lbl 74 `"74"', add
label define gh10a_yrshere_lbl 75 `"75"', add
label define gh10a_yrshere_lbl 76 `"76"', add
label define gh10a_yrshere_lbl 77 `"77"', add
label define gh10a_yrshere_lbl 78 `"78"', add
label define gh10a_yrshere_lbl 79 `"79"', add
label define gh10a_yrshere_lbl 80 `"80"', add
label define gh10a_yrshere_lbl 81 `"81"', add
label define gh10a_yrshere_lbl 82 `"82"', add
label define gh10a_yrshere_lbl 83 `"83"', add
label define gh10a_yrshere_lbl 84 `"84"', add
label define gh10a_yrshere_lbl 85 `"85"', add
label define gh10a_yrshere_lbl 86 `"86"', add
label define gh10a_yrshere_lbl 87 `"87"', add
label define gh10a_yrshere_lbl 88 `"88"', add
label define gh10a_yrshere_lbl 89 `"89"', add
label define gh10a_yrshere_lbl 90 `"90"', add
label define gh10a_yrshere_lbl 91 `"91"', add
label define gh10a_yrshere_lbl 92 `"92"', add
label define gh10a_yrshere_lbl 93 `"93"', add
label define gh10a_yrshere_lbl 94 `"94"', add
label define gh10a_yrshere_lbl 95 `"95+"', add
label values gh10a_yrshere gh10a_yrshere_lbl

label define gh10a_relig_lbl 1 `"No religion"'
label define gh10a_relig_lbl 2 `"Catholic"', add
label define gh10a_relig_lbl 3 `"Protestants"', add
label define gh10a_relig_lbl 4 `"Pentecostal or Charismatic"', add
label define gh10a_relig_lbl 5 `"Other Christian"', add
label define gh10a_relig_lbl 6 `"Islam"', add
label define gh10a_relig_lbl 7 `"Ahmadi"', add
label define gh10a_relig_lbl 8 `"Traditionalist"', add
label define gh10a_relig_lbl 9 `"Other"', add
label values gh10a_relig gh10a_relig_lbl

label define gh10a_marst_lbl 0 `"NIU (not in universe)"'
label define gh10a_marst_lbl 1 `"Never married"', add
label define gh10a_marst_lbl 2 `"Informal, consensual union, living together"', add
label define gh10a_marst_lbl 3 `"Married"', add
label define gh10a_marst_lbl 4 `"Separated"', add
label define gh10a_marst_lbl 5 `"Divorced"', add
label define gh10a_marst_lbl 6 `"Widowed"', add
label values gh10a_marst gh10a_marst_lbl

label define gh10a_lit_lbl 1 `"None (not literate)"'
label define gh10a_lit_lbl 2 `"English only"', add
label define gh10a_lit_lbl 3 `"Ghanaian language only"', add
label define gh10a_lit_lbl 4 `"English and Ghanaian language"', add
label define gh10a_lit_lbl 5 `"English and French"', add
label define gh10a_lit_lbl 6 `"English, French, and Ghanaian Language"', add
label define gh10a_lit_lbl 8 `"Unknown"', add
label define gh10a_lit_lbl 9 `"NIU (not in universe)"', add
label values gh10a_lit gh10a_lit_lbl

label define gh10a_school_lbl 1 `"Never"'
label define gh10a_school_lbl 2 `"Now"', add
label define gh10a_school_lbl 3 `"Past"', add
label define gh10a_school_lbl 9 `"NIU (not in universe)"', add
label values gh10a_school gh10a_school_lbl

label define gh10a_edlevel_lbl 00 `"NIU (not in universe)"'
label define gh10a_edlevel_lbl 01 `"Nursery"', add
label define gh10a_edlevel_lbl 02 `"Kindergarten"', add
label define gh10a_edlevel_lbl 03 `"Primary"', add
label define gh10a_edlevel_lbl 04 `"Junior secondary school (JSS) or junior high school (JHS)"', add
label define gh10a_edlevel_lbl 05 `"Middle"', add
label define gh10a_edlevel_lbl 06 `"Senior secondary school (SSS) or senior high school (SHS)"', add
label define gh10a_edlevel_lbl 07 `"Secondary"', add
label define gh10a_edlevel_lbl 08 `"Vocational, technical, commercial"', add
label define gh10a_edlevel_lbl 09 `"Post middle, secondary certificate"', add
label define gh10a_edlevel_lbl 10 `"Post secondary diploma"', add
label define gh10a_edlevel_lbl 11 `"Bachelor degree"', add
label define gh10a_edlevel_lbl 12 `"Post graduate (certificate, diploma, masters, PhD, others)"', add
label values gh10a_edlevel gh10a_edlevel_lbl

label define gh10a_edattan_lbl 000 `"NIU (not in universe)"'
label define gh10a_edattan_lbl 010 `"Nursery, no grade completed"', add
label define gh10a_edattan_lbl 011 `"Nursery, grade 1"', add
label define gh10a_edattan_lbl 012 `"Nursery, grade 2"', add
label define gh10a_edattan_lbl 020 `"Kindergarten, no grade completed"', add
label define gh10a_edattan_lbl 021 `"Kindergarten, grade 1"', add
label define gh10a_edattan_lbl 022 `"Kindergarten, grade 2"', add
label define gh10a_edattan_lbl 030 `"Primary, no grade completed"', add
label define gh10a_edattan_lbl 031 `"Primary, grade 1"', add
label define gh10a_edattan_lbl 032 `"Primary, grade 2"', add
label define gh10a_edattan_lbl 033 `"Primary, grade 3"', add
label define gh10a_edattan_lbl 034 `"Primary, grade 4"', add
label define gh10a_edattan_lbl 035 `"Primary, grade 5"', add
label define gh10a_edattan_lbl 036 `"Primary, grade 6"', add
label define gh10a_edattan_lbl 040 `"JSS or JHS, no grade completed"', add
label define gh10a_edattan_lbl 041 `"JSS or JHS, grade 1"', add
label define gh10a_edattan_lbl 042 `"JSS or JHS, grade 2"', add
label define gh10a_edattan_lbl 043 `"JSS or JHS, grade 3"', add
label define gh10a_edattan_lbl 050 `"Middle, no grade completed"', add
label define gh10a_edattan_lbl 051 `"Middle, grade 1"', add
label define gh10a_edattan_lbl 052 `"Middle, grade 2"', add
label define gh10a_edattan_lbl 053 `"Middle, grade 3"', add
label define gh10a_edattan_lbl 054 `"Middle, grade 4"', add
label define gh10a_edattan_lbl 060 `"SSS or SHS, no grade completed"', add
label define gh10a_edattan_lbl 061 `"SSS or SHS, grade 1"', add
label define gh10a_edattan_lbl 062 `"SSS or SHS, grade 2"', add
label define gh10a_edattan_lbl 063 `"SSS or SHS, grade 3"', add
label define gh10a_edattan_lbl 064 `"SSS or SHS, grade 4"', add
label define gh10a_edattan_lbl 070 `"Secondary, no grade completed"', add
label define gh10a_edattan_lbl 071 `"Secondary, grade 1"', add
label define gh10a_edattan_lbl 072 `"Secondary, grade 2"', add
label define gh10a_edattan_lbl 073 `"Secondary, grade 3"', add
label define gh10a_edattan_lbl 074 `"Secondary, grade 4"', add
label define gh10a_edattan_lbl 075 `"Secondary, grade 5"', add
label define gh10a_edattan_lbl 076 `"Secondary, grade 6"', add
label define gh10a_edattan_lbl 077 `"Secondary, grade 7"', add
label define gh10a_edattan_lbl 080 `"Vocational, technical, commercial, no grade completed"', add
label define gh10a_edattan_lbl 081 `"Vocational, technical, commercial, grade 1"', add
label define gh10a_edattan_lbl 082 `"Vocational, technical, commercial, grade 2"', add
label define gh10a_edattan_lbl 083 `"Vocational, technical, commercial, grade 3"', add
label define gh10a_edattan_lbl 084 `"Vocational, technical, commercial, grade 4"', add
label define gh10a_edattan_lbl 090 `"Post middle or secondary certificate, no grade completed"', add
label define gh10a_edattan_lbl 091 `"Post middle or secondary certificate, grade 1"', add
label define gh10a_edattan_lbl 092 `"Post middle or secondary certificate, grade 2"', add
label define gh10a_edattan_lbl 093 `"Post middle or secondary certificate, grade 3"', add
label define gh10a_edattan_lbl 094 `"Post middle or secondary certificate, grade 4"', add
label define gh10a_edattan_lbl 100 `"Post secondary diploma, no grade completed"', add
label define gh10a_edattan_lbl 101 `"Post secondary diploma, grade 1"', add
label define gh10a_edattan_lbl 102 `"Post secondary diploma, grade 2"', add
label define gh10a_edattan_lbl 103 `"Post secondary diploma, grade 3"', add
label define gh10a_edattan_lbl 104 `"Post secondary diploma, grade 4"', add
label define gh10a_edattan_lbl 110 `"Bachelor degree, no grade completed"', add
label define gh10a_edattan_lbl 111 `"Bachelor degree, grade 1"', add
label define gh10a_edattan_lbl 112 `"Bachelor degree, grade 2"', add
label define gh10a_edattan_lbl 113 `"Bachelor degree, grade 3"', add
label define gh10a_edattan_lbl 114 `"Bachelor degree, grade 4"', add
label define gh10a_edattan_lbl 120 `"Post graduate (certificate, diploma, masters, PhD, others), no grade completed"', add
label define gh10a_edattan_lbl 121 `"Post graduate (certificate, diploma, masters, PhD, others), grade 1"', add
label define gh10a_edattan_lbl 122 `"Post graduate (certificate, diploma, masters, PhD, others), grade 2"', add
label define gh10a_edattan_lbl 123 `"Post graduate (certificate, diploma, masters, PhD, others), grade 3"', add
label define gh10a_edattan_lbl 124 `"Post graduate (certificate, diploma, masters, PhD, others), grade 4"', add
label define gh10a_edattan_lbl 125 `"Post graduate (certificate, diploma, masters, PhD, others), grade 5"', add
label define gh10a_edattan_lbl 126 `"Post graduate (certificate, diploma, masters, PhD, others), grade 6"', add
label define gh10a_edattan_lbl 127 `"Post graduate (certificate, diploma, masters, PhD, others), grade 7"', add
label define gh10a_edattan_lbl 128 `"Post graduate (certificate, diploma, masters, PhD, others), grade 8 or grade 9"', add
label values gh10a_edattan gh10a_edattan_lbl

label define gh10a_empstat_lbl 1 `"Yes, worked"'
label define gh10a_empstat_lbl 2 `"No, did not work"', add
label define gh10a_empstat_lbl 9 `"NIU (not in universe)"', add
label values gh10a_empstat gh10a_empstat_lbl

label define gh10a_activity_lbl 1 `"Did not work but had job to go back to"'
label define gh10a_activity_lbl 2 `"Worked before, seeking work and available for work"', add
label define gh10a_activity_lbl 3 `"Seeking work for the first time, and available for work"', add
label define gh10a_activity_lbl 4 `"Did voluntary work without pay"', add
label define gh10a_activity_lbl 5 `"Did not work and not seeking work"', add
label define gh10a_activity_lbl 9 `"NIU (not in universe)"', add
label values gh10a_activity gh10a_activity_lbl

label define gh10a_whynowk_lbl 1 `"Did home duties (household chores, full time homemaker)"'
label define gh10a_whynowk_lbl 2 `"In full time education, student"', add
label define gh10a_whynowk_lbl 3 `"Pensioner, retired"', add
label define gh10a_whynowk_lbl 4 `"Disabled, too sick to work"', add
label define gh10a_whynowk_lbl 5 `"Too old, too young"', add
label define gh10a_whynowk_lbl 6 `"Other"', add
label define gh10a_whynowk_lbl 9 `"NIU (not in universe)"', add
label values gh10a_whynowk gh10a_whynowk_lbl

label define gh10a_occ_lbl 00 `"Other occupations"'
label define gh10a_occ_lbl 01 `"Managers"', add
label define gh10a_occ_lbl 02 `"Professionals"', add
label define gh10a_occ_lbl 03 `"Technicians and associate professionals"', add
label define gh10a_occ_lbl 04 `"Clerical support workers"', add
label define gh10a_occ_lbl 05 `"Service and sales workers"', add
label define gh10a_occ_lbl 06 `"Skilled agricultural, forestry and fishery workers"', add
label define gh10a_occ_lbl 07 `"Craft and related trades workers"', add
label define gh10a_occ_lbl 08 `"Plant and machine operators, and assemblers"', add
label define gh10a_occ_lbl 09 `"Elementary occupations"', add
label define gh10a_occ_lbl 99 `"NIU (not in universe)"', add
label values gh10a_occ gh10a_occ_lbl

label define gh10a_ind_lbl 01 `"Agriculture, forestry and fishing"'
label define gh10a_ind_lbl 02 `"Mining and quarrying"', add
label define gh10a_ind_lbl 03 `"Manufacturing"', add
label define gh10a_ind_lbl 04 `"Electricity, gas, stream and air conditioning supply"', add
label define gh10a_ind_lbl 05 `"Water supply; sewerage, waste management and remediation activities"', add
label define gh10a_ind_lbl 06 `"Construction"', add
label define gh10a_ind_lbl 07 `"Wholesale and retail; repair of motor vehicles and motorcycles"', add
label define gh10a_ind_lbl 08 `"Transportation and storage"', add
label define gh10a_ind_lbl 09 `"Accommodation and food service actviities"', add
label define gh10a_ind_lbl 10 `"Information and communication"', add
label define gh10a_ind_lbl 11 `"Financial and insurance activities"', add
label define gh10a_ind_lbl 12 `"Real estate activities"', add
label define gh10a_ind_lbl 13 `"Professional, scientific and technical activities"', add
label define gh10a_ind_lbl 14 `"Administrative and support service activities"', add
label define gh10a_ind_lbl 15 `"Public administration and defence; compulsory social security"', add
label define gh10a_ind_lbl 16 `"Education"', add
label define gh10a_ind_lbl 17 `"Human health and social work activities"', add
label define gh10a_ind_lbl 18 `"Arts, entertainment and recreation"', add
label define gh10a_ind_lbl 19 `"Other service activities"', add
label define gh10a_ind_lbl 20 `"Activities of households as employers; undifferentiated goods and services, producing activities of households for own use"', add
label define gh10a_ind_lbl 21 `"Activities of extraterritorial organizations and bodies"', add
label define gh10a_ind_lbl 99 `"NIU (not in universe)"', add
label values gh10a_ind gh10a_ind_lbl

label define gh10a_classwk_lbl 1 `"Employee"'
label define gh10a_classwk_lbl 2 `"Self employed without employee(s)"', add
label define gh10a_classwk_lbl 3 `"Self employed with employee(s)"', add
label define gh10a_classwk_lbl 4 `"Casual worker"', add
label define gh10a_classwk_lbl 5 `"Contributing family worker"', add
label define gh10a_classwk_lbl 6 `"Apprentice"', add
label define gh10a_classwk_lbl 7 `"Domestic employee (househelp)"', add
label define gh10a_classwk_lbl 8 `"Other"', add
label define gh10a_classwk_lbl 9 `"NIU (not in universe)"', add
label values gh10a_classwk gh10a_classwk_lbl

label define gh10a_empsect_lbl 1 `"Public (government)"'
label define gh10a_empsect_lbl 2 `"Private formal"', add
label define gh10a_empsect_lbl 3 `"Private informal"', add
label define gh10a_empsect_lbl 4 `"Semi-public, parastatal"', add
label define gh10a_empsect_lbl 5 `"NGOs (local and international)"', add
label define gh10a_empsect_lbl 6 `"Other international organizations"', add
label define gh10a_empsect_lbl 9 `"NIU (not in universe)"', add
label values gh10a_empsect gh10a_empsect_lbl

label define gh10a_dissight_lbl 1 `"Yes"'
label define gh10a_dissight_lbl 2 `"No"', add
label values gh10a_dissight gh10a_dissight_lbl

label define gh10a_dishear_lbl 1 `"Yes"'
label define gh10a_dishear_lbl 2 `"No"', add
label values gh10a_dishear gh10a_dishear_lbl

label define gh10a_dismute_lbl 1 `"Yes"'
label define gh10a_dismute_lbl 2 `"No"', add
label values gh10a_dismute gh10a_dismute_lbl

label define gh10a_disphys_lbl 1 `"Yes"'
label define gh10a_disphys_lbl 2 `"No"', add
label values gh10a_disphys gh10a_disphys_lbl

label define gh10a_disdev_lbl 1 `"Yes"'
label define gh10a_disdev_lbl 2 `"No"', add
label values gh10a_disdev gh10a_disdev_lbl

label define gh10a_disemot_lbl 1 `"Yes"'
label define gh10a_disemot_lbl 2 `"No"', add
label values gh10a_disemot gh10a_disemot_lbl

label define gh10a_cellphon_lbl 1 `"Yes"'
label define gh10a_cellphon_lbl 2 `"No"', add
label define gh10a_cellphon_lbl 9 `"NIU (not in universe)"', add
label values gh10a_cellphon gh10a_cellphon_lbl

label define gh10a_internet_lbl 1 `"Yes"'
label define gh10a_internet_lbl 2 `"No"', add
label define gh10a_internet_lbl 9 `"NIU (not in universe)"', add
label values gh10a_internet gh10a_internet_lbl

label define gh10a_chbornm_lbl 00 `"0"'
label define gh10a_chbornm_lbl 01 `"1"', add
label define gh10a_chbornm_lbl 02 `"2"', add
label define gh10a_chbornm_lbl 03 `"3"', add
label define gh10a_chbornm_lbl 04 `"4"', add
label define gh10a_chbornm_lbl 05 `"5"', add
label define gh10a_chbornm_lbl 06 `"6"', add
label define gh10a_chbornm_lbl 07 `"7"', add
label define gh10a_chbornm_lbl 08 `"8"', add
label define gh10a_chbornm_lbl 09 `"9"', add
label define gh10a_chbornm_lbl 10 `"10"', add
label define gh10a_chbornm_lbl 11 `"11"', add
label define gh10a_chbornm_lbl 12 `"12 or more"', add
label define gh10a_chbornm_lbl 99 `"NIU (not in universe)"', add
label values gh10a_chbornm gh10a_chbornm_lbl

label define gh10a_chbornf_lbl 00 `"0"'
label define gh10a_chbornf_lbl 01 `"1"', add
label define gh10a_chbornf_lbl 02 `"2"', add
label define gh10a_chbornf_lbl 03 `"3"', add
label define gh10a_chbornf_lbl 04 `"4"', add
label define gh10a_chbornf_lbl 05 `"5"', add
label define gh10a_chbornf_lbl 06 `"6"', add
label define gh10a_chbornf_lbl 07 `"7"', add
label define gh10a_chbornf_lbl 08 `"8"', add
label define gh10a_chbornf_lbl 09 `"9"', add
label define gh10a_chbornf_lbl 10 `"10"', add
label define gh10a_chbornf_lbl 11 `"11"', add
label define gh10a_chbornf_lbl 12 `"12 or more"', add
label define gh10a_chbornf_lbl 99 `"NIU (not in universe)"', add
label values gh10a_chbornf gh10a_chbornf_lbl

label define gh10a_chsurvm_lbl 00 `"0"'
label define gh10a_chsurvm_lbl 01 `"1"', add
label define gh10a_chsurvm_lbl 02 `"2"', add
label define gh10a_chsurvm_lbl 03 `"3"', add
label define gh10a_chsurvm_lbl 04 `"4"', add
label define gh10a_chsurvm_lbl 05 `"5"', add
label define gh10a_chsurvm_lbl 06 `"6"', add
label define gh10a_chsurvm_lbl 07 `"7"', add
label define gh10a_chsurvm_lbl 08 `"8"', add
label define gh10a_chsurvm_lbl 09 `"9"', add
label define gh10a_chsurvm_lbl 10 `"10 or more"', add
label define gh10a_chsurvm_lbl 99 `"NIU (not in universe)"', add
label values gh10a_chsurvm gh10a_chsurvm_lbl

label define gh10a_chsurvf_lbl 00 `"0"'
label define gh10a_chsurvf_lbl 01 `"1"', add
label define gh10a_chsurvf_lbl 02 `"2"', add
label define gh10a_chsurvf_lbl 03 `"3"', add
label define gh10a_chsurvf_lbl 04 `"4"', add
label define gh10a_chsurvf_lbl 05 `"5"', add
label define gh10a_chsurvf_lbl 06 `"6"', add
label define gh10a_chsurvf_lbl 07 `"7"', add
label define gh10a_chsurvf_lbl 08 `"8"', add
label define gh10a_chsurvf_lbl 09 `"9"', add
label define gh10a_chsurvf_lbl 10 `"10 or more"', add
label define gh10a_chsurvf_lbl 99 `"NIU (not in universe)"', add
label values gh10a_chsurvf gh10a_chsurvf_lbl

label define gh10a_birth12f_lbl 0 `"0"'
label define gh10a_birth12f_lbl 1 `"1"', add
label define gh10a_birth12f_lbl 2 `"2"', add
label define gh10a_birth12f_lbl 3 `"3 or more"', add
label define gh10a_birth12f_lbl 9 `"NIU (not in universe)"', add
label values gh10a_birth12f gh10a_birth12f_lbl

label define gh10a_chborn_lbl 00 `"0"'
label define gh10a_chborn_lbl 01 `"1"', add
label define gh10a_chborn_lbl 02 `"2"', add
label define gh10a_chborn_lbl 03 `"3"', add
label define gh10a_chborn_lbl 04 `"4"', add
label define gh10a_chborn_lbl 05 `"5"', add
label define gh10a_chborn_lbl 06 `"6"', add
label define gh10a_chborn_lbl 07 `"7"', add
label define gh10a_chborn_lbl 08 `"8"', add
label define gh10a_chborn_lbl 09 `"9"', add
label define gh10a_chborn_lbl 10 `"10"', add
label define gh10a_chborn_lbl 11 `"11"', add
label define gh10a_chborn_lbl 12 `"12"', add
label define gh10a_chborn_lbl 13 `"13"', add
label define gh10a_chborn_lbl 14 `"14"', add
label define gh10a_chborn_lbl 15 `"15"', add
label define gh10a_chborn_lbl 99 `"NIU (not in universe)"', add
label values gh10a_chborn gh10a_chborn_lbl

label define gh10a_chsurv_lbl 00 `"0"'
label define gh10a_chsurv_lbl 01 `"1"', add
label define gh10a_chsurv_lbl 02 `"2"', add
label define gh10a_chsurv_lbl 03 `"3"', add
label define gh10a_chsurv_lbl 04 `"4"', add
label define gh10a_chsurv_lbl 05 `"5"', add
label define gh10a_chsurv_lbl 06 `"6"', add
label define gh10a_chsurv_lbl 07 `"7"', add
label define gh10a_chsurv_lbl 08 `"8"', add
label define gh10a_chsurv_lbl 09 `"9"', add
label define gh10a_chsurv_lbl 10 `"10"', add
label define gh10a_chsurv_lbl 11 `"11"', add
label define gh10a_chsurv_lbl 12 `"12"', add
label define gh10a_chsurv_lbl 13 `"13"', add
label define gh10a_chsurv_lbl 14 `"14 or more"', add
label define gh10a_chsurv_lbl 99 `"NIU (not in universe)"', add
label values gh10a_chsurv gh10a_chsurv_lbl

label define gh10a_bthlstyr_lbl 00 `"0"'
label define gh10a_bthlstyr_lbl 01 `"1"', add
label define gh10a_bthlstyr_lbl 02 `"2"', add
label define gh10a_bthlstyr_lbl 03 `"3 or more"', add
label define gh10a_bthlstyr_lbl 98 `"Unknown"', add
label values gh10a_bthlstyr gh10a_bthlstyr_lbl

label define gh10a_econact_lbl 1 `"Employed"'
label define gh10a_econact_lbl 2 `"Unemployed"', add
label define gh10a_econact_lbl 3 `"Not active"', add
label define gh10a_econact_lbl 9 `"NIU (not in universe)"', add
label values gh10a_econact gh10a_econact_lbl


